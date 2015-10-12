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
) ENGINE=InnoDB AUTO_INCREMENT=4278 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,107,10,2,NULL),(2,107,13,2,NULL),(3,107,24,2,NULL),(4,107,36,2,NULL),(5,107,44,2,NULL),(6,118,12,2,NULL),(7,118,14,2,NULL),(8,118,28,2,NULL),(9,118,39,2,NULL),(10,118,47,2,NULL),(11,132,12,2,NULL),(12,132,14,2,NULL),(13,132,28,2,NULL),(14,132,39,2,NULL),(15,132,47,2,NULL),(16,136,12,2,NULL),(17,136,14,2,NULL),(18,136,28,2,NULL),(19,136,39,2,NULL),(20,136,47,2,NULL),(21,154,12,2,NULL),(22,154,14,2,NULL),(23,154,28,2,NULL),(24,154,39,2,NULL),(25,154,47,2,NULL),(26,162,12,2,NULL),(27,162,14,2,NULL),(28,162,28,2,NULL),(29,162,39,2,NULL),(30,162,47,2,NULL),(31,270,10,2,NULL),(32,270,13,2,NULL),(33,270,24,2,NULL),(34,270,36,2,NULL),(35,270,44,2,NULL),(36,86,1,2,NULL),(37,113,1,2,NULL),(38,124,1,2,NULL),(39,144,1,2,NULL),(40,149,1,2,NULL),(41,158,1,2,NULL),(42,211,1,2,NULL),(43,213,1,2,NULL),(44,214,1,2,NULL),(45,217,1,2,NULL),(46,219,1,2,NULL),(47,269,1,2,NULL),(48,86,5,2,NULL),(49,113,5,2,NULL),(50,124,5,2,NULL),(51,144,5,2,NULL),(52,149,5,2,NULL),(53,158,5,2,NULL),(54,211,5,2,NULL),(55,213,5,2,NULL),(56,214,5,2,NULL),(57,217,5,2,NULL),(58,219,5,2,NULL),(59,269,5,2,NULL),(60,86,6,2,NULL),(61,113,6,2,NULL),(62,124,6,2,NULL),(63,144,6,2,NULL),(64,149,6,2,NULL),(65,158,6,2,NULL),(66,211,6,2,NULL),(67,213,6,2,NULL),(68,214,6,2,NULL),(69,217,6,2,NULL),(70,219,6,2,NULL),(71,269,6,2,NULL),(72,86,50,2,NULL),(73,113,50,2,NULL),(74,124,50,2,NULL),(75,144,50,2,NULL),(76,149,50,2,NULL),(77,158,50,2,NULL),(78,211,50,2,NULL),(79,213,50,2,NULL),(80,214,50,2,NULL),(81,217,50,2,NULL),(82,219,50,2,NULL),(83,269,50,2,NULL),(84,86,51,2,NULL),(85,113,51,2,NULL),(86,124,51,2,NULL),(87,144,51,2,NULL),(88,149,51,2,NULL),(89,158,51,2,NULL),(90,211,51,2,NULL),(91,213,51,2,NULL),(92,214,51,2,NULL),(93,217,51,2,NULL),(94,219,51,2,NULL),(95,269,51,2,NULL),(96,86,7,2,NULL),(97,113,7,2,NULL),(98,124,7,2,NULL),(99,144,7,2,NULL),(100,149,7,2,NULL),(101,158,7,2,NULL),(102,211,7,2,NULL),(103,213,7,2,NULL),(104,214,7,2,NULL),(105,217,7,2,NULL),(106,219,7,2,NULL),(107,269,7,2,NULL),(108,3,41,2,NULL),(109,8,41,2,NULL),(110,11,41,2,NULL),(111,14,41,2,NULL),(112,15,41,2,NULL),(113,112,41,2,NULL),(114,117,41,2,NULL),(115,122,41,2,NULL),(116,126,41,2,NULL),(117,131,41,2,NULL),(118,189,41,2,NULL),(119,198,41,2,NULL),(120,175,41,2,NULL),(121,86,12,2,NULL),(122,113,12,2,NULL),(123,124,12,2,NULL),(124,144,12,2,NULL),(125,149,12,2,NULL),(126,158,12,2,NULL),(127,211,12,2,NULL),(128,213,12,2,NULL),(129,214,12,2,NULL),(130,217,12,2,NULL),(131,219,12,2,NULL),(132,269,12,2,NULL),(133,86,15,2,NULL),(134,113,15,2,NULL),(135,124,15,2,NULL),(136,144,15,2,NULL),(137,149,15,2,NULL),(138,158,15,2,NULL),(139,211,15,2,NULL),(140,213,15,2,NULL),(141,214,15,2,NULL),(142,217,15,2,NULL),(143,219,15,2,NULL),(144,269,15,2,NULL),(145,86,18,2,NULL),(146,113,18,2,NULL),(147,124,18,2,NULL),(148,144,18,2,NULL),(149,149,18,2,NULL),(150,158,18,2,NULL),(151,211,18,2,NULL),(152,213,18,2,NULL),(153,214,18,2,NULL),(154,217,18,2,NULL),(155,219,18,2,NULL),(156,269,18,2,NULL),(157,86,60,2,NULL),(158,113,60,2,NULL),(159,124,60,2,NULL),(160,5,12,2,NULL),(161,144,60,2,NULL),(162,149,60,2,NULL),(163,5,14,2,NULL),(164,158,60,2,NULL),(165,211,60,2,NULL),(166,5,28,2,NULL),(167,213,60,2,NULL),(168,214,60,2,NULL),(169,5,39,2,NULL),(170,217,60,2,NULL),(171,219,60,2,NULL),(172,5,47,2,NULL),(173,269,60,2,NULL),(174,7,12,2,NULL),(175,86,68,2,NULL),(176,7,14,2,NULL),(177,113,68,2,NULL),(178,7,28,2,NULL),(179,124,68,2,NULL),(180,7,39,2,NULL),(181,144,68,2,NULL),(182,7,47,2,NULL),(183,149,68,2,NULL),(184,9,12,2,NULL),(185,158,68,2,NULL),(186,9,14,2,NULL),(187,211,68,2,NULL),(188,9,28,2,NULL),(189,213,68,2,NULL),(190,9,39,2,NULL),(191,214,68,2,NULL),(192,9,47,2,NULL),(193,217,68,2,NULL),(194,12,12,2,NULL),(195,219,68,2,NULL),(196,12,14,2,NULL),(197,269,68,2,NULL),(198,12,28,2,NULL),(199,86,70,2,NULL),(200,12,39,2,NULL),(201,113,70,2,NULL),(202,12,47,2,NULL),(203,124,70,2,NULL),(204,17,12,2,NULL),(205,144,70,2,NULL),(206,17,14,2,NULL),(207,149,70,2,NULL),(208,17,28,2,NULL),(209,158,70,2,NULL),(210,17,39,2,NULL),(211,211,70,2,NULL),(212,17,47,2,NULL),(213,213,70,2,NULL),(214,71,10,2,NULL),(215,214,70,2,NULL),(216,71,13,2,NULL),(217,217,70,2,NULL),(218,71,24,2,NULL),(219,219,70,2,NULL),(220,71,36,2,NULL),(221,269,70,2,NULL),(222,71,44,2,NULL),(223,86,81,2,NULL),(224,164,10,2,NULL),(225,113,81,2,NULL),(226,164,13,2,NULL),(227,124,81,2,NULL),(228,164,24,2,NULL),(229,144,81,2,NULL),(230,164,36,2,NULL),(231,149,81,2,NULL),(232,164,44,2,NULL),(233,158,81,2,NULL),(234,3,1,2,NULL),(235,211,81,2,NULL),(236,8,1,2,NULL),(237,213,81,2,NULL),(238,11,1,2,NULL),(239,214,81,2,NULL),(240,14,1,2,NULL),(241,217,81,2,NULL),(242,15,1,2,NULL),(243,219,81,2,NULL),(244,112,1,2,NULL),(245,269,81,2,NULL),(246,117,1,2,NULL),(247,86,8,2,NULL),(248,122,1,2,NULL),(249,113,8,2,NULL),(250,126,1,2,NULL),(251,124,8,2,NULL),(252,131,1,2,NULL),(253,144,8,2,NULL),(254,189,1,2,NULL),(255,149,8,2,NULL),(256,198,1,2,NULL),(257,158,8,2,NULL),(258,3,5,2,NULL),(259,211,8,2,NULL),(260,8,5,2,NULL),(261,213,8,2,NULL),(262,11,5,2,NULL),(263,214,8,2,NULL),(264,14,5,2,NULL),(265,217,8,2,NULL),(266,15,5,2,NULL),(267,219,8,2,NULL),(268,112,5,2,NULL),(269,269,8,2,NULL),(270,117,5,2,NULL),(271,18,41,2,NULL),(272,122,5,2,NULL),(273,59,41,2,NULL),(274,126,5,2,NULL),(275,63,41,2,NULL),(276,131,5,2,NULL),(277,66,41,2,NULL),(278,189,5,2,NULL),(279,68,41,2,NULL),(280,198,5,2,NULL),(281,73,41,2,NULL),(282,3,6,2,NULL),(283,92,41,2,NULL),(284,8,6,2,NULL),(285,95,41,2,NULL),(286,11,6,2,NULL),(287,108,41,2,NULL),(288,14,6,2,NULL),(289,121,41,2,NULL),(290,15,6,2,NULL),(291,125,41,2,NULL),(292,112,6,2,NULL),(293,194,41,2,NULL),(294,117,6,2,NULL),(295,16,41,2,NULL),(296,122,6,2,NULL),(297,86,14,2,NULL),(298,126,6,2,NULL),(299,113,14,2,NULL),(300,131,6,2,NULL),(301,124,14,2,NULL),(302,189,6,2,NULL),(303,144,14,2,NULL),(304,198,6,2,NULL),(305,149,14,2,NULL),(306,3,50,2,NULL),(307,158,14,2,NULL),(308,8,50,2,NULL),(309,211,14,2,NULL),(310,11,50,2,NULL),(311,213,14,2,NULL),(312,14,50,2,NULL),(313,214,14,2,NULL),(314,15,50,2,NULL),(315,217,14,2,NULL),(316,112,50,2,NULL),(317,219,14,2,NULL),(318,117,50,2,NULL),(319,269,14,2,NULL),(320,122,50,2,NULL),(321,86,16,2,NULL),(322,126,50,2,NULL),(323,113,16,2,NULL),(324,131,50,2,NULL),(325,124,16,2,NULL),(326,189,50,2,NULL),(327,144,16,2,NULL),(328,198,50,2,NULL),(329,149,16,2,NULL),(330,3,51,2,NULL),(331,158,16,2,NULL),(332,8,51,2,NULL),(333,211,16,2,NULL),(334,11,51,2,NULL),(335,213,16,2,NULL),(336,14,51,2,NULL),(337,214,16,2,NULL),(338,15,51,2,NULL),(339,217,16,2,NULL),(340,112,51,2,NULL),(341,219,16,2,NULL),(342,117,51,2,NULL),(343,269,16,2,NULL),(344,122,51,2,NULL),(345,86,17,2,NULL),(346,126,51,2,NULL),(347,113,17,2,NULL),(348,131,51,2,NULL),(349,124,17,2,NULL),(350,189,51,2,NULL),(351,144,17,2,NULL),(352,198,51,2,NULL),(353,149,17,2,NULL),(354,175,7,2,NULL),(355,158,17,2,NULL),(356,3,12,2,NULL),(357,211,17,2,NULL),(358,8,12,2,NULL),(359,213,17,2,NULL),(360,11,12,2,NULL),(361,214,17,2,NULL),(362,14,12,2,NULL),(363,217,17,2,NULL),(364,15,12,2,NULL),(365,219,17,2,NULL),(366,112,12,2,NULL),(367,269,17,2,NULL),(368,117,12,2,NULL),(369,86,52,2,NULL),(370,122,12,2,NULL),(371,113,52,2,NULL),(372,126,12,2,NULL),(373,124,52,2,NULL),(374,131,12,2,NULL),(375,144,52,2,NULL),(376,189,12,2,NULL),(377,149,52,2,NULL),(378,198,12,2,NULL),(379,158,52,2,NULL),(380,3,15,2,NULL),(381,211,52,2,NULL),(382,8,15,2,NULL),(383,213,52,2,NULL),(384,11,15,2,NULL),(385,214,52,2,NULL),(386,14,15,2,NULL),(387,217,52,2,NULL),(388,15,15,2,NULL),(389,219,52,2,NULL),(390,112,15,2,NULL),(391,269,52,2,NULL),(392,117,15,2,NULL),(393,86,53,2,NULL),(394,122,15,2,NULL),(395,113,53,2,NULL),(396,126,15,2,NULL),(397,124,53,2,NULL),(398,131,15,2,NULL),(399,144,53,2,NULL),(400,189,15,2,NULL),(401,149,53,2,NULL),(402,198,15,2,NULL),(403,158,53,2,NULL),(404,3,18,2,NULL),(405,211,53,2,NULL),(406,8,18,2,NULL),(407,213,53,2,NULL),(408,11,18,2,NULL),(409,214,53,2,NULL),(410,14,18,2,NULL),(411,217,53,2,NULL),(412,15,18,2,NULL),(413,219,53,2,NULL),(414,112,18,2,NULL),(415,269,53,2,NULL),(416,117,18,2,NULL),(417,86,55,2,NULL),(418,122,18,2,NULL),(419,113,55,2,NULL),(420,126,18,2,NULL),(421,124,55,2,NULL),(422,131,18,2,NULL),(423,144,55,2,NULL),(424,189,18,2,NULL),(425,149,55,2,NULL),(426,198,18,2,NULL),(427,158,55,2,NULL),(428,3,60,2,NULL),(429,211,55,2,NULL),(430,8,60,2,NULL),(431,213,55,2,NULL),(432,11,60,2,NULL),(433,214,55,2,NULL),(434,14,60,2,NULL),(435,217,55,2,NULL),(436,15,60,2,NULL),(437,219,55,2,NULL),(438,112,60,2,NULL),(439,269,55,2,NULL),(440,117,60,2,NULL),(441,86,73,2,NULL),(442,122,60,2,NULL),(443,113,73,2,NULL),(444,126,60,2,NULL),(445,124,73,2,NULL),(446,131,60,2,NULL),(447,144,73,2,NULL),(448,189,60,2,NULL),(449,149,73,2,NULL),(450,198,60,2,NULL),(451,158,73,2,NULL),(452,3,68,2,NULL),(453,211,73,2,NULL),(454,8,68,2,NULL),(455,213,73,2,NULL),(456,11,68,2,NULL),(457,214,73,2,NULL),(458,14,68,2,NULL),(459,217,73,2,NULL),(460,15,68,2,NULL),(461,219,73,2,NULL),(462,112,68,2,NULL),(463,269,73,2,NULL),(464,117,68,2,NULL),(465,86,19,2,NULL),(466,122,68,2,NULL),(467,113,19,2,NULL),(468,126,68,2,NULL),(469,124,19,2,NULL),(470,131,68,2,NULL),(471,144,19,2,NULL),(472,189,68,2,NULL),(473,149,19,2,NULL),(474,198,68,2,NULL),(475,158,19,2,NULL),(476,3,70,2,NULL),(477,211,19,2,NULL),(478,8,70,2,NULL),(479,213,19,2,NULL),(480,11,70,2,NULL),(481,214,19,2,NULL),(482,14,70,2,NULL),(483,217,19,2,NULL),(484,15,70,2,NULL),(485,219,19,2,NULL),(486,112,70,2,NULL),(487,269,19,2,NULL),(488,117,70,2,NULL),(489,58,41,2,NULL),(490,122,70,2,NULL),(491,116,41,2,NULL),(492,126,70,2,NULL),(493,119,41,2,NULL),(494,131,70,2,NULL),(495,123,41,2,NULL),(496,189,70,2,NULL),(497,128,41,2,NULL),(498,198,70,2,NULL),(499,129,41,2,NULL),(500,3,81,2,NULL),(501,134,41,2,NULL),(502,8,81,2,NULL),(503,139,41,2,NULL),(504,11,81,2,NULL),(505,142,41,2,NULL),(506,14,81,2,NULL),(507,86,21,2,NULL),(508,15,81,2,NULL),(509,113,21,2,NULL),(510,112,81,2,NULL),(511,124,21,2,NULL),(512,117,81,2,NULL),(513,144,21,2,NULL),(514,122,81,2,NULL),(515,149,21,2,NULL),(516,126,81,2,NULL),(517,158,21,2,NULL),(518,131,81,2,NULL),(519,211,21,2,NULL),(520,189,81,2,NULL),(521,213,21,2,NULL),(522,198,81,2,NULL),(523,214,21,2,NULL),(524,3,8,2,NULL),(525,217,21,2,NULL),(526,8,8,2,NULL),(527,219,21,2,NULL),(528,11,8,2,NULL),(529,269,21,2,NULL),(530,14,8,2,NULL),(531,86,30,2,NULL),(532,15,8,2,NULL),(533,113,30,2,NULL),(534,112,8,2,NULL),(535,124,30,2,NULL),(536,117,8,2,NULL),(537,144,30,2,NULL),(538,122,8,2,NULL),(539,149,30,2,NULL),(540,126,8,2,NULL),(541,158,30,2,NULL),(542,131,8,2,NULL),(543,211,30,2,NULL),(544,189,8,2,NULL),(545,213,30,2,NULL),(546,198,8,2,NULL),(547,214,30,2,NULL),(548,18,7,2,NULL),(549,217,30,2,NULL),(550,59,7,2,NULL),(551,219,30,2,NULL),(552,63,7,2,NULL),(553,269,30,2,NULL),(554,66,7,2,NULL),(555,86,33,2,NULL),(556,68,7,2,NULL),(557,113,33,2,NULL),(558,73,7,2,NULL),(559,124,33,2,NULL),(560,92,7,2,NULL),(561,144,33,2,NULL),(562,95,7,2,NULL),(563,149,33,2,NULL),(564,108,7,2,NULL),(565,158,33,2,NULL),(566,121,7,2,NULL),(567,211,33,2,NULL),(568,125,7,2,NULL),(569,213,33,2,NULL),(570,194,7,2,NULL),(571,214,33,2,NULL),(572,16,7,2,NULL),(573,217,33,2,NULL),(574,3,14,2,NULL),(575,219,33,2,NULL),(576,8,14,2,NULL),(577,269,33,2,NULL),(578,11,14,2,NULL),(579,86,38,2,NULL),(580,14,14,2,NULL),(581,113,38,2,NULL),(582,15,14,2,NULL),(583,124,38,2,NULL),(584,112,14,2,NULL),(585,144,38,2,NULL),(586,117,14,2,NULL),(587,149,38,2,NULL),(588,122,14,2,NULL),(589,158,38,2,NULL),(590,126,14,2,NULL),(591,211,38,2,NULL),(592,131,14,2,NULL),(593,213,38,2,NULL),(594,189,14,2,NULL),(595,214,38,2,NULL),(596,198,14,2,NULL),(597,217,38,2,NULL),(598,3,16,2,NULL),(599,219,38,2,NULL),(600,8,16,2,NULL),(601,269,38,2,NULL),(602,11,16,2,NULL),(603,86,72,2,NULL),(604,14,16,2,NULL),(605,113,72,2,NULL),(606,15,16,2,NULL),(607,124,72,2,NULL),(608,112,16,2,NULL),(609,144,72,2,NULL),(610,117,16,2,NULL),(611,149,72,2,NULL),(612,122,16,2,NULL),(613,158,72,2,NULL),(614,126,16,2,NULL),(615,211,72,2,NULL),(616,131,16,2,NULL),(617,213,72,2,NULL),(618,189,16,2,NULL),(619,214,72,2,NULL),(620,198,16,2,NULL),(621,217,72,2,NULL),(622,3,17,2,NULL),(623,219,72,2,NULL),(624,8,17,2,NULL),(625,269,72,2,NULL),(626,11,17,2,NULL),(627,86,74,2,NULL),(628,14,17,2,NULL),(629,113,74,2,NULL),(630,15,17,2,NULL),(631,124,74,2,NULL),(632,112,17,2,NULL),(633,144,74,2,NULL),(634,117,17,2,NULL),(635,149,74,2,NULL),(636,122,17,2,NULL),(637,158,74,2,NULL),(638,126,17,2,NULL),(639,211,74,2,NULL),(640,131,17,2,NULL),(641,213,74,2,NULL),(642,189,17,2,NULL),(643,214,74,2,NULL),(644,198,17,2,NULL),(645,217,74,2,NULL),(646,3,52,2,NULL),(647,219,74,2,NULL),(648,8,52,2,NULL),(649,269,74,2,NULL),(650,11,52,2,NULL),(651,86,75,2,NULL),(652,14,52,2,NULL),(653,113,75,2,NULL),(654,15,52,2,NULL),(655,124,75,2,NULL),(656,112,52,2,NULL),(657,144,75,2,NULL),(658,117,52,2,NULL),(659,149,75,2,NULL),(660,122,52,2,NULL),(661,158,75,2,NULL),(662,126,52,2,NULL),(663,211,75,2,NULL),(664,131,52,2,NULL),(665,189,52,2,NULL),(666,198,52,2,NULL),(667,213,75,2,NULL),(668,3,53,2,NULL),(669,214,75,2,NULL),(670,8,53,2,NULL),(671,217,75,2,NULL),(672,11,53,2,NULL),(673,219,75,2,NULL),(674,14,53,2,NULL),(675,269,75,2,NULL),(676,15,53,2,NULL),(677,86,20,2,NULL),(678,112,53,2,NULL),(679,113,20,2,NULL),(680,117,53,2,NULL),(681,124,20,2,NULL),(682,122,53,2,NULL),(683,144,20,2,NULL),(684,126,53,2,NULL),(685,149,20,2,NULL),(686,131,53,2,NULL),(687,158,20,2,NULL),(688,189,53,2,NULL),(689,211,20,2,NULL),(690,198,53,2,NULL),(691,213,20,2,NULL),(692,3,55,2,NULL),(693,214,20,2,NULL),(694,8,55,2,NULL),(695,217,20,2,NULL),(696,11,55,2,NULL),(697,219,20,2,NULL),(698,14,55,2,NULL),(699,269,20,2,NULL),(700,15,55,2,NULL),(701,72,41,2,NULL),(702,112,55,2,NULL),(703,135,41,2,NULL),(704,117,55,2,NULL),(705,140,41,2,NULL),(706,122,55,2,NULL),(707,143,41,2,NULL),(708,126,55,2,NULL),(709,148,41,2,NULL),(710,131,55,2,NULL),(711,150,41,2,NULL),(712,189,55,2,NULL),(713,173,41,2,NULL),(714,198,55,2,NULL),(715,220,41,2,NULL),(716,3,73,2,NULL),(717,224,41,2,NULL),(718,8,73,2,NULL),(719,230,41,2,NULL),(720,11,73,2,NULL),(721,234,41,2,NULL),(722,14,73,2,NULL),(723,237,41,2,NULL),(724,15,73,2,NULL),(725,266,41,2,NULL),(726,112,73,2,NULL),(727,86,28,2,NULL),(728,117,73,2,NULL),(729,113,28,2,NULL),(730,122,73,2,NULL),(731,124,28,2,NULL),(732,126,73,2,NULL),(733,144,28,2,NULL),(734,131,73,2,NULL),(735,149,28,2,NULL),(736,189,73,2,NULL),(737,158,28,2,NULL),(738,198,73,2,NULL),(739,211,28,2,NULL),(740,3,19,2,NULL),(741,213,28,2,NULL),(742,8,19,2,NULL),(743,214,28,2,NULL),(744,11,19,2,NULL),(745,217,28,2,NULL),(746,14,19,2,NULL),(747,219,28,2,NULL),(748,15,19,2,NULL),(749,269,28,2,NULL),(750,112,19,2,NULL),(751,86,32,2,NULL),(752,117,19,2,NULL),(753,113,32,2,NULL),(754,122,19,2,NULL),(755,124,32,2,NULL),(756,126,19,2,NULL),(757,144,32,2,NULL),(758,131,19,2,NULL),(759,149,32,2,NULL),(760,189,19,2,NULL),(761,158,32,2,NULL),(762,198,19,2,NULL),(763,211,32,2,NULL),(764,58,7,2,NULL),(765,213,32,2,NULL),(766,116,7,2,NULL),(767,214,32,2,NULL),(768,48,10,2,NULL),(769,119,7,2,NULL),(770,48,13,2,NULL),(771,217,32,2,NULL),(772,123,7,2,NULL),(773,219,32,2,NULL),(774,48,24,2,NULL),(775,128,7,2,NULL),(776,269,32,2,NULL),(777,129,7,2,NULL),(778,86,35,2,NULL),(779,48,36,2,NULL),(780,134,7,2,NULL),(781,113,35,2,NULL),(782,139,7,2,NULL),(783,48,44,2,NULL),(784,124,35,2,NULL),(785,142,7,2,NULL),(786,223,12,2,NULL),(787,144,35,2,NULL),(788,3,21,2,NULL),(789,223,14,2,NULL),(790,149,35,2,NULL),(791,8,21,2,NULL),(792,158,35,2,NULL),(793,223,28,2,NULL),(794,11,21,2,NULL),(795,211,35,2,NULL),(796,14,21,2,NULL),(797,213,35,2,NULL),(798,223,39,2,NULL),(799,15,21,2,NULL),(800,214,35,2,NULL),(801,223,47,2,NULL),(802,112,21,2,NULL),(803,217,35,2,NULL),(804,117,21,2,NULL),(805,231,12,2,NULL),(806,219,35,2,NULL),(807,122,21,2,NULL),(808,231,14,2,NULL),(809,269,35,2,NULL),(810,126,21,2,NULL),(811,231,28,2,NULL),(812,86,56,2,NULL),(813,131,21,2,NULL),(814,113,56,2,NULL),(815,231,39,2,NULL),(816,189,21,2,NULL),(817,124,56,2,NULL),(818,231,47,2,NULL),(819,198,21,2,NULL),(820,144,56,2,NULL),(821,239,12,2,NULL),(822,3,30,2,NULL),(823,149,56,2,NULL),(824,239,14,2,NULL),(825,8,30,2,NULL),(826,158,56,2,NULL),(827,239,28,2,NULL),(828,11,30,2,NULL),(829,211,56,2,NULL),(830,239,39,2,NULL),(831,14,30,2,NULL),(832,213,56,2,NULL),(833,239,47,2,NULL),(834,15,30,2,NULL),(835,214,56,2,NULL),(836,246,12,2,NULL),(837,112,30,2,NULL),(838,217,56,2,NULL),(839,246,14,2,NULL),(840,117,30,2,NULL),(841,219,56,2,NULL),(842,246,28,2,NULL),(843,122,30,2,NULL),(844,269,56,2,NULL),(845,246,39,2,NULL),(846,126,30,2,NULL),(847,86,57,2,NULL),(848,246,47,2,NULL),(849,131,30,2,NULL),(850,113,57,2,NULL),(851,248,12,2,NULL),(852,189,30,2,NULL),(853,124,57,2,NULL),(854,248,14,2,NULL),(855,198,30,2,NULL),(856,144,57,2,NULL),(857,248,28,2,NULL),(858,3,33,2,NULL),(859,149,57,2,NULL),(860,248,39,2,NULL),(861,8,33,2,NULL),(862,158,57,2,NULL),(863,248,47,2,NULL),(864,11,33,2,NULL),(865,211,57,2,NULL),(866,257,10,2,NULL),(867,14,33,2,NULL),(868,213,57,2,NULL),(869,257,13,2,NULL),(870,15,33,2,NULL),(871,214,57,2,NULL),(872,257,24,2,NULL),(873,112,33,2,NULL),(874,217,57,2,NULL),(875,257,36,2,NULL),(876,117,33,2,NULL),(877,219,57,2,NULL),(878,257,44,2,NULL),(879,122,33,2,NULL),(880,269,57,2,NULL),(881,57,1,2,NULL),(882,126,33,2,NULL),(883,86,62,2,NULL),(884,180,1,2,NULL),(885,131,33,2,NULL),(886,113,62,2,NULL),(887,184,1,2,NULL),(888,189,33,2,NULL),(889,187,1,2,NULL),(890,124,62,2,NULL),(891,198,33,2,NULL),(892,191,1,2,NULL),(893,144,62,2,NULL),(894,3,38,2,NULL),(895,149,62,2,NULL),(896,193,1,2,NULL),(897,8,38,2,NULL),(898,158,62,2,NULL),(899,227,1,2,NULL),(900,11,38,2,NULL),(901,211,62,2,NULL),(902,229,1,2,NULL),(903,14,38,2,NULL),(904,233,1,2,NULL),(905,213,62,2,NULL),(906,15,38,2,NULL),(907,236,1,2,NULL),(908,214,62,2,NULL),(909,112,38,2,NULL),(910,244,1,2,NULL),(911,217,62,2,NULL),(912,117,38,2,NULL),(913,219,62,2,NULL),(914,260,1,2,NULL),(915,122,38,2,NULL),(916,269,62,2,NULL),(917,57,5,2,NULL),(918,126,38,2,NULL),(919,180,5,2,NULL),(920,86,76,2,NULL),(921,131,38,2,NULL),(922,184,5,2,NULL),(923,113,76,2,NULL),(924,189,38,2,NULL),(925,187,5,2,NULL),(926,124,76,2,NULL),(927,198,38,2,NULL),(928,144,76,2,NULL),(929,191,5,2,NULL),(930,3,72,2,NULL),(931,149,76,2,NULL),(932,193,5,2,NULL),(933,8,72,2,NULL),(934,158,76,2,NULL),(935,227,5,2,NULL),(936,11,72,2,NULL),(937,229,5,2,NULL),(938,211,76,2,NULL),(939,14,72,2,NULL),(940,213,76,2,NULL),(941,233,5,2,NULL),(942,15,72,2,NULL),(943,214,76,2,NULL),(944,236,5,2,NULL),(945,112,72,2,NULL),(946,244,5,2,NULL),(947,217,76,2,NULL),(948,117,72,2,NULL),(949,260,5,2,NULL),(950,219,76,2,NULL),(951,122,72,2,NULL),(952,269,76,2,NULL),(953,57,6,2,NULL),(954,126,72,2,NULL),(955,86,92,2,NULL),(956,180,6,2,NULL),(957,131,72,2,NULL),(958,113,92,2,NULL),(959,184,6,2,NULL),(960,189,72,2,NULL),(961,124,92,2,NULL),(962,187,6,2,NULL),(963,198,72,2,NULL),(964,191,6,2,NULL),(965,144,92,2,NULL),(966,3,74,2,NULL),(967,149,92,2,NULL),(968,193,6,2,NULL),(969,8,74,2,NULL),(970,158,92,2,NULL),(971,227,6,2,NULL),(972,11,74,2,NULL),(973,211,92,2,NULL),(974,229,6,2,NULL),(975,14,74,2,NULL),(976,213,92,2,NULL),(977,233,6,2,NULL),(978,15,74,2,NULL),(979,214,92,2,NULL),(980,236,6,2,NULL),(981,112,74,2,NULL),(982,217,92,2,NULL),(983,244,6,2,NULL),(984,117,74,2,NULL),(985,219,92,2,NULL),(986,260,6,2,NULL),(987,122,74,2,NULL),(988,269,92,2,NULL),(989,57,50,2,NULL),(990,126,74,2,NULL),(991,86,31,2,NULL),(992,180,50,2,NULL),(993,131,74,2,NULL),(994,113,31,2,NULL),(995,184,50,2,NULL),(996,189,74,2,NULL),(997,124,31,2,NULL),(998,187,50,2,NULL),(999,198,74,2,NULL),(1000,144,31,2,NULL),(1001,191,50,2,NULL),(1002,3,75,2,NULL),(1003,149,31,2,NULL),(1004,193,50,2,NULL),(1005,8,75,2,NULL),(1006,158,31,2,NULL),(1007,227,50,2,NULL),(1008,11,75,2,NULL),(1009,211,31,2,NULL),(1010,229,50,2,NULL),(1011,14,75,2,NULL),(1012,213,31,2,NULL),(1013,233,50,2,NULL),(1014,15,75,2,NULL),(1015,214,31,2,NULL),(1016,236,50,2,NULL),(1017,112,75,2,NULL),(1018,217,31,2,NULL),(1019,244,50,2,NULL),(1020,117,75,2,NULL),(1021,219,31,2,NULL),(1022,260,50,2,NULL),(1023,122,75,2,NULL),(1024,269,31,2,NULL),(1025,57,51,2,NULL),(1026,126,75,2,NULL),(1027,57,41,2,NULL),(1028,180,51,2,NULL),(1029,131,75,2,NULL),(1030,180,41,2,NULL),(1031,184,51,2,NULL),(1032,189,75,2,NULL),(1033,184,41,2,NULL),(1034,187,51,2,NULL),(1035,198,75,2,NULL),(1036,187,41,2,NULL),(1037,191,51,2,NULL),(1038,3,20,2,NULL),(1039,191,41,2,NULL),(1040,193,51,2,NULL),(1041,8,20,2,NULL),(1042,193,41,2,NULL),(1043,227,51,2,NULL),(1044,11,20,2,NULL),(1045,227,41,2,NULL),(1046,229,51,2,NULL),(1047,14,20,2,NULL),(1048,229,41,2,NULL),(1049,233,51,2,NULL),(1050,15,20,2,NULL),(1051,233,41,2,NULL),(1052,236,51,2,NULL),(1053,112,20,2,NULL),(1054,236,41,2,NULL),(1055,244,51,2,NULL),(1056,117,20,2,NULL),(1057,244,41,2,NULL),(1058,260,51,2,NULL),(1059,122,20,2,NULL),(1060,260,41,2,NULL),(1061,57,7,2,NULL),(1062,126,20,2,NULL),(1063,88,41,2,NULL),(1064,180,7,2,NULL),(1065,131,20,2,NULL),(1066,86,39,2,NULL),(1067,184,7,2,NULL),(1068,189,20,2,NULL),(1069,113,39,2,NULL),(1070,187,7,2,NULL),(1071,198,20,2,NULL),(1072,124,39,2,NULL),(1073,191,7,2,NULL),(1074,72,7,2,NULL),(1075,144,39,2,NULL),(1076,193,7,2,NULL),(1077,135,7,2,NULL),(1078,149,39,2,NULL),(1079,227,7,2,NULL),(1080,140,7,2,NULL),(1081,158,39,2,NULL),(1082,229,7,2,NULL),(1083,143,7,2,NULL),(1084,211,39,2,NULL),(1085,233,7,2,NULL),(1086,148,7,2,NULL),(1087,213,39,2,NULL),(1088,236,7,2,NULL),(1089,150,7,2,NULL),(1090,214,39,2,NULL),(1091,244,7,2,NULL),(1092,173,7,2,NULL),(1093,217,39,2,NULL),(1094,260,7,2,NULL),(1095,219,39,2,NULL),(1096,3,31,2,NULL),(1097,269,39,2,NULL),(1098,8,31,2,NULL),(1099,220,7,2,NULL),(1100,86,42,2,NULL),(1101,11,31,2,NULL),(1102,113,42,2,NULL),(1103,224,7,2,NULL),(1104,14,31,2,NULL),(1105,124,42,2,NULL),(1106,230,7,2,NULL),(1107,15,31,2,NULL),(1108,144,42,2,NULL),(1109,234,7,2,NULL),(1110,112,31,2,NULL),(1111,149,42,2,NULL),(1112,237,7,2,NULL),(1113,117,31,2,NULL),(1114,158,42,2,NULL),(1115,266,7,2,NULL),(1116,122,31,2,NULL),(1117,211,42,2,NULL),(1118,3,28,2,NULL),(1119,126,31,2,NULL),(1120,213,42,2,NULL),(1121,8,28,2,NULL),(1122,131,31,2,NULL),(1123,214,42,2,NULL),(1124,11,28,2,NULL),(1125,189,31,2,NULL),(1126,217,42,2,NULL),(1127,14,28,2,NULL),(1128,198,31,2,NULL),(1129,219,42,2,NULL),(1130,15,28,2,NULL),(1131,175,31,2,NULL),(1132,269,42,2,NULL),(1133,112,28,2,NULL),(1134,57,12,2,NULL),(1135,86,45,2,NULL),(1136,117,28,2,NULL),(1137,180,12,2,NULL),(1138,113,45,2,NULL),(1139,122,28,2,NULL),(1140,184,12,2,NULL),(1141,124,45,2,NULL),(1142,126,28,2,NULL),(1143,187,12,2,NULL),(1144,144,45,2,NULL),(1145,131,28,2,NULL),(1146,191,12,2,NULL),(1147,149,45,2,NULL),(1148,189,28,2,NULL),(1149,193,12,2,NULL),(1150,158,45,2,NULL),(1151,198,28,2,NULL),(1152,227,12,2,NULL),(1153,211,45,2,NULL),(1154,3,32,2,NULL),(1155,229,12,2,NULL),(1156,8,32,2,NULL),(1157,213,45,2,NULL),(1158,233,12,2,NULL),(1159,214,45,2,NULL),(1160,11,32,2,NULL),(1161,236,12,2,NULL),(1162,217,45,2,NULL),(1163,14,32,2,NULL),(1164,244,12,2,NULL),(1165,219,45,2,NULL),(1166,15,32,2,NULL),(1167,260,12,2,NULL),(1168,4,10,2,NULL),(1169,269,45,2,NULL),(1170,112,32,2,NULL),(1171,57,15,2,NULL),(1172,4,13,2,NULL),(1173,86,58,2,NULL),(1174,117,32,2,NULL),(1175,180,15,2,NULL),(1176,113,58,2,NULL),(1177,122,32,2,NULL),(1178,184,15,2,NULL),(1179,4,24,2,NULL),(1180,124,58,2,NULL),(1181,126,32,2,NULL),(1182,187,15,2,NULL),(1183,4,36,2,NULL),(1184,144,58,2,NULL),(1185,131,32,2,NULL),(1186,191,15,2,NULL),(1187,4,44,2,NULL),(1188,149,58,2,NULL),(1189,189,32,2,NULL),(1190,193,15,2,NULL),(1191,158,58,2,NULL),(1192,198,32,2,NULL),(1193,29,10,2,NULL),(1194,227,15,2,NULL),(1195,211,58,2,NULL),(1196,3,35,2,NULL),(1197,229,15,2,NULL),(1198,213,58,2,NULL),(1199,29,13,2,NULL),(1200,8,35,2,NULL),(1201,233,15,2,NULL),(1202,214,58,2,NULL),(1203,29,24,2,NULL),(1204,11,35,2,NULL),(1205,236,15,2,NULL),(1206,217,58,2,NULL),(1207,14,35,2,NULL),(1208,244,15,2,NULL),(1209,29,36,2,NULL),(1210,219,58,2,NULL),(1211,15,35,2,NULL),(1212,260,15,2,NULL),(1213,269,58,2,NULL),(1214,29,44,2,NULL),(1215,112,35,2,NULL),(1216,57,18,2,NULL),(1217,86,79,2,NULL),(1218,117,35,2,NULL),(1219,180,18,2,NULL),(1220,100,12,2,NULL),(1221,113,79,2,NULL),(1222,122,35,2,NULL),(1223,184,18,2,NULL),(1224,124,79,2,NULL),(1225,100,14,2,NULL),(1226,126,35,2,NULL),(1227,187,18,2,NULL),(1228,144,79,2,NULL),(1229,100,28,2,NULL),(1230,131,35,2,NULL),(1231,191,18,2,NULL),(1232,149,79,2,NULL),(1233,100,39,2,NULL),(1234,189,35,2,NULL),(1235,193,18,2,NULL),(1236,158,79,2,NULL),(1237,198,35,2,NULL),(1238,227,18,2,NULL),(1239,100,47,2,NULL),(1240,211,79,2,NULL),(1241,3,56,2,NULL),(1242,229,18,2,NULL),(1243,103,12,2,NULL),(1244,213,79,2,NULL),(1245,8,56,2,NULL),(1246,233,18,2,NULL),(1247,214,79,2,NULL),(1248,103,14,2,NULL),(1249,11,56,2,NULL),(1250,236,18,2,NULL),(1251,217,79,2,NULL),(1252,103,28,2,NULL),(1253,14,56,2,NULL),(1254,244,18,2,NULL),(1255,219,79,2,NULL),(1256,15,56,2,NULL),(1257,260,18,2,NULL),(1258,103,39,2,NULL),(1259,269,79,2,NULL),(1260,112,56,2,NULL),(1261,57,60,2,NULL),(1262,86,85,2,NULL),(1263,103,47,2,NULL),(1264,117,56,2,NULL),(1265,180,60,2,NULL),(1266,113,85,2,NULL),(1267,122,56,2,NULL),(1268,184,60,2,NULL),(1269,115,12,2,NULL),(1270,124,85,2,NULL),(1271,126,56,2,NULL),(1272,187,60,2,NULL),(1273,115,14,2,NULL),(1274,144,85,2,NULL),(1275,131,56,2,NULL),(1276,191,60,2,NULL),(1277,149,85,2,NULL),(1278,115,28,2,NULL),(1279,189,56,2,NULL),(1280,193,60,2,NULL),(1281,158,85,2,NULL),(1282,198,56,2,NULL),(1283,227,60,2,NULL),(1284,115,39,2,NULL),(1285,211,85,2,NULL),(1286,3,57,2,NULL),(1287,229,60,2,NULL),(1288,213,85,2,NULL),(1289,115,47,2,NULL),(1290,8,57,2,NULL),(1291,233,60,2,NULL),(1292,214,85,2,NULL),(1293,11,57,2,NULL),(1294,236,60,2,NULL),(1295,133,12,2,NULL),(1296,217,85,2,NULL),(1297,14,57,2,NULL),(1298,244,60,2,NULL),(1299,219,85,2,NULL),(1300,133,14,2,NULL),(1301,15,57,2,NULL),(1302,260,60,2,NULL),(1303,269,85,2,NULL),(1304,133,28,2,NULL),(1305,112,57,2,NULL),(1306,57,68,2,NULL),(1307,86,89,2,NULL),(1308,133,39,2,NULL),(1309,117,57,2,NULL),(1310,180,68,2,NULL),(1311,113,89,2,NULL),(1312,133,47,2,NULL),(1313,184,68,2,NULL),(1314,122,57,2,NULL),(1315,124,89,2,NULL),(1316,138,12,2,NULL),(1317,126,57,2,NULL),(1318,187,68,2,NULL),(1319,144,89,2,NULL),(1320,138,14,2,NULL),(1321,131,57,2,NULL),(1322,191,68,2,NULL),(1323,149,89,2,NULL),(1324,138,28,2,NULL),(1325,189,57,2,NULL),(1326,193,68,2,NULL),(1327,158,89,2,NULL),(1328,138,39,2,NULL),(1329,198,57,2,NULL),(1330,227,68,2,NULL),(1331,211,89,2,NULL),(1332,138,47,2,NULL),(1333,3,62,2,NULL),(1334,229,68,2,NULL),(1335,213,89,2,NULL),(1336,8,62,2,NULL),(1337,233,68,2,NULL),(1338,18,1,2,NULL),(1339,214,89,2,NULL),(1340,11,62,2,NULL),(1341,236,68,2,NULL),(1342,59,1,2,NULL),(1343,217,89,2,NULL),(1344,14,62,2,NULL),(1345,244,68,2,NULL),(1346,63,1,2,NULL),(1347,219,89,2,NULL),(1348,15,62,2,NULL),(1349,260,68,2,NULL),(1350,66,1,2,NULL),(1351,269,89,2,NULL),(1352,112,62,2,NULL),(1353,57,70,2,NULL),(1354,68,1,2,NULL),(1355,86,93,2,NULL),(1356,117,62,2,NULL),(1357,180,70,2,NULL),(1358,73,1,2,NULL),(1359,113,93,2,NULL),(1360,122,62,2,NULL),(1361,184,70,2,NULL),(1362,92,1,2,NULL),(1363,124,93,2,NULL),(1364,126,62,2,NULL),(1365,187,70,2,NULL),(1366,95,1,2,NULL),(1367,144,93,2,NULL),(1368,131,62,2,NULL),(1369,191,70,2,NULL),(1370,108,1,2,NULL),(1371,149,93,2,NULL),(1372,189,62,2,NULL),(1373,193,70,2,NULL),(1374,121,1,2,NULL),(1375,158,93,2,NULL),(1376,198,62,2,NULL),(1377,227,70,2,NULL),(1378,125,1,2,NULL),(1379,211,93,2,NULL),(1380,3,76,2,NULL),(1381,229,70,2,NULL),(1382,194,1,2,NULL),(1383,213,93,2,NULL),(1384,8,76,2,NULL),(1385,233,70,2,NULL),(1386,18,5,2,NULL),(1387,214,93,2,NULL),(1388,11,76,2,NULL),(1389,236,70,2,NULL),(1390,59,5,2,NULL),(1391,217,93,2,NULL),(1392,14,76,2,NULL),(1393,244,70,2,NULL),(1394,63,5,2,NULL),(1395,219,93,2,NULL),(1396,15,76,2,NULL),(1397,260,70,2,NULL),(1398,66,5,2,NULL),(1399,269,93,2,NULL),(1400,112,76,2,NULL),(1401,57,81,2,NULL),(1402,68,5,2,NULL),(1403,255,41,2,NULL),(1404,117,76,2,NULL),(1405,180,81,2,NULL),(1406,73,5,2,NULL),(1407,86,47,2,NULL),(1408,122,76,2,NULL),(1409,184,81,2,NULL),(1410,92,5,2,NULL),(1411,113,47,2,NULL),(1412,126,76,2,NULL),(1413,187,81,2,NULL),(1414,95,5,2,NULL),(1415,124,47,2,NULL),(1416,131,76,2,NULL),(1417,191,81,2,NULL),(1418,108,5,2,NULL),(1419,144,47,2,NULL),(1420,189,76,2,NULL),(1421,193,81,2,NULL),(1422,121,5,2,NULL),(1423,149,47,2,NULL),(1424,198,76,2,NULL),(1425,227,81,2,NULL),(1426,125,5,2,NULL),(1427,158,47,2,NULL),(1428,3,92,2,NULL),(1429,229,81,2,NULL),(1430,194,5,2,NULL),(1431,211,47,2,NULL),(1432,8,92,2,NULL),(1433,233,81,2,NULL),(1434,18,6,2,NULL),(1435,213,47,2,NULL),(1436,11,92,2,NULL),(1437,236,81,2,NULL),(1438,59,6,2,NULL),(1439,214,47,2,NULL),(1440,14,92,2,NULL),(1441,244,81,2,NULL),(1442,63,6,2,NULL),(1443,217,47,2,NULL),(1444,15,92,2,NULL),(1445,260,81,2,NULL),(1446,66,6,2,NULL),(1447,219,47,2,NULL),(1448,112,92,2,NULL),(1449,57,8,2,NULL),(1450,68,6,2,NULL),(1451,269,47,2,NULL),(1452,117,92,2,NULL),(1453,180,8,2,NULL),(1454,73,6,2,NULL),(1455,86,48,2,NULL),(1456,122,92,2,NULL),(1457,184,8,2,NULL),(1458,92,6,2,NULL),(1459,113,48,2,NULL),(1460,126,92,2,NULL),(1461,187,8,2,NULL),(1462,95,6,2,NULL),(1463,124,48,2,NULL),(1464,131,92,2,NULL),(1465,191,8,2,NULL),(1466,108,6,2,NULL),(1467,144,48,2,NULL),(1468,189,92,2,NULL),(1469,193,8,2,NULL),(1470,121,6,2,NULL),(1471,149,48,2,NULL),(1472,198,92,2,NULL),(1473,227,8,2,NULL),(1474,125,6,2,NULL),(1475,158,48,2,NULL),(1476,229,8,2,NULL),(1477,194,6,2,NULL),(1478,211,48,2,NULL),(1479,88,7,2,NULL),(1480,233,8,2,NULL),(1481,18,50,2,NULL),(1482,213,48,2,NULL),(1483,3,39,2,NULL),(1484,236,8,2,NULL),(1485,59,50,2,NULL),(1486,214,48,2,NULL),(1487,8,39,2,NULL),(1488,244,8,2,NULL),(1489,63,50,2,NULL),(1490,217,48,2,NULL),(1491,11,39,2,NULL),(1492,260,8,2,NULL),(1493,66,50,2,NULL),(1494,219,48,2,NULL),(1495,14,39,2,NULL),(1496,18,31,2,NULL),(1497,68,50,2,NULL),(1498,269,48,2,NULL),(1499,15,39,2,NULL),(1500,59,31,2,NULL),(1501,73,50,2,NULL),(1502,86,49,2,NULL),(1503,112,39,2,NULL),(1504,63,31,2,NULL),(1505,92,50,2,NULL),(1506,113,49,2,NULL),(1507,117,39,2,NULL),(1508,66,31,2,NULL),(1509,95,50,2,NULL),(1510,124,49,2,NULL),(1511,122,39,2,NULL),(1512,68,31,2,NULL),(1513,108,50,2,NULL),(1514,144,49,2,NULL),(1515,126,39,2,NULL),(1516,73,31,2,NULL),(1517,121,50,2,NULL),(1518,149,49,2,NULL),(1519,131,39,2,NULL),(1520,92,31,2,NULL),(1521,125,50,2,NULL),(1522,158,49,2,NULL),(1523,189,39,2,NULL),(1524,95,31,2,NULL),(1525,194,50,2,NULL),(1526,211,49,2,NULL),(1527,198,39,2,NULL),(1528,108,31,2,NULL),(1529,18,51,2,NULL),(1530,213,49,2,NULL),(1531,3,42,2,NULL),(1532,121,31,2,NULL),(1533,59,51,2,NULL),(1534,214,49,2,NULL),(1535,8,42,2,NULL),(1536,125,31,2,NULL),(1537,63,51,2,NULL),(1538,217,49,2,NULL),(1539,11,42,2,NULL),(1540,194,31,2,NULL),(1541,66,51,2,NULL),(1542,219,49,2,NULL),(1543,14,42,2,NULL),(1544,16,31,2,NULL),(1545,68,51,2,NULL),(1546,269,49,2,NULL),(1547,15,42,2,NULL),(1548,57,14,2,NULL),(1549,73,51,2,NULL),(1550,86,61,2,NULL),(1551,112,42,2,NULL),(1552,92,51,2,NULL),(1553,180,14,2,NULL),(1554,113,61,2,NULL),(1555,117,42,2,NULL),(1556,95,51,2,NULL),(1557,184,14,2,NULL),(1558,124,61,2,NULL),(1559,122,42,2,NULL),(1560,108,51,2,NULL),(1561,187,14,2,NULL),(1562,144,61,2,NULL),(1563,126,42,2,NULL),(1564,121,51,2,NULL),(1565,191,14,2,NULL),(1566,149,61,2,NULL),(1567,131,42,2,NULL),(1568,125,51,2,NULL),(1569,193,14,2,NULL),(1570,158,61,2,NULL),(1571,189,42,2,NULL),(1572,194,51,2,NULL),(1573,227,14,2,NULL),(1574,211,61,2,NULL),(1575,198,42,2,NULL),(1576,229,14,2,NULL),(1577,213,61,2,NULL),(1578,3,45,2,NULL),(1579,175,8,2,NULL),(1580,233,14,2,NULL),(1581,214,61,2,NULL),(1582,8,45,2,NULL),(1583,18,12,2,NULL),(1584,236,14,2,NULL),(1585,217,61,2,NULL),(1586,11,45,2,NULL),(1587,59,12,2,NULL),(1588,244,14,2,NULL),(1589,219,61,2,NULL),(1590,14,45,2,NULL),(1591,63,12,2,NULL),(1592,260,14,2,NULL),(1593,269,61,2,NULL),(1594,15,45,2,NULL),(1595,66,12,2,NULL),(1596,57,16,2,NULL),(1597,86,82,2,NULL),(1598,112,45,2,NULL),(1599,68,12,2,NULL),(1600,180,16,2,NULL),(1601,117,45,2,NULL),(1602,113,82,2,NULL),(1603,73,12,2,NULL),(1604,184,16,2,NULL),(1605,124,82,2,NULL),(1606,122,45,2,NULL),(1607,92,12,2,NULL),(1608,187,16,2,NULL),(1609,144,82,2,NULL),(1610,126,45,2,NULL),(1611,95,12,2,NULL),(1612,191,16,2,NULL),(1613,149,82,2,NULL),(1614,131,45,2,NULL),(1615,108,12,2,NULL),(1616,193,16,2,NULL),(1617,158,82,2,NULL),(1618,189,45,2,NULL),(1619,121,12,2,NULL),(1620,227,16,2,NULL),(1621,198,45,2,NULL),(1622,211,82,2,NULL),(1623,125,12,2,NULL),(1624,229,16,2,NULL),(1625,3,58,2,NULL),(1626,213,82,2,NULL),(1627,194,12,2,NULL),(1628,233,16,2,NULL),(1629,214,82,2,NULL),(1630,8,58,2,NULL),(1631,18,15,2,NULL),(1632,236,16,2,NULL),(1633,217,82,2,NULL),(1634,11,58,2,NULL),(1635,59,15,2,NULL),(1636,244,16,2,NULL),(1637,219,82,2,NULL),(1638,14,58,2,NULL),(1639,63,15,2,NULL),(1640,260,16,2,NULL),(1641,15,58,2,NULL),(1642,269,82,2,NULL),(1643,66,15,2,NULL),(1644,57,17,2,NULL),(1645,86,86,2,NULL),(1646,112,58,2,NULL),(1647,68,15,2,NULL),(1648,113,86,2,NULL),(1649,180,17,2,NULL),(1650,117,58,2,NULL),(1651,73,15,2,NULL),(1652,124,86,2,NULL),(1653,122,58,2,NULL),(1654,184,17,2,NULL),(1655,92,15,2,NULL),(1656,144,86,2,NULL),(1657,126,58,2,NULL),(1658,95,15,2,NULL),(1659,187,17,2,NULL),(1660,149,86,2,NULL),(1661,131,58,2,NULL),(1662,191,17,2,NULL),(1663,108,15,2,NULL),(1664,158,86,2,NULL),(1665,189,58,2,NULL),(1666,193,17,2,NULL),(1667,121,15,2,NULL),(1668,211,86,2,NULL),(1669,227,17,2,NULL),(1670,125,15,2,NULL),(1671,198,58,2,NULL),(1672,213,86,2,NULL),(1673,3,79,2,NULL),(1674,229,17,2,NULL),(1675,194,15,2,NULL),(1676,214,86,2,NULL),(1677,8,79,2,NULL),(1678,233,17,2,NULL),(1679,217,86,2,NULL),(1680,18,18,2,NULL),(1681,11,79,2,NULL),(1682,219,86,2,NULL),(1683,236,17,2,NULL),(1684,59,18,2,NULL),(1685,14,79,2,NULL),(1686,269,86,2,NULL),(1687,244,17,2,NULL),(1688,63,18,2,NULL),(1689,15,79,2,NULL),(1690,86,87,2,NULL),(1691,66,18,2,NULL),(1692,260,17,2,NULL),(1693,112,79,2,NULL),(1694,113,87,2,NULL),(1695,57,52,2,NULL),(1696,68,18,2,NULL),(1697,117,79,2,NULL),(1698,124,87,2,NULL),(1699,180,52,2,NULL),(1700,73,18,2,NULL),(1701,122,79,2,NULL),(1702,144,87,2,NULL),(1703,184,52,2,NULL),(1704,92,18,2,NULL),(1705,126,79,2,NULL),(1706,149,87,2,NULL),(1707,187,52,2,NULL),(1708,95,18,2,NULL),(1709,131,79,2,NULL),(1710,158,87,2,NULL),(1711,191,52,2,NULL),(1712,108,18,2,NULL),(1713,189,79,2,NULL),(1714,211,87,2,NULL),(1715,193,52,2,NULL),(1716,121,18,2,NULL),(1717,198,79,2,NULL),(1718,213,87,2,NULL),(1719,227,52,2,NULL),(1720,125,18,2,NULL),(1721,3,85,2,NULL),(1722,214,87,2,NULL),(1723,229,52,2,NULL),(1724,194,18,2,NULL),(1725,8,85,2,NULL),(1726,217,87,2,NULL),(1727,233,52,2,NULL),(1728,18,60,2,NULL),(1729,11,85,2,NULL),(1730,219,87,2,NULL),(1731,236,52,2,NULL),(1732,59,60,2,NULL),(1733,14,85,2,NULL),(1734,269,87,2,NULL),(1735,244,52,2,NULL),(1736,63,60,2,NULL),(1737,15,85,2,NULL),(1738,260,52,2,NULL),(1739,66,60,2,NULL),(1740,86,88,2,NULL),(1741,112,85,2,NULL),(1742,113,88,2,NULL),(1743,57,53,2,NULL),(1744,68,60,2,NULL),(1745,117,85,2,NULL),(1746,124,88,2,NULL),(1747,180,53,2,NULL),(1748,73,60,2,NULL),(1749,122,85,2,NULL),(1750,144,88,2,NULL),(1751,184,53,2,NULL),(1752,92,60,2,NULL),(1753,126,85,2,NULL),(1754,149,88,2,NULL),(1755,187,53,2,NULL),(1756,95,60,2,NULL),(1757,131,85,2,NULL),(1758,158,88,2,NULL),(1759,191,53,2,NULL),(1760,108,60,2,NULL),(1761,189,85,2,NULL),(1762,211,88,2,NULL),(1763,193,53,2,NULL),(1764,121,60,2,NULL),(1765,198,85,2,NULL),(1766,213,88,2,NULL),(1767,227,53,2,NULL),(1768,125,60,2,NULL),(1769,3,89,2,NULL),(1770,214,88,2,NULL),(1771,229,53,2,NULL),(1772,194,60,2,NULL),(1773,8,89,2,NULL),(1774,217,88,2,NULL),(1775,233,53,2,NULL),(1776,18,68,2,NULL),(1777,11,89,2,NULL),(1778,219,88,2,NULL),(1779,236,53,2,NULL),(1780,59,68,2,NULL),(1781,14,89,2,NULL),(1782,269,88,2,NULL),(1783,244,53,2,NULL),(1784,63,68,2,NULL),(1785,15,89,2,NULL),(1786,260,53,2,NULL),(1787,66,68,2,NULL),(1788,255,1,2,NULL),(1789,112,89,2,NULL),(1790,255,5,2,NULL),(1791,57,55,2,NULL),(1792,68,68,2,NULL),(1793,117,89,2,NULL),(1794,255,6,2,NULL),(1795,180,55,2,NULL),(1796,73,68,2,NULL),(1797,122,89,2,NULL),(1798,255,50,2,NULL),(1799,184,55,2,NULL),(1800,92,68,2,NULL),(1801,126,89,2,NULL),(1802,255,51,2,NULL),(1803,187,55,2,NULL),(1804,95,68,2,NULL),(1805,131,89,2,NULL),(1806,255,7,2,NULL),(1807,191,55,2,NULL),(1808,108,68,2,NULL),(1809,189,89,2,NULL),(1810,255,12,2,NULL),(1811,193,55,2,NULL),(1812,121,68,2,NULL),(1813,198,89,2,NULL),(1814,255,15,2,NULL),(1815,227,55,2,NULL),(1816,125,68,2,NULL),(1817,3,93,2,NULL),(1818,255,18,2,NULL),(1819,229,55,2,NULL),(1820,194,68,2,NULL),(1821,8,93,2,NULL),(1822,255,60,2,NULL),(1823,233,55,2,NULL),(1824,18,70,2,NULL),(1825,11,93,2,NULL),(1826,255,68,2,NULL),(1827,59,70,2,NULL),(1828,236,55,2,NULL),(1829,14,93,2,NULL),(1830,255,70,2,NULL),(1831,244,55,2,NULL),(1832,63,70,2,NULL),(1833,15,93,2,NULL),(1834,255,81,2,NULL),(1835,260,55,2,NULL),(1836,66,70,2,NULL),(1837,112,93,2,NULL),(1838,255,8,2,NULL),(1839,57,73,2,NULL),(1840,68,70,2,NULL),(1841,117,93,2,NULL),(1842,255,14,2,NULL),(1843,180,73,2,NULL),(1844,73,70,2,NULL),(1845,122,93,2,NULL),(1846,184,73,2,NULL),(1847,255,16,2,NULL),(1848,92,70,2,NULL),(1849,126,93,2,NULL),(1850,255,17,2,NULL),(1851,187,73,2,NULL),(1852,95,70,2,NULL),(1853,131,93,2,NULL),(1854,255,52,2,NULL),(1855,191,73,2,NULL),(1856,108,70,2,NULL),(1857,189,93,2,NULL),(1858,255,53,2,NULL),(1859,121,70,2,NULL),(1860,193,73,2,NULL),(1861,198,93,2,NULL),(1862,255,55,2,NULL),(1863,227,73,2,NULL),(1864,125,70,2,NULL),(1865,229,73,2,NULL),(1866,255,73,2,NULL),(1867,194,70,2,NULL),(1868,3,47,2,NULL),(1869,233,73,2,NULL),(1870,255,19,2,NULL),(1871,8,47,2,NULL),(1872,18,81,2,NULL),(1873,236,73,2,NULL),(1874,255,21,2,NULL),(1875,11,47,2,NULL),(1876,59,81,2,NULL),(1877,244,73,2,NULL),(1878,255,30,2,NULL),(1879,14,47,2,NULL),(1880,63,81,2,NULL),(1881,260,73,2,NULL),(1882,255,33,2,NULL),(1883,66,81,2,NULL),(1884,15,47,2,NULL),(1885,57,19,2,NULL),(1886,255,38,2,NULL),(1887,68,81,2,NULL),(1888,112,47,2,NULL),(1889,180,19,2,NULL),(1890,255,72,2,NULL),(1891,73,81,2,NULL),(1892,117,47,2,NULL),(1893,184,19,2,NULL),(1894,255,74,2,NULL),(1895,122,47,2,NULL),(1896,92,81,2,NULL),(1897,187,19,2,NULL),(1898,255,75,2,NULL),(1899,95,81,2,NULL),(1900,126,47,2,NULL),(1901,191,19,2,NULL),(1902,255,20,2,NULL),(1903,131,47,2,NULL),(1904,108,81,2,NULL),(1905,193,19,2,NULL),(1906,255,28,2,NULL),(1907,121,81,2,NULL),(1908,189,47,2,NULL),(1909,227,19,2,NULL),(1910,255,32,2,NULL),(1911,198,47,2,NULL),(1912,125,81,2,NULL),(1913,229,19,2,NULL),(1914,255,35,2,NULL),(1915,3,48,2,NULL),(1916,194,81,2,NULL),(1917,233,19,2,NULL),(1918,255,56,2,NULL),(1919,8,48,2,NULL),(1920,16,8,2,NULL),(1921,236,19,2,NULL),(1922,255,57,2,NULL),(1923,11,48,2,NULL),(1924,18,14,2,NULL),(1925,244,19,2,NULL),(1926,255,62,2,NULL),(1927,14,48,2,NULL),(1928,59,14,2,NULL),(1929,260,19,2,NULL),(1930,15,48,2,NULL),(1931,255,76,2,NULL),(1932,63,14,2,NULL),(1933,58,31,2,NULL),(1934,112,48,2,NULL),(1935,255,92,2,NULL),(1936,66,14,2,NULL),(1937,116,31,2,NULL),(1938,255,31,2,NULL),(1939,117,48,2,NULL),(1940,68,14,2,NULL),(1941,119,31,2,NULL),(1942,122,48,2,NULL),(1943,255,39,2,NULL),(1944,73,14,2,NULL),(1945,123,31,2,NULL),(1946,126,48,2,NULL),(1947,255,42,2,NULL),(1948,92,14,2,NULL),(1949,128,31,2,NULL),(1950,131,48,2,NULL),(1951,255,45,2,NULL),(1952,95,14,2,NULL),(1953,129,31,2,NULL),(1954,189,48,2,NULL),(1955,255,58,2,NULL),(1956,108,14,2,NULL),(1957,134,31,2,NULL),(1958,255,79,2,NULL),(1959,198,48,2,NULL),(1960,121,14,2,NULL),(1961,139,31,2,NULL),(1962,3,49,2,NULL),(1963,255,85,2,NULL),(1964,125,14,2,NULL),(1965,142,31,2,NULL),(1966,255,89,2,NULL),(1967,8,49,2,NULL),(1968,194,14,2,NULL),(1969,57,21,2,NULL),(1970,11,49,2,NULL),(1971,255,93,2,NULL),(1972,18,16,2,NULL),(1973,180,21,2,NULL),(1974,14,49,2,NULL),(1975,255,47,2,NULL),(1976,59,16,2,NULL),(1977,184,21,2,NULL),(1978,15,49,2,NULL),(1979,255,48,2,NULL),(1980,63,16,2,NULL),(1981,187,21,2,NULL),(1982,255,49,2,NULL),(1983,112,49,2,NULL),(1984,66,16,2,NULL),(1985,191,21,2,NULL),(1986,255,61,2,NULL),(1987,117,49,2,NULL),(1988,68,16,2,NULL),(1989,193,21,2,NULL),(1990,255,82,2,NULL),(1991,122,49,2,NULL),(1992,73,16,2,NULL),(1993,227,21,2,NULL),(1994,255,86,2,NULL),(1995,126,49,2,NULL),(1996,92,16,2,NULL),(1997,229,21,2,NULL),(1998,255,87,2,NULL),(1999,131,49,2,NULL),(2000,95,16,2,NULL),(2001,233,21,2,NULL),(2002,255,88,2,NULL),(2003,189,49,2,NULL),(2004,108,16,2,NULL),(2005,236,21,2,NULL),(2006,198,49,2,NULL),(2007,121,16,2,NULL),(2008,244,21,2,NULL),(2009,175,47,2,NULL),(2010,3,61,2,NULL),(2011,125,16,2,NULL),(2012,260,21,2,NULL),(2013,18,47,2,NULL),(2014,8,61,2,NULL),(2015,194,16,2,NULL),(2016,57,30,2,NULL),(2017,59,47,2,NULL),(2018,11,61,2,NULL),(2019,18,17,2,NULL),(2020,180,30,2,NULL),(2021,63,47,2,NULL),(2022,14,61,2,NULL),(2023,59,17,2,NULL),(2024,66,47,2,NULL),(2025,184,30,2,NULL),(2026,15,61,2,NULL),(2027,63,17,2,NULL),(2028,187,30,2,NULL),(2029,68,47,2,NULL),(2030,112,61,2,NULL),(2031,66,17,2,NULL),(2032,191,30,2,NULL),(2033,73,47,2,NULL),(2034,117,61,2,NULL),(2035,68,17,2,NULL),(2036,193,30,2,NULL),(2037,92,47,2,NULL),(2038,122,61,2,NULL),(2039,73,17,2,NULL),(2040,227,30,2,NULL),(2041,95,47,2,NULL),(2042,126,61,2,NULL),(2043,92,17,2,NULL),(2044,229,30,2,NULL),(2045,108,47,2,NULL),(2046,95,17,2,NULL),(2047,131,61,2,NULL),(2048,233,30,2,NULL),(2049,121,47,2,NULL),(2050,189,61,2,NULL),(2051,108,17,2,NULL),(2052,125,47,2,NULL),(2053,236,30,2,NULL),(2054,198,61,2,NULL),(2055,121,17,2,NULL),(2056,244,30,2,NULL),(2057,194,47,2,NULL),(2058,3,82,2,NULL),(2059,125,17,2,NULL),(2060,260,30,2,NULL),(2061,16,47,2,NULL),(2062,8,82,2,NULL),(2063,194,17,2,NULL),(2064,57,33,2,NULL),(2065,58,47,2,NULL),(2066,11,82,2,NULL),(2067,18,52,2,NULL),(2068,180,33,2,NULL),(2069,116,47,2,NULL),(2070,14,82,2,NULL),(2071,59,52,2,NULL),(2072,184,33,2,NULL),(2073,119,47,2,NULL),(2074,63,52,2,NULL),(2075,15,82,2,NULL),(2076,123,47,2,NULL),(2077,187,33,2,NULL),(2078,112,82,2,NULL),(2079,66,52,2,NULL),(2080,191,33,2,NULL),(2081,128,47,2,NULL),(2082,117,82,2,NULL),(2083,68,52,2,NULL),(2084,193,33,2,NULL),(2085,129,47,2,NULL),(2086,122,82,2,NULL),(2087,73,52,2,NULL),(2088,227,33,2,NULL),(2089,134,47,2,NULL),(2090,126,82,2,NULL),(2091,92,52,2,NULL),(2092,139,47,2,NULL),(2093,229,33,2,NULL),(2094,131,82,2,NULL),(2095,95,52,2,NULL),(2096,233,33,2,NULL),(2097,142,47,2,NULL),(2098,189,82,2,NULL),(2099,108,52,2,NULL),(2100,236,33,2,NULL),(2101,72,47,2,NULL),(2102,198,82,2,NULL),(2103,121,52,2,NULL),(2104,244,33,2,NULL),(2105,135,47,2,NULL),(2106,3,86,2,NULL),(2107,125,52,2,NULL),(2108,260,33,2,NULL),(2109,140,47,2,NULL),(2110,8,86,2,NULL),(2111,194,52,2,NULL),(2112,57,38,2,NULL),(2113,143,47,2,NULL),(2114,11,86,2,NULL),(2115,18,53,2,NULL),(2116,180,38,2,NULL),(2117,148,47,2,NULL),(2118,14,86,2,NULL),(2119,59,53,2,NULL),(2120,184,38,2,NULL),(2121,150,47,2,NULL),(2122,15,86,2,NULL),(2123,63,53,2,NULL),(2124,187,38,2,NULL),(2125,173,47,2,NULL),(2126,112,86,2,NULL),(2127,66,53,2,NULL),(2128,220,47,2,NULL),(2129,191,38,2,NULL),(2130,117,86,2,NULL),(2131,68,53,2,NULL),(2132,193,38,2,NULL),(2133,224,47,2,NULL),(2134,122,86,2,NULL),(2135,73,53,2,NULL),(2136,230,47,2,NULL),(2137,227,38,2,NULL),(2138,126,86,2,NULL),(2139,92,53,2,NULL),(2140,229,38,2,NULL),(2141,234,47,2,NULL),(2142,131,86,2,NULL),(2143,95,53,2,NULL),(2144,233,38,2,NULL),(2145,237,47,2,NULL),(2146,189,86,2,NULL),(2147,108,53,2,NULL),(2148,266,47,2,NULL),(2149,236,38,2,NULL),(2150,198,86,2,NULL),(2151,121,53,2,NULL),(2152,57,47,2,NULL),(2153,244,38,2,NULL),(2154,3,87,2,NULL),(2155,125,53,2,NULL),(2156,260,38,2,NULL),(2157,180,47,2,NULL),(2158,8,87,2,NULL),(2159,194,53,2,NULL),(2160,57,72,2,NULL),(2161,184,47,2,NULL),(2162,11,87,2,NULL),(2163,18,55,2,NULL),(2164,180,72,2,NULL),(2165,187,47,2,NULL),(2166,14,87,2,NULL),(2167,59,55,2,NULL),(2168,184,72,2,NULL),(2169,191,47,2,NULL),(2170,15,87,2,NULL),(2171,63,55,2,NULL),(2172,187,72,2,NULL),(2173,193,47,2,NULL),(2174,112,87,2,NULL),(2175,66,55,2,NULL),(2176,227,47,2,NULL),(2177,191,72,2,NULL),(2178,117,87,2,NULL),(2179,68,55,2,NULL),(2180,193,72,2,NULL),(2181,229,47,2,NULL),(2182,122,87,2,NULL),(2183,73,55,2,NULL),(2184,227,72,2,NULL),(2185,233,47,2,NULL),(2186,126,87,2,NULL),(2187,92,55,2,NULL),(2188,229,72,2,NULL),(2189,236,47,2,NULL),(2190,131,87,2,NULL),(2191,95,55,2,NULL),(2192,233,72,2,NULL),(2193,244,47,2,NULL),(2194,189,87,2,NULL),(2195,108,55,2,NULL),(2196,236,72,2,NULL),(2197,260,47,2,NULL),(2198,198,87,2,NULL),(2199,121,55,2,NULL),(2200,244,72,2,NULL),(2201,88,47,2,NULL),(2202,3,88,2,NULL),(2203,125,55,2,NULL),(2204,260,72,2,NULL),(2205,8,88,2,NULL),(2206,194,55,2,NULL),(2207,57,74,2,NULL),(2208,175,48,2,NULL),(2209,11,88,2,NULL),(2210,18,73,2,NULL),(2211,18,48,2,NULL),(2212,180,74,2,NULL),(2213,14,88,2,NULL),(2214,59,73,2,NULL),(2215,184,74,2,NULL),(2216,59,48,2,NULL),(2217,15,88,2,NULL),(2218,63,73,2,NULL),(2219,63,48,2,NULL),(2220,187,74,2,NULL),(2221,112,88,2,NULL),(2222,66,73,2,NULL),(2223,66,48,2,NULL),(2224,191,74,2,NULL),(2225,117,88,2,NULL),(2226,68,48,2,NULL),(2227,68,73,2,NULL),(2228,193,74,2,NULL),(2229,122,88,2,NULL),(2230,227,74,2,NULL),(2231,126,88,2,NULL),(2232,73,48,2,NULL),(2233,73,73,2,NULL),(2234,229,74,2,NULL),(2235,131,88,2,NULL),(2236,92,48,2,NULL),(2237,92,73,2,NULL),(2238,233,74,2,NULL),(2239,95,48,2,NULL),(2240,189,88,2,NULL),(2241,236,74,2,NULL),(2242,95,73,2,NULL),(2243,108,48,2,NULL),(2244,198,88,2,NULL),(2245,244,74,2,NULL),(2246,108,73,2,NULL),(2247,121,48,2,NULL),(2248,260,74,2,NULL),(2249,175,1,2,NULL),(2250,121,73,2,NULL),(2251,125,48,2,NULL),(2252,175,5,2,NULL),(2253,57,75,2,NULL),(2254,125,73,2,NULL),(2255,194,48,2,NULL),(2256,175,6,2,NULL),(2257,194,73,2,NULL),(2258,180,75,2,NULL),(2259,16,48,2,NULL),(2260,175,50,2,NULL),(2261,184,75,2,NULL),(2262,18,19,2,NULL),(2263,58,48,2,NULL),(2264,187,75,2,NULL),(2265,175,51,2,NULL),(2266,59,19,2,NULL),(2267,116,48,2,NULL),(2268,175,12,2,NULL),(2269,63,19,2,NULL),(2270,191,75,2,NULL),(2271,119,48,2,NULL),(2272,66,19,2,NULL),(2273,175,15,2,NULL),(2274,193,75,2,NULL),(2275,123,48,2,NULL),(2276,175,18,2,NULL),(2277,68,19,2,NULL),(2278,227,75,2,NULL),(2279,128,48,2,NULL),(2280,175,60,2,NULL),(2281,73,19,2,NULL),(2282,129,48,2,NULL),(2283,175,68,2,NULL),(2284,92,19,2,NULL),(2285,134,48,2,NULL),(2286,175,70,2,NULL),(2287,95,19,2,NULL),(2288,229,75,2,NULL),(2289,139,48,2,NULL),(2290,175,81,2,NULL),(2291,108,19,2,NULL),(2292,233,75,2,NULL),(2293,142,48,2,NULL),(2294,236,75,2,NULL),(2295,175,14,2,NULL),(2296,121,19,2,NULL),(2297,72,48,2,NULL),(2298,244,75,2,NULL),(2299,175,16,2,NULL),(2300,125,19,2,NULL),(2301,135,48,2,NULL),(2302,175,17,2,NULL),(2303,260,75,2,NULL),(2304,194,19,2,NULL),(2305,140,48,2,NULL),(2306,175,52,2,NULL),(2307,58,8,2,NULL),(2308,57,20,2,NULL),(2309,143,48,2,NULL),(2310,175,53,2,NULL),(2311,116,8,2,NULL),(2312,180,20,2,NULL),(2313,148,48,2,NULL),(2314,175,55,2,NULL),(2315,184,20,2,NULL),(2316,119,8,2,NULL),(2317,150,48,2,NULL),(2318,175,73,2,NULL),(2319,187,20,2,NULL),(2320,123,8,2,NULL),(2321,173,48,2,NULL),(2322,175,19,2,NULL),(2323,191,20,2,NULL),(2324,128,8,2,NULL),(2325,220,48,2,NULL),(2326,175,21,2,NULL),(2327,193,20,2,NULL),(2328,129,8,2,NULL),(2329,224,48,2,NULL),(2330,175,30,2,NULL),(2331,227,20,2,NULL),(2332,134,8,2,NULL),(2333,230,48,2,NULL),(2334,175,33,2,NULL),(2335,229,20,2,NULL),(2336,139,8,2,NULL),(2337,234,48,2,NULL),(2338,175,38,2,NULL),(2339,233,20,2,NULL),(2340,142,8,2,NULL),(2341,237,48,2,NULL),(2342,175,72,2,NULL),(2343,18,21,2,NULL),(2344,236,20,2,NULL),(2345,266,48,2,NULL),(2346,175,74,2,NULL),(2347,244,20,2,NULL),(2348,59,21,2,NULL),(2349,57,48,2,NULL),(2350,175,75,2,NULL),(2351,260,20,2,NULL),(2352,63,21,2,NULL),(2353,180,48,2,NULL),(2354,175,20,2,NULL),(2355,72,31,2,NULL),(2356,66,21,2,NULL),(2357,184,48,2,NULL),(2358,175,28,2,NULL),(2359,135,31,2,NULL),(2360,68,21,2,NULL),(2361,187,48,2,NULL),(2362,140,31,2,NULL),(2363,175,32,2,NULL),(2364,73,21,2,NULL),(2365,191,48,2,NULL),(2366,175,35,2,NULL),(2367,143,31,2,NULL),(2368,92,21,2,NULL),(2369,193,48,2,NULL),(2370,175,56,2,NULL),(2371,148,31,2,NULL),(2372,95,21,2,NULL),(2373,227,48,2,NULL),(2374,150,31,2,NULL),(2375,175,57,2,NULL),(2376,108,21,2,NULL),(2377,229,48,2,NULL),(2378,175,62,2,NULL),(2379,173,31,2,NULL),(2380,121,21,2,NULL),(2381,233,48,2,NULL),(2382,220,31,2,NULL),(2383,175,76,2,NULL),(2384,125,21,2,NULL),(2385,236,48,2,NULL),(2386,175,92,2,NULL),(2387,224,31,2,NULL),(2388,194,21,2,NULL),(2389,244,48,2,NULL),(2390,175,39,2,NULL),(2391,230,31,2,NULL),(2392,18,30,2,NULL),(2393,260,48,2,NULL),(2394,59,30,2,NULL),(2395,175,42,2,NULL),(2396,234,31,2,NULL),(2397,175,45,2,NULL),(2398,63,30,2,NULL),(2399,237,31,2,NULL),(2400,175,58,2,NULL),(2401,266,31,2,NULL),(2402,66,30,2,NULL),(2403,88,48,2,NULL),(2404,175,79,2,NULL),(2405,68,30,2,NULL),(2406,57,28,2,NULL),(2407,200,15,2,NULL),(2408,175,85,2,NULL),(2409,200,16,2,NULL),(2410,180,28,2,NULL),(2411,73,30,2,NULL),(2412,175,89,2,NULL),(2413,200,32,2,NULL),(2414,92,30,2,NULL),(2415,184,28,2,NULL),(2416,175,93,2,NULL),(2417,200,42,2,NULL),(2418,95,30,2,NULL),(2419,187,28,2,NULL),(2420,175,49,2,NULL),(2421,200,48,2,NULL),(2422,108,30,2,NULL),(2423,191,28,2,NULL),(2424,175,61,2,NULL),(2425,121,30,2,NULL),(2426,193,28,2,NULL),(2427,18,49,2,NULL),(2428,175,82,2,NULL),(2429,125,30,2,NULL),(2430,227,28,2,NULL),(2431,59,49,2,NULL),(2432,175,86,2,NULL),(2433,194,30,2,NULL),(2434,229,28,2,NULL),(2435,63,49,2,NULL),(2436,175,87,2,NULL),(2437,18,33,2,NULL),(2438,233,28,2,NULL),(2439,66,49,2,NULL),(2440,175,88,2,NULL),(2441,59,33,2,NULL),(2442,236,28,2,NULL),(2443,68,49,2,NULL),(2444,63,33,2,NULL),(2445,244,28,2,NULL),(2446,16,12,2,NULL),(2447,73,49,2,NULL),(2448,66,33,2,NULL),(2449,58,12,2,NULL),(2450,260,28,2,NULL),(2451,92,49,2,NULL),(2452,116,12,2,NULL),(2453,68,33,2,NULL),(2454,57,32,2,NULL),(2455,95,49,2,NULL),(2456,180,32,2,NULL),(2457,73,33,2,NULL),(2458,119,12,2,NULL),(2459,108,49,2,NULL),(2460,184,32,2,NULL),(2461,123,12,2,NULL),(2462,92,33,2,NULL),(2463,121,49,2,NULL),(2464,187,32,2,NULL),(2465,128,12,2,NULL),(2466,95,33,2,NULL),(2467,125,49,2,NULL),(2468,129,12,2,NULL),(2469,191,32,2,NULL),(2470,108,33,2,NULL),(2471,194,49,2,NULL),(2472,121,33,2,NULL),(2473,134,12,2,NULL),(2474,193,32,2,NULL),(2475,16,49,2,NULL),(2476,125,33,2,NULL),(2477,139,12,2,NULL),(2478,227,32,2,NULL),(2479,58,49,2,NULL),(2480,194,33,2,NULL),(2481,142,12,2,NULL),(2482,229,32,2,NULL),(2483,116,49,2,NULL),(2484,233,32,2,NULL),(2485,72,12,2,NULL),(2486,18,38,2,NULL),(2487,119,49,2,NULL),(2488,236,32,2,NULL),(2489,59,38,2,NULL),(2490,135,12,2,NULL),(2491,123,49,2,NULL),(2492,63,38,2,NULL),(2493,140,12,2,NULL),(2494,244,32,2,NULL),(2495,128,49,2,NULL),(2496,260,32,2,NULL),(2497,143,12,2,NULL),(2498,66,38,2,NULL),(2499,129,49,2,NULL),(2500,57,35,2,NULL),(2501,148,12,2,NULL),(2502,68,38,2,NULL),(2503,134,49,2,NULL),(2504,180,35,2,NULL),(2505,150,12,2,NULL),(2506,73,38,2,NULL),(2507,139,49,2,NULL),(2508,184,35,2,NULL),(2509,173,12,2,NULL),(2510,92,38,2,NULL),(2511,142,49,2,NULL),(2512,187,35,2,NULL),(2513,220,12,2,NULL),(2514,95,38,2,NULL),(2515,72,49,2,NULL),(2516,191,35,2,NULL),(2517,224,12,2,NULL),(2518,108,38,2,NULL),(2519,135,49,2,NULL),(2520,121,38,2,NULL),(2521,230,12,2,NULL),(2522,193,35,2,NULL),(2523,140,49,2,NULL),(2524,125,38,2,NULL),(2525,227,35,2,NULL),(2526,234,12,2,NULL),(2527,143,49,2,NULL),(2528,194,38,2,NULL),(2529,237,12,2,NULL),(2530,229,35,2,NULL),(2531,148,49,2,NULL),(2532,233,35,2,NULL),(2533,266,12,2,NULL),(2534,18,72,2,NULL),(2535,150,49,2,NULL),(2536,236,35,2,NULL),(2537,59,72,2,NULL),(2538,88,12,2,NULL),(2539,173,49,2,NULL),(2540,244,35,2,NULL),(2541,63,72,2,NULL),(2542,220,49,2,NULL),(2543,260,35,2,NULL),(2544,66,72,2,NULL),(2545,224,49,2,NULL),(2546,57,56,2,NULL),(2547,68,72,2,NULL),(2548,16,15,2,NULL),(2549,230,49,2,NULL),(2550,180,56,2,NULL),(2551,58,15,2,NULL),(2552,73,72,2,NULL),(2553,234,49,2,NULL),(2554,116,15,2,NULL),(2555,184,56,2,NULL),(2556,92,72,2,NULL),(2557,237,49,2,NULL),(2558,119,15,2,NULL),(2559,187,56,2,NULL),(2560,95,72,2,NULL),(2561,266,49,2,NULL),(2562,191,56,2,NULL),(2563,123,15,2,NULL),(2564,108,72,2,NULL),(2565,57,49,2,NULL),(2566,128,15,2,NULL),(2567,121,72,2,NULL),(2568,193,56,2,NULL),(2569,180,49,2,NULL),(2570,129,15,2,NULL),(2571,125,72,2,NULL),(2572,227,56,2,NULL),(2573,184,49,2,NULL),(2574,134,15,2,NULL),(2575,229,56,2,NULL),(2576,194,72,2,NULL),(2577,187,49,2,NULL),(2578,139,15,2,NULL),(2579,233,56,2,NULL),(2580,18,74,2,NULL),(2581,191,49,2,NULL),(2582,142,15,2,NULL),(2583,236,56,2,NULL),(2584,59,74,2,NULL),(2585,193,49,2,NULL),(2586,72,15,2,NULL),(2587,244,56,2,NULL),(2588,63,74,2,NULL),(2589,227,49,2,NULL),(2590,135,15,2,NULL),(2591,260,56,2,NULL),(2592,66,74,2,NULL),(2593,229,49,2,NULL),(2594,57,57,2,NULL),(2595,140,15,2,NULL),(2596,68,74,2,NULL),(2597,233,49,2,NULL),(2598,143,15,2,NULL),(2599,180,57,2,NULL),(2600,73,74,2,NULL),(2601,236,49,2,NULL),(2602,148,15,2,NULL),(2603,92,74,2,NULL),(2604,184,57,2,NULL),(2605,244,49,2,NULL),(2606,150,15,2,NULL),(2607,187,57,2,NULL),(2608,95,74,2,NULL),(2609,260,49,2,NULL),(2610,173,15,2,NULL),(2611,191,57,2,NULL),(2612,108,74,2,NULL),(2613,88,49,2,NULL),(2614,220,15,2,NULL),(2615,193,57,2,NULL),(2616,121,74,2,NULL),(2617,224,15,2,NULL),(2618,227,57,2,NULL),(2619,125,74,2,NULL),(2620,18,61,2,NULL),(2621,230,15,2,NULL),(2622,59,61,2,NULL),(2623,229,57,2,NULL),(2624,194,74,2,NULL),(2625,234,15,2,NULL),(2626,233,57,2,NULL),(2627,63,61,2,NULL),(2628,18,75,2,NULL),(2629,237,15,2,NULL),(2630,66,61,2,NULL),(2631,236,57,2,NULL),(2632,59,75,2,NULL),(2633,266,15,2,NULL),(2634,68,61,2,NULL),(2635,63,75,2,NULL),(2636,244,57,2,NULL),(2637,88,15,2,NULL),(2638,73,61,2,NULL),(2639,260,57,2,NULL),(2640,66,75,2,NULL),(2641,32,15,2,NULL),(2642,92,61,2,NULL),(2643,57,62,2,NULL),(2644,68,75,2,NULL),(2645,32,16,2,NULL),(2646,95,61,2,NULL),(2647,180,62,2,NULL),(2648,73,75,2,NULL),(2649,32,32,2,NULL),(2650,108,61,2,NULL),(2651,184,62,2,NULL),(2652,92,75,2,NULL),(2653,32,42,2,NULL),(2654,121,61,2,NULL),(2655,187,62,2,NULL),(2656,95,75,2,NULL),(2657,32,48,2,NULL),(2658,125,61,2,NULL),(2659,191,62,2,NULL),(2660,108,75,2,NULL),(2661,194,61,2,NULL),(2662,121,75,2,NULL),(2663,193,62,2,NULL),(2664,16,18,2,NULL),(2665,16,61,2,NULL),(2666,58,18,2,NULL),(2667,227,62,2,NULL),(2668,125,75,2,NULL),(2669,58,61,2,NULL),(2670,116,18,2,NULL),(2671,229,62,2,NULL),(2672,194,75,2,NULL),(2673,116,61,2,NULL),(2674,119,18,2,NULL),(2675,233,62,2,NULL),(2676,18,20,2,NULL),(2677,119,61,2,NULL),(2678,123,18,2,NULL),(2679,236,62,2,NULL),(2680,59,20,2,NULL),(2681,123,61,2,NULL),(2682,128,18,2,NULL),(2683,244,62,2,NULL),(2684,63,20,2,NULL),(2685,128,61,2,NULL),(2686,129,18,2,NULL),(2687,260,62,2,NULL),(2688,66,20,2,NULL),(2689,129,61,2,NULL),(2690,134,18,2,NULL),(2691,57,76,2,NULL),(2692,68,20,2,NULL),(2693,134,61,2,NULL),(2694,139,18,2,NULL),(2695,180,76,2,NULL),(2696,73,20,2,NULL),(2697,139,61,2,NULL),(2698,142,18,2,NULL),(2699,184,76,2,NULL),(2700,92,20,2,NULL),(2701,142,61,2,NULL),(2702,72,18,2,NULL),(2703,187,76,2,NULL),(2704,95,20,2,NULL),(2705,72,61,2,NULL),(2706,135,18,2,NULL),(2707,191,76,2,NULL),(2708,108,20,2,NULL),(2709,135,61,2,NULL),(2710,140,18,2,NULL),(2711,193,76,2,NULL),(2712,121,20,2,NULL),(2713,140,61,2,NULL),(2714,143,18,2,NULL),(2715,227,76,2,NULL),(2716,125,20,2,NULL),(2717,143,61,2,NULL),(2718,148,18,2,NULL),(2719,229,76,2,NULL),(2720,194,20,2,NULL),(2721,148,61,2,NULL),(2722,150,18,2,NULL),(2723,233,76,2,NULL),(2724,72,8,2,NULL),(2725,150,61,2,NULL),(2726,173,18,2,NULL),(2727,236,76,2,NULL),(2728,135,8,2,NULL),(2729,173,61,2,NULL),(2730,220,18,2,NULL),(2731,244,76,2,NULL),(2732,140,8,2,NULL),(2733,220,61,2,NULL),(2734,224,18,2,NULL),(2735,260,76,2,NULL),(2736,143,8,2,NULL),(2737,224,61,2,NULL),(2738,230,18,2,NULL),(2739,57,92,2,NULL),(2740,148,8,2,NULL),(2741,230,61,2,NULL),(2742,234,18,2,NULL),(2743,180,92,2,NULL),(2744,150,8,2,NULL),(2745,234,61,2,NULL),(2746,237,18,2,NULL),(2747,184,92,2,NULL),(2748,173,8,2,NULL),(2749,237,61,2,NULL),(2750,266,18,2,NULL),(2751,266,61,2,NULL),(2752,187,92,2,NULL),(2753,220,8,2,NULL),(2754,88,18,2,NULL),(2755,57,61,2,NULL),(2756,191,92,2,NULL),(2757,224,8,2,NULL),(2758,180,61,2,NULL),(2759,230,8,2,NULL),(2760,193,92,2,NULL),(2761,184,61,2,NULL),(2762,16,60,2,NULL),(2763,227,92,2,NULL),(2764,234,8,2,NULL),(2765,187,61,2,NULL),(2766,58,60,2,NULL),(2767,229,92,2,NULL),(2768,237,8,2,NULL),(2769,116,60,2,NULL),(2770,191,61,2,NULL),(2771,233,92,2,NULL),(2772,266,8,2,NULL),(2773,193,61,2,NULL),(2774,119,60,2,NULL),(2775,236,92,2,NULL),(2776,18,28,2,NULL),(2777,227,61,2,NULL),(2778,123,60,2,NULL),(2779,244,92,2,NULL),(2780,59,28,2,NULL),(2781,229,61,2,NULL),(2782,128,60,2,NULL),(2783,260,92,2,NULL),(2784,63,28,2,NULL),(2785,129,60,2,NULL),(2786,233,61,2,NULL),(2787,88,31,2,NULL),(2788,66,28,2,NULL),(2789,236,61,2,NULL),(2790,134,60,2,NULL),(2791,57,39,2,NULL),(2792,68,28,2,NULL),(2793,244,61,2,NULL),(2794,139,60,2,NULL),(2795,180,39,2,NULL),(2796,73,28,2,NULL),(2797,260,61,2,NULL),(2798,142,60,2,NULL),(2799,184,39,2,NULL),(2800,92,28,2,NULL),(2801,88,61,2,NULL),(2802,72,60,2,NULL),(2803,187,39,2,NULL),(2804,95,28,2,NULL),(2805,135,60,2,NULL),(2806,191,39,2,NULL),(2807,108,28,2,NULL),(2808,18,82,2,NULL),(2809,140,60,2,NULL),(2810,59,82,2,NULL),(2811,193,39,2,NULL),(2812,121,28,2,NULL),(2813,143,60,2,NULL),(2814,63,82,2,NULL),(2815,227,39,2,NULL),(2816,125,28,2,NULL),(2817,148,60,2,NULL),(2818,66,82,2,NULL),(2819,229,39,2,NULL),(2820,194,28,2,NULL),(2821,150,60,2,NULL),(2822,68,82,2,NULL),(2823,233,39,2,NULL),(2824,18,32,2,NULL),(2825,173,60,2,NULL),(2826,73,82,2,NULL),(2827,59,32,2,NULL),(2828,236,39,2,NULL),(2829,220,60,2,NULL),(2830,92,82,2,NULL),(2831,63,32,2,NULL),(2832,244,39,2,NULL),(2833,224,60,2,NULL),(2834,95,82,2,NULL),(2835,66,32,2,NULL),(2836,260,39,2,NULL),(2837,230,60,2,NULL),(2838,108,82,2,NULL),(2839,68,32,2,NULL),(2840,57,42,2,NULL),(2841,234,60,2,NULL),(2842,121,82,2,NULL),(2843,180,42,2,NULL),(2844,73,32,2,NULL),(2845,237,60,2,NULL),(2846,125,82,2,NULL),(2847,92,32,2,NULL),(2848,184,42,2,NULL),(2849,266,60,2,NULL),(2850,194,82,2,NULL),(2851,95,32,2,NULL),(2852,187,42,2,NULL),(2853,88,60,2,NULL),(2854,16,82,2,NULL),(2855,191,42,2,NULL),(2856,108,32,2,NULL),(2857,58,82,2,NULL),(2858,193,42,2,NULL),(2859,121,32,2,NULL),(2860,116,82,2,NULL),(2861,16,68,2,NULL),(2862,227,42,2,NULL),(2863,125,32,2,NULL),(2864,119,82,2,NULL),(2865,229,42,2,NULL),(2866,58,68,2,NULL),(2867,194,32,2,NULL),(2868,123,82,2,NULL),(2869,18,35,2,NULL),(2870,233,42,2,NULL),(2871,116,68,2,NULL),(2872,128,82,2,NULL),(2873,236,42,2,NULL),(2874,119,68,2,NULL),(2875,59,35,2,NULL),(2876,129,82,2,NULL),(2877,123,68,2,NULL),(2878,244,42,2,NULL),(2879,63,35,2,NULL),(2880,134,82,2,NULL),(2881,260,42,2,NULL),(2882,128,68,2,NULL),(2883,139,82,2,NULL),(2884,129,68,2,NULL),(2885,57,45,2,NULL),(2886,142,82,2,NULL),(2887,134,68,2,NULL),(2888,180,45,2,NULL),(2889,66,35,2,NULL),(2890,72,82,2,NULL),(2891,139,68,2,NULL),(2892,68,35,2,NULL),(2893,184,45,2,NULL),(2894,135,82,2,NULL),(2895,142,68,2,NULL),(2896,187,45,2,NULL),(2897,73,35,2,NULL),(2898,140,82,2,NULL),(2899,72,68,2,NULL),(2900,191,45,2,NULL),(2901,92,35,2,NULL),(2902,143,82,2,NULL),(2903,135,68,2,NULL),(2904,193,45,2,NULL),(2905,95,35,2,NULL),(2906,148,82,2,NULL),(2907,140,68,2,NULL),(2908,227,45,2,NULL),(2909,108,35,2,NULL),(2910,150,82,2,NULL),(2911,143,68,2,NULL),(2912,229,45,2,NULL),(2913,121,35,2,NULL),(2914,173,82,2,NULL),(2915,148,68,2,NULL),(2916,233,45,2,NULL),(2917,125,35,2,NULL),(2918,220,82,2,NULL),(2919,150,68,2,NULL),(2920,236,45,2,NULL),(2921,194,35,2,NULL),(2922,224,82,2,NULL),(2923,173,68,2,NULL),(2924,244,45,2,NULL),(2925,18,56,2,NULL),(2926,230,82,2,NULL),(2927,220,68,2,NULL),(2928,260,45,2,NULL),(2929,59,56,2,NULL),(2930,234,82,2,NULL),(2931,224,68,2,NULL),(2932,57,58,2,NULL),(2933,63,56,2,NULL),(2934,237,82,2,NULL),(2935,230,68,2,NULL),(2936,180,58,2,NULL),(2937,66,56,2,NULL),(2938,266,82,2,NULL),(2939,234,68,2,NULL),(2940,184,58,2,NULL),(2941,68,56,2,NULL),(2942,57,82,2,NULL),(2943,237,68,2,NULL),(2944,187,58,2,NULL),(2945,73,56,2,NULL),(2946,180,82,2,NULL),(2947,266,68,2,NULL),(2948,191,58,2,NULL),(2949,92,56,2,NULL),(2950,184,82,2,NULL),(2951,193,58,2,NULL),(2952,95,56,2,NULL),(2953,88,68,2,NULL),(2954,187,82,2,NULL),(2955,227,58,2,NULL),(2956,108,56,2,NULL),(2957,191,82,2,NULL),(2958,229,58,2,NULL),(2959,121,56,2,NULL),(2960,193,82,2,NULL),(2961,16,70,2,NULL),(2962,233,58,2,NULL),(2963,125,56,2,NULL),(2964,227,82,2,NULL),(2965,236,58,2,NULL),(2966,58,70,2,NULL),(2967,194,56,2,NULL),(2968,229,82,2,NULL),(2969,116,70,2,NULL),(2970,244,58,2,NULL),(2971,18,57,2,NULL),(2972,233,82,2,NULL),(2973,119,70,2,NULL),(2974,260,58,2,NULL),(2975,59,57,2,NULL),(2976,236,82,2,NULL),(2977,123,70,2,NULL),(2978,57,79,2,NULL),(2979,63,57,2,NULL),(2980,244,82,2,NULL),(2981,128,70,2,NULL),(2982,180,79,2,NULL),(2983,66,57,2,NULL),(2984,260,82,2,NULL),(2985,129,70,2,NULL),(2986,184,79,2,NULL),(2987,68,57,2,NULL),(2988,88,82,2,NULL),(2989,134,70,2,NULL),(2990,187,79,2,NULL),(2991,73,57,2,NULL),(2992,139,70,2,NULL),(2993,191,79,2,NULL),(2994,92,57,2,NULL),(2995,18,86,2,NULL),(2996,142,70,2,NULL),(2997,193,79,2,NULL),(2998,95,57,2,NULL),(2999,72,70,2,NULL),(3000,59,86,2,NULL),(3001,227,79,2,NULL),(3002,108,57,2,NULL),(3003,135,70,2,NULL),(3004,63,86,2,NULL),(3005,229,79,2,NULL),(3006,121,57,2,NULL),(3007,140,70,2,NULL),(3008,66,86,2,NULL),(3009,233,79,2,NULL),(3010,125,57,2,NULL),(3011,143,70,2,NULL),(3012,68,86,2,NULL),(3013,236,79,2,NULL),(3014,194,57,2,NULL),(3015,148,70,2,NULL),(3016,73,86,2,NULL),(3017,244,79,2,NULL),(3018,18,62,2,NULL),(3019,92,86,2,NULL),(3020,150,70,2,NULL),(3021,260,79,2,NULL),(3022,59,62,2,NULL),(3023,95,86,2,NULL),(3024,57,85,2,NULL),(3025,63,62,2,NULL),(3026,108,86,2,NULL),(3027,180,85,2,NULL),(3028,66,62,2,NULL),(3029,121,86,2,NULL),(3030,173,70,2,NULL),(3031,184,85,2,NULL),(3032,68,62,2,NULL),(3033,220,70,2,NULL),(3034,125,86,2,NULL),(3035,187,85,2,NULL),(3036,73,62,2,NULL),(3037,194,86,2,NULL),(3038,224,70,2,NULL),(3039,191,85,2,NULL),(3040,92,62,2,NULL),(3041,230,70,2,NULL),(3042,16,86,2,NULL),(3043,193,85,2,NULL),(3044,95,62,2,NULL),(3045,58,86,2,NULL),(3046,234,70,2,NULL),(3047,227,85,2,NULL),(3048,108,62,2,NULL),(3049,237,70,2,NULL),(3050,116,86,2,NULL),(3051,229,85,2,NULL),(3052,121,62,2,NULL),(3053,266,70,2,NULL),(3054,119,86,2,NULL),(3055,233,85,2,NULL),(3056,125,62,2,NULL),(3057,123,86,2,NULL),(3058,88,70,2,NULL),(3059,236,85,2,NULL),(3060,194,62,2,NULL),(3061,128,86,2,NULL),(3062,244,85,2,NULL),(3063,18,76,2,NULL),(3064,129,86,2,NULL),(3065,260,85,2,NULL),(3066,59,76,2,NULL),(3067,16,81,2,NULL),(3068,134,86,2,NULL),(3069,57,89,2,NULL),(3070,63,76,2,NULL),(3071,139,86,2,NULL),(3072,58,81,2,NULL),(3073,180,89,2,NULL),(3074,66,76,2,NULL),(3075,142,86,2,NULL),(3076,116,81,2,NULL),(3077,184,89,2,NULL),(3078,68,76,2,NULL),(3079,119,81,2,NULL),(3080,72,86,2,NULL),(3081,187,89,2,NULL),(3082,73,76,2,NULL),(3083,135,86,2,NULL),(3084,123,81,2,NULL),(3085,191,89,2,NULL),(3086,92,76,2,NULL),(3087,128,81,2,NULL),(3088,140,86,2,NULL),(3089,193,89,2,NULL),(3090,95,76,2,NULL),(3091,143,86,2,NULL),(3092,129,81,2,NULL),(3093,227,89,2,NULL),(3094,108,76,2,NULL),(3095,134,81,2,NULL),(3096,148,86,2,NULL),(3097,229,89,2,NULL),(3098,121,76,2,NULL),(3099,139,81,2,NULL),(3100,150,86,2,NULL),(3101,233,89,2,NULL),(3102,125,76,2,NULL),(3103,142,81,2,NULL),(3104,173,86,2,NULL),(3105,236,89,2,NULL),(3106,194,76,2,NULL),(3107,220,86,2,NULL),(3108,72,81,2,NULL),(3109,244,89,2,NULL),(3110,18,92,2,NULL),(3111,135,81,2,NULL),(3112,224,86,2,NULL),(3113,260,89,2,NULL),(3114,59,92,2,NULL),(3115,140,81,2,NULL),(3116,230,86,2,NULL),(3117,57,93,2,NULL),(3118,63,92,2,NULL),(3119,143,81,2,NULL),(3120,234,86,2,NULL),(3121,180,93,2,NULL),(3122,66,92,2,NULL),(3123,237,86,2,NULL),(3124,148,81,2,NULL),(3125,184,93,2,NULL),(3126,68,92,2,NULL),(3127,150,81,2,NULL),(3128,266,86,2,NULL),(3129,187,93,2,NULL),(3130,73,92,2,NULL),(3131,173,81,2,NULL),(3132,57,86,2,NULL),(3133,191,93,2,NULL),(3134,92,92,2,NULL),(3135,220,81,2,NULL),(3136,180,86,2,NULL),(3137,193,93,2,NULL),(3138,95,92,2,NULL),(3139,224,81,2,NULL),(3140,184,86,2,NULL),(3141,227,93,2,NULL),(3142,108,92,2,NULL),(3143,230,81,2,NULL),(3144,187,86,2,NULL),(3145,229,93,2,NULL),(3146,121,92,2,NULL),(3147,234,81,2,NULL),(3148,191,86,2,NULL),(3149,233,93,2,NULL),(3150,125,92,2,NULL),(3151,237,81,2,NULL),(3152,193,86,2,NULL),(3153,236,93,2,NULL),(3154,194,92,2,NULL),(3155,266,81,2,NULL),(3156,227,86,2,NULL),(3157,244,93,2,NULL),(3158,229,86,2,NULL),(3159,260,93,2,NULL),(3160,88,81,2,NULL),(3161,88,8,2,NULL),(3162,233,86,2,NULL),(3163,18,39,2,NULL),(3164,236,86,2,NULL),(3165,59,39,2,NULL),(3166,244,86,2,NULL),(3167,63,39,2,NULL),(3168,260,86,2,NULL),(3169,66,39,2,NULL),(3170,88,86,2,NULL),(3171,68,39,2,NULL),(3172,57,87,2,NULL),(3173,73,39,2,NULL),(3174,180,87,2,NULL),(3175,18,87,2,NULL),(3176,92,39,2,NULL),(3177,184,87,2,NULL),(3178,59,87,2,NULL),(3179,95,39,2,NULL),(3180,187,87,2,NULL),(3181,63,87,2,NULL),(3182,108,39,2,NULL),(3183,66,87,2,NULL),(3184,191,87,2,NULL),(3185,121,39,2,NULL),(3186,193,87,2,NULL),(3187,68,87,2,NULL),(3188,125,39,2,NULL),(3189,73,87,2,NULL),(3190,227,87,2,NULL),(3191,194,39,2,NULL),(3192,92,87,2,NULL),(3193,229,87,2,NULL),(3194,18,42,2,NULL),(3195,95,87,2,NULL),(3196,233,87,2,NULL),(3197,59,42,2,NULL),(3198,236,87,2,NULL),(3199,108,87,2,NULL),(3200,63,42,2,NULL),(3201,244,87,2,NULL),(3202,121,87,2,NULL),(3203,66,42,2,NULL),(3204,125,87,2,NULL),(3205,260,87,2,NULL),(3206,68,42,2,NULL),(3207,57,88,2,NULL),(3208,194,87,2,NULL),(3209,73,42,2,NULL),(3210,16,87,2,NULL),(3211,180,88,2,NULL),(3212,92,42,2,NULL),(3213,184,88,2,NULL),(3214,58,87,2,NULL),(3215,95,42,2,NULL),(3216,116,87,2,NULL),(3217,187,88,2,NULL),(3218,108,42,2,NULL),(3219,191,88,2,NULL),(3220,119,87,2,NULL),(3221,121,42,2,NULL),(3222,193,88,2,NULL),(3223,123,87,2,NULL),(3224,125,42,2,NULL),(3225,227,88,2,NULL),(3226,128,87,2,NULL),(3227,194,42,2,NULL),(3228,229,88,2,NULL),(3229,18,45,2,NULL),(3230,129,87,2,NULL),(3231,233,88,2,NULL),(3232,59,45,2,NULL),(3233,134,87,2,NULL),(3234,236,88,2,NULL),(3235,63,45,2,NULL),(3236,139,87,2,NULL),(3237,244,88,2,NULL),(3238,66,45,2,NULL),(3239,260,88,2,NULL),(3240,142,87,2,NULL),(3241,68,45,2,NULL),(3242,72,87,2,NULL),(3243,88,1,2,NULL),(3244,73,45,2,NULL),(3245,88,5,2,NULL),(3246,135,87,2,NULL),(3247,92,45,2,NULL),(3248,88,6,2,NULL),(3249,140,87,2,NULL),(3250,95,45,2,NULL),(3251,88,50,2,NULL),(3252,143,87,2,NULL),(3253,108,45,2,NULL),(3254,148,87,2,NULL),(3255,88,51,2,NULL),(3256,121,45,2,NULL),(3257,150,87,2,NULL),(3258,88,14,2,NULL),(3259,125,45,2,NULL),(3260,173,87,2,NULL),(3261,88,16,2,NULL),(3262,194,45,2,NULL),(3263,88,17,2,NULL),(3264,220,87,2,NULL),(3265,18,58,2,NULL),(3266,224,87,2,NULL),(3267,88,52,2,NULL),(3268,59,58,2,NULL),(3269,230,87,2,NULL),(3270,88,53,2,NULL),(3271,63,58,2,NULL),(3272,88,55,2,NULL),(3273,234,87,2,NULL),(3274,66,58,2,NULL),(3275,237,87,2,NULL),(3276,88,73,2,NULL),(3277,68,58,2,NULL),(3278,266,87,2,NULL),(3279,88,19,2,NULL),(3280,73,58,2,NULL),(3281,88,21,2,NULL),(3282,88,87,2,NULL),(3283,92,58,2,NULL),(3284,88,30,2,NULL),(3285,95,58,2,NULL),(3286,18,88,2,NULL),(3287,88,33,2,NULL),(3288,59,88,2,NULL),(3289,108,58,2,NULL),(3290,88,38,2,NULL),(3291,63,88,2,NULL),(3292,121,58,2,NULL),(3293,88,72,2,NULL),(3294,66,88,2,NULL),(3295,125,58,2,NULL),(3296,88,74,2,NULL),(3297,68,88,2,NULL),(3298,194,58,2,NULL),(3299,88,75,2,NULL),(3300,73,88,2,NULL),(3301,18,79,2,NULL),(3302,88,20,2,NULL),(3303,92,88,2,NULL),(3304,59,79,2,NULL),(3305,88,28,2,NULL),(3306,95,88,2,NULL),(3307,63,79,2,NULL),(3308,88,32,2,NULL),(3309,108,88,2,NULL),(3310,66,79,2,NULL),(3311,88,35,2,NULL),(3312,121,88,2,NULL),(3313,68,79,2,NULL),(3314,88,56,2,NULL),(3315,125,88,2,NULL),(3316,73,79,2,NULL),(3317,88,57,2,NULL),(3318,194,88,2,NULL),(3319,92,79,2,NULL),(3320,88,62,2,NULL),(3321,16,88,2,NULL),(3322,95,79,2,NULL),(3323,88,76,2,NULL),(3324,58,88,2,NULL),(3325,108,79,2,NULL),(3326,88,92,2,NULL),(3327,116,88,2,NULL),(3328,121,79,2,NULL),(3329,88,39,2,NULL),(3330,119,88,2,NULL),(3331,125,79,2,NULL),(3332,88,42,2,NULL),(3333,123,88,2,NULL),(3334,194,79,2,NULL),(3335,88,45,2,NULL),(3336,128,88,2,NULL),(3337,18,85,2,NULL),(3338,88,58,2,NULL),(3339,129,88,2,NULL),(3340,59,85,2,NULL),(3341,88,79,2,NULL),(3342,134,88,2,NULL),(3343,63,85,2,NULL),(3344,88,85,2,NULL),(3345,139,88,2,NULL),(3346,66,85,2,NULL),(3347,88,89,2,NULL),(3348,142,88,2,NULL),(3349,68,85,2,NULL),(3350,88,93,2,NULL),(3351,72,88,2,NULL),(3352,73,85,2,NULL),(3353,88,88,2,NULL),(3354,135,88,2,NULL),(3355,92,85,2,NULL),(3356,16,39,2,NULL),(3357,140,88,2,NULL),(3358,95,85,2,NULL),(3359,58,39,2,NULL),(3360,108,85,2,NULL),(3361,143,88,2,NULL),(3362,116,39,2,NULL),(3363,121,85,2,NULL),(3364,148,88,2,NULL),(3365,119,39,2,NULL),(3366,150,88,2,NULL),(3367,125,85,2,NULL),(3368,123,39,2,NULL),(3369,173,88,2,NULL),(3370,194,85,2,NULL),(3371,128,39,2,NULL),(3372,220,88,2,NULL),(3373,18,89,2,NULL),(3374,129,39,2,NULL),(3375,224,88,2,NULL),(3376,59,89,2,NULL),(3377,134,39,2,NULL),(3378,230,88,2,NULL),(3379,63,89,2,NULL),(3380,139,39,2,NULL),(3381,234,88,2,NULL),(3382,66,89,2,NULL),(3383,142,39,2,NULL),(3384,237,88,2,NULL),(3385,68,89,2,NULL),(3386,72,39,2,NULL),(3387,266,88,2,NULL),(3388,73,89,2,NULL),(3389,135,39,2,NULL),(3390,92,89,2,NULL),(3391,140,39,2,NULL),(3392,95,89,2,NULL),(3393,143,39,2,NULL),(3394,108,89,2,NULL),(3395,148,39,2,NULL),(3396,121,89,2,NULL),(3397,150,39,2,NULL),(3398,125,89,2,NULL),(3399,173,39,2,NULL),(3400,194,89,2,NULL),(3401,220,39,2,NULL),(3402,18,93,2,NULL),(3403,224,39,2,NULL),(3404,59,93,2,NULL),(3405,230,39,2,NULL),(3406,63,93,2,NULL),(3407,234,39,2,NULL),(3408,66,93,2,NULL),(3409,237,39,2,NULL),(3410,68,93,2,NULL),(3411,266,39,2,NULL),(3412,73,93,2,NULL),(3413,92,93,2,NULL),(3414,95,93,2,NULL),(3415,108,93,2,NULL),(3416,16,42,2,NULL),(3417,121,93,2,NULL),(3418,58,42,2,NULL),(3419,125,93,2,NULL),(3420,116,42,2,NULL),(3421,194,93,2,NULL),(3422,119,42,2,NULL),(3423,123,42,2,NULL),(3424,128,42,2,NULL),(3425,16,1,2,NULL),(3426,129,42,2,NULL),(3427,16,5,2,NULL),(3428,134,42,2,NULL),(3429,16,6,2,NULL),(3430,139,42,2,NULL),(3431,16,50,2,NULL),(3432,142,42,2,NULL),(3433,16,51,2,NULL),(3434,72,42,2,NULL),(3435,16,14,2,NULL),(3436,135,42,2,NULL),(3437,16,16,2,NULL),(3438,140,42,2,NULL),(3439,16,17,2,NULL),(3440,143,42,2,NULL),(3441,16,52,2,NULL),(3442,148,42,2,NULL),(3443,16,53,2,NULL),(3444,150,42,2,NULL),(3445,16,55,2,NULL),(3446,173,42,2,NULL),(3447,16,73,2,NULL),(3448,220,42,2,NULL),(3449,16,19,2,NULL),(3450,224,42,2,NULL),(3451,16,21,2,NULL),(3452,230,42,2,NULL),(3453,16,30,2,NULL),(3454,234,42,2,NULL),(3455,16,33,2,NULL),(3456,237,42,2,NULL),(3457,16,38,2,NULL),(3458,266,42,2,NULL),(3459,16,72,2,NULL),(3460,16,74,2,NULL),(3461,262,15,2,NULL),(3462,16,75,2,NULL),(3463,262,16,2,NULL),(3464,16,20,2,NULL),(3465,262,32,2,NULL),(3466,16,28,2,NULL),(3467,262,42,2,NULL),(3468,16,32,2,NULL),(3469,262,48,2,NULL),(3470,16,35,2,NULL),(3471,16,45,2,NULL),(3472,16,56,2,NULL),(3473,58,45,2,NULL),(3474,16,57,2,NULL),(3475,116,45,2,NULL),(3476,16,62,2,NULL),(3477,119,45,2,NULL),(3478,16,76,2,NULL),(3479,123,45,2,NULL),(3480,16,92,2,NULL),(3481,128,45,2,NULL),(3482,16,58,2,NULL),(3483,129,45,2,NULL),(3484,16,79,2,NULL),(3485,134,45,2,NULL),(3486,16,85,2,NULL),(3487,139,45,2,NULL),(3488,16,89,2,NULL),(3489,142,45,2,NULL),(3490,16,93,2,NULL),(3491,72,45,2,NULL),(3492,135,45,2,NULL),(3493,58,14,2,NULL),(3494,140,45,2,NULL),(3495,116,14,2,NULL),(3496,143,45,2,NULL),(3497,119,14,2,NULL),(3498,148,45,2,NULL),(3499,123,14,2,NULL),(3500,150,45,2,NULL),(3501,128,14,2,NULL),(3502,173,45,2,NULL),(3503,129,14,2,NULL),(3504,220,45,2,NULL),(3505,134,14,2,NULL),(3506,224,45,2,NULL),(3507,139,14,2,NULL),(3508,230,45,2,NULL),(3509,142,14,2,NULL),(3510,234,45,2,NULL),(3511,72,14,2,NULL),(3512,237,45,2,NULL),(3513,135,14,2,NULL),(3514,266,45,2,NULL),(3515,140,14,2,NULL),(3516,143,14,2,NULL),(3517,58,58,2,NULL),(3518,148,14,2,NULL),(3519,116,58,2,NULL),(3520,150,14,2,NULL),(3521,119,58,2,NULL),(3522,173,14,2,NULL),(3523,123,58,2,NULL),(3524,220,14,2,NULL),(3525,128,58,2,NULL),(3526,224,14,2,NULL),(3527,129,58,2,NULL),(3528,230,14,2,NULL),(3529,134,58,2,NULL),(3530,234,14,2,NULL),(3531,139,58,2,NULL),(3532,237,14,2,NULL),(3533,142,58,2,NULL),(3534,266,14,2,NULL),(3535,72,58,2,NULL),(3536,135,58,2,NULL),(3537,58,16,2,NULL),(3538,140,58,2,NULL),(3539,116,16,2,NULL),(3540,143,58,2,NULL),(3541,119,16,2,NULL),(3542,148,58,2,NULL),(3543,123,16,2,NULL),(3544,150,58,2,NULL),(3545,128,16,2,NULL),(3546,173,58,2,NULL),(3547,129,16,2,NULL),(3548,220,58,2,NULL),(3549,134,16,2,NULL),(3550,224,58,2,NULL),(3551,139,16,2,NULL),(3552,230,58,2,NULL),(3553,142,16,2,NULL),(3554,234,58,2,NULL),(3555,72,16,2,NULL),(3556,237,58,2,NULL),(3557,135,16,2,NULL),(3558,266,58,2,NULL),(3559,140,16,2,NULL),(3560,143,16,2,NULL),(3561,58,79,2,NULL),(3562,148,16,2,NULL),(3563,116,79,2,NULL),(3564,150,16,2,NULL),(3565,119,79,2,NULL),(3566,173,16,2,NULL),(3567,123,79,2,NULL),(3568,220,16,2,NULL),(3569,128,79,2,NULL),(3570,224,16,2,NULL),(3571,129,79,2,NULL),(3572,230,16,2,NULL),(3573,134,79,2,NULL),(3574,234,16,2,NULL),(3575,139,79,2,NULL),(3576,237,16,2,NULL),(3577,142,79,2,NULL),(3578,266,16,2,NULL),(3579,72,79,2,NULL),(3580,168,15,2,NULL),(3581,135,79,2,NULL),(3582,168,16,2,NULL),(3583,140,79,2,NULL),(3584,168,32,2,NULL),(3585,143,79,2,NULL),(3586,168,42,2,NULL),(3587,148,79,2,NULL),(3588,168,48,2,NULL),(3589,150,79,2,NULL),(3590,173,79,2,NULL),(3591,58,17,2,NULL),(3592,220,79,2,NULL),(3593,116,17,2,NULL),(3594,224,79,2,NULL),(3595,119,17,2,NULL),(3596,230,79,2,NULL),(3597,123,17,2,NULL),(3598,234,79,2,NULL),(3599,128,17,2,NULL),(3600,237,79,2,NULL),(3601,129,17,2,NULL),(3602,266,79,2,NULL),(3603,134,17,2,NULL),(3604,139,17,2,NULL),(3605,58,85,2,NULL),(3606,142,17,2,NULL),(3607,116,85,2,NULL),(3608,72,17,2,NULL),(3609,119,85,2,NULL),(3610,135,17,2,NULL),(3611,123,85,2,NULL),(3612,140,17,2,NULL),(3613,128,85,2,NULL),(3614,143,17,2,NULL),(3615,129,85,2,NULL),(3616,148,17,2,NULL),(3617,134,85,2,NULL),(3618,150,17,2,NULL),(3619,139,85,2,NULL),(3620,173,17,2,NULL),(3621,142,85,2,NULL),(3622,220,17,2,NULL),(3623,72,85,2,NULL),(3624,224,17,2,NULL),(3625,135,85,2,NULL),(3626,230,17,2,NULL),(3627,140,85,2,NULL),(3628,234,17,2,NULL),(3629,143,85,2,NULL),(3630,237,17,2,NULL),(3631,148,85,2,NULL),(3632,266,17,2,NULL),(3633,150,85,2,NULL),(3634,173,85,2,NULL),(3635,58,52,2,NULL),(3636,220,85,2,NULL),(3637,116,52,2,NULL),(3638,224,85,2,NULL),(3639,119,52,2,NULL),(3640,230,85,2,NULL),(3641,123,52,2,NULL),(3642,234,85,2,NULL),(3643,128,52,2,NULL),(3644,237,85,2,NULL),(3645,129,52,2,NULL),(3646,266,85,2,NULL),(3647,134,52,2,NULL),(3648,139,52,2,NULL),(3649,58,89,2,NULL),(3650,142,52,2,NULL),(3651,116,89,2,NULL),(3652,72,52,2,NULL),(3653,119,89,2,NULL),(3654,135,52,2,NULL),(3655,123,89,2,NULL),(3656,140,52,2,NULL),(3657,128,89,2,NULL),(3658,143,52,2,NULL),(3659,129,89,2,NULL),(3660,148,52,2,NULL),(3661,134,89,2,NULL),(3662,150,52,2,NULL),(3663,139,89,2,NULL),(3664,173,52,2,NULL),(3665,142,89,2,NULL),(3666,220,52,2,NULL),(3667,72,89,2,NULL),(3668,224,52,2,NULL),(3669,135,89,2,NULL),(3670,230,52,2,NULL),(3671,140,89,2,NULL),(3672,234,52,2,NULL),(3673,143,89,2,NULL),(3674,237,52,2,NULL),(3675,148,89,2,NULL),(3676,266,52,2,NULL),(3677,150,89,2,NULL),(3678,173,89,2,NULL),(3679,58,53,2,NULL),(3680,220,89,2,NULL),(3681,116,53,2,NULL),(3682,224,89,2,NULL),(3683,119,53,2,NULL),(3684,230,89,2,NULL),(3685,123,53,2,NULL),(3686,234,89,2,NULL),(3687,128,53,2,NULL),(3688,237,89,2,NULL),(3689,129,53,2,NULL),(3690,266,89,2,NULL),(3691,134,53,2,NULL),(3692,139,53,2,NULL),(3693,58,93,2,NULL),(3694,142,53,2,NULL),(3695,116,93,2,NULL),(3696,72,53,2,NULL),(3697,119,93,2,NULL),(3698,135,53,2,NULL),(3699,123,93,2,NULL),(3700,140,53,2,NULL),(3701,128,93,2,NULL),(3702,143,53,2,NULL),(3703,129,93,2,NULL),(3704,148,53,2,NULL),(3705,134,93,2,NULL),(3706,150,53,2,NULL),(3707,139,93,2,NULL),(3708,173,53,2,NULL),(3709,142,93,2,NULL),(3710,220,53,2,NULL),(3711,72,93,2,NULL),(3712,224,53,2,NULL),(3713,135,93,2,NULL),(3714,230,53,2,NULL),(3715,140,93,2,NULL),(3716,234,53,2,NULL),(3717,143,93,2,NULL),(3718,237,53,2,NULL),(3719,148,93,2,NULL),(3720,266,53,2,NULL),(3721,150,93,2,NULL),(3722,173,93,2,NULL),(3723,58,55,2,NULL),(3724,220,93,2,NULL),(3725,116,55,2,NULL),(3726,224,93,2,NULL),(3727,119,55,2,NULL),(3728,230,93,2,NULL),(3729,123,55,2,NULL),(3730,234,93,2,NULL),(3731,128,55,2,NULL),(3732,237,93,2,NULL),(3733,129,55,2,NULL),(3734,266,93,2,NULL),(3735,134,55,2,NULL),(3736,139,55,2,NULL),(3737,142,55,2,NULL),(3738,72,55,2,NULL),(3739,135,55,2,NULL),(3740,140,55,2,NULL),(3741,143,55,2,NULL),(3742,148,55,2,NULL),(3743,150,55,2,NULL),(3744,173,55,2,NULL),(3745,220,55,2,NULL),(3746,224,55,2,NULL),(3747,230,55,2,NULL),(3748,234,55,2,NULL),(3749,237,55,2,NULL),(3750,266,55,2,NULL),(3751,58,73,2,NULL),(3752,116,73,2,NULL),(3753,119,73,2,NULL),(3754,123,73,2,NULL),(3755,128,73,2,NULL),(3756,129,73,2,NULL),(3757,134,73,2,NULL),(3758,139,73,2,NULL),(3759,142,73,2,NULL),(3760,72,73,2,NULL),(3761,135,73,2,NULL),(3762,140,73,2,NULL),(3763,143,73,2,NULL),(3764,148,73,2,NULL),(3765,150,73,2,NULL),(3766,173,73,2,NULL),(3767,220,73,2,NULL),(3768,224,73,2,NULL),(3769,230,73,2,NULL),(3770,234,73,2,NULL),(3771,237,73,2,NULL),(3772,266,73,2,NULL),(3773,165,10,2,NULL),(3774,165,13,2,NULL),(3775,165,24,2,NULL),(3776,165,36,2,NULL),(3777,165,44,2,NULL),(3778,202,10,2,NULL),(3779,202,13,2,NULL),(3780,202,24,2,NULL),(3781,202,36,2,NULL),(3782,202,44,2,NULL),(3783,221,12,2,NULL),(3784,221,14,2,NULL),(3785,221,28,2,NULL),(3786,221,39,2,NULL),(3787,221,47,2,NULL),(3788,226,12,2,NULL),(3789,226,14,2,NULL),(3790,226,28,2,NULL),(3791,226,39,2,NULL),(3792,226,47,2,NULL),(3793,232,12,2,NULL),(3794,232,14,2,NULL),(3795,232,28,2,NULL),(3796,232,39,2,NULL),(3797,232,47,2,NULL),(3798,240,12,2,NULL),(3799,240,14,2,NULL),(3800,240,28,2,NULL),(3801,240,39,2,NULL),(3802,240,47,2,NULL),(3803,243,12,2,NULL),(3804,243,14,2,NULL),(3805,243,28,2,NULL),(3806,243,39,2,NULL),(3807,243,47,2,NULL),(3808,72,1,2,NULL),(3809,135,1,2,NULL),(3810,140,1,2,NULL),(3811,143,1,2,NULL),(3812,148,1,2,NULL),(3813,150,1,2,NULL),(3814,173,1,2,NULL),(3815,220,1,2,NULL),(3816,224,1,2,NULL),(3817,230,1,2,NULL),(3818,234,1,2,NULL),(3819,237,1,2,NULL),(3820,72,5,2,NULL),(3821,135,5,2,NULL),(3822,140,5,2,NULL),(3823,143,5,2,NULL),(3824,148,5,2,NULL),(3825,150,5,2,NULL),(3826,173,5,2,NULL),(3827,220,5,2,NULL),(3828,224,5,2,NULL),(3829,230,5,2,NULL),(3830,234,5,2,NULL),(3831,237,5,2,NULL),(3832,72,6,2,NULL),(3833,135,6,2,NULL),(3834,140,6,2,NULL),(3835,143,6,2,NULL),(3836,148,6,2,NULL),(3837,150,6,2,NULL),(3838,173,6,2,NULL),(3839,220,6,2,NULL),(3840,224,6,2,NULL),(3841,230,6,2,NULL),(3842,234,6,2,NULL),(3843,237,6,2,NULL),(3844,72,50,2,NULL),(3845,135,50,2,NULL),(3846,140,50,2,NULL),(3847,143,50,2,NULL),(3848,148,50,2,NULL),(3849,150,50,2,NULL),(3850,173,50,2,NULL),(3851,220,50,2,NULL),(3852,224,50,2,NULL),(3853,230,50,2,NULL),(3854,234,50,2,NULL),(3855,237,50,2,NULL),(3856,72,51,2,NULL),(3857,135,51,2,NULL),(3858,140,51,2,NULL),(3859,143,51,2,NULL),(3860,148,51,2,NULL),(3861,150,51,2,NULL),(3862,173,51,2,NULL),(3863,220,51,2,NULL),(3864,224,51,2,NULL),(3865,230,51,2,NULL),(3866,234,51,2,NULL),(3867,237,51,2,NULL),(3868,72,19,2,NULL),(3869,135,19,2,NULL),(3870,140,19,2,NULL),(3871,143,19,2,NULL),(3872,148,19,2,NULL),(3873,150,19,2,NULL),(3874,173,19,2,NULL),(3875,220,19,2,NULL),(3876,224,19,2,NULL),(3877,230,19,2,NULL),(3878,234,19,2,NULL),(3879,237,19,2,NULL),(3880,58,20,2,NULL),(3881,116,20,2,NULL),(3882,119,20,2,NULL),(3883,123,20,2,NULL),(3884,128,20,2,NULL),(3885,129,20,2,NULL),(3886,134,20,2,NULL),(3887,139,20,2,NULL),(3888,142,20,2,NULL),(3889,72,21,2,NULL),(3890,135,21,2,NULL),(3891,140,21,2,NULL),(3892,143,21,2,NULL),(3893,148,21,2,NULL),(3894,150,21,2,NULL),(3895,173,21,2,NULL),(3896,220,21,2,NULL),(3897,224,21,2,NULL),(3898,230,21,2,NULL),(3899,234,21,2,NULL),(3900,237,21,2,NULL),(3901,72,30,2,NULL),(3902,135,30,2,NULL),(3903,140,30,2,NULL),(3904,143,30,2,NULL),(3905,148,30,2,NULL),(3906,150,30,2,NULL),(3907,173,30,2,NULL),(3908,220,30,2,NULL),(3909,224,30,2,NULL),(3910,230,30,2,NULL),(3911,234,30,2,NULL),(3912,237,30,2,NULL),(3913,72,33,2,NULL),(3914,135,33,2,NULL),(3915,140,33,2,NULL),(3916,143,33,2,NULL),(3917,148,33,2,NULL),(3918,150,33,2,NULL),(3919,173,33,2,NULL),(3920,220,33,2,NULL),(3921,224,33,2,NULL),(3922,230,33,2,NULL),(3923,234,33,2,NULL),(3924,237,33,2,NULL),(3925,72,38,2,NULL),(3926,135,38,2,NULL),(3927,140,38,2,NULL),(3928,143,38,2,NULL),(3929,148,38,2,NULL),(3930,150,38,2,NULL),(3931,173,38,2,NULL),(3932,220,38,2,NULL),(3933,224,38,2,NULL),(3934,230,38,2,NULL),(3935,234,38,2,NULL),(3936,237,38,2,NULL),(3937,72,72,2,NULL),(3938,135,72,2,NULL),(3939,140,72,2,NULL),(3940,143,72,2,NULL),(3941,148,72,2,NULL),(3942,150,72,2,NULL),(3943,173,72,2,NULL),(3944,220,72,2,NULL),(3945,224,72,2,NULL),(3946,230,72,2,NULL),(3947,234,72,2,NULL),(3948,237,72,2,NULL),(3949,72,74,2,NULL),(3950,135,74,2,NULL),(3951,140,74,2,NULL),(3952,143,74,2,NULL),(3953,148,74,2,NULL),(3954,150,74,2,NULL),(3955,173,74,2,NULL),(3956,220,74,2,NULL),(3957,224,74,2,NULL),(3958,230,74,2,NULL),(3959,234,74,2,NULL),(3960,237,74,2,NULL),(3961,72,75,2,NULL),(3962,135,75,2,NULL),(3963,140,75,2,NULL),(3964,143,75,2,NULL),(3965,148,75,2,NULL),(3966,150,75,2,NULL),(3967,173,75,2,NULL),(3968,220,75,2,NULL),(3969,224,75,2,NULL),(3970,230,75,2,NULL),(3971,234,75,2,NULL),(3972,237,75,2,NULL),(3973,266,20,2,NULL),(3974,72,28,2,NULL),(3975,135,28,2,NULL),(3976,140,28,2,NULL),(3977,143,28,2,NULL),(3978,148,28,2,NULL),(3979,150,28,2,NULL),(3980,173,28,2,NULL),(3981,220,28,2,NULL),(3982,224,28,2,NULL),(3983,230,28,2,NULL),(3984,234,28,2,NULL),(3985,237,28,2,NULL),(3986,72,32,2,NULL),(3987,135,32,2,NULL),(3988,140,32,2,NULL),(3989,143,32,2,NULL),(3990,148,32,2,NULL),(3991,150,32,2,NULL),(3992,173,32,2,NULL),(3993,220,32,2,NULL),(3994,224,32,2,NULL),(3995,230,32,2,NULL),(3996,234,32,2,NULL),(3997,237,32,2,NULL),(3998,72,35,2,NULL),(3999,135,35,2,NULL),(4000,140,35,2,NULL),(4001,143,35,2,NULL),(4002,148,35,2,NULL),(4003,150,35,2,NULL),(4004,173,35,2,NULL),(4005,220,35,2,NULL),(4006,224,35,2,NULL),(4007,230,35,2,NULL),(4008,234,35,2,NULL),(4009,237,35,2,NULL),(4010,72,56,2,NULL),(4011,135,56,2,NULL),(4012,140,56,2,NULL),(4013,143,56,2,NULL),(4014,148,56,2,NULL),(4015,150,56,2,NULL),(4016,173,56,2,NULL),(4017,220,56,2,NULL),(4018,224,56,2,NULL),(4019,230,56,2,NULL),(4020,234,56,2,NULL),(4021,237,56,2,NULL),(4022,72,57,2,NULL),(4023,135,57,2,NULL),(4024,140,57,2,NULL),(4025,143,57,2,NULL),(4026,148,57,2,NULL),(4027,150,57,2,NULL),(4028,173,57,2,NULL),(4029,220,57,2,NULL),(4030,224,57,2,NULL),(4031,230,57,2,NULL),(4032,234,57,2,NULL),(4033,237,57,2,NULL),(4034,72,62,2,NULL),(4035,135,62,2,NULL),(4036,140,62,2,NULL),(4037,143,62,2,NULL),(4038,148,62,2,NULL),(4039,150,62,2,NULL),(4040,173,62,2,NULL),(4041,220,62,2,NULL),(4042,224,62,2,NULL),(4043,230,62,2,NULL),(4044,234,62,2,NULL),(4045,237,62,2,NULL),(4046,72,76,2,NULL),(4047,135,76,2,NULL),(4048,140,76,2,NULL),(4049,143,76,2,NULL),(4050,148,76,2,NULL),(4051,150,76,2,NULL),(4052,173,76,2,NULL),(4053,220,76,2,NULL),(4054,224,76,2,NULL),(4055,230,76,2,NULL),(4056,234,76,2,NULL),(4057,237,76,2,NULL),(4058,72,92,2,NULL),(4059,135,92,2,NULL),(4060,140,92,2,NULL),(4061,143,92,2,NULL),(4062,148,92,2,NULL),(4063,150,92,2,NULL),(4064,173,92,2,NULL),(4065,220,92,2,NULL),(4066,224,92,2,NULL),(4067,230,92,2,NULL),(4068,234,92,2,NULL),(4069,237,92,2,NULL),(4070,266,1,2,NULL),(4071,266,5,2,NULL),(4072,266,6,2,NULL),(4073,266,50,2,NULL),(4074,266,51,2,NULL),(4075,266,19,2,NULL),(4076,266,21,2,NULL),(4077,266,30,2,NULL),(4078,266,33,2,NULL),(4079,266,38,2,NULL),(4080,266,72,2,NULL),(4081,266,74,2,NULL),(4082,266,75,2,NULL),(4083,266,28,2,NULL),(4084,266,32,2,NULL),(4085,266,35,2,NULL),(4086,266,56,2,NULL),(4087,266,57,2,NULL),(4088,266,62,2,NULL),(4089,266,76,2,NULL),(4090,266,92,2,NULL),(4091,58,28,2,NULL),(4092,116,28,2,NULL),(4093,119,28,2,NULL),(4094,123,28,2,NULL),(4095,128,28,2,NULL),(4096,129,28,2,NULL),(4097,134,28,2,NULL),(4098,139,28,2,NULL),(4099,142,28,2,NULL),(4100,58,32,2,NULL),(4101,116,32,2,NULL),(4102,119,32,2,NULL),(4103,123,32,2,NULL),(4104,58,1,2,NULL),(4105,128,32,2,NULL),(4106,129,32,2,NULL),(4107,116,1,2,NULL),(4108,134,32,2,NULL),(4109,119,1,2,NULL),(4110,139,32,2,NULL),(4111,142,32,2,NULL),(4112,123,1,2,NULL),(4113,128,1,2,NULL),(4114,87,15,2,NULL),(4115,129,1,2,NULL),(4116,87,16,2,NULL),(4117,134,1,2,NULL),(4118,87,32,2,NULL),(4119,139,1,2,NULL),(4120,87,42,2,NULL),(4121,142,1,2,NULL),(4122,87,48,2,NULL),(4123,1,3,2,NULL),(4124,58,35,2,NULL),(4125,116,35,2,NULL),(4126,58,5,2,NULL),(4127,119,35,2,NULL),(4128,116,5,2,NULL),(4129,123,35,2,NULL),(4130,119,5,2,NULL),(4131,128,35,2,NULL),(4132,123,5,2,NULL),(4133,129,35,2,NULL),(4134,128,5,2,NULL),(4135,134,35,2,NULL),(4136,129,5,2,NULL),(4137,139,35,2,NULL),(4138,134,5,2,NULL),(4139,142,35,2,NULL),(4140,139,5,2,NULL),(4141,142,5,2,NULL),(4142,58,56,2,NULL),(4143,116,56,2,NULL),(4144,119,56,2,NULL),(4145,58,6,2,NULL),(4146,123,56,2,NULL),(4147,116,6,2,NULL),(4148,128,56,2,NULL),(4149,119,6,2,NULL),(4150,129,56,2,NULL),(4151,123,6,2,NULL),(4152,134,56,2,NULL),(4153,128,6,2,NULL),(4154,139,56,2,NULL),(4155,129,6,2,NULL),(4156,142,56,2,NULL),(4157,134,6,2,NULL),(4158,139,6,2,NULL),(4159,142,6,2,NULL),(4160,58,57,2,NULL),(4161,116,57,2,NULL),(4162,119,57,2,NULL),(4163,58,50,2,NULL),(4164,123,57,2,NULL),(4165,116,50,2,NULL),(4166,128,57,2,NULL),(4167,119,50,2,NULL),(4168,129,57,2,NULL),(4169,123,50,2,NULL),(4170,134,57,2,NULL),(4171,128,50,2,NULL),(4172,139,57,2,NULL),(4173,129,50,2,NULL),(4174,142,57,2,NULL),(4175,134,50,2,NULL),(4176,139,50,2,NULL),(4177,58,62,2,NULL),(4178,142,50,2,NULL),(4179,116,62,2,NULL),(4180,119,62,2,NULL),(4181,123,62,2,NULL),(4182,58,51,2,NULL),(4183,128,62,2,NULL),(4184,116,51,2,NULL),(4185,129,62,2,NULL),(4186,119,51,2,NULL),(4187,134,62,2,NULL),(4188,123,51,2,NULL),(4189,139,62,2,NULL),(4190,128,51,2,NULL),(4191,142,62,2,NULL),(4192,129,51,2,NULL),(4193,134,51,2,NULL),(4194,139,51,2,NULL),(4195,58,76,2,NULL),(4196,142,51,2,NULL),(4197,116,76,2,NULL),(4198,119,76,2,NULL),(4199,123,76,2,NULL),(4200,128,76,2,NULL),(4201,129,76,2,NULL),(4202,134,76,2,NULL),(4203,139,76,2,NULL),(4204,142,76,2,NULL),(4205,58,92,2,NULL),(4206,116,92,2,NULL),(4207,119,92,2,NULL),(4208,123,92,2,NULL),(4209,128,92,2,NULL),(4210,129,92,2,NULL),(4211,134,92,2,NULL),(4212,139,92,2,NULL),(4213,142,92,2,NULL),(4214,161,23,2,NULL),(4215,58,21,2,NULL),(4216,116,21,2,NULL),(4217,119,21,2,NULL),(4218,123,21,2,NULL),(4219,128,21,2,NULL),(4220,129,21,2,NULL),(4221,134,21,2,NULL),(4222,139,21,2,NULL),(4223,142,21,2,NULL),(4224,58,30,2,NULL),(4225,116,30,2,NULL),(4226,119,30,2,NULL),(4227,123,30,2,NULL),(4228,128,30,2,NULL),(4229,129,30,2,NULL),(4230,134,30,2,NULL),(4231,139,30,2,NULL),(4232,142,30,2,NULL),(4233,58,33,2,NULL),(4234,116,33,2,NULL),(4235,119,33,2,NULL),(4236,123,33,2,NULL),(4237,128,33,2,NULL),(4238,129,33,2,NULL),(4239,134,33,2,NULL),(4240,139,33,2,NULL),(4241,142,33,2,NULL),(4242,58,38,2,NULL),(4243,116,38,2,NULL),(4244,119,38,2,NULL),(4245,123,38,2,NULL),(4246,128,38,2,NULL),(4247,129,38,2,NULL),(4248,134,38,2,NULL),(4249,139,38,2,NULL),(4250,142,38,2,NULL),(4251,58,72,2,NULL),(4252,116,72,2,NULL),(4253,119,72,2,NULL),(4254,123,72,2,NULL),(4255,128,72,2,NULL),(4256,129,72,2,NULL),(4257,134,72,2,NULL),(4258,139,72,2,NULL),(4259,142,72,2,NULL),(4260,58,74,2,NULL),(4261,116,74,2,NULL),(4262,119,74,2,NULL),(4263,123,74,2,NULL),(4264,128,74,2,NULL),(4265,129,74,2,NULL),(4266,134,74,2,NULL),(4267,139,74,2,NULL),(4268,142,74,2,NULL),(4269,58,75,2,NULL),(4270,116,75,2,NULL),(4271,119,75,2,NULL),(4272,123,75,2,NULL),(4273,128,75,2,NULL),(4274,129,75,2,NULL),(4275,134,75,2,NULL),(4276,139,75,2,NULL),(4277,142,75,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProviderLinks`
--

LOCK TABLES `ProviderLinks` WRITE;
/*!40000 ALTER TABLE `ProviderLinks` DISABLE KEYS */;
INSERT INTO `ProviderLinks` VALUES (1,19,40,NULL),(2,30,40,NULL),(3,64,40,NULL),(4,33,40,NULL),(5,67,40,NULL);
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

-- Dump completed on 2015-10-12  3:30:46
