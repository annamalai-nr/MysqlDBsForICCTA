-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_165
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
INSERT INTO `ActionStrings` VALUES (18,'(.*)'),(7,'android.appwidget.action.APPWIDGET_UPDATE'),(21,'android.intent.action.BATTERY_CHANGED'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(22,'android.intent.action.CHOOSER'),(17,'android.intent.action.DELETE'),(13,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(12,'android.intent.action.PACKAGE_ADDED'),(24,'android.intent.action.SCREEN_OFF'),(25,'android.intent.action.SCREEN_ON'),(20,'android.intent.action.SEARCH'),(14,'android.intent.action.SEND'),(15,'android.intent.action.SENDTO'),(2,'android.intent.action.SIG_STR'),(11,'android.intent.action.VIEW'),(16,'android.intent.action.WEB_SEARCH'),(5,'android.net.vpn.SETTINGS'),(19,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(9,'android.service.wallpaper.WallpaperService'),(23,'com.android.music.musicservicecommand'),(10,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(6,'myvpn.toggleVpnConnectionAction'),(8,'vpn.connectivity');
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
INSERT INTO `Applications` VALUES (1,'guessclothes.com.game',1),(2,'com.safesys.remover',22),(3,'com.safesys.myvpn',8),(4,'com.livegame.wallpaperlangmanxk',3),(5,'com.gp.zoo',5),(6,'com.gp.solitaire',450),(7,'com.evilsunflower.reader.evilRenxing10',1);
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
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.DEFAULT'),(4,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(2,'com.android.settings.SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'guessclothes.com.game.WhereIsA'),(2,1,'com.waps.OffersWebView'),(3,1,'com.google.ads.AdActivity'),(4,1,'net.youmi.android.AdActivity'),(5,1,'com.google.update.Dialog'),(6,1,'com.google.update.UpdateService'),(7,1,'com.google.update.Receiver'),(8,2,'com.safesys.remover.Uninstall'),(9,2,'com.safesys.remover.ShowTips'),(10,2,'com.adwo.adsdk.AdwoSplashAdActivity'),(11,2,'com.adwo.adsdk.AdwoAdBrowserActivity'),(12,2,'com.safesys.remover.UpdateService'),(13,2,'com.safesys.remover.Receiver'),(14,3,'com.safesys.myvpn.VpnSettings'),(15,3,'com.safesys.myvpn.VpnTypeSelection'),(16,3,'com.safesys.myvpn.editor.PptpProfileEditor'),(17,3,'com.safesys.myvpn.editor.L2tpProfileEditor'),(18,3,'com.safesys.myvpn.editor.L2tpIpsecPskProfileEditor'),(19,3,'com.safesys.myvpn.ToggleVpn'),(20,3,'com.safesys.myvpn.Settings'),(21,3,'com.adwo.adsdk.AdwoSplashAdActivity'),(22,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(23,3,'com.safesys.myvpn.VpnConnectorService'),(24,3,'com.safesys.myvpn.VpnAppWidgetProvider'),(25,3,'com.safesys.myvpn.KeepAlive'),(26,4,'com.livegame.wallpaperlangmanxk.MainActivity'),(27,4,'com.livegame.wallpaperlangmanxk.SettingsActivity'),(28,4,'com.livegame.wallpaperlangmanxk.SelectFolderActivity'),(29,4,'com.google.ads.AdActivity'),(30,4,'com.vpon.adon.android.WebInApp'),(31,4,'com.adwo.adsdk.AdwoSplashAdActivity'),(32,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(33,4,'com.waps.OffersWebView'),(34,4,'com.google.update.Dialog'),(35,4,'com.livegame.wallpaperlangmanxk.WallpaperSlideshow'),(36,4,'com.google.update.UpdateService'),(37,5,'com.gp.zoo.SplashActivity'),(38,4,'com.google.update.Receiver'),(39,5,'com.gp.zoo.MainMenuActivity'),(40,5,'com.gp.zoo.CharacterCreationActivity'),(41,5,'com.gp.zoo.MainMapActivity'),(42,6,'com.gp.solitaire.Solitaire'),(43,5,'com.gp.zoo.HallActivity'),(44,5,'com.gp.zoo.ExamActivity'),(45,5,'com.gp.zoo.StoreActivity'),(46,6,'com.google.update.Dialog'),(47,5,'com.gp.zoo.StoreDetailActivity'),(48,6,'cn.domob.android.ads.DomobActivity'),(49,5,'com.gp.zoo.BagActivity'),(50,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(51,5,'com.gp.zoo.SettingsActivity'),(52,6,'com.google.update.UpdateService'),(53,5,'com.gp.zoo.CreditActivity'),(54,6,'com.google.update.Receiver'),(55,5,'com.gp.zoo.BadgeActivity'),(56,5,'com.gp.zoo.PhotoActivity'),(57,5,'com.gp.zoo.CircusActivity'),(58,5,'com.gp.zoo.HelpActivity'),(59,5,'cn.domob.android.ads.DomobActivity'),(60,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(61,5,'com.adwo.adsdk.AdwoSplashAdActivity'),(62,5,'com.google.update.Dialog'),(63,5,'com.waps.OffersWebView'),(64,5,'com.google.update.UpdateService'),(65,5,'com.google.update.Receiver'),(66,1,'com.google.update.Dialog$2'),(67,1,'com.waps.z'),(68,1,'com.google.update.UpdateService$AA'),(69,1,'com.waps.q'),(70,1,'com.waps.ac'),(71,1,'com.waps.aa'),(72,1,'com.google.update.Dialog$1'),(73,1,'com.waps.AppConnect'),(74,1,'com.waps.o'),(75,2,'com.safesys.remover.ShowTips$1'),(76,2,'com.adwo.adsdk.g'),(77,3,'com.safesys.myvpn.VpnActor'),(78,4,'com.waps.o'),(79,4,'com.google.update.UpdateService$AA'),(80,3,'com.safesys.myvpn.VpnSettings$8'),(81,3,'com.safesys.myvpn.VpnConnectorService$VpnStateReceiver'),(82,2,'com.safesys.remover.Uninstall$uninstallClickListener'),(83,3,'com.adwo.adsdk.D'),(84,4,'com.livegame.wallpaperlangmanxk.MainActivity$2'),(85,3,'android.appwidget.AppWidgetProvider'),(86,4,'com.google.update.Dialog$1'),(87,4,'com.waps.q'),(88,6,'com.ju6.a'),(89,3,'com.safesys.myvpn.VpnSettings$11'),(90,4,'com.waps.AppConnect'),(91,6,'cn.domob.android.ads.DomobAdManager'),(92,6,'cn.domob.android.ads.i$6'),(93,3,'com.adwo.adsdk.g'),(94,4,'com.google.update.Dialog$2'),(95,4,'com.waps.ac'),(96,4,'com.waps.aa'),(97,6,'com.google.update.Dialog$1'),(98,6,'cn.domob.android.ads.i'),(99,4,'com.waps.z'),(100,6,'cn.domob.android.ads.DomobActionReceiver'),(101,6,'cn.domob.android.ads.DomobAdEngine$2'),(102,6,'com.google.update.Dialog$2'),(103,4,'com.livegame.wallpaperlangmanxk.MainActivity$1'),(104,6,'com.google.update.UpdateService$MyThread'),(105,7,'com.evilsunflower.reader.evilRenxing10.BugReportActivity'),(106,7,'com.evilsunflower.reader.FBReader'),(107,7,'com.evilsunflower.reader.CancelActivity'),(108,7,'com.evilsunflower.reader.image.ImageViewActivity'),(109,7,'com.evilsunflower.reader.TOCActivity'),(110,7,'com.evilsunflower.reader.BookmarksActivity'),(111,7,'com.evilsunflower.reader.control.ShowTips'),(112,7,'com.evilsunflower.reader.BookmarkEditActivity'),(113,7,'com.evilsunflower.reader.Starter'),(114,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(115,7,'com.vpon.adon.android.WebInApp'),(116,7,'com.millennialmedia.android.MMAdViewOverlayActivity'),(117,7,'com.millennialmedia.android.VideoPlayer'),(118,7,'net.youmi.android.AdActivity'),(119,7,'com.google.ads.AdActivity'),(120,7,'com.guohead.sdk.GuoheAdActivity'),(121,7,'cn.domob.android.ads.DomobActivity'),(122,7,'com.evilsunflower.reader.control.UpdateService'),(123,7,'com.evilsunflower.reader.control.Receiver'),(124,7,'com.ju6.mms.util.SqliteWrapper'),(125,7,'com.evilsunflower.reader.ui.ZLAndroidActivity'),(126,7,'com.ju6.mms.pdu.PduPersister'),(127,7,'com.ju6.c'),(128,7,'com.evilsunflower.reader.ui.BugReportActivity$1'),(129,7,'net.youmi.android.be'),(130,7,'com.guohead.sdk.adapters.CustomAdapter$4'),(131,7,'net.youmi.android.eo'),(132,7,'com.evilsunflower.reader.ui.ZLAndroidActivity$1'),(133,7,'com.adwo.adsdk.M'),(134,7,'com.baidu.al'),(135,7,'net.youmi.android.t'),(136,7,'com.millennialmedia.android.MillennialMediaView'),(137,7,'com.guohead.sdk.adapters.CustomAdapter$3'),(138,7,'com.baidu.as'),(139,7,'com.madhouse.android.ads._'),(140,7,'com.evilsunflower.reader.control.ShowTips$1');
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
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,2,'URL'),(2,2,'Notify_Id'),(3,6,'ST_MY_PID'),(4,2,'Offers_URL'),(5,2,'WAPS_ID'),(6,1,'WAPS_ID'),(7,2,'CLIENT_PACKAGE'),(8,1,'CLIENT_PACKAGE'),(9,2,'WAPS_PID'),(10,1,'WAPS_PID'),(11,2,'URL_PARAMS'),(12,6,'ST_START_DELAY'),(13,5,'MSG'),(14,2,'APP_ID'),(15,1,'APP_ID'),(16,2,'SHWO_FLAG'),(17,2,'UrlPath'),(18,2,'offers_webview_tag'),(19,2,'DEVICE_ID'),(20,1,'DEVICE_ID'),(21,2,'ACTIVITY_FLAG'),(22,2,'USER_ID'),(23,5,'TYPEdsada'),(24,2,'isFinshClose'),(25,2,'Notify_Url_Params'),(26,18,'dns'),(27,16,'dns'),(28,17,'dns'),(29,22,'shouldShowTitlebar'),(30,22,'shouldMakeOverlayTransparent'),(31,32,'overlayTitle'),(32,33,'WAPS_ID'),(33,26,'WAPS_ID'),(34,31,'Adwo_PID'),(35,34,'TYPEdsada'),(36,21,'Adwo_PID'),(37,18,'user'),(38,16,'user'),(39,33,'UrlPath'),(40,17,'user'),(41,22,'overlayTransition'),(42,22,'shouldResizeOverlay'),(43,18,'server'),(44,16,'server'),(45,17,'server'),(46,16,'encrypt'),(47,25,'profile_name'),(48,30,'url'),(49,22,'shouldShowBottomBar'),(50,11,'shouldEnableBottomBar'),(51,18,'vpnProfileName'),(52,11,'shouldResizeOverlay'),(53,16,'vpnProfileName'),(54,10,'Adwo_PID'),(55,17,'vpnProfileName'),(56,11,'shouldShowTitlebar'),(57,18,'name'),(58,10,'isTestMode'),(59,16,'name'),(60,17,'name'),(61,25,'connection_state'),(62,8,'orderId'),(63,33,'WAPS_PID'),(64,26,'WAPS_PID'),(65,12,'SAFE_PID'),(66,11,'overlayTransition'),(67,12,'SAFE_START'),(68,11,'transitionTime'),(69,11,'shouldMakeOverlayTransparent'),(70,11,'shouldShowBottomBar'),(71,50,'shouldResizeOverlay'),(72,31,'isTestMode'),(73,46,'MSG'),(74,9,'MM'),(75,33,'CLIENT_PACKAGE'),(76,11,'overlayTitle'),(77,18,'secretEnabled'),(78,32,'transitionTime'),(79,11,'url'),(80,17,'secretEnabled'),(81,8,'number'),(82,21,'isTestMode'),(83,14,'vpnProfileName'),(84,18,'secret'),(85,50,'overlayTransition'),(86,17,'secret'),(87,52,'ST_MY_PID'),(88,33,'isFinshClose'),(89,33,'Offers_URL'),(90,33,'DEVICE_ID'),(91,26,'DEVICE_ID'),(92,48,'actType'),(93,32,'shouldShowBottomBar'),(94,52,'ST_START_DELAY'),(95,33,'offers_webview_tag'),(96,22,'transitionTime'),(97,32,'shouldEnableBottomBar'),(98,33,'APP_ID'),(99,26,'APP_ID'),(100,22,'overlayTitle'),(101,18,'vpnType'),(102,16,'vpnType'),(103,17,'vpnType'),(104,30,'adWidth'),(105,32,'overlayTransition'),(106,32,'shouldShowTitlebar'),(107,36,'ST_START_DELAY'),(108,33,'URL_PARAMS'),(109,32,'shouldMakeOverlayTransparent'),(110,32,'url'),(111,33,'URL'),(112,50,'transitionTime'),(113,50,'shouldEnableBottomBar'),(114,46,'TYPEdsada'),(115,32,'shouldResizeOverlay'),(116,33,'SHWO_FLAG'),(117,52,'DOMOB_ALLOW_LOCATION'),(118,34,'MSG'),(119,42,'DOMOB_ALLOW_LOCATION'),(120,26,'CLIENT_PACKAGE'),(121,50,'DOMOB_ALLOW_LOCATION'),(122,33,'Notify_Url_Params'),(123,52,'DOMOB_TEST_MODE'),(124,36,'ST_MY_PID'),(125,42,'DOMOB_TEST_MODE'),(126,27,'folder'),(127,50,'DOMOB_TEST_MODE'),(128,50,'shouldShowBottomBar'),(129,50,'shouldShowTitlebar'),(130,50,'url'),(131,33,'USER_ID'),(132,33,'Notify_Id'),(133,50,'shouldMakeOverlayTransparent'),(134,52,'DOMOB_PID'),(135,42,'DOMOB_PID'),(136,50,'DOMOB_PID'),(137,33,'ACTIVITY_FLAG'),(138,48,'appId'),(139,50,'overlayTitle'),(140,48,'appName'),(141,19,'activeVpnState'),(142,18,'psk'),(143,17,'psk'),(144,22,'url'),(145,14,'vpnType'),(146,18,'password'),(147,16,'password'),(148,17,'password'),(149,22,'shouldEnableBottomBar'),(150,84,'shouldMakeOverlayTransparent'),(151,82,'shouldEnableBottomBar'),(152,85,'cached'),(153,74,'com.cdjm.reader.ui.androidActiviy.RequestedOrientation'),(154,85,'shouldShowBottomBar'),(155,86,'D50EF1926ADD471892E72BCE6D7E032C'),(156,74,'query'),(157,84,'shouldShowBottomBar'),(158,82,'transitionTime'),(159,74,'Market_ID'),(160,74,'com.cdjm.reader.ui.androidActiviy.ChangeCounter'),(161,84,'shouldResizeOverlay'),(162,74,'Wooboo_PID'),(163,84,'cachedAdView'),(164,82,'shouldShowTitlebar'),(165,82,'shouldResizeOverlay'),(166,84,'overlayTitle'),(167,82,'overlayTitle'),(168,74,'Adwo_PID'),(169,82,'shouldShowBottomBar'),(170,84,'shouldEnableBottomBar'),(171,83,'adWidth'),(172,74,'GH_APPKEY'),(173,84,'canAccelerate'),(174,82,'overlayTransition'),(175,85,'videoPosition'),(176,82,'url'),(177,78,'query'),(178,85,'adName'),(179,82,'shouldMakeOverlayTransparent'),(180,86,'D780FBF4215247bcBB1AC0AD33C474FE'),(181,90,'SAFE_PID'),(182,84,'overlayTransition'),(183,84,'shouldShowTitlebar'),(184,83,'url'),(185,86,'172C94EDC717477aBF600D7898A64A8E'),(186,85,'isCachedAd'),(187,85,'ADUrl'),(188,78,'ADUrl'),(189,74,'ADUrl'),(190,86,'ADUrl'),(191,85,'videoCompleted'),(192,85,'videoAd'),(193,85,'logSet'),(194,86,'EB80F3291A8E469c962CA133BDC549D7'),(195,90,'SAFE_START'),(196,79,'MM'),(197,88,'link'),(198,84,'transitionTime');
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
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'s',0,NULL,NULL),(7,7,'r',1,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'s',0,NULL,NULL),(13,13,'r',1,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'s',1,NULL,NULL),(24,24,'r',1,NULL,NULL),(25,25,'r',1,NULL,NULL),(26,26,'a',1,NULL,NULL),(27,27,'a',1,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'s',1,19,NULL),(36,36,'s',0,NULL,NULL),(37,37,'a',1,NULL,NULL),(38,38,'r',1,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',1,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'s',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'r',1,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'s',0,NULL,NULL),(65,65,'r',1,NULL,NULL),(66,69,'r',1,NULL,NULL),(67,80,'r',1,NULL,NULL),(68,81,'r',1,NULL,NULL),(69,83,'r',1,NULL,NULL),(70,85,'r',1,NULL,NULL),(71,87,'r',1,NULL,NULL),(72,100,'r',1,NULL,NULL),(73,105,'a',0,NULL,NULL),(74,106,'a',1,NULL,NULL),(75,107,'a',0,NULL,NULL),(76,108,'a',0,NULL,NULL),(77,109,'a',0,NULL,NULL),(78,110,'a',1,NULL,NULL),(79,111,'a',0,NULL,NULL),(80,112,'a',0,NULL,NULL),(81,113,'a',0,NULL,NULL),(82,114,'a',0,NULL,NULL),(83,115,'a',0,NULL,NULL),(84,116,'a',0,NULL,NULL),(85,117,'a',0,NULL,NULL),(86,118,'a',0,NULL,NULL),(87,119,'a',0,NULL,NULL),(88,120,'a',0,NULL,NULL),(89,121,'a',0,NULL,NULL),(90,122,'s',0,NULL,NULL),(91,123,'r',1,NULL,NULL),(92,131,'r',1,NULL,NULL),(93,132,'r',1,NULL,NULL),(94,133,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,5),(2,2,2),(3,3,7),(4,4,2),(5,5,2),(6,6,6),(7,7,2),(8,8,2),(9,9,5),(10,10,1),(11,11,6),(12,12,6),(13,13,2),(14,14,9),(15,15,8),(16,16,14),(17,17,23),(18,17,14),(19,18,33),(20,19,24),(21,20,33),(22,22,24),(23,21,36),(24,23,13),(25,24,8),(26,25,36),(27,26,8),(28,27,26),(29,28,52),(30,29,34),(31,30,14),(32,31,14),(33,32,52),(34,33,52),(35,34,38),(36,35,14),(37,36,26),(38,37,42),(39,37,52),(40,37,50),(41,38,50),(42,38,52),(43,38,42),(44,39,14),(45,40,33),(46,41,34),(47,42,33),(48,42,28),(49,43,33),(50,44,46),(51,45,50),(52,45,42),(53,45,52),(54,46,33),(55,47,36),(56,48,42),(57,48,52),(58,48,50),(59,49,54),(60,50,46),(61,51,26),(62,52,52),(63,53,19),(64,54,14),(65,55,74),(66,56,78),(67,57,74),(68,58,78),(69,58,74),(70,58,86),(71,58,85),(72,59,74),(73,60,74),(74,61,74),(75,62,74),(76,63,74),(77,64,74),(78,64,78),(79,64,85),(80,64,86),(81,65,86),(82,66,74),(83,67,74),(84,67,78),(85,67,85),(86,67,86),(87,68,86),(88,69,78),(89,69,74),(90,69,86),(91,69,85),(92,70,85),(93,70,86),(94,70,74),(95,70,78),(96,71,86),(97,71,74),(98,71,78),(99,72,78),(100,72,74),(101,72,86),(102,73,86),(103,74,85),(104,74,86),(105,74,74),(106,74,78),(107,75,74),(108,76,85),(109,76,86),(110,76,74),(111,76,78),(112,77,74),(113,77,86),(114,77,78),(115,78,91),(116,79,78),(117,79,86),(118,79,74),(119,80,86),(120,80,74),(121,80,78),(122,81,74),(123,82,74),(124,83,79),(125,84,78),(126,84,74),(127,84,85),(128,84,86);
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
INSERT INTO `ExitPoints` VALUES (1,66,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(2,2,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',321,'a',NULL),(3,7,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(4,67,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(5,2,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',296,'a',NULL),(6,68,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(7,70,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(8,71,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(9,72,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(10,73,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(11,6,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(12,6,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(13,74,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(14,75,'<com.safesys.remover.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(15,76,'<com.adwo.adsdk.g: void run()>',59,'a',NULL),(16,14,'<com.safesys.myvpn.VpnSettings: void openSettings()>',3,'a',NULL),(17,77,'<com.safesys.myvpn.VpnActor: void broadcastConnectivity(java.lang.String,com.safesys.myvpn.wrapper.VpnState,int)>',11,'r',NULL),(18,33,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(19,24,'<com.safesys.myvpn.VpnAppWidgetProvider: void onEnabled(android.content.Context)>',6,'s',NULL),(20,78,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(21,36,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(22,24,'<com.safesys.myvpn.VpnAppWidgetProvider: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',7,'s',NULL),(23,13,'<com.safesys.remover.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(24,8,'<com.safesys.remover.Uninstall: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(25,79,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(26,82,'<com.safesys.remover.Uninstall$uninstallClickListener: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',21,'a',NULL),(27,84,'<com.livegame.wallpaperlangmanxk.MainActivity$2: void onClick(android.view.View)>',35,'a',NULL),(28,52,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(29,86,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(30,14,'<com.safesys.myvpn.VpnSettings: void onAddVpn()>',3,'a',NULL),(31,14,'<com.safesys.myvpn.VpnSettings: void addVpn(com.safesys.myvpn.wrapper.VpnType)>',29,'a',NULL),(32,88,'<com.ju6.a: boolean b()>',178,'p',NULL),(33,52,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(34,38,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(35,89,'<com.safesys.myvpn.VpnSettings$11: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(36,90,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(37,91,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(38,92,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(39,93,'<com.adwo.adsdk.g: void run()>',59,'a',NULL),(40,33,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(41,94,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(42,95,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(43,96,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(44,97,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(45,98,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(46,99,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(47,36,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(48,101,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(49,54,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(50,102,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(51,103,'<com.livegame.wallpaperlangmanxk.MainActivity$1: void onClick(android.view.View)>',37,'a',NULL),(52,104,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(53,19,'<com.safesys.myvpn.ToggleVpn: void sendToggleRequest()>',3,'r',NULL),(54,14,'<com.safesys.myvpn.VpnSettings: void editVpn(com.safesys.myvpn.wrapper.VpnProfile)>',18,'a',NULL),(55,106,'<com.evilsunflower.reader.FBReader: void onNewIntent(android.content.Intent)>',17,'a',NULL),(56,110,'<com.evilsunflower.reader.BookmarksActivity: boolean onContextItemSelected(android.view.MenuItem)>',19,'a',NULL),(57,124,'<com.ju6.mms.util.SqliteWrapper: android.database.Cursor query(android.content.Context,android.content.ContentResolver,android.net.Uri,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String)>',7,'p',NULL),(58,117,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',237,'a',NULL),(59,124,'<com.ju6.mms.util.SqliteWrapper: android.net.Uri insert(android.content.Context,android.content.ContentResolver,android.net.Uri,android.content.ContentValues)>',4,'p',NULL),(60,124,'<com.ju6.mms.util.SqliteWrapper: int update(android.content.Context,android.content.ContentResolver,android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',6,'p',NULL),(61,125,'<com.evilsunflower.reader.ui.ZLAndroidActivity: void onCreate(android.os.Bundle)>',80,'s',NULL),(62,126,'<com.ju6.mms.pdu.PduPersister: void a(com.ju6.mms.pdu.PduPart,android.net.Uri,java.lang.String)>',23,'p',0),(63,127,'<com.ju6.c: boolean b()>',192,'p',NULL),(64,117,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',229,'a',NULL),(65,128,'<com.evilsunflower.reader.ui.BugReportActivity$1: void onClick(android.view.View)>',21,'a',NULL),(66,127,'<com.ju6.c: void run()>',146,'p',NULL),(67,117,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',209,'a',NULL),(68,129,'<net.youmi.android.be: void a(android.content.Context,java.lang.String)>',6,'a',NULL),(69,117,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',189,'a',NULL),(70,117,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',181,'a',NULL),(71,130,'<com.guohead.sdk.adapters.CustomAdapter$4: void onClick(android.view.View)>',4,'a',NULL),(72,134,'<com.baidu.al: void onClick(android.view.View)>',24,'a',NULL),(73,135,'<net.youmi.android.t: void onClick(android.view.View)>',48,'a',NULL),(74,117,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',158,'a',NULL),(75,127,'<com.ju6.c: boolean b()>',272,'p',NULL),(76,136,'<com.millennialmedia.android.MillennialMediaView: void openVideo()>',10,'r',NULL),(77,137,'<com.guohead.sdk.adapters.CustomAdapter$3: void onClick(android.view.View)>',4,'a',NULL),(78,123,'<com.evilsunflower.reader.control.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(79,138,'<com.baidu.as: void e(com.baidu.bl)>',23,'a',NULL),(80,139,'<com.madhouse.android.ads._: com.madhouse.android.ads.m _(android.content.Context)>',11,'p',NULL),(81,106,'<com.evilsunflower.reader.FBReader: void onStart()>',14,'a',NULL),(82,127,'<com.ju6.c: boolean b()>',195,'p',0),(83,140,'<com.evilsunflower.reader.control.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(84,117,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',218,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,10),(2,4,11),(3,6,1),(4,7,1),(5,8,1),(6,9,1),(7,13,1),(8,14,1),(9,20,11),(10,21,1),(11,22,1),(12,23,13),(13,24,14),(14,25,15),(15,26,11),(16,27,15),(17,28,14),(18,29,14),(19,30,11),(20,31,11),(21,32,13),(22,33,11),(23,34,11),(24,35,11),(25,36,15),(26,37,14),(27,38,11),(28,39,14),(29,40,14),(30,41,14),(31,42,15),(32,43,11),(33,44,14),(34,45,11),(35,47,14),(36,48,11),(37,49,15),(38,51,11),(39,52,8),(40,53,16),(41,54,8),(42,55,11),(43,57,1),(44,58,16),(45,60,1),(46,61,14),(47,62,11),(48,63,11),(49,64,13),(50,69,11),(51,70,1),(52,71,1),(53,72,17),(54,75,1),(55,77,1),(56,79,18),(57,82,1),(58,84,1),(59,86,11),(60,87,13),(61,90,14),(62,91,11),(63,92,10),(64,93,11),(65,94,15),(66,95,11),(67,96,11),(68,98,11),(69,99,15),(70,100,14),(71,102,1),(72,103,14),(73,104,1),(74,106,11),(75,107,11),(76,108,11),(77,109,13),(78,110,11),(79,111,11),(80,112,11),(81,113,11),(82,115,15),(83,117,14),(84,119,14),(85,120,14),(86,121,10),(87,122,19),(88,123,14),(89,124,1),(90,125,15),(91,126,1),(92,127,11),(93,128,14),(94,129,11),(95,130,11),(96,132,14),(97,133,11),(98,134,15),(99,135,11),(100,136,16),(101,137,11),(102,138,16),(103,139,14),(104,140,11),(105,141,13),(106,142,6),(107,143,18),(108,146,11),(109,148,11),(110,149,14),(111,150,13),(112,151,11),(113,152,11),(114,153,11),(115,154,11),(116,155,11),(117,156,11),(118,157,11),(119,158,11),(120,159,11),(121,160,11),(122,163,11),(123,164,22),(124,165,22),(125,166,22),(126,167,22),(127,168,22),(128,169,22),(129,170,22),(130,171,22),(131,172,11),(132,173,23),(133,176,11),(134,178,1),(135,179,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,6,1),(2,7,4),(3,8,4),(4,9,1),(5,13,1),(6,14,4),(7,21,1),(8,22,4),(9,57,1),(10,60,4),(11,70,1),(12,71,4),(13,75,1),(14,77,4),(15,82,1),(16,84,4),(17,102,1),(18,104,4),(19,124,1),(20,126,4),(21,178,1),(22,179,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'(.*)'),(2,3,'com/google/update/UpdateService'),(3,10,'NULL-CONSTANT'),(4,11,'com/waps/OffersWebView'),(5,12,'com/waps/OffersWebView'),(6,15,'com/waps/OffersWebView'),(7,16,'com/google/update/Dialog'),(8,17,'com/google/update/Dialog'),(9,18,'com/google/update/Dialog'),(10,19,'com/google/update/Dialog'),(11,31,'com.google.android.maps.MapsActivity'),(12,38,'com/adwo/adsdk/AdwoAdBrowserActivity'),(13,45,'com.google.android.maps.MapsActivity'),(14,48,'com.google.android.maps.MapsActivity'),(15,50,'com/safesys/myvpn/Settings'),(16,51,'com.google.android.maps.MapsActivity'),(17,59,'com/safesys/myvpn/VpnConnectorService'),(18,62,'com.google.android.maps.MapsActivity'),(19,66,'com/safesys/myvpn/VpnConnectorService'),(20,67,'com/safesys/remover/UpdateService'),(21,65,'com/google/update/Dialog'),(22,68,'com/google/update/Dialog'),(23,73,'com/livegame/wallpaperlangmanxk/SettingsActivity'),(24,76,'com/safesys/myvpn/VpnTypeSelection'),(25,74,'com/google/update/Dialog'),(26,78,'com/google/update/Dialog'),(27,79,'(.*)'),(28,81,'com/google/update/UpdateService'),(29,80,'com/google/update/Dialog'),(30,83,'com/google/update/Dialog'),(31,85,'com/waps/OffersWebView'),(32,88,'(.*)'),(33,97,'NULL-CONSTANT'),(34,101,'com/waps/OffersWebView'),(35,105,'com/waps/OffersWebView'),(36,107,'com.google.android.maps.MapsActivity'),(37,114,'com/google/update/Dialog'),(38,116,'com/google/update/Dialog'),(39,118,'com/google/update/UpdateService'),(40,129,'com/adwo/adsdk/AdwoAdBrowserActivity'),(41,130,'com.google.android.maps.MapsActivity'),(42,133,'com.google.android.maps.MapsActivity'),(43,135,'com.google.android.maps.MapsActivity'),(44,140,'com.google.android.maps.MapsActivity'),(45,143,'(.*)'),(46,144,'com.evilsunflower.reader.FBReader'),(47,145,'com/evilsunflower/reader/BookmarkEditActivity'),(48,147,'com/evilsunflower/reader/control/UpdateService'),(49,161,'com/millennialmedia/android/MMAdViewOverlayActivity'),(50,163,'com.android.browser.BrowserActivity'),(51,175,'com/evilsunflower/reader/control/UpdateService'),(52,177,'com.evilsunflower.reader.FBReader'),(53,180,'com/millennialmedia/android/MMAdViewOverlayActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,4,1),(2,20,2),(3,23,3),(4,24,4),(5,25,5),(6,26,6),(7,27,7),(8,28,8),(9,29,9),(10,30,10),(11,32,11),(12,33,12),(13,34,13),(14,36,14),(15,37,15),(16,41,16),(17,43,17),(18,44,18),(19,45,19),(20,47,20),(21,48,21),(22,49,22),(23,51,23),(24,55,24),(25,61,25),(26,62,26),(27,63,27),(28,69,28),(29,72,29),(30,86,33),(31,87,32),(32,91,34),(33,90,35),(34,93,36),(35,94,37),(36,95,38),(37,96,39),(38,98,41),(39,99,40),(40,100,42),(41,103,43),(42,106,44),(43,108,45),(44,109,46),(45,110,47),(46,111,48),(47,112,49),(48,115,50),(49,117,51),(50,123,52),(51,127,53),(52,128,54),(53,130,55),(54,132,56),(55,133,57),(56,134,58),(57,135,59),(58,137,60),(59,139,61),(60,140,62),(61,146,65),(62,148,71),(63,150,73),(64,151,74),(65,152,75),(66,153,76),(67,154,77),(68,155,78),(69,156,79),(70,157,80),(71,158,81),(72,159,82),(73,160,83),(74,161,84),(75,163,85),(76,172,86),(77,176,88),(78,180,90);
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
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,11,'UrlPath'),(2,11,'ACTIVITY_FLAG'),(3,11,'isFinshClose'),(4,11,'offers_webview_tag'),(5,12,'Notify_Url_Params'),(6,12,'UrlPath'),(7,12,'ACTIVITY_FLAG'),(8,12,'isFinshClose'),(9,12,'offers_webview_tag'),(10,15,'USER_ID'),(11,15,'CLIENT_PACKAGE'),(12,15,'Offers_URL'),(13,15,'offers_webview_tag'),(14,15,'URL_PARAMS'),(15,16,'TYPEdsada'),(16,17,'MSG'),(17,17,'TYPEdsada'),(18,18,'TYPEdsada'),(19,19,'MSG'),(20,19,'TYPEdsada'),(21,24,'android.intent.extra.TEXT'),(22,24,'android.intent.extra.SUBJECT'),(23,24,'android.intent.extra.EMAIL'),(24,25,'sms_body'),(25,28,'android.intent.extra.EMAIL'),(26,29,'android.intent.extra.TEXT'),(27,29,'android.intent.extra.EMAIL'),(28,37,'android.intent.extra.EMAIL'),(29,38,'url'),(30,40,'android.intent.extra.TEXT'),(31,40,'android.intent.extra.SUBJECT'),(32,40,'android.intent.extra.EMAIL'),(33,41,'android.intent.extra.TEXT'),(34,41,'android.intent.extra.SUBJECT'),(35,41,'android.intent.extra.EMAIL'),(36,47,'android.intent.extra.TEXT'),(37,47,'android.intent.extra.EMAIL'),(38,49,'sms_body'),(39,52,'connection_state'),(40,52,'profile_name'),(41,53,'query'),(42,54,'connection_state'),(43,54,'profile_name'),(44,54,'err'),(45,65,'TYPEdsada'),(46,68,'MSG'),(47,68,'TYPEdsada'),(48,74,'MSG'),(49,74,'TYPEdsada'),(50,78,'TYPEdsada'),(51,79,'vpnType'),(52,80,'MSG'),(53,80,'TYPEdsada'),(54,83,'TYPEdsada'),(55,85,'USER_ID'),(56,85,'CLIENT_PACKAGE'),(57,85,'Offers_URL'),(58,85,'offers_webview_tag'),(59,85,'URL_PARAMS'),(60,90,'android.intent.extra.TEXT'),(61,90,'android.intent.extra.SUBJECT'),(62,90,'android.intent.extra.EMAIL'),(63,94,'sms_body'),(64,100,'android.intent.extra.EMAIL'),(65,101,'Notify_Url_Params'),(66,101,'UrlPath'),(67,101,'ACTIVITY_FLAG'),(68,101,'isFinshClose'),(69,101,'offers_webview_tag'),(70,103,'android.intent.extra.TEXT'),(71,103,'android.intent.extra.EMAIL'),(72,105,'UrlPath'),(73,105,'ACTIVITY_FLAG'),(74,105,'isFinshClose'),(75,105,'offers_webview_tag'),(76,114,'TYPEdsada'),(77,116,'MSG'),(78,116,'TYPEdsada'),(79,117,'android.intent.extra.EMAIL'),(80,120,'android.intent.extra.TEXT'),(81,120,'android.intent.extra.SUBJECT'),(82,120,'android.intent.extra.EMAIL'),(83,122,'android.live_wallpaper.package'),(84,122,'android.live_wallpaper.settings'),(85,123,'android.intent.extra.TEXT'),(86,123,'android.intent.extra.SUBJECT'),(87,123,'android.intent.extra.EMAIL'),(88,129,'url'),(89,132,'android.intent.extra.TEXT'),(90,132,'android.intent.extra.EMAIL'),(91,134,'sms_body'),(92,136,'query'),(93,143,'vpnProfileName'),(94,149,'android.intent.extra.TEXT'),(95,149,'android.intent.extra.SUBJECT'),(96,149,'android.intent.extra.EMAIL'),(97,161,'cachedAdView'),(98,164,'android.intent.extra.INTENT'),(99,165,'android.intent.extra.INTENT'),(100,166,'android.intent.extra.TITLE'),(101,166,'android.intent.extra.INTENT'),(102,167,'android.intent.extra.INTENT'),(103,168,'android.intent.extra.TITLE'),(104,168,'android.intent.extra.INTENT'),(105,169,'android.intent.extra.INTENT'),(106,170,'android.intent.extra.TITLE'),(107,170,'android.intent.extra.INTENT'),(108,171,'android.intent.extra.TITLE'),(109,171,'android.intent.extra.INTENT'),(110,173,'command'),(111,180,'cachedAdView');
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(5,3,1),(6,4,2),(7,4,3),(8,4,4),(9,5,1),(10,5,5),(11,6,6),(12,7,7),(13,8,8),(14,9,1),(15,10,9),(16,11,1),(17,12,4),(18,12,3),(19,12,2),(20,13,1),(21,14,2),(22,14,4),(23,14,3),(24,15,4),(25,15,2),(26,15,3),(27,16,12),(28,17,6),(29,17,8),(30,18,6),(31,18,8),(32,19,6),(33,19,8),(34,20,8),(35,20,6),(36,21,6),(37,21,8),(38,22,8),(39,22,6),(40,23,6),(41,23,8),(42,24,12),(43,25,12),(44,26,1),(45,27,20),(46,28,20),(47,29,4),(48,29,2),(49,29,3),(50,30,21),(51,31,21),(52,32,21),(53,33,21),(54,34,24),(55,34,25);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,5,1),(4,5,3),(5,5,2),(6,9,1),(7,11,1),(8,13,1),(9,26,1);
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
INSERT INTO `IFData` VALUES (1,16,'package',NULL,NULL,NULL,NULL,NULL),(2,24,'package',NULL,NULL,NULL,NULL,NULL),(3,25,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,4,'application','vnd.android.package-archive'),(2,20,'application','vnd.android.package-archive'),(3,26,'*','*'),(4,34,'(.*)','(.*)'),(5,40,'message','rfc882'),(6,43,'(.*)','(.*)'),(7,55,'*','*'),(8,63,'application','vnd.android.package-archive'),(9,86,'application','vnd.android.package-archive'),(10,91,'application','vnd.android.package-archive'),(11,93,'application','vnd.android.package-archive'),(12,95,'application','vnd.android.package-archive'),(13,96,'*','*'),(14,98,'application','vnd.android.package-archive'),(15,110,'application','vnd.android.package-archive'),(16,112,'(.*)','(.*)'),(17,120,'message','rfc882'),(18,127,'(.*)','(.*)'),(19,137,'*','*'),(20,149,'message','rfc822'),(21,151,'application','vnd.android.package-archive'),(22,152,'application','vnd.android.package-archive'),(23,153,'application','vnd.android.package-archive'),(24,154,'application','vnd.android.package-archive'),(25,155,'application','vnd.android.package-archive'),(26,156,'application','vnd.android.package-archive'),(27,157,'application','vnd.android.package-archive'),(28,158,'application','vnd.android.package-archive'),(29,159,'application','vnd.android.package-archive'),(30,176,'application','vnd.android.package-archive');
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
INSERT INTO `IPackages` VALUES (1,2,'(.*)'),(2,3,'guessclothes.com.game'),(3,6,'(.*)'),(4,7,'(.*)'),(5,8,'guessclothes.com.game'),(6,9,'guessclothes.com.game'),(7,10,'NULL-CONSTANT'),(8,11,'guessclothes.com.game'),(9,12,'guessclothes.com.game'),(10,13,'com.noshufou.android.su'),(11,14,'com.noshufou.android.su'),(12,15,'guessclothes.com.game'),(13,16,'guessclothes.com.game'),(14,17,'guessclothes.com.game'),(15,18,'guessclothes.com.game'),(16,19,'guessclothes.com.game'),(17,21,'com.noshufou.android.su'),(18,22,'com.noshufou.android.su'),(19,31,'com.google.android.apps.maps'),(20,38,'com.safesys.remover'),(21,45,'com.google.android.apps.maps'),(22,48,'com.google.android.apps.maps'),(23,50,'com.safesys.myvpn'),(24,51,'com.google.android.apps.maps'),(25,57,'(.*)'),(26,59,'com.safesys.myvpn'),(27,60,'(.*)'),(28,62,'com.google.android.apps.maps'),(29,66,'com.safesys.myvpn'),(30,67,'com.safesys.remover'),(31,65,'com.livegame.wallpaperlangmanxk'),(32,68,'com.livegame.wallpaperlangmanxk'),(33,70,'com.livegame.wallpaperlangmanxk'),(34,71,'com.livegame.wallpaperlangmanxk'),(35,73,'com.livegame.wallpaperlangmanxk'),(36,76,'com.safesys.myvpn'),(37,75,'com.noshufou.android.su'),(38,74,'com.gp.solitaire'),(39,77,'com.noshufou.android.su'),(40,78,'com.gp.solitaire'),(41,79,'com.safesys.myvpn'),(42,81,'com.livegame.wallpaperlangmanxk'),(43,80,'com.gp.solitaire'),(44,82,'com.noshufou.android.su'),(45,83,'com.gp.solitaire'),(46,84,'com.noshufou.android.su'),(47,85,'com.livegame.wallpaperlangmanxk'),(48,88,'(.*)'),(49,97,'NULL-CONSTANT'),(50,102,'com.noshufou.android.su'),(51,101,'com.livegame.wallpaperlangmanxk'),(52,104,'com.noshufou.android.su'),(53,105,'com.livegame.wallpaperlangmanxk'),(54,107,'com.google.android.apps.maps'),(55,114,'com.livegame.wallpaperlangmanxk'),(56,116,'com.livegame.wallpaperlangmanxk'),(57,118,'com.gp.solitaire'),(58,124,'com.gp.solitaire'),(59,126,'com.gp.solitaire'),(60,129,'com.safesys.myvpn'),(61,130,'com.google.android.apps.maps'),(62,133,'com.google.android.apps.maps'),(63,135,'com.google.android.apps.maps'),(64,140,'com.google.android.apps.maps'),(65,143,'com.safesys.myvpn'),(66,144,'com.evilsunflower.reader.evilRenxing10'),(67,145,'com.evilsunflower.reader.evilRenxing10'),(68,147,'com.evilsunflower.reader.evilRenxing10'),(69,161,'com.evilsunflower.reader.evilRenxing10'),(70,163,'com.android.browser'),(71,175,'com.evilsunflower.reader.evilRenxing10'),(72,177,'com.evilsunflower.reader.evilRenxing10'),(73,178,'com.noshufou.android.su'),(74,179,'com.noshufou.android.su'),(75,180,'com.evilsunflower.reader.evilRenxing10');
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,7,0),(3,8,0),(4,13,0),(5,14,0),(6,23,0),(7,24,0),(8,25,0),(9,26,0),(10,35,0),(11,37,0),(12,38,0),(13,42,0),(14,54,0),(15,65,0),(16,66,0),(17,67,0),(18,68,0),(19,24,0),(20,25,0),(21,69,0),(22,70,0),(23,68,0),(24,71,0),(25,72,0),(26,74,0),(27,74,0),(28,78,0),(29,91,0),(30,92,0),(31,91,0),(32,93,0),(33,94,0),(34,94,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,0,0),(3,3,0,0),(4,4,1,0),(5,5,1,0),(6,5,1,0),(7,5,1,0),(8,6,1,0),(9,6,1,0),(10,7,0,0),(11,8,0,0),(12,8,0,0),(13,9,1,0),(14,9,1,0),(15,10,0,0),(16,11,0,0),(17,11,0,0),(18,12,0,0),(19,12,0,0),(20,13,1,0),(21,14,1,0),(22,14,1,0),(23,15,1,0),(24,15,1,0),(25,15,1,0),(26,15,1,0),(27,15,1,0),(28,15,1,0),(29,15,1,0),(30,15,1,0),(31,15,0,0),(32,15,1,0),(33,15,1,0),(34,15,1,0),(35,15,1,0),(36,15,1,0),(37,15,1,0),(38,15,0,0),(39,15,1,0),(40,15,1,0),(41,15,1,0),(42,15,1,0),(43,15,1,0),(44,15,1,0),(45,15,0,0),(46,15,1,0),(47,15,1,0),(48,15,0,0),(49,15,1,0),(50,16,0,0),(51,15,0,0),(52,17,1,0),(53,15,1,0),(54,17,1,0),(55,15,1,0),(56,18,1,0),(57,18,1,0),(58,15,1,0),(59,19,0,0),(60,18,1,0),(61,15,1,0),(62,15,0,0),(63,20,1,0),(64,15,1,0),(65,21,0,0),(66,22,0,0),(67,23,0,0),(68,21,0,0),(69,24,1,0),(70,25,1,0),(71,25,1,0),(72,26,1,0),(73,27,0,0),(74,28,0,0),(75,29,1,0),(76,30,0,0),(77,29,1,0),(78,28,0,0),(79,31,0,0),(80,33,0,0),(81,34,0,0),(82,35,1,0),(83,33,0,0),(84,35,1,0),(85,36,0,0),(86,38,1,0),(87,39,1,0),(88,40,0,0),(89,38,1,0),(90,39,1,0),(91,38,1,0),(92,41,1,0),(93,38,1,0),(94,39,1,0),(95,38,1,0),(96,39,1,0),(97,42,0,0),(98,38,1,0),(99,39,1,0),(100,39,1,0),(101,43,0,0),(102,44,1,0),(103,39,1,0),(104,44,1,0),(105,43,0,0),(106,39,1,0),(107,39,0,0),(108,45,1,0),(109,39,1,0),(110,46,1,0),(111,39,1,0),(112,39,1,0),(113,39,1,0),(114,47,0,0),(115,39,1,0),(116,47,0,0),(117,39,1,0),(118,49,0,0),(119,39,1,0),(120,39,1,0),(121,50,1,0),(122,51,1,0),(123,39,1,0),(124,52,1,0),(125,39,1,0),(126,52,1,0),(127,39,1,0),(128,39,1,0),(129,39,0,0),(130,39,0,0),(131,39,1,0),(132,39,1,0),(133,39,0,0),(134,39,1,0),(135,39,0,0),(136,39,1,0),(137,39,1,0),(138,39,1,0),(139,39,1,0),(140,39,0,0),(141,39,1,0),(142,53,1,0),(143,54,0,0),(144,55,0,0),(145,56,0,0),(146,58,1,0),(147,61,0,0),(148,64,1,0),(149,65,1,0),(150,67,1,0),(151,68,1,0),(152,68,1,0),(153,68,1,0),(154,68,1,0),(155,68,1,0),(156,68,1,0),(157,68,1,0),(158,68,1,0),(159,68,1,0),(160,69,1,0),(161,70,0,0),(162,71,1,0),(163,72,0,0),(164,73,1,0),(165,73,1,0),(166,73,1,0),(167,73,1,0),(168,73,1,0),(169,73,1,0),(170,73,1,0),(171,73,1,0),(172,74,1,0),(173,76,1,0),(174,77,1,0),(175,78,0,0),(176,79,1,0),(177,81,0,0),(178,83,1,0),(179,83,1,0),(180,84,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (11,'android.permission.ACCESS_COARSE_LOCATION'),(13,'android.permission.ACCESS_FINE_LOCATION'),(16,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(8,'android.permission.ACCESS_NETWORK_STATE'),(7,'android.permission.ACCESS_WIFI_STATE'),(19,'android.permission.BIND_WALLPAPER'),(21,'android.permission.CALL_PHONE'),(6,'android.permission.CHANGE_WIFI_STATE'),(3,'android.permission.GET_TASKS'),(20,'android.permission.INSTALL_PACKAGES'),(4,'android.permission.INTERNET'),(14,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(9,'android.permission.READ_SMS'),(2,'android.permission.RECEIVE_BOOT_COMPLETED'),(18,'android.permission.RECORD_AUDIO'),(17,'android.permission.VIBRATE'),(12,'android.permission.WAKE_LOCK'),(5,'android.permission.WRITE_EXTERNAL_STORAGE'),(10,'android.permission.WRITE_SMS'),(22,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(15,'com.android.launcher.permission.INSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(3,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(4,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(5,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(6,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(7,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(8,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(9,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(10,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(11,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT((.*))&z=22',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL),(21,NULL,NULL,'http://maps.google.com/maps?q=(.*)((.*))&z=22',NULL,NULL,NULL),(22,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(23,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT()&z=22',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(26,NULL,NULL,'http://maps.google.com/maps?q=(.*)()&z=22',NULL,NULL,NULL),(27,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(28,NULL,NULL,'market://search?q=3D0F649A840D6922D383D34F70112E4A',NULL,NULL,NULL),(29,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(30,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(31,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(32,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(33,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(34,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(35,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(36,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(37,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(38,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(39,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(40,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(41,NULL,NULL,'file://',NULL,NULL,NULL),(42,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(43,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(44,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(45,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(46,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(47,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(48,NULL,NULL,'(.*)',NULL,NULL,NULL),(49,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(50,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(51,NULL,NULL,'(.*)',NULL,NULL,NULL),(52,NULL,NULL,'(.*)',NULL,NULL,NULL),(53,NULL,NULL,'(.*)',NULL,NULL,NULL),(54,NULL,NULL,'(.*)',NULL,NULL,NULL),(55,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT((.*))&z=22',NULL,NULL,NULL),(56,NULL,NULL,'(.*)',NULL,NULL,NULL),(57,NULL,NULL,'http://maps.google.com/maps?q=(.*)((.*))&z=22',NULL,NULL,NULL),(58,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(59,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT()&z=22',NULL,NULL,NULL),(60,NULL,NULL,'(.*)',NULL,NULL,NULL),(61,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(62,NULL,NULL,'http://maps.google.com/maps?q=(.*)()&z=22',NULL,NULL,NULL),(63,NULL,NULL,'content://mms/',NULL,NULL,NULL),(64,NULL,NULL,'content://mms-sms/threadID',NULL,NULL,NULL),(65,NULL,NULL,'(.*)',NULL,NULL,NULL),(66,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(67,NULL,NULL,'content://mms/inbox',NULL,NULL,NULL),(68,NULL,NULL,'content://mms/(.*)/addr',NULL,NULL,NULL),(69,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(70,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(71,NULL,NULL,'(.*)',NULL,NULL,NULL),(72,NULL,NULL,'content://mms/',NULL,NULL,NULL),(73,NULL,NULL,'(.*)',NULL,NULL,NULL),(74,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(75,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(76,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(77,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(78,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(79,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(80,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(81,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(82,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL),(83,NULL,NULL,'(.*)',NULL,NULL,NULL),(84,NULL,NULL,'(.*)',NULL,NULL,NULL),(85,NULL,NULL,'(.*)',NULL,NULL,NULL),(86,NULL,NULL,'(.*)',NULL,NULL,NULL),(87,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(88,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(89,NULL,NULL,'(.*)',NULL,NULL,NULL),(90,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,32,30),(2,37,31),(3,57,63),(4,57,64),(5,59,66),(6,59,67),(7,59,68),(8,60,69),(9,63,70),(10,66,72),(11,75,87),(12,80,89);
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
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,2,1),(10,2,4),(11,2,5),(12,2,8),(13,2,9),(14,2,10),(15,2,11),(16,2,12),(17,3,1),(18,3,4),(19,3,5),(20,3,7),(21,3,8),(22,3,9),(23,3,10),(24,3,11),(25,4,1),(26,4,2),(27,4,3),(28,4,4),(29,4,5),(30,4,6),(31,4,7),(32,4,8),(33,4,11),(34,4,13),(35,5,1),(36,5,2),(37,5,3),(38,5,4),(39,5,5),(40,5,6),(41,5,7),(42,5,8),(43,5,11),(44,5,12),(45,5,13),(46,6,1),(47,5,14),(48,6,2),(49,5,15),(50,6,4),(51,5,17),(52,6,5),(53,5,16),(54,6,6),(55,5,18),(56,6,7),(57,6,8),(58,6,9),(59,6,10),(60,6,11),(61,6,13),(62,6,14),(63,6,16),(64,6,21),(65,6,20),(66,7,1),(67,7,4),(68,7,5),(69,7,22),(70,7,7),(71,7,8),(72,7,9),(73,7,10),(74,7,11),(75,7,12),(76,7,13);
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

-- Dump completed on 2015-10-09  0:38:22
