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
) ENGINE=InnoDB AUTO_INCREMENT=3986 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,114,14,2,NULL),(2,114,15,2,NULL),(3,40,1,2,NULL),(4,43,1,2,NULL),(5,47,1,2,NULL),(6,49,1,2,NULL),(7,51,1,2,NULL),(8,55,1,2,NULL),(9,57,1,2,NULL),(10,61,1,2,NULL),(11,121,1,2,NULL),(12,4,7,2,NULL),(13,15,7,2,NULL),(14,19,7,2,NULL),(15,20,7,2,NULL),(16,22,7,2,NULL),(17,25,7,2,NULL),(18,31,7,2,NULL),(19,124,7,2,NULL),(20,127,7,2,NULL),(21,130,7,2,NULL),(22,132,7,2,NULL),(23,134,7,2,NULL),(24,82,7,2,NULL),(25,40,4,2,NULL),(26,43,4,2,NULL),(27,47,4,2,NULL),(28,49,4,2,NULL),(29,51,4,2,NULL),(30,55,4,2,NULL),(31,57,4,2,NULL),(32,61,4,2,NULL),(33,121,4,2,NULL),(34,40,5,2,NULL),(35,43,5,2,NULL),(36,47,5,2,NULL),(37,49,5,2,NULL),(38,51,5,2,NULL),(39,55,5,2,NULL),(40,57,5,2,NULL),(41,61,5,2,NULL),(42,121,5,2,NULL),(43,40,6,2,NULL),(44,43,6,2,NULL),(45,47,6,2,NULL),(46,49,6,2,NULL),(47,51,6,2,NULL),(48,55,6,2,NULL),(49,57,6,2,NULL),(50,61,6,2,NULL),(51,121,6,2,NULL),(52,40,45,2,NULL),(53,43,45,2,NULL),(54,47,45,2,NULL),(55,49,45,2,NULL),(56,51,45,2,NULL),(57,55,45,2,NULL),(58,57,45,2,NULL),(59,61,45,2,NULL),(60,121,45,2,NULL),(61,40,46,2,NULL),(62,43,46,2,NULL),(63,47,46,2,NULL),(64,49,46,2,NULL),(65,51,46,2,NULL),(66,55,46,2,NULL),(67,57,46,2,NULL),(68,61,46,2,NULL),(69,121,46,2,NULL),(70,40,48,2,NULL),(71,43,48,2,NULL),(72,47,48,2,NULL),(73,49,48,2,NULL),(74,51,48,2,NULL),(75,55,48,2,NULL),(76,57,48,2,NULL),(77,61,48,2,NULL),(78,121,48,2,NULL),(79,40,49,2,NULL),(80,43,49,2,NULL),(81,47,49,2,NULL),(82,49,49,2,NULL),(83,51,49,2,NULL),(84,55,49,2,NULL),(85,57,49,2,NULL),(86,61,49,2,NULL),(87,121,49,2,NULL),(88,40,11,2,NULL),(89,43,11,2,NULL),(90,47,11,2,NULL),(91,49,11,2,NULL),(92,51,11,2,NULL),(93,55,11,2,NULL),(94,57,11,2,NULL),(95,61,11,2,NULL),(96,121,11,2,NULL),(97,40,20,2,NULL),(98,43,20,2,NULL),(99,47,20,2,NULL),(100,49,20,2,NULL),(101,51,20,2,NULL),(102,55,20,2,NULL),(103,57,20,2,NULL),(104,61,20,2,NULL),(105,121,20,2,NULL),(106,40,24,2,NULL),(107,43,24,2,NULL),(108,47,24,2,NULL),(109,49,24,2,NULL),(110,51,24,2,NULL),(111,55,24,2,NULL),(112,57,24,2,NULL),(113,61,24,2,NULL),(114,121,24,2,NULL),(115,40,55,2,NULL),(116,43,55,2,NULL),(117,47,55,2,NULL),(118,49,55,2,NULL),(119,51,55,2,NULL),(120,55,55,2,NULL),(121,57,55,2,NULL),(122,61,55,2,NULL),(123,121,55,2,NULL),(124,40,56,2,NULL),(125,43,56,2,NULL),(126,47,56,2,NULL),(127,49,56,2,NULL),(128,51,56,2,NULL),(129,55,56,2,NULL),(130,57,56,2,NULL),(131,61,56,2,NULL),(132,121,56,2,NULL),(133,40,58,2,NULL),(134,43,58,2,NULL),(135,47,58,2,NULL),(136,49,58,2,NULL),(137,51,58,2,NULL),(138,55,58,2,NULL),(139,57,58,2,NULL),(140,61,58,2,NULL),(141,121,58,2,NULL),(142,40,10,2,NULL),(143,43,10,2,NULL),(144,47,10,2,NULL),(145,49,10,2,NULL),(146,51,10,2,NULL),(147,55,10,2,NULL),(148,57,10,2,NULL),(149,61,10,2,NULL),(150,121,10,2,NULL),(151,121,10,2,NULL),(152,65,3,2,NULL),(153,40,23,2,NULL),(154,40,23,2,NULL),(155,65,13,2,NULL),(156,43,23,2,NULL),(157,47,23,2,NULL),(158,65,33,2,NULL),(159,49,23,2,NULL),(160,51,23,2,NULL),(161,65,40,2,NULL),(162,55,23,2,NULL),(163,57,23,2,NULL),(164,61,23,2,NULL),(165,121,23,2,NULL),(166,183,3,2,NULL),(167,40,26,2,NULL),(168,40,26,2,NULL),(169,183,13,2,NULL),(170,43,26,2,NULL),(171,47,26,2,NULL),(172,183,33,2,NULL),(173,49,26,2,NULL),(174,51,26,2,NULL),(175,55,26,2,NULL),(176,183,40,2,NULL),(177,57,26,2,NULL),(178,61,26,2,NULL),(179,210,4,2,NULL),(180,121,26,2,NULL),(181,40,29,2,NULL),(182,210,19,2,NULL),(183,43,29,2,NULL),(184,47,29,2,NULL),(185,49,29,2,NULL),(186,210,35,2,NULL),(187,51,29,2,NULL),(188,55,29,2,NULL),(189,57,29,2,NULL),(190,210,42,2,NULL),(191,61,29,2,NULL),(192,121,29,2,NULL),(193,217,4,2,NULL),(194,40,59,2,NULL),(195,43,59,2,NULL),(196,217,19,2,NULL),(197,47,59,2,NULL),(198,49,59,2,NULL),(199,217,35,2,NULL),(200,51,59,2,NULL),(201,55,59,2,NULL),(202,57,59,2,NULL),(203,217,42,2,NULL),(204,61,59,2,NULL),(205,121,59,2,NULL),(206,220,4,2,NULL),(207,40,60,2,NULL),(208,43,60,2,NULL),(209,220,19,2,NULL),(210,47,60,2,NULL),(211,49,60,2,NULL),(212,220,35,2,NULL),(213,51,60,2,NULL),(214,55,60,2,NULL),(215,57,60,2,NULL),(216,220,42,2,NULL),(217,61,60,2,NULL),(218,121,60,2,NULL),(219,40,72,2,NULL),(220,224,4,2,NULL),(221,43,72,2,NULL),(222,47,72,2,NULL),(223,49,72,2,NULL),(224,224,19,2,NULL),(225,51,72,2,NULL),(226,55,72,2,NULL),(227,57,72,2,NULL),(228,224,35,2,NULL),(229,61,72,2,NULL),(230,121,72,2,NULL),(231,224,42,2,NULL),(232,40,9,2,NULL),(233,43,9,2,NULL),(234,47,9,2,NULL),(235,227,4,2,NULL),(236,49,9,2,NULL),(237,51,9,2,NULL),(238,55,9,2,NULL),(239,227,19,2,NULL),(240,57,9,2,NULL),(241,61,9,2,NULL),(242,121,9,2,NULL),(243,227,35,2,NULL),(244,30,7,2,NULL),(245,58,7,2,NULL),(246,227,42,2,NULL),(247,70,7,2,NULL),(248,74,7,2,NULL),(249,97,1,2,NULL),(250,77,7,2,NULL),(251,80,7,2,NULL),(252,85,7,2,NULL),(253,105,1,2,NULL),(254,113,7,2,NULL),(255,117,7,2,NULL),(256,108,1,2,NULL),(257,135,7,2,NULL),(258,140,7,2,NULL),(259,111,1,2,NULL),(260,143,7,2,NULL),(261,170,7,2,NULL),(262,116,1,2,NULL),(263,40,19,2,NULL),(264,43,19,2,NULL),(265,120,1,2,NULL),(266,47,19,2,NULL),(267,49,19,2,NULL),(268,190,1,2,NULL),(269,51,19,2,NULL),(270,55,19,2,NULL),(271,206,1,2,NULL),(272,57,19,2,NULL),(273,61,19,2,NULL),(274,208,1,2,NULL),(275,121,19,2,NULL),(276,40,25,2,NULL),(277,212,1,2,NULL),(278,43,25,2,NULL),(279,47,25,2,NULL),(280,215,1,2,NULL),(281,49,25,2,NULL),(282,51,25,2,NULL),(283,222,1,2,NULL),(284,55,25,2,NULL),(285,57,25,2,NULL),(286,4,31,2,NULL),(287,61,25,2,NULL),(288,121,25,2,NULL),(289,15,31,2,NULL),(290,40,27,2,NULL),(291,43,27,2,NULL),(292,19,31,2,NULL),(293,47,27,2,NULL),(294,49,27,2,NULL),(295,51,27,2,NULL),(296,20,31,2,NULL),(297,55,27,2,NULL),(298,57,27,2,NULL),(299,22,31,2,NULL),(300,61,27,2,NULL),(301,121,27,2,NULL),(302,25,31,2,NULL),(303,40,54,2,NULL),(304,43,54,2,NULL),(305,31,31,2,NULL),(306,47,54,2,NULL),(307,49,54,2,NULL),(308,124,31,2,NULL),(309,51,54,2,NULL),(310,55,54,2,NULL),(311,127,31,2,NULL),(312,57,54,2,NULL),(313,61,54,2,NULL),(314,130,31,2,NULL),(315,121,54,2,NULL),(316,40,77,2,NULL),(317,132,31,2,NULL),(318,43,77,2,NULL),(319,47,77,2,NULL),(320,134,31,2,NULL),(321,49,77,2,NULL),(322,51,77,2,NULL),(323,82,31,2,NULL),(324,55,77,2,NULL),(325,57,77,2,NULL),(326,97,4,2,NULL),(327,61,77,2,NULL),(328,121,77,2,NULL),(329,105,4,2,NULL),(330,40,82,2,NULL),(331,43,82,2,NULL),(332,43,82,2,NULL),(333,108,4,2,NULL),(334,47,82,2,NULL),(335,49,82,2,NULL),(336,111,4,2,NULL),(337,51,82,2,NULL),(338,55,82,2,NULL),(339,116,4,2,NULL),(340,57,82,2,NULL),(341,120,4,2,NULL),(342,61,82,2,NULL),(343,61,82,2,NULL),(344,190,4,2,NULL),(345,121,82,2,NULL),(346,40,86,2,NULL),(347,206,4,2,NULL),(348,43,86,2,NULL),(349,43,86,2,NULL),(350,208,4,2,NULL),(351,47,86,2,NULL),(352,47,86,2,NULL),(353,212,4,2,NULL),(354,49,86,2,NULL),(355,49,86,2,NULL),(356,215,4,2,NULL),(357,51,86,2,NULL),(358,51,86,2,NULL),(359,222,4,2,NULL),(360,55,86,2,NULL),(361,55,86,2,NULL),(362,97,5,2,NULL),(363,57,86,2,NULL),(364,61,86,2,NULL),(365,105,5,2,NULL),(366,121,86,2,NULL),(367,121,86,2,NULL),(368,108,5,2,NULL),(369,40,87,2,NULL),(370,40,87,2,NULL),(371,111,5,2,NULL),(372,43,87,2,NULL),(373,47,87,2,NULL),(374,116,5,2,NULL),(375,49,87,2,NULL),(376,49,87,2,NULL),(377,120,5,2,NULL),(378,51,87,2,NULL),(379,51,87,2,NULL),(380,190,5,2,NULL),(381,55,87,2,NULL),(382,57,87,2,NULL),(383,206,5,2,NULL),(384,61,87,2,NULL),(385,61,87,2,NULL),(386,208,5,2,NULL),(387,121,87,2,NULL),(388,121,87,2,NULL),(389,27,3,2,NULL),(390,212,5,2,NULL),(391,40,31,2,NULL),(392,40,31,2,NULL),(393,215,5,2,NULL),(394,27,13,2,NULL),(395,43,31,2,NULL),(396,43,31,2,NULL),(397,222,5,2,NULL),(398,47,31,2,NULL),(399,47,31,2,NULL),(400,27,33,2,NULL),(401,97,6,2,NULL),(402,49,31,2,NULL),(403,49,31,2,NULL),(404,105,6,2,NULL),(405,51,31,2,NULL),(406,27,40,2,NULL),(407,55,31,2,NULL),(408,108,6,2,NULL),(409,57,31,2,NULL),(410,57,31,2,NULL),(411,101,3,2,NULL),(412,111,6,2,NULL),(413,61,31,2,NULL),(414,61,31,2,NULL),(415,116,6,2,NULL),(416,101,13,2,NULL),(417,121,31,2,NULL),(418,121,31,2,NULL),(419,120,6,2,NULL),(420,97,7,2,NULL),(421,97,7,2,NULL),(422,101,33,2,NULL),(423,190,6,2,NULL),(424,105,7,2,NULL),(425,105,7,2,NULL),(426,101,40,2,NULL),(427,206,6,2,NULL),(428,108,7,2,NULL),(429,108,7,2,NULL),(430,175,4,2,NULL),(431,208,6,2,NULL),(432,111,7,2,NULL),(433,111,7,2,NULL),(434,175,19,2,NULL),(435,212,6,2,NULL),(436,116,7,2,NULL),(437,116,7,2,NULL),(438,215,6,2,NULL),(439,175,35,2,NULL),(440,120,7,2,NULL),(441,120,7,2,NULL),(442,222,6,2,NULL),(443,190,7,2,NULL),(444,190,7,2,NULL),(445,175,42,2,NULL),(446,97,45,2,NULL),(447,206,7,2,NULL),(448,206,7,2,NULL),(449,105,45,2,NULL),(450,179,4,2,NULL),(451,208,7,2,NULL),(452,212,7,2,NULL),(453,108,45,2,NULL),(454,215,7,2,NULL),(455,215,7,2,NULL),(456,179,19,2,NULL),(457,111,45,2,NULL),(458,222,7,2,NULL),(459,222,7,2,NULL),(460,116,45,2,NULL),(461,179,35,2,NULL),(462,142,7,2,NULL),(463,142,7,2,NULL),(464,120,45,2,NULL),(465,40,35,2,NULL),(466,40,35,2,NULL),(467,179,42,2,NULL),(468,190,45,2,NULL),(469,43,35,2,NULL),(470,43,35,2,NULL),(471,206,45,2,NULL),(472,181,4,2,NULL),(473,47,35,2,NULL),(474,47,35,2,NULL),(475,208,45,2,NULL),(476,49,35,2,NULL),(477,49,35,2,NULL),(478,181,19,2,NULL),(479,212,45,2,NULL),(480,51,35,2,NULL),(481,51,35,2,NULL),(482,181,35,2,NULL),(483,215,45,2,NULL),(484,55,35,2,NULL),(485,55,35,2,NULL),(486,181,42,2,NULL),(487,222,45,2,NULL),(488,57,35,2,NULL),(489,57,35,2,NULL),(490,97,46,2,NULL),(491,191,4,2,NULL),(492,61,35,2,NULL),(493,61,35,2,NULL),(494,105,46,2,NULL),(495,121,35,2,NULL),(496,121,35,2,NULL),(497,191,19,2,NULL),(498,108,46,2,NULL),(499,40,37,2,NULL),(500,43,37,2,NULL),(501,191,35,2,NULL),(502,111,46,2,NULL),(503,47,37,2,NULL),(504,47,37,2,NULL),(505,116,46,2,NULL),(506,191,42,2,NULL),(507,49,37,2,NULL),(508,51,37,2,NULL),(509,120,46,2,NULL),(510,194,4,2,NULL),(511,55,37,2,NULL),(512,55,37,2,NULL),(513,190,46,2,NULL),(514,57,37,2,NULL),(515,57,37,2,NULL),(516,194,19,2,NULL),(517,206,46,2,NULL),(518,61,37,2,NULL),(519,61,37,2,NULL),(520,208,46,2,NULL),(521,194,35,2,NULL),(522,121,37,2,NULL),(523,121,37,2,NULL),(524,212,46,2,NULL),(525,194,42,2,NULL),(526,40,39,2,NULL),(527,40,39,2,NULL),(528,215,46,2,NULL),(529,67,1,2,NULL),(530,43,39,2,NULL),(531,47,39,2,NULL),(532,222,46,2,NULL),(533,156,1,2,NULL),(534,49,39,2,NULL),(535,49,39,2,NULL),(536,97,48,2,NULL),(537,159,1,2,NULL),(538,51,39,2,NULL),(539,55,39,2,NULL),(540,105,48,2,NULL),(541,160,1,2,NULL),(542,57,39,2,NULL),(543,57,39,2,NULL),(544,108,48,2,NULL),(545,161,1,2,NULL),(546,61,39,2,NULL),(547,61,39,2,NULL),(548,111,48,2,NULL),(549,164,1,2,NULL),(550,121,39,2,NULL),(551,40,50,2,NULL),(552,116,48,2,NULL),(553,172,1,2,NULL),(554,43,50,2,NULL),(555,43,50,2,NULL),(556,120,48,2,NULL),(557,177,1,2,NULL),(558,47,50,2,NULL),(559,47,50,2,NULL),(560,190,48,2,NULL),(561,184,1,2,NULL),(562,49,50,2,NULL),(563,51,50,2,NULL),(564,206,48,2,NULL),(565,185,1,2,NULL),(566,55,50,2,NULL),(567,55,50,2,NULL),(568,208,48,2,NULL),(569,188,1,2,NULL),(570,57,50,2,NULL),(571,61,50,2,NULL),(572,212,48,2,NULL),(573,209,1,2,NULL),(574,121,50,2,NULL),(575,121,50,2,NULL),(576,215,48,2,NULL),(577,4,36,2,NULL),(578,40,53,2,NULL),(579,40,53,2,NULL),(580,15,36,2,NULL),(581,222,48,2,NULL),(582,43,53,2,NULL),(583,43,53,2,NULL),(584,97,49,2,NULL),(585,19,36,2,NULL),(586,47,53,2,NULL),(587,49,53,2,NULL),(588,105,49,2,NULL),(589,51,53,2,NULL),(590,51,53,2,NULL),(591,20,36,2,NULL),(592,108,49,2,NULL),(593,55,53,2,NULL),(594,55,53,2,NULL),(595,22,36,2,NULL),(596,111,49,2,NULL),(597,57,53,2,NULL),(598,57,53,2,NULL),(599,25,36,2,NULL),(600,116,49,2,NULL),(601,61,53,2,NULL),(602,121,53,2,NULL),(603,31,36,2,NULL),(604,120,49,2,NULL),(605,40,61,2,NULL),(606,40,61,2,NULL),(607,124,36,2,NULL),(608,190,49,2,NULL),(609,43,61,2,NULL),(610,43,61,2,NULL),(611,127,36,2,NULL),(612,206,49,2,NULL),(613,47,61,2,NULL),(614,130,36,2,NULL),(615,49,61,2,NULL),(616,208,49,2,NULL),(617,51,61,2,NULL),(618,51,61,2,NULL),(619,132,36,2,NULL),(620,212,49,2,NULL),(621,55,61,2,NULL),(622,134,36,2,NULL),(623,57,61,2,NULL),(624,215,49,2,NULL),(625,61,61,2,NULL),(626,61,61,2,NULL),(627,82,36,2,NULL),(628,222,49,2,NULL),(629,121,61,2,NULL),(630,121,61,2,NULL),(631,67,4,2,NULL),(632,97,11,2,NULL),(633,40,83,2,NULL),(634,40,83,2,NULL),(635,156,4,2,NULL),(636,105,11,2,NULL),(637,43,83,2,NULL),(638,43,83,2,NULL),(639,159,4,2,NULL),(640,108,11,2,NULL),(641,47,83,2,NULL),(642,47,83,2,NULL),(643,160,4,2,NULL),(644,111,11,2,NULL),(645,49,83,2,NULL),(646,49,83,2,NULL),(647,161,4,2,NULL),(648,116,11,2,NULL),(649,51,83,2,NULL),(650,51,83,2,NULL),(651,164,4,2,NULL),(652,120,11,2,NULL),(653,55,83,2,NULL),(654,55,83,2,NULL),(655,172,4,2,NULL),(656,190,11,2,NULL),(657,57,83,2,NULL),(658,57,83,2,NULL),(659,177,4,2,NULL),(660,206,11,2,NULL),(661,61,83,2,NULL),(662,184,4,2,NULL),(663,121,83,2,NULL),(664,208,11,2,NULL),(665,40,84,2,NULL),(666,40,84,2,NULL),(667,185,4,2,NULL),(668,212,11,2,NULL),(669,43,84,2,NULL),(670,43,84,2,NULL),(671,188,4,2,NULL),(672,215,11,2,NULL),(673,47,84,2,NULL),(674,47,84,2,NULL),(675,209,4,2,NULL),(676,222,11,2,NULL),(677,49,84,2,NULL),(678,51,84,2,NULL),(679,67,5,2,NULL),(680,97,20,2,NULL),(681,55,84,2,NULL),(682,55,84,2,NULL),(683,156,5,2,NULL),(684,105,20,2,NULL),(685,57,84,2,NULL),(686,159,5,2,NULL),(687,61,84,2,NULL),(688,108,20,2,NULL),(689,121,84,2,NULL),(690,121,84,2,NULL),(691,160,5,2,NULL),(692,111,20,2,NULL),(693,40,36,2,NULL),(694,40,36,2,NULL),(695,161,5,2,NULL),(696,116,20,2,NULL),(697,43,36,2,NULL),(698,43,36,2,NULL),(699,164,5,2,NULL),(700,120,20,2,NULL),(701,47,36,2,NULL),(702,47,36,2,NULL),(703,172,5,2,NULL),(704,190,20,2,NULL),(705,49,36,2,NULL),(706,49,36,2,NULL),(707,177,5,2,NULL),(708,206,20,2,NULL),(709,51,36,2,NULL),(710,51,36,2,NULL),(711,184,5,2,NULL),(712,208,20,2,NULL),(713,55,36,2,NULL),(714,55,36,2,NULL),(715,185,5,2,NULL),(716,212,20,2,NULL),(717,57,36,2,NULL),(718,57,36,2,NULL),(719,188,5,2,NULL),(720,215,20,2,NULL),(721,61,36,2,NULL),(722,61,36,2,NULL),(723,209,5,2,NULL),(724,222,20,2,NULL),(725,121,36,2,NULL),(726,121,36,2,NULL),(727,67,6,2,NULL),(728,97,24,2,NULL),(729,67,7,2,NULL),(730,67,7,2,NULL),(731,156,6,2,NULL),(732,105,24,2,NULL),(733,156,7,2,NULL),(734,156,7,2,NULL),(735,159,6,2,NULL),(736,108,24,2,NULL),(737,159,7,2,NULL),(738,159,7,2,NULL),(739,160,6,2,NULL),(740,111,24,2,NULL),(741,160,7,2,NULL),(742,160,7,2,NULL),(743,161,6,2,NULL),(744,116,24,2,NULL),(745,161,7,2,NULL),(746,161,7,2,NULL),(747,164,6,2,NULL),(748,120,24,2,NULL),(749,164,7,2,NULL),(750,164,7,2,NULL),(751,172,6,2,NULL),(752,190,24,2,NULL),(753,172,7,2,NULL),(754,172,7,2,NULL),(755,177,6,2,NULL),(756,206,24,2,NULL),(757,177,7,2,NULL),(758,177,7,2,NULL),(759,184,6,2,NULL),(760,208,24,2,NULL),(761,184,7,2,NULL),(762,184,7,2,NULL),(763,185,6,2,NULL),(764,212,24,2,NULL),(765,185,7,2,NULL),(766,185,7,2,NULL),(767,188,6,2,NULL),(768,215,24,2,NULL),(769,188,7,2,NULL),(770,188,7,2,NULL),(771,209,6,2,NULL),(772,222,24,2,NULL),(773,209,7,2,NULL),(774,209,7,2,NULL),(775,67,45,2,NULL),(776,97,55,2,NULL),(777,211,7,2,NULL),(778,211,7,2,NULL),(779,156,45,2,NULL),(780,105,55,2,NULL),(781,40,42,2,NULL),(782,40,42,2,NULL),(783,159,45,2,NULL),(784,108,55,2,NULL),(785,43,42,2,NULL),(786,43,42,2,NULL),(787,160,45,2,NULL),(788,111,55,2,NULL),(789,47,42,2,NULL),(790,47,42,2,NULL),(791,161,45,2,NULL),(792,116,55,2,NULL),(793,49,42,2,NULL),(794,49,42,2,NULL),(795,164,45,2,NULL),(796,120,55,2,NULL),(797,51,42,2,NULL),(798,51,42,2,NULL),(799,172,45,2,NULL),(800,190,55,2,NULL),(801,55,42,2,NULL),(802,55,42,2,NULL),(803,177,45,2,NULL),(804,206,55,2,NULL),(805,57,42,2,NULL),(806,57,42,2,NULL),(807,184,45,2,NULL),(808,208,55,2,NULL),(809,61,42,2,NULL),(810,185,45,2,NULL),(811,121,42,2,NULL),(812,212,55,2,NULL),(813,188,45,2,NULL),(814,40,43,2,NULL),(815,40,43,2,NULL),(816,215,55,2,NULL),(817,43,43,2,NULL),(818,209,45,2,NULL),(819,47,43,2,NULL),(820,222,55,2,NULL),(821,49,43,2,NULL),(822,49,43,2,NULL),(823,67,46,2,NULL),(824,97,56,2,NULL),(825,51,43,2,NULL),(826,51,43,2,NULL),(827,156,46,2,NULL),(828,105,56,2,NULL),(829,55,43,2,NULL),(830,55,43,2,NULL),(831,159,46,2,NULL),(832,108,56,2,NULL),(833,57,43,2,NULL),(834,57,43,2,NULL),(835,160,46,2,NULL),(836,111,56,2,NULL),(837,61,43,2,NULL),(838,61,43,2,NULL),(839,161,46,2,NULL),(840,116,56,2,NULL),(841,121,43,2,NULL),(842,121,43,2,NULL),(843,164,46,2,NULL),(844,120,56,2,NULL),(845,40,44,2,NULL),(846,172,46,2,NULL),(847,43,44,2,NULL),(848,190,56,2,NULL),(849,47,44,2,NULL),(850,47,44,2,NULL),(851,177,46,2,NULL),(852,206,56,2,NULL),(853,49,44,2,NULL),(854,184,46,2,NULL),(855,51,44,2,NULL),(856,208,56,2,NULL),(857,55,44,2,NULL),(858,55,44,2,NULL),(859,185,46,2,NULL),(860,212,56,2,NULL),(861,57,44,2,NULL),(862,188,46,2,NULL),(863,61,44,2,NULL),(864,215,56,2,NULL),(865,121,44,2,NULL),(866,121,44,2,NULL),(867,209,46,2,NULL),(868,222,56,2,NULL),(869,40,51,2,NULL),(870,40,51,2,NULL),(871,67,48,2,NULL),(872,97,58,2,NULL),(873,43,51,2,NULL),(874,43,51,2,NULL),(875,156,48,2,NULL),(876,105,58,2,NULL),(877,47,51,2,NULL),(878,47,51,2,NULL),(879,49,51,2,NULL),(880,108,58,2,NULL),(881,159,48,2,NULL),(882,51,51,2,NULL),(883,55,51,2,NULL),(884,111,58,2,NULL),(885,55,51,2,NULL),(886,160,48,2,NULL),(887,57,51,2,NULL),(888,116,58,2,NULL),(889,61,51,2,NULL),(890,61,51,2,NULL),(891,161,48,2,NULL),(892,120,58,2,NULL),(893,121,51,2,NULL),(894,121,51,2,NULL),(895,164,48,2,NULL),(896,190,58,2,NULL),(897,40,57,2,NULL),(898,40,57,2,NULL),(899,172,48,2,NULL),(900,206,58,2,NULL),(901,43,57,2,NULL),(902,43,57,2,NULL),(903,177,48,2,NULL),(904,208,58,2,NULL),(905,47,57,2,NULL),(906,47,57,2,NULL),(907,184,48,2,NULL),(908,212,58,2,NULL),(909,49,57,2,NULL),(910,49,57,2,NULL),(911,185,48,2,NULL),(912,215,58,2,NULL),(913,51,57,2,NULL),(914,51,57,2,NULL),(915,188,48,2,NULL),(916,222,58,2,NULL),(917,55,57,2,NULL),(918,209,48,2,NULL),(919,57,57,2,NULL),(920,97,8,2,NULL),(921,61,57,2,NULL),(922,61,57,2,NULL),(923,67,49,2,NULL),(924,105,8,2,NULL),(925,121,57,2,NULL),(926,156,49,2,NULL),(927,40,64,2,NULL),(928,108,8,2,NULL),(929,43,64,2,NULL),(930,43,64,2,NULL),(931,159,49,2,NULL),(932,111,8,2,NULL),(933,47,64,2,NULL),(934,47,64,2,NULL),(935,160,49,2,NULL),(936,116,8,2,NULL),(937,49,64,2,NULL),(938,49,64,2,NULL),(939,161,49,2,NULL),(940,120,8,2,NULL),(941,51,64,2,NULL),(942,51,64,2,NULL),(943,164,49,2,NULL),(944,190,8,2,NULL),(945,55,64,2,NULL),(946,55,64,2,NULL),(947,172,49,2,NULL),(948,206,8,2,NULL),(949,57,64,2,NULL),(950,57,64,2,NULL),(951,177,49,2,NULL),(952,208,8,2,NULL),(953,61,64,2,NULL),(954,61,64,2,NULL),(955,184,49,2,NULL),(956,212,8,2,NULL),(957,121,64,2,NULL),(958,121,64,2,NULL),(959,185,49,2,NULL),(960,215,8,2,NULL),(961,40,79,2,NULL),(962,188,49,2,NULL),(963,43,79,2,NULL),(964,222,8,2,NULL),(965,47,79,2,NULL),(966,47,79,2,NULL),(967,209,49,2,NULL),(968,64,31,2,NULL),(969,49,79,2,NULL),(970,49,79,2,NULL),(971,66,31,2,NULL),(972,67,11,2,NULL),(973,51,79,2,NULL),(974,51,79,2,NULL),(975,71,31,2,NULL),(976,156,11,2,NULL),(977,55,79,2,NULL),(978,55,79,2,NULL),(979,73,31,2,NULL),(980,159,11,2,NULL),(981,57,79,2,NULL),(982,57,79,2,NULL),(983,76,31,2,NULL),(984,160,11,2,NULL),(985,61,79,2,NULL),(986,61,79,2,NULL),(987,79,31,2,NULL),(988,161,11,2,NULL),(989,121,79,2,NULL),(990,121,79,2,NULL),(991,81,31,2,NULL),(992,164,11,2,NULL),(993,40,89,2,NULL),(994,40,89,2,NULL),(995,86,31,2,NULL),(996,172,11,2,NULL),(997,43,89,2,NULL),(998,43,89,2,NULL),(999,95,31,2,NULL),(1000,177,11,2,NULL),(1001,47,89,2,NULL),(1002,47,89,2,NULL),(1003,97,10,2,NULL),(1004,184,11,2,NULL),(1005,49,89,2,NULL),(1006,49,89,2,NULL),(1007,105,10,2,NULL),(1008,185,11,2,NULL),(1009,51,89,2,NULL),(1010,51,89,2,NULL),(1011,108,10,2,NULL),(1012,188,11,2,NULL),(1013,55,89,2,NULL),(1014,55,89,2,NULL),(1015,111,10,2,NULL),(1016,209,11,2,NULL),(1017,57,89,2,NULL),(1018,57,89,2,NULL),(1019,116,10,2,NULL),(1020,67,20,2,NULL),(1021,61,89,2,NULL),(1022,61,89,2,NULL),(1023,120,10,2,NULL),(1024,156,20,2,NULL),(1025,121,89,2,NULL),(1026,121,89,2,NULL),(1027,190,10,2,NULL),(1028,159,20,2,NULL),(1029,4,11,2,NULL),(1030,4,11,2,NULL),(1031,160,20,2,NULL),(1032,206,10,2,NULL),(1033,15,11,2,NULL),(1034,15,11,2,NULL),(1035,208,10,2,NULL),(1036,161,20,2,NULL),(1037,19,11,2,NULL),(1038,19,11,2,NULL),(1039,212,10,2,NULL),(1040,164,20,2,NULL),(1041,20,11,2,NULL),(1042,20,11,2,NULL),(1043,215,10,2,NULL),(1044,172,20,2,NULL),(1045,22,11,2,NULL),(1046,22,11,2,NULL),(1047,222,10,2,NULL),(1048,177,20,2,NULL),(1049,25,11,2,NULL),(1050,25,11,2,NULL),(1051,184,20,2,NULL),(1052,97,23,2,NULL),(1053,31,11,2,NULL),(1054,31,11,2,NULL),(1055,185,20,2,NULL),(1056,105,23,2,NULL),(1057,124,11,2,NULL),(1058,124,11,2,NULL),(1059,108,23,2,NULL),(1060,188,20,2,NULL),(1061,127,11,2,NULL),(1062,130,11,2,NULL),(1063,111,23,2,NULL),(1064,209,20,2,NULL),(1065,132,11,2,NULL),(1066,132,11,2,NULL),(1067,116,23,2,NULL),(1068,67,24,2,NULL),(1069,134,11,2,NULL),(1070,134,11,2,NULL),(1071,156,24,2,NULL),(1072,120,23,2,NULL),(1073,82,11,2,NULL),(1074,82,11,2,NULL),(1075,190,23,2,NULL),(1076,159,24,2,NULL),(1077,64,11,2,NULL),(1078,64,11,2,NULL),(1079,206,23,2,NULL),(1080,160,24,2,NULL),(1081,66,11,2,NULL),(1082,208,23,2,NULL),(1083,161,24,2,NULL),(1084,71,11,2,NULL),(1085,73,11,2,NULL),(1086,212,23,2,NULL),(1087,164,24,2,NULL),(1088,76,11,2,NULL),(1089,79,11,2,NULL),(1090,81,11,2,NULL),(1091,215,23,2,NULL),(1092,172,24,2,NULL),(1093,222,23,2,NULL),(1094,86,11,2,NULL),(1095,177,24,2,NULL),(1096,95,11,2,NULL),(1097,97,26,2,NULL),(1098,30,11,2,NULL),(1099,30,11,2,NULL),(1100,184,24,2,NULL),(1101,105,26,2,NULL),(1102,185,24,2,NULL),(1103,58,11,2,NULL),(1104,58,11,2,NULL),(1105,108,26,2,NULL),(1106,70,11,2,NULL),(1107,70,11,2,NULL),(1108,188,24,2,NULL),(1109,111,26,2,NULL),(1110,74,11,2,NULL),(1111,209,24,2,NULL),(1112,77,11,2,NULL),(1113,116,26,2,NULL),(1114,80,11,2,NULL),(1115,80,11,2,NULL),(1116,67,55,2,NULL),(1117,120,26,2,NULL),(1118,85,11,2,NULL),(1119,156,55,2,NULL),(1120,113,11,2,NULL),(1121,190,26,2,NULL),(1122,117,11,2,NULL),(1123,117,11,2,NULL),(1124,159,55,2,NULL),(1125,206,26,2,NULL),(1126,135,11,2,NULL),(1127,135,11,2,NULL),(1128,160,55,2,NULL),(1129,208,26,2,NULL),(1130,140,11,2,NULL),(1131,140,11,2,NULL),(1132,161,55,2,NULL),(1133,212,26,2,NULL),(1134,143,11,2,NULL),(1135,164,55,2,NULL),(1136,143,11,2,NULL),(1137,215,26,2,NULL),(1138,170,11,2,NULL),(1139,170,11,2,NULL),(1140,172,55,2,NULL),(1141,222,26,2,NULL),(1142,177,55,2,NULL),(1143,142,11,2,NULL),(1144,142,11,2,NULL),(1145,97,29,2,NULL),(1146,184,55,2,NULL),(1147,211,11,2,NULL),(1148,211,11,2,NULL),(1149,105,29,2,NULL),(1150,185,55,2,NULL),(1151,108,29,2,NULL),(1152,4,20,2,NULL),(1153,4,20,2,NULL),(1154,188,55,2,NULL),(1155,111,29,2,NULL),(1156,15,20,2,NULL),(1157,15,20,2,NULL),(1158,209,55,2,NULL),(1159,19,20,2,NULL),(1160,116,29,2,NULL),(1161,20,20,2,NULL),(1162,67,56,2,NULL),(1163,22,20,2,NULL),(1164,120,29,2,NULL),(1165,22,20,2,NULL),(1166,156,56,2,NULL),(1167,25,20,2,NULL),(1168,190,29,2,NULL),(1169,31,20,2,NULL),(1170,159,56,2,NULL),(1171,124,20,2,NULL),(1172,124,20,2,NULL),(1173,206,29,2,NULL),(1174,160,56,2,NULL),(1175,127,20,2,NULL),(1176,208,29,2,NULL),(1177,130,20,2,NULL),(1178,161,56,2,NULL),(1179,132,20,2,NULL),(1180,132,20,2,NULL),(1181,212,29,2,NULL),(1182,164,56,2,NULL),(1183,134,20,2,NULL),(1184,215,29,2,NULL),(1185,82,20,2,NULL),(1186,172,56,2,NULL),(1187,222,29,2,NULL),(1188,177,56,2,NULL),(1189,64,20,2,NULL),(1190,97,59,2,NULL),(1191,66,20,2,NULL),(1192,184,56,2,NULL),(1193,71,20,2,NULL),(1194,105,59,2,NULL),(1195,71,20,2,NULL),(1196,185,56,2,NULL),(1197,73,20,2,NULL),(1198,108,59,2,NULL),(1199,76,20,2,NULL),(1200,188,56,2,NULL),(1201,79,20,2,NULL),(1202,79,20,2,NULL),(1203,111,59,2,NULL),(1204,209,56,2,NULL),(1205,81,20,2,NULL),(1206,81,20,2,NULL),(1207,116,59,2,NULL),(1208,67,58,2,NULL),(1209,86,20,2,NULL),(1210,86,20,2,NULL),(1211,120,59,2,NULL),(1212,156,58,2,NULL),(1213,95,20,2,NULL),(1214,95,20,2,NULL),(1215,190,59,2,NULL),(1216,159,58,2,NULL),(1217,206,59,2,NULL),(1218,30,20,2,NULL),(1219,160,58,2,NULL),(1220,58,20,2,NULL),(1221,208,59,2,NULL),(1222,58,20,2,NULL),(1223,161,58,2,NULL),(1224,70,20,2,NULL),(1225,70,20,2,NULL),(1226,212,59,2,NULL),(1227,164,58,2,NULL),(1228,74,20,2,NULL),(1229,74,20,2,NULL),(1230,215,59,2,NULL),(1231,172,58,2,NULL),(1232,77,20,2,NULL),(1233,77,20,2,NULL),(1234,222,59,2,NULL),(1235,177,58,2,NULL),(1236,80,20,2,NULL),(1237,97,60,2,NULL),(1238,85,20,2,NULL),(1239,184,58,2,NULL),(1240,113,20,2,NULL),(1241,105,60,2,NULL),(1242,113,20,2,NULL),(1243,185,58,2,NULL),(1244,117,20,2,NULL),(1245,108,60,2,NULL),(1246,135,20,2,NULL),(1247,188,58,2,NULL),(1248,140,20,2,NULL),(1249,140,20,2,NULL),(1250,111,60,2,NULL),(1251,209,58,2,NULL),(1252,143,20,2,NULL),(1253,143,20,2,NULL),(1254,116,60,2,NULL),(1255,67,8,2,NULL),(1256,170,20,2,NULL),(1257,170,20,2,NULL),(1258,120,60,2,NULL),(1259,156,8,2,NULL),(1260,190,60,2,NULL),(1261,142,20,2,NULL),(1262,142,20,2,NULL),(1263,159,8,2,NULL),(1264,206,60,2,NULL),(1265,160,8,2,NULL),(1266,211,20,2,NULL),(1267,211,20,2,NULL),(1268,208,60,2,NULL),(1269,161,8,2,NULL),(1270,212,60,2,NULL),(1271,4,24,2,NULL),(1272,4,24,2,NULL),(1273,164,8,2,NULL),(1274,215,60,2,NULL),(1275,15,24,2,NULL),(1276,15,24,2,NULL),(1277,172,8,2,NULL),(1278,222,60,2,NULL),(1279,19,24,2,NULL),(1280,19,24,2,NULL),(1281,177,8,2,NULL),(1282,97,72,2,NULL),(1283,20,24,2,NULL),(1284,184,8,2,NULL),(1285,22,24,2,NULL),(1286,105,72,2,NULL),(1287,25,24,2,NULL),(1288,185,8,2,NULL),(1289,31,24,2,NULL),(1290,108,72,2,NULL),(1291,124,24,2,NULL),(1292,188,8,2,NULL),(1293,127,24,2,NULL),(1294,111,72,2,NULL),(1295,209,8,2,NULL),(1296,130,24,2,NULL),(1297,130,24,2,NULL),(1298,116,72,2,NULL),(1299,132,24,2,NULL),(1300,64,36,2,NULL),(1301,134,24,2,NULL),(1302,120,72,2,NULL),(1303,66,36,2,NULL),(1304,82,24,2,NULL),(1305,82,24,2,NULL),(1306,190,72,2,NULL),(1307,71,36,2,NULL),(1308,206,72,2,NULL),(1309,64,24,2,NULL),(1310,64,24,2,NULL),(1311,73,36,2,NULL),(1312,208,72,2,NULL),(1313,66,24,2,NULL),(1314,76,36,2,NULL),(1315,71,24,2,NULL),(1316,212,72,2,NULL),(1317,73,24,2,NULL),(1318,73,24,2,NULL),(1319,79,36,2,NULL),(1320,215,72,2,NULL),(1321,76,24,2,NULL),(1322,76,24,2,NULL),(1323,81,36,2,NULL),(1324,222,72,2,NULL),(1325,79,24,2,NULL),(1326,86,36,2,NULL),(1327,81,24,2,NULL),(1328,97,9,2,NULL),(1329,86,24,2,NULL),(1330,86,24,2,NULL),(1331,95,36,2,NULL),(1332,105,9,2,NULL),(1333,95,24,2,NULL),(1334,95,24,2,NULL),(1335,67,10,2,NULL),(1336,108,9,2,NULL),(1337,156,10,2,NULL),(1338,30,24,2,NULL),(1339,30,24,2,NULL),(1340,111,9,2,NULL),(1341,159,10,2,NULL),(1342,58,24,2,NULL),(1343,58,24,2,NULL),(1344,116,9,2,NULL),(1345,160,10,2,NULL),(1346,70,24,2,NULL),(1347,70,24,2,NULL),(1348,161,10,2,NULL),(1349,120,9,2,NULL),(1350,74,24,2,NULL),(1351,77,24,2,NULL),(1352,164,10,2,NULL),(1353,190,9,2,NULL),(1354,80,24,2,NULL),(1355,206,9,2,NULL),(1356,85,24,2,NULL),(1357,172,10,2,NULL),(1358,113,24,2,NULL),(1359,208,9,2,NULL),(1360,117,24,2,NULL),(1361,117,24,2,NULL),(1362,177,10,2,NULL),(1363,212,9,2,NULL),(1364,135,24,2,NULL),(1365,135,24,2,NULL),(1366,184,10,2,NULL),(1367,215,9,2,NULL),(1368,140,24,2,NULL),(1369,140,24,2,NULL),(1370,185,10,2,NULL),(1371,222,9,2,NULL),(1372,143,24,2,NULL),(1373,143,24,2,NULL),(1374,188,10,2,NULL),(1375,30,31,2,NULL),(1376,170,24,2,NULL),(1377,170,24,2,NULL),(1378,209,10,2,NULL),(1379,58,31,2,NULL),(1380,67,23,2,NULL),(1381,142,24,2,NULL),(1382,142,24,2,NULL),(1383,70,31,2,NULL),(1384,156,23,2,NULL),(1385,74,31,2,NULL),(1386,211,24,2,NULL),(1387,211,24,2,NULL),(1388,159,23,2,NULL),(1389,77,31,2,NULL),(1390,160,23,2,NULL),(1391,80,31,2,NULL),(1392,161,23,2,NULL),(1393,85,31,2,NULL),(1394,164,23,2,NULL),(1395,113,31,2,NULL),(1396,172,23,2,NULL),(1397,117,31,2,NULL),(1398,177,23,2,NULL),(1399,135,31,2,NULL),(1400,184,23,2,NULL),(1401,140,31,2,NULL),(1402,185,23,2,NULL),(1403,4,55,2,NULL),(1404,4,55,2,NULL),(1405,143,31,2,NULL),(1406,15,55,2,NULL),(1407,15,55,2,NULL),(1408,188,23,2,NULL),(1409,170,31,2,NULL),(1410,19,55,2,NULL),(1411,209,23,2,NULL),(1412,20,55,2,NULL),(1413,97,19,2,NULL),(1414,22,55,2,NULL),(1415,22,55,2,NULL),(1416,67,26,2,NULL),(1417,105,19,2,NULL),(1418,25,55,2,NULL),(1419,25,55,2,NULL),(1420,156,26,2,NULL),(1421,108,19,2,NULL),(1422,31,55,2,NULL),(1423,31,55,2,NULL),(1424,159,26,2,NULL),(1425,111,19,2,NULL),(1426,124,55,2,NULL),(1427,124,55,2,NULL),(1428,160,26,2,NULL),(1429,116,19,2,NULL),(1430,127,55,2,NULL),(1431,127,55,2,NULL),(1432,161,26,2,NULL),(1433,120,19,2,NULL),(1434,130,55,2,NULL),(1435,164,26,2,NULL),(1436,132,55,2,NULL),(1437,190,19,2,NULL),(1438,134,55,2,NULL),(1439,134,55,2,NULL),(1440,172,26,2,NULL),(1441,206,19,2,NULL),(1442,82,55,2,NULL),(1443,82,55,2,NULL),(1444,177,26,2,NULL),(1445,208,19,2,NULL),(1446,184,26,2,NULL),(1447,64,55,2,NULL),(1448,64,55,2,NULL),(1449,212,19,2,NULL),(1450,66,55,2,NULL),(1451,66,55,2,NULL),(1452,185,26,2,NULL),(1453,215,19,2,NULL),(1454,71,55,2,NULL),(1455,71,55,2,NULL),(1456,188,26,2,NULL),(1457,222,19,2,NULL),(1458,73,55,2,NULL),(1459,209,26,2,NULL),(1460,76,55,2,NULL),(1461,97,25,2,NULL),(1462,79,55,2,NULL),(1463,67,29,2,NULL),(1464,81,55,2,NULL),(1465,105,25,2,NULL),(1466,86,55,2,NULL),(1467,156,29,2,NULL),(1468,95,55,2,NULL),(1469,108,25,2,NULL),(1470,159,29,2,NULL),(1471,30,55,2,NULL),(1472,30,55,2,NULL),(1473,111,25,2,NULL),(1474,58,55,2,NULL),(1475,58,55,2,NULL),(1476,160,29,2,NULL),(1477,116,25,2,NULL),(1478,70,55,2,NULL),(1479,70,55,2,NULL),(1480,161,29,2,NULL),(1481,120,25,2,NULL),(1482,74,55,2,NULL),(1483,74,55,2,NULL),(1484,164,29,2,NULL),(1485,190,25,2,NULL),(1486,77,55,2,NULL),(1487,77,55,2,NULL),(1488,172,29,2,NULL),(1489,206,25,2,NULL),(1490,80,55,2,NULL),(1491,80,55,2,NULL),(1492,177,29,2,NULL),(1493,208,25,2,NULL),(1494,85,55,2,NULL),(1495,184,29,2,NULL),(1496,113,55,2,NULL),(1497,212,25,2,NULL),(1498,117,55,2,NULL),(1499,117,55,2,NULL),(1500,185,29,2,NULL),(1501,215,25,2,NULL),(1502,135,55,2,NULL),(1503,135,55,2,NULL),(1504,188,29,2,NULL),(1505,222,25,2,NULL),(1506,140,55,2,NULL),(1507,209,29,2,NULL),(1508,143,55,2,NULL),(1509,97,27,2,NULL),(1510,170,55,2,NULL),(1511,67,59,2,NULL),(1512,142,55,2,NULL),(1513,105,27,2,NULL),(1514,156,59,2,NULL),(1515,211,55,2,NULL),(1516,108,27,2,NULL),(1517,4,56,2,NULL),(1518,159,59,2,NULL),(1519,15,56,2,NULL),(1520,19,56,2,NULL),(1521,111,27,2,NULL),(1522,20,56,2,NULL),(1523,160,59,2,NULL),(1524,116,27,2,NULL),(1525,22,56,2,NULL),(1526,25,56,2,NULL),(1527,161,59,2,NULL),(1528,120,27,2,NULL),(1529,31,56,2,NULL),(1530,124,56,2,NULL),(1531,164,59,2,NULL),(1532,190,27,2,NULL),(1533,127,56,2,NULL),(1534,172,59,2,NULL),(1535,130,56,2,NULL),(1536,206,27,2,NULL),(1537,132,56,2,NULL),(1538,134,56,2,NULL),(1539,177,59,2,NULL),(1540,208,27,2,NULL),(1541,82,56,2,NULL),(1542,184,59,2,NULL),(1543,64,56,2,NULL),(1544,212,27,2,NULL),(1545,66,56,2,NULL),(1546,185,59,2,NULL),(1547,71,56,2,NULL),(1548,215,27,2,NULL),(1549,73,56,2,NULL),(1550,188,59,2,NULL),(1551,76,56,2,NULL),(1552,222,27,2,NULL),(1553,79,56,2,NULL),(1554,209,59,2,NULL),(1555,81,56,2,NULL),(1556,86,56,2,NULL),(1557,97,54,2,NULL),(1558,67,60,2,NULL),(1559,95,56,2,NULL),(1560,105,54,2,NULL),(1561,30,56,2,NULL),(1562,156,60,2,NULL),(1563,58,56,2,NULL),(1564,70,56,2,NULL),(1565,108,54,2,NULL),(1566,159,60,2,NULL),(1567,74,56,2,NULL),(1568,111,54,2,NULL),(1569,77,56,2,NULL),(1570,160,60,2,NULL),(1571,80,56,2,NULL),(1572,85,56,2,NULL),(1573,116,54,2,NULL),(1574,161,60,2,NULL),(1575,113,56,2,NULL),(1576,120,54,2,NULL),(1577,117,56,2,NULL),(1578,164,60,2,NULL),(1579,135,56,2,NULL),(1580,190,54,2,NULL),(1581,140,56,2,NULL),(1582,172,60,2,NULL),(1583,143,56,2,NULL),(1584,206,54,2,NULL),(1585,170,56,2,NULL),(1586,177,60,2,NULL),(1587,142,56,2,NULL),(1588,208,54,2,NULL),(1589,184,60,2,NULL),(1590,211,56,2,NULL),(1591,212,54,2,NULL),(1592,4,58,2,NULL),(1593,15,58,2,NULL),(1594,185,60,2,NULL),(1595,215,54,2,NULL),(1596,19,58,2,NULL),(1597,188,60,2,NULL),(1598,20,58,2,NULL),(1599,222,54,2,NULL),(1600,22,58,2,NULL),(1601,22,58,2,NULL),(1602,209,60,2,NULL),(1603,97,77,2,NULL),(1604,25,58,2,NULL),(1605,25,58,2,NULL),(1606,67,72,2,NULL),(1607,105,77,2,NULL),(1608,31,58,2,NULL),(1609,31,58,2,NULL),(1610,156,72,2,NULL),(1611,108,77,2,NULL),(1612,124,58,2,NULL),(1613,124,58,2,NULL),(1614,159,72,2,NULL),(1615,111,77,2,NULL),(1616,127,58,2,NULL),(1617,127,58,2,NULL),(1618,160,72,2,NULL),(1619,116,77,2,NULL),(1620,130,58,2,NULL),(1621,161,72,2,NULL),(1622,132,58,2,NULL),(1623,120,77,2,NULL),(1624,134,58,2,NULL),(1625,134,58,2,NULL),(1626,164,72,2,NULL),(1627,190,77,2,NULL),(1628,82,58,2,NULL),(1629,82,58,2,NULL),(1630,172,72,2,NULL),(1631,206,77,2,NULL),(1632,177,72,2,NULL),(1633,64,58,2,NULL),(1634,64,58,2,NULL),(1635,208,77,2,NULL),(1636,184,72,2,NULL),(1637,66,58,2,NULL),(1638,212,77,2,NULL),(1639,71,58,2,NULL),(1640,185,72,2,NULL),(1641,73,58,2,NULL),(1642,215,77,2,NULL),(1643,73,58,2,NULL),(1644,188,72,2,NULL),(1645,76,58,2,NULL),(1646,222,77,2,NULL),(1647,79,58,2,NULL),(1648,209,72,2,NULL),(1649,81,58,2,NULL),(1650,97,82,2,NULL),(1651,81,58,2,NULL),(1652,67,9,2,NULL),(1653,86,58,2,NULL),(1654,105,82,2,NULL),(1655,95,58,2,NULL),(1656,156,9,2,NULL),(1657,108,82,2,NULL),(1658,30,58,2,NULL),(1659,30,58,2,NULL),(1660,159,9,2,NULL),(1661,58,58,2,NULL),(1662,111,82,2,NULL),(1663,70,58,2,NULL),(1664,160,9,2,NULL),(1665,74,58,2,NULL),(1666,74,58,2,NULL),(1667,116,82,2,NULL),(1668,161,9,2,NULL),(1669,77,58,2,NULL),(1670,120,82,2,NULL),(1671,80,58,2,NULL),(1672,164,9,2,NULL),(1673,190,82,2,NULL),(1674,85,58,2,NULL),(1675,85,58,2,NULL),(1676,172,9,2,NULL),(1677,113,58,2,NULL),(1678,206,82,2,NULL),(1679,117,58,2,NULL),(1680,177,9,2,NULL),(1681,135,58,2,NULL),(1682,135,58,2,NULL),(1683,208,82,2,NULL),(1684,184,9,2,NULL),(1685,212,82,2,NULL),(1686,140,58,2,NULL),(1687,140,58,2,NULL),(1688,185,9,2,NULL),(1689,143,58,2,NULL),(1690,215,82,2,NULL),(1691,170,58,2,NULL),(1692,188,9,2,NULL),(1693,222,82,2,NULL),(1694,142,58,2,NULL),(1695,142,58,2,NULL),(1696,209,9,2,NULL),(1697,97,86,2,NULL),(1698,211,58,2,NULL),(1699,211,58,2,NULL),(1700,30,36,2,NULL),(1701,105,86,2,NULL),(1702,138,14,2,NULL),(1703,138,14,2,NULL),(1704,58,36,2,NULL),(1705,138,15,2,NULL),(1706,138,15,2,NULL),(1707,108,86,2,NULL),(1708,70,36,2,NULL),(1709,64,1,2,NULL),(1710,64,1,2,NULL),(1711,111,86,2,NULL),(1712,74,36,2,NULL),(1713,66,1,2,NULL),(1714,66,1,2,NULL),(1715,116,86,2,NULL),(1716,77,36,2,NULL),(1717,71,1,2,NULL),(1718,71,1,2,NULL),(1719,120,86,2,NULL),(1720,80,36,2,NULL),(1721,73,1,2,NULL),(1722,190,86,2,NULL),(1723,73,1,2,NULL),(1724,85,36,2,NULL),(1725,76,1,2,NULL),(1726,206,86,2,NULL),(1727,79,1,2,NULL),(1728,113,36,2,NULL),(1729,208,86,2,NULL),(1730,81,1,2,NULL),(1731,81,1,2,NULL),(1732,117,36,2,NULL),(1733,86,1,2,NULL),(1734,86,1,2,NULL),(1735,135,36,2,NULL),(1736,212,86,2,NULL),(1737,95,1,2,NULL),(1738,140,36,2,NULL),(1739,215,86,2,NULL),(1740,4,8,2,NULL),(1741,15,8,2,NULL),(1742,222,86,2,NULL),(1743,19,8,2,NULL),(1744,143,36,2,NULL),(1745,19,8,2,NULL),(1746,20,8,2,NULL),(1747,20,8,2,NULL),(1748,170,36,2,NULL),(1749,22,8,2,NULL),(1750,67,19,2,NULL),(1751,25,8,2,NULL),(1752,97,87,2,NULL),(1753,31,8,2,NULL),(1754,156,19,2,NULL),(1755,105,87,2,NULL),(1756,124,8,2,NULL),(1757,127,8,2,NULL),(1758,108,87,2,NULL),(1759,130,8,2,NULL),(1760,159,19,2,NULL),(1761,132,8,2,NULL),(1762,134,8,2,NULL),(1763,111,87,2,NULL),(1764,160,19,2,NULL),(1765,82,8,2,NULL),(1766,116,87,2,NULL),(1767,161,19,2,NULL),(1768,64,4,2,NULL),(1769,66,4,2,NULL),(1770,120,87,2,NULL),(1771,71,4,2,NULL),(1772,164,19,2,NULL),(1773,73,4,2,NULL),(1774,190,87,2,NULL),(1775,172,19,2,NULL),(1776,76,4,2,NULL),(1777,79,4,2,NULL),(1778,206,87,2,NULL),(1779,81,4,2,NULL),(1780,177,19,2,NULL),(1781,86,4,2,NULL),(1782,208,87,2,NULL),(1783,184,19,2,NULL),(1784,95,4,2,NULL),(1785,64,5,2,NULL),(1786,212,87,2,NULL),(1787,66,5,2,NULL),(1788,185,19,2,NULL),(1789,71,5,2,NULL),(1790,73,5,2,NULL),(1791,215,87,2,NULL),(1792,188,19,2,NULL),(1793,76,5,2,NULL),(1794,79,5,2,NULL),(1795,222,87,2,NULL),(1796,209,19,2,NULL),(1797,81,5,2,NULL),(1798,86,5,2,NULL),(1799,142,31,2,NULL),(1800,67,25,2,NULL),(1801,95,5,2,NULL),(1802,156,25,2,NULL),(1803,64,6,2,NULL),(1804,97,35,2,NULL),(1805,66,6,2,NULL),(1806,159,25,2,NULL),(1807,71,6,2,NULL),(1808,105,35,2,NULL),(1809,73,6,2,NULL),(1810,160,25,2,NULL),(1811,76,6,2,NULL),(1812,108,35,2,NULL),(1813,79,6,2,NULL),(1814,161,25,2,NULL),(1815,111,35,2,NULL),(1816,81,6,2,NULL),(1817,86,6,2,NULL),(1818,164,25,2,NULL),(1819,95,6,2,NULL),(1820,116,35,2,NULL),(1821,64,45,2,NULL),(1822,172,25,2,NULL),(1823,66,45,2,NULL),(1824,120,35,2,NULL),(1825,71,45,2,NULL),(1826,177,25,2,NULL),(1827,73,45,2,NULL),(1828,190,35,2,NULL),(1829,76,45,2,NULL),(1830,184,25,2,NULL),(1831,79,45,2,NULL),(1832,206,35,2,NULL),(1833,81,45,2,NULL),(1834,185,25,2,NULL),(1835,86,45,2,NULL),(1836,208,35,2,NULL),(1837,95,45,2,NULL),(1838,188,25,2,NULL),(1839,64,46,2,NULL),(1840,212,35,2,NULL),(1841,66,46,2,NULL),(1842,209,25,2,NULL),(1843,71,46,2,NULL),(1844,215,35,2,NULL),(1845,73,46,2,NULL),(1846,67,27,2,NULL),(1847,222,35,2,NULL),(1848,76,46,2,NULL),(1849,79,46,2,NULL),(1850,156,27,2,NULL),(1851,97,37,2,NULL),(1852,81,46,2,NULL),(1853,86,46,2,NULL),(1854,105,37,2,NULL),(1855,95,46,2,NULL),(1856,159,27,2,NULL),(1857,64,48,2,NULL),(1858,108,37,2,NULL),(1859,66,48,2,NULL),(1860,160,27,2,NULL),(1861,71,48,2,NULL),(1862,161,27,2,NULL),(1863,111,37,2,NULL),(1864,73,48,2,NULL),(1865,76,48,2,NULL),(1866,164,27,2,NULL),(1867,116,37,2,NULL),(1868,79,48,2,NULL),(1869,81,48,2,NULL),(1870,120,37,2,NULL),(1871,86,48,2,NULL),(1872,172,27,2,NULL),(1873,95,48,2,NULL),(1874,177,27,2,NULL),(1875,64,49,2,NULL),(1876,190,37,2,NULL),(1877,66,49,2,NULL),(1878,184,27,2,NULL),(1879,71,49,2,NULL),(1880,206,37,2,NULL),(1881,73,49,2,NULL),(1882,185,27,2,NULL),(1883,76,49,2,NULL),(1884,208,37,2,NULL),(1885,79,49,2,NULL),(1886,212,37,2,NULL),(1887,81,49,2,NULL),(1888,188,27,2,NULL),(1889,86,49,2,NULL),(1890,215,37,2,NULL),(1891,209,27,2,NULL),(1892,95,49,2,NULL),(1893,64,10,2,NULL),(1894,222,37,2,NULL),(1895,67,54,2,NULL),(1896,66,10,2,NULL),(1897,71,10,2,NULL),(1898,97,39,2,NULL),(1899,73,10,2,NULL),(1900,156,54,2,NULL),(1901,76,10,2,NULL),(1902,105,39,2,NULL),(1903,79,10,2,NULL),(1904,159,54,2,NULL),(1905,81,10,2,NULL),(1906,108,39,2,NULL),(1907,160,54,2,NULL),(1908,86,10,2,NULL),(1909,95,10,2,NULL),(1910,111,39,2,NULL),(1911,161,54,2,NULL),(1912,64,23,2,NULL),(1913,66,23,2,NULL),(1914,116,39,2,NULL),(1915,164,54,2,NULL),(1916,71,23,2,NULL),(1917,73,23,2,NULL),(1918,120,39,2,NULL),(1919,172,54,2,NULL),(1920,76,23,2,NULL),(1921,79,23,2,NULL),(1922,190,39,2,NULL),(1923,177,54,2,NULL),(1924,81,23,2,NULL),(1925,86,23,2,NULL),(1926,206,39,2,NULL),(1927,184,54,2,NULL),(1928,95,23,2,NULL),(1929,64,26,2,NULL),(1930,208,39,2,NULL),(1931,185,54,2,NULL),(1932,66,26,2,NULL),(1933,71,26,2,NULL),(1934,212,39,2,NULL),(1935,188,54,2,NULL),(1936,73,26,2,NULL),(1937,76,26,2,NULL),(1938,215,39,2,NULL),(1939,209,54,2,NULL),(1940,79,26,2,NULL),(1941,81,26,2,NULL),(1942,222,39,2,NULL),(1943,67,77,2,NULL),(1944,86,26,2,NULL),(1945,95,26,2,NULL),(1946,97,50,2,NULL),(1947,64,29,2,NULL),(1948,156,77,2,NULL),(1949,66,29,2,NULL),(1950,105,50,2,NULL),(1951,71,29,2,NULL),(1952,159,77,2,NULL),(1953,73,29,2,NULL),(1954,108,50,2,NULL),(1955,160,77,2,NULL),(1956,76,29,2,NULL),(1957,79,29,2,NULL),(1958,111,50,2,NULL),(1959,161,77,2,NULL),(1960,81,29,2,NULL),(1961,86,29,2,NULL),(1962,116,50,2,NULL),(1963,95,29,2,NULL),(1964,164,77,2,NULL),(1965,120,50,2,NULL),(1966,172,77,2,NULL),(1967,64,59,2,NULL),(1968,66,59,2,NULL),(1969,177,77,2,NULL),(1970,190,50,2,NULL),(1971,71,59,2,NULL),(1972,73,59,2,NULL),(1973,206,50,2,NULL),(1974,184,77,2,NULL),(1975,76,59,2,NULL),(1976,79,59,2,NULL),(1977,208,50,2,NULL),(1978,81,59,2,NULL),(1979,185,77,2,NULL),(1980,86,59,2,NULL),(1981,212,50,2,NULL),(1982,188,77,2,NULL),(1983,95,59,2,NULL),(1984,64,60,2,NULL),(1985,215,50,2,NULL),(1986,209,77,2,NULL),(1987,66,60,2,NULL),(1988,71,60,2,NULL),(1989,222,50,2,NULL),(1990,73,60,2,NULL),(1991,67,82,2,NULL),(1992,76,60,2,NULL),(1993,97,53,2,NULL),(1994,156,82,2,NULL),(1995,79,60,2,NULL),(1996,81,60,2,NULL),(1997,105,53,2,NULL),(1998,86,60,2,NULL),(1999,159,82,2,NULL),(2000,95,60,2,NULL),(2001,160,82,2,NULL),(2002,64,72,2,NULL),(2003,108,53,2,NULL),(2004,66,72,2,NULL),(2005,161,82,2,NULL),(2006,71,72,2,NULL),(2007,111,53,2,NULL),(2008,73,72,2,NULL),(2009,164,82,2,NULL),(2010,116,53,2,NULL),(2011,76,72,2,NULL),(2012,79,72,2,NULL),(2013,172,82,2,NULL),(2014,120,53,2,NULL),(2015,81,72,2,NULL),(2016,86,72,2,NULL),(2017,177,82,2,NULL),(2018,190,53,2,NULL),(2019,95,72,2,NULL),(2020,64,9,2,NULL),(2021,184,82,2,NULL),(2022,206,53,2,NULL),(2023,66,9,2,NULL),(2024,71,9,2,NULL),(2025,73,9,2,NULL),(2026,208,53,2,NULL),(2027,185,82,2,NULL),(2028,76,9,2,NULL),(2029,212,53,2,NULL),(2030,79,9,2,NULL),(2031,188,82,2,NULL),(2032,81,9,2,NULL),(2033,215,53,2,NULL),(2034,86,9,2,NULL),(2035,209,82,2,NULL),(2036,95,9,2,NULL),(2037,222,53,2,NULL),(2038,67,86,2,NULL),(2039,30,8,2,NULL),(2040,58,8,2,NULL),(2041,97,61,2,NULL),(2042,156,86,2,NULL),(2043,70,8,2,NULL),(2044,74,8,2,NULL),(2045,105,61,2,NULL),(2046,77,8,2,NULL),(2047,80,8,2,NULL),(2048,108,61,2,NULL),(2049,85,8,2,NULL),(2050,113,8,2,NULL),(2051,111,61,2,NULL),(2052,117,8,2,NULL),(2053,159,86,2,NULL),(2054,135,8,2,NULL),(2055,116,61,2,NULL),(2056,140,8,2,NULL),(2057,160,86,2,NULL),(2058,143,8,2,NULL),(2059,120,61,2,NULL),(2060,161,86,2,NULL),(2061,170,8,2,NULL),(2062,64,19,2,NULL),(2063,164,86,2,NULL),(2064,190,61,2,NULL),(2065,66,19,2,NULL),(2066,71,19,2,NULL),(2067,206,61,2,NULL),(2068,172,86,2,NULL),(2069,73,19,2,NULL),(2070,76,19,2,NULL),(2071,208,61,2,NULL),(2072,177,86,2,NULL),(2073,79,19,2,NULL),(2074,81,19,2,NULL),(2075,212,61,2,NULL),(2076,184,86,2,NULL),(2077,86,19,2,NULL),(2078,95,19,2,NULL),(2079,215,61,2,NULL),(2080,185,86,2,NULL),(2081,64,25,2,NULL),(2082,66,25,2,NULL),(2083,222,61,2,NULL),(2084,188,86,2,NULL),(2085,71,25,2,NULL),(2086,73,25,2,NULL),(2087,209,86,2,NULL),(2088,76,25,2,NULL),(2089,97,83,2,NULL),(2090,79,25,2,NULL),(2091,105,83,2,NULL),(2092,81,25,2,NULL),(2093,67,87,2,NULL),(2094,86,25,2,NULL),(2095,108,83,2,NULL),(2096,95,25,2,NULL),(2097,156,87,2,NULL),(2098,64,27,2,NULL),(2099,111,83,2,NULL),(2100,66,27,2,NULL),(2101,159,87,2,NULL),(2102,71,27,2,NULL),(2103,116,83,2,NULL),(2104,160,87,2,NULL),(2105,73,27,2,NULL),(2106,76,27,2,NULL),(2107,120,83,2,NULL),(2108,79,27,2,NULL),(2109,161,87,2,NULL),(2110,81,27,2,NULL),(2111,190,83,2,NULL),(2112,164,87,2,NULL),(2113,86,27,2,NULL),(2114,95,27,2,NULL),(2115,206,83,2,NULL),(2116,64,54,2,NULL),(2117,172,87,2,NULL),(2118,66,54,2,NULL),(2119,208,83,2,NULL),(2120,177,87,2,NULL),(2121,71,54,2,NULL),(2122,73,54,2,NULL),(2123,212,83,2,NULL),(2124,184,87,2,NULL),(2125,76,54,2,NULL),(2126,79,54,2,NULL),(2127,215,83,2,NULL),(2128,185,87,2,NULL),(2129,81,54,2,NULL),(2130,86,54,2,NULL),(2131,222,83,2,NULL),(2132,95,54,2,NULL),(2133,188,87,2,NULL),(2134,64,77,2,NULL),(2135,97,84,2,NULL),(2136,209,87,2,NULL),(2137,66,77,2,NULL),(2138,71,77,2,NULL),(2139,105,84,2,NULL),(2140,73,77,2,NULL),(2141,67,31,2,NULL),(2142,76,77,2,NULL),(2143,108,84,2,NULL),(2144,79,77,2,NULL),(2145,156,31,2,NULL),(2146,81,77,2,NULL),(2147,111,84,2,NULL),(2148,159,31,2,NULL),(2149,86,77,2,NULL),(2150,95,77,2,NULL),(2151,116,84,2,NULL),(2152,160,31,2,NULL),(2153,64,82,2,NULL),(2154,66,82,2,NULL),(2155,120,84,2,NULL),(2156,161,31,2,NULL),(2157,71,82,2,NULL),(2158,73,82,2,NULL),(2159,190,84,2,NULL),(2160,164,31,2,NULL),(2161,76,82,2,NULL),(2162,79,82,2,NULL),(2163,206,84,2,NULL),(2164,172,31,2,NULL),(2165,81,82,2,NULL),(2166,86,82,2,NULL),(2167,208,84,2,NULL),(2168,177,31,2,NULL),(2169,95,82,2,NULL),(2170,64,86,2,NULL),(2171,212,84,2,NULL),(2172,184,31,2,NULL),(2173,66,86,2,NULL),(2174,71,86,2,NULL),(2175,215,84,2,NULL),(2176,185,31,2,NULL),(2177,73,86,2,NULL),(2178,76,86,2,NULL),(2179,222,84,2,NULL),(2180,188,31,2,NULL),(2181,79,86,2,NULL),(2182,81,86,2,NULL),(2183,97,36,2,NULL),(2184,209,31,2,NULL),(2185,86,86,2,NULL),(2186,95,86,2,NULL),(2187,105,36,2,NULL),(2188,64,87,2,NULL),(2189,108,36,2,NULL),(2190,66,87,2,NULL),(2191,111,36,2,NULL),(2192,111,36,2,NULL),(2193,71,87,2,NULL),(2194,73,87,2,NULL),(2195,116,36,2,NULL),(2196,116,36,2,NULL),(2197,76,87,2,NULL),(2198,79,87,2,NULL),(2199,120,36,2,NULL),(2200,81,87,2,NULL),(2201,190,36,2,NULL),(2202,86,87,2,NULL),(2203,206,36,2,NULL),(2204,95,87,2,NULL),(2205,208,36,2,NULL),(2206,212,36,2,NULL),(2207,212,36,2,NULL),(2208,142,8,2,NULL),(2209,64,35,2,NULL),(2210,215,36,2,NULL),(2211,66,35,2,NULL),(2212,66,35,2,NULL),(2213,222,36,2,NULL),(2214,142,36,2,NULL),(2215,71,35,2,NULL),(2216,71,35,2,NULL),(2217,211,31,2,NULL),(2218,67,35,2,NULL),(2219,97,42,2,NULL),(2220,73,35,2,NULL),(2221,73,35,2,NULL),(2222,156,35,2,NULL),(2223,76,35,2,NULL),(2224,76,35,2,NULL),(2225,105,42,2,NULL),(2226,159,35,2,NULL),(2227,79,35,2,NULL),(2228,108,42,2,NULL),(2229,160,35,2,NULL),(2230,81,35,2,NULL),(2231,86,35,2,NULL),(2232,86,35,2,NULL),(2233,161,35,2,NULL),(2234,111,42,2,NULL),(2235,95,35,2,NULL),(2236,164,35,2,NULL),(2237,116,42,2,NULL),(2238,64,37,2,NULL),(2239,64,37,2,NULL),(2240,172,35,2,NULL),(2241,66,37,2,NULL),(2242,66,37,2,NULL),(2243,120,42,2,NULL),(2244,177,35,2,NULL),(2245,71,37,2,NULL),(2246,190,42,2,NULL),(2247,73,37,2,NULL),(2248,184,35,2,NULL),(2249,76,37,2,NULL),(2250,76,37,2,NULL),(2251,206,42,2,NULL),(2252,185,35,2,NULL),(2253,79,37,2,NULL),(2254,208,42,2,NULL),(2255,81,37,2,NULL),(2256,188,35,2,NULL),(2257,86,37,2,NULL),(2258,86,37,2,NULL),(2259,212,42,2,NULL),(2260,209,35,2,NULL),(2261,95,37,2,NULL),(2262,95,37,2,NULL),(2263,215,42,2,NULL),(2264,67,37,2,NULL),(2265,64,39,2,NULL),(2266,64,39,2,NULL),(2267,222,42,2,NULL),(2268,156,37,2,NULL),(2269,66,39,2,NULL),(2270,66,39,2,NULL),(2271,97,43,2,NULL),(2272,159,37,2,NULL),(2273,105,43,2,NULL),(2274,71,39,2,NULL),(2275,71,39,2,NULL),(2276,160,37,2,NULL),(2277,73,39,2,NULL),(2278,73,39,2,NULL),(2279,108,43,2,NULL),(2280,161,37,2,NULL),(2281,76,39,2,NULL),(2282,76,39,2,NULL),(2283,111,43,2,NULL),(2284,164,37,2,NULL),(2285,79,39,2,NULL),(2286,79,39,2,NULL),(2287,116,43,2,NULL),(2288,172,37,2,NULL),(2289,81,39,2,NULL),(2290,81,39,2,NULL),(2291,120,43,2,NULL),(2292,177,37,2,NULL),(2293,86,39,2,NULL),(2294,190,43,2,NULL),(2295,95,39,2,NULL),(2296,184,37,2,NULL),(2297,64,50,2,NULL),(2298,64,50,2,NULL),(2299,206,43,2,NULL),(2300,185,37,2,NULL),(2301,66,50,2,NULL),(2302,66,50,2,NULL),(2303,208,43,2,NULL),(2304,188,37,2,NULL),(2305,71,50,2,NULL),(2306,71,50,2,NULL),(2307,212,43,2,NULL),(2308,209,37,2,NULL),(2309,215,43,2,NULL),(2310,73,50,2,NULL),(2311,73,50,2,NULL),(2312,67,39,2,NULL),(2313,76,50,2,NULL),(2314,76,50,2,NULL),(2315,222,43,2,NULL),(2316,156,39,2,NULL),(2317,79,50,2,NULL),(2318,79,50,2,NULL),(2319,97,44,2,NULL),(2320,159,39,2,NULL),(2321,81,50,2,NULL),(2322,81,50,2,NULL),(2323,105,44,2,NULL),(2324,160,39,2,NULL),(2325,86,50,2,NULL),(2326,86,50,2,NULL),(2327,108,44,2,NULL),(2328,161,39,2,NULL),(2329,95,50,2,NULL),(2330,95,50,2,NULL),(2331,111,44,2,NULL),(2332,164,39,2,NULL),(2333,64,53,2,NULL),(2334,64,53,2,NULL),(2335,116,44,2,NULL),(2336,172,39,2,NULL),(2337,66,53,2,NULL),(2338,66,53,2,NULL),(2339,120,44,2,NULL),(2340,177,39,2,NULL),(2341,71,53,2,NULL),(2342,71,53,2,NULL),(2343,190,44,2,NULL),(2344,184,39,2,NULL),(2345,73,53,2,NULL),(2346,73,53,2,NULL),(2347,206,44,2,NULL),(2348,185,39,2,NULL),(2349,76,53,2,NULL),(2350,76,53,2,NULL),(2351,208,44,2,NULL),(2352,188,39,2,NULL),(2353,79,53,2,NULL),(2354,79,53,2,NULL),(2355,212,44,2,NULL),(2356,209,39,2,NULL),(2357,81,53,2,NULL),(2358,81,53,2,NULL),(2359,215,44,2,NULL),(2360,67,50,2,NULL),(2361,86,53,2,NULL),(2362,222,44,2,NULL),(2363,95,53,2,NULL),(2364,156,50,2,NULL),(2365,97,51,2,NULL),(2366,64,61,2,NULL),(2367,64,61,2,NULL),(2368,159,50,2,NULL),(2369,66,61,2,NULL),(2370,105,51,2,NULL),(2371,71,61,2,NULL),(2372,160,50,2,NULL),(2373,108,51,2,NULL),(2374,73,61,2,NULL),(2375,73,61,2,NULL),(2376,161,50,2,NULL),(2377,76,61,2,NULL),(2378,111,51,2,NULL),(2379,79,61,2,NULL),(2380,164,50,2,NULL),(2381,116,51,2,NULL),(2382,81,61,2,NULL),(2383,81,61,2,NULL),(2384,172,50,2,NULL),(2385,86,61,2,NULL),(2386,120,51,2,NULL),(2387,95,61,2,NULL),(2388,177,50,2,NULL),(2389,64,83,2,NULL),(2390,64,83,2,NULL),(2391,190,51,2,NULL),(2392,184,50,2,NULL),(2393,66,83,2,NULL),(2394,66,83,2,NULL),(2395,206,51,2,NULL),(2396,185,50,2,NULL),(2397,71,83,2,NULL),(2398,71,83,2,NULL),(2399,208,51,2,NULL),(2400,188,50,2,NULL),(2401,73,83,2,NULL),(2402,73,83,2,NULL),(2403,212,51,2,NULL),(2404,209,50,2,NULL),(2405,76,83,2,NULL),(2406,76,83,2,NULL),(2407,215,51,2,NULL),(2408,67,53,2,NULL),(2409,79,83,2,NULL),(2410,79,83,2,NULL),(2411,222,51,2,NULL),(2412,156,53,2,NULL),(2413,81,83,2,NULL),(2414,81,83,2,NULL),(2415,97,57,2,NULL),(2416,159,53,2,NULL),(2417,86,83,2,NULL),(2418,86,83,2,NULL),(2419,105,57,2,NULL),(2420,160,53,2,NULL),(2421,95,83,2,NULL),(2422,95,83,2,NULL),(2423,108,57,2,NULL),(2424,161,53,2,NULL),(2425,64,84,2,NULL),(2426,64,84,2,NULL),(2427,111,57,2,NULL),(2428,164,53,2,NULL),(2429,66,84,2,NULL),(2430,66,84,2,NULL),(2431,116,57,2,NULL),(2432,172,53,2,NULL),(2433,71,84,2,NULL),(2434,71,84,2,NULL),(2435,120,57,2,NULL),(2436,177,53,2,NULL),(2437,73,84,2,NULL),(2438,73,84,2,NULL),(2439,190,57,2,NULL),(2440,184,53,2,NULL),(2441,76,84,2,NULL),(2442,76,84,2,NULL),(2443,206,57,2,NULL),(2444,185,53,2,NULL),(2445,79,84,2,NULL),(2446,79,84,2,NULL),(2447,208,57,2,NULL),(2448,188,53,2,NULL),(2449,81,84,2,NULL),(2450,81,84,2,NULL),(2451,212,57,2,NULL),(2452,209,53,2,NULL),(2453,86,84,2,NULL),(2454,86,84,2,NULL),(2455,215,57,2,NULL),(2456,67,61,2,NULL),(2457,95,84,2,NULL),(2458,95,84,2,NULL),(2459,222,57,2,NULL),(2460,156,61,2,NULL),(2461,97,64,2,NULL),(2462,159,61,2,NULL),(2463,105,64,2,NULL),(2464,211,8,2,NULL),(2465,211,8,2,NULL),(2466,160,61,2,NULL),(2467,64,42,2,NULL),(2468,64,42,2,NULL),(2469,108,64,2,NULL),(2470,161,61,2,NULL),(2471,111,64,2,NULL),(2472,66,42,2,NULL),(2473,66,42,2,NULL),(2474,164,61,2,NULL),(2475,116,64,2,NULL),(2476,71,42,2,NULL),(2477,71,42,2,NULL),(2478,172,61,2,NULL),(2479,73,42,2,NULL),(2480,73,42,2,NULL),(2481,120,64,2,NULL),(2482,177,61,2,NULL),(2483,76,42,2,NULL),(2484,190,64,2,NULL),(2485,76,42,2,NULL),(2486,184,61,2,NULL),(2487,206,64,2,NULL),(2488,79,42,2,NULL),(2489,79,42,2,NULL),(2490,185,61,2,NULL),(2491,81,42,2,NULL),(2492,208,64,2,NULL),(2493,81,42,2,NULL),(2494,188,61,2,NULL),(2495,212,64,2,NULL),(2496,86,42,2,NULL),(2497,86,42,2,NULL),(2498,209,61,2,NULL),(2499,215,64,2,NULL),(2500,95,42,2,NULL),(2501,95,42,2,NULL),(2502,67,83,2,NULL),(2503,64,43,2,NULL),(2504,222,64,2,NULL),(2505,64,43,2,NULL),(2506,156,83,2,NULL),(2507,66,43,2,NULL),(2508,66,43,2,NULL),(2509,97,79,2,NULL),(2510,159,83,2,NULL),(2511,71,43,2,NULL),(2512,71,43,2,NULL),(2513,105,79,2,NULL),(2514,160,83,2,NULL),(2515,73,43,2,NULL),(2516,108,79,2,NULL),(2517,76,43,2,NULL),(2518,161,83,2,NULL),(2519,111,79,2,NULL),(2520,79,43,2,NULL),(2521,79,43,2,NULL),(2522,164,83,2,NULL),(2523,81,43,2,NULL),(2524,81,43,2,NULL),(2525,116,79,2,NULL),(2526,172,83,2,NULL),(2527,86,43,2,NULL),(2528,86,43,2,NULL),(2529,120,79,2,NULL),(2530,177,83,2,NULL),(2531,95,43,2,NULL),(2532,95,43,2,NULL),(2533,190,79,2,NULL),(2534,184,83,2,NULL),(2535,64,44,2,NULL),(2536,64,44,2,NULL),(2537,206,79,2,NULL),(2538,185,83,2,NULL),(2539,66,44,2,NULL),(2540,208,79,2,NULL),(2541,71,44,2,NULL),(2542,188,83,2,NULL),(2543,212,79,2,NULL),(2544,73,44,2,NULL),(2545,73,44,2,NULL),(2546,209,83,2,NULL),(2547,76,44,2,NULL),(2548,215,79,2,NULL),(2549,79,44,2,NULL),(2550,67,84,2,NULL),(2551,81,44,2,NULL),(2552,222,79,2,NULL),(2553,86,44,2,NULL),(2554,156,84,2,NULL),(2555,97,89,2,NULL),(2556,95,44,2,NULL),(2557,95,44,2,NULL),(2558,159,84,2,NULL),(2559,64,51,2,NULL),(2560,64,51,2,NULL),(2561,105,89,2,NULL),(2562,160,84,2,NULL),(2563,66,51,2,NULL),(2564,66,51,2,NULL),(2565,108,89,2,NULL),(2566,161,84,2,NULL),(2567,71,51,2,NULL),(2568,111,89,2,NULL),(2569,73,51,2,NULL),(2570,164,84,2,NULL),(2571,116,89,2,NULL),(2572,76,51,2,NULL),(2573,79,51,2,NULL),(2574,172,84,2,NULL),(2575,120,89,2,NULL),(2576,81,51,2,NULL),(2577,81,51,2,NULL),(2578,177,84,2,NULL),(2579,86,51,2,NULL),(2580,190,89,2,NULL),(2581,95,51,2,NULL),(2582,184,84,2,NULL),(2583,64,57,2,NULL),(2584,206,89,2,NULL),(2585,66,57,2,NULL),(2586,185,84,2,NULL),(2587,208,89,2,NULL),(2588,71,57,2,NULL),(2589,71,57,2,NULL),(2590,188,84,2,NULL),(2591,73,57,2,NULL),(2592,73,57,2,NULL),(2593,212,89,2,NULL),(2594,209,84,2,NULL),(2595,76,57,2,NULL),(2596,215,89,2,NULL),(2597,79,57,2,NULL),(2598,211,36,2,NULL),(2599,222,89,2,NULL),(2600,81,57,2,NULL),(2601,86,57,2,NULL),(2602,67,42,2,NULL),(2603,95,57,2,NULL),(2604,142,1,2,NULL),(2605,64,64,2,NULL),(2606,156,42,2,NULL),(2607,142,4,2,NULL),(2608,66,64,2,NULL),(2609,71,64,2,NULL),(2610,159,42,2,NULL),(2611,142,5,2,NULL),(2612,73,64,2,NULL),(2613,76,64,2,NULL),(2614,160,42,2,NULL),(2615,142,6,2,NULL),(2616,79,64,2,NULL),(2617,81,64,2,NULL),(2618,161,42,2,NULL),(2619,142,45,2,NULL),(2620,86,64,2,NULL),(2621,95,64,2,NULL),(2622,164,42,2,NULL),(2623,142,46,2,NULL),(2624,64,79,2,NULL),(2625,66,79,2,NULL),(2626,172,42,2,NULL),(2627,142,48,2,NULL),(2628,71,79,2,NULL),(2629,73,79,2,NULL),(2630,177,42,2,NULL),(2631,142,49,2,NULL),(2632,76,79,2,NULL),(2633,79,79,2,NULL),(2634,184,42,2,NULL),(2635,81,79,2,NULL),(2636,142,10,2,NULL),(2637,86,79,2,NULL),(2638,185,42,2,NULL),(2639,142,23,2,NULL),(2640,95,79,2,NULL),(2641,64,89,2,NULL),(2642,188,42,2,NULL),(2643,142,26,2,NULL),(2644,66,89,2,NULL),(2645,71,89,2,NULL),(2646,209,42,2,NULL),(2647,142,29,2,NULL),(2648,73,89,2,NULL),(2649,67,43,2,NULL),(2650,76,89,2,NULL),(2651,142,59,2,NULL),(2652,79,89,2,NULL),(2653,156,43,2,NULL),(2654,81,89,2,NULL),(2655,142,60,2,NULL),(2656,86,89,2,NULL),(2657,159,43,2,NULL),(2658,95,89,2,NULL),(2659,142,72,2,NULL),(2660,4,10,2,NULL),(2661,160,43,2,NULL),(2662,15,10,2,NULL),(2663,142,9,2,NULL),(2664,19,10,2,NULL),(2665,161,43,2,NULL),(2666,20,10,2,NULL),(2667,142,19,2,NULL),(2668,22,10,2,NULL),(2669,164,43,2,NULL),(2670,25,10,2,NULL),(2671,31,10,2,NULL),(2672,142,25,2,NULL),(2673,172,43,2,NULL),(2674,124,10,2,NULL),(2675,142,27,2,NULL),(2676,127,10,2,NULL),(2677,177,43,2,NULL),(2678,130,10,2,NULL),(2679,142,54,2,NULL),(2680,132,10,2,NULL),(2681,184,43,2,NULL),(2682,134,10,2,NULL),(2683,142,77,2,NULL),(2684,82,10,2,NULL),(2685,185,43,2,NULL),(2686,30,10,2,NULL),(2687,142,82,2,NULL),(2688,188,43,2,NULL),(2689,58,10,2,NULL),(2690,142,86,2,NULL),(2691,70,10,2,NULL),(2692,209,43,2,NULL),(2693,74,10,2,NULL),(2694,142,87,2,NULL),(2695,77,10,2,NULL),(2696,67,44,2,NULL),(2697,80,10,2,NULL),(2698,142,35,2,NULL),(2699,85,10,2,NULL),(2700,156,44,2,NULL),(2701,113,10,2,NULL),(2702,142,37,2,NULL),(2703,117,10,2,NULL),(2704,159,44,2,NULL),(2705,135,10,2,NULL),(2706,142,39,2,NULL),(2707,140,10,2,NULL),(2708,160,44,2,NULL),(2709,143,10,2,NULL),(2710,142,50,2,NULL),(2711,170,10,2,NULL),(2712,161,44,2,NULL),(2713,142,53,2,NULL),(2714,164,44,2,NULL),(2715,211,10,2,NULL),(2716,211,10,2,NULL),(2717,142,61,2,NULL),(2718,172,44,2,NULL),(2719,4,23,2,NULL),(2720,4,23,2,NULL),(2721,142,83,2,NULL),(2722,15,23,2,NULL),(2723,15,23,2,NULL),(2724,177,44,2,NULL),(2725,142,84,2,NULL),(2726,19,23,2,NULL),(2727,19,23,2,NULL),(2728,184,44,2,NULL),(2729,142,42,2,NULL),(2730,20,23,2,NULL),(2731,20,23,2,NULL),(2732,185,44,2,NULL),(2733,142,43,2,NULL),(2734,22,23,2,NULL),(2735,22,23,2,NULL),(2736,188,44,2,NULL),(2737,142,44,2,NULL),(2738,25,23,2,NULL),(2739,25,23,2,NULL),(2740,209,44,2,NULL),(2741,142,51,2,NULL),(2742,31,23,2,NULL),(2743,31,23,2,NULL),(2744,67,51,2,NULL),(2745,142,57,2,NULL),(2746,124,23,2,NULL),(2747,124,23,2,NULL),(2748,156,51,2,NULL),(2749,142,64,2,NULL),(2750,127,23,2,NULL),(2751,127,23,2,NULL),(2752,159,51,2,NULL),(2753,142,79,2,NULL),(2754,130,23,2,NULL),(2755,130,23,2,NULL),(2756,160,51,2,NULL),(2757,142,89,2,NULL),(2758,132,23,2,NULL),(2759,132,23,2,NULL),(2760,161,51,2,NULL),(2761,4,35,2,NULL),(2762,134,23,2,NULL),(2763,134,23,2,NULL),(2764,164,51,2,NULL),(2765,15,35,2,NULL),(2766,82,23,2,NULL),(2767,82,23,2,NULL),(2768,172,51,2,NULL),(2769,19,35,2,NULL),(2770,177,51,2,NULL),(2771,20,35,2,NULL),(2772,184,51,2,NULL),(2773,30,23,2,NULL),(2774,30,23,2,NULL),(2775,22,35,2,NULL),(2776,185,51,2,NULL),(2777,58,23,2,NULL),(2778,58,23,2,NULL),(2779,25,35,2,NULL),(2780,188,51,2,NULL),(2781,70,23,2,NULL),(2782,70,23,2,NULL),(2783,31,35,2,NULL),(2784,209,51,2,NULL),(2785,74,23,2,NULL),(2786,74,23,2,NULL),(2787,124,35,2,NULL),(2788,67,57,2,NULL),(2789,77,23,2,NULL),(2790,77,23,2,NULL),(2791,127,35,2,NULL),(2792,156,57,2,NULL),(2793,80,23,2,NULL),(2794,80,23,2,NULL),(2795,130,35,2,NULL),(2796,159,57,2,NULL),(2797,85,23,2,NULL),(2798,85,23,2,NULL),(2799,132,35,2,NULL),(2800,160,57,2,NULL),(2801,113,23,2,NULL),(2802,113,23,2,NULL),(2803,134,35,2,NULL),(2804,161,57,2,NULL),(2805,117,23,2,NULL),(2806,117,23,2,NULL),(2807,82,35,2,NULL),(2808,164,57,2,NULL),(2809,135,23,2,NULL),(2810,135,23,2,NULL),(2811,172,57,2,NULL),(2812,30,35,2,NULL),(2813,140,23,2,NULL),(2814,140,23,2,NULL),(2815,177,57,2,NULL),(2816,58,35,2,NULL),(2817,143,23,2,NULL),(2818,143,23,2,NULL),(2819,184,57,2,NULL),(2820,70,35,2,NULL),(2821,170,23,2,NULL),(2822,170,23,2,NULL),(2823,185,57,2,NULL),(2824,74,35,2,NULL),(2825,188,57,2,NULL),(2826,77,35,2,NULL),(2827,211,23,2,NULL),(2828,211,23,2,NULL),(2829,209,57,2,NULL),(2830,80,35,2,NULL),(2831,4,26,2,NULL),(2832,67,64,2,NULL),(2833,15,26,2,NULL),(2834,85,35,2,NULL),(2835,19,26,2,NULL),(2836,156,64,2,NULL),(2837,113,35,2,NULL),(2838,20,26,2,NULL),(2839,20,26,2,NULL),(2840,159,64,2,NULL),(2841,22,26,2,NULL),(2842,22,26,2,NULL),(2843,117,35,2,NULL),(2844,160,64,2,NULL),(2845,25,26,2,NULL),(2846,135,35,2,NULL),(2847,25,26,2,NULL),(2848,161,64,2,NULL),(2849,31,26,2,NULL),(2850,31,26,2,NULL),(2851,140,35,2,NULL),(2852,164,64,2,NULL),(2853,124,26,2,NULL),(2854,124,26,2,NULL),(2855,143,35,2,NULL),(2856,172,64,2,NULL),(2857,127,26,2,NULL),(2858,127,26,2,NULL),(2859,170,35,2,NULL),(2860,177,64,2,NULL),(2861,130,26,2,NULL),(2862,130,26,2,NULL),(2863,184,64,2,NULL),(2864,132,26,2,NULL),(2865,132,26,2,NULL),(2866,211,35,2,NULL),(2867,185,64,2,NULL),(2868,134,26,2,NULL),(2869,134,26,2,NULL),(2870,188,64,2,NULL),(2871,4,37,2,NULL),(2872,82,26,2,NULL),(2873,82,26,2,NULL),(2874,15,37,2,NULL),(2875,209,64,2,NULL),(2876,19,37,2,NULL),(2877,67,79,2,NULL),(2878,20,37,2,NULL),(2879,30,26,2,NULL),(2880,156,79,2,NULL),(2881,58,26,2,NULL),(2882,22,37,2,NULL),(2883,159,79,2,NULL),(2884,70,26,2,NULL),(2885,70,26,2,NULL),(2886,25,37,2,NULL),(2887,74,26,2,NULL),(2888,74,26,2,NULL),(2889,160,79,2,NULL),(2890,31,37,2,NULL),(2891,77,26,2,NULL),(2892,161,79,2,NULL),(2893,80,26,2,NULL),(2894,124,37,2,NULL),(2895,164,79,2,NULL),(2896,85,26,2,NULL),(2897,85,26,2,NULL),(2898,127,37,2,NULL),(2899,172,79,2,NULL),(2900,113,26,2,NULL),(2901,113,26,2,NULL),(2902,130,37,2,NULL),(2903,177,79,2,NULL),(2904,117,26,2,NULL),(2905,117,26,2,NULL),(2906,132,37,2,NULL),(2907,184,79,2,NULL),(2908,135,26,2,NULL),(2909,135,26,2,NULL),(2910,134,37,2,NULL),(2911,185,79,2,NULL),(2912,140,26,2,NULL),(2913,140,26,2,NULL),(2914,82,37,2,NULL),(2915,143,26,2,NULL),(2916,143,26,2,NULL),(2917,188,79,2,NULL),(2918,170,26,2,NULL),(2919,170,26,2,NULL),(2920,209,79,2,NULL),(2921,30,37,2,NULL),(2922,67,89,2,NULL),(2923,58,37,2,NULL),(2924,211,26,2,NULL),(2925,211,26,2,NULL),(2926,156,89,2,NULL),(2927,70,37,2,NULL),(2928,159,89,2,NULL),(2929,74,37,2,NULL),(2930,4,29,2,NULL),(2931,160,89,2,NULL),(2932,4,29,2,NULL),(2933,77,37,2,NULL),(2934,15,29,2,NULL),(2935,15,29,2,NULL),(2936,161,89,2,NULL),(2937,80,37,2,NULL),(2938,19,29,2,NULL),(2939,19,29,2,NULL),(2940,164,89,2,NULL),(2941,85,37,2,NULL),(2942,20,29,2,NULL),(2943,20,29,2,NULL),(2944,172,89,2,NULL),(2945,113,37,2,NULL),(2946,22,29,2,NULL),(2947,22,29,2,NULL),(2948,177,89,2,NULL),(2949,117,37,2,NULL),(2950,25,29,2,NULL),(2951,25,29,2,NULL),(2952,184,89,2,NULL),(2953,135,37,2,NULL),(2954,31,29,2,NULL),(2955,31,29,2,NULL),(2956,185,89,2,NULL),(2957,140,37,2,NULL),(2958,124,29,2,NULL),(2959,124,29,2,NULL),(2960,188,89,2,NULL),(2961,143,37,2,NULL),(2962,127,29,2,NULL),(2963,127,29,2,NULL),(2964,209,89,2,NULL),(2965,170,37,2,NULL),(2966,130,29,2,NULL),(2967,130,29,2,NULL),(2968,211,1,2,NULL),(2969,211,4,2,NULL),(2970,132,29,2,NULL),(2971,132,29,2,NULL),(2972,211,37,2,NULL),(2973,211,5,2,NULL),(2974,134,29,2,NULL),(2975,134,29,2,NULL),(2976,169,5,2,NULL),(2977,211,6,2,NULL),(2978,82,29,2,NULL),(2979,82,29,2,NULL),(2980,169,25,2,NULL),(2981,211,45,2,NULL),(2982,169,37,2,NULL),(2983,211,46,2,NULL),(2984,30,29,2,NULL),(2985,30,29,2,NULL),(2986,169,43,2,NULL),(2987,211,48,2,NULL),(2988,58,29,2,NULL),(2989,58,29,2,NULL),(2990,4,39,2,NULL),(2991,211,49,2,NULL),(2992,70,29,2,NULL),(2993,70,29,2,NULL),(2994,15,39,2,NULL),(2995,211,29,2,NULL),(2996,74,29,2,NULL),(2997,74,29,2,NULL),(2998,19,39,2,NULL),(2999,211,59,2,NULL),(3000,20,39,2,NULL),(3001,77,29,2,NULL),(3002,77,29,2,NULL),(3003,211,60,2,NULL),(3004,80,29,2,NULL),(3005,22,39,2,NULL),(3006,85,29,2,NULL),(3007,211,72,2,NULL),(3008,25,39,2,NULL),(3009,113,29,2,NULL),(3010,211,9,2,NULL),(3011,117,29,2,NULL),(3012,31,39,2,NULL),(3013,211,19,2,NULL),(3014,124,39,2,NULL),(3015,135,29,2,NULL),(3016,140,29,2,NULL),(3017,211,25,2,NULL),(3018,127,39,2,NULL),(3019,143,29,2,NULL),(3020,143,29,2,NULL),(3021,211,27,2,NULL),(3022,170,29,2,NULL),(3023,170,29,2,NULL),(3024,130,39,2,NULL),(3025,211,54,2,NULL),(3026,132,39,2,NULL),(3027,211,77,2,NULL),(3028,134,39,2,NULL),(3029,4,59,2,NULL),(3030,4,59,2,NULL),(3031,211,82,2,NULL),(3032,82,39,2,NULL),(3033,211,86,2,NULL),(3034,15,59,2,NULL),(3035,15,59,2,NULL),(3036,19,59,2,NULL),(3037,19,59,2,NULL),(3038,211,87,2,NULL),(3039,30,39,2,NULL),(3040,20,59,2,NULL),(3041,58,39,2,NULL),(3042,22,59,2,NULL),(3043,211,39,2,NULL),(3044,25,59,2,NULL),(3045,211,50,2,NULL),(3046,31,59,2,NULL),(3047,70,39,2,NULL),(3048,124,59,2,NULL),(3049,211,53,2,NULL),(3050,74,39,2,NULL),(3051,127,59,2,NULL),(3052,130,59,2,NULL),(3053,77,39,2,NULL),(3054,132,59,2,NULL),(3055,211,61,2,NULL),(3056,134,59,2,NULL),(3057,80,39,2,NULL),(3058,82,59,2,NULL),(3059,211,83,2,NULL),(3060,85,39,2,NULL),(3061,211,84,2,NULL),(3062,30,59,2,NULL),(3063,58,59,2,NULL),(3064,113,39,2,NULL),(3065,70,59,2,NULL),(3066,211,42,2,NULL),(3067,117,39,2,NULL),(3068,74,59,2,NULL),(3069,77,59,2,NULL),(3070,211,43,2,NULL),(3071,135,39,2,NULL),(3072,80,59,2,NULL),(3073,211,44,2,NULL),(3074,85,59,2,NULL),(3075,140,39,2,NULL),(3076,113,59,2,NULL),(3077,211,51,2,NULL),(3078,117,59,2,NULL),(3079,143,39,2,NULL),(3080,135,59,2,NULL),(3081,211,57,2,NULL),(3082,140,59,2,NULL),(3083,170,39,2,NULL),(3084,143,59,2,NULL),(3085,211,64,2,NULL),(3086,170,59,2,NULL),(3087,211,79,2,NULL),(3088,4,50,2,NULL),(3089,4,60,2,NULL),(3090,4,60,2,NULL),(3091,211,89,2,NULL),(3092,15,50,2,NULL),(3093,15,60,2,NULL),(3094,15,60,2,NULL),(3095,4,42,2,NULL),(3096,19,50,2,NULL),(3097,19,60,2,NULL),(3098,15,42,2,NULL),(3099,20,60,2,NULL),(3100,20,50,2,NULL),(3101,22,60,2,NULL),(3102,19,42,2,NULL),(3103,25,60,2,NULL),(3104,22,50,2,NULL),(3105,31,60,2,NULL),(3106,31,60,2,NULL),(3107,20,42,2,NULL),(3108,25,50,2,NULL),(3109,124,60,2,NULL),(3110,124,60,2,NULL),(3111,22,42,2,NULL),(3112,31,50,2,NULL),(3113,127,60,2,NULL),(3114,127,60,2,NULL),(3115,25,42,2,NULL),(3116,124,50,2,NULL),(3117,130,60,2,NULL),(3118,130,60,2,NULL),(3119,31,42,2,NULL),(3120,127,50,2,NULL),(3121,132,60,2,NULL),(3122,132,60,2,NULL),(3123,124,42,2,NULL),(3124,130,50,2,NULL),(3125,134,60,2,NULL),(3126,134,60,2,NULL),(3127,127,42,2,NULL),(3128,132,50,2,NULL),(3129,82,60,2,NULL),(3130,82,60,2,NULL),(3131,130,42,2,NULL),(3132,134,50,2,NULL),(3133,132,42,2,NULL),(3134,82,50,2,NULL),(3135,30,60,2,NULL),(3136,30,60,2,NULL),(3137,134,42,2,NULL),(3138,58,60,2,NULL),(3139,58,60,2,NULL),(3140,82,42,2,NULL),(3141,30,50,2,NULL),(3142,70,60,2,NULL),(3143,70,60,2,NULL),(3144,74,60,2,NULL),(3145,74,60,2,NULL),(3146,58,50,2,NULL),(3147,30,42,2,NULL),(3148,77,60,2,NULL),(3149,80,60,2,NULL),(3150,70,50,2,NULL),(3151,85,60,2,NULL),(3152,58,42,2,NULL),(3153,113,60,2,NULL),(3154,74,50,2,NULL),(3155,117,60,2,NULL),(3156,70,42,2,NULL),(3157,135,60,2,NULL),(3158,74,42,2,NULL),(3159,77,50,2,NULL),(3160,140,60,2,NULL),(3161,143,60,2,NULL),(3162,77,42,2,NULL),(3163,80,50,2,NULL),(3164,170,60,2,NULL),(3165,80,42,2,NULL),(3166,85,50,2,NULL),(3167,4,72,2,NULL),(3168,4,72,2,NULL),(3169,85,42,2,NULL),(3170,113,50,2,NULL),(3171,15,72,2,NULL),(3172,15,72,2,NULL),(3173,113,42,2,NULL),(3174,117,50,2,NULL),(3175,19,72,2,NULL),(3176,19,72,2,NULL),(3177,117,42,2,NULL),(3178,135,50,2,NULL),(3179,20,72,2,NULL),(3180,20,72,2,NULL),(3181,135,42,2,NULL),(3182,140,50,2,NULL),(3183,22,72,2,NULL),(3184,22,72,2,NULL),(3185,140,42,2,NULL),(3186,143,50,2,NULL),(3187,25,72,2,NULL),(3188,25,72,2,NULL),(3189,143,42,2,NULL),(3190,170,50,2,NULL),(3191,31,72,2,NULL),(3192,31,72,2,NULL),(3193,170,42,2,NULL),(3194,124,72,2,NULL),(3195,124,72,2,NULL),(3196,127,72,2,NULL),(3197,4,53,2,NULL),(3198,130,72,2,NULL),(3199,15,53,2,NULL),(3200,4,43,2,NULL),(3201,132,72,2,NULL),(3202,134,72,2,NULL),(3203,15,43,2,NULL),(3204,19,53,2,NULL),(3205,82,72,2,NULL),(3206,20,53,2,NULL),(3207,19,43,2,NULL),(3208,30,72,2,NULL),(3209,22,53,2,NULL),(3210,58,72,2,NULL),(3211,20,43,2,NULL),(3212,70,72,2,NULL),(3213,25,53,2,NULL),(3214,74,72,2,NULL),(3215,22,43,2,NULL),(3216,77,72,2,NULL),(3217,31,53,2,NULL),(3218,80,72,2,NULL),(3219,25,43,2,NULL),(3220,85,72,2,NULL),(3221,124,53,2,NULL),(3222,113,72,2,NULL),(3223,31,43,2,NULL),(3224,117,72,2,NULL),(3225,127,53,2,NULL),(3226,135,72,2,NULL),(3227,124,43,2,NULL),(3228,140,72,2,NULL),(3229,130,53,2,NULL),(3230,143,72,2,NULL),(3231,127,43,2,NULL),(3232,170,72,2,NULL),(3233,132,53,2,NULL),(3234,130,43,2,NULL),(3235,134,53,2,NULL),(3236,132,43,2,NULL),(3237,82,53,2,NULL),(3238,134,43,2,NULL),(3239,82,43,2,NULL),(3240,30,53,2,NULL),(3241,58,53,2,NULL),(3242,30,43,2,NULL),(3243,70,53,2,NULL),(3244,58,43,2,NULL),(3245,74,53,2,NULL),(3246,70,43,2,NULL),(3247,77,53,2,NULL),(3248,74,43,2,NULL),(3249,80,53,2,NULL),(3250,77,43,2,NULL),(3251,85,53,2,NULL),(3252,80,43,2,NULL),(3253,113,53,2,NULL),(3254,85,43,2,NULL),(3255,117,53,2,NULL),(3256,113,43,2,NULL),(3257,135,53,2,NULL),(3258,117,43,2,NULL),(3259,140,53,2,NULL),(3260,135,43,2,NULL),(3261,143,53,2,NULL),(3262,140,43,2,NULL),(3263,170,53,2,NULL),(3264,143,43,2,NULL),(3265,170,43,2,NULL),(3266,4,61,2,NULL),(3267,15,61,2,NULL),(3268,19,61,2,NULL),(3269,136,5,2,NULL),(3270,20,61,2,NULL),(3271,136,25,2,NULL),(3272,22,61,2,NULL),(3273,136,37,2,NULL),(3274,25,61,2,NULL),(3275,136,43,2,NULL),(3276,31,61,2,NULL),(3277,4,44,2,NULL),(3278,124,61,2,NULL),(3279,15,44,2,NULL),(3280,127,61,2,NULL),(3281,19,44,2,NULL),(3282,130,61,2,NULL),(3283,20,44,2,NULL),(3284,132,61,2,NULL),(3285,22,44,2,NULL),(3286,134,61,2,NULL),(3287,25,44,2,NULL),(3288,82,61,2,NULL),(3289,31,44,2,NULL),(3290,124,44,2,NULL),(3291,30,61,2,NULL),(3292,127,44,2,NULL),(3293,58,61,2,NULL),(3294,130,44,2,NULL),(3295,70,61,2,NULL),(3296,132,44,2,NULL),(3297,74,61,2,NULL),(3298,134,44,2,NULL),(3299,77,61,2,NULL),(3300,82,44,2,NULL),(3301,80,61,2,NULL),(3302,30,44,2,NULL),(3303,85,61,2,NULL),(3304,58,44,2,NULL),(3305,113,61,2,NULL),(3306,70,44,2,NULL),(3307,117,61,2,NULL),(3308,74,44,2,NULL),(3309,135,61,2,NULL),(3310,77,44,2,NULL),(3311,140,61,2,NULL),(3312,80,44,2,NULL),(3313,143,61,2,NULL),(3314,85,44,2,NULL),(3315,170,61,2,NULL),(3316,113,44,2,NULL),(3317,4,83,2,NULL),(3318,117,44,2,NULL),(3319,15,83,2,NULL),(3320,135,44,2,NULL),(3321,19,83,2,NULL),(3322,140,44,2,NULL),(3323,20,83,2,NULL),(3324,143,44,2,NULL),(3325,22,83,2,NULL),(3326,170,44,2,NULL),(3327,25,83,2,NULL),(3328,4,51,2,NULL),(3329,31,83,2,NULL),(3330,15,51,2,NULL),(3331,124,83,2,NULL),(3332,19,51,2,NULL),(3333,127,83,2,NULL),(3334,20,51,2,NULL),(3335,130,83,2,NULL),(3336,22,51,2,NULL),(3337,132,83,2,NULL),(3338,25,51,2,NULL),(3339,134,83,2,NULL),(3340,31,51,2,NULL),(3341,82,83,2,NULL),(3342,124,51,2,NULL),(3343,30,83,2,NULL),(3344,127,51,2,NULL),(3345,58,83,2,NULL),(3346,130,51,2,NULL),(3347,70,83,2,NULL),(3348,132,51,2,NULL),(3349,74,83,2,NULL),(3350,134,51,2,NULL),(3351,77,83,2,NULL),(3352,82,51,2,NULL),(3353,80,83,2,NULL),(3354,30,51,2,NULL),(3355,85,83,2,NULL),(3356,58,51,2,NULL),(3357,113,83,2,NULL),(3358,70,51,2,NULL),(3359,117,83,2,NULL),(3360,74,51,2,NULL),(3361,135,83,2,NULL),(3362,77,51,2,NULL),(3363,140,83,2,NULL),(3364,80,51,2,NULL),(3365,143,83,2,NULL),(3366,85,51,2,NULL),(3367,170,83,2,NULL),(3368,113,51,2,NULL),(3369,117,51,2,NULL),(3370,4,84,2,NULL),(3371,135,51,2,NULL),(3372,15,84,2,NULL),(3373,140,51,2,NULL),(3374,19,84,2,NULL),(3375,143,51,2,NULL),(3376,20,84,2,NULL),(3377,170,51,2,NULL),(3378,22,84,2,NULL),(3379,4,57,2,NULL),(3380,25,84,2,NULL),(3381,15,57,2,NULL),(3382,31,84,2,NULL),(3383,19,57,2,NULL),(3384,124,84,2,NULL),(3385,20,57,2,NULL),(3386,127,84,2,NULL),(3387,22,57,2,NULL),(3388,130,84,2,NULL),(3389,25,57,2,NULL),(3390,132,84,2,NULL),(3391,31,57,2,NULL),(3392,134,84,2,NULL),(3393,124,57,2,NULL),(3394,82,84,2,NULL),(3395,127,57,2,NULL),(3396,30,84,2,NULL),(3397,130,57,2,NULL),(3398,58,84,2,NULL),(3399,132,57,2,NULL),(3400,70,84,2,NULL),(3401,134,57,2,NULL),(3402,74,84,2,NULL),(3403,82,57,2,NULL),(3404,77,84,2,NULL),(3405,30,57,2,NULL),(3406,80,84,2,NULL),(3407,58,57,2,NULL),(3408,85,84,2,NULL),(3409,70,57,2,NULL),(3410,113,84,2,NULL),(3411,74,57,2,NULL),(3412,117,84,2,NULL),(3413,77,57,2,NULL),(3414,135,84,2,NULL),(3415,80,57,2,NULL),(3416,140,84,2,NULL),(3417,85,57,2,NULL),(3418,143,84,2,NULL),(3419,113,57,2,NULL),(3420,170,84,2,NULL),(3421,117,57,2,NULL),(3422,135,57,2,NULL),(3423,140,57,2,NULL),(3424,143,57,2,NULL),(3425,170,57,2,NULL),(3426,4,64,2,NULL),(3427,15,64,2,NULL),(3428,19,64,2,NULL),(3429,20,64,2,NULL),(3430,22,64,2,NULL),(3431,25,64,2,NULL),(3432,31,64,2,NULL),(3433,124,64,2,NULL),(3434,127,64,2,NULL),(3435,130,64,2,NULL),(3436,132,64,2,NULL),(3437,134,64,2,NULL),(3438,82,64,2,NULL),(3439,30,64,2,NULL),(3440,58,64,2,NULL),(3441,70,64,2,NULL),(3442,74,64,2,NULL),(3443,77,64,2,NULL),(3444,80,64,2,NULL),(3445,85,64,2,NULL),(3446,113,64,2,NULL),(3447,117,64,2,NULL),(3448,135,64,2,NULL),(3449,140,64,2,NULL),(3450,143,64,2,NULL),(3451,170,64,2,NULL),(3452,4,79,2,NULL),(3453,15,79,2,NULL),(3454,19,79,2,NULL),(3455,20,79,2,NULL),(3456,22,79,2,NULL),(3457,25,79,2,NULL),(3458,31,79,2,NULL),(3459,124,79,2,NULL),(3460,127,79,2,NULL),(3461,130,79,2,NULL),(3462,132,79,2,NULL),(3463,134,79,2,NULL),(3464,82,79,2,NULL),(3465,30,79,2,NULL),(3466,58,79,2,NULL),(3467,70,79,2,NULL),(3468,74,79,2,NULL),(3469,77,79,2,NULL),(3470,80,79,2,NULL),(3471,85,79,2,NULL),(3472,113,79,2,NULL),(3473,117,79,2,NULL),(3474,135,79,2,NULL),(3475,140,79,2,NULL),(3476,143,79,2,NULL),(3477,170,79,2,NULL),(3478,4,89,2,NULL),(3479,15,89,2,NULL),(3480,19,89,2,NULL),(3481,20,89,2,NULL),(3482,22,89,2,NULL),(3483,25,89,2,NULL),(3484,31,89,2,NULL),(3485,124,89,2,NULL),(3486,127,89,2,NULL),(3487,130,89,2,NULL),(3488,132,89,2,NULL),(3489,134,89,2,NULL),(3490,82,89,2,NULL),(3491,30,89,2,NULL),(3492,58,89,2,NULL),(3493,70,89,2,NULL),(3494,74,89,2,NULL),(3495,77,89,2,NULL),(3496,80,89,2,NULL),(3497,85,89,2,NULL),(3498,113,89,2,NULL),(3499,117,89,2,NULL),(3500,135,89,2,NULL),(3501,140,89,2,NULL),(3502,143,89,2,NULL),(3503,170,89,2,NULL),(3504,2,3,2,NULL),(3505,2,13,2,NULL),(3506,2,33,2,NULL),(3507,2,40,2,NULL),(3508,16,4,2,NULL),(3509,16,19,2,NULL),(3510,16,35,2,NULL),(3511,16,42,2,NULL),(3512,17,4,2,NULL),(3513,17,19,2,NULL),(3514,17,35,2,NULL),(3515,17,42,2,NULL),(3516,24,4,2,NULL),(3517,24,19,2,NULL),(3518,24,35,2,NULL),(3519,24,42,2,NULL),(3520,28,4,2,NULL),(3521,28,19,2,NULL),(3522,28,35,2,NULL),(3523,28,42,2,NULL),(3524,35,4,2,NULL),(3525,35,19,2,NULL),(3526,35,35,2,NULL),(3527,35,42,2,NULL),(3528,112,3,2,NULL),(3529,112,13,2,NULL),(3530,112,33,2,NULL),(3531,112,40,2,NULL),(3532,82,1,2,NULL),(3533,4,4,2,NULL),(3534,15,4,2,NULL),(3535,19,4,2,NULL),(3536,20,4,2,NULL),(3537,22,4,2,NULL),(3538,25,4,2,NULL),(3539,31,4,2,NULL),(3540,124,4,2,NULL),(3541,127,4,2,NULL),(3542,130,4,2,NULL),(3543,132,4,2,NULL),(3544,134,4,2,NULL),(3545,4,5,2,NULL),(3546,15,5,2,NULL),(3547,19,5,2,NULL),(3548,20,5,2,NULL),(3549,22,5,2,NULL),(3550,25,5,2,NULL),(3551,31,5,2,NULL),(3552,124,5,2,NULL),(3553,127,5,2,NULL),(3554,130,5,2,NULL),(3555,132,5,2,NULL),(3556,134,5,2,NULL),(3557,4,6,2,NULL),(3558,15,6,2,NULL),(3559,19,6,2,NULL),(3560,20,6,2,NULL),(3561,22,6,2,NULL),(3562,25,6,2,NULL),(3563,31,6,2,NULL),(3564,124,6,2,NULL),(3565,127,6,2,NULL),(3566,130,6,2,NULL),(3567,132,6,2,NULL),(3568,134,6,2,NULL),(3569,4,45,2,NULL),(3570,15,45,2,NULL),(3571,19,45,2,NULL),(3572,20,45,2,NULL),(3573,22,45,2,NULL),(3574,25,45,2,NULL),(3575,31,45,2,NULL),(3576,124,45,2,NULL),(3577,127,45,2,NULL),(3578,130,45,2,NULL),(3579,132,45,2,NULL),(3580,134,45,2,NULL),(3581,4,46,2,NULL),(3582,15,46,2,NULL),(3583,19,46,2,NULL),(3584,20,46,2,NULL),(3585,22,46,2,NULL),(3586,25,46,2,NULL),(3587,31,46,2,NULL),(3588,124,46,2,NULL),(3589,127,46,2,NULL),(3590,130,46,2,NULL),(3591,132,46,2,NULL),(3592,134,46,2,NULL),(3593,4,48,2,NULL),(3594,15,48,2,NULL),(3595,19,48,2,NULL),(3596,20,48,2,NULL),(3597,22,48,2,NULL),(3598,25,48,2,NULL),(3599,31,48,2,NULL),(3600,124,48,2,NULL),(3601,127,48,2,NULL),(3602,130,48,2,NULL),(3603,132,48,2,NULL),(3604,134,48,2,NULL),(3605,4,49,2,NULL),(3606,15,49,2,NULL),(3607,19,49,2,NULL),(3608,20,49,2,NULL),(3609,22,49,2,NULL),(3610,25,49,2,NULL),(3611,31,49,2,NULL),(3612,124,49,2,NULL),(3613,127,49,2,NULL),(3614,130,49,2,NULL),(3615,132,49,2,NULL),(3616,134,49,2,NULL),(3617,4,9,2,NULL),(3618,15,9,2,NULL),(3619,19,9,2,NULL),(3620,20,9,2,NULL),(3621,22,9,2,NULL),(3622,25,9,2,NULL),(3623,31,9,2,NULL),(3624,124,9,2,NULL),(3625,127,9,2,NULL),(3626,130,9,2,NULL),(3627,132,9,2,NULL),(3628,134,9,2,NULL),(3629,30,1,2,NULL),(3630,58,1,2,NULL),(3631,70,1,2,NULL),(3632,74,1,2,NULL),(3633,77,1,2,NULL),(3634,80,1,2,NULL),(3635,85,1,2,NULL),(3636,113,1,2,NULL),(3637,117,1,2,NULL),(3638,135,1,2,NULL),(3639,140,1,2,NULL),(3640,143,1,2,NULL),(3641,170,1,2,NULL),(3642,4,19,2,NULL),(3643,15,19,2,NULL),(3644,19,19,2,NULL),(3645,20,19,2,NULL),(3646,22,19,2,NULL),(3647,25,19,2,NULL),(3648,31,19,2,NULL),(3649,124,19,2,NULL),(3650,127,19,2,NULL),(3651,130,19,2,NULL),(3652,132,19,2,NULL),(3653,134,19,2,NULL),(3654,4,25,2,NULL),(3655,15,25,2,NULL),(3656,19,25,2,NULL),(3657,20,25,2,NULL),(3658,22,25,2,NULL),(3659,25,25,2,NULL),(3660,31,25,2,NULL),(3661,124,25,2,NULL),(3662,127,25,2,NULL),(3663,130,25,2,NULL),(3664,132,25,2,NULL),(3665,134,25,2,NULL),(3666,4,27,2,NULL),(3667,15,27,2,NULL),(3668,19,27,2,NULL),(3669,20,27,2,NULL),(3670,22,27,2,NULL),(3671,25,27,2,NULL),(3672,31,27,2,NULL),(3673,124,27,2,NULL),(3674,127,27,2,NULL),(3675,130,27,2,NULL),(3676,132,27,2,NULL),(3677,134,27,2,NULL),(3678,4,54,2,NULL),(3679,15,54,2,NULL),(3680,19,54,2,NULL),(3681,20,54,2,NULL),(3682,22,54,2,NULL),(3683,25,54,2,NULL),(3684,31,54,2,NULL),(3685,124,54,2,NULL),(3686,127,54,2,NULL),(3687,130,54,2,NULL),(3688,132,54,2,NULL),(3689,134,54,2,NULL),(3690,4,77,2,NULL),(3691,15,77,2,NULL),(3692,19,77,2,NULL),(3693,20,77,2,NULL),(3694,22,77,2,NULL),(3695,25,77,2,NULL),(3696,31,77,2,NULL),(3697,124,77,2,NULL),(3698,127,77,2,NULL),(3699,130,77,2,NULL),(3700,132,77,2,NULL),(3701,134,77,2,NULL),(3702,4,82,2,NULL),(3703,15,82,2,NULL),(3704,19,82,2,NULL),(3705,20,82,2,NULL),(3706,22,82,2,NULL),(3707,25,82,2,NULL),(3708,31,82,2,NULL),(3709,124,82,2,NULL),(3710,127,82,2,NULL),(3711,130,82,2,NULL),(3712,132,82,2,NULL),(3713,134,82,2,NULL),(3714,4,86,2,NULL),(3715,15,86,2,NULL),(3716,19,86,2,NULL),(3717,20,86,2,NULL),(3718,22,86,2,NULL),(3719,25,86,2,NULL),(3720,31,86,2,NULL),(3721,124,86,2,NULL),(3722,127,86,2,NULL),(3723,130,86,2,NULL),(3724,132,86,2,NULL),(3725,134,86,2,NULL),(3726,4,87,2,NULL),(3727,15,87,2,NULL),(3728,19,87,2,NULL),(3729,20,87,2,NULL),(3730,22,87,2,NULL),(3731,25,87,2,NULL),(3732,31,87,2,NULL),(3733,124,87,2,NULL),(3734,127,87,2,NULL),(3735,130,87,2,NULL),(3736,132,87,2,NULL),(3737,134,87,2,NULL),(3738,82,4,2,NULL),(3739,82,5,2,NULL),(3740,82,6,2,NULL),(3741,82,45,2,NULL),(3742,82,46,2,NULL),(3743,82,48,2,NULL),(3744,82,49,2,NULL),(3745,82,9,2,NULL),(3746,82,19,2,NULL),(3747,82,25,2,NULL),(3748,82,27,2,NULL),(3749,82,54,2,NULL),(3750,82,77,2,NULL),(3751,82,82,2,NULL),(3752,82,86,2,NULL),(3753,82,87,2,NULL),(3754,30,4,2,NULL),(3755,58,4,2,NULL),(3756,70,4,2,NULL),(3757,74,4,2,NULL),(3758,77,4,2,NULL),(3759,80,4,2,NULL),(3760,85,4,2,NULL),(3761,113,4,2,NULL),(3762,117,4,2,NULL),(3763,135,4,2,NULL),(3764,140,4,2,NULL),(3765,143,4,2,NULL),(3766,170,4,2,NULL),(3767,30,5,2,NULL),(3768,58,5,2,NULL),(3769,70,5,2,NULL),(3770,74,5,2,NULL),(3771,77,5,2,NULL),(3772,80,5,2,NULL),(3773,85,5,2,NULL),(3774,113,5,2,NULL),(3775,117,5,2,NULL),(3776,135,5,2,NULL),(3777,140,5,2,NULL),(3778,143,5,2,NULL),(3779,170,5,2,NULL),(3780,141,5,2,NULL),(3781,141,25,2,NULL),(3782,141,37,2,NULL),(3783,141,43,2,NULL),(3784,30,6,2,NULL),(3785,58,6,2,NULL),(3786,70,6,2,NULL),(3787,74,6,2,NULL),(3788,77,6,2,NULL),(3789,80,6,2,NULL),(3790,85,6,2,NULL),(3791,113,6,2,NULL),(3792,117,6,2,NULL),(3793,135,6,2,NULL),(3794,140,6,2,NULL),(3795,143,6,2,NULL),(3796,170,6,2,NULL),(3797,30,45,2,NULL),(3798,58,45,2,NULL),(3799,70,45,2,NULL),(3800,74,45,2,NULL),(3801,77,45,2,NULL),(3802,80,45,2,NULL),(3803,85,45,2,NULL),(3804,113,45,2,NULL),(3805,117,45,2,NULL),(3806,135,45,2,NULL),(3807,140,45,2,NULL),(3808,143,45,2,NULL),(3809,170,45,2,NULL),(3810,30,46,2,NULL),(3811,58,46,2,NULL),(3812,70,46,2,NULL),(3813,74,46,2,NULL),(3814,77,46,2,NULL),(3815,80,46,2,NULL),(3816,85,46,2,NULL),(3817,113,46,2,NULL),(3818,117,46,2,NULL),(3819,135,46,2,NULL),(3820,140,46,2,NULL),(3821,143,46,2,NULL),(3822,170,46,2,NULL),(3823,30,48,2,NULL),(3824,58,48,2,NULL),(3825,70,48,2,NULL),(3826,74,48,2,NULL),(3827,77,48,2,NULL),(3828,80,48,2,NULL),(3829,85,48,2,NULL),(3830,113,48,2,NULL),(3831,117,48,2,NULL),(3832,135,48,2,NULL),(3833,140,48,2,NULL),(3834,143,48,2,NULL),(3835,170,48,2,NULL),(3836,30,49,2,NULL),(3837,58,49,2,NULL),(3838,70,49,2,NULL),(3839,74,49,2,NULL),(3840,77,49,2,NULL),(3841,80,49,2,NULL),(3842,85,49,2,NULL),(3843,113,49,2,NULL),(3844,117,49,2,NULL),(3845,135,49,2,NULL),(3846,140,49,2,NULL),(3847,143,49,2,NULL),(3848,170,49,2,NULL),(3849,23,3,2,NULL),(3850,23,13,2,NULL),(3851,23,33,2,NULL),(3852,23,40,2,NULL),(3853,52,3,2,NULL),(3854,52,13,2,NULL),(3855,52,33,2,NULL),(3856,52,40,2,NULL),(3857,122,4,2,NULL),(3858,122,19,2,NULL),(3859,122,35,2,NULL),(3860,122,42,2,NULL),(3861,128,4,2,NULL),(3862,128,19,2,NULL),(3863,128,35,2,NULL),(3864,128,42,2,NULL),(3865,131,4,2,NULL),(3866,131,19,2,NULL),(3867,131,35,2,NULL),(3868,131,42,2,NULL),(3869,137,4,2,NULL),(3870,137,19,2,NULL),(3871,137,35,2,NULL),(3872,137,42,2,NULL),(3873,147,4,2,NULL),(3874,147,19,2,NULL),(3875,147,35,2,NULL),(3876,147,42,2,NULL),(3877,170,9,2,NULL),(3878,30,19,2,NULL),(3879,58,19,2,NULL),(3880,70,19,2,NULL),(3881,74,19,2,NULL),(3882,77,19,2,NULL),(3883,80,19,2,NULL),(3884,85,19,2,NULL),(3885,113,19,2,NULL),(3886,117,19,2,NULL),(3887,135,19,2,NULL),(3888,140,19,2,NULL),(3889,143,19,2,NULL),(3890,30,25,2,NULL),(3891,58,25,2,NULL),(3892,70,25,2,NULL),(3893,74,25,2,NULL),(3894,77,25,2,NULL),(3895,80,25,2,NULL),(3896,85,25,2,NULL),(3897,113,25,2,NULL),(3898,117,25,2,NULL),(3899,135,25,2,NULL),(3900,140,25,2,NULL),(3901,143,25,2,NULL),(3902,30,27,2,NULL),(3903,58,27,2,NULL),(3904,70,27,2,NULL),(3905,74,27,2,NULL),(3906,77,27,2,NULL),(3907,80,27,2,NULL),(3908,85,27,2,NULL),(3909,113,27,2,NULL),(3910,117,27,2,NULL),(3911,135,27,2,NULL),(3912,140,27,2,NULL),(3913,143,27,2,NULL),(3914,30,54,2,NULL),(3915,58,54,2,NULL),(3916,70,54,2,NULL),(3917,74,54,2,NULL),(3918,77,54,2,NULL),(3919,80,54,2,NULL),(3920,85,54,2,NULL),(3921,113,54,2,NULL),(3922,117,54,2,NULL),(3923,135,54,2,NULL),(3924,140,54,2,NULL),(3925,143,54,2,NULL),(3926,30,77,2,NULL),(3927,58,77,2,NULL),(3928,70,77,2,NULL),(3929,74,77,2,NULL),(3930,77,77,2,NULL),(3931,80,77,2,NULL),(3932,85,77,2,NULL),(3933,113,77,2,NULL),(3934,117,77,2,NULL),(3935,135,77,2,NULL),(3936,140,77,2,NULL),(3937,143,77,2,NULL),(3938,30,82,2,NULL),(3939,58,82,2,NULL),(3940,70,82,2,NULL),(3941,74,82,2,NULL),(3942,77,82,2,NULL),(3943,80,82,2,NULL),(3944,85,82,2,NULL),(3945,113,82,2,NULL),(3946,117,82,2,NULL),(3947,135,82,2,NULL),(3948,140,82,2,NULL),(3949,143,82,2,NULL),(3950,30,86,2,NULL),(3951,58,86,2,NULL),(3952,70,86,2,NULL),(3953,74,86,2,NULL),(3954,77,86,2,NULL),(3955,80,86,2,NULL),(3956,85,86,2,NULL),(3957,113,86,2,NULL),(3958,117,86,2,NULL),(3959,135,86,2,NULL),(3960,140,86,2,NULL),(3961,143,86,2,NULL),(3962,30,87,2,NULL),(3963,58,87,2,NULL),(3964,70,87,2,NULL),(3965,74,87,2,NULL),(3966,77,87,2,NULL),(3967,80,87,2,NULL),(3968,85,87,2,NULL),(3969,113,87,2,NULL),(3970,117,87,2,NULL),(3971,135,87,2,NULL),(3972,140,87,2,NULL),(3973,143,87,2,NULL),(3974,170,19,2,NULL),(3975,170,25,2,NULL),(3976,170,27,2,NULL),(3977,170,54,2,NULL),(3978,170,77,2,NULL),(3979,170,82,2,NULL),(3980,170,86,2,NULL),(3981,170,87,2,NULL),(3982,165,5,2,NULL),(3983,165,25,2,NULL),(3984,165,37,2,NULL),(3985,165,43,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProviderLinks`
--

LOCK TABLES `ProviderLinks` WRITE;
/*!40000 ALTER TABLE `ProviderLinks` DISABLE KEYS */;
INSERT INTO `ProviderLinks` VALUES (1,7,28,NULL),(2,7,30,NULL),(3,20,28,NULL),(4,20,28,NULL),(5,20,30,NULL),(6,65,28,NULL),(7,65,30,NULL),(8,24,28,NULL),(9,24,28,NULL),(10,24,30,NULL),(11,67,28,NULL),(12,67,28,NULL),(13,67,30,NULL),(14,67,30,NULL),(15,8,28,NULL),(16,8,28,NULL),(17,23,28,NULL),(18,23,28,NULL),(19,63,28,NULL),(20,63,28,NULL),(21,26,28,NULL),(22,66,28,NULL),(23,8,30,NULL),(24,23,30,NULL),(25,23,30,NULL),(26,63,30,NULL),(27,26,30,NULL),(28,26,30,NULL),(29,66,30,NULL),(30,66,30,NULL);
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

-- Dump completed on 2015-10-12  3:30:44
