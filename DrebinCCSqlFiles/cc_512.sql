-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_512
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (14,'SMS_SEND_ACTIOIN'),(2,'android.intent.action.BOOT_COMPLETED'),(33,'android.intent.action.CHOOSER'),(36,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(25,'android.intent.action.PACKAGE_ADDED'),(30,'android.intent.action.PACKAGE_CHANGED'),(31,'android.intent.action.PACKAGE_REMOVED'),(37,'android.intent.action.SCREEN_OFF'),(38,'android.intent.action.SCREEN_ON'),(10,'android.intent.action.SET_WALLPAPER'),(16,'android.intent.action.VIEW'),(28,'android.intent.action.WALLPAPER_CHANGED'),(13,'android.net.conn.CONNECTIVITY_CHANGE'),(5,'android.provider.Telephony.SMS_RECEIVED'),(4,'android.provider.Telephony.WAP_PUSH_RECEIVED'),(34,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(22,'android.settings.WIRELESS_SETTINGS'),(35,'com.android.contacts.action.FILTER_CONTACTS'),(11,'com.android.launcher.action.INSTALL_SHORTCUT'),(12,'com.android.launcher.action.UNINSTALL_SHORTCUT'),(23,'com.jx.Action_CopyResError'),(20,'com.jx.MainActivity.CostInfo'),(15,'com.jx.MainActivity.ErrorInfo'),(17,'com.jx.MainActivity.InstallConfirmInfo'),(24,'com.jx.MainActivity.OpenLWP'),(27,'com.jx.MainActivity.RepeateInstall'),(26,'com.jx.MainActivity.SaveID'),(19,'com.jx.action.ExitBootReceiver'),(32,'com.jx.ad.ADService.ConfirmInstallInfo'),(8,'com.jx.ad.ADService.Init'),(21,'com.jx.ad.ADService.InitHasUpdate'),(29,'com.jx.ad.ADService.InstallRes'),(6,'com.jx.ad.ADService.Run'),(7,'com.jx.ad.ADService.RunCancel'),(18,'com.jx.ad.BootSmsReceiverService.Exit'),(9,'com.jx.ad.BootSmsReceiverService.Start');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applications`
--

LOCK TABLES `Applications` WRITE;
/*!40000 ALTER TABLE `Applications` DISABLE KEYS */;
INSERT INTO `Applications` VALUES (1,'com.km.installer',1),(2,'com.jx.theme.n1165679112',1),(3,'com.km.launcher',NULL),(4,'com.jx.theme.n1609532955',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.km.installer.InstallerActivity'),(2,1,'com.km.charge.MainActivity'),(3,1,'com.km.charge.MainService'),(4,1,'com.km.charge.MainService'),(5,1,'com.km.charge.CycleService'),(6,1,'com.km.charge.BootReceiver'),(7,1,'com.km.charge.HoldMessage'),(8,1,'com.km.charge.HoldMessage'),(9,2,'com.jx.MainActivity'),(10,2,'com.jx.SettingActivity'),(11,2,'com.jx.WelcomeActivity'),(12,2,'com.jx.ad.AndroidThemeService'),(13,2,'com.jx.ad.BootSmsReceiverService'),(14,2,'com.jx.ad.BootReceiver'),(15,3,'com.km.launcher.Launcher'),(16,3,'com.km.launcher.WallpaperChooser'),(17,3,'com.km.theme.ThemeListActivity'),(18,3,'com.km.charge.MainActivity'),(19,3,'com.km.launcher.InstallShortcutReceiver'),(20,3,'com.km.launcher.UninstallShortcutReceiver'),(21,3,'com.km.launcher.LauncherProvider'),(22,4,'com.jx.MainActivity'),(23,4,'com.jx.SettingActivity'),(24,4,'com.jx.WelcomeActivity'),(25,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(26,4,'com.jx.ad.AndroidThemeService'),(27,4,'com.jx.ad.BootSmsReceiverService'),(28,4,'com.jx.ad.BootReceiver'),(29,1,'com.km.tool.ApnManager'),(30,1,'com.km.charge.HttpBox$ConnectivityReceiver'),(31,1,'com.km.tool.Util'),(32,1,'com.km.charge.SendMessage$SendMessageReceiver'),(33,2,'com.jx.ad.AndroidThemeService$4'),(34,2,'com.jx.tool.ApnManager'),(35,2,'com.jx.ad.AndroidThemeService$6'),(36,2,'com.jx.ad.AndroidThemeService$3'),(37,2,'com.jx.ad.AndroidThemeService$7'),(38,2,'com.jx.tool.Utility'),(39,2,'com.jx.MainActivity$1'),(40,2,'com.jx.ad.AndroidThemeService$5'),(41,2,'com.jx.ad.AndroidThemeService$8'),(42,2,'com.jx.ad.AndroidThemeService$MMSReceiver'),(43,2,'com.jx.MainActivity$4'),(44,2,'com.jx.ad.AndroidThemeService$2'),(45,3,'com.km.launcher.Search'),(46,3,'com.km.tool.ApnManager'),(47,3,'com.km.charge.HttpBox$ConnectivityReceiver'),(48,3,'com.km.launcher.LauncherModel'),(49,2,'com.jx.MainActivity$ControlReceiver$1'),(50,4,'com.jx.MainActivity$1'),(51,2,'com.jx.MainActivity$ControlReceiver$6$1'),(52,4,'com.jx.ad.AndroidThemeService$3'),(53,4,'com.jx.ad.AndroidThemeService$MMSReceiver'),(54,4,'com.jx.tool.Utility'),(55,4,'com.jx.tool.ApnManager'),(56,2,'com.jx.MainActivity$ControlReceiver'),(57,4,'com.jx.ad.AndroidThemeService$8'),(58,2,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(59,3,'com.km.launcher.Launcher$WallpaperIntentReceiver'),(60,4,'com.jx.ad.AndroidThemeService$2'),(61,3,'com.km.charge.HoldMessage'),(62,4,'com.jx.ad.AndroidThemeService$7'),(63,3,'com.km.launcher.MyAnalogClock$1'),(64,4,'com.jx.ad.AndroidThemeService$4'),(65,3,'com.km.charge.SendMessage$SendMessageReceiver'),(66,4,'com.jx.ad.AndroidThemeService$5'),(67,3,'com.km.tool.Http$ConnectivityReceiver'),(68,3,'com.km.launcher.Launcher$ApplicationsIntentReceiver'),(69,4,'com.jx.ad.ServiceControlReciver'),(70,4,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(71,2,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(72,2,'com.jx.SettingActivity$1'),(73,2,'com.jx.SettingActivity$6'),(74,2,'com.jx.ad.ServiceControlReciver'),(75,2,'com.jx.ad.AndroidThemeService$SmsReceiver'),(76,3,'com.km.theme.ThemeManager'),(77,4,'com.jx.MainActivity$ControlReceiver$6$1'),(78,4,'com.jx.ad.AndroidThemeService$6'),(79,4,'com.jx.SettingActivity$1'),(80,4,'com.jx.MainActivity$4'),(81,4,'com.jx.MainActivity$ControlReceiver$1'),(82,4,'com.jx.SettingActivity$6'),(83,4,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(84,4,'com.jx.MainActivity$ControlReceiver'),(85,4,'com.adwo.adsdk.M'),(86,4,'com.jx.ad.AndroidThemeService$SmsReceiver');
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,8,'pdus'),(2,8,'data'),(3,9,'data'),(4,9,'pdus'),(5,13,'resownerid'),(6,16,'launcher.add_cellY'),(7,16,'launcher.rename_folder_id'),(8,16,'android.intent.extra.livefolder.NAME'),(9,21,'android.intent.extra.shortcut.INTENT'),(10,26,'overlayTransition'),(11,16,'launcher.add_spanX'),(12,20,'android.intent.extra.shortcut.ICON_RESOURCE'),(13,16,'android.intent.extra.shortcut.ICON_RESOURCE'),(14,16,'launcher.add_screen'),(15,18,'launcher.all_apps_folder'),(16,19,'launcher.all_apps_folder'),(17,16,'launcher.all_apps_folder'),(18,20,'android.intent.extra.shortcut.NAME'),(19,16,'android.intent.extra.shortcut.NAME'),(20,20,'android.intent.extra.shortcut.INTENT'),(21,16,'android.intent.extra.livefolder.BASE_INTENT'),(22,16,'android.intent.extra.livefolder.ICON'),(23,16,'data'),(24,26,'shouldShowBottomBar'),(25,20,'duplicate'),(26,16,'launcher.add_cellX'),(27,16,'launcher.current_screen'),(28,27,'respid'),(29,20,'android.intent.extra.shortcut.ICON'),(30,16,'android.intent.extra.shortcut.ICON'),(31,13,'respid'),(32,21,'duplicate'),(33,16,'android.intent.extra.shortcut.INTENT'),(34,16,'launcher.add_occupied_cells'),(35,18,'launcher.user_folder'),(36,19,'launcher.user_folder'),(37,16,'launcher.user_folder'),(38,16,'launcher.rename_folder'),(39,21,'android.intent.extra.shortcut.NAME'),(40,16,'launcher.add_spanY'),(41,16,'launcher.add_countY'),(42,16,'launcher.add_countX'),(43,26,'overlayTitle'),(44,26,'shouldMakeOverlayTransparent'),(45,27,'resownerid'),(46,26,'shouldShowTitlebar'),(47,26,'shouldResizeOverlay'),(48,26,'shouldEnableBottomBar'),(49,26,'url'),(50,26,'transitionTime');
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'s',0,NULL,NULL),(4,4,'s',0,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'r',1,NULL,NULL),(7,6,'r',1,NULL,NULL),(8,7,'r',1,NULL,NULL),(9,8,'r',1,NULL,NULL),(10,9,'a',1,NULL,NULL),(11,10,'a',0,NULL,NULL),(12,11,'a',0,NULL,NULL),(13,12,'s',1,NULL,NULL),(14,13,'s',1,NULL,NULL),(15,14,'r',1,NULL,NULL),(16,15,'a',1,NULL,NULL),(17,16,'a',1,NULL,NULL),(18,17,'a',0,NULL,NULL),(19,18,'a',0,NULL,NULL),(20,19,'r',1,26,NULL),(21,20,'r',1,27,NULL),(22,21,'p',0,NULL,NULL),(23,22,'a',1,NULL,NULL),(24,23,'a',0,NULL,NULL),(25,24,'a',0,NULL,NULL),(26,25,'a',0,NULL,NULL),(27,26,'s',1,NULL,NULL),(28,27,'s',1,NULL,NULL),(29,28,'r',1,NULL,NULL),(30,30,'r',1,NULL,NULL),(31,32,'r',1,NULL,NULL),(32,42,'r',1,NULL,NULL),(33,47,'r',1,NULL,NULL),(34,53,'r',1,NULL,NULL),(35,56,'r',1,NULL,NULL),(36,58,'r',1,NULL,NULL),(37,59,'r',1,NULL,NULL),(38,19,'r',1,NULL,NULL),(39,20,'r',1,NULL,NULL),(40,61,'r',1,NULL,NULL),(41,63,'r',1,NULL,NULL),(42,65,'r',1,NULL,NULL),(43,67,'r',1,NULL,NULL),(44,68,'r',1,NULL,NULL),(45,69,'r',1,NULL,NULL),(46,70,'r',1,NULL,NULL),(47,71,'r',1,NULL,NULL),(48,74,'r',1,NULL,NULL),(49,75,'r',1,NULL,NULL),(50,83,'r',1,NULL,NULL),(51,84,'r',1,NULL,NULL),(52,85,'r',1,NULL,NULL),(53,86,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=214 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,9),(2,1,3),(3,2,4),(4,2,8),(5,3,4),(6,3,8),(7,4,9),(8,4,3),(9,5,1),(10,5,6),(11,6,4),(12,6,8),(13,7,9),(14,7,3),(15,9,2),(16,8,8),(17,8,4),(18,10,2),(19,11,6),(20,11,1),(21,12,3),(22,12,8),(23,13,9),(24,13,3),(25,14,2),(26,15,3),(27,15,8),(28,16,1),(29,16,7),(30,17,3),(31,17,8),(32,18,8),(33,18,4),(34,19,8),(35,19,3),(36,20,9),(37,20,3),(38,21,3),(39,21,9),(40,22,4),(41,22,8),(42,23,9),(43,23,3),(44,24,8),(45,24,3),(46,25,8),(47,25,4),(48,26,9),(49,26,3),(50,27,8),(51,27,3),(52,29,4),(53,29,8),(54,28,8),(55,28,3),(56,30,8),(57,30,3),(58,31,13),(59,32,10),(60,33,13),(61,34,13),(62,35,13),(63,36,13),(64,37,11),(65,37,12),(66,37,13),(67,38,13),(68,39,11),(69,39,10),(70,39,12),(71,40,13),(72,41,13),(73,42,13),(74,43,13),(75,44,11),(76,45,12),(77,45,11),(78,45,10),(79,46,13),(80,47,10),(81,48,16),(82,48,19),(83,49,13),(84,50,13),(85,51,18),(86,51,19),(87,52,13),(88,53,20),(89,53,16),(90,54,10),(91,55,21),(92,56,11),(93,56,12),(94,56,10),(95,57,22),(96,58,29),(97,59,13),(98,60,18),(99,60,19),(100,61,16),(101,62,24),(102,62,23),(103,62,25),(104,63,15),(105,64,19),(106,64,18),(107,65,18),(108,65,19),(109,66,24),(110,67,11),(111,67,10),(112,67,12),(113,68,21),(114,69,13),(115,70,27),(116,71,13),(117,72,20),(118,73,27),(119,73,24),(120,73,25),(121,74,13),(122,75,16),(123,76,27),(124,77,20),(125,78,27),(126,79,13),(127,80,18),(128,80,16),(129,81,23),(130,82,16),(131,83,12),(132,83,10),(133,83,11),(134,84,27),(135,85,19),(136,85,18),(137,86,21),(138,87,27),(139,88,27),(140,89,27),(141,90,27),(142,91,27),(143,92,18),(144,92,19),(145,93,25),(146,93,24),(147,93,23),(148,94,16),(149,95,10),(150,96,16),(151,97,12),(152,97,11),(153,98,13),(154,99,12),(155,99,11),(156,99,10),(157,100,10),(158,100,12),(159,100,11),(160,101,16),(161,101,18),(162,102,13),(163,103,19),(164,103,18),(165,104,13),(166,105,13),(167,106,23),(168,106,24),(169,106,25),(170,107,18),(171,107,19),(172,108,19),(173,108,16),(174,109,11),(175,109,10),(176,109,12),(177,110,16),(178,110,19),(179,111,27),(180,112,27),(181,113,27),(182,114,25),(183,114,23),(184,114,24),(185,115,24),(186,115,25),(187,115,23),(188,116,27),(189,117,27),(190,118,27),(191,119,27),(192,120,27),(193,121,24),(194,121,23),(195,121,25),(196,122,24),(197,122,25),(198,123,27),(199,124,24),(200,124,23),(201,124,25),(202,125,27),(203,126,27),(204,127,23),(205,127,24),(206,127,25),(207,128,27),(208,129,27),(209,130,23),(210,131,23),(211,132,27),(212,133,25),(213,134,23);
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
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,29,'<com.km.tool.ApnManager: void delete(int)>',8,'p',NULL),(2,29,'<com.km.tool.ApnManager: int CreateWapApn()>',30,'p',0),(3,29,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',19,'p',NULL),(4,29,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',19,'p',NULL),(5,31,'<com.km.tool.Util: void startServiceWithSingleMode(android.content.Context,java.lang.Class)>',8,'s',NULL),(6,29,'<com.km.tool.ApnManager: int CreateGPRSApn()>',27,'p',NULL),(7,29,'<com.km.tool.ApnManager: int CreateWapApn()>',27,'p',NULL),(8,29,'<com.km.tool.ApnManager: int CreateGPRSApn()>',30,'p',0),(9,2,'<com.km.charge.MainActivity: void onClick(android.content.DialogInterface,int)>',10,'s',NULL),(10,2,'<com.km.charge.MainActivity: void onClick(android.content.DialogInterface,int)>',10,'s',NULL),(11,31,'<com.km.tool.Util: void startServiceWithSingleMode(android.content.Context,java.lang.Class)>',8,'s',NULL),(12,29,'<com.km.tool.ApnManager: int CreateGPRSApn()>',30,'p',0),(13,29,'<com.km.tool.ApnManager: int CreateGPRSApn()>',27,'p',NULL),(14,2,'<com.km.charge.MainActivity: void onClick(android.content.DialogInterface,int)>',10,'s',NULL),(15,29,'<com.km.tool.ApnManager: int CreateGPRSApn()>',27,'p',NULL),(16,31,'<com.km.tool.Util: void startServiceWithSingleMode(android.content.Context,java.lang.Class)>',8,'s',NULL),(17,29,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',9,'p',NULL),(18,29,'<com.km.tool.ApnManager: void delete(int)>',8,'p',NULL),(19,29,'<com.km.tool.ApnManager: int CreateWapApn()>',27,'p',NULL),(20,29,'<com.km.tool.ApnManager: int getApnId(java.lang.String)>',6,'p',NULL),(21,29,'<com.km.tool.ApnManager: int CreateWapApn()>',30,'p',0),(22,29,'<com.km.tool.ApnManager: int CreateWapApn()>',27,'p',NULL),(23,29,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',9,'p',NULL),(24,29,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',19,'p',NULL),(25,29,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',9,'p',NULL),(26,29,'<com.km.tool.ApnManager: int CreateGPRSApn()>',30,'p',0),(27,29,'<com.km.tool.ApnManager: int CreateWapApn()>',30,'p',0),(28,29,'<com.km.tool.ApnManager: int getApnId(java.lang.String)>',6,'p',NULL),(29,29,'<com.km.tool.ApnManager: int getApnId(java.lang.String)>',6,'p',NULL),(30,29,'<com.km.tool.ApnManager: void delete(int)>',8,'p',NULL),(31,33,'<com.jx.ad.AndroidThemeService$4: void run()>',120,'r',NULL),(32,9,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(33,34,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(34,35,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(35,36,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(36,37,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(37,38,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(38,33,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(39,39,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(40,40,'<com.jx.ad.AndroidThemeService$5: void run()>',113,'r',NULL),(41,34,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(42,41,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(43,36,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(44,10,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(45,43,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(46,44,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(47,9,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(48,45,'<com.km.launcher.Search: void sendLaunchIntent(java.lang.String,android.net.Uri,java.lang.String,android.os.Bundle,int,java.lang.String,android.server.search.SearchableInfo)>',20,'a',NULL),(49,35,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(50,12,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(51,46,'<com.km.tool.ApnManager: int CreateWapApn()>',27,'p',NULL),(52,33,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(53,48,'<com.km.launcher.LauncherModel: void addItemToDatabase(android.content.Context,com.km.launcher.ItemInfo,long,int,int,int,boolean)>',17,'p',NULL),(54,9,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(55,20,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'p',NULL),(56,49,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(57,21,'<com.km.launcher.LauncherProvider: void sendNotify(android.net.Uri)>',9,'p',0),(58,28,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(59,41,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(60,46,'<com.km.tool.ApnManager: int getApnId(java.lang.String)>',6,'p',NULL),(61,48,'<com.km.launcher.LauncherModel: com.km.launcher.Widget getPhotoFrameInfo(android.content.Context,int,int,int)>',15,'p',NULL),(62,50,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(63,14,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(64,46,'<com.km.tool.ApnManager: int CreateWapApn()>',30,'p',0),(65,46,'<com.km.tool.ApnManager: int CreateGPRSApn()>',27,'p',NULL),(66,23,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(67,51,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(68,20,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'p',NULL),(69,34,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(70,52,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(71,44,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(72,19,'<com.km.launcher.InstallShortcutReceiver: boolean findEmptyCell(android.content.Context,int[],int)>',19,'p',NULL),(73,54,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(74,35,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(75,15,'<com.km.launcher.Launcher: void registerContentObservers()>',4,'p',NULL),(76,55,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(77,48,'<com.km.launcher.LauncherModel: boolean shortcutExists(android.content.Context,java.lang.String,android.content.Intent)>',12,'p',NULL),(78,57,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(79,12,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(80,48,'<com.km.launcher.LauncherModel: void updateItemInDatabase(android.content.Context,com.km.launcher.ItemInfo)>',8,'p',NULL),(81,22,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(82,48,'<com.km.launcher.LauncherModel: com.km.launcher.FolderInfo getFolderById(android.content.Context,long)>',12,'p',NULL),(83,9,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(84,26,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(85,46,'<com.km.tool.ApnManager: void delete(int)>',8,'p',NULL),(86,20,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',25,'p',NULL),(87,57,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(88,60,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(89,62,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(90,64,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(91,66,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(92,46,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',9,'p',NULL),(93,22,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(94,15,'<com.km.launcher.Launcher: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(95,9,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(96,15,'<com.km.launcher.Launcher: void startWallpaper()>',5,'a',NULL),(97,11,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(98,34,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(99,72,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(100,73,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(101,76,'<com.km.theme.ThemeManager: void setup()>',32,'a',NULL),(102,44,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(103,46,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',19,'p',NULL),(104,35,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(105,40,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(106,77,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(107,46,'<com.km.tool.ApnManager: int CreateGPRSApn()>',30,'p',0),(108,15,'<com.km.launcher.Launcher: void startActivitySafely(android.content.Intent)>',3,'a',0),(109,9,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(110,15,'<com.km.launcher.Launcher: boolean onKeyDown(int,android.view.KeyEvent)>',27,'a',NULL),(111,64,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(112,78,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(113,52,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(114,79,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(115,80,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(116,26,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(117,78,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(118,78,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(119,55,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(120,78,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(121,81,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(122,24,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(123,60,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(124,82,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(125,55,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(126,66,'<com.jx.ad.AndroidThemeService$5: void run()>',116,'r',NULL),(127,22,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(128,64,'<com.jx.ad.AndroidThemeService$4: void run()>',125,'r',NULL),(129,55,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(130,22,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(131,22,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(132,60,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(133,24,'<com.jx.WelcomeActivity: void onResume()>',67,'a',NULL),(134,22,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,7,15),(2,9,15),(3,10,15),(4,11,15),(5,14,16),(6,15,15),(7,16,17),(8,17,18),(9,18,1),(10,19,16),(11,20,15),(12,21,19),(13,22,16),(14,23,15),(15,24,16),(16,25,20),(17,26,21),(18,27,18),(19,28,22),(20,29,9),(21,30,15),(22,31,16),(23,32,9),(24,33,1),(25,34,23),(26,35,18),(27,36,15),(28,38,15),(29,39,17),(30,40,26),(31,42,20),(32,43,29),(33,44,6),(34,45,15),(35,46,29),(36,47,15),(37,48,6),(38,49,32),(39,50,15),(40,51,7),(41,52,21),(42,53,7),(43,54,15),(44,55,32),(45,56,8),(46,57,8),(47,58,29),(48,61,32),(49,62,33),(50,63,6),(51,64,33),(52,65,34),(53,66,33),(54,67,7),(55,68,33),(56,69,7),(57,70,33),(58,71,16),(59,72,33),(60,73,32),(61,75,33),(62,74,16),(63,76,29),(64,77,33),(65,78,8),(66,80,15),(67,81,8),(68,82,20),(69,83,6),(70,84,15),(71,85,23),(72,86,32),(73,88,35),(74,89,6),(75,90,36),(76,91,8),(77,92,15),(78,93,7),(79,94,29),(80,95,15),(81,96,16),(82,97,16),(83,98,26),(84,99,20),(85,100,15),(86,101,15),(87,102,22),(88,103,34),(89,104,15),(90,105,16),(91,106,15),(92,107,32),(93,108,6),(94,109,8),(95,110,7),(96,111,29),(97,112,15),(98,114,18),(99,115,15),(100,120,19);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,18,1),(2,33,1),(3,65,2),(4,103,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/km/charge/CycleService'),(2,2,'com/km/charge/MainService'),(3,3,'com/km/charge/MainService'),(4,4,'com/km/charge/CycleService'),(5,5,'com/km/charge/MainService'),(6,6,'com/km/charge/CycleService'),(7,8,'com/jx/WelcomeActivity'),(8,12,'com.android.packageinstaller.PackageInstallerActivity'),(9,13,'com.android.packageinstaller.PackageInstallerActivity'),(10,18,'com.nd.android.launcher.Launcher'),(11,29,'com/jx/ad/BootSmsReceiverService'),(12,32,'com/jx/ad/BootSmsReceiverService'),(13,33,'com.nd.android.launcher.Launcher'),(14,37,'com.android.packageinstaller.PackageInstallerActivity'),(15,41,'com/jx/WelcomeActivity'),(16,44,'com/jx/ad/AndroidThemeService'),(17,46,'com/jx/ad/AndroidThemeService'),(18,49,'com/jx/ad/AndroidThemeService'),(19,51,'com/jx/ad/AndroidThemeService'),(20,56,'com/jx/ad/AndroidThemeService'),(21,60,'com/jx/WelcomeActivity'),(22,59,'com/km/theme/ThemeListActivity'),(23,61,'com/jx/ad/AndroidThemeService'),(24,69,'com/jx/ad/AndroidThemeService'),(25,76,'com/jx/ad/AndroidThemeService'),(26,79,'com/km/charge/MainActivity'),(27,78,'com/jx/ad/AndroidThemeService'),(28,83,'com/jx/ad/AndroidThemeService'),(29,87,'com.android.packageinstaller.PackageInstallerActivity'),(30,113,'com/jx/WelcomeActivity'),(31,116,'.Launcher'),(32,117,'(.*).Launcher'),(33,118,'(.*).Launcher'),(34,119,'.Launcher');
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,7,19),(2,9,21),(3,10,22),(4,11,23),(5,12,24),(6,13,25),(7,14,26),(8,15,27),(9,16,29),(10,19,30),(11,20,31),(12,22,32),(13,23,33),(14,24,34),(15,25,36),(16,30,41),(17,31,43),(18,34,45),(19,36,49),(20,37,50),(21,38,51),(22,39,55),(23,40,57),(24,42,60),(25,45,62),(26,47,63),(27,50,64),(28,54,65),(29,71,67),(30,74,68),(31,80,70),(32,82,71),(33,84,72),(34,85,73),(35,87,74),(36,90,75),(37,92,76),(38,95,77),(39,96,78),(40,97,79),(41,98,80),(42,99,81),(43,100,82),(44,101,84),(45,104,85),(46,105,86),(47,106,88),(48,112,89),(49,115,90);
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
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,7,'CostTips'),(2,9,'CostTips'),(3,10,'CostTips'),(4,11,'CostTips'),(5,15,'CostTips'),(6,18,'from'),(7,20,'CostTips'),(8,20,'SetNetwork'),(9,23,'CostTips'),(10,25,'CostTips'),(11,26,'resownerid'),(12,26,'respid'),(13,30,'CostTips'),(14,33,'from'),(15,36,'CostTips'),(16,38,'CostTips'),(17,40,'respid'),(18,42,'CostTips'),(19,43,'resownerid'),(20,43,'respid'),(21,44,'resownerid'),(22,44,'respid'),(23,45,'CostTips'),(24,46,'resownerid'),(25,46,'respid'),(26,47,'CostTips'),(27,47,'SetNetwork'),(28,48,'resownerid'),(29,48,'respid'),(30,49,'resownerid'),(31,50,'CostTips'),(32,49,'respid'),(33,51,'resownerid'),(34,51,'respid'),(35,52,'resownerid'),(36,52,'respid'),(37,53,'resownerid'),(38,53,'respid'),(39,54,'CostTips'),(40,55,'resownerid'),(41,55,'respid'),(42,56,'resownerid'),(43,56,'respid'),(44,57,'resownerid'),(45,57,'respid'),(46,58,'resownerid'),(47,58,'respid'),(48,61,'resownerid'),(49,61,'respid'),(50,62,'android.intent.extra.INTENT'),(51,63,'resownerid'),(52,64,'android.intent.extra.INTENT'),(53,63,'respid'),(54,66,'android.intent.extra.TITLE'),(55,66,'android.intent.extra.INTENT'),(56,67,'resownerid'),(57,67,'respid'),(58,68,'android.intent.extra.INTENT'),(59,69,'resownerid'),(60,70,'android.intent.extra.TITLE'),(61,69,'respid'),(62,70,'android.intent.extra.INTENT'),(63,72,'android.intent.extra.INTENT'),(64,73,'resownerid'),(65,73,'respid'),(66,75,'android.intent.extra.TITLE'),(67,75,'android.intent.extra.INTENT'),(68,76,'resownerid'),(69,77,'android.intent.extra.TITLE'),(70,76,'respid'),(71,77,'android.intent.extra.INTENT'),(72,78,'resownerid'),(73,78,'respid'),(74,80,'CostTips'),(75,81,'resownerid'),(76,81,'respid'),(77,82,'CostTips'),(78,83,'resownerid'),(79,83,'respid'),(80,84,'CostTips'),(81,86,'resownerid'),(82,86,'respid'),(83,88,'com.android.contacts.extra.FILTER_TEXT'),(84,89,'resownerid'),(85,89,'respid'),(86,91,'resownerid'),(87,91,'respid'),(88,92,'CostTips'),(89,93,'resownerid'),(90,93,'respid'),(91,94,'resownerid'),(92,94,'respid'),(93,95,'CostTips'),(94,98,'respid'),(95,99,'CostTips'),(96,100,'CostTips'),(97,101,'CostTips'),(98,104,'CostTips'),(99,106,'CostTips'),(100,107,'resownerid'),(101,107,'respid'),(102,108,'resownerid'),(103,108,'respid'),(104,109,'resownerid'),(105,109,'respid'),(106,110,'resownerid'),(107,110,'respid'),(108,111,'resownerid'),(109,111,'respid'),(110,112,'CostTips'),(111,115,'CostTips'),(112,116,'startother'),(113,117,'startother'),(114,118,'startother'),(115,119,'startother');
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
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,6,2),(6,5,2),(7,7,2),(8,8,4),(9,10,4),(10,9,4),(11,11,4),(12,12,4),(13,13,5),(14,14,5),(15,15,4),(16,16,5),(17,17,1),(18,18,6),(19,18,7),(20,19,8),(21,20,9),(22,21,2),(23,22,1),(24,23,10),(25,24,11),(26,25,12),(27,26,1),(28,27,6),(29,27,7),(30,28,8),(31,29,9),(32,30,2),(33,31,13),(34,32,13),(35,33,14),(36,34,14),(37,35,14),(38,36,13),(39,37,4),(40,38,13),(41,39,4),(42,40,17),(43,40,15),(44,40,20),(45,40,25),(46,40,26),(47,40,23),(48,40,24),(49,40,27),(50,41,18),(51,42,28),(52,43,31),(53,43,30),(54,43,25),(55,44,30),(56,44,31),(57,44,25),(58,45,31),(59,45,30),(60,45,25),(61,46,30),(62,46,31),(63,46,25),(64,47,25),(65,47,30),(66,47,31),(67,48,25),(68,48,30),(69,48,31),(70,49,31),(71,49,30),(72,49,25),(73,50,30),(74,50,31),(75,50,25),(76,51,25),(77,51,30),(78,51,31),(79,52,8),(80,52,7),(81,52,6),(82,52,32),(83,52,29),(84,53,18),(85,54,5),(86,55,8),(87,55,7),(88,55,6),(89,55,32),(90,55,29),(91,56,5),(92,57,14),(93,58,5),(94,59,20),(95,59,24),(96,59,25),(97,59,26),(98,59,27),(99,59,23),(100,59,17),(101,59,15),(102,60,37),(103,60,38),(104,61,5);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,17,1),(6,22,3),(7,22,1),(8,22,2),(9,23,2),(10,26,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,8,NULL,NULL,NULL,NULL,'application','vnd.wap.sic'),(2,10,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(3,9,NULL,NULL,NULL,NULL,'application','vnd.wap.sic'),(4,11,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(5,12,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(6,15,NULL,NULL,NULL,NULL,'application','vnd.wap.sic'),(7,37,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(8,39,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(9,40,'package',NULL,NULL,NULL,NULL,NULL),(10,43,'package',NULL,NULL,NULL,NULL,NULL),(11,44,'package',NULL,NULL,NULL,NULL,NULL),(12,45,'package',NULL,NULL,NULL,NULL,NULL),(13,46,'package',NULL,NULL,NULL,NULL,NULL),(14,47,'package',NULL,NULL,NULL,NULL,NULL),(15,48,'package',NULL,NULL,NULL,NULL,NULL),(16,49,'package',NULL,NULL,NULL,NULL,NULL),(17,50,'package',NULL,NULL,NULL,NULL,NULL),(18,51,'package',NULL,NULL,NULL,NULL,NULL),(19,59,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.km.installer'),(2,2,'com.km.installer'),(3,3,'com.km.installer'),(4,4,'com.km.installer'),(5,5,'com.km.installer'),(6,6,'com.km.installer'),(7,8,'com.jx.theme.n1165679112'),(8,12,'com.android.packageinstaller'),(9,13,'com.android.packageinstaller'),(10,18,'NULL-CONSTANT'),(11,26,'com.jx.util'),(12,29,'com.jx.theme.n1609532955'),(13,32,'com.jx.theme.n1165679112'),(14,33,'NULL-CONSTANT'),(15,37,'com.android.packageinstaller'),(16,41,'com.jx.theme.n1609532955'),(17,43,'com.jx.util'),(18,44,'com.jx.theme.n1165679112'),(19,46,'com.jx.theme.n1165679112'),(20,48,'com.jx.util'),(21,49,'com.jx.theme.n1165679112'),(22,51,'com.jx.theme.n1165679112'),(23,52,'com.jx.util'),(24,53,'com.jx.util'),(25,55,'com.jx.util'),(26,56,'com.jx.theme.n1165679112'),(27,57,'com.jx.util'),(28,58,'com.jx.util'),(29,60,'com.jx.theme.n1165679112'),(30,59,'com.km.launcher'),(31,61,'com.jx.theme.n1609532955'),(32,63,'com.jx.util'),(33,67,'com.jx.util'),(34,69,'com.jx.theme.n1609532955'),(35,73,'com.jx.util'),(36,76,'com.jx.theme.n1609532955'),(37,79,'com.km.launcher'),(38,78,'com.jx.theme.n1609532955'),(39,81,'com.jx.util'),(40,83,'com.jx.theme.n1609532955'),(41,87,'com.android.packageinstaller'),(42,113,'com.jx.theme.n1609532955'),(43,116,''),(44,117,''),(45,118,'(.*)'),(46,119,'(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,1,0),(3,1,0),(4,1,0),(5,6,0),(6,7,0),(7,6,0),(8,8,0),(9,8,0),(10,9,0),(11,8,0),(12,8,0),(13,9,0),(14,8,0),(15,9,0),(16,8,0),(17,10,0),(18,13,0),(19,13,0),(20,14,0),(21,15,0),(22,16,0),(23,17,0),(24,20,0),(25,21,0),(26,23,0),(27,27,0),(28,27,0),(29,28,0),(30,29,0),(31,30,0),(32,30,0),(33,31,0),(34,31,0),(35,31,0),(36,30,0),(37,32,0),(38,33,0),(39,34,0),(40,35,0),(41,36,0),(42,37,0),(43,38,0),(44,39,0),(45,40,0),(46,41,0),(47,37,0),(48,42,0),(49,33,0),(50,43,0),(51,44,0),(52,45,0),(53,46,0),(54,47,0),(55,48,0),(56,49,0),(57,42,0),(58,50,0),(59,51,0),(60,52,0),(61,53,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,5,0,0),(2,9,0,0),(3,10,0,0),(4,11,0,0),(5,14,0,0),(6,16,0,0),(7,31,1,0),(8,32,0,0),(9,34,1,0),(10,35,1,0),(11,36,1,0),(12,37,0,0),(13,38,0,0),(14,39,1,0),(15,40,1,0),(16,42,1,0),(17,43,1,0),(18,44,0,0),(19,45,1,0),(20,46,1,0),(21,47,1,0),(22,48,1,0),(23,49,1,0),(24,48,1,0),(25,50,1,0),(26,52,1,0),(27,54,1,0),(28,56,1,0),(29,58,0,0),(30,59,1,0),(31,62,1,0),(32,63,0,0),(33,66,0,0),(34,67,1,0),(35,70,1,0),(36,71,1,0),(37,73,0,0),(38,74,1,0),(39,78,1,0),(40,79,1,0),(41,81,0,0),(42,84,1,0),(43,83,1,0),(44,83,0,0),(45,87,1,0),(46,83,0,0),(47,88,1,0),(48,83,1,0),(49,83,0,0),(50,89,1,0),(51,83,0,0),(52,90,1,0),(53,83,1,0),(54,91,1,0),(55,83,1,0),(56,83,0,0),(57,83,1,0),(58,93,1,0),(59,94,0,0),(60,95,0,0),(61,93,0,0),(62,96,1,0),(63,93,1,0),(64,96,1,0),(65,97,1,0),(66,96,1,0),(67,93,1,0),(68,96,1,0),(69,93,0,0),(70,96,1,0),(71,99,1,0),(72,96,1,0),(73,93,1,0),(74,100,1,0),(75,96,1,0),(76,93,0,0),(77,96,1,0),(78,93,0,0),(79,101,0,0),(80,102,1,0),(81,93,1,0),(82,104,1,0),(83,93,0,0),(84,105,1,0),(85,106,1,0),(86,109,1,0),(87,111,0,0),(88,110,1,0),(89,109,1,0),(90,110,1,0),(91,109,1,0),(92,112,1,0),(93,109,1,0),(94,109,1,0),(95,113,1,0),(96,114,1,0),(97,115,1,0),(98,116,1,0),(99,117,1,0),(100,118,1,0),(101,120,1,0),(102,121,1,0),(103,122,1,0),(104,123,1,0),(105,124,1,0),(106,126,1,0),(107,127,1,0),(108,127,1,0),(109,127,1,0),(110,127,1,0),(111,127,1,0),(112,128,1,0),(113,130,0,0),(114,131,1,0),(115,132,1,0),(116,133,0,0),(117,133,0,0),(118,133,0,0),(119,133,0,0),(120,134,1,0);
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
INSERT INTO `PermissionStrings` VALUES (11,'android.permission.ACCESS_NETWORK_STATE'),(19,'android.permission.CALL_PHONE'),(16,'android.permission.CHANGE_NETWORK_STATE'),(22,'android.permission.EXPAND_STATUS_BAR'),(4,'android.permission.GET_TASKS'),(20,'android.permission.GLOBAL_SEARCH_CONTROL'),(7,'android.permission.INTERNET'),(18,'android.permission.READ_CONTACTS'),(1,'android.permission.READ_PHONE_STATE'),(3,'android.permission.READ_SMS'),(14,'android.permission.RECEIVE_BOOT_COMPLETED'),(10,'android.permission.RECEIVE_MMS'),(9,'android.permission.RECEIVE_SMS'),(2,'android.permission.RECEIVE_WAP_PUSH'),(5,'android.permission.SEND_SMS'),(12,'android.permission.SET_WALLPAPER'),(21,'android.permission.SET_WALLPAPER_HINTS'),(23,'android.permission.VIBRATE'),(17,'android.permission.WAKE_LOCK'),(6,'android.permission.WRITE_APN_SETTINGS'),(13,'android.permission.WRITE_EXTERNAL_STORAGE'),(15,'android.permission.WRITE_SETTINGS'),(8,'android.permission.WRITE_SMS'),(29,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(28,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(26,'com.android.launcher.permission.INSTALL_SHORTCUT'),(24,'com.android.launcher.permission.READ_SETTINGS'),(27,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(25,'com.android.launcher.permission.WRITE_SETTINGS');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Providers`
--

LOCK TABLES `Providers` WRITE;
/*!40000 ALTER TABLE `Providers` DISABLE KEYS */;
INSERT INTO `Providers` VALUES (1,22,0,NULL,'com.android.launcher.permission.WRITE_SETTINGS');
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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(2,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(3,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(4,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(5,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(6,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(7,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(8,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(9,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(10,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(11,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(12,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(13,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(14,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(15,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(16,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(17,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(18,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(19,'package','',NULL,NULL,NULL,NULL),(20,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(21,'package','',NULL,NULL,NULL,NULL),(22,'package','',NULL,NULL,NULL,NULL),(23,'package','',NULL,NULL,NULL,NULL),(24,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(25,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(26,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(27,'package','',NULL,NULL,NULL,NULL),(28,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(29,'package','',NULL,NULL,NULL,NULL),(30,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(31,'package','',NULL,NULL,NULL,NULL),(32,NULL,NULL,'http://se.zxin.cc?prod=search&op=redirect&id=10&v=7&ky=(.*)',NULL,NULL,NULL),(33,'package','',NULL,NULL,NULL,NULL),(34,NULL,NULL,'http://se.zxin.cc?prod=search&op=redirect&id=10&v=7&ky=NULL-CONSTANT',NULL,NULL,NULL),(35,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(36,'package','',NULL,NULL,NULL,NULL),(37,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=false',NULL,NULL,NULL),(38,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(39,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(40,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(41,'package','',NULL,NULL,NULL,NULL),(42,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(43,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(44,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(45,'package','',NULL,NULL,NULL,NULL),(46,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(47,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(48,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(49,'package','',NULL,NULL,NULL,NULL),(50,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(51,'package','',NULL,NULL,NULL,NULL),(52,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(53,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(54,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(55,'package','',NULL,NULL,NULL,NULL),(56,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(57,'package','',NULL,NULL,NULL,NULL),(58,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(59,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(60,'package','',NULL,NULL,NULL,NULL),(61,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(62,'package','',NULL,NULL,NULL,NULL),(63,'package','',NULL,NULL,NULL,NULL),(64,'package','',NULL,NULL,NULL,NULL),(65,'package','',NULL,NULL,NULL,NULL),(66,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(67,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(68,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(69,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(70,'package','',NULL,NULL,NULL,NULL),(71,'package','',NULL,NULL,NULL,NULL),(72,'package','',NULL,NULL,NULL,NULL),(73,'package','',NULL,NULL,NULL,NULL),(74,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(75,'tel','(.*)',NULL,NULL,NULL,NULL),(76,'package','',NULL,NULL,NULL,NULL),(77,'package','',NULL,NULL,NULL,NULL),(78,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(79,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(80,'package','',NULL,NULL,NULL,NULL),(81,'package','',NULL,NULL,NULL,NULL),(82,'package','',NULL,NULL,NULL,NULL),(83,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(84,'package','',NULL,NULL,NULL,NULL),(85,'package','',NULL,NULL,NULL,NULL),(86,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(87,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(88,'package','',NULL,NULL,NULL,NULL),(89,'package','',NULL,NULL,NULL,NULL),(90,'package','',NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,1,1),(2,3,2),(3,4,3),(4,6,4),(5,7,5),(6,13,6),(7,15,7),(8,17,8),(9,18,9),(10,19,10),(11,20,11),(12,22,12),(13,23,13),(14,24,14),(15,25,15),(16,29,17),(17,28,16),(18,30,18),(19,33,20),(20,41,28),(21,51,35),(22,53,37),(23,53,38),(24,55,39),(25,60,40),(26,61,42),(27,65,44),(28,68,46),(29,69,47),(30,72,48),(31,75,52),(32,76,53),(33,77,54),(34,80,56),(35,82,58),(36,85,59),(37,86,61),(38,92,66),(39,103,69),(40,119,83),(41,125,87);
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,2,17),(13,2,16),(14,2,1),(15,2,5),(16,2,6),(17,2,7),(18,2,9),(19,2,10),(20,2,11),(21,2,12),(22,2,13),(23,2,14),(24,2,15),(25,3,1),(26,3,2),(27,3,3),(28,3,4),(29,3,5),(30,3,6),(31,3,7),(32,3,8),(33,3,9),(34,3,10),(35,3,11),(36,3,12),(37,3,15),(38,3,19),(39,3,18),(40,3,21),(41,3,20),(42,3,23),(43,3,22),(44,3,25),(45,3,24),(46,4,1),(47,4,5),(48,4,6),(49,4,7),(50,4,9),(51,4,10),(52,4,11),(53,4,12),(54,4,13),(55,4,14),(56,4,15),(57,4,17),(58,4,16),(59,4,29),(60,4,28);
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
