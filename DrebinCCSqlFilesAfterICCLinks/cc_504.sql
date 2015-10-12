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
) ENGINE=InnoDB AUTO_INCREMENT=3871 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,44,13,2,NULL),(2,44,20,2,NULL),(3,44,36,2,NULL),(4,44,37,2,NULL),(5,75,13,2,NULL),(6,75,20,2,NULL),(7,75,36,2,NULL),(8,75,37,2,NULL),(9,124,15,2,NULL),(10,124,23,2,NULL),(11,124,41,2,NULL),(12,124,42,2,NULL),(13,137,15,2,NULL),(14,137,23,2,NULL),(15,137,41,2,NULL),(16,137,42,2,NULL),(17,141,15,2,NULL),(18,141,23,2,NULL),(19,141,41,2,NULL),(20,141,42,2,NULL),(21,150,15,2,NULL),(22,150,23,2,NULL),(23,150,41,2,NULL),(24,150,42,2,NULL),(25,155,15,2,NULL),(26,155,23,2,NULL),(27,155,41,2,NULL),(28,155,42,2,NULL),(29,53,1,2,NULL),(30,78,1,2,NULL),(31,89,1,2,NULL),(32,93,1,2,NULL),(33,96,1,2,NULL),(34,99,1,2,NULL),(35,102,1,2,NULL),(36,129,1,2,NULL),(37,132,1,2,NULL),(38,143,1,2,NULL),(39,146,1,2,NULL),(40,148,1,2,NULL),(41,53,5,2,NULL),(42,78,5,2,NULL),(43,89,5,2,NULL),(44,93,5,2,NULL),(45,96,5,2,NULL),(46,4,1,2,NULL),(47,99,5,2,NULL),(48,5,1,2,NULL),(49,102,5,2,NULL),(50,6,1,2,NULL),(51,129,5,2,NULL),(52,7,1,2,NULL),(53,132,5,2,NULL),(54,8,1,2,NULL),(55,143,5,2,NULL),(56,9,1,2,NULL),(57,146,5,2,NULL),(58,10,1,2,NULL),(59,148,5,2,NULL),(60,11,1,2,NULL),(61,53,6,2,NULL),(62,20,1,2,NULL),(63,78,6,2,NULL),(64,25,1,2,NULL),(65,89,6,2,NULL),(66,26,1,2,NULL),(67,93,6,2,NULL),(68,28,1,2,NULL),(69,96,6,2,NULL),(70,29,1,2,NULL),(71,99,6,2,NULL),(72,30,1,2,NULL),(73,102,6,2,NULL),(74,60,1,2,NULL),(75,129,6,2,NULL),(76,63,1,2,NULL),(77,132,6,2,NULL),(78,66,1,2,NULL),(79,143,6,2,NULL),(80,67,1,2,NULL),(81,146,6,2,NULL),(82,70,1,2,NULL),(83,148,6,2,NULL),(84,73,1,2,NULL),(85,53,49,2,NULL),(86,114,1,2,NULL),(87,78,49,2,NULL),(88,152,1,2,NULL),(89,89,49,2,NULL),(90,165,1,2,NULL),(91,93,49,2,NULL),(92,167,1,2,NULL),(93,96,49,2,NULL),(94,169,1,2,NULL),(95,99,49,2,NULL),(96,172,1,2,NULL),(97,102,49,2,NULL),(98,174,1,2,NULL),(99,129,49,2,NULL),(100,177,1,2,NULL),(101,132,49,2,NULL),(102,178,1,2,NULL),(103,143,49,2,NULL),(104,182,1,2,NULL),(105,146,49,2,NULL),(106,72,1,2,NULL),(107,148,49,2,NULL),(108,156,1,2,NULL),(109,53,50,2,NULL),(110,171,1,2,NULL),(111,78,50,2,NULL),(112,183,1,2,NULL),(113,89,50,2,NULL),(114,192,1,2,NULL),(115,93,50,2,NULL),(116,194,1,2,NULL),(117,96,50,2,NULL),(118,196,1,2,NULL),(119,99,50,2,NULL),(120,205,1,2,NULL),(121,102,50,2,NULL),(122,206,1,2,NULL),(123,129,50,2,NULL),(124,209,1,2,NULL),(125,132,50,2,NULL),(126,210,1,2,NULL),(127,143,50,2,NULL),(128,212,1,2,NULL),(129,146,50,2,NULL),(130,126,1,2,NULL),(131,148,50,2,NULL),(132,87,1,2,NULL),(133,4,31,2,NULL),(134,90,1,2,NULL),(135,5,31,2,NULL),(136,94,1,2,NULL),(137,6,31,2,NULL),(138,97,1,2,NULL),(139,7,31,2,NULL),(140,100,1,2,NULL),(141,8,31,2,NULL),(142,151,1,2,NULL),(143,9,31,2,NULL),(144,158,1,2,NULL),(145,10,31,2,NULL),(146,173,1,2,NULL),(147,11,31,2,NULL),(148,181,1,2,NULL),(149,53,8,2,NULL),(150,187,1,2,NULL),(151,78,8,2,NULL),(152,190,1,2,NULL),(153,89,8,2,NULL),(154,198,1,2,NULL),(155,93,8,2,NULL),(156,55,1,2,NULL),(157,96,8,2,NULL),(158,185,1,2,NULL),(159,99,8,2,NULL),(160,1,3,2,NULL),(161,102,8,2,NULL),(162,4,5,2,NULL),(163,129,8,2,NULL),(164,5,5,2,NULL),(165,132,8,2,NULL),(166,6,5,2,NULL),(167,143,8,2,NULL),(168,7,5,2,NULL),(169,146,8,2,NULL),(170,8,5,2,NULL),(171,148,8,2,NULL),(172,9,5,2,NULL),(173,53,14,2,NULL),(174,10,5,2,NULL),(175,78,14,2,NULL),(176,11,5,2,NULL),(177,89,14,2,NULL),(178,20,5,2,NULL),(179,93,14,2,NULL),(180,25,5,2,NULL),(181,96,14,2,NULL),(182,26,5,2,NULL),(183,99,14,2,NULL),(184,28,5,2,NULL),(185,102,14,2,NULL),(186,29,5,2,NULL),(187,129,14,2,NULL),(188,30,5,2,NULL),(189,132,14,2,NULL),(190,60,5,2,NULL),(191,143,14,2,NULL),(192,63,5,2,NULL),(193,146,14,2,NULL),(194,66,5,2,NULL),(195,148,14,2,NULL),(196,67,5,2,NULL),(197,53,51,2,NULL),(198,70,5,2,NULL),(199,78,51,2,NULL),(200,73,5,2,NULL),(201,89,51,2,NULL),(202,114,5,2,NULL),(203,93,51,2,NULL),(204,152,5,2,NULL),(205,96,51,2,NULL),(206,165,5,2,NULL),(207,99,51,2,NULL),(208,167,5,2,NULL),(209,102,51,2,NULL),(210,169,5,2,NULL),(211,129,51,2,NULL),(212,172,5,2,NULL),(213,132,51,2,NULL),(214,174,5,2,NULL),(215,143,51,2,NULL),(216,177,5,2,NULL),(217,146,51,2,NULL),(218,178,5,2,NULL),(219,148,51,2,NULL),(220,182,5,2,NULL),(221,53,52,2,NULL),(222,72,5,2,NULL),(223,78,52,2,NULL),(224,156,5,2,NULL),(225,89,52,2,NULL),(226,171,5,2,NULL),(227,93,52,2,NULL),(228,183,5,2,NULL),(229,96,52,2,NULL),(230,192,5,2,NULL),(231,99,52,2,NULL),(232,194,5,2,NULL),(233,102,52,2,NULL),(234,196,5,2,NULL),(235,129,52,2,NULL),(236,205,5,2,NULL),(237,132,52,2,NULL),(238,206,5,2,NULL),(239,143,52,2,NULL),(240,209,5,2,NULL),(241,146,52,2,NULL),(242,210,5,2,NULL),(243,148,52,2,NULL),(244,212,5,2,NULL),(245,53,53,2,NULL),(246,126,5,2,NULL),(247,78,53,2,NULL),(248,87,5,2,NULL),(249,89,53,2,NULL),(250,90,5,2,NULL),(251,93,53,2,NULL),(252,94,5,2,NULL),(253,96,53,2,NULL),(254,97,5,2,NULL),(255,99,53,2,NULL),(256,100,5,2,NULL),(257,102,53,2,NULL),(258,151,5,2,NULL),(259,129,53,2,NULL),(260,158,5,2,NULL),(261,132,53,2,NULL),(262,173,5,2,NULL),(263,143,53,2,NULL),(264,181,5,2,NULL),(265,146,53,2,NULL),(266,187,5,2,NULL),(267,148,53,2,NULL),(268,190,5,2,NULL),(269,53,54,2,NULL),(270,198,5,2,NULL),(271,78,54,2,NULL),(272,55,5,2,NULL),(273,89,54,2,NULL),(274,185,5,2,NULL),(275,93,54,2,NULL),(276,4,6,2,NULL),(277,96,54,2,NULL),(278,5,6,2,NULL),(279,99,54,2,NULL),(280,6,6,2,NULL),(281,102,54,2,NULL),(282,7,6,2,NULL),(283,129,54,2,NULL),(284,8,6,2,NULL),(285,132,54,2,NULL),(286,9,6,2,NULL),(287,143,54,2,NULL),(288,10,6,2,NULL),(289,146,54,2,NULL),(290,11,6,2,NULL),(291,148,54,2,NULL),(292,20,6,2,NULL),(293,53,55,2,NULL),(294,25,6,2,NULL),(295,78,55,2,NULL),(296,26,6,2,NULL),(297,89,55,2,NULL),(298,28,6,2,NULL),(299,93,55,2,NULL),(300,29,6,2,NULL),(301,96,55,2,NULL),(302,30,6,2,NULL),(303,99,55,2,NULL),(304,60,6,2,NULL),(305,102,55,2,NULL),(306,63,6,2,NULL),(307,129,55,2,NULL),(308,66,6,2,NULL),(309,132,55,2,NULL),(310,67,6,2,NULL),(311,143,55,2,NULL),(312,70,6,2,NULL),(313,146,55,2,NULL),(314,73,6,2,NULL),(315,148,55,2,NULL),(316,114,6,2,NULL),(317,53,9,2,NULL),(318,152,6,2,NULL),(319,78,9,2,NULL),(320,165,6,2,NULL),(321,89,9,2,NULL),(322,167,6,2,NULL),(323,93,9,2,NULL),(324,169,6,2,NULL),(325,96,9,2,NULL),(326,172,6,2,NULL),(327,99,9,2,NULL),(328,174,6,2,NULL),(329,102,9,2,NULL),(330,177,6,2,NULL),(331,129,9,2,NULL),(332,178,6,2,NULL),(333,132,9,2,NULL),(334,182,6,2,NULL),(335,143,9,2,NULL),(336,72,6,2,NULL),(337,146,9,2,NULL),(338,156,6,2,NULL),(339,148,9,2,NULL),(340,171,6,2,NULL),(341,20,31,2,NULL),(342,183,6,2,NULL),(343,25,31,2,NULL),(344,192,6,2,NULL),(345,26,31,2,NULL),(346,194,6,2,NULL),(347,28,31,2,NULL),(348,196,6,2,NULL),(349,29,31,2,NULL),(350,205,6,2,NULL),(351,30,31,2,NULL),(352,206,6,2,NULL),(353,60,31,2,NULL),(354,209,6,2,NULL),(355,63,31,2,NULL),(356,210,6,2,NULL),(357,66,31,2,NULL),(358,212,6,2,NULL),(359,67,31,2,NULL),(360,126,6,2,NULL),(361,70,31,2,NULL),(362,87,6,2,NULL),(363,73,31,2,NULL),(364,90,6,2,NULL),(365,114,31,2,NULL),(366,94,6,2,NULL),(367,53,15,2,NULL),(368,97,6,2,NULL),(369,78,15,2,NULL),(370,100,6,2,NULL),(371,89,15,2,NULL),(372,151,6,2,NULL),(373,93,15,2,NULL),(374,158,6,2,NULL),(375,96,15,2,NULL),(376,173,6,2,NULL),(377,99,15,2,NULL),(378,181,6,2,NULL),(379,102,15,2,NULL),(380,187,6,2,NULL),(381,129,15,2,NULL),(382,190,6,2,NULL),(383,132,15,2,NULL),(384,198,6,2,NULL),(385,143,15,2,NULL),(386,55,6,2,NULL),(387,146,15,2,NULL),(388,185,6,2,NULL),(389,148,15,2,NULL),(390,4,49,2,NULL),(391,53,16,2,NULL),(392,5,49,2,NULL),(393,78,16,2,NULL),(394,6,49,2,NULL),(395,89,16,2,NULL),(396,7,49,2,NULL),(397,93,16,2,NULL),(398,8,49,2,NULL),(399,96,16,2,NULL),(400,9,49,2,NULL),(401,99,16,2,NULL),(402,10,49,2,NULL),(403,102,16,2,NULL),(404,11,49,2,NULL),(405,129,16,2,NULL),(406,20,49,2,NULL),(407,132,16,2,NULL),(408,25,49,2,NULL),(409,143,16,2,NULL),(410,26,49,2,NULL),(411,146,16,2,NULL),(412,28,49,2,NULL),(413,148,16,2,NULL),(414,29,49,2,NULL),(415,53,17,2,NULL),(416,30,49,2,NULL),(417,78,17,2,NULL),(418,60,49,2,NULL),(419,89,17,2,NULL),(420,63,49,2,NULL),(421,93,17,2,NULL),(422,66,49,2,NULL),(423,96,17,2,NULL),(424,67,49,2,NULL),(425,99,17,2,NULL),(426,70,49,2,NULL),(427,102,17,2,NULL),(428,73,49,2,NULL),(429,129,17,2,NULL),(430,114,49,2,NULL),(431,132,17,2,NULL),(432,152,49,2,NULL),(433,143,17,2,NULL),(434,165,49,2,NULL),(435,146,17,2,NULL),(436,167,49,2,NULL),(437,148,17,2,NULL),(438,169,49,2,NULL),(439,53,56,2,NULL),(440,172,49,2,NULL),(441,78,56,2,NULL),(442,174,49,2,NULL),(443,89,56,2,NULL),(444,177,49,2,NULL),(445,93,56,2,NULL),(446,178,49,2,NULL),(447,96,56,2,NULL),(448,182,49,2,NULL),(449,99,56,2,NULL),(450,72,49,2,NULL),(451,102,56,2,NULL),(452,156,49,2,NULL),(453,129,56,2,NULL),(454,171,49,2,NULL),(455,132,56,2,NULL),(456,183,49,2,NULL),(457,143,56,2,NULL),(458,192,49,2,NULL),(459,146,56,2,NULL),(460,194,49,2,NULL),(461,148,56,2,NULL),(462,196,49,2,NULL),(463,53,57,2,NULL),(464,205,49,2,NULL),(465,78,57,2,NULL),(466,206,49,2,NULL),(467,89,57,2,NULL),(468,209,49,2,NULL),(469,93,57,2,NULL),(470,210,49,2,NULL),(471,96,57,2,NULL),(472,212,49,2,NULL),(473,99,57,2,NULL),(474,126,49,2,NULL),(475,102,57,2,NULL),(476,87,49,2,NULL),(477,129,57,2,NULL),(478,90,49,2,NULL),(479,132,57,2,NULL),(480,94,49,2,NULL),(481,143,57,2,NULL),(482,97,49,2,NULL),(483,146,57,2,NULL),(484,100,49,2,NULL),(485,148,57,2,NULL),(486,151,49,2,NULL),(487,53,74,2,NULL),(488,158,49,2,NULL),(489,78,74,2,NULL),(490,173,49,2,NULL),(491,89,74,2,NULL),(492,181,49,2,NULL),(493,93,74,2,NULL),(494,187,49,2,NULL),(495,96,74,2,NULL),(496,190,49,2,NULL),(497,99,74,2,NULL),(498,198,49,2,NULL),(499,102,74,2,NULL),(500,55,49,2,NULL),(501,129,74,2,NULL),(502,185,49,2,NULL),(503,132,74,2,NULL),(504,4,50,2,NULL),(505,143,74,2,NULL),(506,5,50,2,NULL),(507,146,74,2,NULL),(508,6,50,2,NULL),(509,148,74,2,NULL),(510,7,50,2,NULL),(511,53,75,2,NULL),(512,8,50,2,NULL),(513,78,75,2,NULL),(514,9,50,2,NULL),(515,89,75,2,NULL),(516,10,50,2,NULL),(517,93,75,2,NULL),(518,11,50,2,NULL),(519,96,75,2,NULL),(520,20,50,2,NULL),(521,99,75,2,NULL),(522,25,50,2,NULL),(523,102,75,2,NULL),(524,26,50,2,NULL),(525,129,75,2,NULL),(526,28,50,2,NULL),(527,132,75,2,NULL),(528,29,50,2,NULL),(529,143,75,2,NULL),(530,30,50,2,NULL),(531,146,75,2,NULL),(532,60,50,2,NULL),(533,148,75,2,NULL),(534,63,50,2,NULL),(535,53,21,2,NULL),(536,66,50,2,NULL),(537,78,21,2,NULL),(538,67,50,2,NULL),(539,89,21,2,NULL),(540,70,50,2,NULL),(541,93,21,2,NULL),(542,73,50,2,NULL),(543,96,21,2,NULL),(544,114,50,2,NULL),(545,99,21,2,NULL),(546,152,50,2,NULL),(547,102,21,2,NULL),(548,165,50,2,NULL),(549,129,21,2,NULL),(550,167,50,2,NULL),(551,132,21,2,NULL),(552,169,50,2,NULL),(553,143,21,2,NULL),(554,172,50,2,NULL),(555,146,21,2,NULL),(556,174,50,2,NULL),(557,148,21,2,NULL),(558,177,50,2,NULL),(559,152,31,2,NULL),(560,178,50,2,NULL),(561,165,31,2,NULL),(562,182,50,2,NULL),(563,167,31,2,NULL),(564,72,50,2,NULL),(565,169,31,2,NULL),(566,156,50,2,NULL),(567,172,31,2,NULL),(568,171,50,2,NULL),(569,174,31,2,NULL),(570,183,50,2,NULL),(571,177,31,2,NULL),(572,192,50,2,NULL),(573,178,31,2,NULL),(574,194,50,2,NULL),(575,182,31,2,NULL),(576,196,50,2,NULL),(577,53,24,2,NULL),(578,205,50,2,NULL),(579,78,24,2,NULL),(580,206,50,2,NULL),(581,89,24,2,NULL),(582,209,50,2,NULL),(583,93,24,2,NULL),(584,210,50,2,NULL),(585,96,24,2,NULL),(586,212,50,2,NULL),(587,99,24,2,NULL),(588,126,50,2,NULL),(589,102,24,2,NULL),(590,87,50,2,NULL),(591,129,24,2,NULL),(592,90,50,2,NULL),(593,132,24,2,NULL),(594,94,50,2,NULL),(595,143,24,2,NULL),(596,97,50,2,NULL),(597,146,24,2,NULL),(598,100,50,2,NULL),(599,148,24,2,NULL),(600,151,50,2,NULL),(601,53,33,2,NULL),(602,158,50,2,NULL),(603,78,33,2,NULL),(604,173,50,2,NULL),(605,89,33,2,NULL),(606,181,50,2,NULL),(607,93,33,2,NULL),(608,187,50,2,NULL),(609,96,33,2,NULL),(610,190,50,2,NULL),(611,99,33,2,NULL),(612,198,50,2,NULL),(613,102,33,2,NULL),(614,55,50,2,NULL),(615,129,33,2,NULL),(616,185,50,2,NULL),(617,132,33,2,NULL),(618,143,33,2,NULL),(619,146,33,2,NULL),(620,148,33,2,NULL),(621,53,39,2,NULL),(622,78,39,2,NULL),(623,89,39,2,NULL),(624,93,39,2,NULL),(625,96,39,2,NULL),(626,99,39,2,NULL),(627,102,39,2,NULL),(628,129,39,2,NULL),(629,132,39,2,NULL),(630,143,39,2,NULL),(631,146,39,2,NULL),(632,148,39,2,NULL),(633,53,43,2,NULL),(634,78,43,2,NULL),(635,89,43,2,NULL),(636,93,43,2,NULL),(637,96,43,2,NULL),(638,99,43,2,NULL),(639,102,43,2,NULL),(640,129,43,2,NULL),(641,132,43,2,NULL),(642,143,43,2,NULL),(643,146,43,2,NULL),(644,148,43,2,NULL),(645,53,68,2,NULL),(646,78,68,2,NULL),(647,89,68,2,NULL),(648,93,68,2,NULL),(649,96,68,2,NULL),(650,99,68,2,NULL),(651,102,68,2,NULL),(652,129,68,2,NULL),(653,132,68,2,NULL),(654,143,68,2,NULL),(655,146,68,2,NULL),(656,148,68,2,NULL),(657,53,70,2,NULL),(658,78,70,2,NULL),(659,89,70,2,NULL),(660,93,70,2,NULL),(661,96,70,2,NULL),(662,99,70,2,NULL),(663,102,70,2,NULL),(664,129,70,2,NULL),(665,132,70,2,NULL),(666,143,70,2,NULL),(667,146,70,2,NULL),(668,148,70,2,NULL),(669,53,71,2,NULL),(670,78,71,2,NULL),(671,89,71,2,NULL),(672,93,71,2,NULL),(673,96,71,2,NULL),(674,99,71,2,NULL),(675,102,71,2,NULL),(676,129,71,2,NULL),(677,132,71,2,NULL),(678,143,71,2,NULL),(679,146,71,2,NULL),(680,148,71,2,NULL),(681,53,18,2,NULL),(682,78,18,2,NULL),(683,89,18,2,NULL),(684,93,18,2,NULL),(685,96,18,2,NULL),(686,99,18,2,NULL),(687,102,18,2,NULL),(688,129,18,2,NULL),(689,132,18,2,NULL),(690,143,18,2,NULL),(691,146,18,2,NULL),(692,148,18,2,NULL),(693,72,31,2,NULL),(694,156,31,2,NULL),(695,171,31,2,NULL),(696,183,31,2,NULL),(697,192,31,2,NULL),(698,194,31,2,NULL),(699,196,31,2,NULL),(700,205,31,2,NULL),(701,206,31,2,NULL),(702,209,31,2,NULL),(703,210,31,2,NULL),(704,212,31,2,NULL),(705,126,31,2,NULL),(706,53,23,2,NULL),(707,78,23,2,NULL),(708,89,23,2,NULL),(709,93,23,2,NULL),(710,96,23,2,NULL),(711,99,23,2,NULL),(712,102,23,2,NULL),(713,129,23,2,NULL),(714,132,23,2,NULL),(715,143,23,2,NULL),(716,146,23,2,NULL),(717,148,23,2,NULL),(718,53,25,2,NULL),(719,78,25,2,NULL),(720,89,25,2,NULL),(721,93,25,2,NULL),(722,96,25,2,NULL),(723,99,25,2,NULL),(724,102,25,2,NULL),(725,129,25,2,NULL),(726,132,25,2,NULL),(727,143,25,2,NULL),(728,146,25,2,NULL),(729,148,25,2,NULL),(730,53,27,2,NULL),(731,78,27,2,NULL),(732,89,27,2,NULL),(733,93,27,2,NULL),(734,96,27,2,NULL),(735,99,27,2,NULL),(736,102,27,2,NULL),(737,129,27,2,NULL),(738,132,27,2,NULL),(739,143,27,2,NULL),(740,146,27,2,NULL),(741,148,27,2,NULL),(742,53,65,2,NULL),(743,78,65,2,NULL),(744,89,65,2,NULL),(745,93,65,2,NULL),(746,96,65,2,NULL),(747,99,65,2,NULL),(748,102,65,2,NULL),(749,129,65,2,NULL),(750,132,65,2,NULL),(751,143,65,2,NULL),(752,146,65,2,NULL),(753,148,65,2,NULL),(754,53,76,2,NULL),(755,78,76,2,NULL),(756,89,76,2,NULL),(757,93,76,2,NULL),(758,96,76,2,NULL),(759,99,76,2,NULL),(760,102,76,2,NULL),(761,129,76,2,NULL),(762,132,76,2,NULL),(763,143,76,2,NULL),(764,146,76,2,NULL),(765,148,76,2,NULL),(766,53,77,2,NULL),(767,78,77,2,NULL),(768,89,77,2,NULL),(769,93,77,2,NULL),(770,96,77,2,NULL),(771,99,77,2,NULL),(772,102,77,2,NULL),(773,129,77,2,NULL),(774,132,77,2,NULL),(775,143,77,2,NULL),(776,146,77,2,NULL),(777,148,77,2,NULL),(778,53,78,2,NULL),(779,78,78,2,NULL),(780,89,78,2,NULL),(781,93,78,2,NULL),(782,96,78,2,NULL),(783,99,78,2,NULL),(784,102,78,2,NULL),(785,129,78,2,NULL),(786,132,78,2,NULL),(787,143,78,2,NULL),(788,146,78,2,NULL),(789,148,78,2,NULL),(790,53,80,2,NULL),(791,78,80,2,NULL),(792,89,80,2,NULL),(793,59,13,2,NULL),(794,93,80,2,NULL),(795,59,20,2,NULL),(796,96,80,2,NULL),(797,59,36,2,NULL),(798,99,80,2,NULL),(799,59,37,2,NULL),(800,102,80,2,NULL),(801,176,15,2,NULL),(802,129,80,2,NULL),(803,176,23,2,NULL),(804,132,80,2,NULL),(805,176,41,2,NULL),(806,143,80,2,NULL),(807,176,42,2,NULL),(808,146,80,2,NULL),(809,184,15,2,NULL),(810,148,80,2,NULL),(811,184,23,2,NULL),(812,53,30,2,NULL),(813,184,41,2,NULL),(814,78,30,2,NULL),(815,184,42,2,NULL),(816,89,30,2,NULL),(817,193,15,2,NULL),(818,93,30,2,NULL),(819,193,23,2,NULL),(820,96,30,2,NULL),(821,193,41,2,NULL),(822,99,30,2,NULL),(823,193,42,2,NULL),(824,102,30,2,NULL),(825,195,15,2,NULL),(826,129,30,2,NULL),(827,195,23,2,NULL),(828,132,30,2,NULL),(829,195,41,2,NULL),(830,143,30,2,NULL),(831,195,42,2,NULL),(832,146,30,2,NULL),(833,200,15,2,NULL),(834,148,30,2,NULL),(835,200,23,2,NULL),(836,87,31,2,NULL),(837,200,41,2,NULL),(838,90,31,2,NULL),(839,200,42,2,NULL),(840,94,31,2,NULL),(841,203,13,2,NULL),(842,97,31,2,NULL),(843,203,20,2,NULL),(844,100,31,2,NULL),(845,203,36,2,NULL),(846,151,31,2,NULL),(847,203,37,2,NULL),(848,158,31,2,NULL),(849,173,31,2,NULL),(850,4,30,2,NULL),(851,181,31,2,NULL),(852,5,30,2,NULL),(853,187,31,2,NULL),(854,6,30,2,NULL),(855,190,31,2,NULL),(856,7,30,2,NULL),(857,198,31,2,NULL),(858,8,30,2,NULL),(859,55,31,2,NULL),(860,9,30,2,NULL),(861,53,41,2,NULL),(862,10,30,2,NULL),(863,78,41,2,NULL),(864,11,30,2,NULL),(865,89,41,2,NULL),(866,87,8,2,NULL),(867,93,41,2,NULL),(868,90,8,2,NULL),(869,96,41,2,NULL),(870,94,8,2,NULL),(871,99,41,2,NULL),(872,97,8,2,NULL),(873,102,41,2,NULL),(874,100,8,2,NULL),(875,129,41,2,NULL),(876,151,8,2,NULL),(877,132,41,2,NULL),(878,158,8,2,NULL),(879,143,41,2,NULL),(880,173,8,2,NULL),(881,146,41,2,NULL),(882,181,8,2,NULL),(883,148,41,2,NULL),(884,187,8,2,NULL),(885,53,44,2,NULL),(886,190,8,2,NULL),(887,78,44,2,NULL),(888,198,8,2,NULL),(889,89,44,2,NULL),(890,87,14,2,NULL),(891,93,44,2,NULL),(892,90,14,2,NULL),(893,96,44,2,NULL),(894,94,14,2,NULL),(895,99,44,2,NULL),(896,97,14,2,NULL),(897,102,44,2,NULL),(898,100,14,2,NULL),(899,129,44,2,NULL),(900,151,14,2,NULL),(901,132,44,2,NULL),(902,158,14,2,NULL),(903,143,44,2,NULL),(904,173,14,2,NULL),(905,146,44,2,NULL),(906,181,14,2,NULL),(907,148,44,2,NULL),(908,187,14,2,NULL),(909,53,47,2,NULL),(910,21,13,2,NULL),(911,190,14,2,NULL),(912,78,47,2,NULL),(913,21,20,2,NULL),(914,198,14,2,NULL),(915,89,47,2,NULL),(916,21,36,2,NULL),(917,87,51,2,NULL),(918,93,47,2,NULL),(919,21,37,2,NULL),(920,90,51,2,NULL),(921,96,47,2,NULL),(922,27,15,2,NULL),(923,94,51,2,NULL),(924,99,47,2,NULL),(925,97,51,2,NULL),(926,27,23,2,NULL),(927,102,47,2,NULL),(928,100,51,2,NULL),(929,27,41,2,NULL),(930,129,47,2,NULL),(931,151,51,2,NULL),(932,27,42,2,NULL),(933,132,47,2,NULL),(934,158,51,2,NULL),(935,143,47,2,NULL),(936,31,15,2,NULL),(937,173,51,2,NULL),(938,146,47,2,NULL),(939,31,23,2,NULL),(940,181,51,2,NULL),(941,148,47,2,NULL),(942,31,41,2,NULL),(943,187,51,2,NULL),(944,53,61,2,NULL),(945,31,42,2,NULL),(946,190,51,2,NULL),(947,78,61,2,NULL),(948,198,51,2,NULL),(949,32,15,2,NULL),(950,89,61,2,NULL),(951,87,52,2,NULL),(952,93,61,2,NULL),(953,32,23,2,NULL),(954,90,52,2,NULL),(955,96,61,2,NULL),(956,94,52,2,NULL),(957,32,41,2,NULL),(958,99,61,2,NULL),(959,97,52,2,NULL),(960,102,61,2,NULL),(961,32,42,2,NULL),(962,100,52,2,NULL),(963,129,61,2,NULL),(964,151,52,2,NULL),(965,33,15,2,NULL),(966,132,61,2,NULL),(967,158,52,2,NULL),(968,143,61,2,NULL),(969,33,23,2,NULL),(970,173,52,2,NULL),(971,146,61,2,NULL),(972,181,52,2,NULL),(973,33,41,2,NULL),(974,148,61,2,NULL),(975,187,52,2,NULL),(976,33,42,2,NULL),(977,53,67,2,NULL),(978,190,52,2,NULL),(979,78,67,2,NULL),(980,34,15,2,NULL),(981,198,52,2,NULL),(982,89,67,2,NULL),(983,87,53,2,NULL),(984,34,23,2,NULL),(985,93,67,2,NULL),(986,90,53,2,NULL),(987,34,41,2,NULL),(988,96,67,2,NULL),(989,94,53,2,NULL),(990,34,42,2,NULL),(991,99,67,2,NULL),(992,97,53,2,NULL),(993,95,13,2,NULL),(994,102,67,2,NULL),(995,100,53,2,NULL),(996,95,20,2,NULL),(997,129,67,2,NULL),(998,151,53,2,NULL),(999,95,36,2,NULL),(1000,132,67,2,NULL),(1001,158,53,2,NULL),(1002,95,37,2,NULL),(1003,143,67,2,NULL),(1004,173,53,2,NULL),(1005,146,67,2,NULL),(1006,181,53,2,NULL),(1007,148,67,2,NULL),(1008,4,9,2,NULL),(1009,187,53,2,NULL),(1010,53,81,2,NULL),(1011,190,53,2,NULL),(1012,5,9,2,NULL),(1013,78,81,2,NULL),(1014,198,53,2,NULL),(1015,6,9,2,NULL),(1016,89,81,2,NULL),(1017,87,54,2,NULL),(1018,7,9,2,NULL),(1019,93,81,2,NULL),(1020,90,54,2,NULL),(1021,8,9,2,NULL),(1022,96,81,2,NULL),(1023,94,54,2,NULL),(1024,9,9,2,NULL),(1025,99,81,2,NULL),(1026,97,54,2,NULL),(1027,102,81,2,NULL),(1028,10,9,2,NULL),(1029,100,54,2,NULL),(1030,129,81,2,NULL),(1031,11,9,2,NULL),(1032,151,54,2,NULL),(1033,132,81,2,NULL),(1034,20,8,2,NULL),(1035,158,54,2,NULL),(1036,143,81,2,NULL),(1037,25,8,2,NULL),(1038,173,54,2,NULL),(1039,146,81,2,NULL),(1040,26,8,2,NULL),(1041,181,54,2,NULL),(1042,148,81,2,NULL),(1043,28,8,2,NULL),(1044,187,54,2,NULL),(1045,53,87,2,NULL),(1046,29,8,2,NULL),(1047,190,54,2,NULL),(1048,78,87,2,NULL),(1049,30,8,2,NULL),(1050,198,54,2,NULL),(1051,89,87,2,NULL),(1052,60,8,2,NULL),(1053,87,55,2,NULL),(1054,93,87,2,NULL),(1055,63,8,2,NULL),(1056,13,8,2,NULL),(1057,90,55,2,NULL),(1058,96,87,2,NULL),(1059,66,8,2,NULL),(1060,94,55,2,NULL),(1061,99,87,2,NULL),(1062,67,8,2,NULL),(1063,4,8,2,NULL),(1064,97,55,2,NULL),(1065,102,87,2,NULL),(1066,70,8,2,NULL),(1067,100,55,2,NULL),(1068,129,87,2,NULL),(1069,5,8,2,NULL),(1070,73,8,2,NULL),(1071,151,55,2,NULL),(1072,132,87,2,NULL),(1073,20,14,2,NULL),(1074,158,55,2,NULL),(1075,6,8,2,NULL),(1076,143,87,2,NULL),(1077,25,14,2,NULL),(1078,173,55,2,NULL),(1079,146,87,2,NULL),(1080,7,8,2,NULL),(1081,26,14,2,NULL),(1082,181,55,2,NULL),(1083,148,87,2,NULL),(1084,28,14,2,NULL),(1085,8,8,2,NULL),(1086,187,55,2,NULL),(1087,53,89,2,NULL),(1088,29,14,2,NULL),(1089,190,55,2,NULL),(1090,9,8,2,NULL),(1091,78,89,2,NULL),(1092,30,14,2,NULL),(1093,198,55,2,NULL),(1094,89,89,2,NULL),(1095,60,14,2,NULL),(1096,10,8,2,NULL),(1097,87,9,2,NULL),(1098,93,89,2,NULL),(1099,63,14,2,NULL),(1100,90,9,2,NULL),(1101,11,8,2,NULL),(1102,96,89,2,NULL),(1103,66,14,2,NULL),(1104,94,9,2,NULL),(1105,99,89,2,NULL),(1106,67,14,2,NULL),(1107,4,14,2,NULL),(1108,97,9,2,NULL),(1109,102,89,2,NULL),(1110,70,14,2,NULL),(1111,100,9,2,NULL),(1112,5,14,2,NULL),(1113,129,89,2,NULL),(1114,73,14,2,NULL),(1115,151,9,2,NULL),(1116,132,89,2,NULL),(1117,20,51,2,NULL),(1118,6,14,2,NULL),(1119,158,9,2,NULL),(1120,143,89,2,NULL),(1121,25,51,2,NULL),(1122,173,9,2,NULL),(1123,7,14,2,NULL),(1124,146,89,2,NULL),(1125,26,51,2,NULL),(1126,181,9,2,NULL),(1127,148,89,2,NULL),(1128,28,51,2,NULL),(1129,8,14,2,NULL),(1130,187,9,2,NULL),(1131,185,31,2,NULL),(1132,29,51,2,NULL),(1133,190,9,2,NULL),(1134,9,14,2,NULL),(1135,53,42,2,NULL),(1136,30,51,2,NULL),(1137,198,9,2,NULL),(1138,78,42,2,NULL),(1139,60,51,2,NULL),(1140,10,14,2,NULL),(1141,20,30,2,NULL),(1142,89,42,2,NULL),(1143,63,51,2,NULL),(1144,25,30,2,NULL),(1145,11,14,2,NULL),(1146,93,42,2,NULL),(1147,66,51,2,NULL),(1148,26,30,2,NULL),(1149,96,42,2,NULL),(1150,67,51,2,NULL),(1151,4,51,2,NULL),(1152,28,30,2,NULL),(1153,99,42,2,NULL),(1154,70,51,2,NULL),(1155,29,30,2,NULL),(1156,5,51,2,NULL),(1157,102,42,2,NULL),(1158,73,51,2,NULL),(1159,30,30,2,NULL),(1160,129,42,2,NULL),(1161,20,52,2,NULL),(1162,6,51,2,NULL),(1163,60,30,2,NULL),(1164,132,42,2,NULL),(1165,25,52,2,NULL),(1166,63,30,2,NULL),(1167,7,51,2,NULL),(1168,143,42,2,NULL),(1169,26,52,2,NULL),(1170,66,30,2,NULL),(1171,8,51,2,NULL),(1172,146,42,2,NULL),(1173,28,52,2,NULL),(1174,67,30,2,NULL),(1175,9,51,2,NULL),(1176,148,42,2,NULL),(1177,29,52,2,NULL),(1178,70,30,2,NULL),(1179,53,45,2,NULL),(1180,30,52,2,NULL),(1181,10,51,2,NULL),(1182,73,30,2,NULL),(1183,78,45,2,NULL),(1184,60,52,2,NULL),(1185,114,30,2,NULL),(1186,11,51,2,NULL),(1187,89,45,2,NULL),(1188,63,52,2,NULL),(1189,87,15,2,NULL),(1190,93,45,2,NULL),(1191,66,52,2,NULL),(1192,4,52,2,NULL),(1193,90,15,2,NULL),(1194,96,45,2,NULL),(1195,67,52,2,NULL),(1196,5,52,2,NULL),(1197,94,15,2,NULL),(1198,99,45,2,NULL),(1199,70,52,2,NULL),(1200,97,15,2,NULL),(1201,6,52,2,NULL),(1202,102,45,2,NULL),(1203,73,52,2,NULL),(1204,100,15,2,NULL),(1205,7,52,2,NULL),(1206,129,45,2,NULL),(1207,20,53,2,NULL),(1208,151,15,2,NULL),(1209,8,52,2,NULL),(1210,132,45,2,NULL),(1211,25,53,2,NULL),(1212,158,15,2,NULL),(1213,9,52,2,NULL),(1214,143,45,2,NULL),(1215,26,53,2,NULL),(1216,173,15,2,NULL),(1217,10,52,2,NULL),(1218,146,45,2,NULL),(1219,28,53,2,NULL),(1220,181,15,2,NULL),(1221,11,52,2,NULL),(1222,148,45,2,NULL),(1223,29,53,2,NULL),(1224,187,15,2,NULL),(1225,4,53,2,NULL),(1226,53,48,2,NULL),(1227,30,53,2,NULL),(1228,190,15,2,NULL),(1229,5,53,2,NULL),(1230,78,48,2,NULL),(1231,198,15,2,NULL),(1232,6,53,2,NULL),(1233,60,53,2,NULL),(1234,89,48,2,NULL),(1235,87,16,2,NULL),(1236,63,53,2,NULL),(1237,7,53,2,NULL),(1238,93,48,2,NULL),(1239,90,16,2,NULL),(1240,66,53,2,NULL),(1241,8,53,2,NULL),(1242,96,48,2,NULL),(1243,94,16,2,NULL),(1244,99,48,2,NULL),(1245,67,53,2,NULL),(1246,9,53,2,NULL),(1247,97,16,2,NULL),(1248,102,48,2,NULL),(1249,100,16,2,NULL),(1250,70,53,2,NULL),(1251,10,53,2,NULL),(1252,129,48,2,NULL),(1253,151,16,2,NULL),(1254,73,53,2,NULL),(1255,11,53,2,NULL),(1256,132,48,2,NULL),(1257,158,16,2,NULL),(1258,20,54,2,NULL),(1259,4,54,2,NULL),(1260,143,48,2,NULL),(1261,173,16,2,NULL),(1262,25,54,2,NULL),(1263,5,54,2,NULL),(1264,146,48,2,NULL),(1265,181,16,2,NULL),(1266,26,54,2,NULL),(1267,6,54,2,NULL),(1268,148,48,2,NULL),(1269,187,16,2,NULL),(1270,28,54,2,NULL),(1271,7,54,2,NULL),(1272,53,69,2,NULL),(1273,190,16,2,NULL),(1274,29,54,2,NULL),(1275,8,54,2,NULL),(1276,78,69,2,NULL),(1277,198,16,2,NULL),(1278,30,54,2,NULL),(1279,9,54,2,NULL),(1280,89,69,2,NULL),(1281,87,17,2,NULL),(1282,60,54,2,NULL),(1283,10,54,2,NULL),(1284,93,69,2,NULL),(1285,90,17,2,NULL),(1286,63,54,2,NULL),(1287,11,54,2,NULL),(1288,96,69,2,NULL),(1289,94,17,2,NULL),(1290,66,54,2,NULL),(1291,4,55,2,NULL),(1292,99,69,2,NULL),(1293,97,17,2,NULL),(1294,67,54,2,NULL),(1295,5,55,2,NULL),(1296,102,69,2,NULL),(1297,100,17,2,NULL),(1298,70,54,2,NULL),(1299,6,55,2,NULL),(1300,129,69,2,NULL),(1301,151,17,2,NULL),(1302,73,54,2,NULL),(1303,7,55,2,NULL),(1304,132,69,2,NULL),(1305,158,17,2,NULL),(1306,20,55,2,NULL),(1307,8,55,2,NULL),(1308,143,69,2,NULL),(1309,173,17,2,NULL),(1310,25,55,2,NULL),(1311,9,55,2,NULL),(1312,146,69,2,NULL),(1313,181,17,2,NULL),(1314,26,55,2,NULL),(1315,10,55,2,NULL),(1316,148,69,2,NULL),(1317,187,17,2,NULL),(1318,28,55,2,NULL),(1319,11,55,2,NULL),(1320,53,82,2,NULL),(1321,190,17,2,NULL),(1322,29,55,2,NULL),(1323,4,15,2,NULL),(1324,78,82,2,NULL),(1325,198,17,2,NULL),(1326,30,55,2,NULL),(1327,89,82,2,NULL),(1328,5,15,2,NULL),(1329,87,56,2,NULL),(1330,60,55,2,NULL),(1331,93,82,2,NULL),(1332,6,15,2,NULL),(1333,90,56,2,NULL),(1334,63,55,2,NULL),(1335,96,82,2,NULL),(1336,7,15,2,NULL),(1337,94,56,2,NULL),(1338,66,55,2,NULL),(1339,99,82,2,NULL),(1340,8,15,2,NULL),(1341,97,56,2,NULL),(1342,67,55,2,NULL),(1343,102,82,2,NULL),(1344,9,15,2,NULL),(1345,100,56,2,NULL),(1346,70,55,2,NULL),(1347,129,82,2,NULL),(1348,10,15,2,NULL),(1349,151,56,2,NULL),(1350,73,55,2,NULL),(1351,132,82,2,NULL),(1352,11,15,2,NULL),(1353,158,56,2,NULL),(1354,114,9,2,NULL),(1355,143,82,2,NULL),(1356,4,16,2,NULL),(1357,173,56,2,NULL),(1358,20,15,2,NULL),(1359,146,82,2,NULL),(1360,5,16,2,NULL),(1361,181,56,2,NULL),(1362,25,15,2,NULL),(1363,148,82,2,NULL),(1364,6,16,2,NULL),(1365,187,56,2,NULL),(1366,26,15,2,NULL),(1367,53,84,2,NULL),(1368,7,16,2,NULL),(1369,190,56,2,NULL),(1370,28,15,2,NULL),(1371,78,84,2,NULL),(1372,8,16,2,NULL),(1373,198,56,2,NULL),(1374,29,15,2,NULL),(1375,89,84,2,NULL),(1376,9,16,2,NULL),(1377,87,57,2,NULL),(1378,30,15,2,NULL),(1379,93,84,2,NULL),(1380,10,16,2,NULL),(1381,90,57,2,NULL),(1382,60,15,2,NULL),(1383,96,84,2,NULL),(1384,11,16,2,NULL),(1385,94,57,2,NULL),(1386,63,15,2,NULL),(1387,99,84,2,NULL),(1388,4,17,2,NULL),(1389,97,57,2,NULL),(1390,66,15,2,NULL),(1391,102,84,2,NULL),(1392,5,17,2,NULL),(1393,100,57,2,NULL),(1394,67,15,2,NULL),(1395,129,84,2,NULL),(1396,6,17,2,NULL),(1397,151,57,2,NULL),(1398,70,15,2,NULL),(1399,132,84,2,NULL),(1400,7,17,2,NULL),(1401,158,57,2,NULL),(1402,73,15,2,NULL),(1403,143,84,2,NULL),(1404,8,17,2,NULL),(1405,173,57,2,NULL),(1406,20,16,2,NULL),(1407,146,84,2,NULL),(1408,9,17,2,NULL),(1409,181,57,2,NULL),(1410,25,16,2,NULL),(1411,148,84,2,NULL),(1412,10,17,2,NULL),(1413,187,57,2,NULL),(1414,26,16,2,NULL),(1415,53,86,2,NULL),(1416,11,17,2,NULL),(1417,190,57,2,NULL),(1418,28,16,2,NULL),(1419,78,86,2,NULL),(1420,4,56,2,NULL),(1421,198,57,2,NULL),(1422,29,16,2,NULL),(1423,89,86,2,NULL),(1424,5,56,2,NULL),(1425,87,74,2,NULL),(1426,30,16,2,NULL),(1427,93,86,2,NULL),(1428,6,56,2,NULL),(1429,90,74,2,NULL),(1430,60,16,2,NULL),(1431,96,86,2,NULL),(1432,7,56,2,NULL),(1433,94,74,2,NULL),(1434,63,16,2,NULL),(1435,99,86,2,NULL),(1436,8,56,2,NULL),(1437,66,16,2,NULL),(1438,97,74,2,NULL),(1439,102,86,2,NULL),(1440,9,56,2,NULL),(1441,100,74,2,NULL),(1442,67,16,2,NULL),(1443,129,86,2,NULL),(1444,10,56,2,NULL),(1445,151,74,2,NULL),(1446,70,16,2,NULL),(1447,132,86,2,NULL),(1448,11,56,2,NULL),(1449,158,74,2,NULL),(1450,73,16,2,NULL),(1451,143,86,2,NULL),(1452,4,57,2,NULL),(1453,173,74,2,NULL),(1454,20,17,2,NULL),(1455,146,86,2,NULL),(1456,5,57,2,NULL),(1457,181,74,2,NULL),(1458,25,17,2,NULL),(1459,148,86,2,NULL),(1460,6,57,2,NULL),(1461,187,74,2,NULL),(1462,26,17,2,NULL),(1463,53,88,2,NULL),(1464,7,57,2,NULL),(1465,190,74,2,NULL),(1466,28,17,2,NULL),(1467,78,88,2,NULL),(1468,8,57,2,NULL),(1469,198,74,2,NULL),(1470,29,17,2,NULL),(1471,89,88,2,NULL),(1472,9,57,2,NULL),(1473,30,17,2,NULL),(1474,87,75,2,NULL),(1475,93,88,2,NULL),(1476,10,57,2,NULL),(1477,90,75,2,NULL),(1478,60,17,2,NULL),(1479,96,88,2,NULL),(1480,11,57,2,NULL),(1481,94,75,2,NULL),(1482,63,17,2,NULL),(1483,99,88,2,NULL),(1484,4,74,2,NULL),(1485,97,75,2,NULL),(1486,66,17,2,NULL),(1487,102,88,2,NULL),(1488,5,74,2,NULL),(1489,100,75,2,NULL),(1490,67,17,2,NULL),(1491,129,88,2,NULL),(1492,6,74,2,NULL),(1493,151,75,2,NULL),(1494,70,17,2,NULL),(1495,132,88,2,NULL),(1496,7,74,2,NULL),(1497,158,75,2,NULL),(1498,73,17,2,NULL),(1499,143,88,2,NULL),(1500,8,74,2,NULL),(1501,173,75,2,NULL),(1502,20,56,2,NULL),(1503,146,88,2,NULL),(1504,9,74,2,NULL),(1505,181,75,2,NULL),(1506,25,56,2,NULL),(1507,148,88,2,NULL),(1508,10,74,2,NULL),(1509,187,75,2,NULL),(1510,26,56,2,NULL),(1511,11,74,2,NULL),(1512,185,8,2,NULL),(1513,190,75,2,NULL),(1514,28,56,2,NULL),(1515,185,14,2,NULL),(1516,4,75,2,NULL),(1517,198,75,2,NULL),(1518,29,56,2,NULL),(1519,185,51,2,NULL),(1520,5,75,2,NULL),(1521,87,21,2,NULL),(1522,30,56,2,NULL),(1523,185,52,2,NULL),(1524,6,75,2,NULL),(1525,90,21,2,NULL),(1526,60,56,2,NULL),(1527,185,53,2,NULL),(1528,7,75,2,NULL),(1529,94,21,2,NULL),(1530,63,56,2,NULL),(1531,185,54,2,NULL),(1532,8,75,2,NULL),(1533,97,21,2,NULL),(1534,66,56,2,NULL),(1535,185,55,2,NULL),(1536,9,75,2,NULL),(1537,100,21,2,NULL),(1538,67,56,2,NULL),(1539,185,9,2,NULL),(1540,10,75,2,NULL),(1541,151,21,2,NULL),(1542,70,56,2,NULL),(1543,185,15,2,NULL),(1544,11,75,2,NULL),(1545,158,21,2,NULL),(1546,73,56,2,NULL),(1547,4,21,2,NULL),(1548,185,16,2,NULL),(1549,173,21,2,NULL),(1550,20,57,2,NULL),(1551,185,17,2,NULL),(1552,5,21,2,NULL),(1553,181,21,2,NULL),(1554,25,57,2,NULL),(1555,185,56,2,NULL),(1556,6,21,2,NULL),(1557,187,21,2,NULL),(1558,26,57,2,NULL),(1559,185,57,2,NULL),(1560,7,21,2,NULL),(1561,190,21,2,NULL),(1562,28,57,2,NULL),(1563,185,74,2,NULL),(1564,8,21,2,NULL),(1565,198,21,2,NULL),(1566,29,57,2,NULL),(1567,185,75,2,NULL),(1568,9,21,2,NULL),(1569,152,30,2,NULL),(1570,30,57,2,NULL),(1571,185,21,2,NULL),(1572,10,21,2,NULL),(1573,165,30,2,NULL),(1574,60,57,2,NULL),(1575,185,24,2,NULL),(1576,11,21,2,NULL),(1577,167,30,2,NULL),(1578,63,57,2,NULL),(1579,185,33,2,NULL),(1580,4,24,2,NULL),(1581,169,30,2,NULL),(1582,66,57,2,NULL),(1583,185,39,2,NULL),(1584,5,24,2,NULL),(1585,172,30,2,NULL),(1586,67,57,2,NULL),(1587,185,43,2,NULL),(1588,6,24,2,NULL),(1589,174,30,2,NULL),(1590,70,57,2,NULL),(1591,185,68,2,NULL),(1592,7,24,2,NULL),(1593,177,30,2,NULL),(1594,73,57,2,NULL),(1595,185,70,2,NULL),(1596,8,24,2,NULL),(1597,178,30,2,NULL),(1598,20,74,2,NULL),(1599,185,71,2,NULL),(1600,9,24,2,NULL),(1601,182,30,2,NULL),(1602,25,74,2,NULL),(1603,185,18,2,NULL),(1604,10,24,2,NULL),(1605,87,24,2,NULL),(1606,26,74,2,NULL),(1607,185,23,2,NULL),(1608,11,24,2,NULL),(1609,90,24,2,NULL),(1610,28,74,2,NULL),(1611,185,25,2,NULL),(1612,4,33,2,NULL),(1613,94,24,2,NULL),(1614,29,74,2,NULL),(1615,185,27,2,NULL),(1616,5,33,2,NULL),(1617,97,24,2,NULL),(1618,30,74,2,NULL),(1619,185,65,2,NULL),(1620,6,33,2,NULL),(1621,100,24,2,NULL),(1622,60,74,2,NULL),(1623,185,76,2,NULL),(1624,7,33,2,NULL),(1625,151,24,2,NULL),(1626,63,74,2,NULL),(1627,185,77,2,NULL),(1628,8,33,2,NULL),(1629,158,24,2,NULL),(1630,66,74,2,NULL),(1631,185,78,2,NULL),(1632,9,33,2,NULL),(1633,173,24,2,NULL),(1634,67,74,2,NULL),(1635,185,80,2,NULL),(1636,10,33,2,NULL),(1637,181,24,2,NULL),(1638,70,74,2,NULL),(1639,185,30,2,NULL),(1640,11,33,2,NULL),(1641,187,24,2,NULL),(1642,73,74,2,NULL),(1643,185,41,2,NULL),(1644,4,39,2,NULL),(1645,190,24,2,NULL),(1646,20,75,2,NULL),(1647,185,44,2,NULL),(1648,5,39,2,NULL),(1649,198,24,2,NULL),(1650,25,75,2,NULL),(1651,185,47,2,NULL),(1652,6,39,2,NULL),(1653,87,33,2,NULL),(1654,26,75,2,NULL),(1655,185,61,2,NULL),(1656,7,39,2,NULL),(1657,90,33,2,NULL),(1658,28,75,2,NULL),(1659,185,67,2,NULL),(1660,8,39,2,NULL),(1661,94,33,2,NULL),(1662,29,75,2,NULL),(1663,185,81,2,NULL),(1664,9,39,2,NULL),(1665,97,33,2,NULL),(1666,30,75,2,NULL),(1667,185,87,2,NULL),(1668,10,39,2,NULL),(1669,100,33,2,NULL),(1670,60,75,2,NULL),(1671,185,89,2,NULL),(1672,11,39,2,NULL),(1673,151,33,2,NULL),(1674,63,75,2,NULL),(1675,185,42,2,NULL),(1676,4,43,2,NULL),(1677,158,33,2,NULL),(1678,66,75,2,NULL),(1679,185,45,2,NULL),(1680,5,43,2,NULL),(1681,173,33,2,NULL),(1682,67,75,2,NULL),(1683,185,48,2,NULL),(1684,6,43,2,NULL),(1685,181,33,2,NULL),(1686,70,75,2,NULL),(1687,185,69,2,NULL),(1688,7,43,2,NULL),(1689,187,33,2,NULL),(1690,73,75,2,NULL),(1691,185,82,2,NULL),(1692,8,43,2,NULL),(1693,190,33,2,NULL),(1694,20,21,2,NULL),(1695,185,84,2,NULL),(1696,9,43,2,NULL),(1697,198,33,2,NULL),(1698,25,21,2,NULL),(1699,185,86,2,NULL),(1700,10,43,2,NULL),(1701,87,39,2,NULL),(1702,26,21,2,NULL),(1703,185,88,2,NULL),(1704,11,43,2,NULL),(1705,90,39,2,NULL),(1706,28,21,2,NULL),(1707,4,42,2,NULL),(1708,4,68,2,NULL),(1709,94,39,2,NULL),(1710,29,21,2,NULL),(1711,5,42,2,NULL),(1712,5,68,2,NULL),(1713,97,39,2,NULL),(1714,30,21,2,NULL),(1715,6,42,2,NULL),(1716,6,68,2,NULL),(1717,100,39,2,NULL),(1718,60,21,2,NULL),(1719,7,42,2,NULL),(1720,7,68,2,NULL),(1721,151,39,2,NULL),(1722,63,21,2,NULL),(1723,8,42,2,NULL),(1724,8,68,2,NULL),(1725,158,39,2,NULL),(1726,66,21,2,NULL),(1727,9,42,2,NULL),(1728,9,68,2,NULL),(1729,173,39,2,NULL),(1730,67,21,2,NULL),(1731,10,42,2,NULL),(1732,10,68,2,NULL),(1733,181,39,2,NULL),(1734,70,21,2,NULL),(1735,11,42,2,NULL),(1736,11,68,2,NULL),(1737,187,39,2,NULL),(1738,73,21,2,NULL),(1739,20,42,2,NULL),(1740,4,70,2,NULL),(1741,190,39,2,NULL),(1742,152,9,2,NULL),(1743,25,42,2,NULL),(1744,5,70,2,NULL),(1745,198,39,2,NULL),(1746,165,9,2,NULL),(1747,26,42,2,NULL),(1748,6,70,2,NULL),(1749,87,43,2,NULL),(1750,167,9,2,NULL),(1751,28,42,2,NULL),(1752,7,70,2,NULL),(1753,90,43,2,NULL),(1754,169,9,2,NULL),(1755,29,42,2,NULL),(1756,8,70,2,NULL),(1757,94,43,2,NULL),(1758,172,9,2,NULL),(1759,30,42,2,NULL),(1760,9,70,2,NULL),(1761,97,43,2,NULL),(1762,174,9,2,NULL),(1763,60,42,2,NULL),(1764,10,70,2,NULL),(1765,100,43,2,NULL),(1766,177,9,2,NULL),(1767,63,42,2,NULL),(1768,11,70,2,NULL),(1769,151,43,2,NULL),(1770,178,9,2,NULL),(1771,66,42,2,NULL),(1772,4,71,2,NULL),(1773,158,43,2,NULL),(1774,182,9,2,NULL),(1775,67,42,2,NULL),(1776,5,71,2,NULL),(1777,173,43,2,NULL),(1778,20,24,2,NULL),(1779,70,42,2,NULL),(1780,6,71,2,NULL),(1781,181,43,2,NULL),(1782,25,24,2,NULL),(1783,73,42,2,NULL),(1784,7,71,2,NULL),(1785,187,43,2,NULL),(1786,26,24,2,NULL),(1787,114,42,2,NULL),(1788,8,71,2,NULL),(1789,190,43,2,NULL),(1790,28,24,2,NULL),(1791,152,42,2,NULL),(1792,9,71,2,NULL),(1793,198,43,2,NULL),(1794,29,24,2,NULL),(1795,165,42,2,NULL),(1796,10,71,2,NULL),(1797,30,24,2,NULL),(1798,87,68,2,NULL),(1799,167,42,2,NULL),(1800,11,71,2,NULL),(1801,90,68,2,NULL),(1802,60,24,2,NULL),(1803,169,42,2,NULL),(1804,4,18,2,NULL),(1805,94,68,2,NULL),(1806,63,24,2,NULL),(1807,172,42,2,NULL),(1808,5,18,2,NULL),(1809,97,68,2,NULL),(1810,66,24,2,NULL),(1811,174,42,2,NULL),(1812,6,18,2,NULL),(1813,100,68,2,NULL),(1814,67,24,2,NULL),(1815,177,42,2,NULL),(1816,7,18,2,NULL),(1817,151,68,2,NULL),(1818,70,24,2,NULL),(1819,178,42,2,NULL),(1820,8,18,2,NULL),(1821,158,68,2,NULL),(1822,73,24,2,NULL),(1823,182,42,2,NULL),(1824,9,18,2,NULL),(1825,173,68,2,NULL),(1826,20,33,2,NULL),(1827,72,42,2,NULL),(1828,10,18,2,NULL),(1829,181,68,2,NULL),(1830,25,33,2,NULL),(1831,156,42,2,NULL),(1832,11,18,2,NULL),(1833,187,68,2,NULL),(1834,26,33,2,NULL),(1835,171,42,2,NULL),(1836,4,23,2,NULL),(1837,190,68,2,NULL),(1838,28,33,2,NULL),(1839,183,42,2,NULL),(1840,5,23,2,NULL),(1841,198,68,2,NULL),(1842,29,33,2,NULL),(1843,192,42,2,NULL),(1844,6,23,2,NULL),(1845,87,70,2,NULL),(1846,30,33,2,NULL),(1847,194,42,2,NULL),(1848,7,23,2,NULL),(1849,90,70,2,NULL),(1850,60,33,2,NULL),(1851,196,42,2,NULL),(1852,8,23,2,NULL),(1853,94,70,2,NULL),(1854,63,33,2,NULL),(1855,205,42,2,NULL),(1856,9,23,2,NULL),(1857,97,70,2,NULL),(1858,66,33,2,NULL),(1859,206,42,2,NULL),(1860,10,23,2,NULL),(1861,100,70,2,NULL),(1862,67,33,2,NULL),(1863,209,42,2,NULL),(1864,11,23,2,NULL),(1865,151,70,2,NULL),(1866,70,33,2,NULL),(1867,210,42,2,NULL),(1868,4,25,2,NULL),(1869,158,70,2,NULL),(1870,73,33,2,NULL),(1871,212,42,2,NULL),(1872,5,25,2,NULL),(1873,173,70,2,NULL),(1874,20,39,2,NULL),(1875,126,42,2,NULL),(1876,6,25,2,NULL),(1877,181,70,2,NULL),(1878,25,39,2,NULL),(1879,87,42,2,NULL),(1880,7,25,2,NULL),(1881,187,70,2,NULL),(1882,26,39,2,NULL),(1883,8,25,2,NULL),(1884,90,42,2,NULL),(1885,190,70,2,NULL),(1886,28,39,2,NULL),(1887,9,25,2,NULL),(1888,94,42,2,NULL),(1889,198,70,2,NULL),(1890,29,39,2,NULL),(1891,10,25,2,NULL),(1892,97,42,2,NULL),(1893,87,71,2,NULL),(1894,30,39,2,NULL),(1895,100,42,2,NULL),(1896,11,25,2,NULL),(1897,90,71,2,NULL),(1898,60,39,2,NULL),(1899,151,42,2,NULL),(1900,94,71,2,NULL),(1901,4,27,2,NULL),(1902,63,39,2,NULL),(1903,5,27,2,NULL),(1904,97,71,2,NULL),(1905,158,42,2,NULL),(1906,66,39,2,NULL),(1907,173,42,2,NULL),(1908,100,71,2,NULL),(1909,6,27,2,NULL),(1910,67,39,2,NULL),(1911,151,71,2,NULL),(1912,7,27,2,NULL),(1913,181,42,2,NULL),(1914,70,39,2,NULL),(1915,187,42,2,NULL),(1916,158,71,2,NULL),(1917,8,27,2,NULL),(1918,73,39,2,NULL),(1919,190,42,2,NULL),(1920,173,71,2,NULL),(1921,9,27,2,NULL),(1922,20,43,2,NULL),(1923,181,71,2,NULL),(1924,198,42,2,NULL),(1925,10,27,2,NULL),(1926,25,43,2,NULL),(1927,187,71,2,NULL),(1928,55,42,2,NULL),(1929,11,27,2,NULL),(1930,26,43,2,NULL),(1931,190,71,2,NULL),(1932,4,65,2,NULL),(1933,28,43,2,NULL),(1934,4,45,2,NULL),(1935,198,71,2,NULL),(1936,5,65,2,NULL),(1937,5,45,2,NULL),(1938,29,43,2,NULL),(1939,87,18,2,NULL),(1940,6,65,2,NULL),(1941,6,45,2,NULL),(1942,30,43,2,NULL),(1943,90,18,2,NULL),(1944,7,65,2,NULL),(1945,7,45,2,NULL),(1946,60,43,2,NULL),(1947,94,18,2,NULL),(1948,8,65,2,NULL),(1949,8,45,2,NULL),(1950,63,43,2,NULL),(1951,97,18,2,NULL),(1952,9,65,2,NULL),(1953,9,45,2,NULL),(1954,66,43,2,NULL),(1955,100,18,2,NULL),(1956,10,65,2,NULL),(1957,10,45,2,NULL),(1958,67,43,2,NULL),(1959,151,18,2,NULL),(1960,11,65,2,NULL),(1961,11,45,2,NULL),(1962,70,43,2,NULL),(1963,158,18,2,NULL),(1964,4,76,2,NULL),(1965,20,45,2,NULL),(1966,73,43,2,NULL),(1967,173,18,2,NULL),(1968,5,76,2,NULL),(1969,25,45,2,NULL),(1970,20,68,2,NULL),(1971,181,18,2,NULL),(1972,6,76,2,NULL),(1973,26,45,2,NULL),(1974,25,68,2,NULL),(1975,187,18,2,NULL),(1976,7,76,2,NULL),(1977,28,45,2,NULL),(1978,26,68,2,NULL),(1979,190,18,2,NULL),(1980,8,76,2,NULL),(1981,29,45,2,NULL),(1982,28,68,2,NULL),(1983,198,18,2,NULL),(1984,9,76,2,NULL),(1985,30,45,2,NULL),(1986,29,68,2,NULL),(1987,72,30,2,NULL),(1988,10,76,2,NULL),(1989,60,45,2,NULL),(1990,30,68,2,NULL),(1991,156,30,2,NULL),(1992,11,76,2,NULL),(1993,63,45,2,NULL),(1994,60,68,2,NULL),(1995,171,30,2,NULL),(1996,4,77,2,NULL),(1997,66,45,2,NULL),(1998,63,68,2,NULL),(1999,183,30,2,NULL),(2000,5,77,2,NULL),(2001,67,45,2,NULL),(2002,66,68,2,NULL),(2003,192,30,2,NULL),(2004,6,77,2,NULL),(2005,70,45,2,NULL),(2006,67,68,2,NULL),(2007,194,30,2,NULL),(2008,7,77,2,NULL),(2009,73,45,2,NULL),(2010,70,68,2,NULL),(2011,196,30,2,NULL),(2012,8,77,2,NULL),(2013,114,45,2,NULL),(2014,73,68,2,NULL),(2015,205,30,2,NULL),(2016,9,77,2,NULL),(2017,152,45,2,NULL),(2018,20,70,2,NULL),(2019,206,30,2,NULL),(2020,10,77,2,NULL),(2021,165,45,2,NULL),(2022,25,70,2,NULL),(2023,209,30,2,NULL),(2024,11,77,2,NULL),(2025,167,45,2,NULL),(2026,26,70,2,NULL),(2027,210,30,2,NULL),(2028,4,78,2,NULL),(2029,169,45,2,NULL),(2030,28,70,2,NULL),(2031,212,30,2,NULL),(2032,5,78,2,NULL),(2033,172,45,2,NULL),(2034,29,70,2,NULL),(2035,126,30,2,NULL),(2036,6,78,2,NULL),(2037,174,45,2,NULL),(2038,30,70,2,NULL),(2039,87,23,2,NULL),(2040,7,78,2,NULL),(2041,177,45,2,NULL),(2042,60,70,2,NULL),(2043,8,78,2,NULL),(2044,90,23,2,NULL),(2045,178,45,2,NULL),(2046,63,70,2,NULL),(2047,9,78,2,NULL),(2048,94,23,2,NULL),(2049,182,45,2,NULL),(2050,66,70,2,NULL),(2051,10,78,2,NULL),(2052,97,23,2,NULL),(2053,72,45,2,NULL),(2054,67,70,2,NULL),(2055,11,78,2,NULL),(2056,100,23,2,NULL),(2057,156,45,2,NULL),(2058,70,70,2,NULL),(2059,4,80,2,NULL),(2060,151,23,2,NULL),(2061,171,45,2,NULL),(2062,73,70,2,NULL),(2063,5,80,2,NULL),(2064,158,23,2,NULL),(2065,183,45,2,NULL),(2066,20,71,2,NULL),(2067,6,80,2,NULL),(2068,173,23,2,NULL),(2069,192,45,2,NULL),(2070,25,71,2,NULL),(2071,7,80,2,NULL),(2072,181,23,2,NULL),(2073,194,45,2,NULL),(2074,26,71,2,NULL),(2075,8,80,2,NULL),(2076,187,23,2,NULL),(2077,196,45,2,NULL),(2078,28,71,2,NULL),(2079,9,80,2,NULL),(2080,190,23,2,NULL),(2081,205,45,2,NULL),(2082,29,71,2,NULL),(2083,10,80,2,NULL),(2084,198,23,2,NULL),(2085,206,45,2,NULL),(2086,30,71,2,NULL),(2087,11,80,2,NULL),(2088,87,25,2,NULL),(2089,209,45,2,NULL),(2090,60,71,2,NULL),(2091,90,25,2,NULL),(2092,4,41,2,NULL),(2093,210,45,2,NULL),(2094,63,71,2,NULL),(2095,94,25,2,NULL),(2096,212,45,2,NULL),(2097,66,71,2,NULL),(2098,5,41,2,NULL),(2099,97,25,2,NULL),(2100,126,45,2,NULL),(2101,67,71,2,NULL),(2102,6,41,2,NULL),(2103,100,25,2,NULL),(2104,87,45,2,NULL),(2105,70,71,2,NULL),(2106,7,41,2,NULL),(2107,151,25,2,NULL),(2108,90,45,2,NULL),(2109,73,71,2,NULL),(2110,8,41,2,NULL),(2111,158,25,2,NULL),(2112,94,45,2,NULL),(2113,20,18,2,NULL),(2114,9,41,2,NULL),(2115,173,25,2,NULL),(2116,97,45,2,NULL),(2117,25,18,2,NULL),(2118,10,41,2,NULL),(2119,181,25,2,NULL),(2120,100,45,2,NULL),(2121,26,18,2,NULL),(2122,11,41,2,NULL),(2123,187,25,2,NULL),(2124,151,45,2,NULL),(2125,28,18,2,NULL),(2126,4,44,2,NULL),(2127,190,25,2,NULL),(2128,158,45,2,NULL),(2129,29,18,2,NULL),(2130,5,44,2,NULL),(2131,198,25,2,NULL),(2132,173,45,2,NULL),(2133,30,18,2,NULL),(2134,6,44,2,NULL),(2135,87,27,2,NULL),(2136,181,45,2,NULL),(2137,7,44,2,NULL),(2138,60,18,2,NULL),(2139,90,27,2,NULL),(2140,187,45,2,NULL),(2141,8,44,2,NULL),(2142,63,18,2,NULL),(2143,94,27,2,NULL),(2144,190,45,2,NULL),(2145,66,18,2,NULL),(2146,9,44,2,NULL),(2147,97,27,2,NULL),(2148,198,45,2,NULL),(2149,67,18,2,NULL),(2150,10,44,2,NULL),(2151,100,27,2,NULL),(2152,55,45,2,NULL),(2153,11,44,2,NULL),(2154,70,18,2,NULL),(2155,151,27,2,NULL),(2156,4,47,2,NULL),(2157,73,18,2,NULL),(2158,85,16,2,NULL),(2159,158,27,2,NULL),(2160,85,25,2,NULL),(2161,5,47,2,NULL),(2162,72,9,2,NULL),(2163,173,27,2,NULL),(2164,85,44,2,NULL),(2165,156,9,2,NULL),(2166,6,47,2,NULL),(2167,181,27,2,NULL),(2168,85,45,2,NULL),(2169,171,9,2,NULL),(2170,7,47,2,NULL),(2171,187,27,2,NULL),(2172,4,48,2,NULL),(2173,183,9,2,NULL),(2174,8,47,2,NULL),(2175,190,27,2,NULL),(2176,5,48,2,NULL),(2177,192,9,2,NULL),(2178,9,47,2,NULL),(2179,198,27,2,NULL),(2180,6,48,2,NULL),(2181,194,9,2,NULL),(2182,10,47,2,NULL),(2183,87,65,2,NULL),(2184,7,48,2,NULL),(2185,196,9,2,NULL),(2186,11,47,2,NULL),(2187,90,65,2,NULL),(2188,8,48,2,NULL),(2189,205,9,2,NULL),(2190,4,61,2,NULL),(2191,94,65,2,NULL),(2192,206,9,2,NULL),(2193,5,61,2,NULL),(2194,97,65,2,NULL),(2195,209,9,2,NULL),(2196,6,61,2,NULL),(2197,100,65,2,NULL),(2198,210,9,2,NULL),(2199,7,61,2,NULL),(2200,9,48,2,NULL),(2201,151,65,2,NULL),(2202,10,48,2,NULL),(2203,212,9,2,NULL),(2204,8,61,2,NULL),(2205,158,65,2,NULL),(2206,11,48,2,NULL),(2207,126,9,2,NULL),(2208,9,61,2,NULL),(2209,173,65,2,NULL),(2210,20,48,2,NULL),(2211,20,23,2,NULL),(2212,10,61,2,NULL),(2213,181,65,2,NULL),(2214,25,48,2,NULL),(2215,11,61,2,NULL),(2216,25,23,2,NULL),(2217,187,65,2,NULL),(2218,26,48,2,NULL),(2219,4,67,2,NULL),(2220,26,23,2,NULL),(2221,190,65,2,NULL),(2222,28,48,2,NULL),(2223,28,23,2,NULL),(2224,5,67,2,NULL),(2225,198,65,2,NULL),(2226,29,48,2,NULL),(2227,29,23,2,NULL),(2228,6,67,2,NULL),(2229,87,76,2,NULL),(2230,30,48,2,NULL),(2231,7,67,2,NULL),(2232,30,23,2,NULL),(2233,90,76,2,NULL),(2234,60,48,2,NULL),(2235,8,67,2,NULL),(2236,60,23,2,NULL),(2237,94,76,2,NULL),(2238,63,48,2,NULL),(2239,9,67,2,NULL),(2240,63,23,2,NULL),(2241,97,76,2,NULL),(2242,66,23,2,NULL),(2243,10,67,2,NULL),(2244,66,48,2,NULL),(2245,100,76,2,NULL),(2246,67,48,2,NULL),(2247,11,67,2,NULL),(2248,67,23,2,NULL),(2249,151,76,2,NULL),(2250,70,48,2,NULL),(2251,4,81,2,NULL),(2252,70,23,2,NULL),(2253,158,76,2,NULL),(2254,73,48,2,NULL),(2255,5,81,2,NULL),(2256,73,23,2,NULL),(2257,173,76,2,NULL),(2258,114,48,2,NULL),(2259,6,81,2,NULL),(2260,20,25,2,NULL),(2261,181,76,2,NULL),(2262,152,48,2,NULL),(2263,7,81,2,NULL),(2264,25,25,2,NULL),(2265,187,76,2,NULL),(2266,165,48,2,NULL),(2267,26,25,2,NULL),(2268,8,81,2,NULL),(2269,190,76,2,NULL),(2270,167,48,2,NULL),(2271,28,25,2,NULL),(2272,9,81,2,NULL),(2273,198,76,2,NULL),(2274,169,48,2,NULL),(2275,29,25,2,NULL),(2276,10,81,2,NULL),(2277,87,77,2,NULL),(2278,172,48,2,NULL),(2279,11,81,2,NULL),(2280,30,25,2,NULL),(2281,90,77,2,NULL),(2282,60,25,2,NULL),(2283,174,48,2,NULL),(2284,4,87,2,NULL),(2285,177,48,2,NULL),(2286,63,25,2,NULL),(2287,5,87,2,NULL),(2288,178,48,2,NULL),(2289,66,25,2,NULL),(2290,6,87,2,NULL),(2291,94,77,2,NULL),(2292,182,48,2,NULL),(2293,67,25,2,NULL),(2294,7,87,2,NULL),(2295,72,48,2,NULL),(2296,97,77,2,NULL),(2297,70,25,2,NULL),(2298,8,87,2,NULL),(2299,156,48,2,NULL),(2300,100,77,2,NULL),(2301,73,25,2,NULL),(2302,9,87,2,NULL),(2303,171,48,2,NULL),(2304,151,77,2,NULL),(2305,20,27,2,NULL),(2306,10,87,2,NULL),(2307,183,48,2,NULL),(2308,158,77,2,NULL),(2309,25,27,2,NULL),(2310,11,87,2,NULL),(2311,192,48,2,NULL),(2312,173,77,2,NULL),(2313,26,27,2,NULL),(2314,4,89,2,NULL),(2315,194,48,2,NULL),(2316,181,77,2,NULL),(2317,28,27,2,NULL),(2318,5,89,2,NULL),(2319,196,48,2,NULL),(2320,187,77,2,NULL),(2321,29,27,2,NULL),(2322,6,89,2,NULL),(2323,205,48,2,NULL),(2324,190,77,2,NULL),(2325,30,27,2,NULL),(2326,7,89,2,NULL),(2327,206,48,2,NULL),(2328,198,77,2,NULL),(2329,60,27,2,NULL),(2330,8,89,2,NULL),(2331,209,48,2,NULL),(2332,87,78,2,NULL),(2333,63,27,2,NULL),(2334,9,89,2,NULL),(2335,210,48,2,NULL),(2336,90,78,2,NULL),(2337,66,27,2,NULL),(2338,10,89,2,NULL),(2339,212,48,2,NULL),(2340,94,78,2,NULL),(2341,67,27,2,NULL),(2342,11,89,2,NULL),(2343,126,48,2,NULL),(2344,97,78,2,NULL),(2345,70,27,2,NULL),(2346,87,48,2,NULL),(2347,100,78,2,NULL),(2348,73,27,2,NULL),(2349,90,48,2,NULL),(2350,151,78,2,NULL),(2351,4,69,2,NULL),(2352,20,65,2,NULL),(2353,94,48,2,NULL),(2354,158,78,2,NULL),(2355,5,69,2,NULL),(2356,25,65,2,NULL),(2357,97,48,2,NULL),(2358,6,69,2,NULL),(2359,173,78,2,NULL),(2360,26,65,2,NULL),(2361,100,48,2,NULL),(2362,181,78,2,NULL),(2363,7,69,2,NULL),(2364,28,65,2,NULL),(2365,151,48,2,NULL),(2366,187,78,2,NULL),(2367,8,69,2,NULL),(2368,29,65,2,NULL),(2369,158,48,2,NULL),(2370,190,78,2,NULL),(2371,9,69,2,NULL),(2372,30,65,2,NULL),(2373,173,48,2,NULL),(2374,198,78,2,NULL),(2375,10,69,2,NULL),(2376,60,65,2,NULL),(2377,181,48,2,NULL),(2378,87,80,2,NULL),(2379,11,69,2,NULL),(2380,63,65,2,NULL),(2381,187,48,2,NULL),(2382,90,80,2,NULL),(2383,4,82,2,NULL),(2384,66,65,2,NULL),(2385,190,48,2,NULL),(2386,94,80,2,NULL),(2387,5,82,2,NULL),(2388,67,65,2,NULL),(2389,97,80,2,NULL),(2390,198,48,2,NULL),(2391,6,82,2,NULL),(2392,70,65,2,NULL),(2393,55,48,2,NULL),(2394,100,80,2,NULL),(2395,7,82,2,NULL),(2396,73,65,2,NULL),(2397,151,80,2,NULL),(2398,8,82,2,NULL),(2399,20,76,2,NULL),(2400,20,69,2,NULL),(2401,158,80,2,NULL),(2402,9,82,2,NULL),(2403,25,69,2,NULL),(2404,25,76,2,NULL),(2405,173,80,2,NULL),(2406,10,82,2,NULL),(2407,26,69,2,NULL),(2408,26,76,2,NULL),(2409,181,80,2,NULL),(2410,11,82,2,NULL),(2411,28,69,2,NULL),(2412,28,76,2,NULL),(2413,187,80,2,NULL),(2414,4,84,2,NULL),(2415,29,69,2,NULL),(2416,29,76,2,NULL),(2417,190,80,2,NULL),(2418,5,84,2,NULL),(2419,30,69,2,NULL),(2420,30,76,2,NULL),(2421,198,80,2,NULL),(2422,6,84,2,NULL),(2423,60,69,2,NULL),(2424,60,76,2,NULL),(2425,55,30,2,NULL),(2426,7,84,2,NULL),(2427,63,69,2,NULL),(2428,63,76,2,NULL),(2429,87,41,2,NULL),(2430,66,69,2,NULL),(2431,66,76,2,NULL),(2432,8,84,2,NULL),(2433,90,41,2,NULL),(2434,67,69,2,NULL),(2435,67,76,2,NULL),(2436,9,84,2,NULL),(2437,94,41,2,NULL),(2438,70,69,2,NULL),(2439,70,76,2,NULL),(2440,10,84,2,NULL),(2441,97,41,2,NULL),(2442,73,69,2,NULL),(2443,73,76,2,NULL),(2444,11,84,2,NULL),(2445,100,41,2,NULL),(2446,114,69,2,NULL),(2447,20,77,2,NULL),(2448,4,86,2,NULL),(2449,151,41,2,NULL),(2450,152,69,2,NULL),(2451,25,77,2,NULL),(2452,5,86,2,NULL),(2453,158,41,2,NULL),(2454,165,69,2,NULL),(2455,26,77,2,NULL),(2456,173,41,2,NULL),(2457,6,86,2,NULL),(2458,167,69,2,NULL),(2459,28,77,2,NULL),(2460,181,41,2,NULL),(2461,7,86,2,NULL),(2462,169,69,2,NULL),(2463,29,77,2,NULL),(2464,187,41,2,NULL),(2465,8,86,2,NULL),(2466,172,69,2,NULL),(2467,30,77,2,NULL),(2468,190,41,2,NULL),(2469,9,86,2,NULL),(2470,174,69,2,NULL),(2471,60,77,2,NULL),(2472,10,86,2,NULL),(2473,198,41,2,NULL),(2474,177,69,2,NULL),(2475,63,77,2,NULL),(2476,11,86,2,NULL),(2477,87,44,2,NULL),(2478,178,69,2,NULL),(2479,66,77,2,NULL),(2480,90,44,2,NULL),(2481,4,88,2,NULL),(2482,182,69,2,NULL),(2483,67,77,2,NULL),(2484,94,44,2,NULL),(2485,5,88,2,NULL),(2486,72,69,2,NULL),(2487,70,77,2,NULL),(2488,6,88,2,NULL),(2489,97,44,2,NULL),(2490,156,69,2,NULL),(2491,100,44,2,NULL),(2492,73,77,2,NULL),(2493,7,88,2,NULL),(2494,171,69,2,NULL),(2495,151,44,2,NULL),(2496,20,78,2,NULL),(2497,8,88,2,NULL),(2498,183,69,2,NULL),(2499,158,44,2,NULL),(2500,25,78,2,NULL),(2501,9,88,2,NULL),(2502,192,69,2,NULL),(2503,173,44,2,NULL),(2504,10,88,2,NULL),(2505,26,78,2,NULL),(2506,194,69,2,NULL),(2507,11,88,2,NULL),(2508,181,44,2,NULL),(2509,28,78,2,NULL),(2510,196,69,2,NULL),(2511,187,44,2,NULL),(2512,12,7,2,NULL),(2513,205,69,2,NULL),(2514,190,44,2,NULL),(2515,206,69,2,NULL),(2516,114,8,2,NULL),(2517,29,78,2,NULL),(2518,198,44,2,NULL),(2519,209,69,2,NULL),(2520,30,78,2,NULL),(2521,152,8,2,NULL),(2522,87,47,2,NULL),(2523,210,69,2,NULL),(2524,60,78,2,NULL),(2525,165,8,2,NULL),(2526,90,47,2,NULL),(2527,212,69,2,NULL),(2528,167,8,2,NULL),(2529,63,78,2,NULL),(2530,94,47,2,NULL),(2531,126,69,2,NULL),(2532,169,8,2,NULL),(2533,66,78,2,NULL),(2534,97,47,2,NULL),(2535,87,69,2,NULL),(2536,67,78,2,NULL),(2537,172,8,2,NULL),(2538,100,47,2,NULL),(2539,90,69,2,NULL),(2540,70,78,2,NULL),(2541,174,8,2,NULL),(2542,151,47,2,NULL),(2543,94,69,2,NULL),(2544,177,8,2,NULL),(2545,73,78,2,NULL),(2546,158,47,2,NULL),(2547,97,69,2,NULL),(2548,178,8,2,NULL),(2549,20,80,2,NULL),(2550,173,47,2,NULL),(2551,100,69,2,NULL),(2552,182,8,2,NULL),(2553,25,80,2,NULL),(2554,181,47,2,NULL),(2555,151,69,2,NULL),(2556,26,80,2,NULL),(2557,72,8,2,NULL),(2558,187,47,2,NULL),(2559,158,69,2,NULL),(2560,28,80,2,NULL),(2561,156,8,2,NULL),(2562,190,47,2,NULL),(2563,173,69,2,NULL),(2564,171,8,2,NULL),(2565,29,80,2,NULL),(2566,198,47,2,NULL),(2567,181,69,2,NULL),(2568,183,8,2,NULL),(2569,30,80,2,NULL),(2570,87,61,2,NULL),(2571,187,69,2,NULL),(2572,192,8,2,NULL),(2573,60,80,2,NULL),(2574,90,61,2,NULL),(2575,190,69,2,NULL),(2576,63,80,2,NULL),(2577,194,8,2,NULL),(2578,94,61,2,NULL),(2579,198,69,2,NULL),(2580,196,8,2,NULL),(2581,66,80,2,NULL),(2582,97,61,2,NULL),(2583,55,69,2,NULL),(2584,67,80,2,NULL),(2585,205,8,2,NULL),(2586,100,61,2,NULL),(2587,70,80,2,NULL),(2588,206,8,2,NULL),(2589,151,61,2,NULL),(2590,20,82,2,NULL),(2591,73,80,2,NULL),(2592,209,8,2,NULL),(2593,25,82,2,NULL),(2594,158,61,2,NULL),(2595,210,8,2,NULL),(2596,26,82,2,NULL),(2597,173,61,2,NULL),(2598,55,9,2,NULL),(2599,212,8,2,NULL),(2600,28,82,2,NULL),(2601,181,61,2,NULL),(2602,126,8,2,NULL),(2603,20,41,2,NULL),(2604,29,82,2,NULL),(2605,187,61,2,NULL),(2606,25,41,2,NULL),(2607,30,82,2,NULL),(2608,55,8,2,NULL),(2609,190,61,2,NULL),(2610,26,41,2,NULL),(2611,60,82,2,NULL),(2612,198,61,2,NULL),(2613,28,41,2,NULL),(2614,63,82,2,NULL),(2615,87,67,2,NULL),(2616,114,14,2,NULL),(2617,29,41,2,NULL),(2618,66,82,2,NULL),(2619,90,67,2,NULL),(2620,152,14,2,NULL),(2621,30,41,2,NULL),(2622,67,82,2,NULL),(2623,94,67,2,NULL),(2624,165,14,2,NULL),(2625,60,41,2,NULL),(2626,70,82,2,NULL),(2627,97,67,2,NULL),(2628,167,14,2,NULL),(2629,63,41,2,NULL),(2630,73,82,2,NULL),(2631,100,67,2,NULL),(2632,169,14,2,NULL),(2633,66,41,2,NULL),(2634,114,82,2,NULL),(2635,151,67,2,NULL),(2636,172,14,2,NULL),(2637,67,41,2,NULL),(2638,152,82,2,NULL),(2639,158,67,2,NULL),(2640,174,14,2,NULL),(2641,70,41,2,NULL),(2642,165,82,2,NULL),(2643,173,67,2,NULL),(2644,177,14,2,NULL),(2645,73,41,2,NULL),(2646,167,82,2,NULL),(2647,181,67,2,NULL),(2648,178,14,2,NULL),(2649,20,44,2,NULL),(2650,169,82,2,NULL),(2651,187,67,2,NULL),(2652,182,14,2,NULL),(2653,25,44,2,NULL),(2654,172,82,2,NULL),(2655,190,67,2,NULL),(2656,72,14,2,NULL),(2657,26,44,2,NULL),(2658,174,82,2,NULL),(2659,198,67,2,NULL),(2660,156,14,2,NULL),(2661,28,44,2,NULL),(2662,177,82,2,NULL),(2663,87,81,2,NULL),(2664,171,14,2,NULL),(2665,29,44,2,NULL),(2666,178,82,2,NULL),(2667,90,81,2,NULL),(2668,183,14,2,NULL),(2669,30,44,2,NULL),(2670,182,82,2,NULL),(2671,94,81,2,NULL),(2672,192,14,2,NULL),(2673,60,44,2,NULL),(2674,97,81,2,NULL),(2675,72,82,2,NULL),(2676,194,14,2,NULL),(2677,63,44,2,NULL),(2678,156,82,2,NULL),(2679,100,81,2,NULL),(2680,196,14,2,NULL),(2681,66,44,2,NULL),(2682,171,82,2,NULL),(2683,151,81,2,NULL),(2684,205,14,2,NULL),(2685,67,44,2,NULL),(2686,183,82,2,NULL),(2687,158,81,2,NULL),(2688,206,14,2,NULL),(2689,70,44,2,NULL),(2690,192,82,2,NULL),(2691,173,81,2,NULL),(2692,209,14,2,NULL),(2693,73,44,2,NULL),(2694,194,82,2,NULL),(2695,181,81,2,NULL),(2696,210,14,2,NULL),(2697,20,47,2,NULL),(2698,196,82,2,NULL),(2699,187,81,2,NULL),(2700,212,14,2,NULL),(2701,25,47,2,NULL),(2702,205,82,2,NULL),(2703,190,81,2,NULL),(2704,126,14,2,NULL),(2705,26,47,2,NULL),(2706,206,82,2,NULL),(2707,198,81,2,NULL),(2708,28,47,2,NULL),(2709,55,14,2,NULL),(2710,209,82,2,NULL),(2711,87,87,2,NULL),(2712,29,47,2,NULL),(2713,210,82,2,NULL),(2714,90,87,2,NULL),(2715,30,47,2,NULL),(2716,212,82,2,NULL),(2717,94,87,2,NULL),(2718,60,47,2,NULL),(2719,114,51,2,NULL),(2720,126,82,2,NULL),(2721,97,87,2,NULL),(2722,63,47,2,NULL),(2723,152,51,2,NULL),(2724,87,82,2,NULL),(2725,100,87,2,NULL),(2726,66,47,2,NULL),(2727,165,51,2,NULL),(2728,90,82,2,NULL),(2729,151,87,2,NULL),(2730,67,47,2,NULL),(2731,167,51,2,NULL),(2732,94,82,2,NULL),(2733,158,87,2,NULL),(2734,70,47,2,NULL),(2735,97,82,2,NULL),(2736,173,87,2,NULL),(2737,73,47,2,NULL),(2738,100,82,2,NULL),(2739,181,87,2,NULL),(2740,20,61,2,NULL),(2741,169,51,2,NULL),(2742,151,82,2,NULL),(2743,187,87,2,NULL),(2744,25,61,2,NULL),(2745,172,51,2,NULL),(2746,158,82,2,NULL),(2747,190,87,2,NULL),(2748,26,61,2,NULL),(2749,174,51,2,NULL),(2750,173,82,2,NULL),(2751,198,87,2,NULL),(2752,28,61,2,NULL),(2753,177,51,2,NULL),(2754,181,82,2,NULL),(2755,87,89,2,NULL),(2756,29,61,2,NULL),(2757,178,51,2,NULL),(2758,187,82,2,NULL),(2759,90,89,2,NULL),(2760,30,61,2,NULL),(2761,182,51,2,NULL),(2762,190,82,2,NULL),(2763,94,89,2,NULL),(2764,60,61,2,NULL),(2765,72,51,2,NULL),(2766,198,82,2,NULL),(2767,97,89,2,NULL),(2768,63,61,2,NULL),(2769,156,51,2,NULL),(2770,55,82,2,NULL),(2771,100,89,2,NULL),(2772,66,61,2,NULL),(2773,171,51,2,NULL),(2774,151,89,2,NULL),(2775,183,51,2,NULL),(2776,67,61,2,NULL),(2777,20,84,2,NULL),(2778,158,89,2,NULL),(2779,70,61,2,NULL),(2780,192,51,2,NULL),(2781,173,89,2,NULL),(2782,25,84,2,NULL),(2783,73,61,2,NULL),(2784,194,51,2,NULL),(2785,26,84,2,NULL),(2786,181,89,2,NULL),(2787,20,67,2,NULL),(2788,196,51,2,NULL),(2789,28,84,2,NULL),(2790,187,89,2,NULL),(2791,25,67,2,NULL),(2792,205,51,2,NULL),(2793,29,84,2,NULL),(2794,190,89,2,NULL),(2795,26,67,2,NULL),(2796,206,51,2,NULL),(2797,30,84,2,NULL),(2798,198,89,2,NULL),(2799,28,67,2,NULL),(2800,209,51,2,NULL),(2801,60,84,2,NULL),(2802,29,67,2,NULL),(2803,210,51,2,NULL),(2804,63,84,2,NULL),(2805,30,67,2,NULL),(2806,212,51,2,NULL),(2807,66,84,2,NULL),(2808,60,67,2,NULL),(2809,126,51,2,NULL),(2810,67,84,2,NULL),(2811,63,67,2,NULL),(2812,87,84,2,NULL),(2813,70,84,2,NULL),(2814,55,51,2,NULL),(2815,66,67,2,NULL),(2816,90,84,2,NULL),(2817,73,84,2,NULL),(2818,67,67,2,NULL),(2819,94,84,2,NULL),(2820,114,84,2,NULL),(2821,70,67,2,NULL),(2822,97,84,2,NULL),(2823,152,84,2,NULL),(2824,100,84,2,NULL),(2825,73,67,2,NULL),(2826,165,84,2,NULL),(2827,114,52,2,NULL),(2828,151,84,2,NULL),(2829,20,81,2,NULL),(2830,167,84,2,NULL),(2831,152,52,2,NULL),(2832,25,81,2,NULL),(2833,158,84,2,NULL),(2834,169,84,2,NULL),(2835,165,52,2,NULL),(2836,173,84,2,NULL),(2837,26,81,2,NULL),(2838,172,84,2,NULL),(2839,167,52,2,NULL),(2840,181,84,2,NULL),(2841,28,81,2,NULL),(2842,174,84,2,NULL),(2843,169,52,2,NULL),(2844,187,84,2,NULL),(2845,29,81,2,NULL),(2846,177,84,2,NULL),(2847,190,84,2,NULL),(2848,30,81,2,NULL),(2849,172,52,2,NULL),(2850,178,84,2,NULL),(2851,198,84,2,NULL),(2852,60,81,2,NULL),(2853,174,52,2,NULL),(2854,182,84,2,NULL),(2855,87,86,2,NULL),(2856,63,81,2,NULL),(2857,177,52,2,NULL),(2858,72,84,2,NULL),(2859,90,86,2,NULL),(2860,66,81,2,NULL),(2861,178,52,2,NULL),(2862,156,84,2,NULL),(2863,67,81,2,NULL),(2864,94,86,2,NULL),(2865,182,52,2,NULL),(2866,171,84,2,NULL),(2867,97,86,2,NULL),(2868,70,81,2,NULL),(2869,72,52,2,NULL),(2870,183,84,2,NULL),(2871,100,86,2,NULL),(2872,73,81,2,NULL),(2873,156,52,2,NULL),(2874,192,84,2,NULL),(2875,151,86,2,NULL),(2876,20,87,2,NULL),(2877,171,52,2,NULL),(2878,194,84,2,NULL),(2879,158,86,2,NULL),(2880,25,87,2,NULL),(2881,183,52,2,NULL),(2882,196,84,2,NULL),(2883,173,86,2,NULL),(2884,26,87,2,NULL),(2885,192,52,2,NULL),(2886,205,84,2,NULL),(2887,181,86,2,NULL),(2888,28,87,2,NULL),(2889,194,52,2,NULL),(2890,206,84,2,NULL),(2891,187,86,2,NULL),(2892,29,87,2,NULL),(2893,196,52,2,NULL),(2894,209,84,2,NULL),(2895,190,86,2,NULL),(2896,30,87,2,NULL),(2897,205,52,2,NULL),(2898,210,84,2,NULL),(2899,198,86,2,NULL),(2900,60,87,2,NULL),(2901,206,52,2,NULL),(2902,212,84,2,NULL),(2903,87,88,2,NULL),(2904,63,87,2,NULL),(2905,209,52,2,NULL),(2906,126,84,2,NULL),(2907,90,88,2,NULL),(2908,66,87,2,NULL),(2909,210,52,2,NULL),(2910,55,84,2,NULL),(2911,94,88,2,NULL),(2912,67,87,2,NULL),(2913,212,52,2,NULL),(2914,97,88,2,NULL),(2915,70,87,2,NULL),(2916,20,86,2,NULL),(2917,126,52,2,NULL),(2918,100,88,2,NULL),(2919,25,86,2,NULL),(2920,73,87,2,NULL),(2921,151,88,2,NULL),(2922,55,52,2,NULL),(2923,26,86,2,NULL),(2924,20,89,2,NULL),(2925,158,88,2,NULL),(2926,28,86,2,NULL),(2927,25,89,2,NULL),(2928,114,53,2,NULL),(2929,173,88,2,NULL),(2930,29,86,2,NULL),(2931,26,89,2,NULL),(2932,152,53,2,NULL),(2933,181,88,2,NULL),(2934,30,86,2,NULL),(2935,28,89,2,NULL),(2936,165,53,2,NULL),(2937,187,88,2,NULL),(2938,60,86,2,NULL),(2939,29,89,2,NULL),(2940,167,53,2,NULL),(2941,190,88,2,NULL),(2942,63,86,2,NULL),(2943,30,89,2,NULL),(2944,169,53,2,NULL),(2945,198,88,2,NULL),(2946,66,86,2,NULL),(2947,60,89,2,NULL),(2948,172,53,2,NULL),(2949,55,53,2,NULL),(2950,67,86,2,NULL),(2951,63,89,2,NULL),(2952,174,53,2,NULL),(2953,55,54,2,NULL),(2954,70,86,2,NULL),(2955,66,89,2,NULL),(2956,177,53,2,NULL),(2957,55,55,2,NULL),(2958,73,86,2,NULL),(2959,67,89,2,NULL),(2960,178,53,2,NULL),(2961,55,15,2,NULL),(2962,114,86,2,NULL),(2963,70,89,2,NULL),(2964,182,53,2,NULL),(2965,55,16,2,NULL),(2966,152,86,2,NULL),(2967,73,89,2,NULL),(2968,72,53,2,NULL),(2969,55,17,2,NULL),(2970,165,86,2,NULL),(2971,156,53,2,NULL),(2972,55,56,2,NULL),(2973,167,86,2,NULL),(2974,171,53,2,NULL),(2975,55,57,2,NULL),(2976,169,86,2,NULL),(2977,183,53,2,NULL),(2978,55,74,2,NULL),(2979,172,86,2,NULL),(2980,192,53,2,NULL),(2981,55,75,2,NULL),(2982,20,88,2,NULL),(2983,174,86,2,NULL),(2984,194,53,2,NULL),(2985,55,21,2,NULL),(2986,25,88,2,NULL),(2987,177,86,2,NULL),(2988,196,53,2,NULL),(2989,55,24,2,NULL),(2990,26,88,2,NULL),(2991,178,86,2,NULL),(2992,205,53,2,NULL),(2993,55,33,2,NULL),(2994,28,88,2,NULL),(2995,182,86,2,NULL),(2996,206,53,2,NULL),(2997,55,39,2,NULL),(2998,29,88,2,NULL),(2999,72,86,2,NULL),(3000,209,53,2,NULL),(3001,55,43,2,NULL),(3002,30,88,2,NULL),(3003,156,86,2,NULL),(3004,210,53,2,NULL),(3005,55,68,2,NULL),(3006,60,88,2,NULL),(3007,171,86,2,NULL),(3008,212,53,2,NULL),(3009,63,88,2,NULL),(3010,55,70,2,NULL),(3011,183,86,2,NULL),(3012,126,53,2,NULL),(3013,55,71,2,NULL),(3014,66,88,2,NULL),(3015,192,86,2,NULL),(3016,55,18,2,NULL),(3017,67,88,2,NULL),(3018,194,86,2,NULL),(3019,55,23,2,NULL),(3020,70,88,2,NULL),(3021,114,54,2,NULL),(3022,196,86,2,NULL),(3023,73,88,2,NULL),(3024,55,25,2,NULL),(3025,152,54,2,NULL),(3026,205,86,2,NULL),(3027,55,27,2,NULL),(3028,165,54,2,NULL),(3029,206,86,2,NULL),(3030,114,55,2,NULL),(3031,55,65,2,NULL),(3032,167,54,2,NULL),(3033,209,86,2,NULL),(3034,114,15,2,NULL),(3035,55,76,2,NULL),(3036,169,54,2,NULL),(3037,210,86,2,NULL),(3038,114,16,2,NULL),(3039,55,77,2,NULL),(3040,172,54,2,NULL),(3041,212,86,2,NULL),(3042,114,17,2,NULL),(3043,55,78,2,NULL),(3044,174,54,2,NULL),(3045,126,86,2,NULL),(3046,114,56,2,NULL),(3047,55,80,2,NULL),(3048,177,54,2,NULL),(3049,114,57,2,NULL),(3050,55,41,2,NULL),(3051,178,54,2,NULL),(3052,55,86,2,NULL),(3053,114,74,2,NULL),(3054,55,44,2,NULL),(3055,182,54,2,NULL),(3056,114,75,2,NULL),(3057,55,47,2,NULL),(3058,72,54,2,NULL),(3059,114,21,2,NULL),(3060,114,88,2,NULL),(3061,55,61,2,NULL),(3062,156,54,2,NULL),(3063,152,88,2,NULL),(3064,114,24,2,NULL),(3065,55,67,2,NULL),(3066,171,54,2,NULL),(3067,165,88,2,NULL),(3068,114,33,2,NULL),(3069,55,81,2,NULL),(3070,183,54,2,NULL),(3071,167,88,2,NULL),(3072,114,39,2,NULL),(3073,55,87,2,NULL),(3074,192,54,2,NULL),(3075,169,88,2,NULL),(3076,114,43,2,NULL),(3077,55,89,2,NULL),(3078,194,54,2,NULL),(3079,172,88,2,NULL),(3080,114,68,2,NULL),(3081,196,54,2,NULL),(3082,55,88,2,NULL),(3083,174,88,2,NULL),(3084,114,70,2,NULL),(3085,205,54,2,NULL),(3086,177,88,2,NULL),(3087,114,71,2,NULL),(3088,206,54,2,NULL),(3089,114,41,2,NULL),(3090,178,88,2,NULL),(3091,114,18,2,NULL),(3092,209,54,2,NULL),(3093,152,41,2,NULL),(3094,182,88,2,NULL),(3095,114,23,2,NULL),(3096,210,54,2,NULL),(3097,165,41,2,NULL),(3098,72,88,2,NULL),(3099,114,25,2,NULL),(3100,167,41,2,NULL),(3101,212,54,2,NULL),(3102,156,88,2,NULL),(3103,114,27,2,NULL),(3104,169,41,2,NULL),(3105,126,54,2,NULL),(3106,171,88,2,NULL),(3107,114,65,2,NULL),(3108,172,41,2,NULL),(3109,183,88,2,NULL),(3110,114,76,2,NULL),(3111,174,41,2,NULL),(3112,192,88,2,NULL),(3113,114,77,2,NULL),(3114,177,41,2,NULL),(3115,194,88,2,NULL),(3116,114,78,2,NULL),(3117,152,55,2,NULL),(3118,178,41,2,NULL),(3119,196,88,2,NULL),(3120,114,80,2,NULL),(3121,165,55,2,NULL),(3122,182,41,2,NULL),(3123,205,88,2,NULL),(3124,167,55,2,NULL),(3125,114,44,2,NULL),(3126,72,41,2,NULL),(3127,206,88,2,NULL),(3128,114,47,2,NULL),(3129,169,55,2,NULL),(3130,156,41,2,NULL),(3131,209,88,2,NULL),(3132,114,61,2,NULL),(3133,172,55,2,NULL),(3134,171,41,2,NULL),(3135,210,88,2,NULL),(3136,114,67,2,NULL),(3137,174,55,2,NULL),(3138,183,41,2,NULL),(3139,212,88,2,NULL),(3140,114,81,2,NULL),(3141,177,55,2,NULL),(3142,192,41,2,NULL),(3143,126,88,2,NULL),(3144,114,87,2,NULL),(3145,178,55,2,NULL),(3146,194,41,2,NULL),(3147,114,89,2,NULL),(3148,182,55,2,NULL),(3149,196,41,2,NULL),(3150,72,55,2,NULL),(3151,205,41,2,NULL),(3152,156,55,2,NULL),(3153,152,15,2,NULL),(3154,206,41,2,NULL),(3155,171,55,2,NULL),(3156,209,41,2,NULL),(3157,165,15,2,NULL),(3158,183,55,2,NULL),(3159,210,41,2,NULL),(3160,167,15,2,NULL),(3161,192,55,2,NULL),(3162,212,41,2,NULL),(3163,169,15,2,NULL),(3164,194,55,2,NULL),(3165,126,41,2,NULL),(3166,172,15,2,NULL),(3167,196,55,2,NULL),(3168,174,15,2,NULL),(3169,205,55,2,NULL),(3170,177,15,2,NULL),(3171,206,55,2,NULL),(3172,178,15,2,NULL),(3173,152,44,2,NULL),(3174,209,55,2,NULL),(3175,182,15,2,NULL),(3176,165,44,2,NULL),(3177,210,55,2,NULL),(3178,72,15,2,NULL),(3179,167,44,2,NULL),(3180,212,55,2,NULL),(3181,156,15,2,NULL),(3182,169,44,2,NULL),(3183,126,55,2,NULL),(3184,171,15,2,NULL),(3185,172,44,2,NULL),(3186,183,15,2,NULL),(3187,174,44,2,NULL),(3188,192,15,2,NULL),(3189,177,44,2,NULL),(3190,194,15,2,NULL),(3191,178,44,2,NULL),(3192,196,15,2,NULL),(3193,182,44,2,NULL),(3194,205,15,2,NULL),(3195,72,44,2,NULL),(3196,206,15,2,NULL),(3197,156,44,2,NULL),(3198,209,15,2,NULL),(3199,171,44,2,NULL),(3200,210,15,2,NULL),(3201,183,44,2,NULL),(3202,212,15,2,NULL),(3203,192,44,2,NULL),(3204,126,15,2,NULL),(3205,194,44,2,NULL),(3206,196,44,2,NULL),(3207,205,44,2,NULL),(3208,206,44,2,NULL),(3209,209,44,2,NULL),(3210,152,16,2,NULL),(3211,210,44,2,NULL),(3212,165,16,2,NULL),(3213,212,44,2,NULL),(3214,167,16,2,NULL),(3215,126,44,2,NULL),(3216,169,16,2,NULL),(3217,172,16,2,NULL),(3218,115,16,2,NULL),(3219,174,16,2,NULL),(3220,115,25,2,NULL),(3221,177,16,2,NULL),(3222,115,44,2,NULL),(3223,178,16,2,NULL),(3224,115,45,2,NULL),(3225,182,16,2,NULL),(3226,152,47,2,NULL),(3227,72,16,2,NULL),(3228,165,47,2,NULL),(3229,156,16,2,NULL),(3230,167,47,2,NULL),(3231,171,16,2,NULL),(3232,169,47,2,NULL),(3233,183,16,2,NULL),(3234,172,47,2,NULL),(3235,192,16,2,NULL),(3236,174,47,2,NULL),(3237,194,16,2,NULL),(3238,177,47,2,NULL),(3239,196,16,2,NULL),(3240,178,47,2,NULL),(3241,205,16,2,NULL),(3242,182,47,2,NULL),(3243,206,16,2,NULL),(3244,72,47,2,NULL),(3245,209,16,2,NULL),(3246,156,47,2,NULL),(3247,210,16,2,NULL),(3248,171,47,2,NULL),(3249,212,16,2,NULL),(3250,183,47,2,NULL),(3251,126,16,2,NULL),(3252,192,47,2,NULL),(3253,194,47,2,NULL),(3254,135,16,2,NULL),(3255,196,47,2,NULL),(3256,135,25,2,NULL),(3257,205,47,2,NULL),(3258,135,44,2,NULL),(3259,206,47,2,NULL),(3260,135,45,2,NULL),(3261,209,47,2,NULL),(3262,210,47,2,NULL),(3263,152,17,2,NULL),(3264,212,47,2,NULL),(3265,165,17,2,NULL),(3266,126,47,2,NULL),(3267,167,17,2,NULL),(3268,169,17,2,NULL),(3269,172,17,2,NULL),(3270,152,61,2,NULL),(3271,174,17,2,NULL),(3272,165,61,2,NULL),(3273,177,17,2,NULL),(3274,167,61,2,NULL),(3275,178,17,2,NULL),(3276,169,61,2,NULL),(3277,182,17,2,NULL),(3278,172,61,2,NULL),(3279,72,17,2,NULL),(3280,174,61,2,NULL),(3281,156,17,2,NULL),(3282,177,61,2,NULL),(3283,171,17,2,NULL),(3284,178,61,2,NULL),(3285,183,17,2,NULL),(3286,182,61,2,NULL),(3287,192,17,2,NULL),(3288,72,61,2,NULL),(3289,194,17,2,NULL),(3290,156,61,2,NULL),(3291,196,17,2,NULL),(3292,171,61,2,NULL),(3293,205,17,2,NULL),(3294,183,61,2,NULL),(3295,206,17,2,NULL),(3296,192,61,2,NULL),(3297,209,17,2,NULL),(3298,194,61,2,NULL),(3299,210,17,2,NULL),(3300,196,61,2,NULL),(3301,212,17,2,NULL),(3302,205,61,2,NULL),(3303,126,17,2,NULL),(3304,206,61,2,NULL),(3305,209,61,2,NULL),(3306,152,56,2,NULL),(3307,210,61,2,NULL),(3308,165,56,2,NULL),(3309,212,61,2,NULL),(3310,167,56,2,NULL),(3311,126,61,2,NULL),(3312,169,56,2,NULL),(3313,152,67,2,NULL),(3314,172,56,2,NULL),(3315,165,67,2,NULL),(3316,174,56,2,NULL),(3317,167,67,2,NULL),(3318,177,56,2,NULL),(3319,169,67,2,NULL),(3320,178,56,2,NULL),(3321,172,67,2,NULL),(3322,182,56,2,NULL),(3323,174,67,2,NULL),(3324,72,56,2,NULL),(3325,177,67,2,NULL),(3326,156,56,2,NULL),(3327,178,67,2,NULL),(3328,171,56,2,NULL),(3329,182,67,2,NULL),(3330,183,56,2,NULL),(3331,72,67,2,NULL),(3332,192,56,2,NULL),(3333,156,67,2,NULL),(3334,194,56,2,NULL),(3335,171,67,2,NULL),(3336,196,56,2,NULL),(3337,183,67,2,NULL),(3338,205,56,2,NULL),(3339,192,67,2,NULL),(3340,206,56,2,NULL),(3341,194,67,2,NULL),(3342,209,56,2,NULL),(3343,196,67,2,NULL),(3344,210,56,2,NULL),(3345,205,67,2,NULL),(3346,212,56,2,NULL),(3347,206,67,2,NULL),(3348,126,56,2,NULL),(3349,209,67,2,NULL),(3350,210,67,2,NULL),(3351,152,57,2,NULL),(3352,212,67,2,NULL),(3353,165,57,2,NULL),(3354,126,67,2,NULL),(3355,167,57,2,NULL),(3356,169,57,2,NULL),(3357,152,81,2,NULL),(3358,172,57,2,NULL),(3359,165,81,2,NULL),(3360,174,57,2,NULL),(3361,167,81,2,NULL),(3362,177,57,2,NULL),(3363,169,81,2,NULL),(3364,178,57,2,NULL),(3365,172,81,2,NULL),(3366,182,57,2,NULL),(3367,174,81,2,NULL),(3368,72,57,2,NULL),(3369,177,81,2,NULL),(3370,156,57,2,NULL),(3371,178,81,2,NULL),(3372,171,57,2,NULL),(3373,182,81,2,NULL),(3374,183,57,2,NULL),(3375,72,81,2,NULL),(3376,192,57,2,NULL),(3377,156,81,2,NULL),(3378,194,57,2,NULL),(3379,171,81,2,NULL),(3380,196,57,2,NULL),(3381,183,81,2,NULL),(3382,205,57,2,NULL),(3383,192,81,2,NULL),(3384,206,57,2,NULL),(3385,194,81,2,NULL),(3386,209,57,2,NULL),(3387,196,81,2,NULL),(3388,210,57,2,NULL),(3389,205,81,2,NULL),(3390,212,57,2,NULL),(3391,206,81,2,NULL),(3392,126,57,2,NULL),(3393,209,81,2,NULL),(3394,210,81,2,NULL),(3395,152,74,2,NULL),(3396,212,81,2,NULL),(3397,165,74,2,NULL),(3398,126,81,2,NULL),(3399,167,74,2,NULL),(3400,169,74,2,NULL),(3401,152,87,2,NULL),(3402,172,74,2,NULL),(3403,165,87,2,NULL),(3404,174,74,2,NULL),(3405,167,87,2,NULL),(3406,177,74,2,NULL),(3407,169,87,2,NULL),(3408,178,74,2,NULL),(3409,172,87,2,NULL),(3410,182,74,2,NULL),(3411,174,87,2,NULL),(3412,72,74,2,NULL),(3413,177,87,2,NULL),(3414,156,74,2,NULL),(3415,178,87,2,NULL),(3416,171,74,2,NULL),(3417,182,87,2,NULL),(3418,183,74,2,NULL),(3419,72,87,2,NULL),(3420,192,74,2,NULL),(3421,156,87,2,NULL),(3422,194,74,2,NULL),(3423,171,87,2,NULL),(3424,196,74,2,NULL),(3425,183,87,2,NULL),(3426,205,74,2,NULL),(3427,192,87,2,NULL),(3428,206,74,2,NULL),(3429,194,87,2,NULL),(3430,209,74,2,NULL),(3431,196,87,2,NULL),(3432,210,74,2,NULL),(3433,205,87,2,NULL),(3434,212,74,2,NULL),(3435,206,87,2,NULL),(3436,126,74,2,NULL),(3437,209,87,2,NULL),(3438,210,87,2,NULL),(3439,152,75,2,NULL),(3440,212,87,2,NULL),(3441,165,75,2,NULL),(3442,126,87,2,NULL),(3443,167,75,2,NULL),(3444,169,75,2,NULL),(3445,152,89,2,NULL),(3446,172,75,2,NULL),(3447,165,89,2,NULL),(3448,174,75,2,NULL),(3449,167,89,2,NULL),(3450,177,75,2,NULL),(3451,169,89,2,NULL),(3452,178,75,2,NULL),(3453,172,89,2,NULL),(3454,182,75,2,NULL),(3455,174,89,2,NULL),(3456,72,75,2,NULL),(3457,177,89,2,NULL),(3458,156,75,2,NULL),(3459,178,89,2,NULL),(3460,171,75,2,NULL),(3461,182,89,2,NULL),(3462,183,75,2,NULL),(3463,72,89,2,NULL),(3464,192,75,2,NULL),(3465,156,89,2,NULL),(3466,194,75,2,NULL),(3467,171,89,2,NULL),(3468,196,75,2,NULL),(3469,183,89,2,NULL),(3470,205,75,2,NULL),(3471,192,89,2,NULL),(3472,206,75,2,NULL),(3473,194,89,2,NULL),(3474,209,75,2,NULL),(3475,196,89,2,NULL),(3476,210,75,2,NULL),(3477,205,89,2,NULL),(3478,212,75,2,NULL),(3479,206,89,2,NULL),(3480,126,75,2,NULL),(3481,209,89,2,NULL),(3482,210,89,2,NULL),(3483,212,89,2,NULL),(3484,126,89,2,NULL),(3485,136,26,2,NULL),(3486,152,24,2,NULL),(3487,165,24,2,NULL),(3488,167,24,2,NULL),(3489,169,24,2,NULL),(3490,172,24,2,NULL),(3491,174,24,2,NULL),(3492,177,24,2,NULL),(3493,178,24,2,NULL),(3494,182,24,2,NULL),(3495,152,33,2,NULL),(3496,165,33,2,NULL),(3497,167,33,2,NULL),(3498,169,33,2,NULL),(3499,172,33,2,NULL),(3500,174,33,2,NULL),(3501,177,33,2,NULL),(3502,178,33,2,NULL),(3503,182,33,2,NULL),(3504,152,39,2,NULL),(3505,165,39,2,NULL),(3506,167,39,2,NULL),(3507,169,39,2,NULL),(3508,172,39,2,NULL),(3509,174,39,2,NULL),(3510,177,39,2,NULL),(3511,178,39,2,NULL),(3512,182,39,2,NULL),(3513,152,43,2,NULL),(3514,165,43,2,NULL),(3515,167,43,2,NULL),(3516,169,43,2,NULL),(3517,172,43,2,NULL),(3518,174,43,2,NULL),(3519,177,43,2,NULL),(3520,178,43,2,NULL),(3521,182,43,2,NULL),(3522,152,68,2,NULL),(3523,165,68,2,NULL),(3524,167,68,2,NULL),(3525,169,68,2,NULL),(3526,172,68,2,NULL),(3527,174,68,2,NULL),(3528,177,68,2,NULL),(3529,178,68,2,NULL),(3530,182,68,2,NULL),(3531,152,70,2,NULL),(3532,165,70,2,NULL),(3533,167,70,2,NULL),(3534,169,70,2,NULL),(3535,172,70,2,NULL),(3536,174,70,2,NULL),(3537,177,70,2,NULL),(3538,178,70,2,NULL),(3539,182,70,2,NULL),(3540,152,71,2,NULL),(3541,165,71,2,NULL),(3542,167,71,2,NULL),(3543,169,71,2,NULL),(3544,172,71,2,NULL),(3545,174,71,2,NULL),(3546,177,71,2,NULL),(3547,178,71,2,NULL),(3548,182,71,2,NULL),(3549,152,18,2,NULL),(3550,165,18,2,NULL),(3551,167,18,2,NULL),(3552,169,18,2,NULL),(3553,172,18,2,NULL),(3554,174,18,2,NULL),(3555,177,18,2,NULL),(3556,178,18,2,NULL),(3557,182,18,2,NULL),(3558,72,21,2,NULL),(3559,156,21,2,NULL),(3560,171,21,2,NULL),(3561,183,21,2,NULL),(3562,192,21,2,NULL),(3563,194,21,2,NULL),(3564,196,21,2,NULL),(3565,205,21,2,NULL),(3566,206,21,2,NULL),(3567,209,21,2,NULL),(3568,210,21,2,NULL),(3569,212,21,2,NULL),(3570,126,21,2,NULL),(3571,152,23,2,NULL),(3572,165,23,2,NULL),(3573,167,23,2,NULL),(3574,169,23,2,NULL),(3575,172,23,2,NULL),(3576,174,23,2,NULL),(3577,177,23,2,NULL),(3578,178,23,2,NULL),(3579,182,23,2,NULL),(3580,152,25,2,NULL),(3581,165,25,2,NULL),(3582,167,25,2,NULL),(3583,169,25,2,NULL),(3584,172,25,2,NULL),(3585,174,25,2,NULL),(3586,177,25,2,NULL),(3587,178,25,2,NULL),(3588,182,25,2,NULL),(3589,152,27,2,NULL),(3590,165,27,2,NULL),(3591,167,27,2,NULL),(3592,169,27,2,NULL),(3593,172,27,2,NULL),(3594,174,27,2,NULL),(3595,177,27,2,NULL),(3596,178,27,2,NULL),(3597,182,27,2,NULL),(3598,152,65,2,NULL),(3599,165,65,2,NULL),(3600,167,65,2,NULL),(3601,169,65,2,NULL),(3602,172,65,2,NULL),(3603,174,65,2,NULL),(3604,177,65,2,NULL),(3605,178,65,2,NULL),(3606,182,65,2,NULL),(3607,152,76,2,NULL),(3608,165,76,2,NULL),(3609,167,76,2,NULL),(3610,169,76,2,NULL),(3611,172,76,2,NULL),(3612,174,76,2,NULL),(3613,177,76,2,NULL),(3614,178,76,2,NULL),(3615,182,76,2,NULL),(3616,152,77,2,NULL),(3617,165,77,2,NULL),(3618,167,77,2,NULL),(3619,169,77,2,NULL),(3620,172,77,2,NULL),(3621,174,77,2,NULL),(3622,177,77,2,NULL),(3623,178,77,2,NULL),(3624,182,77,2,NULL),(3625,152,78,2,NULL),(3626,165,78,2,NULL),(3627,167,78,2,NULL),(3628,169,78,2,NULL),(3629,172,78,2,NULL),(3630,174,78,2,NULL),(3631,177,78,2,NULL),(3632,178,78,2,NULL),(3633,182,78,2,NULL),(3634,152,80,2,NULL),(3635,165,80,2,NULL),(3636,167,80,2,NULL),(3637,169,80,2,NULL),(3638,172,80,2,NULL),(3639,174,80,2,NULL),(3640,177,80,2,NULL),(3641,178,80,2,NULL),(3642,182,80,2,NULL),(3643,72,24,2,NULL),(3644,156,24,2,NULL),(3645,171,24,2,NULL),(3646,183,24,2,NULL),(3647,192,24,2,NULL),(3648,194,24,2,NULL),(3649,196,24,2,NULL),(3650,205,24,2,NULL),(3651,206,24,2,NULL),(3652,209,24,2,NULL),(3653,210,24,2,NULL),(3654,212,24,2,NULL),(3655,126,24,2,NULL),(3656,72,33,2,NULL),(3657,156,33,2,NULL),(3658,171,33,2,NULL),(3659,183,33,2,NULL),(3660,192,33,2,NULL),(3661,194,33,2,NULL),(3662,196,33,2,NULL),(3663,205,33,2,NULL),(3664,206,33,2,NULL),(3665,209,33,2,NULL),(3666,210,33,2,NULL),(3667,212,33,2,NULL),(3668,126,33,2,NULL),(3669,72,39,2,NULL),(3670,156,39,2,NULL),(3671,171,39,2,NULL),(3672,183,39,2,NULL),(3673,192,39,2,NULL),(3674,194,39,2,NULL),(3675,196,39,2,NULL),(3676,205,39,2,NULL),(3677,206,39,2,NULL),(3678,209,39,2,NULL),(3679,210,39,2,NULL),(3680,212,39,2,NULL),(3681,126,39,2,NULL),(3682,72,43,2,NULL),(3683,156,43,2,NULL),(3684,171,43,2,NULL),(3685,183,43,2,NULL),(3686,192,43,2,NULL),(3687,194,43,2,NULL),(3688,196,43,2,NULL),(3689,205,43,2,NULL),(3690,206,43,2,NULL),(3691,209,43,2,NULL),(3692,210,43,2,NULL),(3693,212,43,2,NULL),(3694,126,43,2,NULL),(3695,72,68,2,NULL),(3696,156,68,2,NULL),(3697,171,68,2,NULL),(3698,183,68,2,NULL),(3699,192,68,2,NULL),(3700,194,68,2,NULL),(3701,196,68,2,NULL),(3702,205,68,2,NULL),(3703,206,68,2,NULL),(3704,209,68,2,NULL),(3705,210,68,2,NULL),(3706,212,68,2,NULL),(3707,126,68,2,NULL),(3708,72,70,2,NULL),(3709,156,70,2,NULL),(3710,171,70,2,NULL),(3711,183,70,2,NULL),(3712,192,70,2,NULL),(3713,194,70,2,NULL),(3714,196,70,2,NULL),(3715,205,70,2,NULL),(3716,206,70,2,NULL),(3717,209,70,2,NULL),(3718,210,70,2,NULL),(3719,212,70,2,NULL),(3720,126,70,2,NULL),(3721,72,71,2,NULL),(3722,156,71,2,NULL),(3723,171,71,2,NULL),(3724,183,71,2,NULL),(3725,192,71,2,NULL),(3726,194,71,2,NULL),(3727,196,71,2,NULL),(3728,205,71,2,NULL),(3729,206,71,2,NULL),(3730,209,71,2,NULL),(3731,210,71,2,NULL),(3732,212,71,2,NULL),(3733,126,71,2,NULL),(3734,166,13,2,NULL),(3735,166,20,2,NULL),(3736,166,36,2,NULL),(3737,166,37,2,NULL),(3738,175,15,2,NULL),(3739,175,23,2,NULL),(3740,175,41,2,NULL),(3741,175,42,2,NULL),(3742,179,15,2,NULL),(3743,179,23,2,NULL),(3744,179,41,2,NULL),(3745,179,42,2,NULL),(3746,186,15,2,NULL),(3747,186,23,2,NULL),(3748,186,41,2,NULL),(3749,186,42,2,NULL),(3750,189,15,2,NULL),(3751,189,23,2,NULL),(3752,189,41,2,NULL),(3753,189,42,2,NULL),(3754,199,15,2,NULL),(3755,199,23,2,NULL),(3756,199,41,2,NULL),(3757,199,42,2,NULL),(3758,223,13,2,NULL),(3759,223,20,2,NULL),(3760,223,36,2,NULL),(3761,223,37,2,NULL),(3762,126,18,2,NULL),(3763,72,23,2,NULL),(3764,156,23,2,NULL),(3765,171,23,2,NULL),(3766,183,23,2,NULL),(3767,192,23,2,NULL),(3768,194,23,2,NULL),(3769,196,23,2,NULL),(3770,205,23,2,NULL),(3771,206,23,2,NULL),(3772,209,23,2,NULL),(3773,210,23,2,NULL),(3774,212,23,2,NULL),(3775,72,25,2,NULL),(3776,156,25,2,NULL),(3777,171,25,2,NULL),(3778,183,25,2,NULL),(3779,192,25,2,NULL),(3780,194,25,2,NULL),(3781,196,25,2,NULL),(3782,205,25,2,NULL),(3783,206,25,2,NULL),(3784,209,25,2,NULL),(3785,210,25,2,NULL),(3786,212,25,2,NULL),(3787,72,27,2,NULL),(3788,156,27,2,NULL),(3789,171,27,2,NULL),(3790,183,27,2,NULL),(3791,192,27,2,NULL),(3792,194,27,2,NULL),(3793,196,27,2,NULL),(3794,205,27,2,NULL),(3795,206,27,2,NULL),(3796,209,27,2,NULL),(3797,210,27,2,NULL),(3798,212,27,2,NULL),(3799,72,65,2,NULL),(3800,156,65,2,NULL),(3801,171,65,2,NULL),(3802,183,65,2,NULL),(3803,192,65,2,NULL),(3804,194,65,2,NULL),(3805,196,65,2,NULL),(3806,205,65,2,NULL),(3807,206,65,2,NULL),(3808,209,65,2,NULL),(3809,210,65,2,NULL),(3810,212,65,2,NULL),(3811,72,76,2,NULL),(3812,156,76,2,NULL),(3813,171,76,2,NULL),(3814,183,76,2,NULL),(3815,192,76,2,NULL),(3816,194,76,2,NULL),(3817,196,76,2,NULL),(3818,205,76,2,NULL),(3819,206,76,2,NULL),(3820,209,76,2,NULL),(3821,210,76,2,NULL),(3822,212,76,2,NULL),(3823,72,77,2,NULL),(3824,156,77,2,NULL),(3825,171,77,2,NULL),(3826,183,77,2,NULL),(3827,192,77,2,NULL),(3828,194,77,2,NULL),(3829,196,77,2,NULL),(3830,205,77,2,NULL),(3831,206,77,2,NULL),(3832,209,77,2,NULL),(3833,210,77,2,NULL),(3834,212,77,2,NULL),(3835,72,78,2,NULL),(3836,156,78,2,NULL),(3837,171,78,2,NULL),(3838,183,78,2,NULL),(3839,192,78,2,NULL),(3840,194,78,2,NULL),(3841,196,78,2,NULL),(3842,205,78,2,NULL),(3843,206,78,2,NULL),(3844,209,78,2,NULL),(3845,210,78,2,NULL),(3846,212,78,2,NULL),(3847,72,80,2,NULL),(3848,156,80,2,NULL),(3849,171,80,2,NULL),(3850,183,80,2,NULL),(3851,192,80,2,NULL),(3852,194,80,2,NULL),(3853,196,80,2,NULL),(3854,205,80,2,NULL),(3855,206,80,2,NULL),(3856,209,80,2,NULL),(3857,210,80,2,NULL),(3858,212,80,2,NULL),(3859,126,23,2,NULL),(3860,126,25,2,NULL),(3861,126,27,2,NULL),(3862,126,65,2,NULL),(3863,126,76,2,NULL),(3864,126,77,2,NULL),(3865,126,78,2,NULL),(3866,126,80,2,NULL),(3867,52,16,2,NULL),(3868,52,25,2,NULL),(3869,52,44,2,NULL),(3870,52,45,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProviderLinks`
--

LOCK TABLES `ProviderLinks` WRITE;
/*!40000 ALTER TABLE `ProviderLinks` DISABLE KEYS */;
INSERT INTO `ProviderLinks` VALUES (1,21,46,NULL),(2,33,46,NULL),(3,62,46,NULL),(4,39,46,NULL),(5,63,46,NULL);
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

-- Dump completed on 2015-10-12  3:30:43
