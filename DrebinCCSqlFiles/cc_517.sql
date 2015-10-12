-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_517
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
INSERT INTO `ActionStrings` VALUES (13,'SMS_SEND_ACTIOIN'),(2,'android.intent.action.BOOT_COMPLETED'),(34,'android.intent.action.CHOOSER'),(30,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(27,'android.intent.action.PACKAGE_ADDED'),(32,'android.intent.action.PACKAGE_CHANGED'),(33,'android.intent.action.PACKAGE_REMOVED'),(36,'android.intent.action.SCREEN_OFF'),(37,'android.intent.action.SCREEN_ON'),(9,'android.intent.action.SET_WALLPAPER'),(23,'android.intent.action.VIEW'),(35,'android.intent.action.WALLPAPER_CHANGED'),(12,'android.net.conn.CONNECTIVITY_CHANGE'),(4,'android.provider.Telephony.SMS_RECEIVED'),(3,'android.provider.Telephony.WAP_PUSH_RECEIVED'),(19,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(22,'android.settings.WIRELESS_SETTINGS'),(25,'com.android.contacts.action.FILTER_CONTACTS'),(10,'com.android.launcher.action.INSTALL_SHORTCUT'),(11,'com.android.launcher.action.UNINSTALL_SHORTCUT'),(24,'com.jx.Action_CopyResError'),(15,'com.jx.MainActivity.CostInfo'),(21,'com.jx.MainActivity.ErrorInfo'),(28,'com.jx.MainActivity.InstallConfirmInfo'),(26,'com.jx.MainActivity.OpenLWP'),(29,'com.jx.MainActivity.RepeateInstall'),(17,'com.jx.MainActivity.SaveID'),(31,'com.jx.action.ExitBootReceiver'),(16,'com.jx.ad.ADService.ConfirmInstallInfo'),(7,'com.jx.ad.ADService.Init'),(18,'com.jx.ad.ADService.InitHasUpdate'),(14,'com.jx.ad.ADService.InstallRes'),(5,'com.jx.ad.ADService.Run'),(6,'com.jx.ad.ADService.RunCancel'),(20,'com.jx.ad.BootSmsReceiverService.Exit'),(8,'com.jx.ad.BootSmsReceiverService.Start');
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
INSERT INTO `Applications` VALUES (1,'com.km.installer',1),(2,'com.jx.theme.n2130263353',1),(3,'com.jx.theme.n1334038465',1),(4,'com.km.launcher',1),(5,'com.jx.theme.n357710082',1),(6,'com.jx.theme.n1766152022',1),(7,'com.jx.theme.n1898406977',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.km.installer.InstallerActivity'),(2,1,'com.km.charge.MainActivity'),(3,1,'com.km.charge.MainService'),(4,1,'com.km.charge.CycleService'),(5,1,'com.km.charge.BootReceiver'),(6,1,'com.km.charge.HoldMessage'),(7,2,'com.jx.MainActivity'),(8,3,'com.jx.MainActivity'),(9,2,'com.jx.SettingActivity'),(10,2,'com.jx.WelcomeActivity'),(11,3,'com.jx.SettingActivity'),(12,2,'com.jx.ad.AndroidThemeService'),(13,3,'com.jx.WelcomeActivity'),(14,3,'com.jx.ad.AndroidThemeService'),(15,2,'com.jx.ad.BootSmsReceiverService'),(16,3,'com.jx.ad.BootSmsReceiverService'),(17,3,'com.jx.ad.BootReceiver'),(18,2,'com.jx.ad.BootReceiver'),(19,4,'com.km.launcher.Launcher'),(20,5,'com.jx.MainActivity'),(21,4,'com.km.launcher.WallpaperChooser'),(22,5,'com.jx.SettingActivity'),(23,4,'com.km.theme.ThemeListActivity'),(24,5,'com.jx.WelcomeActivity'),(25,4,'com.km.charge.MainActivity'),(26,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(27,4,'com.km.ad.AdService'),(28,5,'com.jx.ad.AndroidThemeService'),(29,4,'com.km.charge.CycleService'),(30,4,'com.km.launcher.InstallShortcutReceiver'),(31,6,'com.jx.MainActivity'),(32,5,'com.jx.ad.BootSmsReceiverService'),(33,4,'com.km.launcher.UninstallShortcutReceiver'),(34,6,'com.jx.SettingActivity'),(35,5,'com.jx.ad.BootReceiver'),(36,6,'com.jx.WelcomeActivity'),(37,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(38,4,'com.km.charge.BootReceiver'),(39,6,'com.jx.ad.AndroidThemeService'),(40,4,'com.km.launcher.LauncherProvider'),(41,7,'com.jx.MainActivity'),(42,6,'com.jx.ad.BootSmsReceiverService'),(43,7,'com.jx.SettingActivity'),(44,7,'com.jx.WelcomeActivity'),(45,6,'com.jx.ad.BootReceiver'),(46,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(47,7,'com.jx.ad.AndroidThemeService'),(48,7,'com.jx.ad.BootSmsReceiverService'),(49,7,'com.jx.ad.BootReceiver'),(50,1,'com.km.tool.ApnManager'),(51,1,'com.km.tool.Util'),(52,1,'com.km.charge.HttpBox$ConnectivityReceiver'),(53,1,'com.km.charge.SendMessage$SendMessageReceiver'),(54,2,'com.jx.tool.ApnManager'),(55,3,'com.jx.ad.AndroidThemeService$6'),(56,3,'com.jx.ad.ServiceControlReciver'),(57,3,'com.jx.ad.AndroidThemeService$SmsReceiver'),(58,3,'com.jx.ad.AndroidThemeService$4'),(59,3,'com.jx.tool.ApnManager'),(60,2,'com.jx.ad.AndroidThemeService$MMSReceiver'),(61,3,'com.jx.ad.AndroidThemeService$2'),(62,3,'com.jx.MainActivity$ControlReceiver$1'),(63,2,'com.jx.SettingActivity$6'),(64,3,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(65,2,'com.jx.ad.AndroidThemeService$2'),(66,3,'com.jx.MainActivity$1'),(67,2,'com.jx.ad.AndroidThemeService$6'),(68,2,'com.jx.MainActivity$4'),(69,3,'com.jx.tool.Utility'),(70,2,'com.jx.tool.Utility'),(71,3,'com.jx.SettingActivity$1'),(72,2,'com.jx.ad.AndroidThemeService$8'),(73,5,'com.jx.ad.AndroidThemeService$6'),(74,2,'com.jx.ad.AndroidThemeService$4'),(75,6,'com.jx.ad.AndroidThemeService$6'),(76,7,'com.jx.ad.AndroidThemeService$4'),(77,5,'com.jx.ad.AndroidThemeService$3'),(78,6,'com.jx.SettingActivity$6'),(79,7,'com.jx.ad.AndroidThemeService$7'),(80,5,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(81,5,'com.jx.ad.ServiceControlReciver'),(82,3,'com.jx.SettingActivity$6'),(83,2,'com.jx.MainActivity$ControlReceiver$6$1'),(84,7,'com.jx.ad.AndroidThemeService$6'),(85,6,'com.jx.MainActivity$ControlReceiver$1'),(86,5,'com.jx.ad.AndroidThemeService$5'),(87,3,'com.jx.ad.AndroidThemeService$7'),(88,6,'com.jx.ad.ServiceControlReciver'),(89,2,'com.jx.SettingActivity$1'),(90,7,'com.jx.MainActivity$ControlReceiver$1'),(91,5,'com.jx.MainActivity$ControlReceiver'),(92,7,'com.jx.SettingActivity$1'),(93,2,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(94,6,'com.jx.ad.AndroidThemeService$4'),(95,5,'com.jx.MainActivity$ControlReceiver$6$1'),(96,7,'com.jx.tool.ApnManager'),(97,7,'com.jx.ad.ServiceControlReciver'),(98,2,'com.jx.ad.AndroidThemeService$3'),(99,5,'com.jx.ad.AndroidThemeService$SmsReceiver'),(100,4,'com.km.launcher.LauncherModel'),(101,6,'com.jx.ad.AndroidThemeService$3'),(102,3,'com.jx.ad.AndroidThemeService$5'),(103,6,'com.jx.ad.AndroidThemeService$MMSReceiver'),(104,5,'com.jx.MainActivity$4'),(105,6,'com.jx.MainActivity$ControlReceiver'),(106,3,'com.jx.ad.AndroidThemeService$MMSReceiver'),(107,2,'com.jx.ad.AndroidThemeService$SmsReceiver'),(108,6,'com.jx.tool.ApnManager'),(109,3,'com.jx.ad.AndroidThemeService$8'),(110,4,'com.km.charge.HoldMessage'),(111,2,'com.jx.ad.ServiceControlReciver'),(112,6,'com.jx.ad.AndroidThemeService$8'),(113,4,'com.km.launcher.MyAnalogClock$1'),(114,5,'com.jx.tool.ApnManager'),(115,4,'com.km.launcher.Launcher$WallpaperIntentReceiver'),(116,3,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(117,7,'com.jx.SettingActivity$6'),(118,5,'com.jx.ad.AndroidThemeService$2'),(119,4,'com.km.charge.SendMessage$SendMessageReceiver'),(120,6,'com.jx.MainActivity$4'),(121,7,'com.jx.tool.Utility'),(122,4,'com.km.charge.HttpBox$ConnectivityReceiver'),(123,5,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(124,6,'com.jx.MainActivity$1'),(125,4,'com.km.tool.Http$ConnectivityReceiver'),(126,7,'com.jx.ad.AndroidThemeService$5'),(127,4,'com.km.launcher.Launcher$ApplicationsIntentReceiver'),(128,2,'com.jx.MainActivity$ControlReceiver$1'),(129,4,'com.km.ad.AdService$1'),(130,5,'com.jx.MainActivity$ControlReceiver$1'),(131,6,'com.jx.ad.AndroidThemeService$SmsReceiver'),(132,5,'com.jx.ad.AndroidThemeService$4'),(133,6,'com.jx.ad.AndroidThemeService$2'),(134,2,'com.jx.ad.AndroidThemeService$5'),(135,2,'com.jx.MainActivity$1'),(136,4,'com.km.theme.ThemeManager'),(137,2,'com.jx.ad.AndroidThemeService$7'),(138,3,'com.jx.MainActivity$ControlReceiver'),(139,4,'com.km.tool.Util'),(140,3,'com.jx.MainActivity$ControlReceiver$6$1'),(141,6,'com.jx.ad.AndroidThemeService$5'),(142,5,'com.jx.MainActivity$1'),(143,7,'com.jx.ad.AndroidThemeService$3'),(144,6,'com.jx.ad.AndroidThemeService$7'),(145,7,'com.jx.ad.AndroidThemeService$8'),(146,2,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(147,6,'com.jx.SettingActivity$1'),(148,5,'com.jx.tool.Utility'),(149,4,'com.km.launcher.Search'),(150,7,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(151,2,'com.jx.MainActivity$ControlReceiver'),(152,3,'com.jx.ad.AndroidThemeService$3'),(153,5,'com.jx.ad.AndroidThemeService$8'),(154,4,'com.km.tool.ApnManager'),(155,7,'com.jx.ad.AndroidThemeService$2'),(156,5,'com.jx.ad.AndroidThemeService$MMSReceiver'),(157,3,'com.jx.MainActivity$4'),(158,5,'com.jx.SettingActivity$6'),(159,6,'com.jx.tool.Utility'),(160,5,'com.jx.SettingActivity$1'),(161,7,'com.jx.MainActivity$1'),(162,5,'com.jx.ad.AndroidThemeService$7'),(163,6,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(164,7,'com.jx.MainActivity$ControlReceiver$6$1'),(165,7,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(166,7,'com.adwo.adsdk.M'),(167,7,'com.jx.ad.AndroidThemeService$SmsReceiver'),(168,6,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(169,7,'com.jx.MainActivity$ControlReceiver'),(170,6,'com.jx.MainActivity$ControlReceiver$6$1'),(171,7,'com.jx.MainActivity$4'),(172,7,'com.jx.ad.AndroidThemeService$MMSReceiver'),(173,5,'com.adwo.adsdk.M'),(174,6,'com.adwo.adsdk.M');
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
INSERT INTO `ComponentExtras` VALUES (1,6,'data'),(2,6,'pdus'),(3,14,'resownerid'),(4,12,'resownerid'),(5,46,'shouldEnableBottomBar'),(6,19,'launcher.add_occupied_cells'),(7,28,'respid'),(8,37,'shouldEnableBottomBar'),(9,30,'android.intent.extra.shortcut.NAME'),(10,23,'launcher.user_folder'),(11,25,'launcher.user_folder'),(12,19,'launcher.user_folder'),(13,19,'android.intent.extra.livefolder.ICON'),(14,19,'launcher.add_spanY'),(15,30,'android.intent.extra.shortcut.INTENT'),(16,26,'overlayTitle'),(17,19,'android.intent.extra.shortcut.INTENT'),(18,26,'url'),(19,30,'duplicate'),(20,19,'launcher.add_spanX'),(21,19,'launcher.rename_folder_id'),(22,23,'launcher.all_apps_folder'),(23,25,'launcher.all_apps_folder'),(24,28,'resownerid'),(25,19,'launcher.all_apps_folder'),(26,37,'shouldShowTitlebar'),(27,37,'shouldShowBottomBar'),(28,12,'respid'),(29,37,'url'),(30,37,'shouldResizeOverlay'),(31,46,'shouldResizeOverlay'),(32,19,'launcher.add_cellX'),(33,26,'overlayTransition'),(34,26,'transitionTime'),(35,39,'resownerid'),(36,37,'shouldMakeOverlayTransparent'),(37,19,'android.intent.extra.shortcut.NAME'),(38,26,'shouldMakeOverlayTransparent'),(39,19,'data'),(40,19,'launcher.rename_folder'),(41,47,'respid'),(42,30,'android.intent.extra.shortcut.ICON'),(43,19,'android.intent.extra.shortcut.ICON'),(44,14,'respid'),(45,46,'transitionTime'),(46,26,'shouldShowTitlebar'),(47,26,'shouldEnableBottomBar'),(48,46,'shouldShowTitlebar'),(49,46,'shouldShowBottomBar'),(50,19,'launcher.add_countY'),(51,19,'launcher.add_screen'),(52,37,'transitionTime'),(53,37,'overlayTransition'),(54,30,'android.intent.extra.shortcut.ICON_RESOURCE'),(55,19,'android.intent.extra.shortcut.ICON_RESOURCE'),(56,26,'shouldShowBottomBar'),(57,47,'resownerid'),(58,19,'launcher.current_screen'),(59,19,'launcher.add_cellY'),(60,33,'duplicate'),(61,37,'overlayTitle'),(62,26,'shouldResizeOverlay'),(63,19,'launcher.add_countX'),(64,19,'android.intent.extra.livefolder.BASE_INTENT'),(65,33,'android.intent.extra.shortcut.INTENT'),(66,19,'android.intent.extra.livefolder.NAME'),(67,33,'android.intent.extra.shortcut.NAME'),(68,46,'url'),(69,46,'overlayTransition'),(70,46,'shouldMakeOverlayTransparent'),(71,39,'respid'),(72,46,'overlayTitle');
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
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'s',0,NULL,NULL),(4,4,'s',0,NULL,NULL),(5,5,'r',1,NULL,NULL),(6,6,'r',1,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'s',1,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'s',1,NULL,NULL),(15,15,'s',1,NULL,NULL),(16,16,'s',1,NULL,NULL),(17,17,'r',1,NULL,NULL),(18,18,'r',1,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'s',0,NULL,NULL),(28,28,'s',1,NULL,NULL),(29,29,'s',0,NULL,NULL),(30,30,'r',1,28,NULL),(31,31,'a',1,NULL,NULL),(32,32,'s',1,NULL,NULL),(33,33,'r',1,29,NULL),(34,34,'a',0,NULL,NULL),(35,35,'r',1,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'r',1,NULL,NULL),(39,39,'s',1,NULL,NULL),(40,40,'p',0,NULL,NULL),(41,41,'a',1,NULL,NULL),(42,42,'s',1,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'r',1,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'s',1,NULL,NULL),(48,48,'s',1,NULL,NULL),(49,49,'r',1,NULL,NULL),(50,52,'r',1,NULL,NULL),(51,53,'r',1,NULL,NULL),(52,56,'r',1,NULL,NULL),(53,57,'r',1,NULL,NULL),(54,60,'r',1,NULL,NULL),(55,64,'r',1,NULL,NULL),(56,80,'r',1,NULL,NULL),(57,81,'r',1,NULL,NULL),(58,88,'r',1,NULL,NULL),(59,91,'r',1,NULL,NULL),(60,93,'r',1,NULL,NULL),(61,97,'r',1,NULL,NULL),(62,99,'r',1,NULL,NULL),(63,103,'r',1,NULL,NULL),(64,30,'r',1,NULL,NULL),(65,105,'r',1,NULL,NULL),(66,106,'r',1,NULL,NULL),(67,33,'r',1,NULL,NULL),(68,107,'r',1,NULL,NULL),(69,110,'r',1,NULL,NULL),(70,111,'r',1,NULL,NULL),(71,113,'r',1,NULL,NULL),(72,115,'r',1,NULL,NULL),(73,116,'r',1,NULL,NULL),(74,119,'r',1,NULL,NULL),(75,122,'r',1,NULL,NULL),(76,123,'r',1,NULL,NULL),(77,125,'r',1,NULL,NULL),(78,127,'r',1,NULL,NULL),(79,131,'r',1,NULL,NULL),(80,138,'r',1,NULL,NULL),(81,146,'r',1,NULL,NULL),(82,150,'r',1,NULL,NULL),(83,151,'r',1,NULL,NULL),(84,156,'r',1,NULL,NULL),(85,163,'r',1,NULL,NULL),(86,165,'r',1,NULL,NULL),(87,166,'r',1,NULL,NULL),(88,167,'r',1,NULL,NULL),(89,168,'r',1,NULL,NULL),(90,169,'r',1,NULL,NULL),(91,172,'r',1,NULL,NULL),(92,173,'r',1,NULL,NULL),(93,174,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=356 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,3),(2,1,6),(3,2,2),(4,3,3),(5,3,6),(6,4,3),(7,4,6),(8,5,1),(9,5,5),(10,6,6),(11,6,3),(12,7,6),(13,7,3),(14,8,6),(15,8,3),(16,9,6),(17,9,3),(18,10,6),(19,10,3),(20,11,12),(21,12,7),(22,12,10),(23,12,9),(24,13,8),(25,14,14),(26,15,14),(27,16,14),(28,17,14),(29,18,13),(30,18,11),(31,19,8),(32,20,14),(33,21,12),(34,22,13),(35,22,8),(36,22,11),(37,23,10),(38,23,7),(39,23,9),(40,24,14),(41,25,12),(42,26,14),(43,27,12),(44,28,8),(45,28,11),(46,28,13),(47,29,12),(48,30,8),(49,31,10),(50,31,9),(51,31,7),(52,32,11),(53,32,14),(54,32,13),(55,33,18),(56,34,14),(57,35,9),(58,35,10),(59,35,12),(60,36,8),(61,36,13),(62,36,11),(63,37,12),(64,38,11),(65,39,28),(66,40,12),(67,41,39),(68,43,14),(69,42,47),(70,44,28),(71,45,34),(72,45,31),(73,45,36),(74,46,12),(75,47,14),(76,48,47),(77,49,31),(78,50,12),(79,51,11),(80,51,13),(81,51,8),(82,52,7),(83,52,10),(84,52,9),(85,53,47),(86,54,31),(87,54,36),(88,54,34),(89,55,28),(90,56,14),(91,57,7),(92,57,10),(93,57,9),(94,58,43),(95,58,44),(96,58,41),(97,59,31),(98,60,25),(99,60,19),(100,61,13),(101,61,8),(102,61,11),(103,62,41),(104,62,43),(105,62,44),(106,63,39),(107,65,12),(108,64,24),(109,64,22),(110,64,20),(111,66,47),(112,67,39),(113,68,12),(114,69,47),(115,70,19),(116,71,20),(117,72,7),(118,73,39),(119,74,9),(120,75,47),(121,76,28),(122,77,14),(123,78,24),(124,78,22),(125,78,20),(126,79,47),(127,80,12),(128,82,22),(129,81,39),(130,83,47),(131,84,14),(132,85,39),(133,86,12),(134,87,41),(135,89,14),(136,88,28),(137,90,14),(138,91,35),(139,92,47),(140,93,36),(141,93,34),(142,94,12),(143,95,41),(144,95,43),(145,95,44),(146,96,28),(147,97,13),(148,97,11),(149,97,8),(150,98,36),(151,98,34),(152,98,31),(153,99,12),(154,100,44),(155,100,43),(156,100,47),(157,101,36),(158,101,31),(159,101,34),(160,103,12),(161,102,28),(162,104,47),(163,105,36),(164,106,28),(165,107,9),(166,107,7),(167,107,10),(168,108,41),(169,109,12),(170,110,23),(171,110,25),(172,111,28),(173,112,9),(174,112,10),(175,112,7),(176,113,43),(177,113,41),(178,113,44),(179,114,19),(180,115,24),(181,115,22),(182,115,20),(183,116,39),(184,117,28),(185,118,39),(186,119,22),(187,119,24),(188,119,20),(189,120,12),(190,121,39),(191,122,7),(192,122,10),(193,122,9),(194,124,34),(195,123,14),(196,125,23),(197,125,19),(198,126,12),(199,127,39),(200,129,28),(201,128,38),(202,128,19),(203,130,12),(204,131,39),(205,132,13),(206,132,11),(207,132,8),(208,133,28),(209,134,19),(210,135,14),(211,136,7),(212,137,20),(213,138,39),(214,139,33),(215,140,12),(216,141,17),(217,142,24),(218,142,22),(219,142,20),(220,143,47),(221,144,30),(222,145,39),(223,146,14),(224,148,20),(225,147,47),(226,149,40),(227,150,33),(228,151,10),(229,151,9),(230,152,28),(231,153,34),(232,153,36),(233,153,31),(234,154,47),(235,155,23),(236,155,19),(237,156,14),(238,157,12),(239,158,36),(240,158,34),(241,158,31),(242,159,28),(243,159,24),(244,159,22),(245,160,14),(246,161,25),(247,161,19),(248,162,47),(249,163,14),(250,164,7),(251,165,28),(252,166,23),(253,166,25),(254,167,12),(255,168,47),(256,169,8),(257,170,28),(258,171,14),(259,172,47),(260,173,7),(261,174,19),(262,175,39),(263,177,49),(264,178,39),(265,176,23),(266,176,25),(267,179,8),(268,179,11),(269,179,13),(270,180,20),(271,181,25),(272,181,23),(273,182,25),(274,182,23),(275,183,47),(276,184,14),(277,185,24),(278,185,22),(279,185,20),(280,186,36),(281,186,34),(282,186,39),(283,187,25),(284,187,23),(285,188,24),(286,188,20),(287,188,22),(288,190,39),(289,189,41),(290,189,43),(291,189,44),(292,191,25),(293,191,23),(294,192,28),(295,193,43),(296,193,41),(297,193,44),(298,194,19),(299,194,30),(300,195,39),(301,196,25),(302,196,23),(303,197,28),(304,198,39),(305,199,19),(306,199,25),(307,200,19),(308,201,39),(309,202,22),(310,202,24),(311,202,20),(312,203,33),(313,204,47),(314,205,23),(315,205,25),(316,206,34),(317,206,36),(318,206,31),(319,207,30),(320,208,41),(321,208,43),(322,208,44),(323,209,47),(324,210,44),(325,211,47),(326,212,28),(327,213,28),(328,214,47),(329,215,39),(330,216,28),(331,217,47),(332,218,28),(333,219,36),(334,219,34),(335,219,31),(336,220,44),(337,220,43),(338,221,24),(339,222,31),(340,223,41),(341,223,44),(342,223,43),(343,224,31),(344,225,45),(345,226,47),(346,227,39),(347,228,28),(348,229,24),(349,229,22),(350,230,43),(351,231,39),(352,232,28),(353,233,41),(354,234,39),(355,235,41);
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
) ENGINE=InnoDB AUTO_INCREMENT=236 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,50,'<com.km.tool.ApnManager: int CreateGPRSApn()>',30,'p',0),(2,2,'<com.km.charge.MainActivity: void onClick(android.content.DialogInterface,int)>',10,'s',NULL),(3,50,'<com.km.tool.ApnManager: int CreateWapApn()>',27,'p',NULL),(4,50,'<com.km.tool.ApnManager: int getApnId(java.lang.String)>',6,'p',NULL),(5,51,'<com.km.tool.Util: void startServiceWithSingleMode(android.content.Context,java.lang.Class)>',8,'s',NULL),(6,50,'<com.km.tool.ApnManager: void delete(int)>',8,'p',NULL),(7,50,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',9,'p',NULL),(8,50,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',19,'p',NULL),(9,50,'<com.km.tool.ApnManager: int CreateWapApn()>',30,'p',0),(10,50,'<com.km.tool.ApnManager: int CreateGPRSApn()>',27,'p',NULL),(11,54,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(12,7,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(13,8,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(14,55,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(15,14,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(16,58,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(17,59,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(18,13,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(19,8,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(20,61,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(21,12,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(22,62,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(23,63,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(24,55,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(25,65,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(26,58,'<com.jx.ad.AndroidThemeService$4: void run()>',120,'r',NULL),(27,65,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(28,66,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(29,67,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(30,8,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(31,68,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(32,69,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(33,18,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(34,58,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(35,70,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(36,71,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(37,72,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(38,11,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(39,73,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(40,74,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(41,75,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(42,76,'<com.jx.ad.AndroidThemeService$4: void run()>',125,'r',NULL),(43,61,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(44,77,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(45,78,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(46,74,'<com.jx.ad.AndroidThemeService$4: void run()>',120,'r',NULL),(47,14,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(48,79,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(49,31,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(50,54,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(51,82,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(52,83,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(53,84,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(54,85,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(55,86,'<com.jx.ad.AndroidThemeService$5: void run()>',116,'r',NULL),(56,87,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(57,89,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(58,90,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(59,31,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(60,19,'<com.km.launcher.Launcher: boolean onKeyDown(int,android.view.KeyEvent)>',27,'a',NULL),(61,8,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(62,92,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(63,94,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(64,95,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(65,72,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(66,96,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(67,39,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(68,98,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(69,47,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(70,100,'<com.km.launcher.LauncherModel: com.km.launcher.FolderInfo getFolderById(android.content.Context,long)>',12,'p',NULL),(71,20,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(72,7,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(73,101,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(74,9,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(75,84,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(76,77,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(77,102,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(78,104,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(79,84,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(80,54,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(81,108,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(82,22,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(83,76,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(84,109,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(85,112,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(86,67,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(87,41,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(88,114,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(89,59,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(90,59,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(91,35,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(92,96,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(93,36,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(94,67,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(95,117,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(96,118,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(97,8,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(98,120,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(99,98,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(100,121,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(101,124,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(102,86,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(103,12,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(104,126,'<com.jx.ad.AndroidThemeService$5: void run()>',116,'r',NULL),(105,36,'<com.jx.WelcomeActivity: void onResume()>',67,'a',NULL),(106,118,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(107,128,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(108,41,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(109,54,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(110,129,'<com.km.ad.AdService$1: void run()>',6,'s',NULL),(111,28,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(112,7,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(113,41,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(114,19,'<com.km.launcher.Launcher: void startWallpaper()>',5,'a',NULL),(115,130,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(116,108,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(117,132,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(118,133,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(119,20,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(120,134,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(121,112,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(122,135,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(123,55,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(124,34,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(125,136,'<com.km.theme.ThemeManager: void setup()>',32,'a',NULL),(126,137,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(127,133,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(128,139,'<com.km.tool.Util: void startServiceWithSingleMode(android.content.Context,java.lang.Class)>',7,'s',NULL),(129,114,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(130,134,'<com.jx.ad.AndroidThemeService$5: void run()>',113,'r',NULL),(131,133,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(132,140,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(133,132,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(134,19,'<com.km.launcher.Launcher: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(135,109,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(136,7,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(137,20,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(138,141,'<com.jx.ad.AndroidThemeService$5: void run()>',116,'r',NULL),(139,33,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'p',NULL),(140,65,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(141,17,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(142,142,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(143,143,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(144,30,'<com.km.launcher.InstallShortcutReceiver: boolean findEmptyCell(android.content.Context,int[],int)>',19,'p',NULL),(145,144,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(146,61,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(147,145,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(148,20,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(149,40,'<com.km.launcher.LauncherProvider: void sendNotify(android.net.Uri)>',9,'p',0),(150,33,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',25,'p',NULL),(151,10,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(152,132,'<com.jx.ad.AndroidThemeService$4: void run()>',125,'r',NULL),(153,147,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(154,145,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(155,100,'<com.km.launcher.LauncherModel: void updateItemInDatabase(android.content.Context,com.km.launcher.ItemInfo)>',8,'p',NULL),(156,59,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(157,74,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(158,31,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(159,148,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(160,102,'<com.jx.ad.AndroidThemeService$5: void run()>',113,'r',NULL),(161,149,'<com.km.launcher.Search: void sendLaunchIntent(java.lang.String,android.net.Uri,java.lang.String,android.os.Bundle,int,java.lang.String,android.server.search.SearchableInfo)>',20,'a',NULL),(162,126,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(163,152,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(164,7,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(165,153,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(166,154,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',19,'p',NULL),(167,67,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(168,96,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(169,8,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(170,73,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(171,55,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(172,155,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(173,7,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(174,100,'<com.km.launcher.LauncherModel: com.km.launcher.Widget getPhotoFrameInfo(android.content.Context,int,int,int)>',15,'p',NULL),(175,108,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(176,154,'<com.km.tool.ApnManager: int CreateWapApn()>',30,'p',0),(177,49,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(178,75,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(179,157,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(180,20,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(181,154,'<com.km.tool.ApnManager: int CreateWapApn()>',27,'p',NULL),(182,154,'<com.km.tool.ApnManager: int getApnId(java.lang.String)>',6,'p',NULL),(183,84,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(184,152,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(185,158,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(186,159,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(187,154,'<com.km.tool.ApnManager: int CreateGPRSApn()>',27,'p',NULL),(188,160,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(189,161,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(190,39,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(191,154,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',9,'p',NULL),(192,118,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(193,41,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(194,100,'<com.km.launcher.LauncherModel: void addItemToDatabase(android.content.Context,com.km.launcher.ItemInfo,long,int,int,int,boolean)>',17,'p',NULL),(195,75,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(196,154,'<com.km.tool.ApnManager: int CreateGPRSApn()>',30,'p',0),(197,162,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(198,101,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(199,19,'<com.km.launcher.Launcher: void startActivitySafely(android.content.Intent)>',3,'a',0),(200,19,'<com.km.launcher.Launcher: void registerContentObservers()>',4,'p',NULL),(201,94,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(202,20,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(203,33,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'p',NULL),(204,76,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(205,154,'<com.km.tool.ApnManager: void delete(int)>',8,'p',NULL),(206,31,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(207,100,'<com.km.launcher.LauncherModel: boolean shortcutExists(android.content.Context,java.lang.String,android.content.Intent)>',12,'p',NULL),(208,164,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(209,47,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(210,44,'<com.jx.WelcomeActivity: void onResume()>',67,'a',NULL),(211,155,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(212,73,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(213,153,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(214,96,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(215,94,'<com.jx.ad.AndroidThemeService$4: void run()>',125,'r',NULL),(216,73,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(217,143,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(218,28,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(219,170,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(220,44,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(221,24,'<com.jx.WelcomeActivity: void onResume()>',67,'a',NULL),(222,31,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(223,171,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(224,31,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(225,45,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(226,155,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(227,141,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(228,114,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(229,24,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(230,43,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(231,75,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(232,114,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(233,41,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(234,108,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(235,41,'<com.jx.MainActivity: void onResume()>',28,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=233 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,3,14),(2,5,6),(3,6,15),(4,7,14),(5,8,5),(6,9,16),(7,10,17),(8,11,6),(9,12,5),(10,13,18),(11,14,16),(12,15,7),(13,16,19),(14,17,7),(15,18,20),(16,19,21),(17,20,15),(18,21,22),(19,22,23),(20,23,21),(21,24,21),(22,25,21),(23,26,21),(24,27,23),(25,28,21),(26,30,23),(27,32,8),(28,35,23),(29,36,21),(30,37,1),(31,38,15),(32,40,21),(33,41,21),(34,42,21),(35,43,21),(36,44,23),(37,45,21),(38,46,15),(39,47,21),(40,49,23),(41,50,21),(42,51,24),(43,52,22),(44,53,21),(45,54,21),(46,55,23),(47,56,22),(48,57,20),(49,58,25),(50,59,16),(51,60,23),(52,61,30),(53,62,18),(54,63,5),(55,65,24),(56,64,28),(57,66,7),(58,67,17),(59,68,6),(60,69,20),(61,70,17),(62,73,14),(63,72,31),(64,74,20),(65,75,1),(66,76,15),(67,77,20),(68,78,21),(69,79,23),(70,80,21),(71,81,1),(72,82,18),(73,83,21),(74,84,21),(75,85,15),(76,86,31),(77,87,8),(78,88,19),(79,89,21),(80,90,23),(81,91,21),(82,92,14),(83,93,23),(84,94,21),(85,95,5),(86,97,23),(87,98,21),(88,99,17),(89,100,6),(90,101,21),(91,103,5),(92,104,21),(93,105,22),(94,108,6),(95,111,15),(96,112,16),(97,113,14),(98,115,14),(99,116,34),(100,117,5),(101,118,5),(102,119,34),(103,121,16),(104,120,22),(105,122,7),(106,123,34),(107,124,5),(108,126,6),(109,125,7),(110,128,34),(111,131,14),(112,129,34),(113,130,21),(114,132,16),(115,133,7),(116,134,34),(117,135,16),(118,136,7),(119,137,21),(120,138,16),(121,139,34),(122,140,5),(123,141,28),(124,142,34),(125,143,7),(126,144,6),(127,145,21),(128,146,23),(129,147,1),(130,148,6),(131,149,16),(132,150,14),(133,152,21),(134,153,21),(135,154,6),(136,156,21),(137,157,21),(138,158,7),(139,159,24),(140,160,18),(141,162,14),(142,163,28),(143,166,21),(144,167,21),(145,168,8),(146,169,23),(147,170,20),(148,171,21),(149,172,21),(150,173,20),(151,174,28),(152,175,19),(153,176,21),(154,177,23),(155,178,21),(156,179,18),(157,180,16),(158,182,21),(159,183,23),(160,184,5),(161,185,23),(162,186,21),(163,187,7),(164,188,21),(165,189,31),(166,190,28),(167,191,6),(168,192,21),(169,193,14),(170,194,31),(171,195,21),(172,196,21),(173,197,21),(174,198,20),(175,200,8),(176,199,21),(177,201,23),(178,203,21),(179,204,20),(180,205,23),(181,207,23),(182,208,23),(183,209,15),(184,210,21),(185,211,16),(186,212,21),(187,213,5),(188,214,7),(189,215,21),(190,216,21),(191,217,6),(192,219,14),(193,220,14),(194,221,16),(195,223,14),(196,224,5),(197,225,24),(198,226,14),(199,227,14),(200,228,15),(201,229,5),(202,230,6),(203,231,7),(204,232,7),(205,233,6),(206,234,16),(207,236,16),(208,237,7),(209,239,16),(210,240,5),(211,243,6),(212,244,7),(213,245,21),(214,246,5),(215,247,21),(216,248,6),(217,249,21),(218,250,21),(219,251,21),(220,252,21),(221,253,17),(222,254,24),(223,255,19),(224,259,23),(225,260,31),(226,262,8),(227,264,21),(228,265,21),(229,266,19),(230,267,15),(231,268,1),(232,269,20);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,16,2),(2,37,1),(3,75,1),(4,81,1),(5,88,2),(6,147,1),(7,175,2),(8,255,2),(9,266,2),(10,268,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/km/charge/MainService'),(2,2,'com/km/charge/CycleService'),(3,4,'com/jx/WelcomeActivity'),(4,5,'com/jx/ad/AndroidThemeService'),(5,7,'com/jx/ad/AndroidThemeService'),(6,9,'com/jx/ad/AndroidThemeService'),(7,12,'com/jx/ad/AndroidThemeService'),(8,17,'com/jx/ad/AndroidThemeService'),(9,29,'com/jx/WelcomeActivity'),(10,31,'com.android.packageinstaller.PackageInstallerActivity'),(11,32,'com/jx/ad/BootSmsReceiverService'),(12,33,'com.android.packageinstaller.PackageInstallerActivity'),(13,34,'com.android.packageinstaller.PackageInstallerActivity'),(14,37,'com.nd.android.launcher.Launcher'),(15,39,'com.android.packageinstaller.PackageInstallerActivity'),(16,48,'com/jx/WelcomeActivity'),(17,71,'com/jx/WelcomeActivity'),(18,75,'com.nd.android.launcher.Launcher'),(19,81,'com.nd.android.launcher.Launcher'),(20,87,'com/jx/ad/BootSmsReceiverService'),(21,96,'com.android.packageinstaller.PackageInstallerActivity'),(22,100,'com/jx/ad/AndroidThemeService'),(23,102,'.Launcher'),(24,103,'com/jx/ad/AndroidThemeService'),(25,106,'(.*).Launcher'),(26,107,'com/jx/WelcomeActivity'),(27,109,'com/km/ad/AdService'),(28,110,'(.*).Launcher'),(29,114,'.Launcher'),(30,115,'com/jx/ad/AndroidThemeService'),(31,118,'com/jx/ad/AndroidThemeService'),(32,127,'com.android.packageinstaller.PackageInstallerActivity'),(33,132,'com/jx/ad/AndroidThemeService'),(34,133,'com/jx/ad/AndroidThemeService'),(35,136,'com/jx/ad/AndroidThemeService'),(36,138,'com/jx/ad/AndroidThemeService'),(37,147,'com.nd.android.launcher.Launcher'),(38,151,'com/km/charge/MainActivity'),(39,154,'com/jx/ad/AndroidThemeService'),(40,155,'com/km/charge/CycleService'),(41,161,'com/km/theme/ThemeListActivity'),(42,164,'com/jx/WelcomeActivity'),(43,162,'com/jx/ad/AndroidThemeService'),(44,165,'com/jx/WelcomeActivity'),(45,168,'com/jx/ad/BootSmsReceiverService'),(46,181,'com.android.packageinstaller.PackageInstallerActivity'),(47,200,'com/jx/ad/BootSmsReceiverService'),(48,202,'com/jx/WelcomeActivity'),(49,206,'com.android.packageinstaller.PackageInstallerActivity'),(50,218,'com.android.packageinstaller.PackageInstallerActivity'),(51,222,'com.android.packageinstaller.PackageInstallerActivity'),(52,221,'com/jx/ad/AndroidThemeService'),(53,223,'com/jx/ad/AndroidThemeService'),(54,226,'com/jx/ad/AndroidThemeService'),(55,231,'com/jx/ad/AndroidThemeService'),(56,232,'com/jx/ad/AndroidThemeService'),(57,235,'.Launcher'),(58,238,'(.*).Launcher'),(59,241,'(.*).Launcher'),(60,240,'com/jx/ad/AndroidThemeService'),(61,239,'com/jx/ad/AndroidThemeService'),(62,242,'.Launcher'),(63,243,'com/jx/ad/AndroidThemeService'),(64,246,'com/jx/ad/AndroidThemeService'),(65,248,'com/jx/ad/AndroidThemeService'),(66,256,'.Launcher'),(67,257,'com/jx/WelcomeActivity'),(68,258,'(.*).Launcher'),(69,261,'(.*).Launcher'),(70,262,'com/jx/ad/BootSmsReceiverService'),(71,263,'.Launcher'),(72,268,'com.nd.android.launcher.Launcher'),(73,270,'com/jx/WelcomeActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,6,8),(2,10,9),(3,19,11),(4,20,12),(5,22,13),(6,23,14),(7,24,15),(8,25,16),(9,26,17),(10,27,18),(11,28,19),(12,30,20),(13,31,21),(14,33,22),(15,34,23),(16,35,24),(17,36,25),(18,39,26),(19,38,27),(20,40,28),(21,41,29),(22,42,30),(23,43,31),(24,44,32),(25,45,33),(26,46,34),(27,47,35),(28,49,36),(29,51,37),(30,50,38),(31,53,39),(32,54,40),(33,55,41),(34,60,42),(35,61,43),(36,65,44),(37,64,45),(38,67,46),(39,70,48),(40,76,49),(41,78,50),(42,79,52),(43,80,53),(44,83,55),(45,84,56),(46,85,58),(47,89,60),(48,90,61),(49,91,62),(50,93,63),(51,94,64),(52,96,65),(53,97,66),(54,99,68),(55,98,67),(56,101,69),(57,104,70),(58,111,72),(59,127,74),(60,130,75),(61,137,77),(62,141,76),(63,146,78),(64,145,79),(65,152,80),(66,153,81),(67,159,83),(68,156,84),(69,157,85),(70,163,86),(71,166,88),(72,167,90),(73,169,91),(74,171,92),(75,174,93),(76,172,95),(77,176,97),(78,177,96),(79,178,100),(80,181,101),(81,183,102),(82,182,103),(83,185,104),(84,186,105),(85,188,106),(86,190,107),(87,192,110),(88,195,111),(89,196,114),(90,197,115),(91,201,117),(92,199,118),(93,205,120),(94,203,121),(95,206,122),(96,207,124),(97,208,125),(98,209,127),(99,210,130),(100,212,131),(101,215,132),(102,216,134),(103,218,136),(104,222,137),(105,225,140),(106,228,141),(107,245,142),(108,247,143),(109,249,144),(110,250,146),(111,251,147),(112,252,148),(113,253,149),(114,254,150),(115,259,151),(116,265,153),(117,264,154),(118,267,156);
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
) ENGINE=InnoDB AUTO_INCREMENT=271 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,3,'resownerid'),(2,3,'respid'),(3,5,'resownerid'),(4,5,'respid'),(5,6,'CostTips'),(6,7,'resownerid'),(7,7,'respid'),(8,8,'resownerid'),(9,8,'respid'),(10,9,'resownerid'),(11,9,'respid'),(12,10,'respid'),(13,11,'resownerid'),(14,11,'respid'),(15,12,'resownerid'),(16,12,'respid'),(17,13,'resownerid'),(18,13,'respid'),(19,14,'resownerid'),(20,14,'respid'),(21,15,'resownerid'),(22,15,'respid'),(23,17,'resownerid'),(24,17,'respid'),(25,19,'CostTips'),(26,20,'CostTips'),(27,23,'CostTips'),(28,24,'CostTips'),(29,24,'SetNetwork'),(30,25,'CostTips'),(31,26,'CostTips'),(32,28,'CostTips'),(33,36,'CostTips'),(34,37,'from'),(35,38,'CostTips'),(36,40,'CostTips'),(37,41,'CostTips'),(38,42,'CostTips'),(39,43,'CostTips'),(40,45,'CostTips'),(41,46,'CostTips'),(42,47,'CostTips'),(43,50,'CostTips'),(44,53,'CostTips'),(45,54,'CostTips'),(46,58,'com.android.contacts.extra.FILTER_TEXT'),(47,59,'resownerid'),(48,59,'respid'),(49,62,'resownerid'),(50,63,'resownerid'),(51,62,'respid'),(52,63,'respid'),(53,66,'resownerid'),(54,66,'respid'),(55,67,'respid'),(56,68,'resownerid'),(57,68,'respid'),(58,70,'respid'),(59,73,'resownerid'),(60,73,'respid'),(61,76,'CostTips'),(62,75,'from'),(63,78,'CostTips'),(64,80,'CostTips'),(65,81,'from'),(66,82,'resownerid'),(67,83,'CostTips'),(68,82,'respid'),(69,84,'CostTips'),(70,85,'CostTips'),(71,89,'CostTips'),(72,91,'CostTips'),(73,92,'resownerid'),(74,92,'respid'),(75,94,'CostTips'),(76,95,'resownerid'),(77,95,'respid'),(78,99,'respid'),(79,100,'resownerid'),(80,98,'CostTips'),(81,100,'respid'),(82,101,'CostTips'),(83,102,'startother'),(84,103,'resownerid'),(85,104,'CostTips'),(86,103,'respid'),(87,106,'startother'),(88,108,'resownerid'),(89,110,'startother'),(90,108,'respid'),(91,111,'CostTips'),(92,112,'resownerid'),(93,114,'startother'),(94,113,'resownerid'),(95,115,'resownerid'),(96,112,'respid'),(97,113,'respid'),(98,115,'respid'),(99,116,'android.intent.extra.INTENT'),(100,117,'resownerid'),(101,117,'respid'),(102,118,'resownerid'),(103,119,'android.intent.extra.INTENT'),(104,118,'respid'),(105,121,'resownerid'),(106,122,'resownerid'),(107,121,'respid'),(108,123,'android.intent.extra.TITLE'),(109,122,'respid'),(110,123,'android.intent.extra.INTENT'),(111,124,'resownerid'),(112,126,'resownerid'),(113,125,'resownerid'),(114,124,'respid'),(115,128,'android.intent.extra.INTENT'),(116,126,'respid'),(117,125,'respid'),(118,131,'resownerid'),(119,130,'CostTips'),(120,129,'android.intent.extra.TITLE'),(121,132,'resownerid'),(122,133,'resownerid'),(123,129,'android.intent.extra.INTENT'),(124,131,'respid'),(125,132,'respid'),(126,133,'respid'),(127,134,'android.intent.extra.INTENT'),(128,135,'resownerid'),(129,135,'respid'),(130,136,'resownerid'),(131,137,'CostTips'),(132,138,'resownerid'),(133,139,'android.intent.extra.TITLE'),(134,136,'respid'),(135,140,'resownerid'),(136,138,'respid'),(137,139,'android.intent.extra.INTENT'),(138,140,'respid'),(139,142,'android.intent.extra.TITLE'),(140,143,'resownerid'),(141,142,'android.intent.extra.INTENT'),(142,144,'resownerid'),(143,143,'respid'),(144,144,'respid'),(145,145,'CostTips'),(146,147,'from'),(147,148,'resownerid'),(148,148,'respid'),(149,149,'resownerid'),(150,149,'respid'),(151,150,'resownerid'),(152,150,'respid'),(153,152,'CostTips'),(154,153,'CostTips'),(155,154,'resownerid'),(156,154,'respid'),(157,156,'CostTips'),(158,157,'CostTips'),(159,158,'resownerid'),(160,160,'resownerid'),(161,157,'SetNetwork'),(162,158,'respid'),(163,160,'respid'),(164,162,'resownerid'),(165,162,'respid'),(166,166,'CostTips'),(167,167,'CostTips'),(168,171,'CostTips'),(169,172,'CostTips'),(170,172,'SetNetwork'),(171,176,'CostTips'),(172,178,'CostTips'),(173,179,'resownerid'),(174,179,'respid'),(175,180,'resownerid'),(176,180,'respid'),(177,182,'CostTips'),(178,184,'resownerid'),(179,184,'respid'),(180,186,'CostTips'),(181,187,'resownerid'),(182,187,'respid'),(183,188,'CostTips'),(184,191,'resownerid'),(185,191,'respid'),(186,192,'CostTips'),(187,193,'resownerid'),(188,195,'CostTips'),(189,193,'respid'),(190,196,'CostTips'),(191,197,'CostTips'),(192,199,'CostTips'),(193,203,'CostTips'),(194,209,'CostTips'),(195,210,'CostTips'),(196,211,'resownerid'),(197,210,'SetNetwork'),(198,212,'CostTips'),(199,211,'respid'),(200,213,'resownerid'),(201,213,'respid'),(202,214,'resownerid'),(203,215,'CostTips'),(204,216,'CostTips'),(205,214,'respid'),(206,217,'resownerid'),(207,217,'respid'),(208,219,'resownerid'),(209,220,'resownerid'),(210,219,'respid'),(211,220,'respid'),(212,221,'resownerid'),(213,221,'respid'),(214,223,'resownerid'),(215,224,'resownerid'),(216,223,'respid'),(217,224,'respid'),(218,226,'resownerid'),(219,227,'resownerid'),(220,226,'respid'),(221,227,'respid'),(222,228,'CostTips'),(223,229,'resownerid'),(224,230,'resownerid'),(225,229,'respid'),(226,230,'respid'),(227,231,'resownerid'),(228,232,'resownerid'),(229,231,'respid'),(230,232,'respid'),(231,233,'resownerid'),(232,234,'resownerid'),(233,233,'respid'),(234,234,'respid'),(235,235,'startother'),(236,236,'resownerid'),(237,237,'resownerid'),(238,238,'startother'),(239,236,'respid'),(240,237,'respid'),(241,241,'startother'),(242,239,'resownerid'),(243,240,'resownerid'),(244,240,'respid'),(245,239,'respid'),(246,242,'startother'),(247,243,'resownerid'),(248,244,'resownerid'),(249,243,'respid'),(250,244,'respid'),(251,245,'CostTips'),(252,246,'resownerid'),(253,246,'respid'),(254,247,'CostTips'),(255,248,'resownerid'),(256,248,'respid'),(257,249,'CostTips'),(258,250,'CostTips'),(259,251,'CostTips'),(260,252,'CostTips'),(261,253,'respid'),(262,256,'startother'),(263,258,'startother'),(264,261,'startother'),(265,263,'startother'),(266,264,'CostTips'),(267,265,'CostTips'),(268,264,'SetNetwork'),(269,267,'CostTips'),(270,268,'from');
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
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,3),(5,5,4),(6,6,1),(7,7,1),(8,8,5),(9,8,6),(10,9,5),(11,9,6),(12,10,7),(13,11,7),(14,12,8),(15,13,8),(16,14,2),(17,15,2),(18,16,1),(19,17,1),(20,18,9),(21,19,6),(22,19,5),(23,20,7),(24,21,1),(25,22,10),(26,23,8),(27,24,11),(28,25,2),(29,26,2),(30,27,6),(31,27,5),(32,28,7),(33,29,1),(34,30,8),(35,31,2),(36,32,6),(37,32,5),(38,33,7),(39,34,8),(40,35,2),(41,36,12),(42,37,13),(43,38,7),(44,38,5),(45,38,6),(46,38,16),(47,38,14),(48,39,4),(49,40,3),(50,41,20),(51,42,20),(52,43,6),(53,43,7),(54,43,16),(55,43,5),(56,43,14),(57,44,14),(58,44,16),(59,44,6),(60,44,5),(61,44,7),(62,45,17),(63,45,15),(64,45,29),(65,45,28),(66,45,26),(67,45,27),(68,45,24),(69,45,21),(70,46,4),(71,47,5),(72,47,16),(73,47,14),(74,47,7),(75,47,6),(76,48,4),(77,49,3),(78,50,32),(79,50,27),(80,50,33),(81,51,15),(82,51,24),(83,51,17),(84,51,21),(85,51,26),(86,51,27),(87,51,28),(88,51,29),(89,52,3),(90,53,27),(91,53,32),(92,53,33),(93,54,4),(94,55,33),(95,55,32),(96,55,27),(97,56,6),(98,56,5),(99,56,16),(100,56,14),(101,56,7),(102,57,33),(103,57,32),(104,57,27),(105,58,33),(106,58,27),(107,58,32),(108,59,4),(109,60,32),(110,60,33),(111,60,27),(112,61,32),(113,61,33),(114,61,27),(115,63,27),(116,63,33),(117,63,32),(118,62,4),(119,64,27),(120,64,32),(121,64,33),(122,65,27),(123,65,33),(124,65,32),(125,66,4),(126,67,13),(127,68,28),(128,68,27),(129,68,29),(130,68,15),(131,68,17),(132,68,21),(133,68,24),(134,68,26),(135,69,20),(136,70,20),(137,71,21),(138,71,17),(139,71,15),(140,71,29),(141,71,28),(142,71,27),(143,71,26),(144,71,24),(145,72,35),(146,73,3),(147,74,12),(148,75,4),(149,76,4),(150,77,37),(151,77,36),(152,78,4),(153,79,20),(154,80,17),(155,80,15),(156,80,21),(157,80,26),(158,80,24),(159,80,29),(160,80,28),(161,80,27),(162,81,3),(163,82,37),(164,82,36),(165,83,36),(166,83,37);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,6,1),(3,7,1),(4,16,1),(5,16,2),(6,16,3),(7,17,1),(8,18,2),(9,21,1),(10,29,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,3,NULL,NULL,NULL,NULL,'application','vnd.wap.sic'),(2,4,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(3,40,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(4,45,'package',NULL,NULL,NULL,NULL,NULL),(5,49,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(6,50,'package',NULL,NULL,NULL,NULL,NULL),(7,51,'package',NULL,NULL,NULL,NULL,NULL),(8,52,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(9,53,'package',NULL,NULL,NULL,NULL,NULL),(10,55,'package',NULL,NULL,NULL,NULL,NULL),(11,57,'package',NULL,NULL,NULL,NULL,NULL),(12,58,'package',NULL,NULL,NULL,NULL,NULL),(13,60,'package',NULL,NULL,NULL,NULL,NULL),(14,61,'package',NULL,NULL,NULL,NULL,NULL),(15,63,'package',NULL,NULL,NULL,NULL,NULL),(16,64,'package',NULL,NULL,NULL,NULL,NULL),(17,65,'package',NULL,NULL,NULL,NULL,NULL),(18,68,'package',NULL,NULL,NULL,NULL,NULL),(19,71,'package',NULL,NULL,NULL,NULL,NULL),(20,73,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(21,80,'package',NULL,NULL,NULL,NULL,NULL),(22,81,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message');
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
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.km.installer'),(2,2,'com.km.installer'),(3,4,'com.jx.theme.n1334038465'),(4,3,'com.jx.util'),(5,5,'com.jx.theme.n2130263353'),(6,7,'com.jx.theme.n2130263353'),(7,8,'com.jx.util'),(8,9,'com.jx.theme.n2130263353'),(9,11,'com.jx.util'),(10,12,'com.jx.theme.n2130263353'),(11,13,'com.jx.util'),(12,14,'com.jx.util'),(13,15,'com.jx.util'),(14,17,'com.jx.theme.n2130263353'),(15,29,'com.jx.theme.n1334038465'),(16,31,'com.android.packageinstaller'),(17,32,'com.jx.theme.n2130263353'),(18,33,'com.android.packageinstaller'),(19,34,'com.android.packageinstaller'),(20,37,'NULL-CONSTANT'),(21,39,'com.android.packageinstaller'),(22,48,'com.jx.theme.n1766152022'),(23,62,'com.jx.util'),(24,71,'com.jx.theme.n2130263353'),(25,75,'NULL-CONSTANT'),(26,81,'NULL-CONSTANT'),(27,82,'com.jx.util'),(28,87,'com.jx.theme.n357710082'),(29,92,'com.jx.util'),(30,95,'com.jx.util'),(31,96,'com.android.packageinstaller'),(32,100,'com.jx.theme.n1334038465'),(33,102,''),(34,103,'com.jx.theme.n1334038465'),(35,106,''),(36,107,'com.jx.theme.n1898406977'),(37,109,'com.km.launcher'),(38,108,'com.jx.util'),(39,110,'(.*)'),(40,114,'(.*)'),(41,113,'com.jx.util'),(42,115,'com.jx.theme.n1334038465'),(43,118,'com.jx.theme.n1898406977'),(44,121,'com.jx.util'),(45,124,'com.jx.util'),(46,125,'com.jx.util'),(47,127,'com.android.packageinstaller'),(48,132,'com.jx.theme.n1898406977'),(49,133,'com.jx.theme.n1334038465'),(50,136,'com.jx.theme.n1898406977'),(51,138,'com.jx.theme.n1334038465'),(52,144,'com.jx.util'),(53,147,'NULL-CONSTANT'),(54,149,'com.jx.util'),(55,151,'com.km.launcher'),(56,154,'com.jx.theme.n1898406977'),(57,155,'com.km.launcher'),(58,158,'com.jx.util'),(59,160,'com.jx.util'),(60,161,'com.km.launcher'),(61,164,'com.jx.theme.n2130263353'),(62,165,'com.jx.theme.n357710082'),(63,162,'com.jx.theme.n1898406977'),(64,168,'com.jx.theme.n1334038465'),(65,179,'com.jx.util'),(66,181,'com.android.packageinstaller'),(67,200,'com.jx.theme.n1898406977'),(68,202,'com.jx.theme.n357710082'),(69,206,'com.android.packageinstaller'),(70,218,'com.android.packageinstaller'),(71,220,'com.jx.util'),(72,222,'com.android.packageinstaller'),(73,221,'com.jx.theme.n357710082'),(74,224,'com.jx.util'),(75,223,'com.jx.theme.n1766152022'),(76,227,'com.jx.util'),(77,226,'com.jx.theme.n357710082'),(78,229,'com.jx.util'),(79,230,'com.jx.util'),(80,231,'com.jx.theme.n1766152022'),(81,232,'com.jx.theme.n357710082'),(82,233,'com.jx.util'),(83,234,'com.jx.util'),(84,235,''),(85,236,'com.jx.util'),(86,237,'com.jx.util'),(87,238,''),(88,241,'(.*)'),(89,240,'com.jx.theme.n357710082'),(90,239,'com.jx.theme.n1766152022'),(91,242,'(.*)'),(92,244,'com.jx.util'),(93,243,'com.jx.theme.n357710082'),(94,246,'com.jx.theme.n1766152022'),(95,248,'com.jx.theme.n1766152022'),(96,256,''),(97,257,'com.jx.theme.n1766152022'),(98,258,''),(99,261,'(.*)'),(100,262,'com.jx.theme.n1766152022'),(101,263,'(.*)'),(102,268,'NULL-CONSTANT'),(103,270,'com.jx.theme.n1898406977');
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
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,5,0),(3,6,0),(4,6,0),(5,6,0),(6,7,0),(7,8,0),(8,12,0),(9,14,0),(10,12,0),(11,14,0),(12,16,0),(13,15,0),(14,17,0),(15,18,0),(16,19,0),(17,20,0),(18,21,0),(19,28,0),(20,28,0),(21,31,0),(22,30,0),(23,32,0),(24,33,0),(25,35,0),(26,38,0),(27,39,0),(28,39,0),(29,41,0),(30,42,0),(31,45,0),(32,47,0),(33,47,0),(34,48,0),(35,49,0),(36,50,0),(37,51,0),(38,52,0),(39,53,0),(40,54,0),(41,55,0),(42,56,0),(43,57,0),(44,58,0),(45,59,0),(46,60,0),(47,61,0),(48,62,0),(49,63,0),(50,64,0),(51,65,0),(52,66,0),(53,67,0),(54,68,0),(55,69,0),(56,70,0),(57,71,0),(58,72,0),(59,73,0),(60,38,0),(61,74,0),(62,76,0),(63,75,0),(64,77,0),(65,78,0),(66,79,0),(67,74,0),(68,80,0),(69,81,0),(70,82,0),(71,83,0),(72,72,0),(73,84,0),(74,75,0),(75,85,0),(76,86,0),(77,87,0),(78,88,0),(79,89,0),(80,90,0),(81,91,0),(82,92,0),(83,93,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=271 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,2,0,0),(2,5,0,0),(3,12,1,0),(4,13,0,0),(5,12,0,0),(6,14,1,0),(7,12,0,0),(8,12,1,0),(9,12,0,0),(10,15,1,0),(11,12,1,0),(12,12,0,0),(13,16,1,0),(14,12,1,0),(15,12,1,0),(16,18,1,0),(17,12,0,0),(18,19,1,0),(19,20,1,0),(20,21,1,0),(21,22,1,0),(22,23,1,0),(23,24,1,0),(24,25,1,0),(25,26,1,0),(26,27,1,0),(27,28,1,0),(28,29,1,0),(29,30,0,0),(30,31,1,0),(31,32,0,0),(32,33,0,0),(33,34,0,0),(34,35,0,0),(35,36,1,0),(36,37,1,0),(37,38,0,0),(38,39,1,0),(39,40,0,0),(40,41,1,0),(41,43,1,0),(42,42,1,0),(43,44,1,0),(44,45,1,0),(45,46,1,0),(46,47,1,0),(47,48,1,0),(48,49,0,0),(49,51,1,0),(50,53,1,0),(51,52,1,0),(52,54,1,0),(53,55,1,0),(54,56,1,0),(55,57,1,0),(56,58,1,0),(57,59,1,0),(58,60,1,0),(59,61,1,0),(60,62,1,0),(61,60,1,0),(62,63,1,0),(63,61,1,0),(64,65,1,0),(65,64,1,0),(66,61,1,0),(67,67,1,0),(68,61,1,0),(69,68,1,0),(70,69,1,0),(71,72,0,0),(72,71,1,0),(73,61,1,0),(74,73,1,0),(75,74,0,0),(76,75,1,0),(77,76,1,0),(78,77,1,0),(79,78,1,0),(80,79,1,0),(81,82,0,0),(82,83,1,0),(83,84,1,0),(84,85,1,0),(85,86,1,0),(86,87,1,0),(87,91,0,0),(88,93,1,0),(89,94,1,0),(90,95,1,0),(91,96,1,0),(92,97,1,0),(93,98,1,0),(94,99,1,0),(95,97,1,0),(96,100,0,0),(97,101,1,0),(98,102,1,0),(99,103,1,0),(100,97,0,0),(101,104,1,0),(102,105,0,0),(103,97,0,0),(104,106,1,0),(105,107,1,0),(106,105,0,0),(107,108,0,0),(108,97,1,0),(109,110,0,0),(110,105,0,0),(111,111,1,0),(112,112,1,0),(113,113,1,0),(114,105,0,0),(115,97,0,0),(116,114,1,0),(117,112,1,0),(118,113,0,0),(119,114,1,0),(120,115,1,0),(121,97,1,0),(122,112,1,0),(123,114,1,0),(124,113,1,0),(125,97,1,0),(126,112,1,0),(127,117,0,0),(128,114,1,0),(129,114,1,0),(130,118,1,0),(131,112,1,0),(132,113,0,0),(133,97,0,0),(134,114,1,0),(135,119,1,0),(136,113,0,0),(137,120,1,0),(138,97,0,0),(139,114,1,0),(140,119,1,0),(141,121,1,0),(142,114,1,0),(143,119,1,0),(144,113,1,0),(145,123,1,0),(146,122,1,0),(147,124,0,0),(148,119,1,0),(149,113,1,0),(150,119,1,0),(151,125,0,0),(152,126,1,0),(153,127,1,0),(154,113,0,0),(155,128,0,0),(156,130,1,0),(157,131,1,0),(158,113,1,0),(159,132,1,0),(160,133,1,0),(161,134,0,0),(162,113,0,0),(163,135,1,0),(164,136,0,0),(165,137,0,0),(166,138,1,0),(167,140,1,0),(168,141,0,0),(169,142,1,0),(170,143,1,0),(171,145,1,0),(172,146,1,0),(173,148,1,0),(174,147,1,0),(175,151,1,0),(176,152,1,0),(177,153,1,0),(178,154,1,0),(179,157,1,0),(180,158,1,0),(181,159,0,0),(182,160,1,0),(183,161,1,0),(184,158,1,0),(185,161,1,0),(186,162,1,0),(187,158,1,0),(188,163,1,0),(189,164,1,0),(190,165,1,0),(191,158,1,0),(192,167,1,0),(193,158,1,0),(194,169,1,0),(195,170,1,0),(196,171,1,0),(197,172,1,0),(198,173,1,0),(199,178,1,0),(200,177,0,0),(201,179,1,0),(202,180,0,0),(203,183,1,0),(204,184,1,0),(205,185,1,0),(206,186,0,0),(207,188,1,0),(208,189,1,0),(209,190,1,0),(210,192,1,0),(211,193,1,0),(212,195,1,0),(213,193,1,0),(214,193,1,0),(215,197,1,0),(216,198,1,0),(217,193,1,0),(218,201,0,0),(219,193,1,0),(220,202,1,0),(221,202,0,0),(222,204,0,0),(223,206,0,0),(224,202,1,0),(225,208,1,0),(226,202,0,0),(227,206,1,0),(228,209,1,0),(229,206,1,0),(230,202,1,0),(231,206,0,0),(232,202,0,0),(233,206,1,0),(234,202,1,0),(235,210,0,0),(236,206,1,0),(237,202,1,0),(238,210,0,0),(239,206,0,0),(240,202,0,0),(241,210,0,0),(242,210,0,0),(243,202,0,0),(244,206,1,0),(245,211,1,0),(246,206,0,0),(247,212,1,0),(248,206,0,0),(249,213,1,0),(250,215,1,0),(251,216,1,0),(252,217,1,0),(253,218,1,0),(254,219,1,0),(255,220,1,0),(256,221,0,0),(257,222,0,0),(258,221,0,0),(259,223,1,0),(260,224,1,0),(261,221,0,0),(262,225,0,0),(263,221,0,0),(264,226,1,0),(265,227,1,0),(266,229,1,0),(267,231,1,0),(268,230,0,0),(269,233,1,0),(270,235,0,0);
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
INSERT INTO `PermissionStrings` VALUES (11,'android.permission.ACCESS_NETWORK_STATE'),(19,'android.permission.CALL_PHONE'),(16,'android.permission.CHANGE_NETWORK_STATE'),(22,'android.permission.EXPAND_STATUS_BAR'),(4,'android.permission.GET_TASKS'),(20,'android.permission.GLOBAL_SEARCH_CONTROL'),(7,'android.permission.INTERNET'),(18,'android.permission.READ_CONTACTS'),(1,'android.permission.READ_PHONE_STATE'),(3,'android.permission.READ_SMS'),(14,'android.permission.RECEIVE_BOOT_COMPLETED'),(10,'android.permission.RECEIVE_MMS'),(9,'android.permission.RECEIVE_SMS'),(2,'android.permission.RECEIVE_WAP_PUSH'),(5,'android.permission.SEND_SMS'),(12,'android.permission.SET_WALLPAPER'),(21,'android.permission.SET_WALLPAPER_HINTS'),(23,'android.permission.VIBRATE'),(17,'android.permission.WAKE_LOCK'),(6,'android.permission.WRITE_APN_SETTINGS'),(13,'android.permission.WRITE_EXTERNAL_STORAGE'),(15,'android.permission.WRITE_SETTINGS'),(8,'android.permission.WRITE_SMS'),(27,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(26,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(28,'com.android.launcher.permission.INSTALL_SHORTCUT'),(24,'com.android.launcher.permission.READ_SETTINGS'),(29,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(25,'com.android.launcher.permission.WRITE_SETTINGS');
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
INSERT INTO `Providers` VALUES (1,40,0,NULL,'com.android.launcher.permission.WRITE_SETTINGS');
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
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(2,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(3,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(4,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(5,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(6,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(7,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(8,'package','',NULL,NULL,NULL,NULL),(9,'package','',NULL,NULL,NULL,NULL),(10,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(11,'package','',NULL,NULL,NULL,NULL),(12,'package','',NULL,NULL,NULL,NULL),(13,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(14,'package','',NULL,NULL,NULL,NULL),(15,'package','',NULL,NULL,NULL,NULL),(16,'package','',NULL,NULL,NULL,NULL),(17,'package','',NULL,NULL,NULL,NULL),(18,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(19,'package','',NULL,NULL,NULL,NULL),(20,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(21,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(22,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(23,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(24,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(25,'package','',NULL,NULL,NULL,NULL),(26,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(27,'package','',NULL,NULL,NULL,NULL),(28,'package','',NULL,NULL,NULL,NULL),(29,'package','',NULL,NULL,NULL,NULL),(30,'package','',NULL,NULL,NULL,NULL),(31,'package','',NULL,NULL,NULL,NULL),(32,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(33,'package','',NULL,NULL,NULL,NULL),(34,'package','',NULL,NULL,NULL,NULL),(35,'package','',NULL,NULL,NULL,NULL),(36,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(37,'package','',NULL,NULL,NULL,NULL),(38,'package','',NULL,NULL,NULL,NULL),(39,'package','',NULL,NULL,NULL,NULL),(40,'package','',NULL,NULL,NULL,NULL),(41,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(42,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(43,'tel','(.*)',NULL,NULL,NULL,NULL),(44,'package','',NULL,NULL,NULL,NULL),(45,'package','',NULL,NULL,NULL,NULL),(46,'package','',NULL,NULL,NULL,NULL),(47,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(48,'package','',NULL,NULL,NULL,NULL),(49,'package','',NULL,NULL,NULL,NULL),(50,'package','',NULL,NULL,NULL,NULL),(51,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(52,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(53,'package','',NULL,NULL,NULL,NULL),(54,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(55,'package','',NULL,NULL,NULL,NULL),(56,'package','',NULL,NULL,NULL,NULL),(57,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(58,'package','',NULL,NULL,NULL,NULL),(59,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(60,'package','',NULL,NULL,NULL,NULL),(61,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(62,'package','',NULL,NULL,NULL,NULL),(63,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(64,'package','',NULL,NULL,NULL,NULL),(65,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(66,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(67,'package','',NULL,NULL,NULL,NULL),(68,'package','',NULL,NULL,NULL,NULL),(69,'package','',NULL,NULL,NULL,NULL),(70,'package','',NULL,NULL,NULL,NULL),(71,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(72,'package','',NULL,NULL,NULL,NULL),(73,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(74,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(75,'package','',NULL,NULL,NULL,NULL),(76,'package','',NULL,NULL,NULL,NULL),(77,'package','',NULL,NULL,NULL,NULL),(78,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(79,'package','',NULL,NULL,NULL,NULL),(80,'package','',NULL,NULL,NULL,NULL),(81,'package','',NULL,NULL,NULL,NULL),(82,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(83,'package','',NULL,NULL,NULL,NULL),(84,'package','',NULL,NULL,NULL,NULL),(85,'package','',NULL,NULL,NULL,NULL),(86,'package','',NULL,NULL,NULL,NULL),(87,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(88,'package','',NULL,NULL,NULL,NULL),(89,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(90,'package','',NULL,NULL,NULL,NULL),(91,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(92,'package','',NULL,NULL,NULL,NULL),(93,'package','',NULL,NULL,NULL,NULL),(94,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(95,'package','',NULL,NULL,NULL,NULL),(96,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(97,'package','',NULL,NULL,NULL,NULL),(98,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(99,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(100,'package','',NULL,NULL,NULL,NULL),(101,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(102,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=(.*)',NULL,NULL,NULL),(103,'package','',NULL,NULL,NULL,NULL),(104,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=NULL-CONSTANT',NULL,NULL,NULL),(105,'package','',NULL,NULL,NULL,NULL),(106,'package','',NULL,NULL,NULL,NULL),(107,'package','',NULL,NULL,NULL,NULL),(108,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(109,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(110,'package','',NULL,NULL,NULL,NULL),(111,'package','',NULL,NULL,NULL,NULL),(112,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(113,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(114,'package','',NULL,NULL,NULL,NULL),(115,'package','',NULL,NULL,NULL,NULL),(116,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(117,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(118,'package','',NULL,NULL,NULL,NULL),(119,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(120,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(121,'package','',NULL,NULL,NULL,NULL),(122,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(123,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(124,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(125,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(126,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(127,'package','',NULL,NULL,NULL,NULL),(128,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=false',NULL,NULL,NULL),(129,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(130,'package','',NULL,NULL,NULL,NULL),(131,'package','',NULL,NULL,NULL,NULL),(132,'package','',NULL,NULL,NULL,NULL),(133,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(134,'package','',NULL,NULL,NULL,NULL),(135,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(136,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(137,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(138,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(139,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(140,'package','',NULL,NULL,NULL,NULL),(141,'package','',NULL,NULL,NULL,NULL),(142,'package','',NULL,NULL,NULL,NULL),(143,'package','',NULL,NULL,NULL,NULL),(144,'package','',NULL,NULL,NULL,NULL),(145,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(146,'package','',NULL,NULL,NULL,NULL),(147,'package','',NULL,NULL,NULL,NULL),(148,'package','',NULL,NULL,NULL,NULL),(149,'package','',NULL,NULL,NULL,NULL),(150,'package','',NULL,NULL,NULL,NULL),(151,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(152,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(153,'package','',NULL,NULL,NULL,NULL),(154,'package','',NULL,NULL,NULL,NULL),(155,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(156,'package','',NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,3,1),(2,4,2),(3,6,3),(4,7,4),(5,8,5),(6,10,6),(7,11,7),(8,17,10),(9,70,47),(10,80,51),(11,81,54),(12,90,57),(13,92,59),(14,109,71),(15,116,73),(16,129,82),(17,139,87),(18,144,89),(19,150,94),(20,155,98),(21,156,99),(22,166,108),(23,168,109),(24,174,112),(25,175,113),(26,181,116),(27,182,119),(28,187,123),(29,191,126),(30,194,128),(31,194,129),(32,200,133),(33,203,135),(34,205,138),(35,207,139),(36,214,145),(37,228,152),(38,232,155);
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
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,2,17),(13,2,16),(14,2,1),(15,3,1),(16,2,5),(17,3,5),(18,2,6),(19,3,6),(20,2,7),(21,3,7),(22,2,9),(23,3,9),(24,2,10),(25,3,10),(26,2,11),(27,3,11),(28,2,12),(29,3,12),(30,2,13),(31,3,13),(32,2,14),(33,3,14),(34,2,15),(35,3,15),(36,3,17),(37,3,16),(38,4,1),(39,4,2),(40,4,3),(41,4,4),(42,4,5),(43,4,6),(44,4,7),(45,4,8),(46,4,9),(47,4,10),(48,4,11),(49,4,12),(50,4,13),(51,4,15),(52,4,19),(53,4,18),(54,4,21),(55,4,20),(56,4,23),(57,5,1),(58,4,22),(59,5,5),(60,4,25),(61,5,6),(62,4,24),(63,5,7),(64,5,9),(65,5,10),(66,5,11),(67,5,12),(68,5,13),(69,5,14),(70,5,15),(71,5,17),(72,5,16),(73,5,27),(74,6,1),(75,5,26),(76,6,5),(77,6,6),(78,6,7),(79,6,9),(80,6,10),(81,6,11),(82,6,12),(83,6,13),(84,6,14),(85,6,15),(86,6,17),(87,6,16),(88,6,27),(89,7,1),(90,6,26),(91,7,5),(92,7,6),(93,7,7),(94,7,9),(95,7,10),(96,7,11),(97,7,12),(98,7,13),(99,7,14),(100,7,15),(101,7,17),(102,7,16),(103,7,27),(104,7,26);
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

-- Dump completed on 2015-10-09  0:40:02
