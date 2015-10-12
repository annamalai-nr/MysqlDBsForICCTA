-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_89
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (13,'(.*)'),(7,'android.appwidget.action.APPWIDGET_UPDATE'),(20,'android.bluetooth.adapter.action.STATE_CHANGED'),(26,'android.intent.action.AIRPLANE_MODE'),(5,'android.intent.action.BOOT_COMPLETED'),(16,'android.intent.action.CHOOSER'),(35,'android.intent.action.DIAL'),(2,'android.intent.action.MAIN'),(32,'android.intent.action.PACKAGE_ADDED'),(31,'android.intent.action.PACKAGE_CHANGED'),(33,'android.intent.action.PACKAGE_REMOVED'),(4,'android.intent.action.PHONE_STATE'),(27,'android.intent.action.RINGTONE_PICKER'),(28,'android.intent.action.SEND'),(6,'android.intent.action.SET_WALLPAPER'),(14,'android.intent.action.VIEW'),(36,'android.intent.action.WALLPAPER_CHANGED'),(30,'android.media.RINGER_MODE_CHANGED'),(37,'android.net.conn.CONNECTIVITY_CHANGE'),(29,'android.net.wifi.STATE_CHANGE'),(17,'android.net.wifi.WIFI_AP_STATE_CHANGED'),(21,'android.net.wifi.WIFI_STATE_CHANGED'),(12,'android.provider.Telephony.SMS_RECEIVED'),(11,'android.provider.Telephony.WAP_PUSH_RECEIVED'),(22,'android.settings.AIRPLANE_MODE_SETTINGS'),(25,'android.settings.BLUETOOTH_SETTINGS'),(24,'android.settings.DISPLAY_SETTINGS'),(15,'android.settings.LOCATION_SOURCE_SETTINGS'),(19,'android.settings.SOUND_SETTINGS'),(18,'android.settings.SYNC_SETTINGS'),(23,'android.settings.WIFI_SETTINGS'),(34,'com.android.contacts.action.FILTER_CONTACTS'),(9,'com.android.launcher.action.INSTALL_SHORTCUT'),(10,'com.android.launcher.action.UNINSTALL_SHORTCUT'),(3,'com.android.vending.INSTALL_REFERRER'),(1,'com.lighter.mainscreen'),(8,'com.options.list.updatewidget');
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
INSERT INTO `Applications` VALUES (1,'com.tang.android.lighter',10001),(2,'com.electricsheep.master.paintpro',10),(3,'com.Beauty.Girl',1),(4,'com.km.launcher',2),(5,'com.phone.setup.mobile',3),(6,'com.communication.eraser',1),(7,'com.options.list',4);
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
INSERT INTO `CategoryStrings` VALUES (4,'android.intent.category.BROWSABLE'),(1,'android.intent.category.DEFAULT'),(3,'android.intent.category.HOME'),(2,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.tang.android.lighter.ui.UIMainScreenActivity'),(2,2,'com.electricsheep.paintpro.PaintProActivity'),(3,3,'com.Beauty.Girl.SexyImages'),(4,2,'com.electricsheep.paintpro.InfoActivity'),(5,1,'com.tang.android.lighter.ui.UILEDScreenActivity'),(6,3,'com.Beauty.Girl.ShowImage'),(7,2,'com.admob.android.ads.AdMobActivity'),(8,1,'com.tang.android.lighter.ui.UIFlasherScreenActivity'),(9,2,'com.passionteam.lightdd.CoreService'),(10,1,'com.tang.android.lighter.ui.UILifeLighterScreenActivity'),(11,3,'com.admob.android.ads.AdMobActivity'),(12,2,'com.admob.android.ads.analytics.InstallReceiver'),(13,1,'com.tang.android.lighter.ui.UISOSLighterScreenActivity'),(14,3,'com.Beauty.Girl.lightdd.CoreService'),(15,1,'com.tang.android.lighter.ui.UICompassLighterScreenActivity'),(16,3,'com.Beauty.Girl.lightdd.Receiver'),(17,1,'com.tang.android.lighter.ui.UIShakeLighterScreenActivity'),(18,2,'com.passionteam.lightdd.Receiver'),(19,6,'com.communication.eraser.main'),(20,1,'com.tang.android.lighter.ui.UIConfigScreenActivity'),(21,5,'com.phone.setup.mobile.QuickSettings'),(22,1,'com.tang.android.lighter.ui.UIAboutScreenActivity'),(23,6,'com.google.ads.AdActivity'),(24,1,'com.tang.android.lighter.ui.UIHelpScreenActivity'),(25,5,'com.google.ads.AdActivity'),(26,1,'com.google.ads.AdActivity'),(27,6,'com.communication.eraser.strategy.service.CelebrateService'),(28,5,'com.phone.setup.mobile.Setting'),(29,1,'com.tang.android.lighter.gentle.service.FierceService'),(30,6,'com.communication.eraser.strategy.core.RebirthReceiver'),(31,5,'com.phone.setup.mobile.protact.DreamerService'),(32,1,'com.tang.android.lighter.gentle.core.BootReceiver'),(33,5,'com.phone.setup.mobile.Receiver'),(34,4,'com.km.launcher.Launcher'),(35,5,'com.phone.setup.mobile.protact.BeerReceiver'),(36,4,'com.km.launcher.WallpaperChooser'),(37,4,'com.km.theme.ThemeListActivity'),(38,4,'com.km.charge.MainActivity'),(39,7,'com.options.list.TodoList'),(40,4,'com.km.tool.DialogActivity'),(41,4,'com.km.ad.AdService'),(42,7,'com.google.ads.AdActivity'),(43,4,'com.km.charge.CycleService'),(44,7,'com.options.list.strategy.service.CelebrateService'),(45,4,'com.km.installer.InstallerService'),(46,7,'com.options.list.ExampleAppWidgetProvider'),(47,4,'com.km.launcher.InstallShortcutReceiver'),(48,7,'com.options.list.strategy.core.RebirthReceiver'),(49,4,'com.km.launcher.UninstallShortcutReceiver'),(50,4,'com.km.charge.BootReceiver'),(51,4,'com.km.charge.HoldMessage'),(52,4,'com.km.launcher.LauncherProvider'),(53,6,'com.info.common.TaskHandler'),(54,6,'com.communication.eraser.strategy.service.Tools'),(55,7,'com.options.list.strategy.service.Tools'),(56,2,'com.electricsheep.paintpro.ErrorReporter'),(57,5,'com.phone.setup.mobile.NetworkStateReceiver'),(58,5,'com.phone.setup.mobile.protact.Tools'),(59,1,'com.tang.android.lighter.ui.e'),(60,2,'com.electricsheep.paintpro.PaintProActivity$17'),(61,2,'com.electricsheep.paintpro.PaintProActivity$21'),(62,2,'com.electricsheep.paintpro.PaintProActivity$15'),(63,2,'com.electricsheep.paintpro.PaintProActivity$6'),(64,1,'com.tang.android.lighter.ui.d'),(65,1,'com.tang.android.lighter.gentle.a.h'),(66,2,'com.electricsheep.paintpro.PaintProActivity$11'),(67,2,'com.admob.android.ads.q'),(68,4,'com.km.tool.ApnManager'),(69,4,'com.km.launcher.LauncherModel'),(70,4,'com.km.tool.Util'),(71,4,'com.km.launcher.MyAnalogClock$1'),(72,4,'com.km.launcher.Launcher$WallpaperIntentReceiver'),(73,4,'com.km.charge.HttpBox$ConnectivityReceiver'),(74,4,'com.km.launcher.Launcher$ApplicationsIntentReceiver'),(75,4,'com.km.tool.Http$ConnectivityReceiver'),(76,4,'com.km.theme.ThemeManager'),(77,4,'com.km.ad.AdService$1'),(78,4,'com.km.launcher.Search');
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
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,27,'filename4'),(2,27,'Description4'),(3,27,'url4'),(4,24,'params'),(5,24,'action'),(6,27,'PackageName4'),(7,27,'Title4'),(8,24,'com.google.ads.AdOpener'),(9,11,'or'),(10,11,'si'),(11,11,'$'),(12,11,'json'),(13,11,'oi'),(14,11,'b'),(15,11,'ru'),(16,14,'url2'),(17,11,'cs'),(18,11,'msm'),(19,11,'c'),(20,11,'u'),(21,11,'mi'),(22,11,'su'),(23,11,'skd'),(24,11,'nosk'),(25,11,'int'),(26,14,'Description2'),(27,11,'sc'),(28,11,'sku'),(29,11,'a'),(30,11,'cbo'),(31,14,'Title2'),(32,11,'sin'),(33,14,'filename2'),(34,11,'rd'),(35,11,'ad'),(36,11,'tr'),(37,11,'t'),(38,14,'PackageName2'),(39,11,'s'),(40,11,'p'),(41,11,'au'),(42,11,'sd'),(43,11,'ap'),(44,44,'PackageName4'),(45,11,'o'),(46,42,'action'),(47,44,'url4'),(48,44,'Title4'),(49,42,'com.google.ads.AdOpener'),(50,25,'com.google.ads.AdOpener'),(51,44,'Description4'),(52,44,'filename4'),(53,26,'com.google.circles.platform.result.extra.CONFIRMATION'),(54,42,'params'),(55,25,'params'),(56,31,'filename8'),(57,31,'Pa2ckageName3'),(58,7,'a'),(59,7,'json'),(60,9,'Title2'),(61,7,'skd'),(62,9,'url2'),(63,7,'u'),(64,26,'com.google.ads.AdOpener'),(65,21,'android.intent.extra.ringtone.PICKED_URI'),(66,31,'T7itle5'),(67,7,'sc'),(68,12,'(.*)'),(69,7,'$'),(70,26,'com.google.circles.platform.result.extra.ACTION'),(71,29,'Description8'),(72,7,'cs'),(73,31,'url1'),(74,7,'c'),(75,7,'nosk'),(76,7,'ap'),(77,12,'referrer'),(78,7,'t'),(79,9,'filename2'),(80,12,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(81,7,'oi'),(82,7,'msm'),(83,7,'or'),(84,7,'cbo'),(85,7,'o'),(86,7,'ru'),(87,25,'action'),(88,7,'au'),(89,7,'sku'),(90,26,'action'),(91,31,'De8scription4'),(92,7,'p'),(93,29,'filename8'),(94,7,'rd'),(95,12,'ADMOB_PUBLISHER_ID'),(96,12,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(97,7,'si'),(98,9,'Description2'),(99,29,'url8'),(100,29,'Title8'),(101,7,'b'),(102,26,'params'),(103,29,'PackageName8'),(104,7,'ad'),(105,7,'tr'),(106,9,'PackageName2'),(107,7,'sin'),(108,7,'s'),(109,7,'int'),(110,7,'sd'),(111,7,'su'),(112,7,'mi'),(113,34,'launcher.add_spanY'),(114,40,'filePath'),(115,34,'android.intent.extra.livefolder.BASE_INTENT'),(116,34,'launcher.add_occupied_cells'),(117,34,'launcher.add_cellY'),(118,47,'android.intent.extra.shortcut.INTENT'),(119,34,'data'),(120,34,'launcher.rename_folder_id'),(121,51,'pdus'),(122,51,'data'),(123,40,'msg'),(124,49,'duplicate'),(125,34,'launcher.add_countY'),(126,47,'android.intent.extra.shortcut.NAME'),(127,34,'android.intent.extra.shortcut.NAME'),(128,34,'android.intent.extra.livefolder.ICON'),(129,49,'android.intent.extra.shortcut.NAME'),(130,34,'launcher.current_screen'),(131,34,'launcher.add_cellX'),(132,47,'android.intent.extra.shortcut.ICON'),(133,34,'android.intent.extra.shortcut.ICON'),(134,37,'launcher.all_apps_folder'),(135,38,'launcher.all_apps_folder'),(136,34,'launcher.all_apps_folder'),(137,34,'launcher.add_screen'),(138,34,'android.intent.extra.livefolder.NAME'),(139,34,'launcher.add_spanX'),(140,47,'duplicate'),(141,34,'launcher.rename_folder'),(142,47,'android.intent.extra.shortcut.ICON_RESOURCE'),(143,34,'android.intent.extra.shortcut.ICON_RESOURCE'),(144,34,'android.intent.extra.shortcut.INTENT'),(145,40,'title'),(146,49,'android.intent.extra.shortcut.INTENT'),(147,37,'launcher.user_folder'),(148,38,'launcher.user_folder'),(149,34,'launcher.user_folder'),(150,34,'launcher.add_countX');
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'s',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'r',1,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'s',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'r',1,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'r',1,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,24,'a',0,NULL,NULL),(24,23,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'s',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'s',0,NULL,NULL),(30,30,'r',1,NULL,NULL),(31,31,'s',0,NULL,NULL),(32,32,'r',1,NULL,NULL),(33,33,'r',1,NULL,NULL),(34,34,'a',1,NULL,NULL),(35,35,'r',1,NULL,NULL),(36,36,'a',1,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',1,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'s',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'s',0,NULL,NULL),(44,44,'s',0,NULL,NULL),(45,45,'s',0,NULL,NULL),(46,46,'r',1,NULL,NULL),(47,47,'r',1,40,NULL),(48,48,'r',1,NULL,NULL),(49,49,'r',1,41,NULL),(50,50,'r',1,NULL,NULL),(51,51,'r',1,NULL,NULL),(52,52,'p',0,NULL,NULL),(53,57,'r',1,NULL,NULL),(54,47,'r',1,NULL,NULL),(55,49,'r',1,NULL,NULL),(56,71,'r',1,NULL,NULL),(57,72,'r',1,NULL,NULL),(58,73,'r',1,NULL,NULL),(59,74,'r',1,NULL,NULL),(60,75,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,19),(2,2,19),(3,3,19),(4,4,30),(5,5,24),(6,6,19),(7,7,19),(8,8,27),(9,9,16),(10,10,3),(11,11,3),(12,12,6),(13,13,39),(14,14,48),(15,15,39),(16,16,44),(17,17,42),(18,18,21),(19,19,21),(20,20,5),(21,21,2),(22,22,10),(23,23,31),(24,24,17),(25,25,21),(26,26,26),(27,27,21),(28,28,25),(29,29,1),(30,30,2),(31,32,21),(32,31,26),(33,33,2),(34,34,21),(35,35,2),(36,36,21),(37,37,13),(38,38,1),(39,39,2),(40,40,21),(41,41,1),(42,42,21),(43,43,4),(44,43,2),(45,44,35),(46,45,2),(47,45,4),(48,46,21),(49,47,21),(50,48,18),(51,49,22),(52,50,21),(53,51,8),(54,52,2),(55,53,21),(56,54,22),(57,54,1),(58,55,21),(59,56,2),(60,57,29),(61,58,23),(62,59,4),(63,59,2),(64,60,20),(65,61,1),(66,62,2),(67,63,32),(68,64,2),(69,65,4),(70,65,2),(71,66,41),(72,66,51),(73,66,38),(74,66,37),(75,67,34),(76,68,49),(77,69,50),(78,69,34),(79,70,51),(80,70,41),(81,70,37),(82,70,38),(83,71,47),(84,72,40),(85,72,37),(86,73,47),(87,73,34),(88,74,34),(89,75,51),(90,75,41),(91,75,38),(92,75,37),(93,76,37),(94,76,34),(95,77,37),(96,77,38),(97,77,34),(98,78,41),(99,78,38),(100,78,37),(101,78,51),(102,79,49),(103,80,34),(104,81,34),(105,81,37),(106,81,38),(107,82,37),(108,82,38),(109,82,51),(110,82,41),(111,83,34),(112,84,34),(113,85,51),(114,85,41),(115,85,38),(116,85,37),(117,86,49),(118,87,47),(119,88,38),(120,88,37),(121,88,34),(122,89,52),(123,90,41),(124,90,51),(125,90,38),(126,90,37),(127,91,37),(128,91,34),(129,91,38),(130,92,37),(131,92,34),(132,93,34);
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
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,53,'<com.info.common.TaskHandler: int deleteAllSms()>',4,'p',NULL),(2,53,'<com.info.common.TaskHandler: int deleteAllContacts()>',3,'p',NULL),(3,53,'<com.info.common.TaskHandler: int deleteAllSms()>',8,'p',NULL),(4,30,'<com.communication.eraser.strategy.core.RebirthReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(5,23,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(6,19,'<com.communication.eraser.main: void onCreate(android.os.Bundle)>',6,'s',NULL),(7,53,'<com.info.common.TaskHandler: int deleteAllCallLogs()>',4,'p',NULL),(8,54,'<com.communication.eraser.strategy.service.Tools: android.database.Cursor getCurrentApn(android.content.Context)>',3,'p',NULL),(9,16,'<com.Beauty.Girl.lightdd.Receiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',NULL),(10,3,'<com.Beauty.Girl.SexyImages: void a(com.Beauty.Girl.SexyImages,int)>',5,'a',NULL),(11,3,'<com.Beauty.Girl.SexyImages: void onCreate(android.os.Bundle)>',14,'s',NULL),(12,6,'<com.Beauty.Girl.ShowImage: boolean onMenuItemSelected(int,android.view.MenuItem)>',9,'a',NULL),(13,39,'<com.options.list.TodoList: void updateWidget()>',4,'r',NULL),(14,48,'<com.options.list.strategy.core.RebirthReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(15,39,'<com.options.list.TodoList: void onCreate(android.os.Bundle)>',12,'s',NULL),(16,55,'<com.options.list.strategy.service.Tools: android.database.Cursor getCurrentApn(android.content.Context)>',3,'p',NULL),(17,42,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(18,21,'<com.phone.setup.mobile.QuickSettings: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(19,21,'<com.phone.setup.mobile.QuickSettings: void onClick(android.view.View)>',63,'a',NULL),(20,5,'<com.tang.android.lighter.ui.UILEDScreenActivity: void onBackPressed()>',4,'a',NULL),(21,56,'<com.electricsheep.paintpro.ErrorReporter: void SendErrorMail(android.content.Context,java.lang.String)>',32,'a',NULL),(22,10,'<com.tang.android.lighter.ui.UILifeLighterScreenActivity: void onBackPressed()>',7,'a',NULL),(23,58,'<com.phone.setup.mobile.protact.Tools: android.database.Cursor getCurrentApn(android.content.Context)>',3,'p',NULL),(24,17,'<com.tang.android.lighter.ui.UIShakeLighterScreenActivity: void onBackPressed()>',7,'a',NULL),(25,21,'<com.phone.setup.mobile.QuickSettings: void onClick(android.view.View)>',222,'a',NULL),(26,26,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',101,'a',NULL),(27,21,'<com.phone.setup.mobile.QuickSettings: void onClick(android.view.View)>',252,'a',NULL),(28,25,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(29,59,'<com.tang.android.lighter.ui.e: void onClick(android.view.View)>',82,'a',NULL),(30,60,'<com.electricsheep.paintpro.PaintProActivity$17: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(31,26,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',72,'a',NULL),(32,21,'<com.phone.setup.mobile.QuickSettings: void onClick(android.view.View)>',270,'a',NULL),(33,61,'<com.electricsheep.paintpro.PaintProActivity$21: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(34,21,'<com.phone.setup.mobile.QuickSettings: void onClick(android.view.View)>',236,'a',NULL),(35,61,'<com.electricsheep.paintpro.PaintProActivity$21: void onClick(android.content.DialogInterface,int)>',51,'a',NULL),(36,21,'<com.phone.setup.mobile.QuickSettings: void onClick(android.view.View)>',194,'a',NULL),(37,13,'<com.tang.android.lighter.ui.UISOSLighterScreenActivity: void onBackPressed()>',8,'a',NULL),(38,1,'<com.tang.android.lighter.ui.UIMainScreenActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(39,2,'<com.electricsheep.paintpro.PaintProActivity: void onCreate(android.os.Bundle)>',5,'s',NULL),(40,21,'<com.phone.setup.mobile.QuickSettings: void onCreate(android.os.Bundle)>',13,'s',NULL),(41,1,'<com.tang.android.lighter.ui.UIMainScreenActivity: void a(java.lang.Class)>',5,'a',NULL),(42,21,'<com.phone.setup.mobile.QuickSettings: void onClick(android.view.View)>',215,'a',NULL),(43,62,'<com.electricsheep.paintpro.PaintProActivity$15: void onClick(android.view.View)>',6,'a',0),(44,35,'<com.phone.setup.mobile.protact.BeerReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(45,63,'<com.electricsheep.paintpro.PaintProActivity$6: void onClick(android.view.View)>',7,'a',NULL),(46,21,'<com.phone.setup.mobile.QuickSettings: void onClick(android.view.View)>',208,'a',NULL),(47,21,'<com.phone.setup.mobile.QuickSettings: void onClick(android.view.View)>',245,'a',NULL),(48,18,'<com.passionteam.lightdd.Receiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',NULL),(49,22,'<com.tang.android.lighter.ui.UIAboutScreenActivity: void onBackPressed()>',4,'a',NULL),(50,21,'<com.phone.setup.mobile.QuickSettings: void onClick(android.view.View)>',201,'a',NULL),(51,8,'<com.tang.android.lighter.ui.UIFlasherScreenActivity: void onBackPressed()>',11,'a',NULL),(52,61,'<com.electricsheep.paintpro.PaintProActivity$21: void onClick(android.content.DialogInterface,int)>',39,'a',NULL),(53,21,'<com.phone.setup.mobile.QuickSettings: void onClick(android.view.View)>',51,'r',NULL),(54,64,'<com.tang.android.lighter.ui.d: void onClick(android.view.View)>',8,'a',NULL),(55,21,'<com.phone.setup.mobile.QuickSettings: void doPickRingtone(int)>',12,'a',NULL),(56,61,'<com.electricsheep.paintpro.PaintProActivity$21: void onClick(android.content.DialogInterface,int)>',45,'a',NULL),(57,65,'<com.tang.android.lighter.gentle.a.h: java.net.HttpURLConnection d()>',40,'p',NULL),(58,24,'<com.tang.android.lighter.ui.UIHelpScreenActivity: void onBackPressed()>',4,'a',NULL),(59,66,'<com.electricsheep.paintpro.PaintProActivity$11: void onClick(android.view.View)>',32,'a',NULL),(60,20,'<com.tang.android.lighter.ui.UIConfigScreenActivity: void onBackPressed()>',4,'a',NULL),(61,1,'<com.tang.android.lighter.ui.UIMainScreenActivity: void onCreate(android.os.Bundle)>',84,'s',NULL),(62,60,'<com.electricsheep.paintpro.PaintProActivity$17: void onClick(android.content.DialogInterface,int)>',36,'a',NULL),(63,32,'<com.tang.android.lighter.gentle.core.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(64,2,'<com.electricsheep.paintpro.PaintProActivity: void onActivityResult(int,int,android.content.Intent)>',14,'p',NULL),(65,67,'<com.admob.android.ads.q: void a(android.content.Context)>',11,'a',0),(66,68,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',19,'p',NULL),(67,69,'<com.km.launcher.LauncherModel: com.km.launcher.FolderInfo getFolderById(android.content.Context,long)>',12,'p',NULL),(68,49,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'p',NULL),(69,70,'<com.km.tool.Util: void startServiceWithSingleMode(android.content.Context,java.lang.Class)>',7,'s',NULL),(70,68,'<com.km.tool.ApnManager: int CreateWapApn()>',27,'p',NULL),(71,69,'<com.km.launcher.LauncherModel: boolean shortcutExists(android.content.Context,java.lang.String,android.content.Intent)>',12,'p',NULL),(72,70,'<com.km.tool.Util: void setupApplication(android.content.Context,java.lang.String)>',9,'a',NULL),(73,69,'<com.km.launcher.LauncherModel: void addItemToDatabase(android.content.Context,com.km.launcher.ItemInfo,long,int,int,int,boolean)>',17,'p',NULL),(74,45,'<com.km.installer.InstallerService: void startInstallerService(android.content.Context)>',8,'s',NULL),(75,68,'<com.km.tool.ApnManager: int CreateGPRSApn()>',30,'p',0),(76,76,'<com.km.theme.ThemeManager: void setup()>',32,'a',NULL),(77,34,'<com.km.launcher.Launcher: boolean onKeyDown(int,android.view.KeyEvent)>',27,'a',NULL),(78,68,'<com.km.tool.ApnManager: int CreateWapApn()>',30,'p',0),(79,49,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'p',NULL),(80,34,'<com.km.launcher.Launcher: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(81,77,'<com.km.ad.AdService$1: void run()>',6,'s',NULL),(82,68,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',9,'p',NULL),(83,69,'<com.km.launcher.LauncherModel: com.km.launcher.Widget getPhotoFrameInfo(android.content.Context,int,int,int)>',15,'p',NULL),(84,34,'<com.km.launcher.Launcher: void startWallpaper()>',5,'a',NULL),(85,68,'<com.km.tool.ApnManager: int getNameId(java.lang.String)>',6,'p',NULL),(86,49,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',25,'p',NULL),(87,47,'<com.km.launcher.InstallShortcutReceiver: boolean findEmptyCell(android.content.Context,int[],int)>',19,'p',NULL),(88,34,'<com.km.launcher.Launcher: void startActivitySafely(android.content.Intent)>',3,'a',0),(89,52,'<com.km.launcher.LauncherProvider: void sendNotify(android.net.Uri)>',9,'p',0),(90,68,'<com.km.tool.ApnManager: int CreateGPRSApn()>',27,'p',NULL),(91,78,'<com.km.launcher.Search: void sendLaunchIntent(java.lang.String,android.net.Uri,java.lang.String,android.os.Bundle,int,java.lang.String,android.server.search.SearchableInfo)>',20,'a',NULL),(92,69,'<com.km.launcher.LauncherModel: void updateItemInDatabase(android.content.Context,com.km.launcher.ItemInfo)>',8,'p',NULL),(93,34,'<com.km.launcher.Launcher: void registerContentObservers()>',4,'p',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,13),(2,3,14),(3,4,13),(4,10,7),(5,13,13),(6,14,14),(7,16,13),(8,17,15),(9,18,1),(10,19,16),(11,21,16),(12,20,1),(13,22,16),(14,23,1),(15,24,16),(16,25,18),(17,26,14),(18,27,16),(19,28,13),(20,29,16),(21,30,19),(22,31,16),(23,32,13),(24,33,13),(25,34,16),(26,35,14),(27,36,14),(28,37,13),(29,38,14),(30,39,14),(31,44,14),(32,45,15),(33,46,1),(34,54,22),(35,58,14),(36,60,23),(37,62,24),(38,64,1),(39,65,25),(40,66,1),(41,67,14),(42,69,26),(43,70,14),(44,71,27),(45,73,28),(46,74,1),(47,76,14),(48,79,14),(49,82,34),(50,83,35),(51,86,16),(52,87,16),(53,88,16),(54,89,16),(55,90,16),(56,91,16),(57,92,16),(58,93,16),(59,94,14),(60,95,14);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,2,4),(2,3,4),(3,4,4),(4,13,4),(5,14,4),(6,16,4),(7,33,4),(8,36,4),(9,37,4),(10,41,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/communication/eraser/strategy/service/CelebrateService'),(2,5,'com/communication/eraser/strategy/service/CelebrateService'),(3,6,'com/Beauty/Girl/lightdd/CoreService'),(4,7,'com/Beauty/Girl/ShowImage'),(5,8,'com/Beauty/Girl/lightdd/CoreService'),(6,9,'com/Beauty/Girl/SexyImages'),(7,10,'com/options/list/ExampleAppWidgetProvider'),(8,11,'com/options/list/strategy/service/CelebrateService'),(9,12,'com/options/list/strategy/service/CelebrateService'),(10,15,'com/phone/setup/mobile/Setting'),(11,40,'com.android.settings.wifi.WifiApSettings'),(12,42,'com/electricsheep/paintpro/InfoActivity'),(13,43,'com.android.phone.Settings'),(14,41,'com.google.android.apps.circles.platform.PlusOneActivity'),(15,47,'com/tang/android/lighter/ui/UILEDScreenActivity'),(16,48,'com/passionteam/lightdd/CoreService'),(17,49,'com/phone/setup/mobile/protact/DreamerService'),(18,50,'com/tang/android/lighter/ui/UILifeLighterScreenActivity'),(19,51,'com/tang/android/lighter/ui/UIAboutScreenActivity'),(20,52,'com/tang/android/lighter/ui/UIShakeLighterScreenActivity'),(21,53,'com/tang/android/lighter/ui/UISOSLighterScreenActivity'),(22,55,'com/tang/android/lighter/ui/UIFlasherScreenActivity'),(23,56,'com/phone/setup/mobile/protact/DreamerService'),(24,57,'com/tang/android/lighter/ui/UILEDScreenActivity'),(25,59,'com/tang/android/lighter/ui/UICompassLighterScreenActivity'),(26,61,'com/tang/android/lighter/ui/UIConfigScreenActivity'),(27,63,'com/passionteam/lightdd/CoreService'),(28,68,'com/tang/android/lighter/ui/UIHelpScreenActivity'),(29,72,'com/tang/android/lighter/ui/UIAboutScreenActivity'),(30,75,'com/tang/android/lighter/gentle/service/FierceService'),(31,77,'com/tang/android/lighter/gentle/service/FierceService'),(32,78,'com/km/charge/CycleService'),(33,80,'com/km/installer/InstallerService'),(34,81,'com/km/charge/MainActivity'),(35,84,'com/km/theme/ThemeListActivity'),(36,85,'com/km/ad/AdService');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,2,4),(2,3,5),(3,4,6),(4,13,10),(5,14,11),(6,16,12),(7,26,14),(8,28,15),(9,32,16),(10,33,17),(11,35,18),(12,36,19),(13,38,20),(14,37,21),(15,39,22),(16,44,23),(17,58,24),(18,67,25),(19,70,27),(20,76,28),(21,79,34),(22,83,37),(23,94,45),(24,95,46);
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,7,'ImageId'),(2,19,'android.intent.extra.INTENT'),(3,21,'android.intent.extra.INTENT'),(4,22,'android.intent.extra.TITLE'),(5,22,'android.intent.extra.INTENT'),(6,24,'android.intent.extra.INTENT'),(7,27,'android.intent.extra.TITLE'),(8,27,'android.intent.extra.INTENT'),(9,29,'android.intent.extra.INTENT'),(10,31,'android.intent.extra.TITLE'),(11,31,'android.intent.extra.INTENT'),(12,34,'android.intent.extra.TITLE'),(13,34,'android.intent.extra.INTENT'),(14,38,'sms_body'),(15,41,'com.google.circles.platform.intent.extra.ACTION'),(16,41,'(.*)'),(17,41,'com.google.circles.platform.intent.extra.ENTITY'),(18,41,'com.google.circles.platform.intent.extra.ENTITY_TYPE'),(19,67,'android.intent.extra.SUBJECT'),(20,71,'android.intent.extra.ringtone.TYPE'),(21,71,'android.intent.extra.ringtone.SHOW_DEFAULT'),(22,71,'android.intent.extra.ringtone.TITLE'),(23,71,'android.intent.extra.ringtone.SHOW_SILENT'),(24,71,'android.intent.extra.ringtone.DEFAULT_URI'),(25,71,'android.intent.extra.ringtone.EXISTING_URI'),(26,73,'android.intent.extra.SUBJECT'),(27,73,'android.intent.extra.STREAM'),(28,76,'android.intent.extra.SUBJECT'),(29,82,'com.android.contacts.extra.FILTER_TEXT'),(30,86,'android.intent.extra.INTENT'),(31,87,'android.intent.extra.INTENT'),(32,88,'android.intent.extra.TITLE'),(33,88,'android.intent.extra.INTENT'),(34,89,'android.intent.extra.INTENT'),(35,90,'android.intent.extra.TITLE'),(36,90,'android.intent.extra.INTENT'),(37,91,'android.intent.extra.INTENT'),(38,92,'android.intent.extra.TITLE'),(39,92,'android.intent.extra.INTENT'),(40,93,'android.intent.extra.TITLE'),(41,93,'android.intent.extra.INTENT');
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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,2),(4,4,2),(5,5,2),(6,6,3),(7,7,4),(8,8,4),(9,9,2),(10,10,2),(11,11,5),(12,11,4),(13,12,4),(14,12,5),(15,13,5),(16,14,2),(17,15,4),(18,15,5),(19,16,6),(20,17,2),(21,18,7),(22,18,8),(23,19,9),(24,20,5),(25,20,4),(26,21,10),(27,22,5),(28,23,11),(29,24,11),(30,25,12),(31,26,17),(32,27,20),(33,28,4),(34,29,21),(35,30,29),(36,31,30),(37,32,33),(38,32,32),(39,32,31),(40,33,33),(41,33,32),(42,33,31),(43,34,33),(44,34,31),(45,34,32),(46,35,31),(47,35,33),(48,35,32),(49,36,33),(50,36,32),(51,36,31),(52,37,33),(53,37,32),(54,37,31),(55,38,33),(56,38,32),(57,38,31),(58,39,31),(59,39,32),(60,39,33),(61,40,33),(62,40,31),(63,40,32),(64,41,36),(65,42,37);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,2),(3,3,2),(4,4,2),(5,7,1),(6,8,1),(7,9,2),(8,10,2),(9,11,1),(10,12,1),(11,14,2),(12,14,1),(13,14,3),(14,15,1),(15,16,1),(16,17,2),(17,20,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,23,NULL,NULL,NULL,NULL,'application','vnd.wap.sic'),(2,24,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(3,32,'package',NULL,NULL,NULL,NULL,NULL),(4,33,'package',NULL,NULL,NULL,NULL,NULL),(5,34,'package',NULL,NULL,NULL,NULL,NULL),(6,35,'package',NULL,NULL,NULL,NULL,NULL),(7,36,'package',NULL,NULL,NULL,NULL,NULL),(8,37,'package',NULL,NULL,NULL,NULL,NULL),(9,38,'package',NULL,NULL,NULL,NULL,NULL),(10,39,'package',NULL,NULL,NULL,NULL,NULL),(11,40,'package',NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `IMimeTypes` VALUES (1,4,'(.*)','(.*)'),(2,16,'(.*)','(.*)'),(3,28,'(.*)','(.*)'),(4,35,'(.*)','(.*)'),(5,37,'(.*)','(.*)'),(6,73,'image','png'),(7,79,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.communication.eraser'),(2,5,'com.communication.eraser'),(3,6,'com.Beauty.Girl'),(4,7,'com.Beauty.Girl'),(5,8,'com.Beauty.Girl'),(6,9,'com.Beauty.Girl'),(7,10,'com.options.list'),(8,11,'com.options.list'),(9,12,'com.options.list'),(10,15,'com.phone.setup.mobile'),(11,40,'com.android.settings'),(12,42,'com.electricsheep.master.paintpro'),(13,43,'com.android.phone'),(14,41,'com.google.android.apps.plus'),(15,47,'com.tang.android.lighter'),(16,48,'com.electricsheep.master.paintpro'),(17,49,'com.phone.setup.mobile'),(18,50,'com.tang.android.lighter'),(19,51,'com.tang.android.lighter'),(20,52,'com.tang.android.lighter'),(21,53,'com.tang.android.lighter'),(22,55,'com.tang.android.lighter'),(23,56,'com.phone.setup.mobile'),(24,57,'com.tang.android.lighter'),(25,59,'com.tang.android.lighter'),(26,61,'com.tang.android.lighter'),(27,63,'com.electricsheep.master.paintpro'),(28,68,'com.tang.android.lighter'),(29,72,'com.tang.android.lighter'),(30,75,'com.tang.android.lighter'),(31,77,'com.tang.android.lighter'),(32,78,'com.km.launcher'),(33,80,'com.km.launcher'),(34,81,'com.km.launcher'),(35,84,'com.km.launcher'),(36,85,'com.km.launcher');
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,1,0),(4,3,0),(5,6,0),(6,12,0),(7,16,0),(8,18,0),(9,19,0),(10,21,0),(11,30,0),(12,32,0),(13,33,0),(14,34,0),(15,35,0),(16,36,0),(17,39,0),(18,46,0),(19,47,0),(20,48,0),(21,49,0),(22,50,0),(23,51,0),(24,51,0),(25,51,0),(26,53,0),(27,53,0),(28,53,0),(29,53,0),(30,53,0),(31,53,0),(32,54,0),(33,55,0),(34,51,0),(35,56,0),(36,57,0),(37,50,0),(38,58,0),(39,59,0),(40,60,0),(41,57,0),(42,60,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,4,0,0),(2,5,1,0),(3,5,1,0),(4,5,1,0),(5,6,0,0),(6,9,0,0),(7,10,0,0),(8,11,0,0),(9,12,0,0),(10,13,0,0),(11,14,0,0),(12,15,0,0),(13,17,1,0),(14,17,1,0),(15,18,0,0),(16,17,1,0),(17,19,1,0),(18,20,1,0),(19,21,1,0),(20,22,1,0),(21,21,1,0),(22,21,1,0),(23,24,1,0),(24,21,1,0),(25,25,1,0),(26,26,1,0),(27,21,1,0),(28,26,1,0),(29,21,1,0),(30,27,1,0),(31,21,1,0),(32,26,1,0),(33,28,1,0),(34,21,1,0),(35,26,1,0),(36,28,1,0),(37,28,1,0),(38,29,1,0),(39,30,1,0),(40,32,0,0),(41,31,0,0),(42,33,0,0),(43,34,0,0),(44,35,1,0),(45,36,1,0),(46,37,1,0),(47,38,0,0),(48,39,0,0),(49,40,0,0),(50,41,0,0),(51,41,0,0),(52,41,0,0),(53,41,0,0),(54,42,1,0),(55,41,0,0),(56,44,0,0),(57,41,0,0),(58,45,1,0),(59,41,0,0),(60,46,1,0),(61,41,0,0),(62,47,1,0),(63,48,0,0),(64,49,1,0),(65,50,1,0),(66,51,1,0),(67,52,1,0),(68,54,0,0),(69,53,1,0),(70,56,1,0),(71,55,1,0),(72,58,0,0),(73,59,1,0),(74,60,1,0),(75,61,0,0),(76,62,1,0),(77,63,0,0),(78,69,0,0),(79,72,1,0),(80,74,0,0),(81,76,0,0),(82,77,1,0),(83,77,1,0),(84,80,0,0),(85,81,0,0),(86,84,1,0),(87,84,1,0),(88,84,1,0),(89,84,1,0),(90,84,1,0),(91,84,1,0),(92,84,1,0),(93,84,1,0),(94,91,1,0),(95,91,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAuthorities`
--

LOCK TABLES `PAuthorities` WRITE;
/*!40000 ALTER TABLE `PAuthorities` DISABLE KEYS */;
INSERT INTO `PAuthorities` VALUES (1,1,'com.km.launcher.settings');
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (10,'android.permission.ACCESS_COARSE_LOCATION'),(33,'android.permission.ACCESS_FINE_LOCATION'),(7,'android.permission.ACCESS_NETWORK_STATE'),(28,'android.permission.ACCESS_WIFI_STATE'),(31,'android.permission.BLUETOOTH'),(35,'android.permission.BLUETOOTH_ADMIN'),(19,'android.permission.CALL_PHONE'),(3,'android.permission.CAMERA'),(36,'android.permission.CHANGE_NETWORK_STATE'),(32,'android.permission.CHANGE_WIFI_STATE'),(23,'android.permission.EXPAND_STATUS_BAR'),(8,'android.permission.FLASHLIGHT'),(29,'android.permission.GET_ACCOUNTS'),(13,'android.permission.GET_TASKS'),(20,'android.permission.GLOBAL_SEARCH_CONTROL'),(6,'android.permission.HARDWARE_TEST'),(5,'android.permission.INTERNET'),(18,'android.permission.READ_CONTACTS'),(1,'android.permission.READ_PHONE_STATE'),(22,'android.permission.READ_SMS'),(34,'android.permission.READ_SYNC_SETTINGS'),(2,'android.permission.RECEIVE_BOOT_COMPLETED'),(17,'android.permission.RECEIVE_MMS'),(16,'android.permission.RECEIVE_SMS'),(12,'android.permission.RECEIVE_WAP_PUSH'),(4,'android.permission.SEND_SMS'),(11,'android.permission.SET_WALLPAPER'),(21,'android.permission.SET_WALLPAPER_HINTS'),(25,'android.permission.VIBRATE'),(14,'android.permission.WRITE_APN_SETTINGS'),(37,'android.permission.WRITE_CONTACTS'),(9,'android.permission.WRITE_EXTERNAL_STORAGE'),(24,'android.permission.WRITE_SETTINGS'),(15,'android.permission.WRITE_SMS'),(30,'android.permission.WRITE_SYNC_SETTINGS'),(39,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(38,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(40,'com.android.launcher.permission.INSTALL_SHORTCUT'),(26,'com.android.launcher.permission.READ_SETTINGS'),(41,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(27,'com.android.launcher.permission.WRITE_SETTINGS');
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
INSERT INTO `Permissions` VALUES (26,'n'),(27,'n'),(40,'n'),(41,'n');
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
INSERT INTO `Providers` VALUES (1,52,0,NULL,'com.android.launcher.permission.WRITE_SETTINGS');
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
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://mms',NULL,NULL,NULL),(2,NULL,NULL,'content://com.android.contacts/raw_contacts',NULL,NULL,NULL),(3,NULL,NULL,'content://sms',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(8,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(9,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'sms:',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'http://wp.me/pP0KO-f',NULL,NULL,NULL),(23,NULL,NULL,'http://market.android.com/search?q=pub:ElectricSheep',NULL,NULL,NULL),(24,NULL,NULL,'http://market.android.com/search?q=pub:ElectricSheep',NULL,NULL,NULL),(25,NULL,NULL,'mailto:3lectricsheep@gmail.com',NULL,NULL,NULL),(26,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(27,NULL,NULL,'http://wp.me/pP0KO-f',NULL,NULL,NULL),(28,NULL,NULL,'mailto:3lectricsheep@gmail.com',NULL,NULL,NULL),(29,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(30,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(31,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(32,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(33,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(34,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(35,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=false',NULL,NULL,NULL),(36,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(37,'tel','(.*)',NULL,NULL,NULL,NULL),(38,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(39,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(40,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(41,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(42,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(43,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(44,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(45,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=(.*)',NULL,NULL,NULL),(46,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=NULL-CONSTANT',NULL,NULL,NULL),(47,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(48,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,1,1),(2,2,2),(3,3,3),(4,7,7),(5,8,8),(6,16,9),(7,23,13),(8,57,26),(9,66,29),(10,67,30),(11,68,31),(12,70,32),(13,71,33),(14,73,35),(15,73,36),(16,79,38),(17,82,39),(18,83,40),(19,85,41),(20,86,42),(21,87,43),(22,90,44),(23,92,47),(24,93,48);
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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,2,1),(10,2,5),(11,2,9),(12,2,10),(13,3,1),(14,3,5),(15,3,11),(16,4,1),(17,5,34),(18,4,4),(19,5,35),(20,6,1),(21,4,5),(22,5,1),(23,6,2),(24,4,7),(25,6,18),(26,5,2),(27,4,9),(28,5,32),(29,6,38),(30,4,11),(31,6,39),(32,5,33),(33,4,12),(34,5,5),(35,6,5),(36,4,13),(37,5,36),(38,6,37),(39,4,14),(40,5,7),(41,6,7),(42,4,15),(43,5,24),(44,6,22),(45,4,17),(46,5,29),(47,6,9),(48,4,16),(49,6,29),(50,5,28),(51,4,19),(52,5,31),(53,6,15),(54,4,18),(55,5,30),(56,4,21),(57,4,20),(58,4,23),(59,4,22),(60,4,25),(61,4,24),(62,4,27),(63,4,26),(64,7,1),(65,7,2),(66,7,18),(67,7,5),(68,7,7),(69,7,22),(70,7,9),(71,7,29);
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

-- Dump completed on 2015-10-09  0:41:14
