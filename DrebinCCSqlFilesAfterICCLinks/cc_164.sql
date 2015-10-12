-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_164
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (16,'(.*)'),(5,'android.appwidget.action.APPWIDGET_UPDATE'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(8,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(12,'android.intent.action.PACKAGE_ADDED'),(7,'android.intent.action.SCREEN_OFF'),(15,'android.intent.action.SCREEN_ON'),(10,'android.intent.action.SEND'),(11,'android.intent.action.SENDTO'),(2,'android.intent.action.SIG_STR'),(9,'android.intent.action.VIEW'),(13,'android.intent.action.WEB_SEARCH'),(14,'android.net.conn.CONNECTIVITY_CHANGE'),(6,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS');
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
INSERT INTO `Applications` VALUES (1,'com.nineiworks.wordsXGN',1),(2,'com.ps.kickfly',6),(3,'com.ps.llk',10),(4,'com.safetest.compass',14),(5,'com.ps.yams',13),(6,'com.gp.solitaire',456),(7,'com.mogo.dailymoney',7);
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
INSERT INTO `CategoryStrings` VALUES (4,'android.intent.category.BROWSABLE'),(3,'android.intent.category.HOME'),(2,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.nineiworks.wordsXGN.activity.Words'),(2,1,'com.nineiworks.wordsXGN.activity.About'),(3,1,'com.nineiworks.wordsXGN.activity.Coupon'),(4,1,'com.nineiworks.wordsXGN.activity.WordsExercise'),(5,1,'com.nineiworks.wordsXGN.activity.WordsList'),(6,1,'com.nineiworks.wordsXGN.activity.ErrorRecord'),(7,1,'com.nineiworks.wordsXGN.activity.Help'),(8,2,'com.ps.kickfly.GameMainActivity'),(9,1,'com.nineiworks.wordsXGN.activity.Record'),(10,3,'com.ps.llk.MainActivity'),(11,1,'com.nineiworks.wordsXGN.activity.WordType'),(12,1,'com.nineiworks.wordsXGN.activity.CouponDetail'),(13,2,'com.ps.kickfly.KickFly'),(14,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(15,1,'com.nineiworks.wordsXGN.activity.Menu'),(16,3,'com.google.update.Dialog'),(17,2,'com.ps.kickfly.GameModeActivity'),(18,1,'activity.SelectWordTypeivity.SelectWordType'),(19,3,'com.waps.OffersWebView'),(20,1,'com.google.ssearch.Dialog'),(21,2,'com.adwo.adsdk.AdwoAdBrowserActivity'),(22,3,'com.google.update.UpdateService'),(23,1,'com.google.ssearch.SearchService'),(24,2,'com.google.update.Dialog'),(25,3,'com.google.update.Receiver'),(26,1,'com.google.ssearch.Receiver'),(27,2,'com.google.update.UpdateService'),(28,2,'com.google.update.Receiver'),(29,4,'com.safetest.compass.CompassActivity'),(30,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(31,4,'com.safetest.compass.ShowTips'),(32,4,'com.safetest.compass.widget.CompassService'),(33,4,'com.safetest.compass.UpdateService'),(34,4,'com.safetest.compass.widget.CompassWidget'),(35,4,'com.safetest.compass.Receiver'),(36,5,'com.ps.yams.Yams'),(37,5,'com.google.update.Dialog'),(38,5,'cn.domob.android.ads.DomobActivity'),(39,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(40,5,'com.waps.OffersWebView'),(41,5,'com.google.update.UpdateService'),(42,5,'com.google.update.Receiver'),(43,6,'com.gp.solitaire.Solitaire'),(44,6,'com.google.update.Dialog'),(45,6,'cn.domob.android.ads.DomobActivity'),(46,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(47,6,'com.google.update.UpdateService'),(48,6,'com.google.update.Receiver'),(49,2,'com.google.update.Dialog$2'),(50,2,'com.google.update.UpdateService$AA'),(51,2,'com.google.update.Dialog$1'),(52,3,'com.waps.aa'),(53,7,'com.mogo.dailymoney.ui.DesktopActivity'),(54,7,'com.mogo.dailymoney.ui.DetailListActivity'),(55,7,'com.mogo.dailymoney.ui.DetailEditorActivity'),(56,7,'com.mogo.dailymoney.ui.AccountMgntActivity'),(57,7,'com.mogo.dailymoney.ui.AccountEditorActivity'),(58,7,'com.mogo.dailymoney.ui.AccountDetailListActivity'),(59,7,'com.mogo.dailymoney.ui.PrefsActivity'),(60,7,'com.mogo.dailymoney.ui.DataMaintenanceActivity'),(61,7,'com.mogo.dailymoney.ui.PasswordProtectionActivity'),(62,7,'com.mogo.dailymoney.ui.report.BalanceActivity'),(63,3,'com.google.update.Dialog$1'),(64,7,'com.mogo.dailymoney.ui.AboutActivity'),(65,7,'com.mogo.dailymoney.ui.LocalWebViewActivity'),(66,7,'com.mogo.dailymoney.ui.LocalWebViewDlg'),(67,7,'com.mogo.dailymoney.calculator2.Calculator'),(68,7,'org.achartengine.GraphicalActivity'),(69,7,'com.google.ads.AdActivity'),(70,3,'com.google.update.Dialog$2'),(71,7,'com.vpon.adon.android.WebInApp'),(72,7,'com.adwo.adsdk.AdwoSplashAdActivity'),(73,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(74,7,'com.waps.OffersWebView'),(75,4,'com.safetest.compass.widget.CompassService$1'),(76,7,'com.google.update.Dialog'),(77,7,'com.google.update.UpdateService'),(78,4,'com.safetest.compass.MyLocationManager$ConnectivityBroadcastReceiver'),(79,7,'com.google.update.Receiver'),(80,4,'com.adwo.adsdk.D'),(81,4,'android.appwidget.AppWidgetProvider'),(82,1,'com.nineiworks.wordsXGN.activity.WordsExercise$1'),(83,4,'com.safetest.compass.ShowTips$1'),(84,3,'com.google.update.UpdateService$AA'),(85,1,'com.nineiworks.wordsXGN.activity.Menu$6'),(86,1,'com.nineiworks.wordsXGN.activity.Menu$5'),(87,4,'com.adwo.adsdk.g'),(88,1,'com.nineiworks.wordsXGN.activity.Menu$1'),(89,3,'com.waps.o'),(90,1,'com.nineiworks.wordsXGN.activity.WordsExercise$4'),(91,3,'com.waps.ac'),(92,3,'com.waps.z'),(93,3,'com.waps.q'),(94,1,'com.nineiworks.wordsXGN.activity.WordType$1'),(95,1,'com.google.ssearch.SearchService$MyThread'),(96,6,'cn.domob.android.ads.i$6'),(97,1,'com.nineiworks.wordsXGN.activity.WordsExercise$5'),(98,1,'com.nineiworks.wordsXGN.activity.About$1'),(99,1,'com.nineiworks.wordsXGN.activity.Record$1'),(100,1,'com.nineiworks.wordsXGN.activity.ErrorRecord$1'),(101,5,'com.waps.q'),(102,5,'cn.domob.android.ads.DomobAdManager'),(103,1,'com.nineiworks.wordsXGN.activity.WordsExercise$3'),(104,6,'cn.domob.android.ads.DomobAdEngine$2'),(105,5,'cn.domob.android.ads.i$6'),(106,6,'com.google.update.Dialog$1'),(107,6,'cn.domob.android.ads.DomobActionReceiver'),(108,6,'com.google.update.UpdateService$AA'),(109,1,'com.nineiworks.wordsXGN.activity.WordsExercise$2'),(110,5,'com.waps.aa'),(111,1,'com.google.ssearch.Dialog$1'),(112,6,'cn.domob.android.ads.i'),(113,1,'com.nineiworks.wordsXGN.activity.Coupon$3'),(114,5,'cn.domob.android.ads.DomobAdEngine$2'),(115,6,'cn.domob.android.ads.DomobAdManager'),(116,6,'com.google.update.Dialog$2'),(117,5,'com.google.update.Dialog$1'),(118,1,'com.nineiworks.wordsXGN.activity.Menu$4'),(119,5,'com.waps.o'),(120,1,'com.nineiworks.wordsXGN.activity.Menu$2'),(121,5,'com.waps.z'),(122,1,'com.nineiworks.wordsXGN.activity.Menu$3'),(123,5,'com.google.update.Dialog$2'),(124,5,'com.google.update.UpdateService$AA'),(125,5,'cn.domob.android.ads.i'),(126,5,'cn.domob.android.ads.DomobActionReceiver'),(127,5,'com.waps.ac'),(128,7,'com.google.update.UpdateService$MyThread'),(129,7,'com.waps.m'),(130,7,'com.waps.k'),(131,7,'com.mogo.dailymoney.ui.Desktop$ActivityRun'),(132,7,'com.google.update.Dialog$2'),(133,7,'com.mogo.dailymoney.ui.Desktop$IntentRun'),(134,7,'com.ju6.a'),(135,7,'com.google.update.Dialog$1'),(136,7,'com.waps.AppConnect');
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
) ENGINE=InnoDB AUTO_INCREMENT=236 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,27,'ST_MY_PID'),(2,21,'url'),(3,24,'MSG'),(4,21,'shouldShowTitlebar'),(5,21,'shouldMakeOverlayTransparent'),(6,21,'overlayTitle'),(7,27,'ST_START_DELAY'),(8,21,'overlayTransition'),(9,21,'shouldEnableBottomBar'),(10,21,'shouldShowBottomBar'),(11,21,'shouldResizeOverlay'),(12,21,'transitionTime'),(13,24,'TYPEdsada'),(14,16,'TYPEdsada'),(15,10,'WAPS_ID'),(16,19,'WAPS_ID'),(17,19,'URL'),(18,10,'WAPS_PID'),(19,19,'WAPS_PID'),(20,19,'UrlPath'),(21,19,'Notify_Url_Params'),(22,30,'overlayTransition'),(23,16,'MSG'),(24,33,'SAFE_START'),(25,10,'CLIENT_PACKAGE'),(26,19,'CLIENT_PACKAGE'),(27,30,'shouldShowTitlebar'),(28,14,'shouldMakeOverlayTransparent'),(29,6,'recid'),(30,30,'transitionTime'),(31,19,'offers_webview_tag'),(32,30,'shouldEnableBottomBar'),(33,10,'APP_ID'),(34,30,'shouldShowBottomBar'),(35,19,'APP_ID'),(36,33,'SAFE_PID'),(37,19,'Notify_Id'),(38,6,'wordID'),(39,30,'url'),(40,19,'isFinshClose'),(41,14,'shouldShowBottomBar'),(42,14,'url'),(43,19,'URL_PARAMS'),(44,14,'overlayTitle'),(45,19,'Offers_URL'),(46,14,'shouldResizeOverlay'),(47,14,'overlayTransition'),(48,19,'ACTIVITY_FLAG'),(49,19,'USER_ID'),(50,22,'ST_START_DELAY'),(51,12,'UMENG_CHANNEL'),(52,4,'UMENG_CHANNEL'),(53,9,'UMENG_CHANNEL'),(54,5,'UMENG_CHANNEL'),(55,3,'UMENG_CHANNEL'),(56,7,'UMENG_CHANNEL'),(57,1,'UMENG_CHANNEL'),(58,15,'UMENG_CHANNEL'),(59,11,'UMENG_CHANNEL'),(60,2,'UMENG_CHANNEL'),(61,6,'UMENG_CHANNEL'),(62,12,'tel'),(63,14,'shouldEnableBottomBar'),(64,20,'MSG'),(65,9,'type'),(66,10,'DEVICE_ID'),(67,19,'DEVICE_ID'),(68,9,'wordID'),(69,14,'shouldShowTitlebar'),(70,22,'ST_MY_PID'),(71,14,'transitionTime'),(72,19,'SHWO_FLAG'),(73,4,'record'),(74,4,'next'),(75,12,'title'),(76,9,'recid'),(77,40,'WAPS_PID'),(78,36,'WAPS_PID'),(79,40,'APP_ID'),(80,36,'APP_ID'),(81,40,'Offers_URL'),(82,36,'de_valeur'),(83,38,'appName'),(84,40,'UrlPath'),(85,46,'overlayTitle'),(86,46,'shouldShowTitlebar'),(87,40,'WAPS_ID'),(88,46,'shouldResizeOverlay'),(89,36,'WAPS_ID'),(90,40,'Notify_Url_Params'),(91,20,'TYPEdsada'),(92,12,'url'),(93,46,'shouldEnableBottomBar'),(94,12,'urlTitle'),(95,6,'nextID'),(96,47,'DOMOB_PID'),(97,43,'DOMOB_PID'),(98,4,'type'),(99,46,'DOMOB_PID'),(100,46,'shouldShowBottomBar'),(101,46,'shouldMakeOverlayTransparent'),(102,4,'recid'),(103,12,'UMENG_APPKEY'),(104,4,'UMENG_APPKEY'),(105,9,'UMENG_APPKEY'),(106,5,'UMENG_APPKEY'),(107,45,'actType'),(108,3,'UMENG_APPKEY'),(109,45,'appName'),(110,7,'UMENG_APPKEY'),(111,47,'ST_START_DELAY'),(112,1,'UMENG_APPKEY'),(113,15,'UMENG_APPKEY'),(114,11,'UMENG_APPKEY'),(115,2,'UMENG_APPKEY'),(116,6,'UMENG_APPKEY'),(117,30,'overlayTitle'),(118,31,'MM'),(119,47,'ST_MY_PID'),(120,30,'shouldMakeOverlayTransparent'),(121,47,'DOMOB_TEST_MODE'),(122,30,'shouldResizeOverlay'),(123,43,'DOMOB_TEST_MODE'),(124,46,'DOMOB_TEST_MODE'),(125,46,'transitionTime'),(126,46,'overlayTransition'),(127,44,'MSG'),(128,45,'appId'),(129,46,'url'),(130,12,'address'),(131,9,'nextID'),(132,41,'DOMOB_TEST_MODE'),(133,39,'DOMOB_TEST_MODE'),(134,40,'Notify_Id'),(135,37,'MSG'),(136,36,'tours'),(137,39,'shouldShowBottomBar'),(138,39,'shouldResizeOverlay'),(139,40,'isFinshClose'),(140,47,'DOMOB_ALLOW_LOCATION'),(141,43,'DOMOB_ALLOW_LOCATION'),(142,46,'DOMOB_ALLOW_LOCATION'),(143,44,'TYPEdsada'),(144,6,'type'),(145,5,'type'),(146,4,'nextID'),(147,12,'detail'),(148,4,'wordID'),(149,12,'image'),(150,40,'URL_PARAMS'),(151,39,'shouldEnableBottomBar'),(152,39,'transitionTime'),(153,40,'URL'),(154,39,'overlayTitle'),(155,38,'appId'),(156,40,'offers_webview_tag'),(157,37,'TYPEdsada'),(158,41,'ST_START_DELAY'),(159,40,'USER_ID'),(160,39,'overlayTransition'),(161,41,'DOMOB_PID'),(162,39,'DOMOB_PID'),(163,36,'lances'),(164,39,'shouldShowTitlebar'),(165,36,'points'),(166,38,'actType'),(167,40,'ACTIVITY_FLAG'),(168,39,'url'),(169,41,'DOMOB_ALLOW_LOCATION'),(170,39,'DOMOB_ALLOW_LOCATION'),(171,36,'dialog_shown'),(172,41,'ST_MY_PID'),(173,40,'DEVICE_ID'),(174,36,'DEVICE_ID'),(175,40,'CLIENT_PACKAGE'),(176,39,'shouldMakeOverlayTransparent'),(177,36,'CLIENT_PACKAGE'),(178,40,'SHWO_FLAG'),(179,68,'URL'),(180,54,'target'),(181,49,'WAPS_ID'),(182,68,'USER_ID'),(183,60,'title'),(184,61,'title'),(185,62,'cal2_needResult'),(186,71,'ST_MY_PID'),(187,66,'isTestMode'),(188,50,'mode'),(189,54,'targetInfo'),(190,71,'ST_START_DELAY'),(191,49,'WAPS_PID'),(192,49,'CLIENT_PACKAGE'),(193,67,'transitionTime'),(194,67,'overlayTransition'),(195,53,'modeCreate'),(196,63,'chart'),(197,68,'Offers_URL'),(198,58,'balanceDate'),(199,68,'CLIENT_PACKAGE'),(200,51,'detail'),(201,67,'shouldResizeOverlay'),(202,60,'uriid'),(203,61,'uriid'),(204,67,'overlayTitle'),(205,67,'shouldEnableBottomBar'),(206,53,'cal2_resultValue'),(207,60,'uri'),(208,61,'uri'),(209,58,'modeTotal'),(210,50,'switchyear'),(211,63,'title'),(212,54,'end'),(213,65,'adWidth'),(214,58,'mode'),(215,67,'shouldShowTitlebar'),(216,54,'start'),(217,53,'account'),(218,70,'MSG'),(219,66,'Adwo_PID'),(220,64,'params'),(221,51,'cal2_resultValue'),(222,67,'shouldShowBottomBar'),(223,51,'modeCreate'),(224,62,'cal2_startValue'),(225,50,'target'),(226,67,'shouldMakeOverlayTransparent'),(227,49,'DEVICE_ID'),(228,49,'APP_ID'),(229,68,'isFinshClose'),(230,64,'action'),(231,67,'url'),(232,65,'url'),(233,68,'URL_PARAMS'),(234,64,'com.google.ads.AdOpener'),(235,70,'TYPEdsada');
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
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'s',0,NULL,NULL),(23,23,'s',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'r',1,NULL,NULL),(26,26,'r',1,NULL,NULL),(27,27,'s',0,NULL,NULL),(28,28,'r',1,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'s',0,NULL,NULL),(33,33,'s',0,NULL,NULL),(34,34,'r',1,NULL,NULL),(35,35,'r',1,NULL,NULL),(36,36,'a',1,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'s',0,NULL,NULL),(42,42,'r',1,NULL,NULL),(43,43,'a',1,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'s',0,NULL,NULL),(48,48,'r',1,NULL,NULL),(49,53,'a',1,NULL,NULL),(50,54,'a',0,NULL,NULL),(51,55,'a',1,NULL,NULL),(52,56,'a',0,NULL,NULL),(53,57,'a',0,NULL,NULL),(54,58,'a',0,NULL,NULL),(55,59,'a',0,NULL,NULL),(56,60,'a',0,NULL,NULL),(57,61,'a',0,NULL,NULL),(58,62,'a',0,NULL,NULL),(59,64,'a',0,NULL,NULL),(60,65,'a',0,NULL,NULL),(61,66,'a',0,NULL,NULL),(62,67,'a',0,NULL,NULL),(63,68,'a',0,NULL,NULL),(64,69,'a',0,NULL,NULL),(65,71,'a',0,NULL,NULL),(66,72,'a',0,NULL,NULL),(67,73,'a',0,NULL,NULL),(68,74,'a',0,NULL,NULL),(69,75,'r',1,NULL,NULL),(70,76,'a',0,NULL,NULL),(71,77,'s',0,NULL,NULL),(72,78,'r',1,NULL,NULL),(73,79,'r',1,NULL,NULL),(74,80,'r',1,NULL,NULL),(75,81,'r',1,NULL,NULL),(76,93,'r',1,NULL,NULL),(77,101,'r',1,NULL,NULL),(78,107,'r',1,NULL,NULL),(79,126,'r',1,NULL,NULL),(80,129,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,24),(2,2,27),(3,3,28),(4,4,27),(5,5,27),(6,6,24),(7,7,19),(8,8,22),(9,9,16),(10,10,16),(11,11,19),(12,12,22),(13,13,4),(14,14,25),(15,15,35),(16,16,31),(17,17,22),(18,18,5),(19,18,6),(20,18,7),(21,18,2),(22,18,3),(23,18,15),(24,18,9),(25,18,12),(26,19,15),(27,19,12),(28,19,7),(29,19,6),(30,19,9),(31,19,3),(32,19,2),(33,19,5),(34,20,29),(35,21,12),(36,21,15),(37,21,2),(38,21,3),(39,21,5),(40,21,7),(41,21,6),(42,21,9),(43,22,19),(44,23,12),(45,25,19),(46,24,12),(47,24,9),(48,24,7),(49,24,6),(50,24,5),(51,24,4),(52,24,3),(53,24,2),(54,24,15),(55,26,4),(56,27,19),(57,28,11),(58,29,19),(59,30,23),(60,31,46),(61,31,47),(62,31,43),(63,32,4),(64,32,3),(65,32,6),(66,32,5),(67,32,15),(68,32,2),(69,32,12),(70,32,7),(71,32,9),(72,33,3),(73,33,2),(74,33,7),(75,33,6),(76,33,5),(77,33,9),(78,33,15),(79,33,12),(80,34,2),(81,34,3),(82,34,6),(83,34,5),(84,34,7),(85,34,9),(86,34,12),(87,34,15),(88,35,41),(89,36,47),(90,37,9),(91,37,5),(92,37,6),(93,37,7),(94,37,12),(95,37,3),(96,37,2),(97,37,15),(98,38,42),(99,39,23),(100,40,47),(101,41,39),(102,41,41),(103,42,40),(104,44,48),(105,43,12),(106,43,9),(107,43,6),(108,43,7),(109,43,4),(110,43,5),(111,43,2),(112,43,3),(113,43,15),(114,45,46),(115,45,47),(116,45,43),(117,46,41),(118,46,39),(119,47,44),(120,48,23),(121,49,47),(122,50,15),(123,50,12),(124,50,9),(125,50,7),(126,50,5),(127,50,6),(128,50,3),(129,50,4),(130,50,2),(131,51,40),(132,52,34),(133,53,20),(134,53,9),(135,53,7),(136,53,6),(137,53,5),(138,53,2),(139,53,3),(140,53,15),(141,53,12),(142,54,43),(143,54,47),(144,54,46),(145,55,3),(146,56,41),(147,56,39),(148,57,43),(149,57,46),(150,57,47),(151,58,44),(152,59,37),(153,60,2),(154,60,15),(155,60,12),(156,60,9),(157,60,7),(158,60,5),(159,60,6),(160,60,3),(161,61,26),(162,62,40),(163,63,15),(164,63,2),(165,63,3),(166,63,5),(167,63,6),(168,63,7),(169,63,9),(170,63,12),(171,64,40),(172,65,12),(173,65,15),(174,65,9),(175,65,5),(176,65,7),(177,65,6),(178,65,3),(179,65,2),(180,66,37),(181,67,41),(182,68,41),(183,69,40),(184,70,41),(185,70,39),(186,71,40),(187,72,71),(188,73,52),(189,74,58),(190,75,52),(191,76,71),(192,77,49),(193,78,68),(194,79,49),(195,80,52),(196,81,70),(197,82,53),(198,83,49),(199,84,51),(200,85,71),(201,86,64),(202,87,71),(203,88,70),(204,89,49),(205,90,73);
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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,49,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(2,27,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(3,28,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(4,50,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(5,27,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(6,51,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(7,52,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(8,22,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(9,63,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(10,70,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(11,19,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(12,22,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(13,82,'<com.nineiworks.wordsXGN.activity.WordsExercise$1: void onCheckedChanged(android.widget.RadioGroup,int)>',91,'a',NULL),(14,25,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(15,35,'<com.safetest.compass.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(16,83,'<com.safetest.compass.ShowTips$1: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(17,84,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(18,85,'<com.nineiworks.wordsXGN.activity.Menu$6: void onClick(android.view.View)>',6,'a',NULL),(19,86,'<com.nineiworks.wordsXGN.activity.Menu$5: void onClick(android.view.View)>',6,'a',NULL),(20,87,'<com.adwo.adsdk.g: void run()>',59,'a',NULL),(21,88,'<com.nineiworks.wordsXGN.activity.Menu$1: void onClick(android.view.View)>',6,'a',NULL),(22,89,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(23,12,'<com.nineiworks.wordsXGN.activity.CouponDetail: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(24,90,'<com.nineiworks.wordsXGN.activity.WordsExercise$4: void onClick(android.view.View)>',6,'a',NULL),(25,91,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(26,82,'<com.nineiworks.wordsXGN.activity.WordsExercise$1: void onCheckedChanged(android.widget.RadioGroup,int)>',212,'a',NULL),(27,92,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(28,94,'<com.nineiworks.wordsXGN.activity.WordType$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',69,'a',NULL),(29,19,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(30,95,'<com.google.ssearch.SearchService$MyThread: void run()>',39,'a',NULL),(31,96,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(32,97,'<com.nineiworks.wordsXGN.activity.WordsExercise$5: void onClick(android.view.View)>',6,'a',NULL),(33,98,'<com.nineiworks.wordsXGN.activity.About$1: void onClick(android.view.View)>',10,'a',NULL),(34,99,'<com.nineiworks.wordsXGN.activity.Record$1: void onClick(android.view.View)>',22,'a',NULL),(35,41,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(36,47,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(37,100,'<com.nineiworks.wordsXGN.activity.ErrorRecord$1: void onClick(android.view.View)>',22,'a',NULL),(38,42,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(39,23,'<com.google.ssearch.SearchService: int setUsbEnabled()>',34,'a',NULL),(40,47,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(41,102,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(42,40,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(43,103,'<com.nineiworks.wordsXGN.activity.WordsExercise$3: void onClick(android.view.View)>',24,'a',NULL),(44,48,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(45,104,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(46,105,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(47,106,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(48,23,'<com.google.ssearch.SearchService: void getPermission2()>',79,'a',NULL),(49,108,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(50,109,'<com.nineiworks.wordsXGN.activity.WordsExercise$2: void onClick(android.view.View)>',24,'a',NULL),(51,110,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(52,32,'<com.safetest.compass.widget.CompassService: void start(android.content.Context)>',4,'s',NULL),(53,111,'<com.google.ssearch.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(54,112,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(55,113,'<com.nineiworks.wordsXGN.activity.Coupon$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',54,'a',NULL),(56,114,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(57,115,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(58,116,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(59,117,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(60,118,'<com.nineiworks.wordsXGN.activity.Menu$4: void onClick(android.view.View)>',6,'a',NULL),(61,26,'<com.google.ssearch.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(62,119,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(63,120,'<com.nineiworks.wordsXGN.activity.Menu$2: void onClick(android.view.View)>',6,'a',NULL),(64,121,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(65,122,'<com.nineiworks.wordsXGN.activity.Menu$3: void onClick(android.view.View)>',14,'a',NULL),(66,123,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(67,124,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(68,41,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(69,40,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(70,125,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(71,127,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(72,128,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(73,56,'<com.mogo.dailymoney.ui.AccountMgntActivity: void doNewAccount()>',9,'a',NULL),(74,62,'<com.mogo.dailymoney.ui.report.BalanceActivity: void doDetailList(int)>',19,'a',NULL),(75,56,'<com.mogo.dailymoney.ui.AccountMgntActivity: void doEditAccount(int)>',9,'a',NULL),(76,77,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(77,53,'<com.mogo.dailymoney.ui.DesktopActivity: void initPasswordProtection()>',17,'a',NULL),(78,130,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(79,131,'<com.mogo.dailymoney.ui.Desktop$ActivityRun: void run()>',6,'a',NULL),(80,56,'<com.mogo.dailymoney.ui.AccountMgntActivity: void doCopyAccount(int)>',9,'a',NULL),(81,132,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(82,57,'<com.mogo.dailymoney.ui.AccountEditorActivity: void doCalculator2()>',8,'a',NULL),(83,133,'<com.mogo.dailymoney.ui.Desktop$IntentRun: void run()>',3,'a',0),(84,55,'<com.mogo.dailymoney.ui.DetailEditorActivity: void doCalculator2()>',8,'a',NULL),(85,77,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(86,69,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(87,134,'<com.ju6.a: boolean b()>',178,'p',NULL),(88,135,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(89,136,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(90,79,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,6),(2,5,1),(3,6,1),(4,9,1),(5,10,1),(6,15,1),(7,16,1),(8,17,6),(9,19,1),(10,20,1),(11,26,1),(12,27,1),(13,29,1),(14,30,1),(15,33,8),(16,34,9),(17,36,10),(18,39,11),(19,41,9),(20,42,11),(21,43,9),(22,44,10),(23,45,10),(24,46,9),(25,47,9),(26,49,8),(27,51,9),(28,52,1),(29,53,9),(30,54,1),(31,55,9),(32,56,11),(33,57,9),(34,59,10),(35,61,9),(36,62,10),(37,63,9),(38,64,10),(39,65,9),(40,66,10),(41,67,9),(42,70,9),(43,71,11),(44,73,9),(45,76,10),(46,78,9),(47,80,9),(48,85,10),(49,87,9),(50,89,1),(51,90,11),(52,91,1),(53,94,9),(54,95,9),(55,96,1),(56,98,13),(57,100,9),(58,101,1),(59,103,9),(60,104,9),(61,105,13),(62,106,10),(63,107,9),(64,108,9),(65,109,9),(66,110,1),(67,111,8),(68,113,1),(69,117,6),(70,118,9),(71,120,6),(72,121,1),(73,123,1),(74,125,9),(75,127,9),(76,128,1),(77,129,6),(78,130,1),(79,131,1),(80,135,9),(81,137,1),(82,138,1),(83,148,9),(84,151,6),(85,156,16),(86,157,9),(87,158,16),(88,159,1),(89,160,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,5,2),(2,6,1),(3,9,1),(4,10,2),(5,15,1),(6,16,2),(7,19,1),(8,20,2),(9,26,1),(10,27,1),(11,29,2),(12,30,2),(13,52,1),(14,54,2),(15,89,1),(16,91,2),(17,96,1),(18,101,2),(19,110,1),(20,113,2),(21,121,1),(22,123,2),(23,128,3),(24,130,1),(25,131,2),(26,137,2),(27,138,1),(28,156,4),(29,157,4),(30,158,4),(31,159,1),(32,160,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'com/google/update/Dialog'),(2,3,'com/google/update/Dialog'),(3,4,'com/google/update/UpdateService'),(4,7,'com/google/update/Dialog'),(5,8,'com/google/update/Dialog'),(6,11,'com/waps/OffersWebView'),(7,12,'com/waps/OffersWebView'),(8,13,'com/google/update/Dialog'),(9,14,'com/google/update/Dialog'),(10,21,'com/google/update/Dialog'),(11,22,'com/google/update/Dialog'),(12,24,'com/google/update/UpdateService'),(13,25,'com/safetest/compass/UpdateService'),(14,23,'com/nineiworks/wordsXGN/activity/WordsExercise'),(15,28,'com/nineiworks/wordsXGN/activity/Help'),(16,31,'com/nineiworks/wordsXGN/activity/Coupon'),(17,32,'com/nineiworks/wordsXGN/activity/WordsList'),(18,35,'com/nineiworks/wordsXGN/activity/Words'),(19,38,'NULL-CONSTANT'),(20,37,'com/nineiworks/wordsXGN/activity/Menu'),(21,40,'com/nineiworks/wordsXGN/activity/WordsExercise'),(22,47,'com.google.android.maps.MapsActivity'),(23,48,'com/nineiworks/wordsXGN/activity/WordsExercise'),(24,50,'(.*)'),(25,58,'com/nineiworks/wordsXGN/activity/WordType'),(26,63,'com.android.browser.BrowserActivity'),(27,69,'com/google/update/Dialog'),(28,68,'com/nineiworks/wordsXGN/activity/WordsExercise'),(29,72,'com/google/update/Dialog'),(30,74,'com/google/update/Dialog'),(31,75,'com/nineiworks/wordsXGN/activity/WordsExercise'),(32,77,'com/google/update/Dialog'),(33,78,'com/adwo/adsdk/AdwoAdBrowserActivity'),(34,79,'com/google/update/UpdateService'),(35,81,'com/google/ssearch/Dialog'),(36,80,'com.google.android.maps.MapsActivity'),(37,82,'com/google/update/Dialog'),(38,83,'com/google/ssearch/Dialog'),(39,86,'com/google/update/Dialog'),(40,87,'com.google.android.maps.MapsActivity'),(41,92,'com/google/update/UpdateService'),(42,93,'com/nineiworks/wordsXGN/activity/ErrorRecord'),(43,94,'com.google.android.maps.MapsActivity'),(44,97,'com/google/ssearch/Dialog'),(45,102,'com/google/ssearch/Dialog'),(46,108,'com.google.android.maps.MapsActivity'),(47,112,'com/nineiworks/wordsXGN/activity/Record'),(48,114,'com/waps/OffersWebView'),(49,115,'com/safetest/compass/widget/CompassService'),(50,116,'com/waps/OffersWebView'),(51,119,'com/nineiworks/wordsXGN/activity/CouponDetail'),(52,122,'com/nineiworks/wordsXGN/activity/WordsExercise'),(53,124,'com/google/ssearch/SearchService'),(54,126,'com/nineiworks/wordsXGN/activity/About'),(55,132,'com/google/update/Dialog'),(56,133,'com/google/update/Dialog'),(57,134,'(.*)'),(58,136,'NULL-CONSTANT'),(59,139,'com/mogo/dailymoney/ui/AccountEditorActivity'),(60,140,'com/mogo/dailymoney/ui/AccountDetailListActivity'),(61,141,'com/mogo/dailymoney/ui/AccountDetailListActivity'),(62,142,'com/mogo/dailymoney/ui/AccountDetailListActivity'),(63,143,'com/mogo/dailymoney/ui/AccountDetailListActivity'),(64,144,'com/mogo/dailymoney/ui/AccountEditorActivity'),(65,145,'com/google/update/Dialog'),(66,146,'com/google/update/Dialog'),(67,147,'com/mogo/dailymoney/ui/PasswordProtectionActivity'),(68,149,'(.*)'),(69,150,'com/mogo/dailymoney/ui/AccountEditorActivity'),(70,152,'com/mogo/dailymoney/calculator2/Calculator'),(71,153,'com/mogo/dailymoney/calculator2/Calculator'),(72,154,'com/google/update/Dialog'),(73,155,'com/google/update/Dialog'),(74,161,'com/waps/OffersWebView'),(75,162,'com/google/update/UpdateService');
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,33,1),(2,34,2),(3,36,3),(4,39,4),(5,41,5),(6,42,6),(7,43,7),(8,44,8),(9,45,9),(10,46,10),(11,49,11),(12,51,12),(13,53,13),(14,56,14),(15,57,15),(16,59,16),(17,61,17),(18,63,18),(19,65,19),(20,67,20),(21,66,21),(22,70,22),(23,73,23),(24,76,24),(25,80,25),(26,85,27),(27,87,28),(28,90,29),(29,94,30),(30,95,31),(31,100,32),(32,103,33),(33,104,34),(34,106,35),(35,107,36),(36,108,37),(37,109,38),(38,118,39),(39,125,41),(40,127,42),(41,135,43),(42,148,44),(43,156,45),(44,157,46),(45,158,47);
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
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,2,'TYPEdsada'),(2,3,'MSG'),(3,3,'TYPEdsada'),(4,7,'TYPEdsada'),(5,8,'MSG'),(6,8,'TYPEdsada'),(7,11,'Notify_Url_Params'),(8,11,'UrlPath'),(9,11,'ACTIVITY_FLAG'),(10,11,'isFinshClose'),(11,11,'offers_webview_tag'),(12,12,'UrlPath'),(13,12,'ACTIVITY_FLAG'),(14,12,'isFinshClose'),(15,12,'offers_webview_tag'),(16,13,'TYPEdsada'),(17,14,'MSG'),(18,14,'TYPEdsada'),(19,21,'TYPEdsada'),(20,22,'MSG'),(21,22,'TYPEdsada'),(22,23,'wordID'),(23,23,'recid'),(24,23,'next'),(25,23,'nextID'),(26,23,'type'),(27,36,'android.intent.extra.TEXT'),(28,36,'android.intent.extra.SUBJECT'),(29,36,'android.intent.extra.EMAIL'),(30,39,'sms_body'),(31,40,'wordID'),(32,40,'recid'),(33,40,'next'),(34,40,'nextID'),(35,40,'type'),(36,44,'android.intent.extra.EMAIL'),(37,45,'android.intent.extra.TEXT'),(38,45,'android.intent.extra.EMAIL'),(39,48,'type'),(40,59,'android.intent.extra.EMAIL'),(41,64,'android.intent.extra.TEXT'),(42,64,'android.intent.extra.SUBJECT'),(43,64,'android.intent.extra.EMAIL'),(44,66,'android.intent.extra.TEXT'),(45,66,'android.intent.extra.SUBJECT'),(46,68,'record'),(47,66,'android.intent.extra.EMAIL'),(48,68,'wordID'),(49,69,'MSG'),(50,68,'recid'),(51,69,'TYPEdsada'),(52,68,'nextID'),(53,68,'type'),(54,72,'TYPEdsada'),(55,74,'MSG'),(56,75,'record'),(57,74,'TYPEdsada'),(58,75,'wordID'),(59,75,'recid'),(60,75,'nextID'),(61,75,'type'),(62,77,'TYPEdsada'),(63,78,'url'),(64,81,'TYPEdsada'),(65,82,'MSG'),(66,83,'MSG'),(67,82,'TYPEdsada'),(68,83,'TYPEdsada'),(69,85,'android.intent.extra.TEXT'),(70,86,'TYPEdsada'),(71,85,'android.intent.extra.EMAIL'),(72,90,'sms_body'),(73,93,'wordID'),(74,93,'recid'),(75,93,'next'),(76,93,'nextID'),(77,93,'type'),(78,97,'TYPEdsada'),(79,98,'query'),(80,102,'MSG'),(81,102,'TYPEdsada'),(82,112,'wordID'),(83,112,'recid'),(84,114,'UrlPath'),(85,112,'next'),(86,114,'ACTIVITY_FLAG'),(87,112,'nextID'),(88,114,'isFinshClose'),(89,112,'type'),(90,114,'offers_webview_tag'),(91,116,'Notify_Url_Params'),(92,116,'UrlPath'),(93,116,'ACTIVITY_FLAG'),(94,116,'isFinshClose'),(95,116,'offers_webview_tag'),(96,119,'urlTitle'),(97,119,'detail'),(98,119,'title'),(99,119,'address'),(100,119,'tel'),(101,119,'image'),(102,119,'url'),(103,132,'MSG'),(104,132,'TYPEdsada'),(105,133,'TYPEdsada'),(106,139,'modeCreate'),(107,139,'account'),(108,140,'targetInfo'),(109,140,'target'),(110,141,'targetInfo'),(111,141,'target'),(112,141,'end'),(113,142,'targetInfo'),(114,142,'start'),(115,142,'target'),(116,142,'end'),(117,143,'targetInfo'),(118,143,'start'),(119,143,'target'),(120,144,'modeCreate'),(121,144,'account'),(122,145,'MSG'),(123,145,'TYPEdsada'),(124,146,'TYPEdsada'),(125,150,'modeCreate'),(126,150,'account'),(127,152,'cal2_startValue'),(128,152,'cal2_needResult'),(129,153,'cal2_startValue'),(130,153,'cal2_needResult'),(131,154,'MSG'),(132,154,'TYPEdsada'),(133,155,'TYPEdsada'),(134,161,'USER_ID'),(135,161,'CLIENT_PACKAGE'),(136,161,'Offers_URL'),(137,161,'URL_PARAMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,7,2),(5,7,3),(6,7,4),(7,6,4),(8,6,3),(9,6,2),(10,8,2),(11,8,3),(12,8,4),(13,9,1),(14,10,5),(15,11,4),(16,11,3),(17,11,2),(18,12,1),(19,13,4),(20,13,3),(21,13,2),(22,14,1),(23,15,4),(24,15,2),(25,15,3),(26,16,1),(27,17,1),(28,18,7),(29,19,7),(30,20,2),(31,20,4),(32,20,3),(33,21,7),(34,22,7),(35,23,7),(36,24,7),(37,25,12),(38,26,12),(39,27,12),(40,28,14),(41,29,15),(42,30,15),(43,31,15),(44,32,15),(45,33,15),(46,34,15),(47,35,12),(48,36,12);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,9,1),(5,12,1),(6,14,1),(7,16,1);
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
INSERT INTO `IFData` VALUES (1,25,'package',NULL,NULL,NULL,NULL,NULL),(2,26,'package',NULL,NULL,NULL,NULL,NULL),(3,27,'package',NULL,NULL,NULL,NULL,NULL),(4,35,'package',NULL,NULL,NULL,NULL,NULL),(5,36,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,34,'application','vnd.android.package-archive'),(2,41,'*','*'),(3,43,'application','vnd.android.package-archive'),(4,53,'(.*)','(.*)'),(5,57,'application','vnd.android.package-archive'),(6,61,'application','vnd.android.package-archive'),(7,64,'message','rfc882'),(8,65,'application','vnd.android.package-archive'),(9,67,'application','vnd.android.package-archive'),(10,70,'application','vnd.android.package-archive'),(11,73,'(.*)','(.*)'),(12,95,'application','vnd.android.package-archive'),(13,100,'application','vnd.android.package-archive'),(14,103,'*','*'),(15,104,'application','vnd.android.package-archive'),(16,107,'application','vnd.android.package-archive'),(17,109,'application','vnd.android.package-archive'),(18,125,'application','vnd.android.package-archive'),(19,127,'application','vnd.android.package-archive'),(20,148,'application','vnd.android.package-archive'),(21,158,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'com.ps.kickfly'),(2,3,'com.ps.kickfly'),(3,4,'com.ps.kickfly'),(4,5,'com.ps.kickfly'),(5,6,'com.ps.kickfly'),(6,7,'com.ps.kickfly'),(7,8,'com.ps.kickfly'),(8,9,'com.noshufou.android.su'),(9,10,'com.noshufou.android.su'),(10,11,'com.ps.llk'),(11,12,'com.ps.llk'),(12,13,'com.ps.llk'),(13,14,'com.ps.llk'),(14,15,'com.noshufou.android.su'),(15,16,'com.noshufou.android.su'),(16,19,'(.*)'),(17,20,'(.*)'),(18,21,'com.ps.llk'),(19,22,'com.ps.llk'),(20,24,'com.ps.llk'),(21,25,'com.safetest.compass'),(22,23,'com.nineiworks.wordsXGN'),(23,26,'com.noshufou.android.su'),(24,27,'com.ps.llk'),(25,28,'com.nineiworks.wordsXGN'),(26,29,'com.noshufou.android.su'),(27,30,'com.ps.llk'),(28,31,'com.nineiworks.wordsXGN'),(29,32,'com.nineiworks.wordsXGN'),(30,35,'com.nineiworks.wordsXGN'),(31,38,'NULL-CONSTANT'),(32,37,'com.nineiworks.wordsXGN'),(33,40,'com.nineiworks.wordsXGN'),(34,47,'com.google.android.apps.maps'),(35,48,'com.nineiworks.wordsXGN'),(36,50,'(.*)'),(37,52,'com.nineiworks.wordsXGN'),(38,54,'com.nineiworks.wordsXGN'),(39,58,'com.nineiworks.wordsXGN'),(40,63,'com.android.browser'),(41,69,'com.ps.yams'),(42,68,'com.nineiworks.wordsXGN'),(43,72,'com.ps.yams'),(44,74,'com.gp.solitaire'),(45,75,'com.nineiworks.wordsXGN'),(46,77,'com.gp.solitaire'),(47,78,'com.safetest.compass'),(48,79,'com.ps.yams'),(49,81,'com.nineiworks.wordsXGN'),(50,80,'com.google.android.apps.maps'),(51,82,'com.gp.solitaire'),(52,83,'com.nineiworks.wordsXGN'),(53,86,'com.gp.solitaire'),(54,87,'com.google.android.apps.maps'),(55,89,'(.*)'),(56,92,'com.gp.solitaire'),(57,91,'(.*)'),(58,93,'com.nineiworks.wordsXGN'),(59,94,'com.google.android.apps.maps'),(60,96,'com.noshufou.android.su'),(61,97,'com.nineiworks.wordsXGN'),(62,101,'com.noshufou.android.su'),(63,102,'com.nineiworks.wordsXGN'),(64,108,'com.google.android.apps.maps'),(65,110,'com.gp.solitaire'),(66,113,'com.gp.solitaire'),(67,112,'com.nineiworks.wordsXGN'),(68,114,'com.ps.yams'),(69,115,'com.safetest.compass'),(70,116,'com.ps.yams'),(71,119,'com.nineiworks.wordsXGN'),(72,122,'com.nineiworks.wordsXGN'),(73,121,'com.noshufou.android.su'),(74,123,'com.noshufou.android.su'),(75,124,'com.nineiworks.wordsXGN'),(76,126,'com.nineiworks.wordsXGN'),(77,130,'com.ps.yams'),(78,131,'com.ps.yams'),(79,132,'com.ps.yams'),(80,133,'com.ps.yams'),(81,134,'(.*)'),(82,136,'NULL-CONSTANT'),(83,137,'com.mogo.dailymoney'),(84,138,'com.mogo.dailymoney'),(85,139,'com.mogo.dailymoney'),(86,140,'com.mogo.dailymoney'),(87,141,'com.mogo.dailymoney'),(88,142,'com.mogo.dailymoney'),(89,143,'com.mogo.dailymoney'),(90,144,'com.mogo.dailymoney'),(91,145,'com.mogo.dailymoney'),(92,146,'com.mogo.dailymoney'),(93,147,'com.mogo.dailymoney'),(94,149,'com.mogo.dailymoney'),(95,150,'com.mogo.dailymoney'),(96,152,'com.mogo.dailymoney'),(97,153,'com.mogo.dailymoney'),(98,154,'com.mogo.dailymoney'),(99,155,'com.mogo.dailymoney'),(100,159,'com.noshufou.android.su'),(101,160,'com.noshufou.android.su'),(102,161,'com.mogo.dailymoney'),(103,162,'com.mogo.dailymoney');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,8,0),(3,10,0),(4,13,0),(5,17,0),(6,25,0),(7,26,0),(8,28,0),(9,29,0),(10,34,0),(11,35,0),(12,36,0),(13,42,0),(14,43,0),(15,48,0),(16,49,0),(17,51,0),(18,69,0),(19,72,0),(20,73,0),(21,35,0),(22,74,0),(23,75,0),(24,34,0),(25,76,0),(26,77,0),(27,78,0),(28,72,0),(29,69,0),(30,72,0),(31,35,0),(32,74,0),(33,75,0),(34,34,0),(35,79,0),(36,80,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,0,0),(3,2,0,0),(4,3,0,0),(5,4,1,0),(6,4,1,0),(7,5,0,0),(8,5,0,0),(9,6,1,0),(10,6,1,0),(11,7,0,0),(12,7,0,0),(13,8,0,0),(14,8,0,0),(15,9,1,0),(16,9,1,0),(17,10,1,0),(18,11,1,0),(19,11,1,0),(20,11,1,0),(21,12,0,0),(22,12,0,0),(23,13,0,0),(24,14,0,0),(25,15,0,0),(26,16,1,0),(27,17,1,0),(28,18,0,0),(29,16,1,0),(30,17,1,0),(31,19,0,0),(32,21,0,0),(33,20,1,0),(34,22,1,0),(35,23,0,0),(36,20,1,0),(37,24,0,0),(38,25,0,0),(39,20,1,0),(40,26,0,0),(41,20,1,0),(42,20,1,0),(43,27,1,0),(44,20,1,0),(45,20,1,0),(46,20,1,0),(47,20,0,0),(48,28,0,0),(49,20,1,0),(50,29,0,0),(51,20,1,0),(52,30,1,0),(53,20,1,0),(54,30,1,0),(55,20,1,0),(56,20,1,0),(57,31,1,0),(58,32,0,0),(59,20,1,0),(60,31,1,0),(61,31,1,0),(62,20,1,0),(63,33,0,0),(64,20,1,0),(65,31,1,0),(66,20,1,0),(67,31,1,0),(68,34,0,0),(69,35,0,0),(70,31,1,0),(71,20,1,0),(72,35,0,0),(73,20,1,0),(74,36,0,0),(75,37,0,0),(76,20,1,0),(77,36,0,0),(78,20,0,0),(79,38,0,0),(80,20,0,0),(81,39,0,0),(82,40,0,0),(83,39,0,0),(84,20,1,0),(85,20,1,0),(86,40,0,0),(87,20,0,0),(88,42,1,0),(89,42,1,0),(90,20,1,0),(91,42,1,0),(92,44,0,0),(93,43,0,0),(94,20,0,0),(95,46,1,0),(96,47,1,0),(97,48,0,0),(98,20,1,0),(99,46,1,0),(100,46,1,0),(101,47,1,0),(102,48,0,0),(103,20,1,0),(104,46,1,0),(105,20,1,0),(106,20,1,0),(107,46,1,0),(108,20,0,0),(109,46,1,0),(110,49,1,0),(111,20,1,0),(112,50,0,0),(113,49,1,0),(114,51,0,0),(115,52,0,0),(116,51,0,0),(117,53,1,0),(118,54,1,0),(119,55,0,0),(120,58,1,0),(121,59,1,0),(122,60,0,0),(123,59,1,0),(124,61,0,0),(125,62,1,0),(126,63,0,0),(127,64,1,0),(128,65,1,0),(129,66,1,0),(130,67,1,0),(131,67,1,0),(132,68,0,0),(133,68,0,0),(134,69,0,0),(135,70,1,0),(136,71,0,0),(137,72,1,0),(138,72,1,0),(139,73,0,0),(140,74,0,0),(141,74,0,0),(142,74,0,0),(143,74,0,0),(144,75,0,0),(145,76,0,0),(146,76,0,0),(147,77,0,0),(148,78,1,0),(149,79,0,0),(150,80,0,0),(151,81,1,0),(152,82,0,0),(153,84,0,0),(154,85,0,0),(155,85,0,0),(156,86,1,0),(157,86,1,0),(158,86,1,0),(159,88,1,0),(160,88,1,0),(161,89,0,0),(162,90,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=320 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,147,57,2,NULL),(2,18,49,2,NULL),(3,19,49,2,NULL),(4,20,49,2,NULL),(5,88,49,2,NULL),(6,89,49,2,NULL),(7,91,49,2,NULL),(8,156,49,2,NULL),(9,157,49,2,NULL),(10,153,62,2,NULL),(11,18,51,2,NULL),(12,19,51,2,NULL),(13,20,51,2,NULL),(14,88,51,2,NULL),(15,89,51,2,NULL),(16,91,51,2,NULL),(17,156,51,2,NULL),(18,157,51,2,NULL),(19,139,53,2,NULL),(20,144,53,2,NULL),(21,150,53,2,NULL),(22,152,62,2,NULL),(23,140,54,2,NULL),(24,141,54,2,NULL),(25,142,54,2,NULL),(26,143,54,2,NULL),(27,156,1,2,NULL),(28,157,1,2,NULL),(29,156,26,2,NULL),(30,157,26,2,NULL),(31,156,8,2,NULL),(32,157,8,2,NULL),(33,156,13,2,NULL),(34,157,13,2,NULL),(35,156,17,2,NULL),(36,157,17,2,NULL),(37,156,28,2,NULL),(38,157,28,2,NULL),(39,156,10,2,NULL),(40,157,10,2,NULL),(41,156,25,2,NULL),(42,157,25,2,NULL),(43,156,29,2,NULL),(44,157,29,2,NULL),(45,156,34,2,NULL),(46,157,34,2,NULL),(47,156,35,2,NULL),(48,157,35,2,NULL),(49,156,69,2,NULL),(50,157,69,2,NULL),(51,156,72,2,NULL),(52,157,72,2,NULL),(53,156,74,2,NULL),(54,157,74,2,NULL),(55,156,75,2,NULL),(56,157,75,2,NULL),(57,156,36,2,NULL),(58,157,36,2,NULL),(59,156,42,2,NULL),(60,157,42,2,NULL),(61,156,43,2,NULL),(62,157,43,2,NULL),(63,156,48,2,NULL),(64,157,48,2,NULL),(65,156,73,2,NULL),(66,157,73,2,NULL),(67,145,16,2,NULL),(68,145,24,2,NULL),(69,145,37,2,NULL),(70,145,44,2,NULL),(71,145,70,2,NULL),(72,146,16,2,NULL),(73,146,24,2,NULL),(74,146,37,2,NULL),(75,146,44,2,NULL),(76,146,70,2,NULL),(77,154,16,2,NULL),(78,154,24,2,NULL),(79,154,37,2,NULL),(80,154,44,2,NULL),(81,154,70,2,NULL),(82,155,16,2,NULL),(83,155,24,2,NULL),(84,155,37,2,NULL),(85,155,44,2,NULL),(86,155,70,2,NULL),(87,162,22,2,NULL),(88,162,27,2,NULL),(89,162,41,2,NULL),(90,162,47,2,NULL),(91,162,71,2,NULL),(92,18,73,2,NULL),(93,19,73,2,NULL),(94,20,73,2,NULL),(95,88,73,2,NULL),(96,89,73,2,NULL),(97,91,73,2,NULL),(98,18,43,2,NULL),(99,19,43,2,NULL),(100,20,43,2,NULL),(101,88,43,2,NULL),(102,89,43,2,NULL),(103,91,43,2,NULL),(104,74,16,2,NULL),(105,74,24,2,NULL),(106,74,37,2,NULL),(107,74,44,2,NULL),(108,74,70,2,NULL),(109,77,16,2,NULL),(110,77,24,2,NULL),(111,77,37,2,NULL),(112,77,44,2,NULL),(113,77,70,2,NULL),(114,82,16,2,NULL),(115,82,24,2,NULL),(116,82,37,2,NULL),(117,82,44,2,NULL),(118,82,70,2,NULL),(119,86,16,2,NULL),(120,86,24,2,NULL),(121,86,37,2,NULL),(122,86,44,2,NULL),(123,86,70,2,NULL),(124,92,22,2,NULL),(125,92,27,2,NULL),(126,92,41,2,NULL),(127,92,47,2,NULL),(128,92,71,2,NULL),(129,18,48,2,NULL),(130,19,48,2,NULL),(131,20,48,2,NULL),(132,88,48,2,NULL),(133,89,48,2,NULL),(134,91,48,2,NULL),(135,18,10,2,NULL),(136,19,10,2,NULL),(137,20,10,2,NULL),(138,88,10,2,NULL),(139,89,10,2,NULL),(140,91,10,2,NULL),(141,18,1,2,NULL),(142,19,1,2,NULL),(143,20,1,2,NULL),(144,18,26,2,NULL),(145,19,26,2,NULL),(146,20,26,2,NULL),(147,18,8,2,NULL),(148,19,8,2,NULL),(149,20,8,2,NULL),(150,18,13,2,NULL),(151,19,13,2,NULL),(152,20,13,2,NULL),(153,18,17,2,NULL),(154,19,17,2,NULL),(155,20,17,2,NULL),(156,18,28,2,NULL),(157,19,28,2,NULL),(158,20,28,2,NULL),(159,18,25,2,NULL),(160,19,25,2,NULL),(161,20,25,2,NULL),(162,18,29,2,NULL),(163,19,29,2,NULL),(164,20,29,2,NULL),(165,18,34,2,NULL),(166,19,34,2,NULL),(167,20,34,2,NULL),(168,18,35,2,NULL),(169,19,35,2,NULL),(170,20,35,2,NULL),(171,18,69,2,NULL),(172,19,69,2,NULL),(173,20,69,2,NULL),(174,18,72,2,NULL),(175,19,72,2,NULL),(176,20,72,2,NULL),(177,18,74,2,NULL),(178,19,74,2,NULL),(179,20,74,2,NULL),(180,18,75,2,NULL),(181,19,75,2,NULL),(182,20,75,2,NULL),(183,18,36,2,NULL),(184,19,36,2,NULL),(185,20,36,2,NULL),(186,18,42,2,NULL),(187,19,42,2,NULL),(188,20,42,2,NULL),(189,13,16,2,NULL),(190,13,24,2,NULL),(191,13,37,2,NULL),(192,13,44,2,NULL),(193,13,70,2,NULL),(194,14,16,2,NULL),(195,14,24,2,NULL),(196,14,37,2,NULL),(197,14,44,2,NULL),(198,14,70,2,NULL),(199,21,16,2,NULL),(200,21,24,2,NULL),(201,21,37,2,NULL),(202,21,44,2,NULL),(203,21,70,2,NULL),(204,22,16,2,NULL),(205,22,24,2,NULL),(206,22,37,2,NULL),(207,22,44,2,NULL),(208,22,70,2,NULL),(209,24,22,2,NULL),(210,24,27,2,NULL),(211,24,41,2,NULL),(212,24,47,2,NULL),(213,24,71,2,NULL),(214,88,25,2,NULL),(215,89,25,2,NULL),(216,91,25,2,NULL),(217,88,8,2,NULL),(218,89,8,2,NULL),(219,91,8,2,NULL),(220,88,13,2,NULL),(221,89,13,2,NULL),(222,91,13,2,NULL),(223,88,17,2,NULL),(224,89,17,2,NULL),(225,91,17,2,NULL),(226,2,16,2,NULL),(227,2,24,2,NULL),(228,2,37,2,NULL),(229,2,44,2,NULL),(230,2,70,2,NULL),(231,3,16,2,NULL),(232,3,24,2,NULL),(233,3,37,2,NULL),(234,3,44,2,NULL),(235,3,70,2,NULL),(236,7,16,2,NULL),(237,7,24,2,NULL),(238,7,37,2,NULL),(239,7,44,2,NULL),(240,7,70,2,NULL),(241,8,16,2,NULL),(242,8,24,2,NULL),(243,8,37,2,NULL),(244,8,44,2,NULL),(245,8,70,2,NULL),(246,4,22,2,NULL),(247,4,27,2,NULL),(248,4,41,2,NULL),(249,4,47,2,NULL),(250,4,71,2,NULL),(251,88,28,2,NULL),(252,89,28,2,NULL),(253,91,28,2,NULL),(254,88,36,2,NULL),(255,89,36,2,NULL),(256,91,36,2,NULL),(257,88,1,2,NULL),(258,89,1,2,NULL),(259,91,1,2,NULL),(260,88,26,2,NULL),(261,89,26,2,NULL),(262,91,26,2,NULL),(263,88,29,2,NULL),(264,89,29,2,NULL),(265,91,29,2,NULL),(266,88,34,2,NULL),(267,89,34,2,NULL),(268,91,34,2,NULL),(269,88,35,2,NULL),(270,89,35,2,NULL),(271,91,35,2,NULL),(272,88,69,2,NULL),(273,89,69,2,NULL),(274,91,69,2,NULL),(275,88,72,2,NULL),(276,89,72,2,NULL),(277,91,72,2,NULL),(278,88,74,2,NULL),(279,89,74,2,NULL),(280,91,74,2,NULL),(281,88,75,2,NULL),(282,89,75,2,NULL),(283,91,75,2,NULL),(284,88,42,2,NULL),(285,89,42,2,NULL),(286,91,42,2,NULL),(287,69,16,2,NULL),(288,69,24,2,NULL),(289,69,37,2,NULL),(290,69,44,2,NULL),(291,69,70,2,NULL),(292,72,16,2,NULL),(293,72,24,2,NULL),(294,72,37,2,NULL),(295,72,44,2,NULL),(296,72,70,2,NULL),(297,132,16,2,NULL),(298,132,24,2,NULL),(299,132,37,2,NULL),(300,132,44,2,NULL),(301,132,70,2,NULL),(302,133,16,2,NULL),(303,133,24,2,NULL),(304,133,37,2,NULL),(305,133,44,2,NULL),(306,133,70,2,NULL),(307,79,22,2,NULL),(308,79,27,2,NULL),(309,79,41,2,NULL),(310,79,47,2,NULL),(311,79,71,2,NULL),(312,115,32,2,NULL),(313,25,33,2,NULL),(314,35,1,2,NULL),(315,81,20,2,NULL),(316,83,20,2,NULL),(317,97,20,2,NULL),(318,102,20,2,NULL),(319,124,23,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (14,'android.permission.ACCESS_COARSE_LOCATION'),(12,'android.permission.ACCESS_FINE_LOCATION'),(17,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(8,'android.permission.ACCESS_NETWORK_STATE'),(7,'android.permission.ACCESS_WIFI_STATE'),(5,'android.permission.CHANGE_WIFI_STATE'),(16,'android.permission.GET_TASKS'),(2,'android.permission.INSTALL_PACKAGES'),(3,'android.permission.INTERNET'),(15,'android.permission.READ_EXTERNAL_STORAGE'),(6,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(11,'android.permission.READ_SMS'),(10,'android.permission.RECEIVE_BOOT_COMPLETED'),(9,'android.permission.RESTART_PACKAGES'),(4,'android.permission.WRITE_EXTERNAL_STORAGE'),(13,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(2,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(3,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(4,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(5,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(6,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(7,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(8,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(9,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(10,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(11,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(20,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'file://',NULL,NULL,NULL),(23,NULL,NULL,'(.*)',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT((.*))&z=22',NULL,NULL,NULL),(26,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(27,NULL,NULL,'(.*)',NULL,NULL,NULL),(28,NULL,NULL,'http://maps.google.com/maps?q=(.*)((.*))&z=22',NULL,NULL,NULL),(29,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(30,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT()&z=22',NULL,NULL,NULL),(31,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(32,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(33,NULL,NULL,'(.*)',NULL,NULL,NULL),(34,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(35,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(36,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(37,NULL,NULL,'http://maps.google.com/maps?q=(.*)()&z=22',NULL,NULL,NULL),(38,NULL,NULL,'file://',NULL,NULL,NULL),(39,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(40,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(41,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(42,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(43,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(44,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(45,NULL,NULL,'(.*)',NULL,NULL,NULL),(46,NULL,NULL,'(.*)',NULL,NULL,NULL),(47,NULL,NULL,'(.*)',NULL,NULL,NULL),(48,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,41,26),(2,57,40),(3,87,48);
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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,2,1),(11,3,1),(12,2,3),(13,3,3),(14,2,4),(15,3,4),(16,2,5),(17,3,5),(18,2,7),(19,3,7),(20,2,8),(21,3,8),(22,2,10),(23,3,10),(24,4,1),(25,4,3),(26,4,7),(27,4,8),(28,4,11),(29,4,12),(30,4,13),(31,4,14),(32,5,17),(33,5,16),(34,5,1),(35,5,3),(36,5,4),(37,5,5),(38,5,7),(39,5,8),(40,5,10),(41,5,12),(42,5,15),(43,6,1),(44,6,2),(45,6,3),(46,6,4),(47,6,5),(48,6,7),(49,6,8),(50,6,10),(51,6,11),(52,6,12),(53,6,13),(54,6,14),(55,6,15),(56,6,17),(57,7,1),(58,7,2),(59,7,3),(60,7,4),(61,7,5),(62,7,7),(63,7,8),(64,7,11),(65,7,12),(66,7,13),(67,7,14),(68,7,15),(69,7,17);
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

-- Dump completed on 2015-10-12  3:29:30
