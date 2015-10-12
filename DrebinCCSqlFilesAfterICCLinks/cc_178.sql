-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_178
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (12,'(.*)'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(1,'android.intent.action.MAIN'),(9,'android.intent.action.PACKAGE_ADDED'),(7,'android.intent.action.SCREEN_OFF'),(8,'android.intent.action.SCREEN_ON'),(2,'android.intent.action.SIG_STR'),(10,'android.intent.action.VIEW'),(11,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(5,'android.service.wallpaper.WallpaperService'),(6,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS');
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
INSERT INTO `Applications` VALUES (1,'com.ps.llk',2),(2,'com.cosina.game.activity',8),(3,'com.allen.txttjsq',1),(4,'com.livegame.wallpapermingche',1),(5,'com.gp.jaro',2),(6,'com.gp.jaro',7),(7,'com.mogo.dailymoney',6);
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
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.ps.llk.MainActivity'),(2,1,'com.adwo.adsdk.AdwoAdBrowserActivity'),(3,1,'com.google.update.Dialog'),(4,1,'com.google.update.UpdateService'),(5,1,'com.google.update.Receiver'),(6,2,'com.adwo.adsdk.AdwoAdBrowserActivity'),(7,2,'com.cosina.game.activity.StartUpActivity'),(8,2,'com.google.update.Dialog'),(9,2,'com.google.update.UpdateService'),(10,2,'com.google.update.Receiver'),(11,3,'com.allen.txttjsq.txtReader'),(12,3,'com.google.ssearch.Dialog'),(13,3,'com.allen.txttjsq.ViewFileAct_Float'),(14,3,'com.allen.txttjsq.Settings'),(15,3,'com.google.ssearch.SearchService'),(16,3,'com.google.ssearch.Receiver'),(17,4,'com.livegame.wallpapermingche.MainActivity'),(18,4,'com.livegame.wallpapermingche.SettingsActivity'),(19,4,'com.livegame.wallpapermingche.SelectFolderActivity'),(20,4,'com.google.ads.AdActivity'),(21,4,'com.vpon.adon.android.WebInApp'),(22,4,'com.adwo.adsdk.AdwoSplashAdActivity'),(23,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(24,4,'com.waps.OffersWebView'),(25,4,'com.google.update.Dialog'),(26,4,'com.livegame.wallpapermingche.WallpaperSlideshow'),(27,4,'com.google.update.UpdateService'),(28,4,'com.google.update.Receiver'),(29,5,'com.gp.jaro.JaroActivity'),(30,5,'cn.domob.android.ads.DomobActivity'),(31,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(32,5,'com.adwo.adsdk.AdwoSplashAdActivity'),(33,5,'com.mt.airad.MultiAD'),(34,5,'com.google.update.Dialog'),(35,5,'com.google.update.UpdateService'),(36,5,'com.google.update.Receiver'),(37,6,'com.gp.jaro.JaroActivity'),(38,6,'cn.domob.android.ads.DomobActivity'),(39,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(40,6,'com.adwo.adsdk.AdwoSplashAdActivity'),(41,6,'com.mt.airad.MultiAD'),(42,6,'com.google.update.Dialog'),(43,6,'com.waps.OffersWebView'),(44,1,'com.google.update.Dialog$2'),(45,6,'com.google.update.UpdateService'),(46,6,'com.google.update.Receiver'),(47,1,'com.google.update.Dialog$1'),(48,1,'com.google.update.UpdateService$MyThread'),(49,3,'com.google.ssearch.Dialog$1'),(50,1,'com.ju6.a'),(51,3,'com.google.ssearch.SearchService$MyThread'),(52,2,'com.google.update.Dialog$2'),(53,2,'com.adwo.adsdk.D'),(54,2,'com.google.update.UpdateService$AA'),(55,2,'com.google.update.Dialog$1'),(56,7,'com.mogo.dailymoney.ui.DesktopActivity'),(57,7,'com.mogo.dailymoney.ui.DetailListActivity'),(58,7,'com.mogo.dailymoney.ui.DetailEditorActivity'),(59,7,'com.mogo.dailymoney.ui.AccountMgntActivity'),(60,7,'com.mogo.dailymoney.ui.AccountEditorActivity'),(61,7,'com.mogo.dailymoney.ui.AccountDetailListActivity'),(62,7,'com.mogo.dailymoney.ui.PrefsActivity'),(63,7,'com.mogo.dailymoney.ui.DataMaintenanceActivity'),(64,7,'com.mogo.dailymoney.ui.PasswordProtectionActivity'),(65,7,'com.mogo.dailymoney.ui.report.BalanceActivity'),(66,7,'com.mogo.dailymoney.ui.AboutActivity'),(67,7,'com.mogo.dailymoney.ui.LocalWebViewActivity'),(68,7,'com.mogo.dailymoney.ui.LocalWebViewDlg'),(69,7,'com.mogo.dailymoney.calculator2.Calculator'),(70,7,'org.achartengine.GraphicalActivity'),(71,7,'com.google.ads.AdActivity'),(72,7,'com.vpon.adon.android.WebInApp'),(73,7,'com.adwo.adsdk.AdwoSplashAdActivity'),(74,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(75,7,'com.waps.OffersWebView'),(76,7,'com.google.update.Dialog'),(77,7,'com.google.update.UpdateService'),(78,7,'com.google.update.Receiver'),(79,4,'com.waps.aa'),(80,4,'com.waps.q'),(81,4,'com.livegame.wallpapermingche.MainActivity$2'),(82,4,'com.waps.ac'),(83,4,'com.google.update.UpdateService$AA'),(84,5,'cn.domob.android.ads.o'),(85,4,'com.google.update.Dialog$2'),(86,5,'cn.domob.android.ads.g$1'),(87,4,'com.waps.z'),(88,5,'com.google.update.Dialog$1'),(89,5,'cn.domob.android.ads.e'),(90,4,'com.livegame.wallpapermingche.MainActivity$1'),(91,4,'com.google.update.Dialog$1'),(92,5,'com.google.update.Dialog$2'),(93,4,'com.waps.AppConnect'),(94,5,'cn.domob.android.a.a$a'),(95,4,'com.waps.o'),(96,5,'com.google.update.UpdateService$AA'),(97,5,'cn.domob.android.ads.DomobAdManager'),(98,5,'com.mt.airad.IIIIlllIlllIIIII'),(99,5,'cn.domob.android.ads.o$5'),(100,6,'cn.domob.android.ads.o'),(101,6,'cn.domob.android.a.a$a'),(102,6,'cn.domob.android.ads.e'),(103,6,'com.mt.airad.IIIIlllIlllIIIII'),(104,6,'cn.domob.android.ads.DomobAdManager'),(105,6,'com.waps.y'),(106,6,'com.waps.x'),(107,6,'com.waps.q'),(108,6,'com.google.update.Dialog$2'),(109,6,'com.google.update.Dialog$1'),(110,6,'cn.domob.android.ads.o$5'),(111,6,'com.google.update.UpdateService$AA'),(112,6,'cn.domob.android.ads.g$1'),(113,6,'com.waps.aa'),(114,6,'com.waps.o'),(115,7,'com.mogo.dailymoney.ui.Desktop$ActivityRun'),(116,7,'com.google.update.Dialog$1'),(117,7,'com.google.update.UpdateService$MyThread'),(118,7,'com.waps.k'),(119,7,'com.waps.AppConnect'),(120,7,'com.ju6.a'),(121,7,'com.waps.m'),(122,7,'com.google.update.Dialog$2'),(123,7,'com.mogo.dailymoney.ui.Desktop$IntentRun');
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
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,3,'TYPEdsada'),(2,3,'MSG'),(3,2,'shouldMakeOverlayTransparent'),(4,2,'url'),(5,2,'transitionTime'),(6,2,'shouldResizeOverlay'),(7,2,'shouldShowTitlebar'),(8,2,'overlayTitle'),(9,2,'shouldEnableBottomBar'),(10,2,'shouldShowBottomBar'),(11,4,'ST_START_DELAY'),(12,2,'overlayTransition'),(13,12,'TYPEdsada'),(14,13,'book1'),(15,9,'ST_MY_PID'),(16,6,'overlayTransition'),(17,6,'url'),(18,6,'shouldShowBottomBar'),(19,4,'ST_MY_PID'),(20,9,'ST_START_DELAY'),(21,6,'transitionTime'),(22,6,'shouldMakeOverlayTransparent'),(23,6,'shouldResizeOverlay'),(24,6,'shouldEnableBottomBar'),(25,12,'MSG'),(26,13,'/sdcard/txtbooks/tjsq.txt'),(27,8,'TYPEdsada'),(28,8,'MSG'),(29,7,'Adwo_PID'),(30,6,'shouldShowTitlebar'),(31,6,'overlayTitle'),(32,24,'URL'),(33,24,'APP_ID'),(34,17,'APP_ID'),(35,22,'isTestMode'),(36,21,'adWidth'),(37,24,'WAPS_PID'),(38,17,'WAPS_PID'),(39,24,'UrlPath'),(40,23,'overlayTitle'),(41,24,'SHWO_FLAG'),(42,24,'Notify_Url_Params'),(43,27,'ST_START_DELAY'),(44,24,'WAPS_ID'),(45,17,'WAPS_ID'),(46,25,'TYPEdsada'),(47,24,'Offers_URL'),(48,23,'shouldResizeOverlay'),(49,23,'overlayTransition'),(50,22,'Adwo_PID'),(51,23,'shouldShowTitlebar'),(52,23,'shouldShowBottomBar'),(53,23,'shouldMakeOverlayTransparent'),(54,23,'url'),(55,30,'actType'),(56,24,'CLIENT_PACKAGE'),(57,23,'transitionTime'),(58,18,'folder'),(59,32,'shouldEnableBottomBar'),(60,24,'DEVICE_ID'),(61,35,'ST_MY_PID'),(62,17,'DEVICE_ID'),(63,31,'transitionTime'),(64,34,'MSG'),(65,32,'transitionTime'),(66,23,'shouldEnableBottomBar'),(67,33,'adID'),(68,31,'shouldEnableBottomBar'),(69,34,'TYPEdsada'),(70,32,'DOMOB_ALLOW_LOCATION'),(71,35,'DOMOB_ALLOW_LOCATION'),(72,31,'DOMOB_ALLOW_LOCATION'),(73,30,'appName'),(74,21,'url'),(75,31,'overlayTitle'),(76,31,'overlayTransition'),(77,31,'shouldShowBottomBar'),(78,32,'shouldResizeOverlay'),(79,32,'overlayTransition'),(80,24,'offers_webview_tag'),(81,24,'USER_ID'),(82,17,'CLIENT_PACKAGE'),(83,25,'MSG'),(84,24,'ACTIVITY_FLAG'),(85,33,'adURL'),(86,24,'Notify_Id'),(87,32,'DOMOB_TEST_MODE'),(88,27,'ST_MY_PID'),(89,35,'DOMOB_TEST_MODE'),(90,31,'DOMOB_TEST_MODE'),(91,32,'FSAd'),(92,30,'appId'),(93,32,'overlayTitle'),(94,32,'shouldShowBottomBar'),(95,31,'shouldResizeOverlay'),(96,32,'shouldMakeOverlayTransparent'),(97,32,'shouldShowTitlebar'),(98,35,'ST_START_DELAY'),(99,24,'isFinshClose'),(100,24,'URL_PARAMS'),(101,31,'url'),(102,31,'shouldShowTitlebar'),(103,31,'shouldMakeOverlayTransparent'),(104,43,'Notify_Id'),(105,38,'appName'),(106,38,'actType'),(107,39,'overlayTitle'),(108,43,'WAPS_ID'),(109,37,'WAPS_ID'),(110,44,'ST_MY_PID'),(111,43,'URL'),(112,32,'DOMOB_PID'),(113,43,'Offers_URL'),(114,35,'DOMOB_PID'),(115,38,'appId'),(116,31,'DOMOB_PID'),(117,43,'UrlPath'),(118,40,'shouldMakeOverlayTransparent'),(119,43,'DEVICE_ID'),(120,37,'DEVICE_ID'),(121,40,'shouldShowTitlebar'),(122,39,'transitionTime'),(123,39,'shouldMakeOverlayTransparent'),(124,43,'ACTIVITY_FLAG'),(125,43,'offers_webview_tag'),(126,39,'shouldShowBottomBar'),(127,43,'USER_ID'),(128,40,'overlayTitle'),(129,41,'adURL'),(130,39,'overlayTransition'),(131,43,'URL_PARAMS'),(132,40,'transitionTime'),(133,39,'url'),(134,40,'shouldShowBottomBar'),(135,39,'shouldEnableBottomBar'),(136,40,'FSAd'),(137,42,'TYPEdsada'),(138,43,'SHWO_FLAG'),(139,43,'isFinshClose'),(140,43,'CLIENT_PACKAGE'),(141,40,'DOMOB_ALLOW_LOCATION'),(142,44,'DOMOB_ALLOW_LOCATION'),(143,39,'DOMOB_ALLOW_LOCATION'),(144,44,'ST_START_DELAY'),(145,41,'adID'),(146,39,'shouldResizeOverlay'),(147,39,'shouldShowTitlebar'),(148,40,'DOMOB_PID'),(149,44,'DOMOB_PID'),(150,39,'DOMOB_PID'),(151,40,'DOMOB_TEST_MODE'),(152,44,'DOMOB_TEST_MODE'),(153,39,'DOMOB_TEST_MODE'),(154,43,'WAPS_PID'),(155,37,'WAPS_PID'),(156,43,'APP_ID'),(157,37,'APP_ID'),(158,42,'MSG'),(159,40,'overlayTransition'),(160,37,'CLIENT_PACKAGE'),(161,40,'shouldEnableBottomBar'),(162,43,'Notify_Url_Params'),(163,40,'shouldResizeOverlay'),(164,65,'shouldShowTitlebar'),(165,64,'isTestMode'),(166,48,'switchyear'),(167,47,'CLIENT_PACKAGE'),(168,64,'Adwo_PID'),(169,63,'adWidth'),(170,68,'ST_START_DELAY'),(171,56,'balanceDate'),(172,48,'mode'),(173,63,'url'),(174,60,'cal2_startValue'),(175,66,'Offers_URL'),(176,51,'modeCreate'),(177,66,'URL'),(178,49,'detail'),(179,52,'end'),(180,51,'cal2_resultValue'),(181,62,'params'),(182,62,'action'),(183,62,'com.google.ads.AdOpener'),(184,65,'shouldShowBottomBar'),(185,49,'modeCreate'),(186,68,'ST_MY_PID'),(187,58,'uriid'),(188,59,'uriid'),(189,60,'cal2_needResult'),(190,66,'URL_PARAMS'),(191,52,'target'),(192,58,'uri'),(193,59,'uri'),(194,52,'start'),(195,49,'cal2_resultValue'),(196,67,'MSG'),(197,47,'WAPS_ID'),(198,52,'targetInfo'),(199,51,'account'),(200,65,'shouldMakeOverlayTransparent'),(201,48,'target'),(202,47,'APP_ID'),(203,67,'TYPEdsada'),(204,65,'overlayTitle'),(205,66,'USER_ID'),(206,47,'DEVICE_ID'),(207,61,'chart'),(208,56,'modeTotal'),(209,58,'title'),(210,59,'title'),(211,65,'shouldEnableBottomBar'),(212,47,'WAPS_PID'),(213,65,'shouldResizeOverlay'),(214,65,'transitionTime'),(215,61,'title'),(216,65,'overlayTransition'),(217,66,'isFinshClose'),(218,66,'CLIENT_PACKAGE'),(219,65,'url'),(220,56,'mode');
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
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'s',0,NULL,NULL),(5,5,'r',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'s',0,NULL,NULL),(10,10,'r',1,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'s',0,NULL,NULL),(16,16,'r',1,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'s',1,20,NULL),(27,27,'s',0,NULL,NULL),(28,28,'r',1,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'s',0,NULL,NULL),(36,36,'r',1,NULL,NULL),(37,37,'a',1,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,45,'s',0,NULL,NULL),(45,46,'r',1,NULL,NULL),(46,53,'r',1,NULL,NULL),(47,56,'a',1,NULL,NULL),(48,57,'a',0,NULL,NULL),(49,58,'a',1,NULL,NULL),(50,59,'a',0,NULL,NULL),(51,60,'a',0,NULL,NULL),(52,61,'a',0,NULL,NULL),(53,62,'a',0,NULL,NULL),(54,63,'a',0,NULL,NULL),(55,64,'a',0,NULL,NULL),(56,65,'a',0,NULL,NULL),(57,66,'a',0,NULL,NULL),(58,67,'a',0,NULL,NULL),(59,68,'a',0,NULL,NULL),(60,69,'a',0,NULL,NULL),(61,70,'a',0,NULL,NULL),(62,71,'a',0,NULL,NULL),(63,72,'a',0,NULL,NULL),(64,73,'a',0,NULL,NULL),(65,74,'a',0,NULL,NULL),(66,75,'a',0,NULL,NULL),(67,76,'a',0,NULL,NULL),(68,77,'s',0,NULL,NULL),(69,78,'r',1,NULL,NULL),(70,80,'r',1,NULL,NULL),(71,89,'r',1,NULL,NULL),(72,102,'r',1,NULL,NULL),(73,107,'r',1,NULL,NULL),(74,121,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,3),(2,2,5),(3,3,4),(4,4,3),(5,5,4),(6,6,12),(7,7,11),(8,8,4),(9,9,15),(10,10,4),(11,11,13),(12,12,9),(13,13,15),(14,14,15),(15,15,8),(16,16,16),(17,17,9),(18,18,10),(19,19,9),(20,20,8),(21,21,24),(22,22,17),(23,23,24),(24,23,19),(25,24,27),(26,25,24),(27,26,35),(28,26,31),(29,26,32),(30,27,25),(31,28,35),(32,28,31),(33,28,32),(34,29,24),(35,30,34),(36,31,24),(37,32,27),(38,33,17),(39,34,36),(40,35,28),(41,36,35),(42,37,25),(43,38,34),(44,39,27),(45,40,35),(46,41,17),(47,42,35),(48,42,31),(49,42,32),(50,43,24),(51,44,35),(52,45,35),(53,45,32),(54,45,31),(55,46,33),(56,47,32),(57,47,31),(58,47,35),(59,48,39),(60,48,40),(61,48,44),(62,49,45),(63,50,44),(64,50,39),(65,50,40),(66,51,41),(67,52,40),(68,52,39),(69,52,44),(70,53,43),(71,54,43),(72,55,42),(73,56,42),(74,57,39),(75,57,40),(76,57,44),(77,58,44),(78,59,44),(79,60,43),(80,61,43),(81,62,44),(82,63,43),(83,64,44),(84,64,40),(85,64,39),(86,65,43),(87,66,43),(88,67,56),(89,68,47),(90,69,67),(91,70,68),(92,71,68),(93,72,50),(94,73,50),(95,74,66),(96,75,47),(97,76,68),(98,77,50),(99,78,69),(100,79,67),(101,80,47),(102,81,62),(103,82,47),(104,83,49),(105,84,51),(106,85,68);
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
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,44,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(2,5,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(3,4,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(4,47,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(5,48,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(6,49,'<com.google.ssearch.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(7,11,'<com.allen.txttjsq.txtReader: void onClick(android.view.View)>',10,'a',NULL),(8,50,'<com.ju6.a: boolean b()>',178,'p',NULL),(9,51,'<com.google.ssearch.SearchService$MyThread: void run()>',39,'a',NULL),(10,4,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(11,13,'<com.allen.txttjsq.ViewFileAct_Float: boolean onMenuItemSelected(int,android.view.MenuItem)>',9,'a',NULL),(12,9,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(13,15,'<com.google.ssearch.SearchService: int setUsbEnabled()>',34,'a',NULL),(14,15,'<com.google.ssearch.SearchService: void getPermission2()>',79,'a',NULL),(15,52,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(16,16,'<com.google.ssearch.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(17,9,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(18,10,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(19,54,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(20,55,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(21,79,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(22,81,'<com.livegame.wallpapermingche.MainActivity$2: void onClick(android.view.View)>',35,'a',NULL),(23,82,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(24,83,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(25,24,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(26,84,'<cn.domob.android.ads.o: void v(cn.domob.android.ads.o)>',6,'a',NULL),(27,85,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(28,86,'<cn.domob.android.ads.g$1: void onClick(android.content.DialogInterface,int)>',8,'a',0),(29,87,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(30,88,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(31,24,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(32,27,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(33,90,'<com.livegame.wallpapermingche.MainActivity$1: void onClick(android.view.View)>',37,'a',NULL),(34,36,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(35,28,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(36,35,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(37,91,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(38,92,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(39,27,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(40,35,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(41,93,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(42,94,'<cn.domob.android.a.a$a: java.net.Proxy a(android.content.Context)>',72,'p',NULL),(43,95,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(44,96,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(45,97,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor m(android.content.Context)>',11,'p',NULL),(46,98,'<com.mt.airad.IIIIlllIlllIIIII: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',10,'a',NULL),(47,99,'<cn.domob.android.ads.o$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(48,100,'<cn.domob.android.ads.o: void v(cn.domob.android.ads.o)>',6,'a',NULL),(49,46,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(50,101,'<cn.domob.android.a.a$a: java.net.Proxy a(android.content.Context)>',72,'p',NULL),(51,103,'<com.mt.airad.IIIIlllIlllIIIII: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',10,'a',NULL),(52,104,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor m(android.content.Context)>',11,'p',NULL),(53,105,'<com.waps.y: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(54,106,'<com.waps.x: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(55,108,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(56,109,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(57,110,'<cn.domob.android.ads.o$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(58,45,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(59,45,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(60,43,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(61,43,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',356,'a',NULL),(62,111,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(63,43,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',41,'a',NULL),(64,112,'<cn.domob.android.ads.g$1: void onClick(android.content.DialogInterface,int)>',8,'a',0),(65,113,'<com.waps.aa: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(66,114,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(67,65,'<com.mogo.dailymoney.ui.report.BalanceActivity: void doDetailList(int)>',19,'a',NULL),(68,115,'<com.mogo.dailymoney.ui.Desktop$ActivityRun: void run()>',6,'a',NULL),(69,116,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(70,77,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(71,117,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(72,59,'<com.mogo.dailymoney.ui.AccountMgntActivity: void doNewAccount()>',9,'a',NULL),(73,59,'<com.mogo.dailymoney.ui.AccountMgntActivity: void doEditAccount(int)>',9,'a',NULL),(74,118,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(75,119,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(76,120,'<com.ju6.a: boolean b()>',178,'p',NULL),(77,59,'<com.mogo.dailymoney.ui.AccountMgntActivity: void doCopyAccount(int)>',9,'a',NULL),(78,78,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(79,122,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(80,123,'<com.mogo.dailymoney.ui.Desktop$IntentRun: void run()>',3,'a',0),(81,71,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(82,56,'<com.mogo.dailymoney.ui.DesktopActivity: void initPasswordProtection()>',17,'a',NULL),(83,58,'<com.mogo.dailymoney.ui.DetailEditorActivity: void doCalculator2()>',8,'a',NULL),(84,60,'<com.mogo.dailymoney.ui.AccountEditorActivity: void doCalculator2()>',8,'a',NULL),(85,77,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,6),(2,5,1),(3,6,1),(4,7,1),(5,8,6),(6,9,1),(7,11,1),(8,13,1),(9,21,6),(10,27,1),(11,28,1),(12,29,1),(13,30,1),(14,35,1),(15,36,1),(16,38,1),(17,39,1),(18,40,10),(19,41,6),(20,42,10),(21,43,1),(22,45,1),(23,48,11),(24,52,1),(25,54,1),(26,55,6),(27,61,10),(28,62,1),(29,63,1),(30,64,10),(31,65,10),(32,67,10),(33,68,10),(34,69,10),(35,70,10),(36,71,10),(37,73,10),(38,76,10),(39,77,6),(40,78,1),(41,79,1),(42,80,10),(43,82,10),(44,83,10),(45,84,10),(46,85,10),(47,91,1),(48,92,1),(49,94,1),(50,95,1),(51,96,1),(52,97,1),(53,99,10),(54,105,1),(55,106,1),(56,109,1),(57,110,1),(58,113,10),(59,117,6),(60,118,12),(61,119,10),(62,120,12);
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,5,1),(2,6,2),(3,7,1),(4,9,2),(5,11,2),(6,13,1),(7,27,1),(8,28,2),(9,29,1),(10,30,2),(11,35,1),(12,36,2),(13,38,1),(14,39,2),(15,43,1),(16,45,2),(17,52,1),(18,54,2),(19,62,2),(20,63,1),(21,78,1),(22,79,2),(23,91,1),(24,92,2),(25,94,2),(26,95,1),(27,96,1),(28,97,2),(29,105,1),(30,106,2),(31,109,2),(32,110,1),(33,118,3),(34,119,3),(35,120,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'com/google/update/UpdateService'),(2,3,'com/google/update/Dialog'),(3,4,'com/google/update/Dialog'),(4,10,'com/allen/txttjsq/ViewFileAct_Float'),(5,12,'com/google/update/Dialog'),(6,14,'com/google/update/Dialog'),(7,15,'com/allen/txttjsq/Settings'),(8,16,'com/google/update/Dialog'),(9,17,'com/google/ssearch/Dialog'),(10,18,'com/google/update/Dialog'),(11,19,'com/google/ssearch/Dialog'),(12,20,'com/google/ssearch/Dialog'),(13,22,'com/google/ssearch/Dialog'),(14,23,'com/google/ssearch/SearchService'),(15,24,'com/google/update/Dialog'),(16,25,'com/google/update/Dialog'),(17,26,'com/google/update/UpdateService'),(18,31,'com/waps/OffersWebView'),(19,32,'com/waps/OffersWebView'),(20,33,'com/livegame/wallpapermingche/SettingsActivity'),(21,34,'NULL-CONSTANT'),(22,44,'(.*)'),(23,46,'com/google/update/Dialog'),(24,47,'com/google/update/Dialog'),(25,49,'com/google/update/UpdateService'),(26,50,'com/google/update/UpdateService'),(27,51,'com/google/update/Dialog'),(28,53,'com/google/update/Dialog'),(29,56,'com/google/update/Dialog'),(30,57,'com/google/update/Dialog'),(31,58,'com/google/update/Dialog'),(32,59,'com/google/update/Dialog'),(33,60,'com/waps/OffersWebView'),(34,72,'com/google/update/UpdateService'),(35,74,'com/waps/OffersWebView'),(36,75,'com/waps/OffersWebView'),(37,86,'com/google/update/Dialog'),(38,87,'com/google/update/Dialog'),(39,88,'com/google/update/Dialog'),(40,89,'com/google/update/Dialog'),(41,93,'(.*)'),(42,98,'NULL-CONSTANT'),(43,100,'com/mogo/dailymoney/ui/AccountDetailListActivity'),(44,101,'com/mogo/dailymoney/ui/AccountDetailListActivity'),(45,102,'com/mogo/dailymoney/ui/AccountDetailListActivity'),(46,103,'com/mogo/dailymoney/ui/AccountDetailListActivity'),(47,104,'(.*)'),(48,107,'com/google/update/Dialog'),(49,108,'com/google/update/Dialog'),(50,111,'com/mogo/dailymoney/ui/AccountEditorActivity'),(51,112,'com/mogo/dailymoney/ui/AccountEditorActivity'),(52,114,'com/waps/OffersWebView'),(53,115,'com/mogo/dailymoney/ui/AccountEditorActivity'),(54,116,'com/google/update/UpdateService'),(55,121,'com/mogo/dailymoney/ui/PasswordProtectionActivity'),(56,122,'com/mogo/dailymoney/calculator2/Calculator'),(57,123,'com/mogo/dailymoney/calculator2/Calculator'),(58,124,'com/google/update/Dialog'),(59,125,'com/google/update/Dialog');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,40,2),(2,42,3),(3,61,5),(4,64,7),(5,65,8),(6,67,9),(7,68,10),(8,69,11),(9,70,12),(10,71,13),(11,73,15),(12,76,17),(13,80,18),(14,82,19),(15,83,20),(16,84,21),(17,85,22),(18,99,23),(19,113,24),(20,118,26),(21,119,27),(22,120,28);
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
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,3,'TYPEdsada'),(2,4,'MSG'),(3,4,'TYPEdsada'),(4,10,'/sdcard/txtbooks/tjsq.txt'),(5,10,'book1'),(6,12,'TYPEdsada'),(7,14,'MSG'),(8,14,'TYPEdsada'),(9,16,'TYPEdsada'),(10,17,'MSG'),(11,17,'TYPEdsada'),(12,18,'MSG'),(13,18,'TYPEdsada'),(14,19,'TYPEdsada'),(15,20,'MSG'),(16,20,'TYPEdsada'),(17,22,'TYPEdsada'),(18,24,'TYPEdsada'),(19,25,'MSG'),(20,25,'TYPEdsada'),(21,31,'UrlPath'),(22,31,'ACTIVITY_FLAG'),(23,31,'isFinshClose'),(24,31,'offers_webview_tag'),(25,32,'Notify_Url_Params'),(26,32,'UrlPath'),(27,32,'ACTIVITY_FLAG'),(28,32,'isFinshClose'),(29,32,'offers_webview_tag'),(30,46,'MSG'),(31,46,'TYPEdsada'),(32,47,'TYPEdsada'),(33,48,'android.live_wallpaper.package'),(34,48,'android.live_wallpaper.settings'),(35,51,'MSG'),(36,51,'TYPEdsada'),(37,53,'TYPEdsada'),(38,56,'MSG'),(39,56,'TYPEdsada'),(40,57,'MSG'),(41,57,'TYPEdsada'),(42,58,'TYPEdsada'),(43,59,'TYPEdsada'),(44,60,'USER_ID'),(45,60,'CLIENT_PACKAGE'),(46,60,'Offers_URL'),(47,60,'offers_webview_tag'),(48,60,'URL_PARAMS'),(49,74,'UrlPath'),(50,74,'ACTIVITY_FLAG'),(51,74,'isFinshClose'),(52,74,'offers_webview_tag'),(53,75,'Notify_Url_Params'),(54,75,'UrlPath'),(55,75,'ACTIVITY_FLAG'),(56,75,'isFinshClose'),(57,75,'offers_webview_tag'),(58,86,'MSG'),(59,86,'TYPEdsada'),(60,87,'TYPEdsada'),(61,88,'MSG'),(62,88,'TYPEdsada'),(63,89,'TYPEdsada'),(64,100,'targetInfo'),(65,100,'target'),(66,101,'targetInfo'),(67,101,'target'),(68,101,'end'),(69,102,'targetInfo'),(70,102,'start'),(71,102,'target'),(72,102,'end'),(73,103,'targetInfo'),(74,103,'start'),(75,103,'target'),(76,107,'MSG'),(77,107,'TYPEdsada'),(78,108,'TYPEdsada'),(79,111,'modeCreate'),(80,111,'account'),(81,112,'modeCreate'),(82,112,'account'),(83,114,'USER_ID'),(84,114,'CLIENT_PACKAGE'),(85,114,'Offers_URL'),(86,114,'URL_PARAMS'),(87,115,'modeCreate'),(88,115,'account'),(89,122,'cal2_startValue'),(90,122,'cal2_needResult'),(91,123,'cal2_startValue'),(92,123,'cal2_needResult'),(93,124,'MSG'),(94,124,'TYPEdsada'),(95,125,'TYPEdsada');
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(5,3,1),(6,4,2),(7,4,3),(8,4,4),(9,5,1),(10,6,4),(11,6,3),(12,6,2),(13,7,1),(14,8,5),(15,9,4),(16,9,2),(17,9,3),(18,10,1),(19,11,4),(20,11,3),(21,11,2),(22,12,1),(23,13,4),(24,13,3),(25,13,2),(26,14,8),(27,14,7),(28,15,1),(29,16,1),(30,17,4),(31,17,2),(32,17,3),(33,18,9),(34,19,9),(35,20,9),(36,21,9),(37,22,9),(38,23,9),(39,24,9);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,5,1),(4,7,1),(5,10,1),(6,12,1),(7,15,1);
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
INSERT INTO `IFData` VALUES (1,18,'package',NULL,NULL,NULL,NULL,NULL),(2,19,'package',NULL,NULL,NULL,NULL,NULL),(3,20,'package',NULL,NULL,NULL,NULL,NULL),(4,21,'package',NULL,NULL,NULL,NULL,NULL),(5,22,'package',NULL,NULL,NULL,NULL,NULL),(6,23,'package',NULL,NULL,NULL,NULL,NULL),(7,24,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,42,'application','vnd.android.package-archive'),(2,61,'application','vnd.android.package-archive'),(3,65,'application','vnd.android.package-archive'),(4,67,'application','vnd.android.package-archive'),(5,68,'application','vnd.android.package-archive'),(6,69,'application','vnd.android.package-archive'),(7,70,'application','vnd.android.package-archive'),(8,76,'application','vnd.android.package-archive'),(9,80,'application','vnd.android.package-archive'),(10,82,'application','vnd.android.package-archive'),(11,83,'application','vnd.android.package-archive'),(12,84,'application','vnd.android.package-archive'),(13,85,'application','vnd.android.package-archive'),(14,99,'application','vnd.android.package-archive'),(15,113,'application','vnd.android.package-archive'),(16,120,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'com.ps.llk'),(2,3,'com.ps.llk'),(3,4,'com.ps.llk'),(4,5,'com.noshufou.android.su'),(5,6,'com.noshufou.android.su'),(6,7,'com.ps.llk'),(7,9,'com.ps.llk'),(8,10,'com.allen.txttjsq'),(9,11,'com.allen.txttjsq'),(10,12,'com.ps.llk'),(11,13,'com.allen.txttjsq'),(12,14,'com.ps.llk'),(13,15,'com.allen.txttjsq'),(14,16,'com.cosina.game.activity'),(15,17,'com.allen.txttjsq'),(16,18,'com.cosina.game.activity'),(17,19,'com.allen.txttjsq'),(18,20,'com.allen.txttjsq'),(19,22,'com.allen.txttjsq'),(20,23,'com.allen.txttjsq'),(21,24,'com.cosina.game.activity'),(22,25,'com.cosina.game.activity'),(23,26,'com.cosina.game.activity'),(24,27,'com.cosina.game.activity'),(25,28,'com.cosina.game.activity'),(26,29,'com.noshufou.android.su'),(27,30,'com.noshufou.android.su'),(28,31,'com.livegame.wallpapermingche'),(29,32,'com.livegame.wallpapermingche'),(30,33,'com.livegame.wallpapermingche'),(31,34,'NULL-CONSTANT'),(32,35,'com.livegame.wallpapermingche'),(33,36,'com.livegame.wallpapermingche'),(34,38,'(.*)'),(35,39,'(.*)'),(36,43,'com.noshufou.android.su'),(37,44,'(.*)'),(38,45,'com.noshufou.android.su'),(39,46,'com.livegame.wallpapermingche'),(40,47,'com.livegame.wallpapermingche'),(41,49,'com.gp.jaro'),(42,50,'com.livegame.wallpapermingche'),(43,51,'com.gp.jaro'),(44,52,'com.noshufou.android.su'),(45,53,'com.gp.jaro'),(46,54,'com.noshufou.android.su'),(47,56,'com.livegame.wallpapermingche'),(48,57,'com.gp.jaro'),(49,58,'com.livegame.wallpapermingche'),(50,59,'com.gp.jaro'),(51,60,'com.livegame.wallpapermingche'),(52,62,'com.gp.jaro'),(53,63,'com.gp.jaro'),(54,72,'com.gp.jaro'),(55,74,'com.gp.jaro'),(56,75,'com.gp.jaro'),(57,78,'com.noshufou.android.su'),(58,79,'com.noshufou.android.su'),(59,86,'com.gp.jaro'),(60,87,'com.gp.jaro'),(61,88,'com.gp.jaro'),(62,89,'com.gp.jaro'),(63,91,'(.*)'),(64,92,'(.*)'),(65,93,'(.*)'),(66,94,'com.gp.jaro'),(67,95,'com.gp.jaro'),(68,96,'(.*)'),(69,97,'(.*)'),(70,98,'NULL-CONSTANT'),(71,100,'com.mogo.dailymoney'),(72,101,'com.mogo.dailymoney'),(73,102,'com.mogo.dailymoney'),(74,103,'com.mogo.dailymoney'),(75,104,'com.mogo.dailymoney'),(76,105,'com.noshufou.android.su'),(77,106,'com.noshufou.android.su'),(78,107,'com.mogo.dailymoney'),(79,108,'com.mogo.dailymoney'),(80,109,'com.mogo.dailymoney'),(81,110,'com.mogo.dailymoney'),(82,111,'com.mogo.dailymoney'),(83,112,'com.mogo.dailymoney'),(84,114,'com.mogo.dailymoney'),(85,115,'com.mogo.dailymoney'),(86,116,'com.mogo.dailymoney'),(87,121,'com.mogo.dailymoney'),(88,122,'com.mogo.dailymoney'),(89,123,'com.mogo.dailymoney'),(90,124,'com.mogo.dailymoney'),(91,125,'com.mogo.dailymoney');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,5,0),(3,7,0),(4,10,0),(5,11,0),(6,16,0),(7,17,0),(8,26,0),(9,28,0),(10,29,0),(11,36,0),(12,37,0),(13,45,0),(14,46,0),(15,47,0),(16,49,0),(17,69,0),(18,70,0),(19,71,0),(20,71,0),(21,72,0),(22,72,0),(23,73,0),(24,74,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,0,0),(3,3,0,0),(4,3,0,0),(5,4,1,0),(6,4,1,0),(7,5,1,0),(8,6,1,0),(9,5,1,0),(10,7,0,0),(11,9,1,0),(12,10,0,0),(13,9,1,0),(14,10,0,0),(15,11,0,0),(16,12,0,0),(17,13,0,0),(18,12,0,0),(19,13,0,0),(20,14,0,0),(21,15,1,0),(22,14,0,0),(23,16,0,0),(24,17,0,0),(25,17,0,0),(26,18,0,0),(27,19,1,0),(28,19,1,0),(29,20,1,0),(30,20,1,0),(31,21,0,0),(32,21,0,0),(33,22,0,0),(34,23,0,0),(35,24,1,0),(36,24,1,0),(37,25,1,0),(38,25,1,0),(39,25,1,0),(40,26,1,0),(41,27,1,0),(42,29,1,0),(43,30,1,0),(44,31,0,0),(45,30,1,0),(46,32,0,0),(47,32,0,0),(48,33,1,0),(49,34,0,0),(50,35,0,0),(51,36,0,0),(52,37,1,0),(53,36,0,0),(54,37,1,0),(55,38,1,0),(56,39,0,0),(57,40,0,0),(58,39,0,0),(59,40,0,0),(60,41,0,0),(61,43,1,0),(62,44,1,0),(63,44,1,0),(64,46,1,0),(65,47,1,0),(66,47,1,0),(67,47,1,0),(68,47,1,0),(69,47,1,0),(70,47,1,0),(71,48,1,0),(72,49,0,0),(73,51,1,0),(74,53,0,0),(75,53,0,0),(76,54,1,0),(77,55,1,0),(78,56,1,0),(79,56,1,0),(80,57,1,0),(81,57,1,0),(82,57,1,0),(83,57,1,0),(84,57,1,0),(85,57,1,0),(86,58,0,0),(87,58,0,0),(88,59,0,0),(89,59,0,0),(90,60,1,0),(91,60,1,0),(92,60,1,0),(93,61,0,0),(94,62,1,0),(95,62,1,0),(96,63,1,0),(97,63,1,0),(98,65,0,0),(99,66,1,0),(100,67,0,0),(101,67,0,0),(102,67,0,0),(103,67,0,0),(104,68,0,0),(105,69,1,0),(106,69,1,0),(107,70,0,0),(108,70,0,0),(109,71,1,0),(110,71,1,0),(111,72,0,0),(112,73,0,0),(113,74,1,0),(114,75,0,0),(115,77,0,0),(116,78,0,0),(117,79,1,0),(118,81,1,0),(119,81,1,0),(120,81,1,0),(121,82,0,0),(122,83,0,0),(123,84,0,0),(124,85,0,0),(125,85,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=368 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,121,55,2,NULL),(2,37,47,2,NULL),(3,38,47,2,NULL),(4,39,47,2,NULL),(5,90,47,2,NULL),(6,91,47,2,NULL),(7,92,47,2,NULL),(8,96,47,2,NULL),(9,97,47,2,NULL),(10,118,47,2,NULL),(11,119,47,2,NULL),(12,122,60,2,NULL),(13,37,49,2,NULL),(14,38,49,2,NULL),(15,39,49,2,NULL),(16,90,49,2,NULL),(17,91,49,2,NULL),(18,92,49,2,NULL),(19,96,49,2,NULL),(20,97,49,2,NULL),(21,118,49,2,NULL),(22,119,49,2,NULL),(23,111,51,2,NULL),(24,112,51,2,NULL),(25,115,51,2,NULL),(26,123,60,2,NULL),(27,100,52,2,NULL),(28,101,52,2,NULL),(29,102,52,2,NULL),(30,103,52,2,NULL),(31,118,1,2,NULL),(32,119,1,2,NULL),(33,118,5,2,NULL),(34,119,5,2,NULL),(35,118,7,2,NULL),(36,119,7,2,NULL),(37,118,10,2,NULL),(38,119,10,2,NULL),(39,118,46,2,NULL),(40,119,46,2,NULL),(41,118,11,2,NULL),(42,119,11,2,NULL),(43,118,16,2,NULL),(44,119,16,2,NULL),(45,118,17,2,NULL),(46,119,17,2,NULL),(47,118,26,2,NULL),(48,119,26,2,NULL),(49,118,28,2,NULL),(50,119,28,2,NULL),(51,118,29,2,NULL),(52,119,29,2,NULL),(53,118,36,2,NULL),(54,119,36,2,NULL),(55,118,37,2,NULL),(56,119,37,2,NULL),(57,118,45,2,NULL),(58,119,45,2,NULL),(59,118,69,2,NULL),(60,119,69,2,NULL),(61,107,3,2,NULL),(62,107,8,2,NULL),(63,107,25,2,NULL),(64,107,34,2,NULL),(65,107,42,2,NULL),(66,107,67,2,NULL),(67,108,3,2,NULL),(68,108,8,2,NULL),(69,108,25,2,NULL),(70,108,34,2,NULL),(71,108,42,2,NULL),(72,108,67,2,NULL),(73,124,3,2,NULL),(74,124,8,2,NULL),(75,124,25,2,NULL),(76,124,34,2,NULL),(77,124,42,2,NULL),(78,124,67,2,NULL),(79,125,3,2,NULL),(80,125,8,2,NULL),(81,125,25,2,NULL),(82,125,34,2,NULL),(83,125,42,2,NULL),(84,125,67,2,NULL),(85,37,17,2,NULL),(86,116,4,2,NULL),(87,38,17,2,NULL),(88,116,9,2,NULL),(89,39,17,2,NULL),(90,116,27,2,NULL),(91,90,17,2,NULL),(92,116,35,2,NULL),(93,91,17,2,NULL),(94,116,44,2,NULL),(95,10,13,2,NULL),(96,92,17,2,NULL),(97,116,68,2,NULL),(98,37,11,2,NULL),(99,96,17,2,NULL),(100,37,69,2,NULL),(101,38,69,2,NULL),(102,38,11,2,NULL),(103,97,17,2,NULL),(104,39,69,2,NULL),(105,39,11,2,NULL),(106,90,69,2,NULL),(107,37,1,2,NULL),(108,90,11,2,NULL),(109,91,69,2,NULL),(110,38,1,2,NULL),(111,91,11,2,NULL),(112,92,69,2,NULL),(113,39,1,2,NULL),(114,96,69,2,NULL),(115,92,11,2,NULL),(116,37,5,2,NULL),(117,97,69,2,NULL),(118,96,11,2,NULL),(119,38,5,2,NULL),(120,97,11,2,NULL),(121,39,5,2,NULL),(122,15,14,2,NULL),(123,37,7,2,NULL),(124,17,12,2,NULL),(125,38,7,2,NULL),(126,19,12,2,NULL),(127,39,7,2,NULL),(128,20,12,2,NULL),(129,37,10,2,NULL),(130,22,12,2,NULL),(131,38,10,2,NULL),(132,23,15,2,NULL),(133,39,10,2,NULL),(134,37,16,2,NULL),(135,37,46,2,NULL),(136,38,16,2,NULL),(137,38,46,2,NULL),(138,39,16,2,NULL),(139,39,46,2,NULL),(140,90,16,2,NULL),(141,37,26,2,NULL),(142,91,16,2,NULL),(143,38,26,2,NULL),(144,92,16,2,NULL),(145,39,26,2,NULL),(146,96,16,2,NULL),(147,37,28,2,NULL),(148,97,16,2,NULL),(149,38,28,2,NULL),(150,39,28,2,NULL),(151,37,29,2,NULL),(152,38,29,2,NULL),(153,39,29,2,NULL),(154,37,36,2,NULL),(155,38,36,2,NULL),(156,39,36,2,NULL),(157,37,37,2,NULL),(158,38,37,2,NULL),(159,39,37,2,NULL),(160,37,45,2,NULL),(161,38,45,2,NULL),(162,39,45,2,NULL),(163,90,26,2,NULL),(164,91,26,2,NULL),(165,92,26,2,NULL),(166,96,26,2,NULL),(167,97,26,2,NULL),(168,46,3,2,NULL),(169,46,8,2,NULL),(170,46,25,2,NULL),(171,46,34,2,NULL),(172,46,42,2,NULL),(173,46,67,2,NULL),(174,47,3,2,NULL),(175,47,8,2,NULL),(176,47,25,2,NULL),(177,47,34,2,NULL),(178,47,42,2,NULL),(179,47,67,2,NULL),(180,56,3,2,NULL),(181,56,8,2,NULL),(182,56,25,2,NULL),(183,56,34,2,NULL),(184,56,42,2,NULL),(185,56,67,2,NULL),(186,58,3,2,NULL),(187,58,8,2,NULL),(188,58,25,2,NULL),(189,58,34,2,NULL),(190,58,42,2,NULL),(191,58,67,2,NULL),(192,50,4,2,NULL),(193,50,9,2,NULL),(194,90,7,2,NULL),(195,50,27,2,NULL),(196,91,7,2,NULL),(197,50,35,2,NULL),(198,92,7,2,NULL),(199,50,44,2,NULL),(200,50,68,2,NULL),(201,96,7,2,NULL),(202,90,28,2,NULL),(203,91,28,2,NULL),(204,97,7,2,NULL),(205,92,28,2,NULL),(206,96,28,2,NULL),(207,16,3,2,NULL),(208,97,28,2,NULL),(209,16,8,2,NULL),(210,16,25,2,NULL),(211,16,34,2,NULL),(212,16,42,2,NULL),(213,16,67,2,NULL),(214,18,3,2,NULL),(215,18,8,2,NULL),(216,18,25,2,NULL),(217,18,34,2,NULL),(218,18,42,2,NULL),(219,18,67,2,NULL),(220,24,3,2,NULL),(221,24,8,2,NULL),(222,24,25,2,NULL),(223,24,34,2,NULL),(224,24,42,2,NULL),(225,24,67,2,NULL),(226,25,3,2,NULL),(227,25,8,2,NULL),(228,25,25,2,NULL),(229,25,34,2,NULL),(230,25,42,2,NULL),(231,25,67,2,NULL),(232,26,4,2,NULL),(233,26,9,2,NULL),(234,26,27,2,NULL),(235,26,35,2,NULL),(236,26,44,2,NULL),(237,26,68,2,NULL),(238,90,10,2,NULL),(239,91,10,2,NULL),(240,92,10,2,NULL),(241,96,10,2,NULL),(242,97,10,2,NULL),(243,90,46,2,NULL),(244,91,46,2,NULL),(245,92,46,2,NULL),(246,96,46,2,NULL),(247,97,46,2,NULL),(248,90,29,2,NULL),(249,91,29,2,NULL),(250,92,29,2,NULL),(251,96,29,2,NULL),(252,97,29,2,NULL),(253,51,3,2,NULL),(254,51,8,2,NULL),(255,51,25,2,NULL),(256,51,34,2,NULL),(257,51,42,2,NULL),(258,51,67,2,NULL),(259,53,3,2,NULL),(260,53,8,2,NULL),(261,53,25,2,NULL),(262,53,34,2,NULL),(263,53,42,2,NULL),(264,53,67,2,NULL),(265,57,3,2,NULL),(266,57,8,2,NULL),(267,57,25,2,NULL),(268,57,34,2,NULL),(269,57,42,2,NULL),(270,57,67,2,NULL),(271,59,3,2,NULL),(272,59,8,2,NULL),(273,59,25,2,NULL),(274,59,34,2,NULL),(275,59,42,2,NULL),(276,59,67,2,NULL),(277,49,4,2,NULL),(278,49,9,2,NULL),(279,49,27,2,NULL),(280,49,35,2,NULL),(281,49,44,2,NULL),(282,49,68,2,NULL),(283,90,36,2,NULL),(284,91,36,2,NULL),(285,92,36,2,NULL),(286,96,36,2,NULL),(287,97,36,2,NULL),(288,90,37,2,NULL),(289,91,37,2,NULL),(290,92,37,2,NULL),(291,96,37,2,NULL),(292,97,37,2,NULL),(293,90,1,2,NULL),(294,91,1,2,NULL),(295,92,1,2,NULL),(296,96,1,2,NULL),(297,97,1,2,NULL),(298,90,5,2,NULL),(299,91,5,2,NULL),(300,92,5,2,NULL),(301,96,5,2,NULL),(302,97,5,2,NULL),(303,90,45,2,NULL),(304,91,45,2,NULL),(305,92,45,2,NULL),(306,96,45,2,NULL),(307,97,45,2,NULL),(308,86,3,2,NULL),(309,86,8,2,NULL),(310,86,25,2,NULL),(311,86,34,2,NULL),(312,86,42,2,NULL),(313,86,67,2,NULL),(314,87,3,2,NULL),(315,87,8,2,NULL),(316,87,25,2,NULL),(317,87,34,2,NULL),(318,87,42,2,NULL),(319,87,67,2,NULL),(320,88,3,2,NULL),(321,88,8,2,NULL),(322,88,25,2,NULL),(323,88,34,2,NULL),(324,88,42,2,NULL),(325,88,67,2,NULL),(326,89,3,2,NULL),(327,89,8,2,NULL),(328,89,25,2,NULL),(329,89,34,2,NULL),(330,89,42,2,NULL),(331,89,67,2,NULL),(332,72,4,2,NULL),(333,72,9,2,NULL),(334,72,27,2,NULL),(335,72,35,2,NULL),(336,72,44,2,NULL),(337,72,68,2,NULL),(338,3,3,2,NULL),(339,3,8,2,NULL),(340,3,25,2,NULL),(341,3,34,2,NULL),(342,3,42,2,NULL),(343,3,67,2,NULL),(344,4,3,2,NULL),(345,4,8,2,NULL),(346,4,25,2,NULL),(347,4,34,2,NULL),(348,4,42,2,NULL),(349,4,67,2,NULL),(350,12,3,2,NULL),(351,12,8,2,NULL),(352,12,25,2,NULL),(353,12,34,2,NULL),(354,12,42,2,NULL),(355,12,67,2,NULL),(356,14,3,2,NULL),(357,14,8,2,NULL),(358,14,25,2,NULL),(359,14,34,2,NULL),(360,14,42,2,NULL),(361,14,67,2,NULL),(362,2,4,2,NULL),(363,2,9,2,NULL),(364,2,27,2,NULL),(365,2,35,2,NULL),(366,2,44,2,NULL),(367,2,68,2,NULL);
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
INSERT INTO `PermissionStrings` VALUES (10,'android.permission.ACCESS_COARSE_LOCATION'),(12,'android.permission.ACCESS_FINE_LOCATION'),(16,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(11,'android.permission.ACCESS_NETWORK_STATE'),(9,'android.permission.ACCESS_WIFI_STATE'),(20,'android.permission.BIND_WALLPAPER'),(7,'android.permission.CHANGE_WIFI_STATE'),(14,'android.permission.GET_TASKS'),(2,'android.permission.INSTALL_PACKAGES'),(5,'android.permission.INTERNET'),(15,'android.permission.READ_EXTERNAL_STORAGE'),(13,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(3,'android.permission.READ_SMS'),(4,'android.permission.RECEIVE_BOOT_COMPLETED'),(19,'android.permission.RECORD_AUDIO'),(17,'android.permission.VIBRATE'),(18,'android.permission.WAKE_LOCK'),(6,'android.permission.WRITE_EXTERNAL_STORAGE'),(8,'android.permission.WRITE_SMS'),(21,'com.android.launcher.permission.INSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(2,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(4,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(6,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(7,NULL,NULL,'',NULL,NULL,NULL),(8,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(9,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(10,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(11,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(12,NULL,NULL,'file://',NULL,NULL,NULL),(13,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(15,NULL,NULL,'',NULL,NULL,NULL),(16,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(17,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(19,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(20,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(21,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(22,NULL,NULL,'file://',NULL,NULL,NULL),(23,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(24,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(25,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'(.*)',NULL,NULL,NULL),(28,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,8,1),(2,42,4),(3,45,6),(4,50,14),(5,52,16),(6,76,25);
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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,2,1),(13,2,4),(14,2,5),(15,2,6),(16,2,7),(17,2,9),(18,2,11),(19,3,1),(20,3,2),(21,3,5),(22,3,6),(23,3,7),(24,3,9),(25,3,11),(26,3,12),(27,3,13),(28,4,1),(29,4,4),(30,4,5),(31,4,6),(32,4,7),(33,4,9),(34,4,10),(35,4,11),(36,4,12),(37,4,14),(38,5,17),(39,5,16),(40,5,1),(41,5,19),(42,5,18),(43,5,4),(44,5,5),(45,5,6),(46,5,7),(47,5,9),(48,5,10),(49,5,11),(50,5,12),(51,5,15),(52,6,1),(53,6,4),(54,6,5),(55,6,6),(56,6,7),(57,6,9),(58,6,10),(59,6,11),(60,6,12),(61,6,14),(62,6,15),(63,6,17),(64,6,16),(65,6,19),(66,6,18),(67,6,21),(68,7,1),(69,7,2),(70,7,3),(71,7,5),(72,7,6),(73,7,7),(74,7,8),(75,7,9),(76,7,10),(77,7,11),(78,7,12),(79,7,15),(80,7,16);
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

-- Dump completed on 2015-10-12  3:29:34
