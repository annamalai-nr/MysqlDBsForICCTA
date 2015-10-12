-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_266
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (42,'(.*).SEND_SMS'),(13,'INTENT_DONE'),(16,'SENDED'),(31,'android.intent.action.BATTERY_CHANGED'),(21,'android.intent.action.BATTERY_CHANGED_ACTION'),(34,'android.intent.action.BATTERY_LOW'),(30,'android.intent.action.BATTERY_OKAY'),(4,'android.intent.action.BOOT_COMPLETED'),(5,'android.intent.action.DATA_SMS_RECEIVED'),(41,'android.intent.action.DELETE'),(39,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(28,'android.intent.action.PACKAGE_ADDED'),(3,'android.intent.action.PHONE_STATE'),(32,'android.intent.action.SCREEN_OFF'),(33,'android.intent.action.SCREEN_ON'),(37,'android.intent.action.SEND'),(20,'android.intent.action.SIG_STR'),(9,'android.intent.action.VIEW'),(10,'android.provider.Telephony.SMS_RECEIVED'),(36,'android.settings.APPLICATION_DETAILS_SETTINGS'),(40,'android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(38,'android.settings.APPLICATION_SETTINGS'),(35,'android.settings.LOCATION_SOURCE_SETTINGS'),(29,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(2,'com.convertoman.proin.FServices'),(18,'com.extend.battery.CHECK'),(23,'com.extend.battery.DELIVERED_SMS'),(24,'com.extend.battery.SEND_SMS'),(22,'com.extend.battery.SENT_SMS'),(19,'com.extend.battery.UPDATE'),(14,'com.extend.battery.intent.http.SHOW'),(27,'com.extend.battery.notification.action.ALARM'),(25,'com.extend.battery.notification.action.CANCEL'),(26,'com.extend.battery.notification.action.CLICKED'),(7,'com.google.android.c2dm.intent.RECEIVE'),(17,'com.google.android.c2dm.intent.REGISTER'),(8,'com.google.android.c2dm.intent.REGISTRATION'),(11,'com.itframework.installer.updater.CHECK'),(12,'com.itframework.installer.updater.UPDATE'),(6,'com.software.CHECKER'),(15,'com.zanalytics.sms.MESSAGE_RECEIVED');
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
INSERT INTO `Applications` VALUES (1,'com.convertoman.proin',1),(2,'com.soft.android.appinstaller',1),(3,'com.software.application',1),(4,'com.extend.battery',91),(5,'com.extend.battery',103),(6,'com.gp.tiltmazes',13),(7,'com.lxx.wchw.z5root.aaa',5);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (5,'android.intent.category.BROWSABLE'),(4,'android.intent.category.DEFAULT'),(2,'android.intent.category.HOME'),(6,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(3,'com.software.application');
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
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.convertoman.proin.ProinActivity'),(2,1,'com.convertoman.proin.FServices'),(3,1,'com.uniplugin.sender.AReceiver'),(4,2,'com.soft.android.appinstaller.FirstActivity'),(5,2,'com.soft.android.appinstaller.RulesActivity'),(6,2,'com.soft.android.appinstaller.FinishActivity'),(7,2,'com.soft.android.appinstaller.QuestionActivity'),(8,2,'com.soft.android.appinstaller.MemberActivity'),(9,2,'com.soft.android.appinstaller.services.SMSSenderService'),(10,2,'com.soft.android.appinstaller.sms.BinarySMSReceiver'),(11,3,'com.software.application.Main'),(12,3,'com.software.application.OffertActivity'),(13,3,'com.software.application.ShowLink'),(14,3,'com.software.application.C2DMReceiver'),(15,3,'com.software.application.Notificator'),(16,3,'com.software.application.Checker'),(17,3,'com.software.application.SmsReceiver'),(18,3,'com.google.android.c2dm.C2DMBroadcastReceiver'),(19,1,'com.convertoman.proin.ProinActivity$5'),(20,4,'com.extend.battery.Splash'),(21,4,'com.extend.battery.TabHandler'),(22,2,'com.soft.android.appinstaller.FlowController'),(23,4,'com.extend.battery.TaskKillerActivity'),(24,4,'com.extend.battery.UninstallerActivity'),(25,4,'com.extend.battery.SecurityAuditActivity'),(26,4,'com.extend.battery.InstallerActivity'),(27,4,'com.extend.battery.FeaturesActivity'),(28,4,'com.extend.battery.BoosterActivity'),(29,4,'com.extend.battery.BatteryActivity'),(30,4,'com.extend.battery.RatingActivity'),(31,1,'com.uniplugin.sender.Sender$1'),(32,4,'com.itframework.installer.util.InstallNonMarketFromUrlActivity'),(33,2,'com.soft.android.appinstaller.MemberActivity$1'),(34,4,'com.itframework.installer.util.NonMarketDialogActivity'),(35,4,'com.extend.battery.BatteryService'),(36,4,'com.itframework.installer.util.InstallWorker'),(37,5,'com.extend.battery.Splash'),(38,4,'com.zanalytics.sms.SmsReceiverService'),(39,4,'com.itframework.installer.updater.UpdateReceiver'),(40,5,'com.extend.battery.TabHandler'),(41,5,'com.extend.battery.TaskKillerActivity'),(42,5,'com.extend.battery.UninstallerActivity'),(43,5,'com.extend.battery.SecurityAuditActivity'),(44,4,'com.extend.battery.NotificationReceiver'),(45,3,'com.software.application.Main$3'),(46,5,'com.extend.battery.InstallerActivity'),(47,5,'com.extend.battery.FeaturesActivity'),(48,4,'com.extend.battery.BootReceiver'),(49,5,'com.extend.battery.BoosterActivity'),(50,3,'com.google.android.c2dm.C2DMBaseReceiver'),(51,5,'com.extend.battery.BatteryActivity'),(52,4,'com.zanalytics.sms.SmsReceiver'),(53,5,'com.extend.battery.RatingActivity'),(54,5,'com.extend.battery.UninstallingDialog'),(55,3,'com.software.application.Actor'),(56,5,'com.itframework.installer.util.InstallNonMarketFromUrlActivity'),(57,3,'com.software.application.Actor$1'),(58,5,'com.itframework.installer.util.NonMarketDialogActivity'),(59,5,'com.extend.battery.BatteryService'),(60,5,'com.itframework.installer.util.InstallWorker'),(61,5,'com.zanalytics.sms.SmsReceiverService'),(62,6,'com.gp.tiltmazes.TiltMazesActivity'),(63,5,'com.zanalytics.sms.SmsSendService'),(64,3,'com.google.android.c2dm.C2DMessaging'),(65,5,'com.itframework.base.util.UploadAnalyticsService'),(66,5,'com.itframework.notification.NotificationService'),(67,6,'com.gp.tiltmazes.SelectMazeActivity'),(68,5,'com.itframework.installer.updater.UpdateReceiver'),(69,6,'com.google.update.Dialog'),(70,6,'cn.domob.android.ads.DomobActivity'),(71,3,'com.software.application.ShowLink$1'),(72,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(73,6,'com.waps.OffersWebView'),(74,5,'com.extend.battery.NotificationReceiver'),(75,6,'com.google.update.UpdateService'),(76,6,'com.google.update.Receiver'),(77,5,'com.extend.battery.BootReceiver'),(78,5,'com.zanalytics.sms.SmsReceiver'),(79,5,'com.zanalytics.sms.SmsSentReceiver'),(80,5,'com.zanalytics.sms.SmsDeliveredReceiver'),(81,5,'com.zanalytics.sms.SmsSendReceiver'),(82,5,'com.itframework.notification.NotificationReceiver'),(83,6,'cn.domob.android.ads.DomobAdEngine$2'),(84,6,'com.google.update.Dialog$1'),(85,6,'cn.domob.android.ads.i$6'),(86,6,'com.waps.ac'),(87,6,'com.waps.aa'),(88,6,'cn.domob.android.ads.DomobAdManager'),(89,6,'com.waps.q'),(90,7,'com.lxx.wchw.z5root.aaa.z5root'),(91,6,'cn.domob.android.ads.DomobActionReceiver'),(92,7,'com.lxx.wchw.z5root.aaa.z5root_a'),(93,7,'com.lxx.wchw.z5root.aaa.cpuInfo'),(94,7,'com.lxx.wchw.z5root.aaa.Phase1'),(95,7,'com.lxx.wchw.z5root.aaa.Phase2'),(96,7,'com.lxx.wchw.z5root.aaa.PhaseRemove'),(97,6,'com.waps.z'),(98,7,'net.miidi.credit.MiidiWebViewActivity'),(99,7,'com.lxx.wchw.z5root.aaa.AlarmReceiver'),(100,7,'net.miidi.credit.CPAFeeReceiver'),(101,6,'com.google.update.UpdateService$AA'),(102,6,'com.google.update.Dialog$2'),(103,6,'com.waps.o'),(104,6,'cn.domob.android.ads.i'),(105,4,'com.zanalytics.sms.j'),(106,4,'com.extend.battery.d'),(107,4,'com.extend.battery.c'),(108,4,'com.extend.battery.a'),(109,4,'com.zanalytics.sms.c'),(110,4,'com.itframework.installer.a.b'),(111,4,'com.extend.battery.features.s'),(112,4,'com.extend.battery.ba'),(113,4,'com.extend.battery.k'),(114,7,'com.lxx.wchw.z5root.aaa.z5root_a$1'),(115,7,'net.miidi.credit.utils.a'),(116,7,'com.lxx.wchw.z5root.aaa.Phase1$4'),(117,7,'net.miidi.credit.utils.g'),(118,7,'com.lxx.wchw.z5root.aaa.z5root_a$3'),(119,4,'com.extend.battery.bb'),(120,7,'com.lxx.wchw.z5root.aaa.z5root$2'),(121,4,'com.zanalytics.sms.a'),(122,7,'com.lxx.wchw.z5root.aaa.z5root$3'),(123,7,'com.lxx.wchw.z5root.aaa.z5root_a$2'),(124,5,'com.extend.battery.ba'),(125,5,'com.zanalytics.sms.d'),(126,5,'com.itframework.base.service.WakefulIntentService'),(127,5,'com.extend.battery.d'),(128,5,'com.extend.battery.c'),(129,5,'com.extend.battery.a'),(130,5,'com.itframework.base.service.AlarmReceiver'),(131,5,'com.extend.battery.features.s'),(132,5,'com.extend.battery.k'),(133,5,'com.itframework.installer.a.b'),(134,5,'com.itframework.installer.b.a'),(135,5,'com.extend.battery.bb');
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
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,12,'pdus'),(2,15,'URL'),(3,66,'appId'),(4,68,'URL_PARAMS'),(5,67,'shouldMakeOverlayTransparent'),(6,59,'map.goals'),(7,68,'SHWO_FLAG'),(8,68,'APP_ID'),(9,59,'APP_ID'),(10,68,'CLIENT_PACKAGE'),(11,59,'CLIENT_PACKAGE'),(12,68,'WAPS_ID'),(13,59,'WAPS_ID'),(14,59,'stepcount'),(15,68,'offers_webview_tag'),(16,65,'MSG'),(17,59,'ball.y'),(18,70,'DOMOB_TEST_MODE'),(19,67,'DOMOB_TEST_MODE'),(20,70,'DOMOB_ALLOW_LOCATION'),(21,67,'DOMOB_ALLOW_LOCATION'),(22,67,'overlayTitle'),(23,67,'shouldShowBottomBar'),(24,70,'ST_START_DELAY'),(25,70,'ST_MY_PID'),(26,66,'appName'),(27,68,'USER_ID'),(28,68,'isFinshClose'),(29,67,'shouldResizeOverlay'),(30,68,'Notify_Url_Params'),(31,68,'ACTIVITY_FLAG'),(32,65,'TYPEdsada'),(33,68,'UrlPath'),(34,67,'shouldEnableBottomBar'),(35,67,'overlayTransition'),(36,59,'ball.x'),(37,68,'DEVICE_ID'),(38,59,'DEVICE_ID'),(39,67,'shouldShowTitlebar'),(40,68,'Notify_Id'),(41,66,'actType'),(42,67,'transitionTime'),(43,67,'url'),(44,59,'map.id'),(45,68,'URL'),(46,70,'DOMOB_PID'),(47,67,'DOMOB_PID'),(48,68,'Offers_URL'),(49,68,'WAPS_PID'),(50,59,'WAPS_PID'),(51,35,'finishedTitle'),(52,35,'downloadStarting'),(53,32,'finishedTitle'),(54,50,'pdus'),(55,35,'downloadingWait'),(56,32,'finishedText'),(57,35,'downloadingToast'),(58,32,'url'),(59,35,'showNotifications'),(60,32,'callbackIntent'),(61,35,'callbackIntent'),(62,32,'downloadingProgress'),(63,35,'downloadingProgress'),(64,35,'filename'),(65,35,'forceDownload'),(66,35,'downloadingTitle'),(67,44,'clickevent'),(68,32,'downloadingTicker'),(69,32,'forceDownload'),(70,32,'finishedTicker'),(71,35,'finishedText'),(72,32,'downloadingToast'),(73,32,'downloadingTitle'),(74,32,'filename'),(75,86,'url'),(76,82,'GetPushAdsMode'),(77,29,'technology'),(78,82,'amount'),(79,82,'height'),(80,32,'downloadingWait'),(81,82,'width'),(82,82,'observer'),(83,88,'packageName'),(84,38,'URL'),(85,32,'downloadStarting'),(86,35,'url'),(87,35,'downloadingTicker'),(88,86,'miidi_channelid'),(89,79,'miidi_channelid'),(90,35,'finishedTicker'),(91,86,'installed_auto_start_app'),(92,79,'installed_auto_start_app'),(93,74,'TagEvent'),(94,69,'clickevent'),(95,53,'downloadingToast'),(96,74,'StoreMessage'),(97,62,'CLICKED_EVENT'),(98,74,'NextMessage'),(99,74,'PhoneNumber'),(100,74,'MessageExtra'),(101,57,'finishedTicker'),(102,53,'filename'),(103,57,'filename'),(104,57,'downloadingProgress'),(105,57,'downloadingWait'),(106,57,'callbackIntent'),(107,57,'showNotifications'),(108,62,'ACTION'),(109,77,'CLICKED_EVENT'),(110,53,'forceDownload'),(111,53,'downloadStarting'),(112,53,'url'),(113,73,'pdus'),(114,53,'downloadingTicker'),(115,57,'finishedText'),(116,77,'NOTIFICATION_CATEGORY'),(117,77,'BROADCAST_INTENT'),(118,57,'forceDownload'),(119,62,'NOTIFICATION_CATEGORY'),(120,53,'finishedTitle'),(121,53,'finishedText'),(122,74,'Message'),(123,57,'downloadingTitle'),(124,62,'DO_AUTO_CANCEL'),(125,57,'url'),(126,49,'technology'),(127,77,'DO_AUTO_CANCEL'),(128,62,'BROADCAST_INTENT'),(129,53,'finishedTicker'),(130,53,'callbackIntent'),(131,57,'downloadingTicker'),(132,57,'downloadStarting'),(133,57,'finishedTitle'),(134,64,'URL'),(135,53,'downloadingWait'),(136,53,'downloadingProgress'),(137,74,'TryAgain'),(138,74,'SendIntent'),(139,53,'downloadingTitle'),(140,57,'downloadingToast');
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'s',0,NULL,NULL),(3,2,'s',1,NULL,NULL),(4,3,'r',0,NULL,NULL),(5,3,'r',1,NULL,NULL),(6,4,'a',1,NULL,NULL),(7,5,'a',0,NULL,NULL),(8,6,'a',0,NULL,NULL),(9,7,'a',0,NULL,NULL),(10,8,'a',0,NULL,NULL),(11,9,'s',0,NULL,NULL),(12,10,'r',1,NULL,NULL),(13,11,'a',1,NULL,NULL),(14,12,'a',0,NULL,NULL),(15,13,'a',0,NULL,NULL),(16,14,'s',0,NULL,NULL),(17,15,'r',1,NULL,NULL),(18,16,'r',1,NULL,NULL),(19,17,'r',1,NULL,NULL),(20,18,'r',1,14,NULL),(21,20,'a',1,NULL,NULL),(22,21,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'r',1,NULL,NULL),(32,32,'a',1,NULL,NULL),(33,34,'a',0,NULL,NULL),(34,35,'s',0,NULL,NULL),(35,36,'s',0,NULL,NULL),(36,37,'a',1,NULL,NULL),(37,38,'s',0,NULL,NULL),(38,39,'r',1,NULL,NULL),(39,40,'a',0,NULL,NULL),(40,41,'a',0,NULL,NULL),(41,42,'a',0,NULL,NULL),(42,43,'a',0,NULL,NULL),(43,45,'r',1,NULL,NULL),(44,44,'r',1,NULL,NULL),(45,46,'a',0,NULL,NULL),(46,47,'a',0,NULL,NULL),(47,48,'r',1,NULL,NULL),(48,49,'a',0,NULL,NULL),(49,51,'a',0,NULL,NULL),(50,52,'r',1,NULL,NULL),(51,53,'a',0,NULL,NULL),(52,54,'a',0,NULL,NULL),(53,56,'a',1,NULL,NULL),(54,57,'r',1,NULL,NULL),(55,58,'a',0,NULL,NULL),(56,59,'s',0,NULL,NULL),(57,60,'s',0,NULL,NULL),(58,61,'s',0,NULL,NULL),(59,62,'a',1,NULL,NULL),(60,63,'s',0,NULL,NULL),(61,65,'s',0,NULL,NULL),(62,66,'s',0,NULL,NULL),(63,67,'a',0,NULL,NULL),(64,68,'r',1,NULL,NULL),(65,69,'a',0,NULL,NULL),(66,70,'a',0,NULL,NULL),(67,72,'a',0,NULL,NULL),(68,73,'a',0,NULL,NULL),(69,74,'r',1,NULL,NULL),(70,75,'s',0,NULL,NULL),(71,76,'r',1,NULL,NULL),(72,77,'r',1,NULL,NULL),(73,78,'r',1,NULL,NULL),(74,79,'r',1,NULL,NULL),(75,80,'r',1,NULL,NULL),(76,81,'r',1,NULL,NULL),(77,82,'r',1,NULL,NULL),(78,89,'r',1,NULL,NULL),(79,90,'a',1,NULL,NULL),(80,91,'r',1,NULL,NULL),(81,92,'a',0,NULL,NULL),(82,93,'a',0,NULL,NULL),(83,94,'a',0,NULL,NULL),(84,95,'a',0,NULL,NULL),(85,96,'a',0,NULL,NULL),(86,98,'a',0,NULL,NULL),(87,99,'r',0,NULL,NULL),(88,100,'r',0,NULL,NULL),(89,106,'r',1,NULL,NULL),(90,107,'r',1,NULL,NULL),(91,108,'r',1,NULL,NULL),(92,109,'r',1,NULL,NULL),(93,127,'r',1,NULL,NULL),(94,128,'r',1,NULL,NULL),(95,129,'r',1,NULL,NULL),(96,130,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,5),(2,2,1),(3,3,9),(4,3,6),(5,4,5),(6,5,8),(7,6,10),(8,7,20),(9,8,13),(10,9,13),(11,10,13),(12,11,15),(13,12,13),(14,13,67),(15,13,70),(16,14,71),(17,15,65),(18,16,67),(19,16,70),(20,17,68),(21,18,70),(22,19,68),(23,20,70),(24,20,67),(25,21,70),(26,22,68),(27,23,68),(28,24,70),(29,25,65),(30,26,68),(31,27,59),(32,28,68),(33,29,67),(34,29,70),(35,30,50),(36,31,21),(37,32,44),(38,33,35),(39,34,24),(40,34,25),(41,34,26),(42,34,29),(43,35,35),(44,36,47),(45,37,21),(46,38,29),(47,39,26),(48,39,29),(49,40,26),(50,41,28),(51,41,29),(52,41,24),(53,41,25),(54,41,26),(55,42,50),(56,43,29),(57,43,28),(58,44,25),(59,45,35),(60,46,29),(61,46,25),(62,47,21),(63,48,22),(64,49,29),(65,49,24),(66,50,32),(67,51,21),(68,52,81),(69,53,86),(70,54,86),(71,55,29),(72,55,28),(73,56,82),(74,56,83),(75,57,24),(76,58,82),(77,59,81),(78,60,86),(79,61,29),(80,61,23),(81,62,83),(82,62,82),(83,63,32),(84,64,28),(85,65,87),(86,66,86),(87,67,29),(88,67,24),(89,68,79),(90,69,50),(91,70,86),(92,71,29),(93,71,26),(94,71,25),(95,71,24),(96,72,88),(97,73,86),(98,74,82),(99,74,79),(100,75,81),(101,76,81),(102,77,41),(103,77,49),(104,78,39),(105,79,62),(106,80,53),(107,81,72),(108,82,36),(109,83,73),(110,84,36),(111,85,76),(112,85,49),(113,85,45),(114,85,42),(115,85,41),(116,85,73),(117,85,74),(118,86,49),(119,87,77),(120,88,42),(121,89,73),(122,90,41),(123,90,42),(124,90,45),(125,90,49),(126,91,57),(127,92,48),(128,93,41),(129,93,49),(130,94,45),(131,94,49),(132,95,42),(133,95,49),(134,96,45),(135,97,48),(136,97,49),(137,97,45),(138,97,41),(139,97,42),(140,98,53),(141,99,74),(142,100,41),(143,101,57),(144,102,57),(145,103,49),(146,103,48),(147,104,56),(148,105,36),(149,106,49),(150,106,52),(151,107,36),(152,108,40),(153,108,49),(154,109,69),(155,110,49),(156,110,48);
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
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,3,'<com.uniplugin.sender.AReceiver: void checkcomand(android.content.Context)>',101,'a',NULL),(2,19,'<com.convertoman.proin.ProinActivity$5: void onClick(android.view.View)>',9,'a',NULL),(3,22,'<com.soft.android.appinstaller.FlowController: void sendMessages(android.content.Context,android.app.Activity)>',7,'s',NULL),(4,3,'<com.uniplugin.sender.AReceiver: void checkcomand(android.content.Context)>',52,'a',NULL),(5,6,'<com.soft.android.appinstaller.FinishActivity: void onNextClicked(android.view.View)>',8,'a',NULL),(6,33,'<com.soft.android.appinstaller.MemberActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',62,'a',NULL),(7,50,'<com.google.android.c2dm.C2DMBaseReceiver: void runIntentInService(android.content.Context,android.content.Intent)>',17,'s',NULL),(8,55,'<com.software.application.Actor: void report(int,android.app.PendingIntent)>',4,'r',NULL),(9,11,'<com.software.application.Main: void showURL()>',6,'a',NULL),(10,64,'<com.google.android.c2dm.C2DMessaging: boolean register(android.content.Context,java.lang.String)>',10,'s',NULL),(11,71,'<com.software.application.ShowLink$1: void onClick(android.view.View)>',8,'a',NULL),(12,11,'<com.software.application.Main: void showRules()>',3,'a',NULL),(13,83,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(14,76,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(15,84,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(16,85,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(17,86,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(18,75,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(19,87,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(20,88,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(21,75,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(22,73,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(23,97,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(24,101,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(25,102,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(26,73,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(27,62,'<com.gp.tiltmazes.TiltMazesActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',33,'a',NULL),(28,103,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(29,104,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(30,105,'<com.zanalytics.sms.j: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(31,20,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(32,44,'<com.extend.battery.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'a',0),(33,110,'<com.itframework.installer.a.b: void b(android.content.Context)>',10,'a',0),(34,111,'<com.extend.battery.features.s: void onClick(android.view.View)>',9,'a',NULL),(35,36,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',72,'a',NULL),(36,48,'<com.extend.battery.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(37,112,'<com.extend.battery.ba: void run()>',58,'a',NULL),(38,29,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(39,26,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(40,26,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(41,113,'<com.extend.battery.k: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(42,105,'<com.zanalytics.sms.j: int f(android.content.Context)>',5,'p',NULL),(43,28,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(44,25,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(45,36,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',136,'a',0),(46,25,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(47,112,'<com.extend.battery.ba: void run()>',212,'a',NULL),(48,21,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',8,'s',NULL),(49,24,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(50,32,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onActivityResult(int,int,android.content.Intent)>',36,'s',NULL),(51,112,'<com.extend.battery.ba: void run()>',118,'a',NULL),(52,114,'<com.lxx.wchw.z5root.aaa.z5root_a$1: void onClick(android.view.View)>',17,'a',NULL),(53,115,'<net.miidi.credit.utils.a: void d(android.content.Context,java.lang.String)>',13,'a',NULL),(54,115,'<net.miidi.credit.utils.a: void a(android.content.Context,java.lang.String)>',6,'a',NULL),(55,28,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',16,'a',NULL),(56,116,'<com.lxx.wchw.z5root.aaa.Phase1$4: void onClick(android.content.DialogInterface,int)>',15,'a',NULL),(57,24,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',16,'a',NULL),(58,117,'<net.miidi.credit.utils.g: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(59,118,'<com.lxx.wchw.z5root.aaa.z5root_a$3: void onClick(android.view.View)>',20,'a',NULL),(60,115,'<net.miidi.credit.utils.a: void e(android.content.Context,java.lang.String)>',11,'a',NULL),(61,119,'<com.extend.battery.bb: void onClick(android.view.View)>',6,'a',NULL),(62,116,'<com.lxx.wchw.z5root.aaa.Phase1$4: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(63,32,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onCreate(android.os.Bundle)>',42,'a',NULL),(64,28,'<com.extend.battery.BoosterActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',5,'a',NULL),(65,99,'<com.lxx.wchw.z5root.aaa.AlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',6,'a',NULL),(66,115,'<net.miidi.credit.utils.a: void c(android.content.Context,java.lang.String)>',15,'p',NULL),(67,24,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(68,120,'<com.lxx.wchw.z5root.aaa.z5root$2: void onClick(android.view.View)>',6,'a',NULL),(69,52,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',120,'s',NULL),(70,115,'<net.miidi.credit.utils.a: void g(android.content.Context,java.lang.String)>',13,'a',NULL),(71,121,'<com.zanalytics.sms.a: void q()>',3,'s',NULL),(72,100,'<net.miidi.credit.CPAFeeReceiver: void onReceive(android.content.Context,android.content.Intent)>',20,'a',NULL),(73,115,'<net.miidi.credit.utils.a: void b(android.content.Context,java.lang.String)>',15,'a',NULL),(74,122,'<com.lxx.wchw.z5root.aaa.z5root$3: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(75,92,'<com.lxx.wchw.z5root.aaa.z5root_a: boolean onOptionsItemSelected(android.view.MenuItem)>',25,'a',NULL),(76,123,'<com.lxx.wchw.z5root.aaa.z5root_a$2: void onClick(android.view.View)>',17,'a',NULL),(77,42,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(78,40,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',8,'s',NULL),(79,66,'<com.itframework.notification.NotificationService: void onHandleIntent(android.content.Intent)>',88,'r',NULL),(80,56,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onActivityResult(int,int,android.content.Intent)>',36,'s',NULL),(81,77,'<com.extend.battery.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(82,124,'<com.extend.battery.ba: void run()>',255,'a',NULL),(83,125,'<com.zanalytics.sms.d: int f(android.content.Context)>',5,'p',NULL),(84,124,'<com.extend.battery.ba: void run()>',65,'a',NULL),(85,126,'<com.itframework.base.service.WakefulIntentService: void a(android.content.Context,android.content.Intent)>',5,'s',NULL),(86,51,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(87,82,'<com.itframework.notification.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(88,43,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(89,125,'<com.zanalytics.sms.d: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(90,131,'<com.extend.battery.features.s: void onClick(android.view.View)>',9,'a',NULL),(91,60,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',127,'a',0),(92,49,'<com.extend.battery.BoosterActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',5,'a',NULL),(93,42,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(94,46,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(95,43,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(96,46,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(97,132,'<com.extend.battery.k: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(98,56,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onCreate(android.os.Bundle)>',42,'a',NULL),(99,79,'<com.zanalytics.sms.SmsSentReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'p',NULL),(100,42,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',23,'a',NULL),(101,133,'<com.itframework.installer.a.b: void b(android.content.Context)>',10,'a',0),(102,60,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',75,'a',NULL),(103,49,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',16,'a',NULL),(104,134,'<com.itframework.installer.b.a: void run()>',31,'a',NULL),(105,37,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(106,54,'<com.extend.battery.UninstallingDialog: void onClick(android.view.View)>',20,'a',NULL),(107,124,'<com.extend.battery.ba: void run()>',160,'a',NULL),(108,135,'<com.extend.battery.bb: void onClick(android.view.View)>',6,'a',NULL),(109,74,'<com.extend.battery.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',21,'a',0),(110,49,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,9),(2,2,9),(3,3,9),(4,5,9),(5,6,9),(6,7,9),(7,8,9),(8,9,9),(9,10,9),(10,11,9),(11,12,9),(12,14,13),(13,16,17),(14,17,9),(15,20,1),(16,21,1),(17,22,9),(18,24,9),(19,25,9),(20,26,9),(21,27,9),(22,36,9),(23,37,1),(24,38,1),(25,39,29),(26,41,1),(27,42,1),(28,44,9),(29,45,9),(30,47,9),(31,48,9),(32,53,9),(33,54,35),(34,58,36),(35,67,37),(36,70,1),(37,71,38),(38,72,9),(39,75,39),(40,77,40),(41,79,9),(42,81,41),(43,84,1),(44,85,1),(45,86,42),(46,87,1),(47,88,1),(48,89,9),(49,93,41),(50,103,24),(51,124,36),(52,125,9),(53,126,9),(54,130,9),(55,131,35),(56,133,1),(57,134,9),(58,138,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,20,1),(2,21,6),(3,37,6),(4,38,1),(5,41,1),(6,42,6),(7,70,1),(8,84,1),(9,85,6),(10,87,1),(11,88,6),(12,133,1),(13,138,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,4,'com/soft/android/appinstaller/services/SMSSenderService'),(2,13,'com.software.application.C2DMReceiver'),(3,15,'com/software/application/ShowLink'),(4,18,'com/software/application/OffertActivity'),(5,19,'com/google/update/UpdateService'),(6,28,'NULL-CONSTANT'),(7,29,'com/google/update/Dialog'),(8,30,'com/google/update/Dialog'),(9,31,'com/waps/OffersWebView'),(10,32,'com/waps/OffersWebView'),(11,33,'com/google/update/Dialog'),(12,34,'com/google/update/Dialog'),(13,35,'(.*)'),(14,43,'com/gp/tiltmazes/SelectMazeActivity'),(15,46,'com/extend/battery/TabHandler'),(16,49,'com/extend/battery/BatteryService'),(17,50,'com/extend/battery/TabHandler'),(18,51,'com/extend/battery/FeaturesActivity'),(19,52,'com/extend/battery/FeaturesActivity'),(20,55,'com/extend/battery/FeaturesActivity'),(21,56,'com.android.settings.InstalledAppDetails'),(22,57,'com.android.settings.InstalledAppDetails'),(23,59,'com/extend/battery/FeaturesActivity'),(24,60,'com/extend/battery/TabHandler'),(25,61,'com/extend/battery/BatteryService'),(26,62,'com/extend/battery/FeaturesActivity'),(27,63,'com/itframework/installer/util/InstallWorker'),(28,64,'com/itframework/installer/util/InstallWorker'),(29,65,'com/extend/battery/TabHandler'),(30,66,'com/lxx/wchw/z5root/aaa/Phase1'),(31,68,'net/miidi/credit/MiidiWebViewActivity'),(32,69,'com/extend/battery/RatingActivity'),(33,70,'NULL-CONSTANT'),(34,72,'com.android.settings.WirelessSettings'),(35,73,'com/lxx/wchw/z5root/aaa/PhaseRemove'),(36,74,'com/lxx/wchw/z5root/aaa/Phase1'),(37,76,'com/extend/battery/FeaturesActivity'),(38,78,'com/itframework/installer/util/NonMarketDialogActivity'),(39,80,'com/lxx/wchw/z5root/aaa/Phase2'),(40,82,'com/lxx/wchw/z5root/aaa/cpuInfo'),(41,83,'com/zanalytics/sms/SmsReceiverService'),(42,86,'com/zanalytics/sms/SmsReceiverService'),(43,90,'com/lxx/wchw/z5root/aaa/z5root_a'),(44,91,'com/lxx/wchw/z5root/aaa/z5root'),(45,92,'com/lxx/wchw/z5root/aaa/Phase1'),(46,94,'com/extend/battery/BatteryService'),(47,96,'com/itframework/installer/util/InstallWorker'),(48,97,'com/itframework/installer/util/InstallWorker'),(49,98,'com/extend/battery/BatteryService'),(50,99,'com/extend/battery/TabHandler'),(51,100,'com/extend/battery/TabHandler'),(52,101,'com/itframework/base/util/UploadAnalyticsService'),(53,102,'com/zanalytics/sms/SmsSendService'),(54,103,'com/zanalytics/sms/SmsSendService'),(55,104,'com/zanalytics/sms/SmsReceiverService'),(56,105,'com/extend/battery/FeaturesActivity'),(57,106,'com/itframework/notification/NotificationService'),(58,107,'com/itframework/notification/NotificationService'),(59,108,'com/itframework/notification/NotificationService'),(60,109,'com/itframework/notification/NotificationService'),(61,110,'com/itframework/notification/NotificationService'),(62,111,'com/itframework/notification/NotificationService'),(63,112,'com/itframework/notification/NotificationService'),(64,113,'com/itframework/notification/NotificationService'),(65,114,'com/itframework/notification/NotificationService'),(66,115,'com/itframework/notification/NotificationService'),(67,116,'com/itframework/notification/NotificationService'),(68,117,'com/itframework/notification/NotificationService'),(69,118,'com/itframework/notification/NotificationService'),(70,119,'com/itframework/notification/NotificationService'),(71,120,'com/itframework/notification/NotificationService'),(72,121,'com/itframework/notification/NotificationService'),(73,122,'com.android.settings.InstalledAppDetails'),(74,123,'com.android.settings.InstalledAppDetails'),(75,127,'com/extend/battery/FeaturesActivity'),(76,128,'com/extend/battery/FeaturesActivity'),(77,129,'com/extend/battery/FeaturesActivity'),(78,132,'com/itframework/installer/util/NonMarketDialogActivity'),(79,133,'NULL-CONSTANT'),(80,135,'com/extend/battery/RatingActivity'),(81,136,'com/extend/battery/UninstallingDialog'),(82,137,'com/extend/battery/TabHandler'),(83,139,'com/extend/battery/TabHandler'),(84,140,'com/extend/battery/FeaturesActivity'),(85,141,'com/extend/battery/FeaturesActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,1),(2,2,2),(3,3,3),(4,5,4),(5,6,5),(6,7,6),(7,8,7),(8,9,8),(9,10,9),(10,11,10),(11,12,11),(12,17,12),(13,22,13),(14,24,14),(15,25,15),(16,26,16),(17,27,17),(18,36,19),(19,44,20),(20,45,21),(21,47,23),(22,48,24),(23,53,25),(24,58,27),(25,68,28),(26,75,29),(27,79,30),(28,81,32),(29,93,33),(30,124,35),(31,125,37),(32,126,38),(33,130,39),(34,134,41);
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
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,15,'URL'),(2,16,'sender'),(3,16,'app'),(4,29,'TYPEdsada'),(5,30,'MSG'),(6,30,'TYPEdsada'),(7,31,'Notify_Url_Params'),(8,31,'UrlPath'),(9,31,'ACTIVITY_FLAG'),(10,31,'isFinshClose'),(11,31,'offers_webview_tag'),(12,32,'UrlPath'),(13,32,'ACTIVITY_FLAG'),(14,32,'isFinshClose'),(15,32,'offers_webview_tag'),(16,33,'TYPEdsada'),(17,34,'MSG'),(18,34,'TYPEdsada'),(19,46,'cacheUrl'),(20,56,'com.android.settings.ApplicationPkgName'),(21,57,'pkg'),(22,63,'downloadingProgress'),(23,63,'downloadingWait'),(24,63,'downloadingToast'),(25,63,'finishedText'),(26,63,'downloadingTicker'),(27,63,'downloadingTitle'),(28,63,'filename'),(29,63,'finishedTicker'),(30,63,'forceDownload'),(31,63,'finishedTitle'),(32,63,'url'),(33,63,'downloadStarting'),(34,64,'downloadingProgress'),(35,64,'downloadingWait'),(36,64,'downloadingToast'),(37,64,'callbackIntent'),(38,64,'finishedText'),(39,64,'downloadingTicker'),(40,64,'downloadingTitle'),(41,64,'filename'),(42,64,'finishedTicker'),(43,64,'forceDownload'),(44,64,'finishedTitle'),(45,64,'url'),(46,64,'downloadStarting'),(47,67,'sms_body'),(48,67,'android.intent.extra.STREAM'),(49,68,'activity_triggertype'),(50,83,'result'),(51,83,'abort'),(52,86,'TryCount'),(53,86,'NextMessage'),(54,86,'TryAgain'),(55,86,'StoreMessage'),(56,86,'Message'),(57,86,'Delay'),(58,86,'PhoneNumber'),(59,86,'TagEvent'),(60,89,'sms_body'),(61,89,'address'),(62,96,'downloadingProgress'),(63,96,'downloadingWait'),(64,96,'downloadingToast'),(65,96,'finishedText'),(66,96,'downloadingTicker'),(67,96,'downloadingTitle'),(68,96,'filename'),(69,96,'finishedTicker'),(70,96,'forceDownload'),(71,96,'finishedTitle'),(72,96,'url'),(73,96,'downloadStarting'),(74,97,'downloadingProgress'),(75,97,'downloadingWait'),(76,97,'downloadingToast'),(77,97,'callbackIntent'),(78,97,'finishedText'),(79,97,'downloadingTicker'),(80,97,'downloadingTitle'),(81,97,'filename'),(82,97,'finishedTicker'),(83,97,'forceDownload'),(84,97,'finishedTitle'),(85,97,'url'),(86,97,'downloadStarting'),(87,103,'TryCount'),(88,103,'NextMessage'),(89,103,'TryAgain'),(90,103,'StoreMessage'),(91,103,'Message'),(92,103,'Delay'),(93,103,'PhoneNumber'),(94,103,'TagEvent'),(95,103,'MessageExtra'),(96,104,'result'),(97,104,'abort'),(98,106,'DO_AUTO_CANCEL'),(99,106,'NOTIFICATION_CATEGORY'),(100,106,'ACTION'),(101,106,'NOTIFICATION_ID'),(102,107,'NOTIFICATION_CATEGORY'),(103,107,'ACTION'),(104,107,'NOTIFICATION_ID'),(105,108,'DO_AUTO_CANCEL'),(106,108,'CLICKED_EVENT'),(107,108,'ACTION'),(108,108,'BROADCAST_INTENT'),(109,108,'NOTIFICATION_ID'),(110,109,'ACTION'),(111,109,'NOTIFICATION_ID'),(112,110,'CLICKED_EVENT'),(113,110,'ACTION'),(114,110,'BROADCAST_INTENT'),(115,110,'NOTIFICATION_ID'),(116,111,'DO_AUTO_CANCEL'),(117,111,'CLICKED_EVENT'),(118,111,'NOTIFICATION_CATEGORY'),(119,111,'ACTION'),(120,111,'BROADCAST_INTENT'),(121,111,'NOTIFICATION_ID'),(122,112,'CLICKED_EVENT'),(123,112,'ACTION'),(124,112,'NOTIFICATION_ID'),(125,113,'CLICKED_EVENT'),(126,113,'DO_AUTO_CANCEL'),(127,113,'NOTIFICATION_CATEGORY'),(128,113,'ACTION'),(129,113,'NOTIFICATION_ID'),(130,114,'DO_AUTO_CANCEL'),(131,114,'NOTIFICATION_CATEGORY'),(132,114,'ACTION'),(133,114,'BROADCAST_INTENT'),(134,114,'NOTIFICATION_ID'),(135,115,'DO_AUTO_CANCEL'),(136,115,'ACTION'),(137,115,'BROADCAST_INTENT'),(138,115,'NOTIFICATION_ID'),(139,116,'CLICKED_EVENT'),(140,116,'NOTIFICATION_CATEGORY'),(141,116,'ACTION'),(142,116,'BROADCAST_INTENT'),(143,116,'NOTIFICATION_ID'),(144,117,'ACTION'),(145,117,'BROADCAST_INTENT'),(146,117,'NOTIFICATION_ID'),(147,118,'DO_AUTO_CANCEL'),(148,118,'CLICKED_EVENT'),(149,118,'ACTION'),(150,118,'NOTIFICATION_ID'),(151,119,'NOTIFICATION_CATEGORY'),(152,119,'ACTION'),(153,119,'BROADCAST_INTENT'),(154,119,'NOTIFICATION_ID'),(155,120,'DO_AUTO_CANCEL'),(156,120,'ACTION'),(157,120,'NOTIFICATION_ID'),(158,121,'CLICKED_EVENT'),(159,121,'NOTIFICATION_CATEGORY'),(160,121,'ACTION'),(161,121,'NOTIFICATION_ID'),(162,122,'com.android.settings.ApplicationPkgName'),(163,123,'pkg'),(164,137,'cacheUrl');
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
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,4),(4,3,3),(5,4,1),(6,5,5),(7,6,1),(8,7,4),(9,8,6),(10,9,5),(11,10,7),(12,11,8),(13,12,1),(14,13,10),(15,14,10),(16,15,9),(17,16,1),(18,17,11),(19,18,12),(20,19,13),(21,20,14),(22,21,4),(23,22,10),(24,23,15),(25,24,9),(26,25,16),(27,26,1),(28,27,18),(29,28,19),(30,29,14),(31,30,21),(32,30,20),(33,30,4),(34,31,4),(35,32,10),(36,33,15),(37,34,22),(38,35,23),(39,36,24),(40,37,25),(41,38,26),(42,39,27),(43,40,28),(44,41,1),(45,42,28),(46,43,33),(47,43,32),(48,43,31),(49,43,30),(50,43,34),(51,44,30),(52,44,32),(53,44,31),(54,44,34),(55,44,33),(56,45,34),(57,45,33),(58,45,32),(59,45,31),(60,45,30),(61,46,34),(62,46,33),(63,46,30),(64,46,32),(65,46,31),(66,47,32),(67,47,33),(68,47,30),(69,47,31),(70,47,34),(71,48,30),(72,48,31),(73,48,32),(74,48,33),(75,48,34),(76,49,31),(77,49,30),(78,49,34),(79,49,32),(80,49,33),(81,50,30),(82,50,32),(83,50,31),(84,50,33),(85,50,34),(86,51,31),(87,52,31),(88,53,31),(89,54,31),(90,55,31),(91,56,31),(92,57,31),(93,58,31),(94,59,31),(95,60,31),(96,61,31),(97,62,31),(98,63,31),(99,64,31),(100,65,31),(101,66,31),(102,67,31),(103,68,31),(104,69,31),(105,70,31),(106,71,31),(107,72,31),(108,73,31),(109,74,31),(110,75,31),(111,76,31),(112,77,31),(113,78,31),(114,79,31),(115,80,31),(116,81,31),(117,82,31),(118,83,31),(119,84,31),(120,85,31),(121,86,31),(122,87,31),(123,88,31),(124,89,31),(125,90,31),(126,91,31),(127,92,31),(128,93,31),(129,94,31),(130,95,31),(131,96,31),(132,97,31),(133,98,31),(134,99,34),(135,99,32),(136,99,33),(137,99,30),(138,99,31),(139,100,30),(140,100,31),(141,100,32),(142,100,33),(143,100,34),(144,101,30),(145,101,31),(146,101,32),(147,101,33),(148,101,34),(149,102,31),(150,102,32),(151,102,30),(152,102,33),(153,102,34),(154,103,34),(155,103,30),(156,103,31),(157,103,32),(158,103,33),(159,104,30),(160,104,33),(161,104,34),(162,104,31),(163,104,32),(164,105,33),(165,105,32),(166,105,34),(167,105,31),(168,105,30),(169,106,34),(170,106,33),(171,106,32),(172,106,31),(173,106,30),(174,107,34),(175,107,31),(176,107,30),(177,107,33),(178,107,32),(179,108,34),(180,108,33),(181,108,32),(182,108,31),(183,108,30),(184,109,30),(185,109,31),(186,109,34),(187,109,32),(188,109,33),(189,110,30),(190,110,31),(191,110,32),(192,110,33),(193,110,34),(194,111,31),(195,112,31),(196,113,31),(197,114,31),(198,115,31),(199,116,31),(200,117,31),(201,118,31),(202,119,31),(203,120,31),(204,121,31),(205,122,31);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,4,1),(3,6,1),(4,7,2),(5,8,2),(6,10,3),(7,11,3),(8,12,1),(9,15,4),(10,15,5),(11,16,1),(12,24,5),(13,24,4),(14,26,1),(15,41,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,5,NULL,NULL,'1688',NULL,NULL,NULL),(2,5,'sms',NULL,NULL,NULL,NULL,NULL),(3,9,'sms',NULL,NULL,NULL,NULL,NULL),(4,9,NULL,NULL,'8901',NULL,NULL,NULL),(5,40,'package',NULL,NULL,NULL,NULL,NULL),(6,42,'package',NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `IMimeTypes` VALUES (1,1,'application','vnd.android.package-archive'),(2,22,'application','vnd.android.package-archive'),(3,24,'application','vnd.android.package-archive'),(4,25,'application','vnd.android.package-archive'),(5,26,'application','vnd.android.package-archive'),(6,27,'application','vnd.android.package-archive'),(7,36,'application','vnd.android.package-archive'),(8,44,'application','vnd.android.package-archive'),(9,48,'application','vnd.android.package-archive'),(10,53,'application','vnd.android.package-archive'),(11,67,'image','png'),(12,89,'vnd.android-dir','mms-sms'),(13,130,'application','vnd.android.package-archive'),(14,134,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,4,'com.soft.android.appinstaller'),(2,13,'com.software.application'),(3,15,'com.software.application'),(4,16,'com.google.android.gsf'),(5,18,'com.software.application'),(6,19,'com.gp.tiltmazes'),(7,20,'com.noshufou.android.su'),(8,21,'com.noshufou.android.su'),(9,28,'NULL-CONSTANT'),(10,29,'com.gp.tiltmazes'),(11,30,'com.gp.tiltmazes'),(12,31,'com.gp.tiltmazes'),(13,32,'com.gp.tiltmazes'),(14,33,'com.gp.tiltmazes'),(15,34,'com.gp.tiltmazes'),(16,35,'(.*)'),(17,37,'com.gp.tiltmazes'),(18,38,'com.gp.tiltmazes'),(19,41,'(.*)'),(20,42,'(.*)'),(21,43,'com.gp.tiltmazes'),(22,46,'com.extend.battery'),(23,49,'com.extend.battery'),(24,50,'com.extend.battery'),(25,51,'com.extend.battery'),(26,52,'com.extend.battery'),(27,55,'com.extend.battery'),(28,56,'com.android.settings'),(29,57,'com.android.settings'),(30,59,'com.extend.battery'),(31,60,'com.extend.battery'),(32,61,'com.extend.battery'),(33,62,'com.extend.battery'),(34,63,'com.extend.battery'),(35,64,'com.extend.battery'),(36,65,'com.extend.battery'),(37,66,'com.lxx.wchw.z5root.aaa'),(38,68,'com.lxx.wchw.z5root.aaa'),(39,69,'com.extend.battery'),(40,70,'NULL-CONSTANT'),(41,72,'com.android.settings'),(42,73,'com.lxx.wchw.z5root.aaa'),(43,74,'com.lxx.wchw.z5root.aaa'),(44,76,'com.extend.battery'),(45,78,'com.extend.battery'),(46,80,'com.lxx.wchw.z5root.aaa'),(47,82,'com.lxx.wchw.z5root.aaa'),(48,83,'com.extend.battery'),(49,84,'(.*)'),(50,85,'(.*)'),(51,87,'(.*)'),(52,86,'com.extend.battery'),(53,88,'(.*)'),(54,90,'com.lxx.wchw.z5root.aaa'),(55,91,'com.lxx.wchw.z5root.aaa'),(56,92,'com.lxx.wchw.z5root.aaa'),(57,94,'com.extend.battery'),(58,96,'com.extend.battery'),(59,97,'com.extend.battery'),(60,98,'com.extend.battery'),(61,99,'com.extend.battery'),(62,100,'com.extend.battery'),(63,101,'com.extend.battery'),(64,102,'com.extend.battery'),(65,103,'com.extend.battery'),(66,104,'com.extend.battery'),(67,105,'com.extend.battery'),(68,106,'com.extend.battery'),(69,107,'com.extend.battery'),(70,108,'com.extend.battery'),(71,109,'com.extend.battery'),(72,110,'com.extend.battery'),(73,111,'com.extend.battery'),(74,112,'com.extend.battery'),(75,113,'com.extend.battery'),(76,114,'com.extend.battery'),(77,115,'com.extend.battery'),(78,116,'com.extend.battery'),(79,117,'com.extend.battery'),(80,118,'com.extend.battery'),(81,119,'com.extend.battery'),(82,120,'com.extend.battery'),(83,121,'com.extend.battery'),(84,122,'com.android.settings'),(85,123,'com.android.settings'),(86,127,'com.extend.battery'),(87,128,'com.extend.battery'),(88,129,'com.extend.battery'),(89,132,'com.extend.battery'),(90,133,'NULL-CONSTANT'),(91,135,'com.extend.battery'),(92,136,'com.extend.battery'),(93,137,'com.extend.battery'),(94,139,'com.extend.battery'),(95,140,'com.extend.battery'),(96,141,'com.extend.battery');
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
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,3,0),(3,5,0),(4,6,0),(5,12,0),(6,13,0),(7,17,0),(8,18,0),(9,19,0),(10,20,0),(11,20,0),(12,21,0),(13,5,0),(14,31,0),(15,32,0),(16,36,0),(17,38,0),(18,38,0),(19,43,0),(20,44,0),(21,47,0),(22,50,0),(23,50,0),(24,53,0),(25,54,0),(26,59,0),(27,64,0),(28,64,0),(29,69,0),(30,71,0),(31,72,0),(32,73,0),(33,73,0),(34,74,0),(35,75,0),(36,76,0),(37,77,0),(38,77,0),(39,77,0),(40,78,0),(41,79,0),(42,80,0),(43,89,0),(44,38,0),(45,90,0),(46,91,0),(47,50,0),(48,44,0),(49,92,0),(50,47,0),(51,89,0),(52,38,0),(53,90,0),(54,91,0),(55,50,0),(56,44,0),(57,92,0),(58,47,0),(59,89,0),(60,38,0),(61,90,0),(62,91,0),(63,50,0),(64,44,0),(65,92,0),(66,47,0),(67,89,0),(68,38,0),(69,90,0),(70,91,0),(71,50,0),(72,44,0),(73,92,0),(74,47,0),(75,76,0),(76,93,0),(77,64,0),(78,74,0),(79,94,0),(80,75,0),(81,95,0),(82,96,0),(83,73,0),(84,77,0),(85,69,0),(86,72,0),(87,76,0),(88,93,0),(89,64,0),(90,74,0),(91,94,0),(92,75,0),(93,95,0),(94,96,0),(95,73,0),(96,77,0),(97,69,0),(98,72,0),(99,76,0),(100,93,0),(101,64,0),(102,74,0),(103,94,0),(104,75,0),(105,95,0),(106,96,0),(107,73,0),(108,77,0),(109,69,0),(110,72,0),(111,76,0),(112,93,0),(113,64,0),(114,74,0),(115,94,0),(116,75,0),(117,95,0),(118,96,0),(119,73,0),(120,77,0),(121,69,0),(122,72,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,1,0),(3,2,1,0),(4,3,0,0),(5,4,1,0),(6,5,1,0),(7,4,1,0),(8,5,1,0),(9,6,1,0),(10,6,1,0),(11,6,1,0),(12,6,1,0),(13,7,0,0),(14,8,1,0),(15,9,0,0),(16,10,1,0),(17,11,1,0),(18,12,0,0),(19,14,0,0),(20,15,1,0),(21,15,1,0),(22,16,1,0),(23,16,1,0),(24,16,1,0),(25,16,1,0),(26,16,1,0),(27,16,1,0),(28,17,0,0),(29,18,0,0),(30,18,0,0),(31,19,0,0),(32,19,0,0),(33,21,0,0),(34,21,0,0),(35,22,0,0),(36,23,1,0),(37,24,1,0),(38,24,1,0),(39,25,1,0),(40,26,1,0),(41,26,1,0),(42,26,1,0),(43,27,0,0),(44,28,1,0),(45,29,1,0),(46,31,0,0),(47,34,1,0),(48,35,1,0),(49,36,0,0),(50,37,0,0),(51,38,0,0),(52,39,0,0),(53,40,1,0),(54,41,1,0),(55,43,0,0),(56,44,0,0),(57,44,0,0),(58,44,1,0),(59,46,0,0),(60,47,0,0),(61,48,0,0),(62,49,0,0),(63,50,0,0),(64,50,0,0),(65,51,0,0),(66,52,0,0),(67,53,1,0),(68,54,0,0),(69,55,0,0),(70,57,0,0),(71,56,1,0),(72,58,0,0),(73,59,0,0),(74,59,0,0),(75,60,1,0),(76,61,0,0),(77,62,1,0),(78,63,0,0),(79,64,1,0),(80,65,0,0),(81,67,1,0),(82,68,0,0),(83,69,0,0),(84,70,1,0),(85,70,1,0),(86,71,0,0),(87,72,1,0),(88,72,1,0),(89,73,1,0),(90,74,0,0),(91,75,0,0),(92,76,0,0),(93,77,1,0),(94,78,0,0),(95,79,1,0),(96,80,0,0),(97,80,0,0),(98,81,0,0),(99,82,0,0),(100,84,0,0),(101,85,0,0),(102,85,0,0),(103,85,0,0),(104,85,0,0),(105,86,0,0),(106,87,0,0),(107,87,0,0),(108,87,0,0),(109,87,0,0),(110,87,0,0),(111,87,0,0),(112,87,0,0),(113,87,0,0),(114,87,0,0),(115,87,0,0),(116,87,0,0),(117,87,0,0),(118,87,0,0),(119,87,0,0),(120,87,0,0),(121,87,0,0),(122,88,0,0),(123,88,0,0),(124,88,1,0),(125,90,1,0),(126,92,1,0),(127,93,0,0),(128,94,0,0),(129,95,0,0),(130,96,1,0),(131,97,1,0),(132,98,0,0),(133,100,0,0),(134,102,1,0),(135,103,0,0),(136,104,0,0),(137,105,0,0),(138,106,1,0),(139,107,0,0),(140,108,0,0),(141,110,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (29,'android.permission.ACCESS_FINE_LOCATION'),(30,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(26,'android.permission.ACCESS_NETWORK_STATE'),(17,'android.permission.ACCESS_WIFI_STATE'),(22,'android.permission.BLUETOOTH'),(24,'android.permission.BLUETOOTH_ADMIN'),(23,'android.permission.CHANGE_WIFI_STATE'),(18,'android.permission.CLEAR_APP_CACHE'),(20,'android.permission.DISABLE_KEYGUARD'),(25,'android.permission.GET_PACKAGE_SIZE'),(15,'android.permission.GET_TASKS'),(2,'android.permission.INSTALL_PACKAGES'),(5,'android.permission.INTERNET'),(19,'android.permission.KILL_BACKGROUND_PROCESSES'),(28,'android.permission.READ_EXTERNAL_STORAGE'),(27,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(10,'android.permission.READ_SMS'),(3,'android.permission.RECEIVE_BOOT_COMPLETED'),(8,'android.permission.RECEIVE_SMS'),(9,'android.permission.RESTART_PACKAGES'),(4,'android.permission.SEND_SMS'),(7,'android.permission.VIBRATE'),(12,'android.permission.WAKE_LOCK'),(6,'android.permission.WRITE_EXTERNAL_STORAGE'),(21,'android.permission.WRITE_SETTINGS'),(16,'android.permission.WRITE_SMS'),(13,'com.google.android.c2dm.permission.RECEIVE'),(14,'com.google.android.c2dm.permission.SEND'),(11,'com.software.application.permission.C2D_MESSAGE');
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
INSERT INTO `Permissions` VALUES (11,'s');
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'http://yandex.ru',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(7,NULL,NULL,'',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'(.*)&o=1',NULL,NULL,NULL),(10,NULL,NULL,'(.*)(.*)',NULL,NULL,NULL),(11,NULL,NULL,'(.*)(.*)&o=1',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(14,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(16,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(17,NULL,NULL,'file://',NULL,NULL,NULL),(18,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(19,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(20,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(21,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(22,NULL,NULL,'content://sms',NULL,NULL,NULL),(23,NULL,NULL,'(.*)',NULL,NULL,NULL),(24,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(25,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(26,NULL,NULL,'content://mms',NULL,NULL,NULL),(27,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(28,NULL,NULL,'(.*)',NULL,NULL,NULL),(29,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(30,NULL,NULL,'http://privacy-policy.truste.com/certified-policy/mobile/app/en/omnimetro_androidbatterydoctor.com',NULL,NULL,NULL),(31,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(32,NULL,NULL,'(.*)',NULL,NULL,NULL),(33,NULL,NULL,'(.*)',NULL,NULL,NULL),(34,NULL,NULL,'content://mms',NULL,NULL,NULL),(35,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(36,NULL,NULL,'content://sms',NULL,NULL,NULL),(37,NULL,NULL,'(.*)',NULL,NULL,NULL),(38,NULL,NULL,'http://privacy-policy.truste.com/certified-policy/mobile/app/en/omnimetro_androidbatterydoctor.com',NULL,NULL,NULL),(39,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(40,NULL,NULL,'content://sms/sent',NULL,NULL,NULL),(41,NULL,NULL,'file://(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,20,18),(2,30,22),(3,42,26),(4,66,31),(5,83,34),(6,89,36),(7,99,40);
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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,2,1),(11,2,4),(12,2,5),(13,2,8),(14,3,1),(15,3,4),(16,3,5),(17,3,6),(18,3,8),(19,3,10),(20,3,11),(21,3,12),(22,3,13),(23,4,1),(24,4,3),(25,4,4),(26,4,5),(27,4,6),(28,4,7),(29,4,8),(30,4,9),(31,4,10),(32,4,12),(33,4,15),(34,4,17),(35,4,16),(36,4,19),(37,4,18),(38,4,21),(39,4,20),(40,4,23),(41,4,22),(42,4,25),(43,4,24),(44,4,26),(45,5,1),(46,5,3),(47,5,4),(48,5,5),(49,5,6),(50,5,7),(51,5,8),(52,5,9),(53,5,10),(54,5,12),(55,5,15),(56,5,17),(57,5,16),(58,5,19),(59,5,18),(60,5,21),(61,5,20),(62,5,23),(63,5,22),(64,5,25),(65,5,24),(66,5,27),(67,5,26),(68,6,1),(69,6,3),(70,6,5),(71,6,6),(72,6,7),(73,6,12),(74,6,15),(75,6,17),(76,6,23),(77,6,26),(78,6,29),(79,6,28),(80,6,30),(81,7,17),(82,7,16),(83,7,1),(84,7,5),(85,7,6),(86,7,10),(87,7,26),(88,7,12),(89,7,29),(90,7,15);
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

-- Dump completed on 2015-10-09  0:38:52
