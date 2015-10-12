-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_150
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (17,'(.*)'),(7,'android.appwidget.action.APPWIDGET_UPDATE'),(5,'android.intent.action.BATTERY_CHANGED_ACTION'),(4,'android.intent.action.BOOT_COMPLETED'),(11,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(14,'android.intent.action.PACKAGE_ADDED'),(12,'android.intent.action.SEND'),(13,'android.intent.action.SENDTO'),(3,'android.intent.action.SIG_STR'),(10,'android.intent.action.VIEW'),(16,'android.intent.action.WEB_SEARCH'),(2,'android.net.vpn.SETTINGS'),(9,'android.settings.APPLICATION_SETTINGS'),(15,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(6,'myvpn.toggleVpnConnectionAction'),(8,'vpn.connectivity');
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
INSERT INTO `Applications` VALUES (1,'com.atools.setinstalllocation',5),(2,'com.safesys.myvpn',8),(3,'com.safetest.tank',6),(4,'com.safesys.myvpn2',15),(5,'com.gp.solitaire',461),(6,'com.alan.asianmeinv10',1),(7,'com.gp.netscramblefull',7);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (6,'android.intent.category.BROWSABLE'),(3,'android.intent.category.DEFAULT'),(7,'android.intent.category.HOME'),(5,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(4,'android.intent.category.PREFERENCE'),(2,'com.android.settings.SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.atools.setinstalllocation.ui.MainActivity'),(2,1,'com.atools.setinstalllocation.ui.USBDebuggingActivity'),(3,1,'com.atools.setinstalllocation.ui.ConfigActivity'),(4,1,'com.atools.setinstalllocation.UpdateCheck'),(5,2,'com.safesys.myvpn.VpnSettings'),(6,2,'com.safesys.myvpn.VpnTypeSelection'),(7,3,'com.safetest.tank.main'),(8,2,'com.safesys.myvpn.editor.PptpProfileEditor'),(9,4,'com.safesys.myvpn2.VpnSettings'),(10,2,'com.safesys.myvpn.editor.L2tpProfileEditor'),(11,3,'com.safetest.tank.SelectLevel'),(12,2,'com.safesys.myvpn.editor.L2tpIpsecPskProfileEditor'),(13,4,'com.safesys.myvpn2.VpnTypeSelection'),(14,3,'com.safetest.tank.gameActivity'),(15,2,'com.safesys.myvpn.ToggleVpn'),(16,4,'com.safesys.myvpn2.editor.PptpProfileEditor'),(17,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(18,2,'com.safesys.myvpn.Settings'),(19,4,'com.safesys.myvpn2.editor.L2tpProfileEditor'),(20,3,'com.safetest.tank.ShowTips'),(21,2,'com.adwo.adsdk.AdwoSplashAdActivity'),(22,4,'com.safesys.myvpn2.editor.L2tpIpsecPskProfileEditor'),(23,3,'com.safetest.tank.UpdateService'),(24,2,'com.adwo.adsdk.AdwoAdBrowserActivity'),(25,4,'com.safesys.myvpn2.ToggleVpn'),(26,3,'com.safetest.tank.Receiver'),(27,2,'com.safesys.myvpn.VpnConnectorService'),(28,4,'com.safesys.myvpn2.Settings'),(29,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(30,2,'com.safesys.myvpn.VpnAppWidgetProvider'),(31,4,'com.adchina.android.ads.views.FullScreenAdActivity'),(32,4,'com.safesys.myvpn2.VpnConnectorService'),(33,2,'com.safesys.myvpn.KeepAlive'),(34,4,'com.safesys.myvpn2.VpnAppWidgetProvider'),(35,4,'com.safesys.myvpn2.KeepAlive'),(36,5,'com.gp.solitaire.Solitaire'),(37,5,'com.google.update.Dialog'),(38,5,'cn.domob.android.ads.DomobActivity'),(39,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(40,5,'com.google.update.UpdateService'),(41,5,'com.google.update.Receiver'),(42,1,'com.atools.setinstalllocation.ui.USBDebuggingActivity$5'),(43,1,'com.atools.setinstalllocation.ui.MainActivity$9'),(44,1,'com.atools.setinstalllocation.ui.ConfigActivity$1'),(45,1,'com.atools.setinstalllocation.utils.Utils'),(46,6,'com.alan.asianmeinv10.PaperCollection'),(47,6,'com.alan.asianmeinv10.PictureGrid'),(48,6,'com.google.ads.AdActivity'),(49,6,'com.vpon.adon.android.WebInApp'),(50,6,'com.adwo.adsdk.AdwoSplashAdActivity'),(51,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(52,6,'com.waps.OffersWebView'),(53,6,'com.google.update.Dialog'),(54,6,'com.google.update.UpdateService'),(55,6,'com.google.update.Receiver'),(56,7,'com.gp.netscramblefull.NetScramble'),(57,7,'com.gp.netscramblefull.ScoreList'),(58,7,'com.gp.netscramblefull.Help'),(59,7,'com.google.update.Dialog'),(60,7,'cn.domob.android.ads.DomobActivity'),(61,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(62,7,'com.waps.OffersWebView'),(63,7,'com.google.update.UpdateService'),(64,7,'com.google.update.Receiver'),(65,3,'com.safetest.tank.ShowTips$1'),(66,3,'com.adwo.adsdk.g'),(67,4,'com.adwo.adsdk.g'),(68,2,'com.adwo.adsdk.g'),(69,6,'com.google.update.UpdateService$MyThread'),(70,6,'com.waps.m'),(71,6,'com.ju6.a'),(72,6,'com.waps.k'),(73,5,'cn.domob.android.ads.DomobAdManager'),(74,5,'com.google.update.Dialog$2'),(75,5,'com.google.update.UpdateService$AA'),(76,6,'com.waps.AppConnect'),(77,5,'cn.domob.android.ads.i'),(78,5,'cn.domob.android.ads.i$6'),(79,6,'com.google.update.Dialog$2'),(80,6,'com.google.update.Dialog$1'),(81,5,'cn.domob.android.ads.DomobActionReceiver'),(82,5,'cn.domob.android.ads.DomobAdEngine$2'),(83,5,'com.google.update.Dialog$1'),(84,4,'com.safesys.myvpn2.VpnConnectorService$VpnStateReceiver'),(85,4,'com.adwo.adsdk.D'),(86,2,'com.safesys.myvpn.VpnActor'),(87,4,'com.safesys.myvpn2.VpnSettings$8'),(88,4,'android.appwidget.AppWidgetProvider'),(89,4,'com.safesys.myvpn2.VpnSettings$11'),(90,2,'com.safesys.myvpn.VpnSettings$8'),(91,2,'com.safesys.myvpn.VpnConnectorService$VpnStateReceiver'),(92,4,'com.safesys.myvpn2.VpnActor'),(93,2,'com.adwo.adsdk.D'),(94,2,'android.appwidget.AppWidgetProvider'),(95,7,'cn.domob.android.ads.i$6'),(96,7,'com.waps.z'),(97,7,'cn.domob.android.ads.i'),(98,7,'com.waps.o'),(99,7,'com.waps.aa'),(100,7,'cn.domob.android.ads.DomobAdEngine$2'),(101,7,'cn.domob.android.ads.DomobAdManager'),(102,7,'com.google.update.UpdateService$AA'),(103,7,'com.waps.ac'),(104,7,'com.waps.d'),(105,7,'cn.domob.android.ads.DomobActionReceiver'),(106,7,'com.waps.q'),(107,7,'com.google.update.Dialog$2'),(108,7,'com.google.update.Dialog$1');
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
INSERT INTO `ComponentExtras` VALUES (1,4,'MYAD_PID'),(2,17,'url'),(3,17,'overlayTitle'),(4,17,'shouldMakeOverlayTransparent'),(5,20,'MM'),(6,23,'SAFE_START'),(7,17,'transitionTime'),(8,23,'SAFE_PID'),(9,17,'shouldEnableBottomBar'),(10,17,'overlayTransition'),(11,17,'shouldResizeOverlay'),(12,14,'level'),(13,17,'shouldShowBottomBar'),(14,29,'shouldShowBottomBar'),(15,21,'Adwo_PID'),(16,12,'vpnType'),(17,8,'vpnType'),(18,10,'vpnType'),(19,46,'isTestMode'),(20,47,'shouldMakeOverlayTransparent'),(21,48,'URL_PARAMS'),(22,12,'password'),(23,47,'shouldResizeOverlay'),(24,8,'password'),(25,47,'shouldEnableBottomBar'),(26,10,'password'),(27,48,'CLIENT_PACKAGE'),(28,24,'url'),(29,48,'URL'),(30,24,'shouldResizeOverlay'),(31,46,'Adwo_PID'),(32,39,'shouldResizeOverlay'),(33,48,'Offers_URL'),(34,39,'shouldEnableBottomBar'),(35,47,'shouldShowTitlebar'),(36,39,'transitionTime'),(37,39,'overlayTransition'),(38,47,'overlayTransition'),(39,47,'url'),(40,38,'actType'),(41,40,'DOMOB_TEST_MODE'),(42,36,'DOMOB_TEST_MODE'),(43,39,'DOMOB_TEST_MODE'),(44,40,'DOMOB_ALLOW_LOCATION'),(45,36,'DOMOB_ALLOW_LOCATION'),(46,39,'DOMOB_ALLOW_LOCATION'),(47,38,'appName'),(48,39,'shouldShowBottomBar'),(49,45,'adWidth'),(50,44,'action'),(51,47,'shouldShowBottomBar'),(52,48,'USER_ID'),(53,43,'DEVICE_ID'),(54,48,'isFinshClose'),(55,47,'overlayTitle'),(56,40,'ST_START_DELAY'),(57,38,'appId'),(58,39,'url'),(59,44,'params'),(60,43,'APP_ID'),(61,50,'ST_START_DELAY'),(62,37,'TYPEdsada'),(63,37,'MSG'),(64,17,'shouldShowTitlebar'),(65,43,'WAPS_ID'),(66,49,'MSG'),(67,50,'ST_MY_PID'),(68,49,'TYPEdsada'),(69,45,'url'),(70,43,'CLIENT_PACKAGE'),(71,44,'com.google.ads.AdOpener'),(72,47,'transitionTime'),(73,40,'DOMOB_PID'),(74,36,'DOMOB_PID'),(75,39,'DOMOB_PID'),(76,39,'overlayTitle'),(77,39,'shouldMakeOverlayTransparent'),(78,43,'WAPS_PID'),(79,40,'ST_MY_PID'),(80,29,'shouldResizeOverlay'),(81,29,'transitionTime'),(82,39,'shouldShowTitlebar'),(83,29,'shouldMakeOverlayTransparent'),(84,12,'server'),(85,8,'server'),(86,35,'profile_name'),(87,10,'server'),(88,29,'url'),(89,33,'connection_state'),(90,29,'overlayTitle'),(91,21,'isTestMode'),(92,24,'shouldShowBottomBar'),(93,29,'overlayTransition'),(94,12,'dns'),(95,8,'dns'),(96,10,'dns'),(97,24,'overlayTitle'),(98,35,'connection_state'),(99,29,'shouldShowTitlebar'),(100,24,'shouldShowTitlebar'),(101,5,'vpnType'),(102,12,'psk'),(103,10,'psk'),(104,12,'vpnProfileName'),(105,8,'vpnProfileName'),(106,10,'vpnProfileName'),(107,29,'shouldEnableBottomBar'),(108,9,'vpnProfileName'),(109,9,'vpnType'),(110,24,'shouldMakeOverlayTransparent'),(111,24,'transitionTime'),(112,24,'shouldEnableBottomBar'),(113,24,'overlayTransition'),(114,25,'activeVpnState'),(115,15,'activeVpnState'),(116,5,'vpnProfileName'),(117,8,'encrypt'),(118,12,'secretEnabled'),(119,10,'secretEnabled'),(120,33,'profile_name'),(121,12,'name'),(122,8,'name'),(123,10,'name'),(124,12,'secret'),(125,10,'secret'),(126,12,'user'),(127,8,'user'),(128,10,'user'),(129,52,'rootY'),(130,52,'cell (.*),(.*)'),(131,58,'WAPS_ID'),(132,52,'WAPS_ID'),(133,57,'overlayTransition'),(134,52,'focusY'),(135,58,'UrlPath'),(136,57,'shouldResizeOverlay'),(137,52,'clickCount'),(138,58,'CLIENT_PACKAGE'),(139,58,'isFinshClose'),(140,58,'WAPS_PID'),(141,52,'WAPS_PID'),(142,58,'USER_ID'),(143,58,'URL_PARAMS'),(144,57,'url'),(145,56,'appId'),(146,52,'solvedState'),(147,57,'shouldShowBottomBar'),(148,58,'APP_ID'),(149,52,'APP_ID'),(150,59,'DOMOB_ALLOW_LOCATION'),(151,57,'DOMOB_ALLOW_LOCATION'),(152,52,'DOMOB_ALLOW_LOCATION'),(153,58,'URL'),(154,52,'tickInterval'),(155,56,'actType'),(156,54,'(.*)B(.*).expanded'),(157,54,'(.*)T(.*).expanded'),(158,54,'(.*)H(.*).expanded'),(159,54,'expanded'),(160,57,'transitionTime'),(161,55,'TYPEdsada'),(162,58,'Notify_Id'),(163,52,'gridWidth'),(164,52,'rootX'),(165,52,'focusX'),(166,57,'overlayTitle'),(167,57,'shouldShowTitlebar'),(168,59,'DOMOB_TEST_MODE'),(169,57,'DOMOB_TEST_MODE'),(170,52,'DOMOB_TEST_MODE'),(171,56,'appName'),(172,59,'DOMOB_PID'),(173,57,'DOMOB_PID'),(174,52,'DOMOB_PID'),(175,52,'CLIENT_PACKAGE'),(176,52,'gridHeight'),(177,52,'accumTime'),(178,58,'offers_webview_tag'),(179,58,'Offers_URL'),(180,52,'isRunning'),(181,52,'solverUsed'),(182,52,'isSolved'),(183,58,'Notify_Url_Params'),(184,52,'gameSkill'),(185,58,'DEVICE_ID'),(186,52,'DEVICE_ID'),(187,58,'SHWO_FLAG'),(188,55,'MSG'),(189,59,'ST_MY_PID'),(190,57,'shouldMakeOverlayTransparent'),(191,57,'shouldEnableBottomBar'),(192,52,'tickCount'),(193,52,'gameState'),(194,58,'ACTIVITY_FLAG'),(195,59,'ST_START_DELAY');
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',0,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'s',0,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'s',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'r',1,NULL,NULL),(27,27,'s',1,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'r',1,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'s',1,NULL,NULL),(33,33,'r',1,NULL,NULL),(34,34,'r',1,NULL,NULL),(35,35,'r',1,NULL,NULL),(36,36,'a',1,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'s',0,NULL,NULL),(41,41,'r',1,NULL,NULL),(42,46,'a',0,NULL,NULL),(43,47,'a',1,NULL,NULL),(44,48,'a',0,NULL,NULL),(45,49,'a',0,NULL,NULL),(46,50,'a',0,NULL,NULL),(47,51,'a',0,NULL,NULL),(48,52,'a',0,NULL,NULL),(49,53,'a',0,NULL,NULL),(50,54,'s',0,NULL,NULL),(51,55,'r',1,NULL,NULL),(52,56,'a',1,NULL,NULL),(53,57,'a',1,NULL,NULL),(54,58,'a',1,NULL,NULL),(55,59,'a',0,NULL,NULL),(56,60,'a',0,NULL,NULL),(57,61,'a',0,NULL,NULL),(58,62,'a',0,NULL,NULL),(59,63,'s',0,NULL,NULL),(60,64,'r',1,NULL,NULL),(61,70,'r',1,NULL,NULL),(62,81,'r',1,NULL,NULL),(63,84,'r',1,NULL,NULL),(64,85,'r',1,NULL,NULL),(65,87,'r',1,NULL,NULL),(66,88,'r',1,NULL,NULL),(67,90,'r',1,NULL,NULL),(68,91,'r',1,NULL,NULL),(69,93,'r',1,NULL,NULL),(70,94,'r',1,NULL,NULL),(71,105,'r',1,NULL,NULL),(72,106,'r',1,NULL,NULL);
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
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,2),(3,3,1),(4,4,1),(5,5,2),(6,6,3),(7,7,1),(8,8,20),(9,9,7),(10,10,7),(11,11,7),(12,12,26),(13,13,7),(14,14,9),(15,15,15),(16,16,51),(17,17,5),(18,18,50),(19,19,40),(20,20,50),(21,21,50),(22,22,40),(23,23,48),(24,24,39),(25,24,40),(26,24,36),(27,25,37),(28,26,50),(29,27,40),(30,28,43),(31,29,36),(32,29,39),(33,29,40),(34,30,44),(35,31,41),(36,32,36),(37,32,40),(38,32,39),(39,33,49),(40,34,49),(41,35,36),(42,35,40),(43,35,39),(44,36,9),(45,37,37),(46,38,9),(47,39,34),(48,40,30),(49,41,34),(50,42,5),(51,43,25),(52,44,5),(53,45,5),(54,45,27),(55,46,9),(56,47,9),(57,48,9),(58,48,32),(59,49,9),(60,50,5),(61,51,30),(62,52,5),(63,53,52),(64,54,59),(65,55,52),(66,55,59),(67,55,57),(68,56,52),(69,56,58),(70,57,60),(71,58,52),(72,59,52),(73,60,59),(74,60,57),(75,61,52),(76,61,58),(77,62,52),(78,62,58),(79,63,59),(80,63,57),(81,63,52),(82,64,59),(83,64,57),(84,64,52),(85,65,59),(86,66,58),(87,67,58),(88,68,52),(89,69,59),(90,70,52),(91,70,55),(92,71,55),(93,71,52),(94,72,58);
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,2,'<com.atools.setinstalllocation.ui.USBDebuggingActivity: void onCreate(android.os.Bundle)>',46,'s',NULL),(2,42,'<com.atools.setinstalllocation.ui.USBDebuggingActivity$5: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(3,43,'<com.atools.setinstalllocation.ui.MainActivity$9: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(4,1,'<com.atools.setinstalllocation.ui.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(5,2,'<com.atools.setinstalllocation.ui.USBDebuggingActivity: void startMainActivity()>',3,'a',NULL),(6,44,'<com.atools.setinstalllocation.ui.ConfigActivity$1: boolean onPreferenceClick(android.preference.Preference)>',6,'a',NULL),(7,45,'<com.atools.setinstalllocation.utils.Utils: void donate(android.content.Context)>',5,'a',NULL),(8,65,'<com.safetest.tank.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(9,7,'<com.safetest.tank.main: void onCreate(android.os.Bundle)>',14,'s',NULL),(10,7,'<com.safetest.tank.main: void toGameActivity()>',8,'a',NULL),(11,7,'<com.safetest.tank.main: boolean onTouchEvent(android.view.MotionEvent)>',21,'a',NULL),(12,26,'<com.safetest.tank.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(13,66,'<com.adwo.adsdk.g: void run()>',59,'a',NULL),(14,67,'<com.adwo.adsdk.g: void run()>',59,'a',NULL),(15,15,'<com.safesys.myvpn.ToggleVpn: void sendToggleRequest()>',3,'r',NULL),(16,55,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(17,68,'<com.adwo.adsdk.g: void run()>',59,'a',NULL),(18,69,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(19,40,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(20,71,'<com.ju6.a: boolean b()>',178,'p',NULL),(21,54,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(22,40,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(23,72,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(24,73,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(25,74,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(26,54,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(27,75,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(28,76,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(29,77,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(30,48,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(31,41,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(32,78,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(33,79,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(34,80,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(35,82,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(36,9,'<com.safesys.myvpn2.VpnSettings: void editVpn(com.safesys.myvpn2.wrapper.VpnProfile)>',18,'a',NULL),(37,83,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(38,9,'<com.safesys.myvpn2.VpnSettings: void addVpn(com.safesys.myvpn2.wrapper.VpnType)>',29,'a',NULL),(39,34,'<com.safesys.myvpn2.VpnAppWidgetProvider: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',7,'s',NULL),(40,30,'<com.safesys.myvpn.VpnAppWidgetProvider: void onEnabled(android.content.Context)>',6,'s',NULL),(41,34,'<com.safesys.myvpn2.VpnAppWidgetProvider: void onEnabled(android.content.Context)>',6,'s',NULL),(42,5,'<com.safesys.myvpn.VpnSettings: void addVpn(com.safesys.myvpn.wrapper.VpnType)>',29,'a',NULL),(43,25,'<com.safesys.myvpn2.ToggleVpn: void sendToggleRequest()>',3,'r',NULL),(44,5,'<com.safesys.myvpn.VpnSettings: void editVpn(com.safesys.myvpn.wrapper.VpnProfile)>',18,'a',NULL),(45,86,'<com.safesys.myvpn.VpnActor: void broadcastConnectivity(java.lang.String,com.safesys.myvpn.wrapper.VpnState,int)>',11,'r',NULL),(46,89,'<com.safesys.myvpn2.VpnSettings$11: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(47,9,'<com.safesys.myvpn2.VpnSettings: void openSettings()>',3,'a',NULL),(48,92,'<com.safesys.myvpn2.VpnActor: void broadcastConnectivity(java.lang.String,com.safesys.myvpn2.wrapper.VpnState,int)>',11,'r',NULL),(49,9,'<com.safesys.myvpn2.VpnSettings: void onAddVpn()>',3,'a',NULL),(50,5,'<com.safesys.myvpn.VpnSettings: void onAddVpn()>',3,'a',NULL),(51,30,'<com.safesys.myvpn.VpnAppWidgetProvider: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',7,'s',NULL),(52,5,'<com.safesys.myvpn.VpnSettings: void openSettings()>',3,'a',NULL),(53,56,'<com.gp.netscramblefull.NetScramble: void onBackPressed()>',5,'a',NULL),(54,63,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(55,95,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(56,96,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(57,64,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(58,56,'<com.gp.netscramblefull.NetScramble: boolean onOptionsItemSelected(android.view.MenuItem)>',23,'a',NULL),(59,56,'<com.gp.netscramblefull.NetScramble: boolean onOptionsItemSelected(android.view.MenuItem)>',16,'a',NULL),(60,97,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(61,98,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(62,99,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(63,100,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(64,101,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(65,102,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(66,62,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(67,103,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(68,104,'<com.waps.d: void onClick(android.content.DialogInterface,int)>',23,'a',NULL),(69,63,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(70,107,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(71,108,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(72,62,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',328,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,9),(2,3,9),(3,6,10),(4,7,10),(5,8,1),(6,9,1),(7,14,11),(8,15,12),(9,16,13),(10,17,10),(11,18,13),(12,19,10),(13,20,12),(14,21,11),(15,22,12),(16,23,12),(17,24,10),(18,25,13),(19,26,6),(20,27,10),(21,28,10),(22,29,11),(23,30,10),(24,32,10),(25,33,11),(26,34,10),(27,35,12),(28,36,13),(29,37,1),(30,38,12),(31,39,10),(32,40,1),(33,41,13),(34,42,13),(35,43,12),(36,44,12),(37,45,10),(38,47,10),(39,48,12),(40,49,13),(41,50,12),(42,51,10),(43,53,12),(44,54,11),(45,55,12),(46,56,12),(47,58,10),(48,60,13),(49,61,10),(50,62,10),(51,63,10),(52,65,10),(53,66,10),(54,67,12),(55,68,13),(56,70,11),(57,71,10),(58,72,12),(59,73,10),(60,74,10),(61,75,12),(62,77,10),(63,78,12),(64,79,12),(65,80,10),(66,81,10),(67,82,13),(68,83,12),(69,85,15),(70,86,12),(71,88,13),(72,89,1),(73,90,13),(74,91,10),(75,92,12),(76,93,1),(77,94,10),(78,95,12),(79,97,12),(80,99,12),(81,98,10),(82,100,16),(83,101,10),(84,102,10),(85,103,13),(86,104,17),(87,107,10),(88,108,16),(89,109,12),(90,110,12),(91,111,10),(92,112,12),(93,113,10),(94,114,10),(95,115,10),(96,117,17),(97,116,10),(98,119,10),(99,120,11),(100,121,13),(101,122,10),(102,123,10),(103,124,10),(104,126,12),(105,127,10),(106,128,16),(107,129,15),(108,130,10),(109,131,10),(110,132,10),(111,133,1),(112,134,16),(113,135,13),(114,136,12),(115,137,1),(116,138,10),(117,139,10),(118,140,11),(119,141,16),(120,142,10),(121,143,17),(122,144,1),(123,145,16),(124,146,1),(125,147,12),(126,148,17),(127,149,10),(128,150,11),(129,154,17),(130,155,6),(131,156,17),(132,157,8),(133,158,8),(134,159,1),(135,160,1),(136,162,8),(137,163,8),(138,168,1),(139,171,10),(140,173,10),(141,174,10),(142,175,10),(143,176,10),(144,177,10),(145,181,10),(146,182,10),(147,185,1),(148,186,1),(149,188,1),(150,189,1),(151,194,15),(152,195,1),(153,196,1);
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
INSERT INTO `ICategories` VALUES (1,8,1),(2,9,5),(3,37,5),(4,40,1),(5,89,1),(6,93,5),(7,104,6),(8,111,6),(9,117,6),(10,133,1),(11,137,5),(12,144,1),(13,146,5),(14,159,1),(15,160,5),(16,168,7),(17,185,5),(18,186,1),(19,188,1),(20,189,5),(21,195,1),(22,196,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/atools/setinstalllocation/UpdateCheck'),(2,4,'com/atools/setinstalllocation/ui/ConfigActivity'),(3,5,'com/atools/setinstalllocation/ui/MainActivity'),(4,10,'com/safetest/tank/UpdateService'),(5,11,'com/safetest/tank/gameActivity'),(6,12,'com/safetest/tank/SelectLevel'),(7,13,'com/safetest/tank/UpdateService'),(8,19,'com/adwo/adsdk/AdwoAdBrowserActivity'),(9,27,'com.google.android.maps.MapsActivity'),(10,28,'com/adwo/adsdk/AdwoAdBrowserActivity'),(11,31,'com/google/update/UpdateService'),(12,46,'com/google/update/Dialog'),(13,51,'com.google.android.maps.MapsActivity'),(14,52,'com/google/update/Dialog'),(15,57,'com/google/update/Dialog'),(16,59,'com/google/update/Dialog'),(17,64,'com/google/update/Dialog'),(18,65,'com.google.android.maps.MapsActivity'),(19,69,'com/google/update/Dialog'),(20,71,'com.google.android.maps.MapsActivity'),(21,84,'com/google/update/Dialog'),(22,81,'com.google.android.maps.MapsActivity'),(23,87,'com/google/update/Dialog'),(24,94,'com.google.android.maps.MapsActivity'),(25,96,'com/waps/OffersWebView'),(26,101,'com.google.android.maps.MapsActivity'),(27,105,'com/google/update/UpdateService'),(28,114,'com.google.android.maps.MapsActivity'),(29,115,'com.google.android.maps.MapsActivity'),(30,116,'com/adwo/adsdk/AdwoAdBrowserActivity'),(31,122,'com.google.android.maps.MapsActivity'),(32,124,'com.google.android.maps.MapsActivity'),(33,132,'com.google.android.maps.MapsActivity'),(34,138,'com.google.android.maps.MapsActivity'),(35,139,'com.google.android.maps.MapsActivity'),(36,143,'(.*)'),(37,148,'(.*)'),(38,149,'com.google.android.maps.MapsActivity'),(39,151,'com/safesys/myvpn2/VpnConnectorService'),(40,152,'com/safesys/myvpn/VpnConnectorService'),(41,153,'com/safesys/myvpn2/VpnConnectorService'),(42,154,'(.*)'),(43,156,'(.*)'),(44,161,'com/safesys/myvpn2/Settings'),(45,164,'com/safesys/myvpn2/VpnTypeSelection'),(46,165,'com/safesys/myvpn/VpnTypeSelection'),(47,166,'com/safesys/myvpn/VpnConnectorService'),(48,167,'com/safesys/myvpn/Settings'),(49,169,'com/google/update/Dialog'),(50,170,'com/google/update/Dialog'),(51,178,'com/google/update/UpdateService'),(52,179,'com/gp/netscramblefull/Help'),(53,180,'com/gp/netscramblefull/ScoreList'),(54,183,'com/waps/OffersWebView'),(55,184,'com/waps/OffersWebView'),(56,190,'NULL-CONSTANT'),(57,191,'com/waps/OffersWebView'),(58,192,'com/google/update/Dialog'),(59,193,'com/google/update/Dialog'),(60,197,'(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,6,1),(2,7,2),(3,14,3),(4,15,4),(5,16,5),(6,17,6),(7,18,7),(8,20,8),(9,21,9),(10,22,10),(11,23,11),(12,24,12),(13,25,13),(14,29,14),(15,32,15),(16,30,17),(17,33,16),(18,36,18),(19,34,19),(20,35,20),(21,38,21),(22,41,22),(23,42,23),(24,43,24),(25,44,25),(26,45,26),(27,47,27),(28,49,28),(29,53,30),(30,54,31),(31,55,32),(32,58,33),(33,56,34),(34,62,35),(35,61,36),(36,63,37),(37,67,38),(38,68,39),(39,70,40),(40,71,41),(41,72,42),(42,73,43),(43,74,44),(44,77,46),(45,78,47),(46,81,48),(47,82,49),(48,83,50),(49,86,51),(50,88,52),(51,91,53),(52,94,54),(53,97,55),(54,98,56),(55,101,57),(56,99,58),(57,102,59),(58,104,60),(59,107,61),(60,110,62),(61,109,63),(62,112,64),(63,111,65),(64,114,66),(65,115,67),(66,113,68),(67,117,69),(68,119,70),(69,121,71),(70,122,72),(71,123,74),(72,124,73),(73,127,75),(74,126,76),(75,132,77),(76,131,78),(77,130,79),(78,136,80),(79,135,81),(80,138,82),(81,139,83),(82,142,84),(83,147,85),(84,149,86),(85,171,87),(86,173,88),(87,174,89),(88,175,90),(89,176,91),(90,177,92),(91,181,93),(92,182,94);
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
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,11,'level'),(2,12,'maxLevel'),(3,15,'android.intent.extra.TEXT'),(4,15,'android.intent.extra.SUBJECT'),(5,15,'android.intent.extra.EMAIL'),(6,16,'sms_body'),(7,19,'url'),(8,20,'android.intent.extra.EMAIL'),(9,22,'android.intent.extra.TEXT'),(10,23,'android.intent.extra.TEXT'),(11,22,'android.intent.extra.EMAIL'),(12,23,'android.intent.extra.SUBJECT'),(13,23,'android.intent.extra.EMAIL'),(14,25,'sms_body'),(15,28,'url'),(16,35,'android.intent.extra.TEXT'),(17,35,'android.intent.extra.SUBJECT'),(18,35,'android.intent.extra.EMAIL'),(19,38,'android.intent.extra.EMAIL'),(20,42,'sms_body'),(21,43,'android.intent.extra.TEXT'),(22,43,'android.intent.extra.EMAIL'),(23,44,'android.intent.extra.EMAIL'),(24,46,'MSG'),(25,46,'TYPEdsada'),(26,50,'android.intent.extra.TEXT'),(27,52,'TYPEdsada'),(28,50,'android.intent.extra.SUBJECT'),(29,50,'android.intent.extra.EMAIL'),(30,53,'android.intent.extra.EMAIL'),(31,55,'android.intent.extra.TEXT'),(32,55,'android.intent.extra.SUBJECT'),(33,55,'android.intent.extra.EMAIL'),(34,57,'TYPEdsada'),(35,56,'android.intent.extra.TEXT'),(36,56,'android.intent.extra.EMAIL'),(37,59,'MSG'),(38,59,'TYPEdsada'),(39,64,'MSG'),(40,64,'TYPEdsada'),(41,69,'TYPEdsada'),(42,72,'android.intent.extra.EMAIL'),(43,78,'android.intent.extra.TEXT'),(44,78,'android.intent.extra.EMAIL'),(45,79,'android.intent.extra.TEXT'),(46,79,'android.intent.extra.SUBJECT'),(47,79,'android.intent.extra.EMAIL'),(48,84,'TYPEdsada'),(49,83,'android.intent.extra.TEXT'),(50,83,'android.intent.extra.SUBJECT'),(51,83,'android.intent.extra.EMAIL'),(52,87,'MSG'),(53,86,'android.intent.extra.EMAIL'),(54,87,'TYPEdsada'),(55,88,'sms_body'),(56,96,'USER_ID'),(57,95,'android.intent.extra.TEXT'),(58,96,'CLIENT_PACKAGE'),(59,95,'android.intent.extra.SUBJECT'),(60,96,'Offers_URL'),(61,95,'android.intent.extra.EMAIL'),(62,96,'URL_PARAMS'),(63,99,'android.intent.extra.TEXT'),(64,100,'query'),(65,99,'android.intent.extra.SUBJECT'),(66,99,'android.intent.extra.EMAIL'),(67,109,'android.intent.extra.TEXT'),(68,109,'android.intent.extra.EMAIL'),(69,116,'url'),(70,121,'sms_body'),(71,126,'android.intent.extra.TEXT'),(72,126,'android.intent.extra.EMAIL'),(73,128,'query'),(74,135,'sms_body'),(75,141,'query'),(76,143,'vpnProfileName'),(77,148,'vpnType'),(78,154,'vpnType'),(79,156,'vpnProfileName'),(80,157,'connection_state'),(81,157,'profile_name'),(82,158,'connection_state'),(83,158,'profile_name'),(84,158,'err'),(85,162,'connection_state'),(86,162,'profile_name'),(87,163,'connection_state'),(88,163,'profile_name'),(89,163,'err'),(90,169,'TYPEdsada'),(91,170,'MSG'),(92,170,'TYPEdsada'),(93,183,'UrlPath'),(94,183,'ACTIVITY_FLAG'),(95,183,'isFinshClose'),(96,183,'offers_webview_tag'),(97,184,'Notify_Url_Params'),(98,184,'UrlPath'),(99,184,'ACTIVITY_FLAG'),(100,184,'isFinshClose'),(101,184,'offers_webview_tag'),(102,191,'CLIENT_PACKAGE'),(103,191,'URL'),(104,191,'isFinshClose'),(105,191,'offers_webview_tag'),(106,192,'TYPEdsada'),(107,193,'MSG'),(108,193,'TYPEdsada');
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,2,2),(4,3,1),(5,4,2),(6,4,1),(7,5,3),(8,5,4),(9,5,5),(10,6,6),(11,7,7),(12,8,6),(13,9,8),(14,10,7),(15,11,8),(16,12,1),(17,13,5),(18,13,4),(19,13,3),(20,14,1),(21,15,4),(22,15,5),(23,15,3),(24,16,1),(25,17,1),(26,18,1),(27,19,3),(28,19,5),(29,19,4),(30,20,14),(31,21,14),(32,22,8),(33,22,6),(34,23,6),(35,23,8),(36,24,8),(37,24,6),(38,25,8),(39,25,6),(40,26,8),(41,26,6),(42,27,8),(43,27,6),(44,28,8),(45,28,6),(46,29,6),(47,29,8),(48,30,6),(49,30,8),(50,31,8),(51,31,6),(52,32,6),(53,32,8),(54,33,6),(55,33,8),(56,34,6),(57,34,8),(58,35,6),(59,35,8),(60,36,14),(61,37,14);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,2,2),(4,2,3),(5,3,1),(6,4,2),(7,4,1),(8,4,3),(9,12,1),(10,14,1),(11,16,1),(12,16,4);
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
INSERT INTO `IFData` VALUES (1,20,'package',NULL,NULL,NULL,NULL,NULL),(2,21,'package',NULL,NULL,NULL,NULL,NULL),(3,36,'package',NULL,NULL,NULL,NULL,NULL),(4,37,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,17,'*','*'),(2,30,'*','*'),(3,34,'(.*)','(.*)'),(4,45,'*','*'),(5,50,'message','rfc882'),(6,61,'(.*)','(.*)'),(7,63,'(.*)','(.*)'),(8,74,'application','vnd.android.package-archive'),(9,77,'(.*)','(.*)'),(10,79,'message','rfc882'),(11,91,'(.*)','(.*)'),(12,95,'message','rfc882'),(13,102,'*','*'),(14,107,'(.*)','(.*)'),(15,113,'application','vnd.android.package-archive'),(16,117,'(.*)','(.*)'),(17,119,'application','vnd.android.package-archive'),(18,123,'application','vnd.android.package-archive'),(19,127,'application','vnd.android.package-archive'),(20,130,'*','*'),(21,131,'application','vnd.android.package-archive'),(22,142,'*','*'),(23,171,'application','vnd.android.package-archive'),(24,173,'application','vnd.android.package-archive'),(25,174,'application','vnd.android.package-archive'),(26,175,'application','vnd.android.package-archive'),(27,176,'application','vnd.android.package-archive'),(28,177,'application','vnd.android.package-archive'),(29,182,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.atools.setinstalllocation'),(2,4,'com.atools.setinstalllocation'),(3,5,'com.atools.setinstalllocation'),(4,8,'com.noshufou.android.su'),(5,9,'com.noshufou.android.su'),(6,10,'com.safetest.tank'),(7,11,'com.safetest.tank'),(8,12,'com.safetest.tank'),(9,13,'com.safetest.tank'),(10,19,'com.safetest.tank'),(11,27,'com.google.android.apps.maps'),(12,28,'com.safesys.myvpn2'),(13,31,'com.alan.asianmeinv10'),(14,37,'com.alan.asianmeinv10'),(15,40,'com.alan.asianmeinv10'),(16,46,'com.gp.solitaire'),(17,51,'com.google.android.apps.maps'),(18,52,'com.gp.solitaire'),(19,57,'com.alan.asianmeinv10'),(20,59,'com.alan.asianmeinv10'),(21,64,'com.gp.solitaire'),(22,65,'com.google.android.apps.maps'),(23,69,'com.gp.solitaire'),(24,71,'com.google.android.apps.maps'),(25,84,'com.alan.asianmeinv10'),(26,81,'com.google.android.apps.maps'),(27,87,'com.alan.asianmeinv10'),(28,89,'com.gp.solitaire'),(29,93,'com.gp.solitaire'),(30,94,'com.google.android.apps.maps'),(31,96,'com.alan.asianmeinv10'),(32,101,'com.google.android.apps.maps'),(33,105,'com.gp.solitaire'),(34,114,'com.google.android.apps.maps'),(35,115,'com.google.android.apps.maps'),(36,116,'com.safesys.myvpn'),(37,122,'com.google.android.apps.maps'),(38,124,'com.google.android.apps.maps'),(39,132,'com.google.android.apps.maps'),(40,133,'com.noshufou.android.su'),(41,137,'com.noshufou.android.su'),(42,138,'com.google.android.apps.maps'),(43,139,'com.google.android.apps.maps'),(44,144,'com.noshufou.android.su'),(45,143,'com.safesys.myvpn2'),(46,146,'com.noshufou.android.su'),(47,148,'com.safesys.myvpn2'),(48,149,'com.google.android.apps.maps'),(49,151,'com.safesys.myvpn2'),(50,152,'com.safesys.myvpn'),(51,153,'com.safesys.myvpn2'),(52,154,'com.safesys.myvpn'),(53,156,'com.safesys.myvpn'),(54,159,'com.noshufou.android.su'),(55,160,'com.noshufou.android.su'),(56,161,'com.safesys.myvpn2'),(57,164,'com.safesys.myvpn2'),(58,165,'com.safesys.myvpn'),(59,166,'com.safesys.myvpn'),(60,167,'com.safesys.myvpn'),(61,169,'com.gp.netscramblefull'),(62,170,'com.gp.netscramblefull'),(63,178,'com.gp.netscramblefull'),(64,179,'com.gp.netscramblefull'),(65,180,'com.gp.netscramblefull'),(66,183,'com.gp.netscramblefull'),(67,184,'com.gp.netscramblefull'),(68,185,'com.gp.netscramblefull'),(69,186,'com.gp.netscramblefull'),(70,188,'(.*)'),(71,189,'(.*)'),(72,190,'NULL-CONSTANT'),(73,191,'com.gp.netscramblefull'),(74,192,'com.gp.netscramblefull'),(75,193,'com.gp.netscramblefull'),(76,195,'com.noshufou.android.su'),(77,196,'com.noshufou.android.su'),(78,197,'(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,2,0),(2,5,0),(3,7,0),(4,9,0),(5,26,0),(6,27,0),(7,30,0),(8,32,0),(9,33,0),(10,34,0),(11,35,0),(12,36,0),(13,41,0),(14,43,0),(15,51,0),(16,52,0),(17,53,0),(18,54,0),(19,60,0),(20,61,0),(21,62,0),(22,63,0),(23,63,0),(24,35,0),(25,34,0),(26,64,0),(27,65,0),(28,66,0),(29,67,0),(30,68,0),(31,30,0),(32,33,0),(33,69,0),(34,70,0),(35,68,0),(36,71,0),(37,72,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,3,1,0),(4,4,0,0),(5,5,0,0),(6,6,1,0),(7,7,1,0),(8,8,1,0),(9,8,1,0),(10,9,0,0),(11,10,0,0),(12,11,0,0),(13,12,0,0),(14,13,1,0),(15,13,1,0),(16,13,1,0),(17,13,1,0),(18,13,1,0),(19,13,0,0),(20,13,1,0),(21,14,1,0),(22,13,1,0),(23,14,1,0),(24,13,1,0),(25,14,1,0),(26,15,1,0),(27,13,0,0),(28,14,0,0),(29,13,1,0),(30,14,1,0),(31,16,0,0),(32,13,1,0),(33,17,1,0),(34,13,1,0),(35,17,1,0),(36,14,1,0),(37,18,1,0),(38,14,1,0),(39,13,1,0),(40,18,1,0),(41,13,1,0),(42,17,1,0),(43,14,1,0),(44,13,1,0),(45,17,1,0),(46,19,0,0),(47,14,1,0),(48,13,1,0),(49,17,1,0),(50,13,1,0),(51,14,0,0),(52,19,0,0),(53,17,1,0),(54,14,1,0),(55,13,1,0),(56,17,1,0),(57,21,0,0),(58,14,1,0),(59,21,0,0),(60,13,1,0),(61,14,1,0),(62,17,1,0),(63,13,1,0),(64,22,0,0),(65,17,0,0),(66,14,1,0),(67,13,1,0),(68,14,1,0),(69,22,0,0),(70,17,1,0),(71,13,0,0),(72,14,1,0),(73,17,1,0),(74,23,1,0),(75,14,1,0),(76,13,1,0),(77,17,1,0),(78,13,1,0),(79,14,1,0),(80,17,1,0),(81,13,0,0),(82,17,1,0),(83,14,1,0),(84,26,0,0),(85,25,1,0),(86,17,1,0),(87,26,0,0),(88,13,1,0),(89,27,1,0),(90,14,1,0),(91,14,1,0),(92,17,1,0),(93,27,1,0),(94,13,0,0),(95,17,1,0),(96,28,0,0),(97,14,1,0),(98,29,1,0),(99,17,1,0),(100,13,1,0),(101,14,0,0),(102,13,1,0),(103,17,1,0),(104,30,1,0),(105,31,0,0),(106,14,1,0),(107,17,1,0),(108,13,1,0),(109,14,1,0),(110,13,1,0),(111,30,1,0),(112,17,1,0),(113,32,1,0),(114,13,0,0),(115,14,0,0),(116,17,0,0),(117,30,1,0),(118,32,1,0),(119,32,1,0),(120,13,1,0),(121,14,1,0),(122,17,0,0),(123,32,1,0),(124,14,0,0),(125,17,1,0),(126,17,1,0),(127,32,1,0),(128,14,1,0),(129,33,1,0),(130,14,1,0),(131,32,1,0),(132,17,0,0),(133,34,1,0),(134,14,1,0),(135,17,1,0),(136,14,1,0),(137,34,1,0),(138,14,0,0),(139,17,0,0),(140,14,1,0),(141,17,1,0),(142,17,1,0),(143,36,0,0),(144,37,1,0),(145,17,1,0),(146,37,1,0),(147,17,1,0),(148,38,0,0),(149,17,0,0),(150,17,1,0),(151,39,0,0),(152,40,0,0),(153,41,0,0),(154,42,0,0),(155,43,1,0),(156,44,0,0),(157,45,1,0),(158,45,1,0),(159,46,1,0),(160,46,1,0),(161,47,0,0),(162,48,1,0),(163,48,1,0),(164,49,0,0),(165,50,0,0),(166,51,0,0),(167,52,0,0),(168,53,1,0),(169,54,0,0),(170,54,0,0),(171,55,1,0),(172,55,1,0),(173,55,1,0),(174,55,1,0),(175,55,1,0),(176,55,1,0),(177,56,1,0),(178,57,0,0),(179,58,0,0),(180,59,0,0),(181,60,1,0),(182,61,1,0),(183,62,0,0),(184,62,0,0),(185,65,1,0),(186,65,1,0),(187,66,1,0),(188,66,1,0),(189,66,1,0),(190,67,0,0),(191,68,0,0),(192,69,0,0),(193,69,0,0),(194,70,1,0),(195,71,1,0),(196,71,1,0),(197,72,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=278 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,179,54,2,NULL),(2,180,53,2,NULL),(3,168,2,2,NULL),(4,168,5,2,NULL),(5,26,52,2,NULL),(6,168,27,2,NULL),(7,168,30,2,NULL),(8,168,33,2,NULL),(9,168,67,2,NULL),(10,168,68,2,NULL),(11,168,69,2,NULL),(12,168,70,2,NULL),(13,168,7,2,NULL),(14,168,26,2,NULL),(15,168,9,2,NULL),(16,155,52,2,NULL),(17,168,32,2,NULL),(18,168,34,2,NULL),(19,168,35,2,NULL),(20,168,63,2,NULL),(21,168,64,2,NULL),(22,168,65,2,NULL),(23,168,66,2,NULL),(24,168,36,2,NULL),(25,168,41,2,NULL),(26,168,43,2,NULL),(27,104,52,2,NULL),(28,111,52,2,NULL),(29,168,51,2,NULL),(30,168,53,2,NULL),(31,168,54,2,NULL),(32,187,52,2,NULL),(33,188,52,2,NULL),(34,189,52,2,NULL),(35,168,60,2,NULL),(36,26,53,2,NULL),(37,155,53,2,NULL),(38,104,53,2,NULL),(39,111,53,2,NULL),(40,187,53,2,NULL),(41,188,53,2,NULL),(42,189,53,2,NULL),(43,26,54,2,NULL),(44,155,54,2,NULL),(45,104,54,2,NULL),(46,111,54,2,NULL),(47,187,54,2,NULL),(48,188,54,2,NULL),(49,189,54,2,NULL),(50,187,2,2,NULL),(51,188,2,2,NULL),(52,189,2,2,NULL),(53,187,5,2,NULL),(54,188,5,2,NULL),(55,189,5,2,NULL),(56,187,27,2,NULL),(57,188,27,2,NULL),(58,189,27,2,NULL),(59,187,30,2,NULL),(60,188,30,2,NULL),(61,189,30,2,NULL),(62,187,33,2,NULL),(63,188,33,2,NULL),(64,189,33,2,NULL),(65,187,67,2,NULL),(66,188,67,2,NULL),(67,189,67,2,NULL),(68,187,68,2,NULL),(69,188,68,2,NULL),(70,189,68,2,NULL),(71,187,69,2,NULL),(72,188,69,2,NULL),(73,189,69,2,NULL),(74,187,70,2,NULL),(75,188,70,2,NULL),(76,189,70,2,NULL),(77,187,7,2,NULL),(78,188,7,2,NULL),(79,189,7,2,NULL),(80,187,26,2,NULL),(81,188,26,2,NULL),(82,189,26,2,NULL),(83,187,9,2,NULL),(84,188,9,2,NULL),(85,189,9,2,NULL),(86,187,32,2,NULL),(87,188,32,2,NULL),(88,189,32,2,NULL),(89,187,34,2,NULL),(90,188,34,2,NULL),(91,189,34,2,NULL),(92,187,35,2,NULL),(93,188,35,2,NULL),(94,189,35,2,NULL),(95,187,63,2,NULL),(96,188,63,2,NULL),(97,189,63,2,NULL),(98,187,64,2,NULL),(99,188,64,2,NULL),(100,189,64,2,NULL),(101,187,65,2,NULL),(102,188,65,2,NULL),(103,189,65,2,NULL),(104,187,66,2,NULL),(105,188,66,2,NULL),(106,189,66,2,NULL),(107,187,36,2,NULL),(108,188,36,2,NULL),(109,189,36,2,NULL),(110,187,41,2,NULL),(111,188,41,2,NULL),(112,189,41,2,NULL),(113,187,43,2,NULL),(114,188,43,2,NULL),(115,189,43,2,NULL),(116,187,51,2,NULL),(117,188,51,2,NULL),(118,189,51,2,NULL),(119,187,60,2,NULL),(120,188,60,2,NULL),(121,189,60,2,NULL),(122,169,37,2,NULL),(123,169,49,2,NULL),(124,169,55,2,NULL),(125,170,37,2,NULL),(126,170,49,2,NULL),(127,170,55,2,NULL),(128,192,37,2,NULL),(129,192,49,2,NULL),(130,192,55,2,NULL),(131,193,37,2,NULL),(132,193,49,2,NULL),(133,193,55,2,NULL),(134,178,40,2,NULL),(135,178,50,2,NULL),(136,178,59,2,NULL),(137,26,60,2,NULL),(138,155,60,2,NULL),(139,104,60,2,NULL),(140,111,60,2,NULL),(141,10,23,2,NULL),(142,11,14,2,NULL),(143,12,11,2,NULL),(144,26,7,2,NULL),(145,155,7,2,NULL),(146,104,7,2,NULL),(147,111,7,2,NULL),(148,13,23,2,NULL),(149,26,26,2,NULL),(150,155,26,2,NULL),(151,104,26,2,NULL),(152,111,26,2,NULL),(153,26,36,2,NULL),(154,155,36,2,NULL),(155,104,36,2,NULL),(156,111,36,2,NULL),(157,46,37,2,NULL),(158,46,49,2,NULL),(159,46,55,2,NULL),(160,52,37,2,NULL),(161,52,49,2,NULL),(162,52,55,2,NULL),(163,64,37,2,NULL),(164,64,49,2,NULL),(165,64,55,2,NULL),(166,69,37,2,NULL),(167,69,49,2,NULL),(168,69,55,2,NULL),(169,105,40,2,NULL),(170,105,50,2,NULL),(171,105,59,2,NULL),(172,26,41,2,NULL),(173,155,41,2,NULL),(174,104,41,2,NULL),(175,111,41,2,NULL),(176,26,43,2,NULL),(177,155,43,2,NULL),(178,104,43,2,NULL),(179,111,43,2,NULL),(180,4,3,2,NULL),(181,104,2,2,NULL),(182,1,4,2,NULL),(183,111,2,2,NULL),(184,5,1,2,NULL),(185,104,5,2,NULL),(186,26,2,2,NULL),(187,111,5,2,NULL),(188,155,2,2,NULL),(189,104,27,2,NULL),(190,111,27,2,NULL),(191,104,30,2,NULL),(192,111,30,2,NULL),(193,104,33,2,NULL),(194,111,33,2,NULL),(195,104,67,2,NULL),(196,111,67,2,NULL),(197,104,68,2,NULL),(198,111,68,2,NULL),(199,104,69,2,NULL),(200,111,69,2,NULL),(201,104,70,2,NULL),(202,111,70,2,NULL),(203,104,9,2,NULL),(204,111,9,2,NULL),(205,104,32,2,NULL),(206,111,32,2,NULL),(207,104,34,2,NULL),(208,111,34,2,NULL),(209,104,35,2,NULL),(210,111,35,2,NULL),(211,104,63,2,NULL),(212,111,63,2,NULL),(213,104,64,2,NULL),(214,111,64,2,NULL),(215,104,65,2,NULL),(216,111,65,2,NULL),(217,104,66,2,NULL),(218,111,66,2,NULL),(219,104,51,2,NULL),(220,111,51,2,NULL),(221,57,37,2,NULL),(222,57,49,2,NULL),(223,57,55,2,NULL),(224,59,37,2,NULL),(225,59,49,2,NULL),(226,59,55,2,NULL),(227,84,37,2,NULL),(228,84,49,2,NULL),(229,84,55,2,NULL),(230,87,37,2,NULL),(231,87,49,2,NULL),(232,87,55,2,NULL),(233,31,40,2,NULL),(234,31,50,2,NULL),(235,31,59,2,NULL),(236,26,51,2,NULL),(237,155,51,2,NULL),(238,161,28,2,NULL),(239,164,13,2,NULL),(240,26,9,2,NULL),(241,155,9,2,NULL),(242,155,5,2,NULL),(243,155,27,2,NULL),(244,155,30,2,NULL),(245,155,33,2,NULL),(246,155,67,2,NULL),(247,155,68,2,NULL),(248,155,69,2,NULL),(249,155,70,2,NULL),(250,155,32,2,NULL),(251,155,34,2,NULL),(252,155,35,2,NULL),(253,155,63,2,NULL),(254,155,64,2,NULL),(255,155,65,2,NULL),(256,155,66,2,NULL),(257,26,32,2,NULL),(258,151,32,2,NULL),(259,153,32,2,NULL),(260,26,34,2,NULL),(261,26,35,2,NULL),(262,26,63,2,NULL),(263,26,64,2,NULL),(264,26,65,2,NULL),(265,26,66,2,NULL),(266,165,6,2,NULL),(267,167,18,2,NULL),(268,26,5,2,NULL),(269,26,27,2,NULL),(270,26,30,2,NULL),(271,26,33,2,NULL),(272,26,67,2,NULL),(273,26,68,2,NULL),(274,26,69,2,NULL),(275,26,70,2,NULL),(276,152,27,2,NULL),(277,166,27,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (4,'android.permission.ACCESS_COARSE_LOCATION'),(14,'android.permission.ACCESS_FINE_LOCATION'),(15,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(5,'android.permission.ACCESS_NETWORK_STATE'),(3,'android.permission.ACCESS_WIFI_STATE'),(18,'android.permission.CHANGE_CONFIGURATION'),(13,'android.permission.CHANGE_WIFI_STATE'),(17,'android.permission.GET_TASKS'),(11,'android.permission.INSTALL_PACKAGES'),(2,'android.permission.INTERNET'),(10,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(6,'android.permission.READ_SMS'),(12,'android.permission.RECEIVE_BOOT_COMPLETED'),(9,'android.permission.RESTART_PACKAGES'),(16,'android.permission.SET_WALLPAPER'),(7,'android.permission.WRITE_EXTERNAL_STORAGE'),(8,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'http://forum.xda-developers.com/showthread.php?t=720739',NULL,NULL,NULL),(2,NULL,NULL,'market://search?q=Donation%20pub:%22Roberto%20Leinardi%22',NULL,NULL,NULL),(3,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(4,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(5,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(6,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(7,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(8,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(9,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(10,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(11,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(12,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(17,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(18,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(19,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(20,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(21,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(22,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(23,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(24,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(27,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(28,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(29,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(30,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(31,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(32,NULL,NULL,'(.*)',NULL,NULL,NULL),(33,NULL,NULL,'(.*)',NULL,NULL,NULL),(34,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(35,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(36,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(37,NULL,NULL,'(.*)',NULL,NULL,NULL),(38,NULL,NULL,'(.*)',NULL,NULL,NULL),(39,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(40,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(41,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT((.*))&z=22',NULL,NULL,NULL),(42,NULL,NULL,'(.*)',NULL,NULL,NULL),(43,NULL,NULL,'(.*)',NULL,NULL,NULL),(44,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(45,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(46,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(47,NULL,NULL,'(.*)',NULL,NULL,NULL),(48,NULL,NULL,'http://maps.google.com/maps?q=(.*)((.*))&z=22',NULL,NULL,NULL),(49,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(50,NULL,NULL,'(.*)',NULL,NULL,NULL),(51,NULL,NULL,'(.*)',NULL,NULL,NULL),(52,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(53,NULL,NULL,'(.*)',NULL,NULL,NULL),(54,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT()&z=22',NULL,NULL,NULL),(55,NULL,NULL,'(.*)',NULL,NULL,NULL),(56,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(57,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT((.*))&z=22',NULL,NULL,NULL),(58,NULL,NULL,'(.*)',NULL,NULL,NULL),(59,NULL,NULL,'(.*)',NULL,NULL,NULL),(60,NULL,NULL,'(.*)',NULL,NULL,NULL),(61,NULL,NULL,'(.*)',NULL,NULL,NULL),(62,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(63,NULL,NULL,'(.*)',NULL,NULL,NULL),(64,NULL,NULL,'(.*)',NULL,NULL,NULL),(65,NULL,NULL,'(.*)',NULL,NULL,NULL),(66,NULL,NULL,'http://maps.google.com/maps?q=(.*)()&z=22',NULL,NULL,NULL),(67,NULL,NULL,'http://maps.google.com/maps?q=(.*)((.*))&z=22',NULL,NULL,NULL),(68,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(69,NULL,NULL,'(.*)',NULL,NULL,NULL),(70,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(71,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(72,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT((.*))&z=22',NULL,NULL,NULL),(73,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT()&z=22',NULL,NULL,NULL),(74,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(75,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(76,NULL,NULL,'(.*)',NULL,NULL,NULL),(77,NULL,NULL,'http://maps.google.com/maps?q=(.*)((.*))&z=22',NULL,NULL,NULL),(78,NULL,NULL,'file://',NULL,NULL,NULL),(79,NULL,NULL,'(.*)',NULL,NULL,NULL),(80,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(81,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(82,NULL,NULL,'http://maps.google.com/maps?q=(.*)()&z=22',NULL,NULL,NULL),(83,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT()&z=22',NULL,NULL,NULL),(84,NULL,NULL,'(.*)',NULL,NULL,NULL),(85,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(86,NULL,NULL,'http://maps.google.com/maps?q=(.*)()&z=22',NULL,NULL,NULL),(87,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(88,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(89,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(90,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(91,NULL,NULL,'file://',NULL,NULL,NULL),(92,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(93,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(94,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(95,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,20,29),(2,24,45),(3,64,95);
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
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,2,1),(7,2,2),(8,2,3),(9,2,4),(10,2,5),(11,2,6),(12,2,7),(13,2,8),(14,3,1),(15,3,2),(16,4,1),(17,3,3),(18,4,2),(19,3,4),(20,4,3),(21,3,5),(22,4,4),(23,3,6),(24,4,5),(25,3,8),(26,4,6),(27,3,9),(28,4,7),(29,4,8),(30,5,1),(31,5,2),(32,5,3),(33,5,4),(34,5,5),(35,5,6),(36,5,7),(37,5,8),(38,5,10),(39,5,11),(40,5,12),(41,5,13),(42,5,14),(43,5,15),(44,6,1),(45,6,2),(46,6,3),(47,6,4),(48,6,5),(49,6,6),(50,6,7),(51,6,8),(52,6,10),(53,6,11),(54,6,13),(55,6,14),(56,6,15),(57,6,17),(58,6,16),(59,6,18),(60,7,17),(61,7,1),(62,7,2),(63,7,3),(64,7,5),(65,7,7),(66,7,10),(67,7,12),(68,7,13),(69,7,14),(70,7,15);
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

-- Dump completed on 2015-10-12  3:29:28
