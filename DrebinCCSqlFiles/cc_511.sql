-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_511
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
INSERT INTO `ActionStrings` VALUES (15,'SMS_SEND_ACTIOIN'),(8,'android.intent.action.BOOT_COMPLETED'),(19,'android.intent.action.CHOOSER'),(35,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(13,'android.intent.action.PACKAGE_ADDED'),(12,'android.intent.action.PACKAGE_CHANGED'),(14,'android.intent.action.PACKAGE_REMOVED'),(39,'android.intent.action.SCREEN_OFF'),(40,'android.intent.action.SCREEN_ON'),(4,'android.intent.action.SET_WALLPAPER'),(18,'android.intent.action.TIMEZONE_CHANGED'),(17,'android.intent.action.TIME_SET'),(16,'android.intent.action.TIME_TICK'),(21,'android.intent.action.VIEW'),(20,'android.intent.action.WALLPAPER_CHANGED'),(33,'android.net.conn.CONNECTIVITY_CHANGE'),(3,'android.provider.Telephony.SMS_RECEIVED'),(2,'android.provider.Telephony.WAP_PUSH_RECEIVED'),(36,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(22,'android.settings.WIRELESS_SETTINGS'),(34,'com.android.contacts.action.FILTER_CONTACTS'),(5,'com.android.launcher.action.INSTALL_SHORTCUT'),(6,'com.android.launcher.action.UNINSTALL_SHORTCUT'),(31,'com.jx.Action_CopyResError'),(32,'com.jx.MainActivity.CostInfo'),(24,'com.jx.MainActivity.ErrorInfo'),(28,'com.jx.MainActivity.InstallConfirmInfo'),(27,'com.jx.MainActivity.OpenLWP'),(30,'com.jx.MainActivity.RepeateInstall'),(29,'com.jx.MainActivity.SaveID'),(38,'com.jx.action.ExitBootReceiver'),(26,'com.jx.ad.ADService.ConfirmInstallInfo'),(7,'com.jx.ad.ADService.Init'),(37,'com.jx.ad.ADService.InitHasUpdate'),(25,'com.jx.ad.ADService.InstallRes'),(9,'com.jx.ad.ADService.Run'),(10,'com.jx.ad.ADService.RunCancel'),(23,'com.jx.ad.BootSmsReceiverService.Exit'),(11,'com.jx.ad.BootSmsReceiverService.Start');
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
INSERT INTO `Applications` VALUES (1,'km.home',1),(2,'com.km.launcher',1),(3,'com.jx.theme.n1018108453',1),(4,'com.jx.theme.n2024615261',1),(5,'com.jx.theme.n1880607134',1),(6,'com.jx.theme.n2053245968',1);
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
INSERT INTO `CategoryStrings` VALUES (1,'android.intent.category.DEFAULT'),(3,'android.intent.category.HOME'),(2,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'km.home.Home'),(2,1,'km.home.UnlockActivity'),(3,1,'km.home.ThemeListActivity'),(4,1,'com.km.MainActivity'),(5,1,'com.km.HoldMessage'),(6,2,'com.km.launcher.Launcher'),(7,2,'com.km.launcher.WallpaperChooser'),(8,2,'com.km.theme.ThemeListActivity'),(9,2,'com.km.charge.MainActivity'),(10,3,'com.jx.MainActivity'),(11,2,'com.km.ad.AdService'),(12,2,'com.km.charge.CycleService'),(13,3,'com.jx.SettingActivity'),(14,2,'com.km.launcher.InstallShortcutReceiver'),(15,4,'com.jx.MainActivity'),(16,3,'com.jx.WelcomeActivity'),(17,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(18,4,'com.jx.SettingActivity'),(19,2,'com.km.launcher.UninstallShortcutReceiver'),(20,3,'com.jx.ad.AndroidThemeService'),(21,4,'com.jx.WelcomeActivity'),(22,2,'com.km.charge.BootReceiver'),(23,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(24,4,'com.jx.ad.AndroidThemeService'),(25,2,'com.km.launcher.LauncherProvider'),(26,3,'com.jx.ad.BootSmsReceiverService'),(27,4,'com.jx.ad.BootSmsReceiverService'),(28,3,'com.jx.ad.BootReceiver'),(29,4,'com.jx.ad.BootReceiver'),(30,5,'com.jx.MainActivity'),(31,5,'com.jx.SettingActivity'),(32,6,'com.jx.MainActivity'),(33,5,'com.jx.WelcomeActivity'),(34,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(35,6,'com.jx.SettingActivity'),(36,5,'com.jx.ad.AndroidThemeService'),(37,6,'com.jx.WelcomeActivity'),(38,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(39,6,'com.jx.ad.AndroidThemeService'),(40,5,'com.jx.ad.BootSmsReceiverService'),(41,5,'com.jx.ad.BootReceiver'),(42,6,'com.jx.ad.BootSmsReceiverService'),(43,6,'com.jx.ad.BootReceiver'),(44,1,'km.home.Home$WallpaperIntentReceiver'),(45,1,'com.km.SendMessage$SendMessageReceiver'),(46,1,'com.km.tool.Http$ConnectivityReceiver'),(47,1,'km.home.UnlockActivity$TimeReceiver'),(48,1,'km.home.Home$ApplicationsIntentReceiver'),(49,1,'km.home.Home$ApplicationLauncher'),(50,1,'km.home.ThemeManager'),(51,3,'com.jx.SettingActivity$1'),(52,4,'com.jx.MainActivity$ControlReceiver$1'),(53,3,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(54,4,'com.jx.ad.AndroidThemeService$4'),(55,3,'com.jx.ad.AndroidThemeService$6'),(56,3,'com.jx.ad.ServiceControlReciver'),(57,4,'com.jx.ad.AndroidThemeService$7'),(58,4,'com.jx.MainActivity$ControlReceiver'),(59,5,'com.jx.ad.AndroidThemeService$6'),(60,2,'com.km.ad.AdService$1'),(61,3,'com.jx.ad.AndroidThemeService$4'),(62,4,'com.jx.tool.ApnManager'),(63,2,'com.km.launcher.Launcher$WallpaperIntentReceiver'),(64,2,'com.km.launcher.LauncherModel'),(65,5,'com.jx.ad.AndroidThemeService$SmsReceiver'),(66,3,'com.jx.ad.AndroidThemeService$8'),(67,5,'com.jx.ad.AndroidThemeService$3'),(68,2,'com.km.theme.ThemeManager'),(69,3,'com.jx.MainActivity$4'),(70,5,'com.jx.MainActivity$ControlReceiver'),(71,6,'com.jx.MainActivity$ControlReceiver$1'),(72,2,'com.km.tool.ApnManager'),(73,6,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(74,3,'com.jx.MainActivity$1'),(75,5,'com.jx.tool.ApnManager'),(76,5,'com.jx.ad.AndroidThemeService$5'),(77,2,'com.km.tool.Util'),(78,6,'com.jx.ad.AndroidThemeService$6'),(79,2,'com.km.charge.HttpBox$ConnectivityReceiver'),(80,3,'com.jx.ad.AndroidThemeService$SmsReceiver'),(81,6,'com.jx.MainActivity$4'),(82,6,'com.jx.ad.AndroidThemeService$8'),(83,6,'com.jx.tool.ApnManager'),(84,6,'com.jx.MainActivity$ControlReceiver'),(85,5,'com.jx.ad.AndroidThemeService$7'),(86,2,'com.km.charge.HoldMessage'),(87,2,'com.km.launcher.MyAnalogClock$1'),(88,6,'com.jx.SettingActivity$6'),(89,2,'com.km.charge.SendMessage$SendMessageReceiver'),(90,5,'com.jx.MainActivity$ControlReceiver$6$1'),(91,4,'com.jx.ad.AndroidThemeService$2'),(92,2,'com.km.tool.Http$ConnectivityReceiver'),(93,2,'com.km.launcher.Launcher$ApplicationsIntentReceiver'),(94,4,'com.jx.ad.AndroidThemeService$8'),(95,4,'com.jx.MainActivity$4'),(96,2,'com.km.launcher.Search'),(97,4,'com.jx.ad.AndroidThemeService$5'),(98,4,'com.jx.ad.AndroidThemeService$3'),(99,5,'com.jx.SettingActivity$1'),(100,3,'com.jx.ad.AndroidThemeService$3'),(101,5,'com.jx.ad.AndroidThemeService$MMSReceiver'),(102,3,'com.jx.ad.AndroidThemeService$5'),(103,5,'com.jx.MainActivity$ControlReceiver$1'),(104,5,'com.jx.SettingActivity$6'),(105,4,'com.jx.ad.ServiceControlReciver'),(106,5,'com.jx.ad.AndroidThemeService$2'),(107,6,'com.jx.ad.AndroidThemeService$2'),(108,3,'com.jx.MainActivity$ControlReceiver$6$1'),(109,4,'com.jx.ad.AndroidThemeService$6'),(110,5,'com.jx.ad.AndroidThemeService$4'),(111,6,'com.jx.ad.AndroidThemeService$7'),(112,3,'com.jx.tool.ApnManager'),(113,4,'com.jx.ad.AndroidThemeService$MMSReceiver'),(114,3,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(115,3,'com.jx.ad.AndroidThemeService$7'),(116,6,'com.jx.ad.AndroidThemeService$4'),(117,5,'com.jx.MainActivity$1'),(118,3,'com.jx.MainActivity$ControlReceiver'),(119,6,'com.jx.ad.ServiceControlReciver'),(120,6,'com.jx.tool.Utility'),(121,5,'com.jx.ad.ServiceControlReciver'),(122,4,'com.jx.ad.AndroidThemeService$SmsReceiver'),(123,4,'com.jx.MainActivity$1'),(124,5,'com.jx.ad.AndroidThemeService$8'),(125,6,'com.jx.ad.AndroidThemeService$3'),(126,5,'com.jx.tool.Utility'),(127,3,'com.jx.ad.AndroidThemeService$2'),(128,4,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(129,4,'com.jx.SettingActivity$6'),(130,6,'com.jx.MainActivity$ControlReceiver$6$1'),(131,3,'com.jx.ad.AndroidThemeService$MMSReceiver'),(132,3,'com.jx.tool.Utility'),(133,4,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(134,6,'com.adwo.adsdk.M'),(135,4,'com.jx.tool.Utility'),(136,4,'com.jx.MainActivity$ControlReceiver$6$1'),(137,6,'com.jx.ad.AndroidThemeService$SmsReceiver'),(138,6,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(139,5,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(140,3,'com.jx.SettingActivity$6'),(141,4,'com.adwo.adsdk.M'),(142,5,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(143,5,'com.jx.MainActivity$4'),(144,6,'com.jx.ad.AndroidThemeService$MMSReceiver'),(145,6,'com.jx.SettingActivity$1'),(146,4,'com.jx.SettingActivity$1'),(147,6,'com.jx.ad.AndroidThemeService$5'),(148,3,'com.adwo.adsdk.M'),(149,3,'com.jx.MainActivity$ControlReceiver$1'),(150,6,'com.jx.MainActivity$1'),(151,5,'com.adwo.adsdk.M');
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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,5,'data'),(2,5,'pdus'),(3,17,'shouldShowTitlebar'),(4,38,'transitionTime'),(5,8,'launcher.all_apps_folder'),(6,9,'launcher.all_apps_folder'),(7,34,'shouldResizeOverlay'),(8,6,'launcher.current_screen'),(9,6,'launcher.all_apps_folder'),(10,20,'respid'),(11,6,'launcher.add_cellX'),(12,6,'launcher.add_occupied_cells'),(13,6,'android.intent.extra.livefolder.BASE_INTENT'),(14,6,'android.intent.extra.livefolder.ICON'),(15,36,'resownerid'),(16,14,'android.intent.extra.shortcut.NAME'),(17,6,'android.intent.extra.shortcut.NAME'),(18,14,'android.intent.extra.shortcut.ICON'),(19,18,'android.intent.extra.shortcut.NAME'),(20,6,'android.intent.extra.shortcut.ICON'),(21,6,'launcher.add_spanY'),(22,34,'shouldMakeOverlayTransparent'),(23,34,'shouldEnableBottomBar'),(24,6,'launcher.add_screen'),(25,6,'launcher.add_spanX'),(26,14,'duplicate'),(27,34,'url'),(28,34,'overlayTransition'),(29,18,'android.intent.extra.shortcut.INTENT'),(30,20,'resownerid'),(31,17,'transitionTime'),(32,6,'launcher.add_countY'),(33,17,'overlayTransition'),(34,17,'shouldResizeOverlay'),(35,6,'android.intent.extra.livefolder.NAME'),(36,23,'shouldEnableBottomBar'),(37,23,'transitionTime'),(38,6,'launcher.add_countX'),(39,39,'resownerid'),(40,34,'shouldShowTitlebar'),(41,38,'shouldShowBottomBar'),(42,38,'shouldEnableBottomBar'),(43,6,'launcher.add_cellY'),(44,23,'url'),(45,6,'launcher.rename_folder_id'),(46,24,'respid'),(47,34,'shouldShowBottomBar'),(48,6,'data'),(49,8,'launcher.user_folder'),(50,9,'launcher.user_folder'),(51,6,'launcher.user_folder'),(52,34,'overlayTitle'),(53,23,'overlayTitle'),(54,14,'android.intent.extra.shortcut.ICON_RESOURCE'),(55,6,'android.intent.extra.shortcut.ICON_RESOURCE'),(56,23,'shouldShowBottomBar'),(57,17,'overlayTitle'),(58,14,'android.intent.extra.shortcut.INTENT'),(59,38,'shouldMakeOverlayTransparent'),(60,6,'android.intent.extra.shortcut.INTENT'),(61,18,'duplicate'),(62,17,'url'),(63,6,'launcher.rename_folder'),(64,23,'overlayTransition'),(65,17,'shouldMakeOverlayTransparent'),(66,38,'overlayTransition'),(67,23,'shouldResizeOverlay'),(68,38,'shouldResizeOverlay'),(69,23,'shouldShowTitlebar'),(70,23,'shouldMakeOverlayTransparent'),(71,39,'respid'),(72,34,'transitionTime'),(73,17,'shouldShowBottomBar'),(74,24,'resownerid'),(75,38,'overlayTitle'),(76,17,'shouldEnableBottomBar'),(77,38,'url'),(78,36,'respid'),(79,38,'shouldShowTitlebar');
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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',0,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'r',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'s',0,NULL,NULL),(12,12,'s',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'r',1,23,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,19,'r',1,29,NULL),(19,18,'a',0,NULL,NULL),(20,20,'s',1,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'r',1,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'s',1,NULL,NULL),(25,25,'p',0,NULL,NULL),(26,26,'s',1,NULL,NULL),(27,27,'s',1,NULL,NULL),(28,28,'r',1,NULL,NULL),(29,29,'r',1,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',1,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'s',1,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'s',1,NULL,NULL),(40,40,'s',1,NULL,NULL),(41,41,'r',1,NULL,NULL),(42,42,'s',1,NULL,NULL),(43,43,'r',1,NULL,NULL),(44,44,'r',1,NULL,NULL),(45,45,'r',1,NULL,NULL),(46,46,'r',1,NULL,NULL),(47,47,'r',1,NULL,NULL),(48,48,'r',1,NULL,NULL),(49,53,'r',1,NULL,NULL),(50,56,'r',1,NULL,NULL),(51,58,'r',1,NULL,NULL),(52,63,'r',1,NULL,NULL),(53,65,'r',1,NULL,NULL),(54,70,'r',1,NULL,NULL),(55,73,'r',1,NULL,NULL),(56,79,'r',1,NULL,NULL),(57,80,'r',1,NULL,NULL),(58,14,'r',1,NULL,NULL),(59,84,'r',1,NULL,NULL),(60,19,'r',1,NULL,NULL),(61,86,'r',1,NULL,NULL),(62,87,'r',1,NULL,NULL),(63,89,'r',1,NULL,NULL),(64,92,'r',1,NULL,NULL),(65,93,'r',1,NULL,NULL),(66,93,'r',1,NULL,NULL),(67,101,'r',1,NULL,NULL),(68,105,'r',1,NULL,NULL),(69,113,'r',1,NULL,NULL),(70,114,'r',1,NULL,NULL),(71,118,'r',1,NULL,NULL),(72,119,'r',1,NULL,NULL),(73,121,'r',1,NULL,NULL),(74,122,'r',1,NULL,NULL),(75,128,'r',1,NULL,NULL),(76,131,'r',1,NULL,NULL),(77,133,'r',1,NULL,NULL),(78,134,'r',1,NULL,NULL),(79,137,'r',1,NULL,NULL),(80,138,'r',1,NULL,NULL),(81,139,'r',1,NULL,NULL),(82,141,'r',1,NULL,NULL),(83,142,'r',1,NULL,NULL),(84,144,'r',1,NULL,NULL),(85,148,'r',1,NULL,NULL),(86,151,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=329 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,1,4),(3,2,1),(4,3,1),(5,4,2),(6,5,1),(7,6,10),(8,6,13),(9,6,16),(10,7,15),(11,7,21),(12,7,19),(13,8,24),(14,9,20),(15,10,15),(16,11,24),(17,12,13),(18,13,37),(19,14,36),(20,15,6),(21,16,8),(22,16,9),(23,17,20),(24,18,24),(25,19,15),(26,19,21),(27,19,19),(28,20,6),(29,21,20),(30,22,39),(31,23,36),(32,24,8),(33,24,6),(34,25,6),(35,26,10),(36,26,16),(37,26,13),(38,27,35),(39,27,37),(40,27,32),(41,28,8),(42,28,9),(43,29,14),(44,31,36),(45,30,10),(46,30,13),(47,30,16),(48,32,25),(49,33,6),(50,34,32),(51,35,8),(52,35,9),(53,36,36),(54,37,20),(55,38,6),(56,38,14),(57,39,22),(58,39,6),(59,40,39),(60,41,6),(61,42,36),(62,43,20),(63,44,39),(64,45,6),(65,45,9),(66,46,36),(67,47,32),(68,47,37),(69,47,35),(70,48,10),(71,49,33),(72,50,6),(73,52,10),(74,51,39),(75,53,8),(76,53,6),(77,54,20),(78,55,21),(79,55,19),(80,56,39),(81,57,18),(82,58,10),(83,58,13),(84,58,16),(85,59,29),(86,60,35),(87,61,36),(88,62,18),(89,63,21),(90,64,39),(91,65,36),(92,66,36),(93,67,32),(94,67,35),(95,67,37),(96,68,39),(97,70,24),(98,69,31),(99,69,30),(100,69,33),(101,71,24),(102,72,30),(103,72,31),(104,72,33),(105,73,35),(106,73,32),(107,73,37),(108,74,24),(109,75,6),(110,76,9),(111,76,8),(112,77,9),(113,77,8),(114,79,9),(115,79,6),(116,78,21),(117,78,19),(118,78,15),(119,80,6),(120,81,20),(121,82,24),(122,83,18),(123,84,36),(124,85,9),(125,85,8),(126,86,9),(127,86,8),(128,87,9),(129,87,8),(130,88,24),(131,91,6),(132,91,9),(133,90,6),(134,89,31),(135,89,30),(136,89,33),(137,92,20),(138,93,15),(139,94,20),(140,95,8),(141,95,6),(142,96,8),(143,96,6),(144,98,24),(145,97,33),(146,97,30),(147,97,31),(148,99,14),(149,100,8),(150,100,9),(151,101,20),(152,103,6),(153,102,31),(154,102,30),(155,102,33),(156,104,9),(157,104,8),(158,105,20),(159,107,9),(160,107,6),(161,106,24),(162,108,36),(163,109,39),(164,110,13),(165,110,16),(166,110,10),(167,111,24),(168,112,36),(169,113,6),(170,113,9),(171,114,9),(172,114,8),(173,115,39),(174,116,20),(175,117,18),(176,118,36),(177,119,8),(178,119,9),(179,120,24),(180,121,32),(181,122,20),(182,123,25),(183,124,33),(184,124,31),(185,125,24),(186,126,18),(187,127,9),(188,127,8),(189,128,39),(190,129,24),(191,130,9),(192,130,8),(193,132,9),(194,132,8),(195,131,31),(196,131,30),(197,131,33),(198,133,20),(199,134,14),(200,135,39),(201,136,14),(202,138,24),(203,137,36),(204,140,9),(205,140,8),(206,139,32),(207,141,36),(208,142,9),(209,142,8),(210,143,20),(211,144,14),(212,144,6),(213,146,24),(214,145,8),(215,145,9),(216,147,9),(217,147,6),(218,148,39),(219,148,37),(220,148,35),(221,149,16),(222,150,18),(223,151,41),(224,152,6),(225,152,22),(226,153,32),(227,154,19),(228,154,21),(229,154,15),(230,155,36),(231,156,39),(232,157,24),(233,158,43),(234,159,36),(235,159,31),(236,159,33),(237,160,20),(238,161,39),(239,162,30),(240,162,31),(241,162,33),(242,163,20),(243,164,19),(244,164,21),(245,164,15),(246,165,37),(247,165,35),(248,165,32),(249,166,20),(250,167,15),(251,168,24),(252,169,39),(253,170,16),(254,170,13),(255,170,20),(256,171,19),(257,171,21),(258,171,24),(259,172,37),(260,172,35),(261,172,32),(262,173,20),(263,174,20),(264,175,15),(265,175,21),(266,175,19),(267,176,20),(268,177,21),(269,177,19),(270,177,15),(271,178,16),(272,178,13),(273,178,10),(274,179,39),(275,180,39),(276,181,36),(277,182,24),(278,183,30),(279,184,10),(280,185,24),(281,186,39),(282,187,13),(283,187,10),(284,187,16),(285,188,36),(286,189,24),(287,190,39),(288,191,20),(289,192,20),(290,193,30),(291,194,39),(292,195,24),(293,196,16),(294,196,13),(295,197,33),(296,197,31),(297,197,30),(298,198,24),(299,200,28),(300,199,32),(301,199,35),(302,199,37),(303,201,36),(304,202,21),(305,202,19),(306,202,15),(307,203,39),(308,204,36),(309,205,10),(310,206,15),(311,207,36),(312,208,39),(313,209,10),(314,209,13),(315,209,16),(316,210,19),(317,211,31),(318,212,37),(319,212,35),(320,213,30),(321,214,37),(322,214,35),(323,214,32),(324,215,30),(325,216,39),(326,217,36),(327,218,39),(328,219,36);
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
) ENGINE=InnoDB AUTO_INCREMENT=220 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,2,'<km.home.UnlockActivity: void onClick(android.view.View)>',5,'a',NULL),(2,1,'<km.home.Home: void changeTheme(km.theme.ThemeInfo)>',15,'a',NULL),(3,49,'<km.home.Home$ApplicationLauncher: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',9,'a',0),(4,50,'<km.home.ThemeManager: void setup()>',24,'a',NULL),(5,1,'<km.home.Home: void startWallpaper()>',5,'a',NULL),(6,51,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(7,52,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(8,54,'<com.jx.ad.AndroidThemeService$4: void run()>',125,'r',NULL),(9,55,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(10,15,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(11,57,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(12,13,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(13,37,'<com.jx.WelcomeActivity: void onResume()>',67,'a',NULL),(14,59,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(15,6,'<com.km.launcher.Launcher: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(16,60,'<com.km.ad.AdService$1: void run()>',6,'s',NULL),(17,61,'<com.jx.ad.AndroidThemeService$4: void run()>',125,'r',NULL),(18,62,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(19,15,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(20,64,'<com.km.launcher.LauncherModel: com.km.launcher.FolderInfo getFolderById(android.content.Context,long)>',12,'p',NULL),(21,66,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(22,39,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(23,67,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(24,68,'<com.km.theme.ThemeManager: void setup()>',32,'a',NULL),(25,64,'<com.km.launcher.LauncherModel: com.km.launcher.Widget getPhotoFrameInfo(android.content.Context,int,int,int)>',15,'p',NULL),(26,69,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(27,71,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(28,72,'<com.km.tool.ApnManager: void delete(int)>',8,'p',NULL),(29,14,'<com.km.launcher.InstallShortcutReceiver: boolean findEmptyCell(android.content.Context,int[],int)>',19,'p',NULL),(30,74,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(31,75,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(32,25,'<com.km.launcher.LauncherProvider: void sendNotify(android.net.Uri)>',9,'p',0),(33,6,'<com.km.launcher.Launcher: void registerContentObservers()>',4,'p',NULL),(34,32,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(35,72,'<com.km.tool.ApnManager: void delete(int)>',8,'p',NULL),(36,76,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(37,55,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(38,64,'<com.km.launcher.LauncherModel: void addItemToDatabase(android.content.Context,com.km.launcher.ItemInfo,long,int,int,int,boolean)>',17,'p',NULL),(39,77,'<com.km.tool.Util: void startServiceWithSingleMode(android.content.Context,java.lang.Class)>',7,'s',NULL),(40,78,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(41,6,'<com.km.launcher.Launcher: void startWallpaper()>',5,'a',NULL),(42,36,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(43,55,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(44,78,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(45,6,'<com.km.launcher.Launcher: boolean onKeyDown(int,android.view.KeyEvent)>',27,'a',NULL),(46,59,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(47,81,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(48,10,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(49,33,'<com.jx.WelcomeActivity: void onResume()>',67,'a',NULL),(50,6,'<com.km.launcher.Launcher: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(51,82,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(52,10,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(53,64,'<com.km.launcher.LauncherModel: void updateItemInDatabase(android.content.Context,com.km.launcher.ItemInfo)>',8,'p',NULL),(54,55,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(55,21,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(56,83,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(57,19,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',25,'p',NULL),(58,10,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(59,29,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(60,35,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(61,85,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(62,19,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'p',NULL),(63,21,'<com.jx.WelcomeActivity: void onResume()>',67,'a',NULL),(64,83,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(65,36,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(66,76,'<com.jx.ad.AndroidThemeService$5: void run()>',116,'r',NULL),(67,88,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(68,78,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(69,90,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(70,62,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(71,91,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(72,30,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(73,32,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(74,94,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(75,64,'<com.km.launcher.LauncherModel: com.km.launcher.FolderInfo getFolderById(android.content.Context,long)>',12,'p',NULL),(76,72,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',9,'p',NULL),(77,72,'<com.km.tool.ApnManager: int CreateWapApn()>',27,'p',NULL),(78,95,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(79,96,'<com.km.launcher.Search: void sendLaunchIntent(java.lang.String,android.net.Uri,java.lang.String,android.os.Bundle,int,java.lang.String,android.server.search.SearchableInfo)>',20,'a',NULL),(80,6,'<com.km.launcher.Launcher: void registerContentObservers()>',4,'p',NULL),(81,61,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(82,97,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(83,19,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'p',NULL),(84,59,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(85,72,'<com.km.tool.ApnManager: int CreateWapApn()>',30,'p',0),(86,72,'<com.km.tool.ApnManager: int CreateGPRSApn()>',27,'p',NULL),(87,72,'<com.km.tool.ApnManager: int getApnId(java.lang.String)>',6,'p',NULL),(88,98,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(89,99,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(90,64,'<com.km.launcher.LauncherModel: com.km.launcher.Widget getPhotoFrameInfo(android.content.Context,int,int,int)>',15,'p',NULL),(91,96,'<com.km.launcher.Search: void sendLaunchIntent(java.lang.String,android.net.Uri,java.lang.String,android.os.Bundle,int,java.lang.String,android.server.search.SearchableInfo)>',20,'a',NULL),(92,100,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(93,15,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(94,102,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(95,68,'<com.km.theme.ThemeManager: void setup()>',32,'a',NULL),(96,64,'<com.km.launcher.LauncherModel: void updateItemInDatabase(android.content.Context,com.km.launcher.ItemInfo)>',8,'p',NULL),(97,103,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(98,97,'<com.jx.ad.AndroidThemeService$5: void run()>',116,'r',NULL),(99,64,'<com.km.launcher.LauncherModel: boolean shortcutExists(android.content.Context,java.lang.String,android.content.Intent)>',12,'p',NULL),(100,72,'<com.km.tool.ApnManager: int CreateGPRSApn()>',30,'p',0),(101,20,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(102,104,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(103,6,'<com.km.launcher.Launcher: void startWallpaper()>',5,'a',NULL),(104,60,'<com.km.ad.AdService$1: void run()>',6,'s',NULL),(105,66,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(106,91,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(107,6,'<com.km.launcher.Launcher: boolean onKeyDown(int,android.view.KeyEvent)>',27,'a',NULL),(108,106,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(109,107,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(110,108,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(111,109,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(112,110,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(113,6,'<com.km.launcher.Launcher: void startActivitySafely(android.content.Intent)>',3,'a',0),(114,72,'<com.km.tool.ApnManager: int CreateWapApn()>',27,'p',NULL),(115,111,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(116,112,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(117,19,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'p',NULL),(118,106,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(119,72,'<com.km.tool.ApnManager: int getApnId(java.lang.String)>',6,'p',NULL),(120,62,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(121,32,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(122,115,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(123,25,'<com.km.launcher.LauncherProvider: void sendNotify(android.net.Uri)>',9,'p',0),(124,33,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(125,62,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(126,19,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',25,'p',NULL),(127,72,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',19,'p',NULL),(128,116,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(129,24,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(130,72,'<com.km.tool.ApnManager: int CreateGPRSApn()>',27,'p',NULL),(131,117,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(132,72,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',9,'p',NULL),(133,112,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(134,14,'<com.km.launcher.InstallShortcutReceiver: boolean findEmptyCell(android.content.Context,int[],int)>',19,'p',NULL),(135,83,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(136,64,'<com.km.launcher.LauncherModel: boolean shortcutExists(android.content.Context,java.lang.String,android.content.Intent)>',12,'p',NULL),(137,75,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(138,109,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(139,32,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(140,72,'<com.km.tool.ApnManager: int CreateGPRSApn()>',30,'p',0),(141,67,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(142,72,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',19,'p',NULL),(143,102,'<com.jx.ad.AndroidThemeService$5: void run()>',116,'r',NULL),(144,64,'<com.km.launcher.LauncherModel: void addItemToDatabase(android.content.Context,com.km.launcher.ItemInfo,long,int,int,int,boolean)>',17,'p',NULL),(145,72,'<com.km.tool.ApnManager: int CreateWapApn()>',30,'p',0),(146,24,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(147,6,'<com.km.launcher.Launcher: void startActivitySafely(android.content.Intent)>',3,'a',0),(148,120,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(149,16,'<com.jx.WelcomeActivity: void onResume()>',67,'a',NULL),(150,19,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'p',NULL),(151,41,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(152,77,'<com.km.tool.Util: void startServiceWithSingleMode(android.content.Context,java.lang.Class)>',7,'s',NULL),(153,32,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(154,123,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(155,124,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(156,125,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(157,109,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(158,43,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(159,126,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(160,127,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(161,107,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(162,30,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(163,20,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(164,129,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(165,130,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(166,100,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(167,15,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(168,98,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(169,82,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(170,132,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(171,135,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(172,32,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(173,112,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(174,61,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(175,136,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(176,127,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(177,15,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(178,10,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(179,116,'<com.jx.ad.AndroidThemeService$4: void run()>',125,'r',NULL),(180,78,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(181,110,'<com.jx.ad.AndroidThemeService$4: void run()>',125,'r',NULL),(182,54,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(183,30,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(184,10,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(185,94,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(186,116,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(187,140,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(188,110,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(189,91,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(190,125,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(191,112,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(192,127,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(193,30,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(194,83,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(195,109,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(196,16,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(197,143,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(198,54,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(199,145,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(200,28,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(201,59,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(202,146,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(203,147,'<com.jx.ad.AndroidThemeService$5: void run()>',116,'r',NULL),(204,75,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(205,10,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(206,15,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(207,124,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(208,147,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(209,149,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(210,18,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(211,31,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(212,37,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(213,30,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(214,150,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(215,30,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(216,39,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(217,75,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(218,107,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(219,106,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL);
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
INSERT INTO `IActions` VALUES (1,4,19),(2,5,19),(3,6,19),(4,7,19),(5,8,19),(6,9,19),(7,10,19),(8,11,19),(9,12,21),(10,13,22),(11,14,24),(12,15,24),(13,17,24),(14,18,1),(15,22,32),(16,25,24),(17,26,25),(18,28,28),(19,29,25),(20,30,32),(21,31,23),(22,33,9),(23,34,21),(24,35,22),(25,36,9),(26,37,21),(27,38,10),(28,41,24),(29,40,24),(30,42,7),(31,44,32),(32,45,19),(33,46,10),(34,47,29),(35,48,24),(36,49,24),(37,50,19),(38,51,19),(39,52,34),(40,53,26),(41,54,24),(42,55,19),(43,56,35),(44,57,21),(45,58,7),(46,60,19),(47,63,26),(48,64,19),(49,66,24),(50,65,23),(51,68,19),(52,71,32),(53,70,19),(54,72,36),(55,74,25),(56,75,11),(57,76,1),(58,77,24),(59,78,25),(60,80,32),(61,81,9),(62,85,10),(63,84,24),(64,86,21),(65,88,26),(66,89,7),(67,90,24),(68,91,31),(69,92,7),(70,93,24),(71,94,26),(72,95,9),(73,96,10),(74,97,9),(75,98,24),(76,100,25),(77,99,7),(78,101,26),(79,102,10),(80,103,10),(81,104,9),(82,105,21),(83,106,21),(84,107,25),(85,108,26),(86,109,21),(87,111,24),(88,110,24),(89,112,37),(90,113,9),(91,114,25),(92,116,21),(93,117,21),(94,115,24),(95,118,24),(96,119,21),(97,120,10),(98,121,23),(99,122,24),(100,124,26),(101,125,24),(102,126,22),(103,127,7),(104,128,29),(105,130,21),(106,129,19),(107,132,7),(108,133,19),(109,134,24),(110,135,24),(111,137,34),(112,136,19),(113,138,24),(114,139,35),(115,140,19),(116,141,24),(117,142,19),(118,143,31),(119,145,32),(120,144,37),(121,146,19),(122,148,19),(123,147,24),(124,149,24),(125,150,19),(126,151,38),(127,152,24),(128,153,36),(129,154,37),(130,155,29),(131,156,21),(132,157,24),(133,158,23),(134,159,24),(135,160,24),(136,161,32),(137,164,11),(138,169,21),(139,170,28),(140,172,23),(141,173,24),(142,174,11),(143,176,24),(144,177,24),(145,178,25),(146,179,32),(147,180,21),(148,181,9),(149,182,31),(150,183,23),(151,184,38),(152,185,9),(153,186,23),(154,187,28),(155,188,25),(156,190,10),(157,192,26),(158,193,26),(159,194,9),(160,196,26),(161,197,31),(162,198,7),(163,199,24),(164,200,10),(165,201,7),(166,202,26),(167,203,25),(168,204,9),(169,205,10),(170,206,26),(171,207,7),(172,208,24),(173,209,9),(174,210,7),(175,211,10),(176,212,7),(177,213,25),(178,214,24),(179,215,24),(180,216,10),(181,217,37),(182,218,25),(183,221,28),(184,224,21),(185,225,24),(186,226,24),(187,227,24),(188,229,24),(189,230,36),(190,231,21),(191,234,11),(192,233,21),(193,235,24),(194,236,21),(195,237,24),(196,238,38),(197,240,24),(198,241,24),(199,242,22),(200,243,1),(201,244,1),(202,245,36),(203,246,38),(204,247,21),(205,248,23),(206,249,29),(207,250,24),(208,251,24);
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
INSERT INTO `ICategories` VALUES (1,18,2),(2,72,1),(3,76,2),(4,153,1),(5,230,1),(6,243,2),(7,244,2),(8,245,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'km/home/Home'),(2,2,'km/home/UnlockActivity'),(3,3,'com/km/MainActivity'),(4,16,'com/jx/WelcomeActivity'),(5,19,'.Launcher'),(6,18,'com.nd.android.launcher.Launcher'),(7,20,'(.*).Launcher'),(8,21,'com/km/theme/ThemeListActivity'),(9,23,'com/km/ad/AdService'),(10,24,'(.*).Launcher'),(11,27,'.Launcher'),(12,26,'com/jx/ad/AndroidThemeService'),(13,32,'com/km/charge/MainActivity'),(14,33,'com/jx/ad/AndroidThemeService'),(15,39,'com/jx/WelcomeActivity'),(16,43,'com/km/charge/CycleService'),(17,42,'com/jx/ad/AndroidThemeService'),(18,46,'com/jx/ad/AndroidThemeService'),(19,59,'com/jx/WelcomeActivity'),(20,61,'.Launcher'),(21,62,'com/km/theme/ThemeListActivity'),(22,63,'com/jx/ad/AndroidThemeService'),(23,67,'(.*).Launcher'),(24,69,'(.*).Launcher'),(25,73,'.Launcher'),(26,75,'com/jx/ad/BootSmsReceiverService'),(27,76,'com.nd.android.launcher.Launcher'),(28,78,'com/jx/ad/AndroidThemeService'),(29,79,'.Launcher'),(30,82,'(.*).Launcher'),(31,83,'(.*).Launcher'),(32,87,'.Launcher'),(33,89,'com/jx/ad/AndroidThemeService'),(34,95,'com/jx/ad/AndroidThemeService'),(35,96,'com/jx/ad/AndroidThemeService'),(36,101,'com/jx/ad/AndroidThemeService'),(37,103,'com/jx/ad/AndroidThemeService'),(38,104,'com/jx/ad/AndroidThemeService'),(39,108,'com/jx/ad/AndroidThemeService'),(40,114,'com/jx/ad/AndroidThemeService'),(41,123,'com/km/charge/MainActivity'),(42,131,'com/km/ad/AdService'),(43,132,'com/jx/ad/AndroidThemeService'),(44,163,'.Launcher'),(45,162,'com.android.packageinstaller.PackageInstallerActivity'),(46,164,'com/jx/ad/BootSmsReceiverService'),(47,166,'com/km/charge/CycleService'),(48,165,'(.*).Launcher'),(49,167,'com/jx/WelcomeActivity'),(50,168,'(.*).Launcher'),(51,171,'.Launcher'),(52,174,'com/jx/ad/BootSmsReceiverService'),(53,175,'com.android.packageinstaller.PackageInstallerActivity'),(54,181,'com/jx/ad/AndroidThemeService'),(55,188,'com/jx/ad/AndroidThemeService'),(56,189,'com.android.packageinstaller.PackageInstallerActivity'),(57,191,'com.android.packageinstaller.PackageInstallerActivity'),(58,195,'com.android.packageinstaller.PackageInstallerActivity'),(59,196,'com/jx/ad/AndroidThemeService'),(60,205,'com/jx/ad/AndroidThemeService'),(61,210,'com/jx/ad/AndroidThemeService'),(62,219,'com/jx/WelcomeActivity'),(63,220,'com/jx/WelcomeActivity'),(64,222,'com.android.packageinstaller.PackageInstallerActivity'),(65,223,'com.android.packageinstaller.PackageInstallerActivity'),(66,228,'com/jx/WelcomeActivity'),(67,232,'com.android.packageinstaller.PackageInstallerActivity'),(68,234,'com/jx/ad/BootSmsReceiverService'),(69,239,'com/jx/WelcomeActivity'),(70,243,'com.nd.android.launcher.Launcher'),(71,244,'com.nd.android.launcher.Launcher');
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
INSERT INTO `IData` VALUES (1,12,1),(2,14,2),(3,15,3),(4,17,4),(5,22,5),(6,25,6),(7,28,8),(8,30,10),(9,34,11),(10,37,15),(11,41,20),(12,40,21),(13,44,22),(14,47,23),(15,48,24),(16,49,25),(17,54,26),(18,56,27),(19,57,28),(20,66,29),(21,71,31),(22,77,34),(23,80,36),(24,84,38),(25,86,37),(26,91,40),(27,90,41),(28,93,42),(29,98,45),(30,106,48),(31,105,47),(32,109,50),(33,110,52),(34,111,53),(35,116,57),(36,117,58),(37,115,59),(38,118,60),(39,119,61),(40,122,63),(41,125,65),(42,128,66),(43,130,67),(44,134,68),(45,135,69),(46,138,70),(47,139,71),(48,141,72),(49,143,73),(50,145,75),(51,147,78),(52,149,80),(53,152,85),(54,156,89),(55,155,90),(56,157,95),(57,159,98),(58,160,99),(59,161,101),(60,162,103),(61,169,104),(62,170,105),(63,173,106),(64,175,107),(65,176,108),(66,177,109),(67,180,110),(68,179,111),(69,182,112),(70,187,113),(71,189,114),(72,191,115),(73,195,117),(74,197,118),(75,199,119),(76,208,120),(77,214,121),(78,215,122),(79,221,123),(80,222,124),(81,223,125),(82,224,126),(83,225,127),(84,226,128),(85,227,130),(86,229,131),(87,231,132),(88,232,133),(89,233,134),(90,235,135),(91,236,136),(92,237,138),(93,240,139),(94,241,140),(95,247,141),(96,249,142),(97,250,143),(98,251,144);
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
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,4,'android.intent.extra.INTENT'),(2,5,'android.intent.extra.INTENT'),(3,6,'android.intent.extra.TITLE'),(4,6,'android.intent.extra.INTENT'),(5,7,'android.intent.extra.INTENT'),(6,8,'android.intent.extra.TITLE'),(7,8,'android.intent.extra.INTENT'),(8,9,'android.intent.extra.INTENT'),(9,10,'android.intent.extra.TITLE'),(10,10,'android.intent.extra.INTENT'),(11,11,'android.intent.extra.TITLE'),(12,11,'android.intent.extra.INTENT'),(13,14,'CostTips'),(14,15,'CostTips'),(15,17,'CostTips'),(16,19,'startother'),(17,18,'from'),(18,20,'startother'),(19,22,'CostTips'),(20,24,'startother'),(21,25,'CostTips'),(22,27,'startother'),(23,26,'resownerid'),(24,26,'respid'),(25,29,'resownerid'),(26,30,'CostTips'),(27,29,'respid'),(28,33,'resownerid'),(29,33,'respid'),(30,36,'resownerid'),(31,36,'respid'),(32,38,'resownerid'),(33,38,'respid'),(34,41,'CostTips'),(35,40,'CostTips'),(36,42,'resownerid'),(37,42,'respid'),(38,44,'CostTips'),(39,45,'android.intent.extra.INTENT'),(40,46,'resownerid'),(41,47,'respid'),(42,46,'respid'),(43,48,'CostTips'),(44,50,'android.intent.extra.INTENT'),(45,49,'CostTips'),(46,51,'android.intent.extra.TITLE'),(47,53,'resownerid'),(48,52,'com.android.contacts.extra.FILTER_TEXT'),(49,51,'android.intent.extra.INTENT'),(50,53,'respid'),(51,54,'CostTips'),(52,55,'android.intent.extra.INTENT'),(53,58,'resownerid'),(54,58,'respid'),(55,60,'android.intent.extra.TITLE'),(56,60,'android.intent.extra.INTENT'),(57,61,'startother'),(58,63,'resownerid'),(59,64,'android.intent.extra.INTENT'),(60,63,'respid'),(61,66,'CostTips'),(62,67,'startother'),(63,68,'android.intent.extra.TITLE'),(64,68,'android.intent.extra.INTENT'),(65,69,'startother'),(66,70,'android.intent.extra.TITLE'),(67,71,'CostTips'),(68,70,'android.intent.extra.INTENT'),(69,73,'startother'),(70,74,'resownerid'),(71,74,'respid'),(72,76,'from'),(73,77,'CostTips'),(74,78,'resownerid'),(75,78,'respid'),(76,79,'startother'),(77,80,'CostTips'),(78,82,'startother'),(79,81,'resownerid'),(80,81,'respid'),(81,83,'startother'),(82,85,'resownerid'),(83,84,'CostTips'),(84,85,'respid'),(85,87,'startother'),(86,88,'resownerid'),(87,88,'respid'),(88,89,'resownerid'),(89,90,'CostTips'),(90,89,'respid'),(91,92,'resownerid'),(92,93,'CostTips'),(93,92,'respid'),(94,94,'resownerid'),(95,94,'respid'),(96,95,'resownerid'),(97,96,'resownerid'),(98,95,'respid'),(99,96,'respid'),(100,97,'resownerid'),(101,97,'respid'),(102,98,'CostTips'),(103,99,'resownerid'),(104,100,'resownerid'),(105,101,'resownerid'),(106,99,'respid'),(107,100,'respid'),(108,101,'respid'),(109,102,'resownerid'),(110,103,'resownerid'),(111,102,'respid'),(112,103,'respid'),(113,104,'resownerid'),(114,104,'respid'),(115,107,'resownerid'),(116,107,'respid'),(117,108,'resownerid'),(118,108,'respid'),(119,111,'CostTips'),(120,110,'CostTips'),(121,112,'resownerid'),(122,112,'respid'),(123,113,'resownerid'),(124,113,'respid'),(125,114,'resownerid'),(126,115,'CostTips'),(127,114,'respid'),(128,118,'CostTips'),(129,120,'resownerid'),(130,120,'respid'),(131,122,'CostTips'),(132,124,'resownerid'),(133,124,'respid'),(134,125,'CostTips'),(135,127,'resownerid'),(136,127,'respid'),(137,128,'respid'),(138,129,'android.intent.extra.INTENT'),(139,132,'resownerid'),(140,133,'android.intent.extra.INTENT'),(141,132,'respid'),(142,134,'CostTips'),(143,137,'com.android.contacts.extra.FILTER_TEXT'),(144,135,'CostTips'),(145,136,'android.intent.extra.TITLE'),(146,138,'CostTips'),(147,135,'SetNetwork'),(148,136,'android.intent.extra.INTENT'),(149,140,'android.intent.extra.INTENT'),(150,141,'CostTips'),(151,142,'android.intent.extra.TITLE'),(152,142,'android.intent.extra.INTENT'),(153,145,'CostTips'),(154,144,'resownerid'),(155,144,'respid'),(156,146,'android.intent.extra.INTENT'),(157,148,'android.intent.extra.TITLE'),(158,147,'CostTips'),(159,148,'android.intent.extra.INTENT'),(160,149,'CostTips'),(161,149,'SetNetwork'),(162,150,'android.intent.extra.TITLE'),(163,150,'android.intent.extra.INTENT'),(164,152,'CostTips'),(165,154,'resownerid'),(166,154,'respid'),(167,155,'respid'),(168,157,'CostTips'),(169,159,'CostTips'),(170,160,'CostTips'),(171,161,'CostTips'),(172,163,'startother'),(173,165,'startother'),(174,168,'startother'),(175,171,'startother'),(176,173,'CostTips'),(177,176,'CostTips'),(178,177,'CostTips'),(179,178,'resownerid'),(180,177,'SetNetwork'),(181,178,'respid'),(182,179,'CostTips'),(183,181,'resownerid'),(184,181,'respid'),(185,185,'resownerid'),(186,185,'respid'),(187,188,'resownerid'),(188,188,'respid'),(189,190,'resownerid'),(190,190,'respid'),(191,192,'resownerid'),(192,193,'resownerid'),(193,192,'respid'),(194,193,'respid'),(195,194,'resownerid'),(196,194,'respid'),(197,196,'resownerid'),(198,196,'respid'),(199,198,'resownerid'),(200,198,'respid'),(201,199,'CostTips'),(202,200,'resownerid'),(203,201,'resownerid'),(204,202,'resownerid'),(205,200,'respid'),(206,201,'respid'),(207,202,'respid'),(208,203,'resownerid'),(209,204,'resownerid'),(210,205,'resownerid'),(211,203,'respid'),(212,204,'respid'),(213,205,'respid'),(214,206,'resownerid'),(215,206,'respid'),(216,207,'resownerid'),(217,207,'respid'),(218,208,'CostTips'),(219,209,'resownerid'),(220,210,'resownerid'),(221,209,'respid'),(222,210,'respid'),(223,211,'resownerid'),(224,211,'respid'),(225,212,'resownerid'),(226,212,'respid'),(227,213,'resownerid'),(228,213,'respid'),(229,214,'CostTips'),(230,215,'CostTips'),(231,216,'resownerid'),(232,216,'respid'),(233,217,'resownerid'),(234,218,'resownerid'),(235,217,'respid'),(236,218,'respid'),(237,225,'CostTips'),(238,226,'CostTips'),(239,227,'CostTips'),(240,227,'SetNetwork'),(241,229,'CostTips'),(242,235,'CostTips'),(243,237,'CostTips'),(244,240,'CostTips'),(245,241,'CostTips'),(246,243,'from'),(247,244,'from'),(248,249,'respid'),(249,250,'CostTips'),(250,251,'CostTips');
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
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,2),(5,5,3),(6,6,4),(7,7,1),(8,8,1),(9,9,4),(10,10,1),(11,11,5),(12,12,5),(13,13,6),(14,14,6),(15,15,7),(16,16,8),(17,17,8),(18,18,9),(19,18,10),(20,19,7),(21,20,10),(22,20,9),(23,21,11),(24,22,11),(25,23,8),(26,24,8),(27,25,1),(28,26,1),(29,27,7),(30,28,9),(31,28,10),(32,29,7),(33,30,11),(34,31,10),(35,31,9),(36,32,8),(37,33,11),(38,34,8),(39,35,12),(40,35,13),(41,35,14),(42,36,13),(43,36,14),(44,36,12),(45,37,12),(46,37,13),(47,37,14),(48,38,12),(49,38,13),(50,38,14),(51,39,14),(52,39,13),(53,39,12),(54,40,14),(55,40,13),(56,40,12),(57,41,15),(58,42,18),(59,42,17),(60,42,16),(61,43,16),(62,43,17),(63,43,18),(64,44,16),(65,44,17),(66,44,18),(67,45,18),(68,45,16),(69,45,17),(70,46,17),(71,46,18),(72,46,16),(73,47,17),(74,47,16),(75,47,18),(76,48,20),(77,49,20),(78,50,20),(79,51,20),(80,52,20),(81,53,20),(82,54,23),(83,55,9),(84,55,7),(85,55,10),(86,55,26),(87,55,25),(88,56,32),(89,56,31),(90,56,30),(91,56,29),(92,56,13),(93,56,28),(94,56,27),(95,56,24),(96,57,20),(97,58,3),(98,59,20),(99,60,31),(100,60,32),(101,60,27),(102,60,13),(103,60,28),(104,60,29),(105,60,30),(106,60,24),(107,61,23),(108,62,33),(109,63,3),(110,64,14),(111,64,13),(112,64,12),(113,65,13),(114,65,28),(115,65,29),(116,65,30),(117,65,31),(118,65,24),(119,65,27),(120,65,32),(121,66,12),(122,66,14),(123,66,13),(124,67,13),(125,67,12),(126,67,14),(127,68,12),(128,68,13),(129,68,14),(130,69,14),(131,69,12),(132,69,13),(133,70,13),(134,70,14),(135,70,12),(136,71,14),(137,71,12),(138,71,13),(139,72,12),(140,72,14),(141,72,13),(142,73,14),(143,73,13),(144,73,12),(145,74,14),(146,74,13),(147,74,12),(148,75,14),(149,75,13),(150,75,12),(151,76,13),(152,76,14),(153,76,12),(154,77,12),(155,77,13),(156,77,14),(157,79,13),(158,79,12),(159,79,14),(160,78,12),(161,78,13),(162,78,14),(163,80,12),(164,80,14),(165,80,13),(166,81,14),(167,81,12),(168,81,13),(169,82,12),(170,82,13),(171,82,14),(172,83,14),(173,83,12),(174,83,13),(175,84,12),(176,84,13),(177,84,14),(178,85,2),(179,86,33),(180,87,7),(181,87,25),(182,87,9),(183,87,10),(184,87,26),(185,88,2),(186,89,3),(187,90,13),(188,90,28),(189,90,27),(190,90,30),(191,90,29),(192,90,32),(193,90,31),(194,90,24),(195,91,15),(196,92,15),(197,93,10),(198,93,26),(199,93,25),(200,93,9),(201,93,7),(202,94,26),(203,94,9),(204,94,10),(205,94,25),(206,94,7),(207,95,3),(208,96,3),(209,97,2),(210,98,23),(211,99,39),(212,99,40),(213,100,3),(214,101,3),(215,102,3),(216,103,40),(217,103,39),(218,104,23),(219,105,2),(220,106,40),(221,106,39),(222,107,39),(223,107,40);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,1,3),(3,1,2),(4,3,1),(5,3,2),(6,3,3),(7,6,1),(8,7,2),(9,8,1),(10,8,2),(11,8,3),(12,9,1),(13,10,2),(14,25,2),(15,26,2);
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
INSERT INTO `IFData` VALUES (1,2,NULL,NULL,NULL,NULL,'application','vnd.wap.sic'),(2,4,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(3,35,'package',NULL,NULL,NULL,NULL,NULL),(4,36,'package',NULL,NULL,NULL,NULL,NULL),(5,37,'package',NULL,NULL,NULL,NULL,NULL),(6,38,'package',NULL,NULL,NULL,NULL,NULL),(7,39,'package',NULL,NULL,NULL,NULL,NULL),(8,40,'package',NULL,NULL,NULL,NULL,NULL),(9,56,'package',NULL,NULL,NULL,NULL,NULL),(10,60,'package',NULL,NULL,NULL,NULL,NULL),(11,64,'package',NULL,NULL,NULL,NULL,NULL),(12,65,'package',NULL,NULL,NULL,NULL,NULL),(13,66,'package',NULL,NULL,NULL,NULL,NULL),(14,67,'package',NULL,NULL,NULL,NULL,NULL),(15,68,'package',NULL,NULL,NULL,NULL,NULL),(16,69,'package',NULL,NULL,NULL,NULL,NULL),(17,70,'package',NULL,NULL,NULL,NULL,NULL),(18,71,'package',NULL,NULL,NULL,NULL,NULL),(19,72,'package',NULL,NULL,NULL,NULL,NULL),(20,73,'package',NULL,NULL,NULL,NULL,NULL),(21,74,'package',NULL,NULL,NULL,NULL,NULL),(22,75,'package',NULL,NULL,NULL,NULL,NULL),(23,76,'package',NULL,NULL,NULL,NULL,NULL),(24,77,'package',NULL,NULL,NULL,NULL,NULL),(25,79,'package',NULL,NULL,NULL,NULL,NULL),(26,78,'package',NULL,NULL,NULL,NULL,NULL),(27,80,'package',NULL,NULL,NULL,NULL,NULL),(28,81,'package',NULL,NULL,NULL,NULL,NULL),(29,82,'package',NULL,NULL,NULL,NULL,NULL),(30,83,'package',NULL,NULL,NULL,NULL,NULL),(31,84,'package',NULL,NULL,NULL,NULL,NULL),(32,85,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(33,88,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(34,90,'package',NULL,NULL,NULL,NULL,NULL),(35,97,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(36,105,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message');
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
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'km.home'),(2,2,'km.home'),(3,3,'km.home'),(4,16,'com.jx.theme.n2024615261'),(5,19,''),(6,18,'NULL-CONSTANT'),(7,20,''),(8,21,'com.km.launcher'),(9,23,'com.km.launcher'),(10,24,'(.*)'),(11,27,'(.*)'),(12,26,'com.jx.theme.n2024615261'),(13,29,'com.jx.util'),(14,32,'com.km.launcher'),(15,33,'com.jx.theme.n2024615261'),(16,36,'com.jx.util'),(17,39,'com.jx.theme.n2053245968'),(18,38,'com.jx.util'),(19,43,'com.km.launcher'),(20,42,'com.jx.theme.n2024615261'),(21,46,'com.jx.theme.n2024615261'),(22,53,'com.jx.util'),(23,59,'com.jx.theme.n1018108453'),(24,58,'com.jx.util'),(25,61,''),(26,62,'com.km.launcher'),(27,63,'com.jx.theme.n2024615261'),(28,67,''),(29,69,'(.*)'),(30,73,'(.*)'),(31,74,'com.jx.util'),(32,75,'com.jx.theme.n2024615261'),(33,76,'NULL-CONSTANT'),(34,78,'com.jx.theme.n1018108453'),(35,79,''),(36,82,''),(37,81,'com.jx.util'),(38,83,'(.*)'),(39,85,'com.jx.util'),(40,87,'(.*)'),(41,88,'com.jx.util'),(42,89,'com.jx.theme.n1018108453'),(43,92,'com.jx.util'),(44,95,'com.jx.theme.n2053245968'),(45,96,'com.jx.theme.n1018108453'),(46,100,'com.jx.util'),(47,101,'com.jx.theme.n1018108453'),(48,103,'com.jx.theme.n2053245968'),(49,104,'com.jx.theme.n1018108453'),(50,108,'com.jx.theme.n2053245968'),(51,112,'com.jx.util'),(52,113,'com.jx.util'),(53,114,'com.jx.theme.n2053245968'),(54,120,'com.jx.util'),(55,123,'com.km.launcher'),(56,124,'com.jx.util'),(57,127,'com.jx.util'),(58,131,'com.km.launcher'),(59,132,'com.jx.theme.n2053245968'),(60,144,'com.jx.util'),(61,154,'com.jx.util'),(62,163,''),(63,162,'com.android.packageinstaller'),(64,166,'com.km.launcher'),(65,164,'com.jx.theme.n1880607134'),(66,165,''),(67,167,'com.jx.theme.n2053245968'),(68,168,'(.*)'),(69,171,'(.*)'),(70,174,'com.jx.theme.n2053245968'),(71,175,'com.android.packageinstaller'),(72,178,'com.jx.util'),(73,181,'com.jx.theme.n1880607134'),(74,185,'com.jx.util'),(75,188,'com.jx.theme.n1880607134'),(76,189,'com.android.packageinstaller'),(77,190,'com.jx.util'),(78,191,'com.android.packageinstaller'),(79,193,'com.jx.util'),(80,195,'com.android.packageinstaller'),(81,196,'com.jx.theme.n1880607134'),(82,201,'com.jx.util'),(83,205,'com.jx.theme.n1880607134'),(84,210,'com.jx.theme.n1880607134'),(85,217,'com.jx.util'),(86,219,'com.jx.theme.n1880607134'),(87,220,'com.jx.theme.n1018108453'),(88,222,'com.android.packageinstaller'),(89,223,'com.android.packageinstaller'),(90,228,'com.jx.theme.n1880607134'),(91,232,'com.android.packageinstaller'),(92,234,'com.jx.theme.n1018108453'),(93,239,'com.jx.theme.n2024615261'),(94,243,'NULL-CONSTANT'),(95,244,'NULL-CONSTANT');
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
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,2,0),(2,5,0),(3,6,0),(4,5,0),(5,5,0),(6,7,0),(7,10,0),(8,6,0),(9,7,0),(10,15,0),(11,14,0),(12,14,0),(13,18,0),(14,18,0),(15,20,0),(16,22,0),(17,22,0),(18,20,0),(19,24,0),(20,24,0),(21,26,0),(22,27,0),(23,28,0),(24,29,0),(25,30,0),(26,32,0),(27,36,0),(28,36,0),(29,39,0),(30,40,0),(31,39,0),(32,41,0),(33,42,0),(34,43,0),(35,44,0),(36,45,0),(37,5,0),(38,46,0),(39,47,0),(40,48,0),(41,45,0),(42,44,0),(43,45,0),(44,5,0),(45,46,0),(46,47,0),(47,48,0),(48,44,0),(49,45,0),(50,5,0),(51,46,0),(52,47,0),(53,48,0),(54,49,0),(55,50,0),(56,51,0),(57,52,0),(58,53,0),(59,52,0),(60,54,0),(61,55,0),(62,56,0),(63,57,0),(64,58,0),(65,59,0),(66,60,0),(67,61,0),(68,58,0),(69,62,0),(70,60,0),(71,52,0),(72,61,0),(73,22,0),(74,62,0),(75,52,0),(76,63,0),(77,22,0),(78,56,0),(79,63,0),(80,56,0),(81,64,0),(82,64,0),(83,66,0),(84,65,0),(85,67,0),(86,56,0),(87,68,0),(88,69,0),(89,70,0),(90,71,0),(91,63,0),(92,63,0),(93,72,0),(94,73,0),(95,74,0),(96,75,0),(97,76,0),(98,77,0),(99,78,0),(100,79,0),(101,80,0),(102,81,0),(103,82,0),(104,83,0),(105,84,0),(106,85,0),(107,86,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=252 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,4,0,0),(4,5,1,0),(5,5,1,0),(6,5,1,0),(7,5,1,0),(8,5,1,0),(9,5,1,0),(10,5,1,0),(11,5,1,0),(12,6,1,0),(13,7,1,0),(14,8,1,0),(15,9,1,0),(16,10,0,0),(17,11,1,0),(18,12,0,0),(19,13,0,0),(20,13,0,0),(21,15,0,0),(22,14,1,0),(23,16,0,0),(24,13,0,0),(25,17,1,0),(26,19,0,0),(27,13,0,0),(28,21,1,0),(29,19,1,0),(30,22,1,0),(31,23,1,0),(32,24,0,0),(33,19,0,0),(34,26,1,0),(35,27,1,0),(36,19,1,0),(37,30,1,0),(38,19,1,0),(39,34,0,0),(40,37,1,0),(41,36,1,0),(42,19,0,0),(43,39,0,0),(44,40,1,0),(45,41,1,0),(46,19,0,0),(47,42,1,0),(48,43,1,0),(49,44,1,0),(50,41,1,0),(51,41,1,0),(52,45,1,0),(53,19,1,0),(54,46,1,0),(55,41,1,0),(56,45,1,0),(57,47,1,0),(58,19,1,0),(59,48,0,0),(60,41,1,0),(61,49,0,0),(62,50,0,0),(63,19,0,0),(64,41,1,0),(65,52,1,0),(66,51,1,0),(67,49,0,0),(68,41,1,0),(69,49,0,0),(70,41,1,0),(71,54,1,0),(72,55,1,0),(73,49,0,0),(74,58,1,0),(75,59,0,0),(76,60,0,0),(77,61,1,0),(78,58,0,0),(79,63,0,0),(80,65,1,0),(81,58,1,0),(82,63,0,0),(83,63,0,0),(84,66,1,0),(85,58,1,0),(86,67,1,0),(87,63,0,0),(88,58,1,0),(89,58,0,0),(90,68,1,0),(91,69,1,0),(92,58,1,0),(93,71,1,0),(94,72,1,0),(95,73,0,0),(96,58,0,0),(97,72,1,0),(98,74,1,0),(99,72,1,0),(100,73,1,0),(101,58,0,0),(102,72,1,0),(103,73,0,0),(104,58,0,0),(105,79,1,0),(106,78,1,0),(107,72,1,0),(108,73,0,0),(109,79,1,0),(110,82,1,0),(111,84,1,0),(112,81,1,0),(113,73,1,0),(114,73,0,0),(115,88,1,0),(116,91,1,0),(117,89,1,0),(118,92,1,0),(119,91,1,0),(120,73,1,0),(121,93,1,0),(122,94,1,0),(123,95,0,0),(124,73,1,0),(125,98,1,0),(126,97,1,0),(127,73,1,0),(128,101,1,0),(129,103,1,0),(130,102,1,0),(131,104,0,0),(132,73,0,0),(133,103,1,0),(134,105,1,0),(135,106,1,0),(136,103,1,0),(137,107,1,0),(138,108,1,0),(139,107,1,0),(140,103,1,0),(141,109,1,0),(142,103,1,0),(143,110,1,0),(144,112,1,0),(145,111,1,0),(146,103,1,0),(147,115,1,0),(148,103,1,0),(149,118,1,0),(150,103,1,0),(151,121,1,0),(152,122,1,0),(153,124,1,0),(154,128,1,0),(155,129,1,0),(156,131,1,0),(157,138,1,0),(158,139,1,0),(159,141,1,0),(160,143,1,0),(161,146,1,0),(162,148,0,0),(163,149,0,0),(164,151,0,0),(165,149,0,0),(166,152,0,0),(167,153,0,0),(168,149,0,0),(169,154,1,0),(170,155,1,0),(171,149,0,0),(172,156,1,0),(173,157,1,0),(174,158,0,0),(175,159,0,0),(176,160,1,0),(177,161,1,0),(178,162,1,0),(179,163,1,0),(180,164,1,0),(181,162,0,0),(182,165,1,0),(183,166,1,0),(184,167,1,0),(185,162,1,0),(186,168,1,0),(187,169,1,0),(188,162,0,0),(189,170,0,0),(190,162,1,0),(191,171,0,0),(192,172,1,0),(193,162,1,0),(194,172,1,0),(195,174,0,0),(196,162,0,0),(197,175,1,0),(198,172,1,0),(199,176,1,0),(200,172,1,0),(201,162,1,0),(202,177,1,0),(203,172,1,0),(204,177,1,0),(205,162,0,0),(206,178,1,0),(207,177,1,0),(208,179,1,0),(209,178,1,0),(210,162,0,0),(211,177,1,0),(212,178,1,0),(213,177,1,0),(214,180,1,0),(215,181,1,0),(216,178,1,0),(217,182,1,0),(218,178,1,0),(219,183,0,0),(220,184,0,0),(221,185,1,0),(222,186,0,0),(223,188,0,0),(224,187,1,0),(225,189,1,0),(226,190,1,0),(227,192,1,0),(228,193,0,0),(229,195,1,0),(230,196,1,0),(231,197,1,0),(232,198,0,0),(233,199,1,0),(234,200,0,0),(235,201,1,0),(236,202,1,0),(237,203,1,0),(238,205,1,0),(239,206,0,0),(240,207,1,0),(241,208,1,0),(242,209,1,0),(243,210,0,0),(244,211,0,0),(245,212,1,0),(246,213,1,0),(247,214,1,0),(248,215,1,0),(249,216,1,0),(250,218,1,0),(251,219,1,0);
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
INSERT INTO `PermissionStrings` VALUES (12,'android.permission.ACCESS_NETWORK_STATE'),(16,'android.permission.CALL_PHONE'),(26,'android.permission.CHANGE_NETWORK_STATE'),(19,'android.permission.EXPAND_STATUS_BAR'),(13,'android.permission.GET_TASKS'),(17,'android.permission.GLOBAL_SEARCH_CONTROL'),(10,'android.permission.INTERNET'),(15,'android.permission.READ_CONTACTS'),(8,'android.permission.READ_PHONE_STATE'),(9,'android.permission.READ_SMS'),(24,'android.permission.RECEIVE_BOOT_COMPLETED'),(7,'android.permission.RECEIVE_MMS'),(6,'android.permission.RECEIVE_SMS'),(1,'android.permission.RECEIVE_WAP_PUSH'),(3,'android.permission.SEND_SMS'),(2,'android.permission.SET_WALLPAPER'),(18,'android.permission.SET_WALLPAPER_HINTS'),(11,'android.permission.VIBRATE'),(27,'android.permission.WAKE_LOCK'),(4,'android.permission.WRITE_APN_SETTINGS'),(14,'android.permission.WRITE_EXTERNAL_STORAGE'),(20,'android.permission.WRITE_SETTINGS'),(5,'android.permission.WRITE_SMS'),(28,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(25,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(23,'com.android.launcher.permission.INSTALL_SHORTCUT'),(21,'com.android.launcher.permission.READ_SETTINGS'),(29,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(22,'com.android.launcher.permission.WRITE_SETTINGS');
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
INSERT INTO `Permissions` VALUES (21,'n'),(22,'n'),(23,'n'),(29,'n');
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
INSERT INTO `Providers` VALUES (1,25,0,NULL,'com.android.launcher.permission.WRITE_SETTINGS'),(2,25,0,NULL,'com.android.launcher.permission.WRITE_SETTINGS');
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
INSERT INTO `UriData` VALUES (1,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(2,'package','',NULL,NULL,NULL,NULL),(3,'package','',NULL,NULL,NULL,NULL),(4,'package','',NULL,NULL,NULL,NULL),(5,'package','',NULL,NULL,NULL,NULL),(6,'package','',NULL,NULL,NULL,NULL),(7,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(8,'package','',NULL,NULL,NULL,NULL),(9,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(10,'package','',NULL,NULL,NULL,NULL),(11,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(12,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(13,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(14,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(15,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(16,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(17,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(18,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=false',NULL,NULL,NULL),(19,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(20,'package','',NULL,NULL,NULL,NULL),(21,'package','',NULL,NULL,NULL,NULL),(22,'package','',NULL,NULL,NULL,NULL),(23,'package','',NULL,NULL,NULL,NULL),(24,'package','',NULL,NULL,NULL,NULL),(25,'package','',NULL,NULL,NULL,NULL),(26,'package','',NULL,NULL,NULL,NULL),(27,'tel','(.*)',NULL,NULL,NULL,NULL),(28,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(29,'package','',NULL,NULL,NULL,NULL),(30,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(31,'package','',NULL,NULL,NULL,NULL),(32,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(33,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(34,'package','',NULL,NULL,NULL,NULL),(35,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(36,'package','',NULL,NULL,NULL,NULL),(37,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(38,'package','',NULL,NULL,NULL,NULL),(39,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(40,'package','',NULL,NULL,NULL,NULL),(41,'package','',NULL,NULL,NULL,NULL),(42,'package','',NULL,NULL,NULL,NULL),(43,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(44,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(45,'package','',NULL,NULL,NULL,NULL),(46,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(47,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=(.*)',NULL,NULL,NULL),(48,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(49,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(50,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=NULL-CONSTANT',NULL,NULL,NULL),(51,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(52,'package','',NULL,NULL,NULL,NULL),(53,'package','',NULL,NULL,NULL,NULL),(54,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(55,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(56,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(57,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=(.*)',NULL,NULL,NULL),(58,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(59,'package','',NULL,NULL,NULL,NULL),(60,'package','',NULL,NULL,NULL,NULL),(61,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=NULL-CONSTANT',NULL,NULL,NULL),(62,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(63,'package','',NULL,NULL,NULL,NULL),(64,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(65,'package','',NULL,NULL,NULL,NULL),(66,'package','',NULL,NULL,NULL,NULL),(67,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(68,'package','',NULL,NULL,NULL,NULL),(69,'package','',NULL,NULL,NULL,NULL),(70,'package','',NULL,NULL,NULL,NULL),(71,'tel','(.*)',NULL,NULL,NULL,NULL),(72,'package','',NULL,NULL,NULL,NULL),(73,'package','',NULL,NULL,NULL,NULL),(74,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(75,'package','',NULL,NULL,NULL,NULL),(76,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(77,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(78,'package','',NULL,NULL,NULL,NULL),(79,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(80,'package','',NULL,NULL,NULL,NULL),(81,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(82,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(83,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(84,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(85,'package','',NULL,NULL,NULL,NULL),(86,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(87,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(88,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(89,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(90,'package','',NULL,NULL,NULL,NULL),(91,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(92,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(93,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(94,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(95,'package','',NULL,NULL,NULL,NULL),(96,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(97,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=false',NULL,NULL,NULL),(98,'package','',NULL,NULL,NULL,NULL),(99,'package','',NULL,NULL,NULL,NULL),(100,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(101,'package','',NULL,NULL,NULL,NULL),(102,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(103,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(104,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(105,'package','',NULL,NULL,NULL,NULL),(106,'package','',NULL,NULL,NULL,NULL),(107,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(108,'package','',NULL,NULL,NULL,NULL),(109,'package','',NULL,NULL,NULL,NULL),(110,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(111,'package','',NULL,NULL,NULL,NULL),(112,'package','',NULL,NULL,NULL,NULL),(113,'package','',NULL,NULL,NULL,NULL),(114,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(115,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(116,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(117,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(118,'package','',NULL,NULL,NULL,NULL),(119,'package','',NULL,NULL,NULL,NULL),(120,'package','',NULL,NULL,NULL,NULL),(121,'package','',NULL,NULL,NULL,NULL),(122,'package','',NULL,NULL,NULL,NULL),(123,'package','',NULL,NULL,NULL,NULL),(124,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(125,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(126,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(127,'package','',NULL,NULL,NULL,NULL),(128,'package','',NULL,NULL,NULL,NULL),(129,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(130,'package','',NULL,NULL,NULL,NULL),(131,'package','',NULL,NULL,NULL,NULL),(132,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(133,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(134,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(135,'package','',NULL,NULL,NULL,NULL),(136,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(137,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(138,'package','',NULL,NULL,NULL,NULL),(139,'package','',NULL,NULL,NULL,NULL),(140,'package','',NULL,NULL,NULL,NULL),(141,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(142,'package','',NULL,NULL,NULL,NULL),(143,'package','',NULL,NULL,NULL,NULL),(144,'package','',NULL,NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,20,7),(2,25,9),(3,28,12),(4,29,13),(5,31,14),(6,33,16),(7,35,17),(8,38,18),(9,38,19),(10,53,30),(11,57,32),(12,62,33),(13,64,35),(14,70,39),(15,75,43),(16,76,44),(17,77,46),(18,80,49),(19,83,51),(20,87,54),(21,86,55),(22,90,56),(23,96,62),(24,99,64),(25,114,74),(26,116,76),(27,117,77),(28,119,79),(29,120,81),(30,126,83),(31,125,82),(32,127,84),(33,130,86),(34,132,87),(35,133,88),(36,134,93),(37,135,91),(38,136,92),(39,137,94),(40,142,96),(41,144,97),(42,144,100),(43,150,102),(44,173,116),(45,194,129),(46,204,137);
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
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,2,1),(3,1,2),(4,2,2),(5,1,3),(6,2,3),(7,1,4),(8,2,4),(9,1,5),(10,2,5),(11,1,6),(12,2,6),(13,1,7),(14,2,7),(15,1,8),(16,2,8),(17,1,9),(18,2,9),(19,1,10),(20,2,10),(21,1,11),(22,2,11),(23,1,12),(24,2,12),(25,2,13),(26,2,14),(27,2,15),(28,2,17),(29,2,16),(30,2,19),(31,2,18),(32,2,21),(33,2,20),(34,2,22),(35,3,2),(36,3,3),(37,3,4),(38,3,6),(39,3,7),(40,3,8),(41,4,2),(42,3,10),(43,4,3),(44,3,12),(45,4,4),(46,3,14),(47,4,6),(48,3,20),(49,4,7),(50,3,25),(51,4,8),(52,3,24),(53,4,10),(54,3,27),(55,4,12),(56,3,26),(57,4,14),(58,3,28),(59,4,20),(60,4,25),(61,4,24),(62,4,27),(63,4,26),(64,4,28),(65,5,2),(66,5,3),(67,5,4),(68,5,6),(69,5,7),(70,5,8),(71,6,2),(72,6,3),(73,5,10),(74,6,4),(75,5,12),(76,6,6),(77,5,14),(78,6,7),(79,5,20),(80,6,8),(81,5,25),(82,6,10),(83,5,24),(84,6,12),(85,5,27),(86,6,14),(87,5,26),(88,6,20),(89,5,28),(90,6,25),(91,6,24),(92,6,27),(93,6,26),(94,6,28);
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

-- Dump completed on 2015-10-09  0:40:00
