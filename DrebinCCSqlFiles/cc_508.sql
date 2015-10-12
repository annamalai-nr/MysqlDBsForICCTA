-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_508
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
INSERT INTO `ActionStrings` VALUES (29,'SMS_SEND_ACTIOIN'),(6,'android.intent.action.BOOT_COMPLETED'),(26,'android.intent.action.CHOOSER'),(33,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(22,'android.intent.action.PACKAGE_ADDED'),(36,'android.intent.action.PACKAGE_CHANGED'),(37,'android.intent.action.PACKAGE_REMOVED'),(27,'android.intent.action.SCREEN_OFF'),(28,'android.intent.action.SCREEN_ON'),(7,'android.intent.action.SET_WALLPAPER'),(12,'android.intent.action.VIEW'),(35,'android.intent.action.WALLPAPER_CHANGED'),(34,'android.net.conn.CONNECTIVITY_CHANGE'),(13,'android.provider.Telephony.SMS_RECEIVED'),(14,'android.provider.Telephony.WAP_PUSH_RECEIVED'),(30,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(15,'android.settings.WIRELESS_SETTINGS'),(32,'com.android.contacts.action.FILTER_CONTACTS'),(8,'com.android.launcher.action.INSTALL_SHORTCUT'),(9,'com.android.launcher.action.UNINSTALL_SHORTCUT'),(25,'com.jx.Action_CopyResError'),(20,'com.jx.MainActivity.CostInfo'),(10,'com.jx.MainActivity.ErrorInfo'),(23,'com.jx.MainActivity.InstallConfirmInfo'),(21,'com.jx.MainActivity.OpenLWP'),(24,'com.jx.MainActivity.RepeateInstall'),(16,'com.jx.MainActivity.SaveID'),(19,'com.jx.action.ExitBootReceiver'),(18,'com.jx.ad.ADService.ConfirmInstallInfo'),(2,'com.jx.ad.ADService.Init'),(31,'com.jx.ad.ADService.InitHasUpdate'),(17,'com.jx.ad.ADService.InstallRes'),(3,'com.jx.ad.ADService.Run'),(4,'com.jx.ad.ADService.RunCancel'),(11,'com.jx.ad.BootSmsReceiverService.Exit'),(5,'com.jx.ad.BootSmsReceiverService.Start');
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
INSERT INTO `Applications` VALUES (1,'com.jx.theme.n2026947500',1),(2,'com.km.launcher',NULL),(3,'com.km.launcher',1),(4,'com.jx.theme.n678504952',1),(5,'com.jx.theme.n5603984',1),(6,'com.jx.theme.n2132637529',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.jx.MainActivity'),(2,1,'com.jx.SettingActivity'),(3,1,'com.jx.WelcomeActivity'),(4,1,'com.jx.ad.AndroidThemeService'),(5,1,'com.jx.ad.BootSmsReceiverService'),(6,1,'com.jx.ad.BootReceiver'),(7,2,'com.km.launcher.Launcher'),(8,3,'com.km.launcher.Launcher'),(9,4,'com.jx.MainActivity'),(10,3,'com.km.launcher.WallpaperChooser'),(11,2,'com.km.launcher.WallpaperChooser'),(12,4,'com.jx.SettingActivity'),(13,4,'com.jx.WelcomeActivity'),(14,2,'com.km.theme.ThemeListActivity'),(15,3,'com.km.theme.ThemeListActivity'),(16,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(17,2,'com.km.charge.MainActivity'),(18,3,'com.km.charge.MainActivity'),(19,4,'com.jx.ad.AndroidThemeService'),(20,2,'com.km.launcher.InstallShortcutReceiver'),(21,3,'com.km.ad.AdService'),(22,3,'com.km.charge.CycleService'),(23,3,'com.km.launcher.InstallShortcutReceiver'),(24,2,'com.km.launcher.UninstallShortcutReceiver'),(25,4,'com.jx.ad.BootSmsReceiverService'),(26,3,'com.km.launcher.UninstallShortcutReceiver'),(27,4,'com.jx.ad.BootReceiver'),(28,2,'com.km.launcher.LauncherProvider'),(29,3,'com.km.charge.BootReceiver'),(30,3,'com.km.launcher.LauncherProvider'),(31,5,'com.jx.MainActivity'),(32,5,'com.jx.SettingActivity'),(33,5,'com.jx.WelcomeActivity'),(34,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(35,5,'com.jx.ad.AndroidThemeService'),(36,6,'com.jx.MainActivity'),(37,5,'com.jx.ad.BootSmsReceiverService'),(38,6,'com.jx.SettingActivity'),(39,5,'com.jx.ad.BootReceiver'),(40,6,'com.jx.WelcomeActivity'),(41,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(42,6,'com.jx.ad.AndroidThemeService'),(43,6,'com.jx.ad.BootSmsReceiverService'),(44,6,'com.jx.ad.BootReceiver'),(45,1,'com.jx.ad.AndroidThemeService$2'),(46,1,'com.jx.SettingActivity$1'),(47,1,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(48,1,'com.jx.ad.AndroidThemeService$SmsReceiver'),(49,1,'com.jx.ad.AndroidThemeService$6'),(50,1,'com.jx.ad.AndroidThemeService$8'),(51,1,'com.jx.ad.AndroidThemeService$5'),(52,1,'com.jx.ad.AndroidThemeService$MMSReceiver'),(53,1,'com.jx.tool.ApnManager'),(54,1,'com.jx.MainActivity$ControlReceiver$1'),(55,1,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(56,1,'com.jx.SettingActivity$6'),(57,1,'com.jx.ad.ServiceControlReciver'),(58,1,'com.jx.ad.AndroidThemeService$7'),(59,4,'com.jx.ad.AndroidThemeService$3'),(60,4,'com.jx.ad.AndroidThemeService$5'),(61,4,'com.jx.tool.ApnManager'),(62,4,'com.jx.ad.AndroidThemeService$7'),(63,5,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(64,6,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(65,6,'com.jx.ad.AndroidThemeService$6'),(66,6,'com.jx.tool.ApnManager'),(67,5,'com.jx.ad.AndroidThemeService$5'),(68,1,'com.jx.MainActivity$ControlReceiver'),(69,6,'com.jx.ad.AndroidThemeService$2'),(70,5,'com.jx.ad.AndroidThemeService$2'),(71,3,'com.km.tool.Util'),(72,6,'com.jx.ad.AndroidThemeService$4'),(73,1,'com.jx.MainActivity$1'),(74,3,'com.km.launcher.LauncherModel'),(75,5,'com.jx.ad.ServiceControlReciver'),(76,4,'com.adwo.adsdk.M'),(77,5,'com.jx.SettingActivity$1'),(78,5,'com.jx.ad.AndroidThemeService$3'),(79,4,'com.jx.ad.AndroidThemeService$8'),(80,1,'com.jx.MainActivity$4'),(81,2,'com.km.tool.ApnManager'),(82,1,'com.jx.ad.AndroidThemeService$4'),(83,2,'com.km.charge.SendMessage$SendMessageReceiver'),(84,5,'com.jx.tool.ApnManager'),(85,6,'com.jx.MainActivity$ControlReceiver$6$1'),(86,2,'com.km.theme.ThemeManager'),(87,5,'com.jx.ad.AndroidThemeService$6'),(88,6,'com.jx.tool.Utility'),(89,4,'com.jx.ad.AndroidThemeService$6'),(90,2,'com.km.launcher.LauncherModel'),(91,5,'com.jx.MainActivity$1'),(92,3,'com.km.ad.AdService$1'),(93,6,'com.jx.MainActivity$4'),(94,1,'com.jx.tool.Utility'),(95,4,'com.jx.tool.Utility'),(96,5,'com.jx.ad.AndroidThemeService$4'),(97,2,'com.km.charge.HttpBox$ConnectivityReceiver'),(98,4,'com.jx.MainActivity$ControlReceiver$6$1'),(99,6,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(100,6,'com.jx.SettingActivity$1'),(101,1,'com.jx.ad.AndroidThemeService$3'),(102,2,'com.km.launcher.Launcher$WallpaperIntentReceiver'),(103,6,'com.jx.ad.AndroidThemeService$8'),(104,3,'com.km.launcher.Search'),(105,6,'com.jx.ad.AndroidThemeService$5'),(106,1,'com.jx.MainActivity$ControlReceiver$6$1'),(107,3,'com.km.charge.HttpBox$ConnectivityReceiver'),(108,3,'com.km.charge.SendMessage$SendMessageReceiver'),(109,5,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(110,3,'com.km.tool.ApnManager'),(111,6,'com.jx.MainActivity$ControlReceiver'),(112,6,'com.jx.ad.ServiceControlReciver'),(113,3,'com.km.charge.HoldMessage'),(114,2,'com.km.charge.HoldMessage'),(115,3,'com.km.launcher.MyAnalogClock$1'),(116,5,'com.jx.MainActivity$4'),(117,2,'com.km.launcher.MyAnalogClock$1'),(118,3,'com.km.launcher.Launcher$WallpaperIntentReceiver'),(119,5,'com.jx.MainActivity$ControlReceiver$1'),(120,2,'com.km.tool.Http$ConnectivityReceiver'),(121,3,'com.km.tool.Http$ConnectivityReceiver'),(122,5,'com.jx.ad.AndroidThemeService$MMSReceiver'),(123,2,'com.km.launcher.Launcher$ApplicationsIntentReceiver'),(124,4,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(125,3,'com.km.launcher.Launcher$ApplicationsIntentReceiver'),(126,6,'com.jx.ad.AndroidThemeService$SmsReceiver'),(127,5,'com.jx.tool.Utility'),(128,4,'com.jx.MainActivity$ControlReceiver'),(129,2,'com.km.launcher.Search'),(130,3,'com.km.theme.ThemeManager'),(131,5,'com.jx.SettingActivity$6'),(132,4,'com.jx.ad.AndroidThemeService$2'),(133,5,'com.jx.MainActivity$ControlReceiver'),(134,5,'com.jx.ad.AndroidThemeService$7'),(135,4,'com.jx.MainActivity$4'),(136,4,'com.jx.ad.AndroidThemeService$SmsReceiver'),(137,5,'com.jx.ad.AndroidThemeService$SmsReceiver'),(138,5,'com.jx.MainActivity$ControlReceiver$6$1'),(139,4,'com.jx.SettingActivity$1'),(140,5,'com.jx.ad.AndroidThemeService$8'),(141,4,'com.jx.MainActivity$1'),(142,4,'com.jx.ad.AndroidThemeService$4'),(143,6,'com.jx.ad.AndroidThemeService$3'),(144,6,'com.jx.MainActivity$ControlReceiver$1'),(145,4,'com.jx.MainActivity$ControlReceiver$1'),(146,5,'com.adwo.adsdk.M'),(147,4,'com.jx.SettingActivity$6'),(148,6,'com.jx.SettingActivity$6'),(149,6,'com.jx.ad.AndroidThemeService$MMSReceiver'),(150,4,'com.jx.ad.ServiceControlReciver'),(151,4,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(152,4,'com.jx.ad.AndroidThemeService$MMSReceiver'),(153,6,'com.jx.ad.AndroidThemeService$7'),(154,6,'com.jx.MainActivity$1'),(155,6,'com.adwo.adsdk.M');
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
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,4,'resownerid'),(2,16,'transitionTime'),(3,16,'shouldResizeOverlay'),(4,41,'overlayTransition'),(5,7,'android.intent.extra.livefolder.ICON'),(6,24,'duplicate'),(7,7,'android.intent.extra.livefolder.BASE_INTENT'),(8,7,'launcher.add_cellY'),(9,20,'android.intent.extra.shortcut.INTENT'),(10,7,'android.intent.extra.shortcut.INTENT'),(11,20,'duplicate'),(12,4,'respid'),(13,7,'launcher.add_occupied_cells'),(14,7,'data'),(15,8,'android.intent.extra.livefolder.NAME'),(16,41,'shouldShowBottomBar'),(17,8,'launcher.add_cellY'),(18,8,'launcher.current_screen'),(19,23,'android.intent.extra.shortcut.ICON'),(20,8,'android.intent.extra.shortcut.ICON'),(21,8,'launcher.add_occupied_cells'),(22,8,'data'),(23,34,'transitionTime'),(24,20,'android.intent.extra.shortcut.ICON'),(25,7,'android.intent.extra.shortcut.ICON'),(26,34,'overlayTitle'),(27,42,'respid'),(28,14,'launcher.all_apps_folder'),(29,17,'launcher.all_apps_folder'),(30,7,'launcher.all_apps_folder'),(31,7,'launcher.add_countX'),(32,34,'shouldShowBottomBar'),(33,41,'shouldEnableBottomBar'),(34,16,'shouldEnableBottomBar'),(35,42,'resownerid'),(36,23,'android.intent.extra.shortcut.ICON_RESOURCE'),(37,8,'android.intent.extra.shortcut.ICON_RESOURCE'),(38,7,'launcher.add_cellX'),(39,20,'android.intent.extra.shortcut.ICON_RESOURCE'),(40,7,'android.intent.extra.shortcut.ICON_RESOURCE'),(41,23,'android.intent.extra.shortcut.NAME'),(42,35,'resownerid'),(43,8,'android.intent.extra.shortcut.NAME'),(44,8,'launcher.add_spanY'),(45,26,'duplicate'),(46,15,'launcher.all_apps_folder'),(47,18,'launcher.all_apps_folder'),(48,8,'launcher.all_apps_folder'),(49,14,'launcher.user_folder'),(50,16,'url'),(51,17,'launcher.user_folder'),(52,7,'launcher.user_folder'),(53,41,'shouldShowTitlebar'),(54,7,'launcher.add_spanX'),(55,7,'launcher.rename_folder'),(56,7,'launcher.current_screen'),(57,34,'shouldResizeOverlay'),(58,20,'android.intent.extra.shortcut.NAME'),(59,7,'launcher.add_countY'),(60,41,'transitionTime'),(61,23,'android.intent.extra.shortcut.INTENT'),(62,7,'launcher.add_screen'),(63,7,'android.intent.extra.shortcut.NAME'),(64,7,'launcher.add_spanY'),(65,34,'shouldMakeOverlayTransparent'),(66,41,'overlayTitle'),(67,34,'overlayTransition'),(68,7,'launcher.rename_folder_id'),(69,24,'android.intent.extra.shortcut.INTENT'),(70,7,'android.intent.extra.livefolder.NAME'),(71,8,'launcher.add_cellX'),(72,8,'android.intent.extra.livefolder.ICON'),(73,24,'android.intent.extra.shortcut.NAME'),(74,8,'launcher.rename_folder'),(75,8,'launcher.rename_folder_id'),(76,26,'android.intent.extra.shortcut.INTENT'),(77,8,'launcher.add_spanX'),(78,26,'android.intent.extra.shortcut.NAME'),(79,34,'shouldShowTitlebar'),(80,8,'launcher.add_countY'),(81,8,'launcher.add_screen'),(82,16,'overlayTransition'),(83,16,'overlayTitle'),(84,34,'shouldEnableBottomBar'),(85,23,'duplicate'),(86,8,'android.intent.extra.shortcut.INTENT'),(87,16,'shouldMakeOverlayTransparent'),(88,15,'launcher.user_folder'),(89,18,'launcher.user_folder'),(90,8,'launcher.user_folder'),(91,8,'launcher.add_countX'),(92,8,'android.intent.extra.livefolder.BASE_INTENT'),(93,16,'shouldShowTitlebar'),(94,19,'resownerid'),(95,19,'respid'),(96,16,'shouldShowBottomBar'),(97,41,'url'),(98,34,'url'),(99,41,'shouldMakeOverlayTransparent'),(100,41,'shouldResizeOverlay'),(101,35,'respid');
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
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'s',1,NULL,NULL),(5,5,'s',1,NULL,NULL),(6,6,'r',1,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'s',1,NULL,NULL),(20,20,'r',1,28,NULL),(21,21,'s',0,NULL,NULL),(22,22,'s',0,NULL,NULL),(23,23,'r',1,28,NULL),(24,24,'r',1,29,NULL),(25,25,'s',1,NULL,NULL),(26,26,'r',1,29,NULL),(27,27,'r',1,NULL,NULL),(28,28,'p',0,NULL,NULL),(29,29,'r',1,NULL,NULL),(30,30,'p',0,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'s',1,NULL,NULL),(36,36,'a',1,NULL,NULL),(37,37,'s',1,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'r',1,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'s',1,NULL,NULL),(43,43,'s',1,NULL,NULL),(44,44,'r',1,NULL,NULL),(45,47,'r',1,NULL,NULL),(46,48,'r',1,NULL,NULL),(47,52,'r',1,NULL,NULL),(48,55,'r',1,NULL,NULL),(49,57,'r',1,NULL,NULL),(50,63,'r',1,NULL,NULL),(51,64,'r',1,NULL,NULL),(52,68,'r',1,NULL,NULL),(53,75,'r',1,NULL,NULL),(54,76,'r',1,NULL,NULL),(55,83,'r',1,NULL,NULL),(56,97,'r',1,NULL,NULL),(57,99,'r',1,NULL,NULL),(58,102,'r',1,NULL,NULL),(59,107,'r',1,NULL,NULL),(60,108,'r',1,NULL,NULL),(61,109,'r',1,NULL,NULL),(62,111,'r',1,NULL,NULL),(63,23,'r',1,NULL,NULL),(64,112,'r',1,NULL,NULL),(65,20,'r',1,NULL,NULL),(66,26,'r',1,NULL,NULL),(67,24,'r',1,NULL,NULL),(68,113,'r',1,NULL,NULL),(69,114,'r',1,NULL,NULL),(70,115,'r',1,NULL,NULL),(71,117,'r',1,NULL,NULL),(72,118,'r',1,NULL,NULL),(73,120,'r',1,NULL,NULL),(74,121,'r',1,NULL,NULL),(75,122,'r',1,NULL,NULL),(76,123,'r',1,NULL,NULL),(77,124,'r',1,NULL,NULL),(78,125,'r',1,NULL,NULL),(79,126,'r',1,NULL,NULL),(80,128,'r',1,NULL,NULL),(81,133,'r',1,NULL,NULL),(82,136,'r',1,NULL,NULL),(83,137,'r',1,NULL,NULL),(84,146,'r',1,NULL,NULL),(85,149,'r',1,NULL,NULL),(86,150,'r',1,NULL,NULL),(87,151,'r',1,NULL,NULL),(88,152,'r',1,NULL,NULL),(89,155,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=318 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,4),(2,2,1),(3,3,4),(4,4,1),(5,5,1),(6,5,3),(7,5,2),(8,6,4),(9,7,4),(10,8,4),(11,9,4),(12,10,4),(13,11,3),(14,11,2),(15,11,1),(16,12,4),(17,13,4),(18,14,2),(19,14,1),(20,14,3),(21,15,4),(22,16,4),(23,17,1),(24,18,1),(25,18,2),(26,18,3),(27,19,19),(28,20,19),(29,21,9),(30,22,19),(31,23,19),(32,24,36),(33,25,35),(34,26,9),(35,27,7),(36,28,42),(37,29,13),(38,30,32),(39,31,20),(40,32,24),(41,33,42),(42,34,35),(43,35,42),(44,36,7),(45,37,26),(46,38,42),(47,39,4),(48,40,35),(49,41,19),(50,42,8),(51,42,29),(52,43,42),(53,44,8),(54,45,1),(55,45,3),(56,45,2),(57,46,8),(58,48,9),(59,47,32),(60,47,33),(61,47,31),(62,49,42),(63,50,2),(64,51,30),(65,52,9),(66,53,35),(67,54,42),(68,56,3),(69,56,2),(70,56,1),(71,55,19),(72,57,8),(73,58,31),(74,59,36),(75,60,17),(76,60,14),(77,61,4),(78,62,14),(79,62,17),(80,64,35),(81,63,9),(82,63,12),(83,63,13),(84,65,42),(85,66,4),(86,67,35),(87,68,38),(88,68,36),(89,68,40),(90,69,14),(91,69,17),(92,70,35),(93,71,3),(94,71,2),(95,73,35),(96,72,7),(97,72,14),(98,74,42),(99,75,4),(100,76,7),(101,76,17),(102,77,38),(103,77,40),(104,77,42),(105,78,19),(106,79,7),(107,80,33),(108,80,31),(109,80,32),(110,81,18),(111,81,15),(112,82,4),(113,83,38),(114,83,40),(115,83,36),(116,85,19),(117,86,18),(118,86,8),(119,84,35),(120,87,24),(121,88,4),(122,89,31),(123,90,24),(124,91,42),(125,92,2),(126,92,4),(127,92,3),(128,93,19),(129,93,13),(130,93,12),(131,94,35),(132,95,36),(133,96,26),(134,97,4),(135,99,8),(136,98,13),(137,98,9),(138,98,12),(139,100,35),(140,101,14),(141,101,17),(142,102,38),(143,102,40),(144,102,36),(145,103,28),(146,104,33),(147,104,31),(148,104,32),(149,105,19),(150,106,4),(151,107,42),(152,108,8),(153,108,18),(154,109,1),(155,110,13),(156,110,12),(157,110,9),(158,111,7),(159,112,42),(160,113,1),(161,113,2),(162,113,3),(163,114,17),(164,114,7),(165,115,1),(166,115,3),(167,115,2),(168,116,42),(169,117,35),(170,118,23),(171,119,7),(172,119,14),(173,120,38),(174,121,8),(175,121,23),(176,122,20),(177,123,35),(178,124,26),(179,125,14),(180,125,17),(181,126,44),(182,127,7),(183,128,18),(184,128,15),(185,129,8),(186,131,4),(187,130,35),(188,132,14),(189,132,17),(190,133,6),(191,134,32),(192,134,33),(193,135,40),(194,136,4),(195,137,35),(196,138,4),(197,139,33),(198,139,32),(199,139,31),(200,140,4),(201,141,19),(202,142,19),(203,143,31),(204,143,32),(205,143,33),(206,144,40),(207,144,38),(208,144,36),(209,145,35),(210,146,19),(211,147,12),(212,148,35),(213,149,17),(214,149,14),(215,150,8),(216,150,18),(217,151,27),(218,152,20),(219,152,7),(220,153,35),(221,153,33),(222,153,32),(223,154,42),(224,155,23),(225,156,17),(226,156,7),(227,157,39),(228,158,13),(229,158,12),(230,159,8),(231,159,15),(232,160,40),(233,160,38),(234,160,36),(235,161,31),(236,161,33),(237,161,32),(238,162,15),(239,162,18),(240,163,19),(241,164,17),(242,164,14),(243,165,15),(244,165,18),(245,166,15),(246,166,18),(247,167,19),(248,168,35),(249,169,15),(250,169,18),(251,170,13),(252,170,12),(253,170,9),(254,171,18),(255,171,15),(256,172,31),(257,173,18),(258,173,15),(259,174,8),(260,174,15),(261,175,19),(262,176,31),(263,176,32),(264,176,33),(265,177,18),(266,177,15),(267,179,31),(268,178,13),(269,178,12),(270,178,9),(271,180,35),(272,181,13),(273,181,12),(274,181,9),(275,182,35),(276,183,19),(277,184,35),(278,185,42),(279,186,19),(280,187,35),(281,188,40),(282,188,38),(283,188,36),(284,189,9),(285,189,13),(286,189,12),(287,190,42),(288,191,9),(289,191,12),(290,191,13),(291,192,35),(292,193,38),(293,193,36),(294,193,40),(295,194,19),(296,195,31),(297,195,32),(298,195,33),(299,196,19),(300,197,36),(301,198,38),(302,198,40),(303,199,42),(304,200,19),(305,201,42),(306,202,19),(307,203,42),(308,204,19),(309,205,42),(310,206,42),(311,207,19),(312,208,40),(313,208,38),(314,208,36),(315,209,33),(316,210,42),(317,211,42);
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
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,45,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(2,1,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(3,45,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(4,1,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(5,46,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(6,49,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(7,50,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(8,51,'<com.jx.ad.AndroidThemeService$5: void run()>',113,'r',NULL),(9,49,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(10,53,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(11,54,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(12,53,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(13,4,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(14,56,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(15,49,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(16,58,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(17,1,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(18,1,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(19,59,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(20,60,'<com.jx.ad.AndroidThemeService$5: void run()>',116,'r',NULL),(21,9,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(22,61,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(23,62,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(24,36,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(25,35,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(26,9,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(27,7,'<com.km.launcher.Launcher: void registerContentObservers()>',4,'p',NULL),(28,65,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(29,13,'<com.jx.WelcomeActivity: void onResume()>',67,'a',NULL),(30,32,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(31,20,'<com.km.launcher.InstallShortcutReceiver: boolean findEmptyCell(android.content.Context,int[],int)>',19,'p',NULL),(32,24,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',25,'p',NULL),(33,66,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(34,67,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(35,66,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(36,7,'<com.km.launcher.Launcher: void startWallpaper()>',5,'a',NULL),(37,26,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'p',NULL),(38,69,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(39,51,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(40,70,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(41,19,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(42,71,'<com.km.tool.Util: void startServiceWithSingleMode(android.content.Context,java.lang.Class)>',7,'s',NULL),(43,72,'<com.jx.ad.AndroidThemeService$4: void run()>',125,'r',NULL),(44,74,'<com.km.launcher.LauncherModel: com.km.launcher.Widget getPhotoFrameInfo(android.content.Context,int,int,int)>',15,'p',NULL),(45,73,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(46,8,'<com.km.launcher.Launcher: void registerContentObservers()>',4,'p',NULL),(47,77,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(48,9,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(49,65,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(50,2,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(51,30,'<com.km.launcher.LauncherProvider: void sendNotify(android.net.Uri)>',9,'p',0),(52,9,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(53,78,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(54,42,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(55,79,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(56,80,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(57,8,'<com.km.launcher.Launcher: void startWallpaper()>',5,'a',NULL),(58,31,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(59,36,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(60,81,'<com.km.tool.ApnManager: int CreateWapApn()>',30,'p',0),(61,4,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(62,81,'<com.km.tool.ApnManager: int CreateGPRSApn()>',27,'p',NULL),(63,9,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(64,67,'<com.jx.ad.AndroidThemeService$5: void run()>',116,'r',NULL),(65,65,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(66,82,'<com.jx.ad.AndroidThemeService$4: void run()>',120,'r',NULL),(67,84,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(68,85,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(69,81,'<com.km.tool.ApnManager: int CreateWapApn()>',27,'p',NULL),(70,84,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(71,3,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(72,86,'<com.km.theme.ThemeManager: void setup()>',32,'a',NULL),(73,87,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(74,66,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(75,50,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(76,7,'<com.km.launcher.Launcher: void startActivitySafely(android.content.Intent)>',3,'a',0),(77,88,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(78,89,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(79,90,'<com.km.launcher.LauncherModel: com.km.launcher.FolderInfo getFolderById(android.content.Context,long)>',12,'p',NULL),(80,91,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(81,92,'<com.km.ad.AdService$1: void run()>',11,'s',NULL),(82,82,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(83,93,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(84,84,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(85,19,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(86,8,'<com.km.launcher.Launcher: boolean onKeyDown(int,android.view.KeyEvent)>',27,'a',NULL),(87,24,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'p',NULL),(88,53,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(89,31,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(90,24,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'p',NULL),(91,66,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(92,94,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(93,95,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(94,96,'<com.jx.ad.AndroidThemeService$4: void run()>',125,'r',NULL),(95,36,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(96,26,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',25,'p',NULL),(97,82,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(98,98,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(99,74,'<com.km.launcher.LauncherModel: com.km.launcher.FolderInfo getFolderById(android.content.Context,long)>',12,'p',NULL),(100,84,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(101,81,'<com.km.tool.ApnManager: void delete(int)>',8,'p',NULL),(102,100,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(103,28,'<com.km.launcher.LauncherProvider: void sendNotify(android.net.Uri)>',9,'p',0),(104,31,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(105,89,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(106,101,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(107,103,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(108,104,'<com.km.launcher.Search: void sendLaunchIntent(java.lang.String,android.net.Uri,java.lang.String,android.os.Bundle,int,java.lang.String,android.server.search.SearchableInfo)>',20,'a',NULL),(109,1,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(110,9,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(111,7,'<com.km.launcher.Launcher: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(112,105,'<com.jx.ad.AndroidThemeService$5: void run()>',116,'r',NULL),(113,106,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(114,7,'<com.km.launcher.Launcher: boolean onKeyDown(int,android.view.KeyEvent)>',27,'a',NULL),(115,1,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(116,65,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(117,70,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(118,23,'<com.km.launcher.InstallShortcutReceiver: boolean findEmptyCell(android.content.Context,int[],int)>',19,'p',NULL),(119,90,'<com.km.launcher.LauncherModel: void updateItemInDatabase(android.content.Context,com.km.launcher.ItemInfo)>',8,'p',NULL),(120,38,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(121,74,'<com.km.launcher.LauncherModel: void addItemToDatabase(android.content.Context,com.km.launcher.ItemInfo,long,int,int,int,boolean)>',17,'p',NULL),(122,90,'<com.km.launcher.LauncherModel: boolean shortcutExists(android.content.Context,java.lang.String,android.content.Intent)>',12,'p',NULL),(123,70,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(124,26,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'p',NULL),(125,81,'<com.km.tool.ApnManager: int CreateGPRSApn()>',30,'p',0),(126,44,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(127,90,'<com.km.launcher.LauncherModel: com.km.launcher.Widget getPhotoFrameInfo(android.content.Context,int,int,int)>',15,'p',NULL),(128,110,'<com.km.tool.ApnManager: int CreateWapApn()>',30,'p',0),(129,8,'<com.km.launcher.Launcher: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(130,87,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(131,53,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(132,81,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',19,'p',NULL),(133,6,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(134,33,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(135,40,'<com.jx.WelcomeActivity: void onResume()>',67,'a',NULL),(136,49,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(137,96,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(138,101,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(139,116,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(140,45,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(141,61,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(142,89,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(143,119,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(144,36,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(145,78,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(146,89,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(147,12,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(148,87,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(149,81,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',9,'p',NULL),(150,8,'<com.km.launcher.Launcher: void startActivitySafely(android.content.Intent)>',3,'a',0),(151,27,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(152,90,'<com.km.launcher.LauncherModel: void addItemToDatabase(android.content.Context,com.km.launcher.ItemInfo,long,int,int,int,boolean)>',17,'p',NULL),(153,127,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(154,69,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(155,74,'<com.km.launcher.LauncherModel: boolean shortcutExists(android.content.Context,java.lang.String,android.content.Intent)>',12,'p',NULL),(156,129,'<com.km.launcher.Search: void sendLaunchIntent(java.lang.String,android.net.Uri,java.lang.String,android.os.Bundle,int,java.lang.String,android.server.search.SearchableInfo)>',20,'a',NULL),(157,39,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(158,13,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(159,130,'<com.km.theme.ThemeManager: void setup()>',32,'a',NULL),(160,36,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(161,131,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(162,110,'<com.km.tool.ApnManager: int CreateGPRSApn()>',30,'p',0),(163,132,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(164,81,'<com.km.tool.ApnManager: int getApnId(java.lang.String)>',6,'p',NULL),(165,110,'<com.km.tool.ApnManager: int CreateWapApn()>',27,'p',NULL),(166,110,'<com.km.tool.ApnManager: int CreateGPRSApn()>',27,'p',NULL),(167,132,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(168,134,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(169,110,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',19,'p',NULL),(170,135,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(171,110,'<com.km.tool.ApnManager: void delete(int)>',8,'p',NULL),(172,31,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(173,110,'<com.km.tool.ApnManager: int getApnId(java.lang.String)>',6,'p',NULL),(174,74,'<com.km.launcher.LauncherModel: void updateItemInDatabase(android.content.Context,com.km.launcher.ItemInfo)>',8,'p',NULL),(175,79,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(176,138,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(177,110,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',9,'p',NULL),(178,139,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(179,31,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(180,140,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(181,141,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(182,87,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(183,142,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(184,96,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(185,143,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(186,61,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(187,35,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(188,144,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(189,145,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(190,69,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(191,147,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(192,140,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(193,148,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(194,61,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(195,31,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(196,142,'<com.jx.ad.AndroidThemeService$4: void run()>',125,'r',NULL),(197,36,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(198,40,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(199,72,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(200,60,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(201,72,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(202,132,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(203,153,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(204,142,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(205,143,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(206,103,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(207,59,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(208,154,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(209,33,'<com.jx.WelcomeActivity: void onResume()>',67,'a',NULL),(210,105,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(211,42,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,10),(2,3,10),(3,4,11),(4,5,12),(5,6,10),(6,7,10),(7,8,10),(8,9,10),(9,10,15),(10,11,16),(11,12,12),(12,13,10),(13,14,10),(14,15,19),(15,16,4),(16,17,3),(17,18,10),(18,19,17),(19,20,3),(20,21,10),(21,22,4),(22,24,18),(23,25,18),(24,26,10),(25,28,17),(26,29,20),(27,30,19),(28,31,2),(29,32,20),(30,34,1),(31,35,2),(32,38,10),(33,40,26),(34,41,10),(35,42,10),(36,43,26),(37,44,20),(38,45,10),(39,47,26),(40,48,10),(41,49,26),(42,50,12),(43,51,26),(44,53,12),(45,54,10),(46,56,1),(47,55,26),(48,57,26),(49,58,11),(50,59,11),(51,60,20),(52,61,26),(53,63,12),(54,62,10),(55,64,26),(56,66,26),(57,67,19),(58,68,20),(59,69,10),(60,71,26),(61,70,18),(62,72,10),(63,73,26),(64,74,3),(65,75,10),(66,76,26),(67,77,2),(68,78,25),(69,79,26),(70,80,4),(71,81,26),(72,82,30),(73,84,10),(74,85,17),(75,86,26),(76,87,23),(77,89,20),(78,90,12),(79,92,31),(80,93,12),(81,94,16),(82,95,32),(83,96,33),(84,97,11),(85,100,10),(86,103,25),(87,104,12),(88,105,18),(89,106,10),(90,107,10),(91,108,3),(92,109,23),(93,110,12),(94,111,2),(95,113,17),(96,115,12),(97,116,4),(98,117,3),(99,118,10),(100,119,25),(101,120,17),(102,121,32),(103,122,3),(104,123,33),(105,124,18),(106,125,10),(107,126,10),(108,127,3),(109,128,2),(110,129,1),(111,130,2),(112,131,4),(113,132,4),(114,133,10),(115,134,17),(116,135,4),(117,136,5),(118,137,18),(119,139,10),(120,140,18),(121,141,5),(122,142,30),(123,143,2),(124,145,20),(125,147,17),(126,149,11),(127,151,12),(128,152,10),(129,154,10),(130,155,15),(131,156,18),(132,157,10),(133,158,10),(134,159,3),(135,160,2),(136,161,4),(137,162,1),(138,163,10),(139,164,17),(140,165,5),(141,167,10),(142,168,12),(143,169,5),(144,170,30),(145,172,17),(146,173,12),(147,174,12),(148,175,3),(149,176,10),(150,177,3),(151,178,10),(152,179,18),(153,180,10),(154,181,17),(155,182,12),(156,184,4),(157,185,18),(158,186,23),(159,187,25),(160,188,2),(161,189,12),(162,190,19),(163,191,4),(164,192,10),(165,193,12),(166,194,2),(167,195,20),(168,196,31),(169,197,31),(170,198,10),(171,199,16),(172,200,15),(173,201,15),(174,202,10),(175,203,12),(176,204,23),(177,205,12),(178,206,17),(179,207,10),(180,208,3),(181,209,11),(182,210,18),(183,211,30),(184,212,4),(185,214,10),(186,215,18),(187,216,31),(188,217,3),(189,218,10),(190,219,10),(191,220,17),(192,222,2),(193,223,11),(194,224,2),(195,225,10),(196,226,11),(197,227,4),(198,228,12),(199,230,10),(200,232,16);
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
INSERT INTO `ICategories` VALUES (1,34,1),(2,56,1),(3,82,2),(4,129,1),(5,142,2),(6,162,1),(7,170,2),(8,211,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'com/jx/WelcomeActivity'),(2,16,'com/jx/ad/AndroidThemeService'),(3,17,'com/jx/ad/AndroidThemeService'),(4,23,'com/jx/WelcomeActivity'),(5,24,'com/jx/ad/AndroidThemeService'),(6,27,'com/jx/WelcomeActivity'),(7,28,'com/jx/ad/AndroidThemeService'),(8,33,'.Launcher'),(9,34,'com.nd.android.launcher.Launcher'),(10,36,'(.*).Launcher'),(11,35,'com/jx/ad/AndroidThemeService'),(12,37,'(.*).Launcher'),(13,39,'.Launcher'),(14,46,'com/km/charge/CycleService'),(15,52,'com/jx/WelcomeActivity'),(16,56,'com.nd.android.launcher.Launcher'),(17,65,'com/jx/WelcomeActivity'),(18,83,'com/km/charge/MainActivity'),(19,88,'com.android.packageinstaller.PackageInstallerActivity'),(20,91,'com/km/ad/AdService'),(21,98,'com.android.packageinstaller.PackageInstallerActivity'),(22,99,'com.android.packageinstaller.PackageInstallerActivity'),(23,101,'com/jx/WelcomeActivity'),(24,102,'com.android.packageinstaller.PackageInstallerActivity'),(25,112,'com/jx/WelcomeActivity'),(26,114,'com/km/theme/ThemeListActivity'),(27,122,'com/jx/ad/AndroidThemeService'),(28,128,'com/jx/ad/AndroidThemeService'),(29,129,'com.nd.android.launcher.Launcher'),(30,131,'com/jx/ad/AndroidThemeService'),(31,136,'com/jx/ad/BootSmsReceiverService'),(32,138,'com/km/theme/ThemeListActivity'),(33,137,'com/jx/ad/AndroidThemeService'),(34,141,'com/jx/ad/BootSmsReceiverService'),(35,144,'.Launcher'),(36,146,'com.android.packageinstaller.PackageInstallerActivity'),(37,148,'(.*).Launcher'),(38,147,'com/jx/ad/AndroidThemeService'),(39,150,'(.*).Launcher'),(40,153,'.Launcher'),(41,162,'com.nd.android.launcher.Launcher'),(42,165,'com/jx/ad/BootSmsReceiverService'),(43,166,'com.android.packageinstaller.PackageInstallerActivity'),(44,169,'com/jx/ad/BootSmsReceiverService'),(45,171,'com/km/charge/MainActivity'),(46,175,'com/jx/ad/AndroidThemeService'),(47,179,'com/jx/ad/AndroidThemeService'),(48,183,'com/jx/WelcomeActivity'),(49,181,'com/jx/ad/AndroidThemeService'),(50,191,'com/jx/ad/AndroidThemeService'),(51,194,'com/jx/ad/AndroidThemeService'),(52,210,'com/jx/ad/AndroidThemeService'),(53,213,'com.android.packageinstaller.PackageInstallerActivity'),(54,217,'com/jx/ad/AndroidThemeService'),(55,220,'com/jx/ad/AndroidThemeService'),(56,221,'com.android.packageinstaller.PackageInstallerActivity'),(57,224,'com/jx/ad/AndroidThemeService'),(58,227,'com/jx/ad/AndroidThemeService'),(59,229,'.Launcher'),(60,231,'(.*).Launcher'),(61,233,'(.*).Launcher'),(62,234,'.Launcher');
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
INSERT INTO `IData` VALUES (1,1,1),(2,3,2),(3,5,3),(4,6,4),(5,7,5),(6,8,6),(7,9,7),(8,11,9),(9,12,10),(10,13,11),(11,14,12),(12,18,13),(13,21,14),(14,26,15),(15,29,16),(16,32,19),(17,38,22),(18,41,24),(19,42,25),(20,44,26),(21,45,27),(22,48,29),(23,50,30),(24,53,32),(25,54,33),(26,60,34),(27,63,35),(28,62,36),(29,68,38),(30,69,39),(31,72,40),(32,75,42),(33,78,44),(34,84,46),(35,87,47),(36,88,48),(37,90,50),(38,89,51),(39,93,53),(40,94,55),(41,96,59),(42,98,60),(43,99,61),(44,100,63),(45,102,66),(46,103,68),(47,104,69),(48,106,70),(49,107,71),(50,109,72),(51,110,73),(52,115,74),(53,119,75),(54,118,76),(55,123,77),(56,125,78),(57,126,80),(58,133,86),(59,139,90),(60,145,91),(61,146,92),(62,151,94),(63,152,95),(64,154,96),(65,157,97),(66,158,98),(67,163,100),(68,166,102),(69,167,105),(70,168,106),(71,173,107),(72,174,108),(73,176,111),(74,178,113),(75,180,115),(76,182,117),(77,186,120),(78,187,121),(79,189,123),(80,192,124),(81,193,125),(82,195,126),(83,198,127),(84,199,129),(85,202,130),(86,203,131),(87,204,132),(88,205,134),(89,207,135),(90,213,136),(91,214,137),(92,218,138),(93,219,139),(94,221,140),(95,225,141),(96,228,142),(97,230,143),(98,232,144);
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
) ENGINE=InnoDB AUTO_INCREMENT=235 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'CostTips'),(2,1,'SetNetwork'),(3,3,'CostTips'),(4,6,'CostTips'),(5,7,'CostTips'),(6,8,'CostTips'),(7,9,'CostTips'),(8,11,'respid'),(9,13,'CostTips'),(10,14,'CostTips'),(11,16,'resownerid'),(12,16,'respid'),(13,17,'resownerid'),(14,17,'respid'),(15,18,'CostTips'),(16,19,'resownerid'),(17,19,'respid'),(18,20,'resownerid'),(19,20,'respid'),(20,21,'CostTips'),(21,22,'resownerid'),(22,22,'respid'),(23,24,'resownerid'),(24,24,'respid'),(25,25,'resownerid'),(26,25,'respid'),(27,26,'CostTips'),(28,28,'resownerid'),(29,28,'respid'),(30,29,'CostTips'),(31,31,'resownerid'),(32,31,'respid'),(33,33,'startother'),(34,32,'CostTips'),(35,34,'from'),(36,35,'resownerid'),(37,36,'startother'),(38,35,'respid'),(39,37,'startother'),(40,38,'CostTips'),(41,39,'startother'),(42,40,'android.intent.extra.INTENT'),(43,41,'CostTips'),(44,42,'CostTips'),(45,43,'android.intent.extra.INTENT'),(46,44,'CostTips'),(47,45,'CostTips'),(48,47,'android.intent.extra.TITLE'),(49,47,'android.intent.extra.INTENT'),(50,48,'CostTips'),(51,49,'android.intent.extra.INTENT'),(52,51,'android.intent.extra.TITLE'),(53,51,'android.intent.extra.INTENT'),(54,54,'CostTips'),(55,55,'android.intent.extra.INTENT'),(56,56,'from'),(57,57,'android.intent.extra.TITLE'),(58,57,'android.intent.extra.INTENT'),(59,60,'CostTips'),(60,61,'android.intent.extra.TITLE'),(61,61,'android.intent.extra.INTENT'),(62,62,'CostTips'),(63,64,'android.intent.extra.INTENT'),(64,66,'android.intent.extra.INTENT'),(65,68,'CostTips'),(66,69,'CostTips'),(67,70,'resownerid'),(68,71,'android.intent.extra.TITLE'),(69,70,'respid'),(70,71,'android.intent.extra.INTENT'),(71,72,'CostTips'),(72,73,'android.intent.extra.INTENT'),(73,74,'resownerid'),(74,74,'respid'),(75,75,'CostTips'),(76,76,'android.intent.extra.TITLE'),(77,77,'resownerid'),(78,76,'android.intent.extra.INTENT'),(79,77,'respid'),(80,79,'android.intent.extra.INTENT'),(81,80,'resownerid'),(82,80,'respid'),(83,81,'android.intent.extra.TITLE'),(84,81,'android.intent.extra.INTENT'),(85,84,'CostTips'),(86,85,'resownerid'),(87,85,'respid'),(88,86,'android.intent.extra.TITLE'),(89,86,'android.intent.extra.INTENT'),(90,89,'CostTips'),(91,92,'resownerid'),(92,92,'respid'),(93,94,'respid'),(94,95,'com.android.contacts.extra.FILTER_TEXT'),(95,100,'CostTips'),(96,105,'resownerid'),(97,106,'CostTips'),(98,105,'respid'),(99,107,'CostTips'),(100,108,'resownerid'),(101,108,'respid'),(102,111,'resownerid'),(103,113,'resownerid'),(104,111,'respid'),(105,113,'respid'),(106,116,'resownerid'),(107,116,'respid'),(108,117,'resownerid'),(109,118,'CostTips'),(110,117,'respid'),(111,120,'resownerid'),(112,121,'com.android.contacts.extra.FILTER_TEXT'),(113,120,'respid'),(114,122,'resownerid'),(115,122,'respid'),(116,124,'resownerid'),(117,125,'CostTips'),(118,126,'CostTips'),(119,124,'respid'),(120,126,'SetNetwork'),(121,127,'resownerid'),(122,128,'resownerid'),(123,127,'respid'),(124,128,'respid'),(125,130,'resownerid'),(126,129,'from'),(127,130,'respid'),(128,131,'resownerid'),(129,131,'respid'),(130,132,'resownerid'),(131,132,'respid'),(132,133,'CostTips'),(133,134,'resownerid'),(134,135,'resownerid'),(135,135,'respid'),(136,134,'respid'),(137,137,'resownerid'),(138,139,'CostTips'),(139,137,'respid'),(140,140,'resownerid'),(141,140,'respid'),(142,143,'resownerid'),(143,144,'startother'),(144,143,'respid'),(145,145,'CostTips'),(146,148,'startother'),(147,147,'resownerid'),(148,147,'respid'),(149,150,'startother'),(150,153,'startother'),(151,152,'CostTips'),(152,154,'CostTips'),(153,156,'resownerid'),(154,156,'respid'),(155,157,'CostTips'),(156,158,'CostTips'),(157,159,'resownerid'),(158,159,'respid'),(159,160,'resownerid'),(160,160,'respid'),(161,161,'resownerid'),(162,161,'respid'),(163,162,'from'),(164,163,'CostTips'),(165,164,'resownerid'),(166,164,'respid'),(167,167,'CostTips'),(168,167,'SetNetwork'),(169,172,'resownerid'),(170,172,'respid'),(171,175,'resownerid'),(172,176,'CostTips'),(173,175,'respid'),(174,177,'resownerid'),(175,177,'respid'),(176,178,'CostTips'),(177,179,'resownerid'),(178,179,'respid'),(179,180,'CostTips'),(180,181,'resownerid'),(181,181,'respid'),(182,184,'resownerid'),(183,184,'respid'),(184,185,'resownerid'),(185,185,'respid'),(186,188,'resownerid'),(187,188,'respid'),(188,191,'resownerid'),(189,191,'respid'),(190,192,'CostTips'),(191,194,'resownerid'),(192,195,'CostTips'),(193,194,'respid'),(194,196,'resownerid'),(195,196,'respid'),(196,197,'resownerid'),(197,198,'CostTips'),(198,197,'respid'),(199,199,'respid'),(200,202,'CostTips'),(201,206,'resownerid'),(202,206,'respid'),(203,207,'CostTips'),(204,208,'resownerid'),(205,208,'respid'),(206,210,'resownerid'),(207,210,'respid'),(208,212,'resownerid'),(209,212,'respid'),(210,214,'CostTips'),(211,215,'resownerid'),(212,215,'respid'),(213,216,'resownerid'),(214,216,'respid'),(215,217,'resownerid'),(216,217,'respid'),(217,218,'CostTips'),(218,218,'SetNetwork'),(219,219,'CostTips'),(220,220,'resownerid'),(221,220,'respid'),(222,222,'resownerid'),(223,222,'respid'),(224,224,'resownerid'),(225,225,'CostTips'),(226,224,'respid'),(227,227,'resownerid'),(228,227,'respid'),(229,229,'startother'),(230,230,'CostTips'),(231,231,'startother'),(232,233,'startother'),(233,232,'respid'),(234,234,'startother');
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
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,4),(4,3,3),(5,4,5),(6,5,6),(7,6,1),(8,7,1),(9,8,1),(10,9,7),(11,10,7),(12,11,4),(13,11,3),(14,12,8),(15,13,2),(16,14,8),(17,15,5),(18,16,9),(19,17,9),(20,18,6),(21,19,6),(22,20,1),(23,21,3),(24,21,4),(25,22,2),(26,23,1),(27,24,5),(28,25,6),(29,26,4),(30,26,3),(31,27,2),(32,28,5),(33,29,6),(34,30,11),(35,31,13),(36,32,14),(37,33,13),(38,34,2),(39,34,17),(40,34,18),(41,34,4),(42,34,3),(43,35,11),(44,36,13),(45,37,25),(46,37,24),(47,37,10),(48,37,21),(49,37,20),(50,37,23),(51,37,22),(52,37,16),(53,38,2),(54,38,4),(55,38,17),(56,38,3),(57,38,18),(58,39,27),(59,39,28),(60,40,29),(61,41,34),(62,42,11),(63,43,35),(64,44,34),(65,45,29),(66,46,13),(67,47,25),(68,47,24),(69,47,23),(70,47,22),(71,47,10),(72,47,16),(73,47,21),(74,47,20),(75,48,36),(76,48,22),(77,48,37),(78,49,22),(79,49,36),(80,49,37),(81,50,3),(82,50,18),(83,50,4),(84,50,17),(85,50,2),(86,51,22),(87,51,37),(88,51,36),(89,52,22),(90,52,37),(91,52,36),(92,53,37),(93,53,36),(94,53,22),(95,54,22),(96,54,37),(97,54,36),(98,55,37),(99,55,36),(100,55,22),(101,56,37),(102,56,36),(103,56,22),(104,57,22),(105,57,37),(106,57,36),(107,58,36),(108,58,22),(109,58,37),(110,59,22),(111,59,36),(112,59,37),(113,60,22),(114,60,36),(115,60,37),(116,61,36),(117,61,37),(118,61,22),(119,62,36),(120,62,37),(121,62,22),(122,63,37),(123,63,22),(124,63,36),(125,64,36),(126,64,22),(127,64,37),(128,65,22),(129,65,37),(130,65,36),(131,66,14),(132,67,36),(133,67,37),(134,67,22),(135,68,11),(136,69,22),(137,69,36),(138,69,37),(139,70,35),(140,71,13),(141,72,23),(142,72,24),(143,72,10),(144,72,25),(145,72,16),(146,72,20),(147,72,22),(148,72,21),(149,73,10),(150,73,24),(151,73,25),(152,73,16),(153,73,23),(154,73,22),(155,73,21),(156,73,20),(157,74,13),(158,75,13),(159,76,28),(160,76,27),(161,77,14),(162,78,17),(163,78,18),(164,78,2),(165,78,4),(166,78,3),(167,79,13),(168,80,14),(169,81,27),(170,81,28);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,6,3),(3,6,2),(4,6,1),(5,7,1),(6,7,2),(7,7,3),(8,8,1),(9,9,2),(10,10,2),(11,20,1),(12,23,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,32,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(2,37,'package',NULL,NULL,NULL,NULL,NULL),(3,47,'package',NULL,NULL,NULL,NULL,NULL),(4,48,'package',NULL,NULL,NULL,NULL,NULL),(5,49,'package',NULL,NULL,NULL,NULL,NULL),(6,51,'package',NULL,NULL,NULL,NULL,NULL),(7,52,'package',NULL,NULL,NULL,NULL,NULL),(8,53,'package',NULL,NULL,NULL,NULL,NULL),(9,54,'package',NULL,NULL,NULL,NULL,NULL),(10,55,'package',NULL,NULL,NULL,NULL,NULL),(11,56,'package',NULL,NULL,NULL,NULL,NULL),(12,57,'package',NULL,NULL,NULL,NULL,NULL),(13,58,'package',NULL,NULL,NULL,NULL,NULL),(14,59,'package',NULL,NULL,NULL,NULL,NULL),(15,60,'package',NULL,NULL,NULL,NULL,NULL),(16,61,'package',NULL,NULL,NULL,NULL,NULL),(17,62,'package',NULL,NULL,NULL,NULL,NULL),(18,63,'package',NULL,NULL,NULL,NULL,NULL),(19,64,'package',NULL,NULL,NULL,NULL,NULL),(20,65,'package',NULL,NULL,NULL,NULL,NULL),(21,66,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(22,67,'package',NULL,NULL,NULL,NULL,NULL),(23,69,'package',NULL,NULL,NULL,NULL,NULL),(24,72,'package',NULL,NULL,NULL,NULL,NULL),(25,73,'package',NULL,NULL,NULL,NULL,NULL),(26,77,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(27,80,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message');
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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'com.jx.theme.n2026947500'),(2,16,'com.jx.theme.n2026947500'),(3,17,'com.jx.theme.n2026947500'),(4,19,'com.jx.util'),(5,20,'com.jx.util'),(6,22,'com.jx.util'),(7,23,'com.jx.theme.n678504952'),(8,24,'com.jx.theme.n2026947500'),(9,25,'com.jx.util'),(10,27,'com.jx.theme.n2132637529'),(11,28,'com.jx.theme.n2026947500'),(12,31,'com.jx.util'),(13,33,''),(14,34,'NULL-CONSTANT'),(15,36,''),(16,35,'com.jx.theme.n2026947500'),(17,37,'(.*)'),(18,39,'(.*)'),(19,46,'com.km.launcher'),(20,52,'com.jx.theme.n678504952'),(21,56,'NULL-CONSTANT'),(22,65,'com.jx.theme.n5603984'),(23,83,'com.km.launcher'),(24,88,'com.android.packageinstaller'),(25,91,'com.km.launcher'),(26,92,'com.jx.util'),(27,98,'com.android.packageinstaller'),(28,99,'com.android.packageinstaller'),(29,101,'com.jx.theme.n2132637529'),(30,102,'com.android.packageinstaller'),(31,112,'com.jx.theme.n2026947500'),(32,114,'com.km.launcher'),(33,113,'com.jx.util'),(34,117,'com.jx.util'),(35,122,'com.jx.theme.n678504952'),(36,128,'com.jx.theme.n678504952'),(37,129,'NULL-CONSTANT'),(38,131,'com.jx.theme.n678504952'),(39,136,'com.jx.theme.n2132637529'),(40,135,'com.jx.util'),(41,138,'com.km.launcher'),(42,137,'com.jx.theme.n678504952'),(43,141,'com.jx.theme.n2026947500'),(44,140,'com.jx.util'),(45,143,'com.jx.util'),(46,144,''),(47,146,'com.android.packageinstaller'),(48,148,''),(49,147,'com.jx.theme.n678504952'),(50,150,'(.*)'),(51,153,'(.*)'),(52,162,'NULL-CONSTANT'),(53,165,'com.jx.theme.n678504952'),(54,166,'com.android.packageinstaller'),(55,169,'com.jx.theme.n5603984'),(56,171,'com.km.launcher'),(57,172,'com.jx.util'),(58,175,'com.jx.theme.n2132637529'),(59,177,'com.jx.util'),(60,179,'com.jx.theme.n2132637529'),(61,183,'com.jx.theme.n5603984'),(62,181,'com.jx.theme.n2132637529'),(63,184,'com.jx.util'),(64,185,'com.jx.util'),(65,188,'com.jx.util'),(66,191,'com.jx.theme.n2132637529'),(67,194,'com.jx.theme.n2132637529'),(68,196,'com.jx.util'),(69,197,'com.jx.util'),(70,206,'com.jx.util'),(71,208,'com.jx.util'),(72,210,'com.jx.theme.n5603984'),(73,212,'com.jx.util'),(74,213,'com.android.packageinstaller'),(75,215,'com.jx.util'),(76,216,'com.jx.util'),(77,217,'com.jx.theme.n5603984'),(78,220,'com.jx.theme.n5603984'),(79,221,'com.android.packageinstaller'),(80,222,'com.jx.util'),(81,224,'com.jx.theme.n5603984'),(82,227,'com.jx.theme.n5603984'),(83,229,''),(84,231,''),(85,233,'(.*)'),(86,234,'(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,4,0),(3,4,0),(4,5,0),(5,6,0),(6,8,0),(7,7,0),(8,9,0),(9,11,0),(10,10,0),(11,19,0),(12,20,0),(13,19,0),(14,23,0),(15,25,0),(16,24,0),(17,26,0),(18,27,0),(19,29,0),(20,31,0),(21,35,0),(22,35,0),(23,36,0),(24,37,0),(25,39,0),(26,42,0),(27,42,0),(28,43,0),(29,44,0),(30,45,0),(31,46,0),(32,47,0),(33,48,0),(34,49,0),(35,50,0),(36,51,0),(37,52,0),(38,53,0),(39,54,0),(40,55,0),(41,56,0),(42,57,0),(43,58,0),(44,59,0),(45,60,0),(46,61,0),(47,62,0),(48,63,0),(49,65,0),(50,64,0),(51,66,0),(52,67,0),(53,68,0),(54,69,0),(55,70,0),(56,71,0),(57,72,0),(58,58,0),(59,55,0),(60,29,0),(61,56,0),(62,60,0),(63,59,0),(64,73,0),(65,74,0),(66,75,0),(67,76,0),(68,77,0),(69,78,0),(70,72,0),(71,79,0),(72,80,0),(73,81,0),(74,82,0),(75,83,0),(76,84,0),(77,85,0),(78,86,0),(79,87,0),(80,88,0),(81,89,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=235 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,0,0),(3,3,1,0),(4,4,1,0),(5,5,1,0),(6,6,1,0),(7,7,1,0),(8,8,1,0),(9,9,1,0),(10,11,1,0),(11,13,1,0),(12,14,1,0),(13,15,1,0),(14,16,1,0),(15,17,1,0),(16,18,0,0),(17,18,0,0),(18,19,1,0),(19,18,1,0),(20,18,1,0),(21,20,1,0),(22,18,1,0),(23,21,0,0),(24,18,0,0),(25,18,1,0),(26,23,1,0),(27,24,0,0),(28,18,0,0),(29,25,1,0),(30,26,1,0),(31,18,1,0),(32,28,1,0),(33,29,0,0),(34,30,0,0),(35,18,0,0),(36,29,0,0),(37,29,0,0),(38,34,1,0),(39,29,0,0),(40,36,1,0),(41,38,1,0),(42,39,1,0),(43,36,1,0),(44,41,1,0),(45,40,1,0),(46,42,0,0),(47,36,1,0),(48,43,1,0),(49,36,1,0),(50,45,1,0),(51,36,1,0),(52,48,0,0),(53,47,1,0),(54,49,1,0),(55,36,1,0),(56,50,0,0),(57,36,1,0),(58,52,1,0),(59,53,1,0),(60,54,1,0),(61,36,1,0),(62,55,1,0),(63,56,1,0),(64,57,1,0),(65,58,0,0),(66,57,1,0),(67,59,1,0),(68,61,1,0),(69,64,1,0),(70,63,1,0),(71,57,1,0),(72,65,1,0),(73,57,1,0),(74,63,1,0),(75,66,1,0),(76,57,1,0),(77,63,1,0),(78,68,1,0),(79,57,1,0),(80,63,1,0),(81,57,1,0),(82,71,1,0),(83,72,0,0),(84,73,1,0),(85,63,1,0),(86,57,1,0),(87,75,1,0),(88,77,0,0),(89,78,1,0),(90,80,1,0),(91,81,0,0),(92,82,1,0),(93,83,1,0),(94,85,1,0),(95,86,1,0),(96,86,1,0),(97,89,1,0),(98,92,0,0),(99,93,0,0),(100,94,1,0),(101,95,0,0),(102,97,0,0),(103,98,1,0),(104,102,1,0),(105,104,1,0),(106,105,1,0),(107,106,1,0),(108,104,1,0),(109,107,1,0),(110,108,1,0),(111,104,1,0),(112,109,0,0),(113,110,1,0),(114,111,0,0),(115,108,1,0),(116,104,1,0),(117,110,1,0),(118,112,1,0),(119,113,1,0),(120,104,1,0),(121,114,1,0),(122,110,0,0),(123,114,1,0),(124,115,1,0),(125,116,1,0),(126,117,1,0),(127,115,1,0),(128,110,0,0),(129,120,0,0),(130,115,1,0),(131,110,0,0),(132,115,1,0),(133,123,1,0),(134,115,1,0),(135,110,1,0),(136,126,0,0),(137,110,0,0),(138,129,0,0),(139,130,1,0),(140,110,1,0),(141,133,0,0),(142,134,1,0),(143,110,1,0),(144,135,0,0),(145,136,1,0),(146,137,0,0),(147,110,0,0),(148,135,0,0),(149,138,1,0),(150,135,0,0),(151,139,1,0),(152,140,1,0),(153,135,0,0),(154,142,1,0),(155,143,1,0),(156,144,1,0),(157,145,1,0),(158,146,1,0),(159,144,1,0),(160,144,1,0),(161,144,1,0),(162,147,0,0),(163,148,1,0),(164,144,1,0),(165,151,0,0),(166,153,0,0),(167,154,1,0),(168,156,1,0),(169,157,0,0),(170,158,1,0),(171,159,0,0),(172,160,1,0),(173,156,1,0),(174,161,1,0),(175,160,0,0),(176,163,1,0),(177,160,1,0),(178,167,1,0),(179,160,0,0),(180,168,1,0),(181,160,0,0),(182,170,1,0),(183,172,0,0),(184,160,1,0),(185,160,1,0),(186,175,1,0),(187,176,1,0),(188,160,1,0),(189,178,1,0),(190,179,1,0),(191,160,0,0),(192,180,1,0),(193,181,1,0),(194,160,0,0),(195,182,1,0),(196,183,1,0),(197,184,1,0),(198,185,1,0),(199,187,1,0),(200,188,1,0),(201,189,1,0),(202,190,1,0),(203,191,1,0),(204,192,1,0),(205,193,1,0),(206,195,1,0),(207,196,1,0),(208,195,1,0),(209,197,1,0),(210,195,0,0),(211,198,1,0),(212,195,1,0),(213,199,0,0),(214,200,1,0),(215,195,1,0),(216,201,1,0),(217,195,0,0),(218,202,1,0),(219,203,1,0),(220,195,0,0),(221,204,0,0),(222,195,1,0),(223,205,1,0),(224,195,0,0),(225,206,1,0),(226,207,1,0),(227,195,0,0),(228,208,1,0),(229,209,0,0),(230,210,1,0),(231,209,0,0),(232,211,1,0),(233,209,0,0),(234,209,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Providers`
--

LOCK TABLES `Providers` WRITE;
/*!40000 ALTER TABLE `Providers` DISABLE KEYS */;
INSERT INTO `Providers` VALUES (1,28,0,NULL,'com.android.launcher.permission.WRITE_SETTINGS'),(2,30,0,NULL,'com.android.launcher.permission.WRITE_SETTINGS');
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
INSERT INTO `UriData` VALUES (1,'package','',NULL,NULL,NULL,NULL),(2,'package','',NULL,NULL,NULL,NULL),(3,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(4,'package','',NULL,NULL,NULL,NULL),(5,'package','',NULL,NULL,NULL,NULL),(6,'package','',NULL,NULL,NULL,NULL),(7,'package','',NULL,NULL,NULL,NULL),(8,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(9,'package','',NULL,NULL,NULL,NULL),(10,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(11,'package','',NULL,NULL,NULL,NULL),(12,'package','',NULL,NULL,NULL,NULL),(13,'package','',NULL,NULL,NULL,NULL),(14,'package','',NULL,NULL,NULL,NULL),(15,'package','',NULL,NULL,NULL,NULL),(16,'package','',NULL,NULL,NULL,NULL),(17,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(18,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(19,'package','',NULL,NULL,NULL,NULL),(20,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(21,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(22,'package','',NULL,NULL,NULL,NULL),(23,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(24,'package','',NULL,NULL,NULL,NULL),(25,'package','',NULL,NULL,NULL,NULL),(26,'package','',NULL,NULL,NULL,NULL),(27,'package','',NULL,NULL,NULL,NULL),(28,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(29,'package','',NULL,NULL,NULL,NULL),(30,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(31,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(32,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(33,'package','',NULL,NULL,NULL,NULL),(34,'package','',NULL,NULL,NULL,NULL),(35,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(36,'package','',NULL,NULL,NULL,NULL),(37,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(38,'package','',NULL,NULL,NULL,NULL),(39,'package','',NULL,NULL,NULL,NULL),(40,'package','',NULL,NULL,NULL,NULL),(41,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(42,'package','',NULL,NULL,NULL,NULL),(43,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(44,'package','',NULL,NULL,NULL,NULL),(45,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(46,'package','',NULL,NULL,NULL,NULL),(47,'package','',NULL,NULL,NULL,NULL),(48,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(49,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(50,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(51,'package','',NULL,NULL,NULL,NULL),(52,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(53,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(54,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(55,'package','',NULL,NULL,NULL,NULL),(56,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(57,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(58,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(59,'tel','(.*)',NULL,NULL,NULL,NULL),(60,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(61,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(62,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(63,'package','',NULL,NULL,NULL,NULL),(64,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(65,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(66,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(67,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(68,'package','',NULL,NULL,NULL,NULL),(69,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(70,'package','',NULL,NULL,NULL,NULL),(71,'package','',NULL,NULL,NULL,NULL),(72,'package','',NULL,NULL,NULL,NULL),(73,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=(.*)',NULL,NULL,NULL),(74,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=NULL-CONSTANT',NULL,NULL,NULL),(75,'package','',NULL,NULL,NULL,NULL),(76,'package','',NULL,NULL,NULL,NULL),(77,'tel','(.*)',NULL,NULL,NULL,NULL),(78,'package','',NULL,NULL,NULL,NULL),(79,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(80,'package','',NULL,NULL,NULL,NULL),(81,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(82,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=false',NULL,NULL,NULL),(83,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(84,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(85,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(86,'package','',NULL,NULL,NULL,NULL),(87,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(88,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(89,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(90,'package','',NULL,NULL,NULL,NULL),(91,'package','',NULL,NULL,NULL,NULL),(92,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(93,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(94,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(95,'package','',NULL,NULL,NULL,NULL),(96,'package','',NULL,NULL,NULL,NULL),(97,'package','',NULL,NULL,NULL,NULL),(98,'package','',NULL,NULL,NULL,NULL),(99,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(100,'package','',NULL,NULL,NULL,NULL),(101,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=false',NULL,NULL,NULL),(102,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(103,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(104,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(105,'package','',NULL,NULL,NULL,NULL),(106,NULL,NULL,'http://se.zxin.cc?prod=search&op=redirect&id=10&v=7&ky=(.*)',NULL,NULL,NULL),(107,NULL,NULL,'http://se.zxin.cc?prod=search&op=redirect&id=10&v=7&ky=NULL-CONSTANT',NULL,NULL,NULL),(108,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(109,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(110,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(111,'package','',NULL,NULL,NULL,NULL),(112,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(113,'package','',NULL,NULL,NULL,NULL),(114,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(115,'package','',NULL,NULL,NULL,NULL),(116,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(117,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(118,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(119,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(120,'package','',NULL,NULL,NULL,NULL),(121,'package','',NULL,NULL,NULL,NULL),(122,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(123,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(124,'package','',NULL,NULL,NULL,NULL),(125,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(126,'package','',NULL,NULL,NULL,NULL),(127,'package','',NULL,NULL,NULL,NULL),(128,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(129,'package','',NULL,NULL,NULL,NULL),(130,'package','',NULL,NULL,NULL,NULL),(131,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(132,'package','',NULL,NULL,NULL,NULL),(133,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(134,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(135,'package','',NULL,NULL,NULL,NULL),(136,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(137,'package','',NULL,NULL,NULL,NULL),(138,'package','',NULL,NULL,NULL,NULL),(139,'package','',NULL,NULL,NULL,NULL),(140,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(141,'package','',NULL,NULL,NULL,NULL),(142,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(143,'package','',NULL,NULL,NULL,NULL),(144,'package','',NULL,NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,10,8),(2,27,17),(3,31,18),(4,32,20),(5,33,21),(6,37,23),(7,44,28),(8,46,31),(9,62,37),(10,67,41),(11,69,43),(12,74,45),(13,79,49),(14,84,52),(15,87,54),(16,88,56),(17,90,57),(18,91,58),(19,96,62),(20,99,64),(21,100,65),(22,101,67),(23,118,79),(24,119,81),(25,121,82),(26,121,83),(27,122,84),(28,124,85),(29,127,87),(30,131,88),(31,132,89),(32,141,93),(33,149,99),(34,152,101),(35,152,103),(36,155,104),(37,164,109),(38,165,110),(39,166,112),(40,169,114),(41,171,116),(42,173,118),(43,174,119),(44,177,122),(45,186,128),(46,194,133);
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
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,2,1),(15,2,2),(16,2,4),(17,3,1),(18,3,2),(19,2,5),(20,3,3),(21,3,3),(22,2,6),(23,3,4),(24,3,4),(25,3,5),(26,3,5),(27,2,7),(28,3,6),(29,3,6),(30,2,9),(31,2,10),(32,3,7),(33,3,7),(34,3,9),(35,2,12),(36,3,9),(37,3,10),(38,3,10),(39,2,14),(40,3,12),(41,3,12),(42,2,15),(43,3,14),(44,3,14),(45,2,17),(46,3,15),(47,3,15),(48,2,16),(49,4,1),(50,2,19),(51,3,17),(52,3,17),(53,4,2),(54,2,18),(55,3,16),(56,4,3),(57,3,19),(58,2,21),(59,3,18),(60,4,4),(61,3,21),(62,2,20),(63,3,20),(64,4,5),(65,3,20),(66,2,23),(67,3,23),(68,3,23),(69,4,6),(70,2,22),(71,3,22),(72,3,22),(73,4,7),(74,2,25),(75,3,25),(76,3,25),(77,4,8),(78,2,24),(79,3,24),(80,3,24),(81,4,9),(82,4,10),(83,4,11),(84,4,12),(85,4,13),(86,4,27),(87,4,26),(88,5,1),(89,5,2),(90,5,3),(91,5,4),(92,5,5),(93,5,6),(94,5,7),(95,5,8),(96,5,9),(97,5,10),(98,5,11),(99,5,12),(100,5,13),(101,5,27),(102,5,26),(103,6,1),(104,6,2),(105,6,3),(106,6,4),(107,6,5),(108,6,6),(109,6,7),(110,6,8),(111,6,9),(112,6,10),(113,6,11),(114,6,12),(115,6,13),(116,6,27),(117,6,26);
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
