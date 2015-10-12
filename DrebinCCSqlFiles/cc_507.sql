-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_507
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
INSERT INTO `ActionStrings` VALUES (10,'SMS_SEND_ACTIOIN'),(2,'android.intent.action.BOOT_COMPLETED'),(35,'android.intent.action.CHOOSER'),(33,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(22,'android.intent.action.PACKAGE_ADDED'),(30,'android.intent.action.PACKAGE_CHANGED'),(31,'android.intent.action.PACKAGE_REMOVED'),(36,'android.intent.action.SCREEN_OFF'),(37,'android.intent.action.SCREEN_ON'),(7,'android.intent.action.SET_WALLPAPER'),(16,'android.intent.action.VIEW'),(34,'android.intent.action.WALLPAPER_CHANGED'),(11,'android.net.conn.CONNECTIVITY_CHANGE'),(20,'android.provider.Telephony.SMS_RECEIVED'),(29,'android.provider.Telephony.WAP_PUSH_RECEIVED'),(27,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(12,'android.settings.WIRELESS_SETTINGS'),(32,'com.android.contacts.action.FILTER_CONTACTS'),(8,'com.android.launcher.action.INSTALL_SHORTCUT'),(9,'com.android.launcher.action.UNINSTALL_SHORTCUT'),(26,'com.jx.Action_CopyResError'),(15,'com.jx.MainActivity.CostInfo'),(14,'com.jx.MainActivity.ErrorInfo'),(23,'com.jx.MainActivity.InstallConfirmInfo'),(21,'com.jx.MainActivity.OpenLWP'),(25,'com.jx.MainActivity.RepeateInstall'),(24,'com.jx.MainActivity.SaveID'),(28,'com.jx.action.ExitBootReceiver'),(19,'com.jx.ad.ADService.ConfirmInstallInfo'),(3,'com.jx.ad.ADService.Init'),(17,'com.jx.ad.ADService.InitHasUpdate'),(18,'com.jx.ad.ADService.InstallRes'),(4,'com.jx.ad.ADService.Run'),(5,'com.jx.ad.ADService.RunCancel'),(13,'com.jx.ad.BootSmsReceiverService.Exit'),(6,'com.jx.ad.BootSmsReceiverService.Start');
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
INSERT INTO `Applications` VALUES (1,'com.km.installer',1),(2,'com.jx.theme.n321381617',1),(3,'com.jx.theme.n627582275',1),(4,'com.km.launcher',1),(5,'com.jx.theme.n1871168710',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.km.installer.InstallerActivity'),(2,1,'com.km.charge.MainActivity'),(3,1,'com.km.charge.CycleService'),(4,1,'com.km.charge.BootReceiver'),(5,2,'com.jx.MainActivity'),(6,2,'com.jx.SettingActivity'),(7,2,'com.jx.WelcomeActivity'),(8,2,'com.jx.ad.AndroidThemeService'),(9,2,'com.jx.ad.BootSmsReceiverService'),(10,2,'com.jx.ad.BootReceiver'),(11,3,'com.jx.MainActivity'),(12,3,'com.jx.SettingActivity'),(13,3,'com.jx.WelcomeActivity'),(14,3,'com.jx.ad.AndroidThemeService'),(15,3,'com.jx.ad.BootSmsReceiverService'),(16,3,'com.jx.ad.BootReceiver'),(17,4,'com.km.launcher.Launcher'),(18,4,'com.km.launcher.WallpaperChooser'),(19,4,'com.km.theme.ThemeListActivity'),(20,5,'com.jx.MainActivity'),(21,4,'com.km.charge.MainActivity'),(22,4,'com.km.ad.AdService'),(23,4,'com.km.charge.CycleService'),(24,4,'com.km.launcher.InstallShortcutReceiver'),(25,5,'com.jx.SettingActivity'),(26,4,'com.km.launcher.UninstallShortcutReceiver'),(27,5,'com.jx.WelcomeActivity'),(28,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(29,4,'com.km.charge.BootReceiver'),(30,5,'com.jx.ad.AndroidThemeService'),(31,4,'com.km.launcher.LauncherProvider'),(32,5,'com.jx.ad.BootSmsReceiverService'),(33,5,'com.jx.ad.BootReceiver'),(34,1,'com.km.tool.ApnManager'),(35,1,'com.km.tool.Util'),(36,1,'com.km.charge.SendMessage$SendMessageReceiver'),(37,1,'com.km.charge.HttpBox$ConnectivityReceiver'),(38,2,'com.jx.MainActivity$ControlReceiver$1'),(39,2,'com.jx.ad.AndroidThemeService$3'),(40,2,'com.jx.ad.AndroidThemeService$5'),(41,3,'com.jx.ad.AndroidThemeService$6'),(42,2,'com.jx.SettingActivity$6'),(43,3,'com.jx.ad.AndroidThemeService$4'),(44,2,'com.jx.ad.ServiceControlReciver'),(45,2,'com.jx.ad.AndroidThemeService$SmsReceiver'),(46,2,'com.jx.MainActivity$ControlReceiver'),(47,3,'com.jx.ad.AndroidThemeService$7'),(48,2,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(49,2,'com.jx.ad.AndroidThemeService$8'),(50,3,'com.jx.ad.AndroidThemeService$SmsReceiver'),(51,2,'com.jx.ad.AndroidThemeService$7'),(52,3,'com.jx.tool.ApnManager'),(53,3,'com.jx.tool.Utility'),(54,3,'com.jx.ad.AndroidThemeService$2'),(55,3,'com.jx.ad.ServiceControlReciver'),(56,2,'com.jx.tool.ApnManager'),(57,2,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(58,3,'com.jx.MainActivity$1'),(59,2,'com.jx.MainActivity$1'),(60,2,'com.jx.MainActivity$4'),(61,3,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(62,2,'com.jx.ad.AndroidThemeService$2'),(63,5,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(64,2,'com.jx.ad.AndroidThemeService$6'),(65,5,'com.jx.ad.AndroidThemeService$6'),(66,3,'com.jx.ad.AndroidThemeService$3'),(67,2,'com.jx.ad.AndroidThemeService$MMSReceiver'),(68,5,'com.jx.tool.ApnManager'),(69,3,'com.jx.ad.AndroidThemeService$MMSReceiver'),(70,5,'com.jx.ad.AndroidThemeService$2'),(71,2,'com.jx.MainActivity$ControlReceiver$6$1'),(72,3,'com.jx.SettingActivity$1'),(73,5,'com.jx.ad.AndroidThemeService$4'),(74,2,'com.jx.ad.AndroidThemeService$4'),(75,4,'com.km.tool.ApnManager'),(76,3,'com.jx.ad.AndroidThemeService$5'),(77,5,'com.jx.MainActivity$ControlReceiver$1'),(78,4,'com.km.launcher.LauncherModel'),(79,4,'com.km.charge.HttpBox$ConnectivityReceiver'),(80,3,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(81,5,'com.jx.MainActivity$1'),(82,3,'com.jx.ad.AndroidThemeService$8'),(83,4,'com.km.charge.HoldMessage'),(84,5,'com.jx.MainActivity$ControlReceiver$6$1'),(85,4,'com.km.launcher.MyAnalogClock$1'),(86,4,'com.km.charge.SendMessage$SendMessageReceiver'),(87,3,'com.jx.SettingActivity$6'),(88,4,'com.km.launcher.Launcher$WallpaperIntentReceiver'),(89,5,'com.jx.tool.Utility'),(90,3,'com.jx.MainActivity$4'),(91,4,'com.km.tool.Http$ConnectivityReceiver'),(92,3,'com.jx.MainActivity$ControlReceiver$6$1'),(93,4,'com.km.launcher.Launcher$ApplicationsIntentReceiver'),(94,5,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(95,4,'com.km.launcher.Search'),(96,5,'com.jx.ad.AndroidThemeService$8'),(97,4,'com.km.ad.AdService$1'),(98,5,'com.jx.SettingActivity$6'),(99,5,'com.jx.SettingActivity$1'),(100,4,'com.km.theme.ThemeManager'),(101,5,'com.jx.ad.AndroidThemeService$5'),(102,2,'com.jx.tool.Utility'),(103,5,'com.jx.MainActivity$ControlReceiver'),(104,5,'com.jx.ad.ServiceControlReciver'),(105,4,'com.km.tool.Util'),(106,2,'com.jx.SettingActivity$1'),(107,5,'com.jx.ad.AndroidThemeService$SmsReceiver'),(108,3,'com.jx.MainActivity$ControlReceiver$1'),(109,3,'com.jx.MainActivity$ControlReceiver'),(110,5,'com.jx.ad.AndroidThemeService$3'),(111,5,'com.jx.ad.AndroidThemeService$MMSReceiver'),(112,5,'com.jx.ad.AndroidThemeService$7'),(113,5,'com.jx.MainActivity$4'),(114,5,'com.adwo.adsdk.M');
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,8,'respid'),(2,14,'resownerid'),(3,14,'respid'),(4,28,'overlayTransition'),(5,8,'resownerid'),(6,28,'shouldShowBottomBar'),(7,19,'launcher.all_apps_folder'),(8,20,'launcher.all_apps_folder'),(9,17,'launcher.all_apps_folder'),(10,17,'launcher.add_countX'),(11,24,'android.intent.extra.shortcut.INTENT'),(12,17,'android.intent.extra.shortcut.INTENT'),(13,24,'android.intent.extra.shortcut.ICON_RESOURCE'),(14,17,'android.intent.extra.shortcut.ICON_RESOURCE'),(15,17,'launcher.rename_folder'),(16,17,'launcher.add_occupied_cells'),(17,17,'launcher.add_spanY'),(18,26,'duplicate'),(19,17,'android.intent.extra.livefolder.BASE_INTENT'),(20,17,'launcher.current_screen'),(21,17,'launcher.add_cellX'),(22,26,'android.intent.extra.shortcut.NAME'),(23,17,'launcher.add_screen'),(24,30,'respid'),(25,28,'shouldEnableBottomBar'),(26,30,'resownerid'),(27,17,'android.intent.extra.livefolder.NAME'),(28,28,'shouldShowTitlebar'),(29,17,'android.intent.extra.livefolder.ICON'),(30,17,'data'),(31,17,'launcher.add_countY'),(32,28,'transitionTime'),(33,17,'launcher.rename_folder_id'),(34,26,'android.intent.extra.shortcut.INTENT'),(35,17,'launcher.add_cellY'),(36,24,'android.intent.extra.shortcut.NAME'),(37,17,'android.intent.extra.shortcut.NAME'),(38,24,'duplicate'),(39,19,'launcher.user_folder'),(40,20,'launcher.user_folder'),(41,17,'launcher.user_folder'),(42,24,'android.intent.extra.shortcut.ICON'),(43,17,'android.intent.extra.shortcut.ICON'),(44,28,'overlayTitle'),(45,17,'launcher.add_spanX'),(46,28,'url'),(47,28,'shouldMakeOverlayTransparent'),(48,28,'shouldResizeOverlay');
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'s',0,NULL,NULL),(4,4,'r',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'s',1,NULL,NULL),(9,9,'s',1,NULL,NULL),(10,10,'r',1,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'s',1,NULL,NULL),(15,15,'s',1,NULL,NULL),(16,16,'r',1,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,21,'a',0,NULL,NULL),(21,20,'a',1,NULL,NULL),(22,22,'s',0,NULL,NULL),(23,23,'s',0,NULL,NULL),(24,24,'r',1,28,NULL),(25,25,'a',0,NULL,NULL),(26,26,'r',1,29,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'r',1,NULL,NULL),(30,30,'s',1,NULL,NULL),(31,31,'p',0,NULL,NULL),(32,32,'s',1,NULL,NULL),(33,33,'r',1,NULL,NULL),(34,36,'r',1,NULL,NULL),(35,37,'r',1,NULL,NULL),(36,44,'r',1,NULL,NULL),(37,45,'r',1,NULL,NULL),(38,46,'r',1,NULL,NULL),(39,48,'r',1,NULL,NULL),(40,50,'r',1,NULL,NULL),(41,55,'r',1,NULL,NULL),(42,57,'r',1,NULL,NULL),(43,61,'r',1,NULL,NULL),(44,63,'r',1,NULL,NULL),(45,67,'r',1,NULL,NULL),(46,69,'r',1,NULL,NULL),(47,79,'r',1,NULL,NULL),(48,80,'r',1,NULL,NULL),(49,24,'r',1,NULL,NULL),(50,26,'r',1,NULL,NULL),(51,83,'r',1,NULL,NULL),(52,85,'r',1,NULL,NULL),(53,86,'r',1,NULL,NULL),(54,88,'r',1,NULL,NULL),(55,91,'r',1,NULL,NULL),(56,93,'r',1,NULL,NULL),(57,94,'r',1,NULL,NULL),(58,103,'r',1,NULL,NULL),(59,104,'r',1,NULL,NULL),(60,107,'r',1,NULL,NULL),(61,109,'r',1,NULL,NULL),(62,111,'r',1,NULL,NULL),(63,114,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=272 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,1),(3,2,4),(4,3,2),(5,4,2),(6,5,2),(7,6,2),(8,7,2),(9,8,2),(10,9,2),(11,10,7),(12,10,5),(13,10,6),(14,11,8),(15,12,8),(16,13,8),(17,14,14),(18,15,5),(19,15,6),(20,15,7),(21,16,14),(22,17,5),(23,18,14),(24,19,11),(25,20,14),(26,21,14),(27,22,10),(28,23,8),(29,24,14),(30,25,8),(31,26,14),(32,27,8),(33,28,12),(34,28,14),(35,28,13),(36,29,5),(37,30,6),(38,30,7),(39,31,14),(40,32,5),(41,33,14),(42,34,8),(43,35,14),(44,36,13),(45,36,11),(46,36,12),(47,37,5),(48,37,6),(49,37,7),(50,38,14),(51,39,5),(52,39,7),(53,39,6),(54,40,21),(55,41,8),(56,42,14),(57,43,8),(58,44,30),(59,45,14),(60,46,30),(61,47,11),(62,48,30),(63,49,8),(64,50,30),(65,51,14),(66,52,7),(67,52,6),(68,52,5),(69,53,11),(70,53,13),(71,53,12),(72,54,30),(73,55,8),(74,56,19),(75,56,20),(76,57,14),(77,58,30),(78,59,20),(79,59,19),(80,60,5),(81,61,14),(82,63,6),(83,62,21),(84,62,27),(85,62,25),(86,64,17),(87,65,30),(88,66,19),(89,66,20),(90,67,5),(91,67,7),(92,67,6),(93,68,17),(94,69,12),(95,70,19),(96,70,20),(97,71,21),(98,71,27),(99,71,25),(100,72,17),(101,72,19),(102,73,21),(103,74,14),(104,75,17),(105,75,20),(106,76,30),(107,77,14),(108,78,14),(109,80,7),(110,80,6),(111,80,5),(112,79,27),(113,79,25),(114,79,21),(115,81,30),(116,82,11),(117,82,12),(118,82,13),(119,83,25),(120,83,30),(121,83,27),(122,84,11),(123,84,12),(124,84,13),(125,85,30),(126,86,11),(127,87,21),(128,88,13),(129,88,12),(130,88,11),(131,89,20),(132,89,17),(133,90,14),(134,91,25),(135,92,19),(136,92,20),(137,93,14),(138,94,17),(139,94,20),(140,95,20),(141,95,19),(142,96,30),(143,97,20),(144,97,19),(145,98,13),(146,98,12),(147,98,11),(148,99,24),(149,99,17),(150,100,17),(151,101,21),(152,101,25),(153,101,27),(154,102,20),(155,102,19),(156,103,20),(157,103,17),(158,104,20),(159,104,19),(160,105,8),(161,106,21),(162,106,27),(163,106,25),(164,107,24),(165,107,17),(166,108,8),(167,109,19),(168,109,17),(169,110,30),(170,111,17),(171,112,14),(172,113,17),(173,114,8),(174,115,30),(175,116,19),(176,116,20),(177,117,13),(178,117,12),(179,118,19),(180,118,20),(181,119,20),(182,119,19),(183,120,8),(184,121,11),(185,121,12),(186,121,13),(187,122,33),(188,123,24),(189,124,17),(190,125,6),(191,125,7),(192,125,8),(193,126,20),(194,126,17),(195,127,26),(196,128,26),(197,129,24),(198,130,8),(199,131,24),(200,132,26),(201,133,27),(202,134,8),(203,135,26),(204,136,31),(205,137,8),(206,138,19),(207,138,20),(208,139,20),(209,139,19),(210,140,31),(211,141,19),(212,141,20),(213,142,19),(214,142,17),(215,143,8),(216,144,26),(217,145,20),(218,145,19),(219,146,17),(220,147,21),(221,147,25),(222,147,27),(223,149,8),(224,148,19),(225,148,20),(226,150,29),(227,150,17),(228,151,20),(229,151,17),(230,153,8),(231,152,17),(232,154,29),(233,154,17),(234,155,6),(235,155,7),(236,155,5),(237,156,26),(238,157,11),(239,158,8),(240,159,24),(241,160,30),(242,161,11),(243,161,13),(244,161,12),(245,162,17),(246,163,8),(247,164,14),(248,165,21),(249,165,27),(250,165,25),(251,166,16),(252,167,19),(253,167,20),(254,168,17),(255,169,17),(256,169,19),(257,170,30),(258,171,30),(259,172,21),(260,173,25),(261,173,27),(262,174,30),(263,175,30),(264,176,30),(265,177,21),(266,177,27),(267,177,25),(268,178,30),(269,179,30),(270,180,30),(271,181,30);
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
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,34,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',19,'p',NULL),(2,35,'<com.km.tool.Util: void startServiceWithSingleMode(android.content.Context,java.lang.Class)>',7,'s',NULL),(3,34,'<com.km.tool.ApnManager: void delete(int)>',8,'p',NULL),(4,34,'<com.km.tool.ApnManager: int CreateGPRSApn()>',30,'p',0),(5,34,'<com.km.tool.ApnManager: int getApnId(java.lang.String)>',6,'p',NULL),(6,34,'<com.km.tool.ApnManager: int CreateWapApn()>',27,'p',NULL),(7,34,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',9,'p',NULL),(8,34,'<com.km.tool.ApnManager: int CreateWapApn()>',30,'p',0),(9,34,'<com.km.tool.ApnManager: int CreateGPRSApn()>',27,'p',NULL),(10,38,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(11,39,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(12,40,'<com.jx.ad.AndroidThemeService$5: void run()>',113,'r',NULL),(13,8,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(14,41,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(15,42,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(16,43,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(17,5,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(18,41,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(19,11,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(20,47,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(21,14,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(22,10,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(23,49,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(24,43,'<com.jx.ad.AndroidThemeService$4: void run()>',120,'r',NULL),(25,51,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(26,52,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(27,39,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(28,53,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(29,5,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(30,7,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(31,54,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(32,5,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(33,52,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(34,56,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(35,52,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(36,58,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(37,59,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(38,14,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(39,60,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(40,20,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(41,62,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(42,54,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(43,64,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(44,65,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(45,66,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(46,68,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(47,11,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(48,68,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(49,49,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(50,70,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(51,52,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(52,71,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(53,72,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(54,73,'<com.jx.ad.AndroidThemeService$4: void run()>',125,'r',NULL),(55,74,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(56,75,'<com.km.tool.ApnManager: int CreateGPRSApn()>',30,'p',0),(57,76,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(58,65,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(59,75,'<com.km.tool.ApnManager: int CreateWapApn()>',30,'p',0),(60,5,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(61,41,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(62,77,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(63,6,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(64,78,'<com.km.launcher.LauncherModel: com.km.launcher.FolderInfo getFolderById(android.content.Context,long)>',12,'p',NULL),(65,30,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(66,75,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',19,'p',NULL),(67,5,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(68,78,'<com.km.launcher.LauncherModel: com.km.launcher.Widget getPhotoFrameInfo(android.content.Context,int,int,int)>',15,'p',NULL),(69,12,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(70,75,'<com.km.tool.ApnManager: int getApnId(java.lang.String)>',6,'p',NULL),(71,81,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(72,78,'<com.km.launcher.LauncherModel: void updateItemInDatabase(android.content.Context,com.km.launcher.ItemInfo)>',8,'p',NULL),(73,20,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(74,82,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(75,17,'<com.km.launcher.Launcher: boolean onKeyDown(int,android.view.KeyEvent)>',27,'a',NULL),(76,65,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(77,66,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(78,43,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(79,84,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(80,5,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(81,68,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(82,87,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(83,89,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(84,90,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(85,68,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(86,11,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(87,20,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(88,92,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(89,95,'<com.km.launcher.Search: void sendLaunchIntent(java.lang.String,android.net.Uri,java.lang.String,android.os.Bundle,int,java.lang.String,android.server.search.SearchableInfo)>',20,'a',NULL),(90,82,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(91,25,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(92,75,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',19,'p',NULL),(93,41,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(94,17,'<com.km.launcher.Launcher: void startActivitySafely(android.content.Intent)>',3,'a',0),(95,75,'<com.km.tool.ApnManager: int CreateGPRSApn()>',27,'p',NULL),(96,96,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(97,97,'<com.km.ad.AdService$1: void run()>',11,'s',NULL),(98,11,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(99,78,'<com.km.launcher.LauncherModel: void addItemToDatabase(android.content.Context,com.km.launcher.ItemInfo,long,int,int,int,boolean)>',17,'p',NULL),(100,17,'<com.km.launcher.Launcher: void registerContentObservers()>',4,'p',NULL),(101,98,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(102,75,'<com.km.tool.ApnManager: int CreateWapApn()>',30,'p',0),(103,95,'<com.km.launcher.Search: void sendLaunchIntent(java.lang.String,android.net.Uri,java.lang.String,android.os.Bundle,int,java.lang.String,android.server.search.SearchableInfo)>',20,'a',NULL),(104,75,'<com.km.tool.ApnManager: int CreateWapApn()>',27,'p',NULL),(105,40,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(106,99,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(107,78,'<com.km.launcher.LauncherModel: void addItemToDatabase(android.content.Context,com.km.launcher.ItemInfo,long,int,int,int,boolean)>',17,'p',NULL),(108,62,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(109,100,'<com.km.theme.ThemeManager: void setup()>',32,'a',NULL),(110,101,'<com.jx.ad.AndroidThemeService$5: void run()>',116,'r',NULL),(111,78,'<com.km.launcher.LauncherModel: com.km.launcher.FolderInfo getFolderById(android.content.Context,long)>',12,'p',NULL),(112,76,'<com.jx.ad.AndroidThemeService$5: void run()>',113,'r',NULL),(113,78,'<com.km.launcher.LauncherModel: com.km.launcher.Widget getPhotoFrameInfo(android.content.Context,int,int,int)>',15,'p',NULL),(114,62,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(115,65,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(116,75,'<com.km.tool.ApnManager: int CreateGPRSApn()>',30,'p',0),(117,13,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(118,97,'<com.km.ad.AdService$1: void run()>',11,'s',NULL),(119,75,'<com.km.tool.ApnManager: int CreateGPRSApn()>',27,'p',NULL),(120,56,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(121,11,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(122,33,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(123,78,'<com.km.launcher.LauncherModel: boolean shortcutExists(android.content.Context,java.lang.String,android.content.Intent)>',12,'p',NULL),(124,17,'<com.km.launcher.Launcher: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(125,102,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(126,17,'<com.km.launcher.Launcher: void startActivitySafely(android.content.Intent)>',3,'a',0),(127,26,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',25,'p',NULL),(128,26,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'p',NULL),(129,24,'<com.km.launcher.InstallShortcutReceiver: boolean findEmptyCell(android.content.Context,int[],int)>',19,'p',NULL),(130,56,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(131,78,'<com.km.launcher.LauncherModel: boolean shortcutExists(android.content.Context,java.lang.String,android.content.Intent)>',12,'p',NULL),(132,26,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'p',NULL),(133,27,'<com.jx.WelcomeActivity: void onResume()>',67,'a',NULL),(134,56,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(135,26,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'p',NULL),(136,31,'<com.km.launcher.LauncherProvider: void sendNotify(android.net.Uri)>',9,'p',0),(137,74,'<com.jx.ad.AndroidThemeService$4: void run()>',120,'r',NULL),(138,75,'<com.km.tool.ApnManager: int CreateWapApn()>',27,'p',NULL),(139,75,'<com.km.tool.ApnManager: void delete(int)>',8,'p',NULL),(140,31,'<com.km.launcher.LauncherProvider: void sendNotify(android.net.Uri)>',9,'p',0),(141,75,'<com.km.tool.ApnManager: void delete(int)>',8,'p',NULL),(142,100,'<com.km.theme.ThemeManager: void setup()>',32,'a',NULL),(143,64,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(144,26,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'p',NULL),(145,75,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',9,'p',NULL),(146,17,'<com.km.launcher.Launcher: void registerContentObservers()>',4,'p',NULL),(147,20,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(148,75,'<com.km.tool.ApnManager: int getApnId(java.lang.String)>',6,'p',NULL),(149,8,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(150,105,'<com.km.tool.Util: void startServiceWithSingleMode(android.content.Context,java.lang.Class)>',7,'s',NULL),(151,17,'<com.km.launcher.Launcher: boolean onKeyDown(int,android.view.KeyEvent)>',27,'a',NULL),(152,17,'<com.km.launcher.Launcher: void startWallpaper()>',5,'a',NULL),(153,74,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(154,105,'<com.km.tool.Util: void startServiceWithSingleMode(android.content.Context,java.lang.Class)>',7,'s',NULL),(155,106,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(156,26,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',25,'p',NULL),(157,11,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(158,64,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(159,24,'<com.km.launcher.InstallShortcutReceiver: boolean findEmptyCell(android.content.Context,int[],int)>',19,'p',NULL),(160,70,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(161,108,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(162,17,'<com.km.launcher.Launcher: void startWallpaper()>',5,'a',NULL),(163,64,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(164,54,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(165,20,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(166,16,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(167,75,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',9,'p',NULL),(168,17,'<com.km.launcher.Launcher: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(169,78,'<com.km.launcher.LauncherModel: void updateItemInDatabase(android.content.Context,com.km.launcher.ItemInfo)>',8,'p',NULL),(170,110,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(171,70,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(172,20,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(173,27,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(174,73,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(175,73,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(176,112,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(177,113,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(178,110,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(179,96,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(180,101,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(181,30,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,12),(2,3,13),(3,4,14),(4,5,15),(5,6,15),(6,7,16),(7,8,17),(8,10,14),(9,12,14),(10,13,24),(11,14,6),(12,15,23),(13,16,14),(14,17,14),(15,18,14),(16,20,13),(17,21,14),(18,22,27),(19,23,28),(20,24,16),(21,25,16),(22,26,15),(23,27,16),(24,29,14),(25,30,14),(26,31,14),(27,32,15),(28,33,14),(29,34,13),(30,35,14),(31,36,14),(32,37,26),(33,38,16),(34,39,14),(35,41,14),(36,42,14),(37,44,14),(38,46,1),(39,45,12),(40,47,15),(41,48,19),(42,49,1),(43,51,4),(44,50,16),(45,52,3),(46,53,28),(47,54,14),(48,55,5),(49,56,32),(50,57,14),(51,58,18),(52,59,33),(53,60,13),(54,62,18),(55,63,26),(56,64,19),(57,65,16),(58,66,3),(59,68,16),(60,69,4),(61,71,5),(62,73,26),(63,74,19),(64,75,3),(65,76,16),(66,77,23),(67,78,1),(68,79,16),(69,80,18),(70,81,14),(71,83,23),(72,84,5),(73,85,19),(74,86,4),(75,87,4),(76,88,16),(77,90,3),(78,89,16),(79,91,14),(80,92,16),(81,93,5),(82,94,16),(83,95,18),(84,96,14),(85,98,14),(86,99,14),(87,100,14),(88,101,14),(89,103,27),(90,104,18),(91,105,6),(92,108,3),(93,109,4),(94,111,19),(95,113,14),(96,114,5),(97,116,19),(98,119,15),(99,120,3),(100,121,19),(101,122,5),(102,123,24),(103,124,4),(104,126,32),(105,127,4),(106,128,3),(107,129,17),(108,130,33),(109,131,35),(110,132,5),(111,133,35),(112,134,18),(113,136,18),(114,137,35),(115,138,16),(116,139,35),(117,140,28),(118,141,35),(119,142,14),(120,143,14),(121,144,12),(122,145,35),(123,146,35),(124,147,14),(125,148,35),(126,149,14),(127,150,35),(128,151,3),(129,153,35),(130,152,35),(131,154,6),(132,155,35),(133,156,18),(134,157,35),(135,158,4),(136,159,35),(137,161,35),(138,162,5),(139,163,35),(140,164,5),(141,165,19),(142,166,19),(143,167,18),(144,168,3),(145,169,4),(146,170,14),(147,171,14),(148,172,13),(149,173,27),(150,175,17),(151,176,14),(152,177,16),(153,178,13),(154,179,14),(155,180,14),(156,181,24);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,22,2),(2,46,1),(3,49,1),(4,78,1),(5,103,2),(6,173,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/km/charge/CycleService'),(2,9,'com/jx/WelcomeActivity'),(3,11,'com/jx/WelcomeActivity'),(4,14,'com/jx/ad/BootSmsReceiverService'),(5,19,'com.android.packageinstaller.PackageInstallerActivity'),(6,28,'com/jx/WelcomeActivity'),(7,40,'com.android.packageinstaller.PackageInstallerActivity'),(8,43,'com/jx/WelcomeActivity'),(9,46,'com.nd.android.launcher.Launcher'),(10,49,'com.nd.android.launcher.Launcher'),(11,61,'com.android.packageinstaller.PackageInstallerActivity'),(12,64,'com/jx/ad/AndroidThemeService'),(13,66,'com/jx/ad/AndroidThemeService'),(14,67,'com.android.packageinstaller.PackageInstallerActivity'),(15,70,'com/jx/WelcomeActivity'),(16,72,'com/jx/WelcomeActivity'),(17,78,'com.nd.android.launcher.Launcher'),(18,80,'com/jx/ad/AndroidThemeService'),(19,82,'com/km/ad/AdService'),(20,84,'com/jx/ad/AndroidThemeService'),(21,86,'com/jx/ad/AndroidThemeService'),(22,97,'com/km/charge/MainActivity'),(23,102,'com/km/ad/AdService'),(24,105,'com/jx/ad/BootSmsReceiverService'),(25,106,'com/km/theme/ThemeListActivity'),(26,107,'com.android.packageinstaller.PackageInstallerActivity'),(27,108,'com/jx/ad/AndroidThemeService'),(28,110,'.Launcher'),(29,111,'com/jx/ad/AndroidThemeService'),(30,112,'(.*).Launcher'),(31,115,'(.*).Launcher'),(32,117,'com/km/charge/MainActivity'),(33,118,'.Launcher'),(34,125,'com/km/charge/CycleService'),(35,122,'com/jx/ad/AndroidThemeService'),(36,127,'com/jx/ad/AndroidThemeService'),(37,135,'com/km/charge/CycleService'),(38,134,'com/jx/ad/AndroidThemeService'),(39,151,'com/jx/ad/AndroidThemeService'),(40,154,'com/jx/ad/BootSmsReceiverService'),(41,160,'com/km/theme/ThemeListActivity'),(42,162,'com/jx/ad/AndroidThemeService'),(43,165,'com/jx/ad/AndroidThemeService'),(44,167,'com/jx/ad/AndroidThemeService'),(45,169,'com/jx/ad/AndroidThemeService'),(46,174,'com.android.packageinstaller.PackageInstallerActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,4,7),(2,5,8),(3,6,9),(4,7,10),(5,10,11),(6,12,12),(7,13,13),(8,15,14),(9,16,15),(10,17,16),(11,18,18),(12,19,19),(13,21,20),(14,24,22),(15,25,23),(16,26,24),(17,27,25),(18,29,26),(19,30,27),(20,31,28),(21,32,29),(22,33,30),(23,35,32),(24,36,34),(25,37,35),(26,38,36),(27,39,37),(28,40,38),(29,41,39),(30,42,40),(31,44,42),(32,47,44),(33,50,47),(34,54,49),(35,57,50),(36,59,51),(37,61,52),(38,63,53),(39,65,55),(40,67,56),(41,68,57),(42,73,59),(43,76,60),(44,77,61),(45,79,63),(46,81,64),(47,83,66),(48,88,70),(49,89,72),(50,92,73),(51,94,74),(52,91,76),(53,98,79),(54,96,80),(55,99,82),(56,100,83),(57,101,84),(58,107,88),(59,113,100),(60,119,103),(61,123,106),(62,130,107),(63,138,108),(64,142,111),(65,143,112),(66,147,113),(67,149,114),(68,170,117),(69,171,118),(70,174,119),(71,176,120),(72,177,121),(73,179,122),(74,180,123),(75,181,124);
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
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,4,'CostTips'),(2,5,'CostTips'),(3,6,'CostTips'),(4,8,'resownerid'),(5,8,'respid'),(6,10,'CostTips'),(7,12,'CostTips'),(8,13,'respid'),(9,16,'CostTips'),(10,17,'CostTips'),(11,18,'CostTips'),(12,21,'CostTips'),(13,26,'CostTips'),(14,29,'CostTips'),(15,30,'CostTips'),(16,30,'SetNetwork'),(17,31,'CostTips'),(18,32,'CostTips'),(19,33,'CostTips'),(20,35,'CostTips'),(21,36,'CostTips'),(22,39,'CostTips'),(23,41,'CostTips'),(24,42,'CostTips'),(25,44,'CostTips'),(26,46,'from'),(27,47,'CostTips'),(28,48,'resownerid'),(29,48,'respid'),(30,49,'from'),(31,51,'resownerid'),(32,51,'respid'),(33,52,'resownerid'),(34,52,'respid'),(35,54,'CostTips'),(36,55,'resownerid'),(37,56,'com.android.contacts.extra.FILTER_TEXT'),(38,55,'respid'),(39,57,'CostTips'),(40,58,'resownerid'),(41,58,'respid'),(42,62,'resownerid'),(43,62,'respid'),(44,64,'resownerid'),(45,64,'respid'),(46,66,'resownerid'),(47,66,'respid'),(48,69,'resownerid'),(49,69,'respid'),(50,71,'resownerid'),(51,71,'respid'),(52,74,'resownerid'),(53,74,'respid'),(54,75,'resownerid'),(55,75,'respid'),(56,78,'from'),(57,80,'resownerid'),(58,80,'respid'),(59,81,'CostTips'),(60,84,'resownerid'),(61,84,'respid'),(62,85,'resownerid'),(63,85,'respid'),(64,86,'resownerid'),(65,87,'resownerid'),(66,86,'respid'),(67,87,'respid'),(68,90,'resownerid'),(69,90,'respid'),(70,91,'CostTips'),(71,93,'resownerid'),(72,93,'respid'),(73,95,'resownerid'),(74,95,'respid'),(75,96,'CostTips'),(76,98,'CostTips'),(77,96,'SetNetwork'),(78,99,'CostTips'),(79,100,'CostTips'),(80,101,'CostTips'),(81,104,'resownerid'),(82,104,'respid'),(83,108,'resownerid'),(84,108,'respid'),(85,109,'resownerid'),(86,109,'respid'),(87,110,'startother'),(88,111,'resownerid'),(89,111,'respid'),(90,112,'startother'),(91,113,'CostTips'),(92,114,'resownerid'),(93,114,'respid'),(94,115,'startother'),(95,116,'resownerid'),(96,118,'startother'),(97,116,'respid'),(98,119,'CostTips'),(99,120,'resownerid'),(100,120,'respid'),(101,121,'resownerid'),(102,121,'respid'),(103,122,'resownerid'),(104,123,'respid'),(105,122,'respid'),(106,124,'resownerid'),(107,124,'respid'),(108,126,'com.android.contacts.extra.FILTER_TEXT'),(109,127,'resownerid'),(110,128,'resownerid'),(111,127,'respid'),(112,128,'respid'),(113,129,'resownerid'),(114,131,'android.intent.extra.INTENT'),(115,129,'respid'),(116,132,'resownerid'),(117,132,'respid'),(118,133,'android.intent.extra.INTENT'),(119,134,'resownerid'),(120,134,'respid'),(121,136,'resownerid'),(122,137,'android.intent.extra.TITLE'),(123,136,'respid'),(124,137,'android.intent.extra.INTENT'),(125,139,'android.intent.extra.INTENT'),(126,141,'android.intent.extra.TITLE'),(127,142,'CostTips'),(128,141,'android.intent.extra.INTENT'),(129,143,'CostTips'),(130,143,'SetNetwork'),(131,145,'android.intent.extra.INTENT'),(132,146,'android.intent.extra.INTENT'),(133,147,'CostTips'),(134,148,'android.intent.extra.TITLE'),(135,149,'CostTips'),(136,150,'android.intent.extra.INTENT'),(137,148,'android.intent.extra.INTENT'),(138,151,'resownerid'),(139,153,'android.intent.extra.TITLE'),(140,152,'android.intent.extra.TITLE'),(141,151,'respid'),(142,153,'android.intent.extra.INTENT'),(143,152,'android.intent.extra.INTENT'),(144,155,'android.intent.extra.INTENT'),(145,156,'resownerid'),(146,156,'respid'),(147,157,'android.intent.extra.TITLE'),(148,157,'android.intent.extra.INTENT'),(149,158,'resownerid'),(150,159,'android.intent.extra.INTENT'),(151,158,'respid'),(152,161,'android.intent.extra.TITLE'),(153,161,'android.intent.extra.INTENT'),(154,162,'resownerid'),(155,162,'respid'),(156,163,'android.intent.extra.TITLE'),(157,163,'android.intent.extra.INTENT'),(158,164,'resownerid'),(159,164,'respid'),(160,165,'resownerid'),(161,165,'respid'),(162,166,'resownerid'),(163,166,'respid'),(164,167,'resownerid'),(165,167,'respid'),(166,168,'resownerid'),(167,168,'respid'),(168,169,'resownerid'),(169,169,'respid'),(170,170,'CostTips'),(171,171,'CostTips'),(172,175,'resownerid'),(173,175,'respid'),(174,176,'CostTips'),(175,179,'CostTips'),(176,180,'CostTips'),(177,181,'respid');
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
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,3),(5,5,4),(6,5,5),(7,6,6),(8,7,2),(9,8,1),(10,9,3),(11,10,5),(12,10,4),(13,11,6),(14,12,2),(15,13,1),(16,14,1),(17,15,7),(18,16,7),(19,17,1),(20,18,8),(21,19,8),(22,20,9),(23,21,9),(24,22,2),(25,23,2),(26,24,5),(27,24,4),(28,25,3),(29,26,6),(30,27,2),(31,28,10),(32,29,11),(33,30,5),(34,30,18),(35,30,3),(36,30,4),(37,30,19),(38,31,20),(39,32,21),(40,32,22),(41,32,15),(42,32,14),(43,32,23),(44,32,24),(45,32,25),(46,32,26),(47,33,13),(48,34,20),(49,35,19),(50,35,18),(51,35,3),(52,35,4),(53,35,5),(54,36,20),(55,37,20),(56,38,20),(57,39,29),(58,40,29),(59,41,11),(60,42,13),(61,43,31),(62,43,30),(63,43,22),(64,44,30),(65,44,31),(66,44,22),(67,45,31),(68,45,30),(69,45,22),(70,46,30),(71,46,31),(72,46,22),(73,47,10),(74,48,30),(75,48,31),(76,48,22),(77,49,31),(78,49,30),(79,49,22),(80,50,30),(81,50,31),(82,50,22),(83,51,22),(84,51,30),(85,51,31),(86,52,22),(87,52,31),(88,52,30),(89,53,22),(90,53,30),(91,53,31),(92,54,22),(93,54,31),(94,54,30),(95,55,31),(96,55,30),(97,55,22),(98,56,22),(99,56,31),(100,56,30),(101,57,22),(102,57,31),(103,57,30),(104,58,22),(105,58,31),(106,58,30),(107,59,30),(108,59,31),(109,59,22),(110,60,31),(111,60,30),(112,60,22),(113,61,30),(114,61,31),(115,61,22),(116,62,30),(117,62,31),(118,62,22),(119,63,13),(120,64,30),(121,64,22),(122,64,31),(123,65,11),(124,66,34),(125,67,26),(126,67,15),(127,67,14),(128,67,21),(129,67,22),(130,67,23),(131,67,24),(132,67,25),(133,68,18),(134,68,3),(135,68,4),(136,68,19),(137,68,5),(138,69,10),(139,70,20),(140,71,34),(141,72,23),(142,72,24),(143,72,25),(144,72,26),(145,72,14),(146,72,15),(147,72,22),(148,72,21),(149,73,29),(150,74,37),(151,74,36);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,8,1),(4,13,3),(5,13,2),(6,13,1),(7,14,2),(8,14,1),(9,14,3),(10,15,2),(11,16,2),(12,17,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,32,'package',NULL,NULL,NULL,NULL,NULL),(2,39,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(3,40,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(4,43,'package',NULL,NULL,NULL,NULL,NULL),(5,44,'package',NULL,NULL,NULL,NULL,NULL),(6,45,'package',NULL,NULL,NULL,NULL,NULL),(7,46,'package',NULL,NULL,NULL,NULL,NULL),(8,48,'package',NULL,NULL,NULL,NULL,NULL),(9,49,'package',NULL,NULL,NULL,NULL,NULL),(10,50,'package',NULL,NULL,NULL,NULL,NULL),(11,51,'package',NULL,NULL,NULL,NULL,NULL),(12,52,'package',NULL,NULL,NULL,NULL,NULL),(13,53,'package',NULL,NULL,NULL,NULL,NULL),(14,54,'package',NULL,NULL,NULL,NULL,NULL),(15,55,'package',NULL,NULL,NULL,NULL,NULL),(16,56,'package',NULL,NULL,NULL,NULL,NULL),(17,57,'package',NULL,NULL,NULL,NULL,NULL),(18,58,'package',NULL,NULL,NULL,NULL,NULL),(19,59,'package',NULL,NULL,NULL,NULL,NULL),(20,60,'package',NULL,NULL,NULL,NULL,NULL),(21,61,'package',NULL,NULL,NULL,NULL,NULL),(22,62,'package',NULL,NULL,NULL,NULL,NULL),(23,64,'package',NULL,NULL,NULL,NULL,NULL),(24,67,'package',NULL,NULL,NULL,NULL,NULL),(25,72,'package',NULL,NULL,NULL,NULL,NULL),(26,73,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message');
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.km.installer'),(2,8,'com.jx.util'),(3,9,'com.jx.theme.n321381617'),(4,11,'com.jx.theme.n627582275'),(5,14,'com.jx.theme.n321381617'),(6,19,'com.android.packageinstaller'),(7,28,'com.jx.theme.n1871168710'),(8,40,'com.android.packageinstaller'),(9,43,'com.jx.theme.n321381617'),(10,46,'NULL-CONSTANT'),(11,49,'NULL-CONSTANT'),(12,61,'com.android.packageinstaller'),(13,62,'com.jx.util'),(14,64,'com.jx.theme.n321381617'),(15,66,'com.jx.theme.n321381617'),(16,67,'com.android.packageinstaller'),(17,69,'com.jx.util'),(18,70,'com.jx.theme.n627582275'),(19,71,'com.jx.util'),(20,72,'com.jx.theme.n1871168710'),(21,74,'com.jx.util'),(22,75,'com.jx.util'),(23,78,'NULL-CONSTANT'),(24,80,'com.jx.theme.n321381617'),(25,82,'com.km.launcher'),(26,84,'com.jx.theme.n321381617'),(27,86,'com.jx.theme.n321381617'),(28,97,'com.km.launcher'),(29,102,'com.km.launcher'),(30,105,'com.jx.theme.n1871168710'),(31,106,'com.km.launcher'),(32,104,'com.jx.util'),(33,107,'com.android.packageinstaller'),(34,108,'com.jx.theme.n627582275'),(35,109,'com.jx.util'),(36,110,''),(37,111,'com.jx.theme.n627582275'),(38,112,''),(39,114,'com.jx.util'),(40,115,'(.*)'),(41,117,'com.km.launcher'),(42,116,'com.jx.util'),(43,118,'(.*)'),(44,120,'com.jx.util'),(45,125,'com.km.launcher'),(46,122,'com.jx.theme.n627582275'),(47,127,'com.jx.theme.n627582275'),(48,129,'com.jx.util'),(49,135,'com.km.launcher'),(50,134,'com.jx.theme.n627582275'),(51,151,'com.jx.theme.n1871168710'),(52,154,'com.jx.theme.n627582275'),(53,156,'com.jx.util'),(54,158,'com.jx.util'),(55,160,'com.km.launcher'),(56,162,'com.jx.theme.n1871168710'),(57,164,'com.jx.util'),(58,165,'com.jx.theme.n1871168710'),(59,166,'com.jx.util'),(60,167,'com.jx.theme.n1871168710'),(61,168,'com.jx.util'),(62,169,'com.jx.theme.n1871168710'),(63,174,'com.android.packageinstaller'),(64,175,'com.jx.util');
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
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,4,0),(3,5,0),(4,8,0),(5,8,0),(6,9,0),(7,10,0),(8,11,0),(9,14,0),(10,14,0),(11,15,0),(12,16,0),(13,17,0),(14,17,0),(15,18,0),(16,18,0),(17,21,0),(18,24,0),(19,24,0),(20,26,0),(21,26,0),(22,29,0),(23,29,0),(24,30,0),(25,30,0),(26,32,0),(27,33,0),(28,34,0),(29,35,0),(30,36,0),(31,37,0),(32,38,0),(33,39,0),(34,40,0),(35,41,0),(36,42,0),(37,43,0),(38,44,0),(39,45,0),(40,46,0),(41,47,0),(42,48,0),(43,49,0),(44,50,0),(45,51,0),(46,52,0),(47,53,0),(48,49,0),(49,54,0),(50,50,0),(51,29,0),(52,51,0),(53,53,0),(54,52,0),(55,47,0),(56,54,0),(57,29,0),(58,55,0),(59,53,0),(60,47,0),(61,56,0),(62,55,0),(63,57,0),(64,56,0),(65,47,0),(66,54,0),(67,58,0),(68,59,0),(69,53,0),(70,60,0),(71,54,0),(72,61,0),(73,62,0),(74,63,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,2,0,0),(2,10,1,0),(3,11,1,0),(4,12,1,0),(5,13,1,0),(6,14,1,0),(7,15,1,0),(8,16,1,0),(9,17,0,0),(10,18,1,0),(11,19,0,0),(12,20,1,0),(13,21,1,0),(14,22,0,0),(15,23,1,0),(16,24,1,0),(17,25,1,0),(18,27,1,0),(19,28,0,0),(20,29,1,0),(21,31,1,0),(22,30,1,0),(23,32,1,0),(24,36,1,0),(25,37,1,0),(26,38,1,0),(27,39,1,0),(28,40,0,0),(29,41,1,0),(30,42,1,0),(31,43,1,0),(32,44,1,0),(33,45,1,0),(34,47,1,0),(35,49,1,0),(36,50,1,0),(37,52,1,0),(38,53,1,0),(39,54,1,0),(40,55,0,0),(41,57,1,0),(42,58,1,0),(43,60,0,0),(44,61,1,0),(45,62,1,0),(46,63,0,0),(47,65,1,0),(48,67,1,0),(49,69,0,0),(50,71,1,0),(51,67,1,0),(52,67,1,0),(53,73,1,0),(54,74,1,0),(55,67,1,0),(56,75,1,0),(57,76,1,0),(58,67,1,0),(59,75,1,0),(60,77,1,0),(61,78,0,0),(62,80,1,0),(63,79,1,0),(64,80,0,0),(65,82,1,0),(66,80,0,0),(67,83,0,0),(68,84,1,0),(69,80,1,0),(70,86,0,0),(71,80,1,0),(72,87,0,0),(73,88,1,0),(74,80,1,0),(75,80,1,0),(76,89,1,0),(77,90,1,0),(78,91,0,0),(79,89,1,0),(80,80,0,0),(81,93,1,0),(82,97,0,0),(83,96,1,0),(84,80,0,0),(85,98,1,0),(86,80,0,0),(87,98,1,0),(88,101,1,0),(89,103,1,0),(90,98,1,0),(91,105,1,0),(92,103,1,0),(93,98,1,0),(94,106,1,0),(95,98,1,0),(96,108,1,0),(97,109,0,0),(98,110,1,0),(99,112,1,0),(100,114,1,0),(101,115,1,0),(102,118,0,0),(103,117,1,0),(104,121,1,0),(105,122,0,0),(106,124,0,0),(107,125,0,0),(108,121,0,0),(109,121,1,0),(110,133,0,0),(111,121,0,0),(112,133,0,0),(113,137,1,0),(114,121,1,0),(115,133,0,0),(116,121,1,0),(117,142,0,0),(118,133,0,0),(119,143,1,0),(120,121,1,0),(121,147,1,0),(122,121,0,0),(123,149,1,0),(124,147,1,0),(125,150,0,0),(126,151,1,0),(127,121,0,0),(128,147,1,0),(129,153,1,0),(130,151,1,0),(131,152,1,0),(132,147,1,0),(133,152,1,0),(134,121,0,0),(135,154,0,0),(136,147,1,0),(137,152,1,0),(138,155,1,0),(139,152,1,0),(140,157,1,0),(141,152,1,0),(142,158,1,0),(143,160,1,0),(144,161,1,0),(145,152,1,0),(146,162,1,0),(147,163,1,0),(148,152,1,0),(149,164,1,0),(150,162,1,0),(151,165,0,0),(152,162,1,0),(153,152,1,0),(154,166,0,0),(155,162,1,0),(156,165,1,0),(157,162,1,0),(158,165,1,0),(159,162,1,0),(160,168,0,0),(161,162,1,0),(162,165,0,0),(163,162,1,0),(164,165,1,0),(165,165,0,0),(166,165,1,0),(167,165,0,0),(168,165,1,0),(169,165,0,0),(170,170,1,0),(171,171,1,0),(172,172,1,0),(173,173,1,0),(174,174,0,0),(175,175,1,0),(176,176,1,0),(177,177,1,0),(178,178,1,0),(179,179,1,0),(180,180,1,0),(181,181,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Providers`
--

LOCK TABLES `Providers` WRITE;
/*!40000 ALTER TABLE `Providers` DISABLE KEYS */;
INSERT INTO `Providers` VALUES (1,31,0,NULL,'com.android.launcher.permission.WRITE_SETTINGS'),(2,31,0,NULL,'com.android.launcher.permission.WRITE_SETTINGS');
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
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(2,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(3,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(4,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(5,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(6,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(7,'package','',NULL,NULL,NULL,NULL),(8,'package','',NULL,NULL,NULL,NULL),(9,'package','',NULL,NULL,NULL,NULL),(10,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(11,'package','',NULL,NULL,NULL,NULL),(12,'package','',NULL,NULL,NULL,NULL),(13,'package','',NULL,NULL,NULL,NULL),(14,'package','',NULL,NULL,NULL,NULL),(15,'package','',NULL,NULL,NULL,NULL),(16,'package','',NULL,NULL,NULL,NULL),(17,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(18,'package','',NULL,NULL,NULL,NULL),(19,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(20,'package','',NULL,NULL,NULL,NULL),(21,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(22,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(23,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(24,'package','',NULL,NULL,NULL,NULL),(25,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(26,'package','',NULL,NULL,NULL,NULL),(27,'package','',NULL,NULL,NULL,NULL),(28,'package','',NULL,NULL,NULL,NULL),(29,'package','',NULL,NULL,NULL,NULL),(30,'package','',NULL,NULL,NULL,NULL),(31,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(32,'package','',NULL,NULL,NULL,NULL),(33,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(34,'package','',NULL,NULL,NULL,NULL),(35,'package','',NULL,NULL,NULL,NULL),(36,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(37,'package','',NULL,NULL,NULL,NULL),(38,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(39,'package','',NULL,NULL,NULL,NULL),(40,'package','',NULL,NULL,NULL,NULL),(41,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(42,'package','',NULL,NULL,NULL,NULL),(43,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(44,'package','',NULL,NULL,NULL,NULL),(45,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(46,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(47,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(48,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(49,'package','',NULL,NULL,NULL,NULL),(50,'package','',NULL,NULL,NULL,NULL),(51,'tel','(.*)',NULL,NULL,NULL,NULL),(52,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(53,'package','',NULL,NULL,NULL,NULL),(54,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(55,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(56,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(57,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(58,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(59,'package','',NULL,NULL,NULL,NULL),(60,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=(.*)',NULL,NULL,NULL),(61,'package','',NULL,NULL,NULL,NULL),(62,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(63,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=NULL-CONSTANT',NULL,NULL,NULL),(64,'package','',NULL,NULL,NULL,NULL),(65,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(66,'package','',NULL,NULL,NULL,NULL),(67,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=false',NULL,NULL,NULL),(68,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(69,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(70,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(71,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(72,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=(.*)',NULL,NULL,NULL),(73,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=NULL-CONSTANT',NULL,NULL,NULL),(74,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(75,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=false',NULL,NULL,NULL),(76,'package','',NULL,NULL,NULL,NULL),(77,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(78,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(79,'package','',NULL,NULL,NULL,NULL),(80,'package','',NULL,NULL,NULL,NULL),(81,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(82,'package','',NULL,NULL,NULL,NULL),(83,'package','',NULL,NULL,NULL,NULL),(84,'package','',NULL,NULL,NULL,NULL),(85,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(86,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(87,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(88,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(89,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(90,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(91,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(92,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(93,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(94,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(95,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(96,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(97,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(98,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(99,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(100,'package','',NULL,NULL,NULL,NULL),(101,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(102,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(103,'package','',NULL,NULL,NULL,NULL),(104,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(105,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(106,'package','',NULL,NULL,NULL,NULL),(107,'tel','(.*)',NULL,NULL,NULL,NULL),(108,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(109,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(110,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(111,'package','',NULL,NULL,NULL,NULL),(112,'package','',NULL,NULL,NULL,NULL),(113,'package','',NULL,NULL,NULL,NULL),(114,'package','',NULL,NULL,NULL,NULL),(115,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(116,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(117,'package','',NULL,NULL,NULL,NULL),(118,'package','',NULL,NULL,NULL,NULL),(119,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(120,'package','',NULL,NULL,NULL,NULL),(121,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(122,'package','',NULL,NULL,NULL,NULL),(123,'package','',NULL,NULL,NULL,NULL),(124,'package','',NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,1,1),(2,3,2),(3,5,3),(4,6,4),(5,7,5),(6,9,6),(7,26,17),(8,35,21),(9,46,31),(10,51,33),(11,64,41),(12,66,43),(13,68,45),(14,70,46),(15,72,48),(16,81,54),(17,85,58),(18,92,62),(19,95,65),(20,99,67),(21,100,68),(22,99,69),(23,104,71),(24,107,75),(25,107,77),(26,111,78),(27,113,81),(28,119,85),(29,120,86),(30,123,87),(31,127,89),(32,128,90),(33,129,91),(34,130,92),(35,131,93),(36,132,94),(37,134,95),(38,135,96),(39,138,97),(40,139,98),(41,141,99),(42,144,101),(43,145,102),(44,146,104),(45,148,105),(46,156,109),(47,159,110),(48,167,115),(49,169,116);
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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,2,17),(13,2,16),(14,2,1),(15,2,5),(16,2,6),(17,2,7),(18,2,9),(19,2,10),(20,2,11),(21,2,12),(22,2,13),(23,2,14),(24,2,15),(25,3,1),(26,3,5),(27,3,6),(28,3,7),(29,3,9),(30,3,10),(31,3,11),(32,3,12),(33,3,13),(34,3,14),(35,3,15),(36,3,17),(37,3,16),(38,4,1),(39,4,2),(40,4,3),(41,4,4),(42,4,4),(43,4,5),(44,4,6),(45,4,6),(46,4,7),(47,4,8),(48,4,9),(49,4,10),(50,4,11),(51,4,12),(52,4,13),(53,4,15),(54,4,15),(55,4,19),(56,4,18),(57,4,18),(58,4,21),(59,4,20),(60,4,20),(61,5,1),(62,4,23),(63,4,22),(64,4,22),(65,5,5),(66,4,25),(67,4,24),(68,4,24),(69,5,6),(70,5,7),(71,5,9),(72,5,10),(73,5,11),(74,5,12),(75,5,13),(76,5,14),(77,5,15),(78,5,17),(79,5,16),(80,5,27),(81,5,26);
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
