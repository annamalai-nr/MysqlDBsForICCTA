-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_120
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
INSERT INTO `ActionStrings` VALUES (18,'(.*)'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(14,'android.intent.action.CALL'),(13,'android.intent.action.DELETE'),(16,'android.intent.action.DIAL'),(20,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(6,'android.intent.action.NEW_OUTGOING_CALL'),(9,'android.intent.action.PACKAGE_ADDED'),(12,'android.intent.action.PICK'),(17,'android.intent.action.SEND'),(8,'android.intent.action.SENDTO'),(2,'android.intent.action.SIG_STR'),(11,'android.intent.action.VIEW'),(19,'android.intent.action.WEB_SEARCH'),(5,'android.net.conn.CONNECTIVITY_CHANGE'),(7,'android.provider.Telephony.SMS_RECEIVED'),(10,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(15,'com/alipay/android/app/IAlixPay');
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
INSERT INTO `Applications` VALUES (1,'com.ps.blackwhite',15),(2,'com.safesys.remover',20),(3,'com.aijiaoyou.android.sipphone',1005),(4,'sunkay.ExpressionSMS',50),(5,'com.alan.asianmeinv1',1),(6,'com.gp.mahjongg',9),(7,'com.alan.message',23);
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
INSERT INTO `CategoryStrings` VALUES (4,'android.intent.category.BROWSABLE'),(2,'android.intent.category.DEFAULT'),(3,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.adwo.adsdk.AdwoAdBrowserActivity'),(2,1,'com.ps.blackwhite.BlackWhite'),(3,1,'com.google.update.Dialog'),(4,1,'com.waps.OffersWebView'),(5,1,'com.google.update.UpdateService'),(6,2,'com.safesys.remover.Uninstall'),(7,1,'com.google.update.Receiver'),(8,2,'com.safesys.remover.ShowTips'),(9,2,'com.adwo.adsdk.AdwoSplashAdActivity'),(10,3,'com.aijiaoyou.android.sipphone.InitOnlineActivity'),(11,2,'com.adwo.adsdk.AdwoAdBrowserActivity'),(12,2,'com.safesys.remover.UpdateService'),(13,2,'com.safesys.remover.Receiver'),(14,3,'com.aijiaoyou.android.sipphone.OnlineActivity'),(15,3,'com.aijiaoyou.android.sipphone.AgentDetialInfo'),(16,3,'com.aijiaoyou.android.sipphone.SongListActivity'),(17,3,'com.aijiaoyou.android.sipphone.HistoryDetailActivity'),(18,3,'com.aijiaoyou.android.sipphone.ChongZhiActivity'),(19,3,'com.aijiaoyou.android.sipphone.ZhiFuBaoChongZhiActivity'),(20,3,'org.linphone.LinphonePreferencesActivity11'),(21,3,'org.linphone.LinphoneService'),(22,3,'com.mjdc.sapp.service.ConnectService'),(23,3,'com.mjdc.sapp.service.BehindService'),(24,3,'org.linphone.NetworkManager'),(25,3,'org.linphone.OutgoingCallReceiver'),(26,3,'org.linphone.BootReceiver'),(27,3,'com.mjdc.sapp.receiver.SigChangeReceiver'),(28,3,'com.mjdc.sapp.receiver.BootReceiver'),(29,4,'sunkay.ExpressionSMS.CuteSMS'),(30,4,'sunkay.ExpressionSMS.SMSReceive'),(31,4,'sunkay.ExpressionSMS.faces'),(32,4,'com.mt.airad.MultiAD'),(33,4,'com.winad.android.ads.VideoPlayerActivity'),(34,4,'com.google.update.Dialog'),(35,4,'com.google.update.UpdateService'),(36,4,'sunkay.ExpressionSMS.ExpressionSMSReceiver'),(37,4,'com.google.update.Receiver'),(38,5,'com.alan.asianmeinv1.PaperCollection'),(39,5,'com.alan.asianmeinv1.PictureGrid'),(40,5,'com.google.ads.AdActivity'),(41,5,'com.vpon.adon.android.WebInApp'),(42,5,'com.adwo.adsdk.AdwoSplashAdActivity'),(43,6,'com.gp.mahjongg.SelectActivity'),(44,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(45,5,'com.waps.OffersWebView'),(46,6,'com.gp.mahjongg.PlayActivity'),(47,5,'com.google.update.Dialog'),(48,6,'com.gp.background.BackgroundActivity'),(49,5,'com.google.update.UpdateService'),(50,6,'com.gp.mahjongg.SettingsActivity'),(51,5,'com.google.update.Receiver'),(52,6,'com.gp.mahjongg.BuilderActivity'),(53,6,'cn.domob.android.ads.DomobActivity'),(54,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(55,6,'com.adwo.adsdk.AdwoSplashAdActivity'),(56,6,'com.vpon.adon.android.WebInApp'),(57,6,'com.google.update.Dialog'),(58,6,'com.waps.OffersWebView'),(59,6,'com.google.update.UpdateService'),(60,6,'com.google.update.Receiver'),(61,4,'sunkay.ExpressionSMS.CuteSMS$8'),(62,1,'com.waps.q'),(63,4,'com.google.update.Dialog$1'),(64,1,'com.waps.aa'),(65,4,'com.ju6.a'),(66,1,'com.waps.y'),(67,1,'com.google.update.Dialog$2'),(68,1,'com.google.update.UpdateService$AA'),(69,4,'sunkay.ExpressionSMS.SMSReceive$7'),(70,2,'com.ju6.c'),(71,4,'com.google.update.UpdateService$MyThread'),(72,2,'com.safesys.remover.ShowTips$1'),(73,3,'com.aijiaoyou.android.sipphone.OnlineActivity$11'),(74,4,'sunkay.ExpressionSMS.CuteSMS$2'),(75,2,'com.ju6.mms.util.SqliteWrapper'),(76,4,'com.google.update.Dialog$2'),(77,1,'com.google.update.Dialog$1'),(78,2,'com.safesys.remover.Uninstall$uninstallClickListener'),(79,1,'com.waps.o'),(80,5,'com.google.update.Dialog$1'),(81,2,'com.ju6.mms.pdu.PduPersister'),(82,3,'com.alipay.android.MobileSecurePayer'),(83,2,'com.adwo.adsdk.g'),(84,1,'com.waps.x'),(85,5,'com.ju6.a'),(86,7,'com.alan.message.SmsMessage'),(87,7,'com.alan.message.MessageList'),(88,7,'com.alan.message.EditMessage'),(89,7,'com.alan.message.AddMessage'),(90,7,'com.alan.message.InputMessage'),(91,7,'com.alan.message.Setting'),(92,7,'com.alan.message.Help'),(93,7,'com.google.ads.AdActivity'),(94,7,'com.vpon.adon.android.WebInApp'),(95,7,'com.adwo.adsdk.AdwoSplashAdActivity'),(96,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(97,7,'com.waps.OffersWebView'),(98,7,'com.google.update.Dialog'),(99,7,'com.google.update.UpdateService'),(100,7,'com.google.update.Receiver'),(101,5,'com.google.update.UpdateService$MyThread'),(102,5,'com.waps.k'),(103,5,'com.waps.AppConnect'),(104,5,'com.google.update.Dialog$2'),(105,5,'com.waps.m'),(106,7,'com.waps.AppConnect'),(107,7,'com.google.update.Dialog$2'),(108,7,'com.google.update.UpdateService$AA'),(109,7,'com.alan.message.Setting$1'),(110,7,'com.google.update.Dialog$1'),(111,7,'com.waps.o'),(112,7,'com.waps.ac'),(113,7,'com.waps.aa'),(114,7,'com.waps.z'),(115,7,'com.waps.q'),(116,6,'com.google.update.Dialog$1'),(117,6,'com.google.update.Dialog$2'),(118,6,'cn.domob.android.a.a$a'),(119,6,'cn.domob.android.ads.e'),(120,6,'com.waps.d'),(121,6,'com.waps.ac'),(122,6,'cn.domob.android.ads.o$5'),(123,6,'com.waps.o'),(124,6,'cn.domob.android.ads.g$1'),(125,6,'com.waps.q'),(126,6,'com.waps.s'),(127,6,'com.google.update.UpdateService$AA'),(128,6,'cn.domob.android.ads.DomobAdManager'),(129,6,'com.waps.z'),(130,6,'com.waps.aa'),(131,6,'com.waps.AppConnect'),(132,6,'cn.domob.android.ads.o');
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
) ENGINE=InnoDB AUTO_INCREMENT=264 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,4,'Offers_URL'),(2,1,'shouldResizeOverlay'),(3,4,'Notify_Url_Params'),(4,3,'MSG'),(5,1,'url'),(6,4,'USER_ID'),(7,4,'offers_webview_tag'),(8,4,'APP_ID'),(9,2,'APP_ID'),(10,1,'shouldShowBottomBar'),(11,1,'transitionTime'),(12,4,'DEVICE_ID'),(13,2,'DEVICE_ID'),(14,4,'CLIENT_PACKAGE'),(15,35,'ST_START_DELAY'),(16,2,'CLIENT_PACKAGE'),(17,4,'UrlPath'),(18,4,'WAPS_ID'),(19,15,'nickname'),(20,2,'WAPS_ID'),(21,15,'city'),(22,15,'sex'),(23,36,'pdus'),(24,34,'MSG'),(25,34,'TYPEdsada'),(26,24,'networkInfo'),(27,1,'shouldShowTitlebar'),(28,30,'contact'),(29,30,'message'),(30,15,'age'),(31,35,'ST_MY_PID'),(32,15,'sign'),(33,15,'fee'),(34,4,'URL_PARAMS'),(35,1,'shouldMakeOverlayTransparent'),(36,1,'shouldEnableBottomBar'),(37,4,'URL'),(38,1,'overlayTransition'),(39,1,'overlayTitle'),(40,15,'state'),(41,9,'Adwo_PID'),(42,24,'noConnectivity'),(43,25,'android.intent.extra.PHONE_NUMBER'),(44,11,'overlayTitle'),(45,11,'shouldMakeOverlayTransparent'),(46,11,'shouldResizeOverlay'),(47,12,'SAFE_PID'),(48,4,'isFinshClose'),(49,15,'largeimgurl'),(50,11,'url'),(51,5,'ST_START_DELAY'),(52,40,'action'),(53,12,'SAFE_START'),(54,40,'com.google.ads.AdOpener'),(55,6,'number'),(56,44,'shouldMakeOverlayTransparent'),(57,11,'shouldShowTitlebar'),(58,42,'isTestMode'),(59,44,'shouldShowTitlebar'),(60,44,'url'),(61,4,'ACTIVITY_FLAG'),(62,4,'Notify_Id'),(63,44,'shouldResizeOverlay'),(64,11,'shouldEnableBottomBar'),(65,8,'MM'),(66,11,'shouldShowBottomBar'),(67,11,'overlayTransition'),(68,45,'USER_ID'),(69,3,'TYPEdsada'),(70,4,'WAPS_PID'),(71,45,'URL_PARAMS'),(72,2,'WAPS_PID'),(73,39,'WAPS_ID'),(74,15,'phone'),(75,5,'ST_MY_PID'),(76,4,'SHWO_FLAG'),(77,44,'shouldShowBottomBar'),(78,39,'DEVICE_ID'),(79,45,'URL'),(80,42,'Adwo_PID'),(81,44,'overlayTransition'),(82,39,'APP_ID'),(83,45,'Offers_URL'),(84,45,'CLIENT_PACKAGE'),(85,44,'overlayTitle'),(86,41,'url'),(87,47,'TYPEdsada'),(88,49,'ST_MY_PID'),(89,41,'adWidth'),(90,49,'ST_START_DELAY'),(91,39,'CLIENT_PACKAGE'),(92,39,'WAPS_PID'),(93,45,'isFinshClose'),(94,44,'transitionTime'),(95,44,'shouldEnableBottomBar'),(96,47,'MSG'),(97,40,'params'),(98,11,'transitionTime'),(99,6,'orderId'),(100,9,'isTestMode'),(101,73,'isFinshClose'),(102,62,'message'),(103,73,'ACTIVITY_FLAG'),(104,72,'overlayTitle'),(105,65,'CLIENT_PACKAGE'),(106,62,'CLIENT_PACKAGE'),(107,73,'CLIENT_PACKAGE'),(108,64,'CLIENT_PACKAGE'),(109,63,'CLIENT_PACKAGE'),(110,68,'CLIENT_PACKAGE'),(111,66,'CLIENT_PACKAGE'),(112,65,'WAPS_ID'),(113,62,'WAPS_ID'),(114,73,'WAPS_ID'),(115,64,'WAPS_ID'),(116,63,'WAPS_ID'),(117,68,'WAPS_ID'),(118,66,'WAPS_ID'),(119,73,'Notify_Url_Params'),(120,72,'shouldResizeOverlay'),(121,74,'TYPEdsada'),(122,73,'URL'),(123,72,'shouldEnableBottomBar'),(124,72,'transitionTime'),(125,74,'MSG'),(126,73,'Notify_Id'),(127,73,'UrlPath'),(128,71,'Adwo_PID'),(129,73,'SHWO_FLAG'),(130,63,'message'),(131,75,'ST_MY_PID'),(132,72,'shouldMakeOverlayTransparent'),(133,65,'WAPS_PID'),(134,62,'WAPS_PID'),(135,73,'WAPS_PID'),(136,64,'WAPS_PID'),(137,63,'WAPS_PID'),(138,68,'WAPS_PID'),(139,66,'WAPS_PID'),(140,72,'overlayTransition'),(141,71,'isTestMode'),(142,73,'USER_ID'),(143,70,'url'),(144,65,'DEVICE_ID'),(145,62,'DEVICE_ID'),(146,73,'DEVICE_ID'),(147,64,'DEVICE_ID'),(148,63,'DEVICE_ID'),(149,68,'DEVICE_ID'),(150,66,'DEVICE_ID'),(151,62,'content'),(152,73,'URL_PARAMS'),(153,65,'APP_ID'),(154,62,'APP_ID'),(155,73,'APP_ID'),(156,64,'APP_ID'),(157,63,'APP_ID'),(158,68,'APP_ID'),(159,66,'APP_ID'),(160,75,'ST_START_DELAY'),(161,62,'UMENG_CHANNEL'),(162,72,'url'),(163,72,'shouldShowBottomBar'),(164,73,'Offers_URL'),(165,73,'offers_webview_tag'),(166,70,'adWidth'),(167,62,'UMENG_APPKEY'),(168,72,'shouldShowTitlebar'),(169,64,'itemContent'),(170,54,'overlayTitle'),(171,55,'shouldMakeOverlayTransparent'),(172,59,'ST_START_DELAY'),(173,54,'shouldEnableBottomBar'),(174,52,'SCROLL_X_KEY'),(175,54,'shouldShowBottomBar'),(176,43,'APP_ID'),(177,48,'APP_ID'),(178,58,'APP_ID'),(179,46,'APP_ID'),(180,52,'APP_ID'),(181,43,'WAPS_PID'),(182,48,'WAPS_PID'),(183,58,'WAPS_PID'),(184,46,'WAPS_PID'),(185,52,'WAPS_PID'),(186,58,'SHWO_FLAG'),(187,58,'Offers_URL'),(188,58,'Notify_Url_Params'),(189,55,'overlayTransition'),(190,43,'CLIENT_PACKAGE'),(191,48,'CLIENT_PACKAGE'),(192,58,'CLIENT_PACKAGE'),(193,46,'CLIENT_PACKAGE'),(194,52,'CLIENT_PACKAGE'),(195,52,'LEFT_FREE_KEY'),(196,58,'URL_PARAMS'),(197,58,'ACTIVITY_FLAG'),(198,57,'MSG'),(199,58,'offers_webview_tag'),(200,56,'adWidth'),(201,58,'URL'),(202,43,'WAPS_ID'),(203,48,'WAPS_ID'),(204,58,'WAPS_ID'),(205,46,'WAPS_ID'),(206,52,'WAPS_ID'),(207,52,'ACTION_KEY'),(208,54,'shouldShowTitlebar'),(209,54,'shouldMakeOverlayTransparent'),(210,52,'SCROLL_Y_KEY'),(211,53,'appName'),(212,46,'MARKED'),(213,54,'transitionTime'),(214,54,'url'),(215,55,'overlayTitle'),(216,52,'START_DIES_KEY'),(217,52,'TOP_FREE_KEY'),(218,53,'appId'),(219,43,'DEVICE_ID'),(220,48,'DEVICE_ID'),(221,58,'DEVICE_ID'),(222,46,'DEVICE_ID'),(223,52,'DEVICE_ID'),(224,55,'shouldShowBottomBar'),(225,54,'shouldResizeOverlay'),(226,53,'actType'),(227,58,'USER_ID'),(228,55,'shouldShowTitlebar'),(229,46,'ZOOM'),(230,43,'DOMOB_PID'),(231,48,'DOMOB_PID'),(232,55,'DOMOB_PID'),(233,59,'DOMOB_PID'),(234,46,'DOMOB_PID'),(235,54,'DOMOB_PID'),(236,58,'Notify_Id'),(237,54,'overlayTransition'),(238,59,'ST_MY_PID'),(239,57,'TYPEdsada'),(240,55,'FSAd'),(241,43,'DOMOB_ALLOW_LOCATION'),(242,48,'DOMOB_ALLOW_LOCATION'),(243,55,'DOMOB_ALLOW_LOCATION'),(244,59,'DOMOB_ALLOW_LOCATION'),(245,46,'DOMOB_ALLOW_LOCATION'),(246,54,'DOMOB_ALLOW_LOCATION'),(247,55,'transitionTime'),(248,43,'DOMOB_TEST_MODE'),(249,48,'DOMOB_TEST_MODE'),(250,55,'DOMOB_TEST_MODE'),(251,59,'DOMOB_TEST_MODE'),(252,46,'DOMOB_TEST_MODE'),(253,54,'DOMOB_TEST_MODE'),(254,52,'LAYOUT_KEY_KEY'),(255,55,'shouldResizeOverlay'),(256,55,'shouldEnableBottomBar'),(257,43,'CURRENT_PAGE'),(258,58,'UrlPath'),(259,52,'CURRENT_LAYER_KEY'),(260,52,'UNDO_KEY'),(261,52,'SCALE_KEY'),(262,56,'url'),(263,58,'isFinshClose');
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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',0,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'r',1,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'s',0,NULL,NULL),(13,13,'r',1,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'s',0,NULL,NULL),(22,22,'s',0,NULL,NULL),(23,23,'s',0,NULL,NULL),(24,24,'r',1,NULL,NULL),(25,25,'r',1,NULL,NULL),(26,26,'r',1,NULL,NULL),(27,27,'r',1,NULL,NULL),(28,28,'r',1,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'s',0,NULL,NULL),(36,36,'r',1,NULL,NULL),(37,37,'r',1,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',1,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',1,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'s',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'r',1,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'s',0,NULL,NULL),(60,60,'r',1,NULL,NULL),(61,62,'r',1,NULL,NULL),(62,86,'a',1,NULL,NULL),(63,87,'a',0,NULL,NULL),(64,88,'a',0,NULL,NULL),(65,89,'a',0,NULL,NULL),(66,90,'a',0,NULL,NULL),(67,91,'a',0,NULL,NULL),(68,92,'a',0,NULL,NULL),(69,93,'a',0,NULL,NULL),(70,94,'a',0,NULL,NULL),(71,95,'a',0,NULL,NULL),(72,96,'a',0,NULL,NULL),(73,97,'a',0,NULL,NULL),(74,98,'a',0,NULL,NULL),(75,99,'s',0,NULL,NULL),(76,100,'r',1,NULL,NULL),(77,105,'r',1,NULL,NULL),(78,115,'r',1,NULL,NULL),(79,119,'r',1,NULL,NULL),(80,125,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,29),(2,2,7),(3,3,35),(4,4,34),(5,5,4),(6,6,4),(7,7,35),(8,8,4),(9,9,14),(10,10,37),(11,11,35),(12,12,14),(13,13,15),(14,14,3),(15,15,29),(16,17,26),(17,16,5),(18,18,30),(19,19,14),(20,20,12),(21,21,4),(22,22,35),(23,23,14),(24,24,8),(25,25,36),(26,26,5),(27,27,6),(28,28,30),(29,29,14),(30,30,4),(31,31,29),(32,32,12),(33,33,12),(34,34,34),(35,35,14),(36,36,3),(37,37,15),(38,38,6),(39,39,4),(40,40,25),(41,41,12),(42,42,5),(43,43,47),(44,44,12),(45,45,13),(46,46,14),(47,47,19),(48,48,6),(49,49,49),(50,50,4),(51,51,51),(52,52,49),(53,53,49),(54,54,40),(55,55,49),(56,56,45),(57,57,39),(58,58,47),(59,59,12),(60,60,12),(61,61,76),(62,62,66),(63,63,62),(64,64,62),(65,65,62),(66,66,75),(67,67,74),(68,68,75),(69,69,62),(70,70,67),(71,71,73),(72,72,74),(73,73,73),(74,74,73),(75,75,62),(76,76,62),(77,77,62),(78,78,63),(79,79,62),(80,80,73),(81,81,62),(82,82,73),(83,83,73),(84,84,62),(85,85,63),(86,86,62),(87,87,62),(88,88,62),(89,89,75),(90,90,62),(91,91,46),(92,91,57),(93,92,57),(94,92,46),(95,93,43),(96,94,58),(97,95,55),(98,95,54),(99,95,59),(100,95,43),(101,95,46),(102,96,46),(103,97,58),(104,98,55),(105,98,54),(106,98,59),(107,98,43),(108,98,46),(109,99,43),(110,100,58),(111,100,46),(112,101,54),(113,101,55),(114,101,43),(115,101,59),(116,101,46),(117,102,59),(118,103,52),(119,103,48),(120,104,59),(121,105,48),(122,105,52),(123,106,60),(124,107,52),(125,107,48),(126,108,46),(127,108,59),(128,108,43),(129,108,48),(130,108,54),(131,108,55),(132,109,58),(133,110,43),(134,111,46),(135,111,58),(136,112,59),(137,113,43),(138,114,46),(139,114,58),(140,115,46),(141,115,43),(142,116,48),(143,116,55),(144,116,52),(145,116,43),(146,116,46),(147,116,54),(148,116,59);
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
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,61,'<sunkay.ExpressionSMS.CuteSMS$8: void onClick(android.view.View)>',22,'a',NULL),(2,7,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(3,35,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(4,63,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(5,4,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',356,'a',NULL),(6,64,'<com.waps.aa: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(7,65,'<com.ju6.a: boolean b()>',178,'p',NULL),(8,66,'<com.waps.y: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(9,14,'<com.aijiaoyou.android.sipphone.OnlineActivity: void runChongZhi()>',10,'a',NULL),(10,37,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(11,35,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(12,14,'<com.aijiaoyou.android.sipphone.OnlineActivity: void onCreate(android.os.Bundle)>',11,'s',NULL),(13,15,'<com.aijiaoyou.android.sipphone.AgentDetialInfo: void runChongZhi()>',10,'a',NULL),(14,67,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(15,29,'<sunkay.ExpressionSMS.CuteSMS: void onActivityResult(int,int,android.content.Intent)>',21,'p',NULL),(16,68,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(17,26,'<org.linphone.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',10,'s',NULL),(18,69,'<sunkay.ExpressionSMS.SMSReceive$7: void onClick(android.view.View)>',20,'a',NULL),(19,14,'<com.aijiaoyou.android.sipphone.OnlineActivity: void jumpChongZhi()>',10,'a',NULL),(20,70,'<com.ju6.c: boolean b()>',182,'p',0),(21,4,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(22,71,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(23,14,'<com.aijiaoyou.android.sipphone.OnlineActivity: void onResume()>',77,'a',NULL),(24,72,'<com.safesys.remover.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(25,36,'<sunkay.ExpressionSMS.ExpressionSMSReceiver: void onReceive(android.content.Context,android.content.Intent)>',44,'a',NULL),(26,5,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(27,6,'<com.safesys.remover.Uninstall: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(28,30,'<sunkay.ExpressionSMS.SMSReceive: java.lang.String getPeople(java.lang.String)>',12,'p',NULL),(29,73,'<com.aijiaoyou.android.sipphone.OnlineActivity$11: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',72,'a',NULL),(30,4,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',41,'a',NULL),(31,74,'<sunkay.ExpressionSMS.CuteSMS$2: void onClick(android.view.View)>',6,'a',NULL),(32,70,'<com.ju6.c: boolean b()>',257,'p',NULL),(33,75,'<com.ju6.mms.util.SqliteWrapper: android.net.Uri insert(android.content.Context,android.content.ContentResolver,android.net.Uri,android.content.ContentValues)>',4,'p',NULL),(34,76,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(35,14,'<com.aijiaoyou.android.sipphone.OnlineActivity: void startVoiceActivity()>',4,'a',NULL),(36,77,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(37,15,'<com.aijiaoyou.android.sipphone.AgentDetialInfo: void jumpChongZhi()>',10,'a',NULL),(38,78,'<com.safesys.remover.Uninstall$uninstallClickListener: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',21,'a',NULL),(39,79,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(40,25,'<org.linphone.OutgoingCallReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'a',NULL),(41,70,'<com.ju6.c: boolean b()>',179,'p',NULL),(42,5,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(43,80,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(44,81,'<com.ju6.mms.pdu.PduPersister: void a(com.ju6.mms.pdu.PduPart,android.net.Uri,java.lang.String)>',23,'p',0),(45,13,'<com.safesys.remover.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(46,14,'<com.aijiaoyou.android.sipphone.OnlineActivity: void runHistory()>',4,'a',NULL),(47,82,'<com.alipay.android.MobileSecurePayer: boolean pay(java.lang.String,android.os.Handler,int,android.app.Activity)>',20,'s',NULL),(48,83,'<com.adwo.adsdk.g: void run()>',59,'a',NULL),(49,49,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(50,84,'<com.waps.x: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(51,51,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(52,85,'<com.ju6.a: boolean b()>',178,'p',NULL),(53,49,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(54,40,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(55,101,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(56,102,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(57,103,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(58,104,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(59,75,'<com.ju6.mms.util.SqliteWrapper: int update(android.content.Context,android.content.ContentResolver,android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',6,'p',NULL),(60,75,'<com.ju6.mms.util.SqliteWrapper: android.database.Cursor query(android.content.Context,android.content.ContentResolver,android.net.Uri,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String)>',7,'p',NULL),(61,100,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(62,90,'<com.alan.message.InputMessage: void addDataToListview()>',9,'p',NULL),(63,86,'<com.alan.message.SmsMessage: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(64,106,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(65,86,'<com.alan.message.SmsMessage: void onActivityResult(int,int,android.content.Intent)>',45,'p',0),(66,99,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(67,107,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(68,108,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(69,86,'<com.alan.message.SmsMessage: boolean onContextItemSelected(android.view.MenuItem)>',69,'a',NULL),(70,109,'<com.alan.message.Setting$1: void onClick(android.view.View)>',7,'a',NULL),(71,97,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(72,110,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(73,111,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(74,112,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(75,86,'<com.alan.message.SmsMessage: boolean onContextItemSelected(android.view.MenuItem)>',75,'a',NULL),(76,86,'<com.alan.message.SmsMessage: void onActivityResult(int,int,android.content.Intent)>',91,'p',0),(77,86,'<com.alan.message.SmsMessage: boolean onContextItemSelected(android.view.MenuItem)>',49,'a',NULL),(78,87,'<com.alan.message.MessageList: boolean onContextItemSelected(android.view.MenuItem)>',28,'a',NULL),(79,86,'<com.alan.message.SmsMessage: boolean onContextItemSelected(android.view.MenuItem)>',140,'a',NULL),(80,113,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(81,86,'<com.alan.message.SmsMessage: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(82,114,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(83,97,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(84,86,'<com.alan.message.SmsMessage: boolean onContextItemSelected(android.view.MenuItem)>',54,'a',NULL),(85,87,'<com.alan.message.MessageList: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(86,86,'<com.alan.message.SmsMessage: void onActivityResult(int,int,android.content.Intent)>',68,'p',0),(87,86,'<com.alan.message.SmsMessage: boolean onContextItemSelected(android.view.MenuItem)>',63,'a',NULL),(88,86,'<com.alan.message.SmsMessage: boolean onContextItemSelected(android.view.MenuItem)>',145,'a',NULL),(89,99,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(90,86,'<com.alan.message.SmsMessage: boolean onContextItemSelected(android.view.MenuItem)>',59,'a',NULL),(91,116,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(92,117,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(93,43,'<com.gp.mahjongg.SelectActivity: void onItemClick(com.gp.mahjongg.MahjonggData,int)>',51,'a',NULL),(94,58,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(95,118,'<cn.domob.android.a.a$a: java.net.Proxy a(android.content.Context)>',72,'p',NULL),(96,120,'<com.waps.d: void onClick(android.content.DialogInterface,int)>',16,'a',NULL),(97,121,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(98,122,'<cn.domob.android.ads.o$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(99,43,'<com.gp.mahjongg.SelectActivity: void startBuilder(int)>',5,'a',NULL),(100,123,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(101,124,'<cn.domob.android.ads.g$1: void onClick(android.content.DialogInterface,int)>',8,'a',0),(102,59,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(103,126,'<com.waps.s: void onClick(android.view.View)>',59,'a',NULL),(104,127,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(105,126,'<com.waps.s: void onClick(android.view.View)>',35,'a',NULL),(106,60,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(107,126,'<com.waps.s: void onClick(android.view.View)>',85,'a',NULL),(108,128,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor m(android.content.Context)>',11,'p',NULL),(109,58,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(110,43,'<com.gp.mahjongg.SelectActivity: boolean onMenuItemSelected(int,android.view.MenuItem)>',10,'a',NULL),(111,129,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(112,59,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(113,43,'<com.gp.mahjongg.SelectActivity: boolean onMenuItemSelected(int,android.view.MenuItem)>',14,'a',NULL),(114,130,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(115,131,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(116,132,'<cn.domob.android.ads.o: void v(cn.domob.android.ads.o)>',6,'a',NULL);
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
INSERT INTO `IActions` VALUES (1,1,8),(2,5,1),(3,7,1),(4,21,10),(5,23,1),(6,22,1),(7,24,8),(8,25,1),(9,27,8),(10,31,1),(11,32,1),(12,34,1),(13,35,1),(14,36,1),(15,37,1),(16,40,11),(17,43,1),(18,44,12),(19,45,1),(20,46,10),(21,48,1),(22,49,1),(23,53,13),(24,54,11),(25,55,14),(26,58,1),(27,62,1),(28,63,15),(29,64,16),(30,66,11),(31,68,17),(32,69,8),(33,70,11),(34,72,8),(35,73,17),(36,74,17),(37,75,11),(38,77,11),(39,79,16),(40,80,11),(41,81,18),(42,82,11),(43,83,11),(44,84,11),(45,85,8),(46,86,18),(47,87,17),(48,88,11),(49,89,1),(50,90,17),(51,91,1),(52,92,17),(53,93,11),(54,94,17),(55,95,8),(56,97,11),(57,98,17),(58,99,11),(59,100,10),(60,102,17),(61,103,11),(62,104,8),(63,105,11),(64,106,19),(65,107,11),(66,108,19),(67,109,17),(68,110,11),(69,111,16),(70,117,10),(71,118,1),(72,119,1),(73,120,20),(74,121,20),(75,123,1),(76,124,1),(77,125,11),(78,127,20),(79,130,20),(80,134,11),(81,136,1),(82,137,1),(83,145,1),(84,146,1),(85,147,10),(86,150,1),(87,151,1),(88,154,11),(89,156,11),(90,157,11),(91,158,11),(92,159,11),(93,161,11),(94,164,11),(95,165,1),(96,166,1),(97,168,1),(98,169,1),(99,174,11),(100,181,11);
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
INSERT INTO `ICategories` VALUES (1,5,1),(2,7,3),(3,23,1),(4,25,3),(5,31,3),(6,32,1),(7,34,1),(8,35,1),(9,36,3),(10,37,3),(11,43,1),(12,45,3),(13,48,1),(14,49,3),(15,58,1),(16,62,3),(17,81,4),(18,83,4),(19,86,4),(20,89,3),(21,91,1),(22,118,1),(23,119,3),(24,123,1),(25,124,3),(26,136,1),(27,137,3),(28,145,1),(29,146,3),(30,150,1),(31,151,3),(32,165,3),(33,166,1),(34,168,1),(35,169,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'com/google/update/UpdateService'),(2,3,'com/google/update/Dialog'),(3,4,'com/google/update/Dialog'),(4,6,'(.*)'),(5,8,'NULL-CONSTANT'),(6,11,'com/aijiaoyou/android/sipphone/ChongZhiActivity'),(7,12,'com/google/update/UpdateService'),(8,9,'com/waps/OffersWebView'),(9,13,'com/aijiaoyou/android/sipphone/ZhiFuBaoChongZhiActivity'),(10,16,'org/linphone/LinphoneService'),(11,15,'com/google/update/Dialog'),(12,14,'com/waps/OffersWebView'),(13,17,'com/google/update/Dialog'),(14,19,'com/aijiaoyou/android/sipphone/ChongZhiActivity'),(15,20,'com/aijiaoyou/android/sipphone/ZhiFuBaoChongZhiActivity'),(16,22,'org/linphone/LinphoneService'),(17,28,'com/aijiaoyou/android/sipphone/ChongZhiActivity'),(18,29,'com/aijiaoyou/android/sipphone/ZhiFuBaoChongZhiActivity'),(19,33,'com/aijiaoyou/android/sipphone/AgentDetialInfo'),(20,38,'sunkay/ExpressionSMS/SMSReceive'),(21,39,'com/google/update/Dialog'),(22,41,'com/google/update/Dialog'),(23,42,'com/aijiaoyou/android/sipphone/AgentDetialInfo'),(24,47,'com/aijiaoyou/android/sipphone/SongListActivity'),(25,51,'com/aijiaoyou/android/sipphone/ChongZhiActivity'),(26,52,'com/aijiaoyou/android/sipphone/ZhiFuBaoChongZhiActivity'),(27,56,'com/aijiaoyou/android/sipphone/OnlineActivity'),(28,57,'com/google/update/Dialog'),(29,59,'com/safesys/remover/UpdateService'),(30,60,'com/aijiaoyou/android/sipphone/HistoryDetailActivity'),(31,61,'com/google/update/Dialog'),(32,65,'com/google/update/Dialog'),(33,67,'com/google/update/Dialog'),(34,71,'com/google/update/UpdateService'),(35,76,'com/google/update/Dialog'),(36,77,'com.google.android.maps.MapsActivity'),(37,78,'com/google/update/Dialog'),(38,88,'com/adwo/adsdk/AdwoAdBrowserActivity'),(39,96,'com/waps/OffersWebView'),(40,99,'com.google.android.maps.MapsActivity'),(41,103,'com.google.android.maps.MapsActivity'),(42,105,'com.google.android.maps.MapsActivity'),(43,110,'com.google.android.maps.MapsActivity'),(44,112,'com/google/update/UpdateService'),(45,113,'com/alan/message/Setting'),(46,114,'com/waps/OffersWebView'),(47,115,'com/google/update/Dialog'),(48,116,'com/google/update/Dialog'),(49,122,'(.*)'),(50,126,'NULL-CONSTANT'),(51,128,'com/alan/message/MessageList'),(52,129,'com/alan/message/EditMessage'),(53,131,'com/waps/OffersWebView'),(54,132,'com/waps/OffersWebView'),(55,133,'com/alan/message/Help'),(56,138,'com/alan/message/MessageList'),(57,139,'com/alan/message/AddMessage'),(58,140,'com/alan/message/InputMessage'),(59,141,'com/alan/message/MessageList'),(60,142,'com/google/update/Dialog'),(61,143,'com/google/update/Dialog'),(62,144,'com/alan/message/MessageList'),(63,148,'com/gp/mahjongg/PlayActivity'),(64,152,'com/waps/OffersWebView'),(65,153,'NULL-CONSTANT'),(66,160,'com/gp/mahjongg/BuilderActivity'),(67,162,'com/google/update/Dialog'),(68,163,'com/google/update/Dialog'),(69,170,'com/google/update/UpdateService'),(70,171,'com/waps/OffersWebView'),(71,172,'(.*)'),(72,173,'com/gp/background/BackgroundActivity'),(73,175,'com/google/update/Dialog'),(74,176,'com/google/update/Dialog'),(75,177,'com/gp/mahjongg/SettingsActivity'),(76,178,'com/waps/OffersWebView'),(77,179,'com/waps/OffersWebView'),(78,180,'com/waps/OffersWebView');
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,1),(2,24,4),(3,27,5),(4,40,6),(5,44,9),(6,53,13),(7,54,14),(8,55,16),(9,56,17),(10,64,18),(11,66,19),(12,68,20),(13,69,21),(14,70,22),(15,72,23),(16,73,24),(17,74,26),(18,75,27),(19,79,28),(20,80,29),(21,81,30),(22,82,31),(23,83,32),(24,85,33),(25,86,34),(26,87,35),(27,93,36),(28,94,37),(29,97,38),(30,98,39),(31,99,40),(32,102,41),(33,103,42),(34,104,43),(35,105,44),(36,107,45),(37,109,46),(38,110,47),(39,125,52),(40,134,53),(41,154,55),(42,156,56),(43,157,57),(44,158,58),(45,159,59),(46,161,60),(47,164,61),(48,174,63),(49,181,64);
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
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'sms_body'),(2,3,'TYPEdsada'),(3,4,'MSG'),(4,4,'TYPEdsada'),(5,9,'UrlPath'),(6,9,'ACTIVITY_FLAG'),(7,9,'isFinshClose'),(8,9,'offers_webview_tag'),(9,14,'Notify_Url_Params'),(10,14,'UrlPath'),(11,14,'ACTIVITY_FLAG'),(12,15,'TYPEdsada'),(13,14,'isFinshClose'),(14,14,'offers_webview_tag'),(15,17,'MSG'),(16,17,'TYPEdsada'),(17,24,'sms_body'),(18,27,'sms_body'),(19,33,'sign'),(20,33,'fee'),(21,33,'sex'),(22,33,'phone'),(23,33,'nickname'),(24,33,'largeimgurl'),(25,33,'state'),(26,33,'callflag'),(27,33,'city'),(28,38,'message'),(29,39,'MSG'),(30,38,'contact'),(31,39,'TYPEdsada'),(32,41,'TYPEdsada'),(33,42,'sign'),(34,42,'fee'),(35,42,'phone'),(36,42,'sex'),(37,42,'largeimgurl'),(38,42,'nickname'),(39,42,'age'),(40,42,'state'),(41,42,'city'),(42,57,'MSG'),(43,57,'TYPEdsada'),(44,61,'TYPEdsada'),(45,65,'TYPEdsada'),(46,67,'MSG'),(47,67,'TYPEdsada'),(48,68,'android.intent.extra.TEXT'),(49,68,'android.intent.extra.SUBJECT'),(50,68,'android.intent.extra.EMAIL'),(51,69,'sms_body'),(52,73,'android.intent.extra.EMAIL'),(53,74,'android.intent.extra.TEXT'),(54,74,'android.intent.extra.EMAIL'),(55,76,'TYPEdsada'),(56,78,'MSG'),(57,78,'TYPEdsada'),(58,87,'android.intent.extra.EMAIL'),(59,88,'url'),(60,92,'android.intent.extra.TEXT'),(61,92,'android.intent.extra.SUBJECT'),(62,92,'android.intent.extra.EMAIL'),(63,94,'android.intent.extra.TEXT'),(64,94,'android.intent.extra.SUBJECT'),(65,94,'android.intent.extra.EMAIL'),(66,96,'USER_ID'),(67,96,'CLIENT_PACKAGE'),(68,96,'Offers_URL'),(69,96,'URL_PARAMS'),(70,102,'android.intent.extra.TEXT'),(71,102,'android.intent.extra.EMAIL'),(72,104,'sms_body'),(73,106,'query'),(74,114,'USER_ID'),(75,114,'CLIENT_PACKAGE'),(76,114,'Offers_URL'),(77,114,'offers_webview_tag'),(78,114,'URL_PARAMS'),(79,115,'TYPEdsada'),(80,116,'MSG'),(81,116,'TYPEdsada'),(82,128,'type'),(83,129,'itemContent'),(84,129,'type'),(85,131,'UrlPath'),(86,131,'ACTIVITY_FLAG'),(87,131,'isFinshClose'),(88,131,'offers_webview_tag'),(89,132,'Notify_Url_Params'),(90,132,'UrlPath'),(91,132,'ACTIVITY_FLAG'),(92,132,'isFinshClose'),(93,132,'offers_webview_tag'),(94,138,'type'),(95,139,'type'),(96,141,'type'),(97,142,'TYPEdsada'),(98,143,'MSG'),(99,143,'TYPEdsada'),(100,144,'type'),(101,148,'GAME_ID'),(102,152,'CLIENT_PACKAGE'),(103,152,'URL'),(104,152,'isFinshClose'),(105,152,'offers_webview_tag'),(106,160,'GAME_ID'),(107,162,'MSG'),(108,162,'TYPEdsada'),(109,163,'TYPEdsada'),(110,171,'CLIENT_PACKAGE'),(111,171,'URL'),(112,171,'isFinshClose'),(113,171,'offers_webview_tag'),(114,175,'MSG'),(115,175,'TYPEdsada'),(116,176,'TYPEdsada'),(117,178,'UrlPath'),(118,178,'ACTIVITY_FLAG'),(119,178,'isFinshClose'),(120,178,'offers_webview_tag'),(121,179,'Notify_Url_Params'),(122,179,'UrlPath'),(123,179,'ACTIVITY_FLAG'),(124,179,'isFinshClose'),(125,179,'offers_webview_tag'),(126,180,'USER_ID'),(127,180,'CLIENT_PACKAGE'),(128,180,'Offers_URL'),(129,180,'offers_webview_tag'),(130,180,'URL_PARAMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,4),(4,3,2),(5,3,3),(6,4,1),(7,5,3),(8,5,2),(9,5,4),(10,6,1),(11,7,5),(12,8,6),(13,9,3),(14,10,4),(15,10,2),(16,11,3),(17,12,1),(18,13,7),(19,14,2),(20,14,4),(21,14,3),(22,15,1),(23,16,1),(24,17,4),(25,17,2),(26,17,3),(27,18,2),(28,18,3),(29,18,4),(30,19,9),(31,20,1),(32,21,2),(33,21,3),(34,21,4),(35,22,9),(36,23,9),(37,24,9),(38,25,9),(39,26,9);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,4,2),(4,4,1),(5,12,1),(6,15,1),(7,16,1),(8,20,1);
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
INSERT INTO `IFData` VALUES (1,19,'package',NULL,NULL,NULL,NULL,NULL),(2,22,'package',NULL,NULL,NULL,NULL,NULL),(3,23,'package',NULL,NULL,NULL,NULL,NULL),(4,24,'package',NULL,NULL,NULL,NULL,NULL),(5,25,'package',NULL,NULL,NULL,NULL,NULL),(6,26,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,54,'application','vnd.android.package-archive'),(2,66,'application','vnd.android.package-archive'),(3,70,'*','*'),(4,82,'(.*)','(.*)'),(5,86,'(.*)','(.*)'),(6,92,'message','rfc882'),(7,93,'application','vnd.android.package-archive'),(8,97,'(.*)','(.*)'),(9,107,'*','*'),(10,120,'vnd.android.cursor.item','phone'),(11,121,'image','*'),(12,125,'application','vnd.android.package-archive'),(13,127,'vnd.android.cursor.item','phone'),(14,130,'vnd.android.cursor.item','phone'),(15,134,'application','vnd.android.package-archive'),(16,154,'application','vnd.android.package-archive'),(17,156,'application','vnd.android.package-archive'),(18,157,'application','vnd.android.package-archive'),(19,158,'application','vnd.android.package-archive'),(20,159,'application','vnd.android.package-archive'),(21,161,'application','vnd.android.package-archive'),(22,174,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'com.ps.blackwhite'),(2,3,'sunkay.ExpressionSMS'),(3,4,'sunkay.ExpressionSMS'),(4,6,'(.*)'),(5,5,'com.noshufou.android.su'),(6,7,'com.noshufou.android.su'),(7,8,'NULL-CONSTANT'),(8,11,'com.aijiaoyou.android.sipphone'),(9,12,'sunkay.ExpressionSMS'),(10,9,'com.ps.blackwhite'),(11,13,'com.aijiaoyou.android.sipphone'),(12,16,'com.aijiaoyou.android.sipphone'),(13,15,'sunkay.ExpressionSMS'),(14,14,'com.ps.blackwhite'),(15,17,'sunkay.ExpressionSMS'),(16,19,'com.aijiaoyou.android.sipphone'),(17,20,'com.aijiaoyou.android.sipphone'),(18,23,'com.ps.blackwhite'),(19,22,'com.aijiaoyou.android.sipphone'),(20,25,'com.ps.blackwhite'),(21,28,'com.aijiaoyou.android.sipphone'),(22,29,'com.aijiaoyou.android.sipphone'),(23,31,'sunkay.ExpressionSMS'),(24,32,'(.*)'),(25,34,'com.noshufou.android.su'),(26,35,'sunkay.ExpressionSMS'),(27,36,'(.*)'),(28,37,'com.noshufou.android.su'),(29,33,'com.aijiaoyou.android.sipphone'),(30,38,'sunkay.ExpressionSMS'),(31,39,'com.ps.blackwhite'),(32,41,'com.ps.blackwhite'),(33,43,'(.*)'),(34,45,'(.*)'),(35,42,'com.aijiaoyou.android.sipphone'),(36,47,'com.aijiaoyou.android.sipphone'),(37,48,'com.noshufou.android.su'),(38,49,'com.noshufou.android.su'),(39,51,'com.aijiaoyou.android.sipphone'),(40,52,'com.aijiaoyou.android.sipphone'),(41,56,'com.aijiaoyou.android.sipphone'),(42,57,'com.ps.blackwhite'),(43,58,'com.noshufou.android.su'),(44,59,'com.safesys.remover'),(45,60,'com.aijiaoyou.android.sipphone'),(46,62,'com.noshufou.android.su'),(47,61,'com.ps.blackwhite'),(48,65,'com.alan.asianmeinv1'),(49,67,'com.alan.asianmeinv1'),(50,71,'com.alan.asianmeinv1'),(51,76,'com.alan.asianmeinv1'),(52,77,'com.google.android.apps.maps'),(53,78,'com.alan.asianmeinv1'),(54,88,'com.safesys.remover'),(55,89,'com.alan.asianmeinv1'),(56,91,'com.alan.asianmeinv1'),(57,96,'com.alan.asianmeinv1'),(58,99,'com.google.android.apps.maps'),(59,103,'com.google.android.apps.maps'),(60,105,'com.google.android.apps.maps'),(61,110,'com.google.android.apps.maps'),(62,112,'com.alan.message'),(63,113,'com.alan.message'),(64,114,'com.alan.message'),(65,115,'com.alan.message'),(66,116,'com.alan.message'),(67,118,'com.alan.message'),(68,119,'com.alan.message'),(69,122,'(.*)'),(70,123,'com.noshufou.android.su'),(71,124,'com.noshufou.android.su'),(72,126,'NULL-CONSTANT'),(73,128,'com.alan.message'),(74,129,'com.alan.message'),(75,131,'com.alan.message'),(76,132,'com.alan.message'),(77,133,'com.alan.message'),(78,136,'(.*)'),(79,137,'(.*)'),(80,138,'com.alan.message'),(81,139,'com.alan.message'),(82,140,'com.alan.message'),(83,141,'com.alan.message'),(84,142,'com.alan.message'),(85,143,'com.alan.message'),(86,144,'com.alan.message'),(87,145,'com.noshufou.android.su'),(88,146,'com.noshufou.android.su'),(89,148,'com.gp.mahjongg'),(90,150,'(.*)'),(91,151,'(.*)'),(92,152,'com.gp.mahjongg'),(93,153,'NULL-CONSTANT'),(94,160,'com.gp.mahjongg'),(95,162,'com.gp.mahjongg'),(96,163,'com.gp.mahjongg'),(97,165,'com.gp.mahjongg'),(98,166,'com.gp.mahjongg'),(99,168,'NULL-CONSTANT'),(100,169,'NULL-CONSTANT'),(101,170,'com.gp.mahjongg'),(102,171,'com.gp.mahjongg'),(103,172,'(.*)'),(104,173,'com.gp.mahjongg'),(105,175,'com.gp.mahjongg'),(106,176,'com.gp.mahjongg'),(107,177,'com.gp.mahjongg'),(108,178,'com.gp.mahjongg'),(109,179,'com.gp.mahjongg'),(110,180,'com.gp.mahjongg');
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
INSERT INTO `IntentFilters` VALUES (1,2,0),(2,6,0),(3,7,0),(4,10,0),(5,13,0),(6,20,0),(7,24,0),(8,25,0),(9,26,0),(10,27,0),(11,28,0),(12,29,0),(13,36,0),(14,37,0),(15,39,0),(16,43,0),(17,51,0),(18,60,0),(19,61,0),(20,62,0),(21,76,0),(22,77,0),(23,78,0),(24,79,0),(25,80,0),(26,79,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,0,0),(3,3,0,0),(4,3,0,0),(5,4,1,0),(6,5,0,0),(7,4,1,0),(8,6,0,0),(9,8,0,0),(10,9,1,0),(11,9,0,0),(12,10,0,0),(13,9,0,0),(14,8,0,0),(15,11,0,0),(16,12,0,0),(17,11,0,0),(18,13,1,0),(19,13,0,0),(20,13,0,0),(21,14,1,0),(22,17,0,0),(23,16,1,0),(24,18,1,0),(25,16,1,0),(26,19,1,0),(27,18,1,0),(28,19,0,0),(29,19,0,0),(30,21,1,0),(31,22,1,0),(32,21,1,0),(33,23,0,0),(34,24,1,0),(35,22,1,0),(36,21,1,0),(37,24,1,0),(38,25,0,0),(39,26,0,0),(40,27,1,0),(41,26,0,0),(42,29,0,0),(43,30,1,0),(44,31,1,0),(45,30,1,0),(46,34,1,0),(47,35,0,0),(48,36,1,0),(49,36,1,0),(50,37,1,0),(51,37,0,0),(52,37,0,0),(53,38,1,0),(54,39,1,0),(55,40,1,0),(56,40,0,0),(57,42,0,0),(58,43,1,0),(59,45,0,0),(60,46,0,0),(61,42,0,0),(62,43,1,0),(63,47,1,0),(64,48,1,0),(65,49,0,0),(66,50,1,0),(67,49,0,0),(68,48,1,0),(69,48,1,0),(70,48,1,0),(71,51,0,0),(72,48,1,0),(73,48,1,0),(74,48,1,0),(75,48,1,0),(76,53,0,0),(77,48,0,0),(78,53,0,0),(79,48,1,0),(80,48,1,0),(81,54,1,0),(82,48,1,0),(83,54,1,0),(84,48,1,0),(85,48,1,0),(86,54,1,0),(87,48,1,0),(88,48,0,0),(89,55,1,0),(90,48,1,0),(91,55,1,0),(92,48,1,0),(93,56,1,0),(94,48,1,0),(95,48,1,0),(96,57,0,0),(97,48,1,0),(98,48,1,0),(99,48,0,0),(100,58,1,0),(101,48,1,0),(102,48,1,0),(103,48,0,0),(104,48,1,0),(105,48,0,0),(106,48,1,0),(107,48,1,0),(108,48,1,0),(109,48,1,0),(110,48,0,0),(111,48,1,0),(112,61,0,0),(113,63,0,0),(114,64,0,0),(115,66,0,0),(116,66,0,0),(117,67,1,0),(118,68,1,0),(119,68,1,0),(120,69,1,0),(121,70,1,0),(122,71,0,0),(123,72,1,0),(124,72,1,0),(125,73,1,0),(126,74,0,0),(127,75,1,0),(128,77,0,0),(129,78,0,0),(130,79,1,0),(131,80,0,0),(132,80,0,0),(133,81,0,0),(134,82,1,0),(135,83,1,0),(136,83,1,0),(137,83,1,0),(138,84,0,0),(139,85,0,0),(140,87,0,0),(141,88,0,0),(142,89,0,0),(143,89,0,0),(144,90,0,0),(145,91,1,0),(146,91,1,0),(147,92,1,0),(148,93,0,0),(149,94,1,0),(150,94,1,0),(151,94,1,0),(152,96,0,0),(153,97,0,0),(154,98,1,0),(155,98,1,0),(156,98,1,0),(157,98,1,0),(158,98,1,0),(159,98,1,0),(160,99,0,0),(161,100,1,0),(162,102,0,0),(163,102,0,0),(164,103,1,0),(165,104,1,0),(166,104,1,0),(167,105,1,0),(168,105,1,0),(169,105,1,0),(170,106,0,0),(171,107,0,0),(172,109,0,0),(173,110,0,0),(174,111,1,0),(175,112,0,0),(176,112,0,0),(177,113,0,0),(178,114,0,0),(179,114,0,0),(180,115,0,0),(181,116,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=495 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,30,39,2,NULL),(2,32,39,2,NULL),(3,36,39,2,NULL),(4,43,39,2,NULL),(5,45,39,2,NULL),(6,10,39,2,NULL),(7,26,39,2,NULL),(8,18,39,2,NULL),(9,50,39,2,NULL),(10,81,39,2,NULL),(11,83,39,2,NULL),(12,149,39,2,NULL),(13,150,39,2,NULL),(14,151,39,2,NULL),(15,135,39,2,NULL),(16,136,39,2,NULL),(17,137,39,2,NULL),(18,81,2,2,NULL),(19,83,2,2,NULL),(20,81,7,2,NULL),(21,83,7,2,NULL),(22,81,6,2,NULL),(23,83,6,2,NULL),(24,81,13,2,NULL),(25,83,13,2,NULL),(26,81,10,2,NULL),(27,83,10,2,NULL),(28,81,20,2,NULL),(29,83,20,2,NULL),(30,81,24,2,NULL),(31,83,24,2,NULL),(32,81,25,2,NULL),(33,83,25,2,NULL),(34,81,26,2,NULL),(35,83,26,2,NULL),(36,81,27,2,NULL),(37,83,27,2,NULL),(38,81,28,2,NULL),(39,83,28,2,NULL),(40,81,29,2,NULL),(41,83,29,2,NULL),(42,81,36,2,NULL),(43,83,36,2,NULL),(44,81,37,2,NULL),(45,83,37,2,NULL),(46,81,51,2,NULL),(47,83,51,2,NULL),(48,81,43,2,NULL),(49,83,43,2,NULL),(50,81,60,2,NULL),(51,83,60,2,NULL),(52,81,62,2,NULL),(53,83,62,2,NULL),(54,81,76,2,NULL),(55,83,76,2,NULL),(56,65,3,2,NULL),(57,65,34,2,NULL),(58,65,47,2,NULL),(59,65,57,2,NULL),(60,65,74,2,NULL),(61,67,3,2,NULL),(62,67,34,2,NULL),(63,67,47,2,NULL),(64,67,57,2,NULL),(65,67,74,2,NULL),(66,76,3,2,NULL),(67,76,34,2,NULL),(68,76,47,2,NULL),(69,76,57,2,NULL),(70,76,74,2,NULL),(71,78,3,2,NULL),(72,78,34,2,NULL),(73,148,46,2,NULL),(74,78,47,2,NULL),(75,160,52,2,NULL),(76,78,57,2,NULL),(77,173,48,2,NULL),(78,78,74,2,NULL),(79,177,50,2,NULL),(80,71,5,2,NULL),(81,71,35,2,NULL),(82,30,43,2,NULL),(83,71,49,2,NULL),(84,32,43,2,NULL),(85,71,59,2,NULL),(86,36,43,2,NULL),(87,71,75,2,NULL),(88,43,43,2,NULL),(89,30,51,2,NULL),(90,45,43,2,NULL),(91,32,51,2,NULL),(92,10,43,2,NULL),(93,36,51,2,NULL),(94,26,43,2,NULL),(95,43,51,2,NULL),(96,18,43,2,NULL),(97,45,51,2,NULL),(98,50,43,2,NULL),(99,10,51,2,NULL),(100,149,43,2,NULL),(101,26,51,2,NULL),(102,150,43,2,NULL),(103,18,51,2,NULL),(104,151,43,2,NULL),(105,50,51,2,NULL),(106,135,43,2,NULL),(107,149,51,2,NULL),(108,136,43,2,NULL),(109,150,51,2,NULL),(110,137,43,2,NULL),(111,151,51,2,NULL),(112,149,2,2,NULL),(113,135,51,2,NULL),(114,150,2,2,NULL),(115,136,51,2,NULL),(116,151,2,2,NULL),(117,137,51,2,NULL),(118,149,7,2,NULL),(119,150,7,2,NULL),(120,151,7,2,NULL),(121,149,6,2,NULL),(122,150,6,2,NULL),(123,151,6,2,NULL),(124,149,13,2,NULL),(125,150,13,2,NULL),(126,151,13,2,NULL),(127,149,10,2,NULL),(128,150,10,2,NULL),(129,151,10,2,NULL),(130,149,20,2,NULL),(131,150,20,2,NULL),(132,151,20,2,NULL),(133,149,24,2,NULL),(134,150,24,2,NULL),(135,151,24,2,NULL),(136,149,25,2,NULL),(137,150,25,2,NULL),(138,151,25,2,NULL),(139,149,26,2,NULL),(140,150,26,2,NULL),(141,151,26,2,NULL),(142,149,27,2,NULL),(143,150,27,2,NULL),(144,151,27,2,NULL),(145,149,28,2,NULL),(146,150,28,2,NULL),(147,151,28,2,NULL),(148,149,29,2,NULL),(149,150,29,2,NULL),(150,151,29,2,NULL),(151,149,36,2,NULL),(152,150,36,2,NULL),(153,151,36,2,NULL),(154,149,37,2,NULL),(155,150,37,2,NULL),(156,151,37,2,NULL),(157,149,60,2,NULL),(158,150,60,2,NULL),(159,151,60,2,NULL),(160,149,62,2,NULL),(161,150,62,2,NULL),(162,151,62,2,NULL),(163,149,76,2,NULL),(164,150,76,2,NULL),(165,151,76,2,NULL),(166,162,3,2,NULL),(167,162,34,2,NULL),(168,162,47,2,NULL),(169,162,57,2,NULL),(170,162,74,2,NULL),(171,163,3,2,NULL),(172,163,34,2,NULL),(173,163,47,2,NULL),(174,163,57,2,NULL),(175,163,74,2,NULL),(176,175,3,2,NULL),(177,175,34,2,NULL),(178,175,47,2,NULL),(179,175,57,2,NULL),(180,175,74,2,NULL),(181,176,3,2,NULL),(182,176,34,2,NULL),(183,176,47,2,NULL),(184,176,57,2,NULL),(185,176,74,2,NULL),(186,170,5,2,NULL),(187,170,35,2,NULL),(188,170,49,2,NULL),(189,170,59,2,NULL),(190,170,75,2,NULL),(191,30,60,2,NULL),(192,32,60,2,NULL),(193,36,60,2,NULL),(194,30,2,2,NULL),(195,43,60,2,NULL),(196,32,2,2,NULL),(197,45,60,2,NULL),(198,36,2,2,NULL),(199,10,60,2,NULL),(200,43,2,2,NULL),(201,26,60,2,NULL),(202,45,2,2,NULL),(203,18,60,2,NULL),(204,10,2,2,NULL),(205,50,60,2,NULL),(206,26,2,2,NULL),(207,135,60,2,NULL),(208,18,2,2,NULL),(209,136,60,2,NULL),(210,50,2,2,NULL),(211,137,60,2,NULL),(212,135,2,2,NULL),(213,136,2,2,NULL),(214,137,2,2,NULL),(215,30,7,2,NULL),(216,32,7,2,NULL),(217,36,7,2,NULL),(218,43,7,2,NULL),(219,45,7,2,NULL),(220,30,6,2,NULL),(221,32,6,2,NULL),(222,36,6,2,NULL),(223,43,6,2,NULL),(224,45,6,2,NULL),(225,30,13,2,NULL),(226,32,13,2,NULL),(227,36,13,2,NULL),(228,43,13,2,NULL),(229,45,13,2,NULL),(230,30,10,2,NULL),(231,32,10,2,NULL),(232,36,10,2,NULL),(233,43,10,2,NULL),(234,45,10,2,NULL),(235,30,20,2,NULL),(236,32,20,2,NULL),(237,36,20,2,NULL),(238,43,20,2,NULL),(239,45,20,2,NULL),(240,30,24,2,NULL),(241,32,24,2,NULL),(242,36,24,2,NULL),(243,43,24,2,NULL),(244,45,24,2,NULL),(245,30,25,2,NULL),(246,32,25,2,NULL),(247,36,25,2,NULL),(248,43,25,2,NULL),(249,45,25,2,NULL),(250,30,26,2,NULL),(251,32,26,2,NULL),(252,36,26,2,NULL),(253,43,26,2,NULL),(254,45,26,2,NULL),(255,30,27,2,NULL),(256,32,27,2,NULL),(257,36,27,2,NULL),(258,43,27,2,NULL),(259,45,27,2,NULL),(260,30,28,2,NULL),(261,32,28,2,NULL),(262,36,28,2,NULL),(263,43,28,2,NULL),(264,45,28,2,NULL),(265,30,29,2,NULL),(266,32,29,2,NULL),(267,36,29,2,NULL),(268,43,29,2,NULL),(269,45,29,2,NULL),(270,30,36,2,NULL),(271,32,36,2,NULL),(272,36,36,2,NULL),(273,43,36,2,NULL),(274,45,36,2,NULL),(275,30,37,2,NULL),(276,32,37,2,NULL),(277,36,37,2,NULL),(278,43,37,2,NULL),(279,45,37,2,NULL),(280,30,62,2,NULL),(281,32,62,2,NULL),(282,36,62,2,NULL),(283,43,62,2,NULL),(284,45,62,2,NULL),(285,30,76,2,NULL),(286,32,76,2,NULL),(287,36,76,2,NULL),(288,43,76,2,NULL),(289,45,76,2,NULL),(290,39,3,2,NULL),(291,39,34,2,NULL),(292,39,47,2,NULL),(293,39,57,2,NULL),(294,39,74,2,NULL),(295,41,3,2,NULL),(296,41,34,2,NULL),(297,41,47,2,NULL),(298,41,57,2,NULL),(299,41,74,2,NULL),(300,57,3,2,NULL),(301,57,34,2,NULL),(302,57,47,2,NULL),(303,57,57,2,NULL),(304,57,74,2,NULL),(305,61,3,2,NULL),(306,61,34,2,NULL),(307,61,47,2,NULL),(308,61,57,2,NULL),(309,61,74,2,NULL),(310,2,5,2,NULL),(311,2,35,2,NULL),(312,2,49,2,NULL),(313,2,59,2,NULL),(314,2,75,2,NULL),(315,10,7,2,NULL),(316,26,7,2,NULL),(317,18,7,2,NULL),(318,50,7,2,NULL),(319,135,7,2,NULL),(320,136,7,2,NULL),(321,137,7,2,NULL),(322,10,29,2,NULL),(323,26,29,2,NULL),(324,18,29,2,NULL),(325,50,29,2,NULL),(326,135,29,2,NULL),(327,136,29,2,NULL),(328,137,29,2,NULL),(329,3,3,2,NULL),(330,3,34,2,NULL),(331,3,47,2,NULL),(332,3,57,2,NULL),(333,3,74,2,NULL),(334,4,3,2,NULL),(335,4,34,2,NULL),(336,4,47,2,NULL),(337,4,57,2,NULL),(338,4,74,2,NULL),(339,15,3,2,NULL),(340,15,34,2,NULL),(341,15,47,2,NULL),(342,15,57,2,NULL),(343,15,74,2,NULL),(344,17,3,2,NULL),(345,17,34,2,NULL),(346,17,47,2,NULL),(347,17,57,2,NULL),(348,17,74,2,NULL),(349,38,30,2,NULL),(350,10,36,2,NULL),(351,26,36,2,NULL),(352,18,36,2,NULL),(353,50,36,2,NULL),(354,135,36,2,NULL),(355,136,36,2,NULL),(356,137,36,2,NULL),(357,12,5,2,NULL),(358,12,35,2,NULL),(359,12,49,2,NULL),(360,12,59,2,NULL),(361,12,75,2,NULL),(362,10,37,2,NULL),(363,26,37,2,NULL),(364,18,37,2,NULL),(365,50,37,2,NULL),(366,135,37,2,NULL),(367,136,37,2,NULL),(368,137,37,2,NULL),(369,113,67,2,NULL),(370,128,63,2,NULL),(371,133,68,2,NULL),(372,138,63,2,NULL),(373,140,66,2,NULL),(374,141,63,2,NULL),(375,144,63,2,NULL),(376,10,62,2,NULL),(377,26,62,2,NULL),(378,18,62,2,NULL),(379,50,62,2,NULL),(380,135,62,2,NULL),(381,136,62,2,NULL),(382,137,62,2,NULL),(383,129,64,2,NULL),(384,139,65,2,NULL),(385,135,6,2,NULL),(386,136,6,2,NULL),(387,10,6,2,NULL),(388,137,6,2,NULL),(389,26,6,2,NULL),(390,135,13,2,NULL),(391,18,6,2,NULL),(392,136,13,2,NULL),(393,50,6,2,NULL),(394,137,13,2,NULL),(395,59,12,2,NULL),(396,135,10,2,NULL),(397,10,13,2,NULL),(398,136,10,2,NULL),(399,26,13,2,NULL),(400,137,10,2,NULL),(401,18,13,2,NULL),(402,135,20,2,NULL),(403,50,13,2,NULL),(404,136,20,2,NULL),(405,137,20,2,NULL),(406,135,24,2,NULL),(407,136,24,2,NULL),(408,137,24,2,NULL),(409,135,25,2,NULL),(410,136,25,2,NULL),(411,137,25,2,NULL),(412,135,26,2,NULL),(413,136,26,2,NULL),(414,137,26,2,NULL),(415,135,27,2,NULL),(416,136,27,2,NULL),(417,137,27,2,NULL),(418,135,28,2,NULL),(419,136,28,2,NULL),(420,137,28,2,NULL),(421,135,76,2,NULL),(422,136,76,2,NULL),(423,137,76,2,NULL),(424,115,3,2,NULL),(425,115,34,2,NULL),(426,115,47,2,NULL),(427,115,57,2,NULL),(428,115,74,2,NULL),(429,116,3,2,NULL),(430,116,34,2,NULL),(431,116,47,2,NULL),(432,116,57,2,NULL),(433,116,74,2,NULL),(434,142,3,2,NULL),(435,142,34,2,NULL),(436,142,47,2,NULL),(437,142,57,2,NULL),(438,142,74,2,NULL),(439,143,3,2,NULL),(440,143,34,2,NULL),(441,143,47,2,NULL),(442,143,57,2,NULL),(443,143,74,2,NULL),(444,112,5,2,NULL),(445,112,35,2,NULL),(446,112,49,2,NULL),(447,112,59,2,NULL),(448,112,75,2,NULL),(449,10,76,2,NULL),(450,26,76,2,NULL),(451,18,76,2,NULL),(452,50,76,2,NULL),(453,10,10,2,NULL),(454,26,10,2,NULL),(455,18,10,2,NULL),(456,50,10,2,NULL),(457,11,18,2,NULL),(458,13,19,2,NULL),(459,16,21,2,NULL),(460,28,18,2,NULL),(461,29,19,2,NULL),(462,33,15,2,NULL),(463,47,16,2,NULL),(464,60,17,2,NULL),(465,10,20,2,NULL),(466,26,20,2,NULL),(467,10,24,2,NULL),(468,26,24,2,NULL),(469,10,25,2,NULL),(470,26,25,2,NULL),(471,10,26,2,NULL),(472,26,26,2,NULL),(473,10,27,2,NULL),(474,26,27,2,NULL),(475,10,28,2,NULL),(476,26,28,2,NULL),(477,19,18,2,NULL),(478,20,19,2,NULL),(479,51,18,2,NULL),(480,52,19,2,NULL),(481,18,20,2,NULL),(482,50,20,2,NULL),(483,18,24,2,NULL),(484,50,24,2,NULL),(485,18,25,2,NULL),(486,50,25,2,NULL),(487,18,26,2,NULL),(488,50,26,2,NULL),(489,18,27,2,NULL),(490,50,27,2,NULL),(491,18,28,2,NULL),(492,50,28,2,NULL),(493,56,14,2,NULL),(494,22,21,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (12,'android.permission.ACCESS_COARSE_LOCATION'),(24,'android.permission.ACCESS_FINE_LOCATION'),(25,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(9,'android.permission.ACCESS_NETWORK_STATE'),(8,'android.permission.ACCESS_WIFI_STATE'),(16,'android.permission.BOOT_COMPLETED'),(27,'android.permission.CHANGE_CONFIGURATION'),(7,'android.permission.CHANGE_WIFI_STATE'),(14,'android.permission.CLEAR_APP_CACHE'),(4,'android.permission.GET_TASKS'),(21,'android.permission.INSTALL_PACKAGES'),(5,'android.permission.INTERNET'),(15,'android.permission.MODIFY_AUDIO_SETTINGS'),(23,'android.permission.READ_CONTACTS'),(20,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(10,'android.permission.READ_SMS'),(3,'android.permission.RECEIVE_BOOT_COMPLETED'),(22,'android.permission.RECEIVE_SMS'),(19,'android.permission.RECORD_AUDIO'),(29,'android.permission.SEND_SMS'),(28,'android.permission.SET_ORIENTATION'),(17,'android.permission.SET_PREFERRED_APPLICATIONS'),(26,'android.permission.SET_WALLPAPER'),(18,'android.permission.VIBRATE'),(13,'android.permission.WAKE_LOCK'),(6,'android.permission.WRITE_EXTERNAL_STORAGE'),(11,'android.permission.WRITE_SMS'),(2,'com.android.launcher.permission.INSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(2,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(3,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(4,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(5,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(6,NULL,NULL,'market://search?q=3D0F649A840D6922D383D34F70112E4A',NULL,NULL,NULL),(7,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(8,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(9,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(10,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(11,NULL,NULL,'content://mms/inbox',NULL,NULL,NULL),(12,NULL,NULL,'content://mms/(.*)/addr',NULL,NULL,NULL),(13,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(15,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(16,NULL,NULL,'tel://(.*);0000000',NULL,NULL,NULL),(17,NULL,NULL,'tel://(.*);0000000',NULL,NULL,NULL),(18,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(19,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(20,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(21,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(22,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(23,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(24,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(25,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(26,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(27,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(28,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(29,NULL,NULL,'(.*)',NULL,NULL,NULL),(30,NULL,NULL,'(.*)',NULL,NULL,NULL),(31,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(32,NULL,NULL,'(.*)',NULL,NULL,NULL),(33,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(34,NULL,NULL,'(.*)',NULL,NULL,NULL),(35,NULL,NULL,'(.*)',NULL,NULL,NULL),(36,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(37,NULL,NULL,'(.*)',NULL,NULL,NULL),(38,NULL,NULL,'(.*)',NULL,NULL,NULL),(39,NULL,NULL,'(.*)',NULL,NULL,NULL),(40,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT((.*))&z=22',NULL,NULL,NULL),(41,NULL,NULL,'(.*)',NULL,NULL,NULL),(42,NULL,NULL,'http://maps.google.com/maps?q=(.*)((.*))&z=22',NULL,NULL,NULL),(43,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(44,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT()&z=22',NULL,NULL,NULL),(45,NULL,NULL,'(.*)',NULL,NULL,NULL),(46,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(47,NULL,NULL,'http://maps.google.com/maps?q=(.*)()&z=22',NULL,NULL,NULL),(48,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(49,NULL,NULL,'content://mms/',NULL,NULL,NULL),(50,NULL,NULL,'content://mms-sms/threadID',NULL,NULL,NULL),(51,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(52,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(53,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(54,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(55,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(56,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(57,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(58,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(59,NULL,NULL,'file://',NULL,NULL,NULL),(60,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(61,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(62,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(63,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(64,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,7,2),(2,15,3),(3,28,7),(4,32,8),(5,33,10),(6,33,11),(7,33,12),(8,41,15),(9,52,25),(10,59,48),(11,60,49),(12,60,50),(13,62,51),(14,95,54),(15,108,62);
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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,2,1),(11,2,5),(12,3,1),(13,2,6),(14,3,3),(15,2,9),(16,3,4),(17,2,10),(18,3,5),(19,2,11),(20,3,6),(21,2,12),(22,3,7),(23,2,13),(24,3,8),(25,3,9),(26,3,13),(27,3,14),(28,3,15),(29,3,17),(30,3,16),(31,3,19),(32,3,18),(33,4,1),(34,4,3),(35,4,5),(36,4,6),(37,4,7),(38,4,8),(39,4,9),(40,4,10),(41,4,11),(42,4,12),(43,4,21),(44,4,20),(45,4,23),(46,4,22),(47,4,25),(48,4,24),(49,5,1),(50,5,4),(51,5,5),(52,5,6),(53,5,7),(54,5,8),(55,5,9),(56,5,10),(57,5,11),(58,5,12),(59,5,21),(60,5,20),(61,5,25),(62,5,24),(63,5,27),(64,6,1),(65,5,26),(66,6,3),(67,6,4),(68,6,5),(69,6,6),(70,6,7),(71,6,8),(72,6,9),(73,6,12),(74,6,20),(75,6,25),(76,6,24),(77,6,28),(78,7,1),(79,7,3),(80,7,4),(81,7,5),(82,7,6),(83,7,7),(84,7,8),(85,7,9),(86,7,10),(87,7,12),(88,7,20),(89,7,23),(90,7,25),(91,7,24),(92,7,29);
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

-- Dump completed on 2015-10-12  3:29:21
