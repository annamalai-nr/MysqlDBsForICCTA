-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_171
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (17,'(.*)'),(27,'android.intent.action.BATTERY_CHANGED'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(28,'android.intent.action.CHOOSER'),(31,'android.intent.action.DIAL'),(9,'android.intent.action.DOCK_EVENT'),(1,'android.intent.action.MAIN'),(15,'android.intent.action.PACKAGE_ADDED'),(23,'android.intent.action.PICK'),(32,'android.intent.action.SCREEN_OFF'),(33,'android.intent.action.SCREEN_ON'),(16,'android.intent.action.SEARCH'),(30,'android.intent.action.SEND'),(2,'android.intent.action.SIG_STR'),(24,'android.intent.action.USE_TTS'),(13,'android.intent.action.VIEW'),(8,'android.provider.Telephony.SMS_RECEIVED'),(5,'android.provider.Telephony.WAP_PUSH_RECEIVED'),(25,'android.speech.action.RECOGNIZE_SPEECH'),(26,'android.speech.tts.engine.CHECK_TTS_DATA'),(18,'com.android.contacts.action.SHOW_OR_CREATE_CONTACT'),(6,'com.android.mms.transaction.MESSAGE_SENT'),(29,'com.android.music.musicservicecommand'),(14,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(19,'com.mogo.smspopup.ACTION_DELETE_MESSAGE'),(21,'com.mogo.smspopup.ACTION_MARK_MESSAGE_READ'),(22,'com.mogo.smspopup.ACTION_QUICKREPLY'),(20,'com.mogo.smspopup.ACTION_UPDATE_NOTIFICATION'),(10,'com.mogo.smspopup.DISABLE'),(11,'com.mogo.smspopup.DONATED'),(12,'com.mogo.smspopup.ENABLE'),(7,'com.mogo.smspopup.MESSAGE_RECEIVED');
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
INSERT INTO `Applications` VALUES (1,'com.gp.tiltmazes',5),(2,'com.gp.tiltmazes',10),(3,'com.mogo.smspopup',4),(4,'com.ps.pushbox',8),(5,'com.evilsunflower.reader.evilZenyang16',2),(6,'com.evilsunflower.reader.evilGongxin',1),(7,'com.evilsunflower.reader.evil20ji',1);
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
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.BROWSABLE'),(2,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(4,'android.intent.category.TTS');
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
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.gp.tiltmazes.TiltMazesActivity'),(2,1,'com.gp.tiltmazes.SelectMazeActivity'),(3,1,'com.google.update.Dialog'),(4,1,'cn.domob.android.ads.DomobActivity'),(5,1,'com.adwo.adsdk.AdwoAdBrowserActivity'),(6,1,'com.google.update.UpdateService'),(7,1,'com.google.update.Receiver'),(8,2,'com.gp.tiltmazes.TiltMazesActivity'),(9,2,'com.gp.tiltmazes.SelectMazeActivity'),(10,2,'com.google.update.Dialog'),(11,2,'cn.domob.android.ads.DomobActivity'),(12,2,'com.adwo.adsdk.AdwoAdBrowserActivity'),(13,2,'com.waps.OffersWebView'),(14,2,'com.google.update.UpdateService'),(15,2,'com.google.update.Receiver'),(16,3,'com.mogo.smspopup.SmsPopupConfigActivity'),(17,3,'com.mogo.smspopup.ConfigContactsActivity'),(18,3,'com.mogo.smspopup.ConfigPerContactActivity'),(19,3,'com.mogo.smspopup.ConfigPresetMessagesActivity'),(20,3,'com.mogo.smspopup.SmsPopupActivity'),(21,3,'com.google.ads.AdActivity'),(22,3,'com.vpon.adon.android.WebInApp'),(23,3,'com.adwo.adsdk.AdwoSplashAdActivity'),(24,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(25,3,'com.waps.OffersWebView'),(26,3,'com.google.update.Dialog'),(27,3,'com.mogo.smspopup.SmsPopupUtilsService'),(28,3,'com.mogo.smspopup.SmsReceiverService'),(29,3,'com.mogo.smspopup.ReminderReceiverService'),(30,3,'com.mogo.smspopup.SmsMonitorService'),(31,3,'com.google.update.UpdateService'),(32,3,'com.mogo.smspopup.SmsReceiver'),(33,3,'com.mogo.smspopup.ExternalEventReceiver'),(34,3,'com.mogo.smspopup.ClearAllReceiver'),(35,3,'com.mogo.smspopup.ReminderReceiver'),(36,3,'com.google.update.Receiver'),(37,4,'com.ps.pushbox.Pushbox'),(38,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(39,4,'com.google.update.Dialog'),(40,4,'com.google.update.UpdateService'),(41,4,'com.google.update.Receiver'),(42,1,'cn.domob.android.ads.i'),(43,1,'cn.domob.android.ads.DomobAdManager'),(44,1,'cn.domob.android.ads.DomobAdEngine$2'),(45,1,'cn.domob.android.ads.i$6'),(46,1,'com.google.update.Dialog$2'),(47,1,'com.google.update.Dialog$1'),(48,1,'com.google.update.UpdateService$AA'),(49,1,'cn.domob.android.ads.DomobActionReceiver'),(50,2,'com.waps.aa'),(51,2,'com.waps.ac'),(52,4,'com.google.update.Dialog$2'),(53,2,'com.waps.o'),(54,2,'com.google.update.Dialog$1'),(55,4,'com.google.update.UpdateService$AA'),(56,2,'com.waps.q'),(57,4,'com.google.update.Dialog$1'),(58,2,'cn.domob.android.ads.i$6'),(59,2,'cn.domob.android.ads.DomobActionReceiver'),(60,2,'cn.domob.android.ads.DomobAdEngine$2'),(61,2,'com.google.update.UpdateService$AA'),(62,2,'cn.domob.android.ads.DomobAdManager'),(63,5,'com.evilsunflower.reader.evilZenyang16.BugReportActivity'),(64,5,'com.evilsunflower.reader.FBReader'),(65,5,'com.evilsunflower.reader.CancelActivity'),(66,2,'cn.domob.android.ads.i'),(67,5,'com.evilsunflower.reader.image.ImageViewActivity'),(68,5,'com.evilsunflower.reader.TOCActivity'),(69,5,'com.evilsunflower.reader.BookmarksActivity'),(70,5,'com.evilsunflower.reader.control.ShowTips'),(71,2,'com.google.update.Dialog$2'),(72,5,'com.evilsunflower.reader.BookmarkEditActivity'),(73,5,'com.evilsunflower.reader.Starter'),(74,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(75,6,'com.evilsunflower.reader.evilGongxin.BugReportActivity'),(76,5,'com.vpon.adon.android.WebInApp'),(77,6,'com.evilsunflower.reader.FBReader'),(78,5,'com.millennialmedia.android.MMAdViewOverlayActivity'),(79,5,'com.millennialmedia.android.VideoPlayer'),(80,5,'net.youmi.android.AdActivity'),(81,5,'com.google.ads.AdActivity'),(82,6,'com.evilsunflower.reader.CancelActivity'),(83,7,'com.evilsunflower.reader.evil20ji.BugReportActivity'),(84,5,'cn.domob.android.ads.DomobActivity'),(85,2,'com.waps.z'),(86,6,'com.evilsunflower.reader.image.ImageViewActivity'),(87,7,'com.evilsunflower.reader.FBReader'),(88,5,'com.baidu.AppActivity'),(89,6,'com.evilsunflower.reader.TOCActivity'),(90,5,'com.guohead.sdk.GuoheAdActivity'),(91,6,'com.evilsunflower.reader.BookmarksActivity'),(92,5,'com.evilsunflower.reader.control.UpdateService'),(93,7,'com.evilsunflower.reader.CancelActivity'),(94,5,'com.evilsunflower.reader.control.Receiver'),(95,6,'com.evilsunflower.reader.BookmarkEditActivity'),(96,7,'com.evilsunflower.reader.image.ImageViewActivity'),(97,6,'com.evilsunflower.reader.Starter'),(98,7,'com.evilsunflower.reader.TOCActivity'),(99,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(100,7,'com.evilsunflower.reader.BookmarksActivity'),(101,6,'com.vpon.adon.android.WebInApp'),(102,6,'com.millennialmedia.android.MMAdViewOverlayActivity'),(103,7,'com.evilsunflower.reader.BookmarkEditActivity'),(104,6,'com.millennialmedia.android.VideoPlayer'),(105,7,'com.evilsunflower.reader.Starter'),(106,6,'net.youmi.android.AdActivity'),(107,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(108,6,'com.google.ads.AdActivity'),(109,7,'com.vpon.adon.android.WebInApp'),(110,6,'cn.domob.android.ads.DomobActivity'),(111,7,'com.millennialmedia.android.MMAdViewOverlayActivity'),(112,6,'com.baidu.AppActivity'),(113,7,'com.millennialmedia.android.VideoPlayer'),(114,6,'com.guohead.sdk.GuoheAdActivity'),(115,7,'net.youmi.android.AdActivity'),(116,7,'com.google.ads.AdActivity'),(117,7,'cn.domob.android.ads.DomobActivity'),(118,7,'com.baidu.AppActivity'),(119,7,'com.guohead.sdk.GuoheAdActivity'),(120,3,'com.google.tts.TTS'),(121,3,'com.mogo.smspopup.SmsPopupActivity$20'),(122,3,'com.google.update.Dialog$1'),(123,3,'com.google.update.UpdateService$MyThread'),(124,3,'com.mogo.smspopup.SmsPopupUtils'),(125,3,'com.mogo.smspopup.SmsPopupActivity$18'),(126,3,'com.mogo.smspopup.ConfigContactsActivity$SynchronizeContactNames'),(127,3,'com.mogo.smspopup.SmsPopupActivity$9$1'),(128,3,'com.waps.AppConnect'),(129,3,'com.mogo.smspopup.ConfigContactsActivity$1'),(130,3,'com.google.update.Dialog$2'),(131,3,'com.ju6.a'),(132,3,'com.google.tts.PrefsActivity$2'),(133,3,'com.waps.m'),(134,3,'com.waps.k'),(135,7,'com.ju6.mms.util.SqliteWrapper'),(136,7,'net.youmi.android.eo'),(137,7,'com.evilsunflower.reader.ui.ZLAndroidActivity$1'),(138,7,'com.adwo.adsdk.M'),(139,7,'cn.domob.android.ads.e'),(140,7,'net.youmi.android.t'),(141,7,'com.ju6.c'),(142,7,'com.millennialmedia.android.MillennialMediaView'),(143,7,'cn.domob.android.ads.o$5'),(144,7,'cn.domob.android.ads.DomobAdManager'),(145,7,'cn.domob.android.ads.o'),(146,7,'net.youmi.android.be'),(147,6,'com.ju6.mms.util.SqliteWrapper'),(148,6,'cn.domob.android.a.a$a'),(149,6,'com.evilsunflower.reader.ui.BugReportActivity$1'),(150,6,'cn.domob.android.ads.DomobAdManager'),(151,7,'com.guohead.sdk.adapters.CustomAdapter$3'),(152,6,'com.madhouse.android.ads._'),(153,7,'com.evilsunflower.reader.ui.BugReportActivity$1'),(154,6,'com.guohead.sdk.adapters.CustomAdapter$3'),(155,6,'com.adwo.adsdk.M'),(156,7,'cn.domob.android.ads.g$1'),(157,7,'com.ju6.mms.pdu.PduPersister'),(158,6,'com.millennialmedia.android.MillennialMediaView'),(159,7,'com.baidu.as'),(160,6,'cn.domob.android.ads.e'),(161,6,'com.baidu.al'),(162,7,'com.baidu.al'),(163,6,'com.baidu.as'),(164,7,'com.guohead.sdk.adapters.CustomAdapter$4'),(165,7,'cn.domob.android.a.a$a'),(166,6,'com.ju6.c'),(167,7,'com.madhouse.android.ads._'),(168,6,'com.ju6.mms.pdu.PduPersister'),(169,6,'cn.domob.android.ads.o'),(170,6,'cn.domob.android.ads.o$5'),(171,6,'net.youmi.android.t'),(172,6,'com.guohead.sdk.adapters.CustomAdapter$4'),(173,6,'net.youmi.android.eo'),(174,6,'com.evilsunflower.reader.ui.ZLAndroidActivity$1'),(175,6,'net.youmi.android.be'),(176,6,'cn.domob.android.ads.g$1'),(177,5,'cn.domob.android.ads.g$1'),(178,5,'com.baidu.as'),(179,5,'com.ju6.c'),(180,5,'net.youmi.android.be'),(181,5,'com.ju6.mms.util.SqliteWrapper'),(182,5,'cn.domob.android.a.a$a'),(183,5,'com.ju6.mms.pdu.PduPersister'),(184,5,'com.millennialmedia.android.MillennialMediaView'),(185,5,'com.guohead.sdk.adapters.CustomAdapter$4'),(186,5,'com.adwo.adsdk.M'),(187,5,'com.madhouse.android.ads._'),(188,5,'com.guohead.sdk.adapters.CustomAdapter$3'),(189,5,'net.youmi.android.eo'),(190,5,'com.evilsunflower.reader.ui.ZLAndroidActivity$1'),(191,5,'cn.domob.android.ads.e'),(192,5,'com.evilsunflower.reader.control.ShowTips$1');
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
) ENGINE=InnoDB AUTO_INCREMENT=313 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,6,'DOMOB_TEST_MODE'),(2,5,'DOMOB_TEST_MODE'),(3,1,'ball.x'),(4,5,'overlayTitle'),(5,3,'TYPEdsada'),(6,4,'appId'),(7,6,'DOMOB_ALLOW_LOCATION'),(8,5,'DOMOB_ALLOW_LOCATION'),(9,1,'ball.y'),(10,1,'map.id'),(11,5,'shouldShowBottomBar'),(12,4,'appName'),(13,5,'url'),(14,3,'MSG'),(15,6,'DOMOB_PID'),(16,5,'DOMOB_PID'),(17,5,'overlayTransition'),(18,6,'ST_START_DELAY'),(19,5,'transitionTime'),(20,1,'stepcount'),(21,5,'shouldShowTitlebar'),(22,5,'shouldMakeOverlayTransparent'),(23,5,'shouldResizeOverlay'),(24,1,'map.goals'),(25,4,'actType'),(26,5,'shouldEnableBottomBar'),(27,6,'ST_MY_PID'),(28,13,'Offers_URL'),(29,38,'shouldShowTitlebar'),(30,38,'transitionTime'),(31,40,'ST_MY_PID'),(32,39,'TYPEdsada'),(33,14,'ST_START_DELAY'),(34,11,'appName'),(35,13,'Notify_Id'),(36,38,'overlayTransition'),(37,38,'shouldEnableBottomBar'),(38,38,'shouldResizeOverlay'),(39,39,'MSG'),(40,8,'ball.y'),(41,38,'shouldShowBottomBar'),(42,13,'DEVICE_ID'),(43,40,'ST_START_DELAY'),(44,8,'DEVICE_ID'),(45,38,'url'),(46,14,'DOMOB_ALLOW_LOCATION'),(47,12,'DOMOB_ALLOW_LOCATION'),(48,38,'overlayTitle'),(49,12,'transitionTime'),(50,13,'ACTIVITY_FLAG'),(51,38,'shouldMakeOverlayTransparent'),(52,11,'appId'),(53,12,'shouldShowBottomBar'),(54,14,'DOMOB_TEST_MODE'),(55,12,'DOMOB_TEST_MODE'),(56,12,'url'),(57,13,'UrlPath'),(58,12,'overlayTitle'),(59,14,'ST_MY_PID'),(60,13,'WAPS_PID'),(61,8,'WAPS_PID'),(62,12,'shouldShowTitlebar'),(63,13,'CLIENT_PACKAGE'),(64,12,'shouldResizeOverlay'),(65,13,'isFinshClose'),(66,13,'URL'),(67,8,'CLIENT_PACKAGE'),(68,13,'APP_ID'),(69,8,'APP_ID'),(70,8,'map.id'),(71,8,'ball.x'),(72,12,'shouldMakeOverlayTransparent'),(73,12,'overlayTransition'),(74,13,'Notify_Url_Params'),(75,13,'WAPS_ID'),(76,8,'WAPS_ID'),(77,13,'URL_PARAMS'),(78,8,'map.goals'),(79,13,'SHWO_FLAG'),(80,11,'actType'),(81,12,'shouldEnableBottomBar'),(82,10,'TYPEdsada'),(83,13,'offers_webview_tag'),(84,8,'stepcount'),(85,10,'MSG'),(86,14,'DOMOB_PID'),(87,12,'DOMOB_PID'),(88,13,'USER_ID'),(89,16,'APP_ID'),(90,19,'APP_ID'),(91,25,'URL'),(92,24,'transitionTime'),(93,20,'com.mogo.smspopup.EXTRAS_NOTIFY'),(94,20,'com.mogo.smspopup.EXTRAS_FROM_ADDRESS'),(95,20,'com.mogo.smspopup.EXTRAS_MESSAGE_ID'),(96,20,'com.mogo.smspopup.EXTRAS_CONTACT_NAME'),(97,26,'MSG'),(98,31,'ST_MY_PID'),(99,16,'WAPS_ID'),(100,19,'WAPS_ID'),(101,24,'shouldMakeOverlayTransparent'),(102,24,'shouldShowTitlebar'),(103,25,'URL_PARAMS'),(104,23,'Adwo_PID'),(105,25,'CLIENT_PACKAGE'),(106,21,'com.google.ads.AdOpener'),(107,24,'shouldResizeOverlay'),(108,25,'isFinshClose'),(109,16,'CLIENT_PACKAGE'),(110,19,'CLIENT_PACKAGE'),(111,24,'shouldEnableBottomBar'),(112,20,'com.mogo.smspopup.EXTRAS_REMINDER_COUNT'),(113,22,'url'),(114,20,'com.mogo.smspopup.EXTRAS_EMAIL_GATEWAY'),(115,24,'overlayTitle'),(116,26,'TYPEdsada'),(117,23,'isTestMode'),(118,25,'USER_ID'),(119,21,'action'),(120,21,'params'),(121,25,'Offers_URL'),(122,20,'com.mogo.smspopup.EXTRAS_TIMESTAMP'),(123,20,'com.mogo.smspopup.EXTRAS_THREAD_ID'),(124,31,'ST_START_DELAY'),(125,20,'com.mogo.smspopup.EXTRAS_CONTACT_ID'),(126,16,'WAPS_PID'),(127,19,'WAPS_PID'),(128,24,'url'),(129,20,'android.speech.extra.RESULTS'),(130,20,'com.mogo.smspopup.EXTRAS_MESSAGE_TYPE'),(131,24,'overlayTransition'),(132,20,'com.mogo.smspopup.EXTRAS_CONTACT_LOOKUP'),(133,20,'com.mogo.smspopup.EXTRAS_MESSAGE_BODY'),(134,20,'com.mogo.smspopup.EXTRAS_UNREAD_COUNT'),(135,16,'DEVICE_ID'),(136,19,'DEVICE_ID'),(137,22,'adWidth'),(138,24,'shouldShowBottomBar'),(139,94,'EB80F3291A8E469c962CA133BDC549D7'),(140,90,'shouldEnableBottomBar'),(141,90,'shouldResizeOverlay'),(142,65,'query'),(143,79,'query'),(144,97,'clklogurl'),(145,90,'overlayTitle'),(146,86,'shouldShowBottomBar'),(147,88,'adWidth'),(148,92,'DOMOB_PID'),(149,79,'DOMOB_PID'),(150,90,'DOMOB_PID'),(151,65,'DOMOB_PID'),(152,86,'DOMOB_PID'),(153,94,'DOMOB_PID'),(154,92,'videoCompleted'),(155,92,'DOMOB_TEST_MODE'),(156,79,'DOMOB_TEST_MODE'),(157,90,'DOMOB_TEST_MODE'),(158,65,'DOMOB_TEST_MODE'),(159,86,'DOMOB_TEST_MODE'),(160,94,'DOMOB_TEST_MODE'),(161,90,'transitionTime'),(162,86,'overlayTransition'),(163,90,'canAccelerate'),(164,92,'adName'),(165,86,'shouldResizeOverlay'),(166,65,'GH_APPKEY'),(167,86,'shouldShowTitlebar'),(168,92,'shouldShowBottomBar'),(169,96,'appId'),(170,81,'overlayTransition'),(171,91,'curl'),(172,83,'shouldShowBottomBar'),(173,91,'tit'),(174,83,'videoAd'),(175,81,'shouldShowBottomBar'),(176,91,'clklogurl'),(177,97,'curl'),(178,57,'query'),(179,85,'D780FBF4215247bcBB1AC0AD33C474FE'),(180,85,'EB80F3291A8E469c962CA133BDC549D7'),(181,86,'transitionTime'),(182,97,'tit'),(183,97,'surl'),(184,92,'videoPosition'),(185,78,'overlayTitle'),(186,70,'query'),(187,78,'transitionTime'),(188,92,'videoAd'),(189,94,'D780FBF4215247bcBB1AC0AD33C474FE'),(190,81,'shouldEnableBottomBar'),(191,92,'cached'),(192,96,'actType'),(193,57,'GH_APPKEY'),(194,81,'shouldMakeOverlayTransparent'),(195,81,'cachedAdView'),(196,57,'com.cdjm.reader.ui.androidActiviy.ChangeCounter'),(197,83,'DOMOB_PID'),(198,86,'url'),(199,70,'DOMOB_PID'),(200,81,'DOMOB_PID'),(201,57,'DOMOB_PID'),(202,78,'DOMOB_PID'),(203,86,'overlayTitle'),(204,85,'DOMOB_PID'),(205,85,'172C94EDC717477aBF600D7898A64A8E'),(206,80,'adWidth'),(207,88,'url'),(208,81,'canAccelerate'),(209,94,'D50EF1926ADD471892E72BCE6D7E032C'),(210,78,'shouldEnableBottomBar'),(211,96,'appName'),(212,98,'link'),(213,78,'url'),(214,94,'172C94EDC717477aBF600D7898A64A8E'),(215,92,'DOMOB_ALLOW_LOCATION'),(216,79,'DOMOB_ALLOW_LOCATION'),(217,90,'DOMOB_ALLOW_LOCATION'),(218,65,'DOMOB_ALLOW_LOCATION'),(219,57,'Adwo_PID'),(220,86,'DOMOB_ALLOW_LOCATION'),(221,57,'com.cdjm.reader.ui.androidActiviy.RequestedOrientation'),(222,94,'DOMOB_ALLOW_LOCATION'),(223,89,'appId'),(224,90,'shouldShowTitlebar'),(225,83,'cached'),(226,90,'shouldShowBottomBar'),(227,90,'shouldMakeOverlayTransparent'),(228,81,'overlayTitle'),(229,81,'shouldShowTitlebar'),(230,90,'overlayTransition'),(231,83,'logSet'),(232,86,'shouldMakeOverlayTransparent'),(233,65,'Adwo_PID'),(234,92,'isCachedAd'),(235,65,'com.cdjm.reader.ui.androidActiviy.RequestedOrientation'),(236,78,'shouldMakeOverlayTransparent'),(237,78,'shouldResizeOverlay'),(238,90,'cachedAdView'),(239,65,'com.cdjm.reader.ui.androidActiviy.ChangeCounter'),(240,86,'shouldEnableBottomBar'),(241,97,'limg'),(242,92,'logSet'),(243,81,'shouldResizeOverlay'),(244,89,'actType'),(245,83,'videoPosition'),(246,83,'isCachedAd'),(247,83,'DOMOB_ALLOW_LOCATION'),(248,70,'DOMOB_ALLOW_LOCATION'),(249,81,'DOMOB_ALLOW_LOCATION'),(250,57,'DOMOB_ALLOW_LOCATION'),(251,78,'DOMOB_ALLOW_LOCATION'),(252,85,'DOMOB_ALLOW_LOCATION'),(253,91,'limg'),(254,83,'videoCompleted'),(255,80,'url'),(256,85,'D50EF1926ADD471892E72BCE6D7E032C'),(257,81,'transitionTime'),(258,91,'surl'),(259,83,'adName'),(260,78,'overlayTransition'),(261,83,'DOMOB_TEST_MODE'),(262,70,'DOMOB_TEST_MODE'),(263,81,'DOMOB_TEST_MODE'),(264,57,'DOMOB_TEST_MODE'),(265,78,'DOMOB_TEST_MODE'),(266,85,'DOMOB_TEST_MODE'),(267,78,'shouldShowTitlebar'),(268,89,'appName'),(269,93,'link'),(270,78,'shouldShowBottomBar'),(271,46,'com.cdjm.reader.ui.androidActiviy.ChangeCounter'),(272,71,'SAFE_START'),(273,54,'shouldShowTitlebar'),(274,54,'shouldMakeOverlayTransparent'),(275,54,'overlayTitle'),(276,59,'DOMOB_PID'),(277,50,'DOMOB_PID'),(278,58,'DOMOB_PID'),(279,46,'DOMOB_PID'),(280,54,'DOMOB_PID'),(281,60,'DOMOB_PID'),(282,58,'transitionTime'),(283,59,'cached'),(284,54,'shouldShowBottomBar'),(285,59,'DOMOB_TEST_MODE'),(286,50,'DOMOB_TEST_MODE'),(287,58,'DOMOB_TEST_MODE'),(288,46,'DOMOB_TEST_MODE'),(289,54,'DOMOB_TEST_MODE'),(290,60,'DOMOB_TEST_MODE'),(291,58,'overlayTitle'),(292,56,'adWidth'),(293,60,'D780FBF4215247bcBB1AC0AD33C474FE'),(294,58,'shouldResizeOverlay'),(295,67,'clklogurl'),(296,67,'limg'),(297,67,'curl'),(298,67,'surl'),(299,54,'url'),(300,58,'shouldMakeOverlayTransparent'),(301,58,'overlayTransition'),(302,69,'link'),(303,54,'transitionTime'),(304,56,'url'),(305,58,'canAccelerate'),(306,60,'D50EF1926ADD471892E72BCE6D7E032C'),(307,50,'query'),(308,64,'actType'),(309,59,'videoAd'),(310,59,'DOMOB_ALLOW_LOCATION'),(311,50,'DOMOB_ALLOW_LOCATION'),(312,58,'DOMOB_ALLOW_LOCATION');
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
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'s',0,NULL,NULL),(7,7,'r',1,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'s',0,NULL,NULL),(15,15,'r',1,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'s',0,NULL,NULL),(28,28,'s',0,NULL,NULL),(29,29,'s',0,NULL,NULL),(30,30,'s',0,NULL,NULL),(31,31,'s',0,NULL,NULL),(32,32,'r',1,NULL,NULL),(33,33,'r',1,NULL,NULL),(34,34,'r',0,NULL,NULL),(35,35,'r',0,NULL,NULL),(36,36,'r',1,NULL,NULL),(37,37,'a',1,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'s',0,NULL,NULL),(41,41,'r',1,NULL,NULL),(42,49,'r',1,NULL,NULL),(43,56,'r',1,NULL,NULL),(44,59,'r',1,NULL,NULL),(45,63,'a',0,NULL,NULL),(46,64,'a',1,NULL,NULL),(47,65,'a',0,NULL,NULL),(48,67,'a',0,NULL,NULL),(49,68,'a',0,NULL,NULL),(50,69,'a',1,NULL,NULL),(51,70,'a',0,NULL,NULL),(52,72,'a',0,NULL,NULL),(53,73,'a',0,NULL,NULL),(54,74,'a',0,NULL,NULL),(55,75,'a',0,NULL,NULL),(56,76,'a',0,NULL,NULL),(57,77,'a',1,NULL,NULL),(58,78,'a',0,NULL,NULL),(59,79,'a',0,NULL,NULL),(60,80,'a',0,NULL,NULL),(61,81,'a',0,NULL,NULL),(62,82,'a',0,NULL,NULL),(63,83,'a',0,NULL,NULL),(64,84,'a',0,NULL,NULL),(65,87,'a',1,NULL,NULL),(66,86,'a',0,NULL,NULL),(67,88,'a',0,NULL,NULL),(68,89,'a',0,NULL,NULL),(69,90,'a',0,NULL,NULL),(70,91,'a',1,NULL,NULL),(71,92,'s',0,NULL,NULL),(72,93,'a',0,NULL,NULL),(73,94,'r',1,NULL,NULL),(74,95,'a',0,NULL,NULL),(75,96,'a',0,NULL,NULL),(76,97,'a',0,NULL,NULL),(77,98,'a',0,NULL,NULL),(78,99,'a',0,NULL,NULL),(79,100,'a',1,NULL,NULL),(80,101,'a',0,NULL,NULL),(81,102,'a',0,NULL,NULL),(82,103,'a',0,NULL,NULL),(83,104,'a',0,NULL,NULL),(84,105,'a',0,NULL,NULL),(85,106,'a',0,NULL,NULL),(86,107,'a',0,NULL,NULL),(87,108,'a',0,NULL,NULL),(88,109,'a',0,NULL,NULL),(89,110,'a',0,NULL,NULL),(90,111,'a',0,NULL,NULL),(91,112,'a',0,NULL,NULL),(92,113,'a',0,NULL,NULL),(93,114,'a',0,NULL,NULL),(94,115,'a',0,NULL,NULL),(95,116,'a',0,NULL,NULL),(96,117,'a',0,NULL,NULL),(97,118,'a',0,NULL,NULL),(98,119,'a',0,NULL,NULL),(99,133,'r',1,NULL,NULL),(100,136,'r',1,NULL,NULL),(101,137,'r',1,NULL,NULL),(102,138,'r',1,NULL,NULL),(103,139,'r',1,NULL,NULL),(104,155,'r',1,NULL,NULL),(105,160,'r',1,NULL,NULL),(106,173,'r',1,NULL,NULL),(107,174,'r',1,NULL,NULL),(108,186,'r',1,NULL,NULL),(109,189,'r',1,NULL,NULL),(110,190,'r',1,NULL,NULL),(111,191,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=313 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,6),(2,2,1),(3,3,6),(4,4,5),(5,4,6),(6,5,6),(7,5,5),(8,6,7),(9,7,6),(10,7,5),(11,8,5),(12,8,6),(13,9,3),(14,10,3),(15,11,6),(16,12,13),(17,13,13),(18,14,39),(19,15,41),(20,16,13),(21,17,40),(22,18,10),(23,19,40),(24,20,8),(25,21,14),(26,22,39),(27,23,40),(28,24,14),(29,24,12),(30,25,12),(31,25,14),(32,26,13),(33,27,14),(34,28,12),(35,28,14),(36,29,13),(37,30,12),(38,30,14),(39,31,10),(40,32,14),(41,33,13),(42,34,15),(43,35,20),(44,36,32),(45,37,35),(46,38,21),(47,39,20),(48,40,17),(49,41,30),(50,42,26),(51,43,31),(52,44,17),(53,45,20),(54,46,20),(55,47,20),(56,48,20),(57,49,31),(58,50,17),(59,51,16),(60,51,33),(61,52,17),(62,53,17),(63,54,36),(64,55,20),(65,56,31),(66,57,20),(67,58,17),(68,59,20),(69,60,20),(70,61,18),(71,62,20),(72,63,19),(73,64,17),(74,65,26),(75,66,20),(76,67,31),(77,68,18),(78,69,20),(79,70,25),(80,71,92),(81,71,79),(82,71,94),(83,71,65),(84,72,65),(85,73,94),(86,74,65),(87,75,92),(88,75,65),(89,75,79),(90,75,94),(91,76,90),(92,76,86),(93,76,94),(94,76,92),(95,76,65),(96,77,90),(97,77,86),(98,77,65),(99,77,92),(100,77,79),(101,77,94),(102,78,65),(103,79,79),(104,80,65),(105,81,65),(106,82,94),(107,82,65),(108,82,90),(109,82,92),(110,82,86),(111,82,79),(112,83,65),(113,84,94),(114,85,57),(115,86,57),(116,87,70),(117,87,57),(118,87,83),(119,87,85),(120,87,78),(121,87,81),(122,88,85),(123,89,94),(124,89,92),(125,89,79),(126,89,65),(127,90,57),(128,90,83),(129,90,70),(130,90,85),(131,91,70),(132,91,85),(133,91,83),(134,91,81),(135,91,78),(136,91,57),(137,92,79),(138,92,94),(139,92,65),(140,93,70),(141,93,57),(142,93,85),(143,94,94),(144,95,85),(145,95,57),(146,95,83),(147,95,70),(148,96,70),(149,96,85),(150,96,57),(151,97,65),(152,97,79),(153,97,94),(154,97,92),(155,98,65),(156,98,86),(157,98,90),(158,98,92),(159,98,94),(160,98,79),(161,99,65),(162,100,65),(163,101,92),(164,101,79),(165,101,94),(166,101,65),(167,102,57),(168,102,70),(169,102,85),(170,102,83),(171,103,57),(172,104,79),(173,104,65),(174,104,94),(175,105,65),(176,105,92),(177,105,79),(178,105,94),(179,106,70),(180,106,85),(181,106,57),(182,107,57),(183,107,70),(184,107,85),(185,107,83),(186,108,94),(187,108,65),(188,108,79),(189,109,57),(190,110,65),(191,110,94),(192,110,79),(193,110,92),(194,111,70),(195,112,65),(196,113,57),(197,113,85),(198,113,83),(199,113,70),(200,114,65),(201,115,83),(202,115,85),(203,115,70),(204,115,57),(205,116,79),(206,116,65),(207,116,94),(208,116,92),(209,117,85),(210,117,57),(211,117,70),(212,118,79),(213,118,94),(214,118,65),(215,119,94),(216,119,90),(217,119,65),(218,119,92),(219,119,79),(220,119,86),(221,120,57),(222,121,65),(223,121,79),(224,121,94),(225,122,57),(226,123,85),(227,123,83),(228,123,70),(229,123,57),(230,124,57),(231,125,81),(232,125,83),(233,125,78),(234,125,57),(235,125,85),(236,125,70),(237,126,57),(238,127,78),(239,127,81),(240,127,83),(241,127,85),(242,127,57),(243,128,85),(244,129,57),(245,129,85),(246,129,70),(247,130,85),(248,131,78),(249,131,81),(250,131,83),(251,131,85),(252,131,70),(253,131,57),(254,132,57),(255,133,57),(256,134,83),(257,134,70),(258,134,85),(259,134,57),(260,135,50),(261,135,46),(262,135,58),(263,135,59),(264,135,60),(265,135,54),(266,136,50),(267,136,46),(268,136,60),(269,137,46),(270,138,73),(271,139,60),(272,140,46),(273,141,54),(274,141,59),(275,141,58),(276,141,46),(277,141,60),(278,141,50),(279,142,60),(280,142,59),(281,142,46),(282,142,50),(283,143,46),(284,144,60),(285,144,59),(286,144,46),(287,144,50),(288,145,50),(289,145,46),(290,145,59),(291,145,60),(292,146,50),(293,146,60),(294,146,46),(295,147,46),(296,148,46),(297,149,46),(298,150,50),(299,150,46),(300,150,60),(301,151,50),(302,151,46),(303,151,60),(304,152,50),(305,152,60),(306,152,59),(307,152,46),(308,153,51),(309,154,46),(310,154,59),(311,154,60),(312,154,50);
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
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,6,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(2,1,'<com.gp.tiltmazes.TiltMazesActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',33,'a',NULL),(3,6,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(4,42,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(5,43,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(6,7,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(7,44,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(8,45,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(9,46,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(10,47,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(11,48,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(12,50,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(13,51,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(14,52,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(15,41,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(16,53,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(17,40,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(18,54,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(19,55,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(20,8,'<com.gp.tiltmazes.TiltMazesActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',33,'a',NULL),(21,14,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(22,57,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(23,40,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(24,58,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(25,60,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(26,13,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(27,61,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(28,62,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(29,13,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(30,66,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(31,71,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(32,14,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(33,85,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(34,15,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(35,120,'<com.google.tts.TTS: boolean dataFilesCheck()>',13,'a',NULL),(36,28,'<com.mogo.smspopup.SmsReceiverService: void beginStartingService(android.content.Context,android.content.Intent)>',15,'s',NULL),(37,29,'<com.mogo.smspopup.ReminderReceiverService: void beginStartingService(android.content.Context,android.content.Intent)>',15,'s',NULL),(38,21,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(39,121,'<com.mogo.smspopup.SmsPopupActivity$20: void LaunchOnKeyguardExitSuccess()>',4,'a',NULL),(40,17,'<com.mogo.smspopup.ConfigContactsActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',7,'a',NULL),(41,30,'<com.mogo.smspopup.SmsMonitorService: void registerSMSObserver()>',13,'p',NULL),(42,122,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(43,123,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(44,17,'<com.mogo.smspopup.ConfigContactsActivity: void onActivityResult(int,int,android.content.Intent)>',28,'a',NULL),(45,124,'<com.mogo.smspopup.SmsPopupUtils: com.mogo.smspopup.SmsPopupUtils$ContactIdentification getPersonIdFromEmail(android.content.Context,java.lang.String)>',13,'p',NULL),(46,20,'<com.mogo.smspopup.SmsPopupActivity: void viewContact()>',12,'a',NULL),(47,27,'<com.mogo.smspopup.SmsPopupUtilsService: void beginStartingService(android.content.Context,android.content.Intent)>',15,'s',NULL),(48,125,'<com.mogo.smspopup.SmsPopupActivity$18: void LaunchOnKeyguardExitSuccess()>',8,'a',0),(49,31,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(50,17,'<com.mogo.smspopup.ConfigContactsActivity: boolean onContextItemSelected(android.view.MenuItem)>',20,'a',NULL),(51,124,'<com.mogo.smspopup.SmsPopupUtils: void disableOtherSMSPopup(android.content.Context)>',4,'r',NULL),(52,17,'<com.mogo.smspopup.ConfigContactsActivity: void onCreate(android.os.Bundle)>',10,'p',NULL),(53,17,'<com.mogo.smspopup.ConfigContactsActivity: void selectContact()>',4,'a',NULL),(54,36,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(55,124,'<com.mogo.smspopup.SmsPopupUtils: long findThreadIdFromAddress(android.content.Context,java.lang.String)>',16,'p',NULL),(56,31,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(57,120,'<com.google.tts.TTS: void initTts()>',10,'s',NULL),(58,126,'<com.mogo.smspopup.ConfigContactsActivity$SynchronizeContactNames: android.graphics.Bitmap doInBackground(java.lang.Object[])>',25,'p',NULL),(59,124,'<com.mogo.smspopup.SmsPopupUtils: java.util.ArrayList getUnreadMessages(android.content.Context,long)>',27,'p',NULL),(60,124,'<com.mogo.smspopup.SmsPopupUtils: com.mogo.smspopup.SmsPopupUtils$ContactIdentification getPersonIdFromPhoneNumber(android.content.Context,java.lang.String)>',12,'p',NULL),(61,124,'<com.mogo.smspopup.SmsPopupUtils: java.lang.String getPersonName(android.content.Context,java.lang.String,java.lang.String)>',14,'p',NULL),(62,127,'<com.mogo.smspopup.SmsPopupActivity$9$1: void LaunchOnKeyguardExitSuccess()>',4,'a',NULL),(63,128,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(64,129,'<com.mogo.smspopup.ConfigContactsActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',8,'a',NULL),(65,130,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(66,124,'<com.mogo.smspopup.SmsPopupUtils: long findMessageId(android.content.Context,long,long,java.lang.String,int)>',31,'p',NULL),(67,131,'<com.ju6.a: boolean b()>',178,'p',NULL),(68,132,'<com.google.tts.PrefsActivity$2: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',11,'a',NULL),(69,30,'<com.mogo.smspopup.SmsMonitorService: void beginStartingService(android.content.Context)>',4,'s',NULL),(70,134,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(71,113,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',218,'a',NULL),(72,135,'<com.ju6.mms.util.SqliteWrapper: android.net.Uri insert(android.content.Context,android.content.ContentResolver,android.net.Uri,android.content.ContentValues)>',4,'p',NULL),(73,140,'<net.youmi.android.t: void onClick(android.view.View)>',48,'a',NULL),(74,141,'<com.ju6.c: boolean b()>',272,'p',NULL),(75,142,'<com.millennialmedia.android.MillennialMediaView: void openVideo()>',10,'r',NULL),(76,143,'<cn.domob.android.ads.o$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(77,144,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor m(android.content.Context)>',11,'p',NULL),(78,87,'<com.evilsunflower.reader.FBReader: void onStart()>',14,'a',NULL),(79,100,'<com.evilsunflower.reader.BookmarksActivity: boolean onContextItemSelected(android.view.MenuItem)>',19,'a',NULL),(80,141,'<com.ju6.c: void run()>',146,'p',NULL),(81,87,'<com.evilsunflower.reader.FBReader: void onNewIntent(android.content.Intent)>',17,'a',NULL),(82,145,'<cn.domob.android.ads.o: void v(cn.domob.android.ads.o)>',6,'a',NULL),(83,141,'<com.ju6.c: boolean b()>',192,'p',NULL),(84,146,'<net.youmi.android.be: void a(android.content.Context,java.lang.String)>',6,'a',NULL),(85,147,'<com.ju6.mms.util.SqliteWrapper: int update(android.content.Context,android.content.ContentResolver,android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',6,'p',NULL),(86,77,'<com.evilsunflower.reader.FBReader: void onNewIntent(android.content.Intent)>',17,'a',NULL),(87,148,'<cn.domob.android.a.a$a: java.net.Proxy a(android.content.Context)>',72,'p',NULL),(88,149,'<com.evilsunflower.reader.ui.BugReportActivity$1: void onClick(android.view.View)>',21,'a',NULL),(89,113,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',181,'a',NULL),(90,104,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',209,'a',NULL),(91,150,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor m(android.content.Context)>',11,'p',NULL),(92,151,'<com.guohead.sdk.adapters.CustomAdapter$3: void onClick(android.view.View)>',4,'a',NULL),(93,152,'<com.madhouse.android.ads._: com.madhouse.android.ads.m _(android.content.Context)>',11,'p',NULL),(94,153,'<com.evilsunflower.reader.ui.BugReportActivity$1: void onClick(android.view.View)>',21,'a',NULL),(95,104,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',237,'a',NULL),(96,154,'<com.guohead.sdk.adapters.CustomAdapter$3: void onClick(android.view.View)>',4,'a',NULL),(97,113,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',158,'a',NULL),(98,156,'<cn.domob.android.ads.g$1: void onClick(android.content.DialogInterface,int)>',8,'a',0),(99,141,'<com.ju6.c: boolean b()>',195,'p',0),(100,157,'<com.ju6.mms.pdu.PduPersister: void a(com.ju6.mms.pdu.PduPart,android.net.Uri,java.lang.String)>',23,'p',0),(101,113,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',209,'a',NULL),(102,158,'<com.millennialmedia.android.MillennialMediaView: void openVideo()>',10,'r',NULL),(103,77,'<com.evilsunflower.reader.FBReader: void onStart()>',14,'a',NULL),(104,159,'<com.baidu.as: void e(com.baidu.bl)>',23,'a',NULL),(105,113,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',229,'a',NULL),(106,161,'<com.baidu.al: void onClick(android.view.View)>',24,'a',NULL),(107,104,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',229,'a',NULL),(108,162,'<com.baidu.al: void onClick(android.view.View)>',24,'a',NULL),(109,147,'<com.ju6.mms.util.SqliteWrapper: android.net.Uri insert(android.content.Context,android.content.ContentResolver,android.net.Uri,android.content.ContentValues)>',4,'p',NULL),(110,113,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',189,'a',NULL),(111,91,'<com.evilsunflower.reader.BookmarksActivity: boolean onContextItemSelected(android.view.MenuItem)>',19,'a',NULL),(112,135,'<com.ju6.mms.util.SqliteWrapper: int update(android.content.Context,android.content.ContentResolver,android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',6,'p',NULL),(113,104,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',189,'a',NULL),(114,135,'<com.ju6.mms.util.SqliteWrapper: android.database.Cursor query(android.content.Context,android.content.ContentResolver,android.net.Uri,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String)>',7,'p',NULL),(115,104,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',181,'a',NULL),(116,113,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',237,'a',NULL),(117,163,'<com.baidu.as: void e(com.baidu.bl)>',23,'a',NULL),(118,164,'<com.guohead.sdk.adapters.CustomAdapter$4: void onClick(android.view.View)>',4,'a',NULL),(119,165,'<cn.domob.android.a.a$a: java.net.Proxy a(android.content.Context)>',72,'p',NULL),(120,166,'<com.ju6.c: boolean b()>',192,'p',NULL),(121,167,'<com.madhouse.android.ads._: com.madhouse.android.ads.m _(android.content.Context)>',11,'p',NULL),(122,168,'<com.ju6.mms.pdu.PduPersister: void a(com.ju6.mms.pdu.PduPart,android.net.Uri,java.lang.String)>',23,'p',0),(123,104,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',158,'a',NULL),(124,147,'<com.ju6.mms.util.SqliteWrapper: android.database.Cursor query(android.content.Context,android.content.ContentResolver,android.net.Uri,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String)>',7,'p',NULL),(125,169,'<cn.domob.android.ads.o: void v(cn.domob.android.ads.o)>',6,'a',NULL),(126,166,'<com.ju6.c: void run()>',146,'p',NULL),(127,170,'<cn.domob.android.ads.o$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(128,171,'<net.youmi.android.t: void onClick(android.view.View)>',48,'a',NULL),(129,172,'<com.guohead.sdk.adapters.CustomAdapter$4: void onClick(android.view.View)>',4,'a',NULL),(130,175,'<net.youmi.android.be: void a(android.content.Context,java.lang.String)>',6,'a',NULL),(131,176,'<cn.domob.android.ads.g$1: void onClick(android.content.DialogInterface,int)>',8,'a',0),(132,166,'<com.ju6.c: boolean b()>',195,'p',0),(133,166,'<com.ju6.c: boolean b()>',272,'p',NULL),(134,104,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',218,'a',NULL),(135,177,'<cn.domob.android.ads.g$1: void onClick(android.content.DialogInterface,int)>',8,'a',0),(136,178,'<com.baidu.as: void e(com.baidu.bl)>',23,'a',NULL),(137,179,'<com.ju6.c: boolean b()>',272,'p',NULL),(138,94,'<com.evilsunflower.reader.control.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(139,180,'<net.youmi.android.be: void a(android.content.Context,java.lang.String)>',6,'a',NULL),(140,181,'<com.ju6.mms.util.SqliteWrapper: android.database.Cursor query(android.content.Context,android.content.ContentResolver,android.net.Uri,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String)>',7,'p',NULL),(141,182,'<cn.domob.android.a.a$a: java.net.Proxy a(android.content.Context)>',72,'p',NULL),(142,79,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',218,'a',NULL),(143,183,'<com.ju6.mms.pdu.PduPersister: void a(com.ju6.mms.pdu.PduPart,android.net.Uri,java.lang.String)>',23,'p',0),(144,79,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',181,'a',NULL),(145,184,'<com.millennialmedia.android.MillennialMediaView: void openVideo()>',10,'r',NULL),(146,185,'<com.guohead.sdk.adapters.CustomAdapter$4: void onClick(android.view.View)>',4,'a',NULL),(147,181,'<com.ju6.mms.util.SqliteWrapper: android.net.Uri insert(android.content.Context,android.content.ContentResolver,android.net.Uri,android.content.ContentValues)>',4,'p',NULL),(148,179,'<com.ju6.c: void run()>',146,'p',NULL),(149,64,'<com.evilsunflower.reader.FBReader: void onStart()>',14,'a',NULL),(150,187,'<com.madhouse.android.ads._: com.madhouse.android.ads.m _(android.content.Context)>',11,'p',NULL),(151,188,'<com.guohead.sdk.adapters.CustomAdapter$3: void onClick(android.view.View)>',4,'a',NULL),(152,79,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',209,'a',NULL),(153,192,'<com.evilsunflower.reader.control.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(154,79,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',237,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,6,13),(2,8,13),(3,10,13),(4,11,13),(5,12,13),(6,13,13),(7,14,14),(8,15,1),(9,16,1),(10,17,1),(11,18,1),(12,22,14),(13,24,13),(14,26,1),(15,28,1),(16,29,1),(17,30,1),(18,33,1),(19,35,1),(20,37,13),(21,40,13),(22,41,13),(23,42,13),(24,43,13),(25,45,1),(26,46,1),(27,47,1),(28,48,1),(29,50,13),(30,51,14),(31,54,13),(32,59,17),(33,60,13),(34,61,17),(35,62,1),(36,64,1),(37,65,1),(38,66,1),(39,67,1),(40,69,18),(41,70,18),(42,71,19),(43,72,20),(44,73,21),(45,74,20),(46,75,22),(47,79,10),(48,80,23),(49,81,23),(50,85,24),(51,86,25),(52,89,14),(53,90,26),(54,92,13),(55,94,28),(56,95,28),(57,96,28),(58,97,28),(59,98,28),(60,99,28),(61,100,28),(62,101,28),(63,102,29),(64,103,13),(65,105,13),(66,106,13),(67,107,13),(68,108,13),(69,112,13),(70,113,13),(71,114,13),(72,115,13),(73,116,13),(74,117,13),(75,119,13),(76,120,13),(77,121,13),(78,122,30),(79,123,13),(80,125,31),(81,127,30),(82,128,13),(83,130,13),(84,131,31),(85,132,29),(86,134,13),(87,135,13),(88,136,13),(89,137,13),(90,138,13),(91,139,13),(92,141,13),(93,143,13),(94,144,13),(95,146,13),(96,147,13),(97,148,13),(98,150,13),(99,151,13),(100,152,13),(101,153,13),(102,154,28),(103,155,28),(104,156,28),(105,157,28),(106,158,28),(107,159,28),(108,160,28),(109,161,28),(110,163,13),(111,164,13),(112,165,13),(113,166,13),(114,167,13),(115,168,13),(116,169,13),(117,170,13),(118,171,13),(119,173,13),(120,175,13),(121,176,13),(122,177,13),(123,178,13),(124,179,13),(125,180,13),(126,181,13),(127,182,13),(128,183,13),(129,186,29),(130,190,31),(131,191,1),(132,192,1),(133,193,13);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,15,1),(2,16,2),(3,17,2),(4,18,1),(5,26,1),(6,28,2),(7,29,1),(8,30,2),(9,33,1),(10,35,2),(11,45,1),(12,46,2),(13,47,2),(14,48,1),(15,59,3),(16,60,3),(17,61,3),(18,64,1),(19,65,2),(20,66,1),(21,67,2),(22,85,4),(23,191,1),(24,192,2);
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
INSERT INTO `IClasses` VALUES (1,1,'com/google/update/Dialog'),(2,2,'com/google/update/Dialog'),(3,3,'com/gp/tiltmazes/SelectMazeActivity'),(4,4,'com/google/update/Dialog'),(5,5,'com/google/update/Dialog'),(6,7,'com/google/update/UpdateService'),(7,19,'com/waps/OffersWebView'),(8,20,'com/waps/OffersWebView'),(9,21,'NULL-CONSTANT'),(10,23,'com/google/update/UpdateService'),(11,25,'com/google/update/Dialog'),(12,27,'com/google/update/Dialog'),(13,31,'com/gp/tiltmazes/SelectMazeActivity'),(14,32,'com/google/update/Dialog'),(15,34,'com/google/update/Dialog'),(16,36,'com/google/update/Dialog'),(17,38,'com/google/update/Dialog'),(18,49,'(.*)'),(19,52,'com/google/update/Dialog'),(20,53,'com/google/update/Dialog'),(21,55,'com/google/update/UpdateService'),(22,56,'com.google.tts.ConfigurationManager'),(23,57,'com/mogo/smspopup/SmsReceiverService'),(24,58,'com/mogo/smspopup/ReminderReceiverService'),(25,63,'com/mogo/smspopup/ConfigPerContactActivity'),(26,68,'com/mogo/smspopup/ConfigPerContactActivity'),(27,71,'com/mogo/smspopup/SmsPopupUtilsService'),(28,72,'com/mogo/smspopup/SmsPopupUtilsService'),(29,73,'com/mogo/smspopup/SmsPopupUtilsService'),(30,74,'com/mogo/smspopup/SmsPopupUtilsService'),(31,75,'com/mogo/smspopup/SmsPopupUtilsService'),(32,76,'com/google/update/Dialog'),(33,77,'com/google/update/Dialog'),(34,78,'com/mogo/smspopup/ConfigPerContactActivity'),(35,79,'com.mogo.smspopuppro.ExternalEventReceiver'),(36,82,'com/google/update/UpdateService'),(37,83,'com/google/update/Dialog'),(38,84,'com/google/update/Dialog'),(39,87,'com/waps/OffersWebView'),(40,88,'com/mogo/smspopup/ConfigPerContactActivity'),(41,90,'com.svox.pico.CheckVoiceData'),(42,91,'com/mogo/smspopup/SmsMonitorService'),(43,93,'com/millennialmedia/android/MMAdViewOverlayActivity'),(44,109,'com.evilsunflower.reader.FBReader'),(45,110,'com/evilsunflower/reader/BookmarkEditActivity'),(46,111,'com.evilsunflower.reader.FBReader'),(47,118,'com.evilsunflower.reader.FBReader'),(48,124,'com/millennialmedia/android/MMAdViewOverlayActivity'),(49,133,'com.evilsunflower.reader.FBReader'),(50,136,'com.android.browser.BrowserActivity'),(51,138,'com.android.browser.BrowserActivity'),(52,140,'com/evilsunflower/reader/BookmarkEditActivity'),(53,142,'com/millennialmedia/android/MMAdViewOverlayActivity'),(54,172,'com/millennialmedia/android/MMAdViewOverlayActivity'),(55,174,'com/evilsunflower/reader/control/UpdateService'),(56,184,'com/millennialmedia/android/MMAdViewOverlayActivity'),(57,185,'com/millennialmedia/android/MMAdViewOverlayActivity'),(58,188,'com.evilsunflower.reader.FBReader');
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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,6,1),(2,8,3),(3,10,4),(4,11,5),(5,12,6),(6,13,7),(7,24,8),(8,37,9),(9,40,10),(10,41,11),(11,42,12),(12,43,13),(13,50,15),(14,54,16),(15,59,17),(16,60,18),(17,61,19),(18,69,23),(19,70,24),(20,80,27),(21,81,28),(22,92,39),(23,93,40),(24,103,45),(25,105,46),(26,106,47),(27,107,48),(28,108,49),(29,112,52),(30,113,54),(31,114,55),(32,115,56),(33,116,58),(34,117,59),(35,119,60),(36,120,62),(37,121,63),(38,123,64),(39,124,65),(40,125,66),(41,128,69),(42,130,70),(43,131,71),(44,134,72),(45,135,73),(46,136,74),(47,137,75),(48,138,76),(49,139,80),(50,141,82),(51,142,85),(52,143,86),(53,144,87),(54,146,91),(55,147,94),(56,148,96),(57,150,97),(58,151,98),(59,152,99),(60,153,100),(61,163,101),(62,164,102),(63,165,103),(64,166,104),(65,167,105),(66,168,106),(67,169,107),(68,170,108),(69,171,109),(70,172,111),(71,173,112),(72,175,114),(73,176,115),(74,177,116),(75,178,117),(76,179,118),(77,180,119),(78,181,120),(79,182,121),(80,183,122),(81,184,126),(82,185,127),(83,190,133),(84,193,134);
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
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'TYPEdsada'),(2,2,'MSG'),(3,2,'TYPEdsada'),(4,4,'TYPEdsada'),(5,5,'MSG'),(6,5,'TYPEdsada'),(7,19,'Notify_Url_Params'),(8,19,'UrlPath'),(9,19,'ACTIVITY_FLAG'),(10,19,'isFinshClose'),(11,19,'offers_webview_tag'),(12,20,'UrlPath'),(13,20,'ACTIVITY_FLAG'),(14,20,'isFinshClose'),(15,20,'offers_webview_tag'),(16,25,'TYPEdsada'),(17,27,'MSG'),(18,27,'TYPEdsada'),(19,32,'TYPEdsada'),(20,34,'MSG'),(21,34,'TYPEdsada'),(22,36,'TYPEdsada'),(23,38,'MSG'),(24,38,'TYPEdsada'),(25,52,'TYPEdsada'),(26,53,'MSG'),(27,53,'TYPEdsada'),(28,57,'result'),(29,63,'com.mogo.smspopuppro.EXTRA_CONTACT_ID'),(30,68,'com.mogo.smspopuppro.EXTRA_CONTACT_ID'),(31,71,'(.*)'),(32,73,'(.*)'),(33,74,'com.mogo.smspopup.EXTRAS_REPLYING'),(34,74,'(.*)'),(35,75,'(.*)'),(36,75,'com.mogo.smspopup.EXTRAS_QUICKREPLY'),(37,76,'TYPEdsada'),(38,77,'MSG'),(39,77,'TYPEdsada'),(40,78,'com.mogo.smspopuppro.EXTRA_CONTACT_ID'),(41,83,'TYPEdsada'),(42,84,'MSG'),(43,84,'TYPEdsada'),(44,86,'android.speech.extra.LANGUAGE_MODEL'),(45,87,'USER_ID'),(46,87,'CLIENT_PACKAGE'),(47,87,'Offers_URL'),(48,87,'URL_PARAMS'),(49,88,'com.mogo.smspopuppro.EXTRA_CONTACT_ID'),(50,93,'cachedAdView'),(51,94,'android.intent.extra.INTENT'),(52,95,'android.intent.extra.INTENT'),(53,96,'android.intent.extra.TITLE'),(54,96,'android.intent.extra.INTENT'),(55,97,'android.intent.extra.INTENT'),(56,98,'android.intent.extra.TITLE'),(57,98,'android.intent.extra.INTENT'),(58,99,'android.intent.extra.INTENT'),(59,100,'android.intent.extra.TITLE'),(60,100,'android.intent.extra.INTENT'),(61,101,'android.intent.extra.TITLE'),(62,101,'android.intent.extra.INTENT'),(63,102,'command'),(64,122,'android.intent.extra.TEXT'),(65,122,'android.intent.extra.SUBJECT'),(66,122,'android.intent.extra.EMAIL'),(67,124,'cachedAdView'),(68,127,'android.intent.extra.TEXT'),(69,127,'android.intent.extra.SUBJECT'),(70,127,'android.intent.extra.EMAIL'),(71,132,'command'),(72,142,'cachedAdView'),(73,154,'android.intent.extra.INTENT'),(74,155,'android.intent.extra.INTENT'),(75,156,'android.intent.extra.TITLE'),(76,156,'android.intent.extra.INTENT'),(77,157,'android.intent.extra.INTENT'),(78,158,'android.intent.extra.TITLE'),(79,158,'android.intent.extra.INTENT'),(80,159,'android.intent.extra.INTENT'),(81,160,'android.intent.extra.TITLE'),(82,160,'android.intent.extra.INTENT'),(83,161,'android.intent.extra.TITLE'),(84,161,'android.intent.extra.INTENT'),(85,172,'cachedAdView'),(86,184,'cachedAdView'),(87,185,'cachedAdView'),(88,186,'command');
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(5,3,1),(6,4,2),(7,4,3),(8,4,4),(9,5,1),(10,6,5),(11,7,6),(12,8,7),(13,9,8),(14,10,9),(15,11,10),(16,12,11),(17,13,12),(18,14,2),(19,14,4),(20,14,3),(21,15,1),(22,16,2),(23,16,3),(24,16,4),(25,17,15),(26,18,15),(27,19,15),(28,20,1),(29,21,16),(30,22,16),(31,23,1),(32,24,16),(33,25,1),(34,26,16),(35,27,16),(36,28,3),(37,28,4),(38,28,2),(39,29,16),(40,30,15),(41,31,27),(42,32,27),(43,33,27),(44,34,27),(45,35,15),(46,36,33),(47,36,32),(48,37,33),(49,37,32),(50,38,15),(51,39,15),(52,40,27),(53,41,27),(54,42,27),(55,43,27),(56,44,15),(57,45,33),(58,45,32),(59,46,27),(60,47,27),(61,48,27),(62,49,27),(63,50,27);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,5,1),(4,15,1),(5,20,1),(6,23,1),(7,25,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,6,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(2,17,'package',NULL,NULL,NULL,NULL,NULL),(3,18,'package',NULL,NULL,NULL,NULL,NULL),(4,19,'package',NULL,NULL,NULL,NULL,NULL),(5,30,'package',NULL,NULL,NULL,NULL,NULL),(6,35,'package',NULL,NULL,NULL,NULL,NULL),(7,38,'package',NULL,NULL,NULL,NULL,NULL),(8,39,'package',NULL,NULL,NULL,NULL,NULL),(9,44,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,8,'application','vnd.android.package-archive'),(2,10,'application','vnd.android.package-archive'),(3,11,'application','vnd.android.package-archive'),(4,12,'application','vnd.android.package-archive'),(5,13,'application','vnd.android.package-archive'),(6,24,'application','vnd.android.package-archive'),(7,37,'application','vnd.android.package-archive'),(8,40,'application','vnd.android.package-archive'),(9,41,'application','vnd.android.package-archive'),(10,42,'application','vnd.android.package-archive'),(11,43,'application','vnd.android.package-archive'),(12,54,'application','vnd.android.package-archive'),(13,61,'(.*)','(.*)'),(14,62,'vnd.android-dir','mms-sms'),(15,92,'application','vnd.android.package-archive'),(16,103,'application','vnd.android.package-archive'),(17,105,'application','vnd.android.package-archive'),(18,106,'application','vnd.android.package-archive'),(19,107,'application','vnd.android.package-archive'),(20,108,'application','vnd.android.package-archive'),(21,113,'application','vnd.android.package-archive'),(22,114,'application','vnd.android.package-archive'),(23,115,'application','vnd.android.package-archive'),(24,116,'application','vnd.android.package-archive'),(25,117,'application','vnd.android.package-archive'),(26,119,'application','vnd.android.package-archive'),(27,120,'application','vnd.android.package-archive'),(28,121,'application','vnd.android.package-archive'),(29,122,'message','rfc822'),(30,123,'application','vnd.android.package-archive'),(31,127,'message','rfc822'),(32,134,'application','vnd.android.package-archive'),(33,144,'application','vnd.android.package-archive'),(34,148,'application','vnd.android.package-archive'),(35,150,'application','vnd.android.package-archive'),(36,151,'application','vnd.android.package-archive'),(37,152,'application','vnd.android.package-archive'),(38,153,'application','vnd.android.package-archive'),(39,163,'application','vnd.android.package-archive'),(40,164,'application','vnd.android.package-archive'),(41,165,'application','vnd.android.package-archive'),(42,166,'application','vnd.android.package-archive'),(43,167,'application','vnd.android.package-archive'),(44,168,'application','vnd.android.package-archive'),(45,169,'application','vnd.android.package-archive'),(46,170,'application','vnd.android.package-archive'),(47,171,'application','vnd.android.package-archive'),(48,173,'application','vnd.android.package-archive'),(49,175,'application','vnd.android.package-archive'),(50,176,'application','vnd.android.package-archive'),(51,177,'application','vnd.android.package-archive'),(52,178,'application','vnd.android.package-archive'),(53,179,'application','vnd.android.package-archive'),(54,180,'application','vnd.android.package-archive'),(55,181,'application','vnd.android.package-archive'),(56,182,'application','vnd.android.package-archive'),(57,183,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.gp.tiltmazes'),(2,2,'com.gp.tiltmazes'),(3,3,'com.gp.tiltmazes'),(4,4,'com.gp.tiltmazes'),(5,5,'com.gp.tiltmazes'),(6,7,'com.gp.tiltmazes'),(7,15,'com.noshufou.android.su'),(8,16,'com.noshufou.android.su'),(9,17,'com.gp.tiltmazes'),(10,18,'com.gp.tiltmazes'),(11,19,'com.gp.tiltmazes'),(12,20,'com.gp.tiltmazes'),(13,21,'NULL-CONSTANT'),(14,23,'com.ps.pushbox'),(15,25,'com.ps.pushbox'),(16,26,'com.noshufou.android.su'),(17,28,'com.noshufou.android.su'),(18,27,'com.ps.pushbox'),(19,29,'com.ps.pushbox'),(20,30,'com.ps.pushbox'),(21,31,'com.gp.tiltmazes'),(22,32,'com.gp.tiltmazes'),(23,33,'com.noshufou.android.su'),(24,34,'com.gp.tiltmazes'),(25,35,'com.noshufou.android.su'),(26,36,'com.ps.pushbox'),(27,38,'com.ps.pushbox'),(28,45,'(.*)'),(29,46,'(.*)'),(30,47,'com.gp.tiltmazes'),(31,48,'com.gp.tiltmazes'),(32,49,'(.*)'),(33,52,'com.gp.tiltmazes'),(34,53,'com.gp.tiltmazes'),(35,55,'com.gp.tiltmazes'),(36,56,'com.mogo.smspopup'),(37,57,'com.mogo.smspopup'),(38,58,'com.mogo.smspopup'),(39,63,'com.mogo.smspopup'),(40,64,'com.noshufou.android.su'),(41,65,'com.noshufou.android.su'),(42,66,'com.mogo.smspopup'),(43,67,'com.mogo.smspopup'),(44,68,'com.mogo.smspopup'),(45,71,'com.mogo.smspopup'),(46,72,'com.mogo.smspopup'),(47,73,'com.mogo.smspopup'),(48,74,'com.mogo.smspopup'),(49,75,'com.mogo.smspopup'),(50,76,'com.mogo.smspopup'),(51,77,'com.mogo.smspopup'),(52,78,'com.mogo.smspopup'),(53,79,'com.mogo.smspopuppro'),(54,82,'com.mogo.smspopup'),(55,83,'com.mogo.smspopup'),(56,84,'com.mogo.smspopup'),(57,87,'com.mogo.smspopup'),(58,88,'com.mogo.smspopup'),(59,90,'com.svox.pico'),(60,91,'com.mogo.smspopup'),(61,93,'com.evilsunflower.reader.evil20ji'),(62,109,'com.evilsunflower.reader.evil20ji'),(63,110,'com.evilsunflower.reader.evil20ji'),(64,111,'com.evilsunflower.reader.evil20ji'),(65,118,'com.evilsunflower.reader.evilGongxin'),(66,124,'com.evilsunflower.reader.evil20ji'),(67,133,'com.evilsunflower.reader.evilGongxin'),(68,136,'com.android.browser'),(69,138,'com.android.browser'),(70,140,'com.evilsunflower.reader.evilGongxin'),(71,142,'com.evilsunflower.reader.evilGongxin'),(72,172,'com.evilsunflower.reader.evilGongxin'),(73,174,'com.evilsunflower.reader.evilZenyang16'),(74,184,'com.evilsunflower.reader.evilZenyang16'),(75,185,'com.evilsunflower.reader.evilZenyang16'),(76,188,'com.evilsunflower.reader.evilZenyang16'),(77,191,'com.noshufou.android.su'),(78,192,'com.noshufou.android.su');
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,7,0),(3,8,0),(4,15,0),(5,16,0),(6,32,0),(7,32,0),(8,32,0),(9,32,0),(10,33,0),(11,33,0),(12,33,0),(13,33,0),(14,36,0),(15,37,0),(16,41,0),(17,42,0),(18,43,0),(19,44,0),(20,46,0),(21,46,0),(22,50,0),(23,57,0),(24,57,0),(25,65,0),(26,65,0),(27,70,0),(28,73,0),(29,79,0),(30,99,0),(31,100,0),(32,101,0),(33,102,0),(34,103,0),(35,103,0),(36,104,0),(37,102,0),(38,105,0),(39,103,0),(40,106,0),(41,107,0),(42,104,0),(43,105,0),(44,105,0),(45,108,0),(46,109,0),(47,73,0),(48,110,0),(49,108,0),(50,111,0);
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
INSERT INTO `Intents` VALUES (1,1,0,0),(2,1,0,0),(3,2,0,0),(4,3,0,0),(5,3,0,0),(6,4,1,0),(7,6,0,0),(8,8,1,0),(9,8,1,0),(10,8,1,0),(11,8,1,0),(12,8,1,0),(13,8,1,0),(14,9,1,0),(15,10,1,0),(16,10,1,0),(17,11,1,0),(18,11,1,0),(19,12,0,0),(20,12,0,0),(21,13,0,0),(22,14,1,0),(23,15,0,0),(24,16,1,0),(25,17,0,0),(26,18,1,0),(27,17,0,0),(28,18,1,0),(29,19,1,0),(30,19,1,0),(31,20,0,0),(32,21,0,0),(33,22,1,0),(34,21,0,0),(35,22,1,0),(36,23,0,0),(37,24,1,0),(38,23,0,0),(39,24,1,0),(40,24,1,0),(41,24,1,0),(42,24,1,0),(43,24,1,0),(44,26,1,0),(45,26,1,0),(46,26,1,0),(47,27,1,0),(48,27,1,0),(49,29,0,0),(50,30,1,0),(51,31,1,0),(52,32,0,0),(53,32,0,0),(54,33,1,0),(55,34,0,0),(56,35,0,0),(57,36,0,0),(58,37,0,0),(59,38,1,0),(60,38,1,0),(61,38,1,0),(62,39,1,0),(63,40,0,0),(64,42,1,0),(65,42,1,0),(66,43,1,0),(67,43,1,0),(68,44,0,0),(69,46,1,0),(70,46,1,0),(71,47,0,0),(72,47,0,0),(73,47,0,0),(74,47,0,0),(75,47,0,0),(76,49,0,0),(77,49,0,0),(78,50,0,0),(79,51,0,0),(80,53,1,0),(81,53,1,0),(82,54,0,0),(83,56,0,0),(84,56,0,0),(85,57,1,0),(86,62,1,0),(87,63,0,0),(88,64,0,0),(89,65,1,0),(90,68,0,0),(91,69,0,0),(92,70,1,0),(93,71,0,0),(94,73,1,0),(95,73,1,0),(96,73,1,0),(97,73,1,0),(98,73,1,0),(99,73,1,0),(100,73,1,0),(101,73,1,0),(102,75,1,0),(103,76,1,0),(104,76,1,0),(105,76,1,0),(106,76,1,0),(107,76,1,0),(108,76,1,0),(109,78,0,0),(110,79,0,0),(111,81,0,0),(112,82,1,0),(113,84,1,0),(114,84,1,0),(115,84,1,0),(116,84,1,0),(117,84,1,0),(118,86,0,0),(119,84,1,0),(120,84,1,0),(121,84,1,0),(122,88,1,0),(123,84,1,0),(124,89,0,0),(125,90,1,0),(126,92,1,0),(127,94,1,0),(128,95,1,0),(129,96,1,0),(130,97,1,0),(131,101,1,0),(132,102,1,0),(133,103,0,0),(134,104,1,0),(135,105,1,0),(136,106,0,0),(137,107,1,0),(138,108,0,0),(139,110,1,0),(140,111,0,0),(141,113,1,0),(142,115,0,0),(143,116,1,0),(144,117,1,0),(145,118,1,0),(146,123,1,0),(147,125,1,0),(148,127,1,0),(149,127,1,0),(150,127,1,0),(151,127,1,0),(152,127,1,0),(153,127,1,0),(154,128,1,0),(155,128,1,0),(156,128,1,0),(157,128,1,0),(158,128,1,0),(159,128,1,0),(160,128,1,0),(161,128,1,0),(162,129,1,0),(163,130,1,0),(164,130,1,0),(165,130,1,0),(166,130,1,0),(167,130,1,0),(168,130,1,0),(169,130,1,0),(170,130,1,0),(171,130,1,0),(172,134,0,0),(173,136,1,0),(174,138,0,0),(175,139,1,0),(176,139,1,0),(177,139,1,0),(178,139,1,0),(179,139,1,0),(180,139,1,0),(181,139,1,0),(182,139,1,0),(183,139,1,0),(184,142,0,0),(185,144,0,0),(186,145,1,0),(187,146,1,0),(188,149,0,0),(189,151,1,0),(190,152,1,0),(191,153,1,0),(192,153,1,0),(193,154,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=629 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,3,2,2,NULL),(2,3,9,2,NULL),(3,44,1,2,NULL),(4,45,1,2,NULL),(5,46,1,2,NULL),(6,59,1,2,NULL),(7,60,1,2,NULL),(8,190,1,2,NULL),(9,193,1,2,NULL),(10,125,1,2,NULL),(11,128,1,2,NULL),(12,137,1,2,NULL),(13,141,1,2,NULL),(14,146,1,2,NULL),(15,130,1,2,NULL),(16,131,1,2,NULL),(17,135,1,2,NULL),(18,139,1,2,NULL),(19,143,1,2,NULL),(20,1,3,2,NULL),(21,1,10,2,NULL),(22,1,26,2,NULL),(23,1,39,2,NULL),(24,2,3,2,NULL),(25,2,10,2,NULL),(26,2,26,2,NULL),(27,2,39,2,NULL),(28,4,3,2,NULL),(29,4,10,2,NULL),(30,4,26,2,NULL),(31,4,39,2,NULL),(32,5,3,2,NULL),(33,5,10,2,NULL),(34,5,26,2,NULL),(35,5,39,2,NULL),(36,7,6,2,NULL),(37,7,14,2,NULL),(38,7,31,2,NULL),(39,7,40,2,NULL),(40,44,7,2,NULL),(41,45,7,2,NULL),(42,46,7,2,NULL),(43,59,7,2,NULL),(44,60,7,2,NULL),(45,190,7,2,NULL),(46,193,7,2,NULL),(47,125,7,2,NULL),(48,128,7,2,NULL),(49,137,7,2,NULL),(50,141,7,2,NULL),(51,146,7,2,NULL),(52,130,7,2,NULL),(53,131,7,2,NULL),(54,135,7,2,NULL),(55,139,7,2,NULL),(56,143,7,2,NULL),(57,31,2,2,NULL),(58,31,9,2,NULL),(59,44,8,2,NULL),(60,45,8,2,NULL),(61,46,8,2,NULL),(62,59,8,2,NULL),(63,60,8,2,NULL),(64,190,8,2,NULL),(65,193,8,2,NULL),(66,125,8,2,NULL),(67,128,8,2,NULL),(68,137,8,2,NULL),(69,141,8,2,NULL),(70,146,8,2,NULL),(71,130,8,2,NULL),(72,131,8,2,NULL),(73,135,8,2,NULL),(74,139,8,2,NULL),(75,143,8,2,NULL),(76,44,15,2,NULL),(77,45,15,2,NULL),(78,46,15,2,NULL),(79,44,16,2,NULL),(80,45,16,2,NULL),(81,46,16,2,NULL),(82,44,32,2,NULL),(83,45,32,2,NULL),(84,46,32,2,NULL),(85,44,33,2,NULL),(86,45,33,2,NULL),(87,46,33,2,NULL),(88,44,36,2,NULL),(89,45,36,2,NULL),(90,46,36,2,NULL),(91,44,37,2,NULL),(92,45,37,2,NULL),(93,46,37,2,NULL),(94,44,41,2,NULL),(95,45,41,2,NULL),(96,46,41,2,NULL),(97,44,46,2,NULL),(98,45,46,2,NULL),(99,46,46,2,NULL),(100,59,37,2,NULL),(101,44,50,2,NULL),(102,60,37,2,NULL),(103,45,50,2,NULL),(104,190,37,2,NULL),(105,46,50,2,NULL),(106,193,37,2,NULL),(107,44,73,2,NULL),(108,125,37,2,NULL),(109,45,73,2,NULL),(110,128,37,2,NULL),(111,46,73,2,NULL),(112,137,37,2,NULL),(113,44,108,2,NULL),(114,141,37,2,NULL),(115,45,108,2,NULL),(116,146,37,2,NULL),(117,46,108,2,NULL),(118,130,37,2,NULL),(119,44,109,2,NULL),(120,131,37,2,NULL),(121,45,109,2,NULL),(122,135,37,2,NULL),(123,46,109,2,NULL),(124,139,37,2,NULL),(125,44,110,2,NULL),(126,143,37,2,NULL),(127,45,110,2,NULL),(128,25,3,2,NULL),(129,46,110,2,NULL),(130,25,10,2,NULL),(131,44,111,2,NULL),(132,25,26,2,NULL),(133,45,111,2,NULL),(134,25,39,2,NULL),(135,46,111,2,NULL),(136,27,3,2,NULL),(137,44,57,2,NULL),(138,27,10,2,NULL),(139,45,57,2,NULL),(140,27,26,2,NULL),(141,46,57,2,NULL),(142,27,39,2,NULL),(143,44,70,2,NULL),(144,36,3,2,NULL),(145,45,70,2,NULL),(146,36,10,2,NULL),(147,46,70,2,NULL),(148,36,26,2,NULL),(149,44,104,2,NULL),(150,36,39,2,NULL),(151,45,104,2,NULL),(152,38,3,2,NULL),(153,46,104,2,NULL),(154,38,10,2,NULL),(155,44,105,2,NULL),(156,38,26,2,NULL),(157,45,105,2,NULL),(158,38,39,2,NULL),(159,46,105,2,NULL),(160,23,6,2,NULL),(161,44,106,2,NULL),(162,23,14,2,NULL),(163,45,106,2,NULL),(164,23,31,2,NULL),(165,46,106,2,NULL),(166,23,40,2,NULL),(167,44,107,2,NULL),(168,59,41,2,NULL),(169,45,107,2,NULL),(170,60,41,2,NULL),(171,46,107,2,NULL),(172,190,41,2,NULL),(173,44,65,2,NULL),(174,193,41,2,NULL),(175,45,65,2,NULL),(176,125,41,2,NULL),(177,46,65,2,NULL),(178,128,41,2,NULL),(179,44,79,2,NULL),(180,137,41,2,NULL),(181,45,79,2,NULL),(182,141,41,2,NULL),(183,46,79,2,NULL),(184,146,41,2,NULL),(185,44,100,2,NULL),(186,130,41,2,NULL),(187,45,100,2,NULL),(188,131,41,2,NULL),(189,46,100,2,NULL),(190,135,41,2,NULL),(191,44,101,2,NULL),(192,139,41,2,NULL),(193,45,101,2,NULL),(194,143,41,2,NULL),(195,46,101,2,NULL),(196,44,102,2,NULL),(197,45,102,2,NULL),(198,46,102,2,NULL),(199,44,103,2,NULL),(200,45,103,2,NULL),(201,46,103,2,NULL),(202,32,3,2,NULL),(203,32,10,2,NULL),(204,32,26,2,NULL),(205,32,39,2,NULL),(206,34,3,2,NULL),(207,34,10,2,NULL),(208,34,26,2,NULL),(209,34,39,2,NULL),(210,52,3,2,NULL),(211,52,10,2,NULL),(212,52,26,2,NULL),(213,52,39,2,NULL),(214,53,3,2,NULL),(215,53,10,2,NULL),(216,53,26,2,NULL),(217,53,39,2,NULL),(218,55,6,2,NULL),(219,55,14,2,NULL),(220,55,31,2,NULL),(221,55,40,2,NULL),(222,59,15,2,NULL),(223,60,15,2,NULL),(224,190,15,2,NULL),(225,193,15,2,NULL),(226,125,15,2,NULL),(227,128,15,2,NULL),(228,137,15,2,NULL),(229,141,15,2,NULL),(230,146,15,2,NULL),(231,130,15,2,NULL),(232,131,15,2,NULL),(233,135,15,2,NULL),(234,139,15,2,NULL),(235,143,15,2,NULL),(236,118,46,2,NULL),(237,118,57,2,NULL),(238,118,65,2,NULL),(239,133,46,2,NULL),(240,133,57,2,NULL),(241,133,65,2,NULL),(242,59,57,2,NULL),(243,60,57,2,NULL),(244,190,57,2,NULL),(245,193,57,2,NULL),(246,125,57,2,NULL),(247,128,57,2,NULL),(248,137,57,2,NULL),(249,141,57,2,NULL),(250,146,57,2,NULL),(251,130,57,2,NULL),(252,131,57,2,NULL),(253,135,57,2,NULL),(254,139,57,2,NULL),(255,143,57,2,NULL),(256,140,52,2,NULL),(257,140,74,2,NULL),(258,140,82,2,NULL),(259,59,70,2,NULL),(260,60,70,2,NULL),(261,190,70,2,NULL),(262,193,70,2,NULL),(263,125,70,2,NULL),(264,128,70,2,NULL),(265,137,70,2,NULL),(266,141,70,2,NULL),(267,146,70,2,NULL),(268,130,70,2,NULL),(269,131,70,2,NULL),(270,135,70,2,NULL),(271,139,70,2,NULL),(272,143,70,2,NULL),(273,142,58,2,NULL),(274,142,81,2,NULL),(275,142,90,2,NULL),(276,172,58,2,NULL),(277,172,81,2,NULL),(278,172,90,2,NULL),(279,125,16,2,NULL),(280,128,16,2,NULL),(281,137,16,2,NULL),(282,141,16,2,NULL),(283,146,16,2,NULL),(284,125,32,2,NULL),(285,128,32,2,NULL),(286,137,32,2,NULL),(287,141,32,2,NULL),(288,146,32,2,NULL),(289,125,33,2,NULL),(290,128,33,2,NULL),(291,137,33,2,NULL),(292,141,33,2,NULL),(293,146,33,2,NULL),(294,125,36,2,NULL),(295,128,36,2,NULL),(296,137,36,2,NULL),(297,141,36,2,NULL),(298,146,36,2,NULL),(299,125,46,2,NULL),(300,128,46,2,NULL),(301,137,46,2,NULL),(302,141,46,2,NULL),(303,146,46,2,NULL),(304,125,50,2,NULL),(305,128,50,2,NULL),(306,137,50,2,NULL),(307,141,50,2,NULL),(308,146,50,2,NULL),(309,125,73,2,NULL),(310,128,73,2,NULL),(311,137,73,2,NULL),(312,141,73,2,NULL),(313,146,73,2,NULL),(314,125,108,2,NULL),(315,128,108,2,NULL),(316,137,108,2,NULL),(317,141,108,2,NULL),(318,146,108,2,NULL),(319,125,109,2,NULL),(320,128,109,2,NULL),(321,137,109,2,NULL),(322,141,109,2,NULL),(323,146,109,2,NULL),(324,125,110,2,NULL),(325,128,110,2,NULL),(326,137,110,2,NULL),(327,141,110,2,NULL),(328,146,110,2,NULL),(329,125,111,2,NULL),(330,128,111,2,NULL),(331,137,111,2,NULL),(332,141,111,2,NULL),(333,146,111,2,NULL),(334,125,104,2,NULL),(335,128,104,2,NULL),(336,137,104,2,NULL),(337,141,104,2,NULL),(338,146,104,2,NULL),(339,125,105,2,NULL),(340,128,105,2,NULL),(341,137,105,2,NULL),(342,141,105,2,NULL),(343,146,105,2,NULL),(344,125,106,2,NULL),(345,128,106,2,NULL),(346,137,106,2,NULL),(347,141,106,2,NULL),(348,146,106,2,NULL),(349,125,107,2,NULL),(350,128,107,2,NULL),(351,137,107,2,NULL),(352,141,107,2,NULL),(353,146,107,2,NULL),(354,125,65,2,NULL),(355,128,65,2,NULL),(356,137,65,2,NULL),(357,141,65,2,NULL),(358,146,65,2,NULL),(359,125,79,2,NULL),(360,128,79,2,NULL),(361,137,79,2,NULL),(362,141,79,2,NULL),(363,146,79,2,NULL),(364,125,100,2,NULL),(365,128,100,2,NULL),(366,137,100,2,NULL),(367,141,100,2,NULL),(368,146,100,2,NULL),(369,125,101,2,NULL),(370,128,101,2,NULL),(371,137,101,2,NULL),(372,141,101,2,NULL),(373,146,101,2,NULL),(374,125,102,2,NULL),(375,128,102,2,NULL),(376,137,102,2,NULL),(377,141,102,2,NULL),(378,146,102,2,NULL),(379,125,103,2,NULL),(380,128,103,2,NULL),(381,137,103,2,NULL),(382,141,103,2,NULL),(383,146,103,2,NULL),(384,59,104,2,NULL),(385,60,104,2,NULL),(386,190,104,2,NULL),(387,193,104,2,NULL),(388,130,104,2,NULL),(389,131,104,2,NULL),(390,135,104,2,NULL),(391,139,104,2,NULL),(392,143,104,2,NULL),(393,59,105,2,NULL),(394,60,105,2,NULL),(395,190,105,2,NULL),(396,193,105,2,NULL),(397,130,105,2,NULL),(398,131,105,2,NULL),(399,135,105,2,NULL),(400,139,105,2,NULL),(401,143,105,2,NULL),(402,59,106,2,NULL),(403,60,106,2,NULL),(404,190,106,2,NULL),(405,193,106,2,NULL),(406,130,106,2,NULL),(407,131,106,2,NULL),(408,135,106,2,NULL),(409,139,106,2,NULL),(410,143,106,2,NULL),(411,59,107,2,NULL),(412,60,107,2,NULL),(413,190,107,2,NULL),(414,193,107,2,NULL),(415,130,107,2,NULL),(416,131,107,2,NULL),(417,135,107,2,NULL),(418,139,107,2,NULL),(419,143,107,2,NULL),(420,59,16,2,NULL),(421,60,16,2,NULL),(422,190,16,2,NULL),(423,193,16,2,NULL),(424,130,16,2,NULL),(425,131,16,2,NULL),(426,135,16,2,NULL),(427,139,16,2,NULL),(428,143,16,2,NULL),(429,63,18,2,NULL),(430,68,18,2,NULL),(431,78,18,2,NULL),(432,59,32,2,NULL),(433,60,32,2,NULL),(434,59,33,2,NULL),(435,60,33,2,NULL),(436,59,36,2,NULL),(437,60,36,2,NULL),(438,59,46,2,NULL),(439,60,46,2,NULL),(440,59,50,2,NULL),(441,60,50,2,NULL),(442,59,73,2,NULL),(443,60,73,2,NULL),(444,59,108,2,NULL),(445,60,108,2,NULL),(446,59,109,2,NULL),(447,60,109,2,NULL),(448,59,110,2,NULL),(449,60,110,2,NULL),(450,59,111,2,NULL),(451,60,111,2,NULL),(452,59,65,2,NULL),(453,60,65,2,NULL),(454,59,79,2,NULL),(455,60,79,2,NULL),(456,59,100,2,NULL),(457,60,100,2,NULL),(458,59,101,2,NULL),(459,60,101,2,NULL),(460,59,102,2,NULL),(461,60,102,2,NULL),(462,59,103,2,NULL),(463,60,103,2,NULL),(464,71,27,2,NULL),(465,72,27,2,NULL),(466,73,27,2,NULL),(467,74,27,2,NULL),(468,75,27,2,NULL),(469,57,28,2,NULL),(470,58,29,2,NULL),(471,91,30,2,NULL),(472,76,3,2,NULL),(473,76,10,2,NULL),(474,76,26,2,NULL),(475,76,39,2,NULL),(476,77,3,2,NULL),(477,77,10,2,NULL),(478,77,26,2,NULL),(479,77,39,2,NULL),(480,83,3,2,NULL),(481,83,10,2,NULL),(482,83,26,2,NULL),(483,83,39,2,NULL),(484,84,3,2,NULL),(485,84,10,2,NULL),(486,84,26,2,NULL),(487,84,39,2,NULL),(488,190,32,2,NULL),(489,193,32,2,NULL),(490,130,32,2,NULL),(491,131,32,2,NULL),(492,135,32,2,NULL),(493,139,32,2,NULL),(494,143,32,2,NULL),(495,190,33,2,NULL),(496,193,33,2,NULL),(497,130,33,2,NULL),(498,131,33,2,NULL),(499,135,33,2,NULL),(500,139,33,2,NULL),(501,143,33,2,NULL),(502,82,6,2,NULL),(503,82,14,2,NULL),(504,82,31,2,NULL),(505,82,40,2,NULL),(506,190,36,2,NULL),(507,193,36,2,NULL),(508,130,36,2,NULL),(509,131,36,2,NULL),(510,135,36,2,NULL),(511,139,36,2,NULL),(512,143,36,2,NULL),(513,188,46,2,NULL),(514,188,57,2,NULL),(515,188,65,2,NULL),(516,190,46,2,NULL),(517,193,46,2,NULL),(518,130,46,2,NULL),(519,131,46,2,NULL),(520,135,46,2,NULL),(521,139,46,2,NULL),(522,143,46,2,NULL),(523,190,50,2,NULL),(524,193,50,2,NULL),(525,130,50,2,NULL),(526,131,50,2,NULL),(527,135,50,2,NULL),(528,139,50,2,NULL),(529,143,50,2,NULL),(530,184,58,2,NULL),(531,184,81,2,NULL),(532,184,90,2,NULL),(533,185,58,2,NULL),(534,185,81,2,NULL),(535,185,90,2,NULL),(536,190,73,2,NULL),(537,193,73,2,NULL),(538,190,108,2,NULL),(539,193,108,2,NULL),(540,190,109,2,NULL),(541,193,109,2,NULL),(542,190,110,2,NULL),(543,193,110,2,NULL),(544,190,111,2,NULL),(545,193,111,2,NULL),(546,190,65,2,NULL),(547,193,65,2,NULL),(548,190,79,2,NULL),(549,193,79,2,NULL),(550,190,100,2,NULL),(551,193,100,2,NULL),(552,190,101,2,NULL),(553,193,101,2,NULL),(554,190,102,2,NULL),(555,193,102,2,NULL),(556,190,103,2,NULL),(557,193,103,2,NULL),(558,174,71,2,NULL),(559,130,73,2,NULL),(560,131,73,2,NULL),(561,135,73,2,NULL),(562,139,73,2,NULL),(563,143,73,2,NULL),(564,130,108,2,NULL),(565,131,108,2,NULL),(566,135,108,2,NULL),(567,139,108,2,NULL),(568,143,108,2,NULL),(569,130,109,2,NULL),(570,131,109,2,NULL),(571,135,109,2,NULL),(572,139,109,2,NULL),(573,143,109,2,NULL),(574,130,110,2,NULL),(575,131,110,2,NULL),(576,135,110,2,NULL),(577,139,110,2,NULL),(578,143,110,2,NULL),(579,130,111,2,NULL),(580,131,111,2,NULL),(581,135,111,2,NULL),(582,139,111,2,NULL),(583,143,111,2,NULL),(584,109,46,2,NULL),(585,109,57,2,NULL),(586,109,65,2,NULL),(587,111,46,2,NULL),(588,111,57,2,NULL),(589,111,65,2,NULL),(590,130,65,2,NULL),(591,131,65,2,NULL),(592,135,65,2,NULL),(593,139,65,2,NULL),(594,143,65,2,NULL),(595,110,52,2,NULL),(596,110,74,2,NULL),(597,110,82,2,NULL),(598,130,79,2,NULL),(599,131,79,2,NULL),(600,135,79,2,NULL),(601,139,79,2,NULL),(602,143,79,2,NULL),(603,93,58,2,NULL),(604,93,81,2,NULL),(605,93,90,2,NULL),(606,124,58,2,NULL),(607,124,81,2,NULL),(608,124,90,2,NULL),(609,130,100,2,NULL),(610,131,100,2,NULL),(611,135,100,2,NULL),(612,139,100,2,NULL),(613,143,100,2,NULL),(614,130,101,2,NULL),(615,131,101,2,NULL),(616,135,101,2,NULL),(617,139,101,2,NULL),(618,143,101,2,NULL),(619,130,102,2,NULL),(620,131,102,2,NULL),(621,135,102,2,NULL),(622,139,102,2,NULL),(623,143,102,2,NULL),(624,130,103,2,NULL),(625,131,103,2,NULL),(626,135,103,2,NULL),(627,139,103,2,NULL),(628,143,103,2,NULL);
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
INSERT INTO `PermissionStrings` VALUES (20,'android.permission.ACCESS_COARSE_LOCATION'),(8,'android.permission.ACCESS_FINE_LOCATION'),(9,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(11,'android.permission.ACCESS_NETWORK_STATE'),(3,'android.permission.ACCESS_WIFI_STATE'),(7,'android.permission.CHANGE_WIFI_STATE'),(22,'android.permission.DISABLE_KEYGUARD'),(13,'android.permission.GET_TASKS'),(14,'android.permission.INSTALL_PACKAGES'),(6,'android.permission.INTERNET'),(21,'android.permission.READ_CONTACTS'),(1,'android.permission.READ_EXTERNAL_STORAGE'),(16,'android.permission.READ_LOGS'),(4,'android.permission.READ_PHONE_STATE'),(23,'android.permission.READ_SMS'),(5,'android.permission.RECEIVE_BOOT_COMPLETED'),(18,'android.permission.RECEIVE_MMS'),(19,'android.permission.RECEIVE_SMS'),(15,'android.permission.SEND_SMS'),(10,'android.permission.VIBRATE'),(12,'android.permission.WAKE_LOCK'),(2,'android.permission.WRITE_EXTERNAL_STORAGE'),(17,'android.permission.WRITE_SMS'),(24,'com.android.browser.permission.READ_HISTORY_BOOKMARKS');
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
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(2,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(4,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(6,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(7,NULL,NULL,'file://',NULL,NULL,NULL),(8,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(9,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(10,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(11,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(12,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(13,NULL,NULL,'file://',NULL,NULL,NULL),(14,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(15,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(16,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'content://mms-sms/conversations/',NULL,NULL,NULL),(21,NULL,NULL,'content://contacts/people/with_email_or_im_filter',NULL,NULL,NULL),(22,NULL,NULL,'content://com.android.contacts/data/emails/lookup',NULL,NULL,NULL),(23,'tel','(.*)',NULL,NULL,NULL,NULL),(24,'mailto','(.*)',NULL,NULL,NULL,NULL),(25,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(26,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(27,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(28,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(29,NULL,NULL,'content://mms-sms/',NULL,NULL,NULL),(30,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(31,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(32,NULL,NULL,'content://sms',NULL,NULL,NULL),(33,NULL,NULL,'content://com.android.contacts/phone_lookup',NULL,NULL,NULL),(34,NULL,NULL,'content://contacts/phones/filter',NULL,NULL,NULL),(35,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(36,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(37,NULL,NULL,'content://mms-sms/',NULL,NULL,NULL),(38,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(39,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(40,NULL,NULL,'(.*)',NULL,NULL,NULL),(41,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(42,NULL,NULL,'content://mms/inbox',NULL,NULL,NULL),(43,NULL,NULL,'content://mms/(.*)/addr',NULL,NULL,NULL),(44,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(45,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(46,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(47,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(48,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(49,NULL,NULL,'file://',NULL,NULL,NULL),(50,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(51,NULL,NULL,'content://mms/',NULL,NULL,NULL),(52,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(53,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(54,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(55,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(56,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(57,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(58,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(59,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(60,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(61,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(62,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(63,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(64,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL),(65,NULL,NULL,'(.*)',NULL,NULL,NULL),(66,NULL,NULL,'(.*)',NULL,NULL,NULL),(67,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(68,NULL,NULL,'(.*)',NULL,NULL,NULL),(69,NULL,NULL,'(.*)',NULL,NULL,NULL),(70,NULL,NULL,'(.*)',NULL,NULL,NULL),(71,NULL,NULL,'(.*)',NULL,NULL,NULL),(72,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(73,NULL,NULL,'(.*)',NULL,NULL,NULL),(74,NULL,NULL,'(.*)',NULL,NULL,NULL),(75,NULL,NULL,'(.*)',NULL,NULL,NULL),(76,NULL,NULL,'(.*)',NULL,NULL,NULL),(77,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(78,NULL,NULL,'content://mms/inbox',NULL,NULL,NULL),(79,NULL,NULL,'content://mms/(.*)/addr',NULL,NULL,NULL),(80,NULL,NULL,'(.*)',NULL,NULL,NULL),(81,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(82,NULL,NULL,'(.*)',NULL,NULL,NULL),(83,NULL,NULL,'content://mms/',NULL,NULL,NULL),(84,NULL,NULL,'content://mms-sms/threadID',NULL,NULL,NULL),(85,NULL,NULL,'(.*)',NULL,NULL,NULL),(86,NULL,NULL,'(.*)',NULL,NULL,NULL),(87,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(88,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(89,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(90,NULL,NULL,'(.*)',NULL,NULL,NULL),(91,NULL,NULL,'(.*)',NULL,NULL,NULL),(92,NULL,NULL,'content://mms/',NULL,NULL,NULL),(93,NULL,NULL,'content://mms-sms/threadID',NULL,NULL,NULL),(94,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(95,NULL,NULL,'content://mms/',NULL,NULL,NULL),(96,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(97,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(98,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(99,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(100,NULL,NULL,'file://',NULL,NULL,NULL),(101,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(102,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(103,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(104,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(105,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(106,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(107,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(108,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(109,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL),(110,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(111,NULL,NULL,'(.*)',NULL,NULL,NULL),(112,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(113,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(114,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(115,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(116,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(117,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(118,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(119,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(120,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(121,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(122,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL),(123,NULL,NULL,'content://mms/',NULL,NULL,NULL),(124,NULL,NULL,'content://mms-sms/threadID',NULL,NULL,NULL),(125,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(126,NULL,NULL,'(.*)',NULL,NULL,NULL),(127,NULL,NULL,'(.*)',NULL,NULL,NULL),(128,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(129,NULL,NULL,'content://mms/inbox',NULL,NULL,NULL),(130,NULL,NULL,'content://mms/(.*)/addr',NULL,NULL,NULL),(131,NULL,NULL,'content://mms/',NULL,NULL,NULL),(132,NULL,NULL,'(.*)',NULL,NULL,NULL),(133,NULL,NULL,'(.*)',NULL,NULL,NULL),(134,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,5,2),(2,28,14),(3,41,20),(4,45,21),(5,45,22),(6,52,25),(7,52,26),(8,55,29),(9,58,30),(10,58,31),(11,59,32),(12,60,33),(13,60,34),(14,61,35),(15,61,36),(16,66,37),(17,66,NULL),(18,67,38),(19,72,41),(20,72,42),(21,72,43),(22,74,44),(23,77,50),(24,80,51),(25,83,53),(26,85,57),(27,87,61),(28,91,67),(29,93,68),(30,109,77),(31,109,78),(32,109,79),(33,112,81),(34,114,83),(35,114,84),(36,119,88),(37,120,89),(38,121,90),(39,124,92),(40,124,93),(41,126,95),(42,133,110),(43,137,113),(44,140,123),(45,140,124),(46,141,125),(47,147,128),(48,147,129),(49,147,130),(50,148,131),(51,150,132);
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
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,2,1),(14,2,2),(15,2,3),(16,2,4),(17,2,5),(18,2,6),(19,2,7),(20,2,8),(21,2,9),(22,2,10),(23,2,11),(24,2,12),(25,2,13),(26,3,1),(27,3,2),(28,3,3),(29,3,4),(30,3,6),(31,3,7),(32,3,8),(33,3,9),(34,3,10),(35,3,11),(36,3,12),(37,3,13),(38,3,14),(39,3,15),(40,3,17),(41,3,16),(42,3,19),(43,3,18),(44,3,21),(45,3,20),(46,3,23),(47,3,22),(48,4,1),(49,4,2),(50,4,3),(51,4,4),(52,4,20),(53,4,5),(54,4,6),(55,4,7),(56,4,8),(57,4,9),(58,4,11),(59,5,17),(60,5,2),(61,5,3),(62,5,4),(63,5,20),(64,5,6),(65,5,23),(66,5,8),(67,5,24),(68,5,11),(69,5,12),(70,6,17),(71,6,2),(72,6,3),(73,6,4),(74,6,20),(75,6,6),(76,6,23),(77,6,8),(78,6,24),(79,6,11),(80,7,17),(81,6,12),(82,7,2),(83,7,3),(84,7,4),(85,7,20),(86,7,6),(87,7,23),(88,7,8),(89,7,24),(90,7,11),(91,7,12);
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

-- Dump completed on 2015-10-12  3:29:32
