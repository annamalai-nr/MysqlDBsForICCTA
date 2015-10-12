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
) ENGINE=InnoDB AUTO_INCREMENT=4045 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,2,2,2,NULL),(2,4,2,2,NULL),(3,5,2,2,NULL),(4,6,2,2,NULL),(5,7,2,2,NULL),(6,8,2,2,NULL),(7,9,2,2,NULL),(8,10,2,2,NULL),(9,11,2,2,NULL),(10,4,5,2,NULL),(11,5,5,2,NULL),(12,6,5,2,NULL),(13,7,5,2,NULL),(14,8,5,2,NULL),(15,9,5,2,NULL),(16,10,5,2,NULL),(17,11,5,2,NULL),(18,4,44,2,NULL),(19,5,44,2,NULL),(20,6,44,2,NULL),(21,7,44,2,NULL),(22,8,44,2,NULL),(23,9,44,2,NULL),(24,10,44,2,NULL),(25,11,44,2,NULL),(26,4,45,2,NULL),(27,5,45,2,NULL),(28,6,45,2,NULL),(29,7,45,2,NULL),(30,8,45,2,NULL),(31,9,45,2,NULL),(32,10,45,2,NULL),(33,11,45,2,NULL),(34,4,46,2,NULL),(35,5,46,2,NULL),(36,6,46,2,NULL),(37,7,46,2,NULL),(38,8,46,2,NULL),(39,9,46,2,NULL),(40,10,46,2,NULL),(41,11,46,2,NULL),(42,4,47,2,NULL),(43,5,47,2,NULL),(44,6,47,2,NULL),(45,7,47,2,NULL),(46,8,47,2,NULL),(47,9,47,2,NULL),(48,10,47,2,NULL),(49,11,47,2,NULL),(50,4,48,2,NULL),(51,5,48,2,NULL),(52,6,48,2,NULL),(53,7,48,2,NULL),(54,8,48,2,NULL),(55,9,48,2,NULL),(56,10,48,2,NULL),(57,11,48,2,NULL),(58,4,6,2,NULL),(59,5,6,2,NULL),(60,6,6,2,NULL),(61,7,6,2,NULL),(62,8,6,2,NULL),(63,9,6,2,NULL),(64,10,6,2,NULL),(65,11,6,2,NULL),(66,4,7,2,NULL),(67,5,7,2,NULL),(68,6,7,2,NULL),(69,7,7,2,NULL),(70,8,7,2,NULL),(71,9,7,2,NULL),(72,10,7,2,NULL),(73,11,7,2,NULL),(74,4,14,2,NULL),(75,5,14,2,NULL),(76,6,14,2,NULL),(77,7,14,2,NULL),(78,8,14,2,NULL),(79,9,14,2,NULL),(80,10,14,2,NULL),(81,11,14,2,NULL),(82,4,18,2,NULL),(83,5,18,2,NULL),(84,6,18,2,NULL),(85,7,18,2,NULL),(86,8,18,2,NULL),(87,9,18,2,NULL),(88,10,18,2,NULL),(89,11,18,2,NULL),(90,4,22,2,NULL),(91,5,22,2,NULL),(92,6,22,2,NULL),(93,7,22,2,NULL),(94,8,22,2,NULL),(95,9,22,2,NULL),(96,10,22,2,NULL),(97,11,22,2,NULL),(98,4,52,2,NULL),(99,5,52,2,NULL),(100,6,52,2,NULL),(101,7,52,2,NULL),(102,8,52,2,NULL),(103,9,52,2,NULL),(104,10,52,2,NULL),(105,11,52,2,NULL),(106,4,56,2,NULL),(107,5,56,2,NULL),(108,6,56,2,NULL),(109,7,56,2,NULL),(110,8,56,2,NULL),(111,9,56,2,NULL),(112,10,56,2,NULL),(113,11,56,2,NULL),(114,4,63,2,NULL),(115,5,63,2,NULL),(116,6,63,2,NULL),(117,7,63,2,NULL),(118,8,63,2,NULL),(119,9,63,2,NULL),(120,10,63,2,NULL),(121,11,63,2,NULL),(122,4,10,2,NULL),(123,5,10,2,NULL),(124,6,10,2,NULL),(125,7,10,2,NULL),(126,8,10,2,NULL),(127,9,10,2,NULL),(128,10,10,2,NULL),(129,11,10,2,NULL),(130,4,20,2,NULL),(131,5,20,2,NULL),(132,6,20,2,NULL),(133,7,20,2,NULL),(134,8,20,2,NULL),(135,9,20,2,NULL),(136,10,20,2,NULL),(137,11,20,2,NULL),(138,4,26,2,NULL),(139,5,26,2,NULL),(140,6,26,2,NULL),(141,7,26,2,NULL),(142,8,26,2,NULL),(143,9,26,2,NULL),(144,10,26,2,NULL),(145,11,26,2,NULL),(146,4,28,2,NULL),(147,5,28,2,NULL),(148,6,28,2,NULL),(149,7,28,2,NULL),(150,8,28,2,NULL),(151,9,28,2,NULL),(152,10,28,2,NULL),(153,11,28,2,NULL),(154,4,49,2,NULL),(155,5,49,2,NULL),(156,6,49,2,NULL),(157,7,49,2,NULL),(158,8,49,2,NULL),(159,9,49,2,NULL),(160,10,49,2,NULL),(161,11,49,2,NULL),(162,4,50,2,NULL),(163,5,50,2,NULL),(164,6,50,2,NULL),(165,7,50,2,NULL),(166,8,50,2,NULL),(167,9,50,2,NULL),(168,10,50,2,NULL),(169,11,50,2,NULL),(170,4,57,2,NULL),(171,5,57,2,NULL),(172,6,57,2,NULL),(173,7,57,2,NULL),(174,8,57,2,NULL),(175,9,57,2,NULL),(176,10,57,2,NULL),(177,11,57,2,NULL),(178,4,70,2,NULL),(179,5,70,2,NULL),(180,6,70,2,NULL),(181,7,70,2,NULL),(182,8,70,2,NULL),(183,9,70,2,NULL),(184,10,70,2,NULL),(185,11,70,2,NULL),(186,4,85,2,NULL),(187,5,85,2,NULL),(188,6,85,2,NULL),(189,7,85,2,NULL),(190,8,85,2,NULL),(191,9,85,2,NULL),(192,10,85,2,NULL),(193,11,85,2,NULL),(194,16,16,2,NULL),(195,4,15,2,NULL),(196,16,21,2,NULL),(197,5,15,2,NULL),(198,16,33,2,NULL),(199,6,15,2,NULL),(200,16,37,2,NULL),(201,7,15,2,NULL),(202,26,20,2,NULL),(203,8,15,2,NULL),(204,26,24,2,NULL),(205,9,15,2,NULL),(206,26,36,2,NULL),(207,10,15,2,NULL),(208,26,39,2,NULL),(209,11,15,2,NULL),(210,33,20,2,NULL),(211,4,24,2,NULL),(212,33,24,2,NULL),(213,5,24,2,NULL),(214,33,36,2,NULL),(215,6,24,2,NULL),(216,33,39,2,NULL),(217,7,24,2,NULL),(218,42,20,2,NULL),(219,8,24,2,NULL),(220,42,24,2,NULL),(221,9,24,2,NULL),(222,42,36,2,NULL),(223,10,24,2,NULL),(224,42,39,2,NULL),(225,11,24,2,NULL),(226,46,20,2,NULL),(227,4,27,2,NULL),(228,46,24,2,NULL),(229,5,27,2,NULL),(230,46,36,2,NULL),(231,6,27,2,NULL),(232,46,39,2,NULL),(233,7,27,2,NULL),(234,63,20,2,NULL),(235,8,27,2,NULL),(236,63,24,2,NULL),(237,9,27,2,NULL),(238,63,36,2,NULL),(239,10,27,2,NULL),(240,63,39,2,NULL),(241,11,27,2,NULL),(242,239,16,2,NULL),(243,4,29,2,NULL),(244,239,21,2,NULL),(245,5,29,2,NULL),(246,239,33,2,NULL),(247,6,29,2,NULL),(248,239,37,2,NULL),(249,7,29,2,NULL),(250,8,29,2,NULL),(251,29,2,2,NULL),(252,9,29,2,NULL),(253,36,2,2,NULL),(254,10,29,2,NULL),(255,38,2,2,NULL),(256,11,29,2,NULL),(257,53,2,2,NULL),(258,4,68,2,NULL),(259,58,2,2,NULL),(260,5,68,2,NULL),(261,121,2,2,NULL),(262,6,68,2,NULL),(263,184,2,2,NULL),(264,7,68,2,NULL),(265,202,2,2,NULL),(266,8,68,2,NULL),(267,204,2,2,NULL),(268,9,68,2,NULL),(269,207,2,2,NULL),(270,10,68,2,NULL),(271,211,2,2,NULL),(272,11,68,2,NULL),(273,213,2,2,NULL),(274,4,74,2,NULL),(275,29,5,2,NULL),(276,5,74,2,NULL),(277,36,5,2,NULL),(278,6,74,2,NULL),(279,38,5,2,NULL),(280,7,74,2,NULL),(281,53,5,2,NULL),(282,8,74,2,NULL),(283,58,5,2,NULL),(284,9,74,2,NULL),(285,121,5,2,NULL),(286,10,74,2,NULL),(287,184,5,2,NULL),(288,11,74,2,NULL),(289,202,5,2,NULL),(290,4,75,2,NULL),(291,204,5,2,NULL),(292,5,75,2,NULL),(293,207,5,2,NULL),(294,6,75,2,NULL),(295,21,8,2,NULL),(296,211,5,2,NULL),(297,7,75,2,NULL),(298,62,8,2,NULL),(299,213,5,2,NULL),(300,8,75,2,NULL),(301,45,2,2,NULL),(302,29,44,2,NULL),(303,9,75,2,NULL),(304,50,2,2,NULL),(305,36,44,2,NULL),(306,10,75,2,NULL),(307,38,44,2,NULL),(308,51,2,2,NULL),(309,11,75,2,NULL),(310,53,44,2,NULL),(311,55,2,2,NULL),(312,4,77,2,NULL),(313,58,44,2,NULL),(314,60,2,2,NULL),(315,5,77,2,NULL),(316,121,44,2,NULL),(317,64,2,2,NULL),(318,6,77,2,NULL),(319,184,44,2,NULL),(320,68,2,2,NULL),(321,7,77,2,NULL),(322,202,44,2,NULL),(323,70,2,2,NULL),(324,8,77,2,NULL),(325,204,44,2,NULL),(326,52,2,2,NULL),(327,9,77,2,NULL),(328,207,44,2,NULL),(329,129,2,2,NULL),(330,10,77,2,NULL),(331,211,44,2,NULL),(332,133,2,2,NULL),(333,11,77,2,NULL),(334,213,44,2,NULL),(335,136,2,2,NULL),(336,4,82,2,NULL),(337,29,45,2,NULL),(338,140,2,2,NULL),(339,5,82,2,NULL),(340,36,45,2,NULL),(341,142,2,2,NULL),(342,6,82,2,NULL),(343,38,45,2,NULL),(344,146,2,2,NULL),(345,7,82,2,NULL),(346,53,45,2,NULL),(347,148,2,2,NULL),(348,8,82,2,NULL),(349,58,45,2,NULL),(350,150,2,2,NULL),(351,9,82,2,NULL),(352,121,45,2,NULL),(353,137,2,2,NULL),(354,10,82,2,NULL),(355,184,45,2,NULL),(356,45,5,2,NULL),(357,11,82,2,NULL),(358,202,45,2,NULL),(359,50,5,2,NULL),(360,4,30,2,NULL),(361,204,45,2,NULL),(362,51,5,2,NULL),(363,5,30,2,NULL),(364,207,45,2,NULL),(365,55,5,2,NULL),(366,6,30,2,NULL),(367,211,45,2,NULL),(368,60,5,2,NULL),(369,7,30,2,NULL),(370,213,45,2,NULL),(371,64,5,2,NULL),(372,8,30,2,NULL),(373,29,46,2,NULL),(374,68,5,2,NULL),(375,9,30,2,NULL),(376,36,46,2,NULL),(377,70,5,2,NULL),(378,10,30,2,NULL),(379,38,46,2,NULL),(380,52,5,2,NULL),(381,11,30,2,NULL),(382,53,46,2,NULL),(383,129,5,2,NULL),(384,4,36,2,NULL),(385,58,46,2,NULL),(386,133,5,2,NULL),(387,5,36,2,NULL),(388,121,46,2,NULL),(389,136,5,2,NULL),(390,6,36,2,NULL),(391,184,46,2,NULL),(392,140,5,2,NULL),(393,7,36,2,NULL),(394,202,46,2,NULL),(395,142,5,2,NULL),(396,8,36,2,NULL),(397,204,46,2,NULL),(398,146,5,2,NULL),(399,9,36,2,NULL),(400,207,46,2,NULL),(401,148,5,2,NULL),(402,10,36,2,NULL),(403,211,46,2,NULL),(404,150,5,2,NULL),(405,11,36,2,NULL),(406,213,46,2,NULL),(407,137,5,2,NULL),(408,4,40,2,NULL),(409,29,47,2,NULL),(410,45,44,2,NULL),(411,5,40,2,NULL),(412,36,47,2,NULL),(413,50,44,2,NULL),(414,6,40,2,NULL),(415,38,47,2,NULL),(416,51,44,2,NULL),(417,7,40,2,NULL),(418,53,47,2,NULL),(419,55,44,2,NULL),(420,8,40,2,NULL),(421,58,47,2,NULL),(422,60,44,2,NULL),(423,9,40,2,NULL),(424,121,47,2,NULL),(425,64,44,2,NULL),(426,10,40,2,NULL),(427,184,47,2,NULL),(428,68,44,2,NULL),(429,11,40,2,NULL),(430,202,47,2,NULL),(431,70,44,2,NULL),(432,4,41,2,NULL),(433,204,47,2,NULL),(434,52,44,2,NULL),(435,5,41,2,NULL),(436,207,47,2,NULL),(437,129,44,2,NULL),(438,6,41,2,NULL),(439,211,47,2,NULL),(440,133,44,2,NULL),(441,7,41,2,NULL),(442,213,47,2,NULL),(443,136,44,2,NULL),(444,8,41,2,NULL),(445,29,48,2,NULL),(446,140,44,2,NULL),(447,9,41,2,NULL),(448,36,48,2,NULL),(449,142,44,2,NULL),(450,10,41,2,NULL),(451,38,48,2,NULL),(452,146,44,2,NULL),(453,11,41,2,NULL),(454,53,48,2,NULL),(455,148,44,2,NULL),(456,4,53,2,NULL),(457,58,48,2,NULL),(458,150,44,2,NULL),(459,5,53,2,NULL),(460,121,48,2,NULL),(461,137,44,2,NULL),(462,6,53,2,NULL),(463,184,48,2,NULL),(464,45,45,2,NULL),(465,7,53,2,NULL),(466,202,48,2,NULL),(467,50,45,2,NULL),(468,8,53,2,NULL),(469,204,48,2,NULL),(470,51,45,2,NULL),(471,9,53,2,NULL),(472,207,48,2,NULL),(473,55,45,2,NULL),(474,10,53,2,NULL),(475,211,48,2,NULL),(476,60,45,2,NULL),(477,11,53,2,NULL),(478,213,48,2,NULL),(479,64,45,2,NULL),(480,4,73,2,NULL),(481,29,6,2,NULL),(482,68,45,2,NULL),(483,5,73,2,NULL),(484,36,6,2,NULL),(485,70,45,2,NULL),(486,6,73,2,NULL),(487,38,6,2,NULL),(488,52,45,2,NULL),(489,7,73,2,NULL),(490,53,6,2,NULL),(491,129,45,2,NULL),(492,8,73,2,NULL),(493,58,6,2,NULL),(494,133,45,2,NULL),(495,9,73,2,NULL),(496,121,6,2,NULL),(497,136,45,2,NULL),(498,10,73,2,NULL),(499,184,6,2,NULL),(500,140,45,2,NULL),(501,11,73,2,NULL),(502,202,6,2,NULL),(503,142,45,2,NULL),(504,4,81,2,NULL),(505,204,6,2,NULL),(506,146,45,2,NULL),(507,5,81,2,NULL),(508,207,6,2,NULL),(509,148,45,2,NULL),(510,6,81,2,NULL),(511,211,6,2,NULL),(512,150,45,2,NULL),(513,7,81,2,NULL),(514,213,6,2,NULL),(515,137,45,2,NULL),(516,8,81,2,NULL),(517,45,15,2,NULL),(518,45,46,2,NULL),(519,9,81,2,NULL),(520,50,15,2,NULL),(521,50,46,2,NULL),(522,10,81,2,NULL),(523,51,15,2,NULL),(524,51,46,2,NULL),(525,11,81,2,NULL),(526,55,15,2,NULL),(527,55,46,2,NULL),(528,4,83,2,NULL),(529,60,15,2,NULL),(530,60,46,2,NULL),(531,5,83,2,NULL),(532,64,15,2,NULL),(533,64,46,2,NULL),(534,6,83,2,NULL),(535,68,15,2,NULL),(536,68,46,2,NULL),(537,7,83,2,NULL),(538,70,15,2,NULL),(539,70,46,2,NULL),(540,8,83,2,NULL),(541,52,15,2,NULL),(542,52,46,2,NULL),(543,9,83,2,NULL),(544,129,15,2,NULL),(545,129,46,2,NULL),(546,10,83,2,NULL),(547,133,15,2,NULL),(548,133,46,2,NULL),(549,11,83,2,NULL),(550,136,15,2,NULL),(551,136,46,2,NULL),(552,4,86,2,NULL),(553,140,15,2,NULL),(554,140,46,2,NULL),(555,5,86,2,NULL),(556,142,15,2,NULL),(557,142,46,2,NULL),(558,6,86,2,NULL),(559,146,15,2,NULL),(560,146,46,2,NULL),(561,7,86,2,NULL),(562,148,15,2,NULL),(563,148,46,2,NULL),(564,8,86,2,NULL),(565,150,15,2,NULL),(566,150,46,2,NULL),(567,9,86,2,NULL),(568,137,15,2,NULL),(569,137,46,2,NULL),(570,10,86,2,NULL),(571,29,7,2,NULL),(572,45,47,2,NULL),(573,11,86,2,NULL),(574,50,47,2,NULL),(575,36,7,2,NULL),(576,4,32,2,NULL),(577,38,7,2,NULL),(578,51,47,2,NULL),(579,5,32,2,NULL),(580,53,7,2,NULL),(581,55,47,2,NULL),(582,6,32,2,NULL),(583,58,7,2,NULL),(584,60,47,2,NULL),(585,7,32,2,NULL),(586,121,7,2,NULL),(587,64,47,2,NULL),(588,8,32,2,NULL),(589,184,7,2,NULL),(590,68,47,2,NULL),(591,9,32,2,NULL),(592,202,7,2,NULL),(593,70,47,2,NULL),(594,10,32,2,NULL),(595,204,7,2,NULL),(596,52,47,2,NULL),(597,11,32,2,NULL),(598,207,7,2,NULL),(599,129,47,2,NULL),(600,4,39,2,NULL),(601,211,7,2,NULL),(602,133,47,2,NULL),(603,5,39,2,NULL),(604,213,7,2,NULL),(605,136,47,2,NULL),(606,6,39,2,NULL),(607,29,14,2,NULL),(608,140,47,2,NULL),(609,7,39,2,NULL),(610,36,14,2,NULL),(611,142,47,2,NULL),(612,8,39,2,NULL),(613,38,14,2,NULL),(614,146,47,2,NULL),(615,9,39,2,NULL),(616,53,14,2,NULL),(617,148,47,2,NULL),(618,10,39,2,NULL),(619,58,14,2,NULL),(620,150,47,2,NULL),(621,11,39,2,NULL),(622,121,14,2,NULL),(623,4,42,2,NULL),(624,137,47,2,NULL),(625,184,14,2,NULL),(626,5,42,2,NULL),(627,45,48,2,NULL),(628,202,14,2,NULL),(629,6,42,2,NULL),(630,50,48,2,NULL),(631,204,14,2,NULL),(632,7,42,2,NULL),(633,207,14,2,NULL),(634,51,48,2,NULL),(635,8,42,2,NULL),(636,211,14,2,NULL),(637,55,48,2,NULL),(638,9,42,2,NULL),(639,213,14,2,NULL),(640,60,48,2,NULL),(641,10,42,2,NULL),(642,29,18,2,NULL),(643,64,48,2,NULL),(644,11,42,2,NULL),(645,36,18,2,NULL),(646,68,48,2,NULL),(647,4,43,2,NULL),(648,38,18,2,NULL),(649,70,48,2,NULL),(650,5,43,2,NULL),(651,53,18,2,NULL),(652,52,48,2,NULL),(653,6,43,2,NULL),(654,58,18,2,NULL),(655,129,48,2,NULL),(656,7,43,2,NULL),(657,121,18,2,NULL),(658,133,48,2,NULL),(659,8,43,2,NULL),(660,184,18,2,NULL),(661,136,48,2,NULL),(662,9,43,2,NULL),(663,202,18,2,NULL),(664,140,48,2,NULL),(665,10,43,2,NULL),(666,204,18,2,NULL),(667,142,48,2,NULL),(668,11,43,2,NULL),(669,207,18,2,NULL),(670,146,48,2,NULL),(671,4,55,2,NULL),(672,211,18,2,NULL),(673,148,48,2,NULL),(674,5,55,2,NULL),(675,213,18,2,NULL),(676,150,48,2,NULL),(677,6,55,2,NULL),(678,29,22,2,NULL),(679,137,48,2,NULL),(680,7,55,2,NULL),(681,36,22,2,NULL),(682,45,7,2,NULL),(683,8,55,2,NULL),(684,38,22,2,NULL),(685,50,7,2,NULL),(686,9,55,2,NULL),(687,53,22,2,NULL),(688,51,7,2,NULL),(689,10,55,2,NULL),(690,58,22,2,NULL),(691,55,7,2,NULL),(692,11,55,2,NULL),(693,121,22,2,NULL),(694,60,7,2,NULL),(695,4,72,2,NULL),(696,184,22,2,NULL),(697,64,7,2,NULL),(698,5,72,2,NULL),(699,202,22,2,NULL),(700,68,7,2,NULL),(701,6,72,2,NULL),(702,204,22,2,NULL),(703,70,7,2,NULL),(704,7,72,2,NULL),(705,207,22,2,NULL),(706,52,7,2,NULL),(707,8,72,2,NULL),(708,211,22,2,NULL),(709,129,7,2,NULL),(710,9,72,2,NULL),(711,213,22,2,NULL),(712,133,7,2,NULL),(713,10,72,2,NULL),(714,29,52,2,NULL),(715,136,7,2,NULL),(716,181,20,2,NULL),(717,11,72,2,NULL),(718,36,52,2,NULL),(719,140,7,2,NULL),(720,4,78,2,NULL),(721,181,24,2,NULL),(722,38,52,2,NULL),(723,142,7,2,NULL),(724,5,78,2,NULL),(725,181,36,2,NULL),(726,53,52,2,NULL),(727,146,7,2,NULL),(728,6,78,2,NULL),(729,58,52,2,NULL),(730,148,7,2,NULL),(731,181,39,2,NULL),(732,7,78,2,NULL),(733,121,52,2,NULL),(734,150,7,2,NULL),(735,188,20,2,NULL),(736,8,78,2,NULL),(737,184,52,2,NULL),(738,137,7,2,NULL),(739,9,78,2,NULL),(740,188,24,2,NULL),(741,202,52,2,NULL),(742,45,14,2,NULL),(743,10,78,2,NULL),(744,204,52,2,NULL),(745,50,14,2,NULL),(746,188,36,2,NULL),(747,11,78,2,NULL),(748,207,52,2,NULL),(749,51,14,2,NULL),(750,4,79,2,NULL),(751,188,39,2,NULL),(752,211,52,2,NULL),(753,55,14,2,NULL),(754,5,79,2,NULL),(755,60,14,2,NULL),(756,213,52,2,NULL),(757,196,20,2,NULL),(758,6,79,2,NULL),(759,29,56,2,NULL),(760,64,14,2,NULL),(761,7,79,2,NULL),(762,196,24,2,NULL),(763,36,56,2,NULL),(764,68,14,2,NULL),(765,8,79,2,NULL),(766,70,14,2,NULL),(767,38,56,2,NULL),(768,196,36,2,NULL),(769,9,79,2,NULL),(770,53,56,2,NULL),(771,52,14,2,NULL),(772,10,79,2,NULL),(773,196,39,2,NULL),(774,58,56,2,NULL),(775,129,14,2,NULL),(776,11,79,2,NULL),(777,121,56,2,NULL),(778,133,14,2,NULL),(779,205,20,2,NULL),(780,4,80,2,NULL),(781,184,56,2,NULL),(782,136,14,2,NULL),(783,5,80,2,NULL),(784,205,24,2,NULL),(785,202,56,2,NULL),(786,140,14,2,NULL),(787,6,80,2,NULL),(788,204,56,2,NULL),(789,142,14,2,NULL),(790,205,36,2,NULL),(791,7,80,2,NULL),(792,207,56,2,NULL),(793,146,14,2,NULL),(794,205,39,2,NULL),(795,8,80,2,NULL),(796,211,56,2,NULL),(797,148,14,2,NULL),(798,9,80,2,NULL),(799,210,20,2,NULL),(800,213,56,2,NULL),(801,150,14,2,NULL),(802,10,80,2,NULL),(803,210,24,2,NULL),(804,29,63,2,NULL),(805,137,14,2,NULL),(806,11,80,2,NULL),(807,36,63,2,NULL),(808,45,18,2,NULL),(809,210,36,2,NULL),(810,1,1,2,NULL),(811,50,18,2,NULL),(812,38,63,2,NULL),(813,210,39,2,NULL),(814,53,63,2,NULL),(815,51,18,2,NULL),(816,65,2,2,NULL),(817,219,16,2,NULL),(818,58,63,2,NULL),(819,55,18,2,NULL),(820,74,2,2,NULL),(821,121,63,2,NULL),(822,60,18,2,NULL),(823,219,21,2,NULL),(824,81,2,2,NULL),(825,184,63,2,NULL),(826,64,18,2,NULL),(827,85,2,2,NULL),(828,219,33,2,NULL),(829,202,63,2,NULL),(830,68,18,2,NULL),(831,88,2,2,NULL),(832,70,18,2,NULL),(833,204,63,2,NULL),(834,219,37,2,NULL),(835,92,2,2,NULL),(836,207,63,2,NULL),(837,52,18,2,NULL),(838,206,2,2,NULL),(839,228,16,2,NULL),(840,211,63,2,NULL),(841,129,18,2,NULL),(842,209,2,2,NULL),(843,213,63,2,NULL),(844,133,18,2,NULL),(845,228,21,2,NULL),(846,212,2,2,NULL),(847,29,10,2,NULL),(848,136,18,2,NULL),(849,216,2,2,NULL),(850,228,33,2,NULL),(851,36,10,2,NULL),(852,140,18,2,NULL),(853,228,37,2,NULL),(854,38,10,2,NULL),(855,142,18,2,NULL),(856,53,10,2,NULL),(857,146,18,2,NULL),(858,94,2,2,NULL),(859,218,2,2,NULL),(860,58,10,2,NULL),(861,148,18,2,NULL),(862,97,2,2,NULL),(863,121,10,2,NULL),(864,238,2,2,NULL),(865,150,18,2,NULL),(866,99,2,2,NULL),(867,230,2,2,NULL),(868,184,10,2,NULL),(869,137,18,2,NULL),(870,102,2,2,NULL),(871,202,10,2,NULL),(872,72,2,2,NULL),(873,45,22,2,NULL),(874,107,2,2,NULL),(875,204,10,2,NULL),(876,50,22,2,NULL),(877,178,2,2,NULL),(878,185,2,2,NULL),(879,207,10,2,NULL),(880,190,2,2,NULL),(881,51,22,2,NULL),(882,193,2,2,NULL),(883,211,10,2,NULL),(884,201,2,2,NULL),(885,55,22,2,NULL),(886,246,2,2,NULL),(887,213,10,2,NULL),(888,248,2,2,NULL),(889,60,22,2,NULL),(890,94,5,2,NULL),(891,65,15,2,NULL),(892,153,2,2,NULL),(893,64,22,2,NULL),(894,97,5,2,NULL),(895,74,15,2,NULL),(896,100,2,2,NULL),(897,68,22,2,NULL),(898,99,5,2,NULL),(899,81,15,2,NULL),(900,113,2,2,NULL),(901,70,22,2,NULL),(902,102,5,2,NULL),(903,85,15,2,NULL),(904,120,2,2,NULL),(905,52,22,2,NULL),(906,107,5,2,NULL),(907,88,15,2,NULL),(908,124,2,2,NULL),(909,129,22,2,NULL),(910,178,5,2,NULL),(911,92,15,2,NULL),(912,127,2,2,NULL),(913,133,22,2,NULL),(914,185,5,2,NULL),(915,206,15,2,NULL),(916,151,2,2,NULL),(917,136,22,2,NULL),(918,190,5,2,NULL),(919,209,15,2,NULL),(920,158,2,2,NULL),(921,140,22,2,NULL),(922,193,5,2,NULL),(923,212,15,2,NULL),(924,192,2,2,NULL),(925,142,22,2,NULL),(926,216,15,2,NULL),(927,201,5,2,NULL),(928,194,2,2,NULL),(929,146,22,2,NULL),(930,218,15,2,NULL),(931,246,5,2,NULL),(932,198,2,2,NULL),(933,148,22,2,NULL),(934,238,15,2,NULL),(935,248,5,2,NULL),(936,200,2,2,NULL),(937,150,22,2,NULL),(938,230,15,2,NULL),(939,94,44,2,NULL),(940,203,2,2,NULL),(941,137,22,2,NULL),(942,29,20,2,NULL),(943,97,44,2,NULL),(944,245,2,2,NULL),(945,36,20,2,NULL),(946,99,44,2,NULL),(947,45,52,2,NULL),(948,38,20,2,NULL),(949,102,44,2,NULL),(950,50,52,2,NULL),(951,65,5,2,NULL),(952,53,20,2,NULL),(953,107,44,2,NULL),(954,51,52,2,NULL),(955,74,5,2,NULL),(956,58,20,2,NULL),(957,178,44,2,NULL),(958,55,52,2,NULL),(959,81,5,2,NULL),(960,121,20,2,NULL),(961,185,44,2,NULL),(962,60,52,2,NULL),(963,184,20,2,NULL),(964,85,5,2,NULL),(965,190,44,2,NULL),(966,64,52,2,NULL),(967,88,5,2,NULL),(968,202,20,2,NULL),(969,193,44,2,NULL),(970,68,52,2,NULL),(971,92,5,2,NULL),(972,204,20,2,NULL),(973,201,44,2,NULL),(974,70,52,2,NULL),(975,206,5,2,NULL),(976,207,20,2,NULL),(977,246,44,2,NULL),(978,52,52,2,NULL),(979,209,5,2,NULL),(980,211,20,2,NULL),(981,248,44,2,NULL),(982,129,52,2,NULL),(983,212,5,2,NULL),(984,213,20,2,NULL),(985,94,45,2,NULL),(986,133,52,2,NULL),(987,216,5,2,NULL),(988,29,26,2,NULL),(989,97,45,2,NULL),(990,136,52,2,NULL),(991,36,26,2,NULL),(992,218,5,2,NULL),(993,99,45,2,NULL),(994,140,52,2,NULL),(995,38,26,2,NULL),(996,238,5,2,NULL),(997,102,45,2,NULL),(998,142,52,2,NULL),(999,53,26,2,NULL),(1000,230,5,2,NULL),(1001,107,45,2,NULL),(1002,146,52,2,NULL),(1003,58,26,2,NULL),(1004,178,45,2,NULL),(1005,148,52,2,NULL),(1006,72,5,2,NULL),(1007,121,26,2,NULL),(1008,185,45,2,NULL),(1009,150,52,2,NULL),(1010,184,26,2,NULL),(1011,190,45,2,NULL),(1012,153,5,2,NULL),(1013,137,52,2,NULL),(1014,202,26,2,NULL),(1015,100,5,2,NULL),(1016,193,45,2,NULL),(1017,45,56,2,NULL),(1018,204,26,2,NULL),(1019,113,5,2,NULL),(1020,201,45,2,NULL),(1021,50,56,2,NULL),(1022,207,26,2,NULL),(1023,120,5,2,NULL),(1024,246,45,2,NULL),(1025,51,56,2,NULL),(1026,124,5,2,NULL),(1027,211,26,2,NULL),(1028,248,45,2,NULL),(1029,55,56,2,NULL),(1030,213,26,2,NULL),(1031,127,5,2,NULL),(1032,94,46,2,NULL),(1033,60,56,2,NULL),(1034,29,28,2,NULL),(1035,151,5,2,NULL),(1036,97,46,2,NULL),(1037,64,56,2,NULL),(1038,36,28,2,NULL),(1039,158,5,2,NULL),(1040,99,46,2,NULL),(1041,68,56,2,NULL),(1042,38,28,2,NULL),(1043,192,5,2,NULL),(1044,102,46,2,NULL),(1045,70,56,2,NULL),(1046,53,28,2,NULL),(1047,194,5,2,NULL),(1048,107,46,2,NULL),(1049,52,56,2,NULL),(1050,58,28,2,NULL),(1051,198,5,2,NULL),(1052,178,46,2,NULL),(1053,129,56,2,NULL),(1054,121,28,2,NULL),(1055,200,5,2,NULL),(1056,185,46,2,NULL),(1057,133,56,2,NULL),(1058,184,28,2,NULL),(1059,203,5,2,NULL),(1060,190,46,2,NULL),(1061,136,56,2,NULL),(1062,202,28,2,NULL),(1063,245,5,2,NULL),(1064,193,46,2,NULL),(1065,140,56,2,NULL),(1066,204,28,2,NULL),(1067,201,46,2,NULL),(1068,142,56,2,NULL),(1069,207,28,2,NULL),(1070,246,46,2,NULL),(1071,65,44,2,NULL),(1072,146,56,2,NULL),(1073,211,28,2,NULL),(1074,74,44,2,NULL),(1075,248,46,2,NULL),(1076,148,56,2,NULL),(1077,81,44,2,NULL),(1078,213,28,2,NULL),(1079,94,47,2,NULL),(1080,150,56,2,NULL),(1081,85,44,2,NULL),(1082,29,49,2,NULL),(1083,97,47,2,NULL),(1084,137,56,2,NULL),(1085,36,49,2,NULL),(1086,88,44,2,NULL),(1087,99,47,2,NULL),(1088,45,63,2,NULL),(1089,38,49,2,NULL),(1090,92,44,2,NULL),(1091,102,47,2,NULL),(1092,50,63,2,NULL),(1093,53,49,2,NULL),(1094,206,44,2,NULL),(1095,107,47,2,NULL),(1096,51,63,2,NULL),(1097,58,49,2,NULL),(1098,209,44,2,NULL),(1099,121,49,2,NULL),(1100,178,47,2,NULL),(1101,55,63,2,NULL),(1102,212,44,2,NULL),(1103,184,49,2,NULL),(1104,60,63,2,NULL),(1105,185,47,2,NULL),(1106,216,44,2,NULL),(1107,202,49,2,NULL),(1108,64,63,2,NULL),(1109,190,47,2,NULL),(1110,218,44,2,NULL),(1111,204,49,2,NULL),(1112,68,63,2,NULL),(1113,193,47,2,NULL),(1114,238,44,2,NULL),(1115,207,49,2,NULL),(1116,70,63,2,NULL),(1117,201,47,2,NULL),(1118,230,44,2,NULL),(1119,211,49,2,NULL),(1120,52,63,2,NULL),(1121,246,47,2,NULL),(1122,72,44,2,NULL),(1123,213,49,2,NULL),(1124,129,63,2,NULL),(1125,248,47,2,NULL),(1126,153,44,2,NULL),(1127,29,50,2,NULL),(1128,133,63,2,NULL),(1129,94,48,2,NULL),(1130,100,44,2,NULL),(1131,36,50,2,NULL),(1132,136,63,2,NULL),(1133,97,48,2,NULL),(1134,113,44,2,NULL),(1135,38,50,2,NULL),(1136,140,63,2,NULL),(1137,99,48,2,NULL),(1138,120,44,2,NULL),(1139,53,50,2,NULL),(1140,142,63,2,NULL),(1141,102,48,2,NULL),(1142,124,44,2,NULL),(1143,58,50,2,NULL),(1144,146,63,2,NULL),(1145,107,48,2,NULL),(1146,127,44,2,NULL),(1147,121,50,2,NULL),(1148,148,63,2,NULL),(1149,178,48,2,NULL),(1150,151,44,2,NULL),(1151,184,50,2,NULL),(1152,150,63,2,NULL),(1153,185,48,2,NULL),(1154,158,44,2,NULL),(1155,202,50,2,NULL),(1156,137,63,2,NULL),(1157,190,48,2,NULL),(1158,192,44,2,NULL),(1159,204,50,2,NULL),(1160,45,10,2,NULL),(1161,193,48,2,NULL),(1162,194,44,2,NULL),(1163,207,50,2,NULL),(1164,50,10,2,NULL),(1165,201,48,2,NULL),(1166,198,44,2,NULL),(1167,211,50,2,NULL),(1168,51,10,2,NULL),(1169,246,48,2,NULL),(1170,200,44,2,NULL),(1171,213,50,2,NULL),(1172,55,10,2,NULL),(1173,248,48,2,NULL),(1174,203,44,2,NULL),(1175,29,57,2,NULL),(1176,60,10,2,NULL),(1177,94,6,2,NULL),(1178,245,44,2,NULL),(1179,36,57,2,NULL),(1180,64,10,2,NULL),(1181,97,6,2,NULL),(1182,38,57,2,NULL),(1183,68,10,2,NULL),(1184,99,6,2,NULL),(1185,53,57,2,NULL),(1186,70,10,2,NULL),(1187,65,45,2,NULL),(1188,102,6,2,NULL),(1189,58,57,2,NULL),(1190,52,10,2,NULL),(1191,74,45,2,NULL),(1192,107,6,2,NULL),(1193,121,57,2,NULL),(1194,129,10,2,NULL),(1195,81,45,2,NULL),(1196,178,6,2,NULL),(1197,184,57,2,NULL),(1198,133,10,2,NULL),(1199,85,45,2,NULL),(1200,185,6,2,NULL),(1201,202,57,2,NULL),(1202,136,10,2,NULL),(1203,88,45,2,NULL),(1204,190,6,2,NULL),(1205,204,57,2,NULL),(1206,92,45,2,NULL),(1207,140,10,2,NULL),(1208,193,6,2,NULL),(1209,207,57,2,NULL),(1210,142,10,2,NULL),(1211,206,45,2,NULL),(1212,201,6,2,NULL),(1213,211,57,2,NULL),(1214,146,10,2,NULL),(1215,209,45,2,NULL),(1216,246,6,2,NULL),(1217,213,57,2,NULL),(1218,148,10,2,NULL),(1219,212,45,2,NULL),(1220,248,6,2,NULL),(1221,29,70,2,NULL),(1222,150,10,2,NULL),(1223,216,45,2,NULL),(1224,45,30,2,NULL),(1225,36,70,2,NULL),(1226,137,10,2,NULL),(1227,218,45,2,NULL),(1228,50,30,2,NULL),(1229,38,70,2,NULL),(1230,65,6,2,NULL),(1231,51,30,2,NULL),(1232,238,45,2,NULL),(1233,53,70,2,NULL),(1234,230,45,2,NULL),(1235,55,30,2,NULL),(1236,74,6,2,NULL),(1237,58,70,2,NULL),(1238,60,30,2,NULL),(1239,81,6,2,NULL),(1240,72,45,2,NULL),(1241,121,70,2,NULL),(1242,64,30,2,NULL),(1243,85,6,2,NULL),(1244,184,70,2,NULL),(1245,153,45,2,NULL),(1246,68,30,2,NULL),(1247,88,6,2,NULL),(1248,202,70,2,NULL),(1249,100,45,2,NULL),(1250,70,30,2,NULL),(1251,92,6,2,NULL),(1252,204,70,2,NULL),(1253,113,45,2,NULL),(1254,52,30,2,NULL),(1255,206,6,2,NULL),(1256,207,70,2,NULL),(1257,120,45,2,NULL),(1258,129,30,2,NULL),(1259,209,6,2,NULL),(1260,211,70,2,NULL),(1261,124,45,2,NULL),(1262,212,6,2,NULL),(1263,133,30,2,NULL),(1264,213,70,2,NULL),(1265,127,45,2,NULL),(1266,136,30,2,NULL),(1267,216,6,2,NULL),(1268,29,85,2,NULL),(1269,151,45,2,NULL),(1270,140,30,2,NULL),(1271,218,6,2,NULL),(1272,36,85,2,NULL),(1273,158,45,2,NULL),(1274,142,30,2,NULL),(1275,238,6,2,NULL),(1276,38,85,2,NULL),(1277,192,45,2,NULL),(1278,146,30,2,NULL),(1279,230,6,2,NULL),(1280,53,85,2,NULL),(1281,194,45,2,NULL),(1282,148,30,2,NULL),(1283,45,20,2,NULL),(1284,58,85,2,NULL),(1285,198,45,2,NULL),(1286,50,20,2,NULL),(1287,150,30,2,NULL),(1288,121,85,2,NULL),(1289,200,45,2,NULL),(1290,137,30,2,NULL),(1291,51,20,2,NULL),(1292,184,85,2,NULL),(1293,203,45,2,NULL),(1294,55,20,2,NULL),(1295,94,7,2,NULL),(1296,202,85,2,NULL),(1297,245,45,2,NULL),(1298,60,20,2,NULL),(1299,97,7,2,NULL),(1300,204,85,2,NULL),(1301,64,20,2,NULL),(1302,99,7,2,NULL),(1303,207,85,2,NULL),(1304,68,20,2,NULL),(1305,102,7,2,NULL),(1306,65,46,2,NULL),(1307,211,85,2,NULL),(1308,74,46,2,NULL),(1309,70,20,2,NULL),(1310,107,7,2,NULL),(1311,213,85,2,NULL),(1312,81,46,2,NULL),(1313,52,20,2,NULL),(1314,72,15,2,NULL),(1315,178,7,2,NULL),(1316,85,46,2,NULL),(1317,129,20,2,NULL),(1318,29,24,2,NULL),(1319,185,7,2,NULL),(1320,88,46,2,NULL),(1321,133,20,2,NULL),(1322,36,24,2,NULL),(1323,190,7,2,NULL),(1324,92,46,2,NULL),(1325,136,20,2,NULL),(1326,38,24,2,NULL),(1327,193,7,2,NULL),(1328,206,46,2,NULL),(1329,140,20,2,NULL),(1330,53,24,2,NULL),(1331,201,7,2,NULL),(1332,209,46,2,NULL),(1333,142,20,2,NULL),(1334,58,24,2,NULL),(1335,246,7,2,NULL),(1336,212,46,2,NULL),(1337,146,20,2,NULL),(1338,121,24,2,NULL),(1339,248,7,2,NULL),(1340,216,46,2,NULL),(1341,148,20,2,NULL),(1342,184,24,2,NULL),(1343,94,14,2,NULL),(1344,218,46,2,NULL),(1345,150,20,2,NULL),(1346,202,24,2,NULL),(1347,97,14,2,NULL),(1348,238,46,2,NULL),(1349,137,20,2,NULL),(1350,204,24,2,NULL),(1351,99,14,2,NULL),(1352,230,46,2,NULL),(1353,45,26,2,NULL),(1354,207,24,2,NULL),(1355,102,14,2,NULL),(1356,50,26,2,NULL),(1357,211,24,2,NULL),(1358,107,14,2,NULL),(1359,72,46,2,NULL),(1360,51,26,2,NULL),(1361,213,24,2,NULL),(1362,178,14,2,NULL),(1363,153,46,2,NULL),(1364,55,26,2,NULL),(1365,29,27,2,NULL),(1366,185,14,2,NULL),(1367,100,46,2,NULL),(1368,60,26,2,NULL),(1369,36,27,2,NULL),(1370,190,14,2,NULL),(1371,64,26,2,NULL),(1372,113,46,2,NULL),(1373,38,27,2,NULL),(1374,193,14,2,NULL),(1375,120,46,2,NULL),(1376,68,26,2,NULL),(1377,53,27,2,NULL),(1378,201,14,2,NULL),(1379,124,46,2,NULL),(1380,70,26,2,NULL),(1381,58,27,2,NULL),(1382,246,14,2,NULL),(1383,52,26,2,NULL),(1384,127,46,2,NULL),(1385,121,27,2,NULL),(1386,248,14,2,NULL),(1387,151,46,2,NULL),(1388,129,26,2,NULL),(1389,184,27,2,NULL),(1390,94,18,2,NULL),(1391,158,46,2,NULL),(1392,133,26,2,NULL),(1393,202,27,2,NULL),(1394,97,18,2,NULL),(1395,136,26,2,NULL),(1396,192,46,2,NULL),(1397,204,27,2,NULL),(1398,99,18,2,NULL),(1399,194,46,2,NULL),(1400,140,26,2,NULL),(1401,207,27,2,NULL),(1402,102,18,2,NULL),(1403,198,46,2,NULL),(1404,142,26,2,NULL),(1405,211,27,2,NULL),(1406,107,18,2,NULL),(1407,146,26,2,NULL),(1408,200,46,2,NULL),(1409,213,27,2,NULL),(1410,178,18,2,NULL),(1411,203,46,2,NULL),(1412,148,26,2,NULL),(1413,29,29,2,NULL),(1414,185,18,2,NULL),(1415,245,46,2,NULL),(1416,150,26,2,NULL),(1417,36,29,2,NULL),(1418,190,18,2,NULL),(1419,137,26,2,NULL),(1420,38,29,2,NULL),(1421,193,18,2,NULL),(1422,65,47,2,NULL),(1423,45,28,2,NULL),(1424,53,29,2,NULL),(1425,201,18,2,NULL),(1426,50,28,2,NULL),(1427,74,47,2,NULL),(1428,58,29,2,NULL),(1429,246,18,2,NULL),(1430,51,28,2,NULL),(1431,81,47,2,NULL),(1432,121,29,2,NULL),(1433,248,18,2,NULL),(1434,55,28,2,NULL),(1435,85,47,2,NULL),(1436,184,29,2,NULL),(1437,94,22,2,NULL),(1438,60,28,2,NULL),(1439,88,47,2,NULL),(1440,202,29,2,NULL),(1441,97,22,2,NULL),(1442,64,28,2,NULL),(1443,92,47,2,NULL),(1444,204,29,2,NULL),(1445,99,22,2,NULL),(1446,68,28,2,NULL),(1447,206,47,2,NULL),(1448,207,29,2,NULL),(1449,102,22,2,NULL),(1450,209,47,2,NULL),(1451,70,28,2,NULL),(1452,211,29,2,NULL),(1453,107,22,2,NULL),(1454,52,28,2,NULL),(1455,212,47,2,NULL),(1456,213,29,2,NULL),(1457,178,22,2,NULL),(1458,216,47,2,NULL),(1459,129,28,2,NULL),(1460,29,68,2,NULL),(1461,185,22,2,NULL),(1462,133,28,2,NULL),(1463,218,47,2,NULL),(1464,36,68,2,NULL),(1465,190,22,2,NULL),(1466,136,28,2,NULL),(1467,238,47,2,NULL),(1468,38,68,2,NULL),(1469,193,22,2,NULL),(1470,230,47,2,NULL),(1471,140,28,2,NULL),(1472,53,68,2,NULL),(1473,201,22,2,NULL),(1474,142,28,2,NULL),(1475,58,68,2,NULL),(1476,72,47,2,NULL),(1477,246,22,2,NULL),(1478,146,28,2,NULL),(1479,121,68,2,NULL),(1480,248,22,2,NULL),(1481,148,28,2,NULL),(1482,153,47,2,NULL),(1483,184,68,2,NULL),(1484,94,52,2,NULL),(1485,150,28,2,NULL),(1486,100,47,2,NULL),(1487,202,68,2,NULL),(1488,97,52,2,NULL),(1489,137,28,2,NULL),(1490,113,47,2,NULL),(1491,204,68,2,NULL),(1492,99,52,2,NULL),(1493,45,49,2,NULL),(1494,120,47,2,NULL),(1495,207,68,2,NULL),(1496,102,52,2,NULL),(1497,124,47,2,NULL),(1498,50,49,2,NULL),(1499,211,68,2,NULL),(1500,107,52,2,NULL),(1501,127,47,2,NULL),(1502,51,49,2,NULL),(1503,213,68,2,NULL),(1504,178,52,2,NULL),(1505,151,47,2,NULL),(1506,55,49,2,NULL),(1507,29,74,2,NULL),(1508,185,52,2,NULL),(1509,158,47,2,NULL),(1510,60,49,2,NULL),(1511,36,74,2,NULL),(1512,190,52,2,NULL),(1513,192,47,2,NULL),(1514,64,49,2,NULL),(1515,38,74,2,NULL),(1516,193,52,2,NULL),(1517,194,47,2,NULL),(1518,68,49,2,NULL),(1519,53,74,2,NULL),(1520,201,52,2,NULL),(1521,198,47,2,NULL),(1522,70,49,2,NULL),(1523,58,74,2,NULL),(1524,246,52,2,NULL),(1525,52,49,2,NULL),(1526,200,47,2,NULL),(1527,121,74,2,NULL),(1528,203,47,2,NULL),(1529,129,49,2,NULL),(1530,248,52,2,NULL),(1531,184,74,2,NULL),(1532,133,49,2,NULL),(1533,245,47,2,NULL),(1534,94,56,2,NULL),(1535,202,74,2,NULL),(1536,136,49,2,NULL),(1537,97,56,2,NULL),(1538,204,74,2,NULL),(1539,140,49,2,NULL),(1540,99,56,2,NULL),(1541,207,74,2,NULL),(1542,65,48,2,NULL),(1543,142,49,2,NULL),(1544,102,56,2,NULL),(1545,211,74,2,NULL),(1546,74,48,2,NULL),(1547,146,49,2,NULL),(1548,107,56,2,NULL),(1549,213,74,2,NULL),(1550,148,49,2,NULL),(1551,81,48,2,NULL),(1552,178,56,2,NULL),(1553,29,75,2,NULL),(1554,85,48,2,NULL),(1555,150,49,2,NULL),(1556,185,56,2,NULL),(1557,137,49,2,NULL),(1558,88,48,2,NULL),(1559,190,56,2,NULL),(1560,45,50,2,NULL),(1561,92,48,2,NULL),(1562,193,56,2,NULL),(1563,36,75,2,NULL),(1564,50,50,2,NULL),(1565,206,48,2,NULL),(1566,38,75,2,NULL),(1567,201,56,2,NULL),(1568,51,50,2,NULL),(1569,53,75,2,NULL),(1570,209,48,2,NULL),(1571,246,56,2,NULL),(1572,55,50,2,NULL),(1573,212,48,2,NULL),(1574,58,75,2,NULL),(1575,248,56,2,NULL),(1576,60,50,2,NULL),(1577,216,48,2,NULL),(1578,121,75,2,NULL),(1579,94,63,2,NULL),(1580,64,50,2,NULL),(1581,218,48,2,NULL),(1582,184,75,2,NULL),(1583,97,63,2,NULL),(1584,68,50,2,NULL),(1585,202,75,2,NULL),(1586,238,48,2,NULL),(1587,99,63,2,NULL),(1588,70,50,2,NULL),(1589,204,75,2,NULL),(1590,230,48,2,NULL),(1591,102,63,2,NULL),(1592,52,50,2,NULL),(1593,207,75,2,NULL),(1594,107,63,2,NULL),(1595,72,48,2,NULL),(1596,129,50,2,NULL),(1597,178,63,2,NULL),(1598,211,75,2,NULL),(1599,153,48,2,NULL),(1600,133,50,2,NULL),(1601,100,48,2,NULL),(1602,213,75,2,NULL),(1603,185,63,2,NULL),(1604,136,50,2,NULL),(1605,113,48,2,NULL),(1606,29,77,2,NULL),(1607,190,63,2,NULL),(1608,140,50,2,NULL),(1609,120,48,2,NULL),(1610,36,77,2,NULL),(1611,193,63,2,NULL),(1612,142,50,2,NULL),(1613,124,48,2,NULL),(1614,38,77,2,NULL),(1615,201,63,2,NULL),(1616,146,50,2,NULL),(1617,127,48,2,NULL),(1618,53,77,2,NULL),(1619,246,63,2,NULL),(1620,148,50,2,NULL),(1621,151,48,2,NULL),(1622,58,77,2,NULL),(1623,248,63,2,NULL),(1624,150,50,2,NULL),(1625,158,48,2,NULL),(1626,121,77,2,NULL),(1627,94,10,2,NULL),(1628,137,50,2,NULL),(1629,192,48,2,NULL),(1630,184,77,2,NULL),(1631,97,10,2,NULL),(1632,45,57,2,NULL),(1633,194,48,2,NULL),(1634,202,77,2,NULL),(1635,99,10,2,NULL),(1636,50,57,2,NULL),(1637,198,48,2,NULL),(1638,204,77,2,NULL),(1639,102,10,2,NULL),(1640,51,57,2,NULL),(1641,200,48,2,NULL),(1642,207,77,2,NULL),(1643,107,10,2,NULL),(1644,55,57,2,NULL),(1645,211,77,2,NULL),(1646,203,48,2,NULL),(1647,178,10,2,NULL),(1648,60,57,2,NULL),(1649,245,48,2,NULL),(1650,213,77,2,NULL),(1651,185,10,2,NULL),(1652,64,57,2,NULL),(1653,190,10,2,NULL),(1654,29,82,2,NULL),(1655,68,57,2,NULL),(1656,36,82,2,NULL),(1657,193,10,2,NULL),(1658,70,57,2,NULL),(1659,38,82,2,NULL),(1660,201,10,2,NULL),(1661,52,57,2,NULL),(1662,53,82,2,NULL),(1663,129,57,2,NULL),(1664,246,10,2,NULL),(1665,58,82,2,NULL),(1666,133,57,2,NULL),(1667,248,10,2,NULL),(1668,121,82,2,NULL),(1669,65,30,2,NULL),(1670,136,57,2,NULL),(1671,184,82,2,NULL),(1672,74,30,2,NULL),(1673,140,57,2,NULL),(1674,202,82,2,NULL),(1675,142,57,2,NULL),(1676,81,30,2,NULL),(1677,204,82,2,NULL),(1678,146,57,2,NULL),(1679,85,30,2,NULL),(1680,207,82,2,NULL),(1681,148,57,2,NULL),(1682,211,82,2,NULL),(1683,88,30,2,NULL),(1684,150,57,2,NULL),(1685,213,82,2,NULL),(1686,92,30,2,NULL),(1687,137,57,2,NULL),(1688,206,30,2,NULL),(1689,29,30,2,NULL),(1690,45,70,2,NULL),(1691,36,30,2,NULL),(1692,209,30,2,NULL),(1693,50,70,2,NULL),(1694,38,30,2,NULL),(1695,212,30,2,NULL),(1696,51,70,2,NULL),(1697,53,30,2,NULL),(1698,216,30,2,NULL),(1699,55,70,2,NULL),(1700,218,30,2,NULL),(1701,58,30,2,NULL),(1702,60,70,2,NULL),(1703,238,30,2,NULL),(1704,121,30,2,NULL),(1705,64,70,2,NULL),(1706,184,30,2,NULL),(1707,230,30,2,NULL),(1708,68,70,2,NULL),(1709,94,20,2,NULL),(1710,202,30,2,NULL),(1711,70,70,2,NULL),(1712,204,30,2,NULL),(1713,97,20,2,NULL),(1714,52,70,2,NULL),(1715,99,20,2,NULL),(1716,207,30,2,NULL),(1717,129,70,2,NULL),(1718,102,20,2,NULL),(1719,211,30,2,NULL),(1720,133,70,2,NULL),(1721,107,20,2,NULL),(1722,213,30,2,NULL),(1723,136,70,2,NULL),(1724,178,20,2,NULL),(1725,94,15,2,NULL),(1726,185,20,2,NULL),(1727,97,15,2,NULL),(1728,140,70,2,NULL),(1729,190,20,2,NULL),(1730,142,70,2,NULL),(1731,99,15,2,NULL),(1732,193,20,2,NULL),(1733,102,15,2,NULL),(1734,146,70,2,NULL),(1735,201,20,2,NULL),(1736,148,70,2,NULL),(1737,107,15,2,NULL),(1738,246,20,2,NULL),(1739,150,70,2,NULL),(1740,178,15,2,NULL),(1741,248,20,2,NULL),(1742,137,70,2,NULL),(1743,185,15,2,NULL),(1744,94,26,2,NULL),(1745,190,15,2,NULL),(1746,45,85,2,NULL),(1747,97,26,2,NULL),(1748,193,15,2,NULL),(1749,50,85,2,NULL),(1750,99,26,2,NULL),(1751,51,85,2,NULL),(1752,201,15,2,NULL),(1753,102,26,2,NULL),(1754,246,15,2,NULL),(1755,55,85,2,NULL),(1756,107,26,2,NULL),(1757,60,85,2,NULL),(1758,248,15,2,NULL),(1759,178,26,2,NULL),(1760,64,85,2,NULL),(1761,153,15,2,NULL),(1762,185,26,2,NULL),(1763,68,85,2,NULL),(1764,29,36,2,NULL),(1765,190,26,2,NULL),(1766,36,36,2,NULL),(1767,70,85,2,NULL),(1768,193,26,2,NULL),(1769,52,85,2,NULL),(1770,38,36,2,NULL),(1771,201,26,2,NULL),(1772,53,36,2,NULL),(1773,129,85,2,NULL),(1774,246,26,2,NULL),(1775,133,85,2,NULL),(1776,58,36,2,NULL),(1777,248,26,2,NULL),(1778,136,85,2,NULL),(1779,121,36,2,NULL),(1780,94,28,2,NULL),(1781,184,36,2,NULL),(1782,140,85,2,NULL),(1783,97,28,2,NULL),(1784,202,36,2,NULL),(1785,142,85,2,NULL),(1786,99,28,2,NULL),(1787,204,36,2,NULL),(1788,146,85,2,NULL),(1789,102,28,2,NULL),(1790,148,85,2,NULL),(1791,207,36,2,NULL),(1792,107,28,2,NULL),(1793,211,36,2,NULL),(1794,150,85,2,NULL),(1795,178,28,2,NULL),(1796,137,85,2,NULL),(1797,213,36,2,NULL),(1798,185,28,2,NULL),(1799,29,40,2,NULL),(1800,72,6,2,NULL),(1801,190,28,2,NULL),(1802,36,40,2,NULL),(1803,45,24,2,NULL),(1804,193,28,2,NULL),(1805,38,40,2,NULL),(1806,201,28,2,NULL),(1807,50,24,2,NULL),(1808,53,40,2,NULL),(1809,246,28,2,NULL),(1810,51,24,2,NULL),(1811,58,40,2,NULL),(1812,248,28,2,NULL),(1813,55,24,2,NULL),(1814,121,40,2,NULL),(1815,94,49,2,NULL),(1816,60,24,2,NULL),(1817,184,40,2,NULL),(1818,97,49,2,NULL),(1819,64,24,2,NULL),(1820,202,40,2,NULL),(1821,68,24,2,NULL),(1822,99,49,2,NULL),(1823,204,40,2,NULL),(1824,70,24,2,NULL),(1825,102,49,2,NULL),(1826,207,40,2,NULL),(1827,107,49,2,NULL),(1828,52,24,2,NULL),(1829,211,40,2,NULL),(1830,178,49,2,NULL),(1831,129,24,2,NULL),(1832,213,40,2,NULL),(1833,185,49,2,NULL),(1834,133,24,2,NULL),(1835,29,41,2,NULL),(1836,190,49,2,NULL),(1837,136,24,2,NULL),(1838,36,41,2,NULL),(1839,140,24,2,NULL),(1840,193,49,2,NULL),(1841,38,41,2,NULL),(1842,142,24,2,NULL),(1843,201,49,2,NULL),(1844,53,41,2,NULL),(1845,246,49,2,NULL),(1846,146,24,2,NULL),(1847,58,41,2,NULL),(1848,248,49,2,NULL),(1849,148,24,2,NULL),(1850,121,41,2,NULL),(1851,94,50,2,NULL),(1852,150,24,2,NULL),(1853,184,41,2,NULL),(1854,97,50,2,NULL),(1855,137,24,2,NULL),(1856,202,41,2,NULL),(1857,45,27,2,NULL),(1858,99,50,2,NULL),(1859,204,41,2,NULL),(1860,102,50,2,NULL),(1861,50,27,2,NULL),(1862,207,41,2,NULL),(1863,51,27,2,NULL),(1864,107,50,2,NULL),(1865,211,41,2,NULL),(1866,178,50,2,NULL),(1867,55,27,2,NULL),(1868,213,41,2,NULL),(1869,185,50,2,NULL),(1870,60,27,2,NULL),(1871,29,53,2,NULL),(1872,190,50,2,NULL),(1873,64,27,2,NULL),(1874,36,53,2,NULL),(1875,68,27,2,NULL),(1876,193,50,2,NULL),(1877,38,53,2,NULL),(1878,201,50,2,NULL),(1879,70,27,2,NULL),(1880,53,53,2,NULL),(1881,246,50,2,NULL),(1882,52,27,2,NULL),(1883,58,53,2,NULL),(1884,248,50,2,NULL),(1885,129,27,2,NULL),(1886,121,53,2,NULL),(1887,133,27,2,NULL),(1888,94,57,2,NULL),(1889,184,53,2,NULL),(1890,97,57,2,NULL),(1891,136,27,2,NULL),(1892,202,53,2,NULL),(1893,140,27,2,NULL),(1894,99,57,2,NULL),(1895,204,53,2,NULL),(1896,142,27,2,NULL),(1897,102,57,2,NULL),(1898,207,53,2,NULL),(1899,107,57,2,NULL),(1900,146,27,2,NULL),(1901,211,53,2,NULL),(1902,148,27,2,NULL),(1903,178,57,2,NULL),(1904,213,53,2,NULL),(1905,150,27,2,NULL),(1906,185,57,2,NULL),(1907,29,73,2,NULL),(1908,137,27,2,NULL),(1909,190,57,2,NULL),(1910,36,73,2,NULL),(1911,45,29,2,NULL),(1912,193,57,2,NULL),(1913,38,73,2,NULL),(1914,50,29,2,NULL),(1915,201,57,2,NULL),(1916,53,73,2,NULL),(1917,246,57,2,NULL),(1918,51,29,2,NULL),(1919,58,73,2,NULL),(1920,55,29,2,NULL),(1921,248,57,2,NULL),(1922,121,73,2,NULL),(1923,94,70,2,NULL),(1924,60,29,2,NULL),(1925,184,73,2,NULL),(1926,97,70,2,NULL),(1927,64,29,2,NULL),(1928,202,73,2,NULL),(1929,68,29,2,NULL),(1930,99,70,2,NULL),(1931,204,73,2,NULL),(1932,102,70,2,NULL),(1933,70,29,2,NULL),(1934,207,73,2,NULL),(1935,52,29,2,NULL),(1936,107,70,2,NULL),(1937,211,73,2,NULL),(1938,129,29,2,NULL),(1939,178,70,2,NULL),(1940,213,73,2,NULL),(1941,185,70,2,NULL),(1942,133,29,2,NULL),(1943,29,81,2,NULL),(1944,136,29,2,NULL),(1945,190,70,2,NULL),(1946,36,81,2,NULL),(1947,140,29,2,NULL),(1948,193,70,2,NULL),(1949,38,81,2,NULL),(1950,201,70,2,NULL),(1951,142,29,2,NULL),(1952,53,81,2,NULL),(1953,146,29,2,NULL),(1954,246,70,2,NULL),(1955,58,81,2,NULL),(1956,148,29,2,NULL),(1957,248,70,2,NULL),(1958,121,81,2,NULL),(1959,94,85,2,NULL),(1960,150,29,2,NULL),(1961,184,81,2,NULL),(1962,97,85,2,NULL),(1963,137,29,2,NULL),(1964,202,81,2,NULL),(1965,99,85,2,NULL),(1966,45,68,2,NULL),(1967,204,81,2,NULL),(1968,50,68,2,NULL),(1969,102,85,2,NULL),(1970,207,81,2,NULL),(1971,51,68,2,NULL),(1972,107,85,2,NULL),(1973,211,81,2,NULL),(1974,178,85,2,NULL),(1975,55,68,2,NULL),(1976,213,81,2,NULL),(1977,185,85,2,NULL),(1978,60,68,2,NULL),(1979,29,83,2,NULL),(1980,64,68,2,NULL),(1981,190,85,2,NULL),(1982,36,83,2,NULL),(1983,68,68,2,NULL),(1984,193,85,2,NULL),(1985,38,83,2,NULL),(1986,70,68,2,NULL),(1987,201,85,2,NULL),(1988,53,83,2,NULL),(1989,52,68,2,NULL),(1990,246,85,2,NULL),(1991,58,83,2,NULL),(1992,129,68,2,NULL),(1993,248,85,2,NULL),(1994,121,83,2,NULL),(1995,133,68,2,NULL),(1996,72,30,2,NULL),(1997,184,83,2,NULL),(1998,136,68,2,NULL),(1999,94,24,2,NULL),(2000,202,83,2,NULL),(2001,140,68,2,NULL),(2002,97,24,2,NULL),(2003,204,83,2,NULL),(2004,142,68,2,NULL),(2005,99,24,2,NULL),(2006,207,83,2,NULL),(2007,146,68,2,NULL),(2008,102,24,2,NULL),(2009,211,83,2,NULL),(2010,107,24,2,NULL),(2011,148,68,2,NULL),(2012,213,83,2,NULL),(2013,150,68,2,NULL),(2014,178,24,2,NULL),(2015,29,86,2,NULL),(2016,137,68,2,NULL),(2017,185,24,2,NULL),(2018,36,86,2,NULL),(2019,45,74,2,NULL),(2020,190,24,2,NULL),(2021,38,86,2,NULL),(2022,50,74,2,NULL),(2023,193,24,2,NULL),(2024,53,86,2,NULL),(2025,51,74,2,NULL),(2026,201,24,2,NULL),(2027,58,86,2,NULL),(2028,246,24,2,NULL),(2029,55,74,2,NULL),(2030,121,86,2,NULL),(2031,248,24,2,NULL),(2032,60,74,2,NULL),(2033,184,86,2,NULL),(2034,94,27,2,NULL),(2035,64,74,2,NULL),(2036,202,86,2,NULL),(2037,97,27,2,NULL),(2038,68,74,2,NULL),(2039,204,86,2,NULL),(2040,70,74,2,NULL),(2041,99,27,2,NULL),(2042,207,86,2,NULL),(2043,102,27,2,NULL),(2044,52,74,2,NULL),(2045,211,86,2,NULL),(2046,129,74,2,NULL),(2047,107,27,2,NULL),(2048,213,86,2,NULL),(2049,178,27,2,NULL),(2050,133,74,2,NULL),(2051,29,32,2,NULL),(2052,185,27,2,NULL),(2053,136,74,2,NULL),(2054,36,32,2,NULL),(2055,190,27,2,NULL),(2056,140,74,2,NULL),(2057,38,32,2,NULL),(2058,142,74,2,NULL),(2059,193,27,2,NULL),(2060,53,32,2,NULL),(2061,146,74,2,NULL),(2062,201,27,2,NULL),(2063,58,32,2,NULL),(2064,148,74,2,NULL),(2065,246,27,2,NULL),(2066,121,32,2,NULL),(2067,248,27,2,NULL),(2068,150,74,2,NULL),(2069,184,32,2,NULL),(2070,94,29,2,NULL),(2071,137,74,2,NULL),(2072,202,32,2,NULL),(2073,45,75,2,NULL),(2074,97,29,2,NULL),(2075,204,32,2,NULL),(2076,50,75,2,NULL),(2077,99,29,2,NULL),(2078,207,32,2,NULL),(2079,51,75,2,NULL),(2080,102,29,2,NULL),(2081,211,32,2,NULL),(2082,107,29,2,NULL),(2083,55,75,2,NULL),(2084,213,32,2,NULL),(2085,178,29,2,NULL),(2086,100,15,2,NULL),(2087,60,75,2,NULL),(2088,185,29,2,NULL),(2089,113,15,2,NULL),(2090,64,75,2,NULL),(2091,190,29,2,NULL),(2092,120,15,2,NULL),(2093,68,75,2,NULL),(2094,193,29,2,NULL),(2095,124,15,2,NULL),(2096,70,75,2,NULL),(2097,201,29,2,NULL),(2098,127,15,2,NULL),(2099,52,75,2,NULL),(2100,246,29,2,NULL),(2101,151,15,2,NULL),(2102,129,75,2,NULL),(2103,248,29,2,NULL),(2104,133,75,2,NULL),(2105,158,15,2,NULL),(2106,94,68,2,NULL),(2107,136,75,2,NULL),(2108,97,68,2,NULL),(2109,192,15,2,NULL),(2110,140,75,2,NULL),(2111,194,15,2,NULL),(2112,99,68,2,NULL),(2113,142,75,2,NULL),(2114,198,15,2,NULL),(2115,102,68,2,NULL),(2116,146,75,2,NULL),(2117,200,15,2,NULL),(2118,148,75,2,NULL),(2119,107,68,2,NULL),(2120,203,15,2,NULL),(2121,150,75,2,NULL),(2122,178,68,2,NULL),(2123,245,15,2,NULL),(2124,137,75,2,NULL),(2125,185,68,2,NULL),(2126,29,39,2,NULL),(2127,45,77,2,NULL),(2128,190,68,2,NULL),(2129,36,39,2,NULL),(2130,50,77,2,NULL),(2131,193,68,2,NULL),(2132,38,39,2,NULL),(2133,51,77,2,NULL),(2134,201,68,2,NULL),(2135,53,39,2,NULL),(2136,55,77,2,NULL),(2137,246,68,2,NULL),(2138,58,39,2,NULL),(2139,60,77,2,NULL),(2140,248,68,2,NULL),(2141,121,39,2,NULL),(2142,64,77,2,NULL),(2143,94,74,2,NULL),(2144,184,39,2,NULL),(2145,68,77,2,NULL),(2146,97,74,2,NULL),(2147,202,39,2,NULL),(2148,70,77,2,NULL),(2149,99,74,2,NULL),(2150,204,39,2,NULL),(2151,52,77,2,NULL),(2152,102,74,2,NULL),(2153,207,39,2,NULL),(2154,129,77,2,NULL),(2155,107,74,2,NULL),(2156,211,39,2,NULL),(2157,133,77,2,NULL),(2158,178,74,2,NULL),(2159,213,39,2,NULL),(2160,136,77,2,NULL),(2161,185,74,2,NULL),(2162,29,42,2,NULL),(2163,140,77,2,NULL),(2164,190,74,2,NULL),(2165,36,42,2,NULL),(2166,142,77,2,NULL),(2167,193,74,2,NULL),(2168,38,42,2,NULL),(2169,201,74,2,NULL),(2170,146,77,2,NULL),(2171,53,42,2,NULL),(2172,246,74,2,NULL),(2173,148,77,2,NULL),(2174,58,42,2,NULL),(2175,248,74,2,NULL),(2176,150,77,2,NULL),(2177,121,42,2,NULL),(2178,94,75,2,NULL),(2179,137,77,2,NULL),(2180,184,42,2,NULL),(2181,97,75,2,NULL),(2182,45,82,2,NULL),(2183,202,42,2,NULL),(2184,50,82,2,NULL),(2185,99,75,2,NULL),(2186,204,42,2,NULL),(2187,51,82,2,NULL),(2188,102,75,2,NULL),(2189,207,42,2,NULL),(2190,55,82,2,NULL),(2191,107,75,2,NULL),(2192,211,42,2,NULL),(2193,60,82,2,NULL),(2194,213,42,2,NULL),(2195,64,82,2,NULL),(2196,29,43,2,NULL),(2197,178,75,2,NULL),(2198,68,82,2,NULL),(2199,36,43,2,NULL),(2200,70,82,2,NULL),(2201,185,75,2,NULL),(2202,38,43,2,NULL),(2203,52,82,2,NULL),(2204,190,75,2,NULL),(2205,53,43,2,NULL),(2206,129,82,2,NULL),(2207,193,75,2,NULL),(2208,58,43,2,NULL),(2209,201,75,2,NULL),(2210,133,82,2,NULL),(2211,121,43,2,NULL),(2212,246,75,2,NULL),(2213,136,82,2,NULL),(2214,184,43,2,NULL),(2215,248,75,2,NULL),(2216,140,82,2,NULL),(2217,202,43,2,NULL),(2218,142,82,2,NULL),(2219,94,77,2,NULL),(2220,204,43,2,NULL),(2221,146,82,2,NULL),(2222,97,77,2,NULL),(2223,207,43,2,NULL),(2224,99,77,2,NULL),(2225,148,82,2,NULL),(2226,211,43,2,NULL),(2227,150,82,2,NULL),(2228,102,77,2,NULL),(2229,213,43,2,NULL),(2230,107,77,2,NULL),(2231,137,82,2,NULL),(2232,29,55,2,NULL),(2233,178,77,2,NULL),(2234,36,55,2,NULL),(2235,185,77,2,NULL),(2236,153,6,2,NULL),(2237,38,55,2,NULL),(2238,190,77,2,NULL),(2239,45,36,2,NULL),(2240,53,55,2,NULL),(2241,50,36,2,NULL),(2242,193,77,2,NULL),(2243,58,55,2,NULL),(2244,51,36,2,NULL),(2245,201,77,2,NULL),(2246,121,55,2,NULL),(2247,55,36,2,NULL),(2248,246,77,2,NULL),(2249,184,55,2,NULL),(2250,60,36,2,NULL),(2251,248,77,2,NULL),(2252,202,55,2,NULL),(2253,94,82,2,NULL),(2254,64,36,2,NULL),(2255,204,55,2,NULL),(2256,97,82,2,NULL),(2257,207,55,2,NULL),(2258,68,36,2,NULL),(2259,99,82,2,NULL),(2260,211,55,2,NULL),(2261,70,36,2,NULL),(2262,102,82,2,NULL),(2263,213,55,2,NULL),(2264,52,36,2,NULL),(2265,107,82,2,NULL),(2266,129,36,2,NULL),(2267,29,72,2,NULL),(2268,178,82,2,NULL),(2269,36,72,2,NULL),(2270,133,36,2,NULL),(2271,185,82,2,NULL),(2272,38,72,2,NULL),(2273,136,36,2,NULL),(2274,190,82,2,NULL),(2275,140,36,2,NULL),(2276,53,72,2,NULL),(2277,193,82,2,NULL),(2278,142,36,2,NULL),(2279,58,72,2,NULL),(2280,201,82,2,NULL),(2281,121,72,2,NULL),(2282,146,36,2,NULL),(2283,246,82,2,NULL),(2284,184,72,2,NULL),(2285,148,36,2,NULL),(2286,248,82,2,NULL),(2287,202,72,2,NULL),(2288,150,36,2,NULL),(2289,153,30,2,NULL),(2290,204,72,2,NULL),(2291,137,36,2,NULL),(2292,94,36,2,NULL),(2293,207,72,2,NULL),(2294,45,40,2,NULL),(2295,97,36,2,NULL),(2296,50,40,2,NULL),(2297,211,72,2,NULL),(2298,99,36,2,NULL),(2299,51,40,2,NULL),(2300,213,72,2,NULL),(2301,102,36,2,NULL),(2302,55,40,2,NULL),(2303,29,78,2,NULL),(2304,107,36,2,NULL),(2305,60,40,2,NULL),(2306,36,78,2,NULL),(2307,178,36,2,NULL),(2308,38,78,2,NULL),(2309,64,40,2,NULL),(2310,185,36,2,NULL),(2311,53,78,2,NULL),(2312,68,40,2,NULL),(2313,190,36,2,NULL),(2314,70,40,2,NULL),(2315,58,78,2,NULL),(2316,193,36,2,NULL),(2317,121,78,2,NULL),(2318,52,40,2,NULL),(2319,201,36,2,NULL),(2320,129,40,2,NULL),(2321,184,78,2,NULL),(2322,246,36,2,NULL),(2323,133,40,2,NULL),(2324,202,78,2,NULL),(2325,248,36,2,NULL),(2326,136,40,2,NULL),(2327,204,78,2,NULL),(2328,94,40,2,NULL),(2329,140,40,2,NULL),(2330,207,78,2,NULL),(2331,97,40,2,NULL),(2332,142,40,2,NULL),(2333,211,78,2,NULL),(2334,99,40,2,NULL),(2335,146,40,2,NULL),(2336,213,78,2,NULL),(2337,102,40,2,NULL),(2338,148,40,2,NULL),(2339,29,79,2,NULL),(2340,107,40,2,NULL),(2341,36,79,2,NULL),(2342,150,40,2,NULL),(2343,178,40,2,NULL),(2344,137,40,2,NULL),(2345,38,79,2,NULL),(2346,185,40,2,NULL),(2347,45,41,2,NULL),(2348,53,79,2,NULL),(2349,190,40,2,NULL),(2350,50,41,2,NULL),(2351,58,79,2,NULL),(2352,193,40,2,NULL),(2353,51,41,2,NULL),(2354,121,79,2,NULL),(2355,201,40,2,NULL),(2356,55,41,2,NULL),(2357,184,79,2,NULL),(2358,246,40,2,NULL),(2359,60,41,2,NULL),(2360,202,79,2,NULL),(2361,248,40,2,NULL),(2362,204,79,2,NULL),(2363,64,41,2,NULL),(2364,94,41,2,NULL),(2365,207,79,2,NULL),(2366,68,41,2,NULL),(2367,97,41,2,NULL),(2368,211,79,2,NULL),(2369,70,41,2,NULL),(2370,99,41,2,NULL),(2371,213,79,2,NULL),(2372,52,41,2,NULL),(2373,102,41,2,NULL),(2374,29,80,2,NULL),(2375,129,41,2,NULL),(2376,107,41,2,NULL),(2377,36,80,2,NULL),(2378,133,41,2,NULL),(2379,178,41,2,NULL),(2380,136,41,2,NULL),(2381,38,80,2,NULL),(2382,185,41,2,NULL),(2383,140,41,2,NULL),(2384,53,80,2,NULL),(2385,190,41,2,NULL),(2386,142,41,2,NULL),(2387,58,80,2,NULL),(2388,193,41,2,NULL),(2389,146,41,2,NULL),(2390,121,80,2,NULL),(2391,201,41,2,NULL),(2392,184,80,2,NULL),(2393,148,41,2,NULL),(2394,246,41,2,NULL),(2395,202,80,2,NULL),(2396,150,41,2,NULL),(2397,248,41,2,NULL),(2398,204,80,2,NULL),(2399,137,41,2,NULL),(2400,94,53,2,NULL),(2401,45,53,2,NULL),(2402,207,80,2,NULL),(2403,97,53,2,NULL),(2404,211,80,2,NULL),(2405,50,53,2,NULL),(2406,99,53,2,NULL),(2407,51,53,2,NULL),(2408,213,80,2,NULL),(2409,102,53,2,NULL),(2410,55,53,2,NULL),(2411,72,7,2,NULL),(2412,107,53,2,NULL),(2413,60,53,2,NULL),(2414,72,14,2,NULL),(2415,178,53,2,NULL),(2416,64,53,2,NULL),(2417,72,18,2,NULL),(2418,185,53,2,NULL),(2419,68,53,2,NULL),(2420,72,22,2,NULL),(2421,190,53,2,NULL),(2422,70,53,2,NULL),(2423,72,52,2,NULL),(2424,193,53,2,NULL),(2425,52,53,2,NULL),(2426,72,56,2,NULL),(2427,201,53,2,NULL),(2428,129,53,2,NULL),(2429,72,63,2,NULL),(2430,246,53,2,NULL),(2431,133,53,2,NULL),(2432,72,10,2,NULL),(2433,248,53,2,NULL),(2434,136,53,2,NULL),(2435,72,20,2,NULL),(2436,94,73,2,NULL),(2437,140,53,2,NULL),(2438,72,26,2,NULL),(2439,97,73,2,NULL),(2440,142,53,2,NULL),(2441,72,28,2,NULL),(2442,99,73,2,NULL),(2443,72,49,2,NULL),(2444,146,53,2,NULL),(2445,102,73,2,NULL),(2446,148,53,2,NULL),(2447,72,50,2,NULL),(2448,107,73,2,NULL),(2449,150,53,2,NULL),(2450,72,57,2,NULL),(2451,178,73,2,NULL),(2452,39,16,2,NULL),(2453,72,70,2,NULL),(2454,137,53,2,NULL),(2455,185,73,2,NULL),(2456,39,21,2,NULL),(2457,72,85,2,NULL),(2458,45,73,2,NULL),(2459,190,73,2,NULL),(2460,50,73,2,NULL),(2461,39,33,2,NULL),(2462,72,24,2,NULL),(2463,193,73,2,NULL),(2464,51,73,2,NULL),(2465,72,27,2,NULL),(2466,39,37,2,NULL),(2467,201,73,2,NULL),(2468,72,29,2,NULL),(2469,55,73,2,NULL),(2470,246,73,2,NULL),(2471,72,68,2,NULL),(2472,60,73,2,NULL),(2473,95,20,2,NULL),(2474,248,73,2,NULL),(2475,64,73,2,NULL),(2476,72,74,2,NULL),(2477,95,24,2,NULL),(2478,94,81,2,NULL),(2479,72,75,2,NULL),(2480,68,73,2,NULL),(2481,97,81,2,NULL),(2482,95,36,2,NULL),(2483,72,77,2,NULL),(2484,70,73,2,NULL),(2485,99,81,2,NULL),(2486,52,73,2,NULL),(2487,72,82,2,NULL),(2488,95,39,2,NULL),(2489,102,81,2,NULL),(2490,129,73,2,NULL),(2491,72,36,2,NULL),(2492,107,81,2,NULL),(2493,103,20,2,NULL),(2494,133,73,2,NULL),(2495,72,40,2,NULL),(2496,178,81,2,NULL),(2497,72,41,2,NULL),(2498,136,73,2,NULL),(2499,103,24,2,NULL),(2500,185,81,2,NULL),(2501,72,53,2,NULL),(2502,140,73,2,NULL),(2503,190,81,2,NULL),(2504,103,36,2,NULL),(2505,142,73,2,NULL),(2506,72,73,2,NULL),(2507,193,81,2,NULL),(2508,72,81,2,NULL),(2509,146,73,2,NULL),(2510,103,39,2,NULL),(2511,201,81,2,NULL),(2512,148,73,2,NULL),(2513,72,83,2,NULL),(2514,246,81,2,NULL),(2515,108,20,2,NULL),(2516,150,73,2,NULL),(2517,72,86,2,NULL),(2518,248,81,2,NULL),(2519,137,73,2,NULL),(2520,72,32,2,NULL),(2521,108,24,2,NULL),(2522,94,83,2,NULL),(2523,72,39,2,NULL),(2524,45,81,2,NULL),(2525,108,36,2,NULL),(2526,97,83,2,NULL),(2527,50,81,2,NULL),(2528,108,39,2,NULL),(2529,72,42,2,NULL),(2530,99,83,2,NULL),(2531,51,81,2,NULL),(2532,72,43,2,NULL),(2533,114,20,2,NULL),(2534,102,83,2,NULL),(2535,55,81,2,NULL),(2536,72,55,2,NULL),(2537,107,83,2,NULL),(2538,114,24,2,NULL),(2539,60,81,2,NULL),(2540,178,83,2,NULL),(2541,72,72,2,NULL),(2542,64,81,2,NULL),(2543,114,36,2,NULL),(2544,185,83,2,NULL),(2545,68,81,2,NULL),(2546,72,78,2,NULL),(2547,114,39,2,NULL),(2548,190,83,2,NULL),(2549,70,81,2,NULL),(2550,72,79,2,NULL),(2551,193,83,2,NULL),(2552,132,20,2,NULL),(2553,52,81,2,NULL),(2554,72,80,2,NULL),(2555,201,83,2,NULL),(2556,132,24,2,NULL),(2557,129,81,2,NULL),(2558,246,83,2,NULL),(2559,133,81,2,NULL),(2560,132,36,2,NULL),(2561,65,24,2,NULL),(2562,248,83,2,NULL),(2563,136,81,2,NULL),(2564,94,86,2,NULL),(2565,74,24,2,NULL),(2566,132,39,2,NULL),(2567,140,81,2,NULL),(2568,97,86,2,NULL),(2569,81,24,2,NULL),(2570,142,81,2,NULL),(2571,167,16,2,NULL),(2572,99,86,2,NULL),(2573,85,24,2,NULL),(2574,146,81,2,NULL),(2575,102,86,2,NULL),(2576,88,24,2,NULL),(2577,167,21,2,NULL),(2578,148,81,2,NULL),(2579,107,86,2,NULL),(2580,92,24,2,NULL),(2581,167,33,2,NULL),(2582,150,81,2,NULL),(2583,178,86,2,NULL),(2584,206,24,2,NULL),(2585,137,81,2,NULL),(2586,167,37,2,NULL),(2587,185,86,2,NULL),(2588,209,24,2,NULL),(2589,45,83,2,NULL),(2590,190,86,2,NULL),(2591,212,24,2,NULL),(2592,50,83,2,NULL),(2593,193,86,2,NULL),(2594,216,24,2,NULL),(2595,51,83,2,NULL),(2596,201,86,2,NULL),(2597,218,24,2,NULL),(2598,55,83,2,NULL),(2599,246,86,2,NULL),(2600,238,24,2,NULL),(2601,60,83,2,NULL),(2602,248,86,2,NULL),(2603,230,24,2,NULL),(2604,100,6,2,NULL),(2605,64,83,2,NULL),(2606,94,32,2,NULL),(2607,113,6,2,NULL),(2608,153,24,2,NULL),(2609,68,83,2,NULL),(2610,97,32,2,NULL),(2611,120,6,2,NULL),(2612,70,83,2,NULL),(2613,100,24,2,NULL),(2614,99,32,2,NULL),(2615,52,83,2,NULL),(2616,113,24,2,NULL),(2617,124,6,2,NULL),(2618,102,32,2,NULL),(2619,129,83,2,NULL),(2620,120,24,2,NULL),(2621,127,6,2,NULL),(2622,107,32,2,NULL),(2623,133,83,2,NULL),(2624,124,24,2,NULL),(2625,151,6,2,NULL),(2626,178,32,2,NULL),(2627,136,83,2,NULL),(2628,127,24,2,NULL),(2629,185,32,2,NULL),(2630,158,6,2,NULL),(2631,140,83,2,NULL),(2632,151,24,2,NULL),(2633,190,32,2,NULL),(2634,142,83,2,NULL),(2635,158,24,2,NULL),(2636,192,6,2,NULL),(2637,193,32,2,NULL),(2638,146,83,2,NULL),(2639,192,24,2,NULL),(2640,201,32,2,NULL),(2641,194,6,2,NULL),(2642,148,83,2,NULL),(2643,194,24,2,NULL),(2644,246,32,2,NULL),(2645,198,6,2,NULL),(2646,150,83,2,NULL),(2647,198,24,2,NULL),(2648,248,32,2,NULL),(2649,200,6,2,NULL),(2650,137,83,2,NULL),(2651,200,24,2,NULL),(2652,100,30,2,NULL),(2653,203,6,2,NULL),(2654,45,86,2,NULL),(2655,203,24,2,NULL),(2656,113,30,2,NULL),(2657,45,32,2,NULL),(2658,50,86,2,NULL),(2659,245,24,2,NULL),(2660,120,30,2,NULL),(2661,50,32,2,NULL),(2662,51,86,2,NULL),(2663,124,30,2,NULL),(2664,51,32,2,NULL),(2665,55,86,2,NULL),(2666,65,27,2,NULL),(2667,127,30,2,NULL),(2668,55,32,2,NULL),(2669,60,86,2,NULL),(2670,74,27,2,NULL),(2671,151,30,2,NULL),(2672,60,32,2,NULL),(2673,64,86,2,NULL),(2674,81,27,2,NULL),(2675,158,30,2,NULL),(2676,64,32,2,NULL),(2677,68,86,2,NULL),(2678,85,27,2,NULL),(2679,192,30,2,NULL),(2680,68,32,2,NULL),(2681,70,86,2,NULL),(2682,88,27,2,NULL),(2683,194,30,2,NULL),(2684,70,32,2,NULL),(2685,52,86,2,NULL),(2686,92,27,2,NULL),(2687,198,30,2,NULL),(2688,52,32,2,NULL),(2689,129,86,2,NULL),(2690,206,27,2,NULL),(2691,200,30,2,NULL),(2692,129,32,2,NULL),(2693,209,27,2,NULL),(2694,133,86,2,NULL),(2695,203,30,2,NULL),(2696,133,32,2,NULL),(2697,136,86,2,NULL),(2698,212,27,2,NULL),(2699,245,30,2,NULL),(2700,136,32,2,NULL),(2701,140,86,2,NULL),(2702,216,27,2,NULL),(2703,94,39,2,NULL),(2704,140,32,2,NULL),(2705,142,86,2,NULL),(2706,218,27,2,NULL),(2707,97,39,2,NULL),(2708,142,32,2,NULL),(2709,146,86,2,NULL),(2710,238,27,2,NULL),(2711,99,39,2,NULL),(2712,146,32,2,NULL),(2713,148,86,2,NULL),(2714,230,27,2,NULL),(2715,102,39,2,NULL),(2716,148,32,2,NULL),(2717,150,86,2,NULL),(2718,107,39,2,NULL),(2719,150,32,2,NULL),(2720,137,86,2,NULL),(2721,153,27,2,NULL),(2722,178,39,2,NULL),(2723,137,32,2,NULL),(2724,100,27,2,NULL),(2725,185,39,2,NULL),(2726,100,7,2,NULL),(2727,113,27,2,NULL),(2728,245,6,2,NULL),(2729,190,39,2,NULL),(2730,113,7,2,NULL),(2731,120,27,2,NULL),(2732,45,39,2,NULL),(2733,193,39,2,NULL),(2734,120,7,2,NULL),(2735,124,27,2,NULL),(2736,50,39,2,NULL),(2737,201,39,2,NULL),(2738,124,7,2,NULL),(2739,127,27,2,NULL),(2740,51,39,2,NULL),(2741,246,39,2,NULL),(2742,127,7,2,NULL),(2743,151,27,2,NULL),(2744,55,39,2,NULL),(2745,248,39,2,NULL),(2746,151,7,2,NULL),(2747,158,27,2,NULL),(2748,60,39,2,NULL),(2749,94,42,2,NULL),(2750,158,7,2,NULL),(2751,192,27,2,NULL),(2752,64,39,2,NULL),(2753,97,42,2,NULL),(2754,192,7,2,NULL),(2755,194,27,2,NULL),(2756,68,39,2,NULL),(2757,99,42,2,NULL),(2758,194,7,2,NULL),(2759,198,27,2,NULL),(2760,70,39,2,NULL),(2761,102,42,2,NULL),(2762,198,7,2,NULL),(2763,200,27,2,NULL),(2764,52,39,2,NULL),(2765,107,42,2,NULL),(2766,200,7,2,NULL),(2767,203,27,2,NULL),(2768,129,39,2,NULL),(2769,178,42,2,NULL),(2770,203,7,2,NULL),(2771,245,27,2,NULL),(2772,133,39,2,NULL),(2773,185,42,2,NULL),(2774,100,14,2,NULL),(2775,75,26,2,NULL),(2776,136,39,2,NULL),(2777,190,42,2,NULL),(2778,113,14,2,NULL),(2779,75,27,2,NULL),(2780,140,39,2,NULL),(2781,193,42,2,NULL),(2782,120,14,2,NULL),(2783,75,40,2,NULL),(2784,142,39,2,NULL),(2785,201,42,2,NULL),(2786,124,14,2,NULL),(2787,75,42,2,NULL),(2788,146,39,2,NULL),(2789,246,42,2,NULL),(2790,127,14,2,NULL),(2791,148,39,2,NULL),(2792,248,42,2,NULL),(2793,151,14,2,NULL),(2794,150,39,2,NULL),(2795,65,29,2,NULL),(2796,94,43,2,NULL),(2797,158,14,2,NULL),(2798,74,29,2,NULL),(2799,137,39,2,NULL),(2800,97,43,2,NULL),(2801,192,14,2,NULL),(2802,81,29,2,NULL),(2803,45,42,2,NULL),(2804,99,43,2,NULL),(2805,194,14,2,NULL),(2806,85,29,2,NULL),(2807,50,42,2,NULL),(2808,102,43,2,NULL),(2809,198,14,2,NULL),(2810,88,29,2,NULL),(2811,51,42,2,NULL),(2812,107,43,2,NULL),(2813,200,14,2,NULL),(2814,55,42,2,NULL),(2815,92,29,2,NULL),(2816,178,43,2,NULL),(2817,203,14,2,NULL),(2818,60,42,2,NULL),(2819,206,29,2,NULL),(2820,185,43,2,NULL),(2821,100,18,2,NULL),(2822,64,42,2,NULL),(2823,209,29,2,NULL),(2824,190,43,2,NULL),(2825,113,18,2,NULL),(2826,212,29,2,NULL),(2827,68,42,2,NULL),(2828,193,43,2,NULL),(2829,120,18,2,NULL),(2830,70,42,2,NULL),(2831,216,29,2,NULL),(2832,201,43,2,NULL),(2833,124,18,2,NULL),(2834,52,42,2,NULL),(2835,218,29,2,NULL),(2836,246,43,2,NULL),(2837,127,18,2,NULL),(2838,129,42,2,NULL),(2839,238,29,2,NULL),(2840,248,43,2,NULL),(2841,151,18,2,NULL),(2842,133,42,2,NULL),(2843,230,29,2,NULL),(2844,94,55,2,NULL),(2845,158,18,2,NULL),(2846,136,42,2,NULL),(2847,97,55,2,NULL),(2848,192,18,2,NULL),(2849,153,29,2,NULL),(2850,140,42,2,NULL),(2851,99,55,2,NULL),(2852,194,18,2,NULL),(2853,142,42,2,NULL),(2854,100,29,2,NULL),(2855,102,55,2,NULL),(2856,198,18,2,NULL),(2857,113,29,2,NULL),(2858,146,42,2,NULL),(2859,107,55,2,NULL),(2860,200,18,2,NULL),(2861,120,29,2,NULL),(2862,148,42,2,NULL),(2863,178,55,2,NULL),(2864,203,18,2,NULL),(2865,150,42,2,NULL),(2866,124,29,2,NULL),(2867,185,55,2,NULL),(2868,100,22,2,NULL),(2869,127,29,2,NULL),(2870,137,42,2,NULL),(2871,190,55,2,NULL),(2872,113,22,2,NULL),(2873,45,43,2,NULL),(2874,151,29,2,NULL),(2875,193,55,2,NULL),(2876,120,22,2,NULL),(2877,50,43,2,NULL),(2878,158,29,2,NULL),(2879,201,55,2,NULL),(2880,124,22,2,NULL),(2881,51,43,2,NULL),(2882,192,29,2,NULL),(2883,246,55,2,NULL),(2884,127,22,2,NULL),(2885,55,43,2,NULL),(2886,194,29,2,NULL),(2887,248,55,2,NULL),(2888,151,22,2,NULL),(2889,60,43,2,NULL),(2890,198,29,2,NULL),(2891,94,72,2,NULL),(2892,158,22,2,NULL),(2893,64,43,2,NULL),(2894,200,29,2,NULL),(2895,97,72,2,NULL),(2896,192,22,2,NULL),(2897,68,43,2,NULL),(2898,203,29,2,NULL),(2899,99,72,2,NULL),(2900,194,22,2,NULL),(2901,70,43,2,NULL),(2902,245,29,2,NULL),(2903,102,72,2,NULL),(2904,198,22,2,NULL),(2905,52,43,2,NULL),(2906,107,72,2,NULL),(2907,200,22,2,NULL),(2908,129,43,2,NULL),(2909,65,68,2,NULL),(2910,178,72,2,NULL),(2911,203,22,2,NULL),(2912,133,43,2,NULL),(2913,74,68,2,NULL),(2914,185,72,2,NULL),(2915,100,52,2,NULL),(2916,81,68,2,NULL),(2917,136,43,2,NULL),(2918,190,72,2,NULL),(2919,113,52,2,NULL),(2920,140,43,2,NULL),(2921,85,68,2,NULL),(2922,193,72,2,NULL),(2923,120,52,2,NULL),(2924,88,68,2,NULL),(2925,142,43,2,NULL),(2926,201,72,2,NULL),(2927,124,52,2,NULL),(2928,146,43,2,NULL),(2929,92,68,2,NULL),(2930,246,72,2,NULL),(2931,127,52,2,NULL),(2932,148,43,2,NULL),(2933,206,68,2,NULL),(2934,248,72,2,NULL),(2935,151,52,2,NULL),(2936,209,68,2,NULL),(2937,150,43,2,NULL),(2938,94,78,2,NULL),(2939,158,52,2,NULL),(2940,137,43,2,NULL),(2941,212,68,2,NULL),(2942,97,78,2,NULL),(2943,192,52,2,NULL),(2944,45,55,2,NULL),(2945,216,68,2,NULL),(2946,99,78,2,NULL),(2947,194,52,2,NULL),(2948,218,68,2,NULL),(2949,50,55,2,NULL),(2950,102,78,2,NULL),(2951,198,52,2,NULL),(2952,238,68,2,NULL),(2953,51,55,2,NULL),(2954,107,78,2,NULL),(2955,200,52,2,NULL),(2956,55,55,2,NULL),(2957,230,68,2,NULL),(2958,178,78,2,NULL),(2959,203,52,2,NULL),(2960,60,55,2,NULL),(2961,185,78,2,NULL),(2962,100,56,2,NULL),(2963,64,55,2,NULL),(2964,153,68,2,NULL),(2965,190,78,2,NULL),(2966,113,56,2,NULL),(2967,68,55,2,NULL),(2968,100,68,2,NULL),(2969,193,78,2,NULL),(2970,120,56,2,NULL),(2971,70,55,2,NULL),(2972,113,68,2,NULL),(2973,201,78,2,NULL),(2974,124,56,2,NULL),(2975,52,55,2,NULL),(2976,120,68,2,NULL),(2977,246,78,2,NULL),(2978,127,56,2,NULL),(2979,129,55,2,NULL),(2980,124,68,2,NULL),(2981,248,78,2,NULL),(2982,151,56,2,NULL),(2983,133,55,2,NULL),(2984,127,68,2,NULL),(2985,94,79,2,NULL),(2986,158,56,2,NULL),(2987,136,55,2,NULL),(2988,151,68,2,NULL),(2989,97,79,2,NULL),(2990,192,56,2,NULL),(2991,140,55,2,NULL),(2992,158,68,2,NULL),(2993,99,79,2,NULL),(2994,194,56,2,NULL),(2995,142,55,2,NULL),(2996,192,68,2,NULL),(2997,102,79,2,NULL),(2998,198,56,2,NULL),(2999,146,55,2,NULL),(3000,194,68,2,NULL),(3001,107,79,2,NULL),(3002,200,56,2,NULL),(3003,148,55,2,NULL),(3004,198,68,2,NULL),(3005,178,79,2,NULL),(3006,203,56,2,NULL),(3007,150,55,2,NULL),(3008,200,68,2,NULL),(3009,185,79,2,NULL),(3010,100,63,2,NULL),(3011,137,55,2,NULL),(3012,203,68,2,NULL),(3013,190,79,2,NULL),(3014,113,63,2,NULL),(3015,45,72,2,NULL),(3016,245,68,2,NULL),(3017,193,79,2,NULL),(3018,120,63,2,NULL),(3019,50,72,2,NULL),(3020,201,79,2,NULL),(3021,124,63,2,NULL),(3022,51,72,2,NULL),(3023,65,74,2,NULL),(3024,246,79,2,NULL),(3025,127,63,2,NULL),(3026,55,72,2,NULL),(3027,74,74,2,NULL),(3028,248,79,2,NULL),(3029,151,63,2,NULL),(3030,81,74,2,NULL),(3031,60,72,2,NULL),(3032,94,80,2,NULL),(3033,158,63,2,NULL),(3034,85,74,2,NULL),(3035,64,72,2,NULL),(3036,97,80,2,NULL),(3037,192,63,2,NULL),(3038,68,72,2,NULL),(3039,88,74,2,NULL),(3040,99,80,2,NULL),(3041,194,63,2,NULL),(3042,70,72,2,NULL),(3043,92,74,2,NULL),(3044,102,80,2,NULL),(3045,198,63,2,NULL),(3046,206,74,2,NULL),(3047,52,72,2,NULL),(3048,107,80,2,NULL),(3049,200,63,2,NULL),(3050,129,72,2,NULL),(3051,178,80,2,NULL),(3052,209,74,2,NULL),(3053,203,63,2,NULL),(3054,133,72,2,NULL),(3055,185,80,2,NULL),(3056,212,74,2,NULL),(3057,100,10,2,NULL),(3058,136,72,2,NULL),(3059,216,74,2,NULL),(3060,190,80,2,NULL),(3061,113,10,2,NULL),(3062,140,72,2,NULL),(3063,193,80,2,NULL),(3064,218,74,2,NULL),(3065,142,72,2,NULL),(3066,120,10,2,NULL),(3067,201,80,2,NULL),(3068,146,72,2,NULL),(3069,238,74,2,NULL),(3070,246,80,2,NULL),(3071,124,10,2,NULL),(3072,148,72,2,NULL),(3073,230,74,2,NULL),(3074,248,80,2,NULL),(3075,127,10,2,NULL),(3076,150,72,2,NULL),(3077,151,10,2,NULL),(3078,153,7,2,NULL),(3079,137,72,2,NULL),(3080,153,74,2,NULL),(3081,158,10,2,NULL),(3082,45,78,2,NULL),(3083,100,74,2,NULL),(3084,153,14,2,NULL),(3085,192,10,2,NULL),(3086,50,78,2,NULL),(3087,153,18,2,NULL),(3088,113,74,2,NULL),(3089,194,10,2,NULL),(3090,120,74,2,NULL),(3091,51,78,2,NULL),(3092,153,22,2,NULL),(3093,198,10,2,NULL),(3094,55,78,2,NULL),(3095,124,74,2,NULL),(3096,153,52,2,NULL),(3097,200,10,2,NULL),(3098,60,78,2,NULL),(3099,127,74,2,NULL),(3100,153,56,2,NULL),(3101,203,10,2,NULL),(3102,64,78,2,NULL),(3103,151,74,2,NULL),(3104,153,63,2,NULL),(3105,65,32,2,NULL),(3106,68,78,2,NULL),(3107,158,74,2,NULL),(3108,153,10,2,NULL),(3109,74,32,2,NULL),(3110,70,78,2,NULL),(3111,192,74,2,NULL),(3112,153,20,2,NULL),(3113,81,32,2,NULL),(3114,52,78,2,NULL),(3115,194,74,2,NULL),(3116,153,26,2,NULL),(3117,85,32,2,NULL),(3118,129,78,2,NULL),(3119,198,74,2,NULL),(3120,153,28,2,NULL),(3121,88,32,2,NULL),(3122,133,78,2,NULL),(3123,200,74,2,NULL),(3124,153,49,2,NULL),(3125,92,32,2,NULL),(3126,136,78,2,NULL),(3127,203,74,2,NULL),(3128,153,50,2,NULL),(3129,206,32,2,NULL),(3130,140,78,2,NULL),(3131,245,74,2,NULL),(3132,153,57,2,NULL),(3133,209,32,2,NULL),(3134,142,78,2,NULL),(3135,153,70,2,NULL),(3136,212,32,2,NULL),(3137,146,78,2,NULL),(3138,65,75,2,NULL),(3139,153,85,2,NULL),(3140,216,32,2,NULL),(3141,148,78,2,NULL),(3142,74,75,2,NULL),(3143,153,75,2,NULL),(3144,218,32,2,NULL),(3145,150,78,2,NULL),(3146,81,75,2,NULL),(3147,153,77,2,NULL),(3148,238,32,2,NULL),(3149,137,78,2,NULL),(3150,85,75,2,NULL),(3151,153,82,2,NULL),(3152,230,32,2,NULL),(3153,45,79,2,NULL),(3154,88,75,2,NULL),(3155,153,36,2,NULL),(3156,100,20,2,NULL),(3157,50,79,2,NULL),(3158,92,75,2,NULL),(3159,153,40,2,NULL),(3160,113,20,2,NULL),(3161,153,41,2,NULL),(3162,51,79,2,NULL),(3163,206,75,2,NULL),(3164,120,20,2,NULL),(3165,209,75,2,NULL),(3166,55,79,2,NULL),(3167,153,53,2,NULL),(3168,124,20,2,NULL),(3169,212,75,2,NULL),(3170,153,73,2,NULL),(3171,60,79,2,NULL),(3172,127,20,2,NULL),(3173,64,79,2,NULL),(3174,153,81,2,NULL),(3175,216,75,2,NULL),(3176,151,20,2,NULL),(3177,68,79,2,NULL),(3178,218,75,2,NULL),(3179,153,83,2,NULL),(3180,158,20,2,NULL),(3181,238,75,2,NULL),(3182,70,79,2,NULL),(3183,153,86,2,NULL),(3184,192,20,2,NULL),(3185,52,79,2,NULL),(3186,153,32,2,NULL),(3187,230,75,2,NULL),(3188,194,20,2,NULL),(3189,129,79,2,NULL),(3190,153,39,2,NULL),(3191,100,75,2,NULL),(3192,198,20,2,NULL),(3193,113,75,2,NULL),(3194,153,42,2,NULL),(3195,133,79,2,NULL),(3196,200,20,2,NULL),(3197,120,75,2,NULL),(3198,153,43,2,NULL),(3199,136,79,2,NULL),(3200,203,20,2,NULL),(3201,124,75,2,NULL),(3202,153,55,2,NULL),(3203,140,79,2,NULL),(3204,100,26,2,NULL),(3205,127,75,2,NULL),(3206,153,72,2,NULL),(3207,142,79,2,NULL),(3208,113,26,2,NULL),(3209,151,75,2,NULL),(3210,153,78,2,NULL),(3211,146,79,2,NULL),(3212,120,26,2,NULL),(3213,158,75,2,NULL),(3214,148,79,2,NULL),(3215,153,79,2,NULL),(3216,124,26,2,NULL),(3217,192,75,2,NULL),(3218,150,79,2,NULL),(3219,153,80,2,NULL),(3220,127,26,2,NULL),(3221,194,75,2,NULL),(3222,137,79,2,NULL),(3223,151,26,2,NULL),(3224,198,75,2,NULL),(3225,45,80,2,NULL),(3226,65,36,2,NULL),(3227,158,26,2,NULL),(3228,200,75,2,NULL),(3229,50,80,2,NULL),(3230,74,36,2,NULL),(3231,192,26,2,NULL),(3232,203,75,2,NULL),(3233,51,80,2,NULL),(3234,194,26,2,NULL),(3235,81,36,2,NULL),(3236,245,75,2,NULL),(3237,55,80,2,NULL),(3238,198,26,2,NULL),(3239,85,36,2,NULL),(3240,60,80,2,NULL),(3241,200,26,2,NULL),(3242,88,36,2,NULL),(3243,65,77,2,NULL),(3244,64,80,2,NULL),(3245,203,26,2,NULL),(3246,92,36,2,NULL),(3247,74,77,2,NULL),(3248,68,80,2,NULL),(3249,100,28,2,NULL),(3250,206,36,2,NULL),(3251,81,77,2,NULL),(3252,70,80,2,NULL),(3253,209,36,2,NULL),(3254,113,28,2,NULL),(3255,52,80,2,NULL),(3256,212,36,2,NULL),(3257,120,28,2,NULL),(3258,129,80,2,NULL),(3259,85,77,2,NULL),(3260,216,36,2,NULL),(3261,124,28,2,NULL),(3262,133,80,2,NULL),(3263,88,77,2,NULL),(3264,127,28,2,NULL),(3265,218,36,2,NULL),(3266,136,80,2,NULL),(3267,92,77,2,NULL),(3268,151,28,2,NULL),(3269,238,36,2,NULL),(3270,140,80,2,NULL),(3271,206,77,2,NULL),(3272,158,28,2,NULL),(3273,230,36,2,NULL),(3274,142,80,2,NULL),(3275,209,77,2,NULL),(3276,192,28,2,NULL),(3277,146,80,2,NULL),(3278,212,77,2,NULL),(3279,194,28,2,NULL),(3280,148,80,2,NULL),(3281,100,36,2,NULL),(3282,216,77,2,NULL),(3283,198,28,2,NULL),(3284,150,80,2,NULL),(3285,113,36,2,NULL),(3286,218,77,2,NULL),(3287,200,28,2,NULL),(3288,137,80,2,NULL),(3289,120,36,2,NULL),(3290,238,77,2,NULL),(3291,203,28,2,NULL),(3292,124,36,2,NULL),(3293,230,77,2,NULL),(3294,100,49,2,NULL),(3295,127,36,2,NULL),(3296,65,7,2,NULL),(3297,113,49,2,NULL),(3298,100,77,2,NULL),(3299,151,36,2,NULL),(3300,113,77,2,NULL),(3301,120,49,2,NULL),(3302,74,7,2,NULL),(3303,158,36,2,NULL),(3304,120,77,2,NULL),(3305,124,49,2,NULL),(3306,81,7,2,NULL),(3307,192,36,2,NULL),(3308,124,77,2,NULL),(3309,85,7,2,NULL),(3310,127,49,2,NULL),(3311,194,36,2,NULL),(3312,127,77,2,NULL),(3313,88,7,2,NULL),(3314,151,49,2,NULL),(3315,198,36,2,NULL),(3316,151,77,2,NULL),(3317,92,7,2,NULL),(3318,158,49,2,NULL),(3319,200,36,2,NULL),(3320,158,77,2,NULL),(3321,192,49,2,NULL),(3322,206,7,2,NULL),(3323,203,36,2,NULL),(3324,192,77,2,NULL),(3325,194,49,2,NULL),(3326,209,7,2,NULL),(3327,245,36,2,NULL),(3328,194,77,2,NULL),(3329,198,49,2,NULL),(3330,212,7,2,NULL),(3331,198,77,2,NULL),(3332,200,49,2,NULL),(3333,216,7,2,NULL),(3334,65,40,2,NULL),(3335,200,77,2,NULL),(3336,74,40,2,NULL),(3337,218,7,2,NULL),(3338,203,49,2,NULL),(3339,203,77,2,NULL),(3340,81,40,2,NULL),(3341,100,50,2,NULL),(3342,238,7,2,NULL),(3343,245,77,2,NULL),(3344,85,40,2,NULL),(3345,230,7,2,NULL),(3346,113,50,2,NULL),(3347,88,40,2,NULL),(3348,120,50,2,NULL),(3349,92,40,2,NULL),(3350,65,82,2,NULL),(3351,124,50,2,NULL),(3352,74,82,2,NULL),(3353,206,40,2,NULL),(3354,127,50,2,NULL),(3355,245,7,2,NULL),(3356,81,82,2,NULL),(3357,209,40,2,NULL),(3358,151,50,2,NULL),(3359,85,82,2,NULL),(3360,212,40,2,NULL),(3361,158,50,2,NULL),(3362,88,82,2,NULL),(3363,216,40,2,NULL),(3364,192,50,2,NULL),(3365,92,82,2,NULL),(3366,218,40,2,NULL),(3367,65,14,2,NULL),(3368,194,50,2,NULL),(3369,206,82,2,NULL),(3370,238,40,2,NULL),(3371,74,14,2,NULL),(3372,198,50,2,NULL),(3373,230,40,2,NULL),(3374,209,82,2,NULL),(3375,81,14,2,NULL),(3376,200,50,2,NULL),(3377,212,82,2,NULL),(3378,85,14,2,NULL),(3379,203,50,2,NULL),(3380,216,82,2,NULL),(3381,88,14,2,NULL),(3382,100,40,2,NULL),(3383,100,57,2,NULL),(3384,113,40,2,NULL),(3385,218,82,2,NULL),(3386,92,14,2,NULL),(3387,113,57,2,NULL),(3388,120,40,2,NULL),(3389,238,82,2,NULL),(3390,206,14,2,NULL),(3391,120,57,2,NULL),(3392,230,82,2,NULL),(3393,124,40,2,NULL),(3394,209,14,2,NULL),(3395,124,57,2,NULL),(3396,127,40,2,NULL),(3397,212,14,2,NULL),(3398,127,57,2,NULL),(3399,151,40,2,NULL),(3400,216,14,2,NULL),(3401,100,82,2,NULL),(3402,151,57,2,NULL),(3403,158,40,2,NULL),(3404,113,82,2,NULL),(3405,218,14,2,NULL),(3406,158,57,2,NULL),(3407,120,82,2,NULL),(3408,238,14,2,NULL),(3409,192,40,2,NULL),(3410,192,57,2,NULL),(3411,124,82,2,NULL),(3412,194,40,2,NULL),(3413,230,14,2,NULL),(3414,194,57,2,NULL),(3415,127,82,2,NULL),(3416,198,40,2,NULL),(3417,198,57,2,NULL),(3418,151,82,2,NULL),(3419,200,40,2,NULL),(3420,200,57,2,NULL),(3421,158,82,2,NULL),(3422,203,40,2,NULL),(3423,203,57,2,NULL),(3424,245,40,2,NULL),(3425,192,82,2,NULL),(3426,100,70,2,NULL),(3427,164,26,2,NULL),(3428,194,82,2,NULL),(3429,245,14,2,NULL),(3430,113,70,2,NULL),(3431,164,27,2,NULL),(3432,198,82,2,NULL),(3433,120,70,2,NULL),(3434,200,82,2,NULL),(3435,164,40,2,NULL),(3436,124,70,2,NULL),(3437,164,42,2,NULL),(3438,203,82,2,NULL),(3439,127,70,2,NULL),(3440,245,82,2,NULL),(3441,151,70,2,NULL),(3442,65,18,2,NULL),(3443,65,41,2,NULL),(3444,158,70,2,NULL),(3445,74,41,2,NULL),(3446,74,18,2,NULL),(3447,192,70,2,NULL),(3448,81,41,2,NULL),(3449,81,18,2,NULL),(3450,194,70,2,NULL),(3451,85,41,2,NULL),(3452,85,18,2,NULL),(3453,198,70,2,NULL),(3454,88,41,2,NULL),(3455,88,18,2,NULL),(3456,200,70,2,NULL),(3457,92,41,2,NULL),(3458,92,18,2,NULL),(3459,203,70,2,NULL),(3460,206,41,2,NULL),(3461,206,18,2,NULL),(3462,100,85,2,NULL),(3463,209,41,2,NULL),(3464,209,18,2,NULL),(3465,113,85,2,NULL),(3466,212,41,2,NULL),(3467,212,18,2,NULL),(3468,120,85,2,NULL),(3469,216,41,2,NULL),(3470,216,18,2,NULL),(3471,124,85,2,NULL),(3472,218,18,2,NULL),(3473,218,41,2,NULL),(3474,127,85,2,NULL),(3475,238,41,2,NULL),(3476,238,18,2,NULL),(3477,151,85,2,NULL),(3478,230,41,2,NULL),(3479,230,18,2,NULL),(3480,158,85,2,NULL),(3481,192,85,2,NULL),(3482,100,41,2,NULL),(3483,194,85,2,NULL),(3484,245,18,2,NULL),(3485,113,41,2,NULL),(3486,198,85,2,NULL),(3487,120,41,2,NULL),(3488,200,85,2,NULL),(3489,65,22,2,NULL),(3490,124,41,2,NULL),(3491,203,85,2,NULL),(3492,74,22,2,NULL),(3493,127,41,2,NULL),(3494,81,22,2,NULL),(3495,151,41,2,NULL),(3496,85,22,2,NULL),(3497,158,41,2,NULL),(3498,88,22,2,NULL),(3499,192,41,2,NULL),(3500,92,22,2,NULL),(3501,194,41,2,NULL),(3502,206,22,2,NULL),(3503,198,41,2,NULL),(3504,209,22,2,NULL),(3505,200,41,2,NULL),(3506,212,22,2,NULL),(3507,203,41,2,NULL),(3508,216,22,2,NULL),(3509,245,41,2,NULL),(3510,218,22,2,NULL),(3511,100,53,2,NULL),(3512,238,22,2,NULL),(3513,65,53,2,NULL),(3514,113,53,2,NULL),(3515,74,53,2,NULL),(3516,230,22,2,NULL),(3517,120,53,2,NULL),(3518,81,53,2,NULL),(3519,124,53,2,NULL),(3520,245,22,2,NULL),(3521,85,53,2,NULL),(3522,127,53,2,NULL),(3523,65,52,2,NULL),(3524,88,53,2,NULL),(3525,74,52,2,NULL),(3526,92,53,2,NULL),(3527,151,53,2,NULL),(3528,81,52,2,NULL),(3529,206,53,2,NULL),(3530,158,53,2,NULL),(3531,85,52,2,NULL),(3532,209,53,2,NULL),(3533,192,53,2,NULL),(3534,88,52,2,NULL),(3535,212,53,2,NULL),(3536,194,53,2,NULL),(3537,92,52,2,NULL),(3538,216,53,2,NULL),(3539,198,53,2,NULL),(3540,206,52,2,NULL),(3541,218,53,2,NULL),(3542,200,53,2,NULL),(3543,209,52,2,NULL),(3544,203,53,2,NULL),(3545,238,53,2,NULL),(3546,212,52,2,NULL),(3547,230,53,2,NULL),(3548,100,73,2,NULL),(3549,216,52,2,NULL),(3550,113,73,2,NULL),(3551,218,52,2,NULL),(3552,120,73,2,NULL),(3553,238,52,2,NULL),(3554,124,73,2,NULL),(3555,245,53,2,NULL),(3556,230,52,2,NULL),(3557,127,73,2,NULL),(3558,151,73,2,NULL),(3559,65,73,2,NULL),(3560,158,73,2,NULL),(3561,74,73,2,NULL),(3562,245,52,2,NULL),(3563,192,73,2,NULL),(3564,81,73,2,NULL),(3565,194,73,2,NULL),(3566,85,73,2,NULL),(3567,198,73,2,NULL),(3568,88,73,2,NULL),(3569,65,56,2,NULL),(3570,200,73,2,NULL),(3571,92,73,2,NULL),(3572,74,56,2,NULL),(3573,203,73,2,NULL),(3574,81,56,2,NULL),(3575,206,73,2,NULL),(3576,100,81,2,NULL),(3577,209,73,2,NULL),(3578,85,56,2,NULL),(3579,113,81,2,NULL),(3580,212,73,2,NULL),(3581,88,56,2,NULL),(3582,120,81,2,NULL),(3583,92,56,2,NULL),(3584,216,73,2,NULL),(3585,124,81,2,NULL),(3586,218,73,2,NULL),(3587,206,56,2,NULL),(3588,127,81,2,NULL),(3589,209,56,2,NULL),(3590,238,73,2,NULL),(3591,151,81,2,NULL),(3592,230,73,2,NULL),(3593,212,56,2,NULL),(3594,158,81,2,NULL),(3595,216,56,2,NULL),(3596,192,81,2,NULL),(3597,218,56,2,NULL),(3598,194,81,2,NULL),(3599,245,73,2,NULL),(3600,238,56,2,NULL),(3601,198,81,2,NULL),(3602,65,81,2,NULL),(3603,230,56,2,NULL),(3604,200,81,2,NULL),(3605,74,81,2,NULL),(3606,203,81,2,NULL),(3607,81,81,2,NULL),(3608,100,83,2,NULL),(3609,85,81,2,NULL),(3610,245,56,2,NULL),(3611,113,83,2,NULL),(3612,88,81,2,NULL),(3613,120,83,2,NULL),(3614,92,81,2,NULL),(3615,65,63,2,NULL),(3616,124,83,2,NULL),(3617,74,63,2,NULL),(3618,206,81,2,NULL),(3619,127,83,2,NULL),(3620,81,63,2,NULL),(3621,209,81,2,NULL),(3622,151,83,2,NULL),(3623,85,63,2,NULL),(3624,212,81,2,NULL),(3625,158,83,2,NULL),(3626,88,63,2,NULL),(3627,216,81,2,NULL),(3628,192,83,2,NULL),(3629,218,81,2,NULL),(3630,92,63,2,NULL),(3631,194,83,2,NULL),(3632,206,63,2,NULL),(3633,238,81,2,NULL),(3634,198,83,2,NULL),(3635,230,81,2,NULL),(3636,209,63,2,NULL),(3637,200,83,2,NULL),(3638,212,63,2,NULL),(3639,203,83,2,NULL),(3640,216,63,2,NULL),(3641,100,86,2,NULL),(3642,245,81,2,NULL),(3643,218,63,2,NULL),(3644,113,86,2,NULL),(3645,238,63,2,NULL),(3646,65,83,2,NULL),(3647,120,86,2,NULL),(3648,230,63,2,NULL),(3649,74,83,2,NULL),(3650,124,86,2,NULL),(3651,81,83,2,NULL),(3652,127,86,2,NULL),(3653,85,83,2,NULL),(3654,245,63,2,NULL),(3655,151,86,2,NULL),(3656,88,83,2,NULL),(3657,158,86,2,NULL),(3658,92,83,2,NULL),(3659,192,86,2,NULL),(3660,206,83,2,NULL),(3661,194,86,2,NULL),(3662,209,83,2,NULL),(3663,198,86,2,NULL),(3664,212,83,2,NULL),(3665,200,86,2,NULL),(3666,216,83,2,NULL),(3667,203,86,2,NULL),(3668,218,83,2,NULL),(3669,245,32,2,NULL),(3670,238,83,2,NULL),(3671,100,39,2,NULL),(3672,230,83,2,NULL),(3673,113,39,2,NULL),(3674,120,39,2,NULL),(3675,124,39,2,NULL),(3676,245,83,2,NULL),(3677,127,39,2,NULL),(3678,151,39,2,NULL),(3679,65,86,2,NULL),(3680,158,39,2,NULL),(3681,74,86,2,NULL),(3682,192,39,2,NULL),(3683,81,86,2,NULL),(3684,194,39,2,NULL),(3685,85,86,2,NULL),(3686,198,39,2,NULL),(3687,88,86,2,NULL),(3688,200,39,2,NULL),(3689,92,86,2,NULL),(3690,203,39,2,NULL),(3691,206,86,2,NULL),(3692,100,42,2,NULL),(3693,209,86,2,NULL),(3694,113,42,2,NULL),(3695,212,86,2,NULL),(3696,120,42,2,NULL),(3697,216,86,2,NULL),(3698,124,42,2,NULL),(3699,218,86,2,NULL),(3700,127,42,2,NULL),(3701,238,86,2,NULL),(3702,151,42,2,NULL),(3703,230,86,2,NULL),(3704,158,42,2,NULL),(3705,192,42,2,NULL),(3706,245,86,2,NULL),(3707,194,42,2,NULL),(3708,198,42,2,NULL),(3709,200,42,2,NULL),(3710,203,42,2,NULL),(3711,100,43,2,NULL),(3712,113,43,2,NULL),(3713,120,43,2,NULL),(3714,124,43,2,NULL),(3715,127,43,2,NULL),(3716,151,43,2,NULL),(3717,158,43,2,NULL),(3718,192,43,2,NULL),(3719,194,43,2,NULL),(3720,198,43,2,NULL),(3721,200,43,2,NULL),(3722,203,43,2,NULL),(3723,100,55,2,NULL),(3724,113,55,2,NULL),(3725,120,55,2,NULL),(3726,124,55,2,NULL),(3727,127,55,2,NULL),(3728,151,55,2,NULL),(3729,158,55,2,NULL),(3730,192,55,2,NULL),(3731,194,55,2,NULL),(3732,198,55,2,NULL),(3733,200,55,2,NULL),(3734,203,55,2,NULL),(3735,100,72,2,NULL),(3736,113,72,2,NULL),(3737,120,72,2,NULL),(3738,124,72,2,NULL),(3739,127,72,2,NULL),(3740,151,72,2,NULL),(3741,158,72,2,NULL),(3742,192,72,2,NULL),(3743,194,72,2,NULL),(3744,198,72,2,NULL),(3745,200,72,2,NULL),(3746,203,72,2,NULL),(3747,100,78,2,NULL),(3748,113,78,2,NULL),(3749,120,78,2,NULL),(3750,124,78,2,NULL),(3751,127,78,2,NULL),(3752,151,78,2,NULL),(3753,158,78,2,NULL),(3754,192,78,2,NULL),(3755,194,78,2,NULL),(3756,198,78,2,NULL),(3757,200,78,2,NULL),(3758,203,78,2,NULL),(3759,100,79,2,NULL),(3760,113,79,2,NULL),(3761,120,79,2,NULL),(3762,124,79,2,NULL),(3763,127,79,2,NULL),(3764,151,79,2,NULL),(3765,158,79,2,NULL),(3766,192,79,2,NULL),(3767,194,79,2,NULL),(3768,198,79,2,NULL),(3769,200,79,2,NULL),(3770,203,79,2,NULL),(3771,100,80,2,NULL),(3772,113,80,2,NULL),(3773,120,80,2,NULL),(3774,124,80,2,NULL),(3775,127,80,2,NULL),(3776,151,80,2,NULL),(3777,158,80,2,NULL),(3778,192,80,2,NULL),(3779,194,80,2,NULL),(3780,198,80,2,NULL),(3781,200,80,2,NULL),(3782,203,80,2,NULL),(3783,245,10,2,NULL),(3784,245,20,2,NULL),(3785,245,26,2,NULL),(3786,245,28,2,NULL),(3787,245,49,2,NULL),(3788,245,50,2,NULL),(3789,245,57,2,NULL),(3790,245,70,2,NULL),(3791,245,85,2,NULL),(3792,245,39,2,NULL),(3793,245,42,2,NULL),(3794,245,43,2,NULL),(3795,245,55,2,NULL),(3796,245,72,2,NULL),(3797,245,78,2,NULL),(3798,245,79,2,NULL),(3799,245,80,2,NULL),(3800,65,39,2,NULL),(3801,74,39,2,NULL),(3802,81,39,2,NULL),(3803,85,39,2,NULL),(3804,88,39,2,NULL),(3805,92,39,2,NULL),(3806,206,39,2,NULL),(3807,209,39,2,NULL),(3808,212,39,2,NULL),(3809,216,39,2,NULL),(3810,218,39,2,NULL),(3811,238,39,2,NULL),(3812,230,39,2,NULL),(3813,65,42,2,NULL),(3814,74,42,2,NULL),(3815,81,42,2,NULL),(3816,85,42,2,NULL),(3817,88,42,2,NULL),(3818,92,42,2,NULL),(3819,206,42,2,NULL),(3820,209,42,2,NULL),(3821,212,42,2,NULL),(3822,216,42,2,NULL),(3823,218,42,2,NULL),(3824,238,42,2,NULL),(3825,230,42,2,NULL),(3826,174,26,2,NULL),(3827,174,27,2,NULL),(3828,174,40,2,NULL),(3829,174,42,2,NULL),(3830,65,43,2,NULL),(3831,74,43,2,NULL),(3832,81,43,2,NULL),(3833,85,43,2,NULL),(3834,88,43,2,NULL),(3835,92,43,2,NULL),(3836,206,43,2,NULL),(3837,209,43,2,NULL),(3838,212,43,2,NULL),(3839,216,43,2,NULL),(3840,218,43,2,NULL),(3841,238,43,2,NULL),(3842,230,43,2,NULL),(3843,65,55,2,NULL),(3844,74,55,2,NULL),(3845,81,55,2,NULL),(3846,85,55,2,NULL),(3847,88,55,2,NULL),(3848,92,55,2,NULL),(3849,206,55,2,NULL),(3850,209,55,2,NULL),(3851,212,55,2,NULL),(3852,216,55,2,NULL),(3853,218,55,2,NULL),(3854,238,55,2,NULL),(3855,230,55,2,NULL),(3856,65,72,2,NULL),(3857,74,72,2,NULL),(3858,81,72,2,NULL),(3859,85,72,2,NULL),(3860,88,72,2,NULL),(3861,92,72,2,NULL),(3862,206,72,2,NULL),(3863,209,72,2,NULL),(3864,212,72,2,NULL),(3865,216,72,2,NULL),(3866,218,72,2,NULL),(3867,238,72,2,NULL),(3868,230,72,2,NULL),(3869,65,78,2,NULL),(3870,74,78,2,NULL),(3871,81,78,2,NULL),(3872,85,78,2,NULL),(3873,88,78,2,NULL),(3874,92,78,2,NULL),(3875,206,78,2,NULL),(3876,209,78,2,NULL),(3877,212,78,2,NULL),(3878,216,78,2,NULL),(3879,218,78,2,NULL),(3880,238,78,2,NULL),(3881,230,78,2,NULL),(3882,65,79,2,NULL),(3883,74,79,2,NULL),(3884,81,79,2,NULL),(3885,85,79,2,NULL),(3886,88,79,2,NULL),(3887,92,79,2,NULL),(3888,206,79,2,NULL),(3889,209,79,2,NULL),(3890,212,79,2,NULL),(3891,216,79,2,NULL),(3892,218,79,2,NULL),(3893,238,79,2,NULL),(3894,230,79,2,NULL),(3895,65,80,2,NULL),(3896,74,80,2,NULL),(3897,81,80,2,NULL),(3898,85,80,2,NULL),(3899,88,80,2,NULL),(3900,92,80,2,NULL),(3901,206,80,2,NULL),(3902,209,80,2,NULL),(3903,212,80,2,NULL),(3904,216,80,2,NULL),(3905,218,80,2,NULL),(3906,238,80,2,NULL),(3907,230,80,2,NULL),(3908,59,16,2,NULL),(3909,59,21,2,NULL),(3910,59,33,2,NULL),(3911,59,37,2,NULL),(3912,78,20,2,NULL),(3913,78,24,2,NULL),(3914,78,36,2,NULL),(3915,78,39,2,NULL),(3916,89,20,2,NULL),(3917,89,24,2,NULL),(3918,89,36,2,NULL),(3919,89,39,2,NULL),(3920,96,20,2,NULL),(3921,96,24,2,NULL),(3922,96,36,2,NULL),(3923,96,39,2,NULL),(3924,101,20,2,NULL),(3925,101,24,2,NULL),(3926,101,36,2,NULL),(3927,101,39,2,NULL),(3928,104,20,2,NULL),(3929,104,24,2,NULL),(3930,104,36,2,NULL),(3931,104,39,2,NULL),(3932,220,16,2,NULL),(3933,220,21,2,NULL),(3934,220,33,2,NULL),(3935,220,37,2,NULL),(3936,230,10,2,NULL),(3937,65,20,2,NULL),(3938,74,20,2,NULL),(3939,81,20,2,NULL),(3940,85,20,2,NULL),(3941,88,20,2,NULL),(3942,92,20,2,NULL),(3943,206,20,2,NULL),(3944,209,20,2,NULL),(3945,212,20,2,NULL),(3946,216,20,2,NULL),(3947,218,20,2,NULL),(3948,238,20,2,NULL),(3949,65,26,2,NULL),(3950,74,26,2,NULL),(3951,81,26,2,NULL),(3952,85,26,2,NULL),(3953,88,26,2,NULL),(3954,92,26,2,NULL),(3955,206,26,2,NULL),(3956,209,26,2,NULL),(3957,212,26,2,NULL),(3958,216,26,2,NULL),(3959,218,26,2,NULL),(3960,238,26,2,NULL),(3961,65,28,2,NULL),(3962,74,28,2,NULL),(3963,81,28,2,NULL),(3964,85,28,2,NULL),(3965,88,28,2,NULL),(3966,92,28,2,NULL),(3967,206,28,2,NULL),(3968,209,28,2,NULL),(3969,212,28,2,NULL),(3970,216,28,2,NULL),(3971,218,28,2,NULL),(3972,238,28,2,NULL),(3973,65,49,2,NULL),(3974,74,49,2,NULL),(3975,81,49,2,NULL),(3976,85,49,2,NULL),(3977,88,49,2,NULL),(3978,92,49,2,NULL),(3979,206,49,2,NULL),(3980,209,49,2,NULL),(3981,212,49,2,NULL),(3982,216,49,2,NULL),(3983,218,49,2,NULL),(3984,238,49,2,NULL),(3985,65,50,2,NULL),(3986,74,50,2,NULL),(3987,81,50,2,NULL),(3988,85,50,2,NULL),(3989,88,50,2,NULL),(3990,92,50,2,NULL),(3991,206,50,2,NULL),(3992,209,50,2,NULL),(3993,212,50,2,NULL),(3994,216,50,2,NULL),(3995,218,50,2,NULL),(3996,238,50,2,NULL),(3997,65,57,2,NULL),(3998,74,57,2,NULL),(3999,81,57,2,NULL),(4000,85,57,2,NULL),(4001,88,57,2,NULL),(4002,92,57,2,NULL),(4003,206,57,2,NULL),(4004,209,57,2,NULL),(4005,212,57,2,NULL),(4006,216,57,2,NULL),(4007,218,57,2,NULL),(4008,238,57,2,NULL),(4009,65,70,2,NULL),(4010,74,70,2,NULL),(4011,81,70,2,NULL),(4012,85,70,2,NULL),(4013,88,70,2,NULL),(4014,92,70,2,NULL),(4015,206,70,2,NULL),(4016,209,70,2,NULL),(4017,212,70,2,NULL),(4018,216,70,2,NULL),(4019,218,70,2,NULL),(4020,238,70,2,NULL),(4021,65,85,2,NULL),(4022,74,85,2,NULL),(4023,81,85,2,NULL),(4024,85,85,2,NULL),(4025,88,85,2,NULL),(4026,92,85,2,NULL),(4027,206,85,2,NULL),(4028,209,85,2,NULL),(4029,212,85,2,NULL),(4030,216,85,2,NULL),(4031,218,85,2,NULL),(4032,238,85,2,NULL),(4033,230,20,2,NULL),(4034,230,26,2,NULL),(4035,230,28,2,NULL),(4036,230,49,2,NULL),(4037,230,50,2,NULL),(4038,230,57,2,NULL),(4039,230,70,2,NULL),(4040,230,85,2,NULL),(4041,234,26,2,NULL),(4042,234,27,2,NULL),(4043,234,40,2,NULL),(4044,234,42,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProviderLinks`
--

LOCK TABLES `ProviderLinks` WRITE;
/*!40000 ALTER TABLE `ProviderLinks` DISABLE KEYS */;
INSERT INTO `ProviderLinks` VALUES (1,6,25,NULL),(2,14,25,NULL),(3,58,25,NULL),(4,18,25,NULL),(5,60,25,NULL);
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

-- Dump completed on 2015-10-12  3:30:45
