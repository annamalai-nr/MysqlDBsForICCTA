-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_134
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (25,'Speedup.intent.action.refreshservice'),(26,'Speedup.intent.action.temp'),(13,'Speedup.intent.action.updatewidget'),(12,'android.appwidget.action.APPWIDGET_CONFIGURE'),(6,'android.appwidget.action.APPWIDGET_UPDATE'),(22,'android.intent.action.BATTERY_CHANGED'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(2,'android.intent.action.BOOT_COMPLETED'),(16,'android.intent.action.CHOOSER'),(5,'android.intent.action.CREATE_SHORTCUT'),(27,'android.intent.action.DIAL'),(32,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(17,'android.intent.action.PACKAGE_ADDED'),(23,'android.intent.action.SCREEN_OFF'),(24,'android.intent.action.SCREEN_ON'),(34,'android.intent.action.SEARCH'),(28,'android.intent.action.SEND'),(29,'android.intent.action.SENDTO'),(3,'android.intent.action.SIG_STR'),(31,'android.intent.action.USER_PRESENT'),(19,'android.intent.action.VIEW'),(30,'android.intent.action.WEB_SEARCH'),(33,'android.media.action.IMAGE_CAPTURE'),(15,'android.net.conn.CONNECTIVITY_CHANGE'),(35,'com.android.music.musicservicecommand'),(14,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(18,'com/tutusw/onekeyvpn/Intents.OPEN_VPN_SERVICE_STARTED'),(9,'org.iozhu.reboot.ACTION_REBOOT'),(11,'org.iozhu.reboot.ACTION_REBOOT_TO_BOOTLOADER'),(10,'org.iozhu.reboot.ACTION_REBOOT_TO_RECOVERY'),(8,'org.iozhu.reboot.ACTION_TIME_REBOOT'),(7,'org.iozhu.reboot.TIME_REBOOT_ENABLED'),(21,'org.iozhu.reboot1.TIME_REBOOT_ENABLED'),(20,'org.openintents.action.PICK_DIRECTORY');
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
INSERT INTO `Applications` VALUES (1,'com.tutusw.onekeyvpn',6),(2,'com.ps.kickfly',12),(3,'com.ps.kickfly',13),(4,'org.iozhu.reboot1',6),(5,'com.tutusw.phonespeedup',14),(6,'com.evilsunflower.picturepuzzle',1),(7,'com.evilsunflower.reader.evilGuigu',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.tutusw.onekeyvpn.OpenVpnSettings'),(2,1,'com.tutusw.onekeyvpn.AdvancedSettings'),(3,1,'com.tutusw.onekeyvpn.EditConfig'),(4,1,'com.tutusw.onekeyvpn.EditConfigPreferences'),(5,1,'com.tutusw.onekeyvpn.EnterPassphrase'),(6,1,'com.tutusw.onekeyvpn.EnterUserPassword'),(7,1,'com.tutusw.onekeyvpn.ImportFiles'),(8,1,'com.tutusw.onekeyvpn.service.OpenVpnService'),(9,1,'com.tutusw.onekeyvpn.util.BootCompletedReceiver'),(10,2,'com.ps.kickfly.GameMainActivity'),(11,2,'com.ps.kickfly.KickFly'),(12,2,'com.ps.kickfly.GameModeActivity'),(13,2,'com.adwo.adsdk.AdwoAdBrowserActivity'),(14,3,'com.ps.kickfly.GameMainActivity'),(15,2,'com.google.update.Dialog'),(16,2,'com.google.update.UpdateService'),(17,3,'com.ps.kickfly.KickFly'),(18,2,'com.google.update.Receiver'),(19,4,'org.iozhu.reboot1.Alert'),(20,3,'com.ps.kickfly.GameModeActivity'),(21,4,'org.iozhu.reboot1.Configuration'),(22,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(23,5,'com.tutusw.phonespeedup.IntroActivity'),(24,3,'com.google.update.Dialog'),(25,4,'org.iozhu.reboot1.EtouchMarket'),(26,3,'com.google.update.UpdateService'),(27,5,'com.tutusw.phonespeedup.InfoActivity'),(28,3,'com.google.update.Receiver'),(29,5,'com.google.ssearch.Dialog'),(30,4,'ad.imadpush.com.poster.PosterInfoActivity'),(31,5,'com.tutusw.phonespeedup.Home'),(32,4,'org.iozhu.reboot1.RebootService'),(33,5,'com.tutusw.phonespeedup.PerflockActivity'),(34,4,'org.iozhu.reboot1.BgSvc'),(35,5,'com.tutusw.phonespeedup.ProfilesActivity'),(36,4,'com.airpuh.ad.UpdateCheck'),(37,5,'com.tutusw.phonespeedup.ProfileEditActivity'),(38,4,'ad.imadpush.com.poster.AlarmService'),(39,5,'com.tutusw.phonespeedup.AdvancedActivity'),(40,4,'org.iozhu.reboot1.RebootWidget'),(41,5,'com.tutusw.phonespeedup.AboutActivity'),(42,5,'com.tutusw.phonespeedup.StresstestActivity'),(43,4,'org.iozhu.reboot1.RebootReceiver'),(44,5,'com.tutusw.phonespeedup.Setcpu'),(45,5,'com.tutusw.phonespeedup.WidgetConfigActivity'),(46,4,'ad.imadpush.com.poster.ReceiverAlarm'),(47,5,'com.google.ssearch.SearchService'),(48,5,'com.tutusw.phonespeedup.StartupService'),(49,5,'com.tutusw.phonespeedup.ProfilesService'),(50,5,'com.tutusw.phonespeedup.WidgetService'),(51,5,'com.google.ssearch.Receiver'),(52,5,'com.tutusw.phonespeedup.StartupReceiver'),(53,5,'com.tutusw.phonespeedup.Widget'),(54,6,'com.evilsunflower.picturepuzzle.Main'),(55,6,'com.evilsunflower.picturepuzzle.PuzzleView'),(56,6,'com.mobclix.android.sdk.MobclixBrowserActivity'),(57,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(58,6,'com.evilsunflower.picturepuzzle.ShowTips'),(59,6,'com.evilsunflower.picturepuzzle.UpdateService'),(60,6,'com.evilsunflower.picturepuzzle.Receiver'),(61,1,'com.tutusw.onekeyvpn.OpenVpnSettings$1'),(62,2,'com.google.update.Dialog$2'),(63,3,'com.google.update.UpdateService$AA'),(64,2,'com.google.update.Dialog$1'),(65,1,'com.tutusw.onekeyvpn.service.DaemonMonitor'),(66,1,'com.tutusw.onekeyvpn.util.NetworkConnectivityListener$ConnectivityBroadcastReceiver'),(67,1,'com.tutusw.onekeyvpn.OpenVpnSettings$4'),(68,3,'com.google.update.Dialog$2'),(69,2,'com.google.update.UpdateService$AA'),(70,1,'com.tutusw.onekeyvpn.service.ManagementThread'),(71,3,'com.google.update.Dialog$1'),(72,4,'ad.imadpush.com.poster.PosterInfoActivity$PackageReceiver'),(73,1,'com.tutusw.onekeyvpn.service.DaemonMonitor$2'),(74,1,'com.tutusw.onekeyvpn.ImportFiles$2'),(75,5,'com.tutusw.phonespeedup.WidgetService$1'),(76,5,'com.tutusw.phonespeedup.ProfilesService$1'),(77,5,'android.appwidget.AppWidgetProvider'),(78,5,'com.tutusw.phonespeedup.ProfilesActivity$Clicker'),(79,5,'com.google.ssearch.SearchService$MyThread'),(80,5,'com.google.ssearch.Dialog$1'),(81,5,'com.tutusw.phonespeedup.Home$clicker'),(82,6,'com.madhouse.android.ads._'),(83,6,'com.adwo.adsdk.g'),(84,6,'com.mobclix.android.sdk.MobclixBrowserActivity$ScreenReceiver'),(85,6,'com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener'),(86,6,'com.google.ads.util.AdUtil$UserActivityReceiver'),(87,6,'com.mobclix.android.sdk.MobclixCreative$Action'),(88,6,'com.adwo.adsdk.D'),(89,6,'com.evilsunflower.picturepuzzle.ShowTips$1'),(90,7,'com.evilsunflower.reader.evilGuigu.BugReportActivity'),(91,7,'com.evilsunflower.reader.FBReader'),(92,7,'com.evilsunflower.reader.CancelActivity'),(93,7,'com.evilsunflower.reader.image.ImageViewActivity'),(94,7,'com.evilsunflower.reader.TOCActivity'),(95,7,'com.evilsunflower.reader.BookmarksActivity'),(96,7,'com.evilsunflower.reader.BookmarkEditActivity'),(97,7,'com.evilsunflower.reader.Starter'),(98,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(99,7,'com.vpon.adon.android.WebInApp'),(100,7,'com.millennialmedia.android.MMAdViewOverlayActivity'),(101,7,'com.millennialmedia.android.VideoPlayer'),(102,7,'net.youmi.android.AdActivity'),(103,7,'com.google.ads.AdActivity'),(104,7,'cn.domob.android.ads.DomobActivity'),(105,7,'com.baidu.AppActivity'),(106,7,'com.guohead.sdk.GuoheAdActivity'),(107,7,'net.youmi.android.eo'),(108,7,'com.evilsunflower.reader.ui.ZLAndroidActivity$1'),(109,7,'com.adwo.adsdk.M'),(110,7,'cn.domob.android.ads.e'),(111,7,'com.baidu.as'),(112,7,'com.ju6.c'),(113,7,'com.millennialmedia.android.MillennialMediaView'),(114,7,'com.ju6.mms.util.SqliteWrapper'),(115,7,'net.youmi.android.t'),(116,7,'com.evilsunflower.reader.ui.BugReportActivity$1'),(117,7,'com.baidu.al'),(118,7,'cn.domob.android.ads.o'),(119,7,'com.guohead.sdk.adapters.CustomAdapter$4'),(120,7,'com.ju6.mms.pdu.PduPersister'),(121,7,'com.madhouse.android.ads._'),(122,7,'cn.domob.android.ads.DomobAdManager'),(123,7,'com.guohead.sdk.adapters.CustomAdapter$3'),(124,7,'cn.domob.android.ads.o$5'),(125,7,'net.youmi.android.be'),(126,7,'cn.domob.android.a.a$a'),(127,7,'cn.domob.android.ads.g$1');
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
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,13,'url'),(2,15,'TYPEdsada'),(3,13,'shouldEnableBottomBar'),(4,22,'shouldResizeOverlay'),(5,22,'shouldShowBottomBar'),(6,22,'shouldEnableBottomBar'),(7,22,'shouldShowTitlebar'),(8,15,'MSG'),(9,24,'MSG'),(10,22,'url'),(11,13,'shouldShowBottomBar'),(12,13,'shouldResizeOverlay'),(13,22,'overlayTitle'),(14,22,'shouldMakeOverlayTransparent'),(15,22,'transitionTime'),(16,26,'ST_START_DELAY'),(17,26,'ST_MY_PID'),(18,24,'TYPEdsada'),(19,22,'overlayTransition'),(20,16,'ST_START_DELAY'),(21,13,'overlayTransition'),(22,13,'shouldShowTitlebar'),(23,16,'ST_MY_PID'),(24,13,'shouldMakeOverlayTransparent'),(25,13,'transitionTime'),(26,13,'overlayTitle'),(27,30,'notifyId'),(28,30,'dId'),(29,30,'push'),(30,36,'MYAD_PID'),(31,37,'row_id'),(32,21,'ad.imadpush.com'),(33,38,'ad.imadpush.com'),(34,30,'userId'),(35,45,'appWidgetId'),(36,29,'TYPEdsada'),(37,29,'MSG'),(38,56,'com.evilsunflower.picturepuzzle.type'),(39,56,'Adwo_PID'),(40,58,'MM'),(41,57,'shouldResizeOverlay'),(42,59,'SAFE_PID'),(43,59,'SAFE_START'),(44,57,'overlayTransition'),(45,57,'transitionTime'),(46,57,'shouldMakeOverlayTransparent'),(47,56,'com.evilsunflower.picturepuzzle.data'),(48,56,'(.*)'),(49,57,'url'),(50,57,'shouldEnableBottomBar'),(51,56,'imageUri'),(52,57,'shouldShowTitlebar'),(53,57,'shouldShowBottomBar'),(54,57,'overlayTitle'),(55,71,'com.cdjm.reader.ui.androidActiviy.ChangeCounter'),(56,78,'shouldMakeOverlayTransparent'),(57,81,'logSet'),(58,71,'Adwo_PID'),(59,81,'videoPosition'),(60,80,'canAccelerate'),(61,85,'surl'),(62,78,'shouldShowTitlebar'),(63,81,'DOMOB_ALLOW_LOCATION'),(64,75,'DOMOB_ALLOW_LOCATION'),(65,80,'DOMOB_ALLOW_LOCATION'),(66,71,'DOMOB_ALLOW_LOCATION'),(67,78,'DOMOB_ALLOW_LOCATION'),(68,82,'DOMOB_ALLOW_LOCATION'),(69,85,'limg'),(70,81,'isCachedAd'),(71,78,'shouldResizeOverlay'),(72,78,'overlayTitle'),(73,78,'overlayTransition'),(74,78,'url'),(75,78,'shouldShowBottomBar'),(76,71,'query'),(77,81,'adName'),(78,81,'DOMOB_PID'),(79,75,'DOMOB_PID'),(80,80,'DOMOB_PID'),(81,71,'DOMOB_PID'),(82,78,'DOMOB_PID'),(83,82,'DOMOB_PID'),(84,80,'overlayTransition'),(85,81,'shouldShowBottomBar'),(86,80,'shouldMakeOverlayTransparent'),(87,81,'videoAd'),(88,82,'D780FBF4215247bcBB1AC0AD33C474FE'),(89,79,'url'),(90,80,'shouldShowTitlebar'),(91,85,'tit'),(92,84,'appName'),(93,81,'DOMOB_TEST_MODE'),(94,75,'DOMOB_TEST_MODE'),(95,80,'DOMOB_TEST_MODE'),(96,71,'DOMOB_TEST_MODE'),(97,78,'DOMOB_TEST_MODE'),(98,82,'DOMOB_TEST_MODE'),(99,75,'query'),(100,79,'adWidth'),(101,86,'link'),(102,80,'shouldEnableBottomBar'),(103,80,'shouldResizeOverlay'),(104,85,'clklogurl'),(105,81,'videoCompleted'),(106,78,'transitionTime'),(107,80,'cachedAdView'),(108,71,'com.cdjm.reader.ui.androidActiviy.RequestedOrientation'),(109,84,'actType'),(110,85,'curl'),(111,82,'EB80F3291A8E469c962CA133BDC549D7'),(112,80,'overlayTitle'),(113,71,'GH_APPKEY'),(114,80,'shouldShowBottomBar'),(115,81,'cached'),(116,82,'172C94EDC717477aBF600D7898A64A8E'),(117,78,'shouldEnableBottomBar'),(118,80,'transitionTime'),(119,82,'D50EF1926ADD471892E72BCE6D7E032C'),(120,84,'appId');
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
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'s',0,NULL,NULL),(9,9,'r',1,4,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'s',0,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'r',1,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'s',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'r',1,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'s',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'s',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'s',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'s',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'r',1,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'r',1,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',1,NULL,NULL),(46,46,'r',0,NULL,NULL),(47,47,'s',0,NULL,NULL),(48,48,'s',0,NULL,NULL),(49,49,'s',0,NULL,NULL),(50,50,'s',0,NULL,NULL),(51,51,'r',1,NULL,NULL),(52,52,'r',0,4,NULL),(53,53,'r',1,NULL,NULL),(54,54,'a',1,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'s',0,NULL,NULL),(60,60,'r',1,NULL,NULL),(61,66,'r',1,NULL,NULL),(62,72,'r',1,NULL,NULL),(63,75,'r',1,NULL,NULL),(64,76,'r',1,NULL,NULL),(65,77,'r',1,NULL,NULL),(66,52,'r',1,NULL,NULL),(67,84,'r',1,NULL,NULL),(68,86,'r',1,NULL,NULL),(69,88,'r',1,NULL,NULL),(70,90,'a',0,NULL,NULL),(71,91,'a',1,NULL,NULL),(72,92,'a',0,NULL,NULL),(73,93,'a',0,NULL,NULL),(74,94,'a',0,NULL,NULL),(75,95,'a',1,NULL,NULL),(76,96,'a',0,NULL,NULL),(77,97,'a',0,NULL,NULL),(78,98,'a',0,NULL,NULL),(79,99,'a',0,NULL,NULL),(80,100,'a',0,NULL,NULL),(81,101,'a',0,NULL,NULL),(82,102,'a',0,NULL,NULL),(83,103,'a',0,NULL,NULL),(84,104,'a',0,NULL,NULL),(85,105,'a',0,NULL,NULL),(86,106,'a',0,NULL,NULL),(87,107,'r',1,NULL,NULL),(88,108,'r',1,NULL,NULL),(89,109,'r',1,NULL,NULL),(90,110,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,15),(3,3,9),(4,4,26),(5,5,15),(6,6,8),(7,6,1),(8,7,1),(9,8,1),(10,9,16),(11,10,26),(12,11,1),(13,12,28),(14,13,16),(15,14,26),(16,15,18),(17,16,24),(18,17,16),(19,18,8),(20,18,1),(21,19,1),(22,19,8),(23,20,24),(24,21,1),(25,21,8),(26,22,1),(27,23,46),(28,24,8),(29,24,1),(30,25,5),(31,26,21),(32,27,8),(33,28,21),(34,29,1),(35,30,7),(36,31,43),(37,32,21),(38,33,1),(39,34,21),(40,35,6),(41,36,8),(42,36,1),(43,37,43),(44,38,8),(45,38,1),(46,39,8),(47,39,1),(48,40,31),(49,41,21),(50,42,27),(51,43,35),(52,44,35),(53,45,35),(54,46,48),(55,47,47),(56,48,53),(57,49,47),(58,50,41),(59,51,52),(60,52,31),(61,53,45),(62,54,31),(63,55,47),(64,56,29),(65,57,31),(66,58,35),(67,59,35),(68,60,31),(69,61,48),(70,62,31),(71,63,35),(72,64,51),(73,65,23),(74,66,23),(75,67,56),(76,68,54),(77,68,56),(78,69,54),(79,70,56),(80,71,56),(81,72,56),(82,73,56),(83,74,56),(84,75,56),(85,76,56),(86,77,56),(87,78,60),(88,79,56),(89,80,58),(90,81,56),(91,82,56),(92,83,56),(93,84,82),(94,84,75),(95,84,71),(96,85,75),(97,86,71),(98,87,75),(99,87,71),(100,87,82),(101,87,81),(102,88,75),(103,88,71),(104,88,81),(105,88,82),(106,89,71),(107,90,82),(108,91,82),(109,92,71),(110,92,82),(111,92,75),(112,93,71),(113,94,71),(114,94,75),(115,94,78),(116,94,80),(117,94,82),(118,94,81),(119,95,82),(120,95,81),(121,95,75),(122,95,71),(123,96,81),(124,96,82),(125,96,75),(126,96,71),(127,97,82),(128,97,71),(129,97,75),(130,98,81),(131,98,82),(132,98,71),(133,98,75),(134,99,71),(135,100,71),(136,101,71),(137,102,75),(138,102,71),(139,102,82),(140,103,81),(141,103,82),(142,103,71),(143,103,75),(144,104,81),(145,104,82),(146,104,80),(147,104,71),(148,104,78),(149,104,75),(150,105,71),(151,105,82),(152,105,75),(153,106,71),(154,107,71),(155,108,71),(156,109,82),(157,109,81),(158,109,80),(159,109,78),(160,109,71),(161,110,82),(162,110,81),(163,110,75),(164,110,71),(165,111,81),(166,111,75),(167,111,71),(168,111,82),(169,112,82),(170,113,75),(171,113,78),(172,113,82),(173,113,80),(174,113,71),(175,113,81),(176,114,80),(177,114,78),(178,114,75),(179,114,71),(180,114,81),(181,114,82),(182,115,71);
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
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,61,'<com.tutusw.onekeyvpn.OpenVpnSettings$1: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',18,'s',NULL),(2,62,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(3,9,'<com.tutusw.onekeyvpn.util.BootCompletedReceiver: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(4,63,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(5,64,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(6,65,'<com.tutusw.onekeyvpn.service.DaemonMonitor: void start()>',13,'r',0),(7,61,'<com.tutusw.onekeyvpn.OpenVpnSettings$1: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',12,'s',NULL),(8,1,'<com.tutusw.onekeyvpn.OpenVpnSettings: void onCreate(android.os.Bundle)>',27,'s',NULL),(9,16,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(10,26,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(11,67,'<com.tutusw.onekeyvpn.OpenVpnSettings$4: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(12,28,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(13,16,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(14,26,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(15,18,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(16,68,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(17,69,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(18,65,'<com.tutusw.onekeyvpn.service.DaemonMonitor: void start()>',68,'r',0),(19,70,'<com.tutusw.onekeyvpn.service.ManagementThread: void run()>',55,'r',0),(20,71,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(21,70,'<com.tutusw.onekeyvpn.service.ManagementThread: void onState(java.lang.String)>',44,'r',0),(22,1,'<com.tutusw.onekeyvpn.OpenVpnSettings: void onCreate(android.os.Bundle)>',24,'s',NULL),(23,46,'<ad.imadpush.com.poster.ReceiverAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(24,73,'<com.tutusw.onekeyvpn.service.DaemonMonitor$2: void onCmdTerminated()>',10,'r',0),(25,5,'<com.tutusw.onekeyvpn.EnterPassphrase: void onCreate(android.os.Bundle)>',6,'s',NULL),(26,21,'<org.iozhu.reboot1.Configuration: void onCreate(android.os.Bundle)>',19,'s',NULL),(27,8,'<com.tutusw.onekeyvpn.service.OpenVpnService: void onCreate()>',6,'r',NULL),(28,21,'<org.iozhu.reboot1.Configuration: void onClick(android.view.View)>',83,'a',NULL),(29,8,'<com.tutusw.onekeyvpn.service.OpenVpnService: void daemonStart(java.io.File)>',27,'r',0),(30,74,'<com.tutusw.onekeyvpn.ImportFiles$2: void onClick(android.view.View)>',6,'a',NULL),(31,43,'<org.iozhu.reboot1.RebootReceiver: void onReceive(android.content.Context,android.content.Intent)>',18,'s',NULL),(32,21,'<org.iozhu.reboot1.Configuration: void onClick(android.view.View)>',78,'a',NULL),(33,1,'<com.tutusw.onekeyvpn.OpenVpnSettings: boolean onOptionsItemSelected(android.view.MenuItem)>',22,'a',NULL),(34,21,'<org.iozhu.reboot1.Configuration: void onClick(android.view.View)>',88,'a',NULL),(35,6,'<com.tutusw.onekeyvpn.EnterUserPassword: void onCreate(android.os.Bundle)>',6,'s',NULL),(36,70,'<com.tutusw.onekeyvpn.service.ManagementThread: void networkStateChanged(int)>',11,'r',0),(37,43,'<org.iozhu.reboot1.RebootReceiver: void onReceive(android.content.Context,android.content.Intent)>',56,'s',NULL),(38,70,'<com.tutusw.onekeyvpn.service.ManagementThread: void run()>',23,'r',0),(39,70,'<com.tutusw.onekeyvpn.service.ManagementThread: void run()>',31,'r',0),(40,31,'<com.tutusw.phonespeedup.Home: void launchClass(java.lang.Class)>',4,'a',NULL),(41,21,'<org.iozhu.reboot1.Configuration: void onClick(android.view.View)>',43,'r',NULL),(42,27,'<com.tutusw.phonespeedup.InfoActivity: void launchClass(java.lang.Class)>',4,'a',NULL),(43,78,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',44,'s',NULL),(44,78,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',79,'a',NULL),(45,35,'<com.tutusw.phonespeedup.ProfilesActivity: void update()>',9,'r',NULL),(46,48,'<com.tutusw.phonespeedup.StartupService: void updateWidget(int,int)>',5,'r',NULL),(47,47,'<com.google.ssearch.SearchService: int setUsbEnabled()>',34,'a',NULL),(48,53,'<com.tutusw.phonespeedup.Widget: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',15,'s',NULL),(49,79,'<com.google.ssearch.SearchService$MyThread: void run()>',39,'a',NULL),(50,41,'<com.tutusw.phonespeedup.AboutActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(51,52,'<com.tutusw.phonespeedup.StartupReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',0),(52,31,'<com.tutusw.phonespeedup.Home: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(53,45,'<com.tutusw.phonespeedup.WidgetConfigActivity: void apply()>',39,'s',NULL),(54,31,'<com.tutusw.phonespeedup.Home: void updateWidget()>',3,'r',NULL),(55,47,'<com.google.ssearch.SearchService: void getPermission2()>',79,'a',NULL),(56,80,'<com.google.ssearch.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(57,31,'<com.tutusw.phonespeedup.Home: void onCreate(android.os.Bundle)>',216,'s',NULL),(58,78,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',48,'r',NULL),(59,78,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',31,'r',NULL),(60,31,'<com.tutusw.phonespeedup.Home: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(61,48,'<com.tutusw.phonespeedup.StartupService: void onDestroy()>',79,'s',NULL),(62,81,'<com.tutusw.phonespeedup.Home$clicker: void onClick(android.view.View)>',97,'a',NULL),(63,78,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',67,'r',NULL),(64,51,'<com.google.ssearch.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(65,23,'<com.tutusw.phonespeedup.IntroActivity: void launchMarket()>',4,'a',NULL),(66,23,'<com.tutusw.phonespeedup.IntroActivity: void launchCupcake()>',3,'a',NULL),(67,82,'<com.madhouse.android.ads._: com.madhouse.android.ads.c _(android.content.Context)>',11,'p',NULL),(68,83,'<com.adwo.adsdk.g: void run()>',59,'a',NULL),(69,54,'<com.evilsunflower.picturepuzzle.Main: void switchToPuzzleView()>',39,'s',NULL),(70,56,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',44,'a',NULL),(71,85,'<com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener: void onClick(android.view.View)>',7,'a',NULL),(72,56,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',35,'a',NULL),(73,87,'<com.mobclix.android.sdk.MobclixCreative$Action: void loadUrl()>',133,'a',NULL),(74,87,'<com.mobclix.android.sdk.MobclixCreative$Action: void loadUrl()>',101,'a',NULL),(75,56,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onCreate(android.os.Bundle)>',129,'p',NULL),(76,87,'<com.mobclix.android.sdk.MobclixCreative$Action: void loadUrl()>',93,'a',NULL),(77,87,'<com.mobclix.android.sdk.MobclixCreative$Action: boolean act()>',69,'a',NULL),(78,60,'<com.evilsunflower.picturepuzzle.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(79,56,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',64,'a',NULL),(80,89,'<com.evilsunflower.picturepuzzle.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(81,56,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',60,'a',0),(82,56,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',53,'a',NULL),(83,87,'<com.mobclix.android.sdk.MobclixCreative$Action: void loadUrl()>',81,'a',NULL),(84,111,'<com.baidu.as: void e(com.baidu.bl)>',23,'a',NULL),(85,95,'<com.evilsunflower.reader.BookmarksActivity: boolean onContextItemSelected(android.view.MenuItem)>',19,'a',NULL),(86,112,'<com.ju6.c: boolean b()>',192,'p',NULL),(87,101,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',181,'a',NULL),(88,113,'<com.millennialmedia.android.MillennialMediaView: void openVideo()>',10,'r',NULL),(89,114,'<com.ju6.mms.util.SqliteWrapper: android.net.Uri insert(android.content.Context,android.content.ContentResolver,android.net.Uri,android.content.ContentValues)>',4,'p',NULL),(90,115,'<net.youmi.android.t: void onClick(android.view.View)>',48,'a',NULL),(91,116,'<com.evilsunflower.reader.ui.BugReportActivity$1: void onClick(android.view.View)>',21,'a',NULL),(92,117,'<com.baidu.al: void onClick(android.view.View)>',24,'a',NULL),(93,114,'<com.ju6.mms.util.SqliteWrapper: int update(android.content.Context,android.content.ContentResolver,android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',6,'p',NULL),(94,118,'<cn.domob.android.ads.o: void v(cn.domob.android.ads.o)>',6,'a',NULL),(95,101,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',189,'a',NULL),(96,101,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',209,'a',NULL),(97,119,'<com.guohead.sdk.adapters.CustomAdapter$4: void onClick(android.view.View)>',4,'a',NULL),(98,101,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',218,'a',NULL),(99,112,'<com.ju6.c: void run()>',146,'p',NULL),(100,120,'<com.ju6.mms.pdu.PduPersister: void a(com.ju6.mms.pdu.PduPart,android.net.Uri,java.lang.String)>',23,'p',0),(101,114,'<com.ju6.mms.util.SqliteWrapper: android.database.Cursor query(android.content.Context,android.content.ContentResolver,android.net.Uri,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String)>',7,'p',NULL),(102,121,'<com.madhouse.android.ads._: com.madhouse.android.ads.m _(android.content.Context)>',11,'p',NULL),(103,101,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',158,'a',NULL),(104,122,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor m(android.content.Context)>',11,'p',NULL),(105,123,'<com.guohead.sdk.adapters.CustomAdapter$3: void onClick(android.view.View)>',4,'a',NULL),(106,91,'<com.evilsunflower.reader.FBReader: void onStart()>',14,'a',NULL),(107,112,'<com.ju6.c: boolean b()>',272,'p',NULL),(108,112,'<com.ju6.c: boolean b()>',195,'p',0),(109,124,'<cn.domob.android.ads.o$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(110,101,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',229,'a',NULL),(111,101,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',237,'a',NULL),(112,125,'<net.youmi.android.be: void a(android.content.Context,java.lang.String)>',6,'a',NULL),(113,126,'<cn.domob.android.a.a$a: java.net.Proxy a(android.content.Context)>',72,'p',NULL),(114,127,'<cn.domob.android.ads.g$1: void onClick(android.content.DialogInterface,int)>',8,'a',0),(115,91,'<com.evilsunflower.reader.FBReader: void onNewIntent(android.content.Intent)>',17,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,14),(2,4,1),(3,5,1),(4,6,1),(5,8,1),(6,14,16),(7,15,16),(8,18,16),(9,20,16),(10,21,16),(11,23,16),(12,25,16),(13,27,16),(14,29,1),(15,28,14),(16,30,1),(17,31,1),(18,33,1),(19,37,18),(20,38,19),(21,40,20),(22,41,19),(23,43,19),(24,48,21),(25,53,25),(26,54,13),(27,58,1),(28,59,1),(29,63,13),(30,66,14),(31,68,25),(32,69,25),(33,72,19),(34,73,25),(35,75,19),(36,77,27),(37,78,28),(38,79,29),(39,80,19),(40,81,29),(41,82,28),(42,83,28),(43,84,19),(44,85,19),(45,86,27),(46,87,19),(47,88,19),(48,89,19),(49,90,29),(50,91,28),(51,92,28),(52,93,28),(53,94,28),(54,95,29),(55,96,19),(56,97,19),(57,98,28),(58,99,19),(59,101,28),(60,102,19),(61,103,29),(62,104,19),(63,105,30),(64,106,19),(65,107,30),(66,108,28),(67,109,19),(68,110,27),(69,112,16),(70,113,16),(71,114,16),(72,115,16),(73,116,16),(74,117,16),(75,118,16),(76,119,16),(77,120,19),(78,121,19),(79,123,32),(80,124,33),(81,126,19),(82,127,19),(83,128,19),(84,129,19),(85,133,32),(86,134,33),(87,135,1),(88,136,1),(89,137,16),(90,138,16),(91,139,16),(92,140,16),(93,141,16),(94,142,16),(95,143,16),(96,144,16),(97,146,19),(98,149,35),(99,150,16),(100,151,16),(101,152,16),(102,153,16),(103,154,16),(104,155,16),(105,156,16),(106,157,16),(107,158,28),(108,159,19),(109,160,19),(110,161,19),(111,162,27),(112,165,19),(113,168,19),(114,170,19),(115,171,19),(116,172,19),(117,173,19),(118,174,19),(119,175,19),(120,176,19),(121,177,19),(122,178,19),(123,179,19),(124,180,19),(125,181,19),(126,182,19),(127,183,19),(128,184,19);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,4,2),(2,5,1),(3,6,1),(4,8,2),(5,29,2),(6,30,1),(7,31,1),(8,33,2),(9,58,1),(10,59,2),(11,135,1),(12,136,2);
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
INSERT INTO `IClasses` VALUES (1,1,'com/tutusw/onekeyvpn/service/OpenVpnService'),(2,3,'com/tutusw/onekeyvpn/service/OpenVpnService'),(3,7,'com/tutusw/onekeyvpn/service/OpenVpnService'),(4,9,'com/tutusw/onekeyvpn/service/OpenVpnService'),(5,10,'com/google/update/Dialog'),(6,11,'com/google/update/Dialog'),(7,12,'com/google/update/Dialog'),(8,13,'com/google/update/Dialog'),(9,16,'com/google/update/UpdateService'),(10,17,'com/google/update/Dialog'),(11,19,'com/google/update/Dialog'),(12,22,'com/google/update/Dialog'),(13,24,'com/google/update/UpdateService'),(14,26,'com/google/update/Dialog'),(15,32,'com/tutusw/onekeyvpn/service/OpenVpnService'),(16,34,'ad/imadpush/com/poster/AlarmService'),(17,35,'com/tutusw/onekeyvpn/service/OpenVpnService'),(18,36,'com/airpuh/ad/UpdateCheck'),(19,39,'org/iozhu/reboot1/BgSvc'),(20,42,'com/tutusw/onekeyvpn/AdvancedSettings'),(21,44,'com/tutusw/onekeyvpn/service/OpenVpnService'),(22,45,'org/iozhu/reboot1/BgSvc'),(23,46,'com/tutusw/phonespeedup/AdvancedActivity'),(24,47,'com/tutusw/phonespeedup/InfoActivity'),(25,49,'com/tutusw/phonespeedup/AboutActivity'),(26,50,'com/tutusw/phonespeedup/StresstestActivity'),(27,51,'com/tutusw/phonespeedup/ProfilesService'),(28,52,'com/tutusw/phonespeedup/ProfileEditActivity'),(29,55,'com/google/ssearch/Dialog'),(30,56,'com/google/ssearch/Dialog'),(31,57,'com/tutusw/phonespeedup/WidgetService'),(32,60,'com/tutusw/phonespeedup/IntroActivity'),(33,61,'com/tutusw/phonespeedup/PerflockActivity'),(34,62,'com/tutusw/phonespeedup/WidgetService'),(35,64,'com/google/ssearch/Dialog'),(36,65,'com/google/ssearch/Dialog'),(37,67,'com/tutusw/phonespeedup/ProfilesService'),(38,70,'com/tutusw/phonespeedup/IntroActivity'),(39,71,'com/tutusw/phonespeedup/ProfilesService'),(40,74,'com/google/ssearch/SearchService'),(41,76,'com/tutusw/phonespeedup/Setcpu'),(42,85,'com.google.android.maps.MapsActivity'),(43,97,'com/adwo/adsdk/AdwoAdBrowserActivity'),(44,99,'com.google.android.maps.MapsActivity'),(45,102,'com.google.android.maps.MapsActivity'),(46,104,'com.google.android.maps.MapsActivity'),(47,109,'com.google.android.maps.MapsActivity'),(48,111,'com/evilsunflower/picturepuzzle/UpdateService'),(49,125,'com/mobclix/android/sdk/MobclixBrowserActivity'),(50,130,'com/mobclix/android/sdk/MobclixBrowserActivity'),(51,131,'com/evilsunflower/picturepuzzle/UpdateService'),(52,145,'com/mobclix/android/sdk/MobclixBrowserActivity'),(53,147,'com/evilsunflower/reader/BookmarkEditActivity'),(54,148,'com/millennialmedia/android/MMAdViewOverlayActivity'),(55,159,'com.android.browser.BrowserActivity'),(56,164,'com/millennialmedia/android/MMAdViewOverlayActivity'),(57,167,'com.evilsunflower.reader.FBReader'),(58,185,'com.evilsunflower.reader.FBReader');
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,38,1),(2,41,2),(3,43,3),(4,72,4),(5,75,5),(6,77,7),(7,78,8),(8,79,9),(9,80,10),(10,81,11),(11,82,12),(12,83,13),(13,84,14),(14,86,15),(15,87,16),(16,88,17),(17,90,18),(18,91,19),(19,94,20),(20,96,21),(21,98,22),(22,99,23),(23,101,24),(24,102,25),(25,103,26),(26,104,27),(27,106,28),(28,108,29),(29,109,30),(30,120,31),(31,121,32),(32,126,33),(33,127,34),(34,128,36),(35,129,37),(36,146,38),(37,148,40),(38,159,44),(39,160,46),(40,161,47),(41,162,48),(42,164,49),(43,165,54),(44,168,57),(45,170,58),(46,171,59),(47,172,60),(48,173,61),(49,174,62),(50,175,63),(51,176,64),(52,177,65),(53,178,66),(54,179,67),(55,180,68),(56,181,69),(57,182,70),(58,183,71),(59,184,72);
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
INSERT INTO `IExtras` VALUES (1,10,'TYPEdsada'),(2,11,'TYPEdsada'),(3,12,'MSG'),(4,12,'TYPEdsada'),(5,13,'MSG'),(6,13,'TYPEdsada'),(7,14,'android.intent.extra.INTENT'),(8,15,'android.intent.extra.INTENT'),(9,17,'TYPEdsada'),(10,18,'android.intent.extra.TITLE'),(11,18,'android.intent.extra.INTENT'),(12,19,'MSG'),(13,19,'TYPEdsada'),(14,20,'android.intent.extra.INTENT'),(15,21,'android.intent.extra.TITLE'),(16,21,'android.intent.extra.INTENT'),(17,22,'TYPEdsada'),(18,23,'android.intent.extra.INTENT'),(19,26,'MSG'),(20,25,'android.intent.extra.TITLE'),(21,26,'TYPEdsada'),(22,25,'android.intent.extra.INTENT'),(23,27,'android.intent.extra.TITLE'),(24,27,'android.intent.extra.INTENT'),(25,40,'org.openintents.extra.TITLE'),(26,42,'hasDaemonsStarted'),(27,55,'TYPEdsada'),(28,56,'MSG'),(29,56,'TYPEdsada'),(30,64,'TYPEdsada'),(31,65,'MSG'),(32,65,'TYPEdsada'),(33,78,'android.intent.extra.TEXT'),(34,78,'android.intent.extra.SUBJECT'),(35,78,'android.intent.extra.EMAIL'),(36,79,'sms_body'),(37,82,'android.intent.extra.EMAIL'),(38,83,'android.intent.extra.TEXT'),(39,83,'android.intent.extra.EMAIL'),(40,91,'android.intent.extra.EMAIL'),(41,93,'android.intent.extra.TEXT'),(42,93,'android.intent.extra.SUBJECT'),(43,93,'android.intent.extra.EMAIL'),(44,94,'android.intent.extra.TEXT'),(45,94,'android.intent.extra.SUBJECT'),(46,94,'android.intent.extra.EMAIL'),(47,97,'url'),(48,101,'android.intent.extra.TEXT'),(49,101,'android.intent.extra.EMAIL'),(50,103,'sms_body'),(51,105,'query'),(52,112,'android.intent.extra.INTENT'),(53,113,'android.intent.extra.INTENT'),(54,114,'android.intent.extra.TITLE'),(55,114,'android.intent.extra.INTENT'),(56,115,'android.intent.extra.INTENT'),(57,116,'android.intent.extra.TITLE'),(58,116,'android.intent.extra.INTENT'),(59,117,'android.intent.extra.INTENT'),(60,118,'android.intent.extra.TITLE'),(61,118,'android.intent.extra.INTENT'),(62,119,'android.intent.extra.TITLE'),(63,119,'android.intent.extra.INTENT'),(64,124,'output'),(65,124,'android.intent.extra.videoQuality'),(66,134,'output'),(67,134,'android.intent.extra.videoQuality'),(68,137,'android.intent.extra.INTENT'),(69,138,'android.intent.extra.INTENT'),(70,139,'android.intent.extra.TITLE'),(71,139,'android.intent.extra.INTENT'),(72,140,'android.intent.extra.INTENT'),(73,141,'android.intent.extra.TITLE'),(74,141,'android.intent.extra.INTENT'),(75,142,'android.intent.extra.INTENT'),(76,143,'android.intent.extra.TITLE'),(77,143,'android.intent.extra.INTENT'),(78,144,'android.intent.extra.TITLE'),(79,144,'android.intent.extra.INTENT'),(80,148,'cachedAdView'),(81,149,'command'),(82,150,'android.intent.extra.INTENT'),(83,151,'android.intent.extra.INTENT'),(84,152,'android.intent.extra.TITLE'),(85,152,'android.intent.extra.INTENT'),(86,153,'android.intent.extra.INTENT'),(87,154,'android.intent.extra.TITLE'),(88,154,'android.intent.extra.INTENT'),(89,155,'android.intent.extra.INTENT'),(90,156,'android.intent.extra.TITLE'),(91,156,'android.intent.extra.INTENT'),(92,157,'android.intent.extra.TITLE'),(93,157,'android.intent.extra.INTENT'),(94,158,'android.intent.extra.TEXT'),(95,158,'android.intent.extra.SUBJECT'),(96,158,'android.intent.extra.EMAIL'),(97,164,'cachedAdView');
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
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,1),(4,6,1),(5,8,2),(6,8,3),(7,8,4),(8,10,1),(9,11,1),(10,12,5),(11,13,4),(12,13,3),(13,13,2),(14,14,6),(15,15,2),(16,15,8),(17,15,9),(18,15,7),(19,15,10),(20,15,11),(21,16,12),(22,17,4),(23,17,2),(24,17,3),(25,18,2),(26,19,13),(27,19,6),(28,20,1),(29,21,2),(30,21,3),(31,21,4),(32,22,15),(33,23,17),(34,24,24),(35,24,23),(36,24,26),(37,24,25),(38,24,22),(39,25,26),(40,25,25),(41,25,24),(42,25,22),(43,25,23),(44,26,23),(45,26,24),(46,26,25),(47,26,26),(48,26,22),(49,27,25),(50,27,24),(51,27,23),(52,27,22),(53,27,26),(54,28,24),(55,28,23),(56,28,26),(57,28,25),(58,28,22),(59,29,23),(60,29,22),(61,29,26),(62,29,25),(63,29,24),(64,30,24),(65,30,23),(66,30,13),(67,31,13),(68,31,24),(69,31,23),(70,32,13),(71,32,23),(72,32,24),(73,33,23),(74,33,24),(75,33,13),(76,34,23),(77,34,24),(78,34,13),(79,35,23),(80,35,24),(81,35,13),(82,36,24),(83,36,23),(84,36,13),(85,37,24),(86,37,23),(87,37,13),(88,38,24),(89,38,23),(90,38,13),(91,39,23),(92,39,24),(93,39,13),(94,40,23),(95,40,24),(96,40,13),(97,41,23),(98,41,13),(99,41,24),(100,42,24),(101,42,23),(102,43,31),(103,43,23),(104,44,23),(105,44,24),(106,45,24),(107,45,23),(108,46,34),(109,47,1),(110,48,34),(111,49,22),(112,50,22),(113,51,22),(114,52,22),(115,53,17),(116,54,23),(117,54,24),(118,55,17);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,6,1),(4,10,1),(5,11,1),(6,20,1),(7,47,1);
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
INSERT INTO `IFData` VALUES (1,23,'package',NULL,NULL,NULL,NULL,NULL),(2,53,'package',NULL,NULL,NULL,NULL,NULL),(3,55,'package',NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `IMimeTypes` VALUES (1,80,'*','*'),(2,88,'(.*)','(.*)'),(3,93,'message','rfc882'),(4,96,'(.*)','(.*)'),(5,106,'*','*'),(6,123,'image','*'),(7,133,'image','*'),(8,146,'application','vnd.android.package-archive'),(9,158,'message','rfc822'),(10,168,'application','vnd.android.package-archive'),(11,170,'application','vnd.android.package-archive'),(12,171,'application','vnd.android.package-archive'),(13,172,'application','vnd.android.package-archive'),(14,173,'application','vnd.android.package-archive'),(15,176,'application','vnd.android.package-archive'),(16,177,'application','vnd.android.package-archive'),(17,178,'application','vnd.android.package-archive'),(18,179,'application','vnd.android.package-archive'),(19,180,'application','vnd.android.package-archive'),(20,181,'application','vnd.android.package-archive'),(21,182,'application','vnd.android.package-archive'),(22,183,'application','vnd.android.package-archive'),(23,184,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.tutusw.onekeyvpn'),(2,3,'com.tutusw.onekeyvpn'),(3,4,'com.ps.kickfly'),(4,5,'com.noshufou.android.su'),(5,6,'com.ps.kickfly'),(6,7,'com.tutusw.onekeyvpn'),(7,8,'com.noshufou.android.su'),(8,9,'com.tutusw.onekeyvpn'),(9,10,'com.ps.kickfly'),(10,11,'com.ps.kickfly'),(11,12,'com.ps.kickfly'),(12,13,'com.ps.kickfly'),(13,16,'com.ps.kickfly'),(14,17,'com.ps.kickfly'),(15,19,'com.ps.kickfly'),(16,22,'com.ps.kickfly'),(17,24,'com.ps.kickfly'),(18,26,'com.ps.kickfly'),(19,29,'com.ps.kickfly'),(20,30,'com.ps.kickfly'),(21,31,'com.noshufou.android.su'),(22,32,'com.tutusw.onekeyvpn'),(23,33,'com.noshufou.android.su'),(24,34,'org.iozhu.reboot1'),(25,35,'com.tutusw.onekeyvpn'),(26,36,'org.iozhu.reboot1'),(27,39,'org.iozhu.reboot1'),(28,42,'com.tutusw.onekeyvpn'),(29,44,'com.tutusw.onekeyvpn'),(30,45,'org.iozhu.reboot1'),(31,46,'com.tutusw.phonespeedup'),(32,47,'com.tutusw.phonespeedup'),(33,49,'com.tutusw.phonespeedup'),(34,50,'com.tutusw.phonespeedup'),(35,51,'com.tutusw.phonespeedup'),(36,52,'com.tutusw.phonespeedup'),(37,55,'com.tutusw.phonespeedup'),(38,56,'com.tutusw.phonespeedup'),(39,57,'com.tutusw.phonespeedup'),(40,58,'com.tutusw.phonespeedup'),(41,59,'com.tutusw.phonespeedup'),(42,60,'com.tutusw.phonespeedup'),(43,61,'com.tutusw.phonespeedup'),(44,62,'com.tutusw.phonespeedup'),(45,64,'com.tutusw.phonespeedup'),(46,65,'com.tutusw.phonespeedup'),(47,67,'com.tutusw.phonespeedup'),(48,70,'com.tutusw.phonespeedup'),(49,71,'com.tutusw.phonespeedup'),(50,74,'com.tutusw.phonespeedup'),(51,76,'com.tutusw.phonespeedup'),(52,85,'com.google.android.apps.maps'),(53,97,'com.evilsunflower.picturepuzzle'),(54,99,'com.google.android.apps.maps'),(55,102,'com.google.android.apps.maps'),(56,104,'com.google.android.apps.maps'),(57,109,'com.google.android.apps.maps'),(58,111,'com.evilsunflower.picturepuzzle'),(59,125,'com.evilsunflower.picturepuzzle'),(60,130,'com.evilsunflower.picturepuzzle'),(61,131,'com.evilsunflower.picturepuzzle'),(62,135,'com.noshufou.android.su'),(63,136,'com.noshufou.android.su'),(64,145,'com.evilsunflower.picturepuzzle'),(65,147,'com.evilsunflower.reader.evilGuigu'),(66,148,'com.evilsunflower.reader.evilGuigu'),(67,159,'com.android.browser'),(68,164,'com.evilsunflower.reader.evilGuigu'),(69,167,'com.evilsunflower.reader.evilGuigu'),(70,185,'com.evilsunflower.reader.evilGuigu');
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,9,0),(3,10,0),(4,11,0),(5,12,0),(6,14,0),(7,17,0),(8,18,0),(9,20,0),(10,21,0),(11,23,0),(12,25,0),(13,28,0),(14,40,0),(15,43,0),(16,45,0),(17,51,0),(18,52,0),(19,53,0),(20,54,0),(21,60,0),(22,61,0),(23,62,0),(24,53,0),(25,51,0),(26,63,0),(27,64,0),(28,65,0),(29,66,0),(30,53,0),(31,51,0),(32,63,0),(33,64,0),(34,65,0),(35,66,0),(36,53,0),(37,51,0),(38,63,0),(39,64,0),(40,65,0),(41,66,0),(42,67,0),(43,68,0),(44,69,0),(45,67,0),(46,71,0),(47,71,0),(48,75,0),(49,87,0),(50,88,0),(51,89,0),(52,90,0),(53,90,0),(54,89,0),(55,90,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,3,0,0),(4,4,1,0),(5,5,1,0),(6,4,1,0),(7,7,0,0),(8,5,1,0),(9,8,0,0),(10,9,0,0),(11,10,0,0),(12,9,0,0),(13,10,0,0),(14,11,1,0),(15,11,1,0),(16,12,0,0),(17,13,0,0),(18,11,1,0),(19,13,0,0),(20,11,1,0),(21,11,1,0),(22,14,0,0),(23,11,1,0),(24,15,0,0),(25,11,1,0),(26,14,0,0),(27,11,1,0),(28,16,1,0),(29,17,1,0),(30,17,1,0),(31,20,1,0),(32,22,0,0),(33,20,1,0),(34,23,0,0),(35,25,0,0),(36,26,0,0),(37,27,1,0),(38,28,1,0),(39,31,0,0),(40,30,1,0),(41,32,1,0),(42,33,0,0),(43,34,1,0),(44,35,0,0),(45,37,0,0),(46,40,0,0),(47,40,0,0),(48,41,1,0),(49,40,0,0),(50,42,0,0),(51,43,0,0),(52,44,0,0),(53,45,1,0),(54,46,1,0),(55,47,0,0),(56,47,0,0),(57,48,0,0),(58,49,1,0),(59,49,1,0),(60,50,0,0),(61,52,0,0),(62,53,0,0),(63,54,1,0),(64,55,0,0),(65,55,0,0),(66,56,1,0),(67,57,0,0),(68,58,1,0),(69,59,1,0),(70,60,0,0),(71,61,0,0),(72,62,1,0),(73,63,1,0),(74,64,0,0),(75,65,1,0),(76,66,0,0),(77,68,1,0),(78,68,1,0),(79,68,1,0),(80,68,1,0),(81,68,1,0),(82,68,1,0),(83,68,1,0),(84,68,1,0),(85,68,0,0),(86,68,1,0),(87,68,1,0),(88,68,1,0),(89,68,1,0),(90,68,1,0),(91,68,1,0),(92,68,1,0),(93,68,1,0),(94,68,1,0),(95,68,1,0),(96,68,1,0),(97,68,0,0),(98,68,1,0),(99,68,0,0),(100,68,1,0),(101,68,1,0),(102,68,0,0),(103,68,1,0),(104,68,0,0),(105,68,1,0),(106,68,1,0),(107,68,1,0),(108,68,1,0),(109,68,0,0),(110,68,1,0),(111,69,0,0),(112,70,1,0),(113,70,1,0),(114,70,1,0),(115,70,1,0),(116,70,1,0),(117,70,1,0),(118,70,1,0),(119,70,1,0),(120,71,1,0),(121,71,1,0),(122,72,1,0),(123,72,1,0),(124,72,1,0),(125,73,0,0),(126,74,1,0),(127,74,1,0),(128,76,1,0),(129,76,1,0),(130,77,0,0),(131,78,0,0),(132,79,1,0),(133,79,1,0),(134,79,1,0),(135,80,1,0),(136,80,1,0),(137,82,1,0),(138,82,1,0),(139,82,1,0),(140,82,1,0),(141,82,1,0),(142,82,1,0),(143,82,1,0),(144,82,1,0),(145,83,0,0),(146,84,1,0),(147,85,0,0),(148,87,0,0),(149,88,1,0),(150,90,1,0),(151,90,1,0),(152,90,1,0),(153,90,1,0),(154,90,1,0),(155,90,1,0),(156,90,1,0),(157,90,1,0),(158,91,1,0),(159,92,0,0),(160,94,1,0),(161,95,1,0),(162,96,1,0),(163,97,1,0),(164,98,0,0),(165,103,1,0),(166,105,1,0),(167,106,0,0),(168,109,1,0),(169,109,1,0),(170,109,1,0),(171,109,1,0),(172,109,1,0),(173,109,1,0),(174,110,1,0),(175,111,1,0),(176,112,1,0),(177,112,1,0),(178,112,1,0),(179,112,1,0),(180,112,1,0),(181,112,1,0),(182,112,1,0),(183,112,1,0),(184,112,1,0),(185,115,0,0);
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
INSERT INTO `PermissionStrings` VALUES (10,'android.permission.ACCESS_COARSE_LOCATION'),(17,'android.permission.ACCESS_FINE_LOCATION'),(8,'android.permission.ACCESS_NETWORK_STATE'),(7,'android.permission.ACCESS_WIFI_STATE'),(3,'android.permission.BROADCAST_STICKY'),(6,'android.permission.CHANGE_WIFI_STATE'),(13,'android.permission.GET_TASKS'),(2,'android.permission.INTERNET'),(15,'android.permission.READ_CONTACTS'),(1,'android.permission.READ_PHONE_STATE'),(16,'android.permission.READ_SMS'),(9,'android.permission.REBOOT'),(4,'android.permission.RECEIVE_BOOT_COMPLETED'),(11,'android.permission.VIBRATE'),(12,'android.permission.WAKE_LOCK'),(5,'android.permission.WRITE_EXTERNAL_STORAGE'),(14,'android.permission.WRITE_SMS'),(18,'com.android.browser.permission.READ_HISTORY_BOOKMARKS');
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
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'market://search?q=pname:cc.etouch.music.main',NULL,NULL,NULL),(2,NULL,NULL,'market://search?q=pname:org.iozhu.expo2010',NULL,NULL,NULL),(3,NULL,NULL,'market://search?q=pub:Etouch.cc',NULL,NULL,NULL),(4,NULL,NULL,'market://search?q=pname:com.mhuang.overclocking',NULL,NULL,NULL),(5,NULL,NULL,'market://search?q=pname:com.mhuang.overclocking',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(8,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(9,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(10,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(11,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(12,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(15,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(18,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT((.*))&z=22',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'http://maps.google.com/maps?q=(.*)((.*))&z=22',NULL,NULL,NULL),(26,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(27,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT()&z=22',NULL,NULL,NULL),(28,NULL,NULL,'(.*)',NULL,NULL,NULL),(29,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(30,NULL,NULL,'http://maps.google.com/maps?q=(.*)()&z=22',NULL,NULL,NULL),(31,NULL,NULL,'(.*)',NULL,NULL,NULL),(32,NULL,NULL,'',NULL,NULL,NULL),(33,NULL,NULL,'(.*)',NULL,NULL,NULL),(34,NULL,NULL,'',NULL,NULL,NULL),(35,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(36,NULL,NULL,'(.*)',NULL,NULL,NULL),(37,NULL,NULL,'',NULL,NULL,NULL),(38,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(39,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(40,NULL,NULL,'(.*)',NULL,NULL,NULL),(41,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(42,NULL,NULL,'content://mms/inbox',NULL,NULL,NULL),(43,NULL,NULL,'content://mms/(.*)/addr',NULL,NULL,NULL),(44,NULL,NULL,'(.*)',NULL,NULL,NULL),(45,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(46,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(47,NULL,NULL,'(.*)',NULL,NULL,NULL),(48,NULL,NULL,'(.*)',NULL,NULL,NULL),(49,NULL,NULL,'(.*)',NULL,NULL,NULL),(50,NULL,NULL,'content://mms/',NULL,NULL,NULL),(51,NULL,NULL,'content://mms/',NULL,NULL,NULL),(52,NULL,NULL,'content://mms-sms/threadID',NULL,NULL,NULL),(53,NULL,NULL,'(.*)',NULL,NULL,NULL),(54,NULL,NULL,'(.*)',NULL,NULL,NULL),(55,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(56,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(57,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(58,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(59,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(60,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(61,NULL,NULL,'file://',NULL,NULL,NULL),(62,NULL,NULL,'(.*)',NULL,NULL,NULL),(63,NULL,NULL,'(.*)',NULL,NULL,NULL),(64,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(65,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(66,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(67,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(68,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(69,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(70,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(71,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(72,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL),(73,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,67,6),(2,75,35),(3,86,39),(4,89,41),(5,89,42),(6,89,43),(7,93,45),(8,99,50),(9,101,51),(10,101,52),(11,102,53),(12,104,55),(13,107,56),(14,113,73);
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
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,1),(5,2,2),(6,2,4),(7,2,5),(8,2,6),(9,2,7),(10,2,8),(11,3,1),(12,3,2),(13,3,4),(14,3,5),(15,3,6),(16,3,7),(17,3,8),(18,4,1),(19,4,2),(20,4,4),(21,4,7),(22,5,1),(23,4,8),(24,5,2),(25,5,4),(26,4,9),(27,4,10),(28,5,5),(29,5,6),(30,5,7),(31,5,8),(32,5,11),(33,5,12),(34,6,17),(35,6,16),(36,6,1),(37,6,2),(38,6,18),(39,6,5),(40,6,7),(41,6,8),(42,6,10),(43,6,12),(44,6,13),(45,6,14),(46,6,15),(47,7,17),(48,7,16),(49,7,1),(50,7,2),(51,7,18),(52,7,5),(53,7,7),(54,7,8),(55,7,10),(56,7,12),(57,7,14);
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

-- Dump completed on 2015-10-09  0:38:13
