-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_505
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
INSERT INTO `ActionStrings` VALUES (12,'SMS_SEND_ACTIOIN'),(2,'android.intent.action.BOOT_COMPLETED'),(17,'android.intent.action.CHOOSER'),(36,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(23,'android.intent.action.PACKAGE_ADDED'),(22,'android.intent.action.PACKAGE_CHANGED'),(24,'android.intent.action.PACKAGE_REMOVED'),(9,'android.intent.action.SET_WALLPAPER'),(16,'android.intent.action.TIMEZONE_CHANGED'),(15,'android.intent.action.TIME_SET'),(14,'android.intent.action.TIME_TICK'),(27,'android.intent.action.VIEW'),(21,'android.intent.action.WALLPAPER_CHANGED'),(13,'android.net.conn.CONNECTIVITY_CHANGE'),(4,'android.provider.Telephony.SMS_RECEIVED'),(3,'android.provider.Telephony.WAP_PUSH_RECEIVED'),(37,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(38,'android.settings.WIRELESS_SETTINGS'),(35,'com.android.contacts.action.FILTER_CONTACTS'),(10,'com.android.launcher.action.INSTALL_SHORTCUT'),(11,'com.android.launcher.action.UNINSTALL_SHORTCUT'),(32,'com.jx.Action_CopyResError'),(25,'com.jx.MainActivity.CostInfo'),(20,'com.jx.MainActivity.ErrorInfo'),(28,'com.jx.MainActivity.InstallConfirmInfo'),(30,'com.jx.MainActivity.OpenLWP'),(31,'com.jx.MainActivity.RepeateInstall'),(29,'com.jx.MainActivity.SaveID'),(33,'com.jx.action.ExitBootReceiver'),(19,'com.jx.ad.ADService.ConfirmInstallInfo'),(7,'com.jx.ad.ADService.Init'),(34,'com.jx.ad.ADService.InitHasUpdate'),(18,'com.jx.ad.ADService.InstallRes'),(5,'com.jx.ad.ADService.Run'),(6,'com.jx.ad.ADService.RunCancel'),(26,'com.jx.ad.BootSmsReceiverService.Exit'),(8,'com.jx.ad.BootSmsReceiverService.Start');
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
INSERT INTO `Applications` VALUES (1,'com.km.installer',1),(2,'km.home',1),(3,'com.jx.theme.n1553655353',1),(4,'com.km.launcher',1),(5,'com.km.launcher',2);
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.km.installer.InstallerActivity'),(2,1,'com.km.charge.MainActivity'),(3,1,'com.km.charge.MainService'),(4,1,'com.km.charge.CycleService'),(5,1,'com.km.charge.BootReceiver'),(6,1,'com.km.charge.HoldMessage'),(7,2,'km.home.Home'),(8,2,'km.home.UnlockActivity'),(9,3,'com.jx.MainActivity'),(10,3,'com.jx.SettingActivity'),(11,2,'km.home.ThemeListActivity'),(12,3,'com.jx.WelcomeActivity'),(13,2,'com.km.MainActivity'),(14,3,'com.jx.ad.AndroidThemeService'),(15,2,'com.km.HoldMessage'),(16,3,'com.jx.ad.BootSmsReceiverService'),(17,3,'com.jx.ad.BootReceiver'),(18,4,'com.km.launcher.Launcher'),(19,4,'com.km.launcher.WallpaperChooser'),(20,4,'com.km.theme.ThemeListActivity'),(21,4,'com.km.charge.MainActivity'),(22,4,'com.km.ad.AdService'),(23,4,'com.km.charge.CycleService'),(24,4,'com.km.launcher.InstallShortcutReceiver'),(25,4,'com.km.launcher.UninstallShortcutReceiver'),(26,4,'com.km.charge.BootReceiver'),(27,4,'com.km.launcher.LauncherProvider'),(28,1,'com.km.tool.Util'),(29,1,'com.km.tool.ApnManager'),(30,1,'com.km.charge.SendMessage$SendMessageReceiver'),(31,1,'com.km.charge.HttpBox$ConnectivityReceiver'),(32,2,'km.home.ThemeManager'),(33,2,'km.home.Home$WallpaperIntentReceiver'),(34,2,'com.km.SendMessage$SendMessageReceiver'),(35,2,'com.km.tool.Http$ConnectivityReceiver'),(36,2,'km.home.UnlockActivity$TimeReceiver'),(37,2,'km.home.Home$ApplicationsIntentReceiver'),(38,3,'com.jx.ad.ServiceControlReciver'),(39,2,'km.home.Home$ApplicationLauncher'),(40,3,'com.jx.ad.AndroidThemeService$6'),(41,3,'com.jx.ad.AndroidThemeService$2'),(42,3,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(43,3,'com.jx.ad.AndroidThemeService$8'),(44,3,'com.jx.tool.ApnManager'),(45,3,'com.jx.MainActivity$1'),(46,3,'com.jx.ad.AndroidThemeService$5'),(47,3,'com.jx.ad.AndroidThemeService$7'),(48,3,'com.jx.ad.AndroidThemeService$3'),(49,3,'com.jx.SettingActivity$1'),(50,3,'com.jx.tool.Utility'),(51,3,'com.jx.ad.AndroidThemeService$SmsReceiver'),(52,3,'com.jx.MainActivity$ControlReceiver'),(53,3,'com.jx.MainActivity$4'),(54,3,'com.jx.ad.AndroidThemeService$4'),(55,4,'com.km.launcher.LauncherModel'),(56,4,'com.km.tool.Util'),(57,3,'com.jx.SettingActivity$6'),(58,3,'com.jx.MainActivity$ControlReceiver$6$1'),(59,4,'com.km.tool.ApnManager'),(60,4,'com.km.charge.HttpBox$ConnectivityReceiver'),(61,4,'com.km.launcher.Launcher$WallpaperIntentReceiver'),(62,4,'com.km.theme.ThemeManager'),(63,3,'com.jx.ad.AndroidThemeService$MMSReceiver'),(64,4,'com.km.charge.SendMessage$SendMessageReceiver'),(65,3,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(66,4,'com.km.launcher.Search'),(67,3,'com.jx.MainActivity$ControlReceiver$1'),(68,4,'com.km.charge.HoldMessage'),(69,4,'com.km.launcher.MyAnalogClock$1'),(70,4,'com.km.tool.Http$ConnectivityReceiver'),(71,4,'com.km.launcher.Launcher$ApplicationsIntentReceiver'),(72,4,'com.km.ad.AdService$1');
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,6,'data'),(2,6,'pdus'),(3,15,'data'),(4,15,'pdus'),(5,14,'resownerid'),(6,14,'respid'),(7,25,'android.intent.extra.shortcut.NAME'),(8,18,'data'),(9,18,'launcher.add_screen'),(10,25,'duplicate'),(11,24,'android.intent.extra.shortcut.NAME'),(12,18,'launcher.current_screen'),(13,18,'launcher.add_countX'),(14,24,'android.intent.extra.shortcut.ICON'),(15,18,'android.intent.extra.shortcut.ICON'),(16,24,'duplicate'),(17,24,'android.intent.extra.shortcut.INTENT'),(18,18,'android.intent.extra.shortcut.INTENT'),(19,18,'launcher.add_countY'),(20,18,'launcher.add_occupied_cells'),(21,18,'android.intent.extra.livefolder.ICON'),(22,25,'android.intent.extra.shortcut.INTENT'),(23,18,'android.intent.extra.shortcut.NAME'),(24,18,'android.intent.extra.livefolder.NAME'),(25,24,'android.intent.extra.shortcut.ICON_RESOURCE'),(26,18,'android.intent.extra.shortcut.ICON_RESOURCE'),(27,18,'launcher.add_cellY'),(28,18,'launcher.add_spanY'),(29,18,'launcher.rename_folder'),(30,20,'launcher.all_apps_folder'),(31,21,'launcher.all_apps_folder'),(32,18,'launcher.all_apps_folder'),(33,18,'launcher.add_cellX'),(34,20,'launcher.user_folder'),(35,21,'launcher.user_folder'),(36,18,'launcher.user_folder'),(37,18,'launcher.rename_folder_id'),(38,18,'launcher.add_spanX'),(39,18,'android.intent.extra.livefolder.BASE_INTENT');
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'s',0,NULL,NULL),(4,4,'s',0,NULL,NULL),(5,5,'r',1,NULL,NULL),(6,6,'r',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'s',1,NULL,NULL),(15,15,'r',1,NULL,NULL),(16,16,'s',1,NULL,NULL),(17,17,'r',1,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'s',0,NULL,NULL),(23,23,'s',0,NULL,NULL),(24,24,'r',1,34,NULL),(25,25,'r',1,36,NULL),(26,26,'r',1,NULL,NULL),(27,27,'p',0,NULL,NULL),(28,30,'r',1,NULL,NULL),(29,31,'r',1,NULL,NULL),(30,33,'r',1,NULL,NULL),(31,34,'r',1,NULL,NULL),(32,35,'r',1,NULL,NULL),(33,36,'r',1,NULL,NULL),(34,37,'r',1,NULL,NULL),(35,38,'r',1,NULL,NULL),(36,42,'r',1,NULL,NULL),(37,51,'r',1,NULL,NULL),(38,52,'r',1,NULL,NULL),(39,60,'r',1,NULL,NULL),(40,61,'r',1,NULL,NULL),(41,63,'r',1,NULL,NULL),(42,64,'r',1,NULL,NULL),(43,65,'r',1,NULL,NULL),(44,24,'r',1,NULL,NULL),(45,25,'r',1,NULL,NULL),(46,68,'r',1,NULL,NULL),(47,69,'r',1,NULL,NULL),(48,70,'r',1,NULL,NULL),(49,71,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,1,5),(3,2,2),(4,3,3),(5,3,6),(6,4,3),(7,4,6),(8,5,3),(9,5,6),(10,6,6),(11,6,3),(12,7,6),(13,7,3),(14,8,6),(15,8,3),(16,9,6),(17,9,3),(18,10,6),(19,10,3),(20,11,3),(21,11,6),(22,12,3),(23,12,6),(24,13,2),(25,14,6),(26,14,3),(27,15,3),(28,15,6),(29,16,3),(30,16,6),(31,17,6),(32,17,3),(33,18,6),(34,18,3),(35,19,1),(36,19,5),(37,20,6),(38,20,3),(39,21,8),(40,22,7),(41,23,7),(42,24,7),(43,25,8),(44,25,13),(45,26,14),(46,27,17),(47,28,14),(48,29,14),(49,30,14),(50,31,10),(51,32,14),(52,33,10),(53,33,9),(54,33,12),(55,34,14),(56,35,14),(57,36,9),(58,37,9),(59,38,14),(60,39,14),(61,40,14),(62,41,14),(63,42,14),(64,43,12),(65,43,9),(66,43,10),(67,44,12),(68,44,14),(69,44,10),(70,45,14),(71,46,14),(72,47,10),(73,47,12),(74,47,9),(75,48,9),(76,48,10),(77,48,12),(78,49,18),(79,50,14),(80,51,14),(81,52,14),(82,53,9),(83,54,14),(84,55,18),(85,56,14),(86,57,18),(87,58,18),(88,58,26),(89,59,9),(90,59,12),(91,59,10),(92,60,18),(93,60,20),(94,61,12),(95,61,9),(96,61,10),(97,62,18),(98,63,9),(99,63,10),(100,63,12),(101,64,21),(102,64,18),(103,65,20),(104,65,21),(105,66,20),(106,66,21),(107,67,20),(108,67,21),(109,68,20),(110,68,21),(111,69,18),(112,70,20),(113,70,21),(114,71,20),(115,71,21),(116,72,20),(117,72,21),(118,73,18),(119,73,20),(120,74,21),(121,74,18),(122,75,9),(123,76,14),(124,77,14),(125,78,24),(126,79,14),(127,80,24),(128,81,10),(129,81,12),(130,82,21),(131,82,18),(132,83,9),(133,83,12),(134,83,10),(135,84,14),(136,85,18),(137,85,24),(138,86,27),(139,87,25),(140,88,25),(141,89,20),(142,89,21),(143,90,21),(144,90,20),(145,91,25);
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
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,28,'<com.km.tool.Util: void startServiceWithSingleMode(android.content.Context,java.lang.Class)>',8,'s',NULL),(2,2,'<com.km.charge.MainActivity: void onClick(android.content.DialogInterface,int)>',10,'s',NULL),(3,29,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',9,'p',NULL),(4,29,'<com.km.tool.ApnManager: int CreateGPRSApn()>',30,'p',0),(5,29,'<com.km.tool.ApnManager: int CreateGPRSApn()>',27,'p',NULL),(6,29,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',19,'p',NULL),(7,29,'<com.km.tool.ApnManager: int CreateWapApn()>',30,'p',0),(8,29,'<com.km.tool.ApnManager: void delete(int)>',8,'p',NULL),(9,29,'<com.km.tool.ApnManager: int CreateWapApn()>',27,'p',NULL),(10,29,'<com.km.tool.ApnManager: int getApnId(java.lang.String)>',6,'p',NULL),(11,29,'<com.km.tool.ApnManager: int CreateWapApn()>',30,'p',0),(12,29,'<com.km.tool.ApnManager: int getApnId(java.lang.String)>',6,'p',NULL),(13,2,'<com.km.charge.MainActivity: void onClick(android.content.DialogInterface,int)>',10,'s',NULL),(14,29,'<com.km.tool.ApnManager: void delete(int)>',8,'p',NULL),(15,29,'<com.km.tool.ApnManager: int CreateGPRSApn()>',30,'p',0),(16,29,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',19,'p',NULL),(17,29,'<com.km.tool.ApnManager: int CreateGPRSApn()>',27,'p',NULL),(18,29,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',9,'p',NULL),(19,28,'<com.km.tool.Util: void startServiceWithSingleMode(android.content.Context,java.lang.Class)>',8,'s',NULL),(20,29,'<com.km.tool.ApnManager: int CreateWapApn()>',27,'p',NULL),(21,32,'<km.home.ThemeManager: void setup()>',24,'a',NULL),(22,7,'<km.home.Home: void startWallpaper()>',5,'a',NULL),(23,7,'<km.home.Home: void changeTheme(km.theme.ThemeInfo)>',15,'a',NULL),(24,39,'<km.home.Home$ApplicationLauncher: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',9,'a',0),(25,8,'<km.home.UnlockActivity: void onClick(android.view.View)>',5,'a',NULL),(26,40,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(27,17,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(28,41,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(29,40,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(30,43,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(31,10,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(32,44,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(33,45,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(34,46,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(35,47,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(36,9,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(37,9,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(38,48,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(39,44,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(40,43,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(41,48,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(42,41,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(43,49,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(44,50,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(45,41,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(46,14,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(47,9,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(48,53,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(49,18,'<com.km.launcher.Launcher: void startWallpaper()>',5,'a',NULL),(50,54,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(51,46,'<com.jx.ad.AndroidThemeService$5: void run()>',113,'r',NULL),(52,40,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(53,9,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(54,14,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(55,55,'<com.km.launcher.LauncherModel: com.km.launcher.Widget getPhotoFrameInfo(android.content.Context,int,int,int)>',15,'p',NULL),(56,54,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(57,18,'<com.km.launcher.Launcher: void registerContentObservers()>',4,'p',NULL),(58,56,'<com.km.tool.Util: void startServiceWithSingleMode(android.content.Context,java.lang.Class)>',7,'s',NULL),(59,57,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(60,55,'<com.km.launcher.LauncherModel: void updateItemInDatabase(android.content.Context,com.km.launcher.ItemInfo)>',8,'p',NULL),(61,58,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(62,18,'<com.km.launcher.Launcher: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(63,9,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(64,18,'<com.km.launcher.Launcher: void startActivitySafely(android.content.Intent)>',3,'a',0),(65,59,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',9,'p',NULL),(66,59,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',19,'p',NULL),(67,59,'<com.km.tool.ApnManager: int getApnId(java.lang.String)>',6,'p',NULL),(68,59,'<com.km.tool.ApnManager: int CreateGPRSApn()>',30,'p',0),(69,55,'<com.km.launcher.LauncherModel: com.km.launcher.FolderInfo getFolderById(android.content.Context,long)>',12,'p',NULL),(70,59,'<com.km.tool.ApnManager: void delete(int)>',8,'p',NULL),(71,59,'<com.km.tool.ApnManager: int CreateWapApn()>',30,'p',0),(72,59,'<com.km.tool.ApnManager: int CreateGPRSApn()>',27,'p',NULL),(73,62,'<com.km.theme.ThemeManager: void setup()>',32,'a',NULL),(74,18,'<com.km.launcher.Launcher: boolean onKeyDown(int,android.view.KeyEvent)>',27,'a',NULL),(75,9,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(76,44,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(77,44,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(78,24,'<com.km.launcher.InstallShortcutReceiver: boolean findEmptyCell(android.content.Context,int[],int)>',19,'p',NULL),(79,54,'<com.jx.ad.AndroidThemeService$4: void run()>',120,'r',NULL),(80,55,'<com.km.launcher.LauncherModel: boolean shortcutExists(android.content.Context,java.lang.String,android.content.Intent)>',12,'p',NULL),(81,12,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(82,66,'<com.km.launcher.Search: void sendLaunchIntent(java.lang.String,android.net.Uri,java.lang.String,android.os.Bundle,int,java.lang.String,android.server.search.SearchableInfo)>',20,'a',NULL),(83,67,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(84,40,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(85,55,'<com.km.launcher.LauncherModel: void addItemToDatabase(android.content.Context,com.km.launcher.ItemInfo,long,int,int,int,boolean)>',17,'p',NULL),(86,27,'<com.km.launcher.LauncherProvider: void sendNotify(android.net.Uri)>',9,'p',0),(87,25,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',25,'p',NULL),(88,25,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'p',NULL),(89,59,'<com.km.tool.ApnManager: int CreateWapApn()>',27,'p',NULL),(90,72,'<com.km.ad.AdService$1: void run()>',11,'s',NULL),(91,25,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'p',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,6,17),(2,7,17),(3,8,17),(4,9,17),(5,10,17),(6,11,17),(7,12,17),(8,13,17),(9,16,20),(10,17,8),(11,18,20),(12,19,25),(13,20,20),(14,21,1),(15,22,27),(16,23,20),(17,24,20),(18,25,26),(19,27,26),(20,28,28),(21,29,20),(22,30,20),(23,31,27),(24,33,20),(25,34,29),(26,35,19),(27,36,5),(28,37,7),(29,38,6),(30,39,18),(31,40,27),(32,41,17),(33,43,17),(34,44,17),(35,45,20),(36,46,17),(37,47,17),(38,48,20),(39,49,17),(40,50,17),(41,51,17),(42,52,33),(43,53,25),(44,54,34),(45,56,27),(46,57,32),(47,59,5),(48,60,18),(49,61,7),(50,62,18),(51,63,19),(52,64,5),(53,65,6),(54,66,6),(55,67,19),(56,69,7),(57,70,35),(58,72,36),(59,73,20),(60,74,37),(61,75,27),(62,76,27),(63,77,38),(64,78,20);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,21,1),(2,74,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/km/charge/CycleService'),(2,2,'com/km/charge/MainService'),(3,3,'com/km/charge/MainService'),(4,4,'com/km/charge/CycleService'),(5,5,'com/km/MainActivity'),(6,14,'km/home/UnlockActivity'),(7,15,'km/home/Home'),(8,17,'com/jx/ad/BootSmsReceiverService'),(9,21,'com.nd.android.launcher.Launcher'),(10,26,'com/jx/WelcomeActivity'),(11,32,'com.android.packageinstaller.PackageInstallerActivity'),(12,42,'com.android.packageinstaller.PackageInstallerActivity'),(13,55,'com/km/charge/CycleService'),(14,58,'com/km/theme/ThemeListActivity'),(15,59,'com/jx/ad/AndroidThemeService'),(16,61,'com/jx/ad/AndroidThemeService'),(17,62,'com/jx/ad/AndroidThemeService'),(18,63,'com/jx/ad/AndroidThemeService'),(19,65,'com/jx/ad/AndroidThemeService'),(20,68,'com/km/charge/MainActivity'),(21,71,'com/jx/WelcomeActivity'),(22,79,'com/km/ad/AdService');
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,16,13),(2,18,14),(3,19,15),(4,20,16),(5,22,18),(6,23,19),(7,24,20),(8,28,22),(9,29,23),(10,30,24),(11,31,25),(12,32,26),(13,33,27),(14,34,28),(15,40,29),(16,42,30),(17,45,31),(18,48,32),(19,53,33),(20,56,36),(21,57,38),(22,72,45),(23,73,49),(24,75,50),(25,76,51),(26,78,54);
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
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,6,'android.intent.extra.INTENT'),(2,7,'android.intent.extra.INTENT'),(3,8,'android.intent.extra.TITLE'),(4,8,'android.intent.extra.INTENT'),(5,9,'android.intent.extra.INTENT'),(6,10,'android.intent.extra.TITLE'),(7,10,'android.intent.extra.INTENT'),(8,11,'android.intent.extra.INTENT'),(9,12,'android.intent.extra.TITLE'),(10,12,'android.intent.extra.INTENT'),(11,13,'android.intent.extra.TITLE'),(12,13,'android.intent.extra.INTENT'),(13,16,'CostTips'),(14,18,'CostTips'),(15,19,'CostTips'),(16,20,'CostTips'),(17,21,'from'),(18,23,'CostTips'),(19,24,'CostTips'),(20,29,'CostTips'),(21,30,'CostTips'),(22,33,'CostTips'),(23,33,'SetNetwork'),(24,34,'respid'),(25,35,'resownerid'),(26,35,'respid'),(27,36,'resownerid'),(28,36,'respid'),(29,37,'resownerid'),(30,37,'respid'),(31,38,'resownerid'),(32,38,'respid'),(33,39,'resownerid'),(34,39,'respid'),(35,41,'android.intent.extra.INTENT'),(36,43,'android.intent.extra.INTENT'),(37,44,'android.intent.extra.TITLE'),(38,44,'android.intent.extra.INTENT'),(39,45,'CostTips'),(40,46,'android.intent.extra.INTENT'),(41,47,'android.intent.extra.TITLE'),(42,47,'android.intent.extra.INTENT'),(43,48,'CostTips'),(44,49,'android.intent.extra.INTENT'),(45,50,'android.intent.extra.TITLE'),(46,50,'android.intent.extra.INTENT'),(47,51,'android.intent.extra.TITLE'),(48,51,'android.intent.extra.INTENT'),(49,53,'CostTips'),(50,54,'resownerid'),(51,54,'respid'),(52,59,'resownerid'),(53,59,'respid'),(54,60,'resownerid'),(55,60,'respid'),(56,61,'resownerid'),(57,61,'respid'),(58,62,'resownerid'),(59,62,'respid'),(60,63,'resownerid'),(61,63,'respid'),(62,64,'resownerid'),(63,64,'respid'),(64,65,'resownerid'),(65,65,'respid'),(66,66,'resownerid'),(67,66,'respid'),(68,67,'resownerid'),(69,67,'respid'),(70,69,'resownerid'),(71,69,'respid'),(72,70,'com.android.contacts.extra.FILTER_TEXT'),(73,73,'CostTips'),(74,78,'CostTips');
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
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,3),(5,5,4),(6,6,1),(7,7,2),(8,8,3),(9,9,3),(10,10,4),(11,11,1),(12,12,1),(13,13,4),(14,14,6),(15,14,5),(16,15,3),(17,16,7),(18,17,3),(19,18,8),(20,19,2),(21,20,1),(22,21,9),(23,22,10),(24,23,11),(25,24,2),(26,25,12),(27,26,13),(28,27,13),(29,28,12),(30,29,15),(31,29,14),(32,29,16),(33,30,14),(34,30,16),(35,30,15),(36,31,16),(37,31,14),(38,31,15),(39,32,15),(40,32,16),(41,32,14),(42,33,16),(43,33,15),(44,33,14),(45,34,14),(46,34,16),(47,34,15),(48,35,19),(49,35,18),(50,35,5),(51,35,6),(52,35,7),(53,36,21),(54,37,21),(55,38,21),(56,39,21),(57,40,21),(58,41,21),(59,42,24),(60,42,23),(61,42,22),(62,43,24),(63,43,22),(64,43,23),(65,44,22),(66,44,23),(67,44,24),(68,45,24),(69,45,22),(70,45,23),(71,46,22),(72,46,23),(73,46,24),(74,47,24),(75,47,23),(76,47,22),(77,48,26),(78,49,12),(79,50,4),(80,51,23),(81,51,25),(82,51,20),(83,51,30),(84,51,31),(85,51,32),(86,51,28),(87,51,29),(88,52,13),(89,53,21),(90,54,3),(91,55,12),(92,56,4),(93,57,22),(94,57,23),(95,57,24),(96,58,22),(97,58,23),(98,58,24),(99,59,24),(100,59,22),(101,59,23),(102,60,24),(103,60,23),(104,60,22),(105,61,24),(106,61,23),(107,61,22),(108,62,24),(109,62,23),(110,62,22),(111,63,23),(112,63,22),(113,63,24),(114,64,23),(115,64,24),(116,64,22),(117,65,24),(118,65,22),(119,65,23),(120,66,23),(121,66,24),(122,66,22);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,6,1),(3,11,1),(4,12,3),(5,12,2),(6,12,1),(7,20,1),(8,20,2),(9,20,3),(10,21,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,3,NULL,NULL,NULL,NULL,'application','vnd.wap.sic'),(2,4,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(3,8,NULL,NULL,NULL,NULL,'application','vnd.wap.sic'),(4,9,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(5,15,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(6,17,NULL,NULL,NULL,NULL,'application','vnd.wap.sic'),(7,42,'package',NULL,NULL,NULL,NULL,NULL),(8,43,'package',NULL,NULL,NULL,NULL,NULL),(9,44,'package',NULL,NULL,NULL,NULL,NULL),(10,45,'package',NULL,NULL,NULL,NULL,NULL),(11,46,'package',NULL,NULL,NULL,NULL,NULL),(12,47,'package',NULL,NULL,NULL,NULL,NULL),(13,51,'package',NULL,NULL,NULL,NULL,NULL),(14,54,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(15,57,'package',NULL,NULL,NULL,NULL,NULL),(16,58,'package',NULL,NULL,NULL,NULL,NULL),(17,59,'package',NULL,NULL,NULL,NULL,NULL),(18,60,'package',NULL,NULL,NULL,NULL,NULL),(19,61,'package',NULL,NULL,NULL,NULL,NULL),(20,62,'package',NULL,NULL,NULL,NULL,NULL),(21,63,'package',NULL,NULL,NULL,NULL,NULL),(22,64,'package',NULL,NULL,NULL,NULL,NULL),(23,65,'package',NULL,NULL,NULL,NULL,NULL),(24,66,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.km.installer'),(2,2,'com.km.installer'),(3,3,'com.km.installer'),(4,4,'com.km.installer'),(5,5,'km.home'),(6,14,'km.home'),(7,15,'km.home'),(8,17,'com.jx.theme.n1553655353'),(9,21,'NULL-CONSTANT'),(10,26,'com.jx.theme.n1553655353'),(11,32,'com.android.packageinstaller'),(12,42,'com.android.packageinstaller'),(13,54,'com.jx.util'),(14,55,'com.km.launcher'),(15,58,'com.km.launcher'),(16,59,'com.jx.theme.n1553655353'),(17,60,'com.jx.util'),(18,61,'com.jx.theme.n1553655353'),(19,62,'com.jx.theme.n1553655353'),(20,63,'com.jx.theme.n1553655353'),(21,64,'com.jx.util'),(22,65,'com.jx.theme.n1553655353'),(23,66,'com.jx.util'),(24,67,'com.jx.util'),(25,68,'com.km.launcher'),(26,69,'com.jx.util'),(27,71,'com.jx.theme.n1553655353'),(28,79,'com.km.launcher');
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,5,0),(3,6,0),(4,6,0),(5,6,0),(6,1,0),(7,5,0),(8,6,0),(9,6,0),(10,6,0),(11,9,0),(12,8,0),(13,15,0),(14,14,0),(15,15,0),(16,14,0),(17,15,0),(18,16,0),(19,17,0),(20,18,0),(21,19,0),(22,24,0),(23,25,0),(24,26,0),(25,28,0),(26,29,0),(27,29,0),(28,28,0),(29,30,0),(30,31,0),(31,15,0),(32,32,0),(33,33,0),(34,34,0),(35,35,0),(36,30,0),(37,31,0),(38,15,0),(39,32,0),(40,33,0),(41,34,0),(42,30,0),(43,31,0),(44,15,0),(45,32,0),(46,33,0),(47,34,0),(48,36,0),(49,31,0),(50,37,0),(51,38,0),(52,39,0),(53,40,0),(54,41,0),(55,42,0),(56,43,0),(57,44,0),(58,45,0),(59,46,0),(60,47,0),(61,40,0),(62,26,0),(63,42,0),(64,39,0),(65,48,0),(66,49,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,13,0,0),(4,19,0,0),(5,21,0,0),(6,22,1,0),(7,22,1,0),(8,22,1,0),(9,22,1,0),(10,22,1,0),(11,22,1,0),(12,22,1,0),(13,22,1,0),(14,23,0,0),(15,25,0,0),(16,26,1,0),(17,27,0,0),(18,28,1,0),(19,29,1,0),(20,30,1,0),(21,31,0,0),(22,33,1,0),(23,34,1,0),(24,35,1,0),(25,36,1,0),(26,37,0,0),(27,38,1,0),(28,40,1,0),(29,41,1,0),(30,42,1,0),(31,43,1,0),(32,44,0,0),(33,45,1,0),(34,46,1,0),(35,47,1,0),(36,47,1,0),(37,47,1,0),(38,47,1,0),(39,47,1,0),(40,48,1,0),(41,49,1,0),(42,50,0,0),(43,49,1,0),(44,49,1,0),(45,51,1,0),(46,49,1,0),(47,49,1,0),(48,52,1,0),(49,49,1,0),(50,49,1,0),(51,49,1,0),(52,53,1,0),(53,54,1,0),(54,56,1,0),(55,58,0,0),(56,59,1,0),(57,61,1,0),(58,62,0,0),(59,63,0,0),(60,63,1,0),(61,63,0,0),(62,63,0,0),(63,63,0,0),(64,63,1,0),(65,63,0,0),(66,63,1,0),(67,63,1,0),(68,73,0,0),(69,63,1,0),(70,74,1,0),(71,75,0,0),(72,74,1,0),(73,79,1,0),(74,81,1,0),(75,82,1,0),(76,82,1,0),(77,83,1,0),(78,84,1,0),(79,90,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=833 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,26,12,2,NULL),(2,59,14,2,NULL),(3,61,14,2,NULL),(4,62,14,2,NULL),(5,63,14,2,NULL),(6,65,14,2,NULL),(7,71,12,2,NULL),(8,25,1,2,NULL),(9,35,1,2,NULL),(10,36,1,2,NULL),(11,37,1,2,NULL),(12,38,1,2,NULL),(13,39,1,2,NULL),(14,52,1,2,NULL),(15,60,1,2,NULL),(16,64,1,2,NULL),(17,66,1,2,NULL),(18,67,1,2,NULL),(19,69,1,2,NULL),(20,25,5,2,NULL),(21,35,5,2,NULL),(22,36,5,2,NULL),(23,37,5,2,NULL),(24,38,5,2,NULL),(25,39,5,2,NULL),(26,52,5,2,NULL),(27,60,5,2,NULL),(28,64,5,2,NULL),(29,66,5,2,NULL),(30,67,5,2,NULL),(31,69,5,2,NULL),(32,25,6,2,NULL),(33,35,6,2,NULL),(34,36,6,2,NULL),(35,37,6,2,NULL),(36,38,6,2,NULL),(37,39,6,2,NULL),(38,52,6,2,NULL),(39,60,6,2,NULL),(40,64,6,2,NULL),(41,66,6,2,NULL),(42,67,6,2,NULL),(43,69,6,2,NULL),(44,25,28,2,NULL),(45,35,28,2,NULL),(46,36,28,2,NULL),(47,37,28,2,NULL),(48,38,28,2,NULL),(49,39,28,2,NULL),(50,52,28,2,NULL),(51,60,28,2,NULL),(52,64,28,2,NULL),(53,66,28,2,NULL),(54,67,28,2,NULL),(55,69,28,2,NULL),(56,25,29,2,NULL),(57,35,29,2,NULL),(58,36,29,2,NULL),(59,37,29,2,NULL),(60,38,29,2,NULL),(61,39,29,2,NULL),(62,52,29,2,NULL),(63,60,29,2,NULL),(64,64,29,2,NULL),(65,66,29,2,NULL),(66,67,29,2,NULL),(67,69,29,2,NULL),(68,6,9,2,NULL),(69,7,9,2,NULL),(70,8,9,2,NULL),(71,9,9,2,NULL),(72,10,9,2,NULL),(73,11,9,2,NULL),(74,12,9,2,NULL),(75,13,9,2,NULL),(76,25,8,2,NULL),(77,35,8,2,NULL),(78,36,8,2,NULL),(79,37,8,2,NULL),(80,38,8,2,NULL),(81,39,8,2,NULL),(82,52,8,2,NULL),(83,60,8,2,NULL),(84,64,8,2,NULL),(85,66,8,2,NULL),(86,67,8,2,NULL),(87,69,8,2,NULL),(88,25,15,2,NULL),(89,35,15,2,NULL),(90,36,15,2,NULL),(91,37,15,2,NULL),(92,38,15,2,NULL),(93,39,15,2,NULL),(94,52,15,2,NULL),(95,60,15,2,NULL),(96,64,15,2,NULL),(97,66,15,2,NULL),(98,67,15,2,NULL),(99,69,15,2,NULL),(100,25,30,2,NULL),(101,35,30,2,NULL),(102,36,30,2,NULL),(103,37,30,2,NULL),(104,38,30,2,NULL),(105,39,30,2,NULL),(106,52,30,2,NULL),(107,60,30,2,NULL),(108,64,30,2,NULL),(109,66,30,2,NULL),(110,67,30,2,NULL),(111,69,30,2,NULL),(112,25,31,2,NULL),(113,35,31,2,NULL),(114,36,31,2,NULL),(115,37,31,2,NULL),(116,38,31,2,NULL),(117,39,31,2,NULL),(118,52,31,2,NULL),(119,60,31,2,NULL),(120,64,31,2,NULL),(121,66,31,2,NULL),(122,67,31,2,NULL),(123,69,31,2,NULL),(124,25,32,2,NULL),(125,35,32,2,NULL),(126,36,32,2,NULL),(127,37,32,2,NULL),(128,38,32,2,NULL),(129,39,32,2,NULL),(130,52,32,2,NULL),(131,60,32,2,NULL),(132,64,32,2,NULL),(133,66,32,2,NULL),(134,67,32,2,NULL),(135,69,32,2,NULL),(136,25,33,2,NULL),(137,35,33,2,NULL),(138,36,33,2,NULL),(139,37,33,2,NULL),(140,38,33,2,NULL),(141,14,8,2,NULL),(142,39,33,2,NULL),(143,52,33,2,NULL),(144,6,1,2,NULL),(145,60,33,2,NULL),(146,7,1,2,NULL),(147,64,33,2,NULL),(148,66,33,2,NULL),(149,8,1,2,NULL),(150,67,33,2,NULL),(151,9,1,2,NULL),(152,69,33,2,NULL),(153,10,1,2,NULL),(154,25,34,2,NULL),(155,11,1,2,NULL),(156,35,34,2,NULL),(157,12,1,2,NULL),(158,36,34,2,NULL),(159,37,34,2,NULL),(160,13,1,2,NULL),(161,38,34,2,NULL),(162,6,5,2,NULL),(163,39,34,2,NULL),(164,7,5,2,NULL),(165,52,34,2,NULL),(166,8,5,2,NULL),(167,60,34,2,NULL),(168,9,5,2,NULL),(169,64,34,2,NULL),(170,10,5,2,NULL),(171,66,34,2,NULL),(172,11,5,2,NULL),(173,67,34,2,NULL),(174,69,34,2,NULL),(175,12,5,2,NULL),(176,74,9,2,NULL),(177,13,5,2,NULL),(178,25,14,2,NULL),(179,6,6,2,NULL),(180,35,14,2,NULL),(181,7,6,2,NULL),(182,36,14,2,NULL),(183,8,6,2,NULL),(184,37,14,2,NULL),(185,9,6,2,NULL),(186,38,14,2,NULL),(187,10,6,2,NULL),(188,39,14,2,NULL),(189,11,6,2,NULL),(190,52,14,2,NULL),(191,12,6,2,NULL),(192,60,14,2,NULL),(193,13,6,2,NULL),(194,64,14,2,NULL),(195,6,28,2,NULL),(196,66,14,2,NULL),(197,7,28,2,NULL),(198,67,14,2,NULL),(199,8,28,2,NULL),(200,69,14,2,NULL),(201,9,28,2,NULL),(202,25,16,2,NULL),(203,10,28,2,NULL),(204,35,16,2,NULL),(205,11,28,2,NULL),(206,36,16,2,NULL),(207,12,28,2,NULL),(208,37,16,2,NULL),(209,13,28,2,NULL),(210,38,16,2,NULL),(211,6,29,2,NULL),(212,39,16,2,NULL),(213,7,29,2,NULL),(214,52,16,2,NULL),(215,8,29,2,NULL),(216,60,16,2,NULL),(217,9,29,2,NULL),(218,64,16,2,NULL),(219,10,29,2,NULL),(220,66,16,2,NULL),(221,11,29,2,NULL),(222,67,16,2,NULL),(223,12,29,2,NULL),(224,69,16,2,NULL),(225,13,29,2,NULL),(226,25,17,2,NULL),(227,6,8,2,NULL),(228,35,17,2,NULL),(229,7,8,2,NULL),(230,36,17,2,NULL),(231,8,8,2,NULL),(232,37,17,2,NULL),(233,9,8,2,NULL),(234,38,17,2,NULL),(235,10,8,2,NULL),(236,39,17,2,NULL),(237,11,8,2,NULL),(238,52,17,2,NULL),(239,12,8,2,NULL),(240,60,17,2,NULL),(241,13,8,2,NULL),(242,64,17,2,NULL),(243,6,15,2,NULL),(244,66,17,2,NULL),(245,7,15,2,NULL),(246,67,17,2,NULL),(247,8,15,2,NULL),(248,69,17,2,NULL),(249,9,15,2,NULL),(250,25,35,2,NULL),(251,10,15,2,NULL),(252,35,35,2,NULL),(253,11,15,2,NULL),(254,36,35,2,NULL),(255,12,15,2,NULL),(256,37,35,2,NULL),(257,13,15,2,NULL),(258,38,35,2,NULL),(259,6,30,2,NULL),(260,39,35,2,NULL),(261,7,30,2,NULL),(262,52,35,2,NULL),(263,8,30,2,NULL),(264,60,35,2,NULL),(265,9,30,2,NULL),(266,64,35,2,NULL),(267,10,30,2,NULL),(268,66,35,2,NULL),(269,11,30,2,NULL),(270,67,35,2,NULL),(271,12,30,2,NULL),(272,69,35,2,NULL),(273,13,30,2,NULL),(274,25,36,2,NULL),(275,6,31,2,NULL),(276,35,36,2,NULL),(277,7,31,2,NULL),(278,36,36,2,NULL),(279,8,31,2,NULL),(280,37,36,2,NULL),(281,9,31,2,NULL),(282,38,36,2,NULL),(283,10,31,2,NULL),(284,39,36,2,NULL),(285,11,31,2,NULL),(286,52,36,2,NULL),(287,12,31,2,NULL),(288,60,36,2,NULL),(289,13,31,2,NULL),(290,64,36,2,NULL),(291,6,32,2,NULL),(292,66,36,2,NULL),(293,7,32,2,NULL),(294,67,36,2,NULL),(295,8,32,2,NULL),(296,69,36,2,NULL),(297,9,32,2,NULL),(298,25,37,2,NULL),(299,10,32,2,NULL),(300,35,37,2,NULL),(301,11,32,2,NULL),(302,36,37,2,NULL),(303,12,32,2,NULL),(304,37,37,2,NULL),(305,13,32,2,NULL),(306,38,37,2,NULL),(307,6,33,2,NULL),(308,39,37,2,NULL),(309,7,33,2,NULL),(310,52,37,2,NULL),(311,8,33,2,NULL),(312,60,37,2,NULL),(313,9,33,2,NULL),(314,64,37,2,NULL),(315,10,33,2,NULL),(316,66,37,2,NULL),(317,11,33,2,NULL),(318,67,37,2,NULL),(319,12,33,2,NULL),(320,69,37,2,NULL),(321,13,33,2,NULL),(322,25,43,2,NULL),(323,6,34,2,NULL),(324,35,43,2,NULL),(325,7,34,2,NULL),(326,36,43,2,NULL),(327,8,34,2,NULL),(328,37,43,2,NULL),(329,9,34,2,NULL),(330,38,43,2,NULL),(331,10,34,2,NULL),(332,39,43,2,NULL),(333,11,34,2,NULL),(334,52,43,2,NULL),(335,12,34,2,NULL),(336,74,1,2,NULL),(337,60,43,2,NULL),(338,13,34,2,NULL),(339,41,1,2,NULL),(340,64,43,2,NULL),(341,6,14,2,NULL),(342,43,1,2,NULL),(343,66,43,2,NULL),(344,7,14,2,NULL),(345,44,1,2,NULL),(346,67,43,2,NULL),(347,8,14,2,NULL),(348,46,1,2,NULL),(349,69,43,2,NULL),(350,9,14,2,NULL),(351,47,1,2,NULL),(352,25,18,2,NULL),(353,10,14,2,NULL),(354,49,1,2,NULL),(355,35,18,2,NULL),(356,11,14,2,NULL),(357,50,1,2,NULL),(358,36,18,2,NULL),(359,12,14,2,NULL),(360,51,1,2,NULL),(361,37,18,2,NULL),(362,13,14,2,NULL),(363,70,1,2,NULL),(364,38,18,2,NULL),(365,6,16,2,NULL),(366,2,3,2,NULL),(367,39,18,2,NULL),(368,7,16,2,NULL),(369,3,3,2,NULL),(370,52,18,2,NULL),(371,8,16,2,NULL),(372,74,5,2,NULL),(373,60,18,2,NULL),(374,9,16,2,NULL),(375,41,5,2,NULL),(376,64,18,2,NULL),(377,10,16,2,NULL),(378,43,5,2,NULL),(379,66,18,2,NULL),(380,11,16,2,NULL),(381,44,5,2,NULL),(382,67,18,2,NULL),(383,12,16,2,NULL),(384,46,5,2,NULL),(385,69,18,2,NULL),(386,13,16,2,NULL),(387,47,5,2,NULL),(388,41,9,2,NULL),(389,6,17,2,NULL),(390,49,5,2,NULL),(391,43,9,2,NULL),(392,7,17,2,NULL),(393,50,5,2,NULL),(394,44,9,2,NULL),(395,8,17,2,NULL),(396,51,5,2,NULL),(397,46,9,2,NULL),(398,9,17,2,NULL),(399,70,5,2,NULL),(400,47,9,2,NULL),(401,10,17,2,NULL),(402,74,6,2,NULL),(403,49,9,2,NULL),(404,11,17,2,NULL),(405,50,9,2,NULL),(406,41,6,2,NULL),(407,12,17,2,NULL),(408,51,9,2,NULL),(409,43,6,2,NULL),(410,13,17,2,NULL),(411,70,9,2,NULL),(412,44,6,2,NULL),(413,6,35,2,NULL),(414,25,19,2,NULL),(415,46,6,2,NULL),(416,7,35,2,NULL),(417,35,19,2,NULL),(418,47,6,2,NULL),(419,8,35,2,NULL),(420,36,19,2,NULL),(421,49,6,2,NULL),(422,9,35,2,NULL),(423,37,19,2,NULL),(424,50,6,2,NULL),(425,10,35,2,NULL),(426,38,19,2,NULL),(427,51,6,2,NULL),(428,11,35,2,NULL),(429,39,19,2,NULL),(430,70,6,2,NULL),(431,12,35,2,NULL),(432,52,19,2,NULL),(433,74,28,2,NULL),(434,13,35,2,NULL),(435,60,19,2,NULL),(436,41,28,2,NULL),(437,6,36,2,NULL),(438,64,19,2,NULL),(439,43,28,2,NULL),(440,7,36,2,NULL),(441,66,19,2,NULL),(442,44,28,2,NULL),(443,8,36,2,NULL),(444,67,19,2,NULL),(445,46,28,2,NULL),(446,9,36,2,NULL),(447,69,19,2,NULL),(448,47,28,2,NULL),(449,10,36,2,NULL),(450,25,24,2,NULL),(451,49,28,2,NULL),(452,11,36,2,NULL),(453,35,24,2,NULL),(454,50,28,2,NULL),(455,12,36,2,NULL),(456,36,24,2,NULL),(457,51,28,2,NULL),(458,13,36,2,NULL),(459,37,24,2,NULL),(460,70,28,2,NULL),(461,6,37,2,NULL),(462,38,24,2,NULL),(463,74,29,2,NULL),(464,7,37,2,NULL),(465,39,24,2,NULL),(466,41,29,2,NULL),(467,8,37,2,NULL),(468,52,24,2,NULL),(469,43,29,2,NULL),(470,9,37,2,NULL),(471,60,24,2,NULL),(472,44,29,2,NULL),(473,10,37,2,NULL),(474,64,24,2,NULL),(475,46,29,2,NULL),(476,11,37,2,NULL),(477,66,24,2,NULL),(478,47,29,2,NULL),(479,12,37,2,NULL),(480,67,24,2,NULL),(481,49,29,2,NULL),(482,13,37,2,NULL),(483,69,24,2,NULL),(484,50,29,2,NULL),(485,6,43,2,NULL),(486,25,25,2,NULL),(487,51,29,2,NULL),(488,7,43,2,NULL),(489,35,25,2,NULL),(490,70,29,2,NULL),(491,8,43,2,NULL),(492,36,25,2,NULL),(493,9,43,2,NULL),(494,37,25,2,NULL),(495,10,43,2,NULL),(496,38,25,2,NULL),(497,11,43,2,NULL),(498,39,25,2,NULL),(499,12,43,2,NULL),(500,52,25,2,NULL),(501,13,43,2,NULL),(502,60,25,2,NULL),(503,6,18,2,NULL),(504,64,25,2,NULL),(505,7,18,2,NULL),(506,66,25,2,NULL),(507,8,18,2,NULL),(508,67,25,2,NULL),(509,9,18,2,NULL),(510,69,25,2,NULL),(511,10,18,2,NULL),(512,25,26,2,NULL),(513,11,18,2,NULL),(514,35,26,2,NULL),(515,12,18,2,NULL),(516,36,26,2,NULL),(517,13,18,2,NULL),(518,37,26,2,NULL),(519,6,19,2,NULL),(520,38,26,2,NULL),(521,7,19,2,NULL),(522,39,26,2,NULL),(523,8,19,2,NULL),(524,52,26,2,NULL),(525,9,19,2,NULL),(526,60,26,2,NULL),(527,10,19,2,NULL),(528,64,26,2,NULL),(529,11,19,2,NULL),(530,66,26,2,NULL),(531,12,19,2,NULL),(532,67,26,2,NULL),(533,13,19,2,NULL),(534,69,26,2,NULL),(535,6,24,2,NULL),(536,25,39,2,NULL),(537,7,24,2,NULL),(538,35,39,2,NULL),(539,8,24,2,NULL),(540,36,39,2,NULL),(541,9,24,2,NULL),(542,37,39,2,NULL),(543,10,24,2,NULL),(544,38,39,2,NULL),(545,11,24,2,NULL),(546,39,39,2,NULL),(547,12,24,2,NULL),(548,52,39,2,NULL),(549,13,24,2,NULL),(550,60,39,2,NULL),(551,6,25,2,NULL),(552,64,39,2,NULL),(553,7,25,2,NULL),(554,66,39,2,NULL),(555,8,25,2,NULL),(556,67,39,2,NULL),(557,9,25,2,NULL),(558,69,39,2,NULL),(559,10,25,2,NULL),(560,25,40,2,NULL),(561,11,25,2,NULL),(562,35,40,2,NULL),(563,12,25,2,NULL),(564,36,40,2,NULL),(565,13,25,2,NULL),(566,37,40,2,NULL),(567,6,26,2,NULL),(568,38,40,2,NULL),(569,7,26,2,NULL),(570,39,40,2,NULL),(571,8,26,2,NULL),(572,52,40,2,NULL),(573,9,26,2,NULL),(574,60,40,2,NULL),(575,10,26,2,NULL),(576,64,40,2,NULL),(577,11,26,2,NULL),(578,66,40,2,NULL),(579,12,26,2,NULL),(580,67,40,2,NULL),(581,13,26,2,NULL),(582,69,40,2,NULL),(583,6,39,2,NULL),(584,25,42,2,NULL),(585,7,39,2,NULL),(586,35,42,2,NULL),(587,8,39,2,NULL),(588,36,42,2,NULL),(589,9,39,2,NULL),(590,37,42,2,NULL),(591,10,39,2,NULL),(592,38,42,2,NULL),(593,11,39,2,NULL),(594,39,42,2,NULL),(595,12,39,2,NULL),(596,52,42,2,NULL),(597,13,39,2,NULL),(598,60,42,2,NULL),(599,6,40,2,NULL),(600,64,42,2,NULL),(601,7,40,2,NULL),(602,66,42,2,NULL),(603,8,40,2,NULL),(604,67,42,2,NULL),(605,9,40,2,NULL),(606,69,42,2,NULL),(607,10,40,2,NULL),(608,74,8,2,NULL),(609,11,40,2,NULL),(610,74,15,2,NULL),(611,12,40,2,NULL),(612,74,30,2,NULL),(613,13,40,2,NULL),(614,74,31,2,NULL),(615,6,42,2,NULL),(616,74,32,2,NULL),(617,7,42,2,NULL),(618,74,33,2,NULL),(619,8,42,2,NULL),(620,74,34,2,NULL),(621,9,42,2,NULL),(622,74,14,2,NULL),(623,10,42,2,NULL),(624,74,16,2,NULL),(625,11,42,2,NULL),(626,74,17,2,NULL),(627,12,42,2,NULL),(628,74,35,2,NULL),(629,13,42,2,NULL),(630,74,36,2,NULL),(631,15,7,2,NULL),(632,74,37,2,NULL),(633,41,8,2,NULL),(634,74,43,2,NULL),(635,43,8,2,NULL),(636,74,18,2,NULL),(637,44,8,2,NULL),(638,74,19,2,NULL),(639,46,8,2,NULL),(640,74,24,2,NULL),(641,47,8,2,NULL),(642,74,25,2,NULL),(643,49,8,2,NULL),(644,74,26,2,NULL),(645,50,8,2,NULL),(646,74,39,2,NULL),(647,51,8,2,NULL),(648,74,40,2,NULL),(649,70,8,2,NULL),(650,74,42,2,NULL),(651,41,15,2,NULL),(652,41,14,2,NULL),(653,43,15,2,NULL),(654,43,14,2,NULL),(655,44,15,2,NULL),(656,44,14,2,NULL),(657,46,15,2,NULL),(658,46,14,2,NULL),(659,47,15,2,NULL),(660,47,14,2,NULL),(661,49,15,2,NULL),(662,49,14,2,NULL),(663,50,15,2,NULL),(664,50,14,2,NULL),(665,51,15,2,NULL),(666,51,14,2,NULL),(667,70,15,2,NULL),(668,70,14,2,NULL),(669,41,30,2,NULL),(670,41,16,2,NULL),(671,43,30,2,NULL),(672,43,16,2,NULL),(673,44,30,2,NULL),(674,44,16,2,NULL),(675,46,30,2,NULL),(676,46,16,2,NULL),(677,47,30,2,NULL),(678,47,16,2,NULL),(679,49,30,2,NULL),(680,49,16,2,NULL),(681,50,30,2,NULL),(682,50,16,2,NULL),(683,51,30,2,NULL),(684,51,16,2,NULL),(685,70,30,2,NULL),(686,70,16,2,NULL),(687,41,31,2,NULL),(688,17,16,2,NULL),(689,43,31,2,NULL),(690,41,17,2,NULL),(691,44,31,2,NULL),(692,43,17,2,NULL),(693,46,31,2,NULL),(694,44,17,2,NULL),(695,47,31,2,NULL),(696,46,17,2,NULL),(697,49,31,2,NULL),(698,47,17,2,NULL),(699,50,31,2,NULL),(700,49,17,2,NULL),(701,51,31,2,NULL),(702,50,17,2,NULL),(703,70,31,2,NULL),(704,51,17,2,NULL),(705,41,32,2,NULL),(706,70,17,2,NULL),(707,43,32,2,NULL),(708,41,35,2,NULL),(709,44,32,2,NULL),(710,43,35,2,NULL),(711,46,32,2,NULL),(712,44,35,2,NULL),(713,47,32,2,NULL),(714,46,35,2,NULL),(715,49,32,2,NULL),(716,47,35,2,NULL),(717,50,32,2,NULL),(718,49,35,2,NULL),(719,51,32,2,NULL),(720,50,35,2,NULL),(721,70,32,2,NULL),(722,51,35,2,NULL),(723,41,33,2,NULL),(724,70,35,2,NULL),(725,43,33,2,NULL),(726,41,36,2,NULL),(727,44,33,2,NULL),(728,43,36,2,NULL),(729,46,33,2,NULL),(730,44,36,2,NULL),(731,47,33,2,NULL),(732,46,36,2,NULL),(733,49,33,2,NULL),(734,47,36,2,NULL),(735,50,33,2,NULL),(736,49,36,2,NULL),(737,51,33,2,NULL),(738,70,33,2,NULL),(739,50,36,2,NULL),(740,41,34,2,NULL),(741,51,36,2,NULL),(742,43,34,2,NULL),(743,70,36,2,NULL),(744,44,34,2,NULL),(745,41,37,2,NULL),(746,46,34,2,NULL),(747,43,37,2,NULL),(748,47,34,2,NULL),(749,44,37,2,NULL),(750,49,34,2,NULL),(751,46,37,2,NULL),(752,50,34,2,NULL),(753,47,37,2,NULL),(754,51,34,2,NULL),(755,49,37,2,NULL),(756,70,34,2,NULL),(757,50,37,2,NULL),(758,51,37,2,NULL),(759,70,37,2,NULL),(760,41,43,2,NULL),(761,43,43,2,NULL),(762,44,43,2,NULL),(763,46,43,2,NULL),(764,47,43,2,NULL),(765,49,43,2,NULL),(766,50,43,2,NULL),(767,51,43,2,NULL),(768,70,43,2,NULL),(769,58,20,2,NULL),(770,41,19,2,NULL),(771,43,19,2,NULL),(772,44,19,2,NULL),(773,46,19,2,NULL),(774,47,19,2,NULL),(775,49,19,2,NULL),(776,50,19,2,NULL),(777,51,19,2,NULL),(778,70,19,2,NULL),(779,41,24,2,NULL),(780,43,24,2,NULL),(781,44,24,2,NULL),(782,46,24,2,NULL),(783,47,24,2,NULL),(784,49,24,2,NULL),(785,50,24,2,NULL),(786,51,24,2,NULL),(787,70,24,2,NULL),(788,41,25,2,NULL),(789,43,25,2,NULL),(790,44,25,2,NULL),(791,46,25,2,NULL),(792,47,25,2,NULL),(793,49,25,2,NULL),(794,50,25,2,NULL),(795,51,25,2,NULL),(796,70,25,2,NULL),(797,41,26,2,NULL),(798,43,26,2,NULL),(799,44,26,2,NULL),(800,46,26,2,NULL),(801,47,26,2,NULL),(802,49,26,2,NULL),(803,50,26,2,NULL),(804,51,26,2,NULL),(805,70,26,2,NULL),(806,41,39,2,NULL),(807,43,39,2,NULL),(808,44,39,2,NULL),(809,46,39,2,NULL),(810,47,39,2,NULL),(811,49,39,2,NULL),(812,50,39,2,NULL),(813,51,39,2,NULL),(814,70,39,2,NULL),(815,41,40,2,NULL),(816,43,40,2,NULL),(817,44,40,2,NULL),(818,46,40,2,NULL),(819,47,40,2,NULL),(820,49,40,2,NULL),(821,50,40,2,NULL),(822,51,40,2,NULL),(823,70,40,2,NULL),(824,41,42,2,NULL),(825,43,42,2,NULL),(826,44,42,2,NULL),(827,46,42,2,NULL),(828,47,42,2,NULL),(829,49,42,2,NULL),(830,50,42,2,NULL),(831,51,42,2,NULL),(832,70,42,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (11,'android.permission.ACCESS_NETWORK_STATE'),(20,'android.permission.CALL_PHONE'),(17,'android.permission.CHANGE_NETWORK_STATE'),(23,'android.permission.EXPAND_STATUS_BAR'),(4,'android.permission.GET_TASKS'),(21,'android.permission.GLOBAL_SEARCH_CONTROL'),(7,'android.permission.INTERNET'),(19,'android.permission.READ_CONTACTS'),(1,'android.permission.READ_PHONE_STATE'),(3,'android.permission.READ_SMS'),(15,'android.permission.RECEIVE_BOOT_COMPLETED'),(10,'android.permission.RECEIVE_MMS'),(9,'android.permission.RECEIVE_SMS'),(2,'android.permission.RECEIVE_WAP_PUSH'),(5,'android.permission.SEND_SMS'),(12,'android.permission.SET_WALLPAPER'),(22,'android.permission.SET_WALLPAPER_HINTS'),(13,'android.permission.VIBRATE'),(18,'android.permission.WAKE_LOCK'),(6,'android.permission.WRITE_APN_SETTINGS'),(14,'android.permission.WRITE_EXTERNAL_STORAGE'),(16,'android.permission.WRITE_SETTINGS'),(8,'android.permission.WRITE_SMS'),(34,'com.android.launcher.permission.INSTALL_SHORTCUT'),(24,'com.android.launcher.permission.READ_SETTINGS'),(36,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(25,'com.android.launcher.permission.WRITE_SETTINGS');
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
INSERT INTO `Permissions` VALUES (24,'n'),(25,'n'),(34,'n'),(36,'n');
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
INSERT INTO `ProviderLinks` VALUES (1,18,27,NULL),(2,24,27,NULL),(3,44,27,NULL),(4,25,27,NULL),(5,45,27,NULL);
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
INSERT INTO `Providers` VALUES (1,27,0,NULL,'com.android.launcher.permission.WRITE_SETTINGS');
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(2,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(3,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(4,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(5,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(6,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(7,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(8,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(9,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(10,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(11,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(12,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(13,'package','',NULL,NULL,NULL,NULL),(14,'package','',NULL,NULL,NULL,NULL),(15,'package','',NULL,NULL,NULL,NULL),(16,'package','',NULL,NULL,NULL,NULL),(17,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(18,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(19,'package','',NULL,NULL,NULL,NULL),(20,'package','',NULL,NULL,NULL,NULL),(21,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(22,'package','',NULL,NULL,NULL,NULL),(23,'package','',NULL,NULL,NULL,NULL),(24,'package','',NULL,NULL,NULL,NULL),(25,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(26,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(27,'package','',NULL,NULL,NULL,NULL),(28,'package','',NULL,NULL,NULL,NULL),(29,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(30,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(31,'package','',NULL,NULL,NULL,NULL),(32,'package','',NULL,NULL,NULL,NULL),(33,'package','',NULL,NULL,NULL,NULL),(34,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(35,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(36,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(37,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(38,'package','',NULL,NULL,NULL,NULL),(39,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(40,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(41,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(42,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(43,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(44,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(45,'tel','(.*)',NULL,NULL,NULL,NULL),(46,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(47,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(48,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(49,'package','',NULL,NULL,NULL,NULL),(50,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=(.*)',NULL,NULL,NULL),(51,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=NULL-CONSTANT',NULL,NULL,NULL),(52,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=false',NULL,NULL,NULL),(53,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(54,'package','',NULL,NULL,NULL,NULL),(55,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(56,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(57,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(58,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,3,1),(2,5,2),(3,6,3),(4,8,4),(5,9,5),(6,10,6),(7,12,7),(8,14,8),(9,16,9),(10,17,10),(11,18,11),(12,20,12),(13,32,17),(14,39,21),(15,55,34),(16,57,35),(17,60,37),(18,65,39),(19,66,40),(20,67,41),(21,69,42),(22,70,43),(23,72,44),(24,77,46),(25,78,47),(26,80,48),(27,85,52),(28,85,53),(29,87,55),(30,88,56),(31,89,57),(32,91,58);
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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,2,1),(13,2,2),(14,3,17),(15,2,3),(16,3,16),(17,2,5),(18,3,1),(19,2,6),(20,3,18),(21,2,7),(22,3,5),(23,2,8),(24,3,6),(25,2,9),(26,3,7),(27,2,10),(28,3,9),(29,2,11),(30,3,10),(31,2,12),(32,3,11),(33,2,13),(34,3,12),(35,3,14),(36,3,15),(37,4,1),(38,4,2),(39,4,3),(40,4,4),(41,4,4),(42,4,5),(43,4,5),(44,4,6),(45,4,6),(46,4,7),(47,4,7),(48,4,8),(49,4,9),(50,4,10),(51,4,11),(52,4,12),(53,4,13),(54,4,14),(55,4,14),(56,4,16),(57,4,16),(58,4,19),(59,4,19),(60,4,21),(61,4,21),(62,4,20),(63,4,20),(64,4,23),(65,4,22),(66,4,25),(67,4,25),(68,4,24),(69,4,24);
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
