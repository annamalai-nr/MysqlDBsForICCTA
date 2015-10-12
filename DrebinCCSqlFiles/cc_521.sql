-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_521
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
INSERT INTO `ActionStrings` VALUES (31,'SMS_SEND_ACTIOIN'),(6,'android.intent.action.BOOT_COMPLETED'),(34,'android.intent.action.CHOOSER'),(30,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(12,'android.intent.action.PACKAGE_ADDED'),(26,'android.intent.action.PACKAGE_CHANGED'),(27,'android.intent.action.PACKAGE_REMOVED'),(36,'android.intent.action.SCREEN_OFF'),(37,'android.intent.action.SCREEN_ON'),(7,'android.intent.action.SET_WALLPAPER'),(21,'android.intent.action.VIEW'),(33,'android.intent.action.WALLPAPER_CHANGED'),(32,'android.net.conn.CONNECTIVITY_CHANGE'),(25,'android.provider.Telephony.SMS_RECEIVED'),(22,'android.provider.Telephony.WAP_PUSH_RECEIVED'),(35,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(24,'android.settings.WIRELESS_SETTINGS'),(29,'com.android.contacts.action.FILTER_CONTACTS'),(8,'com.android.launcher.action.INSTALL_SHORTCUT'),(9,'com.android.launcher.action.UNINSTALL_SHORTCUT'),(15,'com.jx.Action_CopyResError'),(17,'com.jx.MainActivity.CostInfo'),(16,'com.jx.MainActivity.ErrorInfo'),(10,'com.jx.MainActivity.InstallConfirmInfo'),(11,'com.jx.MainActivity.OpenLWP'),(14,'com.jx.MainActivity.RepeateInstall'),(13,'com.jx.MainActivity.SaveID'),(20,'com.jx.action.ExitBootReceiver'),(19,'com.jx.ad.ADService.ConfirmInstallInfo'),(4,'com.jx.ad.ADService.Init'),(23,'com.jx.ad.ADService.InitHasUpdate'),(18,'com.jx.ad.ADService.InstallRes'),(2,'com.jx.ad.ADService.Run'),(3,'com.jx.ad.ADService.RunCancel'),(28,'com.jx.ad.BootSmsReceiverService.Exit'),(5,'com.jx.ad.BootSmsReceiverService.Start');
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
INSERT INTO `Applications` VALUES (1,'com.jx.theme.n551336823',1),(2,'com.jx.theme.n1168570997',1),(3,'com.km.launcher',1),(4,'com.km.launcher',NULL),(5,'com.jx.theme.n1829295825',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.jx.MainActivity'),(2,1,'com.jx.SettingActivity'),(3,1,'com.jx.WelcomeActivity'),(4,2,'com.jx.MainActivity'),(5,1,'com.jx.ad.AndroidThemeService'),(6,2,'com.jx.SettingActivity'),(7,2,'com.jx.WelcomeActivity'),(8,2,'com.jx.ad.AndroidThemeService'),(9,2,'com.jx.ad.BootSmsReceiverService'),(10,2,'com.jx.ad.BootReceiver'),(11,3,'com.km.launcher.Launcher'),(12,4,'com.km.launcher.Launcher'),(13,3,'com.km.launcher.WallpaperChooser'),(14,4,'com.km.launcher.WallpaperChooser'),(15,3,'com.km.theme.ThemeListActivity'),(16,3,'com.km.charge.MainActivity'),(17,4,'com.km.theme.ThemeListActivity'),(18,3,'com.km.ad.AdService'),(19,4,'com.km.charge.MainActivity'),(20,3,'com.km.charge.CycleService'),(21,4,'com.km.launcher.InstallShortcutReceiver'),(22,3,'com.km.launcher.InstallShortcutReceiver'),(23,3,'com.km.launcher.UninstallShortcutReceiver'),(24,4,'com.km.launcher.UninstallShortcutReceiver'),(25,4,'com.km.launcher.LauncherProvider'),(26,3,'com.km.charge.BootReceiver'),(27,3,'com.km.launcher.LauncherProvider'),(28,5,'com.jx.MainActivity'),(29,5,'com.jx.SettingActivity'),(30,5,'com.jx.WelcomeActivity'),(31,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(32,5,'com.jx.ad.AndroidThemeService'),(33,5,'com.jx.ad.BootSmsReceiverService'),(34,5,'com.jx.ad.BootReceiver'),(35,1,'com.jx.ad.AndroidThemeService$8'),(36,1,'com.jx.MainActivity$ControlReceiver'),(37,1,'com.jx.ad.ServiceControlReciver'),(38,1,'com.jx.ad.AndroidThemeService$6'),(39,1,'com.jx.MainActivity$4'),(40,1,'com.jx.MainActivity$1'),(41,1,'com.jx.ad.AndroidThemeService$MMSReceiver'),(42,2,'com.jx.MainActivity$1'),(43,2,'com.jx.MainActivity$4'),(44,2,'com.jx.ad.AndroidThemeService$3'),(45,1,'com.jx.tool.ApnManager'),(46,2,'com.jx.ad.AndroidThemeService$7'),(47,1,'com.jx.ad.AndroidThemeService$4'),(48,2,'com.jx.tool.ApnManager'),(49,1,'com.jx.ad.AndroidThemeService$3'),(50,2,'com.jx.tool.Utility'),(51,2,'com.jx.ad.AndroidThemeService$6'),(52,2,'com.jx.ad.AndroidThemeService$4'),(53,1,'com.jx.ad.AndroidThemeService$2'),(54,5,'com.jx.MainActivity$ControlReceiver'),(55,2,'com.jx.MainActivity$ControlReceiver$1'),(56,1,'com.jx.ad.AndroidThemeService$5'),(57,5,'com.jx.SettingActivity$6'),(58,2,'com.jx.ad.AndroidThemeService$SmsReceiver'),(59,5,'com.jx.MainActivity$4'),(60,4,'com.km.charge.HoldMessage'),(61,1,'com.jx.MainActivity$ControlReceiver$6$1'),(62,4,'com.km.launcher.MyAnalogClock$1'),(63,5,'com.jx.ad.AndroidThemeService$4'),(64,4,'com.km.launcher.Launcher$WallpaperIntentReceiver'),(65,3,'com.km.tool.Util'),(66,4,'com.km.charge.SendMessage$SendMessageReceiver'),(67,4,'com.km.charge.HttpBox$ConnectivityReceiver'),(68,1,'com.jx.ad.AndroidThemeService$SmsReceiver'),(69,4,'com.km.tool.Http$ConnectivityReceiver'),(70,3,'com.km.theme.ThemeManager'),(71,4,'com.km.launcher.Launcher$ApplicationsIntentReceiver'),(72,1,'com.jx.MainActivity$ControlReceiver$1'),(73,5,'com.jx.tool.ApnManager'),(74,2,'com.jx.ad.AndroidThemeService$5'),(75,3,'com.km.charge.HoldMessage'),(76,5,'com.jx.ad.AndroidThemeService$2'),(77,4,'com.km.launcher.LauncherModel'),(78,3,'com.km.launcher.MyAnalogClock$1'),(79,3,'com.km.launcher.Launcher$WallpaperIntentReceiver'),(80,4,'com.km.tool.ApnManager'),(81,5,'com.jx.ad.AndroidThemeService$3'),(82,1,'com.jx.ad.AndroidThemeService$7'),(83,2,'com.jx.ad.AndroidThemeService$2'),(84,3,'com.km.charge.SendMessage$SendMessageReceiver'),(85,5,'com.jx.ad.AndroidThemeService$6'),(86,2,'com.jx.MainActivity$ControlReceiver$6$1'),(87,3,'com.km.charge.HttpBox$ConnectivityReceiver'),(88,3,'com.km.tool.Http$ConnectivityReceiver'),(89,1,'com.jx.SettingActivity$1'),(90,2,'com.jx.MainActivity$ControlReceiver'),(91,3,'com.km.launcher.Launcher$ApplicationsIntentReceiver'),(92,2,'com.jx.ad.AndroidThemeService$8'),(93,3,'com.km.launcher.Search'),(94,2,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(95,4,'com.km.launcher.Search'),(96,2,'com.jx.SettingActivity$6'),(97,3,'com.km.tool.ApnManager'),(98,1,'com.jx.tool.Utility'),(99,3,'com.km.launcher.LauncherModel'),(100,4,'com.km.theme.ThemeManager'),(101,5,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(102,3,'com.km.ad.AdService$1'),(103,1,'com.jx.SettingActivity$6'),(104,2,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(105,2,'com.jx.ad.ServiceControlReciver'),(106,5,'com.jx.ad.AndroidThemeService$8'),(107,5,'com.adwo.adsdk.M'),(108,2,'com.jx.SettingActivity$1'),(109,5,'com.jx.tool.Utility'),(110,5,'com.jx.ad.AndroidThemeService$7'),(111,2,'com.jx.ad.AndroidThemeService$MMSReceiver'),(112,5,'com.jx.SettingActivity$1'),(113,5,'com.jx.MainActivity$ControlReceiver$1'),(114,5,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(115,5,'com.jx.MainActivity$1'),(116,5,'com.jx.ad.AndroidThemeService$SmsReceiver'),(117,5,'com.jx.ad.ServiceControlReciver'),(118,5,'com.jx.ad.AndroidThemeService$5'),(119,5,'com.jx.ad.AndroidThemeService$MMSReceiver'),(120,5,'com.jx.MainActivity$ControlReceiver$6$1');
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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,5,'respid'),(2,8,'respid'),(3,31,'url'),(4,12,'launcher.add_cellY'),(5,22,'android.intent.extra.shortcut.INTENT'),(6,15,'launcher.user_folder'),(7,16,'launcher.user_folder'),(8,11,'launcher.user_folder'),(9,11,'data'),(10,22,'android.intent.extra.shortcut.ICON_RESOURCE'),(11,11,'android.intent.extra.shortcut.ICON_RESOURCE'),(12,23,'android.intent.extra.shortcut.INTENT'),(13,31,'overlayTransition'),(14,11,'android.intent.extra.shortcut.INTENT'),(15,21,'android.intent.extra.shortcut.ICON'),(16,12,'android.intent.extra.shortcut.ICON'),(17,12,'launcher.add_occupied_cells'),(18,24,'android.intent.extra.shortcut.INTENT'),(19,12,'android.intent.extra.livefolder.BASE_INTENT'),(20,12,'launcher.add_countX'),(21,17,'launcher.user_folder'),(22,19,'launcher.user_folder'),(23,12,'launcher.user_folder'),(24,12,'launcher.current_screen'),(25,21,'android.intent.extra.shortcut.NAME'),(26,12,'data'),(27,12,'android.intent.extra.livefolder.NAME'),(28,31,'overlayTitle'),(29,31,'shouldResizeOverlay'),(30,15,'launcher.all_apps_folder'),(31,16,'launcher.all_apps_folder'),(32,11,'launcher.all_apps_folder'),(33,31,'shouldMakeOverlayTransparent'),(34,21,'duplicate'),(35,11,'launcher.add_countY'),(36,23,'duplicate'),(37,11,'launcher.add_cellY'),(38,12,'launcher.rename_folder'),(39,12,'launcher.add_screen'),(40,21,'android.intent.extra.shortcut.INTENT'),(41,5,'resownerid'),(42,11,'launcher.add_screen'),(43,23,'android.intent.extra.shortcut.NAME'),(44,24,'duplicate'),(45,22,'android.intent.extra.shortcut.NAME'),(46,12,'android.intent.extra.shortcut.INTENT'),(47,11,'launcher.add_occupied_cells'),(48,21,'android.intent.extra.shortcut.ICON_RESOURCE'),(49,12,'android.intent.extra.shortcut.ICON_RESOURCE'),(50,11,'launcher.add_spanY'),(51,22,'android.intent.extra.shortcut.ICON'),(52,11,'android.intent.extra.shortcut.ICON'),(53,12,'launcher.add_spanY'),(54,12,'launcher.add_countY'),(55,17,'launcher.all_apps_folder'),(56,19,'launcher.all_apps_folder'),(57,12,'launcher.all_apps_folder'),(58,24,'android.intent.extra.shortcut.NAME'),(59,11,'android.intent.extra.livefolder.NAME'),(60,12,'android.intent.extra.shortcut.NAME'),(61,11,'launcher.add_cellX'),(62,11,'launcher.add_spanX'),(63,12,'android.intent.extra.livefolder.ICON'),(64,12,'launcher.add_spanX'),(65,12,'launcher.rename_folder_id'),(66,12,'launcher.add_cellX'),(67,11,'launcher.add_countX'),(68,11,'android.intent.extra.shortcut.NAME'),(69,11,'android.intent.extra.livefolder.BASE_INTENT'),(70,11,'launcher.current_screen'),(71,8,'resownerid'),(72,32,'resownerid'),(73,11,'launcher.rename_folder_id'),(74,22,'duplicate'),(75,11,'launcher.rename_folder'),(76,11,'android.intent.extra.livefolder.ICON'),(77,31,'shouldEnableBottomBar'),(78,31,'shouldShowBottomBar'),(79,32,'respid'),(80,31,'transitionTime'),(81,31,'shouldShowTitlebar');
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
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'s',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'s',1,NULL,NULL),(9,9,'s',1,NULL,NULL),(10,10,'r',1,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'s',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'s',0,NULL,NULL),(21,21,'r',1,26,NULL),(22,22,'r',1,26,NULL),(23,23,'r',1,27,NULL),(24,24,'r',1,27,NULL),(25,25,'p',0,NULL,NULL),(26,26,'r',1,NULL,NULL),(27,27,'p',0,NULL,NULL),(28,28,'a',1,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'s',1,NULL,NULL),(33,33,'s',1,NULL,NULL),(34,34,'r',1,NULL,NULL),(35,36,'r',1,NULL,NULL),(36,37,'r',1,NULL,NULL),(37,41,'r',1,NULL,NULL),(38,54,'r',1,NULL,NULL),(39,58,'r',1,NULL,NULL),(40,21,'r',1,NULL,NULL),(41,24,'r',1,NULL,NULL),(42,60,'r',1,NULL,NULL),(43,62,'r',1,NULL,NULL),(44,64,'r',1,NULL,NULL),(45,66,'r',1,NULL,NULL),(46,67,'r',1,NULL,NULL),(47,68,'r',1,NULL,NULL),(48,69,'r',1,NULL,NULL),(49,71,'r',1,NULL,NULL),(50,22,'r',1,NULL,NULL),(51,23,'r',1,NULL,NULL),(52,75,'r',1,NULL,NULL),(53,78,'r',1,NULL,NULL),(54,79,'r',1,NULL,NULL),(55,84,'r',1,NULL,NULL),(56,87,'r',1,NULL,NULL),(57,88,'r',1,NULL,NULL),(58,90,'r',1,NULL,NULL),(59,91,'r',1,NULL,NULL),(60,94,'r',1,NULL,NULL),(61,101,'r',1,NULL,NULL),(62,104,'r',1,NULL,NULL),(63,105,'r',1,NULL,NULL),(64,107,'r',1,NULL,NULL),(65,111,'r',1,NULL,NULL),(66,114,'r',1,NULL,NULL),(67,116,'r',1,NULL,NULL),(68,117,'r',1,NULL,NULL),(69,119,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=257 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,5),(2,2,1),(3,3,1),(4,4,5),(5,5,1),(6,5,3),(7,5,2),(8,6,3),(9,6,2),(10,6,1),(11,7,5),(12,8,4),(13,9,5),(14,10,7),(15,10,6),(16,10,4),(17,11,5),(18,12,4),(19,12,6),(20,12,7),(21,13,5),(22,14,8),(23,15,5),(24,16,8),(25,17,5),(26,18,8),(27,19,5),(28,20,8),(29,21,7),(30,21,6),(31,21,8),(32,22,5),(33,23,8),(34,24,5),(35,25,8),(36,26,5),(37,27,28),(38,28,7),(39,28,4),(40,28,6),(41,29,5),(42,30,28),(43,30,30),(44,30,29),(45,31,5),(46,32,8),(47,33,30),(48,33,28),(49,33,29),(50,34,5),(51,35,8),(52,36,29),(53,37,3),(54,37,2),(55,37,1),(56,38,4),(57,39,32),(58,41,5),(59,40,8),(60,42,11),(61,42,26),(62,43,1),(63,44,30),(64,45,4),(65,46,5),(66,47,8),(67,49,5),(68,48,11),(69,48,15),(70,50,8),(71,51,1),(72,51,2),(73,51,3),(74,52,22),(75,53,8),(76,54,12),(77,54,19),(78,55,32),(79,56,5),(80,57,8),(81,58,5),(82,59,32),(83,60,8),(84,61,32),(85,63,1),(86,62,17),(87,62,12),(88,64,8),(89,65,5),(90,66,19),(91,66,17),(92,67,32),(93,68,5),(94,69,8),(95,70,24),(96,71,32),(97,72,5),(98,73,32),(99,74,4),(100,74,7),(101,74,6),(102,75,17),(103,75,19),(104,76,34),(105,77,3),(106,77,2),(107,77,1),(108,78,12),(109,79,19),(110,79,17),(111,80,8),(112,81,2),(113,81,3),(114,81,1),(115,82,28),(116,83,21),(117,84,32),(118,85,16),(119,85,11),(120,86,19),(121,86,12),(122,87,4),(123,87,7),(124,87,6),(125,88,28),(126,88,30),(127,88,29),(128,89,4),(129,89,7),(130,89,6),(131,90,25),(132,91,15),(133,91,16),(134,92,2),(135,92,5),(136,92,3),(137,93,12),(138,94,22),(139,95,12),(140,95,17),(141,96,11),(142,96,16),(143,97,3),(144,97,2),(145,97,1),(146,98,24),(147,99,23),(148,100,32),(149,101,15),(150,101,16),(151,102,12),(152,103,11),(153,103,16),(154,104,32),(155,105,19),(156,105,12),(157,106,28),(158,106,30),(159,106,29),(160,107,15),(161,107,16),(162,108,12),(163,109,11),(164,110,24),(165,111,16),(166,111,15),(167,112,19),(168,112,17),(169,113,15),(170,113,11),(171,114,17),(172,114,19),(173,115,15),(174,115,16),(175,116,17),(176,116,19),(177,117,16),(178,117,15),(179,118,4),(180,119,16),(181,119,15),(182,120,8),(183,121,12),(184,122,11),(185,123,16),(186,123,15),(187,124,3),(188,124,1),(189,124,2),(190,125,8),(191,126,27),(192,127,11),(193,128,2),(194,129,3),(195,129,2),(196,130,8),(197,131,32),(198,132,6),(199,132,7),(200,133,17),(201,133,19),(202,134,8),(203,135,21),(204,135,12),(205,136,29),(206,136,30),(207,137,19),(208,137,17),(209,138,7),(210,138,6),(211,138,4),(212,139,11),(213,140,32),(214,141,21),(215,142,10),(216,143,23),(217,144,30),(218,144,29),(219,144,32),(220,145,6),(221,146,23),(222,147,32),(223,148,22),(224,148,11),(225,149,8),(226,150,32),(227,151,11),(228,152,28),(229,152,30),(230,152,29),(231,153,4),(232,153,7),(233,153,6),(234,154,15),(235,154,16),(236,155,30),(237,155,28),(238,155,29),(239,156,28),(240,157,32),(241,158,8),(242,159,28),(243,159,29),(244,159,30),(245,160,32),(246,161,32),(247,162,32),(248,163,32),(249,164,32),(250,165,30),(251,165,29),(252,165,28),(253,166,32),(254,167,32),(255,168,28),(256,169,32);
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
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,35,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(2,1,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(3,1,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(4,38,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(5,39,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(6,40,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(7,5,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(8,4,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(9,38,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(10,42,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(11,5,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(12,43,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(13,35,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(14,44,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(15,45,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(16,46,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(17,47,'<com.jx.ad.AndroidThemeService$4: void run()>',120,'r',NULL),(18,48,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(19,49,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(20,48,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(21,50,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(22,47,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(23,51,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(24,38,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(25,52,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(26,53,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(27,28,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(28,55,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(29,56,'<com.jx.ad.AndroidThemeService$5: void run()>',113,'r',NULL),(30,57,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(31,38,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(32,44,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(33,59,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(34,53,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(35,51,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(36,29,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(37,61,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(38,4,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(39,63,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(40,51,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(41,45,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(42,65,'<com.km.tool.Util: void startServiceWithSingleMode(android.content.Context,java.lang.Class)>',7,'s',NULL),(43,1,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(44,30,'<com.jx.WelcomeActivity: void onResume()>',67,'a',NULL),(45,4,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(46,45,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(47,52,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(48,70,'<com.km.theme.ThemeManager: void setup()>',32,'a',NULL),(49,49,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(50,48,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(51,72,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(52,22,'<com.km.launcher.InstallShortcutReceiver: boolean findEmptyCell(android.content.Context,int[],int)>',19,'p',NULL),(53,8,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(54,12,'<com.km.launcher.Launcher: boolean onKeyDown(int,android.view.KeyEvent)>',27,'a',NULL),(55,63,'<com.jx.ad.AndroidThemeService$4: void run()>',125,'r',NULL),(56,47,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(57,48,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(58,56,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(59,73,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(60,74,'<com.jx.ad.AndroidThemeService$5: void run()>',113,'r',NULL),(61,76,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(62,77,'<com.km.launcher.LauncherModel: void updateItemInDatabase(android.content.Context,com.km.launcher.ItemInfo)>',8,'p',NULL),(63,1,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(64,52,'<com.jx.ad.AndroidThemeService$4: void run()>',120,'r',NULL),(65,45,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(66,80,'<com.km.tool.ApnManager: int CreateGPRSApn()>',27,'p',NULL),(67,81,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(68,82,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(69,83,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(70,24,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',25,'p',NULL),(71,73,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(72,53,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(73,85,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(74,86,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(75,80,'<com.km.tool.ApnManager: int CreateGPRSApn()>',30,'p',0),(76,34,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(77,89,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(78,77,'<com.km.launcher.LauncherModel: com.km.launcher.Widget getPhotoFrameInfo(android.content.Context,int,int,int)>',15,'p',NULL),(79,80,'<com.km.tool.ApnManager: int CreateWapApn()>',27,'p',NULL),(80,92,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(81,1,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(82,28,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(83,21,'<com.km.launcher.InstallShortcutReceiver: boolean findEmptyCell(android.content.Context,int[],int)>',19,'p',NULL),(84,76,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(85,93,'<com.km.launcher.Search: void sendLaunchIntent(java.lang.String,android.net.Uri,java.lang.String,android.os.Bundle,int,java.lang.String,android.server.search.SearchableInfo)>',20,'a',NULL),(86,95,'<com.km.launcher.Search: void sendLaunchIntent(java.lang.String,android.net.Uri,java.lang.String,android.os.Bundle,int,java.lang.String,android.server.search.SearchableInfo)>',20,'a',NULL),(87,96,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(88,28,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(89,4,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(90,25,'<com.km.launcher.LauncherProvider: void sendNotify(android.net.Uri)>',9,'p',0),(91,97,'<com.km.tool.ApnManager: int CreateGPRSApn()>',27,'p',NULL),(92,98,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(93,12,'<com.km.launcher.Launcher: void registerContentObservers()>',4,'p',NULL),(94,99,'<com.km.launcher.LauncherModel: boolean shortcutExists(android.content.Context,java.lang.String,android.content.Intent)>',12,'p',NULL),(95,100,'<com.km.theme.ThemeManager: void setup()>',32,'a',NULL),(96,11,'<com.km.launcher.Launcher: void startActivitySafely(android.content.Intent)>',3,'a',0),(97,1,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(98,24,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'p',NULL),(99,23,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'p',NULL),(100,32,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(101,97,'<com.km.tool.ApnManager: void delete(int)>',8,'p',NULL),(102,77,'<com.km.launcher.LauncherModel: com.km.launcher.FolderInfo getFolderById(android.content.Context,long)>',12,'p',NULL),(103,11,'<com.km.launcher.Launcher: boolean onKeyDown(int,android.view.KeyEvent)>',27,'a',NULL),(104,85,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(105,12,'<com.km.launcher.Launcher: void startActivitySafely(android.content.Intent)>',3,'a',0),(106,28,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(107,97,'<com.km.tool.ApnManager: int CreateWapApn()>',27,'p',NULL),(108,12,'<com.km.launcher.Launcher: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(109,99,'<com.km.launcher.LauncherModel: com.km.launcher.FolderInfo getFolderById(android.content.Context,long)>',12,'p',NULL),(110,24,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'p',NULL),(111,97,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',9,'p',NULL),(112,80,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',9,'p',NULL),(113,99,'<com.km.launcher.LauncherModel: void updateItemInDatabase(android.content.Context,com.km.launcher.ItemInfo)>',8,'p',NULL),(114,80,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',19,'p',NULL),(115,97,'<com.km.tool.ApnManager: int CreateWapApn()>',30,'p',0),(116,80,'<com.km.tool.ApnManager: int getApnId(java.lang.String)>',6,'p',NULL),(117,102,'<com.km.ad.AdService$1: void run()>',11,'s',NULL),(118,4,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(119,97,'<com.km.tool.ApnManager: int CreateGPRSApn()>',30,'p',0),(120,83,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(121,12,'<com.km.launcher.Launcher: void startWallpaper()>',5,'a',NULL),(122,11,'<com.km.launcher.Launcher: void registerContentObservers()>',4,'p',NULL),(123,97,'<com.km.tool.ApnManager: int getApnId(java.lang.String)>',6,'p',NULL),(124,103,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(125,8,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(126,27,'<com.km.launcher.LauncherProvider: void sendNotify(android.net.Uri)>',9,'p',0),(127,11,'<com.km.launcher.Launcher: void startWallpaper()>',5,'a',NULL),(128,2,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(129,3,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(130,51,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(131,106,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(132,7,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(133,80,'<com.km.tool.ApnManager: void delete(int)>',8,'p',NULL),(134,74,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(135,77,'<com.km.launcher.LauncherModel: void addItemToDatabase(android.content.Context,com.km.launcher.ItemInfo,long,int,int,int,boolean)>',17,'p',NULL),(136,30,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(137,80,'<com.km.tool.ApnManager: int CreateWapApn()>',30,'p',0),(138,108,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(139,11,'<com.km.launcher.Launcher: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(140,81,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(141,77,'<com.km.launcher.LauncherModel: boolean shortcutExists(android.content.Context,java.lang.String,android.content.Intent)>',12,'p',NULL),(142,10,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(143,23,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',25,'p',NULL),(144,109,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(145,6,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(146,23,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'p',NULL),(147,110,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(148,99,'<com.km.launcher.LauncherModel: void addItemToDatabase(android.content.Context,com.km.launcher.ItemInfo,long,int,int,int,boolean)>',17,'p',NULL),(149,92,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(150,73,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(151,99,'<com.km.launcher.LauncherModel: com.km.launcher.Widget getPhotoFrameInfo(android.content.Context,int,int,int)>',15,'p',NULL),(152,112,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(153,4,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(154,97,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',19,'p',NULL),(155,113,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(156,28,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(157,32,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(158,83,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(159,115,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(160,85,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(161,118,'<com.jx.ad.AndroidThemeService$5: void run()>',116,'r',NULL),(162,73,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(163,106,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(164,63,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(165,120,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(166,85,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(167,76,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(168,28,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(169,118,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,10),(2,3,20),(3,4,16),(4,5,21),(5,6,21),(6,7,17),(7,9,16),(8,10,21),(9,11,13),(10,12,21),(11,13,16),(12,14,16),(13,15,16),(14,16,16),(15,17,16),(16,19,23),(17,20,17),(18,21,16),(19,22,23),(20,23,16),(21,24,20),(22,25,24),(23,26,16),(24,27,21),(25,28,17),(26,29,21),(27,30,28),(28,31,16),(29,32,16),(30,33,1),(31,34,15),(32,35,20),(33,36,23),(34,37,16),(35,39,28),(36,41,28),(37,46,28),(38,48,24),(39,49,17),(40,50,29),(41,51,16),(42,53,30),(43,54,16),(44,55,16),(45,56,16),(46,58,16),(47,59,28),(48,60,16),(49,61,16),(50,62,16),(51,63,16),(52,64,15),(53,65,5),(54,66,21),(55,68,19),(56,67,16),(57,69,28),(58,70,2),(59,71,16),(60,72,21),(61,74,4),(62,73,21),(63,75,21),(64,76,21),(65,77,21),(66,78,3),(67,79,19),(68,80,18),(69,81,2),(70,82,3),(71,83,4),(72,85,18),(73,86,3),(74,88,2),(75,89,18),(76,90,18),(77,91,13),(78,92,2),(79,93,2),(80,94,4),(81,95,2),(82,96,29),(83,97,16),(84,98,30),(85,99,4),(86,100,19),(87,101,18),(88,102,18),(89,103,3),(90,105,2),(91,106,3),(92,107,19),(93,108,4),(94,109,4),(95,110,3),(96,111,19),(97,112,18),(98,113,19),(99,115,3),(100,116,4),(101,118,19),(102,119,19),(103,120,16),(104,121,34),(105,122,4),(106,123,34),(107,124,21),(108,125,18),(109,126,34),(110,127,13),(111,128,34),(112,129,34),(113,130,3),(114,131,1),(115,132,34),(116,133,34),(117,134,34),(118,135,34),(119,136,2),(120,137,34),(121,138,34),(122,139,35),(123,140,16),(124,141,34),(125,142,34),(126,143,16),(127,144,34),(128,145,35),(129,146,34),(130,147,16),(131,148,34),(132,149,35),(133,150,21),(134,152,16),(135,153,5),(136,155,1),(137,156,16),(138,157,10),(139,158,21),(140,159,19),(141,160,2),(142,161,24),(143,162,4),(144,164,3),(145,165,18),(146,166,17),(147,167,16),(148,168,21),(149,169,17),(150,170,16),(151,171,10),(152,173,15),(153,174,16),(154,175,16),(155,177,16);
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
INSERT INTO `ICategories` VALUES (1,33,1),(2,131,1),(3,139,2),(4,145,2),(5,149,2),(6,155,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'com/jx/WelcomeActivity'),(2,8,'com/jx/WelcomeActivity'),(3,18,'com.android.packageinstaller.PackageInstallerActivity'),(4,33,'com.nd.android.launcher.Launcher'),(5,38,'com/km/charge/CycleService'),(6,40,'.Launcher'),(7,42,'(.*).Launcher'),(8,43,'com.android.packageinstaller.PackageInstallerActivity'),(9,44,'(.*).Launcher'),(10,45,'com/km/charge/MainActivity'),(11,47,'.Launcher'),(12,52,'com.android.packageinstaller.PackageInstallerActivity'),(13,57,'com/jx/WelcomeActivity'),(14,65,'com/jx/ad/BootSmsReceiverService'),(15,82,'com/jx/ad/AndroidThemeService'),(16,84,'com.android.packageinstaller.PackageInstallerActivity'),(17,87,'com/km/charge/MainActivity'),(18,88,'com/jx/ad/AndroidThemeService'),(19,93,'com/jx/ad/AndroidThemeService'),(20,94,'com/jx/ad/AndroidThemeService'),(21,99,'com/jx/ad/AndroidThemeService'),(22,100,'com/jx/ad/AndroidThemeService'),(23,104,'com/km/theme/ThemeListActivity'),(24,102,'com/jx/ad/AndroidThemeService'),(25,106,'com/jx/ad/AndroidThemeService'),(26,108,'com/jx/ad/AndroidThemeService'),(27,111,'com/jx/ad/AndroidThemeService'),(28,112,'com/jx/ad/AndroidThemeService'),(29,114,'com/km/ad/AdService'),(30,117,'com/jx/WelcomeActivity'),(31,119,'com/jx/ad/AndroidThemeService'),(32,125,'com/jx/ad/AndroidThemeService'),(33,131,'com.nd.android.launcher.Launcher'),(34,130,'com/jx/ad/AndroidThemeService'),(35,136,'com/jx/ad/AndroidThemeService'),(36,151,'com/km/theme/ThemeListActivity'),(37,153,'com/jx/ad/BootSmsReceiverService'),(38,154,'com.android.packageinstaller.PackageInstallerActivity'),(39,155,'com.nd.android.launcher.Launcher'),(40,163,'com/jx/WelcomeActivity'),(41,172,'com.android.packageinstaller.PackageInstallerActivity'),(42,176,'com/jx/WelcomeActivity');
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
INSERT INTO `IData` VALUES (1,1,1),(2,4,2),(3,5,3),(4,6,4),(5,7,5),(6,9,6),(7,10,7),(8,11,8),(9,12,9),(10,13,10),(11,14,11),(12,15,13),(13,16,14),(14,17,16),(15,18,17),(16,20,18),(17,21,19),(18,23,20),(19,26,21),(20,27,22),(21,28,23),(22,29,24),(23,31,25),(24,32,26),(25,34,27),(26,37,29),(27,43,31),(28,49,34),(29,52,35),(30,51,36),(31,53,38),(32,54,40),(33,55,41),(34,56,43),(35,58,44),(36,60,47),(37,61,49),(38,62,50),(39,63,51),(40,64,52),(41,66,54),(42,67,57),(43,72,58),(44,71,59),(45,73,60),(46,75,61),(47,76,62),(48,77,63),(49,84,66),(50,91,70),(51,98,73),(52,97,74),(53,120,84),(54,124,86),(55,127,87),(56,140,88),(57,143,89),(58,147,93),(59,150,94),(60,152,95),(61,154,98),(62,156,101),(63,157,103),(64,158,106),(65,166,108),(66,167,109),(67,168,110),(68,169,111),(69,170,112),(70,171,113),(71,172,114),(72,173,115),(73,174,116),(74,175,117),(75,177,118);
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
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,4,'CostTips'),(2,7,'CostTips'),(3,9,'CostTips'),(4,11,'respid'),(5,13,'CostTips'),(6,14,'CostTips'),(7,15,'CostTips'),(8,16,'CostTips'),(9,17,'CostTips'),(10,19,'resownerid'),(11,19,'respid'),(12,20,'CostTips'),(13,21,'CostTips'),(14,22,'resownerid'),(15,22,'respid'),(16,23,'CostTips'),(17,26,'CostTips'),(18,28,'CostTips'),(19,31,'CostTips'),(20,32,'CostTips'),(21,33,'from'),(22,36,'resownerid'),(23,36,'respid'),(24,37,'CostTips'),(25,40,'startother'),(26,42,'startother'),(27,44,'startother'),(28,47,'startother'),(29,49,'CostTips'),(30,50,'com.android.contacts.extra.FILTER_TEXT'),(31,51,'CostTips'),(32,54,'CostTips'),(33,55,'CostTips'),(34,56,'CostTips'),(35,56,'SetNetwork'),(36,58,'CostTips'),(37,60,'CostTips'),(38,61,'CostTips'),(39,62,'CostTips'),(40,62,'SetNetwork'),(41,63,'CostTips'),(42,68,'resownerid'),(43,67,'CostTips'),(44,68,'respid'),(45,70,'resownerid'),(46,70,'respid'),(47,71,'CostTips'),(48,74,'resownerid'),(49,74,'respid'),(50,78,'resownerid'),(51,78,'respid'),(52,79,'resownerid'),(53,79,'respid'),(54,80,'resownerid'),(55,80,'respid'),(56,81,'resownerid'),(57,82,'resownerid'),(58,81,'respid'),(59,82,'respid'),(60,83,'resownerid'),(61,83,'respid'),(62,85,'resownerid'),(63,85,'respid'),(64,86,'resownerid'),(65,86,'respid'),(66,88,'resownerid'),(67,89,'resownerid'),(68,88,'respid'),(69,89,'respid'),(70,90,'resownerid'),(71,90,'respid'),(72,91,'respid'),(73,92,'resownerid'),(74,92,'respid'),(75,93,'resownerid'),(76,93,'respid'),(77,94,'resownerid'),(78,95,'resownerid'),(79,96,'com.android.contacts.extra.FILTER_TEXT'),(80,94,'respid'),(81,95,'respid'),(82,97,'CostTips'),(83,99,'resownerid'),(84,100,'resownerid'),(85,99,'respid'),(86,100,'respid'),(87,101,'resownerid'),(88,102,'resownerid'),(89,101,'respid'),(90,103,'resownerid'),(91,102,'respid'),(92,103,'respid'),(93,105,'resownerid'),(94,105,'respid'),(95,106,'resownerid'),(96,107,'resownerid'),(97,106,'respid'),(98,107,'respid'),(99,108,'resownerid'),(100,108,'respid'),(101,109,'resownerid'),(102,110,'resownerid'),(103,109,'respid'),(104,110,'respid'),(105,111,'resownerid'),(106,112,'resownerid'),(107,111,'respid'),(108,113,'resownerid'),(109,112,'respid'),(110,113,'respid'),(111,115,'resownerid'),(112,116,'resownerid'),(113,115,'respid'),(114,116,'respid'),(115,118,'resownerid'),(116,119,'resownerid'),(117,118,'respid'),(118,119,'respid'),(119,120,'CostTips'),(120,120,'SetNetwork'),(121,121,'android.intent.extra.INTENT'),(122,122,'resownerid'),(123,122,'respid'),(124,123,'android.intent.extra.INTENT'),(125,125,'resownerid'),(126,126,'android.intent.extra.TITLE'),(127,127,'respid'),(128,125,'respid'),(129,126,'android.intent.extra.INTENT'),(130,128,'android.intent.extra.INTENT'),(131,129,'android.intent.extra.INTENT'),(132,130,'resownerid'),(133,131,'from'),(134,130,'respid'),(135,132,'android.intent.extra.TITLE'),(136,133,'android.intent.extra.INTENT'),(137,132,'android.intent.extra.INTENT'),(138,134,'android.intent.extra.TITLE'),(139,135,'android.intent.extra.INTENT'),(140,136,'resownerid'),(141,134,'android.intent.extra.INTENT'),(142,136,'respid'),(143,137,'android.intent.extra.TITLE'),(144,138,'android.intent.extra.INTENT'),(145,137,'android.intent.extra.INTENT'),(146,140,'CostTips'),(147,141,'android.intent.extra.TITLE'),(148,142,'android.intent.extra.TITLE'),(149,141,'android.intent.extra.INTENT'),(150,142,'android.intent.extra.INTENT'),(151,143,'CostTips'),(152,144,'android.intent.extra.INTENT'),(153,146,'android.intent.extra.TITLE'),(154,146,'android.intent.extra.INTENT'),(155,147,'CostTips'),(156,148,'android.intent.extra.TITLE'),(157,148,'android.intent.extra.INTENT'),(158,152,'CostTips'),(159,155,'from'),(160,156,'CostTips'),(161,159,'resownerid'),(162,159,'respid'),(163,160,'resownerid'),(164,160,'respid'),(165,162,'resownerid'),(166,162,'respid'),(167,164,'resownerid'),(168,164,'respid'),(169,165,'resownerid'),(170,165,'respid'),(171,166,'CostTips'),(172,167,'CostTips'),(173,169,'CostTips'),(174,170,'CostTips'),(175,174,'CostTips'),(176,175,'CostTips'),(177,177,'CostTips');
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
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,2),(4,3,3),(5,4,4),(6,5,3),(7,5,2),(8,6,4),(9,7,5),(10,8,6),(11,9,1),(12,10,1),(13,11,7),(14,12,7),(15,13,8),(16,14,8),(17,15,9),(18,16,9),(19,17,6),(20,18,1),(21,19,4),(22,20,2),(23,20,3),(24,21,5),(25,22,6),(26,23,10),(27,23,11),(28,23,12),(29,23,13),(30,23,14),(31,23,15),(32,23,16),(33,23,17),(34,24,4),(35,24,19),(36,24,3),(37,24,2),(38,24,18),(39,25,22),(40,26,11),(41,26,12),(42,26,10),(43,26,15),(44,26,16),(45,26,13),(46,26,14),(47,26,17),(48,27,25),(49,28,26),(50,28,27),(51,28,12),(52,29,27),(53,29,26),(54,29,12),(55,30,26),(56,30,12),(57,30,27),(58,31,12),(59,31,26),(60,31,27),(61,32,12),(62,32,27),(63,32,26),(64,33,26),(65,33,27),(66,33,12),(67,34,26),(68,34,12),(69,34,27),(70,35,25),(71,36,26),(72,36,12),(73,36,27),(74,37,27),(75,37,26),(76,37,12),(77,38,12),(78,38,27),(79,38,26),(80,39,26),(81,39,27),(82,39,12),(83,40,26),(84,40,12),(85,40,27),(86,41,12),(87,41,26),(88,41,27),(89,42,12),(90,42,27),(91,42,26),(92,43,12),(93,43,27),(94,43,26),(95,44,12),(96,44,27),(97,44,26),(98,45,12),(99,45,26),(100,45,27),(101,46,12),(102,46,26),(103,46,27),(104,47,11),(105,47,17),(106,47,10),(107,47,16),(108,47,15),(109,47,13),(110,47,14),(111,47,12),(112,48,26),(113,48,27),(114,48,12),(115,49,28),(116,50,28),(117,51,31),(118,52,32),(119,53,33),(120,54,31),(121,55,25),(122,56,4),(123,56,19),(124,56,3),(125,56,2),(126,56,18),(127,57,37),(128,57,36),(129,58,33),(130,59,22),(131,60,32),(132,61,25),(133,62,25),(134,63,2),(135,63,19),(136,63,3),(137,63,18),(138,63,4),(139,64,22);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,9,1),(4,9,2),(5,9,3),(6,10,3),(7,10,1),(8,10,2),(9,11,2),(10,12,2),(11,18,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,23,'package',NULL,NULL,NULL,NULL,NULL),(2,25,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(3,26,'package',NULL,NULL,NULL,NULL,NULL),(4,28,'package',NULL,NULL,NULL,NULL,NULL),(5,29,'package',NULL,NULL,NULL,NULL,NULL),(6,30,'package',NULL,NULL,NULL,NULL,NULL),(7,31,'package',NULL,NULL,NULL,NULL,NULL),(8,32,'package',NULL,NULL,NULL,NULL,NULL),(9,33,'package',NULL,NULL,NULL,NULL,NULL),(10,34,'package',NULL,NULL,NULL,NULL,NULL),(11,36,'package',NULL,NULL,NULL,NULL,NULL),(12,37,'package',NULL,NULL,NULL,NULL,NULL),(13,38,'package',NULL,NULL,NULL,NULL,NULL),(14,39,'package',NULL,NULL,NULL,NULL,NULL),(15,40,'package',NULL,NULL,NULL,NULL,NULL),(16,41,'package',NULL,NULL,NULL,NULL,NULL),(17,42,'package',NULL,NULL,NULL,NULL,NULL),(18,43,'package',NULL,NULL,NULL,NULL,NULL),(19,44,'package',NULL,NULL,NULL,NULL,NULL),(20,45,'package',NULL,NULL,NULL,NULL,NULL),(21,46,'package',NULL,NULL,NULL,NULL,NULL),(22,47,'package',NULL,NULL,NULL,NULL,NULL),(23,48,'package',NULL,NULL,NULL,NULL,NULL),(24,59,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(25,64,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message');
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'com.jx.theme.n551336823'),(2,8,'com.jx.theme.n1168570997'),(3,18,'com.android.packageinstaller'),(4,19,'com.jx.util'),(5,22,'com.jx.util'),(6,33,'NULL-CONSTANT'),(7,36,'com.jx.util'),(8,38,'com.km.launcher'),(9,40,''),(10,42,''),(11,43,'com.android.packageinstaller'),(12,44,'(.*)'),(13,45,'com.km.launcher'),(14,47,'(.*)'),(15,52,'com.android.packageinstaller'),(16,57,'com.jx.theme.n551336823'),(17,65,'com.jx.theme.n1829295825'),(18,82,'com.jx.theme.n1168570997'),(19,84,'com.android.packageinstaller'),(20,85,'com.jx.util'),(21,87,'com.km.launcher'),(22,88,'com.jx.theme.n1168570997'),(23,90,'com.jx.util'),(24,92,'com.jx.util'),(25,93,'com.jx.theme.n551336823'),(26,95,'com.jx.util'),(27,94,'com.jx.theme.n1168570997'),(28,99,'com.jx.theme.n551336823'),(29,100,'com.jx.theme.n1168570997'),(30,101,'com.jx.util'),(31,104,'com.km.launcher'),(32,103,'com.jx.util'),(33,102,'com.jx.theme.n551336823'),(34,105,'com.jx.util'),(35,107,'com.jx.util'),(36,106,'com.jx.theme.n551336823'),(37,108,'com.jx.theme.n1829295825'),(38,109,'com.jx.util'),(39,110,'com.jx.util'),(40,111,'com.jx.theme.n1829295825'),(41,113,'com.jx.util'),(42,112,'com.jx.theme.n1168570997'),(43,114,'com.km.launcher'),(44,115,'com.jx.util'),(45,116,'com.jx.util'),(46,117,'com.jx.theme.n1168570997'),(47,118,'com.jx.util'),(48,119,'com.jx.theme.n551336823'),(49,122,'com.jx.util'),(50,125,'com.jx.theme.n1829295825'),(51,131,'NULL-CONSTANT'),(52,130,'com.jx.theme.n1829295825'),(53,136,'com.jx.theme.n1829295825'),(54,151,'com.km.launcher'),(55,153,'com.jx.theme.n1168570997'),(56,154,'com.android.packageinstaller'),(57,155,'NULL-CONSTANT'),(58,163,'com.jx.theme.n1829295825'),(59,172,'com.android.packageinstaller'),(60,176,'com.jx.theme.n1829295825');
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,4,0),(3,5,0),(4,5,0),(5,8,0),(6,8,0),(7,9,0),(8,10,0),(9,11,0),(10,12,0),(11,13,0),(12,14,0),(13,22,0),(14,21,0),(15,24,0),(16,23,0),(17,26,0),(18,28,0),(19,32,0),(20,32,0),(21,33,0),(22,34,0),(23,35,0),(24,36,0),(25,37,0),(26,38,0),(27,39,0),(28,40,0),(29,41,0),(30,42,0),(31,43,0),(32,44,0),(33,45,0),(34,46,0),(35,47,0),(36,48,0),(37,49,0),(38,50,0),(39,51,0),(40,52,0),(41,53,0),(42,54,0),(43,26,0),(44,55,0),(45,56,0),(46,57,0),(47,58,0),(48,59,0),(49,60,0),(50,61,0),(51,45,0),(52,46,0),(53,44,0),(54,55,0),(55,62,0),(56,63,0),(57,64,0),(58,54,0),(59,65,0),(60,56,0),(61,66,0),(62,67,0),(63,68,0),(64,69,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,0,0),(3,3,1,0),(4,4,1,0),(5,5,1,0),(6,6,1,0),(7,7,1,0),(8,8,0,0),(9,9,1,0),(10,10,1,0),(11,11,1,0),(12,12,1,0),(13,13,1,0),(14,14,1,0),(15,16,1,0),(16,17,1,0),(17,19,1,0),(18,21,0,0),(19,22,1,0),(20,23,1,0),(21,24,1,0),(22,25,1,0),(23,26,1,0),(24,27,1,0),(25,28,1,0),(26,29,1,0),(27,30,1,0),(28,31,1,0),(29,33,1,0),(30,32,1,0),(31,34,1,0),(32,35,1,0),(33,36,0,0),(34,37,1,0),(35,38,1,0),(36,39,1,0),(37,40,1,0),(38,42,0,0),(39,43,1,0),(40,44,0,0),(41,45,1,0),(42,44,0,0),(43,47,0,0),(44,44,0,0),(45,48,0,0),(46,49,1,0),(47,44,0,0),(48,51,1,0),(49,53,1,0),(50,54,1,0),(51,55,1,0),(52,56,0,0),(53,54,1,0),(54,58,1,0),(55,60,1,0),(56,61,1,0),(57,63,0,0),(58,64,1,0),(59,67,1,0),(60,68,1,0),(61,69,1,0),(62,72,1,0),(63,73,1,0),(64,74,1,0),(65,76,0,0),(66,77,1,0),(67,80,1,0),(68,81,1,0),(69,82,1,0),(70,81,1,0),(71,84,1,0),(72,85,1,0),(73,86,1,0),(74,81,1,0),(75,85,1,0),(76,87,1,0),(77,86,1,0),(78,81,1,0),(79,88,1,0),(80,81,1,0),(81,88,1,0),(82,89,0,0),(83,88,1,0),(84,92,0,0),(85,89,1,0),(86,88,1,0),(87,95,0,0),(88,89,0,0),(89,88,1,0),(90,97,1,0),(91,100,1,0),(92,89,1,0),(93,97,0,0),(94,89,0,0),(95,97,1,0),(96,103,1,0),(97,104,1,0),(98,103,1,0),(99,97,0,0),(100,89,0,0),(101,106,1,0),(102,97,0,0),(103,89,1,0),(104,108,0,0),(105,106,1,0),(106,97,0,0),(107,89,1,0),(108,106,0,0),(109,89,1,0),(110,97,1,0),(111,106,0,0),(112,89,0,0),(113,97,1,0),(114,117,0,0),(115,106,1,0),(116,97,1,0),(117,118,0,0),(118,106,1,0),(119,97,0,0),(120,120,1,0),(121,121,1,0),(122,106,1,0),(123,121,1,0),(124,124,1,0),(125,106,0,0),(126,121,1,0),(127,125,1,0),(128,121,1,0),(129,127,1,0),(130,106,0,0),(131,128,0,0),(132,121,1,0),(133,127,1,0),(134,127,1,0),(135,121,1,0),(136,106,0,0),(137,121,1,0),(138,127,1,0),(139,129,1,0),(140,130,1,0),(141,127,1,0),(142,121,1,0),(143,131,1,0),(144,127,1,0),(145,132,1,0),(146,127,1,0),(147,134,1,0),(148,127,1,0),(149,136,1,0),(150,138,1,0),(151,139,0,0),(152,140,1,0),(153,142,0,0),(154,144,0,0),(155,145,0,0),(156,147,1,0),(157,149,1,0),(158,152,1,0),(159,153,1,0),(160,153,1,0),(161,155,1,0),(162,153,1,0),(163,156,0,0),(164,153,1,0),(165,153,1,0),(166,157,1,0),(167,158,1,0),(168,159,1,0),(169,160,1,0),(170,161,1,0),(171,163,1,0),(172,164,0,0),(173,165,1,0),(174,166,1,0),(175,167,1,0),(176,168,0,0),(177,169,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (11,'android.permission.ACCESS_NETWORK_STATE'),(18,'android.permission.CALL_PHONE'),(10,'android.permission.CHANGE_NETWORK_STATE'),(22,'android.permission.EXPAND_STATUS_BAR'),(15,'android.permission.GET_TASKS'),(19,'android.permission.GLOBAL_SEARCH_CONTROL'),(9,'android.permission.INTERNET'),(17,'android.permission.READ_CONTACTS'),(7,'android.permission.READ_PHONE_STATE'),(21,'android.permission.READ_SMS'),(13,'android.permission.RECEIVE_BOOT_COMPLETED'),(6,'android.permission.RECEIVE_MMS'),(5,'android.permission.RECEIVE_SMS'),(14,'android.permission.RECEIVE_WAP_PUSH'),(2,'android.permission.SEND_SMS'),(1,'android.permission.SET_WALLPAPER'),(20,'android.permission.SET_WALLPAPER_HINTS'),(23,'android.permission.VIBRATE'),(12,'android.permission.WAKE_LOCK'),(4,'android.permission.WRITE_APN_SETTINGS'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(8,'android.permission.WRITE_SETTINGS'),(16,'android.permission.WRITE_SMS'),(29,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(28,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(26,'com.android.launcher.permission.INSTALL_SHORTCUT'),(24,'com.android.launcher.permission.READ_SETTINGS'),(27,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(25,'com.android.launcher.permission.WRITE_SETTINGS');
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
INSERT INTO `Providers` VALUES (1,25,0,NULL,'com.android.launcher.permission.WRITE_SETTINGS'),(2,27,0,NULL,'com.android.launcher.permission.WRITE_SETTINGS');
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
INSERT INTO `UriData` VALUES (1,'package','',NULL,NULL,NULL,NULL),(2,'package','',NULL,NULL,NULL,NULL),(3,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(4,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(5,'package','',NULL,NULL,NULL,NULL),(6,'package','',NULL,NULL,NULL,NULL),(7,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(8,'package','',NULL,NULL,NULL,NULL),(9,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(10,'package','',NULL,NULL,NULL,NULL),(11,'package','',NULL,NULL,NULL,NULL),(12,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(13,'package','',NULL,NULL,NULL,NULL),(14,'package','',NULL,NULL,NULL,NULL),(15,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(16,'package','',NULL,NULL,NULL,NULL),(17,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(18,'package','',NULL,NULL,NULL,NULL),(19,'package','',NULL,NULL,NULL,NULL),(20,'package','',NULL,NULL,NULL,NULL),(21,'package','',NULL,NULL,NULL,NULL),(22,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(23,'package','',NULL,NULL,NULL,NULL),(24,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(25,'package','',NULL,NULL,NULL,NULL),(26,'package','',NULL,NULL,NULL,NULL),(27,'package','',NULL,NULL,NULL,NULL),(28,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(29,'package','',NULL,NULL,NULL,NULL),(30,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(31,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(32,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(33,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(34,'package','',NULL,NULL,NULL,NULL),(35,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(36,'package','',NULL,NULL,NULL,NULL),(37,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(38,'tel','(.*)',NULL,NULL,NULL,NULL),(39,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(40,'package','',NULL,NULL,NULL,NULL),(41,'package','',NULL,NULL,NULL,NULL),(42,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(43,'package','',NULL,NULL,NULL,NULL),(44,'package','',NULL,NULL,NULL,NULL),(45,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(46,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(47,'package','',NULL,NULL,NULL,NULL),(48,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(49,'package','',NULL,NULL,NULL,NULL),(50,'package','',NULL,NULL,NULL,NULL),(51,'package','',NULL,NULL,NULL,NULL),(52,'package','',NULL,NULL,NULL,NULL),(53,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(54,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(55,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(56,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(57,'package','',NULL,NULL,NULL,NULL),(58,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=(.*)',NULL,NULL,NULL),(59,'package','',NULL,NULL,NULL,NULL),(60,NULL,NULL,'http://se.zxin.cc?prod=search&op=redirect&id=10&v=7&ky=(.*)',NULL,NULL,NULL),(61,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=NULL-CONSTANT',NULL,NULL,NULL),(62,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(63,NULL,NULL,'http://se.zxin.cc?prod=search&op=redirect&id=10&v=7&ky=NULL-CONSTANT',NULL,NULL,NULL),(64,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(65,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(66,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(67,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(68,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(69,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(70,'package','',NULL,NULL,NULL,NULL),(71,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(72,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(73,'tel','(.*)',NULL,NULL,NULL,NULL),(74,'package','',NULL,NULL,NULL,NULL),(75,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(76,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(77,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(78,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(79,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(80,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(81,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(82,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(83,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(84,'package','',NULL,NULL,NULL,NULL),(85,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(86,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(87,'package','',NULL,NULL,NULL,NULL),(88,'package','',NULL,NULL,NULL,NULL),(89,'package','',NULL,NULL,NULL,NULL),(90,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(91,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=false',NULL,NULL,NULL),(92,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(93,'package','',NULL,NULL,NULL,NULL),(94,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(95,'package','',NULL,NULL,NULL,NULL),(96,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(97,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(98,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(99,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(100,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=false',NULL,NULL,NULL),(101,'package','',NULL,NULL,NULL,NULL),(102,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(103,'package','',NULL,NULL,NULL,NULL),(104,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(105,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(106,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(107,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(108,'package','',NULL,NULL,NULL,NULL),(109,'package','',NULL,NULL,NULL,NULL),(110,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(111,'package','',NULL,NULL,NULL,NULL),(112,'package','',NULL,NULL,NULL,NULL),(113,'package','',NULL,NULL,NULL,NULL),(114,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(115,'package','',NULL,NULL,NULL,NULL),(116,'package','',NULL,NULL,NULL,NULL),(117,'package','',NULL,NULL,NULL,NULL),(118,'package','',NULL,NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,15,12),(2,18,15),(3,41,28),(4,46,30),(5,50,32),(6,52,33),(7,57,37),(8,59,39),(9,62,42),(10,66,45),(11,70,46),(12,71,48),(13,78,53),(14,79,55),(15,83,56),(16,91,64),(17,93,65),(18,94,67),(19,98,68),(20,99,69),(21,101,71),(22,102,72),(23,107,75),(24,109,76),(25,110,77),(26,111,78),(27,112,79),(28,113,80),(29,114,81),(30,116,82),(31,122,83),(32,123,85),(33,133,90),(34,135,91),(35,135,92),(36,141,96),(37,143,97),(38,146,99),(39,148,100),(40,148,102),(41,150,104),(42,151,105),(43,154,107);
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
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,2,1),(12,1,11),(13,2,2),(14,1,12),(15,2,3),(16,2,4),(17,2,5),(18,2,6),(19,2,7),(20,2,8),(21,2,9),(22,2,10),(23,2,11),(24,2,12),(25,2,13),(26,3,1),(27,3,2),(28,3,3),(29,3,4),(30,4,1),(31,3,5),(32,4,2),(33,3,6),(34,4,4),(35,3,7),(36,3,8),(37,4,5),(38,3,9),(39,3,11),(40,3,14),(41,4,6),(42,3,15),(43,3,17),(44,3,17),(45,4,7),(46,4,8),(47,3,16),(48,3,16),(49,3,19),(50,3,19),(51,4,9),(52,3,18),(53,4,11),(54,3,21),(55,3,20),(56,4,14),(57,3,23),(58,3,22),(59,4,15),(60,3,25),(61,3,24),(62,4,17),(63,3,24),(64,4,16),(65,4,19),(66,4,18),(67,4,21),(68,4,20),(69,4,23),(70,4,22),(71,4,25),(72,4,24),(73,5,1),(74,5,2),(75,5,3),(76,5,4),(77,5,5),(78,5,6),(79,5,7),(80,5,8),(81,5,9),(82,5,10),(83,5,11),(84,5,12),(85,5,13),(86,5,29),(87,5,28);
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

-- Dump completed on 2015-10-09  0:40:03
