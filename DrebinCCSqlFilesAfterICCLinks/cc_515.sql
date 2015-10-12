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
) ENGINE=InnoDB AUTO_INCREMENT=3712 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,105,10,2,NULL),(2,105,31,2,NULL),(3,150,10,2,NULL),(4,150,31,2,NULL),(5,63,1,2,NULL),(6,66,1,2,NULL),(7,69,1,2,NULL),(8,70,1,2,NULL),(9,73,1,2,NULL),(10,76,1,2,NULL),(11,77,1,2,NULL),(12,80,1,2,NULL),(13,84,1,2,NULL),(14,86,1,2,NULL),(15,115,1,2,NULL),(16,118,1,2,NULL),(17,121,1,2,NULL),(18,124,1,2,NULL),(19,127,1,2,NULL),(20,132,1,2,NULL),(21,134,1,2,NULL),(22,137,1,2,NULL),(23,38,7,2,NULL),(24,44,7,2,NULL),(25,47,7,2,NULL),(26,51,7,2,NULL),(27,54,7,2,NULL),(28,72,7,2,NULL),(29,75,7,2,NULL),(30,83,7,2,NULL),(31,87,7,2,NULL),(32,91,7,2,NULL),(33,123,7,2,NULL),(34,130,7,2,NULL),(35,64,7,2,NULL),(36,63,4,2,NULL),(37,66,4,2,NULL),(38,69,4,2,NULL),(39,70,4,2,NULL),(40,73,4,2,NULL),(41,76,4,2,NULL),(42,77,4,2,NULL),(43,80,4,2,NULL),(44,84,4,2,NULL),(45,86,4,2,NULL),(46,115,4,2,NULL),(47,118,4,2,NULL),(48,121,4,2,NULL),(49,124,4,2,NULL),(50,127,4,2,NULL),(51,132,4,2,NULL),(52,134,4,2,NULL),(53,137,4,2,NULL),(54,63,5,2,NULL),(55,66,5,2,NULL),(56,69,5,2,NULL),(57,70,5,2,NULL),(58,73,5,2,NULL),(59,76,5,2,NULL),(60,77,5,2,NULL),(61,80,5,2,NULL),(62,84,5,2,NULL),(63,86,5,2,NULL),(64,115,5,2,NULL),(65,118,5,2,NULL),(66,121,5,2,NULL),(67,124,5,2,NULL),(68,127,5,2,NULL),(69,132,5,2,NULL),(70,134,5,2,NULL),(71,137,5,2,NULL),(72,63,6,2,NULL),(73,66,6,2,NULL),(74,69,6,2,NULL),(75,70,6,2,NULL),(76,73,6,2,NULL),(77,76,6,2,NULL),(78,77,6,2,NULL),(79,80,6,2,NULL),(80,84,6,2,NULL),(81,86,6,2,NULL),(82,115,6,2,NULL),(83,118,6,2,NULL),(84,121,6,2,NULL),(85,124,6,2,NULL),(86,127,6,2,NULL),(87,132,6,2,NULL),(88,134,6,2,NULL),(89,137,6,2,NULL),(90,63,46,2,NULL),(91,66,46,2,NULL),(92,69,46,2,NULL),(93,70,46,2,NULL),(94,73,46,2,NULL),(95,76,46,2,NULL),(96,77,46,2,NULL),(97,80,46,2,NULL),(98,84,46,2,NULL),(99,86,46,2,NULL),(100,115,46,2,NULL),(101,118,46,2,NULL),(102,121,46,2,NULL),(103,124,46,2,NULL),(104,127,46,2,NULL),(105,132,46,2,NULL),(106,134,46,2,NULL),(107,137,46,2,NULL),(108,63,63,2,NULL),(109,66,63,2,NULL),(110,69,63,2,NULL),(111,70,63,2,NULL),(112,73,63,2,NULL),(113,76,63,2,NULL),(114,77,63,2,NULL),(115,80,63,2,NULL),(116,84,63,2,NULL),(117,86,63,2,NULL),(118,115,63,2,NULL),(119,118,63,2,NULL),(120,121,63,2,NULL),(121,124,63,2,NULL),(122,127,63,2,NULL),(123,132,63,2,NULL),(124,134,63,2,NULL),(125,137,63,2,NULL),(126,63,74,2,NULL),(127,66,74,2,NULL),(128,69,74,2,NULL),(129,70,74,2,NULL),(130,73,74,2,NULL),(131,76,74,2,NULL),(132,77,74,2,NULL),(133,80,74,2,NULL),(134,84,74,2,NULL),(135,86,74,2,NULL),(136,115,74,2,NULL),(137,118,74,2,NULL),(138,121,74,2,NULL),(139,124,74,2,NULL),(140,127,74,2,NULL),(141,132,74,2,NULL),(142,134,74,2,NULL),(143,137,74,2,NULL),(144,63,75,2,NULL),(145,66,75,2,NULL),(146,69,75,2,NULL),(147,70,75,2,NULL),(148,73,75,2,NULL),(149,76,75,2,NULL),(150,77,75,2,NULL),(151,80,75,2,NULL),(152,84,75,2,NULL),(153,86,75,2,NULL),(154,115,75,2,NULL),(155,118,75,2,NULL),(156,121,75,2,NULL),(157,124,75,2,NULL),(158,127,75,2,NULL),(159,132,75,2,NULL),(160,134,75,2,NULL),(161,137,75,2,NULL),(162,63,8,2,NULL),(163,66,8,2,NULL),(164,69,8,2,NULL),(165,70,8,2,NULL),(166,73,8,2,NULL),(167,76,8,2,NULL),(168,77,8,2,NULL),(169,80,8,2,NULL),(170,84,8,2,NULL),(171,86,8,2,NULL),(172,115,8,2,NULL),(173,118,8,2,NULL),(174,118,8,2,NULL),(175,121,8,2,NULL),(176,124,8,2,NULL),(177,127,8,2,NULL),(178,132,8,2,NULL),(179,134,8,2,NULL),(180,137,8,2,NULL),(181,63,16,2,NULL),(182,66,16,2,NULL),(183,69,16,2,NULL),(184,70,16,2,NULL),(185,73,16,2,NULL),(186,76,16,2,NULL),(187,77,16,2,NULL),(188,80,16,2,NULL),(189,84,16,2,NULL),(190,86,16,2,NULL),(191,115,16,2,NULL),(192,118,16,2,NULL),(193,121,16,2,NULL),(194,124,16,2,NULL),(195,127,16,2,NULL),(196,132,16,2,NULL),(197,134,16,2,NULL),(198,137,16,2,NULL),(199,63,19,2,NULL),(200,66,19,2,NULL),(201,69,19,2,NULL),(202,70,19,2,NULL),(203,73,19,2,NULL),(204,76,19,2,NULL),(205,77,19,2,NULL),(206,80,19,2,NULL),(207,84,19,2,NULL),(208,86,19,2,NULL),(209,115,19,2,NULL),(210,118,19,2,NULL),(211,121,19,2,NULL),(212,124,19,2,NULL),(213,127,19,2,NULL),(214,132,19,2,NULL),(215,134,19,2,NULL),(216,137,19,2,NULL),(217,63,20,2,NULL),(218,66,20,2,NULL),(219,69,20,2,NULL),(220,70,20,2,NULL),(221,73,20,2,NULL),(222,76,20,2,NULL),(223,77,20,2,NULL),(224,80,20,2,NULL),(225,84,20,2,NULL),(226,86,20,2,NULL),(227,115,20,2,NULL),(228,118,20,2,NULL),(229,121,20,2,NULL),(230,124,20,2,NULL),(231,127,20,2,NULL),(232,132,20,2,NULL),(233,134,20,2,NULL),(234,137,20,2,NULL),(235,63,53,2,NULL),(236,66,53,2,NULL),(237,69,53,2,NULL),(238,70,53,2,NULL),(239,73,53,2,NULL),(240,76,53,2,NULL),(241,77,53,2,NULL),(242,80,53,2,NULL),(243,84,53,2,NULL),(244,86,53,2,NULL),(245,86,53,2,NULL),(246,115,53,2,NULL),(247,118,53,2,NULL),(248,121,53,2,NULL),(249,124,53,2,NULL),(250,127,53,2,NULL),(251,132,53,2,NULL),(252,134,53,2,NULL),(253,137,53,2,NULL),(254,63,61,2,NULL),(255,63,61,2,NULL),(256,66,61,2,NULL),(257,69,61,2,NULL),(258,70,61,2,NULL),(259,73,61,2,NULL),(260,76,61,2,NULL),(261,77,61,2,NULL),(262,80,61,2,NULL),(263,84,61,2,NULL),(264,86,61,2,NULL),(265,115,61,2,NULL),(266,118,61,2,NULL),(267,121,61,2,NULL),(268,124,61,2,NULL),(269,127,61,2,NULL),(270,132,61,2,NULL),(271,134,61,2,NULL),(272,137,61,2,NULL),(273,63,62,2,NULL),(274,66,62,2,NULL),(275,69,62,2,NULL),(276,70,62,2,NULL),(277,73,62,2,NULL),(278,76,62,2,NULL),(279,77,62,2,NULL),(280,80,62,2,NULL),(281,84,62,2,NULL),(282,86,62,2,NULL),(283,115,62,2,NULL),(284,118,62,2,NULL),(285,121,62,2,NULL),(286,124,62,2,NULL),(287,127,62,2,NULL),(288,132,62,2,NULL),(289,134,62,2,NULL),(290,137,62,2,NULL),(291,63,9,2,NULL),(292,66,9,2,NULL),(293,69,9,2,NULL),(294,70,9,2,NULL),(295,73,9,2,NULL),(296,76,9,2,NULL),(297,77,9,2,NULL),(298,80,9,2,NULL),(299,84,9,2,NULL),(300,86,9,2,NULL),(301,115,9,2,NULL),(302,118,9,2,NULL),(303,121,9,2,NULL),(304,124,9,2,NULL),(305,127,9,2,NULL),(306,132,9,2,NULL),(307,134,9,2,NULL),(308,137,9,2,NULL),(309,42,7,2,NULL),(310,126,7,2,NULL),(311,131,7,2,NULL),(312,135,7,2,NULL),(313,138,7,2,NULL),(314,141,7,2,NULL),(315,171,7,2,NULL),(316,184,7,2,NULL),(317,186,7,2,NULL),(318,192,7,2,NULL),(319,194,7,2,NULL),(320,197,7,2,NULL),(321,173,7,2,NULL),(322,63,18,2,NULL),(323,66,18,2,NULL),(324,69,18,2,NULL),(325,70,18,2,NULL),(326,73,18,2,NULL),(327,76,18,2,NULL),(328,77,18,2,NULL),(329,80,18,2,NULL),(330,84,18,2,NULL),(331,86,18,2,NULL),(332,115,18,2,NULL),(333,118,18,2,NULL),(334,121,18,2,NULL),(335,124,18,2,NULL),(336,127,18,2,NULL),(337,132,18,2,NULL),(338,134,18,2,NULL),(339,137,18,2,NULL),(340,63,21,2,NULL),(341,66,21,2,NULL),(342,69,21,2,NULL),(343,70,21,2,NULL),(344,73,21,2,NULL),(345,76,21,2,NULL),(346,77,21,2,NULL),(347,80,21,2,NULL),(348,84,21,2,NULL),(349,86,21,2,NULL),(350,115,21,2,NULL),(351,118,21,2,NULL),(352,121,21,2,NULL),(353,124,21,2,NULL),(354,127,21,2,NULL),(355,132,21,2,NULL),(356,134,21,2,NULL),(357,137,21,2,NULL),(358,63,25,2,NULL),(359,66,25,2,NULL),(360,69,25,2,NULL),(361,70,25,2,NULL),(362,73,25,2,NULL),(363,76,25,2,NULL),(364,77,25,2,NULL),(365,80,25,2,NULL),(366,84,25,2,NULL),(367,86,25,2,NULL),(368,115,25,2,NULL),(369,118,25,2,NULL),(370,121,25,2,NULL),(371,124,25,2,NULL),(372,127,25,2,NULL),(373,132,25,2,NULL),(374,134,25,2,NULL),(375,137,25,2,NULL),(376,63,50,2,NULL),(377,66,50,2,NULL),(378,69,50,2,NULL),(379,70,50,2,NULL),(380,73,50,2,NULL),(381,76,50,2,NULL),(382,77,50,2,NULL),(383,80,50,2,NULL),(384,84,50,2,NULL),(385,86,50,2,NULL),(386,115,50,2,NULL),(387,118,50,2,NULL),(388,121,50,2,NULL),(389,124,50,2,NULL),(390,127,50,2,NULL),(391,132,50,2,NULL),(392,134,50,2,NULL),(393,137,50,2,NULL),(394,63,51,2,NULL),(395,66,51,2,NULL),(396,69,51,2,NULL),(397,70,51,2,NULL),(398,73,51,2,NULL),(399,76,51,2,NULL),(400,77,51,2,NULL),(401,80,51,2,NULL),(402,60,3,2,NULL),(403,84,51,2,NULL),(404,86,51,2,NULL),(405,60,14,2,NULL),(406,115,51,2,NULL),(407,118,51,2,NULL),(408,60,28,2,NULL),(409,121,51,2,NULL),(410,124,51,2,NULL),(411,60,37,2,NULL),(412,127,51,2,NULL),(413,132,51,2,NULL),(414,79,4,2,NULL),(415,134,51,2,NULL),(416,137,51,2,NULL),(417,63,64,2,NULL),(418,79,18,2,NULL),(419,66,64,2,NULL),(420,69,64,2,NULL),(421,79,32,2,NULL),(422,70,64,2,NULL),(423,73,64,2,NULL),(424,79,41,2,NULL),(425,76,64,2,NULL),(426,77,64,2,NULL),(427,94,4,2,NULL),(428,80,64,2,NULL),(429,84,64,2,NULL),(430,94,18,2,NULL),(431,86,64,2,NULL),(432,115,64,2,NULL),(433,94,32,2,NULL),(434,118,64,2,NULL),(435,121,64,2,NULL),(436,94,41,2,NULL),(437,124,64,2,NULL),(438,127,64,2,NULL),(439,98,4,2,NULL),(440,132,64,2,NULL),(441,134,64,2,NULL),(442,98,18,2,NULL),(443,137,64,2,NULL),(444,63,76,2,NULL),(445,98,32,2,NULL),(446,66,76,2,NULL),(447,69,76,2,NULL),(448,98,41,2,NULL),(449,70,76,2,NULL),(450,73,76,2,NULL),(451,101,4,2,NULL),(452,76,76,2,NULL),(453,77,76,2,NULL),(454,101,18,2,NULL),(455,80,76,2,NULL),(456,84,76,2,NULL),(457,101,32,2,NULL),(458,86,76,2,NULL),(459,115,76,2,NULL),(460,101,41,2,NULL),(461,118,76,2,NULL),(462,121,76,2,NULL),(463,104,4,2,NULL),(464,124,76,2,NULL),(465,127,76,2,NULL),(466,104,18,2,NULL),(467,132,76,2,NULL),(468,134,76,2,NULL),(469,104,32,2,NULL),(470,137,76,2,NULL),(471,63,82,2,NULL),(472,104,41,2,NULL),(473,66,82,2,NULL),(474,69,82,2,NULL),(475,113,3,2,NULL),(476,70,82,2,NULL),(477,73,82,2,NULL),(478,113,14,2,NULL),(479,76,82,2,NULL),(480,77,82,2,NULL),(481,113,28,2,NULL),(482,80,82,2,NULL),(483,84,82,2,NULL),(484,113,37,2,NULL),(485,86,82,2,NULL),(486,115,82,2,NULL),(487,64,1,2,NULL),(488,118,82,2,NULL),(489,38,4,2,NULL),(490,121,82,2,NULL),(491,124,82,2,NULL),(492,127,82,2,NULL),(493,44,4,2,NULL),(494,132,82,2,NULL),(495,134,82,2,NULL),(496,47,4,2,NULL),(497,137,82,2,NULL),(498,63,27,2,NULL),(499,51,4,2,NULL),(500,66,27,2,NULL),(501,54,4,2,NULL),(502,69,27,2,NULL),(503,70,27,2,NULL),(504,72,4,2,NULL),(505,73,27,2,NULL),(506,76,27,2,NULL),(507,77,27,2,NULL),(508,75,4,2,NULL),(509,80,27,2,NULL),(510,84,27,2,NULL),(511,83,4,2,NULL),(512,86,27,2,NULL),(513,115,27,2,NULL),(514,87,4,2,NULL),(515,118,27,2,NULL),(516,121,27,2,NULL),(517,91,4,2,NULL),(518,124,27,2,NULL),(519,127,27,2,NULL),(520,123,4,2,NULL),(521,132,27,2,NULL),(522,134,27,2,NULL),(523,130,4,2,NULL),(524,137,27,2,NULL),(525,63,34,2,NULL),(526,38,5,2,NULL),(527,66,34,2,NULL),(528,69,34,2,NULL),(529,44,5,2,NULL),(530,70,34,2,NULL),(531,73,34,2,NULL),(532,47,5,2,NULL),(533,76,34,2,NULL),(534,77,34,2,NULL),(535,51,5,2,NULL),(536,80,34,2,NULL),(537,84,34,2,NULL),(538,54,5,2,NULL),(539,86,34,2,NULL),(540,115,34,2,NULL),(541,72,5,2,NULL),(542,118,34,2,NULL),(543,121,34,2,NULL),(544,75,5,2,NULL),(545,124,34,2,NULL),(546,127,34,2,NULL),(547,83,5,2,NULL),(548,132,34,2,NULL),(549,134,34,2,NULL),(550,87,5,2,NULL),(551,137,34,2,NULL),(552,63,38,2,NULL),(553,91,5,2,NULL),(554,66,38,2,NULL),(555,66,38,2,NULL),(556,123,5,2,NULL),(557,69,38,2,NULL),(558,70,38,2,NULL),(559,70,38,2,NULL),(560,130,5,2,NULL),(561,73,38,2,NULL),(562,73,38,2,NULL),(563,38,6,2,NULL),(564,76,38,2,NULL),(565,44,6,2,NULL),(566,77,38,2,NULL),(567,80,38,2,NULL),(568,84,38,2,NULL),(569,47,6,2,NULL),(570,86,38,2,NULL),(571,51,6,2,NULL),(572,115,38,2,NULL),(573,118,38,2,NULL),(574,54,6,2,NULL),(575,121,38,2,NULL),(576,124,38,2,NULL),(577,127,38,2,NULL),(578,72,6,2,NULL),(579,132,38,2,NULL),(580,134,38,2,NULL),(581,75,6,2,NULL),(582,137,38,2,NULL),(583,83,6,2,NULL),(584,63,57,2,NULL),(585,66,57,2,NULL),(586,87,6,2,NULL),(587,69,57,2,NULL),(588,91,6,2,NULL),(589,70,57,2,NULL),(590,73,57,2,NULL),(591,123,6,2,NULL),(592,76,57,2,NULL),(593,77,57,2,NULL),(594,130,6,2,NULL),(595,80,57,2,NULL),(596,84,57,2,NULL),(597,38,46,2,NULL),(598,86,57,2,NULL),(599,115,57,2,NULL),(600,118,57,2,NULL),(601,44,46,2,NULL),(602,121,57,2,NULL),(603,124,57,2,NULL),(604,47,46,2,NULL),(605,127,57,2,NULL),(606,132,57,2,NULL),(607,132,57,2,NULL),(608,134,57,2,NULL),(609,51,46,2,NULL),(610,137,57,2,NULL),(611,63,59,2,NULL),(612,54,46,2,NULL),(613,66,59,2,NULL),(614,69,59,2,NULL),(615,72,46,2,NULL),(616,70,59,2,NULL),(617,73,59,2,NULL),(618,73,59,2,NULL),(619,76,59,2,NULL),(620,75,46,2,NULL),(621,77,59,2,NULL),(622,80,59,2,NULL),(623,80,59,2,NULL),(624,83,46,2,NULL),(625,84,59,2,NULL),(626,87,46,2,NULL),(627,86,59,2,NULL),(628,115,59,2,NULL),(629,118,59,2,NULL),(630,91,46,2,NULL),(631,121,59,2,NULL),(632,124,59,2,NULL),(633,127,59,2,NULL),(634,123,46,2,NULL),(635,132,59,2,NULL),(636,134,59,2,NULL),(637,130,46,2,NULL),(638,137,59,2,NULL),(639,63,71,2,NULL),(640,63,71,2,NULL),(641,66,71,2,NULL),(642,38,63,2,NULL),(643,69,71,2,NULL),(644,70,71,2,NULL),(645,73,71,2,NULL),(646,44,63,2,NULL),(647,76,71,2,NULL),(648,47,63,2,NULL),(649,77,71,2,NULL),(650,80,71,2,NULL),(651,84,71,2,NULL),(652,51,63,2,NULL),(653,86,71,2,NULL),(654,115,71,2,NULL),(655,118,71,2,NULL),(656,54,63,2,NULL),(657,121,71,2,NULL),(658,124,71,2,NULL),(659,72,63,2,NULL),(660,127,71,2,NULL),(661,132,71,2,NULL),(662,134,71,2,NULL),(663,75,63,2,NULL),(664,137,71,2,NULL),(665,63,23,2,NULL),(666,66,23,2,NULL),(667,83,63,2,NULL),(668,69,23,2,NULL),(669,70,23,2,NULL),(670,87,63,2,NULL),(671,73,23,2,NULL),(672,76,23,2,NULL),(673,77,23,2,NULL),(674,91,63,2,NULL),(675,80,23,2,NULL),(676,84,23,2,NULL),(677,86,23,2,NULL),(678,123,63,2,NULL),(679,115,23,2,NULL),(680,118,23,2,NULL),(681,121,23,2,NULL),(682,130,63,2,NULL),(683,124,23,2,NULL),(684,127,23,2,NULL),(685,132,23,2,NULL),(686,38,74,2,NULL),(687,134,23,2,NULL),(688,137,23,2,NULL),(689,33,7,2,NULL),(690,44,74,2,NULL),(691,93,7,2,NULL),(692,96,7,2,NULL),(693,102,7,2,NULL),(694,47,74,2,NULL),(695,106,7,2,NULL),(696,111,7,2,NULL),(697,133,7,2,NULL),(698,51,74,2,NULL),(699,136,7,2,NULL),(700,139,7,2,NULL),(701,142,7,2,NULL),(702,54,74,2,NULL),(703,144,7,2,NULL),(704,185,7,2,NULL),(705,72,74,2,NULL),(706,198,7,2,NULL),(707,63,32,2,NULL),(708,66,32,2,NULL),(709,75,74,2,NULL),(710,69,32,2,NULL),(711,70,32,2,NULL),(712,73,32,2,NULL),(713,83,74,2,NULL),(714,76,32,2,NULL),(715,77,32,2,NULL),(716,80,32,2,NULL),(717,87,74,2,NULL),(718,84,32,2,NULL),(719,86,32,2,NULL),(720,115,32,2,NULL),(721,91,74,2,NULL),(722,118,32,2,NULL),(723,121,32,2,NULL),(724,124,32,2,NULL),(725,127,32,2,NULL),(726,123,74,2,NULL),(727,132,32,2,NULL),(728,130,74,2,NULL),(729,134,32,2,NULL),(730,137,32,2,NULL),(731,63,36,2,NULL),(732,38,75,2,NULL),(733,66,36,2,NULL),(734,69,36,2,NULL),(735,70,36,2,NULL),(736,44,75,2,NULL),(737,73,36,2,NULL),(738,76,36,2,NULL),(739,77,36,2,NULL),(740,47,75,2,NULL),(741,80,36,2,NULL),(742,84,36,2,NULL),(743,86,36,2,NULL),(744,51,75,2,NULL),(745,115,36,2,NULL),(746,118,36,2,NULL),(747,121,36,2,NULL),(748,54,75,2,NULL),(749,124,36,2,NULL),(750,127,36,2,NULL),(751,132,36,2,NULL),(752,134,36,2,NULL),(753,72,75,2,NULL),(754,137,36,2,NULL),(755,63,40,2,NULL),(756,75,75,2,NULL),(757,66,40,2,NULL),(758,69,40,2,NULL),(759,70,40,2,NULL),(760,83,75,2,NULL),(761,73,40,2,NULL),(762,76,40,2,NULL),(763,77,40,2,NULL),(764,87,75,2,NULL),(765,80,40,2,NULL),(766,84,40,2,NULL),(767,86,40,2,NULL),(768,91,75,2,NULL),(769,115,40,2,NULL),(770,118,40,2,NULL),(771,121,40,2,NULL),(772,123,75,2,NULL),(773,124,40,2,NULL),(774,127,40,2,NULL),(775,132,40,2,NULL),(776,130,75,2,NULL),(777,134,40,2,NULL),(778,137,40,2,NULL),(779,63,78,2,NULL),(780,66,78,2,NULL),(781,69,78,2,NULL),(782,70,78,2,NULL),(783,38,8,2,NULL),(784,73,78,2,NULL),(785,76,78,2,NULL),(786,77,78,2,NULL),(787,44,8,2,NULL),(788,80,78,2,NULL),(789,84,78,2,NULL),(790,84,78,2,NULL),(791,86,78,2,NULL),(792,47,8,2,NULL),(793,115,78,2,NULL),(794,118,78,2,NULL),(795,121,78,2,NULL),(796,51,8,2,NULL),(797,124,78,2,NULL),(798,127,78,2,NULL),(799,132,78,2,NULL),(800,54,8,2,NULL),(801,134,78,2,NULL),(802,137,78,2,NULL),(803,72,8,2,NULL),(804,63,79,2,NULL),(805,66,79,2,NULL),(806,69,79,2,NULL),(807,70,79,2,NULL),(808,75,8,2,NULL),(809,73,79,2,NULL),(810,76,79,2,NULL),(811,77,79,2,NULL),(812,83,8,2,NULL),(813,80,79,2,NULL),(814,84,79,2,NULL),(815,86,79,2,NULL),(816,87,8,2,NULL),(817,115,79,2,NULL),(818,118,79,2,NULL),(819,91,8,2,NULL),(820,121,79,2,NULL),(821,124,79,2,NULL),(822,127,79,2,NULL),(823,132,79,2,NULL),(824,123,8,2,NULL),(825,134,79,2,NULL),(826,137,79,2,NULL),(827,130,8,2,NULL),(828,63,80,2,NULL),(829,66,80,2,NULL),(830,69,80,2,NULL),(831,38,16,2,NULL),(832,70,80,2,NULL),(833,73,80,2,NULL),(834,73,80,2,NULL),(835,76,80,2,NULL),(836,44,16,2,NULL),(837,77,80,2,NULL),(838,80,80,2,NULL),(839,84,80,2,NULL),(840,47,16,2,NULL),(841,86,80,2,NULL),(842,86,80,2,NULL),(843,115,80,2,NULL),(844,51,16,2,NULL),(845,118,80,2,NULL),(846,121,80,2,NULL),(847,124,80,2,NULL),(848,54,16,2,NULL),(849,127,80,2,NULL),(850,127,80,2,NULL),(851,132,80,2,NULL),(852,72,16,2,NULL),(853,134,80,2,NULL),(854,137,80,2,NULL),(855,63,81,2,NULL),(856,75,16,2,NULL),(857,66,81,2,NULL),(858,66,81,2,NULL),(859,69,81,2,NULL),(860,83,16,2,NULL),(861,70,81,2,NULL),(862,70,81,2,NULL),(863,73,81,2,NULL),(864,87,16,2,NULL),(865,76,81,2,NULL),(866,76,81,2,NULL),(867,77,81,2,NULL),(868,91,16,2,NULL),(869,80,81,2,NULL),(870,80,81,2,NULL),(871,84,81,2,NULL),(872,123,16,2,NULL),(873,86,81,2,NULL),(874,86,81,2,NULL),(875,115,81,2,NULL),(876,130,16,2,NULL),(877,118,81,2,NULL),(878,118,81,2,NULL),(879,121,81,2,NULL),(880,38,19,2,NULL),(881,124,81,2,NULL),(882,127,81,2,NULL),(883,132,81,2,NULL),(884,44,19,2,NULL),(885,134,81,2,NULL),(886,134,81,2,NULL),(887,137,81,2,NULL),(888,47,19,2,NULL),(889,63,83,2,NULL),(890,63,83,2,NULL),(891,66,83,2,NULL),(892,51,19,2,NULL),(893,69,83,2,NULL),(894,70,83,2,NULL),(895,73,83,2,NULL),(896,54,19,2,NULL),(897,76,83,2,NULL),(898,76,83,2,NULL),(899,77,83,2,NULL),(900,72,19,2,NULL),(901,80,83,2,NULL),(902,80,83,2,NULL),(903,84,83,2,NULL),(904,75,19,2,NULL),(905,86,83,2,NULL),(906,86,83,2,NULL),(907,115,83,2,NULL),(908,83,19,2,NULL),(909,118,83,2,NULL),(910,118,83,2,NULL),(911,121,83,2,NULL),(912,87,19,2,NULL),(913,124,83,2,NULL),(914,127,83,2,NULL),(915,91,19,2,NULL),(916,132,83,2,NULL),(917,134,83,2,NULL),(918,123,19,2,NULL),(919,137,83,2,NULL),(920,63,30,2,NULL),(921,66,30,2,NULL),(922,66,30,2,NULL),(923,130,19,2,NULL),(924,69,30,2,NULL),(925,70,30,2,NULL),(926,73,30,2,NULL),(927,38,20,2,NULL),(928,76,30,2,NULL),(929,77,30,2,NULL),(930,77,30,2,NULL),(931,44,20,2,NULL),(932,80,30,2,NULL),(933,84,30,2,NULL),(934,84,30,2,NULL),(935,47,20,2,NULL),(936,86,30,2,NULL),(937,115,30,2,NULL),(938,115,30,2,NULL),(939,51,20,2,NULL),(940,118,30,2,NULL),(941,121,30,2,NULL),(942,121,30,2,NULL),(943,54,20,2,NULL),(944,124,30,2,NULL),(945,127,30,2,NULL),(946,127,30,2,NULL),(947,72,20,2,NULL),(948,132,30,2,NULL),(949,134,30,2,NULL),(950,134,30,2,NULL),(951,75,20,2,NULL),(952,137,30,2,NULL),(953,37,7,2,NULL),(954,37,7,2,NULL),(955,83,20,2,NULL),(956,43,7,2,NULL),(957,46,7,2,NULL),(958,87,20,2,NULL),(959,46,7,2,NULL),(960,52,7,2,NULL),(961,91,20,2,NULL),(962,63,41,2,NULL),(963,63,41,2,NULL),(964,66,41,2,NULL),(965,69,41,2,NULL),(966,69,41,2,NULL),(967,123,20,2,NULL),(968,70,41,2,NULL),(969,73,41,2,NULL),(970,73,41,2,NULL),(971,130,20,2,NULL),(972,76,41,2,NULL),(973,77,41,2,NULL),(974,77,41,2,NULL),(975,38,53,2,NULL),(976,80,41,2,NULL),(977,84,41,2,NULL),(978,84,41,2,NULL),(979,44,53,2,NULL),(980,86,41,2,NULL),(981,115,41,2,NULL),(982,47,53,2,NULL),(983,115,41,2,NULL),(984,118,41,2,NULL),(985,121,41,2,NULL),(986,121,41,2,NULL),(987,51,53,2,NULL),(988,124,41,2,NULL),(989,54,53,2,NULL),(990,127,41,2,NULL),(991,127,41,2,NULL),(992,132,41,2,NULL),(993,134,41,2,NULL),(994,134,41,2,NULL),(995,72,53,2,NULL),(996,137,41,2,NULL),(997,75,53,2,NULL),(998,63,43,2,NULL),(999,63,43,2,NULL),(1000,66,43,2,NULL),(1001,69,43,2,NULL),(1002,69,43,2,NULL),(1003,83,53,2,NULL),(1004,70,43,2,NULL),(1005,73,43,2,NULL),(1006,73,43,2,NULL),(1007,87,53,2,NULL),(1008,76,43,2,NULL),(1009,77,43,2,NULL),(1010,77,43,2,NULL),(1011,91,53,2,NULL),(1012,80,43,2,NULL),(1013,84,43,2,NULL),(1014,84,43,2,NULL),(1015,123,53,2,NULL),(1016,86,43,2,NULL),(1017,115,43,2,NULL),(1018,115,43,2,NULL),(1019,130,53,2,NULL),(1020,118,43,2,NULL),(1021,121,43,2,NULL),(1022,121,43,2,NULL),(1023,38,61,2,NULL),(1024,124,43,2,NULL),(1025,124,43,2,NULL),(1026,127,43,2,NULL),(1027,132,43,2,NULL),(1028,44,61,2,NULL),(1029,134,43,2,NULL),(1030,137,43,2,NULL),(1031,137,43,2,NULL),(1032,137,43,2,NULL),(1033,47,61,2,NULL),(1034,63,44,2,NULL),(1035,66,44,2,NULL),(1036,51,61,2,NULL),(1037,69,44,2,NULL),(1038,70,44,2,NULL),(1039,73,44,2,NULL),(1040,73,44,2,NULL),(1041,73,44,2,NULL),(1042,54,61,2,NULL),(1043,76,44,2,NULL),(1044,77,44,2,NULL),(1045,77,44,2,NULL),(1046,72,61,2,NULL),(1047,80,44,2,NULL),(1048,84,44,2,NULL),(1049,75,61,2,NULL),(1050,86,44,2,NULL),(1051,115,44,2,NULL),(1052,115,44,2,NULL),(1053,115,44,2,NULL),(1054,83,61,2,NULL),(1055,118,44,2,NULL),(1056,121,44,2,NULL),(1057,121,44,2,NULL),(1058,87,61,2,NULL),(1059,124,44,2,NULL),(1060,127,44,2,NULL),(1061,91,61,2,NULL),(1062,132,44,2,NULL),(1063,134,44,2,NULL),(1064,137,44,2,NULL),(1065,137,44,2,NULL),(1066,123,61,2,NULL),(1067,64,8,2,NULL),(1068,130,61,2,NULL),(1069,42,8,2,NULL),(1070,42,8,2,NULL),(1071,42,8,2,NULL),(1072,38,62,2,NULL),(1073,126,8,2,NULL),(1074,44,62,2,NULL),(1075,131,8,2,NULL),(1076,131,8,2,NULL),(1077,135,8,2,NULL),(1078,138,8,2,NULL),(1079,138,8,2,NULL),(1080,47,62,2,NULL),(1081,141,8,2,NULL),(1082,51,62,2,NULL),(1083,171,8,2,NULL),(1084,171,8,2,NULL),(1085,184,8,2,NULL),(1086,54,62,2,NULL),(1087,186,8,2,NULL),(1088,186,8,2,NULL),(1089,192,8,2,NULL),(1090,72,62,2,NULL),(1091,194,8,2,NULL),(1092,194,8,2,NULL),(1093,197,8,2,NULL),(1094,75,62,2,NULL),(1095,173,8,2,NULL),(1096,173,8,2,NULL),(1097,143,8,2,NULL),(1098,83,62,2,NULL),(1099,149,8,2,NULL),(1100,149,8,2,NULL),(1101,152,8,2,NULL),(1102,155,8,2,NULL),(1103,87,62,2,NULL),(1104,157,8,2,NULL),(1105,158,8,2,NULL),(1106,91,62,2,NULL),(1107,160,8,2,NULL),(1108,160,8,2,NULL),(1109,163,8,2,NULL),(1110,123,62,2,NULL),(1111,165,8,2,NULL),(1112,33,8,2,NULL),(1113,93,8,2,NULL),(1114,130,62,2,NULL),(1115,96,8,2,NULL),(1116,96,8,2,NULL),(1117,102,8,2,NULL),(1118,38,9,2,NULL),(1119,106,8,2,NULL),(1120,106,8,2,NULL),(1121,111,8,2,NULL),(1122,44,9,2,NULL),(1123,133,8,2,NULL),(1124,136,8,2,NULL),(1125,139,8,2,NULL),(1126,47,9,2,NULL),(1127,142,8,2,NULL),(1128,142,8,2,NULL),(1129,144,8,2,NULL),(1130,51,9,2,NULL),(1131,185,8,2,NULL),(1132,198,8,2,NULL),(1133,37,8,2,NULL),(1134,54,9,2,NULL),(1135,43,8,2,NULL),(1136,43,8,2,NULL),(1137,46,8,2,NULL),(1138,72,9,2,NULL),(1139,52,8,2,NULL),(1140,64,16,2,NULL),(1141,75,9,2,NULL),(1142,42,16,2,NULL),(1143,42,16,2,NULL),(1144,83,9,2,NULL),(1145,126,16,2,NULL),(1146,87,9,2,NULL),(1147,131,16,2,NULL),(1148,135,16,2,NULL),(1149,138,16,2,NULL),(1150,91,9,2,NULL),(1151,141,16,2,NULL),(1152,141,16,2,NULL),(1153,171,16,2,NULL),(1154,123,9,2,NULL),(1155,184,16,2,NULL),(1156,186,16,2,NULL),(1157,192,16,2,NULL),(1158,130,9,2,NULL),(1159,194,16,2,NULL),(1160,194,16,2,NULL),(1161,197,16,2,NULL),(1162,42,1,2,NULL),(1163,173,16,2,NULL),(1164,173,16,2,NULL),(1165,143,16,2,NULL),(1166,126,1,2,NULL),(1167,149,16,2,NULL),(1168,149,16,2,NULL),(1169,152,16,2,NULL),(1170,131,1,2,NULL),(1171,155,16,2,NULL),(1172,157,16,2,NULL),(1173,158,16,2,NULL),(1174,135,1,2,NULL),(1175,160,16,2,NULL),(1176,160,16,2,NULL),(1177,163,16,2,NULL),(1178,138,1,2,NULL),(1179,165,16,2,NULL),(1180,33,16,2,NULL),(1181,141,1,2,NULL),(1182,93,16,2,NULL),(1183,93,16,2,NULL),(1184,96,16,2,NULL),(1185,171,1,2,NULL),(1186,102,16,2,NULL),(1187,102,16,2,NULL),(1188,106,16,2,NULL),(1189,184,1,2,NULL),(1190,111,16,2,NULL),(1191,111,16,2,NULL),(1192,133,16,2,NULL),(1193,186,1,2,NULL),(1194,136,16,2,NULL),(1195,139,16,2,NULL),(1196,142,16,2,NULL),(1197,192,1,2,NULL),(1198,144,16,2,NULL),(1199,144,16,2,NULL),(1200,185,16,2,NULL),(1201,194,1,2,NULL),(1202,198,16,2,NULL),(1203,198,16,2,NULL),(1204,37,16,2,NULL),(1205,197,1,2,NULL),(1206,43,16,2,NULL),(1207,43,16,2,NULL),(1208,46,16,2,NULL),(1209,173,1,2,NULL),(1210,52,16,2,NULL),(1211,52,16,2,NULL),(1212,38,18,2,NULL),(1213,64,19,2,NULL),(1214,44,18,2,NULL),(1215,47,18,2,NULL),(1216,42,19,2,NULL),(1217,126,19,2,NULL),(1218,51,18,2,NULL),(1219,131,19,2,NULL),(1220,135,19,2,NULL),(1221,138,19,2,NULL),(1222,54,18,2,NULL),(1223,141,19,2,NULL),(1224,141,19,2,NULL),(1225,171,19,2,NULL),(1226,72,18,2,NULL),(1227,184,19,2,NULL),(1228,184,19,2,NULL),(1229,186,19,2,NULL),(1230,75,18,2,NULL),(1231,192,19,2,NULL),(1232,192,19,2,NULL),(1233,194,19,2,NULL),(1234,83,18,2,NULL),(1235,197,19,2,NULL),(1236,197,19,2,NULL),(1237,173,19,2,NULL),(1238,87,18,2,NULL),(1239,143,19,2,NULL),(1240,143,19,2,NULL),(1241,149,19,2,NULL),(1242,91,18,2,NULL),(1243,152,19,2,NULL),(1244,155,19,2,NULL),(1245,157,19,2,NULL),(1246,123,18,2,NULL),(1247,158,19,2,NULL),(1248,158,19,2,NULL),(1249,160,19,2,NULL),(1250,130,18,2,NULL),(1251,163,19,2,NULL),(1252,163,19,2,NULL),(1253,165,19,2,NULL),(1254,38,21,2,NULL),(1255,33,19,2,NULL),(1256,44,21,2,NULL),(1257,93,19,2,NULL),(1258,96,19,2,NULL),(1259,102,19,2,NULL),(1260,47,21,2,NULL),(1261,106,19,2,NULL),(1262,106,19,2,NULL),(1263,111,19,2,NULL),(1264,51,21,2,NULL),(1265,133,19,2,NULL),(1266,133,19,2,NULL),(1267,136,19,2,NULL),(1268,54,21,2,NULL),(1269,139,19,2,NULL),(1270,139,19,2,NULL),(1271,142,19,2,NULL),(1272,72,21,2,NULL),(1273,144,19,2,NULL),(1274,144,19,2,NULL),(1275,185,19,2,NULL),(1276,75,21,2,NULL),(1277,198,19,2,NULL),(1278,198,19,2,NULL),(1279,37,19,2,NULL),(1280,83,21,2,NULL),(1281,43,19,2,NULL),(1282,46,19,2,NULL),(1283,52,19,2,NULL),(1284,87,21,2,NULL),(1285,91,21,2,NULL),(1286,64,20,2,NULL),(1287,123,21,2,NULL),(1288,42,20,2,NULL),(1289,42,20,2,NULL),(1290,130,21,2,NULL),(1291,126,20,2,NULL),(1292,126,20,2,NULL),(1293,38,25,2,NULL),(1294,131,20,2,NULL),(1295,131,20,2,NULL),(1296,44,25,2,NULL),(1297,135,20,2,NULL),(1298,138,20,2,NULL),(1299,138,20,2,NULL),(1300,47,25,2,NULL),(1301,141,20,2,NULL),(1302,171,20,2,NULL),(1303,171,20,2,NULL),(1304,51,25,2,NULL),(1305,184,20,2,NULL),(1306,186,20,2,NULL),(1307,186,20,2,NULL),(1308,54,25,2,NULL),(1309,192,20,2,NULL),(1310,194,20,2,NULL),(1311,194,20,2,NULL),(1312,72,25,2,NULL),(1313,197,20,2,NULL),(1314,173,20,2,NULL),(1315,173,20,2,NULL),(1316,75,25,2,NULL),(1317,143,20,2,NULL),(1318,149,20,2,NULL),(1319,149,20,2,NULL),(1320,83,25,2,NULL),(1321,152,20,2,NULL),(1322,155,20,2,NULL),(1323,155,20,2,NULL),(1324,87,25,2,NULL),(1325,157,20,2,NULL),(1326,158,20,2,NULL),(1327,158,20,2,NULL),(1328,91,25,2,NULL),(1329,160,20,2,NULL),(1330,163,20,2,NULL),(1331,163,20,2,NULL),(1332,123,25,2,NULL),(1333,165,20,2,NULL),(1334,33,20,2,NULL),(1335,33,20,2,NULL),(1336,130,25,2,NULL),(1337,93,20,2,NULL),(1338,96,20,2,NULL),(1339,96,20,2,NULL),(1340,38,50,2,NULL),(1341,102,20,2,NULL),(1342,106,20,2,NULL),(1343,106,20,2,NULL),(1344,44,50,2,NULL),(1345,111,20,2,NULL),(1346,133,20,2,NULL),(1347,133,20,2,NULL),(1348,47,50,2,NULL),(1349,136,20,2,NULL),(1350,139,20,2,NULL),(1351,139,20,2,NULL),(1352,51,50,2,NULL),(1353,142,20,2,NULL),(1354,144,20,2,NULL),(1355,144,20,2,NULL),(1356,54,50,2,NULL),(1357,185,20,2,NULL),(1358,198,20,2,NULL),(1359,198,20,2,NULL),(1360,72,50,2,NULL),(1361,37,20,2,NULL),(1362,43,20,2,NULL),(1363,43,20,2,NULL),(1364,75,50,2,NULL),(1365,46,20,2,NULL),(1366,52,20,2,NULL),(1367,52,20,2,NULL),(1368,83,50,2,NULL),(1369,87,50,2,NULL),(1370,91,50,2,NULL),(1371,64,53,2,NULL),(1372,123,50,2,NULL),(1373,42,53,2,NULL),(1374,42,53,2,NULL),(1375,130,50,2,NULL),(1376,126,53,2,NULL),(1377,131,53,2,NULL),(1378,131,53,2,NULL),(1379,38,51,2,NULL),(1380,135,53,2,NULL),(1381,135,53,2,NULL),(1382,138,53,2,NULL),(1383,44,51,2,NULL),(1384,141,53,2,NULL),(1385,141,53,2,NULL),(1386,141,53,2,NULL),(1387,47,51,2,NULL),(1388,171,53,2,NULL),(1389,171,53,2,NULL),(1390,184,53,2,NULL),(1391,51,51,2,NULL),(1392,186,53,2,NULL),(1393,186,53,2,NULL),(1394,186,53,2,NULL),(1395,54,51,2,NULL),(1396,192,53,2,NULL),(1397,192,53,2,NULL),(1398,192,53,2,NULL),(1399,72,51,2,NULL),(1400,194,53,2,NULL),(1401,194,53,2,NULL),(1402,194,53,2,NULL),(1403,75,51,2,NULL),(1404,197,53,2,NULL),(1405,197,53,2,NULL),(1406,197,53,2,NULL),(1407,83,51,2,NULL),(1408,173,53,2,NULL),(1409,173,53,2,NULL),(1410,173,53,2,NULL),(1411,87,51,2,NULL),(1412,143,53,2,NULL),(1413,143,53,2,NULL),(1414,143,53,2,NULL),(1415,91,51,2,NULL),(1416,149,53,2,NULL),(1417,149,53,2,NULL),(1418,152,53,2,NULL),(1419,123,51,2,NULL),(1420,155,53,2,NULL),(1421,155,53,2,NULL),(1422,155,53,2,NULL),(1423,130,51,2,NULL),(1424,157,53,2,NULL),(1425,157,53,2,NULL),(1426,157,53,2,NULL),(1427,38,64,2,NULL),(1428,158,53,2,NULL),(1429,158,53,2,NULL),(1430,158,53,2,NULL),(1431,44,64,2,NULL),(1432,160,53,2,NULL),(1433,160,53,2,NULL),(1434,160,53,2,NULL),(1435,47,64,2,NULL),(1436,163,53,2,NULL),(1437,163,53,2,NULL),(1438,165,53,2,NULL),(1439,51,64,2,NULL),(1440,33,53,2,NULL),(1441,33,53,2,NULL),(1442,33,53,2,NULL),(1443,54,64,2,NULL),(1444,93,53,2,NULL),(1445,93,53,2,NULL),(1446,96,53,2,NULL),(1447,72,64,2,NULL),(1448,102,53,2,NULL),(1449,102,53,2,NULL),(1450,102,53,2,NULL),(1451,75,64,2,NULL),(1452,106,53,2,NULL),(1453,106,53,2,NULL),(1454,106,53,2,NULL),(1455,83,64,2,NULL),(1456,111,53,2,NULL),(1457,111,53,2,NULL),(1458,133,53,2,NULL),(1459,87,64,2,NULL),(1460,136,53,2,NULL),(1461,136,53,2,NULL),(1462,136,53,2,NULL),(1463,91,64,2,NULL),(1464,139,53,2,NULL),(1465,139,53,2,NULL),(1466,139,53,2,NULL),(1467,123,64,2,NULL),(1468,142,53,2,NULL),(1469,142,53,2,NULL),(1470,144,53,2,NULL),(1471,130,64,2,NULL),(1472,185,53,2,NULL),(1473,185,53,2,NULL),(1474,185,53,2,NULL),(1475,38,76,2,NULL),(1476,198,53,2,NULL),(1477,198,53,2,NULL),(1478,198,53,2,NULL),(1479,44,76,2,NULL),(1480,37,53,2,NULL),(1481,37,53,2,NULL),(1482,37,53,2,NULL),(1483,47,76,2,NULL),(1484,43,53,2,NULL),(1485,43,53,2,NULL),(1486,43,53,2,NULL),(1487,51,76,2,NULL),(1488,46,53,2,NULL),(1489,46,53,2,NULL),(1490,46,53,2,NULL),(1491,54,76,2,NULL),(1492,52,53,2,NULL),(1493,52,53,2,NULL),(1494,52,53,2,NULL),(1495,72,76,2,NULL),(1496,64,61,2,NULL),(1497,64,61,2,NULL),(1498,64,61,2,NULL),(1499,75,76,2,NULL),(1500,83,76,2,NULL),(1501,42,61,2,NULL),(1502,126,61,2,NULL),(1503,126,61,2,NULL),(1504,87,76,2,NULL),(1505,131,61,2,NULL),(1506,131,61,2,NULL),(1507,135,61,2,NULL),(1508,91,76,2,NULL),(1509,138,61,2,NULL),(1510,138,61,2,NULL),(1511,138,61,2,NULL),(1512,123,76,2,NULL),(1513,141,61,2,NULL),(1514,141,61,2,NULL),(1515,141,61,2,NULL),(1516,130,76,2,NULL),(1517,171,61,2,NULL),(1518,171,61,2,NULL),(1519,171,61,2,NULL),(1520,38,82,2,NULL),(1521,184,61,2,NULL),(1522,184,61,2,NULL),(1523,186,61,2,NULL),(1524,44,82,2,NULL),(1525,192,61,2,NULL),(1526,192,61,2,NULL),(1527,192,61,2,NULL),(1528,47,82,2,NULL),(1529,194,61,2,NULL),(1530,194,61,2,NULL),(1531,194,61,2,NULL),(1532,51,82,2,NULL),(1533,197,61,2,NULL),(1534,197,61,2,NULL),(1535,197,61,2,NULL),(1536,54,82,2,NULL),(1537,173,61,2,NULL),(1538,173,61,2,NULL),(1539,143,61,2,NULL),(1540,72,82,2,NULL),(1541,149,61,2,NULL),(1542,149,61,2,NULL),(1543,149,61,2,NULL),(1544,75,82,2,NULL),(1545,152,61,2,NULL),(1546,152,61,2,NULL),(1547,152,61,2,NULL),(1548,83,82,2,NULL),(1549,155,61,2,NULL),(1550,155,61,2,NULL),(1551,157,61,2,NULL),(1552,87,82,2,NULL),(1553,158,61,2,NULL),(1554,158,61,2,NULL),(1555,158,61,2,NULL),(1556,91,82,2,NULL),(1557,160,61,2,NULL),(1558,160,61,2,NULL),(1559,160,61,2,NULL),(1560,123,82,2,NULL),(1561,163,61,2,NULL),(1562,163,61,2,NULL),(1563,163,61,2,NULL),(1564,130,82,2,NULL),(1565,165,61,2,NULL),(1566,165,61,2,NULL),(1567,33,61,2,NULL),(1568,38,24,2,NULL),(1569,93,61,2,NULL),(1570,96,61,2,NULL),(1571,96,61,2,NULL),(1572,44,24,2,NULL),(1573,102,61,2,NULL),(1574,102,61,2,NULL),(1575,106,61,2,NULL),(1576,47,24,2,NULL),(1577,111,61,2,NULL),(1578,133,61,2,NULL),(1579,133,61,2,NULL),(1580,51,24,2,NULL),(1581,136,61,2,NULL),(1582,136,61,2,NULL),(1583,136,61,2,NULL),(1584,54,24,2,NULL),(1585,139,61,2,NULL),(1586,139,61,2,NULL),(1587,139,61,2,NULL),(1588,72,24,2,NULL),(1589,142,61,2,NULL),(1590,75,24,2,NULL),(1591,144,61,2,NULL),(1592,144,61,2,NULL),(1593,185,61,2,NULL),(1594,83,24,2,NULL),(1595,198,61,2,NULL),(1596,37,61,2,NULL),(1597,43,61,2,NULL),(1598,87,24,2,NULL),(1599,46,61,2,NULL),(1600,46,61,2,NULL),(1601,52,61,2,NULL),(1602,91,24,2,NULL),(1603,64,62,2,NULL),(1604,64,62,2,NULL),(1605,123,24,2,NULL),(1606,42,62,2,NULL),(1607,42,62,2,NULL),(1608,42,62,2,NULL),(1609,130,24,2,NULL),(1610,126,62,2,NULL),(1611,126,62,2,NULL),(1612,126,62,2,NULL),(1613,143,1,2,NULL),(1614,131,62,2,NULL),(1615,149,1,2,NULL),(1616,135,62,2,NULL),(1617,135,62,2,NULL),(1618,138,62,2,NULL),(1619,152,1,2,NULL),(1620,141,62,2,NULL),(1621,141,62,2,NULL),(1622,171,62,2,NULL),(1623,155,1,2,NULL),(1624,184,62,2,NULL),(1625,184,62,2,NULL),(1626,186,62,2,NULL),(1627,157,1,2,NULL),(1628,192,62,2,NULL),(1629,192,62,2,NULL),(1630,194,62,2,NULL),(1631,158,1,2,NULL),(1632,197,62,2,NULL),(1633,197,62,2,NULL),(1634,173,62,2,NULL),(1635,160,1,2,NULL),(1636,143,62,2,NULL),(1637,143,62,2,NULL),(1638,149,62,2,NULL),(1639,163,1,2,NULL),(1640,152,62,2,NULL),(1641,152,62,2,NULL),(1642,155,62,2,NULL),(1643,165,1,2,NULL),(1644,157,62,2,NULL),(1645,157,62,2,NULL),(1646,158,62,2,NULL),(1647,38,27,2,NULL),(1648,160,62,2,NULL),(1649,160,62,2,NULL),(1650,163,62,2,NULL),(1651,44,27,2,NULL),(1652,165,62,2,NULL),(1653,165,62,2,NULL),(1654,33,62,2,NULL),(1655,47,27,2,NULL),(1656,93,62,2,NULL),(1657,93,62,2,NULL),(1658,96,62,2,NULL),(1659,51,27,2,NULL),(1660,102,62,2,NULL),(1661,102,62,2,NULL),(1662,106,62,2,NULL),(1663,54,27,2,NULL),(1664,111,62,2,NULL),(1665,111,62,2,NULL),(1666,133,62,2,NULL),(1667,72,27,2,NULL),(1668,136,62,2,NULL),(1669,136,62,2,NULL),(1670,139,62,2,NULL),(1671,75,27,2,NULL),(1672,142,62,2,NULL),(1673,142,62,2,NULL),(1674,144,62,2,NULL),(1675,83,27,2,NULL),(1676,185,62,2,NULL),(1677,185,62,2,NULL),(1678,198,62,2,NULL),(1679,87,27,2,NULL),(1680,37,62,2,NULL),(1681,37,62,2,NULL),(1682,43,62,2,NULL),(1683,91,27,2,NULL),(1684,46,62,2,NULL),(1685,46,62,2,NULL),(1686,52,62,2,NULL),(1687,123,27,2,NULL),(1688,68,10,2,NULL),(1689,68,10,2,NULL),(1690,68,31,2,NULL),(1691,130,27,2,NULL),(1692,64,24,2,NULL),(1693,64,24,2,NULL),(1694,143,4,2,NULL),(1695,38,34,2,NULL),(1696,149,4,2,NULL),(1697,149,4,2,NULL),(1698,44,34,2,NULL),(1699,152,4,2,NULL),(1700,155,4,2,NULL),(1701,155,4,2,NULL),(1702,47,34,2,NULL),(1703,157,4,2,NULL),(1704,158,4,2,NULL),(1705,158,4,2,NULL),(1706,51,34,2,NULL),(1707,160,4,2,NULL),(1708,163,4,2,NULL),(1709,163,4,2,NULL),(1710,54,34,2,NULL),(1711,165,4,2,NULL),(1712,143,5,2,NULL),(1713,143,5,2,NULL),(1714,72,34,2,NULL),(1715,149,5,2,NULL),(1716,152,5,2,NULL),(1717,152,5,2,NULL),(1718,155,5,2,NULL),(1719,75,34,2,NULL),(1720,157,5,2,NULL),(1721,157,5,2,NULL),(1722,158,5,2,NULL),(1723,83,34,2,NULL),(1724,160,5,2,NULL),(1725,160,5,2,NULL),(1726,163,5,2,NULL),(1727,87,34,2,NULL),(1728,165,5,2,NULL),(1729,165,5,2,NULL),(1730,143,6,2,NULL),(1731,91,34,2,NULL),(1732,149,6,2,NULL),(1733,149,6,2,NULL),(1734,152,6,2,NULL),(1735,123,34,2,NULL),(1736,155,6,2,NULL),(1737,155,6,2,NULL),(1738,157,6,2,NULL),(1739,130,34,2,NULL),(1740,158,6,2,NULL),(1741,158,6,2,NULL),(1742,160,6,2,NULL),(1743,38,38,2,NULL),(1744,163,6,2,NULL),(1745,163,6,2,NULL),(1746,165,6,2,NULL),(1747,44,38,2,NULL),(1748,143,46,2,NULL),(1749,143,46,2,NULL),(1750,149,46,2,NULL),(1751,47,38,2,NULL),(1752,152,46,2,NULL),(1753,152,46,2,NULL),(1754,51,38,2,NULL),(1755,155,46,2,NULL),(1756,157,46,2,NULL),(1757,157,46,2,NULL),(1758,158,46,2,NULL),(1759,54,38,2,NULL),(1760,160,46,2,NULL),(1761,160,46,2,NULL),(1762,163,46,2,NULL),(1763,72,38,2,NULL),(1764,165,46,2,NULL),(1765,165,46,2,NULL),(1766,75,38,2,NULL),(1767,143,63,2,NULL),(1768,149,63,2,NULL),(1769,149,63,2,NULL),(1770,83,38,2,NULL),(1771,152,63,2,NULL),(1772,155,63,2,NULL),(1773,155,63,2,NULL),(1774,87,38,2,NULL),(1775,157,63,2,NULL),(1776,158,63,2,NULL),(1777,158,63,2,NULL),(1778,160,63,2,NULL),(1779,91,38,2,NULL),(1780,163,63,2,NULL),(1781,163,63,2,NULL),(1782,123,38,2,NULL),(1783,165,63,2,NULL),(1784,143,74,2,NULL),(1785,143,74,2,NULL),(1786,149,74,2,NULL),(1787,130,38,2,NULL),(1788,152,74,2,NULL),(1789,152,74,2,NULL),(1790,38,57,2,NULL),(1791,155,74,2,NULL),(1792,157,74,2,NULL),(1793,157,74,2,NULL),(1794,158,74,2,NULL),(1795,44,57,2,NULL),(1796,160,74,2,NULL),(1797,160,74,2,NULL),(1798,47,57,2,NULL),(1799,163,74,2,NULL),(1800,165,74,2,NULL),(1801,165,74,2,NULL),(1802,143,75,2,NULL),(1803,51,57,2,NULL),(1804,149,75,2,NULL),(1805,149,75,2,NULL),(1806,54,57,2,NULL),(1807,152,75,2,NULL),(1808,155,75,2,NULL),(1809,155,75,2,NULL),(1810,72,57,2,NULL),(1811,157,75,2,NULL),(1812,158,75,2,NULL),(1813,158,75,2,NULL),(1814,160,75,2,NULL),(1815,75,57,2,NULL),(1816,163,75,2,NULL),(1817,163,75,2,NULL),(1818,165,75,2,NULL),(1819,83,57,2,NULL),(1820,87,57,2,NULL),(1821,91,57,2,NULL),(1822,143,9,2,NULL),(1823,143,9,2,NULL),(1824,149,9,2,NULL),(1825,123,57,2,NULL),(1826,152,9,2,NULL),(1827,155,9,2,NULL),(1828,155,9,2,NULL),(1829,130,57,2,NULL),(1830,157,9,2,NULL),(1831,157,9,2,NULL),(1832,157,9,2,NULL),(1833,38,59,2,NULL),(1834,158,9,2,NULL),(1835,158,9,2,NULL),(1836,160,9,2,NULL),(1837,44,59,2,NULL),(1838,163,9,2,NULL),(1839,163,9,2,NULL),(1840,163,9,2,NULL),(1841,47,59,2,NULL),(1842,165,9,2,NULL),(1843,165,9,2,NULL),(1844,42,24,2,NULL),(1845,51,59,2,NULL),(1846,126,24,2,NULL),(1847,126,24,2,NULL),(1848,126,24,2,NULL),(1849,54,59,2,NULL),(1850,131,24,2,NULL),(1851,131,24,2,NULL),(1852,135,24,2,NULL),(1853,72,59,2,NULL),(1854,138,24,2,NULL),(1855,138,24,2,NULL),(1856,138,24,2,NULL),(1857,75,59,2,NULL),(1858,141,24,2,NULL),(1859,141,24,2,NULL),(1860,171,24,2,NULL),(1861,83,59,2,NULL),(1862,184,24,2,NULL),(1863,184,24,2,NULL),(1864,184,24,2,NULL),(1865,87,59,2,NULL),(1866,186,24,2,NULL),(1867,186,24,2,NULL),(1868,192,24,2,NULL),(1869,91,59,2,NULL),(1870,194,24,2,NULL),(1871,194,24,2,NULL),(1872,194,24,2,NULL),(1873,123,59,2,NULL),(1874,197,24,2,NULL),(1875,197,24,2,NULL),(1876,197,24,2,NULL),(1877,130,59,2,NULL),(1878,173,24,2,NULL),(1879,173,24,2,NULL),(1880,143,18,2,NULL),(1881,38,71,2,NULL),(1882,149,18,2,NULL),(1883,149,18,2,NULL),(1884,149,18,2,NULL),(1885,44,71,2,NULL),(1886,152,18,2,NULL),(1887,152,18,2,NULL),(1888,152,18,2,NULL),(1889,47,71,2,NULL),(1890,155,18,2,NULL),(1891,155,18,2,NULL),(1892,155,18,2,NULL),(1893,51,71,2,NULL),(1894,157,18,2,NULL),(1895,157,18,2,NULL),(1896,157,18,2,NULL),(1897,54,71,2,NULL),(1898,158,18,2,NULL),(1899,158,18,2,NULL),(1900,158,18,2,NULL),(1901,72,71,2,NULL),(1902,160,18,2,NULL),(1903,160,18,2,NULL),(1904,160,18,2,NULL),(1905,75,71,2,NULL),(1906,163,18,2,NULL),(1907,163,18,2,NULL),(1908,163,18,2,NULL),(1909,83,71,2,NULL),(1910,165,18,2,NULL),(1911,165,18,2,NULL),(1912,165,18,2,NULL),(1913,87,71,2,NULL),(1914,143,21,2,NULL),(1915,143,21,2,NULL),(1916,143,21,2,NULL),(1917,91,71,2,NULL),(1918,149,21,2,NULL),(1919,149,21,2,NULL),(1920,152,21,2,NULL),(1921,123,71,2,NULL),(1922,155,21,2,NULL),(1923,155,21,2,NULL),(1924,155,21,2,NULL),(1925,130,71,2,NULL),(1926,157,21,2,NULL),(1927,157,21,2,NULL),(1928,158,21,2,NULL),(1929,38,23,2,NULL),(1930,160,21,2,NULL),(1931,160,21,2,NULL),(1932,160,21,2,NULL),(1933,163,21,2,NULL),(1934,163,21,2,NULL),(1935,165,21,2,NULL),(1936,143,25,2,NULL),(1937,149,25,2,NULL),(1938,149,25,2,NULL),(1939,44,23,2,NULL),(1940,152,25,2,NULL),(1941,155,25,2,NULL),(1942,155,25,2,NULL),(1943,47,23,2,NULL),(1944,157,25,2,NULL),(1945,158,25,2,NULL),(1946,158,25,2,NULL),(1947,51,23,2,NULL),(1948,160,25,2,NULL),(1949,54,23,2,NULL),(1950,163,25,2,NULL),(1951,163,25,2,NULL),(1952,165,25,2,NULL),(1953,72,23,2,NULL),(1954,143,50,2,NULL),(1955,143,50,2,NULL),(1956,149,50,2,NULL),(1957,75,23,2,NULL),(1958,152,50,2,NULL),(1959,155,50,2,NULL),(1960,157,50,2,NULL),(1961,83,23,2,NULL),(1962,158,50,2,NULL),(1963,158,50,2,NULL),(1964,160,50,2,NULL),(1965,87,23,2,NULL),(1966,163,50,2,NULL),(1967,163,50,2,NULL),(1968,165,50,2,NULL),(1969,91,23,2,NULL),(1970,143,51,2,NULL),(1971,143,51,2,NULL),(1972,149,51,2,NULL),(1973,123,23,2,NULL),(1974,152,51,2,NULL),(1975,152,51,2,NULL),(1976,155,51,2,NULL),(1977,130,23,2,NULL),(1978,157,51,2,NULL),(1979,157,51,2,NULL),(1980,158,51,2,NULL),(1981,160,51,2,NULL),(1982,160,51,2,NULL),(1983,33,1,2,NULL),(1984,163,51,2,NULL),(1985,93,1,2,NULL),(1986,165,51,2,NULL),(1987,165,51,2,NULL),(1988,143,64,2,NULL),(1989,149,64,2,NULL),(1990,96,1,2,NULL),(1991,149,64,2,NULL),(1992,152,64,2,NULL),(1993,155,64,2,NULL),(1994,155,64,2,NULL),(1995,102,1,2,NULL),(1996,157,64,2,NULL),(1997,158,64,2,NULL),(1998,106,1,2,NULL),(1999,158,64,2,NULL),(2000,160,64,2,NULL),(2001,163,64,2,NULL),(2002,163,64,2,NULL),(2003,111,1,2,NULL),(2004,165,64,2,NULL),(2005,143,76,2,NULL),(2006,133,1,2,NULL),(2007,149,76,2,NULL),(2008,152,76,2,NULL),(2009,136,1,2,NULL),(2010,155,76,2,NULL),(2011,155,76,2,NULL),(2012,157,76,2,NULL),(2013,158,76,2,NULL),(2014,139,1,2,NULL),(2015,160,76,2,NULL),(2016,163,76,2,NULL),(2017,142,1,2,NULL),(2018,165,76,2,NULL),(2019,165,76,2,NULL),(2020,143,82,2,NULL),(2021,149,82,2,NULL),(2022,144,1,2,NULL),(2023,149,82,2,NULL),(2024,152,82,2,NULL),(2025,155,82,2,NULL),(2026,185,1,2,NULL),(2027,155,82,2,NULL),(2028,157,82,2,NULL),(2029,198,1,2,NULL),(2030,158,82,2,NULL),(2031,158,82,2,NULL),(2032,160,82,2,NULL),(2033,38,32,2,NULL),(2034,163,82,2,NULL),(2035,163,82,2,NULL),(2036,165,82,2,NULL),(2037,143,27,2,NULL),(2038,143,27,2,NULL),(2039,44,32,2,NULL),(2040,149,27,2,NULL),(2041,152,27,2,NULL),(2042,152,27,2,NULL),(2043,47,32,2,NULL),(2044,155,27,2,NULL),(2045,157,27,2,NULL),(2046,157,27,2,NULL),(2047,51,32,2,NULL),(2048,158,27,2,NULL),(2049,160,27,2,NULL),(2050,160,27,2,NULL),(2051,54,32,2,NULL),(2052,163,27,2,NULL),(2053,165,27,2,NULL),(2054,165,27,2,NULL),(2055,72,32,2,NULL),(2056,143,34,2,NULL),(2057,149,34,2,NULL),(2058,149,34,2,NULL),(2059,75,32,2,NULL),(2060,152,34,2,NULL),(2061,155,34,2,NULL),(2062,155,34,2,NULL),(2063,155,34,2,NULL),(2064,83,32,2,NULL),(2065,157,34,2,NULL),(2066,158,34,2,NULL),(2067,158,34,2,NULL),(2068,87,32,2,NULL),(2069,160,34,2,NULL),(2070,163,34,2,NULL),(2071,163,34,2,NULL),(2072,91,32,2,NULL),(2073,165,34,2,NULL),(2074,165,34,2,NULL),(2075,165,34,2,NULL),(2076,123,32,2,NULL),(2077,143,38,2,NULL),(2078,149,38,2,NULL),(2079,149,38,2,NULL),(2080,130,32,2,NULL),(2081,152,38,2,NULL),(2082,155,38,2,NULL),(2083,155,38,2,NULL),(2084,38,36,2,NULL),(2085,157,38,2,NULL),(2086,157,38,2,NULL),(2087,157,38,2,NULL),(2088,44,36,2,NULL),(2089,158,38,2,NULL),(2090,47,36,2,NULL),(2091,160,38,2,NULL),(2092,160,38,2,NULL),(2093,163,38,2,NULL),(2094,165,38,2,NULL),(2095,165,38,2,NULL),(2096,51,36,2,NULL),(2097,143,57,2,NULL),(2098,143,57,2,NULL),(2099,54,36,2,NULL),(2100,149,57,2,NULL),(2101,72,36,2,NULL),(2102,152,57,2,NULL),(2103,152,57,2,NULL),(2104,155,57,2,NULL),(2105,75,36,2,NULL),(2106,157,57,2,NULL),(2107,157,57,2,NULL),(2108,158,57,2,NULL),(2109,83,36,2,NULL),(2110,160,57,2,NULL),(2111,160,57,2,NULL),(2112,163,57,2,NULL),(2113,87,36,2,NULL),(2114,165,57,2,NULL),(2115,165,57,2,NULL),(2116,143,59,2,NULL),(2117,91,36,2,NULL),(2118,149,59,2,NULL),(2119,149,59,2,NULL),(2120,152,59,2,NULL),(2121,155,59,2,NULL),(2122,155,59,2,NULL),(2123,123,36,2,NULL),(2124,157,59,2,NULL),(2125,158,59,2,NULL),(2126,130,36,2,NULL),(2127,160,59,2,NULL),(2128,163,59,2,NULL),(2129,38,40,2,NULL),(2130,165,59,2,NULL),(2131,165,59,2,NULL),(2132,143,71,2,NULL),(2133,149,71,2,NULL),(2134,149,71,2,NULL),(2135,44,40,2,NULL),(2136,152,71,2,NULL),(2137,155,71,2,NULL),(2138,47,40,2,NULL),(2139,157,71,2,NULL),(2140,158,71,2,NULL),(2141,51,40,2,NULL),(2142,160,71,2,NULL),(2143,160,71,2,NULL),(2144,163,71,2,NULL),(2145,165,71,2,NULL),(2146,54,40,2,NULL),(2147,165,71,2,NULL),(2148,143,23,2,NULL),(2149,149,23,2,NULL),(2150,72,40,2,NULL),(2151,149,23,2,NULL),(2152,152,23,2,NULL),(2153,155,23,2,NULL),(2154,75,40,2,NULL),(2155,157,23,2,NULL),(2156,158,23,2,NULL),(2157,83,40,2,NULL),(2158,160,23,2,NULL),(2159,160,23,2,NULL),(2160,163,23,2,NULL),(2161,165,23,2,NULL),(2162,165,23,2,NULL),(2163,87,40,2,NULL),(2164,33,24,2,NULL),(2165,93,24,2,NULL),(2166,93,24,2,NULL),(2167,91,40,2,NULL),(2168,96,24,2,NULL),(2169,102,24,2,NULL),(2170,102,24,2,NULL),(2171,123,40,2,NULL),(2172,106,24,2,NULL),(2173,111,24,2,NULL),(2174,111,24,2,NULL),(2175,130,40,2,NULL),(2176,133,24,2,NULL),(2177,136,24,2,NULL),(2178,136,24,2,NULL),(2179,38,78,2,NULL),(2180,139,24,2,NULL),(2181,44,78,2,NULL),(2182,142,24,2,NULL),(2183,142,24,2,NULL),(2184,144,24,2,NULL),(2185,47,78,2,NULL),(2186,185,24,2,NULL),(2187,185,24,2,NULL),(2188,198,24,2,NULL),(2189,143,32,2,NULL),(2190,51,78,2,NULL),(2191,149,32,2,NULL),(2192,152,32,2,NULL),(2193,54,78,2,NULL),(2194,155,32,2,NULL),(2195,155,32,2,NULL),(2196,157,32,2,NULL),(2197,72,78,2,NULL),(2198,158,32,2,NULL),(2199,160,32,2,NULL),(2200,163,32,2,NULL),(2201,75,78,2,NULL),(2202,165,32,2,NULL),(2203,165,32,2,NULL),(2204,143,36,2,NULL),(2205,83,78,2,NULL),(2206,149,36,2,NULL),(2207,149,36,2,NULL),(2208,152,36,2,NULL),(2209,155,36,2,NULL),(2210,87,78,2,NULL),(2211,155,36,2,NULL),(2212,157,36,2,NULL),(2213,158,36,2,NULL),(2214,91,78,2,NULL),(2215,158,36,2,NULL),(2216,160,36,2,NULL),(2217,163,36,2,NULL),(2218,163,36,2,NULL),(2219,123,78,2,NULL),(2220,165,36,2,NULL),(2221,130,78,2,NULL),(2222,143,40,2,NULL),(2223,143,40,2,NULL),(2224,149,40,2,NULL),(2225,38,79,2,NULL),(2226,152,40,2,NULL),(2227,152,40,2,NULL),(2228,155,40,2,NULL),(2229,157,40,2,NULL),(2230,44,79,2,NULL),(2231,157,40,2,NULL),(2232,158,40,2,NULL),(2233,47,79,2,NULL),(2234,160,40,2,NULL),(2235,160,40,2,NULL),(2236,163,40,2,NULL),(2237,51,79,2,NULL),(2238,165,40,2,NULL),(2239,165,40,2,NULL),(2240,143,78,2,NULL),(2241,54,79,2,NULL),(2242,149,78,2,NULL),(2243,149,78,2,NULL),(2244,152,78,2,NULL),(2245,72,79,2,NULL),(2246,155,78,2,NULL),(2247,155,78,2,NULL),(2248,157,78,2,NULL),(2249,158,78,2,NULL),(2250,158,78,2,NULL),(2251,75,79,2,NULL),(2252,160,78,2,NULL),(2253,163,78,2,NULL),(2254,163,78,2,NULL),(2255,83,79,2,NULL),(2256,165,78,2,NULL),(2257,143,79,2,NULL),(2258,143,79,2,NULL),(2259,87,79,2,NULL),(2260,149,79,2,NULL),(2261,152,79,2,NULL),(2262,91,79,2,NULL),(2263,152,79,2,NULL),(2264,155,79,2,NULL),(2265,123,79,2,NULL),(2266,157,79,2,NULL),(2267,157,79,2,NULL),(2268,158,79,2,NULL),(2269,160,79,2,NULL),(2270,160,79,2,NULL),(2271,130,79,2,NULL),(2272,163,79,2,NULL),(2273,165,79,2,NULL),(2274,165,79,2,NULL),(2275,38,80,2,NULL),(2276,143,80,2,NULL),(2277,149,80,2,NULL),(2278,44,80,2,NULL),(2279,149,80,2,NULL),(2280,152,80,2,NULL),(2281,155,80,2,NULL),(2282,47,80,2,NULL),(2283,155,80,2,NULL),(2284,157,80,2,NULL),(2285,158,80,2,NULL),(2286,158,80,2,NULL),(2287,51,80,2,NULL),(2288,160,80,2,NULL),(2289,54,80,2,NULL),(2290,163,80,2,NULL),(2291,163,80,2,NULL),(2292,165,80,2,NULL),(2293,72,80,2,NULL),(2294,143,81,2,NULL),(2295,143,81,2,NULL),(2296,149,81,2,NULL),(2297,152,81,2,NULL),(2298,75,80,2,NULL),(2299,152,81,2,NULL),(2300,155,81,2,NULL),(2301,83,80,2,NULL),(2302,157,81,2,NULL),(2303,157,81,2,NULL),(2304,158,81,2,NULL),(2305,87,80,2,NULL),(2306,160,81,2,NULL),(2307,160,81,2,NULL),(2308,163,81,2,NULL),(2309,165,81,2,NULL),(2310,165,81,2,NULL),(2311,91,80,2,NULL),(2312,143,83,2,NULL),(2313,123,80,2,NULL),(2314,149,83,2,NULL),(2315,149,83,2,NULL),(2316,152,83,2,NULL),(2317,155,83,2,NULL),(2318,130,80,2,NULL),(2319,155,83,2,NULL),(2320,157,83,2,NULL),(2321,38,81,2,NULL),(2322,158,83,2,NULL),(2323,158,83,2,NULL),(2324,160,83,2,NULL),(2325,44,81,2,NULL),(2326,163,83,2,NULL),(2327,163,83,2,NULL),(2328,165,83,2,NULL),(2329,143,30,2,NULL),(2330,47,81,2,NULL),(2331,143,30,2,NULL),(2332,149,30,2,NULL),(2333,51,81,2,NULL),(2334,152,30,2,NULL),(2335,152,30,2,NULL),(2336,155,30,2,NULL),(2337,54,81,2,NULL),(2338,157,30,2,NULL),(2339,157,30,2,NULL),(2340,158,30,2,NULL),(2341,72,81,2,NULL),(2342,160,30,2,NULL),(2343,160,30,2,NULL),(2344,163,30,2,NULL),(2345,165,30,2,NULL),(2346,75,81,2,NULL),(2347,165,30,2,NULL),(2348,37,24,2,NULL),(2349,43,24,2,NULL),(2350,83,81,2,NULL),(2351,43,24,2,NULL),(2352,46,24,2,NULL),(2353,87,81,2,NULL),(2354,52,24,2,NULL),(2355,52,24,2,NULL),(2356,143,41,2,NULL),(2357,91,81,2,NULL),(2358,149,41,2,NULL),(2359,149,41,2,NULL),(2360,152,41,2,NULL),(2361,123,81,2,NULL),(2362,155,41,2,NULL),(2363,155,41,2,NULL),(2364,157,41,2,NULL),(2365,130,81,2,NULL),(2366,158,41,2,NULL),(2367,160,41,2,NULL),(2368,163,41,2,NULL),(2369,38,83,2,NULL),(2370,165,41,2,NULL),(2371,165,41,2,NULL),(2372,143,43,2,NULL),(2373,44,83,2,NULL),(2374,149,43,2,NULL),(2375,149,43,2,NULL),(2376,152,43,2,NULL),(2377,47,83,2,NULL),(2378,155,43,2,NULL),(2379,155,43,2,NULL),(2380,157,43,2,NULL),(2381,51,83,2,NULL),(2382,158,43,2,NULL),(2383,158,43,2,NULL),(2384,160,43,2,NULL),(2385,54,83,2,NULL),(2386,163,43,2,NULL),(2387,163,43,2,NULL),(2388,165,43,2,NULL),(2389,72,83,2,NULL),(2390,143,44,2,NULL),(2391,149,44,2,NULL),(2392,152,44,2,NULL),(2393,75,83,2,NULL),(2394,155,44,2,NULL),(2395,155,44,2,NULL),(2396,157,44,2,NULL),(2397,83,83,2,NULL),(2398,158,44,2,NULL),(2399,158,44,2,NULL),(2400,160,44,2,NULL),(2401,87,83,2,NULL),(2402,163,44,2,NULL),(2403,163,44,2,NULL),(2404,165,44,2,NULL),(2405,91,83,2,NULL),(2406,64,27,2,NULL),(2407,64,27,2,NULL),(2408,42,27,2,NULL),(2409,123,83,2,NULL),(2410,126,27,2,NULL),(2411,130,83,2,NULL),(2412,131,27,2,NULL),(2413,131,27,2,NULL),(2414,135,27,2,NULL),(2415,138,27,2,NULL),(2416,38,30,2,NULL),(2417,138,27,2,NULL),(2418,141,27,2,NULL),(2419,44,30,2,NULL),(2420,171,27,2,NULL),(2421,171,27,2,NULL),(2422,184,27,2,NULL),(2423,186,27,2,NULL),(2424,47,30,2,NULL),(2425,186,27,2,NULL),(2426,192,27,2,NULL),(2427,51,30,2,NULL),(2428,194,27,2,NULL),(2429,194,27,2,NULL),(2430,197,27,2,NULL),(2431,173,27,2,NULL),(2432,173,27,2,NULL),(2433,54,30,2,NULL),(2434,33,27,2,NULL),(2435,72,30,2,NULL),(2436,93,27,2,NULL),(2437,93,27,2,NULL),(2438,96,27,2,NULL),(2439,75,30,2,NULL),(2440,102,27,2,NULL),(2441,102,27,2,NULL),(2442,106,27,2,NULL),(2443,111,27,2,NULL),(2444,83,30,2,NULL),(2445,111,27,2,NULL),(2446,133,27,2,NULL),(2447,136,27,2,NULL),(2448,87,30,2,NULL),(2449,139,27,2,NULL),(2450,142,27,2,NULL),(2451,144,27,2,NULL),(2452,144,27,2,NULL),(2453,91,30,2,NULL),(2454,185,27,2,NULL),(2455,198,27,2,NULL),(2456,123,30,2,NULL),(2457,198,27,2,NULL),(2458,37,27,2,NULL),(2459,130,30,2,NULL),(2460,43,27,2,NULL),(2461,43,27,2,NULL),(2462,46,27,2,NULL),(2463,52,27,2,NULL),(2464,37,1,2,NULL),(2465,52,27,2,NULL),(2466,64,34,2,NULL),(2467,43,1,2,NULL),(2468,42,34,2,NULL),(2469,42,34,2,NULL),(2470,126,34,2,NULL),(2471,46,1,2,NULL),(2472,131,34,2,NULL),(2473,131,34,2,NULL),(2474,135,34,2,NULL),(2475,52,1,2,NULL),(2476,138,34,2,NULL),(2477,138,34,2,NULL),(2478,141,34,2,NULL),(2479,38,41,2,NULL),(2480,171,34,2,NULL),(2481,171,34,2,NULL),(2482,184,34,2,NULL),(2483,186,34,2,NULL),(2484,186,34,2,NULL),(2485,44,41,2,NULL),(2486,192,34,2,NULL),(2487,47,41,2,NULL),(2488,194,34,2,NULL),(2489,194,34,2,NULL),(2490,197,34,2,NULL),(2491,173,34,2,NULL),(2492,51,41,2,NULL),(2493,173,34,2,NULL),(2494,54,41,2,NULL),(2495,33,34,2,NULL),(2496,93,34,2,NULL),(2497,96,34,2,NULL),(2498,102,34,2,NULL),(2499,72,41,2,NULL),(2500,102,34,2,NULL),(2501,106,34,2,NULL),(2502,111,34,2,NULL),(2503,111,34,2,NULL),(2504,75,41,2,NULL),(2505,133,34,2,NULL),(2506,136,34,2,NULL),(2507,136,34,2,NULL),(2508,83,41,2,NULL),(2509,139,34,2,NULL),(2510,142,34,2,NULL),(2511,142,34,2,NULL),(2512,87,41,2,NULL),(2513,144,34,2,NULL),(2514,185,34,2,NULL),(2515,185,34,2,NULL),(2516,91,41,2,NULL),(2517,198,34,2,NULL),(2518,37,34,2,NULL),(2519,37,34,2,NULL),(2520,123,41,2,NULL),(2521,43,34,2,NULL),(2522,46,34,2,NULL),(2523,46,34,2,NULL),(2524,130,41,2,NULL),(2525,52,34,2,NULL),(2526,38,43,2,NULL),(2527,64,38,2,NULL),(2528,44,43,2,NULL),(2529,42,38,2,NULL),(2530,42,38,2,NULL),(2531,126,38,2,NULL),(2532,47,43,2,NULL),(2533,131,38,2,NULL),(2534,131,38,2,NULL),(2535,135,38,2,NULL),(2536,51,43,2,NULL),(2537,138,38,2,NULL),(2538,138,38,2,NULL),(2539,141,38,2,NULL),(2540,54,43,2,NULL),(2541,171,38,2,NULL),(2542,171,38,2,NULL),(2543,184,38,2,NULL),(2544,72,43,2,NULL),(2545,186,38,2,NULL),(2546,186,38,2,NULL),(2547,192,38,2,NULL),(2548,75,43,2,NULL),(2549,194,38,2,NULL),(2550,194,38,2,NULL),(2551,197,38,2,NULL),(2552,83,43,2,NULL),(2553,173,38,2,NULL),(2554,173,38,2,NULL),(2555,87,43,2,NULL),(2556,33,38,2,NULL),(2557,33,38,2,NULL),(2558,93,38,2,NULL),(2559,91,43,2,NULL),(2560,96,38,2,NULL),(2561,96,38,2,NULL),(2562,102,38,2,NULL),(2563,123,43,2,NULL),(2564,106,38,2,NULL),(2565,106,38,2,NULL),(2566,111,38,2,NULL),(2567,133,38,2,NULL),(2568,130,43,2,NULL),(2569,133,38,2,NULL),(2570,136,38,2,NULL),(2571,38,44,2,NULL),(2572,139,38,2,NULL),(2573,139,38,2,NULL),(2574,142,38,2,NULL),(2575,44,44,2,NULL),(2576,144,38,2,NULL),(2577,144,38,2,NULL),(2578,185,38,2,NULL),(2579,47,44,2,NULL),(2580,198,38,2,NULL),(2581,198,38,2,NULL),(2582,37,38,2,NULL),(2583,43,38,2,NULL),(2584,43,38,2,NULL),(2585,51,44,2,NULL),(2586,46,38,2,NULL),(2587,54,44,2,NULL),(2588,52,38,2,NULL),(2589,52,38,2,NULL),(2590,72,44,2,NULL),(2591,64,57,2,NULL),(2592,64,57,2,NULL),(2593,64,57,2,NULL),(2594,75,44,2,NULL),(2595,83,44,2,NULL),(2596,42,57,2,NULL),(2597,42,57,2,NULL),(2598,42,57,2,NULL),(2599,87,44,2,NULL),(2600,126,57,2,NULL),(2601,126,57,2,NULL),(2602,126,57,2,NULL),(2603,91,44,2,NULL),(2604,131,57,2,NULL),(2605,131,57,2,NULL),(2606,131,57,2,NULL),(2607,123,44,2,NULL),(2608,135,57,2,NULL),(2609,135,57,2,NULL),(2610,135,57,2,NULL),(2611,130,44,2,NULL),(2612,138,57,2,NULL),(2613,138,57,2,NULL),(2614,138,57,2,NULL),(2615,64,4,2,NULL),(2616,141,57,2,NULL),(2617,141,57,2,NULL),(2618,141,57,2,NULL),(2619,64,5,2,NULL),(2620,171,57,2,NULL),(2621,171,57,2,NULL),(2622,171,57,2,NULL),(2623,64,6,2,NULL),(2624,184,57,2,NULL),(2625,184,57,2,NULL),(2626,186,57,2,NULL),(2627,64,46,2,NULL),(2628,192,57,2,NULL),(2629,192,57,2,NULL),(2630,192,57,2,NULL),(2631,64,63,2,NULL),(2632,194,57,2,NULL),(2633,194,57,2,NULL),(2634,197,57,2,NULL),(2635,64,74,2,NULL),(2636,173,57,2,NULL),(2637,173,57,2,NULL),(2638,173,57,2,NULL),(2639,64,75,2,NULL),(2640,33,57,2,NULL),(2641,33,57,2,NULL),(2642,33,57,2,NULL),(2643,64,9,2,NULL),(2644,93,57,2,NULL),(2645,96,57,2,NULL),(2646,96,57,2,NULL),(2647,64,18,2,NULL),(2648,102,57,2,NULL),(2649,106,57,2,NULL),(2650,106,57,2,NULL),(2651,111,57,2,NULL),(2652,64,21,2,NULL),(2653,133,57,2,NULL),(2654,133,57,2,NULL),(2655,64,25,2,NULL),(2656,136,57,2,NULL),(2657,139,57,2,NULL),(2658,139,57,2,NULL),(2659,64,50,2,NULL),(2660,142,57,2,NULL),(2661,144,57,2,NULL),(2662,144,57,2,NULL),(2663,64,51,2,NULL),(2664,185,57,2,NULL),(2665,198,57,2,NULL),(2666,198,57,2,NULL),(2667,64,64,2,NULL),(2668,37,57,2,NULL),(2669,43,57,2,NULL),(2670,43,57,2,NULL),(2671,64,76,2,NULL),(2672,46,57,2,NULL),(2673,46,57,2,NULL),(2674,46,57,2,NULL),(2675,64,82,2,NULL),(2676,52,57,2,NULL),(2677,52,57,2,NULL),(2678,64,59,2,NULL),(2679,64,71,2,NULL),(2680,42,59,2,NULL),(2681,42,59,2,NULL),(2682,42,59,2,NULL),(2683,64,23,2,NULL),(2684,126,59,2,NULL),(2685,64,32,2,NULL),(2686,131,59,2,NULL),(2687,131,59,2,NULL),(2688,135,59,2,NULL),(2689,135,59,2,NULL),(2690,135,59,2,NULL),(2691,64,36,2,NULL),(2692,138,59,2,NULL),(2693,64,40,2,NULL),(2694,141,59,2,NULL),(2695,141,59,2,NULL),(2696,171,59,2,NULL),(2697,64,78,2,NULL),(2698,184,59,2,NULL),(2699,184,59,2,NULL),(2700,186,59,2,NULL),(2701,64,79,2,NULL),(2702,192,59,2,NULL),(2703,192,59,2,NULL),(2704,194,59,2,NULL),(2705,64,80,2,NULL),(2706,197,59,2,NULL),(2707,197,59,2,NULL),(2708,173,59,2,NULL),(2709,64,81,2,NULL),(2710,33,59,2,NULL),(2711,33,59,2,NULL),(2712,93,59,2,NULL),(2713,64,83,2,NULL),(2714,96,59,2,NULL),(2715,96,59,2,NULL),(2716,96,59,2,NULL),(2717,64,30,2,NULL),(2718,102,59,2,NULL),(2719,102,59,2,NULL),(2720,102,59,2,NULL),(2721,64,41,2,NULL),(2722,106,59,2,NULL),(2723,106,59,2,NULL),(2724,106,59,2,NULL),(2725,64,43,2,NULL),(2726,111,59,2,NULL),(2727,111,59,2,NULL),(2728,111,59,2,NULL),(2729,64,44,2,NULL),(2730,133,59,2,NULL),(2731,133,59,2,NULL),(2732,133,59,2,NULL),(2733,42,4,2,NULL),(2734,136,59,2,NULL),(2735,136,59,2,NULL),(2736,139,59,2,NULL),(2737,126,4,2,NULL),(2738,142,59,2,NULL),(2739,142,59,2,NULL),(2740,142,59,2,NULL),(2741,131,4,2,NULL),(2742,144,59,2,NULL),(2743,185,59,2,NULL),(2744,185,59,2,NULL),(2745,135,4,2,NULL),(2746,198,59,2,NULL),(2747,198,59,2,NULL),(2748,198,59,2,NULL),(2749,138,4,2,NULL),(2750,37,59,2,NULL),(2751,37,59,2,NULL),(2752,37,59,2,NULL),(2753,141,4,2,NULL),(2754,43,59,2,NULL),(2755,43,59,2,NULL),(2756,46,59,2,NULL),(2757,171,4,2,NULL),(2758,52,59,2,NULL),(2759,52,59,2,NULL),(2760,52,59,2,NULL),(2761,184,4,2,NULL),(2762,186,4,2,NULL),(2763,42,71,2,NULL),(2764,42,71,2,NULL),(2765,42,71,2,NULL),(2766,192,4,2,NULL),(2767,126,71,2,NULL),(2768,194,4,2,NULL),(2769,131,71,2,NULL),(2770,135,71,2,NULL),(2771,197,4,2,NULL),(2772,138,71,2,NULL),(2773,141,71,2,NULL),(2774,171,71,2,NULL),(2775,173,4,2,NULL),(2776,184,71,2,NULL),(2777,186,71,2,NULL),(2778,192,71,2,NULL),(2779,33,4,2,NULL),(2780,194,71,2,NULL),(2781,194,71,2,NULL),(2782,197,71,2,NULL),(2783,173,71,2,NULL),(2784,173,71,2,NULL),(2785,93,4,2,NULL),(2786,33,71,2,NULL),(2787,96,4,2,NULL),(2788,93,71,2,NULL),(2789,93,71,2,NULL),(2790,96,71,2,NULL),(2791,102,4,2,NULL),(2792,102,71,2,NULL),(2793,106,71,2,NULL),(2794,106,71,2,NULL),(2795,106,4,2,NULL),(2796,111,71,2,NULL),(2797,133,71,2,NULL),(2798,133,71,2,NULL),(2799,111,4,2,NULL),(2800,136,71,2,NULL),(2801,136,71,2,NULL),(2802,136,71,2,NULL),(2803,133,4,2,NULL),(2804,139,71,2,NULL),(2805,139,71,2,NULL),(2806,139,71,2,NULL),(2807,136,4,2,NULL),(2808,142,71,2,NULL),(2809,142,71,2,NULL),(2810,144,71,2,NULL),(2811,139,4,2,NULL),(2812,185,71,2,NULL),(2813,185,71,2,NULL),(2814,185,71,2,NULL),(2815,142,4,2,NULL),(2816,198,71,2,NULL),(2817,198,71,2,NULL),(2818,37,71,2,NULL),(2819,144,4,2,NULL),(2820,43,71,2,NULL),(2821,43,71,2,NULL),(2822,43,71,2,NULL),(2823,185,4,2,NULL),(2824,46,71,2,NULL),(2825,46,71,2,NULL),(2826,52,71,2,NULL),(2827,198,4,2,NULL),(2828,37,4,2,NULL),(2829,43,4,2,NULL),(2830,46,4,2,NULL),(2831,52,4,2,NULL),(2832,42,5,2,NULL),(2833,126,5,2,NULL),(2834,131,5,2,NULL),(2835,135,5,2,NULL),(2836,138,5,2,NULL),(2837,141,5,2,NULL),(2838,171,5,2,NULL),(2839,184,5,2,NULL),(2840,186,5,2,NULL),(2841,192,5,2,NULL),(2842,194,5,2,NULL),(2843,197,5,2,NULL),(2844,173,5,2,NULL),(2845,33,5,2,NULL),(2846,93,5,2,NULL),(2847,96,5,2,NULL),(2848,102,5,2,NULL),(2849,106,5,2,NULL),(2850,111,5,2,NULL),(2851,133,5,2,NULL),(2852,136,5,2,NULL),(2853,139,5,2,NULL),(2854,142,5,2,NULL),(2855,144,5,2,NULL),(2856,185,5,2,NULL),(2857,198,5,2,NULL),(2858,37,5,2,NULL),(2859,43,5,2,NULL),(2860,46,5,2,NULL),(2861,52,5,2,NULL),(2862,2,5,2,NULL),(2863,2,21,2,NULL),(2864,2,36,2,NULL),(2865,2,43,2,NULL),(2866,42,6,2,NULL),(2867,126,6,2,NULL),(2868,131,6,2,NULL),(2869,135,6,2,NULL),(2870,138,6,2,NULL),(2871,141,6,2,NULL),(2872,171,6,2,NULL),(2873,184,6,2,NULL),(2874,186,6,2,NULL),(2875,192,6,2,NULL),(2876,194,6,2,NULL),(2877,197,6,2,NULL),(2878,173,6,2,NULL),(2879,33,6,2,NULL),(2880,93,6,2,NULL),(2881,96,6,2,NULL),(2882,102,6,2,NULL),(2883,106,6,2,NULL),(2884,111,6,2,NULL),(2885,133,6,2,NULL),(2886,136,6,2,NULL),(2887,139,6,2,NULL),(2888,142,6,2,NULL),(2889,144,6,2,NULL),(2890,185,6,2,NULL),(2891,198,6,2,NULL),(2892,37,6,2,NULL),(2893,43,6,2,NULL),(2894,46,6,2,NULL),(2895,52,6,2,NULL),(2896,42,46,2,NULL),(2897,126,46,2,NULL),(2898,131,46,2,NULL),(2899,135,46,2,NULL),(2900,138,46,2,NULL),(2901,141,46,2,NULL),(2902,171,46,2,NULL),(2903,184,46,2,NULL),(2904,186,46,2,NULL),(2905,192,46,2,NULL),(2906,194,46,2,NULL),(2907,197,46,2,NULL),(2908,173,46,2,NULL),(2909,33,46,2,NULL),(2910,93,46,2,NULL),(2911,96,46,2,NULL),(2912,102,46,2,NULL),(2913,106,46,2,NULL),(2914,111,46,2,NULL),(2915,133,46,2,NULL),(2916,136,46,2,NULL),(2917,139,46,2,NULL),(2918,142,46,2,NULL),(2919,144,46,2,NULL),(2920,185,46,2,NULL),(2921,198,46,2,NULL),(2922,37,46,2,NULL),(2923,43,46,2,NULL),(2924,46,46,2,NULL),(2925,52,46,2,NULL),(2926,42,63,2,NULL),(2927,126,63,2,NULL),(2928,131,63,2,NULL),(2929,135,63,2,NULL),(2930,138,63,2,NULL),(2931,141,63,2,NULL),(2932,171,63,2,NULL),(2933,184,63,2,NULL),(2934,186,63,2,NULL),(2935,192,63,2,NULL),(2936,194,63,2,NULL),(2937,197,63,2,NULL),(2938,173,63,2,NULL),(2939,33,63,2,NULL),(2940,93,63,2,NULL),(2941,96,63,2,NULL),(2942,102,63,2,NULL),(2943,106,63,2,NULL),(2944,111,63,2,NULL),(2945,133,63,2,NULL),(2946,136,63,2,NULL),(2947,139,63,2,NULL),(2948,142,63,2,NULL),(2949,144,63,2,NULL),(2950,185,63,2,NULL),(2951,198,63,2,NULL),(2952,37,63,2,NULL),(2953,43,63,2,NULL),(2954,46,63,2,NULL),(2955,52,63,2,NULL),(2956,42,74,2,NULL),(2957,126,74,2,NULL),(2958,131,74,2,NULL),(2959,135,74,2,NULL),(2960,138,74,2,NULL),(2961,141,74,2,NULL),(2962,171,74,2,NULL),(2963,184,74,2,NULL),(2964,186,74,2,NULL),(2965,192,74,2,NULL),(2966,194,74,2,NULL),(2967,197,74,2,NULL),(2968,173,74,2,NULL),(2969,33,74,2,NULL),(2970,93,74,2,NULL),(2971,96,74,2,NULL),(2972,102,74,2,NULL),(2973,106,74,2,NULL),(2974,111,74,2,NULL),(2975,133,74,2,NULL),(2976,136,74,2,NULL),(2977,139,74,2,NULL),(2978,142,74,2,NULL),(2979,144,74,2,NULL),(2980,185,74,2,NULL),(2981,198,74,2,NULL),(2982,37,74,2,NULL),(2983,43,74,2,NULL),(2984,46,74,2,NULL),(2985,52,74,2,NULL),(2986,42,75,2,NULL),(2987,126,75,2,NULL),(2988,131,75,2,NULL),(2989,135,75,2,NULL),(2990,138,75,2,NULL),(2991,141,75,2,NULL),(2992,171,75,2,NULL),(2993,184,75,2,NULL),(2994,186,75,2,NULL),(2995,192,75,2,NULL),(2996,194,75,2,NULL),(2997,197,75,2,NULL),(2998,173,75,2,NULL),(2999,33,75,2,NULL),(3000,93,75,2,NULL),(3001,96,75,2,NULL),(3002,102,75,2,NULL),(3003,106,75,2,NULL),(3004,111,75,2,NULL),(3005,133,75,2,NULL),(3006,136,75,2,NULL),(3007,139,75,2,NULL),(3008,142,75,2,NULL),(3009,144,75,2,NULL),(3010,185,75,2,NULL),(3011,198,75,2,NULL),(3012,37,75,2,NULL),(3013,43,75,2,NULL),(3014,46,75,2,NULL),(3015,52,75,2,NULL),(3016,37,9,2,NULL),(3017,43,9,2,NULL),(3018,169,3,2,NULL),(3019,46,9,2,NULL),(3020,169,14,2,NULL),(3021,52,9,2,NULL),(3022,169,28,2,NULL),(3023,42,30,2,NULL),(3024,169,37,2,NULL),(3025,126,30,2,NULL),(3026,180,3,2,NULL),(3027,131,30,2,NULL),(3028,99,4,2,NULL),(3029,180,14,2,NULL),(3030,135,30,2,NULL),(3031,99,18,2,NULL),(3032,180,28,2,NULL),(3033,138,30,2,NULL),(3034,99,32,2,NULL),(3035,180,37,2,NULL),(3036,141,30,2,NULL),(3037,99,41,2,NULL),(3038,187,4,2,NULL),(3039,171,30,2,NULL),(3040,107,4,2,NULL),(3041,187,18,2,NULL),(3042,184,30,2,NULL),(3043,107,18,2,NULL),(3044,187,32,2,NULL),(3045,186,30,2,NULL),(3046,107,32,2,NULL),(3047,187,41,2,NULL),(3048,192,30,2,NULL),(3049,189,4,2,NULL),(3050,107,41,2,NULL),(3051,194,30,2,NULL),(3052,189,18,2,NULL),(3053,197,30,2,NULL),(3054,114,4,2,NULL),(3055,189,32,2,NULL),(3056,173,30,2,NULL),(3057,114,18,2,NULL),(3058,189,41,2,NULL),(3059,37,18,2,NULL),(3060,114,32,2,NULL),(3061,190,4,2,NULL),(3062,43,18,2,NULL),(3063,114,41,2,NULL),(3064,190,18,2,NULL),(3065,46,18,2,NULL),(3066,120,4,2,NULL),(3067,190,32,2,NULL),(3068,52,18,2,NULL),(3069,120,18,2,NULL),(3070,37,21,2,NULL),(3071,190,41,2,NULL),(3072,120,32,2,NULL),(3073,43,21,2,NULL),(3074,195,4,2,NULL),(3075,120,41,2,NULL),(3076,195,18,2,NULL),(3077,46,21,2,NULL),(3078,125,4,2,NULL),(3079,52,21,2,NULL),(3080,195,32,2,NULL),(3081,125,18,2,NULL),(3082,37,25,2,NULL),(3083,195,41,2,NULL),(3084,125,32,2,NULL),(3085,43,25,2,NULL),(3086,199,4,2,NULL),(3087,46,25,2,NULL),(3088,125,41,2,NULL),(3089,199,18,2,NULL),(3090,52,25,2,NULL),(3091,168,3,2,NULL),(3092,37,50,2,NULL),(3093,199,32,2,NULL),(3094,168,14,2,NULL),(3095,43,50,2,NULL),(3096,199,41,2,NULL),(3097,168,28,2,NULL),(3098,46,50,2,NULL),(3099,52,50,2,NULL),(3100,168,37,2,NULL),(3101,37,51,2,NULL),(3102,174,3,2,NULL),(3103,43,51,2,NULL),(3104,174,14,2,NULL),(3105,46,51,2,NULL),(3106,174,28,2,NULL),(3107,52,51,2,NULL),(3108,174,37,2,NULL),(3109,37,64,2,NULL),(3110,43,64,2,NULL),(3111,173,9,2,NULL),(3112,46,64,2,NULL),(3113,42,18,2,NULL),(3114,52,64,2,NULL),(3115,126,18,2,NULL),(3116,37,76,2,NULL),(3117,131,18,2,NULL),(3118,43,76,2,NULL),(3119,135,18,2,NULL),(3120,46,76,2,NULL),(3121,138,18,2,NULL),(3122,52,76,2,NULL),(3123,141,18,2,NULL),(3124,37,82,2,NULL),(3125,171,18,2,NULL),(3126,43,82,2,NULL),(3127,184,18,2,NULL),(3128,46,82,2,NULL),(3129,186,18,2,NULL),(3130,52,82,2,NULL),(3131,33,9,2,NULL),(3132,192,18,2,NULL),(3133,194,18,2,NULL),(3134,93,9,2,NULL),(3135,197,18,2,NULL),(3136,96,9,2,NULL),(3137,37,23,2,NULL),(3138,42,21,2,NULL),(3139,102,9,2,NULL),(3140,43,23,2,NULL),(3141,126,21,2,NULL),(3142,106,9,2,NULL),(3143,46,23,2,NULL),(3144,131,21,2,NULL),(3145,111,9,2,NULL),(3146,52,23,2,NULL),(3147,135,21,2,NULL),(3148,133,9,2,NULL),(3149,33,30,2,NULL),(3150,138,21,2,NULL),(3151,136,9,2,NULL),(3152,93,30,2,NULL),(3153,141,21,2,NULL),(3154,139,9,2,NULL),(3155,96,30,2,NULL),(3156,171,21,2,NULL),(3157,142,9,2,NULL),(3158,102,30,2,NULL),(3159,184,21,2,NULL),(3160,144,9,2,NULL),(3161,106,30,2,NULL),(3162,186,21,2,NULL),(3163,111,30,2,NULL),(3164,185,9,2,NULL),(3165,192,21,2,NULL),(3166,133,30,2,NULL),(3167,42,23,2,NULL),(3168,194,21,2,NULL),(3169,136,30,2,NULL),(3170,126,23,2,NULL),(3171,197,21,2,NULL),(3172,139,30,2,NULL),(3173,131,23,2,NULL),(3174,42,25,2,NULL),(3175,142,30,2,NULL),(3176,135,23,2,NULL),(3177,126,25,2,NULL),(3178,138,23,2,NULL),(3179,144,30,2,NULL),(3180,131,25,2,NULL),(3181,185,30,2,NULL),(3182,141,23,2,NULL),(3183,135,25,2,NULL),(3184,198,30,2,NULL),(3185,138,25,2,NULL),(3186,171,23,2,NULL),(3187,37,32,2,NULL),(3188,141,25,2,NULL),(3189,184,23,2,NULL),(3190,43,32,2,NULL),(3191,171,25,2,NULL),(3192,186,23,2,NULL),(3193,184,25,2,NULL),(3194,46,32,2,NULL),(3195,192,23,2,NULL),(3196,186,25,2,NULL),(3197,52,32,2,NULL),(3198,194,23,2,NULL),(3199,192,25,2,NULL),(3200,37,36,2,NULL),(3201,197,23,2,NULL),(3202,43,36,2,NULL),(3203,194,25,2,NULL),(3204,173,23,2,NULL),(3205,46,36,2,NULL),(3206,197,25,2,NULL),(3207,33,18,2,NULL),(3208,52,36,2,NULL),(3209,42,50,2,NULL),(3210,93,18,2,NULL),(3211,126,50,2,NULL),(3212,37,40,2,NULL),(3213,96,18,2,NULL),(3214,131,50,2,NULL),(3215,43,40,2,NULL),(3216,102,18,2,NULL),(3217,135,50,2,NULL),(3218,46,40,2,NULL),(3219,106,18,2,NULL),(3220,52,40,2,NULL),(3221,138,50,2,NULL),(3222,111,18,2,NULL),(3223,141,50,2,NULL),(3224,37,78,2,NULL),(3225,133,18,2,NULL),(3226,171,50,2,NULL),(3227,43,78,2,NULL),(3228,136,18,2,NULL),(3229,46,78,2,NULL),(3230,184,50,2,NULL),(3231,139,18,2,NULL),(3232,52,78,2,NULL),(3233,186,50,2,NULL),(3234,142,18,2,NULL),(3235,37,79,2,NULL),(3236,192,50,2,NULL),(3237,144,18,2,NULL),(3238,194,50,2,NULL),(3239,43,79,2,NULL),(3240,185,18,2,NULL),(3241,46,79,2,NULL),(3242,197,50,2,NULL),(3243,33,21,2,NULL),(3244,52,79,2,NULL),(3245,42,51,2,NULL),(3246,93,21,2,NULL),(3247,37,80,2,NULL),(3248,126,51,2,NULL),(3249,96,21,2,NULL),(3250,43,80,2,NULL),(3251,131,51,2,NULL),(3252,102,21,2,NULL),(3253,135,51,2,NULL),(3254,46,80,2,NULL),(3255,106,21,2,NULL),(3256,52,80,2,NULL),(3257,138,51,2,NULL),(3258,111,21,2,NULL),(3259,37,81,2,NULL),(3260,141,51,2,NULL),(3261,133,21,2,NULL),(3262,43,81,2,NULL),(3263,171,51,2,NULL),(3264,136,21,2,NULL),(3265,46,81,2,NULL),(3266,184,51,2,NULL),(3267,139,21,2,NULL),(3268,186,51,2,NULL),(3269,52,81,2,NULL),(3270,142,21,2,NULL),(3271,192,51,2,NULL),(3272,37,83,2,NULL),(3273,144,21,2,NULL),(3274,194,51,2,NULL),(3275,43,83,2,NULL),(3276,185,21,2,NULL),(3277,46,83,2,NULL),(3278,197,51,2,NULL),(3279,33,25,2,NULL),(3280,52,83,2,NULL),(3281,42,64,2,NULL),(3282,93,25,2,NULL),(3283,126,64,2,NULL),(3284,37,41,2,NULL),(3285,96,25,2,NULL),(3286,131,64,2,NULL),(3287,43,41,2,NULL),(3288,102,25,2,NULL),(3289,135,64,2,NULL),(3290,46,41,2,NULL),(3291,106,25,2,NULL),(3292,138,64,2,NULL),(3293,52,41,2,NULL),(3294,111,25,2,NULL),(3295,141,64,2,NULL),(3296,37,43,2,NULL),(3297,133,25,2,NULL),(3298,171,64,2,NULL),(3299,43,43,2,NULL),(3300,136,25,2,NULL),(3301,184,64,2,NULL),(3302,46,43,2,NULL),(3303,139,25,2,NULL),(3304,186,64,2,NULL),(3305,52,43,2,NULL),(3306,142,25,2,NULL),(3307,192,64,2,NULL),(3308,37,44,2,NULL),(3309,144,25,2,NULL),(3310,194,64,2,NULL),(3311,43,44,2,NULL),(3312,185,25,2,NULL),(3313,197,64,2,NULL),(3314,46,44,2,NULL),(3315,33,50,2,NULL),(3316,42,76,2,NULL),(3317,52,44,2,NULL),(3318,93,50,2,NULL),(3319,126,76,2,NULL),(3320,96,50,2,NULL),(3321,131,76,2,NULL),(3322,102,50,2,NULL),(3323,42,41,2,NULL),(3324,135,76,2,NULL),(3325,106,50,2,NULL),(3326,138,76,2,NULL),(3327,126,41,2,NULL),(3328,111,50,2,NULL),(3329,141,76,2,NULL),(3330,131,41,2,NULL),(3331,133,50,2,NULL),(3332,171,76,2,NULL),(3333,135,41,2,NULL),(3334,136,50,2,NULL),(3335,184,76,2,NULL),(3336,138,41,2,NULL),(3337,139,50,2,NULL),(3338,186,76,2,NULL),(3339,141,41,2,NULL),(3340,142,50,2,NULL),(3341,192,76,2,NULL),(3342,171,41,2,NULL),(3343,144,50,2,NULL),(3344,194,76,2,NULL),(3345,184,41,2,NULL),(3346,185,50,2,NULL),(3347,197,76,2,NULL),(3348,186,41,2,NULL),(3349,33,51,2,NULL),(3350,42,82,2,NULL),(3351,192,41,2,NULL),(3352,93,51,2,NULL),(3353,126,82,2,NULL),(3354,194,41,2,NULL),(3355,96,51,2,NULL),(3356,131,82,2,NULL),(3357,197,41,2,NULL),(3358,102,51,2,NULL),(3359,135,82,2,NULL),(3360,173,41,2,NULL),(3361,106,51,2,NULL),(3362,138,82,2,NULL),(3363,111,51,2,NULL),(3364,33,41,2,NULL),(3365,141,82,2,NULL),(3366,133,51,2,NULL),(3367,93,41,2,NULL),(3368,171,82,2,NULL),(3369,136,51,2,NULL),(3370,96,41,2,NULL),(3371,184,82,2,NULL),(3372,139,51,2,NULL),(3373,102,41,2,NULL),(3374,186,82,2,NULL),(3375,142,51,2,NULL),(3376,106,41,2,NULL),(3377,192,82,2,NULL),(3378,144,51,2,NULL),(3379,111,41,2,NULL),(3380,194,82,2,NULL),(3381,185,51,2,NULL),(3382,133,41,2,NULL),(3383,197,82,2,NULL),(3384,33,64,2,NULL),(3385,136,41,2,NULL),(3386,93,64,2,NULL),(3387,139,41,2,NULL),(3388,96,64,2,NULL),(3389,142,41,2,NULL),(3390,102,64,2,NULL),(3391,144,41,2,NULL),(3392,106,64,2,NULL),(3393,185,41,2,NULL),(3394,111,64,2,NULL),(3395,198,41,2,NULL),(3396,133,64,2,NULL),(3397,198,9,2,NULL),(3398,136,64,2,NULL),(3399,42,32,2,NULL),(3400,139,64,2,NULL),(3401,42,43,2,NULL),(3402,126,32,2,NULL),(3403,142,64,2,NULL),(3404,126,43,2,NULL),(3405,131,32,2,NULL),(3406,144,64,2,NULL),(3407,131,43,2,NULL),(3408,135,32,2,NULL),(3409,185,64,2,NULL),(3410,135,43,2,NULL),(3411,138,32,2,NULL),(3412,33,76,2,NULL),(3413,138,43,2,NULL),(3414,141,32,2,NULL),(3415,93,76,2,NULL),(3416,141,43,2,NULL),(3417,171,32,2,NULL),(3418,96,76,2,NULL),(3419,171,43,2,NULL),(3420,184,32,2,NULL),(3421,184,43,2,NULL),(3422,102,76,2,NULL),(3423,186,32,2,NULL),(3424,186,43,2,NULL),(3425,106,76,2,NULL),(3426,192,32,2,NULL),(3427,192,43,2,NULL),(3428,111,76,2,NULL),(3429,194,32,2,NULL),(3430,194,43,2,NULL),(3431,197,32,2,NULL),(3432,133,76,2,NULL),(3433,197,43,2,NULL),(3434,136,76,2,NULL),(3435,42,36,2,NULL),(3436,173,43,2,NULL),(3437,126,36,2,NULL),(3438,139,76,2,NULL),(3439,33,43,2,NULL),(3440,131,36,2,NULL),(3441,93,43,2,NULL),(3442,142,76,2,NULL),(3443,135,36,2,NULL),(3444,96,43,2,NULL),(3445,144,76,2,NULL),(3446,138,36,2,NULL),(3447,102,43,2,NULL),(3448,185,76,2,NULL),(3449,141,36,2,NULL),(3450,106,43,2,NULL),(3451,33,82,2,NULL),(3452,171,36,2,NULL),(3453,111,43,2,NULL),(3454,93,82,2,NULL),(3455,184,36,2,NULL),(3456,133,43,2,NULL),(3457,96,82,2,NULL),(3458,186,36,2,NULL),(3459,102,82,2,NULL),(3460,136,43,2,NULL),(3461,192,36,2,NULL),(3462,139,43,2,NULL),(3463,106,82,2,NULL),(3464,194,36,2,NULL),(3465,142,43,2,NULL),(3466,111,82,2,NULL),(3467,197,36,2,NULL),(3468,144,43,2,NULL),(3469,133,82,2,NULL),(3470,42,40,2,NULL),(3471,185,43,2,NULL),(3472,136,82,2,NULL),(3473,126,40,2,NULL),(3474,198,43,2,NULL),(3475,139,82,2,NULL),(3476,131,40,2,NULL),(3477,142,82,2,NULL),(3478,135,40,2,NULL),(3479,144,82,2,NULL),(3480,138,40,2,NULL),(3481,42,44,2,NULL),(3482,185,82,2,NULL),(3483,126,44,2,NULL),(3484,141,40,2,NULL),(3485,171,40,2,NULL),(3486,131,44,2,NULL),(3487,184,40,2,NULL),(3488,198,23,2,NULL),(3489,135,44,2,NULL),(3490,186,40,2,NULL),(3491,33,32,2,NULL),(3492,138,44,2,NULL),(3493,192,40,2,NULL),(3494,93,32,2,NULL),(3495,141,44,2,NULL),(3496,194,40,2,NULL),(3497,96,32,2,NULL),(3498,171,44,2,NULL),(3499,197,40,2,NULL),(3500,102,32,2,NULL),(3501,184,44,2,NULL),(3502,42,78,2,NULL),(3503,106,32,2,NULL),(3504,186,44,2,NULL),(3505,126,78,2,NULL),(3506,111,32,2,NULL),(3507,192,44,2,NULL),(3508,131,78,2,NULL),(3509,133,32,2,NULL),(3510,194,44,2,NULL),(3511,135,78,2,NULL),(3512,136,32,2,NULL),(3513,197,44,2,NULL),(3514,138,78,2,NULL),(3515,139,32,2,NULL),(3516,173,44,2,NULL),(3517,141,78,2,NULL),(3518,142,32,2,NULL),(3519,33,44,2,NULL),(3520,171,78,2,NULL),(3521,144,32,2,NULL),(3522,93,44,2,NULL),(3523,184,78,2,NULL),(3524,185,32,2,NULL),(3525,96,44,2,NULL),(3526,186,78,2,NULL),(3527,33,36,2,NULL),(3528,102,44,2,NULL),(3529,93,36,2,NULL),(3530,192,78,2,NULL),(3531,106,44,2,NULL),(3532,96,36,2,NULL),(3533,194,78,2,NULL),(3534,111,44,2,NULL),(3535,102,36,2,NULL),(3536,197,78,2,NULL),(3537,133,44,2,NULL),(3538,42,79,2,NULL),(3539,106,36,2,NULL),(3540,136,44,2,NULL),(3541,111,36,2,NULL),(3542,126,79,2,NULL),(3543,139,44,2,NULL),(3544,133,36,2,NULL),(3545,131,79,2,NULL),(3546,142,44,2,NULL),(3547,135,79,2,NULL),(3548,136,36,2,NULL),(3549,144,44,2,NULL),(3550,139,36,2,NULL),(3551,138,79,2,NULL),(3552,185,44,2,NULL),(3553,142,36,2,NULL),(3554,141,79,2,NULL),(3555,198,44,2,NULL),(3556,144,36,2,NULL),(3557,171,79,2,NULL),(3558,185,36,2,NULL),(3559,184,79,2,NULL),(3560,33,40,2,NULL),(3561,186,79,2,NULL),(3562,93,40,2,NULL),(3563,192,79,2,NULL),(3564,96,40,2,NULL),(3565,194,79,2,NULL),(3566,102,40,2,NULL),(3567,197,79,2,NULL),(3568,106,40,2,NULL),(3569,42,80,2,NULL),(3570,111,40,2,NULL),(3571,126,80,2,NULL),(3572,133,40,2,NULL),(3573,131,80,2,NULL),(3574,136,40,2,NULL),(3575,135,80,2,NULL),(3576,139,40,2,NULL),(3577,138,80,2,NULL),(3578,142,40,2,NULL),(3579,141,80,2,NULL),(3580,144,40,2,NULL),(3581,171,80,2,NULL),(3582,185,40,2,NULL),(3583,184,80,2,NULL),(3584,33,78,2,NULL),(3585,186,80,2,NULL),(3586,93,78,2,NULL),(3587,192,80,2,NULL),(3588,96,78,2,NULL),(3589,194,80,2,NULL),(3590,102,78,2,NULL),(3591,197,80,2,NULL),(3592,106,78,2,NULL),(3593,42,81,2,NULL),(3594,111,78,2,NULL),(3595,126,81,2,NULL),(3596,133,78,2,NULL),(3597,131,81,2,NULL),(3598,136,78,2,NULL),(3599,135,81,2,NULL),(3600,139,78,2,NULL),(3601,138,81,2,NULL),(3602,142,78,2,NULL),(3603,141,81,2,NULL),(3604,144,78,2,NULL),(3605,171,81,2,NULL),(3606,185,78,2,NULL),(3607,184,81,2,NULL),(3608,33,79,2,NULL),(3609,186,81,2,NULL),(3610,93,79,2,NULL),(3611,192,81,2,NULL),(3612,96,79,2,NULL),(3613,194,81,2,NULL),(3614,102,79,2,NULL),(3615,197,81,2,NULL),(3616,106,79,2,NULL),(3617,42,83,2,NULL),(3618,111,79,2,NULL),(3619,126,83,2,NULL),(3620,133,79,2,NULL),(3621,131,83,2,NULL),(3622,136,79,2,NULL),(3623,135,83,2,NULL),(3624,139,79,2,NULL),(3625,138,83,2,NULL),(3626,142,79,2,NULL),(3627,141,83,2,NULL),(3628,144,79,2,NULL),(3629,171,83,2,NULL),(3630,185,79,2,NULL),(3631,184,83,2,NULL),(3632,33,80,2,NULL),(3633,186,83,2,NULL),(3634,93,80,2,NULL),(3635,192,83,2,NULL),(3636,96,80,2,NULL),(3637,194,83,2,NULL),(3638,102,80,2,NULL),(3639,197,83,2,NULL),(3640,106,80,2,NULL),(3641,111,80,2,NULL),(3642,133,80,2,NULL),(3643,173,18,2,NULL),(3644,136,80,2,NULL),(3645,173,21,2,NULL),(3646,139,80,2,NULL),(3647,173,25,2,NULL),(3648,142,80,2,NULL),(3649,173,50,2,NULL),(3650,144,80,2,NULL),(3651,173,51,2,NULL),(3652,185,80,2,NULL),(3653,173,64,2,NULL),(3654,33,81,2,NULL),(3655,173,76,2,NULL),(3656,93,81,2,NULL),(3657,173,82,2,NULL),(3658,96,81,2,NULL),(3659,173,32,2,NULL),(3660,102,81,2,NULL),(3661,173,36,2,NULL),(3662,106,81,2,NULL),(3663,173,40,2,NULL),(3664,111,81,2,NULL),(3665,173,78,2,NULL),(3666,133,81,2,NULL),(3667,173,79,2,NULL),(3668,136,81,2,NULL),(3669,173,80,2,NULL),(3670,139,81,2,NULL),(3671,173,81,2,NULL),(3672,142,81,2,NULL),(3673,173,83,2,NULL),(3674,144,81,2,NULL),(3675,185,81,2,NULL),(3676,33,83,2,NULL),(3677,93,83,2,NULL),(3678,96,83,2,NULL),(3679,198,18,2,NULL),(3680,102,83,2,NULL),(3681,106,83,2,NULL),(3682,111,83,2,NULL),(3683,198,21,2,NULL),(3684,133,83,2,NULL),(3685,67,5,2,NULL),(3686,136,83,2,NULL),(3687,67,21,2,NULL),(3688,139,83,2,NULL),(3689,67,36,2,NULL),(3690,142,83,2,NULL),(3691,67,43,2,NULL),(3692,144,83,2,NULL),(3693,185,83,2,NULL),(3694,198,25,2,NULL),(3695,198,50,2,NULL),(3696,198,51,2,NULL),(3697,198,64,2,NULL),(3698,198,76,2,NULL),(3699,198,82,2,NULL),(3700,198,32,2,NULL),(3701,198,36,2,NULL),(3702,198,40,2,NULL),(3703,198,78,2,NULL),(3704,198,79,2,NULL),(3705,198,80,2,NULL),(3706,198,81,2,NULL),(3707,198,83,2,NULL),(3708,177,5,2,NULL),(3709,177,21,2,NULL),(3710,177,36,2,NULL),(3711,177,43,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProviderLinks`
--

LOCK TABLES `ProviderLinks` WRITE;
/*!40000 ALTER TABLE `ProviderLinks` DISABLE KEYS */;
INSERT INTO `ProviderLinks` VALUES (1,7,22,NULL),(2,7,42,NULL),(3,16,22,NULL),(4,16,42,NULL),(5,55,22,NULL),(6,55,42,NULL),(7,19,22,NULL),(8,19,22,NULL),(9,19,42,NULL),(10,19,42,NULL),(11,56,22,NULL),(12,56,42,NULL),(13,24,22,NULL),(14,34,22,NULL),(15,34,22,NULL),(16,67,22,NULL),(17,38,22,NULL),(18,68,22,NULL),(19,24,42,NULL),(20,34,42,NULL),(21,67,42,NULL),(22,67,42,NULL),(23,38,42,NULL),(24,68,42,NULL);
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

-- Dump completed on 2015-10-12  3:30:46
