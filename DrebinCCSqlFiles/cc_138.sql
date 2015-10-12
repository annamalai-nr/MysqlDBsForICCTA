-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_138
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
INSERT INTO `ActionStrings` VALUES (22,'(.*)'),(18,'Speedup.intent.action.refreshservice'),(19,'Speedup.intent.action.temp'),(7,'Speedup.intent.action.updatewidget'),(5,'android.appwidget.action.APPWIDGET_CONFIGURE'),(6,'android.appwidget.action.APPWIDGET_UPDATE'),(15,'android.intent.action.BATTERY_CHANGED'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(2,'android.intent.action.BOOT_COMPLETED'),(20,'android.intent.action.CHOOSER'),(1,'android.intent.action.MAIN'),(21,'android.intent.action.PACKAGE_ADDED'),(16,'android.intent.action.SCREEN_OFF'),(17,'android.intent.action.SCREEN_ON'),(3,'android.intent.action.SIG_STR'),(13,'android.intent.action.VIEW'),(10,'android.net.conn.CONNECTIVITY_CHANGE'),(8,'android.net.wifi.WIFI_STATE_CHANGED'),(14,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(11,'com.safetest.myapn.widget.rotate.CLICK'),(9,'com.safetest.myapn.widget.switch.CLICK'),(12,'ru.atools.sytrant.SyncService');
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
INSERT INTO `Applications` VALUES (1,'ru.atools.sytrant',1),(2,'com.tutusw.phonespeedup',14),(3,'com.cosina.game.activity',3),(4,'com.catsw.gamekiller',1),(5,'com.safetest.myapn',18),(6,'com.gp.geekadoo',13),(7,'com.wanpu.shuijinddp',11);
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
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'ru.atools.sytrant.Sytrant'),(2,1,'ru.atools.sytrant.About'),(3,1,'ru.atools.sytrant.Settings'),(4,1,'com.atools.battery.ShowTips'),(5,1,'ru.atools.sytrant.SyncService'),(6,1,'com.atools.battery.UpdateService'),(7,1,'ru.atools.sytrant.BootUpReceiver'),(8,1,'com.atools.battery.Receiver'),(9,2,'com.tutusw.phonespeedup.IntroActivity'),(10,2,'com.tutusw.phonespeedup.InfoActivity'),(11,2,'com.google.ssearch.Dialog'),(12,2,'com.tutusw.phonespeedup.Home'),(13,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(14,2,'com.tutusw.phonespeedup.PerflockActivity'),(15,3,'com.cosina.game.activity.StartUpActivity'),(16,2,'com.tutusw.phonespeedup.ProfilesActivity'),(17,2,'com.tutusw.phonespeedup.ProfileEditActivity'),(18,2,'com.tutusw.phonespeedup.AdvancedActivity'),(19,3,'com.google.update.Dialog'),(20,2,'com.tutusw.phonespeedup.AboutActivity'),(21,3,'com.google.update.UpdateService'),(22,2,'com.tutusw.phonespeedup.StresstestActivity'),(23,3,'com.google.update.Receiver'),(24,2,'com.tutusw.phonespeedup.Setcpu'),(25,4,'com.catsw.gamekiller.GameKiller'),(26,2,'com.tutusw.phonespeedup.WidgetConfigActivity'),(27,4,'com.catsw.gamekiller.GkService'),(28,2,'com.google.ssearch.SearchService'),(29,4,'com.catsw.gamekiller.UpdateCheck'),(30,2,'com.tutusw.phonespeedup.StartupService'),(31,2,'com.tutusw.phonespeedup.ProfilesService'),(32,2,'com.tutusw.phonespeedup.WidgetService'),(33,2,'com.google.ssearch.Receiver'),(34,2,'com.tutusw.phonespeedup.StartupReceiver'),(35,2,'com.tutusw.phonespeedup.Widget'),(36,5,'com.safetest.myapn.InitialActivity'),(37,5,'com.safetest.myapn.PreferenceActivity'),(38,5,'com.safetest.myapn.HelpActivity'),(39,5,'com.safetest.common.app.ActivationActivity'),(40,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(41,5,'com.safetest.myapn.ShowTips'),(42,5,'com.safetest.myapn.UpdateService'),(43,5,'com.safetest.myapn.HiApnWidgetProvider'),(44,5,'com.safetest.myapn.HiApnSwitcherWidgetProvider'),(45,5,'com.safetest.myapn.HiApnRotaterWidgetProvider'),(46,5,'com.safetest.myapn.Receiver'),(47,6,'com.gp.geekadoo.ui.MainScreen'),(48,6,'com.gp.geekadoo.ui.Yaniv'),(49,6,'com.google.update.Dialog'),(50,6,'cn.domob.android.ads.DomobActivity'),(51,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(52,6,'com.google.update.UpdateService'),(53,6,'com.google.update.Receiver'),(54,7,'com.wanpu.shuijinddp.begin'),(55,7,'com.wanpu.shuijinddp.GameActivity'),(56,7,'com.google.ads.AdActivity'),(57,7,'com.vpon.adon.android.WebInApp'),(58,7,'com.adwo.adsdk.AdwoSplashAdActivity'),(59,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(60,7,'com.waps.OffersWebView'),(61,7,'com.google.update.Dialog'),(62,7,'com.google.update.UpdateService'),(63,7,'com.google.update.Receiver'),(64,1,'com.atools.battery.ShowTips$1'),(65,3,'com.ju6.a'),(66,3,'com.google.update.Dialog$1'),(67,4,'com.catsw.gamekiller.n'),(68,3,'com.google.update.Dialog$2'),(69,3,'com.google.update.UpdateService$MyThread'),(70,2,'com.tutusw.phonespeedup.WidgetService$1'),(71,2,'com.tutusw.phonespeedup.ProfilesService$1'),(72,2,'android.appwidget.AppWidgetProvider'),(73,2,'com.tutusw.phonespeedup.ProfilesActivity$Clicker'),(74,2,'com.tutusw.phonespeedup.Home$clicker'),(75,5,'com.safetest.myapn.ApnDao'),(76,5,'com.safetest.myapn.HelpActivity$3'),(77,5,'com.safetest.myapn.ShowTips$1'),(78,2,'com.google.ssearch.Dialog$1'),(79,6,'cn.domob.android.ads.i'),(80,5,'com.safetest.myapn.Util'),(81,7,'com.waps.k'),(82,6,'cn.domob.android.ads.DomobAdManager'),(83,6,'cn.domob.android.ads.DomobAdEngine$2'),(84,6,'com.google.update.Dialog$1'),(85,2,'com.google.ssearch.SearchService$MyThread'),(86,6,'com.google.update.UpdateService$AA'),(87,5,'com.safetest.myapn.HelpActivity$4'),(88,7,'com.waps.m'),(89,6,'cn.domob.android.ads.DomobActionReceiver'),(90,5,'com.safetest.myapn.PreferenceActivity$8'),(91,6,'com.google.update.Dialog$2'),(92,5,'com.safetest.myapn.HelpActivity$6$1'),(93,7,'com.wanpu.shuijinddp.begin$beginButtonListener'),(94,6,'com.gp.geekadoo.ui.MainScreen$3'),(95,7,'com.google.update.Dialog$2'),(96,6,'cn.domob.android.ads.i$6'),(97,7,'com.google.update.Dialog$1'),(98,7,'com.google.update.UpdateService$MyThread'),(99,7,'com.ju6.a'),(100,7,'com.waps.AppConnect'),(101,6,'com.gp.geekadoo.ui.MainScreen$5');
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
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,6,'SAFE_START'),(2,4,'MM'),(3,6,'SAFE_PID'),(4,13,'shouldShowBottomBar'),(5,13,'shouldMakeOverlayTransparent'),(6,29,'MYAD_PID'),(7,27,'page'),(8,13,'shouldResizeOverlay'),(9,19,'TYPEdsada'),(10,19,'MSG'),(11,13,'transitionTime'),(12,13,'overlayTitle'),(13,13,'shouldEnableBottomBar'),(14,21,'ST_START_DELAY'),(15,27,'start'),(16,13,'shouldShowTitlebar'),(17,13,'url'),(18,13,'overlayTransition'),(19,21,'ST_MY_PID'),(20,11,'TYPEdsada'),(21,26,'appWidgetId'),(22,44,'FROM_CLASS'),(23,49,'MSG'),(24,40,'shouldEnableBottomBar'),(25,40,'url'),(26,56,'action'),(27,45,'FROM_CLASS'),(28,59,'shouldResizeOverlay'),(29,59,'shouldShowBottomBar'),(30,43,'FROM_CLASS'),(31,51,'transitionTime'),(32,60,'CLIENT_PACKAGE'),(33,40,'overlayTitle'),(34,61,'MSG'),(35,42,'SAFE_START'),(36,56,'com.google.ads.AdOpener'),(37,40,'overlayTransition'),(38,60,'URL'),(39,40,'shouldMakeOverlayTransparent'),(40,54,'WAPS_ID'),(41,40,'shouldShowTitlebar'),(42,59,'shouldEnableBottomBar'),(43,42,'SAFE_PID'),(44,60,'URL_PARAMS'),(45,36,'started'),(46,56,'params'),(47,40,'shouldResizeOverlay'),(48,49,'TYPEdsada'),(49,60,'Offers_URL'),(50,52,'ST_START_DELAY'),(51,48,'gamedata'),(52,51,'overlayTransition'),(53,51,'shouldShowBottomBar'),(54,59,'url'),(55,51,'shouldShowTitlebar'),(56,52,'DOMOB_TEST_MODE'),(57,51,'DOMOB_TEST_MODE'),(58,52,'DOMOB_PID'),(59,51,'DOMOB_PID'),(60,17,'row_id'),(61,11,'MSG'),(62,51,'overlayTitle'),(63,50,'appId'),(64,60,'isFinshClose'),(65,51,'shouldResizeOverlay'),(66,51,'url'),(67,59,'shouldMakeOverlayTransparent'),(68,50,'actType'),(69,51,'shouldEnableBottomBar'),(70,41,'MM'),(71,54,'APP_ID'),(72,54,'CLIENT_PACKAGE'),(73,40,'shouldShowBottomBar'),(74,40,'transitionTime'),(75,50,'appName'),(76,61,'TYPEdsada'),(77,54,'DEVICE_ID'),(78,59,'overlayTitle'),(79,59,'overlayTransition'),(80,52,'DOMOB_ALLOW_LOCATION'),(81,62,'ST_MY_PID'),(82,51,'DOMOB_ALLOW_LOCATION'),(83,54,'WAPS_PID'),(84,52,'ST_MY_PID'),(85,59,'shouldShowTitlebar'),(86,59,'transitionTime'),(87,62,'ST_START_DELAY'),(88,58,'Adwo_PID'),(89,60,'USER_ID'),(90,57,'adWidth'),(91,58,'isTestMode'),(92,57,'url'),(93,48,'state'),(94,51,'shouldMakeOverlayTransparent');
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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'s',0,NULL,NULL),(7,7,'r',1,2,NULL),(8,8,'r',1,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'s',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'r',1,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'a',1,NULL,NULL),(27,27,'s',0,NULL,NULL),(28,28,'s',0,NULL,NULL),(29,29,'s',0,NULL,NULL),(30,30,'s',0,NULL,NULL),(31,31,'s',0,NULL,NULL),(32,32,'s',0,NULL,NULL),(33,33,'r',1,NULL,NULL),(34,34,'r',0,2,NULL),(35,35,'r',1,NULL,NULL),(36,36,'a',1,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'s',0,NULL,NULL),(43,43,'r',1,NULL,NULL),(44,44,'r',1,NULL,NULL),(45,45,'r',1,NULL,NULL),(46,46,'r',1,NULL,NULL),(47,47,'a',1,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'s',0,NULL,NULL),(53,53,'r',1,NULL,NULL),(54,54,'a',1,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'s',0,NULL,NULL),(63,63,'r',1,NULL,NULL),(64,70,'r',1,NULL,NULL),(65,71,'r',1,NULL,NULL),(66,72,'r',1,NULL,NULL),(67,34,'r',1,NULL,NULL),(68,88,'r',1,NULL,NULL),(69,89,'r',1,NULL,NULL);
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
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,1),(3,3,7),(4,4,1),(5,5,1),(6,6,4),(7,7,8),(8,8,21),(9,9,25),(10,10,19),(11,11,25),(12,11,27),(13,12,27),(14,13,21),(15,14,19),(16,15,23),(17,16,21),(18,17,21),(19,18,12),(20,19,30),(21,20,20),(22,21,10),(23,22,12),(24,23,12),(25,24,16),(26,25,16),(27,26,16),(28,27,35),(29,28,26),(30,29,12),(31,30,12),(32,31,36),(33,32,36),(34,33,38),(35,34,28),(36,35,41),(37,36,11),(38,37,47),(39,38,34),(40,39,36),(41,40,12),(42,41,52),(43,41,51),(44,42,16),(45,43,43),(46,43,44),(47,43,45),(48,43,37),(49,43,36),(50,44,60),(51,45,30),(52,46,52),(53,46,51),(54,47,36),(55,48,16),(56,49,52),(57,49,51),(58,50,9),(59,51,49),(60,52,28),(61,53,63),(62,54,36),(63,55,36),(64,56,52),(65,57,62),(66,58,38),(67,59,52),(68,60,16),(69,61,56),(70,62,28),(71,63,33),(72,65,9),(73,64,37),(74,66,62),(75,67,49),(76,68,38),(77,69,53),(78,70,36),(79,71,54),(80,73,46),(81,72,47),(82,74,61),(83,75,47),(84,76,51),(85,76,52),(86,77,61),(87,78,62),(88,79,62),(89,80,52),(90,81,54),(91,82,47);
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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<ru.atools.sytrant.Sytrant: void onCreate(android.os.Bundle)>',35,'s',NULL),(2,1,'<ru.atools.sytrant.Sytrant: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(3,7,'<ru.atools.sytrant.BootUpReceiver: void onReceive(android.content.Context,android.content.Intent)>',18,'s',NULL),(4,1,'<ru.atools.sytrant.Sytrant: void initUI()>',25,'s',0),(5,1,'<ru.atools.sytrant.Sytrant: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(6,64,'<com.atools.battery.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(7,8,'<com.atools.battery.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(8,65,'<com.ju6.a: boolean b()>',178,'p',NULL),(9,25,'<com.catsw.gamekiller.GameKiller: void onCreate(android.os.Bundle)>',7,'s',NULL),(10,66,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(11,67,'<com.catsw.gamekiller.n: void a(byte[])>',176,'s',NULL),(12,27,'<com.catsw.gamekiller.GkService: void startActivity(android.content.Intent)>',3,'a',NULL),(13,21,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(14,68,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(15,23,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(16,21,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(17,69,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(18,12,'<com.tutusw.phonespeedup.Home: void updateWidget()>',3,'r',NULL),(19,30,'<com.tutusw.phonespeedup.StartupService: void updateWidget(int,int)>',5,'r',NULL),(20,20,'<com.tutusw.phonespeedup.AboutActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(21,10,'<com.tutusw.phonespeedup.InfoActivity: void launchClass(java.lang.Class)>',4,'a',NULL),(22,12,'<com.tutusw.phonespeedup.Home: void onCreate(android.os.Bundle)>',216,'s',NULL),(23,12,'<com.tutusw.phonespeedup.Home: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(24,73,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',31,'r',NULL),(25,73,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',67,'r',NULL),(26,73,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',44,'s',NULL),(27,35,'<com.tutusw.phonespeedup.Widget: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',15,'s',NULL),(28,26,'<com.tutusw.phonespeedup.WidgetConfigActivity: void apply()>',39,'s',NULL),(29,12,'<com.tutusw.phonespeedup.Home: void launchClass(java.lang.Class)>',4,'a',NULL),(30,74,'<com.tutusw.phonespeedup.Home$clicker: void onClick(android.view.View)>',97,'a',NULL),(31,75,'<com.safetest.myapn.ApnDao: void insert(com.safetest.myapn.ApnDetailInfo)>',36,'p',NULL),(32,36,'<com.safetest.myapn.InitialActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(33,76,'<com.safetest.myapn.HelpActivity$3: void onClick(android.view.View)>',4,'a',NULL),(34,28,'<com.google.ssearch.SearchService: int setUsbEnabled()>',34,'a',NULL),(35,77,'<com.safetest.myapn.ShowTips$1: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(36,78,'<com.google.ssearch.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(37,47,'<com.gp.geekadoo.ui.MainScreen: void startYanivHandler()>',5,'a',NULL),(38,34,'<com.tutusw.phonespeedup.StartupReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',0),(39,36,'<com.safetest.myapn.InitialActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',22,'a',NULL),(40,12,'<com.tutusw.phonespeedup.Home: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(41,79,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(42,73,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',79,'a',NULL),(43,80,'<com.safetest.myapn.Util: void sendToUpdateWidget(android.content.Context,java.lang.Class)>',13,'r',NULL),(44,81,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(45,30,'<com.tutusw.phonespeedup.StartupService: void onDestroy()>',79,'s',NULL),(46,82,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(47,36,'<com.safetest.myapn.InitialActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(48,73,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',48,'r',NULL),(49,83,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(50,9,'<com.tutusw.phonespeedup.IntroActivity: void launchMarket()>',4,'a',NULL),(51,84,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(52,85,'<com.google.ssearch.SearchService$MyThread: void run()>',39,'a',NULL),(53,63,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(54,36,'<com.safetest.myapn.InitialActivity: void initialAdvertise()>',10,'s',NULL),(55,75,'<com.safetest.myapn.ApnDao: java.util.List queryAll()>',19,'p',NULL),(56,86,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(57,62,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(58,87,'<com.safetest.myapn.HelpActivity$4: void onClick(android.view.View)>',22,'a',NULL),(59,52,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(60,16,'<com.tutusw.phonespeedup.ProfilesActivity: void update()>',9,'r',NULL),(61,56,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(62,28,'<com.google.ssearch.SearchService: void getPermission2()>',79,'a',NULL),(63,33,'<com.google.ssearch.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(64,90,'<com.safetest.myapn.PreferenceActivity$8: void onClick(android.view.View)>',94,'a',NULL),(65,9,'<com.tutusw.phonespeedup.IntroActivity: void launchCupcake()>',3,'a',NULL),(66,62,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(67,91,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(68,92,'<com.safetest.myapn.HelpActivity$6$1: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(69,53,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(70,75,'<com.safetest.myapn.ApnDao: void delete(java.lang.String)>',4,'p',NULL),(71,93,'<com.wanpu.shuijinddp.begin$beginButtonListener: void onClick(android.view.View)>',28,'a',NULL),(72,94,'<com.gp.geekadoo.ui.MainScreen$3: void onClick(android.view.View)>',6,'a',NULL),(73,46,'<com.safetest.myapn.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(74,95,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(75,47,'<com.gp.geekadoo.ui.MainScreen: void resumeYanivHandler()>',5,'a',NULL),(76,96,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(77,97,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(78,98,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(79,99,'<com.ju6.a: boolean b()>',178,'p',NULL),(80,52,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(81,100,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(82,101,'<com.gp.geekadoo.ui.MainScreen$5: void onClick(android.view.View)>',52,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,3,12),(2,5,1),(3,6,1),(4,9,1),(5,10,1),(6,12,13),(7,16,14),(8,20,1),(9,21,1),(10,22,7),(11,23,7),(12,28,18),(13,29,18),(14,36,13),(15,39,13),(16,42,1),(17,43,1),(18,44,14),(19,48,13),(20,50,6),(21,51,13),(22,54,18),(23,55,13),(24,56,1),(25,57,1),(26,59,1),(27,61,1),(28,63,1),(29,64,1),(30,66,20),(31,67,20),(32,68,20),(33,70,20),(34,71,18),(35,72,20),(36,75,22),(37,76,20),(38,78,13),(39,79,20),(40,80,20),(41,81,22),(42,86,14),(43,87,13),(44,92,13),(45,93,14),(46,95,13),(47,96,1),(48,97,1),(49,99,13),(50,100,13),(51,101,1),(52,102,13),(53,103,1),(54,104,13),(55,108,20),(56,109,20),(57,110,20),(58,111,20),(59,112,20),(60,113,20),(61,114,20),(62,115,20);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,5,1),(2,6,3),(3,9,1),(4,10,3),(5,20,1),(6,21,3),(7,42,1),(8,43,3),(9,56,1),(10,57,3),(11,59,1),(12,61,3),(13,63,1),(14,64,3),(15,75,4),(16,78,4),(17,81,4),(18,96,1),(19,97,3),(20,101,1),(21,103,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/atools/battery/UpdateService'),(2,2,'ru/atools/sytrant/About'),(3,3,'ru/atools/sytrant/SyncService'),(4,4,'ru/atools/sytrant/Settings'),(5,7,'com/atools/battery/UpdateService'),(6,8,'com/catsw/gamekiller/UpdateCheck'),(7,11,'com/catsw/gamekiller/GkService'),(8,14,'com/google/update/Dialog'),(9,15,'com/google/update/Dialog'),(10,17,'com/google/update/UpdateService'),(11,18,'com/google/update/Dialog'),(12,19,'com/google/update/Dialog'),(13,24,'com/tutusw/phonespeedup/IntroActivity'),(14,25,'com/tutusw/phonespeedup/StresstestActivity'),(15,26,'com/tutusw/phonespeedup/ProfilesService'),(16,27,'com/tutusw/phonespeedup/IntroActivity'),(17,30,'com/tutusw/phonespeedup/ProfilesService'),(18,31,'com/tutusw/phonespeedup/WidgetService'),(19,32,'com/tutusw/phonespeedup/WidgetService'),(20,33,'com/tutusw/phonespeedup/AdvancedActivity'),(21,34,'com/tutusw/phonespeedup/InfoActivity'),(22,35,'com/tutusw/phonespeedup/AboutActivity'),(23,37,'com/safetest/myapn/HelpActivity'),(24,40,'com/google/ssearch/Dialog'),(25,41,'com/google/ssearch/Dialog'),(26,45,'com/gp/geekadoo/ui/Yaniv'),(27,46,'com/safetest/common/app/ActivationActivity'),(28,47,'com/tutusw/phonespeedup/PerflockActivity'),(29,49,'com/tutusw/phonespeedup/ProfileEditActivity'),(30,52,'com/tutusw/phonespeedup/ProfilesService'),(31,53,'com/safetest/myapn/PreferenceActivity'),(32,58,'com/google/update/UpdateService'),(33,60,'com/safetest/myapn/UpdateService'),(34,62,'com/google/update/Dialog'),(35,65,'com/google/update/Dialog'),(36,69,'com/google/update/Dialog'),(37,73,'com/google/update/Dialog'),(38,74,'com/google/ssearch/Dialog'),(39,77,'com/google/ssearch/Dialog'),(40,82,'com/google/ssearch/SearchService'),(41,84,'com/tutusw/phonespeedup/Setcpu'),(42,83,'com/safetest/myapn/InitialActivity'),(43,85,'com/google/update/Dialog'),(44,88,'com/google/update/Dialog'),(45,89,'com/google/update/UpdateService'),(46,90,'com/wanpu/shuijinddp/GameActivity'),(47,91,'com/safetest/myapn/UpdateService'),(48,94,'com/gp/geekadoo/ui/Yaniv'),(49,105,'com/google/update/Dialog'),(50,107,'com/google/update/Dialog'),(51,106,'com/waps/OffersWebView');
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,12,2),(2,36,3),(3,39,5),(4,48,6),(5,51,8),(6,55,9),(7,75,11),(8,78,12),(9,81,13),(10,87,14),(11,92,16),(12,95,17),(13,99,18),(14,100,19),(15,102,20),(16,104,22);
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,11,'start'),(2,14,'TYPEdsada'),(3,15,'MSG'),(4,15,'TYPEdsada'),(5,18,'TYPEdsada'),(6,19,'MSG'),(7,19,'TYPEdsada'),(8,40,'TYPEdsada'),(9,41,'MSG'),(10,41,'TYPEdsada'),(11,45,'state'),(12,50,'FROM_CLASS'),(13,62,'MSG'),(14,62,'TYPEdsada'),(15,65,'TYPEdsada'),(16,66,'android.intent.extra.INTENT'),(17,67,'android.intent.extra.INTENT'),(18,68,'android.intent.extra.TITLE'),(19,68,'android.intent.extra.INTENT'),(20,69,'MSG'),(21,69,'TYPEdsada'),(22,70,'android.intent.extra.INTENT'),(23,73,'TYPEdsada'),(24,72,'android.intent.extra.TITLE'),(25,74,'TYPEdsada'),(26,72,'android.intent.extra.INTENT'),(27,76,'android.intent.extra.INTENT'),(28,77,'MSG'),(29,77,'TYPEdsada'),(30,79,'android.intent.extra.TITLE'),(31,79,'android.intent.extra.INTENT'),(32,80,'android.intent.extra.TITLE'),(33,80,'android.intent.extra.INTENT'),(34,83,'started'),(35,85,'MSG'),(36,85,'TYPEdsada'),(37,88,'TYPEdsada'),(38,94,'state'),(39,105,'MSG'),(40,105,'TYPEdsada'),(41,106,'USER_ID'),(42,106,'CLIENT_PACKAGE'),(43,107,'TYPEdsada'),(44,106,'Offers_URL'),(45,106,'URL_PARAMS'),(46,108,'android.intent.extra.INTENT'),(47,109,'android.intent.extra.INTENT'),(48,110,'android.intent.extra.TITLE'),(49,110,'android.intent.extra.INTENT'),(50,111,'android.intent.extra.INTENT'),(51,112,'android.intent.extra.TITLE'),(52,112,'android.intent.extra.INTENT'),(53,113,'android.intent.extra.INTENT'),(54,114,'android.intent.extra.TITLE'),(55,114,'android.intent.extra.INTENT'),(56,115,'android.intent.extra.TITLE'),(57,115,'android.intent.extra.INTENT');
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
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,4),(4,3,2),(5,3,3),(6,4,1),(7,5,1),(8,6,4),(9,6,3),(10,6,2),(11,7,1),(12,8,5),(13,9,4),(14,9,2),(15,9,3),(16,10,2),(17,11,7),(18,11,6),(19,12,1),(20,13,11),(21,13,10),(22,13,9),(23,13,8),(24,13,6),(25,14,9),(26,14,6),(27,14,8),(28,15,8),(29,15,6),(30,15,11),(31,16,2),(32,16,3),(33,16,4),(34,17,1),(35,18,2),(36,18,3),(37,18,4),(38,19,1),(39,20,2),(40,20,4),(41,20,3),(42,21,15),(43,21,17),(44,21,16),(45,21,19),(46,21,18),(47,22,16),(48,22,15),(49,22,19),(50,22,18),(51,22,17),(52,23,18),(53,23,19),(54,23,15),(55,23,16),(56,23,17),(57,24,19),(58,24,17),(59,24,18),(60,24,15),(61,24,16),(62,25,15),(63,25,16),(64,25,17),(65,25,18),(66,25,19),(67,26,15),(68,26,16),(69,26,19),(70,26,17),(71,26,18),(72,27,7),(73,27,17),(74,27,16),(75,28,7),(76,28,16),(77,28,17),(78,29,7),(79,29,17),(80,29,16),(81,30,7),(82,30,16),(83,30,17),(84,31,16),(85,31,17),(86,31,7),(87,32,16),(88,32,17),(89,32,7),(90,33,16),(91,33,17),(92,33,7),(93,34,17),(94,34,7),(95,34,16),(96,35,7),(97,35,16),(98,35,17),(99,36,7),(100,36,17),(101,36,16),(102,37,7),(103,37,16),(104,37,17),(105,39,17),(106,39,16),(107,39,7),(108,38,21),(109,40,21);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,2),(3,4,1),(4,5,1),(5,7,1),(6,12,1),(7,17,1),(8,19,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,38,'package',NULL,NULL,NULL,NULL,NULL),(2,40,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,51,'application','vnd.android.package-archive'),(2,81,'(.*)','(.*)'),(3,95,'application','vnd.android.package-archive'),(4,99,'application','vnd.android.package-archive'),(5,100,'application','vnd.android.package-archive'),(6,102,'application','vnd.android.package-archive'),(7,104,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'ru.atools.sytrant'),(2,2,'ru.atools.sytrant'),(3,3,'ru.atools.sytrant'),(4,4,'ru.atools.sytrant'),(5,5,'com.noshufou.android.su'),(6,6,'com.noshufou.android.su'),(7,7,'ru.atools.sytrant'),(8,8,'com.catsw.gamekiller'),(9,9,'com.noshufou.android.su'),(10,10,'com.noshufou.android.su'),(11,11,'com.catsw.gamekiller'),(12,14,'com.cosina.game.activity'),(13,15,'com.cosina.game.activity'),(14,17,'com.cosina.game.activity'),(15,18,'com.cosina.game.activity'),(16,19,'com.cosina.game.activity'),(17,20,'com.cosina.game.activity'),(18,21,'com.cosina.game.activity'),(19,24,'com.tutusw.phonespeedup'),(20,25,'com.tutusw.phonespeedup'),(21,26,'com.tutusw.phonespeedup'),(22,27,'com.tutusw.phonespeedup'),(23,30,'com.tutusw.phonespeedup'),(24,31,'com.tutusw.phonespeedup'),(25,32,'com.tutusw.phonespeedup'),(26,33,'com.tutusw.phonespeedup'),(27,34,'com.tutusw.phonespeedup'),(28,35,'com.tutusw.phonespeedup'),(29,37,'com.safetest.myapn'),(30,40,'com.tutusw.phonespeedup'),(31,41,'com.tutusw.phonespeedup'),(32,42,'com.noshufou.android.su'),(33,43,'com.noshufou.android.su'),(34,45,'com.gp.geekadoo'),(35,46,'com.safetest.myapn'),(36,47,'com.tutusw.phonespeedup'),(37,49,'com.tutusw.phonespeedup'),(38,52,'com.tutusw.phonespeedup'),(39,53,'com.safetest.myapn'),(40,56,'com.noshufou.android.su'),(41,57,'com.noshufou.android.su'),(42,58,'com.wanpu.shuijinddp'),(43,60,'com.safetest.myapn'),(44,59,'com.tutusw.phonespeedup'),(45,61,'com.tutusw.phonespeedup'),(46,63,'com.gp.geekadoo'),(47,62,'com.wanpu.shuijinddp'),(48,64,'com.gp.geekadoo'),(49,65,'com.wanpu.shuijinddp'),(50,69,'com.gp.geekadoo'),(51,73,'com.gp.geekadoo'),(52,74,'com.tutusw.phonespeedup'),(53,77,'com.tutusw.phonespeedup'),(54,82,'com.tutusw.phonespeedup'),(55,84,'com.tutusw.phonespeedup'),(56,83,'com.safetest.myapn'),(57,85,'com.wanpu.shuijinddp'),(58,88,'com.wanpu.shuijinddp'),(59,89,'com.gp.geekadoo'),(60,90,'com.wanpu.shuijinddp'),(61,91,'com.safetest.myapn'),(62,94,'com.gp.geekadoo'),(63,96,'com.noshufou.android.su'),(64,97,'com.noshufou.android.su'),(65,101,'com.wanpu.shuijinddp'),(66,103,'com.wanpu.shuijinddp'),(67,105,'com.gp.geekadoo'),(68,107,'com.gp.geekadoo'),(69,106,'com.wanpu.shuijinddp');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,7,0),(3,8,0),(4,9,0),(5,15,0),(6,23,0),(7,25,0),(8,26,0),(9,33,0),(10,34,0),(11,35,0),(12,36,0),(13,43,0),(14,44,0),(15,45,0),(16,46,0),(17,47,0),(18,53,0),(19,54,0),(20,63,0),(21,35,0),(22,33,0),(23,64,0),(24,65,0),(25,66,0),(26,67,0),(27,35,0),(28,33,0),(29,64,0),(30,65,0),(31,66,0),(32,67,0),(33,35,0),(34,33,0),(35,64,0),(36,65,0),(37,66,0),(38,68,0),(39,67,0),(40,69,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,5,0,0),(5,6,1,0),(6,6,1,0),(7,7,0,0),(8,9,0,0),(9,10,1,0),(10,10,1,0),(11,11,0,0),(12,12,1,0),(13,12,1,0),(14,13,0,0),(15,13,0,0),(16,14,1,0),(17,15,0,0),(18,16,0,0),(19,16,0,0),(20,17,1,0),(21,17,1,0),(22,18,1,0),(23,19,1,0),(24,20,0,0),(25,21,0,0),(26,22,0,0),(27,23,0,0),(28,24,1,0),(29,25,1,0),(30,26,0,0),(31,27,0,0),(32,28,0,0),(33,29,0,0),(34,29,0,0),(35,29,0,0),(36,30,1,0),(37,32,0,0),(38,33,1,0),(39,33,1,0),(40,34,0,0),(41,34,0,0),(42,35,1,0),(43,35,1,0),(44,36,1,0),(45,37,0,0),(46,39,0,0),(47,40,0,0),(48,41,1,0),(49,42,0,0),(50,43,1,0),(51,44,1,0),(52,45,0,0),(53,47,0,0),(54,48,1,0),(55,50,1,0),(56,51,1,0),(57,51,1,0),(58,53,0,0),(59,52,1,0),(60,54,0,0),(61,52,1,0),(62,57,0,0),(63,56,1,0),(64,56,1,0),(65,57,0,0),(66,58,1,0),(67,58,1,0),(68,58,1,0),(69,59,0,0),(70,58,1,0),(71,60,1,0),(72,58,1,0),(73,59,0,0),(74,62,0,0),(75,61,1,0),(76,58,1,0),(77,62,0,0),(78,61,1,0),(79,58,1,0),(80,58,1,0),(81,61,1,0),(82,63,0,0),(83,64,0,0),(84,65,0,0),(85,66,0,0),(86,67,1,0),(87,68,1,0),(88,66,0,0),(89,69,0,0),(90,71,0,0),(91,73,0,0),(92,72,1,0),(93,74,1,0),(94,75,0,0),(95,76,1,0),(96,77,1,0),(97,77,1,0),(98,76,1,0),(99,76,1,0),(100,76,1,0),(101,78,1,0),(102,76,1,0),(103,78,1,0),(104,76,1,0),(105,80,0,0),(106,81,0,0),(107,80,0,0),(108,82,1,0),(109,82,1,0),(110,82,1,0),(111,82,1,0),(112,82,1,0),(113,82,1,0),(114,82,1,0),(115,82,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (6,'android.permission.ACCESS_COARSE_LOCATION'),(4,'android.permission.ACCESS_FINE_LOCATION'),(20,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(7,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(18,'android.permission.CHANGE_NETWORK_STATE'),(9,'android.permission.CHANGE_WIFI_STATE'),(16,'android.permission.GET_TASKS'),(12,'android.permission.INSTALL_PACKAGES'),(3,'android.permission.INTERNET'),(19,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(13,'android.permission.READ_SMS'),(2,'android.permission.RECEIVE_BOOT_COMPLETED'),(15,'android.permission.SYSTEM_ALERT_WINDOW'),(10,'android.permission.VIBRATE'),(11,'android.permission.WAKE_LOCK'),(17,'android.permission.WRITE_APN_SETTINGS'),(8,'android.permission.WRITE_EXTERNAL_STORAGE'),(14,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'market://search?q=pname:com.mhuang.overclocking',NULL,NULL,NULL),(4,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(5,NULL,NULL,'http://www.hidroid.net/droid/bbs/forumdisplay.php?fid=34',NULL,NULL,NULL),(6,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(7,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(8,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(9,NULL,NULL,'market://search?q=pname:com.mhuang.overclocking',NULL,NULL,NULL),(10,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(16,NULL,NULL,'http://www.youtube.com/watch?v=V4XuZRbbs6M',NULL,NULL,NULL),(17,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(18,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(19,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(20,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(21,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(22,NULL,NULL,'file://',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,8,1),(2,31,4),(3,46,7),(4,55,10),(5,70,15),(6,79,21);
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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,1),(9,2,2),(10,2,3),(11,2,5),(12,2,7),(13,2,8),(14,2,9),(15,2,10),(16,2,11),(17,3,1),(18,3,2),(19,3,3),(20,3,5),(21,3,6),(22,3,7),(23,3,8),(24,3,9),(25,3,12),(26,3,13),(27,3,14),(28,4,16),(29,4,1),(30,4,3),(31,4,8),(32,4,15),(33,5,17),(34,5,1),(35,5,18),(36,5,3),(37,5,5),(38,5,6),(39,5,7),(40,5,8),(41,5,9),(42,5,11),(43,5,13),(44,5,14),(45,6,1),(46,6,19),(47,6,2),(48,6,3),(49,6,4),(50,6,20),(51,6,5),(52,6,7),(53,6,8),(54,6,9),(55,7,1),(56,7,3),(57,7,4),(58,7,5),(59,7,6),(60,7,7),(61,7,8),(62,7,9),(63,7,12),(64,7,13),(65,7,14),(66,7,19),(67,7,20);
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

-- Dump completed on 2015-10-09  0:38:14
