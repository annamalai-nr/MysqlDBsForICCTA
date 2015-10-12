-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_464
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (17,'(.*)'),(15,'android.intent.action.BOOT_COMPLETED'),(24,'android.intent.action.CALL'),(11,'android.intent.action.CHOOSER'),(21,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(12,'android.intent.action.NEW_OUTGOING_CALL'),(25,'android.intent.action.PACKAGE_ADDED'),(13,'android.intent.action.PHONE_STATE'),(23,'android.intent.action.RUN'),(18,'android.intent.action.SCREEN_OFF'),(19,'android.intent.action.USER_PRESENT'),(7,'android.intent.action.VIEW'),(14,'android.provider.Telephony.SMS_RECEIVED'),(6,'com.android.vending.INSTALL_REFERRER'),(8,'com.android.vending.billing.IN_APP_NOTIFY'),(20,'com.android.vending.billing.MarketBillingService.BIND'),(9,'com.android.vending.billing.PURCHASE_STATE_CHANGED'),(10,'com.android.vending.billing.RESPONSE_CODE'),(22,'com.example.dungeons.GET_PURCHASE_INFORMATION'),(5,'com.flurry.android.ACTION_CATALOG'),(4,'com.gone60.gone60.refresh'),(3,'com.google.android.c2dm.intent.RECEIVE'),(16,'com.google.android.c2dm.intent.REGISTER'),(2,'com.google.android.c2dm.intent.REGISTRATION');
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
INSERT INTO `Applications` VALUES (1,'com.gone60',21),(2,'com.wAppzmob',1327737138),(3,'com.wTelecincoTVeo',1331996866),(4,'com.wRuddyExecutive',1332924752),(5,'com.wTempleruntips',1335284660),(6,'com.creativemobi.DragRacing',26),(7,'com.droidhen.game.fforestmen',2);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(1,'android.intent.category.LAUNCHER'),(3,'com.wAppzmob'),(5,'com.wRuddyExecutive'),(4,'com.wTelecincoTVeo'),(6,'com.wTempleruntips');
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.gone60.gone60'),(2,2,'com.wAppzmob.MainNavigationActivity'),(3,3,'com.wTelecincoTVeo.MainNavigationActivity'),(4,2,'com.wAppzmob.MessageViewer'),(5,2,'com.wAppzmob.Server.C2DMClientReceiver'),(6,3,'com.wTelecincoTVeo.MessageViewer'),(7,2,'com.google.android.c2dm.C2DMBroadcastReceiver'),(8,3,'com.wTelecincoTVeo.Server.C2DMClientReceiver'),(9,3,'com.google.android.c2dm.C2DMBroadcastReceiver'),(10,4,'com.wRuddyExecutive.MainNavigationActivity'),(11,4,'com.wRuddyExecutive.MessageViewer'),(12,4,'com.wRuddyExecutive.Server.C2DMClientReceiver'),(13,5,'com.wTempleruntips.MainNavigationActivity'),(14,4,'com.google.android.c2dm.C2DMBroadcastReceiver'),(15,5,'com.wTempleruntips.MessageViewer'),(16,5,'com.wTempleruntips.Server.C2DMClientReceiver'),(17,5,'com.google.android.c2dm.C2DMBroadcastReceiver'),(18,1,'com.gone60.MyService'),(19,1,'com.gone60.gone60$DataUpdateReceiver'),(20,6,'com.creativemobi.DragRacing.menus.MainMenu'),(21,6,'com.google.ads.AdActivity'),(22,6,'com.tapjoy.TJCOffersWebView'),(23,6,'com.tapjoy.TapjoyFeaturedAppWebView'),(24,6,'com.flurry.android.CatalogActivity'),(25,6,'com.creativemobi.DragRacing.billing.BillingService'),(26,6,'com.GoldDream.zj.zjService'),(27,6,'com.tapjoy.TapjoyReferralTracker'),(28,2,'com.wAppzmob.Utils.BrowserDownloadListener'),(29,6,'com.creativemobi.DragRacing.billing.BillingReceiver'),(30,6,'com.GoldDream.zj.zjReceiver'),(31,2,'com.google.android.c2dm.C2DMessaging'),(32,4,'com.google.android.c2dm.C2DMessaging'),(33,4,'com.wRuddyExecutive.Utils.BrowserDownloadListener'),(34,4,'com.wRuddyExecutive.Views.AboutDialog$1'),(35,3,'com.wTelecincoTVeo.Utils.BrowserDownloadListener'),(36,3,'com.google.android.c2dm.C2DMessaging'),(37,5,'com.wTempleruntips.Views.AboutDialog$1'),(38,5,'com.google.android.c2dm.C2DMessaging'),(39,5,'com.wTempleruntips.Utils.BrowserDownloadListener'),(40,6,'com.google.ads.util.AdUtil$UserActivityReceiver'),(41,6,'com.creativemobi.DragRacing.menus.c'),(42,7,'com.sjli.client.MogoStart'),(43,7,'com.droidhen.game.fforestmen.StageSelectActivity'),(44,7,'com.droidhen.game.fforestmen.HighScoreActivity'),(45,7,'com.droidhen.game.fforestmen.GameActivity'),(46,7,'com.droidhen.game.fforestmen.GameStopActivity'),(47,7,'com.droidhen.activity.MoreActivity'),(48,7,'com.droidhen.recommend.RecommendActivity'),(49,7,'com.droidhen.game.fforestmen.GameStartActivity'),(50,7,'com.sjli.client.HHandPics'),(51,7,'com.sjli.client.viewpic'),(52,7,'com.google.ads.AdActivity'),(53,7,'cn.domob.android.ads.DomobActivity'),(54,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(55,7,'com.adwo.adsdk.AdwoSplashAdActivity'),(56,7,'net.youmi.android.AdActivity'),(57,7,'net.youmi.android.spotad.AdActivity'),(58,7,'com.wooboo.adlib_android.AdActivity'),(59,7,'com.wooboo.adlib_android.FullActivity'),(60,7,'com.tencent.mobwin.MobinWINBrowserActivity'),(61,7,'com.adchina.android.ads.views.AdBrowserView'),(62,7,'com.adchina.android.ads.views.FullScreenAdActivity'),(63,7,'cn.appmedia.ad.AdActivity'),(64,7,'com.winad.android.ads.VideoPlayerActivity'),(65,7,'com.suizong.mobplate.ads.AdActivity'),(66,7,'com.mt.airad.MultiAD'),(67,7,'com.lmmob.ad.sdk.LmMobAdWebView'),(68,7,'com.lmmob.ad.sdk.LmMobFullImageActivity'),(69,7,'net.winsmedia.WebViewActivity'),(70,7,'com.baidu.AppActivity'),(71,7,'com.sjli.client.zjjService'),(72,7,'com.admogo.UpdateService'),(73,7,'com.google.android.apps.analytics.AnalyticsReceiver'),(74,7,'com.sjli.client.zjjReceiver'),(75,7,'com.winad.android.ads.ReciveInstallPackage');
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,8,'unregistered'),(2,4,'title'),(3,8,'registration_id'),(4,4,'url'),(5,8,'message'),(6,8,'url'),(7,8,'error'),(8,14,'error'),(9,11,'url'),(10,11,'title'),(11,14,'message'),(12,14,'title'),(13,9,'unregistered'),(14,9,'error'),(15,6,'title'),(16,9,'registration_id'),(17,15,'title'),(18,17,'registration_id'),(19,17,'error'),(20,15,'url'),(21,6,'url'),(22,14,'url'),(23,14,'registration_id'),(24,9,'url'),(25,8,'title'),(26,14,'unregistered'),(27,9,'title'),(28,9,'message'),(29,17,'title'),(30,17,'url'),(31,17,'unregistered'),(32,17,'message'),(33,22,'FULLSCREEN_AD_URL'),(34,24,'RESPONSE_CODE'),(35,19,'RESPONSE_CODE'),(36,23,'o'),(37,21,'CLIENT_PACKAGE'),(38,20,'com.google.ads.AdOpener'),(39,27,'inapp_signed_data'),(40,24,'REQUEST_ID'),(41,19,'REQUEST_ID'),(42,28,'android.intent.extra.PHONE_NUMBER'),(43,24,'inapp_signed_data'),(44,21,'USER_ID'),(45,22,'URL_PARAMS'),(46,28,'incoming_number'),(47,24,'inapp_signature'),(48,24,'notification_id'),(49,23,'u'),(50,20,'params'),(51,27,'notification_id'),(52,20,'action'),(53,22,'CLIENT_PACKAGE'),(54,22,'USER_ID'),(55,27,'inapp_signature'),(56,28,'pdus'),(57,21,'URL_PARAMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,8,'s',0,NULL,NULL),(8,7,'r',1,11,NULL),(9,9,'r',1,11,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'s',0,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'r',1,11,NULL),(15,15,'a',0,NULL,NULL),(16,16,'s',0,NULL,NULL),(17,17,'r',1,11,NULL),(18,19,'r',1,NULL,NULL),(19,20,'a',1,NULL,NULL),(20,21,'a',0,NULL,NULL),(21,22,'a',0,NULL,NULL),(22,23,'a',0,NULL,NULL),(23,24,'a',1,NULL,NULL),(24,25,'s',0,NULL,NULL),(25,26,'s',1,NULL,NULL),(26,27,'r',1,NULL,NULL),(27,29,'r',1,NULL,NULL),(28,30,'r',1,NULL,NULL),(29,40,'r',1,NULL,NULL),(30,42,'a',1,NULL,NULL),(31,43,'a',0,NULL,NULL),(32,44,'a',0,NULL,NULL),(33,45,'a',0,NULL,NULL),(34,46,'a',0,NULL,NULL),(35,47,'a',0,NULL,NULL),(36,48,'a',0,NULL,NULL),(37,49,'a',0,NULL,NULL),(38,50,'a',0,NULL,NULL),(39,51,'a',0,NULL,NULL),(40,52,'a',0,NULL,NULL),(41,53,'a',0,NULL,NULL),(42,54,'a',0,NULL,NULL),(43,55,'a',0,NULL,NULL),(44,56,'a',0,NULL,NULL),(45,57,'a',0,NULL,NULL),(46,58,'a',0,NULL,NULL),(47,59,'a',0,NULL,NULL),(48,60,'a',0,NULL,NULL),(49,61,'a',0,NULL,NULL),(50,62,'a',0,NULL,NULL),(51,63,'a',0,NULL,NULL),(52,64,'a',0,NULL,NULL),(53,65,'a',0,NULL,NULL),(54,66,'a',0,NULL,NULL),(55,67,'a',0,NULL,NULL),(56,68,'a',0,NULL,NULL),(57,69,'a',0,NULL,NULL),(58,70,'a',0,NULL,NULL),(59,71,'s',1,NULL,NULL),(60,72,'s',1,NULL,NULL),(61,73,'r',1,NULL,NULL),(62,74,'r',1,NULL,NULL),(63,75,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,3),(5,5,2),(6,5,8),(7,6,10),(8,6,14),(9,7,13),(10,8,2),(11,9,10),(12,10,10),(13,11,3),(14,13,10),(15,12,3),(16,12,9),(17,14,2),(18,15,13),(19,16,10),(20,17,3),(21,18,2),(22,19,10),(23,20,3),(24,21,13),(25,21,17),(26,22,13),(27,23,13),(28,24,13),(29,25,25),(30,26,27),(31,27,20),(32,28,24),(33,28,19),(34,29,25),(35,30,27),(36,31,28),(37,32,27),(38,33,25),(39,34,19);
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,18,'<com.gone60.MyService: void StartProcess()>',64,'r',NULL),(2,18,'<com.gone60.MyService: void StartProcess()>',18,'r',NULL),(3,28,'<com.wAppzmob.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',21,'a',NULL),(4,3,'<com.wTelecincoTVeo.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',51,'a',NULL),(5,31,'<com.google.android.c2dm.C2DMessaging: void register(android.content.Context,java.lang.String)>',9,'s',NULL),(6,32,'<com.google.android.c2dm.C2DMessaging: void register(android.content.Context,java.lang.String)>',9,'s',NULL),(7,13,'<com.wTempleruntips.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',51,'a',NULL),(8,2,'<com.wAppzmob.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',42,'a',NULL),(9,33,'<com.wRuddyExecutive.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',21,'a',NULL),(10,34,'<com.wRuddyExecutive.Views.AboutDialog$1: boolean onTouch(android.view.View,android.view.MotionEvent)>',11,'a',NULL),(11,35,'<com.wTelecincoTVeo.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',15,'a',NULL),(12,36,'<com.google.android.c2dm.C2DMessaging: void register(android.content.Context,java.lang.String)>',9,'s',NULL),(13,10,'<com.wRuddyExecutive.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',28,'a',NULL),(14,28,'<com.wAppzmob.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',15,'a',NULL),(15,37,'<com.wTempleruntips.Views.AboutDialog$1: boolean onTouch(android.view.View,android.view.MotionEvent)>',11,'a',NULL),(16,33,'<com.wRuddyExecutive.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',15,'a',NULL),(17,35,'<com.wTelecincoTVeo.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',21,'a',NULL),(18,2,'<com.wAppzmob.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',23,'a',NULL),(19,10,'<com.wRuddyExecutive.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',51,'a',NULL),(20,3,'<com.wTelecincoTVeo.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',28,'a',NULL),(21,38,'<com.google.android.c2dm.C2DMessaging: void register(android.content.Context,java.lang.String)>',9,'s',NULL),(22,39,'<com.wTempleruntips.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',15,'a',NULL),(23,13,'<com.wTempleruntips.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',28,'a',NULL),(24,39,'<com.wTempleruntips.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',21,'a',NULL),(25,26,'<com.GoldDream.zj.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',33,'a',NULL),(26,29,'<com.creativemobi.DragRacing.billing.BillingReceiver: void onReceive(android.content.Context,android.content.Intent)>',38,'s',NULL),(27,21,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(28,25,'<com.creativemobi.DragRacing.billing.BillingService: boolean h()>',3,'s',NULL),(29,26,'<com.GoldDream.zj.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',24,'a',NULL),(30,29,'<com.creativemobi.DragRacing.billing.BillingReceiver: void onReceive(android.content.Context,android.content.Intent)>',24,'s',NULL),(31,30,'<com.GoldDream.zj.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(32,29,'<com.creativemobi.DragRacing.billing.BillingReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(33,26,'<com.GoldDream.zj.zjService: void CallPhoneNumber(java.lang.String)>',11,'a',NULL),(34,41,'<com.creativemobi.DragRacing.menus.c: void onClick(android.content.DialogInterface,int)>',7,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,4),(2,2,4),(3,3,7),(4,4,11),(5,5,11),(6,6,11),(7,7,16),(8,10,11),(9,9,11),(10,8,16),(11,11,11),(12,12,11),(13,13,11),(14,14,11),(15,15,11),(16,16,11),(17,17,7),(18,18,11),(19,20,11),(20,19,11),(21,21,11),(22,22,11),(23,23,11),(24,24,11),(25,25,11),(26,26,7),(27,27,11),(28,28,11),(29,29,7),(30,30,11),(31,31,11),(32,32,7),(33,33,7),(34,34,11),(35,35,7),(36,36,16),(37,37,7),(38,38,7),(39,39,7),(40,40,7),(41,41,7),(42,42,7),(43,43,7),(44,44,11),(45,45,7),(46,46,11),(47,47,16),(48,48,11),(49,49,11),(50,50,7),(51,51,11),(52,52,11),(53,53,7),(54,54,11),(55,55,11),(56,56,7),(57,57,7),(58,58,10),(59,59,7),(60,60,17),(61,61,17),(62,62,20),(63,63,21),(64,64,22),(65,65,23),(66,66,9),(67,67,24),(68,68,7);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,57,'com.android.packageinstaller.PackageInstallerActivity'),(2,58,'com/creativemobi/DragRacing/billing/BillingService'),(3,64,'com/creativemobi/DragRacing/billing/BillingService'),(4,65,'com/GoldDream/zj/zjService'),(5,66,'com/creativemobi/DragRacing/billing/BillingService');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,3,1),(2,17,2),(3,26,3),(4,29,4),(5,32,5),(6,33,6),(7,35,7),(8,37,8),(9,38,9),(10,39,10),(11,40,11),(12,41,12),(13,42,13),(14,43,14),(15,45,15),(16,50,16),(17,53,17),(18,56,18),(19,57,19),(20,59,20),(21,60,21),(22,61,22),(23,63,23),(24,67,24),(25,68,25);
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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'status'),(2,1,'code'),(3,2,'status'),(4,2,'code'),(5,4,'android.intent.extra.INTENT'),(6,5,'android.intent.extra.INTENT'),(7,6,'android.intent.extra.TITLE'),(8,6,'android.intent.extra.INTENT'),(9,7,'sender'),(10,7,'app'),(11,9,'android.intent.extra.INTENT'),(12,10,'android.intent.extra.INTENT'),(13,8,'sender'),(14,8,'app'),(15,11,'android.intent.extra.INTENT'),(16,12,'android.intent.extra.TITLE'),(17,13,'android.intent.extra.INTENT'),(18,12,'android.intent.extra.INTENT'),(19,14,'android.intent.extra.TITLE'),(20,15,'android.intent.extra.INTENT'),(21,16,'android.intent.extra.INTENT'),(22,14,'android.intent.extra.INTENT'),(23,18,'android.intent.extra.TITLE'),(24,20,'android.intent.extra.INTENT'),(25,19,'android.intent.extra.TITLE'),(26,18,'android.intent.extra.INTENT'),(27,19,'android.intent.extra.INTENT'),(28,21,'android.intent.extra.TITLE'),(29,22,'android.intent.extra.INTENT'),(30,23,'android.intent.extra.TITLE'),(31,21,'android.intent.extra.INTENT'),(32,23,'android.intent.extra.INTENT'),(33,24,'android.intent.extra.TITLE'),(34,25,'android.intent.extra.INTENT'),(35,24,'android.intent.extra.INTENT'),(36,27,'android.intent.extra.TITLE'),(37,28,'android.intent.extra.INTENT'),(38,27,'android.intent.extra.INTENT'),(39,30,'android.intent.extra.TITLE'),(40,31,'android.intent.extra.TITLE'),(41,30,'android.intent.extra.INTENT'),(42,31,'android.intent.extra.INTENT'),(43,34,'android.intent.extra.TITLE'),(44,34,'android.intent.extra.INTENT'),(45,36,'sender'),(46,36,'app'),(47,44,'android.intent.extra.INTENT'),(48,46,'android.intent.extra.INTENT'),(49,47,'sender'),(50,47,'app'),(51,48,'android.intent.extra.TITLE'),(52,48,'android.intent.extra.INTENT'),(53,49,'android.intent.extra.INTENT'),(54,51,'android.intent.extra.TITLE'),(55,51,'android.intent.extra.INTENT'),(56,52,'android.intent.extra.INTENT'),(57,54,'android.intent.extra.TITLE'),(58,54,'android.intent.extra.INTENT'),(59,55,'android.intent.extra.TITLE'),(60,55,'android.intent.extra.INTENT'),(61,58,'request_id'),(62,58,'response_code'),(63,64,'notification_id'),(64,66,'inapp_signature'),(65,66,'inapp_signed_data');
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,2),(5,5,1),(6,6,2),(7,7,3),(8,8,3),(9,9,1),(10,10,2),(11,11,3),(12,12,2),(13,13,3),(14,14,4),(15,15,1),(16,16,5),(17,17,6),(18,18,8),(19,18,9),(20,18,10),(21,19,15),(22,19,14),(23,19,13),(24,19,12),(25,20,18),(26,20,19),(27,21,1),(28,22,6),(29,23,13),(30,23,15),(31,24,25);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,2,2),(4,3,1),(5,3,2),(6,4,3),(7,5,1),(8,5,2),(9,6,4),(10,7,4),(11,8,3),(12,9,1),(13,9,2),(14,10,5),(15,11,5),(16,12,6),(17,13,6),(18,15,1),(19,16,2),(20,21,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,24,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,60,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,57,'com.android.packageinstaller'),(2,58,'com.creativemobi.DragRacing'),(3,64,'com.creativemobi.DragRacing'),(4,65,'com.creativemobi.DragRacing'),(5,66,'com.creativemobi.DragRacing');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,3,0),(4,8,0),(5,10,0),(6,9,0),(7,9,0),(8,8,0),(9,13,0),(10,14,0),(11,14,0),(12,17,0),(13,17,0),(14,18,0),(15,19,0),(16,23,0),(17,26,0),(18,27,0),(19,28,0),(20,29,0),(21,30,0),(22,61,0),(23,62,0),(24,63,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,1,0),(3,3,1,0),(4,4,1,0),(5,4,1,0),(6,4,1,0),(7,5,1,0),(8,6,1,0),(9,4,1,0),(10,7,1,0),(11,7,1,0),(12,4,1,0),(13,8,1,0),(14,7,1,0),(15,8,1,0),(16,4,1,0),(17,9,1,0),(18,8,1,0),(19,4,1,0),(20,7,1,0),(21,7,1,0),(22,8,1,0),(23,4,1,0),(24,8,1,0),(25,7,1,0),(26,10,1,0),(27,7,1,0),(28,8,1,0),(29,10,1,0),(30,8,1,0),(31,7,1,0),(32,11,1,0),(33,10,1,0),(34,8,1,0),(35,13,1,0),(36,12,1,0),(37,14,1,0),(38,15,1,0),(39,16,1,0),(40,15,1,0),(41,17,1,0),(42,18,1,0),(43,15,1,0),(44,19,1,0),(45,20,1,0),(46,19,1,0),(47,21,1,0),(48,19,1,0),(49,19,1,0),(50,22,1,0),(51,19,1,0),(52,19,1,0),(53,23,1,0),(54,19,1,0),(55,19,1,0),(56,24,1,0),(57,25,0,0),(58,26,0,0),(59,27,1,0),(60,27,1,0),(61,27,1,0),(62,28,1,0),(63,29,1,0),(64,30,0,0),(65,31,0,0),(66,32,0,0),(67,33,1,0),(68,34,1,0);
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
INSERT INTO `PermissionStrings` VALUES (21,'android.permission.ACCESS_COARSE_LOCATION'),(25,'android.permission.ACCESS_FINE_LOCATION'),(30,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(7,'android.permission.ACCESS_NETWORK_STATE'),(19,'android.permission.ACCESS_WIFI_STATE'),(22,'android.permission.CALL_PHONE'),(28,'android.permission.CHANGE_WIFI_STATE'),(15,'android.permission.DELETE_PACKAGES'),(14,'android.permission.INSTALL_PACKAGES'),(2,'android.permission.INTERNET'),(18,'android.permission.PROCESS_OUTGOING_CALLS'),(3,'android.permission.READ_CONTACTS'),(27,'android.permission.READ_EXTERNAL_STORAGE'),(12,'android.permission.READ_PHONE_STATE'),(1,'android.permission.READ_SMS'),(23,'android.permission.RECEIVE_BOOT_COMPLETED'),(20,'android.permission.RECEIVE_SMS'),(16,'android.permission.SEND_SMS'),(26,'android.permission.VIBRATE'),(17,'android.permission.WRITE_EXTERNAL_STORAGE'),(6,'android.webkit.permission.PLUGIN'),(4,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(29,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(24,'com.android.vending.BILLING'),(8,'com.google.android.c2dm.permission.RECEIVE'),(11,'com.google.android.c2dm.permission.SEND'),(5,'com.wAppzmob.permission.C2D_MESSAGE'),(10,'com.wRuddyExecutive.permission.C2D_MESSAGE'),(9,'com.wTelecincoTVeo.permission.C2D_MESSAGE'),(13,'com.wTempleruntips.permission.C2D_MESSAGE');
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
INSERT INTO `Permissions` VALUES (5,'s'),(9,'s'),(10,'s'),(13,'s');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'',NULL,NULL,NULL),(2,NULL,NULL,'',NULL,NULL,NULL),(3,NULL,NULL,'http://www.appsgeyser.com',NULL,NULL,NULL),(4,NULL,NULL,'',NULL,NULL,NULL),(5,NULL,NULL,'',NULL,NULL,NULL),(6,NULL,NULL,'http://www.appsgeyser.com?(.*)',NULL,NULL,NULL),(7,NULL,NULL,'market://details?id=com.wRuddyExecutive',NULL,NULL,NULL),(8,NULL,NULL,'',NULL,NULL,NULL),(9,NULL,NULL,'http://www.appsgeyser.com',NULL,NULL,NULL),(10,NULL,NULL,'',NULL,NULL,NULL),(11,NULL,NULL,'',NULL,NULL,NULL),(12,NULL,NULL,'',NULL,NULL,NULL),(13,NULL,NULL,'market://details?id=com.wAppzmob',NULL,NULL,NULL),(14,NULL,NULL,'http://www.appsgeyser.com?(.*)',NULL,NULL,NULL),(15,NULL,NULL,'market://details?id=com.wTelecincoTVeo',NULL,NULL,NULL),(16,NULL,NULL,'',NULL,NULL,NULL),(17,NULL,NULL,'market://details?id=com.wTempleruntips',NULL,NULL,NULL),(18,NULL,NULL,'',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,'package','(.*)',NULL,NULL,NULL,NULL),(24,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,2,2),(6,2,5),(7,2,6),(8,2,7),(9,3,2),(10,2,8),(11,3,6),(12,3,7),(13,3,8),(14,3,9),(15,4,2),(16,4,6),(17,4,7),(18,4,8),(19,4,10),(20,5,2),(21,5,6),(22,5,7),(23,5,8),(24,5,12),(25,5,13),(26,6,1),(27,6,2),(28,6,7),(29,6,12),(30,6,14),(31,6,15),(32,6,17),(33,6,16),(34,6,19),(35,6,18),(36,6,21),(37,6,20),(38,6,23),(39,6,22),(40,6,25),(41,6,24),(42,6,26),(43,7,17),(44,7,19),(45,7,2),(46,7,4),(47,7,21),(48,7,23),(49,7,7),(50,7,25),(51,7,27),(52,7,29),(53,7,12),(54,7,28),(55,7,30);
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

-- Dump completed on 2015-10-09  0:39:48
