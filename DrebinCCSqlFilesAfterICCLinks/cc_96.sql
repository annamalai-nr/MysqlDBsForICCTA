-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_96
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
INSERT INTO `ActionStrings` VALUES (20,'android.intent.action.BATTERY_CHANGED'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(2,'android.intent.action.BOOT_COMPLETED'),(5,'android.intent.action.CHOOSER'),(10,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(15,'android.intent.action.PACKAGE_ADDED'),(17,'android.intent.action.SCREEN_OFF'),(18,'android.intent.action.SCREEN_ON'),(16,'android.intent.action.SEARCH'),(11,'android.intent.action.SEND'),(12,'android.intent.action.SENDTO'),(3,'android.intent.action.SIG_STR'),(9,'android.intent.action.VIEW'),(14,'android.intent.action.WEB_SEARCH'),(7,'android.net.conn.CONNECTIVITY_CHANGE'),(19,'com.android.music.musicservicecommand'),(13,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(8,'com/tutusw/onekeyvpn/Intents.OPEN_VPN_SERVICE_STARTED'),(6,'org.openintents.action.PICK_DIRECTORY');
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
INSERT INTO `Applications` VALUES (1,'com.tutusw.onekeyvpn',6),(2,'com.gp.tiltmazes',6),(3,'com.safetest.tractor',7),(4,'com.gp.jewels',3),(5,'com.evilsunflower.reader.evilGuigu',2),(6,'com.evilsunflower.reader.evilXiaoli',1),(7,'com.atools.hosts',9);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(3,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.tutusw.onekeyvpn.OpenVpnSettings'),(2,1,'com.tutusw.onekeyvpn.AdvancedSettings'),(3,1,'com.tutusw.onekeyvpn.EditConfig'),(4,1,'com.tutusw.onekeyvpn.EditConfigPreferences'),(5,1,'com.tutusw.onekeyvpn.EnterPassphrase'),(6,1,'com.tutusw.onekeyvpn.EnterUserPassword'),(7,1,'com.tutusw.onekeyvpn.ImportFiles'),(8,1,'com.tutusw.onekeyvpn.service.OpenVpnService'),(9,1,'com.tutusw.onekeyvpn.util.BootCompletedReceiver'),(10,2,'com.gp.tiltmazes.TiltMazesActivity'),(11,2,'com.gp.tiltmazes.SelectMazeActivity'),(12,2,'com.google.update.Dialog'),(13,2,'cn.domob.android.ads.DomobActivity'),(14,2,'com.adwo.adsdk.AdwoAdBrowserActivity'),(15,2,'com.waps.OffersWebView'),(16,2,'com.google.update.UpdateService'),(17,2,'com.google.update.Receiver'),(18,3,'com.safetest.tractor.android.AndroidTractorGameController'),(19,3,'com.safetest.tractor.android.CreditActivity'),(20,3,'com.safetest.tractor.android.Tractor'),(21,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(22,3,'com.safetest.tractor.ShowTips'),(23,3,'com.safetest.tractor.UpdateService'),(24,3,'com.safetest.tractor.Receiver'),(25,1,'com.tutusw.onekeyvpn.service.ManagementThread'),(26,1,'com.tutusw.onekeyvpn.service.DaemonMonitor'),(27,1,'com.tutusw.onekeyvpn.service.DaemonMonitor$2'),(28,1,'com.tutusw.onekeyvpn.OpenVpnSettings$4'),(29,1,'com.tutusw.onekeyvpn.ImportFiles$2'),(30,1,'com.tutusw.onekeyvpn.util.NetworkConnectivityListener$ConnectivityBroadcastReceiver'),(31,4,'com.gp.jewels.Menu'),(32,4,'com.gp.jewels.Jewels'),(33,4,'cn.domob.android.ads.DomobActivity'),(34,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(35,4,'com.adwo.adsdk.AdwoSplashAdActivity'),(36,4,'com.mt.airad.MultiAD'),(37,4,'com.google.update.Dialog'),(38,4,'com.google.update.UpdateService'),(39,4,'com.google.update.Receiver'),(40,1,'com.tutusw.onekeyvpn.OpenVpnSettings$1'),(41,3,'com.safetest.tractor.ShowTips$1'),(42,3,'com.adwo.adsdk.g'),(43,2,'com.google.update.Dialog$2'),(44,2,'cn.domob.android.ads.i'),(45,2,'com.waps.q'),(46,2,'cn.domob.android.ads.DomobActionReceiver'),(47,2,'com.waps.ac'),(48,2,'cn.domob.android.ads.DomobAdEngine$2'),(49,2,'com.google.update.UpdateService$AA'),(50,5,'com.evilsunflower.reader.evilGuigu.BugReportActivity'),(51,5,'com.evilsunflower.reader.FBReader'),(52,2,'cn.domob.android.ads.DomobAdManager'),(53,6,'com.evilsunflower.reader.evilXiaoli.BugReportActivity'),(54,6,'com.evilsunflower.reader.FBReader'),(55,5,'com.evilsunflower.reader.CancelActivity'),(56,2,'cn.domob.android.ads.i$6'),(57,5,'com.evilsunflower.reader.image.ImageViewActivity'),(58,5,'com.evilsunflower.reader.TOCActivity'),(59,6,'com.evilsunflower.reader.CancelActivity'),(60,5,'com.evilsunflower.reader.BookmarksActivity'),(61,6,'com.evilsunflower.reader.image.ImageViewActivity'),(62,6,'com.evilsunflower.reader.TOCActivity'),(63,5,'com.evilsunflower.reader.control.ShowTips'),(64,6,'com.evilsunflower.reader.BookmarksActivity'),(65,5,'com.evilsunflower.reader.BookmarkEditActivity'),(66,5,'com.evilsunflower.reader.Starter'),(67,6,'com.evilsunflower.reader.BookmarkEditActivity'),(68,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(69,6,'com.evilsunflower.reader.Starter'),(70,5,'com.vpon.adon.android.WebInApp'),(71,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(72,5,'com.millennialmedia.android.MMAdViewOverlayActivity'),(73,6,'com.vpon.adon.android.WebInApp'),(74,5,'com.millennialmedia.android.VideoPlayer'),(75,6,'com.millennialmedia.android.MMAdViewOverlayActivity'),(76,5,'net.youmi.android.AdActivity'),(77,6,'com.millennialmedia.android.VideoPlayer'),(78,5,'com.google.ads.AdActivity'),(79,6,'net.youmi.android.AdActivity'),(80,5,'cn.domob.android.ads.DomobActivity'),(81,6,'com.google.ads.AdActivity'),(82,5,'com.baidu.AppActivity'),(83,6,'cn.domob.android.ads.DomobActivity'),(84,5,'com.guohead.sdk.GuoheAdActivity'),(85,6,'com.baidu.AppActivity'),(86,5,'com.evilsunflower.reader.control.UpdateService'),(87,6,'com.guohead.sdk.GuoheAdActivity'),(88,5,'com.evilsunflower.reader.control.Receiver'),(89,2,'com.google.update.Dialog$1'),(90,2,'com.waps.aa'),(91,2,'com.waps.o'),(92,2,'com.waps.z'),(93,7,'com.atools.hosts.MainActivity'),(94,7,'com.atools.hosts.CustomizeActivity'),(95,7,'com.atools.hosts.AboutActivity'),(96,7,'com.atools.battery.ShowTips'),(97,7,'com.atools.battery.UpdateService'),(98,4,'cn.domob.android.ads.o$5'),(99,4,'cn.domob.android.ads.DomobAdManager'),(100,4,'cn.domob.android.ads.e'),(101,4,'cn.domob.android.ads.g$1'),(102,4,'com.google.update.Dialog$2'),(103,4,'com.google.update.UpdateService$AA'),(104,4,'cn.domob.android.a.a$a'),(105,4,'com.google.update.Dialog$1'),(106,4,'cn.domob.android.ads.o'),(107,4,'com.mt.airad.IIIIlllIlllIIIII'),(108,7,'com.atools.battery.m'),(109,6,'com.adwo.adsdk.M'),(110,6,'com.ju6.c'),(111,6,'com.ju6.mms.util.SqliteWrapper'),(112,6,'cn.domob.android.ads.o$5'),(113,6,'cn.domob.android.ads.e'),(114,6,'com.baidu.al'),(115,6,'cn.domob.android.ads.DomobAdManager'),(116,6,'cn.domob.android.a.a$a'),(117,6,'com.evilsunflower.reader.ui.BugReportActivity$1'),(118,6,'com.ju6.mms.pdu.PduPersister'),(119,6,'cn.domob.android.ads.o'),(120,6,'com.baidu.as'),(121,6,'com.millennialmedia.android.MillennialMediaView'),(122,6,'net.youmi.android.eo'),(123,6,'com.evilsunflower.reader.ui.ZLAndroidActivity$1'),(124,6,'com.guohead.sdk.adapters.CustomAdapter$3'),(125,6,'com.madhouse.android.ads._'),(126,6,'com.guohead.sdk.adapters.CustomAdapter$4'),(127,6,'cn.domob.android.ads.g$1'),(128,6,'net.youmi.android.be'),(129,6,'net.youmi.android.t'),(130,5,'com.evilsunflower.reader.ui.BugReportActivity$1'),(131,5,'cn.domob.android.ads.e'),(132,5,'com.ju6.c'),(133,5,'com.millennialmedia.android.MillennialMediaView'),(134,5,'com.madhouse.android.ads._'),(135,5,'net.youmi.android.t'),(136,5,'com.baidu.as'),(137,5,'com.ju6.mms.util.SqliteWrapper'),(138,5,'cn.domob.android.ads.DomobAdManager'),(139,5,'cn.domob.android.ads.g$1'),(140,5,'com.guohead.sdk.adapters.CustomAdapter$3'),(141,5,'cn.domob.android.ads.o'),(142,5,'net.youmi.android.be'),(143,5,'com.evilsunflower.reader.ui.ZLAndroidActivity'),(144,5,'com.ju6.mms.pdu.PduPersister'),(145,5,'cn.domob.android.ads.o$5'),(146,5,'net.youmi.android.eo'),(147,5,'com.evilsunflower.reader.ui.ZLAndroidActivity$1'),(148,5,'com.adwo.adsdk.M'),(149,5,'cn.domob.android.a.a$a'),(150,5,'com.evilsunflower.reader.control.ShowTips$1'),(151,5,'com.guohead.sdk.adapters.CustomAdapter$4'),(152,5,'com.baidu.al');
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
) ENGINE=InnoDB AUTO_INCREMENT=250 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,18,'create_game'),(2,23,'SAFE_START'),(3,22,'MM'),(4,21,'shouldShowBottomBar'),(5,21,'transitionTime'),(6,21,'shouldShowTitlebar'),(7,18,'preferred_player_id'),(8,18,'server_address'),(9,21,'overlayTitle'),(10,21,'shouldEnableBottomBar'),(11,18,'num_decks'),(12,18,'game_id'),(13,12,'TYPEdsada'),(14,15,'UrlPath'),(15,14,'shouldShowBottomBar'),(16,10,'map.id'),(17,16,'ST_MY_PID'),(18,14,'shouldResizeOverlay'),(19,14,'overlayTitle'),(20,12,'MSG'),(21,15,'WAPS_ID'),(22,10,'WAPS_ID'),(23,14,'shouldShowTitlebar'),(24,15,'SHWO_FLAG'),(25,16,'DOMOB_PID'),(26,14,'DOMOB_PID'),(27,10,'ball.y'),(28,16,'DOMOB_TEST_MODE'),(29,14,'DOMOB_TEST_MODE'),(30,15,'CLIENT_PACKAGE'),(31,15,'DEVICE_ID'),(32,10,'DEVICE_ID'),(33,14,'transitionTime'),(34,15,'URL'),(35,15,'Notify_Url_Params'),(36,14,'overlayTransition'),(37,14,'shouldEnableBottomBar'),(38,21,'shouldMakeOverlayTransparent'),(39,18,'num_players'),(40,18,'num_ais'),(41,15,'URL_PARAMS'),(42,15,'APP_ID'),(43,10,'APP_ID'),(44,10,'ball.x'),(45,15,'ACTIVITY_FLAG'),(46,15,'Offers_URL'),(47,21,'overlayTransition'),(48,15,'isFinshClose'),(49,21,'url'),(50,15,'offers_webview_tag'),(51,21,'shouldResizeOverlay'),(52,13,'actType'),(53,23,'SAFE_PID'),(54,15,'WAPS_PID'),(55,10,'WAPS_PID'),(56,10,'map.goals'),(57,13,'appName'),(58,10,'stepcount'),(59,14,'shouldMakeOverlayTransparent'),(60,14,'url'),(61,10,'CLIENT_PACKAGE'),(62,15,'Notify_Id'),(63,16,'DOMOB_ALLOW_LOCATION'),(64,14,'DOMOB_ALLOW_LOCATION'),(65,15,'USER_ID'),(66,13,'appId'),(67,16,'ST_START_DELAY'),(68,30,'shouldMakeOverlayTransparent'),(69,30,'FSAd'),(70,28,'actType'),(71,29,'shouldResizeOverlay'),(72,30,'DOMOB_TEST_MODE'),(73,33,'DOMOB_TEST_MODE'),(74,29,'DOMOB_TEST_MODE'),(75,26,'DOMOB_TEST_MODE'),(76,27,'DOMOB_TEST_MODE'),(77,29,'shouldShowTitlebar'),(78,30,'shouldShowTitlebar'),(79,32,'TYPEdsada'),(80,26,'mode'),(81,27,'mode'),(82,31,'adURL'),(83,29,'overlayTransition'),(84,30,'overlayTitle'),(85,31,'adID'),(86,32,'MSG'),(87,30,'DOMOB_PID'),(88,33,'DOMOB_PID'),(89,29,'DOMOB_PID'),(90,26,'DOMOB_PID'),(91,27,'DOMOB_PID'),(92,29,'shouldMakeOverlayTransparent'),(93,30,'transitionTime'),(94,28,'appName'),(95,30,'shouldEnableBottomBar'),(96,30,'shouldResizeOverlay'),(97,30,'DOMOB_ALLOW_LOCATION'),(98,33,'DOMOB_ALLOW_LOCATION'),(99,29,'DOMOB_ALLOW_LOCATION'),(100,26,'DOMOB_ALLOW_LOCATION'),(101,27,'DOMOB_ALLOW_LOCATION'),(102,29,'url'),(103,30,'overlayTransition'),(104,28,'appId'),(105,29,'overlayTitle'),(106,30,'shouldShowBottomBar'),(107,29,'shouldShowBottomBar'),(108,33,'ST_MY_PID'),(109,33,'ST_START_DELAY'),(110,29,'shouldEnableBottomBar'),(111,29,'transitionTime'),(112,77,'MM'),(113,78,'SAFE_PID'),(114,78,'SAFE_START'),(115,62,'DOMOB_TEST_MODE'),(116,49,'DOMOB_TEST_MODE'),(117,60,'DOMOB_TEST_MODE'),(118,40,'DOMOB_TEST_MODE'),(119,56,'DOMOB_TEST_MODE'),(120,64,'DOMOB_TEST_MODE'),(121,60,'shouldShowBottomBar'),(122,60,'overlayTransition'),(123,70,'surl'),(124,62,'cached'),(125,40,'query'),(126,62,'shouldShowBottomBar'),(127,58,'adWidth'),(128,70,'clklogurl'),(129,62,'videoAd'),(130,40,'GH_APPKEY'),(131,56,'transitionTime'),(132,40,'com.cdjm.reader.ui.androidActiviy.ChangeCounter'),(133,62,'isCachedAd'),(134,70,'tit'),(135,40,'com.cdjm.reader.ui.androidActiviy.RequestedOrientation'),(136,60,'cachedAdView'),(137,60,'canAccelerate'),(138,72,'link'),(139,64,'D780FBF4215247bcBB1AC0AD33C474FE'),(140,56,'shouldResizeOverlay'),(141,56,'overlayTitle'),(142,68,'actType'),(143,58,'url'),(144,60,'transitionTime'),(145,62,'videoCompleted'),(146,49,'query'),(147,64,'EB80F3291A8E469c962CA133BDC549D7'),(148,40,'Adwo_PID'),(149,68,'appId'),(150,60,'shouldShowTitlebar'),(151,64,'172C94EDC717477aBF600D7898A64A8E'),(152,62,'DOMOB_ALLOW_LOCATION'),(153,49,'DOMOB_ALLOW_LOCATION'),(154,60,'DOMOB_ALLOW_LOCATION'),(155,40,'DOMOB_ALLOW_LOCATION'),(156,56,'DOMOB_ALLOW_LOCATION'),(157,64,'DOMOB_ALLOW_LOCATION'),(158,62,'adName'),(159,70,'limg'),(160,56,'shouldMakeOverlayTransparent'),(161,60,'shouldResizeOverlay'),(162,60,'overlayTitle'),(163,60,'shouldEnableBottomBar'),(164,64,'D50EF1926ADD471892E72BCE6D7E032C'),(165,70,'curl'),(166,62,'videoPosition'),(167,56,'shouldShowBottomBar'),(168,68,'appName'),(169,56,'shouldEnableBottomBar'),(170,62,'DOMOB_PID'),(171,49,'DOMOB_PID'),(172,60,'DOMOB_PID'),(173,40,'DOMOB_PID'),(174,56,'DOMOB_PID'),(175,64,'DOMOB_PID'),(176,56,'url'),(177,62,'logSet'),(178,56,'overlayTransition'),(179,60,'shouldMakeOverlayTransparent'),(180,56,'shouldShowTitlebar'),(181,71,'SAFE_PID'),(182,57,'transitionTime'),(183,65,'appId'),(184,59,'DOMOB_TEST_MODE'),(185,45,'DOMOB_TEST_MODE'),(186,57,'DOMOB_TEST_MODE'),(187,38,'DOMOB_TEST_MODE'),(188,53,'DOMOB_TEST_MODE'),(189,61,'DOMOB_TEST_MODE'),(190,53,'shouldShowBottomBar'),(191,57,'overlayTitle'),(192,38,'com.cdjm.reader.ui.androidActiviy.ChangeCounter'),(193,59,'adName'),(194,57,'shouldEnableBottomBar'),(195,61,'D50EF1926ADD471892E72BCE6D7E032C'),(196,61,'172C94EDC717477aBF600D7898A64A8E'),(197,38,'Adwo_PID'),(198,67,'limg'),(199,45,'query'),(200,53,'shouldEnableBottomBar'),(201,71,'SAFE_START'),(202,69,'link'),(203,53,'shouldResizeOverlay'),(204,59,'videoCompleted'),(205,48,'MM'),(206,57,'shouldShowTitlebar'),(207,57,'shouldMakeOverlayTransparent'),(208,59,'DOMOB_PID'),(209,45,'DOMOB_PID'),(210,57,'DOMOB_PID'),(211,38,'DOMOB_PID'),(212,53,'DOMOB_PID'),(213,61,'DOMOB_PID'),(214,65,'actType'),(215,61,'EB80F3291A8E469c962CA133BDC549D7'),(216,53,'url'),(217,55,'adWidth'),(218,53,'transitionTime'),(219,67,'surl'),(220,59,'DOMOB_ALLOW_LOCATION'),(221,45,'DOMOB_ALLOW_LOCATION'),(222,57,'DOMOB_ALLOW_LOCATION'),(223,38,'DOMOB_ALLOW_LOCATION'),(224,53,'DOMOB_ALLOW_LOCATION'),(225,61,'DOMOB_ALLOW_LOCATION'),(226,57,'cachedAdView'),(227,67,'clklogurl'),(228,57,'shouldShowBottomBar'),(229,61,'D780FBF4215247bcBB1AC0AD33C474FE'),(230,53,'overlayTransition'),(231,57,'canAccelerate'),(232,59,'videoAd'),(233,53,'shouldMakeOverlayTransparent'),(234,59,'videoPosition'),(235,59,'isCachedAd'),(236,38,'query'),(237,38,'GH_APPKEY'),(238,38,'com.cdjm.reader.ui.androidActiviy.RequestedOrientation'),(239,67,'curl'),(240,53,'shouldShowTitlebar'),(241,65,'appName'),(242,57,'shouldResizeOverlay'),(243,67,'tit'),(244,53,'overlayTitle'),(245,59,'cached'),(246,59,'shouldShowBottomBar'),(247,59,'logSet'),(248,55,'url'),(249,57,'overlayTransition');
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
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'s',0,NULL,NULL),(9,9,'r',1,4,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'s',0,NULL,NULL),(17,17,'r',1,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'s',0,NULL,NULL),(24,24,'r',1,NULL,NULL),(25,30,'r',1,NULL,NULL),(26,31,'a',1,NULL,NULL),(27,32,'a',0,NULL,NULL),(28,33,'a',0,NULL,NULL),(29,34,'a',0,NULL,NULL),(30,35,'a',0,NULL,NULL),(31,36,'a',0,NULL,NULL),(32,37,'a',0,NULL,NULL),(33,38,'s',0,NULL,NULL),(34,39,'r',1,NULL,NULL),(35,45,'r',1,NULL,NULL),(36,46,'r',1,NULL,NULL),(37,50,'a',0,NULL,NULL),(38,51,'a',1,NULL,NULL),(39,53,'a',0,NULL,NULL),(40,54,'a',1,NULL,NULL),(41,55,'a',0,NULL,NULL),(42,57,'a',0,NULL,NULL),(43,58,'a',0,NULL,NULL),(44,59,'a',0,NULL,NULL),(45,60,'a',1,NULL,NULL),(46,61,'a',0,NULL,NULL),(47,62,'a',0,NULL,NULL),(48,63,'a',0,NULL,NULL),(49,64,'a',1,NULL,NULL),(50,65,'a',0,NULL,NULL),(51,66,'a',0,NULL,NULL),(52,67,'a',0,NULL,NULL),(53,68,'a',0,NULL,NULL),(54,69,'a',0,NULL,NULL),(55,70,'a',0,NULL,NULL),(56,71,'a',0,NULL,NULL),(57,72,'a',0,NULL,NULL),(58,73,'a',0,NULL,NULL),(59,74,'a',0,NULL,NULL),(60,75,'a',0,NULL,NULL),(61,76,'a',0,NULL,NULL),(62,77,'a',0,NULL,NULL),(63,78,'a',0,NULL,NULL),(64,79,'a',0,NULL,NULL),(65,80,'a',0,NULL,NULL),(66,81,'a',0,NULL,NULL),(67,82,'a',0,NULL,NULL),(68,83,'a',0,NULL,NULL),(69,84,'a',0,NULL,NULL),(70,85,'a',0,NULL,NULL),(71,86,'s',0,NULL,NULL),(72,87,'a',0,NULL,NULL),(73,88,'r',1,NULL,NULL),(74,93,'a',1,NULL,NULL),(75,94,'a',0,NULL,NULL),(76,95,'a',0,NULL,NULL),(77,96,'a',0,NULL,NULL),(78,97,'s',0,NULL,NULL),(79,100,'r',1,NULL,NULL),(80,109,'r',1,NULL,NULL),(81,113,'r',1,NULL,NULL),(82,122,'r',1,NULL,NULL),(83,123,'r',1,NULL,NULL),(84,131,'r',1,NULL,NULL),(85,146,'r',1,NULL,NULL),(86,147,'r',1,NULL,NULL),(87,148,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=281 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,8),(2,1,1),(3,2,1),(4,2,8),(5,3,1),(6,4,1),(7,4,8),(8,5,1),(9,5,8),(10,6,8),(11,6,1),(12,7,1),(13,8,1),(14,9,9),(15,10,8),(16,10,1),(17,11,8),(18,11,1),(19,12,7),(20,13,1),(21,14,5),(22,15,6),(23,16,1),(24,17,1),(25,18,1),(26,19,8),(27,20,1),(28,20,8),(29,21,19),(30,22,18),(31,23,19),(32,24,18),(33,25,18),(34,25,19),(35,26,18),(36,27,22),(37,28,18),(38,29,12),(39,30,15),(40,31,17),(41,32,16),(42,32,14),(43,33,16),(44,34,10),(45,35,15),(46,36,24),(47,37,15),(48,38,19),(49,39,14),(50,39,16),(51,40,16),(52,41,16),(53,41,14),(54,42,16),(55,42,14),(56,43,16),(57,44,12),(58,45,15),(59,46,15),(60,47,15),(61,48,33),(62,49,30),(63,49,29),(64,49,27),(65,49,26),(66,49,33),(67,50,33),(68,51,27),(69,52,26),(70,52,33),(71,52,29),(72,52,30),(73,52,27),(74,53,26),(75,53,27),(76,53,29),(77,53,30),(78,53,33),(79,54,34),(80,55,32),(81,56,33),(82,57,33),(83,57,27),(84,57,26),(85,57,29),(86,57,30),(87,58,32),(88,59,33),(89,59,30),(90,59,29),(91,59,26),(92,59,27),(93,60,31),(94,61,74),(95,62,77),(96,63,74),(97,64,74),(98,65,40),(99,66,40),(100,67,60),(101,67,62),(102,67,64),(103,67,40),(104,67,56),(105,68,40),(106,69,49),(107,69,64),(108,69,40),(109,70,49),(110,70,64),(111,70,62),(112,70,60),(113,70,56),(114,70,40),(115,71,56),(116,71,40),(117,71,60),(118,71,62),(119,71,49),(120,71,64),(121,72,40),(122,73,40),(123,74,64),(124,75,40),(125,76,56),(126,76,40),(127,76,60),(128,76,62),(129,76,64),(130,76,49),(131,77,40),(132,78,40),(133,79,49),(134,79,64),(135,79,62),(136,79,40),(137,80,64),(138,80,49),(139,80,40),(140,81,49),(141,81,64),(142,81,40),(143,81,62),(144,82,40),(145,82,49),(146,82,62),(147,82,64),(148,83,62),(149,83,40),(150,83,64),(151,83,49),(152,84,49),(153,84,64),(154,84,62),(155,84,40),(156,85,49),(157,85,64),(158,85,40),(159,86,64),(160,86,49),(161,86,40),(162,87,40),(163,88,40),(164,88,49),(165,88,64),(166,89,40),(167,89,62),(168,89,64),(169,89,49),(170,90,40),(171,91,49),(172,91,64),(173,91,62),(174,91,60),(175,91,56),(176,91,40),(177,92,49),(178,93,40),(179,93,62),(180,93,49),(181,93,64),(182,94,40),(183,94,62),(184,94,64),(185,94,49),(186,95,64),(187,96,64),(188,97,38),(189,98,61),(190,99,38),(191,100,38),(192,100,59),(193,100,61),(194,100,45),(195,101,38),(196,101,45),(197,101,61),(198,102,61),(199,103,45),(200,103,61),(201,103,38),(202,104,38),(203,105,38),(204,105,59),(205,105,61),(206,105,45),(207,106,53),(208,106,38),(209,106,45),(210,106,61),(211,106,57),(212,106,59),(213,107,57),(214,107,38),(215,107,53),(216,107,61),(217,107,45),(218,107,59),(219,108,61),(220,108,45),(221,108,38),(222,109,45),(223,109,61),(224,109,38),(225,109,59),(226,110,38),(227,111,53),(228,111,59),(229,111,45),(230,111,61),(231,111,57),(232,111,38),(233,112,61),(234,113,59),(235,113,61),(236,113,45),(237,113,38),(238,114,38),(239,115,45),(240,115,59),(241,115,61),(242,115,38),(243,116,38),(244,117,38),(245,118,73),(246,119,38),(247,119,61),(248,119,59),(249,119,45),(250,120,38),(251,121,53),(252,121,38),(253,121,61),(254,121,59),(255,121,57),(256,122,38),(257,123,38),(258,123,61),(259,123,45),(260,123,59),(261,124,38),(262,125,38),(263,126,61),(264,126,45),(265,126,59),(266,126,38),(267,127,45),(268,128,38),(269,128,53),(270,128,57),(271,128,59),(272,128,61),(273,128,45),(274,129,48),(275,130,45),(276,130,61),(277,130,38),(278,131,61),(279,131,45),(280,131,38);
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
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,25,'<com.tutusw.onekeyvpn.service.ManagementThread: void run()>',31,'r',0),(2,25,'<com.tutusw.onekeyvpn.service.ManagementThread: void onState(java.lang.String)>',44,'r',0),(3,1,'<com.tutusw.onekeyvpn.OpenVpnSettings: void onCreate(android.os.Bundle)>',27,'s',NULL),(4,25,'<com.tutusw.onekeyvpn.service.ManagementThread: void run()>',55,'r',0),(5,26,'<com.tutusw.onekeyvpn.service.DaemonMonitor: void start()>',68,'r',0),(6,27,'<com.tutusw.onekeyvpn.service.DaemonMonitor$2: void onCmdTerminated()>',10,'r',0),(7,1,'<com.tutusw.onekeyvpn.OpenVpnSettings: boolean onOptionsItemSelected(android.view.MenuItem)>',22,'a',NULL),(8,28,'<com.tutusw.onekeyvpn.OpenVpnSettings$4: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(9,9,'<com.tutusw.onekeyvpn.util.BootCompletedReceiver: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(10,25,'<com.tutusw.onekeyvpn.service.ManagementThread: void run()>',23,'r',0),(11,25,'<com.tutusw.onekeyvpn.service.ManagementThread: void networkStateChanged(int)>',11,'r',0),(12,29,'<com.tutusw.onekeyvpn.ImportFiles$2: void onClick(android.view.View)>',6,'a',NULL),(13,1,'<com.tutusw.onekeyvpn.OpenVpnSettings: void onCreate(android.os.Bundle)>',24,'s',NULL),(14,5,'<com.tutusw.onekeyvpn.EnterPassphrase: void onCreate(android.os.Bundle)>',6,'s',NULL),(15,6,'<com.tutusw.onekeyvpn.EnterUserPassword: void onCreate(android.os.Bundle)>',6,'s',NULL),(16,8,'<com.tutusw.onekeyvpn.service.OpenVpnService: void daemonStart(java.io.File)>',27,'r',0),(17,40,'<com.tutusw.onekeyvpn.OpenVpnSettings$1: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',12,'s',NULL),(18,40,'<com.tutusw.onekeyvpn.OpenVpnSettings$1: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',18,'s',NULL),(19,8,'<com.tutusw.onekeyvpn.service.OpenVpnService: void onCreate()>',6,'r',NULL),(20,26,'<com.tutusw.onekeyvpn.service.DaemonMonitor: void start()>',13,'r',0),(21,19,'<com.safetest.tractor.android.CreditActivity: boolean onMenuItemSelected(int,android.view.MenuItem)>',20,'a',NULL),(22,18,'<com.safetest.tractor.android.AndroidTractorGameController: void LaunchNewGameActivity()>',4,'a',NULL),(23,19,'<com.safetest.tractor.android.CreditActivity: void onCreate(android.os.Bundle)>',21,'s',NULL),(24,18,'<com.safetest.tractor.android.AndroidTractorGameController: boolean onMenuItemSelected(int,android.view.MenuItem)>',26,'a',NULL),(25,19,'<com.safetest.tractor.android.CreditActivity: void LaunchNewGame()>',15,'a',NULL),(26,18,'<com.safetest.tractor.android.AndroidTractorGameController: boolean onMenuItemSelected(int,android.view.MenuItem)>',32,'a',NULL),(27,41,'<com.safetest.tractor.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(28,42,'<com.adwo.adsdk.g: void run()>',59,'a',NULL),(29,43,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(30,15,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(31,17,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(32,44,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(33,16,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(34,10,'<com.gp.tiltmazes.TiltMazesActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',33,'a',NULL),(35,15,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',328,'a',NULL),(36,24,'<com.safetest.tractor.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(37,47,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(38,19,'<com.safetest.tractor.android.CreditActivity: boolean onMenuItemSelected(int,android.view.MenuItem)>',14,'a',NULL),(39,48,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(40,49,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(41,52,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(42,56,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(43,16,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(44,89,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(45,90,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(46,91,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(47,92,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(48,38,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(49,98,'<cn.domob.android.ads.o$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(50,38,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(51,32,'<com.gp.jewels.Jewels: void toMenuView()>',7,'a',NULL),(52,99,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor m(android.content.Context)>',11,'p',NULL),(53,101,'<cn.domob.android.ads.g$1: void onClick(android.content.DialogInterface,int)>',8,'a',0),(54,39,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(55,102,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(56,103,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(57,104,'<cn.domob.android.a.a$a: java.net.Proxy a(android.content.Context)>',72,'p',NULL),(58,105,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(59,106,'<cn.domob.android.ads.o: void v(cn.domob.android.ads.o)>',6,'a',NULL),(60,107,'<com.mt.airad.IIIIlllIlllIIIII: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',10,'a',NULL),(61,93,'<com.atools.hosts.MainActivity: void onClick(android.view.View)>',13,'a',NULL),(62,108,'<com.atools.battery.m: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(63,93,'<com.atools.hosts.MainActivity: void onClick(android.view.View)>',17,'a',NULL),(64,93,'<com.atools.hosts.MainActivity: void onCreate(android.os.Bundle)>',69,'s',NULL),(65,110,'<com.ju6.c: boolean b()>',192,'p',NULL),(66,111,'<com.ju6.mms.util.SqliteWrapper: int update(android.content.Context,android.content.ContentResolver,android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',6,'p',NULL),(67,112,'<cn.domob.android.ads.o$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(68,110,'<com.ju6.c: boolean b()>',195,'p',0),(69,114,'<com.baidu.al: void onClick(android.view.View)>',24,'a',NULL),(70,115,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor m(android.content.Context)>',11,'p',NULL),(71,116,'<cn.domob.android.a.a$a: java.net.Proxy a(android.content.Context)>',72,'p',NULL),(72,54,'<com.evilsunflower.reader.FBReader: void onNewIntent(android.content.Intent)>',17,'a',NULL),(73,54,'<com.evilsunflower.reader.FBReader: void onStart()>',14,'a',NULL),(74,117,'<com.evilsunflower.reader.ui.BugReportActivity$1: void onClick(android.view.View)>',21,'a',NULL),(75,118,'<com.ju6.mms.pdu.PduPersister: void a(com.ju6.mms.pdu.PduPart,android.net.Uri,java.lang.String)>',23,'p',0),(76,119,'<cn.domob.android.ads.o: void v(cn.domob.android.ads.o)>',6,'a',NULL),(77,111,'<com.ju6.mms.util.SqliteWrapper: android.database.Cursor query(android.content.Context,android.content.ContentResolver,android.net.Uri,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String)>',7,'p',NULL),(78,110,'<com.ju6.c: void run()>',146,'p',NULL),(79,77,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',229,'a',NULL),(80,120,'<com.baidu.as: void e(com.baidu.bl)>',23,'a',NULL),(81,77,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',218,'a',NULL),(82,121,'<com.millennialmedia.android.MillennialMediaView: void openVideo()>',10,'r',NULL),(83,77,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',189,'a',NULL),(84,77,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',237,'a',NULL),(85,124,'<com.guohead.sdk.adapters.CustomAdapter$3: void onClick(android.view.View)>',4,'a',NULL),(86,125,'<com.madhouse.android.ads._: com.madhouse.android.ads.m _(android.content.Context)>',11,'p',NULL),(87,110,'<com.ju6.c: boolean b()>',272,'p',NULL),(88,126,'<com.guohead.sdk.adapters.CustomAdapter$4: void onClick(android.view.View)>',4,'a',NULL),(89,77,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',209,'a',NULL),(90,111,'<com.ju6.mms.util.SqliteWrapper: android.net.Uri insert(android.content.Context,android.content.ContentResolver,android.net.Uri,android.content.ContentValues)>',4,'p',NULL),(91,127,'<cn.domob.android.ads.g$1: void onClick(android.content.DialogInterface,int)>',8,'a',0),(92,64,'<com.evilsunflower.reader.BookmarksActivity: boolean onContextItemSelected(android.view.MenuItem)>',19,'a',NULL),(93,77,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',158,'a',NULL),(94,77,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',181,'a',NULL),(95,128,'<net.youmi.android.be: void a(android.content.Context,java.lang.String)>',6,'a',NULL),(96,129,'<net.youmi.android.t: void onClick(android.view.View)>',48,'a',NULL),(97,51,'<com.evilsunflower.reader.FBReader: void onStart()>',14,'a',NULL),(98,130,'<com.evilsunflower.reader.ui.BugReportActivity$1: void onClick(android.view.View)>',21,'a',NULL),(99,132,'<com.ju6.c: void run()>',146,'p',NULL),(100,133,'<com.millennialmedia.android.MillennialMediaView: void openVideo()>',10,'r',NULL),(101,134,'<com.madhouse.android.ads._: com.madhouse.android.ads.m _(android.content.Context)>',11,'p',NULL),(102,135,'<net.youmi.android.t: void onClick(android.view.View)>',48,'a',NULL),(103,136,'<com.baidu.as: void e(com.baidu.bl)>',23,'a',NULL),(104,137,'<com.ju6.mms.util.SqliteWrapper: android.database.Cursor query(android.content.Context,android.content.ContentResolver,android.net.Uri,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String)>',7,'p',NULL),(105,74,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',218,'a',NULL),(106,138,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor m(android.content.Context)>',11,'p',NULL),(107,139,'<cn.domob.android.ads.g$1: void onClick(android.content.DialogInterface,int)>',8,'a',0),(108,140,'<com.guohead.sdk.adapters.CustomAdapter$3: void onClick(android.view.View)>',4,'a',NULL),(109,74,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',158,'a',NULL),(110,132,'<com.ju6.c: boolean b()>',195,'p',0),(111,141,'<cn.domob.android.ads.o: void v(cn.domob.android.ads.o)>',6,'a',NULL),(112,142,'<net.youmi.android.be: void a(android.content.Context,java.lang.String)>',6,'a',NULL),(113,74,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',237,'a',NULL),(114,143,'<com.evilsunflower.reader.ui.ZLAndroidActivity: void onCreate(android.os.Bundle)>',80,'s',NULL),(115,74,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',189,'a',NULL),(116,137,'<com.ju6.mms.util.SqliteWrapper: android.net.Uri insert(android.content.Context,android.content.ContentResolver,android.net.Uri,android.content.ContentValues)>',4,'p',NULL),(117,137,'<com.ju6.mms.util.SqliteWrapper: int update(android.content.Context,android.content.ContentResolver,android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',6,'p',NULL),(118,88,'<com.evilsunflower.reader.control.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(119,74,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',181,'a',NULL),(120,144,'<com.ju6.mms.pdu.PduPersister: void a(com.ju6.mms.pdu.PduPart,android.net.Uri,java.lang.String)>',23,'p',0),(121,145,'<cn.domob.android.ads.o$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(122,132,'<com.ju6.c: boolean b()>',272,'p',NULL),(123,74,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',229,'a',NULL),(124,132,'<com.ju6.c: boolean b()>',192,'p',NULL),(125,51,'<com.evilsunflower.reader.FBReader: void onNewIntent(android.content.Intent)>',17,'a',NULL),(126,74,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',209,'a',NULL),(127,60,'<com.evilsunflower.reader.BookmarksActivity: boolean onContextItemSelected(android.view.MenuItem)>',19,'a',NULL),(128,149,'<cn.domob.android.a.a$a: java.net.Proxy a(android.content.Context)>',72,'p',NULL),(129,150,'<com.evilsunflower.reader.control.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(130,151,'<com.guohead.sdk.adapters.CustomAdapter$4: void onClick(android.view.View)>',4,'a',NULL),(131,152,'<com.baidu.al: void onClick(android.view.View)>',24,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,3,5),(2,4,5),(3,5,5),(4,6,5),(5,7,5),(6,8,5),(7,9,5),(8,10,5),(9,12,6),(10,18,8),(11,19,9),(12,22,9),(13,24,9),(14,25,1),(15,26,1),(16,27,10),(17,28,11),(18,29,12),(19,30,9),(20,31,12),(21,32,11),(22,33,11),(23,34,9),(24,35,9),(25,36,10),(26,37,9),(27,38,9),(28,39,9),(29,40,12),(30,41,11),(31,42,11),(32,43,11),(33,44,13),(34,45,11),(35,47,1),(36,48,12),(37,49,1),(38,50,9),(39,52,11),(40,53,9),(41,54,9),(42,56,11),(43,57,9),(44,59,12),(45,61,9),(46,63,14),(47,64,9),(48,66,14),(49,67,9),(50,68,11),(51,69,9),(52,70,10),(53,73,9),(54,74,1),(55,75,1),(56,76,9),(57,78,9),(58,79,9),(59,80,9),(60,81,9),(61,84,1),(62,85,1),(63,88,9),(64,89,9),(65,92,9),(66,94,9),(67,95,9),(68,96,9),(69,97,9),(70,102,13),(71,103,1),(72,104,1),(73,105,1),(74,106,1),(75,107,9),(76,108,9),(77,110,1),(78,111,1),(79,114,9),(80,116,9),(81,117,9),(82,118,9),(83,119,9),(84,120,9),(85,123,11),(86,124,9),(87,125,9),(88,126,9),(89,128,19),(90,129,9),(91,130,9),(92,133,10),(93,135,9),(94,137,9),(95,138,9),(96,139,9),(97,140,9),(98,141,9),(99,142,9),(100,143,9),(101,144,9),(102,145,9),(103,146,5),(104,147,5),(105,148,5),(106,149,5),(107,150,5),(108,151,5),(109,152,5),(110,153,5),(111,155,11),(112,156,19),(113,157,5),(114,158,5),(115,159,5),(116,160,5),(117,161,5),(118,162,5),(119,163,5),(120,164,5),(121,165,9),(122,168,9),(123,169,9),(124,170,9),(125,171,9),(126,172,9),(127,173,9),(128,174,9),(129,175,9),(130,176,9),(131,177,9),(132,178,9),(133,179,9),(134,181,9),(135,184,9),(136,186,9),(137,187,9),(138,188,9),(139,189,9),(140,190,9),(141,192,10),(142,194,1),(143,195,1),(144,197,9);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,25,1),(2,26,3),(3,47,1),(4,49,3),(5,74,3),(6,75,1),(7,84,1),(8,85,3),(9,103,1),(10,104,3),(11,105,1),(12,106,3),(13,110,1),(14,111,3),(15,194,1),(16,195,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/tutusw/onekeyvpn/service/OpenVpnService'),(2,2,'com/tutusw/onekeyvpn/AdvancedSettings'),(3,11,'com/tutusw/onekeyvpn/service/OpenVpnService'),(4,13,'com/tutusw/onekeyvpn/service/OpenVpnService'),(5,14,'com/tutusw/onekeyvpn/service/OpenVpnService'),(6,15,'com/tutusw/onekeyvpn/service/OpenVpnService'),(7,16,'com/tutusw/onekeyvpn/service/OpenVpnService'),(8,17,'com/tutusw/onekeyvpn/service/OpenVpnService'),(9,20,'com/safetest/tractor/android/Tractor'),(10,21,'com/safetest/tractor/UpdateService'),(11,23,'com/safetest/tractor/android/AndroidTractorGameController'),(12,35,'com.google.android.maps.MapsActivity'),(13,51,'com/google/update/UpdateService'),(14,53,'com.google.android.maps.MapsActivity'),(15,57,'com.google.android.maps.MapsActivity'),(16,58,'com/google/update/Dialog'),(17,60,'com/google/update/Dialog'),(18,62,'com/gp/tiltmazes/SelectMazeActivity'),(19,61,'com.google.android.maps.MapsActivity'),(20,65,'(.*)'),(21,67,'com/adwo/adsdk/AdwoAdBrowserActivity'),(22,69,'com.google.android.maps.MapsActivity'),(23,71,'com/safetest/tractor/UpdateService'),(24,72,'NULL-CONSTANT'),(25,82,'com/google/update/Dialog'),(26,83,'com/google/update/Dialog'),(27,86,'com/waps/OffersWebView'),(28,87,'com/waps/OffersWebView'),(29,90,'com/google/update/Dialog'),(30,91,'com/google/update/Dialog'),(31,98,'com/google/update/Dialog'),(32,99,'com/google/update/Dialog'),(33,100,'com/gp/jewels/Menu'),(34,101,'com/google/update/UpdateService'),(35,109,'com/atools/hosts/CustomizeActivity'),(36,112,'com/atools/hosts/AboutActivity'),(37,113,'com/atools/battery/UpdateService'),(38,120,'com.android.browser.BrowserActivity'),(39,121,'com.evilsunflower.reader.FBReader'),(40,122,'com.evilsunflower.reader.FBReader'),(41,127,'com/millennialmedia/android/MMAdViewOverlayActivity'),(42,134,'com/evilsunflower/reader/BookmarkEditActivity'),(43,136,'com/millennialmedia/android/MMAdViewOverlayActivity'),(44,154,'com.evilsunflower.reader.FBReader'),(45,166,'com/millennialmedia/android/MMAdViewOverlayActivity'),(46,180,'com/evilsunflower/reader/control/UpdateService'),(47,182,'com/evilsunflower/reader/control/UpdateService'),(48,183,'com/millennialmedia/android/MMAdViewOverlayActivity'),(49,191,'com.evilsunflower.reader.FBReader'),(50,193,'com/evilsunflower/reader/BookmarkEditActivity'),(51,197,'com.android.browser.BrowserActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,19,1),(2,22,2),(3,24,3),(4,27,4),(5,28,5),(6,29,6),(7,30,7),(8,31,8),(9,32,9),(10,33,10),(11,34,11),(12,36,12),(13,37,13),(14,38,14),(15,40,15),(16,41,16),(17,45,17),(18,50,18),(19,52,19),(20,53,20),(21,54,21),(22,56,22),(23,57,23),(24,59,24),(25,61,25),(26,64,26),(27,68,27),(28,69,28),(29,73,29),(30,76,31),(31,78,32),(32,79,33),(33,80,34),(34,81,35),(35,88,36),(36,89,37),(37,92,38),(38,94,39),(39,95,40),(40,96,41),(41,97,42),(42,107,45),(43,108,46),(44,114,49),(45,116,50),(46,117,51),(47,118,52),(48,119,53),(49,120,54),(50,124,57),(51,125,61),(52,126,62),(53,127,63),(54,129,64),(55,130,65),(56,133,68),(57,135,72),(58,136,73),(59,137,74),(60,138,75),(61,139,76),(62,140,77),(63,141,78),(64,142,79),(65,143,80),(66,144,81),(67,145,82),(68,165,85),(69,166,88),(70,168,90),(71,169,91),(72,170,92),(73,171,93),(74,172,94),(75,173,95),(76,174,96),(77,175,97),(78,176,98),(79,177,99),(80,178,100),(81,179,101),(82,181,102),(83,183,107),(84,184,108),(85,186,109),(86,187,110),(87,188,111),(88,189,112),(89,190,114),(90,192,116),(91,197,118);
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
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,2,'hasDaemonsStarted'),(2,3,'android.intent.extra.INTENT'),(3,4,'android.intent.extra.INTENT'),(4,5,'android.intent.extra.TITLE'),(5,5,'android.intent.extra.INTENT'),(6,6,'android.intent.extra.INTENT'),(7,7,'android.intent.extra.TITLE'),(8,7,'android.intent.extra.INTENT'),(9,8,'android.intent.extra.INTENT'),(10,9,'android.intent.extra.TITLE'),(11,9,'android.intent.extra.INTENT'),(12,10,'android.intent.extra.TITLE'),(13,10,'android.intent.extra.INTENT'),(14,12,'org.openintents.extra.TITLE'),(15,23,'server_address'),(16,23,'create_game'),(17,23,'num_players'),(18,23,'game_id'),(19,23,'num_decks'),(20,23,'preferred_player_id'),(21,23,'num_ais'),(22,28,'android.intent.extra.TEXT'),(23,28,'android.intent.extra.SUBJECT'),(24,28,'android.intent.extra.EMAIL'),(25,29,'sms_body'),(26,32,'android.intent.extra.EMAIL'),(27,33,'android.intent.extra.TEXT'),(28,33,'android.intent.extra.EMAIL'),(29,41,'android.intent.extra.EMAIL'),(30,43,'android.intent.extra.TEXT'),(31,43,'android.intent.extra.SUBJECT'),(32,43,'android.intent.extra.EMAIL'),(33,45,'android.intent.extra.TEXT'),(34,45,'android.intent.extra.SUBJECT'),(35,45,'android.intent.extra.EMAIL'),(36,56,'android.intent.extra.TEXT'),(37,56,'android.intent.extra.EMAIL'),(38,58,'TYPEdsada'),(39,60,'MSG'),(40,59,'sms_body'),(41,60,'TYPEdsada'),(42,63,'query'),(43,67,'url'),(44,82,'TYPEdsada'),(45,83,'MSG'),(46,83,'TYPEdsada'),(47,86,'Notify_Url_Params'),(48,86,'UrlPath'),(49,86,'ACTIVITY_FLAG'),(50,86,'isFinshClose'),(51,86,'offers_webview_tag'),(52,87,'UrlPath'),(53,87,'ACTIVITY_FLAG'),(54,87,'isFinshClose'),(55,87,'offers_webview_tag'),(56,90,'MSG'),(57,90,'TYPEdsada'),(58,91,'TYPEdsada'),(59,98,'MSG'),(60,98,'TYPEdsada'),(61,99,'TYPEdsada'),(62,123,'android.intent.extra.TEXT'),(63,123,'android.intent.extra.SUBJECT'),(64,123,'android.intent.extra.EMAIL'),(65,127,'cachedAdView'),(66,128,'command'),(67,136,'cachedAdView'),(68,146,'android.intent.extra.INTENT'),(69,147,'android.intent.extra.INTENT'),(70,148,'android.intent.extra.TITLE'),(71,148,'android.intent.extra.INTENT'),(72,149,'android.intent.extra.INTENT'),(73,150,'android.intent.extra.TITLE'),(74,150,'android.intent.extra.INTENT'),(75,151,'android.intent.extra.INTENT'),(76,152,'android.intent.extra.TITLE'),(77,152,'android.intent.extra.INTENT'),(78,153,'android.intent.extra.TITLE'),(79,153,'android.intent.extra.INTENT'),(80,155,'android.intent.extra.TEXT'),(81,155,'android.intent.extra.SUBJECT'),(82,155,'android.intent.extra.EMAIL'),(83,156,'command'),(84,157,'android.intent.extra.INTENT'),(85,158,'android.intent.extra.INTENT'),(86,159,'android.intent.extra.TITLE'),(87,159,'android.intent.extra.INTENT'),(88,160,'android.intent.extra.INTENT'),(89,161,'android.intent.extra.TITLE'),(90,161,'android.intent.extra.INTENT'),(91,162,'android.intent.extra.INTENT'),(92,163,'android.intent.extra.TITLE'),(93,163,'android.intent.extra.INTENT'),(94,164,'android.intent.extra.TITLE'),(95,164,'android.intent.extra.INTENT'),(96,166,'cachedAdView'),(97,183,'cachedAdView');
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,2),(5,4,3),(6,4,4),(7,5,1),(8,6,4),(9,6,3),(10,6,2),(11,7,7),(12,8,1),(13,9,4),(14,9,2),(15,9,3),(16,10,15),(17,11,15),(18,12,1),(19,13,16),(20,14,1),(21,15,16),(22,16,16),(23,17,16),(24,18,2),(25,18,3),(26,18,4),(27,19,1),(28,20,15),(29,21,15),(30,22,18),(31,22,17),(32,23,15),(33,24,15),(34,25,20),(35,26,20),(36,27,20),(37,28,20),(38,29,15),(39,30,15),(40,31,20),(41,32,20),(42,33,20),(43,34,20),(44,35,20),(45,36,17),(46,36,18);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,5,1),(4,5,2),(5,8,1),(6,12,1),(7,14,1),(8,19,1);
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
INSERT INTO `IFData` VALUES (1,10,'package',NULL,NULL,NULL,NULL,NULL),(2,11,'package',NULL,NULL,NULL,NULL,NULL),(3,20,'package',NULL,NULL,NULL,NULL,NULL),(4,21,'package',NULL,NULL,NULL,NULL,NULL),(5,23,'package',NULL,NULL,NULL,NULL,NULL),(6,24,'package',NULL,NULL,NULL,NULL,NULL),(7,29,'package',NULL,NULL,NULL,NULL,NULL),(8,30,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,30,'*','*'),(2,38,'(.*)','(.*)'),(3,43,'message','rfc882'),(4,50,'(.*)','(.*)'),(5,64,'*','*'),(6,76,'application','vnd.android.package-archive'),(7,78,'application','vnd.android.package-archive'),(8,79,'application','vnd.android.package-archive'),(9,80,'application','vnd.android.package-archive'),(10,81,'application','vnd.android.package-archive'),(11,88,'application','vnd.android.package-archive'),(12,89,'application','vnd.android.package-archive'),(13,92,'application','vnd.android.package-archive'),(14,94,'application','vnd.android.package-archive'),(15,95,'application','vnd.android.package-archive'),(16,96,'application','vnd.android.package-archive'),(17,97,'application','vnd.android.package-archive'),(18,114,'application','vnd.android.package-archive'),(19,116,'application','vnd.android.package-archive'),(20,117,'application','vnd.android.package-archive'),(21,118,'application','vnd.android.package-archive'),(22,119,'application','vnd.android.package-archive'),(23,123,'message','rfc822'),(24,126,'application','vnd.android.package-archive'),(25,137,'application','vnd.android.package-archive'),(26,138,'application','vnd.android.package-archive'),(27,139,'application','vnd.android.package-archive'),(28,140,'application','vnd.android.package-archive'),(29,141,'application','vnd.android.package-archive'),(30,142,'application','vnd.android.package-archive'),(31,143,'application','vnd.android.package-archive'),(32,144,'application','vnd.android.package-archive'),(33,145,'application','vnd.android.package-archive'),(34,155,'message','rfc822'),(35,165,'application','vnd.android.package-archive'),(36,170,'application','vnd.android.package-archive'),(37,171,'application','vnd.android.package-archive'),(38,172,'application','vnd.android.package-archive'),(39,173,'application','vnd.android.package-archive'),(40,174,'application','vnd.android.package-archive'),(41,175,'application','vnd.android.package-archive'),(42,176,'application','vnd.android.package-archive'),(43,177,'application','vnd.android.package-archive'),(44,178,'application','vnd.android.package-archive'),(45,184,'application','vnd.android.package-archive'),(46,186,'application','vnd.android.package-archive'),(47,187,'application','vnd.android.package-archive'),(48,188,'application','vnd.android.package-archive'),(49,189,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.tutusw.onekeyvpn'),(2,2,'com.tutusw.onekeyvpn'),(3,11,'com.tutusw.onekeyvpn'),(4,13,'com.tutusw.onekeyvpn'),(5,14,'com.tutusw.onekeyvpn'),(6,15,'com.tutusw.onekeyvpn'),(7,16,'com.tutusw.onekeyvpn'),(8,17,'com.tutusw.onekeyvpn'),(9,20,'com.safetest.tractor'),(10,21,'com.safetest.tractor'),(11,23,'com.safetest.tractor'),(12,25,'com.noshufou.android.su'),(13,26,'com.noshufou.android.su'),(14,35,'com.google.android.apps.maps'),(15,47,'(.*)'),(16,49,'(.*)'),(17,51,'com.gp.tiltmazes'),(18,53,'com.google.android.apps.maps'),(19,57,'com.google.android.apps.maps'),(20,58,'com.gp.tiltmazes'),(21,60,'com.gp.tiltmazes'),(22,62,'com.gp.tiltmazes'),(23,61,'com.google.android.apps.maps'),(24,65,'(.*)'),(25,67,'com.safetest.tractor'),(26,69,'com.google.android.apps.maps'),(27,71,'com.safetest.tractor'),(28,72,'NULL-CONSTANT'),(29,74,'com.gp.tiltmazes'),(30,75,'com.gp.tiltmazes'),(31,82,'com.gp.tiltmazes'),(32,83,'com.gp.tiltmazes'),(33,84,'com.noshufou.android.su'),(34,85,'com.noshufou.android.su'),(35,86,'com.gp.tiltmazes'),(36,87,'com.gp.tiltmazes'),(37,90,'com.gp.jewels'),(38,91,'com.gp.jewels'),(39,98,'com.gp.jewels'),(40,99,'com.gp.jewels'),(41,100,'com.gp.jewels'),(42,101,'com.gp.jewels'),(43,103,'com.gp.jewels'),(44,104,'com.gp.jewels'),(45,105,'com.noshufou.android.su'),(46,106,'com.noshufou.android.su'),(47,109,'com.atools.hosts'),(48,110,'com.noshufou.android.su'),(49,111,'com.noshufou.android.su'),(50,112,'com.atools.hosts'),(51,113,'com.atools.hosts'),(52,120,'com.android.browser'),(53,121,'com.evilsunflower.reader.evilXiaoli'),(54,122,'com.evilsunflower.reader.evilXiaoli'),(55,127,'com.evilsunflower.reader.evilXiaoli'),(56,134,'com.evilsunflower.reader.evilXiaoli'),(57,136,'com.evilsunflower.reader.evilXiaoli'),(58,154,'com.evilsunflower.reader.evilGuigu'),(59,166,'com.evilsunflower.reader.evilGuigu'),(60,180,'com.evilsunflower.reader.evilGuigu'),(61,182,'com.evilsunflower.reader.evilGuigu'),(62,183,'com.evilsunflower.reader.evilGuigu'),(63,191,'com.evilsunflower.reader.evilGuigu'),(64,193,'com.evilsunflower.reader.evilGuigu'),(65,194,'com.noshufou.android.su'),(66,195,'com.noshufou.android.su'),(67,197,'com.android.browser');
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,9,0),(3,10,0),(4,17,0),(5,19,0),(6,24,0),(7,25,0),(8,26,0),(9,34,0),(10,35,0),(11,36,0),(12,38,0),(13,38,0),(14,40,0),(15,40,0),(16,45,0),(17,49,0),(18,73,0),(19,74,0),(20,79,0),(21,79,0),(22,80,0),(23,81,0),(24,81,0),(25,82,0),(26,83,0),(27,80,0),(28,81,0),(29,84,0),(30,84,0),(31,85,0),(32,73,0),(33,86,0),(34,87,0),(35,84,0),(36,87,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,3,0,0),(2,7,0,0),(3,8,1,0),(4,8,1,0),(5,8,1,0),(6,8,1,0),(7,8,1,0),(8,8,1,0),(9,8,1,0),(10,8,1,0),(11,9,0,0),(12,12,1,0),(13,13,0,0),(14,14,0,0),(15,15,0,0),(16,17,0,0),(17,18,0,0),(18,19,1,0),(19,21,1,0),(20,22,0,0),(21,23,0,0),(22,24,1,0),(23,25,0,0),(24,26,1,0),(25,27,1,0),(26,27,1,0),(27,28,1,0),(28,28,1,0),(29,28,1,0),(30,28,1,0),(31,28,1,0),(32,28,1,0),(33,28,1,0),(34,28,1,0),(35,28,0,0),(36,28,1,0),(37,28,1,0),(38,28,1,0),(39,28,1,0),(40,28,1,0),(41,28,1,0),(42,28,1,0),(43,28,1,0),(44,29,1,0),(45,28,1,0),(46,30,1,0),(47,30,1,0),(48,28,1,0),(49,30,1,0),(50,28,1,0),(51,31,0,0),(52,28,1,0),(53,28,0,0),(54,32,1,0),(55,28,1,0),(56,28,1,0),(57,28,0,0),(58,33,0,0),(59,28,1,0),(60,33,0,0),(61,28,0,0),(62,34,0,0),(63,28,1,0),(64,28,1,0),(65,35,0,0),(66,28,1,0),(67,28,0,0),(68,28,1,0),(69,28,0,0),(70,28,1,0),(71,36,0,0),(72,37,0,0),(73,38,1,0),(74,40,1,0),(75,40,1,0),(76,42,1,0),(77,42,1,0),(78,42,1,0),(79,42,1,0),(80,42,1,0),(81,42,1,0),(82,43,0,0),(83,43,0,0),(84,44,1,0),(85,44,1,0),(86,45,0,0),(87,45,0,0),(88,46,1,0),(89,47,1,0),(90,48,0,0),(91,48,0,0),(92,49,1,0),(93,49,1,0),(94,49,1,0),(95,49,1,0),(96,49,1,0),(97,49,1,0),(98,50,0,0),(99,50,0,0),(100,51,0,0),(101,54,0,0),(102,55,1,0),(103,56,1,0),(104,56,1,0),(105,58,1,0),(106,58,1,0),(107,59,1,0),(108,60,1,0),(109,61,0,0),(110,62,1,0),(111,62,1,0),(112,63,0,0),(113,64,0,0),(114,67,1,0),(115,67,1,0),(116,67,1,0),(117,67,1,0),(118,67,1,0),(119,67,1,0),(120,69,0,0),(121,72,0,0),(122,73,0,0),(123,74,1,0),(124,76,1,0),(125,79,1,0),(126,80,1,0),(127,81,0,0),(128,82,1,0),(129,83,1,0),(130,84,1,0),(131,85,1,0),(132,88,1,0),(133,89,1,0),(134,92,0,0),(135,93,1,0),(136,94,0,0),(137,95,1,0),(138,95,1,0),(139,95,1,0),(140,95,1,0),(141,95,1,0),(142,95,1,0),(143,95,1,0),(144,95,1,0),(145,95,1,0),(146,96,1,0),(147,96,1,0),(148,96,1,0),(149,96,1,0),(150,96,1,0),(151,96,1,0),(152,96,1,0),(153,96,1,0),(154,97,0,0),(155,98,1,0),(156,100,1,0),(157,102,1,0),(158,102,1,0),(159,102,1,0),(160,102,1,0),(161,102,1,0),(162,102,1,0),(163,102,1,0),(164,102,1,0),(165,103,1,0),(166,105,0,0),(167,108,1,0),(168,109,1,0),(169,111,1,0),(170,112,1,0),(171,112,1,0),(172,112,1,0),(173,112,1,0),(174,112,1,0),(175,112,1,0),(176,112,1,0),(177,112,1,0),(178,112,1,0),(179,113,1,0),(180,114,0,0),(181,115,1,0),(182,118,0,0),(183,119,0,0),(184,121,1,0),(185,121,1,0),(186,121,1,0),(187,121,1,0),(188,121,1,0),(189,121,1,0),(190,123,1,0),(191,125,0,0),(192,126,1,0),(193,127,0,0),(194,129,1,0),(195,129,1,0),(196,130,1,0),(197,131,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=379 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,20,20,2,NULL),(2,21,23,2,NULL),(3,23,18,2,NULL),(4,18,19,2,NULL),(5,46,19,2,NULL),(6,47,19,2,NULL),(7,49,19,2,NULL),(8,168,19,2,NULL),(9,179,19,2,NULL),(10,181,19,2,NULL),(11,190,19,2,NULL),(12,192,19,2,NULL),(13,125,19,2,NULL),(14,129,19,2,NULL),(15,130,19,2,NULL),(16,133,19,2,NULL),(17,135,19,2,NULL),(18,71,23,2,NULL),(19,18,24,2,NULL),(20,46,24,2,NULL),(21,47,24,2,NULL),(22,49,24,2,NULL),(23,168,24,2,NULL),(24,179,24,2,NULL),(25,181,24,2,NULL),(26,190,24,2,NULL),(27,192,24,2,NULL),(28,125,24,2,NULL),(29,129,24,2,NULL),(30,130,24,2,NULL),(31,133,24,2,NULL),(32,135,24,2,NULL),(33,154,38,2,NULL),(34,154,40,2,NULL),(35,191,38,2,NULL),(36,191,40,2,NULL),(37,18,38,2,NULL),(38,46,38,2,NULL),(39,47,38,2,NULL),(40,49,38,2,NULL),(41,168,38,2,NULL),(42,179,38,2,NULL),(43,181,38,2,NULL),(44,190,38,2,NULL),(45,192,38,2,NULL),(46,125,38,2,NULL),(47,129,38,2,NULL),(48,130,38,2,NULL),(49,133,38,2,NULL),(50,135,38,2,NULL),(51,193,50,2,NULL),(52,193,52,2,NULL),(53,18,45,2,NULL),(54,46,45,2,NULL),(55,47,45,2,NULL),(56,49,45,2,NULL),(57,168,45,2,NULL),(58,179,45,2,NULL),(59,181,45,2,NULL),(60,190,45,2,NULL),(61,192,45,2,NULL),(62,125,45,2,NULL),(63,129,45,2,NULL),(64,130,45,2,NULL),(65,133,45,2,NULL),(66,135,45,2,NULL),(67,166,57,2,NULL),(68,166,60,2,NULL),(69,183,57,2,NULL),(70,183,60,2,NULL),(71,168,1,2,NULL),(72,179,1,2,NULL),(73,181,1,2,NULL),(74,190,1,2,NULL),(75,192,1,2,NULL),(76,168,9,2,NULL),(77,179,9,2,NULL),(78,181,9,2,NULL),(79,190,9,2,NULL),(80,192,9,2,NULL),(81,168,25,2,NULL),(82,179,25,2,NULL),(83,181,25,2,NULL),(84,190,25,2,NULL),(85,192,25,2,NULL),(86,168,10,2,NULL),(87,179,10,2,NULL),(88,181,10,2,NULL),(89,190,10,2,NULL),(90,192,10,2,NULL),(91,168,17,2,NULL),(92,179,17,2,NULL),(93,181,17,2,NULL),(94,190,17,2,NULL),(95,192,17,2,NULL),(96,168,26,2,NULL),(97,179,26,2,NULL),(98,181,26,2,NULL),(99,190,26,2,NULL),(100,192,26,2,NULL),(101,168,34,2,NULL),(102,179,34,2,NULL),(103,181,34,2,NULL),(104,190,34,2,NULL),(105,192,34,2,NULL),(106,168,73,2,NULL),(107,179,73,2,NULL),(108,181,73,2,NULL),(109,190,73,2,NULL),(110,192,73,2,NULL),(111,168,84,2,NULL),(112,179,84,2,NULL),(113,181,84,2,NULL),(114,190,84,2,NULL),(115,192,84,2,NULL),(116,168,85,2,NULL),(117,179,85,2,NULL),(118,181,85,2,NULL),(119,190,85,2,NULL),(120,192,85,2,NULL),(121,168,86,2,NULL),(122,179,86,2,NULL),(123,181,86,2,NULL),(124,190,86,2,NULL),(125,192,86,2,NULL),(126,168,87,2,NULL),(127,179,87,2,NULL),(128,181,87,2,NULL),(129,190,87,2,NULL),(130,192,87,2,NULL),(131,168,40,2,NULL),(132,179,40,2,NULL),(133,181,40,2,NULL),(134,190,40,2,NULL),(135,192,40,2,NULL),(136,168,49,2,NULL),(137,179,49,2,NULL),(138,181,49,2,NULL),(139,190,49,2,NULL),(140,192,49,2,NULL),(141,168,80,2,NULL),(142,179,80,2,NULL),(143,181,80,2,NULL),(144,190,80,2,NULL),(145,192,80,2,NULL),(146,168,81,2,NULL),(147,179,81,2,NULL),(148,181,81,2,NULL),(149,190,81,2,NULL),(150,192,81,2,NULL),(151,168,82,2,NULL),(152,179,82,2,NULL),(153,181,82,2,NULL),(154,190,82,2,NULL),(155,192,82,2,NULL),(156,168,83,2,NULL),(157,179,83,2,NULL),(158,181,83,2,NULL),(159,190,83,2,NULL),(160,192,83,2,NULL),(161,168,74,2,NULL),(162,179,74,2,NULL),(163,181,74,2,NULL),(164,190,74,2,NULL),(165,192,74,2,NULL),(166,182,71,2,NULL),(167,18,73,2,NULL),(168,46,73,2,NULL),(169,47,73,2,NULL),(170,49,73,2,NULL),(171,125,73,2,NULL),(172,129,73,2,NULL),(173,130,73,2,NULL),(174,133,73,2,NULL),(175,135,73,2,NULL),(176,18,84,2,NULL),(177,46,84,2,NULL),(178,47,84,2,NULL),(179,49,84,2,NULL),(180,125,84,2,NULL),(181,129,84,2,NULL),(182,130,84,2,NULL),(183,133,84,2,NULL),(184,135,84,2,NULL),(185,18,85,2,NULL),(186,46,85,2,NULL),(187,47,85,2,NULL),(188,49,85,2,NULL),(189,125,85,2,NULL),(190,129,85,2,NULL),(191,130,85,2,NULL),(192,133,85,2,NULL),(193,135,85,2,NULL),(194,18,86,2,NULL),(195,46,86,2,NULL),(196,47,86,2,NULL),(197,49,86,2,NULL),(198,125,86,2,NULL),(199,129,86,2,NULL),(200,130,86,2,NULL),(201,133,86,2,NULL),(202,135,86,2,NULL),(203,18,87,2,NULL),(204,46,87,2,NULL),(205,47,87,2,NULL),(206,49,87,2,NULL),(207,125,87,2,NULL),(208,129,87,2,NULL),(209,130,87,2,NULL),(210,133,87,2,NULL),(211,135,87,2,NULL),(212,62,11,2,NULL),(213,18,10,2,NULL),(214,46,10,2,NULL),(215,47,10,2,NULL),(216,49,10,2,NULL),(217,125,10,2,NULL),(218,129,10,2,NULL),(219,130,10,2,NULL),(220,133,10,2,NULL),(221,135,10,2,NULL),(222,46,1,2,NULL),(223,47,1,2,NULL),(224,49,1,2,NULL),(225,46,9,2,NULL),(226,47,9,2,NULL),(227,49,9,2,NULL),(228,46,25,2,NULL),(229,47,25,2,NULL),(230,49,25,2,NULL),(231,46,17,2,NULL),(232,47,17,2,NULL),(233,49,17,2,NULL),(234,46,26,2,NULL),(235,47,26,2,NULL),(236,49,26,2,NULL),(237,46,34,2,NULL),(238,47,34,2,NULL),(239,49,34,2,NULL),(240,46,40,2,NULL),(241,47,40,2,NULL),(242,49,40,2,NULL),(243,46,49,2,NULL),(244,47,49,2,NULL),(245,49,49,2,NULL),(246,46,80,2,NULL),(247,47,80,2,NULL),(248,49,80,2,NULL),(249,46,81,2,NULL),(250,47,81,2,NULL),(251,49,81,2,NULL),(252,46,82,2,NULL),(253,47,82,2,NULL),(254,49,82,2,NULL),(255,46,83,2,NULL),(256,47,83,2,NULL),(257,49,83,2,NULL),(258,46,74,2,NULL),(259,47,74,2,NULL),(260,49,74,2,NULL),(261,58,12,2,NULL),(262,58,32,2,NULL),(263,60,12,2,NULL),(264,60,32,2,NULL),(265,82,12,2,NULL),(266,82,32,2,NULL),(267,83,12,2,NULL),(268,83,32,2,NULL),(269,51,16,2,NULL),(270,51,33,2,NULL),(271,18,17,2,NULL),(272,125,17,2,NULL),(273,129,17,2,NULL),(274,130,17,2,NULL),(275,133,17,2,NULL),(276,135,17,2,NULL),(277,121,38,2,NULL),(278,121,40,2,NULL),(279,122,38,2,NULL),(280,122,40,2,NULL),(281,18,40,2,NULL),(282,125,40,2,NULL),(283,129,40,2,NULL),(284,130,40,2,NULL),(285,133,40,2,NULL),(286,135,40,2,NULL),(287,134,50,2,NULL),(288,134,52,2,NULL),(289,18,49,2,NULL),(290,125,49,2,NULL),(291,129,49,2,NULL),(292,130,49,2,NULL),(293,133,49,2,NULL),(294,135,49,2,NULL),(295,127,57,2,NULL),(296,127,60,2,NULL),(297,136,57,2,NULL),(298,136,60,2,NULL),(299,125,1,2,NULL),(300,129,1,2,NULL),(301,130,1,2,NULL),(302,133,1,2,NULL),(303,135,1,2,NULL),(304,125,9,2,NULL),(305,129,9,2,NULL),(306,130,9,2,NULL),(307,133,9,2,NULL),(308,135,9,2,NULL),(309,125,25,2,NULL),(310,129,25,2,NULL),(311,130,25,2,NULL),(312,133,25,2,NULL),(313,135,25,2,NULL),(314,125,26,2,NULL),(315,129,26,2,NULL),(316,130,26,2,NULL),(317,133,26,2,NULL),(318,135,26,2,NULL),(319,125,34,2,NULL),(320,129,34,2,NULL),(321,130,34,2,NULL),(322,133,34,2,NULL),(323,135,34,2,NULL),(324,125,80,2,NULL),(325,129,80,2,NULL),(326,130,80,2,NULL),(327,133,80,2,NULL),(328,135,80,2,NULL),(329,125,81,2,NULL),(330,129,81,2,NULL),(331,130,81,2,NULL),(332,133,81,2,NULL),(333,135,81,2,NULL),(334,125,82,2,NULL),(335,129,82,2,NULL),(336,130,82,2,NULL),(337,133,82,2,NULL),(338,135,82,2,NULL),(339,125,83,2,NULL),(340,129,83,2,NULL),(341,130,83,2,NULL),(342,133,83,2,NULL),(343,135,83,2,NULL),(344,125,74,2,NULL),(345,129,74,2,NULL),(346,130,74,2,NULL),(347,133,74,2,NULL),(348,135,74,2,NULL),(349,18,80,2,NULL),(350,18,81,2,NULL),(351,18,82,2,NULL),(352,18,83,2,NULL),(353,109,75,2,NULL),(354,112,76,2,NULL),(355,113,78,2,NULL),(356,18,74,2,NULL),(357,18,26,2,NULL),(358,100,26,2,NULL),(359,90,12,2,NULL),(360,90,32,2,NULL),(361,91,12,2,NULL),(362,91,32,2,NULL),(363,98,12,2,NULL),(364,98,32,2,NULL),(365,99,12,2,NULL),(366,99,32,2,NULL),(367,101,16,2,NULL),(368,101,33,2,NULL),(369,18,34,2,NULL),(370,1,8,2,NULL),(371,2,2,2,NULL),(372,13,8,2,NULL),(373,18,1,2,NULL),(374,14,8,2,NULL),(375,15,8,2,NULL),(376,18,9,2,NULL),(377,18,25,2,NULL),(378,11,8,2,NULL);
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
INSERT INTO `PermissionStrings` VALUES (17,'android.permission.ACCESS_COARSE_LOCATION'),(10,'android.permission.ACCESS_FINE_LOCATION'),(11,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(13,'android.permission.ACCESS_NETWORK_STATE'),(8,'android.permission.ACCESS_WIFI_STATE'),(3,'android.permission.BROADCAST_STICKY'),(9,'android.permission.CHANGE_WIFI_STATE'),(6,'android.permission.GET_TASKS'),(2,'android.permission.INTERNET'),(5,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(15,'android.permission.READ_SMS'),(4,'android.permission.RECEIVE_BOOT_COMPLETED'),(18,'android.permission.RECORD_AUDIO'),(12,'android.permission.VIBRATE'),(14,'android.permission.WAKE_LOCK'),(7,'android.permission.WRITE_EXTERNAL_STORAGE'),(16,'android.permission.WRITE_SMS'),(19,'com.android.browser.permission.READ_HISTORY_BOOKMARKS');
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
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'http://sites.google.com/site/tractorandroid/manual-chinese',NULL,NULL,NULL),(2,NULL,NULL,'http://sites.google.com/site/tractorandroid/manual-english',NULL,NULL,NULL),(3,NULL,NULL,'http://sites.google.com/site/tractorandroid/manual-chinese',NULL,NULL,NULL),(4,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(5,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(6,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(7,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(8,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(9,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(10,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(11,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(12,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(15,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT((.*))&z=22',NULL,NULL,NULL),(21,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'http://maps.google.com/maps?q=(.*)((.*))&z=22',NULL,NULL,NULL),(24,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(25,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT()&z=22',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(28,NULL,NULL,'http://maps.google.com/maps?q=(.*)()&z=22',NULL,NULL,NULL),(29,NULL,NULL,'http://sites.google.com/site/tractorandroid/manual-english',NULL,NULL,NULL),(30,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(31,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(32,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(33,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(34,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(35,NULL,NULL,'file://',NULL,NULL,NULL),(36,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(37,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(38,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(39,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(40,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(41,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(42,NULL,NULL,'file://',NULL,NULL,NULL),(43,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(44,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(45,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(46,NULL,NULL,'',NULL,NULL,NULL),(47,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(48,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(49,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(50,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(51,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(52,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(53,NULL,NULL,'file://',NULL,NULL,NULL),(54,NULL,NULL,'(.*)',NULL,NULL,NULL),(55,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(56,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(57,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(58,NULL,NULL,'content://mms/',NULL,NULL,NULL),(59,NULL,NULL,'content://mms-sms/threadID',NULL,NULL,NULL),(60,NULL,NULL,'content://mms/',NULL,NULL,NULL),(61,NULL,NULL,'(.*)',NULL,NULL,NULL),(62,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(63,NULL,NULL,'(.*)',NULL,NULL,NULL),(64,NULL,NULL,'(.*)',NULL,NULL,NULL),(65,NULL,NULL,'(.*)',NULL,NULL,NULL),(66,NULL,NULL,'(.*)',NULL,NULL,NULL),(67,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(68,NULL,NULL,'(.*)',NULL,NULL,NULL),(69,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(70,NULL,NULL,'content://mms/inbox',NULL,NULL,NULL),(71,NULL,NULL,'content://mms/(.*)/addr',NULL,NULL,NULL),(72,NULL,NULL,'(.*)',NULL,NULL,NULL),(73,NULL,NULL,'(.*)',NULL,NULL,NULL),(74,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(75,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(76,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(77,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(78,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(79,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(80,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(81,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(82,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL),(83,NULL,NULL,'content://mms/',NULL,NULL,NULL),(84,NULL,NULL,'(.*)',NULL,NULL,NULL),(85,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(86,NULL,NULL,'content://mms/',NULL,NULL,NULL),(87,NULL,NULL,'content://mms-sms/threadID',NULL,NULL,NULL),(88,NULL,NULL,'(.*)',NULL,NULL,NULL),(89,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(90,NULL,NULL,'(.*)',NULL,NULL,NULL),(91,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(92,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(93,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(94,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(95,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(96,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(97,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(98,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(99,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(100,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL),(101,NULL,NULL,'(.*)',NULL,NULL,NULL),(102,NULL,NULL,'(.*)',NULL,NULL,NULL),(103,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(104,NULL,NULL,'content://mms/inbox',NULL,NULL,NULL),(105,NULL,NULL,'content://mms/(.*)/addr',NULL,NULL,NULL),(106,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(107,NULL,NULL,'(.*)',NULL,NULL,NULL),(108,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(109,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(110,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(111,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(112,NULL,NULL,'file://',NULL,NULL,NULL),(113,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(114,NULL,NULL,'(.*)',NULL,NULL,NULL),(115,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(116,NULL,NULL,'(.*)',NULL,NULL,NULL),(117,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(118,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,41,30),(2,52,43),(3,57,44),(4,65,47),(5,66,48),(6,70,55),(7,71,56),(8,77,58),(9,77,59),(10,78,60),(11,86,66),(12,87,67),(13,90,69),(14,90,70),(15,90,71),(16,99,83),(17,101,84),(18,104,86),(19,104,87),(20,106,89),(21,116,103),(22,116,104),(23,116,105),(24,117,106),(25,122,113),(26,124,115),(27,128,117);
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,1),(5,2,2),(6,2,4),(7,2,5),(8,2,6),(9,2,7),(10,2,8),(11,2,9),(12,2,10),(13,2,11),(14,2,12),(15,2,13),(16,2,14),(17,3,17),(18,3,16),(19,3,1),(20,3,2),(21,3,8),(22,3,13),(23,3,15),(24,4,1),(25,4,2),(26,4,4),(27,4,5),(28,4,7),(29,4,8),(30,4,9),(31,4,10),(32,4,11),(33,4,12),(34,4,13),(35,4,14),(36,4,17),(37,4,18),(38,5,17),(39,5,16),(40,5,1),(41,5,19),(42,5,2),(43,5,7),(44,5,8),(45,6,17),(46,5,10),(47,6,16),(48,5,13),(49,6,1),(50,5,14),(51,6,19),(52,5,15),(53,6,2),(54,6,7),(55,6,8),(56,6,10),(57,6,13),(58,6,14),(59,6,15),(60,7,17),(61,7,1),(62,7,2),(63,7,8),(64,7,13);
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

-- Dump completed on 2015-10-12  3:31:50
