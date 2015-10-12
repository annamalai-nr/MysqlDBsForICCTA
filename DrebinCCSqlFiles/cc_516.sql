-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_516
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
INSERT INTO `ActionStrings` VALUES (30,'SMS_SEND_ACTIOIN'),(9,'android.intent.action.BOOT_COMPLETED'),(33,'android.intent.action.CHOOSER'),(32,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(19,'android.intent.action.PACKAGE_ADDED'),(28,'android.intent.action.PACKAGE_CHANGED'),(29,'android.intent.action.PACKAGE_REMOVED'),(36,'android.intent.action.SCREEN_OFF'),(37,'android.intent.action.SCREEN_ON'),(2,'android.intent.action.SET_WALLPAPER'),(16,'android.intent.action.VIEW'),(35,'android.intent.action.WALLPAPER_CHANGED'),(34,'android.net.conn.CONNECTIVITY_CHANGE'),(14,'android.provider.Telephony.SMS_RECEIVED'),(26,'android.provider.Telephony.WAP_PUSH_RECEIVED'),(27,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(25,'android.settings.WIRELESS_SETTINGS'),(31,'com.android.contacts.action.FILTER_CONTACTS'),(6,'com.android.launcher.action.INSTALL_SHORTCUT'),(8,'com.android.launcher.action.UNINSTALL_SHORTCUT'),(23,'com.jx.Action_CopyResError'),(24,'com.jx.MainActivity.CostInfo'),(15,'com.jx.MainActivity.ErrorInfo'),(20,'com.jx.MainActivity.InstallConfirmInfo'),(18,'com.jx.MainActivity.OpenLWP'),(22,'com.jx.MainActivity.RepeateInstall'),(21,'com.jx.MainActivity.SaveID'),(13,'com.jx.action.ExitBootReceiver'),(12,'com.jx.ad.ADService.ConfirmInstallInfo'),(5,'com.jx.ad.ADService.Init'),(10,'com.jx.ad.ADService.InitHasUpdate'),(11,'com.jx.ad.ADService.InstallRes'),(3,'com.jx.ad.ADService.Run'),(4,'com.jx.ad.ADService.RunCancel'),(17,'com.jx.ad.BootSmsReceiverService.Exit'),(7,'com.jx.ad.BootSmsReceiverService.Start');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applications`
--

LOCK TABLES `Applications` WRITE;
/*!40000 ALTER TABLE `Applications` DISABLE KEYS */;
INSERT INTO `Applications` VALUES (1,'com.jx.theme.n1334038465',1),(2,'com.jx.theme.n599170593',1),(3,'com.km.launcher',1),(4,'com.jx.theme.n825659528',1),(5,'com.jx.theme.n769249699',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,2,'com.jx.MainActivity'),(2,1,'com.jx.MainActivity'),(3,3,'com.km.launcher.Launcher'),(4,2,'com.jx.SettingActivity'),(5,1,'com.jx.SettingActivity'),(6,2,'com.jx.WelcomeActivity'),(7,1,'com.jx.WelcomeActivity'),(8,3,'com.km.launcher.WallpaperChooser'),(9,2,'com.jx.ad.AndroidThemeService'),(10,1,'com.jx.ad.AndroidThemeService'),(11,3,'com.km.theme.ThemeListActivity'),(12,3,'com.km.charge.MainActivity'),(13,3,'com.km.ad.AdService'),(14,3,'com.km.charge.CycleService'),(15,2,'com.jx.ad.BootSmsReceiverService'),(16,1,'com.jx.ad.BootSmsReceiverService'),(17,3,'com.km.launcher.InstallShortcutReceiver'),(18,3,'com.km.launcher.UninstallShortcutReceiver'),(19,1,'com.jx.ad.BootReceiver'),(20,2,'com.jx.ad.BootReceiver'),(21,3,'com.km.charge.BootReceiver'),(22,3,'com.km.launcher.LauncherProvider'),(23,4,'com.jx.MainActivity'),(24,4,'com.jx.SettingActivity'),(25,4,'com.jx.WelcomeActivity'),(26,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(27,4,'com.jx.ad.AndroidThemeService'),(28,4,'com.jx.ad.BootSmsReceiverService'),(29,4,'com.jx.ad.BootReceiver'),(30,5,'com.jx.MainActivity'),(31,5,'com.jx.SettingActivity'),(32,5,'com.jx.WelcomeActivity'),(33,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(34,5,'com.jx.ad.AndroidThemeService'),(35,5,'com.jx.ad.BootSmsReceiverService'),(36,5,'com.jx.ad.BootReceiver'),(37,2,'com.jx.ad.AndroidThemeService$4'),(38,2,'com.jx.tool.ApnManager'),(39,2,'com.jx.ad.ServiceControlReciver'),(40,2,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(41,2,'com.jx.ad.AndroidThemeService$8'),(42,1,'com.jx.ad.AndroidThemeService$SmsReceiver'),(43,2,'com.jx.SettingActivity$6'),(44,1,'com.jx.ad.AndroidThemeService$3'),(45,1,'com.jx.MainActivity$ControlReceiver'),(46,2,'com.jx.ad.AndroidThemeService$3'),(47,2,'com.jx.ad.AndroidThemeService$6'),(48,1,'com.jx.ad.AndroidThemeService$5'),(49,1,'com.jx.MainActivity$ControlReceiver$1'),(50,1,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(51,1,'com.jx.ad.AndroidThemeService$MMSReceiver'),(52,1,'com.jx.ad.AndroidThemeService$7'),(53,2,'com.jx.ad.AndroidThemeService$5'),(54,4,'com.jx.tool.Utility'),(55,1,'com.jx.tool.ApnManager'),(56,2,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(57,1,'com.jx.SettingActivity$1'),(58,4,'com.jx.ad.AndroidThemeService$4'),(59,1,'com.jx.ad.AndroidThemeService$8'),(60,2,'com.jx.ad.AndroidThemeService$2'),(61,4,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(62,4,'com.jx.MainActivity$1'),(63,3,'com.km.tool.ApnManager'),(64,2,'com.jx.MainActivity$ControlReceiver'),(65,3,'com.km.launcher.LauncherModel'),(66,2,'com.jx.SettingActivity$1'),(67,4,'com.jx.ad.AndroidThemeService$3'),(68,3,'com.km.charge.HoldMessage'),(69,3,'com.km.launcher.MyAnalogClock$1'),(70,5,'com.jx.MainActivity$4'),(71,4,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(72,3,'com.km.launcher.Launcher$WallpaperIntentReceiver'),(73,4,'com.jx.tool.ApnManager'),(74,4,'com.jx.SettingActivity$1'),(75,2,'com.jx.tool.Utility'),(76,3,'com.km.charge.SendMessage$SendMessageReceiver'),(77,5,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(78,3,'com.km.charge.HttpBox$ConnectivityReceiver'),(79,4,'com.jx.MainActivity$4'),(80,5,'com.jx.ad.AndroidThemeService$6'),(81,3,'com.km.tool.Http$ConnectivityReceiver'),(82,3,'com.km.launcher.Launcher$ApplicationsIntentReceiver'),(83,1,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(84,5,'com.jx.ad.AndroidThemeService$8'),(85,4,'com.jx.ad.AndroidThemeService$6'),(86,1,'com.jx.ad.AndroidThemeService$2'),(87,2,'com.jx.ad.AndroidThemeService$SmsReceiver'),(88,5,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(89,2,'com.jx.MainActivity$ControlReceiver$1'),(90,1,'com.jx.ad.AndroidThemeService$6'),(91,4,'com.jx.ad.AndroidThemeService$2'),(92,5,'com.jx.tool.Utility'),(93,1,'com.jx.ad.ServiceControlReciver'),(94,2,'com.jx.MainActivity$4'),(95,1,'com.jx.SettingActivity$6'),(96,4,'com.jx.SettingActivity$6'),(97,3,'com.km.tool.Util'),(98,5,'com.jx.ad.AndroidThemeService$2'),(99,2,'com.jx.ad.AndroidThemeService$7'),(100,5,'com.jx.MainActivity$1'),(101,1,'com.jx.ad.AndroidThemeService$4'),(102,2,'com.jx.MainActivity$ControlReceiver$6$1'),(103,1,'com.jx.tool.Utility'),(104,5,'com.jx.ad.AndroidThemeService$7'),(105,2,'com.jx.MainActivity$1'),(106,1,'com.jx.MainActivity$1'),(107,5,'com.jx.ad.AndroidThemeService$SmsReceiver'),(108,2,'com.jx.ad.AndroidThemeService$MMSReceiver'),(109,1,'com.jx.MainActivity$ControlReceiver$6$1'),(110,5,'com.jx.ad.AndroidThemeService$5'),(111,4,'com.jx.ad.AndroidThemeService$7'),(112,3,'com.km.launcher.Search'),(113,1,'com.jx.MainActivity$4'),(114,4,'com.jx.ad.AndroidThemeService$5'),(115,3,'com.km.theme.ThemeManager'),(116,4,'com.jx.ad.AndroidThemeService$8'),(117,3,'com.km.ad.AdService$1'),(118,5,'com.jx.SettingActivity$6'),(119,4,'com.jx.ad.AndroidThemeService$SmsReceiver'),(120,5,'com.jx.ad.AndroidThemeService$4'),(121,5,'com.jx.tool.ApnManager'),(122,5,'com.jx.ad.AndroidThemeService$3'),(123,5,'com.adwo.adsdk.M'),(124,4,'com.jx.ad.AndroidThemeService$MMSReceiver'),(125,5,'com.jx.SettingActivity$1'),(126,5,'com.jx.MainActivity$ControlReceiver'),(127,4,'com.adwo.adsdk.M'),(128,5,'com.jx.ad.ServiceControlReciver'),(129,4,'com.jx.ad.ServiceControlReciver'),(130,4,'com.jx.MainActivity$ControlReceiver'),(131,5,'com.jx.ad.AndroidThemeService$MMSReceiver'),(132,4,'com.jx.MainActivity$ControlReceiver$6$1'),(133,5,'com.jx.MainActivity$ControlReceiver$1'),(134,4,'com.jx.MainActivity$ControlReceiver$1'),(135,5,'com.jx.MainActivity$ControlReceiver$6$1');
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,10,'resownerid'),(2,26,'shouldShowTitlebar'),(3,27,'respid'),(4,26,'overlayTitle'),(5,33,'shouldEnableBottomBar'),(6,27,'resownerid'),(7,3,'android.intent.extra.livefolder.NAME'),(8,9,'resownerid'),(9,16,'android.intent.extra.shortcut.NAME'),(10,3,'android.intent.extra.shortcut.NAME'),(11,18,'duplicate'),(12,16,'android.intent.extra.shortcut.INTENT'),(13,3,'android.intent.extra.shortcut.INTENT'),(14,26,'shouldResizeOverlay'),(15,9,'respid'),(16,11,'launcher.all_apps_folder'),(17,12,'launcher.all_apps_folder'),(18,3,'launcher.all_apps_folder'),(19,3,'launcher.rename_folder'),(20,3,'launcher.add_spanX'),(21,33,'overlayTransition'),(22,3,'data'),(23,18,'android.intent.extra.shortcut.INTENT'),(24,3,'launcher.add_cellY'),(25,3,'launcher.add_spanY'),(26,16,'android.intent.extra.shortcut.ICON_RESOURCE'),(27,3,'android.intent.extra.shortcut.ICON_RESOURCE'),(28,16,'android.intent.extra.shortcut.ICON'),(29,3,'android.intent.extra.shortcut.ICON'),(30,3,'launcher.add_occupied_cells'),(31,3,'android.intent.extra.livefolder.BASE_INTENT'),(32,3,'launcher.add_screen'),(33,3,'launcher.current_screen'),(34,3,'launcher.rename_folder_id'),(35,10,'respid'),(36,33,'url'),(37,34,'resownerid'),(38,3,'launcher.add_countX'),(39,18,'android.intent.extra.shortcut.NAME'),(40,16,'duplicate'),(41,26,'url'),(42,3,'launcher.add_cellX'),(43,3,'android.intent.extra.livefolder.ICON'),(44,3,'launcher.add_countY'),(45,11,'launcher.user_folder'),(46,12,'launcher.user_folder'),(47,3,'launcher.user_folder'),(48,26,'shouldShowBottomBar'),(49,26,'shouldMakeOverlayTransparent'),(50,33,'shouldShowBottomBar'),(51,26,'shouldEnableBottomBar'),(52,33,'shouldResizeOverlay'),(53,34,'respid'),(54,33,'overlayTitle'),(55,33,'shouldMakeOverlayTransparent'),(56,26,'overlayTransition'),(57,26,'transitionTime'),(58,33,'transitionTime'),(59,33,'shouldShowTitlebar');
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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'s',1,NULL,NULL),(10,10,'s',1,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'s',0,NULL,NULL),(14,14,'s',0,NULL,NULL),(15,15,'s',1,NULL,NULL),(16,17,'r',1,26,NULL),(17,16,'s',1,NULL,NULL),(18,18,'r',1,27,NULL),(19,19,'r',1,NULL,NULL),(20,20,'r',1,NULL,NULL),(21,21,'r',1,NULL,NULL),(22,22,'p',0,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'s',1,NULL,NULL),(28,28,'s',1,NULL,NULL),(29,29,'r',1,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'s',1,NULL,NULL),(35,35,'s',1,NULL,NULL),(36,36,'r',1,NULL,NULL),(37,39,'r',1,NULL,NULL),(38,40,'r',1,NULL,NULL),(39,42,'r',1,NULL,NULL),(40,45,'r',1,NULL,NULL),(41,50,'r',1,NULL,NULL),(42,51,'r',1,NULL,NULL),(43,56,'r',1,NULL,NULL),(44,61,'r',1,NULL,NULL),(45,64,'r',1,NULL,NULL),(46,17,'r',1,NULL,NULL),(47,18,'r',1,NULL,NULL),(48,68,'r',1,NULL,NULL),(49,69,'r',1,NULL,NULL),(50,71,'r',1,NULL,NULL),(51,72,'r',1,NULL,NULL),(52,76,'r',1,NULL,NULL),(53,77,'r',1,NULL,NULL),(54,78,'r',1,NULL,NULL),(55,81,'r',1,NULL,NULL),(56,82,'r',1,NULL,NULL),(57,83,'r',1,NULL,NULL),(58,87,'r',1,NULL,NULL),(59,88,'r',1,NULL,NULL),(60,93,'r',1,NULL,NULL),(61,107,'r',1,NULL,NULL),(62,108,'r',1,NULL,NULL),(63,119,'r',1,NULL,NULL),(64,123,'r',1,NULL,NULL),(65,124,'r',1,NULL,NULL),(66,126,'r',1,NULL,NULL),(67,127,'r',1,NULL,NULL),(68,128,'r',1,NULL,NULL),(69,129,'r',1,NULL,NULL),(70,130,'r',1,NULL,NULL),(71,131,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=321 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,9),(2,2,9),(3,3,9),(4,4,20),(5,5,1),(6,6,9),(7,7,6),(8,7,1),(9,7,4),(10,8,10),(11,9,9),(12,10,9),(13,11,10),(14,12,4),(15,12,6),(16,12,1),(17,13,7),(18,13,5),(19,13,2),(20,14,2),(21,15,19),(22,16,9),(23,17,10),(24,18,9),(25,19,10),(26,20,4),(27,21,10),(28,22,1),(29,23,27),(30,23,25),(31,23,24),(32,24,10),(33,25,2),(34,25,5),(35,25,7),(36,26,9),(37,27,9),(38,28,27),(39,29,10),(40,30,9),(41,31,5),(42,31,2),(43,31,7),(44,32,24),(45,32,25),(46,33,1),(47,34,32),(48,35,23),(49,35,25),(50,35,24),(51,36,11),(52,36,12),(53,37,23),(54,38,3),(55,39,4),(56,39,6),(57,39,1),(58,40,27),(59,41,18),(60,42,9),(61,43,18),(62,44,30),(63,44,32),(64,44,31),(65,45,9),(66,46,27),(67,47,30),(68,48,3),(69,50,11),(70,50,12),(71,49,25),(72,49,24),(73,49,23),(74,51,31),(75,51,32),(76,52,9),(77,52,4),(78,52,6),(79,53,18),(80,54,23),(81,54,24),(82,54,25),(83,55,9),(84,56,34),(85,57,6),(86,57,4),(87,58,27),(88,59,16),(89,60,9),(90,61,34),(91,62,16),(92,63,27),(93,64,10),(94,65,3),(95,66,3),(96,67,24),(97,68,1),(98,68,4),(99,68,6),(100,69,12),(101,69,11),(102,70,10),(103,72,34),(104,71,3),(105,71,12),(106,73,9),(107,74,12),(108,74,11),(109,75,18),(110,76,27),(111,78,12),(112,78,11),(113,77,31),(114,77,32),(115,77,34),(116,79,12),(117,79,11),(118,80,3),(119,81,1),(120,81,6),(121,81,4),(122,82,2),(123,82,5),(124,82,7),(125,83,3),(126,83,12),(127,85,12),(128,85,11),(129,84,34),(130,86,23),(131,86,24),(132,86,25),(133,87,9),(134,88,10),(135,89,21),(136,89,3),(137,90,25),(138,90,23),(139,90,24),(140,91,34),(141,92,11),(142,92,12),(143,94,10),(144,93,9),(145,95,22),(146,96,16),(147,97,12),(148,97,11),(149,99,3),(150,98,30),(151,98,31),(152,98,32),(153,100,10),(154,101,4),(155,101,6),(156,101,1),(157,102,36),(158,103,9),(159,104,10),(160,104,7),(161,104,5),(162,105,27),(163,106,34),(164,107,4),(165,107,6),(166,107,1),(167,108,7),(168,108,5),(169,108,2),(170,109,27),(171,110,2),(172,110,7),(173,110,5),(174,111,27),(175,112,9),(176,113,34),(177,114,27),(178,115,2),(179,115,5),(180,115,7),(181,116,16),(182,116,3),(183,117,12),(184,117,11),(185,118,9),(186,119,31),(187,119,30),(188,119,32),(189,120,18),(190,121,9),(191,122,3),(192,122,12),(193,123,29),(194,124,12),(195,124,11),(196,125,3),(197,126,4),(198,126,1),(199,126,6),(200,127,25),(201,128,18),(202,129,3),(203,129,12),(204,130,11),(205,130,12),(206,131,3),(207,131,21),(208,132,5),(209,133,12),(210,133,11),(211,134,12),(212,134,11),(213,135,3),(214,135,12),(215,136,2),(216,136,5),(217,136,7),(218,137,27),(219,138,11),(220,138,3),(221,139,10),(222,140,27),(223,141,16),(224,142,22),(225,143,10),(226,144,11),(227,144,3),(228,145,12),(229,145,11),(230,146,27),(231,147,3),(232,147,11),(233,149,23),(234,148,10),(235,150,3),(236,151,3),(237,152,5),(238,152,7),(239,153,23),(240,154,3),(241,154,12),(242,155,32),(243,155,30),(244,155,31),(245,156,10),(246,157,27),(247,158,11),(248,158,12),(249,159,10),(250,160,12),(251,160,11),(252,162,1),(253,161,34),(254,163,27),(255,164,10),(256,165,11),(257,165,12),(258,166,9),(259,167,16),(260,167,3),(261,168,10),(262,169,24),(263,169,25),(264,169,23),(265,170,34),(266,171,3),(267,172,34),(268,173,10),(269,174,11),(270,174,3),(271,175,34),(272,176,10),(273,177,30),(274,178,2),(275,179,34),(276,180,10),(277,181,34),(278,182,2),(279,183,10),(280,184,30),(281,185,2),(282,186,34),(283,187,34),(284,188,34),(285,189,23),(286,190,31),(287,190,32),(288,190,30),(289,191,27),(290,192,34),(291,193,27),(292,194,27),(293,195,34),(294,196,31),(295,197,27),(296,198,34),(297,199,34),(298,200,23),(299,200,24),(300,200,25),(301,201,34),(302,202,27),(303,203,32),(304,203,30),(305,203,31),(306,204,27),(307,205,30),(308,206,27),(309,207,34),(310,208,25),(311,208,24),(312,208,23),(313,209,34),(314,210,27),(315,211,31),(316,211,30),(317,211,32),(318,212,30),(319,212,31),(320,212,32);
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
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,37,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(2,37,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(3,38,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(4,20,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(5,1,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(6,41,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(7,43,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(8,44,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(9,46,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(10,47,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(11,48,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(12,1,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(13,49,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(14,2,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(15,19,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(16,9,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(17,52,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(18,53,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(19,44,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(20,4,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(21,48,'<com.jx.ad.AndroidThemeService$5: void run()>',113,'r',NULL),(22,1,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(23,54,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(24,55,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(25,57,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(26,38,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(27,41,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(28,58,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(29,59,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(30,60,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(31,2,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(32,25,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(33,1,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(34,32,'<com.jx.WelcomeActivity: void onResume()>',67,'a',NULL),(35,62,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(36,63,'<com.km.tool.ApnManager: int CreateWapApn()>',27,'p',NULL),(37,23,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(38,65,'<com.km.launcher.LauncherModel: com.km.launcher.FolderInfo getFolderById(android.content.Context,long)>',12,'p',NULL),(39,66,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(40,67,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(41,18,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'p',NULL),(42,47,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(43,18,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',25,'p',NULL),(44,70,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(45,47,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(46,73,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(47,30,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(48,65,'<com.km.launcher.LauncherModel: com.km.launcher.Widget getPhotoFrameInfo(android.content.Context,int,int,int)>',15,'p',NULL),(49,74,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(50,63,'<com.km.tool.ApnManager: int CreateGPRSApn()>',27,'p',NULL),(51,32,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(52,75,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(53,18,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'p',NULL),(54,79,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(55,38,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(56,80,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(57,6,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(58,27,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(59,65,'<com.km.launcher.LauncherModel: boolean shortcutExists(android.content.Context,java.lang.String,android.content.Intent)>',12,'p',NULL),(60,46,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(61,84,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(62,17,'<com.km.launcher.InstallShortcutReceiver: boolean findEmptyCell(android.content.Context,int[],int)>',19,'p',NULL),(63,85,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(64,86,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(65,3,'<com.km.launcher.Launcher: void registerContentObservers()>',4,'p',NULL),(66,3,'<com.km.launcher.Launcher: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(67,24,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(68,89,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(69,63,'<com.km.tool.ApnManager: int getApnId(java.lang.String)>',6,'p',NULL),(70,90,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(71,3,'<com.km.launcher.Launcher: void startActivitySafely(android.content.Intent)>',3,'a',0),(72,84,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(73,37,'<com.jx.ad.AndroidThemeService$4: void run()>',120,'r',NULL),(74,63,'<com.km.tool.ApnManager: void delete(int)>',8,'p',NULL),(75,18,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'p',NULL),(76,91,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(77,92,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(78,63,'<com.km.tool.ApnManager: int CreateGPRSApn()>',30,'p',0),(79,63,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',9,'p',NULL),(80,3,'<com.km.launcher.Launcher: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(81,94,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(82,95,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(83,3,'<com.km.launcher.Launcher: boolean onKeyDown(int,android.view.KeyEvent)>',27,'a',NULL),(84,34,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(85,63,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',9,'p',NULL),(86,96,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(87,60,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(88,59,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(89,97,'<com.km.tool.Util: void startServiceWithSingleMode(android.content.Context,java.lang.Class)>',7,'s',NULL),(90,23,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(91,98,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(92,63,'<com.km.tool.ApnManager: int CreateGPRSApn()>',27,'p',NULL),(93,99,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(94,10,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(95,22,'<com.km.launcher.LauncherProvider: void sendNotify(android.net.Uri)>',9,'p',0),(96,65,'<com.km.launcher.LauncherModel: boolean shortcutExists(android.content.Context,java.lang.String,android.content.Intent)>',12,'p',NULL),(97,63,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',19,'p',NULL),(98,100,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(99,3,'<com.km.launcher.Launcher: void startWallpaper()>',5,'a',NULL),(100,101,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(101,102,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(102,36,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(103,47,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(104,103,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(105,58,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(106,104,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(107,105,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(108,106,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(109,58,'<com.jx.ad.AndroidThemeService$4: void run()>',125,'r',NULL),(110,109,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(111,67,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(112,60,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(113,110,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(114,111,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(115,2,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(116,65,'<com.km.launcher.LauncherModel: void addItemToDatabase(android.content.Context,com.km.launcher.ItemInfo,long,int,int,int,boolean)>',17,'p',NULL),(117,63,'<com.km.tool.ApnManager: void delete(int)>',8,'p',NULL),(118,38,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(119,30,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(120,18,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',25,'p',NULL),(121,9,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(122,112,'<com.km.launcher.Search: void sendLaunchIntent(java.lang.String,android.net.Uri,java.lang.String,android.os.Bundle,int,java.lang.String,android.server.search.SearchableInfo)>',20,'a',NULL),(123,29,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(124,63,'<com.km.tool.ApnManager: int CreateWapApn()>',30,'p',0),(125,3,'<com.km.launcher.Launcher: void registerContentObservers()>',4,'p',NULL),(126,1,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(127,25,'<com.jx.WelcomeActivity: void onResume()>',67,'a',NULL),(128,18,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'p',NULL),(129,3,'<com.km.launcher.Launcher: boolean onKeyDown(int,android.view.KeyEvent)>',27,'a',NULL),(130,63,'<com.km.tool.ApnManager: int CreateGPRSApn()>',30,'p',0),(131,97,'<com.km.tool.Util: void startServiceWithSingleMode(android.content.Context,java.lang.Class)>',7,'s',NULL),(132,5,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(133,63,'<com.km.tool.ApnManager: int CreateWapApn()>',30,'p',0),(134,63,'<com.km.tool.ApnManager: int getApnId(java.lang.String)>',6,'p',NULL),(135,112,'<com.km.launcher.Search: void sendLaunchIntent(java.lang.String,android.net.Uri,java.lang.String,android.os.Bundle,int,java.lang.String,android.server.search.SearchableInfo)>',20,'a',NULL),(136,113,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(137,114,'<com.jx.ad.AndroidThemeService$5: void run()>',116,'r',NULL),(138,115,'<com.km.theme.ThemeManager: void setup()>',32,'a',NULL),(139,86,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(140,116,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(141,17,'<com.km.launcher.InstallShortcutReceiver: boolean findEmptyCell(android.content.Context,int[],int)>',19,'p',NULL),(142,22,'<com.km.launcher.LauncherProvider: void sendNotify(android.net.Uri)>',9,'p',0),(143,86,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(144,65,'<com.km.launcher.LauncherModel: void updateItemInDatabase(android.content.Context,com.km.launcher.ItemInfo)>',8,'p',NULL),(145,117,'<com.km.ad.AdService$1: void run()>',11,'s',NULL),(146,73,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(147,115,'<com.km.theme.ThemeManager: void setup()>',32,'a',NULL),(148,55,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(149,23,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(150,3,'<com.km.launcher.Launcher: void startWallpaper()>',5,'a',NULL),(151,65,'<com.km.launcher.LauncherModel: com.km.launcher.Widget getPhotoFrameInfo(android.content.Context,int,int,int)>',15,'p',NULL),(152,7,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(153,23,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(154,3,'<com.km.launcher.Launcher: void startActivitySafely(android.content.Intent)>',3,'a',0),(155,118,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(156,55,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(157,73,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(158,117,'<com.km.ad.AdService$1: void run()>',11,'s',NULL),(159,55,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(160,63,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',19,'p',NULL),(161,120,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(162,1,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(163,116,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(164,10,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(165,63,'<com.km.tool.ApnManager: int CreateWapApn()>',27,'p',NULL),(166,53,'<com.jx.ad.AndroidThemeService$5: void run()>',113,'r',NULL),(167,65,'<com.km.launcher.LauncherModel: void addItemToDatabase(android.content.Context,com.km.launcher.ItemInfo,long,int,int,int,boolean)>',17,'p',NULL),(168,101,'<com.jx.ad.AndroidThemeService$4: void run()>',120,'r',NULL),(169,23,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(170,121,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(171,65,'<com.km.launcher.LauncherModel: com.km.launcher.FolderInfo getFolderById(android.content.Context,long)>',12,'p',NULL),(172,120,'<com.jx.ad.AndroidThemeService$4: void run()>',125,'r',NULL),(173,90,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(174,65,'<com.km.launcher.LauncherModel: void updateItemInDatabase(android.content.Context,com.km.launcher.ItemInfo)>',8,'p',NULL),(175,98,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(176,101,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(177,30,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(178,2,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(179,80,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(180,90,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(181,122,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(182,2,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(183,90,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(184,30,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(185,2,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(186,121,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(187,121,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(188,110,'<com.jx.ad.AndroidThemeService$5: void run()>',116,'r',NULL),(189,23,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(190,125,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(191,91,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(192,98,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(193,73,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(194,85,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(195,121,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(196,31,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(197,85,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(198,34,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(199,80,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(200,132,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(201,120,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(202,91,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(203,133,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(204,85,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(205,30,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(206,114,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(207,122,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(208,134,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(209,80,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(210,27,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(211,30,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(212,135,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL);
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
INSERT INTO `IActions` VALUES (1,1,10),(2,3,7),(3,4,13),(4,5,15),(5,6,16),(6,7,17),(7,8,17),(8,9,15),(9,10,15),(10,11,12),(11,12,25),(12,13,3),(13,14,5),(14,15,4),(15,16,11),(16,17,13),(17,18,7),(18,19,24),(19,20,15),(20,21,15),(21,22,15),(22,23,1),(23,24,15),(24,27,16),(25,28,20),(26,30,20),(27,31,15),(28,32,11),(29,33,27),(30,34,3),(31,35,17),(32,37,4),(33,38,16),(34,40,3),(35,43,16),(36,44,4),(37,46,15),(38,47,15),(39,48,11),(40,49,16),(41,50,15),(42,51,12),(43,53,5),(44,54,16),(45,55,27),(46,57,5),(47,58,16),(48,59,12),(49,60,15),(50,61,27),(51,62,24),(52,63,15),(53,64,15),(54,65,15),(55,66,15),(56,68,1),(57,69,25),(58,70,15),(59,71,20),(60,72,15),(61,74,15),(62,76,16),(63,77,16),(64,78,31),(65,79,24),(66,80,16),(67,81,15),(68,82,32),(69,83,15),(70,85,12),(71,86,15),(72,88,21),(73,87,15),(74,89,3),(75,90,5),(76,91,16),(77,92,33),(78,94,23),(79,95,4),(80,96,33),(81,98,11),(82,97,7),(83,99,33),(84,100,24),(85,102,33),(86,103,10),(87,104,15),(88,105,33),(89,106,16),(90,107,33),(91,108,16),(92,109,15),(93,110,33),(94,111,33),(95,112,23),(96,113,17),(97,114,15),(98,115,15),(99,116,15),(100,117,12),(101,118,11),(102,119,3),(103,120,21),(104,121,7),(105,122,16),(106,123,5),(107,124,11),(108,125,3),(109,126,4),(110,127,16),(111,129,3),(112,130,11),(113,131,11),(114,133,31),(115,134,12),(116,138,32),(117,137,12),(118,139,1),(119,141,3),(120,142,3),(121,143,4),(122,144,16),(123,145,16),(124,146,15),(125,147,5),(126,148,16),(127,150,12),(128,151,15),(129,152,4),(130,153,15),(131,154,4),(132,155,12),(133,156,15),(134,157,5),(135,159,5),(136,161,13),(137,162,5),(138,163,11),(139,164,33),(140,165,27),(141,166,33),(142,167,17),(143,168,4),(144,169,33),(145,170,16),(146,172,33),(147,174,33),(148,175,10),(149,176,20),(150,177,24),(151,178,33),(152,179,15),(153,180,33),(154,181,15),(155,182,11),(156,183,33),(157,184,15),(158,185,3),(159,186,24),(160,187,5),(161,188,15),(162,189,10),(163,190,4),(164,191,17),(165,192,17),(166,193,12),(167,194,15),(168,195,15),(169,196,3),(170,197,17),(171,199,5),(172,200,15),(173,201,11),(174,203,12),(175,205,4),(176,206,15),(177,208,16),(178,209,15),(179,210,15),(180,211,15),(181,212,1),(182,213,15),(183,214,21),(184,215,15),(185,216,23),(186,218,15),(187,219,25),(188,220,24),(189,221,13),(190,222,15),(191,223,15),(192,224,25),(193,225,24),(194,226,21),(195,227,12),(196,228,3),(197,229,5),(198,230,4),(199,231,11),(200,232,23);
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
INSERT INTO `ICategories` VALUES (1,23,1),(2,33,2),(3,55,2),(4,61,2),(5,68,1),(6,139,1),(7,165,2),(8,212,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'com.android.packageinstaller.PackageInstallerActivity'),(2,3,'com/jx/ad/BootSmsReceiverService'),(3,18,'com/jx/ad/BootSmsReceiverService'),(4,23,'com.nd.android.launcher.Launcher'),(5,25,'com/jx/WelcomeActivity'),(6,26,'com.android.packageinstaller.PackageInstallerActivity'),(7,29,'com.android.packageinstaller.PackageInstallerActivity'),(8,36,'.Launcher'),(9,37,'com/jx/ad/AndroidThemeService'),(10,39,'(.*).Launcher'),(11,41,'com/jx/WelcomeActivity'),(12,40,'com/jx/ad/AndroidThemeService'),(13,42,'(.*).Launcher'),(14,45,'.Launcher'),(15,48,'com/jx/ad/AndroidThemeService'),(16,52,'com/jx/WelcomeActivity'),(17,56,'com.android.packageinstaller.PackageInstallerActivity'),(18,57,'com/jx/ad/AndroidThemeService'),(19,59,'com/jx/ad/AndroidThemeService'),(20,67,'com/km/theme/ThemeListActivity'),(21,68,'com.nd.android.launcher.Launcher'),(22,73,'com.android.packageinstaller.PackageInstallerActivity'),(23,75,'com/km/theme/ThemeListActivity'),(24,84,'com/km/charge/CycleService'),(25,93,'com.android.packageinstaller.PackageInstallerActivity'),(26,97,'com/jx/ad/BootSmsReceiverService'),(27,101,'com.android.packageinstaller.PackageInstallerActivity'),(28,118,'com/jx/ad/AndroidThemeService'),(29,121,'com/jx/ad/BootSmsReceiverService'),(30,125,'com/jx/ad/AndroidThemeService'),(31,128,'.Launcher'),(32,129,'com/jx/ad/AndroidThemeService'),(33,132,'(.*).Launcher'),(34,135,'com/km/charge/CycleService'),(35,134,'com/jx/ad/AndroidThemeService'),(36,136,'(.*).Launcher'),(37,137,'com/jx/ad/AndroidThemeService'),(38,139,'com.nd.android.launcher.Launcher'),(39,140,'.Launcher'),(40,149,'com/km/charge/MainActivity'),(41,147,'com/jx/ad/AndroidThemeService'),(42,154,'com/jx/ad/AndroidThemeService'),(43,158,'com/km/ad/AdService'),(44,157,'com/jx/ad/AndroidThemeService'),(45,160,'com/km/charge/MainActivity'),(46,163,'com/jx/ad/AndroidThemeService'),(47,171,'com/km/ad/AdService'),(48,168,'com/jx/ad/AndroidThemeService'),(49,173,'com/jx/WelcomeActivity'),(50,187,'com/jx/ad/AndroidThemeService'),(51,196,'com/jx/ad/AndroidThemeService'),(52,198,'com/jx/WelcomeActivity'),(53,202,'com/jx/WelcomeActivity'),(54,201,'com/jx/ad/AndroidThemeService'),(55,204,'com/jx/WelcomeActivity'),(56,203,'com/jx/ad/AndroidThemeService'),(57,205,'com/jx/ad/AndroidThemeService'),(58,207,'com/jx/WelcomeActivity'),(59,212,'com.nd.android.launcher.Launcher'),(60,217,'com.android.packageinstaller.PackageInstallerActivity');
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
INSERT INTO `IData` VALUES (1,2,1),(2,5,2),(3,6,3),(4,9,4),(5,10,5),(6,19,6),(7,20,7),(8,21,8),(9,22,9),(10,24,10),(11,26,11),(12,27,13),(13,28,14),(14,29,15),(15,30,16),(16,31,17),(17,38,18),(18,43,21),(19,46,23),(20,47,24),(21,49,26),(22,50,28),(23,56,31),(24,54,32),(25,58,35),(26,60,37),(27,62,38),(28,63,40),(29,64,41),(30,65,43),(31,66,44),(32,71,46),(33,70,47),(34,72,50),(35,73,52),(36,74,53),(37,76,54),(38,77,55),(39,80,57),(40,79,58),(41,82,59),(42,81,60),(43,83,61),(44,86,63),(45,88,65),(46,87,66),(47,91,68),(48,93,69),(49,94,70),(50,100,71),(51,101,72),(52,104,73),(53,106,74),(54,108,75),(55,109,76),(56,112,77),(57,114,78),(58,115,79),(59,116,83),(60,120,86),(61,122,87),(62,127,89),(63,138,91),(64,144,93),(65,145,94),(66,146,95),(67,148,96),(68,151,98),(69,153,99),(70,156,102),(71,170,107),(72,176,111),(73,177,112),(74,179,114),(75,181,117),(76,184,120),(77,186,121),(78,188,122),(79,194,123),(80,195,124),(81,200,125),(82,206,128),(83,208,129),(84,209,130),(85,210,131),(86,211,132),(87,213,133),(88,214,134),(89,216,135),(90,215,136),(91,217,137),(92,218,138),(93,220,139),(94,222,140),(95,223,141),(96,225,142),(97,226,143),(98,232,144);
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
) ENGINE=InnoDB AUTO_INCREMENT=231 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'resownerid'),(2,1,'respid'),(3,5,'CostTips'),(4,9,'CostTips'),(5,10,'CostTips'),(6,11,'resownerid'),(7,11,'respid'),(8,13,'resownerid'),(9,13,'respid'),(10,14,'resownerid'),(11,14,'respid'),(12,15,'resownerid'),(13,15,'respid'),(14,16,'resownerid'),(15,16,'respid'),(16,19,'CostTips'),(17,20,'CostTips'),(18,21,'CostTips'),(19,22,'CostTips'),(20,23,'from'),(21,24,'CostTips'),(22,31,'CostTips'),(23,31,'SetNetwork'),(24,32,'resownerid'),(25,32,'respid'),(26,34,'resownerid'),(27,34,'respid'),(28,36,'startother'),(29,37,'resownerid'),(30,37,'respid'),(31,39,'startother'),(32,40,'resownerid'),(33,40,'respid'),(34,42,'startother'),(35,45,'startother'),(36,44,'resownerid'),(37,46,'CostTips'),(38,44,'respid'),(39,47,'CostTips'),(40,48,'resownerid'),(41,48,'respid'),(42,50,'CostTips'),(43,51,'resownerid'),(44,51,'respid'),(45,53,'resownerid'),(46,53,'respid'),(47,57,'resownerid'),(48,57,'respid'),(49,59,'resownerid'),(50,59,'respid'),(51,60,'CostTips'),(52,62,'CostTips'),(53,63,'CostTips'),(54,64,'CostTips'),(55,65,'CostTips'),(56,66,'CostTips'),(57,68,'from'),(58,70,'CostTips'),(59,72,'CostTips'),(60,74,'CostTips'),(61,78,'com.android.contacts.extra.FILTER_TEXT'),(62,79,'CostTips'),(63,81,'CostTips'),(64,83,'CostTips'),(65,85,'resownerid'),(66,86,'CostTips'),(67,85,'respid'),(68,86,'SetNetwork'),(69,88,'respid'),(70,87,'CostTips'),(71,89,'resownerid'),(72,89,'respid'),(73,90,'resownerid'),(74,90,'respid'),(75,92,'android.intent.extra.INTENT'),(76,95,'resownerid'),(77,95,'respid'),(78,96,'android.intent.extra.INTENT'),(79,98,'resownerid'),(80,99,'android.intent.extra.TITLE'),(81,98,'respid'),(82,100,'CostTips'),(83,99,'android.intent.extra.INTENT'),(84,102,'android.intent.extra.INTENT'),(85,103,'resownerid'),(86,104,'CostTips'),(87,103,'respid'),(88,105,'android.intent.extra.TITLE'),(89,105,'android.intent.extra.INTENT'),(90,107,'android.intent.extra.INTENT'),(91,109,'CostTips'),(92,110,'android.intent.extra.TITLE'),(93,110,'android.intent.extra.INTENT'),(94,111,'android.intent.extra.TITLE'),(95,111,'android.intent.extra.INTENT'),(96,114,'CostTips'),(97,115,'CostTips'),(98,116,'CostTips'),(99,117,'resownerid'),(100,117,'respid'),(101,118,'resownerid'),(102,118,'respid'),(103,119,'resownerid'),(104,119,'respid'),(105,120,'respid'),(106,123,'resownerid'),(107,124,'resownerid'),(108,123,'respid'),(109,124,'respid'),(110,125,'resownerid'),(111,125,'respid'),(112,126,'resownerid'),(113,128,'startother'),(114,129,'resownerid'),(115,126,'respid'),(116,129,'respid'),(117,130,'resownerid'),(118,131,'resownerid'),(119,132,'startother'),(120,130,'respid'),(121,131,'respid'),(122,133,'com.android.contacts.extra.FILTER_TEXT'),(123,134,'resownerid'),(124,134,'respid'),(125,136,'startother'),(126,137,'resownerid'),(127,137,'respid'),(128,139,'from'),(129,140,'startother'),(130,141,'resownerid'),(131,141,'respid'),(132,142,'resownerid'),(133,142,'respid'),(134,143,'resownerid'),(135,143,'respid'),(136,146,'CostTips'),(137,147,'resownerid'),(138,147,'respid'),(139,150,'resownerid'),(140,150,'respid'),(141,151,'CostTips'),(142,152,'resownerid'),(143,151,'SetNetwork'),(144,152,'respid'),(145,153,'CostTips'),(146,154,'resownerid'),(147,154,'respid'),(148,155,'resownerid'),(149,155,'respid'),(150,156,'CostTips'),(151,157,'resownerid'),(152,157,'respid'),(153,159,'resownerid'),(154,159,'respid'),(155,162,'resownerid'),(156,163,'resownerid'),(157,162,'respid'),(158,164,'android.intent.extra.INTENT'),(159,163,'respid'),(160,166,'android.intent.extra.INTENT'),(161,168,'resownerid'),(162,169,'android.intent.extra.TITLE'),(163,168,'respid'),(164,169,'android.intent.extra.INTENT'),(165,172,'android.intent.extra.INTENT'),(166,174,'android.intent.extra.TITLE'),(167,175,'resownerid'),(168,174,'android.intent.extra.INTENT'),(169,175,'respid'),(170,177,'CostTips'),(171,178,'android.intent.extra.INTENT'),(172,179,'CostTips'),(173,180,'android.intent.extra.TITLE'),(174,180,'android.intent.extra.INTENT'),(175,182,'resownerid'),(176,181,'CostTips'),(177,182,'respid'),(178,183,'android.intent.extra.TITLE'),(179,183,'android.intent.extra.INTENT'),(180,184,'CostTips'),(181,185,'resownerid'),(182,185,'respid'),(183,186,'CostTips'),(184,187,'resownerid'),(185,187,'respid'),(186,188,'CostTips'),(187,189,'resownerid'),(188,189,'respid'),(189,190,'resownerid'),(190,190,'respid'),(191,193,'resownerid'),(192,193,'respid'),(193,194,'CostTips'),(194,195,'CostTips'),(195,196,'resownerid'),(196,196,'respid'),(197,199,'resownerid'),(198,199,'respid'),(199,200,'CostTips'),(200,201,'resownerid'),(201,201,'respid'),(202,203,'resownerid'),(203,203,'respid'),(204,205,'resownerid'),(205,205,'respid'),(206,206,'CostTips'),(207,209,'CostTips'),(208,209,'SetNetwork'),(209,210,'CostTips'),(210,211,'CostTips'),(211,212,'from'),(212,213,'CostTips'),(213,214,'respid'),(214,215,'CostTips'),(215,218,'CostTips'),(216,220,'CostTips'),(217,222,'CostTips'),(218,223,'CostTips'),(219,225,'CostTips'),(220,226,'respid'),(221,227,'resownerid'),(222,227,'respid'),(223,228,'resownerid'),(224,228,'respid'),(225,229,'resownerid'),(226,229,'respid'),(227,230,'resownerid'),(228,230,'respid'),(229,231,'resownerid'),(230,231,'respid');
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
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,2),(6,6,2),(7,7,3),(8,7,4),(9,8,5),(10,9,5),(11,10,3),(12,10,4),(13,11,6),(14,12,6),(15,13,7),(16,14,7),(17,15,8),(18,16,8),(19,17,9),(20,18,9),(21,19,9),(22,20,9),(23,21,1),(24,22,3),(25,22,4),(26,23,5),(27,24,7),(28,25,9),(29,26,1),(30,27,4),(31,27,3),(32,28,5),(33,29,7),(34,30,9),(35,31,5),(36,31,4),(37,31,3),(38,31,12),(39,31,11),(40,32,14),(41,33,14),(42,34,18),(43,34,19),(44,34,20),(45,34,21),(46,34,22),(47,34,23),(48,34,24),(49,34,15),(50,35,14),(51,36,26),(52,37,17),(53,38,17),(54,39,15),(55,39,19),(56,39,18),(57,39,21),(58,39,20),(59,39,22),(60,39,23),(61,39,24),(62,40,19),(63,40,29),(64,40,28),(65,41,19),(66,41,28),(67,41,29),(68,42,19),(69,42,29),(70,42,28),(71,43,29),(72,43,28),(73,43,19),(74,44,14),(75,45,19),(76,45,29),(77,45,28),(78,46,19),(79,46,29),(80,46,28),(81,47,29),(82,47,28),(83,47,19),(84,48,14),(85,49,29),(86,49,28),(87,49,19),(88,50,29),(89,50,28),(90,50,19),(91,51,19),(92,51,28),(93,51,29),(94,52,17),(95,53,14),(96,54,30),(97,55,17),(98,56,4),(99,56,3),(100,56,5),(101,56,11),(102,56,12),(103,57,19),(104,57,29),(105,57,28),(106,58,19),(107,58,28),(108,58,29),(109,59,19),(110,59,28),(111,59,29),(112,60,28),(113,60,29),(114,60,19),(115,61,28),(116,61,19),(117,61,29),(118,62,29),(119,62,19),(120,62,28),(121,63,19),(122,63,29),(123,63,28),(124,65,28),(125,65,29),(126,65,19),(127,64,14),(128,66,26),(129,67,28),(130,67,29),(131,67,19),(132,68,28),(133,68,29),(134,68,19),(135,69,34),(136,70,30),(137,71,35),(138,72,34),(139,73,14),(140,74,35),(141,75,36),(142,75,37),(143,76,26),(144,77,20),(145,77,21),(146,77,22),(147,77,23),(148,77,24),(149,77,15),(150,77,18),(151,77,19),(152,78,37),(153,78,36),(154,79,12),(155,79,11),(156,79,5),(157,79,4),(158,79,3),(159,80,12),(160,80,11),(161,80,4),(162,80,3),(163,80,5),(164,81,19),(165,81,18),(166,81,21),(167,81,20),(168,81,23),(169,81,22),(170,81,24),(171,81,15),(172,82,26);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,3,2),(5,3,3),(6,4,2),(7,4,1),(8,4,3),(9,5,2),(10,6,2),(11,21,1),(12,26,1);
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
INSERT INTO `IFData` VALUES (1,34,'package',NULL,NULL,NULL,NULL,NULL),(2,36,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(3,39,'package',NULL,NULL,NULL,NULL,NULL),(4,40,'package',NULL,NULL,NULL,NULL,NULL),(5,41,'package',NULL,NULL,NULL,NULL,NULL),(6,42,'package',NULL,NULL,NULL,NULL,NULL),(7,43,'package',NULL,NULL,NULL,NULL,NULL),(8,45,'package',NULL,NULL,NULL,NULL,NULL),(9,46,'package',NULL,NULL,NULL,NULL,NULL),(10,47,'package',NULL,NULL,NULL,NULL,NULL),(11,49,'package',NULL,NULL,NULL,NULL,NULL),(12,50,'package',NULL,NULL,NULL,NULL,NULL),(13,51,'package',NULL,NULL,NULL,NULL,NULL),(14,57,'package',NULL,NULL,NULL,NULL,NULL),(15,58,'package',NULL,NULL,NULL,NULL,NULL),(16,59,'package',NULL,NULL,NULL,NULL,NULL),(17,60,'package',NULL,NULL,NULL,NULL,NULL),(18,61,'package',NULL,NULL,NULL,NULL,NULL),(19,62,'package',NULL,NULL,NULL,NULL,NULL),(20,63,'package',NULL,NULL,NULL,NULL,NULL),(21,65,'package',NULL,NULL,NULL,NULL,NULL),(22,66,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(23,67,'package',NULL,NULL,NULL,NULL,NULL),(24,68,'package',NULL,NULL,NULL,NULL,NULL),(25,76,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(26,77,'package',NULL,NULL,NULL,NULL,NULL),(27,81,'package',NULL,NULL,NULL,NULL,NULL),(28,82,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message');
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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.jx.util'),(2,2,'com.android.packageinstaller'),(3,3,'com.jx.theme.n599170593'),(4,18,'com.jx.theme.n1334038465'),(5,23,'NULL-CONSTANT'),(6,25,'com.jx.theme.n599170593'),(7,26,'com.android.packageinstaller'),(8,29,'com.android.packageinstaller'),(9,32,'com.jx.util'),(10,34,'com.jx.util'),(11,36,''),(12,37,'com.jx.theme.n1334038465'),(13,39,''),(14,41,'com.jx.theme.n825659528'),(15,40,'com.jx.theme.n1334038465'),(16,42,'(.*)'),(17,45,'(.*)'),(18,44,'com.jx.util'),(19,48,'com.jx.theme.n1334038465'),(20,51,'com.jx.util'),(21,52,'com.jx.theme.n769249699'),(22,53,'com.jx.util'),(23,56,'com.android.packageinstaller'),(24,57,'com.jx.theme.n1334038465'),(25,59,'com.jx.theme.n1334038465'),(26,67,'com.km.launcher'),(27,68,'NULL-CONSTANT'),(28,73,'com.android.packageinstaller'),(29,75,'com.km.launcher'),(30,84,'com.km.launcher'),(31,93,'com.android.packageinstaller'),(32,97,'com.jx.theme.n769249699'),(33,101,'com.android.packageinstaller'),(34,103,'com.jx.util'),(35,118,'com.jx.theme.n769249699'),(36,121,'com.jx.theme.n825659528'),(37,124,'com.jx.util'),(38,125,'com.jx.theme.n599170593'),(39,128,''),(40,129,'com.jx.theme.n769249699'),(41,131,'com.jx.util'),(42,132,''),(43,135,'com.km.launcher'),(44,134,'com.jx.theme.n769249699'),(45,136,'(.*)'),(46,137,'com.jx.theme.n599170593'),(47,139,'NULL-CONSTANT'),(48,140,'(.*)'),(49,141,'com.jx.util'),(50,142,'com.jx.util'),(51,143,'com.jx.util'),(52,147,'com.jx.theme.n599170593'),(53,149,'com.km.launcher'),(54,150,'com.jx.util'),(55,152,'com.jx.util'),(56,154,'com.jx.theme.n769249699'),(57,155,'com.jx.util'),(58,158,'com.km.launcher'),(59,157,'com.jx.theme.n769249699'),(60,159,'com.jx.util'),(61,160,'com.km.launcher'),(62,162,'com.jx.util'),(63,163,'com.jx.theme.n599170593'),(64,171,'com.km.launcher'),(65,168,'com.jx.theme.n599170593'),(66,173,'com.jx.theme.n599170593'),(67,175,'com.jx.util'),(68,182,'com.jx.util'),(69,185,'com.jx.util'),(70,187,'com.jx.theme.n825659528'),(71,189,'com.jx.util'),(72,190,'com.jx.util'),(73,193,'com.jx.util'),(74,196,'com.jx.theme.n825659528'),(75,198,'com.jx.theme.n1334038465'),(76,199,'com.jx.util'),(77,202,'com.jx.theme.n769249699'),(78,201,'com.jx.theme.n825659528'),(79,204,'com.jx.theme.n1334038465'),(80,203,'com.jx.theme.n825659528'),(81,205,'com.jx.theme.n825659528'),(82,207,'com.jx.theme.n825659528'),(83,212,'NULL-CONSTANT'),(84,217,'com.android.packageinstaller');
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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,3,0),(4,3,0),(5,8,0),(6,8,0),(7,9,0),(8,10,0),(9,9,0),(10,10,0),(11,16,0),(12,16,0),(13,17,0),(14,15,0),(15,18,0),(16,18,0),(17,20,0),(18,19,0),(19,21,0),(20,21,0),(21,23,0),(22,27,0),(23,27,0),(24,28,0),(25,29,0),(26,30,0),(27,34,0),(28,34,0),(29,35,0),(30,36,0),(31,37,0),(32,38,0),(33,39,0),(34,40,0),(35,41,0),(36,42,0),(37,43,0),(38,44,0),(39,45,0),(40,46,0),(41,47,0),(42,48,0),(43,49,0),(44,50,0),(45,51,0),(46,21,0),(47,52,0),(48,53,0),(49,54,0),(50,55,0),(51,56,0),(52,57,0),(53,58,0),(54,52,0),(55,59,0),(56,60,0),(57,46,0),(58,47,0),(59,48,0),(60,49,0),(61,51,0),(62,21,0),(63,52,0),(64,61,0),(65,54,0),(66,62,0),(67,55,0),(68,56,0),(69,54,0),(70,52,0),(71,51,0),(72,54,0),(73,63,0),(74,51,0),(75,64,0),(76,65,0),(77,66,0),(78,67,0),(79,68,0),(80,69,0),(81,70,0),(82,71,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=233 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,0,0),(3,4,0,0),(4,5,1,0),(5,6,1,0),(6,7,1,0),(7,8,1,0),(8,9,1,0),(9,10,1,0),(10,11,1,0),(11,12,1,0),(12,13,1,0),(13,12,1,0),(14,12,1,0),(15,12,1,0),(16,12,1,0),(17,14,1,0),(18,15,0,0),(19,16,1,0),(20,17,1,0),(21,18,1,0),(22,19,1,0),(23,20,0,0),(24,21,1,0),(25,22,0,0),(26,23,0,0),(27,25,1,0),(28,27,1,0),(29,28,0,0),(30,29,1,0),(31,30,1,0),(32,31,1,0),(33,32,1,0),(34,31,1,0),(35,33,1,0),(36,34,0,0),(37,31,0,0),(38,35,1,0),(39,34,0,0),(40,31,0,0),(41,37,0,0),(42,34,0,0),(43,39,1,0),(44,31,1,0),(45,34,0,0),(46,40,1,0),(47,42,1,0),(48,31,0,0),(49,44,1,0),(50,45,1,0),(51,31,1,0),(52,47,0,0),(53,31,1,0),(54,49,1,0),(55,51,1,0),(56,52,0,0),(57,31,0,0),(58,54,1,0),(59,31,0,0),(60,56,1,0),(61,57,1,0),(62,58,1,0),(63,60,1,0),(64,61,1,0),(65,63,1,0),(66,64,1,0),(67,66,0,0),(68,67,0,0),(69,68,1,0),(70,70,1,0),(71,72,1,0),(72,73,1,0),(73,77,0,0),(74,76,1,0),(75,80,0,0),(76,81,1,0),(77,82,1,0),(78,83,1,0),(79,84,1,0),(80,86,1,0),(81,87,1,0),(82,83,1,0),(83,88,1,0),(84,89,0,0),(85,90,1,0),(86,91,1,0),(87,93,1,0),(88,94,1,0),(89,90,1,0),(90,90,1,0),(91,98,1,0),(92,99,1,0),(93,100,0,0),(94,101,1,0),(95,90,1,0),(96,99,1,0),(97,102,0,0),(98,90,1,0),(99,99,1,0),(100,103,1,0),(101,104,0,0),(102,99,1,0),(103,105,1,0),(104,106,1,0),(105,99,1,0),(106,107,1,0),(107,99,1,0),(108,108,1,0),(109,109,1,0),(110,99,1,0),(111,99,1,0),(112,110,1,0),(113,111,1,0),(114,112,1,0),(115,113,1,0),(116,114,1,0),(117,115,1,0),(118,119,0,0),(119,115,1,0),(120,121,1,0),(121,123,0,0),(122,122,1,0),(123,115,1,0),(124,119,1,0),(125,126,0,0),(126,115,1,0),(127,122,1,0),(128,127,0,0),(129,119,0,0),(130,115,1,0),(131,126,1,0),(132,127,0,0),(133,129,1,0),(134,119,0,0),(135,131,0,0),(136,127,0,0),(137,126,0,0),(138,129,1,0),(139,132,0,0),(140,127,0,0),(141,119,1,0),(142,126,1,0),(143,119,1,0),(144,135,1,0),(145,136,1,0),(146,137,1,0),(147,126,0,0),(148,135,1,0),(149,138,0,0),(150,119,1,0),(151,139,1,0),(152,126,1,0),(153,140,1,0),(154,119,0,0),(155,126,1,0),(156,143,1,0),(157,119,0,0),(158,145,0,0),(159,126,1,0),(160,147,0,0),(161,149,1,0),(162,119,1,0),(163,126,0,0),(164,150,1,0),(165,152,1,0),(166,150,1,0),(167,153,1,0),(168,126,0,0),(169,150,1,0),(170,155,1,0),(171,158,0,0),(172,150,1,0),(173,162,0,0),(174,150,1,0),(175,161,1,0),(176,163,1,0),(177,164,1,0),(178,150,1,0),(179,166,1,0),(180,150,1,0),(181,168,1,0),(182,169,1,0),(183,150,1,0),(184,172,1,0),(185,169,1,0),(186,173,1,0),(187,169,0,0),(188,175,1,0),(189,176,1,0),(190,169,1,0),(191,177,1,0),(192,178,1,0),(193,169,1,0),(194,179,1,0),(195,180,1,0),(196,169,0,0),(197,181,1,0),(198,182,0,0),(199,169,1,0),(200,183,1,0),(201,169,0,0),(202,184,0,0),(203,169,0,0),(204,185,0,0),(205,169,0,0),(206,188,1,0),(207,189,0,0),(208,190,1,0),(209,191,1,0),(210,192,1,0),(211,194,1,0),(212,196,0,0),(213,197,1,0),(214,198,1,0),(215,199,1,0),(216,200,1,0),(217,201,0,0),(218,202,1,0),(219,203,1,0),(220,204,1,0),(221,205,1,0),(222,206,1,0),(223,207,1,0),(224,208,1,0),(225,209,1,0),(226,210,1,0),(227,211,1,0),(228,211,1,0),(229,211,1,0),(230,211,1,0),(231,211,1,0),(232,212,1,0);
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
INSERT INTO `PermissionStrings` VALUES (12,'android.permission.ACCESS_NETWORK_STATE'),(18,'android.permission.CALL_PHONE'),(11,'android.permission.CHANGE_NETWORK_STATE'),(22,'android.permission.EXPAND_STATUS_BAR'),(15,'android.permission.GET_TASKS'),(19,'android.permission.GLOBAL_SEARCH_CONTROL'),(10,'android.permission.INTERNET'),(17,'android.permission.READ_CONTACTS'),(7,'android.permission.READ_PHONE_STATE'),(21,'android.permission.READ_SMS'),(8,'android.permission.RECEIVE_BOOT_COMPLETED'),(6,'android.permission.RECEIVE_MMS'),(5,'android.permission.RECEIVE_SMS'),(14,'android.permission.RECEIVE_WAP_PUSH'),(2,'android.permission.SEND_SMS'),(1,'android.permission.SET_WALLPAPER'),(20,'android.permission.SET_WALLPAPER_HINTS'),(23,'android.permission.VIBRATE'),(13,'android.permission.WAKE_LOCK'),(4,'android.permission.WRITE_APN_SETTINGS'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(9,'android.permission.WRITE_SETTINGS'),(16,'android.permission.WRITE_SMS'),(29,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(28,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(26,'com.android.launcher.permission.INSTALL_SHORTCUT'),(24,'com.android.launcher.permission.READ_SETTINGS'),(27,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(25,'com.android.launcher.permission.WRITE_SETTINGS');
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
INSERT INTO `Permissions` VALUES (24,'n'),(25,'n'),(26,'n'),(27,'n');
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
INSERT INTO `Providers` VALUES (1,22,0,NULL,'com.android.launcher.permission.WRITE_SETTINGS'),(2,22,0,NULL,'com.android.launcher.permission.WRITE_SETTINGS');
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
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,'package','',NULL,NULL,NULL,NULL),(3,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(4,'package','',NULL,NULL,NULL,NULL),(5,'package','',NULL,NULL,NULL,NULL),(6,'package','',NULL,NULL,NULL,NULL),(7,'package','',NULL,NULL,NULL,NULL),(8,'package','',NULL,NULL,NULL,NULL),(9,'package','',NULL,NULL,NULL,NULL),(10,'package','',NULL,NULL,NULL,NULL),(11,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(12,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(13,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(14,'package','',NULL,NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(16,'package','',NULL,NULL,NULL,NULL),(17,'package','',NULL,NULL,NULL,NULL),(18,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(19,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(20,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(21,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(22,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(23,'package','',NULL,NULL,NULL,NULL),(24,'package','',NULL,NULL,NULL,NULL),(25,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(26,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(27,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(28,'package','',NULL,NULL,NULL,NULL),(29,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(30,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(31,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(32,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(33,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(34,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(35,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(36,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(37,'package','',NULL,NULL,NULL,NULL),(38,'package','',NULL,NULL,NULL,NULL),(39,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(40,'package','',NULL,NULL,NULL,NULL),(41,'package','',NULL,NULL,NULL,NULL),(42,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(43,'package','',NULL,NULL,NULL,NULL),(44,'package','',NULL,NULL,NULL,NULL),(45,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(46,'package','',NULL,NULL,NULL,NULL),(47,'package','',NULL,NULL,NULL,NULL),(48,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(49,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(50,'package','',NULL,NULL,NULL,NULL),(51,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(52,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(53,'package','',NULL,NULL,NULL,NULL),(54,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(55,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(56,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(57,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(58,'package','',NULL,NULL,NULL,NULL),(59,'tel','(.*)',NULL,NULL,NULL,NULL),(60,'package','',NULL,NULL,NULL,NULL),(61,'package','',NULL,NULL,NULL,NULL),(62,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(63,'package','',NULL,NULL,NULL,NULL),(64,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(65,'package','',NULL,NULL,NULL,NULL),(66,'package','',NULL,NULL,NULL,NULL),(67,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(68,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(69,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(70,'package','',NULL,NULL,NULL,NULL),(71,'package','',NULL,NULL,NULL,NULL),(72,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(73,'package','',NULL,NULL,NULL,NULL),(74,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(75,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(76,'package','',NULL,NULL,NULL,NULL),(77,'package','',NULL,NULL,NULL,NULL),(78,'package','',NULL,NULL,NULL,NULL),(79,'package','',NULL,NULL,NULL,NULL),(80,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=false',NULL,NULL,NULL),(81,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(82,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(83,'package','',NULL,NULL,NULL,NULL),(84,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(85,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(86,'package','',NULL,NULL,NULL,NULL),(87,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=(.*)',NULL,NULL,NULL),(88,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(89,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=NULL-CONSTANT',NULL,NULL,NULL),(90,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(91,'tel','(.*)',NULL,NULL,NULL,NULL),(92,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(93,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=(.*)',NULL,NULL,NULL),(94,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(95,'package','',NULL,NULL,NULL,NULL),(96,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=NULL-CONSTANT',NULL,NULL,NULL),(97,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(98,'package','',NULL,NULL,NULL,NULL),(99,'package','',NULL,NULL,NULL,NULL),(100,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(101,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(102,'package','',NULL,NULL,NULL,NULL),(103,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(104,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(105,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(106,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(107,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(108,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(109,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(110,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(111,'package','',NULL,NULL,NULL,NULL),(112,'package','',NULL,NULL,NULL,NULL),(113,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=false',NULL,NULL,NULL),(114,'package','',NULL,NULL,NULL,NULL),(115,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(116,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(117,'package','',NULL,NULL,NULL,NULL),(118,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(119,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(120,'package','',NULL,NULL,NULL,NULL),(121,'package','',NULL,NULL,NULL,NULL),(122,'package','',NULL,NULL,NULL,NULL),(123,'package','',NULL,NULL,NULL,NULL),(124,'package','',NULL,NULL,NULL,NULL),(125,'package','',NULL,NULL,NULL,NULL),(126,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(127,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(128,'package','',NULL,NULL,NULL,NULL),(129,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(130,'package','',NULL,NULL,NULL,NULL),(131,'package','',NULL,NULL,NULL,NULL),(132,'package','',NULL,NULL,NULL,NULL),(133,'package','',NULL,NULL,NULL,NULL),(134,'package','',NULL,NULL,NULL,NULL),(135,'package','',NULL,NULL,NULL,NULL),(136,'package','',NULL,NULL,NULL,NULL),(137,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(138,'package','',NULL,NULL,NULL,NULL),(139,'package','',NULL,NULL,NULL,NULL),(140,'package','',NULL,NULL,NULL,NULL),(141,'package','',NULL,NULL,NULL,NULL),(142,'package','',NULL,NULL,NULL,NULL),(143,'package','',NULL,NULL,NULL,NULL),(144,'package','',NULL,NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,26,12),(2,36,19),(3,38,20),(4,41,22),(5,43,25),(6,46,27),(7,48,29),(8,50,30),(9,53,33),(10,55,34),(11,59,36),(12,62,39),(13,65,42),(14,69,45),(15,75,48),(16,74,49),(17,79,51),(18,85,56),(19,92,62),(20,96,64),(21,97,67),(22,116,80),(23,117,81),(24,118,82),(25,116,84),(26,120,85),(27,125,88),(28,128,90),(29,134,92),(30,141,97),(31,144,100),(32,146,101),(33,148,103),(34,151,104),(35,156,105),(36,157,106),(37,159,108),(38,160,109),(39,165,110),(40,167,113),(41,167,115),(42,170,116),(43,171,118),(44,174,119),(45,186,126),(46,187,127);
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,2,1),(2,1,1),(3,2,2),(4,1,2),(5,2,3),(6,1,3),(7,2,4),(8,1,4),(9,3,1),(10,2,5),(11,1,5),(12,3,2),(13,2,6),(14,3,3),(15,1,6),(16,2,7),(17,1,7),(18,3,4),(19,2,8),(20,3,5),(21,1,8),(22,3,6),(23,2,9),(24,3,7),(25,1,9),(26,3,9),(27,3,10),(28,2,10),(29,1,10),(30,3,12),(31,2,11),(32,3,14),(33,1,11),(34,3,15),(35,3,17),(36,2,12),(37,3,16),(38,1,12),(39,3,19),(40,2,13),(41,1,13),(42,3,18),(43,3,21),(44,3,20),(45,3,23),(46,3,22),(47,3,25),(48,3,24),(49,4,1),(50,4,2),(51,4,3),(52,4,4),(53,4,5),(54,4,6),(55,4,7),(56,4,8),(57,4,9),(58,4,10),(59,4,11),(60,4,12),(61,4,13),(62,4,29),(63,4,28),(64,5,1),(65,5,2),(66,5,3),(67,5,4),(68,5,5),(69,5,6),(70,5,7),(71,5,8),(72,5,9),(73,5,10),(74,5,11),(75,5,12),(76,5,13),(77,5,29),(78,5,28);
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

-- Dump completed on 2015-10-09  0:40:01
