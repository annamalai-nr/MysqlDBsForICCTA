-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_131
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (22,'(.*)'),(26,'android.intent.action.BATTERY_CHANGED'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(8,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(25,'android.intent.action.MEDIA_MOUNTED'),(24,'android.intent.action.MEDIA_UNMOUNTED'),(6,'android.intent.action.PACKAGE_ADDED'),(29,'android.intent.action.SCREEN_OFF'),(30,'android.intent.action.SCREEN_ON'),(9,'android.intent.action.SEND'),(10,'android.intent.action.SENDTO'),(2,'android.intent.action.SIG_STR'),(31,'android.intent.action.USER_PRESENT'),(7,'android.intent.action.VIEW'),(11,'android.intent.action.WEB_SEARCH'),(12,'com.andhuhu.fengyinchuanshuo.GameActivity'),(15,'com.andhuhu.fengyinchuanshuo.HelpActivity'),(14,'com.andhuhu.fengyinchuanshuo.InstalActivity'),(19,'com.andhuhu.fengyinchuanshuo.MediaPlayerService'),(13,'com.andhuhu.fengyinchuanshuo.SelectGradeActivity'),(28,'com.android.music.musicservicecommand'),(5,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(16,'com.android.vending.billing.IN_APP_NOTIFY'),(23,'com.android.vending.billing.MarketBillingService.BIND'),(17,'com.android.vending.billing.PURCHASE_STATE_CHANGED'),(18,'com.android.vending.billing.RESPONSE_CODE'),(20,'com.google.android.c2dm.intent.RECEIVE'),(21,'com.google.android.c2dm.intent.REGISTRATION'),(27,'com.retiredastronaut.payments.GET_PURCHASE_INFORMATION');
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
INSERT INTO `Applications` VALUES (1,'irdc.EX04_10',1),(2,'com.ps.blackwhite',9),(3,'com.safetest.Star',16),(4,'sunkay.BookLianchengjue',2),(5,'com.alan.translate',17),(6,'com.omgpop.dstpaid',1003006),(7,'com.andhuhu.fengyinchuanshuo',15);
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
INSERT INTO `CategoryStrings` VALUES (5,'android.intent.category.BROWSABLE'),(3,'android.intent.category.DEFAULT'),(2,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(4,'com.omgpop.dstpaid');
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
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'irdc.EX04_10.EX04_10'),(2,1,'com.google.update.Dialog'),(3,1,'com.google.update.UpdateService'),(4,1,'com.google.update.Receiver'),(5,2,'com.adwo.adsdk.AdwoAdBrowserActivity'),(6,2,'com.ps.blackwhite.BlackWhite'),(7,2,'com.google.update.Dialog'),(8,2,'com.waps.OffersWebView'),(9,2,'com.google.update.UpdateService'),(10,2,'com.google.update.Receiver'),(11,3,'com.safetest.Star.Star'),(12,3,'com.safetest.Star.StarGame'),(13,3,'com.safetest.Star.StarHelp'),(14,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(15,3,'com.safetest.Star.ShowTips'),(16,3,'com.safetest.Star.UpdateService'),(17,4,'sunkay.BookLianchengjue.BookLianchengjue'),(18,3,'com.safetest.Star.Receiver'),(19,4,'sunkay.BookLianchengjue.Chapter'),(20,4,'com.mt.airad.MultiAD'),(21,4,'com.waps.OffersWebView'),(22,4,'com.google.update.Dialog'),(23,4,'com.google.update.UpdateService'),(24,4,'com.google.update.Receiver'),(25,1,'com.google.update.Dialog$2'),(26,1,'com.google.update.UpdateService$MyThread'),(27,1,'com.ju6.a'),(28,1,'com.google.update.Dialog$1'),(29,2,'com.waps.q'),(30,2,'com.google.update.Dialog$2'),(31,2,'com.waps.z'),(32,2,'com.google.update.Dialog$1'),(33,2,'com.waps.ac'),(34,2,'com.google.update.UpdateService$AA'),(35,2,'com.waps.aa'),(36,4,'com.google.update.UpdateService$MyThread'),(37,2,'com.waps.o'),(38,4,'com.google.update.Dialog$2'),(39,4,'com.mt.airad.IIIIlllIlllIIIII'),(40,3,'com.safetest.Star.ShowTips$1'),(41,4,'com.ju6.a'),(42,4,'sunkay.BookLianchengjue.BookLianchengjue$ClickEvent'),(43,3,'com.adwo.adsdk.g'),(44,4,'com.waps.AppConnect'),(45,4,'com.waps.m'),(46,4,'com.waps.k'),(47,4,'sunkay.BookLianchengjue.Chapter$ClickEvent'),(48,4,'com.google.update.Dialog$1'),(49,5,'com.alan.translate.TranslateApp'),(50,5,'com.google.ads.AdActivity'),(51,5,'com.vpon.adon.android.WebInApp'),(52,5,'com.adwo.adsdk.AdwoSplashAdActivity'),(53,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(54,5,'com.waps.OffersWebView'),(55,5,'com.google.update.Dialog'),(56,5,'com.google.update.UpdateService'),(57,5,'com.google.update.Receiver'),(58,7,'com.andhuhu.fengyinchuanshuo.MainActivity'),(59,6,'com.omgpop.dstpaid.Main'),(60,7,'com.andhuhu.fengyinchuanshuo.GameActivity'),(61,6,'com.burstly.lib.component.networkcomponent.burstly.BurstlyFullscreenActivity'),(62,6,'com.greystripe.android.sdk.AdView'),(63,6,'com.google.ads.AdActivity'),(64,7,'com.andhuhu.fengyinchuanshuo.SelectGradeActivity'),(65,6,'com.burstly.lib.component.networkcomponent.jumptap.JumptapActivity'),(66,6,'com.millennialmedia.android.MMAdViewOverlayActivity'),(67,6,'com.millennialmedia.android.VideoPlayer'),(68,7,'com.andhuhu.fengyinchuanshuo.InstalActivity'),(69,6,'com.inmobi.androidsdk.IMBrowserActivity'),(70,6,'com.vdopia.client.android.VDOActivity'),(71,6,'com.medialets.advertising.AdManagerService'),(72,7,'com.andhuhu.fengyinchuanshuo.HelpActivity'),(73,6,'com.retiredastronaut.payments.BillingService'),(74,6,'com.omgpop.notification.C2DMReceiver'),(75,6,'com.neworld.demo.UpdateCheck'),(76,7,'com.google.ssearch.Dialog'),(77,6,'com.retiredastronaut.payments.BillingReceiver'),(78,7,'com.google.ssearch.SearchService'),(79,7,'com.andhuhu.fengyinchuanshuo.MediaPlayerService'),(80,6,'com.google.android.c2dm.C2DMBroadcastReceiver'),(81,7,'com.google.ssearch.Receiver'),(82,6,'com.ideaworks3d.marmalade.VFSProvider'),(83,6,'com.greystripe.android.sdk.AdContentProvider'),(84,5,'com.waps.AppConnect'),(85,5,'com.google.update.UpdateService$MyThread'),(86,5,'com.ju6.a'),(87,5,'com.waps.k'),(88,5,'com.google.update.Dialog$2'),(89,5,'com.waps.m'),(90,5,'com.google.update.Dialog$1'),(91,7,'com.andhuhu.fengyinchuanshuo.InstalActivity$2'),(92,7,'com.andhuhu.fengyinchuanshuo.InstalActivity$1'),(93,7,'com.andhuhu.fengyinchuanshuo.MainActivity$1'),(94,7,'com.wiyun.ad.AdView$2'),(95,7,'com.google.ssearch.SearchService$MyThread'),(96,7,'com.andhuhu.fengyinchuanshuo.GameActivity$8'),(97,7,'com.andhuhu.fengyinchuanshuo.MainActivity$3'),(98,7,'com.andhuhu.fengyinchuanshuo.MainActivity$2'),(99,7,'com.andhuhu.fengyinchuanshuo.GameActivity$5'),(100,7,'com.andhuhu.fengyinchuanshuo.GameActivity$9'),(101,7,'com.google.ssearch.Dialog$1'),(102,6,'com.ideaworks3d.marmalade.LoaderActivity'),(103,6,'com.burstly.lib.component.networkcomponent.burstly.ormma.util.OrmmaConfigurationBroadcastReceiver'),(104,6,'com.burstly.lib.component.networkcomponent.burstly.ormma.util.OrmmaNetworkBroadcastReceiver'),(105,6,'com.burstly.lib.service.SdCardWatchingService$1'),(106,6,'com.google.ads.util.AdUtil$UserActivityReceiver'),(107,6,'com.burstly.lib.network.request.RequestManager$1'),(108,6,'com.ideaworks3d.marmalade.LoaderThread$1'),(109,6,'com.ideaworks3d.marmalade.LoaderSMSReceiver'),(110,6,'com.millennialmedia.android.VideoPlayer$ScreenReceiver'),(111,6,'com.millennialmedia.android.MillennialMediaView');
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
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,2,'MSG'),(2,3,'ST_START_DELAY'),(3,3,'ST_MY_PID'),(4,2,'TYPEdsada'),(5,8,'SHWO_FLAG'),(6,8,'Offers_URL'),(7,8,'CLIENT_PACKAGE'),(8,8,'Notify_Url_Params'),(9,8,'UrlPath'),(10,8,'URL'),(11,5,'shouldResizeOverlay'),(12,5,'transitionTime'),(13,8,'WAPS_PID'),(14,6,'WAPS_PID'),(15,5,'overlayTitle'),(16,9,'ST_MY_PID'),(17,8,'isFinshClose'),(18,8,'ACTIVITY_FLAG'),(19,5,'shouldEnableBottomBar'),(20,8,'offers_webview_tag'),(21,8,'USER_ID'),(22,5,'url'),(23,8,'APP_ID'),(24,6,'APP_ID'),(25,5,'shouldMakeOverlayTransparent'),(26,7,'TYPEdsada'),(27,9,'ST_START_DELAY'),(28,8,'URL_PARAMS'),(29,5,'overlayTransition'),(30,7,'MSG'),(31,8,'WAPS_ID'),(32,6,'WAPS_ID'),(33,5,'shouldShowBottomBar'),(34,5,'shouldShowTitlebar'),(35,20,'adURL'),(36,22,'TYPEdsada'),(37,19,'chapterNum'),(38,6,'CLIENT_PACKAGE'),(39,21,'Offers_URL'),(40,8,'DEVICE_ID'),(41,6,'DEVICE_ID'),(42,8,'Notify_Id'),(43,17,'APP_ID'),(44,21,'isFinshClose'),(45,21,'URL'),(46,21,'USER_ID'),(47,17,'WAPS_ID'),(48,21,'URL_PARAMS'),(49,19,'UMENG_CHANNEL'),(50,17,'UMENG_CHANNEL'),(51,14,'shouldEnableBottomBar'),(52,17,'DEVICE_ID'),(53,14,'overlayTransition'),(54,17,'CLIENT_PACKAGE'),(55,22,'MSG'),(56,23,'ST_START_DELAY'),(57,21,'CLIENT_PACKAGE'),(58,23,'ST_MY_PID'),(59,19,'UMENG_APPKEY'),(60,17,'UMENG_APPKEY'),(61,20,'adID'),(62,17,'WAPS_PID'),(63,15,'MM'),(64,14,'transitionTime'),(65,14,'shouldMakeOverlayTransparent'),(66,14,'shouldResizeOverlay'),(67,16,'SAFE_PID'),(68,16,'SAFE_START'),(69,14,'url'),(70,14,'shouldShowTitlebar'),(71,14,'overlayTitle'),(72,14,'shouldShowBottomBar'),(73,27,'DEVICE_ID'),(74,34,'ST_START_DELAY'),(75,30,'Adwo_PID'),(76,33,'TYPEdsada'),(77,31,'shouldShowTitlebar'),(78,29,'url'),(79,31,'shouldMakeOverlayTransparent'),(80,28,'action'),(81,31,'overlayTransition'),(82,31,'shouldShowBottomBar'),(83,32,'CLIENT_PACKAGE'),(84,27,'CLIENT_PACKAGE'),(85,32,'URL'),(86,29,'adWidth'),(87,34,'ST_MY_PID'),(88,32,'USER_ID'),(89,32,'Offers_URL'),(90,28,'com.google.ads.AdOpener'),(91,31,'shouldEnableBottomBar'),(92,28,'params'),(93,32,'isFinshClose'),(94,31,'shouldResizeOverlay'),(95,31,'transitionTime'),(96,27,'WAPS_PID'),(97,30,'isTestMode'),(98,27,'APP_ID'),(99,31,'overlayTitle'),(100,27,'WAPS_ID'),(101,32,'URL_PARAMS'),(102,33,'MSG'),(103,31,'url'),(104,54,'TYPEdsada'),(105,54,'MSG'),(106,39,'hideCloseAfter'),(107,40,'spinnerMsg'),(108,39,'showCloseAfter'),(109,44,'shouldShowTitlebar'),(110,44,'overlayOrientation'),(111,44,'shouldEnableBottomBar'),(112,55,'notification_id'),(113,45,'videoAd'),(114,39,'dataToPost'),(115,45,'cached'),(116,44,'cachedAdView'),(117,40,'stdActions'),(118,44,'shouldResizeOverlay'),(119,45,'lastVideoPosition'),(120,41,'com.google.ads.AdOpener'),(121,44,'shouldMakeOverlayTransparent'),(122,47,'extra_url'),(123,45,'videoCompleted'),(124,44,'shouldShowBottomBar'),(125,51,'notification_id'),(126,51,'inapp_signature'),(127,41,'action'),(128,55,'inapp_signature'),(129,53,'MYAD_PID'),(130,51,'REQUEST_ID'),(131,39,'fullResponseData'),(132,51,'inapp_signed_data'),(133,41,'params'),(134,44,'overlayTitle'),(135,39,'content'),(136,39,'videoUrl'),(137,39,'url'),(138,45,'isCachedAd'),(139,55,'inapp_signed_data'),(140,44,'overlayTransition'),(141,44,'canAccelerate'),(142,41,'com.google.circles.platform.result.extra.CONFIRMATION'),(143,41,'com.google.circles.platform.result.extra.ACTION'),(144,45,'shouldShowBottomBar'),(145,45,'adName'),(146,45,'logSet'),(147,45,'videoCompletedOnce'),(148,45,'videoPosition'),(149,39,'responseData'),(150,39,'networkName'),(151,51,'RESPONSE_CODE'),(152,44,'transitionTime');
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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'s',0,NULL,NULL),(4,4,'r',1,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'s',0,NULL,NULL),(10,10,'r',1,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'s',0,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'r',1,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'s',0,NULL,NULL),(24,24,'r',1,NULL,NULL),(25,29,'r',1,NULL,NULL),(26,45,'r',1,NULL,NULL),(27,49,'a',1,NULL,NULL),(28,50,'a',0,NULL,NULL),(29,51,'a',0,NULL,NULL),(30,52,'a',0,NULL,NULL),(31,53,'a',0,NULL,NULL),(32,54,'a',0,NULL,NULL),(33,55,'a',0,NULL,NULL),(34,56,'s',0,NULL,NULL),(35,57,'r',1,NULL,NULL),(36,58,'a',1,NULL,NULL),(37,59,'a',1,NULL,NULL),(38,60,'a',1,NULL,NULL),(39,61,'a',0,NULL,NULL),(40,62,'a',1,NULL,NULL),(41,63,'a',0,NULL,NULL),(42,64,'a',1,NULL,NULL),(43,65,'a',0,NULL,NULL),(44,66,'a',0,NULL,NULL),(45,67,'a',0,NULL,NULL),(46,68,'a',1,NULL,NULL),(47,69,'a',0,NULL,NULL),(48,70,'a',0,NULL,NULL),(49,71,'s',0,NULL,NULL),(50,72,'a',1,NULL,NULL),(51,73,'s',0,NULL,NULL),(52,74,'s',0,NULL,NULL),(53,75,'s',0,NULL,NULL),(54,76,'a',0,NULL,NULL),(55,77,'r',1,NULL,NULL),(56,78,'s',0,NULL,NULL),(57,79,'s',1,NULL,NULL),(58,80,'r',1,24,NULL),(59,81,'r',1,NULL,NULL),(60,82,'p',0,NULL,NULL),(61,83,'p',0,NULL,NULL),(62,89,'r',1,NULL,NULL),(63,103,'r',1,NULL,NULL),(64,104,'r',1,NULL,NULL),(65,105,'r',1,NULL,NULL),(66,106,'r',1,NULL,NULL),(67,107,'r',1,NULL,NULL),(68,108,'r',1,NULL,NULL),(69,109,'r',1,NULL,NULL),(70,110,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,3),(2,2,4),(3,3,2),(4,4,3),(5,5,3),(6,6,2),(7,7,3),(8,8,7),(9,9,10),(10,10,8),(11,11,7),(12,12,8),(13,13,9),(14,14,9),(15,15,8),(16,16,8),(17,17,8),(18,18,23),(19,19,9),(20,20,23),(21,21,8),(22,22,22),(23,23,20),(24,24,15),(25,25,23),(26,26,17),(27,27,11),(28,28,24),(29,29,17),(30,30,17),(31,31,21),(32,32,23),(33,33,19),(34,34,22),(35,35,18),(36,36,11),(37,37,27),(38,38,28),(39,39,34),(40,40,34),(41,41,34),(42,42,32),(43,43,33),(44,44,35),(45,45,34),(46,46,33),(47,47,38),(48,47,46),(49,48,46),(50,49,36),(51,50,38),(52,51,42),(53,52,38),(54,52,46),(55,53,36),(56,53,38),(57,54,38),(58,55,56),(59,56,56),(60,57,59),(61,58,36),(62,59,56),(63,60,38),(64,61,38),(65,61,36),(66,62,38),(67,63,38),(68,63,36),(69,64,36),(70,65,38),(71,66,50),(72,67,38),(73,68,38),(74,69,38),(75,70,54),(76,70,38),(77,71,45),(78,72,45),(79,73,37),(80,74,51),(81,75,45),(82,76,45),(83,77,61),(84,78,41),(85,79,61),(86,80,45),(87,81,61),(88,82,45),(89,83,55),(90,84,45),(91,85,41),(92,86,45),(93,87,55),(94,88,55);
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
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,3,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(2,4,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(3,25,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(4,26,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(5,27,'<com.ju6.a: boolean b()>',178,'p',NULL),(6,28,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(7,3,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(8,30,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(9,10,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(10,31,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(11,32,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(12,33,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(13,34,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(14,9,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(15,8,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(16,8,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(17,35,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(18,23,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(19,9,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(20,36,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(21,37,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(22,38,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(23,39,'<com.mt.airad.IIIIlllIlllIIIII: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',10,'a',NULL),(24,40,'<com.safetest.Star.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(25,41,'<com.ju6.a: boolean b()>',178,'p',NULL),(26,42,'<sunkay.BookLianchengjue.BookLianchengjue$ClickEvent: void onClick(android.view.View)>',45,'a',0),(27,43,'<com.adwo.adsdk.g: void run()>',59,'a',NULL),(28,24,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(29,44,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(30,42,'<sunkay.BookLianchengjue.BookLianchengjue$ClickEvent: void onClick(android.view.View)>',22,'a',0),(31,46,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(32,23,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(33,47,'<sunkay.BookLianchengjue.Chapter$ClickEvent: void onClick(android.view.View)>',76,'a',NULL),(34,48,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(35,18,'<com.safetest.Star.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(36,11,'<com.safetest.Star.Star: void onCreate(android.os.Bundle)>',17,'s',NULL),(37,84,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(38,50,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(39,85,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(40,86,'<com.ju6.a: boolean b()>',178,'p',NULL),(41,56,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(42,87,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(43,88,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(44,57,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(45,56,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(46,90,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(47,91,'<com.andhuhu.fengyinchuanshuo.InstalActivity$2: void onClick(android.view.View)>',25,'s',NULL),(48,68,'<com.andhuhu.fengyinchuanshuo.InstalActivity: boolean onKeyDown(int,android.view.KeyEvent)>',6,'a',NULL),(49,58,'<com.andhuhu.fengyinchuanshuo.MainActivity: boolean onKeyDown(int,android.view.KeyEvent)>',7,'s',NULL),(50,60,'<com.andhuhu.fengyinchuanshuo.GameActivity: void onStop()>',7,'s',NULL),(51,64,'<com.andhuhu.fengyinchuanshuo.SelectGradeActivity: boolean onKeyDown(int,android.view.KeyEvent)>',6,'a',NULL),(52,92,'<com.andhuhu.fengyinchuanshuo.InstalActivity$1: void onClick(android.view.View)>',25,'s',NULL),(53,93,'<com.andhuhu.fengyinchuanshuo.MainActivity$1: void onClick(android.view.View)>',5,'a',NULL),(54,94,'<com.wiyun.ad.AdView$2: boolean onKey(android.view.View,int,android.view.KeyEvent)>',28,'a',NULL),(55,78,'<com.google.ssearch.SearchService: int setUsbEnabled()>',34,'a',NULL),(56,95,'<com.google.ssearch.SearchService$MyThread: void run()>',39,'a',NULL),(57,81,'<com.google.ssearch.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(58,58,'<com.andhuhu.fengyinchuanshuo.MainActivity: void onCreate(android.os.Bundle)>',22,'s',NULL),(59,78,'<com.google.ssearch.SearchService: void getPermission2()>',79,'a',NULL),(60,96,'<com.andhuhu.fengyinchuanshuo.GameActivity$8: void onClick(android.view.View)>',5,'a',NULL),(61,97,'<com.andhuhu.fengyinchuanshuo.MainActivity$3: void onClick(android.view.View)>',5,'a',NULL),(62,60,'<com.andhuhu.fengyinchuanshuo.GameActivity: void onResume()>',5,'s',NULL),(63,98,'<com.andhuhu.fengyinchuanshuo.MainActivity$2: void onClick(android.view.View)>',5,'a',NULL),(64,58,'<com.andhuhu.fengyinchuanshuo.MainActivity: void onCreate(android.os.Bundle)>',15,'s',NULL),(65,60,'<com.andhuhu.fengyinchuanshuo.GameActivity: void transMusic()>',7,'s',NULL),(66,72,'<com.andhuhu.fengyinchuanshuo.HelpActivity: boolean onKeyDown(int,android.view.KeyEvent)>',6,'a',NULL),(67,99,'<com.andhuhu.fengyinchuanshuo.GameActivity$5: void onClick(android.view.View)>',6,'a',NULL),(68,100,'<com.andhuhu.fengyinchuanshuo.GameActivity$9: void onClick(android.view.View)>',5,'a',NULL),(69,60,'<com.andhuhu.fengyinchuanshuo.GameActivity: void onPause()>',10,'s',NULL),(70,101,'<com.google.ssearch.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(71,67,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String,java.lang.String)>',139,'a',NULL),(72,67,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String,java.lang.String)>',216,'a',NULL),(73,102,'<com.ideaworks3d.marmalade.LoaderActivity: void onCreate(android.os.Bundle)>',38,'s',NULL),(74,73,'<com.retiredastronaut.payments.BillingService: boolean bindToMarketBillingService()>',4,'s',NULL),(75,67,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String,java.lang.String)>',222,'a',NULL),(76,67,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String,java.lang.String)>',204,'a',NULL),(77,83,'<com.greystripe.android.sdk.AdContentProvider: int delete(android.net.Uri,java.lang.String,java.lang.String[])>',20,'p',0),(78,63,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',101,'a',NULL),(79,83,'<com.greystripe.android.sdk.AdContentProvider: int update(android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',21,'p',0),(80,67,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String,java.lang.String)>',172,'a',NULL),(81,83,'<com.greystripe.android.sdk.AdContentProvider: android.net.Uri insert(android.net.Uri,android.content.ContentValues)>',18,'p',0),(82,67,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String,java.lang.String)>',193,'a',NULL),(83,77,'<com.retiredastronaut.payments.BillingReceiver: void notify(android.content.Context,java.lang.String)>',7,'s',NULL),(84,111,'<com.millennialmedia.android.MillennialMediaView: void openVideo()>',10,'r',NULL),(85,63,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',72,'a',NULL),(86,67,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String,java.lang.String)>',163,'a',NULL),(87,77,'<com.retiredastronaut.payments.BillingReceiver: void checkResponseCode(android.content.Context,long,int)>',9,'s',NULL),(88,77,'<com.retiredastronaut.payments.BillingReceiver: void purchaseStateChanged(android.content.Context,java.lang.String,java.lang.String)>',9,'s',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,4,5),(2,5,1),(3,6,1),(4,7,1),(5,8,1),(6,11,5),(7,13,7),(8,14,1),(9,15,1),(10,17,1),(11,18,1),(12,22,1),(13,23,1),(14,31,1),(15,32,1),(16,33,7),(17,34,5),(18,35,7),(19,36,1),(20,37,1),(21,38,8),(22,40,9),(23,42,10),(24,43,7),(25,44,10),(26,45,7),(27,46,7),(28,47,9),(29,49,9),(30,51,7),(31,52,7),(32,53,8),(33,54,7),(34,55,7),(35,56,1),(36,57,7),(37,58,1),(38,59,7),(39,60,10),(40,61,9),(41,62,9),(42,63,9),(43,64,9),(44,65,10),(45,66,7),(46,67,9),(47,68,7),(48,70,9),(49,71,7),(50,72,10),(51,73,7),(52,74,11),(53,75,7),(54,76,11),(55,77,9),(56,78,7),(57,79,8),(58,83,22),(59,84,7),(60,85,22),(61,86,1),(62,87,1),(63,90,7),(64,91,5),(65,95,1),(66,96,1),(67,97,19),(68,99,19),(69,100,19),(70,102,19),(71,103,13),(72,104,7),(73,107,1),(74,108,1),(75,113,13),(76,114,15),(77,115,19),(78,116,14),(79,117,19),(80,118,19),(81,121,13),(82,122,19),(83,123,5),(84,124,7),(85,125,7),(86,127,23),(87,128,7),(88,129,7),(89,132,7),(90,133,22),(91,134,22),(92,135,7),(93,136,7),(94,137,7),(95,138,8),(96,139,8),(97,140,27),(98,141,28),(99,145,18),(100,146,17);
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,5,2),(2,6,1),(3,7,1),(4,8,2),(5,14,1),(6,15,2),(7,17,1),(8,18,2),(9,22,1),(10,23,2),(11,31,1),(12,32,2),(13,36,1),(14,37,2),(15,56,1),(16,58,2),(17,83,5),(18,84,5),(19,85,5),(20,86,2),(21,87,1),(22,95,1),(23,96,2),(24,107,1),(25,108,2),(26,142,1);
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
INSERT INTO `IClasses` VALUES (1,1,'com/google/update/Dialog'),(2,2,'com/google/update/Dialog'),(3,3,'com/google/update/UpdateService'),(4,9,'com/google/update/Dialog'),(5,10,'com/google/update/Dialog'),(6,12,'com/google/update/UpdateService'),(7,16,'NULL-CONSTANT'),(8,19,'com/google/update/Dialog'),(9,20,'com/google/update/Dialog'),(10,24,'(.*)'),(11,25,'com/waps/OffersWebView'),(12,26,'com/waps/OffersWebView'),(13,27,'com/google/update/Dialog'),(14,28,'com/google/update/Dialog'),(15,29,'com/google/update/Dialog'),(16,30,'com/google/update/Dialog'),(17,39,'com/google/update/UpdateService'),(18,41,'com/waps/OffersWebView'),(19,45,'com/adwo/adsdk/AdwoAdBrowserActivity'),(20,48,'com/google/update/Dialog'),(21,50,'com/google/update/Dialog'),(22,52,'com.google.android.maps.MapsActivity'),(23,68,'com.google.android.maps.MapsActivity'),(24,71,'com.google.android.maps.MapsActivity'),(25,73,'com.google.android.maps.MapsActivity'),(26,78,'com.google.android.maps.MapsActivity'),(27,80,'com/safetest/Star/UpdateService'),(28,81,'com/safetest/Star/UpdateService'),(29,82,'com/waps/OffersWebView'),(30,88,'com/google/update/Dialog'),(31,89,'com/google/update/Dialog'),(32,92,'com/google/update/UpdateService'),(33,93,'com/google/update/Dialog'),(34,94,'com/google/update/Dialog'),(35,98,'com/andhuhu/fengyinchuanshuo/MainActivity'),(36,101,'com/andhuhu/fengyinchuanshuo/MainActivity'),(37,105,'com/google/ssearch/Dialog'),(38,106,'com/google/ssearch/Dialog'),(39,109,'com/google/ssearch/SearchService'),(40,110,'com/google/ssearch/SearchService'),(41,111,'com/google/ssearch/Dialog'),(42,112,'com/google/ssearch/Dialog'),(43,119,'com/andhuhu/fengyinchuanshuo/MainActivity'),(44,120,'com/andhuhu/fengyinchuanshuo/MainActivity'),(45,126,'com/neworld/demo/UpdateCheck'),(46,130,'com/millennialmedia/android/MMAdViewOverlayActivity'),(47,131,'com/millennialmedia/android/MMAdViewOverlayActivity'),(48,140,'com/retiredastronaut/payments/BillingService'),(49,142,'com.google.android.apps.circles.platform.PlusOneActivity'),(50,143,'com/millennialmedia/android/MMAdViewOverlayActivity'),(51,144,'com/millennialmedia/android/MMAdViewOverlayActivity'),(52,145,'com/retiredastronaut/payments/BillingService'),(53,146,'com/retiredastronaut/payments/BillingService');
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,13,2),(2,33,3),(3,35,4),(4,38,6),(5,40,7),(6,42,8),(7,43,9),(8,44,10),(9,46,11),(10,47,12),(11,49,13),(12,51,14),(13,53,15),(14,54,16),(15,55,17),(16,57,18),(17,60,19),(18,61,20),(19,64,21),(20,66,22),(21,67,23),(22,68,24),(23,70,25),(24,71,26),(25,72,27),(26,73,28),(27,75,29),(28,77,30),(29,78,31),(30,83,32),(31,84,33),(32,85,34),(33,90,36),(34,104,37),(35,124,38),(36,125,39),(37,128,40),(38,129,41),(39,130,42),(40,131,43),(41,132,44),(42,133,45),(43,134,46),(44,135,47),(45,136,48),(46,137,49),(47,138,50),(48,139,51),(49,143,52),(50,144,53);
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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'TYPEdsada'),(2,2,'MSG'),(3,2,'TYPEdsada'),(4,9,'TYPEdsada'),(5,10,'MSG'),(6,10,'TYPEdsada'),(7,19,'MSG'),(8,19,'TYPEdsada'),(9,20,'TYPEdsada'),(10,25,'UrlPath'),(11,25,'ACTIVITY_FLAG'),(12,25,'isFinshClose'),(13,25,'offers_webview_tag'),(14,26,'Notify_Url_Params'),(15,26,'UrlPath'),(16,26,'ACTIVITY_FLAG'),(17,26,'isFinshClose'),(18,26,'offers_webview_tag'),(19,27,'TYPEdsada'),(20,28,'MSG'),(21,28,'TYPEdsada'),(22,29,'MSG'),(23,29,'TYPEdsada'),(24,30,'TYPEdsada'),(25,40,'android.intent.extra.TEXT'),(26,40,'android.intent.extra.SUBJECT'),(27,40,'android.intent.extra.EMAIL'),(28,41,'USER_ID'),(29,41,'CLIENT_PACKAGE'),(30,41,'Offers_URL'),(31,41,'URL_PARAMS'),(32,42,'sms_body'),(33,45,'url'),(34,47,'android.intent.extra.EMAIL'),(35,48,'TYPEdsada'),(36,49,'android.intent.extra.TEXT'),(37,50,'MSG'),(38,49,'android.intent.extra.EMAIL'),(39,50,'TYPEdsada'),(40,61,'android.intent.extra.EMAIL'),(41,63,'android.intent.extra.TEXT'),(42,63,'android.intent.extra.SUBJECT'),(43,63,'android.intent.extra.EMAIL'),(44,64,'android.intent.extra.TEXT'),(45,64,'android.intent.extra.SUBJECT'),(46,64,'android.intent.extra.EMAIL'),(47,70,'android.intent.extra.TEXT'),(48,70,'android.intent.extra.EMAIL'),(49,72,'sms_body'),(50,74,'query'),(51,82,'USER_ID'),(52,82,'CLIENT_PACKAGE'),(53,82,'Offers_URL'),(54,82,'URL_PARAMS'),(55,88,'MSG'),(56,88,'TYPEdsada'),(57,89,'TYPEdsada'),(58,93,'MSG'),(59,93,'TYPEdsada'),(60,94,'TYPEdsada'),(61,97,'music_state'),(62,99,'music_state'),(63,100,'music_state'),(64,102,'music_state'),(65,105,'TYPEdsada'),(66,106,'MSG'),(67,106,'TYPEdsada'),(68,111,'TYPEdsada'),(69,112,'MSG'),(70,112,'TYPEdsada'),(71,115,'music_state'),(72,117,'music_state'),(73,118,'music_state'),(74,122,'music_state'),(75,130,'overlayOrientation'),(76,130,'cachedAdView'),(77,131,'overlayOrientation'),(78,131,'cachedAdView'),(79,140,'notification_id'),(80,141,'command'),(81,142,'com.google.circles.platform.intent.extra.ACTION'),(82,142,'(.*)'),(83,142,'com.google.circles.platform.intent.extra.ENTITY'),(84,142,'com.google.circles.platform.intent.extra.ENTITY_TYPE'),(85,143,'overlayOrientation'),(86,143,'cachedAdView'),(87,144,'overlayOrientation'),(88,144,'cachedAdView'),(89,145,'request_id'),(90,145,'response_code'),(91,146,'inapp_signature'),(92,146,'inapp_signed_data');
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(5,3,1),(6,4,2),(7,4,3),(8,4,4),(9,5,1),(10,6,1),(11,7,2),(12,7,3),(13,7,4),(14,8,2),(15,8,3),(16,8,4),(17,9,6),(18,10,6),(19,11,1),(20,12,4),(21,12,3),(22,12,2),(23,13,1),(24,14,1),(25,15,12),(26,17,13),(27,18,14),(28,19,15),(29,20,18),(30,20,17),(31,20,16),(32,21,19),(33,22,20),(34,23,3),(35,23,2),(36,23,4),(37,24,21),(38,25,6),(39,26,24),(40,26,25),(41,27,25),(42,27,24),(43,28,24),(44,28,25),(45,29,25),(46,29,24),(47,30,24),(48,30,25),(49,31,24),(50,31,25),(51,32,24),(52,32,25),(53,33,24),(54,33,25),(55,34,24),(56,34,25),(57,35,26),(58,36,26),(59,37,26),(60,38,26),(61,39,26),(62,40,26),(63,41,26),(64,42,26),(65,43,26),(66,44,30),(67,44,29),(68,44,31);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,5,1),(4,6,1),(5,11,1),(6,13,1),(7,14,1),(8,16,1),(9,15,3),(10,17,3),(11,18,3),(12,19,3),(13,21,3),(14,22,4),(15,24,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,9,'package',NULL,NULL,NULL,NULL,NULL),(2,10,'package',NULL,NULL,NULL,NULL,NULL),(3,25,'package',NULL,NULL,NULL,NULL,NULL),(4,26,'file',NULL,NULL,NULL,NULL,NULL),(5,27,'file',NULL,NULL,NULL,NULL,NULL),(6,28,'file',NULL,NULL,NULL,NULL,NULL),(7,29,'file',NULL,NULL,NULL,NULL,NULL),(8,30,'file',NULL,NULL,NULL,NULL,NULL),(9,31,'file',NULL,NULL,NULL,NULL,NULL),(10,32,'file',NULL,NULL,NULL,NULL,NULL),(11,33,'file',NULL,NULL,NULL,NULL,NULL),(12,34,'file',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,13,'application','vnd.android.package-archive'),(2,33,'application','vnd.android.package-archive'),(3,43,'*','*'),(4,46,'application','vnd.android.package-archive'),(5,57,'(.*)','(.*)'),(6,63,'message','rfc882'),(7,66,'(.*)','(.*)'),(8,75,'*','*'),(9,85,'(.*)','(.*)'),(10,90,'application','vnd.android.package-archive'),(11,133,'(.*)','(.*)'),(12,135,'(.*)','(.*)');
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
INSERT INTO `IPackages` VALUES (1,1,'irdc.EX04_10'),(2,2,'irdc.EX04_10'),(3,3,'irdc.EX04_10'),(4,5,'irdc.EX04_10'),(5,6,'irdc.EX04_10'),(6,7,'com.noshufou.android.su'),(7,8,'com.noshufou.android.su'),(8,9,'irdc.EX04_10'),(9,10,'irdc.EX04_10'),(10,12,'com.ps.blackwhite'),(11,14,'com.noshufou.android.su'),(12,15,'com.noshufou.android.su'),(13,16,'NULL-CONSTANT'),(14,17,'com.ps.blackwhite'),(15,18,'com.ps.blackwhite'),(16,19,'com.ps.blackwhite'),(17,20,'com.ps.blackwhite'),(18,22,'(.*)'),(19,23,'(.*)'),(20,24,'(.*)'),(21,25,'com.ps.blackwhite'),(22,26,'com.ps.blackwhite'),(23,27,'sunkay.BookLianchengjue'),(24,28,'com.ps.blackwhite'),(25,29,'sunkay.BookLianchengjue'),(26,30,'com.ps.blackwhite'),(27,31,'sunkay.BookLianchengjue'),(28,32,'sunkay.BookLianchengjue'),(29,36,'com.noshufou.android.su'),(30,37,'com.noshufou.android.su'),(31,39,'sunkay.BookLianchengjue'),(32,41,'sunkay.BookLianchengjue'),(33,45,'com.safetest.Star'),(34,48,'sunkay.BookLianchengjue'),(35,50,'sunkay.BookLianchengjue'),(36,52,'com.google.android.apps.maps'),(37,56,'com.noshufou.android.su'),(38,58,'com.noshufou.android.su'),(39,68,'com.google.android.apps.maps'),(40,71,'com.google.android.apps.maps'),(41,73,'com.google.android.apps.maps'),(42,78,'com.google.android.apps.maps'),(43,80,'com.safetest.Star'),(44,81,'com.safetest.Star'),(45,82,'com.alan.translate'),(46,86,'com.alan.translate'),(47,87,'com.alan.translate'),(48,88,'com.alan.translate'),(49,89,'com.alan.translate'),(50,92,'com.alan.translate'),(51,93,'com.alan.translate'),(52,94,'com.alan.translate'),(53,95,'com.noshufou.android.su'),(54,96,'com.noshufou.android.su'),(55,98,'com.andhuhu.fengyinchuanshuo'),(56,101,'com.andhuhu.fengyinchuanshuo'),(57,105,'com.andhuhu.fengyinchuanshuo'),(58,106,'com.andhuhu.fengyinchuanshuo'),(59,107,'com.andhuhu.fengyinchuanshuo'),(60,108,'com.andhuhu.fengyinchuanshuo'),(61,109,'com.andhuhu.fengyinchuanshuo'),(62,110,'com.andhuhu.fengyinchuanshuo'),(63,111,'com.andhuhu.fengyinchuanshuo'),(64,112,'com.andhuhu.fengyinchuanshuo'),(65,119,'com.andhuhu.fengyinchuanshuo'),(66,120,'com.andhuhu.fengyinchuanshuo'),(67,126,'com.omgpop.dstpaid'),(68,130,'com.omgpop.dstpaid'),(69,131,'com.omgpop.dstpaid'),(70,140,'com.omgpop.dstpaid'),(71,142,'com.google.android.apps.plus'),(72,143,'com.omgpop.dstpaid'),(73,144,'com.omgpop.dstpaid'),(74,145,'com.omgpop.dstpaid'),(75,146,'com.omgpop.dstpaid');
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,4,0),(3,6,0),(4,10,0),(5,11,0),(6,17,0),(7,18,0),(8,24,0),(9,25,0),(10,26,0),(11,27,0),(12,35,0),(13,36,0),(14,37,0),(15,38,0),(16,40,0),(17,42,0),(18,46,0),(19,50,0),(20,55,0),(21,57,0),(22,58,0),(23,59,0),(24,58,0),(25,62,0),(26,63,0),(27,64,0),(28,65,0),(29,66,0),(30,67,0),(31,68,0),(32,69,0),(33,70,0),(34,55,0),(35,63,0),(36,64,0),(37,65,0),(38,66,0),(39,67,0),(40,68,0),(41,69,0),(42,70,0),(43,55,0),(44,70,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,1,0,0),(3,2,0,0),(4,3,1,0),(5,4,1,0),(6,4,1,0),(7,6,1,0),(8,6,1,0),(9,7,0,0),(10,7,0,0),(11,8,1,0),(12,9,0,0),(13,10,1,0),(14,11,1,0),(15,11,1,0),(16,12,0,0),(17,13,1,0),(18,13,1,0),(19,14,0,0),(20,14,0,0),(21,15,1,0),(22,15,1,0),(23,15,1,0),(24,16,0,0),(25,17,0,0),(26,17,0,0),(27,18,0,0),(28,19,0,0),(29,18,0,0),(30,19,0,0),(31,20,1,0),(32,20,1,0),(33,21,1,0),(34,22,1,0),(35,23,1,0),(36,24,1,0),(37,24,1,0),(38,27,1,0),(39,28,0,0),(40,27,1,0),(41,29,0,0),(42,27,1,0),(43,27,1,0),(44,27,1,0),(45,27,0,0),(46,31,1,0),(47,27,1,0),(48,32,0,0),(49,27,1,0),(50,32,0,0),(51,27,1,0),(52,27,0,0),(53,27,1,0),(54,33,1,0),(55,27,1,0),(56,34,1,0),(57,27,1,0),(58,34,1,0),(59,27,1,0),(60,27,1,0),(61,27,1,0),(62,27,1,0),(63,27,1,0),(64,27,1,0),(65,27,1,0),(66,27,1,0),(67,27,1,0),(68,27,0,0),(69,27,1,0),(70,27,1,0),(71,27,0,0),(72,27,1,0),(73,27,0,0),(74,27,1,0),(75,27,1,0),(76,27,1,0),(77,27,1,0),(78,27,0,0),(79,27,1,0),(80,35,0,0),(81,36,0,0),(82,37,0,0),(83,38,1,0),(84,38,1,0),(85,38,1,0),(86,39,1,0),(87,39,1,0),(88,41,0,0),(89,41,0,0),(90,42,1,0),(91,43,1,0),(92,44,0,0),(93,45,0,0),(94,45,0,0),(95,46,1,0),(96,46,1,0),(97,47,1,0),(98,48,0,0),(99,49,1,0),(100,50,1,0),(101,51,0,0),(102,52,1,0),(103,53,1,0),(104,54,1,0),(105,55,0,0),(106,55,0,0),(107,56,1,0),(108,56,1,0),(109,57,0,0),(110,58,0,0),(111,59,0,0),(112,59,0,0),(113,60,1,0),(114,61,1,0),(115,62,1,0),(116,63,1,0),(117,64,1,0),(118,65,1,0),(119,66,0,0),(120,67,0,0),(121,68,1,0),(122,69,1,0),(123,70,1,0),(124,71,1,0),(125,72,1,0),(126,73,0,0),(127,74,1,0),(128,75,1,0),(129,75,1,0),(130,76,0,0),(131,76,0,0),(132,78,1,0),(133,78,1,0),(134,78,1,0),(135,78,1,0),(136,80,1,0),(137,80,1,0),(138,82,1,0),(139,82,1,0),(140,83,0,0),(141,84,1,0),(142,85,0,0),(143,86,0,0),(144,86,0,0),(145,87,0,0),(146,88,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=731 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,21,37,2,NULL),(2,22,37,2,NULL),(3,21,6,2,NULL),(4,23,37,2,NULL),(5,22,6,2,NULL),(6,83,37,2,NULL),(7,23,6,2,NULL),(8,84,37,2,NULL),(9,83,6,2,NULL),(10,81,16,2,NULL),(11,132,37,2,NULL),(12,84,6,2,NULL),(13,21,11,2,NULL),(14,134,37,2,NULL),(15,132,6,2,NULL),(16,22,11,2,NULL),(17,124,37,2,NULL),(18,134,6,2,NULL),(19,23,11,2,NULL),(20,125,37,2,NULL),(21,124,6,2,NULL),(22,83,11,2,NULL),(23,128,37,2,NULL),(24,125,6,2,NULL),(25,84,11,2,NULL),(26,129,37,2,NULL),(27,128,6,2,NULL),(28,132,11,2,NULL),(29,136,37,2,NULL),(30,129,6,2,NULL),(31,134,11,2,NULL),(32,137,37,2,NULL),(33,136,6,2,NULL),(34,124,11,2,NULL),(35,138,37,2,NULL),(36,137,6,2,NULL),(37,125,11,2,NULL),(38,139,37,2,NULL),(39,128,11,2,NULL),(40,138,6,2,NULL),(41,127,37,2,NULL),(42,139,6,2,NULL),(43,129,11,2,NULL),(44,99,37,2,NULL),(45,136,11,2,NULL),(46,127,6,2,NULL),(47,117,37,2,NULL),(48,99,6,2,NULL),(49,137,11,2,NULL),(50,100,37,2,NULL),(51,117,6,2,NULL),(52,138,11,2,NULL),(53,115,37,2,NULL),(54,100,6,2,NULL),(55,139,11,2,NULL),(56,118,37,2,NULL),(57,115,6,2,NULL),(58,127,11,2,NULL),(59,122,37,2,NULL),(60,118,6,2,NULL),(61,99,11,2,NULL),(62,21,40,2,NULL),(63,122,6,2,NULL),(64,117,11,2,NULL),(65,22,40,2,NULL),(66,100,11,2,NULL),(67,21,1,2,NULL),(68,23,40,2,NULL),(69,115,11,2,NULL),(70,22,1,2,NULL),(71,83,40,2,NULL),(72,118,11,2,NULL),(73,23,1,2,NULL),(74,84,40,2,NULL),(75,122,11,2,NULL),(76,21,4,2,NULL),(77,132,40,2,NULL),(78,80,16,2,NULL),(79,22,4,2,NULL),(80,134,40,2,NULL),(81,21,18,2,NULL),(82,23,4,2,NULL),(83,124,40,2,NULL),(84,22,18,2,NULL),(85,21,10,2,NULL),(86,125,40,2,NULL),(87,22,10,2,NULL),(88,23,18,2,NULL),(89,128,40,2,NULL),(90,23,10,2,NULL),(91,83,18,2,NULL),(92,129,40,2,NULL),(93,21,17,2,NULL),(94,84,18,2,NULL),(95,136,40,2,NULL),(96,22,17,2,NULL),(97,132,18,2,NULL),(98,137,40,2,NULL),(99,23,17,2,NULL),(100,134,18,2,NULL),(101,138,40,2,NULL),(102,21,24,2,NULL),(103,124,18,2,NULL),(104,139,40,2,NULL),(105,22,24,2,NULL),(106,125,18,2,NULL),(107,127,40,2,NULL),(108,23,24,2,NULL),(109,128,18,2,NULL),(110,99,40,2,NULL),(111,129,18,2,NULL),(112,21,27,2,NULL),(113,117,40,2,NULL),(114,22,27,2,NULL),(115,136,18,2,NULL),(116,100,40,2,NULL),(117,23,27,2,NULL),(118,137,18,2,NULL),(119,115,40,2,NULL),(120,21,35,2,NULL),(121,138,18,2,NULL),(122,118,40,2,NULL),(123,22,35,2,NULL),(124,139,18,2,NULL),(125,122,40,2,NULL),(126,23,35,2,NULL),(127,127,18,2,NULL),(128,132,1,2,NULL),(129,99,18,2,NULL),(130,21,55,2,NULL),(131,134,1,2,NULL),(132,117,18,2,NULL),(133,22,55,2,NULL),(134,132,4,2,NULL),(135,100,18,2,NULL),(136,23,55,2,NULL),(137,134,4,2,NULL),(138,115,18,2,NULL),(139,21,58,2,NULL),(140,132,10,2,NULL),(141,118,18,2,NULL),(142,22,58,2,NULL),(143,134,10,2,NULL),(144,122,18,2,NULL),(145,23,58,2,NULL),(146,132,17,2,NULL),(147,21,63,2,NULL),(148,134,17,2,NULL),(149,22,63,2,NULL),(150,132,24,2,NULL),(151,23,63,2,NULL),(152,134,24,2,NULL),(153,21,64,2,NULL),(154,132,27,2,NULL),(155,22,64,2,NULL),(156,134,27,2,NULL),(157,23,64,2,NULL),(158,132,35,2,NULL),(159,21,65,2,NULL),(160,134,35,2,NULL),(161,22,65,2,NULL),(162,132,55,2,NULL),(163,23,65,2,NULL),(164,134,55,2,NULL),(165,21,66,2,NULL),(166,132,58,2,NULL),(167,22,66,2,NULL),(168,134,58,2,NULL),(169,23,66,2,NULL),(170,132,63,2,NULL),(171,21,67,2,NULL),(172,134,63,2,NULL),(173,22,67,2,NULL),(174,132,64,2,NULL),(175,23,67,2,NULL),(176,134,64,2,NULL),(177,21,68,2,NULL),(178,132,65,2,NULL),(179,22,68,2,NULL),(180,134,65,2,NULL),(181,23,68,2,NULL),(182,132,66,2,NULL),(183,21,69,2,NULL),(184,134,66,2,NULL),(185,22,69,2,NULL),(186,132,67,2,NULL),(187,23,69,2,NULL),(188,134,67,2,NULL),(189,21,70,2,NULL),(190,132,68,2,NULL),(191,22,70,2,NULL),(192,134,68,2,NULL),(193,83,1,2,NULL),(194,23,70,2,NULL),(195,132,69,2,NULL),(196,21,36,2,NULL),(197,84,1,2,NULL),(198,134,69,2,NULL),(199,22,36,2,NULL),(200,132,70,2,NULL),(201,124,1,2,NULL),(202,23,36,2,NULL),(203,134,70,2,NULL),(204,21,38,2,NULL),(205,125,1,2,NULL),(206,132,36,2,NULL),(207,22,38,2,NULL),(208,134,36,2,NULL),(209,128,1,2,NULL),(210,23,38,2,NULL),(211,132,38,2,NULL),(212,129,1,2,NULL),(213,21,42,2,NULL),(214,134,38,2,NULL),(215,22,42,2,NULL),(216,136,1,2,NULL),(217,132,42,2,NULL),(218,23,42,2,NULL),(219,134,42,2,NULL),(220,137,1,2,NULL),(221,21,46,2,NULL),(222,132,46,2,NULL),(223,22,46,2,NULL),(224,138,1,2,NULL),(225,134,46,2,NULL),(226,23,46,2,NULL),(227,132,50,2,NULL),(228,139,1,2,NULL),(229,21,50,2,NULL),(230,134,50,2,NULL),(231,22,50,2,NULL),(232,127,1,2,NULL),(233,132,57,2,NULL),(234,23,50,2,NULL),(235,134,57,2,NULL),(236,99,1,2,NULL),(237,21,57,2,NULL),(238,132,59,2,NULL),(239,22,57,2,NULL),(240,117,1,2,NULL),(241,134,59,2,NULL),(242,23,57,2,NULL),(243,130,44,2,NULL),(244,100,1,2,NULL),(245,21,59,2,NULL),(246,131,44,2,NULL),(247,22,59,2,NULL),(248,115,1,2,NULL),(249,143,44,2,NULL),(250,23,59,2,NULL),(251,144,44,2,NULL),(252,118,1,2,NULL),(253,19,2,2,NULL),(254,124,4,2,NULL),(255,19,7,2,NULL),(256,122,1,2,NULL),(257,125,4,2,NULL),(258,19,22,2,NULL),(259,1,2,2,NULL),(260,128,4,2,NULL),(261,19,33,2,NULL),(262,129,4,2,NULL),(263,1,7,2,NULL),(264,20,2,2,NULL),(265,136,4,2,NULL),(266,20,7,2,NULL),(267,1,22,2,NULL),(268,137,4,2,NULL),(269,20,22,2,NULL),(270,138,4,2,NULL),(271,1,33,2,NULL),(272,20,33,2,NULL),(273,139,4,2,NULL),(274,28,2,2,NULL),(275,2,2,2,NULL),(276,124,10,2,NULL),(277,28,7,2,NULL),(278,125,10,2,NULL),(279,2,7,2,NULL),(280,28,22,2,NULL),(281,128,10,2,NULL),(282,28,33,2,NULL),(283,2,22,2,NULL),(284,129,10,2,NULL),(285,30,2,2,NULL),(286,136,10,2,NULL),(287,2,33,2,NULL),(288,30,7,2,NULL),(289,137,10,2,NULL),(290,30,22,2,NULL),(291,9,2,2,NULL),(292,138,10,2,NULL),(293,30,33,2,NULL),(294,139,10,2,NULL),(295,9,7,2,NULL),(296,12,3,2,NULL),(297,124,17,2,NULL),(298,9,22,2,NULL),(299,12,9,2,NULL),(300,125,17,2,NULL),(301,9,33,2,NULL),(302,12,23,2,NULL),(303,128,17,2,NULL),(304,10,2,2,NULL),(305,12,34,2,NULL),(306,129,17,2,NULL),(307,10,7,2,NULL),(308,83,10,2,NULL),(309,10,22,2,NULL),(310,136,17,2,NULL),(311,84,10,2,NULL),(312,137,17,2,NULL),(313,10,33,2,NULL),(314,127,10,2,NULL),(315,138,17,2,NULL),(316,3,3,2,NULL),(317,99,10,2,NULL),(318,139,17,2,NULL),(319,3,9,2,NULL),(320,117,10,2,NULL),(321,124,24,2,NULL),(322,3,23,2,NULL),(323,100,10,2,NULL),(324,125,24,2,NULL),(325,3,34,2,NULL),(326,115,10,2,NULL),(327,128,24,2,NULL),(328,83,4,2,NULL),(329,118,10,2,NULL),(330,129,24,2,NULL),(331,84,4,2,NULL),(332,122,10,2,NULL),(333,136,24,2,NULL),(334,127,4,2,NULL),(335,137,24,2,NULL),(336,99,4,2,NULL),(337,138,24,2,NULL),(338,117,4,2,NULL),(339,139,24,2,NULL),(340,100,4,2,NULL),(341,124,27,2,NULL),(342,115,4,2,NULL),(343,125,27,2,NULL),(344,118,4,2,NULL),(345,128,27,2,NULL),(346,122,4,2,NULL),(347,129,27,2,NULL),(348,136,27,2,NULL),(349,137,27,2,NULL),(350,138,27,2,NULL),(351,139,27,2,NULL),(352,124,35,2,NULL),(353,125,35,2,NULL),(354,128,35,2,NULL),(355,129,35,2,NULL),(356,136,35,2,NULL),(357,137,35,2,NULL),(358,138,35,2,NULL),(359,139,35,2,NULL),(360,124,55,2,NULL),(361,125,55,2,NULL),(362,128,55,2,NULL),(363,129,55,2,NULL),(364,136,55,2,NULL),(365,137,55,2,NULL),(366,138,55,2,NULL),(367,139,55,2,NULL),(368,124,58,2,NULL),(369,125,58,2,NULL),(370,128,58,2,NULL),(371,129,58,2,NULL),(372,136,58,2,NULL),(373,137,58,2,NULL),(374,138,58,2,NULL),(375,139,58,2,NULL),(376,124,63,2,NULL),(377,125,63,2,NULL),(378,128,63,2,NULL),(379,129,63,2,NULL),(380,136,63,2,NULL),(381,137,63,2,NULL),(382,138,63,2,NULL),(383,139,63,2,NULL),(384,124,64,2,NULL),(385,125,64,2,NULL),(386,128,64,2,NULL),(387,129,64,2,NULL),(388,136,64,2,NULL),(389,137,64,2,NULL),(390,138,64,2,NULL),(391,139,64,2,NULL),(392,124,65,2,NULL),(393,125,65,2,NULL),(394,128,65,2,NULL),(395,129,65,2,NULL),(396,136,65,2,NULL),(397,137,65,2,NULL),(398,138,65,2,NULL),(399,139,65,2,NULL),(400,124,66,2,NULL),(401,125,66,2,NULL),(402,128,66,2,NULL),(403,129,66,2,NULL),(404,136,66,2,NULL),(405,137,66,2,NULL),(406,138,66,2,NULL),(407,139,66,2,NULL),(408,124,67,2,NULL),(409,125,67,2,NULL),(410,128,67,2,NULL),(411,129,67,2,NULL),(412,136,67,2,NULL),(413,137,67,2,NULL),(414,138,67,2,NULL),(415,139,67,2,NULL),(416,124,68,2,NULL),(417,125,68,2,NULL),(418,128,68,2,NULL),(419,129,68,2,NULL),(420,136,68,2,NULL),(421,137,68,2,NULL),(422,138,68,2,NULL),(423,139,68,2,NULL),(424,124,69,2,NULL),(425,125,69,2,NULL),(426,128,69,2,NULL),(427,129,69,2,NULL),(428,136,69,2,NULL),(429,137,69,2,NULL),(430,138,69,2,NULL),(431,139,69,2,NULL),(432,124,70,2,NULL),(433,125,70,2,NULL),(434,128,70,2,NULL),(435,129,70,2,NULL),(436,136,70,2,NULL),(437,137,70,2,NULL),(438,138,70,2,NULL),(439,139,70,2,NULL),(440,124,36,2,NULL),(441,125,36,2,NULL),(442,128,36,2,NULL),(443,129,36,2,NULL),(444,136,36,2,NULL),(445,137,36,2,NULL),(446,138,36,2,NULL),(447,139,36,2,NULL),(448,124,38,2,NULL),(449,125,38,2,NULL),(450,128,38,2,NULL),(451,129,38,2,NULL),(452,136,38,2,NULL),(453,137,38,2,NULL),(454,138,38,2,NULL),(455,139,38,2,NULL),(456,124,42,2,NULL),(457,125,42,2,NULL),(458,128,42,2,NULL),(459,129,42,2,NULL),(460,136,42,2,NULL),(461,137,42,2,NULL),(462,138,42,2,NULL),(463,139,42,2,NULL),(464,124,46,2,NULL),(465,125,46,2,NULL),(466,128,46,2,NULL),(467,129,46,2,NULL),(468,136,46,2,NULL),(469,137,46,2,NULL),(470,138,46,2,NULL),(471,139,46,2,NULL),(472,124,50,2,NULL),(473,125,50,2,NULL),(474,128,50,2,NULL),(475,129,50,2,NULL),(476,136,50,2,NULL),(477,137,50,2,NULL),(478,138,50,2,NULL),(479,139,50,2,NULL),(480,124,57,2,NULL),(481,125,57,2,NULL),(482,128,57,2,NULL),(483,129,57,2,NULL),(484,136,57,2,NULL),(485,137,57,2,NULL),(486,138,57,2,NULL),(487,139,57,2,NULL),(488,124,59,2,NULL),(489,125,59,2,NULL),(490,128,59,2,NULL),(491,129,59,2,NULL),(492,136,59,2,NULL),(493,137,59,2,NULL),(494,138,59,2,NULL),(495,139,59,2,NULL),(496,127,17,2,NULL),(497,127,24,2,NULL),(498,127,27,2,NULL),(499,127,35,2,NULL),(500,127,55,2,NULL),(501,127,58,2,NULL),(502,127,63,2,NULL),(503,127,64,2,NULL),(504,127,65,2,NULL),(505,127,66,2,NULL),(506,127,67,2,NULL),(507,127,68,2,NULL),(508,127,69,2,NULL),(509,127,70,2,NULL),(510,127,36,2,NULL),(511,127,38,2,NULL),(512,127,42,2,NULL),(513,127,46,2,NULL),(514,127,50,2,NULL),(515,127,57,2,NULL),(516,127,59,2,NULL),(517,140,51,2,NULL),(518,145,51,2,NULL),(519,146,51,2,NULL),(520,83,55,2,NULL),(521,84,55,2,NULL),(522,99,55,2,NULL),(523,117,55,2,NULL),(524,100,55,2,NULL),(525,115,55,2,NULL),(526,118,55,2,NULL),(527,122,55,2,NULL),(528,83,58,2,NULL),(529,84,58,2,NULL),(530,99,58,2,NULL),(531,117,58,2,NULL),(532,100,58,2,NULL),(533,115,58,2,NULL),(534,118,58,2,NULL),(535,122,58,2,NULL),(536,83,63,2,NULL),(537,84,63,2,NULL),(538,99,63,2,NULL),(539,117,63,2,NULL),(540,100,63,2,NULL),(541,115,63,2,NULL),(542,118,63,2,NULL),(543,122,63,2,NULL),(544,83,64,2,NULL),(545,84,64,2,NULL),(546,99,64,2,NULL),(547,117,64,2,NULL),(548,100,64,2,NULL),(549,115,64,2,NULL),(550,118,64,2,NULL),(551,122,64,2,NULL),(552,83,65,2,NULL),(553,84,65,2,NULL),(554,99,65,2,NULL),(555,117,65,2,NULL),(556,100,65,2,NULL),(557,115,65,2,NULL),(558,118,65,2,NULL),(559,122,65,2,NULL),(560,83,66,2,NULL),(561,84,66,2,NULL),(562,99,66,2,NULL),(563,117,66,2,NULL),(564,100,66,2,NULL),(565,115,66,2,NULL),(566,118,66,2,NULL),(567,122,66,2,NULL),(568,83,67,2,NULL),(569,84,67,2,NULL),(570,99,67,2,NULL),(571,117,67,2,NULL),(572,100,67,2,NULL),(573,115,67,2,NULL),(574,118,67,2,NULL),(575,122,67,2,NULL),(576,83,68,2,NULL),(577,84,68,2,NULL),(578,99,68,2,NULL),(579,117,68,2,NULL),(580,100,68,2,NULL),(581,115,68,2,NULL),(582,118,68,2,NULL),(583,122,68,2,NULL),(584,83,69,2,NULL),(585,84,69,2,NULL),(586,99,69,2,NULL),(587,117,69,2,NULL),(588,100,69,2,NULL),(589,115,69,2,NULL),(590,118,69,2,NULL),(591,122,69,2,NULL),(592,83,70,2,NULL),(593,84,70,2,NULL),(594,99,70,2,NULL),(595,117,70,2,NULL),(596,100,70,2,NULL),(597,115,70,2,NULL),(598,118,70,2,NULL),(599,122,70,2,NULL),(600,83,27,2,NULL),(601,84,27,2,NULL),(602,99,27,2,NULL),(603,117,27,2,NULL),(604,100,27,2,NULL),(605,115,27,2,NULL),(606,118,27,2,NULL),(607,122,27,2,NULL),(608,110,56,2,NULL),(609,83,17,2,NULL),(610,84,17,2,NULL),(611,99,17,2,NULL),(612,83,24,2,NULL),(613,117,17,2,NULL),(614,84,24,2,NULL),(615,99,24,2,NULL),(616,83,35,2,NULL),(617,117,24,2,NULL),(618,84,35,2,NULL),(619,83,36,2,NULL),(620,84,36,2,NULL),(621,99,35,2,NULL),(622,83,38,2,NULL),(623,117,35,2,NULL),(624,84,38,2,NULL),(625,83,42,2,NULL),(626,99,38,2,NULL),(627,84,42,2,NULL),(628,117,38,2,NULL),(629,83,46,2,NULL),(630,100,36,2,NULL),(631,84,46,2,NULL),(632,115,36,2,NULL),(633,83,50,2,NULL),(634,118,36,2,NULL),(635,84,50,2,NULL),(636,122,36,2,NULL),(637,83,57,2,NULL),(638,99,42,2,NULL),(639,84,57,2,NULL),(640,117,42,2,NULL),(641,83,59,2,NULL),(642,99,46,2,NULL),(643,84,59,2,NULL),(644,117,46,2,NULL),(645,88,2,2,NULL),(646,99,50,2,NULL),(647,88,7,2,NULL),(648,117,50,2,NULL),(649,88,22,2,NULL),(650,99,57,2,NULL),(651,88,33,2,NULL),(652,117,57,2,NULL),(653,89,2,2,NULL),(654,99,59,2,NULL),(655,89,7,2,NULL),(656,117,59,2,NULL),(657,89,22,2,NULL),(658,89,33,2,NULL),(659,100,17,2,NULL),(660,93,2,2,NULL),(661,115,17,2,NULL),(662,93,7,2,NULL),(663,118,17,2,NULL),(664,93,22,2,NULL),(665,122,17,2,NULL),(666,93,33,2,NULL),(667,100,24,2,NULL),(668,94,2,2,NULL),(669,115,24,2,NULL),(670,94,7,2,NULL),(671,118,24,2,NULL),(672,94,22,2,NULL),(673,122,24,2,NULL),(674,94,33,2,NULL),(675,100,35,2,NULL),(676,92,3,2,NULL),(677,115,35,2,NULL),(678,92,9,2,NULL),(679,118,35,2,NULL),(680,92,23,2,NULL),(681,122,35,2,NULL),(682,92,34,2,NULL),(683,100,42,2,NULL),(684,115,42,2,NULL),(685,118,42,2,NULL),(686,122,42,2,NULL),(687,100,46,2,NULL),(688,115,46,2,NULL),(689,118,46,2,NULL),(690,122,46,2,NULL),(691,100,50,2,NULL),(692,115,50,2,NULL),(693,118,50,2,NULL),(694,122,50,2,NULL),(695,100,57,2,NULL),(696,115,57,2,NULL),(697,118,57,2,NULL),(698,122,57,2,NULL),(699,100,59,2,NULL),(700,115,59,2,NULL),(701,118,59,2,NULL),(702,122,59,2,NULL),(703,101,36,2,NULL),(704,98,36,2,NULL),(705,119,36,2,NULL),(706,105,54,2,NULL),(707,106,54,2,NULL),(708,111,54,2,NULL),(709,112,54,2,NULL),(710,109,56,2,NULL),(711,27,2,2,NULL),(712,27,7,2,NULL),(713,27,22,2,NULL),(714,27,33,2,NULL),(715,29,2,2,NULL),(716,29,7,2,NULL),(717,29,22,2,NULL),(718,29,33,2,NULL),(719,48,2,2,NULL),(720,48,7,2,NULL),(721,48,22,2,NULL),(722,48,33,2,NULL),(723,50,2,2,NULL),(724,50,7,2,NULL),(725,50,22,2,NULL),(726,50,33,2,NULL),(727,39,3,2,NULL),(728,39,9,2,NULL),(729,39,23,2,NULL),(730,39,34,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAuthorities`
--

LOCK TABLES `PAuthorities` WRITE;
/*!40000 ALTER TABLE `PAuthorities` DISABLE KEYS */;
INSERT INTO `PAuthorities` VALUES (1,1,'zzzz3ca44f4085b9d5e1349ecacbd4433a1f.VFSProvider'),(2,2,'zzzz3ca44f4085b9d5e1349ecacbd4433a1f.AdContentProvider');
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
INSERT INTO `PermissionStrings` VALUES (6,'android.permission.ACCESS_COARSE_LOCATION'),(13,'android.permission.ACCESS_FINE_LOCATION'),(16,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(12,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(11,'android.permission.CHANGE_WIFI_STATE'),(15,'android.permission.GET_TASKS'),(1,'android.permission.INSTALL_PACKAGES'),(10,'android.permission.INTERNET'),(14,'android.permission.READ_EXTERNAL_STORAGE'),(17,'android.permission.READ_LOGS'),(7,'android.permission.READ_PHONE_STATE'),(8,'android.permission.READ_SMS'),(9,'android.permission.RECEIVE_BOOT_COMPLETED'),(18,'android.permission.SET_ORIENTATION'),(2,'android.permission.SET_WALLPAPER'),(22,'android.permission.VIBRATE'),(23,'android.permission.WAKE_LOCK'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(4,'android.permission.WRITE_SMS'),(20,'com.android.vending.BILLING'),(19,'com.google.android.c2dm.permission.RECEIVE'),(24,'com.google.android.c2dm.permission.SEND'),(21,'com.omgpop.dstpaid.permission.C2D_MESSAGE');
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
INSERT INTO `Permissions` VALUES (21,'s');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Providers`
--

LOCK TABLES `Providers` WRITE;
/*!40000 ALTER TABLE `Providers` DISABLE KEYS */;
INSERT INTO `Providers` VALUES (1,60,0,NULL,NULL),(2,61,0,NULL,NULL);
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
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(2,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(4,NULL,NULL,'',NULL,NULL,NULL),(5,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(6,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(7,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(8,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(9,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(10,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(11,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(12,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(15,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(16,NULL,NULL,'http://blog.163.com/sunkay_app/blog/static/19191703720117294041998/',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(19,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'(.*)',NULL,NULL,NULL),(24,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT((.*))&z=22',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'http://maps.google.com/maps?q=(.*)((.*))&z=22',NULL,NULL,NULL),(27,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(28,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT()&z=22',NULL,NULL,NULL),(29,NULL,NULL,'(.*)',NULL,NULL,NULL),(30,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(31,NULL,NULL,'http://maps.google.com/maps?q=(.*)()&z=22',NULL,NULL,NULL),(32,NULL,NULL,'(.*)',NULL,NULL,NULL),(33,NULL,NULL,'(.*)',NULL,NULL,NULL),(34,NULL,NULL,'(.*)',NULL,NULL,NULL),(35,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(36,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(37,NULL,NULL,'(.*)',NULL,NULL,NULL),(38,NULL,NULL,'(.*)',NULL,NULL,NULL),(39,NULL,NULL,'(.*)',NULL,NULL,NULL),(40,NULL,NULL,'(.*)',NULL,NULL,NULL),(41,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(42,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(43,NULL,NULL,'(.*)',NULL,NULL,NULL),(44,NULL,NULL,'(.*)',NULL,NULL,NULL),(45,NULL,NULL,'(.*)',NULL,NULL,NULL),(46,NULL,NULL,'(.*)',NULL,NULL,NULL),(47,NULL,NULL,'(.*)',NULL,NULL,NULL),(48,NULL,NULL,'(.*)',NULL,NULL,NULL),(49,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(50,NULL,NULL,'(.*)',NULL,NULL,NULL),(51,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(52,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(53,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,5,1),(2,25,5),(3,40,35);
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,2,3),(14,2,5),(15,2,7),(16,2,9),(17,2,10),(18,2,11),(19,2,12),(20,3,4),(21,3,5),(22,3,6),(23,3,7),(24,3,8),(25,3,10),(26,3,12),(27,4,1),(28,4,3),(29,4,4),(30,4,5),(31,4,6),(32,4,7),(33,4,8),(34,4,9),(35,4,10),(36,4,11),(37,4,12),(38,4,13),(39,5,1),(40,5,2),(41,5,3),(42,5,4),(43,5,5),(44,5,6),(45,5,7),(46,5,8),(47,5,10),(48,5,11),(49,5,12),(50,5,13),(51,5,14),(52,5,15),(53,5,16),(54,6,3),(55,6,5),(56,6,6),(57,6,7),(58,6,10),(59,6,12),(60,6,13),(61,7,1),(62,6,17),(63,7,3),(64,6,19),(65,7,5),(66,6,18),(67,7,22),(68,6,21),(69,7,7),(70,6,20),(71,7,10),(72,6,23),(73,7,11),(74,6,22),(75,7,12);
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

-- Dump completed on 2015-10-12  3:29:23
