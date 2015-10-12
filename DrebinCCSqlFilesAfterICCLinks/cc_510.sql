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
) ENGINE=InnoDB AUTO_INCREMENT=2662 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,32,4,2,NULL),(2,32,13,2,NULL),(3,32,32,2,NULL),(4,34,4,2,NULL),(5,34,13,2,NULL),(6,34,32,2,NULL),(7,42,4,2,NULL),(8,42,13,2,NULL),(9,42,32,2,NULL),(10,52,4,2,NULL),(11,28,3,2,NULL),(12,52,13,2,NULL),(13,28,10,2,NULL),(14,52,32,2,NULL),(15,28,30,2,NULL),(16,56,4,2,NULL),(17,142,3,2,NULL),(18,56,13,2,NULL),(19,142,10,2,NULL),(20,56,32,2,NULL),(21,142,30,2,NULL),(22,140,3,2,NULL),(23,148,4,2,NULL),(24,140,10,2,NULL),(25,148,13,2,NULL),(26,140,30,2,NULL),(27,148,32,2,NULL),(28,169,3,2,NULL),(29,152,4,2,NULL),(30,169,10,2,NULL),(31,152,13,2,NULL),(32,169,30,2,NULL),(33,152,32,2,NULL),(34,158,1,2,NULL),(35,155,4,2,NULL),(36,6,4,2,NULL),(37,155,13,2,NULL),(38,7,4,2,NULL),(39,155,32,2,NULL),(40,8,4,2,NULL),(41,168,4,2,NULL),(42,10,4,2,NULL),(43,168,13,2,NULL),(44,11,4,2,NULL),(45,168,32,2,NULL),(46,36,4,2,NULL),(47,171,4,2,NULL),(48,39,4,2,NULL),(49,171,13,2,NULL),(50,45,4,2,NULL),(51,171,32,2,NULL),(52,48,4,2,NULL),(53,58,1,2,NULL),(54,55,4,2,NULL),(55,81,1,2,NULL),(56,105,4,2,NULL),(57,84,1,2,NULL),(58,143,4,2,NULL),(59,87,1,2,NULL),(60,6,8,2,NULL),(61,88,1,2,NULL),(62,7,8,2,NULL),(63,91,1,2,NULL),(64,8,8,2,NULL),(65,146,1,2,NULL),(66,10,8,2,NULL),(67,150,1,2,NULL),(68,11,8,2,NULL),(69,160,1,2,NULL),(70,36,8,2,NULL),(71,163,1,2,NULL),(72,39,8,2,NULL),(73,165,1,2,NULL),(74,45,8,2,NULL),(75,188,1,2,NULL),(76,48,8,2,NULL),(77,6,28,2,NULL),(78,55,8,2,NULL),(79,7,28,2,NULL),(80,105,8,2,NULL),(81,8,28,2,NULL),(82,143,8,2,NULL),(83,10,28,2,NULL),(84,6,11,2,NULL),(85,11,28,2,NULL),(86,7,11,2,NULL),(87,36,28,2,NULL),(88,8,11,2,NULL),(89,39,28,2,NULL),(90,10,11,2,NULL),(91,45,28,2,NULL),(92,11,11,2,NULL),(93,48,28,2,NULL),(94,36,11,2,NULL),(95,55,28,2,NULL),(96,39,11,2,NULL),(97,105,28,2,NULL),(98,45,11,2,NULL),(99,143,28,2,NULL),(100,48,11,2,NULL),(101,158,28,2,NULL),(102,55,11,2,NULL),(103,58,4,2,NULL),(104,105,11,2,NULL),(105,81,4,2,NULL),(106,143,11,2,NULL),(107,84,4,2,NULL),(108,6,48,2,NULL),(109,87,4,2,NULL),(110,7,48,2,NULL),(111,88,4,2,NULL),(112,8,48,2,NULL),(113,91,4,2,NULL),(114,10,48,2,NULL),(115,146,4,2,NULL),(116,11,48,2,NULL),(117,150,4,2,NULL),(118,36,48,2,NULL),(119,160,4,2,NULL),(120,39,48,2,NULL),(121,163,4,2,NULL),(122,45,48,2,NULL),(123,165,4,2,NULL),(124,48,48,2,NULL),(125,188,4,2,NULL),(126,55,48,2,NULL),(127,58,8,2,NULL),(128,105,48,2,NULL),(129,81,8,2,NULL),(130,143,48,2,NULL),(131,84,8,2,NULL),(132,6,49,2,NULL),(133,87,8,2,NULL),(134,7,49,2,NULL),(135,88,8,2,NULL),(136,8,49,2,NULL),(137,91,8,2,NULL),(138,10,49,2,NULL),(139,146,8,2,NULL),(140,11,49,2,NULL),(141,150,8,2,NULL),(142,36,49,2,NULL),(143,160,8,2,NULL),(144,39,49,2,NULL),(145,163,8,2,NULL),(146,45,49,2,NULL),(147,165,8,2,NULL),(148,48,49,2,NULL),(149,188,8,2,NULL),(150,55,49,2,NULL),(151,58,11,2,NULL),(152,105,49,2,NULL),(153,81,11,2,NULL),(154,143,49,2,NULL),(155,84,11,2,NULL),(156,6,55,2,NULL),(157,87,11,2,NULL),(158,7,55,2,NULL),(159,88,11,2,NULL),(160,8,55,2,NULL),(161,91,11,2,NULL),(162,10,55,2,NULL),(163,146,11,2,NULL),(164,11,55,2,NULL),(165,150,11,2,NULL),(166,36,55,2,NULL),(167,160,11,2,NULL),(168,39,55,2,NULL),(169,163,11,2,NULL),(170,45,55,2,NULL),(171,165,11,2,NULL),(172,48,55,2,NULL),(173,188,11,2,NULL),(174,55,55,2,NULL),(175,58,48,2,NULL),(176,105,55,2,NULL),(177,81,48,2,NULL),(178,143,55,2,NULL),(179,84,48,2,NULL),(180,6,60,2,NULL),(181,87,48,2,NULL),(182,7,60,2,NULL),(183,88,48,2,NULL),(184,8,60,2,NULL),(185,91,48,2,NULL),(186,10,60,2,NULL),(187,146,48,2,NULL),(188,11,60,2,NULL),(189,150,48,2,NULL),(190,36,60,2,NULL),(191,160,48,2,NULL),(192,39,60,2,NULL),(193,163,48,2,NULL),(194,45,60,2,NULL),(195,165,48,2,NULL),(196,48,60,2,NULL),(197,188,48,2,NULL),(198,55,60,2,NULL),(199,58,49,2,NULL),(200,105,60,2,NULL),(201,81,49,2,NULL),(202,143,60,2,NULL),(203,84,49,2,NULL),(204,12,1,2,NULL),(205,87,49,2,NULL),(206,13,1,2,NULL),(207,88,49,2,NULL),(208,15,1,2,NULL),(209,91,49,2,NULL),(210,17,1,2,NULL),(211,146,49,2,NULL),(212,18,1,2,NULL),(213,150,49,2,NULL),(214,21,1,2,NULL),(215,160,49,2,NULL),(216,22,1,2,NULL),(217,163,49,2,NULL),(218,25,1,2,NULL),(219,165,49,2,NULL),(220,6,7,2,NULL),(221,188,49,2,NULL),(222,7,7,2,NULL),(223,58,55,2,NULL),(224,8,7,2,NULL),(225,81,55,2,NULL),(226,10,7,2,NULL),(227,84,55,2,NULL),(228,11,7,2,NULL),(229,87,55,2,NULL),(230,36,7,2,NULL),(231,88,55,2,NULL),(232,39,7,2,NULL),(233,91,55,2,NULL),(234,45,7,2,NULL),(235,146,55,2,NULL),(236,48,7,2,NULL),(237,150,55,2,NULL),(238,55,7,2,NULL),(239,160,55,2,NULL),(240,105,7,2,NULL),(241,163,55,2,NULL),(242,143,7,2,NULL),(243,165,55,2,NULL),(244,6,15,2,NULL),(245,188,55,2,NULL),(246,7,15,2,NULL),(247,58,60,2,NULL),(248,8,15,2,NULL),(249,81,60,2,NULL),(250,10,15,2,NULL),(251,84,60,2,NULL),(252,11,15,2,NULL),(253,87,60,2,NULL),(254,36,15,2,NULL),(255,88,60,2,NULL),(256,39,15,2,NULL),(257,91,60,2,NULL),(258,45,15,2,NULL),(259,146,60,2,NULL),(260,48,15,2,NULL),(261,150,60,2,NULL),(262,55,15,2,NULL),(263,160,60,2,NULL),(264,105,15,2,NULL),(265,163,60,2,NULL),(266,143,15,2,NULL),(267,165,60,2,NULL),(268,6,35,2,NULL),(269,188,60,2,NULL),(270,7,35,2,NULL),(271,12,28,2,NULL),(272,8,35,2,NULL),(273,13,28,2,NULL),(274,10,35,2,NULL),(275,15,28,2,NULL),(276,11,35,2,NULL),(277,17,28,2,NULL),(278,36,35,2,NULL),(279,18,28,2,NULL),(280,39,35,2,NULL),(281,21,28,2,NULL),(282,45,35,2,NULL),(283,22,28,2,NULL),(284,48,35,2,NULL),(285,25,28,2,NULL),(286,55,35,2,NULL),(287,58,7,2,NULL),(288,105,35,2,NULL),(289,81,7,2,NULL),(290,143,35,2,NULL),(291,84,7,2,NULL),(292,6,36,2,NULL),(293,87,7,2,NULL),(294,7,36,2,NULL),(295,88,7,2,NULL),(296,8,36,2,NULL),(297,91,7,2,NULL),(298,10,36,2,NULL),(299,146,7,2,NULL),(300,11,36,2,NULL),(301,150,7,2,NULL),(302,36,36,2,NULL),(303,160,7,2,NULL),(304,39,36,2,NULL),(305,163,7,2,NULL),(306,45,36,2,NULL),(307,165,7,2,NULL),(308,48,36,2,NULL),(309,188,7,2,NULL),(310,55,36,2,NULL),(311,58,15,2,NULL),(312,105,36,2,NULL),(313,81,15,2,NULL),(314,143,36,2,NULL),(315,84,15,2,NULL),(316,6,38,2,NULL),(317,87,15,2,NULL),(318,7,38,2,NULL),(319,88,15,2,NULL),(320,8,38,2,NULL),(321,91,15,2,NULL),(322,10,38,2,NULL),(323,146,15,2,NULL),(324,11,38,2,NULL),(325,150,15,2,NULL),(326,36,38,2,NULL),(327,160,15,2,NULL),(328,39,38,2,NULL),(329,163,15,2,NULL),(330,45,38,2,NULL),(331,165,15,2,NULL),(332,48,38,2,NULL),(333,188,15,2,NULL),(334,55,38,2,NULL),(335,58,35,2,NULL),(336,105,38,2,NULL),(337,81,35,2,NULL),(338,143,38,2,NULL),(339,84,35,2,NULL),(340,6,39,2,NULL),(341,87,35,2,NULL),(342,7,39,2,NULL),(343,88,35,2,NULL),(344,8,39,2,NULL),(345,91,35,2,NULL),(346,10,39,2,NULL),(347,146,35,2,NULL),(348,11,39,2,NULL),(349,150,35,2,NULL),(350,36,39,2,NULL),(351,160,35,2,NULL),(352,39,39,2,NULL),(353,163,35,2,NULL),(354,45,39,2,NULL),(355,165,35,2,NULL),(356,48,39,2,NULL),(357,188,35,2,NULL),(358,55,39,2,NULL),(359,58,36,2,NULL),(360,105,39,2,NULL),(361,81,36,2,NULL),(362,143,39,2,NULL),(363,84,36,2,NULL),(364,6,40,2,NULL),(365,87,36,2,NULL),(366,7,40,2,NULL),(367,88,36,2,NULL),(368,8,40,2,NULL),(369,91,36,2,NULL),(370,10,40,2,NULL),(371,146,36,2,NULL),(372,11,40,2,NULL),(373,150,36,2,NULL),(374,36,40,2,NULL),(375,160,36,2,NULL),(376,39,40,2,NULL),(377,131,20,2,NULL),(378,163,36,2,NULL),(379,45,40,2,NULL),(380,165,36,2,NULL),(381,159,20,2,NULL),(382,48,40,2,NULL),(383,188,36,2,NULL),(384,59,1,2,NULL),(385,55,40,2,NULL),(386,58,38,2,NULL),(387,105,40,2,NULL),(388,79,1,2,NULL),(389,81,38,2,NULL),(390,143,40,2,NULL),(391,101,1,2,NULL),(392,84,38,2,NULL),(393,6,6,2,NULL),(394,87,38,2,NULL),(395,104,1,2,NULL),(396,7,6,2,NULL),(397,88,38,2,NULL),(398,106,1,2,NULL),(399,8,6,2,NULL),(400,91,38,2,NULL),(401,109,1,2,NULL),(402,10,6,2,NULL),(403,146,38,2,NULL),(404,111,1,2,NULL),(405,11,6,2,NULL),(406,150,38,2,NULL),(407,113,1,2,NULL),(408,36,6,2,NULL),(409,160,38,2,NULL),(410,117,1,2,NULL),(411,39,6,2,NULL),(412,163,38,2,NULL),(413,119,1,2,NULL),(414,45,6,2,NULL),(415,165,38,2,NULL),(416,122,1,2,NULL),(417,48,6,2,NULL),(418,188,38,2,NULL),(419,125,1,2,NULL),(420,55,6,2,NULL),(421,58,39,2,NULL),(422,126,1,2,NULL),(423,105,6,2,NULL),(424,81,39,2,NULL),(425,128,1,2,NULL),(426,143,6,2,NULL),(427,84,39,2,NULL),(428,130,1,2,NULL),(429,20,1,2,NULL),(430,87,39,2,NULL),(431,133,1,2,NULL),(432,40,1,2,NULL),(433,88,39,2,NULL),(434,135,1,2,NULL),(435,43,1,2,NULL),(436,91,39,2,NULL),(437,138,1,2,NULL),(438,44,1,2,NULL),(439,146,39,2,NULL),(440,6,17,2,NULL),(441,47,1,2,NULL),(442,150,39,2,NULL),(443,7,17,2,NULL),(444,50,1,2,NULL),(445,160,39,2,NULL),(446,8,17,2,NULL),(447,71,1,2,NULL),(448,163,39,2,NULL),(449,10,17,2,NULL),(450,154,1,2,NULL),(451,165,39,2,NULL),(452,11,17,2,NULL),(453,161,1,2,NULL),(454,188,39,2,NULL),(455,36,17,2,NULL),(456,170,1,2,NULL),(457,58,40,2,NULL),(458,39,17,2,NULL),(459,173,1,2,NULL),(460,81,40,2,NULL),(461,45,17,2,NULL),(462,175,1,2,NULL),(463,84,40,2,NULL),(464,48,17,2,NULL),(465,179,1,2,NULL),(466,87,40,2,NULL),(467,55,17,2,NULL),(468,6,13,2,NULL),(469,88,40,2,NULL),(470,105,17,2,NULL),(471,7,13,2,NULL),(472,91,40,2,NULL),(473,143,17,2,NULL),(474,8,13,2,NULL),(475,146,40,2,NULL),(476,158,17,2,NULL),(477,10,13,2,NULL),(478,150,40,2,NULL),(479,59,4,2,NULL),(480,11,13,2,NULL),(481,160,40,2,NULL),(482,79,4,2,NULL),(483,36,13,2,NULL),(484,163,40,2,NULL),(485,101,4,2,NULL),(486,39,13,2,NULL),(487,165,40,2,NULL),(488,104,4,2,NULL),(489,45,13,2,NULL),(490,188,40,2,NULL),(491,106,4,2,NULL),(492,48,13,2,NULL),(493,58,6,2,NULL),(494,109,4,2,NULL),(495,55,13,2,NULL),(496,81,6,2,NULL),(497,111,4,2,NULL),(498,105,13,2,NULL),(499,84,6,2,NULL),(500,113,4,2,NULL),(501,143,13,2,NULL),(502,87,6,2,NULL),(503,117,4,2,NULL),(504,6,16,2,NULL),(505,88,6,2,NULL),(506,119,4,2,NULL),(507,7,16,2,NULL),(508,91,6,2,NULL),(509,122,4,2,NULL),(510,8,16,2,NULL),(511,146,6,2,NULL),(512,125,4,2,NULL),(513,10,16,2,NULL),(514,150,6,2,NULL),(515,126,4,2,NULL),(516,11,16,2,NULL),(517,160,6,2,NULL),(518,128,4,2,NULL),(519,36,16,2,NULL),(520,163,6,2,NULL),(521,130,4,2,NULL),(522,39,16,2,NULL),(523,165,6,2,NULL),(524,133,4,2,NULL),(525,45,16,2,NULL),(526,188,6,2,NULL),(527,135,4,2,NULL),(528,48,16,2,NULL),(529,20,28,2,NULL),(530,138,4,2,NULL),(531,55,16,2,NULL),(532,40,28,2,NULL),(533,59,8,2,NULL),(534,105,16,2,NULL),(535,43,28,2,NULL),(536,79,8,2,NULL),(537,143,16,2,NULL),(538,44,28,2,NULL),(539,101,8,2,NULL),(540,6,18,2,NULL),(541,47,28,2,NULL),(542,104,8,2,NULL),(543,7,18,2,NULL),(544,50,28,2,NULL),(545,106,8,2,NULL),(546,8,18,2,NULL),(547,71,28,2,NULL),(548,109,8,2,NULL),(549,10,18,2,NULL),(550,154,28,2,NULL),(551,111,8,2,NULL),(552,11,18,2,NULL),(553,161,28,2,NULL),(554,113,8,2,NULL),(555,36,18,2,NULL),(556,170,28,2,NULL),(557,117,8,2,NULL),(558,39,18,2,NULL),(559,173,28,2,NULL),(560,119,8,2,NULL),(561,45,18,2,NULL),(562,175,28,2,NULL),(563,122,8,2,NULL),(564,48,18,2,NULL),(565,179,28,2,NULL),(566,125,8,2,NULL),(567,55,18,2,NULL),(568,58,13,2,NULL),(569,126,8,2,NULL),(570,105,18,2,NULL),(571,128,8,2,NULL),(572,81,13,2,NULL),(573,143,18,2,NULL),(574,84,13,2,NULL),(575,130,8,2,NULL),(576,6,42,2,NULL),(577,87,13,2,NULL),(578,133,8,2,NULL),(579,7,42,2,NULL),(580,135,8,2,NULL),(581,88,13,2,NULL),(582,8,42,2,NULL),(583,138,8,2,NULL),(584,91,13,2,NULL),(585,10,42,2,NULL),(586,146,13,2,NULL),(587,59,11,2,NULL),(588,11,42,2,NULL),(589,79,11,2,NULL),(590,150,13,2,NULL),(591,36,42,2,NULL),(592,160,13,2,NULL),(593,101,11,2,NULL),(594,39,42,2,NULL),(595,163,13,2,NULL),(596,104,11,2,NULL),(597,45,42,2,NULL),(598,165,13,2,NULL),(599,106,11,2,NULL),(600,48,42,2,NULL),(601,188,13,2,NULL),(602,109,11,2,NULL),(603,55,42,2,NULL),(604,111,11,2,NULL),(605,58,16,2,NULL),(606,105,42,2,NULL),(607,81,16,2,NULL),(608,113,11,2,NULL),(609,143,42,2,NULL),(610,84,16,2,NULL),(611,117,11,2,NULL),(612,6,43,2,NULL),(613,87,16,2,NULL),(614,119,11,2,NULL),(615,7,43,2,NULL),(616,88,16,2,NULL),(617,122,11,2,NULL),(618,8,43,2,NULL),(619,91,16,2,NULL),(620,125,11,2,NULL),(621,10,43,2,NULL),(622,146,16,2,NULL),(623,126,11,2,NULL),(624,11,43,2,NULL),(625,150,16,2,NULL),(626,128,11,2,NULL),(627,36,43,2,NULL),(628,160,16,2,NULL),(629,130,11,2,NULL),(630,39,43,2,NULL),(631,163,16,2,NULL),(632,133,11,2,NULL),(633,45,43,2,NULL),(634,165,16,2,NULL),(635,135,11,2,NULL),(636,48,43,2,NULL),(637,188,16,2,NULL),(638,138,11,2,NULL),(639,55,43,2,NULL),(640,58,18,2,NULL),(641,59,48,2,NULL),(642,105,43,2,NULL),(643,81,18,2,NULL),(644,79,48,2,NULL),(645,143,43,2,NULL),(646,84,18,2,NULL),(647,101,48,2,NULL),(648,6,45,2,NULL),(649,87,18,2,NULL),(650,104,48,2,NULL),(651,7,45,2,NULL),(652,88,18,2,NULL),(653,106,48,2,NULL),(654,8,45,2,NULL),(655,91,18,2,NULL),(656,109,48,2,NULL),(657,10,45,2,NULL),(658,146,18,2,NULL),(659,111,48,2,NULL),(660,11,45,2,NULL),(661,150,18,2,NULL),(662,113,48,2,NULL),(663,36,45,2,NULL),(664,160,18,2,NULL),(665,117,48,2,NULL),(666,39,45,2,NULL),(667,163,18,2,NULL),(668,119,48,2,NULL),(669,45,45,2,NULL),(670,165,18,2,NULL),(671,122,48,2,NULL),(672,48,45,2,NULL),(673,188,18,2,NULL),(674,125,48,2,NULL),(675,55,45,2,NULL),(676,126,48,2,NULL),(677,58,42,2,NULL),(678,105,45,2,NULL),(679,81,42,2,NULL),(680,128,48,2,NULL),(681,143,45,2,NULL),(682,84,42,2,NULL),(683,130,48,2,NULL),(684,6,62,2,NULL),(685,87,42,2,NULL),(686,133,48,2,NULL),(687,7,62,2,NULL),(688,88,42,2,NULL),(689,135,48,2,NULL),(690,8,62,2,NULL),(691,138,48,2,NULL),(692,91,42,2,NULL),(693,10,62,2,NULL),(694,146,42,2,NULL),(695,59,49,2,NULL),(696,11,62,2,NULL),(697,150,42,2,NULL),(698,79,49,2,NULL),(699,36,62,2,NULL),(700,160,42,2,NULL),(701,101,49,2,NULL),(702,39,62,2,NULL),(703,163,42,2,NULL),(704,104,49,2,NULL),(705,45,62,2,NULL),(706,165,42,2,NULL),(707,106,49,2,NULL),(708,48,62,2,NULL),(709,188,42,2,NULL),(710,109,49,2,NULL),(711,55,62,2,NULL),(712,58,43,2,NULL),(713,111,49,2,NULL),(714,105,62,2,NULL),(715,113,49,2,NULL),(716,81,43,2,NULL),(717,143,62,2,NULL),(718,84,43,2,NULL),(719,117,49,2,NULL),(720,6,19,2,NULL),(721,87,43,2,NULL),(722,119,49,2,NULL),(723,7,19,2,NULL),(724,88,43,2,NULL),(725,122,49,2,NULL),(726,8,19,2,NULL),(727,91,43,2,NULL),(728,125,49,2,NULL),(729,10,19,2,NULL),(730,146,43,2,NULL),(731,126,49,2,NULL),(732,11,19,2,NULL),(733,150,43,2,NULL),(734,128,49,2,NULL),(735,36,19,2,NULL),(736,160,43,2,NULL),(737,130,49,2,NULL),(738,39,19,2,NULL),(739,163,43,2,NULL),(740,133,49,2,NULL),(741,45,19,2,NULL),(742,165,43,2,NULL),(743,135,49,2,NULL),(744,48,19,2,NULL),(745,188,43,2,NULL),(746,138,49,2,NULL),(747,55,19,2,NULL),(748,58,45,2,NULL),(749,105,19,2,NULL),(750,59,55,2,NULL),(751,81,45,2,NULL),(752,143,19,2,NULL),(753,84,45,2,NULL),(754,79,55,2,NULL),(755,6,24,2,NULL),(756,87,45,2,NULL),(757,101,55,2,NULL),(758,7,24,2,NULL),(759,88,45,2,NULL),(760,104,55,2,NULL),(761,8,24,2,NULL),(762,91,45,2,NULL),(763,106,55,2,NULL),(764,10,24,2,NULL),(765,146,45,2,NULL),(766,109,55,2,NULL),(767,11,24,2,NULL),(768,150,45,2,NULL),(769,111,55,2,NULL),(770,36,24,2,NULL),(771,160,45,2,NULL),(772,113,55,2,NULL),(773,39,24,2,NULL),(774,163,45,2,NULL),(775,117,55,2,NULL),(776,45,24,2,NULL),(777,165,45,2,NULL),(778,119,55,2,NULL),(779,48,24,2,NULL),(780,188,45,2,NULL),(781,122,55,2,NULL),(782,55,24,2,NULL),(783,58,62,2,NULL),(784,125,55,2,NULL),(785,105,24,2,NULL),(786,81,62,2,NULL),(787,126,55,2,NULL),(788,143,24,2,NULL),(789,84,62,2,NULL),(790,128,55,2,NULL),(791,6,25,2,NULL),(792,87,62,2,NULL),(793,130,55,2,NULL),(794,7,25,2,NULL),(795,88,62,2,NULL),(796,133,55,2,NULL),(797,8,25,2,NULL),(798,91,62,2,NULL),(799,135,55,2,NULL),(800,10,25,2,NULL),(801,146,62,2,NULL),(802,138,55,2,NULL),(803,11,25,2,NULL),(804,150,62,2,NULL),(805,59,60,2,NULL),(806,36,25,2,NULL),(807,160,62,2,NULL),(808,79,60,2,NULL),(809,39,25,2,NULL),(810,163,62,2,NULL),(811,101,60,2,NULL),(812,45,25,2,NULL),(813,165,62,2,NULL),(814,104,60,2,NULL),(815,48,25,2,NULL),(816,188,62,2,NULL),(817,106,60,2,NULL),(818,55,25,2,NULL),(819,58,17,2,NULL),(820,109,60,2,NULL),(821,105,25,2,NULL),(822,111,60,2,NULL),(823,81,17,2,NULL),(824,143,25,2,NULL),(825,113,60,2,NULL),(826,84,17,2,NULL),(827,6,26,2,NULL),(828,117,60,2,NULL),(829,87,17,2,NULL),(830,7,26,2,NULL),(831,88,17,2,NULL),(832,119,60,2,NULL),(833,8,26,2,NULL),(834,91,17,2,NULL),(835,122,60,2,NULL),(836,10,26,2,NULL),(837,146,17,2,NULL),(838,125,60,2,NULL),(839,11,26,2,NULL),(840,150,17,2,NULL),(841,126,60,2,NULL),(842,36,26,2,NULL),(843,128,60,2,NULL),(844,160,17,2,NULL),(845,39,26,2,NULL),(846,130,60,2,NULL),(847,163,17,2,NULL),(848,45,26,2,NULL),(849,165,17,2,NULL),(850,133,60,2,NULL),(851,48,26,2,NULL),(852,135,60,2,NULL),(853,188,17,2,NULL),(854,55,26,2,NULL),(855,138,60,2,NULL),(856,59,28,2,NULL),(857,105,26,2,NULL),(858,79,28,2,NULL),(859,12,17,2,NULL),(860,143,26,2,NULL),(861,101,28,2,NULL),(862,13,17,2,NULL),(863,6,44,2,NULL),(864,104,28,2,NULL),(865,15,17,2,NULL),(866,7,44,2,NULL),(867,106,28,2,NULL),(868,17,17,2,NULL),(869,8,44,2,NULL),(870,109,28,2,NULL),(871,18,17,2,NULL),(872,10,44,2,NULL),(873,111,28,2,NULL),(874,21,17,2,NULL),(875,11,44,2,NULL),(876,113,28,2,NULL),(877,22,17,2,NULL),(878,36,44,2,NULL),(879,117,28,2,NULL),(880,25,17,2,NULL),(881,39,44,2,NULL),(882,119,28,2,NULL),(883,59,7,2,NULL),(884,45,44,2,NULL),(885,79,7,2,NULL),(886,122,28,2,NULL),(887,48,44,2,NULL),(888,125,28,2,NULL),(889,101,7,2,NULL),(890,55,44,2,NULL),(891,126,28,2,NULL),(892,104,7,2,NULL),(893,105,44,2,NULL),(894,128,28,2,NULL),(895,106,7,2,NULL),(896,143,44,2,NULL),(897,130,28,2,NULL),(898,109,7,2,NULL),(899,6,46,2,NULL),(900,133,28,2,NULL),(901,111,7,2,NULL),(902,7,46,2,NULL),(903,135,28,2,NULL),(904,113,7,2,NULL),(905,8,46,2,NULL),(906,138,28,2,NULL),(907,117,7,2,NULL),(908,10,46,2,NULL),(909,58,19,2,NULL),(910,119,7,2,NULL),(911,11,46,2,NULL),(912,81,19,2,NULL),(913,122,7,2,NULL),(914,36,46,2,NULL),(915,125,7,2,NULL),(916,84,19,2,NULL),(917,39,46,2,NULL),(918,126,7,2,NULL),(919,87,19,2,NULL),(920,45,46,2,NULL),(921,88,19,2,NULL),(922,128,7,2,NULL),(923,48,46,2,NULL),(924,91,19,2,NULL),(925,130,7,2,NULL),(926,55,46,2,NULL),(927,133,7,2,NULL),(928,146,19,2,NULL),(929,105,46,2,NULL),(930,135,7,2,NULL),(931,150,19,2,NULL),(932,143,46,2,NULL),(933,160,19,2,NULL),(934,138,7,2,NULL),(935,6,47,2,NULL),(936,163,19,2,NULL),(937,59,15,2,NULL),(938,7,47,2,NULL),(939,165,19,2,NULL),(940,79,15,2,NULL),(941,8,47,2,NULL),(942,188,19,2,NULL),(943,101,15,2,NULL),(944,10,47,2,NULL),(945,58,24,2,NULL),(946,104,15,2,NULL),(947,11,47,2,NULL),(948,81,24,2,NULL),(949,106,15,2,NULL),(950,36,47,2,NULL),(951,84,24,2,NULL),(952,109,15,2,NULL),(953,39,47,2,NULL),(954,87,24,2,NULL),(955,111,15,2,NULL),(956,45,47,2,NULL),(957,88,24,2,NULL),(958,113,15,2,NULL),(959,48,47,2,NULL),(960,91,24,2,NULL),(961,117,15,2,NULL),(962,55,47,2,NULL),(963,146,24,2,NULL),(964,119,15,2,NULL),(965,105,47,2,NULL),(966,150,24,2,NULL),(967,122,15,2,NULL),(968,143,47,2,NULL),(969,160,24,2,NULL),(970,125,15,2,NULL),(971,185,1,2,NULL),(972,163,24,2,NULL),(973,126,15,2,NULL),(974,6,32,2,NULL),(975,165,24,2,NULL),(976,128,15,2,NULL),(977,7,32,2,NULL),(978,130,15,2,NULL),(979,188,24,2,NULL),(980,8,32,2,NULL),(981,58,25,2,NULL),(982,133,15,2,NULL),(983,10,32,2,NULL),(984,81,25,2,NULL),(985,135,15,2,NULL),(986,11,32,2,NULL),(987,84,25,2,NULL),(988,138,15,2,NULL),(989,36,32,2,NULL),(990,87,25,2,NULL),(991,59,35,2,NULL),(992,39,32,2,NULL),(993,88,25,2,NULL),(994,79,35,2,NULL),(995,45,32,2,NULL),(996,91,25,2,NULL),(997,101,35,2,NULL),(998,48,32,2,NULL),(999,146,25,2,NULL),(1000,104,35,2,NULL),(1001,55,32,2,NULL),(1002,150,25,2,NULL),(1003,106,35,2,NULL),(1004,105,32,2,NULL),(1005,160,25,2,NULL),(1006,109,35,2,NULL),(1007,143,32,2,NULL),(1008,163,25,2,NULL),(1009,111,35,2,NULL),(1010,6,33,2,NULL),(1011,165,25,2,NULL),(1012,113,35,2,NULL),(1013,7,33,2,NULL),(1014,188,25,2,NULL),(1015,117,35,2,NULL),(1016,8,33,2,NULL),(1017,58,26,2,NULL),(1018,119,35,2,NULL),(1019,10,33,2,NULL),(1020,81,26,2,NULL),(1021,122,35,2,NULL),(1022,11,33,2,NULL),(1023,84,26,2,NULL),(1024,125,35,2,NULL),(1025,36,33,2,NULL),(1026,87,26,2,NULL),(1027,126,35,2,NULL),(1028,39,33,2,NULL),(1029,88,26,2,NULL),(1030,128,35,2,NULL),(1031,91,26,2,NULL),(1032,130,35,2,NULL),(1033,146,26,2,NULL),(1034,133,35,2,NULL),(1035,45,33,2,NULL),(1036,150,26,2,NULL),(1037,135,35,2,NULL),(1038,48,33,2,NULL),(1039,160,26,2,NULL),(1040,138,35,2,NULL),(1041,163,26,2,NULL),(1042,55,33,2,NULL),(1043,59,36,2,NULL),(1044,105,33,2,NULL),(1045,165,26,2,NULL),(1046,79,36,2,NULL),(1047,143,33,2,NULL),(1048,188,26,2,NULL),(1049,101,36,2,NULL),(1050,6,34,2,NULL),(1051,58,44,2,NULL),(1052,104,36,2,NULL),(1053,81,44,2,NULL),(1054,7,34,2,NULL),(1055,106,36,2,NULL),(1056,8,34,2,NULL),(1057,84,44,2,NULL),(1058,109,36,2,NULL),(1059,10,34,2,NULL),(1060,111,36,2,NULL),(1061,11,34,2,NULL),(1062,113,36,2,NULL),(1063,36,34,2,NULL),(1064,117,36,2,NULL),(1065,87,44,2,NULL),(1066,39,34,2,NULL),(1067,119,36,2,NULL),(1068,45,34,2,NULL),(1069,88,44,2,NULL),(1070,122,36,2,NULL),(1071,48,34,2,NULL),(1072,91,44,2,NULL),(1073,125,36,2,NULL),(1074,55,34,2,NULL),(1075,146,44,2,NULL),(1076,126,36,2,NULL),(1077,150,44,2,NULL),(1078,105,34,2,NULL),(1079,128,36,2,NULL),(1080,143,34,2,NULL),(1081,160,44,2,NULL),(1082,130,36,2,NULL),(1083,6,53,2,NULL),(1084,163,44,2,NULL),(1085,133,36,2,NULL),(1086,7,53,2,NULL),(1087,165,44,2,NULL),(1088,135,36,2,NULL),(1089,8,53,2,NULL),(1090,188,44,2,NULL),(1091,138,36,2,NULL),(1092,10,53,2,NULL),(1093,58,46,2,NULL),(1094,59,38,2,NULL),(1095,11,53,2,NULL),(1096,81,46,2,NULL),(1097,79,38,2,NULL),(1098,36,53,2,NULL),(1099,84,46,2,NULL),(1100,101,38,2,NULL),(1101,39,53,2,NULL),(1102,87,46,2,NULL),(1103,104,38,2,NULL),(1104,45,53,2,NULL),(1105,88,46,2,NULL),(1106,106,38,2,NULL),(1107,48,53,2,NULL),(1108,91,46,2,NULL),(1109,109,38,2,NULL),(1110,55,53,2,NULL),(1111,146,46,2,NULL),(1112,111,38,2,NULL),(1113,105,53,2,NULL),(1114,150,46,2,NULL),(1115,113,38,2,NULL),(1116,143,53,2,NULL),(1117,160,46,2,NULL),(1118,117,38,2,NULL),(1119,6,58,2,NULL),(1120,163,46,2,NULL),(1121,119,38,2,NULL),(1122,7,58,2,NULL),(1123,165,46,2,NULL),(1124,122,38,2,NULL),(1125,8,58,2,NULL),(1126,188,46,2,NULL),(1127,125,38,2,NULL),(1128,10,58,2,NULL),(1129,58,47,2,NULL),(1130,126,38,2,NULL),(1131,11,58,2,NULL),(1132,81,47,2,NULL),(1133,128,38,2,NULL),(1134,36,58,2,NULL),(1135,84,47,2,NULL),(1136,130,38,2,NULL),(1137,39,58,2,NULL),(1138,87,47,2,NULL),(1139,133,38,2,NULL),(1140,45,58,2,NULL),(1141,88,47,2,NULL),(1142,135,38,2,NULL),(1143,48,58,2,NULL),(1144,91,47,2,NULL),(1145,138,38,2,NULL),(1146,55,58,2,NULL),(1147,146,47,2,NULL),(1148,59,39,2,NULL),(1149,105,58,2,NULL),(1150,150,47,2,NULL),(1151,79,39,2,NULL),(1152,143,58,2,NULL),(1153,160,47,2,NULL),(1154,101,39,2,NULL),(1155,163,47,2,NULL),(1156,6,63,2,NULL),(1157,104,39,2,NULL),(1158,7,63,2,NULL),(1159,165,47,2,NULL),(1160,106,39,2,NULL),(1161,8,63,2,NULL),(1162,188,47,2,NULL),(1163,109,39,2,NULL),(1164,10,63,2,NULL),(1165,185,28,2,NULL),(1166,111,39,2,NULL),(1167,58,32,2,NULL),(1168,11,63,2,NULL),(1169,113,39,2,NULL),(1170,36,63,2,NULL),(1171,81,32,2,NULL),(1172,117,39,2,NULL),(1173,39,63,2,NULL),(1174,84,32,2,NULL),(1175,119,39,2,NULL),(1176,87,32,2,NULL),(1177,45,63,2,NULL),(1178,122,39,2,NULL),(1179,48,63,2,NULL),(1180,88,32,2,NULL),(1181,125,39,2,NULL),(1182,55,63,2,NULL),(1183,91,32,2,NULL),(1184,126,39,2,NULL),(1185,105,63,2,NULL),(1186,146,32,2,NULL),(1187,128,39,2,NULL),(1188,143,63,2,NULL),(1189,150,32,2,NULL),(1190,130,39,2,NULL),(1191,160,32,2,NULL),(1192,6,66,2,NULL),(1193,133,39,2,NULL),(1194,7,66,2,NULL),(1195,163,32,2,NULL),(1196,135,39,2,NULL),(1197,8,66,2,NULL),(1198,165,32,2,NULL),(1199,138,39,2,NULL),(1200,10,66,2,NULL),(1201,188,32,2,NULL),(1202,59,40,2,NULL),(1203,11,66,2,NULL),(1204,58,33,2,NULL),(1205,79,40,2,NULL),(1206,81,33,2,NULL),(1207,36,66,2,NULL),(1208,101,40,2,NULL),(1209,39,66,2,NULL),(1210,84,33,2,NULL),(1211,104,40,2,NULL),(1212,87,33,2,NULL),(1213,45,66,2,NULL),(1214,106,40,2,NULL),(1215,48,66,2,NULL),(1216,88,33,2,NULL),(1217,109,40,2,NULL),(1218,91,33,2,NULL),(1219,55,66,2,NULL),(1220,111,40,2,NULL),(1221,105,66,2,NULL),(1222,146,33,2,NULL),(1223,113,40,2,NULL),(1224,143,66,2,NULL),(1225,150,33,2,NULL),(1226,117,40,2,NULL),(1227,6,67,2,NULL),(1228,160,33,2,NULL),(1229,119,40,2,NULL),(1230,163,33,2,NULL),(1231,7,67,2,NULL),(1232,122,40,2,NULL),(1233,165,33,2,NULL),(1234,8,67,2,NULL),(1235,125,40,2,NULL),(1236,10,67,2,NULL),(1237,188,33,2,NULL),(1238,126,40,2,NULL),(1239,11,67,2,NULL),(1240,58,34,2,NULL),(1241,128,40,2,NULL),(1242,36,67,2,NULL),(1243,81,34,2,NULL),(1244,130,40,2,NULL),(1245,39,67,2,NULL),(1246,84,34,2,NULL),(1247,133,40,2,NULL),(1248,45,67,2,NULL),(1249,87,34,2,NULL),(1250,135,40,2,NULL),(1251,48,67,2,NULL),(1252,88,34,2,NULL),(1253,138,40,2,NULL),(1254,55,67,2,NULL),(1255,91,34,2,NULL),(1256,105,67,2,NULL),(1257,59,6,2,NULL),(1258,146,34,2,NULL),(1259,79,6,2,NULL),(1260,143,67,2,NULL),(1261,150,34,2,NULL),(1262,101,6,2,NULL),(1263,158,4,2,NULL),(1264,160,34,2,NULL),(1265,104,6,2,NULL),(1266,158,8,2,NULL),(1267,163,34,2,NULL),(1268,158,11,2,NULL),(1269,106,6,2,NULL),(1270,165,34,2,NULL),(1271,158,48,2,NULL),(1272,109,6,2,NULL),(1273,188,34,2,NULL),(1274,158,49,2,NULL),(1275,111,6,2,NULL),(1276,58,53,2,NULL),(1277,158,55,2,NULL),(1278,113,6,2,NULL),(1279,81,53,2,NULL),(1280,158,60,2,NULL),(1281,117,6,2,NULL),(1282,84,53,2,NULL),(1283,158,7,2,NULL),(1284,119,6,2,NULL),(1285,87,53,2,NULL),(1286,158,15,2,NULL),(1287,122,6,2,NULL),(1288,88,53,2,NULL),(1289,125,6,2,NULL),(1290,158,35,2,NULL),(1291,91,53,2,NULL),(1292,126,6,2,NULL),(1293,158,36,2,NULL),(1294,146,53,2,NULL),(1295,158,38,2,NULL),(1296,128,6,2,NULL),(1297,150,53,2,NULL),(1298,130,6,2,NULL),(1299,158,39,2,NULL),(1300,160,53,2,NULL),(1301,158,40,2,NULL),(1302,133,6,2,NULL),(1303,163,53,2,NULL),(1304,135,6,2,NULL),(1305,158,6,2,NULL),(1306,165,53,2,NULL),(1307,158,13,2,NULL),(1308,138,6,2,NULL),(1309,188,53,2,NULL),(1310,20,17,2,NULL),(1311,158,16,2,NULL),(1312,58,58,2,NULL),(1313,158,18,2,NULL),(1314,40,17,2,NULL),(1315,81,58,2,NULL),(1316,158,42,2,NULL),(1317,43,17,2,NULL),(1318,84,58,2,NULL),(1319,158,43,2,NULL),(1320,44,17,2,NULL),(1321,87,58,2,NULL),(1322,158,45,2,NULL),(1323,47,17,2,NULL),(1324,88,58,2,NULL),(1325,158,62,2,NULL),(1326,50,17,2,NULL),(1327,91,58,2,NULL),(1328,158,19,2,NULL),(1329,71,17,2,NULL),(1330,146,58,2,NULL),(1331,158,24,2,NULL),(1332,154,17,2,NULL),(1333,150,58,2,NULL),(1334,158,25,2,NULL),(1335,161,17,2,NULL),(1336,160,58,2,NULL),(1337,158,26,2,NULL),(1338,170,17,2,NULL),(1339,163,58,2,NULL),(1340,158,44,2,NULL),(1341,173,17,2,NULL),(1342,165,58,2,NULL),(1343,158,46,2,NULL),(1344,175,17,2,NULL),(1345,188,58,2,NULL),(1346,158,47,2,NULL),(1347,179,17,2,NULL),(1348,58,63,2,NULL),(1349,59,13,2,NULL),(1350,158,32,2,NULL),(1351,81,63,2,NULL),(1352,79,13,2,NULL),(1353,158,33,2,NULL),(1354,84,63,2,NULL),(1355,158,34,2,NULL),(1356,101,13,2,NULL),(1357,87,63,2,NULL),(1358,158,53,2,NULL),(1359,104,13,2,NULL),(1360,88,63,2,NULL),(1361,158,58,2,NULL),(1362,106,13,2,NULL),(1363,91,63,2,NULL),(1364,158,63,2,NULL),(1365,109,13,2,NULL),(1366,146,63,2,NULL),(1367,158,66,2,NULL),(1368,111,13,2,NULL),(1369,150,63,2,NULL),(1370,158,67,2,NULL),(1371,113,13,2,NULL),(1372,160,63,2,NULL),(1373,117,13,2,NULL),(1374,12,4,2,NULL),(1375,163,63,2,NULL),(1376,13,4,2,NULL),(1377,119,13,2,NULL),(1378,165,63,2,NULL),(1379,15,4,2,NULL),(1380,122,13,2,NULL),(1381,188,63,2,NULL),(1382,17,4,2,NULL),(1383,125,13,2,NULL),(1384,58,66,2,NULL),(1385,18,4,2,NULL),(1386,126,13,2,NULL),(1387,81,66,2,NULL),(1388,21,4,2,NULL),(1389,128,13,2,NULL),(1390,84,66,2,NULL),(1391,22,4,2,NULL),(1392,130,13,2,NULL),(1393,87,66,2,NULL),(1394,25,4,2,NULL),(1395,133,13,2,NULL),(1396,88,66,2,NULL),(1397,20,4,2,NULL),(1398,135,13,2,NULL),(1399,91,66,2,NULL),(1400,40,4,2,NULL),(1401,138,13,2,NULL),(1402,146,66,2,NULL),(1403,43,4,2,NULL),(1404,59,16,2,NULL),(1405,150,66,2,NULL),(1406,79,16,2,NULL),(1407,44,4,2,NULL),(1408,160,66,2,NULL),(1409,101,16,2,NULL),(1410,47,4,2,NULL),(1411,163,66,2,NULL),(1412,104,16,2,NULL),(1413,50,4,2,NULL),(1414,165,66,2,NULL),(1415,106,16,2,NULL),(1416,71,4,2,NULL),(1417,188,66,2,NULL),(1418,109,16,2,NULL),(1419,154,4,2,NULL),(1420,58,67,2,NULL),(1421,111,16,2,NULL),(1422,161,4,2,NULL),(1423,81,67,2,NULL),(1424,170,4,2,NULL),(1425,113,16,2,NULL),(1426,84,67,2,NULL),(1427,117,16,2,NULL),(1428,173,4,2,NULL),(1429,87,67,2,NULL),(1430,119,16,2,NULL),(1431,175,4,2,NULL),(1432,88,67,2,NULL),(1433,122,16,2,NULL),(1434,179,4,2,NULL),(1435,91,67,2,NULL),(1436,125,16,2,NULL),(1437,185,4,2,NULL),(1438,146,67,2,NULL),(1439,126,16,2,NULL),(1440,12,8,2,NULL),(1441,150,67,2,NULL),(1442,13,8,2,NULL),(1443,128,16,2,NULL),(1444,160,67,2,NULL),(1445,15,8,2,NULL),(1446,130,16,2,NULL),(1447,163,67,2,NULL),(1448,17,8,2,NULL),(1449,133,16,2,NULL),(1450,165,67,2,NULL),(1451,18,8,2,NULL),(1452,135,16,2,NULL),(1453,188,67,2,NULL),(1454,21,8,2,NULL),(1455,138,16,2,NULL),(1456,185,8,2,NULL),(1457,22,8,2,NULL),(1458,59,18,2,NULL),(1459,185,11,2,NULL),(1460,25,8,2,NULL),(1461,79,18,2,NULL),(1462,185,48,2,NULL),(1463,20,8,2,NULL),(1464,101,18,2,NULL),(1465,185,49,2,NULL),(1466,104,18,2,NULL),(1467,40,8,2,NULL),(1468,185,55,2,NULL),(1469,43,8,2,NULL),(1470,106,18,2,NULL),(1471,185,60,2,NULL),(1472,44,8,2,NULL),(1473,109,18,2,NULL),(1474,185,7,2,NULL),(1475,47,8,2,NULL),(1476,111,18,2,NULL),(1477,185,15,2,NULL),(1478,50,8,2,NULL),(1479,113,18,2,NULL),(1480,185,35,2,NULL),(1481,71,8,2,NULL),(1482,117,18,2,NULL),(1483,185,36,2,NULL),(1484,154,8,2,NULL),(1485,119,18,2,NULL),(1486,185,38,2,NULL),(1487,161,8,2,NULL),(1488,122,18,2,NULL),(1489,185,39,2,NULL),(1490,170,8,2,NULL),(1491,125,18,2,NULL),(1492,185,40,2,NULL),(1493,173,8,2,NULL),(1494,126,18,2,NULL),(1495,185,6,2,NULL),(1496,175,8,2,NULL),(1497,128,18,2,NULL),(1498,185,13,2,NULL),(1499,179,8,2,NULL),(1500,130,18,2,NULL),(1501,185,16,2,NULL),(1502,133,18,2,NULL),(1503,107,8,2,NULL),(1504,185,18,2,NULL),(1505,107,16,2,NULL),(1506,135,18,2,NULL),(1507,185,42,2,NULL),(1508,107,33,2,NULL),(1509,138,18,2,NULL),(1510,185,43,2,NULL),(1511,59,42,2,NULL),(1512,12,11,2,NULL),(1513,185,45,2,NULL),(1514,13,11,2,NULL),(1515,79,42,2,NULL),(1516,185,62,2,NULL),(1517,101,42,2,NULL),(1518,15,11,2,NULL),(1519,185,17,2,NULL),(1520,104,42,2,NULL),(1521,17,11,2,NULL),(1522,185,19,2,NULL),(1523,18,11,2,NULL),(1524,106,42,2,NULL),(1525,185,24,2,NULL),(1526,21,11,2,NULL),(1527,109,42,2,NULL),(1528,185,25,2,NULL),(1529,22,11,2,NULL),(1530,111,42,2,NULL),(1531,185,26,2,NULL),(1532,25,11,2,NULL),(1533,113,42,2,NULL),(1534,185,44,2,NULL),(1535,117,42,2,NULL),(1536,20,11,2,NULL),(1537,185,46,2,NULL),(1538,119,42,2,NULL),(1539,40,11,2,NULL),(1540,185,47,2,NULL),(1541,43,11,2,NULL),(1542,122,42,2,NULL),(1543,185,32,2,NULL),(1544,44,11,2,NULL),(1545,125,42,2,NULL),(1546,185,33,2,NULL),(1547,47,11,2,NULL),(1548,126,42,2,NULL),(1549,185,34,2,NULL),(1550,50,11,2,NULL),(1551,128,42,2,NULL),(1552,185,53,2,NULL),(1553,71,11,2,NULL),(1554,130,42,2,NULL),(1555,185,58,2,NULL),(1556,154,11,2,NULL),(1557,133,42,2,NULL),(1558,185,63,2,NULL),(1559,161,11,2,NULL),(1560,135,42,2,NULL),(1561,185,66,2,NULL),(1562,170,11,2,NULL),(1563,138,42,2,NULL),(1564,185,67,2,NULL),(1565,59,43,2,NULL),(1566,173,11,2,NULL),(1567,12,32,2,NULL),(1568,175,11,2,NULL),(1569,79,43,2,NULL),(1570,13,32,2,NULL),(1571,179,11,2,NULL),(1572,101,43,2,NULL),(1573,15,32,2,NULL),(1574,104,43,2,NULL),(1575,12,48,2,NULL),(1576,17,32,2,NULL),(1577,13,48,2,NULL),(1578,106,43,2,NULL),(1579,18,32,2,NULL),(1580,15,48,2,NULL),(1581,109,43,2,NULL),(1582,21,32,2,NULL),(1583,111,43,2,NULL),(1584,17,48,2,NULL),(1585,22,32,2,NULL),(1586,18,48,2,NULL),(1587,113,43,2,NULL),(1588,25,32,2,NULL),(1589,21,48,2,NULL),(1590,117,43,2,NULL),(1591,20,32,2,NULL),(1592,22,48,2,NULL),(1593,119,43,2,NULL),(1594,40,32,2,NULL),(1595,25,48,2,NULL),(1596,122,43,2,NULL),(1597,43,32,2,NULL),(1598,20,48,2,NULL),(1599,125,43,2,NULL),(1600,44,32,2,NULL),(1601,40,48,2,NULL),(1602,126,43,2,NULL),(1603,47,32,2,NULL),(1604,43,48,2,NULL),(1605,128,43,2,NULL),(1606,50,32,2,NULL),(1607,44,48,2,NULL),(1608,71,32,2,NULL),(1609,130,43,2,NULL),(1610,47,48,2,NULL),(1611,154,32,2,NULL),(1612,50,48,2,NULL),(1613,133,43,2,NULL),(1614,161,32,2,NULL),(1615,71,48,2,NULL),(1616,135,43,2,NULL),(1617,170,32,2,NULL),(1618,154,48,2,NULL),(1619,138,43,2,NULL),(1620,173,32,2,NULL),(1621,161,48,2,NULL),(1622,59,45,2,NULL),(1623,175,32,2,NULL),(1624,170,48,2,NULL),(1625,79,45,2,NULL),(1626,179,32,2,NULL),(1627,173,48,2,NULL),(1628,101,45,2,NULL),(1629,59,32,2,NULL),(1630,175,48,2,NULL),(1631,104,45,2,NULL),(1632,79,32,2,NULL),(1633,179,48,2,NULL),(1634,106,45,2,NULL),(1635,101,32,2,NULL),(1636,109,45,2,NULL),(1637,104,32,2,NULL),(1638,111,45,2,NULL),(1639,12,49,2,NULL),(1640,106,32,2,NULL),(1641,113,45,2,NULL),(1642,13,49,2,NULL),(1643,109,32,2,NULL),(1644,15,49,2,NULL),(1645,117,45,2,NULL),(1646,111,32,2,NULL),(1647,119,45,2,NULL),(1648,17,49,2,NULL),(1649,113,32,2,NULL),(1650,18,49,2,NULL),(1651,122,45,2,NULL),(1652,117,32,2,NULL),(1653,21,49,2,NULL),(1654,125,45,2,NULL),(1655,119,32,2,NULL),(1656,22,49,2,NULL),(1657,126,45,2,NULL),(1658,122,32,2,NULL),(1659,25,49,2,NULL),(1660,128,45,2,NULL),(1661,125,32,2,NULL),(1662,20,49,2,NULL),(1663,130,45,2,NULL),(1664,126,32,2,NULL),(1665,40,49,2,NULL),(1666,133,45,2,NULL),(1667,128,32,2,NULL),(1668,43,49,2,NULL),(1669,135,45,2,NULL),(1670,130,32,2,NULL),(1671,44,49,2,NULL),(1672,138,45,2,NULL),(1673,133,32,2,NULL),(1674,47,49,2,NULL),(1675,59,62,2,NULL),(1676,135,32,2,NULL),(1677,50,49,2,NULL),(1678,79,62,2,NULL),(1679,138,32,2,NULL),(1680,101,62,2,NULL),(1681,71,49,2,NULL),(1682,154,49,2,NULL),(1683,104,62,2,NULL),(1684,12,33,2,NULL),(1685,161,49,2,NULL),(1686,106,62,2,NULL),(1687,109,62,2,NULL),(1688,170,49,2,NULL),(1689,13,33,2,NULL),(1690,111,62,2,NULL),(1691,15,33,2,NULL),(1692,173,49,2,NULL),(1693,113,62,2,NULL),(1694,117,62,2,NULL),(1695,175,49,2,NULL),(1696,17,33,2,NULL),(1697,119,62,2,NULL),(1698,122,62,2,NULL),(1699,18,33,2,NULL),(1700,179,49,2,NULL),(1701,125,62,2,NULL),(1702,126,62,2,NULL),(1703,21,33,2,NULL),(1704,128,62,2,NULL),(1705,22,33,2,NULL),(1706,130,62,2,NULL),(1707,12,55,2,NULL),(1708,133,62,2,NULL),(1709,25,33,2,NULL),(1710,13,55,2,NULL),(1711,135,62,2,NULL),(1712,135,62,2,NULL),(1713,15,55,2,NULL),(1714,20,33,2,NULL),(1715,138,62,2,NULL),(1716,59,19,2,NULL),(1717,40,33,2,NULL),(1718,17,55,2,NULL),(1719,79,19,2,NULL),(1720,43,33,2,NULL),(1721,18,55,2,NULL),(1722,101,19,2,NULL),(1723,101,19,2,NULL),(1724,44,33,2,NULL),(1725,21,55,2,NULL),(1726,104,19,2,NULL),(1727,106,19,2,NULL),(1728,47,33,2,NULL),(1729,22,55,2,NULL),(1730,109,19,2,NULL),(1731,50,33,2,NULL),(1732,25,55,2,NULL),(1733,111,19,2,NULL),(1734,113,19,2,NULL),(1735,71,33,2,NULL),(1736,20,55,2,NULL),(1737,117,19,2,NULL),(1738,154,33,2,NULL),(1739,119,19,2,NULL),(1740,40,55,2,NULL),(1741,122,19,2,NULL),(1742,161,33,2,NULL),(1743,43,55,2,NULL),(1744,125,19,2,NULL),(1745,126,19,2,NULL),(1746,170,33,2,NULL),(1747,44,55,2,NULL),(1748,128,19,2,NULL),(1749,130,19,2,NULL),(1750,173,33,2,NULL),(1751,47,55,2,NULL),(1752,133,19,2,NULL),(1753,175,33,2,NULL),(1754,50,55,2,NULL),(1755,135,19,2,NULL),(1756,138,19,2,NULL),(1757,179,33,2,NULL),(1758,71,55,2,NULL),(1759,59,24,2,NULL),(1760,79,24,2,NULL),(1761,59,33,2,NULL),(1762,154,55,2,NULL),(1763,101,24,2,NULL),(1764,79,33,2,NULL),(1765,161,55,2,NULL),(1766,104,24,2,NULL),(1767,106,24,2,NULL),(1768,101,33,2,NULL),(1769,170,55,2,NULL),(1770,109,24,2,NULL),(1771,111,24,2,NULL),(1772,104,33,2,NULL),(1773,173,55,2,NULL),(1774,113,24,2,NULL),(1775,175,55,2,NULL),(1776,106,33,2,NULL),(1777,117,24,2,NULL),(1778,119,24,2,NULL),(1779,179,55,2,NULL),(1780,109,33,2,NULL),(1781,122,24,2,NULL),(1782,125,24,2,NULL),(1783,111,33,2,NULL),(1784,126,24,2,NULL),(1785,128,24,2,NULL),(1786,113,33,2,NULL),(1787,12,60,2,NULL),(1788,130,24,2,NULL),(1789,117,33,2,NULL),(1790,133,24,2,NULL),(1791,13,60,2,NULL),(1792,135,24,2,NULL),(1793,119,33,2,NULL),(1794,15,60,2,NULL),(1795,138,24,2,NULL),(1796,59,25,2,NULL),(1797,122,33,2,NULL),(1798,17,60,2,NULL),(1799,79,25,2,NULL),(1800,101,25,2,NULL),(1801,125,33,2,NULL),(1802,18,60,2,NULL),(1803,104,25,2,NULL),(1804,106,25,2,NULL),(1805,126,33,2,NULL),(1806,21,60,2,NULL),(1807,109,25,2,NULL),(1808,111,25,2,NULL),(1809,128,33,2,NULL),(1810,22,60,2,NULL),(1811,113,25,2,NULL),(1812,130,33,2,NULL),(1813,117,25,2,NULL),(1814,25,60,2,NULL),(1815,119,25,2,NULL),(1816,133,33,2,NULL),(1817,122,25,2,NULL),(1818,20,60,2,NULL),(1819,125,25,2,NULL),(1820,135,33,2,NULL),(1821,40,60,2,NULL),(1822,126,25,2,NULL),(1823,128,25,2,NULL),(1824,138,33,2,NULL),(1825,43,60,2,NULL),(1826,130,25,2,NULL),(1827,133,25,2,NULL),(1828,77,8,2,NULL),(1829,44,60,2,NULL),(1830,135,25,2,NULL),(1831,138,25,2,NULL),(1832,47,60,2,NULL),(1833,77,16,2,NULL),(1834,59,26,2,NULL),(1835,79,26,2,NULL),(1836,50,60,2,NULL),(1837,77,33,2,NULL),(1838,101,26,2,NULL),(1839,104,26,2,NULL),(1840,71,60,2,NULL),(1841,106,26,2,NULL),(1842,12,34,2,NULL),(1843,109,26,2,NULL),(1844,154,60,2,NULL),(1845,111,26,2,NULL),(1846,13,34,2,NULL),(1847,161,60,2,NULL),(1848,113,26,2,NULL),(1849,117,26,2,NULL),(1850,15,34,2,NULL),(1851,170,60,2,NULL),(1852,119,26,2,NULL),(1853,17,34,2,NULL),(1854,122,26,2,NULL),(1855,173,60,2,NULL),(1856,125,26,2,NULL),(1857,18,34,2,NULL),(1858,126,26,2,NULL),(1859,175,60,2,NULL),(1860,128,26,2,NULL),(1861,21,34,2,NULL),(1862,130,26,2,NULL),(1863,179,60,2,NULL),(1864,133,26,2,NULL),(1865,22,34,2,NULL),(1866,135,26,2,NULL),(1867,138,26,2,NULL),(1868,25,34,2,NULL),(1869,20,34,2,NULL),(1870,59,44,2,NULL),(1871,79,44,2,NULL),(1872,40,34,2,NULL),(1873,101,44,2,NULL),(1874,104,44,2,NULL),(1875,43,34,2,NULL),(1876,106,44,2,NULL),(1877,109,44,2,NULL),(1878,44,34,2,NULL),(1879,111,44,2,NULL),(1880,113,44,2,NULL),(1881,47,34,2,NULL),(1882,117,44,2,NULL),(1883,119,44,2,NULL),(1884,50,34,2,NULL),(1885,122,44,2,NULL),(1886,125,44,2,NULL),(1887,71,34,2,NULL),(1888,126,44,2,NULL),(1889,128,44,2,NULL),(1890,154,34,2,NULL),(1891,130,44,2,NULL),(1892,133,44,2,NULL),(1893,161,34,2,NULL),(1894,135,44,2,NULL),(1895,138,44,2,NULL),(1896,170,34,2,NULL),(1897,59,46,2,NULL),(1898,79,46,2,NULL),(1899,173,34,2,NULL),(1900,101,46,2,NULL),(1901,104,46,2,NULL),(1902,175,34,2,NULL),(1903,106,46,2,NULL),(1904,109,46,2,NULL),(1905,179,34,2,NULL),(1906,111,46,2,NULL),(1907,113,46,2,NULL),(1908,59,34,2,NULL),(1909,117,46,2,NULL),(1910,119,46,2,NULL),(1911,79,34,2,NULL),(1912,122,46,2,NULL),(1913,125,46,2,NULL),(1914,101,34,2,NULL),(1915,126,46,2,NULL),(1916,128,46,2,NULL),(1917,104,34,2,NULL),(1918,130,46,2,NULL),(1919,133,46,2,NULL),(1920,106,34,2,NULL),(1921,135,46,2,NULL),(1922,138,46,2,NULL),(1923,109,34,2,NULL),(1924,59,47,2,NULL),(1925,79,47,2,NULL),(1926,111,34,2,NULL),(1927,101,47,2,NULL),(1928,104,47,2,NULL),(1929,113,34,2,NULL),(1930,106,47,2,NULL),(1931,109,47,2,NULL),(1932,117,34,2,NULL),(1933,111,47,2,NULL),(1934,113,47,2,NULL),(1935,119,34,2,NULL),(1936,117,47,2,NULL),(1937,119,47,2,NULL),(1938,122,34,2,NULL),(1939,122,47,2,NULL),(1940,125,47,2,NULL),(1941,125,34,2,NULL),(1942,126,47,2,NULL),(1943,128,47,2,NULL),(1944,126,34,2,NULL),(1945,130,47,2,NULL),(1946,133,47,2,NULL),(1947,128,34,2,NULL),(1948,135,47,2,NULL),(1949,138,47,2,NULL),(1950,130,34,2,NULL),(1951,133,34,2,NULL),(1952,135,34,2,NULL),(1953,135,34,2,NULL),(1954,138,34,2,NULL),(1955,59,53,2,NULL),(1956,59,53,2,NULL),(1957,12,53,2,NULL),(1958,79,53,2,NULL),(1959,101,53,2,NULL),(1960,13,53,2,NULL),(1961,104,53,2,NULL),(1962,104,53,2,NULL),(1963,15,53,2,NULL),(1964,106,53,2,NULL),(1965,109,53,2,NULL),(1966,17,53,2,NULL),(1967,111,53,2,NULL),(1968,111,53,2,NULL),(1969,18,53,2,NULL),(1970,113,53,2,NULL),(1971,117,53,2,NULL),(1972,21,53,2,NULL),(1973,119,53,2,NULL),(1974,119,53,2,NULL),(1975,22,53,2,NULL),(1976,122,53,2,NULL),(1977,125,53,2,NULL),(1978,25,53,2,NULL),(1979,126,53,2,NULL),(1980,126,53,2,NULL),(1981,20,53,2,NULL),(1982,128,53,2,NULL),(1983,130,53,2,NULL),(1984,40,53,2,NULL),(1985,133,53,2,NULL),(1986,133,53,2,NULL),(1987,43,53,2,NULL),(1988,135,53,2,NULL),(1989,138,53,2,NULL),(1990,44,53,2,NULL),(1991,59,58,2,NULL),(1992,59,58,2,NULL),(1993,47,53,2,NULL),(1994,79,58,2,NULL),(1995,101,58,2,NULL),(1996,50,53,2,NULL),(1997,104,58,2,NULL),(1998,104,58,2,NULL),(1999,71,53,2,NULL),(2000,106,58,2,NULL),(2001,109,58,2,NULL),(2002,154,53,2,NULL),(2003,111,58,2,NULL),(2004,111,58,2,NULL),(2005,161,53,2,NULL),(2006,113,58,2,NULL),(2007,117,58,2,NULL),(2008,170,53,2,NULL),(2009,119,58,2,NULL),(2010,119,58,2,NULL),(2011,173,53,2,NULL),(2012,122,58,2,NULL),(2013,122,58,2,NULL),(2014,175,53,2,NULL),(2015,125,58,2,NULL),(2016,126,58,2,NULL),(2017,179,53,2,NULL),(2018,128,58,2,NULL),(2019,128,58,2,NULL),(2020,130,58,2,NULL),(2021,133,58,2,NULL),(2022,12,58,2,NULL),(2023,135,58,2,NULL),(2024,13,58,2,NULL),(2025,138,58,2,NULL),(2026,59,63,2,NULL),(2027,15,58,2,NULL),(2028,79,63,2,NULL),(2029,101,63,2,NULL),(2030,17,58,2,NULL),(2031,104,63,2,NULL),(2032,106,63,2,NULL),(2033,18,58,2,NULL),(2034,109,63,2,NULL),(2035,111,63,2,NULL),(2036,21,58,2,NULL),(2037,113,63,2,NULL),(2038,117,63,2,NULL),(2039,22,58,2,NULL),(2040,119,63,2,NULL),(2041,122,63,2,NULL),(2042,25,58,2,NULL),(2043,125,63,2,NULL),(2044,126,63,2,NULL),(2045,20,58,2,NULL),(2046,128,63,2,NULL),(2047,130,63,2,NULL),(2048,40,58,2,NULL),(2049,133,63,2,NULL),(2050,135,63,2,NULL),(2051,43,58,2,NULL),(2052,138,63,2,NULL),(2053,59,66,2,NULL),(2054,44,58,2,NULL),(2055,79,66,2,NULL),(2056,101,66,2,NULL),(2057,47,58,2,NULL),(2058,104,66,2,NULL),(2059,106,66,2,NULL),(2060,50,58,2,NULL),(2061,109,66,2,NULL),(2062,111,66,2,NULL),(2063,71,58,2,NULL),(2064,113,66,2,NULL),(2065,117,66,2,NULL),(2066,154,58,2,NULL),(2067,119,66,2,NULL),(2068,122,66,2,NULL),(2069,161,58,2,NULL),(2070,125,66,2,NULL),(2071,126,66,2,NULL),(2072,170,58,2,NULL),(2073,128,66,2,NULL),(2074,130,66,2,NULL),(2075,130,66,2,NULL),(2076,173,58,2,NULL),(2077,133,66,2,NULL),(2078,175,58,2,NULL),(2079,135,66,2,NULL),(2080,138,66,2,NULL),(2081,179,58,2,NULL),(2082,59,67,2,NULL),(2083,79,67,2,NULL),(2084,101,67,2,NULL),(2085,12,63,2,NULL),(2086,104,67,2,NULL),(2087,104,67,2,NULL),(2088,13,63,2,NULL),(2089,106,67,2,NULL),(2090,15,63,2,NULL),(2091,109,67,2,NULL),(2092,111,67,2,NULL),(2093,17,63,2,NULL),(2094,113,67,2,NULL),(2095,117,67,2,NULL),(2096,18,63,2,NULL),(2097,119,67,2,NULL),(2098,122,67,2,NULL),(2099,122,67,2,NULL),(2100,21,63,2,NULL),(2101,125,67,2,NULL),(2102,22,63,2,NULL),(2103,126,67,2,NULL),(2104,128,67,2,NULL),(2105,25,63,2,NULL),(2106,130,67,2,NULL),(2107,133,67,2,NULL),(2108,20,63,2,NULL),(2109,135,67,2,NULL),(2110,138,67,2,NULL),(2111,40,63,2,NULL),(2112,12,19,2,NULL),(2113,13,19,2,NULL),(2114,43,63,2,NULL),(2115,15,19,2,NULL),(2116,44,63,2,NULL),(2117,17,19,2,NULL),(2118,18,19,2,NULL),(2119,47,63,2,NULL),(2120,21,19,2,NULL),(2121,22,19,2,NULL),(2122,50,63,2,NULL),(2123,25,19,2,NULL),(2124,20,19,2,NULL),(2125,71,63,2,NULL),(2126,40,19,2,NULL),(2127,43,19,2,NULL),(2128,154,63,2,NULL),(2129,44,19,2,NULL),(2130,47,19,2,NULL),(2131,161,63,2,NULL),(2132,50,19,2,NULL),(2133,71,19,2,NULL),(2134,170,63,2,NULL),(2135,154,19,2,NULL),(2136,161,19,2,NULL),(2137,173,63,2,NULL),(2138,170,19,2,NULL),(2139,173,19,2,NULL),(2140,175,63,2,NULL),(2141,175,19,2,NULL),(2142,179,19,2,NULL),(2143,179,63,2,NULL),(2144,12,24,2,NULL),(2145,12,24,2,NULL),(2146,12,66,2,NULL),(2147,13,24,2,NULL),(2148,13,66,2,NULL),(2149,15,24,2,NULL),(2150,17,24,2,NULL),(2151,15,66,2,NULL),(2152,18,24,2,NULL),(2153,21,24,2,NULL),(2154,17,66,2,NULL),(2155,22,24,2,NULL),(2156,25,24,2,NULL),(2157,18,66,2,NULL),(2158,20,24,2,NULL),(2159,40,24,2,NULL),(2160,21,66,2,NULL),(2161,43,24,2,NULL),(2162,44,24,2,NULL),(2163,22,66,2,NULL),(2164,47,24,2,NULL),(2165,50,24,2,NULL),(2166,25,66,2,NULL),(2167,71,24,2,NULL),(2168,154,24,2,NULL),(2169,20,66,2,NULL),(2170,161,24,2,NULL),(2171,170,24,2,NULL),(2172,40,66,2,NULL),(2173,173,24,2,NULL),(2174,175,24,2,NULL),(2175,43,66,2,NULL),(2176,179,24,2,NULL),(2177,44,66,2,NULL),(2178,47,66,2,NULL),(2179,50,66,2,NULL),(2180,12,25,2,NULL),(2181,13,25,2,NULL),(2182,71,66,2,NULL),(2183,15,25,2,NULL),(2184,15,25,2,NULL),(2185,154,66,2,NULL),(2186,17,25,2,NULL),(2187,17,25,2,NULL),(2188,161,66,2,NULL),(2189,18,25,2,NULL),(2190,18,25,2,NULL),(2191,170,66,2,NULL),(2192,21,25,2,NULL),(2193,21,25,2,NULL),(2194,173,66,2,NULL),(2195,22,25,2,NULL),(2196,22,25,2,NULL),(2197,175,66,2,NULL),(2198,25,25,2,NULL),(2199,25,25,2,NULL),(2200,179,66,2,NULL),(2201,20,25,2,NULL),(2202,20,25,2,NULL),(2203,12,67,2,NULL),(2204,40,25,2,NULL),(2205,40,25,2,NULL),(2206,13,67,2,NULL),(2207,43,25,2,NULL),(2208,43,25,2,NULL),(2209,15,67,2,NULL),(2210,44,25,2,NULL),(2211,44,25,2,NULL),(2212,17,67,2,NULL),(2213,47,25,2,NULL),(2214,47,25,2,NULL),(2215,18,67,2,NULL),(2216,50,25,2,NULL),(2217,50,25,2,NULL),(2218,21,67,2,NULL),(2219,71,25,2,NULL),(2220,71,25,2,NULL),(2221,22,67,2,NULL),(2222,154,25,2,NULL),(2223,154,25,2,NULL),(2224,25,67,2,NULL),(2225,161,25,2,NULL),(2226,161,25,2,NULL),(2227,20,67,2,NULL),(2228,170,25,2,NULL),(2229,170,25,2,NULL),(2230,40,67,2,NULL),(2231,173,25,2,NULL),(2232,173,25,2,NULL),(2233,43,67,2,NULL),(2234,175,25,2,NULL),(2235,175,25,2,NULL),(2236,44,67,2,NULL),(2237,179,25,2,NULL),(2238,179,25,2,NULL),(2239,47,67,2,NULL),(2240,50,67,2,NULL),(2241,71,67,2,NULL),(2242,154,67,2,NULL),(2243,12,26,2,NULL),(2244,161,67,2,NULL),(2245,13,26,2,NULL),(2246,15,26,2,NULL),(2247,170,67,2,NULL),(2248,17,26,2,NULL),(2249,18,26,2,NULL),(2250,173,67,2,NULL),(2251,21,26,2,NULL),(2252,22,26,2,NULL),(2253,175,67,2,NULL),(2254,25,26,2,NULL),(2255,20,26,2,NULL),(2256,179,67,2,NULL),(2257,40,26,2,NULL),(2258,43,26,2,NULL),(2259,44,26,2,NULL),(2260,47,26,2,NULL),(2261,50,26,2,NULL),(2262,71,26,2,NULL),(2263,154,26,2,NULL),(2264,161,26,2,NULL),(2265,170,26,2,NULL),(2266,173,26,2,NULL),(2267,175,26,2,NULL),(2268,179,26,2,NULL),(2269,12,44,2,NULL),(2270,12,44,2,NULL),(2271,13,44,2,NULL),(2272,15,44,2,NULL),(2273,17,44,2,NULL),(2274,18,44,2,NULL),(2275,21,44,2,NULL),(2276,22,44,2,NULL),(2277,25,44,2,NULL),(2278,20,44,2,NULL),(2279,40,44,2,NULL),(2280,43,44,2,NULL),(2281,44,44,2,NULL),(2282,47,44,2,NULL),(2283,50,44,2,NULL),(2284,71,44,2,NULL),(2285,154,44,2,NULL),(2286,161,44,2,NULL),(2287,170,44,2,NULL),(2288,173,44,2,NULL),(2289,175,44,2,NULL),(2290,179,44,2,NULL),(2291,12,46,2,NULL),(2292,13,46,2,NULL),(2293,15,46,2,NULL),(2294,17,46,2,NULL),(2295,18,46,2,NULL),(2296,21,46,2,NULL),(2297,22,46,2,NULL),(2298,25,46,2,NULL),(2299,20,46,2,NULL),(2300,40,46,2,NULL),(2301,43,46,2,NULL),(2302,44,46,2,NULL),(2303,47,46,2,NULL),(2304,50,46,2,NULL),(2305,71,46,2,NULL),(2306,154,46,2,NULL),(2307,161,46,2,NULL),(2308,170,46,2,NULL),(2309,173,46,2,NULL),(2310,175,46,2,NULL),(2311,179,46,2,NULL),(2312,12,47,2,NULL),(2313,13,47,2,NULL),(2314,15,47,2,NULL),(2315,17,47,2,NULL),(2316,18,47,2,NULL),(2317,21,47,2,NULL),(2318,22,47,2,NULL),(2319,25,47,2,NULL),(2320,20,47,2,NULL),(2321,40,47,2,NULL),(2322,43,47,2,NULL),(2323,44,47,2,NULL),(2324,47,47,2,NULL),(2325,50,47,2,NULL),(2326,71,47,2,NULL),(2327,154,47,2,NULL),(2328,161,47,2,NULL),(2329,170,47,2,NULL),(2330,173,47,2,NULL),(2331,175,47,2,NULL),(2332,179,47,2,NULL),(2333,65,3,2,NULL),(2334,65,10,2,NULL),(2335,65,30,2,NULL),(2336,151,4,2,NULL),(2337,151,13,2,NULL),(2338,151,32,2,NULL),(2339,157,4,2,NULL),(2340,157,13,2,NULL),(2341,157,32,2,NULL),(2342,164,4,2,NULL),(2343,164,13,2,NULL),(2344,164,32,2,NULL),(2345,167,4,2,NULL),(2346,167,13,2,NULL),(2347,167,32,2,NULL),(2348,176,4,2,NULL),(2349,176,13,2,NULL),(2350,176,32,2,NULL),(2351,178,3,2,NULL),(2352,178,10,2,NULL),(2353,178,30,2,NULL),(2354,12,6,2,NULL),(2355,13,6,2,NULL),(2356,15,6,2,NULL),(2357,17,6,2,NULL),(2358,18,6,2,NULL),(2359,21,6,2,NULL),(2360,22,6,2,NULL),(2361,25,6,2,NULL),(2362,20,7,2,NULL),(2363,40,7,2,NULL),(2364,43,7,2,NULL),(2365,44,7,2,NULL),(2366,47,7,2,NULL),(2367,50,7,2,NULL),(2368,71,7,2,NULL),(2369,154,7,2,NULL),(2370,161,7,2,NULL),(2371,170,7,2,NULL),(2372,173,7,2,NULL),(2373,175,7,2,NULL),(2374,20,15,2,NULL),(2375,40,15,2,NULL),(2376,43,15,2,NULL),(2377,44,15,2,NULL),(2378,47,15,2,NULL),(2379,50,15,2,NULL),(2380,71,15,2,NULL),(2381,154,15,2,NULL),(2382,161,15,2,NULL),(2383,170,15,2,NULL),(2384,173,15,2,NULL),(2385,175,15,2,NULL),(2386,20,35,2,NULL),(2387,40,35,2,NULL),(2388,43,35,2,NULL),(2389,44,35,2,NULL),(2390,47,35,2,NULL),(2391,50,35,2,NULL),(2392,71,35,2,NULL),(2393,154,35,2,NULL),(2394,161,35,2,NULL),(2395,170,35,2,NULL),(2396,173,35,2,NULL),(2397,175,35,2,NULL),(2398,20,36,2,NULL),(2399,40,36,2,NULL),(2400,43,36,2,NULL),(2401,44,36,2,NULL),(2402,47,36,2,NULL),(2403,50,36,2,NULL),(2404,71,36,2,NULL),(2405,154,36,2,NULL),(2406,161,36,2,NULL),(2407,170,36,2,NULL),(2408,173,36,2,NULL),(2409,175,36,2,NULL),(2410,20,38,2,NULL),(2411,40,38,2,NULL),(2412,43,38,2,NULL),(2413,44,38,2,NULL),(2414,47,38,2,NULL),(2415,50,38,2,NULL),(2416,71,38,2,NULL),(2417,154,38,2,NULL),(2418,161,38,2,NULL),(2419,170,38,2,NULL),(2420,173,38,2,NULL),(2421,175,38,2,NULL),(2422,20,39,2,NULL),(2423,40,39,2,NULL),(2424,43,39,2,NULL),(2425,44,39,2,NULL),(2426,47,39,2,NULL),(2427,50,39,2,NULL),(2428,71,39,2,NULL),(2429,154,39,2,NULL),(2430,161,39,2,NULL),(2431,170,39,2,NULL),(2432,173,39,2,NULL),(2433,175,39,2,NULL),(2434,20,40,2,NULL),(2435,40,40,2,NULL),(2436,43,40,2,NULL),(2437,44,40,2,NULL),(2438,47,40,2,NULL),(2439,50,40,2,NULL),(2440,71,40,2,NULL),(2441,154,40,2,NULL),(2442,161,40,2,NULL),(2443,170,40,2,NULL),(2444,173,40,2,NULL),(2445,175,40,2,NULL),(2446,179,6,2,NULL),(2447,20,13,2,NULL),(2448,40,13,2,NULL),(2449,43,13,2,NULL),(2450,44,13,2,NULL),(2451,47,13,2,NULL),(2452,50,13,2,NULL),(2453,71,13,2,NULL),(2454,154,13,2,NULL),(2455,161,13,2,NULL),(2456,170,13,2,NULL),(2457,173,13,2,NULL),(2458,175,13,2,NULL),(2459,20,16,2,NULL),(2460,40,16,2,NULL),(2461,43,16,2,NULL),(2462,44,16,2,NULL),(2463,47,16,2,NULL),(2464,50,16,2,NULL),(2465,71,16,2,NULL),(2466,154,16,2,NULL),(2467,161,16,2,NULL),(2468,170,16,2,NULL),(2469,173,16,2,NULL),(2470,175,16,2,NULL),(2471,20,18,2,NULL),(2472,40,18,2,NULL),(2473,43,18,2,NULL),(2474,44,18,2,NULL),(2475,47,18,2,NULL),(2476,50,18,2,NULL),(2477,71,18,2,NULL),(2478,154,18,2,NULL),(2479,161,18,2,NULL),(2480,170,18,2,NULL),(2481,173,18,2,NULL),(2482,175,18,2,NULL),(2483,20,42,2,NULL),(2484,40,42,2,NULL),(2485,43,42,2,NULL),(2486,44,42,2,NULL),(2487,47,42,2,NULL),(2488,50,42,2,NULL),(2489,71,42,2,NULL),(2490,154,42,2,NULL),(2491,161,42,2,NULL),(2492,170,42,2,NULL),(2493,173,42,2,NULL),(2494,175,42,2,NULL),(2495,20,43,2,NULL),(2496,40,43,2,NULL),(2497,43,43,2,NULL),(2498,44,43,2,NULL),(2499,47,43,2,NULL),(2500,50,43,2,NULL),(2501,71,43,2,NULL),(2502,154,43,2,NULL),(2503,161,43,2,NULL),(2504,170,43,2,NULL),(2505,173,43,2,NULL),(2506,175,43,2,NULL),(2507,20,45,2,NULL),(2508,40,45,2,NULL),(2509,43,45,2,NULL),(2510,44,45,2,NULL),(2511,47,45,2,NULL),(2512,50,45,2,NULL),(2513,71,45,2,NULL),(2514,154,45,2,NULL),(2515,161,45,2,NULL),(2516,170,45,2,NULL),(2517,173,45,2,NULL),(2518,175,45,2,NULL),(2519,20,62,2,NULL),(2520,40,62,2,NULL),(2521,43,62,2,NULL),(2522,44,62,2,NULL),(2523,47,62,2,NULL),(2524,50,62,2,NULL),(2525,71,62,2,NULL),(2526,154,62,2,NULL),(2527,161,62,2,NULL),(2528,170,62,2,NULL),(2529,173,62,2,NULL),(2530,175,62,2,NULL),(2531,179,7,2,NULL),(2532,2,7,2,NULL),(2533,179,15,2,NULL),(2534,179,35,2,NULL),(2535,12,7,2,NULL),(2536,179,36,2,NULL),(2537,13,7,2,NULL),(2538,179,38,2,NULL),(2539,15,7,2,NULL),(2540,179,39,2,NULL),(2541,17,7,2,NULL),(2542,179,40,2,NULL),(2543,18,7,2,NULL),(2544,179,13,2,NULL),(2545,21,7,2,NULL),(2546,179,16,2,NULL),(2547,22,7,2,NULL),(2548,179,18,2,NULL),(2549,25,7,2,NULL),(2550,179,42,2,NULL),(2551,12,15,2,NULL),(2552,179,43,2,NULL),(2553,13,15,2,NULL),(2554,179,45,2,NULL),(2555,15,15,2,NULL),(2556,179,62,2,NULL),(2557,17,15,2,NULL),(2558,12,13,2,NULL),(2559,18,15,2,NULL),(2560,13,13,2,NULL),(2561,21,15,2,NULL),(2562,15,13,2,NULL),(2563,22,15,2,NULL),(2564,17,13,2,NULL),(2565,25,15,2,NULL),(2566,18,13,2,NULL),(2567,12,35,2,NULL),(2568,21,13,2,NULL),(2569,13,35,2,NULL),(2570,22,13,2,NULL),(2571,15,35,2,NULL),(2572,25,13,2,NULL),(2573,17,35,2,NULL),(2574,18,35,2,NULL),(2575,12,16,2,NULL),(2576,21,35,2,NULL),(2577,13,16,2,NULL),(2578,22,35,2,NULL),(2579,15,16,2,NULL),(2580,25,35,2,NULL),(2581,17,16,2,NULL),(2582,12,36,2,NULL),(2583,18,16,2,NULL),(2584,13,36,2,NULL),(2585,21,16,2,NULL),(2586,15,36,2,NULL),(2587,22,16,2,NULL),(2588,17,36,2,NULL),(2589,25,16,2,NULL),(2590,18,36,2,NULL),(2591,21,36,2,NULL),(2592,9,8,2,NULL),(2593,22,36,2,NULL),(2594,9,16,2,NULL),(2595,25,36,2,NULL),(2596,9,33,2,NULL),(2597,12,38,2,NULL),(2598,12,18,2,NULL),(2599,13,38,2,NULL),(2600,13,18,2,NULL),(2601,15,38,2,NULL),(2602,15,18,2,NULL),(2603,17,38,2,NULL),(2604,17,18,2,NULL),(2605,18,38,2,NULL),(2606,18,18,2,NULL),(2607,21,38,2,NULL),(2608,21,18,2,NULL),(2609,22,38,2,NULL),(2610,22,18,2,NULL),(2611,25,38,2,NULL),(2612,25,18,2,NULL),(2613,12,39,2,NULL),(2614,12,42,2,NULL),(2615,13,39,2,NULL),(2616,13,42,2,NULL),(2617,15,39,2,NULL),(2618,15,42,2,NULL),(2619,17,39,2,NULL),(2620,17,42,2,NULL),(2621,18,39,2,NULL),(2622,18,42,2,NULL),(2623,21,39,2,NULL),(2624,21,42,2,NULL),(2625,22,39,2,NULL),(2626,22,42,2,NULL),(2627,25,39,2,NULL),(2628,25,42,2,NULL),(2629,12,40,2,NULL),(2630,13,40,2,NULL),(2631,12,43,2,NULL),(2632,15,40,2,NULL),(2633,13,43,2,NULL),(2634,17,40,2,NULL),(2635,15,43,2,NULL),(2636,18,40,2,NULL),(2637,17,43,2,NULL),(2638,21,40,2,NULL),(2639,18,43,2,NULL),(2640,22,40,2,NULL),(2641,21,43,2,NULL),(2642,25,40,2,NULL),(2643,22,43,2,NULL),(2644,25,43,2,NULL),(2645,12,45,2,NULL),(2646,13,45,2,NULL),(2647,15,45,2,NULL),(2648,17,45,2,NULL),(2649,18,45,2,NULL),(2650,21,45,2,NULL),(2651,22,45,2,NULL),(2652,25,45,2,NULL),(2653,12,62,2,NULL),(2654,13,62,2,NULL),(2655,15,62,2,NULL),(2656,17,62,2,NULL),(2657,18,62,2,NULL),(2658,21,62,2,NULL),(2659,22,62,2,NULL),(2660,25,62,2,NULL),(2661,35,5,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProviderLinks`
--

LOCK TABLES `ProviderLinks` WRITE;
/*!40000 ALTER TABLE `ProviderLinks` DISABLE KEYS */;
INSERT INTO `ProviderLinks` VALUES (1,17,27,NULL),(2,24,27,NULL),(3,50,27,NULL),(4,25,27,NULL),(5,51,27,NULL);
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

-- Dump completed on 2015-10-12  3:30:45
