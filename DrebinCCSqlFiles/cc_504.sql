-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_504
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
INSERT INTO `ActionStrings` VALUES (12,'SMS_SEND_ACTIOIN'),(2,'android.intent.action.BOOT_COMPLETED'),(17,'android.intent.action.CHOOSER'),(40,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(15,'android.intent.action.PACKAGE_ADDED'),(14,'android.intent.action.PACKAGE_CHANGED'),(16,'android.intent.action.PACKAGE_REMOVED'),(35,'android.intent.action.SCREEN_OFF'),(36,'android.intent.action.SCREEN_ON'),(9,'android.intent.action.SET_WALLPAPER'),(21,'android.intent.action.TIMEZONE_CHANGED'),(20,'android.intent.action.TIME_SET'),(19,'android.intent.action.TIME_TICK'),(27,'android.intent.action.VIEW'),(18,'android.intent.action.WALLPAPER_CHANGED'),(13,'android.net.conn.CONNECTIVITY_CHANGE'),(4,'android.provider.Telephony.SMS_RECEIVED'),(3,'android.provider.Telephony.WAP_PUSH_RECEIVED'),(34,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(38,'android.settings.WIRELESS_SETTINGS'),(39,'com.android.contacts.action.FILTER_CONTACTS'),(10,'com.android.launcher.action.INSTALL_SHORTCUT'),(11,'com.android.launcher.action.UNINSTALL_SHORTCUT'),(32,'com.jx.Action_CopyResError'),(23,'com.jx.MainActivity.CostInfo'),(22,'com.jx.MainActivity.ErrorInfo'),(30,'com.jx.MainActivity.InstallConfirmInfo'),(29,'com.jx.MainActivity.OpenLWP'),(31,'com.jx.MainActivity.RepeateInstall'),(28,'com.jx.MainActivity.SaveID'),(33,'com.jx.action.ExitBootReceiver'),(26,'com.jx.ad.ADService.ConfirmInstallInfo'),(7,'com.jx.ad.ADService.Init'),(37,'com.jx.ad.ADService.InitHasUpdate'),(25,'com.jx.ad.ADService.InstallRes'),(5,'com.jx.ad.ADService.Run'),(6,'com.jx.ad.ADService.RunCancel'),(24,'com.jx.ad.BootSmsReceiverService.Exit'),(8,'com.jx.ad.BootSmsReceiverService.Start');
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
INSERT INTO `Applications` VALUES (1,'com.km.installer',1),(2,'km.home',1),(3,'com.jx.theme.n1975502096',1),(4,'com.km.launcher',1),(5,'com.jx.theme.n1587606427',1),(6,'com.jx.theme.n509993111',1),(7,'com.jx.theme.n577146197',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.km.installer.InstallerActivity'),(2,1,'com.km.charge.MainActivity'),(3,1,'com.km.charge.MainService'),(4,1,'com.km.charge.CycleService'),(5,1,'com.km.charge.BootReceiver'),(6,1,'com.km.charge.HoldMessage'),(7,2,'km.home.Home'),(8,2,'km.home.UnlockActivity'),(9,3,'com.jx.MainActivity'),(10,2,'km.home.ThemeListActivity'),(11,3,'com.jx.SettingActivity'),(12,2,'com.km.MainActivity'),(13,3,'com.jx.WelcomeActivity'),(14,2,'com.km.HoldMessage'),(15,3,'com.jx.ad.AndroidThemeService'),(16,3,'com.jx.ad.BootSmsReceiverService'),(17,3,'com.jx.ad.BootReceiver'),(18,5,'com.jx.MainActivity'),(19,5,'com.jx.SettingActivity'),(20,5,'com.jx.WelcomeActivity'),(21,4,'com.km.launcher.Launcher'),(22,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(23,5,'com.jx.ad.AndroidThemeService'),(24,4,'com.km.launcher.WallpaperChooser'),(25,5,'com.jx.ad.BootSmsReceiverService'),(26,4,'com.km.theme.ThemeListActivity'),(27,5,'com.jx.ad.BootReceiver'),(28,4,'com.km.charge.MainActivity'),(29,6,'com.jx.MainActivity'),(30,4,'com.km.ad.AdService'),(31,7,'com.jx.MainActivity'),(32,4,'com.km.charge.CycleService'),(33,4,'com.km.launcher.InstallShortcutReceiver'),(34,6,'com.jx.SettingActivity'),(35,7,'com.jx.SettingActivity'),(36,6,'com.jx.WelcomeActivity'),(37,7,'com.jx.WelcomeActivity'),(38,4,'com.km.launcher.UninstallShortcutReceiver'),(39,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(40,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(41,6,'com.jx.ad.AndroidThemeService'),(42,7,'com.jx.ad.AndroidThemeService'),(43,4,'com.km.charge.BootReceiver'),(44,6,'com.jx.ad.BootSmsReceiverService'),(45,7,'com.jx.ad.BootSmsReceiverService'),(46,4,'com.km.launcher.LauncherProvider'),(47,6,'com.jx.ad.BootReceiver'),(48,7,'com.jx.ad.BootReceiver'),(49,1,'com.km.tool.ApnManager'),(50,1,'com.km.charge.SendMessage$SendMessageReceiver'),(51,1,'com.km.tool.Util'),(52,1,'com.km.charge.HttpBox$ConnectivityReceiver'),(53,2,'km.home.ThemeManager'),(54,2,'km.home.Home$WallpaperIntentReceiver'),(55,2,'com.km.SendMessage$SendMessageReceiver'),(56,2,'com.km.tool.Http$ConnectivityReceiver'),(57,2,'km.home.UnlockActivity$TimeReceiver'),(58,2,'km.home.Home$ApplicationsIntentReceiver'),(59,3,'com.jx.ad.AndroidThemeService$6'),(60,2,'km.home.Home$ApplicationLauncher'),(61,3,'com.jx.ad.AndroidThemeService$2'),(62,3,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(63,3,'com.jx.tool.ApnManager'),(64,3,'com.jx.ad.AndroidThemeService$5'),(65,3,'com.jx.ad.AndroidThemeService$7'),(66,3,'com.jx.ad.AndroidThemeService$3'),(67,3,'com.jx.ad.AndroidThemeService$SmsReceiver'),(68,3,'com.jx.MainActivity$4'),(69,3,'com.jx.tool.Utility'),(70,5,'com.jx.MainActivity$ControlReceiver'),(71,7,'com.jx.ad.AndroidThemeService$3'),(72,6,'com.jx.tool.Utility'),(73,5,'com.jx.tool.ApnManager'),(74,3,'com.jx.SettingActivity$1'),(75,7,'com.jx.ad.AndroidThemeService$5'),(76,6,'com.jx.SettingActivity$1'),(77,3,'com.jx.ad.AndroidThemeService$MMSReceiver'),(78,3,'com.jx.MainActivity$ControlReceiver'),(79,6,'com.jx.MainActivity$4'),(80,5,'com.jx.ad.AndroidThemeService$3'),(81,7,'com.jx.tool.ApnManager'),(82,3,'com.jx.ad.AndroidThemeService$4'),(83,6,'com.jx.ad.AndroidThemeService$4'),(84,5,'com.jx.ad.AndroidThemeService$8'),(85,7,'com.jx.ad.AndroidThemeService$7'),(86,6,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(87,4,'com.km.tool.ApnManager'),(88,5,'com.jx.ad.AndroidThemeService$2'),(89,6,'com.jx.ad.AndroidThemeService$3'),(90,4,'com.km.charge.HoldMessage'),(91,5,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(92,4,'com.km.launcher.MyAnalogClock$1'),(93,5,'com.jx.ad.AndroidThemeService$5'),(94,6,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(95,4,'com.km.launcher.Launcher$WallpaperIntentReceiver'),(96,6,'com.jx.MainActivity$1'),(97,7,'com.adwo.adsdk.M'),(98,4,'com.km.charge.SendMessage$SendMessageReceiver'),(99,6,'com.jx.tool.ApnManager'),(100,3,'com.jx.SettingActivity$6'),(101,4,'com.km.charge.HttpBox$ConnectivityReceiver'),(102,6,'com.jx.ad.AndroidThemeService$6'),(103,5,'com.jx.ad.AndroidThemeService$4'),(104,4,'com.km.tool.Http$ConnectivityReceiver'),(105,7,'com.jx.ad.AndroidThemeService$8'),(106,6,'com.jx.ad.AndroidThemeService$2'),(107,4,'com.km.launcher.Launcher$ApplicationsIntentReceiver'),(108,4,'com.km.launcher.LauncherModel'),(109,3,'com.jx.MainActivity$ControlReceiver$6$1'),(110,5,'com.jx.ad.AndroidThemeService$6'),(111,3,'com.jx.ad.AndroidThemeService$8'),(112,6,'com.jx.ad.AndroidThemeService$5'),(113,3,'com.jx.ad.ServiceControlReciver'),(114,7,'com.jx.ad.AndroidThemeService$6'),(115,3,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(116,5,'com.jx.ad.AndroidThemeService$SmsReceiver'),(117,5,'com.jx.SettingActivity$1'),(118,5,'com.jx.tool.Utility'),(119,7,'com.jx.tool.Utility'),(120,5,'com.adwo.adsdk.M'),(121,3,'com.jx.MainActivity$ControlReceiver$1'),(122,5,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(123,6,'com.jx.MainActivity$ControlReceiver$1'),(124,7,'com.jx.MainActivity$ControlReceiver$1'),(125,5,'com.jx.MainActivity$4'),(126,6,'com.jx.ad.AndroidThemeService$7'),(127,4,'com.km.launcher.Search'),(128,3,'com.jx.MainActivity$1'),(129,5,'com.jx.MainActivity$ControlReceiver$1'),(130,5,'com.jx.SettingActivity$6'),(131,5,'com.jx.ad.AndroidThemeService$MMSReceiver'),(132,6,'com.jx.ad.AndroidThemeService$8'),(133,4,'com.km.theme.ThemeManager'),(134,5,'com.jx.ad.ServiceControlReciver'),(135,4,'com.km.tool.Util'),(136,5,'com.jx.MainActivity$ControlReceiver$6$1'),(137,4,'com.km.ad.AdService$1'),(138,6,'com.jx.ad.AndroidThemeService$SmsReceiver'),(139,7,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(140,7,'com.jx.MainActivity$ControlReceiver'),(141,7,'com.jx.SettingActivity$1'),(142,7,'com.jx.ad.AndroidThemeService$2'),(143,7,'com.jx.ad.AndroidThemeService$SmsReceiver'),(144,7,'com.jx.MainActivity$1'),(145,7,'com.jx.SettingActivity$6'),(146,6,'com.jx.ad.AndroidThemeService$MMSReceiver'),(147,7,'com.jx.ad.AndroidThemeService$4'),(148,6,'com.jx.SettingActivity$6'),(149,7,'com.jx.MainActivity$4'),(150,5,'com.jx.ad.AndroidThemeService$7'),(151,7,'com.jx.ad.ServiceControlReciver'),(152,6,'com.adwo.adsdk.M'),(153,7,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(154,6,'com.jx.ad.ServiceControlReciver'),(155,7,'com.jx.MainActivity$ControlReceiver$6$1'),(156,6,'com.jx.MainActivity$ControlReceiver'),(157,6,'com.jx.MainActivity$ControlReceiver$6$1'),(158,7,'com.jx.ad.AndroidThemeService$MMSReceiver'),(159,5,'com.jx.MainActivity$1');
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,6,'data'),(2,6,'pdus'),(3,14,'pdus'),(4,14,'data'),(5,15,'resownerid'),(6,15,'respid'),(7,40,'transitionTime'),(8,38,'shouldShowTitlebar'),(9,41,'respid'),(10,38,'overlayTitle'),(11,22,'transitionTime'),(12,22,'shouldEnableBottomBar'),(13,40,'shouldResizeOverlay'),(14,41,'resownerid'),(15,38,'shouldResizeOverlay'),(16,22,'shouldResizeOverlay'),(17,22,'shouldShowTitlebar'),(18,21,'launcher.add_occupied_cells'),(19,21,'android.intent.extra.livefolder.BASE_INTENT'),(20,21,'launcher.add_screen'),(21,21,'launcher.add_cellY'),(22,39,'android.intent.extra.shortcut.INTENT'),(23,21,'launcher.rename_folder'),(24,21,'launcher.rename_folder_id'),(25,21,'launcher.add_countX'),(26,33,'duplicate'),(27,26,'launcher.all_apps_folder'),(28,28,'launcher.all_apps_folder'),(29,21,'launcher.all_apps_folder'),(30,40,'shouldEnableBottomBar'),(31,33,'android.intent.extra.shortcut.NAME'),(32,21,'android.intent.extra.livefolder.ICON'),(33,21,'launcher.add_cellX'),(34,22,'shouldShowBottomBar'),(35,40,'url'),(36,38,'url'),(37,21,'android.intent.extra.shortcut.NAME'),(38,21,'launcher.add_countY'),(39,33,'android.intent.extra.shortcut.INTENT'),(40,21,'android.intent.extra.shortcut.INTENT'),(41,21,'data'),(42,22,'shouldMakeOverlayTransparent'),(43,21,'android.intent.extra.livefolder.NAME'),(44,23,'resownerid'),(45,33,'android.intent.extra.shortcut.ICON'),(46,38,'shouldShowBottomBar'),(47,21,'android.intent.extra.shortcut.ICON'),(48,21,'launcher.current_screen'),(49,38,'shouldMakeOverlayTransparent'),(50,22,'overlayTitle'),(51,39,'duplicate'),(52,21,'launcher.add_spanX'),(53,22,'url'),(54,22,'overlayTransition'),(55,38,'shouldEnableBottomBar'),(56,39,'android.intent.extra.shortcut.NAME'),(57,26,'launcher.user_folder'),(58,28,'launcher.user_folder'),(59,21,'launcher.user_folder'),(60,33,'android.intent.extra.shortcut.ICON_RESOURCE'),(61,21,'android.intent.extra.shortcut.ICON_RESOURCE'),(62,21,'launcher.add_spanY'),(63,40,'overlayTransition'),(64,40,'overlayTitle'),(65,40,'shouldMakeOverlayTransparent'),(66,40,'shouldShowTitlebar'),(67,42,'resownerid'),(68,42,'respid'),(69,23,'respid'),(70,40,'shouldShowBottomBar'),(71,38,'overlayTransition'),(72,38,'transitionTime');
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
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'s',0,NULL,NULL),(4,4,'s',0,NULL,NULL),(5,5,'r',1,NULL,NULL),(6,6,'r',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'r',1,NULL,NULL),(15,15,'s',1,NULL,NULL),(16,16,'s',1,NULL,NULL),(17,17,'r',1,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'s',1,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'s',1,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'r',1,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,30,'s',0,NULL,NULL),(30,29,'a',1,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'s',0,NULL,NULL),(33,33,'r',1,28,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,39,'a',0,NULL,NULL),(39,38,'r',1,29,NULL),(40,40,'a',0,NULL,NULL),(41,41,'s',1,NULL,NULL),(42,42,'s',1,NULL,NULL),(43,43,'r',1,NULL,NULL),(44,44,'s',1,NULL,NULL),(45,45,'s',1,NULL,NULL),(46,46,'p',0,NULL,NULL),(47,47,'r',1,NULL,NULL),(48,48,'r',1,NULL,NULL),(49,50,'r',1,NULL,NULL),(50,52,'r',1,NULL,NULL),(51,54,'r',1,NULL,NULL),(52,55,'r',1,NULL,NULL),(53,56,'r',1,NULL,NULL),(54,57,'r',1,NULL,NULL),(55,58,'r',1,NULL,NULL),(56,62,'r',1,NULL,NULL),(57,67,'r',1,NULL,NULL),(58,70,'r',1,NULL,NULL),(59,77,'r',1,NULL,NULL),(60,78,'r',1,NULL,NULL),(61,86,'r',1,NULL,NULL),(62,33,'r',1,NULL,NULL),(63,38,'r',1,NULL,NULL),(64,90,'r',1,NULL,NULL),(65,91,'r',1,NULL,NULL),(66,92,'r',1,NULL,NULL),(67,94,'r',1,NULL,NULL),(68,95,'r',1,NULL,NULL),(69,97,'r',1,NULL,NULL),(70,98,'r',1,NULL,NULL),(71,101,'r',1,NULL,NULL),(72,104,'r',1,NULL,NULL),(73,107,'r',1,NULL,NULL),(74,113,'r',1,NULL,NULL),(75,115,'r',1,NULL,NULL),(76,116,'r',1,NULL,NULL),(77,120,'r',1,NULL,NULL),(78,122,'r',1,NULL,NULL),(79,131,'r',1,NULL,NULL),(80,134,'r',1,NULL,NULL),(81,138,'r',1,NULL,NULL),(82,139,'r',1,NULL,NULL),(83,140,'r',1,NULL,NULL),(84,143,'r',1,NULL,NULL),(85,146,'r',1,NULL,NULL),(86,151,'r',1,NULL,NULL),(87,152,'r',1,NULL,NULL),(88,153,'r',1,NULL,NULL),(89,154,'r',1,NULL,NULL),(90,156,'r',1,NULL,NULL),(91,158,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=304 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,3),(2,1,6),(3,2,3),(4,2,6),(5,3,2),(6,4,3),(7,4,6),(8,5,3),(9,5,6),(10,6,6),(11,6,3),(12,7,6),(13,7,3),(14,8,1),(15,8,5),(16,9,6),(17,9,3),(18,10,6),(19,10,3),(20,11,8),(21,12,7),(22,13,8),(23,13,12),(24,14,7),(25,15,15),(26,16,7),(27,17,15),(28,18,15),(29,19,11),(30,20,15),(31,21,15),(32,22,15),(33,23,9),(34,24,9),(35,25,15),(36,26,15),(37,27,15),(38,28,15),(39,29,11),(40,29,9),(41,29,13),(42,30,9),(43,30,11),(44,30,13),(45,31,15),(46,31,13),(47,31,11),(48,32,15),(49,33,15),(50,34,42),(51,35,36),(52,35,34),(53,35,41),(54,36,23),(55,37,9),(56,37,11),(57,37,13),(58,38,23),(59,39,42),(60,41,23),(61,40,34),(62,40,36),(63,40,30),(64,42,31),(65,44,23),(66,43,30),(67,43,36),(68,43,34),(69,45,42),(70,46,15),(71,47,41),(72,48,23),(73,49,42),(74,50,15),(75,51,27),(76,52,31),(77,53,36),(78,53,34),(79,54,15),(80,55,26),(81,55,28),(82,56,37),(83,57,23),(84,58,30),(85,59,9),(86,59,13),(87,59,11),(88,60,23),(89,61,41),(90,62,23),(91,63,42),(92,64,30),(93,64,36),(94,64,34),(95,65,18),(96,66,9),(97,67,23),(98,68,31),(99,69,41),(100,70,13),(101,70,9),(102,70,11),(103,72,41),(104,71,31),(105,73,23),(106,74,15),(107,75,42),(108,76,41),(109,77,20),(110,78,15),(111,79,48),(112,80,21),(113,81,34),(114,81,36),(115,81,30),(116,82,37),(117,82,35),(118,82,31),(119,83,39),(120,84,9),(121,84,11),(122,84,13),(123,85,28),(124,85,26),(125,86,9),(126,87,23),(127,88,15),(128,89,28),(129,89,26),(130,90,15),(131,91,23),(132,92,26),(133,92,28),(134,93,41),(135,94,42),(136,95,41),(137,96,33),(138,97,15),(139,98,42),(140,99,20),(141,99,18),(142,99,19),(143,100,15),(144,101,41),(145,102,39),(146,103,23),(147,103,19),(148,103,20),(149,104,37),(150,104,35),(151,104,42),(152,105,11),(153,105,13),(154,106,41),(155,107,21),(156,107,33),(157,108,47),(158,109,42),(159,110,13),(160,110,11),(161,110,9),(162,111,21),(163,113,15),(164,112,36),(165,112,34),(166,112,30),(167,114,26),(168,114,28),(169,115,31),(170,115,37),(171,115,35),(172,117,39),(173,116,18),(174,116,19),(175,116,20),(176,118,41),(177,119,15),(178,120,31),(179,120,37),(180,120,35),(181,121,28),(182,121,21),(183,122,20),(184,122,19),(185,123,41),(186,124,9),(187,124,11),(188,124,13),(189,125,20),(190,125,19),(191,125,18),(192,126,28),(193,126,26),(194,127,23),(195,128,36),(196,129,17),(197,130,21),(198,131,19),(199,131,18),(200,131,20),(201,132,28),(202,132,21),(203,133,28),(204,133,26),(205,134,33),(206,135,41),(207,136,19),(208,137,21),(209,137,26),(210,138,41),(211,139,23),(212,140,30),(213,141,28),(214,141,21),(215,142,34),(216,143,18),(217,144,23),(218,145,28),(219,145,26),(220,146,30),(221,147,42),(222,148,21),(223,148,43),(224,149,41),(225,150,42),(226,152,26),(227,152,28),(228,151,18),(229,151,19),(230,151,20),(231,153,41),(232,154,42),(233,155,21),(234,156,18),(235,157,41),(236,158,35),(237,159,20),(238,159,18),(239,159,19),(240,160,30),(241,160,34),(242,160,36),(243,161,31),(244,161,35),(245,161,37),(246,162,37),(247,162,35),(248,163,46),(249,164,42),(250,165,21),(251,166,42),(252,167,26),(253,167,21),(254,168,42),(255,169,31),(256,169,37),(257,169,35),(258,170,23),(259,171,30),(260,172,37),(261,172,35),(262,172,31),(263,173,20),(264,173,18),(265,173,19),(266,174,41),(267,175,42),(268,176,42),(269,177,36),(270,177,34),(271,177,30),(272,178,37),(273,178,35),(274,178,31),(275,179,41),(276,180,41),(277,181,23),(278,182,42),(279,183,42),(280,184,41),(281,185,23),(282,186,23),(283,187,41),(284,188,23),(285,189,42),(286,190,18),(287,191,37),(288,191,35),(289,191,31),(290,192,23),(291,193,34),(292,193,36),(293,193,30),(294,194,42),(295,195,41),(296,196,18),(297,196,20),(298,196,19),(299,197,42),(300,198,23),(301,199,41),(302,200,42),(303,201,23);
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
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,49,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',19,'p',NULL),(2,49,'<com.km.tool.ApnManager: int getApnId(java.lang.String)>',6,'p',NULL),(3,2,'<com.km.charge.MainActivity: void onClick(android.content.DialogInterface,int)>',10,'s',NULL),(4,49,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',9,'p',NULL),(5,49,'<com.km.tool.ApnManager: int CreateWapApn()>',30,'p',0),(6,49,'<com.km.tool.ApnManager: int CreateWapApn()>',27,'p',NULL),(7,49,'<com.km.tool.ApnManager: int CreateGPRSApn()>',30,'p',0),(8,51,'<com.km.tool.Util: void startServiceWithSingleMode(android.content.Context,java.lang.Class)>',8,'s',NULL),(9,49,'<com.km.tool.ApnManager: void delete(int)>',8,'p',NULL),(10,49,'<com.km.tool.ApnManager: int CreateGPRSApn()>',27,'p',NULL),(11,53,'<km.home.ThemeManager: void setup()>',24,'a',NULL),(12,7,'<km.home.Home: void startWallpaper()>',5,'a',NULL),(13,8,'<km.home.UnlockActivity: void onClick(android.view.View)>',5,'a',NULL),(14,7,'<km.home.Home: void changeTheme(km.theme.ThemeInfo)>',15,'a',NULL),(15,59,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(16,60,'<km.home.Home$ApplicationLauncher: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',9,'a',0),(17,61,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(18,59,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(19,11,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(20,63,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(21,64,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(22,65,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(23,9,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(24,9,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(25,66,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(26,63,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(27,66,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(28,61,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(29,9,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(30,68,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(31,69,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(32,61,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(33,15,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(34,71,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(35,72,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(36,73,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(37,74,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(38,73,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(39,75,'<com.jx.ad.AndroidThemeService$5: void run()>',116,'r',NULL),(40,76,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(41,73,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(42,31,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(43,79,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(44,80,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(45,81,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(46,82,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(47,83,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(48,84,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(49,85,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(50,64,'<com.jx.ad.AndroidThemeService$5: void run()>',113,'r',NULL),(51,27,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(52,31,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(53,36,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(54,59,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(55,87,'<com.km.tool.ApnManager: int CreateGPRSApn()>',27,'p',NULL),(56,37,'<com.jx.WelcomeActivity: void onResume()>',67,'a',NULL),(57,80,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(58,29,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(59,9,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(60,88,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(61,89,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(62,93,'<com.jx.ad.AndroidThemeService$5: void run()>',116,'r',NULL),(63,42,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(64,96,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(65,18,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(66,9,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(67,88,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(68,31,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(69,99,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(70,100,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(71,31,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(72,102,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(73,103,'<com.jx.ad.AndroidThemeService$4: void run()>',125,'r',NULL),(74,15,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(75,105,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(76,106,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(77,20,'<com.jx.WelcomeActivity: void onResume()>',67,'a',NULL),(78,82,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(79,48,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(80,108,'<com.km.launcher.LauncherModel: com.km.launcher.Widget getPhotoFrameInfo(android.content.Context,int,int,int)>',15,'p',NULL),(81,29,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(82,31,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(83,38,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'p',NULL),(84,109,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(85,87,'<com.km.tool.ApnManager: int CreateWapApn()>',27,'p',NULL),(86,9,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(87,110,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(88,63,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(89,87,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',9,'p',NULL),(90,111,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(91,88,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(92,87,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',19,'p',NULL),(93,112,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(94,114,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(95,83,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(96,108,'<com.km.launcher.LauncherModel: boolean shortcutExists(android.content.Context,java.lang.String,android.content.Intent)>',12,'p',NULL),(97,63,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(98,42,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(99,117,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(100,82,'<com.jx.ad.AndroidThemeService$4: void run()>',120,'r',NULL),(101,83,'<com.jx.ad.AndroidThemeService$4: void run()>',125,'r',NULL),(102,38,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',25,'p',NULL),(103,118,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(104,119,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(105,13,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(106,89,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(107,108,'<com.km.launcher.LauncherModel: void addItemToDatabase(android.content.Context,com.km.launcher.ItemInfo,long,int,int,int,boolean)>',17,'p',NULL),(108,47,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(109,114,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(110,121,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(111,21,'<com.km.launcher.Launcher: void registerContentObservers()>',4,'p',NULL),(112,123,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(113,111,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(114,87,'<com.km.tool.ApnManager: int CreateGPRSApn()>',30,'p',0),(115,124,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(116,125,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(117,38,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'p',NULL),(118,126,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(119,59,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(120,31,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(121,127,'<com.km.launcher.Search: void sendLaunchIntent(java.lang.String,android.net.Uri,java.lang.String,android.os.Bundle,int,java.lang.String,android.server.search.SearchableInfo)>',20,'a',NULL),(122,20,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(123,41,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(124,128,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(125,129,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(126,87,'<com.km.tool.ApnManager: void delete(int)>',8,'p',NULL),(127,110,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(128,36,'<com.jx.WelcomeActivity: void onResume()>',67,'a',NULL),(129,17,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(130,21,'<com.km.launcher.Launcher: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(131,130,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(132,21,'<com.km.launcher.Launcher: void startActivitySafely(android.content.Intent)>',3,'a',0),(133,87,'<com.km.tool.ApnManager: int getApnId(java.lang.String)>',6,'p',NULL),(134,33,'<com.km.launcher.InstallShortcutReceiver: boolean findEmptyCell(android.content.Context,int[],int)>',19,'p',NULL),(135,132,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(136,19,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(137,133,'<com.km.theme.ThemeManager: void setup()>',32,'a',NULL),(138,99,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(139,110,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(140,29,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(141,21,'<com.km.launcher.Launcher: boolean onKeyDown(int,android.view.KeyEvent)>',27,'a',NULL),(142,34,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(143,18,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(144,103,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(145,87,'<com.km.tool.ApnManager: int CreateWapApn()>',30,'p',0),(146,29,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(147,81,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(148,135,'<com.km.tool.Util: void startServiceWithSingleMode(android.content.Context,java.lang.Class)>',7,'s',NULL),(149,41,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(150,114,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(151,136,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(152,137,'<com.km.ad.AdService$1: void run()>',11,'s',NULL),(153,99,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(154,114,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(155,21,'<com.km.launcher.Launcher: void startWallpaper()>',5,'a',NULL),(156,18,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(157,132,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(158,35,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(159,18,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(160,29,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(161,141,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(162,37,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(163,46,'<com.km.launcher.LauncherProvider: void sendNotify(android.net.Uri)>',9,'p',0),(164,142,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(165,108,'<com.km.launcher.LauncherModel: com.km.launcher.FolderInfo getFolderById(android.content.Context,long)>',12,'p',NULL),(166,142,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(167,108,'<com.km.launcher.LauncherModel: void updateItemInDatabase(android.content.Context,com.km.launcher.ItemInfo)>',8,'p',NULL),(168,105,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(169,144,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(170,93,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(171,29,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(172,145,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(173,18,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(174,106,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(175,147,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(176,81,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(177,148,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(178,149,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(179,99,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(180,112,'<com.jx.ad.AndroidThemeService$5: void run()>',116,'r',NULL),(181,150,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(182,81,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(183,147,'<com.jx.ad.AndroidThemeService$4: void run()>',125,'r',NULL),(184,102,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(185,84,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(186,23,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(187,102,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(188,110,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(189,75,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(190,18,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(191,155,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(192,103,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(193,157,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(194,142,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(195,106,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(196,159,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(197,147,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(198,23,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(199,102,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(200,71,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(201,73,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,4,17),(2,5,17),(3,6,17),(4,7,17),(5,8,17),(6,9,17),(7,10,17),(8,11,17),(9,14,22),(10,15,22),(11,16,23),(12,17,1),(13,18,22),(14,19,22),(15,20,24),(16,22,24),(17,23,22),(18,24,22),(19,25,25),(20,26,5),(21,27,26),(22,28,6),(23,29,26),(24,30,7),(25,31,25),(26,32,6),(27,33,5),(28,34,7),(29,35,27),(30,37,22),(31,38,28),(32,39,22),(33,41,27),(34,42,22),(35,43,27),(36,45,22),(37,46,27),(38,49,22),(39,50,22),(40,51,22),(41,52,8),(42,53,33),(43,54,22),(44,55,34),(45,57,24),(46,60,26),(47,61,22),(48,63,5),(49,64,22),(50,66,7),(51,67,6),(52,68,22),(53,69,23),(54,70,25),(55,71,27),(56,72,33),(57,73,33),(58,74,22),(59,76,27),(60,77,22),(61,78,24),(62,79,22),(63,80,23),(64,81,22),(65,82,22),(66,84,37),(67,85,8),(68,87,26),(69,89,26),(70,90,5),(71,91,32),(72,93,5),(73,94,7),(74,96,7),(75,97,6),(76,98,22),(77,99,6),(78,100,25),(79,101,30),(80,102,25),(81,103,22),(82,104,22),(83,105,23),(84,106,37),(85,107,28),(86,108,27),(87,109,22),(88,110,22),(89,114,34),(90,113,24),(91,115,8),(92,116,22),(93,117,38),(94,119,22),(95,118,38),(96,120,38),(97,121,27),(98,122,22),(99,123,22),(100,124,5),(101,125,27),(102,126,34),(103,127,27),(104,128,23),(105,129,25),(106,130,27),(107,131,38),(108,132,5),(109,133,22),(110,135,8),(111,137,25),(112,139,27),(113,141,6),(114,143,6),(115,144,22),(116,145,1),(117,146,26),(118,148,7),(119,149,22),(120,150,26),(121,151,33),(122,152,39),(123,153,1),(124,154,40),(125,155,7),(126,156,24),(127,158,24),(128,160,28),(129,161,22),(130,163,32),(131,164,22),(132,165,17),(133,167,17),(134,168,30),(135,169,17),(136,170,1),(137,171,25),(138,172,17),(139,173,25),(140,174,17),(141,175,7),(142,176,6),(143,177,17),(144,178,17),(145,179,6),(146,180,27),(147,181,5),(148,182,17),(149,183,5),(150,184,25),(151,185,34),(152,186,5),(153,187,6),(154,188,22),(155,189,26),(156,190,26),(157,191,22),(158,192,6),(159,193,26),(160,194,26),(161,195,5),(162,196,7),(163,197,30),(164,198,7),(165,199,25),(166,200,7),(167,201,27),(168,202,22),(169,204,27),(170,205,26),(171,206,5),(172,207,22),(173,208,37),(174,209,7),(175,210,6),(176,211,27),(177,212,25),(178,213,27),(179,214,22),(180,215,22),(181,216,22),(182,217,22),(183,218,30),(184,219,23),(185,220,22),(186,221,23),(187,222,22),(188,224,32),(189,225,37),(190,226,32),(191,227,22),(192,228,22),(193,229,27),(194,231,28),(195,232,23),(196,233,24);
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
INSERT INTO `ICategories` VALUES (1,17,1),(2,55,2),(3,114,2),(4,126,2),(5,145,1),(6,153,1),(7,170,1),(8,185,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/km/charge/MainService'),(2,2,'com/km/charge/CycleService'),(3,3,'com/km/MainActivity'),(4,12,'km/home/Home'),(5,13,'km/home/UnlockActivity'),(6,17,'com.nd.android.launcher.Launcher'),(7,21,'com/jx/WelcomeActivity'),(8,27,'com/jx/ad/AndroidThemeService'),(9,31,'com/jx/ad/AndroidThemeService'),(10,32,'com/jx/ad/AndroidThemeService'),(11,33,'com/jx/ad/AndroidThemeService'),(12,34,'com/jx/ad/AndroidThemeService'),(13,36,'com.android.packageinstaller.PackageInstallerActivity'),(14,40,'com.android.packageinstaller.PackageInstallerActivity'),(15,44,'com/jx/WelcomeActivity'),(16,47,'com.android.packageinstaller.PackageInstallerActivity'),(17,48,'com.android.packageinstaller.PackageInstallerActivity'),(18,52,'com/jx/ad/BootSmsReceiverService'),(19,56,'.Launcher'),(20,59,'com/jx/WelcomeActivity'),(21,58,'(.*).Launcher'),(22,62,'(.*).Launcher'),(23,65,'.Launcher'),(24,75,'com/jx/WelcomeActivity'),(25,83,'.Launcher'),(26,85,'com/jx/ad/BootSmsReceiverService'),(27,86,'(.*).Launcher'),(28,88,'(.*).Launcher'),(29,92,'.Launcher'),(30,95,'com/jx/WelcomeActivity'),(31,111,'com.android.packageinstaller.PackageInstallerActivity'),(32,112,'com.android.packageinstaller.PackageInstallerActivity'),(33,115,'com/jx/ad/BootSmsReceiverService'),(34,124,'com/jx/ad/AndroidThemeService'),(35,134,'.Launcher'),(36,135,'com/jx/ad/BootSmsReceiverService'),(37,136,'com/km/theme/ThemeListActivity'),(38,138,'(.*).Launcher'),(39,137,'com/jx/ad/AndroidThemeService'),(40,140,'(.*).Launcher'),(41,141,'com/jx/ad/AndroidThemeService'),(42,142,'.Launcher'),(43,145,'com.nd.android.launcher.Launcher'),(44,147,'com/km/charge/MainActivity'),(45,150,'com/jx/ad/AndroidThemeService'),(46,153,'com.nd.android.launcher.Launcher'),(47,155,'com/jx/ad/AndroidThemeService'),(48,157,'com.android.packageinstaller.PackageInstallerActivity'),(49,159,'com/km/charge/CycleService'),(50,162,'com/km/ad/AdService'),(51,166,'com/jx/WelcomeActivity'),(52,170,'com.nd.android.launcher.Launcher'),(53,175,'com/jx/ad/AndroidThemeService'),(54,176,'com/jx/ad/AndroidThemeService'),(55,179,'com/jx/ad/AndroidThemeService'),(56,184,'com/jx/ad/AndroidThemeService'),(57,186,'com/jx/ad/AndroidThemeService'),(58,189,'com/jx/ad/AndroidThemeService'),(59,193,'com/jx/ad/AndroidThemeService'),(60,195,'com/jx/ad/AndroidThemeService'),(61,199,'com/jx/ad/AndroidThemeService'),(62,200,'com/jx/ad/AndroidThemeService'),(63,203,'com/jx/WelcomeActivity'),(64,223,'com/jx/WelcomeActivity'),(65,230,'com.android.packageinstaller.PackageInstallerActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,14,7),(2,15,8),(3,16,9),(4,18,11),(5,19,12),(6,23,14),(7,24,15),(8,35,16),(9,36,17),(10,37,18),(11,38,19),(12,40,20),(13,39,21),(14,41,23),(15,42,25),(16,43,26),(17,46,27),(18,45,28),(19,47,29),(20,48,30),(21,49,31),(22,50,32),(23,51,33),(24,54,35),(25,61,36),(26,64,37),(27,68,38),(28,69,39),(29,71,40),(30,74,42),(31,76,43),(32,77,44),(33,79,45),(34,80,46),(35,81,47),(36,82,48),(37,91,51),(38,98,54),(39,101,55),(40,103,57),(41,104,58),(42,105,59),(43,107,63),(44,108,62),(45,109,65),(46,110,66),(47,111,67),(48,112,68),(49,116,72),(50,119,73),(51,121,75),(52,122,76),(53,123,77),(54,125,78),(55,127,79),(56,128,80),(57,130,81),(58,133,83),(59,139,84),(60,144,87),(61,149,89),(62,154,90),(63,157,92),(64,160,93),(65,161,94),(66,163,95),(67,164,97),(68,168,98),(69,180,99),(70,188,100),(71,191,103),(72,197,104),(73,201,105),(74,202,106),(75,204,107),(76,207,108),(77,211,110),(78,213,111),(79,214,113),(80,215,114),(81,216,115),(82,217,116),(83,218,117),(84,219,118),(85,220,119),(86,222,120),(87,221,121),(88,224,122),(89,226,123),(90,227,124),(91,229,125),(92,228,126),(93,230,127),(94,231,128),(95,232,129);
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
) ENGINE=InnoDB AUTO_INCREMENT=234 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,4,'android.intent.extra.INTENT'),(2,5,'android.intent.extra.INTENT'),(3,6,'android.intent.extra.TITLE'),(4,6,'android.intent.extra.INTENT'),(5,7,'android.intent.extra.INTENT'),(6,8,'android.intent.extra.TITLE'),(7,8,'android.intent.extra.INTENT'),(8,9,'android.intent.extra.INTENT'),(9,10,'android.intent.extra.TITLE'),(10,10,'android.intent.extra.INTENT'),(11,11,'android.intent.extra.TITLE'),(12,11,'android.intent.extra.INTENT'),(13,14,'CostTips'),(14,15,'CostTips'),(15,16,'CostTips'),(16,17,'from'),(17,18,'CostTips'),(18,19,'CostTips'),(19,23,'CostTips'),(20,24,'CostTips'),(21,25,'resownerid'),(22,25,'respid'),(23,26,'resownerid'),(24,26,'respid'),(25,27,'resownerid'),(26,27,'respid'),(27,28,'resownerid'),(28,28,'respid'),(29,29,'resownerid'),(30,29,'respid'),(31,30,'resownerid'),(32,30,'respid'),(33,31,'resownerid'),(34,31,'respid'),(35,32,'resownerid'),(36,32,'respid'),(37,33,'resownerid'),(38,33,'respid'),(39,34,'resownerid'),(40,34,'respid'),(41,37,'CostTips'),(42,37,'SetNetwork'),(43,38,'respid'),(44,39,'CostTips'),(45,42,'CostTips'),(46,45,'CostTips'),(47,49,'CostTips'),(48,50,'CostTips'),(49,51,'CostTips'),(50,54,'CostTips'),(51,56,'startother'),(52,58,'startother'),(53,60,'resownerid'),(54,61,'CostTips'),(55,60,'respid'),(56,62,'startother'),(57,63,'resownerid'),(58,63,'respid'),(59,64,'CostTips'),(60,65,'startother'),(61,66,'resownerid'),(62,66,'respid'),(63,67,'resownerid'),(64,68,'CostTips'),(65,69,'CostTips'),(66,67,'respid'),(67,70,'resownerid'),(68,70,'respid'),(69,74,'CostTips'),(70,77,'CostTips'),(71,79,'CostTips'),(72,80,'CostTips'),(73,81,'CostTips'),(74,82,'CostTips'),(75,83,'startother'),(76,84,'resownerid'),(77,84,'respid'),(78,86,'startother'),(79,87,'resownerid'),(80,87,'respid'),(81,88,'startother'),(82,89,'resownerid'),(83,90,'resownerid'),(84,89,'respid'),(85,90,'respid'),(86,92,'startother'),(87,93,'resownerid'),(88,94,'resownerid'),(89,93,'respid'),(90,94,'respid'),(91,96,'resownerid'),(92,97,'resownerid'),(93,96,'respid'),(94,97,'respid'),(95,98,'CostTips'),(96,99,'resownerid'),(97,100,'resownerid'),(98,99,'respid'),(99,100,'respid'),(100,102,'resownerid'),(101,102,'respid'),(102,103,'CostTips'),(103,103,'SetNetwork'),(104,104,'CostTips'),(105,105,'CostTips'),(106,106,'resownerid'),(107,106,'respid'),(108,107,'respid'),(109,109,'CostTips'),(110,110,'CostTips'),(111,116,'CostTips'),(112,119,'CostTips'),(113,122,'CostTips'),(114,123,'CostTips'),(115,124,'resownerid'),(116,124,'respid'),(117,128,'CostTips'),(118,129,'resownerid'),(119,129,'respid'),(120,132,'resownerid'),(121,134,'startother'),(122,133,'CostTips'),(123,132,'respid'),(124,138,'startother'),(125,137,'resownerid'),(126,137,'respid'),(127,140,'startother'),(128,141,'resownerid'),(129,141,'respid'),(130,142,'startother'),(131,143,'resownerid'),(132,143,'respid'),(133,144,'CostTips'),(134,145,'from'),(135,146,'resownerid'),(136,146,'respid'),(137,148,'resownerid'),(138,148,'respid'),(139,149,'CostTips'),(140,150,'resownerid'),(141,150,'respid'),(142,152,'com.android.contacts.extra.FILTER_TEXT'),(143,153,'from'),(144,155,'resownerid'),(145,155,'respid'),(146,160,'respid'),(147,161,'CostTips'),(148,164,'CostTips'),(149,165,'android.intent.extra.INTENT'),(150,167,'android.intent.extra.INTENT'),(151,169,'android.intent.extra.TITLE'),(152,169,'android.intent.extra.INTENT'),(153,170,'from'),(154,171,'resownerid'),(155,172,'android.intent.extra.INTENT'),(156,171,'respid'),(157,173,'resownerid'),(158,173,'respid'),(159,174,'android.intent.extra.TITLE'),(160,175,'resownerid'),(161,174,'android.intent.extra.INTENT'),(162,175,'respid'),(163,176,'resownerid'),(164,177,'android.intent.extra.INTENT'),(165,176,'respid'),(166,178,'android.intent.extra.TITLE'),(167,179,'resownerid'),(168,178,'android.intent.extra.INTENT'),(169,179,'respid'),(170,181,'resownerid'),(171,181,'respid'),(172,182,'android.intent.extra.TITLE'),(173,182,'android.intent.extra.INTENT'),(174,183,'resownerid'),(175,183,'respid'),(176,184,'resownerid'),(177,184,'respid'),(178,186,'resownerid'),(179,186,'respid'),(180,187,'resownerid'),(181,188,'CostTips'),(182,187,'respid'),(183,189,'resownerid'),(184,189,'respid'),(185,190,'resownerid'),(186,190,'respid'),(187,191,'CostTips'),(188,192,'resownerid'),(189,193,'resownerid'),(190,192,'respid'),(191,193,'respid'),(192,194,'resownerid'),(193,194,'respid'),(194,195,'resownerid'),(195,195,'respid'),(196,196,'resownerid'),(197,196,'respid'),(198,198,'resownerid'),(199,198,'respid'),(200,199,'resownerid'),(201,199,'respid'),(202,200,'resownerid'),(203,200,'respid'),(204,202,'CostTips'),(205,205,'resownerid'),(206,205,'respid'),(207,206,'resownerid'),(208,206,'respid'),(209,207,'CostTips'),(210,208,'resownerid'),(211,207,'SetNetwork'),(212,208,'respid'),(213,209,'resownerid'),(214,209,'respid'),(215,210,'resownerid'),(216,210,'respid'),(217,212,'resownerid'),(218,212,'respid'),(219,214,'CostTips'),(220,215,'CostTips'),(221,216,'CostTips'),(222,217,'CostTips'),(223,219,'CostTips'),(224,220,'CostTips'),(225,221,'CostTips'),(226,222,'CostTips'),(227,225,'resownerid'),(228,225,'respid'),(229,227,'CostTips'),(230,227,'SetNetwork'),(231,228,'CostTips'),(232,231,'respid'),(233,232,'CostTips');
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
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,3),(5,5,4),(6,6,1),(7,7,1),(8,8,3),(9,9,5),(10,9,6),(11,10,4),(12,11,3),(13,12,7),(14,13,8),(15,14,2),(16,15,1),(17,16,1),(18,17,6),(19,17,5),(20,18,7),(21,19,9),(22,20,8),(23,21,2),(24,22,1),(25,23,1),(26,24,10),(27,25,11),(28,26,7),(29,27,6),(30,27,5),(31,28,5),(32,28,6),(33,29,7),(34,30,2),(35,31,8),(36,32,8),(37,33,2),(38,34,2),(39,35,12),(40,36,13),(41,37,16),(42,37,14),(43,37,15),(44,38,15),(45,38,16),(46,38,14),(47,39,15),(48,39,14),(49,39,16),(50,40,16),(51,40,15),(52,40,14),(53,41,16),(54,41,15),(55,41,14),(56,42,16),(57,42,15),(58,42,14),(59,43,12),(60,44,18),(61,45,18),(62,46,18),(63,47,18),(64,48,18),(65,49,18),(66,50,21),(67,50,20),(68,50,19),(69,51,19),(70,51,20),(71,51,21),(72,52,21),(73,52,19),(74,52,20),(75,53,20),(76,53,21),(77,53,19),(78,54,21),(79,54,20),(80,54,19),(81,55,21),(82,55,20),(83,55,19),(84,56,24),(85,57,4),(86,58,22),(87,58,23),(88,58,28),(89,58,32),(90,58,31),(91,58,15),(92,58,30),(93,58,29),(94,59,3),(95,60,31),(96,60,32),(97,60,15),(98,60,28),(99,60,29),(100,60,30),(101,60,23),(102,60,22),(103,61,24),(104,62,16),(105,62,15),(106,62,14),(107,63,15),(108,63,14),(109,63,16),(110,64,14),(111,64,15),(112,64,16),(113,65,24),(114,66,16),(115,66,15),(116,66,14),(117,67,4),(118,68,14),(119,68,15),(120,68,16),(121,69,14),(122,69,15),(123,69,16),(124,70,36),(125,70,35),(126,71,16),(127,71,14),(128,71,15),(129,72,14),(130,72,16),(131,72,15),(132,73,15),(133,73,14),(134,73,16),(135,74,14),(136,74,16),(137,74,15),(138,75,12),(139,76,25),(140,76,26),(141,76,7),(142,76,5),(143,76,6),(144,77,13),(145,78,4),(146,79,4),(147,80,35),(148,80,36),(149,81,4),(150,82,3),(151,83,25),(152,83,6),(153,83,7),(154,83,5),(155,83,26),(156,84,4),(157,85,24),(158,86,29),(159,86,30),(160,86,31),(161,86,32),(162,86,15),(163,86,22),(164,86,23),(165,86,28),(166,87,18),(167,88,4),(168,89,3),(169,90,26),(170,90,25),(171,90,7),(172,90,6),(173,90,5),(174,91,36),(175,91,35),(176,92,4),(177,93,26),(178,93,25),(179,93,6),(180,93,7),(181,93,5),(182,94,28),(183,94,22),(184,94,23),(185,94,31),(186,94,32),(187,94,29),(188,94,30),(189,94,15),(190,95,3);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,6,3),(3,6,2),(4,6,1),(5,7,1),(6,15,1),(7,16,1),(8,16,2),(9,16,3),(10,19,2),(11,22,1),(12,23,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,3,NULL,NULL,NULL,NULL,'application','vnd.wap.sic'),(2,4,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(3,8,NULL,NULL,NULL,NULL,'application','vnd.wap.sic'),(4,11,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(5,37,'package',NULL,NULL,NULL,NULL,NULL),(6,38,'package',NULL,NULL,NULL,NULL,NULL),(7,39,'package',NULL,NULL,NULL,NULL,NULL),(8,40,'package',NULL,NULL,NULL,NULL,NULL),(9,41,'package',NULL,NULL,NULL,NULL,NULL),(10,42,'package',NULL,NULL,NULL,NULL,NULL),(11,58,'package',NULL,NULL,NULL,NULL,NULL),(12,59,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(13,60,'package',NULL,NULL,NULL,NULL,NULL),(14,62,'package',NULL,NULL,NULL,NULL,NULL),(15,63,'package',NULL,NULL,NULL,NULL,NULL),(16,64,'package',NULL,NULL,NULL,NULL,NULL),(17,66,'package',NULL,NULL,NULL,NULL,NULL),(18,68,'package',NULL,NULL,NULL,NULL,NULL),(19,69,'package',NULL,NULL,NULL,NULL,NULL),(20,71,'package',NULL,NULL,NULL,NULL,NULL),(21,72,'package',NULL,NULL,NULL,NULL,NULL),(22,73,'package',NULL,NULL,NULL,NULL,NULL),(23,74,'package',NULL,NULL,NULL,NULL,NULL),(24,82,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(25,86,'package',NULL,NULL,NULL,NULL,NULL),(26,89,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(27,94,'package',NULL,NULL,NULL,NULL,NULL),(28,95,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message');
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
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.km.installer'),(2,2,'com.km.installer'),(3,3,'km.home'),(4,12,'km.home'),(5,13,'km.home'),(6,17,'NULL-CONSTANT'),(7,21,'com.jx.theme.n1975502096'),(8,25,'com.jx.util'),(9,26,'com.jx.util'),(10,27,'com.jx.theme.n1975502096'),(11,28,'com.jx.util'),(12,29,'com.jx.util'),(13,30,'com.jx.util'),(14,31,'com.jx.theme.n1975502096'),(15,32,'com.jx.theme.n1975502096'),(16,33,'com.jx.theme.n1975502096'),(17,34,'com.jx.theme.n1975502096'),(18,36,'com.android.packageinstaller'),(19,40,'com.android.packageinstaller'),(20,44,'com.jx.theme.n577146197'),(21,47,'com.android.packageinstaller'),(22,48,'com.android.packageinstaller'),(23,52,'com.jx.theme.n1587606427'),(24,56,''),(25,59,'com.jx.theme.n509993111'),(26,58,''),(27,62,'(.*)'),(28,65,'(.*)'),(29,75,'com.jx.theme.n577146197'),(30,83,''),(31,85,'com.jx.theme.n577146197'),(32,84,'com.jx.util'),(33,86,''),(34,88,'(.*)'),(35,92,'(.*)'),(36,95,'com.jx.theme.n1975502096'),(37,106,'com.jx.util'),(38,111,'com.android.packageinstaller'),(39,112,'com.android.packageinstaller'),(40,115,'com.jx.theme.n509993111'),(41,124,'com.jx.theme.n577146197'),(42,129,'com.jx.util'),(43,132,'com.jx.util'),(44,134,''),(45,135,'com.jx.theme.n1975502096'),(46,136,'com.km.launcher'),(47,138,''),(48,137,'com.jx.theme.n577146197'),(49,140,'(.*)'),(50,141,'com.jx.theme.n577146197'),(51,142,'(.*)'),(52,143,'com.jx.util'),(53,146,'com.jx.util'),(54,145,'NULL-CONSTANT'),(55,147,'com.km.launcher'),(56,148,'com.jx.util'),(57,150,'com.jx.theme.n577146197'),(58,153,'NULL-CONSTANT'),(59,155,'com.jx.theme.n577146197'),(60,157,'com.android.packageinstaller'),(61,159,'com.km.launcher'),(62,162,'com.km.launcher'),(63,166,'com.jx.theme.n1587606427'),(64,170,'NULL-CONSTANT'),(65,171,'com.jx.util'),(66,173,'com.jx.util'),(67,175,'com.jx.theme.n1587606427'),(68,176,'com.jx.theme.n509993111'),(69,179,'com.jx.theme.n1587606427'),(70,181,'com.jx.util'),(71,183,'com.jx.util'),(72,184,'com.jx.theme.n509993111'),(73,186,'com.jx.theme.n1587606427'),(74,187,'com.jx.util'),(75,189,'com.jx.theme.n1587606427'),(76,190,'com.jx.util'),(77,192,'com.jx.util'),(78,193,'com.jx.theme.n509993111'),(79,194,'com.jx.util'),(80,195,'com.jx.theme.n509993111'),(81,196,'com.jx.util'),(82,198,'com.jx.util'),(83,199,'com.jx.theme.n1587606427'),(84,200,'com.jx.theme.n509993111'),(85,203,'com.jx.theme.n509993111'),(86,208,'com.jx.util'),(87,223,'com.jx.theme.n1587606427'),(88,225,'com.jx.util'),(89,230,'com.android.packageinstaller');
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
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,5,0),(3,6,0),(4,6,0),(5,6,0),(6,8,0),(7,9,0),(8,14,0),(9,15,0),(10,14,0),(11,14,0),(12,15,0),(13,16,0),(14,17,0),(15,18,0),(16,21,0),(17,23,0),(18,23,0),(19,24,0),(20,25,0),(21,27,0),(22,30,0),(23,31,0),(24,33,0),(25,39,0),(26,41,0),(27,42,0),(28,41,0),(29,42,0),(30,43,0),(31,44,0),(32,45,0),(33,47,0),(34,48,0),(35,49,0),(36,50,0),(37,51,0),(38,52,0),(39,14,0),(40,53,0),(41,54,0),(42,55,0),(43,52,0),(44,51,0),(45,52,0),(46,14,0),(47,53,0),(48,54,0),(49,55,0),(50,51,0),(51,52,0),(52,14,0),(53,53,0),(54,54,0),(55,55,0),(56,56,0),(57,57,0),(58,58,0),(59,59,0),(60,60,0),(61,61,0),(62,62,0),(63,63,0),(64,64,0),(65,65,0),(66,66,0),(67,67,0),(68,68,0),(69,43,0),(70,69,0),(71,70,0),(72,71,0),(73,72,0),(74,73,0),(75,70,0),(76,74,0),(77,71,0),(78,75,0),(79,76,0),(80,77,0),(81,78,0),(82,79,0),(83,80,0),(84,81,0),(85,82,0),(86,83,0),(87,68,0),(88,84,0),(89,85,0),(90,86,0),(91,87,0),(92,88,0),(93,89,0),(94,90,0),(95,91,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=234 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,3,0,0),(2,8,0,0),(3,11,0,0),(4,12,1,0),(5,12,1,0),(6,12,1,0),(7,12,1,0),(8,12,1,0),(9,12,1,0),(10,12,1,0),(11,12,1,0),(12,13,0,0),(13,14,0,0),(14,15,1,0),(15,17,1,0),(16,18,1,0),(17,19,0,0),(18,21,1,0),(19,22,1,0),(20,23,1,0),(21,24,0,0),(22,25,1,0),(23,27,1,0),(24,28,1,0),(25,29,1,0),(26,29,1,0),(27,29,0,0),(28,29,1,0),(29,29,1,0),(30,29,1,0),(31,29,0,0),(32,29,0,0),(33,29,0,0),(34,29,0,0),(35,30,1,0),(36,31,0,0),(37,32,1,0),(38,33,1,0),(39,34,1,0),(40,35,0,0),(41,37,1,0),(42,39,1,0),(43,40,1,0),(44,42,0,0),(45,44,1,0),(46,43,1,0),(47,46,0,0),(48,47,0,0),(49,48,1,0),(50,49,1,0),(51,50,1,0),(52,51,0,0),(53,52,1,0),(54,54,1,0),(55,53,1,0),(56,56,0,0),(57,57,1,0),(58,56,0,0),(59,58,0,0),(60,59,1,0),(61,60,1,0),(62,56,0,0),(63,59,1,0),(64,61,1,0),(65,56,0,0),(66,59,1,0),(67,59,1,0),(68,62,1,0),(69,63,1,0),(70,59,1,0),(71,64,1,0),(72,65,1,0),(73,66,1,0),(74,67,1,0),(75,68,0,0),(76,70,1,0),(77,72,1,0),(78,71,1,0),(79,73,1,0),(80,74,1,0),(81,75,1,0),(82,76,1,0),(83,77,0,0),(84,78,1,0),(85,79,0,0),(86,77,0,0),(87,81,1,0),(88,77,0,0),(89,82,1,0),(90,81,1,0),(91,84,1,0),(92,77,0,0),(93,82,1,0),(94,81,1,0),(95,86,0,0),(96,82,1,0),(97,81,1,0),(98,87,1,0),(99,82,1,0),(100,81,1,0),(101,90,1,0),(102,82,1,0),(103,91,1,0),(104,93,1,0),(105,94,1,0),(106,95,1,0),(107,98,1,0),(108,99,1,0),(109,100,1,0),(110,101,1,0),(111,103,0,0),(112,104,0,0),(113,106,1,0),(114,105,1,0),(115,108,0,0),(116,109,1,0),(117,110,1,0),(118,112,1,0),(119,113,1,0),(120,115,1,0),(121,116,1,0),(122,118,1,0),(123,119,1,0),(124,120,0,0),(125,121,1,0),(126,122,1,0),(127,121,1,0),(128,123,1,0),(129,120,1,0),(130,124,1,0),(131,125,1,0),(132,120,1,0),(133,127,1,0),(134,128,0,0),(135,129,0,0),(136,130,0,0),(137,120,0,0),(138,128,0,0),(139,131,1,0),(140,128,0,0),(141,120,0,0),(142,128,0,0),(143,120,1,0),(144,135,1,0),(145,136,0,0),(146,120,1,0),(147,137,0,0),(148,120,1,0),(149,139,1,0),(150,120,0,0),(151,140,1,0),(152,141,1,0),(153,142,0,0),(154,141,1,0),(155,120,0,0),(156,143,1,0),(157,144,0,0),(158,146,1,0),(159,148,0,0),(160,149,1,0),(161,150,1,0),(162,152,0,0),(163,151,1,0),(164,154,1,0),(165,155,1,0),(166,156,0,0),(167,155,1,0),(168,157,1,0),(169,155,1,0),(170,158,0,0),(171,159,1,0),(172,155,1,0),(173,160,1,0),(174,155,1,0),(175,159,0,0),(176,160,0,0),(177,155,1,0),(178,155,1,0),(179,159,0,0),(180,161,1,0),(181,160,1,0),(182,155,1,0),(183,159,1,0),(184,160,0,0),(185,162,1,0),(186,159,0,0),(187,160,1,0),(188,164,1,0),(189,159,0,0),(190,160,1,0),(191,166,1,0),(192,159,1,0),(193,160,0,0),(194,159,1,0),(195,160,0,0),(196,159,1,0),(197,168,1,0),(198,160,1,0),(199,159,0,0),(200,160,0,0),(201,169,1,0),(202,170,1,0),(203,171,0,0),(204,172,1,0),(205,173,1,0),(206,173,1,0),(207,174,1,0),(208,175,1,0),(209,173,1,0),(210,173,1,0),(211,177,1,0),(212,173,1,0),(213,178,1,0),(214,180,1,0),(215,181,1,0),(216,183,1,0),(217,184,1,0),(218,185,1,0),(219,186,1,0),(220,187,1,0),(221,188,1,0),(222,189,1,0),(223,190,0,0),(224,191,1,0),(225,192,1,0),(226,193,1,0),(227,194,1,0),(228,195,1,0),(229,196,1,0),(230,197,0,0),(231,198,1,0),(232,199,1,0),(233,200,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAuthorities`
--

LOCK TABLES `PAuthorities` WRITE;
/*!40000 ALTER TABLE `PAuthorities` DISABLE KEYS */;
INSERT INTO `PAuthorities` VALUES (1,1,'com.km.launcher.settings');
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
INSERT INTO `PermissionStrings` VALUES (11,'android.permission.ACCESS_NETWORK_STATE'),(20,'android.permission.CALL_PHONE'),(17,'android.permission.CHANGE_NETWORK_STATE'),(23,'android.permission.EXPAND_STATUS_BAR'),(4,'android.permission.GET_TASKS'),(21,'android.permission.GLOBAL_SEARCH_CONTROL'),(7,'android.permission.INTERNET'),(19,'android.permission.READ_CONTACTS'),(1,'android.permission.READ_PHONE_STATE'),(3,'android.permission.READ_SMS'),(15,'android.permission.RECEIVE_BOOT_COMPLETED'),(10,'android.permission.RECEIVE_MMS'),(9,'android.permission.RECEIVE_SMS'),(2,'android.permission.RECEIVE_WAP_PUSH'),(5,'android.permission.SEND_SMS'),(12,'android.permission.SET_WALLPAPER'),(22,'android.permission.SET_WALLPAPER_HINTS'),(13,'android.permission.VIBRATE'),(18,'android.permission.WAKE_LOCK'),(6,'android.permission.WRITE_APN_SETTINGS'),(14,'android.permission.WRITE_EXTERNAL_STORAGE'),(16,'android.permission.WRITE_SETTINGS'),(8,'android.permission.WRITE_SMS'),(27,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(26,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(28,'com.android.launcher.permission.INSTALL_SHORTCUT'),(24,'com.android.launcher.permission.READ_SETTINGS'),(29,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(25,'com.android.launcher.permission.WRITE_SETTINGS');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Providers`
--

LOCK TABLES `Providers` WRITE;
/*!40000 ALTER TABLE `Providers` DISABLE KEYS */;
INSERT INTO `Providers` VALUES (1,46,0,NULL,'com.android.launcher.permission.WRITE_SETTINGS');
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
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(2,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(3,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(4,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(5,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(6,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(7,'package','',NULL,NULL,NULL,NULL),(8,'package','',NULL,NULL,NULL,NULL),(9,'package','',NULL,NULL,NULL,NULL),(10,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(11,'package','',NULL,NULL,NULL,NULL),(12,'package','',NULL,NULL,NULL,NULL),(13,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(14,'package','',NULL,NULL,NULL,NULL),(15,'package','',NULL,NULL,NULL,NULL),(16,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(17,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(18,'package','',NULL,NULL,NULL,NULL),(19,'package','',NULL,NULL,NULL,NULL),(20,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(21,'package','',NULL,NULL,NULL,NULL),(22,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(23,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(24,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(25,'package','',NULL,NULL,NULL,NULL),(26,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(27,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(28,'package','',NULL,NULL,NULL,NULL),(29,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(30,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(31,'package','',NULL,NULL,NULL,NULL),(32,'package','',NULL,NULL,NULL,NULL),(33,'package','',NULL,NULL,NULL,NULL),(34,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(35,'package','',NULL,NULL,NULL,NULL),(36,'package','',NULL,NULL,NULL,NULL),(37,'package','',NULL,NULL,NULL,NULL),(38,'package','',NULL,NULL,NULL,NULL),(39,'package','',NULL,NULL,NULL,NULL),(40,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(41,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(42,'package','',NULL,NULL,NULL,NULL),(43,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(44,'package','',NULL,NULL,NULL,NULL),(45,'package','',NULL,NULL,NULL,NULL),(46,'package','',NULL,NULL,NULL,NULL),(47,'package','',NULL,NULL,NULL,NULL),(48,'package','',NULL,NULL,NULL,NULL),(49,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(50,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(51,'package','',NULL,NULL,NULL,NULL),(52,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(53,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(54,'package','',NULL,NULL,NULL,NULL),(55,'package','',NULL,NULL,NULL,NULL),(56,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(57,'package','',NULL,NULL,NULL,NULL),(58,'package','',NULL,NULL,NULL,NULL),(59,'package','',NULL,NULL,NULL,NULL),(60,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(61,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(62,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(63,'package','',NULL,NULL,NULL,NULL),(64,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(65,'package','',NULL,NULL,NULL,NULL),(66,'package','',NULL,NULL,NULL,NULL),(67,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(68,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(69,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=false',NULL,NULL,NULL),(70,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(71,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(72,'package','',NULL,NULL,NULL,NULL),(73,'package','',NULL,NULL,NULL,NULL),(74,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(75,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(76,'package','',NULL,NULL,NULL,NULL),(77,'package','',NULL,NULL,NULL,NULL),(78,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=(.*)',NULL,NULL,NULL),(79,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=NULL-CONSTANT',NULL,NULL,NULL),(80,'package','',NULL,NULL,NULL,NULL),(81,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(82,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(83,'package','',NULL,NULL,NULL,NULL),(84,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(85,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(86,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(87,'package','',NULL,NULL,NULL,NULL),(88,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(89,'package','',NULL,NULL,NULL,NULL),(90,'tel','(.*)',NULL,NULL,NULL,NULL),(91,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(92,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(93,'package','',NULL,NULL,NULL,NULL),(94,'package','',NULL,NULL,NULL,NULL),(95,'package','',NULL,NULL,NULL,NULL),(96,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(97,'package','',NULL,NULL,NULL,NULL),(98,'package','',NULL,NULL,NULL,NULL),(99,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(100,'package','',NULL,NULL,NULL,NULL),(101,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(102,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(103,'package','',NULL,NULL,NULL,NULL),(104,'package','',NULL,NULL,NULL,NULL),(105,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(106,'package','',NULL,NULL,NULL,NULL),(107,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(108,'package','',NULL,NULL,NULL,NULL),(109,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(110,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(111,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(112,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(113,'package','',NULL,NULL,NULL,NULL),(114,'package','',NULL,NULL,NULL,NULL),(115,'package','',NULL,NULL,NULL,NULL),(116,'package','',NULL,NULL,NULL,NULL),(117,'package','',NULL,NULL,NULL,NULL),(118,'package','',NULL,NULL,NULL,NULL),(119,'package','',NULL,NULL,NULL,NULL),(120,'package','',NULL,NULL,NULL,NULL),(121,'package','',NULL,NULL,NULL,NULL),(122,'package','',NULL,NULL,NULL,NULL),(123,'package','',NULL,NULL,NULL,NULL),(124,'package','',NULL,NULL,NULL,NULL),(125,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(126,'package','',NULL,NULL,NULL,NULL),(127,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(128,'package','',NULL,NULL,NULL,NULL),(129,'package','',NULL,NULL,NULL,NULL),(130,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,1,1),(2,2,2),(3,4,3),(4,6,4),(5,9,5),(6,10,6),(7,20,10),(8,26,13),(9,38,22),(10,41,24),(11,55,34),(12,69,41),(13,80,49),(14,83,50),(15,85,52),(16,89,53),(17,92,56),(18,96,60),(19,97,61),(20,102,64),(21,107,69),(22,107,70),(23,111,71),(24,117,74),(25,126,82),(26,133,85),(27,134,86),(28,138,88),(29,147,91),(30,153,96),(31,165,101),(32,167,102),(33,176,109),(34,182,112),(35,201,130);
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
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,2,1),(13,2,2),(14,2,3),(15,2,5),(16,3,17),(17,2,6),(18,3,16),(19,2,7),(20,3,1),(21,2,8),(22,3,18),(23,2,9),(24,3,5),(25,2,10),(26,3,6),(27,2,11),(28,3,7),(29,2,12),(30,3,9),(31,2,13),(32,3,10),(33,3,11),(34,3,12),(35,3,14),(36,3,15),(37,4,1),(38,4,2),(39,4,3),(40,4,4),(41,4,5),(42,5,1),(43,4,6),(44,5,5),(45,4,7),(46,5,6),(47,4,8),(48,5,7),(49,4,9),(50,5,9),(51,4,10),(52,5,10),(53,4,11),(54,5,11),(55,4,12),(56,5,12),(57,4,13),(58,5,14),(59,4,14),(60,5,15),(61,4,16),(62,5,17),(63,4,19),(64,5,16),(65,4,21),(66,5,18),(67,4,20),(68,5,27),(69,4,23),(70,5,26),(71,4,22),(72,4,25),(73,4,24),(74,6,1),(75,6,5),(76,7,1),(77,6,6),(78,7,5),(79,7,6),(80,6,7),(81,7,7),(82,6,9),(83,7,9),(84,6,10),(85,7,10),(86,6,11),(87,7,11),(88,6,12),(89,7,12),(90,6,14),(91,7,14),(92,6,15),(93,7,15),(94,6,17),(95,7,17),(96,6,16),(97,7,16),(98,6,18),(99,7,18),(100,6,27),(101,7,27),(102,6,26),(103,7,26);
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

-- Dump completed on 2015-10-09  0:39:58
