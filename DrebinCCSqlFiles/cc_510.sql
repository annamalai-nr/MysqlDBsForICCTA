-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_510
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (27,'SMS_SEND_ACTIOIN'),(6,'android.intent.action.BOOT_COMPLETED'),(24,'android.intent.action.CHOOSER'),(36,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(14,'android.intent.action.PACKAGE_ADDED'),(13,'android.intent.action.PACKAGE_CHANGED'),(15,'android.intent.action.PACKAGE_REMOVED'),(39,'android.intent.action.SCREEN_OFF'),(40,'android.intent.action.SCREEN_ON'),(9,'android.intent.action.SET_WALLPAPER'),(32,'android.intent.action.TIMEZONE_CHANGED'),(31,'android.intent.action.TIME_SET'),(30,'android.intent.action.TIME_TICK'),(28,'android.intent.action.VIEW'),(29,'android.intent.action.WALLPAPER_CHANGED'),(34,'android.net.conn.CONNECTIVITY_CHANGE'),(8,'android.provider.Telephony.SMS_RECEIVED'),(7,'android.provider.Telephony.WAP_PUSH_RECEIVED'),(38,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(33,'android.settings.WIRELESS_SETTINGS'),(35,'com.android.contacts.action.FILTER_CONTACTS'),(10,'com.android.launcher.action.INSTALL_SHORTCUT'),(11,'com.android.launcher.action.UNINSTALL_SHORTCUT'),(22,'com.jx.Action_CopyResError'),(23,'com.jx.MainActivity.CostInfo'),(12,'com.jx.MainActivity.ErrorInfo'),(19,'com.jx.MainActivity.InstallConfirmInfo'),(18,'com.jx.MainActivity.OpenLWP'),(21,'com.jx.MainActivity.RepeateInstall'),(20,'com.jx.MainActivity.SaveID'),(26,'com.jx.action.ExitBootReceiver'),(16,'com.jx.ad.ADService.ConfirmInstallInfo'),(2,'com.jx.ad.ADService.Init'),(37,'com.jx.ad.ADService.InitHasUpdate'),(17,'com.jx.ad.ADService.InstallRes'),(3,'com.jx.ad.ADService.Run'),(4,'com.jx.ad.ADService.RunCancel'),(25,'com.jx.ad.BootSmsReceiverService.Exit'),(5,'com.jx.ad.BootSmsReceiverService.Start');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applications`
--

LOCK TABLES `Applications` WRITE;
/*!40000 ALTER TABLE `Applications` DISABLE KEYS */;
INSERT INTO `Applications` VALUES (1,'com.jx.theme.n1904297018',1),(2,'km.home',1),(3,'com.jx.theme.n1368240560',1),(4,'com.km.launcher',1),(5,'com.jx.theme.n2039421837',1);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(3,'android.intent.category.HOME'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.jx.MainActivity'),(2,1,'com.jx.SettingActivity'),(3,1,'com.jx.WelcomeActivity'),(4,1,'com.jx.ad.AndroidThemeService'),(5,2,'km.home.Home'),(6,3,'com.jx.MainActivity'),(7,2,'km.home.UnlockActivity'),(8,1,'com.jx.ad.BootSmsReceiverService'),(9,3,'com.jx.SettingActivity'),(10,1,'com.jx.ad.BootReceiver'),(11,3,'com.jx.WelcomeActivity'),(12,2,'km.home.ThemeListActivity'),(13,3,'com.jx.ad.AndroidThemeService'),(14,2,'com.km.MainActivity'),(15,2,'com.km.HoldMessage'),(16,3,'com.jx.ad.BootSmsReceiverService'),(17,4,'com.km.launcher.Launcher'),(18,3,'com.jx.ad.BootReceiver'),(19,4,'com.km.launcher.WallpaperChooser'),(20,4,'com.km.theme.ThemeListActivity'),(21,4,'com.km.charge.MainActivity'),(22,4,'com.km.ad.AdService'),(23,4,'com.km.charge.CycleService'),(24,4,'com.km.launcher.InstallShortcutReceiver'),(25,4,'com.km.launcher.UninstallShortcutReceiver'),(26,4,'com.km.charge.BootReceiver'),(27,5,'com.jx.MainActivity'),(28,4,'com.km.launcher.LauncherProvider'),(29,5,'com.jx.SettingActivity'),(30,5,'com.jx.WelcomeActivity'),(31,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(32,5,'com.jx.ad.AndroidThemeService'),(33,5,'com.jx.ad.BootSmsReceiverService'),(34,5,'com.jx.ad.BootReceiver'),(35,1,'com.jx.ad.AndroidThemeService$4'),(36,2,'km.home.ThemeManager'),(37,1,'com.jx.ad.AndroidThemeService$3'),(38,2,'km.home.Home$WallpaperIntentReceiver'),(39,2,'com.km.SendMessage$SendMessageReceiver'),(40,3,'com.jx.ad.AndroidThemeService$MMSReceiver'),(41,2,'com.km.tool.Http$ConnectivityReceiver'),(42,3,'com.jx.tool.ApnManager'),(43,2,'km.home.UnlockActivity$TimeReceiver'),(44,2,'km.home.Home$ApplicationsIntentReceiver'),(45,3,'com.jx.MainActivity$ControlReceiver'),(46,3,'com.jx.ad.AndroidThemeService$4'),(47,1,'com.jx.tool.ApnManager'),(48,1,'com.jx.ad.AndroidThemeService$6'),(49,3,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(50,3,'com.jx.ad.AndroidThemeService$3'),(51,1,'com.jx.ad.AndroidThemeService$8'),(52,3,'com.jx.ad.ServiceControlReciver'),(53,3,'com.jx.MainActivity$1'),(54,2,'km.home.Home$ApplicationLauncher'),(55,1,'com.jx.ad.AndroidThemeService$5'),(56,3,'com.jx.ad.AndroidThemeService$6'),(57,5,'com.jx.MainActivity$ControlReceiver$6$1'),(58,5,'com.jx.ad.AndroidThemeService$5'),(59,5,'com.jx.ad.AndroidThemeService$6'),(60,5,'com.jx.MainActivity$ControlReceiver$1'),(61,4,'com.km.tool.ApnManager'),(62,5,'com.jx.MainActivity$4'),(63,4,'com.km.ad.AdService$1'),(64,5,'com.jx.tool.ApnManager'),(65,3,'com.jx.ad.AndroidThemeService$8'),(66,4,'com.km.charge.HttpBox$ConnectivityReceiver'),(67,4,'com.km.launcher.LauncherModel'),(68,3,'com.jx.ad.AndroidThemeService$2'),(69,5,'com.jx.ad.AndroidThemeService$4'),(70,1,'com.jx.ad.AndroidThemeService$7'),(71,4,'com.km.theme.ThemeManager'),(72,3,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(73,1,'com.jx.SettingActivity$1'),(74,4,'com.km.launcher.Search'),(75,3,'com.jx.ad.AndroidThemeService$5'),(76,4,'com.km.launcher.Launcher$WallpaperIntentReceiver'),(77,4,'com.km.charge.SendMessage$SendMessageReceiver'),(78,1,'com.jx.ad.ServiceControlReciver'),(79,1,'com.jx.ad.AndroidThemeService$SmsReceiver'),(80,3,'com.jx.SettingActivity$1'),(81,1,'com.jx.tool.Utility'),(82,4,'com.km.tool.Util'),(83,1,'com.jx.MainActivity$ControlReceiver$1'),(84,3,'com.jx.tool.Utility'),(85,4,'com.km.charge.HoldMessage'),(86,5,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(87,4,'com.km.launcher.MyAnalogClock$1'),(88,5,'com.jx.ad.AndroidThemeService$2'),(89,1,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(90,5,'com.jx.SettingActivity$1'),(91,1,'com.jx.SettingActivity$6'),(92,4,'com.km.tool.Http$ConnectivityReceiver'),(93,4,'com.km.launcher.Launcher$ApplicationsIntentReceiver'),(94,5,'com.jx.ad.AndroidThemeService$SmsReceiver'),(95,1,'com.jx.MainActivity$ControlReceiver'),(96,1,'com.jx.MainActivity$ControlReceiver$6$1'),(97,3,'com.jx.MainActivity$4'),(98,1,'com.jx.ad.AndroidThemeService$2'),(99,5,'com.jx.ad.AndroidThemeService$8'),(100,1,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(101,3,'com.jx.ad.AndroidThemeService$7'),(102,1,'com.jx.MainActivity$1'),(103,3,'com.jx.SettingActivity$6'),(104,3,'com.jx.MainActivity$ControlReceiver$6$1'),(105,1,'com.jx.ad.AndroidThemeService$MMSReceiver'),(106,3,'com.jx.ad.AndroidThemeService$SmsReceiver'),(107,1,'com.jx.MainActivity$4'),(108,5,'com.jx.ad.ServiceControlReciver'),(109,5,'com.jx.SettingActivity$6'),(110,3,'com.jx.MainActivity$ControlReceiver$1'),(111,5,'com.jx.ad.AndroidThemeService$3'),(112,5,'com.jx.MainActivity$1'),(113,5,'com.jx.ad.AndroidThemeService$MMSReceiver'),(114,5,'com.jx.MainActivity$ControlReceiver'),(115,5,'com.jx.tool.Utility'),(116,5,'com.adwo.adsdk.M'),(117,5,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(118,5,'com.jx.ad.AndroidThemeService$7');
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,4,'respid'),(2,13,'respid'),(3,4,'resownerid'),(4,15,'data'),(5,15,'pdus'),(6,31,'shouldShowTitlebar'),(7,24,'android.intent.extra.shortcut.INTENT'),(8,25,'duplicate'),(9,24,'android.intent.extra.shortcut.ICON'),(10,17,'android.intent.extra.shortcut.ICON'),(11,17,'launcher.add_spanX'),(12,24,'android.intent.extra.shortcut.ICON_RESOURCE'),(13,17,'android.intent.extra.shortcut.ICON_RESOURCE'),(14,17,'launcher.add_countX'),(15,31,'shouldEnableBottomBar'),(16,31,'shouldResizeOverlay'),(17,17,'launcher.add_cellX'),(18,17,'launcher.add_screen'),(19,17,'launcher.rename_folder'),(20,17,'launcher.add_spanY'),(21,17,'launcher.current_screen'),(22,31,'overlayTransition'),(23,17,'launcher.add_cellY'),(24,17,'android.intent.extra.shortcut.INTENT'),(25,24,'duplicate'),(26,17,'android.intent.extra.livefolder.BASE_INTENT'),(27,17,'launcher.add_occupied_cells'),(28,20,'launcher.all_apps_folder'),(29,21,'launcher.all_apps_folder'),(30,17,'launcher.all_apps_folder'),(31,17,'android.intent.extra.livefolder.ICON'),(32,24,'android.intent.extra.shortcut.NAME'),(33,17,'data'),(34,25,'android.intent.extra.shortcut.NAME'),(35,17,'android.intent.extra.livefolder.NAME'),(36,32,'respid'),(37,17,'launcher.rename_folder_id'),(38,17,'android.intent.extra.shortcut.NAME'),(39,20,'launcher.user_folder'),(40,21,'launcher.user_folder'),(41,17,'launcher.user_folder'),(42,31,'shouldMakeOverlayTransparent'),(43,31,'transitionTime'),(44,13,'resownerid'),(45,31,'shouldShowBottomBar'),(46,25,'android.intent.extra.shortcut.INTENT'),(47,17,'launcher.add_countY'),(48,31,'overlayTitle'),(49,32,'resownerid'),(50,31,'url');
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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'s',1,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'s',1,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,11,'a',0,NULL,NULL),(11,10,'r',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'s',1,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'r',1,NULL,NULL),(16,16,'s',1,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'r',1,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'s',0,NULL,NULL),(23,23,'s',0,NULL,NULL),(24,24,'r',1,26,NULL),(25,25,'r',1,27,NULL),(26,26,'r',1,NULL,NULL),(27,28,'p',0,NULL,NULL),(28,27,'a',1,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'s',1,NULL,NULL),(33,33,'s',1,NULL,NULL),(34,34,'r',1,NULL,NULL),(35,38,'r',1,NULL,NULL),(36,39,'r',1,NULL,NULL),(37,40,'r',1,NULL,NULL),(38,41,'r',1,NULL,NULL),(39,43,'r',1,NULL,NULL),(40,44,'r',1,NULL,NULL),(41,45,'r',1,NULL,NULL),(42,49,'r',1,NULL,NULL),(43,52,'r',1,NULL,NULL),(44,66,'r',1,NULL,NULL),(45,72,'r',1,NULL,NULL),(46,76,'r',1,NULL,NULL),(47,77,'r',1,NULL,NULL),(48,78,'r',1,NULL,NULL),(49,79,'r',1,NULL,NULL),(50,24,'r',1,NULL,NULL),(51,25,'r',1,NULL,NULL),(52,85,'r',1,NULL,NULL),(53,86,'r',1,NULL,NULL),(54,87,'r',1,NULL,NULL),(55,89,'r',1,NULL,NULL),(56,92,'r',1,NULL,NULL),(57,93,'r',1,NULL,NULL),(58,94,'r',1,NULL,NULL),(59,95,'r',1,NULL,NULL),(60,100,'r',1,NULL,NULL),(61,105,'r',1,NULL,NULL),(62,106,'r',1,NULL,NULL),(63,108,'r',1,NULL,NULL),(64,113,'r',1,NULL,NULL),(65,114,'r',1,NULL,NULL),(66,116,'r',1,NULL,NULL),(67,117,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=268 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,5),(3,3,4),(4,4,7),(5,5,4),(6,6,3),(7,6,2),(8,6,1),(9,7,13),(10,8,18),(11,9,5),(12,10,13),(13,11,4),(14,12,13),(15,13,4),(16,14,4),(17,15,6),(18,16,4),(19,17,13),(20,18,4),(21,19,10),(22,19,6),(23,19,9),(24,20,28),(25,21,5),(26,22,4),(27,23,32),(28,24,13),(29,25,1),(30,25,3),(31,25,2),(32,26,13),(33,27,30),(34,27,28),(35,27,29),(36,28,7),(37,28,14),(38,29,13),(39,31,13),(40,30,32),(41,32,6),(42,32,10),(43,32,9),(44,33,32),(45,34,28),(46,34,29),(47,34,30),(48,35,21),(49,35,20),(50,36,17),(51,37,29),(52,37,28),(53,37,30),(54,38,27),(55,39,21),(56,39,20),(57,40,21),(58,40,20),(59,41,32),(60,42,13),(61,43,32),(62,44,17),(63,45,20),(64,45,21),(65,46,20),(66,46,21),(67,47,13),(68,48,27),(69,49,28),(70,50,21),(71,50,17),(72,51,20),(73,51,21),(74,52,32),(75,53,4),(76,54,13),(77,55,17),(78,55,21),(79,56,17),(80,57,30),(81,58,4),(82,59,6),(83,60,21),(84,60,20),(85,61,17),(86,61,20),(87,62,24),(88,63,1),(89,63,2),(90,63,3),(91,64,6),(92,65,21),(93,65,17),(94,66,13),(95,67,4),(96,68,34),(97,69,17),(98,69,20),(99,70,13),(100,71,32),(101,72,17),(102,72,21),(103,73,17),(104,74,29),(105,74,30),(106,74,28),(107,75,25),(108,76,9),(109,76,10),(110,76,6),(111,77,4),(112,77,3),(113,77,2),(114,78,26),(115,78,17),(116,79,13),(117,80,21),(118,80,20),(119,81,4),(120,82,1),(121,82,2),(122,82,3),(123,83,21),(124,83,20),(125,84,9),(126,84,10),(127,84,13),(128,85,4),(129,86,24),(130,87,4),(131,88,13),(132,89,20),(133,89,21),(134,90,4),(135,91,32),(136,92,13),(137,93,25),(138,94,13),(139,95,29),(140,95,28),(141,95,30),(142,96,17),(143,97,3),(144,97,2),(145,97,1),(146,98,17),(147,99,32),(148,100,13),(149,101,1),(150,102,11),(151,103,9),(152,104,21),(153,104,17),(154,105,32),(155,106,13),(156,107,3),(157,107,2),(158,107,1),(159,108,32),(160,109,21),(161,109,20),(162,110,6),(163,110,9),(164,110,10),(165,111,4),(166,112,20),(167,112,21),(168,113,17),(169,114,17),(170,114,20),(171,115,32),(172,116,13),(173,118,4),(174,117,17),(175,117,24),(176,119,32),(177,120,4),(178,121,13),(179,122,17),(180,123,32),(181,124,17),(182,125,32),(183,126,13),(184,127,20),(185,127,21),(186,128,2),(187,128,1),(188,128,3),(189,129,20),(190,129,21),(191,130,32),(192,131,21),(193,131,20),(194,132,6),(195,132,9),(196,132,10),(197,133,1),(198,134,25),(199,135,17),(200,135,26),(201,136,28),(202,137,1),(203,138,24),(204,139,10),(205,139,6),(206,139,9),(207,140,20),(208,140,21),(209,141,4),(210,142,28),(211,142,29),(212,142,30),(213,143,25),(214,144,24),(215,145,13),(216,146,25),(217,147,4),(218,148,21),(219,148,20),(220,149,10),(221,149,9),(222,149,6),(223,150,17),(224,150,24),(225,151,4),(226,152,21),(227,152,17),(228,153,17),(229,153,20),(230,154,3),(231,154,2),(232,155,17),(233,156,4),(234,157,21),(235,157,20),(236,158,25),(237,159,4),(238,160,1),(239,161,3),(240,161,2),(241,161,1),(242,162,32),(243,163,32),(244,164,6),(245,165,10),(246,165,9),(247,166,28),(248,166,30),(249,166,29),(250,167,6),(251,167,9),(252,167,10),(253,168,32),(254,169,32),(255,170,29),(256,170,30),(257,170,28),(258,171,29),(259,171,30),(260,172,32),(261,173,32),(262,174,28),(263,175,32),(264,175,30),(265,175,29),(266,176,29),(267,177,32);
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
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,2,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(2,5,'<km.home.Home: void changeTheme(km.theme.ThemeInfo)>',15,'a',NULL),(3,35,'<com.jx.ad.AndroidThemeService$4: void run()>',120,'r',NULL),(4,36,'<km.home.ThemeManager: void setup()>',24,'a',NULL),(5,37,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(6,1,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(7,42,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(8,18,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(9,5,'<km.home.Home: void startWallpaper()>',5,'a',NULL),(10,42,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(11,37,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(12,46,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(13,47,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(14,48,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(15,6,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(16,48,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(17,50,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(18,51,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(19,53,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(20,27,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(21,54,'<km.home.Home$ApplicationLauncher: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',9,'a',0),(22,55,'<com.jx.ad.AndroidThemeService$5: void run()>',113,'r',NULL),(23,32,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(24,56,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(25,1,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(26,42,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(27,57,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(28,7,'<km.home.UnlockActivity: void onClick(android.view.View)>',5,'a',NULL),(29,42,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(30,58,'<com.jx.ad.AndroidThemeService$5: void run()>',116,'r',NULL),(31,13,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(32,6,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(33,59,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(34,60,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(35,61,'<com.km.tool.ApnManager: int CreateGPRSApn()>',27,'p',NULL),(36,17,'<com.km.launcher.Launcher: void registerContentObservers()>',4,'p',NULL),(37,62,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(38,28,'<com.km.launcher.LauncherProvider: void sendNotify(android.net.Uri)>',9,'p',0),(39,61,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',19,'p',NULL),(40,63,'<com.km.ad.AdService$1: void run()>',6,'s',NULL),(41,64,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(42,65,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(43,59,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(44,67,'<com.km.launcher.LauncherModel: com.km.launcher.Widget getPhotoFrameInfo(android.content.Context,int,int,int)>',15,'p',NULL),(45,61,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',9,'p',NULL),(46,61,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',19,'p',NULL),(47,68,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(48,28,'<com.km.launcher.LauncherProvider: void sendNotify(android.net.Uri)>',9,'p',0),(49,27,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(50,17,'<com.km.launcher.Launcher: boolean onKeyDown(int,android.view.KeyEvent)>',27,'a',NULL),(51,61,'<com.km.tool.ApnManager: int getApnId(java.lang.String)>',6,'p',NULL),(52,69,'<com.jx.ad.AndroidThemeService$4: void run()>',125,'r',NULL),(53,70,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(54,68,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(55,17,'<com.km.launcher.Launcher: void startActivitySafely(android.content.Intent)>',3,'a',0),(56,67,'<com.km.launcher.LauncherModel: com.km.launcher.FolderInfo getFolderById(android.content.Context,long)>',12,'p',NULL),(57,30,'<com.jx.WelcomeActivity: void onResume()>',67,'a',NULL),(58,48,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(59,6,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(60,61,'<com.km.tool.ApnManager: int getApnId(java.lang.String)>',6,'p',NULL),(61,71,'<com.km.theme.ThemeManager: void setup()>',32,'a',NULL),(62,67,'<com.km.launcher.LauncherModel: boolean shortcutExists(android.content.Context,java.lang.String,android.content.Intent)>',12,'p',NULL),(63,73,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(64,6,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(65,74,'<com.km.launcher.Search: void sendLaunchIntent(java.lang.String,android.net.Uri,java.lang.String,android.os.Bundle,int,java.lang.String,android.server.search.SearchableInfo)>',20,'a',NULL),(66,75,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(67,4,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(68,34,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(69,67,'<com.km.launcher.LauncherModel: void updateItemInDatabase(android.content.Context,com.km.launcher.ItemInfo)>',8,'p',NULL),(70,75,'<com.jx.ad.AndroidThemeService$5: void run()>',113,'r',NULL),(71,64,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(72,17,'<com.km.launcher.Launcher: boolean onKeyDown(int,android.view.KeyEvent)>',27,'a',NULL),(73,67,'<com.km.launcher.LauncherModel: com.km.launcher.FolderInfo getFolderById(android.content.Context,long)>',12,'p',NULL),(74,27,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(75,25,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'p',NULL),(76,80,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(77,81,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(78,82,'<com.km.tool.Util: void startServiceWithSingleMode(android.content.Context,java.lang.Class)>',7,'s',NULL),(79,65,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(80,61,'<com.km.tool.ApnManager: int CreateWapApn()>',27,'p',NULL),(81,47,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(82,83,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(83,61,'<com.km.tool.ApnManager: int CreateWapApn()>',27,'p',NULL),(84,84,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(85,47,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(86,24,'<com.km.launcher.InstallShortcutReceiver: boolean findEmptyCell(android.content.Context,int[],int)>',19,'p',NULL),(87,35,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(88,13,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(89,63,'<com.km.ad.AdService$1: void run()>',6,'s',NULL),(90,4,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(91,88,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(92,56,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(93,25,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'p',NULL),(94,46,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(95,90,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(96,17,'<com.km.launcher.Launcher: void registerContentObservers()>',4,'p',NULL),(97,91,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(98,17,'<com.km.launcher.Launcher: void startWallpaper()>',5,'a',NULL),(99,88,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(100,46,'<com.jx.ad.AndroidThemeService$4: void run()>',120,'r',NULL),(101,1,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(102,10,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(103,9,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(104,74,'<com.km.launcher.Search: void sendLaunchIntent(java.lang.String,android.net.Uri,java.lang.String,android.os.Bundle,int,java.lang.String,android.server.search.SearchableInfo)>',20,'a',NULL),(105,32,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(106,50,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(107,96,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(108,88,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(109,61,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',9,'p',NULL),(110,97,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(111,98,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(112,61,'<com.km.tool.ApnManager: int CreateWapApn()>',30,'p',0),(113,17,'<com.km.launcher.Launcher: void startWallpaper()>',5,'a',NULL),(114,67,'<com.km.launcher.LauncherModel: void updateItemInDatabase(android.content.Context,com.km.launcher.ItemInfo)>',8,'p',NULL),(115,99,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(116,68,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(117,67,'<com.km.launcher.LauncherModel: void addItemToDatabase(android.content.Context,com.km.launcher.ItemInfo,long,int,int,int,boolean)>',17,'p',NULL),(118,47,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(119,64,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(120,98,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(121,56,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(122,67,'<com.km.launcher.LauncherModel: com.km.launcher.Widget getPhotoFrameInfo(android.content.Context,int,int,int)>',15,'p',NULL),(123,64,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(124,17,'<com.km.launcher.Launcher: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(125,99,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(126,101,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(127,61,'<com.km.tool.ApnManager: void delete(int)>',8,'p',NULL),(128,102,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(129,61,'<com.km.tool.ApnManager: int CreateWapApn()>',30,'p',0),(130,69,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(131,61,'<com.km.tool.ApnManager: int CreateGPRSApn()>',30,'p',0),(132,103,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(133,1,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(134,25,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',25,'p',NULL),(135,82,'<com.km.tool.Util: void startServiceWithSingleMode(android.content.Context,java.lang.Class)>',7,'s',NULL),(136,27,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(137,1,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(138,67,'<com.km.launcher.LauncherModel: boolean shortcutExists(android.content.Context,java.lang.String,android.content.Intent)>',12,'p',NULL),(139,104,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(140,61,'<com.km.tool.ApnManager: int CreateGPRSApn()>',27,'p',NULL),(141,51,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(142,27,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(143,25,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'p',NULL),(144,24,'<com.km.launcher.InstallShortcutReceiver: boolean findEmptyCell(android.content.Context,int[],int)>',19,'p',NULL),(145,56,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(146,25,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',25,'p',NULL),(147,48,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(148,61,'<com.km.tool.ApnManager: void delete(int)>',8,'p',NULL),(149,6,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(150,67,'<com.km.launcher.LauncherModel: void addItemToDatabase(android.content.Context,com.km.launcher.ItemInfo,long,int,int,int,boolean)>',17,'p',NULL),(151,98,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(152,17,'<com.km.launcher.Launcher: void startActivitySafely(android.content.Intent)>',3,'a',0),(153,71,'<com.km.theme.ThemeManager: void setup()>',32,'a',NULL),(154,3,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(155,17,'<com.km.launcher.Launcher: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(156,55,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(157,61,'<com.km.tool.ApnManager: int CreateGPRSApn()>',30,'p',0),(158,25,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'p',NULL),(159,35,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(160,1,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(161,107,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(162,59,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(163,59,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(164,6,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(165,11,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(166,109,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(167,110,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(168,58,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(169,111,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(170,112,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(171,30,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(172,111,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(173,69,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(174,27,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(175,115,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(176,29,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(177,118,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,1),(2,3,12),(3,5,12),(4,6,16),(5,7,3),(6,8,2),(7,9,5),(8,10,4),(9,11,17),(10,12,24),(11,13,24),(12,14,25),(13,15,24),(14,17,24),(15,18,24),(16,19,12),(17,20,26),(18,21,24),(19,22,24),(20,23,12),(21,24,25),(22,25,24),(23,26,12),(24,27,28),(25,29,12),(26,30,20),(27,31,12),(28,32,3),(29,33,22),(30,34,17),(31,36,17),(32,37,20),(33,38,12),(34,39,3),(35,40,16),(36,41,23),(37,42,2),(38,43,3),(39,44,2),(40,45,4),(41,46,33),(42,47,4),(43,48,16),(44,49,28),(45,50,17),(46,52,16),(47,53,12),(48,54,12),(49,55,2),(50,56,4),(51,57,12),(52,58,26),(53,59,35),(54,60,12),(55,61,36),(56,62,12),(57,63,12),(58,66,23),(59,70,28),(60,71,25),(61,72,28),(62,75,20),(63,74,12),(64,76,28),(65,77,5),(66,78,12),(67,79,35),(68,80,36),(69,81,16),(70,82,28),(71,84,3),(72,86,19),(73,87,2),(74,88,4),(75,89,33),(76,91,17),(77,93,23),(78,95,23),(79,96,12),(80,97,12),(81,98,37),(82,99,28),(83,100,28),(84,101,24),(85,102,12),(86,103,12),(87,104,24),(88,105,25),(89,106,24),(90,107,5),(91,108,1),(92,109,24),(93,110,28),(94,111,24),(95,112,23),(96,114,28),(97,113,24),(98,115,12),(99,116,22),(100,117,24),(101,118,12),(102,119,24),(103,120,28),(104,121,12),(105,122,24),(106,123,19),(107,124,12),(108,125,24),(109,126,24),(110,127,12),(111,128,24),(112,129,23),(113,130,24),(114,132,12),(115,133,24),(116,134,12),(117,135,24),(118,136,28),(119,138,24),(120,139,28),(121,143,26),(122,144,22),(123,145,19),(124,146,17),(125,147,12),(126,148,3),(127,149,12),(128,150,3),(129,151,3),(130,152,4),(131,153,12),(132,154,17),(133,155,2),(134,157,4),(135,158,38),(136,160,4),(137,161,3),(138,162,12),(139,163,16),(140,164,2),(141,165,2),(142,166,37),(143,167,17),(144,168,16),(145,170,4),(146,171,17),(147,172,28),(148,173,16),(149,174,12),(150,175,2),(151,176,16),(152,177,12),(153,179,38),(154,180,28),(155,181,33),(156,182,12),(157,183,12),(158,184,28),(159,185,38),(160,186,25),(161,187,37),(162,188,25),(163,190,1),(164,191,12);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,1,1),(2,108,1),(3,158,2),(4,179,2),(5,185,2),(6,190,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com.nd.android.launcher.Launcher'),(2,2,'km/home/UnlockActivity'),(3,4,'com/km/MainActivity'),(4,9,'com/jx/ad/BootSmsReceiverService'),(5,16,'com.android.packageinstaller.PackageInstallerActivity'),(6,28,'com/jx/WelcomeActivity'),(7,32,'com/jx/ad/AndroidThemeService'),(8,35,'km/home/Home'),(9,34,'com/jx/ad/AndroidThemeService'),(10,42,'com/jx/ad/AndroidThemeService'),(11,51,'com/km/ad/AdService'),(12,52,'com/jx/ad/AndroidThemeService'),(13,56,'com/jx/ad/AndroidThemeService'),(14,65,'com/jx/WelcomeActivity'),(15,64,'.Launcher'),(16,67,'com/km/charge/MainActivity'),(17,68,'(.*).Launcher'),(18,69,'(.*).Launcher'),(19,73,'.Launcher'),(20,77,'com/jx/ad/BootSmsReceiverService'),(21,83,'com.android.packageinstaller.PackageInstallerActivity'),(22,85,'com/km/charge/CycleService'),(23,90,'com.android.packageinstaller.PackageInstallerActivity'),(24,92,'com.android.packageinstaller.PackageInstallerActivity'),(25,94,'com/km/ad/AdService'),(26,107,'com/jx/ad/BootSmsReceiverService'),(27,108,'com.nd.android.launcher.Launcher'),(28,131,'com/km/theme/ThemeListActivity'),(29,137,'com.android.packageinstaller.PackageInstallerActivity'),(30,140,'com/jx/WelcomeActivity'),(31,141,'com/km/charge/CycleService'),(32,142,'com/jx/WelcomeActivity'),(33,148,'com/jx/ad/AndroidThemeService'),(34,151,'com/jx/ad/AndroidThemeService'),(35,152,'com/jx/ad/AndroidThemeService'),(36,156,'com/km/charge/MainActivity'),(37,155,'com/jx/ad/AndroidThemeService'),(38,159,'com/km/theme/ThemeListActivity'),(39,157,'com/jx/ad/AndroidThemeService'),(40,164,'com/jx/ad/AndroidThemeService'),(41,167,'com/jx/ad/AndroidThemeService'),(42,169,'com/jx/WelcomeActivity'),(43,168,'com/jx/ad/AndroidThemeService'),(44,171,'com/jx/ad/AndroidThemeService'),(45,176,'com/jx/ad/AndroidThemeService'),(46,178,'com/jx/WelcomeActivity'),(47,189,'com.android.packageinstaller.PackageInstallerActivity'),(48,190,'com.nd.android.launcher.Launcher');
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,3,1),(2,5,2),(3,16,4),(4,19,6),(5,23,7),(6,26,8),(7,27,9),(8,29,10),(9,30,11),(10,31,12),(11,33,14),(12,38,16),(13,37,17),(14,41,18),(15,49,21),(16,53,24),(17,54,25),(18,57,28),(19,60,30),(20,61,31),(21,62,32),(22,63,33),(23,66,36),(24,70,38),(25,72,39),(26,76,40),(27,74,41),(28,75,42),(29,78,46),(30,80,48),(31,82,49),(32,83,50),(33,86,52),(34,90,54),(35,92,57),(36,93,58),(37,95,59),(38,97,60),(39,96,61),(40,99,64),(41,100,65),(42,102,66),(43,103,67),(44,110,68),(45,112,69),(46,114,70),(47,115,71),(48,116,72),(49,118,74),(50,120,75),(51,121,77),(52,123,78),(53,124,81),(54,127,86),(55,129,87),(56,132,88),(57,134,90),(58,136,91),(59,137,92),(60,139,94),(61,144,97),(62,145,99),(63,147,101),(64,149,104),(65,153,107),(66,162,109),(67,172,110),(68,174,111),(69,177,112),(70,180,113),(71,182,114),(72,183,115),(73,184,116),(74,189,117),(75,191,118);
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
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'from'),(2,3,'CostTips'),(3,5,'CostTips'),(4,6,'resownerid'),(5,6,'respid'),(6,7,'resownerid'),(7,7,'respid'),(8,8,'resownerid'),(9,8,'respid'),(10,10,'resownerid'),(11,10,'respid'),(12,11,'resownerid'),(13,11,'respid'),(14,12,'android.intent.extra.INTENT'),(15,13,'android.intent.extra.INTENT'),(16,15,'android.intent.extra.TITLE'),(17,15,'android.intent.extra.INTENT'),(18,17,'android.intent.extra.INTENT'),(19,18,'android.intent.extra.TITLE'),(20,19,'CostTips'),(21,18,'android.intent.extra.INTENT'),(22,21,'android.intent.extra.INTENT'),(23,22,'android.intent.extra.TITLE'),(24,23,'CostTips'),(25,22,'android.intent.extra.INTENT'),(26,25,'android.intent.extra.TITLE'),(27,25,'android.intent.extra.INTENT'),(28,26,'CostTips'),(29,29,'CostTips'),(30,30,'respid'),(31,31,'CostTips'),(32,32,'resownerid'),(33,32,'respid'),(34,34,'resownerid'),(35,34,'respid'),(36,36,'resownerid'),(37,36,'respid'),(38,38,'CostTips'),(39,37,'respid'),(40,39,'resownerid'),(41,39,'respid'),(42,40,'resownerid'),(43,41,'CostTips'),(44,40,'respid'),(45,42,'resownerid'),(46,42,'respid'),(47,43,'resownerid'),(48,43,'respid'),(49,44,'resownerid'),(50,45,'resownerid'),(51,44,'respid'),(52,45,'respid'),(53,47,'resownerid'),(54,47,'respid'),(55,48,'resownerid'),(56,48,'respid'),(57,50,'resownerid'),(58,50,'respid'),(59,52,'resownerid'),(60,52,'respid'),(61,53,'CostTips'),(62,54,'CostTips'),(63,55,'resownerid'),(64,55,'respid'),(65,56,'resownerid'),(66,57,'CostTips'),(67,56,'respid'),(68,57,'SetNetwork'),(69,59,'com.android.contacts.extra.FILTER_TEXT'),(70,60,'CostTips'),(71,62,'CostTips'),(72,63,'CostTips'),(73,64,'startother'),(74,66,'CostTips'),(75,68,'startother'),(76,69,'startother'),(77,73,'startother'),(78,74,'CostTips'),(79,75,'respid'),(80,78,'CostTips'),(81,79,'com.android.contacts.extra.FILTER_TEXT'),(82,81,'resownerid'),(83,81,'respid'),(84,84,'resownerid'),(85,84,'respid'),(86,87,'resownerid'),(87,87,'respid'),(88,88,'resownerid'),(89,88,'respid'),(90,91,'resownerid'),(91,91,'respid'),(92,93,'CostTips'),(93,95,'CostTips'),(94,96,'CostTips'),(95,97,'CostTips'),(96,96,'SetNetwork'),(97,98,'resownerid'),(98,98,'respid'),(99,101,'android.intent.extra.INTENT'),(100,102,'CostTips'),(101,103,'CostTips'),(102,104,'android.intent.extra.INTENT'),(103,106,'android.intent.extra.TITLE'),(104,106,'android.intent.extra.INTENT'),(105,109,'android.intent.extra.INTENT'),(106,108,'from'),(107,111,'android.intent.extra.TITLE'),(108,111,'android.intent.extra.INTENT'),(109,112,'CostTips'),(110,113,'android.intent.extra.INTENT'),(111,115,'CostTips'),(112,117,'android.intent.extra.TITLE'),(113,117,'android.intent.extra.INTENT'),(114,118,'CostTips'),(115,119,'android.intent.extra.TITLE'),(116,119,'android.intent.extra.INTENT'),(117,121,'CostTips'),(118,122,'android.intent.extra.INTENT'),(119,124,'CostTips'),(120,125,'android.intent.extra.INTENT'),(121,126,'android.intent.extra.TITLE'),(122,126,'android.intent.extra.INTENT'),(123,127,'CostTips'),(124,128,'android.intent.extra.INTENT'),(125,129,'CostTips'),(126,130,'android.intent.extra.TITLE'),(127,130,'android.intent.extra.INTENT'),(128,132,'CostTips'),(129,133,'android.intent.extra.INTENT'),(130,134,'CostTips'),(131,135,'android.intent.extra.TITLE'),(132,135,'android.intent.extra.INTENT'),(133,138,'android.intent.extra.TITLE'),(134,138,'android.intent.extra.INTENT'),(135,146,'resownerid'),(136,146,'respid'),(137,147,'CostTips'),(138,148,'resownerid'),(139,148,'respid'),(140,149,'CostTips'),(141,150,'resownerid'),(142,150,'respid'),(143,151,'resownerid'),(144,151,'respid'),(145,152,'resownerid'),(146,152,'respid'),(147,153,'CostTips'),(148,153,'SetNetwork'),(149,154,'resownerid'),(150,154,'respid'),(151,155,'resownerid'),(152,155,'respid'),(153,157,'resownerid'),(154,157,'respid'),(155,160,'resownerid'),(156,160,'respid'),(157,161,'resownerid'),(158,162,'CostTips'),(159,161,'respid'),(160,163,'resownerid'),(161,163,'respid'),(162,164,'resownerid'),(163,164,'respid'),(164,165,'resownerid'),(165,166,'resownerid'),(166,165,'respid'),(167,166,'respid'),(168,167,'resownerid'),(169,168,'resownerid'),(170,167,'respid'),(171,168,'respid'),(172,170,'resownerid'),(173,171,'resownerid'),(174,170,'respid'),(175,171,'respid'),(176,173,'resownerid'),(177,173,'respid'),(178,174,'CostTips'),(179,175,'resownerid'),(180,175,'respid'),(181,176,'resownerid'),(182,176,'respid'),(183,177,'CostTips'),(184,182,'CostTips'),(185,183,'CostTips'),(186,187,'resownerid'),(187,187,'respid'),(188,190,'from'),(189,191,'CostTips');
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
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,4),(4,3,3),(5,4,1),(6,5,1),(7,6,5),(8,7,6),(9,8,3),(10,8,4),(11,9,2),(12,10,7),(13,11,5),(14,12,7),(15,13,1),(16,14,1),(17,15,6),(18,16,8),(19,17,9),(20,18,9),(21,19,10),(22,20,10),(23,21,11),(24,22,11),(25,23,6),(26,24,6),(27,25,1),(28,26,2),(29,27,4),(30,27,3),(31,28,5),(32,29,6),(33,30,14),(34,30,13),(35,30,15),(36,31,14),(37,31,15),(38,31,13),(39,32,15),(40,32,14),(41,32,13),(42,33,7),(43,34,14),(44,34,13),(45,34,15),(46,35,13),(47,35,14),(48,35,15),(49,36,13),(50,36,14),(51,36,15),(52,37,21),(53,37,20),(54,37,23),(55,37,22),(56,37,18),(57,37,19),(58,37,12),(59,37,14),(60,38,25),(61,39,17),(62,39,16),(63,39,4),(64,39,3),(65,39,2),(66,40,27),(67,41,29),(68,42,29),(69,43,29),(70,44,29),(71,45,29),(72,46,29),(73,47,32),(74,47,30),(75,47,31),(76,48,30),(77,48,31),(78,48,32),(79,49,31),(80,49,30),(81,49,32),(82,50,30),(83,50,32),(84,50,31),(85,51,30),(86,51,31),(87,51,32),(88,52,31),(89,52,32),(90,52,30),(91,53,34),(92,54,8),(93,55,29),(94,56,27),(95,57,4),(96,57,3),(97,57,2),(98,57,16),(99,57,17),(100,58,8),(101,59,34),(102,60,27),(103,61,13),(104,61,15),(105,61,14),(106,62,29),(107,63,15),(108,63,14),(109,63,13),(110,64,14),(111,64,13),(112,64,15),(113,65,8),(114,66,15),(115,66,14),(116,66,13),(117,67,13),(118,67,15),(119,67,14),(120,68,13),(121,68,14),(122,68,15),(123,69,8),(124,70,13),(125,70,14),(126,70,15),(127,71,14),(128,71,15),(129,71,13),(130,72,14),(131,72,13),(132,72,15),(133,73,15),(134,73,14),(135,73,13),(136,74,8),(137,75,14),(138,75,12),(139,75,23),(140,75,22),(141,75,21),(142,75,20),(143,75,19),(144,75,18),(145,76,25),(146,77,13),(147,77,14),(148,77,15),(149,78,7),(150,79,13),(151,79,14),(152,79,15),(153,80,14),(154,80,15),(155,80,13),(156,81,8),(157,82,13),(158,82,14),(159,82,15),(160,83,14),(161,83,15),(162,83,13),(163,84,15),(164,84,13),(165,84,14),(166,85,13),(167,85,15),(168,85,14),(169,86,15),(170,86,14),(171,86,13),(172,87,15),(173,87,14),(174,87,13),(175,88,15),(176,88,14),(177,88,13),(178,89,4),(179,89,16),(180,89,17),(181,89,3),(182,89,2),(183,90,7),(184,91,12),(185,91,14),(186,91,18),(187,91,19),(188,91,20),(189,91,21),(190,91,22),(191,91,23),(192,92,39),(193,92,40),(194,93,25);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,4,1),(3,5,1),(4,5,3),(5,5,2),(6,13,3),(7,13,2),(8,13,1),(9,14,2),(10,14,1),(11,14,3),(12,17,2),(13,18,2),(14,25,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,10,NULL,NULL,NULL,NULL,'application','vnd.wap.sic'),(2,12,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(3,30,'package',NULL,NULL,NULL,NULL,NULL),(4,31,'package',NULL,NULL,NULL,NULL,NULL),(5,32,'package',NULL,NULL,NULL,NULL,NULL),(6,33,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(7,34,'package',NULL,NULL,NULL,NULL,NULL),(8,35,'package',NULL,NULL,NULL,NULL,NULL),(9,36,'package',NULL,NULL,NULL,NULL,NULL),(10,37,'package',NULL,NULL,NULL,NULL,NULL),(11,61,'package',NULL,NULL,NULL,NULL,NULL),(12,63,'package',NULL,NULL,NULL,NULL,NULL),(13,64,'package',NULL,NULL,NULL,NULL,NULL),(14,66,'package',NULL,NULL,NULL,NULL,NULL),(15,67,'package',NULL,NULL,NULL,NULL,NULL),(16,68,'package',NULL,NULL,NULL,NULL,NULL),(17,70,'package',NULL,NULL,NULL,NULL,NULL),(18,71,'package',NULL,NULL,NULL,NULL,NULL),(19,72,'package',NULL,NULL,NULL,NULL,NULL),(20,73,'package',NULL,NULL,NULL,NULL,NULL),(21,75,'package',NULL,NULL,NULL,NULL,NULL),(22,77,'package',NULL,NULL,NULL,NULL,NULL),(23,78,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(24,79,'package',NULL,NULL,NULL,NULL,NULL),(25,80,'package',NULL,NULL,NULL,NULL,NULL),(26,82,'package',NULL,NULL,NULL,NULL,NULL),(27,83,'package',NULL,NULL,NULL,NULL,NULL),(28,84,'package',NULL,NULL,NULL,NULL,NULL),(29,85,'package',NULL,NULL,NULL,NULL,NULL),(30,86,'package',NULL,NULL,NULL,NULL,NULL),(31,87,'package',NULL,NULL,NULL,NULL,NULL),(32,88,'package',NULL,NULL,NULL,NULL,NULL),(33,90,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(34,91,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'NULL-CONSTANT'),(2,2,'km.home'),(3,4,'km.home'),(4,9,'com.jx.theme.n1368240560'),(5,16,'com.android.packageinstaller'),(6,28,'com.jx.theme.n2039421837'),(7,32,'com.jx.theme.n1904297018'),(8,35,'km.home'),(9,34,'com.jx.theme.n1904297018'),(10,36,'com.jx.util'),(11,39,'com.jx.util'),(12,42,'com.jx.theme.n1904297018'),(13,45,'com.jx.util'),(14,48,'com.jx.util'),(15,51,'com.km.launcher'),(16,52,'com.jx.theme.n1904297018'),(17,55,'com.jx.util'),(18,56,'com.jx.theme.n1904297018'),(19,65,'com.jx.theme.n1368240560'),(20,64,''),(21,67,'com.km.launcher'),(22,68,''),(23,69,'(.*)'),(24,73,'(.*)'),(25,77,'com.jx.theme.n2039421837'),(26,83,'com.android.packageinstaller'),(27,85,'com.km.launcher'),(28,90,'com.android.packageinstaller'),(29,92,'com.android.packageinstaller'),(30,94,'com.km.launcher'),(31,98,'com.jx.util'),(32,107,'com.jx.theme.n1904297018'),(33,108,'NULL-CONSTANT'),(34,131,'com.km.launcher'),(35,137,'com.android.packageinstaller'),(36,140,'com.jx.theme.n1904297018'),(37,141,'com.km.launcher'),(38,142,'com.jx.theme.n2039421837'),(39,146,'com.jx.util'),(40,148,'com.jx.theme.n2039421837'),(41,150,'com.jx.util'),(42,151,'com.jx.theme.n1368240560'),(43,152,'com.jx.theme.n2039421837'),(44,154,'com.jx.util'),(45,156,'com.km.launcher'),(46,155,'com.jx.theme.n2039421837'),(47,159,'com.km.launcher'),(48,157,'com.jx.theme.n1368240560'),(49,160,'com.jx.util'),(50,161,'com.jx.util'),(51,163,'com.jx.util'),(52,164,'com.jx.theme.n1368240560'),(53,165,'com.jx.util'),(54,166,'com.jx.util'),(55,167,'com.jx.theme.n1368240560'),(56,169,'com.jx.theme.n1904297018'),(57,168,'com.jx.theme.n2039421837'),(58,170,'com.jx.util'),(59,171,'com.jx.theme.n2039421837'),(60,173,'com.jx.util'),(61,175,'com.jx.util'),(62,176,'com.jx.theme.n1368240560'),(63,178,'com.jx.theme.n1368240560'),(64,187,'com.jx.util'),(65,189,'com.android.packageinstaller'),(66,190,'NULL-CONSTANT');
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
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,4,0),(3,4,0),(4,6,0),(5,7,0),(6,8,0),(7,11,0),(8,13,0),(9,13,0),(10,15,0),(11,16,0),(12,15,0),(13,17,0),(14,17,0),(15,18,0),(16,15,0),(17,19,0),(18,19,0),(19,24,0),(20,24,0),(21,25,0),(22,25,0),(23,26,0),(24,26,0),(25,28,0),(26,32,0),(27,32,0),(28,33,0),(29,34,0),(30,35,0),(31,36,0),(32,15,0),(33,37,0),(34,38,0),(35,39,0),(36,40,0),(37,41,0),(38,42,0),(39,43,0),(40,36,0),(41,35,0),(42,36,0),(43,15,0),(44,38,0),(45,39,0),(46,40,0),(47,35,0),(48,36,0),(49,15,0),(50,38,0),(51,39,0),(52,40,0),(53,44,0),(54,45,0),(55,46,0),(56,47,0),(57,48,0),(58,49,0),(59,44,0),(60,47,0),(61,50,0),(62,46,0),(63,51,0),(64,52,0),(65,53,0),(66,54,0),(67,46,0),(68,26,0),(69,55,0),(70,47,0),(71,44,0),(72,56,0),(73,57,0),(74,58,0),(75,59,0),(76,60,0),(77,50,0),(78,61,0),(79,51,0),(80,52,0),(81,62,0),(82,54,0),(83,46,0),(84,26,0),(85,47,0),(86,44,0),(87,56,0),(88,57,0),(89,63,0),(90,64,0),(91,65,0),(92,66,0),(93,67,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=192 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,1,0),(4,4,0,0),(5,5,1,0),(6,6,1,0),(7,6,1,0),(8,6,1,0),(9,8,0,0),(10,6,1,0),(11,6,1,0),(12,9,1,0),(13,9,1,0),(14,11,1,0),(15,9,1,0),(16,12,0,0),(17,9,1,0),(18,9,1,0),(19,14,1,0),(20,15,1,0),(21,9,1,0),(22,9,1,0),(23,16,1,0),(24,17,1,0),(25,9,1,0),(26,18,1,0),(27,19,1,0),(28,20,0,0),(29,22,1,0),(30,23,1,0),(31,24,1,0),(32,25,0,0),(33,27,1,0),(34,25,0,0),(35,28,0,0),(36,25,1,0),(37,31,1,0),(38,30,1,0),(39,25,1,0),(40,32,1,0),(41,33,1,0),(42,25,0,0),(43,32,1,0),(44,32,1,0),(45,25,1,0),(46,34,1,0),(47,32,1,0),(48,25,1,0),(49,37,1,0),(50,32,1,0),(51,40,0,0),(52,25,0,0),(53,42,1,0),(54,43,1,0),(55,25,1,0),(56,25,0,0),(57,47,1,0),(58,49,1,0),(59,50,1,0),(60,52,1,0),(61,50,1,0),(62,53,1,0),(63,54,1,0),(64,57,0,0),(65,59,0,0),(66,58,1,0),(67,61,0,0),(68,57,0,0),(69,57,0,0),(70,63,1,0),(71,64,1,0),(72,65,1,0),(73,57,0,0),(74,66,1,0),(75,67,1,0),(76,65,1,0),(77,68,0,0),(78,70,1,0),(79,72,1,0),(80,72,1,0),(81,74,1,0),(82,76,1,0),(83,77,0,0),(84,74,1,0),(85,78,0,0),(86,79,1,0),(87,74,1,0),(88,74,1,0),(89,82,1,0),(90,84,0,0),(91,74,1,0),(92,87,0,0),(93,88,1,0),(94,89,0,0),(95,90,1,0),(96,91,1,0),(97,92,1,0),(98,94,1,0),(99,95,1,0),(100,97,1,0),(101,98,1,0),(102,99,1,0),(103,100,1,0),(104,98,1,0),(105,101,1,0),(106,98,1,0),(107,102,0,0),(108,103,0,0),(109,98,1,0),(110,104,1,0),(111,98,1,0),(112,105,1,0),(113,98,1,0),(114,104,1,0),(115,106,1,0),(116,107,1,0),(117,98,1,0),(118,108,1,0),(119,98,1,0),(120,110,1,0),(121,111,1,0),(122,113,1,0),(123,115,1,0),(124,116,1,0),(125,113,1,0),(126,113,1,0),(127,120,1,0),(128,113,1,0),(129,121,1,0),(130,113,1,0),(131,124,0,0),(132,125,1,0),(133,113,1,0),(134,126,1,0),(135,113,1,0),(136,128,1,0),(137,130,0,0),(138,113,1,0),(139,132,1,0),(140,133,0,0),(141,135,0,0),(142,136,0,0),(143,137,1,0),(144,139,1,0),(145,141,1,0),(146,142,1,0),(147,145,1,0),(148,142,0,0),(149,147,1,0),(150,142,1,0),(151,149,0,0),(152,142,0,0),(153,151,1,0),(154,149,1,0),(155,142,0,0),(156,153,0,0),(157,149,0,0),(158,154,1,0),(159,155,0,0),(160,142,1,0),(161,149,1,0),(162,156,1,0),(163,142,1,0),(164,149,0,0),(165,142,1,0),(166,159,1,0),(167,149,0,0),(168,142,0,0),(169,160,0,0),(170,149,1,0),(171,142,0,0),(172,161,1,0),(173,149,1,0),(174,162,1,0),(175,149,1,0),(176,149,0,0),(177,163,1,0),(178,164,0,0),(179,165,1,0),(180,166,1,0),(181,167,1,0),(182,168,1,0),(183,169,1,0),(184,170,1,0),(185,171,1,0),(186,172,1,0),(187,173,1,0),(188,174,1,0),(189,175,0,0),(190,176,0,0),(191,177,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAuthorities`
--

LOCK TABLES `PAuthorities` WRITE;
/*!40000 ALTER TABLE `PAuthorities` DISABLE KEYS */;
INSERT INTO `PAuthorities` VALUES (1,1,'com.km.launcher.settings'),(2,2,'com.km.launcher.settings');
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
INSERT INTO `PermissionStrings` VALUES (12,'android.permission.ACCESS_NETWORK_STATE'),(20,'android.permission.CALL_PHONE'),(11,'android.permission.CHANGE_NETWORK_STATE'),(23,'android.permission.EXPAND_STATUS_BAR'),(18,'android.permission.GET_TASKS'),(21,'android.permission.GLOBAL_SEARCH_CONTROL'),(10,'android.permission.INTERNET'),(19,'android.permission.READ_CONTACTS'),(7,'android.permission.READ_PHONE_STATE'),(16,'android.permission.READ_SMS'),(8,'android.permission.RECEIVE_BOOT_COMPLETED'),(6,'android.permission.RECEIVE_MMS'),(5,'android.permission.RECEIVE_SMS'),(14,'android.permission.RECEIVE_WAP_PUSH'),(2,'android.permission.SEND_SMS'),(1,'android.permission.SET_WALLPAPER'),(22,'android.permission.SET_WALLPAPER_HINTS'),(17,'android.permission.VIBRATE'),(13,'android.permission.WAKE_LOCK'),(4,'android.permission.WRITE_APN_SETTINGS'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(9,'android.permission.WRITE_SETTINGS'),(15,'android.permission.WRITE_SMS'),(30,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(29,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(26,'com.android.launcher.permission.INSTALL_SHORTCUT'),(24,'com.android.launcher.permission.READ_SETTINGS'),(27,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(25,'com.android.launcher.permission.WRITE_SETTINGS');
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
INSERT INTO `Permissions` VALUES (24,'n'),(25,'n'),(26,'n'),(27,'n');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Providers`
--

LOCK TABLES `Providers` WRITE;
/*!40000 ALTER TABLE `Providers` DISABLE KEYS */;
INSERT INTO `Providers` VALUES (1,27,0,NULL,'com.android.launcher.permission.WRITE_SETTINGS'),(2,27,0,NULL,'com.android.launcher.permission.WRITE_SETTINGS');
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
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,'package','',NULL,NULL,NULL,NULL),(2,'package','',NULL,NULL,NULL,NULL),(3,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(4,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(5,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(6,'package','',NULL,NULL,NULL,NULL),(7,'package','',NULL,NULL,NULL,NULL),(8,'package','',NULL,NULL,NULL,NULL),(9,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(10,'package','',NULL,NULL,NULL,NULL),(11,'package','',NULL,NULL,NULL,NULL),(12,'package','',NULL,NULL,NULL,NULL),(13,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(14,'package','',NULL,NULL,NULL,NULL),(15,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(16,'package','',NULL,NULL,NULL,NULL),(17,'package','',NULL,NULL,NULL,NULL),(18,'package','',NULL,NULL,NULL,NULL),(19,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(20,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(21,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(22,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(23,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(24,'package','',NULL,NULL,NULL,NULL),(25,'package','',NULL,NULL,NULL,NULL),(26,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(27,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(28,'package','',NULL,NULL,NULL,NULL),(29,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(30,'package','',NULL,NULL,NULL,NULL),(31,'tel','(.*)',NULL,NULL,NULL,NULL),(32,'package','',NULL,NULL,NULL,NULL),(33,'package','',NULL,NULL,NULL,NULL),(34,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(35,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(36,'package','',NULL,NULL,NULL,NULL),(37,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(38,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(39,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=(.*)',NULL,NULL,NULL),(40,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=NULL-CONSTANT',NULL,NULL,NULL),(41,'package','',NULL,NULL,NULL,NULL),(42,'package','',NULL,NULL,NULL,NULL),(43,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(44,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(45,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(46,'package','',NULL,NULL,NULL,NULL),(47,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(48,'tel','(.*)',NULL,NULL,NULL,NULL),(49,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(50,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(51,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(52,'package','',NULL,NULL,NULL,NULL),(53,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(54,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(55,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(56,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(57,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(58,'package','',NULL,NULL,NULL,NULL),(59,'package','',NULL,NULL,NULL,NULL),(60,'package','',NULL,NULL,NULL,NULL),(61,'package','',NULL,NULL,NULL,NULL),(62,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(63,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(64,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(65,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(66,'package','',NULL,NULL,NULL,NULL),(67,'package','',NULL,NULL,NULL,NULL),(68,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=(.*)',NULL,NULL,NULL),(69,'package','',NULL,NULL,NULL,NULL),(70,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=NULL-CONSTANT',NULL,NULL,NULL),(71,'package','',NULL,NULL,NULL,NULL),(72,'package','',NULL,NULL,NULL,NULL),(73,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(74,'package','',NULL,NULL,NULL,NULL),(75,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(76,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(77,'package','',NULL,NULL,NULL,NULL),(78,'package','',NULL,NULL,NULL,NULL),(79,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(80,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=false',NULL,NULL,NULL),(81,'package','',NULL,NULL,NULL,NULL),(82,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(83,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(84,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(85,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(86,'package','',NULL,NULL,NULL,NULL),(87,'package','',NULL,NULL,NULL,NULL),(88,'package','',NULL,NULL,NULL,NULL),(89,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(90,'package','',NULL,NULL,NULL,NULL),(91,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(92,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(93,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(94,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(95,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(96,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(97,'package','',NULL,NULL,NULL,NULL),(98,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(99,'package','',NULL,NULL,NULL,NULL),(100,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(101,'package','',NULL,NULL,NULL,NULL),(102,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(103,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(104,'package','',NULL,NULL,NULL,NULL),(105,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=false',NULL,NULL,NULL),(106,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(107,'package','',NULL,NULL,NULL,NULL),(108,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(109,'package','',NULL,NULL,NULL,NULL),(110,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(111,'package','',NULL,NULL,NULL,NULL),(112,'package','',NULL,NULL,NULL,NULL),(113,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(114,'package','',NULL,NULL,NULL,NULL),(115,'package','',NULL,NULL,NULL,NULL),(116,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(117,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(118,'package','',NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,10,3),(2,13,5),(3,26,13),(4,29,15),(5,35,19),(6,36,20),(7,39,22),(8,44,23),(9,45,26),(10,46,27),(11,51,29),(12,56,34),(13,60,35),(14,62,37),(15,69,43),(16,71,44),(17,73,45),(18,75,47),(19,80,51),(20,83,53),(21,85,55),(22,86,56),(23,93,62),(24,96,63),(25,109,73),(26,114,76),(27,118,79),(28,117,80),(29,117,82),(30,119,83),(31,122,84),(32,123,85),(33,127,89),(34,134,93),(35,138,95),(36,140,96),(37,143,98),(38,144,100),(39,146,102),(40,148,103),(41,150,105),(42,150,106),(43,158,108);
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,3,1),(15,2,17),(16,3,2),(17,2,16),(18,3,3),(19,2,1),(20,3,4),(21,2,2),(22,3,5),(23,2,4),(24,3,6),(25,2,5),(26,3,7),(27,2,6),(28,3,8),(29,2,7),(30,3,9),(31,2,10),(32,3,10),(33,2,12),(34,3,11),(35,2,14),(36,3,12),(37,2,15),(38,3,13),(39,4,1),(40,4,2),(41,4,3),(42,4,4),(43,4,5),(44,4,6),(45,4,7),(46,4,9),(47,4,10),(48,4,12),(49,4,14),(50,4,15),(51,4,17),(52,4,16),(53,4,19),(54,4,18),(55,4,21),(56,4,20),(57,4,23),(58,4,22),(59,4,25),(60,4,24),(61,5,1),(62,5,2),(63,5,3),(64,5,4),(65,5,5),(66,5,6),(67,5,7),(68,5,8),(69,5,9),(70,5,10),(71,5,11),(72,5,12),(73,5,13),(74,5,29),(75,5,30);
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

-- Dump completed on 2015-10-09  0:40:00
