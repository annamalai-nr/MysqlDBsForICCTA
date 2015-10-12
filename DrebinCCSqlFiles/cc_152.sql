-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_152
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (8,'(.*)'),(12,'android.appwidget.action.APPWIDGET_UPDATE'),(16,'android.intent.action.BATTERY_CHANGED'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(17,'android.intent.action.CHOOSER'),(18,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(7,'android.intent.action.PACKAGE_ADDED'),(14,'android.intent.action.SCREEN_OFF'),(15,'android.intent.action.SCREEN_ON'),(9,'android.intent.action.SEARCH'),(19,'android.intent.action.SEND'),(2,'android.intent.action.SIG_STR'),(6,'android.intent.action.VIEW'),(10,'android.net.vpn.SETTINGS'),(20,'com.android.music.musicservicecommand'),(5,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(11,'myvpn.toggleVpnConnectionAction'),(13,'vpn.connectivity');
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
INSERT INTO `Applications` VALUES (1,'com.peter.wuzilianzhu',1),(2,'com.ps.ddp',12),(3,'com.ps.yams',13),(4,'com.gp.tiltmazes',9),(5,'com.mogo.threesameline',10),(6,'com.evilsunflower.reader.evilYufang15',1),(7,'com.safesys.myvpn2',21);
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
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.BROWSABLE'),(5,'android.intent.category.DEFAULT'),(2,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(4,'com.android.settings.SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.peter.wuzilianzhu.WuzilianzhuActivity'),(2,1,'com.google.update.Dialog'),(3,1,'com.google.update.UpdateService'),(4,1,'com.google.update.Receiver'),(5,2,'com.ps.ddp.MainActivity'),(6,2,'com.ps.ddp.DemoApp'),(7,2,'com.ps.ddp.GameActivity'),(8,2,'com.adwo.adsdk.AdwoAdBrowserActivity'),(9,2,'com.google.update.Dialog'),(10,2,'com.waps.OffersWebView'),(11,2,'com.google.update.UpdateService'),(12,2,'com.google.update.Receiver'),(13,1,'com.google.update.Dialog$1'),(14,1,'com.google.update.Dialog$2'),(15,1,'com.google.update.UpdateService$AA'),(16,3,'com.ps.yams.Yams'),(17,3,'com.google.update.Dialog'),(18,3,'cn.domob.android.ads.DomobActivity'),(19,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(20,3,'com.google.update.UpdateService'),(21,3,'com.google.update.Receiver'),(22,4,'com.gp.tiltmazes.TiltMazesActivity'),(23,4,'com.gp.tiltmazes.SelectMazeActivity'),(24,4,'com.google.update.Dialog'),(25,5,'com.mogo.threesameline.begin'),(26,4,'cn.domob.android.ads.DomobActivity'),(27,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(28,4,'com.waps.OffersWebView'),(29,5,'com.mogo.threesameline.GameActivity'),(30,4,'com.google.update.UpdateService'),(31,5,'com.google.ads.AdActivity'),(32,4,'com.google.update.Receiver'),(33,5,'com.vpon.adon.android.WebInApp'),(34,5,'com.adwo.adsdk.AdwoSplashAdActivity'),(35,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(36,5,'com.waps.OffersWebView'),(37,5,'com.google.update.Dialog'),(38,5,'com.google.update.UpdateService'),(39,5,'com.google.update.Receiver'),(40,2,'com.google.update.UpdateService$AA'),(41,2,'com.google.update.Dialog$2'),(42,2,'com.waps.ac'),(43,2,'com.waps.s'),(44,2,'com.waps.q'),(45,2,'com.waps.o'),(46,2,'com.waps.AppConnect'),(47,2,'com.google.update.Dialog$1'),(48,2,'com.waps.aa'),(49,3,'cn.domob.android.ads.DomobActionReceiver'),(50,3,'cn.domob.android.ads.DomobAdManager'),(51,2,'com.waps.z'),(52,3,'cn.domob.android.ads.i$6'),(53,5,'com.waps.m'),(54,3,'com.google.update.Dialog$2'),(55,5,'com.waps.k'),(56,3,'cn.domob.android.ads.DomobAdEngine$2'),(57,3,'com.google.update.UpdateService$AA'),(58,5,'com.mogo.threesameline.begin$beginButtonListener'),(59,5,'com.ju6.a'),(60,3,'com.google.update.Dialog$1'),(61,5,'com.waps.AppConnect'),(62,3,'cn.domob.android.ads.i'),(63,5,'com.google.update.UpdateService$MyThread'),(64,4,'com.google.update.UpdateService$AA'),(65,5,'com.google.update.Dialog$1'),(66,5,'com.google.update.Dialog$2'),(67,4,'com.waps.q'),(68,4,'com.google.update.Dialog$1'),(69,4,'com.google.update.Dialog$2'),(70,4,'com.waps.ac'),(71,4,'com.waps.aa'),(72,4,'cn.domob.android.ads.DomobActionReceiver'),(73,4,'cn.domob.android.ads.i'),(74,4,'com.waps.z'),(75,6,'com.evilsunflower.reader.evilYufang15.BugReportActivity'),(76,6,'com.evilsunflower.reader.FBReader'),(77,4,'cn.domob.android.ads.DomobAdManager'),(78,6,'com.evilsunflower.reader.CancelActivity'),(79,6,'com.evilsunflower.reader.image.ImageViewActivity'),(80,6,'com.evilsunflower.reader.TOCActivity'),(81,6,'com.evilsunflower.reader.BookmarksActivity'),(82,4,'cn.domob.android.ads.i$6'),(83,6,'com.evilsunflower.reader.control.ShowTips'),(84,6,'com.evilsunflower.reader.BookmarkEditActivity'),(85,6,'com.evilsunflower.reader.Starter'),(86,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(87,6,'com.vpon.adon.android.WebInApp'),(88,6,'com.millennialmedia.android.MMAdViewOverlayActivity'),(89,6,'com.millennialmedia.android.VideoPlayer'),(90,6,'net.youmi.android.AdActivity'),(91,6,'com.google.ads.AdActivity'),(92,6,'com.guohead.sdk.GuoheAdActivity'),(93,6,'cn.domob.android.ads.DomobActivity'),(94,6,'com.evilsunflower.reader.control.UpdateService'),(95,6,'com.evilsunflower.reader.control.Receiver'),(96,4,'com.waps.o'),(97,4,'cn.domob.android.ads.DomobAdEngine$2'),(98,7,'com.safesys.myvpn2.VpnSettings'),(99,7,'com.safesys.myvpn2.VpnTypeSelection'),(100,7,'com.safesys.myvpn2.editor.PptpProfileEditor'),(101,7,'com.safesys.myvpn2.editor.L2tpProfileEditor'),(102,7,'com.safesys.myvpn2.editor.L2tpIpsecPskProfileEditor'),(103,7,'com.safesys.myvpn2.ToggleVpn'),(104,7,'com.safesys.myvpn2.Settings'),(105,7,'com.safesys.myvpn2.VpnConnectorService'),(106,7,'com.safesys.myvpn2.VpnAppWidgetProvider'),(107,7,'com.safesys.myvpn2.KeepAlive'),(108,7,'com.safesys.myvpn2.at'),(109,7,'com.safesys.myvpn2.d'),(110,7,'com.safesys.myvpn2.as'),(111,7,'android.appwidget.AppWidgetProvider'),(112,7,'com.safesys.myvpn2.p'),(113,6,'com.guohead.sdk.adapters.CustomAdapter$4'),(114,6,'com.ju6.c'),(115,6,'com.evilsunflower.reader.control.ShowTips$1'),(116,6,'net.youmi.android.be'),(117,6,'com.evilsunflower.reader.ui.ZLAndroidActivity'),(118,6,'com.adwo.adsdk.M'),(119,6,'com.madhouse.android.ads._'),(120,6,'com.guohead.sdk.adapters.CustomAdapter$3'),(121,6,'com.ju6.mms.pdu.PduPersister'),(122,6,'com.ju6.mms.util.SqliteWrapper'),(123,6,'net.youmi.android.eo'),(124,6,'com.evilsunflower.reader.ui.ZLAndroidActivity$1'),(125,6,'net.youmi.android.t'),(126,6,'com.baidu.as'),(127,6,'com.evilsunflower.reader.ui.BugReportActivity$1'),(128,6,'com.millennialmedia.android.MillennialMediaView'),(129,6,'com.baidu.al');
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
) ENGINE=InnoDB AUTO_INCREMENT=242 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,2,'TYPEdsada'),(2,2,'MSG'),(3,3,'ST_MY_PID'),(4,3,'ST_START_DELAY'),(5,5,'CLIENT_PACKAGE'),(6,10,'CLIENT_PACKAGE'),(7,11,'CLIENT_PACKAGE'),(8,6,'CLIENT_PACKAGE'),(9,8,'CLIENT_PACKAGE'),(10,10,'Offers_URL'),(11,9,'MSG'),(12,5,'APP_ID'),(13,10,'APP_ID'),(14,11,'APP_ID'),(15,6,'APP_ID'),(16,8,'APP_ID'),(17,10,'USER_ID'),(18,10,'URL'),(19,10,'Notify_Id'),(20,8,'overlayTitle'),(21,8,'overlayTransition'),(22,5,'WAPS_ID'),(23,10,'WAPS_ID'),(24,11,'WAPS_ID'),(25,6,'WAPS_ID'),(26,8,'WAPS_ID'),(27,8,'shouldShowBottomBar'),(28,10,'ACTIVITY_FLAG'),(29,8,'shouldEnableBottomBar'),(30,5,'WAPS_PID'),(31,10,'WAPS_PID'),(32,11,'WAPS_PID'),(33,6,'WAPS_PID'),(34,8,'WAPS_PID'),(35,8,'transitionTime'),(36,11,'ST_START_DELAY'),(37,10,'offers_webview_tag'),(38,8,'shouldResizeOverlay'),(39,10,'SHWO_FLAG'),(40,10,'isFinshClose'),(41,9,'TYPEdsada'),(42,10,'UrlPath'),(43,5,'DEVICE_ID'),(44,10,'DEVICE_ID'),(45,11,'DEVICE_ID'),(46,6,'DEVICE_ID'),(47,8,'DEVICE_ID'),(48,8,'shouldShowTitlebar'),(49,8,'url'),(50,8,'shouldMakeOverlayTransparent'),(51,15,'actType'),(52,11,'ST_MY_PID'),(53,13,'dialog_shown'),(54,17,'DOMOB_PID'),(55,16,'DOMOB_PID'),(56,16,'shouldResizeOverlay'),(57,16,'shouldMakeOverlayTransparent'),(58,16,'overlayTitle'),(59,10,'Notify_Url_Params'),(60,10,'URL_PARAMS'),(61,16,'shouldShowBottomBar'),(62,14,'MSG'),(63,16,'transitionTime'),(64,13,'points'),(65,17,'ST_MY_PID'),(66,32,'overlayTitle'),(67,35,'ST_START_DELAY'),(68,32,'shouldShowBottomBar'),(69,28,'params'),(70,31,'Adwo_PID'),(71,33,'isFinshClose'),(72,33,'Offers_URL'),(73,32,'transitionTime'),(74,17,'DOMOB_TEST_MODE'),(75,16,'DOMOB_TEST_MODE'),(76,22,'DEVICE_ID'),(77,33,'URL'),(78,32,'shouldResizeOverlay'),(79,33,'CLIENT_PACKAGE'),(80,34,'TYPEdsada'),(81,22,'WAPS_PID'),(82,30,'url'),(83,22,'WAPS_ID'),(84,17,'DOMOB_ALLOW_LOCATION'),(85,16,'DOMOB_ALLOW_LOCATION'),(86,16,'shouldEnableBottomBar'),(87,13,'lances'),(88,32,'shouldShowTitlebar'),(89,32,'url'),(90,33,'URL_PARAMS'),(91,28,'com.google.ads.AdOpener'),(92,14,'TYPEdsada'),(93,31,'isTestMode'),(94,30,'adWidth'),(95,33,'USER_ID'),(96,34,'MSG'),(97,13,'tours'),(98,16,'url'),(99,13,'de_valeur'),(100,15,'appName'),(101,16,'shouldShowTitlebar'),(102,16,'overlayTransition'),(103,17,'ST_START_DELAY'),(104,15,'appId'),(105,32,'overlayTransition'),(106,32,'shouldMakeOverlayTransparent'),(107,35,'ST_MY_PID'),(108,32,'shouldEnableBottomBar'),(109,28,'action'),(110,24,'shouldShowTitlebar'),(111,27,'ST_MY_PID'),(112,25,'URL'),(113,25,'isFinshClose'),(114,22,'APP_ID'),(115,24,'overlayTransition'),(116,25,'offers_webview_tag'),(117,25,'WAPS_ID'),(118,19,'WAPS_ID'),(119,19,'stepcount'),(120,24,'url'),(121,24,'shouldResizeOverlay'),(122,25,'CLIENT_PACKAGE'),(123,19,'CLIENT_PACKAGE'),(124,22,'CLIENT_PACKAGE'),(125,19,'map.goals'),(126,24,'transitionTime'),(127,25,'APP_ID'),(128,19,'APP_ID'),(129,27,'DOMOB_PID'),(130,24,'DOMOB_PID'),(131,25,'URL_PARAMS'),(132,19,'map.id'),(133,25,'Offers_URL'),(134,24,'shouldMakeOverlayTransparent'),(135,27,'DOMOB_ALLOW_LOCATION'),(136,24,'DOMOB_ALLOW_LOCATION'),(137,25,'WAPS_PID'),(138,19,'WAPS_PID'),(139,27,'ST_START_DELAY'),(140,25,'DEVICE_ID'),(141,19,'DEVICE_ID'),(142,23,'appName'),(143,24,'shouldEnableBottomBar'),(144,24,'shouldShowBottomBar'),(145,19,'ball.y'),(146,25,'USER_ID'),(147,25,'Notify_Url_Params'),(148,24,'overlayTitle'),(149,21,'TYPEdsada'),(150,21,'MSG'),(151,27,'DOMOB_TEST_MODE'),(152,24,'DOMOB_TEST_MODE'),(153,25,'UrlPath'),(154,23,'appId'),(155,19,'ball.x'),(156,25,'Notify_Id'),(157,25,'SHWO_FLAG'),(158,23,'actType'),(159,25,'ACTIVITY_FLAG'),(160,65,'name'),(161,63,'name'),(162,64,'name'),(163,61,'vpnType'),(164,65,'dns'),(165,63,'dns'),(166,64,'dns'),(167,70,'connection_state'),(168,61,'vpnProfileName'),(169,65,'vpnProfileName'),(170,63,'vpnProfileName'),(171,64,'vpnProfileName'),(172,65,'vpnType'),(173,63,'vpnType'),(174,64,'vpnType'),(175,65,'user'),(176,63,'user'),(177,64,'user'),(178,65,'server'),(179,63,'server'),(180,64,'server'),(181,65,'secret'),(182,64,'secret'),(183,65,'password'),(184,63,'password'),(185,64,'password'),(186,65,'secretEnabled'),(187,64,'secretEnabled'),(188,66,'activeVpnState'),(189,65,'psk'),(190,64,'psk'),(191,63,'encrypt'),(192,70,'profile_name'),(193,54,'logSet'),(194,43,'query'),(195,59,'SAFE_PID'),(196,51,'shouldShowBottomBar'),(197,43,'com.cdjm.reader.ui.androidActiviy.ChangeCounter'),(198,51,'shouldEnableBottomBar'),(199,51,'shouldResizeOverlay'),(200,53,'cachedAdView'),(201,43,'Market_ID'),(202,54,'ADUrl'),(203,47,'ADUrl'),(204,43,'ADUrl'),(205,55,'ADUrl'),(206,51,'overlayTransition'),(207,53,'overlayTransition'),(208,52,'adWidth'),(209,48,'MM'),(210,53,'transitionTime'),(211,54,'cached'),(212,54,'adName'),(213,54,'shouldShowBottomBar'),(214,53,'canAccelerate'),(215,47,'query'),(216,55,'D50EF1926ADD471892E72BCE6D7E032C'),(217,51,'url'),(218,53,'shouldShowTitlebar'),(219,51,'transitionTime'),(220,59,'SAFE_START'),(221,55,'EB80F3291A8E469c962CA133BDC549D7'),(222,53,'overlayTitle'),(223,57,'link'),(224,52,'url'),(225,54,'videoPosition'),(226,54,'videoCompleted'),(227,43,'com.cdjm.reader.ui.androidActiviy.RequestedOrientation'),(228,55,'D780FBF4215247bcBB1AC0AD33C474FE'),(229,55,'172C94EDC717477aBF600D7898A64A8E'),(230,51,'overlayTitle'),(231,53,'shouldEnableBottomBar'),(232,54,'videoAd'),(233,51,'shouldShowTitlebar'),(234,43,'Wooboo_PID'),(235,53,'shouldMakeOverlayTransparent'),(236,51,'shouldMakeOverlayTransparent'),(237,53,'shouldShowBottomBar'),(238,54,'isCachedAd'),(239,53,'shouldResizeOverlay'),(240,43,'Adwo_PID'),(241,43,'GH_APPKEY');
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
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'s',0,NULL,NULL),(4,4,'r',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'s',0,NULL,NULL),(12,12,'r',1,NULL,NULL),(13,16,'a',1,NULL,NULL),(14,17,'a',0,NULL,NULL),(15,18,'a',0,NULL,NULL),(16,19,'a',0,NULL,NULL),(17,20,'s',0,NULL,NULL),(18,21,'r',1,NULL,NULL),(19,22,'a',1,NULL,NULL),(20,23,'a',0,NULL,NULL),(21,24,'a',0,NULL,NULL),(22,25,'a',1,NULL,NULL),(23,26,'a',0,NULL,NULL),(24,27,'a',0,NULL,NULL),(25,28,'a',0,NULL,NULL),(26,29,'a',0,NULL,NULL),(27,30,'s',0,NULL,NULL),(28,31,'a',0,NULL,NULL),(29,32,'r',1,NULL,NULL),(30,33,'a',0,NULL,NULL),(31,34,'a',0,NULL,NULL),(32,35,'a',0,NULL,NULL),(33,36,'a',0,NULL,NULL),(34,37,'a',0,NULL,NULL),(35,38,'s',0,NULL,NULL),(36,39,'r',1,NULL,NULL),(37,44,'r',1,NULL,NULL),(38,49,'r',1,NULL,NULL),(39,53,'r',1,NULL,NULL),(40,67,'r',1,NULL,NULL),(41,72,'r',1,NULL,NULL),(42,75,'a',0,NULL,NULL),(43,76,'a',1,NULL,NULL),(44,78,'a',0,NULL,NULL),(45,79,'a',0,NULL,NULL),(46,80,'a',0,NULL,NULL),(47,81,'a',1,NULL,NULL),(48,83,'a',0,NULL,NULL),(49,84,'a',0,NULL,NULL),(50,85,'a',0,NULL,NULL),(51,86,'a',0,NULL,NULL),(52,87,'a',0,NULL,NULL),(53,88,'a',0,NULL,NULL),(54,89,'a',0,NULL,NULL),(55,90,'a',0,NULL,NULL),(56,91,'a',0,NULL,NULL),(57,92,'a',0,NULL,NULL),(58,93,'a',0,NULL,NULL),(59,94,'s',0,NULL,NULL),(60,95,'r',1,NULL,NULL),(61,98,'a',1,NULL,NULL),(62,99,'a',0,NULL,NULL),(63,100,'a',0,NULL,NULL),(64,101,'a',0,NULL,NULL),(65,102,'a',0,NULL,NULL),(66,103,'a',0,NULL,NULL),(67,104,'a',0,NULL,NULL),(68,105,'s',1,NULL,NULL),(69,106,'r',1,NULL,NULL),(70,107,'r',1,NULL,NULL),(71,108,'r',1,NULL,NULL),(72,110,'r',1,NULL,NULL),(73,111,'r',1,NULL,NULL),(74,118,'r',1,NULL,NULL),(75,123,'r',1,NULL,NULL),(76,124,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,3),(2,2,3),(3,3,2),(4,4,2),(5,5,3),(6,6,4),(7,7,11),(8,8,5),(9,9,11),(10,10,9),(11,11,10),(12,12,6),(13,12,8),(14,12,11),(15,13,5),(16,14,11),(17,15,8),(18,15,6),(19,15,11),(20,16,10),(21,17,10),(22,18,6),(23,19,11),(24,19,6),(25,19,8),(26,20,9),(27,21,6),(28,22,12),(29,23,5),(30,24,5),(31,25,10),(32,26,18),(33,27,10),(34,28,16),(35,28,17),(36,29,5),(37,30,10),(38,31,16),(39,31,17),(40,32,36),(41,33,28),(42,34,14),(43,35,17),(44,36,33),(45,37,16),(46,37,17),(47,38,17),(48,39,22),(49,40,17),(50,41,35),(51,42,35),(52,43,14),(53,44,22),(54,45,16),(55,45,17),(56,46,35),(57,47,35),(58,48,27),(59,49,34),(60,50,25),(61,51,34),(62,52,21),(63,53,21),(64,54,25),(65,55,25),(66,56,27),(67,57,25),(68,58,24),(69,58,27),(70,59,25),(71,60,29),(72,61,24),(73,61,27),(74,62,24),(75,62,27),(76,63,27),(77,64,19),(78,65,25),(79,66,27),(80,66,24),(81,67,61),(82,68,61),(83,69,61),(84,70,61),(85,71,69),(86,72,61),(87,73,66),(88,74,69),(89,75,68),(90,75,61),(91,76,54),(92,76,55),(93,76,43),(94,76,47),(95,77,55),(96,77,43),(97,77,47),(98,78,43),(99,79,43),(100,80,48),(101,81,55),(102,82,43),(103,83,54),(104,83,47),(105,83,55),(106,83,43),(107,84,43),(108,85,43),(109,86,47),(110,86,55),(111,86,43),(112,87,47),(113,87,55),(114,87,54),(115,87,43),(116,88,43),(117,88,55),(118,88,54),(119,88,47),(120,89,47),(121,90,43),(122,90,47),(123,90,55),(124,91,43),(125,92,43),(126,93,43),(127,94,55),(128,95,43),(129,96,43),(130,97,60),(131,98,55),(132,98,43),(133,98,47),(134,99,43),(135,100,54),(136,100,55),(137,100,43),(138,100,47),(139,101,55),(140,102,43),(141,102,54),(142,102,55),(143,102,47),(144,103,43),(145,103,55),(146,103,47),(147,104,47),(148,104,54),(149,104,55),(150,104,43),(151,105,54),(152,105,55),(153,105,43),(154,105,47);
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
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,3,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(2,3,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(3,13,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(4,14,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(5,15,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(6,4,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(7,11,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(8,5,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',22,'a',NULL),(9,40,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(10,41,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(11,42,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(12,43,'<com.waps.s: void onClick(android.view.View)>',59,'a',NULL),(13,5,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',15,'a',NULL),(14,11,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(15,43,'<com.waps.s: void onClick(android.view.View)>',85,'a',NULL),(16,45,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(17,10,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(18,46,'<com.waps.AppConnect: void showMore(android.content.Context,java.lang.String)>',13,'a',NULL),(19,43,'<com.waps.s: void onClick(android.view.View)>',35,'a',NULL),(20,47,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(21,46,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(22,12,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(23,5,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',36,'a',NULL),(24,5,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',29,'a',NULL),(25,10,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(26,21,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(27,48,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(28,50,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(29,5,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',40,'a',NULL),(30,51,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(31,52,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(32,39,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(33,31,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(34,54,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(35,20,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(36,55,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(37,56,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(38,57,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(39,58,'<com.mogo.threesameline.begin$beginButtonListener: void onClick(android.view.View)>',28,'a',NULL),(40,20,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(41,59,'<com.ju6.a: boolean b()>',178,'p',NULL),(42,38,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(43,60,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(44,61,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(45,62,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(46,38,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(47,63,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(48,64,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(49,65,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(50,28,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(51,66,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(52,68,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(53,69,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(54,70,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(55,71,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(56,30,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(57,28,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(58,73,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(59,74,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(60,32,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(61,77,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(62,82,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(63,30,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(64,22,'<com.gp.tiltmazes.TiltMazesActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',33,'a',NULL),(65,96,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(66,97,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(67,98,'<com.safesys.myvpn2.VpnSettings: void g()>',3,'a',NULL),(68,98,'<com.safesys.myvpn2.VpnSettings: void a(com.safesys.myvpn2.a.m)>',18,'a',NULL),(69,109,'<com.safesys.myvpn2.d: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(70,98,'<com.safesys.myvpn2.VpnSettings: void e()>',3,'a',NULL),(71,106,'<com.safesys.myvpn2.VpnAppWidgetProvider: void onEnabled(android.content.Context)>',6,'s',NULL),(72,98,'<com.safesys.myvpn2.VpnSettings: void a(com.safesys.myvpn2.a.l)>',29,'a',NULL),(73,103,'<com.safesys.myvpn2.ToggleVpn: void e()>',3,'r',NULL),(74,106,'<com.safesys.myvpn2.VpnAppWidgetProvider: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',7,'s',NULL),(75,112,'<com.safesys.myvpn2.p: void a(java.lang.String,com.safesys.myvpn2.a.h,int)>',11,'r',NULL),(76,89,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',237,'a',NULL),(77,113,'<com.guohead.sdk.adapters.CustomAdapter$4: void onClick(android.view.View)>',4,'a',NULL),(78,76,'<com.evilsunflower.reader.FBReader: void onStart()>',14,'a',NULL),(79,114,'<com.ju6.c: boolean b()>',272,'p',NULL),(80,115,'<com.evilsunflower.reader.control.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(81,116,'<net.youmi.android.be: void a(android.content.Context,java.lang.String)>',6,'a',NULL),(82,114,'<com.ju6.c: void run()>',146,'p',NULL),(83,89,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',218,'a',NULL),(84,117,'<com.evilsunflower.reader.ui.ZLAndroidActivity: void onCreate(android.os.Bundle)>',80,'s',NULL),(85,114,'<com.ju6.c: boolean b()>',192,'p',NULL),(86,119,'<com.madhouse.android.ads._: com.madhouse.android.ads.m _(android.content.Context)>',11,'p',NULL),(87,89,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',229,'a',NULL),(88,89,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',158,'a',NULL),(89,81,'<com.evilsunflower.reader.BookmarksActivity: boolean onContextItemSelected(android.view.MenuItem)>',19,'a',NULL),(90,120,'<com.guohead.sdk.adapters.CustomAdapter$3: void onClick(android.view.View)>',4,'a',NULL),(91,121,'<com.ju6.mms.pdu.PduPersister: void a(com.ju6.mms.pdu.PduPart,android.net.Uri,java.lang.String)>',23,'p',0),(92,122,'<com.ju6.mms.util.SqliteWrapper: android.database.Cursor query(android.content.Context,android.content.ContentResolver,android.net.Uri,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String)>',7,'p',NULL),(93,76,'<com.evilsunflower.reader.FBReader: void onNewIntent(android.content.Intent)>',17,'a',NULL),(94,125,'<net.youmi.android.t: void onClick(android.view.View)>',48,'a',NULL),(95,122,'<com.ju6.mms.util.SqliteWrapper: android.net.Uri insert(android.content.Context,android.content.ContentResolver,android.net.Uri,android.content.ContentValues)>',4,'p',NULL),(96,114,'<com.ju6.c: boolean b()>',195,'p',0),(97,95,'<com.evilsunflower.reader.control.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(98,126,'<com.baidu.as: void e(com.baidu.bl)>',23,'a',NULL),(99,122,'<com.ju6.mms.util.SqliteWrapper: int update(android.content.Context,android.content.ContentResolver,android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',6,'p',NULL),(100,89,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',209,'a',NULL),(101,127,'<com.evilsunflower.reader.ui.BugReportActivity$1: void onClick(android.view.View)>',21,'a',NULL),(102,128,'<com.millennialmedia.android.MillennialMediaView: void openVideo()>',10,'r',NULL),(103,129,'<com.baidu.al: void onClick(android.view.View)>',24,'a',NULL),(104,89,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',181,'a',NULL),(105,89,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',189,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,5,1),(2,6,1),(3,7,5),(4,8,1),(5,9,1),(6,14,1),(7,15,1),(8,16,5),(9,18,6),(10,19,6),(11,24,6),(12,28,1),(13,29,1),(14,30,1),(15,31,1),(16,32,1),(17,33,1),(18,39,1),(19,40,1),(20,45,6),(21,46,6),(22,48,6),(23,50,6),(24,51,6),(25,52,8),(26,53,6),(27,54,6),(28,55,5),(29,56,8),(30,59,6),(31,60,1),(32,61,1),(33,67,1),(34,69,1),(35,70,6),(36,73,1),(37,74,1),(38,75,1),(39,76,1),(40,77,1),(41,78,1),(42,80,1),(43,81,5),(44,82,1),(45,83,1),(46,84,1),(47,85,5),(48,92,6),(49,93,6),(50,95,6),(51,97,6),(52,98,6),(53,99,6),(54,100,6),(55,104,6),(56,106,8),(57,107,1),(58,108,1),(59,111,8),(60,112,11),(61,114,13),(62,115,13),(63,116,6),(64,119,1),(65,120,1),(66,121,6),(67,122,6),(68,123,6),(69,124,6),(70,125,6),(71,126,6),(72,127,6),(73,128,6),(74,129,6),(75,132,6),(76,133,6),(77,137,17),(78,138,17),(79,139,17),(80,140,17),(81,141,17),(82,142,17),(83,143,17),(84,144,17),(85,146,6),(86,147,18),(87,148,19),(88,149,20),(89,150,6),(90,152,6);
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
INSERT INTO `ICategories` VALUES (1,5,1),(2,6,2),(3,8,2),(4,9,1),(5,14,2),(6,15,1),(7,28,1),(8,29,2),(9,30,1),(10,31,2),(11,32,1),(12,33,2),(13,39,1),(14,40,2),(15,52,3),(16,54,3),(17,56,3),(18,60,1),(19,61,2),(20,67,1),(21,69,2),(22,73,1),(23,74,2),(24,75,2),(25,76,1),(26,77,1),(27,78,2),(28,80,1),(29,82,2),(30,83,1),(31,84,2),(32,107,1),(33,108,2),(34,119,1),(35,120,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/google/update/Dialog'),(2,2,'com/google/update/Dialog'),(3,3,'com/google/update/Dialog'),(4,4,'com/google/update/Dialog'),(5,10,'com/google/update/UpdateService'),(6,11,'com/google/update/Dialog'),(7,12,'com/google/update/Dialog'),(8,13,'com/ps/ddp/GameActivity'),(9,17,'NULL-CONSTANT'),(10,20,'com/ps/ddp/GameActivity'),(11,21,'com/google/update/Dialog'),(12,22,'com/google/update/Dialog'),(13,23,'com/waps/OffersWebView'),(14,25,'(.*)'),(15,26,'com/waps/OffersWebView'),(16,34,'com/waps/OffersWebView'),(17,35,'com/google/update/UpdateService'),(18,36,'com/ps/ddp/GameActivity'),(19,37,'com/ps/ddp/GameActivity'),(20,41,'com/google/update/UpdateService'),(21,42,'com/waps/OffersWebView'),(22,43,'com/waps/OffersWebView'),(23,44,'com/ps/ddp/DemoApp'),(24,49,'com/google/update/UpdateService'),(25,57,'com/google/update/Dialog'),(26,58,'com/google/update/Dialog'),(27,62,'com/mogo/threesameline/GameActivity'),(28,63,'com/google/update/Dialog'),(29,64,'com/google/update/Dialog'),(30,65,'com/google/update/Dialog'),(31,66,'com/google/update/Dialog'),(32,68,'com/waps/OffersWebView'),(33,71,'com/google/update/Dialog'),(34,72,'com/google/update/Dialog'),(35,86,'NULL-CONSTANT'),(36,87,'com/waps/OffersWebView'),(37,88,'com/waps/OffersWebView'),(38,89,'com/google/update/Dialog'),(39,90,'com/google/update/Dialog'),(40,91,'(.*)'),(41,94,'com/google/update/UpdateService'),(42,101,'com/google/update/Dialog'),(43,102,'com/google/update/Dialog'),(44,103,'com/gp/tiltmazes/SelectMazeActivity'),(45,105,'android/provider/Settings'),(46,106,'(.*)'),(47,109,'com/safesys/myvpn2/VpnTypeSelection'),(48,110,'com/safesys/myvpn2/VpnConnectorService'),(49,111,'(.*)'),(50,113,'com/safesys/myvpn2/VpnConnectorService'),(51,118,'com.evilsunflower.reader.FBReader'),(52,130,'com/millennialmedia/android/MMAdViewOverlayActivity'),(53,131,'com/evilsunflower/reader/control/UpdateService'),(54,134,'com/evilsunflower/reader/BookmarkEditActivity'),(55,136,'com.evilsunflower.reader.FBReader'),(56,145,'com/evilsunflower/reader/control/UpdateService'),(57,150,'com.android.browser.BrowserActivity'),(58,151,'com/millennialmedia/android/MMAdViewOverlayActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,18,1),(2,19,2),(3,24,3),(4,45,5),(5,46,6),(6,48,7),(7,50,8),(8,51,9),(9,52,10),(10,53,11),(11,54,12),(12,56,13),(13,59,14),(14,70,16),(15,92,17),(16,93,18),(17,95,20),(18,97,21),(19,98,22),(20,99,23),(21,100,24),(22,104,25),(23,116,26),(24,121,28),(25,122,29),(26,123,30),(27,124,31),(28,125,32),(29,126,33),(30,127,34),(31,128,35),(32,129,36),(33,130,38),(34,132,41),(35,133,42),(36,146,48),(37,147,50),(38,150,51),(39,151,52),(40,152,53);
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
INSERT INTO `IExtras` VALUES (1,1,'MSG'),(2,1,'TYPEdsada'),(3,2,'TYPEdsada'),(4,3,'MSG'),(5,3,'TYPEdsada'),(6,4,'TYPEdsada'),(7,11,'TYPEdsada'),(8,12,'MSG'),(9,12,'TYPEdsada'),(10,13,'type'),(11,20,'type'),(12,21,'TYPEdsada'),(13,22,'MSG'),(14,22,'TYPEdsada'),(15,23,'CLIENT_PACKAGE'),(16,23,'URL'),(17,23,'isFinshClose'),(18,23,'offers_webview_tag'),(19,26,'USER_ID'),(20,26,'CLIENT_PACKAGE'),(21,26,'Offers_URL'),(22,26,'offers_webview_tag'),(23,26,'URL_PARAMS'),(24,34,'USER_ID'),(25,34,'CLIENT_PACKAGE'),(26,34,'Offers_URL'),(27,34,'offers_webview_tag'),(28,34,'URL_PARAMS'),(29,36,'type'),(30,37,'type'),(31,42,'UrlPath'),(32,42,'ACTIVITY_FLAG'),(33,42,'isFinshClose'),(34,42,'offers_webview_tag'),(35,43,'Notify_Url_Params'),(36,43,'UrlPath'),(37,43,'ACTIVITY_FLAG'),(38,43,'isFinshClose'),(39,43,'offers_webview_tag'),(40,57,'MSG'),(41,57,'TYPEdsada'),(42,58,'TYPEdsada'),(43,63,'MSG'),(44,63,'TYPEdsada'),(45,64,'TYPEdsada'),(46,65,'TYPEdsada'),(47,66,'MSG'),(48,66,'TYPEdsada'),(49,68,'USER_ID'),(50,68,'CLIENT_PACKAGE'),(51,68,'Offers_URL'),(52,68,'URL_PARAMS'),(53,71,'TYPEdsada'),(54,72,'MSG'),(55,72,'TYPEdsada'),(56,87,'Notify_Url_Params'),(57,87,'UrlPath'),(58,87,'ACTIVITY_FLAG'),(59,87,'isFinshClose'),(60,87,'offers_webview_tag'),(61,88,'UrlPath'),(62,88,'ACTIVITY_FLAG'),(63,88,'isFinshClose'),(64,88,'offers_webview_tag'),(65,89,'TYPEdsada'),(66,90,'MSG'),(67,90,'TYPEdsada'),(68,101,'TYPEdsada'),(69,102,'MSG'),(70,102,'TYPEdsada'),(71,106,'vpnProfileName'),(72,111,'vpnType'),(73,114,'connection_state'),(74,114,'profile_name'),(75,115,'connection_state'),(76,115,'profile_name'),(77,115,'err'),(78,130,'cachedAdView'),(79,137,'android.intent.extra.INTENT'),(80,138,'android.intent.extra.INTENT'),(81,139,'android.intent.extra.TITLE'),(82,139,'android.intent.extra.INTENT'),(83,140,'android.intent.extra.INTENT'),(84,141,'android.intent.extra.TITLE'),(85,141,'android.intent.extra.INTENT'),(86,142,'android.intent.extra.INTENT'),(87,143,'android.intent.extra.TITLE'),(88,143,'android.intent.extra.INTENT'),(89,144,'android.intent.extra.TITLE'),(90,144,'android.intent.extra.INTENT'),(91,148,'android.intent.extra.TEXT'),(92,148,'android.intent.extra.SUBJECT'),(93,148,'android.intent.extra.EMAIL'),(94,149,'command'),(95,151,'cachedAdView');
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(5,3,1),(6,4,2),(7,4,3),(8,4,4),(9,5,1),(10,6,4),(11,6,3),(12,6,2),(13,7,1),(14,8,1),(15,9,4),(16,9,2),(17,9,3),(18,10,3),(19,10,4),(20,10,2),(21,11,7),(22,12,7),(23,13,7),(24,14,7),(25,15,7),(26,16,9),(27,17,1),(28,18,9),(29,19,3),(30,19,2),(31,19,4),(32,20,1),(33,20,10),(34,21,11),(35,22,12),(36,23,13),(37,24,13),(38,24,11),(39,25,11),(40,25,13),(41,26,11),(42,26,13),(43,27,13),(44,27,11),(45,28,11),(46,28,13),(47,29,11),(48,29,13),(49,30,14),(50,30,15),(51,31,16),(52,32,16),(53,33,16),(54,34,16);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,5,1),(4,7,1),(5,8,1),(6,17,1),(7,20,1),(8,20,5),(9,20,4);
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
INSERT INTO `IFData` VALUES (1,11,'package',NULL,NULL,NULL,NULL,NULL),(2,12,'package',NULL,NULL,NULL,NULL,NULL),(3,13,'package',NULL,NULL,NULL,NULL,NULL),(4,14,'package',NULL,NULL,NULL,NULL,NULL),(5,15,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,24,'application','vnd.android.package-archive'),(2,45,'application','vnd.android.package-archive'),(3,46,'application','vnd.android.package-archive'),(4,48,'application','vnd.android.package-archive'),(5,50,'application','vnd.android.package-archive'),(6,51,'application','vnd.android.package-archive'),(7,53,'application','vnd.android.package-archive'),(8,56,'(.*)','(.*)'),(9,59,'application','vnd.android.package-archive'),(10,93,'application','vnd.android.package-archive'),(11,95,'application','vnd.android.package-archive'),(12,97,'application','vnd.android.package-archive'),(13,98,'application','vnd.android.package-archive'),(14,99,'application','vnd.android.package-archive'),(15,100,'application','vnd.android.package-archive'),(16,104,'application','vnd.android.package-archive'),(17,121,'application','vnd.android.package-archive'),(18,122,'application','vnd.android.package-archive'),(19,123,'application','vnd.android.package-archive'),(20,124,'application','vnd.android.package-archive'),(21,125,'application','vnd.android.package-archive'),(22,126,'application','vnd.android.package-archive'),(23,127,'application','vnd.android.package-archive'),(24,128,'application','vnd.android.package-archive'),(25,129,'application','vnd.android.package-archive'),(26,146,'application','vnd.android.package-archive'),(27,148,'message','rfc822');
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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.peter.wuzilianzhu'),(2,2,'com.peter.wuzilianzhu'),(3,3,'com.peter.wuzilianzhu'),(4,4,'com.peter.wuzilianzhu'),(5,5,'com.noshufou.android.su'),(6,6,'com.noshufou.android.su'),(7,8,'com.peter.wuzilianzhu'),(8,9,'com.peter.wuzilianzhu'),(9,10,'com.peter.wuzilianzhu'),(10,11,'com.ps.ddp'),(11,12,'com.ps.ddp'),(12,13,'com.ps.ddp'),(13,14,'com.ps.ddp'),(14,15,'com.ps.ddp'),(15,17,'NULL-CONSTANT'),(16,20,'com.ps.ddp'),(17,21,'com.ps.ddp'),(18,22,'com.ps.ddp'),(19,23,'com.ps.ddp'),(20,25,'(.*)'),(21,26,'com.ps.ddp'),(22,28,'(.*)'),(23,29,'(.*)'),(24,30,'NULL-CONSTANT'),(25,31,'NULL-CONSTANT'),(26,32,'com.noshufou.android.su'),(27,33,'com.noshufou.android.su'),(28,34,'com.ps.ddp'),(29,35,'com.ps.ddp'),(30,36,'com.ps.ddp'),(31,37,'com.ps.ddp'),(32,39,'(.*)'),(33,40,'(.*)'),(34,41,'com.ps.yams'),(35,42,'com.ps.ddp'),(36,43,'com.ps.ddp'),(37,44,'com.ps.ddp'),(38,49,'com.mogo.threesameline'),(39,57,'com.ps.yams'),(40,58,'com.ps.yams'),(41,60,'com.ps.yams'),(42,61,'com.ps.yams'),(43,62,'com.mogo.threesameline'),(44,63,'com.ps.yams'),(45,64,'com.ps.yams'),(46,65,'com.mogo.threesameline'),(47,66,'com.mogo.threesameline'),(48,67,'com.noshufou.android.su'),(49,68,'com.mogo.threesameline'),(50,69,'com.noshufou.android.su'),(51,71,'com.mogo.threesameline'),(52,72,'com.mogo.threesameline'),(53,73,'com.mogo.threesameline'),(54,74,'com.gp.tiltmazes'),(55,75,'com.mogo.threesameline'),(56,76,'com.gp.tiltmazes'),(57,77,'com.noshufou.android.su'),(58,78,'com.noshufou.android.su'),(59,80,'(.*)'),(60,82,'(.*)'),(61,83,'com.noshufou.android.su'),(62,84,'com.noshufou.android.su'),(63,86,'NULL-CONSTANT'),(64,87,'com.gp.tiltmazes'),(65,88,'com.gp.tiltmazes'),(66,89,'com.gp.tiltmazes'),(67,90,'com.gp.tiltmazes'),(68,91,'(.*)'),(69,94,'com.gp.tiltmazes'),(70,101,'com.gp.tiltmazes'),(71,102,'com.gp.tiltmazes'),(72,103,'com.gp.tiltmazes'),(73,105,'com.safesys.myvpn2'),(74,106,'com.safesys.myvpn2'),(75,107,'com.noshufou.android.su'),(76,108,'com.noshufou.android.su'),(77,109,'com.safesys.myvpn2'),(78,110,'com.safesys.myvpn2'),(79,111,'com.safesys.myvpn2'),(80,113,'com.safesys.myvpn2'),(81,118,'com.evilsunflower.reader.evilYufang15'),(82,119,'com.noshufou.android.su'),(83,120,'com.noshufou.android.su'),(84,130,'com.evilsunflower.reader.evilYufang15'),(85,131,'com.evilsunflower.reader.evilYufang15'),(86,134,'com.evilsunflower.reader.evilYufang15'),(87,136,'com.evilsunflower.reader.evilYufang15'),(88,145,'com.evilsunflower.reader.evilYufang15'),(89,150,'com.android.browser'),(90,151,'com.evilsunflower.reader.evilYufang15');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,4,0),(3,5,0),(4,12,0),(5,13,0),(6,18,0),(7,19,0),(8,22,0),(9,29,0),(10,36,0),(11,37,0),(12,38,0),(13,39,0),(14,40,0),(15,41,0),(16,43,0),(17,43,0),(18,47,0),(19,60,0),(20,61,0),(21,68,0),(22,69,0),(23,70,0),(24,71,0),(25,71,0),(26,72,0),(27,70,0),(28,69,0),(29,73,0),(30,74,0),(31,75,0),(32,60,0),(33,76,0),(34,74,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,1,0,0),(3,2,0,0),(4,2,0,0),(5,3,1,0),(6,3,1,0),(7,4,1,0),(8,5,1,0),(9,5,1,0),(10,6,0,0),(11,7,0,0),(12,7,0,0),(13,8,0,0),(14,9,1,0),(15,9,1,0),(16,10,1,0),(17,11,0,0),(18,12,1,0),(19,12,1,0),(20,13,0,0),(21,14,0,0),(22,14,0,0),(23,15,0,0),(24,16,1,0),(25,17,0,0),(26,18,0,0),(27,19,1,0),(28,19,1,0),(29,19,1,0),(30,19,1,0),(31,19,1,0),(32,20,1,0),(33,20,1,0),(34,21,0,0),(35,22,0,0),(36,23,0,0),(37,24,0,0),(38,25,1,0),(39,25,1,0),(40,25,1,0),(41,26,0,0),(42,27,0,0),(43,27,0,0),(44,29,0,0),(45,30,1,0),(46,31,1,0),(47,31,1,0),(48,31,1,0),(49,32,0,0),(50,31,1,0),(51,31,1,0),(52,33,1,0),(53,31,1,0),(54,33,1,0),(55,34,1,0),(56,33,1,0),(57,35,0,0),(58,35,0,0),(59,36,1,0),(60,38,1,0),(61,38,1,0),(62,39,0,0),(63,40,0,0),(64,40,0,0),(65,42,0,0),(66,42,0,0),(67,43,1,0),(68,44,0,0),(69,43,1,0),(70,45,1,0),(71,46,0,0),(72,46,0,0),(73,47,1,0),(74,48,1,0),(75,47,1,0),(76,48,1,0),(77,49,1,0),(78,49,1,0),(79,50,1,0),(80,50,1,0),(81,51,1,0),(82,50,1,0),(83,52,1,0),(84,52,1,0),(85,53,1,0),(86,54,0,0),(87,55,0,0),(88,55,0,0),(89,56,0,0),(90,56,0,0),(91,57,0,0),(92,58,1,0),(93,59,1,0),(94,60,0,0),(95,62,1,0),(96,62,1,0),(97,62,1,0),(98,62,1,0),(99,62,1,0),(100,62,1,0),(101,63,0,0),(102,63,0,0),(103,64,0,0),(104,65,1,0),(105,67,0,0),(106,68,0,0),(107,69,1,0),(108,69,1,0),(109,70,0,0),(110,71,0,0),(111,72,0,0),(112,73,1,0),(113,74,0,0),(114,75,1,0),(115,75,1,0),(116,76,1,0),(117,77,1,0),(118,78,0,0),(119,80,1,0),(120,80,1,0),(121,81,1,0),(122,81,1,0),(123,81,1,0),(124,81,1,0),(125,81,1,0),(126,81,1,0),(127,81,1,0),(128,81,1,0),(129,81,1,0),(130,83,0,0),(131,84,0,0),(132,87,1,0),(133,88,1,0),(134,89,0,0),(135,90,1,0),(136,93,0,0),(137,94,1,0),(138,94,1,0),(139,94,1,0),(140,94,1,0),(141,94,1,0),(142,94,1,0),(143,94,1,0),(144,94,1,0),(145,97,0,0),(146,98,1,0),(147,100,1,0),(148,101,1,0),(149,102,1,0),(150,103,0,0),(151,104,0,0),(152,105,1,0);
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
INSERT INTO `PermissionStrings` VALUES (16,'android.permission.ACCESS_COARSE_LOCATION'),(9,'android.permission.ACCESS_FINE_LOCATION'),(10,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(7,'android.permission.ACCESS_NETWORK_STATE'),(6,'android.permission.ACCESS_WIFI_STATE'),(5,'android.permission.CHANGE_WIFI_STATE'),(11,'android.permission.GET_TASKS'),(14,'android.permission.INSTALL_PACKAGES'),(3,'android.permission.INTERNET'),(8,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(17,'android.permission.READ_SMS'),(2,'android.permission.RECEIVE_BOOT_COMPLETED'),(12,'android.permission.VIBRATE'),(13,'android.permission.WAKE_LOCK'),(4,'android.permission.WRITE_EXTERNAL_STORAGE'),(15,'android.permission.WRITE_SMS'),(18,'com.android.browser.permission.READ_HISTORY_BOOKMARKS');
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(4,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(6,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(7,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(8,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(9,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'file://',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(15,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(16,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(17,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(19,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(20,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(21,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(22,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(23,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(24,NULL,NULL,'file://',NULL,NULL,NULL),(25,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(28,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(29,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(30,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(31,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(32,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(33,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(34,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(35,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(36,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL),(37,NULL,NULL,'content://mms/',NULL,NULL,NULL),(38,NULL,NULL,'(.*)',NULL,NULL,NULL),(39,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(40,NULL,NULL,'(.*)',NULL,NULL,NULL),(41,NULL,NULL,'(.*)',NULL,NULL,NULL),(42,NULL,NULL,'(.*)',NULL,NULL,NULL),(43,NULL,NULL,'content://mms/',NULL,NULL,NULL),(44,NULL,NULL,'content://mms-sms/threadID',NULL,NULL,NULL),(45,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(46,NULL,NULL,'content://mms/inbox',NULL,NULL,NULL),(47,NULL,NULL,'content://mms/(.*)/addr',NULL,NULL,NULL),(48,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(49,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(50,NULL,NULL,'(.*)',NULL,NULL,NULL),(51,NULL,NULL,'(.*)',NULL,NULL,NULL),(52,NULL,NULL,'(.*)',NULL,NULL,NULL),(53,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,28,4),(2,41,15),(3,61,19),(4,79,27),(5,82,37),(6,85,39),(7,86,40),(8,92,43),(9,92,44),(10,95,45),(11,95,46),(12,95,47),(13,99,49);
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,1),(9,2,2),(10,2,3),(11,2,4),(12,2,5),(13,2,6),(14,2,7),(15,3,1),(16,3,2),(17,3,3),(18,3,4),(19,3,5),(20,3,6),(21,3,7),(22,3,8),(23,3,9),(24,3,10),(25,4,1),(26,4,2),(27,4,3),(28,4,4),(29,4,5),(30,4,6),(31,4,7),(32,4,8),(33,5,17),(34,4,9),(35,5,16),(36,4,10),(37,5,1),(38,4,11),(39,5,3),(40,4,12),(41,5,4),(42,4,13),(43,5,5),(44,5,6),(45,5,7),(46,5,8),(47,5,9),(48,5,10),(49,5,14),(50,5,15),(51,6,17),(52,6,16),(53,6,1),(54,6,18),(55,6,3),(56,6,4),(57,6,6),(58,6,7),(59,6,9),(60,6,13),(61,6,15),(62,7,1),(63,7,3),(64,7,4),(65,7,6),(66,7,7);
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
