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
) ENGINE=InnoDB AUTO_INCREMENT=3222 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,52,6,2,NULL),(2,52,7,2,NULL),(3,52,25,2,NULL),(4,52,32,2,NULL),(5,118,9,2,NULL),(6,118,10,2,NULL),(7,118,27,2,NULL),(8,118,34,2,NULL),(9,129,9,2,NULL),(10,129,10,2,NULL),(11,129,27,2,NULL),(12,129,34,2,NULL),(13,134,9,2,NULL),(14,134,10,2,NULL),(15,134,27,2,NULL),(16,134,34,2,NULL),(17,154,9,2,NULL),(18,154,10,2,NULL),(19,154,27,2,NULL),(20,154,34,2,NULL),(21,157,9,2,NULL),(22,157,10,2,NULL),(23,157,27,2,NULL),(24,157,34,2,NULL),(25,202,6,2,NULL),(26,202,7,2,NULL),(27,202,25,2,NULL),(28,202,32,2,NULL),(29,124,2,2,NULL),(30,141,2,2,NULL),(31,143,2,2,NULL),(32,150,2,2,NULL),(33,162,2,2,NULL),(34,191,2,2,NULL),(35,221,2,2,NULL),(36,227,2,2,NULL),(37,228,2,2,NULL),(38,229,2,2,NULL),(39,230,2,2,NULL),(40,231,2,2,NULL),(41,17,30,2,NULL),(42,32,30,2,NULL),(43,34,30,2,NULL),(44,44,30,2,NULL),(45,51,30,2,NULL),(46,53,30,2,NULL),(47,117,30,2,NULL),(48,119,30,2,NULL),(49,123,30,2,NULL),(50,126,30,2,NULL),(51,130,30,2,NULL),(52,192,30,2,NULL),(53,165,30,2,NULL),(54,124,10,2,NULL),(55,141,10,2,NULL),(56,143,10,2,NULL),(57,150,10,2,NULL),(58,162,10,2,NULL),(59,191,10,2,NULL),(60,221,10,2,NULL),(61,227,10,2,NULL),(62,228,10,2,NULL),(63,229,10,2,NULL),(64,230,10,2,NULL),(65,231,10,2,NULL),(66,124,17,2,NULL),(67,141,17,2,NULL),(68,143,17,2,NULL),(69,150,17,2,NULL),(70,162,17,2,NULL),(71,191,17,2,NULL),(72,221,17,2,NULL),(73,227,17,2,NULL),(74,228,17,2,NULL),(75,229,17,2,NULL),(76,230,17,2,NULL),(77,231,17,2,NULL),(78,124,19,2,NULL),(79,141,19,2,NULL),(80,143,19,2,NULL),(81,150,19,2,NULL),(82,162,19,2,NULL),(83,191,19,2,NULL),(84,221,19,2,NULL),(85,227,19,2,NULL),(86,228,19,2,NULL),(87,229,19,2,NULL),(88,230,19,2,NULL),(89,231,19,2,NULL),(90,124,39,2,NULL),(91,141,39,2,NULL),(92,143,39,2,NULL),(93,150,39,2,NULL),(94,162,39,2,NULL),(95,191,39,2,NULL),(96,221,39,2,NULL),(97,227,39,2,NULL),(98,228,39,2,NULL),(99,229,39,2,NULL),(100,230,39,2,NULL),(101,231,39,2,NULL),(102,124,41,2,NULL),(103,141,41,2,NULL),(104,143,41,2,NULL),(105,150,41,2,NULL),(106,162,41,2,NULL),(107,191,41,2,NULL),(108,221,41,2,NULL),(109,227,41,2,NULL),(110,228,41,2,NULL),(111,229,41,2,NULL),(112,230,41,2,NULL),(113,231,41,2,NULL),(114,124,57,2,NULL),(115,141,57,2,NULL),(116,143,57,2,NULL),(117,150,57,2,NULL),(118,162,57,2,NULL),(119,191,57,2,NULL),(120,221,57,2,NULL),(121,227,57,2,NULL),(122,228,57,2,NULL),(123,229,57,2,NULL),(124,230,57,2,NULL),(125,231,57,2,NULL),(126,124,60,2,NULL),(127,141,60,2,NULL),(128,143,60,2,NULL),(129,150,60,2,NULL),(130,162,60,2,NULL),(131,191,60,2,NULL),(132,221,60,2,NULL),(133,227,60,2,NULL),(134,228,60,2,NULL),(135,229,60,2,NULL),(136,230,60,2,NULL),(137,231,60,2,NULL),(138,124,1,2,NULL),(139,141,1,2,NULL),(140,143,1,2,NULL),(141,150,1,2,NULL),(142,162,1,2,NULL),(143,191,1,2,NULL),(144,221,1,2,NULL),(145,227,1,2,NULL),(146,228,1,2,NULL),(147,229,1,2,NULL),(148,230,1,2,NULL),(149,231,1,2,NULL),(150,4,30,2,NULL),(151,11,30,2,NULL),(152,13,30,2,NULL),(153,14,30,2,NULL),(154,15,30,2,NULL),(155,16,30,2,NULL),(156,35,30,2,NULL),(157,131,30,2,NULL),(158,142,30,2,NULL),(159,152,30,2,NULL),(160,155,30,2,NULL),(161,159,30,2,NULL),(162,61,30,2,NULL),(163,124,9,2,NULL),(164,141,9,2,NULL),(165,143,9,2,NULL),(166,150,9,2,NULL),(167,162,9,2,NULL),(168,191,9,2,NULL),(169,221,9,2,NULL),(170,227,9,2,NULL),(171,228,9,2,NULL),(172,229,9,2,NULL),(173,230,9,2,NULL),(174,231,9,2,NULL),(175,124,15,2,NULL),(176,141,15,2,NULL),(177,143,15,2,NULL),(178,150,15,2,NULL),(179,162,15,2,NULL),(180,191,15,2,NULL),(181,221,15,2,NULL),(182,227,15,2,NULL),(183,228,15,2,NULL),(184,229,15,2,NULL),(185,230,15,2,NULL),(186,231,15,2,NULL),(187,124,20,2,NULL),(188,141,20,2,NULL),(189,143,20,2,NULL),(190,150,20,2,NULL),(191,162,20,2,NULL),(192,191,20,2,NULL),(193,221,20,2,NULL),(194,227,20,2,NULL),(195,228,20,2,NULL),(196,229,20,2,NULL),(197,230,20,2,NULL),(198,231,20,2,NULL),(199,124,37,2,NULL),(200,141,37,2,NULL),(201,143,37,2,NULL),(202,150,37,2,NULL),(203,162,37,2,NULL),(204,191,37,2,NULL),(205,221,37,2,NULL),(206,227,37,2,NULL),(207,228,37,2,NULL),(208,229,37,2,NULL),(209,230,37,2,NULL),(210,231,37,2,NULL),(211,124,38,2,NULL),(212,141,38,2,NULL),(213,143,38,2,NULL),(214,150,38,2,NULL),(215,162,38,2,NULL),(216,191,38,2,NULL),(217,221,38,2,NULL),(218,227,38,2,NULL),(219,228,38,2,NULL),(220,229,38,2,NULL),(221,230,38,2,NULL),(222,231,38,2,NULL),(223,124,43,2,NULL),(224,141,43,2,NULL),(225,143,43,2,NULL),(226,150,43,2,NULL),(227,162,43,2,NULL),(228,191,43,2,NULL),(229,221,43,2,NULL),(230,227,43,2,NULL),(231,228,43,2,NULL),(232,229,43,2,NULL),(233,230,43,2,NULL),(234,231,43,2,NULL),(235,124,58,2,NULL),(236,141,58,2,NULL),(237,143,58,2,NULL),(238,150,58,2,NULL),(239,162,58,2,NULL),(240,191,58,2,NULL),(241,221,58,2,NULL),(242,227,58,2,NULL),(243,228,58,2,NULL),(244,229,58,2,NULL),(245,230,58,2,NULL),(246,231,58,2,NULL),(247,124,3,2,NULL),(248,141,3,2,NULL),(249,143,3,2,NULL),(250,150,3,2,NULL),(251,162,3,2,NULL),(252,191,3,2,NULL),(253,221,3,2,NULL),(254,227,3,2,NULL),(255,228,3,2,NULL),(256,229,3,2,NULL),(257,230,3,2,NULL),(258,231,3,2,NULL),(259,78,30,2,NULL),(260,92,30,2,NULL),(261,96,30,2,NULL),(262,99,30,2,NULL),(263,102,30,2,NULL),(264,105,30,2,NULL),(265,107,30,2,NULL),(266,110,30,2,NULL),(267,111,30,2,NULL),(268,133,30,2,NULL),(269,164,30,2,NULL),(270,166,30,2,NULL),(271,169,30,2,NULL),(272,172,30,2,NULL),(273,174,30,2,NULL),(274,178,30,2,NULL),(275,180,30,2,NULL),(276,183,30,2,NULL),(277,124,8,2,NULL),(278,141,8,2,NULL),(279,143,8,2,NULL),(280,150,8,2,NULL),(281,162,8,2,NULL),(282,191,8,2,NULL),(283,221,8,2,NULL),(284,227,8,2,NULL),(285,228,8,2,NULL),(286,229,8,2,NULL),(287,230,8,2,NULL),(288,231,8,2,NULL),(289,124,16,2,NULL),(290,141,16,2,NULL),(291,143,16,2,NULL),(292,150,16,2,NULL),(293,162,16,2,NULL),(294,191,16,2,NULL),(295,221,16,2,NULL),(296,227,16,2,NULL),(297,228,16,2,NULL),(298,229,16,2,NULL),(299,230,16,2,NULL),(300,231,16,2,NULL),(301,124,18,2,NULL),(302,141,18,2,NULL),(303,143,18,2,NULL),(304,150,18,2,NULL),(305,162,18,2,NULL),(306,191,18,2,NULL),(307,221,18,2,NULL),(308,227,18,2,NULL),(309,228,18,2,NULL),(310,229,18,2,NULL),(311,230,18,2,NULL),(312,231,18,2,NULL),(313,124,21,2,NULL),(314,141,21,2,NULL),(315,143,21,2,NULL),(316,150,21,2,NULL),(317,162,21,2,NULL),(318,191,21,2,NULL),(319,221,21,2,NULL),(320,227,21,2,NULL),(321,228,21,2,NULL),(322,229,21,2,NULL),(323,230,21,2,NULL),(324,231,21,2,NULL),(325,124,51,2,NULL),(326,141,51,2,NULL),(327,143,51,2,NULL),(328,150,51,2,NULL),(329,162,51,2,NULL),(330,191,51,2,NULL),(331,221,51,2,NULL),(332,227,51,2,NULL),(333,228,51,2,NULL),(334,229,51,2,NULL),(335,230,51,2,NULL),(336,231,51,2,NULL),(337,124,52,2,NULL),(338,141,52,2,NULL),(339,143,52,2,NULL),(340,150,52,2,NULL),(341,162,52,2,NULL),(342,191,52,2,NULL),(343,221,52,2,NULL),(344,227,52,2,NULL),(345,228,52,2,NULL),(346,229,52,2,NULL),(347,230,52,2,NULL),(348,231,52,2,NULL),(349,124,54,2,NULL),(350,141,54,2,NULL),(351,143,54,2,NULL),(352,150,54,2,NULL),(353,162,54,2,NULL),(354,191,54,2,NULL),(355,221,54,2,NULL),(356,227,54,2,NULL),(357,228,54,2,NULL),(358,229,54,2,NULL),(359,230,54,2,NULL),(360,231,54,2,NULL),(361,124,23,2,NULL),(362,141,23,2,NULL),(363,143,23,2,NULL),(364,150,23,2,NULL),(365,162,23,2,NULL),(366,191,23,2,NULL),(367,221,23,2,NULL),(368,227,23,2,NULL),(369,228,23,2,NULL),(370,229,23,2,NULL),(371,230,23,2,NULL),(372,231,23,2,NULL),(373,85,30,2,NULL),(374,89,30,2,NULL),(375,90,30,2,NULL),(376,95,30,2,NULL),(377,98,30,2,NULL),(378,161,30,2,NULL),(379,167,30,2,NULL),(380,182,30,2,NULL),(381,185,30,2,NULL),(382,190,30,2,NULL),(383,193,30,2,NULL),(384,199,30,2,NULL),(385,33,30,2,NULL),(386,124,27,2,NULL),(387,141,27,2,NULL),(388,143,27,2,NULL),(389,150,27,2,NULL),(390,162,27,2,NULL),(391,191,27,2,NULL),(392,221,27,2,NULL),(393,227,27,2,NULL),(394,228,27,2,NULL),(395,229,27,2,NULL),(396,230,27,2,NULL),(397,231,27,2,NULL),(398,124,28,2,NULL),(399,141,28,2,NULL),(400,143,28,2,NULL),(401,150,28,2,NULL),(402,162,28,2,NULL),(403,191,28,2,NULL),(404,221,28,2,NULL),(405,227,28,2,NULL),(406,228,28,2,NULL),(407,229,28,2,NULL),(408,230,28,2,NULL),(409,231,28,2,NULL),(410,124,29,2,NULL),(411,141,29,2,NULL),(412,143,29,2,NULL),(413,150,29,2,NULL),(414,162,29,2,NULL),(415,191,29,2,NULL),(416,221,29,2,NULL),(417,227,29,2,NULL),(418,228,29,2,NULL),(419,229,29,2,NULL),(420,230,29,2,NULL),(421,231,29,2,NULL),(422,124,44,2,NULL),(423,141,44,2,NULL),(424,143,44,2,NULL),(425,150,44,2,NULL),(426,162,44,2,NULL),(427,191,44,2,NULL),(428,221,44,2,NULL),(429,227,44,2,NULL),(430,228,44,2,NULL),(431,229,44,2,NULL),(432,230,44,2,NULL),(433,231,44,2,NULL),(434,124,50,2,NULL),(435,141,50,2,NULL),(436,143,50,2,NULL),(437,150,50,2,NULL),(438,162,50,2,NULL),(439,191,50,2,NULL),(440,221,50,2,NULL),(441,227,50,2,NULL),(442,228,50,2,NULL),(443,229,50,2,NULL),(444,230,50,2,NULL),(445,231,50,2,NULL),(446,124,63,2,NULL),(447,141,63,2,NULL),(448,143,63,2,NULL),(449,150,63,2,NULL),(450,162,63,2,NULL),(451,191,63,2,NULL),(452,221,63,2,NULL),(453,227,63,2,NULL),(454,228,63,2,NULL),(455,229,63,2,NULL),(456,230,63,2,NULL),(457,231,63,2,NULL),(458,124,67,2,NULL),(459,141,67,2,NULL),(460,143,67,2,NULL),(461,150,67,2,NULL),(462,162,67,2,NULL),(463,191,67,2,NULL),(464,221,67,2,NULL),(465,227,67,2,NULL),(466,228,67,2,NULL),(467,229,67,2,NULL),(468,230,67,2,NULL),(469,231,67,2,NULL),(470,124,69,2,NULL),(471,141,69,2,NULL),(472,143,69,2,NULL),(473,150,69,2,NULL),(474,162,69,2,NULL),(475,191,69,2,NULL),(476,221,69,2,NULL),(477,227,69,2,NULL),(478,228,69,2,NULL),(479,229,69,2,NULL),(480,230,69,2,NULL),(481,231,69,2,NULL),(482,55,30,2,NULL),(483,124,34,2,NULL),(484,141,34,2,NULL),(485,143,34,2,NULL),(486,150,34,2,NULL),(487,162,34,2,NULL),(488,191,34,2,NULL),(489,221,34,2,NULL),(490,227,34,2,NULL),(491,228,34,2,NULL),(492,229,34,2,NULL),(493,230,34,2,NULL),(494,231,34,2,NULL),(495,124,35,2,NULL),(496,141,35,2,NULL),(497,143,35,2,NULL),(498,150,35,2,NULL),(499,162,35,2,NULL),(500,191,35,2,NULL),(501,221,35,2,NULL),(502,227,35,2,NULL),(503,228,35,2,NULL),(504,229,35,2,NULL),(505,230,35,2,NULL),(506,231,35,2,NULL),(507,124,36,2,NULL),(508,141,36,2,NULL),(509,143,36,2,NULL),(510,150,36,2,NULL),(511,162,36,2,NULL),(512,191,36,2,NULL),(513,221,36,2,NULL),(514,227,36,2,NULL),(515,228,36,2,NULL),(516,229,36,2,NULL),(517,230,36,2,NULL),(518,231,36,2,NULL),(519,124,53,2,NULL),(520,141,53,2,NULL),(521,143,53,2,NULL),(522,150,53,2,NULL),(523,162,53,2,NULL),(524,191,53,2,NULL),(525,221,53,2,NULL),(526,227,53,2,NULL),(527,228,53,2,NULL),(528,229,53,2,NULL),(529,230,53,2,NULL),(530,231,53,2,NULL),(531,124,59,2,NULL),(532,141,59,2,NULL),(533,143,59,2,NULL),(534,150,59,2,NULL),(535,162,59,2,NULL),(536,191,59,2,NULL),(537,221,59,2,NULL),(538,227,59,2,NULL),(539,228,59,2,NULL),(540,229,59,2,NULL),(541,230,59,2,NULL),(542,231,59,2,NULL),(543,124,61,2,NULL),(544,141,61,2,NULL),(545,143,61,2,NULL),(546,150,61,2,NULL),(547,162,61,2,NULL),(548,191,61,2,NULL),(549,221,61,2,NULL),(550,227,61,2,NULL),(551,228,61,2,NULL),(552,229,61,2,NULL),(553,230,61,2,NULL),(554,231,61,2,NULL),(555,124,64,2,NULL),(556,141,64,2,NULL),(557,143,64,2,NULL),(558,150,64,2,NULL),(559,162,64,2,NULL),(560,191,64,2,NULL),(561,221,64,2,NULL),(562,227,64,2,NULL),(563,228,64,2,NULL),(564,229,64,2,NULL),(565,230,64,2,NULL),(566,231,64,2,NULL),(567,124,68,2,NULL),(568,141,68,2,NULL),(569,143,68,2,NULL),(570,150,68,2,NULL),(571,162,68,2,NULL),(572,191,68,2,NULL),(573,221,68,2,NULL),(574,227,68,2,NULL),(575,228,68,2,NULL),(576,229,68,2,NULL),(577,230,68,2,NULL),(578,231,68,2,NULL),(579,55,2,2,NULL),(580,55,10,2,NULL),(581,55,17,2,NULL),(582,55,19,2,NULL),(583,55,39,2,NULL),(584,55,41,2,NULL),(585,55,57,2,NULL),(586,55,60,2,NULL),(587,55,1,2,NULL),(588,55,9,2,NULL),(589,55,15,2,NULL),(590,55,20,2,NULL),(591,55,37,2,NULL),(592,55,38,2,NULL),(593,55,43,2,NULL),(594,55,58,2,NULL),(595,55,3,2,NULL),(596,55,8,2,NULL),(597,55,16,2,NULL),(598,55,18,2,NULL),(599,55,21,2,NULL),(600,55,51,2,NULL),(601,55,52,2,NULL),(602,55,54,2,NULL),(603,55,23,2,NULL),(604,55,27,2,NULL),(605,55,28,2,NULL),(606,55,29,2,NULL),(607,55,44,2,NULL),(608,55,50,2,NULL),(609,55,63,2,NULL),(610,55,67,2,NULL),(611,55,69,2,NULL),(612,55,34,2,NULL),(613,55,35,2,NULL),(614,55,36,2,NULL),(615,55,53,2,NULL),(616,55,59,2,NULL),(617,55,61,2,NULL),(618,55,64,2,NULL),(619,55,68,2,NULL),(620,17,34,2,NULL),(621,32,34,2,NULL),(622,34,34,2,NULL),(623,44,34,2,NULL),(624,51,34,2,NULL),(625,53,34,2,NULL),(626,117,34,2,NULL),(627,119,34,2,NULL),(628,123,34,2,NULL),(629,126,34,2,NULL),(630,130,34,2,NULL),(631,192,34,2,NULL),(632,165,34,2,NULL),(633,4,34,2,NULL),(634,11,34,2,NULL),(635,13,34,2,NULL),(636,14,34,2,NULL),(637,15,34,2,NULL),(638,16,34,2,NULL),(639,35,34,2,NULL),(640,67,11,2,NULL),(641,131,34,2,NULL),(642,75,11,2,NULL),(643,142,34,2,NULL),(644,78,2,2,NULL),(645,152,34,2,NULL),(646,92,2,2,NULL),(647,155,34,2,NULL),(648,96,2,2,NULL),(649,159,34,2,NULL),(650,99,2,2,NULL),(651,61,34,2,NULL),(652,102,2,2,NULL),(653,78,34,2,NULL),(654,105,2,2,NULL),(655,92,34,2,NULL),(656,107,2,2,NULL),(657,96,34,2,NULL),(658,110,2,2,NULL),(659,99,34,2,NULL),(660,111,2,2,NULL),(661,102,34,2,NULL),(662,133,2,2,NULL),(663,105,34,2,NULL),(664,164,2,2,NULL),(665,107,34,2,NULL),(666,166,2,2,NULL),(667,110,34,2,NULL),(668,169,2,2,NULL),(669,111,34,2,NULL),(670,172,2,2,NULL),(671,133,34,2,NULL),(672,174,2,2,NULL),(673,164,34,2,NULL),(674,178,2,2,NULL),(675,166,34,2,NULL),(676,180,2,2,NULL),(677,169,34,2,NULL),(678,183,2,2,NULL),(679,172,34,2,NULL),(680,17,3,2,NULL),(681,174,34,2,NULL),(682,32,3,2,NULL),(683,178,34,2,NULL),(684,34,3,2,NULL),(685,180,34,2,NULL),(686,44,3,2,NULL),(687,183,34,2,NULL),(688,51,3,2,NULL),(689,85,34,2,NULL),(690,53,3,2,NULL),(691,89,34,2,NULL),(692,117,3,2,NULL),(693,90,34,2,NULL),(694,119,3,2,NULL),(695,95,34,2,NULL),(696,123,3,2,NULL),(697,98,34,2,NULL),(698,126,3,2,NULL),(699,161,34,2,NULL),(700,130,3,2,NULL),(701,167,34,2,NULL),(702,192,3,2,NULL),(703,182,34,2,NULL),(704,165,3,2,NULL),(705,185,34,2,NULL),(706,78,10,2,NULL),(707,190,34,2,NULL),(708,92,10,2,NULL),(709,193,34,2,NULL),(710,96,10,2,NULL),(711,199,34,2,NULL),(712,99,10,2,NULL),(713,33,34,2,NULL),(714,102,10,2,NULL),(715,17,35,2,NULL),(716,105,10,2,NULL),(717,32,35,2,NULL),(718,107,10,2,NULL),(719,34,35,2,NULL),(720,110,10,2,NULL),(721,44,35,2,NULL),(722,111,10,2,NULL),(723,51,35,2,NULL),(724,133,10,2,NULL),(725,53,35,2,NULL),(726,164,10,2,NULL),(727,117,35,2,NULL),(728,166,10,2,NULL),(729,119,35,2,NULL),(730,169,10,2,NULL),(731,123,35,2,NULL),(732,172,10,2,NULL),(733,126,35,2,NULL),(734,174,10,2,NULL),(735,130,35,2,NULL),(736,178,10,2,NULL),(737,192,35,2,NULL),(738,180,10,2,NULL),(739,165,35,2,NULL),(740,183,10,2,NULL),(741,78,17,2,NULL),(742,4,35,2,NULL),(743,92,17,2,NULL),(744,96,17,2,NULL),(745,11,35,2,NULL),(746,99,17,2,NULL),(747,102,17,2,NULL),(748,13,35,2,NULL),(749,105,17,2,NULL),(750,14,35,2,NULL),(751,107,17,2,NULL),(752,110,17,2,NULL),(753,15,35,2,NULL),(754,111,17,2,NULL),(755,133,17,2,NULL),(756,16,35,2,NULL),(757,164,17,2,NULL),(758,35,35,2,NULL),(759,166,17,2,NULL),(760,169,17,2,NULL),(761,131,35,2,NULL),(762,172,17,2,NULL),(763,174,17,2,NULL),(764,142,35,2,NULL),(765,178,17,2,NULL),(766,152,35,2,NULL),(767,180,17,2,NULL),(768,183,17,2,NULL),(769,155,35,2,NULL),(770,78,19,2,NULL),(771,92,19,2,NULL),(772,159,35,2,NULL),(773,96,19,2,NULL),(774,25,6,2,NULL),(775,99,19,2,NULL),(776,61,35,2,NULL),(777,102,19,2,NULL),(778,78,35,2,NULL),(779,25,7,2,NULL),(780,105,19,2,NULL),(781,107,19,2,NULL),(782,92,35,2,NULL),(783,25,25,2,NULL),(784,110,19,2,NULL),(785,111,19,2,NULL),(786,96,35,2,NULL),(787,133,19,2,NULL),(788,99,35,2,NULL),(789,25,32,2,NULL),(790,164,19,2,NULL),(791,166,19,2,NULL),(792,102,35,2,NULL),(793,125,9,2,NULL),(794,169,19,2,NULL),(795,172,19,2,NULL),(796,105,35,2,NULL),(797,174,19,2,NULL),(798,125,10,2,NULL),(799,107,35,2,NULL),(800,178,19,2,NULL),(801,180,19,2,NULL),(802,110,35,2,NULL),(803,125,27,2,NULL),(804,183,19,2,NULL),(805,111,35,2,NULL),(806,78,39,2,NULL),(807,92,39,2,NULL),(808,125,34,2,NULL),(809,133,35,2,NULL),(810,96,39,2,NULL),(811,99,39,2,NULL),(812,164,35,2,NULL),(813,137,9,2,NULL),(814,102,39,2,NULL),(815,105,39,2,NULL),(816,166,35,2,NULL),(817,107,39,2,NULL),(818,110,39,2,NULL),(819,137,10,2,NULL),(820,169,35,2,NULL),(821,111,39,2,NULL),(822,172,35,2,NULL),(823,133,39,2,NULL),(824,137,27,2,NULL),(825,164,39,2,NULL),(826,174,35,2,NULL),(827,166,39,2,NULL),(828,169,39,2,NULL),(829,137,34,2,NULL),(830,178,35,2,NULL),(831,172,39,2,NULL),(832,180,35,2,NULL),(833,174,39,2,NULL),(834,147,9,2,NULL),(835,178,39,2,NULL),(836,183,35,2,NULL),(837,180,39,2,NULL),(838,183,39,2,NULL),(839,147,10,2,NULL),(840,85,35,2,NULL),(841,78,41,2,NULL),(842,92,41,2,NULL),(843,147,27,2,NULL),(844,89,35,2,NULL),(845,96,41,2,NULL),(846,99,41,2,NULL),(847,147,34,2,NULL),(848,90,35,2,NULL),(849,102,41,2,NULL),(850,163,9,2,NULL),(851,105,41,2,NULL),(852,95,35,2,NULL),(853,107,41,2,NULL),(854,110,41,2,NULL),(855,163,10,2,NULL),(856,98,35,2,NULL),(857,111,41,2,NULL),(858,161,35,2,NULL),(859,133,41,2,NULL),(860,163,27,2,NULL),(861,164,41,2,NULL),(862,167,35,2,NULL),(863,166,41,2,NULL),(864,169,41,2,NULL),(865,163,34,2,NULL),(866,182,35,2,NULL),(867,172,41,2,NULL),(868,174,41,2,NULL),(869,168,9,2,NULL),(870,185,35,2,NULL),(871,178,41,2,NULL),(872,180,41,2,NULL),(873,168,10,2,NULL),(874,190,35,2,NULL),(875,183,41,2,NULL),(876,78,57,2,NULL),(877,168,27,2,NULL),(878,193,35,2,NULL),(879,92,57,2,NULL),(880,96,57,2,NULL),(881,199,35,2,NULL),(882,99,57,2,NULL),(883,168,34,2,NULL),(884,102,57,2,NULL),(885,33,35,2,NULL),(886,105,57,2,NULL),(887,107,57,2,NULL),(888,173,6,2,NULL),(889,110,57,2,NULL),(890,97,15,2,NULL),(891,111,57,2,NULL),(892,133,57,2,NULL),(893,173,7,2,NULL),(894,97,17,2,NULL),(895,164,57,2,NULL),(896,166,57,2,NULL),(897,97,28,2,NULL),(898,169,57,2,NULL),(899,173,25,2,NULL),(900,172,57,2,NULL),(901,97,35,2,NULL),(902,174,57,2,NULL),(903,173,32,2,NULL),(904,178,57,2,NULL),(905,17,36,2,NULL),(906,180,57,2,NULL),(907,4,2,2,NULL),(908,183,57,2,NULL),(909,32,36,2,NULL),(910,78,60,2,NULL),(911,92,60,2,NULL),(912,11,2,2,NULL),(913,34,36,2,NULL),(914,96,60,2,NULL),(915,99,60,2,NULL),(916,13,2,2,NULL),(917,44,36,2,NULL),(918,102,60,2,NULL),(919,105,60,2,NULL),(920,14,2,2,NULL),(921,51,36,2,NULL),(922,107,60,2,NULL),(923,110,60,2,NULL),(924,15,2,2,NULL),(925,53,36,2,NULL),(926,111,60,2,NULL),(927,133,60,2,NULL),(928,117,36,2,NULL),(929,164,60,2,NULL),(930,16,2,2,NULL),(931,166,60,2,NULL),(932,119,36,2,NULL),(933,169,60,2,NULL),(934,35,2,2,NULL),(935,123,36,2,NULL),(936,172,60,2,NULL),(937,174,60,2,NULL),(938,131,2,2,NULL),(939,126,36,2,NULL),(940,178,60,2,NULL),(941,178,60,2,NULL),(942,142,2,2,NULL),(943,130,36,2,NULL),(944,180,60,2,NULL),(945,183,60,2,NULL),(946,152,2,2,NULL),(947,192,36,2,NULL),(948,78,1,2,NULL),(949,78,1,2,NULL),(950,155,2,2,NULL),(951,165,36,2,NULL),(952,92,1,2,NULL),(953,92,1,2,NULL),(954,159,2,2,NULL),(955,4,36,2,NULL),(956,96,1,2,NULL),(957,96,1,2,NULL),(958,17,1,2,NULL),(959,11,36,2,NULL),(960,99,1,2,NULL),(961,99,1,2,NULL),(962,32,1,2,NULL),(963,13,36,2,NULL),(964,102,1,2,NULL),(965,102,1,2,NULL),(966,34,1,2,NULL),(967,14,36,2,NULL),(968,105,1,2,NULL),(969,105,1,2,NULL),(970,44,1,2,NULL),(971,15,36,2,NULL),(972,107,1,2,NULL),(973,110,1,2,NULL),(974,51,1,2,NULL),(975,16,36,2,NULL),(976,111,1,2,NULL),(977,111,1,2,NULL),(978,53,1,2,NULL),(979,35,36,2,NULL),(980,133,1,2,NULL),(981,133,1,2,NULL),(982,117,1,2,NULL),(983,131,36,2,NULL),(984,164,1,2,NULL),(985,164,1,2,NULL),(986,119,1,2,NULL),(987,142,36,2,NULL),(988,166,1,2,NULL),(989,166,1,2,NULL),(990,123,1,2,NULL),(991,152,36,2,NULL),(992,169,1,2,NULL),(993,169,1,2,NULL),(994,126,1,2,NULL),(995,155,36,2,NULL),(996,172,1,2,NULL),(997,172,1,2,NULL),(998,130,1,2,NULL),(999,159,36,2,NULL),(1000,174,1,2,NULL),(1001,174,1,2,NULL),(1002,192,1,2,NULL),(1003,61,36,2,NULL),(1004,178,1,2,NULL),(1005,180,1,2,NULL),(1006,165,1,2,NULL),(1007,78,36,2,NULL),(1008,183,1,2,NULL),(1009,183,1,2,NULL),(1010,4,10,2,NULL),(1011,92,36,2,NULL),(1012,4,3,2,NULL),(1013,11,3,2,NULL),(1014,11,10,2,NULL),(1015,96,36,2,NULL),(1016,13,3,2,NULL),(1017,13,3,2,NULL),(1018,13,10,2,NULL),(1019,99,36,2,NULL),(1020,14,3,2,NULL),(1021,15,3,2,NULL),(1022,14,10,2,NULL),(1023,102,36,2,NULL),(1024,16,3,2,NULL),(1025,35,3,2,NULL),(1026,15,10,2,NULL),(1027,105,36,2,NULL),(1028,131,3,2,NULL),(1029,131,3,2,NULL),(1030,16,10,2,NULL),(1031,107,36,2,NULL),(1032,142,3,2,NULL),(1033,142,3,2,NULL),(1034,35,10,2,NULL),(1035,110,36,2,NULL),(1036,152,3,2,NULL),(1037,152,3,2,NULL),(1038,131,10,2,NULL),(1039,111,36,2,NULL),(1040,155,3,2,NULL),(1041,155,3,2,NULL),(1042,142,10,2,NULL),(1043,133,36,2,NULL),(1044,159,3,2,NULL),(1045,159,3,2,NULL),(1046,152,10,2,NULL),(1047,164,36,2,NULL),(1048,61,3,2,NULL),(1049,61,3,2,NULL),(1050,155,10,2,NULL),(1051,166,36,2,NULL),(1052,78,9,2,NULL),(1053,78,9,2,NULL),(1054,159,10,2,NULL),(1055,169,36,2,NULL),(1056,92,9,2,NULL),(1057,92,9,2,NULL),(1058,4,17,2,NULL),(1059,172,36,2,NULL),(1060,96,9,2,NULL),(1061,96,9,2,NULL),(1062,11,17,2,NULL),(1063,174,36,2,NULL),(1064,99,9,2,NULL),(1065,99,9,2,NULL),(1066,13,17,2,NULL),(1067,178,36,2,NULL),(1068,102,9,2,NULL),(1069,102,9,2,NULL),(1070,14,17,2,NULL),(1071,180,36,2,NULL),(1072,105,9,2,NULL),(1073,105,9,2,NULL),(1074,15,17,2,NULL),(1075,183,36,2,NULL),(1076,107,9,2,NULL),(1077,107,9,2,NULL),(1078,16,17,2,NULL),(1079,85,36,2,NULL),(1080,110,9,2,NULL),(1081,110,9,2,NULL),(1082,35,17,2,NULL),(1083,89,36,2,NULL),(1084,111,9,2,NULL),(1085,111,9,2,NULL),(1086,131,17,2,NULL),(1087,90,36,2,NULL),(1088,133,9,2,NULL),(1089,133,9,2,NULL),(1090,142,17,2,NULL),(1091,95,36,2,NULL),(1092,164,9,2,NULL),(1093,166,9,2,NULL),(1094,152,17,2,NULL),(1095,98,36,2,NULL),(1096,169,9,2,NULL),(1097,172,9,2,NULL),(1098,155,17,2,NULL),(1099,161,36,2,NULL),(1100,174,9,2,NULL),(1101,178,9,2,NULL),(1102,159,17,2,NULL),(1103,167,36,2,NULL),(1104,180,9,2,NULL),(1105,180,9,2,NULL),(1106,4,19,2,NULL),(1107,182,36,2,NULL),(1108,183,9,2,NULL),(1109,183,9,2,NULL),(1110,11,19,2,NULL),(1111,185,36,2,NULL),(1112,78,15,2,NULL),(1113,78,15,2,NULL),(1114,13,19,2,NULL),(1115,190,36,2,NULL),(1116,92,15,2,NULL),(1117,92,15,2,NULL),(1118,14,19,2,NULL),(1119,193,36,2,NULL),(1120,96,15,2,NULL),(1121,96,15,2,NULL),(1122,15,19,2,NULL),(1123,199,36,2,NULL),(1124,99,15,2,NULL),(1125,99,15,2,NULL),(1126,16,19,2,NULL),(1127,33,36,2,NULL),(1128,102,15,2,NULL),(1129,102,15,2,NULL),(1130,35,19,2,NULL),(1131,105,15,2,NULL),(1132,105,15,2,NULL),(1133,17,53,2,NULL),(1134,131,19,2,NULL),(1135,32,53,2,NULL),(1136,107,15,2,NULL),(1137,107,15,2,NULL),(1138,142,19,2,NULL),(1139,34,53,2,NULL),(1140,110,15,2,NULL),(1141,110,15,2,NULL),(1142,152,19,2,NULL),(1143,44,53,2,NULL),(1144,111,15,2,NULL),(1145,111,15,2,NULL),(1146,155,19,2,NULL),(1147,51,53,2,NULL),(1148,133,15,2,NULL),(1149,133,15,2,NULL),(1150,159,19,2,NULL),(1151,53,53,2,NULL),(1152,164,15,2,NULL),(1153,164,15,2,NULL),(1154,4,39,2,NULL),(1155,117,53,2,NULL),(1156,166,15,2,NULL),(1157,166,15,2,NULL),(1158,11,39,2,NULL),(1159,119,53,2,NULL),(1160,169,15,2,NULL),(1161,169,15,2,NULL),(1162,13,39,2,NULL),(1163,123,53,2,NULL),(1164,172,15,2,NULL),(1165,172,15,2,NULL),(1166,14,39,2,NULL),(1167,126,53,2,NULL),(1168,174,15,2,NULL),(1169,174,15,2,NULL),(1170,15,39,2,NULL),(1171,130,53,2,NULL),(1172,178,15,2,NULL),(1173,178,15,2,NULL),(1174,16,39,2,NULL),(1175,192,53,2,NULL),(1176,180,15,2,NULL),(1177,180,15,2,NULL),(1178,35,39,2,NULL),(1179,165,53,2,NULL),(1180,183,15,2,NULL),(1181,183,15,2,NULL),(1182,131,39,2,NULL),(1183,4,53,2,NULL),(1184,78,20,2,NULL),(1185,78,20,2,NULL),(1186,142,39,2,NULL),(1187,11,53,2,NULL),(1188,92,20,2,NULL),(1189,92,20,2,NULL),(1190,152,39,2,NULL),(1191,13,53,2,NULL),(1192,96,20,2,NULL),(1193,96,20,2,NULL),(1194,155,39,2,NULL),(1195,14,53,2,NULL),(1196,99,20,2,NULL),(1197,99,20,2,NULL),(1198,159,39,2,NULL),(1199,15,53,2,NULL),(1200,102,20,2,NULL),(1201,102,20,2,NULL),(1202,4,41,2,NULL),(1203,16,53,2,NULL),(1204,105,20,2,NULL),(1205,107,20,2,NULL),(1206,11,41,2,NULL),(1207,35,53,2,NULL),(1208,110,20,2,NULL),(1209,110,20,2,NULL),(1210,13,41,2,NULL),(1211,131,53,2,NULL),(1212,111,20,2,NULL),(1213,111,20,2,NULL),(1214,14,41,2,NULL),(1215,142,53,2,NULL),(1216,133,20,2,NULL),(1217,133,20,2,NULL),(1218,15,41,2,NULL),(1219,152,53,2,NULL),(1220,164,20,2,NULL),(1221,164,20,2,NULL),(1222,16,41,2,NULL),(1223,155,53,2,NULL),(1224,166,20,2,NULL),(1225,166,20,2,NULL),(1226,35,41,2,NULL),(1227,159,53,2,NULL),(1228,169,20,2,NULL),(1229,169,20,2,NULL),(1230,131,41,2,NULL),(1231,61,53,2,NULL),(1232,172,20,2,NULL),(1233,172,20,2,NULL),(1234,142,41,2,NULL),(1235,78,53,2,NULL),(1236,174,20,2,NULL),(1237,174,20,2,NULL),(1238,152,41,2,NULL),(1239,92,53,2,NULL),(1240,178,20,2,NULL),(1241,178,20,2,NULL),(1242,155,41,2,NULL),(1243,96,53,2,NULL),(1244,180,20,2,NULL),(1245,180,20,2,NULL),(1246,159,41,2,NULL),(1247,99,53,2,NULL),(1248,183,20,2,NULL),(1249,183,20,2,NULL),(1250,4,57,2,NULL),(1251,102,53,2,NULL),(1252,78,37,2,NULL),(1253,78,37,2,NULL),(1254,11,57,2,NULL),(1255,105,53,2,NULL),(1256,92,37,2,NULL),(1257,92,37,2,NULL),(1258,107,53,2,NULL),(1259,13,57,2,NULL),(1260,96,37,2,NULL),(1261,110,53,2,NULL),(1262,14,57,2,NULL),(1263,99,37,2,NULL),(1264,102,37,2,NULL),(1265,111,53,2,NULL),(1266,15,57,2,NULL),(1267,105,37,2,NULL),(1268,107,37,2,NULL),(1269,133,53,2,NULL),(1270,16,57,2,NULL),(1271,110,37,2,NULL),(1272,111,37,2,NULL),(1273,164,53,2,NULL),(1274,35,57,2,NULL),(1275,133,37,2,NULL),(1276,164,37,2,NULL),(1277,166,53,2,NULL),(1278,166,37,2,NULL),(1279,131,57,2,NULL),(1280,169,37,2,NULL),(1281,169,53,2,NULL),(1282,142,57,2,NULL),(1283,172,37,2,NULL),(1284,174,37,2,NULL),(1285,172,53,2,NULL),(1286,152,57,2,NULL),(1287,178,37,2,NULL),(1288,180,37,2,NULL),(1289,174,53,2,NULL),(1290,155,57,2,NULL),(1291,183,37,2,NULL),(1292,78,38,2,NULL),(1293,178,53,2,NULL),(1294,159,57,2,NULL),(1295,92,38,2,NULL),(1296,96,38,2,NULL),(1297,180,53,2,NULL),(1298,4,60,2,NULL),(1299,99,38,2,NULL),(1300,102,38,2,NULL),(1301,183,53,2,NULL),(1302,11,60,2,NULL),(1303,105,38,2,NULL),(1304,107,38,2,NULL),(1305,85,53,2,NULL),(1306,13,60,2,NULL),(1307,110,38,2,NULL),(1308,111,38,2,NULL),(1309,89,53,2,NULL),(1310,14,60,2,NULL),(1311,133,38,2,NULL),(1312,164,38,2,NULL),(1313,90,53,2,NULL),(1314,15,60,2,NULL),(1315,166,38,2,NULL),(1316,169,38,2,NULL),(1317,95,53,2,NULL),(1318,16,60,2,NULL),(1319,172,38,2,NULL),(1320,174,38,2,NULL),(1321,98,53,2,NULL),(1322,35,60,2,NULL),(1323,178,38,2,NULL),(1324,180,38,2,NULL),(1325,161,53,2,NULL),(1326,131,60,2,NULL),(1327,183,38,2,NULL),(1328,78,43,2,NULL),(1329,167,53,2,NULL),(1330,142,60,2,NULL),(1331,92,43,2,NULL),(1332,96,43,2,NULL),(1333,182,53,2,NULL),(1334,152,60,2,NULL),(1335,99,43,2,NULL),(1336,102,43,2,NULL),(1337,185,53,2,NULL),(1338,155,60,2,NULL),(1339,105,43,2,NULL),(1340,107,43,2,NULL),(1341,190,53,2,NULL),(1342,159,60,2,NULL),(1343,110,43,2,NULL),(1344,111,43,2,NULL),(1345,193,53,2,NULL),(1346,61,1,2,NULL),(1347,133,43,2,NULL),(1348,164,43,2,NULL),(1349,199,53,2,NULL),(1350,4,9,2,NULL),(1351,166,43,2,NULL),(1352,169,43,2,NULL),(1353,33,53,2,NULL),(1354,172,43,2,NULL),(1355,11,9,2,NULL),(1356,174,43,2,NULL),(1357,178,43,2,NULL),(1358,13,9,2,NULL),(1359,17,59,2,NULL),(1360,180,43,2,NULL),(1361,183,43,2,NULL),(1362,14,9,2,NULL),(1363,32,59,2,NULL),(1364,78,58,2,NULL),(1365,15,9,2,NULL),(1366,92,58,2,NULL),(1367,34,59,2,NULL),(1368,96,58,2,NULL),(1369,99,58,2,NULL),(1370,16,9,2,NULL),(1371,44,59,2,NULL),(1372,102,58,2,NULL),(1373,35,9,2,NULL),(1374,105,58,2,NULL),(1375,51,59,2,NULL),(1376,107,58,2,NULL),(1377,110,58,2,NULL),(1378,131,9,2,NULL),(1379,53,59,2,NULL),(1380,111,58,2,NULL),(1381,133,58,2,NULL),(1382,142,9,2,NULL),(1383,117,59,2,NULL),(1384,164,58,2,NULL),(1385,152,9,2,NULL),(1386,166,58,2,NULL),(1387,119,59,2,NULL),(1388,169,58,2,NULL),(1389,155,9,2,NULL),(1390,172,58,2,NULL),(1391,123,59,2,NULL),(1392,174,58,2,NULL),(1393,178,58,2,NULL),(1394,159,9,2,NULL),(1395,126,59,2,NULL),(1396,180,58,2,NULL),(1397,183,58,2,NULL),(1398,4,15,2,NULL),(1399,130,59,2,NULL),(1400,78,8,2,NULL),(1401,11,15,2,NULL),(1402,92,8,2,NULL),(1403,192,59,2,NULL),(1404,96,8,2,NULL),(1405,13,15,2,NULL),(1406,99,8,2,NULL),(1407,165,59,2,NULL),(1408,102,8,2,NULL),(1409,14,15,2,NULL),(1410,105,8,2,NULL),(1411,4,59,2,NULL),(1412,107,8,2,NULL),(1413,15,15,2,NULL),(1414,110,8,2,NULL),(1415,11,59,2,NULL),(1416,111,8,2,NULL),(1417,16,15,2,NULL),(1418,133,8,2,NULL),(1419,13,59,2,NULL),(1420,164,8,2,NULL),(1421,35,15,2,NULL),(1422,166,8,2,NULL),(1423,14,59,2,NULL),(1424,169,8,2,NULL),(1425,131,15,2,NULL),(1426,172,8,2,NULL),(1427,15,59,2,NULL),(1428,174,8,2,NULL),(1429,142,15,2,NULL),(1430,178,8,2,NULL),(1431,16,59,2,NULL),(1432,180,8,2,NULL),(1433,152,15,2,NULL),(1434,183,8,2,NULL),(1435,35,59,2,NULL),(1436,78,16,2,NULL),(1437,155,15,2,NULL),(1438,92,16,2,NULL),(1439,131,59,2,NULL),(1440,96,16,2,NULL),(1441,159,15,2,NULL),(1442,99,16,2,NULL),(1443,142,59,2,NULL),(1444,102,16,2,NULL),(1445,4,20,2,NULL),(1446,105,16,2,NULL),(1447,152,59,2,NULL),(1448,107,16,2,NULL),(1449,11,20,2,NULL),(1450,155,59,2,NULL),(1451,110,16,2,NULL),(1452,13,20,2,NULL),(1453,111,16,2,NULL),(1454,159,59,2,NULL),(1455,133,16,2,NULL),(1456,14,20,2,NULL),(1457,61,59,2,NULL),(1458,164,16,2,NULL),(1459,164,16,2,NULL),(1460,15,20,2,NULL),(1461,78,59,2,NULL),(1462,166,16,2,NULL),(1463,166,16,2,NULL),(1464,16,20,2,NULL),(1465,92,59,2,NULL),(1466,169,16,2,NULL),(1467,169,16,2,NULL),(1468,35,20,2,NULL),(1469,96,59,2,NULL),(1470,172,16,2,NULL),(1471,172,16,2,NULL),(1472,131,20,2,NULL),(1473,99,59,2,NULL),(1474,174,16,2,NULL),(1475,174,16,2,NULL),(1476,142,20,2,NULL),(1477,102,59,2,NULL),(1478,178,16,2,NULL),(1479,178,16,2,NULL),(1480,152,20,2,NULL),(1481,105,59,2,NULL),(1482,180,16,2,NULL),(1483,180,16,2,NULL),(1484,155,20,2,NULL),(1485,107,59,2,NULL),(1486,183,16,2,NULL),(1487,183,16,2,NULL),(1488,159,20,2,NULL),(1489,110,59,2,NULL),(1490,78,18,2,NULL),(1491,78,18,2,NULL),(1492,4,37,2,NULL),(1493,111,59,2,NULL),(1494,92,18,2,NULL),(1495,92,18,2,NULL),(1496,11,37,2,NULL),(1497,133,59,2,NULL),(1498,96,18,2,NULL),(1499,96,18,2,NULL),(1500,13,37,2,NULL),(1501,164,59,2,NULL),(1502,99,18,2,NULL),(1503,99,18,2,NULL),(1504,14,37,2,NULL),(1505,166,59,2,NULL),(1506,102,18,2,NULL),(1507,102,18,2,NULL),(1508,15,37,2,NULL),(1509,169,59,2,NULL),(1510,105,18,2,NULL),(1511,105,18,2,NULL),(1512,16,37,2,NULL),(1513,172,59,2,NULL),(1514,107,18,2,NULL),(1515,107,18,2,NULL),(1516,35,37,2,NULL),(1517,174,59,2,NULL),(1518,110,18,2,NULL),(1519,110,18,2,NULL),(1520,131,37,2,NULL),(1521,178,59,2,NULL),(1522,111,18,2,NULL),(1523,111,18,2,NULL),(1524,142,37,2,NULL),(1525,180,59,2,NULL),(1526,133,18,2,NULL),(1527,133,18,2,NULL),(1528,152,37,2,NULL),(1529,183,59,2,NULL),(1530,164,18,2,NULL),(1531,164,18,2,NULL),(1532,155,37,2,NULL),(1533,85,59,2,NULL),(1534,166,18,2,NULL),(1535,166,18,2,NULL),(1536,159,37,2,NULL),(1537,89,59,2,NULL),(1538,169,18,2,NULL),(1539,169,18,2,NULL),(1540,4,38,2,NULL),(1541,90,59,2,NULL),(1542,172,18,2,NULL),(1543,172,18,2,NULL),(1544,11,38,2,NULL),(1545,95,59,2,NULL),(1546,174,18,2,NULL),(1547,174,18,2,NULL),(1548,13,38,2,NULL),(1549,98,59,2,NULL),(1550,178,18,2,NULL),(1551,178,18,2,NULL),(1552,14,38,2,NULL),(1553,161,59,2,NULL),(1554,180,18,2,NULL),(1555,180,18,2,NULL),(1556,15,38,2,NULL),(1557,167,59,2,NULL),(1558,183,18,2,NULL),(1559,183,18,2,NULL),(1560,16,38,2,NULL),(1561,182,59,2,NULL),(1562,78,21,2,NULL),(1563,78,21,2,NULL),(1564,35,38,2,NULL),(1565,185,59,2,NULL),(1566,92,21,2,NULL),(1567,92,21,2,NULL),(1568,131,38,2,NULL),(1569,190,59,2,NULL),(1570,96,21,2,NULL),(1571,96,21,2,NULL),(1572,142,38,2,NULL),(1573,193,59,2,NULL),(1574,99,21,2,NULL),(1575,99,21,2,NULL),(1576,152,38,2,NULL),(1577,199,59,2,NULL),(1578,102,21,2,NULL),(1579,102,21,2,NULL),(1580,155,38,2,NULL),(1581,33,59,2,NULL),(1582,105,21,2,NULL),(1583,105,21,2,NULL),(1584,159,38,2,NULL),(1585,107,21,2,NULL),(1586,107,21,2,NULL),(1587,4,43,2,NULL),(1588,110,21,2,NULL),(1589,110,21,2,NULL),(1590,11,43,2,NULL),(1591,111,21,2,NULL),(1592,111,21,2,NULL),(1593,13,43,2,NULL),(1594,17,61,2,NULL),(1595,133,21,2,NULL),(1596,133,21,2,NULL),(1597,32,61,2,NULL),(1598,14,43,2,NULL),(1599,164,21,2,NULL),(1600,164,21,2,NULL),(1601,34,61,2,NULL),(1602,15,43,2,NULL),(1603,166,21,2,NULL),(1604,166,21,2,NULL),(1605,44,61,2,NULL),(1606,16,43,2,NULL),(1607,169,21,2,NULL),(1608,169,21,2,NULL),(1609,51,61,2,NULL),(1610,35,43,2,NULL),(1611,172,21,2,NULL),(1612,172,21,2,NULL),(1613,53,61,2,NULL),(1614,131,43,2,NULL),(1615,174,21,2,NULL),(1616,174,21,2,NULL),(1617,117,61,2,NULL),(1618,142,43,2,NULL),(1619,178,21,2,NULL),(1620,178,21,2,NULL),(1621,119,61,2,NULL),(1622,152,43,2,NULL),(1623,180,21,2,NULL),(1624,180,21,2,NULL),(1625,123,61,2,NULL),(1626,155,43,2,NULL),(1627,183,21,2,NULL),(1628,183,21,2,NULL),(1629,126,61,2,NULL),(1630,159,43,2,NULL),(1631,130,61,2,NULL),(1632,4,58,2,NULL),(1633,78,51,2,NULL),(1634,78,51,2,NULL),(1635,192,61,2,NULL),(1636,11,58,2,NULL),(1637,92,51,2,NULL),(1638,92,51,2,NULL),(1639,165,61,2,NULL),(1640,13,58,2,NULL),(1641,96,51,2,NULL),(1642,96,51,2,NULL),(1643,4,61,2,NULL),(1644,14,58,2,NULL),(1645,99,51,2,NULL),(1646,99,51,2,NULL),(1647,11,61,2,NULL),(1648,15,58,2,NULL),(1649,102,51,2,NULL),(1650,102,51,2,NULL),(1651,13,61,2,NULL),(1652,16,58,2,NULL),(1653,105,51,2,NULL),(1654,105,51,2,NULL),(1655,14,61,2,NULL),(1656,35,58,2,NULL),(1657,107,51,2,NULL),(1658,107,51,2,NULL),(1659,15,61,2,NULL),(1660,131,58,2,NULL),(1661,110,51,2,NULL),(1662,110,51,2,NULL),(1663,16,61,2,NULL),(1664,142,58,2,NULL),(1665,111,51,2,NULL),(1666,111,51,2,NULL),(1667,35,61,2,NULL),(1668,152,58,2,NULL),(1669,133,51,2,NULL),(1670,133,51,2,NULL),(1671,131,61,2,NULL),(1672,155,58,2,NULL),(1673,164,51,2,NULL),(1674,164,51,2,NULL),(1675,142,61,2,NULL),(1676,159,58,2,NULL),(1677,166,51,2,NULL),(1678,166,51,2,NULL),(1679,152,61,2,NULL),(1680,169,51,2,NULL),(1681,169,51,2,NULL),(1682,155,61,2,NULL),(1683,4,8,2,NULL),(1684,172,51,2,NULL),(1685,172,51,2,NULL),(1686,159,61,2,NULL),(1687,11,8,2,NULL),(1688,174,51,2,NULL),(1689,174,51,2,NULL),(1690,61,61,2,NULL),(1691,13,8,2,NULL),(1692,178,51,2,NULL),(1693,178,51,2,NULL),(1694,78,61,2,NULL),(1695,14,8,2,NULL),(1696,180,51,2,NULL),(1697,180,51,2,NULL),(1698,92,61,2,NULL),(1699,15,8,2,NULL),(1700,183,51,2,NULL),(1701,183,51,2,NULL),(1702,96,61,2,NULL),(1703,16,8,2,NULL),(1704,78,52,2,NULL),(1705,78,52,2,NULL),(1706,99,61,2,NULL),(1707,35,8,2,NULL),(1708,92,52,2,NULL),(1709,92,52,2,NULL),(1710,102,61,2,NULL),(1711,131,8,2,NULL),(1712,96,52,2,NULL),(1713,96,52,2,NULL),(1714,105,61,2,NULL),(1715,142,8,2,NULL),(1716,99,52,2,NULL),(1717,99,52,2,NULL),(1718,107,61,2,NULL),(1719,152,8,2,NULL),(1720,102,52,2,NULL),(1721,102,52,2,NULL),(1722,110,61,2,NULL),(1723,155,8,2,NULL),(1724,105,52,2,NULL),(1725,105,52,2,NULL),(1726,111,61,2,NULL),(1727,159,8,2,NULL),(1728,107,52,2,NULL),(1729,107,52,2,NULL),(1730,133,61,2,NULL),(1731,4,16,2,NULL),(1732,110,52,2,NULL),(1733,110,52,2,NULL),(1734,164,61,2,NULL),(1735,11,16,2,NULL),(1736,111,52,2,NULL),(1737,111,52,2,NULL),(1738,166,61,2,NULL),(1739,13,16,2,NULL),(1740,133,52,2,NULL),(1741,133,52,2,NULL),(1742,169,61,2,NULL),(1743,14,16,2,NULL),(1744,164,52,2,NULL),(1745,164,52,2,NULL),(1746,172,61,2,NULL),(1747,15,16,2,NULL),(1748,166,52,2,NULL),(1749,166,52,2,NULL),(1750,174,61,2,NULL),(1751,16,16,2,NULL),(1752,169,52,2,NULL),(1753,178,61,2,NULL),(1754,35,16,2,NULL),(1755,172,52,2,NULL),(1756,174,52,2,NULL),(1757,180,61,2,NULL),(1758,131,16,2,NULL),(1759,178,52,2,NULL),(1760,180,52,2,NULL),(1761,183,61,2,NULL),(1762,183,52,2,NULL),(1763,142,16,2,NULL),(1764,78,54,2,NULL),(1765,85,61,2,NULL),(1766,92,54,2,NULL),(1767,92,54,2,NULL),(1768,89,61,2,NULL),(1769,152,16,2,NULL),(1770,96,54,2,NULL),(1771,90,61,2,NULL),(1772,155,16,2,NULL),(1773,99,54,2,NULL),(1774,102,54,2,NULL),(1775,95,61,2,NULL),(1776,159,16,2,NULL),(1777,105,54,2,NULL),(1778,107,54,2,NULL),(1779,98,61,2,NULL),(1780,4,18,2,NULL),(1781,110,54,2,NULL),(1782,111,54,2,NULL),(1783,161,61,2,NULL),(1784,11,18,2,NULL),(1785,133,54,2,NULL),(1786,164,54,2,NULL),(1787,167,61,2,NULL),(1788,13,18,2,NULL),(1789,166,54,2,NULL),(1790,169,54,2,NULL),(1791,182,61,2,NULL),(1792,14,18,2,NULL),(1793,172,54,2,NULL),(1794,174,54,2,NULL),(1795,185,61,2,NULL),(1796,15,18,2,NULL),(1797,178,54,2,NULL),(1798,180,54,2,NULL),(1799,190,61,2,NULL),(1800,16,18,2,NULL),(1801,183,54,2,NULL),(1802,78,23,2,NULL),(1803,193,61,2,NULL),(1804,35,18,2,NULL),(1805,92,23,2,NULL),(1806,96,23,2,NULL),(1807,199,61,2,NULL),(1808,99,23,2,NULL),(1809,131,18,2,NULL),(1810,102,23,2,NULL),(1811,33,61,2,NULL),(1812,105,23,2,NULL),(1813,142,18,2,NULL),(1814,107,23,2,NULL),(1815,110,23,2,NULL),(1816,152,18,2,NULL),(1817,17,64,2,NULL),(1818,111,23,2,NULL),(1819,133,23,2,NULL),(1820,155,18,2,NULL),(1821,32,64,2,NULL),(1822,164,23,2,NULL),(1823,166,23,2,NULL),(1824,159,18,2,NULL),(1825,34,64,2,NULL),(1826,169,23,2,NULL),(1827,172,23,2,NULL),(1828,4,21,2,NULL),(1829,44,64,2,NULL),(1830,174,23,2,NULL),(1831,178,23,2,NULL),(1832,11,21,2,NULL),(1833,51,64,2,NULL),(1834,180,23,2,NULL),(1835,183,23,2,NULL),(1836,13,21,2,NULL),(1837,53,64,2,NULL),(1838,85,3,2,NULL),(1839,89,3,2,NULL),(1840,14,21,2,NULL),(1841,117,64,2,NULL),(1842,90,3,2,NULL),(1843,15,21,2,NULL),(1844,95,3,2,NULL),(1845,119,64,2,NULL),(1846,98,3,2,NULL),(1847,16,21,2,NULL),(1848,161,3,2,NULL),(1849,123,64,2,NULL),(1850,167,3,2,NULL),(1851,35,21,2,NULL),(1852,182,3,2,NULL),(1853,126,64,2,NULL),(1854,185,3,2,NULL),(1855,131,21,2,NULL),(1856,190,3,2,NULL),(1857,130,64,2,NULL),(1858,193,3,2,NULL),(1859,142,21,2,NULL),(1860,199,3,2,NULL),(1861,192,64,2,NULL),(1862,33,3,2,NULL),(1863,152,21,2,NULL),(1864,78,27,2,NULL),(1865,165,64,2,NULL),(1866,92,27,2,NULL),(1867,155,21,2,NULL),(1868,96,27,2,NULL),(1869,4,64,2,NULL),(1870,99,27,2,NULL),(1871,159,21,2,NULL),(1872,102,27,2,NULL),(1873,11,64,2,NULL),(1874,105,27,2,NULL),(1875,4,51,2,NULL),(1876,107,27,2,NULL),(1877,13,64,2,NULL),(1878,110,27,2,NULL),(1879,11,51,2,NULL),(1880,111,27,2,NULL),(1881,14,64,2,NULL),(1882,133,27,2,NULL),(1883,13,51,2,NULL),(1884,164,27,2,NULL),(1885,15,64,2,NULL),(1886,166,27,2,NULL),(1887,14,51,2,NULL),(1888,169,27,2,NULL),(1889,16,64,2,NULL),(1890,172,27,2,NULL),(1891,15,51,2,NULL),(1892,174,27,2,NULL),(1893,35,64,2,NULL),(1894,178,27,2,NULL),(1895,16,51,2,NULL),(1896,180,27,2,NULL),(1897,131,64,2,NULL),(1898,183,27,2,NULL),(1899,35,51,2,NULL),(1900,78,28,2,NULL),(1901,142,64,2,NULL),(1902,92,28,2,NULL),(1903,96,28,2,NULL),(1904,131,51,2,NULL),(1905,152,64,2,NULL),(1906,99,28,2,NULL),(1907,102,28,2,NULL),(1908,142,51,2,NULL),(1909,155,64,2,NULL),(1910,105,28,2,NULL),(1911,152,51,2,NULL),(1912,107,28,2,NULL),(1913,159,64,2,NULL),(1914,110,28,2,NULL),(1915,111,28,2,NULL),(1916,155,51,2,NULL),(1917,61,64,2,NULL),(1918,133,28,2,NULL),(1919,164,28,2,NULL),(1920,159,51,2,NULL),(1921,78,64,2,NULL),(1922,166,28,2,NULL),(1923,169,28,2,NULL),(1924,4,52,2,NULL),(1925,92,64,2,NULL),(1926,172,28,2,NULL),(1927,174,28,2,NULL),(1928,11,52,2,NULL),(1929,96,64,2,NULL),(1930,178,28,2,NULL),(1931,180,28,2,NULL),(1932,13,52,2,NULL),(1933,99,64,2,NULL),(1934,183,28,2,NULL),(1935,78,29,2,NULL),(1936,14,52,2,NULL),(1937,102,64,2,NULL),(1938,92,29,2,NULL),(1939,96,29,2,NULL),(1940,15,52,2,NULL),(1941,105,64,2,NULL),(1942,99,29,2,NULL),(1943,102,29,2,NULL),(1944,16,52,2,NULL),(1945,107,64,2,NULL),(1946,105,29,2,NULL),(1947,107,29,2,NULL),(1948,35,52,2,NULL),(1949,110,64,2,NULL),(1950,110,29,2,NULL),(1951,111,29,2,NULL),(1952,131,52,2,NULL),(1953,111,64,2,NULL),(1954,133,29,2,NULL),(1955,164,29,2,NULL),(1956,142,52,2,NULL),(1957,133,64,2,NULL),(1958,166,29,2,NULL),(1959,169,29,2,NULL),(1960,152,52,2,NULL),(1961,164,64,2,NULL),(1962,172,29,2,NULL),(1963,174,29,2,NULL),(1964,155,52,2,NULL),(1965,166,64,2,NULL),(1966,178,29,2,NULL),(1967,180,29,2,NULL),(1968,159,52,2,NULL),(1969,169,64,2,NULL),(1970,183,29,2,NULL),(1971,78,44,2,NULL),(1972,4,54,2,NULL),(1973,172,64,2,NULL),(1974,92,44,2,NULL),(1975,96,44,2,NULL),(1976,11,54,2,NULL),(1977,174,64,2,NULL),(1978,99,44,2,NULL),(1979,102,44,2,NULL),(1980,13,54,2,NULL),(1981,178,64,2,NULL),(1982,105,44,2,NULL),(1983,107,44,2,NULL),(1984,14,54,2,NULL),(1985,180,64,2,NULL),(1986,110,44,2,NULL),(1987,111,44,2,NULL),(1988,15,54,2,NULL),(1989,183,64,2,NULL),(1990,133,44,2,NULL),(1991,164,44,2,NULL),(1992,16,54,2,NULL),(1993,85,64,2,NULL),(1994,166,44,2,NULL),(1995,169,44,2,NULL),(1996,35,54,2,NULL),(1997,89,64,2,NULL),(1998,172,44,2,NULL),(1999,174,44,2,NULL),(2000,131,54,2,NULL),(2001,90,64,2,NULL),(2002,178,44,2,NULL),(2003,180,44,2,NULL),(2004,142,54,2,NULL),(2005,95,64,2,NULL),(2006,183,44,2,NULL),(2007,78,50,2,NULL),(2008,152,54,2,NULL),(2009,98,64,2,NULL),(2010,92,50,2,NULL),(2011,96,50,2,NULL),(2012,155,54,2,NULL),(2013,161,64,2,NULL),(2014,99,50,2,NULL),(2015,102,50,2,NULL),(2016,159,54,2,NULL),(2017,167,64,2,NULL),(2018,105,50,2,NULL),(2019,107,50,2,NULL),(2020,4,23,2,NULL),(2021,182,64,2,NULL),(2022,110,50,2,NULL),(2023,11,23,2,NULL),(2024,111,50,2,NULL),(2025,185,64,2,NULL),(2026,133,50,2,NULL),(2027,13,23,2,NULL),(2028,164,50,2,NULL),(2029,190,64,2,NULL),(2030,166,50,2,NULL),(2031,14,23,2,NULL),(2032,169,50,2,NULL),(2033,193,64,2,NULL),(2034,172,50,2,NULL),(2035,15,23,2,NULL),(2036,174,50,2,NULL),(2037,199,64,2,NULL),(2038,178,50,2,NULL),(2039,16,23,2,NULL),(2040,180,50,2,NULL),(2041,33,64,2,NULL),(2042,183,50,2,NULL),(2043,35,23,2,NULL),(2044,78,63,2,NULL),(2045,92,63,2,NULL),(2046,17,68,2,NULL),(2047,131,23,2,NULL),(2048,96,63,2,NULL),(2049,99,63,2,NULL),(2050,32,68,2,NULL),(2051,142,23,2,NULL),(2052,102,63,2,NULL),(2053,105,63,2,NULL),(2054,34,68,2,NULL),(2055,152,23,2,NULL),(2056,107,63,2,NULL),(2057,110,63,2,NULL),(2058,44,68,2,NULL),(2059,155,23,2,NULL),(2060,111,63,2,NULL),(2061,133,63,2,NULL),(2062,51,68,2,NULL),(2063,159,23,2,NULL),(2064,164,63,2,NULL),(2065,166,63,2,NULL),(2066,53,68,2,NULL),(2067,85,1,2,NULL),(2068,169,63,2,NULL),(2069,172,63,2,NULL),(2070,117,68,2,NULL),(2071,89,1,2,NULL),(2072,174,63,2,NULL),(2073,178,63,2,NULL),(2074,119,68,2,NULL),(2075,90,1,2,NULL),(2076,180,63,2,NULL),(2077,183,63,2,NULL),(2078,123,68,2,NULL),(2079,95,1,2,NULL),(2080,78,67,2,NULL),(2081,92,67,2,NULL),(2082,126,68,2,NULL),(2083,98,1,2,NULL),(2084,96,67,2,NULL),(2085,99,67,2,NULL),(2086,130,68,2,NULL),(2087,161,1,2,NULL),(2088,102,67,2,NULL),(2089,105,67,2,NULL),(2090,192,68,2,NULL),(2091,167,1,2,NULL),(2092,107,67,2,NULL),(2093,110,67,2,NULL),(2094,111,67,2,NULL),(2095,165,68,2,NULL),(2096,182,1,2,NULL),(2097,133,67,2,NULL),(2098,4,68,2,NULL),(2099,164,67,2,NULL),(2100,185,1,2,NULL),(2101,166,67,2,NULL),(2102,11,68,2,NULL),(2103,190,1,2,NULL),(2104,169,67,2,NULL),(2105,172,67,2,NULL),(2106,13,68,2,NULL),(2107,193,1,2,NULL),(2108,174,67,2,NULL),(2109,178,67,2,NULL),(2110,14,68,2,NULL),(2111,199,1,2,NULL),(2112,180,67,2,NULL),(2113,183,67,2,NULL),(2114,15,68,2,NULL),(2115,33,1,2,NULL),(2116,78,69,2,NULL),(2117,92,69,2,NULL),(2118,16,68,2,NULL),(2119,4,27,2,NULL),(2120,96,69,2,NULL),(2121,99,69,2,NULL),(2122,35,68,2,NULL),(2123,102,69,2,NULL),(2124,11,27,2,NULL),(2125,105,69,2,NULL),(2126,131,68,2,NULL),(2127,13,27,2,NULL),(2128,107,69,2,NULL),(2129,142,68,2,NULL),(2130,14,27,2,NULL),(2131,110,69,2,NULL),(2132,152,68,2,NULL),(2133,15,27,2,NULL),(2134,111,69,2,NULL),(2135,133,69,2,NULL),(2136,155,68,2,NULL),(2137,16,27,2,NULL),(2138,164,69,2,NULL),(2139,166,69,2,NULL),(2140,159,68,2,NULL),(2141,35,27,2,NULL),(2142,169,69,2,NULL),(2143,172,69,2,NULL),(2144,61,68,2,NULL),(2145,131,27,2,NULL),(2146,174,69,2,NULL),(2147,178,69,2,NULL),(2148,78,68,2,NULL),(2149,180,69,2,NULL),(2150,142,27,2,NULL),(2151,183,69,2,NULL),(2152,92,68,2,NULL),(2153,152,27,2,NULL),(2154,96,68,2,NULL),(2155,155,27,2,NULL),(2156,99,68,2,NULL),(2157,159,27,2,NULL),(2158,102,68,2,NULL),(2159,4,28,2,NULL),(2160,105,68,2,NULL),(2161,11,28,2,NULL),(2162,107,68,2,NULL),(2163,13,28,2,NULL),(2164,110,68,2,NULL),(2165,14,28,2,NULL),(2166,111,68,2,NULL),(2167,111,68,2,NULL),(2168,133,68,2,NULL),(2169,15,28,2,NULL),(2170,164,68,2,NULL),(2171,164,68,2,NULL),(2172,166,68,2,NULL),(2173,16,28,2,NULL),(2174,169,68,2,NULL),(2175,172,68,2,NULL),(2176,174,68,2,NULL),(2177,35,28,2,NULL),(2178,178,68,2,NULL),(2179,180,68,2,NULL),(2180,183,68,2,NULL),(2181,131,28,2,NULL),(2182,17,8,2,NULL),(2183,17,8,2,NULL),(2184,85,68,2,NULL),(2185,142,28,2,NULL),(2186,32,8,2,NULL),(2187,32,8,2,NULL),(2188,89,68,2,NULL),(2189,152,28,2,NULL),(2190,34,8,2,NULL),(2191,34,8,2,NULL),(2192,90,68,2,NULL),(2193,155,28,2,NULL),(2194,44,8,2,NULL),(2195,44,8,2,NULL),(2196,95,68,2,NULL),(2197,159,28,2,NULL),(2198,51,8,2,NULL),(2199,51,8,2,NULL),(2200,98,68,2,NULL),(2201,53,8,2,NULL),(2202,4,29,2,NULL),(2203,53,8,2,NULL),(2204,161,68,2,NULL),(2205,11,29,2,NULL),(2206,117,8,2,NULL),(2207,117,8,2,NULL),(2208,167,68,2,NULL),(2209,13,29,2,NULL),(2210,119,8,2,NULL),(2211,119,8,2,NULL),(2212,182,68,2,NULL),(2213,14,29,2,NULL),(2214,123,8,2,NULL),(2215,123,8,2,NULL),(2216,185,68,2,NULL),(2217,15,29,2,NULL),(2218,126,8,2,NULL),(2219,126,8,2,NULL),(2220,190,68,2,NULL),(2221,16,29,2,NULL),(2222,130,8,2,NULL),(2223,130,8,2,NULL),(2224,193,68,2,NULL),(2225,192,8,2,NULL),(2226,35,29,2,NULL),(2227,192,8,2,NULL),(2228,199,68,2,NULL),(2229,165,8,2,NULL),(2230,165,8,2,NULL),(2231,131,29,2,NULL),(2232,33,68,2,NULL),(2233,142,29,2,NULL),(2234,61,8,2,NULL),(2235,61,8,2,NULL),(2236,152,29,2,NULL),(2237,155,29,2,NULL),(2238,85,8,2,NULL),(2239,85,8,2,NULL),(2240,159,29,2,NULL),(2241,89,8,2,NULL),(2242,89,8,2,NULL),(2243,4,44,2,NULL),(2244,90,8,2,NULL),(2245,90,8,2,NULL),(2246,11,44,2,NULL),(2247,95,8,2,NULL),(2248,98,8,2,NULL),(2249,13,44,2,NULL),(2250,161,8,2,NULL),(2251,161,8,2,NULL),(2252,14,44,2,NULL),(2253,167,8,2,NULL),(2254,15,44,2,NULL),(2255,182,8,2,NULL),(2256,185,8,2,NULL),(2257,16,44,2,NULL),(2258,190,8,2,NULL),(2259,193,8,2,NULL),(2260,35,44,2,NULL),(2261,199,8,2,NULL),(2262,33,8,2,NULL),(2263,131,44,2,NULL),(2264,17,16,2,NULL),(2265,17,16,2,NULL),(2266,142,44,2,NULL),(2267,32,16,2,NULL),(2268,32,16,2,NULL),(2269,152,44,2,NULL),(2270,34,16,2,NULL),(2271,34,16,2,NULL),(2272,155,44,2,NULL),(2273,44,16,2,NULL),(2274,159,44,2,NULL),(2275,51,16,2,NULL),(2276,53,16,2,NULL),(2277,4,50,2,NULL),(2278,117,16,2,NULL),(2279,119,16,2,NULL),(2280,11,50,2,NULL),(2281,123,16,2,NULL),(2282,126,16,2,NULL),(2283,13,50,2,NULL),(2284,130,16,2,NULL),(2285,192,16,2,NULL),(2286,14,50,2,NULL),(2287,165,16,2,NULL),(2288,61,16,2,NULL),(2289,15,50,2,NULL),(2290,85,16,2,NULL),(2291,16,50,2,NULL),(2292,89,16,2,NULL),(2293,89,16,2,NULL),(2294,35,50,2,NULL),(2295,90,16,2,NULL),(2296,90,16,2,NULL),(2297,131,50,2,NULL),(2298,95,16,2,NULL),(2299,95,16,2,NULL),(2300,142,50,2,NULL),(2301,98,16,2,NULL),(2302,161,16,2,NULL),(2303,152,50,2,NULL),(2304,167,16,2,NULL),(2305,167,16,2,NULL),(2306,155,50,2,NULL),(2307,182,16,2,NULL),(2308,182,16,2,NULL),(2309,159,50,2,NULL),(2310,185,16,2,NULL),(2311,185,16,2,NULL),(2312,4,63,2,NULL),(2313,190,16,2,NULL),(2314,190,16,2,NULL),(2315,11,63,2,NULL),(2316,193,16,2,NULL),(2317,193,16,2,NULL),(2318,13,63,2,NULL),(2319,199,16,2,NULL),(2320,199,16,2,NULL),(2321,14,63,2,NULL),(2322,33,16,2,NULL),(2323,15,63,2,NULL),(2324,17,18,2,NULL),(2325,32,18,2,NULL),(2326,16,63,2,NULL),(2327,34,18,2,NULL),(2328,44,18,2,NULL),(2329,35,63,2,NULL),(2330,51,18,2,NULL),(2331,51,18,2,NULL),(2332,131,63,2,NULL),(2333,53,18,2,NULL),(2334,53,18,2,NULL),(2335,142,63,2,NULL),(2336,117,18,2,NULL),(2337,117,18,2,NULL),(2338,152,63,2,NULL),(2339,119,18,2,NULL),(2340,119,18,2,NULL),(2341,155,63,2,NULL),(2342,123,18,2,NULL),(2343,123,18,2,NULL),(2344,159,63,2,NULL),(2345,126,18,2,NULL),(2346,126,18,2,NULL),(2347,4,67,2,NULL),(2348,130,18,2,NULL),(2349,130,18,2,NULL),(2350,11,67,2,NULL),(2351,192,18,2,NULL),(2352,192,18,2,NULL),(2353,13,67,2,NULL),(2354,165,18,2,NULL),(2355,165,18,2,NULL),(2356,14,67,2,NULL),(2357,61,18,2,NULL),(2358,61,18,2,NULL),(2359,15,67,2,NULL),(2360,16,67,2,NULL),(2361,85,18,2,NULL),(2362,89,18,2,NULL),(2363,35,67,2,NULL),(2364,90,18,2,NULL),(2365,95,18,2,NULL),(2366,131,67,2,NULL),(2367,98,18,2,NULL),(2368,161,18,2,NULL),(2369,142,67,2,NULL),(2370,167,18,2,NULL),(2371,182,18,2,NULL),(2372,185,18,2,NULL),(2373,190,18,2,NULL),(2374,152,67,2,NULL),(2375,193,18,2,NULL),(2376,199,18,2,NULL),(2377,155,67,2,NULL),(2378,33,18,2,NULL),(2379,159,67,2,NULL),(2380,17,21,2,NULL),(2381,32,21,2,NULL),(2382,4,69,2,NULL),(2383,34,21,2,NULL),(2384,44,21,2,NULL),(2385,11,69,2,NULL),(2386,51,21,2,NULL),(2387,53,21,2,NULL),(2388,13,69,2,NULL),(2389,117,21,2,NULL),(2390,119,21,2,NULL),(2391,14,69,2,NULL),(2392,123,21,2,NULL),(2393,126,21,2,NULL),(2394,15,69,2,NULL),(2395,130,21,2,NULL),(2396,192,21,2,NULL),(2397,16,69,2,NULL),(2398,165,21,2,NULL),(2399,61,21,2,NULL),(2400,35,69,2,NULL),(2401,85,21,2,NULL),(2402,89,21,2,NULL),(2403,131,69,2,NULL),(2404,90,21,2,NULL),(2405,95,21,2,NULL),(2406,142,69,2,NULL),(2407,98,21,2,NULL),(2408,98,21,2,NULL),(2409,152,69,2,NULL),(2410,161,21,2,NULL),(2411,161,21,2,NULL),(2412,155,69,2,NULL),(2413,167,21,2,NULL),(2414,167,21,2,NULL),(2415,159,69,2,NULL),(2416,182,21,2,NULL),(2417,182,21,2,NULL),(2418,185,21,2,NULL),(2419,185,21,2,NULL),(2420,190,21,2,NULL),(2421,193,21,2,NULL),(2422,61,2,2,NULL),(2423,199,21,2,NULL),(2424,61,10,2,NULL),(2425,33,21,2,NULL),(2426,17,51,2,NULL),(2427,61,17,2,NULL),(2428,32,51,2,NULL),(2429,34,51,2,NULL),(2430,61,19,2,NULL),(2431,44,51,2,NULL),(2432,51,51,2,NULL),(2433,61,39,2,NULL),(2434,53,51,2,NULL),(2435,117,51,2,NULL),(2436,61,41,2,NULL),(2437,119,51,2,NULL),(2438,123,51,2,NULL),(2439,61,57,2,NULL),(2440,126,51,2,NULL),(2441,130,51,2,NULL),(2442,61,60,2,NULL),(2443,192,51,2,NULL),(2444,165,51,2,NULL),(2445,61,9,2,NULL),(2446,61,51,2,NULL),(2447,61,15,2,NULL),(2448,85,51,2,NULL),(2449,89,51,2,NULL),(2450,61,20,2,NULL),(2451,90,51,2,NULL),(2452,90,51,2,NULL),(2453,61,37,2,NULL),(2454,95,51,2,NULL),(2455,95,51,2,NULL),(2456,61,38,2,NULL),(2457,98,51,2,NULL),(2458,98,51,2,NULL),(2459,61,43,2,NULL),(2460,161,51,2,NULL),(2461,161,51,2,NULL),(2462,61,58,2,NULL),(2463,167,51,2,NULL),(2464,167,51,2,NULL),(2465,61,52,2,NULL),(2466,182,51,2,NULL),(2467,182,51,2,NULL),(2468,61,54,2,NULL),(2469,185,51,2,NULL),(2470,185,51,2,NULL),(2471,61,23,2,NULL),(2472,190,51,2,NULL),(2473,190,51,2,NULL),(2474,61,27,2,NULL),(2475,193,51,2,NULL),(2476,193,51,2,NULL),(2477,61,28,2,NULL),(2478,199,51,2,NULL),(2479,199,51,2,NULL),(2480,61,29,2,NULL),(2481,33,51,2,NULL),(2482,33,51,2,NULL),(2483,61,44,2,NULL),(2484,17,52,2,NULL),(2485,17,52,2,NULL),(2486,61,50,2,NULL),(2487,32,52,2,NULL),(2488,32,52,2,NULL),(2489,61,63,2,NULL),(2490,34,52,2,NULL),(2491,34,52,2,NULL),(2492,61,67,2,NULL),(2493,44,52,2,NULL),(2494,44,52,2,NULL),(2495,61,69,2,NULL),(2496,51,52,2,NULL),(2497,51,52,2,NULL),(2498,17,9,2,NULL),(2499,53,52,2,NULL),(2500,53,52,2,NULL),(2501,32,9,2,NULL),(2502,117,52,2,NULL),(2503,117,52,2,NULL),(2504,34,9,2,NULL),(2505,119,52,2,NULL),(2506,119,52,2,NULL),(2507,44,9,2,NULL),(2508,123,52,2,NULL),(2509,123,52,2,NULL),(2510,51,9,2,NULL),(2511,126,52,2,NULL),(2512,126,52,2,NULL),(2513,53,9,2,NULL),(2514,130,52,2,NULL),(2515,130,52,2,NULL),(2516,117,9,2,NULL),(2517,192,52,2,NULL),(2518,192,52,2,NULL),(2519,119,9,2,NULL),(2520,165,52,2,NULL),(2521,165,52,2,NULL),(2522,123,9,2,NULL),(2523,85,52,2,NULL),(2524,85,52,2,NULL),(2525,126,9,2,NULL),(2526,89,52,2,NULL),(2527,130,9,2,NULL),(2528,90,52,2,NULL),(2529,95,52,2,NULL),(2530,192,9,2,NULL),(2531,98,52,2,NULL),(2532,161,52,2,NULL),(2533,165,9,2,NULL),(2534,167,52,2,NULL),(2535,182,52,2,NULL),(2536,185,52,2,NULL),(2537,190,52,2,NULL),(2538,85,9,2,NULL),(2539,193,52,2,NULL),(2540,89,9,2,NULL),(2541,199,52,2,NULL),(2542,33,52,2,NULL),(2543,90,9,2,NULL),(2544,17,54,2,NULL),(2545,32,54,2,NULL),(2546,95,9,2,NULL),(2547,34,54,2,NULL),(2548,44,54,2,NULL),(2549,98,9,2,NULL),(2550,51,54,2,NULL),(2551,53,54,2,NULL),(2552,161,9,2,NULL),(2553,117,54,2,NULL),(2554,119,54,2,NULL),(2555,123,54,2,NULL),(2556,167,9,2,NULL),(2557,126,54,2,NULL),(2558,182,9,2,NULL),(2559,130,54,2,NULL),(2560,192,54,2,NULL),(2561,185,9,2,NULL),(2562,165,54,2,NULL),(2563,190,9,2,NULL),(2564,85,54,2,NULL),(2565,89,54,2,NULL),(2566,193,9,2,NULL),(2567,90,54,2,NULL),(2568,199,9,2,NULL),(2569,95,54,2,NULL),(2570,98,54,2,NULL),(2571,33,9,2,NULL),(2572,161,54,2,NULL),(2573,167,54,2,NULL),(2574,182,54,2,NULL),(2575,17,15,2,NULL),(2576,185,54,2,NULL),(2577,190,54,2,NULL),(2578,32,15,2,NULL),(2579,193,54,2,NULL),(2580,199,54,2,NULL),(2581,34,15,2,NULL),(2582,33,54,2,NULL),(2583,44,15,2,NULL),(2584,51,15,2,NULL),(2585,53,15,2,NULL),(2586,117,15,2,NULL),(2587,119,15,2,NULL),(2588,123,15,2,NULL),(2589,126,15,2,NULL),(2590,130,15,2,NULL),(2591,192,15,2,NULL),(2592,165,15,2,NULL),(2593,85,15,2,NULL),(2594,89,15,2,NULL),(2595,90,15,2,NULL),(2596,95,15,2,NULL),(2597,98,15,2,NULL),(2598,161,15,2,NULL),(2599,167,15,2,NULL),(2600,182,15,2,NULL),(2601,185,15,2,NULL),(2602,190,15,2,NULL),(2603,193,15,2,NULL),(2604,199,15,2,NULL),(2605,33,15,2,NULL),(2606,3,15,2,NULL),(2607,3,17,2,NULL),(2608,3,28,2,NULL),(2609,3,35,2,NULL),(2610,17,20,2,NULL),(2611,32,20,2,NULL),(2612,34,20,2,NULL),(2613,44,20,2,NULL),(2614,51,20,2,NULL),(2615,53,20,2,NULL),(2616,117,20,2,NULL),(2617,119,20,2,NULL),(2618,123,20,2,NULL),(2619,126,20,2,NULL),(2620,130,20,2,NULL),(2621,192,20,2,NULL),(2622,165,20,2,NULL),(2623,85,20,2,NULL),(2624,89,20,2,NULL),(2625,90,20,2,NULL),(2626,95,20,2,NULL),(2627,98,20,2,NULL),(2628,161,20,2,NULL),(2629,167,20,2,NULL),(2630,182,20,2,NULL),(2631,185,20,2,NULL),(2632,190,20,2,NULL),(2633,193,20,2,NULL),(2634,199,20,2,NULL),(2635,33,20,2,NULL),(2636,17,37,2,NULL),(2637,32,37,2,NULL),(2638,34,37,2,NULL),(2639,44,37,2,NULL),(2640,51,37,2,NULL),(2641,53,37,2,NULL),(2642,117,37,2,NULL),(2643,119,37,2,NULL),(2644,123,37,2,NULL),(2645,126,37,2,NULL),(2646,130,37,2,NULL),(2647,192,37,2,NULL),(2648,165,37,2,NULL),(2649,85,37,2,NULL),(2650,89,37,2,NULL),(2651,90,37,2,NULL),(2652,95,37,2,NULL),(2653,98,37,2,NULL),(2654,161,37,2,NULL),(2655,167,37,2,NULL),(2656,182,37,2,NULL),(2657,185,37,2,NULL),(2658,190,37,2,NULL),(2659,193,37,2,NULL),(2660,199,37,2,NULL),(2661,33,37,2,NULL),(2662,17,38,2,NULL),(2663,32,38,2,NULL),(2664,34,38,2,NULL),(2665,44,38,2,NULL),(2666,51,38,2,NULL),(2667,53,38,2,NULL),(2668,117,38,2,NULL),(2669,119,38,2,NULL),(2670,123,38,2,NULL),(2671,126,38,2,NULL),(2672,130,38,2,NULL),(2673,192,38,2,NULL),(2674,165,38,2,NULL),(2675,85,38,2,NULL),(2676,89,38,2,NULL),(2677,90,38,2,NULL),(2678,95,38,2,NULL),(2679,98,38,2,NULL),(2680,161,38,2,NULL),(2681,167,38,2,NULL),(2682,182,38,2,NULL),(2683,185,38,2,NULL),(2684,190,38,2,NULL),(2685,193,38,2,NULL),(2686,199,38,2,NULL),(2687,33,38,2,NULL),(2688,17,43,2,NULL),(2689,32,43,2,NULL),(2690,34,43,2,NULL),(2691,44,43,2,NULL),(2692,51,43,2,NULL),(2693,53,43,2,NULL),(2694,117,43,2,NULL),(2695,119,43,2,NULL),(2696,123,43,2,NULL),(2697,126,43,2,NULL),(2698,130,43,2,NULL),(2699,192,43,2,NULL),(2700,165,43,2,NULL),(2701,85,43,2,NULL),(2702,89,43,2,NULL),(2703,90,43,2,NULL),(2704,95,43,2,NULL),(2705,98,43,2,NULL),(2706,161,43,2,NULL),(2707,167,43,2,NULL),(2708,182,43,2,NULL),(2709,185,43,2,NULL),(2710,190,43,2,NULL),(2711,193,43,2,NULL),(2712,199,43,2,NULL),(2713,33,43,2,NULL),(2714,17,58,2,NULL),(2715,32,58,2,NULL),(2716,34,58,2,NULL),(2717,44,58,2,NULL),(2718,51,58,2,NULL),(2719,53,58,2,NULL),(2720,117,58,2,NULL),(2721,119,58,2,NULL),(2722,123,58,2,NULL),(2723,126,58,2,NULL),(2724,130,58,2,NULL),(2725,192,58,2,NULL),(2726,165,58,2,NULL),(2727,85,58,2,NULL),(2728,89,58,2,NULL),(2729,90,58,2,NULL),(2730,95,58,2,NULL),(2731,98,58,2,NULL),(2732,161,58,2,NULL),(2733,167,58,2,NULL),(2734,182,58,2,NULL),(2735,185,58,2,NULL),(2736,190,58,2,NULL),(2737,193,58,2,NULL),(2738,199,58,2,NULL),(2739,33,58,2,NULL),(2740,37,9,2,NULL),(2741,37,10,2,NULL),(2742,37,27,2,NULL),(2743,37,34,2,NULL),(2744,40,9,2,NULL),(2745,40,10,2,NULL),(2746,40,27,2,NULL),(2747,40,34,2,NULL),(2748,48,9,2,NULL),(2749,48,10,2,NULL),(2750,48,27,2,NULL),(2751,48,34,2,NULL),(2752,57,9,2,NULL),(2753,57,10,2,NULL),(2754,57,27,2,NULL),(2755,57,34,2,NULL),(2756,59,9,2,NULL),(2757,59,10,2,NULL),(2758,59,27,2,NULL),(2759,59,34,2,NULL),(2760,198,6,2,NULL),(2761,198,7,2,NULL),(2762,41,6,2,NULL),(2763,198,25,2,NULL),(2764,41,7,2,NULL),(2765,198,32,2,NULL),(2766,41,25,2,NULL),(2767,204,6,2,NULL),(2768,41,32,2,NULL),(2769,204,7,2,NULL),(2770,187,9,2,NULL),(2771,204,25,2,NULL),(2772,187,10,2,NULL),(2773,204,32,2,NULL),(2774,187,27,2,NULL),(2775,165,2,2,NULL),(2776,187,34,2,NULL),(2777,17,10,2,NULL),(2778,196,9,2,NULL),(2779,32,10,2,NULL),(2780,196,10,2,NULL),(2781,34,10,2,NULL),(2782,196,27,2,NULL),(2783,44,10,2,NULL),(2784,196,34,2,NULL),(2785,51,10,2,NULL),(2786,201,9,2,NULL),(2787,53,10,2,NULL),(2788,201,10,2,NULL),(2789,117,10,2,NULL),(2790,201,27,2,NULL),(2791,119,10,2,NULL),(2792,201,34,2,NULL),(2793,123,10,2,NULL),(2794,203,9,2,NULL),(2795,126,10,2,NULL),(2796,203,10,2,NULL),(2797,130,10,2,NULL),(2798,203,27,2,NULL),(2799,192,10,2,NULL),(2800,203,34,2,NULL),(2801,17,17,2,NULL),(2802,205,9,2,NULL),(2803,32,17,2,NULL),(2804,205,10,2,NULL),(2805,34,17,2,NULL),(2806,205,27,2,NULL),(2807,44,17,2,NULL),(2808,205,34,2,NULL),(2809,51,17,2,NULL),(2810,207,6,2,NULL),(2811,53,17,2,NULL),(2812,207,7,2,NULL),(2813,117,17,2,NULL),(2814,207,25,2,NULL),(2815,119,17,2,NULL),(2816,207,32,2,NULL),(2817,123,17,2,NULL),(2818,85,2,2,NULL),(2819,126,17,2,NULL),(2820,89,2,2,NULL),(2821,130,17,2,NULL),(2822,90,2,2,NULL),(2823,192,17,2,NULL),(2824,95,2,2,NULL),(2825,17,19,2,NULL),(2826,98,2,2,NULL),(2827,32,19,2,NULL),(2828,161,2,2,NULL),(2829,34,19,2,NULL),(2830,167,2,2,NULL),(2831,44,19,2,NULL),(2832,182,2,2,NULL),(2833,51,19,2,NULL),(2834,185,2,2,NULL),(2835,53,19,2,NULL),(2836,190,2,2,NULL),(2837,117,19,2,NULL),(2838,193,2,2,NULL),(2839,119,19,2,NULL),(2840,199,2,2,NULL),(2841,123,19,2,NULL),(2842,17,23,2,NULL),(2843,126,19,2,NULL),(2844,32,23,2,NULL),(2845,130,19,2,NULL),(2846,34,23,2,NULL),(2847,192,19,2,NULL),(2848,44,23,2,NULL),(2849,17,39,2,NULL),(2850,51,23,2,NULL),(2851,32,39,2,NULL),(2852,53,23,2,NULL),(2853,34,39,2,NULL),(2854,117,23,2,NULL),(2855,44,39,2,NULL),(2856,119,23,2,NULL),(2857,51,39,2,NULL),(2858,123,23,2,NULL),(2859,53,39,2,NULL),(2860,126,23,2,NULL),(2861,117,39,2,NULL),(2862,130,23,2,NULL),(2863,119,39,2,NULL),(2864,192,23,2,NULL),(2865,123,39,2,NULL),(2866,165,23,2,NULL),(2867,126,39,2,NULL),(2868,85,10,2,NULL),(2869,130,39,2,NULL),(2870,89,10,2,NULL),(2871,192,39,2,NULL),(2872,90,10,2,NULL),(2873,17,41,2,NULL),(2874,95,10,2,NULL),(2875,32,41,2,NULL),(2876,98,10,2,NULL),(2877,34,41,2,NULL),(2878,161,10,2,NULL),(2879,44,41,2,NULL),(2880,167,10,2,NULL),(2881,51,41,2,NULL),(2882,182,10,2,NULL),(2883,53,41,2,NULL),(2884,185,10,2,NULL),(2885,117,41,2,NULL),(2886,190,10,2,NULL),(2887,119,41,2,NULL),(2888,193,10,2,NULL),(2889,123,41,2,NULL),(2890,199,10,2,NULL),(2891,126,41,2,NULL),(2892,85,17,2,NULL),(2893,130,41,2,NULL),(2894,89,17,2,NULL),(2895,192,41,2,NULL),(2896,90,17,2,NULL),(2897,17,57,2,NULL),(2898,95,17,2,NULL),(2899,32,57,2,NULL),(2900,98,17,2,NULL),(2901,34,57,2,NULL),(2902,161,17,2,NULL),(2903,44,57,2,NULL),(2904,167,17,2,NULL),(2905,51,57,2,NULL),(2906,182,17,2,NULL),(2907,53,57,2,NULL),(2908,185,17,2,NULL),(2909,117,57,2,NULL),(2910,190,17,2,NULL),(2911,119,57,2,NULL),(2912,193,17,2,NULL),(2913,123,57,2,NULL),(2914,199,17,2,NULL),(2915,126,57,2,NULL),(2916,85,19,2,NULL),(2917,130,57,2,NULL),(2918,89,19,2,NULL),(2919,192,57,2,NULL),(2920,90,19,2,NULL),(2921,17,60,2,NULL),(2922,95,19,2,NULL),(2923,32,60,2,NULL),(2924,98,19,2,NULL),(2925,34,60,2,NULL),(2926,161,19,2,NULL),(2927,44,60,2,NULL),(2928,167,19,2,NULL),(2929,51,60,2,NULL),(2930,182,19,2,NULL),(2931,53,60,2,NULL),(2932,185,19,2,NULL),(2933,117,60,2,NULL),(2934,190,19,2,NULL),(2935,119,60,2,NULL),(2936,193,19,2,NULL),(2937,123,60,2,NULL),(2938,199,19,2,NULL),(2939,126,60,2,NULL),(2940,85,39,2,NULL),(2941,130,60,2,NULL),(2942,89,39,2,NULL),(2943,192,60,2,NULL),(2944,90,39,2,NULL),(2945,95,39,2,NULL),(2946,98,39,2,NULL),(2947,161,39,2,NULL),(2948,167,39,2,NULL),(2949,182,39,2,NULL),(2950,185,39,2,NULL),(2951,190,39,2,NULL),(2952,193,39,2,NULL),(2953,199,39,2,NULL),(2954,33,2,2,NULL),(2955,85,41,2,NULL),(2956,17,27,2,NULL),(2957,89,41,2,NULL),(2958,32,27,2,NULL),(2959,90,41,2,NULL),(2960,34,27,2,NULL),(2961,95,41,2,NULL),(2962,44,27,2,NULL),(2963,98,41,2,NULL),(2964,51,27,2,NULL),(2965,161,41,2,NULL),(2966,53,27,2,NULL),(2967,167,41,2,NULL),(2968,117,27,2,NULL),(2969,182,41,2,NULL),(2970,119,27,2,NULL),(2971,185,41,2,NULL),(2972,123,27,2,NULL),(2973,190,41,2,NULL),(2974,126,27,2,NULL),(2975,193,41,2,NULL),(2976,130,27,2,NULL),(2977,199,41,2,NULL),(2978,192,27,2,NULL),(2979,85,57,2,NULL),(2980,17,28,2,NULL),(2981,89,57,2,NULL),(2982,32,28,2,NULL),(2983,90,57,2,NULL),(2984,34,28,2,NULL),(2985,95,57,2,NULL),(2986,44,28,2,NULL),(2987,98,57,2,NULL),(2988,51,28,2,NULL),(2989,161,57,2,NULL),(2990,53,28,2,NULL),(2991,167,57,2,NULL),(2992,117,28,2,NULL),(2993,182,57,2,NULL),(2994,119,28,2,NULL),(2995,185,57,2,NULL),(2996,123,28,2,NULL),(2997,190,57,2,NULL),(2998,126,28,2,NULL),(2999,193,57,2,NULL),(3000,130,28,2,NULL),(3001,199,57,2,NULL),(3002,192,28,2,NULL),(3003,85,60,2,NULL),(3004,17,29,2,NULL),(3005,89,60,2,NULL),(3006,32,29,2,NULL),(3007,90,60,2,NULL),(3008,34,29,2,NULL),(3009,95,60,2,NULL),(3010,44,29,2,NULL),(3011,98,60,2,NULL),(3012,51,29,2,NULL),(3013,161,60,2,NULL),(3014,53,29,2,NULL),(3015,167,60,2,NULL),(3016,117,29,2,NULL),(3017,182,60,2,NULL),(3018,119,29,2,NULL),(3019,185,60,2,NULL),(3020,123,29,2,NULL),(3021,190,60,2,NULL),(3022,126,29,2,NULL),(3023,193,60,2,NULL),(3024,130,29,2,NULL),(3025,199,60,2,NULL),(3026,192,29,2,NULL),(3027,17,44,2,NULL),(3028,32,44,2,NULL),(3029,34,44,2,NULL),(3030,44,44,2,NULL),(3031,51,44,2,NULL),(3032,53,44,2,NULL),(3033,117,44,2,NULL),(3034,119,44,2,NULL),(3035,123,44,2,NULL),(3036,126,44,2,NULL),(3037,130,44,2,NULL),(3038,33,23,2,NULL),(3039,192,44,2,NULL),(3040,85,27,2,NULL),(3041,17,50,2,NULL),(3042,89,27,2,NULL),(3043,32,50,2,NULL),(3044,90,27,2,NULL),(3045,34,50,2,NULL),(3046,95,27,2,NULL),(3047,44,50,2,NULL),(3048,98,27,2,NULL),(3049,51,50,2,NULL),(3050,161,27,2,NULL),(3051,53,50,2,NULL),(3052,167,27,2,NULL),(3053,117,50,2,NULL),(3054,182,27,2,NULL),(3055,119,50,2,NULL),(3056,185,27,2,NULL),(3057,123,50,2,NULL),(3058,190,27,2,NULL),(3059,126,50,2,NULL),(3060,193,27,2,NULL),(3061,130,50,2,NULL),(3062,199,27,2,NULL),(3063,192,50,2,NULL),(3064,85,28,2,NULL),(3065,17,63,2,NULL),(3066,89,28,2,NULL),(3067,32,63,2,NULL),(3068,90,28,2,NULL),(3069,34,63,2,NULL),(3070,95,28,2,NULL),(3071,44,63,2,NULL),(3072,98,28,2,NULL),(3073,51,63,2,NULL),(3074,161,28,2,NULL),(3075,53,63,2,NULL),(3076,167,28,2,NULL),(3077,117,63,2,NULL),(3078,182,28,2,NULL),(3079,119,63,2,NULL),(3080,185,28,2,NULL),(3081,123,63,2,NULL),(3082,190,28,2,NULL),(3083,126,63,2,NULL),(3084,193,28,2,NULL),(3085,130,63,2,NULL),(3086,199,28,2,NULL),(3087,192,63,2,NULL),(3088,85,29,2,NULL),(3089,17,67,2,NULL),(3090,89,29,2,NULL),(3091,32,67,2,NULL),(3092,90,29,2,NULL),(3093,34,67,2,NULL),(3094,95,29,2,NULL),(3095,44,67,2,NULL),(3096,98,29,2,NULL),(3097,51,67,2,NULL),(3098,53,67,2,NULL),(3099,161,29,2,NULL),(3100,117,67,2,NULL),(3101,167,29,2,NULL),(3102,119,67,2,NULL),(3103,182,29,2,NULL),(3104,123,67,2,NULL),(3105,185,29,2,NULL),(3106,126,67,2,NULL),(3107,190,29,2,NULL),(3108,130,67,2,NULL),(3109,193,29,2,NULL),(3110,192,67,2,NULL),(3111,199,29,2,NULL),(3112,17,69,2,NULL),(3113,85,44,2,NULL),(3114,32,69,2,NULL),(3115,89,44,2,NULL),(3116,90,44,2,NULL),(3117,34,69,2,NULL),(3118,44,69,2,NULL),(3119,95,44,2,NULL),(3120,51,69,2,NULL),(3121,98,44,2,NULL),(3122,53,69,2,NULL),(3123,161,44,2,NULL),(3124,167,44,2,NULL),(3125,117,69,2,NULL),(3126,119,69,2,NULL),(3127,182,44,2,NULL),(3128,185,44,2,NULL),(3129,123,69,2,NULL),(3130,190,44,2,NULL),(3131,126,69,2,NULL),(3132,193,44,2,NULL),(3133,130,69,2,NULL),(3134,192,69,2,NULL),(3135,199,44,2,NULL),(3136,85,50,2,NULL),(3137,89,50,2,NULL),(3138,90,50,2,NULL),(3139,95,50,2,NULL),(3140,98,50,2,NULL),(3141,161,50,2,NULL),(3142,165,10,2,NULL),(3143,167,50,2,NULL),(3144,165,17,2,NULL),(3145,182,50,2,NULL),(3146,165,19,2,NULL),(3147,165,39,2,NULL),(3148,185,50,2,NULL),(3149,165,41,2,NULL),(3150,190,50,2,NULL),(3151,165,57,2,NULL),(3152,193,50,2,NULL),(3153,165,60,2,NULL),(3154,199,50,2,NULL),(3155,85,63,2,NULL),(3156,165,27,2,NULL),(3157,89,63,2,NULL),(3158,165,28,2,NULL),(3159,165,29,2,NULL),(3160,90,63,2,NULL),(3161,95,63,2,NULL),(3162,165,44,2,NULL),(3163,98,63,2,NULL),(3164,165,50,2,NULL),(3165,161,63,2,NULL),(3166,165,63,2,NULL),(3167,167,63,2,NULL),(3168,165,67,2,NULL),(3169,182,63,2,NULL),(3170,165,69,2,NULL),(3171,185,63,2,NULL),(3172,190,63,2,NULL),(3173,193,63,2,NULL),(3174,199,63,2,NULL),(3175,33,10,2,NULL),(3176,85,67,2,NULL),(3177,89,67,2,NULL),(3178,90,67,2,NULL),(3179,95,67,2,NULL),(3180,33,17,2,NULL),(3181,98,67,2,NULL),(3182,18,15,2,NULL),(3183,161,67,2,NULL),(3184,18,17,2,NULL),(3185,167,67,2,NULL),(3186,18,28,2,NULL),(3187,182,67,2,NULL),(3188,18,35,2,NULL),(3189,185,67,2,NULL),(3190,190,67,2,NULL),(3191,33,19,2,NULL),(3192,193,67,2,NULL),(3193,33,39,2,NULL),(3194,199,67,2,NULL),(3195,85,69,2,NULL),(3196,89,69,2,NULL),(3197,90,69,2,NULL),(3198,33,41,2,NULL),(3199,95,69,2,NULL),(3200,98,69,2,NULL),(3201,33,57,2,NULL),(3202,161,69,2,NULL),(3203,167,69,2,NULL),(3204,33,60,2,NULL),(3205,182,69,2,NULL),(3206,185,69,2,NULL),(3207,190,69,2,NULL),(3208,193,69,2,NULL),(3209,199,69,2,NULL),(3210,33,27,2,NULL),(3211,33,28,2,NULL),(3212,33,29,2,NULL),(3213,33,44,2,NULL),(3214,33,50,2,NULL),(3215,33,63,2,NULL),(3216,33,67,2,NULL),(3217,33,69,2,NULL),(3218,121,15,2,NULL),(3219,121,17,2,NULL),(3220,121,28,2,NULL),(3221,121,35,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProviderLinks`
--

LOCK TABLES `ProviderLinks` WRITE;
/*!40000 ALTER TABLE `ProviderLinks` DISABLE KEYS */;
INSERT INTO `ProviderLinks` VALUES (1,3,22,NULL),(2,3,22,NULL),(3,16,22,NULL),(4,46,22,NULL),(5,18,22,NULL),(6,47,22,NULL);
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

-- Dump completed on 2015-10-12  3:30:46
