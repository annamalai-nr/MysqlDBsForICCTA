-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_515
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (32,'SMS_SEND_ACTIOIN'),(6,'android.intent.action.BOOT_COMPLETED'),(33,'android.intent.action.CHOOSER'),(36,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(18,'android.intent.action.PACKAGE_ADDED'),(27,'android.intent.action.PACKAGE_CHANGED'),(28,'android.intent.action.PACKAGE_REMOVED'),(37,'android.intent.action.SCREEN_OFF'),(38,'android.intent.action.SCREEN_ON'),(7,'android.intent.action.SET_WALLPAPER'),(12,'android.intent.action.VIEW'),(31,'android.intent.action.WALLPAPER_CHANGED'),(24,'android.net.conn.CONNECTIVITY_CHANGE'),(15,'android.provider.Telephony.SMS_RECEIVED'),(14,'android.provider.Telephony.WAP_PUSH_RECEIVED'),(34,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(25,'android.settings.WIRELESS_SETTINGS'),(35,'com.android.contacts.action.FILTER_CONTACTS'),(8,'com.android.launcher.action.INSTALL_SHORTCUT'),(9,'com.android.launcher.action.UNINSTALL_SHORTCUT'),(21,'com.jx.Action_CopyResError'),(11,'com.jx.MainActivity.CostInfo'),(10,'com.jx.MainActivity.ErrorInfo'),(13,'com.jx.MainActivity.InstallConfirmInfo'),(17,'com.jx.MainActivity.OpenLWP'),(20,'com.jx.MainActivity.RepeateInstall'),(19,'com.jx.MainActivity.SaveID'),(23,'com.jx.action.ExitBootReceiver'),(26,'com.jx.ad.ADService.ConfirmInstallInfo'),(4,'com.jx.ad.ADService.Init'),(16,'com.jx.ad.ADService.InitHasUpdate'),(29,'com.jx.ad.ADService.InstallRes'),(2,'com.jx.ad.ADService.Run'),(3,'com.jx.ad.ADService.RunCancel'),(22,'com.jx.ad.BootSmsReceiverService.Exit'),(5,'com.jx.ad.BootSmsReceiverService.Start');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applications`
--

LOCK TABLES `Applications` WRITE;
/*!40000 ALTER TABLE `Applications` DISABLE KEYS */;
INSERT INTO `Applications` VALUES (1,'com.jx.theme.n413097392',1),(2,'com.km.launcher',1),(3,'com.jx.theme.n270853774',1),(4,'com.km.launcher',NULL),(5,'com.jx.theme.n1183252343',1),(6,'com.jx.theme.n2026947500',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.jx.MainActivity'),(2,1,'com.jx.SettingActivity'),(3,1,'com.jx.WelcomeActivity'),(4,1,'com.jx.ad.AndroidThemeService'),(5,1,'com.jx.ad.BootSmsReceiverService'),(6,1,'com.jx.ad.BootReceiver'),(7,2,'com.km.launcher.Launcher'),(8,3,'com.jx.MainActivity'),(9,2,'com.km.launcher.WallpaperChooser'),(10,2,'com.km.theme.ThemeListActivity'),(11,3,'com.jx.SettingActivity'),(12,2,'com.km.charge.MainActivity'),(13,2,'com.km.ad.AdService'),(14,3,'com.jx.WelcomeActivity'),(15,2,'com.km.charge.CycleService'),(16,2,'com.km.launcher.InstallShortcutReceiver'),(17,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(18,3,'com.jx.ad.AndroidThemeService'),(19,2,'com.km.launcher.UninstallShortcutReceiver'),(20,2,'com.km.charge.BootReceiver'),(21,3,'com.jx.ad.BootSmsReceiverService'),(22,2,'com.km.launcher.LauncherProvider'),(23,5,'com.jx.MainActivity'),(24,4,'com.km.launcher.Launcher'),(25,3,'com.jx.ad.BootReceiver'),(26,5,'com.jx.SettingActivity'),(27,4,'com.km.launcher.WallpaperChooser'),(28,5,'com.jx.WelcomeActivity'),(29,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(30,6,'com.jx.MainActivity'),(31,4,'com.km.theme.ThemeListActivity'),(32,5,'com.jx.ad.AndroidThemeService'),(33,4,'com.km.charge.MainActivity'),(34,4,'com.km.launcher.InstallShortcutReceiver'),(35,6,'com.jx.SettingActivity'),(36,5,'com.jx.ad.BootSmsReceiverService'),(37,6,'com.jx.WelcomeActivity'),(38,4,'com.km.launcher.UninstallShortcutReceiver'),(39,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(40,5,'com.jx.ad.BootReceiver'),(41,6,'com.jx.ad.AndroidThemeService'),(42,4,'com.km.launcher.LauncherProvider'),(43,6,'com.jx.ad.BootSmsReceiverService'),(44,6,'com.jx.ad.BootReceiver'),(45,1,'com.jx.ad.AndroidThemeService$4'),(46,1,'com.jx.tool.ApnManager'),(47,1,'com.jx.ad.AndroidThemeService$3'),(48,1,'com.jx.ad.AndroidThemeService$6'),(49,1,'com.jx.ad.AndroidThemeService$2'),(50,1,'com.jx.ad.AndroidThemeService$7'),(51,1,'com.jx.ad.AndroidThemeService$5'),(52,1,'com.jx.tool.Utility'),(53,1,'com.jx.MainActivity$4'),(54,1,'com.jx.ad.AndroidThemeService$8'),(55,1,'com.jx.ad.AndroidThemeService$MMSReceiver'),(56,1,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(57,1,'com.jx.MainActivity$ControlReceiver'),(58,6,'com.jx.SettingActivity$1'),(59,5,'com.jx.ad.AndroidThemeService$2'),(60,6,'com.jx.MainActivity$ControlReceiver'),(61,3,'com.jx.ad.AndroidThemeService$6'),(62,6,'com.jx.ad.AndroidThemeService$8'),(63,1,'com.jx.MainActivity$1'),(64,5,'com.jx.MainActivity$ControlReceiver'),(65,3,'com.jx.ad.AndroidThemeService$2'),(66,1,'com.jx.MainActivity$ControlReceiver$6$1'),(67,5,'com.jx.ad.AndroidThemeService$4'),(68,6,'com.jx.MainActivity$1'),(69,3,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(70,3,'com.jx.ad.AndroidThemeService$SmsReceiver'),(71,5,'com.jx.tool.Utility'),(72,6,'com.jx.tool.Utility'),(73,3,'com.jx.MainActivity$ControlReceiver'),(74,4,'com.km.tool.ApnManager'),(75,3,'com.jx.MainActivity$ControlReceiver$6$1'),(76,2,'com.km.charge.HttpBox$ConnectivityReceiver'),(77,6,'com.jx.tool.ApnManager'),(78,1,'com.jx.MainActivity$ControlReceiver$1'),(79,2,'com.km.tool.ApnManager'),(80,4,'com.km.launcher.LauncherModel'),(81,3,'com.jx.ad.AndroidThemeService$MMSReceiver'),(82,2,'com.km.ad.AdService$1'),(83,5,'com.jx.SettingActivity$1'),(84,2,'com.km.launcher.Search'),(85,5,'com.jx.ad.AndroidThemeService$8'),(86,2,'com.km.tool.Util'),(87,3,'com.jx.ad.AndroidThemeService$3'),(88,2,'com.km.launcher.LauncherModel'),(89,4,'com.km.launcher.Launcher$WallpaperIntentReceiver'),(90,2,'com.km.charge.HoldMessage'),(91,4,'com.km.charge.SendMessage$SendMessageReceiver'),(92,2,'com.km.launcher.MyAnalogClock$1'),(93,3,'com.jx.tool.Utility'),(94,2,'com.km.launcher.Launcher$WallpaperIntentReceiver'),(95,2,'com.km.charge.SendMessage$SendMessageReceiver'),(96,1,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(97,5,'com.jx.ad.AndroidThemeService$5'),(98,3,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(99,2,'com.km.tool.Http$ConnectivityReceiver'),(100,5,'com.jx.tool.ApnManager'),(101,2,'com.km.launcher.Launcher$ApplicationsIntentReceiver'),(102,5,'com.jx.MainActivity$ControlReceiver$1'),(103,3,'com.jx.MainActivity$1'),(104,5,'com.jx.ad.AndroidThemeService$6'),(105,4,'com.km.charge.HoldMessage'),(106,3,'com.jx.ad.AndroidThemeService$4'),(107,4,'com.km.launcher.MyAnalogClock$1'),(108,5,'com.jx.MainActivity$4'),(109,4,'com.km.charge.HttpBox$ConnectivityReceiver'),(110,4,'com.km.tool.Http$ConnectivityReceiver'),(111,4,'com.km.launcher.Launcher$ApplicationsIntentReceiver'),(112,3,'com.jx.ad.AndroidThemeService$5'),(113,3,'com.jx.ad.AndroidThemeService$7'),(114,4,'com.km.launcher.Search'),(115,1,'com.jx.SettingActivity$6'),(116,3,'com.jx.tool.ApnManager'),(117,4,'com.km.theme.ThemeManager'),(118,2,'com.km.theme.ThemeManager'),(119,1,'com.jx.ad.ServiceControlReciver'),(120,1,'com.jx.ad.AndroidThemeService$SmsReceiver'),(121,3,'com.jx.ad.AndroidThemeService$8'),(122,1,'com.jx.SettingActivity$1'),(123,3,'com.jx.MainActivity$ControlReceiver$1'),(124,3,'com.adwo.adsdk.M'),(125,5,'com.jx.ad.AndroidThemeService$MMSReceiver'),(126,5,'com.jx.MainActivity$ControlReceiver$6$1'),(127,3,'com.jx.MainActivity$4'),(128,5,'com.jx.ad.ServiceControlReciver'),(129,5,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(130,5,'com.adwo.adsdk.M'),(131,5,'com.jx.ad.AndroidThemeService$3'),(132,3,'com.jx.SettingActivity$1'),(133,5,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(134,3,'com.jx.ad.ServiceControlReciver'),(135,5,'com.jx.ad.AndroidThemeService$7'),(136,5,'com.jx.ad.AndroidThemeService$SmsReceiver'),(137,5,'com.jx.MainActivity$1'),(138,5,'com.jx.SettingActivity$6'),(139,3,'com.jx.SettingActivity$6');
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
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,4,'resownerid'),(2,41,'resownerid'),(3,29,'shouldEnableBottomBar'),(4,31,'launcher.user_folder'),(5,33,'launcher.user_folder'),(6,24,'launcher.user_folder'),(7,24,'launcher.add_screen'),(8,39,'shouldResizeOverlay'),(9,17,'overlayTitle'),(10,7,'launcher.rename_folder_id'),(11,16,'duplicate'),(12,24,'launcher.add_occupied_cells'),(13,34,'android.intent.extra.shortcut.NAME'),(14,24,'android.intent.extra.shortcut.NAME'),(15,38,'android.intent.extra.shortcut.INTENT'),(16,24,'data'),(17,29,'overlayTransition'),(18,17,'url'),(19,24,'launcher.add_cellX'),(20,7,'launcher.add_cellX'),(21,7,'launcher.add_spanY'),(22,24,'launcher.add_countY'),(23,24,'launcher.add_cellY'),(24,24,'launcher.add_spanX'),(25,24,'launcher.add_spanY'),(26,34,'android.intent.extra.shortcut.INTENT'),(27,24,'android.intent.extra.shortcut.INTENT'),(28,17,'overlayTransition'),(29,16,'android.intent.extra.shortcut.NAME'),(30,19,'android.intent.extra.shortcut.NAME'),(31,7,'android.intent.extra.shortcut.NAME'),(32,16,'android.intent.extra.shortcut.ICON'),(33,7,'android.intent.extra.livefolder.NAME'),(34,7,'android.intent.extra.shortcut.ICON'),(35,16,'android.intent.extra.shortcut.ICON_RESOURCE'),(36,7,'android.intent.extra.shortcut.ICON_RESOURCE'),(37,16,'android.intent.extra.shortcut.INTENT'),(38,7,'android.intent.extra.shortcut.INTENT'),(39,7,'launcher.add_occupied_cells'),(40,31,'launcher.all_apps_folder'),(41,7,'launcher.add_cellY'),(42,33,'launcher.all_apps_folder'),(43,24,'launcher.all_apps_folder'),(44,19,'android.intent.extra.shortcut.INTENT'),(45,24,'launcher.current_screen'),(46,7,'android.intent.extra.livefolder.ICON'),(47,7,'launcher.add_spanX'),(48,38,'android.intent.extra.shortcut.NAME'),(49,17,'transitionTime'),(50,7,'data'),(51,4,'respid'),(52,7,'launcher.rename_folder'),(53,7,'launcher.add_screen'),(54,7,'launcher.add_countY'),(55,34,'android.intent.extra.shortcut.ICON'),(56,24,'android.intent.extra.shortcut.ICON'),(57,19,'duplicate'),(58,24,'android.intent.extra.livefolder.ICON'),(59,38,'duplicate'),(60,34,'duplicate'),(61,24,'launcher.rename_folder_id'),(62,24,'launcher.rename_folder'),(63,24,'android.intent.extra.livefolder.BASE_INTENT'),(64,18,'respid'),(65,17,'shouldMakeOverlayTransparent'),(66,29,'shouldShowBottomBar'),(67,7,'android.intent.extra.livefolder.BASE_INTENT'),(68,29,'overlayTitle'),(69,7,'launcher.current_screen'),(70,10,'launcher.all_apps_folder'),(71,12,'launcher.all_apps_folder'),(72,7,'launcher.all_apps_folder'),(73,7,'launcher.all_apps_folder'),(74,32,'respid'),(75,10,'launcher.user_folder'),(76,12,'launcher.user_folder'),(77,7,'launcher.add_countX'),(78,7,'launcher.user_folder'),(79,34,'android.intent.extra.shortcut.ICON_RESOURCE'),(80,24,'android.intent.extra.shortcut.ICON_RESOURCE'),(81,18,'resownerid'),(82,24,'launcher.add_countX'),(83,24,'android.intent.extra.livefolder.NAME'),(84,17,'shouldShowTitlebar'),(85,17,'shouldEnableBottomBar'),(86,17,'shouldShowBottomBar'),(87,17,'shouldResizeOverlay'),(88,29,'url'),(89,29,'shouldShowTitlebar'),(90,29,'shouldMakeOverlayTransparent'),(91,29,'transitionTime'),(92,29,'shouldResizeOverlay'),(93,32,'resownerid');
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
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'s',1,NULL,NULL),(5,5,'s',1,NULL,NULL),(6,6,'r',1,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,9,'a',1,NULL,NULL),(9,8,'a',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'s',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'s',0,NULL,NULL),(16,16,'r',1,28,NULL),(17,17,'a',0,NULL,NULL),(18,18,'s',1,NULL,NULL),(19,19,'r',1,29,NULL),(20,20,'r',1,NULL,NULL),(21,21,'s',1,NULL,NULL),(22,22,'p',0,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'r',1,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',1,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'s',1,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'r',1,28,NULL),(35,35,'a',0,NULL,NULL),(36,36,'s',1,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'r',1,29,NULL),(39,39,'a',0,NULL,NULL),(40,40,'r',1,NULL,NULL),(41,41,'s',1,NULL,NULL),(42,42,'p',0,NULL,NULL),(43,43,'s',1,NULL,NULL),(44,44,'r',1,NULL,NULL),(45,55,'r',1,NULL,NULL),(46,56,'r',1,NULL,NULL),(47,57,'r',1,NULL,NULL),(48,60,'r',1,NULL,NULL),(49,64,'r',1,NULL,NULL),(50,69,'r',1,NULL,NULL),(51,70,'r',1,NULL,NULL),(52,73,'r',1,NULL,NULL),(53,76,'r',1,NULL,NULL),(54,81,'r',1,NULL,NULL),(55,16,'r',1,NULL,NULL),(56,19,'r',1,NULL,NULL),(57,89,'r',1,NULL,NULL),(58,90,'r',1,NULL,NULL),(59,91,'r',1,NULL,NULL),(60,92,'r',1,NULL,NULL),(61,94,'r',1,NULL,NULL),(62,95,'r',1,NULL,NULL),(63,96,'r',1,NULL,NULL),(64,98,'r',1,NULL,NULL),(65,99,'r',1,NULL,NULL),(66,101,'r',1,NULL,NULL),(67,34,'r',1,NULL,NULL),(68,38,'r',1,NULL,NULL),(69,105,'r',1,NULL,NULL),(70,107,'r',1,NULL,NULL),(71,109,'r',1,NULL,NULL),(72,110,'r',1,NULL,NULL),(73,111,'r',1,NULL,NULL),(74,119,'r',1,NULL,NULL),(75,120,'r',1,NULL,NULL),(76,124,'r',1,NULL,NULL),(77,125,'r',1,NULL,NULL),(78,128,'r',1,NULL,NULL),(79,129,'r',1,NULL,NULL),(80,130,'r',1,NULL,NULL),(81,133,'r',1,NULL,NULL),(82,134,'r',1,NULL,NULL),(83,136,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=317 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,4),(2,2,4),(3,3,6),(4,4,4),(5,5,4),(6,6,4),(7,7,4),(8,8,4),(9,9,4),(10,10,4),(11,11,4),(12,11,3),(13,11,2),(14,12,3),(15,12,2),(16,12,1),(17,13,4),(18,14,2),(19,15,4),(20,16,4),(21,17,37),(22,17,35),(23,17,30),(24,18,4),(25,19,32),(26,21,4),(27,20,32),(28,22,18),(29,23,41),(30,24,3),(31,24,2),(32,24,1),(33,25,41),(34,26,18),(35,27,2),(36,27,3),(37,27,1),(38,28,32),(39,29,37),(40,29,30),(41,29,35),(42,30,4),(43,31,32),(44,31,28),(45,31,26),(46,32,37),(47,32,35),(48,32,41),(49,33,4),(50,34,33),(51,34,31),(52,35,23),(53,36,9),(54,36,14),(55,36,11),(56,37,41),(57,39,26),(58,38,2),(59,38,1),(60,38,3),(61,40,10),(62,40,12),(63,41,24),(64,42,37),(65,42,35),(66,42,30),(67,43,2),(68,43,3),(69,43,1),(70,44,12),(71,44,10),(72,46,38),(73,45,28),(74,45,26),(75,45,23),(76,47,12),(77,47,7),(78,48,9),(79,49,10),(80,49,12),(81,50,42),(82,51,18),(83,52,32),(84,53,20),(85,53,7),(86,54,34),(87,55,18),(88,56,7),(89,57,32),(90,58,10),(91,58,12),(92,60,4),(93,59,33),(94,59,24),(95,61,18),(96,62,28),(97,63,16),(98,64,1),(99,65,34),(100,66,11),(101,66,14),(102,66,18),(103,67,7),(104,68,2),(105,68,3),(106,69,31),(107,69,33),(108,70,25),(109,71,24),(110,72,32),(111,73,1),(112,73,2),(113,73,3),(114,74,24),(115,74,34),(116,75,18),(117,76,32),(118,77,23),(119,77,26),(120,77,28),(121,78,10),(122,78,12),(123,79,11),(124,79,9),(125,79,14),(126,80,32),(127,81,19),(128,82,7),(129,82,12),(130,83,18),(131,84,7),(132,84,12),(133,85,28),(134,85,26),(135,85,23),(136,86,14),(137,87,23),(138,87,28),(139,87,26),(140,88,10),(141,88,12),(142,89,16),(143,90,7),(144,91,10),(145,91,12),(146,92,10),(147,92,7),(148,93,18),(149,94,19),(150,95,7),(151,96,33),(152,96,31),(153,97,22),(154,98,18),(155,99,24),(156,100,4),(157,101,7),(158,101,12),(159,102,12),(160,102,10),(161,103,10),(162,103,12),(163,104,4),(164,105,33),(165,105,31),(166,106,18),(167,107,16),(168,108,33),(169,108,31),(170,109,1),(171,110,19),(172,111,7),(173,112,33),(174,112,24),(175,113,18),(176,114,3),(177,114,2),(178,114,1),(179,115,10),(180,115,12),(181,116,1),(182,117,19),(183,118,18),(184,119,11),(185,119,9),(186,119,14),(187,120,4),(188,121,31),(189,121,24),(190,122,1),(191,123,7),(192,123,10),(193,124,23),(194,124,26),(195,124,28),(196,125,7),(197,127,31),(198,127,24),(199,126,12),(200,126,10),(201,128,10),(202,128,12),(203,129,4),(204,130,31),(205,130,33),(206,131,16),(207,132,33),(208,132,24),(209,133,7),(210,134,4),(211,135,18),(212,136,12),(213,136,10),(214,137,32),(215,138,24),(216,139,12),(217,139,7),(218,140,2),(219,140,1),(220,140,3),(221,141,7),(222,142,11),(223,142,14),(224,142,9),(225,143,32),(226,144,7),(227,145,4),(228,146,16),(229,146,7),(230,147,11),(231,148,10),(232,148,12),(233,149,26),(234,149,23),(235,149,28),(236,150,22),(237,151,18),(238,152,19),(239,153,10),(240,153,12),(241,154,32),(242,155,16),(243,155,7),(244,156,10),(245,156,7),(246,157,14),(247,157,9),(248,157,11),(249,158,38),(250,159,23),(251,160,33),(252,160,31),(253,161,19),(254,162,9),(255,163,7),(256,163,20),(257,164,38),(258,165,9),(259,166,32),(260,167,10),(261,167,12),(262,168,10),(263,168,12),(264,170,10),(265,170,7),(266,169,14),(267,169,11),(268,171,24),(269,172,7),(270,173,10),(271,173,12),(272,174,18),(273,175,12),(274,175,7),(275,176,31),(276,176,33),(277,177,23),(278,178,18),(279,179,32),(280,180,18),(281,181,40),(282,182,14),(283,182,11),(284,182,9),(285,183,32),(286,184,9),(287,185,32),(288,186,18),(289,187,32),(290,188,9),(291,188,11),(292,188,14),(293,189,23),(294,190,32),(295,191,32),(296,192,32),(297,193,32),(298,194,32),(299,195,32),(300,196,28),(301,196,26),(302,197,32),(303,198,18),(304,199,18),(305,200,23),(306,200,26),(307,200,28),(308,201,18),(309,202,23),(310,202,26),(311,202,28),(312,203,18),(313,204,18),(314,205,14),(315,205,9),(316,205,11);
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
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,45,'<com.jx.ad.AndroidThemeService$4: void run()>',120,'r',NULL),(2,46,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(3,6,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(4,47,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(5,48,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(6,49,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(7,45,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(8,50,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(9,51,'<com.jx.ad.AndroidThemeService$5: void run()>',113,'r',NULL),(10,4,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(11,52,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(12,53,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(13,54,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(14,2,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(15,48,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(16,45,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(17,58,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(18,54,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(19,59,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(20,59,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(21,47,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(22,61,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(23,62,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(24,63,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(25,41,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(26,65,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(27,66,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(28,67,'<com.jx.ad.AndroidThemeService$4: void run()>',125,'r',NULL),(29,68,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(30,49,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(31,71,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(32,72,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(33,48,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(34,74,'<com.km.tool.ApnManager: int CreateWapApn()>',27,'p',NULL),(35,23,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(36,75,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(37,77,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(38,78,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(39,26,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(40,79,'<com.km.tool.ApnManager: int getApnId(java.lang.String)>',6,'p',NULL),(41,80,'<com.km.launcher.LauncherModel: com.km.launcher.Widget getPhotoFrameInfo(android.content.Context,int,int,int)>',15,'p',NULL),(42,30,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(43,1,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(44,82,'<com.km.ad.AdService$1: void run()>',11,'s',NULL),(45,83,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(46,38,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'p',NULL),(47,84,'<com.km.launcher.Search: void sendLaunchIntent(java.lang.String,android.net.Uri,java.lang.String,android.os.Bundle,int,java.lang.String,android.server.search.SearchableInfo)>',20,'a',NULL),(48,8,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(49,79,'<com.km.tool.ApnManager: int CreateGPRSApn()>',30,'p',0),(50,42,'<com.km.launcher.LauncherProvider: void sendNotify(android.net.Uri)>',9,'p',0),(51,18,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(52,85,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(53,86,'<com.km.tool.Util: void startServiceWithSingleMode(android.content.Context,java.lang.Class)>',7,'s',NULL),(54,34,'<com.km.launcher.InstallShortcutReceiver: boolean findEmptyCell(android.content.Context,int[],int)>',19,'p',NULL),(55,87,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(56,88,'<com.km.launcher.LauncherModel: com.km.launcher.Widget getPhotoFrameInfo(android.content.Context,int,int,int)>',15,'p',NULL),(57,32,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(58,79,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',9,'p',NULL),(59,24,'<com.km.launcher.Launcher: void startActivitySafely(android.content.Intent)>',3,'a',0),(60,4,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(61,61,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(62,28,'<com.jx.WelcomeActivity: void onResume()>',67,'a',NULL),(63,16,'<com.km.launcher.InstallShortcutReceiver: boolean findEmptyCell(android.content.Context,int[],int)>',19,'p',NULL),(64,1,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(65,80,'<com.km.launcher.LauncherModel: boolean shortcutExists(android.content.Context,java.lang.String,android.content.Intent)>',12,'p',NULL),(66,93,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(67,7,'<com.km.launcher.Launcher: void startWallpaper()>',5,'a',NULL),(68,3,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(69,74,'<com.km.tool.ApnManager: int CreateWapApn()>',30,'p',0),(70,25,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(71,24,'<com.km.launcher.Launcher: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(72,97,'<com.jx.ad.AndroidThemeService$5: void run()>',116,'r',NULL),(73,1,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(74,80,'<com.km.launcher.LauncherModel: void addItemToDatabase(android.content.Context,com.km.launcher.ItemInfo,long,int,int,int,boolean)>',17,'p',NULL),(75,65,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(76,100,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(77,102,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(78,79,'<com.km.tool.ApnManager: int CreateGPRSApn()>',27,'p',NULL),(79,103,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(80,104,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(81,19,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'p',NULL),(82,7,'<com.km.launcher.Launcher: boolean onKeyDown(int,android.view.KeyEvent)>',27,'a',NULL),(83,106,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(84,7,'<com.km.launcher.Launcher: boolean onKeyDown(int,android.view.KeyEvent)>',27,'a',NULL),(85,108,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(86,14,'<com.jx.WelcomeActivity: void onResume()>',67,'a',NULL),(87,23,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(88,79,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',19,'p',NULL),(89,88,'<com.km.launcher.LauncherModel: boolean shortcutExists(android.content.Context,java.lang.String,android.content.Intent)>',12,'p',NULL),(90,88,'<com.km.launcher.LauncherModel: com.km.launcher.FolderInfo getFolderById(android.content.Context,long)>',12,'p',NULL),(91,79,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',9,'p',NULL),(92,88,'<com.km.launcher.LauncherModel: void updateItemInDatabase(android.content.Context,com.km.launcher.ItemInfo)>',8,'p',NULL),(93,112,'<com.jx.ad.AndroidThemeService$5: void run()>',116,'r',NULL),(94,19,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',25,'p',NULL),(95,7,'<com.km.launcher.Launcher: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(96,74,'<com.km.tool.ApnManager: int getApnId(java.lang.String)>',6,'p',NULL),(97,22,'<com.km.launcher.LauncherProvider: void sendNotify(android.net.Uri)>',9,'p',0),(98,113,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(99,80,'<com.km.launcher.LauncherModel: com.km.launcher.FolderInfo getFolderById(android.content.Context,long)>',12,'p',NULL),(100,46,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(101,84,'<com.km.launcher.Search: void sendLaunchIntent(java.lang.String,android.net.Uri,java.lang.String,android.os.Bundle,int,java.lang.String,android.server.search.SearchableInfo)>',20,'a',NULL),(102,79,'<com.km.tool.ApnManager: int CreateGPRSApn()>',30,'p',0),(103,79,'<com.km.tool.ApnManager: void delete(int)>',8,'p',NULL),(104,46,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(105,74,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',9,'p',NULL),(106,106,'<com.jx.ad.AndroidThemeService$4: void run()>',125,'r',NULL),(107,16,'<com.km.launcher.InstallShortcutReceiver: boolean findEmptyCell(android.content.Context,int[],int)>',19,'p',NULL),(108,74,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',19,'p',NULL),(109,1,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(110,19,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',25,'p',NULL),(111,7,'<com.km.launcher.Launcher: void startWallpaper()>',5,'a',NULL),(112,114,'<com.km.launcher.Search: void sendLaunchIntent(java.lang.String,android.net.Uri,java.lang.String,android.os.Bundle,int,java.lang.String,android.server.search.SearchableInfo)>',20,'a',NULL),(113,65,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(114,115,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(115,79,'<com.km.tool.ApnManager: int getApnId(java.lang.String)>',6,'p',NULL),(116,1,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(117,19,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'p',NULL),(118,116,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(119,8,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(120,46,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(121,117,'<com.km.theme.ThemeManager: void setup()>',32,'a',NULL),(122,1,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(123,118,'<com.km.theme.ThemeManager: void setup()>',32,'a',NULL),(124,23,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(125,88,'<com.km.launcher.LauncherModel: com.km.launcher.FolderInfo getFolderById(android.content.Context,long)>',12,'p',NULL),(126,79,'<com.km.tool.ApnManager: int CreateWapApn()>',30,'p',0),(127,80,'<com.km.launcher.LauncherModel: void updateItemInDatabase(android.content.Context,com.km.launcher.ItemInfo)>',8,'p',NULL),(128,79,'<com.km.tool.ApnManager: int CreateWapApn()>',27,'p',NULL),(129,48,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(130,74,'<com.km.tool.ApnManager: int CreateGPRSApn()>',30,'p',0),(131,88,'<com.km.launcher.LauncherModel: boolean shortcutExists(android.content.Context,java.lang.String,android.content.Intent)>',12,'p',NULL),(132,24,'<com.km.launcher.Launcher: boolean onKeyDown(int,android.view.KeyEvent)>',27,'a',NULL),(133,88,'<com.km.launcher.LauncherModel: com.km.launcher.Widget getPhotoFrameInfo(android.content.Context,int,int,int)>',15,'p',NULL),(134,49,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(135,121,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(136,79,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',19,'p',NULL),(137,59,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(138,24,'<com.km.launcher.Launcher: void startWallpaper()>',5,'a',NULL),(139,7,'<com.km.launcher.Launcher: void startActivitySafely(android.content.Intent)>',3,'a',0),(140,122,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(141,7,'<com.km.launcher.Launcher: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(142,123,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(143,97,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(144,7,'<com.km.launcher.Launcher: void registerContentObservers()>',4,'p',NULL),(145,51,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(146,88,'<com.km.launcher.LauncherModel: void addItemToDatabase(android.content.Context,com.km.launcher.ItemInfo,long,int,int,int,boolean)>',17,'p',NULL),(147,11,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(148,82,'<com.km.ad.AdService$1: void run()>',6,'s',NULL),(149,126,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(150,22,'<com.km.launcher.LauncherProvider: void sendNotify(android.net.Uri)>',9,'p',0),(151,61,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(152,19,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'p',NULL),(153,79,'<com.km.tool.ApnManager: int CreateGPRSApn()>',27,'p',NULL),(154,100,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(155,88,'<com.km.launcher.LauncherModel: void addItemToDatabase(android.content.Context,com.km.launcher.ItemInfo,long,int,int,int,boolean)>',17,'p',NULL),(156,118,'<com.km.theme.ThemeManager: void setup()>',32,'a',NULL),(157,127,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(158,38,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',25,'p',NULL),(159,23,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(160,74,'<com.km.tool.ApnManager: int CreateGPRSApn()>',27,'p',NULL),(161,19,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'p',NULL),(162,8,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(163,86,'<com.km.tool.Util: void startServiceWithSingleMode(android.content.Context,java.lang.Class)>',7,'s',NULL),(164,38,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'p',NULL),(165,8,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(166,104,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(167,79,'<com.km.tool.ApnManager: int CreateWapApn()>',27,'p',NULL),(168,79,'<com.km.tool.ApnManager: void delete(int)>',8,'p',NULL),(169,14,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(170,88,'<com.km.launcher.LauncherModel: void updateItemInDatabase(android.content.Context,com.km.launcher.ItemInfo)>',8,'p',NULL),(171,24,'<com.km.launcher.Launcher: void registerContentObservers()>',4,'p',NULL),(172,7,'<com.km.launcher.Launcher: void registerContentObservers()>',4,'p',NULL),(173,79,'<com.km.tool.ApnManager: int CreateWapApn()>',30,'p',0),(174,116,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(175,7,'<com.km.launcher.Launcher: void startActivitySafely(android.content.Intent)>',3,'a',0),(176,74,'<com.km.tool.ApnManager: void delete(int)>',8,'p',NULL),(177,23,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(178,18,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(179,131,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(180,116,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(181,40,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(182,132,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(183,67,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(184,8,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(185,131,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(186,121,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(187,104,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(188,8,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(189,23,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(190,100,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(191,85,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(192,100,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(193,32,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(194,104,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(195,135,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(196,28,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(197,67,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(198,112,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(199,106,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(200,137,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(201,87,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(202,138,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(203,116,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(204,61,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(205,139,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,10),(2,2,5),(3,3,10),(4,4,10),(5,5,10),(6,7,10),(7,8,10),(8,9,11),(9,11,12),(10,12,13),(11,13,1),(12,14,10),(13,15,16),(14,16,12),(15,17,10),(16,18,10),(17,19,10),(18,20,22),(19,21,10),(20,22,10),(21,23,12),(22,24,19),(23,25,10),(24,26,21),(25,27,10),(26,28,12),(27,29,10),(28,32,10),(29,33,23),(30,34,21),(31,35,1),(32,36,25),(33,37,26),(34,38,26),(35,40,12),(36,41,12),(37,42,23),(38,43,2),(39,44,2),(40,45,12),(41,47,4),(42,46,4),(43,48,19),(44,49,10),(45,51,3),(46,52,3),(47,53,10),(48,54,29),(49,55,11),(50,56,19),(51,57,10),(52,63,33),(53,64,34),(54,66,33),(55,67,5),(56,69,33),(57,70,33),(58,71,10),(59,72,29),(60,73,33),(61,74,10),(62,75,2),(63,76,33),(64,77,33),(65,79,26),(66,78,25),(67,80,33),(68,81,12),(69,82,10),(70,83,3),(71,84,35),(72,85,16),(73,87,26),(74,86,35),(75,88,12),(76,90,36),(77,89,36),(78,91,4),(79,93,29),(80,94,4),(81,96,2),(82,98,2),(83,99,3),(84,101,3),(85,102,3),(86,103,10),(87,104,29),(88,106,26),(89,107,29),(90,108,10),(91,109,12),(92,110,12),(93,111,4),(94,112,10),(95,114,2),(96,115,33),(97,116,12),(98,117,10),(99,118,33),(100,119,12),(101,120,26),(102,122,12),(103,121,33),(104,123,22),(105,124,33),(106,125,4),(107,126,26),(108,127,33),(109,130,23),(110,131,2),(111,132,33),(112,133,26),(113,134,33),(114,135,4),(115,136,2),(116,137,33),(117,138,3),(118,139,4),(119,140,11),(120,141,29),(121,142,3),(122,143,35),(123,144,29),(124,146,36),(125,145,10),(126,147,13),(127,148,10),(128,149,33),(129,152,33),(130,151,12),(131,153,25),(132,154,10),(133,155,33),(134,156,10),(135,157,33),(136,158,33),(137,159,1),(138,160,33),(139,162,21),(140,163,33),(141,164,11),(142,165,33),(143,167,12),(144,171,22),(145,172,10),(146,173,34),(147,175,11),(148,176,22),(149,177,5),(150,178,12),(151,181,10),(152,182,10),(153,183,10),(154,184,29),(155,185,22),(156,186,2),(157,187,3),(158,188,13),(159,189,4),(160,190,29),(161,191,19),(162,192,3),(163,193,11),(164,194,26),(165,195,2),(166,196,10),(167,197,4),(168,198,34),(169,199,26),(170,200,16),(171,201,10),(172,203,12),(173,204,22),(174,205,12),(175,206,10),(176,207,12);
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
INSERT INTO `ICategories` VALUES (1,13,1),(2,35,1),(3,64,2),(4,159,1),(5,173,2),(6,198,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'com/jx/ad/BootSmsReceiverService'),(2,6,'com.android.packageinstaller.PackageInstallerActivity'),(3,10,'com.android.packageinstaller.PackageInstallerActivity'),(4,13,'com.nd.android.launcher.Launcher'),(5,30,'com.android.packageinstaller.PackageInstallerActivity'),(6,31,'com.android.packageinstaller.PackageInstallerActivity'),(7,35,'com.nd.android.launcher.Launcher'),(8,39,'com/km/ad/AdService'),(9,50,'com/km/charge/CycleService'),(10,58,'.Launcher'),(11,60,'com/jx/WelcomeActivity'),(12,59,'(.*).Launcher'),(13,62,'(.*).Launcher'),(14,61,'com.android.packageinstaller.PackageInstallerActivity'),(15,65,'.Launcher'),(16,68,'com/km/theme/ThemeListActivity'),(17,67,'com/jx/ad/BootSmsReceiverService'),(18,79,'com/jx/ad/AndroidThemeService'),(19,92,'.Launcher'),(20,95,'(.*).Launcher'),(21,94,'com/jx/ad/AndroidThemeService'),(22,97,'(.*).Launcher'),(23,98,'com/jx/ad/AndroidThemeService'),(24,100,'.Launcher'),(25,99,'com/jx/ad/AndroidThemeService'),(26,101,'com/jx/ad/AndroidThemeService'),(27,105,'com/km/theme/ThemeListActivity'),(28,104,'com/jx/ad/AndroidThemeService'),(29,107,'com/jx/ad/AndroidThemeService'),(30,113,'com/jx/WelcomeActivity'),(31,114,'com/jx/ad/AndroidThemeService'),(32,120,'com/jx/ad/AndroidThemeService'),(33,125,'com/jx/ad/AndroidThemeService'),(34,128,'com/km/charge/MainActivity'),(35,129,'com/km/charge/MainActivity'),(36,150,'com/km/theme/ThemeListActivity'),(37,159,'com.nd.android.launcher.Launcher'),(38,161,'com/km/ad/AdService'),(39,166,'com/km/charge/MainActivity'),(40,168,'com/jx/WelcomeActivity'),(41,170,'com/km/charge/CycleService'),(42,169,'com/jx/WelcomeActivity'),(43,174,'com/jx/WelcomeActivity'),(44,177,'com/jx/ad/BootSmsReceiverService'),(45,179,'com.android.packageinstaller.PackageInstallerActivity'),(46,180,'com/jx/WelcomeActivity'),(47,187,'com/jx/ad/AndroidThemeService'),(48,189,'com/jx/ad/AndroidThemeService'),(49,190,'com/jx/ad/AndroidThemeService'),(50,195,'com/jx/ad/AndroidThemeService'),(51,199,'com/jx/ad/AndroidThemeService'),(52,202,'com.android.packageinstaller.PackageInstallerActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,1),(2,3,3),(3,4,4),(4,5,5),(5,6,6),(6,7,7),(7,8,8),(8,9,9),(9,10,10),(10,11,11),(11,12,12),(12,14,13),(13,16,14),(14,17,15),(15,18,16),(16,19,17),(17,21,18),(18,22,19),(19,23,20),(20,24,21),(21,25,22),(22,26,23),(23,27,24),(24,28,25),(25,29,26),(26,30,27),(27,31,28),(28,32,30),(29,34,32),(30,41,37),(31,40,36),(32,45,38),(33,48,39),(34,49,41),(35,53,43),(36,55,45),(37,56,46),(38,57,48),(39,61,50),(40,71,52),(41,74,54),(42,81,56),(43,82,58),(44,88,59),(45,90,60),(46,89,61),(47,103,68),(48,108,72),(49,109,73),(50,110,77),(51,112,80),(52,116,82),(53,117,84),(54,119,85),(55,122,86),(56,140,92),(57,146,94),(58,145,96),(59,147,97),(60,148,98),(61,151,99),(62,154,101),(63,156,103),(64,162,105),(65,164,108),(66,167,113),(67,172,119),(68,175,125),(69,178,127),(70,179,128),(71,181,129),(72,182,130),(73,183,131),(74,188,133),(75,191,135),(76,193,136),(77,196,137),(78,201,138),(79,202,139),(80,203,140),(81,205,141),(82,206,143),(83,207,144);
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
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'CostTips'),(2,3,'CostTips'),(3,4,'CostTips'),(4,5,'CostTips'),(5,7,'CostTips'),(6,8,'CostTips'),(7,9,'CostTips'),(8,13,'from'),(9,14,'CostTips'),(10,15,'resownerid'),(11,15,'respid'),(12,17,'CostTips'),(13,18,'CostTips'),(14,19,'CostTips'),(15,19,'SetNetwork'),(16,21,'CostTips'),(17,22,'CostTips'),(18,24,'respid'),(19,25,'CostTips'),(20,27,'CostTips'),(21,29,'CostTips'),(22,32,'CostTips'),(23,35,'from'),(24,37,'resownerid'),(25,38,'resownerid'),(26,37,'respid'),(27,38,'respid'),(28,43,'resownerid'),(29,44,'resownerid'),(30,44,'respid'),(31,43,'respid'),(32,47,'resownerid'),(33,46,'resownerid'),(34,48,'respid'),(35,47,'respid'),(36,46,'respid'),(37,49,'CostTips'),(38,51,'resownerid'),(39,52,'resownerid'),(40,51,'respid'),(41,52,'respid'),(42,53,'CostTips'),(43,54,'resownerid'),(44,55,'CostTips'),(45,54,'respid'),(46,56,'respid'),(47,58,'startother'),(48,57,'CostTips'),(49,59,'startother'),(50,62,'startother'),(51,63,'android.intent.extra.INTENT'),(52,65,'startother'),(53,66,'android.intent.extra.INTENT'),(54,69,'android.intent.extra.TITLE'),(55,69,'android.intent.extra.INTENT'),(56,70,'android.intent.extra.INTENT'),(57,71,'CostTips'),(58,72,'resownerid'),(59,72,'respid'),(60,73,'android.intent.extra.TITLE'),(61,73,'android.intent.extra.INTENT'),(62,74,'CostTips'),(63,75,'resownerid'),(64,74,'SetNetwork'),(65,76,'android.intent.extra.INTENT'),(66,75,'respid'),(67,77,'android.intent.extra.TITLE'),(68,79,'resownerid'),(69,77,'android.intent.extra.INTENT'),(70,79,'respid'),(71,80,'android.intent.extra.TITLE'),(72,80,'android.intent.extra.INTENT'),(73,82,'CostTips'),(74,83,'resownerid'),(75,83,'respid'),(76,84,'com.android.contacts.extra.FILTER_TEXT'),(77,85,'resownerid'),(78,87,'resownerid'),(79,86,'com.android.contacts.extra.FILTER_TEXT'),(80,85,'respid'),(81,87,'respid'),(82,91,'resownerid'),(83,91,'respid'),(84,92,'startother'),(85,93,'resownerid'),(86,93,'respid'),(87,94,'resownerid'),(88,95,'startother'),(89,94,'respid'),(90,96,'resownerid'),(91,96,'respid'),(92,97,'startother'),(93,98,'resownerid'),(94,98,'respid'),(95,99,'resownerid'),(96,100,'startother'),(97,99,'respid'),(98,101,'resownerid'),(99,101,'respid'),(100,102,'resownerid'),(101,102,'respid'),(102,103,'CostTips'),(103,104,'resownerid'),(104,106,'resownerid'),(105,104,'respid'),(106,106,'respid'),(107,107,'resownerid'),(108,108,'CostTips'),(109,107,'respid'),(110,111,'resownerid'),(111,111,'respid'),(112,112,'CostTips'),(113,114,'resownerid'),(114,114,'respid'),(115,115,'android.intent.extra.INTENT'),(116,117,'CostTips'),(117,118,'android.intent.extra.INTENT'),(118,120,'resownerid'),(119,120,'respid'),(120,121,'android.intent.extra.TITLE'),(121,121,'android.intent.extra.INTENT'),(122,124,'android.intent.extra.INTENT'),(123,125,'resownerid'),(124,125,'respid'),(125,126,'resownerid'),(126,127,'android.intent.extra.TITLE'),(127,126,'respid'),(128,127,'android.intent.extra.INTENT'),(129,131,'resownerid'),(130,132,'android.intent.extra.INTENT'),(131,133,'resownerid'),(132,131,'respid'),(133,133,'respid'),(134,134,'android.intent.extra.TITLE'),(135,135,'resownerid'),(136,134,'android.intent.extra.INTENT'),(137,136,'resownerid'),(138,135,'respid'),(139,136,'respid'),(140,137,'android.intent.extra.TITLE'),(141,138,'resownerid'),(142,137,'android.intent.extra.INTENT'),(143,139,'resownerid'),(144,138,'respid'),(145,139,'respid'),(146,140,'CostTips'),(147,141,'resownerid'),(148,142,'resownerid'),(149,141,'respid'),(150,142,'respid'),(151,143,'com.android.contacts.extra.FILTER_TEXT'),(152,144,'resownerid'),(153,144,'respid'),(154,145,'CostTips'),(155,145,'SetNetwork'),(156,148,'CostTips'),(157,149,'android.intent.extra.INTENT'),(158,152,'android.intent.extra.INTENT'),(159,154,'CostTips'),(160,155,'android.intent.extra.TITLE'),(161,155,'android.intent.extra.INTENT'),(162,156,'CostTips'),(163,157,'android.intent.extra.INTENT'),(164,158,'android.intent.extra.TITLE'),(165,158,'android.intent.extra.INTENT'),(166,159,'from'),(167,160,'android.intent.extra.INTENT'),(168,163,'android.intent.extra.TITLE'),(169,164,'CostTips'),(170,163,'android.intent.extra.INTENT'),(171,165,'android.intent.extra.TITLE'),(172,165,'android.intent.extra.INTENT'),(173,172,'CostTips'),(174,175,'CostTips'),(175,181,'CostTips'),(176,182,'CostTips'),(177,183,'CostTips'),(178,184,'resownerid'),(179,184,'respid'),(180,186,'resownerid'),(181,186,'respid'),(182,187,'resownerid'),(183,187,'respid'),(184,189,'resownerid'),(185,189,'respid'),(186,190,'resownerid'),(187,190,'respid'),(188,191,'respid'),(189,192,'resownerid'),(190,192,'respid'),(191,193,'CostTips'),(192,194,'resownerid'),(193,194,'respid'),(194,195,'resownerid'),(195,195,'respid'),(196,196,'CostTips'),(197,197,'resownerid'),(198,197,'respid'),(199,199,'resownerid'),(200,199,'respid'),(201,200,'resownerid'),(202,200,'respid'),(203,201,'CostTips'),(204,206,'CostTips');
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
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,2,3),(4,3,4),(5,4,5),(6,5,6),(7,6,1),(8,7,1),(9,8,7),(10,10,1),(11,9,7),(12,11,8),(13,12,8),(14,13,4),(15,14,9),(16,15,9),(17,16,2),(18,16,3),(19,17,6),(20,18,6),(21,19,5),(22,20,1),(23,21,1),(24,22,6),(25,23,7),(26,24,1),(27,25,3),(28,25,2),(29,26,4),(30,27,8),(31,28,5),(32,29,9),(33,30,6),(34,31,3),(35,31,2),(36,32,4),(37,33,5),(38,34,6),(39,35,14),(40,36,15),(41,37,10),(42,37,11),(43,37,21),(44,37,20),(45,37,17),(46,37,18),(47,37,19),(48,37,13),(49,38,11),(50,38,10),(51,38,21),(52,38,19),(53,38,20),(54,38,17),(55,38,18),(56,38,13),(57,39,17),(58,39,19),(59,39,18),(60,39,21),(61,39,20),(62,39,11),(63,39,10),(64,39,13),(65,40,22),(66,41,15),(67,42,21),(68,42,20),(69,42,19),(70,42,18),(71,42,17),(72,42,13),(73,42,11),(74,42,10),(75,43,24),(76,44,14),(77,45,18),(78,45,28),(79,45,27),(80,46,18),(81,46,27),(82,46,28),(83,47,31),(84,48,28),(85,48,27),(86,48,18),(87,49,32),(88,50,28),(89,50,27),(90,50,18),(91,51,24),(92,52,18),(93,52,27),(94,52,28),(95,53,27),(96,53,28),(97,53,18),(98,54,27),(99,54,28),(100,54,18),(101,55,22),(102,56,18),(103,56,28),(104,56,27),(105,57,15),(106,58,18),(107,58,28),(108,58,27),(109,60,18),(110,60,27),(111,60,28),(112,59,18),(113,59,28),(114,59,27),(115,61,28),(116,61,18),(117,61,27),(118,62,18),(119,62,28),(120,62,27),(121,63,18),(122,63,27),(123,63,28),(124,64,27),(125,64,28),(126,64,18),(127,65,28),(128,65,27),(129,65,18),(130,66,27),(131,66,28),(132,66,18),(133,67,27),(134,67,28),(135,67,18),(136,68,32),(137,69,31),(138,70,18),(139,70,28),(140,70,27),(141,71,31),(142,72,32),(143,73,26),(144,73,29),(145,73,2),(146,73,3),(147,73,4),(148,74,15),(149,75,28),(150,75,27),(151,75,18),(152,76,28),(153,76,27),(154,76,18),(155,77,27),(156,77,28),(157,77,18),(158,78,27),(159,78,28),(160,78,18),(161,79,27),(162,79,28),(163,79,18),(164,80,18),(165,80,28),(166,80,27),(167,81,18),(168,81,27),(169,81,28),(170,82,37),(171,82,38),(172,83,18),(173,83,27),(174,83,28),(175,84,27),(176,84,28),(177,84,18),(178,85,14),(179,86,18),(180,86,27),(181,86,28),(182,87,2),(183,87,3),(184,87,4),(185,87,29),(186,87,26),(187,88,24),(188,89,22),(189,90,38),(190,90,37),(191,91,15),(192,92,2),(193,92,4),(194,92,3),(195,92,29),(196,92,26),(197,93,15);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,6,3),(3,6,2),(4,6,1),(5,7,1),(6,7,2),(7,7,3),(8,8,2),(9,10,1),(10,9,2),(11,20,1),(12,21,1),(13,21,2),(14,21,3),(15,23,2),(16,24,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,35,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(2,37,'package',NULL,NULL,NULL,NULL,NULL),(3,38,'package',NULL,NULL,NULL,NULL,NULL),(4,39,'package',NULL,NULL,NULL,NULL,NULL),(5,42,'package',NULL,NULL,NULL,NULL,NULL),(6,44,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(7,45,'package',NULL,NULL,NULL,NULL,NULL),(8,46,'package',NULL,NULL,NULL,NULL,NULL),(9,48,'package',NULL,NULL,NULL,NULL,NULL),(10,50,'package',NULL,NULL,NULL,NULL,NULL),(11,52,'package',NULL,NULL,NULL,NULL,NULL),(12,53,'package',NULL,NULL,NULL,NULL,NULL),(13,54,'package',NULL,NULL,NULL,NULL,NULL),(14,56,'package',NULL,NULL,NULL,NULL,NULL),(15,58,'package',NULL,NULL,NULL,NULL,NULL),(16,59,'package',NULL,NULL,NULL,NULL,NULL),(17,60,'package',NULL,NULL,NULL,NULL,NULL),(18,61,'package',NULL,NULL,NULL,NULL,NULL),(19,62,'package',NULL,NULL,NULL,NULL,NULL),(20,63,'package',NULL,NULL,NULL,NULL,NULL),(21,64,'package',NULL,NULL,NULL,NULL,NULL),(22,65,'package',NULL,NULL,NULL,NULL,NULL),(23,66,'package',NULL,NULL,NULL,NULL,NULL),(24,67,'package',NULL,NULL,NULL,NULL,NULL),(25,70,'package',NULL,NULL,NULL,NULL,NULL),(26,75,'package',NULL,NULL,NULL,NULL,NULL),(27,76,'package',NULL,NULL,NULL,NULL,NULL),(28,77,'package',NULL,NULL,NULL,NULL,NULL),(29,78,'package',NULL,NULL,NULL,NULL,NULL),(30,79,'package',NULL,NULL,NULL,NULL,NULL),(31,80,'package',NULL,NULL,NULL,NULL,NULL),(32,81,'package',NULL,NULL,NULL,NULL,NULL),(33,83,'package',NULL,NULL,NULL,NULL,NULL),(34,84,'package',NULL,NULL,NULL,NULL,NULL),(35,85,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(36,86,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'com.jx.theme.n413097392'),(2,6,'com.android.packageinstaller'),(3,10,'com.android.packageinstaller'),(4,13,'NULL-CONSTANT'),(5,15,'com.jx.util'),(6,30,'com.android.packageinstaller'),(7,31,'com.android.packageinstaller'),(8,35,'NULL-CONSTANT'),(9,39,'com.km.launcher'),(10,50,'com.km.launcher'),(11,58,''),(12,60,'com.jx.theme.n413097392'),(13,59,''),(14,62,'(.*)'),(15,61,'com.android.packageinstaller'),(16,65,'(.*)'),(17,68,'com.km.launcher'),(18,67,'com.jx.theme.n270853774'),(19,72,'com.jx.util'),(20,75,'com.jx.util'),(21,79,'com.jx.theme.n413097392'),(22,83,'com.jx.util'),(23,85,'com.jx.util'),(24,87,'com.jx.util'),(25,91,'com.jx.util'),(26,92,''),(27,93,'com.jx.util'),(28,95,''),(29,94,'com.jx.theme.n413097392'),(30,96,'com.jx.util'),(31,97,'(.*)'),(32,98,'com.jx.theme.n413097392'),(33,100,'(.*)'),(34,99,'com.jx.theme.n1183252343'),(35,101,'com.jx.theme.n413097392'),(36,102,'com.jx.util'),(37,105,'com.km.launcher'),(38,106,'com.jx.util'),(39,104,'com.jx.theme.n413097392'),(40,107,'com.jx.theme.n1183252343'),(41,111,'com.jx.util'),(42,113,'com.jx.theme.n413097392'),(43,114,'com.jx.theme.n1183252343'),(44,120,'com.jx.theme.n1183252343'),(45,125,'com.jx.theme.n1183252343'),(46,128,'com.km.launcher'),(47,129,'com.km.launcher'),(48,150,'com.km.launcher'),(49,159,'NULL-CONSTANT'),(50,161,'com.km.launcher'),(51,166,'com.km.launcher'),(52,168,'com.jx.theme.n1183252343'),(53,170,'com.km.launcher'),(54,169,'com.jx.theme.n270853774'),(55,174,'com.jx.theme.n1183252343'),(56,177,'com.jx.theme.n1183252343'),(57,179,'com.android.packageinstaller'),(58,180,'com.jx.theme.n270853774'),(59,184,'com.jx.util'),(60,186,'com.jx.util'),(61,187,'com.jx.theme.n270853774'),(62,189,'com.jx.theme.n270853774'),(63,190,'com.jx.theme.n270853774'),(64,192,'com.jx.util'),(65,194,'com.jx.util'),(66,195,'com.jx.theme.n270853774'),(67,197,'com.jx.util'),(68,199,'com.jx.theme.n270853774'),(69,200,'com.jx.util'),(70,202,'com.android.packageinstaller');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,4,0),(3,4,0),(4,5,0),(5,6,0),(6,7,0),(7,7,0),(8,8,0),(9,8,0),(10,9,0),(11,16,0),(12,16,0),(13,18,0),(14,19,0),(15,19,0),(16,18,0),(17,20,0),(18,20,0),(19,21,0),(20,23,0),(21,24,0),(22,25,0),(23,27,0),(24,30,0),(25,32,0),(26,32,0),(27,34,0),(28,36,0),(29,38,0),(30,40,0),(31,41,0),(32,41,0),(33,43,0),(34,44,0),(35,45,0),(36,46,0),(37,47,0),(38,48,0),(39,49,0),(40,50,0),(41,51,0),(42,52,0),(43,53,0),(44,54,0),(45,55,0),(46,56,0),(47,57,0),(48,58,0),(49,59,0),(50,60,0),(51,53,0),(52,61,0),(53,20,0),(54,62,0),(55,63,0),(56,53,0),(57,64,0),(58,65,0),(59,66,0),(60,67,0),(61,68,0),(62,69,0),(63,70,0),(64,57,0),(65,59,0),(66,71,0),(67,72,0),(68,62,0),(69,61,0),(70,73,0),(71,61,0),(72,62,0),(73,74,0),(74,75,0),(75,55,0),(76,56,0),(77,58,0),(78,60,0),(79,61,0),(80,20,0),(81,62,0),(82,76,0),(83,53,0),(84,65,0),(85,77,0),(86,66,0),(87,78,0),(88,71,0),(89,79,0),(90,80,0),(91,81,0),(92,82,0),(93,83,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,3,0,0),(3,4,1,0),(4,5,1,0),(5,6,1,0),(6,7,0,0),(7,8,1,0),(8,9,1,0),(9,10,1,0),(10,11,0,0),(11,12,1,0),(12,13,1,0),(13,14,0,0),(14,15,1,0),(15,16,1,0),(16,17,1,0),(17,18,1,0),(18,19,1,0),(19,20,1,0),(20,21,1,0),(21,22,1,0),(22,23,1,0),(23,24,1,0),(24,25,1,0),(25,26,1,0),(26,27,1,0),(27,28,1,0),(28,29,1,0),(29,30,1,0),(30,31,0,0),(31,32,0,0),(32,33,1,0),(33,35,1,0),(34,36,1,0),(35,39,0,0),(36,38,1,0),(37,42,1,0),(38,43,1,0),(39,44,0,0),(40,45,1,0),(41,47,1,0),(42,48,1,0),(43,42,1,0),(44,43,1,0),(45,47,1,0),(46,42,1,0),(47,43,1,0),(48,51,1,0),(49,52,1,0),(50,53,0,0),(51,43,1,0),(52,42,1,0),(53,55,1,0),(54,43,1,0),(55,57,1,0),(56,60,1,0),(57,61,1,0),(58,62,0,0),(59,62,0,0),(60,64,0,0),(61,66,0,0),(62,62,0,0),(63,67,1,0),(64,68,1,0),(65,62,0,0),(66,67,1,0),(67,70,0,0),(68,71,0,0),(69,67,1,0),(70,67,1,0),(71,72,1,0),(72,73,1,0),(73,67,1,0),(74,75,1,0),(75,73,1,0),(76,67,1,0),(77,67,1,0),(78,77,1,0),(79,73,0,0),(80,67,1,0),(81,79,1,0),(82,80,1,0),(83,73,1,0),(84,82,1,0),(85,83,1,0),(86,84,1,0),(87,73,1,0),(88,85,1,0),(89,82,1,0),(90,84,1,0),(91,73,1,0),(92,86,0,0),(93,87,1,0),(94,73,0,0),(95,86,0,0),(96,87,1,0),(97,86,0,0),(98,73,0,0),(99,87,0,0),(100,86,0,0),(101,73,0,0),(102,87,1,0),(103,93,1,0),(104,73,0,0),(105,95,0,0),(106,87,1,0),(107,87,0,0),(108,98,1,0),(109,101,1,0),(110,101,1,0),(111,87,1,0),(112,106,1,0),(113,109,0,0),(114,87,0,0),(115,111,1,0),(116,112,1,0),(117,113,1,0),(118,111,1,0),(119,114,1,0),(120,87,0,0),(121,111,1,0),(122,112,1,0),(123,116,1,0),(124,111,1,0),(125,87,0,0),(126,119,1,0),(127,111,1,0),(128,121,0,0),(129,123,0,0),(130,122,1,0),(131,119,1,0),(132,111,1,0),(133,124,1,0),(134,111,1,0),(135,119,1,0),(136,124,1,0),(137,111,1,0),(138,119,1,0),(139,124,1,0),(140,129,1,0),(141,119,1,0),(142,124,1,0),(143,132,1,0),(144,124,1,0),(145,134,1,0),(146,132,1,0),(147,135,1,0),(148,137,1,0),(149,138,1,0),(150,141,0,0),(151,140,1,0),(152,138,1,0),(153,142,1,0),(154,143,1,0),(155,138,1,0),(156,145,1,0),(157,138,1,0),(158,138,1,0),(159,147,0,0),(160,138,1,0),(161,148,0,0),(162,149,1,0),(163,138,1,0),(164,151,1,0),(165,138,1,0),(166,156,0,0),(167,157,1,0),(168,159,0,0),(169,162,0,0),(170,163,0,0),(171,165,1,0),(172,166,1,0),(173,169,1,0),(174,177,0,0),(175,178,1,0),(176,179,1,0),(177,181,0,0),(178,182,1,0),(179,183,0,0),(180,184,0,0),(181,185,1,0),(182,186,1,0),(183,187,1,0),(184,188,1,0),(185,189,1,0),(186,188,1,0),(187,188,0,0),(188,191,1,0),(189,188,0,0),(190,188,0,0),(191,193,1,0),(192,188,1,0),(193,194,1,0),(194,188,1,0),(195,188,0,0),(196,195,1,0),(197,188,1,0),(198,196,1,0),(199,188,0,0),(200,197,1,0),(201,198,1,0),(202,199,0,0),(203,200,1,0),(204,201,1,0),(205,202,1,0),(206,204,1,0),(207,205,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAuthorities`
--

LOCK TABLES `PAuthorities` WRITE;
/*!40000 ALTER TABLE `PAuthorities` DISABLE KEYS */;
INSERT INTO `PAuthorities` VALUES (1,1,'com.km.launcher.settings'),(2,2,'com.km.launcher.settings'),(3,3,'com.km.launcher.settings');
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
INSERT INTO `PermissionStrings` VALUES (12,'android.permission.ACCESS_NETWORK_STATE'),(18,'android.permission.CALL_PHONE'),(11,'android.permission.CHANGE_NETWORK_STATE'),(22,'android.permission.EXPAND_STATUS_BAR'),(15,'android.permission.GET_TASKS'),(19,'android.permission.GLOBAL_SEARCH_CONTROL'),(10,'android.permission.INTERNET'),(17,'android.permission.READ_CONTACTS'),(7,'android.permission.READ_PHONE_STATE'),(21,'android.permission.READ_SMS'),(8,'android.permission.RECEIVE_BOOT_COMPLETED'),(6,'android.permission.RECEIVE_MMS'),(5,'android.permission.RECEIVE_SMS'),(14,'android.permission.RECEIVE_WAP_PUSH'),(2,'android.permission.SEND_SMS'),(1,'android.permission.SET_WALLPAPER'),(20,'android.permission.SET_WALLPAPER_HINTS'),(23,'android.permission.VIBRATE'),(13,'android.permission.WAKE_LOCK'),(4,'android.permission.WRITE_APN_SETTINGS'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(9,'android.permission.WRITE_SETTINGS'),(16,'android.permission.WRITE_SMS'),(27,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(26,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(28,'com.android.launcher.permission.INSTALL_SHORTCUT'),(24,'com.android.launcher.permission.READ_SETTINGS'),(29,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(25,'com.android.launcher.permission.WRITE_SETTINGS');
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
INSERT INTO `Permissions` VALUES (24,'n'),(25,'n'),(28,'n'),(29,'n');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Providers`
--

LOCK TABLES `Providers` WRITE;
/*!40000 ALTER TABLE `Providers` DISABLE KEYS */;
INSERT INTO `Providers` VALUES (1,22,0,NULL,'com.android.launcher.permission.WRITE_SETTINGS'),(2,22,0,NULL,'com.android.launcher.permission.WRITE_SETTINGS'),(3,42,0,NULL,'com.android.launcher.permission.WRITE_SETTINGS');
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
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,'package','',NULL,NULL,NULL,NULL),(2,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(3,'package','',NULL,NULL,NULL,NULL),(4,'package','',NULL,NULL,NULL,NULL),(5,'package','',NULL,NULL,NULL,NULL),(6,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(7,'package','',NULL,NULL,NULL,NULL),(8,'package','',NULL,NULL,NULL,NULL),(9,'package','',NULL,NULL,NULL,NULL),(10,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(11,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(12,'package','',NULL,NULL,NULL,NULL),(13,'package','',NULL,NULL,NULL,NULL),(14,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(15,'package','',NULL,NULL,NULL,NULL),(16,'package','',NULL,NULL,NULL,NULL),(17,'package','',NULL,NULL,NULL,NULL),(18,'package','',NULL,NULL,NULL,NULL),(19,'package','',NULL,NULL,NULL,NULL),(20,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(21,'package','',NULL,NULL,NULL,NULL),(22,'package','',NULL,NULL,NULL,NULL),(23,'package','',NULL,NULL,NULL,NULL),(24,'package','',NULL,NULL,NULL,NULL),(25,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(26,'package','',NULL,NULL,NULL,NULL),(27,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(28,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(29,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(30,'package','',NULL,NULL,NULL,NULL),(31,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(32,'package','',NULL,NULL,NULL,NULL),(33,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(34,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(35,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(36,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(37,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=(.*)',NULL,NULL,NULL),(38,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=NULL-CONSTANT',NULL,NULL,NULL),(39,'package','',NULL,NULL,NULL,NULL),(40,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(41,'package','',NULL,NULL,NULL,NULL),(42,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(43,'package','',NULL,NULL,NULL,NULL),(44,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(45,'package','',NULL,NULL,NULL,NULL),(46,'package','',NULL,NULL,NULL,NULL),(47,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(48,'package','',NULL,NULL,NULL,NULL),(49,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(50,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(51,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=false',NULL,NULL,NULL),(52,'package','',NULL,NULL,NULL,NULL),(53,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(54,'package','',NULL,NULL,NULL,NULL),(55,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(56,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(57,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(58,'package','',NULL,NULL,NULL,NULL),(59,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(60,'tel','(.*)',NULL,NULL,NULL,NULL),(61,'tel','(.*)',NULL,NULL,NULL,NULL),(62,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(63,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(64,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(65,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(66,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(67,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(68,'package','',NULL,NULL,NULL,NULL),(69,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(70,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(71,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(72,'package','',NULL,NULL,NULL,NULL),(73,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=(.*)',NULL,NULL,NULL),(74,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(75,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(76,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(77,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=NULL-CONSTANT',NULL,NULL,NULL),(78,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(79,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(80,'package','',NULL,NULL,NULL,NULL),(81,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(82,NULL,NULL,'http://se.zxin.cc?prod=search&op=redirect&id=10&v=7&ky=(.*)',NULL,NULL,NULL),(83,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(84,'package','',NULL,NULL,NULL,NULL),(85,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(86,NULL,NULL,'http://se.zxin.cc?prod=search&op=redirect&id=10&v=7&ky=NULL-CONSTANT',NULL,NULL,NULL),(87,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(88,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(89,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(90,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(91,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(92,'package','',NULL,NULL,NULL,NULL),(93,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(94,'tel','(.*)',NULL,NULL,NULL,NULL),(95,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(96,'package','',NULL,NULL,NULL,NULL),(97,'package','',NULL,NULL,NULL,NULL),(98,'package','',NULL,NULL,NULL,NULL),(99,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(100,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(101,'package','',NULL,NULL,NULL,NULL),(102,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=false',NULL,NULL,NULL),(103,'package','',NULL,NULL,NULL,NULL),(104,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(105,'package','',NULL,NULL,NULL,NULL),(106,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(107,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(108,'package','',NULL,NULL,NULL,NULL),(109,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(110,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=false',NULL,NULL,NULL),(111,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(112,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(113,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(114,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(115,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(116,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(117,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(118,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(119,'package','',NULL,NULL,NULL,NULL),(120,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(121,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(122,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(123,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(124,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(125,'package','',NULL,NULL,NULL,NULL),(126,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(127,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(128,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(129,'package','',NULL,NULL,NULL,NULL),(130,'package','',NULL,NULL,NULL,NULL),(131,'package','',NULL,NULL,NULL,NULL),(132,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(133,'package','',NULL,NULL,NULL,NULL),(134,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(135,'package','',NULL,NULL,NULL,NULL),(136,'package','',NULL,NULL,NULL,NULL),(137,'package','',NULL,NULL,NULL,NULL),(138,'package','',NULL,NULL,NULL,NULL),(139,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(140,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(141,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(142,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(143,'package','',NULL,NULL,NULL,NULL),(144,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,2,2),(2,34,29),(3,37,31),(4,40,33),(5,41,34),(6,46,35),(7,54,40),(8,56,42),(9,58,44),(10,63,47),(11,65,49),(12,74,51),(13,74,53),(14,78,55),(15,81,57),(16,88,62),(17,89,63),(18,90,64),(19,91,65),(20,92,66),(21,94,67),(22,96,69),(23,99,70),(24,100,71),(25,103,74),(26,104,75),(27,105,76),(28,107,78),(29,108,79),(30,110,81),(31,115,83),(32,117,87),(33,125,88),(34,127,89),(35,128,90),(36,131,91),(37,133,93),(38,136,95),(39,144,100),(40,146,102),(41,146,104),(42,152,106),(43,153,107),(44,154,109),(45,155,110),(46,155,111),(47,158,112),(48,160,114),(49,161,115),(50,164,116),(51,167,117),(52,168,118),(53,170,120),(54,171,121),(55,172,122),(56,174,123),(57,176,124),(58,180,126),(59,190,132),(60,192,134),(61,203,142);
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
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,2,1),(15,2,2),(16,2,3),(17,2,4),(18,2,5),(19,2,6),(20,2,7),(21,2,9),(22,2,10),(23,2,12),(24,2,14),(25,2,15),(26,2,17),(27,2,16),(28,2,19),(29,2,18),(30,3,1),(31,2,21),(32,3,2),(33,3,3),(34,2,20),(35,3,4),(36,2,23),(37,3,5),(38,2,22),(39,3,6),(40,2,25),(41,3,7),(42,2,24),(43,3,8),(44,3,9),(45,3,10),(46,3,11),(47,3,12),(48,3,13),(49,3,27),(50,4,1),(51,3,26),(52,4,2),(53,4,4),(54,4,5),(55,4,6),(56,4,7),(57,5,1),(58,5,2),(59,4,9),(60,5,3),(61,4,10),(62,5,4),(63,4,12),(64,5,5),(65,4,14),(66,4,15),(67,5,6),(68,5,7),(69,4,17),(70,5,8),(71,4,16),(72,5,9),(73,4,19),(74,5,10),(75,4,18),(76,5,11),(77,4,21),(78,6,1),(79,4,20),(80,5,12),(81,6,2),(82,4,23),(83,5,13),(84,6,3),(85,4,22),(86,5,27),(87,6,4),(88,4,25),(89,5,26),(90,6,5),(91,4,24),(92,6,6),(93,6,7),(94,6,8),(95,6,9),(96,6,10),(97,6,11),(98,6,12),(99,6,13),(100,6,27),(101,6,26);
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

-- Dump completed on 2015-10-09  0:40:01
