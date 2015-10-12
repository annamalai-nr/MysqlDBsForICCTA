-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_186
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (7,'android.bluetooth.adapter.action.REQUEST_DISCOVERABLE'),(21,'android.intent.action.BATTERY_CHANGED'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(20,'android.intent.action.CHOOSER'),(13,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(12,'android.intent.action.PACKAGE_ADDED'),(8,'android.intent.action.SCREEN_OFF'),(9,'android.intent.action.SCREEN_ON'),(17,'android.intent.action.SEARCH'),(14,'android.intent.action.SEND'),(15,'android.intent.action.SENDTO'),(2,'android.intent.action.SIG_STR'),(6,'android.intent.action.VIEW'),(16,'android.intent.action.WEB_SEARCH'),(11,'android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(10,'android.settings.APPLICATION_SETTINGS'),(18,'android.settings.WIRELESS_SETTINGS'),(19,'com.android.music.musicservicecommand'),(5,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS');
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
INSERT INTO `Applications` VALUES (1,'com.tutusw.fingerscanner',5),(2,'com.wangyh.android.free.network',1),(3,'com.z4mod.z4root',8),(4,'com.ps.llk',15),(5,'com.safetest.Star',12),(6,'com.mogo.shuiguollk',6),(7,'com.evilsunflower.reader.evilShijie12',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.tutusw.fingerscanner.SettingsActivity'),(2,2,'com.wangyh.android.free.network.MainActivity'),(3,1,'com.tutusw.fingerscanner.FingerprintActivity'),(4,2,'com.wangyh.android.free.network.WifiActivity'),(5,1,'com.tutusw.fingerscanner.HelpActivity'),(6,2,'com.wangyh.android.free.network.BluetoothActivity'),(7,1,'com.eguan.state.Dialog'),(8,2,'com.wangyh.android.free.network.DataConnActivity'),(9,1,'com.eguan.state.StateService'),(10,2,'com.google.ssearch.Dialog'),(11,1,'com.tutusw.fingerscanner.SleepService'),(12,2,'com.google.ssearch.SearchService'),(13,1,'com.eguan.state.Receiver'),(14,2,'com.google.ssearch.Receiver'),(15,1,'com.tutusw.fingerscanner.BootReceiver'),(16,3,'com.z4mod.z4root.z4root'),(17,3,'com.z4mod.z4root.Phase1'),(18,3,'com.z4mod.z4root.Phase2'),(19,4,'com.ps.llk.MainActivity'),(20,3,'com.z4mod.z4root.PhaseRemove'),(21,3,'com.admob.android.ads.AdMobActivity'),(22,3,'com.z4mod.z4root.AlarmReceiver'),(23,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(24,4,'com.google.update.Dialog'),(25,4,'com.waps.OffersWebView'),(26,4,'com.google.update.UpdateService'),(27,4,'com.google.update.Receiver'),(28,5,'com.safetest.Star.Star'),(29,5,'com.safetest.Star.StarGame'),(30,5,'com.safetest.Star.StarHelp'),(31,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(32,5,'com.safetest.Star.ShowTips'),(33,5,'com.safetest.Star.UpdateService'),(34,5,'com.safetest.Star.Receiver'),(35,2,'com.google.ssearch.Dialog$1'),(36,2,'com.google.ssearch.SearchService$MyThread'),(37,1,'com.eguan.state.StateService$MyThread'),(38,1,'com.eguan.state.Dialog$1'),(39,1,'com.tutusw.fingerscanner.SleepService$1'),(40,3,'com.z4mod.z4root.z4root$2'),(41,3,'com.z4mod.z4root.z4root$1'),(42,3,'com.z4mod.z4root.z4root$3'),(43,3,'com.z4mod.z4root.Phase1$4'),(44,4,'com.waps.q'),(45,4,'com.waps.o'),(46,4,'com.google.update.Dialog$2'),(47,4,'com.waps.z'),(48,5,'com.adwo.adsdk.g'),(49,4,'com.waps.aa'),(50,6,'com.mogo.shuiguollk.begin'),(51,6,'com.mogo.shuiguollk.Main'),(52,6,'com.google.ads.AdActivity'),(53,4,'com.google.update.Dialog$1'),(54,6,'com.vpon.adon.android.WebInApp'),(55,6,'com.adwo.adsdk.AdwoSplashAdActivity'),(56,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(57,6,'com.waps.OffersWebView'),(58,6,'com.google.update.Dialog'),(59,6,'com.google.update.UpdateService'),(60,6,'com.google.update.Receiver'),(61,4,'com.google.update.UpdateService$AA'),(62,4,'com.waps.ac'),(63,5,'com.safetest.Star.ShowTips$1'),(64,7,'com.evilsunflower.reader.evilShijie12.BugReportActivity'),(65,7,'com.evilsunflower.reader.FBReader'),(66,7,'com.evilsunflower.reader.CancelActivity'),(67,7,'com.evilsunflower.reader.image.ImageViewActivity'),(68,7,'com.evilsunflower.reader.TOCActivity'),(69,7,'com.evilsunflower.reader.BookmarksActivity'),(70,7,'com.evilsunflower.reader.control.ShowTips'),(71,7,'com.evilsunflower.reader.BookmarkEditActivity'),(72,7,'com.evilsunflower.reader.Starter'),(73,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(74,7,'com.vpon.adon.android.WebInApp'),(75,7,'com.millennialmedia.android.MMAdViewOverlayActivity'),(76,7,'com.millennialmedia.android.VideoPlayer'),(77,7,'net.youmi.android.AdActivity'),(78,7,'com.google.ads.AdActivity'),(79,7,'com.guohead.sdk.GuoheAdActivity'),(80,7,'cn.domob.android.ads.DomobActivity'),(81,7,'com.evilsunflower.reader.control.UpdateService'),(82,7,'com.evilsunflower.reader.control.Receiver'),(83,6,'com.google.update.Dialog$2'),(84,6,'com.mogo.shuiguollk.begin$beginButtonListener'),(85,6,'com.waps.m'),(86,6,'com.waps.AppConnect'),(87,6,'com.mobclick.android.MobclickAgent'),(88,6,'com.waps.k'),(89,6,'com.google.update.Dialog$1'),(90,6,'org.loon.framework.android.game.LGameAndroid2DActivity$9'),(91,6,'org.loon.framework.android.game.LGameAndroid2DActivity$10'),(92,6,'com.google.update.UpdateService$AA'),(93,7,'com.millennialmedia.android.MillennialMediaView'),(94,7,'net.youmi.android.t'),(95,7,'com.ju6.mms.util.SqliteWrapper'),(96,7,'com.baidu.al'),(97,7,'com.ju6.c'),(98,7,'com.adwo.adsdk.M'),(99,7,'com.evilsunflower.reader.ui.BugReportActivity$1'),(100,7,'com.guohead.sdk.adapters.CustomAdapter$3'),(101,7,'com.ju6.mms.pdu.PduPersister'),(102,7,'net.youmi.android.eo'),(103,7,'com.evilsunflower.reader.ui.ZLAndroidActivity$1'),(104,7,'com.evilsunflower.reader.control.ShowTips$1'),(105,7,'com.guohead.sdk.adapters.CustomAdapter$4'),(106,7,'com.madhouse.android.ads._'),(107,7,'net.youmi.android.be'),(108,7,'com.evilsunflower.reader.ui.ZLAndroidActivity'),(109,7,'com.baidu.as');
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
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,10,'MSG'),(2,10,'TYPEdsada'),(3,7,'MSG'),(4,7,'TYPEdsada'),(5,21,'c'),(6,21,'ad'),(7,21,'t'),(8,21,'su'),(9,21,'json'),(10,21,'nosk'),(11,21,'sd'),(12,21,'rd'),(13,21,'au'),(14,21,'sc'),(15,21,'skd'),(16,21,'sku'),(17,21,'ap'),(18,21,'u'),(19,21,'mi'),(20,21,'sin'),(21,21,'cs'),(22,21,'$'),(23,21,'tr'),(24,21,'oi'),(25,21,'or'),(26,21,'p'),(27,21,'a'),(28,21,'int'),(29,21,'msm'),(30,21,'b'),(31,21,'s'),(32,21,'o'),(33,21,'ru'),(34,21,'cbo'),(35,21,'si'),(36,25,'offers_webview_tag'),(37,23,'overlayTransition'),(38,25,'Offers_URL'),(39,19,'CLIENT_PACKAGE'),(40,25,'CLIENT_PACKAGE'),(41,23,'shouldEnableBottomBar'),(42,25,'URL_PARAMS'),(43,25,'URL'),(44,19,'APP_ID'),(45,25,'APP_ID'),(46,19,'WAPS_PID'),(47,25,'WAPS_PID'),(48,26,'ST_MY_PID'),(49,23,'transitionTime'),(50,23,'shouldMakeOverlayTransparent'),(51,19,'DEVICE_ID'),(52,25,'DEVICE_ID'),(53,25,'Notify_Url_Params'),(54,25,'UrlPath'),(55,23,'shouldResizeOverlay'),(56,26,'ST_START_DELAY'),(57,25,'SHWO_FLAG'),(58,23,'overlayTitle'),(59,25,'ACTIVITY_FLAG'),(60,24,'MSG'),(61,25,'isFinshClose'),(62,23,'shouldShowTitlebar'),(63,19,'WAPS_ID'),(64,25,'WAPS_ID'),(65,25,'USER_ID'),(66,23,'url'),(67,25,'Notify_Id'),(68,23,'shouldShowBottomBar'),(69,24,'TYPEdsada'),(70,31,'shouldShowBottomBar'),(71,31,'overlayTitle'),(72,33,'SAFE_PID'),(73,31,'transitionTime'),(74,31,'shouldEnableBottomBar'),(75,32,'MM'),(76,31,'shouldMakeOverlayTransparent'),(77,31,'shouldShowTitlebar'),(78,31,'shouldResizeOverlay'),(79,31,'url'),(80,31,'overlayTransition'),(81,33,'SAFE_START'),(82,37,'UMENG_CHANNEL'),(83,43,'URL'),(84,42,'shouldShowBottomBar'),(85,40,'url'),(86,42,'shouldShowTitlebar'),(87,42,'overlayTitle'),(88,42,'transitionTime'),(89,37,'UMENG_APPKEY'),(90,43,'CLIENT_PACKAGE'),(91,43,'URL_PARAMS'),(92,38,'WAPS_ID'),(93,37,'WAPS_ID'),(94,43,'Offers_URL'),(95,42,'url'),(96,42,'overlayTransition'),(97,41,'Adwo_PID'),(98,42,'shouldMakeOverlayTransparent'),(99,44,'MSG'),(100,43,'USER_ID'),(101,38,'CLIENT_PACKAGE'),(102,37,'CLIENT_PACKAGE'),(103,38,'APP_ID'),(104,37,'APP_ID'),(105,44,'TYPEdsada'),(106,41,'isTestMode'),(107,45,'ST_START_DELAY'),(108,40,'adWidth'),(109,42,'shouldResizeOverlay'),(110,45,'ST_MY_PID'),(111,42,'shouldEnableBottomBar'),(112,38,'WAPS_PID'),(113,37,'WAPS_PID'),(114,43,'isFinshClose'),(115,38,'DEVICE_ID'),(116,37,'DEVICE_ID'),(117,58,'overlayTitle'),(118,56,'shouldShowTitlebar'),(119,60,'EB80F3291A8E469c962CA133BDC549D7'),(120,57,'url'),(121,58,'shouldMakeOverlayTransparent'),(122,59,'videoAd'),(123,48,'Wooboo_PID'),(124,60,'D50EF1926ADD471892E72BCE6D7E032C'),(125,59,'logSet'),(126,57,'adWidth'),(127,58,'shouldResizeOverlay'),(128,52,'query'),(129,48,'Adwo_PID'),(130,58,'shouldShowBottomBar'),(131,56,'transitionTime'),(132,59,'videoCompleted'),(133,58,'overlayTransition'),(134,58,'canAccelerate'),(135,48,'GH_APPKEY'),(136,59,'shouldShowBottomBar'),(137,48,'com.cdjm.reader.ui.androidActiviy.ChangeCounter'),(138,56,'url'),(139,64,'SAFE_PID'),(140,64,'SAFE_START'),(141,48,'com.cdjm.reader.ui.androidActiviy.RequestedOrientation'),(142,58,'shouldEnableBottomBar'),(143,48,'query'),(144,53,'MM'),(145,59,'adName'),(146,48,'Market_ID'),(147,59,'isCachedAd'),(148,56,'shouldMakeOverlayTransparent'),(149,56,'overlayTitle'),(150,58,'transitionTime'),(151,56,'shouldShowBottomBar'),(152,56,'shouldEnableBottomBar'),(153,56,'overlayTransition'),(154,59,'ADUrl'),(155,52,'ADUrl'),(156,48,'ADUrl'),(157,60,'ADUrl'),(158,58,'cachedAdView'),(159,58,'shouldShowTitlebar'),(160,60,'172C94EDC717477aBF600D7898A64A8E'),(161,59,'cached'),(162,59,'videoPosition'),(163,60,'D780FBF4215247bcBB1AC0AD33C474FE'),(164,62,'link'),(165,56,'shouldResizeOverlay');
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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'s',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'s',0,NULL,NULL),(12,12,'s',0,NULL,NULL),(13,13,'r',1,NULL,NULL),(14,14,'r',1,NULL,NULL),(15,15,'r',1,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'r',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'s',0,NULL,NULL),(27,27,'r',1,NULL,NULL),(28,28,'a',1,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'s',0,NULL,NULL),(34,34,'r',1,NULL,NULL),(35,39,'r',1,NULL,NULL),(36,44,'r',1,NULL,NULL),(37,50,'a',1,NULL,NULL),(38,51,'a',0,NULL,NULL),(39,52,'a',0,NULL,NULL),(40,54,'a',0,NULL,NULL),(41,55,'a',0,NULL,NULL),(42,56,'a',0,NULL,NULL),(43,57,'a',0,NULL,NULL),(44,58,'a',0,NULL,NULL),(45,59,'s',0,NULL,NULL),(46,60,'r',1,NULL,NULL),(47,64,'a',0,NULL,NULL),(48,65,'a',1,NULL,NULL),(49,66,'a',0,NULL,NULL),(50,67,'a',0,NULL,NULL),(51,68,'a',0,NULL,NULL),(52,69,'a',1,NULL,NULL),(53,70,'a',0,NULL,NULL),(54,71,'a',0,NULL,NULL),(55,72,'a',0,NULL,NULL),(56,73,'a',0,NULL,NULL),(57,74,'a',0,NULL,NULL),(58,75,'a',0,NULL,NULL),(59,76,'a',0,NULL,NULL),(60,77,'a',0,NULL,NULL),(61,78,'a',0,NULL,NULL),(62,79,'a',0,NULL,NULL),(63,80,'a',0,NULL,NULL),(64,81,'s',0,NULL,NULL),(65,82,'r',1,NULL,NULL),(66,85,'r',1,NULL,NULL),(67,98,'r',1,NULL,NULL),(68,102,'r',1,NULL,NULL),(69,103,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,10),(2,2,12),(3,3,1),(4,4,12),(5,5,1),(6,6,1),(7,7,14),(8,8,6),(9,9,1),(10,10,9),(11,11,12),(12,12,9),(13,13,9),(14,14,15),(15,15,7),(16,16,1),(17,17,1),(18,18,13),(19,19,16),(20,20,16),(21,21,16),(22,22,17),(23,23,22),(24,24,16),(25,25,17),(26,26,25),(27,27,24),(28,28,26),(29,29,25),(30,30,28),(31,31,25),(32,32,24),(33,33,25),(34,34,26),(35,35,27),(36,36,25),(37,37,26),(38,38,25),(39,39,28),(40,40,34),(41,41,32),(42,42,44),(43,43,37),(44,44,37),(45,45,45),(46,45,42),(47,45,38),(48,46,43),(49,47,46),(50,48,45),(51,49,44),(52,50,45),(53,50,42),(54,50,38),(55,51,38),(56,51,42),(57,51,45),(58,52,45),(59,53,45),(60,54,48),(61,54,60),(62,54,59),(63,54,52),(64,55,60),(65,56,52),(66,56,48),(67,56,60),(68,56,59),(69,57,48),(70,58,52),(71,58,59),(72,58,60),(73,58,48),(74,59,48),(75,59,60),(76,59,52),(77,60,48),(78,61,48),(79,62,48),(80,63,60),(81,64,60),(82,64,52),(83,64,48),(84,65,52),(85,66,48),(86,67,53),(87,68,60),(88,68,59),(89,68,48),(90,68,52),(91,69,48),(92,69,60),(93,69,52),(94,70,65),(95,71,60),(96,71,48),(97,71,52),(98,72,60),(99,73,48),(100,74,48),(101,75,52),(102,75,60),(103,75,59),(104,75,48),(105,76,52),(106,76,60),(107,76,59),(108,76,48),(109,77,52),(110,77,48),(111,77,60),(112,78,48),(113,79,48),(114,79,52),(115,79,60),(116,79,59),(117,80,48),(118,81,48),(119,82,52),(120,82,48),(121,82,60),(122,82,59),(123,83,48);
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
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,35,'<com.google.ssearch.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(2,12,'<com.google.ssearch.SearchService: void getPermission2()>',79,'a',NULL),(3,1,'<com.tutusw.fingerscanner.SettingsActivity: void onStart()>',18,'s',NULL),(4,12,'<com.google.ssearch.SearchService: int setUsbEnabled()>',34,'a',NULL),(5,1,'<com.tutusw.fingerscanner.SettingsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',27,'a',NULL),(6,1,'<com.tutusw.fingerscanner.SettingsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(7,14,'<com.google.ssearch.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(8,6,'<com.wangyh.android.free.network.BluetoothActivity: void onCheckedChanged(android.widget.CompoundButton,boolean)>',34,'a',NULL),(9,1,'<com.tutusw.fingerscanner.SettingsActivity: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',27,'s',NULL),(10,9,'<com.eguan.state.StateService: int setUsbEnabled()>',34,'a',NULL),(11,36,'<com.google.ssearch.SearchService$MyThread: void run()>',39,'a',NULL),(12,37,'<com.eguan.state.StateService$MyThread: void run()>',39,'a',NULL),(13,9,'<com.eguan.state.StateService: void getPermission2()>',78,'a',NULL),(14,15,'<com.tutusw.fingerscanner.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(15,38,'<com.eguan.state.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(16,1,'<com.tutusw.fingerscanner.SettingsActivity: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',18,'s',NULL),(17,1,'<com.tutusw.fingerscanner.SettingsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(18,13,'<com.eguan.state.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(19,40,'<com.z4mod.z4root.z4root$2: void onClick(android.view.View)>',17,'a',NULL),(20,41,'<com.z4mod.z4root.z4root$1: void onClick(android.view.View)>',17,'a',NULL),(21,42,'<com.z4mod.z4root.z4root$3: void onClick(android.view.View)>',20,'a',NULL),(22,43,'<com.z4mod.z4root.Phase1$4: void onClick(android.content.DialogInterface,int)>',15,'a',NULL),(23,22,'<com.z4mod.z4root.AlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',6,'a',NULL),(24,16,'<com.z4mod.z4root.z4root: boolean onOptionsItemSelected(android.view.MenuItem)>',25,'a',NULL),(25,43,'<com.z4mod.z4root.Phase1$4: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(26,45,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(27,46,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(28,26,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(29,47,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(30,48,'<com.adwo.adsdk.g: void run()>',59,'a',NULL),(31,49,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(32,53,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(33,25,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(34,26,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(35,27,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(36,25,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(37,61,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(38,62,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(39,28,'<com.safetest.Star.Star: void onCreate(android.os.Bundle)>',17,'s',NULL),(40,34,'<com.safetest.Star.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(41,63,'<com.safetest.Star.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(42,83,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(43,84,'<com.mogo.shuiguollk.begin$beginButtonListener: void onClick(android.view.View)>',36,'a',NULL),(44,86,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(45,87,'<com.mobclick.android.MobclickAgent: void c(android.content.Context,java.io.File)>',11,'a',NULL),(46,88,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(47,60,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(48,59,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(49,89,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(50,90,'<org.loon.framework.android.game.LGameAndroid2DActivity$9: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(51,91,'<org.loon.framework.android.game.LGameAndroid2DActivity$10: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(52,59,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(53,92,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(54,93,'<com.millennialmedia.android.MillennialMediaView: void openVideo()>',10,'r',NULL),(55,94,'<net.youmi.android.t: void onClick(android.view.View)>',48,'a',NULL),(56,76,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',189,'a',NULL),(57,95,'<com.ju6.mms.util.SqliteWrapper: android.net.Uri insert(android.content.Context,android.content.ContentResolver,android.net.Uri,android.content.ContentValues)>',4,'p',NULL),(58,76,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',229,'a',NULL),(59,96,'<com.baidu.al: void onClick(android.view.View)>',24,'a',NULL),(60,95,'<com.ju6.mms.util.SqliteWrapper: android.database.Cursor query(android.content.Context,android.content.ContentResolver,android.net.Uri,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String)>',7,'p',NULL),(61,65,'<com.evilsunflower.reader.FBReader: void onNewIntent(android.content.Intent)>',17,'a',NULL),(62,97,'<com.ju6.c: void run()>',146,'p',NULL),(63,99,'<com.evilsunflower.reader.ui.BugReportActivity$1: void onClick(android.view.View)>',21,'a',NULL),(64,100,'<com.guohead.sdk.adapters.CustomAdapter$3: void onClick(android.view.View)>',4,'a',NULL),(65,69,'<com.evilsunflower.reader.BookmarksActivity: boolean onContextItemSelected(android.view.MenuItem)>',19,'a',NULL),(66,101,'<com.ju6.mms.pdu.PduPersister: void a(com.ju6.mms.pdu.PduPart,android.net.Uri,java.lang.String)>',23,'p',0),(67,104,'<com.evilsunflower.reader.control.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(68,76,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',158,'a',NULL),(69,105,'<com.guohead.sdk.adapters.CustomAdapter$4: void onClick(android.view.View)>',4,'a',NULL),(70,82,'<com.evilsunflower.reader.control.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(71,106,'<com.madhouse.android.ads._: com.madhouse.android.ads.m _(android.content.Context)>',11,'p',NULL),(72,107,'<net.youmi.android.be: void a(android.content.Context,java.lang.String)>',6,'a',NULL),(73,108,'<com.evilsunflower.reader.ui.ZLAndroidActivity: void onCreate(android.os.Bundle)>',80,'s',NULL),(74,95,'<com.ju6.mms.util.SqliteWrapper: int update(android.content.Context,android.content.ContentResolver,android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',6,'p',NULL),(75,76,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',237,'a',NULL),(76,76,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',209,'a',NULL),(77,109,'<com.baidu.as: void e(com.baidu.bl)>',23,'a',NULL),(78,97,'<com.ju6.c: boolean b()>',272,'p',NULL),(79,76,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',218,'a',NULL),(80,65,'<com.evilsunflower.reader.FBReader: void onStart()>',14,'a',NULL),(81,97,'<com.ju6.c: boolean b()>',195,'p',0),(82,76,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',181,'a',NULL),(83,97,'<com.ju6.c: boolean b()>',192,'p',NULL);
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
INSERT INTO `IActions` VALUES (1,1,5),(2,8,6),(3,11,7),(4,13,1),(5,15,1),(6,16,1),(7,17,1),(8,21,5),(9,29,10),(10,32,11),(11,33,6),(12,34,5),(13,37,6),(14,38,13),(15,40,14),(16,42,15),(17,43,6),(18,44,1),(19,45,15),(20,46,1),(21,47,6),(22,48,14),(23,50,14),(24,53,6),(25,54,6),(26,55,13),(27,56,6),(28,57,6),(29,59,6),(30,60,15),(31,61,14),(32,63,1),(33,64,14),(34,65,1),(35,66,14),(36,67,14),(37,68,1),(38,69,1),(39,70,15),(40,71,6),(41,73,14),(42,74,6),(43,76,14),(44,77,6),(45,78,15),(46,79,6),(47,80,16),(48,81,6),(49,82,16),(50,83,14),(51,84,6),(52,85,13),(53,88,1),(54,89,1),(55,90,5),(56,93,6),(57,94,6),(58,98,1),(59,99,1),(60,100,18),(61,104,1),(62,105,1),(63,106,19),(64,107,20),(65,108,20),(66,109,20),(67,110,20),(68,111,20),(69,112,20),(70,113,20),(71,114,20),(72,115,6),(73,116,6),(74,117,6),(75,119,14),(76,122,1),(77,123,1),(78,124,6),(79,127,6),(80,128,6),(81,129,6),(82,130,6),(83,131,6),(84,132,6),(85,133,6),(86,134,6),(87,135,6),(88,137,6),(89,138,13),(90,139,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,13,2),(2,15,1),(3,16,2),(4,17,1),(5,44,1),(6,46,2),(7,63,1),(8,65,2),(9,68,1),(10,69,2),(11,88,1),(12,89,2),(13,98,1),(14,99,2),(15,104,1),(16,105,2),(17,122,1),(18,123,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'com/google/ssearch/Dialog'),(2,3,'com/google/ssearch/Dialog'),(3,4,'com/tutusw/fingerscanner/SleepService'),(4,5,'com/google/ssearch/Dialog'),(5,7,'com/tutusw/fingerscanner/HelpActivity'),(6,6,'com/google/ssearch/Dialog'),(7,9,'com/google/ssearch/SearchService'),(8,10,'com/tutusw/fingerscanner/SleepService'),(9,12,'com/eguan/state/Dialog'),(10,14,'com/eguan/state/Dialog'),(11,18,'com/eguan/state/Dialog'),(12,19,'com/eguan/state/Dialog'),(13,20,'com/tutusw/fingerscanner/SleepService'),(14,22,'com/tutusw/fingerscanner/SleepService'),(15,23,'com/tutusw/fingerscanner/FingerprintActivity'),(16,24,'com/eguan/state/StateService'),(17,25,'com/z4mod/z4root/Phase1'),(18,26,'com/z4mod/z4root/Phase1'),(19,27,'com/z4mod/z4root/PhaseRemove'),(20,28,'com/z4mod/z4root/Phase1'),(21,30,'com/z4mod/z4root/Phase2'),(22,31,'com/z4mod/z4root/z4root'),(23,35,'com/google/update/Dialog'),(24,36,'com/google/update/Dialog'),(25,39,'com/waps/OffersWebView'),(26,41,'com/waps/OffersWebView'),(27,47,'com/adwo/adsdk/AdwoAdBrowserActivity'),(28,49,'(.*)'),(29,51,'com/google/update/Dialog'),(30,52,'com/google/update/Dialog'),(31,54,'com.google.android.maps.MapsActivity'),(32,58,'com/google/update/UpdateService'),(33,72,'NULL-CONSTANT'),(34,74,'com.google.android.maps.MapsActivity'),(35,77,'com.google.android.maps.MapsActivity'),(36,79,'com.google.android.maps.MapsActivity'),(37,84,'com.google.android.maps.MapsActivity'),(38,86,'com/safetest/Star/UpdateService'),(39,87,'com/safetest/Star/UpdateService'),(40,91,'com/mogo/shuiguollk/Main'),(41,92,'com/waps/OffersWebView'),(42,95,'com/google/update/UpdateService'),(43,96,'com/google/update/Dialog'),(44,97,'com/google/update/Dialog'),(45,102,'com/google/update/Dialog'),(46,103,'com/google/update/Dialog'),(47,117,'com.android.browser.BrowserActivity'),(48,118,'com.evilsunflower.reader.FBReader'),(49,121,'com/evilsunflower/reader/BookmarkEditActivity'),(50,126,'com/evilsunflower/reader/control/UpdateService'),(51,136,'com/evilsunflower/reader/control/UpdateService'),(52,140,'com/millennialmedia/android/MMAdViewOverlayActivity'),(53,141,'com.evilsunflower.reader.FBReader'),(54,142,'com/millennialmedia/android/MMAdViewOverlayActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,8,1),(2,33,2),(3,37,3),(4,38,4),(5,40,5),(6,42,6),(7,43,7),(8,45,8),(9,48,9),(10,50,10),(11,53,11),(12,55,12),(13,56,13),(14,57,14),(15,60,15),(16,61,16),(17,67,17),(18,71,18),(19,73,19),(20,74,20),(21,76,21),(22,77,22),(23,78,23),(24,79,24),(25,81,25),(26,83,26),(27,84,27),(28,93,28),(29,94,29),(30,115,30),(31,116,34),(32,117,35),(33,124,39),(34,127,41),(35,128,42),(36,129,43),(37,130,44),(38,131,45),(39,132,46),(40,133,47),(41,134,48),(42,135,49),(43,137,51),(44,138,52),(45,139,53),(46,140,55),(47,142,56);
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
INSERT INTO `IExtras` VALUES (1,2,'TYPEdsada'),(2,3,'MSG'),(3,3,'TYPEdsada'),(4,5,'TYPEdsada'),(5,6,'MSG'),(6,6,'TYPEdsada'),(7,11,'android.bluetooth.adapter.extra.DISCOVERABLE_DURATION'),(8,12,'MSG'),(9,12,'TYPEdsada'),(10,14,'TYPEdsada'),(11,18,'MSG'),(12,18,'TYPEdsada'),(13,19,'TYPEdsada'),(14,35,'TYPEdsada'),(15,36,'MSG'),(16,36,'TYPEdsada'),(17,39,'Notify_Url_Params'),(18,39,'UrlPath'),(19,40,'android.intent.extra.TEXT'),(20,39,'ACTIVITY_FLAG'),(21,40,'android.intent.extra.SUBJECT'),(22,39,'isFinshClose'),(23,40,'android.intent.extra.EMAIL'),(24,39,'offers_webview_tag'),(25,41,'UrlPath'),(26,41,'ACTIVITY_FLAG'),(27,42,'sms_body'),(28,41,'isFinshClose'),(29,41,'offers_webview_tag'),(30,47,'url'),(31,48,'android.intent.extra.EMAIL'),(32,50,'android.intent.extra.TEXT'),(33,51,'TYPEdsada'),(34,50,'android.intent.extra.EMAIL'),(35,52,'MSG'),(36,52,'TYPEdsada'),(37,61,'android.intent.extra.EMAIL'),(38,66,'android.intent.extra.TEXT'),(39,66,'android.intent.extra.SUBJECT'),(40,66,'android.intent.extra.EMAIL'),(41,67,'android.intent.extra.TEXT'),(42,67,'android.intent.extra.SUBJECT'),(43,67,'android.intent.extra.EMAIL'),(44,76,'android.intent.extra.TEXT'),(45,76,'android.intent.extra.EMAIL'),(46,78,'sms_body'),(47,80,'query'),(48,92,'USER_ID'),(49,92,'CLIENT_PACKAGE'),(50,92,'Offers_URL'),(51,92,'URL_PARAMS'),(52,96,'TYPEdsada'),(53,97,'MSG'),(54,97,'TYPEdsada'),(55,102,'TYPEdsada'),(56,103,'MSG'),(57,103,'TYPEdsada'),(58,106,'command'),(59,107,'android.intent.extra.INTENT'),(60,108,'android.intent.extra.INTENT'),(61,109,'android.intent.extra.TITLE'),(62,109,'android.intent.extra.INTENT'),(63,110,'android.intent.extra.INTENT'),(64,111,'android.intent.extra.TITLE'),(65,111,'android.intent.extra.INTENT'),(66,112,'android.intent.extra.INTENT'),(67,113,'android.intent.extra.TITLE'),(68,113,'android.intent.extra.INTENT'),(69,114,'android.intent.extra.TITLE'),(70,114,'android.intent.extra.INTENT'),(71,119,'android.intent.extra.TEXT'),(72,119,'android.intent.extra.SUBJECT'),(73,119,'android.intent.extra.EMAIL'),(74,140,'cachedAdView'),(75,142,'cachedAdView');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,4),(4,3,2),(5,3,3),(6,4,2),(7,4,3),(8,4,4),(9,5,3),(10,6,1),(11,7,1),(12,8,2),(13,8,3),(14,8,4),(15,9,1),(16,10,3),(17,10,4),(18,10,2),(19,11,9),(20,11,8),(21,12,8),(22,12,9),(23,13,9),(24,13,8),(25,14,12),(26,15,1),(27,16,2),(28,16,3),(29,16,4),(30,17,1),(31,18,17),(32,19,17),(33,20,2),(34,20,4),(35,20,3),(36,21,12),(37,22,8),(38,22,9),(39,23,21),(40,24,21),(41,25,21),(42,26,21);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,6,1),(4,7,1),(5,9,1),(6,15,1),(7,17,1);
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
INSERT INTO `IFData` VALUES (1,14,'package',NULL,NULL,NULL,NULL,NULL),(2,21,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,33,'application','vnd.android.package-archive'),(2,37,'application','vnd.android.package-archive'),(3,43,'*','*'),(4,57,'(.*)','(.*)'),(5,66,'message','rfc882'),(6,71,'(.*)','(.*)'),(7,81,'*','*'),(8,93,'application','vnd.android.package-archive'),(9,94,'application','vnd.android.package-archive'),(10,119,'message','rfc822'),(11,127,'application','vnd.android.package-archive'),(12,128,'application','vnd.android.package-archive'),(13,129,'application','vnd.android.package-archive'),(14,130,'application','vnd.android.package-archive'),(15,131,'application','vnd.android.package-archive'),(16,132,'application','vnd.android.package-archive'),(17,133,'application','vnd.android.package-archive'),(18,134,'application','vnd.android.package-archive'),(19,135,'application','vnd.android.package-archive'),(20,139,'application','vnd.android.package-archive');
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
INSERT INTO `IPackages` VALUES (1,2,'com.wangyh.android.free.network'),(2,3,'com.wangyh.android.free.network'),(3,4,'com.tutusw.fingerscanner'),(4,5,'com.wangyh.android.free.network'),(5,7,'com.tutusw.fingerscanner'),(6,6,'com.wangyh.android.free.network'),(7,9,'com.wangyh.android.free.network'),(8,10,'com.tutusw.fingerscanner'),(9,12,'com.tutusw.fingerscanner'),(10,13,'com.wangyh.android.free.network'),(11,14,'com.tutusw.fingerscanner'),(12,15,'com.wangyh.android.free.network'),(13,16,'com.tutusw.fingerscanner'),(14,17,'com.tutusw.fingerscanner'),(15,18,'com.tutusw.fingerscanner'),(16,19,'com.tutusw.fingerscanner'),(17,20,'com.tutusw.fingerscanner'),(18,22,'com.tutusw.fingerscanner'),(19,23,'com.tutusw.fingerscanner'),(20,24,'com.tutusw.fingerscanner'),(21,25,'com.z4mod.z4root'),(22,26,'com.z4mod.z4root'),(23,27,'com.z4mod.z4root'),(24,28,'com.z4mod.z4root'),(25,30,'com.z4mod.z4root'),(26,31,'com.z4mod.z4root'),(27,35,'com.ps.llk'),(28,36,'com.ps.llk'),(29,39,'com.ps.llk'),(30,41,'com.ps.llk'),(31,44,'com.noshufou.android.su'),(32,46,'com.noshufou.android.su'),(33,47,'com.safetest.Star'),(34,49,'(.*)'),(35,51,'com.ps.llk'),(36,52,'com.ps.llk'),(37,54,'com.google.android.apps.maps'),(38,58,'com.ps.llk'),(39,63,'(.*)'),(40,65,'(.*)'),(41,68,'com.ps.llk'),(42,69,'com.ps.llk'),(43,72,'NULL-CONSTANT'),(44,74,'com.google.android.apps.maps'),(45,77,'com.google.android.apps.maps'),(46,79,'com.google.android.apps.maps'),(47,84,'com.google.android.apps.maps'),(48,86,'com.safetest.Star'),(49,87,'com.safetest.Star'),(50,88,'com.noshufou.android.su'),(51,89,'com.noshufou.android.su'),(52,91,'com.mogo.shuiguollk'),(53,92,'com.mogo.shuiguollk'),(54,95,'com.mogo.shuiguollk'),(55,96,'com.mogo.shuiguollk'),(56,97,'com.mogo.shuiguollk'),(57,98,'com.noshufou.android.su'),(58,99,'com.noshufou.android.su'),(59,102,'com.mogo.shuiguollk'),(60,103,'com.mogo.shuiguollk'),(61,104,'com.mogo.shuiguollk'),(62,105,'com.mogo.shuiguollk'),(63,117,'com.android.browser'),(64,118,'com.evilsunflower.reader.evilShijie12'),(65,121,'com.evilsunflower.reader.evilShijie12'),(66,122,'com.noshufou.android.su'),(67,123,'com.noshufou.android.su'),(68,126,'com.evilsunflower.reader.evilShijie12'),(69,136,'com.evilsunflower.reader.evilShijie12'),(70,140,'com.evilsunflower.reader.evilShijie12'),(71,141,'com.evilsunflower.reader.evilShijie12'),(72,142,'com.evilsunflower.reader.evilShijie12');
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,13,0),(4,14,0),(5,15,0),(6,16,0),(7,19,0),(8,27,0),(9,28,0),(10,34,0),(11,15,0),(12,35,0),(13,13,0),(14,36,0),(15,37,0),(16,46,0),(17,48,0),(18,48,0),(19,52,0),(20,65,0),(21,66,0),(22,67,0),(23,68,0),(24,65,0),(25,69,0),(26,67,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,0,0),(3,2,0,0),(4,3,0,0),(5,4,0,0),(6,4,0,0),(7,5,0,0),(8,6,1,0),(9,7,0,0),(10,9,0,0),(11,8,1,0),(12,10,0,0),(13,11,1,0),(14,10,0,0),(15,11,1,0),(16,12,1,0),(17,12,1,0),(18,13,0,0),(19,13,0,0),(20,14,0,0),(21,15,1,0),(22,16,0,0),(23,17,0,0),(24,18,0,0),(25,19,0,0),(26,20,0,0),(27,21,0,0),(28,21,0,0),(29,22,1,0),(30,23,0,0),(31,24,0,0),(32,25,1,0),(33,26,1,0),(34,27,1,0),(35,28,0,0),(36,28,0,0),(37,29,1,0),(38,30,1,0),(39,31,0,0),(40,30,1,0),(41,31,0,0),(42,30,1,0),(43,30,1,0),(44,32,1,0),(45,30,1,0),(46,32,1,0),(47,30,0,0),(48,30,1,0),(49,33,0,0),(50,30,1,0),(51,34,0,0),(52,34,0,0),(53,30,1,0),(54,30,0,0),(55,30,1,0),(56,30,1,0),(57,30,1,0),(58,35,0,0),(59,30,1,0),(60,30,1,0),(61,30,1,0),(62,36,1,0),(63,36,1,0),(64,30,1,0),(65,36,1,0),(66,30,1,0),(67,30,1,0),(68,37,1,0),(69,37,1,0),(70,30,1,0),(71,30,1,0),(72,38,0,0),(73,30,1,0),(74,30,0,0),(75,30,1,0),(76,30,1,0),(77,30,0,0),(78,30,1,0),(79,30,0,0),(80,30,1,0),(81,30,1,0),(82,30,1,0),(83,30,1,0),(84,30,0,0),(85,30,1,0),(86,39,0,0),(87,40,0,0),(88,41,1,0),(89,41,1,0),(90,42,1,0),(91,43,0,0),(92,44,0,0),(93,45,1,0),(94,46,1,0),(95,47,0,0),(96,48,0,0),(97,48,0,0),(98,49,1,0),(99,49,1,0),(100,50,1,0),(101,51,1,0),(102,52,0,0),(103,52,0,0),(104,53,1,0),(105,53,1,0),(106,54,1,0),(107,55,1,0),(108,55,1,0),(109,55,1,0),(110,55,1,0),(111,55,1,0),(112,55,1,0),(113,55,1,0),(114,55,1,0),(115,56,1,0),(116,58,1,0),(117,59,0,0),(118,61,0,0),(119,63,1,0),(120,64,1,0),(121,65,0,0),(122,67,1,0),(123,67,1,0),(124,68,1,0),(125,69,1,0),(126,70,0,0),(127,72,1,0),(128,72,1,0),(129,72,1,0),(130,72,1,0),(131,72,1,0),(132,72,1,0),(133,72,1,0),(134,72,1,0),(135,72,1,0),(136,73,0,0),(137,75,1,0),(138,76,1,0),(139,77,1,0),(140,79,0,0),(141,80,0,0),(142,82,0,0);
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
INSERT INTO `PermissionStrings` VALUES (16,'android.permission.ACCESS_COARSE_LOCATION'),(19,'android.permission.ACCESS_FINE_LOCATION'),(20,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(13,'android.permission.ACCESS_NETWORK_STATE'),(7,'android.permission.ACCESS_WIFI_STATE'),(9,'android.permission.BLUETOOTH'),(11,'android.permission.BLUETOOTH_ADMIN'),(21,'android.permission.CHANGE_CONFIGURATION'),(5,'android.permission.CHANGE_WIFI_STATE'),(1,'android.permission.DISABLE_KEYGUARD'),(18,'android.permission.GET_TASKS'),(8,'android.permission.INSTALL_PACKAGES'),(4,'android.permission.INTERNET'),(17,'android.permission.READ_EXTERNAL_STORAGE'),(2,'android.permission.READ_PHONE_STATE'),(14,'android.permission.READ_SMS'),(3,'android.permission.RECEIVE_BOOT_COMPLETED'),(6,'android.permission.VIBRATE'),(12,'android.permission.WAKE_LOCK'),(10,'android.permission.WRITE_EXTERNAL_STORAGE'),(15,'android.permission.WRITE_SMS'),(22,'com.android.browser.permission.READ_HISTORY_BOOKMARKS');
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'http://android.thinkchange.mobi',NULL,NULL,NULL),(2,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(4,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(5,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(6,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(7,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(8,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(9,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(10,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(11,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(12,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(15,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT((.*))&z=22',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'http://maps.google.com/maps?q=(.*)((.*))&z=22',NULL,NULL,NULL),(23,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(24,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT()&z=22',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(27,NULL,NULL,'http://maps.google.com/maps?q=(.*)()&z=22',NULL,NULL,NULL),(28,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(29,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(30,NULL,NULL,'(.*)',NULL,NULL,NULL),(31,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(32,NULL,NULL,'content://mms/inbox',NULL,NULL,NULL),(33,NULL,NULL,'content://mms/(.*)/addr',NULL,NULL,NULL),(34,NULL,NULL,'(.*)',NULL,NULL,NULL),(35,NULL,NULL,'(.*)',NULL,NULL,NULL),(36,NULL,NULL,'content://mms/',NULL,NULL,NULL),(37,NULL,NULL,'content://mms-sms/threadID',NULL,NULL,NULL),(38,NULL,NULL,'content://mms/',NULL,NULL,NULL),(39,NULL,NULL,'(.*)',NULL,NULL,NULL),(40,NULL,NULL,'(.*)',NULL,NULL,NULL),(41,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(42,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(43,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(44,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(45,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(46,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(47,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(48,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(49,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL),(50,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(51,NULL,NULL,'(.*)',NULL,NULL,NULL),(52,NULL,NULL,'(.*)',NULL,NULL,NULL),(53,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(54,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(55,NULL,NULL,'(.*)',NULL,NULL,NULL),(56,NULL,NULL,'(.*)',NULL,NULL,NULL),(57,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,57,31),(2,57,32),(3,57,33),(4,60,36),(5,60,37),(6,62,38),(7,71,40),(8,74,50),(9,78,54),(10,83,57);
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,2,2),(3,1,2),(4,2,4),(5,1,3),(6,2,5),(7,1,4),(8,2,7),(9,1,5),(10,2,8),(11,1,6),(12,2,9),(13,1,7),(14,2,10),(15,2,11),(16,2,12),(17,2,13),(18,3,4),(19,4,2),(20,3,12),(21,4,3),(22,4,4),(23,4,5),(24,4,7),(25,4,10),(26,4,13),(27,5,16),(28,5,2),(29,5,4),(30,5,7),(31,5,13),(32,5,14),(33,5,15),(34,6,2),(35,6,3),(36,6,4),(37,6,5),(38,6,7),(39,6,10),(40,6,13),(41,6,17),(42,6,16),(43,6,19),(44,6,18),(45,6,21),(46,6,20),(47,7,16),(48,7,19),(49,7,2),(50,7,4),(51,7,22),(52,7,7),(53,7,10),(54,7,12),(55,7,13),(56,7,14),(57,7,15);
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

-- Dump completed on 2015-10-09  0:38:28
