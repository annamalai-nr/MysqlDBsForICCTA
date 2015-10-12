-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_144
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (20,'(.*)'),(5,'android.appwidget.action.APPWIDGET_UPDATE'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(2,'android.intent.action.BOOT_COMPLETED'),(19,'android.intent.action.CALL'),(8,'android.intent.action.CHOOSER'),(16,'android.intent.action.DIAL'),(25,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(7,'android.intent.action.NEW_OUTGOING_CALL'),(15,'android.intent.action.PACKAGE_ADDED'),(14,'android.intent.action.SCREEN_OFF'),(13,'android.intent.action.SCREEN_ON'),(17,'android.intent.action.SEND'),(18,'android.intent.action.SENDTO'),(3,'android.intent.action.SIG_STR'),(22,'android.intent.action.USER_PRESENT'),(12,'android.intent.action.VIEW'),(24,'android.intent.action.WEB_SEARCH'),(26,'android.media.action.IMAGE_CAPTURE'),(6,'android.net.conn.CONNECTIVITY_CHANGE'),(11,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(21,'com.dsadi.dsdsda'),(23,'com/alipay/android/app/IAlixPay'),(9,'com/tutusw/onekeyvpn/Intents.OPEN_VPN_SERVICE_STARTED'),(10,'org.openintents.action.PICK_DIRECTORY');
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
INSERT INTO `Applications` VALUES (1,'com.tutusw.onekeyvpn',6),(2,'com.allen.txtxcb',1),(3,'com.aijiaoyou.android.sipphone',1005),(4,'com.droidhen.vipbasketball',59),(5,'com.safetest.compass',13),(6,'com.alan.siwameinv8',8),(7,'com.evilsunflower.picturepuzzle',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.tutusw.onekeyvpn.OpenVpnSettings'),(2,1,'com.tutusw.onekeyvpn.AdvancedSettings'),(3,1,'com.tutusw.onekeyvpn.EditConfig'),(4,1,'com.tutusw.onekeyvpn.EditConfigPreferences'),(5,1,'com.tutusw.onekeyvpn.EnterPassphrase'),(6,1,'com.tutusw.onekeyvpn.EnterUserPassword'),(7,1,'com.tutusw.onekeyvpn.ImportFiles'),(8,1,'com.tutusw.onekeyvpn.service.OpenVpnService'),(9,1,'com.tutusw.onekeyvpn.util.BootCompletedReceiver'),(10,2,'com.allen.txtxcb.txtReader'),(11,2,'com.google.ssearch.Dialog'),(12,4,'com.droidhen.vipbasketball.GameActivity'),(13,2,'com.allen.txtxcb.ViewFileAct_Float'),(14,2,'com.allen.txtxcb.Settings'),(15,4,'com.droidhen.vipbasketball.OptionActivity'),(16,2,'com.google.ssearch.SearchService'),(17,4,'com.droidhen.api.promptclient.more.MoreActivity'),(18,2,'com.google.ssearch.Receiver'),(19,4,'com.droidhen.api.promptclient.prompt.RecommendActivity'),(20,4,'com.droidhen.api.promptclient.prompt.RateActivity'),(21,3,'com.aijiaoyou.android.sipphone.InitOnlineActivity'),(22,4,'com.droidhen.api.scoreclient.ui.HighScoresActivity'),(23,4,'com.droidhen.api.scoreclient.ui.AchievementListActivity'),(24,4,'com.droidhen.vipbasketball.ShowTips'),(25,3,'com.aijiaoyou.android.sipphone.OnlineActivity'),(26,4,'com.droidhen.vipbasketball.UpdateService'),(27,3,'com.aijiaoyou.android.sipphone.AgentDetialInfo'),(28,5,'com.safetest.compass.CompassActivity'),(29,4,'com.droidhen.vipbasketball.Receiver'),(30,3,'com.aijiaoyou.android.sipphone.SongListActivity'),(31,3,'com.aijiaoyou.android.sipphone.HistoryDetailActivity'),(32,4,'com.droidhen.api.scoreclient.ScoreClientProvider'),(33,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(34,3,'com.aijiaoyou.android.sipphone.ChongZhiActivity'),(35,3,'com.aijiaoyou.android.sipphone.ZhiFuBaoChongZhiActivity'),(36,5,'com.safetest.compass.ShowTips'),(37,3,'org.linphone.LinphonePreferencesActivity11'),(38,5,'com.safetest.compass.widget.CompassService'),(39,5,'com.safetest.compass.UpdateService'),(40,3,'com.mjdc.sapp.core.DialogActivity'),(41,5,'com.safetest.compass.widget.CompassWidget'),(42,3,'org.linphone.LinphoneService'),(43,3,'com.mjdc.sapp.service.ConnectService'),(44,5,'com.safetest.compass.Receiver'),(45,3,'com.mjdc.sapp.service.BehindService'),(46,3,'org.linphone.NetworkManager'),(47,3,'org.linphone.OutgoingCallReceiver'),(48,3,'org.linphone.BootReceiver'),(49,3,'com.mjdc.sapp.receiver.SigChangeReceiver'),(50,3,'com.mjdc.sapp.receiver.BootReceiver'),(51,6,'com.alan.siwameinv8.PaperCollection'),(52,6,'com.alan.siwameinv8.PictureGrid'),(53,6,'com.google.ads.AdActivity'),(54,6,'com.vpon.adon.android.WebInApp'),(55,7,'com.evilsunflower.picturepuzzle.Main'),(56,6,'com.adwo.adsdk.AdwoSplashAdActivity'),(57,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(58,6,'com.waps.OffersWebView'),(59,7,'com.evilsunflower.picturepuzzle.PuzzleView'),(60,6,'com.google.update.Dialog'),(61,7,'com.mobclix.android.sdk.MobclixBrowserActivity'),(62,6,'com.google.update.UpdateService'),(63,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(64,6,'com.google.update.Receiver'),(65,7,'com.evilsunflower.picturepuzzle.ShowTips'),(66,7,'com.evilsunflower.picturepuzzle.UpdateService'),(67,7,'com.evilsunflower.picturepuzzle.Receiver'),(68,1,'com.tutusw.onekeyvpn.service.DaemonMonitor'),(69,1,'com.tutusw.onekeyvpn.OpenVpnSettings$4'),(70,1,'com.tutusw.onekeyvpn.util.NetworkConnectivityListener$ConnectivityBroadcastReceiver'),(71,1,'com.tutusw.onekeyvpn.ImportFiles$2'),(72,1,'com.tutusw.onekeyvpn.service.ManagementThread'),(73,2,'com.google.ssearch.SearchService$MyThread'),(74,1,'com.tutusw.onekeyvpn.service.DaemonMonitor$2'),(75,2,'com.google.ssearch.Dialog$1'),(76,1,'com.tutusw.onekeyvpn.OpenVpnSettings$1'),(77,4,'com.droidhen.vipbasketball.ShowTips$1'),(78,4,'com.droidhen.api.promptclient.prompt.RecommendActivity$1'),(79,5,'com.safetest.compass.ShowTips$1'),(80,5,'com.safetest.compass.widget.CompassService$1'),(81,5,'com.safetest.compass.MyLocationManager$ConnectivityBroadcastReceiver'),(82,5,'com.adwo.adsdk.D'),(83,5,'android.appwidget.AppWidgetProvider'),(84,3,'com.mjdc.sapp.core.DialogActivity$1'),(85,3,'com.aijiaoyou.android.sipphone.OnlineActivity$11'),(86,6,'com.waps.m'),(87,3,'com.mjdc.sapp.service.ConnectService$ConnectChangeReceiver'),(88,6,'com.google.update.Dialog$1'),(89,5,'com.adwo.adsdk.g'),(90,6,'com.google.update.Dialog$2'),(91,6,'com.ju6.a'),(92,6,'com.google.update.UpdateService$MyThread'),(93,6,'com.waps.AppConnect'),(94,7,'com.google.ads.util.AdUtil$UserActivityReceiver'),(95,7,'com.mobclix.android.sdk.MobclixCreative$Action'),(96,3,'com.alipay.android.MobileSecurePayer'),(97,6,'com.waps.k'),(98,7,'com.evilsunflower.picturepuzzle.ShowTips$1'),(99,7,'com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener'),(100,7,'com.mobclix.android.sdk.MobclixBrowserActivity$ScreenReceiver'),(101,7,'com.madhouse.android.ads._'),(102,7,'com.adwo.adsdk.g'),(103,7,'com.adwo.adsdk.D');
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
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,11,'TYPEdsada'),(2,13,'/sdcard/txtbooks/xcb.txt'),(3,13,'book1'),(4,11,'MSG'),(5,22,'board'),(6,22,'submit'),(7,26,'SAFE_PID'),(8,22,'global'),(9,39,'SAFE_START'),(10,34,'shouldResizeOverlay'),(11,34,'overlayTransition'),(12,34,'shouldShowBottomBar'),(13,35,'MM'),(14,34,'url'),(15,34,'overlayTitle'),(16,20,'file'),(17,26,'SAFE_START'),(18,24,'MM'),(19,39,'SAFE_PID'),(20,22,'mode'),(21,20,'msg'),(22,27,'fee'),(23,27,'state'),(24,27,'nickname'),(25,27,'age'),(26,27,'largeimgurl'),(27,52,'APP_ID'),(28,58,'CLIENT_PACKAGE'),(29,34,'transitionTime'),(30,57,'shouldShowTitlebar'),(31,34,'shouldShowTitlebar'),(32,58,'Offers_URL'),(33,57,'transitionTime'),(34,34,'shouldEnableBottomBar'),(35,60,'MSG'),(36,52,'CLIENT_PACKAGE'),(37,27,'sign'),(38,27,'city'),(39,40,'MSG'),(40,57,'shouldMakeOverlayTransparent'),(41,62,'ST_START_DELAY'),(42,60,'TYPEdsada'),(43,47,'android.intent.extra.PHONE_NUMBER'),(44,54,'url'),(45,52,'DEVICE_ID'),(46,53,'params'),(47,57,'shouldResizeOverlay'),(48,58,'URL'),(49,53,'action'),(50,46,'noConnectivity'),(51,46,'networkInfo'),(52,52,'WAPS_PID'),(53,57,'url'),(54,53,'com.google.ads.AdOpener'),(55,57,'overlayTitle'),(56,57,'overlayTransition'),(57,57,'shouldEnableBottomBar'),(58,54,'adWidth'),(59,61,'com.evilsunflower.picturepuzzle.type'),(60,40,'TYPEdsada'),(61,27,'sex'),(62,62,'ST_MY_PID'),(63,56,'Adwo_PID'),(64,66,'SAFE_START'),(65,52,'WAPS_ID'),(66,63,'shouldShowTitlebar'),(67,27,'phone'),(68,63,'url'),(69,61,'imageUri'),(70,63,'shouldEnableBottomBar'),(71,61,'(.*)'),(72,61,'com.evilsunflower.picturepuzzle.data'),(73,58,'isFinshClose'),(74,63,'shouldResizeOverlay'),(75,58,'USER_ID'),(76,56,'isTestMode'),(77,63,'transitionTime'),(78,58,'URL_PARAMS'),(79,57,'shouldShowBottomBar'),(80,63,'shouldMakeOverlayTransparent'),(81,65,'MM'),(82,63,'overlayTransition'),(83,61,'Adwo_PID'),(84,34,'shouldMakeOverlayTransparent'),(85,63,'shouldShowBottomBar'),(86,63,'overlayTitle'),(87,66,'SAFE_PID');
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
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'s',0,NULL,NULL),(9,9,'r',1,4,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'s',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'r',1,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'s',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',1,NULL,NULL),(29,29,'r',1,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'p',0,NULL,NULL),(33,34,'a',0,NULL,NULL),(34,33,'a',0,NULL,NULL),(35,36,'a',0,NULL,NULL),(36,35,'a',0,NULL,NULL),(37,37,'a',1,NULL,NULL),(38,38,'s',0,NULL,NULL),(39,39,'s',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'r',1,NULL,NULL),(42,42,'s',0,NULL,NULL),(43,43,'s',0,NULL,NULL),(44,44,'r',1,NULL,NULL),(45,45,'s',0,NULL,NULL),(46,46,'r',1,NULL,NULL),(47,47,'r',1,NULL,NULL),(48,48,'r',1,NULL,NULL),(49,49,'r',1,NULL,NULL),(50,50,'r',1,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',1,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',1,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'s',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'r',1,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'s',0,NULL,NULL),(67,67,'r',1,NULL,NULL),(68,70,'r',1,NULL,NULL),(69,80,'r',1,NULL,NULL),(70,81,'r',1,NULL,NULL),(71,82,'r',1,NULL,NULL),(72,83,'r',1,NULL,NULL),(73,86,'r',1,NULL,NULL),(74,87,'r',1,NULL,NULL),(75,94,'r',1,NULL,NULL),(76,100,'r',1,NULL,NULL),(77,103,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,8),(2,1,1),(3,2,9),(4,3,1),(5,4,1),(6,5,1),(7,6,10),(8,7,8),(9,8,16),(10,9,1),(11,10,7),(12,11,16),(13,12,5),(14,13,8),(15,13,1),(16,14,8),(17,14,1),(18,15,6),(19,16,16),(20,17,1),(21,17,8),(22,18,8),(23,18,1),(24,19,1),(25,19,8),(26,20,1),(27,20,8),(28,21,1),(29,22,13),(30,23,8),(31,23,1),(32,24,11),(33,25,1),(34,26,18),(35,27,1),(36,28,24),(37,29,32),(38,30,12),(39,30,19),(40,31,35),(41,32,29),(42,33,32),(43,34,32),(44,35,27),(45,36,40),(46,37,25),(47,38,44),(48,39,60),(49,40,25),(50,41,28),(51,42,48),(52,43,62),(53,44,25),(54,45,60),(55,46,25),(56,47,62),(57,48,47),(58,49,62),(59,50,25),(60,51,53),(61,52,40),(62,53,27),(63,54,25),(64,55,52),(65,56,49),(66,57,61),(67,58,50),(68,59,62),(69,60,40),(70,61,55),(71,62,36),(72,63,61),(73,64,64),(74,65,25),(75,66,61),(76,67,61),(77,68,58),(78,69,65),(79,70,61),(80,71,61),(81,72,61),(82,73,41),(83,74,61),(84,75,61),(85,76,61),(86,77,61),(87,78,67),(88,79,55),(89,79,61),(90,80,61),(91,81,61);
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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,68,'<com.tutusw.onekeyvpn.service.DaemonMonitor: void start()>',68,'r',0),(2,9,'<com.tutusw.onekeyvpn.util.BootCompletedReceiver: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(3,1,'<com.tutusw.onekeyvpn.OpenVpnSettings: boolean onOptionsItemSelected(android.view.MenuItem)>',22,'a',NULL),(4,69,'<com.tutusw.onekeyvpn.OpenVpnSettings$4: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(5,1,'<com.tutusw.onekeyvpn.OpenVpnSettings: void onCreate(android.os.Bundle)>',24,'s',NULL),(6,10,'<com.allen.txtxcb.txtReader: void onClick(android.view.View)>',10,'a',NULL),(7,8,'<com.tutusw.onekeyvpn.service.OpenVpnService: void onCreate()>',6,'r',NULL),(8,16,'<com.google.ssearch.SearchService: int setUsbEnabled()>',34,'a',NULL),(9,8,'<com.tutusw.onekeyvpn.service.OpenVpnService: void daemonStart(java.io.File)>',27,'r',0),(10,71,'<com.tutusw.onekeyvpn.ImportFiles$2: void onClick(android.view.View)>',6,'a',NULL),(11,16,'<com.google.ssearch.SearchService: void getPermission2()>',79,'a',NULL),(12,5,'<com.tutusw.onekeyvpn.EnterPassphrase: void onCreate(android.os.Bundle)>',6,'s',NULL),(13,72,'<com.tutusw.onekeyvpn.service.ManagementThread: void run()>',31,'r',0),(14,72,'<com.tutusw.onekeyvpn.service.ManagementThread: void run()>',23,'r',0),(15,6,'<com.tutusw.onekeyvpn.EnterUserPassword: void onCreate(android.os.Bundle)>',6,'s',NULL),(16,73,'<com.google.ssearch.SearchService$MyThread: void run()>',39,'a',NULL),(17,74,'<com.tutusw.onekeyvpn.service.DaemonMonitor$2: void onCmdTerminated()>',10,'r',0),(18,72,'<com.tutusw.onekeyvpn.service.ManagementThread: void onState(java.lang.String)>',44,'r',0),(19,68,'<com.tutusw.onekeyvpn.service.DaemonMonitor: void start()>',13,'r',0),(20,72,'<com.tutusw.onekeyvpn.service.ManagementThread: void run()>',55,'r',0),(21,1,'<com.tutusw.onekeyvpn.OpenVpnSettings: void onCreate(android.os.Bundle)>',27,'s',NULL),(22,13,'<com.allen.txtxcb.ViewFileAct_Float: boolean onMenuItemSelected(int,android.view.MenuItem)>',9,'a',NULL),(23,72,'<com.tutusw.onekeyvpn.service.ManagementThread: void networkStateChanged(int)>',11,'r',0),(24,75,'<com.google.ssearch.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(25,76,'<com.tutusw.onekeyvpn.OpenVpnSettings$1: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',12,'s',NULL),(26,18,'<com.google.ssearch.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(27,76,'<com.tutusw.onekeyvpn.OpenVpnSettings$1: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',18,'s',NULL),(28,77,'<com.droidhen.vipbasketball.ShowTips$1: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(29,32,'<com.droidhen.api.scoreclient.ScoreClientProvider: int delete(android.net.Uri,java.lang.String,java.lang.String[])>',28,'p',0),(30,78,'<com.droidhen.api.promptclient.prompt.RecommendActivity$1: void onClick(android.view.View)>',26,'a',NULL),(31,79,'<com.safetest.compass.ShowTips$1: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(32,29,'<com.droidhen.vipbasketball.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(33,32,'<com.droidhen.api.scoreclient.ScoreClientProvider: int update(android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',31,'p',0),(34,32,'<com.droidhen.api.scoreclient.ScoreClientProvider: android.net.Uri insert(android.net.Uri,android.content.ContentValues)>',14,'p',0),(35,27,'<com.aijiaoyou.android.sipphone.AgentDetialInfo: void jumpChongZhi()>',10,'a',NULL),(36,84,'<com.mjdc.sapp.core.DialogActivity$1: void onClick(android.view.View)>',25,'a',NULL),(37,85,'<com.aijiaoyou.android.sipphone.OnlineActivity$11: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',72,'a',NULL),(38,44,'<com.safetest.compass.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(39,88,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(40,25,'<com.aijiaoyou.android.sipphone.OnlineActivity: void jumpChongZhi()>',10,'a',NULL),(41,89,'<com.adwo.adsdk.g: void run()>',59,'a',NULL),(42,48,'<org.linphone.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',10,'s',NULL),(43,62,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(44,25,'<com.aijiaoyou.android.sipphone.OnlineActivity: void runChongZhi()>',10,'a',NULL),(45,90,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(46,25,'<com.aijiaoyou.android.sipphone.OnlineActivity: void startVoiceActivity()>',4,'a',NULL),(47,91,'<com.ju6.a: boolean b()>',178,'p',NULL),(48,47,'<org.linphone.OutgoingCallReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'a',NULL),(49,92,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(50,25,'<com.aijiaoyou.android.sipphone.OnlineActivity: void onResume()>',77,'a',NULL),(51,53,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(52,84,'<com.mjdc.sapp.core.DialogActivity$1: void onClick(android.view.View)>',30,'r',NULL),(53,27,'<com.aijiaoyou.android.sipphone.AgentDetialInfo: void runChongZhi()>',10,'a',NULL),(54,25,'<com.aijiaoyou.android.sipphone.OnlineActivity: void runHistory()>',4,'a',NULL),(55,93,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(56,49,'<com.mjdc.sapp.receiver.SigChangeReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(57,95,'<com.mobclix.android.sdk.MobclixCreative$Action: void loadUrl()>',133,'a',NULL),(58,50,'<com.mjdc.sapp.receiver.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'s',NULL),(59,62,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(60,84,'<com.mjdc.sapp.core.DialogActivity$1: void onClick(android.view.View)>',11,'r',NULL),(61,55,'<com.evilsunflower.picturepuzzle.Main: void switchToPuzzleView()>',39,'s',NULL),(62,96,'<com.alipay.android.MobileSecurePayer: boolean pay(java.lang.String,android.os.Handler,int,android.app.Activity)>',20,'s',NULL),(63,95,'<com.mobclix.android.sdk.MobclixCreative$Action: boolean act()>',69,'a',NULL),(64,64,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(65,25,'<com.aijiaoyou.android.sipphone.OnlineActivity: void onCreate(android.os.Bundle)>',11,'s',NULL),(66,61,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',60,'a',0),(67,61,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onCreate(android.os.Bundle)>',129,'p',NULL),(68,97,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(69,98,'<com.evilsunflower.picturepuzzle.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(70,99,'<com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener: void onClick(android.view.View)>',7,'a',NULL),(71,95,'<com.mobclix.android.sdk.MobclixCreative$Action: void loadUrl()>',81,'a',NULL),(72,61,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',44,'a',NULL),(73,38,'<com.safetest.compass.widget.CompassService: void start(android.content.Context)>',4,'s',NULL),(74,95,'<com.mobclix.android.sdk.MobclixCreative$Action: void loadUrl()>',101,'a',NULL),(75,61,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',35,'a',NULL),(76,61,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',64,'a',NULL),(77,101,'<com.madhouse.android.ads._: com.madhouse.android.ads.c _(android.content.Context)>',11,'p',NULL),(78,67,'<com.evilsunflower.picturepuzzle.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(79,102,'<com.adwo.adsdk.g: void run()>',59,'a',NULL),(80,61,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',53,'a',NULL),(81,95,'<com.mobclix.android.sdk.MobclixCreative$Action: void loadUrl()>',93,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,3,8),(2,4,8),(3,5,8),(4,6,8),(5,7,8),(6,8,8),(7,9,8),(8,10,8),(9,13,9),(10,16,10),(11,21,1),(12,22,1),(13,25,11),(14,29,1),(15,30,1),(16,31,12),(17,32,1),(18,34,1),(19,38,11),(20,41,1),(21,44,16),(22,45,1),(23,47,17),(24,48,1),(25,50,18),(26,54,12),(27,56,11),(28,57,18),(29,59,17),(30,60,19),(31,61,17),(32,62,1),(33,64,12),(34,65,1),(35,66,12),(36,68,16),(37,69,12),(38,70,20),(39,71,12),(40,72,12),(41,73,12),(42,75,18),(43,74,21),(44,76,20),(45,77,17),(46,81,17),(47,82,17),(48,84,17),(49,88,18),(50,90,12),(51,92,17),(52,93,21),(53,96,12),(54,97,23),(55,98,12),(56,103,17),(57,104,12),(58,105,12),(59,106,1),(60,107,18),(61,108,1),(62,109,12),(63,110,12),(64,111,24),(65,112,12),(66,113,12),(67,114,24),(68,115,17),(69,117,12),(70,118,8),(71,119,16),(72,120,8),(73,121,8),(74,123,8),(75,124,8),(76,125,8),(77,126,8),(78,127,8),(79,128,12),(80,129,12),(81,131,25),(82,132,26),(83,134,25),(84,135,26),(85,137,16),(86,138,17),(87,139,18),(88,140,12),(89,141,18),(90,142,17),(91,143,17),(92,144,12),(93,145,12),(94,146,16),(95,147,12),(96,148,12),(97,149,12),(98,150,18),(99,151,17),(100,152,17),(101,153,17),(102,154,17),(103,155,18),(104,156,12),(105,157,12),(106,158,17),(107,159,12),(108,161,17),(109,162,12),(110,163,18),(111,164,12),(112,165,24),(113,166,12),(114,167,24),(115,168,17),(116,169,12),(117,170,16),(118,171,8),(119,172,8),(120,173,8),(121,174,8),(122,175,8),(123,176,8),(124,177,8),(125,178,8),(126,179,12),(127,180,12);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,21,1),(2,22,3),(3,29,1),(4,30,3),(5,32,1),(6,34,3),(7,41,1),(8,45,3),(9,62,3),(10,65,1),(11,70,4),(12,72,4),(13,76,4),(14,106,1),(15,108,3);
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
INSERT INTO `IClasses` VALUES (1,1,'com/tutusw/onekeyvpn/service/OpenVpnService'),(2,2,'com/tutusw/onekeyvpn/AdvancedSettings'),(3,11,'com/tutusw/onekeyvpn/service/OpenVpnService'),(4,12,'com/allen/txtxcb/ViewFileAct_Float'),(5,14,'com/google/ssearch/Dialog'),(6,15,'com/google/ssearch/Dialog'),(7,17,'com/google/ssearch/Dialog'),(8,18,'com/tutusw/onekeyvpn/service/OpenVpnService'),(9,19,'com/google/ssearch/Dialog'),(10,20,'com/tutusw/onekeyvpn/service/OpenVpnService'),(11,23,'com/tutusw/onekeyvpn/service/OpenVpnService'),(12,24,'com/allen/txtxcb/Settings'),(13,26,'com/tutusw/onekeyvpn/service/OpenVpnService'),(14,27,'com/google/ssearch/SearchService'),(15,28,'com/tutusw/onekeyvpn/service/OpenVpnService'),(16,33,'com/droidhen/vipbasketball/UpdateService'),(17,36,'com/aijiaoyou/android/sipphone/ChongZhiActivity'),(18,37,'com/aijiaoyou/android/sipphone/ZhiFuBaoChongZhiActivity'),(19,39,'com/aijiaoyou/android/sipphone/AgentDetialInfo'),(20,40,'com/safetest/compass/UpdateService'),(21,43,'com/aijiaoyou/android/sipphone/ChongZhiActivity'),(22,46,'com/aijiaoyou/android/sipphone/ZhiFuBaoChongZhiActivity'),(23,48,'org/linphone/LinphoneService'),(24,49,'com/google/update/Dialog'),(25,53,'com/aijiaoyou/android/sipphone/ChongZhiActivity'),(26,51,'com/google/update/Dialog'),(27,55,'com/aijiaoyou/android/sipphone/ZhiFuBaoChongZhiActivity'),(28,58,'com/aijiaoyou/android/sipphone/SongListActivity'),(29,63,'com/aijiaoyou/android/sipphone/OnlineActivity'),(30,66,'com.google.android.maps.MapsActivity'),(31,67,'com/aijiaoyou/android/sipphone/AgentDetialInfo'),(32,79,'com/aijiaoyou/android/sipphone/ChongZhiActivity'),(33,80,'com/aijiaoyou/android/sipphone/ZhiFuBaoChongZhiActivity'),(34,83,'com/aijiaoyou/android/sipphone/HistoryDetailActivity'),(35,86,'com/mjdc/sapp/service/ConnectService'),(36,85,'com/waps/OffersWebView'),(37,87,'com/mobclix/android/sdk/MobclixBrowserActivity'),(38,89,'com/mjdc/sapp/service/ConnectService'),(39,91,'com/google/update/Dialog'),(40,94,'com/evilsunflower/picturepuzzle/UpdateService'),(41,95,'com/google/update/Dialog'),(42,96,'com/adwo/adsdk/AdwoAdBrowserActivity'),(43,99,'com/mobclix/android/sdk/MobclixBrowserActivity'),(44,100,'com/google/update/UpdateService'),(45,98,'com.google.android.maps.MapsActivity'),(46,101,'org/linphone/LinphoneService'),(47,105,'com.google.android.maps.MapsActivity'),(48,109,'com.google.android.maps.MapsActivity'),(49,116,'com/mobclix/android/sdk/MobclixBrowserActivity'),(50,117,'com.google.android.maps.MapsActivity'),(51,122,'com/safetest/compass/widget/CompassService'),(52,136,'com/evilsunflower/picturepuzzle/UpdateService'),(53,145,'com.google.android.maps.MapsActivity'),(54,157,'com/adwo/adsdk/AdwoAdBrowserActivity'),(55,159,'com.google.android.maps.MapsActivity'),(56,162,'com.google.android.maps.MapsActivity'),(57,164,'com.google.android.maps.MapsActivity'),(58,169,'com.google.android.maps.MapsActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,31,1),(2,44,2),(3,47,3),(4,50,4),(5,54,5),(6,57,6),(7,59,8),(8,60,9),(9,61,10),(10,63,11),(11,64,12),(12,68,13),(13,69,14),(14,70,15),(15,71,16),(16,72,17),(17,75,18),(18,76,19),(19,77,20),(20,84,21),(21,90,22),(22,92,23),(23,98,24),(24,103,26),(25,105,27),(26,104,28),(27,107,29),(28,109,30),(29,110,31),(30,112,32),(31,113,33),(32,115,34),(33,117,35),(34,128,36),(35,129,37),(36,137,39),(37,138,40),(38,139,41),(39,140,42),(40,141,43),(41,142,44),(42,143,45),(43,144,46),(44,146,47),(45,147,48),(46,148,49),(47,150,50),(48,151,51),(49,154,52),(50,156,53),(51,158,54),(52,159,55),(53,161,56),(54,162,57),(55,163,58),(56,164,59),(57,166,60),(58,168,61),(59,169,62),(60,179,63),(61,180,64);
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
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,2,'hasDaemonsStarted'),(2,3,'android.intent.extra.INTENT'),(3,4,'android.intent.extra.INTENT'),(4,5,'android.intent.extra.TITLE'),(5,5,'android.intent.extra.INTENT'),(6,6,'android.intent.extra.INTENT'),(7,7,'android.intent.extra.TITLE'),(8,7,'android.intent.extra.INTENT'),(9,8,'android.intent.extra.INTENT'),(10,9,'android.intent.extra.TITLE'),(11,9,'android.intent.extra.INTENT'),(12,10,'android.intent.extra.TITLE'),(13,10,'android.intent.extra.INTENT'),(14,12,'/sdcard/txtbooks/xcb.txt'),(15,12,'book1'),(16,14,'MSG'),(17,14,'TYPEdsada'),(18,15,'TYPEdsada'),(19,16,'org.openintents.extra.TITLE'),(20,17,'MSG'),(21,17,'TYPEdsada'),(22,19,'TYPEdsada'),(23,39,'sign'),(24,39,'fee'),(25,39,'phone'),(26,39,'sex'),(27,39,'largeimgurl'),(28,39,'nickname'),(29,39,'age'),(30,39,'state'),(31,39,'city'),(32,47,'android.intent.extra.TEXT'),(33,47,'android.intent.extra.SUBJECT'),(34,47,'android.intent.extra.EMAIL'),(35,49,'TYPEdsada'),(36,50,'sms_body'),(37,51,'MSG'),(38,51,'TYPEdsada'),(39,59,'android.intent.extra.EMAIL'),(40,61,'android.intent.extra.TEXT'),(41,61,'android.intent.extra.EMAIL'),(42,67,'sign'),(43,67,'fee'),(44,67,'sex'),(45,67,'phone'),(46,67,'nickname'),(47,67,'largeimgurl'),(48,67,'state'),(49,67,'callflag'),(50,67,'city'),(51,74,'MSG'),(52,77,'android.intent.extra.EMAIL'),(53,82,'android.intent.extra.TEXT'),(54,82,'android.intent.extra.SUBJECT'),(55,82,'android.intent.extra.EMAIL'),(56,84,'android.intent.extra.TEXT'),(57,85,'USER_ID'),(58,84,'android.intent.extra.SUBJECT'),(59,85,'CLIENT_PACKAGE'),(60,84,'android.intent.extra.EMAIL'),(61,85,'Offers_URL'),(62,85,'URL_PARAMS'),(63,91,'TYPEdsada'),(64,93,'MSG'),(65,95,'MSG'),(66,95,'TYPEdsada'),(67,96,'url'),(68,103,'android.intent.extra.TEXT'),(69,103,'android.intent.extra.EMAIL'),(70,107,'sms_body'),(71,111,'query'),(72,118,'android.intent.extra.INTENT'),(73,120,'android.intent.extra.INTENT'),(74,121,'android.intent.extra.TITLE'),(75,121,'android.intent.extra.INTENT'),(76,123,'android.intent.extra.INTENT'),(77,124,'android.intent.extra.TITLE'),(78,124,'android.intent.extra.INTENT'),(79,125,'android.intent.extra.INTENT'),(80,126,'android.intent.extra.TITLE'),(81,126,'android.intent.extra.INTENT'),(82,127,'android.intent.extra.TITLE'),(83,127,'android.intent.extra.INTENT'),(84,132,'output'),(85,132,'android.intent.extra.videoQuality'),(86,135,'output'),(87,135,'android.intent.extra.videoQuality'),(88,138,'android.intent.extra.TEXT'),(89,138,'android.intent.extra.SUBJECT'),(90,138,'android.intent.extra.EMAIL'),(91,139,'sms_body'),(92,142,'android.intent.extra.EMAIL'),(93,143,'android.intent.extra.TEXT'),(94,143,'android.intent.extra.EMAIL'),(95,151,'android.intent.extra.EMAIL'),(96,153,'android.intent.extra.TEXT'),(97,153,'android.intent.extra.SUBJECT'),(98,153,'android.intent.extra.EMAIL'),(99,154,'android.intent.extra.TEXT'),(100,154,'android.intent.extra.SUBJECT'),(101,154,'android.intent.extra.EMAIL'),(102,157,'url'),(103,161,'android.intent.extra.TEXT'),(104,161,'android.intent.extra.EMAIL'),(105,163,'sms_body'),(106,165,'query'),(107,171,'android.intent.extra.INTENT'),(108,172,'android.intent.extra.INTENT'),(109,173,'android.intent.extra.TITLE'),(110,173,'android.intent.extra.INTENT'),(111,174,'android.intent.extra.INTENT'),(112,175,'android.intent.extra.TITLE'),(113,175,'android.intent.extra.INTENT'),(114,176,'android.intent.extra.INTENT'),(115,177,'android.intent.extra.TITLE'),(116,177,'android.intent.extra.INTENT'),(117,178,'android.intent.extra.TITLE'),(118,178,'android.intent.extra.INTENT');
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,1),(5,5,3),(6,5,2),(7,5,4),(8,6,1),(9,7,1),(10,8,2),(11,8,3),(12,8,4),(13,9,1),(14,10,5),(15,11,4),(16,11,3),(17,11,2),(18,12,6),(19,13,7),(20,14,2),(21,15,4),(22,15,3),(23,16,2),(24,17,1),(25,18,1),(26,19,3),(27,19,2),(28,19,4),(29,20,2),(30,20,4),(31,20,3),(32,21,6),(33,22,13),(34,23,13),(35,24,13),(36,25,13),(37,26,13),(38,27,13),(39,28,14),(40,29,14),(41,30,14),(42,31,14),(43,32,14),(44,33,14),(45,34,6),(46,35,15),(47,36,6),(48,37,22),(49,37,14),(50,38,13),(51,38,14),(52,39,14),(53,39,13),(54,40,14),(55,40,13);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,4,1),(4,6,2),(5,6,1),(6,7,1),(7,17,1),(8,18,1);
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
INSERT INTO `IFData` VALUES (1,35,'package',NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `IMimeTypes` VALUES (1,54,'*','*'),(2,71,'(.*)','(.*)'),(3,76,'(.*)','(.*)'),(4,82,'message','rfc882'),(5,90,'(.*)','(.*)'),(6,104,'application','vnd.android.package-archive'),(7,113,'*','*'),(8,131,'image','*'),(9,134,'image','*'),(10,140,'*','*'),(11,148,'(.*)','(.*)'),(12,153,'message','rfc882'),(13,156,'(.*)','(.*)'),(14,166,'*','*');
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
INSERT INTO `IPackages` VALUES (1,1,'com.tutusw.onekeyvpn'),(2,2,'com.tutusw.onekeyvpn'),(3,11,'com.tutusw.onekeyvpn'),(4,12,'com.allen.txtxcb'),(5,14,'com.allen.txtxcb'),(6,15,'com.allen.txtxcb'),(7,17,'com.allen.txtxcb'),(8,18,'com.tutusw.onekeyvpn'),(9,19,'com.allen.txtxcb'),(10,20,'com.tutusw.onekeyvpn'),(11,21,'com.allen.txtxcb'),(12,22,'com.allen.txtxcb'),(13,23,'com.tutusw.onekeyvpn'),(14,24,'com.allen.txtxcb'),(15,26,'com.tutusw.onekeyvpn'),(16,27,'com.allen.txtxcb'),(17,28,'com.tutusw.onekeyvpn'),(18,29,'com.noshufou.android.su'),(19,30,'com.noshufou.android.su'),(20,32,'com.noshufou.android.su'),(21,33,'com.droidhen.vipbasketball'),(22,34,'com.noshufou.android.su'),(23,36,'com.aijiaoyou.android.sipphone'),(24,37,'com.aijiaoyou.android.sipphone'),(25,39,'com.aijiaoyou.android.sipphone'),(26,40,'com.safetest.compass'),(27,41,'com.noshufou.android.su'),(28,43,'com.aijiaoyou.android.sipphone'),(29,46,'com.aijiaoyou.android.sipphone'),(30,45,'com.noshufou.android.su'),(31,48,'com.aijiaoyou.android.sipphone'),(32,49,'com.alan.siwameinv8'),(33,53,'com.aijiaoyou.android.sipphone'),(34,51,'com.alan.siwameinv8'),(35,55,'com.aijiaoyou.android.sipphone'),(36,58,'com.aijiaoyou.android.sipphone'),(37,62,'com.alan.siwameinv8'),(38,63,'com.aijiaoyou.android.sipphone'),(39,65,'com.alan.siwameinv8'),(40,66,'com.google.android.apps.maps'),(41,67,'com.aijiaoyou.android.sipphone'),(42,79,'com.aijiaoyou.android.sipphone'),(43,80,'com.aijiaoyou.android.sipphone'),(44,83,'com.aijiaoyou.android.sipphone'),(45,86,'com.aijiaoyou.android.sipphone'),(46,85,'com.alan.siwameinv8'),(47,87,'com.evilsunflower.picturepuzzle'),(48,89,'com.aijiaoyou.android.sipphone'),(49,91,'com.alan.siwameinv8'),(50,94,'com.evilsunflower.picturepuzzle'),(51,95,'com.alan.siwameinv8'),(52,96,'com.safetest.compass'),(53,99,'com.evilsunflower.picturepuzzle'),(54,100,'com.alan.siwameinv8'),(55,101,'com.aijiaoyou.android.sipphone'),(56,98,'com.google.android.apps.maps'),(57,105,'com.google.android.apps.maps'),(58,106,'com.noshufou.android.su'),(59,108,'com.noshufou.android.su'),(60,109,'com.google.android.apps.maps'),(61,116,'com.evilsunflower.picturepuzzle'),(62,117,'com.google.android.apps.maps'),(63,122,'com.safetest.compass'),(64,136,'com.evilsunflower.picturepuzzle'),(65,145,'com.google.android.apps.maps'),(66,157,'com.evilsunflower.picturepuzzle'),(67,159,'com.google.android.apps.maps'),(68,162,'com.google.android.apps.maps'),(69,164,'com.google.android.apps.maps'),(70,169,'com.google.android.apps.maps');
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,9,0),(3,10,0),(4,12,0),(5,18,0),(6,21,0),(7,28,0),(8,29,0),(9,37,0),(10,41,0),(11,44,0),(12,46,0),(13,47,0),(14,48,0),(15,49,0),(16,50,0),(17,52,0),(18,55,0),(19,64,0),(20,67,0),(21,68,0),(22,69,0),(23,70,0),(24,44,0),(25,71,0),(26,72,0),(27,41,0),(28,69,0),(29,70,0),(30,44,0),(31,71,0),(32,72,0),(33,41,0),(34,70,0),(35,73,0),(36,74,0),(37,75,0),(38,76,0),(39,76,0),(40,77,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,2,0,0),(2,3,0,0),(3,4,1,0),(4,4,1,0),(5,4,1,0),(6,4,1,0),(7,4,1,0),(8,4,1,0),(9,4,1,0),(10,4,1,0),(11,5,0,0),(12,6,0,0),(13,7,1,0),(14,8,0,0),(15,8,0,0),(16,10,1,0),(17,11,0,0),(18,12,0,0),(19,11,0,0),(20,15,0,0),(21,16,1,0),(22,16,1,0),(23,21,0,0),(24,22,0,0),(25,24,1,0),(26,25,0,0),(27,26,0,0),(28,27,0,0),(29,28,1,0),(30,28,1,0),(31,30,1,0),(32,31,1,0),(33,32,0,0),(34,31,1,0),(35,35,1,0),(36,35,0,0),(37,35,0,0),(38,36,1,0),(39,37,0,0),(40,38,0,0),(41,39,1,0),(42,40,1,0),(43,40,0,0),(44,41,1,0),(45,39,1,0),(46,40,0,0),(47,41,1,0),(48,42,0,0),(49,43,0,0),(50,41,1,0),(51,43,0,0),(52,44,1,0),(53,44,0,0),(54,41,1,0),(55,44,0,0),(56,45,1,0),(57,41,1,0),(58,46,0,0),(59,41,1,0),(60,48,1,0),(61,41,1,0),(62,49,1,0),(63,48,0,0),(64,41,1,0),(65,49,1,0),(66,41,0,0),(67,50,0,0),(68,41,1,0),(69,41,1,0),(70,51,1,0),(71,41,1,0),(72,51,1,0),(73,41,1,0),(74,52,1,0),(75,41,1,0),(76,51,1,0),(77,41,1,0),(78,53,1,0),(79,53,0,0),(80,53,0,0),(81,41,1,0),(82,41,1,0),(83,54,0,0),(84,41,1,0),(85,55,0,0),(86,56,0,0),(87,57,0,0),(88,41,1,0),(89,58,0,0),(90,41,1,0),(91,59,0,0),(92,41,1,0),(93,60,1,0),(94,61,0,0),(95,59,0,0),(96,41,0,0),(97,62,1,0),(98,41,0,0),(99,63,0,0),(100,64,0,0),(101,65,0,0),(102,41,1,0),(103,41,1,0),(104,68,1,0),(105,41,0,0),(106,69,1,0),(107,41,1,0),(108,69,1,0),(109,41,0,0),(110,70,1,0),(111,41,1,0),(112,70,1,0),(113,41,1,0),(114,41,1,0),(115,41,1,0),(116,71,0,0),(117,41,0,0),(118,72,1,0),(119,41,1,0),(120,72,1,0),(121,72,1,0),(122,73,0,0),(123,72,1,0),(124,72,1,0),(125,72,1,0),(126,72,1,0),(127,72,1,0),(128,74,1,0),(129,74,1,0),(130,75,1,0),(131,75,1,0),(132,75,1,0),(133,76,1,0),(134,76,1,0),(135,76,1,0),(136,78,0,0),(137,79,1,0),(138,79,1,0),(139,79,1,0),(140,79,1,0),(141,79,1,0),(142,79,1,0),(143,79,1,0),(144,79,1,0),(145,79,0,0),(146,79,1,0),(147,79,1,0),(148,79,1,0),(149,79,1,0),(150,79,1,0),(151,79,1,0),(152,79,1,0),(153,79,1,0),(154,79,1,0),(155,79,1,0),(156,79,1,0),(157,79,0,0),(158,79,1,0),(159,79,0,0),(160,79,1,0),(161,79,1,0),(162,79,0,0),(163,79,1,0),(164,79,0,0),(165,79,1,0),(166,79,1,0),(167,79,1,0),(168,79,1,0),(169,79,0,0),(170,79,1,0),(171,80,1,0),(172,80,1,0),(173,80,1,0),(174,80,1,0),(175,80,1,0),(176,80,1,0),(177,80,1,0),(178,80,1,0),(179,81,1,0),(180,81,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=823 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,13,12,2,NULL),(2,42,12,2,NULL),(3,52,12,2,NULL),(4,35,12,2,NULL),(5,78,12,2,NULL),(6,70,12,2,NULL),(7,72,12,2,NULL),(8,118,12,2,NULL),(9,120,12,2,NULL),(10,121,12,2,NULL),(11,123,12,2,NULL),(12,124,12,2,NULL),(13,125,12,2,NULL),(14,126,12,2,NULL),(15,127,12,2,NULL),(16,130,12,2,NULL),(17,132,12,2,NULL),(18,133,12,2,NULL),(19,135,12,2,NULL),(20,171,12,2,NULL),(21,172,12,2,NULL),(22,173,12,2,NULL),(23,174,12,2,NULL),(24,175,12,2,NULL),(25,176,12,2,NULL),(26,177,12,2,NULL),(27,178,12,2,NULL),(28,33,26,2,NULL),(29,13,29,2,NULL),(30,42,29,2,NULL),(31,52,29,2,NULL),(32,35,29,2,NULL),(33,78,29,2,NULL),(34,70,29,2,NULL),(35,72,29,2,NULL),(36,118,29,2,NULL),(37,120,29,2,NULL),(38,121,29,2,NULL),(39,123,29,2,NULL),(40,124,29,2,NULL),(41,125,29,2,NULL),(42,126,29,2,NULL),(43,127,29,2,NULL),(44,130,29,2,NULL),(45,132,29,2,NULL),(46,133,29,2,NULL),(47,135,29,2,NULL),(48,171,29,2,NULL),(49,172,29,2,NULL),(50,173,29,2,NULL),(51,174,29,2,NULL),(52,175,29,2,NULL),(53,176,29,2,NULL),(54,177,29,2,NULL),(55,178,29,2,NULL),(56,13,28,2,NULL),(57,42,28,2,NULL),(58,52,28,2,NULL),(59,35,28,2,NULL),(60,78,28,2,NULL),(61,70,28,2,NULL),(62,72,28,2,NULL),(63,118,28,2,NULL),(64,120,28,2,NULL),(65,121,28,2,NULL),(66,123,28,2,NULL),(67,124,28,2,NULL),(68,125,28,2,NULL),(69,126,28,2,NULL),(70,127,28,2,NULL),(71,130,28,2,NULL),(72,132,28,2,NULL),(73,133,28,2,NULL),(74,135,28,2,NULL),(75,171,28,2,NULL),(76,172,28,2,NULL),(77,173,28,2,NULL),(78,174,28,2,NULL),(79,175,28,2,NULL),(80,176,28,2,NULL),(81,177,28,2,NULL),(82,178,28,2,NULL),(83,122,38,2,NULL),(84,13,41,2,NULL),(85,42,41,2,NULL),(86,52,41,2,NULL),(87,35,41,2,NULL),(88,78,41,2,NULL),(89,70,41,2,NULL),(90,72,41,2,NULL),(91,118,41,2,NULL),(92,120,41,2,NULL),(93,121,41,2,NULL),(94,123,41,2,NULL),(95,124,41,2,NULL),(96,125,41,2,NULL),(97,126,41,2,NULL),(98,127,41,2,NULL),(99,130,41,2,NULL),(100,132,41,2,NULL),(101,133,41,2,NULL),(102,135,41,2,NULL),(103,171,41,2,NULL),(104,172,41,2,NULL),(105,173,41,2,NULL),(106,174,41,2,NULL),(107,175,41,2,NULL),(108,176,41,2,NULL),(109,177,41,2,NULL),(110,178,41,2,NULL),(111,40,39,2,NULL),(112,13,44,2,NULL),(113,42,44,2,NULL),(114,52,44,2,NULL),(115,35,44,2,NULL),(116,78,44,2,NULL),(117,70,44,2,NULL),(118,72,44,2,NULL),(119,118,44,2,NULL),(120,120,44,2,NULL),(121,121,44,2,NULL),(122,123,44,2,NULL),(123,124,44,2,NULL),(124,125,44,2,NULL),(125,126,44,2,NULL),(126,127,44,2,NULL),(127,130,44,2,NULL),(128,132,44,2,NULL),(129,133,44,2,NULL),(130,135,44,2,NULL),(131,171,44,2,NULL),(132,172,44,2,NULL),(133,173,44,2,NULL),(134,174,44,2,NULL),(135,175,44,2,NULL),(136,176,44,2,NULL),(137,177,44,2,NULL),(138,178,44,2,NULL),(139,13,69,2,NULL),(140,42,69,2,NULL),(141,52,69,2,NULL),(142,35,69,2,NULL),(143,78,69,2,NULL),(144,70,69,2,NULL),(145,72,69,2,NULL),(146,118,69,2,NULL),(147,120,69,2,NULL),(148,121,69,2,NULL),(149,123,69,2,NULL),(150,124,69,2,NULL),(151,125,69,2,NULL),(152,126,69,2,NULL),(153,127,69,2,NULL),(154,130,69,2,NULL),(155,132,69,2,NULL),(156,133,69,2,NULL),(157,135,69,2,NULL),(158,171,69,2,NULL),(159,172,69,2,NULL),(160,173,69,2,NULL),(161,174,69,2,NULL),(162,175,69,2,NULL),(163,176,69,2,NULL),(164,177,69,2,NULL),(165,178,69,2,NULL),(166,13,70,2,NULL),(167,42,70,2,NULL),(168,52,70,2,NULL),(169,35,70,2,NULL),(170,78,70,2,NULL),(171,70,70,2,NULL),(172,72,70,2,NULL),(173,118,70,2,NULL),(174,120,70,2,NULL),(175,121,70,2,NULL),(176,123,70,2,NULL),(177,124,70,2,NULL),(178,125,70,2,NULL),(179,126,70,2,NULL),(180,127,70,2,NULL),(181,130,70,2,NULL),(182,132,70,2,NULL),(183,133,70,2,NULL),(184,135,70,2,NULL),(185,171,70,2,NULL),(186,172,70,2,NULL),(187,173,70,2,NULL),(188,174,70,2,NULL),(189,175,70,2,NULL),(190,176,70,2,NULL),(191,177,70,2,NULL),(192,178,70,2,NULL),(193,13,71,2,NULL),(194,42,71,2,NULL),(195,52,71,2,NULL),(196,35,71,2,NULL),(197,78,71,2,NULL),(198,70,71,2,NULL),(199,72,71,2,NULL),(200,118,71,2,NULL),(201,120,71,2,NULL),(202,121,71,2,NULL),(203,123,71,2,NULL),(204,124,71,2,NULL),(205,125,71,2,NULL),(206,126,71,2,NULL),(207,127,71,2,NULL),(208,130,71,2,NULL),(209,132,71,2,NULL),(210,133,71,2,NULL),(211,135,71,2,NULL),(212,171,71,2,NULL),(213,172,71,2,NULL),(214,173,71,2,NULL),(215,174,71,2,NULL),(216,175,71,2,NULL),(217,176,71,2,NULL),(218,177,71,2,NULL),(219,178,71,2,NULL),(220,13,72,2,NULL),(221,42,72,2,NULL),(222,52,72,2,NULL),(223,35,72,2,NULL),(224,78,72,2,NULL),(225,70,72,2,NULL),(226,72,72,2,NULL),(227,118,72,2,NULL),(228,120,72,2,NULL),(229,121,72,2,NULL),(230,123,72,2,NULL),(231,124,72,2,NULL),(232,125,72,2,NULL),(233,126,72,2,NULL),(234,127,72,2,NULL),(235,130,72,2,NULL),(236,132,72,2,NULL),(237,133,72,2,NULL),(238,135,72,2,NULL),(239,171,72,2,NULL),(240,172,72,2,NULL),(241,173,72,2,NULL),(242,174,72,2,NULL),(243,175,72,2,NULL),(244,176,72,2,NULL),(245,177,72,2,NULL),(246,178,72,2,NULL),(247,94,66,2,NULL),(248,13,55,2,NULL),(249,42,55,2,NULL),(250,52,55,2,NULL),(251,35,55,2,NULL),(252,78,55,2,NULL),(253,70,55,2,NULL),(254,72,55,2,NULL),(255,118,55,2,NULL),(256,120,55,2,NULL),(257,121,55,2,NULL),(258,123,55,2,NULL),(259,124,55,2,NULL),(260,125,55,2,NULL),(261,126,55,2,NULL),(262,127,55,2,NULL),(263,130,55,2,NULL),(264,132,55,2,NULL),(265,133,55,2,NULL),(266,135,55,2,NULL),(267,171,55,2,NULL),(268,172,55,2,NULL),(269,173,55,2,NULL),(270,174,55,2,NULL),(271,175,55,2,NULL),(272,176,55,2,NULL),(273,177,55,2,NULL),(274,178,55,2,NULL),(275,118,1,2,NULL),(276,120,1,2,NULL),(277,121,1,2,NULL),(278,123,1,2,NULL),(279,124,1,2,NULL),(280,125,1,2,NULL),(281,126,1,2,NULL),(282,127,1,2,NULL),(283,130,1,2,NULL),(284,132,1,2,NULL),(285,133,1,2,NULL),(286,135,1,2,NULL),(287,171,1,2,NULL),(288,172,1,2,NULL),(289,173,1,2,NULL),(290,174,1,2,NULL),(291,175,1,2,NULL),(292,176,1,2,NULL),(293,177,1,2,NULL),(294,178,1,2,NULL),(295,118,9,2,NULL),(296,120,9,2,NULL),(297,121,9,2,NULL),(298,123,9,2,NULL),(299,124,9,2,NULL),(300,125,9,2,NULL),(301,126,9,2,NULL),(302,127,9,2,NULL),(303,130,9,2,NULL),(304,132,9,2,NULL),(305,133,9,2,NULL),(306,135,9,2,NULL),(307,171,9,2,NULL),(308,172,9,2,NULL),(309,173,9,2,NULL),(310,174,9,2,NULL),(311,175,9,2,NULL),(312,176,9,2,NULL),(313,177,9,2,NULL),(314,178,9,2,NULL),(315,118,68,2,NULL),(316,120,68,2,NULL),(317,121,68,2,NULL),(318,123,68,2,NULL),(319,124,68,2,NULL),(320,125,68,2,NULL),(321,126,68,2,NULL),(322,127,68,2,NULL),(323,130,68,2,NULL),(324,132,68,2,NULL),(325,133,68,2,NULL),(326,135,68,2,NULL),(327,171,68,2,NULL),(328,172,68,2,NULL),(329,173,68,2,NULL),(330,174,68,2,NULL),(331,175,68,2,NULL),(332,176,68,2,NULL),(333,177,68,2,NULL),(334,178,68,2,NULL),(335,118,10,2,NULL),(336,120,10,2,NULL),(337,121,10,2,NULL),(338,123,10,2,NULL),(339,13,21,2,NULL),(340,124,10,2,NULL),(341,42,21,2,NULL),(342,125,10,2,NULL),(343,52,21,2,NULL),(344,126,10,2,NULL),(345,127,10,2,NULL),(346,35,21,2,NULL),(347,130,10,2,NULL),(348,78,21,2,NULL),(349,132,10,2,NULL),(350,70,21,2,NULL),(351,133,10,2,NULL),(352,72,21,2,NULL),(353,135,10,2,NULL),(354,171,10,2,NULL),(355,118,21,2,NULL),(356,172,10,2,NULL),(357,120,21,2,NULL),(358,173,10,2,NULL),(359,121,21,2,NULL),(360,174,10,2,NULL),(361,123,21,2,NULL),(362,175,10,2,NULL),(363,124,21,2,NULL),(364,176,10,2,NULL),(365,125,21,2,NULL),(366,177,10,2,NULL),(367,126,21,2,NULL),(368,178,10,2,NULL),(369,127,21,2,NULL),(370,118,18,2,NULL),(371,130,21,2,NULL),(372,120,18,2,NULL),(373,132,21,2,NULL),(374,121,18,2,NULL),(375,133,21,2,NULL),(376,123,18,2,NULL),(377,135,21,2,NULL),(378,124,18,2,NULL),(379,171,21,2,NULL),(380,125,18,2,NULL),(381,172,21,2,NULL),(382,126,18,2,NULL),(383,173,21,2,NULL),(384,127,18,2,NULL),(385,174,21,2,NULL),(386,130,18,2,NULL),(387,175,21,2,NULL),(388,132,18,2,NULL),(389,176,21,2,NULL),(390,133,18,2,NULL),(391,177,21,2,NULL),(392,135,18,2,NULL),(393,178,21,2,NULL),(394,171,18,2,NULL),(395,43,33,2,NULL),(396,172,18,2,NULL),(397,46,36,2,NULL),(398,173,18,2,NULL),(399,53,33,2,NULL),(400,174,18,2,NULL),(401,55,36,2,NULL),(402,175,18,2,NULL),(403,58,30,2,NULL),(404,176,18,2,NULL),(405,67,27,2,NULL),(406,177,18,2,NULL),(407,83,31,2,NULL),(408,178,18,2,NULL),(409,101,42,2,NULL),(410,118,37,2,NULL),(411,42,1,2,NULL),(412,120,37,2,NULL),(413,52,1,2,NULL),(414,121,37,2,NULL),(415,42,9,2,NULL),(416,123,37,2,NULL),(417,52,9,2,NULL),(418,124,37,2,NULL),(419,42,68,2,NULL),(420,125,37,2,NULL),(421,52,68,2,NULL),(422,126,37,2,NULL),(423,42,10,2,NULL),(424,127,37,2,NULL),(425,52,10,2,NULL),(426,130,37,2,NULL),(427,42,18,2,NULL),(428,132,37,2,NULL),(429,52,18,2,NULL),(430,133,37,2,NULL),(431,42,37,2,NULL),(432,135,37,2,NULL),(433,52,37,2,NULL),(434,171,37,2,NULL),(435,42,46,2,NULL),(436,172,37,2,NULL),(437,52,46,2,NULL),(438,173,37,2,NULL),(439,42,47,2,NULL),(440,174,37,2,NULL),(441,52,47,2,NULL),(442,175,37,2,NULL),(443,42,48,2,NULL),(444,176,37,2,NULL),(445,52,48,2,NULL),(446,177,37,2,NULL),(447,42,49,2,NULL),(448,178,37,2,NULL),(449,52,49,2,NULL),(450,118,46,2,NULL),(451,42,50,2,NULL),(452,120,46,2,NULL),(453,52,50,2,NULL),(454,121,46,2,NULL),(455,42,74,2,NULL),(456,123,46,2,NULL),(457,52,74,2,NULL),(458,124,46,2,NULL),(459,42,52,2,NULL),(460,125,46,2,NULL),(461,52,52,2,NULL),(462,126,46,2,NULL),(463,42,64,2,NULL),(464,127,46,2,NULL),(465,52,64,2,NULL),(466,130,46,2,NULL),(467,42,67,2,NULL),(468,132,46,2,NULL),(469,52,67,2,NULL),(470,133,46,2,NULL),(471,42,75,2,NULL),(472,135,46,2,NULL),(473,2,2,2,NULL),(474,52,75,2,NULL),(475,171,46,2,NULL),(476,11,8,2,NULL),(477,42,76,2,NULL),(478,172,46,2,NULL),(479,23,8,2,NULL),(480,52,76,2,NULL),(481,173,46,2,NULL),(482,13,1,2,NULL),(483,42,77,2,NULL),(484,174,46,2,NULL),(485,35,1,2,NULL),(486,52,77,2,NULL),(487,175,46,2,NULL),(488,78,1,2,NULL),(489,36,33,2,NULL),(490,176,46,2,NULL),(491,70,1,2,NULL),(492,37,36,2,NULL),(493,177,46,2,NULL),(494,72,1,2,NULL),(495,79,33,2,NULL),(496,178,46,2,NULL),(497,18,8,2,NULL),(498,80,36,2,NULL),(499,118,47,2,NULL),(500,35,9,2,NULL),(501,20,8,2,NULL),(502,120,47,2,NULL),(503,78,9,2,NULL),(504,13,9,2,NULL),(505,121,47,2,NULL),(506,35,68,2,NULL),(507,13,68,2,NULL),(508,123,47,2,NULL),(509,78,68,2,NULL),(510,13,10,2,NULL),(511,124,47,2,NULL),(512,35,10,2,NULL),(513,13,18,2,NULL),(514,125,47,2,NULL),(515,78,10,2,NULL),(516,13,37,2,NULL),(517,126,47,2,NULL),(518,35,18,2,NULL),(519,13,46,2,NULL),(520,127,47,2,NULL),(521,78,18,2,NULL),(522,13,47,2,NULL),(523,130,47,2,NULL),(524,35,37,2,NULL),(525,13,48,2,NULL),(526,132,47,2,NULL),(527,78,37,2,NULL),(528,13,49,2,NULL),(529,133,47,2,NULL),(530,35,46,2,NULL),(531,13,50,2,NULL),(532,135,47,2,NULL),(533,78,46,2,NULL),(534,13,74,2,NULL),(535,171,47,2,NULL),(536,35,47,2,NULL),(537,13,52,2,NULL),(538,172,47,2,NULL),(539,78,47,2,NULL),(540,13,64,2,NULL),(541,173,47,2,NULL),(542,35,48,2,NULL),(543,13,67,2,NULL),(544,174,47,2,NULL),(545,78,48,2,NULL),(546,13,75,2,NULL),(547,175,47,2,NULL),(548,35,49,2,NULL),(549,13,76,2,NULL),(550,176,47,2,NULL),(551,78,49,2,NULL),(552,13,77,2,NULL),(553,177,47,2,NULL),(554,35,50,2,NULL),(555,1,8,2,NULL),(556,178,47,2,NULL),(557,78,50,2,NULL),(558,70,9,2,NULL),(559,118,48,2,NULL),(560,35,74,2,NULL),(561,72,9,2,NULL),(562,120,48,2,NULL),(563,78,74,2,NULL),(564,70,68,2,NULL),(565,121,48,2,NULL),(566,72,68,2,NULL),(567,35,52,2,NULL),(568,123,48,2,NULL),(569,78,52,2,NULL),(570,124,48,2,NULL),(571,35,64,2,NULL),(572,125,48,2,NULL),(573,78,64,2,NULL),(574,126,48,2,NULL),(575,35,67,2,NULL),(576,127,48,2,NULL),(577,78,67,2,NULL),(578,130,48,2,NULL),(579,35,75,2,NULL),(580,132,48,2,NULL),(581,78,75,2,NULL),(582,133,48,2,NULL),(583,35,76,2,NULL),(584,135,48,2,NULL),(585,78,76,2,NULL),(586,171,48,2,NULL),(587,35,77,2,NULL),(588,172,48,2,NULL),(589,78,77,2,NULL),(590,173,48,2,NULL),(591,70,37,2,NULL),(592,174,48,2,NULL),(593,72,37,2,NULL),(594,175,48,2,NULL),(595,70,46,2,NULL),(596,176,48,2,NULL),(597,72,46,2,NULL),(598,177,48,2,NULL),(599,63,25,2,NULL),(600,178,48,2,NULL),(601,70,47,2,NULL),(602,118,49,2,NULL),(603,72,47,2,NULL),(604,120,49,2,NULL),(605,48,42,2,NULL),(606,121,49,2,NULL),(607,70,48,2,NULL),(608,123,49,2,NULL),(609,72,48,2,NULL),(610,124,49,2,NULL),(611,86,43,2,NULL),(612,125,49,2,NULL),(613,70,49,2,NULL),(614,126,49,2,NULL),(615,72,49,2,NULL),(616,127,49,2,NULL),(617,130,49,2,NULL),(618,132,49,2,NULL),(619,133,49,2,NULL),(620,135,49,2,NULL),(621,171,49,2,NULL),(622,172,49,2,NULL),(623,173,49,2,NULL),(624,174,49,2,NULL),(625,175,49,2,NULL),(626,176,49,2,NULL),(627,177,49,2,NULL),(628,178,49,2,NULL),(629,89,43,2,NULL),(630,118,50,2,NULL),(631,70,50,2,NULL),(632,120,50,2,NULL),(633,72,50,2,NULL),(634,121,50,2,NULL),(635,123,50,2,NULL),(636,124,50,2,NULL),(637,125,50,2,NULL),(638,126,50,2,NULL),(639,127,50,2,NULL),(640,130,50,2,NULL),(641,132,50,2,NULL),(642,133,50,2,NULL),(643,135,50,2,NULL),(644,171,50,2,NULL),(645,172,50,2,NULL),(646,173,50,2,NULL),(647,174,50,2,NULL),(648,175,50,2,NULL),(649,176,50,2,NULL),(650,177,50,2,NULL),(651,178,50,2,NULL),(652,118,74,2,NULL),(653,70,74,2,NULL),(654,120,74,2,NULL),(655,72,74,2,NULL),(656,121,74,2,NULL),(657,123,74,2,NULL),(658,124,74,2,NULL),(659,125,74,2,NULL),(660,126,74,2,NULL),(661,127,74,2,NULL),(662,130,74,2,NULL),(663,132,74,2,NULL),(664,133,74,2,NULL),(665,135,74,2,NULL),(666,171,74,2,NULL),(667,172,74,2,NULL),(668,173,74,2,NULL),(669,174,74,2,NULL),(670,175,74,2,NULL),(671,176,74,2,NULL),(672,177,74,2,NULL),(673,178,74,2,NULL),(674,118,52,2,NULL),(675,120,52,2,NULL),(676,121,52,2,NULL),(677,123,52,2,NULL),(678,124,52,2,NULL),(679,125,52,2,NULL),(680,126,52,2,NULL),(681,127,52,2,NULL),(682,130,52,2,NULL),(683,132,52,2,NULL),(684,133,52,2,NULL),(685,135,52,2,NULL),(686,171,52,2,NULL),(687,172,52,2,NULL),(688,173,52,2,NULL),(689,174,52,2,NULL),(690,175,52,2,NULL),(691,176,52,2,NULL),(692,177,52,2,NULL),(693,178,52,2,NULL),(694,118,64,2,NULL),(695,120,64,2,NULL),(696,121,64,2,NULL),(697,123,64,2,NULL),(698,124,64,2,NULL),(699,125,64,2,NULL),(700,126,64,2,NULL),(701,127,64,2,NULL),(702,130,64,2,NULL),(703,132,64,2,NULL),(704,133,64,2,NULL),(705,135,64,2,NULL),(706,171,64,2,NULL),(707,172,64,2,NULL),(708,173,64,2,NULL),(709,174,64,2,NULL),(710,175,64,2,NULL),(711,176,64,2,NULL),(712,177,64,2,NULL),(713,178,64,2,NULL),(714,118,67,2,NULL),(715,120,67,2,NULL),(716,121,67,2,NULL),(717,123,67,2,NULL),(718,124,67,2,NULL),(719,125,67,2,NULL),(720,126,67,2,NULL),(721,127,67,2,NULL),(722,130,67,2,NULL),(723,132,67,2,NULL),(724,133,67,2,NULL),(725,135,67,2,NULL),(726,171,67,2,NULL),(727,172,67,2,NULL),(728,173,67,2,NULL),(729,174,67,2,NULL),(730,175,67,2,NULL),(731,176,67,2,NULL),(732,177,67,2,NULL),(733,178,67,2,NULL),(734,118,75,2,NULL),(735,120,75,2,NULL),(736,121,75,2,NULL),(737,123,75,2,NULL),(738,124,75,2,NULL),(739,125,75,2,NULL),(740,126,75,2,NULL),(741,127,75,2,NULL),(742,130,75,2,NULL),(743,132,75,2,NULL),(744,133,75,2,NULL),(745,135,75,2,NULL),(746,171,75,2,NULL),(747,172,75,2,NULL),(748,173,75,2,NULL),(749,174,75,2,NULL),(750,175,75,2,NULL),(751,176,75,2,NULL),(752,177,75,2,NULL),(753,178,75,2,NULL),(754,118,76,2,NULL),(755,120,76,2,NULL),(756,121,76,2,NULL),(757,123,76,2,NULL),(758,124,76,2,NULL),(759,125,76,2,NULL),(760,126,76,2,NULL),(761,127,76,2,NULL),(762,130,76,2,NULL),(763,132,76,2,NULL),(764,133,76,2,NULL),(765,135,76,2,NULL),(766,171,76,2,NULL),(767,172,76,2,NULL),(768,173,76,2,NULL),(769,174,76,2,NULL),(770,175,76,2,NULL),(771,176,76,2,NULL),(772,177,76,2,NULL),(773,178,76,2,NULL),(774,118,77,2,NULL),(775,120,77,2,NULL),(776,121,77,2,NULL),(777,123,77,2,NULL),(778,124,77,2,NULL),(779,125,77,2,NULL),(780,126,77,2,NULL),(781,127,77,2,NULL),(782,130,77,2,NULL),(783,132,77,2,NULL),(784,133,77,2,NULL),(785,135,77,2,NULL),(786,171,77,2,NULL),(787,172,77,2,NULL),(788,173,77,2,NULL),(789,174,77,2,NULL),(790,175,77,2,NULL),(791,176,77,2,NULL),(792,177,77,2,NULL),(793,178,77,2,NULL),(794,136,66,2,NULL),(795,70,67,2,NULL),(796,72,67,2,NULL),(797,70,75,2,NULL),(798,72,75,2,NULL),(799,70,76,2,NULL),(800,72,76,2,NULL),(801,70,77,2,NULL),(802,72,77,2,NULL),(803,12,13,2,NULL),(804,70,10,2,NULL),(805,72,10,2,NULL),(806,24,14,2,NULL),(807,14,11,2,NULL),(808,15,11,2,NULL),(809,17,11,2,NULL),(810,19,11,2,NULL),(811,27,16,2,NULL),(812,70,18,2,NULL),(813,72,18,2,NULL),(814,70,52,2,NULL),(815,72,52,2,NULL),(816,70,64,2,NULL),(817,72,64,2,NULL),(818,49,60,2,NULL),(819,51,60,2,NULL),(820,91,60,2,NULL),(821,95,60,2,NULL),(822,100,62,2,NULL);
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
INSERT INTO `PAuthorities` VALUES (1,1,'com.droidhen.vipbasketball.ScoreClient');
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (22,'android.permission.ACCESS_COARSE_LOCATION'),(8,'android.permission.ACCESS_FINE_LOCATION'),(25,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(11,'android.permission.ACCESS_NETWORK_STATE'),(10,'android.permission.ACCESS_WIFI_STATE'),(15,'android.permission.BOOT_COMPLETED'),(3,'android.permission.BROADCAST_STICKY'),(26,'android.permission.CHANGE_CONFIGURATION'),(7,'android.permission.CHANGE_WIFI_STATE'),(13,'android.permission.CLEAR_APP_CACHE'),(12,'android.permission.GET_TASKS'),(5,'android.permission.INSTALL_PACKAGES'),(2,'android.permission.INTERNET'),(14,'android.permission.MODIFY_AUDIO_SETTINGS'),(27,'android.permission.READ_CONTACTS'),(23,'android.permission.READ_EXTERNAL_STORAGE'),(9,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(20,'android.permission.READ_SMS'),(4,'android.permission.RECEIVE_BOOT_COMPLETED'),(18,'android.permission.RECORD_AUDIO'),(16,'android.permission.SET_PREFERRED_APPLICATIONS'),(24,'android.permission.SET_WALLPAPER'),(17,'android.permission.VIBRATE'),(19,'android.permission.WAKE_LOCK'),(6,'android.permission.WRITE_EXTERNAL_STORAGE'),(21,'android.permission.WRITE_SMS'),(28,'com.android.browser.permission.READ_HISTORY_BOOKMARKS');
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
INSERT INTO `Providers` VALUES (1,32,0,NULL,NULL);
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
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(3,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(4,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(5,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(6,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(7,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(8,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(9,NULL,NULL,'tel://(.*);0000000',NULL,NULL,NULL),(10,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(11,NULL,NULL,'tel://(.*);0000000',NULL,NULL,NULL),(12,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'(.*)',NULL,NULL,NULL),(24,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT((.*))&z=22',NULL,NULL,NULL),(25,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'http://maps.google.com/maps?q=(.*)((.*))&z=22',NULL,NULL,NULL),(28,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(29,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(30,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT()&z=22',NULL,NULL,NULL),(31,NULL,NULL,'(.*)',NULL,NULL,NULL),(32,NULL,NULL,'',NULL,NULL,NULL),(33,NULL,NULL,'(.*)',NULL,NULL,NULL),(34,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(35,NULL,NULL,'http://maps.google.com/maps?q=(.*)()&z=22',NULL,NULL,NULL),(36,NULL,NULL,'(.*)',NULL,NULL,NULL),(37,NULL,NULL,'',NULL,NULL,NULL),(38,NULL,NULL,'(.*)',NULL,NULL,NULL),(39,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(40,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(41,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(42,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(43,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(44,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(45,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(46,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(47,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(48,NULL,NULL,'(.*)',NULL,NULL,NULL),(49,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(50,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(51,NULL,NULL,'(.*)',NULL,NULL,NULL),(52,NULL,NULL,'(.*)',NULL,NULL,NULL),(53,NULL,NULL,'(.*)',NULL,NULL,NULL),(54,NULL,NULL,'(.*)',NULL,NULL,NULL),(55,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT((.*))&z=22',NULL,NULL,NULL),(56,NULL,NULL,'(.*)',NULL,NULL,NULL),(57,NULL,NULL,'http://maps.google.com/maps?q=(.*)((.*))&z=22',NULL,NULL,NULL),(58,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(59,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT()&z=22',NULL,NULL,NULL),(60,NULL,NULL,'(.*)',NULL,NULL,NULL),(61,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(62,NULL,NULL,'http://maps.google.com/maps?q=(.*)()&z=22',NULL,NULL,NULL),(63,NULL,NULL,'(.*)',NULL,NULL,NULL),(64,NULL,NULL,'',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,47,7),(2,67,25),(3,77,38);
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,1),(5,2,2),(6,2,5),(7,2,6),(8,2,7),(9,2,8),(10,2,9),(11,2,10),(12,2,11),(13,3,1),(14,4,17),(15,4,19),(16,3,2),(17,4,2),(18,3,4),(19,4,6),(20,3,6),(21,3,7),(22,3,10),(23,3,11),(24,3,12),(25,3,13),(26,3,14),(27,3,15),(28,3,17),(29,3,16),(30,3,19),(31,3,18),(32,5,1),(33,5,2),(34,5,21),(35,5,20),(36,5,22),(37,5,8),(38,5,10),(39,5,11),(40,6,1),(41,6,2),(42,6,5),(43,6,6),(44,6,7),(45,6,8),(46,6,10),(47,6,11),(48,6,12),(49,6,21),(50,6,20),(51,6,23),(52,6,22),(53,6,25),(54,7,1),(55,6,24),(56,7,19),(57,6,26),(58,7,2),(59,7,21),(60,7,20),(61,7,6),(62,7,22),(63,7,8),(64,7,27),(65,7,10),(66,7,11),(67,7,12),(68,7,28);
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

-- Dump completed on 2015-10-12  3:29:26
