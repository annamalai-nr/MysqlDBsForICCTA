-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_176
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (11,'(.*)'),(4,'android.appwidget.action.APPWIDGET_UPDATE'),(8,'android.intent.action.BATTERY_CHANGED_ACTION'),(7,'android.intent.action.BOOT_COMPLETED'),(17,'android.intent.action.DIAL'),(2,'android.intent.action.MAIN'),(22,'android.intent.action.PACKAGE_ADDED'),(15,'android.intent.action.SCREEN_OFF'),(16,'android.intent.action.SCREEN_ON'),(12,'android.intent.action.SEARCH'),(18,'android.intent.action.SEND'),(19,'android.intent.action.SENDTO'),(6,'android.intent.action.SIG_STR'),(13,'android.intent.action.VIEW'),(21,'android.intent.action.WEB_SEARCH'),(14,'android.net.conn.CONNECTIVITY_CHANGE'),(1,'android.net.vpn.SETTINGS'),(20,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(9,'android.service.wallpaper.WallpaperService'),(10,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(23,'com.google.zxing.client.android.SCAN'),(3,'myvpn.toggleVpnConnectionAction'),(5,'vpn.connectivity');
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
INSERT INTO `Applications` VALUES (1,'com.safesys.myvpn',18),(2,'com.dy.game.lianliankan',1),(3,'com.safetest.compass',16),(4,'com.gp.paopaoyu',5),(5,'com.livegame.wallpapertoumingyd',1),(6,'com.livegame.android.shelves',7),(7,'com.mogo.DropBubble',16);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (5,'android.intent.category.BROWSABLE'),(2,'android.intent.category.DEFAULT'),(4,'android.intent.category.INFO'),(3,'android.intent.category.LAUNCHER'),(1,'com.android.settings.SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.safesys.myvpn.VpnSettings'),(2,1,'com.safesys.myvpn.VpnTypeSelection'),(3,1,'com.safesys.myvpn.editor.PptpProfileEditor'),(4,1,'com.safesys.myvpn.editor.L2tpProfileEditor'),(5,1,'com.safesys.myvpn.editor.L2tpIpsecPskProfileEditor'),(6,1,'com.safesys.myvpn.ToggleVpn'),(7,1,'com.safesys.myvpn.Settings'),(8,1,'com.adwo.adsdk.AdwoAdBrowserActivity'),(9,1,'com.adchina.android.ads.views.FullScreenAdActivity'),(10,1,'cn.domob.android.ads.DomobActivity'),(11,1,'com.safesys.myvpn.VpnConnectorService'),(12,2,'com.dy.game.lianliankan.LianLianKanGame'),(13,1,'com.safesys.myvpn.VpnAppWidgetProvider'),(14,2,'com.google.update.Dialog'),(15,1,'com.safesys.myvpn.KeepAlive'),(16,2,'com.google.update.UpdateService'),(17,2,'com.google.update.Receiver'),(18,3,'com.safetest.compass.CompassActivity'),(19,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(20,3,'com.safetest.compass.ShowTips'),(21,3,'com.safetest.compass.widget.CompassService'),(22,3,'com.safetest.compass.UpdateService'),(23,3,'com.safetest.compass.widget.CompassWidget'),(24,3,'com.safetest.compass.Receiver'),(25,4,'com.gp.paopaoyu.SplashActivity'),(26,4,'com.gp.paopaoyu.MainView'),(27,4,'com.gp.paopaoyu.AquariumsActivity'),(28,4,'com.gp.paopaoyu.FeedActivity'),(29,4,'com.gp.paopaoyu.SettingsActivity'),(30,4,'com.gp.paopaoyu.StoreActivity'),(31,4,'com.gp.paopaoyu.StoreDetailActivity'),(32,4,'com.gp.paopaoyu.BagActivity'),(33,4,'com.gp.paopaoyu.MiniGameActivity'),(34,4,'com.gp.paopaoyu.ExamActivity'),(35,4,'com.gp.paopaoyu.CreditActivity'),(36,4,'com.gp.paopaoyu.HelpActivity'),(37,4,'com.adwo.adsdk.AdwoSplashAdActivity'),(38,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(39,4,'com.google.update.Dialog'),(40,4,'com.waps.OffersWebView'),(41,4,'com.google.update.UpdateService'),(42,4,'com.google.update.Receiver'),(43,5,'com.livegame.wallpapertoumingyd.MainActivity'),(44,5,'com.livegame.wallpapertoumingyd.SettingsActivity'),(45,5,'com.livegame.wallpapertoumingyd.SelectFolderActivity'),(46,5,'com.google.ads.AdActivity'),(47,5,'com.vpon.adon.android.WebInApp'),(48,5,'com.adwo.adsdk.AdwoSplashAdActivity'),(49,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(50,5,'com.waps.OffersWebView'),(51,5,'com.google.update.Dialog'),(52,5,'com.livegame.wallpapertoumingyd.WallpaperSlideshow'),(53,5,'com.google.update.UpdateService'),(54,5,'com.google.update.Receiver'),(55,2,'com.a.b'),(56,2,'com.google.update.c'),(57,2,'com.google.update.i'),(58,2,'com.google.update.e'),(59,6,'com.livegame.android.shelves.activity.ShelvesActivity'),(60,1,'com.safesys.myvpn.v'),(61,6,'com.livegame.android.shelves.activity.AddBookActivity'),(62,6,'com.livegame.android.shelves.activity.BookDetailsActivity'),(63,7,'com.mogo.DropBubble.Menu'),(64,6,'com.livegame.android.shelves.activity.SettingsActivity'),(65,6,'com.google.ads.AdActivity'),(66,7,'com.mogo.DropBubble.DropBubble'),(67,6,'com.vpon.adon.android.WebInApp'),(68,7,'com.mogo.DropBubble.Help'),(69,6,'com.adwo.adsdk.AdwoSplashAdActivity'),(70,7,'com.mogo.DropBubble.GameOver'),(71,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(72,7,'com.google.ads.AdActivity'),(73,1,'com.safesys.myvpn.c'),(74,6,'com.waps.OffersWebView'),(75,7,'com.vpon.adon.android.WebInApp'),(76,6,'com.google.update.Dialog'),(77,7,'com.adwo.adsdk.AdwoSplashAdActivity'),(78,1,'com.safesys.myvpn.ao'),(79,6,'com.google.update.UpdateService'),(80,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(81,6,'com.google.update.Receiver'),(82,7,'com.google.update.Dialog'),(83,7,'com.waps.OffersWebView'),(84,6,'com.livegame.android.shelves.provider.BooksProvider'),(85,7,'com.google.update.UpdateService'),(86,7,'com.google.update.Receiver'),(87,1,'com.safesys.myvpn.k'),(88,1,'android.appwidget.AppWidgetProvider'),(89,3,'com.safetest.compass.MyLocationManager$ConnectivityBroadcastReceiver'),(90,3,'com.safetest.compass.ShowTips$1'),(91,3,'com.safetest.compass.widget.CompassService$1'),(92,3,'com.adwo.adsdk.D'),(93,3,'android.appwidget.AppWidgetProvider'),(94,3,'com.adwo.adsdk.g'),(95,5,'com.waps.o'),(96,5,'com.waps.ac'),(97,5,'com.livegame.wallpapertoumingyd.MainActivity$2'),(98,5,'com.livegame.wallpapertoumingyd.MainActivity$1'),(99,5,'com.google.update.Dialog$2'),(100,5,'com.google.update.Dialog$1'),(101,5,'com.waps.aa'),(102,5,'com.waps.q'),(103,5,'com.ju6.a'),(104,5,'com.waps.AppConnect'),(105,5,'com.waps.z'),(106,5,'com.google.update.UpdateService$AA'),(107,7,'com.google.update.Dialog$1'),(108,6,'com.livegame.android.shelves.provider.BooksManager'),(109,7,'com.waps.q'),(110,7,'com.mobclick.android.MobclickAgent'),(111,7,'com.waps.ac'),(112,6,'com.google.update.Dialog$1'),(113,7,'com.waps.AppConnect'),(114,7,'com.waps.o'),(115,6,'com.ju6.a'),(116,6,'com.waps.AppConnect'),(117,7,'com.waps.z'),(118,6,'com.google.update.Dialog$2'),(119,7,'com.waps.aa'),(120,6,'com.waps.m'),(121,6,'com.livegame.android.shelves.provider.BooksUpdater'),(122,6,'com.google.update.UpdateService$MyThread'),(123,7,'com.google.update.UpdateService$AA'),(124,6,'com.waps.k'),(125,7,'com.google.update.Dialog$2'),(126,4,'com.waps.aa'),(127,4,'com.google.update.Dialog$1'),(128,4,'com.google.update.UpdateService$AA'),(129,4,'com.waps.q'),(130,4,'com.waps.z'),(131,4,'com.waps.ac'),(132,4,'com.waps.o'),(133,4,'com.gp.paopaoyu.SettingsActivity$2'),(134,4,'com.gp.paopaoyu.FeedActivity$5'),(135,4,'com.gp.paopaoyu.StoreActivity$1'),(136,4,'com.google.update.Dialog$2'),(137,4,'com.gp.paopaoyu.MainView$1'),(138,4,'com.gp.paopaoyu.FeedActivity$4'),(139,4,'com.waps.s'),(140,4,'com.gp.paopaoyu.MainView$4'),(141,4,'com.gp.paopaoyu.FeedActivity$6'),(142,4,'com.gp.paopaoyu.AquariumsActivity$2'),(143,4,'com.gp.paopaoyu.MainView$3');
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
) ENGINE=InnoDB AUTO_INCREMENT=280 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,14,'TYPEdsada'),(2,14,'MSG'),(3,16,'ST_START_DELAY'),(4,16,'ST_MY_PID'),(5,1,'vpnType'),(6,5,'secret'),(7,4,'secret'),(8,1,'vpnProfileName'),(9,15,'profile_name'),(10,5,'vpnType'),(11,3,'vpnType'),(12,4,'vpnType'),(13,5,'secretEnabled'),(14,4,'secretEnabled'),(15,6,'activeVpnState'),(16,5,'server'),(17,3,'server'),(18,4,'server'),(19,5,'psk'),(20,4,'psk'),(21,5,'vpnProfileName'),(22,3,'vpnProfileName'),(23,4,'vpnProfileName'),(24,5,'name'),(25,3,'name'),(26,4,'name'),(27,3,'encrypt'),(28,5,'user'),(29,3,'user'),(30,4,'user'),(31,5,'dns'),(32,3,'dns'),(33,4,'dns'),(34,15,'connection_state'),(35,5,'password'),(36,3,'password'),(37,4,'password'),(38,19,'shouldResizeOverlay'),(39,19,'shouldShowTitlebar'),(40,19,'overlayTitle'),(41,19,'shouldEnableBottomBar'),(42,19,'overlayTransition'),(43,19,'url'),(44,20,'MM'),(45,19,'shouldShowBottomBar'),(46,22,'SAFE_START'),(47,22,'SAFE_PID'),(48,48,'isTestMode'),(49,49,'transitionTime'),(50,49,'shouldShowTitlebar'),(51,44,'folder'),(52,49,'shouldShowBottomBar'),(53,51,'TYPEdsada'),(54,50,'Offers_URL'),(55,50,'WAPS_ID'),(56,43,'WAPS_ID'),(57,49,'shouldMakeOverlayTransparent'),(58,53,'ST_MY_PID'),(59,49,'url'),(60,50,'URL_PARAMS'),(61,50,'CLIENT_PACKAGE'),(62,43,'CLIENT_PACKAGE'),(63,50,'DEVICE_ID'),(64,43,'DEVICE_ID'),(65,53,'ST_START_DELAY'),(66,50,'offers_webview_tag'),(67,48,'Adwo_PID'),(68,50,'isFinshClose'),(69,50,'ACTIVITY_FLAG'),(70,19,'transitionTime'),(71,50,'USER_ID'),(72,50,'SHWO_FLAG'),(73,19,'shouldMakeOverlayTransparent'),(74,49,'shouldEnableBottomBar'),(75,51,'MSG'),(76,50,'URL'),(77,50,'Notify_Id'),(78,50,'UrlPath'),(79,47,'url'),(80,49,'shouldResizeOverlay'),(81,50,'Notify_Url_Params'),(82,50,'APP_ID'),(83,43,'APP_ID'),(84,49,'overlayTransition'),(85,47,'adWidth'),(86,77,'Offers_URL'),(87,58,'UMENG_CHANNEL'),(88,77,'URL_PARAMS'),(89,72,'isTestMode'),(90,74,'shouldEnableBottomBar'),(91,50,'WAPS_PID'),(92,43,'WAPS_PID'),(93,49,'overlayTitle'),(94,55,'shelves.import.books'),(95,77,'Notify_Id'),(96,74,'shouldMakeOverlayTransparent'),(97,77,'Notify_Url_Params'),(98,62,'adWidth'),(99,74,'overlayTransition'),(100,69,'URL'),(101,55,'SCAN_RESULT_FORMAT'),(102,69,'CLIENT_PACKAGE'),(103,57,'shelves.extra.book_id'),(104,64,'Adwo_PID'),(105,72,'Adwo_PID'),(106,69,'USER_ID'),(107,79,'ST_START_DELAY'),(108,69,'Offers_URL'),(109,66,'url'),(110,55,'SCAN_RESULT'),(111,61,'APP_ID'),(112,77,'APP_ID'),(113,79,'APP_ID'),(114,58,'APP_ID'),(115,74,'APP_ID'),(116,65,'APP_ID'),(117,77,'CLIENT_PACKAGE'),(118,55,'shelves.add.inprogress'),(119,62,'url'),(120,77,'USER_ID'),(121,55,'query'),(122,58,'UMENG_APPKEY'),(123,77,'UrlPath'),(124,61,'WAPS_ID'),(125,77,'WAPS_ID'),(126,60,'com.google.ads.AdOpener'),(127,79,'WAPS_ID'),(128,55,'shelves.import.inprogress'),(129,58,'WAPS_ID'),(130,66,'shouldShowBottomBar'),(131,74,'WAPS_ID'),(132,71,'TYPEdsada'),(133,65,'WAPS_ID'),(134,79,'ST_MY_PID'),(135,76,'MSG'),(136,77,'SHWO_FLAG'),(137,70,'adWidth'),(138,74,'shouldShowBottomBar'),(139,77,'ACTIVITY_FLAG'),(140,77,'offers_webview_tag'),(141,74,'shouldShowTitlebar'),(142,74,'transitionTime'),(143,56,'shelves.search.book'),(144,55,'DEVICE_ID'),(145,74,'url'),(146,70,'url'),(147,77,'URL'),(148,61,'WAPS_PID'),(149,77,'WAPS_PID'),(150,79,'WAPS_PID'),(151,66,'shouldShowTitlebar'),(152,58,'WAPS_PID'),(153,66,'transitionTime'),(154,74,'WAPS_PID'),(155,55,'CLIENT_PACKAGE'),(156,65,'WAPS_PID'),(157,74,'shouldResizeOverlay'),(158,74,'overlayTitle'),(159,55,'WAPS_ID'),(160,71,'MSG'),(161,56,'shelves.add.book'),(162,55,'shelves.import.index'),(163,56,'shelves.search.inprogress'),(164,69,'URL_PARAMS'),(165,69,'isFinshClose'),(166,66,'shouldEnableBottomBar'),(167,60,'action'),(168,56,'shelves.add.bookToAdd'),(169,66,'shouldResizeOverlay'),(170,66,'overlayTitle'),(171,64,'isTestMode'),(172,60,'params'),(173,77,'isFinshClose'),(174,66,'overlayTransition'),(175,61,'CLIENT_PACKAGE'),(176,79,'CLIENT_PACKAGE'),(177,58,'CLIENT_PACKAGE'),(178,74,'CLIENT_PACKAGE'),(179,65,'CLIENT_PACKAGE'),(180,76,'TYPEdsada'),(181,66,'shouldMakeOverlayTransparent'),(182,56,'shelves.add.inprogress'),(183,55,'WAPS_PID'),(184,55,'shelves.add.book'),(185,73,'ST_START_DELAY'),(186,55,'APP_ID'),(187,61,'DEVICE_ID'),(188,77,'DEVICE_ID'),(189,79,'DEVICE_ID'),(190,58,'DEVICE_ID'),(191,74,'DEVICE_ID'),(192,65,'DEVICE_ID'),(193,73,'ST_MY_PID'),(194,28,'WAPS_PID'),(195,27,'WAPS_PID'),(196,40,'WAPS_PID'),(197,33,'WAPS_PID'),(198,31,'WAPS_PID'),(199,36,'WAPS_PID'),(200,29,'WAPS_PID'),(201,26,'WAPS_PID'),(202,34,'WAPS_PID'),(203,25,'WAPS_PID'),(204,37,'FSAd'),(205,40,'USER_ID'),(206,40,'URL'),(207,40,'isFinshClose'),(208,38,'overlayTransition'),(209,38,'url'),(210,28,'Aquarium'),(211,41,'ST_START_DELAY'),(212,37,'transitionTime'),(213,40,'ACTIVITY_FLAG'),(214,38,'shouldShowBottomBar'),(215,40,'offers_webview_tag'),(216,37,'shouldMakeOverlayTransparent'),(217,40,'UrlPath'),(218,40,'CLIENT_PACKAGE'),(219,38,'transitionTime'),(220,39,'MSG'),(221,38,'shouldShowTitlebar'),(222,28,'CLIENT_PACKAGE'),(223,27,'CLIENT_PACKAGE'),(224,33,'CLIENT_PACKAGE'),(225,31,'CLIENT_PACKAGE'),(226,36,'CLIENT_PACKAGE'),(227,29,'CLIENT_PACKAGE'),(228,26,'CLIENT_PACKAGE'),(229,34,'CLIENT_PACKAGE'),(230,40,'Offers_URL'),(231,37,'shouldEnableBottomBar'),(232,39,'TYPEdsada'),(233,28,'APP_ID'),(234,27,'APP_ID'),(235,40,'APP_ID'),(236,33,'APP_ID'),(237,31,'APP_ID'),(238,36,'APP_ID'),(239,29,'APP_ID'),(240,26,'APP_ID'),(241,34,'APP_ID'),(242,25,'APP_ID'),(243,40,'Notify_Id'),(244,38,'shouldMakeOverlayTransparent'),(245,38,'overlayTitle'),(246,28,'WAPS_ID'),(247,27,'WAPS_ID'),(248,40,'WAPS_ID'),(249,33,'WAPS_ID'),(250,31,'WAPS_ID'),(251,36,'WAPS_ID'),(252,29,'WAPS_ID'),(253,26,'WAPS_ID'),(254,34,'WAPS_ID'),(255,25,'WAPS_ID'),(256,40,'SHWO_FLAG'),(257,41,'ST_MY_PID'),(258,28,'DEVICE_ID'),(259,27,'DEVICE_ID'),(260,40,'DEVICE_ID'),(261,33,'DEVICE_ID'),(262,31,'DEVICE_ID'),(263,36,'DEVICE_ID'),(264,29,'DEVICE_ID'),(265,26,'DEVICE_ID'),(266,34,'DEVICE_ID'),(267,25,'DEVICE_ID'),(268,37,'overlayTitle'),(269,37,'shouldShowTitlebar'),(270,37,'overlayTransition'),(271,38,'shouldEnableBottomBar'),(272,38,'shouldResizeOverlay'),(273,31,'type'),(274,40,'URL_PARAMS'),(275,37,'shouldResizeOverlay'),(276,40,'Notify_Url_Params'),(277,25,'CLIENT_PACKAGE'),(278,31,'key'),(279,37,'shouldShowBottomBar');
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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'s',1,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'r',1,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'r',1,NULL,NULL),(16,16,'s',0,NULL,NULL),(17,17,'r',1,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'s',0,NULL,NULL),(22,22,'s',0,NULL,NULL),(23,23,'r',1,NULL,NULL),(24,24,'r',1,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'s',0,NULL,NULL),(42,42,'r',1,NULL,NULL),(43,43,'a',1,NULL,NULL),(44,44,'a',1,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'s',1,15,NULL),(53,53,'s',0,NULL,NULL),(54,54,'r',1,NULL,NULL),(55,59,'a',1,NULL,NULL),(56,61,'a',0,NULL,NULL),(57,62,'a',1,NULL,NULL),(58,63,'a',1,NULL,NULL),(59,64,'a',0,NULL,NULL),(60,65,'a',0,NULL,NULL),(61,66,'a',0,NULL,NULL),(62,67,'a',0,NULL,NULL),(63,68,'a',0,NULL,NULL),(64,69,'a',0,NULL,NULL),(65,70,'a',0,NULL,NULL),(66,71,'a',0,NULL,NULL),(67,72,'a',0,NULL,NULL),(68,73,'r',1,NULL,NULL),(69,74,'a',0,NULL,NULL),(70,75,'a',0,NULL,NULL),(71,76,'a',0,NULL,NULL),(72,77,'a',0,NULL,NULL),(73,79,'s',0,NULL,NULL),(74,80,'a',0,NULL,NULL),(75,81,'r',1,NULL,NULL),(76,82,'a',0,NULL,NULL),(77,83,'a',0,NULL,NULL),(78,84,'p',0,NULL,NULL),(79,85,'s',0,NULL,NULL),(80,86,'r',1,NULL,NULL),(81,87,'r',1,NULL,NULL),(82,88,'r',1,NULL,NULL),(83,89,'r',1,NULL,NULL),(84,91,'r',1,NULL,NULL),(85,92,'r',1,NULL,NULL),(86,93,'r',1,NULL,NULL),(87,102,'r',1,NULL,NULL),(88,109,'r',1,NULL,NULL),(89,120,'r',1,NULL,NULL),(90,129,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,16),(2,2,14),(3,3,17),(4,4,16),(5,5,14),(6,6,16),(7,7,1),(8,8,16),(9,9,13),(10,10,1),(11,11,1),(12,12,11),(13,12,1),(14,13,6),(15,14,1),(16,15,1),(17,16,13),(18,17,20),(19,18,18),(20,19,50),(21,20,50),(22,21,45),(23,21,50),(24,22,54),(25,23,43),(26,24,43),(27,25,51),(28,26,51),(29,27,50),(30,28,23),(31,29,24),(32,30,53),(33,31,43),(34,32,50),(35,33,50),(36,34,53),(37,35,53),(38,36,55),(39,37,53),(40,38,78),(41,39,73),(42,40,77),(43,41,58),(44,42,77),(45,43,55),(46,44,73),(47,45,76),(48,46,75),(49,47,55),(50,47,57),(51,48,61),(52,48,58),(53,48,74),(54,48,65),(55,48,79),(56,49,55),(57,50,55),(58,51,55),(59,52,77),(60,53,55),(61,54,58),(62,55,78),(63,56,56),(64,56,55),(65,57,71),(66,58,79),(67,58,61),(68,58,74),(69,58,58),(70,58,65),(71,59,60),(72,60,77),(73,61,58),(74,62,73),(75,63,58),(76,64,55),(77,65,77),(78,66,71),(79,67,57),(80,68,79),(81,69,77),(82,70,55),(83,71,55),(84,72,55),(85,73,79),(86,74,55),(87,75,73),(88,76,79),(89,77,69),(90,78,76),(91,79,80),(92,80,58),(93,81,40),(94,82,39),(95,83,41),(96,84,40),(97,85,40),(98,86,30),(99,86,32),(100,86,34),(101,86,40),(102,86,27),(103,87,40),(104,88,28),(105,88,27),(106,88,29),(107,88,26),(108,88,36),(109,88,31),(110,88,34),(111,88,33),(112,89,31),(113,89,29),(114,89,28),(115,89,27),(116,89,26),(117,89,36),(118,89,34),(119,89,33),(120,90,42),(121,91,27),(122,91,32),(123,91,30),(124,91,34),(125,92,39),(126,93,27),(127,93,26),(128,93,36),(129,93,33),(130,93,34),(131,93,28),(132,93,29),(133,93,31),(134,94,26),(135,94,28),(136,94,27),(137,94,31),(138,94,29),(139,94,36),(140,94,33),(141,94,34),(142,95,29),(143,95,28),(144,95,27),(145,95,26),(146,95,31),(147,95,33),(148,95,34),(149,95,36),(150,96,36),(151,96,26),(152,96,28),(153,96,34),(154,96,27),(155,96,33),(156,96,31),(157,96,29),(158,97,36),(159,97,33),(160,97,34),(161,97,31),(162,97,28),(163,97,29),(164,97,26),(165,97,27),(166,98,41),(167,99,34),(168,99,36),(169,99,28),(170,99,29),(171,99,26),(172,99,27),(173,99,33),(174,99,31),(175,100,36),(176,100,26),(177,100,27),(178,100,28),(179,100,29),(180,100,31),(181,100,33),(182,100,34),(183,101,27),(184,101,30),(185,101,32),(186,101,34),(187,102,40),(188,103,26),(189,103,27),(190,103,28),(191,103,29),(192,103,34),(193,103,36),(194,103,31),(195,103,33),(196,104,41);
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
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,55,'<com.a.b: boolean b()>',172,'p',NULL),(2,56,'<com.google.update.c: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(3,17,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(4,57,'<com.google.update.i: void run()>',42,'a',NULL),(5,58,'<com.google.update.e: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(6,16,'<com.google.update.UpdateService: int f()>',34,'a',NULL),(7,1,'<com.safesys.myvpn.VpnSettings: void a(com.safesys.myvpn.a.d)>',18,'a',NULL),(8,16,'<com.google.update.UpdateService: void e()>',77,'a',NULL),(9,13,'<com.safesys.myvpn.VpnAppWidgetProvider: void onEnabled(android.content.Context)>',6,'s',NULL),(10,60,'<com.safesys.myvpn.v: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(11,1,'<com.safesys.myvpn.VpnSettings: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(12,78,'<com.safesys.myvpn.ao: void a(java.lang.String,com.safesys.myvpn.a.l,int)>',11,'r',NULL),(13,6,'<com.safesys.myvpn.ToggleVpn: void a()>',3,'r',NULL),(14,1,'<com.safesys.myvpn.VpnSettings: void onActivityResult(int,int,android.content.Intent)>',47,'a',NULL),(15,1,'<com.safesys.myvpn.VpnSettings: void b(com.safesys.myvpn.VpnSettings)>',3,'a',NULL),(16,13,'<com.safesys.myvpn.VpnAppWidgetProvider: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',7,'s',NULL),(17,90,'<com.safetest.compass.ShowTips$1: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(18,94,'<com.adwo.adsdk.g: void run()>',59,'a',NULL),(19,50,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(20,95,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(21,96,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(22,54,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(23,97,'<com.livegame.wallpapertoumingyd.MainActivity$2: void onClick(android.view.View)>',35,'a',NULL),(24,98,'<com.livegame.wallpapertoumingyd.MainActivity$1: void onClick(android.view.View)>',37,'a',NULL),(25,99,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(26,100,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(27,101,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(28,21,'<com.safetest.compass.widget.CompassService: void start(android.content.Context)>',4,'s',NULL),(29,24,'<com.safetest.compass.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(30,103,'<com.ju6.a: boolean b()>',178,'p',NULL),(31,104,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(32,50,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(33,105,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(34,53,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(35,53,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(36,61,'<com.livegame.android.shelves.activity.AddBookActivity: void show(android.content.Context)>',3,'a',NULL),(37,106,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(38,84,'<com.livegame.android.shelves.provider.BooksProvider: int delete(android.net.Uri,java.lang.String,java.lang.String[])>',19,'p',0),(39,79,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(40,83,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(41,66,'<com.mogo.DropBubble.DropBubble: void GameOver()>',5,'a',NULL),(42,83,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(43,62,'<com.livegame.android.shelves.activity.BookDetailsActivity: void show(android.content.Context,java.lang.String)>',5,'a',NULL),(44,79,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(45,107,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(46,81,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(47,108,'<com.livegame.android.shelves.provider.BooksManager: com.livegame.android.shelves.provider.BooksStore$Book findBook(android.content.ContentResolver,java.lang.String)>',9,'p',NULL),(48,110,'<com.mobclick.android.MobclickAgent: void c(android.content.Context,java.io.File)>',11,'a',NULL),(49,108,'<com.livegame.android.shelves.provider.BooksManager: java.lang.String findBookId(android.content.ContentResolver,java.lang.String)>',11,'p',NULL),(50,64,'<com.livegame.android.shelves.activity.SettingsActivity: void show(android.content.Context)>',3,'a',NULL),(51,108,'<com.livegame.android.shelves.provider.BooksManager: boolean deleteBook(android.content.ContentResolver,java.lang.String)>',6,'p',NULL),(52,111,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(53,59,'<com.livegame.android.shelves.activity.ShelvesActivity: void onBuy(com.livegame.android.shelves.provider.BooksStore$Book)>',6,'a',NULL),(54,70,'<com.mogo.DropBubble.GameOver: boolean onMenuItemClicked(org.anddev.andengine.entity.scene.menu.MenuScene,org.anddev.andengine.entity.scene.menu.item.IMenuItem,float,float)>',12,'a',NULL),(55,84,'<com.livegame.android.shelves.provider.BooksProvider: android.net.Uri insert(android.net.Uri,android.content.ContentValues)>',31,'p',0),(56,108,'<com.livegame.android.shelves.provider.BooksManager: boolean bookExists(android.content.ContentResolver,java.lang.String)>',10,'p',NULL),(57,112,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(58,113,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(59,65,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(60,114,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(61,63,'<com.mogo.DropBubble.Menu: boolean onMenuItemClicked(org.anddev.andengine.entity.scene.menu.MenuScene,org.anddev.andengine.entity.scene.menu.item.IMenuItem,float,float)>',40,'a',NULL),(62,115,'<com.ju6.a: boolean b()>',178,'p',NULL),(63,63,'<com.mogo.DropBubble.Menu: boolean onMenuItemClicked(org.anddev.andengine.entity.scene.menu.MenuScene,org.anddev.andengine.entity.scene.menu.item.IMenuItem,float,float)>',47,'a',NULL),(64,116,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(65,117,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(66,118,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(67,108,'<com.livegame.android.shelves.provider.BooksManager: com.livegame.android.shelves.provider.BooksStore$Book findBook(android.content.ContentResolver,android.net.Uri)>',4,'p',0),(68,85,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(69,119,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(70,59,'<com.livegame.android.shelves.activity.ShelvesActivity: void onNewIntent(android.content.Intent)>',15,'a',NULL),(71,121,'<com.livegame.android.shelves.provider.BooksUpdater: void run()>',50,'p',NULL),(72,59,'<com.livegame.android.shelves.activity.ShelvesActivity: void handleSearchQuery(android.content.Intent)>',14,'a',NULL),(73,85,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(74,59,'<com.livegame.android.shelves.activity.ShelvesActivity: void startScan(int)>',5,'a',NULL),(75,122,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(76,123,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(77,124,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(78,125,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(79,86,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(80,70,'<com.mogo.DropBubble.GameOver: boolean onMenuItemClicked(org.anddev.andengine.entity.scene.menu.MenuScene,org.anddev.andengine.entity.scene.menu.item.IMenuItem,float,float)>',19,'a',NULL),(81,126,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(82,127,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(83,128,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(84,40,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(85,130,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(86,131,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(87,132,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(88,133,'<com.gp.paopaoyu.SettingsActivity$2: void onClick(android.view.View)>',6,'a',NULL),(89,134,'<com.gp.paopaoyu.FeedActivity$5: void onClick(android.view.View)>',9,'a',NULL),(90,42,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(91,135,'<com.gp.paopaoyu.StoreActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',22,'a',NULL),(92,136,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(93,137,'<com.gp.paopaoyu.MainView$1: void onClick(android.view.View)>',6,'a',NULL),(94,138,'<com.gp.paopaoyu.FeedActivity$4: void onClick(android.view.View)>',9,'a',NULL),(95,139,'<com.waps.s: void onClick(android.view.View)>',59,'a',NULL),(96,140,'<com.gp.paopaoyu.MainView$4: void onClick(android.view.View)>',6,'a',NULL),(97,139,'<com.waps.s: void onClick(android.view.View)>',35,'a',NULL),(98,41,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(99,141,'<com.gp.paopaoyu.FeedActivity$6: void onClick(android.view.View)>',11,'a',NULL),(100,139,'<com.waps.s: void onClick(android.view.View)>',85,'a',NULL),(101,142,'<com.gp.paopaoyu.AquariumsActivity$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(102,40,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(103,143,'<com.gp.paopaoyu.MainView$3: void onClick(android.view.View)>',6,'a',NULL),(104,41,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,10),(2,3,2),(3,4,2),(4,5,2),(5,6,2),(6,9,11),(7,13,2),(8,14,2),(9,16,5),(10,17,5),(11,18,3),(12,19,11),(13,22,2),(14,23,2),(15,24,17),(16,25,18),(17,26,19),(18,27,13),(19,28,19),(20,29,18),(21,30,18),(22,31,13),(23,32,13),(24,33,17),(25,34,13),(26,35,13),(27,36,13),(28,37,19),(29,38,18),(30,40,18),(31,41,2),(32,42,18),(33,43,2),(34,44,18),(35,45,13),(36,46,19),(37,47,13),(38,49,18),(39,50,13),(40,51,13),(41,54,18),(42,56,13),(43,57,19),(44,58,20),(45,59,13),(46,60,10),(47,61,21),(48,62,13),(49,63,2),(50,64,21),(51,65,2),(52,66,18),(53,67,13),(54,69,17),(55,75,13),(56,81,2),(57,82,2),(58,89,2),(59,90,2),(60,93,2),(61,95,2),(62,96,13),(63,99,13),(64,101,2),(65,103,2),(66,104,11),(67,105,13),(68,106,13),(69,107,11),(70,111,13),(71,112,10),(72,116,13),(73,118,13),(74,121,23),(75,122,2),(76,123,2),(77,124,2),(78,125,2),(79,126,13),(80,127,10),(81,132,2),(82,133,2),(83,134,2),(84,135,2),(85,137,13),(86,139,13),(87,144,10),(88,147,13),(89,150,2),(90,151,2),(91,158,2),(92,159,2);
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
INSERT INTO `ICategories` VALUES (1,3,4),(2,4,3),(3,5,3),(4,6,4),(5,13,3),(6,14,4),(7,22,3),(8,23,4),(9,41,3),(10,43,4),(11,63,3),(12,65,4),(13,81,4),(14,82,3),(15,89,3),(16,90,4),(17,93,3),(18,95,4),(19,101,3),(20,103,4),(21,104,5),(22,106,5),(23,107,5),(24,122,4),(25,123,3),(26,124,3),(27,125,4),(28,132,3),(29,133,4),(30,134,4),(31,135,3),(32,150,3),(33,151,4),(34,158,3),(35,159,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'com/google/update/UpdateService'),(2,7,'com/google/update/Dialog'),(3,8,'com/google/update/Dialog'),(4,9,'(.*)'),(5,10,'com/google/update/Dialog'),(6,11,'com/safesys/myvpn/VpnConnectorService'),(7,12,'com/google/update/Dialog'),(8,15,'com/safesys/myvpn/Settings'),(9,19,'(.*)'),(10,20,'com/safesys/myvpn/VpnTypeSelection'),(11,21,'com/safesys/myvpn/VpnConnectorService'),(12,32,'com.google.android.maps.MapsActivity'),(13,48,'NULL-CONSTANT'),(14,50,'com/adwo/adsdk/AdwoAdBrowserActivity'),(15,52,'com/google/update/UpdateService'),(16,51,'com.google.android.maps.MapsActivity'),(17,55,'com/livegame/wallpapertoumingyd/SettingsActivity'),(18,56,'com.google.android.maps.MapsActivity'),(19,59,'com.google.android.maps.MapsActivity'),(20,67,'com.google.android.maps.MapsActivity'),(21,68,'com/waps/OffersWebView'),(22,71,'com/safetest/compass/widget/CompassService'),(23,70,'com/waps/OffersWebView'),(24,72,'com/safetest/compass/UpdateService'),(25,73,'com/waps/OffersWebView'),(26,74,'(.*)'),(27,76,'com/google/update/Dialog'),(28,77,'com/google/update/Dialog'),(29,78,'com/google/update/Dialog'),(30,79,'com/google/update/Dialog'),(31,80,'com/livegame/android/shelves/activity/AddBookActivity'),(32,84,'(.*)'),(33,83,'com/google/update/Dialog'),(34,86,'com/mogo/DropBubble/GameOver'),(35,85,'com/google/update/Dialog'),(36,88,'com/livegame/android/shelves/activity/BookDetailsActivity'),(37,91,'com/google/update/Dialog'),(38,92,'com/google/update/Dialog'),(39,94,'com/google/update/UpdateService'),(40,97,'com/livegame/android/shelves/activity/SettingsActivity'),(41,98,'NULL-CONSTANT'),(42,100,'com/mogo/DropBubble/DropBubble'),(43,102,'com/waps/OffersWebView'),(44,108,'com/mogo/DropBubble/DropBubble'),(45,109,'com/mogo/DropBubble/Help'),(46,110,'com/waps/OffersWebView'),(47,113,'com/google/update/Dialog'),(48,114,'com/google/update/Dialog'),(49,115,'com/waps/OffersWebView'),(50,117,'com/waps/OffersWebView'),(51,119,'com/google/update/Dialog'),(52,120,'com/google/update/Dialog'),(53,128,'com/google/update/UpdateService'),(54,129,'com/mogo/DropBubble/Help'),(55,130,'com/waps/OffersWebView'),(56,131,'com/waps/OffersWebView'),(57,136,'(.*)'),(58,138,'NULL-CONSTANT'),(59,140,'com/gp/paopaoyu/CreditActivity'),(60,141,'com/gp/paopaoyu/StoreActivity'),(61,142,'com/google/update/UpdateService'),(62,143,'com/gp/paopaoyu/StoreDetailActivity'),(63,145,'com/gp/paopaoyu/AquariumsActivity'),(64,146,'com/gp/paopaoyu/BagActivity'),(65,148,'com/gp/paopaoyu/HelpActivity'),(66,152,'com/google/update/Dialog'),(67,153,'com/google/update/Dialog'),(68,154,'com/gp/paopaoyu/MiniGameActivity'),(69,155,'com/waps/OffersWebView'),(70,156,'com/gp/paopaoyu/FeedActivity'),(71,160,'com/gp/paopaoyu/SettingsActivity'),(72,161,'com/google/update/Dialog'),(73,162,'com/google/update/Dialog');
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,24,2),(2,25,3),(3,26,4),(4,27,5),(5,28,6),(6,29,7),(7,30,8),(8,31,9),(9,33,10),(10,34,11),(11,35,12),(12,37,13),(13,38,14),(14,44,15),(15,45,16),(16,47,17),(17,49,18),(18,51,19),(19,54,20),(20,56,21),(21,57,22),(22,59,23),(23,62,24),(24,66,25),(25,67,26),(26,75,28),(27,96,31),(28,99,33),(29,104,35),(30,105,36),(31,106,37),(32,107,38),(33,111,40),(34,116,41),(35,118,43),(36,126,44),(37,137,45),(38,139,46),(39,147,47);
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
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,7,'TYPEdsada'),(2,8,'MSG'),(3,8,'TYPEdsada'),(4,9,'vpnProfileName'),(5,10,'TYPEdsada'),(6,12,'MSG'),(7,12,'TYPEdsada'),(8,16,'connection_state'),(9,16,'profile_name'),(10,17,'connection_state'),(11,17,'profile_name'),(12,17,'err'),(13,19,'vpnType'),(14,25,'android.intent.extra.TEXT'),(15,25,'android.intent.extra.SUBJECT'),(16,25,'android.intent.extra.EMAIL'),(17,26,'sms_body'),(18,29,'android.intent.extra.EMAIL'),(19,30,'android.intent.extra.TEXT'),(20,30,'android.intent.extra.EMAIL'),(21,38,'android.intent.extra.EMAIL'),(22,42,'android.intent.extra.TEXT'),(23,42,'android.intent.extra.SUBJECT'),(24,42,'android.intent.extra.EMAIL'),(25,44,'android.intent.extra.TEXT'),(26,44,'android.intent.extra.SUBJECT'),(27,44,'android.intent.extra.EMAIL'),(28,50,'url'),(29,54,'android.intent.extra.TEXT'),(30,54,'android.intent.extra.EMAIL'),(31,57,'sms_body'),(32,58,'android.live_wallpaper.package'),(33,58,'android.live_wallpaper.settings'),(34,61,'query'),(35,68,'UrlPath'),(36,68,'ACTIVITY_FLAG'),(37,68,'isFinshClose'),(38,68,'offers_webview_tag'),(39,70,'Notify_Url_Params'),(40,70,'UrlPath'),(41,70,'ACTIVITY_FLAG'),(42,70,'isFinshClose'),(43,70,'offers_webview_tag'),(44,73,'USER_ID'),(45,73,'CLIENT_PACKAGE'),(46,73,'Offers_URL'),(47,73,'offers_webview_tag'),(48,73,'URL_PARAMS'),(49,76,'MSG'),(50,76,'TYPEdsada'),(51,77,'TYPEdsada'),(52,78,'MSG'),(53,78,'TYPEdsada'),(54,79,'TYPEdsada'),(55,83,'MSG'),(56,83,'TYPEdsada'),(57,85,'TYPEdsada'),(58,88,'shelves.extra.book_id'),(59,91,'MSG'),(60,91,'TYPEdsada'),(61,92,'TYPEdsada'),(62,102,'USER_ID'),(63,102,'CLIENT_PACKAGE'),(64,102,'Offers_URL'),(65,102,'offers_webview_tag'),(66,102,'URL_PARAMS'),(67,110,'USER_ID'),(68,110,'CLIENT_PACKAGE'),(69,110,'Offers_URL'),(70,110,'URL_PARAMS'),(71,113,'TYPEdsada'),(72,114,'MSG'),(73,114,'TYPEdsada'),(74,115,'UrlPath'),(75,115,'ACTIVITY_FLAG'),(76,115,'isFinshClose'),(77,115,'offers_webview_tag'),(78,117,'Notify_Url_Params'),(79,117,'UrlPath'),(80,117,'ACTIVITY_FLAG'),(81,117,'isFinshClose'),(82,117,'offers_webview_tag'),(83,119,'TYPEdsada'),(84,120,'MSG'),(85,120,'TYPEdsada'),(86,121,'SCAN_MODE'),(87,130,'Notify_Url_Params'),(88,130,'UrlPath'),(89,130,'ACTIVITY_FLAG'),(90,130,'isFinshClose'),(91,130,'offers_webview_tag'),(92,131,'UrlPath'),(93,131,'ACTIVITY_FLAG'),(94,131,'isFinshClose'),(95,131,'offers_webview_tag'),(96,141,'background'),(97,143,'background'),(98,143,'type'),(99,143,'key'),(100,146,'background'),(101,152,'MSG'),(102,152,'TYPEdsada'),(103,153,'TYPEdsada'),(104,154,'knowledge'),(105,155,'CLIENT_PACKAGE'),(106,155,'URL'),(107,155,'isFinshClose'),(108,155,'offers_webview_tag'),(109,156,'Aquarium'),(110,161,'MSG'),(111,161,'TYPEdsada'),(112,162,'TYPEdsada');
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,1,2),(3,2,3),(4,3,2),(5,4,4),(6,5,5),(7,6,6),(8,6,8),(9,6,7),(10,7,2),(11,8,4),(12,9,8),(13,9,6),(14,9,7),(15,10,2),(16,11,8),(17,11,7),(18,11,6),(19,12,2),(20,13,9),(21,14,6),(22,14,8),(23,14,7),(24,15,2),(25,16,12),(26,17,13),(27,18,2),(28,19,3),(29,19,5),(30,20,8),(31,20,7),(32,20,6),(33,21,7),(34,21,6),(35,21,8),(36,22,3),(37,22,5),(38,23,3),(39,23,5),(40,24,5),(41,24,3),(42,25,3),(43,25,5),(44,26,3),(45,26,5),(46,27,14),(47,28,15),(48,29,15),(49,30,15),(50,31,15),(51,32,15),(52,33,15),(53,34,16),(54,35,16),(55,36,16),(56,37,16),(57,38,16),(58,39,16),(59,40,22),(60,41,22),(61,42,22),(62,43,22);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,1,3),(3,1,2),(4,3,3),(5,7,3),(6,10,3),(7,12,3),(8,15,3),(9,16,2),(10,17,2),(11,18,3);
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
INSERT INTO `IFData` VALUES (1,17,NULL,NULL,NULL,NULL,'vnd.android.cursor.item','vnd.com.livegame.provider.shelves'),(2,40,'package',NULL,NULL,NULL,NULL,NULL),(3,41,'package',NULL,NULL,NULL,NULL,NULL),(4,42,'package',NULL,NULL,NULL,NULL,NULL),(5,43,'package',NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `IMimeTypes` VALUES (1,27,'*','*'),(2,35,'(.*)','(.*)'),(3,42,'message','rfc882'),(4,45,'application','vnd.android.package-archive'),(5,47,'(.*)','(.*)'),(6,62,'*','*'),(7,75,'application','vnd.android.package-archive'),(8,96,'application','vnd.android.package-archive'),(9,105,'application','vnd.android.package-archive'),(10,107,'(.*)','(.*)'),(11,111,'application','vnd.android.package-archive'),(12,126,'application','vnd.android.package-archive'),(13,137,'application','vnd.android.package-archive'),(14,139,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'com.dy.game.lianliankan'),(2,3,'com.dy.game.lianliankan'),(3,4,'com.dy.game.lianliankan'),(4,5,'com.noshufou.android.su'),(5,6,'com.noshufou.android.su'),(6,7,'com.dy.game.lianliankan'),(7,8,'com.dy.game.lianliankan'),(8,9,'com.safesys.myvpn'),(9,10,'com.dy.game.lianliankan'),(10,11,'com.safesys.myvpn'),(11,12,'com.dy.game.lianliankan'),(12,13,'com.noshufou.android.su'),(13,14,'com.noshufou.android.su'),(14,15,'com.safesys.myvpn'),(15,19,'com.safesys.myvpn'),(16,20,'com.safesys.myvpn'),(17,21,'com.safesys.myvpn'),(18,22,'com.noshufou.android.su'),(19,23,'com.noshufou.android.su'),(20,32,'com.google.android.apps.maps'),(21,41,'(.*)'),(22,43,'(.*)'),(23,48,'NULL-CONSTANT'),(24,50,'com.safetest.compass'),(25,52,'com.livegame.wallpapertoumingyd'),(26,51,'com.google.android.apps.maps'),(27,55,'com.livegame.wallpapertoumingyd'),(28,56,'com.google.android.apps.maps'),(29,59,'com.google.android.apps.maps'),(30,63,'com.noshufou.android.su'),(31,65,'com.noshufou.android.su'),(32,67,'com.google.android.apps.maps'),(33,68,'com.livegame.wallpapertoumingyd'),(34,71,'com.safetest.compass'),(35,70,'com.livegame.wallpapertoumingyd'),(36,72,'com.safetest.compass'),(37,73,'com.livegame.wallpapertoumingyd'),(38,74,'(.*)'),(39,76,'com.livegame.wallpapertoumingyd'),(40,77,'com.livegame.wallpapertoumingyd'),(41,78,'com.livegame.wallpapertoumingyd'),(42,79,'com.livegame.wallpapertoumingyd'),(43,80,'com.livegame.android.shelves'),(44,81,'com.livegame.wallpapertoumingyd'),(45,82,'com.livegame.wallpapertoumingyd'),(46,84,'(.*)'),(47,83,'com.livegame.android.shelves'),(48,86,'com.mogo.DropBubble'),(49,85,'com.livegame.android.shelves'),(50,88,'com.livegame.android.shelves'),(51,89,'(.*)'),(52,90,'(.*)'),(53,91,'com.livegame.android.shelves'),(54,92,'com.livegame.android.shelves'),(55,93,'com.noshufou.android.su'),(56,94,'com.livegame.android.shelves'),(57,95,'com.noshufou.android.su'),(58,97,'com.livegame.android.shelves'),(59,98,'NULL-CONSTANT'),(60,100,'com.mogo.DropBubble'),(61,101,'com.noshufou.android.su'),(62,103,'com.noshufou.android.su'),(63,102,'com.mogo.DropBubble'),(64,108,'com.mogo.DropBubble'),(65,109,'com.mogo.DropBubble'),(66,110,'com.livegame.android.shelves'),(67,113,'com.mogo.DropBubble'),(68,114,'com.mogo.DropBubble'),(69,115,'com.mogo.DropBubble'),(70,117,'com.mogo.DropBubble'),(71,119,'com.mogo.DropBubble'),(72,120,'com.mogo.DropBubble'),(73,122,'com.livegame.android.shelves'),(74,123,'com.mogo.DropBubble'),(75,124,'com.livegame.android.shelves'),(76,125,'com.mogo.DropBubble'),(77,128,'com.mogo.DropBubble'),(78,129,'com.mogo.DropBubble'),(79,130,'com.gp.paopaoyu'),(80,131,'com.gp.paopaoyu'),(81,132,'com.noshufou.android.su'),(82,133,'com.noshufou.android.su'),(83,134,'com.gp.paopaoyu'),(84,135,'com.gp.paopaoyu'),(85,136,'(.*)'),(86,138,'NULL-CONSTANT'),(87,140,'com.gp.paopaoyu'),(88,141,'com.gp.paopaoyu'),(89,142,'com.gp.paopaoyu'),(90,143,'com.gp.paopaoyu'),(91,145,'com.gp.paopaoyu'),(92,146,'com.gp.paopaoyu'),(93,148,'com.gp.paopaoyu'),(94,150,'NULL-CONSTANT'),(95,151,'NULL-CONSTANT'),(96,152,'com.gp.paopaoyu'),(97,153,'com.gp.paopaoyu'),(98,154,'com.gp.paopaoyu'),(99,155,'com.gp.paopaoyu'),(100,156,'com.gp.paopaoyu'),(101,158,'(.*)'),(102,159,'(.*)'),(103,160,'com.gp.paopaoyu'),(104,161,'com.gp.paopaoyu'),(105,162,'com.gp.paopaoyu');
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,11,0),(3,12,0),(4,13,0),(5,15,0),(6,17,0),(7,18,0),(8,23,0),(9,24,0),(10,25,0),(11,42,0),(12,43,0),(13,52,0),(14,54,0),(15,55,0),(16,55,0),(17,57,0),(18,58,0),(19,68,0),(20,75,0),(21,80,0),(22,13,0),(23,81,0),(24,15,0),(25,68,0),(26,82,0),(27,83,0),(28,84,0),(29,83,0),(30,24,0),(31,85,0),(32,86,0),(33,23,0),(34,84,0),(35,83,0),(36,24,0),(37,85,0),(38,86,0),(39,23,0),(40,87,0),(41,88,0),(42,89,0),(43,90,0);
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
INSERT INTO `Intents` VALUES (1,2,1,0),(2,3,0,0),(3,4,1,0),(4,4,1,0),(5,5,1,0),(6,5,1,0),(7,6,0,0),(8,6,0,0),(9,7,0,0),(10,8,0,0),(11,9,0,0),(12,8,0,0),(13,10,1,0),(14,10,1,0),(15,11,0,0),(16,12,1,0),(17,12,1,0),(18,13,1,0),(19,14,0,0),(20,15,0,0),(21,16,0,0),(22,17,1,0),(23,17,1,0),(24,18,1,0),(25,18,1,0),(26,18,1,0),(27,18,1,0),(28,18,1,0),(29,18,1,0),(30,18,1,0),(31,18,1,0),(32,18,0,0),(33,18,1,0),(34,18,1,0),(35,18,1,0),(36,18,1,0),(37,18,1,0),(38,18,1,0),(39,19,1,0),(40,18,1,0),(41,19,1,0),(42,18,1,0),(43,19,1,0),(44,18,1,0),(45,20,1,0),(46,18,1,0),(47,18,1,0),(48,21,0,0),(49,18,1,0),(50,18,0,0),(51,18,0,0),(52,22,0,0),(53,18,1,0),(54,18,1,0),(55,23,0,0),(56,18,0,0),(57,18,1,0),(58,24,1,0),(59,18,0,0),(60,25,1,0),(61,18,1,0),(62,18,1,0),(63,26,1,0),(64,18,1,0),(65,26,1,0),(66,18,1,0),(67,18,0,0),(68,27,0,0),(69,18,1,0),(70,27,0,0),(71,28,0,0),(72,29,0,0),(73,31,0,0),(74,32,0,0),(75,33,1,0),(76,34,0,0),(77,34,0,0),(78,35,0,0),(79,35,0,0),(80,36,0,0),(81,37,1,0),(82,37,1,0),(83,39,0,0),(84,40,0,0),(85,39,0,0),(86,41,0,0),(87,42,1,0),(88,43,0,0),(89,42,1,0),(90,42,1,0),(91,44,0,0),(92,44,0,0),(93,45,1,0),(94,46,0,0),(95,45,1,0),(96,48,1,0),(97,50,0,0),(98,52,0,0),(99,53,1,0),(100,54,0,0),(101,57,1,0),(102,58,0,0),(103,57,1,0),(104,59,1,0),(105,60,1,0),(106,59,1,0),(107,59,1,0),(108,61,0,0),(109,63,0,0),(110,64,0,0),(111,65,1,0),(112,66,1,0),(113,68,0,0),(114,68,0,0),(115,69,0,0),(116,70,1,0),(117,69,0,0),(118,72,1,0),(119,73,0,0),(120,73,0,0),(121,74,1,0),(122,75,1,0),(123,76,1,0),(124,75,1,0),(125,76,1,0),(126,77,1,0),(127,78,1,0),(128,79,0,0),(129,80,0,0),(130,81,0,0),(131,81,0,0),(132,82,1,0),(133,82,1,0),(134,83,1,0),(135,83,1,0),(136,84,0,0),(137,85,1,0),(138,86,0,0),(139,87,1,0),(140,88,0,0),(141,89,0,0),(142,90,0,0),(143,91,0,0),(144,92,1,0),(145,93,0,0),(146,94,0,0),(147,95,1,0),(148,96,0,0),(149,97,1,0),(150,97,1,0),(151,97,1,0),(152,98,0,0),(153,98,0,0),(154,99,0,0),(155,100,0,0),(156,101,0,0),(157,102,1,0),(158,102,1,0),(159,102,1,0),(160,103,0,0),(161,104,0,0),(162,104,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=488 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,99,1,2,NULL),(2,121,1,2,NULL),(3,18,55,2,NULL),(4,99,11,2,NULL),(5,121,11,2,NULL),(6,99,13,2,NULL),(7,121,13,2,NULL),(8,18,18,2,NULL),(9,99,15,2,NULL),(10,157,18,2,NULL),(11,121,15,2,NULL),(12,158,18,2,NULL),(13,99,68,2,NULL),(14,159,18,2,NULL),(15,121,68,2,NULL),(16,39,18,2,NULL),(17,99,81,2,NULL),(18,41,18,2,NULL),(19,121,81,2,NULL),(20,43,18,2,NULL),(21,99,82,2,NULL),(22,99,18,2,NULL),(23,121,82,2,NULL),(24,121,18,2,NULL),(25,99,12,2,NULL),(26,104,18,2,NULL),(27,121,12,2,NULL),(28,106,18,2,NULL),(29,99,17,2,NULL),(30,87,18,2,NULL),(31,121,17,2,NULL),(32,89,18,2,NULL),(33,99,23,2,NULL),(34,90,18,2,NULL),(35,121,23,2,NULL),(36,71,21,2,NULL),(37,99,24,2,NULL),(38,18,23,2,NULL),(39,121,24,2,NULL),(40,157,23,2,NULL),(41,99,83,2,NULL),(42,158,23,2,NULL),(43,121,83,2,NULL),(44,159,23,2,NULL),(45,99,84,2,NULL),(46,39,23,2,NULL),(47,121,84,2,NULL),(48,41,23,2,NULL),(49,99,85,2,NULL),(50,43,23,2,NULL),(51,121,85,2,NULL),(52,104,23,2,NULL),(53,99,86,2,NULL),(54,106,23,2,NULL),(55,121,86,2,NULL),(56,87,23,2,NULL),(57,99,25,2,NULL),(58,89,23,2,NULL),(59,121,25,2,NULL),(60,90,23,2,NULL),(61,157,55,2,NULL),(62,72,22,2,NULL),(63,158,55,2,NULL),(64,18,24,2,NULL),(65,159,55,2,NULL),(66,157,24,2,NULL),(67,99,42,2,NULL),(68,158,24,2,NULL),(69,121,42,2,NULL),(70,159,24,2,NULL),(71,99,43,2,NULL),(72,39,24,2,NULL),(73,121,43,2,NULL),(74,41,24,2,NULL),(75,39,55,2,NULL),(76,43,24,2,NULL),(77,41,55,2,NULL),(78,104,24,2,NULL),(79,43,55,2,NULL),(80,106,24,2,NULL),(81,99,52,2,NULL),(82,87,24,2,NULL),(83,121,52,2,NULL),(84,89,24,2,NULL),(85,99,54,2,NULL),(86,90,24,2,NULL),(87,121,54,2,NULL),(88,18,83,2,NULL),(89,104,55,2,NULL),(90,157,83,2,NULL),(91,106,55,2,NULL),(92,158,83,2,NULL),(93,99,75,2,NULL),(94,159,83,2,NULL),(95,121,75,2,NULL),(96,39,83,2,NULL),(97,99,58,2,NULL),(98,41,83,2,NULL),(99,121,58,2,NULL),(100,43,83,2,NULL),(101,87,55,2,NULL),(102,104,83,2,NULL),(103,89,55,2,NULL),(104,106,83,2,NULL),(105,90,55,2,NULL),(106,87,83,2,NULL),(107,99,80,2,NULL),(108,89,83,2,NULL),(109,121,80,2,NULL),(110,90,83,2,NULL),(111,80,56,2,NULL),(112,18,84,2,NULL),(113,88,57,2,NULL),(114,157,84,2,NULL),(115,97,59,2,NULL),(116,158,84,2,NULL),(117,104,1,2,NULL),(118,159,84,2,NULL),(119,106,1,2,NULL),(120,39,84,2,NULL),(121,104,11,2,NULL),(122,41,84,2,NULL),(123,106,11,2,NULL),(124,43,84,2,NULL),(125,104,13,2,NULL),(126,104,84,2,NULL),(127,106,13,2,NULL),(128,106,84,2,NULL),(129,104,15,2,NULL),(130,87,84,2,NULL),(131,106,15,2,NULL),(132,89,84,2,NULL),(133,104,68,2,NULL),(134,90,84,2,NULL),(135,106,68,2,NULL),(136,18,85,2,NULL),(137,104,81,2,NULL),(138,157,85,2,NULL),(139,106,81,2,NULL),(140,158,85,2,NULL),(141,104,82,2,NULL),(142,159,85,2,NULL),(143,106,82,2,NULL),(144,39,85,2,NULL),(145,104,12,2,NULL),(146,41,85,2,NULL),(147,106,12,2,NULL),(148,43,85,2,NULL),(149,104,17,2,NULL),(150,104,85,2,NULL),(151,106,17,2,NULL),(152,106,85,2,NULL),(153,104,86,2,NULL),(154,87,85,2,NULL),(155,106,86,2,NULL),(156,89,85,2,NULL),(157,104,25,2,NULL),(158,90,85,2,NULL),(159,106,25,2,NULL),(160,18,86,2,NULL),(161,104,42,2,NULL),(162,157,86,2,NULL),(163,106,42,2,NULL),(164,158,86,2,NULL),(165,104,43,2,NULL),(166,159,86,2,NULL),(167,106,43,2,NULL),(168,39,86,2,NULL),(169,104,52,2,NULL),(170,41,86,2,NULL),(171,106,52,2,NULL),(172,43,86,2,NULL),(173,104,54,2,NULL),(174,87,86,2,NULL),(175,106,54,2,NULL),(176,89,86,2,NULL),(177,104,75,2,NULL),(178,90,86,2,NULL),(179,106,75,2,NULL),(180,104,58,2,NULL),(181,106,58,2,NULL),(182,104,80,2,NULL),(183,106,80,2,NULL),(184,83,14,2,NULL),(185,83,39,2,NULL),(186,83,51,2,NULL),(187,83,71,2,NULL),(188,83,76,2,NULL),(189,85,14,2,NULL),(190,85,39,2,NULL),(191,85,51,2,NULL),(192,85,71,2,NULL),(193,85,76,2,NULL),(194,91,14,2,NULL),(195,91,39,2,NULL),(196,91,51,2,NULL),(197,91,71,2,NULL),(198,91,76,2,NULL),(199,92,14,2,NULL),(200,92,39,2,NULL),(201,92,51,2,NULL),(202,92,71,2,NULL),(203,92,76,2,NULL),(204,94,16,2,NULL),(205,94,41,2,NULL),(206,94,53,2,NULL),(207,94,73,2,NULL),(208,94,79,2,NULL),(209,18,75,2,NULL),(210,157,75,2,NULL),(211,158,75,2,NULL),(212,159,75,2,NULL),(213,39,75,2,NULL),(214,41,75,2,NULL),(215,43,75,2,NULL),(216,87,75,2,NULL),(217,89,75,2,NULL),(218,90,75,2,NULL),(219,18,12,2,NULL),(220,157,12,2,NULL),(221,158,12,2,NULL),(222,159,12,2,NULL),(223,39,12,2,NULL),(224,41,12,2,NULL),(225,43,12,2,NULL),(226,87,12,2,NULL),(227,89,12,2,NULL),(228,90,12,2,NULL),(229,7,14,2,NULL),(230,7,39,2,NULL),(231,7,51,2,NULL),(232,7,71,2,NULL),(233,7,76,2,NULL),(234,8,14,2,NULL),(235,8,39,2,NULL),(236,8,51,2,NULL),(237,8,71,2,NULL),(238,8,76,2,NULL),(239,10,14,2,NULL),(240,15,7,2,NULL),(241,10,39,2,NULL),(242,20,2,2,NULL),(243,10,51,2,NULL),(244,18,1,2,NULL),(245,10,71,2,NULL),(246,157,1,2,NULL),(247,10,76,2,NULL),(248,158,1,2,NULL),(249,12,14,2,NULL),(250,159,1,2,NULL),(251,12,39,2,NULL),(252,39,1,2,NULL),(253,12,51,2,NULL),(254,41,1,2,NULL),(255,12,71,2,NULL),(256,43,1,2,NULL),(257,12,76,2,NULL),(258,87,1,2,NULL),(259,2,16,2,NULL),(260,89,1,2,NULL),(261,2,41,2,NULL),(262,90,1,2,NULL),(263,2,53,2,NULL),(264,18,11,2,NULL),(265,2,73,2,NULL),(266,18,13,2,NULL),(267,2,79,2,NULL),(268,18,15,2,NULL),(269,18,17,2,NULL),(270,18,68,2,NULL),(271,157,17,2,NULL),(272,18,81,2,NULL),(273,158,17,2,NULL),(274,18,82,2,NULL),(275,159,17,2,NULL),(276,18,25,2,NULL),(277,39,17,2,NULL),(278,18,42,2,NULL),(279,41,17,2,NULL),(280,18,43,2,NULL),(281,43,17,2,NULL),(282,18,52,2,NULL),(283,87,17,2,NULL),(284,18,54,2,NULL),(285,89,17,2,NULL),(286,18,58,2,NULL),(287,90,17,2,NULL),(288,18,80,2,NULL),(289,157,11,2,NULL),(290,158,11,2,NULL),(291,159,11,2,NULL),(292,39,11,2,NULL),(293,41,11,2,NULL),(294,43,11,2,NULL),(295,87,11,2,NULL),(296,89,11,2,NULL),(297,90,11,2,NULL),(298,11,11,2,NULL),(299,21,11,2,NULL),(300,157,13,2,NULL),(301,158,13,2,NULL),(302,159,13,2,NULL),(303,39,13,2,NULL),(304,41,13,2,NULL),(305,43,13,2,NULL),(306,87,13,2,NULL),(307,89,13,2,NULL),(308,90,13,2,NULL),(309,157,15,2,NULL),(310,158,15,2,NULL),(311,159,15,2,NULL),(312,39,15,2,NULL),(313,41,15,2,NULL),(314,43,15,2,NULL),(315,87,15,2,NULL),(316,89,15,2,NULL),(317,90,15,2,NULL),(318,157,68,2,NULL),(319,158,68,2,NULL),(320,159,68,2,NULL),(321,39,68,2,NULL),(322,41,68,2,NULL),(323,43,68,2,NULL),(324,87,68,2,NULL),(325,89,68,2,NULL),(326,90,68,2,NULL),(327,157,81,2,NULL),(328,158,81,2,NULL),(329,159,81,2,NULL),(330,39,81,2,NULL),(331,41,81,2,NULL),(332,43,81,2,NULL),(333,87,81,2,NULL),(334,89,81,2,NULL),(335,90,81,2,NULL),(336,157,82,2,NULL),(337,158,82,2,NULL),(338,159,82,2,NULL),(339,39,82,2,NULL),(340,41,82,2,NULL),(341,43,82,2,NULL),(342,87,82,2,NULL),(343,89,82,2,NULL),(344,90,82,2,NULL),(345,157,43,2,NULL),(346,158,43,2,NULL),(347,159,43,2,NULL),(348,39,43,2,NULL),(349,41,43,2,NULL),(350,43,43,2,NULL),(351,87,43,2,NULL),(352,89,43,2,NULL),(353,90,43,2,NULL),(354,39,25,2,NULL),(355,41,25,2,NULL),(356,43,25,2,NULL),(357,39,42,2,NULL),(358,41,42,2,NULL),(359,43,42,2,NULL),(360,39,52,2,NULL),(361,41,52,2,NULL),(362,43,52,2,NULL),(363,39,54,2,NULL),(364,41,54,2,NULL),(365,43,54,2,NULL),(366,39,58,2,NULL),(367,41,58,2,NULL),(368,43,58,2,NULL),(369,39,80,2,NULL),(370,41,80,2,NULL),(371,43,80,2,NULL),(372,157,52,2,NULL),(373,158,52,2,NULL),(374,159,52,2,NULL),(375,87,52,2,NULL),(376,89,52,2,NULL),(377,90,52,2,NULL),(378,76,14,2,NULL),(379,76,39,2,NULL),(380,76,51,2,NULL),(381,76,71,2,NULL),(382,76,76,2,NULL),(383,77,14,2,NULL),(384,77,39,2,NULL),(385,77,51,2,NULL),(386,77,71,2,NULL),(387,77,76,2,NULL),(388,78,14,2,NULL),(389,78,39,2,NULL),(390,78,51,2,NULL),(391,78,71,2,NULL),(392,78,76,2,NULL),(393,79,14,2,NULL),(394,79,39,2,NULL),(395,79,51,2,NULL),(396,79,71,2,NULL),(397,79,76,2,NULL),(398,52,16,2,NULL),(399,52,41,2,NULL),(400,52,53,2,NULL),(401,52,73,2,NULL),(402,52,79,2,NULL),(403,157,54,2,NULL),(404,158,54,2,NULL),(405,159,54,2,NULL),(406,87,54,2,NULL),(407,89,54,2,NULL),(408,90,54,2,NULL),(409,108,61,2,NULL),(410,109,63,2,NULL),(411,157,58,2,NULL),(412,158,58,2,NULL),(413,159,58,2,NULL),(414,87,58,2,NULL),(415,89,58,2,NULL),(416,90,58,2,NULL),(417,86,65,2,NULL),(418,100,61,2,NULL),(419,129,63,2,NULL),(420,87,25,2,NULL),(421,89,25,2,NULL),(422,90,25,2,NULL),(423,87,42,2,NULL),(424,89,42,2,NULL),(425,90,42,2,NULL),(426,87,80,2,NULL),(427,89,80,2,NULL),(428,90,80,2,NULL),(429,113,14,2,NULL),(430,113,39,2,NULL),(431,113,51,2,NULL),(432,113,71,2,NULL),(433,113,76,2,NULL),(434,114,14,2,NULL),(435,114,39,2,NULL),(436,114,51,2,NULL),(437,114,71,2,NULL),(438,114,76,2,NULL),(439,119,14,2,NULL),(440,119,39,2,NULL),(441,119,51,2,NULL),(442,119,71,2,NULL),(443,119,76,2,NULL),(444,120,14,2,NULL),(445,120,39,2,NULL),(446,120,51,2,NULL),(447,120,71,2,NULL),(448,120,76,2,NULL),(449,128,16,2,NULL),(450,128,41,2,NULL),(451,128,53,2,NULL),(452,128,73,2,NULL),(453,128,79,2,NULL),(454,157,80,2,NULL),(455,158,80,2,NULL),(456,159,80,2,NULL),(457,157,25,2,NULL),(458,158,25,2,NULL),(459,159,25,2,NULL),(460,157,42,2,NULL),(461,158,42,2,NULL),(462,159,42,2,NULL),(463,152,14,2,NULL),(464,152,39,2,NULL),(465,152,51,2,NULL),(466,152,71,2,NULL),(467,152,76,2,NULL),(468,153,14,2,NULL),(469,153,39,2,NULL),(470,153,51,2,NULL),(471,153,71,2,NULL),(472,153,76,2,NULL),(473,161,14,2,NULL),(474,161,39,2,NULL),(475,161,51,2,NULL),(476,161,71,2,NULL),(477,161,76,2,NULL),(478,162,14,2,NULL),(479,162,39,2,NULL),(480,162,51,2,NULL),(481,162,71,2,NULL),(482,162,76,2,NULL),(483,142,16,2,NULL),(484,142,41,2,NULL),(485,142,53,2,NULL),(486,142,73,2,NULL),(487,142,79,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAuthorities`
--

LOCK TABLES `PAuthorities` WRITE;
/*!40000 ALTER TABLE `PAuthorities` DISABLE KEYS */;
INSERT INTO `PAuthorities` VALUES (1,1,'shelves');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (11,'android.permission.ACCESS_COARSE_LOCATION'),(12,'android.permission.ACCESS_FINE_LOCATION'),(17,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(5,'android.permission.ACCESS_NETWORK_STATE'),(4,'android.permission.ACCESS_WIFI_STATE'),(15,'android.permission.BIND_WALLPAPER'),(9,'android.permission.CHANGE_WIFI_STATE'),(13,'android.permission.GET_TASKS'),(6,'android.permission.INSTALL_PACKAGES'),(3,'android.permission.INTERNET'),(16,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(7,'android.permission.READ_SMS'),(8,'android.permission.RECEIVE_BOOT_COMPLETED'),(14,'android.permission.WAKE_LOCK'),(2,'android.permission.WRITE_EXTERNAL_STORAGE'),(10,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Providers`
--

LOCK TABLES `Providers` WRITE;
/*!40000 ALTER TABLE `Providers` DISABLE KEYS */;
INSERT INTO `Providers` VALUES (1,78,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(2,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(3,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(4,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(5,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(6,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(7,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(8,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(9,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(10,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT((.*))&z=22',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL),(21,NULL,NULL,'http://maps.google.com/maps?q=(.*)((.*))&z=22',NULL,NULL,NULL),(22,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(23,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT()&z=22',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(26,NULL,NULL,'http://maps.google.com/maps?q=(.*)()&z=22',NULL,NULL,NULL),(27,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(28,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(29,NULL,NULL,'content://shelves/books',NULL,NULL,NULL),(30,NULL,NULL,'content://shelves/books',NULL,NULL,NULL),(31,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(32,NULL,NULL,'content://shelves/books',NULL,NULL,NULL),(33,NULL,NULL,'(.*)',NULL,NULL,NULL),(34,NULL,NULL,'content://shelves/books',NULL,NULL,NULL),(35,NULL,NULL,'(.*)',NULL,NULL,NULL),(36,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(37,NULL,NULL,'(.*)',NULL,NULL,NULL),(38,NULL,NULL,'(.*)',NULL,NULL,NULL),(39,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(40,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(41,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(42,NULL,NULL,'content://shelves/books',NULL,NULL,NULL),(43,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(44,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(45,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(46,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(47,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,1,1),(2,30,27),(3,47,29),(4,49,30),(5,51,32),(6,56,34),(7,62,39),(8,71,42);
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
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,2,1),(7,2,2),(8,2,3),(9,2,4),(10,2,5),(11,2,6),(12,2,7),(13,2,8),(14,2,9),(15,2,10),(16,2,11),(17,3,1),(18,3,3),(19,3,4),(20,3,5),(21,3,7),(22,3,10),(23,3,11),(24,3,12),(25,4,1),(26,4,2),(27,4,3),(28,4,4),(29,4,5),(30,4,8),(31,4,9),(32,4,13),(33,4,14),(34,5,1),(35,5,2),(36,5,3),(37,5,4),(38,5,5),(39,5,8),(40,5,9),(41,5,11),(42,5,12),(43,5,13),(44,6,1),(45,6,2),(46,6,3),(47,6,4),(48,6,5),(49,6,6),(50,6,7),(51,6,9),(52,6,10),(53,6,11),(54,6,12),(55,6,13),(56,6,17),(57,6,16),(58,7,1),(59,7,2),(60,7,3),(61,7,4),(62,7,5),(63,7,8),(64,7,9),(65,7,11),(66,7,12),(67,7,13),(68,7,14),(69,7,17),(70,7,16);
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

-- Dump completed on 2015-10-12  3:29:33
