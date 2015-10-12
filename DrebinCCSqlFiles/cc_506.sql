-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_506
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
INSERT INTO `ActionStrings` VALUES (19,'SMS_SEND_ACTIOIN'),(8,'android.intent.action.BOOT_COMPLETED'),(12,'android.intent.action.CHOOSER'),(39,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(14,'android.intent.action.PACKAGE_ADDED'),(13,'android.intent.action.PACKAGE_CHANGED'),(15,'android.intent.action.PACKAGE_REMOVED'),(36,'android.intent.action.SCREEN_OFF'),(37,'android.intent.action.SCREEN_ON'),(9,'android.intent.action.SET_WALLPAPER'),(18,'android.intent.action.TIMEZONE_CHANGED'),(17,'android.intent.action.TIME_SET'),(16,'android.intent.action.TIME_TICK'),(26,'android.intent.action.VIEW'),(20,'android.intent.action.WALLPAPER_CHANGED'),(40,'android.net.conn.CONNECTIVITY_CHANGE'),(4,'android.provider.Telephony.SMS_RECEIVED'),(6,'android.provider.Telephony.WAP_PUSH_RECEIVED'),(32,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(31,'android.settings.WIRELESS_SETTINGS'),(38,'com.android.contacts.action.FILTER_CONTACTS'),(10,'com.android.launcher.action.INSTALL_SHORTCUT'),(11,'com.android.launcher.action.UNINSTALL_SHORTCUT'),(33,'com.jx.Action_CopyResError'),(25,'com.jx.MainActivity.CostInfo'),(22,'com.jx.MainActivity.ErrorInfo'),(30,'com.jx.MainActivity.InstallConfirmInfo'),(34,'com.jx.MainActivity.OpenLWP'),(35,'com.jx.MainActivity.RepeateInstall'),(28,'com.jx.MainActivity.SaveID'),(29,'com.jx.action.ExitBootReceiver'),(24,'com.jx.ad.ADService.ConfirmInstallInfo'),(5,'com.jx.ad.ADService.Init'),(21,'com.jx.ad.ADService.InitHasUpdate'),(23,'com.jx.ad.ADService.InstallRes'),(2,'com.jx.ad.ADService.Run'),(3,'com.jx.ad.ADService.RunCancel'),(27,'com.jx.ad.BootSmsReceiverService.Exit'),(7,'com.jx.ad.BootSmsReceiverService.Start');
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
INSERT INTO `Applications` VALUES (1,'com.jx.theme.n962474746',1),(2,'km.home',1),(3,'com.jx.theme.n627582275',1),(4,'com.km.launcher',NULL),(5,'com.km.launcher',1),(6,'com.jx.theme.n487296221',1),(7,'com.jx.theme.n1814263770',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,2,'km.home.Home'),(2,1,'com.jx.MainActivity'),(3,2,'km.home.UnlockActivity'),(4,1,'com.jx.SettingActivity'),(5,2,'km.home.ThemeListActivity'),(6,1,'com.jx.WelcomeActivity'),(7,2,'com.km.MainActivity'),(8,1,'com.jx.ad.AndroidThemeService'),(9,2,'com.km.HoldMessage'),(10,3,'com.jx.MainActivity'),(11,3,'com.jx.SettingActivity'),(12,3,'com.jx.WelcomeActivity'),(13,1,'com.jx.ad.BootSmsReceiverService'),(14,3,'com.jx.ad.AndroidThemeService'),(15,1,'com.jx.ad.BootReceiver'),(16,3,'com.jx.ad.BootSmsReceiverService'),(17,3,'com.jx.ad.BootReceiver'),(18,5,'com.km.launcher.Launcher'),(19,4,'com.km.launcher.Launcher'),(20,5,'com.km.launcher.WallpaperChooser'),(21,4,'com.km.launcher.WallpaperChooser'),(22,4,'com.km.theme.ThemeListActivity'),(23,5,'com.km.theme.ThemeListActivity'),(24,4,'com.km.charge.MainActivity'),(25,6,'com.jx.MainActivity'),(26,5,'com.km.charge.MainActivity'),(27,4,'com.km.launcher.InstallShortcutReceiver'),(28,5,'com.km.ad.AdService'),(29,5,'com.km.charge.CycleService'),(30,6,'com.jx.SettingActivity'),(31,5,'com.km.launcher.InstallShortcutReceiver'),(32,4,'com.km.launcher.UninstallShortcutReceiver'),(33,6,'com.jx.WelcomeActivity'),(34,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(35,5,'com.km.launcher.UninstallShortcutReceiver'),(36,6,'com.jx.ad.AndroidThemeService'),(37,4,'com.km.launcher.LauncherProvider'),(38,5,'com.km.charge.BootReceiver'),(39,6,'com.jx.ad.BootSmsReceiverService'),(40,5,'com.km.launcher.LauncherProvider'),(41,6,'com.jx.ad.BootReceiver'),(42,7,'com.jx.MainActivity'),(43,7,'com.jx.SettingActivity'),(44,7,'com.jx.WelcomeActivity'),(45,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(46,7,'com.jx.ad.AndroidThemeService'),(47,7,'com.jx.ad.BootSmsReceiverService'),(48,7,'com.jx.ad.BootReceiver'),(49,2,'km.home.Home$ApplicationLauncher'),(50,2,'km.home.ThemeManager'),(51,2,'km.home.Home$WallpaperIntentReceiver'),(52,2,'com.km.SendMessage$SendMessageReceiver'),(53,2,'com.km.tool.Http$ConnectivityReceiver'),(54,2,'km.home.UnlockActivity$TimeReceiver'),(55,2,'km.home.Home$ApplicationsIntentReceiver'),(56,1,'com.jx.ad.AndroidThemeService$4'),(57,3,'com.jx.ad.AndroidThemeService$6'),(58,1,'com.jx.tool.ApnManager'),(59,1,'com.jx.ad.ServiceControlReciver'),(60,3,'com.jx.ad.AndroidThemeService$2'),(61,1,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(62,1,'com.jx.ad.AndroidThemeService$8'),(63,1,'com.jx.SettingActivity$6'),(64,3,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(65,3,'com.jx.ad.AndroidThemeService$8'),(66,1,'com.jx.ad.AndroidThemeService$3'),(67,1,'com.jx.ad.AndroidThemeService$6'),(68,3,'com.jx.tool.ApnManager'),(69,3,'com.jx.MainActivity$4'),(70,3,'com.jx.ad.AndroidThemeService$5'),(71,7,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(72,3,'com.jx.ad.AndroidThemeService$7'),(73,7,'com.jx.ad.AndroidThemeService$6'),(74,3,'com.jx.ad.AndroidThemeService$3'),(75,7,'com.jx.ad.AndroidThemeService$4'),(76,6,'com.jx.ad.AndroidThemeService$4'),(77,3,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(78,6,'com.jx.ad.AndroidThemeService$5'),(79,4,'com.km.tool.ApnManager'),(80,3,'com.jx.ad.AndroidThemeService$SmsReceiver'),(81,1,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(82,4,'com.km.launcher.LauncherModel'),(83,6,'com.jx.ad.AndroidThemeService$SmsReceiver'),(84,6,'com.jx.MainActivity$ControlReceiver$1'),(85,1,'com.jx.ad.AndroidThemeService$2'),(86,7,'com.jx.tool.ApnManager'),(87,5,'com.km.ad.AdService$1'),(88,3,'com.jx.MainActivity$ControlReceiver$6$1'),(89,1,'com.jx.ad.AndroidThemeService$5'),(90,7,'com.jx.ad.AndroidThemeService$2'),(91,3,'com.jx.tool.Utility'),(92,1,'com.jx.MainActivity$ControlReceiver'),(93,7,'com.adwo.adsdk.M'),(94,1,'com.jx.SettingActivity$1'),(95,4,'com.km.theme.ThemeManager'),(96,7,'com.jx.tool.Utility'),(97,6,'com.jx.MainActivity$ControlReceiver$6$1'),(98,6,'com.jx.tool.ApnManager'),(99,5,'com.km.charge.HoldMessage'),(100,7,'com.jx.SettingActivity$6'),(101,6,'com.jx.ad.AndroidThemeService$2'),(102,5,'com.km.launcher.MyAnalogClock$1'),(103,5,'com.km.launcher.Launcher$WallpaperIntentReceiver'),(104,7,'com.jx.ad.AndroidThemeService$MMSReceiver'),(105,6,'com.jx.ad.ServiceControlReciver'),(106,1,'com.jx.tool.Utility'),(107,3,'com.jx.SettingActivity$1'),(108,5,'com.km.charge.SendMessage$SendMessageReceiver'),(109,5,'com.km.charge.HttpBox$ConnectivityReceiver'),(110,3,'com.jx.ad.AndroidThemeService$MMSReceiver'),(111,6,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(112,5,'com.km.tool.Http$ConnectivityReceiver'),(113,4,'com.km.launcher.Search'),(114,3,'com.jx.MainActivity$ControlReceiver'),(115,6,'com.jx.ad.AndroidThemeService$MMSReceiver'),(116,5,'com.km.launcher.Launcher$ApplicationsIntentReceiver'),(117,3,'com.jx.ad.AndroidThemeService$4'),(118,1,'com.jx.ad.AndroidThemeService$SmsReceiver'),(119,1,'com.jx.MainActivity$ControlReceiver$1'),(120,7,'com.jx.ad.AndroidThemeService$3'),(121,1,'com.jx.MainActivity$4'),(122,3,'com.jx.SettingActivity$6'),(123,5,'com.km.launcher.LauncherModel'),(124,4,'com.km.charge.HoldMessage'),(125,6,'com.jx.tool.Utility'),(126,4,'com.km.launcher.MyAnalogClock$1'),(127,7,'com.jx.ad.AndroidThemeService$8'),(128,4,'com.km.launcher.Launcher$WallpaperIntentReceiver'),(129,6,'com.jx.SettingActivity$1'),(130,1,'com.jx.ad.AndroidThemeService$7'),(131,7,'com.jx.MainActivity$ControlReceiver$6$1'),(132,5,'com.km.tool.Util'),(133,4,'com.km.charge.SendMessage$SendMessageReceiver'),(134,4,'com.km.charge.HttpBox$ConnectivityReceiver'),(135,1,'com.jx.MainActivity$ControlReceiver$6$1'),(136,5,'com.km.tool.ApnManager'),(137,4,'com.km.tool.Http$ConnectivityReceiver'),(138,4,'com.km.launcher.Launcher$ApplicationsIntentReceiver'),(139,5,'com.km.theme.ThemeManager'),(140,6,'com.jx.ad.AndroidThemeService$8'),(141,7,'com.jx.MainActivity$ControlReceiver'),(142,1,'com.jx.MainActivity$1'),(143,1,'com.jx.ad.AndroidThemeService$MMSReceiver'),(144,6,'com.jx.ad.AndroidThemeService$3'),(145,6,'com.jx.ad.AndroidThemeService$6'),(146,6,'com.adwo.adsdk.M'),(147,3,'com.jx.ad.ServiceControlReciver'),(148,6,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(149,6,'com.jx.MainActivity$ControlReceiver'),(150,3,'com.jx.MainActivity$ControlReceiver$1'),(151,6,'com.jx.ad.AndroidThemeService$7'),(152,7,'com.jx.MainActivity$4'),(153,3,'com.jx.MainActivity$1'),(154,5,'com.km.launcher.Search'),(155,7,'com.jx.ad.AndroidThemeService$5'),(156,7,'com.jx.SettingActivity$1'),(157,6,'com.jx.MainActivity$4'),(158,7,'com.jx.ad.AndroidThemeService$7'),(159,7,'com.jx.MainActivity$ControlReceiver$1'),(160,6,'com.jx.SettingActivity$6'),(161,7,'com.jx.ad.ServiceControlReciver'),(162,6,'com.jx.MainActivity$1'),(163,7,'com.jx.MainActivity$1'),(164,7,'com.jx.ad.AndroidThemeService$SmsReceiver'),(165,7,'com.jx.ad.BootSmsReceiverService$SmsReceiver');
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
INSERT INTO `ComponentExtras` VALUES (1,9,'data'),(2,9,'pdus'),(3,14,'resownerid'),(4,14,'respid'),(5,46,'resownerid'),(6,45,'overlayTitle'),(7,34,'transitionTime'),(8,34,'overlayTitle'),(9,19,'launcher.add_cellX'),(10,19,'launcher.current_screen'),(11,34,'url'),(12,22,'launcher.user_folder'),(13,24,'launcher.user_folder'),(14,19,'launcher.user_folder'),(15,27,'android.intent.extra.shortcut.ICON_RESOURCE'),(16,19,'android.intent.extra.shortcut.ICON_RESOURCE'),(17,33,'android.intent.extra.shortcut.INTENT'),(18,8,'resownerid'),(19,27,'android.intent.extra.shortcut.INTENT'),(20,19,'android.intent.extra.shortcut.INTENT'),(21,27,'android.intent.extra.shortcut.NAME'),(22,34,'shouldMakeOverlayTransparent'),(23,19,'android.intent.extra.shortcut.NAME'),(24,36,'resownerid'),(25,19,'launcher.add_countY'),(26,19,'launcher.add_countX'),(27,19,'launcher.add_spanX'),(28,19,'launcher.add_occupied_cells'),(29,22,'launcher.all_apps_folder'),(30,24,'launcher.all_apps_folder'),(31,46,'respid'),(32,19,'launcher.all_apps_folder'),(33,8,'respid'),(34,19,'launcher.add_spanY'),(35,34,'shouldResizeOverlay'),(36,34,'shouldEnableBottomBar'),(37,33,'android.intent.extra.shortcut.NAME'),(38,19,'launcher.rename_folder'),(39,31,'duplicate'),(40,19,'launcher.add_screen'),(41,18,'launcher.add_occupied_cells'),(42,18,'launcher.add_countY'),(43,35,'android.intent.extra.shortcut.INTENT'),(44,18,'launcher.add_screen'),(45,18,'launcher.rename_folder'),(46,18,'data'),(47,31,'android.intent.extra.shortcut.ICON'),(48,18,'android.intent.extra.shortcut.ICON'),(49,45,'transitionTime'),(50,34,'shouldShowBottomBar'),(51,18,'launcher.add_countX'),(52,45,'shouldShowBottomBar'),(53,19,'launcher.rename_folder_id'),(54,27,'duplicate'),(55,18,'launcher.add_spanX'),(56,19,'android.intent.extra.livefolder.ICON'),(57,31,'android.intent.extra.shortcut.NAME'),(58,19,'android.intent.extra.livefolder.NAME'),(59,18,'launcher.rename_folder_id'),(60,31,'android.intent.extra.shortcut.ICON_RESOURCE'),(61,18,'android.intent.extra.shortcut.ICON_RESOURCE'),(62,18,'launcher.add_spanY'),(63,19,'data'),(64,33,'duplicate'),(65,19,'android.intent.extra.livefolder.BASE_INTENT'),(66,27,'android.intent.extra.shortcut.ICON'),(67,19,'android.intent.extra.shortcut.ICON'),(68,18,'android.intent.extra.livefolder.BASE_INTENT'),(69,23,'launcher.all_apps_folder'),(70,26,'launcher.all_apps_folder'),(71,18,'launcher.all_apps_folder'),(72,18,'android.intent.extra.livefolder.NAME'),(73,35,'duplicate'),(74,19,'launcher.add_cellY'),(75,45,'shouldMakeOverlayTransparent'),(76,18,'launcher.add_cellX'),(77,18,'launcher.add_cellY'),(78,18,'launcher.current_screen'),(79,35,'android.intent.extra.shortcut.NAME'),(80,23,'launcher.user_folder'),(81,26,'launcher.user_folder'),(82,18,'launcher.user_folder'),(83,18,'android.intent.extra.livefolder.ICON'),(84,31,'android.intent.extra.shortcut.INTENT'),(85,18,'android.intent.extra.shortcut.INTENT'),(86,18,'android.intent.extra.shortcut.NAME'),(87,36,'respid'),(88,34,'shouldShowTitlebar'),(89,34,'overlayTransition'),(90,45,'url'),(91,45,'shouldResizeOverlay'),(92,45,'shouldEnableBottomBar'),(93,45,'shouldShowTitlebar'),(94,45,'overlayTransition');
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
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',0,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'s',1,NULL,NULL),(9,9,'r',1,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'s',1,NULL,NULL),(14,14,'s',1,NULL,NULL),(15,15,'r',1,NULL,NULL),(16,16,'s',1,NULL,NULL),(17,17,'r',1,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'r',1,26,NULL),(28,28,'s',0,NULL,NULL),(29,29,'s',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'r',1,26,NULL),(32,33,'a',0,NULL,NULL),(33,32,'r',1,29,NULL),(34,34,'a',0,NULL,NULL),(35,35,'r',1,29,NULL),(36,36,'s',1,NULL,NULL),(37,37,'p',0,NULL,NULL),(38,38,'r',1,NULL,NULL),(39,39,'s',1,NULL,NULL),(40,40,'p',0,NULL,NULL),(41,41,'r',1,NULL,NULL),(42,42,'a',1,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'s',1,NULL,NULL),(47,47,'s',1,NULL,NULL),(48,48,'r',1,NULL,NULL),(49,51,'r',1,NULL,NULL),(50,52,'r',1,NULL,NULL),(51,53,'r',1,NULL,NULL),(52,54,'r',1,NULL,NULL),(53,55,'r',1,NULL,NULL),(54,59,'r',1,NULL,NULL),(55,61,'r',1,NULL,NULL),(56,64,'r',1,NULL,NULL),(57,71,'r',1,NULL,NULL),(58,77,'r',1,NULL,NULL),(59,80,'r',1,NULL,NULL),(60,81,'r',1,NULL,NULL),(61,83,'r',1,NULL,NULL),(62,92,'r',1,NULL,NULL),(63,93,'r',1,NULL,NULL),(64,31,'r',1,NULL,NULL),(65,35,'r',1,NULL,NULL),(66,99,'r',1,NULL,NULL),(67,102,'r',1,NULL,NULL),(68,103,'r',1,NULL,NULL),(69,104,'r',1,NULL,NULL),(70,105,'r',1,NULL,NULL),(71,108,'r',1,NULL,NULL),(72,109,'r',1,NULL,NULL),(73,110,'r',1,NULL,NULL),(74,111,'r',1,NULL,NULL),(75,112,'r',1,NULL,NULL),(76,114,'r',1,NULL,NULL),(77,115,'r',1,NULL,NULL),(78,116,'r',1,NULL,NULL),(79,118,'r',1,NULL,NULL),(80,27,'r',1,NULL,NULL),(81,32,'r',1,NULL,NULL),(82,124,'r',1,NULL,NULL),(83,126,'r',1,NULL,NULL),(84,128,'r',1,NULL,NULL),(85,133,'r',1,NULL,NULL),(86,134,'r',1,NULL,NULL),(87,137,'r',1,NULL,NULL),(88,138,'r',1,NULL,NULL),(89,141,'r',1,NULL,NULL),(90,143,'r',1,NULL,NULL),(91,146,'r',1,NULL,NULL),(92,147,'r',1,NULL,NULL),(93,148,'r',1,NULL,NULL),(94,149,'r',1,NULL,NULL),(95,161,'r',1,NULL,NULL),(96,164,'r',1,NULL,NULL),(97,165,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=323 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,3),(3,3,1),(4,4,7),(5,4,3),(6,5,1),(7,6,8),(8,7,8),(9,8,14),(10,9,8),(11,10,14),(12,11,14),(13,12,8),(14,13,6),(15,13,4),(16,13,2),(17,14,14),(18,15,8),(19,16,11),(20,17,8),(21,18,8),(22,19,14),(23,20,12),(24,20,11),(25,20,10),(26,21,2),(27,21,4),(28,21,6),(29,22,14),(30,23,10),(31,24,14),(32,25,46),(33,26,30),(34,27,2),(35,28,14),(36,29,4),(37,30,46),(38,31,36),(39,32,10),(40,33,44),(41,34,2),(42,35,14),(43,36,15),(44,37,36),(45,38,24),(46,38,22),(47,40,14),(48,39,19),(49,41,8),(50,43,46),(51,42,32),(52,42,30),(53,42,25),(54,44,8),(55,45,14),(56,46,22),(57,46,24),(58,47,32),(59,49,19),(60,48,8),(61,50,46),(62,51,14),(63,52,27),(64,54,44),(65,54,43),(66,53,23),(67,53,26),(68,55,12),(69,55,11),(70,55,10),(71,56,18),(72,57,8),(73,58,33),(74,59,46),(75,60,14),(76,60,12),(77,60,11),(78,61,24),(79,61,22),(80,62,36),(81,63,46),(82,64,19),(83,65,4),(84,65,6),(85,65,2),(86,66,14),(87,67,36),(88,68,22),(89,68,24),(90,69,46),(91,70,8),(92,71,19),(93,71,22),(94,72,25),(95,73,10),(96,74,46),(97,74,44),(98,74,43),(99,75,14),(100,76,8),(101,77,25),(102,77,30),(103,77,32),(104,78,48),(105,79,22),(106,79,19),(107,80,12),(108,80,11),(109,80,10),(110,81,36),(111,82,8),(112,83,24),(113,83,19),(114,84,44),(115,84,43),(116,84,42),(117,85,36),(118,86,8),(119,87,42),(120,88,30),(121,88,32),(122,89,33),(123,90,2),(124,91,19),(125,92,6),(126,92,4),(127,92,8),(128,93,46),(129,94,10),(130,94,11),(131,94,12),(132,95,24),(133,95,22),(134,96,36),(135,97,8),(136,98,43),(137,99,33),(138,100,4),(139,100,6),(140,101,24),(141,101,19),(142,102,46),(143,103,8),(144,104,14),(145,105,36),(146,106,18),(147,106,26),(148,107,25),(149,107,30),(150,107,32),(151,108,46),(152,109,19),(153,109,24),(154,110,14),(155,111,40),(156,112,27),(157,113,4),(158,113,6),(159,113,2),(160,114,35),(161,115,42),(162,116,37),(163,117,8),(164,118,14),(165,119,18),(166,120,46),(167,121,10),(168,121,11),(169,121,12),(170,122,6),(171,122,2),(172,122,4),(173,123,18),(174,124,42),(175,126,18),(176,125,32),(177,125,30),(178,125,36),(179,127,14),(180,128,8),(181,129,46),(182,130,14),(183,131,30),(184,131,32),(185,131,25),(186,132,8),(187,133,44),(188,133,43),(189,133,42),(190,134,18),(191,134,38),(192,135,36),(193,136,12),(194,136,11),(195,136,10),(196,137,4),(197,137,6),(198,137,2),(199,138,26),(200,138,23),(201,139,46),(202,140,31),(203,140,18),(204,141,36),(205,142,8),(206,143,46),(207,144,23),(208,144,18),(209,145,2),(210,146,46),(211,147,36),(212,148,26),(213,148,23),(214,149,24),(215,149,22),(216,150,6),(217,150,2),(218,150,4),(219,151,35),(220,152,36),(221,153,19),(222,153,27),(223,154,42),(224,154,44),(225,154,43),(226,155,36),(227,156,35),(228,157,8),(229,158,31),(230,159,24),(231,159,22),(232,160,8),(233,161,36),(234,162,18),(235,163,6),(236,163,4),(237,163,2),(238,164,26),(239,164,18),(240,165,22),(241,165,24),(242,166,19),(243,167,36),(244,168,10),(245,169,36),(246,170,26),(247,170,23),(248,171,25),(249,172,23),(250,172,18),(251,173,14),(252,175,23),(253,175,26),(254,174,36),(255,176,14),(256,177,31),(257,178,14),(258,179,26),(259,179,23),(260,180,12),(261,180,11),(262,181,41),(263,182,46),(264,183,26),(265,183,23),(266,184,11),(267,184,12),(268,184,10),(269,185,26),(270,185,23),(271,186,36),(272,187,14),(273,188,46),(274,189,36),(275,190,43),(276,190,44),(277,190,42),(278,191,12),(279,191,10),(280,191,11),(281,192,26),(282,192,23),(283,194,36),(284,193,42),(285,195,17),(286,196,18),(287,196,26),(288,197,46),(289,198,36),(290,199,43),(291,199,42),(292,199,44),(293,200,32),(294,200,25),(295,200,30),(296,201,46),(297,202,36),(298,203,25),(299,204,43),(300,204,44),(301,204,42),(302,205,25),(303,206,46),(304,207,36),(305,208,46),(306,209,25),(307,209,30),(308,209,32),(309,210,32),(310,210,30),(311,210,25),(312,211,42),(313,211,43),(314,211,44),(315,212,25),(316,212,30),(317,212,32),(318,213,46),(319,214,44),(320,214,43),(321,214,42),(322,215,46);
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
) ENGINE=InnoDB AUTO_INCREMENT=216 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,49,'<km.home.Home$ApplicationLauncher: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',10,'a',0),(2,50,'<km.home.ThemeManager: void setup()>',24,'a',NULL),(3,1,'<km.home.Home: void startWallpaper()>',5,'a',NULL),(4,3,'<km.home.UnlockActivity: void onClick(android.view.View)>',5,'a',NULL),(5,1,'<km.home.Home: void changeTheme(km.theme.ThemeInfo)>',15,'a',NULL),(6,56,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(7,56,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(8,57,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(9,58,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(10,60,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(11,57,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(12,62,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(13,63,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(14,65,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(15,66,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(16,11,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(17,67,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(18,8,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(19,68,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(20,69,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(21,2,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(22,70,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(23,10,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(24,72,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(25,73,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(26,30,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(27,2,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(28,74,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(29,4,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(30,75,'<com.jx.ad.AndroidThemeService$4: void run()>',125,'r',NULL),(31,76,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(32,10,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(33,44,'<com.jx.WelcomeActivity: void onResume()>',67,'a',NULL),(34,2,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(35,68,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(36,15,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(37,78,'<com.jx.ad.AndroidThemeService$5: void run()>',116,'r',NULL),(38,79,'<com.km.tool.ApnManager: int CreateWapApn()>',30,'p',0),(39,82,'<com.km.launcher.LauncherModel: com.km.launcher.FolderInfo getFolderById(android.content.Context,long)>',12,'p',NULL),(40,65,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(41,58,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(42,84,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(43,73,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(44,62,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(45,74,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(46,79,'<com.km.tool.ApnManager: void delete(int)>',8,'p',NULL),(47,33,'<com.jx.WelcomeActivity: void onResume()>',67,'a',NULL),(48,85,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(49,82,'<com.km.launcher.LauncherModel: com.km.launcher.Widget getPhotoFrameInfo(android.content.Context,int,int,int)>',15,'p',NULL),(50,86,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(51,60,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(52,27,'<com.km.launcher.InstallShortcutReceiver: boolean findEmptyCell(android.content.Context,int[],int)>',19,'p',NULL),(53,87,'<com.km.ad.AdService$1: void run()>',11,'s',NULL),(54,44,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(55,88,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(56,18,'<com.km.launcher.Launcher: void startWallpaper()>',5,'a',NULL),(57,89,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(58,32,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'p',NULL),(59,90,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(60,91,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(61,79,'<com.km.tool.ApnManager: int CreateWapApn()>',27,'p',NULL),(62,78,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(63,86,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(64,19,'<com.km.launcher.Launcher: void registerContentObservers()>',4,'p',NULL),(65,94,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(66,60,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(67,36,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(68,79,'<com.km.tool.ApnManager: int CreateGPRSApn()>',27,'p',NULL),(69,90,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(70,89,'<com.jx.ad.AndroidThemeService$5: void run()>',113,'r',NULL),(71,95,'<com.km.theme.ThemeManager: void setup()>',32,'a',NULL),(72,25,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(73,10,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(74,96,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(75,14,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(76,67,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(77,97,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(78,48,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(79,82,'<com.km.launcher.LauncherModel: void updateItemInDatabase(android.content.Context,com.km.launcher.ItemInfo)>',8,'p',NULL),(80,10,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(81,98,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(82,8,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(83,19,'<com.km.launcher.Launcher: boolean onKeyDown(int,android.view.KeyEvent)>',27,'a',NULL),(84,100,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(85,101,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(86,67,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(87,42,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(88,33,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(89,32,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'p',NULL),(90,2,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(91,19,'<com.km.launcher.Launcher: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(92,106,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(93,75,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(94,107,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(95,79,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',19,'p',NULL),(96,76,'<com.jx.ad.AndroidThemeService$4: void run()>',125,'r',NULL),(97,58,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(98,43,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(99,32,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',25,'p',NULL),(100,6,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(101,113,'<com.km.launcher.Search: void sendLaunchIntent(java.lang.String,android.net.Uri,java.lang.String,android.os.Bundle,int,java.lang.String,android.server.search.SearchableInfo)>',20,'a',NULL),(102,90,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(103,66,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(104,117,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(105,98,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(106,18,'<com.km.launcher.Launcher: void startActivitySafely(android.content.Intent)>',3,'a',0),(107,25,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(108,46,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(109,19,'<com.km.launcher.Launcher: void startActivitySafely(android.content.Intent)>',3,'a',0),(110,70,'<com.jx.ad.AndroidThemeService$5: void run()>',113,'r',NULL),(111,40,'<com.km.launcher.LauncherProvider: void sendNotify(android.net.Uri)>',9,'p',0),(112,82,'<com.km.launcher.LauncherModel: boolean shortcutExists(android.content.Context,java.lang.String,android.content.Intent)>',12,'p',NULL),(113,119,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(114,35,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',25,'p',NULL),(115,42,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(116,37,'<com.km.launcher.LauncherProvider: void sendNotify(android.net.Uri)>',9,'p',0),(117,56,'<com.jx.ad.AndroidThemeService$4: void run()>',120,'r',NULL),(118,57,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(119,18,'<com.km.launcher.Launcher: void registerContentObservers()>',4,'p',NULL),(120,120,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(121,122,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(122,121,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(123,123,'<com.km.launcher.LauncherModel: com.km.launcher.FolderInfo getFolderById(android.content.Context,long)>',12,'p',NULL),(124,42,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(125,125,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(126,123,'<com.km.launcher.LauncherModel: com.km.launcher.Widget getPhotoFrameInfo(android.content.Context,int,int,int)>',15,'p',NULL),(127,14,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(128,85,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(129,127,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(130,117,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(131,129,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(132,130,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(133,131,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(134,132,'<com.km.tool.Util: void startServiceWithSingleMode(android.content.Context,java.lang.Class)>',7,'s',NULL),(135,101,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(136,10,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(137,135,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(138,136,'<com.km.tool.ApnManager: int CreateGPRSApn()>',30,'p',0),(139,46,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(140,123,'<com.km.launcher.LauncherModel: void addItemToDatabase(android.content.Context,com.km.launcher.ItemInfo,long,int,int,int,boolean)>',17,'p',NULL),(141,101,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(142,67,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(143,86,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(144,139,'<com.km.theme.ThemeManager: void setup()>',32,'a',NULL),(145,2,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(146,86,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(147,140,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(148,136,'<com.km.tool.ApnManager: int CreateWapApn()>',27,'p',NULL),(149,79,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',9,'p',NULL),(150,142,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(151,35,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'p',NULL),(152,36,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(153,82,'<com.km.launcher.LauncherModel: void addItemToDatabase(android.content.Context,com.km.launcher.ItemInfo,long,int,int,int,boolean)>',17,'p',NULL),(154,42,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(155,144,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(156,35,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'p',NULL),(157,85,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(158,31,'<com.km.launcher.InstallShortcutReceiver: boolean findEmptyCell(android.content.Context,int[],int)>',19,'p',NULL),(159,79,'<com.km.tool.ApnManager: int getApnId(java.lang.String)>',6,'p',NULL),(160,58,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(161,145,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(162,18,'<com.km.launcher.Launcher: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(163,2,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(164,18,'<com.km.launcher.Launcher: boolean onKeyDown(int,android.view.KeyEvent)>',27,'a',NULL),(165,79,'<com.km.tool.ApnManager: int CreateGPRSApn()>',30,'p',0),(166,19,'<com.km.launcher.Launcher: void startWallpaper()>',5,'a',NULL),(167,145,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(168,10,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(169,98,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(170,136,'<com.km.tool.ApnManager: int CreateWapApn()>',30,'p',0),(171,25,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(172,123,'<com.km.launcher.LauncherModel: void updateItemInDatabase(android.content.Context,com.km.launcher.ItemInfo)>',8,'p',NULL),(173,68,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(174,145,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(175,136,'<com.km.tool.ApnManager: int getApnId(java.lang.String)>',6,'p',NULL),(176,68,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(177,123,'<com.km.launcher.LauncherModel: boolean shortcutExists(android.content.Context,java.lang.String,android.content.Intent)>',12,'p',NULL),(178,117,'<com.jx.ad.AndroidThemeService$4: void run()>',120,'r',NULL),(179,136,'<com.km.tool.ApnManager: int CreateGPRSApn()>',27,'p',NULL),(180,12,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(181,41,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(182,75,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(183,136,'<com.km.tool.ApnManager: void delete(int)>',8,'p',NULL),(184,150,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(185,136,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',9,'p',NULL),(186,151,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(187,57,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(188,127,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(189,145,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(190,152,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(191,153,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(192,136,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',19,'p',NULL),(193,42,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(194,140,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(195,17,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(196,154,'<com.km.launcher.Search: void sendLaunchIntent(java.lang.String,android.net.Uri,java.lang.String,android.os.Bundle,int,java.lang.String,android.server.search.SearchableInfo)>',20,'a',NULL),(197,155,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(198,76,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(199,156,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(200,157,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(201,158,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(202,98,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(203,25,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(204,159,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(205,25,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(206,120,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(207,144,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(208,155,'<com.jx.ad.AndroidThemeService$5: void run()>',116,'r',NULL),(209,160,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(210,162,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(211,163,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(212,25,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(213,73,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(214,42,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(215,73,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=209 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,12),(2,3,12),(3,4,12),(4,5,12),(5,6,12),(6,7,12),(7,8,12),(8,9,12),(9,12,21),(10,14,22),(11,15,22),(12,16,22),(13,17,25),(14,18,26),(15,19,22),(16,20,27),(17,21,1),(18,22,22),(19,23,28),(20,24,26),(21,25,24),(22,26,2),(23,27,22),(24,28,5),(25,29,3),(26,31,23),(27,32,22),(28,33,22),(29,34,1),(30,36,27),(31,37,1),(32,38,22),(33,40,29),(34,42,29),(35,44,7),(36,45,22),(37,48,30),(38,49,25),(39,50,30),(40,51,31),(41,52,22),(42,54,22),(43,55,22),(44,59,32),(45,61,12),(46,62,33),(47,63,22),(48,64,22),(49,65,12),(50,66,12),(51,68,22),(52,69,12),(53,70,12),(54,71,22),(55,72,26),(56,73,28),(57,74,22),(58,75,12),(59,76,12),(60,77,22),(61,80,27),(62,82,12),(63,83,28),(64,84,22),(65,85,33),(66,86,7),(67,87,24),(68,88,25),(69,90,2),(70,89,38),(71,91,26),(72,92,22),(73,93,39),(74,94,5),(75,95,22),(76,97,3),(77,98,32),(78,99,27),(79,100,23),(80,103,21),(81,104,26),(82,105,22),(83,106,1),(84,107,32),(85,108,26),(86,109,22),(87,110,22),(88,111,26),(89,113,24),(90,114,25),(91,115,22),(92,116,2),(93,117,31),(94,118,27),(95,119,5),(96,120,22),(97,121,22),(98,122,3),(99,123,22),(100,124,23),(101,125,26),(102,126,26),(103,129,25),(104,130,22),(105,131,22),(106,132,21),(107,133,26),(108,134,22),(109,135,33),(110,137,22),(111,138,23),(112,139,33),(113,140,28),(114,141,5),(115,142,22),(116,143,25),(117,144,2),(118,147,24),(119,148,22),(120,149,26),(121,150,3),(122,151,25),(123,152,23),(124,153,24),(125,154,2),(126,155,22),(127,156,22),(128,157,5),(129,158,3),(130,159,3),(131,160,24),(132,162,22),(133,163,24),(134,164,2),(135,165,2),(136,166,38),(137,167,12),(138,168,39),(139,169,23),(140,170,23),(141,171,5),(142,172,25),(143,173,12),(144,174,12),(145,175,23),(146,176,5),(147,178,12),(148,179,2),(149,180,12),(150,181,3),(151,182,27),(152,183,12),(153,184,2),(154,185,22),(155,186,24),(156,187,12),(157,188,3),(158,189,22),(159,190,12),(160,191,23),(161,192,24),(162,193,32),(163,194,5),(164,195,7),(165,197,31),(166,198,5),(167,199,22),(168,200,22),(169,201,30),(170,202,3),(171,203,22),(172,204,26),(173,205,26),(174,206,30),(175,207,29),(176,208,7),(177,209,26),(178,210,22),(179,211,21),(180,212,26),(181,213,26),(182,214,26),(183,215,22),(184,216,29),(185,217,31),(186,219,27),(187,220,27),(188,221,22),(189,222,26),(190,223,26),(191,224,26),(192,225,23),(193,226,22),(194,227,2),(195,228,23),(196,229,24),(197,230,2),(198,231,2),(199,232,5),(200,233,5),(201,234,3),(202,235,3),(203,236,23),(204,237,3),(205,238,24),(206,239,22),(207,240,24),(208,241,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,21,1),(2,34,1),(3,37,1),(4,59,2),(5,98,2),(6,106,1),(7,107,2),(8,193,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/km/MainActivity'),(2,10,'km/home/Home'),(3,11,'km/home/UnlockActivity'),(4,13,'com.android.packageinstaller.PackageInstallerActivity'),(5,21,'com.nd.android.launcher.Launcher'),(6,30,'com/jx/WelcomeActivity'),(7,35,'com/jx/WelcomeActivity'),(8,34,'com.nd.android.launcher.Launcher'),(9,37,'com.nd.android.launcher.Launcher'),(10,39,'com.android.packageinstaller.PackageInstallerActivity'),(11,41,'.Launcher'),(12,43,'(.*).Launcher'),(13,44,'com/jx/ad/BootSmsReceiverService'),(14,46,'(.*).Launcher'),(15,47,'.Launcher'),(16,53,'.Launcher'),(17,56,'(.*).Launcher'),(18,57,'com/km/ad/AdService'),(19,58,'(.*).Launcher'),(20,60,'.Launcher'),(21,67,'com.android.packageinstaller.PackageInstallerActivity'),(22,78,'com/km/charge/MainActivity'),(23,79,'com/jx/WelcomeActivity'),(24,81,'com.android.packageinstaller.PackageInstallerActivity'),(25,86,'com/jx/ad/BootSmsReceiverService'),(26,96,'com/jx/WelcomeActivity'),(27,101,'com/km/theme/ThemeListActivity'),(28,102,'com.android.packageinstaller.PackageInstallerActivity'),(29,106,'com.nd.android.launcher.Launcher'),(30,112,'com.android.packageinstaller.PackageInstallerActivity'),(31,127,'com/jx/WelcomeActivity'),(32,128,'com.android.packageinstaller.PackageInstallerActivity'),(33,136,'com/km/charge/CycleService'),(34,141,'com/jx/ad/AndroidThemeService'),(35,145,'com/km/charge/MainActivity'),(36,146,'com/jx/WelcomeActivity'),(37,147,'com/jx/ad/AndroidThemeService'),(38,161,'com/km/theme/ThemeListActivity'),(39,159,'com/jx/ad/AndroidThemeService'),(40,163,'com/jx/ad/AndroidThemeService'),(41,164,'com/jx/ad/AndroidThemeService'),(42,165,'com/jx/ad/AndroidThemeService'),(43,170,'com/jx/ad/AndroidThemeService'),(44,177,'com/jx/WelcomeActivity'),(45,175,'com/jx/ad/AndroidThemeService'),(46,176,'com/jx/ad/AndroidThemeService'),(47,181,'com/jx/ad/AndroidThemeService'),(48,184,'com/jx/ad/AndroidThemeService'),(49,186,'com/jx/ad/AndroidThemeService'),(50,191,'com/jx/ad/AndroidThemeService'),(51,195,'com/jx/ad/BootSmsReceiverService'),(52,196,'com.android.packageinstaller.PackageInstallerActivity'),(53,198,'com/jx/ad/AndroidThemeService'),(54,202,'com/jx/ad/AndroidThemeService'),(55,208,'com/jx/ad/BootSmsReceiverService'),(56,218,'com/jx/WelcomeActivity'),(57,227,'com/jx/ad/AndroidThemeService'),(58,228,'com/jx/ad/AndroidThemeService'),(59,233,'com/jx/ad/AndroidThemeService'),(60,235,'com/jx/ad/AndroidThemeService'),(61,240,'com/jx/ad/AndroidThemeService');
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
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,13,1),(2,14,2),(3,15,3),(4,16,4),(5,17,5),(6,18,6),(7,19,7),(8,22,8),(9,23,10),(10,24,11),(11,27,12),(12,32,13),(13,33,14),(14,39,16),(15,38,15),(16,45,18),(17,48,21),(18,50,22),(19,49,23),(20,52,25),(21,55,29),(22,54,30),(23,62,32),(24,63,33),(25,64,34),(26,67,36),(27,68,37),(28,72,40),(29,73,41),(30,71,42),(31,74,43),(32,77,44),(33,81,45),(34,83,46),(35,85,47),(36,84,48),(37,88,51),(38,91,52),(39,92,53),(40,93,54),(41,95,55),(42,102,57),(43,104,59),(44,105,60),(45,108,63),(46,111,65),(47,109,68),(48,112,67),(49,110,66),(50,114,69),(51,115,71),(52,120,74),(53,121,75),(54,123,76),(55,125,78),(56,126,79),(57,128,81),(58,129,82),(59,130,83),(60,131,84),(61,133,85),(62,134,86),(63,135,87),(64,137,88),(65,139,89),(66,140,91),(67,143,94),(68,142,95),(69,148,98),(70,149,100),(71,151,104),(72,155,106),(73,156,107),(74,162,111),(75,168,112),(76,172,113),(77,185,118),(78,189,120),(79,196,123),(80,201,125),(81,199,126),(82,200,127),(83,203,129),(84,204,128),(85,205,130),(86,206,132),(87,209,133),(88,210,134),(89,212,135),(90,213,136),(91,214,137),(92,215,138),(93,221,139),(94,222,140),(95,223,141),(96,224,142),(97,226,143),(98,239,144);
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
) ENGINE=InnoDB AUTO_INCREMENT=243 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,2,'android.intent.extra.INTENT'),(2,3,'android.intent.extra.INTENT'),(3,4,'android.intent.extra.TITLE'),(4,4,'android.intent.extra.INTENT'),(5,5,'android.intent.extra.INTENT'),(6,6,'android.intent.extra.TITLE'),(7,6,'android.intent.extra.INTENT'),(8,7,'android.intent.extra.INTENT'),(9,8,'android.intent.extra.TITLE'),(10,8,'android.intent.extra.INTENT'),(11,9,'android.intent.extra.TITLE'),(12,9,'android.intent.extra.INTENT'),(13,12,'resownerid'),(14,12,'respid'),(15,14,'CostTips'),(16,15,'CostTips'),(17,16,'CostTips'),(18,17,'CostTips'),(19,19,'CostTips'),(20,21,'from'),(21,22,'CostTips'),(22,23,'respid'),(23,25,'resownerid'),(24,25,'respid'),(25,26,'resownerid'),(26,27,'CostTips'),(27,26,'respid'),(28,28,'resownerid'),(29,28,'respid'),(30,29,'resownerid'),(31,29,'respid'),(32,31,'resownerid'),(33,31,'respid'),(34,32,'CostTips'),(35,33,'CostTips'),(36,34,'from'),(37,38,'CostTips'),(38,37,'from'),(39,41,'startother'),(40,43,'startother'),(41,45,'CostTips'),(42,46,'startother'),(43,47,'startother'),(44,49,'CostTips'),(45,52,'CostTips'),(46,53,'startother'),(47,54,'CostTips'),(48,56,'startother'),(49,55,'CostTips'),(50,54,'SetNetwork'),(51,58,'startother'),(52,60,'startother'),(53,61,'android.intent.extra.INTENT'),(54,63,'CostTips'),(55,64,'CostTips'),(56,65,'android.intent.extra.INTENT'),(57,66,'android.intent.extra.TITLE'),(58,66,'android.intent.extra.INTENT'),(59,68,'CostTips'),(60,69,'android.intent.extra.INTENT'),(61,70,'android.intent.extra.TITLE'),(62,70,'android.intent.extra.INTENT'),(63,71,'CostTips'),(64,73,'respid'),(65,71,'SetNetwork'),(66,74,'CostTips'),(67,75,'android.intent.extra.INTENT'),(68,76,'android.intent.extra.TITLE'),(69,77,'CostTips'),(70,76,'android.intent.extra.INTENT'),(71,82,'android.intent.extra.TITLE'),(72,82,'android.intent.extra.INTENT'),(73,83,'respid'),(74,84,'CostTips'),(75,87,'resownerid'),(76,87,'respid'),(77,88,'CostTips'),(78,90,'resownerid'),(79,89,'com.android.contacts.extra.FILTER_TEXT'),(80,90,'respid'),(81,92,'CostTips'),(82,94,'resownerid'),(83,95,'CostTips'),(84,94,'respid'),(85,97,'resownerid'),(86,97,'respid'),(87,100,'resownerid'),(88,100,'respid'),(89,103,'resownerid'),(90,103,'respid'),(91,105,'CostTips'),(92,106,'from'),(93,109,'CostTips'),(94,110,'CostTips'),(95,109,'SetNetwork'),(96,113,'resownerid'),(97,114,'CostTips'),(98,113,'respid'),(99,115,'CostTips'),(100,116,'resownerid'),(101,116,'respid'),(102,119,'resownerid'),(103,119,'respid'),(104,120,'CostTips'),(105,121,'CostTips'),(106,122,'resownerid'),(107,123,'CostTips'),(108,122,'respid'),(109,124,'resownerid'),(110,124,'respid'),(111,129,'CostTips'),(112,130,'CostTips'),(113,131,'CostTips'),(114,132,'resownerid'),(115,134,'CostTips'),(116,132,'respid'),(117,137,'CostTips'),(118,138,'resownerid'),(119,138,'respid'),(120,140,'respid'),(121,141,'resownerid'),(122,141,'respid'),(123,142,'CostTips'),(124,143,'CostTips'),(125,142,'SetNetwork'),(126,144,'resownerid'),(127,144,'respid'),(128,147,'resownerid'),(129,148,'CostTips'),(130,147,'respid'),(131,150,'resownerid'),(132,150,'respid'),(133,151,'CostTips'),(134,152,'resownerid'),(135,152,'respid'),(136,153,'resownerid'),(137,153,'respid'),(138,154,'resownerid'),(139,154,'respid'),(140,155,'CostTips'),(141,156,'CostTips'),(142,157,'resownerid'),(143,157,'respid'),(144,158,'resownerid'),(145,158,'respid'),(146,159,'resownerid'),(147,159,'respid'),(148,160,'resownerid'),(149,162,'CostTips'),(150,160,'respid'),(151,163,'resownerid'),(152,164,'resownerid'),(153,165,'resownerid'),(154,163,'respid'),(155,164,'respid'),(156,165,'respid'),(157,166,'com.android.contacts.extra.FILTER_TEXT'),(158,167,'android.intent.extra.INTENT'),(159,169,'resownerid'),(160,170,'resownerid'),(161,171,'resownerid'),(162,169,'respid'),(163,170,'respid'),(164,172,'CostTips'),(165,173,'android.intent.extra.INTENT'),(166,171,'respid'),(167,174,'android.intent.extra.TITLE'),(168,175,'resownerid'),(169,175,'respid'),(170,176,'resownerid'),(171,174,'android.intent.extra.INTENT'),(172,176,'respid'),(173,178,'android.intent.extra.INTENT'),(174,179,'resownerid'),(175,180,'android.intent.extra.TITLE'),(176,181,'resownerid'),(177,179,'respid'),(178,180,'android.intent.extra.INTENT'),(179,181,'respid'),(180,183,'android.intent.extra.INTENT'),(181,184,'resownerid'),(182,185,'CostTips'),(183,184,'respid'),(184,186,'resownerid'),(185,186,'respid'),(186,187,'android.intent.extra.TITLE'),(187,187,'android.intent.extra.INTENT'),(188,188,'resownerid'),(189,188,'respid'),(190,189,'CostTips'),(191,190,'android.intent.extra.TITLE'),(192,191,'resownerid'),(193,190,'android.intent.extra.INTENT'),(194,191,'respid'),(195,192,'resownerid'),(196,192,'respid'),(197,194,'resownerid'),(198,194,'respid'),(199,198,'resownerid'),(200,198,'respid'),(201,199,'CostTips'),(202,200,'CostTips'),(203,202,'resownerid'),(204,202,'respid'),(205,203,'CostTips'),(206,210,'CostTips'),(207,211,'resownerid'),(208,211,'respid'),(209,215,'CostTips'),(210,221,'CostTips'),(211,225,'resownerid'),(212,225,'respid'),(213,226,'CostTips'),(214,227,'resownerid'),(215,227,'respid'),(216,228,'resownerid'),(217,228,'respid'),(218,229,'resownerid'),(219,229,'respid'),(220,230,'resownerid'),(221,231,'resownerid'),(222,230,'respid'),(223,231,'respid'),(224,232,'resownerid'),(225,232,'respid'),(226,233,'resownerid'),(227,233,'respid'),(228,234,'resownerid'),(229,234,'respid'),(230,235,'resownerid'),(231,236,'resownerid'),(232,235,'respid'),(233,236,'respid'),(234,237,'resownerid'),(235,237,'respid'),(236,238,'resownerid'),(237,239,'CostTips'),(238,238,'respid'),(239,240,'resownerid'),(240,240,'respid'),(241,241,'resownerid'),(242,241,'respid');
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
) ENGINE=InnoDB AUTO_INCREMENT=216 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,2),(5,4,3),(6,5,4),(7,6,5),(8,7,6),(9,8,6),(10,9,7),(11,10,3),(12,10,2),(13,11,5),(14,12,8),(15,13,7),(16,14,8),(17,15,1),(18,16,1),(19,17,9),(20,18,9),(21,19,1),(22,20,10),(23,21,10),(24,22,11),(25,23,11),(26,24,3),(27,24,2),(28,25,5),(29,26,8),(30,27,7),(31,28,8),(32,29,1),(33,30,2),(34,30,3),(35,31,5),(36,32,7),(37,33,8),(38,34,14),(39,34,13),(40,34,15),(41,35,13),(42,35,14),(43,35,15),(44,36,13),(45,36,14),(46,36,15),(47,37,13),(48,37,14),(49,37,15),(50,38,15),(51,38,13),(52,38,14),(53,39,15),(54,39,14),(55,39,13),(56,40,18),(57,40,17),(58,40,16),(59,41,17),(60,41,16),(61,41,18),(62,42,18),(63,42,17),(64,42,16),(65,43,16),(66,43,17),(67,43,18),(68,44,16),(69,44,17),(70,44,18),(71,45,18),(72,45,16),(73,45,17),(74,46,19),(75,47,20),(76,48,20),(77,49,20),(78,50,20),(79,51,20),(80,52,20),(81,53,23),(82,53,24),(83,53,5),(84,53,2),(85,53,3),(86,54,4),(87,55,4),(88,56,27),(89,57,27),(90,58,4),(91,59,27),(92,60,4),(93,61,30),(94,61,28),(95,61,34),(96,61,35),(97,61,14),(98,61,33),(99,61,25),(100,61,22),(101,62,36),(102,62,37),(103,63,15),(104,63,14),(105,63,13),(106,64,14),(107,64,13),(108,64,15),(109,65,13),(110,65,15),(111,65,14),(112,66,15),(113,66,14),(114,66,13),(115,67,13),(116,67,15),(117,67,14),(118,68,6),(119,69,14),(120,69,15),(121,69,13),(122,70,3),(123,70,2),(124,70,5),(125,70,24),(126,70,23),(127,71,14),(128,71,15),(129,71,13),(130,72,14),(131,72,13),(132,72,15),(133,73,6),(134,74,4),(135,75,15),(136,75,14),(137,75,13),(138,76,22),(139,76,35),(140,76,25),(141,76,30),(142,76,14),(143,76,28),(144,76,34),(145,76,33),(146,77,6),(147,78,15),(148,78,13),(149,78,14),(150,79,19),(151,80,4),(152,81,14),(153,81,15),(154,81,13),(155,82,13),(156,82,14),(157,82,15),(158,83,14),(159,83,15),(160,83,13),(161,84,15),(162,84,13),(163,84,14),(164,85,13),(165,85,15),(166,85,14),(167,86,20),(168,87,15),(169,87,14),(170,87,13),(171,88,15),(172,88,14),(173,88,13),(174,89,13),(175,89,14),(176,89,15),(177,90,15),(178,90,13),(179,90,14),(180,91,28),(181,91,14),(182,91,33),(183,91,30),(184,91,35),(185,91,34),(186,91,22),(187,91,25),(188,92,6),(189,93,40),(190,94,19),(191,95,20),(192,96,37),(193,96,36),(194,97,23),(195,97,5),(196,97,3),(197,97,2),(198,97,24),(199,98,27),(200,99,35),(201,99,34),(202,99,25),(203,99,22),(204,99,28),(205,99,33),(206,99,30),(207,99,14),(208,100,40),(209,101,5),(210,101,23),(211,101,24),(212,101,2),(213,101,3),(214,102,4),(215,103,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,2,2),(4,2,3),(5,3,1),(6,15,1),(7,15,2),(8,15,3),(9,16,1),(10,16,2),(11,16,3),(12,17,2),(13,18,2),(14,19,1),(15,29,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,7,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(2,8,NULL,NULL,NULL,NULL,'application','vnd.wap.sic'),(3,34,'package',NULL,NULL,NULL,NULL,NULL),(4,35,'package',NULL,NULL,NULL,NULL,NULL),(5,36,'package',NULL,NULL,NULL,NULL,NULL),(6,37,'package',NULL,NULL,NULL,NULL,NULL),(7,38,'package',NULL,NULL,NULL,NULL,NULL),(8,39,'package',NULL,NULL,NULL,NULL,NULL),(9,61,'package',NULL,NULL,NULL,NULL,NULL),(10,63,'package',NULL,NULL,NULL,NULL,NULL),(11,64,'package',NULL,NULL,NULL,NULL,NULL),(12,65,'package',NULL,NULL,NULL,NULL,NULL),(13,66,'package',NULL,NULL,NULL,NULL,NULL),(14,67,'package',NULL,NULL,NULL,NULL,NULL),(15,68,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(16,69,'package',NULL,NULL,NULL,NULL,NULL),(17,71,'package',NULL,NULL,NULL,NULL,NULL),(18,72,'package',NULL,NULL,NULL,NULL,NULL),(19,73,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(20,75,'package',NULL,NULL,NULL,NULL,NULL),(21,76,'package',NULL,NULL,NULL,NULL,NULL),(22,77,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(23,78,'package',NULL,NULL,NULL,NULL,NULL),(24,81,'package',NULL,NULL,NULL,NULL,NULL),(25,82,'package',NULL,NULL,NULL,NULL,NULL),(26,83,'package',NULL,NULL,NULL,NULL,NULL),(27,84,'package',NULL,NULL,NULL,NULL,NULL),(28,85,'package',NULL,NULL,NULL,NULL,NULL),(29,87,'package',NULL,NULL,NULL,NULL,NULL),(30,88,'package',NULL,NULL,NULL,NULL,NULL),(31,89,'package',NULL,NULL,NULL,NULL,NULL),(32,90,'package',NULL,NULL,NULL,NULL,NULL),(33,91,'package',NULL,NULL,NULL,NULL,NULL),(34,92,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(35,99,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'km.home'),(2,10,'km.home'),(3,11,'km.home'),(4,12,'com.jx.util'),(5,13,'com.android.packageinstaller'),(6,21,'NULL-CONSTANT'),(7,30,'com.jx.theme.n627582275'),(8,35,'com.jx.theme.n962474746'),(9,34,'NULL-CONSTANT'),(10,37,'NULL-CONSTANT'),(11,39,'com.android.packageinstaller'),(12,41,''),(13,43,''),(14,44,'com.jx.theme.n962474746'),(15,46,'(.*)'),(16,47,'(.*)'),(17,53,''),(18,56,''),(19,57,'com.km.launcher'),(20,58,'(.*)'),(21,60,'(.*)'),(22,67,'com.android.packageinstaller'),(23,78,'com.km.launcher'),(24,79,'com.jx.theme.n487296221'),(25,81,'com.android.packageinstaller'),(26,86,'com.jx.theme.n1814263770'),(27,96,'com.jx.theme.n1814263770'),(28,101,'com.km.launcher'),(29,102,'com.android.packageinstaller'),(30,103,'com.jx.util'),(31,106,'NULL-CONSTANT'),(32,112,'com.android.packageinstaller'),(33,127,'com.jx.theme.n1814263770'),(34,128,'com.android.packageinstaller'),(35,132,'com.jx.util'),(36,136,'com.km.launcher'),(37,138,'com.jx.util'),(38,141,'com.jx.theme.n627582275'),(39,145,'com.km.launcher'),(40,144,'com.jx.util'),(41,146,'com.jx.theme.n962474746'),(42,147,'com.jx.theme.n627582275'),(43,150,'com.jx.util'),(44,152,'com.jx.util'),(45,153,'com.jx.util'),(46,154,'com.jx.util'),(47,157,'com.jx.util'),(48,158,'com.jx.util'),(49,161,'com.km.launcher'),(50,159,'com.jx.theme.n627582275'),(51,160,'com.jx.util'),(52,163,'com.jx.theme.n962474746'),(53,164,'com.jx.theme.n627582275'),(54,165,'com.jx.theme.n1814263770'),(55,169,'com.jx.util'),(56,171,'com.jx.util'),(57,170,'com.jx.theme.n627582275'),(58,177,'com.jx.theme.n627582275'),(59,175,'com.jx.theme.n962474746'),(60,176,'com.jx.theme.n1814263770'),(61,179,'com.jx.util'),(62,181,'com.jx.theme.n1814263770'),(63,184,'com.jx.theme.n962474746'),(64,186,'com.jx.theme.n1814263770'),(65,188,'com.jx.util'),(66,191,'com.jx.theme.n1814263770'),(67,192,'com.jx.util'),(68,194,'com.jx.util'),(69,195,'com.jx.theme.n487296221'),(70,196,'com.android.packageinstaller'),(71,198,'com.jx.theme.n962474746'),(72,202,'com.jx.theme.n962474746'),(73,208,'com.jx.theme.n627582275'),(74,211,'com.jx.util'),(75,218,'com.jx.theme.n487296221'),(76,225,'com.jx.util'),(77,227,'com.jx.theme.n487296221'),(78,228,'com.jx.theme.n487296221'),(79,231,'com.jx.util'),(80,233,'com.jx.theme.n487296221'),(81,235,'com.jx.theme.n487296221'),(82,237,'com.jx.util'),(83,238,'com.jx.util'),(84,240,'com.jx.theme.n487296221'),(85,241,'com.jx.util');
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
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,2,0),(2,3,0),(3,10,0),(4,8,0),(5,9,0),(6,8,0),(7,9,0),(8,9,0),(9,13,0),(10,14,0),(11,14,0),(12,15,0),(13,16,0),(14,17,0),(15,18,0),(16,19,0),(17,21,0),(18,20,0),(19,25,0),(20,27,0),(21,31,0),(22,33,0),(23,35,0),(24,36,0),(25,36,0),(26,38,0),(27,39,0),(28,41,0),(29,42,0),(30,46,0),(31,46,0),(32,47,0),(33,48,0),(34,49,0),(35,50,0),(36,9,0),(37,51,0),(38,52,0),(39,53,0),(40,49,0),(41,50,0),(42,9,0),(43,51,0),(44,52,0),(45,53,0),(46,50,0),(47,49,0),(48,50,0),(49,9,0),(50,51,0),(51,52,0),(52,53,0),(53,54,0),(54,55,0),(55,56,0),(56,57,0),(57,58,0),(58,59,0),(59,60,0),(60,61,0),(61,62,0),(62,63,0),(63,64,0),(64,65,0),(65,66,0),(66,67,0),(67,68,0),(68,69,0),(69,38,0),(70,70,0),(71,71,0),(72,72,0),(73,73,0),(74,74,0),(75,75,0),(76,76,0),(77,77,0),(78,78,0),(79,71,0),(80,79,0),(81,80,0),(82,81,0),(83,82,0),(84,83,0),(85,84,0),(86,68,0),(87,85,0),(88,86,0),(89,87,0),(90,88,0),(91,89,0),(92,90,0),(93,86,0),(94,85,0),(95,84,0),(96,91,0),(97,92,0),(98,93,0),(99,94,0),(100,72,0),(101,95,0),(102,96,0),(103,97,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=242 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,2,0,0),(2,3,1,0),(3,3,1,0),(4,3,1,0),(5,3,1,0),(6,3,1,0),(7,3,1,0),(8,3,1,0),(9,3,1,0),(10,4,0,0),(11,5,0,0),(12,6,1,0),(13,7,0,0),(14,8,1,0),(15,10,1,0),(16,12,1,0),(17,11,1,0),(18,13,1,0),(19,14,1,0),(20,15,1,0),(21,16,0,0),(22,17,1,0),(23,18,1,0),(24,20,1,0),(25,21,1,0),(26,21,1,0),(27,22,1,0),(28,21,1,0),(29,21,1,0),(30,23,0,0),(31,21,1,0),(32,24,1,0),(33,25,1,0),(34,26,0,0),(35,27,0,0),(36,28,1,0),(37,29,0,0),(38,30,1,0),(39,31,0,0),(40,32,1,0),(41,33,0,0),(42,34,1,0),(43,33,0,0),(44,36,0,0),(45,37,1,0),(46,33,0,0),(47,33,0,0),(48,40,1,0),(49,43,1,0),(50,44,1,0),(51,42,1,0),(52,45,1,0),(53,47,0,0),(54,48,1,0),(55,51,1,0),(56,47,0,0),(57,53,0,0),(58,47,0,0),(59,54,1,0),(60,47,0,0),(61,56,1,0),(62,55,1,0),(63,57,1,0),(64,59,1,0),(65,56,1,0),(66,56,1,0),(67,60,0,0),(68,62,1,0),(69,56,1,0),(70,56,1,0),(71,66,1,0),(72,65,1,0),(73,67,1,0),(74,69,1,0),(75,56,1,0),(76,56,1,0),(77,70,1,0),(78,71,0,0),(79,72,0,0),(80,73,1,0),(81,74,0,0),(82,56,1,0),(83,75,1,0),(84,76,1,0),(85,77,1,0),(86,78,0,0),(87,80,1,0),(88,82,1,0),(89,83,1,0),(90,80,1,0),(91,84,1,0),(92,85,1,0),(93,83,1,0),(94,80,1,0),(95,86,1,0),(96,87,0,0),(97,80,1,0),(98,88,1,0),(99,90,1,0),(100,80,1,0),(101,91,0,0),(102,92,0,0),(103,93,1,0),(104,94,1,0),(105,96,1,0),(106,98,0,0),(107,100,1,0),(108,101,1,0),(109,102,1,0),(110,103,1,0),(111,101,1,0),(112,104,0,0),(113,107,1,0),(114,108,1,0),(115,110,1,0),(116,107,1,0),(117,113,1,0),(118,115,1,0),(119,107,1,0),(120,117,1,0),(121,118,1,0),(122,107,1,0),(123,120,1,0),(124,107,1,0),(125,121,1,0),(126,122,1,0),(127,124,0,0),(128,125,0,0),(129,127,1,0),(130,128,1,0),(131,129,1,0),(132,130,1,0),(133,131,1,0),(134,132,1,0),(135,133,1,0),(136,134,0,0),(137,135,1,0),(138,136,1,0),(139,137,1,0),(140,139,1,0),(141,136,0,0),(142,141,1,0),(143,142,1,0),(144,136,1,0),(145,144,0,0),(146,145,0,0),(147,136,0,0),(148,147,1,0),(149,150,1,0),(150,136,1,0),(151,152,1,0),(152,154,1,0),(153,136,1,0),(154,154,1,0),(155,155,1,0),(156,157,1,0),(157,136,1,0),(158,154,1,0),(159,136,0,0),(160,154,1,0),(161,162,0,0),(162,161,1,0),(163,163,0,0),(164,136,0,0),(165,154,0,0),(166,164,1,0),(167,166,1,0),(168,164,1,0),(169,163,1,0),(170,136,0,0),(171,154,1,0),(172,167,1,0),(173,166,1,0),(174,166,1,0),(175,163,0,0),(176,154,0,0),(177,168,0,0),(178,166,1,0),(179,163,1,0),(180,166,1,0),(181,154,0,0),(182,171,1,0),(183,166,1,0),(184,163,0,0),(185,174,1,0),(186,154,0,0),(187,166,1,0),(188,163,1,0),(189,178,1,0),(190,166,1,0),(191,154,0,0),(192,163,1,0),(193,180,1,0),(194,163,1,0),(195,181,0,0),(196,182,0,0),(197,184,1,0),(198,163,0,0),(199,186,1,0),(200,187,1,0),(201,188,1,0),(202,163,0,0),(203,189,1,0),(204,190,1,0),(205,191,1,0),(206,194,1,0),(207,193,1,0),(208,195,0,0),(209,196,1,0),(210,197,1,0),(211,198,1,0),(212,196,1,0),(213,199,1,0),(214,200,1,0),(215,201,1,0),(216,203,1,0),(217,204,1,0),(218,205,0,0),(219,206,1,0),(220,207,1,0),(221,208,1,0),(222,209,1,0),(223,210,1,0),(224,211,1,0),(225,212,1,0),(226,213,1,0),(227,212,0,0),(228,212,0,0),(229,214,1,0),(230,214,1,0),(231,212,1,0),(232,214,1,0),(233,212,0,0),(234,214,1,0),(235,212,0,0),(236,214,1,0),(237,212,1,0),(238,212,1,0),(239,215,1,0),(240,212,0,0),(241,212,1,0);
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
INSERT INTO `PermissionStrings` VALUES (12,'android.permission.ACCESS_NETWORK_STATE'),(20,'android.permission.CALL_PHONE'),(11,'android.permission.CHANGE_NETWORK_STATE'),(23,'android.permission.EXPAND_STATUS_BAR'),(18,'android.permission.GET_TASKS'),(21,'android.permission.GLOBAL_SEARCH_CONTROL'),(10,'android.permission.INTERNET'),(19,'android.permission.READ_CONTACTS'),(7,'android.permission.READ_PHONE_STATE'),(16,'android.permission.READ_SMS'),(8,'android.permission.RECEIVE_BOOT_COMPLETED'),(6,'android.permission.RECEIVE_MMS'),(5,'android.permission.RECEIVE_SMS'),(14,'android.permission.RECEIVE_WAP_PUSH'),(2,'android.permission.SEND_SMS'),(1,'android.permission.SET_WALLPAPER'),(22,'android.permission.SET_WALLPAPER_HINTS'),(17,'android.permission.VIBRATE'),(13,'android.permission.WAKE_LOCK'),(4,'android.permission.WRITE_APN_SETTINGS'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(9,'android.permission.WRITE_SETTINGS'),(15,'android.permission.WRITE_SMS'),(28,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(27,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(26,'com.android.launcher.permission.INSTALL_SHORTCUT'),(24,'com.android.launcher.permission.READ_SETTINGS'),(29,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(25,'com.android.launcher.permission.WRITE_SETTINGS');
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
INSERT INTO `Permissions` VALUES (24,'n'),(25,'n'),(26,'n'),(29,'n');
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
INSERT INTO `Providers` VALUES (1,37,0,NULL,'com.android.launcher.permission.WRITE_SETTINGS'),(2,40,0,NULL,'com.android.launcher.permission.WRITE_SETTINGS');
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
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,'package','',NULL,NULL,NULL,NULL),(3,'package','',NULL,NULL,NULL,NULL),(4,'package','',NULL,NULL,NULL,NULL),(5,'package','',NULL,NULL,NULL,NULL),(6,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(7,'package','',NULL,NULL,NULL,NULL),(8,'package','',NULL,NULL,NULL,NULL),(9,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(10,'package','',NULL,NULL,NULL,NULL),(11,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(12,'package','',NULL,NULL,NULL,NULL),(13,'package','',NULL,NULL,NULL,NULL),(14,'package','',NULL,NULL,NULL,NULL),(15,'package','',NULL,NULL,NULL,NULL),(16,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(17,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(18,'package','',NULL,NULL,NULL,NULL),(19,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(20,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(21,'package','',NULL,NULL,NULL,NULL),(22,'package','',NULL,NULL,NULL,NULL),(23,'package','',NULL,NULL,NULL,NULL),(24,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(25,'package','',NULL,NULL,NULL,NULL),(26,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(27,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(28,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(29,'package','',NULL,NULL,NULL,NULL),(30,'package','',NULL,NULL,NULL,NULL),(31,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(32,'package','',NULL,NULL,NULL,NULL),(33,'package','',NULL,NULL,NULL,NULL),(34,'package','',NULL,NULL,NULL,NULL),(35,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(36,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(37,'package','',NULL,NULL,NULL,NULL),(38,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(39,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(40,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(41,'package','',NULL,NULL,NULL,NULL),(42,'package','',NULL,NULL,NULL,NULL),(43,'package','',NULL,NULL,NULL,NULL),(44,'package','',NULL,NULL,NULL,NULL),(45,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(46,'package','',NULL,NULL,NULL,NULL),(47,'package','',NULL,NULL,NULL,NULL),(48,'package','',NULL,NULL,NULL,NULL),(49,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(50,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(51,'package','',NULL,NULL,NULL,NULL),(52,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(53,'package','',NULL,NULL,NULL,NULL),(54,'tel','(.*)',NULL,NULL,NULL,NULL),(55,'package','',NULL,NULL,NULL,NULL),(56,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(57,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(58,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(59,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(60,'package','',NULL,NULL,NULL,NULL),(61,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(62,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(63,NULL,NULL,'http://se.zxin.cc?prod=search&op=redirect&id=10&v=7&ky=(.*)',NULL,NULL,NULL),(64,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(65,NULL,NULL,'http://se.zxin.cc?prod=search&op=redirect&id=10&v=7&ky=NULL-CONSTANT',NULL,NULL,NULL),(66,'package','',NULL,NULL,NULL,NULL),(67,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(68,'package','',NULL,NULL,NULL,NULL),(69,'package','',NULL,NULL,NULL,NULL),(70,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(71,'package','',NULL,NULL,NULL,NULL),(72,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(73,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(74,'package','',NULL,NULL,NULL,NULL),(75,'package','',NULL,NULL,NULL,NULL),(76,'package','',NULL,NULL,NULL,NULL),(77,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(78,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(79,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(80,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(81,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(82,'package','',NULL,NULL,NULL,NULL),(83,'package','',NULL,NULL,NULL,NULL),(84,'package','',NULL,NULL,NULL,NULL),(85,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(86,'package','',NULL,NULL,NULL,NULL),(87,'package','',NULL,NULL,NULL,NULL),(88,'package','',NULL,NULL,NULL,NULL),(89,'package','',NULL,NULL,NULL,NULL),(90,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=false',NULL,NULL,NULL),(91,'package','',NULL,NULL,NULL,NULL),(92,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(93,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(94,'package','',NULL,NULL,NULL,NULL),(95,'package','',NULL,NULL,NULL,NULL),(96,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(97,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(98,'package','',NULL,NULL,NULL,NULL),(99,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(100,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(101,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(102,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=false',NULL,NULL,NULL),(103,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(104,'package','',NULL,NULL,NULL,NULL),(105,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(106,'package','',NULL,NULL,NULL,NULL),(107,'package','',NULL,NULL,NULL,NULL),(108,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(109,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(110,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(111,'package','',NULL,NULL,NULL,NULL),(112,'tel','(.*)',NULL,NULL,NULL,NULL),(113,'package','',NULL,NULL,NULL,NULL),(114,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(115,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(116,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(117,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(118,'package','',NULL,NULL,NULL,NULL),(119,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(120,'package','',NULL,NULL,NULL,NULL),(121,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(122,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(123,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(124,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(125,'package','',NULL,NULL,NULL,NULL),(126,'package','',NULL,NULL,NULL,NULL),(127,'package','',NULL,NULL,NULL,NULL),(128,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(129,'package','',NULL,NULL,NULL,NULL),(130,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(131,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(132,'package','',NULL,NULL,NULL,NULL),(133,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=(.*)',NULL,NULL,NULL),(134,'package','',NULL,NULL,NULL,NULL),(135,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=NULL-CONSTANT',NULL,NULL,NULL),(136,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(137,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(138,'package','',NULL,NULL,NULL,NULL),(139,'package','',NULL,NULL,NULL,NULL),(140,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(141,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(142,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(143,'package','',NULL,NULL,NULL,NULL),(144,'package','',NULL,NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,19,9),(2,35,17),(3,39,19),(4,41,20),(5,46,24),(6,49,26),(7,50,27),(8,52,28),(9,58,31),(10,61,35),(11,64,38),(12,68,39),(13,79,49),(14,81,50),(15,89,56),(16,95,58),(17,97,61),(18,99,62),(19,105,64),(20,112,70),(21,114,72),(22,119,73),(23,123,77),(24,126,80),(25,140,90),(26,140,92),(27,143,93),(28,146,96),(29,148,97),(30,149,99),(31,151,101),(32,153,102),(33,153,103),(34,156,105),(35,158,108),(36,159,109),(37,160,110),(38,169,114),(39,172,115),(40,175,116),(41,176,117),(42,177,119),(43,179,121),(44,183,122),(45,185,124),(46,192,131);
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
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,2,17),(3,1,2),(4,2,16),(5,1,3),(6,2,1),(7,1,4),(8,2,2),(9,1,5),(10,2,4),(11,1,6),(12,2,5),(13,1,7),(14,2,6),(15,1,8),(16,2,7),(17,1,9),(18,2,10),(19,1,10),(20,2,12),(21,1,11),(22,2,14),(23,1,12),(24,2,15),(25,3,1),(26,1,13),(27,3,2),(28,3,3),(29,3,4),(30,3,5),(31,3,6),(32,3,7),(33,3,8),(34,3,9),(35,3,10),(36,3,11),(37,3,12),(38,3,13),(39,4,1),(40,4,2),(41,4,4),(42,4,5),(43,4,6),(44,5,1),(45,4,7),(46,5,2),(47,4,9),(48,5,3),(49,4,10),(50,5,4),(51,4,12),(52,5,5),(53,4,14),(54,5,6),(55,4,15),(56,5,7),(57,4,17),(58,5,9),(59,4,16),(60,5,10),(61,4,19),(62,5,12),(63,4,18),(64,5,14),(65,4,21),(66,5,15),(67,4,20),(68,5,17),(69,4,23),(70,5,16),(71,4,22),(72,5,19),(73,4,25),(74,5,18),(75,4,24),(76,5,21),(77,5,20),(78,5,23),(79,5,22),(80,6,1),(81,5,25),(82,6,2),(83,5,24),(84,6,3),(85,6,4),(86,6,5),(87,6,6),(88,6,7),(89,6,8),(90,6,9),(91,6,10),(92,6,11),(93,6,12),(94,6,13),(95,6,27),(96,6,28),(97,7,1),(98,7,2),(99,7,3),(100,7,4),(101,7,5),(102,7,6),(103,7,7),(104,7,8),(105,7,9),(106,7,10),(107,7,11),(108,7,12),(109,7,13),(110,7,27),(111,7,28);
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

-- Dump completed on 2015-10-09  0:39:59
