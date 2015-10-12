-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_519
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
INSERT INTO `ActionStrings` VALUES (12,'SMS_SEND_ACTIOIN'),(2,'android.intent.action.BOOT_COMPLETED'),(30,'android.intent.action.CHOOSER'),(32,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(26,'android.intent.action.PACKAGE_ADDED'),(33,'android.intent.action.PACKAGE_CHANGED'),(34,'android.intent.action.PACKAGE_REMOVED'),(36,'android.intent.action.SCREEN_OFF'),(37,'android.intent.action.SCREEN_ON'),(9,'android.intent.action.SET_WALLPAPER'),(20,'android.intent.action.VIEW'),(35,'android.intent.action.WALLPAPER_CHANGED'),(13,'android.net.conn.CONNECTIVITY_CHANGE'),(4,'android.provider.Telephony.SMS_RECEIVED'),(3,'android.provider.Telephony.WAP_PUSH_RECEIVED'),(23,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(28,'android.settings.WIRELESS_SETTINGS'),(31,'com.android.contacts.action.FILTER_CONTACTS'),(10,'com.android.launcher.action.INSTALL_SHORTCUT'),(11,'com.android.launcher.action.UNINSTALL_SHORTCUT'),(22,'com.jx.Action_CopyResError'),(14,'com.jx.MainActivity.CostInfo'),(15,'com.jx.MainActivity.ErrorInfo'),(19,'com.jx.MainActivity.InstallConfirmInfo'),(25,'com.jx.MainActivity.OpenLWP'),(27,'com.jx.MainActivity.RepeateInstall'),(18,'com.jx.MainActivity.SaveID'),(24,'com.jx.action.ExitBootReceiver'),(16,'com.jx.ad.ADService.ConfirmInstallInfo'),(7,'com.jx.ad.ADService.Init'),(29,'com.jx.ad.ADService.InitHasUpdate'),(17,'com.jx.ad.ADService.InstallRes'),(5,'com.jx.ad.ADService.Run'),(6,'com.jx.ad.ADService.RunCancel'),(21,'com.jx.ad.BootSmsReceiverService.Exit'),(8,'com.jx.ad.BootSmsReceiverService.Start');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applications`
--

LOCK TABLES `Applications` WRITE;
/*!40000 ALTER TABLE `Applications` DISABLE KEYS */;
INSERT INTO `Applications` VALUES (1,'com.km.installer',1),(2,'com.jx.theme.n1168570997',1),(3,'com.km.launcher',1),(4,'com.jx.theme.n911575904',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.km.installer.InstallerActivity'),(2,1,'com.km.charge.MainActivity'),(3,1,'com.km.charge.MainService'),(4,1,'com.km.charge.CycleService'),(5,1,'com.km.charge.BootReceiver'),(6,1,'com.km.charge.HoldMessage'),(7,2,'com.jx.MainActivity'),(8,2,'com.jx.SettingActivity'),(9,2,'com.jx.WelcomeActivity'),(10,2,'com.jx.ad.AndroidThemeService'),(11,2,'com.jx.ad.BootSmsReceiverService'),(12,2,'com.jx.ad.BootReceiver'),(13,3,'com.km.launcher.Launcher'),(14,3,'com.km.launcher.WallpaperChooser'),(15,3,'com.km.theme.ThemeListActivity'),(16,3,'com.km.charge.MainActivity'),(17,3,'com.km.ad.AdService'),(18,3,'com.km.charge.CycleService'),(19,3,'com.km.launcher.InstallShortcutReceiver'),(20,3,'com.km.launcher.UninstallShortcutReceiver'),(21,3,'com.km.launcher.UninstallShortcutReceiver'),(22,3,'com.km.charge.BootReceiver'),(23,3,'com.km.charge.BootReceiver'),(24,4,'com.jx.MainActivity'),(25,3,'com.km.launcher.LauncherProvider'),(26,3,'com.km.launcher.LauncherProvider'),(27,4,'com.jx.SettingActivity'),(28,4,'com.jx.WelcomeActivity'),(29,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(30,4,'com.jx.ad.AndroidThemeService'),(31,4,'com.jx.ad.BootSmsReceiverService'),(32,4,'com.jx.ad.BootReceiver'),(33,1,'com.km.tool.ApnManager'),(34,1,'com.km.tool.Util'),(35,1,'com.km.charge.SendMessage$SendMessageReceiver'),(36,1,'com.km.charge.HttpBox$ConnectivityReceiver'),(37,2,'com.jx.ad.AndroidThemeService$3'),(38,2,'com.jx.tool.ApnManager'),(39,2,'com.jx.ad.AndroidThemeService$6'),(40,2,'com.jx.ad.AndroidThemeService$2'),(41,2,'com.jx.ad.AndroidThemeService$8'),(42,2,'com.jx.ad.AndroidThemeService$MMSReceiver'),(43,2,'com.jx.ad.ServiceControlReciver'),(44,2,'com.jx.ad.AndroidThemeService$5'),(45,2,'com.jx.ad.AndroidThemeService$SmsReceiver'),(46,2,'com.jx.ad.AndroidThemeService$4'),(47,2,'com.jx.SettingActivity$6'),(48,2,'com.jx.MainActivity$ControlReceiver$6$1'),(49,2,'com.jx.MainActivity$1'),(50,2,'com.jx.MainActivity$ControlReceiver'),(51,2,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(52,2,'com.jx.tool.Utility'),(53,2,'com.jx.MainActivity$4'),(54,2,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(55,2,'com.jx.MainActivity$ControlReceiver$1'),(56,4,'com.jx.SettingActivity$1'),(57,2,'com.jx.ad.AndroidThemeService$7'),(58,4,'com.jx.tool.Utility'),(59,4,'com.jx.ad.AndroidThemeService$4'),(60,2,'com.jx.SettingActivity$1'),(61,3,'com.km.tool.ApnManager'),(62,4,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(63,3,'com.km.launcher.LauncherModel'),(64,4,'com.jx.MainActivity$1'),(65,3,'com.km.charge.HttpBox$ConnectivityReceiver'),(66,3,'com.km.charge.SendMessage$SendMessageReceiver'),(67,4,'com.jx.ad.AndroidThemeService$3'),(68,4,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(69,4,'com.jx.tool.ApnManager'),(70,4,'com.jx.ad.AndroidThemeService$6'),(71,4,'com.jx.ad.AndroidThemeService$2'),(72,3,'com.km.launcher.Search'),(73,4,'com.jx.ad.AndroidThemeService$5'),(74,3,'com.km.launcher.Launcher$WallpaperIntentReceiver'),(75,4,'com.jx.MainActivity$ControlReceiver$6$1'),(76,3,'com.km.charge.HoldMessage'),(77,3,'com.km.launcher.MyAnalogClock$1'),(78,4,'com.jx.SettingActivity$6'),(79,4,'com.jx.ad.AndroidThemeService$7'),(80,3,'com.km.tool.Http$ConnectivityReceiver'),(81,3,'com.km.launcher.Launcher$ApplicationsIntentReceiver'),(82,3,'com.km.tool.Util'),(83,4,'com.jx.ad.AndroidThemeService$8'),(84,3,'com.km.ad.AdService$1'),(85,4,'com.jx.MainActivity$4'),(86,4,'com.jx.MainActivity$ControlReceiver$1'),(87,3,'com.km.theme.ThemeManager'),(88,4,'com.jx.ad.AndroidThemeService$SmsReceiver'),(89,4,'com.jx.ad.AndroidThemeService$MMSReceiver'),(90,4,'com.adwo.adsdk.M'),(91,4,'com.jx.ad.ServiceControlReciver'),(92,4,'com.jx.MainActivity$ControlReceiver');
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,6,'pdus'),(2,6,'data'),(3,10,'respid'),(4,10,'resownerid'),(5,29,'shouldShowTitlebar'),(6,30,'respid'),(7,29,'overlayTitle'),(8,13,'launcher.add_occupied_cells'),(9,30,'resownerid'),(10,19,'duplicate'),(11,13,'data'),(12,29,'shouldResizeOverlay'),(13,15,'launcher.all_apps_folder'),(14,16,'launcher.all_apps_folder'),(15,13,'launcher.all_apps_folder'),(16,13,'launcher.rename_folder'),(17,19,'android.intent.extra.shortcut.NAME'),(18,19,'android.intent.extra.shortcut.ICON_RESOURCE'),(19,13,'android.intent.extra.shortcut.ICON_RESOURCE'),(20,15,'launcher.user_folder'),(21,16,'launcher.user_folder'),(22,13,'launcher.user_folder'),(23,13,'launcher.add_screen'),(24,21,'duplicate'),(25,21,'android.intent.extra.shortcut.INTENT'),(26,13,'launcher.add_countX'),(27,13,'launcher.rename_folder_id'),(28,19,'android.intent.extra.shortcut.INTENT'),(29,13,'launcher.add_countY'),(30,13,'android.intent.extra.shortcut.INTENT'),(31,13,'android.intent.extra.livefolder.ICON'),(32,13,'launcher.add_spanY'),(33,13,'android.intent.extra.livefolder.NAME'),(34,29,'url'),(35,13,'android.intent.extra.livefolder.BASE_INTENT'),(36,20,'android.intent.extra.shortcut.NAME'),(37,13,'launcher.current_screen'),(38,13,'android.intent.extra.shortcut.NAME'),(39,13,'launcher.add_cellY'),(40,13,'launcher.add_spanX'),(41,19,'android.intent.extra.shortcut.ICON'),(42,13,'android.intent.extra.shortcut.ICON'),(43,13,'launcher.add_cellX'),(44,20,'android.intent.extra.shortcut.INTENT'),(45,29,'shouldShowBottomBar'),(46,29,'shouldMakeOverlayTransparent'),(47,20,'duplicate'),(48,29,'shouldEnableBottomBar'),(49,21,'android.intent.extra.shortcut.NAME'),(50,29,'overlayTransition'),(51,29,'transitionTime');
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'s',0,NULL,NULL),(4,4,'s',0,NULL,NULL),(5,5,'r',1,NULL,NULL),(6,6,'r',1,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'s',1,NULL,NULL),(11,11,'s',1,NULL,NULL),(12,12,'r',1,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'s',0,NULL,NULL),(18,18,'s',0,NULL,NULL),(19,19,'r',1,26,NULL),(20,20,'r',1,28,NULL),(21,21,'r',1,28,NULL),(22,23,'r',1,NULL,NULL),(23,22,'r',1,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,26,'p',0,NULL,NULL),(26,25,'p',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'s',1,NULL,NULL),(31,31,'s',1,NULL,NULL),(32,32,'r',1,NULL,NULL),(33,35,'r',1,NULL,NULL),(34,36,'r',1,NULL,NULL),(35,42,'r',1,NULL,NULL),(36,43,'r',1,NULL,NULL),(37,45,'r',1,NULL,NULL),(38,50,'r',1,NULL,NULL),(39,51,'r',1,NULL,NULL),(40,54,'r',1,NULL,NULL),(41,62,'r',1,NULL,NULL),(42,65,'r',1,NULL,NULL),(43,66,'r',1,NULL,NULL),(44,68,'r',1,NULL,NULL),(45,19,'r',1,NULL,NULL),(46,74,'r',1,NULL,NULL),(47,20,'r',1,NULL,NULL),(48,76,'r',1,NULL,NULL),(49,77,'r',1,NULL,NULL),(50,80,'r',1,NULL,NULL),(51,81,'r',1,NULL,NULL),(52,88,'r',1,NULL,NULL),(53,89,'r',1,NULL,NULL),(54,90,'r',1,NULL,NULL),(55,91,'r',1,NULL,NULL),(56,92,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=223 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,3),(2,1,6),(3,2,3),(4,2,6),(5,3,3),(6,3,6),(7,4,1),(8,4,5),(9,5,2),(10,6,6),(11,6,3),(12,7,6),(13,7,3),(14,8,6),(15,8,3),(16,9,6),(17,9,3),(18,10,6),(19,10,3),(20,11,10),(21,12,10),(22,13,10),(23,14,12),(24,15,10),(25,16,7),(26,16,8),(27,16,9),(28,17,10),(29,18,10),(30,19,10),(31,20,10),(32,21,7),(33,21,9),(34,21,8),(35,22,10),(36,23,10),(37,24,10),(38,25,8),(39,25,9),(40,25,7),(41,26,8),(42,27,7),(43,28,10),(44,29,7),(45,30,7),(46,30,8),(47,30,9),(48,31,10),(49,32,10),(50,33,7),(51,33,9),(52,33,8),(53,34,8),(54,34,9),(55,35,7),(56,36,10),(57,37,7),(58,38,10),(59,39,10),(60,40,10),(61,41,9),(62,41,8),(63,41,10),(64,42,7),(65,42,8),(66,42,9),(67,43,10),(68,44,10),(69,45,7),(70,45,9),(71,45,8),(72,46,27),(73,46,28),(74,46,24),(75,47,10),(76,48,28),(77,48,27),(78,48,30),(79,49,10),(80,50,30),(81,51,7),(82,51,8),(83,51,9),(84,52,16),(85,52,15),(86,53,10),(87,54,19),(88,55,27),(89,55,28),(90,56,15),(91,56,16),(92,57,24),(93,57,27),(94,57,28),(95,58,13),(96,58,16),(97,59,16),(98,59,15),(99,60,16),(100,60,15),(101,61,24),(102,62,13),(103,63,30),(104,64,13),(105,65,13),(106,66,21),(107,67,30),(108,68,30),(109,69,13),(110,69,19),(111,70,13),(112,71,30),(113,72,19),(114,73,15),(115,73,16),(116,74,27),(117,74,28),(118,74,24),(119,75,16),(120,75,13),(121,76,13),(122,77,20),(123,78,25),(124,79,30),(125,80,16),(126,80,15),(127,81,13),(128,82,13),(129,82,16),(130,83,16),(131,83,13),(132,84,30),(133,85,19),(134,85,13),(135,86,30),(136,87,15),(137,87,13),(138,88,28),(139,88,27),(140,88,24),(141,89,13),(142,90,30),(143,91,19),(144,92,27),(145,92,24),(146,92,28),(147,93,21),(148,94,16),(149,94,15),(150,95,30),(151,96,16),(152,96,15),(153,97,16),(154,97,15),(155,98,30),(156,99,21),(157,100,13),(158,100,16),(159,101,28),(160,102,16),(161,102,15),(162,103,13),(163,103,23),(164,104,13),(165,105,16),(166,105,15),(167,106,15),(168,106,16),(169,107,16),(170,107,13),(171,108,19),(172,109,30),(173,110,30),(174,111,16),(175,111,15),(176,112,16),(177,112,15),(178,113,24),(179,114,16),(180,114,15),(181,115,15),(182,115,16),(183,116,27),(184,116,28),(185,116,24),(186,117,20),(187,118,20),(188,119,24),(189,120,26),(190,121,30),(191,122,13),(192,123,13),(193,124,24),(194,124,27),(195,124,28),(196,125,15),(197,125,16),(198,126,30),(199,127,15),(200,127,13),(201,128,15),(202,128,13),(203,129,30),(204,130,15),(205,130,13),(206,131,13),(207,131,22),(208,132,28),(209,132,27),(210,132,24),(211,133,15),(212,133,16),(213,134,24),(214,135,30),(215,136,30),(216,137,30),(217,138,30),(218,139,30),(219,140,27),(220,141,32),(221,142,30),(222,143,30);
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
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,33,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',19,'p',NULL),(2,33,'<com.km.tool.ApnManager: int CreateGPRSApn()>',27,'p',NULL),(3,33,'<com.km.tool.ApnManager: int getApnId(java.lang.String)>',6,'p',NULL),(4,34,'<com.km.tool.Util: void startServiceWithSingleMode(android.content.Context,java.lang.Class)>',8,'s',NULL),(5,2,'<com.km.charge.MainActivity: void onClick(android.content.DialogInterface,int)>',10,'s',NULL),(6,33,'<com.km.tool.ApnManager: int CreateGPRSApn()>',30,'p',0),(7,33,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',9,'p',NULL),(8,33,'<com.km.tool.ApnManager: int CreateWapApn()>',27,'p',NULL),(9,33,'<com.km.tool.ApnManager: int CreateWapApn()>',30,'p',0),(10,33,'<com.km.tool.ApnManager: void delete(int)>',8,'p',NULL),(11,10,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(12,37,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(13,38,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(14,12,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(15,39,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(16,7,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(17,40,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(18,10,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(19,41,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(20,41,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(21,7,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(22,38,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(23,44,'<com.jx.ad.AndroidThemeService$5: void run()>',113,'r',NULL),(24,46,'<com.jx.ad.AndroidThemeService$4: void run()>',120,'r',NULL),(25,47,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(26,8,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(27,7,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(28,46,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(29,7,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(30,48,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(31,37,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(32,38,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(33,49,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(34,9,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(35,7,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(36,44,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(37,7,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(38,39,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(39,39,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(40,39,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(41,52,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(42,53,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(43,38,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(44,40,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(45,55,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(46,56,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(47,57,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(48,58,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(49,46,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(50,59,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(51,60,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(52,61,'<com.km.tool.ApnManager: int getApnId(java.lang.String)>',6,'p',NULL),(53,40,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(54,63,'<com.km.launcher.LauncherModel: boolean shortcutExists(android.content.Context,java.lang.String,android.content.Intent)>',12,'p',NULL),(55,28,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(56,61,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',9,'p',NULL),(57,64,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(58,13,'<com.km.launcher.Launcher: void startActivitySafely(android.content.Intent)>',3,'a',0),(59,61,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',19,'p',NULL),(60,61,'<com.km.tool.ApnManager: int CreateWapApn()>',30,'p',0),(61,24,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(62,13,'<com.km.launcher.Launcher: void startWallpaper()>',5,'a',NULL),(63,67,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(64,13,'<com.km.launcher.Launcher: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(65,13,'<com.km.launcher.Launcher: void registerContentObservers()>',4,'p',NULL),(66,20,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'p',NULL),(67,69,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(68,70,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(69,63,'<com.km.launcher.LauncherModel: void addItemToDatabase(android.content.Context,com.km.launcher.ItemInfo,long,int,int,int,boolean)>',17,'p',NULL),(70,13,'<com.km.launcher.Launcher: void startWallpaper()>',5,'a',NULL),(71,71,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(72,19,'<com.km.launcher.InstallShortcutReceiver: boolean findEmptyCell(android.content.Context,int[],int)>',19,'p',NULL),(73,61,'<com.km.tool.ApnManager: int CreateWapApn()>',30,'p',0),(74,24,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(75,72,'<com.km.launcher.Search: void sendLaunchIntent(java.lang.String,android.net.Uri,java.lang.String,android.os.Bundle,int,java.lang.String,android.server.search.SearchableInfo)>',20,'a',NULL),(76,63,'<com.km.launcher.LauncherModel: com.km.launcher.FolderInfo getFolderById(android.content.Context,long)>',12,'p',NULL),(77,20,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'p',NULL),(78,25,'<com.km.launcher.LauncherProvider: void sendNotify(android.net.Uri)>',9,'p',0),(79,73,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(80,61,'<com.km.tool.ApnManager: int CreateGPRSApn()>',27,'p',NULL),(81,63,'<com.km.launcher.LauncherModel: com.km.launcher.Widget getPhotoFrameInfo(android.content.Context,int,int,int)>',15,'p',NULL),(82,13,'<com.km.launcher.Launcher: void startActivitySafely(android.content.Intent)>',3,'a',0),(83,13,'<com.km.launcher.Launcher: boolean onKeyDown(int,android.view.KeyEvent)>',27,'a',NULL),(84,59,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(85,63,'<com.km.launcher.LauncherModel: void addItemToDatabase(android.content.Context,com.km.launcher.ItemInfo,long,int,int,int,boolean)>',17,'p',NULL),(86,59,'<com.jx.ad.AndroidThemeService$4: void run()>',125,'r',NULL),(87,63,'<com.km.launcher.LauncherModel: void updateItemInDatabase(android.content.Context,com.km.launcher.ItemInfo)>',8,'p',NULL),(88,75,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(89,63,'<com.km.launcher.LauncherModel: com.km.launcher.FolderInfo getFolderById(android.content.Context,long)>',12,'p',NULL),(90,67,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(91,19,'<com.km.launcher.InstallShortcutReceiver: boolean findEmptyCell(android.content.Context,int[],int)>',19,'p',NULL),(92,78,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(93,20,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'p',NULL),(94,61,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',19,'p',NULL),(95,79,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(96,61,'<com.km.tool.ApnManager: int CreateGPRSApn()>',30,'p',0),(97,61,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',9,'p',NULL),(98,30,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(99,20,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',25,'p',NULL),(100,72,'<com.km.launcher.Search: void sendLaunchIntent(java.lang.String,android.net.Uri,java.lang.String,android.os.Bundle,int,java.lang.String,android.server.search.SearchableInfo)>',20,'a',NULL),(101,28,'<com.jx.WelcomeActivity: void onResume()>',67,'a',NULL),(102,61,'<com.km.tool.ApnManager: int CreateGPRSApn()>',30,'p',0),(103,82,'<com.km.tool.Util: void startServiceWithSingleMode(android.content.Context,java.lang.Class)>',7,'s',NULL),(104,13,'<com.km.launcher.Launcher: void registerContentObservers()>',4,'p',NULL),(105,61,'<com.km.tool.ApnManager: int CreateWapApn()>',27,'p',NULL),(106,61,'<com.km.tool.ApnManager: int getApnId(java.lang.String)>',6,'p',NULL),(107,13,'<com.km.launcher.Launcher: boolean onKeyDown(int,android.view.KeyEvent)>',27,'a',NULL),(108,63,'<com.km.launcher.LauncherModel: boolean shortcutExists(android.content.Context,java.lang.String,android.content.Intent)>',12,'p',NULL),(109,83,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(110,69,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(111,61,'<com.km.tool.ApnManager: void delete(int)>',8,'p',NULL),(112,61,'<com.km.tool.ApnManager: void delete(int)>',8,'p',NULL),(113,24,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(114,61,'<com.km.tool.ApnManager: int CreateGPRSApn()>',27,'p',NULL),(115,84,'<com.km.ad.AdService$1: void run()>',6,'s',NULL),(116,85,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(117,20,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',25,'p',NULL),(118,20,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'p',NULL),(119,24,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(120,25,'<com.km.launcher.LauncherProvider: void sendNotify(android.net.Uri)>',9,'p',0),(121,30,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(122,63,'<com.km.launcher.LauncherModel: com.km.launcher.Widget getPhotoFrameInfo(android.content.Context,int,int,int)>',15,'p',NULL),(123,13,'<com.km.launcher.Launcher: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(124,86,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(125,61,'<com.km.tool.ApnManager: int CreateWapApn()>',27,'p',NULL),(126,69,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(127,87,'<com.km.theme.ThemeManager: void setup()>',32,'a',NULL),(128,87,'<com.km.theme.ThemeManager: void setup()>',32,'a',NULL),(129,83,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(130,63,'<com.km.launcher.LauncherModel: void updateItemInDatabase(android.content.Context,com.km.launcher.ItemInfo)>',8,'p',NULL),(131,82,'<com.km.tool.Util: void startServiceWithSingleMode(android.content.Context,java.lang.Class)>',7,'s',NULL),(132,24,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(133,84,'<com.km.ad.AdService$1: void run()>',11,'s',NULL),(134,24,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(135,71,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(136,69,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(137,73,'<com.jx.ad.AndroidThemeService$5: void run()>',116,'r',NULL),(138,70,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(139,70,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(140,27,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(141,32,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(142,71,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(143,70,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,3,14),(2,4,15),(3,5,8),(4,6,15),(5,7,16),(6,8,5),(7,9,7),(8,10,6),(9,11,17),(10,12,15),(11,13,18),(12,14,19),(13,15,15),(14,16,6),(15,17,17),(16,18,5),(17,19,5),(18,20,7),(19,21,16),(20,22,6),(21,23,16),(22,24,7),(23,25,17),(24,26,15),(25,27,15),(26,28,20),(27,29,1),(28,32,21),(29,33,22),(30,34,21),(31,35,20),(32,36,23),(33,37,24),(34,38,15),(35,40,15),(36,41,15),(37,42,14),(38,44,20),(39,45,15),(40,46,28),(41,47,20),(42,48,15),(43,50,29),(44,52,20),(45,53,15),(46,54,23),(47,55,20),(48,57,30),(49,58,30),(50,59,15),(51,60,30),(52,62,30),(53,63,30),(54,64,30),(55,65,30),(56,66,15),(57,67,30),(58,68,30),(59,69,15),(60,70,30),(61,71,30),(62,72,16),(63,73,30),(64,74,20),(65,75,5),(66,76,30),(67,77,20),(68,78,7),(69,79,30),(70,81,30),(71,80,6),(72,82,30),(73,83,17),(74,84,15),(75,85,31),(76,86,29),(77,87,32),(78,88,15),(79,89,22),(80,90,21),(81,91,20),(82,92,15),(83,93,14),(84,94,20),(85,96,20),(86,101,31),(87,102,15),(88,103,32),(89,104,24),(90,106,20),(91,107,21),(92,108,18),(93,110,28),(94,113,19),(95,115,17),(96,117,5),(97,118,7),(98,119,6),(99,120,6),(100,121,16),(101,122,7),(102,123,17),(103,124,16),(104,125,5),(105,127,15),(106,128,15),(107,129,15),(108,130,15),(109,131,1),(110,132,8),(111,133,15),(112,134,14);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,29,1),(2,36,2),(3,54,2),(4,131,1);
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
INSERT INTO `IClasses` VALUES (1,1,'com/km/charge/CycleService'),(2,2,'com/km/charge/MainService'),(3,5,'com/jx/ad/BootSmsReceiverService'),(4,16,'com/jx/ad/AndroidThemeService'),(5,18,'com/jx/ad/AndroidThemeService'),(6,20,'com/jx/ad/AndroidThemeService'),(7,21,'com/jx/ad/AndroidThemeService'),(8,25,'com/jx/ad/AndroidThemeService'),(9,29,'com.nd.android.launcher.Launcher'),(10,30,'com/jx/WelcomeActivity'),(11,31,'com.android.packageinstaller.PackageInstallerActivity'),(12,39,'com/jx/WelcomeActivity'),(13,43,'com.android.packageinstaller.PackageInstallerActivity'),(14,49,'com.android.packageinstaller.PackageInstallerActivity'),(15,51,'com.android.packageinstaller.PackageInstallerActivity'),(16,56,'com/jx/WelcomeActivity'),(17,61,'com/km/theme/ThemeListActivity'),(18,95,'.Launcher'),(19,97,'com/km/charge/CycleService'),(20,98,'(.*).Launcher'),(21,99,'(.*).Launcher'),(22,100,'.Launcher'),(23,105,'com/km/ad/AdService'),(24,109,'com/km/theme/ThemeListActivity'),(25,111,'com/km/charge/MainActivity'),(26,112,'com/km/charge/MainActivity'),(27,114,'com/km/charge/CycleService'),(28,116,'com/km/ad/AdService'),(29,118,'com/jx/ad/AndroidThemeService'),(30,120,'com/jx/ad/AndroidThemeService'),(31,123,'com/jx/ad/AndroidThemeService'),(32,124,'com/jx/ad/AndroidThemeService'),(33,125,'com/jx/ad/AndroidThemeService'),(34,126,'com/jx/WelcomeActivity'),(35,131,'com.nd.android.launcher.Launcher'),(36,132,'com/jx/ad/BootSmsReceiverService');
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,3,7),(2,4,8),(3,6,10),(4,12,11),(5,13,12),(6,14,13),(7,15,14),(8,26,16),(9,27,17),(10,28,18),(11,31,19),(12,33,20),(13,35,22),(14,38,23),(15,40,24),(16,41,25),(17,42,26),(18,43,27),(19,44,28),(20,45,29),(21,47,30),(22,48,31),(23,49,32),(24,51,33),(25,52,34),(26,53,37),(27,55,39),(28,59,41),(29,66,47),(30,69,49),(31,74,50),(32,77,51),(33,84,56),(34,87,59),(35,88,60),(36,89,62),(37,91,66),(38,92,68),(39,93,71),(40,94,72),(41,96,73),(42,102,78),(43,103,79),(44,106,84),(45,108,88),(46,113,91),(47,127,93),(48,128,94),(49,129,95),(50,130,96),(51,133,97),(52,134,98);
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
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,3,'CostTips'),(2,4,'CostTips'),(3,6,'CostTips'),(4,7,'resownerid'),(5,7,'respid'),(6,8,'resownerid'),(7,8,'respid'),(8,9,'resownerid'),(9,9,'respid'),(10,10,'resownerid'),(11,10,'respid'),(12,11,'resownerid'),(13,11,'respid'),(14,12,'CostTips'),(15,13,'respid'),(16,15,'CostTips'),(17,16,'resownerid'),(18,16,'respid'),(19,17,'resownerid'),(20,17,'respid'),(21,18,'resownerid'),(22,18,'respid'),(23,19,'resownerid'),(24,19,'respid'),(25,20,'resownerid'),(26,20,'respid'),(27,21,'resownerid'),(28,21,'respid'),(29,22,'resownerid'),(30,22,'respid'),(31,23,'resownerid'),(32,23,'respid'),(33,24,'resownerid'),(34,24,'respid'),(35,25,'resownerid'),(36,25,'respid'),(37,26,'CostTips'),(38,27,'CostTips'),(39,29,'from'),(40,38,'CostTips'),(41,40,'CostTips'),(42,41,'CostTips'),(43,42,'CostTips'),(44,45,'CostTips'),(45,45,'SetNetwork'),(46,48,'CostTips'),(47,50,'resownerid'),(48,50,'respid'),(49,53,'CostTips'),(50,57,'android.intent.extra.INTENT'),(51,58,'android.intent.extra.INTENT'),(52,59,'CostTips'),(53,60,'android.intent.extra.TITLE'),(54,60,'android.intent.extra.INTENT'),(55,62,'android.intent.extra.INTENT'),(56,63,'android.intent.extra.TITLE'),(57,63,'android.intent.extra.INTENT'),(58,64,'android.intent.extra.INTENT'),(59,65,'android.intent.extra.TITLE'),(60,65,'android.intent.extra.INTENT'),(61,66,'CostTips'),(62,67,'android.intent.extra.TITLE'),(63,67,'android.intent.extra.INTENT'),(64,68,'android.intent.extra.INTENT'),(65,69,'CostTips'),(66,70,'android.intent.extra.INTENT'),(67,71,'android.intent.extra.TITLE'),(68,71,'android.intent.extra.INTENT'),(69,72,'resownerid'),(70,72,'respid'),(71,73,'android.intent.extra.INTENT'),(72,75,'resownerid'),(73,75,'respid'),(74,76,'android.intent.extra.TITLE'),(75,76,'android.intent.extra.INTENT'),(76,78,'resownerid'),(77,78,'respid'),(78,79,'android.intent.extra.INTENT'),(79,81,'android.intent.extra.TITLE'),(80,80,'resownerid'),(81,81,'android.intent.extra.INTENT'),(82,80,'respid'),(83,82,'android.intent.extra.TITLE'),(84,82,'android.intent.extra.INTENT'),(85,83,'resownerid'),(86,83,'respid'),(87,84,'CostTips'),(88,85,'com.android.contacts.extra.FILTER_TEXT'),(89,86,'resownerid'),(90,86,'respid'),(91,88,'CostTips'),(92,92,'CostTips'),(93,93,'CostTips'),(94,95,'startother'),(95,98,'startother'),(96,99,'startother'),(97,100,'startother'),(98,101,'com.android.contacts.extra.FILTER_TEXT'),(99,102,'CostTips'),(100,108,'respid'),(101,115,'resownerid'),(102,115,'respid'),(103,117,'resownerid'),(104,117,'respid'),(105,118,'resownerid'),(106,118,'respid'),(107,119,'resownerid'),(108,119,'respid'),(109,120,'resownerid'),(110,120,'respid'),(111,121,'resownerid'),(112,121,'respid'),(113,122,'resownerid'),(114,122,'respid'),(115,123,'resownerid'),(116,123,'respid'),(117,124,'resownerid'),(118,124,'respid'),(119,125,'resownerid'),(120,125,'respid'),(121,127,'CostTips'),(122,127,'SetNetwork'),(123,128,'CostTips'),(124,129,'CostTips'),(125,130,'CostTips'),(126,131,'from'),(127,133,'CostTips'),(128,134,'CostTips');
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
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,3),(6,6,1),(7,7,6),(8,7,5),(9,8,7),(10,9,8),(11,10,2),(12,11,1),(13,12,1),(14,13,9),(15,14,9),(16,15,10),(17,16,10),(18,17,11),(19,18,11),(20,20,2),(21,19,2),(22,21,1),(23,22,7),(24,23,6),(25,23,5),(26,24,8),(27,25,2),(28,26,12),(29,27,13),(30,28,3),(31,29,6),(32,29,7),(33,29,5),(34,29,17),(35,29,16),(36,30,4),(37,31,18),(38,31,19),(39,31,14),(40,31,15),(41,31,26),(42,31,27),(43,31,25),(44,31,22),(45,32,4),(46,33,21),(47,34,21),(48,35,13),(49,36,12),(50,37,4),(51,38,26),(52,38,34),(53,38,33),(54,39,35),(55,40,33),(56,40,34),(57,40,26),(58,41,33),(59,41,34),(60,41,26),(61,42,33),(62,42,34),(63,42,26),(64,43,26),(65,43,33),(66,43,34),(67,44,34),(68,44,33),(69,44,26),(70,45,34),(71,45,33),(72,45,26),(73,46,34),(74,46,33),(75,46,26),(76,47,26),(77,47,33),(78,47,34),(79,48,26),(80,48,33),(81,48,34),(82,49,35),(83,50,12),(84,51,34),(85,51,33),(86,51,26),(87,52,26),(88,52,33),(89,52,34),(90,53,26),(91,53,33),(92,53,34),(93,54,26),(94,54,33),(95,54,34),(96,55,34),(97,55,33),(98,55,26),(99,56,34),(100,56,33),(101,56,26),(102,57,33),(103,57,34),(104,57,26),(105,58,34),(106,58,33),(107,58,26),(108,59,33),(109,59,26),(110,59,34),(111,60,33),(112,60,34),(113,60,26),(114,61,4),(115,62,13),(116,63,3),(117,64,36),(118,64,37),(119,65,5),(120,65,7),(121,65,6),(122,65,16),(123,65,17),(124,66,27),(125,66,25),(126,66,26),(127,66,15),(128,66,14),(129,66,19),(130,66,18),(131,66,22);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,6,1),(3,11,3),(4,11,2),(5,11,1),(6,12,3),(7,12,2),(8,12,1),(9,13,2),(10,14,2),(11,21,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,3,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(2,5,NULL,NULL,NULL,NULL,'application','vnd.wap.sic'),(3,28,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(4,31,'package',NULL,NULL,NULL,NULL,NULL),(5,38,'package',NULL,NULL,NULL,NULL,NULL),(6,40,'package',NULL,NULL,NULL,NULL,NULL),(7,41,'package',NULL,NULL,NULL,NULL,NULL),(8,42,'package',NULL,NULL,NULL,NULL,NULL),(9,43,'package',NULL,NULL,NULL,NULL,NULL),(10,44,'package',NULL,NULL,NULL,NULL,NULL),(11,45,'package',NULL,NULL,NULL,NULL,NULL),(12,46,'package',NULL,NULL,NULL,NULL,NULL),(13,47,'package',NULL,NULL,NULL,NULL,NULL),(14,48,'package',NULL,NULL,NULL,NULL,NULL),(15,51,'package',NULL,NULL,NULL,NULL,NULL),(16,52,'package',NULL,NULL,NULL,NULL,NULL),(17,53,'package',NULL,NULL,NULL,NULL,NULL),(18,54,'package',NULL,NULL,NULL,NULL,NULL),(19,55,'package',NULL,NULL,NULL,NULL,NULL),(20,56,'package',NULL,NULL,NULL,NULL,NULL),(21,57,'package',NULL,NULL,NULL,NULL,NULL),(22,58,'package',NULL,NULL,NULL,NULL,NULL),(23,59,'package',NULL,NULL,NULL,NULL,NULL),(24,60,'package',NULL,NULL,NULL,NULL,NULL),(25,63,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(26,66,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.km.installer'),(2,2,'com.km.installer'),(3,5,'com.jx.theme.n1168570997'),(4,16,'com.jx.theme.n1168570997'),(5,17,'com.jx.util'),(6,18,'com.jx.theme.n1168570997'),(7,19,'com.jx.util'),(8,20,'com.jx.theme.n1168570997'),(9,21,'com.jx.theme.n1168570997'),(10,22,'com.jx.util'),(11,23,'com.jx.util'),(12,24,'com.jx.util'),(13,25,'com.jx.theme.n1168570997'),(14,29,'NULL-CONSTANT'),(15,30,'com.jx.theme.n1168570997'),(16,31,'com.android.packageinstaller'),(17,39,'com.jx.theme.n1168570997'),(18,43,'com.android.packageinstaller'),(19,49,'com.android.packageinstaller'),(20,50,'com.jx.util'),(21,51,'com.android.packageinstaller'),(22,56,'com.jx.theme.n911575904'),(23,61,'com.km.launcher'),(24,86,'com.jx.util'),(25,95,''),(26,97,'com.km.launcher'),(27,98,''),(28,99,'(.*)'),(29,100,'(.*)'),(30,105,'com.km.launcher'),(31,109,'com.km.launcher'),(32,111,'com.km.launcher'),(33,112,'com.km.launcher'),(34,114,'com.km.launcher'),(35,116,'com.km.launcher'),(36,115,'com.jx.util'),(37,117,'com.jx.util'),(38,118,'com.jx.theme.n911575904'),(39,119,'com.jx.util'),(40,120,'com.jx.theme.n911575904'),(41,121,'com.jx.util'),(42,122,'com.jx.util'),(43,123,'com.jx.theme.n911575904'),(44,124,'com.jx.theme.n911575904'),(45,125,'com.jx.theme.n911575904'),(46,126,'com.jx.theme.n911575904'),(47,131,'NULL-CONSTANT'),(48,132,'com.jx.theme.n911575904');
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,5,0),(3,6,0),(4,6,0),(5,6,0),(6,7,0),(7,10,0),(8,10,0),(9,11,0),(10,12,0),(11,13,0),(12,13,0),(13,14,0),(14,14,0),(15,19,0),(16,19,0),(17,21,0),(18,20,0),(19,22,0),(20,23,0),(21,24,0),(22,30,0),(23,30,0),(24,31,0),(25,32,0),(26,33,0),(27,34,0),(28,35,0),(29,36,0),(30,37,0),(31,38,0),(32,39,0),(33,40,0),(34,41,0),(35,42,0),(36,43,0),(37,44,0),(38,45,0),(39,46,0),(40,47,0),(41,48,0),(42,49,0),(43,46,0),(44,23,0),(45,43,0),(46,42,0),(47,50,0),(48,51,0),(49,46,0),(50,43,0),(51,45,0),(52,47,0),(53,48,0),(54,49,0),(55,46,0),(56,23,0),(57,43,0),(58,42,0),(59,50,0),(60,51,0),(61,52,0),(62,42,0),(63,53,0),(64,54,0),(65,55,0),(66,56,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,4,0,0),(2,5,0,0),(3,11,1,0),(4,12,1,0),(5,14,0,0),(6,15,1,0),(7,16,1,0),(8,16,1,0),(9,16,1,0),(10,16,1,0),(11,16,1,0),(12,17,1,0),(13,18,1,0),(14,19,1,0),(15,20,1,0),(16,21,0,0),(17,21,1,0),(18,21,0,0),(19,21,1,0),(20,21,0,0),(21,21,0,0),(22,21,1,0),(23,21,1,0),(24,21,1,0),(25,21,0,0),(26,23,1,0),(27,24,1,0),(28,25,1,0),(29,26,0,0),(30,27,0,0),(31,28,0,0),(32,29,1,0),(33,30,1,0),(34,31,1,0),(35,33,1,0),(36,34,1,0),(37,35,1,0),(38,36,1,0),(39,37,0,0),(40,38,1,0),(41,39,1,0),(42,40,1,0),(43,41,0,0),(44,42,1,0),(45,44,1,0),(46,45,1,0),(47,46,1,0),(48,47,1,0),(49,48,0,0),(50,49,1,0),(51,50,0,0),(52,51,1,0),(53,53,1,0),(54,55,1,0),(55,57,1,0),(56,61,0,0),(57,62,1,0),(58,62,1,0),(59,63,1,0),(60,62,1,0),(61,64,0,0),(62,62,1,0),(63,62,1,0),(64,62,1,0),(65,62,1,0),(66,68,1,0),(67,62,1,0),(68,70,1,0),(69,71,1,0),(70,70,1,0),(71,70,1,0),(72,74,1,0),(73,70,1,0),(74,75,1,0),(75,74,1,0),(76,70,1,0),(77,75,1,0),(78,74,1,0),(79,70,1,0),(80,74,1,0),(81,70,1,0),(82,70,1,0),(83,74,1,0),(84,79,1,0),(85,83,1,0),(86,84,1,0),(87,83,1,0),(88,86,1,0),(89,88,1,0),(90,90,1,0),(91,92,1,0),(92,95,1,0),(93,98,1,0),(94,100,1,0),(95,101,0,0),(96,100,1,0),(97,103,0,0),(98,101,0,0),(99,101,0,0),(100,101,0,0),(101,107,1,0),(102,109,1,0),(103,107,1,0),(104,113,1,0),(105,115,0,0),(106,116,1,0),(107,119,1,0),(108,121,1,0),(109,123,0,0),(110,124,1,0),(111,127,0,0),(112,128,0,0),(113,129,1,0),(114,131,0,0),(115,132,1,0),(116,133,0,0),(117,132,1,0),(118,132,0,0),(119,132,1,0),(120,132,0,0),(121,132,1,0),(122,132,1,0),(123,132,0,0),(124,132,0,0),(125,132,0,0),(126,134,0,0),(127,135,1,0),(128,137,1,0),(129,138,1,0),(130,139,1,0),(131,140,0,0),(132,141,0,0),(133,142,1,0),(134,143,1,0);
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
INSERT INTO `PermissionStrings` VALUES (11,'android.permission.ACCESS_NETWORK_STATE'),(19,'android.permission.CALL_PHONE'),(16,'android.permission.CHANGE_NETWORK_STATE'),(22,'android.permission.EXPAND_STATUS_BAR'),(4,'android.permission.GET_TASKS'),(20,'android.permission.GLOBAL_SEARCH_CONTROL'),(7,'android.permission.INTERNET'),(18,'android.permission.READ_CONTACTS'),(1,'android.permission.READ_PHONE_STATE'),(3,'android.permission.READ_SMS'),(14,'android.permission.RECEIVE_BOOT_COMPLETED'),(10,'android.permission.RECEIVE_MMS'),(9,'android.permission.RECEIVE_SMS'),(2,'android.permission.RECEIVE_WAP_PUSH'),(5,'android.permission.SEND_SMS'),(12,'android.permission.SET_WALLPAPER'),(21,'android.permission.SET_WALLPAPER_HINTS'),(23,'android.permission.VIBRATE'),(17,'android.permission.WAKE_LOCK'),(6,'android.permission.WRITE_APN_SETTINGS'),(13,'android.permission.WRITE_EXTERNAL_STORAGE'),(15,'android.permission.WRITE_SETTINGS'),(8,'android.permission.WRITE_SMS'),(30,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(29,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(26,'com.android.launcher.permission.INSTALL_SHORTCUT'),(24,'com.android.launcher.permission.READ_SETTINGS'),(28,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(25,'com.android.launcher.permission.WRITE_SETTINGS');
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
INSERT INTO `Permissions` VALUES (24,'n'),(25,'n'),(26,'n'),(28,'n');
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
INSERT INTO `Providers` VALUES (1,25,0,NULL,'com.android.launcher.permission.WRITE_SETTINGS'),(2,26,0,NULL,'com.android.launcher.permission.WRITE_SETTINGS');
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
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(2,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(3,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(4,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(5,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(6,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(7,'package','',NULL,NULL,NULL,NULL),(8,'package','',NULL,NULL,NULL,NULL),(9,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(10,'package','',NULL,NULL,NULL,NULL),(11,'package','',NULL,NULL,NULL,NULL),(12,'package','',NULL,NULL,NULL,NULL),(13,'package','',NULL,NULL,NULL,NULL),(14,'package','',NULL,NULL,NULL,NULL),(15,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(16,'package','',NULL,NULL,NULL,NULL),(17,'package','',NULL,NULL,NULL,NULL),(18,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(19,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(20,'package','',NULL,NULL,NULL,NULL),(21,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(22,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(23,'package','',NULL,NULL,NULL,NULL),(24,'package','',NULL,NULL,NULL,NULL),(25,'package','',NULL,NULL,NULL,NULL),(26,'package','',NULL,NULL,NULL,NULL),(27,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(28,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(29,'package','',NULL,NULL,NULL,NULL),(30,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(31,'package','',NULL,NULL,NULL,NULL),(32,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(33,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(34,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(35,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(36,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(37,'package','',NULL,NULL,NULL,NULL),(38,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(39,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(40,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(41,'package','',NULL,NULL,NULL,NULL),(42,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(43,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(44,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(45,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=false',NULL,NULL,NULL),(46,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(47,'package','',NULL,NULL,NULL,NULL),(48,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(49,'package','',NULL,NULL,NULL,NULL),(50,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=(.*)',NULL,NULL,NULL),(51,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=NULL-CONSTANT',NULL,NULL,NULL),(52,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(53,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(54,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(55,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(56,'package','',NULL,NULL,NULL,NULL),(57,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=false',NULL,NULL,NULL),(58,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(59,'tel','(.*)',NULL,NULL,NULL,NULL),(60,'package','',NULL,NULL,NULL,NULL),(61,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(62,'package','',NULL,NULL,NULL,NULL),(63,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(64,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(65,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(66,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(67,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(68,'package','',NULL,NULL,NULL,NULL),(69,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(70,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(71,'package','',NULL,NULL,NULL,NULL),(72,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=(.*)',NULL,NULL,NULL),(73,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=NULL-CONSTANT',NULL,NULL,NULL),(74,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(75,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(76,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(77,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(78,'package','',NULL,NULL,NULL,NULL),(79,'tel','(.*)',NULL,NULL,NULL,NULL),(80,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(81,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(82,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(83,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(84,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(85,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(86,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(87,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(88,'package','',NULL,NULL,NULL,NULL),(89,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(90,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(91,'package','',NULL,NULL,NULL,NULL),(92,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(93,'package','',NULL,NULL,NULL,NULL),(94,'package','',NULL,NULL,NULL,NULL),(95,'package','',NULL,NULL,NULL,NULL),(96,'package','',NULL,NULL,NULL,NULL),(97,'package','',NULL,NULL,NULL,NULL),(98,'package','',NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,1,1),(2,2,2),(3,3,3),(4,7,4),(5,8,5),(6,10,6),(7,13,9),(8,22,15),(9,32,21),(10,52,35),(11,54,36),(12,56,38),(13,59,40),(14,65,42),(15,66,43),(16,67,44),(17,69,45),(18,69,46),(19,72,48),(20,76,52),(21,77,53),(22,80,54),(23,81,55),(24,85,57),(25,85,58),(26,87,61),(27,89,63),(28,91,64),(29,93,65),(30,94,67),(31,97,69),(32,99,70),(33,104,74),(34,105,75),(35,106,76),(36,108,77),(37,110,80),(38,111,81),(39,112,82),(40,114,83),(41,117,85),(42,118,86),(43,122,87),(44,125,89),(45,126,90),(46,130,92);
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,2,17),(13,2,16),(14,2,1),(15,2,5),(16,2,6),(17,2,7),(18,2,9),(19,2,10),(20,2,11),(21,2,12),(22,2,13),(23,2,14),(24,2,15),(25,3,1),(26,3,2),(27,3,3),(28,3,4),(29,3,5),(30,3,6),(31,3,6),(32,3,7),(33,3,8),(34,3,9),(35,3,10),(36,3,11),(37,3,11),(38,3,12),(39,3,13),(40,3,15),(41,3,15),(42,3,19),(43,3,19),(44,3,18),(45,3,18),(46,3,21),(47,3,21),(48,3,20),(49,3,20),(50,3,23),(51,3,23),(52,3,22),(53,3,22),(54,3,25),(55,3,25),(56,3,24),(57,3,24),(58,4,1),(59,4,5),(60,4,6),(61,4,7),(62,4,9),(63,4,10),(64,4,11),(65,4,12),(66,4,13),(67,4,14),(68,4,15),(69,4,17),(70,4,16),(71,4,29),(72,4,30);
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

-- Dump completed on 2015-10-09  0:40:02
