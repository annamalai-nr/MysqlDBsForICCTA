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
) ENGINE=InnoDB AUTO_INCREMENT=2059 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,2,3,2,NULL),(2,2,7,2,NULL),(3,2,30,2,NULL),(4,57,3,2,NULL),(5,57,7,2,NULL),(6,57,30,2,NULL),(7,93,5,2,NULL),(8,93,8,2,NULL),(9,93,32,2,NULL),(10,99,5,2,NULL),(11,99,8,2,NULL),(12,99,32,2,NULL),(13,102,5,2,NULL),(14,102,8,2,NULL),(15,102,32,2,NULL),(16,106,5,2,NULL),(17,106,8,2,NULL),(18,106,32,2,NULL),(19,119,5,2,NULL),(20,119,8,2,NULL),(21,119,32,2,NULL),(22,139,1,2,NULL),(23,3,5,2,NULL),(24,39,5,2,NULL),(25,68,5,2,NULL),(26,70,5,2,NULL),(27,74,5,2,NULL),(28,78,5,2,NULL),(29,80,5,2,NULL),(30,90,5,2,NULL),(31,95,5,2,NULL),(32,110,5,2,NULL),(33,113,5,2,NULL),(34,116,5,2,NULL),(35,3,36,2,NULL),(36,39,36,2,NULL),(37,68,36,2,NULL),(38,70,36,2,NULL),(39,74,36,2,NULL),(40,78,36,2,NULL),(41,80,36,2,NULL),(42,90,36,2,NULL),(43,95,36,2,NULL),(44,110,36,2,NULL),(45,113,36,2,NULL),(46,116,36,2,NULL),(47,3,47,2,NULL),(48,39,47,2,NULL),(49,68,47,2,NULL),(50,70,47,2,NULL),(51,74,47,2,NULL),(52,78,47,2,NULL),(53,80,47,2,NULL),(54,90,47,2,NULL),(55,95,47,2,NULL),(56,110,47,2,NULL),(57,113,47,2,NULL),(58,116,47,2,NULL),(59,3,4,2,NULL),(60,39,4,2,NULL),(61,68,4,2,NULL),(62,70,4,2,NULL),(63,74,4,2,NULL),(64,78,4,2,NULL),(65,80,4,2,NULL),(66,90,4,2,NULL),(67,95,4,2,NULL),(68,110,4,2,NULL),(69,113,4,2,NULL),(70,116,4,2,NULL),(71,35,1,2,NULL),(72,41,1,2,NULL),(73,85,1,2,NULL),(74,92,1,2,NULL),(75,103,1,2,NULL),(76,107,1,2,NULL),(77,109,1,2,NULL),(78,159,1,2,NULL),(79,160,1,2,NULL),(80,162,1,2,NULL),(81,164,1,2,NULL),(82,165,1,2,NULL),(83,145,1,2,NULL),(84,3,8,2,NULL),(85,39,8,2,NULL),(86,68,8,2,NULL),(87,70,8,2,NULL),(88,74,8,2,NULL),(89,78,8,2,NULL),(90,80,8,2,NULL),(91,90,8,2,NULL),(92,95,8,2,NULL),(93,110,8,2,NULL),(94,113,8,2,NULL),(95,116,8,2,NULL),(96,3,9,2,NULL),(97,39,9,2,NULL),(98,68,9,2,NULL),(99,70,9,2,NULL),(100,74,9,2,NULL),(101,78,9,2,NULL),(102,80,9,2,NULL),(103,90,9,2,NULL),(104,95,9,2,NULL),(105,110,9,2,NULL),(106,113,9,2,NULL),(107,116,9,2,NULL),(108,3,10,2,NULL),(109,39,10,2,NULL),(110,68,10,2,NULL),(111,70,10,2,NULL),(112,74,10,2,NULL),(113,78,10,2,NULL),(114,80,10,2,NULL),(115,90,10,2,NULL),(116,95,10,2,NULL),(117,110,10,2,NULL),(118,113,10,2,NULL),(119,116,10,2,NULL),(120,3,39,2,NULL),(121,39,39,2,NULL),(122,68,39,2,NULL),(123,70,39,2,NULL),(124,74,39,2,NULL),(125,78,39,2,NULL),(126,80,39,2,NULL),(127,90,39,2,NULL),(128,95,39,2,NULL),(129,110,39,2,NULL),(130,113,39,2,NULL),(131,116,39,2,NULL),(132,3,60,2,NULL),(133,39,60,2,NULL),(134,68,60,2,NULL),(135,70,60,2,NULL),(136,74,60,2,NULL),(137,78,60,2,NULL),(138,80,60,2,NULL),(139,90,60,2,NULL),(140,95,60,2,NULL),(141,110,60,2,NULL),(142,113,60,2,NULL),(143,116,60,2,NULL),(144,3,62,2,NULL),(145,39,62,2,NULL),(146,68,62,2,NULL),(147,70,62,2,NULL),(148,74,62,2,NULL),(149,78,62,2,NULL),(150,80,62,2,NULL),(151,90,62,2,NULL),(152,95,62,2,NULL),(153,110,62,2,NULL),(154,113,62,2,NULL),(155,116,62,2,NULL),(156,3,63,2,NULL),(157,39,63,2,NULL),(158,68,63,2,NULL),(159,70,63,2,NULL),(160,74,63,2,NULL),(161,78,63,2,NULL),(162,80,63,2,NULL),(163,90,63,2,NULL),(164,95,63,2,NULL),(165,110,63,2,NULL),(166,113,63,2,NULL),(167,116,63,2,NULL),(168,3,11,2,NULL),(169,39,11,2,NULL),(170,68,11,2,NULL),(171,70,11,2,NULL),(172,74,11,2,NULL),(173,78,11,2,NULL),(174,80,11,2,NULL),(175,90,11,2,NULL),(176,95,11,2,NULL),(177,110,11,2,NULL),(178,113,11,2,NULL),(179,116,11,2,NULL),(180,96,1,2,NULL),(181,129,1,2,NULL),(182,133,1,2,NULL),(183,134,1,2,NULL),(184,138,1,2,NULL),(185,141,1,2,NULL),(186,144,1,2,NULL),(187,146,1,2,NULL),(188,148,1,2,NULL),(189,3,13,2,NULL),(190,39,13,2,NULL),(191,68,13,2,NULL),(192,70,13,2,NULL),(193,74,13,2,NULL),(194,78,13,2,NULL),(195,80,13,2,NULL),(196,90,13,2,NULL),(197,95,13,2,NULL),(198,110,13,2,NULL),(199,113,13,2,NULL),(200,116,13,2,NULL),(201,3,22,2,NULL),(202,39,22,2,NULL),(203,68,22,2,NULL),(204,70,22,2,NULL),(205,74,22,2,NULL),(206,78,22,2,NULL),(207,80,22,2,NULL),(208,90,22,2,NULL),(209,95,22,2,NULL),(210,110,22,2,NULL),(211,113,22,2,NULL),(212,116,22,2,NULL),(213,3,23,2,NULL),(214,39,23,2,NULL),(215,68,23,2,NULL),(216,70,23,2,NULL),(217,74,23,2,NULL),(218,78,23,2,NULL),(219,80,23,2,NULL),(220,90,23,2,NULL),(221,95,23,2,NULL),(222,110,23,2,NULL),(223,113,23,2,NULL),(224,116,23,2,NULL),(225,3,26,2,NULL),(226,39,26,2,NULL),(227,68,26,2,NULL),(228,70,26,2,NULL),(229,74,26,2,NULL),(230,78,26,2,NULL),(231,80,26,2,NULL),(232,90,26,2,NULL),(233,95,26,2,NULL),(234,110,26,2,NULL),(235,113,26,2,NULL),(236,116,26,2,NULL),(237,3,54,2,NULL),(238,39,54,2,NULL),(239,68,54,2,NULL),(240,70,54,2,NULL),(241,74,54,2,NULL),(242,78,54,2,NULL),(243,80,54,2,NULL),(244,90,54,2,NULL),(245,95,54,2,NULL),(246,110,54,2,NULL),(247,113,54,2,NULL),(248,116,54,2,NULL),(249,3,55,2,NULL),(250,39,55,2,NULL),(251,68,55,2,NULL),(252,70,55,2,NULL),(253,74,55,2,NULL),(254,78,55,2,NULL),(255,80,55,2,NULL),(256,90,55,2,NULL),(257,95,55,2,NULL),(258,110,55,2,NULL),(259,113,55,2,NULL),(260,116,55,2,NULL),(261,3,56,2,NULL),(262,39,56,2,NULL),(263,68,56,2,NULL),(264,70,56,2,NULL),(265,74,56,2,NULL),(266,78,56,2,NULL),(267,80,56,2,NULL),(268,90,56,2,NULL),(269,95,56,2,NULL),(270,110,56,2,NULL),(271,113,56,2,NULL),(272,116,56,2,NULL),(273,3,12,2,NULL),(274,39,12,2,NULL),(275,68,12,2,NULL),(276,70,12,2,NULL),(277,74,12,2,NULL),(278,78,12,2,NULL),(279,80,12,2,NULL),(280,90,12,2,NULL),(281,95,12,2,NULL),(282,110,12,2,NULL),(283,113,12,2,NULL),(284,116,12,2,NULL),(285,50,1,2,NULL),(286,121,1,2,NULL),(287,123,1,2,NULL),(288,126,1,2,NULL),(289,128,1,2,NULL),(290,132,1,2,NULL),(291,135,1,2,NULL),(292,8,3,2,NULL),(293,137,1,2,NULL),(294,8,7,2,NULL),(295,142,1,2,NULL),(296,8,30,2,NULL),(297,3,14,2,NULL),(298,82,5,2,NULL),(299,39,14,2,NULL),(300,68,14,2,NULL),(301,82,8,2,NULL),(302,70,14,2,NULL),(303,82,32,2,NULL),(304,74,14,2,NULL),(305,88,5,2,NULL),(306,78,14,2,NULL),(307,80,14,2,NULL),(308,88,8,2,NULL),(309,90,14,2,NULL),(310,88,32,2,NULL),(311,95,14,2,NULL),(312,94,5,2,NULL),(313,110,14,2,NULL),(314,94,8,2,NULL),(315,113,14,2,NULL),(316,94,32,2,NULL),(317,116,14,2,NULL),(318,100,5,2,NULL),(319,3,21,2,NULL),(320,100,8,2,NULL),(321,39,21,2,NULL),(322,100,32,2,NULL),(323,68,21,2,NULL),(324,112,5,2,NULL),(325,70,21,2,NULL),(326,112,8,2,NULL),(327,74,21,2,NULL),(328,112,32,2,NULL),(329,78,21,2,NULL),(330,117,3,2,NULL),(331,80,21,2,NULL),(332,117,7,2,NULL),(333,90,21,2,NULL),(334,117,30,2,NULL),(335,95,21,2,NULL),(336,139,4,2,NULL),(337,110,21,2,NULL),(338,35,5,2,NULL),(339,113,21,2,NULL),(340,41,5,2,NULL),(341,116,21,2,NULL),(342,85,5,2,NULL),(343,3,24,2,NULL),(344,92,5,2,NULL),(345,39,24,2,NULL),(346,103,5,2,NULL),(347,68,24,2,NULL),(348,107,5,2,NULL),(349,70,24,2,NULL),(350,109,5,2,NULL),(351,74,24,2,NULL),(352,159,5,2,NULL),(353,78,24,2,NULL),(354,160,5,2,NULL),(355,80,24,2,NULL),(356,162,5,2,NULL),(357,90,24,2,NULL),(358,164,5,2,NULL),(359,95,24,2,NULL),(360,165,5,2,NULL),(361,110,24,2,NULL),(362,35,36,2,NULL),(363,113,24,2,NULL),(364,41,36,2,NULL),(365,116,24,2,NULL),(366,85,36,2,NULL),(367,3,44,2,NULL),(368,92,36,2,NULL),(369,39,44,2,NULL),(370,103,36,2,NULL),(371,68,44,2,NULL),(372,107,36,2,NULL),(373,70,44,2,NULL),(374,109,36,2,NULL),(375,74,44,2,NULL),(376,159,36,2,NULL),(377,78,44,2,NULL),(378,160,36,2,NULL),(379,80,44,2,NULL),(380,162,36,2,NULL),(381,90,44,2,NULL),(382,164,36,2,NULL),(383,95,44,2,NULL),(384,151,15,2,NULL),(385,165,36,2,NULL),(386,110,44,2,NULL),(387,151,17,2,NULL),(388,35,47,2,NULL),(389,113,44,2,NULL),(390,139,11,2,NULL),(391,41,47,2,NULL),(392,116,44,2,NULL),(393,85,47,2,NULL),(394,96,5,2,NULL),(395,3,45,2,NULL),(396,92,47,2,NULL),(397,129,5,2,NULL),(398,39,45,2,NULL),(399,103,47,2,NULL),(400,133,5,2,NULL),(401,68,45,2,NULL),(402,107,47,2,NULL),(403,134,5,2,NULL),(404,70,45,2,NULL),(405,109,47,2,NULL),(406,138,5,2,NULL),(407,74,45,2,NULL),(408,159,47,2,NULL),(409,141,5,2,NULL),(410,78,45,2,NULL),(411,160,47,2,NULL),(412,80,45,2,NULL),(413,162,47,2,NULL),(414,144,5,2,NULL),(415,90,45,2,NULL),(416,164,47,2,NULL),(417,146,5,2,NULL),(418,95,45,2,NULL),(419,165,47,2,NULL),(420,110,45,2,NULL),(421,148,5,2,NULL),(422,145,4,2,NULL),(423,113,45,2,NULL),(424,35,8,2,NULL),(425,96,36,2,NULL),(426,116,45,2,NULL),(427,41,8,2,NULL),(428,129,36,2,NULL),(429,3,46,2,NULL),(430,85,8,2,NULL),(431,133,36,2,NULL),(432,39,46,2,NULL),(433,92,8,2,NULL),(434,134,36,2,NULL),(435,68,46,2,NULL),(436,103,8,2,NULL),(437,138,36,2,NULL),(438,70,46,2,NULL),(439,107,8,2,NULL),(440,141,36,2,NULL),(441,74,46,2,NULL),(442,109,8,2,NULL),(443,144,36,2,NULL),(444,78,46,2,NULL),(445,159,8,2,NULL),(446,146,36,2,NULL),(447,80,46,2,NULL),(448,160,8,2,NULL),(449,148,36,2,NULL),(450,90,46,2,NULL),(451,162,8,2,NULL),(452,96,47,2,NULL),(453,95,46,2,NULL),(454,164,8,2,NULL),(455,129,47,2,NULL),(456,110,46,2,NULL),(457,165,8,2,NULL),(458,113,46,2,NULL),(459,133,47,2,NULL),(460,35,9,2,NULL),(461,116,46,2,NULL),(462,134,47,2,NULL),(463,41,9,2,NULL),(464,3,28,2,NULL),(465,138,47,2,NULL),(466,85,9,2,NULL),(467,39,28,2,NULL),(468,141,47,2,NULL),(469,92,9,2,NULL),(470,68,28,2,NULL),(471,103,9,2,NULL),(472,144,47,2,NULL),(473,70,28,2,NULL),(474,107,9,2,NULL),(475,146,47,2,NULL),(476,74,28,2,NULL),(477,109,9,2,NULL),(478,148,47,2,NULL),(479,78,28,2,NULL),(480,159,9,2,NULL),(481,96,4,2,NULL),(482,80,28,2,NULL),(483,160,9,2,NULL),(484,129,4,2,NULL),(485,90,28,2,NULL),(486,162,9,2,NULL),(487,133,4,2,NULL),(488,95,28,2,NULL),(489,164,9,2,NULL),(490,134,4,2,NULL),(491,110,28,2,NULL),(492,165,9,2,NULL),(493,138,4,2,NULL),(494,113,28,2,NULL),(495,35,10,2,NULL),(496,141,4,2,NULL),(497,116,28,2,NULL),(498,41,10,2,NULL),(499,144,4,2,NULL),(500,24,1,2,NULL),(501,85,10,2,NULL),(502,146,4,2,NULL),(503,69,1,2,NULL),(504,92,10,2,NULL),(505,148,4,2,NULL),(506,79,1,2,NULL),(507,103,10,2,NULL),(508,35,11,2,NULL),(509,81,1,2,NULL),(510,107,10,2,NULL),(511,41,11,2,NULL),(512,83,1,2,NULL),(513,85,11,2,NULL),(514,109,10,2,NULL),(515,86,1,2,NULL),(516,159,10,2,NULL),(517,92,11,2,NULL),(518,89,1,2,NULL),(519,103,11,2,NULL),(520,160,10,2,NULL),(521,101,1,2,NULL),(522,162,10,2,NULL),(523,107,11,2,NULL),(524,105,1,2,NULL),(525,109,11,2,NULL),(526,164,10,2,NULL),(527,115,1,2,NULL),(528,165,10,2,NULL),(529,159,11,2,NULL),(530,118,1,2,NULL),(531,35,39,2,NULL),(532,160,11,2,NULL),(533,122,1,2,NULL),(534,41,39,2,NULL),(535,162,11,2,NULL),(536,149,1,2,NULL),(537,85,39,2,NULL),(538,164,11,2,NULL),(539,3,32,2,NULL),(540,165,11,2,NULL),(541,92,39,2,NULL),(542,39,32,2,NULL),(543,103,39,2,NULL),(544,145,11,2,NULL),(545,68,32,2,NULL),(546,107,39,2,NULL),(547,96,8,2,NULL),(548,70,32,2,NULL),(549,109,39,2,NULL),(550,129,8,2,NULL),(551,74,32,2,NULL),(552,159,39,2,NULL),(553,133,8,2,NULL),(554,78,32,2,NULL),(555,134,8,2,NULL),(556,160,39,2,NULL),(557,80,32,2,NULL),(558,162,39,2,NULL),(559,138,8,2,NULL),(560,90,32,2,NULL),(561,164,39,2,NULL),(562,141,8,2,NULL),(563,95,32,2,NULL),(564,165,39,2,NULL),(565,144,8,2,NULL),(566,110,32,2,NULL),(567,35,60,2,NULL),(568,146,8,2,NULL),(569,113,32,2,NULL),(570,148,8,2,NULL),(571,41,60,2,NULL),(572,116,32,2,NULL),(573,85,60,2,NULL),(574,96,9,2,NULL),(575,3,33,2,NULL),(576,92,60,2,NULL),(577,129,9,2,NULL),(578,39,33,2,NULL),(579,103,60,2,NULL),(580,133,9,2,NULL),(581,68,33,2,NULL),(582,107,60,2,NULL),(583,134,9,2,NULL),(584,70,33,2,NULL),(585,109,60,2,NULL),(586,138,9,2,NULL),(587,74,33,2,NULL),(588,159,60,2,NULL),(589,141,9,2,NULL),(590,78,33,2,NULL),(591,160,60,2,NULL),(592,144,9,2,NULL),(593,80,33,2,NULL),(594,146,9,2,NULL),(595,162,60,2,NULL),(596,90,33,2,NULL),(597,148,9,2,NULL),(598,164,60,2,NULL),(599,95,33,2,NULL),(600,96,10,2,NULL),(601,165,60,2,NULL),(602,110,33,2,NULL),(603,35,62,2,NULL),(604,129,10,2,NULL),(605,113,33,2,NULL),(606,133,10,2,NULL),(607,41,62,2,NULL),(608,116,33,2,NULL),(609,134,10,2,NULL),(610,85,62,2,NULL),(611,3,34,2,NULL),(612,92,62,2,NULL),(613,138,10,2,NULL),(614,39,34,2,NULL),(615,103,62,2,NULL),(616,141,10,2,NULL),(617,107,62,2,NULL),(618,144,10,2,NULL),(619,109,62,2,NULL),(620,68,34,2,NULL),(621,146,10,2,NULL),(622,70,34,2,NULL),(623,159,62,2,NULL),(624,148,10,2,NULL),(625,74,34,2,NULL),(626,160,62,2,NULL),(627,96,39,2,NULL),(628,78,34,2,NULL),(629,162,62,2,NULL),(630,129,39,2,NULL),(631,80,34,2,NULL),(632,164,62,2,NULL),(633,133,39,2,NULL),(634,90,34,2,NULL),(635,165,62,2,NULL),(636,134,39,2,NULL),(637,95,34,2,NULL),(638,35,63,2,NULL),(639,138,39,2,NULL),(640,110,34,2,NULL),(641,41,63,2,NULL),(642,141,39,2,NULL),(643,113,34,2,NULL),(644,85,63,2,NULL),(645,144,39,2,NULL),(646,116,34,2,NULL),(647,92,63,2,NULL),(648,146,39,2,NULL),(649,3,61,2,NULL),(650,103,63,2,NULL),(651,148,39,2,NULL),(652,39,61,2,NULL),(653,107,63,2,NULL),(654,96,60,2,NULL),(655,68,61,2,NULL),(656,109,63,2,NULL),(657,129,60,2,NULL),(658,70,61,2,NULL),(659,159,63,2,NULL),(660,133,60,2,NULL),(661,74,61,2,NULL),(662,160,63,2,NULL),(663,134,60,2,NULL),(664,78,61,2,NULL),(665,162,63,2,NULL),(666,138,60,2,NULL),(667,80,61,2,NULL),(668,164,63,2,NULL),(669,141,60,2,NULL),(670,90,61,2,NULL),(671,165,63,2,NULL),(672,144,60,2,NULL),(673,95,61,2,NULL),(674,35,13,2,NULL),(675,146,60,2,NULL),(676,110,61,2,NULL),(677,148,60,2,NULL),(678,41,13,2,NULL),(679,113,61,2,NULL),(680,85,13,2,NULL),(681,96,62,2,NULL),(682,116,61,2,NULL),(683,92,13,2,NULL),(684,129,62,2,NULL),(685,3,64,2,NULL),(686,103,13,2,NULL),(687,133,62,2,NULL),(688,39,64,2,NULL),(689,107,13,2,NULL),(690,134,62,2,NULL),(691,68,64,2,NULL),(692,109,13,2,NULL),(693,138,62,2,NULL),(694,70,64,2,NULL),(695,159,13,2,NULL),(696,141,62,2,NULL),(697,74,64,2,NULL),(698,160,13,2,NULL),(699,144,62,2,NULL),(700,78,64,2,NULL),(701,146,62,2,NULL),(702,162,13,2,NULL),(703,80,64,2,NULL),(704,164,13,2,NULL),(705,148,62,2,NULL),(706,90,64,2,NULL),(707,165,13,2,NULL),(708,96,63,2,NULL),(709,95,64,2,NULL),(710,35,22,2,NULL),(711,129,63,2,NULL),(712,110,64,2,NULL),(713,41,22,2,NULL),(714,133,63,2,NULL),(715,113,64,2,NULL),(716,85,22,2,NULL),(717,134,63,2,NULL),(718,116,64,2,NULL),(719,92,22,2,NULL),(720,138,63,2,NULL),(721,3,66,2,NULL),(722,141,63,2,NULL),(723,103,22,2,NULL),(724,39,66,2,NULL),(725,107,22,2,NULL),(726,144,63,2,NULL),(727,68,66,2,NULL),(728,146,63,2,NULL),(729,70,66,2,NULL),(730,109,22,2,NULL),(731,148,63,2,NULL),(732,74,66,2,NULL),(733,159,22,2,NULL),(734,96,13,2,NULL),(735,78,66,2,NULL),(736,160,22,2,NULL),(737,129,13,2,NULL),(738,80,66,2,NULL),(739,162,22,2,NULL),(740,133,13,2,NULL),(741,90,66,2,NULL),(742,164,22,2,NULL),(743,134,13,2,NULL),(744,95,66,2,NULL),(745,138,13,2,NULL),(746,165,22,2,NULL),(747,110,66,2,NULL),(748,35,23,2,NULL),(749,141,13,2,NULL),(750,113,66,2,NULL),(751,144,13,2,NULL),(752,41,23,2,NULL),(753,116,66,2,NULL),(754,85,23,2,NULL),(755,146,13,2,NULL),(756,3,67,2,NULL),(757,148,13,2,NULL),(758,92,23,2,NULL),(759,39,67,2,NULL),(760,103,23,2,NULL),(761,96,22,2,NULL),(762,68,67,2,NULL),(763,129,22,2,NULL),(764,107,23,2,NULL),(765,70,67,2,NULL),(766,133,22,2,NULL),(767,109,23,2,NULL),(768,74,67,2,NULL),(769,134,22,2,NULL),(770,159,23,2,NULL),(771,78,67,2,NULL),(772,160,23,2,NULL),(773,138,22,2,NULL),(774,80,67,2,NULL),(775,141,22,2,NULL),(776,162,23,2,NULL),(777,90,67,2,NULL),(778,144,22,2,NULL),(779,164,23,2,NULL),(780,95,67,2,NULL),(781,146,22,2,NULL),(782,165,23,2,NULL),(783,110,67,2,NULL),(784,35,26,2,NULL),(785,148,22,2,NULL),(786,113,67,2,NULL),(787,96,23,2,NULL),(788,41,26,2,NULL),(789,116,67,2,NULL),(790,129,23,2,NULL),(791,85,26,2,NULL),(792,3,68,2,NULL),(793,92,26,2,NULL),(794,133,23,2,NULL),(795,39,68,2,NULL),(796,103,26,2,NULL),(797,134,23,2,NULL),(798,68,68,2,NULL),(799,138,23,2,NULL),(800,107,26,2,NULL),(801,70,68,2,NULL),(802,141,23,2,NULL),(803,109,26,2,NULL),(804,74,68,2,NULL),(805,159,26,2,NULL),(806,144,23,2,NULL),(807,78,68,2,NULL),(808,146,23,2,NULL),(809,160,26,2,NULL),(810,80,68,2,NULL),(811,148,23,2,NULL),(812,162,26,2,NULL),(813,90,68,2,NULL),(814,96,26,2,NULL),(815,164,26,2,NULL),(816,95,68,2,NULL),(817,165,26,2,NULL),(818,129,26,2,NULL),(819,110,68,2,NULL),(820,35,54,2,NULL),(821,133,26,2,NULL),(822,113,68,2,NULL),(823,41,54,2,NULL),(824,134,26,2,NULL),(825,116,68,2,NULL),(826,138,26,2,NULL),(827,85,54,2,NULL),(828,139,5,2,NULL),(829,141,26,2,NULL),(830,92,54,2,NULL),(831,139,36,2,NULL),(832,144,26,2,NULL),(833,103,54,2,NULL),(834,139,47,2,NULL),(835,107,54,2,NULL),(836,146,26,2,NULL),(837,139,8,2,NULL),(838,109,54,2,NULL),(839,148,26,2,NULL),(840,139,9,2,NULL),(841,159,54,2,NULL),(842,139,10,2,NULL),(843,96,54,2,NULL),(844,160,54,2,NULL),(845,139,39,2,NULL),(846,129,54,2,NULL),(847,162,54,2,NULL),(848,139,60,2,NULL),(849,133,54,2,NULL),(850,164,54,2,NULL),(851,139,62,2,NULL),(852,134,54,2,NULL),(853,165,54,2,NULL),(854,139,63,2,NULL),(855,138,54,2,NULL),(856,35,55,2,NULL),(857,139,13,2,NULL),(858,41,55,2,NULL),(859,141,54,2,NULL),(860,139,22,2,NULL),(861,144,54,2,NULL),(862,85,55,2,NULL),(863,139,23,2,NULL),(864,146,54,2,NULL),(865,92,55,2,NULL),(866,139,26,2,NULL),(867,148,54,2,NULL),(868,103,55,2,NULL),(869,139,54,2,NULL),(870,96,55,2,NULL),(871,107,55,2,NULL),(872,139,55,2,NULL),(873,129,55,2,NULL),(874,109,55,2,NULL),(875,139,56,2,NULL),(876,133,55,2,NULL),(877,159,55,2,NULL),(878,139,12,2,NULL),(879,134,55,2,NULL),(880,160,55,2,NULL),(881,139,14,2,NULL),(882,138,55,2,NULL),(883,162,55,2,NULL),(884,139,21,2,NULL),(885,141,55,2,NULL),(886,164,55,2,NULL),(887,139,24,2,NULL),(888,165,55,2,NULL),(889,144,55,2,NULL),(890,139,44,2,NULL),(891,35,56,2,NULL),(892,146,55,2,NULL),(893,139,45,2,NULL),(894,41,56,2,NULL),(895,148,55,2,NULL),(896,139,46,2,NULL),(897,85,56,2,NULL),(898,96,56,2,NULL),(899,139,28,2,NULL),(900,92,56,2,NULL),(901,129,56,2,NULL),(902,139,32,2,NULL),(903,103,56,2,NULL),(904,133,56,2,NULL),(905,139,33,2,NULL),(906,107,56,2,NULL),(907,134,56,2,NULL),(908,139,34,2,NULL),(909,109,56,2,NULL),(910,138,56,2,NULL),(911,139,61,2,NULL),(912,141,56,2,NULL),(913,159,56,2,NULL),(914,139,64,2,NULL),(915,144,56,2,NULL),(916,160,56,2,NULL),(917,139,66,2,NULL),(918,162,56,2,NULL),(919,146,56,2,NULL),(920,139,67,2,NULL),(921,164,56,2,NULL),(922,148,56,2,NULL),(923,139,68,2,NULL),(924,165,56,2,NULL),(925,96,14,2,NULL),(926,35,12,2,NULL),(927,129,14,2,NULL),(928,145,5,2,NULL),(929,41,12,2,NULL),(930,133,14,2,NULL),(931,50,5,2,NULL),(932,85,12,2,NULL),(933,134,14,2,NULL),(934,121,5,2,NULL),(935,92,12,2,NULL),(936,138,14,2,NULL),(937,123,5,2,NULL),(938,103,12,2,NULL),(939,141,14,2,NULL),(940,126,5,2,NULL),(941,107,12,2,NULL),(942,144,14,2,NULL),(943,128,5,2,NULL),(944,109,12,2,NULL),(945,146,14,2,NULL),(946,159,12,2,NULL),(947,132,5,2,NULL),(948,148,14,2,NULL),(949,135,5,2,NULL),(950,160,12,2,NULL),(951,96,21,2,NULL),(952,137,5,2,NULL),(953,162,12,2,NULL),(954,129,21,2,NULL),(955,142,5,2,NULL),(956,164,12,2,NULL),(957,133,21,2,NULL),(958,165,12,2,NULL),(959,24,5,2,NULL),(960,134,21,2,NULL),(961,50,4,2,NULL),(962,69,5,2,NULL),(963,138,21,2,NULL),(964,121,4,2,NULL),(965,79,5,2,NULL),(966,141,21,2,NULL),(967,81,5,2,NULL),(968,123,4,2,NULL),(969,144,21,2,NULL),(970,83,5,2,NULL),(971,126,4,2,NULL),(972,146,21,2,NULL),(973,86,5,2,NULL),(974,128,4,2,NULL),(975,148,21,2,NULL),(976,132,4,2,NULL),(977,89,5,2,NULL),(978,96,24,2,NULL),(979,135,4,2,NULL),(980,101,5,2,NULL),(981,129,24,2,NULL),(982,137,4,2,NULL),(983,105,5,2,NULL),(984,133,24,2,NULL),(985,115,5,2,NULL),(986,142,4,2,NULL),(987,134,24,2,NULL),(988,118,5,2,NULL),(989,35,14,2,NULL),(990,138,24,2,NULL),(991,122,5,2,NULL),(992,41,14,2,NULL),(993,141,24,2,NULL),(994,149,5,2,NULL),(995,85,14,2,NULL),(996,144,24,2,NULL),(997,92,14,2,NULL),(998,145,36,2,NULL),(999,146,24,2,NULL),(1000,103,14,2,NULL),(1001,148,24,2,NULL),(1002,50,36,2,NULL),(1003,107,14,2,NULL),(1004,121,36,2,NULL),(1005,109,14,2,NULL),(1006,123,36,2,NULL),(1007,96,44,2,NULL),(1008,159,14,2,NULL),(1009,126,36,2,NULL),(1010,129,44,2,NULL),(1011,160,14,2,NULL),(1012,128,36,2,NULL),(1013,133,44,2,NULL),(1014,162,14,2,NULL),(1015,132,36,2,NULL),(1016,134,44,2,NULL),(1017,164,14,2,NULL),(1018,135,36,2,NULL),(1019,138,44,2,NULL),(1020,165,14,2,NULL),(1021,137,36,2,NULL),(1022,141,44,2,NULL),(1023,35,21,2,NULL),(1024,142,36,2,NULL),(1025,144,44,2,NULL),(1026,41,21,2,NULL),(1027,24,36,2,NULL),(1028,146,44,2,NULL),(1029,85,21,2,NULL),(1030,69,36,2,NULL),(1031,148,44,2,NULL),(1032,92,21,2,NULL),(1033,79,36,2,NULL),(1034,96,45,2,NULL),(1035,103,21,2,NULL),(1036,81,36,2,NULL),(1037,129,45,2,NULL),(1038,107,21,2,NULL),(1039,83,36,2,NULL),(1040,133,45,2,NULL),(1041,109,21,2,NULL),(1042,86,36,2,NULL),(1043,134,45,2,NULL),(1044,159,21,2,NULL),(1045,89,36,2,NULL),(1046,138,45,2,NULL),(1047,160,21,2,NULL),(1048,101,36,2,NULL),(1049,141,45,2,NULL),(1050,162,21,2,NULL),(1051,105,36,2,NULL),(1052,144,45,2,NULL),(1053,164,21,2,NULL),(1054,115,36,2,NULL),(1055,146,45,2,NULL),(1056,165,21,2,NULL),(1057,118,36,2,NULL),(1058,148,45,2,NULL),(1059,35,24,2,NULL),(1060,122,36,2,NULL),(1061,96,46,2,NULL),(1062,41,24,2,NULL),(1063,149,36,2,NULL),(1064,129,46,2,NULL),(1065,85,24,2,NULL),(1066,133,46,2,NULL),(1067,92,24,2,NULL),(1068,145,47,2,NULL),(1069,134,46,2,NULL),(1070,103,24,2,NULL),(1071,50,47,2,NULL),(1072,138,46,2,NULL),(1073,121,47,2,NULL),(1074,107,24,2,NULL),(1075,141,46,2,NULL),(1076,123,47,2,NULL),(1077,109,24,2,NULL),(1078,144,46,2,NULL),(1079,126,47,2,NULL),(1080,159,24,2,NULL),(1081,146,46,2,NULL),(1082,128,47,2,NULL),(1083,160,24,2,NULL),(1084,148,46,2,NULL),(1085,132,47,2,NULL),(1086,162,24,2,NULL),(1087,96,28,2,NULL),(1088,135,47,2,NULL),(1089,164,24,2,NULL),(1090,129,28,2,NULL),(1091,137,47,2,NULL),(1092,165,24,2,NULL),(1093,133,28,2,NULL),(1094,142,47,2,NULL),(1095,35,44,2,NULL),(1096,134,28,2,NULL),(1097,24,47,2,NULL),(1098,41,44,2,NULL),(1099,138,28,2,NULL),(1100,69,47,2,NULL),(1101,85,44,2,NULL),(1102,141,28,2,NULL),(1103,79,47,2,NULL),(1104,92,44,2,NULL),(1105,144,28,2,NULL),(1106,81,47,2,NULL),(1107,103,44,2,NULL),(1108,146,28,2,NULL),(1109,83,47,2,NULL),(1110,107,44,2,NULL),(1111,148,28,2,NULL),(1112,86,47,2,NULL),(1113,109,44,2,NULL),(1114,24,11,2,NULL),(1115,89,47,2,NULL),(1116,159,44,2,NULL),(1117,69,11,2,NULL),(1118,101,47,2,NULL),(1119,160,44,2,NULL),(1120,79,11,2,NULL),(1121,105,47,2,NULL),(1122,162,44,2,NULL),(1123,81,11,2,NULL),(1124,115,47,2,NULL),(1125,164,44,2,NULL),(1126,83,11,2,NULL),(1127,108,5,2,NULL),(1128,118,47,2,NULL),(1129,165,44,2,NULL),(1130,86,11,2,NULL),(1131,122,47,2,NULL),(1132,35,45,2,NULL),(1133,108,8,2,NULL),(1134,89,11,2,NULL),(1135,149,47,2,NULL),(1136,41,45,2,NULL),(1137,101,11,2,NULL),(1138,108,32,2,NULL),(1139,85,45,2,NULL),(1140,105,11,2,NULL),(1141,92,45,2,NULL),(1142,111,5,2,NULL),(1143,115,11,2,NULL),(1144,103,45,2,NULL),(1145,118,11,2,NULL),(1146,111,8,2,NULL),(1147,107,45,2,NULL),(1148,122,11,2,NULL),(1149,109,45,2,NULL),(1150,111,32,2,NULL),(1151,149,11,2,NULL),(1152,159,45,2,NULL),(1153,125,5,2,NULL),(1154,96,32,2,NULL),(1155,160,45,2,NULL),(1156,125,8,2,NULL),(1157,129,32,2,NULL),(1158,162,45,2,NULL),(1159,125,32,2,NULL),(1160,133,32,2,NULL),(1161,164,45,2,NULL),(1162,130,5,2,NULL),(1163,134,32,2,NULL),(1164,165,45,2,NULL),(1165,138,32,2,NULL),(1166,35,46,2,NULL),(1167,130,8,2,NULL),(1168,141,32,2,NULL),(1169,41,46,2,NULL),(1170,130,32,2,NULL),(1171,144,32,2,NULL),(1172,85,46,2,NULL),(1173,146,32,2,NULL),(1174,136,5,2,NULL),(1175,92,46,2,NULL),(1176,148,32,2,NULL),(1177,136,8,2,NULL),(1178,103,46,2,NULL),(1179,96,33,2,NULL),(1180,136,32,2,NULL),(1181,107,46,2,NULL),(1182,129,33,2,NULL),(1183,163,3,2,NULL),(1184,109,46,2,NULL),(1185,133,33,2,NULL),(1186,159,46,2,NULL),(1187,163,7,2,NULL),(1188,134,33,2,NULL),(1189,160,46,2,NULL),(1190,163,30,2,NULL),(1191,138,33,2,NULL),(1192,162,46,2,NULL),(1193,176,3,2,NULL),(1194,141,33,2,NULL),(1195,164,46,2,NULL),(1196,176,7,2,NULL),(1197,144,33,2,NULL),(1198,165,46,2,NULL),(1199,176,30,2,NULL),(1200,146,33,2,NULL),(1201,35,28,2,NULL),(1202,148,33,2,NULL),(1203,41,28,2,NULL),(1204,96,34,2,NULL),(1205,24,4,2,NULL),(1206,85,28,2,NULL),(1207,129,34,2,NULL),(1208,92,28,2,NULL),(1209,69,4,2,NULL),(1210,133,34,2,NULL),(1211,103,28,2,NULL),(1212,134,34,2,NULL),(1213,79,4,2,NULL),(1214,107,28,2,NULL),(1215,138,34,2,NULL),(1216,81,4,2,NULL),(1217,109,28,2,NULL),(1218,141,34,2,NULL),(1219,159,28,2,NULL),(1220,83,4,2,NULL),(1221,144,34,2,NULL),(1222,160,28,2,NULL),(1223,86,4,2,NULL),(1224,146,34,2,NULL),(1225,162,28,2,NULL),(1226,89,4,2,NULL),(1227,148,34,2,NULL),(1228,164,28,2,NULL),(1229,101,4,2,NULL),(1230,96,61,2,NULL),(1231,165,28,2,NULL),(1232,105,4,2,NULL),(1233,129,61,2,NULL),(1234,115,4,2,NULL),(1235,118,4,2,NULL),(1236,133,61,2,NULL),(1237,122,4,2,NULL),(1238,122,4,2,NULL),(1239,134,61,2,NULL),(1240,149,4,2,NULL),(1241,145,28,2,NULL),(1242,138,61,2,NULL),(1243,35,32,2,NULL),(1244,141,61,2,NULL),(1245,24,8,2,NULL),(1246,41,32,2,NULL),(1247,144,61,2,NULL),(1248,69,8,2,NULL),(1249,85,32,2,NULL),(1250,146,61,2,NULL),(1251,79,8,2,NULL),(1252,92,32,2,NULL),(1253,148,61,2,NULL),(1254,81,8,2,NULL),(1255,103,32,2,NULL),(1256,96,64,2,NULL),(1257,83,8,2,NULL),(1258,107,32,2,NULL),(1259,129,64,2,NULL),(1260,86,8,2,NULL),(1261,109,32,2,NULL),(1262,133,64,2,NULL),(1263,89,8,2,NULL),(1264,159,32,2,NULL),(1265,134,64,2,NULL),(1266,101,8,2,NULL),(1267,160,32,2,NULL),(1268,138,64,2,NULL),(1269,105,8,2,NULL),(1270,162,32,2,NULL),(1271,141,64,2,NULL),(1272,115,8,2,NULL),(1273,164,32,2,NULL),(1274,144,64,2,NULL),(1275,118,8,2,NULL),(1276,165,32,2,NULL),(1277,146,64,2,NULL),(1278,122,8,2,NULL),(1279,35,33,2,NULL),(1280,148,64,2,NULL),(1281,24,9,2,NULL),(1282,41,33,2,NULL),(1283,96,66,2,NULL),(1284,69,9,2,NULL),(1285,85,33,2,NULL),(1286,129,66,2,NULL),(1287,79,9,2,NULL),(1288,92,33,2,NULL),(1289,133,66,2,NULL),(1290,81,9,2,NULL),(1291,103,33,2,NULL),(1292,134,66,2,NULL),(1293,83,9,2,NULL),(1294,107,33,2,NULL),(1295,138,66,2,NULL),(1296,86,9,2,NULL),(1297,109,33,2,NULL),(1298,141,66,2,NULL),(1299,89,9,2,NULL),(1300,159,33,2,NULL),(1301,144,66,2,NULL),(1302,101,9,2,NULL),(1303,160,33,2,NULL),(1304,146,66,2,NULL),(1305,105,9,2,NULL),(1306,162,33,2,NULL),(1307,148,66,2,NULL),(1308,115,9,2,NULL),(1309,164,33,2,NULL),(1310,96,67,2,NULL),(1311,118,9,2,NULL),(1312,165,33,2,NULL),(1313,122,9,2,NULL),(1314,129,67,2,NULL),(1315,35,34,2,NULL),(1316,24,10,2,NULL),(1317,133,67,2,NULL),(1318,41,34,2,NULL),(1319,69,10,2,NULL),(1320,134,67,2,NULL),(1321,85,34,2,NULL),(1322,138,67,2,NULL),(1323,79,10,2,NULL),(1324,92,34,2,NULL),(1325,141,67,2,NULL),(1326,81,10,2,NULL),(1327,103,34,2,NULL),(1328,144,67,2,NULL),(1329,83,10,2,NULL),(1330,107,34,2,NULL),(1331,146,67,2,NULL),(1332,86,10,2,NULL),(1333,109,34,2,NULL),(1334,148,67,2,NULL),(1335,89,10,2,NULL),(1336,159,34,2,NULL),(1337,96,68,2,NULL),(1338,101,10,2,NULL),(1339,160,34,2,NULL),(1340,129,68,2,NULL),(1341,105,10,2,NULL),(1342,162,34,2,NULL),(1343,115,10,2,NULL),(1344,133,68,2,NULL),(1345,164,34,2,NULL),(1346,118,10,2,NULL),(1347,134,68,2,NULL),(1348,165,34,2,NULL),(1349,122,10,2,NULL),(1350,138,68,2,NULL),(1351,35,61,2,NULL),(1352,141,68,2,NULL),(1353,24,39,2,NULL),(1354,41,61,2,NULL),(1355,144,68,2,NULL),(1356,69,39,2,NULL),(1357,85,61,2,NULL),(1358,146,68,2,NULL),(1359,79,39,2,NULL),(1360,92,61,2,NULL),(1361,81,39,2,NULL),(1362,148,68,2,NULL),(1363,103,61,2,NULL),(1364,83,39,2,NULL),(1365,107,61,2,NULL),(1366,145,13,2,NULL),(1367,86,39,2,NULL),(1368,109,61,2,NULL),(1369,50,13,2,NULL),(1370,89,39,2,NULL),(1371,159,61,2,NULL),(1372,121,13,2,NULL),(1373,101,39,2,NULL),(1374,160,61,2,NULL),(1375,123,13,2,NULL),(1376,105,39,2,NULL),(1377,126,13,2,NULL),(1378,162,61,2,NULL),(1379,115,39,2,NULL),(1380,164,61,2,NULL),(1381,128,13,2,NULL),(1382,118,39,2,NULL),(1383,132,13,2,NULL),(1384,165,61,2,NULL),(1385,122,39,2,NULL),(1386,135,13,2,NULL),(1387,35,64,2,NULL),(1388,24,60,2,NULL),(1389,137,13,2,NULL),(1390,41,64,2,NULL),(1391,69,60,2,NULL),(1392,142,13,2,NULL),(1393,85,64,2,NULL),(1394,79,60,2,NULL),(1395,92,64,2,NULL),(1396,24,13,2,NULL),(1397,81,60,2,NULL),(1398,103,64,2,NULL),(1399,69,13,2,NULL),(1400,83,60,2,NULL),(1401,107,64,2,NULL),(1402,79,13,2,NULL),(1403,86,60,2,NULL),(1404,81,13,2,NULL),(1405,109,64,2,NULL),(1406,89,60,2,NULL),(1407,159,64,2,NULL),(1408,83,13,2,NULL),(1409,101,60,2,NULL),(1410,160,64,2,NULL),(1411,86,13,2,NULL),(1412,105,60,2,NULL),(1413,89,13,2,NULL),(1414,162,64,2,NULL),(1415,115,60,2,NULL),(1416,164,64,2,NULL),(1417,101,13,2,NULL),(1418,118,60,2,NULL),(1419,165,64,2,NULL),(1420,105,13,2,NULL),(1421,122,60,2,NULL),(1422,115,13,2,NULL),(1423,35,66,2,NULL),(1424,24,62,2,NULL),(1425,118,13,2,NULL),(1426,41,66,2,NULL),(1427,69,62,2,NULL),(1428,122,13,2,NULL),(1429,85,66,2,NULL),(1430,79,62,2,NULL),(1431,149,13,2,NULL),(1432,92,66,2,NULL),(1433,81,62,2,NULL),(1434,103,66,2,NULL),(1435,145,22,2,NULL),(1436,83,62,2,NULL),(1437,107,66,2,NULL),(1438,86,62,2,NULL),(1439,50,22,2,NULL),(1440,109,66,2,NULL),(1441,89,62,2,NULL),(1442,159,66,2,NULL),(1443,121,22,2,NULL),(1444,101,62,2,NULL),(1445,160,66,2,NULL),(1446,123,22,2,NULL),(1447,105,62,2,NULL),(1448,126,22,2,NULL),(1449,162,66,2,NULL),(1450,115,62,2,NULL),(1451,128,22,2,NULL),(1452,164,66,2,NULL),(1453,118,62,2,NULL),(1454,165,66,2,NULL),(1455,132,22,2,NULL),(1456,122,62,2,NULL),(1457,35,67,2,NULL),(1458,135,22,2,NULL),(1459,24,63,2,NULL),(1460,41,67,2,NULL),(1461,137,22,2,NULL),(1462,69,63,2,NULL),(1463,85,67,2,NULL),(1464,142,22,2,NULL),(1465,79,63,2,NULL),(1466,92,67,2,NULL),(1467,81,63,2,NULL),(1468,24,22,2,NULL),(1469,103,67,2,NULL),(1470,83,63,2,NULL),(1471,69,22,2,NULL),(1472,107,67,2,NULL),(1473,86,63,2,NULL),(1474,79,22,2,NULL),(1475,109,67,2,NULL),(1476,89,63,2,NULL),(1477,159,67,2,NULL),(1478,81,22,2,NULL),(1479,101,63,2,NULL),(1480,83,22,2,NULL),(1481,105,63,2,NULL),(1482,86,22,2,NULL),(1483,160,67,2,NULL),(1484,115,63,2,NULL),(1485,162,67,2,NULL),(1486,89,22,2,NULL),(1487,118,63,2,NULL),(1488,164,67,2,NULL),(1489,101,22,2,NULL),(1490,122,63,2,NULL),(1491,165,67,2,NULL),(1492,105,22,2,NULL),(1493,115,22,2,NULL),(1494,115,22,2,NULL),(1495,35,68,2,NULL),(1496,118,22,2,NULL),(1497,41,68,2,NULL),(1498,122,22,2,NULL),(1499,24,23,2,NULL),(1500,85,68,2,NULL),(1501,149,22,2,NULL),(1502,69,23,2,NULL),(1503,92,68,2,NULL),(1504,79,23,2,NULL),(1505,103,68,2,NULL),(1506,81,23,2,NULL),(1507,107,68,2,NULL),(1508,145,23,2,NULL),(1509,83,23,2,NULL),(1510,109,68,2,NULL),(1511,86,23,2,NULL),(1512,159,68,2,NULL),(1513,50,23,2,NULL),(1514,89,23,2,NULL),(1515,160,68,2,NULL),(1516,121,23,2,NULL),(1517,101,23,2,NULL),(1518,123,23,2,NULL),(1519,162,68,2,NULL),(1520,105,23,2,NULL),(1521,126,23,2,NULL),(1522,164,68,2,NULL),(1523,115,23,2,NULL),(1524,165,68,2,NULL),(1525,128,23,2,NULL),(1526,118,23,2,NULL),(1527,132,23,2,NULL),(1528,145,8,2,NULL),(1529,122,23,2,NULL),(1530,135,23,2,NULL),(1531,145,9,2,NULL),(1532,24,26,2,NULL),(1533,145,10,2,NULL),(1534,137,23,2,NULL),(1535,69,26,2,NULL),(1536,145,39,2,NULL),(1537,142,23,2,NULL),(1538,79,26,2,NULL),(1539,145,60,2,NULL),(1540,81,26,2,NULL),(1541,145,62,2,NULL),(1542,83,26,2,NULL),(1543,149,23,2,NULL),(1544,145,63,2,NULL),(1545,86,26,2,NULL),(1546,145,26,2,NULL),(1547,89,26,2,NULL),(1548,145,54,2,NULL),(1549,101,26,2,NULL),(1550,145,55,2,NULL),(1551,105,26,2,NULL),(1552,50,26,2,NULL),(1553,145,56,2,NULL),(1554,115,26,2,NULL),(1555,121,26,2,NULL),(1556,145,12,2,NULL),(1557,118,26,2,NULL),(1558,123,26,2,NULL),(1559,145,14,2,NULL),(1560,122,26,2,NULL),(1561,126,26,2,NULL),(1562,145,21,2,NULL),(1563,128,26,2,NULL),(1564,24,54,2,NULL),(1565,145,24,2,NULL),(1566,132,26,2,NULL),(1567,69,54,2,NULL),(1568,145,44,2,NULL),(1569,135,26,2,NULL),(1570,79,54,2,NULL),(1571,145,45,2,NULL),(1572,137,26,2,NULL),(1573,81,54,2,NULL),(1574,145,46,2,NULL),(1575,142,26,2,NULL),(1576,83,54,2,NULL),(1577,145,32,2,NULL),(1578,86,54,2,NULL),(1579,149,26,2,NULL),(1580,145,33,2,NULL),(1581,89,54,2,NULL),(1582,145,34,2,NULL),(1583,101,54,2,NULL),(1584,145,61,2,NULL),(1585,105,54,2,NULL),(1586,145,64,2,NULL),(1587,115,54,2,NULL),(1588,145,66,2,NULL),(1589,118,54,2,NULL),(1590,145,67,2,NULL),(1591,50,54,2,NULL),(1592,145,68,2,NULL),(1593,122,54,2,NULL),(1594,121,54,2,NULL),(1595,24,55,2,NULL),(1596,50,8,2,NULL),(1597,123,54,2,NULL),(1598,69,55,2,NULL),(1599,121,8,2,NULL),(1600,126,54,2,NULL),(1601,79,55,2,NULL),(1602,123,8,2,NULL),(1603,128,54,2,NULL),(1604,81,55,2,NULL),(1605,132,54,2,NULL),(1606,126,8,2,NULL),(1607,83,55,2,NULL),(1608,135,54,2,NULL),(1609,128,8,2,NULL),(1610,86,55,2,NULL),(1611,137,54,2,NULL),(1612,132,8,2,NULL),(1613,89,55,2,NULL),(1614,142,54,2,NULL),(1615,135,8,2,NULL),(1616,101,55,2,NULL),(1617,137,8,2,NULL),(1618,149,54,2,NULL),(1619,105,55,2,NULL),(1620,142,8,2,NULL),(1621,115,55,2,NULL),(1622,50,55,2,NULL),(1623,149,8,2,NULL),(1624,121,55,2,NULL),(1625,118,55,2,NULL),(1626,50,9,2,NULL),(1627,122,55,2,NULL),(1628,123,55,2,NULL),(1629,121,9,2,NULL),(1630,126,55,2,NULL),(1631,24,56,2,NULL),(1632,123,9,2,NULL),(1633,128,55,2,NULL),(1634,69,56,2,NULL),(1635,126,9,2,NULL),(1636,132,55,2,NULL),(1637,79,56,2,NULL),(1638,128,9,2,NULL),(1639,81,56,2,NULL),(1640,135,55,2,NULL),(1641,132,9,2,NULL),(1642,137,55,2,NULL),(1643,83,56,2,NULL),(1644,135,9,2,NULL),(1645,142,55,2,NULL),(1646,86,56,2,NULL),(1647,137,9,2,NULL),(1648,89,56,2,NULL),(1649,149,55,2,NULL),(1650,142,9,2,NULL),(1651,101,56,2,NULL),(1652,50,56,2,NULL),(1653,149,9,2,NULL),(1654,105,56,2,NULL),(1655,121,56,2,NULL),(1656,153,9,2,NULL),(1657,115,56,2,NULL),(1658,153,33,2,NULL),(1659,123,56,2,NULL),(1660,118,56,2,NULL),(1661,126,56,2,NULL),(1662,50,10,2,NULL),(1663,122,56,2,NULL),(1664,121,10,2,NULL),(1665,128,56,2,NULL),(1666,24,12,2,NULL),(1667,123,10,2,NULL),(1668,132,56,2,NULL),(1669,69,12,2,NULL),(1670,126,10,2,NULL),(1671,135,56,2,NULL),(1672,79,12,2,NULL),(1673,128,10,2,NULL),(1674,137,56,2,NULL),(1675,81,12,2,NULL),(1676,132,10,2,NULL),(1677,142,56,2,NULL),(1678,83,12,2,NULL),(1679,135,10,2,NULL),(1680,149,56,2,NULL),(1681,86,12,2,NULL),(1682,137,10,2,NULL),(1683,104,15,2,NULL),(1684,89,12,2,NULL),(1685,142,10,2,NULL),(1686,104,17,2,NULL),(1687,101,12,2,NULL),(1688,149,10,2,NULL),(1689,105,12,2,NULL),(1690,115,12,2,NULL),(1691,50,39,2,NULL),(1692,118,12,2,NULL),(1693,121,39,2,NULL),(1694,123,39,2,NULL),(1695,122,12,2,NULL),(1696,126,39,2,NULL),(1697,128,39,2,NULL),(1698,50,28,2,NULL),(1699,132,39,2,NULL),(1700,132,39,2,NULL),(1701,121,28,2,NULL),(1702,135,39,2,NULL),(1703,135,39,2,NULL),(1704,123,28,2,NULL),(1705,137,39,2,NULL),(1706,142,39,2,NULL),(1707,126,28,2,NULL),(1708,50,60,2,NULL),(1709,149,39,2,NULL),(1710,128,28,2,NULL),(1711,121,60,2,NULL),(1712,123,60,2,NULL),(1713,132,28,2,NULL),(1714,126,60,2,NULL),(1715,135,28,2,NULL),(1716,128,60,2,NULL),(1717,132,60,2,NULL),(1718,137,28,2,NULL),(1719,135,60,2,NULL),(1720,137,60,2,NULL),(1721,142,60,2,NULL),(1722,142,28,2,NULL),(1723,50,62,2,NULL),(1724,24,14,2,NULL),(1725,149,60,2,NULL),(1726,121,62,2,NULL),(1727,69,14,2,NULL),(1728,123,62,2,NULL),(1729,126,62,2,NULL),(1730,79,14,2,NULL),(1731,128,62,2,NULL),(1732,132,62,2,NULL),(1733,81,14,2,NULL),(1734,135,62,2,NULL),(1735,137,62,2,NULL),(1736,83,14,2,NULL),(1737,142,62,2,NULL),(1738,50,63,2,NULL),(1739,86,14,2,NULL),(1740,121,63,2,NULL),(1741,149,62,2,NULL),(1742,89,14,2,NULL),(1743,123,63,2,NULL),(1744,126,63,2,NULL),(1745,101,14,2,NULL),(1746,128,63,2,NULL),(1747,132,63,2,NULL),(1748,105,14,2,NULL),(1749,135,63,2,NULL),(1750,115,14,2,NULL),(1751,137,63,2,NULL),(1752,142,63,2,NULL),(1753,118,14,2,NULL),(1754,149,63,2,NULL),(1755,122,14,2,NULL),(1756,50,14,2,NULL),(1757,24,21,2,NULL),(1758,121,14,2,NULL),(1759,69,21,2,NULL),(1760,123,14,2,NULL),(1761,79,21,2,NULL),(1762,126,14,2,NULL),(1763,81,21,2,NULL),(1764,128,14,2,NULL),(1765,83,21,2,NULL),(1766,132,14,2,NULL),(1767,86,21,2,NULL),(1768,135,14,2,NULL),(1769,89,21,2,NULL),(1770,137,14,2,NULL),(1771,101,21,2,NULL),(1772,142,14,2,NULL),(1773,105,21,2,NULL),(1774,50,21,2,NULL),(1775,115,21,2,NULL),(1776,121,21,2,NULL),(1777,118,21,2,NULL),(1778,123,21,2,NULL),(1779,122,21,2,NULL),(1780,126,21,2,NULL),(1781,24,24,2,NULL),(1782,128,21,2,NULL),(1783,69,24,2,NULL),(1784,132,21,2,NULL),(1785,79,24,2,NULL),(1786,135,21,2,NULL),(1787,81,24,2,NULL),(1788,137,21,2,NULL),(1789,83,24,2,NULL),(1790,142,21,2,NULL),(1791,86,24,2,NULL),(1792,50,24,2,NULL),(1793,89,24,2,NULL),(1794,121,24,2,NULL),(1795,101,24,2,NULL),(1796,123,24,2,NULL),(1797,105,24,2,NULL),(1798,126,24,2,NULL),(1799,115,24,2,NULL),(1800,128,24,2,NULL),(1801,118,24,2,NULL),(1802,132,24,2,NULL),(1803,122,24,2,NULL),(1804,135,24,2,NULL),(1805,24,44,2,NULL),(1806,137,24,2,NULL),(1807,69,44,2,NULL),(1808,142,24,2,NULL),(1809,79,44,2,NULL),(1810,81,44,2,NULL),(1811,50,44,2,NULL),(1812,83,44,2,NULL),(1813,121,44,2,NULL),(1814,86,44,2,NULL),(1815,123,44,2,NULL),(1816,89,44,2,NULL),(1817,126,44,2,NULL),(1818,101,44,2,NULL),(1819,128,44,2,NULL),(1820,105,44,2,NULL),(1821,132,44,2,NULL),(1822,115,44,2,NULL),(1823,135,44,2,NULL),(1824,118,44,2,NULL),(1825,137,44,2,NULL),(1826,122,44,2,NULL),(1827,142,44,2,NULL),(1828,24,45,2,NULL),(1829,50,45,2,NULL),(1830,69,45,2,NULL),(1831,121,45,2,NULL),(1832,79,45,2,NULL),(1833,123,45,2,NULL),(1834,81,45,2,NULL),(1835,126,45,2,NULL),(1836,83,45,2,NULL),(1837,128,45,2,NULL),(1838,86,45,2,NULL),(1839,132,45,2,NULL),(1840,89,45,2,NULL),(1841,135,45,2,NULL),(1842,101,45,2,NULL),(1843,137,45,2,NULL),(1844,105,45,2,NULL),(1845,142,45,2,NULL),(1846,115,45,2,NULL),(1847,50,46,2,NULL),(1848,118,45,2,NULL),(1849,121,46,2,NULL),(1850,122,45,2,NULL),(1851,123,46,2,NULL),(1852,24,46,2,NULL),(1853,126,46,2,NULL),(1854,69,46,2,NULL),(1855,128,46,2,NULL),(1856,79,46,2,NULL),(1857,132,46,2,NULL),(1858,81,46,2,NULL),(1859,135,46,2,NULL),(1860,83,46,2,NULL),(1861,137,46,2,NULL),(1862,86,46,2,NULL),(1863,142,46,2,NULL),(1864,89,46,2,NULL),(1865,149,12,2,NULL),(1866,101,46,2,NULL),(1867,50,32,2,NULL),(1868,105,46,2,NULL),(1869,121,32,2,NULL),(1870,115,46,2,NULL),(1871,123,32,2,NULL),(1872,118,46,2,NULL),(1873,126,32,2,NULL),(1874,122,46,2,NULL),(1875,128,32,2,NULL),(1876,149,28,2,NULL),(1877,132,32,2,NULL),(1878,24,32,2,NULL),(1879,135,32,2,NULL),(1880,69,32,2,NULL),(1881,137,32,2,NULL),(1882,79,32,2,NULL),(1883,142,32,2,NULL),(1884,81,32,2,NULL),(1885,50,33,2,NULL),(1886,83,32,2,NULL),(1887,121,33,2,NULL),(1888,86,32,2,NULL),(1889,123,33,2,NULL),(1890,89,32,2,NULL),(1891,126,33,2,NULL),(1892,101,32,2,NULL),(1893,128,33,2,NULL),(1894,105,32,2,NULL),(1895,132,33,2,NULL),(1896,115,32,2,NULL),(1897,135,33,2,NULL),(1898,118,32,2,NULL),(1899,137,33,2,NULL),(1900,122,32,2,NULL),(1901,142,33,2,NULL),(1902,24,33,2,NULL),(1903,50,34,2,NULL),(1904,69,33,2,NULL),(1905,121,34,2,NULL),(1906,79,33,2,NULL),(1907,123,34,2,NULL),(1908,81,33,2,NULL),(1909,126,34,2,NULL),(1910,83,33,2,NULL),(1911,128,34,2,NULL),(1912,86,33,2,NULL),(1913,132,34,2,NULL),(1914,89,33,2,NULL),(1915,135,34,2,NULL),(1916,101,33,2,NULL),(1917,137,34,2,NULL),(1918,105,33,2,NULL),(1919,142,34,2,NULL),(1920,115,33,2,NULL),(1921,50,61,2,NULL),(1922,118,33,2,NULL),(1923,121,61,2,NULL),(1924,122,33,2,NULL),(1925,123,61,2,NULL),(1926,24,34,2,NULL),(1927,126,61,2,NULL),(1928,69,34,2,NULL),(1929,128,61,2,NULL),(1930,79,34,2,NULL),(1931,132,61,2,NULL),(1932,81,34,2,NULL),(1933,135,61,2,NULL),(1934,83,34,2,NULL),(1935,137,61,2,NULL),(1936,86,34,2,NULL),(1937,142,61,2,NULL),(1938,89,34,2,NULL),(1939,50,64,2,NULL),(1940,101,34,2,NULL),(1941,121,64,2,NULL),(1942,105,34,2,NULL),(1943,123,64,2,NULL),(1944,115,34,2,NULL),(1945,126,64,2,NULL),(1946,118,34,2,NULL),(1947,128,64,2,NULL),(1948,122,34,2,NULL),(1949,132,64,2,NULL),(1950,24,61,2,NULL),(1951,135,64,2,NULL),(1952,69,61,2,NULL),(1953,137,64,2,NULL),(1954,79,61,2,NULL),(1955,142,64,2,NULL),(1956,81,61,2,NULL),(1957,50,66,2,NULL),(1958,83,61,2,NULL),(1959,121,66,2,NULL),(1960,86,61,2,NULL),(1961,123,66,2,NULL),(1962,89,61,2,NULL),(1963,126,66,2,NULL),(1964,128,66,2,NULL),(1965,101,61,2,NULL),(1966,132,66,2,NULL),(1967,135,66,2,NULL),(1968,105,61,2,NULL),(1969,137,66,2,NULL),(1970,142,66,2,NULL),(1971,115,61,2,NULL),(1972,50,67,2,NULL),(1973,121,67,2,NULL),(1974,118,61,2,NULL),(1975,123,67,2,NULL),(1976,126,67,2,NULL),(1977,122,61,2,NULL),(1978,128,67,2,NULL),(1979,132,67,2,NULL),(1980,24,64,2,NULL),(1981,135,67,2,NULL),(1982,137,67,2,NULL),(1983,69,64,2,NULL),(1984,142,67,2,NULL),(1985,50,68,2,NULL),(1986,79,64,2,NULL),(1987,121,68,2,NULL),(1988,123,68,2,NULL),(1989,81,64,2,NULL),(1990,126,68,2,NULL),(1991,128,68,2,NULL),(1992,83,64,2,NULL),(1993,132,68,2,NULL),(1994,135,68,2,NULL),(1995,86,64,2,NULL),(1996,137,68,2,NULL),(1997,142,68,2,NULL),(1998,89,64,2,NULL),(1999,101,64,2,NULL),(2000,149,14,2,NULL),(2001,149,14,2,NULL),(2002,105,64,2,NULL),(2003,115,64,2,NULL),(2004,149,21,2,NULL),(2005,118,64,2,NULL),(2006,122,64,2,NULL),(2007,24,66,2,NULL),(2008,149,24,2,NULL),(2009,69,66,2,NULL),(2010,79,66,2,NULL),(2011,81,66,2,NULL),(2012,149,44,2,NULL),(2013,83,66,2,NULL),(2014,86,66,2,NULL),(2015,149,45,2,NULL),(2016,149,45,2,NULL),(2017,89,66,2,NULL),(2018,101,66,2,NULL),(2019,149,46,2,NULL),(2020,149,46,2,NULL),(2021,105,66,2,NULL),(2022,115,66,2,NULL),(2023,118,66,2,NULL),(2024,122,66,2,NULL),(2025,24,67,2,NULL),(2026,69,67,2,NULL),(2027,79,67,2,NULL),(2028,81,67,2,NULL),(2029,83,67,2,NULL),(2030,86,67,2,NULL),(2031,89,67,2,NULL),(2032,101,67,2,NULL),(2033,105,67,2,NULL),(2034,115,67,2,NULL),(2035,118,67,2,NULL),(2036,122,67,2,NULL),(2037,24,68,2,NULL),(2038,69,68,2,NULL),(2039,79,68,2,NULL),(2040,81,68,2,NULL),(2041,83,68,2,NULL),(2042,86,68,2,NULL),(2043,89,68,2,NULL),(2044,101,68,2,NULL),(2045,105,68,2,NULL),(2046,115,68,2,NULL),(2047,118,68,2,NULL),(2048,122,68,2,NULL),(2049,149,32,2,NULL),(2050,149,33,2,NULL),(2051,149,34,2,NULL),(2052,149,61,2,NULL),(2053,149,64,2,NULL),(2054,149,66,2,NULL),(2055,149,67,2,NULL),(2056,149,68,2,NULL),(2057,65,9,2,NULL),(2058,65,33,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProviderLinks`
--

LOCK TABLES `ProviderLinks` WRITE;
/*!40000 ALTER TABLE `ProviderLinks` DISABLE KEYS */;
INSERT INTO `ProviderLinks` VALUES (1,11,27,NULL),(2,11,25,NULL),(3,22,27,NULL),(4,22,25,NULL),(5,50,27,NULL),(6,50,25,NULL),(7,23,27,NULL),(8,23,25,NULL),(9,51,27,NULL),(10,51,25,NULL),(11,12,27,NULL),(12,21,27,NULL),(13,40,27,NULL),(14,24,27,NULL),(15,41,27,NULL),(16,12,25,NULL),(17,21,25,NULL),(18,40,25,NULL),(19,24,25,NULL),(20,41,25,NULL);
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

-- Dump completed on 2015-10-12  3:30:47
