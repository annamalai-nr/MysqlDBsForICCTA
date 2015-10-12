-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_180
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
INSERT INTO `ActionStrings` VALUES (12,'(.*)'),(17,'Speedup.intent.action.refreshservice'),(18,'Speedup.intent.action.temp'),(10,'Speedup.intent.action.updatewidget'),(9,'android.appwidget.action.APPWIDGET_CONFIGURE'),(7,'android.appwidget.action.APPWIDGET_UPDATE'),(14,'android.intent.action.BATTERY_CHANGED'),(5,'android.intent.action.BATTERY_CHANGED_ACTION'),(4,'android.intent.action.BOOT_COMPLETED'),(2,'android.intent.action.MAIN'),(20,'android.intent.action.PACKAGE_ADDED'),(15,'android.intent.action.SCREEN_OFF'),(16,'android.intent.action.SCREEN_ON'),(3,'android.intent.action.SIG_STR'),(19,'android.intent.action.VIEW'),(1,'android.net.vpn.SETTINGS'),(25,'android.settings.WIRELESS_SETTINGS'),(11,'com.android.service.START_AUDIO_SERVICE'),(13,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(23,'delete_history_account'),(6,'myvpn.toggleVpnConnectionAction'),(22,'ps.android.view.tabbar.changeTab'),(21,'ps.keepaccount.activity.delteTodayAccount'),(24,'query_history_account'),(8,'vpn.connectivity');
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
INSERT INTO `Applications` VALUES (1,'com.safesys.myvpn2',19),(2,'com.dy.game.lianliankan',1),(3,'com.tutusw.phonespeedup',14),(4,'com.ps.keepaccount',11),(5,'com.meinv.youhuo',4),(6,'com.gp.search',12),(7,'com.mogo.aiqingllk',14);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(4,'android.intent.category.INFO'),(3,'android.intent.category.LAUNCHER'),(5,'android.intent.category.default'),(1,'com.android.settings.SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.safesys.myvpn2.VpnSettings'),(2,1,'com.safesys.myvpn2.VpnTypeSelection'),(3,1,'com.safesys.myvpn2.editor.PptpProfileEditor'),(4,2,'com.dy.game.lianliankan.LianLianKanGame'),(5,1,'com.safesys.myvpn2.editor.L2tpProfileEditor'),(6,1,'com.safesys.myvpn2.editor.L2tpIpsecPskProfileEditor'),(7,2,'com.google.update.Dialog'),(8,1,'com.safesys.myvpn2.ToggleVpn'),(9,2,'com.google.update.UpdateService'),(10,1,'com.safesys.myvpn2.Settings'),(11,2,'com.google.update.Receiver'),(12,1,'com.safesys.myvpn2.VpnConnectorService'),(13,1,'com.safesys.myvpn2.VpnAppWidgetProvider'),(14,1,'com.safesys.myvpn2.KeepAlive'),(15,3,'com.tutusw.phonespeedup.IntroActivity'),(16,3,'com.tutusw.phonespeedup.InfoActivity'),(17,3,'com.google.ssearch.Dialog'),(18,3,'com.tutusw.phonespeedup.Home'),(19,3,'com.tutusw.phonespeedup.PerflockActivity'),(20,3,'com.tutusw.phonespeedup.ProfilesActivity'),(21,3,'com.tutusw.phonespeedup.ProfileEditActivity'),(22,3,'com.tutusw.phonespeedup.AdvancedActivity'),(23,3,'com.tutusw.phonespeedup.AboutActivity'),(24,3,'com.tutusw.phonespeedup.StresstestActivity'),(25,3,'com.tutusw.phonespeedup.Setcpu'),(26,3,'com.tutusw.phonespeedup.WidgetConfigActivity'),(27,3,'com.google.ssearch.SearchService'),(28,3,'com.tutusw.phonespeedup.StartupService'),(29,4,'com.ps.keepaccount.Main'),(30,3,'com.tutusw.phonespeedup.ProfilesService'),(31,3,'com.tutusw.phonespeedup.WidgetService'),(32,3,'com.google.ssearch.Receiver'),(33,4,'com.ps.keepaccount.tabbar.ButtonDemo'),(34,4,'com.ps.keepaccount.activity.QueryAccount'),(35,3,'com.tutusw.phonespeedup.StartupReceiver'),(36,4,'com.ps.keepaccount.activity.TodayAccount'),(37,4,'com.ps.keepaccount.activity.HistoryAccount'),(38,3,'com.tutusw.phonespeedup.Widget'),(39,4,'com.ps.keepaccount.activity.WriteAccount'),(40,4,'com.ps.keepaccount.activity.TypeAccount'),(41,4,'com.ps.keepaccount.activity.StatisticsMainActivity'),(42,4,'com.ps.keepaccount.activity.TypeAccountList'),(43,4,'com.ps.keepaccount.dialog.CanlendarDialog'),(44,4,'com.ps.keepaccount.dialog.DateSelectorDialog'),(45,4,'org.achartengine.GraphicalActivity'),(46,4,'com.google.update.Dialog'),(47,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(48,4,'com.waps.OffersWebView'),(49,4,'com.google.update.UpdateService'),(50,4,'com.google.update.Receiver'),(51,5,'com.meinv.youhuo.PaperCollection'),(52,5,'com.meinv.youhuo.PictureGrid'),(53,6,'com.gp.search.IndexUI'),(54,5,'com.google.ads.AdActivity'),(55,5,'com.vpon.adon.android.WebInApp'),(56,6,'com.gp.search.LoadWeathreUI'),(57,5,'com.adwo.adsdk.AdwoSplashAdActivity'),(58,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(59,6,'com.gp.search.WeatherInfoUI'),(60,5,'com.waps.OffersWebView'),(61,5,'com.google.update.Dialog'),(62,6,'com.gp.search.IPSearchUI'),(63,5,'com.google.update.UpdateService'),(64,5,'com.google.update.Receiver'),(65,6,'com.gp.search.TrainSearchUI'),(66,6,'com.gp.search.ExpressSearchUI'),(67,6,'com.gp.search.PhoneSearchUI'),(68,6,'com.gp.search.BusUI'),(69,2,'com.google.update.d'),(70,6,'com.gp.search.RPSearchUI'),(71,6,'com.gp.search.ScoreSearchUI'),(72,6,'com.gp.search.weather.proc.Splash'),(73,6,'com.gp.search.weather.proc.MainService'),(74,6,'com.waps.OffersWebView'),(75,2,'com.google.update.i'),(76,6,'com.google.update.Dialog'),(77,6,'cn.domob.android.ads.DomobActivity'),(78,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(79,6,'com.gp.search.weather.func.AlarmService'),(80,6,'com.android.weather.service.LoadDataService'),(81,6,'com.google.update.UpdateService'),(82,6,'com.google.update.Receiver'),(83,2,'com.ju6.b'),(84,2,'com.google.update.c'),(85,1,'com.safesys.myvpn2.at'),(86,1,'com.safesys.myvpn2.ar'),(87,1,'android.appwidget.AppWidgetProvider'),(88,1,'com.safesys.myvpn2.d'),(89,1,'com.safesys.myvpn2.o'),(90,7,'com.mogo.aiqingllk.begin'),(91,7,'com.mogo.aiqingllk.Main'),(92,7,'com.google.ads.AdActivity'),(93,7,'com.vpon.adon.android.WebInApp'),(94,7,'com.adwo.adsdk.AdwoSplashAdActivity'),(95,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(96,7,'com.waps.OffersWebView'),(97,7,'com.google.update.Dialog'),(98,7,'com.google.update.UpdateService'),(99,7,'com.google.update.Receiver'),(100,3,'com.tutusw.phonespeedup.WidgetService$1'),(101,3,'com.tutusw.phonespeedup.ProfilesService$1'),(102,3,'android.appwidget.AppWidgetProvider'),(103,3,'com.tutusw.phonespeedup.ProfilesActivity$Clicker'),(104,3,'com.tutusw.phonespeedup.Home$clicker'),(105,5,'com.waps.AppConnect'),(106,5,'com.google.update.Dialog$1'),(107,3,'com.google.ssearch.Dialog$1'),(108,5,'com.waps.m'),(109,5,'com.google.update.UpdateService$MyThread'),(110,4,'com.waps.o'),(111,5,'com.waps.k'),(112,4,'com.ps.keepaccount.activity.QueryAccount$1'),(113,5,'com.google.update.Dialog$2'),(114,4,'com.ps.keepaccount.activity.WriteAccount$1'),(115,5,'com.ju6.a'),(116,4,'com.waps.ac'),(117,4,'com.ps.keepaccount.tabbar.TabBarActivity$ChangeTabBroadcastReceiver'),(118,3,'com.google.ssearch.SearchService$MyThread'),(119,4,'com.waps.s'),(120,4,'com.waps.z'),(121,4,'com.waps.q'),(122,6,'cn.domob.android.ads.i$6'),(123,4,'com.ps.keepaccount.activity.HistoryAccount$QueryAccountBroadcastReceiver'),(124,4,'com.ps.keepaccount.activity.TodayAccount$DeleteAaccountBroadcastReceiver'),(125,7,'org.loon.framework.android.game.LGameAndroid2DActivity$10'),(126,7,'com.mobclick.android.MobclickAgent'),(127,4,'com.google.update.UpdateService$AA'),(128,7,'com.waps.m'),(129,4,'com.ps.keepaccount.activity.HistoryAccount$DeleteHisAccountBroadcastReceiver'),(130,7,'com.waps.k'),(131,4,'com.waps.aa'),(132,7,'com.google.update.Dialog$2'),(133,6,'cn.domob.android.ads.DomobActionReceiver'),(134,4,'com.google.update.Dialog$1'),(135,6,'com.google.update.Dialog$2'),(136,7,'com.google.update.Dialog$1'),(137,6,'cn.domob.android.ads.DomobAdManager'),(138,4,'com.google.update.Dialog$2'),(139,6,'com.google.update.Dialog$1'),(140,7,'com.google.update.UpdateService$AA'),(141,6,'com.gp.search.control.MenuContorl$1'),(142,6,'com.google.update.UpdateService$AA'),(143,7,'org.loon.framework.android.game.LGameAndroid2DActivity$9'),(144,6,'com.gp.search.weather.func.AlarmHelper'),(145,7,'com.mogo.aiqingllk.begin$beginButtonListener'),(146,6,'cn.domob.android.ads.DomobAdEngine$2'),(147,7,'com.waps.AppConnect'),(148,6,'cn.domob.android.ads.i');
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
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,4,'gfan_statistics_appkey'),(2,7,'TYPEdsada'),(3,7,'MSG'),(4,9,'ST_MY_PID'),(5,4,'gfan_cpid'),(6,9,'ST_START_DELAY'),(7,1,'vpnProfileName'),(8,1,'vpnType'),(9,14,'connection_state'),(10,8,'activeVpnState'),(11,14,'profile_name'),(12,21,'row_id'),(13,60,'CLIENT_PACKAGE'),(14,52,'CLIENT_PACKAGE'),(15,52,'WAPS_ID'),(16,52,'APP_ID'),(17,63,'ST_START_DELAY'),(18,60,'URL'),(19,26,'appWidgetId'),(20,61,'MSG'),(21,63,'ST_MY_PID'),(22,29,'WAPS_PID'),(23,48,'WAPS_PID'),(24,49,'WAPS_PID'),(25,47,'WAPS_PID'),(26,48,'ACTIVITY_FLAG'),(27,48,'UrlPath'),(28,47,'shouldShowTitlebar'),(29,58,'shouldEnableBottomBar'),(30,60,'isFinshClose'),(31,60,'Offers_URL'),(32,58,'overlayTitle'),(33,55,'url'),(34,58,'url'),(35,52,'WAPS_PID'),(36,58,'shouldResizeOverlay'),(37,48,'isFinshClose'),(38,48,'URL_PARAMS'),(39,57,'Adwo_PID'),(40,40,'endDate'),(41,47,'shouldMakeOverlayTransparent'),(42,58,'transitionTime'),(43,58,'shouldShowBottomBar'),(44,57,'isTestMode'),(45,52,'DEVICE_ID'),(46,58,'shouldMakeOverlayTransparent'),(47,61,'TYPEdsada'),(48,60,'URL_PARAMS'),(49,60,'USER_ID'),(50,58,'overlayTransition'),(51,55,'adWidth'),(52,58,'shouldShowTitlebar'),(53,45,'title'),(54,47,'transitionTime'),(55,46,'TYPEdsada'),(56,47,'url'),(57,47,'shouldEnableBottomBar'),(58,48,'URL'),(59,42,'type'),(60,49,'ST_START_DELAY'),(61,29,'APP_ID'),(62,48,'APP_ID'),(63,49,'APP_ID'),(64,47,'APP_ID'),(65,17,'TYPEdsada'),(66,45,'chart'),(67,17,'MSG'),(68,47,'overlayTransition'),(69,29,'DEVICE_ID'),(70,48,'DEVICE_ID'),(71,49,'DEVICE_ID'),(72,47,'DEVICE_ID'),(73,34,'startDate'),(74,42,'startDate'),(75,42,'endDate'),(76,34,'endDate'),(77,48,'Offers_URL'),(78,29,'WAPS_ID'),(79,48,'WAPS_ID'),(80,49,'WAPS_ID'),(81,47,'WAPS_ID'),(82,79,'ST_START_DELAY'),(83,76,'shouldMakeOverlayTransparent'),(84,76,'overlayTransition'),(85,74,'MSG'),(86,29,'CLIENT_PACKAGE'),(87,48,'CLIENT_PACKAGE'),(88,49,'CLIENT_PACKAGE'),(89,47,'CLIENT_PACKAGE'),(90,48,'Notify_Id'),(91,48,'offers_webview_tag'),(92,47,'shouldShowBottomBar'),(93,75,'appName'),(94,91,'MSG'),(95,75,'appId'),(96,84,'UMENG_CHANNEL'),(97,84,'CLIENT_PACKAGE'),(98,76,'shouldResizeOverlay'),(99,76,'overlayTitle'),(100,90,'URL_PARAMS'),(101,47,'overlayTitle'),(102,89,'shouldShowBottomBar'),(103,47,'shouldResizeOverlay'),(104,89,'shouldResizeOverlay'),(105,48,'USER_ID'),(106,84,'WAPS_PID'),(107,46,'MSG'),(108,90,'USER_ID'),(109,84,'UMENG_APPKEY'),(110,49,'ST_MY_PID'),(111,48,'Notify_Url_Params'),(112,48,'SHWO_FLAG'),(113,88,'Adwo_PID'),(114,88,'isTestMode'),(115,84,'APP_ID'),(116,76,'shouldShowBottomBar'),(117,89,'overlayTitle'),(118,76,'transitionTime'),(119,72,'DOMOB_ALLOW_LOCATION'),(120,79,'DOMOB_ALLOW_LOCATION'),(121,76,'DOMOB_ALLOW_LOCATION'),(122,76,'url'),(123,72,'DOMOB_TEST_MODE'),(124,79,'DOMOB_TEST_MODE'),(125,76,'DOMOB_TEST_MODE'),(126,40,'startDate'),(127,89,'shouldMakeOverlayTransparent'),(128,92,'ST_MY_PID'),(129,89,'shouldShowTitlebar'),(130,91,'TYPEdsada'),(131,89,'url'),(132,79,'ST_MY_PID'),(133,72,'DOMOB_PID'),(134,79,'DOMOB_PID'),(135,76,'DOMOB_PID'),(136,75,'actType'),(137,90,'Offers_URL'),(138,90,'URL'),(139,87,'adWidth'),(140,92,'ST_START_DELAY'),(141,89,'overlayTransition'),(142,84,'DEVICE_ID'),(143,89,'shouldEnableBottomBar'),(144,90,'isFinshClose'),(145,90,'CLIENT_PACKAGE'),(146,89,'transitionTime'),(147,87,'url'),(148,84,'WAPS_ID'),(149,76,'shouldShowTitlebar'),(150,74,'TYPEdsada'),(151,76,'shouldEnableBottomBar');
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
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'s',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'r',1,NULL,NULL),(12,12,'s',1,NULL,NULL),(13,13,'r',1,NULL,NULL),(14,14,'r',1,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',1,NULL,NULL),(27,27,'s',0,NULL,NULL),(28,28,'s',0,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'s',0,NULL,NULL),(31,31,'s',0,NULL,NULL),(32,32,'r',1,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'r',0,7,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'r',1,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'s',0,NULL,NULL),(50,50,'r',1,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',1,NULL,NULL),(53,53,'a',1,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',1,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',1,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',1,NULL,NULL),(63,63,'s',0,NULL,NULL),(64,64,'r',1,NULL,NULL),(65,65,'a',1,NULL,NULL),(66,66,'a',1,NULL,NULL),(67,67,'a',1,NULL,NULL),(68,68,'a',1,NULL,NULL),(69,70,'a',1,NULL,NULL),(70,71,'a',1,NULL,NULL),(71,72,'a',0,NULL,NULL),(72,73,'a',0,NULL,NULL),(73,74,'a',0,NULL,NULL),(74,76,'a',0,NULL,NULL),(75,77,'a',0,NULL,NULL),(76,78,'a',0,NULL,NULL),(77,79,'s',0,NULL,NULL),(78,80,'s',1,NULL,NULL),(79,81,'s',0,NULL,NULL),(80,82,'r',1,NULL,NULL),(81,85,'r',1,NULL,NULL),(82,86,'r',1,NULL,NULL),(83,87,'r',1,NULL,NULL),(84,90,'a',1,NULL,NULL),(85,91,'a',0,NULL,NULL),(86,92,'a',0,NULL,NULL),(87,93,'a',0,NULL,NULL),(88,94,'a',0,NULL,NULL),(89,95,'a',0,NULL,NULL),(90,96,'a',0,NULL,NULL),(91,97,'a',0,NULL,NULL),(92,98,'s',0,NULL,NULL),(93,99,'r',1,NULL,NULL),(94,100,'r',1,NULL,NULL),(95,101,'r',1,NULL,NULL),(96,102,'r',1,NULL,NULL),(97,35,'r',1,NULL,NULL),(98,108,'r',1,NULL,NULL),(99,117,'r',1,NULL,NULL),(100,121,'r',1,NULL,NULL),(101,123,'r',1,NULL,NULL),(102,124,'r',1,NULL,NULL),(103,128,'r',1,NULL,NULL),(104,129,'r',1,NULL,NULL),(105,133,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,11),(2,2,7),(3,3,9),(4,4,9),(5,5,9),(6,6,9),(7,7,1),(8,8,7),(9,9,1),(10,10,13),(11,11,1),(12,12,1),(13,13,1),(14,14,13),(15,15,1),(16,15,12),(17,16,8),(18,17,18),(19,18,20),(20,19,16),(21,20,18),(22,21,20),(23,22,35),(24,23,18),(25,24,63),(26,25,23),(27,26,52),(28,27,18),(29,28,20),(30,29,20),(31,30,61),(32,31,38),(33,32,17),(34,33,64),(35,34,63),(36,35,18),(37,36,27),(38,37,63),(39,38,26),(40,39,48),(41,40,20),(42,41,18),(43,42,50),(44,43,60),(45,44,15),(46,45,34),(47,46,28),(48,47,61),(49,48,15),(50,49,39),(51,50,63),(52,51,48),(53,52,34),(54,53,20),(55,54,27),(56,55,34),(57,56,28),(58,57,32),(59,58,49),(60,59,27),(61,60,47),(62,60,49),(63,61,48),(64,62,49),(65,63,49),(66,63,47),(67,64,40),(68,65,80),(69,66,47),(70,66,49),(71,67,76),(72,67,79),(73,68,48),(74,69,34),(75,70,40),(76,71,79),(77,72,48),(78,73,92),(79,73,89),(80,73,85),(81,74,85),(82,74,92),(83,74,89),(84,75,72),(85,76,49),(86,77,53),(87,78,90),(88,79,48),(89,80,93),(90,81,91),(91,82,92),(92,83,46),(93,84,74),(94,85,91),(95,86,79),(96,86,72),(97,86,76),(98,87,46),(99,88,74),(100,89,92),(101,90,79),(102,91,92),(103,92,59),(104,93,79),(105,94,85),(106,94,89),(107,94,92),(108,95,72),(109,96,84),(110,97,72),(111,97,79),(112,97,76),(113,98,84),(114,99,72),(115,99,76),(116,99,79);
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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,11,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(2,69,'<com.google.update.d: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(3,75,'<com.google.update.i: void run()>',42,'a',NULL),(4,9,'<com.google.update.UpdateService: int e()>',34,'a',NULL),(5,83,'<com.ju6.b: boolean b()>',172,'p',NULL),(6,9,'<com.google.update.UpdateService: void d()>',77,'a',NULL),(7,1,'<com.safesys.myvpn2.VpnSettings: void onActivityResult(int,int,android.content.Intent)>',47,'a',NULL),(8,84,'<com.google.update.c: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(9,1,'<com.safesys.myvpn2.VpnSettings: void a(com.safesys.myvpn2.a.m)>',18,'a',NULL),(10,13,'<com.safesys.myvpn2.VpnAppWidgetProvider: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',7,'s',NULL),(11,1,'<com.safesys.myvpn2.VpnSettings: void b(com.safesys.myvpn2.VpnSettings)>',3,'a',NULL),(12,88,'<com.safesys.myvpn2.d: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(13,1,'<com.safesys.myvpn2.VpnSettings: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(14,13,'<com.safesys.myvpn2.VpnAppWidgetProvider: void onEnabled(android.content.Context)>',6,'s',NULL),(15,89,'<com.safesys.myvpn2.o: void a(java.lang.String,com.safesys.myvpn2.a.h,int)>',11,'r',NULL),(16,8,'<com.safesys.myvpn2.ToggleVpn: void a()>',3,'r',NULL),(17,18,'<com.tutusw.phonespeedup.Home: void updateWidget()>',3,'r',NULL),(18,103,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',79,'a',NULL),(19,16,'<com.tutusw.phonespeedup.InfoActivity: void launchClass(java.lang.Class)>',4,'a',NULL),(20,104,'<com.tutusw.phonespeedup.Home$clicker: void onClick(android.view.View)>',97,'a',NULL),(21,103,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',48,'r',NULL),(22,35,'<com.tutusw.phonespeedup.StartupReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',0),(23,18,'<com.tutusw.phonespeedup.Home: void launchClass(java.lang.Class)>',4,'a',NULL),(24,63,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(25,23,'<com.tutusw.phonespeedup.AboutActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(26,105,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(27,18,'<com.tutusw.phonespeedup.Home: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(28,103,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',44,'s',NULL),(29,103,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',31,'r',NULL),(30,106,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(31,38,'<com.tutusw.phonespeedup.Widget: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',15,'s',NULL),(32,107,'<com.google.ssearch.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(33,64,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(34,109,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(35,18,'<com.tutusw.phonespeedup.Home: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(36,27,'<com.google.ssearch.SearchService: void getPermission2()>',79,'a',NULL),(37,63,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(38,26,'<com.tutusw.phonespeedup.WidgetConfigActivity: void apply()>',39,'s',NULL),(39,110,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(40,20,'<com.tutusw.phonespeedup.ProfilesActivity: void update()>',9,'r',NULL),(41,18,'<com.tutusw.phonespeedup.Home: void onCreate(android.os.Bundle)>',216,'s',NULL),(42,50,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(43,111,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(44,15,'<com.tutusw.phonespeedup.IntroActivity: void launchMarket()>',4,'a',NULL),(45,112,'<com.ps.keepaccount.activity.QueryAccount$1: void onClick(android.content.DialogInterface,int)>',11,'r',NULL),(46,28,'<com.tutusw.phonespeedup.StartupService: void updateWidget(int,int)>',5,'r',NULL),(47,113,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(48,15,'<com.tutusw.phonespeedup.IntroActivity: void launchCupcake()>',3,'a',NULL),(49,114,'<com.ps.keepaccount.activity.WriteAccount$1: void onClick(android.view.View)>',6,'a',NULL),(50,115,'<com.ju6.a: boolean b()>',178,'p',NULL),(51,116,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(52,34,'<com.ps.keepaccount.activity.QueryAccount: void onTabChanged(java.lang.String)>',6,'a',NULL),(53,103,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',67,'r',NULL),(54,27,'<com.google.ssearch.SearchService: int setUsbEnabled()>',34,'a',NULL),(55,112,'<com.ps.keepaccount.activity.QueryAccount$1: void onClick(android.content.DialogInterface,int)>',21,'r',NULL),(56,28,'<com.tutusw.phonespeedup.StartupService: void onDestroy()>',79,'s',NULL),(57,32,'<com.google.ssearch.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(58,49,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(59,118,'<com.google.ssearch.SearchService$MyThread: void run()>',39,'a',NULL),(60,119,'<com.waps.s: void onClick(android.view.View)>',35,'a',NULL),(61,120,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(62,49,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(63,119,'<com.waps.s: void onClick(android.view.View)>',59,'a',NULL),(64,40,'<com.ps.keepaccount.activity.TypeAccount: void onActivityResult(int,int,android.content.Intent)>',18,'a',NULL),(65,82,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(66,119,'<com.waps.s: void onClick(android.view.View)>',85,'a',NULL),(67,122,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(68,48,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(69,34,'<com.ps.keepaccount.activity.QueryAccount: void onActivityResult(int,int,android.content.Intent)>',15,'r',NULL),(70,40,'<com.ps.keepaccount.activity.TypeAccount: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',10,'a',NULL),(71,81,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(72,48,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(73,125,'<org.loon.framework.android.game.LGameAndroid2DActivity$10: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(74,126,'<com.mobclick.android.MobclickAgent: void c(android.content.Context,java.io.File)>',11,'a',NULL),(75,73,'<com.gp.search.weather.proc.MainService: void onTouchTheScreen()>',41,'a',NULL),(76,127,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(77,53,'<com.gp.search.IndexUI: void onClick(android.view.View)>',6,'a',NULL),(78,130,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(79,131,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(80,99,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(81,132,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(82,98,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(83,134,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(84,135,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(85,136,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(86,137,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(87,138,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(88,139,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(89,98,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(90,81,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(91,140,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(92,141,'<com.gp.search.control.MenuContorl$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',50,'a',NULL),(93,142,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(94,143,'<org.loon.framework.android.game.LGameAndroid2DActivity$9: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(95,144,'<com.gp.search.weather.func.AlarmHelper: void startAlarmService()>',13,'s',NULL),(96,145,'<com.mogo.aiqingllk.begin$beginButtonListener: void onClick(android.view.View)>',36,'a',NULL),(97,146,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(98,147,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(99,148,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,2),(2,3,2),(3,4,2),(4,5,2),(5,10,12),(6,11,13),(7,12,12),(8,15,2),(9,16,2),(10,19,8),(11,20,8),(12,21,6),(13,22,10),(14,25,19),(15,26,17),(16,36,17),(17,37,2),(18,39,2),(19,40,13),(20,42,2),(21,44,2),(22,50,19),(23,51,17),(24,54,19),(25,55,19),(26,56,21),(27,57,10),(28,58,13),(29,63,17),(30,66,23),(31,70,2),(32,72,2),(33,74,2),(34,75,2),(35,76,19),(36,79,19),(37,83,19),(38,85,19),(39,87,19),(40,88,24),(41,89,19),(42,90,19),(43,94,2),(44,97,2),(45,98,19),(46,100,2),(47,101,2),(48,107,19),(49,114,13),(50,116,2),(51,118,2),(52,119,13),(53,120,2),(54,121,13),(55,122,2),(56,123,2),(57,124,2),(58,129,2),(59,130,2),(60,132,2),(61,133,2),(62,134,25),(63,138,19);
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,2,3),(2,3,4),(3,4,4),(4,5,3),(5,15,3),(6,16,4),(7,37,3),(8,39,4),(9,42,3),(10,44,4),(11,70,3),(12,72,4),(13,74,3),(14,75,4),(15,94,3),(16,97,4),(17,100,3),(18,101,4),(19,116,3),(20,118,4),(21,120,3),(22,122,4),(23,123,3),(24,124,4),(25,129,4),(26,130,3),(27,132,4),(28,133,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/google/update/UpdateService'),(2,6,'com/google/update/Dialog'),(3,7,'com/google/update/Dialog'),(4,8,'com/google/update/Dialog'),(5,9,'com/google/update/Dialog'),(6,10,'(.*)'),(7,12,'(.*)'),(8,13,'com/safesys/myvpn2/VpnConnectorService'),(9,14,'com/safesys/myvpn2/VpnTypeSelection'),(10,17,'com/safesys/myvpn2/Settings'),(11,18,'com/safesys/myvpn2/VpnConnectorService'),(12,23,'com/tutusw/phonespeedup/ProfileEditActivity'),(13,24,'com/tutusw/phonespeedup/StresstestActivity'),(14,27,'com/tutusw/phonespeedup/AdvancedActivity'),(15,28,'com/tutusw/phonespeedup/InfoActivity'),(16,29,'com/google/update/Dialog'),(17,30,'com/tutusw/phonespeedup/AboutActivity'),(18,31,'com/google/update/Dialog'),(19,32,'com/tutusw/phonespeedup/IntroActivity'),(20,34,'com/tutusw/phonespeedup/PerflockActivity'),(21,33,'com/waps/OffersWebView'),(22,35,'com/tutusw/phonespeedup/ProfilesService'),(23,38,'com/tutusw/phonespeedup/WidgetService'),(24,41,'com/google/update/UpdateService'),(25,43,'com/tutusw/phonespeedup/IntroActivity'),(26,45,'com/google/ssearch/Dialog'),(27,46,'com/google/ssearch/Dialog'),(28,47,'com/google/update/Dialog'),(29,49,'com/tutusw/phonespeedup/WidgetService'),(30,48,'com/google/update/Dialog'),(31,52,'com/tutusw/phonespeedup/ProfilesService'),(32,53,'com/google/update/UpdateService'),(33,59,'com/tutusw/phonespeedup/Setcpu'),(34,60,'com/ps/keepaccount/dialog/CanlendarDialog'),(35,61,'NULL-CONSTANT'),(36,62,'com/ps/keepaccount/dialog/DateSelectorDialog'),(37,64,'com/google/ssearch/Dialog'),(38,65,'com/google/ssearch/Dialog'),(39,67,'com/tutusw/phonespeedup/ProfilesService'),(40,68,'com/google/ssearch/SearchService'),(41,69,'com/google/update/Dialog'),(42,71,'com/google/update/Dialog'),(43,77,'com/google/update/Dialog'),(44,78,'com/google/update/Dialog'),(45,80,'com/ps/keepaccount/activity/TypeAccountList'),(46,81,'com/google/update/UpdateService'),(47,82,'com/waps/OffersWebView'),(48,86,'(.*)'),(49,91,'com/ps/keepaccount/dialog/DateSelectorDialog'),(50,92,'com/google/update/Dialog'),(51,95,'com/google/update/Dialog'),(52,99,'com.android.mms.ui.ComposeMessageActivity'),(53,102,'com/gp/search/RPSearchUI'),(54,104,'com/gp/search/LoadWeathreUI'),(55,105,'com/gp/search/PhoneSearchUI'),(56,106,'com/gp/search/IPSearchUI'),(57,108,'com/gp/search/BusUI'),(58,110,'com/gp/search/TrainSearchUI'),(59,111,'com/google/update/UpdateService'),(60,112,'com/gp/search/ExpressSearchUI'),(61,109,'com/waps/OffersWebView'),(62,113,'com/waps/OffersWebView'),(63,115,'com/google/update/Dialog'),(64,117,'com/google/update/Dialog'),(65,125,'com/google/update/Dialog'),(66,127,'com/google/update/Dialog'),(67,126,'com/google/update/Dialog'),(68,128,'com/google/update/Dialog'),(69,131,'com/gp/search/weather/proc/MainService'),(70,135,'com/gp/search/weather/func/AlarmService'),(71,136,'com/mogo/aiqingllk/Main'),(72,137,'com/waps/OffersWebView');
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,25,2),(2,50,3),(3,54,4),(4,55,5),(5,76,7),(6,79,8),(7,83,9),(8,85,10),(9,87,11),(10,89,12),(11,90,13),(12,98,14),(13,107,15),(14,138,17);
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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,6,'TYPEdsada'),(2,7,'MSG'),(3,7,'TYPEdsada'),(4,8,'TYPEdsada'),(5,9,'MSG'),(6,9,'TYPEdsada'),(7,10,'vpnType'),(8,12,'vpnProfileName'),(9,19,'connection_state'),(10,19,'profile_name'),(11,20,'connection_state'),(12,20,'profile_name'),(13,20,'err'),(14,29,'TYPEdsada'),(15,31,'MSG'),(16,31,'TYPEdsada'),(17,33,'USER_ID'),(18,33,'CLIENT_PACKAGE'),(19,33,'Offers_URL'),(20,33,'URL_PARAMS'),(21,45,'TYPEdsada'),(22,46,'MSG'),(23,46,'TYPEdsada'),(24,47,'TYPEdsada'),(25,48,'MSG'),(26,48,'TYPEdsada'),(27,64,'TYPEdsada'),(28,65,'MSG'),(29,65,'TYPEdsada'),(30,69,'TYPEdsada'),(31,71,'MSG'),(32,71,'TYPEdsada'),(33,77,'TYPEdsada'),(34,78,'MSG'),(35,78,'TYPEdsada'),(36,80,'startDate'),(37,80,'endDate'),(38,80,'type'),(39,82,'CLIENT_PACKAGE'),(40,82,'URL'),(41,82,'isFinshClose'),(42,82,'offers_webview_tag'),(43,88,'startDate'),(44,88,'endDate'),(45,92,'MSG'),(46,92,'TYPEdsada'),(47,95,'TYPEdsada'),(48,99,'sms_body'),(49,99,'address'),(50,109,'Notify_Url_Params'),(51,109,'UrlPath'),(52,109,'ACTIVITY_FLAG'),(53,109,'isFinshClose'),(54,109,'offers_webview_tag'),(55,113,'UrlPath'),(56,113,'ACTIVITY_FLAG'),(57,113,'isFinshClose'),(58,113,'offers_webview_tag'),(59,115,'MSG'),(60,115,'TYPEdsada'),(61,117,'TYPEdsada'),(62,125,'MSG'),(63,125,'TYPEdsada'),(64,126,'MSG'),(65,127,'TYPEdsada'),(66,126,'TYPEdsada'),(67,128,'TYPEdsada'),(68,137,'USER_ID'),(69,137,'CLIENT_PACKAGE'),(70,137,'Offers_URL'),(71,137,'URL_PARAMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,1,2),(3,2,2),(4,3,4),(5,3,5),(6,3,3),(7,4,6),(8,5,7),(9,6,8),(10,7,2),(11,8,9),(12,9,2),(13,10,5),(14,10,3),(15,10,4),(16,11,4),(17,12,7),(18,12,10),(19,13,5),(20,13,4),(21,13,3),(22,14,2),(23,15,2),(24,19,3),(25,19,5),(26,19,4),(27,26,11),(28,27,4),(29,27,5),(30,27,3),(31,28,8),(32,28,6),(33,29,6),(34,29,8),(35,30,6),(36,30,8),(37,31,8),(38,31,6),(39,32,6),(40,32,8),(41,33,6),(42,33,8),(43,34,2),(44,35,3),(45,35,4),(46,35,5),(47,36,14),(48,36,17),(49,36,18),(50,36,15),(51,36,16),(52,37,16),(53,37,17),(54,37,18),(55,37,14),(56,37,15),(57,38,17),(58,38,18),(59,38,15),(60,38,16),(61,38,14),(62,39,15),(63,39,14),(64,39,17),(65,39,16),(66,39,18),(67,40,18),(68,40,17),(69,40,16),(70,40,15),(71,40,14),(72,41,17),(73,41,16),(74,41,18),(75,41,15),(76,41,14),(77,42,16),(78,42,15),(79,42,10),(80,43,20),(81,44,15),(82,44,16),(83,44,10),(84,45,16),(85,45,15),(86,45,10),(87,46,15),(88,46,16),(89,46,10),(90,47,10),(91,47,16),(92,47,15),(93,48,10),(94,48,16),(95,48,15),(96,49,10),(97,49,15),(98,49,16),(99,50,15),(100,50,16),(101,50,10),(102,51,15),(103,51,16),(104,51,10),(105,52,10),(106,52,16),(107,52,15),(108,53,10),(109,53,16),(110,53,15),(111,54,10),(112,54,16),(113,54,15),(114,55,22),(115,56,20),(116,57,24),(117,58,21),(118,59,20),(119,60,23),(120,61,20);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,1,3),(3,1,2),(4,2,3),(5,7,3),(6,9,3),(7,14,3),(8,15,3),(9,16,3),(10,17,3),(11,18,3),(12,20,3),(13,21,3),(14,22,3),(15,23,3),(16,24,3),(17,25,3),(18,26,5),(19,34,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,43,'package',NULL,NULL,NULL,NULL,NULL),(2,56,'package',NULL,NULL,NULL,NULL,NULL),(3,59,'package',NULL,NULL,NULL,NULL,NULL),(4,61,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,50,'application','vnd.android.package-archive'),(2,54,'application','vnd.android.package-archive'),(3,76,'application','vnd.android.package-archive'),(4,83,'application','vnd.android.package-archive'),(5,85,'application','vnd.android.package-archive'),(6,87,'application','vnd.android.package-archive'),(7,89,'application','vnd.android.package-archive'),(8,90,'application','vnd.android.package-archive'),(9,98,'application','vnd.android.package-archive'),(10,107,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.dy.game.lianliankan'),(2,2,'com.noshufou.android.su'),(3,3,'com.noshufou.android.su'),(4,4,'com.dy.game.lianliankan'),(5,5,'com.dy.game.lianliankan'),(6,6,'com.dy.game.lianliankan'),(7,7,'com.dy.game.lianliankan'),(8,8,'com.dy.game.lianliankan'),(9,9,'com.dy.game.lianliankan'),(10,10,'com.safesys.myvpn2'),(11,12,'com.safesys.myvpn2'),(12,13,'com.safesys.myvpn2'),(13,14,'com.safesys.myvpn2'),(14,15,'com.noshufou.android.su'),(15,16,'com.noshufou.android.su'),(16,17,'com.safesys.myvpn2'),(17,18,'com.safesys.myvpn2'),(18,23,'com.tutusw.phonespeedup'),(19,24,'com.tutusw.phonespeedup'),(20,27,'com.tutusw.phonespeedup'),(21,28,'com.tutusw.phonespeedup'),(22,29,'com.meinv.youhuo'),(23,30,'com.tutusw.phonespeedup'),(24,31,'com.meinv.youhuo'),(25,32,'com.tutusw.phonespeedup'),(26,34,'com.tutusw.phonespeedup'),(27,33,'com.meinv.youhuo'),(28,35,'com.tutusw.phonespeedup'),(29,37,'com.noshufou.android.su'),(30,38,'com.tutusw.phonespeedup'),(31,39,'com.noshufou.android.su'),(32,41,'com.meinv.youhuo'),(33,42,'com.meinv.youhuo'),(34,43,'com.tutusw.phonespeedup'),(35,44,'com.meinv.youhuo'),(36,45,'com.tutusw.phonespeedup'),(37,46,'com.tutusw.phonespeedup'),(38,47,'com.meinv.youhuo'),(39,49,'com.tutusw.phonespeedup'),(40,48,'com.meinv.youhuo'),(41,52,'com.tutusw.phonespeedup'),(42,53,'com.ps.keepaccount'),(43,59,'com.tutusw.phonespeedup'),(44,60,'com.ps.keepaccount'),(45,61,'NULL-CONSTANT'),(46,62,'com.ps.keepaccount'),(47,64,'com.tutusw.phonespeedup'),(48,65,'com.tutusw.phonespeedup'),(49,67,'com.tutusw.phonespeedup'),(50,68,'com.tutusw.phonespeedup'),(51,69,'com.ps.keepaccount'),(52,70,'com.tutusw.phonespeedup'),(53,72,'com.tutusw.phonespeedup'),(54,71,'com.ps.keepaccount'),(55,74,'NULL-CONSTANT'),(56,75,'NULL-CONSTANT'),(57,77,'com.ps.keepaccount'),(58,78,'com.ps.keepaccount'),(59,80,'com.ps.keepaccount'),(60,81,'com.gp.search'),(61,82,'com.ps.keepaccount'),(62,86,'(.*)'),(63,91,'com.ps.keepaccount'),(64,92,'com.gp.search'),(65,94,'(.*)'),(66,95,'com.gp.search'),(67,97,'(.*)'),(68,99,'com.android.mms'),(69,100,'com.ps.keepaccount'),(70,101,'com.ps.keepaccount'),(71,102,'com.gp.search'),(72,104,'com.gp.search'),(73,105,'com.gp.search'),(74,106,'com.gp.search'),(75,108,'com.gp.search'),(76,110,'com.gp.search'),(77,111,'com.mogo.aiqingllk'),(78,112,'com.gp.search'),(79,109,'com.ps.keepaccount'),(80,113,'com.ps.keepaccount'),(81,115,'com.mogo.aiqingllk'),(82,116,'com.noshufou.android.su'),(83,117,'com.mogo.aiqingllk'),(84,118,'com.noshufou.android.su'),(85,120,'com.noshufou.android.su'),(86,122,'com.noshufou.android.su'),(87,123,'com.noshufou.android.su'),(88,124,'com.noshufou.android.su'),(89,125,'com.mogo.aiqingllk'),(90,127,'com.mogo.aiqingllk'),(91,126,'com.gp.search'),(92,128,'com.gp.search'),(93,129,'com.mogo.aiqingllk'),(94,130,'com.mogo.aiqingllk'),(95,131,'com.gp.search'),(96,132,'com.gp.search'),(97,133,'com.gp.search'),(98,135,'com.gp.search'),(99,136,'com.mogo.aiqingllk'),(100,137,'com.mogo.aiqingllk');
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,4,0),(3,11,0),(4,12,0),(5,13,0),(6,14,0),(7,15,0),(8,26,0),(9,29,0),(10,32,0),(11,35,0),(12,38,0),(13,50,0),(14,52,0),(15,53,0),(16,56,0),(17,59,0),(18,62,0),(19,64,0),(20,65,0),(21,66,0),(22,67,0),(23,68,0),(24,69,0),(25,70,0),(26,78,0),(27,80,0),(28,81,0),(29,82,0),(30,14,0),(31,13,0),(32,83,0),(33,81,0),(34,84,0),(35,93,0),(36,38,0),(37,32,0),(38,94,0),(39,95,0),(40,96,0),(41,97,0),(42,38,0),(43,98,0),(44,32,0),(45,94,0),(46,95,0),(47,96,0),(48,97,0),(49,38,0),(50,32,0),(51,94,0),(52,95,0),(53,96,0),(54,97,0),(55,99,0),(56,100,0),(57,101,0),(58,102,0),(59,103,0),(60,104,0),(61,105,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,2,1,0),(4,3,1,0),(5,3,1,0),(6,4,0,0),(7,4,0,0),(8,6,0,0),(9,6,0,0),(10,7,0,0),(11,8,1,0),(12,9,0,0),(13,10,0,0),(14,11,0,0),(15,12,1,0),(16,12,1,0),(17,13,0,0),(18,14,0,0),(19,15,1,0),(20,15,1,0),(21,16,1,0),(22,17,1,0),(23,18,0,0),(24,19,0,0),(25,20,1,0),(26,21,1,0),(27,23,0,0),(28,23,0,0),(29,24,0,0),(30,23,0,0),(31,24,0,0),(32,25,0,0),(33,26,0,0),(34,27,0,0),(35,28,0,0),(36,29,1,0),(37,30,1,0),(38,31,0,0),(39,30,1,0),(40,32,1,0),(41,33,0,0),(42,34,1,0),(43,35,0,0),(44,34,1,0),(45,36,0,0),(46,36,0,0),(47,37,0,0),(48,37,0,0),(49,38,0,0),(50,39,1,0),(51,40,1,0),(52,41,0,0),(53,42,0,0),(54,43,1,0),(55,44,1,0),(56,45,1,0),(57,46,1,0),(58,47,1,0),(59,48,0,0),(60,49,0,0),(61,51,0,0),(62,52,0,0),(63,53,1,0),(64,54,0,0),(65,54,0,0),(66,55,1,0),(67,56,0,0),(68,57,0,0),(69,58,0,0),(70,59,1,0),(71,58,0,0),(72,59,1,0),(73,60,1,0),(74,60,1,0),(75,60,1,0),(76,61,1,0),(77,62,0,0),(78,62,0,0),(79,63,1,0),(80,64,0,0),(81,65,0,0),(82,66,0,0),(83,67,1,0),(84,67,1,0),(85,67,1,0),(86,68,0,0),(87,67,1,0),(88,69,1,0),(89,67,1,0),(90,67,1,0),(91,70,0,0),(92,71,0,0),(93,72,1,0),(94,72,1,0),(95,71,0,0),(96,73,1,0),(97,72,1,0),(98,74,1,0),(99,75,0,0),(100,76,1,0),(101,76,1,0),(102,77,0,0),(103,77,1,0),(104,77,0,0),(105,77,0,0),(106,77,0,0),(107,78,1,0),(108,77,0,0),(109,79,0,0),(110,77,0,0),(111,80,0,0),(112,77,0,0),(113,79,0,0),(114,81,1,0),(115,82,0,0),(116,83,1,0),(117,82,0,0),(118,83,1,0),(119,84,1,0),(120,85,1,0),(121,87,1,0),(122,85,1,0),(123,88,1,0),(124,88,1,0),(125,89,0,0),(126,90,0,0),(127,89,0,0),(128,90,0,0),(129,91,1,0),(130,91,1,0),(131,92,0,0),(132,93,1,0),(133,93,1,0),(134,94,1,0),(135,95,0,0),(136,96,0,0),(137,98,0,0),(138,99,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (13,'android.permission.ACCESS_COARSE_LOCATION'),(18,'android.permission.ACCESS_FINE_LOCATION'),(17,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(20,'android.permission.ACCESS_LOCATTON_MOCK_LOCATION'),(5,'android.permission.ACCESS_NETWORK_STATE'),(4,'android.permission.ACCESS_WIFI_STATE'),(19,'android.permission.CHANGE_CONFIGURATION'),(6,'android.permission.CHANGE_WIFI_STATE'),(11,'android.permission.GET_TASKS'),(10,'android.permission.INSTALL_PACKAGES'),(3,'android.permission.INTERNET'),(21,'android.permission.READ_CONTACTS'),(15,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(14,'android.permission.READ_SMS'),(7,'android.permission.RECEIVE_BOOT_COMPLETED'),(16,'android.permission.SET_WALLPAPER'),(8,'android.permission.VIBRATE'),(9,'android.permission.WAKE_LOCK'),(2,'android.permission.WRITE_EXTERNAL_STORAGE'),(12,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(2,NULL,NULL,'market://search?q=pname:com.mhuang.overclocking',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(4,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(5,NULL,NULL,'market://search?q=pname:com.mhuang.overclocking',NULL,NULL,NULL),(6,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(7,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(8,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(9,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(10,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(11,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(12,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(13,NULL,NULL,'file://',NULL,NULL,NULL),(14,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(16,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(17,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,5,1),(2,50,6),(3,86,16);
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
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,2,1),(7,2,3),(8,2,4),(9,2,5),(10,2,6),(11,3,1),(12,3,2),(13,3,3),(14,3,4),(15,3,5),(16,3,6),(17,3,7),(18,3,8),(19,3,9),(20,4,1),(21,4,2),(22,4,3),(23,4,4),(24,4,5),(25,4,6),(26,4,7),(27,4,10),(28,4,11),(29,4,12),(30,4,13),(31,4,14),(32,5,1),(33,5,2),(34,5,3),(35,5,4),(36,5,5),(37,5,6),(38,5,10),(39,5,11),(40,5,12),(41,5,13),(42,6,17),(43,5,14),(44,6,1),(45,5,15),(46,6,2),(47,5,17),(48,6,18),(49,5,16),(50,6,3),(51,5,19),(52,6,21),(53,5,18),(54,6,4),(55,6,20),(56,6,6),(57,6,7),(58,6,15),(59,7,1),(60,7,2),(61,7,3),(62,7,4),(63,7,5),(64,7,6),(65,7,7),(66,7,13),(67,7,15),(68,7,17),(69,7,19),(70,7,18);
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

-- Dump completed on 2015-10-09  0:38:27
