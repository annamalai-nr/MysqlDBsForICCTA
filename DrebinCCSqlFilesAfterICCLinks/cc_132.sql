-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_132
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (14,'(.*)'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(16,'android.intent.action.CALL'),(8,'android.intent.action.CHOOSER'),(7,'android.intent.action.DELETE'),(17,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(19,'android.intent.action.PACKAGE_ADDED'),(12,'android.intent.action.SCREEN_OFF'),(13,'android.intent.action.SCREEN_ON'),(15,'android.intent.action.SENDTO'),(2,'android.intent.action.SIG_STR'),(6,'android.intent.action.Selection'),(5,'android.intent.action.ShowText'),(11,'android.intent.action.VIEW'),(18,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(10,'android.service.wallpaper.WallpaperService'),(9,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS');
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
INSERT INTO `Applications` VALUES (1,'com.tutusw.fingerscanner',5),(2,'pl.byq.new',19),(3,'com.ztz.mms',1),(4,'com.ps.yams',1),(5,'com.livegame.wallpapershuizeguan',3),(6,'com.glu.android.dinercn',6),(7,'com.alan.weather',19);
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
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.tutusw.fingerscanner.SettingsActivity'),(2,1,'com.tutusw.fingerscanner.FingerprintActivity'),(3,1,'com.tutusw.fingerscanner.HelpActivity'),(4,1,'com.google.ssearch.Dialog'),(5,1,'com.google.ssearch.SearchService'),(6,1,'com.tutusw.fingerscanner.SleepService'),(7,1,'com.google.ssearch.Receiver'),(8,1,'com.tutusw.fingerscanner.BootReceiver'),(9,2,'pl.byq.new.AirblockerActivity'),(10,2,'com.google.ads.AdActivity'),(11,2,'com.millennialmedia.android.MMAdViewOverlayActivity'),(12,2,'com.millennialmedia.android.VideoPlayer'),(13,2,'com.airpuh.ad.UpdateCheck'),(14,3,'com.ztz.mms.MMS'),(15,3,'com.ztz.mms.ShowText'),(16,3,'com.ztz.mms.PrivateBox'),(17,3,'com.ztz.mms.RequirePass'),(18,3,'com.ztz.mms.ContactsSearch'),(19,3,'com.ztz.mms.DateSearch'),(20,3,'com.ztz.mms.KeyWordSearch'),(21,3,'com.ztz.mms.RecContactsSearch'),(22,3,'com.ztz.mms.Selection'),(23,3,'com.ztz.mms.SelectionPrivate'),(24,3,'com.google.ssearch.Dialog'),(25,3,'com.google.ssearch.SearchService'),(26,3,'com.google.ssearch.Receiver'),(27,4,'com.ps.yams.Yams'),(28,4,'com.google.update.Dialog'),(29,4,'cn.domob.android.ads.DomobActivity'),(30,6,'com.glu.android.dinercn.DinerDash2'),(31,5,'com.livegame.wallpapershuizeguan.MainActivity'),(32,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(33,4,'com.google.update.UpdateService'),(34,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(35,4,'com.google.update.Receiver'),(36,5,'com.livegame.wallpapershuizeguan.SettingsActivity'),(37,6,'com.glu.android.dinercn.ShowTips'),(38,5,'com.livegame.wallpapershuizeguan.SelectFolderActivity'),(39,6,'com.glu.android.dinercn.UpdateService'),(40,1,'com.google.ssearch.SearchService$MyThread'),(41,5,'com.google.ads.AdActivity'),(42,2,'pl.byq.new.AirblockerActivity$6'),(43,6,'com.glu.android.dinercn.Receiver'),(44,5,'com.vpon.adon.android.WebInApp'),(45,5,'com.adwo.adsdk.AdwoSplashAdActivity'),(46,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(47,5,'com.waps.OffersWebView'),(48,2,'pl.byq.new.AirblockerActivity$1$1'),(49,5,'com.google.update.Dialog'),(50,1,'com.google.ssearch.Dialog$1'),(51,5,'com.livegame.wallpapershuizeguan.WallpaperSlideshow'),(52,5,'com.google.update.UpdateService'),(53,5,'com.google.update.Receiver'),(54,7,'com.alan.weather.WeatherForecast'),(55,7,'com.google.ads.AdActivity'),(56,7,'com.vpon.adon.android.WebInApp'),(57,7,'com.adwo.adsdk.AdwoSplashAdActivity'),(58,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(59,7,'com.waps.OffersWebView'),(60,7,'com.google.update.Dialog'),(61,7,'com.google.update.UpdateService'),(62,1,'com.tutusw.fingerscanner.SleepService$1'),(63,7,'com.google.update.Receiver'),(64,2,'pl.byq.new.AirblockerActivity$5'),(65,2,'pl.byq.new.AirblockerActivity$7$1'),(66,3,'com.ztz.mms.RecContactsSearch$1'),(67,3,'com.ztz.mms.dbcompletation.DatabaseHelper'),(68,3,'com.ztz.mms.ContactsSearch$1'),(69,3,'com.ztz.mms.ContactsSearch$3'),(70,3,'com.ztz.mms.ContactsSearch$2'),(71,3,'com.ztz.mms.RecContactsSearch$5'),(72,3,'com.ztz.mms.KeyWordSearch$2'),(73,3,'com.ztz.mms.util.NameToPhoneNum'),(74,3,'com.google.ssearch.Dialog$1'),(75,3,'com.ztz.mms.KeyWordSearch$1'),(76,3,'com.ztz.mms.util.UtilBox'),(77,3,'com.google.ssearch.SearchService$MyThread'),(78,6,'glu.me2android.GameLet'),(79,4,'cn.domob.android.ads.DomobAdManager'),(80,3,'com.ztz.mms.DateSearch$1'),(81,7,'com.google.update.Dialog$1'),(82,4,'cn.domob.android.ads.i'),(83,4,'com.google.update.Dialog$1'),(84,7,'com.google.update.UpdateService$MyThread'),(85,5,'com.google.update.UpdateService$AA'),(86,3,'com.ztz.mms.DateSearch$4'),(87,4,'cn.domob.android.ads.i$6'),(88,3,'com.ztz.mms.PrivateBox$6'),(89,5,'com.livegame.wallpapershuizeguan.MainActivity$2'),(90,7,'com.ju6.a'),(91,5,'com.livegame.wallpapershuizeguan.MainActivity$1'),(92,7,'com.google.update.Dialog$2'),(93,3,'com.ztz.mms.RecContactsSearch$2'),(94,7,'com.waps.k'),(95,4,'com.google.update.UpdateService$MyThread'),(96,4,'com.google.update.Dialog$2'),(97,5,'com.waps.ac'),(98,4,'cn.domob.android.ads.DomobActionReceiver'),(99,5,'com.waps.q'),(100,3,'com.ztz.mms.PrivateBox$2'),(101,6,'com.glu.android.dinercn.ShowTips$1'),(102,7,'com.waps.m'),(103,4,'com.ju6.a'),(104,5,'com.waps.z'),(105,4,'cn.domob.android.ads.DomobAdEngine$2'),(106,5,'com.google.update.Dialog$2'),(107,5,'com.waps.aa'),(108,5,'com.google.update.Dialog$1'),(109,5,'com.waps.AppConnect'),(110,5,'com.waps.o');
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
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,4,'TYPEdsada'),(2,13,'MYAD_PID'),(3,10,'params'),(4,10,'action'),(5,4,'MSG'),(6,10,'com.google.ads.AdOpener'),(7,24,'MSG'),(8,22,'keyword'),(9,22,'person'),(10,15,'smstitle'),(11,22,'identifior'),(12,24,'TYPEdsada'),(13,32,'shouldEnableBottomBar'),(14,33,'DOMOB_ALLOW_LOCATION'),(15,32,'DOMOB_ALLOW_LOCATION'),(16,34,'transitionTime'),(17,32,'shouldResizeOverlay'),(18,27,'dialog_shown'),(19,30,'android_paURL'),(20,29,'appId'),(21,34,'overlayTitle'),(22,28,'MSG'),(23,39,'SAFE_PID'),(24,34,'url'),(25,34,'shouldResizeOverlay'),(26,30,'android_carrierdeviceid'),(27,30,'android_mrcURL'),(28,55,'CLIENT_PACKAGE'),(29,29,'actType'),(30,32,'url'),(31,27,'tours'),(32,50,'WAPS_ID'),(33,48,'ST_MY_PID'),(34,27,'lances'),(35,27,'de_valeur'),(36,53,'Adwo_PID'),(37,32,'shouldMakeOverlayTransparent'),(38,56,'TYPEdsada'),(39,32,'transitionTime'),(40,55,'Offers_URL'),(41,54,'overlayTitle'),(42,50,'APP_ID'),(43,54,'shouldEnableBottomBar'),(44,57,'ST_START_DELAY'),(45,50,'CLIENT_PACKAGE'),(46,51,'com.google.ads.AdOpener'),(47,55,'isFinshClose'),(48,50,'WAPS_PID'),(49,15,'smstext'),(50,54,'overlayTransition'),(51,54,'shouldMakeOverlayTransparent'),(52,54,'transitionTime'),(53,42,'adWidth'),(54,51,'params'),(55,42,'url'),(56,55,'URL_PARAMS'),(57,48,'ST_START_DELAY'),(58,54,'shouldResizeOverlay'),(59,32,'overlayTitle'),(60,45,'Notify_Id'),(61,53,'isTestMode'),(62,52,'adWidth'),(63,45,'URL_PARAMS'),(64,43,'Adwo_PID'),(65,46,'TYPEdsada'),(66,50,'DEVICE_ID'),(67,46,'MSG'),(68,45,'CLIENT_PACKAGE'),(69,32,'overlayTransition'),(70,31,'CLIENT_PACKAGE'),(71,44,'shouldMakeOverlayTransparent'),(72,45,'URL'),(73,34,'shouldShowBottomBar'),(74,34,'shouldShowTitlebar'),(75,34,'shouldMakeOverlayTransparent'),(76,30,'android_demo'),(77,51,'action'),(78,28,'TYPEdsada'),(79,27,'points'),(80,32,'shouldShowTitlebar'),(81,45,'offers_webview_tag'),(82,33,'DOMOB_PID'),(83,45,'WAPS_ID'),(84,55,'USER_ID'),(85,32,'DOMOB_PID'),(86,31,'WAPS_ID'),(87,52,'url'),(88,33,'DOMOB_TEST_MODE'),(89,45,'Notify_Url_Params'),(90,55,'URL'),(91,32,'DOMOB_TEST_MODE'),(92,44,'shouldShowTitlebar'),(93,54,'shouldShowTitlebar'),(94,34,'overlayTransition'),(95,30,'android_demoURL'),(96,30,'0'),(97,37,'MM'),(98,34,'shouldEnableBottomBar'),(99,30,'android_mrc'),(100,39,'SAFE_START'),(101,32,'shouldShowBottomBar'),(102,45,'isFinshClose'),(103,33,'ST_MY_PID'),(104,44,'transitionTime'),(105,33,'ST_START_DELAY'),(106,44,'shouldResizeOverlay'),(107,29,'appName'),(108,45,'UrlPath'),(109,45,'USER_ID'),(110,45,'Offers_URL'),(111,57,'ST_MY_PID'),(112,54,'url'),(113,56,'MSG'),(114,54,'shouldShowBottomBar'),(115,45,'ACTIVITY_FLAG'),(116,45,'SHWO_FLAG'),(117,45,'APP_ID'),(118,31,'APP_ID'),(119,44,'url'),(120,45,'WAPS_PID'),(121,31,'WAPS_PID'),(122,44,'overlayTitle'),(123,44,'overlayTransition'),(124,44,'shouldEnableBottomBar'),(125,36,'folder'),(126,44,'shouldShowBottomBar'),(127,43,'isTestMode'),(128,45,'DEVICE_ID'),(129,31,'DEVICE_ID');
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'s',0,NULL,NULL),(7,7,'r',1,NULL,NULL),(8,8,'r',1,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'s',0,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',1,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'s',0,NULL,NULL),(26,26,'r',1,NULL,NULL),(27,27,'a',1,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'s',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'r',1,NULL,NULL),(36,36,'a',1,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'s',0,NULL,NULL),(40,41,'a',0,NULL,NULL),(41,43,'r',1,NULL,NULL),(42,44,'a',0,NULL,NULL),(43,45,'a',0,NULL,NULL),(44,46,'a',0,NULL,NULL),(45,47,'a',0,NULL,NULL),(46,49,'a',0,NULL,NULL),(47,51,'s',1,21,NULL),(48,52,'s',0,NULL,NULL),(49,53,'r',1,NULL,NULL),(50,54,'a',1,NULL,NULL),(51,55,'a',0,NULL,NULL),(52,56,'a',0,NULL,NULL),(53,57,'a',0,NULL,NULL),(54,58,'a',0,NULL,NULL),(55,59,'a',0,NULL,NULL),(56,60,'a',0,NULL,NULL),(57,61,'s',0,NULL,NULL),(58,62,'r',1,NULL,NULL),(59,63,'r',1,NULL,NULL),(60,98,'r',1,NULL,NULL),(61,99,'r',1,NULL,NULL),(62,102,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,7),(2,2,1),(3,3,1),(4,4,1),(5,5,5),(6,6,9),(7,7,9),(8,8,4),(9,9,1),(10,10,5),(11,11,1),(12,12,1),(13,13,10),(14,14,5),(15,15,9),(16,16,8),(17,17,9),(18,18,9),(19,19,19),(20,20,16),(21,21,21),(22,22,21),(23,23,18),(24,24,23),(25,24,16),(26,25,19),(27,26,16),(28,27,18),(29,28,18),(30,29,18),(31,30,19),(32,31,21),(33,32,21),(34,33,20),(35,34,19),(36,35,18),(37,36,18),(38,37,20),(39,38,19),(40,39,22),(41,40,20),(42,41,21),(43,42,21),(44,42,18),(45,43,20),(46,43,21),(47,43,18),(48,43,19),(49,43,22),(50,44,24),(51,45,18),(52,46,20),(53,47,20),(54,48,22),(55,49,21),(56,50,20),(57,51,16),(58,52,18),(59,53,20),(60,53,21),(61,53,22),(62,53,19),(63,53,18),(64,54,18),(65,55,33),(66,56,22),(67,57,25),(68,58,30),(69,59,32),(70,59,33),(71,60,18),(72,61,30),(73,62,19),(74,63,33),(75,63,32),(76,64,56),(77,65,25),(78,66,28),(79,67,57),(80,68,20),(81,69,48),(82,70,19),(83,71,33),(84,71,32),(85,72,16),(86,73,31),(87,74,57),(88,75,21),(89,76,31),(90,77,56),(91,78,19),(92,79,48),(93,80,21),(94,81,55),(95,82,33),(96,83,21),(97,84,45),(98,85,18),(99,86,57),(100,87,28),(101,88,45),(102,88,38),(103,89,21),(104,90,21),(105,91,59),(106,92,35),(107,94,57),(108,93,22),(109,93,21),(110,93,20),(111,93,19),(112,93,18),(113,95,33),(114,96,41),(115,97,16),(116,98,48),(117,99,20),(118,100,37),(119,101,19),(120,102,16),(121,103,51),(122,104,33),(123,105,45),(124,106,33),(125,106,32),(126,107,25),(127,108,46),(128,109,26),(129,110,45),(130,111,21),(131,112,22),(132,113,20),(133,114,46),(134,115,16),(135,116,31),(136,117,45),(137,118,49),(138,119,45);
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
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,7,'<com.google.ssearch.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(2,1,'<com.tutusw.fingerscanner.SettingsActivity: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',27,'s',NULL),(3,1,'<com.tutusw.fingerscanner.SettingsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(4,1,'<com.tutusw.fingerscanner.SettingsActivity: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',18,'s',NULL),(5,40,'<com.google.ssearch.SearchService$MyThread: void run()>',39,'a',NULL),(6,42,'<pl.byq.new.AirblockerActivity$6: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(7,48,'<pl.byq.new.AirblockerActivity$1$1: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(8,50,'<com.google.ssearch.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(9,1,'<com.tutusw.fingerscanner.SettingsActivity: void onStart()>',18,'s',NULL),(10,5,'<com.google.ssearch.SearchService: void getPermission2()>',79,'a',NULL),(11,1,'<com.tutusw.fingerscanner.SettingsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(12,1,'<com.tutusw.fingerscanner.SettingsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',27,'a',NULL),(13,10,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',82,'a',NULL),(14,5,'<com.google.ssearch.SearchService: int setUsbEnabled()>',34,'a',NULL),(15,64,'<pl.byq.new.AirblockerActivity$5: void onClick(android.view.View)>',6,'a',NULL),(16,8,'<com.tutusw.fingerscanner.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(17,9,'<pl.byq.new.AirblockerActivity: void onCreate(android.os.Bundle)>',7,'s',NULL),(18,65,'<pl.byq.new.AirblockerActivity$7$1: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(19,19,'<com.ztz.mms.DateSearch: boolean onContextItemSelected(android.view.MenuItem)>',100,'a',NULL),(20,16,'<com.ztz.mms.PrivateBox: boolean onContextItemSelected(android.view.MenuItem)>',97,'a',NULL),(21,66,'<com.ztz.mms.RecContactsSearch$1: void onClick(android.view.View)>',6,'a',NULL),(22,21,'<com.ztz.mms.RecContactsSearch: boolean onContextItemSelected(android.view.MenuItem)>',94,'a',NULL),(23,18,'<com.ztz.mms.ContactsSearch: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(24,67,'<com.ztz.mms.dbcompletation.DatabaseHelper: void insertSMS(int,java.lang.String,java.lang.String,java.lang.String,java.lang.String,android.content.Context)>',25,'p',NULL),(25,19,'<com.ztz.mms.DateSearch: boolean onOptionsItemSelected(android.view.MenuItem)>',29,'a',NULL),(26,16,'<com.ztz.mms.PrivateBox: boolean onContextItemSelected(android.view.MenuItem)>',82,'a',NULL),(27,68,'<com.ztz.mms.ContactsSearch$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',23,'a',NULL),(28,69,'<com.ztz.mms.ContactsSearch$3: void onClick(android.view.View)>',77,'p',NULL),(29,70,'<com.ztz.mms.ContactsSearch$2: void onClick(android.view.View)>',6,'a',NULL),(30,19,'<com.ztz.mms.DateSearch: boolean onContextItemSelected(android.view.MenuItem)>',94,'a',NULL),(31,21,'<com.ztz.mms.RecContactsSearch: boolean onContextItemSelected(android.view.MenuItem)>',82,'a',NULL),(32,71,'<com.ztz.mms.RecContactsSearch$5: void onClick(android.view.View)>',106,'p',NULL),(33,20,'<com.ztz.mms.KeyWordSearch: boolean onContextItemSelected(android.view.MenuItem)>',94,'a',NULL),(34,19,'<com.ztz.mms.DateSearch: boolean onContextItemSelected(android.view.MenuItem)>',109,'a',NULL),(35,18,'<com.ztz.mms.ContactsSearch: boolean onContextItemSelected(android.view.MenuItem)>',94,'a',NULL),(36,18,'<com.ztz.mms.ContactsSearch: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(37,72,'<com.ztz.mms.KeyWordSearch$2: void onClick(android.view.View)>',29,'p',NULL),(38,19,'<com.ztz.mms.DateSearch: boolean onContextItemSelected(android.view.MenuItem)>',82,'a',NULL),(39,22,'<com.ztz.mms.Selection: void onCreate(android.os.Bundle)>',148,'p',NULL),(40,20,'<com.ztz.mms.KeyWordSearch: boolean onContextItemSelected(android.view.MenuItem)>',109,'a',NULL),(41,21,'<com.ztz.mms.RecContactsSearch: boolean onContextItemSelected(android.view.MenuItem)>',109,'a',NULL),(42,73,'<com.ztz.mms.util.NameToPhoneNum: java.util.ArrayList getName(java.lang.String,android.content.Context)>',16,'p',NULL),(43,67,'<com.ztz.mms.dbcompletation.DatabaseHelper: void insertMessageBox(int,java.lang.String,android.content.Context)>',12,'p',NULL),(44,74,'<com.google.ssearch.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(45,69,'<com.ztz.mms.ContactsSearch$3: void onClick(android.view.View)>',31,'p',NULL),(46,75,'<com.ztz.mms.KeyWordSearch$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(47,20,'<com.ztz.mms.KeyWordSearch: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(48,22,'<com.ztz.mms.Selection: void onCreate(android.os.Bundle)>',23,'p',NULL),(49,21,'<com.ztz.mms.RecContactsSearch: boolean onOptionsItemSelected(android.view.MenuItem)>',25,'a',NULL),(50,20,'<com.ztz.mms.KeyWordSearch: boolean onContextItemSelected(android.view.MenuItem)>',100,'a',NULL),(51,16,'<com.ztz.mms.PrivateBox: boolean onContextItemSelected(android.view.MenuItem)>',70,'a',NULL),(52,18,'<com.ztz.mms.ContactsSearch: boolean onContextItemSelected(android.view.MenuItem)>',82,'a',NULL),(53,76,'<com.ztz.mms.util.UtilBox: java.lang.String getName(java.lang.String,android.content.Context)>',16,'p',NULL),(54,18,'<com.ztz.mms.ContactsSearch: boolean onContextItemSelected(android.view.MenuItem)>',109,'a',NULL),(55,33,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(56,22,'<com.ztz.mms.Selection: void onCreate(android.os.Bundle)>',110,'p',NULL),(57,77,'<com.google.ssearch.SearchService$MyThread: void run()>',39,'a',NULL),(58,78,'<glu.me2android.GameLet: void onCreate(android.os.Bundle)>',60,'s',NULL),(59,79,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(60,18,'<com.ztz.mms.ContactsSearch: void onActivityResult(int,int,android.content.Intent)>',11,'p',NULL),(61,78,'<glu.me2android.GameLet: boolean platformRequest(java.lang.String)>',5,'a',NULL),(62,80,'<com.ztz.mms.DateSearch$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',37,'a',NULL),(63,82,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(64,81,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(65,25,'<com.google.ssearch.SearchService: int setUsbEnabled()>',34,'a',NULL),(66,83,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(67,84,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(68,20,'<com.ztz.mms.KeyWordSearch: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(69,85,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(70,86,'<com.ztz.mms.DateSearch$4: void onClick(android.view.View)>',67,'p',NULL),(71,87,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(72,88,'<com.ztz.mms.PrivateBox$6: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',23,'a',NULL),(73,89,'<com.livegame.wallpapershuizeguan.MainActivity$2: void onClick(android.view.View)>',35,'a',NULL),(74,90,'<com.ju6.a: boolean b()>',178,'p',NULL),(75,21,'<com.ztz.mms.RecContactsSearch: boolean onContextItemSelected(android.view.MenuItem)>',100,'a',NULL),(76,91,'<com.livegame.wallpapershuizeguan.MainActivity$1: void onClick(android.view.View)>',37,'a',NULL),(77,92,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(78,80,'<com.ztz.mms.DateSearch$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(79,52,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(80,93,'<com.ztz.mms.RecContactsSearch$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(81,94,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(82,95,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(83,21,'<com.ztz.mms.RecContactsSearch: void onActivityResult(int,int,android.content.Intent)>',13,'p',NULL),(84,47,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(85,18,'<com.ztz.mms.ContactsSearch: boolean onContextItemSelected(android.view.MenuItem)>',100,'a',NULL),(86,61,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(87,96,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(88,97,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(89,93,'<com.ztz.mms.RecContactsSearch$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',37,'a',NULL),(90,21,'<com.ztz.mms.RecContactsSearch: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(91,63,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(92,35,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(93,67,'<com.ztz.mms.dbcompletation.DatabaseHelper: void deleteSMS(int,android.content.Context)>',9,'p',NULL),(94,61,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(95,33,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(96,43,'<com.glu.android.dinercn.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(97,100,'<com.ztz.mms.PrivateBox$2: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(98,52,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(99,75,'<com.ztz.mms.KeyWordSearch$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',37,'a',NULL),(100,101,'<com.glu.android.dinercn.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(101,19,'<com.ztz.mms.DateSearch: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(102,16,'<com.ztz.mms.PrivateBox: boolean onContextItemSelected(android.view.MenuItem)>',88,'a',NULL),(103,55,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(104,103,'<com.ju6.a: boolean b()>',178,'p',NULL),(105,104,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(106,105,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(107,25,'<com.google.ssearch.SearchService: void getPermission2()>',79,'a',NULL),(108,106,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(109,26,'<com.google.ssearch.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(110,107,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(111,71,'<com.ztz.mms.RecContactsSearch$5: void onClick(android.view.View)>',172,'p',NULL),(112,22,'<com.ztz.mms.Selection: void onCreate(android.os.Bundle)>',91,'p',NULL),(113,20,'<com.ztz.mms.KeyWordSearch: boolean onContextItemSelected(android.view.MenuItem)>',82,'a',NULL),(114,108,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(115,16,'<com.ztz.mms.PrivateBox: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(116,109,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(117,110,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(118,53,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(119,47,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,5,1),(2,6,7),(3,7,1),(4,8,8),(5,9,9),(6,10,8),(7,11,8),(8,13,8),(9,15,8),(10,17,8),(11,18,8),(12,19,11),(13,20,8),(14,22,11),(15,23,14),(16,24,14),(17,27,11),(18,30,8),(19,31,8),(20,32,8),(21,33,8),(22,34,8),(23,35,8),(24,36,8),(25,37,8),(26,38,15),(27,39,16),(28,40,17),(29,41,15),(30,44,15),(31,45,15),(32,46,17),(33,47,15),(34,49,15),(35,50,16),(36,51,15),(37,54,16),(38,55,16),(39,56,9),(40,57,15),(41,60,15),(42,63,16),(43,67,1),(44,68,1),(45,69,11),(46,70,15),(47,72,1),(48,71,11),(49,73,11),(50,74,1),(51,76,11),(52,78,1),(53,79,11),(54,80,1),(55,81,1),(56,82,11),(57,83,1),(58,85,11),(59,86,1),(60,87,11),(61,88,11),(62,89,1),(63,90,11),(64,91,15),(65,93,11),(66,94,11),(67,96,15),(68,97,11),(69,98,11),(70,99,11),(71,100,18),(72,101,9),(73,102,11),(74,103,15),(75,104,11),(76,105,11),(77,106,11),(78,108,11),(79,109,15),(80,110,11),(81,112,11),(82,113,1),(83,114,11),(84,115,1),(85,117,15),(86,119,11),(87,120,9),(88,121,11),(89,124,15),(90,125,11),(91,128,11),(92,138,15),(93,139,1),(94,140,1),(95,142,15),(96,143,14),(97,144,11),(98,145,11),(99,147,14),(100,149,9),(101,154,1),(102,156,1),(103,158,11),(104,161,1),(105,162,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,5,2),(2,7,1),(3,67,2),(4,68,1),(5,72,1),(6,74,2),(7,78,1),(8,80,1),(9,81,2),(10,83,2),(11,86,1),(12,89,2),(13,113,1),(14,115,2),(15,139,1),(16,140,2),(17,143,3),(18,145,3),(19,147,3),(20,154,1),(21,156,2),(22,161,1),(23,162,2);
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
INSERT INTO `IClasses` VALUES (1,1,'com/google/ssearch/SearchService'),(2,2,'com/tutusw/fingerscanner/SleepService'),(3,3,'com/tutusw/fingerscanner/FingerprintActivity'),(4,4,'com/tutusw/fingerscanner/SleepService'),(5,12,'com/tutusw/fingerscanner/SleepService'),(6,14,'com/google/ssearch/Dialog'),(7,16,'com/google/ssearch/Dialog'),(8,21,'com/tutusw/fingerscanner/HelpActivity'),(9,25,'com/google/ssearch/Dialog'),(10,26,'com/google/ssearch/Dialog'),(11,28,'com/tutusw/fingerscanner/SleepService'),(12,29,'com/airpuh/ad/UpdateCheck'),(13,42,'com/ztz/mms/Selection'),(14,43,'com/ztz/mms/Selection'),(15,48,'com/ztz/mms/ShowText'),(16,52,'com/ztz/mms/PrivateBox'),(17,53,'com/ztz/mms/ShowText'),(18,58,'com/ztz/mms/Selection'),(19,59,'com/ztz/mms/Selection'),(20,61,'com/ztz/mms/ShowText'),(21,62,'com/ztz/mms/ShowText'),(22,64,'com/google/update/Dialog'),(23,65,'com/google/update/Dialog'),(24,66,'com/glu/android/dinercn/UpdateService'),(25,75,'com/google/ssearch/Dialog'),(26,77,'com/google/ssearch/Dialog'),(27,84,'com/ztz/mms/PrivateBox'),(28,95,'com/livegame/wallpapershuizeguan/SettingsActivity'),(29,107,'com/google/update/Dialog'),(30,111,'com/google/update/Dialog'),(31,116,'(.*)'),(32,118,'com/google/update/Dialog'),(33,122,'NULL-CONSTANT'),(34,123,'com/google/update/Dialog'),(35,126,'com/ztz/mms/PrivateBox'),(36,127,'com/google/update/UpdateService'),(37,129,'com/google/update/UpdateService'),(38,130,'com/google/update/Dialog'),(39,132,'com/glu/android/dinercn/UpdateService'),(40,131,'com/google/update/Dialog'),(41,133,'com/ztz/mms/RequirePass'),(42,135,'com/google/update/Dialog'),(43,134,'com/google/update/Dialog'),(44,136,'com/google/update/Dialog'),(45,137,'com/google/update/Dialog'),(46,141,'com/ztz/mms/PrivateBox'),(47,146,'com/google/ssearch/Dialog'),(48,148,'com/google/ssearch/Dialog'),(49,150,'com/google/ssearch/SearchService'),(50,151,'com/waps/OffersWebView'),(51,152,'com/waps/OffersWebView'),(52,153,'com/ztz/mms/ShowText'),(53,155,'com/ztz/mms/SelectionPrivate'),(54,157,'com/waps/OffersWebView'),(55,159,'com/google/update/UpdateService');
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,6,1),(2,19,2),(3,22,3),(4,23,4),(5,24,5),(6,27,6),(7,38,7),(8,39,8),(9,41,9),(10,44,11),(11,45,12),(12,47,14),(13,49,16),(14,50,17),(15,51,18),(16,54,21),(17,55,22),(18,57,26),(19,60,28),(20,63,30),(21,69,33),(22,70,34),(23,71,35),(24,73,36),(25,76,37),(26,79,38),(27,82,39),(28,85,40),(29,87,42),(30,88,43),(31,90,44),(32,91,45),(33,93,46),(34,94,47),(35,97,49),(36,96,50),(37,98,51),(38,99,52),(39,102,53),(40,104,54),(41,103,55),(42,105,56),(43,106,57),(44,108,58),(45,109,59),(46,112,60),(47,110,61),(48,114,62),(49,117,64),(50,119,63),(51,121,65),(52,124,66),(53,125,67),(54,128,68),(55,138,70),(56,142,72),(57,143,73),(58,144,74),(59,145,75),(60,147,76),(61,158,79);
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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,8,'android.intent.extra.INTENT'),(2,10,'android.intent.extra.INTENT'),(3,11,'android.intent.extra.TITLE'),(4,11,'android.intent.extra.INTENT'),(5,13,'android.intent.extra.INTENT'),(6,14,'MSG'),(7,14,'TYPEdsada'),(8,15,'android.intent.extra.TITLE'),(9,15,'android.intent.extra.INTENT'),(10,16,'TYPEdsada'),(11,17,'android.intent.extra.INTENT'),(12,18,'android.intent.extra.TITLE'),(13,18,'android.intent.extra.INTENT'),(14,20,'android.intent.extra.TITLE'),(15,20,'android.intent.extra.INTENT'),(16,25,'MSG'),(17,25,'TYPEdsada'),(18,26,'TYPEdsada'),(19,30,'android.intent.extra.INTENT'),(20,31,'android.intent.extra.INTENT'),(21,32,'android.intent.extra.TITLE'),(22,32,'android.intent.extra.INTENT'),(23,33,'android.intent.extra.INTENT'),(24,34,'android.intent.extra.TITLE'),(25,34,'android.intent.extra.INTENT'),(26,35,'android.intent.extra.INTENT'),(27,36,'android.intent.extra.TITLE'),(28,36,'android.intent.extra.INTENT'),(29,37,'android.intent.extra.TITLE'),(30,37,'android.intent.extra.INTENT'),(31,38,'sms_body'),(32,42,'person'),(33,42,'identifior'),(34,43,'enddate'),(35,43,'begindate'),(36,43,'identifior'),(37,48,'smstext'),(38,48,'smstitle'),(39,53,'smstext'),(40,53,'smstitle'),(41,57,'sms_body'),(42,58,'keyword'),(43,58,'identifior'),(44,59,'overdate'),(45,59,'person'),(46,59,'keyword'),(47,59,'begindate'),(48,59,'identifior'),(49,60,'sms_body'),(50,61,'smstext'),(51,61,'smstitle'),(52,62,'smstext'),(53,62,'smstitle'),(54,64,'MSG'),(55,64,'TYPEdsada'),(56,65,'TYPEdsada'),(57,75,'TYPEdsada'),(58,77,'MSG'),(59,77,'TYPEdsada'),(60,96,'sms_body'),(61,100,'android.live_wallpaper.package'),(62,100,'android.live_wallpaper.settings'),(63,103,'sms_body'),(64,107,'MSG'),(65,107,'TYPEdsada'),(66,109,'sms_body'),(67,111,'TYPEdsada'),(68,117,'sms_body'),(69,118,'MSG'),(70,118,'TYPEdsada'),(71,123,'TYPEdsada'),(72,130,'MSG'),(73,130,'TYPEdsada'),(74,131,'MSG'),(75,131,'TYPEdsada'),(76,134,'MSG'),(77,135,'TYPEdsada'),(78,134,'TYPEdsada'),(79,136,'TYPEdsada'),(80,137,'TYPEdsada'),(81,142,'sms_body'),(82,146,'TYPEdsada'),(83,148,'MSG'),(84,148,'TYPEdsada'),(85,151,'Notify_Url_Params'),(86,151,'UrlPath'),(87,151,'ACTIVITY_FLAG'),(88,151,'isFinshClose'),(89,151,'offers_webview_tag'),(90,152,'UrlPath'),(91,152,'ACTIVITY_FLAG'),(92,152,'isFinshClose'),(93,152,'offers_webview_tag'),(94,153,'smstext'),(95,153,'smstitle'),(96,157,'USER_ID'),(97,157,'CLIENT_PACKAGE'),(98,157,'Offers_URL'),(99,157,'offers_webview_tag'),(100,157,'URL_PARAMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(5,3,3),(6,4,1),(7,5,1),(8,6,5),(9,7,6),(10,8,2),(11,8,3),(12,8,4),(13,9,1),(14,10,1),(15,11,1),(16,12,4),(17,12,3),(18,12,2),(19,13,4),(20,13,3),(21,13,2),(22,14,10),(23,15,4),(24,15,2),(25,15,3),(26,16,1),(27,17,12),(28,17,13),(29,18,13),(30,18,12),(31,19,13),(32,19,12),(33,20,2),(34,20,4),(35,20,3),(36,21,19),(37,22,19),(38,23,19);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,4,1),(3,5,1),(4,6,1),(5,7,1),(6,9,1),(7,10,1),(8,11,1),(9,16,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,21,'package',NULL,NULL,NULL,NULL,NULL),(2,22,'package',NULL,NULL,NULL,NULL,NULL),(3,23,'package',NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `IMimeTypes` VALUES (1,23,'(.*)','(.*)'),(2,40,'vnd.android.cursor.item','phone_v2'),(3,46,'vnd.android.cursor.item','phone_v2'),(4,88,'application','vnd.android.package-archive'),(5,94,'application','vnd.android.package-archive'),(6,98,'application','vnd.android.package-archive'),(7,102,'application','vnd.android.package-archive'),(8,106,'application','vnd.android.package-archive'),(9,110,'application','vnd.android.package-archive'),(10,144,'application','vnd.android.package-archive'),(11,147,'(.*)','(.*)'),(12,158,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.tutusw.fingerscanner'),(2,2,'com.tutusw.fingerscanner'),(3,3,'com.tutusw.fingerscanner'),(4,4,'com.tutusw.fingerscanner'),(5,5,'com.tutusw.fingerscanner'),(6,7,'com.tutusw.fingerscanner'),(7,12,'com.tutusw.fingerscanner'),(8,14,'com.tutusw.fingerscanner'),(9,16,'com.tutusw.fingerscanner'),(10,21,'com.tutusw.fingerscanner'),(11,25,'com.tutusw.fingerscanner'),(12,26,'com.tutusw.fingerscanner'),(13,28,'com.tutusw.fingerscanner'),(14,29,'pl.byq.new'),(15,42,'com.ztz.mms'),(16,43,'com.ztz.mms'),(17,48,'com.ztz.mms'),(18,52,'com.ztz.mms'),(19,53,'com.ztz.mms'),(20,58,'com.ztz.mms'),(21,59,'com.ztz.mms'),(22,61,'com.ztz.mms'),(23,62,'com.ztz.mms'),(24,64,'com.ps.yams'),(25,65,'com.ps.yams'),(26,66,'com.glu.android.dinercn'),(27,67,'com.ztz.mms'),(28,68,'com.ztz.mms'),(29,72,'com.noshufou.android.su'),(30,74,'com.noshufou.android.su'),(31,75,'com.ztz.mms'),(32,78,'com.noshufou.android.su'),(33,77,'com.ztz.mms'),(34,80,'com.alan.weather'),(35,81,'com.noshufou.android.su'),(36,84,'com.ztz.mms'),(37,83,'com.alan.weather'),(38,86,'com.livegame.wallpapershuizeguan'),(39,89,'com.livegame.wallpapershuizeguan'),(40,95,'com.livegame.wallpapershuizeguan'),(41,107,'com.livegame.wallpapershuizeguan'),(42,111,'com.livegame.wallpapershuizeguan'),(43,113,'com.ps.yams'),(44,115,'com.ps.yams'),(45,116,'(.*)'),(46,118,'com.alan.weather'),(47,122,'NULL-CONSTANT'),(48,123,'com.alan.weather'),(49,126,'com.ztz.mms'),(50,127,'com.alan.weather'),(51,129,'com.ps.yams'),(52,130,'com.alan.weather'),(53,132,'com.glu.android.dinercn'),(54,131,'com.ps.yams'),(55,133,'com.ztz.mms'),(56,135,'com.alan.weather'),(57,134,'com.livegame.wallpapershuizeguan'),(58,136,'com.ps.yams'),(59,137,'com.livegame.wallpapershuizeguan'),(60,139,'com.noshufou.android.su'),(61,140,'com.noshufou.android.su'),(62,141,'com.ztz.mms'),(63,146,'com.ztz.mms'),(64,148,'com.ztz.mms'),(65,150,'com.ztz.mms'),(66,151,'com.livegame.wallpapershuizeguan'),(67,152,'com.livegame.wallpapershuizeguan'),(68,153,'com.ztz.mms'),(69,155,'com.ztz.mms'),(70,154,'com.noshufou.android.su'),(71,156,'com.noshufou.android.su'),(72,157,'com.livegame.wallpapershuizeguan'),(73,159,'com.livegame.wallpapershuizeguan'),(74,161,'(.*)'),(75,162,'(.*)');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,7,0),(3,8,0),(4,9,0),(5,14,0),(6,15,0),(7,22,0),(8,26,0),(9,27,0),(10,30,0),(11,31,0),(12,35,0),(13,41,0),(14,47,0),(15,49,0),(16,50,0),(17,8,0),(18,7,0),(19,58,0),(20,59,0),(21,60,0),(22,61,0),(23,62,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,1,0),(6,6,1,0),(7,5,1,0),(8,7,1,0),(9,8,1,0),(10,7,1,0),(11,7,1,0),(12,9,0,0),(13,7,1,0),(14,10,0,0),(15,7,1,0),(16,10,0,0),(17,7,1,0),(18,7,1,0),(19,11,1,0),(20,7,1,0),(21,12,0,0),(22,13,1,0),(23,13,1,0),(24,13,1,0),(25,14,0,0),(26,14,0,0),(27,15,1,0),(28,16,0,0),(29,17,0,0),(30,18,1,0),(31,18,1,0),(32,18,1,0),(33,18,1,0),(34,18,1,0),(35,18,1,0),(36,18,1,0),(37,18,1,0),(38,19,1,0),(39,20,1,0),(40,21,1,0),(41,22,1,0),(42,23,0,0),(43,25,0,0),(44,26,1,0),(45,27,1,0),(46,29,1,0),(47,30,1,0),(48,31,0,0),(49,33,1,0),(50,34,1,0),(51,35,1,0),(52,36,0,0),(53,38,0,0),(54,40,1,0),(55,41,1,0),(56,44,1,0),(57,46,1,0),(58,47,0,0),(59,49,0,0),(60,50,1,0),(61,51,0,0),(62,52,0,0),(63,54,1,0),(64,55,0,0),(65,55,0,0),(66,58,0,0),(67,57,1,0),(68,57,1,0),(69,61,1,0),(70,62,1,0),(71,63,1,0),(72,64,1,0),(73,61,1,0),(74,64,1,0),(75,65,0,0),(76,61,1,0),(77,65,0,0),(78,66,1,0),(79,61,1,0),(80,67,1,0),(81,66,1,0),(82,61,1,0),(83,67,1,0),(84,68,0,0),(85,61,1,0),(86,69,1,0),(87,61,1,0),(88,71,1,0),(89,69,1,0),(90,61,1,0),(91,72,1,0),(92,71,1,0),(93,61,1,0),(94,71,1,0),(95,73,0,0),(96,75,1,0),(97,61,1,0),(98,71,1,0),(99,61,1,0),(100,76,1,0),(101,77,1,0),(102,71,1,0),(103,78,1,0),(104,61,1,0),(105,61,1,0),(106,71,1,0),(107,79,0,0),(108,61,1,0),(109,80,1,0),(110,81,1,0),(111,79,0,0),(112,61,1,0),(113,82,1,0),(114,61,1,0),(115,82,1,0),(116,84,0,0),(117,85,1,0),(118,86,0,0),(119,61,1,0),(120,87,1,0),(121,61,1,0),(122,88,0,0),(123,86,0,0),(124,89,1,0),(125,61,1,0),(126,90,0,0),(127,91,0,0),(128,61,1,0),(129,92,0,0),(130,94,0,0),(131,95,0,0),(132,96,0,0),(133,97,0,0),(134,98,0,0),(135,94,0,0),(136,95,0,0),(137,98,0,0),(138,99,1,0),(139,100,1,0),(140,100,1,0),(141,101,0,0),(142,102,1,0),(143,103,1,0),(144,105,1,0),(145,103,1,0),(146,107,0,0),(147,103,1,0),(148,107,0,0),(149,108,1,0),(150,109,0,0),(151,110,0,0),(152,110,0,0),(153,113,0,0),(154,114,1,0),(155,115,0,0),(156,114,1,0),(157,116,0,0),(158,117,1,0),(159,118,0,0),(160,119,1,0),(161,119,1,0),(162,119,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=394 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,22,30,2,NULL),(2,24,30,2,NULL),(3,39,30,2,NULL),(4,142,30,2,NULL),(5,63,30,2,NULL),(6,117,30,2,NULL),(7,38,30,2,NULL),(8,50,30,2,NULL),(9,54,30,2,NULL),(10,60,30,2,NULL),(11,55,30,2,NULL),(12,96,30,2,NULL),(13,160,30,2,NULL),(14,161,30,2,NULL),(15,162,30,2,NULL),(16,143,30,2,NULL),(17,145,30,2,NULL),(18,132,39,2,NULL),(19,22,41,2,NULL),(20,24,41,2,NULL),(21,39,41,2,NULL),(22,142,41,2,NULL),(23,63,41,2,NULL),(24,117,41,2,NULL),(25,38,41,2,NULL),(26,50,41,2,NULL),(27,54,41,2,NULL),(28,60,41,2,NULL),(29,55,41,2,NULL),(30,96,41,2,NULL),(31,160,41,2,NULL),(32,161,41,2,NULL),(33,162,41,2,NULL),(34,143,41,2,NULL),(35,145,41,2,NULL),(36,22,50,2,NULL),(37,24,50,2,NULL),(38,39,50,2,NULL),(39,142,50,2,NULL),(40,63,50,2,NULL),(41,117,50,2,NULL),(42,38,50,2,NULL),(43,50,50,2,NULL),(44,54,50,2,NULL),(45,60,50,2,NULL),(46,55,50,2,NULL),(47,96,50,2,NULL),(48,160,50,2,NULL),(49,161,50,2,NULL),(50,162,50,2,NULL),(51,143,50,2,NULL),(52,145,50,2,NULL),(53,143,1,2,NULL),(54,145,1,2,NULL),(55,143,7,2,NULL),(56,145,7,2,NULL),(57,143,8,2,NULL),(58,145,8,2,NULL),(59,143,58,2,NULL),(60,145,58,2,NULL),(61,143,9,2,NULL),(62,145,9,2,NULL),(63,143,14,2,NULL),(64,145,14,2,NULL),(65,143,15,2,NULL),(66,145,15,2,NULL),(67,143,22,2,NULL),(68,145,22,2,NULL),(69,143,26,2,NULL),(70,145,26,2,NULL),(71,143,27,2,NULL),(72,145,27,2,NULL),(73,143,35,2,NULL),(74,145,35,2,NULL),(75,143,31,2,NULL),(76,145,31,2,NULL),(77,143,47,2,NULL),(78,145,47,2,NULL),(79,143,49,2,NULL),(80,145,49,2,NULL),(81,143,59,2,NULL),(82,145,59,2,NULL),(83,118,28,2,NULL),(84,118,46,2,NULL),(85,118,56,2,NULL),(86,123,28,2,NULL),(87,123,46,2,NULL),(88,123,56,2,NULL),(89,130,28,2,NULL),(90,130,46,2,NULL),(91,130,56,2,NULL),(92,135,28,2,NULL),(93,135,46,2,NULL),(94,135,56,2,NULL),(95,127,33,2,NULL),(96,127,48,2,NULL),(97,127,57,2,NULL),(98,22,59,2,NULL),(99,24,59,2,NULL),(100,39,59,2,NULL),(101,142,59,2,NULL),(102,63,59,2,NULL),(103,117,59,2,NULL),(104,38,59,2,NULL),(105,50,59,2,NULL),(106,54,59,2,NULL),(107,60,59,2,NULL),(108,55,59,2,NULL),(109,96,59,2,NULL),(110,160,59,2,NULL),(111,161,59,2,NULL),(112,162,59,2,NULL),(113,22,27,2,NULL),(114,24,27,2,NULL),(115,39,27,2,NULL),(116,142,27,2,NULL),(117,63,27,2,NULL),(118,117,27,2,NULL),(119,38,27,2,NULL),(120,50,27,2,NULL),(121,54,27,2,NULL),(122,60,27,2,NULL),(123,55,27,2,NULL),(124,96,27,2,NULL),(125,160,27,2,NULL),(126,161,27,2,NULL),(127,162,27,2,NULL),(128,64,28,2,NULL),(129,64,46,2,NULL),(130,64,56,2,NULL),(131,65,28,2,NULL),(132,65,46,2,NULL),(133,65,56,2,NULL),(134,131,28,2,NULL),(135,131,46,2,NULL),(136,131,56,2,NULL),(137,136,28,2,NULL),(138,136,46,2,NULL),(139,136,56,2,NULL),(140,129,33,2,NULL),(141,129,48,2,NULL),(142,129,57,2,NULL),(143,22,35,2,NULL),(144,24,35,2,NULL),(145,39,35,2,NULL),(146,142,35,2,NULL),(147,63,35,2,NULL),(148,117,35,2,NULL),(149,38,35,2,NULL),(150,50,35,2,NULL),(151,54,35,2,NULL),(152,60,35,2,NULL),(153,55,35,2,NULL),(154,96,35,2,NULL),(155,160,35,2,NULL),(156,161,35,2,NULL),(157,162,35,2,NULL),(158,2,6,2,NULL),(159,3,2,2,NULL),(160,4,6,2,NULL),(161,12,6,2,NULL),(162,21,3,2,NULL),(163,22,1,2,NULL),(164,24,1,2,NULL),(165,39,1,2,NULL),(166,142,1,2,NULL),(167,63,1,2,NULL),(168,117,1,2,NULL),(169,38,1,2,NULL),(170,50,1,2,NULL),(171,54,1,2,NULL),(172,60,1,2,NULL),(173,55,1,2,NULL),(174,96,1,2,NULL),(175,160,1,2,NULL),(176,161,1,2,NULL),(177,162,1,2,NULL),(178,14,4,2,NULL),(179,14,24,2,NULL),(180,16,4,2,NULL),(181,16,24,2,NULL),(182,25,4,2,NULL),(183,25,24,2,NULL),(184,26,4,2,NULL),(185,26,24,2,NULL),(186,1,5,2,NULL),(187,1,25,2,NULL),(188,22,7,2,NULL),(189,24,7,2,NULL),(190,39,7,2,NULL),(191,142,7,2,NULL),(192,63,7,2,NULL),(193,117,7,2,NULL),(194,38,7,2,NULL),(195,50,7,2,NULL),(196,54,7,2,NULL),(197,60,7,2,NULL),(198,55,7,2,NULL),(199,96,7,2,NULL),(200,160,7,2,NULL),(201,161,7,2,NULL),(202,162,7,2,NULL),(203,28,6,2,NULL),(204,22,8,2,NULL),(205,24,8,2,NULL),(206,39,8,2,NULL),(207,142,8,2,NULL),(208,63,8,2,NULL),(209,117,8,2,NULL),(210,38,8,2,NULL),(211,50,8,2,NULL),(212,54,8,2,NULL),(213,60,8,2,NULL),(214,55,8,2,NULL),(215,96,8,2,NULL),(216,160,8,2,NULL),(217,161,8,2,NULL),(218,162,8,2,NULL),(219,22,58,2,NULL),(220,24,58,2,NULL),(221,39,58,2,NULL),(222,142,58,2,NULL),(223,63,58,2,NULL),(224,117,58,2,NULL),(225,38,58,2,NULL),(226,50,58,2,NULL),(227,54,58,2,NULL),(228,60,58,2,NULL),(229,55,58,2,NULL),(230,96,58,2,NULL),(231,160,58,2,NULL),(232,161,58,2,NULL),(233,162,58,2,NULL),(234,22,14,2,NULL),(235,24,14,2,NULL),(236,39,14,2,NULL),(237,142,14,2,NULL),(238,22,31,2,NULL),(239,63,14,2,NULL),(240,24,31,2,NULL),(241,117,14,2,NULL),(242,39,31,2,NULL),(243,38,14,2,NULL),(244,142,31,2,NULL),(245,50,14,2,NULL),(246,63,31,2,NULL),(247,54,14,2,NULL),(248,117,31,2,NULL),(249,60,14,2,NULL),(250,38,31,2,NULL),(251,55,14,2,NULL),(252,50,31,2,NULL),(253,96,14,2,NULL),(254,54,31,2,NULL),(255,160,14,2,NULL),(256,60,31,2,NULL),(257,161,14,2,NULL),(258,55,31,2,NULL),(259,162,14,2,NULL),(260,96,31,2,NULL),(261,22,15,2,NULL),(262,160,31,2,NULL),(263,24,15,2,NULL),(264,161,31,2,NULL),(265,39,15,2,NULL),(266,162,31,2,NULL),(267,142,15,2,NULL),(268,63,15,2,NULL),(269,160,9,2,NULL),(270,117,15,2,NULL),(271,161,9,2,NULL),(272,38,15,2,NULL),(273,162,9,2,NULL),(274,50,15,2,NULL),(275,160,15,2,NULL),(276,54,15,2,NULL),(277,161,15,2,NULL),(278,60,15,2,NULL),(279,162,15,2,NULL),(280,55,15,2,NULL),(281,160,22,2,NULL),(282,96,15,2,NULL),(283,161,22,2,NULL),(284,61,15,2,NULL),(285,162,22,2,NULL),(286,155,23,2,NULL),(287,160,26,2,NULL),(288,39,9,2,NULL),(289,161,26,2,NULL),(290,142,9,2,NULL),(291,162,26,2,NULL),(292,39,22,2,NULL),(293,160,47,2,NULL),(294,142,22,2,NULL),(295,161,47,2,NULL),(296,39,26,2,NULL),(297,162,47,2,NULL),(298,142,26,2,NULL),(299,160,49,2,NULL),(300,39,47,2,NULL),(301,161,49,2,NULL),(302,142,47,2,NULL),(303,162,49,2,NULL),(304,39,49,2,NULL),(305,22,47,2,NULL),(306,142,49,2,NULL),(307,24,47,2,NULL),(308,42,22,2,NULL),(309,63,47,2,NULL),(310,52,16,2,NULL),(311,117,47,2,NULL),(312,62,15,2,NULL),(313,38,47,2,NULL),(314,63,9,2,NULL),(315,50,47,2,NULL),(316,117,9,2,NULL),(317,54,47,2,NULL),(318,63,22,2,NULL),(319,60,47,2,NULL),(320,117,22,2,NULL),(321,55,47,2,NULL),(322,63,26,2,NULL),(323,96,47,2,NULL),(324,117,26,2,NULL),(325,107,28,2,NULL),(326,63,49,2,NULL),(327,107,46,2,NULL),(328,117,49,2,NULL),(329,107,56,2,NULL),(330,43,22,2,NULL),(331,111,28,2,NULL),(332,53,15,2,NULL),(333,111,46,2,NULL),(334,141,16,2,NULL),(335,111,56,2,NULL),(336,38,9,2,NULL),(337,134,28,2,NULL),(338,50,9,2,NULL),(339,134,46,2,NULL),(340,38,22,2,NULL),(341,134,56,2,NULL),(342,50,22,2,NULL),(343,137,28,2,NULL),(344,38,26,2,NULL),(345,137,46,2,NULL),(346,50,26,2,NULL),(347,137,56,2,NULL),(348,38,49,2,NULL),(349,159,33,2,NULL),(350,50,49,2,NULL),(351,159,48,2,NULL),(352,58,22,2,NULL),(353,159,57,2,NULL),(354,84,16,2,NULL),(355,22,49,2,NULL),(356,153,15,2,NULL),(357,24,49,2,NULL),(358,54,9,2,NULL),(359,54,49,2,NULL),(360,60,9,2,NULL),(361,60,49,2,NULL),(362,54,22,2,NULL),(363,55,49,2,NULL),(364,60,22,2,NULL),(365,96,49,2,NULL),(366,54,26,2,NULL),(367,60,26,2,NULL),(368,48,15,2,NULL),(369,59,22,2,NULL),(370,126,16,2,NULL),(371,55,9,2,NULL),(372,96,9,2,NULL),(373,55,22,2,NULL),(374,96,22,2,NULL),(375,55,26,2,NULL),(376,96,26,2,NULL),(377,22,22,2,NULL),(378,24,22,2,NULL),(379,75,4,2,NULL),(380,75,24,2,NULL),(381,77,4,2,NULL),(382,77,24,2,NULL),(383,146,4,2,NULL),(384,146,24,2,NULL),(385,148,4,2,NULL),(386,148,24,2,NULL),(387,150,5,2,NULL),(388,150,25,2,NULL),(389,22,26,2,NULL),(390,24,26,2,NULL),(391,29,13,2,NULL),(392,22,9,2,NULL),(393,24,9,2,NULL);
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
INSERT INTO `PermissionStrings` VALUES (17,'android.permission.ACCESS_COARSE_LOCATION'),(18,'android.permission.ACCESS_FINE_LOCATION'),(19,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(10,'android.permission.ACCESS_NETWORK_STATE'),(9,'android.permission.ACCESS_WIFI_STATE'),(21,'android.permission.BIND_WALLPAPER'),(14,'android.permission.CALL_PHONE'),(7,'android.permission.CHANGE_WIFI_STATE'),(1,'android.permission.DISABLE_KEYGUARD'),(20,'android.permission.GET_TASKS'),(3,'android.permission.INSTALL_PACKAGES'),(5,'android.permission.INTERNET'),(13,'android.permission.READ_CONTACTS'),(16,'android.permission.READ_EXTERNAL_STORAGE'),(2,'android.permission.READ_PHONE_STATE'),(15,'android.permission.READ_SMS'),(4,'android.permission.RECEIVE_BOOT_COMPLETED'),(12,'android.permission.RECEIVE_SMS'),(8,'android.permission.VIBRATE'),(6,'android.permission.WRITE_EXTERNAL_STORAGE'),(11,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(2,NULL,NULL,'http://android.thinkchange.mobi',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'market://details?id=pl.byq.new',NULL,NULL,NULL),(7,NULL,NULL,'sms:',NULL,NULL,NULL),(8,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(9,NULL,NULL,'sms://conversations/(.*)',NULL,NULL,NULL),(10,NULL,NULL,'content://sms',NULL,NULL,NULL),(11,NULL,NULL,'sms://conversations/(.*)',NULL,NULL,NULL),(12,NULL,NULL,'sms://conversations/(.*)',NULL,NULL,NULL),(13,NULL,NULL,'content://sms',NULL,NULL,NULL),(14,NULL,NULL,'sms://conversations/(.*)',NULL,NULL,NULL),(15,NULL,NULL,'content://sms',NULL,NULL,NULL),(16,NULL,NULL,'sms://conversations/(.*)',NULL,NULL,NULL),(17,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(18,NULL,NULL,'sms://conversations/(.*)',NULL,NULL,NULL),(19,NULL,NULL,'content://sms',NULL,NULL,NULL),(20,NULL,NULL,'content://sms',NULL,NULL,NULL),(21,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(22,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(23,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(24,NULL,NULL,'content://sms',NULL,NULL,NULL),(25,NULL,NULL,'content://sms',NULL,NULL,NULL),(26,NULL,NULL,'sms:',NULL,NULL,NULL),(27,NULL,NULL,'content://sms',NULL,NULL,NULL),(28,NULL,NULL,'sms:',NULL,NULL,NULL),(29,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(30,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(31,NULL,NULL,'content://sms',NULL,NULL,NULL),(32,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(33,NULL,NULL,'(.*)',NULL,NULL,NULL),(34,NULL,NULL,'sms://conversations/(.*)',NULL,NULL,NULL),(35,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(36,NULL,NULL,'(.*)type=non_mrc&gid=(.*)&placeHolder=null',NULL,NULL,NULL),(37,NULL,NULL,'(.*)type=non_mrc&gid=(.*)&phNo=',NULL,NULL,NULL),(38,NULL,NULL,'http://mrc-stage.glu.com/mrc/fe?type=mrc&gid=(.*)&placeHolder=null',NULL,NULL,NULL),(39,NULL,NULL,'http://mrc-stage.glu.com/mrc/fe?type=non_mrc&gid=(.*)&placeHolder=null',NULL,NULL,NULL),(40,NULL,NULL,'http://mrc-stage.glu.com/mrc/fe?type=non_mrc&gid=(.*)&phNo=',NULL,NULL,NULL),(41,NULL,NULL,'content://sms',NULL,NULL,NULL),(42,NULL,NULL,'http://www.ss3.glu.com',NULL,NULL,NULL),(43,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(44,NULL,NULL,'http://mrc-stage.glu.com/mrc/fe?type=mrc&gid=(.*)&phNo=',NULL,NULL,NULL),(45,NULL,NULL,'sms://conversations/(.*)',NULL,NULL,NULL),(46,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(47,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(48,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(49,NULL,NULL,'http://mrc-stage.glu.com/mrc/fe?type=non_mrc&gid=(.*)&phNo=&placeHolder=null',NULL,NULL,NULL),(50,NULL,NULL,'sms:',NULL,NULL,NULL),(51,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(52,NULL,NULL,'http://mrc-stage.glu.com/mrc/fe?type=non_mrc&gid=(.*)',NULL,NULL,NULL),(53,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(54,NULL,NULL,'(.*)type=mrc&gid=(.*)&phNo=',NULL,NULL,NULL),(55,NULL,NULL,'sms:',NULL,NULL,NULL),(56,NULL,NULL,'(.*)type=mrc&gid=(.*)&placeHolder=null',NULL,NULL,NULL),(57,NULL,NULL,'file://',NULL,NULL,NULL),(58,NULL,NULL,'http://gcs.glu.com/gcs/android/index.jsp?src=diner2',NULL,NULL,NULL),(59,NULL,NULL,'sms:',NULL,NULL,NULL),(60,NULL,NULL,'(.*)type=non_mrc&gid=(.*)',NULL,NULL,NULL),(61,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(62,NULL,NULL,'(.*)type=mrc&gid=(.*)&phNo=&placeHolder=null',NULL,NULL,NULL),(63,NULL,NULL,'http://mrc-stage.glu.com/mrc/fe?type=mrc&gid=(.*)&phNo=&placeHolder=null',NULL,NULL,NULL),(64,NULL,NULL,'sms:',NULL,NULL,NULL),(65,NULL,NULL,'http://mrc-stage.glu.com/mrc/fe?type=mrc&gid=(.*)',NULL,NULL,NULL),(66,NULL,NULL,'sms://conversations/(.*)',NULL,NULL,NULL),(67,NULL,NULL,'(.*)type=non_mrc&gid=(.*)&phNo=&placeHolder=null',NULL,NULL,NULL),(68,NULL,NULL,'(.*)type=mrc&gid=(.*)',NULL,NULL,NULL),(69,NULL,NULL,'content://sms/(.*)',NULL,NULL,NULL),(70,NULL,NULL,'sms://conversations/(.*)',NULL,NULL,NULL),(71,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(72,NULL,NULL,'sms:',NULL,NULL,NULL),(73,NULL,NULL,'(.*)',NULL,NULL,NULL),(74,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(75,NULL,NULL,'(.*)',NULL,NULL,NULL),(76,NULL,NULL,'(.*)',NULL,NULL,NULL),(77,NULL,NULL,'content://sms',NULL,NULL,NULL),(78,NULL,NULL,'content://sms',NULL,NULL,NULL),(79,NULL,NULL,'file://(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,24,10),(2,28,13),(3,32,15),(4,37,19),(5,39,20),(6,42,23),(7,43,24),(8,45,25),(9,48,27),(10,53,29),(11,56,31),(12,59,32),(13,70,41),(14,74,48),(15,93,69),(16,104,71),(17,111,77),(18,112,78);
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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,2,2),(12,2,5),(13,2,10),(14,3,2),(15,3,3),(16,3,5),(17,3,6),(18,3,7),(19,3,9),(20,3,10),(21,3,11),(22,3,12),(23,3,13),(24,3,14),(25,3,15),(26,4,2),(27,4,3),(28,4,4),(29,4,5),(30,4,6),(31,4,7),(32,4,9),(33,4,10),(34,4,11),(35,4,15),(36,4,17),(37,4,16),(38,4,19),(39,5,17),(40,4,18),(41,5,2),(42,6,17),(43,5,18),(44,6,2),(45,5,4),(46,6,5),(47,5,20),(48,6,8),(49,5,5),(50,6,9),(51,5,6),(52,6,10),(53,5,7),(54,6,11),(55,5,9),(56,6,15),(57,5,10),(58,7,2),(59,7,3),(60,7,5),(61,7,6),(62,7,7),(63,7,9),(64,7,10),(65,7,11),(66,7,15),(67,7,17),(68,7,16),(69,7,19),(70,7,18),(71,7,20);
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
