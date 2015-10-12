-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_174
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (18,'(.*)'),(10,'android.appwidget.action.APPWIDGET_UPDATE'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(21,'android.intent.action.CALL'),(25,'android.intent.action.DELETE'),(16,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(14,'android.intent.action.NEW_OUTGOING_CALL'),(22,'android.intent.action.PACKAGE_ADDED'),(6,'android.intent.action.PHONE_STATE'),(19,'android.intent.action.SEND'),(20,'android.intent.action.SENDTO'),(2,'android.intent.action.SIG_STR'),(15,'android.intent.action.VIEW'),(26,'android.intent.action.WEB_SEARCH'),(5,'android.net.vpn.SETTINGS'),(7,'android.provider.Telephony.SMS_RECEIVED'),(17,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(12,'android.service.wallpaper.WallpaperService'),(13,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(9,'com.atools.appmanage.activity.AUTO_START'),(27,'com.atools.appmanage.safe.CALL_RECEIVED_ACTION'),(23,'com.atools.appmanage.safe.SMS_RECEIVED_ACTION'),(24,'com.atools.appmanage.tool.ServiceTool'),(8,'myvpn.toggleVpnConnectionAction'),(11,'vpn.connectivity');
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
INSERT INTO `Applications` VALUES (1,'com.allen.txtmmtx',1),(2,'com.atools.appmanage.activity',2),(3,'com.safesys.myvpn',9),(4,'com.livegame.wallpaperfengjing',4),(5,'com.alan.asianmeinv3',1),(6,'com.gp.DropBubble',1),(7,'com.mogo.animalkeeper',5);
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
INSERT INTO `CategoryStrings` VALUES (6,'android.intent.category.BROWSABLE'),(3,'android.intent.category.DEFAULT'),(4,'android.intent.category.HOME'),(5,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(2,'com.android.settings.SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.allen.txtmmtx.txtReader'),(2,1,'com.google.ssearch.Dialog'),(3,1,'com.allen.txtmmtx.ViewFileAct_Float'),(4,1,'com.allen.txtmmtx.Settings'),(5,1,'com.google.ssearch.SearchService'),(6,1,'com.google.ssearch.Receiver'),(7,2,'com.atools.appmanage.activity.MainActivity'),(8,2,'com.atools.appmanage.activity.ProcessActivity'),(9,2,'com.atools.appmanage.activity.ApplicationActivity'),(10,2,'com.atools.appmanage.activity.FileManageActivity'),(11,2,'com.atools.appmanage.activity.SearchFileActivity'),(12,2,'com.atools.appmanage.activity.OneKeyOptimizationActivity'),(13,2,'com.atools.appmanage.activity.StartQuickActivity'),(14,3,'com.safesys.myvpn.VpnSettings'),(15,2,'com.atools.appmanage.activity.PhoneMainActivity'),(16,2,'com.atools.appmanage.activity.MessageActivity'),(17,2,'com.atools.appmanage.activity.CallActivity'),(18,2,'com.atools.appmanage.activity.SetActivity'),(19,3,'com.safesys.myvpn.VpnTypeSelection'),(20,2,'com.atools.appmanage.activity.SensitiveActivity'),(21,3,'com.safesys.myvpn.editor.PptpProfileEditor'),(22,2,'com.atools.battery.ShowTips'),(23,3,'com.safesys.myvpn.editor.L2tpProfileEditor'),(24,2,'com.atools.battery.UpdateService'),(25,3,'com.safesys.myvpn.editor.L2tpIpsecPskProfileEditor'),(26,2,'com.atools.appmanage.tool.BroadCastTool'),(27,3,'com.safesys.myvpn.ToggleVpn'),(28,3,'com.safesys.myvpn.Settings'),(29,3,'com.adwo.adsdk.AdwoSplashAdActivity'),(30,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(31,3,'com.safesys.myvpn.VpnConnectorService'),(32,3,'com.safesys.myvpn.VpnAppWidgetProvider'),(33,2,'com.atools.battery.Receiver'),(34,3,'com.safesys.myvpn.KeepAlive'),(35,4,'com.livegame.wallpaperfengjing.MainActivity'),(36,4,'com.livegame.wallpaperfengjing.SettingsActivity'),(37,4,'com.livegame.wallpaperfengjing.SelectFolderActivity'),(38,4,'com.google.ads.AdActivity'),(39,4,'com.vpon.adon.android.WebInApp'),(40,4,'com.adwo.adsdk.AdwoSplashAdActivity'),(41,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(42,4,'com.waps.OffersWebView'),(43,4,'com.google.update.Dialog'),(44,4,'com.livegame.wallpaperfengjing.WallpaperSlideshow'),(45,4,'com.google.update.UpdateService'),(46,4,'com.google.update.Receiver'),(47,5,'com.alan.asianmeinv3.PaperCollection'),(48,5,'com.alan.asianmeinv3.PictureGrid'),(49,5,'com.google.ads.AdActivity'),(50,1,'com.google.ssearch.Dialog$1'),(51,5,'com.vpon.adon.android.WebInApp'),(52,5,'com.adwo.adsdk.AdwoSplashAdActivity'),(53,6,'com.gp.DropBubble.Menu'),(54,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(55,5,'com.waps.OffersWebView'),(56,6,'com.gp.DropBubble.DropBubble'),(57,5,'com.google.update.Dialog'),(58,6,'com.gp.DropBubble.Help'),(59,5,'com.google.update.UpdateService'),(60,6,'com.gp.DropBubble.GameOver'),(61,5,'com.google.update.Receiver'),(62,6,'cn.domob.android.ads.DomobActivity'),(63,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(64,6,'com.adwo.adsdk.AdwoSplashAdActivity'),(65,1,'com.google.ssearch.SearchService$MyThread'),(66,7,'com.mogo.animalkeeper.GameStartMenu'),(67,7,'com.mogo.animalkeeper.GameMainActivity'),(68,7,'com.mogo.animalkeeper.GameOverMenu'),(69,7,'com.mogo.animalkeeper.Top'),(70,7,'com.google.ads.AdActivity'),(71,7,'com.vpon.adon.android.WebInApp'),(72,7,'com.adwo.adsdk.AdwoSplashAdActivity'),(73,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(74,7,'com.waps.OffersWebView'),(75,7,'com.google.update.Dialog'),(76,7,'com.google.update.UpdateService'),(77,7,'com.mogo.animalkeeper.CallReceiver'),(78,7,'com.google.update.Receiver'),(79,3,'com.safesys.myvpn.VpnConnectorService$VpnStateReceiver'),(80,4,'com.waps.ac'),(81,3,'com.safesys.myvpn.VpnSettings$8'),(82,5,'com.google.update.UpdateService$MyThread'),(83,4,'com.waps.aa'),(84,3,'com.adwo.adsdk.D'),(85,3,'android.appwidget.AppWidgetProvider'),(86,2,'com.atools.battery.ShowTips$1'),(87,3,'com.adwo.adsdk.g'),(88,4,'com.livegame.wallpaperfengjing.MainActivity$1'),(89,4,'com.livegame.wallpaperfengjing.MainActivity$2'),(90,5,'com.ju6.a'),(91,5,'com.google.update.Dialog$1'),(92,4,'com.waps.AppConnect'),(93,5,'com.google.update.Dialog$2'),(94,5,'com.waps.k'),(95,5,'com.waps.AppConnect'),(96,4,'com.google.update.Dialog$2'),(97,5,'com.waps.m'),(98,4,'com.google.update.UpdateService$AA'),(99,2,'com.atools.appmanage.utils.FileUtil'),(100,4,'com.waps.z'),(101,4,'com.waps.q'),(102,2,'com.atools.appmanage.utils.ProcessUtils'),(103,4,'com.google.update.Dialog$1'),(104,7,'com.mogo.animalkeeper.GameOverMenu$5'),(105,4,'com.waps.o'),(106,2,'com.atools.appmanage.activity.SetActivity$1'),(107,7,'com.waps.k'),(108,6,'cn.domob.android.ads.o$5'),(109,2,'com.atools.appmanage.activity.CallActivity$1'),(110,7,'com.google.update.Dialog$2'),(111,2,'com.atools.appmanage.activity.SearchInputDialog$1'),(112,2,'com.atools.appmanage.activity.MessageActivity$1'),(113,7,'com.waps.m'),(114,2,'com.atools.appmanage.activity.CallActivity$MyBroadCastReceiver'),(115,3,'com.safesys.myvpn.VpnSettings$11'),(116,6,'cn.domob.android.ads.g$1'),(117,7,'com.ju6.a'),(118,6,'cn.domob.android.ads.DomobAdManager'),(119,2,'com.atools.appmanage.activity.MessageActivity$MyBroadCastReceiver'),(120,6,'cn.domob.android.ads.o'),(121,6,'cn.domob.android.ads.e'),(122,3,'com.safesys.myvpn.VpnActor'),(123,6,'cn.domob.android.a.a$a'),(124,7,'com.google.update.UpdateService$MyThread'),(125,7,'com.google.update.Dialog$1');
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
INSERT INTO `ComponentExtras` VALUES (1,2,'TYPEdsada'),(2,2,'MSG'),(3,3,'/sdcard/txtbooks/mmtx.txt'),(4,3,'book1'),(5,14,'vpnProfileName'),(6,25,'vpnType'),(7,21,'vpnType'),(8,23,'vpnType'),(9,25,'password'),(10,51,'isTestMode'),(11,21,'password'),(12,54,'URL'),(13,23,'password'),(14,53,'shouldShowBottomBar'),(15,30,'transitionTime'),(16,53,'shouldMakeOverlayTransparent'),(17,30,'shouldEnableBottomBar'),(18,48,'WAPS_ID'),(19,29,'Adwo_PID'),(20,53,'url'),(21,30,'shouldShowTitlebar'),(22,51,'Adwo_PID'),(23,54,'Offers_URL'),(24,39,'adWidth'),(25,48,'DEVICE_ID'),(26,49,'params'),(27,53,'shouldShowTitlebar'),(28,25,'server'),(29,48,'CLIENT_PACKAGE'),(30,21,'server'),(31,53,'transitionTime'),(32,23,'server'),(33,54,'isFinshClose'),(34,30,'shouldShowBottomBar'),(35,49,'action'),(36,34,'profile_name'),(37,25,'name'),(38,21,'name'),(39,23,'name'),(40,42,'isFinshClose'),(41,42,'URL'),(42,41,'shouldEnableBottomBar'),(43,42,'APP_ID'),(44,35,'APP_ID'),(45,48,'WAPS_PID'),(46,50,'adWidth'),(47,50,'url'),(48,11,'allMatch'),(49,54,'CLIENT_PACKAGE'),(50,27,'activeVpnState'),(51,30,'overlayTransition'),(52,25,'vpnProfileName'),(53,21,'vpnProfileName'),(54,23,'vpnProfileName'),(55,24,'SAFE_START'),(56,26,'pdus'),(57,25,'secretEnabled'),(58,23,'secretEnabled'),(59,42,'Offers_URL'),(60,36,'folder'),(61,22,'MM'),(62,40,'Adwo_PID'),(63,42,'WAPS_PID'),(64,35,'WAPS_PID'),(65,43,'MSG'),(66,42,'CLIENT_PACKAGE'),(67,42,'DEVICE_ID'),(68,35,'DEVICE_ID'),(69,24,'SAFE_PID'),(70,42,'WAPS_ID'),(71,58,'ST_MY_PID'),(72,35,'WAPS_ID'),(73,48,'APP_ID'),(74,42,'URL_PARAMS'),(75,42,'UrlPath'),(76,41,'overlayTitle'),(77,41,'shouldMakeOverlayTransparent'),(78,53,'overlayTransition'),(79,54,'USER_ID'),(80,58,'ST_START_DELAY'),(81,11,'expr'),(82,43,'TYPEdsada'),(83,41,'transitionTime'),(84,42,'SHWO_FLAG'),(85,42,'USER_ID'),(86,45,'ST_MY_PID'),(87,56,'MSG'),(88,53,'overlayTitle'),(89,56,'TYPEdsada'),(90,53,'shouldResizeOverlay'),(91,41,'overlayTransition'),(92,54,'URL_PARAMS'),(93,49,'com.google.ads.AdOpener'),(94,42,'offers_webview_tag'),(95,42,'Notify_Id'),(96,53,'shouldEnableBottomBar'),(97,40,'isTestMode'),(98,35,'CLIENT_PACKAGE'),(99,73,'MSG'),(100,39,'url'),(101,72,'USER_ID'),(102,42,'ACTIVITY_FLAG'),(103,69,'url'),(104,42,'Notify_Url_Params'),(105,41,'url'),(106,41,'shouldShowTitlebar'),(107,41,'shouldShowBottomBar'),(108,41,'shouldResizeOverlay'),(109,45,'ST_START_DELAY'),(110,11,'caseSense'),(111,70,'Adwo_PID'),(112,71,'transitionTime'),(113,68,'params'),(114,71,'url'),(115,71,'shouldMakeOverlayTransparent'),(116,71,'shouldEnableBottomBar'),(117,74,'ST_START_DELAY'),(118,68,'com.google.ads.AdOpener'),(119,70,'isTestMode'),(120,64,'APP_ID'),(121,64,'CLIENT_PACKAGE'),(122,25,'user'),(123,71,'shouldResizeOverlay'),(124,21,'user'),(125,64,'DEVICE_ID'),(126,23,'user'),(127,72,'URL_PARAMS'),(128,72,'Offers_URL'),(129,71,'overlayTransition'),(130,71,'shouldShowBottomBar'),(131,34,'connection_state'),(132,25,'psk'),(133,23,'psk'),(134,29,'isTestMode'),(135,62,'overlayTransition'),(136,63,'shouldMakeOverlayTransparent'),(137,61,'actType'),(138,63,'shouldShowBottomBar'),(139,63,'overlayTransition'),(140,63,'shouldShowTitlebar'),(141,62,'shouldShowTitlebar'),(142,64,'WAPS_ID'),(143,71,'shouldShowTitlebar'),(144,74,'ST_MY_PID'),(145,64,'WAPS_PID'),(146,61,'appName'),(147,63,'shouldEnableBottomBar'),(148,71,'overlayTitle'),(149,30,'shouldResizeOverlay'),(150,52,'DOMOB_PID'),(151,73,'TYPEdsada'),(152,25,'secret'),(153,63,'DOMOB_PID'),(154,72,'isFinshClose'),(155,23,'secret'),(156,59,'DOMOB_PID'),(157,30,'shouldMakeOverlayTransparent'),(158,55,'DOMOB_PID'),(159,62,'DOMOB_PID'),(160,62,'shouldShowBottomBar'),(161,30,'url'),(162,68,'action'),(163,64,'score'),(164,65,'score'),(165,66,'score'),(166,25,'dns'),(167,21,'dns'),(168,23,'dns'),(169,30,'overlayTitle'),(170,14,'vpnType'),(171,63,'FSAd'),(172,21,'encrypt'),(173,62,'shouldResizeOverlay'),(174,61,'appId'),(175,63,'shouldResizeOverlay'),(176,72,'URL'),(177,62,'shouldMakeOverlayTransparent'),(178,62,'overlayTitle'),(179,63,'transitionTime'),(180,62,'url'),(181,72,'CLIENT_PACKAGE'),(182,63,'overlayTitle'),(183,52,'DOMOB_TEST_MODE'),(184,63,'DOMOB_TEST_MODE'),(185,59,'DOMOB_TEST_MODE'),(186,55,'DOMOB_TEST_MODE'),(187,62,'DOMOB_TEST_MODE'),(188,62,'transitionTime'),(189,69,'adWidth'),(190,62,'shouldEnableBottomBar'),(191,52,'DOMOB_ALLOW_LOCATION'),(192,63,'DOMOB_ALLOW_LOCATION'),(193,59,'DOMOB_ALLOW_LOCATION'),(194,55,'DOMOB_ALLOW_LOCATION'),(195,62,'DOMOB_ALLOW_LOCATION');
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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'r',1,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'s',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'r',1,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'s',1,NULL,NULL),(32,32,'r',1,NULL,NULL),(33,33,'r',1,NULL,NULL),(34,34,'r',1,NULL,NULL),(35,35,'a',1,NULL,NULL),(36,36,'a',1,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'s',1,26,NULL),(45,45,'s',0,NULL,NULL),(46,46,'r',1,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',1,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,51,'a',0,NULL,NULL),(51,52,'a',0,NULL,NULL),(52,53,'a',1,NULL,NULL),(53,54,'a',0,NULL,NULL),(54,55,'a',0,NULL,NULL),(55,56,'a',0,NULL,NULL),(56,57,'a',0,NULL,NULL),(57,58,'a',0,NULL,NULL),(58,59,'s',0,NULL,NULL),(59,60,'a',0,NULL,NULL),(60,61,'r',1,NULL,NULL),(61,62,'a',0,NULL,NULL),(62,63,'a',0,NULL,NULL),(63,64,'a',0,NULL,NULL),(64,66,'a',1,NULL,NULL),(65,67,'a',0,NULL,NULL),(66,68,'a',0,NULL,NULL),(67,69,'a',0,NULL,NULL),(68,70,'a',0,NULL,NULL),(69,71,'a',0,NULL,NULL),(70,72,'a',0,NULL,NULL),(71,73,'a',0,NULL,NULL),(72,74,'a',0,NULL,NULL),(73,75,'a',0,NULL,NULL),(74,76,'s',0,NULL,NULL),(75,77,'r',1,NULL,NULL),(76,78,'r',1,NULL,NULL),(77,79,'r',1,NULL,NULL),(78,81,'r',1,NULL,NULL),(79,84,'r',1,NULL,NULL),(80,85,'r',1,NULL,NULL),(81,97,'r',1,NULL,NULL),(82,101,'r',1,NULL,NULL),(83,113,'r',1,NULL,NULL),(84,114,'r',1,NULL,NULL),(85,119,'r',1,NULL,NULL),(86,121,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,5),(2,2,1),(3,3,2),(4,4,5),(5,5,6),(6,6,3),(7,7,5),(8,8,32),(9,9,32),(10,10,37),(11,10,42),(12,11,42),(13,12,58),(14,13,14),(15,14,58),(16,15,17),(17,16,42),(18,17,16),(19,18,33),(20,19,58),(21,20,22),(22,21,14),(23,22,35),(24,23,49),(25,24,7),(26,25,35),(27,26,16),(28,27,15),(29,28,42),(30,29,60),(31,30,7),(32,31,58),(33,32,7),(34,33,45),(35,34,16),(36,35,56),(37,36,17),(38,37,16),(39,38,35),(40,39,56),(41,40,15),(42,41,54),(43,42,7),(44,43,45),(45,44,7),(46,45,48),(47,46,26),(48,47,17),(49,48,43),(50,49,26),(51,50,45),(52,51,15),(53,52,17),(54,53,46),(55,54,10),(56,54,11),(57,55,42),(58,56,76),(59,57,7),(60,58,68),(61,59,9),(62,59,8),(63,59,13),(64,60,43),(65,61,16),(66,62,16),(67,63,66),(68,64,42),(69,65,18),(70,66,15),(71,67,72),(72,68,62),(73,68,59),(74,68,63),(75,68,52),(76,68,55),(77,69,17),(78,71,26),(79,70,73),(80,72,10),(81,73,14),(82,74,16),(83,75,74),(84,76,14),(85,77,7),(86,78,17),(87,79,74),(88,80,63),(89,80,52),(90,80,55),(91,80,59),(92,80,62),(93,81,14),(94,82,55),(95,82,52),(96,82,62),(97,82,63),(98,82,59),(99,83,64),(100,83,65),(101,83,66),(102,84,27),(103,85,62),(104,85,63),(105,85,52),(106,85,55),(107,85,59),(108,86,14),(109,87,74),(110,88,14),(111,88,31),(112,89,67),(113,90,59),(114,90,63),(115,90,62),(116,90,52),(117,90,55),(118,91,74),(119,92,73);
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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,5,'<com.google.ssearch.SearchService: void getPermission2()>',79,'a',NULL),(2,1,'<com.allen.txtmmtx.txtReader: void onClick(android.view.View)>',10,'a',NULL),(3,50,'<com.google.ssearch.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(4,5,'<com.google.ssearch.SearchService: int setUsbEnabled()>',34,'a',NULL),(5,6,'<com.google.ssearch.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(6,3,'<com.allen.txtmmtx.ViewFileAct_Float: boolean onMenuItemSelected(int,android.view.MenuItem)>',9,'a',NULL),(7,65,'<com.google.ssearch.SearchService$MyThread: void run()>',39,'a',NULL),(8,32,'<com.safesys.myvpn.VpnAppWidgetProvider: void onEnabled(android.content.Context)>',6,'s',NULL),(9,32,'<com.safesys.myvpn.VpnAppWidgetProvider: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',7,'s',NULL),(10,80,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(11,42,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(12,59,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(13,14,'<com.safesys.myvpn.VpnSettings: void openSettings()>',3,'a',NULL),(14,82,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(15,17,'<com.atools.appmanage.activity.CallActivity: void actionSMS(int,android.database.Cursor,java.lang.String)>',15,'a',NULL),(16,83,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(17,16,'<com.atools.appmanage.activity.MessageActivity: void showMulitAlertDialog()>',7,'p',NULL),(18,33,'<com.atools.battery.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(19,59,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(20,86,'<com.atools.battery.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(21,87,'<com.adwo.adsdk.g: void run()>',59,'a',NULL),(22,88,'<com.livegame.wallpaperfengjing.MainActivity$1: void onClick(android.view.View)>',37,'a',NULL),(23,49,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(24,7,'<com.atools.appmanage.activity.MainActivity: void onClick(android.view.View)>',19,'a',NULL),(25,89,'<com.livegame.wallpaperfengjing.MainActivity$2: void onClick(android.view.View)>',35,'a',NULL),(26,16,'<com.atools.appmanage.activity.MessageActivity: void callMethod(android.widget.ListView,java.lang.String,android.database.Cursor,java.lang.String,java.lang.String)>',34,'a',NULL),(27,15,'<com.atools.appmanage.activity.PhoneMainActivity: void onClick(android.view.View)>',23,'a',NULL),(28,42,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(29,61,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(30,7,'<com.atools.appmanage.activity.MainActivity: void onClick(android.view.View)>',7,'a',NULL),(31,90,'<com.ju6.a: boolean b()>',178,'p',NULL),(32,7,'<com.atools.appmanage.activity.MainActivity: void onCreate(android.os.Bundle)>',45,'s',NULL),(33,45,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(34,16,'<com.atools.appmanage.activity.MessageActivity: void actionSMS(int,android.database.Cursor,java.lang.String)>',15,'a',NULL),(35,91,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(36,17,'<com.atools.appmanage.activity.CallActivity: void showMulitAlertDialog()>',7,'p',NULL),(37,16,'<com.atools.appmanage.activity.MessageActivity: void actionCALL(int,android.database.Cursor,java.lang.String)>',16,'a',NULL),(38,92,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(39,93,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(40,15,'<com.atools.appmanage.activity.PhoneMainActivity: void onClick(android.view.View)>',15,'a',NULL),(41,94,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(42,7,'<com.atools.appmanage.activity.MainActivity: void onClick(android.view.View)>',27,'a',NULL),(43,45,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(44,7,'<com.atools.appmanage.activity.MainActivity: void onClick(android.view.View)>',15,'a',NULL),(45,95,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(46,26,'<com.atools.appmanage.tool.BroadCastTool: void onReceive(android.content.Context,android.content.Intent)>',106,'p',NULL),(47,17,'<com.atools.appmanage.activity.CallActivity: void actionCALL(int,android.database.Cursor,java.lang.String)>',16,'a',NULL),(48,96,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(49,26,'<com.atools.appmanage.tool.BroadCastTool: void abortBroadCastAndSaveData(android.content.Context,int)>',17,'r',NULL),(50,98,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(51,15,'<com.atools.appmanage.activity.PhoneMainActivity: void initContentView()>',2,'s',NULL),(52,17,'<com.atools.appmanage.activity.CallActivity: void callMethod(android.widget.ListView,java.lang.String,android.database.Cursor,java.lang.String,java.lang.String)>',34,'a',NULL),(53,46,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(54,99,'<com.atools.appmanage.utils.FileUtil: void openFile(java.lang.String,android.content.Context)>',11,'a',NULL),(55,100,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(56,78,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(57,7,'<com.atools.appmanage.activity.MainActivity: void onClick(android.view.View)>',23,'a',NULL),(58,70,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(59,102,'<com.atools.appmanage.utils.ProcessUtils: void unInstallApplication(java.lang.String,android.content.Context)>',12,'a',NULL),(60,103,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(61,16,'<com.atools.appmanage.activity.MessageActivity: void callMethod(android.widget.ListView,java.lang.String,android.database.Cursor,java.lang.String,java.lang.String)>',52,'a',NULL),(62,16,'<com.atools.appmanage.activity.MessageActivity: void returnMessage()>',27,'p',NULL),(63,104,'<com.mogo.animalkeeper.GameOverMenu$5: void onClick(android.content.DialogInterface,int)>',43,'a',NULL),(64,105,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(65,106,'<com.atools.appmanage.activity.SetActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',46,'a',NULL),(66,15,'<com.atools.appmanage.activity.PhoneMainActivity: void onClick(android.view.View)>',9,'a',NULL),(67,107,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(68,108,'<cn.domob.android.ads.o$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(69,109,'<com.atools.appmanage.activity.CallActivity$1: void onClick(android.content.DialogInterface,int)>',50,'p',NULL),(70,110,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(71,26,'<com.atools.appmanage.tool.BroadCastTool: void onReceive(android.content.Context,android.content.Intent)>',87,'p',NULL),(72,111,'<com.atools.appmanage.activity.SearchInputDialog$1: void onClick(android.view.View)>',27,'a',NULL),(73,14,'<com.safesys.myvpn.VpnSettings: void addVpn(com.safesys.myvpn.wrapper.VpnType)>',29,'a',NULL),(74,112,'<com.atools.appmanage.activity.MessageActivity$1: void onClick(android.content.DialogInterface,int)>',50,'p',NULL),(75,76,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(76,115,'<com.safesys.myvpn.VpnSettings$11: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(77,7,'<com.atools.appmanage.activity.MainActivity: void onClick(android.view.View)>',11,'a',NULL),(78,17,'<com.atools.appmanage.activity.CallActivity: void callMethod(android.widget.ListView,java.lang.String,android.database.Cursor,java.lang.String,java.lang.String)>',52,'a',NULL),(79,117,'<com.ju6.a: boolean b()>',178,'p',NULL),(80,116,'<cn.domob.android.ads.g$1: void onClick(android.content.DialogInterface,int)>',8,'a',0),(81,14,'<com.safesys.myvpn.VpnSettings: void editVpn(com.safesys.myvpn.wrapper.VpnProfile)>',18,'a',NULL),(82,118,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor m(android.content.Context)>',11,'p',NULL),(83,67,'<com.mogo.animalkeeper.GameMainActivity: void gameOverToWhere()>',9,'a',NULL),(84,27,'<com.safesys.myvpn.ToggleVpn: void sendToggleRequest()>',3,'r',NULL),(85,120,'<cn.domob.android.ads.o: void v(cn.domob.android.ads.o)>',6,'a',NULL),(86,14,'<com.safesys.myvpn.VpnSettings: void onAddVpn()>',3,'a',NULL),(87,76,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(88,122,'<com.safesys.myvpn.VpnActor: void broadcastConnectivity(java.lang.String,com.safesys.myvpn.wrapper.VpnState,int)>',11,'r',NULL),(89,69,'<com.mogo.animalkeeper.Top: boolean onKeyDown(int,android.view.KeyEvent)>',6,'a',NULL),(90,123,'<cn.domob.android.a.a$a: java.net.Proxy a(android.content.Context)>',72,'p',NULL),(91,124,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(92,125,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,4,13),(2,9,1),(3,10,1),(4,17,1),(5,18,1),(6,20,1),(7,21,15),(8,22,1),(9,28,1),(10,29,16),(11,30,17),(12,31,1),(13,32,18),(14,33,19),(15,34,15),(16,37,20),(17,38,18),(18,39,15),(19,40,15),(20,44,20),(21,46,19),(22,49,19),(23,51,15),(24,52,1),(25,53,15),(26,54,1),(27,55,15),(28,56,16),(29,57,21),(30,59,15),(31,60,13),(32,62,15),(33,63,15),(34,65,15),(35,67,20),(36,69,19),(37,72,19),(38,73,19),(39,74,21),(40,75,13),(41,76,19),(42,77,23),(43,78,1),(44,79,1),(45,80,20),(46,81,24),(47,82,15),(48,83,15),(49,85,19),(50,86,15),(51,87,15),(52,88,15),(53,90,15),(54,91,15),(55,93,19),(56,95,18),(57,96,15),(58,97,15),(59,98,25),(60,99,18),(61,101,1),(62,100,20),(63,102,16),(64,103,1),(65,104,15),(66,106,15),(67,107,26),(68,109,15),(69,111,26),(70,112,15),(71,113,19),(72,114,15),(73,115,15),(74,117,13),(75,118,15),(76,119,16),(77,121,15),(78,122,18),(79,123,15),(80,124,15),(81,126,1),(82,129,1),(83,130,16),(84,131,18),(85,133,8),(86,134,15),(87,138,11),(88,140,11),(89,141,1),(90,142,1),(91,143,1),(92,144,1);
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
INSERT INTO `ICategories` VALUES (1,9,5),(2,10,1),(3,17,1),(4,18,5),(5,20,5),(6,22,1),(7,28,1),(8,31,5),(9,32,6),(10,34,6),(11,38,6),(12,52,1),(13,54,5),(14,78,1),(15,79,5),(16,95,6),(17,96,6),(18,99,6),(19,101,1),(20,103,5),(21,126,1),(22,129,5),(23,141,1),(24,142,5),(25,143,1),(26,144,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/google/ssearch/Dialog'),(2,2,'com/google/ssearch/Dialog'),(3,3,'com/allen/txtmmtx/ViewFileAct_Float'),(4,5,'com/google/ssearch/Dialog'),(5,6,'com/google/ssearch/Dialog'),(6,7,'com/google/ssearch/SearchService'),(7,8,'com/allen/txtmmtx/Settings'),(8,11,'com/safesys/myvpn/VpnConnectorService'),(9,12,'com/safesys/myvpn/VpnConnectorService'),(10,13,'NULL-CONSTANT'),(11,16,'com/safesys/myvpn/Settings'),(12,15,'com/google/update/Dialog'),(13,19,'com/google/update/Dialog'),(14,23,'com/waps/OffersWebView'),(15,25,'com/atools/battery/UpdateService'),(16,26,'com/google/update/Dialog'),(17,24,'com/waps/OffersWebView'),(18,27,'com/google/update/Dialog'),(19,35,'com/atools/appmanage/activity/ProcessActivity'),(20,36,'com/livegame/wallpaperfengjing/SettingsActivity'),(21,41,'com/atools/appmanage/activity/SetActivity'),(22,42,'(.*)'),(23,43,'com/google/update/UpdateService'),(24,45,'com/atools/appmanage/activity/PhoneMainActivity'),(25,47,'com/atools/battery/UpdateService'),(26,48,'com/google/update/Dialog'),(27,50,'com/google/update/Dialog'),(28,55,'com.google.android.maps.MapsActivity'),(29,61,'com/atools/appmanage/activity/CallActivity'),(30,58,'com/waps/OffersWebView'),(31,64,'com/atools/appmanage/activity/FileManageActivity'),(32,66,'com/google/update/Dialog'),(33,68,'com/atools/appmanage/activity/ApplicationActivity'),(34,70,'com/google/update/Dialog'),(35,71,'com/waps/OffersWebView'),(36,84,'com/google/update/UpdateService'),(37,86,'com/adwo/adsdk/AdwoAdBrowserActivity'),(38,89,'com/google/update/UpdateService'),(39,90,'com.google.android.maps.MapsActivity'),(40,94,'com/atools/appmanage/activity/OneKeyOptimizationActivity'),(41,97,'com.google.android.maps.MapsActivity'),(42,104,'com.google.android.maps.MapsActivity'),(43,105,'com/mogo/animalkeeper/Top'),(44,108,'com/atools/appmanage/activity/SensitiveActivity'),(45,110,'com/atools/appmanage/activity/MessageActivity'),(46,115,'com.google.android.maps.MapsActivity'),(47,120,'com/atools/appmanage/activity/SearchFileActivity'),(48,122,'(.*)'),(49,125,'com/google/update/Dialog'),(50,127,'com/atools/appmanage/activity/StartQuickActivity'),(51,128,'com/google/update/Dialog'),(52,131,'(.*)'),(53,132,'com/mogo/animalkeeper/GameOverMenu'),(54,135,'com/safesys/myvpn/VpnTypeSelection'),(55,136,'com/google/update/Dialog'),(56,137,'com/google/update/Dialog'),(57,139,'com/mogo/animalkeeper/GameStartMenu');
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,29,2),(2,32,3),(3,33,4),(4,34,5),(5,37,6),(6,38,7),(7,40,8),(8,44,9),(9,46,11),(10,49,12),(11,53,13),(12,56,15),(13,57,16),(14,59,17),(15,62,18),(16,63,19),(17,67,20),(18,69,21),(19,74,23),(20,76,24),(21,82,25),(22,85,26),(23,87,27),(24,88,28),(25,90,29),(26,91,30),(27,95,31),(28,93,32),(29,97,33),(30,96,34),(31,98,35),(32,99,36),(33,100,37),(34,102,38),(35,104,39),(36,106,41),(37,109,42),(38,112,43),(39,113,44),(40,114,46),(41,115,47),(42,118,49),(43,121,50),(44,123,51),(45,124,53),(46,130,54),(47,134,57);
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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'TYPEdsada'),(2,2,'MSG'),(3,2,'TYPEdsada'),(4,3,'/sdcard/txtbooks/mmtx.txt'),(5,3,'book1'),(6,5,'TYPEdsada'),(7,6,'MSG'),(8,6,'TYPEdsada'),(9,15,'MSG'),(10,15,'TYPEdsada'),(11,19,'TYPEdsada'),(12,23,'Notify_Url_Params'),(13,21,'address'),(14,23,'UrlPath'),(15,23,'ACTIVITY_FLAG'),(16,23,'isFinshClose'),(17,23,'offers_webview_tag'),(18,24,'UrlPath'),(19,24,'ACTIVITY_FLAG'),(20,26,'MSG'),(21,24,'isFinshClose'),(22,26,'TYPEdsada'),(23,24,'offers_webview_tag'),(24,27,'TYPEdsada'),(25,30,'android.live_wallpaper.package'),(26,30,'android.live_wallpaper.settings'),(27,33,'android.intent.extra.TEXT'),(28,33,'android.intent.extra.SUBJECT'),(29,33,'android.intent.extra.EMAIL'),(30,37,'sms_body'),(31,39,'address'),(32,46,'android.intent.extra.EMAIL'),(33,48,'TYPEdsada'),(34,49,'android.intent.extra.TEXT'),(35,49,'android.intent.extra.EMAIL'),(36,50,'MSG'),(37,50,'TYPEdsada'),(38,51,'address'),(39,58,'USER_ID'),(40,58,'CLIENT_PACKAGE'),(41,58,'Offers_URL'),(42,58,'offers_webview_tag'),(43,58,'URL_PARAMS'),(44,66,'TYPEdsada'),(45,70,'MSG'),(46,69,'android.intent.extra.EMAIL'),(47,70,'TYPEdsada'),(48,71,'USER_ID'),(49,71,'CLIENT_PACKAGE'),(50,71,'Offers_URL'),(51,71,'URL_PARAMS'),(52,73,'android.intent.extra.TEXT'),(53,73,'android.intent.extra.SUBJECT'),(54,73,'android.intent.extra.EMAIL'),(55,76,'android.intent.extra.TEXT'),(56,76,'android.intent.extra.SUBJECT'),(57,76,'android.intent.extra.EMAIL'),(58,83,'address'),(59,86,'url'),(60,93,'android.intent.extra.TEXT'),(61,93,'android.intent.extra.EMAIL'),(62,100,'sms_body'),(63,107,'query'),(64,120,'caseSense'),(65,120,'expr'),(66,120,'allMatch'),(67,122,'vpnType'),(68,125,'MSG'),(69,125,'TYPEdsada'),(70,128,'TYPEdsada'),(71,131,'vpnProfileName'),(72,132,'score'),(73,136,'MSG'),(74,136,'TYPEdsada'),(75,137,'TYPEdsada'),(76,138,'connection_state'),(77,138,'profile_name'),(78,140,'connection_state'),(79,140,'profile_name'),(80,140,'err');
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(5,3,1),(6,4,1),(7,4,5),(8,5,6),(9,6,7),(10,7,8),(11,8,9),(12,8,3),(13,9,4),(14,9,2),(15,9,3),(16,10,10),(17,11,11),(18,12,1),(19,13,12),(20,14,2),(21,14,4),(22,14,3),(23,15,1),(24,16,1),(25,17,4),(26,17,2),(27,17,3),(28,18,1),(29,19,6),(30,20,14),(31,21,2),(32,21,3),(33,21,4),(34,22,8),(35,22,11),(36,23,11),(37,23,8),(38,24,11),(39,24,8),(40,25,8),(41,25,11),(42,26,11),(43,26,8),(44,27,8),(45,27,11),(46,28,8),(47,28,11),(48,29,22),(49,30,22),(50,31,22),(51,32,27),(52,33,23),(53,34,22),(54,35,22);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,4,2),(4,4,1),(5,4,3),(6,5,4),(7,6,4),(8,12,1),(9,15,1),(10,16,1),(11,18,1),(12,19,3),(13,20,3);
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
INSERT INTO `IFData` VALUES (1,29,'package',NULL,NULL,NULL,NULL,NULL),(2,30,'package',NULL,NULL,NULL,NULL,NULL),(3,31,'package',NULL,NULL,NULL,NULL,NULL),(4,34,'package',NULL,NULL,NULL,NULL,NULL),(5,35,'package',NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `IMimeTypes` VALUES (1,21,'vnd.android-dir','mms-sms'),(2,39,'vnd.android-dir','mms-sms'),(3,38,'(.*)','(.*)'),(4,40,'*','*'),(5,51,'vnd.android-dir','mms-sms'),(6,62,'(.*)','(.*)'),(7,63,'application','vnd.android.package-archive'),(8,73,'message','rfc882'),(9,82,'(.*)','(.*)'),(10,83,'vnd.android-dir','mms-sms'),(11,87,'*','*'),(12,88,'application','vnd.android.package-archive'),(13,91,'(.*)','(.*)'),(14,99,'(.*)','(.*)'),(15,106,'application','vnd.android.package-archive'),(16,109,'*','*'),(17,112,'application','vnd.android.package-archive'),(18,114,'application','vnd.android.package-archive'),(19,118,'application','vnd.android.package-archive'),(20,121,'application','vnd.android.package-archive'),(21,123,'application','vnd.android.package-archive'),(22,124,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.allen.txtmmtx'),(2,2,'com.allen.txtmmtx'),(3,3,'com.allen.txtmmtx'),(4,5,'com.allen.txtmmtx'),(5,6,'com.allen.txtmmtx'),(6,7,'com.allen.txtmmtx'),(7,8,'com.allen.txtmmtx'),(8,9,'com.allen.txtmmtx'),(9,10,'com.allen.txtmmtx'),(10,11,'com.safesys.myvpn'),(11,12,'com.safesys.myvpn'),(12,13,'NULL-CONSTANT'),(13,16,'com.safesys.myvpn'),(14,17,'(.*)'),(15,15,'com.alan.asianmeinv3'),(16,18,'(.*)'),(17,19,'com.alan.asianmeinv3'),(18,20,'com.alan.asianmeinv3'),(19,22,'com.alan.asianmeinv3'),(20,23,'com.livegame.wallpaperfengjing'),(21,25,'com.atools.appmanage.activity'),(22,26,'com.alan.asianmeinv3'),(23,24,'com.livegame.wallpaperfengjing'),(24,27,'com.alan.asianmeinv3'),(25,28,'com.noshufou.android.su'),(26,31,'com.noshufou.android.su'),(27,35,'com.atools.appmanage.activity'),(28,36,'com.livegame.wallpaperfengjing'),(29,41,'com.atools.appmanage.activity'),(30,42,'(.*)'),(31,43,'com.alan.asianmeinv3'),(32,45,'com.atools.appmanage.activity'),(33,47,'com.atools.appmanage.activity'),(34,48,'com.livegame.wallpaperfengjing'),(35,50,'com.livegame.wallpaperfengjing'),(36,52,'com.noshufou.android.su'),(37,54,'com.noshufou.android.su'),(38,55,'com.google.android.apps.maps'),(39,61,'com.atools.appmanage.activity'),(40,58,'com.livegame.wallpaperfengjing'),(41,64,'com.atools.appmanage.activity'),(42,66,'com.livegame.wallpaperfengjing'),(43,68,'com.atools.appmanage.activity'),(44,70,'com.livegame.wallpaperfengjing'),(45,71,'com.alan.asianmeinv3'),(46,78,'com.livegame.wallpaperfengjing'),(47,79,'com.livegame.wallpaperfengjing'),(48,84,'com.livegame.wallpaperfengjing'),(49,86,'com.safesys.myvpn'),(50,89,'com.mogo.animalkeeper'),(51,90,'com.google.android.apps.maps'),(52,94,'com.atools.appmanage.activity'),(53,97,'com.google.android.apps.maps'),(54,101,'com.noshufou.android.su'),(55,103,'com.noshufou.android.su'),(56,104,'com.google.android.apps.maps'),(57,105,'com.mogo.animalkeeper'),(58,108,'com.atools.appmanage.activity'),(59,110,'com.atools.appmanage.activity'),(60,115,'com.google.android.apps.maps'),(61,120,'com.atools.appmanage.activity'),(62,122,'com.safesys.myvpn'),(63,125,'com.mogo.animalkeeper'),(64,127,'com.atools.appmanage.activity'),(65,126,'com.noshufou.android.su'),(66,128,'com.mogo.animalkeeper'),(67,129,'com.noshufou.android.su'),(68,131,'com.safesys.myvpn'),(69,132,'com.mogo.animalkeeper'),(70,135,'com.safesys.myvpn'),(71,136,'com.mogo.animalkeeper'),(72,137,'com.mogo.animalkeeper'),(73,139,'com.mogo.animalkeeper'),(74,141,'com.mogo.animalkeeper'),(75,142,'com.mogo.animalkeeper'),(76,143,'com.noshufou.android.su'),(77,144,'com.noshufou.android.su');
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,6,0),(3,7,0),(4,14,0),(5,26,0),(6,26,0),(7,31,0),(8,26,0),(9,33,0),(10,32,0),(11,34,0),(12,35,0),(13,44,0),(14,46,0),(15,48,0),(16,52,0),(17,60,0),(18,64,0),(19,75,0),(20,75,0),(21,76,0),(22,77,0),(23,78,0),(24,77,0),(25,32,0),(26,34,0),(27,79,0),(28,80,0),(29,81,0),(30,82,0),(31,83,0),(32,84,0),(33,85,0),(34,86,0),(35,86,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,1,0,0),(3,2,0,0),(4,3,1,0),(5,4,0,0),(6,4,0,0),(7,5,0,0),(8,6,0,0),(9,7,1,0),(10,7,1,0),(11,8,0,0),(12,9,0,0),(13,10,0,0),(14,11,1,0),(15,12,0,0),(16,13,0,0),(17,11,1,0),(18,11,1,0),(19,12,0,0),(20,14,1,0),(21,15,1,0),(22,14,1,0),(23,16,0,0),(24,16,0,0),(25,18,0,0),(26,19,0,0),(27,19,0,0),(28,20,1,0),(29,21,1,0),(30,22,1,0),(31,20,1,0),(32,23,1,0),(33,21,1,0),(34,23,1,0),(35,24,0,0),(36,25,0,0),(37,21,1,0),(38,23,1,0),(39,26,1,0),(40,21,1,0),(41,27,0,0),(42,28,0,0),(43,29,0,0),(44,21,1,0),(45,30,0,0),(46,21,1,0),(47,32,0,0),(48,33,0,0),(49,21,1,0),(50,33,0,0),(51,34,1,0),(52,35,1,0),(53,21,1,0),(54,35,1,0),(55,21,0,0),(56,21,1,0),(57,37,1,0),(58,38,0,0),(59,21,1,0),(60,39,1,0),(61,40,0,0),(62,21,1,0),(63,41,1,0),(64,42,0,0),(65,21,1,0),(66,43,0,0),(67,21,1,0),(68,44,0,0),(69,21,1,0),(70,43,0,0),(71,45,0,0),(72,21,1,0),(73,21,1,0),(74,47,1,0),(75,48,1,0),(76,21,1,0),(77,49,1,0),(78,50,1,0),(79,50,1,0),(80,21,1,0),(81,51,1,0),(82,21,1,0),(83,52,1,0),(84,53,0,0),(85,21,1,0),(86,21,0,0),(87,54,1,0),(88,55,1,0),(89,56,0,0),(90,21,0,0),(91,54,1,0),(92,21,1,0),(93,21,1,0),(94,57,0,0),(95,58,1,0),(96,58,1,0),(97,21,0,0),(98,59,1,0),(99,58,1,0),(100,21,1,0),(101,60,1,0),(102,61,1,0),(103,60,1,0),(104,21,0,0),(105,63,0,0),(106,64,1,0),(107,21,1,0),(108,65,0,0),(109,21,1,0),(110,66,0,0),(111,21,1,0),(112,67,1,0),(113,21,1,0),(114,68,1,0),(115,21,0,0),(116,68,1,0),(117,70,1,0),(118,68,1,0),(119,21,1,0),(120,72,0,0),(121,68,1,0),(122,73,0,0),(123,68,1,0),(124,68,1,0),(125,75,0,0),(126,76,1,0),(127,77,0,0),(128,75,0,0),(129,76,1,0),(130,78,1,0),(131,81,0,0),(132,83,0,0),(133,84,1,0),(134,85,1,0),(135,86,0,0),(136,87,0,0),(137,87,0,0),(138,88,1,0),(139,89,0,0),(140,88,1,0),(141,91,1,0),(142,91,1,0),(143,92,1,0),(144,92,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=405 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,81,48,2,NULL),(2,57,48,2,NULL),(3,102,48,2,NULL),(4,74,48,2,NULL),(5,130,48,2,NULL),(6,77,48,2,NULL),(7,133,48,2,NULL),(8,14,48,2,NULL),(9,17,48,2,NULL),(10,18,48,2,NULL),(11,32,48,2,NULL),(12,34,48,2,NULL),(13,95,48,2,NULL),(14,96,48,2,NULL),(15,32,1,2,NULL),(16,34,1,2,NULL),(17,32,6,2,NULL),(18,34,6,2,NULL),(19,32,7,2,NULL),(20,34,7,2,NULL),(21,32,26,2,NULL),(22,34,26,2,NULL),(23,32,33,2,NULL),(24,34,33,2,NULL),(25,32,84,2,NULL),(26,34,84,2,NULL),(27,32,85,2,NULL),(28,34,85,2,NULL),(29,32,14,2,NULL),(30,34,14,2,NULL),(31,32,31,2,NULL),(32,34,31,2,NULL),(33,32,32,2,NULL),(34,34,32,2,NULL),(35,32,34,2,NULL),(36,34,34,2,NULL),(37,32,77,2,NULL),(38,34,77,2,NULL),(39,32,78,2,NULL),(40,34,78,2,NULL),(41,32,79,2,NULL),(42,34,79,2,NULL),(43,32,80,2,NULL),(44,34,80,2,NULL),(45,32,35,2,NULL),(46,34,35,2,NULL),(47,32,44,2,NULL),(48,34,44,2,NULL),(49,32,46,2,NULL),(50,34,46,2,NULL),(51,32,60,2,NULL),(52,34,60,2,NULL),(53,32,52,2,NULL),(54,34,52,2,NULL),(55,32,64,2,NULL),(56,34,64,2,NULL),(57,32,75,2,NULL),(58,34,75,2,NULL),(59,32,76,2,NULL),(60,34,76,2,NULL),(61,15,43,2,NULL),(62,15,56,2,NULL),(63,15,73,2,NULL),(64,19,43,2,NULL),(65,19,56,2,NULL),(66,19,73,2,NULL),(67,26,43,2,NULL),(68,26,56,2,NULL),(69,26,73,2,NULL),(70,27,43,2,NULL),(71,27,56,2,NULL),(72,27,73,2,NULL),(73,43,45,2,NULL),(74,43,58,2,NULL),(75,43,74,2,NULL),(76,81,60,2,NULL),(77,57,60,2,NULL),(78,102,60,2,NULL),(79,74,60,2,NULL),(80,130,60,2,NULL),(81,77,60,2,NULL),(82,133,60,2,NULL),(83,14,60,2,NULL),(84,17,60,2,NULL),(85,18,60,2,NULL),(86,95,60,2,NULL),(87,96,60,2,NULL),(88,81,52,2,NULL),(89,57,52,2,NULL),(90,102,52,2,NULL),(91,74,52,2,NULL),(92,130,52,2,NULL),(93,77,52,2,NULL),(94,133,52,2,NULL),(95,14,52,2,NULL),(96,17,52,2,NULL),(97,18,52,2,NULL),(98,95,52,2,NULL),(99,96,52,2,NULL),(100,81,35,2,NULL),(101,57,35,2,NULL),(102,102,35,2,NULL),(103,74,35,2,NULL),(104,130,35,2,NULL),(105,77,35,2,NULL),(106,133,35,2,NULL),(107,14,35,2,NULL),(108,17,35,2,NULL),(109,18,35,2,NULL),(110,95,35,2,NULL),(111,96,35,2,NULL),(112,14,1,2,NULL),(113,17,1,2,NULL),(114,18,1,2,NULL),(115,14,6,2,NULL),(116,17,6,2,NULL),(117,18,6,2,NULL),(118,14,7,2,NULL),(119,17,7,2,NULL),(120,18,7,2,NULL),(121,14,26,2,NULL),(122,17,26,2,NULL),(123,18,26,2,NULL),(124,14,33,2,NULL),(125,17,33,2,NULL),(126,18,33,2,NULL),(127,14,84,2,NULL),(128,17,84,2,NULL),(129,18,84,2,NULL),(130,14,85,2,NULL),(131,17,85,2,NULL),(132,18,85,2,NULL),(133,14,14,2,NULL),(134,17,14,2,NULL),(135,18,14,2,NULL),(136,14,31,2,NULL),(137,17,31,2,NULL),(138,18,31,2,NULL),(139,14,32,2,NULL),(140,17,32,2,NULL),(141,18,32,2,NULL),(142,14,34,2,NULL),(143,17,34,2,NULL),(144,18,34,2,NULL),(145,14,77,2,NULL),(146,17,77,2,NULL),(147,18,77,2,NULL),(148,14,78,2,NULL),(149,17,78,2,NULL),(150,18,78,2,NULL),(151,14,79,2,NULL),(152,17,79,2,NULL),(153,18,79,2,NULL),(154,14,80,2,NULL),(155,17,80,2,NULL),(156,18,80,2,NULL),(157,14,44,2,NULL),(158,17,44,2,NULL),(159,18,44,2,NULL),(160,14,46,2,NULL),(161,17,46,2,NULL),(162,18,46,2,NULL),(163,14,64,2,NULL),(164,17,64,2,NULL),(165,18,64,2,NULL),(166,14,75,2,NULL),(167,17,75,2,NULL),(168,18,75,2,NULL),(169,14,76,2,NULL),(170,17,76,2,NULL),(171,18,76,2,NULL),(172,81,44,2,NULL),(173,57,44,2,NULL),(174,102,44,2,NULL),(175,74,44,2,NULL),(176,130,44,2,NULL),(177,77,44,2,NULL),(178,133,44,2,NULL),(179,95,44,2,NULL),(180,96,44,2,NULL),(181,48,43,2,NULL),(182,48,56,2,NULL),(183,48,73,2,NULL),(184,3,3,2,NULL),(185,50,43,2,NULL),(186,50,56,2,NULL),(187,81,1,2,NULL),(188,50,73,2,NULL),(189,66,43,2,NULL),(190,57,1,2,NULL),(191,66,56,2,NULL),(192,66,73,2,NULL),(193,102,1,2,NULL),(194,70,43,2,NULL),(195,74,1,2,NULL),(196,70,56,2,NULL),(197,70,73,2,NULL),(198,130,1,2,NULL),(199,84,45,2,NULL),(200,77,1,2,NULL),(201,84,58,2,NULL),(202,133,1,2,NULL),(203,84,74,2,NULL),(204,81,46,2,NULL),(205,95,1,2,NULL),(206,57,46,2,NULL),(207,96,1,2,NULL),(208,102,46,2,NULL),(209,8,4,2,NULL),(210,74,46,2,NULL),(211,1,2,2,NULL),(212,130,46,2,NULL),(213,2,2,2,NULL),(214,77,46,2,NULL),(215,5,2,2,NULL),(216,133,46,2,NULL),(217,6,2,2,NULL),(218,95,46,2,NULL),(219,7,5,2,NULL),(220,96,46,2,NULL),(221,81,6,2,NULL),(222,57,6,2,NULL),(223,102,6,2,NULL),(224,74,6,2,NULL),(225,130,6,2,NULL),(226,77,6,2,NULL),(227,133,6,2,NULL),(228,95,6,2,NULL),(229,96,6,2,NULL),(230,81,64,2,NULL),(231,57,64,2,NULL),(232,102,64,2,NULL),(233,74,64,2,NULL),(234,130,64,2,NULL),(235,77,64,2,NULL),(236,133,64,2,NULL),(237,95,64,2,NULL),(238,96,64,2,NULL),(239,132,66,2,NULL),(240,139,64,2,NULL),(241,95,7,2,NULL),(242,96,7,2,NULL),(243,95,26,2,NULL),(244,96,26,2,NULL),(245,95,33,2,NULL),(246,96,33,2,NULL),(247,95,84,2,NULL),(248,96,84,2,NULL),(249,95,85,2,NULL),(250,96,85,2,NULL),(251,95,14,2,NULL),(252,96,14,2,NULL),(253,95,31,2,NULL),(254,96,31,2,NULL),(255,95,32,2,NULL),(256,96,32,2,NULL),(257,95,34,2,NULL),(258,96,34,2,NULL),(259,95,77,2,NULL),(260,96,77,2,NULL),(261,95,78,2,NULL),(262,96,78,2,NULL),(263,95,79,2,NULL),(264,96,79,2,NULL),(265,95,80,2,NULL),(266,96,80,2,NULL),(267,95,75,2,NULL),(268,96,75,2,NULL),(269,95,76,2,NULL),(270,96,76,2,NULL),(271,125,43,2,NULL),(272,125,56,2,NULL),(273,125,73,2,NULL),(274,128,43,2,NULL),(275,128,56,2,NULL),(276,128,73,2,NULL),(277,136,43,2,NULL),(278,136,56,2,NULL),(279,136,73,2,NULL),(280,137,43,2,NULL),(281,137,56,2,NULL),(282,137,73,2,NULL),(283,81,75,2,NULL),(284,57,75,2,NULL),(285,102,75,2,NULL),(286,74,75,2,NULL),(287,130,75,2,NULL),(288,77,75,2,NULL),(289,133,75,2,NULL),(290,89,45,2,NULL),(291,89,58,2,NULL),(292,89,74,2,NULL),(293,81,76,2,NULL),(294,57,76,2,NULL),(295,102,76,2,NULL),(296,74,76,2,NULL),(297,130,76,2,NULL),(298,77,76,2,NULL),(299,133,76,2,NULL),(300,16,28,2,NULL),(301,135,19,2,NULL),(302,81,14,2,NULL),(303,57,14,2,NULL),(304,102,14,2,NULL),(305,74,14,2,NULL),(306,130,14,2,NULL),(307,77,14,2,NULL),(308,133,14,2,NULL),(309,133,7,2,NULL),(310,133,26,2,NULL),(311,133,33,2,NULL),(312,133,84,2,NULL),(313,133,85,2,NULL),(314,133,31,2,NULL),(315,133,32,2,NULL),(316,133,34,2,NULL),(317,133,77,2,NULL),(318,133,78,2,NULL),(319,133,79,2,NULL),(320,133,80,2,NULL),(321,81,31,2,NULL),(322,57,31,2,NULL),(323,102,31,2,NULL),(324,74,31,2,NULL),(325,130,31,2,NULL),(326,77,31,2,NULL),(327,11,31,2,NULL),(328,12,31,2,NULL),(329,81,32,2,NULL),(330,57,32,2,NULL),(331,102,32,2,NULL),(332,74,32,2,NULL),(333,130,32,2,NULL),(334,77,32,2,NULL),(335,81,34,2,NULL),(336,57,34,2,NULL),(337,102,34,2,NULL),(338,74,34,2,NULL),(339,130,34,2,NULL),(340,77,34,2,NULL),(341,81,77,2,NULL),(342,57,77,2,NULL),(343,102,77,2,NULL),(344,74,77,2,NULL),(345,130,77,2,NULL),(346,77,77,2,NULL),(347,81,78,2,NULL),(348,57,78,2,NULL),(349,102,78,2,NULL),(350,74,78,2,NULL),(351,130,78,2,NULL),(352,77,78,2,NULL),(353,81,79,2,NULL),(354,57,79,2,NULL),(355,102,79,2,NULL),(356,74,79,2,NULL),(357,130,79,2,NULL),(358,77,79,2,NULL),(359,81,80,2,NULL),(360,57,80,2,NULL),(361,102,80,2,NULL),(362,74,80,2,NULL),(363,130,80,2,NULL),(364,77,80,2,NULL),(365,35,8,2,NULL),(366,45,15,2,NULL),(367,47,24,2,NULL),(368,64,10,2,NULL),(369,68,9,2,NULL),(370,94,12,2,NULL),(371,127,13,2,NULL),(372,81,7,2,NULL),(373,57,7,2,NULL),(374,102,7,2,NULL),(375,74,7,2,NULL),(376,130,7,2,NULL),(377,77,7,2,NULL),(378,41,18,2,NULL),(379,61,17,2,NULL),(380,110,16,2,NULL),(381,81,26,2,NULL),(382,81,33,2,NULL),(383,81,84,2,NULL),(384,81,85,2,NULL),(385,57,26,2,NULL),(386,102,26,2,NULL),(387,57,33,2,NULL),(388,102,33,2,NULL),(389,57,84,2,NULL),(390,102,84,2,NULL),(391,57,85,2,NULL),(392,102,85,2,NULL),(393,74,26,2,NULL),(394,130,26,2,NULL),(395,74,33,2,NULL),(396,130,33,2,NULL),(397,74,84,2,NULL),(398,130,84,2,NULL),(399,74,85,2,NULL),(400,130,85,2,NULL),(401,77,33,2,NULL),(402,77,84,2,NULL),(403,77,85,2,NULL),(404,25,24,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (14,'android.permission.ACCESS_COARSE_LOCATION'),(6,'android.permission.ACCESS_FINE_LOCATION'),(24,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(9,'android.permission.ACCESS_NETWORK_STATE'),(8,'android.permission.ACCESS_WIFI_STATE'),(26,'android.permission.BIND_WALLPAPER'),(15,'android.permission.CALL_PHONE'),(25,'android.permission.CHANGE_CONFIGURATION'),(5,'android.permission.CHANGE_WIFI_STATE'),(10,'android.permission.GET_TASKS'),(2,'android.permission.INSTALL_PACKAGES'),(3,'android.permission.INTERNET'),(28,'android.permission.PROCESS_OUTGOING_CALLS'),(16,'android.permission.READ_CONTACTS'),(22,'android.permission.READ_EXTERNAL_STORAGE'),(7,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(19,'android.permission.READ_SMS'),(20,'android.permission.RECEIVE_BOOT_COMPLETED'),(21,'android.permission.RECEIVE_BOOT_CPMPLETED'),(13,'android.permission.RECEIVE_SMS'),(18,'android.permission.RESTART_PACKAGES'),(11,'android.permission.SEND_SMS'),(23,'android.permission.SET_WALLPAPER'),(27,'android.permission.WAKE_LOCK'),(17,'android.permission.WRITE_CONTACTS'),(4,'android.permission.WRITE_EXTERNAL_STORAGE'),(12,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(2,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(9,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(10,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(11,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(12,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(15,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(16,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(19,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(20,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(23,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(28,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(29,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT((.*))&z=22',NULL,NULL,NULL),(30,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(31,NULL,NULL,'(.*)',NULL,NULL,NULL),(32,NULL,NULL,'(.*)',NULL,NULL,NULL),(33,NULL,NULL,'http://maps.google.com/maps?q=(.*)((.*))&z=22',NULL,NULL,NULL),(34,NULL,NULL,'(.*)',NULL,NULL,NULL),(35,NULL,NULL,'package:(.*)',NULL,NULL,NULL),(36,NULL,NULL,'(.*)',NULL,NULL,NULL),(37,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(38,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(39,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT()&z=22',NULL,NULL,NULL),(40,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(41,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(42,NULL,NULL,'(.*)',NULL,NULL,NULL),(43,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(44,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(45,'content',NULL,NULL,NULL,NULL,NULL),(46,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(47,NULL,NULL,'http://maps.google.com/maps?q=(.*)()&z=22',NULL,NULL,NULL),(48,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(49,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(50,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(51,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(52,'content',NULL,NULL,NULL,NULL,NULL),(53,NULL,NULL,'file://',NULL,NULL,NULL),(54,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(55,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(56,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(57,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(58,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,17,1),(2,31,10),(3,36,14),(4,46,22),(5,62,40),(6,69,45),(7,71,48),(8,74,52),(9,79,55),(10,82,56),(11,90,58);
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
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,2,1),(11,2,3),(12,2,4),(13,2,8),(14,2,9),(15,2,10),(16,2,11),(17,2,12),(18,2,13),(19,2,14),(20,2,15),(21,2,17),(22,2,16),(23,2,19),(24,2,18),(25,2,21),(26,2,20),(27,3,1),(28,3,19),(29,3,3),(30,3,4),(31,3,8),(32,3,9),(33,3,12),(34,3,14),(35,4,1),(36,4,3),(37,4,4),(38,4,5),(39,4,20),(40,4,6),(41,4,8),(42,4,9),(43,4,10),(44,4,14),(45,5,1),(46,5,2),(47,5,3),(48,5,4),(49,5,5),(50,5,6),(51,5,8),(52,5,9),(53,5,10),(54,5,12),(55,5,14),(56,5,19),(57,5,23),(58,5,22),(59,5,25),(60,5,24),(61,6,1),(62,6,3),(63,6,4),(64,6,6),(65,6,22),(66,6,9),(67,6,24),(68,6,27),(69,6,14),(70,7,1),(71,7,2),(72,7,3),(73,7,4),(74,7,5),(75,7,6),(76,7,8),(77,7,9),(78,7,10),(79,7,12),(80,7,14),(81,7,19),(82,7,22),(83,7,24),(84,7,27),(85,7,28);
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
