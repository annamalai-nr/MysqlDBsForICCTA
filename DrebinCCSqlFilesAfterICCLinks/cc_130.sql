-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_130
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (10,'(.*)'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(11,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(9,'android.intent.action.PACKAGE_ADDED'),(7,'android.intent.action.SCREEN_OFF'),(8,'android.intent.action.SCREEN_ON'),(12,'android.intent.action.SEND'),(13,'android.intent.action.SENDTO'),(2,'android.intent.action.SIG_STR'),(15,'android.intent.action.USER_PRESENT'),(6,'android.intent.action.VIEW'),(14,'android.intent.action.WEB_SEARCH'),(5,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS');
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
INSERT INTO `Applications` VALUES (1,'com.tutusw.fingerscanner',5),(2,'com.ps.mine',6),(3,'com.cxjf.hosts',8),(4,'com.livegame.CardMagic',1),(5,'com.evilsunflower.xiaoxiaole',1),(6,'com.gp.netscramblefull',8),(7,'com.alan.translate',13);
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
INSERT INTO `CategoryStrings` VALUES (4,'android.intent.category.BROWSABLE'),(5,'android.intent.category.HOME'),(2,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(3,'android.intent.category.PREFERENCE');
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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.tutusw.fingerscanner.SettingsActivity'),(2,1,'com.tutusw.fingerscanner.FingerprintActivity'),(3,1,'com.tutusw.fingerscanner.HelpActivity'),(4,1,'com.eguan.state.Dialog'),(5,1,'com.eguan.state.StateService'),(6,1,'com.tutusw.fingerscanner.SleepService'),(7,1,'com.eguan.state.Receiver'),(8,1,'com.tutusw.fingerscanner.BootReceiver'),(9,3,'com.cxjf.hosts.MainActivity'),(10,3,'com.cxjf.hosts.CustomizeActivity'),(11,4,'com.livegame.CardMagic.Main'),(12,2,'com.adwo.adsdk.AdwoAdBrowserActivity'),(13,3,'com.cxjf.hosts.AboutActivity'),(14,2,'com.ps.mine.Main'),(15,3,'ad.imadpush.com.poster.PosterInfoActivity'),(16,3,'com.airpuh.ad.UpdateCheck'),(17,4,'com.livegame.CardMagic.About'),(18,4,'com.google.update.Dialog'),(19,3,'ad.imadpush.com.poster.AlarmService'),(20,2,'com.google.update.Dialog'),(21,4,'com.adwo.adsdk.AdwoSplashAdActivity'),(22,3,'ad.imadpush.com.poster.ReceiverAlarm'),(23,2,'com.google.update.UpdateService'),(24,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(25,2,'com.google.update.Receiver'),(26,4,'com.google.update.UpdateService'),(27,4,'com.google.update.Receiver'),(28,5,'com.evilsunflower.xiaoxiaole.MainView'),(29,5,'com.google.ads.AdActivity'),(30,5,'com.vpon.adon.android.WebInApp'),(31,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(32,5,'com.evilsunflower.xiaoxiaole.ShowTips'),(33,5,'com.evilsunflower.xiaoxiaole.UpdateService'),(34,5,'com.evilsunflower.xiaoxiaole.Receiver'),(35,1,'com.eguan.state.Dialog$1'),(36,1,'com.tutusw.fingerscanner.SleepService$1'),(37,1,'com.eguan.state.StateService$MyThread'),(38,2,'com.google.update.UpdateService$MyThread'),(39,2,'com.google.update.Dialog$1'),(40,2,'com.google.update.Dialog$2'),(41,2,'com.ju6.a'),(42,3,'ad.imadpush.com.poster.PosterInfoActivity$PackageReceiver'),(43,4,'com.google.update.UpdateService$MyThread'),(44,4,'com.livegame.CardMagic.About$1'),(45,4,'com.adwo.adsdk.B'),(46,4,'com.google.update.Dialog$1'),(47,6,'com.gp.netscramblefull.NetScramble'),(48,6,'com.gp.netscramblefull.ScoreList'),(49,6,'com.gp.netscramblefull.Help'),(50,6,'com.google.update.Dialog'),(51,6,'cn.domob.android.ads.DomobActivity'),(52,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(53,6,'com.waps.OffersWebView'),(54,5,'com.madhouse.android.ads._'),(55,6,'com.google.update.UpdateService'),(56,6,'com.google.update.Receiver'),(57,5,'com.adwo.adsdk.g'),(58,7,'com.alan.translate.TranslateApp'),(59,7,'com.google.ssearch.Dialog'),(60,7,'com.google.ads.AdActivity'),(61,7,'com.google.ssearch.SearchService'),(62,7,'com.google.ssearch.Receiver'),(63,5,'com.google.ads.util.AdUtil$UserActivityReceiver'),(64,5,'com.evilsunflower.xiaoxiaole.ShowTips$1'),(65,7,'com.google.ssearch.SearchService$MyThread'),(66,7,'com.google.ssearch.Dialog$1'),(67,6,'com.waps.d'),(68,6,'cn.domob.android.ads.i$6'),(69,6,'com.waps.z'),(70,6,'com.google.update.UpdateService$AA'),(71,6,'com.waps.q'),(72,6,'com.waps.o'),(73,6,'cn.domob.android.ads.DomobAdEngine$2'),(74,6,'cn.domob.android.ads.i'),(75,6,'cn.domob.android.ads.DomobActionReceiver'),(76,6,'com.google.update.Dialog$2'),(77,6,'com.google.update.Dialog$1'),(78,6,'com.waps.aa'),(79,6,'com.waps.ac'),(80,6,'cn.domob.android.ads.DomobAdManager');
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
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,4,'TYPEdsada'),(2,4,'MSG'),(3,20,'TYPEdsada'),(4,12,'shouldEnableBottomBar'),(5,23,'ST_MY_PID'),(6,12,'overlayTransition'),(7,20,'MSG'),(8,12,'shouldShowBottomBar'),(9,12,'shouldMakeOverlayTransparent'),(10,23,'ST_START_DELAY'),(11,12,'transitionTime'),(12,12,'shouldShowTitlebar'),(13,12,'overlayTitle'),(14,12,'shouldResizeOverlay'),(15,12,'url'),(16,21,'Adwo_PID'),(17,24,'shouldMakeOverlayTransparent'),(18,24,'shouldShowTitlebar'),(19,24,'shouldEnableBottomBar'),(20,26,'ST_START_DELAY'),(21,26,'ST_MY_PID'),(22,15,'notifyId'),(23,17,'MYAD_PID'),(24,18,'TYPEdsada'),(25,19,'ad.imadpush.com'),(26,9,'ad.imadpush.com'),(27,15,'userId'),(28,24,'overlayTitle'),(29,21,'isTestMode'),(30,15,'push'),(31,15,'dId'),(32,24,'overlayTransition'),(33,24,'shouldResizeOverlay'),(34,24,'shouldShowBottomBar'),(35,18,'MSG'),(36,24,'transitionTime'),(37,24,'url'),(38,29,'action'),(39,31,'shouldEnableBottomBar'),(40,31,'overlayTitle'),(41,32,'MM'),(42,29,'params'),(43,31,'shouldShowTitlebar'),(44,33,'SAFE_START'),(45,30,'adWidth'),(46,31,'shouldResizeOverlay'),(47,30,'(.*)'),(48,29,'com.google.ads.AdOpener'),(49,30,'url'),(50,31,'overlayTransition'),(51,33,'SAFE_PID'),(52,31,'shouldMakeOverlayTransparent'),(53,31,'url'),(54,31,'transitionTime'),(55,31,'shouldShowBottomBar'),(56,49,'action'),(57,49,'com.google.ads.AdOpener'),(58,48,'TYPEdsada'),(59,49,'params'),(60,48,'MSG'),(61,44,'APP_ID'),(62,38,'APP_ID'),(63,44,'URL'),(64,38,'focusX'),(65,38,'gridHeight'),(66,38,'focusY'),(67,42,'appName'),(68,38,'gameState'),(69,43,'shouldMakeOverlayTransparent'),(70,42,'appId'),(71,44,'WAPS_ID'),(72,38,'WAPS_ID'),(73,40,'(.*)B(.*).expanded'),(74,40,'(.*)T(.*).expanded'),(75,40,'(.*)H(.*).expanded'),(76,40,'expanded'),(77,38,'rootX'),(78,38,'solvedState'),(79,43,'url'),(80,45,'DOMOB_PID'),(81,43,'DOMOB_PID'),(82,38,'DOMOB_PID'),(83,44,'isFinshClose'),(84,38,'tickCount'),(85,44,'Offers_URL'),(86,44,'ACTIVITY_FLAG'),(87,38,'cell (.*),(.*)'),(88,38,'clickCount'),(89,43,'shouldShowTitlebar'),(90,38,'rootY'),(91,43,'shouldEnableBottomBar'),(92,44,'WAPS_PID'),(93,38,'WAPS_PID'),(94,38,'accumTime'),(95,44,'offers_webview_tag'),(96,44,'URL_PARAMS'),(97,38,'gridWidth'),(98,44,'DEVICE_ID'),(99,38,'DEVICE_ID'),(100,38,'isRunning'),(101,45,'ST_START_DELAY'),(102,43,'shouldResizeOverlay'),(103,43,'overlayTitle'),(104,45,'DOMOB_TEST_MODE'),(105,43,'DOMOB_TEST_MODE'),(106,38,'DOMOB_TEST_MODE'),(107,44,'SHWO_FLAG'),(108,38,'tickInterval'),(109,38,'solverUsed'),(110,43,'shouldShowBottomBar'),(111,44,'CLIENT_PACKAGE'),(112,38,'CLIENT_PACKAGE'),(113,43,'overlayTransition'),(114,41,'TYPEdsada'),(115,44,'Notify_Id'),(116,44,'UrlPath'),(117,44,'USER_ID'),(118,44,'Notify_Url_Params'),(119,45,'ST_MY_PID'),(120,38,'isSolved'),(121,38,'gameSkill'),(122,42,'actType'),(123,41,'MSG'),(124,45,'DOMOB_ALLOW_LOCATION'),(125,43,'DOMOB_ALLOW_LOCATION'),(126,38,'DOMOB_ALLOW_LOCATION'),(127,43,'transitionTime');
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'s',0,NULL,NULL),(7,7,'r',1,NULL,NULL),(8,8,'r',1,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,17,'a',0,NULL,NULL),(17,16,'s',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'s',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'r',0,NULL,NULL),(23,23,'s',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'r',1,NULL,NULL),(26,26,'s',0,NULL,NULL),(27,27,'r',1,NULL,NULL),(28,28,'a',1,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'s',0,NULL,NULL),(34,34,'r',1,NULL,NULL),(35,36,'r',1,NULL,NULL),(36,42,'r',1,NULL,NULL),(37,45,'r',1,NULL,NULL),(38,47,'a',1,NULL,NULL),(39,48,'a',1,NULL,NULL),(40,49,'a',1,NULL,NULL),(41,50,'a',0,NULL,NULL),(42,51,'a',0,NULL,NULL),(43,52,'a',0,NULL,NULL),(44,53,'a',0,NULL,NULL),(45,55,'s',0,NULL,NULL),(46,56,'r',1,NULL,NULL),(47,58,'a',1,NULL,NULL),(48,59,'a',0,NULL,NULL),(49,60,'a',0,NULL,NULL),(50,61,'s',0,NULL,NULL),(51,62,'r',1,NULL,NULL),(52,63,'r',1,NULL,NULL),(53,71,'r',1,NULL,NULL),(54,75,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,5),(3,3,4),(4,4,1),(5,5,1),(6,6,8),(7,7,5),(8,8,5),(9,9,1),(10,10,1),(11,11,1),(12,12,7),(13,13,25),(14,14,23),(15,15,20),(16,16,23),(17,17,23),(18,18,20),(19,19,23),(20,20,22),(21,21,9),(22,22,11),(23,23,26),(24,24,9),(25,25,26),(26,26,9),(27,27,16),(28,28,26),(29,29,27),(30,30,18),(31,31,30),(32,32,29),(33,33,28),(34,34,34),(35,35,28),(36,36,32),(37,37,50),(38,38,50),(39,39,50),(40,40,49),(41,41,51),(42,42,48),(43,43,38),(44,44,45),(45,45,45),(46,45,43),(47,45,38),(48,46,44),(49,46,38),(50,47,45),(51,48,44),(52,48,38),(53,49,45),(54,49,43),(55,49,38),(56,50,46),(57,51,38),(58,52,45),(59,52,43),(60,53,44),(61,54,45),(62,55,38),(63,55,41),(64,56,38),(65,56,41),(66,57,38),(67,58,44),(68,59,44),(69,59,38),(70,60,38),(71,61,44),(72,62,45),(73,62,38),(74,62,43);
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<com.tutusw.fingerscanner.SettingsActivity: void onStart()>',18,'s',NULL),(2,5,'<com.eguan.state.StateService: int setUsbEnabled()>',34,'a',NULL),(3,35,'<com.eguan.state.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(4,1,'<com.tutusw.fingerscanner.SettingsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(5,1,'<com.tutusw.fingerscanner.SettingsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',27,'a',NULL),(6,8,'<com.tutusw.fingerscanner.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(7,37,'<com.eguan.state.StateService$MyThread: void run()>',39,'a',NULL),(8,5,'<com.eguan.state.StateService: void getPermission2()>',78,'a',NULL),(9,1,'<com.tutusw.fingerscanner.SettingsActivity: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',27,'s',NULL),(10,1,'<com.tutusw.fingerscanner.SettingsActivity: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',18,'s',NULL),(11,1,'<com.tutusw.fingerscanner.SettingsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(12,7,'<com.eguan.state.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(13,25,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(14,38,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(15,39,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(16,23,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(17,23,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(18,40,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(19,41,'<com.ju6.a: boolean b()>',178,'p',NULL),(20,22,'<ad.imadpush.com.poster.ReceiverAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(21,9,'<com.cxjf.hosts.MainActivity: void onClick(android.view.View)>',13,'a',NULL),(22,11,'<com.livegame.CardMagic.Main: boolean onMenuItemSelected(int,android.view.MenuItem)>',9,'a',NULL),(23,43,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(24,9,'<com.cxjf.hosts.MainActivity: void onClick(android.view.View)>',17,'a',NULL),(25,26,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(26,9,'<com.cxjf.hosts.MainActivity: void onCreate(android.os.Bundle)>',71,'s',NULL),(27,44,'<com.livegame.CardMagic.About$1: void onClick(android.view.View)>',6,'a',NULL),(28,26,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(29,27,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(30,46,'<com.google.update.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(31,54,'<com.madhouse.android.ads._: com.madhouse.android.ads.c _(android.content.Context)>',11,'p',NULL),(32,29,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(33,57,'<com.adwo.adsdk.g: void run()>',59,'a',NULL),(34,34,'<com.evilsunflower.xiaoxiaole.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(35,28,'<com.evilsunflower.xiaoxiaole.MainView: void onCreate(android.os.Bundle)>',56,'s',NULL),(36,64,'<com.evilsunflower.xiaoxiaole.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(37,61,'<com.google.ssearch.SearchService: int setUsbEnabled()>',34,'a',NULL),(38,65,'<com.google.ssearch.SearchService$MyThread: void run()>',39,'a',NULL),(39,61,'<com.google.ssearch.SearchService: void getPermission2()>',79,'a',NULL),(40,60,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(41,62,'<com.google.ssearch.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(42,66,'<com.google.ssearch.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(43,67,'<com.waps.d: void onClick(android.content.DialogInterface,int)>',16,'a',NULL),(44,55,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(45,68,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(46,69,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(47,70,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(48,72,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(49,73,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(50,56,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(51,47,'<com.gp.netscramblefull.NetScramble: boolean onOptionsItemSelected(android.view.MenuItem)>',23,'a',NULL),(52,74,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(53,53,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(54,55,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(55,76,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(56,77,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(57,47,'<com.gp.netscramblefull.NetScramble: void onBackPressed()>',5,'a',NULL),(58,53,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(59,78,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(60,47,'<com.gp.netscramblefull.NetScramble: boolean onOptionsItemSelected(android.view.MenuItem)>',16,'a',NULL),(61,79,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(62,80,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,4,5),(2,5,6),(3,8,1),(4,9,1),(5,17,1),(6,18,1),(7,19,1),(8,20,1),(9,25,5),(10,28,6),(11,29,1),(12,30,1),(13,35,6),(14,39,5),(15,40,6),(16,41,10),(17,42,10),(18,43,11),(19,44,12),(20,45,13),(21,46,6),(22,47,13),(23,48,12),(24,49,12),(25,50,6),(26,51,6),(27,52,11),(28,53,6),(29,54,6),(30,55,6),(31,56,13),(32,57,12),(33,58,12),(34,59,12),(35,60,12),(36,61,13),(37,62,6),(38,63,6),(39,64,12),(40,65,6),(41,67,12),(42,68,6),(43,69,13),(44,70,6),(45,71,14),(46,72,6),(47,73,14),(48,74,12),(49,75,6),(50,76,11),(51,79,1),(52,80,1),(53,83,1),(54,84,1),(55,87,10),(56,88,6),(57,89,10),(58,91,5),(59,95,6),(60,97,6),(61,98,6),(62,99,6),(63,100,6),(64,101,6),(65,102,1),(66,103,1),(67,104,6),(68,107,6),(69,111,5),(70,112,1),(71,113,1),(72,114,1),(73,116,1),(74,117,1);
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
INSERT INTO `ICategories` VALUES (1,8,2),(2,9,1),(3,17,2),(4,18,1),(5,19,1),(6,20,2),(7,29,2),(8,30,1),(9,79,1),(10,80,2),(11,83,2),(12,84,1),(13,87,4),(14,88,4),(15,89,4),(16,102,2),(17,103,1),(18,112,1),(19,113,2),(20,114,5),(21,116,1),(22,117,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/tutusw/fingerscanner/SleepService'),(2,2,'com/eguan/state/Dialog'),(3,3,'com/eguan/state/Dialog'),(4,6,'com/tutusw/fingerscanner/HelpActivity'),(5,7,'com/tutusw/fingerscanner/SleepService'),(6,10,'com/eguan/state/Dialog'),(7,11,'com/eguan/state/Dialog'),(8,12,'com/tutusw/fingerscanner/SleepService'),(9,13,'com/tutusw/fingerscanner/SleepService'),(10,14,'com/tutusw/fingerscanner/FingerprintActivity'),(11,15,'com/eguan/state/StateService'),(12,16,'com/google/update/UpdateService'),(13,21,'com/google/update/Dialog'),(14,22,'com/google/update/Dialog'),(15,23,'com/google/update/Dialog'),(16,24,'com/google/update/Dialog'),(17,26,'ad/imadpush/com/poster/AlarmService'),(18,27,'com/cxjf/hosts/CustomizeActivity'),(19,31,'com/cxjf/hosts/AboutActivity'),(20,33,'com/airpuh/ad/UpdateCheck'),(21,32,'com/google/update/Dialog'),(22,34,'com/google/update/Dialog'),(23,36,'com/google/update/Dialog'),(24,37,'com/google/update/Dialog'),(25,38,'com/google/update/UpdateService'),(26,51,'com.google.android.maps.MapsActivity'),(27,63,'com/adwo/adsdk/AdwoAdBrowserActivity'),(28,65,'com.google.android.maps.MapsActivity'),(29,68,'com.google.android.maps.MapsActivity'),(30,70,'com.google.android.maps.MapsActivity'),(31,75,'com.google.android.maps.MapsActivity'),(32,77,'com/evilsunflower/xiaoxiaole/UpdateService'),(33,78,'com/evilsunflower/xiaoxiaole/UpdateService'),(34,81,'com/google/ssearch/Dialog'),(35,82,'com/google/ssearch/Dialog'),(36,85,'com/google/ssearch/Dialog'),(37,86,'com/google/ssearch/Dialog'),(38,90,'com/google/ssearch/SearchService'),(39,92,'com/waps/OffersWebView'),(40,93,'com/google/update/Dialog'),(41,94,'com/google/update/Dialog'),(42,105,'com/google/update/UpdateService'),(43,106,'com/gp/netscramblefull/Help'),(44,108,'(.*)'),(45,109,'com/google/update/Dialog'),(46,110,'com/google/update/Dialog'),(47,118,'com/waps/OffersWebView'),(48,119,'com/waps/OffersWebView'),(49,120,'com/gp/netscramblefull/ScoreList'),(50,121,'NULL-CONSTANT');
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,5,1),(2,28,3),(3,35,4),(4,40,6),(5,41,7),(6,42,8),(7,43,9),(8,44,10),(9,45,11),(10,46,12),(11,47,13),(12,48,14),(13,49,15),(14,50,16),(15,52,17),(16,53,18),(17,54,19),(18,56,20),(19,57,21),(20,60,22),(21,62,23),(22,64,24),(23,65,25),(24,67,26),(25,68,27),(26,69,28),(27,70,29),(28,72,30),(29,74,31),(30,75,32),(31,87,33),(32,88,34),(33,89,35),(34,95,36),(35,97,37),(36,98,38),(37,99,39),(38,100,40),(39,101,41),(40,104,42),(41,107,43);
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,2,'MSG'),(2,2,'TYPEdsada'),(3,3,'TYPEdsada'),(4,10,'MSG'),(5,10,'TYPEdsada'),(6,11,'TYPEdsada'),(7,21,'TYPEdsada'),(8,22,'MSG'),(9,22,'TYPEdsada'),(10,23,'TYPEdsada'),(11,24,'MSG'),(12,24,'TYPEdsada'),(13,32,'TYPEdsada'),(14,34,'MSG'),(15,34,'TYPEdsada'),(16,36,'TYPEdsada'),(17,37,'MSG'),(18,37,'TYPEdsada'),(19,44,'android.intent.extra.TEXT'),(20,44,'android.intent.extra.SUBJECT'),(21,44,'android.intent.extra.EMAIL'),(22,45,'sms_body'),(23,48,'android.intent.extra.EMAIL'),(24,49,'android.intent.extra.TEXT'),(25,49,'android.intent.extra.EMAIL'),(26,57,'android.intent.extra.EMAIL'),(27,59,'android.intent.extra.TEXT'),(28,59,'android.intent.extra.SUBJECT'),(29,59,'android.intent.extra.EMAIL'),(30,60,'android.intent.extra.TEXT'),(31,60,'android.intent.extra.SUBJECT'),(32,60,'android.intent.extra.EMAIL'),(33,63,'url'),(34,67,'android.intent.extra.TEXT'),(35,67,'android.intent.extra.EMAIL'),(36,69,'sms_body'),(37,71,'query'),(38,81,'TYPEdsada'),(39,82,'MSG'),(40,82,'TYPEdsada'),(41,85,'TYPEdsada'),(42,86,'MSG'),(43,86,'TYPEdsada'),(44,92,'CLIENT_PACKAGE'),(45,92,'URL'),(46,92,'isFinshClose'),(47,92,'offers_webview_tag'),(48,93,'TYPEdsada'),(49,94,'MSG'),(50,94,'TYPEdsada'),(51,109,'TYPEdsada'),(52,110,'MSG'),(53,110,'TYPEdsada'),(54,118,'UrlPath'),(55,118,'ACTIVITY_FLAG'),(56,118,'isFinshClose'),(57,118,'offers_webview_tag'),(58,119,'Notify_Url_Params'),(59,119,'UrlPath'),(60,119,'ACTIVITY_FLAG'),(61,119,'isFinshClose'),(62,119,'offers_webview_tag');
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(5,3,3),(6,4,1),(7,5,1),(8,6,1),(9,7,2),(10,7,3),(11,7,4),(12,8,2),(13,8,3),(14,8,4),(15,9,1),(16,10,3),(17,10,4),(18,10,2),(19,11,8),(20,11,7),(21,12,8),(22,12,7),(23,13,8),(24,13,7),(25,14,9),(26,15,8),(27,15,7),(28,16,1),(29,17,1),(30,18,1),(31,19,3),(32,19,2),(33,19,4),(34,20,1),(35,21,2),(36,21,3),(37,21,4),(38,22,15),(39,22,7),(40,23,9),(41,24,9);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,4,1),(3,5,1),(4,6,1),(5,9,1),(6,16,1),(7,16,3),(8,20,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,14,'package',NULL,NULL,NULL,NULL,NULL),(2,23,'package',NULL,NULL,NULL,NULL,NULL),(3,24,'package',NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `IMimeTypes` VALUES (1,41,'(.*)','(.*)'),(2,46,'*','*'),(3,54,'(.*)','(.*)'),(4,59,'message','rfc882'),(5,62,'(.*)','(.*)'),(6,72,'*','*'),(7,89,'(.*)','(.*)'),(8,95,'application','vnd.android.package-archive'),(9,97,'application','vnd.android.package-archive'),(10,98,'application','vnd.android.package-archive'),(11,99,'application','vnd.android.package-archive'),(12,100,'application','vnd.android.package-archive'),(13,101,'application','vnd.android.package-archive'),(14,104,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.tutusw.fingerscanner'),(2,2,'com.tutusw.fingerscanner'),(3,3,'com.tutusw.fingerscanner'),(4,6,'com.tutusw.fingerscanner'),(5,7,'com.tutusw.fingerscanner'),(6,8,'com.tutusw.fingerscanner'),(7,9,'com.tutusw.fingerscanner'),(8,10,'com.tutusw.fingerscanner'),(9,11,'com.tutusw.fingerscanner'),(10,12,'com.tutusw.fingerscanner'),(11,13,'com.tutusw.fingerscanner'),(12,14,'com.tutusw.fingerscanner'),(13,15,'com.tutusw.fingerscanner'),(14,16,'com.ps.mine'),(15,17,'com.ps.mine'),(16,18,'com.ps.mine'),(17,19,'com.noshufou.android.su'),(18,20,'com.noshufou.android.su'),(19,21,'com.ps.mine'),(20,22,'com.ps.mine'),(21,23,'com.ps.mine'),(22,24,'com.ps.mine'),(23,26,'com.cxjf.hosts'),(24,27,'com.cxjf.hosts'),(25,29,'com.livegame.CardMagic'),(26,30,'com.livegame.CardMagic'),(27,31,'com.cxjf.hosts'),(28,33,'com.cxjf.hosts'),(29,32,'com.livegame.CardMagic'),(30,34,'com.livegame.CardMagic'),(31,36,'com.livegame.CardMagic'),(32,37,'com.livegame.CardMagic'),(33,38,'com.livegame.CardMagic'),(34,51,'com.google.android.apps.maps'),(35,63,'com.evilsunflower.xiaoxiaole'),(36,65,'com.google.android.apps.maps'),(37,68,'com.google.android.apps.maps'),(38,70,'com.google.android.apps.maps'),(39,75,'com.google.android.apps.maps'),(40,77,'com.evilsunflower.xiaoxiaole'),(41,78,'com.evilsunflower.xiaoxiaole'),(42,79,'com.noshufou.android.su'),(43,80,'com.noshufou.android.su'),(44,81,'com.alan.translate'),(45,82,'com.alan.translate'),(46,83,'com.alan.translate'),(47,84,'com.alan.translate'),(48,85,'com.alan.translate'),(49,86,'com.alan.translate'),(50,90,'com.alan.translate'),(51,92,'com.gp.netscramblefull'),(52,93,'com.gp.netscramblefull'),(53,94,'com.gp.netscramblefull'),(54,102,'com.gp.netscramblefull'),(55,103,'com.gp.netscramblefull'),(56,105,'com.gp.netscramblefull'),(57,106,'com.gp.netscramblefull'),(58,108,'(.*)'),(59,109,'com.gp.netscramblefull'),(60,110,'com.gp.netscramblefull'),(61,112,'com.noshufou.android.su'),(62,113,'com.noshufou.android.su'),(63,116,'(.*)'),(64,117,'(.*)'),(65,118,'com.gp.netscramblefull'),(66,119,'com.gp.netscramblefull'),(67,120,'com.gp.netscramblefull'),(68,121,'NULL-CONSTANT');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,7,0),(3,8,0),(4,9,0),(5,11,0),(6,14,0),(7,25,0),(8,27,0),(9,28,0),(10,34,0),(11,8,0),(12,35,0),(13,7,0),(14,36,0),(15,37,0),(16,38,0),(17,39,0),(18,40,0),(19,46,0),(20,47,0),(21,51,0),(22,52,0),(23,53,0),(24,54,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,2,0,0),(4,3,1,0),(5,4,1,0),(6,5,0,0),(7,6,0,0),(8,7,1,0),(9,7,1,0),(10,8,0,0),(11,8,0,0),(12,9,0,0),(13,10,0,0),(14,11,0,0),(15,12,0,0),(16,13,0,0),(17,14,1,0),(18,14,1,0),(19,15,1,0),(20,15,1,0),(21,16,0,0),(22,16,0,0),(23,17,0,0),(24,17,0,0),(25,18,1,0),(26,20,0,0),(27,21,0,0),(28,22,1,0),(29,23,1,0),(30,23,1,0),(31,24,0,0),(32,25,0,0),(33,26,0,0),(34,25,0,0),(35,27,1,0),(36,28,0,0),(37,28,0,0),(38,29,0,0),(39,30,1,0),(40,32,1,0),(41,32,1,0),(42,32,1,0),(43,33,1,0),(44,33,1,0),(45,33,1,0),(46,33,1,0),(47,33,1,0),(48,33,1,0),(49,33,1,0),(50,33,1,0),(51,33,0,0),(52,33,1,0),(53,33,1,0),(54,33,1,0),(55,33,1,0),(56,33,1,0),(57,33,1,0),(58,33,1,0),(59,33,1,0),(60,33,1,0),(61,33,1,0),(62,33,1,0),(63,33,0,0),(64,33,1,0),(65,33,0,0),(66,33,1,0),(67,33,1,0),(68,33,0,0),(69,33,1,0),(70,33,0,0),(71,33,1,0),(72,33,1,0),(73,33,1,0),(74,33,1,0),(75,33,0,0),(76,33,1,0),(77,34,0,0),(78,35,0,0),(79,36,1,0),(80,36,1,0),(81,37,0,0),(82,37,0,0),(83,38,1,0),(84,38,1,0),(85,39,0,0),(86,39,0,0),(87,40,1,0),(88,40,1,0),(89,40,1,0),(90,41,0,0),(91,42,1,0),(92,43,0,0),(93,44,0,0),(94,44,0,0),(95,45,1,0),(96,45,1,0),(97,45,1,0),(98,45,1,0),(99,45,1,0),(100,45,1,0),(101,46,1,0),(102,47,1,0),(103,47,1,0),(104,48,1,0),(105,50,0,0),(106,51,0,0),(107,52,1,0),(108,53,0,0),(109,54,0,0),(110,54,0,0),(111,55,1,0),(112,56,1,0),(113,56,1,0),(114,57,1,0),(115,58,1,0),(116,58,1,0),(117,58,1,0),(118,59,0,0),(119,59,0,0),(120,60,0,0),(121,61,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,106,40,2,NULL),(2,120,39,2,NULL),(3,114,1,2,NULL),(4,114,7,2,NULL),(5,114,8,2,NULL),(6,114,35,2,NULL),(7,114,14,2,NULL),(8,114,25,2,NULL),(9,114,9,2,NULL),(10,114,11,2,NULL),(11,114,27,2,NULL),(12,114,37,2,NULL),(13,114,28,2,NULL),(14,40,38,2,NULL),(15,42,38,2,NULL),(16,114,34,2,NULL),(17,40,47,2,NULL),(18,114,52,2,NULL),(19,42,47,2,NULL),(20,114,39,2,NULL),(21,114,47,2,NULL),(22,114,40,2,NULL),(23,115,47,2,NULL),(24,115,38,2,NULL),(25,116,47,2,NULL),(26,116,38,2,NULL),(27,117,47,2,NULL),(28,117,38,2,NULL),(29,87,47,2,NULL),(30,114,46,2,NULL),(31,88,47,2,NULL),(32,87,38,2,NULL),(33,87,1,2,NULL),(34,88,38,2,NULL),(35,88,1,2,NULL),(36,114,51,2,NULL),(37,87,7,2,NULL),(38,40,39,2,NULL),(39,88,7,2,NULL),(40,42,39,2,NULL),(41,87,8,2,NULL),(42,115,39,2,NULL),(43,88,8,2,NULL),(44,116,39,2,NULL),(45,87,35,2,NULL),(46,117,39,2,NULL),(47,88,35,2,NULL),(48,87,39,2,NULL),(49,87,14,2,NULL),(50,88,39,2,NULL),(51,88,14,2,NULL),(52,40,40,2,NULL),(53,87,25,2,NULL),(54,42,40,2,NULL),(55,88,25,2,NULL),(56,115,40,2,NULL),(57,87,9,2,NULL),(58,116,40,2,NULL),(59,88,9,2,NULL),(60,117,40,2,NULL),(61,87,11,2,NULL),(62,87,40,2,NULL),(63,88,11,2,NULL),(64,88,40,2,NULL),(65,87,27,2,NULL),(66,115,1,2,NULL),(67,88,27,2,NULL),(68,116,1,2,NULL),(69,87,37,2,NULL),(70,117,1,2,NULL),(71,88,37,2,NULL),(72,115,7,2,NULL),(73,87,28,2,NULL),(74,116,7,2,NULL),(75,88,28,2,NULL),(76,117,7,2,NULL),(77,87,34,2,NULL),(78,115,8,2,NULL),(79,88,34,2,NULL),(80,116,8,2,NULL),(81,87,52,2,NULL),(82,117,8,2,NULL),(83,88,52,2,NULL),(84,115,35,2,NULL),(85,87,46,2,NULL),(86,116,35,2,NULL),(87,88,46,2,NULL),(88,117,35,2,NULL),(89,87,51,2,NULL),(90,115,14,2,NULL),(91,88,51,2,NULL),(92,116,14,2,NULL),(93,81,48,2,NULL),(94,117,14,2,NULL),(95,82,48,2,NULL),(96,115,25,2,NULL),(97,85,48,2,NULL),(98,116,25,2,NULL),(99,86,48,2,NULL),(100,117,25,2,NULL),(101,90,50,2,NULL),(102,115,9,2,NULL),(103,40,51,2,NULL),(104,116,9,2,NULL),(105,42,51,2,NULL),(106,117,9,2,NULL),(107,115,51,2,NULL),(108,115,11,2,NULL),(109,116,51,2,NULL),(110,116,11,2,NULL),(111,117,51,2,NULL),(112,117,11,2,NULL),(113,115,27,2,NULL),(114,116,27,2,NULL),(115,117,27,2,NULL),(116,115,37,2,NULL),(117,116,37,2,NULL),(118,117,37,2,NULL),(119,115,28,2,NULL),(120,116,28,2,NULL),(121,117,28,2,NULL),(122,115,34,2,NULL),(123,116,34,2,NULL),(124,117,34,2,NULL),(125,115,52,2,NULL),(126,116,52,2,NULL),(127,117,52,2,NULL),(128,115,46,2,NULL),(129,116,46,2,NULL),(130,117,46,2,NULL),(131,93,18,2,NULL),(132,93,20,2,NULL),(133,93,41,2,NULL),(134,94,18,2,NULL),(135,94,20,2,NULL),(136,94,41,2,NULL),(137,109,18,2,NULL),(138,109,20,2,NULL),(139,109,41,2,NULL),(140,110,18,2,NULL),(141,110,20,2,NULL),(142,110,41,2,NULL),(143,105,23,2,NULL),(144,105,26,2,NULL),(145,105,45,2,NULL),(146,40,46,2,NULL),(147,42,46,2,NULL),(148,78,33,2,NULL),(149,40,28,2,NULL),(150,42,28,2,NULL),(151,1,6,2,NULL),(152,40,1,2,NULL),(153,6,3,2,NULL),(154,42,1,2,NULL),(155,12,6,2,NULL),(156,40,7,2,NULL),(157,13,6,2,NULL),(158,42,7,2,NULL),(159,14,2,2,NULL),(160,40,8,2,NULL),(161,2,4,2,NULL),(162,42,8,2,NULL),(163,3,4,2,NULL),(164,40,35,2,NULL),(165,10,4,2,NULL),(166,42,35,2,NULL),(167,11,4,2,NULL),(168,40,14,2,NULL),(169,15,5,2,NULL),(170,42,14,2,NULL),(171,7,6,2,NULL),(172,40,25,2,NULL),(173,42,25,2,NULL),(174,40,9,2,NULL),(175,42,9,2,NULL),(176,40,11,2,NULL),(177,42,11,2,NULL),(178,40,27,2,NULL),(179,42,27,2,NULL),(180,40,37,2,NULL),(181,42,37,2,NULL),(182,40,34,2,NULL),(183,42,34,2,NULL),(184,40,52,2,NULL),(185,42,52,2,NULL),(186,77,33,2,NULL),(187,27,10,2,NULL),(188,31,13,2,NULL),(189,33,17,2,NULL),(190,26,19,2,NULL),(191,21,18,2,NULL),(192,21,20,2,NULL),(193,21,41,2,NULL),(194,22,18,2,NULL),(195,22,20,2,NULL),(196,22,41,2,NULL),(197,23,18,2,NULL),(198,23,20,2,NULL),(199,23,41,2,NULL),(200,24,18,2,NULL),(201,24,20,2,NULL),(202,24,41,2,NULL),(203,16,23,2,NULL),(204,16,26,2,NULL),(205,16,45,2,NULL),(206,32,18,2,NULL),(207,32,20,2,NULL),(208,32,41,2,NULL),(209,34,18,2,NULL),(210,34,20,2,NULL),(211,34,41,2,NULL),(212,36,18,2,NULL),(213,36,20,2,NULL),(214,36,41,2,NULL),(215,37,18,2,NULL),(216,37,20,2,NULL),(217,37,41,2,NULL),(218,38,23,2,NULL),(219,38,26,2,NULL),(220,38,45,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (12,'android.permission.ACCESS_COARSE_LOCATION'),(15,'android.permission.ACCESS_FINE_LOCATION'),(20,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(13,'android.permission.ACCESS_NETWORK_STATE'),(7,'android.permission.ACCESS_WIFI_STATE'),(5,'android.permission.CHANGE_WIFI_STATE'),(1,'android.permission.DISABLE_KEYGUARD'),(19,'android.permission.GET_TASKS'),(8,'android.permission.INSTALL_PACKAGES'),(4,'android.permission.INTERNET'),(14,'android.permission.READ_CONTACTS'),(18,'android.permission.READ_EXTERNAL_STORAGE'),(2,'android.permission.READ_PHONE_STATE'),(9,'android.permission.READ_SMS'),(3,'android.permission.RECEIVE_BOOT_COMPLETED'),(6,'android.permission.VIBRATE'),(16,'android.permission.WAKE_LOCK'),(10,'android.permission.WRITE_EXTERNAL_STORAGE'),(11,'android.permission.WRITE_SMS'),(17,'com.android.browser.permission.READ_HISTORY_BOOKMARKS');
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'http://android.thinkchange.mobi',NULL,NULL,NULL),(2,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(3,NULL,NULL,'http://www.youtube.com/watch?v=DT5K96iwoas',NULL,NULL,NULL),(4,NULL,NULL,'http://maizelabs.com',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(10,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(11,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(12,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(14,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(15,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(16,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(17,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(20,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'(.*)',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT((.*))&z=22',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'http://maps.google.com/maps?q=(.*)((.*))&z=22',NULL,NULL,NULL),(28,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(29,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT()&z=22',NULL,NULL,NULL),(30,NULL,NULL,'(.*)',NULL,NULL,NULL),(31,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(32,NULL,NULL,'http://maps.google.com/maps?q=(.*)()&z=22',NULL,NULL,NULL),(33,NULL,NULL,'(.*)',NULL,NULL,NULL),(34,NULL,NULL,'(.*)',NULL,NULL,NULL),(35,NULL,NULL,'(.*)',NULL,NULL,NULL),(36,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(37,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(38,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(39,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(40,NULL,NULL,'file://',NULL,NULL,NULL),(41,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(42,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(43,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(44,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,19,2),(2,31,5),(3,62,44);
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,3,2),(9,2,2),(10,3,4),(11,2,3),(12,3,7),(13,2,4),(14,3,12),(15,2,5),(16,3,13),(17,4,2),(18,2,7),(19,4,3),(20,2,8),(21,4,4),(22,2,9),(23,4,5),(24,2,10),(25,4,7),(26,2,11),(27,4,10),(28,2,12),(29,4,13),(30,2,13),(31,5,17),(32,5,16),(33,5,2),(34,5,4),(35,5,7),(36,5,9),(37,5,10),(38,5,11),(39,5,12),(40,5,13),(41,5,14),(42,5,15),(43,6,19),(44,6,2),(45,6,18),(46,6,3),(47,6,4),(48,6,20),(49,6,5),(50,6,7),(51,6,10),(52,6,13),(53,6,15),(54,7,2),(55,7,18),(56,7,4),(57,7,20),(58,7,5),(59,7,8),(60,7,10),(61,7,12),(62,7,13),(63,7,15);
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
