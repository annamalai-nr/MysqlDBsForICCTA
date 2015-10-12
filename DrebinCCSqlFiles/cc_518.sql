-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_518
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (15,'SMS_SEND_ACTIOIN'),(2,'android.intent.action.BOOT_COMPLETED'),(19,'android.intent.action.CHOOSER'),(30,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(26,'android.intent.action.PACKAGE_ADDED'),(25,'android.intent.action.PACKAGE_CHANGED'),(27,'android.intent.action.PACKAGE_REMOVED'),(38,'android.intent.action.SCREEN_OFF'),(39,'android.intent.action.SCREEN_ON'),(5,'android.intent.action.SET_WALLPAPER'),(21,'android.intent.action.VIEW'),(24,'android.intent.action.WALLPAPER_CHANGED'),(14,'android.net.conn.CONNECTIVITY_CHANGE'),(4,'android.provider.Telephony.SMS_RECEIVED'),(3,'android.provider.Telephony.WAP_PUSH_RECEIVED'),(35,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(36,'android.settings.WIRELESS_SETTINGS'),(29,'com.android.contacts.action.FILTER_CONTACTS'),(8,'com.android.launcher.action.INSTALL_SHORTCUT'),(9,'com.android.launcher.action.UNINSTALL_SHORTCUT'),(28,'com.jx.Action_CopyResError'),(18,'com.jx.MainActivity.CostInfo'),(20,'com.jx.MainActivity.ErrorInfo'),(33,'com.jx.MainActivity.InstallConfirmInfo'),(32,'com.jx.MainActivity.OpenLWP'),(34,'com.jx.MainActivity.RepeateInstall'),(31,'com.jx.MainActivity.SaveID'),(17,'com.jx.action.ExitBootReceiver'),(23,'com.jx.ad.ADService.ConfirmInstallInfo'),(10,'com.jx.ad.ADService.Init'),(37,'com.jx.ad.ADService.InitHasUpdate'),(22,'com.jx.ad.ADService.InstallRes'),(11,'com.jx.ad.ADService.Run'),(12,'com.jx.ad.ADService.RunCancel'),(16,'com.jx.ad.BootSmsReceiverService.Exit'),(13,'com.jx.ad.BootSmsReceiverService.Start');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applications`
--

LOCK TABLES `Applications` WRITE;
/*!40000 ALTER TABLE `Applications` DISABLE KEYS */;
INSERT INTO `Applications` VALUES (1,'com.km.installer',1),(2,'com.km.launcher',1),(3,'com.jx.theme.n2042866781',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.km.installer.InstallerActivity'),(2,1,'com.km.charge.MainActivity'),(3,1,'com.km.charge.MainService'),(4,1,'com.km.charge.CycleService'),(5,1,'com.km.charge.BootReceiver'),(6,1,'com.km.charge.HoldMessage'),(7,2,'com.km.launcher.Launcher'),(8,2,'com.km.launcher.Launcher'),(9,2,'com.km.launcher.WallpaperChooser'),(10,2,'com.km.theme.ThemeListActivity'),(11,2,'com.km.charge.MainActivity'),(12,2,'com.km.charge.CycleService'),(13,2,'com.km.ad.AdService'),(14,2,'com.km.launcher.InstallShortcutReceiver'),(15,2,'com.km.launcher.UninstallShortcutReceiver'),(16,2,'com.km.charge.BootReceiver'),(17,2,'com.km.launcher.LauncherProvider'),(18,3,'com.jx.MainActivity'),(19,3,'com.jx.SettingActivity'),(20,3,'com.jx.WelcomeActivity'),(21,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(22,3,'com.jx.ad.AndroidThemeService'),(23,3,'com.jx.ad.BootSmsReceiverService'),(24,3,'com.jx.ad.BootReceiver'),(25,1,'com.km.tool.ApnManager'),(26,1,'com.km.charge.HttpBox$ConnectivityReceiver'),(27,1,'com.km.tool.Util'),(28,1,'com.km.charge.SendMessage$SendMessageReceiver'),(29,3,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(30,2,'com.km.theme.ThemeManager'),(31,3,'com.jx.ad.AndroidThemeService$6'),(32,2,'com.km.charge.SendMessage$SendMessageReceiver'),(33,2,'com.km.launcher.LauncherModel'),(34,3,'com.jx.tool.ApnManager'),(35,3,'com.jx.ad.AndroidThemeService$3'),(36,2,'com.km.tool.ApnManager'),(37,3,'com.jx.ad.AndroidThemeService$MMSReceiver'),(38,2,'com.km.launcher.Search'),(39,2,'com.km.tool.Util'),(40,2,'com.km.launcher.Launcher$WallpaperIntentReceiver'),(41,2,'com.km.ad.AdService$1'),(42,2,'com.km.charge.HoldMessage'),(43,2,'com.km.launcher.MyAnalogClock$1'),(44,3,'com.jx.ad.AndroidThemeService$4'),(45,3,'com.jx.ad.AndroidThemeService$2'),(46,2,'com.km.charge.HttpBox$ConnectivityReceiver'),(47,3,'com.jx.MainActivity$ControlReceiver$6$1'),(48,2,'com.km.tool.Http$ConnectivityReceiver'),(49,2,'com.km.launcher.Launcher$ApplicationsIntentReceiver'),(50,3,'com.jx.ad.ServiceControlReciver'),(51,3,'com.jx.MainActivity$ControlReceiver'),(52,3,'com.jx.ad.AndroidThemeService$5'),(53,3,'com.jx.ad.AndroidThemeService$7'),(54,3,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(55,3,'com.jx.MainActivity$ControlReceiver$1'),(56,3,'com.jx.ad.AndroidThemeService$SmsReceiver'),(57,3,'com.jx.ad.AndroidThemeService$8'),(58,3,'com.jx.MainActivity$4'),(59,3,'com.jx.SettingActivity$6'),(60,3,'com.jx.MainActivity$1'),(61,3,'com.jx.SettingActivity$1'),(62,3,'com.adwo.adsdk.M'),(63,3,'com.jx.tool.Utility');
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,6,'pdus'),(2,6,'data'),(3,21,'overlayTransition'),(4,14,'duplicate'),(5,7,'data'),(6,7,'launcher.add_countY'),(7,7,'launcher.add_spanY'),(8,15,'android.intent.extra.shortcut.NAME'),(9,7,'launcher.current_screen'),(10,7,'android.intent.extra.livefolder.ICON'),(11,7,'launcher.rename_folder'),(12,14,'android.intent.extra.shortcut.NAME'),(13,7,'android.intent.extra.shortcut.NAME'),(14,7,'launcher.add_cellX'),(15,10,'launcher.all_apps_folder'),(16,11,'launcher.all_apps_folder'),(17,7,'launcher.all_apps_folder'),(18,14,'android.intent.extra.shortcut.ICON_RESOURCE'),(19,7,'android.intent.extra.shortcut.ICON_RESOURCE'),(20,7,'android.intent.extra.livefolder.NAME'),(21,14,'android.intent.extra.shortcut.INTENT'),(22,7,'android.intent.extra.shortcut.INTENT'),(23,7,'launcher.rename_folder_id'),(24,7,'launcher.add_countX'),(25,7,'launcher.add_cellY'),(26,14,'android.intent.extra.shortcut.ICON'),(27,7,'android.intent.extra.shortcut.ICON'),(28,7,'launcher.add_screen'),(29,15,'android.intent.extra.shortcut.INTENT'),(30,7,'android.intent.extra.livefolder.BASE_INTENT'),(31,22,'respid'),(32,10,'launcher.user_folder'),(33,11,'launcher.user_folder'),(34,7,'launcher.user_folder'),(35,15,'duplicate'),(36,7,'launcher.add_occupied_cells'),(37,7,'launcher.add_spanX'),(38,21,'shouldShowTitlebar'),(39,21,'overlayTitle'),(40,21,'url'),(41,21,'shouldShowBottomBar'),(42,21,'transitionTime'),(43,21,'shouldResizeOverlay'),(44,22,'resownerid'),(45,21,'shouldEnableBottomBar'),(46,21,'shouldMakeOverlayTransparent');
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'s',0,NULL,NULL),(4,4,'s',0,NULL,NULL),(5,5,'r',1,NULL,NULL),(6,6,'r',1,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'s',0,NULL,NULL),(13,13,'s',0,NULL,NULL),(14,14,'r',1,23,NULL),(15,15,'r',1,24,NULL),(16,16,'r',1,NULL,NULL),(17,17,'p',0,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'s',1,NULL,NULL),(23,23,'s',1,NULL,NULL),(24,24,'r',1,NULL,NULL),(25,26,'r',1,NULL,NULL),(26,28,'r',1,NULL,NULL),(27,29,'r',1,NULL,NULL),(28,32,'r',1,NULL,NULL),(29,37,'r',1,NULL,NULL),(30,40,'r',1,NULL,NULL),(31,14,'r',1,NULL,NULL),(32,15,'r',1,NULL,NULL),(33,42,'r',1,NULL,NULL),(34,43,'r',1,NULL,NULL),(35,46,'r',1,NULL,NULL),(36,48,'r',1,NULL,NULL),(37,49,'r',1,NULL,NULL),(38,50,'r',1,NULL,NULL),(39,51,'r',1,NULL,NULL),(40,54,'r',1,NULL,NULL),(41,56,'r',1,NULL,NULL),(42,62,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,3),(2,1,6),(3,2,3),(4,2,6),(5,3,3),(6,3,6),(7,4,1),(8,4,5),(9,5,3),(10,5,6),(11,6,6),(12,6,3),(13,7,6),(14,7,3),(15,8,2),(16,9,6),(17,9,3),(18,10,6),(19,10,3),(20,11,18),(21,12,7),(22,12,10),(23,13,22),(24,14,7),(25,15,22),(26,16,7),(27,17,24),(28,18,22),(29,19,11),(30,19,10),(31,20,11),(32,20,7),(33,21,19),(34,21,18),(35,21,20),(36,22,7),(37,23,7),(38,24,11),(39,24,10),(40,25,10),(41,25,11),(42,26,16),(43,26,7),(44,27,7),(45,27,10),(46,28,7),(47,29,14),(48,30,7),(49,30,11),(50,31,11),(51,31,10),(52,32,7),(53,33,15),(54,34,15),(55,35,10),(56,35,11),(57,36,15),(58,37,10),(59,37,11),(60,38,11),(61,38,10),(62,39,22),(63,40,10),(64,40,7),(65,41,22),(66,42,11),(67,42,10),(68,43,11),(69,43,7),(70,44,18),(71,44,19),(72,44,20),(73,45,22),(74,46,11),(75,46,7),(76,47,11),(77,47,10),(78,48,7),(79,49,14),(80,49,7),(81,50,20),(82,51,11),(83,51,7),(84,52,17),(85,53,14),(86,54,22),(87,55,7),(88,56,22),(89,57,10),(90,57,11),(91,58,10),(92,58,11),(93,59,7),(94,60,19),(95,61,15),(96,62,14),(97,63,22),(98,64,11),(99,64,10),(100,65,15),(101,66,11),(102,66,7),(103,67,22),(104,68,7),(105,69,22),(106,70,15),(107,71,10),(108,71,11),(109,72,10),(110,72,11),(111,73,22),(112,74,7),(113,75,14),(114,76,14),(115,76,7),(116,77,16),(117,78,19),(118,78,20),(119,79,17),(120,80,11),(121,80,10),(122,81,22),(123,82,7),(124,82,10),(125,83,10),(126,83,11),(127,84,18),(128,84,19),(129,84,20),(130,85,11),(131,85,10),(132,86,22),(133,87,22),(134,88,22),(135,89,20),(136,89,18),(137,89,19),(138,90,18),(139,91,18),(140,91,19),(141,91,20),(142,92,18),(143,92,19),(144,92,20),(145,93,22),(146,94,18),(147,94,20),(148,94,19),(149,95,22),(150,96,18),(151,96,20),(152,96,19),(153,97,22),(154,98,18),(155,99,22),(156,100,19),(157,100,20),(158,100,22),(159,101,18),(160,102,22),(161,103,22),(162,104,22);
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
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,25,'<com.km.tool.ApnManager: int CreateGPRSApn()>',30,'p',0),(2,25,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',9,'p',NULL),(3,25,'<com.km.tool.ApnManager: int CreateWapApn()>',30,'p',0),(4,27,'<com.km.tool.Util: void startServiceWithSingleMode(android.content.Context,java.lang.Class)>',8,'s',NULL),(5,25,'<com.km.tool.ApnManager: void delete(int)>',8,'p',NULL),(6,25,'<com.km.tool.ApnManager: int CreateGPRSApn()>',27,'p',NULL),(7,25,'<com.km.tool.ApnManager: int getApnId(java.lang.String)>',6,'p',NULL),(8,2,'<com.km.charge.MainActivity: void onClick(android.content.DialogInterface,int)>',10,'s',NULL),(9,25,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',19,'p',NULL),(10,25,'<com.km.tool.ApnManager: int CreateWapApn()>',27,'p',NULL),(11,18,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(12,30,'<com.km.theme.ThemeManager: void setup()>',32,'a',NULL),(13,31,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(14,33,'<com.km.launcher.LauncherModel: com.km.launcher.Widget getPhotoFrameInfo(android.content.Context,int,int,int)>',15,'p',NULL),(15,34,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(16,7,'<com.km.launcher.Launcher: void startWallpaper()>',5,'a',NULL),(17,24,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(18,35,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(19,36,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',19,'p',NULL),(20,38,'<com.km.launcher.Search: void sendLaunchIntent(java.lang.String,android.net.Uri,java.lang.String,android.os.Bundle,int,java.lang.String,android.server.search.SearchableInfo)>',20,'a',NULL),(21,18,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(22,7,'<com.km.launcher.Launcher: void onCreate(android.os.Bundle)>',58,'s',NULL),(23,33,'<com.km.launcher.LauncherModel: com.km.launcher.Widget getPhotoFrameInfo(android.content.Context,int,int,int)>',15,'p',NULL),(24,36,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',9,'p',NULL),(25,36,'<com.km.tool.ApnManager: void delete(int)>',8,'p',NULL),(26,39,'<com.km.tool.Util: void startServiceWithSingleMode(android.content.Context,java.lang.Class)>',7,'s',NULL),(27,33,'<com.km.launcher.LauncherModel: void updateItemInDatabase(android.content.Context,com.km.launcher.ItemInfo)>',8,'p',NULL),(28,7,'<com.km.launcher.Launcher: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(29,14,'<com.km.launcher.InstallShortcutReceiver: boolean findEmptyCell(android.content.Context,int[],int)>',19,'p',NULL),(30,7,'<com.km.launcher.Launcher: void startActivitySafely(android.content.Intent)>',3,'a',0),(31,41,'<com.km.ad.AdService$1: void run()>',11,'s',NULL),(32,7,'<com.km.launcher.Launcher: void registerContentObservers()>',4,'p',NULL),(33,15,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'p',NULL),(34,15,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'p',NULL),(35,36,'<com.km.tool.ApnManager: int getApnId(java.lang.String)>',6,'p',NULL),(36,15,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',25,'p',NULL),(37,36,'<com.km.tool.ApnManager: int CreateGPRSApn()>',30,'p',0),(38,36,'<com.km.tool.ApnManager: int CreateWapApn()>',27,'p',NULL),(39,44,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(40,33,'<com.km.launcher.LauncherModel: void updateItemInDatabase(android.content.Context,com.km.launcher.ItemInfo)>',8,'p',NULL),(41,45,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(42,36,'<com.km.tool.ApnManager: int CreateGPRSApn()>',27,'p',NULL),(43,38,'<com.km.launcher.Search: void sendLaunchIntent(java.lang.String,android.net.Uri,java.lang.String,android.os.Bundle,int,java.lang.String,android.server.search.SearchableInfo)>',20,'a',NULL),(44,47,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(45,45,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(46,7,'<com.km.launcher.Launcher: void startActivitySafely(android.content.Intent)>',3,'a',0),(47,36,'<com.km.tool.ApnManager: int CreateWapApn()>',30,'p',0),(48,7,'<com.km.launcher.Launcher: void startWallpaper()>',5,'a',NULL),(49,33,'<com.km.launcher.LauncherModel: void addItemToDatabase(android.content.Context,com.km.launcher.ItemInfo,long,int,int,int,boolean)>',17,'p',NULL),(50,20,'<com.jx.WelcomeActivity: void onResume()>',67,'a',NULL),(51,7,'<com.km.launcher.Launcher: boolean onKeyDown(int,android.view.KeyEvent)>',27,'a',NULL),(52,17,'<com.km.launcher.LauncherProvider: void sendNotify(android.net.Uri)>',9,'p',0),(53,33,'<com.km.launcher.LauncherModel: boolean shortcutExists(android.content.Context,java.lang.String,android.content.Intent)>',12,'p',NULL),(54,44,'<com.jx.ad.AndroidThemeService$4: void run()>',125,'r',NULL),(55,7,'<com.km.launcher.Launcher: void registerContentObservers()>',4,'p',NULL),(56,22,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(57,36,'<com.km.tool.ApnManager: int CreateWapApn()>',30,'p',0),(58,36,'<com.km.tool.ApnManager: int CreateWapApn()>',27,'p',NULL),(59,33,'<com.km.launcher.LauncherModel: com.km.launcher.FolderInfo getFolderById(android.content.Context,long)>',12,'p',NULL),(60,19,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(61,15,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',25,'p',NULL),(62,33,'<com.km.launcher.LauncherModel: boolean shortcutExists(android.content.Context,java.lang.String,android.content.Intent)>',12,'p',NULL),(63,31,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(64,36,'<com.km.tool.ApnManager: int CreateGPRSApn()>',30,'p',0),(65,15,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'p',NULL),(66,7,'<com.km.launcher.Launcher: boolean onKeyDown(int,android.view.KeyEvent)>',27,'a',NULL),(67,31,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(68,33,'<com.km.launcher.LauncherModel: com.km.launcher.FolderInfo getFolderById(android.content.Context,long)>',12,'p',NULL),(69,52,'<com.jx.ad.AndroidThemeService$5: void run()>',116,'r',NULL),(70,15,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'p',NULL),(71,36,'<com.km.tool.ApnManager: int CreateGPRSApn()>',27,'p',NULL),(72,36,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',19,'p',NULL),(73,53,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(74,7,'<com.km.launcher.Launcher: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(75,14,'<com.km.launcher.InstallShortcutReceiver: boolean findEmptyCell(android.content.Context,int[],int)>',19,'p',NULL),(76,33,'<com.km.launcher.LauncherModel: void addItemToDatabase(android.content.Context,com.km.launcher.ItemInfo,long,int,int,int,boolean)>',17,'p',NULL),(77,16,'<com.km.charge.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(78,20,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(79,17,'<com.km.launcher.LauncherProvider: void sendNotify(android.net.Uri)>',9,'p',0),(80,36,'<com.km.tool.ApnManager: void delete(int)>',8,'p',NULL),(81,22,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(82,30,'<com.km.theme.ThemeManager: void setup()>',32,'a',NULL),(83,36,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',9,'p',NULL),(84,55,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(85,36,'<com.km.tool.ApnManager: int getApnId(java.lang.String)>',6,'p',NULL),(86,34,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(87,57,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(88,44,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(89,58,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(90,18,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(91,59,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(92,60,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(93,35,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(94,61,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(95,57,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(96,18,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(97,45,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(98,18,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(99,34,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(100,63,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(101,18,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(102,31,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(103,52,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(104,34,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,3,17),(2,5,18),(3,6,19),(4,7,19),(5,8,13),(6,9,19),(7,10,19),(8,11,20),(9,12,19),(10,13,19),(11,14,19),(12,15,21),(13,16,19),(14,17,22),(15,18,21),(16,19,22),(17,21,11),(18,22,23),(19,24,12),(20,26,10),(21,28,12),(22,29,11),(23,30,23),(24,31,10),(25,33,20),(26,34,21),(27,35,28),(28,36,21),(29,37,20),(30,38,19),(31,39,19),(32,41,19),(33,42,29),(34,44,19),(35,45,30),(36,46,19),(37,48,19),(38,50,19),(39,51,20),(40,52,19),(41,53,31),(42,54,1),(43,55,20),(44,56,29),(45,57,20),(46,58,30),(47,59,20),(48,60,20),(49,63,35),(50,64,18),(51,66,36),(52,67,20),(53,68,37),(54,69,21),(55,70,16),(56,71,21),(57,72,21),(58,73,16),(59,74,21),(60,75,33),(61,76,23),(62,77,11),(63,78,10),(64,79,12),(65,80,22),(66,81,20),(67,85,20),(68,86,20);
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
INSERT INTO `ICategories` VALUES (1,54,1),(2,63,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/km/charge/CycleService'),(2,2,'com/km/charge/MainService'),(3,4,'com/km/charge/MainActivity'),(4,8,'com/jx/ad/BootSmsReceiverService'),(5,20,'com/km/charge/CycleService'),(6,19,'com/jx/ad/AndroidThemeService'),(7,23,'com/km/charge/CycleService'),(8,22,'com/jx/ad/AndroidThemeService'),(9,24,'com/jx/ad/AndroidThemeService'),(10,25,'com/km/theme/ThemeListActivity'),(11,26,'com/jx/ad/AndroidThemeService'),(12,27,'com/km/ad/AdService'),(13,29,'com/jx/ad/AndroidThemeService'),(14,32,'com.android.packageinstaller.PackageInstallerActivity'),(15,40,'.Launcher'),(16,43,'(.*).Launcher'),(17,47,'(.*).Launcher'),(18,49,'.Launcher'),(19,54,'com.nd.android.launcher.Launcher'),(20,61,'com/km/theme/ThemeListActivity'),(21,62,'com/km/charge/CycleService'),(22,65,'com/km/charge/MainActivity'),(23,82,'com/jx/WelcomeActivity'),(24,83,'com.android.packageinstaller.PackageInstallerActivity'),(25,84,'com/jx/WelcomeActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,5,7),(2,11,10),(3,15,12),(4,18,13),(5,32,25),(6,33,28),(7,34,29),(8,35,30),(9,36,31),(10,37,32),(11,45,35),(12,51,37),(13,53,39),(14,55,44),(15,57,47),(16,58,48),(17,59,50),(18,60,54),(19,64,58),(20,67,62),(21,69,63),(22,71,64),(23,72,65),(24,74,66),(25,75,67),(26,81,68),(27,83,69),(28,85,70),(29,86,71);
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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,5,'CostTips'),(2,6,'android.intent.extra.INTENT'),(3,7,'android.intent.extra.INTENT'),(4,9,'android.intent.extra.TITLE'),(5,9,'android.intent.extra.INTENT'),(6,10,'android.intent.extra.INTENT'),(7,11,'CostTips'),(8,12,'android.intent.extra.TITLE'),(9,12,'android.intent.extra.INTENT'),(10,13,'android.intent.extra.INTENT'),(11,14,'android.intent.extra.TITLE'),(12,14,'android.intent.extra.INTENT'),(13,16,'android.intent.extra.TITLE'),(14,17,'resownerid'),(15,16,'android.intent.extra.INTENT'),(16,17,'respid'),(17,19,'resownerid'),(18,19,'respid'),(19,21,'resownerid'),(20,21,'respid'),(21,22,'resownerid'),(22,22,'respid'),(23,24,'resownerid'),(24,24,'respid'),(25,26,'resownerid'),(26,26,'respid'),(27,28,'resownerid'),(28,28,'respid'),(29,29,'resownerid'),(30,29,'respid'),(31,30,'resownerid'),(32,30,'respid'),(33,31,'resownerid'),(34,31,'respid'),(35,33,'CostTips'),(36,37,'CostTips'),(37,37,'SetNetwork'),(38,38,'android.intent.extra.INTENT'),(39,39,'android.intent.extra.INTENT'),(40,40,'startother'),(41,41,'android.intent.extra.TITLE'),(42,41,'android.intent.extra.INTENT'),(43,42,'com.android.contacts.extra.FILTER_TEXT'),(44,43,'startother'),(45,44,'android.intent.extra.INTENT'),(46,47,'startother'),(47,46,'android.intent.extra.TITLE'),(48,46,'android.intent.extra.INTENT'),(49,49,'startother'),(50,48,'android.intent.extra.INTENT'),(51,50,'android.intent.extra.TITLE'),(52,50,'android.intent.extra.INTENT'),(53,51,'CostTips'),(54,52,'android.intent.extra.TITLE'),(55,52,'android.intent.extra.INTENT'),(56,53,'respid'),(57,54,'from'),(58,55,'CostTips'),(59,56,'com.android.contacts.extra.FILTER_TEXT'),(60,57,'CostTips'),(61,59,'CostTips'),(62,60,'CostTips'),(63,64,'CostTips'),(64,67,'CostTips'),(65,68,'resownerid'),(66,68,'respid'),(67,76,'resownerid'),(68,76,'respid'),(69,77,'resownerid'),(70,77,'respid'),(71,78,'resownerid'),(72,78,'respid'),(73,79,'resownerid'),(74,79,'respid'),(75,80,'resownerid'),(76,80,'respid'),(77,81,'CostTips'),(78,85,'CostTips'),(79,86,'CostTips');
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
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,3),(5,5,4),(6,6,1),(7,7,1),(8,9,1),(9,8,1),(10,10,5),(11,11,5),(12,12,8),(13,13,8),(14,14,9),(15,15,9),(16,16,2),(17,17,2),(18,18,1),(19,19,10),(20,20,12),(21,20,11),(22,21,13),(23,22,2),(24,23,14),(25,24,15),(26,25,16),(27,26,15),(28,27,3),(29,28,24),(30,29,27),(31,29,26),(32,29,25),(33,30,26),(34,30,25),(35,30,27),(36,31,26),(37,31,27),(38,31,25),(39,32,27),(40,32,25),(41,32,26),(42,33,26),(43,33,27),(44,33,25),(45,34,25),(46,34,26),(47,34,27),(48,35,25),(49,35,27),(50,35,26),(51,36,26),(52,36,25),(53,36,27),(54,37,25),(55,37,27),(56,37,26),(57,38,27),(58,38,26),(59,38,25),(60,39,22),(61,39,23),(62,39,11),(63,39,10),(64,39,12),(65,40,25),(66,40,26),(67,40,27),(68,41,25),(69,41,26),(70,41,27),(71,42,27),(72,42,25),(73,42,26),(74,43,27),(75,43,26),(76,43,25),(77,44,27),(78,44,25),(79,44,26),(80,45,14),(81,46,34),(82,46,18),(83,46,33),(84,46,20),(85,46,32),(86,46,31),(87,46,26),(88,46,28),(89,47,25),(90,47,27),(91,47,26),(92,48,26),(93,48,25),(94,48,27),(95,49,24),(96,50,26),(97,50,25),(98,50,27),(99,51,25),(100,51,26),(101,51,27),(102,52,25),(103,52,26),(104,52,27),(105,53,14),(106,54,15),(107,55,4),(108,56,4),(109,57,39),(110,57,38);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,6,3),(3,6,2),(4,6,1),(5,7,1),(6,7,2),(7,7,3),(8,9,1),(9,9,2),(10,9,3),(11,8,1),(12,8,2),(13,8,3),(14,10,2),(15,11,2),(16,18,1);
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
INSERT INTO `IFData` VALUES (1,3,NULL,NULL,NULL,NULL,'application','vnd.wap.sic'),(2,4,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(3,27,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(4,29,'package',NULL,NULL,NULL,NULL,NULL),(5,30,'package',NULL,NULL,NULL,NULL,NULL),(6,31,'package',NULL,NULL,NULL,NULL,NULL),(7,32,'package',NULL,NULL,NULL,NULL,NULL),(8,33,'package',NULL,NULL,NULL,NULL,NULL),(9,34,'package',NULL,NULL,NULL,NULL,NULL),(10,35,'package',NULL,NULL,NULL,NULL,NULL),(11,36,'package',NULL,NULL,NULL,NULL,NULL),(12,37,'package',NULL,NULL,NULL,NULL,NULL),(13,38,'package',NULL,NULL,NULL,NULL,NULL),(14,40,'package',NULL,NULL,NULL,NULL,NULL),(15,41,'package',NULL,NULL,NULL,NULL,NULL),(16,42,'package',NULL,NULL,NULL,NULL,NULL),(17,43,'package',NULL,NULL,NULL,NULL,NULL),(18,44,'package',NULL,NULL,NULL,NULL,NULL),(19,46,'package',NULL,NULL,NULL,NULL,NULL),(20,47,'package',NULL,NULL,NULL,NULL,NULL),(21,48,'package',NULL,NULL,NULL,NULL,NULL),(22,50,'package',NULL,NULL,NULL,NULL,NULL),(23,51,'package',NULL,NULL,NULL,NULL,NULL),(24,52,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.km.installer'),(2,2,'com.km.installer'),(3,4,'com.km.launcher'),(4,8,'com.jx.theme.n2042866781'),(5,17,'com.jx.util'),(6,20,'com.km.launcher'),(7,19,'com.jx.theme.n2042866781'),(8,21,'com.jx.util'),(9,23,'com.km.launcher'),(10,22,'com.jx.theme.n2042866781'),(11,24,'com.jx.theme.n2042866781'),(12,25,'com.km.launcher'),(13,26,'com.jx.theme.n2042866781'),(14,27,'com.km.launcher'),(15,28,'com.jx.util'),(16,29,'com.jx.theme.n2042866781'),(17,30,'com.jx.util'),(18,31,'com.jx.util'),(19,32,'com.android.packageinstaller'),(20,40,''),(21,43,''),(22,47,'(.*)'),(23,49,'(.*)'),(24,54,'NULL-CONSTANT'),(25,61,'com.km.launcher'),(26,62,'com.km.launcher'),(27,65,'com.km.launcher'),(28,68,'com.jx.util'),(29,82,'com.jx.theme.n2042866781'),(30,83,'com.android.packageinstaller'),(31,84,'com.jx.theme.n2042866781');
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,5,0),(3,6,0),(4,6,0),(5,6,0),(6,7,0),(7,7,0),(8,7,0),(9,8,0),(10,9,0),(11,9,0),(12,14,0),(13,14,0),(14,15,0),(15,15,0),(16,16,0),(17,16,0),(18,18,0),(19,22,0),(20,22,0),(21,23,0),(22,24,0),(23,25,0),(24,26,0),(25,27,0),(26,28,0),(27,29,0),(28,30,0),(29,31,0),(30,32,0),(31,33,0),(32,34,0),(33,30,0),(34,16,0),(35,28,0),(36,35,0),(37,36,0),(38,37,0),(39,38,0),(40,31,0),(41,32,0),(42,33,0),(43,34,0),(44,30,0),(45,35,0),(46,39,0),(47,16,0),(48,28,0),(49,30,0),(50,35,0),(51,36,0),(52,37,0),(53,35,0),(54,28,0),(55,40,0),(56,41,0),(57,42,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,4,0,0),(2,8,0,0),(3,11,1,0),(4,12,0,0),(5,13,1,0),(6,16,1,0),(7,16,1,0),(8,17,0,0),(9,16,1,0),(10,16,1,0),(11,18,1,0),(12,16,1,0),(13,16,1,0),(14,16,1,0),(15,20,1,0),(16,16,1,0),(17,21,1,0),(18,20,1,0),(19,21,0,0),(20,22,0,0),(21,21,1,0),(22,21,0,0),(23,26,0,0),(24,21,0,0),(25,28,0,0),(26,21,0,0),(27,31,0,0),(28,21,1,0),(29,21,0,0),(30,21,1,0),(31,21,1,0),(32,39,0,0),(33,41,1,0),(34,43,1,0),(35,44,1,0),(36,43,1,0),(37,45,1,0),(38,48,1,0),(39,48,1,0),(40,50,0,0),(41,48,1,0),(42,51,1,0),(43,50,0,0),(44,48,1,0),(45,51,1,0),(46,48,1,0),(47,50,0,0),(48,48,1,0),(49,50,0,0),(50,48,1,0),(51,54,1,0),(52,48,1,0),(53,56,1,0),(54,60,0,0),(55,63,1,0),(56,66,1,0),(57,67,1,0),(58,66,1,0),(59,69,1,0),(60,73,1,0),(61,74,0,0),(62,77,0,0),(63,78,1,0),(64,81,1,0),(65,82,0,0),(66,84,1,0),(67,87,1,0),(68,88,1,0),(69,89,1,0),(70,90,1,0),(71,91,1,0),(72,92,1,0),(73,93,1,0),(74,94,1,0),(75,95,1,0),(76,96,1,0),(77,96,1,0),(78,96,1,0),(79,96,1,0),(80,96,1,0),(81,97,1,0),(82,98,0,0),(83,100,0,0),(84,101,0,0),(85,102,1,0),(86,103,1,0);
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
INSERT INTO `PermissionStrings` VALUES (11,'android.permission.ACCESS_NETWORK_STATE'),(14,'android.permission.CALL_PHONE'),(27,'android.permission.CHANGE_NETWORK_STATE'),(17,'android.permission.EXPAND_STATUS_BAR'),(4,'android.permission.GET_TASKS'),(15,'android.permission.GLOBAL_SEARCH_CONTROL'),(7,'android.permission.INTERNET'),(13,'android.permission.READ_CONTACTS'),(1,'android.permission.READ_PHONE_STATE'),(3,'android.permission.READ_SMS'),(25,'android.permission.RECEIVE_BOOT_COMPLETED'),(10,'android.permission.RECEIVE_MMS'),(9,'android.permission.RECEIVE_SMS'),(2,'android.permission.RECEIVE_WAP_PUSH'),(5,'android.permission.SEND_SMS'),(12,'android.permission.SET_WALLPAPER'),(16,'android.permission.SET_WALLPAPER_HINTS'),(19,'android.permission.VIBRATE'),(28,'android.permission.WAKE_LOCK'),(6,'android.permission.WRITE_APN_SETTINGS'),(22,'android.permission.WRITE_EXTERNAL_STORAGE'),(18,'android.permission.WRITE_SETTINGS'),(8,'android.permission.WRITE_SMS'),(29,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(26,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(23,'com.android.launcher.permission.INSTALL_SHORTCUT'),(20,'com.android.launcher.permission.READ_SETTINGS'),(24,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(21,'com.android.launcher.permission.WRITE_SETTINGS');
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
INSERT INTO `Permissions` VALUES (20,'n'),(21,'n'),(23,'n'),(24,'n');
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
INSERT INTO `Providers` VALUES (1,17,0,NULL,'com.android.launcher.permission.WRITE_SETTINGS'),(2,17,0,NULL,'com.android.launcher.permission.WRITE_SETTINGS');
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(2,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(3,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(4,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(5,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(6,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(7,'package','',NULL,NULL,NULL,NULL),(8,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(9,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(10,'package','',NULL,NULL,NULL,NULL),(11,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(12,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=(.*)',NULL,NULL,NULL),(13,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(15,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(16,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(17,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(18,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(19,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(20,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(21,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(22,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(23,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(24,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(25,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(26,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(27,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(28,'package','',NULL,NULL,NULL,NULL),(29,NULL,NULL,'http://se.zxin.cc?prod=search&op=redirect&id=10&v=7&ky=(.*)',NULL,NULL,NULL),(30,'package','',NULL,NULL,NULL,NULL),(31,NULL,NULL,'http://se.zxin.cc?prod=search&op=redirect&id=10&v=7&ky=NULL-CONSTANT',NULL,NULL,NULL),(32,'package','',NULL,NULL,NULL,NULL),(33,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=false',NULL,NULL,NULL),(34,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(35,'tel','(.*)',NULL,NULL,NULL,NULL),(36,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(37,'package','',NULL,NULL,NULL,NULL),(38,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(39,'package','',NULL,NULL,NULL,NULL),(40,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(41,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(42,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(43,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(44,'package','',NULL,NULL,NULL,NULL),(45,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(46,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(47,'package','',NULL,NULL,NULL,NULL),(48,'tel','(.*)',NULL,NULL,NULL,NULL),(49,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(50,'package','',NULL,NULL,NULL,NULL),(51,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(52,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(53,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(54,'package','',NULL,NULL,NULL,NULL),(55,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=false',NULL,NULL,NULL),(56,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(57,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(58,'package','',NULL,NULL,NULL,NULL),(59,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(60,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(61,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(62,'package','',NULL,NULL,NULL,NULL),(63,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(64,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(65,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(66,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(67,'package','',NULL,NULL,NULL,NULL),(68,'package','',NULL,NULL,NULL,NULL),(69,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(70,'package','',NULL,NULL,NULL,NULL),(71,'package','',NULL,NULL,NULL,NULL),(72,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,2,1),(2,5,2),(3,6,3),(4,7,4),(5,9,5),(6,10,6),(7,14,8),(8,15,9),(9,19,11),(10,23,14),(11,24,15),(12,25,16),(13,27,17),(14,29,18),(15,32,19),(16,33,20),(17,34,21),(18,35,22),(19,36,23),(20,38,24),(21,40,26),(22,42,27),(23,49,33),(24,49,34),(25,53,36),(26,55,38),(27,58,40),(28,59,41),(29,61,42),(30,62,43),(31,65,45),(32,68,46),(33,70,49),(34,71,51),(35,72,52),(36,75,53),(37,76,55),(38,76,56),(39,80,57),(40,83,59),(41,85,60),(42,86,61),(43,104,72);
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,2,1),(13,2,2),(14,2,3),(15,2,4),(16,2,5),(17,2,6),(18,2,7),(19,2,8),(20,2,9),(21,2,10),(22,2,11),(23,2,12),(24,2,13),(25,2,14),(26,2,15),(27,2,15),(28,2,17),(29,2,16),(30,2,19),(31,2,18),(32,2,21),(33,2,21),(34,2,20),(35,2,22),(36,3,1),(37,3,5),(38,3,6),(39,3,7),(40,3,9),(41,3,10),(42,3,11),(43,3,12),(44,3,18),(45,3,22),(46,3,25),(47,3,27),(48,3,26),(49,3,29),(50,3,28);
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
