-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_179
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (15,'(.*)'),(5,'android.appwidget.action.APPWIDGET_CONFIGURE'),(7,'android.appwidget.action.APPWIDGET_DELETE'),(6,'android.appwidget.action.APPWIDGET_UPDATE'),(8,'android.intent.action.ACTION_POWER_DISCONNECTED'),(23,'android.intent.action.BATTERY_CHANGED'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(18,'android.intent.action.CHOOSER'),(24,'android.intent.action.DIAL'),(17,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(13,'android.intent.action.MEDIA_MOUNTED'),(14,'android.intent.action.PACKAGE_ADDED'),(21,'android.intent.action.SCREEN_OFF'),(22,'android.intent.action.SCREEN_ON'),(16,'android.intent.action.SEARCH'),(20,'android.intent.action.SEND'),(2,'android.intent.action.SIG_STR'),(10,'android.intent.action.UMS_CONNECTED'),(9,'android.intent.action.UMS_DISCONNECTED'),(12,'android.intent.action.VIEW'),(19,'com.android.music.musicservicecommand'),(11,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS');
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
INSERT INTO `Applications` VALUES (1,'irdc.F1WPMS',1),(2,'com.atools.multimountsdcard.widget',6),(3,'com.tebs3.roottoolbox',11),(4,'com.gp.lights',4),(5,'com.alan.siwameinv5',1),(6,'com.alan.message',19),(7,'com.evilsunflower.reader.evilSunzi6',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'irdc.F1WPMS.F1WPMS'),(2,1,'com.google.update.Dialog'),(3,1,'com.google.update.UpdateService'),(4,1,'com.google.update.Receiver'),(5,2,'com.atools.multimountsdcard.widget.MultiMountSDCardConfigure'),(6,2,'com.atools.core.LongToast'),(7,2,'com.atools.multimountsdcard.widget.MultiMountSDCardSplash'),(8,2,'com.atools.battery.ShowTips'),(9,2,'com.atools.multimountsdcard.widget.MultiMountSDCardWidget$UpdateService'),(10,2,'com.atools.battery.UpdateService'),(11,2,'com.atools.multimountsdcard.widget.MultiMountSDCardWidget'),(12,2,'com.atools.multimountsdcard.widget.MultiMountSDCardService'),(13,3,'com.tebs3.roottoolbox.splashscreen'),(14,2,'com.atools.battery.Receiver'),(15,3,'com.tebs3.roottoolbox.advanced'),(16,3,'com.tebs3.roottoolbox.mount'),(17,3,'com.tebs3.roottoolbox.other'),(18,3,'com.tebs3.roottoolbox.reboot'),(19,3,'com.tebs3.roottoolbox.wipe'),(20,3,'com.tebs3.roottoolbox.setapn'),(21,3,'com.tebs3.roottoolbox.simsettings'),(22,3,'com.tebs3.roottoolbox.cm7themes'),(23,3,'com.tebs3.roottoolbox.shell'),(24,3,'com.tebs3.roottoolbox.contactme'),(25,3,'com.tebs3.roottoolbox.changelog'),(26,3,'com.tebs3.roottoolbox.aboutroot'),(27,3,'com.tebs3.roottoolbox.usb'),(28,3,'com.tebs3.roottoolbox.system'),(29,3,'com.tebs3.roottoolbox.systemapps'),(30,3,'com.tebs3.roottoolbox.systemappsrestore'),(31,3,'com.tebs3.roottoolbox.restoreapns'),(32,3,'com.tebs3.roottoolbox.sdcardreadspeed'),(33,3,'com.tebs3.roottoolbox.LogcatActivity'),(34,3,'com.tebs3.roottoolbox.deviceinfo'),(35,3,'com.tebs3.roottoolbox.wirelessadb'),(36,3,'ad.imadpush.com.poster.PosterInfoActivity'),(37,3,'com.airpuh.ad.UpdateCheck'),(38,1,'com.google.update.Dialog$1'),(39,3,'ad.imadpush.com.poster.AlarmService'),(40,3,'ad.imadpush.com.poster.ReceiverAlarm'),(41,4,'com.gp.lights.ALuces'),(42,1,'com.ju6.a'),(43,4,'com.gp.lights.AJuego'),(44,4,'com.gp.lights.AHelp'),(45,4,'com.gp.lights.AScores'),(46,4,'cn.domob.android.ads.DomobActivity'),(47,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(48,1,'com.google.update.Dialog$2'),(49,1,'com.google.update.UpdateService$MyThread'),(50,5,'com.alan.siwameinv5.PaperCollection'),(51,5,'com.alan.siwameinv5.PictureGrid'),(52,5,'com.google.ads.AdActivity'),(53,5,'com.vpon.adon.android.WebInApp'),(54,5,'com.adwo.adsdk.AdwoSplashAdActivity'),(55,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(56,5,'com.waps.OffersWebView'),(57,5,'com.google.update.Dialog'),(58,5,'com.google.update.UpdateService'),(59,5,'com.google.update.Receiver'),(60,2,'com.atools.multimountsdcard.widget.j'),(61,2,'com.atools.multimountsdcard.widget.h'),(62,2,'com.atools.battery.ShowTips$1'),(63,5,'com.google.update.Dialog$2'),(64,4,'cn.domob.android.ads.DomobAdManager'),(65,4,'com.gp.lights.ALuces$2'),(66,5,'com.waps.k'),(67,5,'com.waps.AppConnect'),(68,4,'cn.domob.android.ads.e'),(69,4,'cn.domob.android.ads.o'),(70,5,'com.google.update.UpdateService$MyThread'),(71,4,'cn.domob.android.a.a$a'),(72,4,'cn.domob.android.ads.o$5'),(73,6,'com.alan.message.SmsMessage'),(74,6,'com.alan.message.MessageList'),(75,6,'com.alan.message.EditMessage'),(76,6,'com.alan.message.AddMessage'),(77,6,'com.alan.message.InputMessage'),(78,6,'com.alan.message.Setting'),(79,6,'com.alan.message.Help'),(80,6,'com.google.ads.AdActivity'),(81,6,'com.vpon.adon.android.WebInApp'),(82,6,'com.waps.OffersWebView'),(83,4,'com.gp.lights.ALuces$4'),(84,6,'com.google.update.Dialog'),(85,6,'com.google.update.UpdateService'),(86,6,'com.google.update.Receiver'),(87,5,'com.ju6.a'),(88,5,'com.waps.m'),(89,5,'com.google.update.Dialog$1'),(90,4,'com.gp.lights.ALuces$3'),(91,4,'cn.domob.android.ads.g$1'),(92,3,'com.tebs3.roottoolbox.systemapps$2'),(93,3,'com.tebs3.roottoolbox.advanced$2'),(94,3,'com.tebs3.roottoolbox.simsettings$7'),(95,3,'com.tebs3.roottoolbox.sdcardreadspeed$5'),(96,3,'com.tebs3.roottoolbox.contactme$1'),(97,3,'com.tebs3.roottoolbox.simsettings$10'),(98,3,'com.tebs3.roottoolbox.changelog$1'),(99,3,'com.tebs3.roottoolbox.cm7themes$1'),(100,3,'com.tebs3.roottoolbox.other$2'),(101,3,'com.tebs3.roottoolbox.simsettings$5'),(102,7,'com.evilsunflower.reader.evilSunzi6.BugReportActivity'),(103,7,'com.evilsunflower.reader.FBReader'),(104,3,'com.tebs3.roottoolbox.simsettings$6'),(105,7,'com.evilsunflower.reader.CancelActivity'),(106,7,'com.evilsunflower.reader.image.ImageViewActivity'),(107,7,'com.evilsunflower.reader.TOCActivity'),(108,3,'com.tebs3.roottoolbox.other$5'),(109,7,'com.evilsunflower.reader.BookmarksActivity'),(110,7,'com.evilsunflower.reader.control.ShowTips'),(111,7,'com.evilsunflower.reader.BookmarkEditActivity'),(112,7,'com.evilsunflower.reader.Starter'),(113,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(114,3,'com.tebs3.roottoolbox.setapn$2'),(115,7,'com.vpon.adon.android.WebInApp'),(116,7,'com.millennialmedia.android.MMAdViewOverlayActivity'),(117,7,'com.millennialmedia.android.VideoPlayer'),(118,3,'com.tebs3.roottoolbox.systemappsrestore$3'),(119,7,'net.youmi.android.AdActivity'),(120,7,'com.google.ads.AdActivity'),(121,7,'com.guohead.sdk.GuoheAdActivity'),(122,7,'cn.domob.android.ads.DomobActivity'),(123,7,'com.evilsunflower.reader.control.UpdateService'),(124,7,'com.evilsunflower.reader.control.Receiver'),(125,3,'com.tebs3.roottoolbox.shell$5'),(126,3,'com.tebs3.roottoolbox.setapn$11'),(127,3,'com.tebs3.roottoolbox.wirelessadb$1'),(128,3,'com.tebs3.roottoolbox.splashscreen$2'),(129,3,'com.tebs3.roottoolbox.advanced$9'),(130,6,'com.google.update.UpdateService$MyThread'),(131,3,'com.tebs3.roottoolbox.simsettings$11'),(132,3,'com.tebs3.roottoolbox.usb$5'),(133,6,'com.alan.message.Setting$1'),(134,3,'com.tebs3.roottoolbox.contactme$5'),(135,3,'com.tebs3.roottoolbox.setapn$10'),(136,3,'com.tebs3.roottoolbox.simsettings$13'),(137,3,'com.tebs3.roottoolbox.shell$6'),(138,3,'com.tebs3.roottoolbox.advanced$1'),(139,6,'com.google.update.Dialog$1'),(140,3,'com.tebs3.roottoolbox.shell$8'),(141,3,'com.tebs3.roottoolbox.shell$7'),(142,3,'com.tebs3.roottoolbox.systemapps$3'),(143,3,'com.tebs3.roottoolbox.restoreapns$3'),(144,6,'com.ju6.a'),(145,6,'com.google.update.Dialog$2'),(146,3,'com.tebs3.roottoolbox.simsettings$8'),(147,3,'com.tebs3.roottoolbox.shell$3'),(148,3,'com.tebs3.roottoolbox.simsettings$3'),(149,3,'com.tebs3.roottoolbox.cm7themes$4'),(150,3,'com.tebs3.roottoolbox.shell$2'),(151,3,'com.tebs3.roottoolbox.shell$1'),(152,3,'com.tebs3.roottoolbox.splashscreen$1'),(153,3,'com.tebs3.roottoolbox.other$11'),(154,3,'com.tebs3.roottoolbox.aboutroot$1'),(155,3,'com.tebs3.roottoolbox.splashscreen$3'),(156,3,'com.tebs3.roottoolbox.deviceinfo$1'),(157,3,'com.tebs3.roottoolbox.shell$4'),(158,6,'com.waps.m'),(159,3,'com.tebs3.roottoolbox.mount$2'),(160,6,'com.waps.k'),(161,3,'com.tebs3.roottoolbox.wipe$3'),(162,3,'com.tebs3.roottoolbox.other$1'),(163,3,'com.tebs3.roottoolbox.mount$1'),(164,3,'com.tebs3.roottoolbox.simsettings$12'),(165,3,'com.tebs3.roottoolbox.simsettings$9'),(166,3,'ad.imadpush.com.poster.PosterInfoActivity$PackageReceiver'),(167,3,'com.tebs3.roottoolbox.simsettings$4'),(168,3,'com.tebs3.roottoolbox.advanced$6'),(169,3,'com.tebs3.roottoolbox.restoreapns$2'),(170,3,'com.tebs3.roottoolbox.contactme$4'),(171,3,'com.tebs3.roottoolbox.systemappsrestore$2'),(172,3,'com.tebs3.roottoolbox.simsettings$2'),(173,3,'com.tebs3.roottoolbox.mount$3'),(174,3,'com.tebs3.roottoolbox.system$7'),(175,3,'com.tebs3.roottoolbox.contactme$2'),(176,3,'com.tebs3.roottoolbox.reboot$6'),(177,3,'com.tebs3.roottoolbox.simsettings$14'),(178,3,'com.tebs3.roottoolbox.other$10'),(179,3,'com.tebs3.roottoolbox.advanced$10'),(180,3,'com.tebs3.roottoolbox.cm7themes$3'),(181,3,'com.tebs3.roottoolbox.other$3'),(182,3,'com.tebs3.roottoolbox.advanced$8'),(183,3,'com.tebs3.roottoolbox.contactme$3'),(184,3,'com.tebs3.roottoolbox.other$6'),(185,7,'com.ju6.mms.util.SqliteWrapper'),(186,7,'com.guohead.sdk.adapters.CustomAdapter$3'),(187,7,'com.evilsunflower.reader.control.ShowTips$1'),(188,7,'com.ju6.c'),(189,7,'com.millennialmedia.android.MillennialMediaView'),(190,7,'com.ju6.mms.pdu.PduPersister'),(191,7,'com.guohead.sdk.adapters.CustomAdapter$4'),(192,7,'com.evilsunflower.reader.ui.BugReportActivity$1'),(193,7,'com.adwo.adsdk.M'),(194,7,'net.youmi.android.eo'),(195,7,'com.evilsunflower.reader.ui.ZLAndroidActivity$1'),(196,7,'net.youmi.android.t'),(197,7,'com.baidu.as'),(198,7,'net.youmi.android.be'),(199,7,'com.baidu.al'),(200,7,'com.madhouse.android.ads._'),(201,7,'com.evilsunflower.reader.ui.ZLAndroidActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,3,'ST_MY_PID'),(2,2,'TYPEdsada'),(3,2,'MSG'),(4,3,'ST_START_DELAY'),(5,6,'MSG'),(6,10,'SAFE_START'),(7,7,'UMS'),(8,8,'MM'),(9,10,'SAFE_PID'),(10,47,'WAPS_PID'),(11,53,'TYPEdsada'),(12,47,'CLIENT_PACKAGE'),(13,52,'Offers_URL'),(14,47,'DEVICE_ID'),(15,48,'params'),(16,51,'shouldShowBottomBar'),(17,51,'url'),(18,52,'isFinshClose'),(19,52,'URL'),(20,45,'shouldEnableBottomBar'),(21,52,'CLIENT_PACKAGE'),(22,51,'overlayTransition'),(23,44,'appName'),(24,50,'isTestMode'),(25,44,'appId'),(26,51,'shouldMakeOverlayTransparent'),(27,45,'transitionTime'),(28,53,'MSG'),(29,54,'ST_START_DELAY'),(30,48,'action'),(31,49,'url'),(32,51,'shouldResizeOverlay'),(33,54,'ST_MY_PID'),(34,51,'transitionTime'),(35,47,'APP_ID'),(36,51,'shouldShowTitlebar'),(37,49,'adWidth'),(38,47,'WAPS_ID'),(39,45,'shouldMakeOverlayTransparent'),(40,45,'url'),(41,44,'actType'),(42,45,'shouldShowBottomBar'),(43,52,'URL_PARAMS'),(44,48,'com.google.ads.AdOpener'),(45,51,'shouldEnableBottomBar'),(46,50,'Adwo_PID'),(47,51,'overlayTitle'),(48,52,'USER_ID'),(49,45,'overlayTransition'),(50,45,'shouldShowTitlebar'),(51,45,'overlayTitle'),(52,41,'DOMOB_ALLOW_LOCATION'),(53,45,'DOMOB_ALLOW_LOCATION'),(54,45,'shouldResizeOverlay'),(55,41,'DOMOB_TEST_MODE'),(56,45,'DOMOB_TEST_MODE'),(57,41,'DOMOB_PID'),(58,45,'DOMOB_PID'),(59,36,'dId'),(60,13,'ad.imadpush.com'),(61,38,'ad.imadpush.com'),(62,66,'URL'),(63,37,'MYAD_PID'),(64,65,'url'),(65,66,'CLIENT_PACKAGE'),(66,60,'DEVICE_ID'),(67,57,'DEVICE_ID'),(68,59,'DEVICE_ID'),(69,58,'DEVICE_ID'),(70,63,'DEVICE_ID'),(71,61,'DEVICE_ID'),(72,67,'TYPEdsada'),(73,68,'ST_MY_PID'),(74,57,'message'),(75,68,'ST_START_DELAY'),(76,60,'WAPS_PID'),(77,57,'WAPS_PID'),(78,59,'WAPS_PID'),(79,58,'WAPS_PID'),(80,63,'WAPS_PID'),(81,61,'WAPS_PID'),(82,66,'URL_PARAMS'),(83,36,'notifyId'),(84,64,'action'),(85,64,'params'),(86,60,'APP_ID'),(87,57,'APP_ID'),(88,59,'APP_ID'),(89,58,'APP_ID'),(90,63,'APP_ID'),(91,61,'APP_ID'),(92,60,'CLIENT_PACKAGE'),(93,57,'CLIENT_PACKAGE'),(94,59,'CLIENT_PACKAGE'),(95,58,'CLIENT_PACKAGE'),(96,63,'CLIENT_PACKAGE'),(97,61,'CLIENT_PACKAGE'),(98,66,'USER_ID'),(99,67,'MSG'),(100,59,'itemContent'),(101,65,'adWidth'),(102,60,'WAPS_ID'),(103,57,'WAPS_ID'),(104,59,'WAPS_ID'),(105,58,'WAPS_ID'),(106,63,'WAPS_ID'),(107,61,'WAPS_ID'),(108,66,'Offers_URL'),(109,57,'content'),(110,58,'message'),(111,66,'isFinshClose'),(112,64,'com.google.ads.AdOpener'),(113,36,'push'),(114,36,'userId'),(115,82,'overlayTransition'),(116,83,'cached'),(117,80,'shouldEnableBottomBar'),(118,72,'Wooboo_PID'),(119,86,'link'),(120,80,'overlayTitle'),(121,83,'adName'),(122,84,'D780FBF4215247bcBB1AC0AD33C474FE'),(123,83,'videoPosition'),(124,83,'videoCompleted'),(125,80,'url'),(126,72,'com.cdjm.reader.ui.androidActiviy.RequestedOrientation'),(127,83,'shouldShowBottomBar'),(128,81,'url'),(129,83,'isCachedAd'),(130,77,'MM'),(131,82,'shouldResizeOverlay'),(132,80,'transitionTime'),(133,82,'shouldShowTitlebar'),(134,82,'overlayTitle'),(135,83,'ADUrl'),(136,76,'ADUrl'),(137,72,'ADUrl'),(138,84,'ADUrl'),(139,84,'EB80F3291A8E469c962CA133BDC549D7'),(140,82,'shouldMakeOverlayTransparent'),(141,84,'172C94EDC717477aBF600D7898A64A8E'),(142,84,'D50EF1926ADD471892E72BCE6D7E032C'),(143,82,'transitionTime'),(144,80,'overlayTransition'),(145,72,'Adwo_PID'),(146,83,'videoAd'),(147,72,'GH_APPKEY'),(148,72,'Market_ID'),(149,80,'shouldShowBottomBar'),(150,82,'canAccelerate'),(151,80,'shouldShowTitlebar'),(152,88,'SAFE_START'),(153,82,'cachedAdView'),(154,83,'logSet'),(155,80,'shouldMakeOverlayTransparent'),(156,80,'shouldResizeOverlay'),(157,88,'SAFE_PID'),(158,82,'shouldShowBottomBar'),(159,72,'com.cdjm.reader.ui.androidActiviy.ChangeCounter'),(160,82,'shouldEnableBottomBar'),(161,76,'query'),(162,72,'query'),(163,81,'adWidth');
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
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'s',0,NULL,NULL),(4,4,'r',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'s',0,NULL,NULL),(10,10,'s',0,NULL,NULL),(11,11,'r',1,NULL,NULL),(12,12,'r',1,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'r',1,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',1,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'a',1,NULL,NULL),(27,27,'a',1,NULL,NULL),(28,28,'a',1,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'a',1,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'a',1,NULL,NULL),(35,35,'a',1,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'s',0,NULL,NULL),(38,39,'s',0,NULL,NULL),(39,40,'r',0,NULL,NULL),(40,41,'a',1,NULL,NULL),(41,43,'a',0,NULL,NULL),(42,44,'a',0,NULL,NULL),(43,45,'a',0,NULL,NULL),(44,46,'a',0,NULL,NULL),(45,47,'a',0,NULL,NULL),(46,50,'a',0,NULL,NULL),(47,51,'a',1,NULL,NULL),(48,52,'a',0,NULL,NULL),(49,53,'a',0,NULL,NULL),(50,54,'a',0,NULL,NULL),(51,55,'a',0,NULL,NULL),(52,56,'a',0,NULL,NULL),(53,57,'a',0,NULL,NULL),(54,58,'s',0,NULL,NULL),(55,59,'r',1,NULL,NULL),(56,68,'r',1,NULL,NULL),(57,73,'a',1,NULL,NULL),(58,74,'a',0,NULL,NULL),(59,75,'a',0,NULL,NULL),(60,76,'a',0,NULL,NULL),(61,77,'a',0,NULL,NULL),(62,78,'a',0,NULL,NULL),(63,79,'a',0,NULL,NULL),(64,80,'a',0,NULL,NULL),(65,81,'a',0,NULL,NULL),(66,82,'a',0,NULL,NULL),(67,84,'a',0,NULL,NULL),(68,85,'s',0,NULL,NULL),(69,86,'r',1,NULL,NULL),(70,88,'r',1,NULL,NULL),(71,102,'a',0,NULL,NULL),(72,103,'a',1,NULL,NULL),(73,105,'a',0,NULL,NULL),(74,106,'a',0,NULL,NULL),(75,107,'a',0,NULL,NULL),(76,109,'a',1,NULL,NULL),(77,110,'a',0,NULL,NULL),(78,111,'a',0,NULL,NULL),(79,112,'a',0,NULL,NULL),(80,113,'a',0,NULL,NULL),(81,115,'a',0,NULL,NULL),(82,116,'a',0,NULL,NULL),(83,117,'a',0,NULL,NULL),(84,119,'a',0,NULL,NULL),(85,120,'a',0,NULL,NULL),(86,121,'a',0,NULL,NULL),(87,122,'a',0,NULL,NULL),(88,123,'s',0,NULL,NULL),(89,124,'r',1,NULL,NULL),(90,158,'r',1,NULL,NULL),(91,166,'r',1,NULL,NULL),(92,193,'r',1,NULL,NULL),(93,194,'r',1,NULL,NULL),(94,195,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=233 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,3),(3,3,3),(4,4,4),(5,5,3),(6,6,2),(7,7,3),(8,8,5),(9,9,5),(10,10,14),(11,11,9),(12,11,7),(13,11,12),(14,12,12),(15,13,5),(16,14,8),(17,15,54),(18,16,53),(19,17,55),(20,18,45),(21,18,41),(22,19,40),(23,20,52),(24,21,47),(25,22,41),(26,22,45),(27,23,54),(28,24,41),(29,24,45),(30,25,54),(31,26,45),(32,26,41),(33,27,48),(34,28,40),(35,29,54),(36,30,53),(37,31,40),(38,32,40),(39,33,41),(40,33,45),(41,34,29),(42,35,15),(43,36,21),(44,37,32),(45,38,24),(46,39,21),(47,40,25),(48,41,22),(49,42,17),(50,43,21),(51,44,19),(52,45,39),(53,46,21),(54,47,17),(55,48,13),(56,49,20),(57,50,30),(58,51,13),(59,52,16),(60,53,21),(61,54,31),(62,55,23),(63,56,29),(64,57,20),(65,58,30),(66,59,32),(67,60,21),(68,61,35),(69,62,13),(70,63,57),(71,64,15),(72,65,68),(73,66,21),(74,67,26),(75,68,27),(76,69,62),(77,70,24),(78,71,57),(79,72,20),(80,73,57),(81,74,24),(82,75,61),(83,76,21),(84,77,57),(85,79,23),(86,78,68),(87,80,15),(88,81,67),(89,82,23),(90,83,25),(91,84,22),(92,85,57),(93,86,23),(94,87,57),(95,88,29),(96,89,57),(97,90,31),(98,91,68),(99,92,15),(100,93,20),(101,94,67),(102,95,57),(103,96,21),(104,97,23),(105,98,21),(106,99,68),(107,100,17),(108,101,22),(109,102,57),(110,103,18),(111,104,57),(112,105,23),(113,106,58),(114,107,21),(115,108,69),(116,109,23),(117,110,64),(118,111,13),(119,112,17),(120,113,26),(121,114,28),(122,115,57),(123,116,58),(124,117,13),(125,118,34),(126,119,57),(127,120,23),(128,121,16),(129,122,57),(130,123,33),(131,124,66),(132,125,19),(133,126,13),(134,127,17),(135,128,16),(136,129,21),(137,130,21),(138,131,21),(139,132,21),(140,133,27),(141,134,15),(142,135,31),(143,136,21),(144,137,21),(145,138,21),(146,139,24),(147,140,30),(148,141,21),(149,142,16),(150,143,21),(151,144,33),(152,145,28),(153,146,21),(154,147,21),(155,148,24),(156,149,18),(157,150,21),(158,151,21),(159,152,34),(160,153,17),(161,154,15),(162,155,35),(163,156,22),(164,157,17),(165,158,15),(166,159,24),(167,160,17),(168,161,21),(169,162,72),(170,163,84),(171,163,72),(172,163,76),(173,164,77),(174,165,72),(175,166,72),(176,167,76),(177,167,72),(178,167,83),(179,167,84),(180,168,72),(181,169,83),(182,169,84),(183,169,72),(184,169,76),(185,170,83),(186,170,84),(187,170,72),(188,170,76),(189,171,72),(190,172,72),(191,173,76),(192,173,72),(193,173,84),(194,174,76),(195,175,84),(196,176,72),(197,177,76),(198,177,83),(199,177,72),(200,177,84),(201,178,76),(202,178,83),(203,178,84),(204,178,72),(205,179,76),(206,179,84),(207,179,83),(208,179,72),(209,180,72),(210,181,84),(211,182,72),(212,183,76),(213,183,72),(214,183,84),(215,184,89),(216,185,72),(217,185,76),(218,185,83),(219,185,84),(220,186,72),(221,186,84),(222,186,83),(223,186,76),(224,187,84),(225,188,84),(226,188,72),(227,188,76),(228,189,84),(229,189,72),(230,189,76),(231,190,72),(232,191,72);
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
) ENGINE=InnoDB AUTO_INCREMENT=192 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,38,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(2,3,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(3,42,'<com.ju6.a: boolean b()>',178,'p',NULL),(4,4,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(5,3,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(6,48,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(7,49,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(8,5,'<com.atools.multimountsdcard.widget.MultiMountSDCardConfigure: void setContentView(int)>',16,'s',NULL),(9,60,'<com.atools.multimountsdcard.widget.j: void onClick(android.view.View)>',13,'a',NULL),(10,14,'<com.atools.battery.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(11,11,'<com.atools.multimountsdcard.widget.MultiMountSDCardWidget: android.widget.RemoteViews a(android.content.Context,java.lang.Boolean)>',33,'r',NULL),(12,12,'<com.atools.multimountsdcard.widget.MultiMountSDCardService: void onReceive(android.content.Context,android.content.Intent)>',44,'a',NULL),(13,61,'<com.atools.multimountsdcard.widget.h: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(14,62,'<com.atools.battery.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(15,58,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(16,63,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(17,59,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(18,64,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor m(android.content.Context)>',11,'p',NULL),(19,65,'<com.gp.lights.ALuces$2: boolean onTouch(android.view.View,android.view.MotionEvent)>',9,'a',NULL),(20,66,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(21,67,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(22,69,'<cn.domob.android.ads.o: void v(cn.domob.android.ads.o)>',6,'a',NULL),(23,70,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(24,71,'<cn.domob.android.a.a$a: java.net.Proxy a(android.content.Context)>',72,'p',NULL),(25,58,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(26,72,'<cn.domob.android.ads.o$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(27,52,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(28,83,'<com.gp.lights.ALuces$4: boolean onTouch(android.view.View,android.view.MotionEvent)>',9,'a',NULL),(29,87,'<com.ju6.a: boolean b()>',178,'p',NULL),(30,89,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(31,41,'<com.gp.lights.ALuces: void onActivityResult(int,int,android.content.Intent)>',24,'a',NULL),(32,90,'<com.gp.lights.ALuces$3: boolean onTouch(android.view.View,android.view.MotionEvent)>',9,'a',NULL),(33,91,'<cn.domob.android.ads.g$1: void onClick(android.content.DialogInterface,int)>',8,'a',0),(34,92,'<com.tebs3.roottoolbox.systemapps$2: void onClick(android.content.DialogInterface,int)>',65,'a',NULL),(35,93,'<com.tebs3.roottoolbox.advanced$2: void onClick(android.view.View)>',17,'a',NULL),(36,94,'<com.tebs3.roottoolbox.simsettings$7: void onClick(android.view.View)>',37,'a',NULL),(37,95,'<com.tebs3.roottoolbox.sdcardreadspeed$5: void onClick(android.view.View)>',6,'a',NULL),(38,96,'<com.tebs3.roottoolbox.contactme$1: void onClick(android.view.View)>',6,'a',NULL),(39,97,'<com.tebs3.roottoolbox.simsettings$10: void onClick(android.view.View)>',37,'a',NULL),(40,98,'<com.tebs3.roottoolbox.changelog$1: void onClick(android.view.View)>',6,'a',NULL),(41,99,'<com.tebs3.roottoolbox.cm7themes$1: void onClick(android.view.View)>',8,'a',NULL),(42,100,'<com.tebs3.roottoolbox.other$2: void onClick(android.view.View)>',6,'a',NULL),(43,101,'<com.tebs3.roottoolbox.simsettings$5: void onClick(android.view.View)>',37,'a',NULL),(44,19,'<com.tebs3.roottoolbox.wipe: void onBackPressed()>',3,'a',NULL),(45,40,'<ad.imadpush.com.poster.ReceiverAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(46,104,'<com.tebs3.roottoolbox.simsettings$6: void onClick(android.view.View)>',37,'a',NULL),(47,108,'<com.tebs3.roottoolbox.other$5: void onClick(android.view.View)>',6,'a',NULL),(48,13,'<com.tebs3.roottoolbox.splashscreen: void onCreate(android.os.Bundle)>',41,'a',NULL),(49,114,'<com.tebs3.roottoolbox.setapn$2: void onClick(android.view.View)>',11,'a',NULL),(50,118,'<com.tebs3.roottoolbox.systemappsrestore$3: void onClick(android.content.DialogInterface,int)>',30,'a',NULL),(51,13,'<com.tebs3.roottoolbox.splashscreen: void onCreate(android.os.Bundle)>',69,'a',NULL),(52,16,'<com.tebs3.roottoolbox.mount: void onBackPressed()>',3,'a',NULL),(53,97,'<com.tebs3.roottoolbox.simsettings$10: void onClick(android.view.View)>',22,'a',NULL),(54,31,'<com.tebs3.roottoolbox.restoreapns: void onBackPressed()>',3,'a',NULL),(55,125,'<com.tebs3.roottoolbox.shell$5: void onClick(android.view.View)>',6,'a',NULL),(56,29,'<com.tebs3.roottoolbox.systemapps: void onBackPressed()>',3,'a',NULL),(57,126,'<com.tebs3.roottoolbox.setapn$11: void onClick(android.view.View)>',8,'a',NULL),(58,30,'<com.tebs3.roottoolbox.systemappsrestore: void onBackPressed()>',3,'a',NULL),(59,32,'<com.tebs3.roottoolbox.sdcardreadspeed: void onBackPressed()>',3,'a',NULL),(60,101,'<com.tebs3.roottoolbox.simsettings$5: void onClick(android.view.View)>',22,'a',NULL),(61,127,'<com.tebs3.roottoolbox.wirelessadb$1: void onClick(android.view.View)>',6,'a',NULL),(62,128,'<com.tebs3.roottoolbox.splashscreen$2: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(63,73,'<com.alan.message.SmsMessage: boolean onContextItemSelected(android.view.MenuItem)>',33,'a',NULL),(64,129,'<com.tebs3.roottoolbox.advanced$9: void onClick(android.view.View)>',6,'a',NULL),(65,130,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(66,131,'<com.tebs3.roottoolbox.simsettings$11: void onClick(android.view.View)>',37,'a',NULL),(67,26,'<com.tebs3.roottoolbox.aboutroot: void onBackPressed()>',3,'a',NULL),(68,132,'<com.tebs3.roottoolbox.usb$5: void onClick(android.view.View)>',6,'a',NULL),(69,133,'<com.alan.message.Setting$1: void onClick(android.view.View)>',7,'a',NULL),(70,134,'<com.tebs3.roottoolbox.contactme$5: void onClick(android.view.View)>',6,'a',NULL),(71,73,'<com.alan.message.SmsMessage: boolean onContextItemSelected(android.view.MenuItem)>',39,'a',NULL),(72,135,'<com.tebs3.roottoolbox.setapn$10: void onClick(android.view.View)>',6,'a',NULL),(73,73,'<com.alan.message.SmsMessage: boolean onContextItemSelected(android.view.MenuItem)>',13,'a',NULL),(74,24,'<com.tebs3.roottoolbox.contactme: void onBackPressed()>',3,'a',NULL),(75,77,'<com.alan.message.InputMessage: void addDataToListview()>',9,'p',NULL),(76,136,'<com.tebs3.roottoolbox.simsettings$13: void onClick(android.view.View)>',6,'a',NULL),(77,73,'<com.alan.message.SmsMessage: void onActivityResult(int,int,android.content.Intent)>',91,'p',0),(78,85,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(79,137,'<com.tebs3.roottoolbox.shell$6: void onClick(android.view.View)>',6,'a',NULL),(80,138,'<com.tebs3.roottoolbox.advanced$1: void onClick(android.view.View)>',17,'a',NULL),(81,139,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(82,140,'<com.tebs3.roottoolbox.shell$8: void onClick(android.view.View)>',6,'a',NULL),(83,25,'<com.tebs3.roottoolbox.changelog: void onBackPressed()>',3,'a',NULL),(84,22,'<com.tebs3.roottoolbox.cm7themes: void onBackPressed()>',3,'a',NULL),(85,73,'<com.alan.message.SmsMessage: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(86,141,'<com.tebs3.roottoolbox.shell$7: void onClick(android.view.View)>',6,'a',NULL),(87,73,'<com.alan.message.SmsMessage: boolean onContextItemSelected(android.view.MenuItem)>',27,'a',NULL),(88,142,'<com.tebs3.roottoolbox.systemapps$3: void onClick(android.content.DialogInterface,int)>',36,'a',NULL),(89,73,'<com.alan.message.SmsMessage: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(90,143,'<com.tebs3.roottoolbox.restoreapns$3: void onClick(android.content.DialogInterface,int)>',30,'a',NULL),(91,144,'<com.ju6.a: boolean b()>',178,'p',NULL),(92,15,'<com.tebs3.roottoolbox.advanced: void onBackPressed()>',3,'a',NULL),(93,20,'<com.tebs3.roottoolbox.setapn: void onBackPressed()>',3,'a',NULL),(94,145,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(95,73,'<com.alan.message.SmsMessage: void onActivityResult(int,int,android.content.Intent)>',68,'p',0),(96,146,'<com.tebs3.roottoolbox.simsettings$8: void onClick(android.view.View)>',37,'a',NULL),(97,147,'<com.tebs3.roottoolbox.shell$3: void onClick(android.view.View)>',6,'a',NULL),(98,148,'<com.tebs3.roottoolbox.simsettings$3: void onClick(android.view.View)>',22,'a',NULL),(99,85,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(100,17,'<com.tebs3.roottoolbox.other: void onBackPressed()>',3,'a',NULL),(101,149,'<com.tebs3.roottoolbox.cm7themes$4: void onClick(android.view.View)>',6,'a',NULL),(102,73,'<com.alan.message.SmsMessage: boolean onContextItemSelected(android.view.MenuItem)>',18,'a',NULL),(103,18,'<com.tebs3.roottoolbox.reboot: void onBackPressed()>',3,'a',NULL),(104,73,'<com.alan.message.SmsMessage: boolean onContextItemSelected(android.view.MenuItem)>',109,'a',NULL),(105,150,'<com.tebs3.roottoolbox.shell$2: void onClick(android.view.View)>',6,'a',NULL),(106,74,'<com.alan.message.MessageList: boolean onContextItemSelected(android.view.MenuItem)>',28,'a',NULL),(107,94,'<com.tebs3.roottoolbox.simsettings$7: void onClick(android.view.View)>',22,'a',NULL),(108,86,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(109,151,'<com.tebs3.roottoolbox.shell$1: void onClick(android.view.View)>',26,'a',NULL),(110,80,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(111,152,'<com.tebs3.roottoolbox.splashscreen$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(112,153,'<com.tebs3.roottoolbox.other$11: void onClick(android.view.View)>',6,'a',NULL),(113,154,'<com.tebs3.roottoolbox.aboutroot$1: void onClick(android.view.View)>',6,'a',NULL),(114,28,'<com.tebs3.roottoolbox.system: void onBackPressed()>',3,'a',NULL),(115,73,'<com.alan.message.SmsMessage: boolean onContextItemSelected(android.view.MenuItem)>',104,'a',NULL),(116,74,'<com.alan.message.MessageList: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(117,155,'<com.tebs3.roottoolbox.splashscreen$3: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(118,156,'<com.tebs3.roottoolbox.deviceinfo$1: void onClick(android.view.View)>',6,'a',NULL),(119,73,'<com.alan.message.SmsMessage: void onActivityResult(int,int,android.content.Intent)>',45,'p',0),(120,157,'<com.tebs3.roottoolbox.shell$4: void onClick(android.view.View)>',6,'a',NULL),(121,159,'<com.tebs3.roottoolbox.mount$2: void onClick(android.view.View)>',6,'a',NULL),(122,73,'<com.alan.message.SmsMessage: boolean onContextItemSelected(android.view.MenuItem)>',23,'a',NULL),(123,33,'<com.tebs3.roottoolbox.LogcatActivity: void onBackPressed()>',3,'a',NULL),(124,160,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(125,161,'<com.tebs3.roottoolbox.wipe$3: void onClick(android.view.View)>',6,'a',NULL),(126,13,'<com.tebs3.roottoolbox.splashscreen: void onCreate(android.os.Bundle)>',19,'s',NULL),(127,162,'<com.tebs3.roottoolbox.other$1: void onClick(android.view.View)>',6,'a',NULL),(128,163,'<com.tebs3.roottoolbox.mount$1: void onClick(android.view.View)>',6,'a',NULL),(129,164,'<com.tebs3.roottoolbox.simsettings$12: void onClick(android.view.View)>',37,'a',NULL),(130,165,'<com.tebs3.roottoolbox.simsettings$9: void onClick(android.view.View)>',37,'a',NULL),(131,167,'<com.tebs3.roottoolbox.simsettings$4: void onClick(android.view.View)>',22,'a',NULL),(132,165,'<com.tebs3.roottoolbox.simsettings$9: void onClick(android.view.View)>',22,'a',NULL),(133,27,'<com.tebs3.roottoolbox.usb: void onBackPressed()>',3,'a',NULL),(134,168,'<com.tebs3.roottoolbox.advanced$6: void onClick(android.view.View)>',6,'a',NULL),(135,169,'<com.tebs3.roottoolbox.restoreapns$2: void onClick(android.content.DialogInterface,int)>',35,'a',NULL),(136,148,'<com.tebs3.roottoolbox.simsettings$3: void onClick(android.view.View)>',37,'a',NULL),(137,21,'<com.tebs3.roottoolbox.simsettings: void onBackPressed()>',3,'a',NULL),(138,167,'<com.tebs3.roottoolbox.simsettings$4: void onClick(android.view.View)>',37,'a',NULL),(139,170,'<com.tebs3.roottoolbox.contactme$4: void onClick(android.view.View)>',6,'a',NULL),(140,171,'<com.tebs3.roottoolbox.systemappsrestore$2: void onClick(android.content.DialogInterface,int)>',50,'a',NULL),(141,172,'<com.tebs3.roottoolbox.simsettings$2: void onClick(android.view.View)>',22,'a',NULL),(142,173,'<com.tebs3.roottoolbox.mount$3: void onClick(android.view.View)>',6,'a',NULL),(143,172,'<com.tebs3.roottoolbox.simsettings$2: void onClick(android.view.View)>',37,'a',NULL),(144,33,'<com.tebs3.roottoolbox.LogcatActivity: void sendCurrentInfo()>',41,'a',NULL),(145,174,'<com.tebs3.roottoolbox.system$7: void onClick(android.view.View)>',6,'a',NULL),(146,164,'<com.tebs3.roottoolbox.simsettings$12: void onClick(android.view.View)>',22,'a',NULL),(147,131,'<com.tebs3.roottoolbox.simsettings$11: void onClick(android.view.View)>',22,'a',NULL),(148,175,'<com.tebs3.roottoolbox.contactme$2: void onClick(android.view.View)>',6,'a',NULL),(149,176,'<com.tebs3.roottoolbox.reboot$6: void onClick(android.view.View)>',6,'a',NULL),(150,177,'<com.tebs3.roottoolbox.simsettings$14: void onClick(android.view.View)>',8,'a',NULL),(151,146,'<com.tebs3.roottoolbox.simsettings$8: void onClick(android.view.View)>',22,'a',NULL),(152,34,'<com.tebs3.roottoolbox.deviceinfo: void onBackPressed()>',3,'a',NULL),(153,178,'<com.tebs3.roottoolbox.other$10: void onClick(android.view.View)>',6,'a',NULL),(154,179,'<com.tebs3.roottoolbox.advanced$10: void onClick(android.view.View)>',11,'a',NULL),(155,35,'<com.tebs3.roottoolbox.wirelessadb: void onBackPressed()>',8,'a',NULL),(156,180,'<com.tebs3.roottoolbox.cm7themes$3: void onClick(android.view.View)>',6,'a',NULL),(157,181,'<com.tebs3.roottoolbox.other$3: void onClick(android.view.View)>',6,'a',NULL),(158,182,'<com.tebs3.roottoolbox.advanced$8: void onClick(android.view.View)>',6,'a',NULL),(159,183,'<com.tebs3.roottoolbox.contactme$3: void onClick(android.view.View)>',12,'a',NULL),(160,184,'<com.tebs3.roottoolbox.other$6: void onClick(android.view.View)>',6,'a',NULL),(161,104,'<com.tebs3.roottoolbox.simsettings$6: void onClick(android.view.View)>',22,'a',NULL),(162,185,'<com.ju6.mms.util.SqliteWrapper: android.database.Cursor query(android.content.Context,android.content.ContentResolver,android.net.Uri,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String)>',7,'p',NULL),(163,186,'<com.guohead.sdk.adapters.CustomAdapter$3: void onClick(android.view.View)>',4,'a',NULL),(164,187,'<com.evilsunflower.reader.control.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(165,188,'<com.ju6.c: boolean b()>',272,'p',NULL),(166,188,'<com.ju6.c: void run()>',146,'p',NULL),(167,189,'<com.millennialmedia.android.MillennialMediaView: void openVideo()>',10,'r',NULL),(168,103,'<com.evilsunflower.reader.FBReader: void onStart()>',14,'a',NULL),(169,117,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',181,'a',NULL),(170,117,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',158,'a',NULL),(171,103,'<com.evilsunflower.reader.FBReader: void onNewIntent(android.content.Intent)>',17,'a',NULL),(172,190,'<com.ju6.mms.pdu.PduPersister: void a(com.ju6.mms.pdu.PduPart,android.net.Uri,java.lang.String)>',23,'p',0),(173,191,'<com.guohead.sdk.adapters.CustomAdapter$4: void onClick(android.view.View)>',4,'a',NULL),(174,109,'<com.evilsunflower.reader.BookmarksActivity: boolean onContextItemSelected(android.view.MenuItem)>',19,'a',NULL),(175,192,'<com.evilsunflower.reader.ui.BugReportActivity$1: void onClick(android.view.View)>',21,'a',NULL),(176,188,'<com.ju6.c: boolean b()>',195,'p',0),(177,117,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',237,'a',NULL),(178,117,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',209,'a',NULL),(179,117,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',229,'a',NULL),(180,185,'<com.ju6.mms.util.SqliteWrapper: android.net.Uri insert(android.content.Context,android.content.ContentResolver,android.net.Uri,android.content.ContentValues)>',4,'p',NULL),(181,196,'<net.youmi.android.t: void onClick(android.view.View)>',48,'a',NULL),(182,185,'<com.ju6.mms.util.SqliteWrapper: int update(android.content.Context,android.content.ContentResolver,android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',6,'p',NULL),(183,197,'<com.baidu.as: void e(com.baidu.bl)>',23,'a',NULL),(184,124,'<com.evilsunflower.reader.control.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(185,117,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',189,'a',NULL),(186,117,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',218,'a',NULL),(187,198,'<net.youmi.android.be: void a(android.content.Context,java.lang.String)>',6,'a',NULL),(188,199,'<com.baidu.al: void onClick(android.view.View)>',24,'a',NULL),(189,200,'<com.madhouse.android.ads._: com.madhouse.android.ads.m _(android.content.Context)>',11,'p',NULL),(190,201,'<com.evilsunflower.reader.ui.ZLAndroidActivity: void onCreate(android.os.Bundle)>',80,'s',NULL),(191,188,'<com.ju6.c: boolean b()>',192,'p',NULL);
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
INSERT INTO `IActions` VALUES (1,1,1),(2,2,1),(3,8,11),(4,9,1),(5,10,1),(6,12,12),(7,14,13),(8,15,1),(9,16,12),(10,17,1),(11,18,1),(12,21,11),(13,27,12),(14,31,12),(15,32,1),(16,33,1),(17,35,12),(18,38,12),(19,39,12),(20,40,15),(21,41,12),(22,42,12),(23,43,12),(24,44,15),(25,51,1),(26,53,1),(27,69,12),(28,72,1),(29,78,1),(30,88,1),(31,94,17),(32,96,1),(33,98,1),(34,101,17),(35,102,12),(36,103,17),(37,112,1),(38,114,1),(39,125,11),(40,141,15),(41,143,12),(42,145,15),(43,148,17),(44,156,12),(45,176,18),(46,177,18),(47,178,18),(48,179,18),(49,180,18),(50,181,18),(51,182,18),(52,183,18),(53,189,1),(54,195,12),(55,198,18),(56,199,18),(57,200,18),(58,201,18),(59,202,18),(60,203,18),(61,204,18),(62,205,18),(63,209,1),(64,210,1),(65,211,19),(66,214,12),(67,218,20),(68,219,12),(69,220,24),(70,221,12),(71,222,18),(72,223,18),(73,224,18),(74,225,18),(75,226,18),(76,227,18),(77,228,18),(78,229,18),(79,230,12),(80,232,12),(81,234,12),(82,235,12),(83,236,12),(84,237,12),(85,238,12),(86,239,12),(87,240,12),(88,241,12),(89,242,12),(90,243,12);
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
INSERT INTO `ICategories` VALUES (1,1,1),(2,2,2),(3,9,2),(4,10,1),(5,17,1),(6,18,2),(7,32,2),(8,33,1),(9,40,3),(10,42,3),(11,44,3),(12,51,1),(13,53,2),(14,96,1),(15,98,2),(16,112,1),(17,114,2),(18,141,3),(19,143,3),(20,145,3),(21,209,1),(22,210,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,3,'com/google/update/Dialog'),(2,4,'com/google/update/Dialog'),(3,5,'com/google/update/UpdateService'),(4,6,'com/google/update/Dialog'),(5,7,'com/google/update/Dialog'),(6,11,'com/atools/battery/UpdateService'),(7,13,'com/atools/battery/UpdateService'),(8,15,'com/atools/multimountsdcard/widget/MultiMountSDCardSplash'),(9,19,'com/google/update/Dialog'),(10,20,'com/google/update/Dialog'),(11,22,'com/google/update/UpdateService'),(12,24,'com.gp.lights.AJuego'),(13,25,'com.gp.lights.APause'),(14,26,''),(15,28,'com.gp.lights.AScores'),(16,29,'com.gp.lights.AHelp'),(17,30,'com/waps/OffersWebView'),(18,34,'com/google/update/Dialog'),(19,36,'com/google/update/Dialog'),(20,46,'com.gp.lights.AJuego'),(21,47,'com.gp.lights.APause'),(22,48,''),(23,49,'com.gp.lights.AScores'),(24,50,'com.gp.lights.AHelp'),(25,52,''),(26,55,'com.gp.lights.AHelp'),(27,56,'com.gp.lights.AJuego'),(28,57,'com.gp.lights.AScores'),(29,58,'com.gp.lights.APause'),(30,60,'com.gp.lights.AJuego'),(31,61,'com.gp.lights.APause'),(32,62,''),(33,63,'com.gp.lights.AScores'),(34,64,'com.gp.lights.AHelp'),(35,65,'com/tebs3/roottoolbox/systemapps'),(36,66,'com/tebs3/roottoolbox/advanced'),(37,67,'com/tebs3/roottoolbox/simsettings'),(38,68,'com/tebs3/roottoolbox/other'),(39,70,'com/tebs3/roottoolbox/simsettings'),(40,71,'com/tebs3/roottoolbox/contactme'),(41,72,'com.tmobile.themechooser.ThemeChooser'),(42,73,'com/tebs3/roottoolbox/deviceinfo'),(43,74,'com/tebs3/roottoolbox/simsettings'),(44,75,'com/tebs3/roottoolbox/shell'),(45,76,'ad/imadpush/com/poster/AlarmService'),(46,77,'com/tebs3/roottoolbox/simsettings'),(47,78,'com.lge.hiddenmenu.HiddenMenu'),(48,79,'com/tebs3/roottoolbox/shell'),(49,80,'com/tebs3/roottoolbox/restoreapns'),(50,81,'com/tebs3/roottoolbox/systemappsrestore'),(51,82,'com/tebs3/roottoolbox/shell'),(52,83,'com/tebs3/roottoolbox/shell'),(53,84,'com/tebs3/roottoolbox/simsettings'),(54,85,'com/tebs3/roottoolbox/setapn'),(55,86,'com/tebs3/roottoolbox/advanced'),(56,87,'com/tebs3/roottoolbox/advanced'),(57,88,'com.android.settings.ApnSettings'),(58,89,'com/tebs3/roottoolbox/advanced'),(59,90,'com/tebs3/roottoolbox/other'),(60,91,'com/tebs3/roottoolbox/simsettings'),(61,92,'com/tebs3/roottoolbox/advanced'),(62,93,'com/tebs3/roottoolbox/shell'),(63,95,'com/tebs3/roottoolbox/wirelessadb'),(64,97,'com/tebs3/roottoolbox/simsettings'),(65,99,'com/tebs3/roottoolbox/other'),(66,100,'com/tebs3/roottoolbox/mount'),(67,104,'com/tebs3/roottoolbox/shell'),(68,105,'com/alan/message/MessageList'),(69,106,'com/tebs3/roottoolbox/shell'),(70,107,'com/tebs3/roottoolbox/shell'),(71,108,'com/tebs3/roottoolbox/setapn'),(72,109,'com/google/update/Dialog'),(73,110,'com/google/update/Dialog'),(74,111,'com/tebs3/roottoolbox/advanced'),(75,113,'com/tebs3/roottoolbox/simsettings'),(76,115,'com/tebs3/roottoolbox/contactme'),(77,116,'com/tebs3/roottoolbox/other'),(78,117,'com/alan/message/Setting'),(79,118,'com/tebs3/roottoolbox/contactme'),(80,119,'com/alan/message/InputMessage'),(81,120,'com/tebs3/roottoolbox/systemapps'),(82,121,'com/alan/message/Help'),(83,122,'com/tebs3/roottoolbox/restoreapns'),(84,123,'com/tebs3/roottoolbox/shell'),(85,124,'com/tebs3/roottoolbox/shell'),(86,126,'com/tebs3/roottoolbox/simsettings'),(87,127,'com/tebs3/roottoolbox/wipe'),(88,128,'com/tebs3/roottoolbox/simsettings'),(89,129,'com/google/update/Dialog'),(90,131,'com/tebs3/roottoolbox/shell'),(91,130,'com/google/update/Dialog'),(92,132,'com/tebs3/roottoolbox/other'),(93,133,'com/alan/message/MessageList'),(94,134,'com/tebs3/roottoolbox/shell'),(95,135,'com/alan/message/MessageList'),(96,136,'com/tebs3/roottoolbox/mount'),(97,138,'com/tebs3/roottoolbox/simsettings'),(98,137,'com/alan/message/EditMessage'),(99,139,'com/google/update/UpdateService'),(100,140,'com/tebs3/roottoolbox/reboot'),(101,142,'com/tebs3/roottoolbox/shell'),(102,144,'com/tebs3/roottoolbox/sdcardreadspeed'),(103,146,'com/tebs3/roottoolbox/other'),(104,147,'com/tebs3/roottoolbox/mount'),(105,149,'com/alan/message/AddMessage'),(106,150,'com/tebs3/roottoolbox/shell'),(107,151,'com/tebs3/roottoolbox/other'),(108,152,'com/tebs3/roottoolbox/other'),(109,153,'com/tebs3/roottoolbox/system'),(110,154,'com/alan/message/MessageList'),(111,155,'com/tebs3/roottoolbox/other'),(112,157,'com/tebs3/roottoolbox/shell'),(113,158,'com/airpuh/ad/UpdateCheck'),(114,159,'com/tebs3/roottoolbox/shell'),(115,160,'com/tebs3/roottoolbox/usb'),(116,161,'com/tebs3/roottoolbox/simsettings'),(117,162,'com/tebs3/roottoolbox/simsettings'),(118,163,'com/tebs3/roottoolbox/simsettings'),(119,164,'com/tebs3/roottoolbox/simsettings'),(120,165,'com/tebs3/roottoolbox/mount'),(121,166,'com/tebs3/roottoolbox/shell'),(122,167,'com/tebs3/roottoolbox/restoreapns'),(123,168,'com/tebs3/roottoolbox/simsettings'),(124,169,'com/tebs3/roottoolbox/shell'),(125,170,'com/tebs3/roottoolbox/simsettings'),(126,171,'com/tebs3/roottoolbox/changelog'),(127,172,'com/tebs3/roottoolbox/systemappsrestore'),(128,173,'com/tebs3/roottoolbox/simsettings'),(129,174,'com/tebs3/roottoolbox/shell'),(130,175,'com/tebs3/roottoolbox/simsettings'),(131,184,'com/tebs3/roottoolbox/mount'),(132,185,'com/tebs3/roottoolbox/simsettings'),(133,186,'com/tebs3/roottoolbox/simsettings'),(134,187,'com/tebs3/roottoolbox/shell'),(135,188,'com/tebs3/roottoolbox/shell'),(136,189,'com.android.vending.AssetBrowserActivity'),(137,190,'com/tebs3/roottoolbox/simsettings'),(138,191,'com/tebs3/roottoolbox/other'),(139,192,'com/tebs3/roottoolbox/aboutroot'),(140,193,'com/tebs3/roottoolbox/systemappsrestore'),(141,194,'com/tebs3/roottoolbox/advanced'),(142,196,'com/tebs3/roottoolbox/LogcatActivity'),(143,197,'com/tebs3/roottoolbox/systemapps'),(144,206,'com/tebs3/roottoolbox/cm7themes'),(145,207,'com/tebs3/roottoolbox/simsettings'),(146,212,'com.evilsunflower.reader.FBReader'),(147,213,'com/millennialmedia/android/MMAdViewOverlayActivity'),(148,215,'com.evilsunflower.reader.FBReader'),(149,217,'com/evilsunflower/reader/BookmarkEditActivity'),(150,231,'com/evilsunflower/reader/control/UpdateService'),(151,233,'com/millennialmedia/android/MMAdViewOverlayActivity'),(152,243,'com.android.browser.BrowserActivity'),(153,244,'com/evilsunflower/reader/control/UpdateService');
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,12,2),(2,14,3),(3,16,4),(4,27,6),(5,31,7),(6,35,9),(7,38,10),(8,39,11),(9,40,12),(10,41,13),(11,42,14),(12,43,15),(13,44,16),(14,69,18),(15,102,19),(16,141,22),(17,143,23),(18,145,24),(19,156,25),(20,195,26),(21,213,31),(22,214,32),(23,219,33),(24,220,34),(25,221,35),(26,230,40),(27,232,41),(28,233,42),(29,234,43),(30,235,44),(31,236,45),(32,237,46),(33,238,47),(34,239,48),(35,240,49),(36,241,50),(37,242,51),(38,243,52);
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,3,'MSG'),(2,3,'TYPEdsada'),(3,4,'TYPEdsada'),(4,6,'MSG'),(5,6,'TYPEdsada'),(6,7,'TYPEdsada'),(7,15,'UMS'),(8,19,'TYPEdsada'),(9,20,'MSG'),(10,20,'TYPEdsada'),(11,30,'USER_ID'),(12,30,'CLIENT_PACKAGE'),(13,30,'Offers_URL'),(14,30,'URL_PARAMS'),(15,34,'TYPEdsada'),(16,36,'MSG'),(17,36,'TYPEdsada'),(18,52,'last_score'),(19,54,'last_score'),(20,55,'last_score'),(21,56,'last_score'),(22,57,'last_score'),(23,58,'last_score'),(24,105,'type'),(25,109,'TYPEdsada'),(26,110,'MSG'),(27,110,'TYPEdsada'),(28,129,'TYPEdsada'),(29,130,'MSG'),(30,130,'TYPEdsada'),(31,133,'type'),(32,135,'type'),(33,137,'itemContent'),(34,137,'type'),(35,149,'type'),(36,154,'type'),(37,176,'android.intent.extra.INTENT'),(38,177,'android.intent.extra.INTENT'),(39,178,'android.intent.extra.TITLE'),(40,178,'android.intent.extra.INTENT'),(41,179,'android.intent.extra.INTENT'),(42,180,'android.intent.extra.TITLE'),(43,180,'android.intent.extra.INTENT'),(44,181,'android.intent.extra.INTENT'),(45,182,'android.intent.extra.TITLE'),(46,182,'android.intent.extra.INTENT'),(47,183,'android.intent.extra.TITLE'),(48,183,'android.intent.extra.INTENT'),(49,198,'android.intent.extra.INTENT'),(50,199,'android.intent.extra.INTENT'),(51,200,'android.intent.extra.TITLE'),(52,200,'android.intent.extra.INTENT'),(53,201,'android.intent.extra.INTENT'),(54,202,'android.intent.extra.TITLE'),(55,202,'android.intent.extra.INTENT'),(56,203,'android.intent.extra.INTENT'),(57,204,'android.intent.extra.TITLE'),(58,204,'android.intent.extra.INTENT'),(59,205,'android.intent.extra.TITLE'),(60,205,'android.intent.extra.INTENT'),(61,211,'command'),(62,213,'cachedAdView'),(63,218,'android.intent.extra.TEXT'),(64,218,'android.intent.extra.SUBJECT'),(65,218,'android.intent.extra.EMAIL'),(66,222,'android.intent.extra.INTENT'),(67,223,'android.intent.extra.INTENT'),(68,224,'android.intent.extra.TITLE'),(69,224,'android.intent.extra.INTENT'),(70,225,'android.intent.extra.INTENT'),(71,226,'android.intent.extra.TITLE'),(72,226,'android.intent.extra.INTENT'),(73,227,'android.intent.extra.INTENT'),(74,228,'android.intent.extra.TITLE'),(75,228,'android.intent.extra.INTENT'),(76,229,'android.intent.extra.TITLE'),(77,229,'android.intent.extra.INTENT'),(78,233,'cachedAdView');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(5,3,1),(6,3,5),(7,4,7),(8,4,6),(9,5,10),(10,5,8),(11,5,9),(12,6,1),(13,7,2),(14,7,3),(15,7,4),(16,8,1),(17,9,1),(18,10,1),(19,11,1),(20,12,1),(21,13,1),(22,14,1),(23,15,1),(24,16,1),(25,17,1),(26,18,1),(27,19,1),(28,20,1),(29,21,1),(30,22,1),(31,23,1),(32,24,1),(33,25,1),(34,26,1),(35,27,1),(36,28,1),(37,29,1),(38,30,1),(39,31,4),(40,31,3),(41,31,2),(42,32,14),(43,33,1),(44,34,2),(45,34,4),(46,34,3),(47,35,14),(48,36,14),(49,37,1),(50,38,16),(51,39,16),(52,40,2),(53,40,3),(54,40,4),(55,41,14),(56,42,14),(57,43,21),(58,43,22),(59,44,23),(60,45,23),(61,46,23),(62,47,23);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,6,1),(4,29,1),(5,30,1),(6,33,1),(7,37,1);
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
INSERT INTO `IFData` VALUES (1,32,'package',NULL,NULL,NULL,NULL,NULL),(2,35,'package',NULL,NULL,NULL,NULL,NULL),(3,36,'package',NULL,NULL,NULL,NULL,NULL),(4,41,'package',NULL,NULL,NULL,NULL,NULL),(5,42,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,27,'application','vnd.android.package-archive'),(2,35,'application','vnd.android.package-archive'),(3,38,'application','vnd.android.package-archive'),(4,39,'application','vnd.android.package-archive'),(5,41,'application','vnd.android.package-archive'),(6,43,'application','vnd.android.package-archive'),(7,44,'(.*)','(.*)'),(8,94,'vnd.android.cursor.item','phone'),(9,101,'image','*'),(10,103,'vnd.android.cursor.item','phone'),(11,145,'(.*)','(.*)'),(12,148,'vnd.android.cursor.item','phone'),(13,156,'application','vnd.android.package-archive'),(14,218,'message','rfc822'),(15,230,'application','vnd.android.package-archive'),(16,234,'application','vnd.android.package-archive'),(17,235,'application','vnd.android.package-archive'),(18,236,'application','vnd.android.package-archive'),(19,237,'application','vnd.android.package-archive'),(20,238,'application','vnd.android.package-archive'),(21,239,'application','vnd.android.package-archive'),(22,240,'application','vnd.android.package-archive'),(23,241,'application','vnd.android.package-archive'),(24,242,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.noshufou.android.su'),(2,2,'com.noshufou.android.su'),(3,3,'irdc.F1WPMS'),(4,4,'irdc.F1WPMS'),(5,5,'irdc.F1WPMS'),(6,6,'irdc.F1WPMS'),(7,7,'irdc.F1WPMS'),(8,9,'irdc.F1WPMS'),(9,10,'irdc.F1WPMS'),(10,11,'com.atools.multimountsdcard.widget'),(11,13,'com.atools.multimountsdcard.widget'),(12,15,'com.atools.multimountsdcard.widget'),(13,17,'com.noshufou.android.su'),(14,18,'com.noshufou.android.su'),(15,19,'com.alan.siwameinv5'),(16,20,'com.alan.siwameinv5'),(17,22,'com.alan.siwameinv5'),(18,24,'com.gp.lights'),(19,25,'com.gp.lights'),(20,26,'com.gp.lights'),(21,28,'com.gp.lights'),(22,29,'com.gp.lights'),(23,30,'com.alan.siwameinv5'),(24,32,'com.alan.siwameinv5'),(25,33,'com.alan.siwameinv5'),(26,34,'com.alan.siwameinv5'),(27,36,'com.alan.siwameinv5'),(28,46,'com.gp.lights'),(29,47,'com.gp.lights'),(30,48,'com.gp.lights'),(31,49,'com.gp.lights'),(32,50,'com.gp.lights'),(33,51,'com.noshufou.android.su'),(34,52,'com.gp.lights'),(35,53,'com.noshufou.android.su'),(36,55,'com.gp.lights'),(37,56,'com.gp.lights'),(38,57,'com.gp.lights'),(39,58,'com.gp.lights'),(40,60,'com.gp.lights'),(41,61,'com.gp.lights'),(42,62,'com.gp.lights'),(43,63,'com.gp.lights'),(44,64,'com.gp.lights'),(45,65,'com.tebs3.roottoolbox'),(46,66,'com.tebs3.roottoolbox'),(47,67,'com.tebs3.roottoolbox'),(48,68,'com.tebs3.roottoolbox'),(49,70,'com.tebs3.roottoolbox'),(50,71,'com.tebs3.roottoolbox'),(51,72,'com.tmobile.themechooser'),(52,73,'com.tebs3.roottoolbox'),(53,74,'com.tebs3.roottoolbox'),(54,75,'com.tebs3.roottoolbox'),(55,76,'com.tebs3.roottoolbox'),(56,77,'com.tebs3.roottoolbox'),(57,78,'com.lge.hiddenmenu'),(58,79,'com.tebs3.roottoolbox'),(59,80,'com.tebs3.roottoolbox'),(60,81,'com.tebs3.roottoolbox'),(61,82,'com.tebs3.roottoolbox'),(62,83,'com.tebs3.roottoolbox'),(63,84,'com.tebs3.roottoolbox'),(64,85,'com.tebs3.roottoolbox'),(65,86,'com.tebs3.roottoolbox'),(66,87,'com.tebs3.roottoolbox'),(67,88,'com.android.settings'),(68,89,'com.tebs3.roottoolbox'),(69,90,'com.tebs3.roottoolbox'),(70,91,'com.tebs3.roottoolbox'),(71,92,'com.tebs3.roottoolbox'),(72,93,'com.tebs3.roottoolbox'),(73,95,'com.tebs3.roottoolbox'),(74,96,'com.alan.message'),(75,97,'com.tebs3.roottoolbox'),(76,98,'com.alan.message'),(77,99,'com.tebs3.roottoolbox'),(78,100,'com.tebs3.roottoolbox'),(79,104,'com.tebs3.roottoolbox'),(80,105,'com.alan.message'),(81,106,'com.tebs3.roottoolbox'),(82,107,'com.tebs3.roottoolbox'),(83,108,'com.tebs3.roottoolbox'),(84,109,'com.alan.message'),(85,110,'com.alan.message'),(86,111,'com.tebs3.roottoolbox'),(87,113,'com.tebs3.roottoolbox'),(88,112,'com.noshufou.android.su'),(89,114,'com.noshufou.android.su'),(90,115,'com.tebs3.roottoolbox'),(91,116,'com.tebs3.roottoolbox'),(92,117,'com.alan.message'),(93,118,'com.tebs3.roottoolbox'),(94,119,'com.alan.message'),(95,120,'com.tebs3.roottoolbox'),(96,121,'com.alan.message'),(97,122,'com.tebs3.roottoolbox'),(98,123,'com.tebs3.roottoolbox'),(99,124,'com.tebs3.roottoolbox'),(100,126,'com.tebs3.roottoolbox'),(101,127,'com.tebs3.roottoolbox'),(102,128,'com.tebs3.roottoolbox'),(103,129,'com.alan.message'),(104,131,'com.tebs3.roottoolbox'),(105,130,'com.alan.message'),(106,132,'com.tebs3.roottoolbox'),(107,133,'com.alan.message'),(108,134,'com.tebs3.roottoolbox'),(109,135,'com.alan.message'),(110,136,'com.tebs3.roottoolbox'),(111,138,'com.tebs3.roottoolbox'),(112,137,'com.alan.message'),(113,139,'com.alan.message'),(114,140,'com.tebs3.roottoolbox'),(115,142,'com.tebs3.roottoolbox'),(116,144,'com.tebs3.roottoolbox'),(117,146,'com.tebs3.roottoolbox'),(118,147,'com.tebs3.roottoolbox'),(119,149,'com.alan.message'),(120,150,'com.tebs3.roottoolbox'),(121,151,'com.tebs3.roottoolbox'),(122,152,'com.tebs3.roottoolbox'),(123,153,'com.tebs3.roottoolbox'),(124,154,'com.alan.message'),(125,155,'com.tebs3.roottoolbox'),(126,157,'com.tebs3.roottoolbox'),(127,158,'com.tebs3.roottoolbox'),(128,159,'com.tebs3.roottoolbox'),(129,160,'com.tebs3.roottoolbox'),(130,161,'com.tebs3.roottoolbox'),(131,162,'com.tebs3.roottoolbox'),(132,163,'com.tebs3.roottoolbox'),(133,164,'com.tebs3.roottoolbox'),(134,165,'com.tebs3.roottoolbox'),(135,166,'com.tebs3.roottoolbox'),(136,167,'com.tebs3.roottoolbox'),(137,168,'com.tebs3.roottoolbox'),(138,169,'com.tebs3.roottoolbox'),(139,170,'com.tebs3.roottoolbox'),(140,171,'com.tebs3.roottoolbox'),(141,172,'com.tebs3.roottoolbox'),(142,173,'com.tebs3.roottoolbox'),(143,174,'com.tebs3.roottoolbox'),(144,175,'com.tebs3.roottoolbox'),(145,184,'com.tebs3.roottoolbox'),(146,185,'com.tebs3.roottoolbox'),(147,186,'com.tebs3.roottoolbox'),(148,187,'com.tebs3.roottoolbox'),(149,188,'com.tebs3.roottoolbox'),(150,189,'com.android.vending'),(151,190,'com.tebs3.roottoolbox'),(152,191,'com.tebs3.roottoolbox'),(153,192,'com.tebs3.roottoolbox'),(154,193,'com.tebs3.roottoolbox'),(155,194,'com.tebs3.roottoolbox'),(156,196,'com.tebs3.roottoolbox'),(157,197,'com.tebs3.roottoolbox'),(158,206,'com.tebs3.roottoolbox'),(159,207,'com.tebs3.roottoolbox'),(160,209,'com.noshufou.android.su'),(161,210,'com.noshufou.android.su'),(162,212,'com.evilsunflower.reader.evilSunzi6'),(163,213,'com.evilsunflower.reader.evilSunzi6'),(164,215,'com.evilsunflower.reader.evilSunzi6'),(165,217,'com.evilsunflower.reader.evilSunzi6'),(166,231,'com.evilsunflower.reader.evilSunzi6'),(167,233,'com.evilsunflower.reader.evilSunzi6'),(168,243,'com.android.browser'),(169,244,'com.evilsunflower.reader.evilSunzi6');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,4,0),(3,5,0),(4,11,0),(5,12,0),(6,13,0),(7,14,0),(8,15,0),(9,16,0),(10,17,0),(11,18,0),(12,19,0),(13,20,0),(14,21,0),(15,22,0),(16,23,0),(17,24,0),(18,25,0),(19,26,0),(20,27,0),(21,28,0),(22,29,0),(23,30,0),(24,31,0),(25,32,0),(26,33,0),(27,34,0),(28,35,0),(29,40,0),(30,47,0),(31,55,0),(32,56,0),(33,57,0),(34,69,0),(35,70,0),(36,56,0),(37,72,0),(38,72,0),(39,76,0),(40,89,0),(41,90,0),(42,91,0),(43,92,0),(44,93,0),(45,89,0),(46,94,0),(47,92,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=245 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,1,1,0),(3,2,0,0),(4,2,0,0),(5,4,0,0),(6,5,0,0),(7,5,0,0),(8,6,1,0),(9,7,1,0),(10,7,1,0),(11,8,0,0),(12,9,1,0),(13,10,0,0),(14,11,1,0),(15,12,0,0),(16,13,1,0),(17,14,1,0),(18,14,1,0),(19,15,0,0),(20,15,0,0),(21,16,1,0),(22,17,0,0),(23,19,1,0),(24,19,0,0),(25,19,0,0),(26,19,0,0),(27,20,1,0),(28,19,0,0),(29,19,0,0),(30,21,0,0),(31,22,1,0),(32,23,1,0),(33,23,1,0),(34,25,0,0),(35,26,1,0),(36,25,0,0),(37,26,1,0),(38,26,1,0),(39,26,1,0),(40,27,1,0),(41,26,1,0),(42,27,1,0),(43,26,1,0),(44,27,1,0),(45,28,1,0),(46,28,0,0),(47,28,0,0),(48,28,0,0),(49,28,0,0),(50,28,0,0),(51,30,1,0),(52,31,0,0),(53,30,1,0),(54,31,1,0),(55,31,0,0),(56,31,0,0),(57,31,0,0),(58,31,0,0),(59,32,1,0),(60,32,0,0),(61,32,0,0),(62,32,0,0),(63,32,0,0),(64,32,0,0),(65,34,0,0),(66,35,0,0),(67,36,0,0),(68,37,0,0),(69,38,1,0),(70,39,0,0),(71,40,0,0),(72,41,0,0),(73,42,0,0),(74,43,0,0),(75,44,0,0),(76,45,0,0),(77,46,0,0),(78,47,0,0),(79,48,0,0),(80,49,0,0),(81,50,0,0),(82,51,0,0),(83,52,0,0),(84,53,0,0),(85,54,0,0),(86,55,0,0),(87,56,0,0),(88,57,0,0),(89,58,0,0),(90,59,0,0),(91,60,0,0),(92,61,0,0),(93,62,0,0),(94,63,1,0),(95,64,0,0),(96,65,1,0),(97,66,0,0),(98,65,1,0),(99,67,0,0),(100,68,0,0),(101,69,1,0),(102,70,1,0),(103,71,1,0),(104,72,0,0),(105,73,0,0),(106,74,0,0),(107,76,0,0),(108,79,0,0),(109,78,0,0),(110,78,0,0),(111,80,0,0),(112,81,1,0),(113,82,0,0),(114,81,1,0),(115,83,0,0),(116,84,0,0),(117,85,0,0),(118,86,0,0),(119,87,0,0),(120,88,0,0),(121,89,0,0),(122,90,0,0),(123,92,0,0),(124,93,0,0),(125,94,1,0),(126,96,0,0),(127,97,0,0),(128,98,0,0),(129,99,0,0),(130,99,0,0),(131,100,0,0),(132,101,0,0),(133,102,0,0),(134,103,0,0),(135,104,0,0),(136,105,0,0),(137,106,0,0),(138,107,0,0),(139,108,0,0),(140,109,0,0),(141,110,1,0),(142,111,0,0),(143,110,1,0),(144,112,0,0),(145,110,1,0),(146,113,0,0),(147,114,0,0),(148,115,1,0),(149,116,0,0),(150,117,0,0),(151,118,0,0),(152,120,0,0),(153,121,0,0),(154,122,0,0),(155,123,0,0),(156,124,1,0),(157,125,0,0),(158,126,0,0),(159,127,0,0),(160,128,0,0),(161,129,0,0),(162,130,0,0),(163,131,0,0),(164,132,0,0),(165,133,0,0),(166,134,0,0),(167,135,0,0),(168,136,0,0),(169,137,0,0),(170,138,0,0),(171,139,0,0),(172,140,0,0),(173,141,0,0),(174,142,0,0),(175,143,0,0),(176,144,1,0),(177,144,1,0),(178,144,1,0),(179,144,1,0),(180,144,1,0),(181,144,1,0),(182,144,1,0),(183,144,1,0),(184,145,0,0),(185,146,0,0),(186,147,0,0),(187,148,0,0),(188,149,0,0),(189,150,0,0),(190,151,0,0),(191,152,0,0),(192,153,0,0),(193,154,0,0),(194,155,0,0),(195,156,1,0),(196,157,0,0),(197,158,0,0),(198,159,1,0),(199,159,1,0),(200,159,1,0),(201,159,1,0),(202,159,1,0),(203,159,1,0),(204,159,1,0),(205,159,1,0),(206,160,0,0),(207,161,0,0),(208,163,1,0),(209,164,1,0),(210,164,1,0),(211,167,1,0),(212,168,0,0),(213,169,0,0),(214,170,1,0),(215,171,0,0),(216,173,1,0),(217,174,0,0),(218,175,1,0),(219,177,1,0),(220,178,1,0),(221,179,1,0),(222,181,1,0),(223,181,1,0),(224,181,1,0),(225,181,1,0),(226,181,1,0),(227,181,1,0),(228,181,1,0),(229,181,1,0),(230,183,1,0),(231,184,0,0),(232,185,1,0),(233,186,0,0),(234,187,1,0),(235,187,1,0),(236,187,1,0),(237,187,1,0),(238,187,1,0),(239,187,1,0),(240,187,1,0),(241,187,1,0),(242,187,1,0),(243,188,0,0),(244,190,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (6,'android.permission.ACCESS_COARSE_LOCATION'),(17,'android.permission.ACCESS_FINE_LOCATION'),(18,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(12,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(20,'android.permission.CHANGE_CONFIGURATION'),(11,'android.permission.CHANGE_WIFI_STATE'),(19,'android.permission.GET_TASKS'),(1,'android.permission.INSTALL_PACKAGES'),(10,'android.permission.INTERNET'),(22,'android.permission.READ_CONTACTS'),(16,'android.permission.READ_EXTERNAL_STORAGE'),(15,'android.permission.READ_LOGS'),(7,'android.permission.READ_PHONE_STATE'),(8,'android.permission.READ_SMS'),(9,'android.permission.RECEIVE_BOOT_COMPLETED'),(21,'android.permission.SEND_SMS'),(2,'android.permission.SET_WALLPAPER'),(14,'android.permission.VIBRATE'),(23,'android.permission.WAKE_LOCK'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(4,'android.permission.WRITE_SMS'),(24,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(13,'com.android.vending.CHECK_LICENSE');
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(2,NULL,NULL,'http://market.android.com/details?id=com.atools.multimountsdcard.widget',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(4,NULL,NULL,'http://market.android.com/details?id=com.atools.multimountsdcard.widget',NULL,NULL,NULL),(5,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(6,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(7,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(8,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(9,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(10,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(11,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'file://',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(18,NULL,NULL,'http://lukemovement.wordpress.com/root-toolbox/',NULL,NULL,NULL),(19,NULL,NULL,'https://market.android.com/details?id=com.tebs3.roottoolbox&feature=search_result',NULL,NULL,NULL),(20,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(21,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'(.*)',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(26,NULL,NULL,'http://forum.xda-developers.com/showthread.php?t=1056292',NULL,NULL,NULL),(27,NULL,NULL,'content://mms/',NULL,NULL,NULL),(28,NULL,NULL,'content://mms-sms/threadID',NULL,NULL,NULL),(29,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(30,NULL,NULL,'content://mms/',NULL,NULL,NULL),(31,NULL,NULL,'(.*)',NULL,NULL,NULL),(32,NULL,NULL,'(.*)',NULL,NULL,NULL),(33,NULL,NULL,'(.*)',NULL,NULL,NULL),(34,NULL,NULL,'(.*)',NULL,NULL,NULL),(35,NULL,NULL,'(.*)',NULL,NULL,NULL),(36,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(37,NULL,NULL,'content://mms/inbox',NULL,NULL,NULL),(38,NULL,NULL,'content://mms/(.*)/addr',NULL,NULL,NULL),(39,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(40,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(41,NULL,NULL,'(.*)',NULL,NULL,NULL),(42,NULL,NULL,'(.*)',NULL,NULL,NULL),(43,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(44,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(45,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(46,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(47,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(48,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(49,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(50,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(51,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL),(52,NULL,NULL,'(.*)',NULL,NULL,NULL),(53,NULL,NULL,'(.*)',NULL,NULL,NULL),(54,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,3,1),(2,18,5),(3,24,8),(4,29,17),(5,75,20),(6,91,21),(7,162,27),(8,162,28),(9,165,29),(10,166,30),(11,180,36),(12,180,37),(13,180,38),(14,182,39),(15,189,53),(16,191,54);
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,2,5),(14,2,6),(15,2,7),(16,2,10),(17,2,12),(18,2,13),(19,2,14),(20,3,3),(21,3,5),(22,3,6),(23,3,7),(24,3,10),(25,3,12),(26,3,15),(27,4,17),(28,4,16),(29,4,18),(30,4,3),(31,4,5),(32,4,6),(33,4,7),(34,4,10),(35,4,12),(36,5,1),(37,5,2),(38,5,3),(39,5,4),(40,5,5),(41,5,6),(42,5,7),(43,5,8),(44,5,10),(45,5,11),(46,5,12),(47,5,17),(48,5,16),(49,5,19),(50,5,18),(51,5,20),(52,6,1),(53,6,3),(54,6,4),(55,6,5),(56,6,6),(57,6,7),(58,6,8),(59,6,10),(60,6,11),(61,6,12),(62,6,17),(63,6,16),(64,6,19),(65,6,18),(66,6,21),(67,6,22),(68,7,17),(69,7,3),(70,7,4),(71,7,5),(72,7,23),(73,7,6),(74,7,7),(75,7,8),(76,7,24),(77,7,10),(78,7,12);
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

-- Dump completed on 2015-10-09  0:38:26
