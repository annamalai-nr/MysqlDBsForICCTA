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
) ENGINE=InnoDB AUTO_INCREMENT=2131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,106,19,2,NULL),(2,160,19,2,NULL),(3,56,1,2,NULL),(4,126,1,2,NULL),(5,131,1,2,NULL),(6,133,1,2,NULL),(7,137,1,2,NULL),(8,139,1,2,NULL),(9,141,1,2,NULL),(10,145,1,2,NULL),(11,148,1,2,NULL),(12,153,1,2,NULL),(13,146,1,2,NULL),(14,150,1,2,NULL),(15,152,1,2,NULL),(16,155,1,2,NULL),(17,157,1,2,NULL),(18,159,1,2,NULL),(19,161,1,2,NULL),(20,163,1,2,NULL),(21,56,4,2,NULL),(22,126,4,2,NULL),(23,131,4,2,NULL),(24,133,4,2,NULL),(25,137,4,2,NULL),(26,139,4,2,NULL),(27,141,4,2,NULL),(28,145,4,2,NULL),(29,148,4,2,NULL),(30,153,4,2,NULL),(31,146,4,2,NULL),(32,150,4,2,NULL),(33,152,4,2,NULL),(34,155,4,2,NULL),(35,157,4,2,NULL),(36,159,4,2,NULL),(37,161,4,2,NULL),(38,163,4,2,NULL),(39,56,34,2,NULL),(40,126,34,2,NULL),(41,131,34,2,NULL),(42,133,34,2,NULL),(43,137,34,2,NULL),(44,139,34,2,NULL),(45,141,34,2,NULL),(46,145,34,2,NULL),(47,148,34,2,NULL),(48,153,34,2,NULL),(49,146,34,2,NULL),(50,150,34,2,NULL),(51,152,34,2,NULL),(52,155,34,2,NULL),(53,157,34,2,NULL),(54,159,34,2,NULL),(55,161,34,2,NULL),(56,163,34,2,NULL),(57,56,35,2,NULL),(58,126,35,2,NULL),(59,131,35,2,NULL),(60,133,35,2,NULL),(61,137,35,2,NULL),(62,139,35,2,NULL),(63,141,35,2,NULL),(64,145,35,2,NULL),(65,148,35,2,NULL),(66,153,35,2,NULL),(67,146,35,2,NULL),(68,150,35,2,NULL),(69,152,35,2,NULL),(70,155,35,2,NULL),(71,157,35,2,NULL),(72,159,35,2,NULL),(73,161,35,2,NULL),(74,163,35,2,NULL),(75,56,5,2,NULL),(76,126,5,2,NULL),(77,131,5,2,NULL),(78,133,5,2,NULL),(79,137,5,2,NULL),(80,139,5,2,NULL),(81,141,5,2,NULL),(82,145,5,2,NULL),(83,148,5,2,NULL),(84,153,5,2,NULL),(85,146,5,2,NULL),(86,150,5,2,NULL),(87,152,5,2,NULL),(88,155,5,2,NULL),(89,157,5,2,NULL),(90,159,5,2,NULL),(91,161,5,2,NULL),(92,163,5,2,NULL),(93,20,17,2,NULL),(94,23,17,2,NULL),(95,48,17,2,NULL),(96,51,17,2,NULL),(97,52,17,2,NULL),(98,55,17,2,NULL),(99,58,17,2,NULL),(100,62,17,2,NULL),(101,69,17,2,NULL),(102,71,17,2,NULL),(103,74,17,2,NULL),(104,75,17,2,NULL),(105,22,17,2,NULL),(106,56,8,2,NULL),(107,126,8,2,NULL),(108,131,8,2,NULL),(109,133,8,2,NULL),(110,137,8,2,NULL),(111,139,8,2,NULL),(112,141,8,2,NULL),(113,145,8,2,NULL),(114,148,8,2,NULL),(115,153,8,2,NULL),(116,146,8,2,NULL),(117,150,8,2,NULL),(118,152,8,2,NULL),(119,155,8,2,NULL),(120,157,8,2,NULL),(121,159,8,2,NULL),(122,161,8,2,NULL),(123,163,8,2,NULL),(124,56,9,2,NULL),(125,126,9,2,NULL),(126,131,9,2,NULL),(127,133,9,2,NULL),(128,137,9,2,NULL),(129,139,9,2,NULL),(130,141,9,2,NULL),(131,145,9,2,NULL),(132,148,9,2,NULL),(133,153,9,2,NULL),(134,146,9,2,NULL),(135,150,9,2,NULL),(136,152,9,2,NULL),(137,155,9,2,NULL),(138,157,9,2,NULL),(139,159,9,2,NULL),(140,161,9,2,NULL),(141,163,9,2,NULL),(142,56,10,2,NULL),(143,126,10,2,NULL),(144,131,10,2,NULL),(145,133,10,2,NULL),(146,137,10,2,NULL),(147,139,10,2,NULL),(148,141,10,2,NULL),(149,145,10,2,NULL),(150,148,10,2,NULL),(151,153,10,2,NULL),(152,146,10,2,NULL),(153,150,10,2,NULL),(154,152,10,2,NULL),(155,155,10,2,NULL),(156,157,10,2,NULL),(157,159,10,2,NULL),(158,161,10,2,NULL),(159,163,10,2,NULL),(160,56,36,2,NULL),(161,126,36,2,NULL),(162,131,36,2,NULL),(163,133,36,2,NULL),(164,137,36,2,NULL),(165,139,36,2,NULL),(166,141,36,2,NULL),(167,145,36,2,NULL),(168,148,36,2,NULL),(169,153,36,2,NULL),(170,146,36,2,NULL),(171,150,36,2,NULL),(172,152,36,2,NULL),(173,155,36,2,NULL),(174,157,36,2,NULL),(175,159,36,2,NULL),(176,161,36,2,NULL),(177,163,36,2,NULL),(178,56,37,2,NULL),(179,126,37,2,NULL),(180,131,37,2,NULL),(181,133,37,2,NULL),(182,137,37,2,NULL),(183,139,37,2,NULL),(184,141,37,2,NULL),(185,145,37,2,NULL),(186,148,37,2,NULL),(187,9,7,2,NULL),(188,153,37,2,NULL),(189,9,13,2,NULL),(190,146,37,2,NULL),(191,9,27,2,NULL),(192,150,37,2,NULL),(193,43,7,2,NULL),(194,152,37,2,NULL),(195,43,13,2,NULL),(196,155,37,2,NULL),(197,43,27,2,NULL),(198,157,37,2,NULL),(199,64,8,2,NULL),(200,159,37,2,NULL),(201,64,14,2,NULL),(202,161,37,2,NULL),(203,64,30,2,NULL),(204,163,37,2,NULL),(205,66,8,2,NULL),(206,56,39,2,NULL),(207,66,14,2,NULL),(208,126,39,2,NULL),(209,66,30,2,NULL),(210,131,39,2,NULL),(211,80,8,2,NULL),(212,133,39,2,NULL),(213,80,14,2,NULL),(214,137,39,2,NULL),(215,80,30,2,NULL),(216,139,39,2,NULL),(217,84,8,2,NULL),(218,141,39,2,NULL),(219,84,14,2,NULL),(220,145,39,2,NULL),(221,84,30,2,NULL),(222,148,39,2,NULL),(223,86,8,2,NULL),(224,153,39,2,NULL),(225,86,14,2,NULL),(226,146,39,2,NULL),(227,86,30,2,NULL),(228,150,39,2,NULL),(229,20,1,2,NULL),(230,152,39,2,NULL),(231,23,1,2,NULL),(232,155,39,2,NULL),(233,48,1,2,NULL),(234,157,39,2,NULL),(235,51,1,2,NULL),(236,159,39,2,NULL),(237,52,1,2,NULL),(238,161,39,2,NULL),(239,55,1,2,NULL),(240,163,39,2,NULL),(241,58,1,2,NULL),(242,56,42,2,NULL),(243,62,1,2,NULL),(244,126,42,2,NULL),(245,69,1,2,NULL),(246,131,42,2,NULL),(247,71,1,2,NULL),(248,133,42,2,NULL),(249,74,1,2,NULL),(250,137,42,2,NULL),(251,75,1,2,NULL),(252,139,42,2,NULL),(253,20,4,2,NULL),(254,141,42,2,NULL),(255,23,4,2,NULL),(256,145,42,2,NULL),(257,48,4,2,NULL),(258,148,42,2,NULL),(259,51,4,2,NULL),(260,153,42,2,NULL),(261,52,4,2,NULL),(262,146,42,2,NULL),(263,55,4,2,NULL),(264,150,42,2,NULL),(265,58,4,2,NULL),(266,152,42,2,NULL),(267,62,4,2,NULL),(268,155,42,2,NULL),(269,69,4,2,NULL),(270,157,42,2,NULL),(271,71,4,2,NULL),(272,159,42,2,NULL),(273,74,4,2,NULL),(274,161,42,2,NULL),(275,75,4,2,NULL),(276,163,42,2,NULL),(277,20,34,2,NULL),(278,56,11,2,NULL),(279,23,34,2,NULL),(280,126,11,2,NULL),(281,48,34,2,NULL),(282,131,11,2,NULL),(283,51,34,2,NULL),(284,133,11,2,NULL),(285,52,34,2,NULL),(286,137,11,2,NULL),(287,55,34,2,NULL),(288,139,11,2,NULL),(289,58,34,2,NULL),(290,141,11,2,NULL),(291,62,34,2,NULL),(292,145,11,2,NULL),(293,69,34,2,NULL),(294,148,11,2,NULL),(295,71,34,2,NULL),(296,153,11,2,NULL),(297,74,34,2,NULL),(298,146,11,2,NULL),(299,75,34,2,NULL),(300,150,11,2,NULL),(301,20,35,2,NULL),(302,152,11,2,NULL),(303,23,35,2,NULL),(304,155,11,2,NULL),(305,48,35,2,NULL),(306,157,11,2,NULL),(307,51,35,2,NULL),(308,159,11,2,NULL),(309,52,35,2,NULL),(310,161,11,2,NULL),(311,55,35,2,NULL),(312,163,11,2,NULL),(313,58,35,2,NULL),(314,34,17,2,NULL),(315,62,35,2,NULL),(316,85,17,2,NULL),(317,69,35,2,NULL),(318,87,17,2,NULL),(319,71,35,2,NULL),(320,90,17,2,NULL),(321,74,35,2,NULL),(322,93,17,2,NULL),(323,75,35,2,NULL),(324,95,17,2,NULL),(325,22,5,2,NULL),(326,104,17,2,NULL),(327,20,8,2,NULL),(328,109,17,2,NULL),(329,23,8,2,NULL),(330,114,17,2,NULL),(331,48,8,2,NULL),(332,116,17,2,NULL),(333,51,8,2,NULL),(334,120,17,2,NULL),(335,52,8,2,NULL),(336,140,17,2,NULL),(337,55,8,2,NULL),(338,103,17,2,NULL),(339,58,8,2,NULL),(340,56,14,2,NULL),(341,62,8,2,NULL),(342,126,14,2,NULL),(343,69,8,2,NULL),(344,131,14,2,NULL),(345,71,8,2,NULL),(346,133,14,2,NULL),(347,74,8,2,NULL),(348,137,14,2,NULL),(349,75,8,2,NULL),(350,139,14,2,NULL),(351,20,9,2,NULL),(352,141,14,2,NULL),(353,23,9,2,NULL),(354,145,14,2,NULL),(355,48,9,2,NULL),(356,148,14,2,NULL),(357,51,9,2,NULL),(358,153,14,2,NULL),(359,52,9,2,NULL),(360,146,14,2,NULL),(361,55,9,2,NULL),(362,150,14,2,NULL),(363,58,9,2,NULL),(364,152,14,2,NULL),(365,62,9,2,NULL),(366,155,14,2,NULL),(367,69,9,2,NULL),(368,157,14,2,NULL),(369,71,9,2,NULL),(370,159,14,2,NULL),(371,74,9,2,NULL),(372,161,14,2,NULL),(373,75,9,2,NULL),(374,163,14,2,NULL),(375,20,10,2,NULL),(376,56,15,2,NULL),(377,23,10,2,NULL),(378,126,15,2,NULL),(379,48,10,2,NULL),(380,131,15,2,NULL),(381,51,10,2,NULL),(382,133,15,2,NULL),(383,52,10,2,NULL),(384,137,15,2,NULL),(385,55,10,2,NULL),(386,139,15,2,NULL),(387,58,10,2,NULL),(388,141,15,2,NULL),(389,62,10,2,NULL),(390,145,15,2,NULL),(391,69,10,2,NULL),(392,148,15,2,NULL),(393,71,10,2,NULL),(394,153,15,2,NULL),(395,74,10,2,NULL),(396,146,15,2,NULL),(397,75,10,2,NULL),(398,150,15,2,NULL),(399,20,36,2,NULL),(400,152,15,2,NULL),(401,23,36,2,NULL),(402,155,15,2,NULL),(403,48,36,2,NULL),(404,157,15,2,NULL),(405,51,36,2,NULL),(406,159,15,2,NULL),(407,52,36,2,NULL),(408,161,15,2,NULL),(409,55,36,2,NULL),(410,163,15,2,NULL),(411,58,36,2,NULL),(412,56,16,2,NULL),(413,62,36,2,NULL),(414,126,16,2,NULL),(415,69,36,2,NULL),(416,131,16,2,NULL),(417,71,36,2,NULL),(418,133,16,2,NULL),(419,74,36,2,NULL),(420,137,16,2,NULL),(421,75,36,2,NULL),(422,139,16,2,NULL),(423,20,37,2,NULL),(424,141,16,2,NULL),(425,23,37,2,NULL),(426,145,16,2,NULL),(427,48,37,2,NULL),(428,148,16,2,NULL),(429,51,37,2,NULL),(430,153,16,2,NULL),(431,22,1,2,NULL),(432,52,37,2,NULL),(433,146,16,2,NULL),(434,55,37,2,NULL),(435,34,1,2,NULL),(436,150,16,2,NULL),(437,58,37,2,NULL),(438,85,1,2,NULL),(439,152,16,2,NULL),(440,62,37,2,NULL),(441,155,16,2,NULL),(442,69,37,2,NULL),(443,87,1,2,NULL),(444,157,16,2,NULL),(445,71,37,2,NULL),(446,159,16,2,NULL),(447,90,1,2,NULL),(448,74,37,2,NULL),(449,161,16,2,NULL),(450,75,37,2,NULL),(451,93,1,2,NULL),(452,163,16,2,NULL),(453,20,39,2,NULL),(454,56,40,2,NULL),(455,95,1,2,NULL),(456,23,39,2,NULL),(457,126,40,2,NULL),(458,104,1,2,NULL),(459,48,39,2,NULL),(460,131,40,2,NULL),(461,51,39,2,NULL),(462,133,40,2,NULL),(463,109,1,2,NULL),(464,52,39,2,NULL),(465,137,40,2,NULL),(466,114,1,2,NULL),(467,55,39,2,NULL),(468,139,40,2,NULL),(469,116,1,2,NULL),(470,58,39,2,NULL),(471,141,40,2,NULL),(472,120,1,2,NULL),(473,62,39,2,NULL),(474,145,40,2,NULL),(475,140,1,2,NULL),(476,69,39,2,NULL),(477,148,40,2,NULL),(478,103,1,2,NULL),(479,71,39,2,NULL),(480,153,40,2,NULL),(481,53,1,2,NULL),(482,74,39,2,NULL),(483,146,40,2,NULL),(484,75,39,2,NULL),(485,121,1,2,NULL),(486,150,40,2,NULL),(487,20,42,2,NULL),(488,124,1,2,NULL),(489,152,40,2,NULL),(490,128,1,2,NULL),(491,23,42,2,NULL),(492,155,40,2,NULL),(493,132,1,2,NULL),(494,157,40,2,NULL),(495,48,42,2,NULL),(496,136,1,2,NULL),(497,159,40,2,NULL),(498,51,42,2,NULL),(499,156,1,2,NULL),(500,52,42,2,NULL),(501,161,40,2,NULL),(502,158,1,2,NULL),(503,55,42,2,NULL),(504,163,40,2,NULL),(505,164,1,2,NULL),(506,56,41,2,NULL),(507,58,42,2,NULL),(508,166,1,2,NULL),(509,62,42,2,NULL),(510,126,41,2,NULL),(511,168,1,2,NULL),(512,69,42,2,NULL),(513,131,41,2,NULL),(514,172,1,2,NULL),(515,133,41,2,NULL),(516,71,42,2,NULL),(517,173,1,2,NULL),(518,74,42,2,NULL),(519,137,41,2,NULL),(520,139,41,2,NULL),(521,75,42,2,NULL),(522,22,4,2,NULL),(523,141,41,2,NULL),(524,20,11,2,NULL),(525,34,4,2,NULL),(526,145,41,2,NULL),(527,85,4,2,NULL),(528,23,11,2,NULL),(529,148,41,2,NULL),(530,87,4,2,NULL),(531,48,11,2,NULL),(532,153,41,2,NULL),(533,51,11,2,NULL),(534,90,4,2,NULL),(535,146,41,2,NULL),(536,52,11,2,NULL),(537,93,4,2,NULL),(538,150,41,2,NULL),(539,55,11,2,NULL),(540,95,4,2,NULL),(541,152,41,2,NULL),(542,58,11,2,NULL),(543,104,4,2,NULL),(544,155,41,2,NULL),(545,109,4,2,NULL),(546,62,11,2,NULL),(547,157,41,2,NULL),(548,114,4,2,NULL),(549,69,11,2,NULL),(550,159,41,2,NULL),(551,71,11,2,NULL),(552,116,4,2,NULL),(553,161,41,2,NULL),(554,74,11,2,NULL),(555,120,4,2,NULL),(556,163,41,2,NULL),(557,140,4,2,NULL),(558,75,11,2,NULL),(559,56,43,2,NULL),(560,103,4,2,NULL),(561,34,5,2,NULL),(562,126,43,2,NULL),(563,85,5,2,NULL),(564,53,4,2,NULL),(565,131,43,2,NULL),(566,121,4,2,NULL),(567,87,5,2,NULL),(568,133,43,2,NULL),(569,124,4,2,NULL),(570,90,5,2,NULL),(571,137,43,2,NULL),(572,128,4,2,NULL),(573,93,5,2,NULL),(574,139,43,2,NULL),(575,132,4,2,NULL),(576,95,5,2,NULL),(577,141,43,2,NULL),(578,136,4,2,NULL),(579,104,5,2,NULL),(580,145,43,2,NULL),(581,109,5,2,NULL),(582,156,4,2,NULL),(583,148,43,2,NULL),(584,158,4,2,NULL),(585,114,5,2,NULL),(586,153,43,2,NULL),(587,164,4,2,NULL),(588,116,5,2,NULL),(589,146,43,2,NULL),(590,166,4,2,NULL),(591,120,5,2,NULL),(592,150,43,2,NULL),(593,168,4,2,NULL),(594,140,5,2,NULL),(595,152,43,2,NULL),(596,172,4,2,NULL),(597,103,5,2,NULL),(598,155,43,2,NULL),(599,173,4,2,NULL),(600,20,14,2,NULL),(601,157,43,2,NULL),(602,23,14,2,NULL),(603,22,34,2,NULL),(604,159,43,2,NULL),(605,34,34,2,NULL),(606,48,14,2,NULL),(607,161,43,2,NULL),(608,85,34,2,NULL),(609,51,14,2,NULL),(610,163,43,2,NULL),(611,87,34,2,NULL),(612,52,14,2,NULL),(613,56,48,2,NULL),(614,90,34,2,NULL),(615,55,14,2,NULL),(616,126,48,2,NULL),(617,93,34,2,NULL),(618,58,14,2,NULL),(619,131,48,2,NULL),(620,95,34,2,NULL),(621,62,14,2,NULL),(622,133,48,2,NULL),(623,104,34,2,NULL),(624,69,14,2,NULL),(625,137,48,2,NULL),(626,71,14,2,NULL),(627,109,34,2,NULL),(628,139,48,2,NULL),(629,114,34,2,NULL),(630,74,14,2,NULL),(631,141,48,2,NULL),(632,116,34,2,NULL),(633,75,14,2,NULL),(634,145,48,2,NULL),(635,120,34,2,NULL),(636,20,15,2,NULL),(637,148,48,2,NULL),(638,140,34,2,NULL),(639,23,15,2,NULL),(640,153,48,2,NULL),(641,103,34,2,NULL),(642,48,15,2,NULL),(643,146,48,2,NULL),(644,51,15,2,NULL),(645,53,34,2,NULL),(646,150,48,2,NULL),(647,121,34,2,NULL),(648,52,15,2,NULL),(649,152,48,2,NULL),(650,55,15,2,NULL),(651,124,34,2,NULL),(652,155,48,2,NULL),(653,58,15,2,NULL),(654,128,34,2,NULL),(655,157,48,2,NULL),(656,132,34,2,NULL),(657,62,15,2,NULL),(658,159,48,2,NULL),(659,136,34,2,NULL),(660,69,15,2,NULL),(661,161,48,2,NULL),(662,156,34,2,NULL),(663,71,15,2,NULL),(664,163,48,2,NULL),(665,74,15,2,NULL),(666,158,34,2,NULL),(667,56,18,2,NULL),(668,164,34,2,NULL),(669,75,15,2,NULL),(670,126,18,2,NULL),(671,166,34,2,NULL),(672,20,16,2,NULL),(673,131,18,2,NULL),(674,23,16,2,NULL),(675,168,34,2,NULL),(676,133,18,2,NULL),(677,48,16,2,NULL),(678,172,34,2,NULL),(679,137,18,2,NULL),(680,173,34,2,NULL),(681,51,16,2,NULL),(682,139,18,2,NULL),(683,52,16,2,NULL),(684,22,35,2,NULL),(685,141,18,2,NULL),(686,55,16,2,NULL),(687,34,35,2,NULL),(688,145,18,2,NULL),(689,85,35,2,NULL),(690,58,16,2,NULL),(691,148,18,2,NULL),(692,87,35,2,NULL),(693,62,16,2,NULL),(694,153,18,2,NULL),(695,69,16,2,NULL),(696,90,35,2,NULL),(697,146,18,2,NULL),(698,71,16,2,NULL),(699,93,35,2,NULL),(700,150,18,2,NULL),(701,74,16,2,NULL),(702,95,35,2,NULL),(703,152,18,2,NULL),(704,104,35,2,NULL),(705,75,16,2,NULL),(706,155,18,2,NULL),(707,20,40,2,NULL),(708,109,35,2,NULL),(709,157,18,2,NULL),(710,23,40,2,NULL),(711,114,35,2,NULL),(712,159,18,2,NULL),(713,48,40,2,NULL),(714,116,35,2,NULL),(715,161,18,2,NULL),(716,51,40,2,NULL),(717,120,35,2,NULL),(718,163,18,2,NULL),(719,52,40,2,NULL),(720,140,35,2,NULL),(721,56,24,2,NULL),(722,55,40,2,NULL),(723,103,35,2,NULL),(724,126,24,2,NULL),(725,58,40,2,NULL),(726,53,35,2,NULL),(727,131,24,2,NULL),(728,62,40,2,NULL),(729,121,35,2,NULL),(730,133,24,2,NULL),(731,69,40,2,NULL),(732,124,35,2,NULL),(733,137,24,2,NULL),(734,71,40,2,NULL),(735,128,35,2,NULL),(736,139,24,2,NULL),(737,74,40,2,NULL),(738,132,35,2,NULL),(739,141,24,2,NULL),(740,75,40,2,NULL),(741,136,35,2,NULL),(742,20,41,2,NULL),(743,156,35,2,NULL),(744,23,41,2,NULL),(745,145,24,2,NULL),(746,158,35,2,NULL),(747,48,41,2,NULL),(748,148,24,2,NULL),(749,164,35,2,NULL),(750,51,41,2,NULL),(751,166,35,2,NULL),(752,153,24,2,NULL),(753,52,41,2,NULL),(754,146,24,2,NULL),(755,168,35,2,NULL),(756,55,41,2,NULL),(757,172,35,2,NULL),(758,150,24,2,NULL),(759,58,41,2,NULL),(760,173,35,2,NULL),(761,152,24,2,NULL),(762,62,41,2,NULL),(763,155,24,2,NULL),(764,69,41,2,NULL),(765,157,24,2,NULL),(766,71,41,2,NULL),(767,159,24,2,NULL),(768,74,41,2,NULL),(769,161,24,2,NULL),(770,75,41,2,NULL),(771,163,24,2,NULL),(772,20,43,2,NULL),(773,56,26,2,NULL),(774,23,43,2,NULL),(775,126,26,2,NULL),(776,48,43,2,NULL),(777,131,26,2,NULL),(778,51,43,2,NULL),(779,133,26,2,NULL),(780,52,43,2,NULL),(781,137,26,2,NULL),(782,55,43,2,NULL),(783,139,26,2,NULL),(784,58,43,2,NULL),(785,141,26,2,NULL),(786,62,43,2,NULL),(787,145,26,2,NULL),(788,69,43,2,NULL),(789,148,26,2,NULL),(790,71,43,2,NULL),(791,153,26,2,NULL),(792,74,43,2,NULL),(793,146,26,2,NULL),(794,75,43,2,NULL),(795,150,26,2,NULL),(796,20,48,2,NULL),(797,152,26,2,NULL),(798,23,48,2,NULL),(799,155,26,2,NULL),(800,48,48,2,NULL),(801,157,26,2,NULL),(802,51,48,2,NULL),(803,159,26,2,NULL),(804,52,48,2,NULL),(805,161,26,2,NULL),(806,55,48,2,NULL),(807,163,26,2,NULL),(808,58,48,2,NULL),(809,56,29,2,NULL),(810,62,48,2,NULL),(811,126,29,2,NULL),(812,69,48,2,NULL),(813,131,29,2,NULL),(814,71,48,2,NULL),(815,133,29,2,NULL),(816,74,48,2,NULL),(817,28,7,2,NULL),(818,137,29,2,NULL),(819,75,48,2,NULL),(820,28,13,2,NULL),(821,139,29,2,NULL),(822,28,27,2,NULL),(823,20,18,2,NULL),(824,141,29,2,NULL),(825,72,7,2,NULL),(826,145,29,2,NULL),(827,23,18,2,NULL),(828,148,29,2,NULL),(829,48,18,2,NULL),(830,72,13,2,NULL),(831,153,29,2,NULL),(832,51,18,2,NULL),(833,72,27,2,NULL),(834,146,29,2,NULL),(835,52,18,2,NULL),(836,151,8,2,NULL),(837,150,29,2,NULL),(838,55,18,2,NULL),(839,152,29,2,NULL),(840,151,14,2,NULL),(841,58,18,2,NULL),(842,155,29,2,NULL),(843,62,18,2,NULL),(844,151,30,2,NULL),(845,157,29,2,NULL),(846,69,18,2,NULL),(847,159,29,2,NULL),(848,162,8,2,NULL),(849,71,18,2,NULL),(850,161,29,2,NULL),(851,74,18,2,NULL),(852,162,14,2,NULL),(853,163,29,2,NULL),(854,75,18,2,NULL),(855,162,30,2,NULL),(856,20,24,2,NULL),(857,56,47,2,NULL),(858,23,24,2,NULL),(859,165,8,2,NULL),(860,126,47,2,NULL),(861,48,24,2,NULL),(862,165,14,2,NULL),(863,131,47,2,NULL),(864,51,24,2,NULL),(865,165,30,2,NULL),(866,133,47,2,NULL),(867,52,24,2,NULL),(868,167,8,2,NULL),(869,137,47,2,NULL),(870,55,24,2,NULL),(871,167,14,2,NULL),(872,139,47,2,NULL),(873,58,24,2,NULL),(874,167,30,2,NULL),(875,141,47,2,NULL),(876,62,24,2,NULL),(877,169,8,2,NULL),(878,145,47,2,NULL),(879,169,14,2,NULL),(880,69,24,2,NULL),(881,148,47,2,NULL),(882,71,24,2,NULL),(883,169,30,2,NULL),(884,153,47,2,NULL),(885,74,24,2,NULL),(886,146,47,2,NULL),(887,53,5,2,NULL),(888,75,24,2,NULL),(889,150,47,2,NULL),(890,121,5,2,NULL),(891,20,26,2,NULL),(892,152,47,2,NULL),(893,124,5,2,NULL),(894,23,26,2,NULL),(895,155,47,2,NULL),(896,128,5,2,NULL),(897,48,26,2,NULL),(898,157,47,2,NULL),(899,132,5,2,NULL),(900,51,26,2,NULL),(901,159,47,2,NULL),(902,136,5,2,NULL),(903,52,26,2,NULL),(904,161,47,2,NULL),(905,156,5,2,NULL),(906,55,26,2,NULL),(907,163,47,2,NULL),(908,158,5,2,NULL),(909,58,26,2,NULL),(910,56,53,2,NULL),(911,164,5,2,NULL),(912,62,26,2,NULL),(913,126,53,2,NULL),(914,166,5,2,NULL),(915,69,26,2,NULL),(916,131,53,2,NULL),(917,168,5,2,NULL),(918,71,26,2,NULL),(919,133,53,2,NULL),(920,172,5,2,NULL),(921,74,26,2,NULL),(922,20,21,2,NULL),(923,137,53,2,NULL),(924,75,26,2,NULL),(925,139,53,2,NULL),(926,23,21,2,NULL),(927,20,29,2,NULL),(928,141,53,2,NULL),(929,48,21,2,NULL),(930,23,29,2,NULL),(931,51,21,2,NULL),(932,145,53,2,NULL),(933,48,29,2,NULL),(934,52,21,2,NULL),(935,148,53,2,NULL),(936,51,29,2,NULL),(937,153,53,2,NULL),(938,55,21,2,NULL),(939,52,29,2,NULL),(940,58,21,2,NULL),(941,146,53,2,NULL),(942,55,29,2,NULL),(943,62,21,2,NULL),(944,150,53,2,NULL),(945,58,29,2,NULL),(946,152,53,2,NULL),(947,69,21,2,NULL),(948,62,29,2,NULL),(949,155,53,2,NULL),(950,71,21,2,NULL),(951,69,29,2,NULL),(952,74,21,2,NULL),(953,157,53,2,NULL),(954,71,29,2,NULL),(955,159,53,2,NULL),(956,75,21,2,NULL),(957,74,29,2,NULL),(958,161,53,2,NULL),(959,22,21,2,NULL),(960,75,29,2,NULL),(961,163,53,2,NULL),(962,53,8,2,NULL),(963,20,47,2,NULL),(964,121,8,2,NULL),(965,56,54,2,NULL),(966,23,47,2,NULL),(967,126,54,2,NULL),(968,124,8,2,NULL),(969,48,47,2,NULL),(970,131,54,2,NULL),(971,51,47,2,NULL),(972,128,8,2,NULL),(973,133,54,2,NULL),(974,52,47,2,NULL),(975,132,8,2,NULL),(976,137,54,2,NULL),(977,136,8,2,NULL),(978,55,47,2,NULL),(979,139,54,2,NULL),(980,156,8,2,NULL),(981,58,47,2,NULL),(982,141,54,2,NULL),(983,158,8,2,NULL),(984,62,47,2,NULL),(985,145,54,2,NULL),(986,164,8,2,NULL),(987,69,47,2,NULL),(988,148,54,2,NULL),(989,71,47,2,NULL),(990,166,8,2,NULL),(991,153,54,2,NULL),(992,74,47,2,NULL),(993,168,8,2,NULL),(994,146,54,2,NULL),(995,172,8,2,NULL),(996,75,47,2,NULL),(997,150,54,2,NULL),(998,20,53,2,NULL),(999,53,9,2,NULL),(1000,152,54,2,NULL),(1001,121,9,2,NULL),(1002,23,53,2,NULL),(1003,155,54,2,NULL),(1004,48,53,2,NULL),(1005,124,9,2,NULL),(1006,157,54,2,NULL),(1007,51,53,2,NULL),(1008,128,9,2,NULL),(1009,159,54,2,NULL),(1010,52,53,2,NULL),(1011,132,9,2,NULL),(1012,161,54,2,NULL),(1013,55,53,2,NULL),(1014,136,9,2,NULL),(1015,163,54,2,NULL),(1016,58,53,2,NULL),(1017,156,9,2,NULL),(1018,56,21,2,NULL),(1019,158,9,2,NULL),(1020,62,53,2,NULL),(1021,126,21,2,NULL),(1022,164,9,2,NULL),(1023,69,53,2,NULL),(1024,131,21,2,NULL),(1025,71,53,2,NULL),(1026,166,9,2,NULL),(1027,133,21,2,NULL),(1028,74,53,2,NULL),(1029,168,9,2,NULL),(1030,137,21,2,NULL),(1031,172,9,2,NULL),(1032,75,53,2,NULL),(1033,139,21,2,NULL),(1034,53,10,2,NULL),(1035,20,54,2,NULL),(1036,141,21,2,NULL),(1037,121,10,2,NULL),(1038,23,54,2,NULL),(1039,145,21,2,NULL),(1040,48,54,2,NULL),(1041,124,10,2,NULL),(1042,148,21,2,NULL),(1043,51,54,2,NULL),(1044,128,10,2,NULL),(1045,153,21,2,NULL),(1046,52,54,2,NULL),(1047,132,10,2,NULL),(1048,146,21,2,NULL),(1049,136,10,2,NULL),(1050,55,54,2,NULL),(1051,150,21,2,NULL),(1052,156,10,2,NULL),(1053,58,54,2,NULL),(1054,152,21,2,NULL),(1055,158,10,2,NULL),(1056,62,54,2,NULL),(1057,155,21,2,NULL),(1058,69,54,2,NULL),(1059,164,10,2,NULL),(1060,157,21,2,NULL),(1061,71,54,2,NULL),(1062,166,10,2,NULL),(1063,159,21,2,NULL),(1064,168,10,2,NULL),(1065,74,54,2,NULL),(1066,161,21,2,NULL),(1067,75,54,2,NULL),(1068,172,10,2,NULL),(1069,163,21,2,NULL),(1070,53,36,2,NULL),(1071,173,5,2,NULL),(1072,53,17,2,NULL),(1073,121,36,2,NULL),(1074,20,30,2,NULL),(1075,121,17,2,NULL),(1076,124,36,2,NULL),(1077,23,30,2,NULL),(1078,124,17,2,NULL),(1079,128,36,2,NULL),(1080,48,30,2,NULL),(1081,128,17,2,NULL),(1082,132,36,2,NULL),(1083,51,30,2,NULL),(1084,132,17,2,NULL),(1085,136,36,2,NULL),(1086,52,30,2,NULL),(1087,136,17,2,NULL),(1088,156,36,2,NULL),(1089,55,30,2,NULL),(1090,156,17,2,NULL),(1091,58,30,2,NULL),(1092,158,36,2,NULL),(1093,158,17,2,NULL),(1094,164,36,2,NULL),(1095,62,30,2,NULL),(1096,164,17,2,NULL),(1097,166,36,2,NULL),(1098,69,30,2,NULL),(1099,166,17,2,NULL),(1100,168,36,2,NULL),(1101,71,30,2,NULL),(1102,168,17,2,NULL),(1103,172,36,2,NULL),(1104,74,30,2,NULL),(1105,172,17,2,NULL),(1106,75,30,2,NULL),(1107,53,37,2,NULL),(1108,173,17,2,NULL),(1109,20,32,2,NULL),(1110,121,37,2,NULL),(1111,56,30,2,NULL),(1112,124,37,2,NULL),(1113,23,32,2,NULL),(1114,126,30,2,NULL),(1115,128,37,2,NULL),(1116,48,32,2,NULL),(1117,131,30,2,NULL),(1118,51,32,2,NULL),(1119,132,37,2,NULL),(1120,133,30,2,NULL),(1121,52,32,2,NULL),(1122,136,37,2,NULL),(1123,137,30,2,NULL),(1124,156,37,2,NULL),(1125,55,32,2,NULL),(1126,139,30,2,NULL),(1127,158,37,2,NULL),(1128,58,32,2,NULL),(1129,141,30,2,NULL),(1130,62,32,2,NULL),(1131,164,37,2,NULL),(1132,145,30,2,NULL),(1133,69,32,2,NULL),(1134,166,37,2,NULL),(1135,148,30,2,NULL),(1136,71,32,2,NULL),(1137,168,37,2,NULL),(1138,153,30,2,NULL),(1139,74,32,2,NULL),(1140,172,37,2,NULL),(1141,146,30,2,NULL),(1142,53,39,2,NULL),(1143,75,32,2,NULL),(1144,150,30,2,NULL),(1145,20,33,2,NULL),(1146,121,39,2,NULL),(1147,152,30,2,NULL),(1148,23,33,2,NULL),(1149,124,39,2,NULL),(1150,155,30,2,NULL),(1151,48,33,2,NULL),(1152,128,39,2,NULL),(1153,157,30,2,NULL),(1154,51,33,2,NULL),(1155,132,39,2,NULL),(1156,159,30,2,NULL),(1157,52,33,2,NULL),(1158,136,39,2,NULL),(1159,161,30,2,NULL),(1160,156,39,2,NULL),(1161,55,33,2,NULL),(1162,163,30,2,NULL),(1163,58,33,2,NULL),(1164,158,39,2,NULL),(1165,56,32,2,NULL),(1166,62,33,2,NULL),(1167,164,39,2,NULL),(1168,126,32,2,NULL),(1169,69,33,2,NULL),(1170,166,39,2,NULL),(1171,131,32,2,NULL),(1172,71,33,2,NULL),(1173,168,39,2,NULL),(1174,133,32,2,NULL),(1175,74,33,2,NULL),(1176,172,39,2,NULL),(1177,137,32,2,NULL),(1178,75,33,2,NULL),(1179,53,42,2,NULL),(1180,139,32,2,NULL),(1181,20,44,2,NULL),(1182,121,42,2,NULL),(1183,141,32,2,NULL),(1184,23,44,2,NULL),(1185,124,42,2,NULL),(1186,145,32,2,NULL),(1187,48,44,2,NULL),(1188,128,42,2,NULL),(1189,148,32,2,NULL),(1190,51,44,2,NULL),(1191,132,42,2,NULL),(1192,153,32,2,NULL),(1193,52,44,2,NULL),(1194,136,42,2,NULL),(1195,146,32,2,NULL),(1196,55,44,2,NULL),(1197,156,42,2,NULL),(1198,150,32,2,NULL),(1199,58,44,2,NULL),(1200,158,42,2,NULL),(1201,152,32,2,NULL),(1202,62,44,2,NULL),(1203,164,42,2,NULL),(1204,155,32,2,NULL),(1205,69,44,2,NULL),(1206,166,42,2,NULL),(1207,157,32,2,NULL),(1208,71,44,2,NULL),(1209,168,42,2,NULL),(1210,159,32,2,NULL),(1211,74,44,2,NULL),(1212,172,42,2,NULL),(1213,161,32,2,NULL),(1214,75,44,2,NULL),(1215,53,11,2,NULL),(1216,163,32,2,NULL),(1217,20,57,2,NULL),(1218,121,11,2,NULL),(1219,56,33,2,NULL),(1220,23,57,2,NULL),(1221,124,11,2,NULL),(1222,126,33,2,NULL),(1223,48,57,2,NULL),(1224,128,11,2,NULL),(1225,131,33,2,NULL),(1226,51,57,2,NULL),(1227,132,11,2,NULL),(1228,133,33,2,NULL),(1229,52,57,2,NULL),(1230,136,11,2,NULL),(1231,137,33,2,NULL),(1232,55,57,2,NULL),(1233,156,11,2,NULL),(1234,139,33,2,NULL),(1235,58,57,2,NULL),(1236,158,11,2,NULL),(1237,141,33,2,NULL),(1238,62,57,2,NULL),(1239,164,11,2,NULL),(1240,145,33,2,NULL),(1241,69,57,2,NULL),(1242,166,11,2,NULL),(1243,148,33,2,NULL),(1244,71,57,2,NULL),(1245,168,11,2,NULL),(1246,153,33,2,NULL),(1247,74,57,2,NULL),(1248,172,11,2,NULL),(1249,146,33,2,NULL),(1250,75,57,2,NULL),(1251,34,21,2,NULL),(1252,150,33,2,NULL),(1253,20,59,2,NULL),(1254,85,21,2,NULL),(1255,152,33,2,NULL),(1256,23,59,2,NULL),(1257,87,21,2,NULL),(1258,155,33,2,NULL),(1259,48,59,2,NULL),(1260,90,21,2,NULL),(1261,157,33,2,NULL),(1262,51,59,2,NULL),(1263,93,21,2,NULL),(1264,159,33,2,NULL),(1265,52,59,2,NULL),(1266,95,21,2,NULL),(1267,161,33,2,NULL),(1268,104,21,2,NULL),(1269,163,33,2,NULL),(1270,109,21,2,NULL),(1271,56,44,2,NULL),(1272,55,59,2,NULL),(1273,114,21,2,NULL),(1274,126,44,2,NULL),(1275,58,59,2,NULL),(1276,116,21,2,NULL),(1277,131,44,2,NULL),(1278,62,59,2,NULL),(1279,120,21,2,NULL),(1280,133,44,2,NULL),(1281,69,59,2,NULL),(1282,140,21,2,NULL),(1283,137,44,2,NULL),(1284,71,59,2,NULL),(1285,103,21,2,NULL),(1286,139,44,2,NULL),(1287,74,59,2,NULL),(1288,53,14,2,NULL),(1289,141,44,2,NULL),(1290,75,59,2,NULL),(1291,121,14,2,NULL),(1292,145,44,2,NULL),(1293,20,60,2,NULL),(1294,124,14,2,NULL),(1295,148,44,2,NULL),(1296,23,60,2,NULL),(1297,128,14,2,NULL),(1298,153,44,2,NULL),(1299,48,60,2,NULL),(1300,132,14,2,NULL),(1301,146,44,2,NULL),(1302,51,60,2,NULL),(1303,136,14,2,NULL),(1304,150,44,2,NULL),(1305,52,60,2,NULL),(1306,156,14,2,NULL),(1307,152,44,2,NULL),(1308,55,60,2,NULL),(1309,158,14,2,NULL),(1310,155,44,2,NULL),(1311,58,60,2,NULL),(1312,164,14,2,NULL),(1313,157,44,2,NULL),(1314,62,60,2,NULL),(1315,166,14,2,NULL),(1316,159,44,2,NULL),(1317,69,60,2,NULL),(1318,168,14,2,NULL),(1319,161,44,2,NULL),(1320,71,60,2,NULL),(1321,172,14,2,NULL),(1322,163,44,2,NULL),(1323,74,60,2,NULL),(1324,53,15,2,NULL),(1325,56,57,2,NULL),(1326,75,60,2,NULL),(1327,121,15,2,NULL),(1328,126,57,2,NULL),(1329,20,63,2,NULL),(1330,124,15,2,NULL),(1331,131,57,2,NULL),(1332,23,63,2,NULL),(1333,128,15,2,NULL),(1334,133,57,2,NULL),(1335,48,63,2,NULL),(1336,132,15,2,NULL),(1337,137,57,2,NULL),(1338,136,15,2,NULL),(1339,51,63,2,NULL),(1340,139,57,2,NULL),(1341,156,15,2,NULL),(1342,52,63,2,NULL),(1343,141,57,2,NULL),(1344,55,63,2,NULL),(1345,158,15,2,NULL),(1346,145,57,2,NULL),(1347,58,63,2,NULL),(1348,164,15,2,NULL),(1349,148,57,2,NULL),(1350,62,63,2,NULL),(1351,166,15,2,NULL),(1352,153,57,2,NULL),(1353,69,63,2,NULL),(1354,168,15,2,NULL),(1355,146,57,2,NULL),(1356,71,63,2,NULL),(1357,172,15,2,NULL),(1358,150,57,2,NULL),(1359,74,63,2,NULL),(1360,53,16,2,NULL),(1361,152,57,2,NULL),(1362,75,63,2,NULL),(1363,121,16,2,NULL),(1364,155,57,2,NULL),(1365,124,16,2,NULL),(1366,22,8,2,NULL),(1367,157,57,2,NULL),(1368,22,9,2,NULL),(1369,128,16,2,NULL),(1370,159,57,2,NULL),(1371,22,10,2,NULL),(1372,132,16,2,NULL),(1373,161,57,2,NULL),(1374,22,36,2,NULL),(1375,136,16,2,NULL),(1376,163,57,2,NULL),(1377,156,16,2,NULL),(1378,22,37,2,NULL),(1379,56,59,2,NULL),(1380,22,39,2,NULL),(1381,126,59,2,NULL),(1382,158,16,2,NULL),(1383,22,42,2,NULL),(1384,11,7,2,NULL),(1385,131,59,2,NULL),(1386,164,16,2,NULL),(1387,22,11,2,NULL),(1388,11,13,2,NULL),(1389,133,59,2,NULL),(1390,22,14,2,NULL),(1391,166,16,2,NULL),(1392,11,27,2,NULL),(1393,137,59,2,NULL),(1394,168,16,2,NULL),(1395,22,15,2,NULL),(1396,70,7,2,NULL),(1397,139,59,2,NULL),(1398,22,16,2,NULL),(1399,172,16,2,NULL),(1400,141,59,2,NULL),(1401,22,40,2,NULL),(1402,70,13,2,NULL),(1403,53,40,2,NULL),(1404,145,59,2,NULL),(1405,22,41,2,NULL),(1406,121,40,2,NULL),(1407,148,59,2,NULL),(1408,70,27,2,NULL),(1409,22,43,2,NULL),(1410,124,40,2,NULL),(1411,153,59,2,NULL),(1412,108,8,2,NULL),(1413,128,40,2,NULL),(1414,22,48,2,NULL),(1415,146,59,2,NULL),(1416,108,14,2,NULL),(1417,132,40,2,NULL),(1418,22,18,2,NULL),(1419,150,59,2,NULL),(1420,108,30,2,NULL),(1421,136,40,2,NULL),(1422,22,24,2,NULL),(1423,152,59,2,NULL),(1424,111,8,2,NULL),(1425,22,26,2,NULL),(1426,156,40,2,NULL),(1427,155,59,2,NULL),(1428,111,14,2,NULL),(1429,158,40,2,NULL),(1430,22,29,2,NULL),(1431,157,59,2,NULL),(1432,164,40,2,NULL),(1433,22,47,2,NULL),(1434,111,30,2,NULL),(1435,159,59,2,NULL),(1436,166,40,2,NULL),(1437,22,53,2,NULL),(1438,161,59,2,NULL),(1439,122,8,2,NULL),(1440,168,40,2,NULL),(1441,22,54,2,NULL),(1442,163,59,2,NULL),(1443,172,40,2,NULL),(1444,22,30,2,NULL),(1445,122,14,2,NULL),(1446,56,60,2,NULL),(1447,22,32,2,NULL),(1448,53,41,2,NULL),(1449,126,60,2,NULL),(1450,122,30,2,NULL),(1451,22,33,2,NULL),(1452,121,41,2,NULL),(1453,131,60,2,NULL),(1454,22,44,2,NULL),(1455,124,41,2,NULL),(1456,127,8,2,NULL),(1457,133,60,2,NULL),(1458,22,57,2,NULL),(1459,128,41,2,NULL),(1460,137,60,2,NULL),(1461,127,14,2,NULL),(1462,22,59,2,NULL),(1463,132,41,2,NULL),(1464,139,60,2,NULL),(1465,127,30,2,NULL),(1466,22,60,2,NULL),(1467,136,41,2,NULL),(1468,141,60,2,NULL),(1469,22,63,2,NULL),(1470,156,41,2,NULL),(1471,134,8,2,NULL),(1472,145,60,2,NULL),(1473,158,41,2,NULL),(1474,34,8,2,NULL),(1475,148,60,2,NULL),(1476,134,14,2,NULL),(1477,164,41,2,NULL),(1478,153,60,2,NULL),(1479,85,8,2,NULL),(1480,166,41,2,NULL),(1481,134,30,2,NULL),(1482,146,60,2,NULL),(1483,87,8,2,NULL),(1484,168,41,2,NULL),(1485,150,60,2,NULL),(1486,90,8,2,NULL),(1487,172,41,2,NULL),(1488,152,60,2,NULL),(1489,93,8,2,NULL),(1490,53,43,2,NULL),(1491,155,60,2,NULL),(1492,95,8,2,NULL),(1493,104,8,2,NULL),(1494,121,43,2,NULL),(1495,157,60,2,NULL),(1496,109,8,2,NULL),(1497,124,43,2,NULL),(1498,114,8,2,NULL),(1499,159,60,2,NULL),(1500,116,8,2,NULL),(1501,128,43,2,NULL),(1502,161,60,2,NULL),(1503,120,8,2,NULL),(1504,140,8,2,NULL),(1505,132,43,2,NULL),(1506,163,60,2,NULL),(1507,103,8,2,NULL),(1508,136,43,2,NULL),(1509,34,9,2,NULL),(1510,56,63,2,NULL),(1511,156,43,2,NULL),(1512,126,63,2,NULL),(1513,173,8,2,NULL),(1514,85,9,2,NULL),(1515,158,43,2,NULL),(1516,131,63,2,NULL),(1517,87,9,2,NULL),(1518,164,43,2,NULL),(1519,90,9,2,NULL),(1520,133,63,2,NULL),(1521,93,9,2,NULL),(1522,166,43,2,NULL),(1523,95,9,2,NULL),(1524,137,63,2,NULL),(1525,104,9,2,NULL),(1526,168,43,2,NULL),(1527,139,63,2,NULL),(1528,109,9,2,NULL),(1529,114,9,2,NULL),(1530,172,43,2,NULL),(1531,141,63,2,NULL),(1532,116,9,2,NULL),(1533,120,9,2,NULL),(1534,53,48,2,NULL),(1535,145,63,2,NULL),(1536,140,9,2,NULL),(1537,103,9,2,NULL),(1538,121,48,2,NULL),(1539,148,63,2,NULL),(1540,34,10,2,NULL),(1541,124,48,2,NULL),(1542,153,63,2,NULL),(1543,85,10,2,NULL),(1544,173,9,2,NULL),(1545,128,48,2,NULL),(1546,146,63,2,NULL),(1547,87,10,2,NULL),(1548,14,9,2,NULL),(1549,132,48,2,NULL),(1550,150,63,2,NULL),(1551,90,10,2,NULL),(1552,14,15,2,NULL),(1553,136,48,2,NULL),(1554,152,63,2,NULL),(1555,93,10,2,NULL),(1556,14,32,2,NULL),(1557,156,48,2,NULL),(1558,155,63,2,NULL),(1559,95,10,2,NULL),(1560,158,48,2,NULL),(1561,104,10,2,NULL),(1562,157,63,2,NULL),(1563,109,10,2,NULL),(1564,164,48,2,NULL),(1565,159,63,2,NULL),(1566,114,10,2,NULL),(1567,116,10,2,NULL),(1568,166,48,2,NULL),(1569,161,63,2,NULL),(1570,120,10,2,NULL),(1571,140,10,2,NULL),(1572,168,48,2,NULL),(1573,163,63,2,NULL),(1574,103,10,2,NULL),(1575,34,36,2,NULL),(1576,172,48,2,NULL),(1577,85,36,2,NULL),(1578,34,18,2,NULL),(1579,173,10,2,NULL),(1580,87,36,2,NULL),(1581,85,18,2,NULL),(1582,53,18,2,NULL),(1583,90,36,2,NULL),(1584,93,36,2,NULL),(1585,87,18,2,NULL),(1586,121,18,2,NULL),(1587,95,36,2,NULL),(1588,90,18,2,NULL),(1589,104,36,2,NULL),(1590,124,18,2,NULL),(1591,109,36,2,NULL),(1592,93,18,2,NULL),(1593,114,36,2,NULL),(1594,128,18,2,NULL),(1595,116,36,2,NULL),(1596,95,18,2,NULL),(1597,132,18,2,NULL),(1598,120,36,2,NULL),(1599,140,36,2,NULL),(1600,104,18,2,NULL),(1601,103,36,2,NULL),(1602,136,18,2,NULL),(1603,34,37,2,NULL),(1604,109,18,2,NULL),(1605,156,18,2,NULL),(1606,85,37,2,NULL),(1607,173,36,2,NULL),(1608,114,18,2,NULL),(1609,158,18,2,NULL),(1610,87,37,2,NULL),(1611,116,18,2,NULL),(1612,164,18,2,NULL),(1613,90,37,2,NULL),(1614,93,37,2,NULL),(1615,95,37,2,NULL),(1616,120,18,2,NULL),(1617,166,18,2,NULL),(1618,104,37,2,NULL),(1619,109,37,2,NULL),(1620,140,18,2,NULL),(1621,168,18,2,NULL),(1622,114,37,2,NULL),(1623,116,37,2,NULL),(1624,103,18,2,NULL),(1625,172,18,2,NULL),(1626,120,37,2,NULL),(1627,140,37,2,NULL),(1628,53,24,2,NULL),(1629,173,18,2,NULL),(1630,34,39,2,NULL),(1631,103,37,2,NULL),(1632,121,24,2,NULL),(1633,85,39,2,NULL),(1634,34,24,2,NULL),(1635,124,24,2,NULL),(1636,85,24,2,NULL),(1637,87,39,2,NULL),(1638,173,37,2,NULL),(1639,128,24,2,NULL),(1640,87,24,2,NULL),(1641,90,39,2,NULL),(1642,93,39,2,NULL),(1643,132,24,2,NULL),(1644,90,24,2,NULL),(1645,95,39,2,NULL),(1646,104,39,2,NULL),(1647,136,24,2,NULL),(1648,93,24,2,NULL),(1649,109,39,2,NULL),(1650,114,39,2,NULL),(1651,156,24,2,NULL),(1652,95,24,2,NULL),(1653,116,39,2,NULL),(1654,158,24,2,NULL),(1655,120,39,2,NULL),(1656,104,24,2,NULL),(1657,140,39,2,NULL),(1658,164,24,2,NULL),(1659,34,42,2,NULL),(1660,109,24,2,NULL),(1661,103,39,2,NULL),(1662,85,42,2,NULL),(1663,166,24,2,NULL),(1664,114,24,2,NULL),(1665,168,24,2,NULL),(1666,87,42,2,NULL),(1667,116,24,2,NULL),(1668,173,39,2,NULL),(1669,172,24,2,NULL),(1670,90,42,2,NULL),(1671,120,24,2,NULL),(1672,53,26,2,NULL),(1673,93,42,2,NULL),(1674,140,24,2,NULL),(1675,95,42,2,NULL),(1676,121,26,2,NULL),(1677,104,42,2,NULL),(1678,103,24,2,NULL),(1679,109,42,2,NULL),(1680,124,26,2,NULL),(1681,114,42,2,NULL),(1682,116,42,2,NULL),(1683,128,26,2,NULL),(1684,120,42,2,NULL),(1685,140,42,2,NULL),(1686,132,26,2,NULL),(1687,103,11,2,NULL),(1688,103,42,2,NULL),(1689,173,24,2,NULL),(1690,136,26,2,NULL),(1691,34,14,2,NULL),(1692,156,26,2,NULL),(1693,85,14,2,NULL),(1694,173,42,2,NULL),(1695,34,26,2,NULL),(1696,158,26,2,NULL),(1697,87,14,2,NULL),(1698,85,26,2,NULL),(1699,164,26,2,NULL),(1700,90,14,2,NULL),(1701,87,26,2,NULL),(1702,166,26,2,NULL),(1703,93,14,2,NULL),(1704,90,26,2,NULL),(1705,168,26,2,NULL),(1706,95,14,2,NULL),(1707,93,26,2,NULL),(1708,172,26,2,NULL),(1709,104,14,2,NULL),(1710,95,26,2,NULL),(1711,53,29,2,NULL),(1712,109,14,2,NULL),(1713,104,26,2,NULL),(1714,121,29,2,NULL),(1715,114,14,2,NULL),(1716,109,26,2,NULL),(1717,124,29,2,NULL),(1718,116,14,2,NULL),(1719,114,26,2,NULL),(1720,120,14,2,NULL),(1721,128,29,2,NULL),(1722,116,26,2,NULL),(1723,132,29,2,NULL),(1724,140,14,2,NULL),(1725,120,26,2,NULL),(1726,136,29,2,NULL),(1727,34,15,2,NULL),(1728,140,26,2,NULL),(1729,156,29,2,NULL),(1730,85,15,2,NULL),(1731,103,26,2,NULL),(1732,87,15,2,NULL),(1733,158,29,2,NULL),(1734,90,15,2,NULL),(1735,164,29,2,NULL),(1736,173,26,2,NULL),(1737,93,15,2,NULL),(1738,166,29,2,NULL),(1739,95,15,2,NULL),(1740,168,29,2,NULL),(1741,34,29,2,NULL),(1742,104,15,2,NULL),(1743,172,29,2,NULL),(1744,85,29,2,NULL),(1745,53,47,2,NULL),(1746,109,15,2,NULL),(1747,87,29,2,NULL),(1748,114,15,2,NULL),(1749,121,47,2,NULL),(1750,90,29,2,NULL),(1751,116,15,2,NULL),(1752,124,47,2,NULL),(1753,93,29,2,NULL),(1754,120,15,2,NULL),(1755,128,47,2,NULL),(1756,95,29,2,NULL),(1757,132,47,2,NULL),(1758,140,15,2,NULL),(1759,104,29,2,NULL),(1760,34,16,2,NULL),(1761,136,47,2,NULL),(1762,109,29,2,NULL),(1763,156,47,2,NULL),(1764,85,16,2,NULL),(1765,114,29,2,NULL),(1766,158,47,2,NULL),(1767,87,16,2,NULL),(1768,116,29,2,NULL),(1769,164,47,2,NULL),(1770,90,16,2,NULL),(1771,120,29,2,NULL),(1772,93,16,2,NULL),(1773,166,47,2,NULL),(1774,140,29,2,NULL),(1775,95,16,2,NULL),(1776,168,47,2,NULL),(1777,103,29,2,NULL),(1778,172,47,2,NULL),(1779,104,16,2,NULL),(1780,109,16,2,NULL),(1781,53,53,2,NULL),(1782,173,29,2,NULL),(1783,114,16,2,NULL),(1784,121,53,2,NULL),(1785,116,16,2,NULL),(1786,34,47,2,NULL),(1787,124,53,2,NULL),(1788,85,47,2,NULL),(1789,120,16,2,NULL),(1790,128,53,2,NULL),(1791,87,47,2,NULL),(1792,140,16,2,NULL),(1793,132,53,2,NULL),(1794,90,47,2,NULL),(1795,34,40,2,NULL),(1796,136,53,2,NULL),(1797,93,47,2,NULL),(1798,85,40,2,NULL),(1799,156,53,2,NULL),(1800,95,47,2,NULL),(1801,87,40,2,NULL),(1802,158,53,2,NULL),(1803,104,47,2,NULL),(1804,90,40,2,NULL),(1805,164,53,2,NULL),(1806,109,47,2,NULL),(1807,93,40,2,NULL),(1808,114,47,2,NULL),(1809,166,53,2,NULL),(1810,95,40,2,NULL),(1811,168,53,2,NULL),(1812,116,47,2,NULL),(1813,104,40,2,NULL),(1814,120,47,2,NULL),(1815,172,53,2,NULL),(1816,109,40,2,NULL),(1817,140,47,2,NULL),(1818,53,54,2,NULL),(1819,114,40,2,NULL),(1820,103,47,2,NULL),(1821,121,54,2,NULL),(1822,116,40,2,NULL),(1823,124,54,2,NULL),(1824,173,47,2,NULL),(1825,120,40,2,NULL),(1826,128,54,2,NULL),(1827,140,40,2,NULL),(1828,132,54,2,NULL),(1829,34,53,2,NULL),(1830,34,41,2,NULL),(1831,136,54,2,NULL),(1832,85,53,2,NULL),(1833,85,41,2,NULL),(1834,87,53,2,NULL),(1835,156,54,2,NULL),(1836,87,41,2,NULL),(1837,90,53,2,NULL),(1838,158,54,2,NULL),(1839,90,41,2,NULL),(1840,93,53,2,NULL),(1841,164,54,2,NULL),(1842,93,41,2,NULL),(1843,95,53,2,NULL),(1844,166,54,2,NULL),(1845,95,41,2,NULL),(1846,104,53,2,NULL),(1847,168,54,2,NULL),(1848,104,41,2,NULL),(1849,109,53,2,NULL),(1850,172,54,2,NULL),(1851,109,41,2,NULL),(1852,114,53,2,NULL),(1853,173,21,2,NULL),(1854,114,41,2,NULL),(1855,116,53,2,NULL),(1856,53,30,2,NULL),(1857,116,41,2,NULL),(1858,120,53,2,NULL),(1859,121,30,2,NULL),(1860,120,41,2,NULL),(1861,140,53,2,NULL),(1862,124,30,2,NULL),(1863,140,41,2,NULL),(1864,128,30,2,NULL),(1865,103,53,2,NULL),(1866,34,43,2,NULL),(1867,132,30,2,NULL),(1868,85,43,2,NULL),(1869,173,53,2,NULL),(1870,136,30,2,NULL),(1871,87,43,2,NULL),(1872,34,54,2,NULL),(1873,156,30,2,NULL),(1874,85,54,2,NULL),(1875,90,43,2,NULL),(1876,158,30,2,NULL),(1877,87,54,2,NULL),(1878,93,43,2,NULL),(1879,164,30,2,NULL),(1880,95,43,2,NULL),(1881,90,54,2,NULL),(1882,166,30,2,NULL),(1883,93,54,2,NULL),(1884,104,43,2,NULL),(1885,168,30,2,NULL),(1886,95,54,2,NULL),(1887,109,43,2,NULL),(1888,172,30,2,NULL),(1889,104,54,2,NULL),(1890,114,43,2,NULL),(1891,53,32,2,NULL),(1892,109,54,2,NULL),(1893,116,43,2,NULL),(1894,121,32,2,NULL),(1895,120,43,2,NULL),(1896,114,54,2,NULL),(1897,124,32,2,NULL),(1898,116,54,2,NULL),(1899,140,43,2,NULL),(1900,128,32,2,NULL),(1901,34,48,2,NULL),(1902,120,54,2,NULL),(1903,132,32,2,NULL),(1904,85,48,2,NULL),(1905,140,54,2,NULL),(1906,136,32,2,NULL),(1907,87,48,2,NULL),(1908,103,54,2,NULL),(1909,156,32,2,NULL),(1910,90,48,2,NULL),(1911,173,54,2,NULL),(1912,158,32,2,NULL),(1913,93,48,2,NULL),(1914,164,32,2,NULL),(1915,95,48,2,NULL),(1916,166,32,2,NULL),(1917,104,48,2,NULL),(1918,168,32,2,NULL),(1919,109,48,2,NULL),(1920,172,32,2,NULL),(1921,114,48,2,NULL),(1922,53,33,2,NULL),(1923,116,48,2,NULL),(1924,121,33,2,NULL),(1925,120,48,2,NULL),(1926,124,33,2,NULL),(1927,140,48,2,NULL),(1928,128,33,2,NULL),(1929,132,33,2,NULL),(1930,136,33,2,NULL),(1931,156,33,2,NULL),(1932,158,33,2,NULL),(1933,164,33,2,NULL),(1934,173,11,2,NULL),(1935,166,33,2,NULL),(1936,34,30,2,NULL),(1937,168,33,2,NULL),(1938,85,30,2,NULL),(1939,172,33,2,NULL),(1940,87,30,2,NULL),(1941,53,44,2,NULL),(1942,90,30,2,NULL),(1943,121,44,2,NULL),(1944,93,30,2,NULL),(1945,124,44,2,NULL),(1946,95,30,2,NULL),(1947,128,44,2,NULL),(1948,104,30,2,NULL),(1949,132,44,2,NULL),(1950,109,30,2,NULL),(1951,136,44,2,NULL),(1952,114,30,2,NULL),(1953,156,44,2,NULL),(1954,116,30,2,NULL),(1955,158,44,2,NULL),(1956,120,30,2,NULL),(1957,164,44,2,NULL),(1958,140,30,2,NULL),(1959,166,44,2,NULL),(1960,34,32,2,NULL),(1961,168,44,2,NULL),(1962,85,32,2,NULL),(1963,172,44,2,NULL),(1964,87,32,2,NULL),(1965,53,57,2,NULL),(1966,90,32,2,NULL),(1967,121,57,2,NULL),(1968,93,32,2,NULL),(1969,124,57,2,NULL),(1970,95,32,2,NULL),(1971,128,57,2,NULL),(1972,104,32,2,NULL),(1973,132,57,2,NULL),(1974,109,32,2,NULL),(1975,136,57,2,NULL),(1976,114,32,2,NULL),(1977,156,57,2,NULL),(1978,116,32,2,NULL),(1979,158,57,2,NULL),(1980,120,32,2,NULL),(1981,164,57,2,NULL),(1982,140,32,2,NULL),(1983,166,57,2,NULL),(1984,34,33,2,NULL),(1985,168,57,2,NULL),(1986,85,33,2,NULL),(1987,172,57,2,NULL),(1988,87,33,2,NULL),(1989,53,59,2,NULL),(1990,90,33,2,NULL),(1991,121,59,2,NULL),(1992,93,33,2,NULL),(1993,124,59,2,NULL),(1994,95,33,2,NULL),(1995,128,59,2,NULL),(1996,104,33,2,NULL),(1997,132,59,2,NULL),(1998,109,33,2,NULL),(1999,136,59,2,NULL),(2000,114,33,2,NULL),(2001,156,59,2,NULL),(2002,116,33,2,NULL),(2003,158,59,2,NULL),(2004,120,33,2,NULL),(2005,164,59,2,NULL),(2006,140,33,2,NULL),(2007,166,59,2,NULL),(2008,34,44,2,NULL),(2009,168,59,2,NULL),(2010,85,44,2,NULL),(2011,172,59,2,NULL),(2012,87,44,2,NULL),(2013,53,60,2,NULL),(2014,90,44,2,NULL),(2015,121,60,2,NULL),(2016,93,44,2,NULL),(2017,124,60,2,NULL),(2018,95,44,2,NULL),(2019,128,60,2,NULL),(2020,104,44,2,NULL),(2021,132,60,2,NULL),(2022,109,44,2,NULL),(2023,136,60,2,NULL),(2024,114,44,2,NULL),(2025,156,60,2,NULL),(2026,116,44,2,NULL),(2027,158,60,2,NULL),(2028,120,44,2,NULL),(2029,164,60,2,NULL),(2030,140,44,2,NULL),(2031,166,60,2,NULL),(2032,34,57,2,NULL),(2033,168,60,2,NULL),(2034,85,57,2,NULL),(2035,172,60,2,NULL),(2036,87,57,2,NULL),(2037,53,63,2,NULL),(2038,90,57,2,NULL),(2039,121,63,2,NULL),(2040,93,57,2,NULL),(2041,124,63,2,NULL),(2042,95,57,2,NULL),(2043,128,63,2,NULL),(2044,104,57,2,NULL),(2045,132,63,2,NULL),(2046,109,57,2,NULL),(2047,114,57,2,NULL),(2048,136,63,2,NULL),(2049,116,57,2,NULL),(2050,156,63,2,NULL),(2051,120,57,2,NULL),(2052,158,63,2,NULL),(2053,140,57,2,NULL),(2054,164,63,2,NULL),(2055,34,59,2,NULL),(2056,166,63,2,NULL),(2057,85,59,2,NULL),(2058,168,63,2,NULL),(2059,87,59,2,NULL),(2060,172,63,2,NULL),(2061,90,59,2,NULL),(2062,173,14,2,NULL),(2063,93,59,2,NULL),(2064,173,15,2,NULL),(2065,95,59,2,NULL),(2066,173,16,2,NULL),(2067,104,59,2,NULL),(2068,173,40,2,NULL),(2069,109,59,2,NULL),(2070,173,41,2,NULL),(2071,114,59,2,NULL),(2072,173,43,2,NULL),(2073,116,59,2,NULL),(2074,173,48,2,NULL),(2075,120,59,2,NULL),(2076,173,30,2,NULL),(2077,140,59,2,NULL),(2078,173,32,2,NULL),(2079,34,60,2,NULL),(2080,173,33,2,NULL),(2081,85,60,2,NULL),(2082,173,44,2,NULL),(2083,87,60,2,NULL),(2084,173,57,2,NULL),(2085,90,60,2,NULL),(2086,173,59,2,NULL),(2087,93,60,2,NULL),(2088,173,60,2,NULL),(2089,95,60,2,NULL),(2090,173,63,2,NULL),(2091,104,60,2,NULL),(2092,109,60,2,NULL),(2093,103,30,2,NULL),(2094,114,60,2,NULL),(2095,116,60,2,NULL),(2096,103,32,2,NULL),(2097,120,60,2,NULL),(2098,105,9,2,NULL),(2099,140,60,2,NULL),(2100,105,15,2,NULL),(2101,34,63,2,NULL),(2102,105,32,2,NULL),(2103,85,63,2,NULL),(2104,103,33,2,NULL),(2105,87,63,2,NULL),(2106,103,44,2,NULL),(2107,90,63,2,NULL),(2108,103,57,2,NULL),(2109,93,63,2,NULL),(2110,103,59,2,NULL),(2111,95,63,2,NULL),(2112,104,63,2,NULL),(2113,103,60,2,NULL),(2114,109,63,2,NULL),(2115,114,63,2,NULL),(2116,116,63,2,NULL),(2117,120,63,2,NULL),(2118,120,63,2,NULL),(2119,140,63,2,NULL),(2120,103,14,2,NULL),(2121,103,63,2,NULL),(2122,103,15,2,NULL),(2123,103,16,2,NULL),(2124,103,40,2,NULL),(2125,103,41,2,NULL),(2126,103,43,2,NULL),(2127,103,48,2,NULL),(2128,154,9,2,NULL),(2129,154,15,2,NULL),(2130,154,32,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProviderLinks`
--

LOCK TABLES `ProviderLinks` WRITE;
/*!40000 ALTER TABLE `ProviderLinks` DISABLE KEYS */;
INSERT INTO `ProviderLinks` VALUES (1,17,31,NULL),(2,24,31,NULL),(3,49,31,NULL),(4,26,31,NULL),(5,50,31,NULL);
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

-- Dump completed on 2015-10-12  3:30:44
