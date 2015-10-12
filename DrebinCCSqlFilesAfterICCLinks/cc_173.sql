-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_173
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (2,'android.appwidget.action.APPWIDGET_UPDATE'),(6,'android.intent.action.BATTERY_CHANGED_ACTION'),(5,'android.intent.action.BOOT_COMPLETED'),(15,'android.intent.action.CHOOSER'),(18,'android.intent.action.DIAL'),(12,'android.intent.action.EDIT'),(1,'android.intent.action.MAIN'),(13,'android.intent.action.PACKAGE_ADDED'),(19,'android.intent.action.SEND'),(20,'android.intent.action.SENDTO'),(4,'android.intent.action.SIG_STR'),(11,'android.intent.action.VIEW'),(21,'android.intent.action.WEB_SEARCH'),(9,'android.net.conn.CONNECTIVITY_CHANGE'),(7,'android.net.wifi.WIFI_STATE_CHANGED'),(16,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(10,'com.safetest.myapn.widget.rotate.CLICK'),(8,'com.safetest.myapn.widget.switch.CLICK'),(17,'com/safesys/onekeyvpn/Intents.OPEN_VPN_SERVICE_STARTED'),(14,'org.openintents.action.PICK_DIRECTORY'),(22,'org.openintents.action.PICK_FILE'),(3,'siir.atools.adbwireless.widget_update');
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
INSERT INTO `Applications` VALUES (1,'siir.atools.adbWireless',1),(2,'com.wqx.blackjack',10),(3,'com.safesys.onekeyvpn',9),(4,'com.safetest.myapn',19),(5,'sunkay.BookYuanyangdao',1),(6,'com.ps.wordsearch.view',9),(7,'com.gp.jewels',4);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(3,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'siir.atools.adbWireless.adbWireless'),(2,1,'siir.atools.adbWireless.ManagePreferences'),(3,1,'com.atools.battery.ShowTips'),(4,1,'com.atools.battery.UpdateService'),(5,1,'siir.atools.adbWireless.adbWidgetProvider'),(6,1,'com.atools.battery.Receiver'),(7,2,'com.adwo.adsdk.AdwoAdBrowserActivity'),(8,2,'com.wqx.blackjack.Blackjack'),(9,2,'com.wqx.blackjack.Card'),(10,2,'com.google.update.Dialog'),(11,2,'com.waps.OffersWebView'),(12,2,'com.google.update.UpdateService'),(13,2,'com.google.update.Receiver'),(14,3,'com.safesys.onekeyvpn.OpenVpnSettings'),(15,3,'com.safesys.onekeyvpn.AdvancedSettings'),(16,3,'com.safesys.onekeyvpn.EditConfig'),(17,3,'com.safesys.onekeyvpn.EditConfigPreferences'),(18,3,'com.safesys.onekeyvpn.EnterPassphrase'),(19,3,'com.safesys.onekeyvpn.EnterUserPassword'),(20,4,'com.safetest.myapn.InitialActivity'),(21,3,'com.safesys.onekeyvpn.ImportFiles'),(22,3,'com.safesys.onekeyvpn.service.OpenVpnService'),(23,4,'com.safetest.myapn.PreferenceActivity'),(24,3,'com.safesys.onekeyvpn.util.BootCompletedReceiver'),(25,4,'com.safetest.myapn.HelpActivity'),(26,4,'com.safetest.common.app.ActivationActivity'),(27,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(28,4,'com.safetest.myapn.ShowTips'),(29,4,'com.safetest.myapn.UpdateService'),(30,4,'com.safetest.myapn.HiApnWidgetProvider'),(31,5,'sunkay.BookYuanyangdao.BookYuanyangdao'),(32,4,'com.safetest.myapn.HiApnSwitcherWidgetProvider'),(33,4,'com.safetest.myapn.HiApnRotaterWidgetProvider'),(34,5,'sunkay.BookYuanyangdao.Chapter'),(35,5,'com.mt.airad.MultiAD'),(36,4,'com.safetest.myapn.Receiver'),(37,5,'com.waps.OffersWebView'),(38,5,'com.google.update.Dialog'),(39,5,'com.google.update.UpdateService'),(40,6,'com.ps.wordsearch.view.WordSearchActivity'),(41,5,'com.google.update.Receiver'),(42,6,'com.ps.wordsearch.view.CrashActivity'),(43,6,'com.ps.wordsearch.view.WordListActivity'),(44,6,'com.ps.wordsearch.view.TutorialActivity'),(45,1,'com.atools.battery.ShowTips$1'),(46,6,'com.ps.wordsearch.view.WordSearchPreferences'),(47,6,'com.google.update.Dialog'),(48,6,'cn.domob.android.ads.DomobActivity'),(49,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(50,6,'com.ps.wordsearch.view.IOService'),(51,6,'com.google.update.UpdateService'),(52,6,'com.google.update.Receiver'),(53,6,'com.ps.wordsearch.view.WordDictionaryProvider'),(54,7,'com.gp.jewels.Menu'),(55,7,'com.gp.jewels.Jewels'),(56,7,'cn.domob.android.ads.DomobActivity'),(57,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(58,7,'com.adwo.adsdk.AdwoSplashAdActivity'),(59,7,'com.mt.airad.MultiAD'),(60,7,'com.google.update.Dialog'),(61,7,'com.waps.OffersWebView'),(62,7,'com.google.update.UpdateService'),(63,7,'com.google.update.Receiver'),(64,2,'com.waps.q'),(65,2,'com.google.update.UpdateService$AA'),(66,3,'com.safesys.onekeyvpn.service.DaemonMonitor'),(67,3,'com.safesys.onekeyvpn.service.ManagementThread'),(68,3,'com.safesys.onekeyvpn.service.DaemonMonitor$2'),(69,3,'com.safesys.onekeyvpn.util.NetworkConnectivityListener$ConnectivityBroadcastReceiver'),(70,2,'com.waps.ac'),(71,3,'com.safesys.onekeyvpn.OpenVpnSettings$1'),(72,2,'com.google.update.Dialog$1'),(73,3,'com.safesys.onekeyvpn.ImportFiles$2'),(74,3,'com.safesys.onekeyvpn.OpenVpnSettings$4'),(75,2,'com.waps.z'),(76,5,'com.mt.airad.IIIIlllIlllIIIII'),(77,5,'com.google.update.Dialog$2'),(78,5,'sunkay.BookYuanyangdao.BookYuanyangdao$ClickEvent'),(79,5,'com.ju6.a'),(80,2,'com.waps.o'),(81,5,'com.google.update.UpdateService$MyThread'),(82,2,'com.waps.aa'),(83,4,'com.safetest.myapn.Util'),(84,5,'com.waps.m'),(85,2,'com.google.update.Dialog$2'),(86,5,'com.waps.AppConnect'),(87,4,'com.safetest.myapn.PreferenceActivity$8'),(88,5,'com.google.update.Dialog$1'),(89,4,'com.safetest.myapn.ApnDao'),(90,5,'com.waps.k'),(91,4,'com.safetest.myapn.HelpActivity$3'),(92,5,'sunkay.BookYuanyangdao.Chapter$ClickEvent'),(93,4,'com.adwo.adsdk.g'),(94,6,'com.ps.wordsearch.view.WordSearchActivity$DialogNoWordsCustomListener'),(95,6,'com.ps.wordsearch.model.dictionary.DictionaryCustomProvider'),(96,6,'com.ps.wordsearch.view.WordSearchActivity$DialogNoWordsListener'),(97,4,'com.safetest.myapn.HelpActivity$6$1'),(98,6,'com.google.update.Dialog$2'),(99,6,'cn.domob.android.ads.i$6'),(100,4,'com.safetest.myapn.ShowTips$1'),(101,4,'com.safetest.myapn.HelpActivity$4'),(102,6,'com.google.update.UpdateService$AA'),(103,6,'com.ps.wordsearch.view.WordSearchActivity$DialogDonateListener'),(104,6,'com.ps.wordsearch.view.WordListActivity$ImportListener'),(105,6,'cn.domob.android.ads.DomobAdEngine$2'),(106,6,'com.google.update.Dialog$1'),(107,6,'cn.domob.android.ads.DomobAdManager'),(108,6,'com.ps.wordsearch.view.WordListActivity$1'),(109,6,'cn.domob.android.ads.DomobActionReceiver'),(110,6,'com.ps.wordsearch.view.WordListActivity$ExportListener'),(111,6,'cn.domob.android.ads.i'),(112,7,'com.google.update.Dialog$2'),(113,7,'com.google.update.UpdateService$AA'),(114,7,'com.waps.o'),(115,7,'cn.domob.android.a.a$a'),(116,7,'com.waps.ac'),(117,7,'cn.domob.android.ads.o'),(118,7,'cn.domob.android.ads.e'),(119,7,'com.waps.z'),(120,7,'com.waps.aa'),(121,7,'com.waps.q'),(122,7,'cn.domob.android.ads.o$5'),(123,7,'cn.domob.android.ads.g$1'),(124,7,'com.google.update.Dialog$1'),(125,7,'com.mt.airad.IIIIlllIlllIIIII'),(126,7,'cn.domob.android.ads.DomobAdManager');
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
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,3,'MM'),(2,4,'SAFE_PID'),(3,4,'SAFE_START'),(4,11,'WAPS_ID'),(5,8,'WAPS_ID'),(6,12,'ST_MY_PID'),(7,7,'shouldShowTitlebar'),(8,8,'mLoseCount'),(9,11,'Notify_Url_Params'),(10,7,'shouldEnableBottomBar'),(11,11,'CLIENT_PACKAGE'),(12,7,'overlayTransition'),(13,9,'mStartTime'),(14,11,'UrlPath'),(15,8,'mCurrentScore'),(16,7,'shouldMakeOverlayTransparent'),(17,11,'offers_webview_tag'),(18,11,'ACTIVITY_FLAG'),(19,9,'mWinCount'),(20,7,'shouldShowBottomBar'),(21,11,'Offers_URL'),(22,8,'mMoney'),(23,8,'mMaxScore'),(24,7,'shouldResizeOverlay'),(25,12,'ST_START_DELAY'),(26,7,'transitionTime'),(27,11,'WAPS_PID'),(28,8,'WAPS_PID'),(29,11,'URL'),(30,10,'MSG'),(31,38,'MSG'),(32,37,'USER_ID'),(33,31,'WAPS_ID'),(34,8,'mWinCount'),(35,8,'Blackjack'),(36,31,'WAPS_PID'),(37,7,'overlayTitle'),(38,34,'UMENG_CHANNEL'),(39,11,'APP_ID'),(40,31,'UMENG_CHANNEL'),(41,8,'APP_ID'),(42,9,'mCurrentScore'),(43,37,'URL'),(44,37,'isFinshClose'),(45,34,'chapterNum'),(46,35,'adID'),(47,31,'DEVICE_ID'),(48,39,'ST_MY_PID'),(49,8,'CLIENT_PACKAGE'),(50,7,'url'),(51,8,'mStartTime'),(52,37,'Offers_URL'),(53,38,'TYPEdsada'),(54,35,'adURL'),(55,27,'shouldResizeOverlay'),(56,27,'shouldShowTitlebar'),(57,30,'FROM_CLASS'),(58,33,'FROM_CLASS'),(59,32,'FROM_CLASS'),(60,20,'started'),(61,9,'mLoseCount'),(62,9,'mMoney'),(63,11,'URL_PARAMS'),(64,9,'mMaxScore'),(65,11,'DEVICE_ID'),(66,8,'DEVICE_ID'),(67,11,'SHWO_FLAG'),(68,10,'TYPEdsada'),(69,11,'USER_ID'),(70,11,'Notify_Id'),(71,11,'isFinshClose'),(72,27,'transitionTime'),(73,27,'overlayTransition'),(74,29,'SAFE_START'),(75,27,'shouldMakeOverlayTransparent'),(76,37,'CLIENT_PACKAGE'),(77,31,'APP_ID'),(78,37,'URL_PARAMS'),(79,27,'url'),(80,27,'shouldShowBottomBar'),(81,28,'MM'),(82,39,'ST_START_DELAY'),(83,27,'overlayTitle'),(84,34,'UMENG_APPKEY'),(85,31,'UMENG_APPKEY'),(86,31,'CLIENT_PACKAGE'),(87,40,'KEY_NAME'),(88,40,'KEY_SIZE'),(89,46,'MSG'),(90,48,'shouldEnableBottomBar'),(91,29,'SAFE_PID'),(92,27,'shouldEnableBottomBar'),(93,48,'overlayTransition'),(94,40,'KEY_GLOBAL_RANK'),(95,40,'KEY_THEME'),(96,50,'ST_MY_PID'),(97,48,'overlayTitle'),(98,48,'shouldShowTitlebar'),(99,47,'appId'),(100,46,'TYPEdsada'),(101,40,'ws_high_score'),(102,50,'DOMOB_PID'),(103,49,'DOMOB_PID'),(104,48,'DOMOB_PID'),(105,50,'ST_START_DELAY'),(106,48,'shouldMakeOverlayTransparent'),(107,40,'KEY_TIME'),(108,40,'KEY_HIGH_SCORE'),(109,48,'url'),(110,50,'DOMOB_TEST_MODE'),(111,49,'DOMOB_TEST_MODE'),(112,48,'DOMOB_TEST_MODE'),(113,40,'ws_time'),(114,47,'actType'),(115,40,'ws_grid'),(116,50,'DOMOB_ALLOW_LOCATION'),(117,49,'DOMOB_ALLOW_LOCATION'),(118,48,'DOMOB_ALLOW_LOCATION'),(119,48,'transitionTime'),(120,40,'KEY_WORDLIST_COUNT'),(121,40,'KEY_GLOBAL_HIGH_SCORE'),(122,47,'appName'),(123,40,'KEY_RANK'),(124,48,'shouldShowBottomBar'),(125,48,'shouldResizeOverlay'),(126,55,'actType'),(127,60,'UrlPath'),(128,60,'CLIENT_PACKAGE'),(129,60,'APP_ID'),(130,53,'APP_ID'),(131,54,'APP_ID'),(132,56,'shouldMakeOverlayTransparent'),(133,57,'shouldShowBottomBar'),(134,60,'isFinshClose'),(135,56,'overlayTitle'),(136,57,'DOMOB_TEST_MODE'),(137,61,'DOMOB_TEST_MODE'),(138,56,'DOMOB_TEST_MODE'),(139,53,'DOMOB_TEST_MODE'),(140,54,'DOMOB_TEST_MODE'),(141,60,'Notify_Url_Params'),(142,56,'shouldShowBottomBar'),(143,60,'USER_ID'),(144,59,'TYPEdsada'),(145,60,'Notify_Id'),(146,56,'shouldEnableBottomBar'),(147,57,'transitionTime'),(148,59,'MSG'),(149,57,'overlayTransition'),(150,60,'URL'),(151,53,'mode'),(152,54,'mode'),(153,60,'WAPS_PID'),(154,53,'WAPS_PID'),(155,54,'WAPS_PID'),(156,58,'adID'),(157,57,'DOMOB_PID'),(158,61,'DOMOB_PID'),(159,56,'DOMOB_PID'),(160,53,'DOMOB_PID'),(161,54,'DOMOB_PID'),(162,60,'WAPS_ID'),(163,53,'WAPS_ID'),(164,54,'WAPS_ID'),(165,56,'shouldShowTitlebar'),(166,60,'ACTIVITY_FLAG'),(167,61,'ST_MY_PID'),(168,56,'transitionTime'),(169,56,'shouldResizeOverlay'),(170,60,'URL_PARAMS'),(171,55,'appId'),(172,60,'Offers_URL'),(173,57,'overlayTitle'),(174,60,'SHWO_FLAG'),(175,61,'ST_START_DELAY'),(176,53,'CLIENT_PACKAGE'),(177,54,'CLIENT_PACKAGE'),(178,60,'DEVICE_ID'),(179,53,'DEVICE_ID'),(180,54,'DEVICE_ID'),(181,56,'overlayTransition'),(182,57,'shouldEnableBottomBar'),(183,57,'shouldResizeOverlay'),(184,57,'shouldShowTitlebar'),(185,57,'DOMOB_ALLOW_LOCATION'),(186,61,'DOMOB_ALLOW_LOCATION'),(187,56,'DOMOB_ALLOW_LOCATION'),(188,53,'DOMOB_ALLOW_LOCATION'),(189,54,'DOMOB_ALLOW_LOCATION'),(190,58,'adURL'),(191,57,'shouldMakeOverlayTransparent'),(192,55,'appName'),(193,57,'FSAd'),(194,56,'url'),(195,60,'offers_webview_tag');
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'s',0,NULL,NULL),(5,5,'r',1,NULL,NULL),(6,6,'r',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'s',0,NULL,NULL),(13,13,'r',1,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'s',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'r',1,8,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'s',0,NULL,NULL),(30,30,'r',1,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'r',1,NULL,NULL),(33,33,'r',1,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'r',1,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'s',0,NULL,NULL),(40,40,'a',1,NULL,NULL),(41,41,'r',1,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',1,NULL,NULL),(44,44,'a',1,NULL,NULL),(45,46,'a',1,NULL,NULL),(46,47,'a',0,NULL,NULL),(47,48,'a',0,NULL,NULL),(48,49,'a',0,NULL,NULL),(49,50,'s',0,NULL,NULL),(50,51,'s',0,NULL,NULL),(51,52,'r',1,NULL,NULL),(52,53,'p',0,NULL,NULL),(53,54,'a',1,NULL,NULL),(54,55,'a',0,NULL,NULL),(55,56,'a',0,NULL,NULL),(56,57,'a',0,NULL,NULL),(57,58,'a',0,NULL,NULL),(58,59,'a',0,NULL,NULL),(59,60,'a',0,NULL,NULL),(60,61,'a',0,NULL,NULL),(61,62,'s',0,NULL,NULL),(62,63,'r',1,NULL,NULL),(63,64,'r',1,NULL,NULL),(64,69,'r',1,NULL,NULL),(65,84,'r',1,NULL,NULL),(66,109,'r',1,NULL,NULL),(67,118,'r',1,NULL,NULL),(68,121,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,1),(3,3,3),(4,4,6),(5,5,8),(6,6,12),(7,7,11),(8,8,14),(9,9,12),(10,10,22),(11,10,14),(12,11,19),(13,12,8),(14,13,22),(15,13,14),(16,14,14),(17,15,12),(18,16,22),(19,16,14),(20,17,22),(21,17,14),(22,18,22),(23,18,14),(24,19,14),(25,19,22),(26,20,11),(27,21,18),(28,22,14),(29,23,14),(30,24,10),(31,25,14),(32,25,22),(33,26,21),(34,27,14),(35,28,14),(36,29,11),(37,30,35),(38,31,13),(39,32,38),(40,33,11),(41,34,31),(42,35,14),(43,36,8),(44,37,39),(45,38,22),(46,38,14),(47,40,22),(48,39,11),(49,41,39),(50,42,24),(51,43,11),(52,44,31),(53,45,41),(54,46,20),(55,47,39),(56,48,23),(57,48,30),(58,48,32),(59,48,33),(60,48,20),(61,49,20),(62,50,10),(63,51,31),(64,52,20),(65,53,23),(66,54,38),(67,55,20),(68,56,36),(69,57,37),(70,58,25),(71,59,34),(72,60,20),(73,61,39),(74,62,40),(75,63,52),(76,64,43),(77,65,50),(78,66,50),(79,67,43),(80,68,40),(81,69,40),(82,70,20),(83,71,25),(84,72,46),(85,73,20),(86,74,48),(87,74,50),(88,74,49),(89,75,28),(90,76,20),(91,77,25),(92,78,40),(93,79,40),(94,80,40),(95,81,43),(96,82,50),(97,83,40),(98,84,52),(99,85,52),(100,86,40),(101,87,43),(102,88,43),(103,89,50),(104,89,48),(105,89,49),(106,90,46),(107,91,40),(108,92,50),(109,92,49),(110,92,48),(111,93,43),(112,94,43),(113,95,43),(114,96,43),(115,97,51),(116,98,49),(117,98,50),(118,98,48),(119,99,40),(120,100,59),(121,101,61),(122,102,60),(123,103,61),(124,103,56),(125,103,57),(126,103,54),(127,103,53),(128,104,60),(129,105,54),(130,105,53),(131,105,57),(132,105,56),(133,105,61),(134,106,60),(135,107,60),(136,108,61),(137,109,61),(138,109,53),(139,109,54),(140,109,57),(141,109,56),(142,110,54),(143,111,53),(144,111,61),(145,111,54),(146,111,57),(147,111,56),(148,112,61),(149,113,59),(150,114,60),(151,115,58),(152,116,60),(153,117,57),(154,117,56),(155,117,54),(156,117,53),(157,117,61),(158,118,62);
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
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<siir.atools.adbWireless.adbWireless: boolean onMenuItemSelected(int,android.view.MenuItem)>',9,'a',NULL),(2,1,'<siir.atools.adbWireless.adbWireless: void onCreate(android.os.Bundle)>',62,'s',NULL),(3,45,'<com.atools.battery.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(4,6,'<com.atools.battery.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(5,8,'<com.wqx.blackjack.Blackjack: boolean onKeyDown(int,android.view.KeyEvent)>',37,'a',NULL),(6,12,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(7,11,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(8,14,'<com.safesys.onekeyvpn.OpenVpnSettings: void onCreate(android.os.Bundle)>',34,'s',NULL),(9,65,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(10,66,'<com.safesys.onekeyvpn.service.DaemonMonitor: void start()>',13,'r',0),(11,19,'<com.safesys.onekeyvpn.EnterUserPassword: void onCreate(android.os.Bundle)>',6,'s',NULL),(12,8,'<com.wqx.blackjack.Blackjack: void onClick(android.view.View)>',33,'a',NULL),(13,67,'<com.safesys.onekeyvpn.service.ManagementThread: void run()>',55,'r',0),(14,14,'<com.safesys.onekeyvpn.OpenVpnSettings: boolean onOptionsItemSelected(android.view.MenuItem)>',22,'a',NULL),(15,12,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(16,67,'<com.safesys.onekeyvpn.service.ManagementThread: void run()>',31,'r',0),(17,67,'<com.safesys.onekeyvpn.service.ManagementThread: void networkStateChanged(int)>',11,'r',0),(18,68,'<com.safesys.onekeyvpn.service.DaemonMonitor$2: void onCmdTerminated()>',10,'r',0),(19,66,'<com.safesys.onekeyvpn.service.DaemonMonitor: void start()>',68,'r',0),(20,70,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(21,18,'<com.safesys.onekeyvpn.EnterPassphrase: void onCreate(android.os.Bundle)>',6,'s',NULL),(22,22,'<com.safesys.onekeyvpn.service.OpenVpnService: void daemonStart(java.io.File)>',27,'r',0),(23,71,'<com.safesys.onekeyvpn.OpenVpnSettings$1: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',12,'s',NULL),(24,72,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(25,67,'<com.safesys.onekeyvpn.service.ManagementThread: void run()>',23,'r',0),(26,73,'<com.safesys.onekeyvpn.ImportFiles$2: void onClick(android.view.View)>',6,'a',NULL),(27,71,'<com.safesys.onekeyvpn.OpenVpnSettings$1: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',18,'s',NULL),(28,74,'<com.safesys.onekeyvpn.OpenVpnSettings$4: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(29,75,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(30,76,'<com.mt.airad.IIIIlllIlllIIIII: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',10,'a',NULL),(31,13,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(32,77,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(33,11,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(34,78,'<sunkay.BookYuanyangdao.BookYuanyangdao$ClickEvent: void onClick(android.view.View)>',21,'a',0),(35,14,'<com.safesys.onekeyvpn.OpenVpnSettings: void onCreate(android.os.Bundle)>',31,'s',NULL),(36,8,'<com.wqx.blackjack.Blackjack: boolean onOptionsItemSelected(android.view.MenuItem)>',43,'a',NULL),(37,79,'<com.ju6.a: boolean b()>',178,'p',NULL),(38,67,'<com.safesys.onekeyvpn.service.ManagementThread: void onState(java.lang.String)>',44,'r',0),(39,80,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(40,22,'<com.safesys.onekeyvpn.service.OpenVpnService: void onCreate()>',6,'r',NULL),(41,81,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(42,24,'<com.safesys.onekeyvpn.util.BootCompletedReceiver: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(43,82,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(44,78,'<sunkay.BookYuanyangdao.BookYuanyangdao$ClickEvent: void onClick(android.view.View)>',44,'a',0),(45,41,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(46,20,'<com.safetest.myapn.InitialActivity: void initialAdvertise()>',10,'s',NULL),(47,39,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(48,83,'<com.safetest.myapn.Util: void sendToUpdateWidget(android.content.Context,java.lang.Class)>',13,'r',NULL),(49,20,'<com.safetest.myapn.InitialActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(50,85,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(51,86,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(52,20,'<com.safetest.myapn.InitialActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(53,87,'<com.safetest.myapn.PreferenceActivity$8: void onClick(android.view.View)>',94,'a',NULL),(54,88,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(55,89,'<com.safetest.myapn.ApnDao: void delete(java.lang.String)>',4,'p',NULL),(56,36,'<com.safetest.myapn.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(57,90,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(58,91,'<com.safetest.myapn.HelpActivity$3: void onClick(android.view.View)>',4,'a',NULL),(59,92,'<sunkay.BookYuanyangdao.Chapter$ClickEvent: void onClick(android.view.View)>',76,'a',NULL),(60,93,'<com.adwo.adsdk.g: void run()>',59,'a',NULL),(61,39,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(62,94,'<com.ps.wordsearch.view.WordSearchActivity$DialogNoWordsCustomListener: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(63,53,'<com.ps.wordsearch.view.WordDictionaryProvider: int update(android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',29,'p',0),(64,43,'<com.ps.wordsearch.view.WordListActivity: void onClick(android.content.DialogInterface,int)>',36,'p',0),(65,51,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(66,51,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(67,43,'<com.ps.wordsearch.view.WordListActivity: void onClick(android.content.DialogInterface,int)>',57,'p',0),(68,95,'<com.ps.wordsearch.model.dictionary.DictionaryCustomProvider: java.lang.String getNextWord(int,int)>',8,'p',NULL),(69,96,'<com.ps.wordsearch.view.WordSearchActivity$DialogNoWordsListener: void onClick(android.content.DialogInterface,int)>',13,'a',NULL),(70,89,'<com.safetest.myapn.ApnDao: void insert(com.safetest.myapn.ApnDetailInfo)>',36,'p',NULL),(71,97,'<com.safetest.myapn.HelpActivity$6$1: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(72,98,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(73,89,'<com.safetest.myapn.ApnDao: java.util.List queryAll()>',19,'p',NULL),(74,99,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(75,100,'<com.safetest.myapn.ShowTips$1: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(76,20,'<com.safetest.myapn.InitialActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',22,'a',NULL),(77,101,'<com.safetest.myapn.HelpActivity$4: void onClick(android.view.View)>',22,'a',NULL),(78,94,'<com.ps.wordsearch.view.WordSearchActivity$DialogNoWordsCustomListener: void onClick(android.content.DialogInterface,int)>',16,'a',NULL),(79,40,'<com.ps.wordsearch.view.WordSearchActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',24,'a',NULL),(80,96,'<com.ps.wordsearch.view.WordSearchActivity$DialogNoWordsListener: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(81,43,'<com.ps.wordsearch.view.WordListActivity: void onClick(android.content.DialogInterface,int)>',10,'p',0),(82,102,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(83,103,'<com.ps.wordsearch.view.WordSearchActivity$DialogDonateListener: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(84,53,'<com.ps.wordsearch.view.WordDictionaryProvider: android.net.Uri insert(android.net.Uri,android.content.ContentValues)>',46,'p',NULL),(85,53,'<com.ps.wordsearch.view.WordDictionaryProvider: int delete(android.net.Uri,java.lang.String,java.lang.String[])>',19,'p',0),(86,40,'<com.ps.wordsearch.view.WordSearchActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(87,43,'<com.ps.wordsearch.view.WordListActivity: boolean onContextItemSelected(android.view.MenuItem)>',16,'p',0),(88,104,'<com.ps.wordsearch.view.WordListActivity$ImportListener: void onClick(android.content.DialogInterface,int)>',19,'s',NULL),(89,105,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(90,106,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(91,103,'<com.ps.wordsearch.view.WordSearchActivity$DialogDonateListener: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(92,107,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(93,108,'<com.ps.wordsearch.view.WordListActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(94,104,'<com.ps.wordsearch.view.WordListActivity$ImportListener: void onClick(android.view.View)>',20,'a',NULL),(95,110,'<com.ps.wordsearch.view.WordListActivity$ExportListener: void onClick(android.view.View)>',20,'a',NULL),(96,110,'<com.ps.wordsearch.view.WordListActivity$ExportListener: void onClick(android.content.DialogInterface,int)>',19,'s',NULL),(97,52,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(98,111,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(99,40,'<com.ps.wordsearch.view.WordSearchActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(100,112,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(101,113,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(102,114,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(103,115,'<cn.domob.android.a.a$a: java.net.Proxy a(android.content.Context)>',72,'p',NULL),(104,116,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(105,117,'<cn.domob.android.ads.o: void v(cn.domob.android.ads.o)>',6,'a',NULL),(106,119,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(107,120,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(108,62,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(109,122,'<cn.domob.android.ads.o$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(110,55,'<com.gp.jewels.Jewels: void toMenuView()>',7,'a',NULL),(111,123,'<cn.domob.android.ads.g$1: void onClick(android.content.DialogInterface,int)>',8,'a',0),(112,62,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(113,124,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(114,61,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(115,125,'<com.mt.airad.IIIIlllIlllIIIII: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',10,'a',NULL),(116,61,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(117,126,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor m(android.content.Context)>',11,'p',NULL),(118,63,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,3,1),(2,4,1),(3,11,1),(4,12,1),(5,21,1),(6,22,1),(7,23,14),(8,25,15),(9,26,11),(10,27,15),(11,28,15),(12,29,11),(13,31,15),(14,32,15),(15,34,15),(16,35,16),(17,36,1),(18,37,15),(19,38,1),(20,39,15),(21,42,11),(22,43,1),(23,44,17),(24,45,1),(25,53,2),(26,55,16),(27,59,1),(28,60,1),(29,62,11),(30,64,11),(31,65,11),(32,66,18),(33,69,19),(34,70,20),(35,71,11),(36,72,20),(37,73,19),(38,74,19),(39,75,11),(40,76,11),(41,77,11),(42,78,18),(43,79,11),(44,80,11),(45,81,11),(46,82,20),(47,83,19),(48,84,19),(49,85,19),(50,86,19),(51,87,20),(52,88,11),(53,89,19),(54,90,11),(55,92,19),(56,93,11),(57,94,12),(58,95,20),(59,97,11),(60,99,21),(61,100,11),(62,102,21),(63,104,19),(64,105,11),(65,106,18),(66,108,11),(67,109,16),(68,110,11),(69,111,1),(70,113,1),(71,114,11),(72,115,11),(73,117,11),(74,118,15),(75,119,15),(76,120,11),(77,121,15),(78,122,15),(79,124,15),(80,125,11),(81,126,15),(82,127,15),(83,129,15),(84,130,1),(85,131,1),(86,132,11),(87,133,12),(88,135,1),(89,136,1),(90,137,11),(91,138,11),(92,139,22),(93,140,22),(94,143,11),(95,145,16),(96,146,1),(97,147,1),(98,148,11),(99,150,11),(100,151,11),(101,156,11),(102,158,11),(103,159,11),(104,160,11),(105,161,11),(106,165,1),(107,166,1),(108,168,1),(109,169,1),(110,170,11);
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
INSERT INTO `ICategories` VALUES (1,3,1),(2,4,3),(3,11,1),(4,12,3),(5,21,1),(6,22,3),(7,36,1),(8,38,3),(9,43,3),(10,45,1),(11,59,1),(12,60,3),(13,111,1),(14,113,3),(15,130,3),(16,131,1),(17,135,1),(18,136,3),(19,146,1),(20,147,3),(21,165,1),(22,166,3),(23,168,1),(24,169,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'siir/atools/adbWireless/ManagePreferences'),(2,2,'com/atools/battery/UpdateService'),(3,5,'com/atools/battery/UpdateService'),(4,6,'com/wqx/blackjack/Card'),(5,7,'com/google/update/Dialog'),(6,8,'com/google/update/Dialog'),(7,9,'(.*)'),(8,10,'com/safesys/onekeyvpn/service/OpenVpnService'),(9,13,'com/safesys/onekeyvpn/service/OpenVpnService'),(10,14,'com/wqx/blackjack/Card'),(11,15,'com/safesys/onekeyvpn/AdvancedSettings'),(12,16,'com/google/update/Dialog'),(13,17,'com/google/update/Dialog'),(14,18,'NULL-CONSTANT'),(15,19,'com/safesys/onekeyvpn/service/OpenVpnService'),(16,20,'com/safesys/onekeyvpn/service/OpenVpnService'),(17,24,'com/safesys/onekeyvpn/service/OpenVpnService'),(18,30,'com/google/update/UpdateService'),(19,40,'com/safesys/onekeyvpn/service/OpenVpnService'),(20,41,'com/wqx/blackjack/Blackjack'),(21,46,'com/safesys/onekeyvpn/service/OpenVpnService'),(22,47,'com/waps/OffersWebView'),(23,48,'com/google/update/UpdateService'),(24,50,'com/safetest/myapn/UpdateService'),(25,49,'com/waps/OffersWebView'),(26,51,'com/google/update/Dialog'),(27,52,'com/google/update/Dialog'),(28,54,'com/safetest/myapn/HelpActivity'),(29,57,'com/safetest/myapn/PreferenceActivity'),(30,56,'com/waps/OffersWebView'),(31,58,'com/safetest/myapn/InitialActivity'),(32,61,'com/safetest/myapn/UpdateService'),(33,67,'com/google/update/Dialog'),(34,68,'com/google/update/Dialog'),(35,76,'com/adwo/adsdk/AdwoAdBrowserActivity'),(36,77,'com.google.android.maps.MapsActivity'),(37,90,'com.google.android.maps.MapsActivity'),(38,93,'com.google.android.maps.MapsActivity'),(39,96,'com/google/update/Dialog'),(40,97,'com.google.android.maps.MapsActivity'),(41,98,'com/google/update/Dialog'),(42,101,'com/google/update/Dialog'),(43,103,'com/google/update/Dialog'),(44,105,'com.google.android.maps.MapsActivity'),(45,107,'com/ps/wordsearch/view/WordSearchPreferences'),(46,116,'com/safetest/common/app/ActivationActivity'),(47,123,'com/ps/wordsearch/view/WordSearchPreferences'),(48,125,'com/ps/wordsearch/view/TutorialActivity'),(49,128,'com/ps/wordsearch/view/WordSearchPreferences'),(50,134,'com/ps/wordsearch/view/IOService'),(51,141,'com/ps/wordsearch/view/IOService'),(52,142,'com/google/update/UpdateService'),(53,144,'com/ps/wordsearch/view/WordSearchPreferences'),(54,149,'NULL-CONSTANT'),(55,152,'com/waps/OffersWebView'),(56,153,'com/waps/OffersWebView'),(57,154,'com/google/update/Dialog'),(58,155,'com/google/update/Dialog'),(59,162,'com/gp/jewels/Menu'),(60,163,'com/google/update/Dialog'),(61,164,'com/google/update/Dialog'),(62,171,'(.*)'),(63,172,'com/google/update/UpdateService');
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,26,1),(2,29,2),(3,42,4),(4,62,6),(5,64,7),(6,65,8),(7,66,9),(8,69,10),(9,70,11),(10,71,12),(11,72,13),(12,73,14),(13,74,15),(14,75,16),(15,78,17),(16,79,18),(17,80,19),(18,82,20),(19,83,21),(20,86,22),(21,88,23),(22,89,24),(23,90,25),(24,92,26),(25,93,27),(26,95,28),(27,97,29),(28,100,30),(29,104,31),(30,105,32),(31,108,35),(32,110,37),(33,114,38),(34,115,39),(35,117,40),(36,120,41),(37,132,42),(38,137,44),(39,138,46),(40,139,47),(41,140,48),(42,143,49),(43,148,50),(44,150,52),(45,151,53),(46,156,54),(47,158,55),(48,159,56),(49,160,57),(50,161,58),(51,170,59);
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
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,6,'mMaxScore'),(2,6,'mMoney'),(3,6,'mWinCount'),(4,6,'mLoseCount'),(5,6,'mStartTime'),(6,6,'mCurrentScore'),(7,7,'MSG'),(8,7,'TYPEdsada'),(9,8,'TYPEdsada'),(10,14,'mMaxScore'),(11,14,'mMoney'),(12,14,'mWinCount'),(13,14,'mLoseCount'),(14,14,'mStartTime'),(15,14,'mCurrentScore'),(16,15,'hasDaemonsStarted'),(17,16,'MSG'),(18,16,'TYPEdsada'),(19,17,'TYPEdsada'),(20,23,'org.openintents.extra.TITLE'),(21,25,'android.intent.extra.INTENT'),(22,27,'android.intent.extra.INTENT'),(23,28,'android.intent.extra.TITLE'),(24,28,'android.intent.extra.INTENT'),(25,31,'android.intent.extra.INTENT'),(26,32,'android.intent.extra.TITLE'),(27,32,'android.intent.extra.INTENT'),(28,34,'android.intent.extra.INTENT'),(29,37,'android.intent.extra.TITLE'),(30,37,'android.intent.extra.INTENT'),(31,39,'android.intent.extra.TITLE'),(32,39,'android.intent.extra.INTENT'),(33,47,'UrlPath'),(34,47,'ACTIVITY_FLAG'),(35,47,'isFinshClose'),(36,47,'offers_webview_tag'),(37,49,'Notify_Url_Params'),(38,49,'UrlPath'),(39,49,'ACTIVITY_FLAG'),(40,49,'isFinshClose'),(41,49,'offers_webview_tag'),(42,51,'TYPEdsada'),(43,52,'MSG'),(44,52,'TYPEdsada'),(45,53,'FROM_CLASS'),(46,56,'USER_ID'),(47,56,'CLIENT_PACKAGE'),(48,56,'Offers_URL'),(49,56,'URL_PARAMS'),(50,58,'started'),(51,67,'TYPEdsada'),(52,68,'MSG'),(53,68,'TYPEdsada'),(54,69,'android.intent.extra.TEXT'),(55,69,'android.intent.extra.SUBJECT'),(56,69,'android.intent.extra.EMAIL'),(57,70,'sms_body'),(58,73,'android.intent.extra.EMAIL'),(59,74,'android.intent.extra.TEXT'),(60,74,'android.intent.extra.EMAIL'),(61,76,'url'),(62,83,'android.intent.extra.EMAIL'),(63,85,'android.intent.extra.TEXT'),(64,85,'android.intent.extra.SUBJECT'),(65,85,'android.intent.extra.EMAIL'),(66,86,'android.intent.extra.TEXT'),(67,86,'android.intent.extra.SUBJECT'),(68,86,'android.intent.extra.EMAIL'),(69,92,'android.intent.extra.TEXT'),(70,92,'android.intent.extra.EMAIL'),(71,95,'sms_body'),(72,96,'MSG'),(73,96,'TYPEdsada'),(74,98,'TYPEdsada'),(75,99,'query'),(76,101,'MSG'),(77,101,'TYPEdsada'),(78,103,'TYPEdsada'),(79,118,'android.intent.extra.INTENT'),(80,119,'android.intent.extra.INTENT'),(81,121,'android.intent.extra.TITLE'),(82,121,'android.intent.extra.INTENT'),(83,122,'android.intent.extra.INTENT'),(84,124,'android.intent.extra.TITLE'),(85,124,'android.intent.extra.INTENT'),(86,126,'android.intent.extra.INTENT'),(87,127,'android.intent.extra.TITLE'),(88,127,'android.intent.extra.INTENT'),(89,129,'android.intent.extra.TITLE'),(90,129,'android.intent.extra.INTENT'),(91,134,'overwrite'),(92,134,'filename'),(93,134,'actionType'),(94,139,'org.openintents.extra.BUTTON_TEXT'),(95,140,'org.openintents.extra.BUTTON_TEXT'),(96,141,'overwrite'),(97,141,'filename'),(98,141,'actionType'),(99,152,'UrlPath'),(100,152,'ACTIVITY_FLAG'),(101,152,'isFinshClose'),(102,152,'offers_webview_tag'),(103,153,'Notify_Url_Params'),(104,153,'UrlPath'),(105,153,'ACTIVITY_FLAG'),(106,153,'isFinshClose'),(107,153,'offers_webview_tag'),(108,154,'MSG'),(109,154,'TYPEdsada'),(110,155,'TYPEdsada'),(111,163,'MSG'),(112,163,'TYPEdsada'),(113,164,'TYPEdsada');
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,2,3),(4,3,4),(5,3,5),(6,3,6),(7,4,1),(8,5,6),(9,5,4),(10,5,5),(11,6,1),(12,7,1),(13,8,5),(14,9,10),(15,9,9),(16,9,8),(17,9,7),(18,9,2),(19,10,1),(20,11,2),(21,11,8),(22,11,7),(23,12,7),(24,12,10),(25,12,2),(26,13,6),(27,13,5),(28,13,4),(29,14,1),(30,15,4),(31,15,5),(32,15,6),(33,16,11),(34,16,12),(35,17,11),(36,18,11),(37,19,6),(38,19,5),(39,19,4),(40,20,1),(41,21,5),(42,21,4),(43,21,6),(44,22,13),(45,23,9),(46,24,13),(47,25,13),(48,26,13),(49,27,13),(50,28,13);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,4,1),(3,6,1),(4,7,1),(5,10,1),(6,14,1),(7,16,2),(8,20,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,16,NULL,NULL,NULL,NULL,'vnd.android.cursor.dir','vnd.ps.word'),(2,22,'package',NULL,NULL,NULL,NULL,NULL),(3,24,'package',NULL,NULL,NULL,NULL,NULL),(4,25,'package',NULL,NULL,NULL,NULL,NULL),(5,26,'package',NULL,NULL,NULL,NULL,NULL),(6,27,'package',NULL,NULL,NULL,NULL,NULL),(7,28,'package',NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `IMimeTypes` VALUES (1,26,'application','vnd.android.package-archive'),(2,42,'application','vnd.android.package-archive'),(3,62,'application','vnd.android.package-archive'),(4,71,'*','*'),(5,80,'(.*)','(.*)'),(6,85,'message','rfc882'),(7,88,'(.*)','(.*)'),(8,94,'vnd.android.cursor.dir','vnd.ps.word'),(9,100,'*','*'),(10,110,'application','vnd.android.package-archive'),(11,114,'application','vnd.android.package-archive'),(12,115,'application','vnd.android.package-archive'),(13,117,'application','vnd.android.package-archive'),(14,120,'application','vnd.android.package-archive'),(15,133,'vnd.android.cursor.dir','vnd.ps.word'),(16,148,'application','vnd.android.package-archive'),(17,151,'application','vnd.android.package-archive'),(18,156,'application','vnd.android.package-archive'),(19,158,'application','vnd.android.package-archive'),(20,159,'application','vnd.android.package-archive'),(21,160,'application','vnd.android.package-archive'),(22,161,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'siir.atools.adbWireless'),(2,2,'siir.atools.adbWireless'),(3,3,'com.noshufou.android.su'),(4,4,'com.noshufou.android.su'),(5,5,'siir.atools.adbWireless'),(6,6,'com.wqx.blackjack'),(7,7,'com.wqx.blackjack'),(8,8,'com.wqx.blackjack'),(9,9,'(.*)'),(10,10,'com.safesys.onekeyvpn'),(11,11,'com.wqx.blackjack'),(12,12,'com.wqx.blackjack'),(13,13,'com.safesys.onekeyvpn'),(14,14,'com.wqx.blackjack'),(15,15,'com.safesys.onekeyvpn'),(16,16,'com.wqx.blackjack'),(17,17,'com.wqx.blackjack'),(18,18,'NULL-CONSTANT'),(19,19,'com.safesys.onekeyvpn'),(20,20,'com.safesys.onekeyvpn'),(21,21,'com.noshufou.android.su'),(22,22,'com.noshufou.android.su'),(23,24,'com.safesys.onekeyvpn'),(24,30,'com.wqx.blackjack'),(25,36,'(.*)'),(26,38,'(.*)'),(27,40,'com.safesys.onekeyvpn'),(28,41,'com.wqx.blackjack'),(29,43,'sunkay.BookYuanyangdao'),(30,46,'com.safesys.onekeyvpn'),(31,45,'sunkay.BookYuanyangdao'),(32,47,'com.wqx.blackjack'),(33,48,'sunkay.BookYuanyangdao'),(34,50,'com.safetest.myapn'),(35,49,'com.wqx.blackjack'),(36,51,'sunkay.BookYuanyangdao'),(37,52,'sunkay.BookYuanyangdao'),(38,54,'com.safetest.myapn'),(39,57,'com.safetest.myapn'),(40,56,'sunkay.BookYuanyangdao'),(41,58,'com.safetest.myapn'),(42,59,'com.noshufou.android.su'),(43,60,'com.noshufou.android.su'),(44,61,'com.safetest.myapn'),(45,67,'sunkay.BookYuanyangdao'),(46,68,'sunkay.BookYuanyangdao'),(47,76,'com.safetest.myapn'),(48,77,'com.google.android.apps.maps'),(49,90,'com.google.android.apps.maps'),(50,93,'com.google.android.apps.maps'),(51,96,'com.ps.wordsearch.view'),(52,97,'com.google.android.apps.maps'),(53,98,'com.ps.wordsearch.view'),(54,101,'com.ps.wordsearch.view'),(55,103,'com.ps.wordsearch.view'),(56,105,'com.google.android.apps.maps'),(57,107,'com.ps.wordsearch.view'),(58,111,'com.noshufou.android.su'),(59,113,'com.noshufou.android.su'),(60,116,'com.safetest.myapn'),(61,123,'com.ps.wordsearch.view'),(62,125,'com.ps.wordsearch.view'),(63,128,'com.ps.wordsearch.view'),(64,130,'com.ps.wordsearch.view'),(65,131,'com.ps.wordsearch.view'),(66,134,'com.ps.wordsearch.view'),(67,135,'com.noshufou.android.su'),(68,136,'com.noshufou.android.su'),(69,141,'com.ps.wordsearch.view'),(70,142,'com.ps.wordsearch.view'),(71,144,'com.ps.wordsearch.view'),(72,146,'com.gp.jewels'),(73,147,'com.gp.jewels'),(74,149,'NULL-CONSTANT'),(75,152,'com.gp.jewels'),(76,153,'com.gp.jewels'),(77,154,'com.gp.jewels'),(78,155,'com.gp.jewels'),(79,162,'com.gp.jewels'),(80,163,'com.gp.jewels'),(81,164,'com.gp.jewels'),(82,165,'com.noshufou.android.su'),(83,166,'com.noshufou.android.su'),(84,168,'(.*)'),(85,169,'(.*)'),(86,171,'(.*)'),(87,172,'com.gp.jewels');
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,5,0),(3,6,0),(4,8,0),(5,13,0),(6,14,0),(7,20,0),(8,24,0),(9,30,0),(10,31,0),(11,32,0),(12,33,0),(13,36,0),(14,40,0),(15,41,0),(16,43,0),(17,44,0),(18,45,0),(19,51,0),(20,53,0),(21,62,0),(22,63,0),(23,64,0),(24,65,0),(25,66,0),(26,67,0),(27,68,0),(28,67,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,1,0),(4,3,1,0),(5,4,0,0),(6,5,0,0),(7,6,0,0),(8,6,0,0),(9,7,0,0),(10,8,0,0),(11,9,1,0),(12,9,1,0),(13,11,0,0),(14,12,0,0),(15,14,0,0),(16,15,0,0),(17,15,0,0),(18,20,0,0),(19,21,0,0),(20,23,0,0),(21,24,1,0),(22,24,1,0),(23,26,1,0),(24,27,0,0),(25,28,1,0),(26,29,1,0),(27,28,1,0),(28,28,1,0),(29,30,1,0),(30,31,0,0),(31,28,1,0),(32,28,1,0),(33,33,1,0),(34,28,1,0),(35,32,1,0),(36,33,1,0),(37,28,1,0),(38,33,1,0),(39,28,1,0),(40,35,0,0),(41,36,0,0),(42,39,1,0),(43,41,1,0),(44,40,1,0),(45,41,1,0),(46,42,0,0),(47,43,0,0),(48,45,0,0),(49,43,0,0),(50,46,0,0),(51,47,0,0),(52,47,0,0),(53,48,1,0),(54,49,0,0),(55,50,1,0),(56,51,0,0),(57,52,0,0),(58,53,0,0),(59,54,1,0),(60,54,1,0),(61,56,0,0),(62,57,1,0),(63,58,1,0),(64,58,1,0),(65,59,1,0),(66,60,1,0),(67,61,0,0),(68,61,0,0),(69,60,1,0),(70,60,1,0),(71,60,1,0),(72,60,1,0),(73,60,1,0),(74,60,1,0),(75,60,1,0),(76,60,0,0),(77,60,0,0),(78,60,1,0),(79,60,1,0),(80,60,1,0),(81,60,1,0),(82,60,1,0),(83,60,1,0),(84,60,1,0),(85,60,1,0),(86,60,1,0),(87,60,1,0),(88,60,1,0),(89,60,1,0),(90,60,0,0),(91,60,1,0),(92,60,1,0),(93,60,0,0),(94,62,1,0),(95,60,1,0),(96,65,0,0),(97,60,0,0),(98,65,0,0),(99,60,1,0),(100,60,1,0),(101,66,0,0),(102,60,1,0),(103,66,0,0),(104,60,1,0),(105,60,0,0),(106,60,1,0),(107,69,0,0),(108,71,1,0),(109,72,1,0),(110,74,1,0),(111,75,1,0),(112,74,1,0),(113,75,1,0),(114,74,1,0),(115,74,1,0),(116,76,0,0),(117,74,1,0),(118,77,1,0),(119,77,1,0),(120,74,1,0),(121,77,1,0),(122,77,1,0),(123,78,0,0),(124,77,1,0),(125,79,0,0),(126,77,1,0),(127,77,1,0),(128,80,0,0),(129,77,1,0),(130,82,1,0),(131,82,1,0),(132,83,1,0),(133,86,1,0),(134,88,0,0),(135,90,1,0),(136,90,1,0),(137,91,1,0),(138,93,1,0),(139,94,1,0),(140,95,1,0),(141,96,0,0),(142,97,0,0),(143,98,1,0),(144,99,0,0),(145,100,1,0),(146,101,1,0),(147,101,1,0),(148,102,1,0),(149,104,0,0),(150,105,1,0),(151,106,1,0),(152,107,0,0),(153,107,0,0),(154,108,0,0),(155,108,0,0),(156,109,1,0),(157,109,1,0),(158,109,1,0),(159,109,1,0),(160,109,1,0),(161,109,1,0),(162,110,0,0),(163,112,0,0),(164,112,0,0),(165,113,1,0),(166,113,1,0),(167,114,1,0),(168,114,1,0),(169,114,1,0),(170,115,1,0),(171,116,0,0),(172,118,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,33,31,2,NULL),(2,36,31,2,NULL),(3,38,31,2,NULL),(4,44,31,2,NULL),(5,167,31,2,NULL),(6,168,31,2,NULL),(7,169,31,2,NULL),(8,51,10,2,NULL),(9,51,38,2,NULL),(10,51,46,2,NULL),(11,51,59,2,NULL),(12,52,10,2,NULL),(13,52,38,2,NULL),(14,52,46,2,NULL),(15,52,59,2,NULL),(16,67,10,2,NULL),(17,67,38,2,NULL),(18,67,46,2,NULL),(19,67,59,2,NULL),(20,68,10,2,NULL),(21,68,38,2,NULL),(22,68,46,2,NULL),(23,68,59,2,NULL),(24,48,12,2,NULL),(25,48,39,2,NULL),(26,48,50,2,NULL),(27,48,61,2,NULL),(28,33,41,2,NULL),(29,36,41,2,NULL),(30,38,41,2,NULL),(31,44,41,2,NULL),(32,167,41,2,NULL),(33,168,41,2,NULL),(34,169,41,2,NULL),(35,10,22,2,NULL),(36,15,15,2,NULL),(37,40,22,2,NULL),(38,33,14,2,NULL),(39,36,14,2,NULL),(40,38,14,2,NULL),(41,44,14,2,NULL),(42,167,14,2,NULL),(43,168,14,2,NULL),(44,169,14,2,NULL),(45,19,22,2,NULL),(46,13,22,2,NULL),(47,44,1,2,NULL),(48,44,5,2,NULL),(49,44,6,2,NULL),(50,44,8,2,NULL),(51,44,13,2,NULL),(52,44,24,2,NULL),(53,44,64,2,NULL),(54,44,20,2,NULL),(55,44,30,2,NULL),(56,44,32,2,NULL),(57,44,33,2,NULL),(58,44,36,2,NULL),(59,44,40,2,NULL),(60,44,44,2,NULL),(61,44,45,2,NULL),(62,44,51,2,NULL),(63,44,53,2,NULL),(64,44,62,2,NULL),(65,46,22,2,NULL),(66,33,24,2,NULL),(67,36,24,2,NULL),(68,38,24,2,NULL),(69,167,24,2,NULL),(70,168,24,2,NULL),(71,169,24,2,NULL),(72,33,64,2,NULL),(73,36,64,2,NULL),(74,38,64,2,NULL),(75,167,64,2,NULL),(76,168,64,2,NULL),(77,169,64,2,NULL),(78,125,44,2,NULL),(79,144,45,2,NULL),(80,33,40,2,NULL),(81,36,40,2,NULL),(82,38,40,2,NULL),(83,133,43,2,NULL),(84,167,40,2,NULL),(85,168,40,2,NULL),(86,169,40,2,NULL),(87,33,44,2,NULL),(88,36,44,2,NULL),(89,38,44,2,NULL),(90,167,44,2,NULL),(91,168,44,2,NULL),(92,169,44,2,NULL),(93,33,45,2,NULL),(94,36,45,2,NULL),(95,38,45,2,NULL),(96,167,45,2,NULL),(97,168,45,2,NULL),(98,169,45,2,NULL),(99,96,10,2,NULL),(100,96,38,2,NULL),(101,96,46,2,NULL),(102,96,59,2,NULL),(103,98,10,2,NULL),(104,98,38,2,NULL),(105,98,46,2,NULL),(106,98,59,2,NULL),(107,101,10,2,NULL),(108,101,38,2,NULL),(109,101,46,2,NULL),(110,101,59,2,NULL),(111,103,10,2,NULL),(112,103,38,2,NULL),(113,103,46,2,NULL),(114,103,59,2,NULL),(115,142,12,2,NULL),(116,142,39,2,NULL),(117,142,50,2,NULL),(118,142,61,2,NULL),(119,33,51,2,NULL),(120,36,51,2,NULL),(121,38,51,2,NULL),(122,167,51,2,NULL),(123,168,51,2,NULL),(124,169,51,2,NULL),(125,6,9,2,NULL),(126,14,9,2,NULL),(127,41,8,2,NULL),(128,33,8,2,NULL),(129,36,8,2,NULL),(130,38,8,2,NULL),(131,167,8,2,NULL),(132,168,8,2,NULL),(133,169,8,2,NULL),(134,33,1,2,NULL),(135,36,1,2,NULL),(136,38,1,2,NULL),(137,33,5,2,NULL),(138,36,5,2,NULL),(139,38,5,2,NULL),(140,33,6,2,NULL),(141,36,6,2,NULL),(142,38,6,2,NULL),(143,33,13,2,NULL),(144,36,13,2,NULL),(145,38,13,2,NULL),(146,33,20,2,NULL),(147,36,20,2,NULL),(148,38,20,2,NULL),(149,33,30,2,NULL),(150,36,30,2,NULL),(151,38,30,2,NULL),(152,33,32,2,NULL),(153,36,32,2,NULL),(154,38,32,2,NULL),(155,33,33,2,NULL),(156,36,33,2,NULL),(157,38,33,2,NULL),(158,33,36,2,NULL),(159,36,36,2,NULL),(160,38,36,2,NULL),(161,33,53,2,NULL),(162,36,53,2,NULL),(163,38,53,2,NULL),(164,33,62,2,NULL),(165,36,62,2,NULL),(166,38,62,2,NULL),(167,7,10,2,NULL),(168,7,38,2,NULL),(169,7,46,2,NULL),(170,7,59,2,NULL),(171,8,10,2,NULL),(172,8,38,2,NULL),(173,8,46,2,NULL),(174,8,59,2,NULL),(175,16,10,2,NULL),(176,16,38,2,NULL),(177,16,46,2,NULL),(178,16,59,2,NULL),(179,17,10,2,NULL),(180,17,38,2,NULL),(181,17,46,2,NULL),(182,17,59,2,NULL),(183,30,12,2,NULL),(184,30,39,2,NULL),(185,30,50,2,NULL),(186,30,61,2,NULL),(187,167,13,2,NULL),(188,168,13,2,NULL),(189,169,13,2,NULL),(190,1,2,2,NULL),(191,2,4,2,NULL),(192,167,1,2,NULL),(193,168,1,2,NULL),(194,169,1,2,NULL),(195,167,5,2,NULL),(196,168,5,2,NULL),(197,169,5,2,NULL),(198,5,4,2,NULL),(199,167,6,2,NULL),(200,168,6,2,NULL),(201,169,6,2,NULL),(202,50,29,2,NULL),(203,54,25,2,NULL),(204,167,53,2,NULL),(205,57,23,2,NULL),(206,168,53,2,NULL),(207,116,26,2,NULL),(208,169,53,2,NULL),(209,167,20,2,NULL),(210,162,53,2,NULL),(211,168,20,2,NULL),(212,169,20,2,NULL),(213,167,30,2,NULL),(214,168,30,2,NULL),(215,169,30,2,NULL),(216,167,32,2,NULL),(217,168,32,2,NULL),(218,169,32,2,NULL),(219,167,33,2,NULL),(220,168,33,2,NULL),(221,169,33,2,NULL),(222,167,36,2,NULL),(223,61,29,2,NULL),(224,168,36,2,NULL),(225,169,36,2,NULL),(226,167,62,2,NULL),(227,168,62,2,NULL),(228,169,62,2,NULL),(229,154,10,2,NULL),(230,154,38,2,NULL),(231,154,46,2,NULL),(232,154,59,2,NULL),(233,155,10,2,NULL),(234,155,38,2,NULL),(235,155,46,2,NULL),(236,155,59,2,NULL),(237,163,10,2,NULL),(238,163,38,2,NULL),(239,163,46,2,NULL),(240,163,59,2,NULL),(241,164,10,2,NULL),(242,164,38,2,NULL),(243,164,46,2,NULL),(244,164,59,2,NULL),(245,172,12,2,NULL),(246,172,39,2,NULL),(247,172,50,2,NULL),(248,172,61,2,NULL);
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
INSERT INTO `PAuthorities` VALUES (1,1,'com.ps.wordsearch.provider.words');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (6,'android.permission.ACCESS_COARSE_LOCATION'),(17,'android.permission.ACCESS_FINE_LOCATION'),(19,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(7,'android.permission.ACCESS_NETWORK_STATE'),(4,'android.permission.ACCESS_WIFI_STATE'),(12,'android.permission.BROADCAST_STICKY'),(14,'android.permission.CHANGE_NETWORK_STATE'),(3,'android.permission.CHANGE_WIFI_STATE'),(20,'android.permission.GET_TASKS'),(16,'android.permission.INSTALL_PACKAGES'),(2,'android.permission.INTERNET'),(18,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(10,'android.permission.READ_SMS'),(8,'android.permission.RECEIVE_BOOT_COMPLETED'),(21,'android.permission.RECORD_AUDIO'),(5,'android.permission.VIBRATE'),(15,'android.permission.WAKE_LOCK'),(13,'android.permission.WRITE_APN_SETTINGS'),(9,'android.permission.WRITE_EXTERNAL_STORAGE'),(11,'android.permission.WRITE_SMS');
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
INSERT INTO `Providers` VALUES (1,52,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'',NULL,NULL,NULL),(3,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(4,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(5,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(6,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(7,NULL,NULL,'http://www.hidroid.net/droid/bbs/forumdisplay.php?fid=34',NULL,NULL,NULL),(8,NULL,NULL,'http://blog.163.com/sunkay_app/blog/static/19191703720117294041998/',NULL,NULL,NULL),(9,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(10,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(11,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(12,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(14,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(15,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(16,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(17,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(20,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'(.*)',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT((.*))&z=22',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'http://maps.google.com/maps?q=(.*)((.*))&z=22',NULL,NULL,NULL),(28,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(29,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT()&z=22',NULL,NULL,NULL),(30,NULL,NULL,'(.*)',NULL,NULL,NULL),(31,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(32,NULL,NULL,'http://maps.google.com/maps?q=(.*)()&z=22',NULL,NULL,NULL),(33,NULL,NULL,'content://com.ps.wordsearch.provider.words/words',NULL,NULL,NULL),(34,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(35,NULL,NULL,'(.*)',NULL,NULL,NULL),(36,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(37,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(38,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(39,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(40,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(41,NULL,NULL,'file://',NULL,NULL,NULL),(42,NULL,NULL,'http://www.brendandahl.com/wordsearch/donate',NULL,NULL,NULL),(43,NULL,NULL,'content://com.ps.wordsearch.provider.words/words',NULL,NULL,NULL),(44,NULL,NULL,'market://details?id=com.dahl.brendan.donate',NULL,NULL,NULL),(45,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(46,NULL,NULL,'market://details?id=org.openintents.filemanager',NULL,NULL,NULL),(47,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(48,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(49,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(50,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(51,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(52,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(53,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(54,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(55,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(56,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(57,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(58,NULL,NULL,'file://',NULL,NULL,NULL),(59,NULL,NULL,'',NULL,NULL,NULL),(60,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,37,3),(2,55,5),(3,68,33),(4,70,34),(5,73,36),(6,84,43),(7,92,45),(8,103,51),(9,117,60);
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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,1),(9,2,2),(10,2,3),(11,2,4),(12,2,7),(13,2,8),(14,2,9),(15,3,1),(16,3,2),(17,3,6),(18,3,7),(19,3,10),(20,3,11),(21,3,12),(22,4,1),(23,4,2),(24,4,3),(25,4,4),(26,4,6),(27,4,7),(28,4,9),(29,4,10),(30,4,11),(31,4,13),(32,4,14),(33,4,15),(34,5,17),(35,5,16),(36,5,1),(37,5,2),(38,5,3),(39,5,4),(40,5,6),(41,5,7),(42,5,8),(43,5,9),(44,5,10),(45,5,11),(46,6,17),(47,6,1),(48,6,19),(49,6,2),(50,6,18),(51,6,3),(52,6,4),(53,6,7),(54,6,8),(55,6,9),(56,7,1),(57,7,2),(58,7,3),(59,7,4),(60,7,5),(61,7,6),(62,7,7),(63,7,8),(64,7,9),(65,7,15),(66,7,17),(67,7,19),(68,7,18),(69,7,21),(70,7,20);
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

-- Dump completed on 2015-10-12  3:29:33
