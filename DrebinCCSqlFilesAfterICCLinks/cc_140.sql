-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_140
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (21,'action.service.started'),(5,'android.appwidget.action.APPWIDGET_UPDATE'),(30,'android.intent.action.BATTERY_CHANGED'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(2,'android.intent.action.BOOT_COMPLETED'),(19,'android.intent.action.CHOOSER'),(14,'android.intent.action.DIAL'),(12,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(13,'android.intent.action.PACKAGE_ADDED'),(26,'android.intent.action.SCREEN_OFF'),(28,'android.intent.action.SCREEN_ON'),(20,'android.intent.action.SEARCH'),(15,'android.intent.action.SEND'),(16,'android.intent.action.SENDTO'),(3,'android.intent.action.SIG_STR'),(27,'android.intent.action.SIM_STATE_CHANGED'),(25,'android.intent.action.TIMEZONE_CHANGED'),(24,'android.intent.action.TIME_SET'),(23,'android.intent.action.TIME_TICK'),(17,'android.intent.action.VIEW'),(22,'android.intent.action.WEB_SEARCH'),(8,'android.net.conn.CONNECTIVITY_CHANGE'),(6,'android.net.wifi.WIFI_STATE_CHANGED'),(29,'com.android.music.musicservicecommand'),(18,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(11,'com.livegame.action.PICK_DIRECTORY'),(10,'com.livegame.action.PICK_FILE'),(9,'com.safetest.myapn.widget.rotate.CLICK'),(7,'com.safetest.myapn.widget.switch.CLICK');
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
INSERT INTO `Applications` VALUES (1,'android.cxjf.bootstartsetting',8),(2,'com.safetest.lockexpert',21),(3,'com.safetest.myapn',20),(4,'com.gp.solitaire',459),(5,'com.gp.tiltmazes',8),(6,'com.livegame.filemanager',8),(7,'com.evilsunflower.reader.evilLiangxing',1);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(3,'android.intent.category.HOME'),(5,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(4,'android.intent.category.OPENABLE');
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
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'android.cxjf.bootstartsetting.BootStartSettingActivity'),(2,1,'android.cxjf.bootstartsetting.AppSettingActivity'),(3,1,'ad.imadpush.com.poster.PosterInfoActivity'),(4,1,'com.airpuh.ad.UpdateCheck'),(5,1,'ad.imadpush.com.poster.AlarmService'),(6,1,'android.cxjf.bootstartsetting.BootReceive'),(7,1,'ad.imadpush.com.poster.ReceiverAlarm'),(8,2,'com.safetest.lockexpert.activity.MainActivity'),(9,2,'com.safetest.lockexpert.activity.LockActivity'),(10,2,'com.safetest.lockexpert.activity.ThemeListActivity'),(11,2,'com.safetest.lockexpert.activity.ThemeGalleryActivity'),(12,2,'com.safetest.lockexpert.activity.DigitalClockActivity'),(13,2,'com.safetest.lockexpert.activity.AnalogClockActivity'),(14,2,'com.safetest.lockexpert.activity.PrefActivity'),(15,2,'com.safetest.lockexpert.ShowTips'),(16,2,'com.safetest.lockexpert.activity.JackActivity'),(17,2,'com.safetest.lockexpert.activity.boring.BoringActivity1'),(18,2,'com.safetest.lockexpert.activity.boring.BoringActivity2'),(19,2,'com.safetest.lockexpert.activity.boring.BoringActivity3'),(20,2,'com.safetest.lockexpert.activity.boring.BoringActivity4'),(21,2,'com.safetest.lockexpert.activity.boring.BoringActivity5'),(22,2,'com.safetest.lockexpert.activity.boring.BoringActivity6'),(23,2,'com.safetest.lockexpert.UpdateService'),(24,2,'com.safetest.lockexpert.service.SleepService'),(25,2,'com.safetest.lockexpert.service.BgDlService'),(26,3,'com.safetest.myapn.InitialActivity'),(27,2,'com.safetest.lockexpert.Receiver'),(28,3,'com.safetest.myapn.PreferenceActivity'),(29,2,'com.safetest.lockexpert.broadcast.DlReceiver'),(30,3,'com.safetest.myapn.HelpActivity'),(31,2,'com.safetest.lockexpert.broadcast.BootReceiver'),(32,3,'com.safetest.common.app.ActivationActivity'),(33,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(34,3,'com.safetest.myapn.ShowTips'),(35,3,'com.safetest.myapn.UpdateService'),(36,3,'com.safetest.myapn.HiApnWidgetProvider'),(37,4,'com.gp.solitaire.Solitaire'),(38,3,'com.safetest.myapn.HiApnSwitcherWidgetProvider'),(39,6,'com.livegame.filemanager.FileManagerActivity'),(40,4,'com.google.update.Dialog'),(41,3,'com.safetest.myapn.HiApnRotaterWidgetProvider'),(42,5,'com.gp.tiltmazes.TiltMazesActivity'),(43,4,'cn.domob.android.ads.DomobActivity'),(44,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(45,3,'com.safetest.myapn.Receiver'),(46,5,'com.gp.tiltmazes.SelectMazeActivity'),(47,4,'com.google.update.UpdateService'),(48,5,'com.google.update.Dialog'),(49,4,'com.google.update.Receiver'),(50,5,'cn.domob.android.ads.DomobActivity'),(51,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(52,5,'com.waps.OffersWebView'),(53,5,'com.google.update.UpdateService'),(54,1,'ad.imadpush.com.poster.PosterInfoActivity$PackageReceiver'),(55,5,'com.google.update.Receiver'),(56,6,'com.livegame.filemanager.PreferenceActivity'),(57,6,'com.livegame.distribution.EulaActivity'),(58,6,'com.livegame.distribution.NewVersionActivity'),(59,6,'com.google.ads.AdActivity'),(60,6,'com.vpon.adon.android.WebInApp'),(61,6,'com.adwo.adsdk.AdwoSplashAdActivity'),(62,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(63,6,'com.waps.OffersWebView'),(64,6,'com.google.update.Dialog'),(65,6,'com.google.update.UpdateService'),(66,6,'com.google.update.Receiver'),(67,6,'com.livegame.filemanager.FileManagerProvider'),(68,3,'com.adwo.adsdk.g'),(69,4,'cn.domob.android.ads.i'),(70,4,'cn.domob.android.ads.DomobActionReceiver'),(71,6,'com.waps.ac'),(72,4,'com.google.update.Dialog$1'),(73,2,'net.fet.android.license.sdk.MiscUtilities'),(74,2,'net.fet.android.license.sdk.LicenseToolkit'),(75,4,'com.google.update.Dialog$2'),(76,4,'cn.domob.android.ads.DomobAdManager'),(77,4,'com.google.update.UpdateService$AA'),(78,2,'com.safetest.lockexpert.service.SleepService$EventReceiver'),(79,2,'com.safetest.lockexpert.activity.LockActivity$MyBroadcastReceiver'),(80,6,'com.google.update.Dialog$2'),(81,5,'com.waps.o'),(82,5,'com.google.update.UpdateService$AA'),(83,4,'cn.domob.android.ads.i$6'),(84,6,'com.waps.z'),(85,2,'com.safetest.lockexpert.activity.boring.BaseBoringActivity'),(86,6,'com.waps.AppConnect'),(87,3,'com.safetest.myapn.HelpActivity$3'),(88,5,'cn.domob.android.ads.DomobAdManager'),(89,3,'com.safetest.myapn.ShowTips$1'),(90,4,'cn.domob.android.ads.DomobAdEngine$2'),(91,6,'com.waps.aa'),(92,2,'com.safetest.lockexpert.activity.BaseActivity'),(93,3,'com.safetest.myapn.PreferenceActivity$8'),(94,5,'com.waps.z'),(95,3,'com.safetest.myapn.HelpActivity$6$1'),(96,2,'net.fet.android.license.sdk.PaymentInfo'),(97,3,'com.safetest.myapn.ApnDao'),(98,5,'com.google.update.Dialog$2'),(99,6,'com.google.update.Dialog$1'),(100,5,'cn.domob.android.ads.DomobActionReceiver'),(101,3,'com.safetest.myapn.HelpActivity$4'),(102,6,'com.waps.q'),(103,2,'com.safetest.lockexpert.ShowTips$1'),(104,5,'com.waps.aa'),(105,6,'com.google.update.UpdateService$AA'),(106,2,'com.safetest.lockexpert.activity.LockActivity$InitialThread'),(107,3,'com.safetest.myapn.Util'),(108,7,'com.evilsunflower.reader.evilLiangxing.BugReportActivity'),(109,7,'com.evilsunflower.reader.FBReader'),(110,6,'com.waps.o'),(111,7,'com.evilsunflower.reader.CancelActivity'),(112,7,'com.evilsunflower.reader.image.ImageViewActivity'),(113,7,'com.evilsunflower.reader.TOCActivity'),(114,5,'com.google.update.Dialog$1'),(115,7,'com.evilsunflower.reader.BookmarksActivity'),(116,7,'com.evilsunflower.reader.BookmarkEditActivity'),(117,2,'com.safetest.lockexpert.utils.LockUtils'),(118,7,'com.evilsunflower.reader.Starter'),(119,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(120,7,'com.vpon.adon.android.WebInApp'),(121,5,'com.waps.ac'),(122,7,'com.millennialmedia.android.MMAdViewOverlayActivity'),(123,7,'com.millennialmedia.android.VideoPlayer'),(124,7,'net.youmi.android.AdActivity'),(125,7,'com.google.ads.AdActivity'),(126,7,'cn.domob.android.ads.DomobActivity'),(127,7,'com.baidu.AppActivity'),(128,5,'cn.domob.android.ads.DomobAdEngine$2'),(129,7,'com.guohead.sdk.GuoheAdActivity'),(130,5,'cn.domob.android.ads.i'),(131,5,'cn.domob.android.ads.i$6'),(132,5,'com.waps.q'),(133,7,'cn.domob.android.ads.o'),(134,7,'net.youmi.android.be'),(135,7,'com.millennialmedia.android.MillennialMediaView'),(136,7,'com.ju6.c'),(137,7,'net.youmi.android.eo'),(138,7,'com.evilsunflower.reader.ui.ZLAndroidActivity$1'),(139,7,'com.adwo.adsdk.M'),(140,7,'cn.domob.android.ads.e'),(141,7,'cn.domob.android.ads.DomobAdManager'),(142,7,'net.youmi.android.t'),(143,7,'com.ju6.mms.util.SqliteWrapper'),(144,7,'com.baidu.al'),(145,7,'com.baidu.as'),(146,7,'com.evilsunflower.reader.ui.BugReportActivity$1'),(147,7,'com.guohead.sdk.adapters.CustomAdapter$4'),(148,7,'com.madhouse.android.ads._'),(149,7,'com.guohead.sdk.adapters.CustomAdapter$3'),(150,7,'cn.domob.android.ads.o$5'),(151,7,'com.ju6.mms.pdu.PduPersister'),(152,7,'cn.domob.android.ads.g$1'),(153,7,'cn.domob.android.a.a$a');
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
) ENGINE=InnoDB AUTO_INCREMENT=234 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,3,'dId'),(2,5,'ad.imadpush.com'),(3,4,'MYAD_PID'),(4,3,'push'),(5,3,'userId'),(6,3,'notifyId'),(7,36,'FROM_CLASS'),(8,41,'FROM_CLASS'),(9,26,'started'),(10,33,'transitionTime'),(11,63,'ACTIVITY_FLAG'),(12,62,'shouldMakeOverlayTransparent'),(13,47,'DOMOB_TEST_MODE'),(14,39,'com.livegame.extra.WRITEABLE_ONLY'),(15,37,'DOMOB_TEST_MODE'),(16,44,'DOMOB_TEST_MODE'),(17,44,'overlayTitle'),(18,44,'shouldEnableBottomBar'),(19,61,'isTestMode'),(20,63,'UrlPath'),(21,60,'url'),(22,61,'Adwo_PID'),(23,63,'URL'),(24,60,'adWidth'),(25,63,'Notify_Id'),(26,63,'WAPS_PID'),(27,39,'WAPS_PID'),(28,63,'APP_ID'),(29,39,'APP_ID'),(30,13,'filePath'),(31,12,'dateFormat'),(32,23,'SAFE_PID'),(33,44,'overlayTransition'),(34,40,'TYPEdsada'),(35,44,'shouldMakeOverlayTransparent'),(36,44,'transitionTime'),(37,43,'appId'),(38,47,'DOMOB_ALLOW_LOCATION'),(39,37,'DOMOB_ALLOW_LOCATION'),(40,44,'DOMOB_ALLOW_LOCATION'),(41,44,'shouldShowTitlebar'),(42,44,'shouldResizeOverlay'),(43,12,'timeFormat'),(44,23,'SAFE_START'),(45,47,'ST_MY_PID'),(46,47,'DOMOB_PID'),(47,37,'DOMOB_PID'),(48,52,'CLIENT_PACKAGE'),(49,44,'DOMOB_PID'),(50,42,'CLIENT_PACKAGE'),(51,43,'appName'),(52,52,'Notify_Id'),(53,63,'SHWO_FLAG'),(54,52,'USER_ID'),(55,62,'url'),(56,52,'DEVICE_ID'),(57,63,'isFinshClose'),(58,42,'DEVICE_ID'),(59,39,'com.livegame.extra.BUTTON_TEXT'),(60,65,'ST_START_DELAY'),(61,40,'MSG'),(62,43,'actType'),(63,12,'dateFont'),(64,38,'FROM_CLASS'),(65,33,'overlayTitle'),(66,62,'transitionTime'),(67,52,'WAPS_ID'),(68,34,'MM'),(69,42,'WAPS_ID'),(70,53,'ST_START_DELAY'),(71,50,'appId'),(72,50,'appName'),(73,33,'shouldShowBottomBar'),(74,52,'URL_PARAMS'),(75,63,'WAPS_ID'),(76,39,'WAPS_ID'),(77,63,'URL_PARAMS'),(78,9,'lock'),(79,52,'Offers_URL'),(80,48,'TYPEdsada'),(81,44,'shouldShowBottomBar'),(82,44,'url'),(83,47,'ST_START_DELAY'),(84,33,'shouldMakeOverlayTransparent'),(85,33,'url'),(86,39,'current_directory'),(87,52,'URL'),(88,50,'actType'),(89,15,'MM'),(90,63,'Offers_URL'),(91,52,'APP_ID'),(92,42,'APP_ID'),(93,51,'url'),(94,39,'show_directory_input'),(95,33,'shouldResizeOverlay'),(96,39,'UMENG_APPKEY'),(97,33,'overlayTransition'),(98,64,'MSG'),(99,62,'shouldShowTitlebar'),(100,58,'com.livegame.extra.launch_activity_class'),(101,57,'com.livegame.extra.launch_activity_class'),(102,52,'offers_webview_tag'),(103,53,'DOMOB_TEST_MODE'),(104,51,'DOMOB_TEST_MODE'),(105,51,'overlayTransition'),(106,42,'stepcount'),(107,52,'SHWO_FLAG'),(108,52,'Notify_Url_Params'),(109,53,'DOMOB_ALLOW_LOCATION'),(110,51,'DOMOB_ALLOW_LOCATION'),(111,62,'overlayTitle'),(112,33,'shouldShowTitlebar'),(113,35,'SAFE_START'),(114,39,'context_file'),(115,35,'SAFE_PID'),(116,33,'shouldEnableBottomBar'),(117,12,'timeFont'),(118,42,'map.goals'),(119,52,'isFinshClose'),(120,12,'timeColorStyle'),(121,51,'shouldShowTitlebar'),(122,12,'dateColorStyle'),(123,52,'UrlPath'),(124,18,'lock'),(125,65,'ST_MY_PID'),(126,17,'lock'),(127,39,'steps_back'),(128,20,'lock'),(129,62,'shouldEnableBottomBar'),(130,19,'lock'),(131,62,'shouldResizeOverlay'),(132,21,'lock'),(133,63,'CLIENT_PACKAGE'),(134,22,'lock'),(135,64,'TYPEdsada'),(136,63,'USER_ID'),(137,51,'shouldMakeOverlayTransparent'),(138,39,'context_text'),(139,9,'theme'),(140,42,'ball.y'),(141,62,'overlayTransition'),(142,63,'DEVICE_ID'),(143,39,'DEVICE_ID'),(144,39,'UMENG_CHANNEL'),(145,63,'offers_webview_tag'),(146,58,'com.livegame.extra.launch_activity_package'),(147,57,'com.livegame.extra.launch_activity_package'),(148,52,'ACTIVITY_FLAG'),(149,58,'com.livegame.extra.launch_activity_intent'),(150,52,'WAPS_PID'),(151,57,'com.livegame.extra.launch_activity_intent'),(152,42,'WAPS_PID'),(153,39,'com.livegame.extra.TITLE'),(154,51,'shouldResizeOverlay'),(155,48,'MSG'),(156,63,'Notify_Url_Params'),(157,53,'DOMOB_PID'),(158,62,'shouldShowBottomBar'),(159,51,'DOMOB_PID'),(160,39,'CLIENT_PACKAGE'),(161,51,'transitionTime'),(162,51,'shouldEnableBottomBar'),(163,42,'ball.x'),(164,42,'map.id'),(165,51,'shouldShowBottomBar'),(166,53,'ST_MY_PID'),(167,51,'overlayTitle'),(168,94,'tit'),(169,89,'shouldResizeOverlay'),(170,94,'clklogurl'),(171,94,'limg'),(172,95,'link'),(173,80,'query'),(174,87,'overlayTitle'),(175,93,'appId'),(176,94,'curl'),(177,80,'Adwo_PID'),(178,91,'172C94EDC717477aBF600D7898A64A8E'),(179,89,'shouldShowTitlebar'),(180,88,'url'),(181,90,'videoAd'),(182,93,'actType'),(183,89,'shouldMakeOverlayTransparent'),(184,80,'com.cdjm.reader.ui.androidActiviy.RequestedOrientation'),(185,90,'isCachedAd'),(186,89,'shouldEnableBottomBar'),(187,89,'overlayTitle'),(188,90,'shouldShowBottomBar'),(189,90,'adName'),(190,91,'D780FBF4215247bcBB1AC0AD33C474FE'),(191,90,'videoCompleted'),(192,89,'overlayTransition'),(193,89,'transitionTime'),(194,80,'GH_APPKEY'),(195,91,'D50EF1926ADD471892E72BCE6D7E032C'),(196,87,'shouldEnableBottomBar'),(197,89,'canAccelerate'),(198,90,'cached'),(199,87,'transitionTime'),(200,91,'EB80F3291A8E469c962CA133BDC549D7'),(201,84,'query'),(202,87,'shouldShowTitlebar'),(203,90,'DOMOB_PID'),(204,84,'DOMOB_PID'),(205,89,'DOMOB_PID'),(206,80,'DOMOB_PID'),(207,87,'DOMOB_PID'),(208,91,'DOMOB_PID'),(209,87,'shouldShowBottomBar'),(210,87,'url'),(211,93,'appName'),(212,94,'surl'),(213,87,'shouldMakeOverlayTransparent'),(214,80,'com.cdjm.reader.ui.androidActiviy.ChangeCounter'),(215,88,'adWidth'),(216,90,'DOMOB_ALLOW_LOCATION'),(217,84,'DOMOB_ALLOW_LOCATION'),(218,89,'DOMOB_ALLOW_LOCATION'),(219,80,'DOMOB_ALLOW_LOCATION'),(220,87,'DOMOB_ALLOW_LOCATION'),(221,91,'DOMOB_ALLOW_LOCATION'),(222,89,'shouldShowBottomBar'),(223,90,'logSet'),(224,87,'shouldResizeOverlay'),(225,87,'overlayTransition'),(226,89,'cachedAdView'),(227,90,'videoPosition'),(228,90,'DOMOB_TEST_MODE'),(229,84,'DOMOB_TEST_MODE'),(230,89,'DOMOB_TEST_MODE'),(231,80,'DOMOB_TEST_MODE'),(232,87,'DOMOB_TEST_MODE'),(233,91,'DOMOB_TEST_MODE');
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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'s',0,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'r',1,NULL,NULL),(7,7,'r',0,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'s',0,NULL,NULL),(24,24,'s',0,NULL,NULL),(25,25,'s',0,NULL,NULL),(26,26,'a',1,NULL,NULL),(27,27,'r',1,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'r',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,32,'a',0,NULL,NULL),(32,31,'r',1,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'s',0,NULL,NULL),(36,36,'r',1,NULL,NULL),(37,37,'a',1,NULL,NULL),(38,38,'r',1,NULL,NULL),(39,39,'a',1,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'r',1,NULL,NULL),(42,42,'a',1,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'r',1,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'s',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'r',1,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'s',0,NULL,NULL),(54,54,'r',1,NULL,NULL),(55,55,'r',1,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'s',0,NULL,NULL),(66,66,'r',1,NULL,NULL),(67,67,'p',0,NULL,NULL),(68,70,'r',1,NULL,NULL),(69,78,'r',1,22,NULL),(70,29,'r',1,22,NULL),(71,79,'r',1,22,NULL),(72,31,'r',1,22,NULL),(73,27,'r',1,22,NULL),(74,78,'r',1,NULL,NULL),(75,29,'r',1,NULL,NULL),(76,100,'r',1,NULL,NULL),(77,79,'r',1,NULL,NULL),(78,102,'r',1,NULL,NULL),(79,108,'a',0,NULL,NULL),(80,109,'a',1,NULL,NULL),(81,111,'a',0,NULL,NULL),(82,112,'a',0,NULL,NULL),(83,113,'a',0,NULL,NULL),(84,115,'a',1,NULL,NULL),(85,116,'a',0,NULL,NULL),(86,118,'a',0,NULL,NULL),(87,119,'a',0,NULL,NULL),(88,120,'a',0,NULL,NULL),(89,122,'a',0,NULL,NULL),(90,123,'a',0,NULL,NULL),(91,124,'a',0,NULL,NULL),(92,125,'a',0,NULL,NULL),(93,126,'a',0,NULL,NULL),(94,127,'a',0,NULL,NULL),(95,129,'a',0,NULL,NULL),(96,132,'r',1,NULL,NULL),(97,137,'r',1,NULL,NULL),(98,138,'r',1,NULL,NULL),(99,139,'r',1,NULL,NULL),(100,140,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,7),(2,2,26),(3,3,26),(4,4,26),(5,5,57),(6,5,58),(7,6,37),(8,6,44),(9,6,47),(10,7,49),(11,8,63),(12,9,47),(13,10,63),(14,11,40),(15,12,39),(16,13,8),(17,14,8),(18,15,40),(19,16,39),(20,17,14),(21,18,47),(22,18,44),(23,18,37),(24,19,24),(25,20,8),(26,21,47),(27,22,29),(28,23,47),(29,24,64),(30,25,52),(31,26,66),(32,27,8),(33,28,53),(34,29,37),(35,29,44),(36,29,47),(37,30,63),(38,31,8),(39,32,26),(40,33,18),(41,33,19),(42,33,17),(43,33,22),(44,33,20),(45,33,21),(46,34,39),(47,35,30),(48,36,8),(49,37,53),(50,37,51),(51,38,22),(52,38,21),(53,38,19),(54,38,20),(55,38,17),(56,38,18),(57,39,42),(58,40,34),(59,41,39),(60,42,13),(61,43,55),(62,45,63),(63,44,47),(64,44,44),(65,44,37),(66,46,45),(67,47,27),(68,48,52),(69,49,8),(70,50,28),(71,51,13),(72,52,52),(73,53,30),(74,54,39),(75,55,8),(76,56,26),(77,57,48),(78,58,26),(79,59,64),(80,60,26),(81,61,26),(82,62,53),(83,63,8),(84,64,30),(85,65,8),(86,66,65),(87,67,53),(88,68,14),(89,69,13),(90,70,39),(91,71,15),(92,72,52),(93,73,65),(94,74,9),(95,75,28),(96,75,26),(97,75,41),(98,75,38),(99,75,36),(100,76,8),(101,77,63),(102,78,8),(103,79,48),(104,80,63),(105,81,32),(106,81,8),(107,81,14),(108,82,52),(109,83,65),(110,84,53),(111,84,51),(112,85,51),(113,85,53),(114,86,51),(115,86,53),(116,87,52),(117,88,90),(118,88,91),(119,88,84),(120,88,80),(121,89,91),(122,89,90),(123,89,89),(124,89,80),(125,89,84),(126,89,87),(127,90,91),(128,91,84),(129,91,80),(130,91,90),(131,91,91),(132,92,80),(133,93,84),(134,93,91),(135,93,90),(136,93,80),(137,94,80),(138,95,84),(139,95,80),(140,95,90),(141,95,91),(142,95,89),(143,95,87),(144,96,91),(145,97,80),(146,98,84),(147,98,91),(148,98,80),(149,99,80),(150,100,84),(151,100,90),(152,100,91),(153,100,80),(154,101,91),(155,101,84),(156,101,80),(157,102,91),(158,103,80),(159,103,84),(160,103,91),(161,104,80),(162,104,84),(163,104,91),(164,105,80),(165,106,80),(166,107,80),(167,108,91),(168,108,80),(169,108,84),(170,109,80),(171,109,91),(172,109,90),(173,109,84),(174,110,80),(175,110,90),(176,110,89),(177,110,91),(178,110,87),(179,111,90),(180,111,91),(181,111,80),(182,111,84),(183,112,80),(184,113,90),(185,113,91),(186,113,89),(187,113,87),(188,113,84),(189,113,80),(190,114,84),(191,115,80),(192,116,90),(193,116,89),(194,116,87),(195,116,84),(196,116,80),(197,116,91),(198,117,84),(199,117,91),(200,117,90),(201,117,80),(202,118,91),(203,118,90),(204,118,80),(205,118,84),(206,119,80);
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
INSERT INTO `ExitPoints` VALUES (1,7,'<ad.imadpush.com.poster.ReceiverAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(2,26,'<com.safetest.myapn.InitialActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(3,26,'<com.safetest.myapn.InitialActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(4,68,'<com.adwo.adsdk.g: void run()>',59,'a',NULL),(5,57,'<com.livegame.distribution.EulaActivity: void startOriginalActivity()>',6,'a',NULL),(6,69,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(7,49,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(8,63,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(9,47,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(10,71,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(11,72,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(12,39,'<com.livegame.filemanager.FileManagerActivity: void openFile(java.io.File)>',30,'a',NULL),(13,73,'<net.fet.android.license.sdk.MiscUtilities: boolean isSdkCancel(android.content.Context)>',8,'p',NULL),(14,74,'<net.fet.android.license.sdk.LicenseToolkit: boolean isAppTerminationNotification(android.content.Context,net.fet.android.license.sdk.PaymentInfo)>',25,'p',NULL),(15,75,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(16,39,'<com.livegame.filemanager.FileManagerActivity: void sendFile(java.io.File)>',30,'a',NULL),(17,14,'<com.safetest.lockexpert.activity.PrefActivity: void upgrade()>',8,'a',NULL),(18,76,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(19,24,'<com.safetest.lockexpert.service.SleepService: void onCreate()>',59,'r',NULL),(20,8,'<com.safetest.lockexpert.activity.MainActivity: void onCreate(android.os.Bundle)>',62,'a',NULL),(21,77,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(22,29,'<com.safetest.lockexpert.broadcast.DlReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(23,47,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(24,80,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(25,81,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(26,66,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(27,74,'<net.fet.android.license.sdk.LicenseToolkit: net.fet.android.license.sdk.DeviceInfo getDeviceInfo(android.content.Context)>',7,'p',NULL),(28,82,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(29,83,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(30,84,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(31,74,'<net.fet.android.license.sdk.LicenseToolkit: java.util.List getValidLicense(android.content.Context)>',10,'p',NULL),(32,26,'<com.safetest.myapn.InitialActivity: void initialAdvertise()>',10,'s',NULL),(33,85,'<com.safetest.lockexpert.activity.boring.BaseBoringActivity: void onCreate(android.os.Bundle)>',12,'a',NULL),(34,86,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(35,87,'<com.safetest.myapn.HelpActivity$3: void onClick(android.view.View)>',4,'a',NULL),(36,8,'<com.safetest.lockexpert.activity.MainActivity: void onClick(android.view.View)>',14,'a',NULL),(37,88,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(38,85,'<com.safetest.lockexpert.activity.boring.BaseBoringActivity: void onCreate(android.os.Bundle)>',40,'a',NULL),(39,42,'<com.gp.tiltmazes.TiltMazesActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',33,'a',NULL),(40,89,'<com.safetest.myapn.ShowTips$1: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(41,39,'<com.livegame.filemanager.FileManagerActivity: void showSettings()>',3,'a',NULL),(42,13,'<com.safetest.lockexpert.activity.AnalogClockActivity: void onClick(android.view.View)>',10,'a',NULL),(43,55,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(44,90,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(45,91,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(46,45,'<com.safetest.myapn.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(47,27,'<com.safetest.lockexpert.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(48,52,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(49,92,'<com.safetest.lockexpert.activity.BaseActivity: void onClick(android.view.View)>',10,'a',NULL),(50,93,'<com.safetest.myapn.PreferenceActivity$8: void onClick(android.view.View)>',94,'a',NULL),(51,13,'<com.safetest.lockexpert.activity.AnalogClockActivity: void onClick(android.view.View)>',24,'a',NULL),(52,94,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(53,95,'<com.safetest.myapn.HelpActivity$6$1: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(54,39,'<com.livegame.filemanager.FileManagerActivity: void promptDestinationAndCopyFile()>',11,'a',NULL),(55,96,'<net.fet.android.license.sdk.PaymentInfo: net.fet.android.license.sdk.PaymentInfo createInstance(android.content.Context)>',19,'p',NULL),(56,97,'<com.safetest.myapn.ApnDao: void delete(java.lang.String)>',4,'p',NULL),(57,98,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(58,97,'<com.safetest.myapn.ApnDao: void insert(com.safetest.myapn.ApnDetailInfo)>',36,'p',NULL),(59,99,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(60,97,'<com.safetest.myapn.ApnDao: java.util.List queryAll()>',19,'p',NULL),(61,26,'<com.safetest.myapn.InitialActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',22,'a',NULL),(62,53,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(63,8,'<com.safetest.lockexpert.activity.MainActivity: void onClick(android.view.View)>',10,'a',NULL),(64,101,'<com.safetest.myapn.HelpActivity$4: void onClick(android.view.View)>',22,'a',NULL),(65,8,'<com.safetest.lockexpert.activity.MainActivity: void onCreate(android.os.Bundle)>',66,'s',NULL),(66,65,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(67,53,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(68,14,'<com.safetest.lockexpert.activity.PrefActivity: void upgrade()>',15,'a',NULL),(69,13,'<com.safetest.lockexpert.activity.AnalogClockActivity: void onClick(android.view.View)>',17,'a',NULL),(70,39,'<com.livegame.filemanager.FileManagerActivity: void promptDestinationAndMoveFile()>',11,'a',NULL),(71,103,'<com.safetest.lockexpert.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(72,104,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(73,105,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(74,106,'<com.safetest.lockexpert.activity.LockActivity$InitialThread: void run()>',146,'a',NULL),(75,107,'<com.safetest.myapn.Util: void sendToUpdateWidget(android.content.Context,java.lang.Class)>',13,'r',NULL),(76,73,'<net.fet.android.license.sdk.MiscUtilities: boolean isLogin(android.content.Context)>',5,'p',NULL),(77,110,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(78,74,'<net.fet.android.license.sdk.LicenseToolkit: void insertBehavior(android.content.Context)>',12,'p',NULL),(79,114,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(80,63,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(81,117,'<com.safetest.lockexpert.utils.LockUtils: void backgroundService(android.content.Context)>',7,'s',NULL),(82,121,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(83,65,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(84,128,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(85,130,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(86,131,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(87,52,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(88,123,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',218,'a',NULL),(89,133,'<cn.domob.android.ads.o: void v(cn.domob.android.ads.o)>',6,'a',NULL),(90,134,'<net.youmi.android.be: void a(android.content.Context,java.lang.String)>',6,'a',NULL),(91,135,'<com.millennialmedia.android.MillennialMediaView: void openVideo()>',10,'r',NULL),(92,136,'<com.ju6.c: void run()>',146,'p',NULL),(93,123,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',181,'a',NULL),(94,136,'<com.ju6.c: boolean b()>',195,'p',0),(95,141,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor m(android.content.Context)>',11,'p',NULL),(96,142,'<net.youmi.android.t: void onClick(android.view.View)>',48,'a',NULL),(97,143,'<com.ju6.mms.util.SqliteWrapper: android.net.Uri insert(android.content.Context,android.content.ContentResolver,android.net.Uri,android.content.ContentValues)>',4,'p',NULL),(98,144,'<com.baidu.al: void onClick(android.view.View)>',24,'a',NULL),(99,109,'<com.evilsunflower.reader.FBReader: void onStart()>',14,'a',NULL),(100,123,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',209,'a',NULL),(101,145,'<com.baidu.as: void e(com.baidu.bl)>',23,'a',NULL),(102,146,'<com.evilsunflower.reader.ui.BugReportActivity$1: void onClick(android.view.View)>',21,'a',NULL),(103,147,'<com.guohead.sdk.adapters.CustomAdapter$4: void onClick(android.view.View)>',4,'a',NULL),(104,148,'<com.madhouse.android.ads._: com.madhouse.android.ads.m _(android.content.Context)>',11,'p',NULL),(105,143,'<com.ju6.mms.util.SqliteWrapper: android.database.Cursor query(android.content.Context,android.content.ContentResolver,android.net.Uri,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String)>',7,'p',NULL),(106,143,'<com.ju6.mms.util.SqliteWrapper: int update(android.content.Context,android.content.ContentResolver,android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',6,'p',NULL),(107,136,'<com.ju6.c: boolean b()>',272,'p',NULL),(108,149,'<com.guohead.sdk.adapters.CustomAdapter$3: void onClick(android.view.View)>',4,'a',NULL),(109,123,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',229,'a',NULL),(110,150,'<cn.domob.android.ads.o$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(111,123,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',189,'a',NULL),(112,151,'<com.ju6.mms.pdu.PduPersister: void a(com.ju6.mms.pdu.PduPart,android.net.Uri,java.lang.String)>',23,'p',0),(113,152,'<cn.domob.android.ads.g$1: void onClick(android.content.DialogInterface,int)>',8,'a',0),(114,115,'<com.evilsunflower.reader.BookmarksActivity: boolean onContextItemSelected(android.view.MenuItem)>',19,'a',NULL),(115,109,'<com.evilsunflower.reader.FBReader: void onNewIntent(android.content.Intent)>',17,'a',NULL),(116,153,'<cn.domob.android.a.a$a: java.net.Proxy a(android.content.Context)>',72,'p',NULL),(117,123,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',237,'a',NULL),(118,123,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',158,'a',NULL),(119,136,'<com.ju6.c: boolean b()>',192,'p',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,4,14),(2,5,15),(3,6,16),(4,7,17),(5,8,16),(6,9,15),(7,10,15),(8,11,17),(9,12,17),(10,13,17),(11,14,14),(12,15,17),(13,16,17),(14,18,17),(15,20,16),(16,21,17),(17,22,15),(18,25,1),(19,26,15),(20,28,15),(21,29,1),(22,31,15),(23,33,16),(24,34,17),(25,35,1),(26,36,17),(27,37,15),(28,38,1),(29,39,17),(30,40,17),(31,41,18),(32,43,15),(33,44,19),(34,45,20),(35,46,19),(36,47,17),(37,48,19),(38,49,21),(39,50,19),(40,52,16),(41,53,19),(42,54,17),(43,56,1),(44,57,19),(45,58,19),(46,59,1),(47,60,22),(48,61,19),(49,62,17),(50,63,22),(51,65,15),(52,66,18),(53,67,17),(54,69,17),(55,71,14),(56,72,1),(57,73,17),(58,74,17),(59,75,1),(60,79,17),(61,83,17),(62,84,17),(63,86,17),(64,88,1),(65,90,17),(66,92,1),(67,98,1),(68,100,17),(69,101,1),(70,104,17),(71,105,17),(72,106,11),(73,107,18),(74,108,1),(75,109,1),(76,114,19),(77,117,19),(78,119,19),(79,120,17),(80,123,19),(81,125,19),(82,126,19),(83,127,11),(84,129,1),(85,128,19),(86,130,19),(87,131,1),(88,133,1),(89,135,5),(90,136,1),(91,138,17),(92,139,1),(93,141,1),(94,146,17),(95,147,17),(96,149,17),(97,150,17),(98,151,17),(99,152,17),(100,155,17),(101,156,17),(102,157,17),(103,158,17),(104,159,17),(105,160,17),(106,161,17),(107,162,17),(108,163,17),(109,164,17),(110,165,29),(111,167,19),(112,168,19),(113,169,19),(114,170,19),(115,171,19),(116,172,19),(117,173,19),(118,174,19),(119,175,17),(120,177,14),(121,178,17),(122,179,15),(123,182,17),(124,183,17),(125,185,17),(126,186,17),(127,187,17),(128,188,17),(129,189,17),(130,192,17),(131,193,17);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,25,1),(2,29,5),(3,35,1),(4,38,5),(5,56,1),(6,59,5),(7,72,5),(8,75,1),(9,88,1),(10,92,5),(11,98,1),(12,101,5),(13,108,1),(14,109,5),(15,129,1),(16,131,5),(17,133,1),(18,136,5),(19,139,1),(20,141,5);
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
INSERT INTO `IClasses` VALUES (1,1,'ad/imadpush/com/poster/AlarmService'),(2,2,'com/safetest/myapn/HelpActivity'),(3,3,'com/safetest/myapn/PreferenceActivity'),(4,12,'com/adwo/adsdk/AdwoAdBrowserActivity'),(5,13,'com.google.android.maps.MapsActivity'),(6,17,'(.*)'),(7,23,'com/google/update/UpdateService'),(8,27,'com/google/update/Dialog'),(9,30,'com/google/update/Dialog'),(10,32,'NULL-CONSTANT'),(11,39,'com.google.android.maps.MapsActivity'),(12,47,'com.google.android.maps.MapsActivity'),(13,51,'com/safetest/lockexpert/activity/PrefActivity'),(14,55,'com/safetest/lockexpert/service/BgDlService'),(15,54,'com.google.android.maps.MapsActivity'),(16,64,'com/google/update/Dialog'),(17,68,'com/google/update/Dialog'),(18,69,'com.google.android.maps.MapsActivity'),(19,70,'com/google/update/UpdateService'),(20,76,'com/safetest/myapn/UpdateService'),(21,78,'com/safetest/lockexpert/activity/LockActivity'),(22,82,'com/safetest/lockexpert/activity/ThemeListActivity'),(23,80,'com/waps/OffersWebView'),(24,85,'(.*)'),(25,87,'com/gp/tiltmazes/SelectMazeActivity'),(26,89,'com/livegame/filemanager/PreferenceActivity'),(27,93,'com/google/update/UpdateService'),(28,91,'com/safetest/lockexpert/activity/FileActivity'),(29,95,'com/safetest/myapn/UpdateService'),(30,96,'com/safetest/lockexpert/UpdateService'),(31,94,'com/waps/OffersWebView'),(32,102,'com/safetest/myapn/InitialActivity'),(33,99,'com/waps/OffersWebView'),(34,103,'com/safetest/lockexpert/activity/FileActivity'),(35,110,'com/safetest/common/app/ActivationActivity'),(36,111,'com/google/update/Dialog'),(37,112,'com/safetest/lockexpert/activity/ThemeGalleryActivity'),(38,113,'com/google/update/Dialog'),(39,115,'com/safetest/lockexpert/UpdateService'),(40,116,'com/google/update/Dialog'),(41,118,'com/google/update/Dialog'),(42,121,'com/google/update/Dialog'),(43,122,'com/google/update/Dialog'),(44,124,'com/safetest/lockexpert/activity/FileActivity'),(45,134,'com/safetest/lockexpert/activity/boring/BoringActivity1'),(46,132,'com/waps/OffersWebView'),(47,137,'com/waps/OffersWebView'),(48,140,'(.*)'),(49,142,'com/safetest/lockexpert/service/SleepService'),(50,143,'NULL-CONSTANT'),(51,144,'com/google/update/Dialog'),(52,145,'com/google/update/Dialog'),(53,153,'(.*)'),(54,154,'com/millennialmedia/android/MMAdViewOverlayActivity'),(55,166,'com/millennialmedia/android/MMAdViewOverlayActivity'),(56,175,'com.android.browser.BrowserActivity'),(57,176,'com.evilsunflower.reader.FBReader'),(58,190,'com/evilsunflower/reader/BookmarkEditActivity'),(59,191,'com.evilsunflower.reader.FBReader');
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,4,1),(2,5,2),(3,6,3),(4,7,4),(5,8,5),(6,9,6),(7,10,7),(8,11,8),(9,14,9),(10,15,10),(11,16,11),(12,20,12),(13,21,13),(14,22,14),(15,31,15),(16,34,16),(17,37,18),(18,36,19),(19,39,20),(20,40,22),(21,43,23),(22,47,25),(23,52,26),(24,54,27),(25,62,28),(26,65,29),(27,67,30),(28,69,31),(29,73,34),(30,74,35),(31,79,36),(32,84,38),(33,83,39),(34,86,40),(35,90,41),(36,100,42),(37,104,43),(38,105,44),(39,106,47),(40,120,50),(41,127,51),(42,138,54),(43,146,55),(44,147,56),(45,149,57),(46,150,58),(47,151,59),(48,152,60),(49,154,61),(50,155,62),(51,156,63),(52,157,64),(53,158,65),(54,159,66),(55,160,67),(56,161,68),(57,162,69),(58,163,70),(59,164,71),(60,166,73),(61,175,78),(62,177,79),(63,178,80),(64,182,86),(65,183,87),(66,185,88),(67,186,89),(68,187,90),(69,188,91),(70,189,92),(71,192,94),(72,193,95);
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
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,5,'android.intent.extra.TEXT'),(2,5,'android.intent.extra.SUBJECT'),(3,5,'android.intent.extra.EMAIL'),(4,6,'sms_body'),(5,9,'android.intent.extra.EMAIL'),(6,10,'android.intent.extra.TEXT'),(7,10,'android.intent.extra.EMAIL'),(8,12,'url'),(9,22,'android.intent.extra.EMAIL'),(10,27,'MSG'),(11,27,'TYPEdsada'),(12,28,'android.intent.extra.TEXT'),(13,28,'android.intent.extra.SUBJECT'),(14,28,'android.intent.extra.EMAIL'),(15,30,'TYPEdsada'),(16,31,'android.intent.extra.TEXT'),(17,31,'android.intent.extra.SUBJECT'),(18,31,'android.intent.extra.EMAIL'),(19,43,'android.intent.extra.TEXT'),(20,43,'android.intent.extra.EMAIL'),(21,44,'android.intent.extra.INTENT'),(22,45,'query'),(23,46,'android.intent.extra.INTENT'),(24,48,'android.intent.extra.TITLE'),(25,48,'android.intent.extra.INTENT'),(26,50,'android.intent.extra.INTENT'),(27,52,'sms_body'),(28,53,'android.intent.extra.TITLE'),(29,53,'android.intent.extra.INTENT'),(30,55,'themeId'),(31,57,'android.intent.extra.INTENT'),(32,58,'android.intent.extra.TITLE'),(33,58,'android.intent.extra.INTENT'),(34,60,'query'),(35,61,'android.intent.extra.TITLE'),(36,61,'android.intent.extra.INTENT'),(37,64,'MSG'),(38,64,'TYPEdsada'),(39,68,'TYPEdsada'),(40,80,'USER_ID'),(41,80,'CLIENT_PACKAGE'),(42,80,'Offers_URL'),(43,80,'offers_webview_tag'),(44,80,'URL_PARAMS'),(45,85,'themeId'),(46,85,'lock'),(47,91,'fileExts'),(48,94,'UrlPath'),(49,94,'ACTIVITY_FLAG'),(50,94,'isFinshClose'),(51,94,'offers_webview_tag'),(52,99,'Notify_Url_Params'),(53,102,'started'),(54,99,'UrlPath'),(55,99,'ACTIVITY_FLAG'),(56,99,'isFinshClose'),(57,99,'offers_webview_tag'),(58,103,'fileExts'),(59,106,'com.livegame.extra.WRITEABLE_ONLY'),(60,106,'com.livegame.extra.BUTTON_TEXT'),(61,106,'com.livegame.extra.TITLE'),(62,111,'TYPEdsada'),(63,113,'MSG'),(64,113,'TYPEdsada'),(65,114,'android.intent.extra.INTENT'),(66,116,'MSG'),(67,116,'TYPEdsada'),(68,117,'android.intent.extra.INTENT'),(69,118,'TYPEdsada'),(70,119,'android.intent.extra.TITLE'),(71,121,'TYPEdsada'),(72,119,'android.intent.extra.INTENT'),(73,122,'MSG'),(74,122,'TYPEdsada'),(75,123,'android.intent.extra.INTENT'),(76,124,'fileExts'),(77,125,'android.intent.extra.TITLE'),(78,125,'android.intent.extra.INTENT'),(79,126,'android.intent.extra.INTENT'),(80,127,'com.livegame.extra.WRITEABLE_ONLY'),(81,127,'com.livegame.extra.BUTTON_TEXT'),(82,127,'com.livegame.extra.TITLE'),(83,128,'android.intent.extra.TITLE'),(84,128,'android.intent.extra.INTENT'),(85,130,'android.intent.extra.TITLE'),(86,130,'android.intent.extra.INTENT'),(87,132,'Notify_Url_Params'),(88,132,'UrlPath'),(89,132,'ACTIVITY_FLAG'),(90,132,'isFinshClose'),(91,132,'offers_webview_tag'),(92,135,'FROM_CLASS'),(93,137,'UrlPath'),(94,137,'ACTIVITY_FLAG'),(95,137,'isFinshClose'),(96,137,'offers_webview_tag'),(97,144,'MSG'),(98,144,'TYPEdsada'),(99,145,'TYPEdsada'),(100,154,'cachedAdView'),(101,165,'command'),(102,166,'cachedAdView'),(103,167,'android.intent.extra.INTENT'),(104,168,'android.intent.extra.INTENT'),(105,169,'android.intent.extra.TITLE'),(106,169,'android.intent.extra.INTENT'),(107,170,'android.intent.extra.INTENT'),(108,171,'android.intent.extra.TITLE'),(109,171,'android.intent.extra.INTENT'),(110,172,'android.intent.extra.INTENT'),(111,173,'android.intent.extra.TITLE'),(112,173,'android.intent.extra.INTENT'),(113,174,'android.intent.extra.TITLE'),(114,174,'android.intent.extra.INTENT'),(115,179,'android.intent.extra.TEXT'),(116,179,'android.intent.extra.SUBJECT'),(117,179,'android.intent.extra.EMAIL');
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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,1),(5,5,1),(6,6,4),(7,6,3),(8,6,2),(9,7,2),(10,8,8),(11,8,7),(12,8,9),(13,8,5),(14,8,6),(15,9,1),(16,10,7),(17,10,5),(18,10,6),(19,11,5),(20,11,9),(21,11,6),(22,13,1),(23,12,10),(24,14,1),(25,15,4),(26,15,2),(27,15,3),(28,16,11),(29,17,4),(30,17,2),(31,17,3),(32,18,11),(33,19,12),(34,20,2),(35,20,4),(36,20,3),(37,21,13),(38,22,10),(39,23,3),(40,23,2),(41,23,4),(42,24,13),(43,25,25),(44,25,24),(45,25,23),(46,26,23),(47,26,24),(48,26,25),(49,27,25),(50,27,24),(51,27,23),(52,28,24),(53,28,23),(54,28,25),(55,29,23),(56,29,25),(57,29,24),(58,30,26),(59,30,28),(60,30,27),(61,32,27),(62,32,28),(63,32,26),(64,31,13),(65,33,26),(66,33,27),(67,33,28),(68,34,26),(69,34,27),(70,34,28),(71,35,27),(72,35,26),(73,35,28),(74,36,13),(75,37,1),(76,38,20),(77,39,20),(78,40,13),(79,41,30),(80,42,30),(81,43,30),(82,44,30),(83,45,28),(84,45,26),(85,46,13),(86,47,13);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,4,2),(4,4,3),(5,5,1),(6,9,1),(7,12,2),(8,13,1),(9,14,1),(10,16,2),(11,18,2),(12,19,2),(13,19,4),(14,22,2),(15,37,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,18,'file',NULL,NULL,NULL,NULL,NULL),(2,19,NULL,NULL,NULL,NULL,'*','*'),(3,21,'package',NULL,NULL,NULL,NULL,NULL),(4,22,'file',NULL,NULL,NULL,NULL,NULL),(5,24,'package',NULL,NULL,NULL,NULL,NULL),(6,31,'package',NULL,NULL,NULL,NULL,NULL),(7,36,'package',NULL,NULL,NULL,NULL,NULL),(8,40,'package',NULL,NULL,NULL,NULL,NULL),(9,46,'package',NULL,NULL,NULL,NULL,NULL),(10,47,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,7,'*','*'),(2,16,'(.*)','(.*)'),(3,28,'message','rfc882'),(4,34,'(.*)','(.*)'),(5,36,'(.*)','(.*)'),(6,40,'*','*'),(7,62,'*','*'),(8,67,'application','vnd.android.package-archive'),(9,73,'application','vnd.android.package-archive'),(10,74,'application','vnd.android.package-archive'),(11,79,'application','vnd.android.package-archive'),(12,83,'application','vnd.android.package-archive'),(13,86,'application','vnd.android.package-archive'),(14,90,'application','vnd.android.package-archive'),(15,104,'application','vnd.android.package-archive'),(16,138,'application','vnd.android.package-archive'),(17,147,'application','vnd.android.package-archive'),(18,149,'application','vnd.android.package-archive'),(19,150,'application','vnd.android.package-archive'),(20,151,'application','vnd.android.package-archive'),(21,152,'application','vnd.android.package-archive'),(22,156,'application','vnd.android.package-archive'),(23,157,'application','vnd.android.package-archive'),(24,158,'application','vnd.android.package-archive'),(25,159,'application','vnd.android.package-archive'),(26,160,'application','vnd.android.package-archive'),(27,161,'application','vnd.android.package-archive'),(28,162,'application','vnd.android.package-archive'),(29,163,'application','vnd.android.package-archive'),(30,164,'application','vnd.android.package-archive'),(31,178,'application','vnd.android.package-archive'),(32,179,'message','rfc822'),(33,183,'application','vnd.android.package-archive'),(34,185,'application','vnd.android.package-archive'),(35,186,'application','vnd.android.package-archive'),(36,187,'application','vnd.android.package-archive'),(37,188,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'android.cxjf.bootstartsetting'),(2,2,'com.safetest.myapn'),(3,3,'com.safetest.myapn'),(4,12,'com.safetest.myapn'),(5,13,'com.google.android.apps.maps'),(6,17,'(.*)'),(7,23,'com.gp.solitaire'),(8,25,'(.*)'),(9,27,'com.gp.solitaire'),(10,29,'(.*)'),(11,30,'com.gp.solitaire'),(12,32,'NULL-CONSTANT'),(13,35,'com.noshufou.android.su'),(14,38,'com.noshufou.android.su'),(15,39,'com.google.android.apps.maps'),(16,47,'com.google.android.apps.maps'),(17,51,'com.safetest.lockexpert'),(18,56,'com.gp.solitaire'),(19,55,'com.safetest.lockexpert'),(20,54,'com.google.android.apps.maps'),(21,59,'com.gp.solitaire'),(22,64,'com.gp.solitaire'),(23,68,'com.gp.solitaire'),(24,69,'com.google.android.apps.maps'),(25,70,'com.livegame.filemanager'),(26,72,'com.gp.tiltmazes'),(27,76,'com.safetest.myapn'),(28,75,'com.gp.tiltmazes'),(29,78,'com.safetest.lockexpert'),(30,82,'com.safetest.lockexpert'),(31,80,'com.livegame.filemanager'),(32,85,'com.safetest.lockexpert'),(33,87,'com.gp.tiltmazes'),(34,89,'com.livegame.filemanager'),(35,88,'com.noshufou.android.su'),(36,93,'com.gp.tiltmazes'),(37,91,'com.safetest.lockexpert'),(38,92,'com.noshufou.android.su'),(39,95,'com.safetest.myapn'),(40,96,'com.safetest.lockexpert'),(41,98,'(.*)'),(42,94,'com.livegame.filemanager'),(43,101,'(.*)'),(44,102,'com.safetest.myapn'),(45,99,'com.livegame.filemanager'),(46,103,'com.safetest.lockexpert'),(47,108,'com.noshufou.android.su'),(48,109,'com.noshufou.android.su'),(49,110,'com.safetest.myapn'),(50,111,'com.gp.tiltmazes'),(51,112,'com.safetest.lockexpert'),(52,113,'com.gp.tiltmazes'),(53,115,'com.safetest.lockexpert'),(54,116,'com.livegame.filemanager'),(55,118,'com.gp.tiltmazes'),(56,121,'com.livegame.filemanager'),(57,122,'com.gp.tiltmazes'),(58,124,'com.safetest.lockexpert'),(59,129,'com.noshufou.android.su'),(60,131,'com.noshufou.android.su'),(61,133,'com.livegame.filemanager'),(62,134,'com.safetest.lockexpert'),(63,132,'com.gp.tiltmazes'),(64,136,'com.livegame.filemanager'),(65,137,'com.gp.tiltmazes'),(66,139,'com.noshufou.android.su'),(67,140,'(.*)'),(68,141,'com.noshufou.android.su'),(69,142,'com.safetest.lockexpert'),(70,143,'NULL-CONSTANT'),(71,144,'com.livegame.filemanager'),(72,145,'com.livegame.filemanager'),(73,153,'(.*)'),(74,154,'com.evilsunflower.reader.evilLiangxing'),(75,166,'com.evilsunflower.reader.evilLiangxing'),(76,175,'com.android.browser'),(77,176,'com.evilsunflower.reader.evilLiangxing'),(78,190,'com.evilsunflower.reader.evilLiangxing'),(79,191,'com.evilsunflower.reader.evilLiangxing');
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,6,0),(3,8,0),(4,9,0),(5,26,0),(6,27,0),(7,32,0),(8,36,0),(9,37,0),(10,38,0),(11,41,0),(12,39,0),(13,42,0),(14,39,0),(15,45,0),(16,39,0),(17,49,0),(18,39,0),(19,39,0),(20,55,0),(21,54,0),(22,39,0),(23,66,0),(24,68,0),(25,69,0),(26,70,0),(27,71,0),(28,72,0),(29,73,0),(30,74,0),(31,76,0),(32,75,0),(33,77,0),(34,32,0),(35,27,0),(36,78,0),(37,80,0),(38,80,0),(39,84,0),(40,96,0),(41,97,0),(42,98,0),(43,99,0),(44,100,0),(45,99,0),(46,100,0),(47,100,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,1,0),(5,4,1,0),(6,4,1,0),(7,4,1,0),(8,4,1,0),(9,4,1,0),(10,4,1,0),(11,4,1,0),(12,4,0,0),(13,4,0,0),(14,4,1,0),(15,4,1,0),(16,4,1,0),(17,5,0,0),(18,4,1,0),(19,5,1,0),(20,4,1,0),(21,6,1,0),(22,4,1,0),(23,7,0,0),(24,8,1,0),(25,8,1,0),(26,4,1,0),(27,9,0,0),(28,4,1,0),(29,8,1,0),(30,9,0,0),(31,4,1,0),(32,10,0,0),(33,4,1,0),(34,4,1,0),(35,11,1,0),(36,12,1,0),(37,4,1,0),(38,11,1,0),(39,4,0,0),(40,12,1,0),(41,15,1,0),(42,4,1,0),(43,4,1,0),(44,16,1,0),(45,17,1,0),(46,16,1,0),(47,4,0,0),(48,16,1,0),(49,19,1,0),(50,16,1,0),(51,20,0,0),(52,4,1,0),(53,16,1,0),(54,4,0,0),(55,22,0,0),(56,21,1,0),(57,16,1,0),(58,16,1,0),(59,21,1,0),(60,4,1,0),(61,16,1,0),(62,4,1,0),(63,4,1,0),(64,23,0,0),(65,4,1,0),(66,24,1,0),(67,25,1,0),(68,23,0,0),(69,4,0,0),(70,26,0,0),(71,4,1,0),(72,28,1,0),(73,29,1,0),(74,30,1,0),(75,28,1,0),(76,32,0,0),(77,29,1,0),(78,33,0,0),(79,29,1,0),(80,34,0,0),(81,35,1,0),(82,36,0,0),(83,29,1,0),(84,35,1,0),(85,38,0,0),(86,29,1,0),(87,39,0,0),(88,40,1,0),(89,41,0,0),(90,29,1,0),(91,42,0,0),(92,40,1,0),(93,43,0,0),(94,45,0,0),(95,46,0,0),(96,47,0,0),(97,48,1,0),(98,48,1,0),(99,45,0,0),(100,49,1,0),(101,48,1,0),(102,50,0,0),(103,51,0,0),(104,52,1,0),(105,53,1,0),(106,54,1,0),(107,57,1,0),(108,59,1,0),(109,59,1,0),(110,61,0,0),(111,62,0,0),(112,63,0,0),(113,62,0,0),(114,64,1,0),(115,65,0,0),(116,66,0,0),(117,64,1,0),(118,67,0,0),(119,64,1,0),(120,68,1,0),(121,66,0,0),(122,67,0,0),(123,64,1,0),(124,69,0,0),(125,64,1,0),(126,64,1,0),(127,70,1,0),(128,64,1,0),(129,71,1,0),(130,64,1,0),(131,71,1,0),(132,72,0,0),(133,73,1,0),(134,74,0,0),(135,75,1,0),(136,73,1,0),(137,72,0,0),(138,77,1,0),(139,79,1,0),(140,80,0,0),(141,79,1,0),(142,81,0,0),(143,82,0,0),(144,83,0,0),(145,83,0,0),(146,85,1,0),(147,86,1,0),(148,86,1,0),(149,86,1,0),(150,86,1,0),(151,86,1,0),(152,86,1,0),(153,87,0,0),(154,88,0,0),(155,89,1,0),(156,90,1,0),(157,90,1,0),(158,90,1,0),(159,90,1,0),(160,90,1,0),(161,90,1,0),(162,90,1,0),(163,90,1,0),(164,90,1,0),(165,91,1,0),(166,93,0,0),(167,96,1,0),(168,96,1,0),(169,96,1,0),(170,96,1,0),(171,96,1,0),(172,96,1,0),(173,96,1,0),(174,96,1,0),(175,98,0,0),(176,99,0,0),(177,100,1,0),(178,101,1,0),(179,102,1,0),(180,103,1,0),(181,108,1,0),(182,109,1,0),(183,110,1,0),(184,110,1,0),(185,110,1,0),(186,110,1,0),(187,110,1,0),(188,110,1,0),(189,111,1,0),(190,114,0,0),(191,115,0,0),(192,117,1,0),(193,118,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=739 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,176,80,2,NULL),(2,191,80,2,NULL),(3,45,80,2,NULL),(4,49,80,2,NULL),(5,97,80,2,NULL),(6,98,80,2,NULL),(7,101,80,2,NULL),(8,44,80,2,NULL),(9,46,80,2,NULL),(10,48,80,2,NULL),(11,50,80,2,NULL),(12,53,80,2,NULL),(13,57,80,2,NULL),(14,58,80,2,NULL),(15,61,80,2,NULL),(16,19,80,2,NULL),(17,24,80,2,NULL),(18,25,80,2,NULL),(19,29,80,2,NULL),(20,177,80,2,NULL),(21,182,80,2,NULL),(22,189,80,2,NULL),(23,192,80,2,NULL),(24,193,80,2,NULL),(25,190,85,2,NULL),(26,45,84,2,NULL),(27,49,84,2,NULL),(28,97,84,2,NULL),(29,98,84,2,NULL),(30,101,84,2,NULL),(31,44,84,2,NULL),(32,46,84,2,NULL),(33,48,84,2,NULL),(34,50,84,2,NULL),(35,53,84,2,NULL),(36,57,84,2,NULL),(37,58,84,2,NULL),(38,61,84,2,NULL),(39,19,84,2,NULL),(40,24,84,2,NULL),(41,25,84,2,NULL),(42,29,84,2,NULL),(43,177,84,2,NULL),(44,182,84,2,NULL),(45,189,84,2,NULL),(46,192,84,2,NULL),(47,193,84,2,NULL),(48,154,89,2,NULL),(49,166,89,2,NULL),(50,177,1,2,NULL),(51,182,1,2,NULL),(52,189,1,2,NULL),(53,192,1,2,NULL),(54,193,1,2,NULL),(55,177,6,2,NULL),(56,182,6,2,NULL),(57,189,6,2,NULL),(58,192,6,2,NULL),(59,193,6,2,NULL),(60,177,8,2,NULL),(61,182,8,2,NULL),(62,189,8,2,NULL),(63,192,8,2,NULL),(64,193,8,2,NULL),(65,177,9,2,NULL),(66,182,9,2,NULL),(67,189,9,2,NULL),(68,192,9,2,NULL),(69,193,9,2,NULL),(70,177,27,2,NULL),(71,182,27,2,NULL),(72,189,27,2,NULL),(73,192,27,2,NULL),(74,193,27,2,NULL),(75,177,73,2,NULL),(76,182,73,2,NULL),(77,189,73,2,NULL),(78,192,73,2,NULL),(79,193,73,2,NULL),(80,177,70,2,NULL),(81,182,70,2,NULL),(82,189,70,2,NULL),(83,192,70,2,NULL),(84,193,70,2,NULL),(85,177,75,2,NULL),(86,182,75,2,NULL),(87,189,75,2,NULL),(88,192,75,2,NULL),(89,193,75,2,NULL),(90,177,32,2,NULL),(91,182,32,2,NULL),(92,189,32,2,NULL),(93,192,32,2,NULL),(94,193,32,2,NULL),(95,177,72,2,NULL),(96,182,72,2,NULL),(97,189,72,2,NULL),(98,45,37,2,NULL),(99,192,72,2,NULL),(100,49,37,2,NULL),(101,193,72,2,NULL),(102,97,37,2,NULL),(103,177,69,2,NULL),(104,98,37,2,NULL),(105,182,69,2,NULL),(106,101,37,2,NULL),(107,189,69,2,NULL),(108,44,37,2,NULL),(109,192,69,2,NULL),(110,46,37,2,NULL),(111,193,69,2,NULL),(112,48,37,2,NULL),(113,177,74,2,NULL),(114,50,37,2,NULL),(115,182,74,2,NULL),(116,53,37,2,NULL),(117,189,74,2,NULL),(118,57,37,2,NULL),(119,192,74,2,NULL),(120,58,37,2,NULL),(121,193,74,2,NULL),(122,61,37,2,NULL),(123,177,71,2,NULL),(124,19,37,2,NULL),(125,182,71,2,NULL),(126,24,37,2,NULL),(127,189,71,2,NULL),(128,25,37,2,NULL),(129,192,71,2,NULL),(130,29,37,2,NULL),(131,193,71,2,NULL),(132,177,37,2,NULL),(133,177,77,2,NULL),(134,182,37,2,NULL),(135,182,77,2,NULL),(136,189,37,2,NULL),(137,189,77,2,NULL),(138,192,37,2,NULL),(139,192,77,2,NULL),(140,193,37,2,NULL),(141,193,77,2,NULL),(142,27,40,2,NULL),(143,177,26,2,NULL),(144,27,48,2,NULL),(145,182,26,2,NULL),(146,27,64,2,NULL),(147,189,26,2,NULL),(148,30,40,2,NULL),(149,192,26,2,NULL),(150,30,48,2,NULL),(151,193,26,2,NULL),(152,30,64,2,NULL),(153,177,36,2,NULL),(154,64,40,2,NULL),(155,182,36,2,NULL),(156,64,48,2,NULL),(157,189,36,2,NULL),(158,64,64,2,NULL),(159,192,36,2,NULL),(160,68,40,2,NULL),(161,193,36,2,NULL),(162,68,48,2,NULL),(163,177,38,2,NULL),(164,68,64,2,NULL),(165,182,38,2,NULL),(166,23,47,2,NULL),(167,189,38,2,NULL),(168,23,53,2,NULL),(169,192,38,2,NULL),(170,23,65,2,NULL),(171,193,38,2,NULL),(172,45,49,2,NULL),(173,177,41,2,NULL),(174,49,49,2,NULL),(175,182,41,2,NULL),(176,97,49,2,NULL),(177,189,41,2,NULL),(178,98,49,2,NULL),(179,192,41,2,NULL),(180,101,49,2,NULL),(181,193,41,2,NULL),(182,44,49,2,NULL),(183,177,45,2,NULL),(184,46,49,2,NULL),(185,182,45,2,NULL),(186,48,49,2,NULL),(187,189,45,2,NULL),(188,50,49,2,NULL),(189,192,45,2,NULL),(190,53,49,2,NULL),(191,193,45,2,NULL),(192,57,49,2,NULL),(193,177,49,2,NULL),(194,58,49,2,NULL),(195,182,49,2,NULL),(196,61,49,2,NULL),(197,189,49,2,NULL),(198,19,49,2,NULL),(199,192,49,2,NULL),(200,24,49,2,NULL),(201,193,49,2,NULL),(202,25,49,2,NULL),(203,177,42,2,NULL),(204,29,49,2,NULL),(205,182,42,2,NULL),(206,189,42,2,NULL),(207,192,42,2,NULL),(208,193,42,2,NULL),(209,177,55,2,NULL),(210,182,55,2,NULL),(211,189,55,2,NULL),(212,192,55,2,NULL),(213,193,55,2,NULL),(214,177,39,2,NULL),(215,182,39,2,NULL),(216,189,39,2,NULL),(217,192,39,2,NULL),(218,193,39,2,NULL),(219,177,66,2,NULL),(220,182,66,2,NULL),(221,189,66,2,NULL),(222,192,66,2,NULL),(223,193,66,2,NULL),(224,177,97,2,NULL),(225,182,97,2,NULL),(226,189,97,2,NULL),(227,192,97,2,NULL),(228,193,97,2,NULL),(229,177,98,2,NULL),(230,182,98,2,NULL),(231,189,98,2,NULL),(232,192,98,2,NULL),(233,193,98,2,NULL),(234,177,99,2,NULL),(235,182,99,2,NULL),(236,189,99,2,NULL),(237,192,99,2,NULL),(238,193,99,2,NULL),(239,177,100,2,NULL),(240,182,100,2,NULL),(241,189,100,2,NULL),(242,192,100,2,NULL),(243,193,100,2,NULL),(244,45,97,2,NULL),(245,49,97,2,NULL),(246,97,97,2,NULL),(247,98,97,2,NULL),(248,101,97,2,NULL),(249,44,97,2,NULL),(250,46,97,2,NULL),(251,48,97,2,NULL),(252,50,97,2,NULL),(253,53,97,2,NULL),(254,57,97,2,NULL),(255,58,97,2,NULL),(256,61,97,2,NULL),(257,19,97,2,NULL),(258,24,97,2,NULL),(259,25,97,2,NULL),(260,29,97,2,NULL),(261,45,98,2,NULL),(262,49,98,2,NULL),(263,97,98,2,NULL),(264,98,98,2,NULL),(265,101,98,2,NULL),(266,44,98,2,NULL),(267,46,98,2,NULL),(268,48,98,2,NULL),(269,50,98,2,NULL),(270,53,98,2,NULL),(271,57,98,2,NULL),(272,58,98,2,NULL),(273,61,98,2,NULL),(274,19,98,2,NULL),(275,24,98,2,NULL),(276,25,98,2,NULL),(277,29,98,2,NULL),(278,45,99,2,NULL),(279,49,99,2,NULL),(280,97,99,2,NULL),(281,98,99,2,NULL),(282,101,99,2,NULL),(283,44,99,2,NULL),(284,46,99,2,NULL),(285,48,99,2,NULL),(286,50,99,2,NULL),(287,53,99,2,NULL),(288,57,99,2,NULL),(289,58,99,2,NULL),(290,61,99,2,NULL),(291,19,99,2,NULL),(292,24,99,2,NULL),(293,25,99,2,NULL),(294,29,99,2,NULL),(295,45,100,2,NULL),(296,49,100,2,NULL),(297,97,100,2,NULL),(298,98,100,2,NULL),(299,101,100,2,NULL),(300,44,100,2,NULL),(301,46,100,2,NULL),(302,48,100,2,NULL),(303,50,100,2,NULL),(304,53,100,2,NULL),(305,57,100,2,NULL),(306,58,100,2,NULL),(307,61,100,2,NULL),(308,19,100,2,NULL),(309,24,100,2,NULL),(310,25,100,2,NULL),(311,29,100,2,NULL),(312,89,56,2,NULL),(313,44,1,2,NULL),(314,46,1,2,NULL),(315,48,1,2,NULL),(316,50,1,2,NULL),(317,53,1,2,NULL),(318,57,1,2,NULL),(319,58,1,2,NULL),(320,61,1,2,NULL),(321,44,6,2,NULL),(322,46,6,2,NULL),(323,48,6,2,NULL),(324,50,6,2,NULL),(325,53,6,2,NULL),(326,57,6,2,NULL),(327,58,6,2,NULL),(328,61,6,2,NULL),(329,44,8,2,NULL),(330,46,8,2,NULL),(331,48,8,2,NULL),(332,50,8,2,NULL),(333,53,8,2,NULL),(334,57,8,2,NULL),(335,58,8,2,NULL),(336,61,8,2,NULL),(337,44,9,2,NULL),(338,46,9,2,NULL),(339,48,9,2,NULL),(340,50,9,2,NULL),(341,53,9,2,NULL),(342,57,9,2,NULL),(343,58,9,2,NULL),(344,61,9,2,NULL),(345,45,39,2,NULL),(346,49,39,2,NULL),(347,44,27,2,NULL),(348,46,27,2,NULL),(349,48,27,2,NULL),(350,50,27,2,NULL),(351,53,27,2,NULL),(352,57,27,2,NULL),(353,58,27,2,NULL),(354,61,27,2,NULL),(355,44,73,2,NULL),(356,46,73,2,NULL),(357,48,73,2,NULL),(358,50,73,2,NULL),(359,53,73,2,NULL),(360,57,73,2,NULL),(361,58,73,2,NULL),(362,61,73,2,NULL),(363,44,70,2,NULL),(364,46,70,2,NULL),(365,48,70,2,NULL),(366,50,70,2,NULL),(367,53,70,2,NULL),(368,57,70,2,NULL),(369,58,70,2,NULL),(370,61,70,2,NULL),(371,44,75,2,NULL),(372,46,75,2,NULL),(373,48,75,2,NULL),(374,50,75,2,NULL),(375,53,75,2,NULL),(376,57,75,2,NULL),(377,58,75,2,NULL),(378,61,75,2,NULL),(379,44,32,2,NULL),(380,46,32,2,NULL),(381,48,32,2,NULL),(382,50,32,2,NULL),(383,53,32,2,NULL),(384,57,32,2,NULL),(385,58,32,2,NULL),(386,61,32,2,NULL),(387,44,72,2,NULL),(388,46,72,2,NULL),(389,48,72,2,NULL),(390,50,72,2,NULL),(391,53,72,2,NULL),(392,57,72,2,NULL),(393,58,72,2,NULL),(394,61,72,2,NULL),(395,44,69,2,NULL),(396,46,69,2,NULL),(397,48,69,2,NULL),(398,50,69,2,NULL),(399,53,69,2,NULL),(400,57,69,2,NULL),(401,58,69,2,NULL),(402,61,69,2,NULL),(403,44,74,2,NULL),(404,46,74,2,NULL),(405,48,74,2,NULL),(406,50,74,2,NULL),(407,53,74,2,NULL),(408,57,74,2,NULL),(409,58,74,2,NULL),(410,61,74,2,NULL),(411,44,71,2,NULL),(412,46,71,2,NULL),(413,48,71,2,NULL),(414,50,71,2,NULL),(415,53,71,2,NULL),(416,57,71,2,NULL),(417,58,71,2,NULL),(418,61,71,2,NULL),(419,44,77,2,NULL),(420,46,77,2,NULL),(421,48,77,2,NULL),(422,50,77,2,NULL),(423,53,77,2,NULL),(424,57,77,2,NULL),(425,58,77,2,NULL),(426,61,77,2,NULL),(427,44,26,2,NULL),(428,46,26,2,NULL),(429,48,26,2,NULL),(430,50,26,2,NULL),(431,53,26,2,NULL),(432,57,26,2,NULL),(433,58,26,2,NULL),(434,61,26,2,NULL),(435,44,36,2,NULL),(436,46,36,2,NULL),(437,48,36,2,NULL),(438,50,36,2,NULL),(439,53,36,2,NULL),(440,57,36,2,NULL),(441,58,36,2,NULL),(442,61,36,2,NULL),(443,44,38,2,NULL),(444,46,38,2,NULL),(445,48,38,2,NULL),(446,50,38,2,NULL),(447,53,38,2,NULL),(448,57,38,2,NULL),(449,58,38,2,NULL),(450,61,38,2,NULL),(451,44,41,2,NULL),(452,46,41,2,NULL),(453,48,41,2,NULL),(454,50,41,2,NULL),(455,53,41,2,NULL),(456,57,41,2,NULL),(457,58,41,2,NULL),(458,61,41,2,NULL),(459,44,45,2,NULL),(460,46,45,2,NULL),(461,48,45,2,NULL),(462,50,45,2,NULL),(463,53,45,2,NULL),(464,57,45,2,NULL),(465,58,45,2,NULL),(466,61,45,2,NULL),(467,44,42,2,NULL),(468,46,42,2,NULL),(469,48,42,2,NULL),(470,50,42,2,NULL),(471,53,42,2,NULL),(472,57,42,2,NULL),(473,58,42,2,NULL),(474,61,42,2,NULL),(475,97,39,2,NULL),(476,98,39,2,NULL),(477,101,39,2,NULL),(478,44,55,2,NULL),(479,46,55,2,NULL),(480,48,55,2,NULL),(481,50,55,2,NULL),(482,53,55,2,NULL),(483,57,55,2,NULL),(484,58,55,2,NULL),(485,61,55,2,NULL),(486,19,39,2,NULL),(487,24,39,2,NULL),(488,25,39,2,NULL),(489,29,39,2,NULL),(490,44,66,2,NULL),(491,46,66,2,NULL),(492,48,66,2,NULL),(493,50,66,2,NULL),(494,53,66,2,NULL),(495,57,66,2,NULL),(496,58,66,2,NULL),(497,61,66,2,NULL),(498,19,1,2,NULL),(499,19,6,2,NULL),(500,19,8,2,NULL),(501,19,9,2,NULL),(502,19,27,2,NULL),(503,19,73,2,NULL),(504,19,70,2,NULL),(505,19,75,2,NULL),(506,19,32,2,NULL),(507,19,72,2,NULL),(508,19,69,2,NULL),(509,19,74,2,NULL),(510,19,71,2,NULL),(511,19,77,2,NULL),(512,19,26,2,NULL),(513,19,36,2,NULL),(514,19,38,2,NULL),(515,19,41,2,NULL),(516,19,45,2,NULL),(517,19,42,2,NULL),(518,19,55,2,NULL),(519,19,66,2,NULL),(520,24,1,2,NULL),(521,25,1,2,NULL),(522,29,1,2,NULL),(523,24,6,2,NULL),(524,25,6,2,NULL),(525,29,6,2,NULL),(526,24,8,2,NULL),(527,25,8,2,NULL),(528,29,8,2,NULL),(529,24,9,2,NULL),(530,25,9,2,NULL),(531,29,9,2,NULL),(532,24,27,2,NULL),(533,25,27,2,NULL),(534,29,27,2,NULL),(535,24,73,2,NULL),(536,25,73,2,NULL),(537,29,73,2,NULL),(538,24,70,2,NULL),(539,25,70,2,NULL),(540,29,70,2,NULL),(541,24,75,2,NULL),(542,25,75,2,NULL),(543,29,75,2,NULL),(544,24,32,2,NULL),(545,25,32,2,NULL),(546,29,32,2,NULL),(547,24,72,2,NULL),(548,25,72,2,NULL),(549,29,72,2,NULL),(550,24,69,2,NULL),(551,25,69,2,NULL),(552,29,69,2,NULL),(553,24,74,2,NULL),(554,25,74,2,NULL),(555,29,74,2,NULL),(556,24,71,2,NULL),(557,25,71,2,NULL),(558,29,71,2,NULL),(559,24,77,2,NULL),(560,25,77,2,NULL),(561,29,77,2,NULL),(562,24,26,2,NULL),(563,25,26,2,NULL),(564,29,26,2,NULL),(565,24,36,2,NULL),(566,25,36,2,NULL),(567,29,36,2,NULL),(568,24,38,2,NULL),(569,25,38,2,NULL),(570,29,38,2,NULL),(571,24,41,2,NULL),(572,25,41,2,NULL),(573,29,41,2,NULL),(574,24,45,2,NULL),(575,25,45,2,NULL),(576,29,45,2,NULL),(577,24,42,2,NULL),(578,25,42,2,NULL),(579,29,42,2,NULL),(580,24,55,2,NULL),(581,25,55,2,NULL),(582,29,55,2,NULL),(583,24,66,2,NULL),(584,25,66,2,NULL),(585,29,66,2,NULL),(586,116,40,2,NULL),(587,116,48,2,NULL),(588,116,64,2,NULL),(589,121,40,2,NULL),(590,121,48,2,NULL),(591,121,64,2,NULL),(592,144,40,2,NULL),(593,144,48,2,NULL),(594,144,64,2,NULL),(595,145,40,2,NULL),(596,145,48,2,NULL),(597,145,64,2,NULL),(598,70,47,2,NULL),(599,70,53,2,NULL),(600,70,65,2,NULL),(601,45,66,2,NULL),(602,49,66,2,NULL),(603,97,66,2,NULL),(604,98,66,2,NULL),(605,101,66,2,NULL),(606,87,46,2,NULL),(607,45,42,2,NULL),(608,49,42,2,NULL),(609,97,42,2,NULL),(610,98,42,2,NULL),(611,101,42,2,NULL),(612,97,1,2,NULL),(613,98,1,2,NULL),(614,101,1,2,NULL),(615,97,6,2,NULL),(616,98,6,2,NULL),(617,101,6,2,NULL),(618,97,8,2,NULL),(619,98,8,2,NULL),(620,101,8,2,NULL),(621,97,9,2,NULL),(622,98,9,2,NULL),(623,101,9,2,NULL),(624,97,27,2,NULL),(625,98,27,2,NULL),(626,101,27,2,NULL),(627,97,73,2,NULL),(628,98,73,2,NULL),(629,101,73,2,NULL),(630,97,70,2,NULL),(631,98,70,2,NULL),(632,101,70,2,NULL),(633,97,75,2,NULL),(634,98,75,2,NULL),(635,101,75,2,NULL),(636,97,32,2,NULL),(637,98,32,2,NULL),(638,101,32,2,NULL),(639,97,72,2,NULL),(640,98,72,2,NULL),(641,101,72,2,NULL),(642,97,69,2,NULL),(643,98,69,2,NULL),(644,101,69,2,NULL),(645,97,74,2,NULL),(646,98,74,2,NULL),(647,101,74,2,NULL),(648,97,71,2,NULL),(649,98,71,2,NULL),(650,101,71,2,NULL),(651,97,77,2,NULL),(652,98,77,2,NULL),(653,101,77,2,NULL),(654,97,26,2,NULL),(655,98,26,2,NULL),(656,101,26,2,NULL),(657,97,36,2,NULL),(658,98,36,2,NULL),(659,101,36,2,NULL),(660,97,38,2,NULL),(661,98,38,2,NULL),(662,101,38,2,NULL),(663,97,41,2,NULL),(664,98,41,2,NULL),(665,101,41,2,NULL),(666,97,45,2,NULL),(667,98,45,2,NULL),(668,101,45,2,NULL),(669,97,55,2,NULL),(670,98,55,2,NULL),(671,101,55,2,NULL),(672,111,40,2,NULL),(673,111,48,2,NULL),(674,111,64,2,NULL),(675,113,40,2,NULL),(676,113,48,2,NULL),(677,113,64,2,NULL),(678,118,40,2,NULL),(679,118,48,2,NULL),(680,118,64,2,NULL),(681,122,40,2,NULL),(682,122,48,2,NULL),(683,122,64,2,NULL),(684,93,47,2,NULL),(685,93,53,2,NULL),(686,93,65,2,NULL),(687,45,55,2,NULL),(688,49,55,2,NULL),(689,2,30,2,NULL),(690,3,28,2,NULL),(691,76,35,2,NULL),(692,110,31,2,NULL),(693,45,26,2,NULL),(694,49,26,2,NULL),(695,45,36,2,NULL),(696,49,36,2,NULL),(697,45,38,2,NULL),(698,49,38,2,NULL),(699,45,41,2,NULL),(700,49,41,2,NULL),(701,95,35,2,NULL),(702,45,45,2,NULL),(703,49,45,2,NULL),(704,45,1,2,NULL),(705,49,1,2,NULL),(706,45,6,2,NULL),(707,49,6,2,NULL),(708,1,5,2,NULL),(709,51,14,2,NULL),(710,82,10,2,NULL),(711,112,11,2,NULL),(712,115,23,2,NULL),(713,45,8,2,NULL),(714,49,8,2,NULL),(715,45,9,2,NULL),(716,49,9,2,NULL),(717,45,27,2,NULL),(718,45,73,2,NULL),(719,45,70,2,NULL),(720,45,75,2,NULL),(721,45,32,2,NULL),(722,45,72,2,NULL),(723,45,69,2,NULL),(724,45,74,2,NULL),(725,45,71,2,NULL),(726,45,77,2,NULL),(727,49,27,2,NULL),(728,49,73,2,NULL),(729,49,70,2,NULL),(730,49,75,2,NULL),(731,49,32,2,NULL),(732,49,72,2,NULL),(733,49,69,2,NULL),(734,49,74,2,NULL),(735,49,71,2,NULL),(736,49,77,2,NULL),(737,96,23,2,NULL),(738,55,25,2,NULL);
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
INSERT INTO `PAuthorities` VALUES (1,1,'com.livegame.filemanager');
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (22,'<NULL>'),(7,'android.permission.ACCESS_COARSE_LOCATION'),(5,'android.permission.ACCESS_FINE_LOCATION'),(21,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(8,'android.permission.ACCESS_NETWORK_STATE'),(6,'android.permission.ACCESS_WIFI_STATE'),(18,'android.permission.CHANGE_NETWORK_STATE'),(17,'android.permission.CHANGE_WIFI_STATE'),(9,'android.permission.DISABLE_KEYGUARD'),(10,'android.permission.GET_TASKS'),(20,'android.permission.INSTALL_PACKAGES'),(3,'android.permission.INTERNET'),(19,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(16,'android.permission.READ_SMS'),(2,'android.permission.RECEIVE_BOOT_COMPLETED'),(11,'android.permission.SET_PREFERRED_APPLICATIONS'),(12,'android.permission.VIBRATE'),(13,'android.permission.WAKE_LOCK'),(14,'android.permission.WRITE_APN_SETTINGS'),(4,'android.permission.WRITE_EXTERNAL_STORAGE'),(15,'android.permission.WRITE_SMS'),(23,'com.android.browser.permission.READ_HISTORY_BOOKMARKS');
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
INSERT INTO `Providers` VALUES (1,67,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(2,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(3,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(4,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(5,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(6,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(7,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(8,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(9,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(12,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'content://net.fet.android.appstore.client.provider.SdkProcess/Processes',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(20,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT((.*))&z=22',NULL,NULL,NULL),(21,NULL,NULL,'content://net.fet.android.appstore.client.provider.SdkAppTerminatNotification/Notis',NULL,NULL,NULL),(22,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(23,NULL,NULL,'(.*)',NULL,NULL,NULL),(24,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(25,NULL,NULL,'http://maps.google.com/maps?q=(.*)((.*))&z=22',NULL,NULL,NULL),(26,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(27,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT()&z=22',NULL,NULL,NULL),(28,NULL,NULL,'(.*)',NULL,NULL,NULL),(29,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(30,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(31,NULL,NULL,'http://maps.google.com/maps?q=(.*)()&z=22',NULL,NULL,NULL),(32,NULL,NULL,'content://net.fet.android.appstore.client.provider.DeviceInfo/device_infos',NULL,NULL,NULL),(33,NULL,NULL,'content://net.fet.android.license.provider/license',NULL,NULL,NULL),(34,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(35,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(36,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(37,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(38,NULL,NULL,'http://www.hidroid.net/droid/bbs/forumdisplay.php?fid=34',NULL,NULL,NULL),(39,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(40,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(41,NULL,NULL,'file://',NULL,NULL,NULL),(42,NULL,NULL,'market://search?q=pname:com.safetest.lockexpert',NULL,NULL,NULL),(43,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(44,NULL,NULL,'(.*)',NULL,NULL,NULL),(45,NULL,NULL,'content://net.fet.android.appstore.client.provider.PackagePayment/PackagePayment',NULL,NULL,NULL),(46,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(47,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(48,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(49,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(50,NULL,NULL,'market://search?q=pname:com.safetest.lockexpert',NULL,NULL,NULL),(51,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(52,NULL,NULL,'content://net.fet.android.appstore.client.provider.LoginCheckProvider/LoginCheckProvider',NULL,NULL,NULL),(53,NULL,NULL,'content://net.fet.android.appstore.client.provider.Behavior/behaviors',NULL,NULL,NULL),(54,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(55,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(56,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(57,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(58,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(59,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(60,NULL,NULL,'file://',NULL,NULL,NULL),(61,NULL,NULL,'(.*)',NULL,NULL,NULL),(62,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(63,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(64,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(65,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(66,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(67,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(68,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(69,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(70,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(71,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL),(72,NULL,NULL,'content://mms/',NULL,NULL,NULL),(73,NULL,NULL,'(.*)',NULL,NULL,NULL),(74,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(75,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(76,NULL,NULL,'content://mms/inbox',NULL,NULL,NULL),(77,NULL,NULL,'content://mms/(.*)/addr',NULL,NULL,NULL),(78,NULL,NULL,'(.*)',NULL,NULL,NULL),(79,NULL,NULL,'(.*)',NULL,NULL,NULL),(80,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(81,NULL,NULL,'(.*)',NULL,NULL,NULL),(82,NULL,NULL,'content://mms/',NULL,NULL,NULL),(83,NULL,NULL,'content://mms-sms/threadID',NULL,NULL,NULL),(84,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(85,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(86,NULL,NULL,'(.*)',NULL,NULL,NULL),(87,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(88,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(89,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(90,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(91,NULL,NULL,'file://',NULL,NULL,NULL),(92,NULL,NULL,'(.*)',NULL,NULL,NULL),(93,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(94,NULL,NULL,'(.*)',NULL,NULL,NULL),(95,NULL,NULL,'(.*)',NULL,NULL,NULL),(96,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,13,17),(2,14,21),(3,18,24),(4,27,32),(5,31,33),(6,37,37),(7,55,45),(8,56,46),(9,58,48),(10,60,49),(11,76,52),(12,78,53),(13,92,72),(14,95,74),(15,97,75),(16,97,76),(17,97,77),(18,104,81),(19,105,82),(20,105,83),(21,106,84),(22,107,85),(23,116,93),(24,119,96);
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
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,2,1),(10,2,4),(11,2,9),(12,2,10),(13,2,11),(14,2,12),(15,2,13),(16,3,17),(17,3,16),(18,3,1),(19,3,18),(20,3,3),(21,3,4),(22,3,6),(23,3,7),(24,3,8),(25,3,13),(26,3,14),(27,3,15),(28,4,1),(29,4,2),(30,4,3),(31,4,4),(32,4,5),(33,4,6),(34,4,7),(35,6,1),(36,5,1),(37,4,8),(38,6,2),(39,5,2),(40,4,15),(41,6,3),(42,5,3),(43,4,17),(44,6,4),(45,5,4),(46,4,16),(47,5,5),(48,6,5),(49,4,19),(50,6,6),(51,5,6),(52,4,21),(53,5,8),(54,6,7),(55,4,20),(56,5,10),(57,6,8),(58,5,12),(59,6,10),(60,5,13),(61,6,17),(62,6,19),(63,5,17),(64,6,21),(65,5,19),(66,5,21),(67,7,16),(68,7,1),(69,7,3),(70,7,4),(71,7,5),(72,7,23),(73,7,6),(74,7,7),(75,7,8),(76,7,13),(77,7,15);
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

-- Dump completed on 2015-10-12  3:29:25
