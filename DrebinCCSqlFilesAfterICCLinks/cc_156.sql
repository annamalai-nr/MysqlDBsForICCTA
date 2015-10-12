-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_156
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (17,'(.*)'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(10,'android.intent.action.CHOOSER'),(11,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(8,'android.intent.action.PACKAGE_ADDED'),(20,'android.intent.action.SCREEN_OFF'),(12,'android.intent.action.SEND'),(14,'android.intent.action.SENDTO'),(2,'android.intent.action.SIG_STR'),(21,'android.intent.action.USER_PRESENT'),(9,'android.intent.action.VIEW'),(19,'android.intent.action.WEB_SEARCH'),(18,'android.net.conn.CONNECTIVITY_CHANGE'),(15,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(6,'android.service.wallpaper.WallpaperService'),(22,'com.airpush.android.PushServiceStart(.*)'),(5,'com.airpush.android.PushServiceStart14958'),(23,'com.airpush.android.PushServiceStartInvalid'),(25,'com.airpush.android.PushServiceStartNULL-CONSTANT'),(24,'com.airpush.android.PushServiceStartinvalid Id'),(7,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(16,'com/safesys/onekeyvpn/Intents.OPEN_VPN_SERVICE_STARTED'),(13,'org.openintents.action.PICK_DIRECTORY');
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
INSERT INTO `Applications` VALUES (1,'com.allen',2),(2,'com.ps.blackwhite',6),(3,'com.safesys.onekeyvpn',10),(4,'com.evilsunflower.farmer',1),(5,'com.evilsunflower.xiaoxiaole',2),(6,'com.livegame.wallpaperhaidibz',3),(7,'com.alan.siwameinv3',5);
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
INSERT INTO `CategoryStrings` VALUES (4,'android.intent.category.BROWSABLE'),(2,'android.intent.category.HOME'),(3,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
INSERT INTO `Classes` VALUES (1,1,'com.allen.portal.CalllogTabs'),(2,1,'com.allen.contact.IncomingContactList'),(3,1,'com.allen.contact.OutgoingContactList'),(4,1,'com.allen.contact.MissedContactList'),(5,1,'com.allen.contact.TotalDisplay'),(6,1,'com.allen.portal.Settings'),(7,1,'com.eguan.state.Dialog'),(8,1,'com.eguan.state.StateService'),(9,1,'com.eguan.state.Receiver'),(10,2,'com.adwo.adsdk.AdwoAdBrowserActivity'),(11,2,'com.ps.blackwhite.BlackWhite'),(12,2,'com.google.update.Dialog'),(13,2,'com.waps.OffersWebView'),(14,2,'com.google.update.UpdateService'),(15,2,'com.google.update.Receiver'),(16,3,'com.safesys.onekeyvpn.OpenVpnSettings'),(17,3,'com.safesys.onekeyvpn.AdvancedSettings'),(18,3,'com.safesys.onekeyvpn.EditConfig'),(19,3,'com.safesys.onekeyvpn.EditConfigPreferences'),(20,3,'com.safesys.onekeyvpn.EnterPassphrase'),(21,3,'com.safesys.onekeyvpn.EnterUserPassword'),(22,3,'com.safesys.onekeyvpn.ImportFiles'),(23,3,'com.safesys.onekeyvpn.service.OpenVpnService'),(24,3,'com.safesys.onekeyvpn.util.BootCompletedReceiver'),(25,5,'com.evilsunflower.xiaoxiaole.MainView'),(26,4,'com.evilsunflower.farmer.ZookeeperIQ'),(27,5,'com.google.ads.AdActivity'),(28,4,'com.vpon.adon.android.WebInApp'),(29,5,'com.vpon.adon.android.WebInApp'),(30,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(31,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(32,4,'com.evilsunflower.farmer.ShowTips'),(33,5,'com.evilsunflower.xiaoxiaole.ShowTips'),(34,4,'com.google.ads.AdActivity'),(35,5,'com.evilsunflower.xiaoxiaole.UpdateService'),(36,4,'com.airpush.android.PushAds'),(37,5,'com.evilsunflower.xiaoxiaole.Receiver'),(38,4,'com.evilsunflower.farmer.UpdateService'),(39,4,'com.airpush.android.PushService'),(40,4,'com.evilsunflower.farmer.Receiver'),(41,4,'com.airpush.android.UserDetailsReceiver'),(42,4,'com.airpush.android.MessageReceiver'),(43,4,'com.airpush.android.DeliveryReceiver'),(44,4,'com.blogspot.androidresearch.zooiq.BootReceiver'),(45,6,'com.livegame.wallpaperhaidibz.MainActivity'),(46,6,'com.livegame.wallpaperhaidibz.SettingsActivity'),(47,6,'com.livegame.wallpaperhaidibz.SelectFolderActivity'),(48,6,'com.google.ads.AdActivity'),(49,6,'com.vpon.adon.android.WebInApp'),(50,6,'com.adwo.adsdk.AdwoSplashAdActivity'),(51,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(52,6,'com.waps.OffersWebView'),(53,6,'com.google.update.Dialog'),(54,6,'com.livegame.wallpaperhaidibz.WallpaperSlideshow'),(55,6,'com.google.update.UpdateService'),(56,6,'com.google.update.Receiver'),(57,7,'com.alan.siwameinv3.PaperCollection'),(58,7,'com.alan.siwameinv3.PictureGrid'),(59,1,'com.allen.contact.base.BaseContactList'),(60,7,'com.google.ads.AdActivity'),(61,7,'com.vpon.adon.android.WebInApp'),(62,7,'com.adwo.adsdk.AdwoSplashAdActivity'),(63,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(64,7,'com.waps.OffersWebView'),(65,1,'com.eguan.state.StateService$MyThread'),(66,7,'com.google.update.Dialog'),(67,7,'com.google.update.UpdateService'),(68,7,'com.google.update.Receiver'),(69,1,'com.eguan.state.Dialog$1'),(70,2,'com.google.update.UpdateService$AA'),(71,2,'com.waps.q'),(72,2,'com.waps.z'),(73,2,'com.waps.aa'),(74,2,'com.google.update.Dialog$2'),(75,2,'com.waps.ac'),(76,3,'com.safesys.onekeyvpn.service.DaemonMonitor$2'),(77,3,'com.safesys.onekeyvpn.OpenVpnSettings$4'),(78,2,'com.google.update.Dialog$1'),(79,2,'com.waps.o'),(80,5,'com.madhouse.android.ads._'),(81,5,'com.adwo.adsdk.g'),(82,3,'com.safesys.onekeyvpn.ImportFiles$2'),(83,3,'com.safesys.onekeyvpn.service.ManagementThread'),(84,6,'com.livegame.wallpaperhaidibz.MainActivity$1'),(85,3,'com.safesys.onekeyvpn.service.DaemonMonitor'),(86,3,'com.safesys.onekeyvpn.OpenVpnSettings$1'),(87,7,'com.waps.m'),(88,6,'com.google.update.Dialog$2'),(89,6,'com.waps.AppConnect'),(90,6,'com.google.update.Dialog$1'),(91,3,'com.safesys.onekeyvpn.util.NetworkConnectivityListener$ConnectivityBroadcastReceiver'),(92,7,'com.google.update.Dialog$2'),(93,4,'com.adwo.adsdk.g'),(94,3,'com.adwo.adsdk.g'),(95,6,'com.waps.z'),(96,7,'com.ju6.a'),(97,7,'com.google.update.Dialog$1'),(98,6,'com.livegame.wallpaperhaidibz.MainActivity$2'),(99,7,'com.google.update.UpdateService$MyThread'),(100,6,'com.waps.q'),(101,7,'com.waps.k'),(102,7,'com.waps.AppConnect'),(103,6,'com.waps.o'),(104,6,'com.waps.aa'),(105,5,'com.evilsunflower.xiaoxiaole.ShowTips$1'),(106,6,'com.waps.ac'),(107,6,'com.google.update.UpdateService$AA'),(108,5,'com.google.ads.util.AdUtil$UserActivityReceiver'),(109,4,'com.evilsunflower.farmer.ShowTips$1'),(110,4,'com.madhouse.android.ads._');
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
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,7,'TYPEdsada'),(2,7,'MSG'),(3,13,'UrlPath'),(4,10,'shouldResizeOverlay'),(5,14,'ST_START_DELAY'),(6,13,'offers_webview_tag'),(7,10,'shouldShowTitlebar'),(8,10,'url'),(9,13,'Notify_Id'),(10,10,'shouldShowBottomBar'),(11,13,'URL'),(12,13,'Notify_Url_Params'),(13,13,'SHWO_FLAG'),(14,13,'WAPS_ID'),(15,11,'WAPS_ID'),(16,10,'shouldMakeOverlayTransparent'),(17,10,'overlayTransition'),(18,12,'TYPEdsada'),(19,13,'Offers_URL'),(20,13,'USER_ID'),(21,10,'overlayTitle'),(22,13,'DEVICE_ID'),(23,11,'DEVICE_ID'),(24,13,'isFinshClose'),(25,13,'CLIENT_PACKAGE'),(26,13,'URL_PARAMS'),(27,13,'APP_ID'),(28,11,'APP_ID'),(29,14,'ST_MY_PID'),(30,35,'SAFE_PID'),(31,31,'shouldEnableBottomBar'),(32,27,'action'),(33,12,'MSG'),(34,29,'(.*)'),(35,13,'WAPS_PID'),(36,11,'WAPS_PID'),(37,10,'shouldEnableBottomBar'),(38,31,'overlayTransition'),(39,35,'SAFE_START'),(40,31,'overlayTitle'),(41,29,'url'),(42,13,'ACTIVITY_FLAG'),(43,10,'transitionTime'),(44,11,'CLIENT_PACKAGE'),(45,58,'APP_ID'),(46,63,'URL'),(47,52,'Notify_Id'),(48,63,'Offers_URL'),(49,50,'Adwo_PID'),(50,52,'isFinshClose'),(51,52,'USER_ID'),(52,61,'isTestMode'),(53,62,'transitionTime'),(54,52,'URL'),(55,52,'UrlPath'),(56,52,'CLIENT_PACKAGE'),(57,63,'CLIENT_PACKAGE'),(58,52,'ACTIVITY_FLAG'),(59,63,'isFinshClose'),(60,46,'folder'),(61,62,'overlayTransition'),(62,51,'overlayTitle'),(63,58,'WAPS_ID'),(64,51,'transitionTime'),(65,63,'USER_ID'),(66,62,'shouldResizeOverlay'),(67,51,'shouldShowBottomBar'),(68,50,'isTestMode'),(69,52,'DEVICE_ID'),(70,45,'DEVICE_ID'),(71,52,'WAPS_PID'),(72,64,'TYPEdsada'),(73,45,'WAPS_PID'),(74,62,'overlayTitle'),(75,51,'url'),(76,52,'offers_webview_tag'),(77,52,'URL_PARAMS'),(78,52,'Offers_URL'),(79,51,'shouldEnableBottomBar'),(80,51,'shouldMakeOverlayTransparent'),(81,52,'WAPS_ID'),(82,45,'WAPS_ID'),(83,62,'url'),(84,60,'adWidth'),(85,55,'ST_START_DELAY'),(86,62,'shouldEnableBottomBar'),(87,52,'Notify_Url_Params'),(88,58,'DEVICE_ID'),(89,49,'url'),(90,65,'ST_START_DELAY'),(91,58,'CLIENT_PACKAGE'),(92,51,'shouldResizeOverlay'),(93,55,'ST_MY_PID'),(94,53,'TYPEdsada'),(95,65,'ST_MY_PID'),(96,59,'action'),(97,62,'shouldShowBottomBar'),(98,61,'Adwo_PID'),(99,60,'url'),(100,52,'APP_ID'),(101,45,'APP_ID'),(102,64,'MSG'),(103,63,'URL_PARAMS'),(104,62,'shouldShowTitlebar'),(105,59,'params'),(106,58,'WAPS_PID'),(107,59,'com.google.ads.AdOpener'),(108,62,'shouldMakeOverlayTransparent'),(109,31,'shouldShowBottomBar'),(110,29,'adWidth'),(111,31,'url'),(112,31,'transitionTime'),(113,51,'shouldShowTitlebar'),(114,51,'overlayTransition'),(115,27,'params'),(116,52,'SHWO_FLAG'),(117,31,'shouldResizeOverlay'),(118,49,'adWidth'),(119,45,'CLIENT_PACKAGE'),(120,53,'MSG'),(121,31,'shouldShowTitlebar'),(122,33,'MM'),(123,31,'shouldMakeOverlayTransparent'),(124,27,'com.google.ads.AdOpener'),(125,36,'appId'),(126,36,'campId'),(127,39,'number'),(128,38,'SAFE_PID'),(129,43,'imageurl'),(130,39,'creativeId'),(131,43,'campId'),(132,39,'imageurl'),(133,28,'url'),(134,43,'creativeId'),(135,28,'adWidth'),(136,36,'adType'),(137,39,'campId'),(138,39,'header'),(139,36,'number'),(140,36,'apikey'),(141,43,'title'),(142,36,'url'),(143,30,'transitionTime'),(144,43,'apikey'),(145,36,'creativeId'),(146,30,'shouldResizeOverlay'),(147,43,'header'),(148,34,'com.google.ads.AdOpener'),(149,39,'link'),(150,39,'url'),(151,39,'text'),(152,43,'appId'),(153,43,'text'),(154,43,'number'),(155,39,'sms'),(156,43,'imei'),(157,39,'appId'),(158,39,'apikey'),(159,39,'testMode'),(160,30,'shouldEnableBottomBar'),(161,30,'shouldShowBottomBar'),(162,30,'shouldShowTitlebar'),(163,39,'title'),(164,39,'adType'),(165,43,'sms'),(166,36,'header'),(167,36,'test'),(168,30,'overlayTransition'),(169,36,'sms'),(170,39,'type'),(171,43,'url'),(172,38,'SAFE_START'),(173,30,'shouldMakeOverlayTransparent'),(174,32,'MM'),(175,30,'overlayTitle'),(176,30,'url'),(177,28,'(.*)'),(178,34,'params'),(179,34,'action');
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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'s',0,NULL,NULL),(9,9,'r',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'s',0,NULL,NULL),(15,15,'r',1,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'s',0,NULL,NULL),(24,24,'r',1,9,NULL),(25,25,'a',1,NULL,NULL),(26,26,'a',1,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'s',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'r',1,NULL,NULL),(38,38,'s',0,NULL,NULL),(39,39,'s',1,NULL,NULL),(40,40,'r',1,NULL,NULL),(41,41,'r',0,NULL,NULL),(42,42,'r',0,NULL,NULL),(43,43,'r',0,NULL,NULL),(44,44,'r',1,NULL,NULL),(45,45,'a',1,NULL,NULL),(46,46,'a',1,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'s',1,19,NULL),(55,55,'s',0,NULL,NULL),(56,56,'r',1,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',1,NULL,NULL),(59,60,'a',0,NULL,NULL),(60,61,'a',0,NULL,NULL),(61,62,'a',0,NULL,NULL),(62,63,'a',0,NULL,NULL),(63,64,'a',0,NULL,NULL),(64,66,'a',0,NULL,NULL),(65,67,'s',0,NULL,NULL),(66,68,'r',1,NULL,NULL),(67,71,'r',1,NULL,NULL),(68,87,'r',1,NULL,NULL),(69,91,'r',1,NULL,NULL),(70,100,'r',1,NULL,NULL),(71,108,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,8),(3,3,4),(4,3,2),(5,3,3),(6,4,9),(7,5,8),(8,6,7),(9,7,8),(10,8,5),(11,9,14),(12,10,13),(13,11,13),(14,12,13),(15,13,14),(16,14,12),(17,15,13),(18,16,16),(19,16,23),(20,17,16),(21,18,12),(22,19,13),(23,20,15),(24,21,29),(25,22,14),(26,23,16),(27,24,25),(28,25,16),(29,26,13),(30,27,22),(31,28,23),(32,28,16),(33,29,21),(34,30,45),(35,31,16),(36,31,23),(37,32,16),(38,33,16),(39,33,23),(40,34,53),(41,35,23),(42,36,59),(43,37,23),(44,37,16),(45,38,45),(46,39,24),(47,40,16),(48,40,23),(49,41,16),(50,42,53),(51,43,64),(52,44,16),(53,45,16),(54,45,23),(55,46,26),(56,47,16),(57,48,52),(58,49,65),(59,50,65),(60,51,52),(61,52,64),(62,53,45),(63,54,56),(64,55,65),(65,56,55),(66,57,63),(67,58,65),(68,59,55),(69,60,58),(70,61,52),(71,62,52),(72,63,66),(73,64,52),(74,65,33),(75,66,37),(76,67,47),(77,67,52),(78,68,27),(79,69,55),(80,70,25),(81,71,16),(82,72,20),(83,73,16),(84,73,23),(85,74,40),(86,75,41),(87,76,36),(88,77,36),(89,78,36),(90,79,36),(91,80,42),(92,81,32),(93,82,36),(94,83,43),(95,84,28),(96,85,26),(97,86,34);
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
INSERT INTO `ExitPoints` VALUES (1,1,'<com.allen.portal.CalllogTabs: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(2,8,'<com.eguan.state.StateService: void getPermission2()>',78,'a',NULL),(3,59,'<com.allen.contact.base.BaseContactList: void setListAdapter(java.lang.String,java.lang.String)>',7,'p',NULL),(4,9,'<com.eguan.state.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(5,65,'<com.eguan.state.StateService$MyThread: void run()>',39,'a',NULL),(6,69,'<com.eguan.state.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(7,8,'<com.eguan.state.StateService: int setUsbEnabled()>',34,'a',NULL),(8,5,'<com.allen.contact.TotalDisplay: int getCallTimeByWhere(java.lang.String)>',8,'p',NULL),(9,70,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(10,13,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',328,'a',NULL),(11,72,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(12,73,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(13,14,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(14,74,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(15,75,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(16,76,'<com.safesys.onekeyvpn.service.DaemonMonitor$2: void onCmdTerminated()>',10,'r',0),(17,77,'<com.safesys.onekeyvpn.OpenVpnSettings$4: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(18,78,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(19,79,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(20,15,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(21,80,'<com.madhouse.android.ads._: com.madhouse.android.ads.c _(android.content.Context)>',11,'p',NULL),(22,14,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(23,16,'<com.safesys.onekeyvpn.OpenVpnSettings: boolean onOptionsItemSelected(android.view.MenuItem)>',22,'a',NULL),(24,81,'<com.adwo.adsdk.g: void run()>',59,'a',NULL),(25,16,'<com.safesys.onekeyvpn.OpenVpnSettings: void onCreate(android.os.Bundle)>',34,'s',NULL),(26,13,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(27,82,'<com.safesys.onekeyvpn.ImportFiles$2: void onClick(android.view.View)>',6,'a',NULL),(28,83,'<com.safesys.onekeyvpn.service.ManagementThread: void run()>',23,'r',0),(29,21,'<com.safesys.onekeyvpn.EnterUserPassword: void onCreate(android.os.Bundle)>',6,'s',NULL),(30,84,'<com.livegame.wallpaperhaidibz.MainActivity$1: void onClick(android.view.View)>',37,'a',NULL),(31,85,'<com.safesys.onekeyvpn.service.DaemonMonitor: void start()>',13,'r',0),(32,86,'<com.safesys.onekeyvpn.OpenVpnSettings$1: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',18,'s',NULL),(33,83,'<com.safesys.onekeyvpn.service.ManagementThread: void networkStateChanged(int)>',11,'r',0),(34,88,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(35,23,'<com.safesys.onekeyvpn.service.OpenVpnService: void onCreate()>',6,'r',NULL),(36,60,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(37,83,'<com.safesys.onekeyvpn.service.ManagementThread: void run()>',31,'r',0),(38,89,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(39,24,'<com.safesys.onekeyvpn.util.BootCompletedReceiver: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(40,83,'<com.safesys.onekeyvpn.service.ManagementThread: void run()>',55,'r',0),(41,16,'<com.safesys.onekeyvpn.OpenVpnSettings: void onCreate(android.os.Bundle)>',31,'s',NULL),(42,90,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(43,92,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(44,86,'<com.safesys.onekeyvpn.OpenVpnSettings$1: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',12,'s',NULL),(45,85,'<com.safesys.onekeyvpn.service.DaemonMonitor: void start()>',68,'r',0),(46,93,'<com.adwo.adsdk.g: void run()>',59,'a',NULL),(47,94,'<com.adwo.adsdk.g: void run()>',59,'a',NULL),(48,95,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(49,96,'<com.ju6.a: boolean b()>',178,'p',NULL),(50,67,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(51,52,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(52,97,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(53,98,'<com.livegame.wallpaperhaidibz.MainActivity$2: void onClick(android.view.View)>',35,'a',NULL),(54,56,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(55,99,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(56,55,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(57,101,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(58,67,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(59,55,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(60,102,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(61,103,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(62,52,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(63,68,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(64,104,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(65,105,'<com.evilsunflower.xiaoxiaole.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(66,37,'<com.evilsunflower.xiaoxiaole.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(67,106,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(68,27,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(69,107,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(70,25,'<com.evilsunflower.xiaoxiaole.MainView: void onCreate(android.os.Bundle)>',56,'s',NULL),(71,23,'<com.safesys.onekeyvpn.service.OpenVpnService: void daemonStart(java.io.File)>',27,'r',0),(72,20,'<com.safesys.onekeyvpn.EnterPassphrase: void onCreate(android.os.Bundle)>',6,'s',NULL),(73,83,'<com.safesys.onekeyvpn.service.ManagementThread: void onState(java.lang.String)>',44,'r',0),(74,40,'<com.evilsunflower.farmer.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(75,41,'<com.airpush.android.UserDetailsReceiver: void onReceive(android.content.Context,android.content.Intent)>',36,'s',NULL),(76,36,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',81,'s',NULL),(77,36,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',160,'s',NULL),(78,36,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',239,'s',NULL),(79,36,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',172,'a',NULL),(80,42,'<com.airpush.android.MessageReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'s',NULL),(81,109,'<com.evilsunflower.farmer.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(82,36,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',91,'a',NULL),(83,43,'<com.airpush.android.DeliveryReceiver: void onReceive(android.content.Context,android.content.Intent)>',65,'s',NULL),(84,110,'<com.madhouse.android.ads._: com.madhouse.android.ads.c _(android.content.Context)>',11,'p',NULL),(85,26,'<com.evilsunflower.farmer.ZookeeperIQ: void onCreate(android.os.Bundle)>',38,'s',NULL),(86,34,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',82,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,5,1),(2,6,1),(3,7,7),(4,10,1),(5,11,1),(6,13,9),(7,18,7),(8,20,1),(9,21,10),(10,22,10),(11,23,1),(12,24,10),(13,25,10),(14,26,9),(15,27,10),(16,28,10),(17,30,10),(18,31,10),(19,36,11),(20,38,1),(21,39,12),(22,40,13),(23,41,1),(24,42,14),(25,44,15),(26,45,9),(27,47,14),(28,48,12),(29,49,7),(30,50,16),(31,51,12),(32,52,17),(33,55,9),(34,56,9),(35,57,9),(36,59,17),(37,60,11),(38,61,1),(39,62,9),(40,63,1),(41,65,7),(42,66,9),(43,67,9),(44,68,14),(45,69,11),(46,70,11),(47,71,9),(48,73,12),(49,72,12),(50,74,12),(51,77,12),(52,78,12),(53,79,14),(54,80,14),(55,82,9),(56,83,9),(57,84,12),(58,85,14),(59,86,14),(60,87,1),(61,89,14),(62,90,12),(63,91,12),(64,92,1),(65,93,9),(66,95,12),(67,96,12),(68,97,9),(69,98,1),(70,99,12),(71,100,9),(72,101,9),(73,102,1),(74,103,9),(75,104,9),(76,105,9),(77,106,11),(78,107,11),(79,110,12),(80,111,9),(81,112,9),(82,113,9),(83,115,9),(84,116,9),(85,117,9),(86,119,9),(87,120,9),(88,122,14),(89,121,14),(90,123,14),(91,126,12),(92,127,12),(93,128,9),(94,130,12),(95,131,12),(96,133,12),(97,132,12),(98,134,19),(99,136,9),(100,137,9),(101,138,12),(102,139,12),(103,140,19),(104,141,12),(105,143,14),(106,144,14),(107,145,1),(108,146,9),(109,147,9),(110,148,9),(111,150,1),(112,151,9),(113,152,12),(114,153,11),(115,154,9),(116,156,12),(117,157,1),(118,158,9),(119,160,1),(120,161,12),(121,164,12),(122,165,9),(123,167,9),(124,168,14),(125,170,9),(126,171,14),(127,172,9),(128,173,17),(129,174,1),(130,175,9),(131,176,9),(132,177,17),(133,178,1),(134,179,19),(135,180,19),(136,181,9),(137,182,9),(138,183,19),(139,185,19),(140,186,12),(141,187,12),(142,188,9),(143,189,9),(144,190,11),(145,191,11),(146,194,22),(147,195,23),(148,196,24),(149,197,22),(150,198,25),(151,199,22),(152,200,25),(153,201,22),(154,202,25),(155,203,14),(156,204,22),(157,205,24),(158,206,23),(159,207,1),(160,208,1),(161,209,11),(162,211,22),(163,212,22),(164,213,25),(165,214,22),(166,215,22),(167,216,25),(168,217,25),(169,218,25),(170,220,9),(171,221,17),(172,222,17);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,5,1),(2,6,3),(3,10,1),(4,11,3),(5,20,1),(6,23,3),(7,38,1),(8,41,3),(9,52,4),(10,56,4),(11,59,4),(12,61,1),(13,63,3),(14,87,1),(15,92,3),(16,98,3),(17,102,1),(18,145,1),(19,150,3),(20,157,1),(21,160,3),(22,174,3),(23,178,1),(24,207,1),(25,208,3);
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
INSERT INTO `IClasses` VALUES (1,1,'com/allen/portal/Settings'),(2,2,'com/eguan/state/Dialog'),(3,3,'com/eguan/state/Dialog'),(4,4,'com/eguan/state/StateService'),(5,8,'com/eguan/state/Dialog'),(6,9,'com/eguan/state/Dialog'),(7,12,'(.*)'),(8,14,'com/waps/OffersWebView'),(9,15,'com/waps/OffersWebView'),(10,16,'com/google/update/Dialog'),(11,17,'com/google/update/Dialog'),(12,19,'NULL-CONSTANT'),(13,29,'com/google/update/UpdateService'),(14,32,'com/google/update/Dialog'),(15,33,'com/safesys/onekeyvpn/AdvancedSettings'),(16,34,'com/google/update/Dialog'),(17,35,'com/safesys/onekeyvpn/service/OpenVpnService'),(18,43,'com/safesys/onekeyvpn/service/OpenVpnService'),(19,46,'com/safesys/onekeyvpn/service/OpenVpnService'),(20,54,'com/safesys/onekeyvpn/service/OpenVpnService'),(21,53,'com/waps/OffersWebView'),(22,57,'com.google.android.maps.MapsActivity'),(23,58,'com/safesys/onekeyvpn/service/OpenVpnService'),(24,64,'com/safesys/onekeyvpn/service/OpenVpnService'),(25,76,'(.*)'),(26,75,'com/google/update/Dialog'),(27,81,'com/google/update/Dialog'),(28,88,'com/livegame/wallpaperhaidibz/SettingsActivity'),(29,94,'com/google/update/UpdateService'),(30,97,'com/adwo/adsdk/AdwoAdBrowserActivity'),(31,104,'com.google.android.maps.MapsActivity'),(32,105,'com.google.android.maps.MapsActivity'),(33,103,'com.google.android.maps.MapsActivity'),(34,109,'com/google/update/Dialog'),(35,114,'com/google/update/Dialog'),(36,117,'com.google.android.maps.MapsActivity'),(37,118,'com/google/update/Dialog'),(38,125,'com/google/update/Dialog'),(39,124,'com/google/update/Dialog'),(40,129,'com/google/update/Dialog'),(41,128,'com.google.android.maps.MapsActivity'),(42,135,'com/waps/OffersWebView'),(43,146,'com/adwo/adsdk/AdwoAdBrowserActivity'),(44,149,'com/google/update/UpdateService'),(45,148,'com.google.android.maps.MapsActivity'),(46,154,'com.google.android.maps.MapsActivity'),(47,155,'com/waps/OffersWebView'),(48,158,'com.google.android.maps.MapsActivity'),(49,162,'com/waps/OffersWebView'),(50,165,'com.google.android.maps.MapsActivity'),(51,166,'com/evilsunflower/xiaoxiaole/UpdateService'),(52,169,'NULL-CONSTANT'),(53,167,'com.google.android.maps.MapsActivity'),(54,172,'com/adwo/adsdk/AdwoAdBrowserActivity'),(55,175,'com.google.android.maps.MapsActivity'),(56,176,'com.google.android.maps.MapsActivity'),(57,184,'com/evilsunflower/xiaoxiaole/UpdateService'),(58,188,'com.google.android.maps.MapsActivity'),(59,189,'com.google.android.maps.MapsActivity'),(60,192,'com/safesys/onekeyvpn/service/OpenVpnService'),(61,193,'com/evilsunflower/farmer/UpdateService'),(62,219,'com/evilsunflower/farmer/UpdateService');
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
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,13,3),(2,26,4),(3,36,6),(4,39,7),(5,42,8),(6,45,9),(7,47,10),(8,48,11),(9,51,12),(10,52,13),(11,55,14),(12,56,15),(13,60,16),(14,59,17),(15,62,18),(16,66,19),(17,68,20),(18,69,21),(19,70,23),(20,71,24),(21,72,25),(22,73,26),(23,74,27),(24,79,28),(25,80,29),(26,82,30),(27,83,31),(28,84,32),(29,85,33),(30,86,34),(31,90,35),(32,91,36),(33,93,37),(34,95,38),(35,96,39),(36,99,40),(37,100,41),(38,101,42),(39,103,43),(40,106,44),(41,107,45),(42,111,46),(43,113,47),(44,110,48),(45,112,49),(46,117,50),(47,115,51),(48,116,52),(49,122,53),(50,123,54),(51,121,55),(52,128,56),(53,126,57),(54,127,58),(55,136,59),(56,137,60),(57,138,61),(58,139,62),(59,141,63),(60,148,64),(61,147,65),(62,152,66),(63,151,67),(64,154,68),(65,156,69),(66,158,70),(67,161,71),(68,165,72),(69,164,73),(70,167,74),(71,168,75),(72,170,76),(73,171,77),(74,173,78),(75,175,79),(76,176,80),(77,177,81),(78,181,82),(79,182,83),(80,186,84),(81,187,85),(82,188,86),(83,189,87),(84,203,88),(85,209,89),(86,220,91),(87,221,92),(88,222,93);
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
) ENGINE=InnoDB AUTO_INCREMENT=250 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,2,'MSG'),(2,2,'TYPEdsada'),(3,3,'TYPEdsada'),(4,8,'MSG'),(5,8,'TYPEdsada'),(6,9,'TYPEdsada'),(7,14,'UrlPath'),(8,14,'ACTIVITY_FLAG'),(9,14,'isFinshClose'),(10,14,'offers_webview_tag'),(11,15,'Notify_Url_Params'),(12,15,'UrlPath'),(13,15,'ACTIVITY_FLAG'),(14,15,'isFinshClose'),(15,15,'offers_webview_tag'),(16,16,'MSG'),(17,16,'TYPEdsada'),(18,17,'TYPEdsada'),(19,21,'android.intent.extra.INTENT'),(20,22,'android.intent.extra.INTENT'),(21,24,'android.intent.extra.TITLE'),(22,24,'android.intent.extra.INTENT'),(23,25,'android.intent.extra.INTENT'),(24,27,'android.intent.extra.TITLE'),(25,27,'android.intent.extra.INTENT'),(26,28,'android.intent.extra.INTENT'),(27,30,'android.intent.extra.TITLE'),(28,30,'android.intent.extra.INTENT'),(29,31,'android.intent.extra.TITLE'),(30,31,'android.intent.extra.INTENT'),(31,32,'MSG'),(32,32,'TYPEdsada'),(33,33,'hasDaemonsStarted'),(34,34,'TYPEdsada'),(35,39,'android.intent.extra.TEXT'),(36,40,'org.openintents.extra.TITLE'),(37,39,'android.intent.extra.SUBJECT'),(38,39,'android.intent.extra.EMAIL'),(39,42,'sms_body'),(40,44,'android.live_wallpaper.package'),(41,44,'android.live_wallpaper.settings'),(42,48,'android.intent.extra.EMAIL'),(43,51,'android.intent.extra.TEXT'),(44,51,'android.intent.extra.EMAIL'),(45,53,'USER_ID'),(46,53,'CLIENT_PACKAGE'),(47,53,'Offers_URL'),(48,53,'offers_webview_tag'),(49,53,'URL_PARAMS'),(50,72,'android.intent.extra.EMAIL'),(51,73,'android.intent.extra.TEXT'),(52,74,'android.intent.extra.TEXT'),(53,73,'android.intent.extra.SUBJECT'),(54,74,'android.intent.extra.SUBJECT'),(55,73,'android.intent.extra.EMAIL'),(56,74,'android.intent.extra.EMAIL'),(57,75,'MSG'),(58,75,'TYPEdsada'),(59,79,'sms_body'),(60,80,'sms_body'),(61,81,'TYPEdsada'),(62,78,'android.intent.extra.TEXT'),(63,78,'android.intent.extra.SUBJECT'),(64,78,'android.intent.extra.EMAIL'),(65,84,'android.intent.extra.TEXT'),(66,84,'android.intent.extra.SUBJECT'),(67,84,'android.intent.extra.EMAIL'),(68,90,'android.intent.extra.EMAIL'),(69,91,'android.intent.extra.EMAIL'),(70,95,'android.intent.extra.TEXT'),(71,96,'android.intent.extra.TEXT'),(72,97,'url'),(73,95,'android.intent.extra.EMAIL'),(74,96,'android.intent.extra.EMAIL'),(75,109,'MSG'),(76,110,'android.intent.extra.TEXT'),(77,109,'TYPEdsada'),(78,110,'android.intent.extra.EMAIL'),(79,114,'TYPEdsada'),(80,118,'MSG'),(81,118,'TYPEdsada'),(82,121,'sms_body'),(83,124,'MSG'),(84,125,'TYPEdsada'),(85,124,'TYPEdsada'),(86,126,'android.intent.extra.EMAIL'),(87,127,'android.intent.extra.EMAIL'),(88,129,'TYPEdsada'),(89,134,'query'),(90,133,'android.intent.extra.TEXT'),(91,132,'android.intent.extra.TEXT'),(92,135,'USER_ID'),(93,133,'android.intent.extra.SUBJECT'),(94,132,'android.intent.extra.SUBJECT'),(95,135,'CLIENT_PACKAGE'),(96,133,'android.intent.extra.EMAIL'),(97,132,'android.intent.extra.EMAIL'),(98,135,'Offers_URL'),(99,135,'URL_PARAMS'),(100,138,'android.intent.extra.TEXT'),(101,139,'android.intent.extra.TEXT'),(102,138,'android.intent.extra.SUBJECT'),(103,139,'android.intent.extra.SUBJECT'),(104,139,'android.intent.extra.EMAIL'),(105,138,'android.intent.extra.EMAIL'),(106,146,'url'),(107,155,'UrlPath'),(108,155,'ACTIVITY_FLAG'),(109,155,'isFinshClose'),(110,155,'offers_webview_tag'),(111,162,'Notify_Url_Params'),(112,161,'android.intent.extra.TEXT'),(113,162,'UrlPath'),(114,161,'android.intent.extra.EMAIL'),(115,162,'ACTIVITY_FLAG'),(116,162,'isFinshClose'),(117,162,'offers_webview_tag'),(118,164,'android.intent.extra.TEXT'),(119,164,'android.intent.extra.EMAIL'),(120,168,'sms_body'),(121,171,'sms_body'),(122,172,'url'),(123,179,'query'),(124,180,'query'),(125,194,'appId'),(126,194,'type'),(127,194,'apikey'),(128,195,'appId'),(129,195,'type'),(130,195,'apikey'),(131,196,'appId'),(132,196,'type'),(133,196,'apikey'),(134,197,'<INTENT>'),(135,197,'type'),(136,198,'<INTENT>'),(137,198,'type'),(138,199,'<INTENT>'),(139,199,'type'),(140,200,'<INTENT>'),(141,200,'type'),(142,201,'<INTENT>'),(143,201,'type'),(144,202,'<INTENT>'),(145,202,'type'),(146,203,'sms_body'),(147,204,'icon'),(148,204,'appId'),(149,204,'testMode'),(150,204,'type'),(151,204,'apikey'),(152,205,'icon'),(153,205,'appId'),(154,205,'testMode'),(155,205,'type'),(156,205,'apikey'),(157,206,'icon'),(158,206,'appId'),(159,206,'testMode'),(160,206,'type'),(161,206,'apikey'),(162,211,'campId'),(163,211,'text'),(164,211,'title'),(165,211,'creativeId'),(166,211,'appId'),(167,211,'expiry_time'),(168,211,'number'),(169,211,'adType'),(170,211,'type'),(171,211,'sms'),(172,211,'imageurl'),(173,211,'apikey'),(174,212,'campId'),(175,212,'title'),(176,212,'text'),(177,212,'creativeId'),(178,212,'appId'),(179,212,'expiry_time'),(180,212,'link'),(181,212,'adType'),(182,212,'type'),(183,212,'imageurl'),(184,212,'header'),(185,212,'apikey'),(186,213,'campId'),(187,213,'text'),(188,213,'title'),(189,213,'creativeId'),(190,213,'appId'),(191,213,'expiry_time'),(192,213,'number'),(193,213,'adType'),(194,213,'type'),(195,213,'sms'),(196,213,'imageurl'),(197,213,'apikey'),(198,214,'title'),(199,214,'text'),(200,214,'appId'),(201,214,'expiry_time'),(202,214,'number'),(203,214,'adType'),(204,214,'type'),(205,214,'imageurl'),(206,214,'apikey'),(207,215,'campId'),(208,215,'title'),(209,215,'text'),(210,215,'creativeId'),(211,215,'appId'),(212,215,'expiry_time'),(213,215,'link'),(214,215,'adType'),(215,215,'type'),(216,215,'imageurl'),(217,215,'apikey'),(218,216,'campId'),(219,216,'title'),(220,216,'text'),(221,216,'creativeId'),(222,216,'appId'),(223,216,'expiry_time'),(224,216,'link'),(225,216,'adType'),(226,216,'type'),(227,216,'imageurl'),(228,216,'header'),(229,216,'apikey'),(230,217,'title'),(231,217,'text'),(232,217,'appId'),(233,217,'expiry_time'),(234,217,'number'),(235,217,'adType'),(236,217,'type'),(237,217,'imageurl'),(238,217,'apikey'),(239,218,'campId'),(240,218,'title'),(241,218,'text'),(242,218,'creativeId'),(243,218,'appId'),(244,218,'expiry_time'),(245,218,'link'),(246,218,'adType'),(247,218,'type'),(248,218,'imageurl'),(249,218,'apikey');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(5,3,1),(6,4,2),(7,4,3),(8,4,4),(9,5,1),(10,6,3),(11,7,1),(12,8,1),(13,9,4),(14,9,2),(15,9,3),(16,10,5),(17,11,4),(18,11,3),(19,11,2),(20,12,3),(21,13,1),(22,14,6),(23,15,4),(24,15,2),(25,15,3),(26,16,1),(27,17,4),(28,17,2),(29,17,3),(30,18,8),(31,19,8),(32,20,18),(33,21,8),(34,22,20),(35,22,21);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,5,1),(4,7,1),(5,8,1),(6,12,2),(7,13,1),(8,16,1);
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
INSERT INTO `IFData` VALUES (1,18,'package',NULL,NULL,NULL,NULL,NULL),(2,19,'package',NULL,NULL,NULL,NULL,NULL),(3,21,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,13,'application','vnd.android.package-archive'),(2,26,'application','vnd.android.package-archive'),(3,45,'*','*'),(4,59,'(.*)','(.*)'),(5,66,'(.*)','(.*)'),(6,71,'application','vnd.android.package-archive'),(7,78,'message','rfc882'),(8,82,'*','*'),(9,83,'*','*'),(10,93,'(.*)','(.*)'),(11,112,'application','vnd.android.package-archive'),(12,115,'(.*)','(.*)'),(13,116,'(.*)','(.*)'),(14,133,'message','rfc882'),(15,132,'message','rfc882'),(16,136,'*','*'),(17,137,'application','vnd.android.package-archive'),(18,147,'(.*)','(.*)'),(19,151,'(.*)','(.*)'),(20,173,'(.*)','(.*)'),(21,181,'*','*'),(22,182,'*','*'),(23,221,'(.*)','(.*)');
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
INSERT INTO `IPackages` VALUES (1,1,'com.allen'),(2,2,'com.allen'),(3,3,'com.allen'),(4,4,'com.allen'),(5,5,'com.allen'),(6,6,'com.allen'),(7,8,'com.allen'),(8,9,'com.allen'),(9,10,'com.ps.blackwhite'),(10,11,'com.ps.blackwhite'),(11,12,'(.*)'),(12,14,'com.ps.blackwhite'),(13,15,'com.ps.blackwhite'),(14,16,'com.ps.blackwhite'),(15,17,'com.ps.blackwhite'),(16,19,'NULL-CONSTANT'),(17,20,'com.noshufou.android.su'),(18,23,'com.noshufou.android.su'),(19,29,'com.ps.blackwhite'),(20,32,'com.ps.blackwhite'),(21,33,'com.safesys.onekeyvpn'),(22,34,'com.ps.blackwhite'),(23,35,'com.safesys.onekeyvpn'),(24,38,'(.*)'),(25,41,'(.*)'),(26,43,'com.safesys.onekeyvpn'),(27,46,'com.safesys.onekeyvpn'),(28,54,'com.safesys.onekeyvpn'),(29,53,'com.livegame.wallpaperhaidibz'),(30,57,'com.google.android.apps.maps'),(31,58,'com.safesys.onekeyvpn'),(32,61,'com.noshufou.android.su'),(33,63,'com.noshufou.android.su'),(34,64,'com.safesys.onekeyvpn'),(35,76,'(.*)'),(36,75,'com.alan.siwameinv3'),(37,81,'com.alan.siwameinv3'),(38,87,'com.noshufou.android.su'),(39,88,'com.livegame.wallpaperhaidibz'),(40,92,'com.noshufou.android.su'),(41,94,'com.livegame.wallpaperhaidibz'),(42,97,'com.evilsunflower.xiaoxiaole'),(43,98,'com.alan.siwameinv3'),(44,102,'com.alan.siwameinv3'),(45,104,'com.google.android.apps.maps'),(46,105,'com.google.android.apps.maps'),(47,103,'com.google.android.apps.maps'),(48,109,'com.livegame.wallpaperhaidibz'),(49,114,'com.livegame.wallpaperhaidibz'),(50,117,'com.google.android.apps.maps'),(51,118,'com.alan.siwameinv3'),(52,125,'com.alan.siwameinv3'),(53,124,'com.livegame.wallpaperhaidibz'),(54,129,'com.livegame.wallpaperhaidibz'),(55,128,'com.google.android.apps.maps'),(56,135,'com.alan.siwameinv3'),(57,145,'(.*)'),(58,146,'com.safesys.onekeyvpn'),(59,149,'com.alan.siwameinv3'),(60,148,'com.google.android.apps.maps'),(61,150,'(.*)'),(62,157,'com.noshufou.android.su'),(63,154,'com.google.android.apps.maps'),(64,155,'com.livegame.wallpaperhaidibz'),(65,160,'com.noshufou.android.su'),(66,158,'com.google.android.apps.maps'),(67,162,'com.livegame.wallpaperhaidibz'),(68,166,'com.evilsunflower.xiaoxiaole'),(69,165,'com.google.android.apps.maps'),(70,169,'NULL-CONSTANT'),(71,167,'com.google.android.apps.maps'),(72,172,'com.evilsunflower.farmer'),(73,174,'com.livegame.wallpaperhaidibz'),(74,178,'com.livegame.wallpaperhaidibz'),(75,175,'com.google.android.apps.maps'),(76,176,'com.google.android.apps.maps'),(77,184,'com.evilsunflower.xiaoxiaole'),(78,188,'com.google.android.apps.maps'),(79,189,'com.google.android.apps.maps'),(80,192,'com.safesys.onekeyvpn'),(81,193,'com.evilsunflower.farmer'),(82,207,'com.noshufou.android.su'),(83,208,'com.noshufou.android.su'),(84,219,'com.evilsunflower.farmer');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,9,0),(3,11,0),(4,15,0),(5,16,0),(6,24,0),(7,25,0),(8,26,0),(9,37,0),(10,39,0),(11,40,0),(12,44,0),(13,45,0),(14,54,0),(15,56,0),(16,58,0),(17,66,0),(18,67,0),(19,68,0),(20,69,0),(21,70,0),(22,71,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=223 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,2,0,0),(4,4,0,0),(5,5,1,0),(6,5,1,0),(7,6,1,0),(8,7,0,0),(9,7,0,0),(10,9,1,0),(11,9,1,0),(12,10,0,0),(13,11,1,0),(14,12,0,0),(15,12,0,0),(16,13,0,0),(17,13,0,0),(18,14,1,0),(19,15,0,0),(20,18,1,0),(21,17,1,0),(22,17,1,0),(23,18,1,0),(24,17,1,0),(25,17,1,0),(26,19,1,0),(27,17,1,0),(28,17,1,0),(29,20,0,0),(30,17,1,0),(31,17,1,0),(32,22,0,0),(33,23,0,0),(34,22,0,0),(35,25,0,0),(36,24,1,0),(37,26,1,0),(38,26,1,0),(39,24,1,0),(40,27,1,0),(41,26,1,0),(42,24,1,0),(43,29,0,0),(44,30,1,0),(45,24,1,0),(46,32,0,0),(47,24,1,0),(48,24,1,0),(49,34,1,0),(50,35,1,0),(51,24,1,0),(52,36,1,0),(53,38,0,0),(54,39,0,0),(55,24,1,0),(56,36,1,0),(57,24,0,0),(58,41,0,0),(59,36,1,0),(60,24,1,0),(61,42,1,0),(62,24,1,0),(63,42,1,0),(64,44,0,0),(65,43,1,0),(66,24,1,0),(67,24,1,0),(68,24,1,0),(69,46,1,0),(70,47,1,0),(71,48,1,0),(72,24,1,0),(73,46,1,0),(74,47,1,0),(75,50,0,0),(76,51,0,0),(77,24,1,0),(78,24,1,0),(79,46,1,0),(80,47,1,0),(81,50,0,0),(82,46,1,0),(83,47,1,0),(84,24,1,0),(85,46,1,0),(86,47,1,0),(87,52,1,0),(88,53,0,0),(89,24,1,0),(90,46,1,0),(91,47,1,0),(92,52,1,0),(93,24,1,0),(94,54,0,0),(95,46,1,0),(96,47,1,0),(97,24,0,0),(98,55,1,0),(99,24,1,0),(100,46,1,0),(101,47,1,0),(102,55,1,0),(103,24,0,0),(104,46,0,0),(105,47,0,0),(106,46,1,0),(107,47,1,0),(108,24,1,0),(109,56,0,0),(110,24,1,0),(111,46,1,0),(112,57,1,0),(113,47,1,0),(114,56,0,0),(115,46,1,0),(116,47,1,0),(117,24,0,0),(118,58,0,0),(119,46,1,0),(120,47,1,0),(121,24,1,0),(122,46,1,0),(123,47,1,0),(124,59,0,0),(125,58,0,0),(126,46,1,0),(127,47,1,0),(128,24,0,0),(129,59,0,0),(130,46,1,0),(131,47,1,0),(132,47,1,0),(133,46,1,0),(134,24,1,0),(135,60,0,0),(136,24,1,0),(137,61,1,0),(138,47,1,0),(139,46,1,0),(140,24,1,0),(141,24,1,0),(142,62,1,0),(143,47,1,0),(144,46,1,0),(145,62,1,0),(146,47,0,0),(147,46,1,0),(148,24,0,0),(149,63,0,0),(150,62,1,0),(151,47,1,0),(152,46,1,0),(153,24,1,0),(154,46,0,0),(155,64,0,0),(156,47,1,0),(157,65,1,0),(158,47,0,0),(159,46,1,0),(160,65,1,0),(161,46,1,0),(162,64,0,0),(163,47,1,0),(164,47,1,0),(165,46,0,0),(166,66,0,0),(167,47,0,0),(168,46,1,0),(169,67,0,0),(170,68,1,0),(171,47,1,0),(172,46,0,0),(173,68,1,0),(174,69,1,0),(175,47,0,0),(176,46,0,0),(177,68,1,0),(178,69,1,0),(179,47,1,0),(180,46,1,0),(181,47,1,0),(182,46,1,0),(183,47,1,0),(184,70,0,0),(185,46,1,0),(186,47,1,0),(187,46,1,0),(188,47,0,0),(189,46,0,0),(190,47,1,0),(191,46,1,0),(192,72,0,0),(193,74,0,0),(194,75,1,0),(195,75,1,0),(196,75,1,0),(197,76,1,0),(198,76,1,0),(199,77,1,0),(200,77,1,0),(201,78,1,0),(202,78,1,0),(203,79,1,0),(204,80,1,0),(205,80,1,0),(206,80,1,0),(207,81,1,0),(208,81,1,0),(209,82,1,0),(210,83,1,0),(211,83,1,0),(212,83,1,0),(213,83,1,0),(214,83,1,0),(215,83,1,0),(216,83,1,0),(217,83,1,0),(218,83,1,0),(219,85,0,0),(220,86,1,0),(221,86,1,0),(222,86,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=746 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,33,17,2,NULL),(2,35,23,2,NULL),(3,58,23,2,NULL),(4,37,16,2,NULL),(5,38,16,2,NULL),(6,41,16,2,NULL),(7,50,16,2,NULL),(8,220,16,2,NULL),(9,222,16,2,NULL),(10,197,16,2,NULL),(11,198,16,2,NULL),(12,199,16,2,NULL),(13,200,16,2,NULL),(14,201,16,2,NULL),(15,202,16,2,NULL),(16,203,16,2,NULL),(17,209,16,2,NULL),(18,194,16,2,NULL),(19,195,16,2,NULL),(20,196,16,2,NULL),(21,204,16,2,NULL),(22,205,16,2,NULL),(23,206,16,2,NULL),(24,210,16,2,NULL),(25,211,16,2,NULL),(26,212,16,2,NULL),(27,213,16,2,NULL),(28,214,16,2,NULL),(29,215,16,2,NULL),(30,216,16,2,NULL),(31,217,16,2,NULL),(32,218,16,2,NULL),(33,170,16,2,NULL),(34,177,16,2,NULL),(35,142,16,2,NULL),(36,145,16,2,NULL),(37,150,16,2,NULL),(38,52,16,2,NULL),(39,56,16,2,NULL),(40,192,23,2,NULL),(41,43,23,2,NULL),(42,50,1,2,NULL),(43,50,9,2,NULL),(44,50,11,2,NULL),(45,50,15,2,NULL),(46,50,24,2,NULL),(47,50,69,2,NULL),(48,50,26,2,NULL),(49,50,39,2,NULL),(50,50,40,2,NULL),(51,50,44,2,NULL),(52,50,25,2,NULL),(53,50,37,2,NULL),(54,50,71,2,NULL),(55,50,45,2,NULL),(56,50,54,2,NULL),(57,50,56,2,NULL),(58,50,58,2,NULL),(59,50,66,2,NULL),(60,54,23,2,NULL),(61,37,24,2,NULL),(62,38,24,2,NULL),(63,41,24,2,NULL),(64,220,24,2,NULL),(65,222,24,2,NULL),(66,197,24,2,NULL),(67,198,24,2,NULL),(68,199,24,2,NULL),(69,200,24,2,NULL),(70,201,24,2,NULL),(71,202,24,2,NULL),(72,203,24,2,NULL),(73,209,24,2,NULL),(74,194,24,2,NULL),(75,195,24,2,NULL),(76,196,24,2,NULL),(77,204,24,2,NULL),(78,205,24,2,NULL),(79,206,24,2,NULL),(80,210,24,2,NULL),(81,211,24,2,NULL),(82,212,24,2,NULL),(83,213,24,2,NULL),(84,214,24,2,NULL),(85,215,24,2,NULL),(86,216,24,2,NULL),(87,217,24,2,NULL),(88,218,24,2,NULL),(89,170,24,2,NULL),(90,177,24,2,NULL),(91,142,24,2,NULL),(92,145,24,2,NULL),(93,150,24,2,NULL),(94,52,24,2,NULL),(95,56,24,2,NULL),(96,37,69,2,NULL),(97,38,69,2,NULL),(98,41,69,2,NULL),(99,220,69,2,NULL),(100,222,69,2,NULL),(101,197,69,2,NULL),(102,198,69,2,NULL),(103,199,69,2,NULL),(104,200,69,2,NULL),(105,201,69,2,NULL),(106,202,69,2,NULL),(107,203,69,2,NULL),(108,209,69,2,NULL),(109,194,69,2,NULL),(110,195,69,2,NULL),(111,196,69,2,NULL),(112,204,69,2,NULL),(113,205,69,2,NULL),(114,206,69,2,NULL),(115,210,69,2,NULL),(116,211,69,2,NULL),(117,212,69,2,NULL),(118,213,69,2,NULL),(119,214,69,2,NULL),(120,215,69,2,NULL),(121,216,69,2,NULL),(122,217,69,2,NULL),(123,218,69,2,NULL),(124,170,69,2,NULL),(125,177,69,2,NULL),(126,142,69,2,NULL),(127,145,69,2,NULL),(128,150,69,2,NULL),(129,52,69,2,NULL),(130,56,69,2,NULL),(131,219,38,2,NULL),(132,37,26,2,NULL),(133,38,26,2,NULL),(134,41,26,2,NULL),(135,220,26,2,NULL),(136,222,26,2,NULL),(137,197,26,2,NULL),(138,198,26,2,NULL),(139,199,26,2,NULL),(140,200,26,2,NULL),(141,201,26,2,NULL),(142,202,26,2,NULL),(143,203,26,2,NULL),(144,209,26,2,NULL),(145,194,26,2,NULL),(146,195,26,2,NULL),(147,196,26,2,NULL),(148,204,26,2,NULL),(149,205,26,2,NULL),(150,206,26,2,NULL),(151,210,26,2,NULL),(152,211,26,2,NULL),(153,212,26,2,NULL),(154,213,26,2,NULL),(155,214,26,2,NULL),(156,215,26,2,NULL),(157,216,26,2,NULL),(158,217,26,2,NULL),(159,218,26,2,NULL),(160,170,26,2,NULL),(161,177,26,2,NULL),(162,142,26,2,NULL),(163,145,26,2,NULL),(164,150,26,2,NULL),(165,52,26,2,NULL),(166,56,26,2,NULL),(167,220,1,2,NULL),(168,222,1,2,NULL),(169,220,9,2,NULL),(170,222,9,2,NULL),(171,220,11,2,NULL),(172,222,11,2,NULL),(173,220,15,2,NULL),(174,222,15,2,NULL),(175,220,39,2,NULL),(176,222,39,2,NULL),(177,220,40,2,NULL),(178,222,40,2,NULL),(179,220,44,2,NULL),(180,222,44,2,NULL),(181,220,25,2,NULL),(182,222,25,2,NULL),(183,220,37,2,NULL),(184,222,37,2,NULL),(185,220,71,2,NULL),(186,222,71,2,NULL),(187,220,45,2,NULL),(188,222,45,2,NULL),(189,220,54,2,NULL),(190,222,54,2,NULL),(191,220,56,2,NULL),(192,222,56,2,NULL),(193,220,58,2,NULL),(194,222,58,2,NULL),(195,220,66,2,NULL),(196,222,66,2,NULL),(197,197,1,2,NULL),(198,198,1,2,NULL),(199,199,1,2,NULL),(200,200,1,2,NULL),(201,201,1,2,NULL),(202,202,1,2,NULL),(203,203,1,2,NULL),(204,209,1,2,NULL),(205,197,9,2,NULL),(206,198,9,2,NULL),(207,199,9,2,NULL),(208,200,9,2,NULL),(209,201,9,2,NULL),(210,202,9,2,NULL),(211,203,9,2,NULL),(212,209,9,2,NULL),(213,197,11,2,NULL),(214,198,11,2,NULL),(215,199,11,2,NULL),(216,200,11,2,NULL),(217,201,11,2,NULL),(218,202,11,2,NULL),(219,203,11,2,NULL),(220,209,11,2,NULL),(221,197,15,2,NULL),(222,198,15,2,NULL),(223,199,15,2,NULL),(224,200,15,2,NULL),(225,201,15,2,NULL),(226,202,15,2,NULL),(227,203,15,2,NULL),(228,209,15,2,NULL),(229,197,39,2,NULL),(230,198,39,2,NULL),(231,199,39,2,NULL),(232,200,39,2,NULL),(233,201,39,2,NULL),(234,202,39,2,NULL),(235,203,39,2,NULL),(236,209,39,2,NULL),(237,197,40,2,NULL),(238,198,40,2,NULL),(239,199,40,2,NULL),(240,200,40,2,NULL),(241,201,40,2,NULL),(242,202,40,2,NULL),(243,203,40,2,NULL),(244,209,40,2,NULL),(245,197,44,2,NULL),(246,198,44,2,NULL),(247,199,44,2,NULL),(248,200,44,2,NULL),(249,201,44,2,NULL),(250,202,44,2,NULL),(251,203,44,2,NULL),(252,209,44,2,NULL),(253,197,25,2,NULL),(254,198,25,2,NULL),(255,199,25,2,NULL),(256,200,25,2,NULL),(257,201,25,2,NULL),(258,202,25,2,NULL),(259,37,58,2,NULL),(260,203,25,2,NULL),(261,38,58,2,NULL),(262,209,25,2,NULL),(263,41,58,2,NULL),(264,197,37,2,NULL),(265,197,58,2,NULL),(266,198,37,2,NULL),(267,198,58,2,NULL),(268,199,37,2,NULL),(269,199,58,2,NULL),(270,200,37,2,NULL),(271,200,58,2,NULL),(272,201,37,2,NULL),(273,201,58,2,NULL),(274,202,37,2,NULL),(275,202,58,2,NULL),(276,203,37,2,NULL),(277,203,58,2,NULL),(278,209,37,2,NULL),(279,209,58,2,NULL),(280,197,71,2,NULL),(281,194,58,2,NULL),(282,198,71,2,NULL),(283,195,58,2,NULL),(284,199,71,2,NULL),(285,196,58,2,NULL),(286,200,71,2,NULL),(287,204,58,2,NULL),(288,201,71,2,NULL),(289,205,58,2,NULL),(290,202,71,2,NULL),(291,206,58,2,NULL),(292,203,71,2,NULL),(293,210,58,2,NULL),(294,209,71,2,NULL),(295,211,58,2,NULL),(296,197,45,2,NULL),(297,212,58,2,NULL),(298,198,45,2,NULL),(299,213,58,2,NULL),(300,199,45,2,NULL),(301,214,58,2,NULL),(302,200,45,2,NULL),(303,215,58,2,NULL),(304,201,45,2,NULL),(305,216,58,2,NULL),(306,202,45,2,NULL),(307,217,58,2,NULL),(308,203,45,2,NULL),(309,218,58,2,NULL),(310,209,45,2,NULL),(311,170,58,2,NULL),(312,197,54,2,NULL),(313,177,58,2,NULL),(314,198,54,2,NULL),(315,142,58,2,NULL),(316,199,54,2,NULL),(317,145,58,2,NULL),(318,200,54,2,NULL),(319,150,58,2,NULL),(320,201,54,2,NULL),(321,52,58,2,NULL),(322,202,54,2,NULL),(323,56,58,2,NULL),(324,203,54,2,NULL),(325,52,1,2,NULL),(326,209,54,2,NULL),(327,56,1,2,NULL),(328,197,56,2,NULL),(329,52,9,2,NULL),(330,198,56,2,NULL),(331,56,9,2,NULL),(332,199,56,2,NULL),(333,52,11,2,NULL),(334,200,56,2,NULL),(335,56,11,2,NULL),(336,201,56,2,NULL),(337,52,15,2,NULL),(338,202,56,2,NULL),(339,56,15,2,NULL),(340,203,56,2,NULL),(341,52,39,2,NULL),(342,209,56,2,NULL),(343,56,39,2,NULL),(344,197,66,2,NULL),(345,52,40,2,NULL),(346,198,66,2,NULL),(347,56,40,2,NULL),(348,199,66,2,NULL),(349,52,44,2,NULL),(350,200,66,2,NULL),(351,56,44,2,NULL),(352,201,66,2,NULL),(353,52,25,2,NULL),(354,202,66,2,NULL),(355,56,25,2,NULL),(356,203,66,2,NULL),(357,52,37,2,NULL),(358,209,66,2,NULL),(359,56,37,2,NULL),(360,37,39,2,NULL),(361,52,71,2,NULL),(362,38,39,2,NULL),(363,56,71,2,NULL),(364,41,39,2,NULL),(365,52,45,2,NULL),(366,194,39,2,NULL),(367,56,45,2,NULL),(368,195,39,2,NULL),(369,52,54,2,NULL),(370,196,39,2,NULL),(371,56,54,2,NULL),(372,204,39,2,NULL),(373,52,56,2,NULL),(374,205,39,2,NULL),(375,56,56,2,NULL),(376,206,39,2,NULL),(377,52,66,2,NULL),(378,210,39,2,NULL),(379,56,66,2,NULL),(380,211,39,2,NULL),(381,75,12,2,NULL),(382,212,39,2,NULL),(383,75,53,2,NULL),(384,213,39,2,NULL),(385,75,64,2,NULL),(386,214,39,2,NULL),(387,81,12,2,NULL),(388,215,39,2,NULL),(389,81,53,2,NULL),(390,216,39,2,NULL),(391,81,64,2,NULL),(392,217,39,2,NULL),(393,118,12,2,NULL),(394,218,39,2,NULL),(395,118,53,2,NULL),(396,170,39,2,NULL),(397,118,64,2,NULL),(398,177,39,2,NULL),(399,125,12,2,NULL),(400,142,39,2,NULL),(401,145,39,2,NULL),(402,125,53,2,NULL),(403,150,39,2,NULL),(404,125,64,2,NULL),(405,193,38,2,NULL),(406,149,14,2,NULL),(407,37,40,2,NULL),(408,149,55,2,NULL),(409,149,65,2,NULL),(410,38,40,2,NULL),(411,37,66,2,NULL),(412,41,40,2,NULL),(413,38,66,2,NULL),(414,194,40,2,NULL),(415,41,66,2,NULL),(416,195,40,2,NULL),(417,194,66,2,NULL),(418,196,40,2,NULL),(419,195,66,2,NULL),(420,204,40,2,NULL),(421,196,66,2,NULL),(422,205,40,2,NULL),(423,204,66,2,NULL),(424,206,40,2,NULL),(425,205,66,2,NULL),(426,210,40,2,NULL),(427,206,66,2,NULL),(428,211,40,2,NULL),(429,210,66,2,NULL),(430,212,40,2,NULL),(431,211,66,2,NULL),(432,213,40,2,NULL),(433,212,66,2,NULL),(434,214,40,2,NULL),(435,213,66,2,NULL),(436,215,40,2,NULL),(437,214,66,2,NULL),(438,216,40,2,NULL),(439,215,66,2,NULL),(440,217,40,2,NULL),(441,216,66,2,NULL),(442,218,40,2,NULL),(443,217,66,2,NULL),(444,170,40,2,NULL),(445,218,66,2,NULL),(446,177,40,2,NULL),(447,170,66,2,NULL),(448,142,40,2,NULL),(449,177,66,2,NULL),(450,145,40,2,NULL),(451,142,66,2,NULL),(452,150,40,2,NULL),(453,145,66,2,NULL),(454,194,1,2,NULL),(455,150,66,2,NULL),(456,195,1,2,NULL),(457,196,1,2,NULL),(458,194,9,2,NULL),(459,195,9,2,NULL),(460,196,9,2,NULL),(461,194,11,2,NULL),(462,195,11,2,NULL),(463,196,11,2,NULL),(464,194,15,2,NULL),(465,195,15,2,NULL),(466,196,15,2,NULL),(467,194,44,2,NULL),(468,195,44,2,NULL),(469,196,44,2,NULL),(470,194,25,2,NULL),(471,195,25,2,NULL),(472,196,25,2,NULL),(473,194,37,2,NULL),(474,195,37,2,NULL),(475,196,37,2,NULL),(476,194,71,2,NULL),(477,195,71,2,NULL),(478,196,71,2,NULL),(479,194,45,2,NULL),(480,195,45,2,NULL),(481,196,45,2,NULL),(482,194,54,2,NULL),(483,195,54,2,NULL),(484,196,54,2,NULL),(485,194,56,2,NULL),(486,195,56,2,NULL),(487,196,56,2,NULL),(488,204,1,2,NULL),(489,205,1,2,NULL),(490,206,1,2,NULL),(491,204,9,2,NULL),(492,205,9,2,NULL),(493,206,9,2,NULL),(494,204,11,2,NULL),(495,205,11,2,NULL),(496,206,11,2,NULL),(497,204,15,2,NULL),(498,205,15,2,NULL),(499,206,15,2,NULL),(500,204,44,2,NULL),(501,205,44,2,NULL),(502,206,44,2,NULL),(503,204,25,2,NULL),(504,205,25,2,NULL),(505,206,25,2,NULL),(506,204,37,2,NULL),(507,205,37,2,NULL),(508,206,37,2,NULL),(509,204,71,2,NULL),(510,205,71,2,NULL),(511,206,71,2,NULL),(512,204,45,2,NULL),(513,205,45,2,NULL),(514,206,45,2,NULL),(515,204,54,2,NULL),(516,205,54,2,NULL),(517,206,54,2,NULL),(518,204,56,2,NULL),(519,205,56,2,NULL),(520,206,56,2,NULL),(521,210,1,2,NULL),(522,211,1,2,NULL),(523,212,1,2,NULL),(524,213,1,2,NULL),(525,214,1,2,NULL),(526,215,1,2,NULL),(527,216,1,2,NULL),(528,217,1,2,NULL),(529,218,1,2,NULL),(530,210,9,2,NULL),(531,211,9,2,NULL),(532,212,9,2,NULL),(533,213,9,2,NULL),(534,214,9,2,NULL),(535,215,9,2,NULL),(536,216,9,2,NULL),(537,217,9,2,NULL),(538,218,9,2,NULL),(539,210,11,2,NULL),(540,211,11,2,NULL),(541,212,11,2,NULL),(542,213,11,2,NULL),(543,214,11,2,NULL),(544,215,11,2,NULL),(545,216,11,2,NULL),(546,217,11,2,NULL),(547,218,11,2,NULL),(548,210,15,2,NULL),(549,211,15,2,NULL),(550,212,15,2,NULL),(551,213,15,2,NULL),(552,214,15,2,NULL),(553,215,15,2,NULL),(554,216,15,2,NULL),(555,217,15,2,NULL),(556,218,15,2,NULL),(557,210,44,2,NULL),(558,211,44,2,NULL),(559,212,44,2,NULL),(560,213,44,2,NULL),(561,214,44,2,NULL),(562,215,44,2,NULL),(563,216,44,2,NULL),(564,217,44,2,NULL),(565,218,44,2,NULL),(566,210,25,2,NULL),(567,211,25,2,NULL),(568,212,25,2,NULL),(569,213,25,2,NULL),(570,214,25,2,NULL),(571,215,25,2,NULL),(572,216,25,2,NULL),(573,217,25,2,NULL),(574,218,25,2,NULL),(575,210,37,2,NULL),(576,211,37,2,NULL),(577,212,37,2,NULL),(578,213,37,2,NULL),(579,214,37,2,NULL),(580,215,37,2,NULL),(581,216,37,2,NULL),(582,217,37,2,NULL),(583,218,37,2,NULL),(584,210,71,2,NULL),(585,211,71,2,NULL),(586,212,71,2,NULL),(587,213,71,2,NULL),(588,214,71,2,NULL),(589,215,71,2,NULL),(590,216,71,2,NULL),(591,217,71,2,NULL),(592,218,71,2,NULL),(593,210,45,2,NULL),(594,211,45,2,NULL),(595,212,45,2,NULL),(596,213,45,2,NULL),(597,214,45,2,NULL),(598,215,45,2,NULL),(599,216,45,2,NULL),(600,217,45,2,NULL),(601,218,45,2,NULL),(602,210,54,2,NULL),(603,211,54,2,NULL),(604,212,54,2,NULL),(605,213,54,2,NULL),(606,214,54,2,NULL),(607,215,54,2,NULL),(608,216,54,2,NULL),(609,217,54,2,NULL),(610,218,54,2,NULL),(611,210,56,2,NULL),(612,211,56,2,NULL),(613,212,56,2,NULL),(614,213,56,2,NULL),(615,214,56,2,NULL),(616,215,56,2,NULL),(617,216,56,2,NULL),(618,217,56,2,NULL),(619,218,56,2,NULL),(620,37,44,2,NULL),(621,38,44,2,NULL),(622,41,44,2,NULL),(623,170,44,2,NULL),(624,177,44,2,NULL),(625,142,44,2,NULL),(626,145,44,2,NULL),(627,150,44,2,NULL),(628,37,45,2,NULL),(629,38,45,2,NULL),(630,41,45,2,NULL),(631,170,45,2,NULL),(632,177,45,2,NULL),(633,142,45,2,NULL),(634,145,45,2,NULL),(635,150,45,2,NULL),(636,142,1,2,NULL),(637,145,1,2,NULL),(638,150,1,2,NULL),(639,142,9,2,NULL),(640,145,9,2,NULL),(641,150,9,2,NULL),(642,142,11,2,NULL),(643,145,11,2,NULL),(644,150,11,2,NULL),(645,142,15,2,NULL),(646,145,15,2,NULL),(647,150,15,2,NULL),(648,142,25,2,NULL),(649,145,25,2,NULL),(650,150,25,2,NULL),(651,142,37,2,NULL),(652,145,37,2,NULL),(653,150,37,2,NULL),(654,142,71,2,NULL),(655,145,71,2,NULL),(656,150,71,2,NULL),(657,142,54,2,NULL),(658,145,54,2,NULL),(659,150,54,2,NULL),(660,142,56,2,NULL),(661,145,56,2,NULL),(662,150,56,2,NULL),(663,37,54,2,NULL),(664,38,54,2,NULL),(665,41,54,2,NULL),(666,170,54,2,NULL),(667,177,54,2,NULL),(668,109,12,2,NULL),(669,109,53,2,NULL),(670,109,64,2,NULL),(671,114,12,2,NULL),(672,114,53,2,NULL),(673,114,64,2,NULL),(674,124,12,2,NULL),(675,124,53,2,NULL),(676,124,64,2,NULL),(677,129,12,2,NULL),(678,129,53,2,NULL),(679,129,64,2,NULL),(680,94,14,2,NULL),(681,94,55,2,NULL),(682,94,65,2,NULL),(683,37,56,2,NULL),(684,38,56,2,NULL),(685,41,56,2,NULL),(686,170,56,2,NULL),(687,177,56,2,NULL),(688,1,6,2,NULL),(689,37,1,2,NULL),(690,38,1,2,NULL),(691,41,1,2,NULL),(692,170,1,2,NULL),(693,177,1,2,NULL),(694,2,7,2,NULL),(695,3,7,2,NULL),(696,8,7,2,NULL),(697,9,7,2,NULL),(698,4,8,2,NULL),(699,37,9,2,NULL),(700,38,9,2,NULL),(701,41,9,2,NULL),(702,170,9,2,NULL),(703,177,9,2,NULL),(704,37,11,2,NULL),(705,38,11,2,NULL),(706,41,11,2,NULL),(707,170,11,2,NULL),(708,177,11,2,NULL),(709,37,15,2,NULL),(710,38,15,2,NULL),(711,41,15,2,NULL),(712,37,25,2,NULL),(713,38,25,2,NULL),(714,41,25,2,NULL),(715,37,37,2,NULL),(716,38,37,2,NULL),(717,41,37,2,NULL),(718,37,71,2,NULL),(719,38,71,2,NULL),(720,41,71,2,NULL),(721,16,12,2,NULL),(722,16,53,2,NULL),(723,16,64,2,NULL),(724,17,12,2,NULL),(725,17,53,2,NULL),(726,17,64,2,NULL),(727,32,12,2,NULL),(728,32,53,2,NULL),(729,32,64,2,NULL),(730,34,12,2,NULL),(731,34,53,2,NULL),(732,34,64,2,NULL),(733,29,14,2,NULL),(734,29,55,2,NULL),(735,29,65,2,NULL),(736,170,15,2,NULL),(737,177,15,2,NULL),(738,184,35,2,NULL),(739,170,25,2,NULL),(740,177,25,2,NULL),(741,170,37,2,NULL),(742,177,37,2,NULL),(743,170,71,2,NULL),(744,177,71,2,NULL),(745,166,35,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (13,'android.permission.ACCESS_COARSE_LOCATION'),(14,'android.permission.ACCESS_FINE_LOCATION'),(23,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(8,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(19,'android.permission.BIND_WALLPAPER'),(12,'android.permission.BROADCAST_STICKY'),(6,'android.permission.CALL_PHONE'),(24,'android.permission.CHANGE_CONFIGURATION'),(4,'android.permission.CHANGE_WIFI_STATE'),(18,'android.permission.GET_TASKS'),(20,'android.permission.INSTALL_PACKAGES'),(2,'android.permission.INTERNET'),(7,'android.permission.READ_CONTACTS'),(21,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(10,'android.permission.READ_SMS'),(9,'android.permission.RECEIVE_BOOT_COMPLETED'),(22,'android.permission.SET_WALLPAPER'),(15,'android.permission.VIBRATE'),(16,'android.permission.WAKE_LOCK'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(11,'android.permission.WRITE_SMS'),(17,'com.android.browser.permission.READ_HISTORY_BOOKMARKS');
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
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(2,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(4,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(7,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(8,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(9,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(10,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(11,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(12,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(20,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(21,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(22,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(23,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(24,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(27,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(28,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(29,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(30,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(31,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(32,NULL,NULL,'(.*)',NULL,NULL,NULL),(33,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(34,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(35,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(36,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(37,NULL,NULL,'(.*)',NULL,NULL,NULL),(38,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(39,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(40,NULL,NULL,'(.*)',NULL,NULL,NULL),(41,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(42,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(43,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT((.*))&z=22',NULL,NULL,NULL),(44,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(45,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(46,NULL,NULL,'(.*)',NULL,NULL,NULL),(47,NULL,NULL,'(.*)',NULL,NULL,NULL),(48,NULL,NULL,'(.*)',NULL,NULL,NULL),(49,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(50,NULL,NULL,'http://maps.google.com/maps?q=(.*)((.*))&z=22',NULL,NULL,NULL),(51,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(52,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(53,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(54,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(55,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(56,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT()&z=22',NULL,NULL,NULL),(57,NULL,NULL,'(.*)',NULL,NULL,NULL),(58,NULL,NULL,'(.*)',NULL,NULL,NULL),(59,NULL,NULL,'(.*)',NULL,NULL,NULL),(60,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(61,NULL,NULL,'(.*)',NULL,NULL,NULL),(62,NULL,NULL,'(.*)',NULL,NULL,NULL),(63,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(64,NULL,NULL,'http://maps.google.com/maps?q=(.*)()&z=22',NULL,NULL,NULL),(65,NULL,NULL,'(.*)',NULL,NULL,NULL),(66,NULL,NULL,'(.*)',NULL,NULL,NULL),(67,NULL,NULL,'(.*)',NULL,NULL,NULL),(68,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT((.*))&z=22',NULL,NULL,NULL),(69,NULL,NULL,'(.*)',NULL,NULL,NULL),(70,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT((.*))&z=22',NULL,NULL,NULL),(71,NULL,NULL,'(.*)',NULL,NULL,NULL),(72,NULL,NULL,'http://maps.google.com/maps?q=(.*)((.*))&z=22',NULL,NULL,NULL),(73,NULL,NULL,'(.*)',NULL,NULL,NULL),(74,NULL,NULL,'http://maps.google.com/maps?q=(.*)((.*))&z=22',NULL,NULL,NULL),(75,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(76,NULL,NULL,'(.*)',NULL,NULL,NULL),(77,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(78,NULL,NULL,'(.*)',NULL,NULL,NULL),(79,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT()&z=22',NULL,NULL,NULL),(80,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT()&z=22',NULL,NULL,NULL),(81,NULL,NULL,'(.*)',NULL,NULL,NULL),(82,NULL,NULL,'(.*)',NULL,NULL,NULL),(83,NULL,NULL,'(.*)',NULL,NULL,NULL),(84,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(85,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(86,NULL,NULL,'http://maps.google.com/maps?q=(.*)()&z=22',NULL,NULL,NULL),(87,NULL,NULL,'http://maps.google.com/maps?q=(.*)()&z=22',NULL,NULL,NULL),(88,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(89,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(90,NULL,NULL,'(.*)',NULL,NULL,NULL),(91,NULL,NULL,'(.*)',NULL,NULL,NULL),(92,NULL,NULL,'(.*)',NULL,NULL,NULL),(93,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,3,1),(2,8,2),(3,21,5),(4,49,22),(5,84,90);
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
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,2,1),(10,2,2),(11,2,3),(12,2,4),(13,2,5),(14,2,8),(15,2,9),(16,3,1),(17,3,2),(18,3,8),(19,3,10),(20,3,11),(21,3,12),(22,3,13),(23,4,1),(24,5,1),(25,4,2),(26,5,2),(27,4,3),(28,5,3),(29,4,5),(30,5,5),(31,4,7),(32,5,7),(33,4,8),(34,5,8),(35,4,9),(36,5,10),(37,4,10),(38,5,11),(39,4,11),(40,5,13),(41,4,13),(42,5,14),(43,4,14),(44,5,17),(45,4,15),(46,5,16),(47,4,17),(48,4,16),(49,6,1),(50,6,2),(51,6,18),(52,6,3),(53,6,4),(54,6,5),(55,6,8),(56,6,9),(57,6,13),(58,6,14),(59,7,1),(60,7,2),(61,7,3),(62,7,4),(63,7,5),(64,7,8),(65,7,10),(66,7,11),(67,7,13),(68,7,14),(69,7,18),(70,7,21),(71,7,20),(72,7,23),(73,7,22),(74,7,24);
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

-- Dump completed on 2015-10-12  3:29:29
