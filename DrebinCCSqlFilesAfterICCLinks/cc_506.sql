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
) ENGINE=InnoDB AUTO_INCREMENT=4419 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,30,6,2,NULL),(2,30,12,2,NULL),(3,30,32,2,NULL),(4,30,44,2,NULL),(5,141,8,2,NULL),(6,141,14,2,NULL),(7,141,36,2,NULL),(8,141,46,2,NULL),(9,147,8,2,NULL),(10,147,14,2,NULL),(11,147,36,2,NULL),(12,147,46,2,NULL),(13,159,8,2,NULL),(14,159,14,2,NULL),(15,159,36,2,NULL),(16,159,46,2,NULL),(17,164,8,2,NULL),(18,164,14,2,NULL),(19,164,36,2,NULL),(20,164,46,2,NULL),(21,170,8,2,NULL),(22,170,14,2,NULL),(23,170,36,2,NULL),(24,170,46,2,NULL),(25,177,6,2,NULL),(26,177,12,2,NULL),(27,177,32,2,NULL),(28,177,44,2,NULL),(29,40,2,2,NULL),(30,80,2,2,NULL),(31,87,2,2,NULL),(32,90,2,2,NULL),(33,94,2,2,NULL),(34,97,2,2,NULL),(35,100,2,2,NULL),(36,138,2,2,NULL),(37,144,2,2,NULL),(38,150,2,2,NULL),(39,153,2,2,NULL),(40,157,2,2,NULL),(41,25,10,2,NULL),(42,26,10,2,NULL),(43,28,10,2,NULL),(44,29,10,2,NULL),(45,31,10,2,NULL),(46,42,10,2,NULL),(47,99,10,2,NULL),(48,169,10,2,NULL),(49,179,10,2,NULL),(50,188,10,2,NULL),(51,192,10,2,NULL),(52,194,10,2,NULL),(53,107,10,2,NULL),(54,40,8,2,NULL),(55,80,8,2,NULL),(56,87,8,2,NULL),(57,90,8,2,NULL),(58,94,8,2,NULL),(59,97,8,2,NULL),(60,100,8,2,NULL),(61,138,8,2,NULL),(62,144,8,2,NULL),(63,150,8,2,NULL),(64,153,8,2,NULL),(65,157,8,2,NULL),(66,40,13,2,NULL),(67,80,13,2,NULL),(68,87,13,2,NULL),(69,90,13,2,NULL),(70,94,13,2,NULL),(71,97,13,2,NULL),(72,100,13,2,NULL),(73,138,13,2,NULL),(74,144,13,2,NULL),(75,150,13,2,NULL),(76,153,13,2,NULL),(77,157,13,2,NULL),(78,40,15,2,NULL),(79,80,15,2,NULL),(80,87,15,2,NULL),(81,90,15,2,NULL),(82,94,15,2,NULL),(83,97,15,2,NULL),(84,100,15,2,NULL),(85,138,15,2,NULL),(86,144,15,2,NULL),(87,150,15,2,NULL),(88,153,15,2,NULL),(89,157,15,2,NULL),(90,40,54,2,NULL),(91,80,54,2,NULL),(92,87,54,2,NULL),(93,90,54,2,NULL),(94,94,54,2,NULL),(95,97,54,2,NULL),(96,100,54,2,NULL),(97,138,54,2,NULL),(98,144,54,2,NULL),(99,150,54,2,NULL),(100,153,54,2,NULL),(101,157,54,2,NULL),(102,40,55,2,NULL),(103,80,55,2,NULL),(104,87,55,2,NULL),(105,90,55,2,NULL),(106,94,55,2,NULL),(107,97,55,2,NULL),(108,100,55,2,NULL),(109,138,55,2,NULL),(110,144,55,2,NULL),(111,150,55,2,NULL),(112,153,55,2,NULL),(113,157,55,2,NULL),(114,40,60,2,NULL),(115,80,60,2,NULL),(116,87,60,2,NULL),(117,90,60,2,NULL),(118,94,60,2,NULL),(119,97,60,2,NULL),(120,100,60,2,NULL),(121,138,60,2,NULL),(122,144,60,2,NULL),(123,150,60,2,NULL),(124,153,60,2,NULL),(125,157,60,2,NULL),(126,40,79,2,NULL),(127,80,79,2,NULL),(128,87,79,2,NULL),(129,90,79,2,NULL),(130,94,79,2,NULL),(131,97,79,2,NULL),(132,100,79,2,NULL),(133,138,79,2,NULL),(134,144,79,2,NULL),(135,150,79,2,NULL),(136,153,79,2,NULL),(137,157,79,2,NULL),(138,2,10,2,NULL),(139,3,10,2,NULL),(140,4,10,2,NULL),(141,5,10,2,NULL),(142,6,10,2,NULL),(143,7,10,2,NULL),(144,8,10,2,NULL),(145,9,10,2,NULL),(146,40,3,2,NULL),(147,80,3,2,NULL),(148,87,3,2,NULL),(149,90,3,2,NULL),(150,94,3,2,NULL),(151,97,3,2,NULL),(152,100,3,2,NULL),(153,138,3,2,NULL),(154,144,3,2,NULL),(155,150,3,2,NULL),(156,153,3,2,NULL),(157,157,3,2,NULL),(158,40,9,2,NULL),(159,80,9,2,NULL),(160,87,9,2,NULL),(161,90,9,2,NULL),(162,94,9,2,NULL),(163,97,9,2,NULL),(164,100,9,2,NULL),(165,138,9,2,NULL),(166,144,9,2,NULL),(167,150,9,2,NULL),(168,153,9,2,NULL),(169,157,9,2,NULL),(170,40,49,2,NULL),(171,80,49,2,NULL),(172,87,49,2,NULL),(173,90,49,2,NULL),(174,94,49,2,NULL),(175,97,49,2,NULL),(176,100,49,2,NULL),(177,138,49,2,NULL),(178,144,49,2,NULL),(179,150,49,2,NULL),(180,153,49,2,NULL),(181,157,49,2,NULL),(182,40,50,2,NULL),(183,80,50,2,NULL),(184,87,50,2,NULL),(185,90,50,2,NULL),(186,94,50,2,NULL),(187,97,50,2,NULL),(188,100,50,2,NULL),(189,138,50,2,NULL),(190,144,50,2,NULL),(191,150,50,2,NULL),(192,153,50,2,NULL),(193,157,50,2,NULL),(194,40,51,2,NULL),(195,35,6,2,NULL),(196,80,51,2,NULL),(197,35,12,2,NULL),(198,87,51,2,NULL),(199,96,6,2,NULL),(200,35,32,2,NULL),(201,90,51,2,NULL),(202,94,51,2,NULL),(203,96,12,2,NULL),(204,35,44,2,NULL),(205,97,51,2,NULL),(206,96,32,2,NULL),(207,146,6,2,NULL),(208,100,51,2,NULL),(209,146,12,2,NULL),(210,96,44,2,NULL),(211,138,51,2,NULL),(212,146,32,2,NULL),(213,144,51,2,NULL),(214,127,6,2,NULL),(215,146,44,2,NULL),(216,150,51,2,NULL),(217,127,12,2,NULL),(218,163,8,2,NULL),(219,153,51,2,NULL),(220,127,32,2,NULL),(221,163,14,2,NULL),(222,157,51,2,NULL),(223,127,44,2,NULL),(224,40,52,2,NULL),(225,163,36,2,NULL),(226,165,8,2,NULL),(227,80,52,2,NULL),(228,163,46,2,NULL),(229,165,14,2,NULL),(230,87,52,2,NULL),(231,175,8,2,NULL),(232,165,36,2,NULL),(233,90,52,2,NULL),(234,175,14,2,NULL),(235,94,52,2,NULL),(236,165,46,2,NULL),(237,175,36,2,NULL),(238,97,52,2,NULL),(239,176,8,2,NULL),(240,175,46,2,NULL),(241,100,52,2,NULL),(242,176,14,2,NULL),(243,138,52,2,NULL),(244,184,8,2,NULL),(245,176,36,2,NULL),(246,144,52,2,NULL),(247,184,14,2,NULL),(248,176,46,2,NULL),(249,150,52,2,NULL),(250,184,36,2,NULL),(251,181,8,2,NULL),(252,153,52,2,NULL),(253,184,46,2,NULL),(254,157,52,2,NULL),(255,181,14,2,NULL),(256,198,8,2,NULL),(257,40,53,2,NULL),(258,198,14,2,NULL),(259,181,36,2,NULL),(260,80,53,2,NULL),(261,181,46,2,NULL),(262,198,36,2,NULL),(263,87,53,2,NULL),(264,186,8,2,NULL),(265,90,53,2,NULL),(266,198,46,2,NULL),(267,186,14,2,NULL),(268,94,53,2,NULL),(269,202,8,2,NULL),(270,186,36,2,NULL),(271,97,53,2,NULL),(272,202,14,2,NULL),(273,186,46,2,NULL),(274,100,53,2,NULL),(275,202,36,2,NULL),(276,191,8,2,NULL),(277,138,53,2,NULL),(278,202,46,2,NULL),(279,144,53,2,NULL),(280,191,14,2,NULL),(281,107,2,2,NULL),(282,150,53,2,NULL),(283,191,36,2,NULL),(284,153,53,2,NULL),(285,25,8,2,NULL),(286,191,46,2,NULL),(287,157,53,2,NULL),(288,26,8,2,NULL),(289,118,2,2,NULL),(290,193,10,2,NULL),(291,28,8,2,NULL),(292,152,2,2,NULL),(293,40,14,2,NULL),(294,29,8,2,NULL),(295,154,2,2,NULL),(296,80,14,2,NULL),(297,31,8,2,NULL),(298,158,2,2,NULL),(299,87,14,2,NULL),(300,42,8,2,NULL),(301,160,2,2,NULL),(302,90,14,2,NULL),(303,99,8,2,NULL),(304,171,2,2,NULL),(305,94,14,2,NULL),(306,169,8,2,NULL),(307,207,2,2,NULL),(308,97,14,2,NULL),(309,179,8,2,NULL),(310,229,2,2,NULL),(311,100,14,2,NULL),(312,188,8,2,NULL),(313,230,2,2,NULL),(314,138,14,2,NULL),(315,192,8,2,NULL),(316,232,2,2,NULL),(317,194,8,2,NULL),(318,144,14,2,NULL),(319,234,2,2,NULL),(320,150,14,2,NULL),(321,25,13,2,NULL),(322,236,2,2,NULL),(323,153,14,2,NULL),(324,26,13,2,NULL),(325,25,42,2,NULL),(326,157,14,2,NULL),(327,28,13,2,NULL),(328,26,42,2,NULL),(329,101,22,2,NULL),(330,40,16,2,NULL),(331,29,13,2,NULL),(332,28,42,2,NULL),(333,80,16,2,NULL),(334,101,23,2,NULL),(335,31,13,2,NULL),(336,29,42,2,NULL),(337,87,16,2,NULL),(338,42,13,2,NULL),(339,31,42,2,NULL),(340,89,2,2,NULL),(341,90,16,2,NULL),(342,99,13,2,NULL),(343,42,42,2,NULL),(344,94,16,2,NULL),(345,169,13,2,NULL),(346,167,2,2,NULL),(347,99,42,2,NULL),(348,97,16,2,NULL),(349,179,13,2,NULL),(350,169,42,2,NULL),(351,173,2,2,NULL),(352,100,16,2,NULL),(353,188,13,2,NULL),(354,179,42,2,NULL),(355,138,16,2,NULL),(356,192,13,2,NULL),(357,174,2,2,NULL),(358,188,42,2,NULL),(359,144,16,2,NULL),(360,194,13,2,NULL),(361,192,42,2,NULL),(362,178,2,2,NULL),(363,150,16,2,NULL),(364,25,15,2,NULL),(365,194,42,2,NULL),(366,153,16,2,NULL),(367,26,15,2,NULL),(368,180,2,2,NULL),(369,107,42,2,NULL),(370,157,16,2,NULL),(371,28,15,2,NULL),(372,118,8,2,NULL),(373,183,2,2,NULL),(374,40,17,2,NULL),(375,29,15,2,NULL),(376,152,8,2,NULL),(377,187,2,2,NULL),(378,80,17,2,NULL),(379,31,15,2,NULL),(380,154,8,2,NULL),(381,87,17,2,NULL),(382,42,15,2,NULL),(383,190,2,2,NULL),(384,158,8,2,NULL),(385,90,17,2,NULL),(386,99,15,2,NULL),(387,160,8,2,NULL),(388,25,19,2,NULL),(389,94,17,2,NULL),(390,169,15,2,NULL),(391,171,8,2,NULL),(392,97,17,2,NULL),(393,179,15,2,NULL),(394,26,19,2,NULL),(395,207,8,2,NULL),(396,100,17,2,NULL),(397,188,15,2,NULL),(398,28,19,2,NULL),(399,229,8,2,NULL),(400,138,17,2,NULL),(401,192,15,2,NULL),(402,230,8,2,NULL),(403,29,19,2,NULL),(404,144,17,2,NULL),(405,194,15,2,NULL),(406,232,8,2,NULL),(407,150,17,2,NULL),(408,25,54,2,NULL),(409,31,19,2,NULL),(410,234,8,2,NULL),(411,153,17,2,NULL),(412,26,54,2,NULL),(413,42,19,2,NULL),(414,236,8,2,NULL),(415,157,17,2,NULL),(416,28,54,2,NULL),(417,99,19,2,NULL),(418,118,13,2,NULL),(419,40,56,2,NULL),(420,29,54,2,NULL),(421,169,19,2,NULL),(422,152,13,2,NULL),(423,80,56,2,NULL),(424,31,54,2,NULL),(425,154,13,2,NULL),(426,179,19,2,NULL),(427,87,56,2,NULL),(428,42,54,2,NULL),(429,158,13,2,NULL),(430,90,56,2,NULL),(431,99,54,2,NULL),(432,188,19,2,NULL),(433,160,13,2,NULL),(434,94,56,2,NULL),(435,169,54,2,NULL),(436,171,13,2,NULL),(437,192,19,2,NULL),(438,97,56,2,NULL),(439,179,54,2,NULL),(440,207,13,2,NULL),(441,100,56,2,NULL),(442,188,54,2,NULL),(443,194,19,2,NULL),(444,229,13,2,NULL),(445,138,56,2,NULL),(446,192,54,2,NULL),(447,107,19,2,NULL),(448,230,13,2,NULL),(449,144,56,2,NULL),(450,194,54,2,NULL),(451,232,13,2,NULL),(452,89,8,2,NULL),(453,150,56,2,NULL),(454,25,55,2,NULL),(455,234,13,2,NULL),(456,167,8,2,NULL),(457,153,56,2,NULL),(458,26,55,2,NULL),(459,236,13,2,NULL),(460,157,56,2,NULL),(461,28,55,2,NULL),(462,173,8,2,NULL),(463,118,15,2,NULL),(464,40,58,2,NULL),(465,29,55,2,NULL),(466,152,15,2,NULL),(467,174,8,2,NULL),(468,80,58,2,NULL),(469,31,55,2,NULL),(470,154,15,2,NULL),(471,87,58,2,NULL),(472,42,55,2,NULL),(473,178,8,2,NULL),(474,158,15,2,NULL),(475,90,58,2,NULL),(476,99,55,2,NULL),(477,180,8,2,NULL),(478,160,15,2,NULL),(479,94,58,2,NULL),(480,169,55,2,NULL),(481,183,8,2,NULL),(482,171,15,2,NULL),(483,97,58,2,NULL),(484,179,55,2,NULL),(485,207,15,2,NULL),(486,187,8,2,NULL),(487,100,58,2,NULL),(488,188,55,2,NULL),(489,229,15,2,NULL),(490,138,58,2,NULL),(491,192,55,2,NULL),(492,190,8,2,NULL),(493,230,15,2,NULL),(494,144,58,2,NULL),(495,194,55,2,NULL),(496,89,13,2,NULL),(497,232,15,2,NULL),(498,25,60,2,NULL),(499,150,58,2,NULL),(500,167,13,2,NULL),(501,234,15,2,NULL),(502,153,58,2,NULL),(503,26,60,2,NULL),(504,173,13,2,NULL),(505,236,15,2,NULL),(506,157,58,2,NULL),(507,28,60,2,NULL),(508,174,13,2,NULL),(509,118,54,2,NULL),(510,40,59,2,NULL),(511,29,60,2,NULL),(512,178,13,2,NULL),(513,152,54,2,NULL),(514,80,59,2,NULL),(515,31,60,2,NULL),(516,180,13,2,NULL),(517,154,54,2,NULL),(518,87,59,2,NULL),(519,42,60,2,NULL),(520,183,13,2,NULL),(521,158,54,2,NULL),(522,90,59,2,NULL),(523,99,60,2,NULL),(524,187,13,2,NULL),(525,160,54,2,NULL),(526,94,59,2,NULL),(527,169,60,2,NULL),(528,190,13,2,NULL),(529,171,54,2,NULL),(530,97,59,2,NULL),(531,179,60,2,NULL),(532,89,15,2,NULL),(533,207,54,2,NULL),(534,100,59,2,NULL),(535,188,60,2,NULL),(536,167,15,2,NULL),(537,229,54,2,NULL),(538,138,59,2,NULL),(539,192,60,2,NULL),(540,173,15,2,NULL),(541,230,54,2,NULL),(542,144,59,2,NULL),(543,194,60,2,NULL),(544,174,15,2,NULL),(545,232,54,2,NULL),(546,150,59,2,NULL),(547,25,79,2,NULL),(548,178,15,2,NULL),(549,234,54,2,NULL),(550,153,59,2,NULL),(551,26,79,2,NULL),(552,180,15,2,NULL),(553,236,54,2,NULL),(554,157,59,2,NULL),(555,28,79,2,NULL),(556,183,15,2,NULL),(557,118,55,2,NULL),(558,40,92,2,NULL),(559,29,79,2,NULL),(560,187,15,2,NULL),(561,152,55,2,NULL),(562,80,92,2,NULL),(563,31,79,2,NULL),(564,190,15,2,NULL),(565,154,55,2,NULL),(566,87,92,2,NULL),(567,42,79,2,NULL),(568,89,54,2,NULL),(569,158,55,2,NULL),(570,90,92,2,NULL),(571,99,79,2,NULL),(572,167,54,2,NULL),(573,160,55,2,NULL),(574,94,92,2,NULL),(575,169,79,2,NULL),(576,173,54,2,NULL),(577,171,55,2,NULL),(578,97,92,2,NULL),(579,179,79,2,NULL),(580,174,54,2,NULL),(581,207,55,2,NULL),(582,100,92,2,NULL),(583,188,79,2,NULL),(584,178,54,2,NULL),(585,229,55,2,NULL),(586,138,92,2,NULL),(587,192,79,2,NULL),(588,180,54,2,NULL),(589,230,55,2,NULL),(590,144,92,2,NULL),(591,194,79,2,NULL),(592,183,54,2,NULL),(593,232,55,2,NULL),(594,150,92,2,NULL),(595,2,2,2,NULL),(596,187,54,2,NULL),(597,234,55,2,NULL),(598,153,92,2,NULL),(599,3,2,2,NULL),(600,190,54,2,NULL),(601,236,55,2,NULL),(602,157,92,2,NULL),(603,4,2,2,NULL),(604,89,55,2,NULL),(605,118,60,2,NULL),(606,40,19,2,NULL),(607,5,2,2,NULL),(608,167,55,2,NULL),(609,152,60,2,NULL),(610,80,19,2,NULL),(611,6,2,2,NULL),(612,173,55,2,NULL),(613,154,60,2,NULL),(614,87,19,2,NULL),(615,7,2,2,NULL),(616,174,55,2,NULL),(617,158,60,2,NULL),(618,90,19,2,NULL),(619,8,2,2,NULL),(620,178,55,2,NULL),(621,160,60,2,NULL),(622,94,19,2,NULL),(623,9,2,2,NULL),(624,180,55,2,NULL),(625,171,60,2,NULL),(626,97,19,2,NULL),(627,183,55,2,NULL),(628,25,3,2,NULL),(629,207,60,2,NULL),(630,100,19,2,NULL),(631,26,3,2,NULL),(632,187,55,2,NULL),(633,229,60,2,NULL),(634,138,19,2,NULL),(635,28,3,2,NULL),(636,190,55,2,NULL),(637,230,60,2,NULL),(638,144,19,2,NULL),(639,29,3,2,NULL),(640,89,60,2,NULL),(641,232,60,2,NULL),(642,150,19,2,NULL),(643,31,3,2,NULL),(644,167,60,2,NULL),(645,234,60,2,NULL),(646,153,19,2,NULL),(647,42,3,2,NULL),(648,173,60,2,NULL),(649,236,60,2,NULL),(650,157,19,2,NULL),(651,99,3,2,NULL),(652,174,60,2,NULL),(653,118,79,2,NULL),(654,89,10,2,NULL),(655,169,3,2,NULL),(656,178,60,2,NULL),(657,167,10,2,NULL),(658,152,79,2,NULL),(659,179,3,2,NULL),(660,173,10,2,NULL),(661,154,79,2,NULL),(662,180,60,2,NULL),(663,188,3,2,NULL),(664,158,79,2,NULL),(665,174,10,2,NULL),(666,183,60,2,NULL),(667,192,3,2,NULL),(668,178,10,2,NULL),(669,160,79,2,NULL),(670,187,60,2,NULL),(671,194,3,2,NULL),(672,180,10,2,NULL),(673,190,60,2,NULL),(674,171,79,2,NULL),(675,25,9,2,NULL),(676,183,10,2,NULL),(677,89,79,2,NULL),(678,207,79,2,NULL),(679,26,9,2,NULL),(680,187,10,2,NULL),(681,229,79,2,NULL),(682,167,79,2,NULL),(683,28,9,2,NULL),(684,190,10,2,NULL),(685,230,79,2,NULL),(686,173,79,2,NULL),(687,29,9,2,NULL),(688,40,21,2,NULL),(689,232,79,2,NULL),(690,174,79,2,NULL),(691,31,9,2,NULL),(692,80,21,2,NULL),(693,234,79,2,NULL),(694,178,79,2,NULL),(695,42,9,2,NULL),(696,87,21,2,NULL),(697,236,79,2,NULL),(698,180,79,2,NULL),(699,99,9,2,NULL),(700,90,21,2,NULL),(701,183,79,2,NULL),(702,2,42,2,NULL),(703,169,9,2,NULL),(704,94,21,2,NULL),(705,3,42,2,NULL),(706,187,79,2,NULL),(707,179,9,2,NULL),(708,97,21,2,NULL),(709,4,42,2,NULL),(710,190,79,2,NULL),(711,188,9,2,NULL),(712,100,21,2,NULL),(713,5,42,2,NULL),(714,2,19,2,NULL),(715,192,9,2,NULL),(716,138,21,2,NULL),(717,6,42,2,NULL),(718,3,19,2,NULL),(719,194,9,2,NULL),(720,144,21,2,NULL),(721,7,42,2,NULL),(722,4,19,2,NULL),(723,25,49,2,NULL),(724,150,21,2,NULL),(725,8,42,2,NULL),(726,5,19,2,NULL),(727,26,49,2,NULL),(728,153,21,2,NULL),(729,9,42,2,NULL),(730,6,19,2,NULL),(731,28,49,2,NULL),(732,157,21,2,NULL),(733,118,3,2,NULL),(734,7,19,2,NULL),(735,29,49,2,NULL),(736,40,27,2,NULL),(737,152,3,2,NULL),(738,8,19,2,NULL),(739,31,49,2,NULL),(740,80,27,2,NULL),(741,9,19,2,NULL),(742,154,3,2,NULL),(743,42,49,2,NULL),(744,87,27,2,NULL),(745,89,3,2,NULL),(746,158,3,2,NULL),(747,99,49,2,NULL),(748,90,27,2,NULL),(749,160,3,2,NULL),(750,167,3,2,NULL),(751,169,49,2,NULL),(752,94,27,2,NULL),(753,171,3,2,NULL),(754,173,3,2,NULL),(755,179,49,2,NULL),(756,97,27,2,NULL),(757,207,3,2,NULL),(758,174,3,2,NULL),(759,188,49,2,NULL),(760,100,27,2,NULL),(761,229,3,2,NULL),(762,178,3,2,NULL),(763,192,49,2,NULL),(764,138,27,2,NULL),(765,230,3,2,NULL),(766,180,3,2,NULL),(767,194,49,2,NULL),(768,144,27,2,NULL),(769,183,3,2,NULL),(770,232,3,2,NULL),(771,25,50,2,NULL),(772,150,27,2,NULL),(773,187,3,2,NULL),(774,234,3,2,NULL),(775,26,50,2,NULL),(776,153,27,2,NULL),(777,236,3,2,NULL),(778,190,3,2,NULL),(779,28,50,2,NULL),(780,157,27,2,NULL),(781,118,9,2,NULL),(782,89,9,2,NULL),(783,29,50,2,NULL),(784,40,33,2,NULL),(785,152,9,2,NULL),(786,167,9,2,NULL),(787,31,50,2,NULL),(788,80,33,2,NULL),(789,154,9,2,NULL),(790,173,9,2,NULL),(791,42,50,2,NULL),(792,87,33,2,NULL),(793,158,9,2,NULL),(794,174,9,2,NULL),(795,99,50,2,NULL),(796,90,33,2,NULL),(797,160,9,2,NULL),(798,178,9,2,NULL),(799,169,50,2,NULL),(800,94,33,2,NULL),(801,171,9,2,NULL),(802,180,9,2,NULL),(803,179,50,2,NULL),(804,97,33,2,NULL),(805,207,9,2,NULL),(806,183,9,2,NULL),(807,188,50,2,NULL),(808,100,33,2,NULL),(809,229,9,2,NULL),(810,187,9,2,NULL),(811,192,50,2,NULL),(812,138,33,2,NULL),(813,230,9,2,NULL),(814,190,9,2,NULL),(815,194,50,2,NULL),(816,144,33,2,NULL),(817,232,9,2,NULL),(818,89,49,2,NULL),(819,25,51,2,NULL),(820,150,33,2,NULL),(821,234,9,2,NULL),(822,167,49,2,NULL),(823,26,51,2,NULL),(824,153,33,2,NULL),(825,173,49,2,NULL),(826,236,9,2,NULL),(827,28,51,2,NULL),(828,157,33,2,NULL),(829,174,49,2,NULL),(830,118,49,2,NULL),(831,29,51,2,NULL),(832,40,84,2,NULL),(833,152,49,2,NULL),(834,178,49,2,NULL),(835,31,51,2,NULL),(836,80,84,2,NULL),(837,154,49,2,NULL),(838,180,49,2,NULL),(839,42,51,2,NULL),(840,87,84,2,NULL),(841,158,49,2,NULL),(842,183,49,2,NULL),(843,99,51,2,NULL),(844,90,84,2,NULL),(845,160,49,2,NULL),(846,187,49,2,NULL),(847,169,51,2,NULL),(848,94,84,2,NULL),(849,171,49,2,NULL),(850,190,49,2,NULL),(851,179,51,2,NULL),(852,97,84,2,NULL),(853,207,49,2,NULL),(854,89,50,2,NULL),(855,188,51,2,NULL),(856,100,84,2,NULL),(857,229,49,2,NULL),(858,167,50,2,NULL),(859,192,51,2,NULL),(860,138,84,2,NULL),(861,230,49,2,NULL),(862,173,50,2,NULL),(863,194,51,2,NULL),(864,144,84,2,NULL),(865,174,50,2,NULL),(866,232,49,2,NULL),(867,25,52,2,NULL),(868,150,84,2,NULL),(869,234,49,2,NULL),(870,178,50,2,NULL),(871,26,52,2,NULL),(872,153,84,2,NULL),(873,236,49,2,NULL),(874,180,50,2,NULL),(875,28,52,2,NULL),(876,157,84,2,NULL),(877,118,50,2,NULL),(878,183,50,2,NULL),(879,29,52,2,NULL),(880,40,85,2,NULL),(881,152,50,2,NULL),(882,187,50,2,NULL),(883,31,52,2,NULL),(884,80,85,2,NULL),(885,154,50,2,NULL),(886,190,50,2,NULL),(887,42,52,2,NULL),(888,87,85,2,NULL),(889,158,50,2,NULL),(890,89,51,2,NULL),(891,99,52,2,NULL),(892,90,85,2,NULL),(893,160,50,2,NULL),(894,167,51,2,NULL),(895,169,52,2,NULL),(896,94,85,2,NULL),(897,171,50,2,NULL),(898,173,51,2,NULL),(899,179,52,2,NULL),(900,97,85,2,NULL),(901,207,50,2,NULL),(902,174,51,2,NULL),(903,188,52,2,NULL),(904,100,85,2,NULL),(905,229,50,2,NULL),(906,178,51,2,NULL),(907,192,52,2,NULL),(908,138,85,2,NULL),(909,230,50,2,NULL),(910,180,51,2,NULL),(911,194,52,2,NULL),(912,144,85,2,NULL),(913,232,50,2,NULL),(914,183,51,2,NULL),(915,25,53,2,NULL),(916,150,85,2,NULL),(917,234,50,2,NULL),(918,187,51,2,NULL),(919,26,53,2,NULL),(920,153,85,2,NULL),(921,236,50,2,NULL),(922,190,51,2,NULL),(923,28,53,2,NULL),(924,157,85,2,NULL),(925,118,51,2,NULL),(926,89,52,2,NULL),(927,29,53,2,NULL),(928,40,86,2,NULL),(929,152,51,2,NULL),(930,167,52,2,NULL),(931,31,53,2,NULL),(932,80,86,2,NULL),(933,154,51,2,NULL),(934,173,52,2,NULL),(935,42,53,2,NULL),(936,87,86,2,NULL),(937,158,51,2,NULL),(938,174,52,2,NULL),(939,99,53,2,NULL),(940,90,86,2,NULL),(941,160,51,2,NULL),(942,178,52,2,NULL),(943,169,53,2,NULL),(944,94,86,2,NULL),(945,180,52,2,NULL),(946,171,51,2,NULL),(947,179,53,2,NULL),(948,97,86,2,NULL),(949,183,52,2,NULL),(950,207,51,2,NULL),(951,188,53,2,NULL),(952,100,86,2,NULL),(953,229,51,2,NULL),(954,187,52,2,NULL),(955,192,53,2,NULL),(956,138,86,2,NULL),(957,230,51,2,NULL),(958,190,52,2,NULL),(959,194,53,2,NULL),(960,144,86,2,NULL),(961,232,51,2,NULL),(962,89,53,2,NULL),(963,150,86,2,NULL),(964,234,51,2,NULL),(965,167,53,2,NULL),(966,193,2,2,NULL),(967,153,86,2,NULL),(968,25,14,2,NULL),(969,236,51,2,NULL),(970,173,53,2,NULL),(971,157,86,2,NULL),(972,174,53,2,NULL),(973,118,52,2,NULL),(974,26,14,2,NULL),(975,40,18,2,NULL),(976,28,14,2,NULL),(977,152,52,2,NULL),(978,178,53,2,NULL),(979,80,18,2,NULL),(980,29,14,2,NULL),(981,154,52,2,NULL),(982,180,53,2,NULL),(983,87,18,2,NULL),(984,31,14,2,NULL),(985,183,53,2,NULL),(986,158,52,2,NULL),(987,90,18,2,NULL),(988,42,14,2,NULL),(989,160,52,2,NULL),(990,187,53,2,NULL),(991,190,53,2,NULL),(992,99,14,2,NULL),(993,171,52,2,NULL),(994,169,14,2,NULL),(995,207,52,2,NULL),(996,193,19,2,NULL),(997,94,18,2,NULL),(998,179,14,2,NULL),(999,97,18,2,NULL),(1000,229,52,2,NULL),(1001,89,14,2,NULL),(1002,188,14,2,NULL),(1003,100,18,2,NULL),(1004,230,52,2,NULL),(1005,167,14,2,NULL),(1006,192,14,2,NULL),(1007,138,18,2,NULL),(1008,232,52,2,NULL),(1009,173,14,2,NULL),(1010,194,14,2,NULL),(1011,144,18,2,NULL),(1012,174,14,2,NULL),(1013,234,52,2,NULL),(1014,25,16,2,NULL),(1015,150,18,2,NULL),(1016,236,52,2,NULL),(1017,178,14,2,NULL),(1018,26,16,2,NULL),(1019,153,18,2,NULL),(1020,180,14,2,NULL),(1021,118,53,2,NULL),(1022,28,16,2,NULL),(1023,157,18,2,NULL),(1024,152,53,2,NULL),(1025,183,14,2,NULL),(1026,29,16,2,NULL),(1027,61,10,2,NULL),(1028,154,53,2,NULL),(1029,187,14,2,NULL),(1030,31,16,2,NULL),(1031,65,10,2,NULL),(1032,190,14,2,NULL),(1033,158,53,2,NULL),(1034,42,16,2,NULL),(1035,66,10,2,NULL),(1036,160,53,2,NULL),(1037,89,16,2,NULL),(1038,99,16,2,NULL),(1039,69,10,2,NULL),(1040,167,16,2,NULL),(1041,171,53,2,NULL),(1042,169,16,2,NULL),(1043,70,10,2,NULL),(1044,173,16,2,NULL),(1045,207,53,2,NULL),(1046,179,16,2,NULL),(1047,75,10,2,NULL),(1048,174,16,2,NULL),(1049,229,53,2,NULL),(1050,188,16,2,NULL),(1051,76,10,2,NULL),(1052,178,16,2,NULL),(1053,230,53,2,NULL),(1054,192,16,2,NULL),(1055,82,10,2,NULL),(1056,180,16,2,NULL),(1057,232,53,2,NULL),(1058,194,16,2,NULL),(1059,166,10,2,NULL),(1060,183,16,2,NULL),(1061,234,53,2,NULL),(1062,25,17,2,NULL),(1063,40,20,2,NULL),(1064,187,16,2,NULL),(1065,236,53,2,NULL),(1066,26,17,2,NULL),(1067,80,20,2,NULL),(1068,190,16,2,NULL),(1069,118,10,2,NULL),(1070,28,17,2,NULL),(1071,87,20,2,NULL),(1072,89,17,2,NULL),(1073,152,10,2,NULL),(1074,29,17,2,NULL),(1075,90,20,2,NULL),(1076,167,17,2,NULL),(1077,154,10,2,NULL),(1078,31,17,2,NULL),(1079,94,20,2,NULL),(1080,173,17,2,NULL),(1081,158,10,2,NULL),(1082,42,17,2,NULL),(1083,97,20,2,NULL),(1084,160,10,2,NULL),(1085,174,17,2,NULL),(1086,99,17,2,NULL),(1087,100,20,2,NULL),(1088,178,17,2,NULL),(1089,171,10,2,NULL),(1090,169,17,2,NULL),(1091,138,20,2,NULL),(1092,180,17,2,NULL),(1093,207,10,2,NULL),(1094,179,17,2,NULL),(1095,144,20,2,NULL),(1096,183,17,2,NULL),(1097,229,10,2,NULL),(1098,188,17,2,NULL),(1099,150,20,2,NULL),(1100,187,17,2,NULL),(1101,230,10,2,NULL),(1102,192,17,2,NULL),(1103,153,20,2,NULL),(1104,190,17,2,NULL),(1105,232,10,2,NULL),(1106,194,17,2,NULL),(1107,157,20,2,NULL),(1108,89,56,2,NULL),(1109,234,10,2,NULL),(1110,25,56,2,NULL),(1111,40,31,2,NULL),(1112,236,10,2,NULL),(1113,167,56,2,NULL),(1114,26,56,2,NULL),(1115,80,31,2,NULL),(1116,173,56,2,NULL),(1117,40,42,2,NULL),(1118,28,56,2,NULL),(1119,87,31,2,NULL),(1120,174,56,2,NULL),(1121,80,42,2,NULL),(1122,29,56,2,NULL),(1123,90,31,2,NULL),(1124,178,56,2,NULL),(1125,87,42,2,NULL),(1126,31,56,2,NULL),(1127,94,31,2,NULL),(1128,90,42,2,NULL),(1129,180,56,2,NULL),(1130,42,56,2,NULL),(1131,97,31,2,NULL),(1132,183,56,2,NULL),(1133,94,42,2,NULL),(1134,99,56,2,NULL),(1135,100,31,2,NULL),(1136,97,42,2,NULL),(1137,187,56,2,NULL),(1138,169,56,2,NULL),(1139,138,31,2,NULL),(1140,100,42,2,NULL),(1141,190,56,2,NULL),(1142,179,56,2,NULL),(1143,144,31,2,NULL),(1144,138,42,2,NULL),(1145,89,58,2,NULL),(1146,188,56,2,NULL),(1147,150,31,2,NULL),(1148,144,42,2,NULL),(1149,167,58,2,NULL),(1150,192,56,2,NULL),(1151,153,31,2,NULL),(1152,150,42,2,NULL),(1153,173,58,2,NULL),(1154,194,56,2,NULL),(1155,157,31,2,NULL),(1156,153,42,2,NULL),(1157,174,58,2,NULL),(1158,25,58,2,NULL),(1159,40,35,2,NULL),(1160,157,42,2,NULL),(1161,178,58,2,NULL),(1162,26,58,2,NULL),(1163,80,35,2,NULL),(1164,193,42,2,NULL),(1165,180,58,2,NULL),(1166,28,58,2,NULL),(1167,87,35,2,NULL),(1168,118,14,2,NULL),(1169,183,58,2,NULL),(1170,29,58,2,NULL),(1171,90,35,2,NULL),(1172,187,58,2,NULL),(1173,152,14,2,NULL),(1174,31,58,2,NULL),(1175,94,35,2,NULL),(1176,190,58,2,NULL),(1177,154,14,2,NULL),(1178,42,58,2,NULL),(1179,97,35,2,NULL),(1180,89,59,2,NULL),(1181,158,14,2,NULL),(1182,99,58,2,NULL),(1183,100,35,2,NULL),(1184,167,59,2,NULL),(1185,160,14,2,NULL),(1186,169,58,2,NULL),(1187,138,35,2,NULL),(1188,173,59,2,NULL),(1189,171,14,2,NULL),(1190,179,58,2,NULL),(1191,144,35,2,NULL),(1192,174,59,2,NULL),(1193,207,14,2,NULL),(1194,188,58,2,NULL),(1195,150,35,2,NULL),(1196,178,59,2,NULL),(1197,229,14,2,NULL),(1198,192,58,2,NULL),(1199,153,35,2,NULL),(1200,180,59,2,NULL),(1201,230,14,2,NULL),(1202,194,58,2,NULL),(1203,157,35,2,NULL),(1204,183,59,2,NULL),(1205,232,14,2,NULL),(1206,25,59,2,NULL),(1207,40,38,2,NULL),(1208,187,59,2,NULL),(1209,234,14,2,NULL),(1210,26,59,2,NULL),(1211,80,38,2,NULL),(1212,190,59,2,NULL),(1213,236,14,2,NULL),(1214,28,59,2,NULL),(1215,87,38,2,NULL),(1216,89,92,2,NULL),(1217,118,16,2,NULL),(1218,29,59,2,NULL),(1219,90,38,2,NULL),(1220,152,16,2,NULL),(1221,167,92,2,NULL),(1222,31,59,2,NULL),(1223,94,38,2,NULL),(1224,154,16,2,NULL),(1225,173,92,2,NULL),(1226,42,59,2,NULL),(1227,97,38,2,NULL),(1228,158,16,2,NULL),(1229,174,92,2,NULL),(1230,99,59,2,NULL),(1231,100,38,2,NULL),(1232,160,16,2,NULL),(1233,178,92,2,NULL),(1234,169,59,2,NULL),(1235,138,38,2,NULL),(1236,171,16,2,NULL),(1237,180,92,2,NULL),(1238,179,59,2,NULL),(1239,144,38,2,NULL),(1240,207,16,2,NULL),(1241,183,92,2,NULL),(1242,188,59,2,NULL),(1243,150,38,2,NULL),(1244,187,92,2,NULL),(1245,229,16,2,NULL),(1246,192,59,2,NULL),(1247,153,38,2,NULL),(1248,190,92,2,NULL),(1249,230,16,2,NULL),(1250,194,59,2,NULL),(1251,157,38,2,NULL),(1252,232,16,2,NULL),(1253,89,21,2,NULL),(1254,25,92,2,NULL),(1255,40,68,2,NULL),(1256,234,16,2,NULL),(1257,167,21,2,NULL),(1258,26,92,2,NULL),(1259,80,68,2,NULL),(1260,236,16,2,NULL),(1261,173,21,2,NULL),(1262,28,92,2,NULL),(1263,118,17,2,NULL),(1264,87,68,2,NULL),(1265,174,21,2,NULL),(1266,29,92,2,NULL),(1267,90,68,2,NULL),(1268,152,17,2,NULL),(1269,178,21,2,NULL),(1270,31,92,2,NULL),(1271,94,68,2,NULL),(1272,154,17,2,NULL),(1273,180,21,2,NULL),(1274,42,92,2,NULL),(1275,97,68,2,NULL),(1276,158,17,2,NULL),(1277,183,21,2,NULL),(1278,99,92,2,NULL),(1279,100,68,2,NULL),(1280,187,21,2,NULL),(1281,160,17,2,NULL),(1282,169,92,2,NULL),(1283,138,68,2,NULL),(1284,190,21,2,NULL),(1285,171,17,2,NULL),(1286,179,92,2,NULL),(1287,144,68,2,NULL),(1288,207,17,2,NULL),(1289,89,27,2,NULL),(1290,188,92,2,NULL),(1291,150,68,2,NULL),(1292,229,17,2,NULL),(1293,167,27,2,NULL),(1294,192,92,2,NULL),(1295,153,68,2,NULL),(1296,230,17,2,NULL),(1297,173,27,2,NULL),(1298,194,92,2,NULL),(1299,157,68,2,NULL),(1300,174,27,2,NULL),(1301,232,17,2,NULL),(1302,25,21,2,NULL),(1303,40,71,2,NULL),(1304,234,17,2,NULL),(1305,178,27,2,NULL),(1306,26,21,2,NULL),(1307,80,71,2,NULL),(1308,180,27,2,NULL),(1309,236,17,2,NULL),(1310,28,21,2,NULL),(1311,87,71,2,NULL),(1312,118,56,2,NULL),(1313,183,27,2,NULL),(1314,29,21,2,NULL),(1315,90,71,2,NULL),(1316,152,56,2,NULL),(1317,187,27,2,NULL),(1318,31,21,2,NULL),(1319,94,71,2,NULL),(1320,154,56,2,NULL),(1321,190,27,2,NULL),(1322,42,21,2,NULL),(1323,97,71,2,NULL),(1324,158,56,2,NULL),(1325,89,33,2,NULL),(1326,99,21,2,NULL),(1327,100,71,2,NULL),(1328,160,56,2,NULL),(1329,167,33,2,NULL),(1330,169,21,2,NULL),(1331,138,71,2,NULL),(1332,171,56,2,NULL),(1333,173,33,2,NULL),(1334,179,21,2,NULL),(1335,144,71,2,NULL),(1336,207,56,2,NULL),(1337,174,33,2,NULL),(1338,188,21,2,NULL),(1339,150,71,2,NULL),(1340,229,56,2,NULL),(1341,178,33,2,NULL),(1342,192,21,2,NULL),(1343,153,71,2,NULL),(1344,230,56,2,NULL),(1345,180,33,2,NULL),(1346,194,21,2,NULL),(1347,157,71,2,NULL),(1348,232,56,2,NULL),(1349,183,33,2,NULL),(1350,25,27,2,NULL),(1351,40,72,2,NULL),(1352,234,56,2,NULL),(1353,187,33,2,NULL),(1354,26,27,2,NULL),(1355,80,72,2,NULL),(1356,190,33,2,NULL),(1357,236,56,2,NULL),(1358,28,27,2,NULL),(1359,87,72,2,NULL),(1360,118,58,2,NULL),(1361,29,27,2,NULL),(1362,90,72,2,NULL),(1363,152,58,2,NULL),(1364,89,84,2,NULL),(1365,31,27,2,NULL),(1366,94,72,2,NULL),(1367,154,58,2,NULL),(1368,167,84,2,NULL),(1369,42,27,2,NULL),(1370,97,72,2,NULL),(1371,173,84,2,NULL),(1372,158,58,2,NULL),(1373,99,27,2,NULL),(1374,100,72,2,NULL),(1375,160,58,2,NULL),(1376,174,84,2,NULL),(1377,169,27,2,NULL),(1378,138,72,2,NULL),(1379,171,58,2,NULL),(1380,178,84,2,NULL),(1381,179,27,2,NULL),(1382,144,72,2,NULL),(1383,180,84,2,NULL),(1384,207,58,2,NULL),(1385,188,27,2,NULL),(1386,150,72,2,NULL),(1387,183,84,2,NULL),(1388,229,58,2,NULL),(1389,192,27,2,NULL),(1390,153,72,2,NULL),(1391,187,84,2,NULL),(1392,230,58,2,NULL),(1393,194,27,2,NULL),(1394,157,72,2,NULL),(1395,190,84,2,NULL),(1396,232,58,2,NULL),(1397,25,33,2,NULL),(1398,40,25,2,NULL),(1399,89,85,2,NULL),(1400,234,58,2,NULL),(1401,26,33,2,NULL),(1402,80,25,2,NULL),(1403,167,85,2,NULL),(1404,236,58,2,NULL),(1405,28,33,2,NULL),(1406,87,25,2,NULL),(1407,173,85,2,NULL),(1408,118,59,2,NULL),(1409,29,33,2,NULL),(1410,90,25,2,NULL),(1411,174,85,2,NULL),(1412,152,59,2,NULL),(1413,31,33,2,NULL),(1414,94,25,2,NULL),(1415,178,85,2,NULL),(1416,154,59,2,NULL),(1417,42,33,2,NULL),(1418,97,25,2,NULL),(1419,180,85,2,NULL),(1420,158,59,2,NULL),(1421,99,33,2,NULL),(1422,100,25,2,NULL),(1423,183,85,2,NULL),(1424,160,59,2,NULL),(1425,169,33,2,NULL),(1426,138,25,2,NULL),(1427,171,59,2,NULL),(1428,187,85,2,NULL),(1429,179,33,2,NULL),(1430,144,25,2,NULL),(1431,207,59,2,NULL),(1432,190,85,2,NULL),(1433,188,33,2,NULL),(1434,150,25,2,NULL),(1435,89,86,2,NULL),(1436,229,59,2,NULL),(1437,192,33,2,NULL),(1438,153,25,2,NULL),(1439,167,86,2,NULL),(1440,230,59,2,NULL),(1441,194,33,2,NULL),(1442,157,25,2,NULL),(1443,173,86,2,NULL),(1444,232,59,2,NULL),(1445,25,84,2,NULL),(1446,113,10,2,NULL),(1447,234,59,2,NULL),(1448,174,86,2,NULL),(1449,26,84,2,NULL),(1450,116,10,2,NULL),(1451,236,59,2,NULL),(1452,178,86,2,NULL),(1453,28,84,2,NULL),(1454,119,10,2,NULL),(1455,180,86,2,NULL),(1456,118,92,2,NULL),(1457,29,84,2,NULL),(1458,122,10,2,NULL),(1459,152,92,2,NULL),(1460,183,86,2,NULL),(1461,31,84,2,NULL),(1462,124,10,2,NULL),(1463,154,92,2,NULL),(1464,187,86,2,NULL),(1465,42,84,2,NULL),(1466,182,10,2,NULL),(1467,158,92,2,NULL),(1468,190,86,2,NULL),(1469,99,84,2,NULL),(1470,216,10,2,NULL),(1471,160,92,2,NULL),(1472,89,20,2,NULL),(1473,169,84,2,NULL),(1474,225,10,2,NULL),(1475,171,92,2,NULL),(1476,167,20,2,NULL),(1477,179,84,2,NULL),(1478,231,10,2,NULL),(1479,173,20,2,NULL),(1480,207,92,2,NULL),(1481,188,84,2,NULL),(1482,237,10,2,NULL),(1483,229,92,2,NULL),(1484,174,20,2,NULL),(1485,192,84,2,NULL),(1486,238,10,2,NULL),(1487,230,92,2,NULL),(1488,178,20,2,NULL),(1489,194,84,2,NULL),(1490,241,10,2,NULL),(1491,232,92,2,NULL),(1492,180,20,2,NULL),(1493,25,85,2,NULL),(1494,98,10,2,NULL),(1495,183,20,2,NULL),(1496,234,92,2,NULL),(1497,26,85,2,NULL),(1498,40,36,2,NULL),(1499,236,92,2,NULL),(1500,187,20,2,NULL),(1501,28,85,2,NULL),(1502,80,36,2,NULL),(1503,118,19,2,NULL),(1504,190,20,2,NULL),(1505,29,85,2,NULL),(1506,152,19,2,NULL),(1507,87,36,2,NULL),(1508,89,31,2,NULL),(1509,31,85,2,NULL),(1510,90,36,2,NULL),(1511,154,19,2,NULL),(1512,167,31,2,NULL),(1513,42,85,2,NULL),(1514,158,19,2,NULL),(1515,94,36,2,NULL),(1516,173,31,2,NULL),(1517,99,85,2,NULL),(1518,97,36,2,NULL),(1519,160,19,2,NULL),(1520,174,31,2,NULL),(1521,169,85,2,NULL),(1522,171,19,2,NULL),(1523,100,36,2,NULL),(1524,178,31,2,NULL),(1525,179,85,2,NULL),(1526,207,19,2,NULL),(1527,180,31,2,NULL),(1528,138,36,2,NULL),(1529,188,85,2,NULL),(1530,229,19,2,NULL),(1531,144,36,2,NULL),(1532,183,31,2,NULL),(1533,192,85,2,NULL),(1534,187,31,2,NULL),(1535,150,36,2,NULL),(1536,230,19,2,NULL),(1537,194,85,2,NULL),(1538,190,31,2,NULL),(1539,153,36,2,NULL),(1540,232,19,2,NULL),(1541,25,86,2,NULL),(1542,234,19,2,NULL),(1543,89,35,2,NULL),(1544,157,36,2,NULL),(1545,26,86,2,NULL),(1546,236,19,2,NULL),(1547,40,39,2,NULL),(1548,167,35,2,NULL),(1549,28,86,2,NULL),(1550,80,39,2,NULL),(1551,89,42,2,NULL),(1552,173,35,2,NULL),(1553,29,86,2,NULL),(1554,87,39,2,NULL),(1555,167,42,2,NULL),(1556,174,35,2,NULL),(1557,31,86,2,NULL),(1558,90,39,2,NULL),(1559,173,42,2,NULL),(1560,178,35,2,NULL),(1561,42,86,2,NULL),(1562,94,39,2,NULL),(1563,174,42,2,NULL),(1564,180,35,2,NULL),(1565,99,86,2,NULL),(1566,97,39,2,NULL),(1567,178,42,2,NULL),(1568,183,35,2,NULL),(1569,169,86,2,NULL),(1570,100,39,2,NULL),(1571,180,42,2,NULL),(1572,187,35,2,NULL),(1573,179,86,2,NULL),(1574,138,39,2,NULL),(1575,183,42,2,NULL),(1576,190,35,2,NULL),(1577,188,86,2,NULL),(1578,144,39,2,NULL),(1579,187,42,2,NULL),(1580,89,38,2,NULL),(1581,192,86,2,NULL),(1582,150,39,2,NULL),(1583,190,42,2,NULL),(1584,167,38,2,NULL),(1585,194,86,2,NULL),(1586,153,39,2,NULL),(1587,118,21,2,NULL),(1588,173,38,2,NULL),(1589,25,18,2,NULL),(1590,157,39,2,NULL),(1591,152,21,2,NULL),(1592,174,38,2,NULL),(1593,26,18,2,NULL),(1594,40,41,2,NULL),(1595,178,38,2,NULL),(1596,154,21,2,NULL),(1597,28,18,2,NULL),(1598,80,41,2,NULL),(1599,158,21,2,NULL),(1600,180,38,2,NULL),(1601,29,18,2,NULL),(1602,87,41,2,NULL),(1603,160,21,2,NULL),(1604,183,38,2,NULL),(1605,31,18,2,NULL),(1606,90,41,2,NULL),(1607,171,21,2,NULL),(1608,187,38,2,NULL),(1609,42,18,2,NULL),(1610,94,41,2,NULL),(1611,207,21,2,NULL),(1612,190,38,2,NULL),(1613,99,18,2,NULL),(1614,97,41,2,NULL),(1615,229,21,2,NULL),(1616,169,18,2,NULL),(1617,100,41,2,NULL),(1618,230,21,2,NULL),(1619,89,68,2,NULL),(1620,179,18,2,NULL),(1621,138,41,2,NULL),(1622,232,21,2,NULL),(1623,167,68,2,NULL),(1624,188,18,2,NULL),(1625,144,41,2,NULL),(1626,234,21,2,NULL),(1627,173,68,2,NULL),(1628,192,18,2,NULL),(1629,150,41,2,NULL),(1630,236,21,2,NULL),(1631,174,68,2,NULL),(1632,194,18,2,NULL),(1633,153,41,2,NULL),(1634,118,27,2,NULL),(1635,178,68,2,NULL),(1636,61,2,2,NULL),(1637,157,41,2,NULL),(1638,180,68,2,NULL),(1639,152,27,2,NULL),(1640,65,2,2,NULL),(1641,40,61,2,NULL),(1642,154,27,2,NULL),(1643,183,68,2,NULL),(1644,66,2,2,NULL),(1645,80,61,2,NULL),(1646,158,27,2,NULL),(1647,187,68,2,NULL),(1648,69,2,2,NULL),(1649,87,61,2,NULL),(1650,160,27,2,NULL),(1651,190,68,2,NULL),(1652,70,2,2,NULL),(1653,90,61,2,NULL),(1654,89,71,2,NULL),(1655,171,27,2,NULL),(1656,75,2,2,NULL),(1657,94,61,2,NULL),(1658,167,71,2,NULL),(1659,207,27,2,NULL),(1660,76,2,2,NULL),(1661,97,61,2,NULL),(1662,82,2,2,NULL),(1663,229,27,2,NULL),(1664,173,71,2,NULL),(1665,100,61,2,NULL),(1666,166,2,2,NULL),(1667,174,71,2,NULL),(1668,138,61,2,NULL),(1669,230,27,2,NULL),(1670,25,20,2,NULL),(1671,144,61,2,NULL),(1672,178,71,2,NULL),(1673,232,27,2,NULL),(1674,26,20,2,NULL),(1675,150,61,2,NULL),(1676,180,71,2,NULL),(1677,234,27,2,NULL),(1678,28,20,2,NULL),(1679,153,61,2,NULL),(1680,183,71,2,NULL),(1681,236,27,2,NULL),(1682,29,20,2,NULL),(1683,157,61,2,NULL),(1684,187,71,2,NULL),(1685,118,33,2,NULL),(1686,31,20,2,NULL),(1687,40,70,2,NULL),(1688,190,71,2,NULL),(1689,152,33,2,NULL),(1690,42,20,2,NULL),(1691,80,70,2,NULL),(1692,89,72,2,NULL),(1693,154,33,2,NULL),(1694,99,20,2,NULL),(1695,87,70,2,NULL),(1696,167,72,2,NULL),(1697,158,33,2,NULL),(1698,169,20,2,NULL),(1699,90,70,2,NULL),(1700,173,72,2,NULL),(1701,160,33,2,NULL),(1702,179,20,2,NULL),(1703,94,70,2,NULL),(1704,174,72,2,NULL),(1705,171,33,2,NULL),(1706,188,20,2,NULL),(1707,97,70,2,NULL),(1708,178,72,2,NULL),(1709,207,33,2,NULL),(1710,192,20,2,NULL),(1711,100,70,2,NULL),(1712,180,72,2,NULL),(1713,229,33,2,NULL),(1714,194,20,2,NULL),(1715,138,70,2,NULL),(1716,183,72,2,NULL),(1717,230,33,2,NULL),(1718,25,31,2,NULL),(1719,144,70,2,NULL),(1720,187,72,2,NULL),(1721,232,33,2,NULL),(1722,26,31,2,NULL),(1723,150,70,2,NULL),(1724,190,72,2,NULL),(1725,234,33,2,NULL),(1726,28,31,2,NULL),(1727,153,70,2,NULL),(1728,236,33,2,NULL),(1729,89,25,2,NULL),(1730,29,31,2,NULL),(1731,157,70,2,NULL),(1732,167,25,2,NULL),(1733,118,84,2,NULL),(1734,31,31,2,NULL),(1735,40,74,2,NULL),(1736,173,25,2,NULL),(1737,152,84,2,NULL),(1738,42,31,2,NULL),(1739,80,74,2,NULL),(1740,174,25,2,NULL),(1741,154,84,2,NULL),(1742,99,31,2,NULL),(1743,87,74,2,NULL),(1744,178,25,2,NULL),(1745,158,84,2,NULL),(1746,169,31,2,NULL),(1747,90,74,2,NULL),(1748,160,84,2,NULL),(1749,180,25,2,NULL),(1750,179,31,2,NULL),(1751,94,74,2,NULL),(1752,171,84,2,NULL),(1753,183,25,2,NULL),(1754,188,31,2,NULL),(1755,97,74,2,NULL),(1756,207,84,2,NULL),(1757,187,25,2,NULL),(1758,192,31,2,NULL),(1759,100,74,2,NULL),(1760,229,84,2,NULL),(1761,190,25,2,NULL),(1762,194,31,2,NULL),(1763,138,74,2,NULL),(1764,230,84,2,NULL),(1765,113,19,2,NULL),(1766,25,35,2,NULL),(1767,144,74,2,NULL),(1768,232,84,2,NULL),(1769,116,19,2,NULL),(1770,26,35,2,NULL),(1771,150,74,2,NULL),(1772,234,84,2,NULL),(1773,119,19,2,NULL),(1774,28,35,2,NULL),(1775,153,74,2,NULL),(1776,236,84,2,NULL),(1777,122,19,2,NULL),(1778,118,85,2,NULL),(1779,157,74,2,NULL),(1780,124,19,2,NULL),(1781,152,85,2,NULL),(1782,40,91,2,NULL),(1783,182,19,2,NULL),(1784,29,35,2,NULL),(1785,154,85,2,NULL),(1786,80,91,2,NULL),(1787,216,19,2,NULL),(1788,31,35,2,NULL),(1789,158,85,2,NULL),(1790,87,91,2,NULL),(1791,42,35,2,NULL),(1792,225,19,2,NULL),(1793,90,91,2,NULL),(1794,231,19,2,NULL),(1795,99,35,2,NULL),(1796,94,91,2,NULL),(1797,160,85,2,NULL),(1798,169,35,2,NULL),(1799,237,19,2,NULL),(1800,97,91,2,NULL),(1801,179,35,2,NULL),(1802,238,19,2,NULL),(1803,171,85,2,NULL),(1804,100,91,2,NULL),(1805,241,19,2,NULL),(1806,188,35,2,NULL),(1807,207,85,2,NULL),(1808,138,91,2,NULL),(1809,192,35,2,NULL),(1810,98,19,2,NULL),(1811,229,85,2,NULL),(1812,144,91,2,NULL),(1813,194,35,2,NULL),(1814,89,36,2,NULL),(1815,230,85,2,NULL),(1816,150,91,2,NULL),(1817,25,38,2,NULL),(1818,167,36,2,NULL),(1819,232,85,2,NULL),(1820,153,91,2,NULL),(1821,26,38,2,NULL),(1822,173,36,2,NULL),(1823,234,85,2,NULL),(1824,157,91,2,NULL),(1825,236,85,2,NULL),(1826,174,36,2,NULL),(1827,28,38,2,NULL),(1828,40,93,2,NULL),(1829,118,86,2,NULL),(1830,178,36,2,NULL),(1831,29,38,2,NULL),(1832,80,93,2,NULL),(1833,31,38,2,NULL),(1834,180,36,2,NULL),(1835,152,86,2,NULL),(1836,87,93,2,NULL),(1837,154,86,2,NULL),(1838,42,38,2,NULL),(1839,183,36,2,NULL),(1840,90,93,2,NULL),(1841,158,86,2,NULL),(1842,99,38,2,NULL),(1843,187,36,2,NULL),(1844,94,93,2,NULL),(1845,160,86,2,NULL),(1846,169,38,2,NULL),(1847,190,36,2,NULL),(1848,97,93,2,NULL),(1849,179,38,2,NULL),(1850,171,86,2,NULL),(1851,89,39,2,NULL),(1852,100,93,2,NULL),(1853,188,38,2,NULL),(1854,167,39,2,NULL),(1855,207,86,2,NULL),(1856,138,93,2,NULL),(1857,192,38,2,NULL),(1858,173,39,2,NULL),(1859,229,86,2,NULL),(1860,144,93,2,NULL),(1861,194,38,2,NULL),(1862,174,39,2,NULL),(1863,230,86,2,NULL),(1864,150,93,2,NULL),(1865,232,86,2,NULL),(1866,178,39,2,NULL),(1867,25,68,2,NULL),(1868,153,93,2,NULL),(1869,180,39,2,NULL),(1870,234,86,2,NULL),(1871,26,68,2,NULL),(1872,157,93,2,NULL),(1873,183,39,2,NULL),(1874,236,86,2,NULL),(1875,28,68,2,NULL),(1876,187,39,2,NULL),(1877,118,18,2,NULL),(1878,29,68,2,NULL),(1879,59,10,2,NULL),(1880,190,39,2,NULL),(1881,40,46,2,NULL),(1882,31,68,2,NULL),(1883,152,18,2,NULL),(1884,89,41,2,NULL),(1885,42,68,2,NULL),(1886,80,46,2,NULL),(1887,154,18,2,NULL),(1888,167,41,2,NULL),(1889,158,18,2,NULL),(1890,87,46,2,NULL),(1891,99,68,2,NULL),(1892,173,41,2,NULL),(1893,90,46,2,NULL),(1894,169,68,2,NULL),(1895,160,18,2,NULL),(1896,174,41,2,NULL),(1897,171,18,2,NULL),(1898,94,46,2,NULL),(1899,179,68,2,NULL),(1900,178,41,2,NULL),(1901,207,18,2,NULL),(1902,97,46,2,NULL),(1903,188,68,2,NULL),(1904,180,41,2,NULL),(1905,192,68,2,NULL),(1906,100,46,2,NULL),(1907,229,18,2,NULL),(1908,183,41,2,NULL),(1909,194,68,2,NULL),(1910,138,46,2,NULL),(1911,230,18,2,NULL),(1912,187,41,2,NULL),(1913,25,71,2,NULL),(1914,144,46,2,NULL),(1915,232,18,2,NULL),(1916,190,41,2,NULL),(1917,26,71,2,NULL),(1918,234,18,2,NULL),(1919,150,46,2,NULL),(1920,89,61,2,NULL),(1921,236,18,2,NULL),(1922,153,46,2,NULL),(1923,28,71,2,NULL),(1924,167,61,2,NULL),(1925,61,42,2,NULL),(1926,157,46,2,NULL),(1927,29,71,2,NULL),(1928,173,61,2,NULL),(1929,65,42,2,NULL),(1930,40,47,2,NULL),(1931,31,71,2,NULL),(1932,174,61,2,NULL),(1933,80,47,2,NULL),(1934,66,42,2,NULL),(1935,42,71,2,NULL),(1936,178,61,2,NULL),(1937,87,47,2,NULL),(1938,69,42,2,NULL),(1939,99,71,2,NULL),(1940,180,61,2,NULL),(1941,90,47,2,NULL),(1942,70,42,2,NULL),(1943,169,71,2,NULL),(1944,183,61,2,NULL),(1945,94,47,2,NULL),(1946,75,42,2,NULL),(1947,179,71,2,NULL),(1948,187,61,2,NULL),(1949,97,47,2,NULL),(1950,76,42,2,NULL),(1951,188,71,2,NULL),(1952,190,61,2,NULL),(1953,100,47,2,NULL),(1954,82,42,2,NULL),(1955,192,71,2,NULL),(1956,89,70,2,NULL),(1957,138,47,2,NULL),(1958,166,42,2,NULL),(1959,194,71,2,NULL),(1960,167,70,2,NULL),(1961,144,47,2,NULL),(1962,118,20,2,NULL),(1963,25,72,2,NULL),(1964,173,70,2,NULL),(1965,150,47,2,NULL),(1966,152,20,2,NULL),(1967,26,72,2,NULL),(1968,174,70,2,NULL),(1969,153,47,2,NULL),(1970,154,20,2,NULL),(1971,28,72,2,NULL),(1972,178,70,2,NULL),(1973,157,47,2,NULL),(1974,158,20,2,NULL),(1975,29,72,2,NULL),(1976,180,70,2,NULL),(1977,40,48,2,NULL),(1978,160,20,2,NULL),(1979,31,72,2,NULL),(1980,183,70,2,NULL),(1981,80,48,2,NULL),(1982,171,20,2,NULL),(1983,42,72,2,NULL),(1984,187,70,2,NULL),(1985,87,48,2,NULL),(1986,207,20,2,NULL),(1987,99,72,2,NULL),(1988,190,70,2,NULL),(1989,90,48,2,NULL),(1990,229,20,2,NULL),(1991,169,72,2,NULL),(1992,94,48,2,NULL),(1993,230,20,2,NULL),(1994,179,72,2,NULL),(1995,97,48,2,NULL),(1996,232,20,2,NULL),(1997,188,72,2,NULL),(1998,89,74,2,NULL),(1999,100,48,2,NULL),(2000,234,20,2,NULL),(2001,192,72,2,NULL),(2002,138,48,2,NULL),(2003,167,74,2,NULL),(2004,236,20,2,NULL),(2005,194,72,2,NULL),(2006,144,48,2,NULL),(2007,173,74,2,NULL),(2008,118,31,2,NULL),(2009,25,25,2,NULL),(2010,150,48,2,NULL),(2011,174,74,2,NULL),(2012,152,31,2,NULL),(2013,26,25,2,NULL),(2014,153,48,2,NULL),(2015,178,74,2,NULL),(2016,154,31,2,NULL),(2017,28,25,2,NULL),(2018,157,48,2,NULL),(2019,180,74,2,NULL),(2020,158,31,2,NULL),(2021,29,25,2,NULL),(2022,40,57,2,NULL),(2023,183,74,2,NULL),(2024,160,31,2,NULL),(2025,31,25,2,NULL),(2026,80,57,2,NULL),(2027,187,74,2,NULL),(2028,171,31,2,NULL),(2029,42,25,2,NULL),(2030,87,57,2,NULL),(2031,190,74,2,NULL),(2032,207,31,2,NULL),(2033,99,25,2,NULL),(2034,90,57,2,NULL),(2035,89,91,2,NULL),(2036,229,31,2,NULL),(2037,169,25,2,NULL),(2038,94,57,2,NULL),(2039,167,91,2,NULL),(2040,179,25,2,NULL),(2041,230,31,2,NULL),(2042,97,57,2,NULL),(2043,173,91,2,NULL),(2044,188,25,2,NULL),(2045,232,31,2,NULL),(2046,100,57,2,NULL),(2047,174,91,2,NULL),(2048,192,25,2,NULL),(2049,234,31,2,NULL),(2050,138,57,2,NULL),(2051,178,91,2,NULL),(2052,194,25,2,NULL),(2053,236,31,2,NULL),(2054,144,57,2,NULL),(2055,180,91,2,NULL),(2056,113,2,2,NULL),(2057,118,35,2,NULL),(2058,150,57,2,NULL),(2059,183,91,2,NULL),(2060,116,2,2,NULL),(2061,152,35,2,NULL),(2062,153,57,2,NULL),(2063,187,91,2,NULL),(2064,119,2,2,NULL),(2065,154,35,2,NULL),(2066,157,57,2,NULL),(2067,190,91,2,NULL),(2068,158,35,2,NULL),(2069,122,2,2,NULL),(2070,40,63,2,NULL),(2071,89,93,2,NULL),(2072,160,35,2,NULL),(2073,124,2,2,NULL),(2074,80,63,2,NULL),(2075,167,93,2,NULL),(2076,171,35,2,NULL),(2077,182,2,2,NULL),(2078,87,63,2,NULL),(2079,173,93,2,NULL),(2080,216,2,2,NULL),(2081,207,35,2,NULL),(2082,90,63,2,NULL),(2083,174,93,2,NULL),(2084,225,2,2,NULL),(2085,229,35,2,NULL),(2086,94,63,2,NULL),(2087,178,93,2,NULL),(2088,231,2,2,NULL),(2089,230,35,2,NULL),(2090,97,63,2,NULL),(2091,180,93,2,NULL),(2092,237,2,2,NULL),(2093,232,35,2,NULL),(2094,183,93,2,NULL),(2095,100,63,2,NULL),(2096,238,2,2,NULL),(2097,234,35,2,NULL),(2098,138,63,2,NULL),(2099,187,93,2,NULL),(2100,241,2,2,NULL),(2101,236,35,2,NULL),(2102,144,63,2,NULL),(2103,190,93,2,NULL),(2104,118,38,2,NULL),(2105,98,2,2,NULL),(2106,150,63,2,NULL),(2107,152,38,2,NULL),(2108,25,36,2,NULL),(2109,59,19,2,NULL),(2110,153,63,2,NULL),(2111,89,46,2,NULL),(2112,26,36,2,NULL),(2113,154,38,2,NULL),(2114,157,63,2,NULL),(2115,28,36,2,NULL),(2116,158,38,2,NULL),(2117,167,46,2,NULL),(2118,40,95,2,NULL),(2119,160,38,2,NULL),(2120,29,36,2,NULL),(2121,173,46,2,NULL),(2122,80,95,2,NULL),(2123,171,38,2,NULL),(2124,174,46,2,NULL),(2125,31,36,2,NULL),(2126,87,95,2,NULL),(2127,178,46,2,NULL),(2128,207,38,2,NULL),(2129,42,36,2,NULL),(2130,90,95,2,NULL),(2131,99,36,2,NULL),(2132,229,38,2,NULL),(2133,180,46,2,NULL),(2134,94,95,2,NULL),(2135,230,38,2,NULL),(2136,169,36,2,NULL),(2137,183,46,2,NULL),(2138,97,95,2,NULL),(2139,232,38,2,NULL),(2140,187,46,2,NULL),(2141,179,36,2,NULL),(2142,100,95,2,NULL),(2143,188,36,2,NULL),(2144,234,38,2,NULL),(2145,190,46,2,NULL),(2146,138,95,2,NULL),(2147,236,38,2,NULL),(2148,192,36,2,NULL),(2149,89,47,2,NULL),(2150,144,95,2,NULL),(2151,167,47,2,NULL),(2152,194,36,2,NULL),(2153,118,68,2,NULL),(2154,150,95,2,NULL),(2155,152,68,2,NULL),(2156,25,39,2,NULL),(2157,173,47,2,NULL),(2158,153,95,2,NULL),(2159,26,39,2,NULL),(2160,154,68,2,NULL),(2161,174,47,2,NULL),(2162,157,95,2,NULL),(2163,28,39,2,NULL),(2164,158,68,2,NULL),(2165,178,47,2,NULL),(2166,40,96,2,NULL),(2167,160,68,2,NULL),(2168,180,47,2,NULL),(2169,29,39,2,NULL),(2170,80,96,2,NULL),(2171,183,47,2,NULL),(2172,31,39,2,NULL),(2173,171,68,2,NULL),(2174,87,96,2,NULL),(2175,187,47,2,NULL),(2176,42,39,2,NULL),(2177,207,68,2,NULL),(2178,90,96,2,NULL),(2179,99,39,2,NULL),(2180,190,47,2,NULL),(2181,229,68,2,NULL),(2182,94,96,2,NULL),(2183,169,39,2,NULL),(2184,89,48,2,NULL),(2185,230,68,2,NULL),(2186,97,96,2,NULL),(2187,179,39,2,NULL),(2188,167,48,2,NULL),(2189,232,68,2,NULL),(2190,100,96,2,NULL),(2191,188,39,2,NULL),(2192,234,68,2,NULL),(2193,173,48,2,NULL),(2194,138,96,2,NULL),(2195,192,39,2,NULL),(2196,236,68,2,NULL),(2197,174,48,2,NULL),(2198,144,96,2,NULL),(2199,194,39,2,NULL),(2200,118,71,2,NULL),(2201,178,48,2,NULL),(2202,150,96,2,NULL),(2203,25,41,2,NULL),(2204,152,71,2,NULL),(2205,180,48,2,NULL),(2206,153,96,2,NULL),(2207,26,41,2,NULL),(2208,154,71,2,NULL),(2209,183,48,2,NULL),(2210,157,96,2,NULL),(2211,158,71,2,NULL),(2212,28,41,2,NULL),(2213,187,48,2,NULL),(2214,40,97,2,NULL),(2215,29,41,2,NULL),(2216,160,71,2,NULL),(2217,190,48,2,NULL),(2218,80,97,2,NULL),(2219,31,41,2,NULL),(2220,171,71,2,NULL),(2221,89,57,2,NULL),(2222,87,97,2,NULL),(2223,207,71,2,NULL),(2224,42,41,2,NULL),(2225,167,57,2,NULL),(2226,90,97,2,NULL),(2227,229,71,2,NULL),(2228,99,41,2,NULL),(2229,173,57,2,NULL),(2230,94,97,2,NULL),(2231,230,71,2,NULL),(2232,169,41,2,NULL),(2233,174,57,2,NULL),(2234,97,97,2,NULL),(2235,232,71,2,NULL),(2236,179,41,2,NULL),(2237,178,57,2,NULL),(2238,100,97,2,NULL),(2239,234,71,2,NULL),(2240,188,41,2,NULL),(2241,180,57,2,NULL),(2242,138,97,2,NULL),(2243,236,71,2,NULL),(2244,192,41,2,NULL),(2245,183,57,2,NULL),(2246,144,97,2,NULL),(2247,118,72,2,NULL),(2248,194,41,2,NULL),(2249,187,57,2,NULL),(2250,150,97,2,NULL),(2251,25,61,2,NULL),(2252,152,72,2,NULL),(2253,190,57,2,NULL),(2254,153,97,2,NULL),(2255,26,61,2,NULL),(2256,89,63,2,NULL),(2257,154,72,2,NULL),(2258,157,97,2,NULL),(2259,28,61,2,NULL),(2260,158,72,2,NULL),(2261,167,63,2,NULL),(2262,193,8,2,NULL),(2263,29,61,2,NULL),(2264,173,63,2,NULL),(2265,160,72,2,NULL),(2266,193,13,2,NULL),(2267,171,72,2,NULL),(2268,31,61,2,NULL),(2269,174,63,2,NULL),(2270,193,15,2,NULL),(2271,42,61,2,NULL),(2272,178,63,2,NULL),(2273,193,54,2,NULL),(2274,207,72,2,NULL),(2275,99,61,2,NULL),(2276,193,55,2,NULL),(2277,229,72,2,NULL),(2278,180,63,2,NULL),(2279,169,61,2,NULL),(2280,193,60,2,NULL),(2281,183,63,2,NULL),(2282,179,61,2,NULL),(2283,230,72,2,NULL),(2284,193,79,2,NULL),(2285,188,61,2,NULL),(2286,187,63,2,NULL),(2287,232,72,2,NULL),(2288,193,3,2,NULL),(2289,192,61,2,NULL),(2290,234,72,2,NULL),(2291,190,63,2,NULL),(2292,193,9,2,NULL),(2293,194,61,2,NULL),(2294,236,72,2,NULL),(2295,193,49,2,NULL),(2296,89,95,2,NULL),(2297,25,70,2,NULL),(2298,118,25,2,NULL),(2299,167,95,2,NULL),(2300,193,50,2,NULL),(2301,26,70,2,NULL),(2302,152,25,2,NULL),(2303,173,95,2,NULL),(2304,193,51,2,NULL),(2305,28,70,2,NULL),(2306,154,25,2,NULL),(2307,193,52,2,NULL),(2308,174,95,2,NULL),(2309,29,70,2,NULL),(2310,178,95,2,NULL),(2311,193,53,2,NULL),(2312,158,25,2,NULL),(2313,31,70,2,NULL),(2314,160,25,2,NULL),(2315,180,95,2,NULL),(2316,193,14,2,NULL),(2317,42,70,2,NULL),(2318,171,25,2,NULL),(2319,183,95,2,NULL),(2320,193,16,2,NULL),(2321,99,70,2,NULL),(2322,193,17,2,NULL),(2323,207,25,2,NULL),(2324,187,95,2,NULL),(2325,169,70,2,NULL),(2326,193,56,2,NULL),(2327,190,95,2,NULL),(2328,229,25,2,NULL),(2329,179,70,2,NULL),(2330,193,58,2,NULL),(2331,89,96,2,NULL),(2332,230,25,2,NULL),(2333,188,70,2,NULL),(2334,193,59,2,NULL),(2335,167,96,2,NULL),(2336,232,25,2,NULL),(2337,192,70,2,NULL),(2338,193,92,2,NULL),(2339,173,96,2,NULL),(2340,234,25,2,NULL),(2341,194,70,2,NULL),(2342,174,96,2,NULL),(2343,193,21,2,NULL),(2344,236,25,2,NULL),(2345,25,74,2,NULL),(2346,193,27,2,NULL),(2347,178,96,2,NULL),(2348,113,42,2,NULL),(2349,26,74,2,NULL),(2350,193,33,2,NULL),(2351,180,96,2,NULL),(2352,116,42,2,NULL),(2353,28,74,2,NULL),(2354,193,84,2,NULL),(2355,119,42,2,NULL),(2356,183,96,2,NULL),(2357,29,74,2,NULL),(2358,193,85,2,NULL),(2359,122,42,2,NULL),(2360,187,96,2,NULL),(2361,31,74,2,NULL),(2362,193,86,2,NULL),(2363,190,96,2,NULL),(2364,124,42,2,NULL),(2365,42,74,2,NULL),(2366,182,42,2,NULL),(2367,89,97,2,NULL),(2368,193,18,2,NULL),(2369,99,74,2,NULL),(2370,216,42,2,NULL),(2371,167,97,2,NULL),(2372,193,20,2,NULL),(2373,169,74,2,NULL),(2374,193,31,2,NULL),(2375,173,97,2,NULL),(2376,225,42,2,NULL),(2377,179,74,2,NULL),(2378,174,97,2,NULL),(2379,231,42,2,NULL),(2380,193,35,2,NULL),(2381,188,74,2,NULL),(2382,178,97,2,NULL),(2383,193,38,2,NULL),(2384,237,42,2,NULL),(2385,192,74,2,NULL),(2386,193,68,2,NULL),(2387,180,97,2,NULL),(2388,238,42,2,NULL),(2389,194,74,2,NULL),(2390,193,71,2,NULL),(2391,183,97,2,NULL),(2392,241,42,2,NULL),(2393,25,91,2,NULL),(2394,193,72,2,NULL),(2395,187,97,2,NULL),(2396,98,42,2,NULL),(2397,26,91,2,NULL),(2398,193,25,2,NULL),(2399,118,36,2,NULL),(2400,190,97,2,NULL),(2401,28,91,2,NULL),(2402,193,36,2,NULL),(2403,152,36,2,NULL),(2404,107,21,2,NULL),(2405,29,91,2,NULL),(2406,193,39,2,NULL),(2407,154,36,2,NULL),(2408,2,21,2,NULL),(2409,31,91,2,NULL),(2410,193,41,2,NULL),(2411,158,36,2,NULL),(2412,42,91,2,NULL),(2413,3,21,2,NULL),(2414,193,61,2,NULL),(2415,160,36,2,NULL),(2416,99,91,2,NULL),(2417,4,21,2,NULL),(2418,193,70,2,NULL),(2419,171,36,2,NULL),(2420,169,91,2,NULL),(2421,5,21,2,NULL),(2422,193,74,2,NULL),(2423,207,36,2,NULL),(2424,179,91,2,NULL),(2425,6,21,2,NULL),(2426,193,91,2,NULL),(2427,229,36,2,NULL),(2428,188,91,2,NULL),(2429,7,21,2,NULL),(2430,193,93,2,NULL),(2431,230,36,2,NULL),(2432,8,21,2,NULL),(2433,192,91,2,NULL),(2434,193,46,2,NULL),(2435,232,36,2,NULL),(2436,194,91,2,NULL),(2437,9,21,2,NULL),(2438,193,47,2,NULL),(2439,234,36,2,NULL),(2440,25,93,2,NULL),(2441,193,48,2,NULL),(2442,236,36,2,NULL),(2443,61,21,2,NULL),(2444,26,93,2,NULL),(2445,193,57,2,NULL),(2446,118,39,2,NULL),(2447,28,93,2,NULL),(2448,65,21,2,NULL),(2449,152,39,2,NULL),(2450,193,63,2,NULL),(2451,66,21,2,NULL),(2452,29,93,2,NULL),(2453,193,95,2,NULL),(2454,154,39,2,NULL),(2455,69,21,2,NULL),(2456,31,93,2,NULL),(2457,193,96,2,NULL),(2458,158,39,2,NULL),(2459,70,21,2,NULL),(2460,42,93,2,NULL),(2461,193,97,2,NULL),(2462,160,39,2,NULL),(2463,99,93,2,NULL),(2464,75,21,2,NULL),(2465,171,39,2,NULL),(2466,76,21,2,NULL),(2467,169,93,2,NULL),(2468,107,14,2,NULL),(2469,207,39,2,NULL),(2470,82,21,2,NULL),(2471,179,93,2,NULL),(2472,2,14,2,NULL),(2473,229,39,2,NULL),(2474,188,93,2,NULL),(2475,166,21,2,NULL),(2476,3,14,2,NULL),(2477,230,39,2,NULL),(2478,192,93,2,NULL),(2479,4,14,2,NULL),(2480,113,21,2,NULL),(2481,232,39,2,NULL),(2482,194,93,2,NULL),(2483,5,14,2,NULL),(2484,116,21,2,NULL),(2485,234,39,2,NULL),(2486,119,21,2,NULL),(2487,6,14,2,NULL),(2488,236,39,2,NULL),(2489,59,2,2,NULL),(2490,122,21,2,NULL),(2491,7,14,2,NULL),(2492,118,41,2,NULL),(2493,124,21,2,NULL),(2494,25,46,2,NULL),(2495,8,14,2,NULL),(2496,152,41,2,NULL),(2497,182,21,2,NULL),(2498,26,46,2,NULL),(2499,9,14,2,NULL),(2500,154,41,2,NULL),(2501,216,21,2,NULL),(2502,28,46,2,NULL),(2503,158,41,2,NULL),(2504,29,46,2,NULL),(2505,225,21,2,NULL),(2506,61,14,2,NULL),(2507,160,41,2,NULL),(2508,231,21,2,NULL),(2509,31,46,2,NULL),(2510,65,14,2,NULL),(2511,171,41,2,NULL),(2512,237,21,2,NULL),(2513,66,14,2,NULL),(2514,42,46,2,NULL),(2515,207,41,2,NULL),(2516,238,21,2,NULL),(2517,69,14,2,NULL),(2518,99,46,2,NULL),(2519,229,41,2,NULL),(2520,70,14,2,NULL),(2521,241,21,2,NULL),(2522,169,46,2,NULL),(2523,230,41,2,NULL),(2524,75,14,2,NULL),(2525,98,21,2,NULL),(2526,179,46,2,NULL),(2527,232,41,2,NULL),(2528,188,46,2,NULL),(2529,76,14,2,NULL),(2530,59,21,2,NULL),(2531,234,41,2,NULL),(2532,192,46,2,NULL),(2533,82,14,2,NULL),(2534,107,27,2,NULL),(2535,236,41,2,NULL),(2536,2,27,2,NULL),(2537,166,14,2,NULL),(2538,194,46,2,NULL),(2539,118,61,2,NULL),(2540,3,27,2,NULL),(2541,113,14,2,NULL),(2542,25,47,2,NULL),(2543,152,61,2,NULL),(2544,4,27,2,NULL),(2545,26,47,2,NULL),(2546,116,14,2,NULL),(2547,154,61,2,NULL),(2548,5,27,2,NULL),(2549,28,47,2,NULL),(2550,119,14,2,NULL),(2551,158,61,2,NULL),(2552,29,47,2,NULL),(2553,6,27,2,NULL),(2554,122,14,2,NULL),(2555,160,61,2,NULL),(2556,7,27,2,NULL),(2557,124,14,2,NULL),(2558,31,47,2,NULL),(2559,171,61,2,NULL),(2560,8,27,2,NULL),(2561,182,14,2,NULL),(2562,42,47,2,NULL),(2563,207,61,2,NULL),(2564,99,47,2,NULL),(2565,216,14,2,NULL),(2566,9,27,2,NULL),(2567,229,61,2,NULL),(2568,169,47,2,NULL),(2569,225,14,2,NULL),(2570,230,61,2,NULL),(2571,179,47,2,NULL),(2572,231,14,2,NULL),(2573,232,61,2,NULL),(2574,188,47,2,NULL),(2575,237,14,2,NULL),(2576,61,27,2,NULL),(2577,234,61,2,NULL),(2578,192,47,2,NULL),(2579,238,14,2,NULL),(2580,65,27,2,NULL),(2581,236,61,2,NULL),(2582,194,47,2,NULL),(2583,66,27,2,NULL),(2584,241,14,2,NULL),(2585,118,70,2,NULL),(2586,69,27,2,NULL),(2587,25,48,2,NULL),(2588,98,14,2,NULL),(2589,152,70,2,NULL),(2590,70,27,2,NULL),(2591,26,48,2,NULL),(2592,154,70,2,NULL),(2593,59,14,2,NULL),(2594,75,27,2,NULL),(2595,28,48,2,NULL),(2596,158,70,2,NULL),(2597,76,27,2,NULL),(2598,107,16,2,NULL),(2599,29,48,2,NULL),(2600,160,70,2,NULL),(2601,82,27,2,NULL),(2602,2,16,2,NULL),(2603,31,48,2,NULL),(2604,171,70,2,NULL),(2605,166,27,2,NULL),(2606,42,48,2,NULL),(2607,3,16,2,NULL),(2608,207,70,2,NULL),(2609,4,16,2,NULL),(2610,99,48,2,NULL),(2611,229,70,2,NULL),(2612,5,16,2,NULL),(2613,113,27,2,NULL),(2614,169,48,2,NULL),(2615,230,70,2,NULL),(2616,6,16,2,NULL),(2617,116,27,2,NULL),(2618,179,48,2,NULL),(2619,232,70,2,NULL),(2620,7,16,2,NULL),(2621,119,27,2,NULL),(2622,188,48,2,NULL),(2623,234,70,2,NULL),(2624,8,16,2,NULL),(2625,122,27,2,NULL),(2626,192,48,2,NULL),(2627,236,70,2,NULL),(2628,9,16,2,NULL),(2629,124,27,2,NULL),(2630,194,48,2,NULL),(2631,118,74,2,NULL),(2632,182,27,2,NULL),(2633,25,57,2,NULL),(2634,152,74,2,NULL),(2635,61,16,2,NULL),(2636,216,27,2,NULL),(2637,26,57,2,NULL),(2638,65,16,2,NULL),(2639,154,74,2,NULL),(2640,225,27,2,NULL),(2641,28,57,2,NULL),(2642,158,74,2,NULL),(2643,66,16,2,NULL),(2644,231,27,2,NULL),(2645,29,57,2,NULL),(2646,69,16,2,NULL),(2647,160,74,2,NULL),(2648,237,27,2,NULL),(2649,31,57,2,NULL),(2650,70,16,2,NULL),(2651,171,74,2,NULL),(2652,238,27,2,NULL),(2653,42,57,2,NULL),(2654,75,16,2,NULL),(2655,207,74,2,NULL),(2656,241,27,2,NULL),(2657,99,57,2,NULL),(2658,76,16,2,NULL),(2659,229,74,2,NULL),(2660,98,27,2,NULL),(2661,169,57,2,NULL),(2662,230,74,2,NULL),(2663,82,16,2,NULL),(2664,179,57,2,NULL),(2665,59,27,2,NULL),(2666,232,74,2,NULL),(2667,166,16,2,NULL),(2668,188,57,2,NULL),(2669,113,16,2,NULL),(2670,234,74,2,NULL),(2671,192,57,2,NULL),(2672,116,16,2,NULL),(2673,236,74,2,NULL),(2674,194,57,2,NULL),(2675,119,16,2,NULL),(2676,118,91,2,NULL),(2677,25,63,2,NULL),(2678,107,33,2,NULL),(2679,122,16,2,NULL),(2680,152,91,2,NULL),(2681,26,63,2,NULL),(2682,2,33,2,NULL),(2683,124,16,2,NULL),(2684,154,91,2,NULL),(2685,3,33,2,NULL),(2686,28,63,2,NULL),(2687,182,16,2,NULL),(2688,158,91,2,NULL),(2689,4,33,2,NULL),(2690,29,63,2,NULL),(2691,216,16,2,NULL),(2692,160,91,2,NULL),(2693,5,33,2,NULL),(2694,31,63,2,NULL),(2695,225,16,2,NULL),(2696,171,91,2,NULL),(2697,6,33,2,NULL),(2698,42,63,2,NULL),(2699,207,91,2,NULL),(2700,231,16,2,NULL),(2701,7,33,2,NULL),(2702,99,63,2,NULL),(2703,229,91,2,NULL),(2704,237,16,2,NULL),(2705,8,33,2,NULL),(2706,169,63,2,NULL),(2707,230,91,2,NULL),(2708,238,16,2,NULL),(2709,9,33,2,NULL),(2710,179,63,2,NULL),(2711,232,91,2,NULL),(2712,241,16,2,NULL),(2713,188,63,2,NULL),(2714,98,16,2,NULL),(2715,234,91,2,NULL),(2716,192,63,2,NULL),(2717,61,33,2,NULL),(2718,236,91,2,NULL),(2719,59,16,2,NULL),(2720,194,63,2,NULL),(2721,65,33,2,NULL),(2722,118,93,2,NULL),(2723,208,13,2,NULL),(2724,25,95,2,NULL),(2725,66,33,2,NULL),(2726,152,93,2,NULL),(2727,208,16,2,NULL),(2728,26,95,2,NULL),(2729,69,33,2,NULL),(2730,154,93,2,NULL),(2731,208,39,2,NULL),(2732,28,95,2,NULL),(2733,70,33,2,NULL),(2734,158,93,2,NULL),(2735,208,47,2,NULL),(2736,29,95,2,NULL),(2737,75,33,2,NULL),(2738,160,93,2,NULL),(2739,31,95,2,NULL),(2740,107,17,2,NULL),(2741,76,33,2,NULL),(2742,171,93,2,NULL),(2743,2,17,2,NULL),(2744,42,95,2,NULL),(2745,82,33,2,NULL),(2746,207,93,2,NULL),(2747,3,17,2,NULL),(2748,99,95,2,NULL),(2749,166,33,2,NULL),(2750,229,93,2,NULL),(2751,169,95,2,NULL),(2752,4,17,2,NULL),(2753,230,93,2,NULL),(2754,5,17,2,NULL),(2755,179,95,2,NULL),(2756,232,93,2,NULL),(2757,113,33,2,NULL),(2758,6,17,2,NULL),(2759,188,95,2,NULL),(2760,234,93,2,NULL),(2761,116,33,2,NULL),(2762,7,17,2,NULL),(2763,192,95,2,NULL),(2764,119,33,2,NULL),(2765,236,93,2,NULL),(2766,194,95,2,NULL),(2767,8,17,2,NULL),(2768,122,33,2,NULL),(2769,59,42,2,NULL),(2770,9,17,2,NULL),(2771,25,96,2,NULL),(2772,124,33,2,NULL),(2773,118,46,2,NULL),(2774,26,96,2,NULL),(2775,182,33,2,NULL),(2776,152,46,2,NULL),(2777,61,17,2,NULL),(2778,28,96,2,NULL),(2779,216,33,2,NULL),(2780,65,17,2,NULL),(2781,154,46,2,NULL),(2782,29,96,2,NULL),(2783,225,33,2,NULL),(2784,158,46,2,NULL),(2785,31,96,2,NULL),(2786,231,33,2,NULL),(2787,160,46,2,NULL),(2788,66,17,2,NULL),(2789,42,96,2,NULL),(2790,237,33,2,NULL),(2791,69,17,2,NULL),(2792,171,46,2,NULL),(2793,99,96,2,NULL),(2794,70,17,2,NULL),(2795,238,33,2,NULL),(2796,207,46,2,NULL),(2797,169,96,2,NULL),(2798,75,17,2,NULL),(2799,241,33,2,NULL),(2800,229,46,2,NULL),(2801,179,96,2,NULL),(2802,76,17,2,NULL),(2803,98,33,2,NULL),(2804,188,96,2,NULL),(2805,230,46,2,NULL),(2806,82,17,2,NULL),(2807,192,96,2,NULL),(2808,232,46,2,NULL),(2809,59,33,2,NULL),(2810,166,17,2,NULL),(2811,194,96,2,NULL),(2812,113,17,2,NULL),(2813,234,46,2,NULL),(2814,116,17,2,NULL),(2815,25,97,2,NULL),(2816,236,46,2,NULL),(2817,26,97,2,NULL),(2818,119,17,2,NULL),(2819,118,47,2,NULL),(2820,28,97,2,NULL),(2821,122,17,2,NULL),(2822,152,47,2,NULL),(2823,29,97,2,NULL),(2824,124,17,2,NULL),(2825,154,47,2,NULL),(2826,31,97,2,NULL),(2827,182,17,2,NULL),(2828,158,47,2,NULL),(2829,42,97,2,NULL),(2830,216,17,2,NULL),(2831,160,47,2,NULL),(2832,99,97,2,NULL),(2833,225,17,2,NULL),(2834,171,47,2,NULL),(2835,107,84,2,NULL),(2836,169,97,2,NULL),(2837,231,17,2,NULL),(2838,207,47,2,NULL),(2839,179,97,2,NULL),(2840,2,84,2,NULL),(2841,237,17,2,NULL),(2842,229,47,2,NULL),(2843,188,97,2,NULL),(2844,3,84,2,NULL),(2845,238,17,2,NULL),(2846,230,47,2,NULL),(2847,4,84,2,NULL),(2848,192,97,2,NULL),(2849,241,17,2,NULL),(2850,232,47,2,NULL),(2851,194,97,2,NULL),(2852,5,84,2,NULL),(2853,98,17,2,NULL),(2854,234,47,2,NULL),(2855,6,84,2,NULL),(2856,107,8,2,NULL),(2857,236,47,2,NULL),(2858,59,17,2,NULL),(2859,7,84,2,NULL),(2860,107,13,2,NULL),(2861,118,48,2,NULL),(2862,107,15,2,NULL),(2863,8,84,2,NULL),(2864,107,56,2,NULL),(2865,152,48,2,NULL),(2866,9,84,2,NULL),(2867,107,54,2,NULL),(2868,154,48,2,NULL),(2869,2,56,2,NULL),(2870,107,55,2,NULL),(2871,3,56,2,NULL),(2872,158,48,2,NULL),(2873,61,84,2,NULL),(2874,107,60,2,NULL),(2875,4,56,2,NULL),(2876,160,48,2,NULL),(2877,107,79,2,NULL),(2878,65,84,2,NULL),(2879,5,56,2,NULL),(2880,171,48,2,NULL),(2881,107,3,2,NULL),(2882,66,84,2,NULL),(2883,6,56,2,NULL),(2884,207,48,2,NULL),(2885,107,9,2,NULL),(2886,69,84,2,NULL),(2887,7,56,2,NULL),(2888,229,48,2,NULL),(2889,70,84,2,NULL),(2890,107,49,2,NULL),(2891,8,56,2,NULL),(2892,230,48,2,NULL),(2893,75,84,2,NULL),(2894,107,50,2,NULL),(2895,9,56,2,NULL),(2896,232,48,2,NULL),(2897,76,84,2,NULL),(2898,107,51,2,NULL),(2899,234,48,2,NULL),(2900,82,84,2,NULL),(2901,107,52,2,NULL),(2902,61,56,2,NULL),(2903,236,48,2,NULL),(2904,166,84,2,NULL),(2905,107,53,2,NULL),(2906,65,56,2,NULL),(2907,118,57,2,NULL),(2908,113,84,2,NULL),(2909,107,58,2,NULL),(2910,66,56,2,NULL),(2911,152,57,2,NULL),(2912,116,84,2,NULL),(2913,69,56,2,NULL),(2914,154,57,2,NULL),(2915,107,59,2,NULL),(2916,119,84,2,NULL),(2917,70,56,2,NULL),(2918,107,92,2,NULL),(2919,158,57,2,NULL),(2920,122,84,2,NULL),(2921,75,56,2,NULL),(2922,160,57,2,NULL),(2923,107,85,2,NULL),(2924,124,84,2,NULL),(2925,76,56,2,NULL),(2926,107,86,2,NULL),(2927,171,57,2,NULL),(2928,182,84,2,NULL),(2929,82,56,2,NULL),(2930,107,18,2,NULL),(2931,207,57,2,NULL),(2932,216,84,2,NULL),(2933,166,56,2,NULL),(2934,107,20,2,NULL),(2935,229,57,2,NULL),(2936,225,84,2,NULL),(2937,113,56,2,NULL),(2938,107,31,2,NULL),(2939,230,57,2,NULL),(2940,231,84,2,NULL),(2941,116,56,2,NULL),(2942,107,35,2,NULL),(2943,232,57,2,NULL),(2944,237,84,2,NULL),(2945,119,56,2,NULL),(2946,107,38,2,NULL),(2947,234,57,2,NULL),(2948,238,84,2,NULL),(2949,122,56,2,NULL),(2950,107,68,2,NULL),(2951,236,57,2,NULL),(2952,241,84,2,NULL),(2953,107,71,2,NULL),(2954,118,63,2,NULL),(2955,98,84,2,NULL),(2956,107,72,2,NULL),(2957,152,63,2,NULL),(2958,59,84,2,NULL),(2959,107,25,2,NULL),(2960,154,63,2,NULL),(2961,124,56,2,NULL),(2962,182,56,2,NULL),(2963,158,63,2,NULL),(2964,107,36,2,NULL),(2965,2,85,2,NULL),(2966,216,56,2,NULL),(2967,3,85,2,NULL),(2968,160,63,2,NULL),(2969,107,39,2,NULL),(2970,225,56,2,NULL),(2971,171,63,2,NULL),(2972,4,85,2,NULL),(2973,107,41,2,NULL),(2974,231,56,2,NULL),(2975,5,85,2,NULL),(2976,207,63,2,NULL),(2977,107,61,2,NULL),(2978,237,56,2,NULL),(2979,6,85,2,NULL),(2980,107,70,2,NULL),(2981,229,63,2,NULL),(2982,238,56,2,NULL),(2983,7,85,2,NULL),(2984,107,74,2,NULL),(2985,230,63,2,NULL),(2986,241,56,2,NULL),(2987,8,85,2,NULL),(2988,232,63,2,NULL),(2989,107,91,2,NULL),(2990,98,56,2,NULL),(2991,9,85,2,NULL),(2992,234,63,2,NULL),(2993,107,93,2,NULL),(2994,59,56,2,NULL),(2995,236,63,2,NULL),(2996,107,46,2,NULL),(2997,61,85,2,NULL),(2998,118,95,2,NULL),(2999,2,58,2,NULL),(3000,107,47,2,NULL),(3001,65,85,2,NULL),(3002,152,95,2,NULL),(3003,3,58,2,NULL),(3004,107,48,2,NULL),(3005,66,85,2,NULL),(3006,4,58,2,NULL),(3007,107,57,2,NULL),(3008,154,95,2,NULL),(3009,69,85,2,NULL),(3010,5,58,2,NULL),(3011,107,63,2,NULL),(3012,158,95,2,NULL),(3013,70,85,2,NULL),(3014,6,58,2,NULL),(3015,107,95,2,NULL),(3016,160,95,2,NULL),(3017,75,85,2,NULL),(3018,7,58,2,NULL),(3019,107,96,2,NULL),(3020,171,95,2,NULL),(3021,76,85,2,NULL),(3022,8,58,2,NULL),(3023,207,95,2,NULL),(3024,107,97,2,NULL),(3025,82,85,2,NULL),(3026,9,58,2,NULL),(3027,229,95,2,NULL),(3028,166,85,2,NULL),(3029,2,8,2,NULL),(3030,230,95,2,NULL),(3031,113,85,2,NULL),(3032,61,58,2,NULL),(3033,232,95,2,NULL),(3034,3,8,2,NULL),(3035,116,85,2,NULL),(3036,234,95,2,NULL),(3037,65,58,2,NULL),(3038,4,8,2,NULL),(3039,119,85,2,NULL),(3040,66,58,2,NULL),(3041,236,95,2,NULL),(3042,5,8,2,NULL),(3043,122,85,2,NULL),(3044,69,58,2,NULL),(3045,118,96,2,NULL),(3046,6,8,2,NULL),(3047,124,85,2,NULL),(3048,70,58,2,NULL),(3049,152,96,2,NULL),(3050,7,8,2,NULL),(3051,182,85,2,NULL),(3052,75,58,2,NULL),(3053,154,96,2,NULL),(3054,8,8,2,NULL),(3055,216,85,2,NULL),(3056,76,58,2,NULL),(3057,158,96,2,NULL),(3058,9,8,2,NULL),(3059,225,85,2,NULL),(3060,82,58,2,NULL),(3061,160,96,2,NULL),(3062,231,85,2,NULL),(3063,166,58,2,NULL),(3064,171,96,2,NULL),(3065,61,8,2,NULL),(3066,237,85,2,NULL),(3067,113,58,2,NULL),(3068,207,96,2,NULL),(3069,238,85,2,NULL),(3070,65,8,2,NULL),(3071,229,96,2,NULL),(3072,116,58,2,NULL),(3073,241,85,2,NULL),(3074,66,8,2,NULL),(3075,119,58,2,NULL),(3076,230,96,2,NULL),(3077,98,85,2,NULL),(3078,69,8,2,NULL),(3079,122,58,2,NULL),(3080,232,96,2,NULL),(3081,70,8,2,NULL),(3082,124,58,2,NULL),(3083,59,85,2,NULL),(3084,234,96,2,NULL),(3085,75,8,2,NULL),(3086,182,58,2,NULL),(3087,236,96,2,NULL),(3088,76,8,2,NULL),(3089,2,86,2,NULL),(3090,216,58,2,NULL),(3091,118,97,2,NULL),(3092,3,86,2,NULL),(3093,82,8,2,NULL),(3094,152,97,2,NULL),(3095,225,58,2,NULL),(3096,4,86,2,NULL),(3097,166,8,2,NULL),(3098,231,58,2,NULL),(3099,154,97,2,NULL),(3100,5,86,2,NULL),(3101,113,8,2,NULL),(3102,237,58,2,NULL),(3103,158,97,2,NULL),(3104,6,86,2,NULL),(3105,116,8,2,NULL),(3106,238,58,2,NULL),(3107,160,97,2,NULL),(3108,7,86,2,NULL),(3109,119,8,2,NULL),(3110,241,58,2,NULL),(3111,171,97,2,NULL),(3112,8,86,2,NULL),(3113,122,8,2,NULL),(3114,207,97,2,NULL),(3115,98,58,2,NULL),(3116,9,86,2,NULL),(3117,124,8,2,NULL),(3118,229,97,2,NULL),(3119,59,58,2,NULL),(3120,182,8,2,NULL),(3121,230,97,2,NULL),(3122,61,86,2,NULL),(3123,216,8,2,NULL),(3124,232,97,2,NULL),(3125,2,59,2,NULL),(3126,65,86,2,NULL),(3127,225,8,2,NULL),(3128,3,59,2,NULL),(3129,234,97,2,NULL),(3130,66,86,2,NULL),(3131,231,8,2,NULL),(3132,4,59,2,NULL),(3133,236,97,2,NULL),(3134,69,86,2,NULL),(3135,237,8,2,NULL),(3136,5,59,2,NULL),(3137,59,8,2,NULL),(3138,70,86,2,NULL),(3139,238,8,2,NULL),(3140,6,59,2,NULL),(3141,59,13,2,NULL),(3142,75,86,2,NULL),(3143,241,8,2,NULL),(3144,7,59,2,NULL),(3145,59,15,2,NULL),(3146,76,86,2,NULL),(3147,98,8,2,NULL),(3148,8,59,2,NULL),(3149,59,54,2,NULL),(3150,82,86,2,NULL),(3151,9,59,2,NULL),(3152,59,55,2,NULL),(3153,2,13,2,NULL),(3154,166,86,2,NULL),(3155,3,13,2,NULL),(3156,59,60,2,NULL),(3157,113,86,2,NULL),(3158,61,59,2,NULL),(3159,59,79,2,NULL),(3160,4,13,2,NULL),(3161,65,59,2,NULL),(3162,116,86,2,NULL),(3163,59,3,2,NULL),(3164,5,13,2,NULL),(3165,66,59,2,NULL),(3166,119,86,2,NULL),(3167,59,9,2,NULL),(3168,6,13,2,NULL),(3169,69,59,2,NULL),(3170,122,86,2,NULL),(3171,7,13,2,NULL),(3172,59,49,2,NULL),(3173,70,59,2,NULL),(3174,124,86,2,NULL),(3175,8,13,2,NULL),(3176,59,50,2,NULL),(3177,75,59,2,NULL),(3178,182,86,2,NULL),(3179,9,13,2,NULL),(3180,59,51,2,NULL),(3181,76,59,2,NULL),(3182,216,86,2,NULL),(3183,59,52,2,NULL),(3184,82,59,2,NULL),(3185,225,86,2,NULL),(3186,61,13,2,NULL),(3187,59,53,2,NULL),(3188,166,59,2,NULL),(3189,231,86,2,NULL),(3190,65,13,2,NULL),(3191,59,59,2,NULL),(3192,237,86,2,NULL),(3193,66,13,2,NULL),(3194,113,59,2,NULL),(3195,59,92,2,NULL),(3196,116,59,2,NULL),(3197,69,13,2,NULL),(3198,238,86,2,NULL),(3199,59,86,2,NULL),(3200,119,59,2,NULL),(3201,241,86,2,NULL),(3202,70,13,2,NULL),(3203,59,18,2,NULL),(3204,75,13,2,NULL),(3205,98,86,2,NULL),(3206,122,59,2,NULL),(3207,59,20,2,NULL),(3208,124,59,2,NULL),(3209,76,13,2,NULL),(3210,59,31,2,NULL),(3211,161,22,2,NULL),(3212,182,59,2,NULL),(3213,82,13,2,NULL),(3214,161,23,2,NULL),(3215,59,35,2,NULL),(3216,166,13,2,NULL),(3217,216,59,2,NULL),(3218,59,38,2,NULL),(3219,225,59,2,NULL),(3220,113,13,2,NULL),(3221,59,68,2,NULL),(3222,61,15,2,NULL),(3223,231,59,2,NULL),(3224,116,13,2,NULL),(3225,65,15,2,NULL),(3226,59,71,2,NULL),(3227,237,59,2,NULL),(3228,119,13,2,NULL),(3229,66,15,2,NULL),(3230,59,72,2,NULL),(3231,122,13,2,NULL),(3232,238,59,2,NULL),(3233,69,15,2,NULL),(3234,59,25,2,NULL),(3235,241,59,2,NULL),(3236,124,13,2,NULL),(3237,70,15,2,NULL),(3238,59,36,2,NULL),(3239,182,13,2,NULL),(3240,98,59,2,NULL),(3241,75,15,2,NULL),(3242,59,39,2,NULL),(3243,216,13,2,NULL),(3244,76,15,2,NULL),(3245,59,41,2,NULL),(3246,225,13,2,NULL),(3247,2,92,2,NULL),(3248,59,61,2,NULL),(3249,82,15,2,NULL),(3250,3,92,2,NULL),(3251,231,13,2,NULL),(3252,166,15,2,NULL),(3253,59,70,2,NULL),(3254,4,92,2,NULL),(3255,237,13,2,NULL),(3256,61,54,2,NULL),(3257,59,74,2,NULL),(3258,5,92,2,NULL),(3259,238,13,2,NULL),(3260,65,54,2,NULL),(3261,59,91,2,NULL),(3262,6,92,2,NULL),(3263,241,13,2,NULL),(3264,66,54,2,NULL),(3265,59,93,2,NULL),(3266,7,92,2,NULL),(3267,98,13,2,NULL),(3268,69,54,2,NULL),(3269,59,46,2,NULL),(3270,8,92,2,NULL),(3271,70,54,2,NULL),(3272,59,47,2,NULL),(3273,44,13,2,NULL),(3274,9,92,2,NULL),(3275,44,16,2,NULL),(3276,59,48,2,NULL),(3277,75,54,2,NULL),(3278,59,57,2,NULL),(3279,44,39,2,NULL),(3280,76,54,2,NULL),(3281,61,92,2,NULL),(3282,59,63,2,NULL),(3283,44,47,2,NULL),(3284,82,54,2,NULL),(3285,65,92,2,NULL),(3286,59,95,2,NULL),(3287,66,92,2,NULL),(3288,166,54,2,NULL),(3289,59,96,2,NULL),(3290,2,15,2,NULL),(3291,69,92,2,NULL),(3292,61,55,2,NULL),(3293,59,97,2,NULL),(3294,3,15,2,NULL),(3295,70,92,2,NULL),(3296,65,55,2,NULL),(3297,4,15,2,NULL),(3298,75,92,2,NULL),(3299,66,55,2,NULL),(3300,2,46,2,NULL),(3301,5,15,2,NULL),(3302,76,92,2,NULL),(3303,69,55,2,NULL),(3304,6,15,2,NULL),(3305,3,46,2,NULL),(3306,82,92,2,NULL),(3307,7,15,2,NULL),(3308,70,55,2,NULL),(3309,4,46,2,NULL),(3310,166,92,2,NULL),(3311,8,15,2,NULL),(3312,75,55,2,NULL),(3313,5,46,2,NULL),(3314,113,92,2,NULL),(3315,9,15,2,NULL),(3316,76,55,2,NULL),(3317,116,92,2,NULL),(3318,6,46,2,NULL),(3319,119,92,2,NULL),(3320,82,55,2,NULL),(3321,7,46,2,NULL),(3322,113,15,2,NULL),(3323,122,92,2,NULL),(3324,166,55,2,NULL),(3325,8,46,2,NULL),(3326,124,92,2,NULL),(3327,116,15,2,NULL),(3328,61,60,2,NULL),(3329,9,46,2,NULL),(3330,182,92,2,NULL),(3331,119,15,2,NULL),(3332,65,60,2,NULL),(3333,216,92,2,NULL),(3334,122,15,2,NULL),(3335,66,60,2,NULL),(3336,124,15,2,NULL),(3337,225,92,2,NULL),(3338,61,46,2,NULL),(3339,69,60,2,NULL),(3340,231,92,2,NULL),(3341,182,15,2,NULL),(3342,65,46,2,NULL),(3343,70,60,2,NULL),(3344,216,15,2,NULL),(3345,237,92,2,NULL),(3346,66,46,2,NULL),(3347,75,60,2,NULL),(3348,238,92,2,NULL),(3349,225,15,2,NULL),(3350,69,46,2,NULL),(3351,76,60,2,NULL),(3352,241,92,2,NULL),(3353,231,15,2,NULL),(3354,70,46,2,NULL),(3355,82,60,2,NULL),(3356,98,92,2,NULL),(3357,237,15,2,NULL),(3358,75,46,2,NULL),(3359,166,60,2,NULL),(3360,238,15,2,NULL),(3361,76,46,2,NULL),(3362,61,79,2,NULL),(3363,241,15,2,NULL),(3364,82,46,2,NULL),(3365,65,79,2,NULL),(3366,98,15,2,NULL),(3367,166,46,2,NULL),(3368,66,79,2,NULL),(3369,113,46,2,NULL),(3370,69,79,2,NULL),(3371,116,46,2,NULL),(3372,2,54,2,NULL),(3373,70,79,2,NULL),(3374,3,54,2,NULL),(3375,119,46,2,NULL),(3376,75,79,2,NULL),(3377,4,54,2,NULL),(3378,122,46,2,NULL),(3379,76,79,2,NULL),(3380,5,54,2,NULL),(3381,124,46,2,NULL),(3382,82,79,2,NULL),(3383,6,54,2,NULL),(3384,182,46,2,NULL),(3385,166,79,2,NULL),(3386,7,54,2,NULL),(3387,216,46,2,NULL),(3388,2,18,2,NULL),(3389,8,54,2,NULL),(3390,225,46,2,NULL),(3391,3,18,2,NULL),(3392,9,54,2,NULL),(3393,231,46,2,NULL),(3394,4,18,2,NULL),(3395,237,46,2,NULL),(3396,5,18,2,NULL),(3397,113,54,2,NULL),(3398,238,46,2,NULL),(3399,6,18,2,NULL),(3400,116,54,2,NULL),(3401,241,46,2,NULL),(3402,119,54,2,NULL),(3403,7,18,2,NULL),(3404,98,46,2,NULL),(3405,8,18,2,NULL),(3406,122,54,2,NULL),(3407,9,18,2,NULL),(3408,124,54,2,NULL),(3409,2,47,2,NULL),(3410,61,3,2,NULL),(3411,182,54,2,NULL),(3412,3,47,2,NULL),(3413,65,3,2,NULL),(3414,216,54,2,NULL),(3415,4,47,2,NULL),(3416,66,3,2,NULL),(3417,225,54,2,NULL),(3418,5,47,2,NULL),(3419,69,3,2,NULL),(3420,231,54,2,NULL),(3421,6,47,2,NULL),(3422,70,3,2,NULL),(3423,237,54,2,NULL),(3424,7,47,2,NULL),(3425,75,3,2,NULL),(3426,238,54,2,NULL),(3427,8,47,2,NULL),(3428,76,3,2,NULL),(3429,241,54,2,NULL),(3430,9,47,2,NULL),(3431,82,3,2,NULL),(3432,98,54,2,NULL),(3433,61,47,2,NULL),(3434,166,3,2,NULL),(3435,65,47,2,NULL),(3436,2,55,2,NULL),(3437,61,9,2,NULL),(3438,3,55,2,NULL),(3439,66,47,2,NULL),(3440,65,9,2,NULL),(3441,4,55,2,NULL),(3442,69,47,2,NULL),(3443,66,9,2,NULL),(3444,5,55,2,NULL),(3445,70,47,2,NULL),(3446,69,9,2,NULL),(3447,6,55,2,NULL),(3448,75,47,2,NULL),(3449,70,9,2,NULL),(3450,7,55,2,NULL),(3451,76,47,2,NULL),(3452,75,9,2,NULL),(3453,82,47,2,NULL),(3454,8,55,2,NULL),(3455,76,9,2,NULL),(3456,166,47,2,NULL),(3457,9,55,2,NULL),(3458,82,9,2,NULL),(3459,113,47,2,NULL),(3460,166,9,2,NULL),(3461,116,47,2,NULL),(3462,113,55,2,NULL),(3463,61,49,2,NULL),(3464,119,47,2,NULL),(3465,116,55,2,NULL),(3466,65,49,2,NULL),(3467,122,47,2,NULL),(3468,119,55,2,NULL),(3469,66,49,2,NULL),(3470,124,47,2,NULL),(3471,122,55,2,NULL),(3472,69,49,2,NULL),(3473,182,47,2,NULL),(3474,124,55,2,NULL),(3475,70,49,2,NULL),(3476,216,47,2,NULL),(3477,182,55,2,NULL),(3478,75,49,2,NULL),(3479,225,47,2,NULL),(3480,216,55,2,NULL),(3481,76,49,2,NULL),(3482,231,47,2,NULL),(3483,225,55,2,NULL),(3484,82,49,2,NULL),(3485,237,47,2,NULL),(3486,231,55,2,NULL),(3487,166,49,2,NULL),(3488,238,47,2,NULL),(3489,237,55,2,NULL),(3490,61,50,2,NULL),(3491,241,47,2,NULL),(3492,238,55,2,NULL),(3493,65,50,2,NULL),(3494,98,47,2,NULL),(3495,241,55,2,NULL),(3496,66,50,2,NULL),(3497,98,55,2,NULL),(3498,69,50,2,NULL),(3499,86,13,2,NULL),(3500,86,16,2,NULL),(3501,70,50,2,NULL),(3502,2,60,2,NULL),(3503,86,39,2,NULL),(3504,3,60,2,NULL),(3505,75,50,2,NULL),(3506,86,47,2,NULL),(3507,4,60,2,NULL),(3508,76,50,2,NULL),(3509,5,60,2,NULL),(3510,82,50,2,NULL),(3511,2,48,2,NULL),(3512,6,60,2,NULL),(3513,3,48,2,NULL),(3514,166,50,2,NULL),(3515,7,60,2,NULL),(3516,4,48,2,NULL),(3517,61,51,2,NULL),(3518,8,60,2,NULL),(3519,5,48,2,NULL),(3520,65,51,2,NULL),(3521,9,60,2,NULL),(3522,6,48,2,NULL),(3523,66,51,2,NULL),(3524,7,48,2,NULL),(3525,69,51,2,NULL),(3526,113,60,2,NULL),(3527,8,48,2,NULL),(3528,70,51,2,NULL),(3529,116,60,2,NULL),(3530,9,48,2,NULL),(3531,119,60,2,NULL),(3532,75,51,2,NULL),(3533,122,60,2,NULL),(3534,76,51,2,NULL),(3535,61,48,2,NULL),(3536,124,60,2,NULL),(3537,65,48,2,NULL),(3538,82,51,2,NULL),(3539,182,60,2,NULL),(3540,166,51,2,NULL),(3541,66,48,2,NULL),(3542,216,60,2,NULL),(3543,69,48,2,NULL),(3544,61,52,2,NULL),(3545,225,60,2,NULL),(3546,70,48,2,NULL),(3547,65,52,2,NULL),(3548,231,60,2,NULL),(3549,66,52,2,NULL),(3550,75,48,2,NULL),(3551,237,60,2,NULL),(3552,76,48,2,NULL),(3553,69,52,2,NULL),(3554,238,60,2,NULL),(3555,82,48,2,NULL),(3556,70,52,2,NULL),(3557,241,60,2,NULL),(3558,166,48,2,NULL),(3559,75,52,2,NULL),(3560,98,60,2,NULL),(3561,113,48,2,NULL),(3562,76,52,2,NULL),(3563,82,52,2,NULL),(3564,116,48,2,NULL),(3565,2,79,2,NULL),(3566,166,52,2,NULL),(3567,3,79,2,NULL),(3568,119,48,2,NULL),(3569,61,53,2,NULL),(3570,4,79,2,NULL),(3571,122,48,2,NULL),(3572,65,53,2,NULL),(3573,5,79,2,NULL),(3574,124,48,2,NULL),(3575,66,53,2,NULL),(3576,6,79,2,NULL),(3577,182,48,2,NULL),(3578,69,53,2,NULL),(3579,7,79,2,NULL),(3580,216,48,2,NULL),(3581,70,53,2,NULL),(3582,8,79,2,NULL),(3583,225,48,2,NULL),(3584,75,53,2,NULL),(3585,9,79,2,NULL),(3586,231,48,2,NULL),(3587,76,53,2,NULL),(3588,237,48,2,NULL),(3589,82,53,2,NULL),(3590,238,48,2,NULL),(3591,113,79,2,NULL),(3592,166,53,2,NULL),(3593,241,48,2,NULL),(3594,116,79,2,NULL),(3595,119,79,2,NULL),(3596,98,48,2,NULL),(3597,122,79,2,NULL),(3598,124,79,2,NULL),(3599,2,57,2,NULL),(3600,3,57,2,NULL),(3601,61,20,2,NULL),(3602,182,79,2,NULL),(3603,4,57,2,NULL),(3604,216,79,2,NULL),(3605,65,20,2,NULL),(3606,5,57,2,NULL),(3607,225,79,2,NULL),(3608,66,20,2,NULL),(3609,6,57,2,NULL),(3610,231,79,2,NULL),(3611,69,20,2,NULL),(3612,7,57,2,NULL),(3613,237,79,2,NULL),(3614,70,20,2,NULL),(3615,8,57,2,NULL),(3616,75,20,2,NULL),(3617,238,79,2,NULL),(3618,9,57,2,NULL),(3619,241,79,2,NULL),(3620,76,20,2,NULL),(3621,82,20,2,NULL),(3622,98,79,2,NULL),(3623,61,57,2,NULL),(3624,166,20,2,NULL),(3625,61,31,2,NULL),(3626,65,57,2,NULL),(3627,65,31,2,NULL),(3628,66,57,2,NULL),(3629,66,31,2,NULL),(3630,69,57,2,NULL),(3631,69,31,2,NULL),(3632,70,57,2,NULL),(3633,70,31,2,NULL),(3634,75,57,2,NULL),(3635,75,31,2,NULL),(3636,76,57,2,NULL),(3637,76,31,2,NULL),(3638,82,57,2,NULL),(3639,82,31,2,NULL),(3640,166,57,2,NULL),(3641,166,31,2,NULL),(3642,113,57,2,NULL),(3643,61,35,2,NULL),(3644,116,57,2,NULL),(3645,65,35,2,NULL),(3646,119,57,2,NULL),(3647,66,35,2,NULL),(3648,122,57,2,NULL),(3649,69,35,2,NULL),(3650,124,57,2,NULL),(3651,70,35,2,NULL),(3652,182,57,2,NULL),(3653,75,35,2,NULL),(3654,216,57,2,NULL),(3655,76,35,2,NULL),(3656,225,57,2,NULL),(3657,82,35,2,NULL),(3658,231,57,2,NULL),(3659,166,35,2,NULL),(3660,237,57,2,NULL),(3661,61,38,2,NULL),(3662,238,57,2,NULL),(3663,65,38,2,NULL),(3664,241,57,2,NULL),(3665,66,38,2,NULL),(3666,98,57,2,NULL),(3667,69,38,2,NULL),(3668,2,63,2,NULL),(3669,70,38,2,NULL),(3670,3,63,2,NULL),(3671,75,38,2,NULL),(3672,4,63,2,NULL),(3673,76,38,2,NULL),(3674,5,63,2,NULL),(3675,82,38,2,NULL),(3676,6,63,2,NULL),(3677,166,38,2,NULL),(3678,7,63,2,NULL),(3679,8,63,2,NULL),(3680,61,68,2,NULL),(3681,9,63,2,NULL),(3682,65,68,2,NULL),(3683,61,63,2,NULL),(3684,66,68,2,NULL),(3685,65,63,2,NULL),(3686,69,68,2,NULL),(3687,66,63,2,NULL),(3688,70,68,2,NULL),(3689,69,63,2,NULL),(3690,75,68,2,NULL),(3691,70,63,2,NULL),(3692,76,68,2,NULL),(3693,75,63,2,NULL),(3694,82,68,2,NULL),(3695,76,63,2,NULL),(3696,166,68,2,NULL),(3697,82,63,2,NULL),(3698,61,71,2,NULL),(3699,166,63,2,NULL),(3700,65,71,2,NULL),(3701,113,63,2,NULL),(3702,66,71,2,NULL),(3703,116,63,2,NULL),(3704,69,71,2,NULL),(3705,119,63,2,NULL),(3706,70,71,2,NULL),(3707,122,63,2,NULL),(3708,75,71,2,NULL),(3709,124,63,2,NULL),(3710,76,71,2,NULL),(3711,182,63,2,NULL),(3712,82,71,2,NULL),(3713,216,63,2,NULL),(3714,166,71,2,NULL),(3715,225,63,2,NULL),(3716,61,72,2,NULL),(3717,231,63,2,NULL),(3718,65,72,2,NULL),(3719,237,63,2,NULL),(3720,66,72,2,NULL),(3721,238,63,2,NULL),(3722,69,72,2,NULL),(3723,241,63,2,NULL),(3724,70,72,2,NULL),(3725,98,63,2,NULL),(3726,75,72,2,NULL),(3727,2,95,2,NULL),(3728,76,72,2,NULL),(3729,3,95,2,NULL),(3730,82,72,2,NULL),(3731,4,95,2,NULL),(3732,5,95,2,NULL),(3733,166,72,2,NULL),(3734,6,95,2,NULL),(3735,61,25,2,NULL),(3736,7,95,2,NULL),(3737,65,25,2,NULL),(3738,8,95,2,NULL),(3739,66,25,2,NULL),(3740,9,95,2,NULL),(3741,69,25,2,NULL),(3742,61,95,2,NULL),(3743,70,25,2,NULL),(3744,65,95,2,NULL),(3745,75,25,2,NULL),(3746,66,95,2,NULL),(3747,76,25,2,NULL),(3748,69,95,2,NULL),(3749,82,25,2,NULL),(3750,70,95,2,NULL),(3751,166,25,2,NULL),(3752,75,95,2,NULL),(3753,113,18,2,NULL),(3754,76,95,2,NULL),(3755,116,18,2,NULL),(3756,82,95,2,NULL),(3757,119,18,2,NULL),(3758,166,95,2,NULL),(3759,122,18,2,NULL),(3760,113,95,2,NULL),(3761,124,18,2,NULL),(3762,116,95,2,NULL),(3763,182,18,2,NULL),(3764,119,95,2,NULL),(3765,216,18,2,NULL),(3766,122,95,2,NULL),(3767,225,18,2,NULL),(3768,124,95,2,NULL),(3769,231,18,2,NULL),(3770,182,95,2,NULL),(3771,237,18,2,NULL),(3772,216,95,2,NULL),(3773,238,18,2,NULL),(3774,225,95,2,NULL),(3775,241,18,2,NULL),(3776,231,95,2,NULL),(3777,98,18,2,NULL),(3778,237,95,2,NULL),(3779,61,36,2,NULL),(3780,238,95,2,NULL),(3781,65,36,2,NULL),(3782,241,95,2,NULL),(3783,66,36,2,NULL),(3784,98,95,2,NULL),(3785,69,36,2,NULL),(3786,2,96,2,NULL),(3787,70,36,2,NULL),(3788,3,96,2,NULL),(3789,75,36,2,NULL),(3790,4,96,2,NULL),(3791,76,36,2,NULL),(3792,5,96,2,NULL),(3793,82,36,2,NULL),(3794,6,96,2,NULL),(3795,166,36,2,NULL),(3796,7,96,2,NULL),(3797,61,39,2,NULL),(3798,8,96,2,NULL),(3799,65,39,2,NULL),(3800,9,96,2,NULL),(3801,66,39,2,NULL),(3802,61,96,2,NULL),(3803,69,39,2,NULL),(3804,65,96,2,NULL),(3805,70,39,2,NULL),(3806,66,96,2,NULL),(3807,75,39,2,NULL),(3808,69,96,2,NULL),(3809,76,39,2,NULL),(3810,70,96,2,NULL),(3811,82,39,2,NULL),(3812,75,96,2,NULL),(3813,166,39,2,NULL),(3814,76,96,2,NULL),(3815,61,41,2,NULL),(3816,82,96,2,NULL),(3817,65,41,2,NULL),(3818,166,96,2,NULL),(3819,66,41,2,NULL),(3820,113,96,2,NULL),(3821,69,41,2,NULL),(3822,116,96,2,NULL),(3823,70,41,2,NULL),(3824,119,96,2,NULL),(3825,75,41,2,NULL),(3826,122,96,2,NULL),(3827,76,41,2,NULL),(3828,124,96,2,NULL),(3829,82,41,2,NULL),(3830,182,96,2,NULL),(3831,166,41,2,NULL),(3832,216,96,2,NULL),(3833,61,61,2,NULL),(3834,225,96,2,NULL),(3835,65,61,2,NULL),(3836,231,96,2,NULL),(3837,66,61,2,NULL),(3838,237,96,2,NULL),(3839,69,61,2,NULL),(3840,238,96,2,NULL),(3841,70,61,2,NULL),(3842,241,96,2,NULL),(3843,75,61,2,NULL),(3844,98,96,2,NULL),(3845,76,61,2,NULL),(3846,82,61,2,NULL),(3847,2,97,2,NULL),(3848,166,61,2,NULL),(3849,3,97,2,NULL),(3850,61,70,2,NULL),(3851,4,97,2,NULL),(3852,65,70,2,NULL),(3853,5,97,2,NULL),(3854,66,70,2,NULL),(3855,6,97,2,NULL),(3856,69,70,2,NULL),(3857,7,97,2,NULL),(3858,70,70,2,NULL),(3859,8,97,2,NULL),(3860,75,70,2,NULL),(3861,9,97,2,NULL),(3862,76,70,2,NULL),(3863,61,97,2,NULL),(3864,82,70,2,NULL),(3865,65,97,2,NULL),(3866,166,70,2,NULL),(3867,66,97,2,NULL),(3868,61,74,2,NULL),(3869,69,97,2,NULL),(3870,65,74,2,NULL),(3871,70,97,2,NULL),(3872,66,74,2,NULL),(3873,75,97,2,NULL),(3874,69,74,2,NULL),(3875,76,97,2,NULL),(3876,70,74,2,NULL),(3877,82,97,2,NULL),(3878,75,74,2,NULL),(3879,166,97,2,NULL),(3880,76,74,2,NULL),(3881,113,97,2,NULL),(3882,82,74,2,NULL),(3883,116,97,2,NULL),(3884,166,74,2,NULL),(3885,119,97,2,NULL),(3886,61,91,2,NULL),(3887,122,97,2,NULL),(3888,65,91,2,NULL),(3889,124,97,2,NULL),(3890,66,91,2,NULL),(3891,182,97,2,NULL),(3892,69,91,2,NULL),(3893,216,97,2,NULL),(3894,70,91,2,NULL),(3895,225,97,2,NULL),(3896,75,91,2,NULL),(3897,231,97,2,NULL),(3898,76,91,2,NULL),(3899,237,97,2,NULL),(3900,82,91,2,NULL),(3901,238,97,2,NULL),(3902,166,91,2,NULL),(3903,241,97,2,NULL),(3904,61,93,2,NULL),(3905,98,97,2,NULL),(3906,65,93,2,NULL),(3907,66,93,2,NULL),(3908,69,93,2,NULL),(3909,70,93,2,NULL),(3910,75,93,2,NULL),(3911,76,93,2,NULL),(3912,82,93,2,NULL),(3913,166,93,2,NULL),(3914,2,20,2,NULL),(3915,3,20,2,NULL),(3916,4,20,2,NULL),(3917,5,20,2,NULL),(3918,6,20,2,NULL),(3919,7,20,2,NULL),(3920,8,20,2,NULL),(3921,9,20,2,NULL),(3922,113,20,2,NULL),(3923,116,20,2,NULL),(3924,119,20,2,NULL),(3925,122,20,2,NULL),(3926,124,20,2,NULL),(3927,182,20,2,NULL),(3928,216,20,2,NULL),(3929,225,20,2,NULL),(3930,231,20,2,NULL),(3931,237,20,2,NULL),(3932,238,20,2,NULL),(3933,241,20,2,NULL),(3934,98,20,2,NULL),(3935,2,31,2,NULL),(3936,3,31,2,NULL),(3937,4,31,2,NULL),(3938,5,31,2,NULL),(3939,6,31,2,NULL),(3940,7,31,2,NULL),(3941,8,31,2,NULL),(3942,9,31,2,NULL),(3943,113,31,2,NULL),(3944,116,31,2,NULL),(3945,119,31,2,NULL),(3946,122,31,2,NULL),(3947,124,31,2,NULL),(3948,182,31,2,NULL),(3949,216,31,2,NULL),(3950,225,31,2,NULL),(3951,231,31,2,NULL),(3952,237,31,2,NULL),(3953,238,31,2,NULL),(3954,241,31,2,NULL),(3955,98,31,2,NULL),(3956,2,35,2,NULL),(3957,3,35,2,NULL),(3958,4,35,2,NULL),(3959,5,35,2,NULL),(3960,6,35,2,NULL),(3961,7,35,2,NULL),(3962,8,35,2,NULL),(3963,9,35,2,NULL),(3964,113,35,2,NULL),(3965,116,35,2,NULL),(3966,119,35,2,NULL),(3967,122,35,2,NULL),(3968,124,35,2,NULL),(3969,182,35,2,NULL),(3970,216,35,2,NULL),(3971,225,35,2,NULL),(3972,231,35,2,NULL),(3973,237,35,2,NULL),(3974,238,35,2,NULL),(3975,241,35,2,NULL),(3976,98,35,2,NULL),(3977,2,38,2,NULL),(3978,3,38,2,NULL),(3979,4,38,2,NULL),(3980,5,38,2,NULL),(3981,6,38,2,NULL),(3982,7,38,2,NULL),(3983,8,38,2,NULL),(3984,9,38,2,NULL),(3985,113,38,2,NULL),(3986,116,38,2,NULL),(3987,119,38,2,NULL),(3988,122,38,2,NULL),(3989,124,38,2,NULL),(3990,182,38,2,NULL),(3991,216,38,2,NULL),(3992,225,38,2,NULL),(3993,231,38,2,NULL),(3994,237,38,2,NULL),(3995,238,38,2,NULL),(3996,241,38,2,NULL),(3997,98,38,2,NULL),(3998,2,68,2,NULL),(3999,3,68,2,NULL),(4000,4,68,2,NULL),(4001,5,68,2,NULL),(4002,6,68,2,NULL),(4003,7,68,2,NULL),(4004,8,68,2,NULL),(4005,9,68,2,NULL),(4006,113,68,2,NULL),(4007,116,68,2,NULL),(4008,119,68,2,NULL),(4009,122,68,2,NULL),(4010,124,68,2,NULL),(4011,182,68,2,NULL),(4012,216,68,2,NULL),(4013,225,68,2,NULL),(4014,231,68,2,NULL),(4015,237,68,2,NULL),(4016,238,68,2,NULL),(4017,241,68,2,NULL),(4018,98,68,2,NULL),(4019,2,71,2,NULL),(4020,3,71,2,NULL),(4021,4,71,2,NULL),(4022,5,71,2,NULL),(4023,6,71,2,NULL),(4024,7,71,2,NULL),(4025,8,71,2,NULL),(4026,9,71,2,NULL),(4027,113,71,2,NULL),(4028,116,71,2,NULL),(4029,119,71,2,NULL),(4030,122,71,2,NULL),(4031,124,71,2,NULL),(4032,182,71,2,NULL),(4033,216,71,2,NULL),(4034,225,71,2,NULL),(4035,231,71,2,NULL),(4036,237,71,2,NULL),(4037,238,71,2,NULL),(4038,241,71,2,NULL),(4039,98,71,2,NULL),(4040,2,72,2,NULL),(4041,3,72,2,NULL),(4042,4,72,2,NULL),(4043,5,72,2,NULL),(4044,6,72,2,NULL),(4045,7,72,2,NULL),(4046,8,72,2,NULL),(4047,9,72,2,NULL),(4048,113,72,2,NULL),(4049,116,72,2,NULL),(4050,119,72,2,NULL),(4051,122,72,2,NULL),(4052,124,72,2,NULL),(4053,182,72,2,NULL),(4054,216,72,2,NULL),(4055,225,72,2,NULL),(4056,231,72,2,NULL),(4057,237,72,2,NULL),(4058,238,72,2,NULL),(4059,241,72,2,NULL),(4060,98,72,2,NULL),(4061,79,6,2,NULL),(4062,79,12,2,NULL),(4063,79,32,2,NULL),(4064,79,44,2,NULL),(4065,218,6,2,NULL),(4066,218,12,2,NULL),(4067,218,32,2,NULL),(4068,218,44,2,NULL),(4069,227,8,2,NULL),(4070,227,14,2,NULL),(4071,227,36,2,NULL),(4072,227,46,2,NULL),(4073,228,8,2,NULL),(4074,228,14,2,NULL),(4075,228,36,2,NULL),(4076,228,46,2,NULL),(4077,233,8,2,NULL),(4078,233,14,2,NULL),(4079,233,36,2,NULL),(4080,233,46,2,NULL),(4081,235,8,2,NULL),(4082,235,14,2,NULL),(4083,235,36,2,NULL),(4084,235,46,2,NULL),(4085,240,8,2,NULL),(4086,240,14,2,NULL),(4087,240,36,2,NULL),(4088,240,46,2,NULL),(4089,2,25,2,NULL),(4090,3,25,2,NULL),(4091,4,25,2,NULL),(4092,5,25,2,NULL),(4093,6,25,2,NULL),(4094,7,25,2,NULL),(4095,8,25,2,NULL),(4096,9,25,2,NULL),(4097,113,3,2,NULL),(4098,116,3,2,NULL),(4099,119,3,2,NULL),(4100,122,3,2,NULL),(4101,124,3,2,NULL),(4102,182,3,2,NULL),(4103,216,3,2,NULL),(4104,225,3,2,NULL),(4105,231,3,2,NULL),(4106,237,3,2,NULL),(4107,238,3,2,NULL),(4108,241,3,2,NULL),(4109,113,9,2,NULL),(4110,116,9,2,NULL),(4111,119,9,2,NULL),(4112,122,9,2,NULL),(4113,124,9,2,NULL),(4114,182,9,2,NULL),(4115,216,9,2,NULL),(4116,225,9,2,NULL),(4117,231,9,2,NULL),(4118,237,9,2,NULL),(4119,238,9,2,NULL),(4120,241,9,2,NULL),(4121,113,49,2,NULL),(4122,116,49,2,NULL),(4123,119,49,2,NULL),(4124,122,49,2,NULL),(4125,124,49,2,NULL),(4126,182,49,2,NULL),(4127,216,49,2,NULL),(4128,225,49,2,NULL),(4129,11,3,2,NULL),(4130,231,49,2,NULL),(4131,237,49,2,NULL),(4132,238,49,2,NULL),(4133,2,3,2,NULL),(4134,241,49,2,NULL),(4135,3,3,2,NULL),(4136,113,50,2,NULL),(4137,4,3,2,NULL),(4138,116,50,2,NULL),(4139,5,3,2,NULL),(4140,119,50,2,NULL),(4141,6,3,2,NULL),(4142,122,50,2,NULL),(4143,7,3,2,NULL),(4144,124,50,2,NULL),(4145,8,3,2,NULL),(4146,182,50,2,NULL),(4147,9,3,2,NULL),(4148,216,50,2,NULL),(4149,2,9,2,NULL),(4150,225,50,2,NULL),(4151,3,9,2,NULL),(4152,231,50,2,NULL),(4153,4,9,2,NULL),(4154,237,50,2,NULL),(4155,5,9,2,NULL),(4156,238,50,2,NULL),(4157,6,9,2,NULL),(4158,241,50,2,NULL),(4159,7,9,2,NULL),(4160,113,51,2,NULL),(4161,8,9,2,NULL),(4162,116,51,2,NULL),(4163,9,9,2,NULL),(4164,119,51,2,NULL),(4165,2,49,2,NULL),(4166,122,51,2,NULL),(4167,3,49,2,NULL),(4168,124,51,2,NULL),(4169,4,49,2,NULL),(4170,182,51,2,NULL),(4171,5,49,2,NULL),(4172,216,51,2,NULL),(4173,6,49,2,NULL),(4174,225,51,2,NULL),(4175,7,49,2,NULL),(4176,231,51,2,NULL),(4177,8,49,2,NULL),(4178,237,51,2,NULL),(4179,9,49,2,NULL),(4180,238,51,2,NULL),(4181,2,50,2,NULL),(4182,241,51,2,NULL),(4183,3,50,2,NULL),(4184,113,52,2,NULL),(4185,4,50,2,NULL),(4186,116,52,2,NULL),(4187,5,50,2,NULL),(4188,119,52,2,NULL),(4189,6,50,2,NULL),(4190,122,52,2,NULL),(4191,7,50,2,NULL),(4192,124,52,2,NULL),(4193,8,50,2,NULL),(4194,182,52,2,NULL),(4195,9,50,2,NULL),(4196,216,52,2,NULL),(4197,2,51,2,NULL),(4198,225,52,2,NULL),(4199,3,51,2,NULL),(4200,231,52,2,NULL),(4201,4,51,2,NULL),(4202,237,52,2,NULL),(4203,5,51,2,NULL),(4204,238,52,2,NULL),(4205,6,51,2,NULL),(4206,241,52,2,NULL),(4207,7,51,2,NULL),(4208,113,53,2,NULL),(4209,8,51,2,NULL),(4210,116,53,2,NULL),(4211,9,51,2,NULL),(4212,119,53,2,NULL),(4213,2,52,2,NULL),(4214,122,53,2,NULL),(4215,3,52,2,NULL),(4216,124,53,2,NULL),(4217,4,52,2,NULL),(4218,182,53,2,NULL),(4219,5,52,2,NULL),(4220,216,53,2,NULL),(4221,6,52,2,NULL),(4222,225,53,2,NULL),(4223,7,52,2,NULL),(4224,231,53,2,NULL),(4225,8,52,2,NULL),(4226,237,53,2,NULL),(4227,9,52,2,NULL),(4228,238,53,2,NULL),(4229,2,53,2,NULL),(4230,241,53,2,NULL),(4231,3,53,2,NULL),(4232,4,53,2,NULL),(4233,5,53,2,NULL),(4234,6,53,2,NULL),(4235,7,53,2,NULL),(4236,8,53,2,NULL),(4237,9,53,2,NULL),(4238,98,25,2,NULL),(4239,113,36,2,NULL),(4240,2,36,2,NULL),(4241,116,36,2,NULL),(4242,3,36,2,NULL),(4243,119,36,2,NULL),(4244,4,36,2,NULL),(4245,122,36,2,NULL),(4246,5,36,2,NULL),(4247,124,36,2,NULL),(4248,6,36,2,NULL),(4249,182,36,2,NULL),(4250,7,36,2,NULL),(4251,216,36,2,NULL),(4252,8,36,2,NULL),(4253,225,36,2,NULL),(4254,9,36,2,NULL),(4255,231,36,2,NULL),(4256,2,39,2,NULL),(4257,237,36,2,NULL),(4258,3,39,2,NULL),(4259,238,36,2,NULL),(4260,4,39,2,NULL),(4261,241,36,2,NULL),(4262,5,39,2,NULL),(4263,113,39,2,NULL),(4264,6,39,2,NULL),(4265,116,39,2,NULL),(4266,7,39,2,NULL),(4267,119,39,2,NULL),(4268,8,39,2,NULL),(4269,122,39,2,NULL),(4270,9,39,2,NULL),(4271,124,39,2,NULL),(4272,2,41,2,NULL),(4273,182,39,2,NULL),(4274,3,41,2,NULL),(4275,216,39,2,NULL),(4276,4,41,2,NULL),(4277,225,39,2,NULL),(4278,5,41,2,NULL),(4279,231,39,2,NULL),(4280,6,41,2,NULL),(4281,237,39,2,NULL),(4282,7,41,2,NULL),(4283,238,39,2,NULL),(4284,8,41,2,NULL),(4285,241,39,2,NULL),(4286,9,41,2,NULL),(4287,113,41,2,NULL),(4288,2,61,2,NULL),(4289,116,41,2,NULL),(4290,3,61,2,NULL),(4291,119,41,2,NULL),(4292,4,61,2,NULL),(4293,122,41,2,NULL),(4294,5,61,2,NULL),(4295,124,41,2,NULL),(4296,6,61,2,NULL),(4297,182,41,2,NULL),(4298,7,61,2,NULL),(4299,216,41,2,NULL),(4300,8,61,2,NULL),(4301,225,41,2,NULL),(4302,9,61,2,NULL),(4303,231,41,2,NULL),(4304,2,70,2,NULL),(4305,237,41,2,NULL),(4306,3,70,2,NULL),(4307,238,41,2,NULL),(4308,4,70,2,NULL),(4309,241,41,2,NULL),(4310,5,70,2,NULL),(4311,113,61,2,NULL),(4312,6,70,2,NULL),(4313,116,61,2,NULL),(4314,7,70,2,NULL),(4315,119,61,2,NULL),(4316,8,70,2,NULL),(4317,122,61,2,NULL),(4318,9,70,2,NULL),(4319,124,61,2,NULL),(4320,2,74,2,NULL),(4321,182,61,2,NULL),(4322,3,74,2,NULL),(4323,216,61,2,NULL),(4324,4,74,2,NULL),(4325,225,61,2,NULL),(4326,5,74,2,NULL),(4327,231,61,2,NULL),(4328,6,74,2,NULL),(4329,237,61,2,NULL),(4330,7,74,2,NULL),(4331,238,61,2,NULL),(4332,8,74,2,NULL),(4333,241,61,2,NULL),(4334,9,74,2,NULL),(4335,113,70,2,NULL),(4336,2,91,2,NULL),(4337,116,70,2,NULL),(4338,3,91,2,NULL),(4339,119,70,2,NULL),(4340,4,91,2,NULL),(4341,122,70,2,NULL),(4342,5,91,2,NULL),(4343,124,70,2,NULL),(4344,6,91,2,NULL),(4345,182,70,2,NULL),(4346,7,91,2,NULL),(4347,216,70,2,NULL),(4348,8,91,2,NULL),(4349,225,70,2,NULL),(4350,9,91,2,NULL),(4351,231,70,2,NULL),(4352,2,93,2,NULL),(4353,237,70,2,NULL),(4354,3,93,2,NULL),(4355,238,70,2,NULL),(4356,4,93,2,NULL),(4357,241,70,2,NULL),(4358,5,93,2,NULL),(4359,113,74,2,NULL),(4360,6,93,2,NULL),(4361,116,74,2,NULL),(4362,7,93,2,NULL),(4363,119,74,2,NULL),(4364,8,93,2,NULL),(4365,122,74,2,NULL),(4366,9,93,2,NULL),(4367,124,74,2,NULL),(4368,182,74,2,NULL),(4369,216,74,2,NULL),(4370,225,74,2,NULL),(4371,10,1,2,NULL),(4372,231,74,2,NULL),(4373,237,74,2,NULL),(4374,238,74,2,NULL),(4375,241,74,2,NULL),(4376,98,3,2,NULL),(4377,113,91,2,NULL),(4378,116,91,2,NULL),(4379,98,9,2,NULL),(4380,119,91,2,NULL),(4381,122,91,2,NULL),(4382,124,91,2,NULL),(4383,182,91,2,NULL),(4384,216,91,2,NULL),(4385,98,49,2,NULL),(4386,225,91,2,NULL),(4387,231,91,2,NULL),(4388,237,91,2,NULL),(4389,238,91,2,NULL),(4390,241,91,2,NULL),(4391,113,93,2,NULL),(4392,98,50,2,NULL),(4393,116,93,2,NULL),(4394,119,93,2,NULL),(4395,122,93,2,NULL),(4396,98,51,2,NULL),(4397,124,93,2,NULL),(4398,182,93,2,NULL),(4399,216,93,2,NULL),(4400,225,93,2,NULL),(4401,231,93,2,NULL),(4402,237,93,2,NULL),(4403,238,93,2,NULL),(4404,98,52,2,NULL),(4405,241,93,2,NULL),(4406,98,53,2,NULL),(4407,98,36,2,NULL),(4408,98,39,2,NULL),(4409,98,41,2,NULL),(4410,98,61,2,NULL),(4411,98,70,2,NULL),(4412,98,74,2,NULL),(4413,98,91,2,NULL),(4414,98,93,2,NULL),(4415,195,13,2,NULL),(4416,195,16,2,NULL),(4417,195,39,2,NULL),(4418,195,47,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProviderLinks`
--

LOCK TABLES `ProviderLinks` WRITE;
/*!40000 ALTER TABLE `ProviderLinks` DISABLE KEYS */;
INSERT INTO `ProviderLinks` VALUES (1,19,37,NULL),(2,19,40,NULL),(3,27,37,NULL),(4,27,40,NULL),(5,80,37,NULL),(6,80,40,NULL),(7,33,37,NULL),(8,33,40,NULL),(9,81,37,NULL),(10,81,40,NULL),(11,18,37,NULL),(12,31,37,NULL),(13,64,37,NULL),(14,35,37,NULL),(15,65,37,NULL),(16,18,40,NULL),(17,31,40,NULL),(18,64,40,NULL),(19,35,40,NULL),(20,65,40,NULL);
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

-- Dump completed on 2015-10-12  3:30:43
