-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_163
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
INSERT INTO `ActionStrings` VALUES (11,'(.*)'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(1,'android.intent.action.MAIN'),(8,'android.intent.action.PACKAGE_ADDED'),(2,'android.intent.action.SIG_STR'),(7,'android.intent.action.VIEW'),(10,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(6,'android.service.wallpaper.WallpaperService'),(5,'com.adwo.android.snake.MUSIC'),(9,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS');
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
INSERT INTO `Applications` VALUES (1,'com.ps.kickmouse',21),(2,'com.adwo.android.snake',10),(3,'com.glu.android.dinercn',9),(4,'com.livegame.wallpaperribennvyou',2),(5,'com.gp.mahjongg',3),(6,'com.ps.pushbox',7),(7,'com.alan.translate',14);
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
INSERT INTO `CategoryStrings` VALUES (4,'android.intent.category.BROWSABLE'),(3,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(2,'android.intent.category.default');
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
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.ps.kickmouse.WhacAMouse'),(2,1,'com.ps.kickmouse.Game'),(3,1,'com.adwo.adsdk.AdwoAdBrowserActivity'),(4,1,'com.google.update.Dialog'),(5,1,'com.waps.OffersWebView'),(6,1,'com.ps.kickmouse.DemoApp'),(7,1,'com.google.update.UpdateService'),(8,1,'com.google.update.Receiver'),(9,2,'com.adwo.android.snake.Snake'),(10,2,'com.adwo.android.snake.begin'),(11,2,'com.adwo.android.snake.editname'),(12,2,'com.adwo.android.snake.queryActivity'),(13,2,'com.adwo.android.snake.orderActivity'),(14,2,'com.adwo.android.snake.Music'),(15,2,'com.google.ads.AdActivity'),(16,2,'com.vpon.adon.android.WebInApp'),(17,2,'com.adwo.adsdk.AdwoSplashAdActivity'),(18,2,'com.adwo.adsdk.AdwoAdBrowserActivity'),(19,2,'com.waps.OffersWebView'),(20,2,'com.google.update.Dialog'),(21,2,'com.adwo.android.snake.MusicServer'),(22,3,'com.glu.android.dinercn.DinerDash2'),(23,2,'com.google.update.UpdateService'),(24,2,'com.google.update.Receiver'),(25,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(26,4,'com.livegame.wallpaperribennvyou.MainActivity'),(27,3,'com.glu.android.dinercn.ShowTips'),(28,3,'com.glu.android.dinercn.UpdateService'),(29,3,'com.glu.android.dinercn.Receiver'),(30,4,'com.livegame.wallpaperribennvyou.SettingsActivity'),(31,4,'com.livegame.wallpaperribennvyou.SelectFolderActivity'),(32,4,'com.google.ads.AdActivity'),(33,4,'com.vpon.adon.android.WebInApp'),(34,4,'com.adwo.adsdk.AdwoSplashAdActivity'),(35,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(36,4,'com.waps.OffersWebView'),(37,4,'com.google.update.Dialog'),(38,4,'com.livegame.wallpaperribennvyou.WallpaperSlideshow'),(39,5,'com.gp.mahjongg.SelectActivity'),(40,4,'com.google.update.UpdateService'),(41,5,'com.gp.mahjongg.PlayActivity'),(42,4,'com.google.update.Receiver'),(43,5,'com.gp.background.BackgroundActivity'),(44,5,'com.gp.mahjongg.SettingsActivity'),(45,5,'com.gp.mahjongg.BuilderActivity'),(46,5,'cn.domob.android.ads.DomobActivity'),(47,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(48,5,'com.adwo.adsdk.AdwoSplashAdActivity'),(49,5,'com.vpon.adon.android.WebInApp'),(50,5,'com.google.update.Dialog'),(51,5,'com.google.update.UpdateService'),(52,5,'com.google.update.Receiver'),(53,1,'com.google.update.Dialog$1'),(54,1,'com.waps.y'),(55,1,'com.waps.aa'),(56,1,'com.waps.s'),(57,1,'com.waps.AppConnect'),(58,1,'com.waps.o'),(59,1,'com.waps.q'),(60,1,'com.google.update.UpdateService$AA'),(61,1,'com.ps.kickmouse.WhacAMouse$2'),(62,6,'com.ps.pushbox.Pushbox'),(63,1,'com.google.update.Dialog$2'),(64,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(65,3,'glu.me2android.GameLet'),(66,6,'com.google.update.Dialog'),(67,6,'com.waps.OffersWebView'),(68,6,'com.google.update.UpdateService'),(69,6,'com.google.update.Receiver'),(70,7,'com.alan.translate.TranslateApp'),(71,7,'com.eguan.state.Dialog'),(72,7,'com.google.ads.AdActivity'),(73,7,'com.eguan.state.StateService'),(74,4,'com.google.update.Dialog$1'),(75,7,'com.eguan.state.Receiver'),(76,2,'com.adwo.android.snake.editname$orderListener'),(77,4,'com.waps.q'),(78,1,'com.waps.x'),(79,2,'com.waps.aa'),(80,2,'com.waps.z'),(81,2,'com.adwo.android.snake.begin$beginButtonListener'),(82,4,'com.livegame.wallpaperribennvyou.MainActivity$2'),(83,2,'com.waps.ac'),(84,4,'com.waps.AppConnect'),(85,2,'com.adwo.android.snake.orderActivity$orderbackListener'),(86,3,'com.glu.android.dinercn.ShowTips$1'),(87,2,'com.waps.AppConnect'),(88,4,'com.google.update.Dialog$2'),(89,4,'com.waps.o'),(90,2,'com.waps.o'),(91,4,'com.livegame.wallpaperribennvyou.MainActivity$1'),(92,4,'com.waps.aa'),(93,2,'com.google.update.Dialog$2'),(94,2,'com.adwo.android.snake.editname$saveButtonListener'),(95,2,'com.adwo.android.snake.queryActivity$backListener'),(96,4,'com.waps.ac'),(97,2,'com.waps.q'),(98,4,'com.google.update.UpdateService$AA'),(99,2,'com.adwo.android.snake.editname$queryListener'),(100,2,'com.google.update.Dialog$1'),(101,4,'com.waps.z'),(102,7,'com.eguan.state.Dialog$1'),(103,7,'com.eguan.state.StateService$MyThread'),(104,2,'com.google.update.UpdateService$AA'),(105,2,'com.adwo.android.snake.begin$soundButtonListener'),(106,6,'com.waps.z'),(107,6,'com.waps.ac'),(108,6,'com.waps.aa'),(109,6,'com.waps.q'),(110,6,'com.google.update.Dialog$2'),(111,6,'com.waps.o'),(112,6,'com.google.update.UpdateService$AA'),(113,6,'com.google.update.Dialog$1'),(114,5,'com.google.update.Dialog$1'),(115,5,'cn.domob.android.ads.o$5'),(116,5,'cn.domob.android.ads.o'),(117,5,'cn.domob.android.ads.e'),(118,5,'cn.domob.android.ads.DomobAdManager'),(119,5,'cn.domob.android.ads.g$1'),(120,5,'cn.domob.android.a.a$a'),(121,5,'com.google.update.Dialog$2'),(122,5,'com.google.update.UpdateService$AA');
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
) ENGINE=InnoDB AUTO_INCREMENT=254 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,5,'USER_ID'),(2,7,'ST_START_DELAY'),(3,5,'CLIENT_PACKAGE'),(4,3,'shouldResizeOverlay'),(5,2,'MouseGame'),(6,3,'url'),(7,5,'Offers_URL'),(8,5,'UrlPath'),(9,5,'isFinshClose'),(10,4,'MSG'),(11,1,'APP_ID'),(12,5,'APP_ID'),(13,7,'APP_ID'),(14,2,'APP_ID'),(15,3,'APP_ID'),(16,6,'APP_ID'),(17,7,'CLIENT_PACKAGE'),(18,3,'CLIENT_PACKAGE'),(19,6,'CLIENT_PACKAGE'),(20,3,'overlayTitle'),(21,3,'shouldShowBottomBar'),(22,7,'ST_MY_PID'),(23,5,'URL_PARAMS'),(24,4,'TYPEdsada'),(25,2,'Progrees'),(26,2,'restart'),(27,22,'0'),(28,5,'URL'),(29,5,'Notify_Url_Params'),(30,3,'transitionTime'),(31,5,'offers_webview_tag'),(32,1,'CLIENT_PACKAGE'),(33,2,'CLIENT_PACKAGE'),(34,3,'shouldShowTitlebar'),(35,1,'DEVICE_ID'),(36,36,'Notify_Id'),(37,5,'DEVICE_ID'),(38,7,'DEVICE_ID'),(39,2,'DEVICE_ID'),(40,3,'DEVICE_ID'),(41,6,'DEVICE_ID'),(42,10,'WAPS_PID'),(43,19,'WAPS_PID'),(44,1,'WAPS_ID'),(45,5,'WAPS_ID'),(46,7,'WAPS_ID'),(47,2,'WAPS_ID'),(48,3,'WAPS_ID'),(49,19,'Notify_Id'),(50,6,'WAPS_ID'),(51,10,'WAPS_ID'),(52,19,'WAPS_ID'),(53,5,'SHWO_FLAG'),(54,9,'snake-view'),(55,1,'WAPS_PID'),(56,5,'WAPS_PID'),(57,18,'shouldResizeOverlay'),(58,7,'WAPS_PID'),(59,18,'url'),(60,2,'WAPS_PID'),(61,19,'URL_PARAMS'),(62,3,'WAPS_PID'),(63,16,'adWidth'),(64,19,'isFinshClose'),(65,6,'WAPS_PID'),(66,18,'shouldMakeOverlayTransparent'),(67,3,'shouldEnableBottomBar'),(68,3,'shouldMakeOverlayTransparent'),(69,18,'transitionTime'),(70,17,'Adwo_PID'),(71,5,'ACTIVITY_FLAG'),(72,5,'Notify_Id'),(73,23,'ST_START_DELAY'),(74,3,'overlayTransition'),(75,19,'Offers_URL'),(76,35,'overlayTransition'),(77,9,'usernamezl'),(78,19,'UrlPath'),(79,34,'isTestMode'),(80,36,'Offers_URL'),(81,36,'URL'),(82,36,'isFinshClose'),(83,2,'HP'),(84,20,'MSG'),(85,36,'APP_ID'),(86,26,'APP_ID'),(87,30,'folder'),(88,36,'WAPS_ID'),(89,26,'WAPS_ID'),(90,40,'ST_START_DELAY'),(91,36,'Notify_Url_Params'),(92,36,'CLIENT_PACKAGE'),(93,26,'CLIENT_PACKAGE'),(94,19,'offers_webview_tag'),(95,36,'UrlPath'),(96,35,'shouldShowBottomBar'),(97,36,'WAPS_PID'),(98,26,'WAPS_PID'),(99,36,'DEVICE_ID'),(100,26,'DEVICE_ID'),(101,28,'SAFE_START'),(102,36,'URL_PARAMS'),(103,25,'url'),(104,35,'url'),(105,22,'android_carrierdeviceid'),(106,28,'SAFE_PID'),(107,25,'shouldShowBottomBar'),(108,22,'android_mrc'),(109,22,'android_mrcURL'),(110,25,'overlayTitle'),(111,19,'CLIENT_PACKAGE'),(112,25,'transitionTime'),(113,22,'android_demo'),(114,35,'transitionTime'),(115,25,'shouldMakeOverlayTransparent'),(116,27,'MM'),(117,25,'shouldResizeOverlay'),(118,22,'android_paURL'),(119,22,'android_demoURL'),(120,25,'overlayTransition'),(121,25,'shouldEnableBottomBar'),(122,25,'shouldShowTitlebar'),(123,37,'TYPEdsada'),(124,34,'Adwo_PID'),(125,20,'TYPEdsada'),(126,16,'url'),(127,33,'url'),(128,10,'APP_ID'),(129,35,'shouldEnableBottomBar'),(130,19,'APP_ID'),(131,35,'overlayTitle'),(132,17,'isTestMode'),(133,33,'adWidth'),(134,18,'overlayTitle'),(135,18,'shouldEnableBottomBar'),(136,19,'USER_ID'),(137,19,'Notify_Url_Params'),(138,10,'CLIENT_PACKAGE'),(139,19,'URL'),(140,18,'shouldShowTitlebar'),(141,36,'USER_ID'),(142,36,'ACTIVITY_FLAG'),(143,35,'shouldResizeOverlay'),(144,35,'shouldMakeOverlayTransparent'),(145,62,'com.google.ads.AdOpener'),(146,61,'MSG'),(147,23,'ST_MY_PID'),(148,36,'SHWO_FLAG'),(149,19,'ACTIVITY_FLAG'),(150,19,'SHWO_FLAG'),(151,18,'shouldShowBottomBar'),(152,10,'DEVICE_ID'),(153,62,'params'),(154,19,'DEVICE_ID'),(155,62,'action'),(156,18,'overlayTransition'),(157,35,'shouldShowTitlebar'),(158,37,'MSG'),(159,36,'offers_webview_tag'),(160,40,'ST_MY_PID'),(161,61,'TYPEdsada'),(162,55,'overlayTitle'),(163,57,'URL'),(164,57,'DEVICE_ID'),(165,54,'DEVICE_ID'),(166,57,'Notify_Url_Params'),(167,55,'shouldResizeOverlay'),(168,57,'UrlPath'),(169,58,'ST_START_DELAY'),(170,57,'WAPS_PID'),(171,54,'WAPS_PID'),(172,55,'shouldMakeOverlayTransparent'),(173,57,'URL_PARAMS'),(174,57,'Notify_Id'),(175,58,'ST_MY_PID'),(176,57,'WAPS_ID'),(177,54,'WAPS_ID'),(178,57,'SHWO_FLAG'),(179,55,'overlayTransition'),(180,57,'Offers_URL'),(181,57,'CLIENT_PACKAGE'),(182,54,'CLIENT_PACKAGE'),(183,57,'USER_ID'),(184,55,'shouldEnableBottomBar'),(185,57,'offers_webview_tag'),(186,55,'transitionTime'),(187,57,'APP_ID'),(188,54,'APP_ID'),(189,55,'shouldShowBottomBar'),(190,56,'MSG'),(191,56,'TYPEdsada'),(192,57,'isFinshClose'),(193,55,'shouldShowTitlebar'),(194,57,'ACTIVITY_FLAG'),(195,55,'url'),(196,45,'LEFT_FREE_KEY'),(197,45,'LAYOUT_KEY_KEY'),(198,39,'CURRENT_PAGE'),(199,46,'actType'),(200,41,'MARKED'),(201,45,'SCALE_KEY'),(202,47,'shouldResizeOverlay'),(203,47,'transitionTime'),(204,45,'TOP_FREE_KEY'),(205,48,'transitionTime'),(206,45,'CURRENT_LAYER_KEY'),(207,48,'shouldResizeOverlay'),(208,51,'ST_START_DELAY'),(209,39,'DOMOB_TEST_MODE'),(210,43,'DOMOB_TEST_MODE'),(211,48,'DOMOB_TEST_MODE'),(212,51,'DOMOB_TEST_MODE'),(213,41,'DOMOB_TEST_MODE'),(214,47,'DOMOB_TEST_MODE'),(215,48,'shouldShowBottomBar'),(216,45,'UNDO_KEY'),(217,47,'shouldShowTitlebar'),(218,48,'shouldMakeOverlayTransparent'),(219,47,'shouldShowBottomBar'),(220,49,'adWidth'),(221,49,'url'),(222,39,'DOMOB_ALLOW_LOCATION'),(223,43,'DOMOB_ALLOW_LOCATION'),(224,48,'DOMOB_ALLOW_LOCATION'),(225,51,'DOMOB_ALLOW_LOCATION'),(226,41,'DOMOB_ALLOW_LOCATION'),(227,47,'DOMOB_ALLOW_LOCATION'),(228,45,'SCROLL_X_KEY'),(229,47,'overlayTitle'),(230,51,'ST_MY_PID'),(231,50,'TYPEdsada'),(232,47,'shouldMakeOverlayTransparent'),(233,45,'START_DIES_KEY'),(234,47,'url'),(235,46,'appId'),(236,50,'MSG'),(237,39,'DOMOB_PID'),(238,43,'DOMOB_PID'),(239,48,'DOMOB_PID'),(240,51,'DOMOB_PID'),(241,41,'DOMOB_PID'),(242,47,'DOMOB_PID'),(243,48,'overlayTransition'),(244,41,'ZOOM'),(245,45,'ACTION_KEY'),(246,47,'shouldEnableBottomBar'),(247,47,'overlayTransition'),(248,48,'FSAd'),(249,48,'shouldShowTitlebar'),(250,45,'SCROLL_Y_KEY'),(251,46,'appName'),(252,48,'overlayTitle'),(253,48,'shouldEnableBottomBar');
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'s',0,NULL,NULL),(8,8,'r',1,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'s',1,NULL,NULL),(22,22,'a',1,NULL,NULL),(23,23,'s',0,NULL,NULL),(24,24,'r',1,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',1,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'s',0,NULL,NULL),(29,29,'r',1,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'s',1,18,NULL),(39,39,'a',1,NULL,NULL),(40,40,'s',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'r',1,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'s',0,NULL,NULL),(52,52,'r',1,NULL,NULL),(53,59,'r',1,NULL,NULL),(54,62,'a',1,NULL,NULL),(55,64,'a',0,NULL,NULL),(56,66,'a',0,NULL,NULL),(57,67,'a',0,NULL,NULL),(58,68,'s',0,NULL,NULL),(59,69,'r',1,NULL,NULL),(60,70,'a',1,NULL,NULL),(61,71,'a',0,NULL,NULL),(62,72,'a',0,NULL,NULL),(63,73,'s',0,NULL,NULL),(64,75,'r',1,NULL,NULL),(65,77,'r',1,NULL,NULL),(66,97,'r',1,NULL,NULL),(67,109,'r',1,NULL,NULL),(68,117,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,4),(2,2,5),(3,3,5),(4,4,5),(5,5,3),(6,5,6),(7,5,7),(8,6,6),(9,7,8),(10,8,5),(11,9,5),(12,10,6),(13,11,1),(14,12,7),(15,13,7),(16,14,1),(17,15,7),(18,16,4),(19,17,22),(20,18,5),(21,19,22),(22,20,37),(23,21,10),(24,22,1),(25,23,11),(26,24,40),(27,25,36),(28,26,5),(29,27,19),(30,28,1),(31,29,40),(32,30,6),(33,30,7),(34,30,3),(35,31,19),(36,32,24),(37,33,10),(38,34,26),(39,35,19),(40,36,26),(41,37,29),(42,38,13),(43,39,27),(44,40,10),(45,41,37),(46,42,36),(47,43,19),(48,44,26),(49,45,19),(50,46,36),(51,47,20),(52,48,11),(53,49,12),(54,50,31),(55,50,36),(56,51,40),(57,52,11),(58,53,20),(59,54,42),(60,55,62),(61,56,36),(62,57,23),(63,58,36),(64,59,23),(65,60,61),(66,61,63),(67,62,23),(68,63,64),(69,64,63),(70,65,10),(71,66,19),(72,67,63),(73,68,57),(74,69,57),(75,70,58),(76,71,57),(77,72,57),(78,73,57),(79,74,56),(80,75,57),(81,76,58),(82,77,59),(83,78,56),(84,79,58),(85,80,50),(86,80,41),(87,81,51),(88,82,39),(89,82,51),(90,82,47),(91,82,48),(92,82,41),(93,83,39),(94,83,41),(95,83,47),(96,83,48),(97,83,43),(98,83,51),(99,83,45),(100,84,52),(101,85,39),(102,86,48),(103,86,47),(104,86,51),(105,86,39),(106,86,41),(107,86,43),(108,87,48),(109,87,47),(110,87,51),(111,87,41),(112,87,39),(113,88,51),(114,89,39),(115,90,39),(116,91,48),(117,91,47),(118,91,51),(119,91,41),(120,91,39),(121,92,41),(122,92,50),(123,93,39),(124,94,51);
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
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,53,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(2,5,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',41,'a',NULL),(3,54,'<com.waps.y: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(4,55,'<com.waps.aa: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(5,56,'<com.waps.s: void onClick(android.view.View)>',35,'a',NULL),(6,57,'<com.waps.AppConnect: void showMore(android.content.Context,java.lang.String)>',13,'a',NULL),(7,8,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(8,5,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',356,'a',NULL),(9,58,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(10,57,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(11,1,'<com.ps.kickmouse.WhacAMouse: void restartGame()>',4,'a',NULL),(12,7,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(13,60,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(14,61,'<com.ps.kickmouse.WhacAMouse$2: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(15,7,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(16,63,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(17,65,'<glu.me2android.GameLet: void onCreate(android.os.Bundle)>',60,'s',NULL),(18,5,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(19,65,'<glu.me2android.GameLet: boolean platformRequest(java.lang.String)>',5,'a',NULL),(20,74,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(21,10,'<com.adwo.android.snake.begin: void onCreate(android.os.Bundle)>',5,'s',NULL),(22,1,'<com.ps.kickmouse.WhacAMouse: void onClick(android.view.View)>',13,'a',NULL),(23,76,'<com.adwo.android.snake.editname$orderListener: void onClick(android.view.View)>',7,'a',NULL),(24,40,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(25,36,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(26,78,'<com.waps.x: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(27,79,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(28,1,'<com.ps.kickmouse.WhacAMouse: void startGame()>',4,'a',NULL),(29,40,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(30,56,'<com.waps.s: void onClick(android.view.View)>',98,'a',NULL),(31,80,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(32,24,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(33,81,'<com.adwo.android.snake.begin$beginButtonListener: void onClick(android.view.View)>',36,'a',NULL),(34,82,'<com.livegame.wallpaperribennvyou.MainActivity$2: void onClick(android.view.View)>',35,'a',NULL),(35,83,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(36,84,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(37,29,'<com.glu.android.dinercn.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(38,85,'<com.adwo.android.snake.orderActivity$orderbackListener: void onClick(android.view.View)>',7,'a',NULL),(39,86,'<com.glu.android.dinercn.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(40,87,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(41,88,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(42,89,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(43,90,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(44,91,'<com.livegame.wallpaperribennvyou.MainActivity$1: void onClick(android.view.View)>',37,'a',NULL),(45,19,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(46,92,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(47,93,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(48,94,'<com.adwo.android.snake.editname$saveButtonListener: void onClick(android.view.View)>',27,'a',NULL),(49,95,'<com.adwo.android.snake.queryActivity$backListener: void onClick(android.view.View)>',7,'a',NULL),(50,96,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(51,98,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(52,99,'<com.adwo.android.snake.editname$queryListener: void onClick(android.view.View)>',7,'a',NULL),(53,100,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(54,42,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(55,72,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(56,101,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(57,23,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(58,36,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(59,23,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(60,102,'<com.eguan.state.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(61,103,'<com.eguan.state.StateService$MyThread: void run()>',39,'a',NULL),(62,104,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(63,75,'<com.eguan.state.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(64,73,'<com.eguan.state.StateService: void getPermission2()>',78,'a',NULL),(65,105,'<com.adwo.android.snake.begin$soundButtonListener: void onClick(android.view.View)>',23,'s',0),(66,19,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(67,73,'<com.eguan.state.StateService: int setUsbEnabled()>',34,'a',NULL),(68,106,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(69,107,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(70,68,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(71,67,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(72,108,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(73,67,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',328,'a',NULL),(74,110,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(75,111,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(76,112,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(77,69,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(78,113,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(79,68,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(80,114,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(81,51,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(82,115,'<cn.domob.android.ads.o$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(83,116,'<cn.domob.android.ads.o: void v(cn.domob.android.ads.o)>',6,'a',NULL),(84,52,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(85,39,'<com.gp.mahjongg.SelectActivity: void startBuilder(int)>',5,'a',NULL),(86,118,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor m(android.content.Context)>',11,'p',NULL),(87,119,'<cn.domob.android.ads.g$1: void onClick(android.content.DialogInterface,int)>',8,'a',0),(88,51,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(89,39,'<com.gp.mahjongg.SelectActivity: boolean onMenuItemSelected(int,android.view.MenuItem)>',10,'a',NULL),(90,39,'<com.gp.mahjongg.SelectActivity: boolean onMenuItemSelected(int,android.view.MenuItem)>',14,'a',NULL),(91,120,'<cn.domob.android.a.a$a: java.net.Proxy a(android.content.Context)>',72,'p',NULL),(92,121,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(93,39,'<com.gp.mahjongg.SelectActivity: void onItemClick(com.gp.mahjongg.MahjonggData,int)>',11,'a',NULL),(94,122,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL);
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
INSERT INTO `IActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,9,1),(6,10,1),(7,11,1),(8,12,1),(9,16,7),(10,21,1),(11,22,1),(12,23,7),(13,26,9),(14,29,1),(15,30,7),(16,31,1),(17,32,7),(18,33,7),(19,34,7),(20,35,1),(21,36,5),(22,37,7),(23,39,1),(24,40,7),(25,43,7),(26,44,7),(27,46,7),(28,47,7),(29,48,7),(30,50,7),(31,52,7),(32,53,7),(33,57,7),(34,60,7),(35,61,7),(36,63,7),(37,64,7),(38,65,7),(39,67,7),(40,68,7),(41,75,1),(42,77,9),(43,78,1),(44,79,7),(45,80,7),(46,81,10),(47,84,9),(48,89,1),(49,90,1),(50,92,1),(51,94,1),(52,95,11),(53,96,7),(54,98,7),(55,101,11),(56,102,1),(57,103,1),(58,105,9),(59,107,1),(60,108,1),(61,109,1),(62,111,1),(63,115,1),(64,116,1),(65,119,7),(66,124,1),(67,125,1),(68,129,9),(69,130,7),(70,131,1),(71,132,1),(72,134,1),(73,135,1),(74,138,1),(75,139,1),(76,142,7),(77,144,7),(78,145,7),(79,146,7),(80,147,7),(81,148,7),(82,155,9),(83,157,1),(84,158,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,1,1),(2,2,3),(3,3,1),(4,4,3),(5,9,1),(6,10,3),(7,11,1),(8,12,3),(9,21,3),(10,22,1),(11,29,1),(12,31,3),(13,35,1),(14,39,3),(15,75,1),(16,78,3),(17,89,1),(18,90,3),(19,92,1),(20,94,3),(21,95,4),(22,98,4),(23,101,4),(24,102,1),(25,103,3),(26,107,3),(27,108,1),(28,109,3),(29,111,1),(30,115,1),(31,116,3),(32,124,1),(33,125,3),(34,131,1),(35,132,3),(36,134,1),(37,135,3),(38,138,1),(39,139,3),(40,157,3),(41,158,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,5,'com/waps/OffersWebView'),(2,6,'com/waps/OffersWebView'),(3,7,'NULL-CONSTANT'),(4,13,'com/waps/OffersWebView'),(5,14,'com/google/update/UpdateService'),(6,15,'(.*)'),(7,17,'com/waps/OffersWebView'),(8,18,'com/ps/kickmouse/Game'),(9,19,'com/google/update/Dialog'),(10,20,'com/google/update/Dialog'),(11,24,'com/google/update/Dialog'),(12,25,'com/google/update/Dialog'),(13,28,'com/glu/android/dinercn/UpdateService'),(14,38,'com/ps/kickmouse/DemoApp'),(15,41,'com/adwo/android/snake/orderActivity'),(16,42,'com/google/update/Dialog'),(17,45,'com/google/update/Dialog'),(18,49,'(.*)'),(19,51,'com/waps/OffersWebView'),(20,54,'com/ps/kickmouse/Game'),(21,55,'com/google/update/Dialog'),(22,56,'com/waps/OffersWebView'),(23,59,'com/google/update/Dialog'),(24,58,'com/waps/OffersWebView'),(25,62,'com/waps/OffersWebView'),(26,66,'com/google/update/UpdateService'),(27,70,'com/livegame/wallpaperribennvyou/SettingsActivity'),(28,69,'com/adwo/android/snake/Snake'),(29,71,'NULL-CONSTANT'),(30,73,'com/glu/android/dinercn/UpdateService'),(31,74,'com/adwo/android/snake/editname'),(32,72,'com/waps/OffersWebView'),(33,76,'com/waps/OffersWebView'),(34,82,'(.*)'),(35,83,'com/waps/OffersWebView'),(36,85,'com/adwo/android/snake/Snake'),(37,86,'com/waps/OffersWebView'),(38,87,'com/adwo/android/snake/editname'),(39,88,'NULL-CONSTANT'),(40,91,'com/adwo/android/snake/queryActivity'),(41,93,'com/google/update/UpdateService'),(42,97,'com/google/update/Dialog'),(43,99,'com/google/update/Dialog'),(44,104,'com/google/update/Dialog'),(45,106,'com/google/update/Dialog'),(46,110,'com/eguan/state/StateService'),(47,112,'com/eguan/state/Dialog'),(48,114,'com/eguan/state/Dialog'),(49,117,'com/eguan/state/Dialog'),(50,118,'com/eguan/state/Dialog'),(51,120,'NULL-CONSTANT'),(52,121,'com/google/update/Dialog'),(53,122,'com/google/update/Dialog'),(54,126,'com/waps/OffersWebView'),(55,127,'com/waps/OffersWebView'),(56,128,'(.*)'),(57,133,'com/google/update/UpdateService'),(58,136,'com/google/update/Dialog'),(59,137,'com/google/update/Dialog'),(60,140,'com/google/update/Dialog'),(61,141,'com/google/update/Dialog'),(62,149,'com/google/update/UpdateService'),(63,150,'com/gp/mahjongg/BuilderActivity'),(64,151,'com/google/update/Dialog'),(65,152,'com/google/update/Dialog'),(66,153,'com/gp/background/BackgroundActivity'),(67,154,'com/gp/mahjongg/SettingsActivity'),(68,156,'com/gp/mahjongg/PlayActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,16,1),(2,23,2),(3,30,3),(4,32,4),(5,33,5),(6,34,6),(7,37,7),(8,40,8),(9,43,9),(10,44,10),(11,46,11),(12,47,12),(13,48,13),(14,50,14),(15,52,15),(16,53,16),(17,57,17),(18,60,18),(19,61,19),(20,63,20),(21,64,21),(22,65,22),(23,67,23),(24,68,24),(25,79,25),(26,80,26),(27,95,27),(28,96,28),(29,98,29),(30,101,30),(31,119,31),(32,130,32),(33,142,33),(34,144,34),(35,145,35),(36,146,36),(37,147,37),(38,148,38);
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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,5,'UrlPath'),(2,5,'ACTIVITY_FLAG'),(3,5,'isFinshClose'),(4,5,'offers_webview_tag'),(5,6,'Notify_Url_Params'),(6,6,'UrlPath'),(7,6,'ACTIVITY_FLAG'),(8,6,'isFinshClose'),(9,6,'offers_webview_tag'),(10,13,'USER_ID'),(11,13,'CLIENT_PACKAGE'),(12,13,'Offers_URL'),(13,13,'offers_webview_tag'),(14,13,'URL_PARAMS'),(15,17,'USER_ID'),(16,17,'CLIENT_PACKAGE'),(17,17,'Offers_URL'),(18,17,'offers_webview_tag'),(19,17,'URL_PARAMS'),(20,18,'restart'),(21,19,'TYPEdsada'),(22,20,'MSG'),(23,20,'TYPEdsada'),(24,24,'TYPEdsada'),(25,25,'MSG'),(26,25,'TYPEdsada'),(27,42,'MSG'),(28,42,'TYPEdsada'),(29,45,'TYPEdsada'),(30,51,'UrlPath'),(31,51,'ACTIVITY_FLAG'),(32,51,'isFinshClose'),(33,51,'offers_webview_tag'),(34,55,'MSG'),(35,56,'Notify_Url_Params'),(36,55,'TYPEdsada'),(37,56,'UrlPath'),(38,56,'ACTIVITY_FLAG'),(39,56,'isFinshClose'),(40,58,'CLIENT_PACKAGE'),(41,56,'offers_webview_tag'),(42,59,'TYPEdsada'),(43,58,'URL'),(44,58,'isFinshClose'),(45,58,'offers_webview_tag'),(46,62,'CLIENT_PACKAGE'),(47,62,'URL'),(48,62,'offers_webview_tag'),(49,69,'usernamezl'),(50,72,'USER_ID'),(51,72,'CLIENT_PACKAGE'),(52,72,'Offers_URL'),(53,72,'offers_webview_tag'),(54,72,'URL_PARAMS'),(55,76,'USER_ID'),(56,76,'CLIENT_PACKAGE'),(57,76,'Offers_URL'),(58,76,'offers_webview_tag'),(59,76,'URL_PARAMS'),(60,81,'android.live_wallpaper.package'),(61,81,'android.live_wallpaper.settings'),(62,83,'UrlPath'),(63,83,'ACTIVITY_FLAG'),(64,83,'isFinshClose'),(65,83,'offers_webview_tag'),(66,85,'usernamezl'),(67,86,'Notify_Url_Params'),(68,86,'UrlPath'),(69,86,'ACTIVITY_FLAG'),(70,86,'isFinshClose'),(71,86,'offers_webview_tag'),(72,97,'TYPEdsada'),(73,99,'MSG'),(74,99,'TYPEdsada'),(75,104,'TYPEdsada'),(76,106,'MSG'),(77,106,'TYPEdsada'),(78,112,'TYPEdsada'),(79,114,'MSG'),(80,114,'TYPEdsada'),(81,117,'TYPEdsada'),(82,118,'MSG'),(83,118,'TYPEdsada'),(84,121,'TYPEdsada'),(85,122,'MSG'),(86,122,'TYPEdsada'),(87,126,'Notify_Url_Params'),(88,126,'UrlPath'),(89,126,'ACTIVITY_FLAG'),(90,126,'isFinshClose'),(91,126,'offers_webview_tag'),(92,127,'UrlPath'),(93,127,'ACTIVITY_FLAG'),(94,127,'isFinshClose'),(95,127,'offers_webview_tag'),(96,136,'TYPEdsada'),(97,137,'MSG'),(98,137,'TYPEdsada'),(99,140,'MSG'),(100,140,'TYPEdsada'),(101,141,'TYPEdsada'),(102,150,'GAME_ID'),(103,151,'MSG'),(104,151,'TYPEdsada'),(105,152,'TYPEdsada'),(106,156,'GAME_ID');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(5,3,1),(6,4,5),(7,5,1),(8,6,4),(9,6,3),(10,6,2),(11,7,1),(12,8,2),(13,8,3),(14,8,4),(15,9,1),(16,10,6),(17,11,4),(18,11,3),(19,11,2),(20,12,4),(21,12,3),(22,12,2),(23,13,8),(24,14,1),(25,15,4),(26,15,2),(27,15,3),(28,16,1),(29,17,4),(30,17,2),(31,17,3),(32,18,8),(33,19,8),(34,20,8),(35,21,8),(36,22,8);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,4,2),(4,5,1),(5,7,1),(6,9,1),(7,14,1),(8,16,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,13,'package',NULL,NULL,NULL,NULL,NULL),(2,18,'package',NULL,NULL,NULL,NULL,NULL),(3,19,'package',NULL,NULL,NULL,NULL,NULL),(4,20,'package',NULL,NULL,NULL,NULL,NULL),(5,21,'package',NULL,NULL,NULL,NULL,NULL),(6,22,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,16,'application','vnd.android.package-archive'),(2,50,'application','vnd.android.package-archive'),(3,63,'application','vnd.android.package-archive'),(4,79,'application','vnd.android.package-archive'),(5,80,'application','vnd.android.package-archive'),(6,96,'application','vnd.android.package-archive'),(7,101,'(.*)','(.*)'),(8,119,'application','vnd.android.package-archive'),(9,130,'application','vnd.android.package-archive'),(10,142,'application','vnd.android.package-archive'),(11,144,'application','vnd.android.package-archive'),(12,145,'application','vnd.android.package-archive'),(13,146,'application','vnd.android.package-archive'),(14,147,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.noshufou.android.su'),(2,2,'com.noshufou.android.su'),(3,3,'(.*)'),(4,4,'(.*)'),(5,5,'com.ps.kickmouse'),(6,6,'com.ps.kickmouse'),(7,7,'NULL-CONSTANT'),(8,9,'(.*)'),(9,10,'(.*)'),(10,11,'NULL-CONSTANT'),(11,12,'NULL-CONSTANT'),(12,13,'com.ps.kickmouse'),(13,14,'com.ps.kickmouse'),(14,15,'(.*)'),(15,17,'com.ps.kickmouse'),(16,18,'com.ps.kickmouse'),(17,19,'com.ps.kickmouse'),(18,20,'com.ps.kickmouse'),(19,21,'com.ps.kickmouse'),(20,22,'com.ps.kickmouse'),(21,24,'com.ps.kickmouse'),(22,25,'com.ps.kickmouse'),(23,28,'com.glu.android.dinercn'),(24,29,'(.*)'),(25,31,'(.*)'),(26,35,'com.noshufou.android.su'),(27,38,'com.ps.kickmouse'),(28,39,'com.noshufou.android.su'),(29,41,'com.adwo.android.snake'),(30,42,'com.livegame.wallpaperribennvyou'),(31,45,'com.livegame.wallpaperribennvyou'),(32,49,'(.*)'),(33,51,'com.adwo.android.snake'),(34,54,'com.ps.kickmouse'),(35,55,'com.livegame.wallpaperribennvyou'),(36,56,'com.adwo.android.snake'),(37,59,'com.livegame.wallpaperribennvyou'),(38,58,'com.ps.kickmouse'),(39,62,'com.ps.kickmouse'),(40,66,'com.adwo.android.snake'),(41,70,'com.livegame.wallpaperribennvyou'),(42,69,'com.adwo.android.snake'),(43,71,'NULL-CONSTANT'),(44,73,'com.glu.android.dinercn'),(45,74,'com.adwo.android.snake'),(46,72,'com.livegame.wallpaperribennvyou'),(47,75,'com.noshufou.android.su'),(48,78,'com.noshufou.android.su'),(49,76,'com.adwo.android.snake'),(50,82,'(.*)'),(51,83,'com.livegame.wallpaperribennvyou'),(52,85,'com.adwo.android.snake'),(53,86,'com.livegame.wallpaperribennvyou'),(54,87,'com.adwo.android.snake'),(55,88,'NULL-CONSTANT'),(56,89,'com.livegame.wallpaperribennvyou'),(57,90,'com.livegame.wallpaperribennvyou'),(58,91,'com.adwo.android.snake'),(59,92,'com.noshufou.android.su'),(60,93,'com.livegame.wallpaperribennvyou'),(61,94,'com.noshufou.android.su'),(62,97,'com.adwo.android.snake'),(63,99,'com.adwo.android.snake'),(64,102,'(.*)'),(65,103,'(.*)'),(66,104,'com.adwo.android.snake'),(67,106,'com.adwo.android.snake'),(68,107,'com.alan.translate'),(69,108,'com.alan.translate'),(70,109,'com.adwo.android.snake'),(71,110,'com.alan.translate'),(72,111,'com.adwo.android.snake'),(73,112,'com.alan.translate'),(74,115,'(.*)'),(75,114,'com.alan.translate'),(76,116,'(.*)'),(77,117,'com.alan.translate'),(78,118,'com.alan.translate'),(79,120,'NULL-CONSTANT'),(80,121,'com.ps.pushbox'),(81,122,'com.ps.pushbox'),(82,124,'(.*)'),(83,125,'(.*)'),(84,126,'com.ps.pushbox'),(85,127,'com.ps.pushbox'),(86,128,'(.*)'),(87,131,'com.ps.pushbox'),(88,132,'com.ps.pushbox'),(89,133,'com.ps.pushbox'),(90,134,'com.noshufou.android.su'),(91,135,'com.noshufou.android.su'),(92,136,'com.ps.pushbox'),(93,137,'com.ps.pushbox'),(94,138,'com.noshufou.android.su'),(95,139,'com.noshufou.android.su'),(96,140,'com.gp.mahjongg'),(97,141,'com.gp.mahjongg'),(98,149,'com.gp.mahjongg'),(99,150,'com.gp.mahjongg'),(100,151,'com.gp.mahjongg'),(101,152,'com.gp.mahjongg'),(102,153,'com.gp.mahjongg'),(103,154,'com.gp.mahjongg'),(104,156,'com.gp.mahjongg'),(105,157,'com.gp.mahjongg'),(106,158,'com.gp.mahjongg');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,8,0),(3,10,0),(4,21,0),(5,22,0),(6,24,0),(7,26,0),(8,29,0),(9,39,0),(10,38,0),(11,42,0),(12,52,0),(13,53,0),(14,54,0),(15,59,0),(16,60,0),(17,64,0),(18,65,0),(19,66,0),(20,67,0),(21,68,0),(22,68,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,1,1,0),(3,2,1,0),(4,2,1,0),(5,3,0,0),(6,3,0,0),(7,4,0,0),(8,5,1,0),(9,5,1,0),(10,5,1,0),(11,5,1,0),(12,5,1,0),(13,6,0,0),(14,7,0,0),(15,8,0,0),(16,9,1,0),(17,10,0,0),(18,11,0,0),(19,12,0,0),(20,12,0,0),(21,13,1,0),(22,13,1,0),(23,14,1,0),(24,15,0,0),(25,15,0,0),(26,16,1,0),(27,18,1,0),(28,17,0,0),(29,18,1,0),(30,19,1,0),(31,18,1,0),(32,19,1,0),(33,19,1,0),(34,19,1,0),(35,20,1,0),(36,21,1,0),(37,19,1,0),(38,22,0,0),(39,20,1,0),(40,19,1,0),(41,23,0,0),(42,24,0,0),(43,19,1,0),(44,19,1,0),(45,24,0,0),(46,19,1,0),(47,19,1,0),(48,19,1,0),(49,25,0,0),(50,26,1,0),(51,27,0,0),(52,19,1,0),(53,19,1,0),(54,28,0,0),(55,29,0,0),(56,27,0,0),(57,19,1,0),(58,30,0,0),(59,29,0,0),(60,19,1,0),(61,19,1,0),(62,30,0,0),(63,31,1,0),(64,19,1,0),(65,19,1,0),(66,32,0,0),(67,19,1,0),(68,19,1,0),(69,33,0,0),(70,34,0,0),(71,35,0,0),(72,36,0,0),(73,37,0,0),(74,38,0,0),(75,39,1,0),(76,40,0,0),(77,41,1,0),(78,39,1,0),(79,42,1,0),(80,43,1,0),(81,44,1,0),(82,45,0,0),(83,46,0,0),(84,47,1,0),(85,48,0,0),(86,46,0,0),(87,49,0,0),(88,50,0,0),(89,51,1,0),(90,51,1,0),(91,52,0,0),(92,53,1,0),(93,54,0,0),(94,53,1,0),(95,55,1,0),(96,56,1,0),(97,57,0,0),(98,55,1,0),(99,57,0,0),(100,58,1,0),(101,55,1,0),(102,58,1,0),(103,58,1,0),(104,59,0,0),(105,60,1,0),(106,59,0,0),(107,61,1,0),(108,61,1,0),(109,62,1,0),(110,63,0,0),(111,62,1,0),(112,64,0,0),(113,66,1,0),(114,64,0,0),(115,66,1,0),(116,66,1,0),(117,67,0,0),(118,67,0,0),(119,68,1,0),(120,69,0,0),(121,70,0,0),(122,70,0,0),(123,71,1,0),(124,71,1,0),(125,71,1,0),(126,72,0,0),(127,72,0,0),(128,73,0,0),(129,74,1,0),(130,75,1,0),(131,76,1,0),(132,76,1,0),(133,77,0,0),(134,78,1,0),(135,78,1,0),(136,79,0,0),(137,79,0,0),(138,80,1,0),(139,80,1,0),(140,81,0,0),(141,81,0,0),(142,82,1,0),(143,82,1,0),(144,82,1,0),(145,82,1,0),(146,82,1,0),(147,82,1,0),(148,83,1,0),(149,84,0,0),(150,85,0,0),(151,88,0,0),(152,88,0,0),(153,89,0,0),(154,90,0,0),(155,92,1,0),(156,93,0,0),(157,94,1,0),(158,94,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=410 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,3,26,2,NULL),(2,4,26,2,NULL),(3,27,26,2,NULL),(4,29,26,2,NULL),(5,31,26,2,NULL),(6,36,26,2,NULL),(7,113,26,2,NULL),(8,115,26,2,NULL),(9,116,26,2,NULL),(10,100,26,2,NULL),(11,102,26,2,NULL),(12,103,26,2,NULL),(13,123,26,2,NULL),(14,124,26,2,NULL),(15,125,26,2,NULL),(16,95,26,2,NULL),(17,98,26,2,NULL),(18,100,1,2,NULL),(19,102,1,2,NULL),(20,103,1,2,NULL),(21,100,8,2,NULL),(22,102,8,2,NULL),(23,103,8,2,NULL),(24,100,10,2,NULL),(25,102,10,2,NULL),(26,103,10,2,NULL),(27,100,21,2,NULL),(28,102,21,2,NULL),(29,103,21,2,NULL),(30,100,24,2,NULL),(31,102,24,2,NULL),(32,103,24,2,NULL),(33,100,22,2,NULL),(34,102,22,2,NULL),(35,103,22,2,NULL),(36,100,29,2,NULL),(37,102,29,2,NULL),(38,103,29,2,NULL),(39,100,38,2,NULL),(40,102,38,2,NULL),(41,103,38,2,NULL),(42,100,42,2,NULL),(43,102,42,2,NULL),(44,103,42,2,NULL),(45,100,39,2,NULL),(46,102,39,2,NULL),(47,103,39,2,NULL),(48,100,52,2,NULL),(49,102,52,2,NULL),(50,103,52,2,NULL),(51,100,54,2,NULL),(52,102,54,2,NULL),(53,103,54,2,NULL),(54,100,59,2,NULL),(55,102,59,2,NULL),(56,103,59,2,NULL),(57,100,60,2,NULL),(58,102,60,2,NULL),(59,103,60,2,NULL),(60,100,64,2,NULL),(61,102,64,2,NULL),(62,103,64,2,NULL),(63,3,38,2,NULL),(64,4,38,2,NULL),(65,27,38,2,NULL),(66,29,38,2,NULL),(67,31,38,2,NULL),(68,36,38,2,NULL),(69,113,38,2,NULL),(70,115,38,2,NULL),(71,116,38,2,NULL),(72,123,38,2,NULL),(73,124,38,2,NULL),(74,125,38,2,NULL),(75,95,38,2,NULL),(76,98,38,2,NULL),(77,42,4,2,NULL),(78,42,20,2,NULL),(79,42,37,2,NULL),(80,42,50,2,NULL),(81,42,56,2,NULL),(82,45,4,2,NULL),(83,45,20,2,NULL),(84,45,37,2,NULL),(85,45,50,2,NULL),(86,45,56,2,NULL),(87,55,4,2,NULL),(88,55,20,2,NULL),(89,55,37,2,NULL),(90,55,50,2,NULL),(91,55,56,2,NULL),(92,59,4,2,NULL),(93,59,20,2,NULL),(94,59,37,2,NULL),(95,59,50,2,NULL),(96,59,56,2,NULL),(97,93,7,2,NULL),(98,93,23,2,NULL),(99,93,40,2,NULL),(100,93,51,2,NULL),(101,93,58,2,NULL),(102,3,42,2,NULL),(103,4,42,2,NULL),(104,27,42,2,NULL),(105,29,42,2,NULL),(106,31,42,2,NULL),(107,36,42,2,NULL),(108,113,42,2,NULL),(109,115,42,2,NULL),(110,116,42,2,NULL),(111,123,42,2,NULL),(112,124,42,2,NULL),(113,125,42,2,NULL),(114,95,42,2,NULL),(115,98,42,2,NULL),(116,18,2,2,NULL),(117,38,6,2,NULL),(118,54,2,2,NULL),(119,3,1,2,NULL),(120,4,1,2,NULL),(121,27,1,2,NULL),(122,29,1,2,NULL),(123,31,1,2,NULL),(124,36,1,2,NULL),(125,113,1,2,NULL),(126,115,1,2,NULL),(127,116,1,2,NULL),(128,123,1,2,NULL),(129,124,1,2,NULL),(130,125,1,2,NULL),(131,95,1,2,NULL),(132,98,1,2,NULL),(133,3,8,2,NULL),(134,4,8,2,NULL),(135,27,8,2,NULL),(136,29,8,2,NULL),(137,31,8,2,NULL),(138,3,10,2,NULL),(139,4,10,2,NULL),(140,27,10,2,NULL),(141,29,10,2,NULL),(142,31,10,2,NULL),(143,3,21,2,NULL),(144,4,21,2,NULL),(145,27,21,2,NULL),(146,29,21,2,NULL),(147,31,21,2,NULL),(148,3,24,2,NULL),(149,4,24,2,NULL),(150,27,24,2,NULL),(151,29,24,2,NULL),(152,31,24,2,NULL),(153,3,22,2,NULL),(154,4,22,2,NULL),(155,27,22,2,NULL),(156,29,22,2,NULL),(157,31,22,2,NULL),(158,3,29,2,NULL),(159,4,29,2,NULL),(160,27,29,2,NULL),(161,29,29,2,NULL),(162,31,29,2,NULL),(163,3,39,2,NULL),(164,4,39,2,NULL),(165,27,39,2,NULL),(166,29,39,2,NULL),(167,31,39,2,NULL),(168,3,52,2,NULL),(169,4,52,2,NULL),(170,27,52,2,NULL),(171,29,52,2,NULL),(172,31,52,2,NULL),(173,3,54,2,NULL),(174,4,54,2,NULL),(175,27,54,2,NULL),(176,29,54,2,NULL),(177,31,54,2,NULL),(178,3,59,2,NULL),(179,4,59,2,NULL),(180,27,59,2,NULL),(181,29,59,2,NULL),(182,31,59,2,NULL),(183,3,60,2,NULL),(184,4,60,2,NULL),(185,27,60,2,NULL),(186,29,60,2,NULL),(187,31,60,2,NULL),(188,3,64,2,NULL),(189,4,64,2,NULL),(190,27,64,2,NULL),(191,29,64,2,NULL),(192,31,64,2,NULL),(193,19,4,2,NULL),(194,19,20,2,NULL),(195,19,37,2,NULL),(196,19,50,2,NULL),(197,19,56,2,NULL),(198,20,4,2,NULL),(199,20,20,2,NULL),(200,20,37,2,NULL),(201,20,50,2,NULL),(202,20,56,2,NULL),(203,24,4,2,NULL),(204,24,20,2,NULL),(205,24,37,2,NULL),(206,24,50,2,NULL),(207,24,56,2,NULL),(208,25,4,2,NULL),(209,25,20,2,NULL),(210,25,37,2,NULL),(211,25,50,2,NULL),(212,25,56,2,NULL),(213,14,7,2,NULL),(214,14,23,2,NULL),(215,14,40,2,NULL),(216,14,51,2,NULL),(217,14,58,2,NULL),(218,36,8,2,NULL),(219,113,8,2,NULL),(220,115,8,2,NULL),(221,116,8,2,NULL),(222,123,8,2,NULL),(223,124,8,2,NULL),(224,125,8,2,NULL),(225,95,8,2,NULL),(226,98,8,2,NULL),(227,36,54,2,NULL),(228,113,54,2,NULL),(229,115,54,2,NULL),(230,116,54,2,NULL),(231,123,54,2,NULL),(232,124,54,2,NULL),(233,125,54,2,NULL),(234,95,54,2,NULL),(235,98,54,2,NULL),(236,123,10,2,NULL),(237,124,10,2,NULL),(238,125,10,2,NULL),(239,123,21,2,NULL),(240,124,21,2,NULL),(241,125,21,2,NULL),(242,123,24,2,NULL),(243,124,24,2,NULL),(244,125,24,2,NULL),(245,123,22,2,NULL),(246,124,22,2,NULL),(247,125,22,2,NULL),(248,123,29,2,NULL),(249,124,29,2,NULL),(250,125,29,2,NULL),(251,123,39,2,NULL),(252,124,39,2,NULL),(253,125,39,2,NULL),(254,123,52,2,NULL),(255,124,52,2,NULL),(256,125,52,2,NULL),(257,123,59,2,NULL),(258,124,59,2,NULL),(259,125,59,2,NULL),(260,123,60,2,NULL),(261,124,60,2,NULL),(262,125,60,2,NULL),(263,123,64,2,NULL),(264,124,64,2,NULL),(265,125,64,2,NULL),(266,121,4,2,NULL),(267,121,20,2,NULL),(268,121,37,2,NULL),(269,121,50,2,NULL),(270,121,56,2,NULL),(271,122,4,2,NULL),(272,122,20,2,NULL),(273,122,37,2,NULL),(274,122,50,2,NULL),(275,122,56,2,NULL),(276,136,4,2,NULL),(277,136,20,2,NULL),(278,136,37,2,NULL),(279,136,50,2,NULL),(280,136,56,2,NULL),(281,137,4,2,NULL),(282,137,20,2,NULL),(283,137,37,2,NULL),(284,137,50,2,NULL),(285,137,56,2,NULL),(286,133,7,2,NULL),(287,133,23,2,NULL),(288,133,40,2,NULL),(289,133,51,2,NULL),(290,133,58,2,NULL),(291,36,59,2,NULL),(292,113,59,2,NULL),(293,115,59,2,NULL),(294,116,59,2,NULL),(295,95,59,2,NULL),(296,98,59,2,NULL),(297,36,22,2,NULL),(298,113,22,2,NULL),(299,115,22,2,NULL),(300,116,22,2,NULL),(301,95,22,2,NULL),(302,98,22,2,NULL),(303,73,28,2,NULL),(304,36,29,2,NULL),(305,113,29,2,NULL),(306,115,29,2,NULL),(307,116,29,2,NULL),(308,95,29,2,NULL),(309,98,29,2,NULL),(310,36,60,2,NULL),(311,113,60,2,NULL),(312,115,60,2,NULL),(313,116,60,2,NULL),(314,95,60,2,NULL),(315,98,60,2,NULL),(316,95,10,2,NULL),(317,98,10,2,NULL),(318,95,21,2,NULL),(319,98,21,2,NULL),(320,95,24,2,NULL),(321,98,24,2,NULL),(322,95,39,2,NULL),(323,98,39,2,NULL),(324,95,52,2,NULL),(325,98,52,2,NULL),(326,95,64,2,NULL),(327,98,64,2,NULL),(328,112,61,2,NULL),(329,114,61,2,NULL),(330,117,61,2,NULL),(331,118,61,2,NULL),(332,110,63,2,NULL),(333,36,64,2,NULL),(334,113,64,2,NULL),(335,115,64,2,NULL),(336,116,64,2,NULL),(337,113,10,2,NULL),(338,115,10,2,NULL),(339,116,10,2,NULL),(340,36,21,2,NULL),(341,36,24,2,NULL),(342,36,39,2,NULL),(343,36,52,2,NULL),(344,113,21,2,NULL),(345,115,21,2,NULL),(346,116,21,2,NULL),(347,113,24,2,NULL),(348,115,24,2,NULL),(349,116,24,2,NULL),(350,113,39,2,NULL),(351,115,39,2,NULL),(352,116,39,2,NULL),(353,113,52,2,NULL),(354,115,52,2,NULL),(355,116,52,2,NULL),(356,97,4,2,NULL),(357,97,20,2,NULL),(358,97,37,2,NULL),(359,97,50,2,NULL),(360,97,56,2,NULL),(361,99,4,2,NULL),(362,99,20,2,NULL),(363,99,37,2,NULL),(364,99,50,2,NULL),(365,99,56,2,NULL),(366,104,4,2,NULL),(367,104,20,2,NULL),(368,104,37,2,NULL),(369,104,50,2,NULL),(370,104,56,2,NULL),(371,106,4,2,NULL),(372,106,20,2,NULL),(373,106,37,2,NULL),(374,106,50,2,NULL),(375,106,56,2,NULL),(376,66,7,2,NULL),(377,66,23,2,NULL),(378,66,40,2,NULL),(379,66,51,2,NULL),(380,66,58,2,NULL),(381,150,45,2,NULL),(382,153,43,2,NULL),(383,154,44,2,NULL),(384,156,41,2,NULL),(385,140,4,2,NULL),(386,140,20,2,NULL),(387,140,37,2,NULL),(388,140,50,2,NULL),(389,140,56,2,NULL),(390,141,4,2,NULL),(391,141,20,2,NULL),(392,141,37,2,NULL),(393,141,50,2,NULL),(394,141,56,2,NULL),(395,151,4,2,NULL),(396,151,20,2,NULL),(397,151,37,2,NULL),(398,151,50,2,NULL),(399,151,56,2,NULL),(400,152,4,2,NULL),(401,152,20,2,NULL),(402,152,37,2,NULL),(403,152,50,2,NULL),(404,152,56,2,NULL),(405,149,7,2,NULL),(406,149,23,2,NULL),(407,149,40,2,NULL),(408,149,51,2,NULL),(409,149,58,2,NULL);
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
INSERT INTO `PermissionStrings` VALUES (11,'android.permission.ACCESS_COARSE_LOCATION'),(12,'android.permission.ACCESS_FINE_LOCATION'),(13,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(9,'android.permission.ACCESS_NETWORK_STATE'),(8,'android.permission.ACCESS_WIFI_STATE'),(18,'android.permission.BIND_WALLPAPER'),(7,'android.permission.CHANGE_WIFI_STATE'),(4,'android.permission.GET_TASKS'),(5,'android.permission.INTERNET'),(10,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(14,'android.permission.READ_SMS'),(3,'android.permission.RECEIVE_BOOT_COMPLETED'),(17,'android.permission.SET_ORIENTATION'),(16,'android.permission.VIBRATE'),(6,'android.permission.WRITE_EXTERNAL_STORAGE'),(15,'android.permission.WRITE_SMS'),(2,'com.android.launcher.permission.INSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'(.*)type=non_mrc&gid=(.*)&placeHolder=null',NULL,NULL,NULL),(5,NULL,NULL,'(.*)type=non_mrc&gid=(.*)&phNo=',NULL,NULL,NULL),(6,NULL,NULL,'http://mrc-stage.glu.com/mrc/fe?type=mrc&gid=(.*)&placeHolder=null',NULL,NULL,NULL),(7,NULL,NULL,'http://mrc-stage.glu.com/mrc/fe?type=non_mrc&gid=(.*)&placeHolder=null',NULL,NULL,NULL),(8,NULL,NULL,'http://mrc-stage.glu.com/mrc/fe?type=non_mrc&gid=(.*)&phNo=',NULL,NULL,NULL),(9,NULL,NULL,'http://www.ss3.glu.com',NULL,NULL,NULL),(10,NULL,NULL,'http://mrc-stage.glu.com/mrc/fe?type=mrc&gid=(.*)&phNo=',NULL,NULL,NULL),(11,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(12,NULL,NULL,'http://mrc-stage.glu.com/mrc/fe?type=non_mrc&gid=(.*)&phNo=&placeHolder=null',NULL,NULL,NULL),(13,NULL,NULL,'http://mrc-stage.glu.com/mrc/fe?type=non_mrc&gid=(.*)',NULL,NULL,NULL),(14,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(15,NULL,NULL,'(.*)type=mrc&gid=(.*)&phNo=',NULL,NULL,NULL),(16,NULL,NULL,'(.*)type=mrc&gid=(.*)&placeHolder=null',NULL,NULL,NULL),(17,NULL,NULL,'http://gcs.glu.com/gcs/android/index.jsp?src=diner2',NULL,NULL,NULL),(18,NULL,NULL,'(.*)type=non_mrc&gid=(.*)',NULL,NULL,NULL),(19,NULL,NULL,'(.*)type=mrc&gid=(.*)&phNo=&placeHolder=null',NULL,NULL,NULL),(20,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(21,NULL,NULL,'http://mrc-stage.glu.com/mrc/fe?type=mrc&gid=(.*)&phNo=&placeHolder=null',NULL,NULL,NULL),(22,NULL,NULL,'http://mrc-stage.glu.com/mrc/fe?type=mrc&gid=(.*)',NULL,NULL,NULL),(23,NULL,NULL,'(.*)type=non_mrc&gid=(.*)&phNo=&placeHolder=null',NULL,NULL,NULL),(24,NULL,NULL,'(.*)type=mrc&gid=(.*)',NULL,NULL,NULL),(25,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(26,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(27,NULL,NULL,'(.*)',NULL,NULL,NULL),(28,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(29,NULL,NULL,'(.*)',NULL,NULL,NULL),(30,NULL,NULL,'(.*)',NULL,NULL,NULL),(31,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(32,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(33,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(34,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(35,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(36,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(37,NULL,NULL,'file://',NULL,NULL,NULL),(38,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(39,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(40,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,86,39),(2,91,40);
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
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,2,1),(11,2,3),(12,2,4),(13,2,5),(14,2,6),(15,2,7),(16,2,8),(17,2,9),(18,2,10),(19,2,11),(20,2,12),(21,2,13),(22,3,16),(23,3,1),(24,3,5),(25,3,8),(26,3,9),(27,4,1),(28,4,3),(29,3,11),(30,4,4),(31,3,14),(32,3,15),(33,4,5),(34,4,6),(35,4,7),(36,4,8),(37,4,9),(38,4,11),(39,4,12),(40,5,17),(41,5,1),(42,5,3),(43,5,5),(44,5,6),(45,5,7),(46,5,8),(47,5,9),(48,5,10),(49,5,11),(50,5,12),(51,5,13),(52,6,1),(53,6,3),(54,6,5),(55,6,6),(56,6,7),(57,6,8),(58,6,9),(59,6,10),(60,6,11),(61,6,12),(62,6,13),(63,7,1),(64,7,5),(65,7,6),(66,7,7),(67,7,8),(68,7,9),(69,7,10),(70,7,11),(71,7,12),(72,7,13);
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

-- Dump completed on 2015-10-12  3:29:30
