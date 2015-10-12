-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_514
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
INSERT INTO `ActionStrings` VALUES (11,'SMS_SEND_ACTIOIN'),(2,'android.intent.action.BOOT_COMPLETED'),(30,'android.intent.action.CHOOSER'),(37,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(26,'android.intent.action.PACKAGE_ADDED'),(32,'android.intent.action.PACKAGE_CHANGED'),(33,'android.intent.action.PACKAGE_REMOVED'),(34,'android.intent.action.SCREEN_OFF'),(35,'android.intent.action.SCREEN_ON'),(7,'android.intent.action.SET_WALLPAPER'),(18,'android.intent.action.VIEW'),(31,'android.intent.action.WALLPAPER_CHANGED'),(10,'android.net.conn.CONNECTIVITY_CHANGE'),(19,'android.provider.Telephony.SMS_RECEIVED'),(21,'android.provider.Telephony.WAP_PUSH_RECEIVED'),(28,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(29,'android.settings.WIRELESS_SETTINGS'),(36,'com.android.contacts.action.FILTER_CONTACTS'),(8,'com.android.launcher.action.INSTALL_SHORTCUT'),(9,'com.android.launcher.action.UNINSTALL_SHORTCUT'),(15,'com.jx.Action_CopyResError'),(14,'com.jx.MainActivity.CostInfo'),(12,'com.jx.MainActivity.ErrorInfo'),(23,'com.jx.MainActivity.InstallConfirmInfo'),(25,'com.jx.MainActivity.OpenLWP'),(27,'com.jx.MainActivity.RepeateInstall'),(13,'com.jx.MainActivity.SaveID'),(20,'com.jx.action.ExitBootReceiver'),(22,'com.jx.ad.ADService.ConfirmInstallInfo'),(5,'com.jx.ad.ADService.Init'),(17,'com.jx.ad.ADService.InitHasUpdate'),(24,'com.jx.ad.ADService.InstallRes'),(3,'com.jx.ad.ADService.Run'),(4,'com.jx.ad.ADService.RunCancel'),(16,'com.jx.ad.BootSmsReceiverService.Exit'),(6,'com.jx.ad.BootSmsReceiverService.Start');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applications`
--

LOCK TABLES `Applications` WRITE;
/*!40000 ALTER TABLE `Applications` DISABLE KEYS */;
INSERT INTO `Applications` VALUES (1,'com.km.installer',1),(2,'com.jx.theme.n1368240560',1),(3,'com.jx.theme.n1800628253',1),(4,'com.jx.theme.n275428752',1),(5,'com.km.launcher',1),(6,'com.jx.theme.n1937186202',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.km.installer.InstallerActivity'),(2,1,'com.km.charge.MainActivity'),(3,1,'com.km.charge.CycleService'),(4,1,'com.km.charge.BootReceiver'),(5,4,'com.jx.MainActivity'),(6,4,'com.jx.SettingActivity'),(7,4,'com.jx.WelcomeActivity'),(8,2,'com.jx.MainActivity'),(9,3,'com.jx.MainActivity'),(10,4,'com.jx.ad.AndroidThemeService'),(11,2,'com.jx.SettingActivity'),(12,3,'com.jx.SettingActivity'),(13,4,'com.jx.ad.BootSmsReceiverService'),(14,2,'com.jx.WelcomeActivity'),(15,3,'com.jx.WelcomeActivity'),(16,2,'com.jx.ad.AndroidThemeService'),(17,3,'com.jx.ad.AndroidThemeService'),(18,4,'com.jx.ad.BootReceiver'),(19,2,'com.jx.ad.BootSmsReceiverService'),(20,3,'com.jx.ad.BootSmsReceiverService'),(21,2,'com.jx.ad.BootReceiver'),(22,3,'com.jx.ad.BootReceiver'),(23,5,'com.km.launcher.Launcher'),(24,5,'com.km.launcher.WallpaperChooser'),(25,5,'com.km.theme.ThemeListActivity'),(26,5,'com.km.charge.MainActivity'),(27,6,'com.jx.MainActivity'),(28,5,'com.km.ad.AdService'),(29,5,'com.km.charge.CycleService'),(30,6,'com.jx.SettingActivity'),(31,5,'com.km.launcher.InstallShortcutReceiver'),(32,6,'com.jx.WelcomeActivity'),(33,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(34,5,'com.km.launcher.UninstallShortcutReceiver'),(35,6,'com.jx.ad.AndroidThemeService'),(36,5,'com.km.charge.BootReceiver'),(37,6,'com.jx.ad.BootSmsReceiverService'),(38,5,'com.km.launcher.LauncherProvider'),(39,6,'com.jx.ad.BootReceiver'),(40,1,'com.km.tool.ApnManager'),(41,1,'com.km.tool.Util'),(42,1,'com.km.charge.HttpBox$ConnectivityReceiver'),(43,1,'com.km.charge.SendMessage$SendMessageReceiver'),(44,4,'com.jx.ad.AndroidThemeService$6'),(45,2,'com.jx.ad.AndroidThemeService$4'),(46,2,'com.jx.MainActivity$ControlReceiver$6$1'),(47,4,'com.jx.ad.AndroidThemeService$2'),(48,4,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(49,3,'com.jx.ad.AndroidThemeService$4'),(50,3,'com.jx.MainActivity$4'),(51,4,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(52,4,'com.jx.SettingActivity$1'),(53,4,'com.jx.ad.AndroidThemeService$7'),(54,3,'com.jx.MainActivity$1'),(55,2,'com.jx.ad.AndroidThemeService$7'),(56,4,'com.jx.tool.ApnManager'),(57,4,'com.jx.MainActivity$ControlReceiver$6$1'),(58,2,'com.jx.ad.AndroidThemeService$MMSReceiver'),(59,3,'com.jx.SettingActivity$1'),(60,2,'com.jx.ad.AndroidThemeService$2'),(61,3,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(62,4,'com.jx.ad.AndroidThemeService$MMSReceiver'),(63,3,'com.jx.ad.AndroidThemeService$8'),(64,2,'com.jx.ad.AndroidThemeService$6'),(65,3,'com.jx.tool.ApnManager'),(66,2,'com.jx.ad.AndroidThemeService$3'),(67,4,'com.jx.ad.AndroidThemeService$3'),(68,2,'com.jx.ad.AndroidThemeService$5'),(69,4,'com.jx.MainActivity$1'),(70,4,'com.jx.ad.AndroidThemeService$4'),(71,2,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(72,2,'com.jx.tool.ApnManager'),(73,3,'com.jx.ad.AndroidThemeService$6'),(74,2,'com.jx.MainActivity$ControlReceiver'),(75,6,'com.jx.ad.AndroidThemeService$5'),(76,3,'com.jx.ad.AndroidThemeService$2'),(77,6,'com.jx.tool.ApnManager'),(78,2,'com.jx.SettingActivity$1'),(79,4,'com.jx.ad.AndroidThemeService$SmsReceiver'),(80,6,'com.jx.SettingActivity$1'),(81,4,'com.jx.MainActivity$4'),(82,2,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(83,3,'com.jx.SettingActivity$6'),(84,6,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(85,5,'com.km.tool.ApnManager'),(86,3,'com.jx.MainActivity$ControlReceiver$1'),(87,5,'com.km.tool.Util'),(88,4,'com.jx.ad.ServiceControlReciver'),(89,3,'com.jx.MainActivity$ControlReceiver$6$1'),(90,2,'com.jx.ad.AndroidThemeService$SmsReceiver'),(91,4,'com.jx.ad.AndroidThemeService$5'),(92,5,'com.km.launcher.LauncherModel'),(93,6,'com.jx.ad.AndroidThemeService$2'),(94,4,'com.jx.ad.AndroidThemeService$8'),(95,4,'com.jx.tool.Utility'),(96,5,'com.km.charge.HttpBox$ConnectivityReceiver'),(97,2,'com.jx.MainActivity$1'),(98,6,'com.jx.ad.AndroidThemeService$6'),(99,4,'com.jx.MainActivity$ControlReceiver$1'),(100,6,'com.jx.ad.AndroidThemeService$8'),(101,6,'com.jx.ad.ServiceControlReciver'),(102,2,'com.jx.SettingActivity$6'),(103,4,'com.jx.SettingActivity$6'),(104,6,'com.jx.ad.AndroidThemeService$4'),(105,2,'com.jx.ad.AndroidThemeService$8'),(106,4,'com.jx.MainActivity$ControlReceiver'),(107,3,'com.jx.ad.ServiceControlReciver'),(108,5,'com.km.charge.SendMessage$SendMessageReceiver'),(109,3,'com.jx.ad.AndroidThemeService$3'),(110,3,'com.jx.ad.AndroidThemeService$MMSReceiver'),(111,5,'com.km.launcher.Launcher$WallpaperIntentReceiver'),(112,3,'com.jx.ad.AndroidThemeService$SmsReceiver'),(113,6,'com.jx.MainActivity$ControlReceiver'),(114,3,'com.jx.tool.Utility'),(115,3,'com.jx.MainActivity$ControlReceiver'),(116,5,'com.km.charge.HoldMessage'),(117,3,'com.jx.ad.AndroidThemeService$5'),(118,2,'com.jx.MainActivity$4'),(119,5,'com.km.launcher.MyAnalogClock$1'),(120,6,'com.jx.ad.AndroidThemeService$MMSReceiver'),(121,6,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(122,6,'com.jx.ad.AndroidThemeService$7'),(123,2,'com.jx.tool.Utility'),(124,3,'com.jx.ad.AndroidThemeService$7'),(125,5,'com.km.tool.Http$ConnectivityReceiver'),(126,5,'com.km.launcher.Launcher$ApplicationsIntentReceiver'),(127,2,'com.jx.MainActivity$ControlReceiver$1'),(128,6,'com.adwo.adsdk.M'),(129,5,'com.km.launcher.Search'),(130,6,'com.jx.tool.Utility'),(131,6,'com.jx.MainActivity$ControlReceiver$6$1'),(132,5,'com.km.theme.ThemeManager'),(133,6,'com.jx.MainActivity$1'),(134,2,'com.jx.ad.ServiceControlReciver'),(135,3,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(136,6,'com.jx.MainActivity$4'),(137,6,'com.jx.SettingActivity$6'),(138,5,'com.km.ad.AdService$1'),(139,6,'com.jx.ad.AndroidThemeService$3'),(140,6,'com.jx.ad.AndroidThemeService$SmsReceiver'),(141,6,'com.jx.MainActivity$ControlReceiver$1');
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
INSERT INTO `ComponentExtras` VALUES (1,17,'respid'),(2,16,'respid'),(3,9,'respid'),(4,17,'resownerid'),(5,23,'launcher.rename_folder'),(6,16,'resownerid'),(7,25,'launcher.user_folder'),(8,26,'launcher.user_folder'),(9,23,'launcher.user_folder'),(10,31,'android.intent.extra.shortcut.INTENT'),(11,23,'launcher.add_spanY'),(12,23,'launcher.current_screen'),(13,23,'data'),(14,34,'android.intent.extra.shortcut.NAME'),(15,23,'launcher.add_countY'),(16,23,'android.intent.extra.livefolder.NAME'),(17,33,'overlayTitle'),(18,23,'android.intent.extra.shortcut.INTENT'),(19,23,'launcher.add_occupied_cells'),(20,23,'launcher.add_screen'),(21,23,'launcher.add_spanX'),(22,23,'android.intent.extra.livefolder.BASE_INTENT'),(23,23,'launcher.add_cellY'),(24,34,'duplicate'),(25,31,'android.intent.extra.shortcut.NAME'),(26,23,'android.intent.extra.shortcut.NAME'),(27,33,'shouldResizeOverlay'),(28,9,'resownerid'),(29,33,'shouldShowTitlebar'),(30,33,'shouldEnableBottomBar'),(31,23,'launcher.rename_folder_id'),(32,35,'respid'),(33,31,'android.intent.extra.shortcut.ICON'),(34,23,'android.intent.extra.shortcut.ICON'),(35,34,'android.intent.extra.shortcut.INTENT'),(36,31,'android.intent.extra.shortcut.ICON_RESOURCE'),(37,23,'android.intent.extra.shortcut.ICON_RESOURCE'),(38,33,'shouldMakeOverlayTransparent'),(39,23,'android.intent.extra.livefolder.ICON'),(40,31,'duplicate'),(41,23,'launcher.add_countX'),(42,25,'launcher.all_apps_folder'),(43,26,'launcher.all_apps_folder'),(44,23,'launcher.all_apps_folder'),(45,33,'transitionTime'),(46,23,'launcher.add_cellX'),(47,33,'shouldShowBottomBar'),(48,33,'overlayTransition'),(49,33,'url'),(50,35,'resownerid');
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'s',0,NULL,NULL),(4,4,'r',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,10,'s',1,NULL,NULL),(10,9,'a',1,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'s',1,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'s',1,NULL,NULL),(17,17,'s',1,NULL,NULL),(18,18,'r',1,NULL,NULL),(19,19,'s',1,NULL,NULL),(20,20,'s',1,NULL,NULL),(21,21,'r',1,NULL,NULL),(22,22,'r',1,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',1,NULL,NULL),(28,28,'s',0,NULL,NULL),(29,29,'s',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'r',1,26,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'r',1,27,NULL),(35,35,'s',1,NULL,NULL),(36,36,'r',1,NULL,NULL),(37,37,'s',1,NULL,NULL),(38,38,'p',0,NULL,NULL),(39,39,'r',1,NULL,NULL),(40,42,'r',1,NULL,NULL),(41,43,'r',1,NULL,NULL),(42,48,'r',1,NULL,NULL),(43,51,'r',1,NULL,NULL),(44,58,'r',1,NULL,NULL),(45,61,'r',1,NULL,NULL),(46,62,'r',1,NULL,NULL),(47,71,'r',1,NULL,NULL),(48,74,'r',1,NULL,NULL),(49,79,'r',1,NULL,NULL),(50,82,'r',1,NULL,NULL),(51,84,'r',1,NULL,NULL),(52,88,'r',1,NULL,NULL),(53,90,'r',1,NULL,NULL),(54,96,'r',1,NULL,NULL),(55,101,'r',1,NULL,NULL),(56,106,'r',1,NULL,NULL),(57,107,'r',1,NULL,NULL),(58,108,'r',1,NULL,NULL),(59,110,'r',1,NULL,NULL),(60,111,'r',1,NULL,NULL),(61,112,'r',1,NULL,NULL),(62,113,'r',1,NULL,NULL),(63,31,'r',1,NULL,NULL),(64,34,'r',1,NULL,NULL),(65,115,'r',1,NULL,NULL),(66,116,'r',1,NULL,NULL),(67,119,'r',1,NULL,NULL),(68,120,'r',1,NULL,NULL),(69,121,'r',1,NULL,NULL),(70,125,'r',1,NULL,NULL),(71,126,'r',1,NULL,NULL),(72,128,'r',1,NULL,NULL),(73,134,'r',1,NULL,NULL),(74,135,'r',1,NULL,NULL),(75,140,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=345 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,2),(3,3,1),(4,3,4),(5,4,2),(6,5,2),(7,6,2),(8,7,2),(9,8,2),(10,9,2),(11,10,9),(12,11,9),(13,12,16),(14,13,9),(15,14,9),(16,15,14),(17,15,8),(18,15,11),(19,16,9),(20,17,8),(21,18,17),(22,19,9),(23,20,16),(24,21,9),(25,22,15),(26,22,12),(27,22,10),(28,23,16),(29,24,7),(30,24,6),(31,24,5),(32,25,9),(33,26,12),(34,26,10),(35,26,15),(36,27,5),(37,28,16),(38,29,9),(39,30,10),(40,31,5),(41,31,7),(42,31,6),(43,32,18),(44,33,10),(45,33,15),(46,33,12),(47,34,9),(48,35,5),(49,35,6),(50,35,7),(51,36,16),(52,37,5),(53,38,17),(54,39,16),(55,40,18),(56,41,17),(57,42,16),(58,43,9),(59,44,17),(60,45,16),(61,47,9),(62,46,5),(63,48,12),(64,50,9),(65,49,5),(66,49,6),(67,49,7),(68,51,16),(69,52,17),(70,54,9),(71,53,9),(72,55,9),(73,56,17),(74,57,9),(75,58,8),(76,59,35),(77,60,6),(78,61,6),(79,62,14),(80,62,11),(81,63,17),(82,64,35),(83,65,14),(84,65,8),(85,65,11),(86,66,9),(87,67,17),(88,68,27),(89,68,30),(90,68,32),(91,69,6),(92,69,7),(93,69,5),(94,71,8),(95,70,5),(96,70,6),(97,70,7),(98,72,17),(99,73,35),(100,74,7),(101,74,5),(102,74,6),(103,75,9),(104,76,16),(105,77,10),(106,77,12),(107,77,15),(108,78,9),(109,79,26),(110,79,25),(111,80,32),(112,81,9),(113,82,16),(114,83,15),(115,83,12),(116,83,10),(117,84,23),(118,84,36),(119,85,12),(120,85,15),(121,85,10),(122,86,9),(123,87,9),(124,88,26),(125,88,25),(126,89,9),(127,90,10),(128,92,11),(129,91,23),(130,93,17),(131,95,9),(132,94,35),(133,96,5),(134,97,26),(135,97,25),(136,98,16),(137,99,9),(138,99,7),(139,99,6),(140,101,35),(141,100,10),(142,100,12),(143,100,15),(144,102,9),(145,103,11),(146,103,8),(147,103,14),(148,105,5),(149,104,35),(150,106,23),(151,107,9),(152,108,7),(153,108,6),(154,108,5),(155,109,16),(156,111,5),(157,110,35),(158,112,5),(159,113,16),(160,114,23),(161,115,5),(162,116,9),(163,116,7),(164,116,6),(165,117,14),(166,117,8),(167,117,11),(168,118,5),(169,118,6),(170,118,7),(171,119,35),(172,120,9),(173,121,16),(174,122,9),(175,123,27),(176,123,30),(177,123,32),(178,124,16),(179,126,9),(180,125,9),(181,127,16),(182,128,6),(183,128,5),(184,128,7),(185,129,5),(186,129,7),(187,129,6),(188,130,26),(189,130,25),(190,131,14),(191,131,11),(192,131,8),(193,132,6),(194,132,7),(195,133,25),(196,133,26),(197,134,9),(198,135,34),(199,136,17),(200,137,34),(201,138,9),(202,139,7),(203,139,6),(204,140,17),(205,141,23),(206,142,9),(207,143,9),(208,144,17),(209,145,31),(210,146,5),(211,146,6),(212,146,7),(213,147,9),(214,148,9),(215,149,34),(216,150,9),(217,151,17),(218,152,9),(219,155,9),(220,154,17),(221,154,12),(222,154,15),(223,153,38),(224,156,27),(225,157,9),(226,158,35),(227,159,9),(228,160,7),(229,160,6),(230,160,5),(231,161,17),(232,162,27),(233,163,9),(234,164,8),(235,164,11),(236,164,14),(237,165,10),(238,166,8),(239,167,7),(240,167,6),(241,167,5),(242,168,17),(243,169,16),(244,170,35),(245,171,11),(246,171,14),(247,171,16),(248,172,17),(249,173,27),(250,174,16),(251,175,35),(252,176,17),(253,177,23),(254,177,31),(255,178,8),(256,178,14),(257,178,11),(258,179,22),(259,180,23),(260,180,26),(261,181,16),(262,182,14),(263,182,11),(264,182,8),(265,183,17),(266,184,30),(267,184,35),(268,184,32),(269,185,25),(270,185,26),(271,186,12),(272,186,15),(273,187,30),(274,187,32),(275,187,27),(276,188,23),(277,188,25),(278,189,17),(279,190,5),(280,190,6),(281,190,7),(282,191,35),(283,192,26),(284,192,23),(285,193,32),(286,193,30),(287,193,27),(288,194,9),(289,195,17),(290,196,35),(291,197,21),(292,198,7),(293,198,5),(294,198,6),(295,199,9),(296,200,9),(297,201,23),(298,201,25),(299,202,17),(300,203,16),(301,204,35),(302,205,17),(303,206,31),(304,207,16),(305,208,30),(306,208,27),(307,208,32),(308,209,10),(309,209,15),(310,209,12),(311,210,26),(312,210,25),(313,211,16),(314,212,35),(315,213,25),(316,213,26),(317,214,35),(318,215,23),(319,216,32),(320,216,27),(321,216,30),(322,217,26),(323,217,25),(324,218,10),(325,219,23),(326,219,26),(327,220,39),(328,221,35),(329,222,30),(330,223,35),(331,224,35),(332,225,30),(333,225,27),(334,225,32),(335,226,35),(336,227,35),(337,228,27),(338,229,32),(339,229,30),(340,230,35),(341,231,35),(342,232,27),(343,232,30),(344,232,32);
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
) ENGINE=InnoDB AUTO_INCREMENT=233 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,40,'<com.km.tool.ApnManager: int getApnId(java.lang.String)>',6,'p',NULL),(2,40,'<com.km.tool.ApnManager: void delete(int)>',8,'p',NULL),(3,41,'<com.km.tool.Util: void startServiceWithSingleMode(android.content.Context,java.lang.Class)>',7,'s',NULL),(4,40,'<com.km.tool.ApnManager: int CreateGPRSApn()>',30,'p',0),(5,40,'<com.km.tool.ApnManager: int CreateWapApn()>',27,'p',NULL),(6,40,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',19,'p',NULL),(7,40,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',9,'p',NULL),(8,40,'<com.km.tool.ApnManager: int CreateGPRSApn()>',27,'p',NULL),(9,40,'<com.km.tool.ApnManager: int CreateWapApn()>',30,'p',0),(10,44,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(11,10,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(12,45,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(13,44,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(14,10,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(15,46,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(16,47,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(17,8,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(18,49,'<com.jx.ad.AndroidThemeService$4: void run()>',120,'r',NULL),(19,47,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(20,45,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(21,10,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(22,50,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(23,16,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(24,52,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(25,53,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(26,54,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(27,5,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(28,55,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(29,56,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(30,9,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(31,57,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(32,18,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(33,59,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(34,56,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(35,5,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(36,60,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(37,5,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(38,63,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(39,64,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(40,18,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(41,65,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(42,66,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(43,67,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(44,17,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(45,68,'<com.jx.ad.AndroidThemeService$5: void run()>',113,'r',NULL),(46,5,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(47,67,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(48,12,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(49,69,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(50,70,'<com.jx.ad.AndroidThemeService$4: void run()>',120,'r',NULL),(51,72,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(52,73,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(53,47,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(54,56,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(55,44,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(56,73,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(57,56,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(58,8,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(59,75,'<com.jx.ad.AndroidThemeService$5: void run()>',116,'r',NULL),(60,6,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(61,6,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(62,14,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(63,76,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(64,77,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(65,78,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(66,56,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(67,49,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(68,80,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(69,52,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(70,81,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(71,8,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(72,76,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(73,35,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(74,81,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(75,44,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(76,66,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(77,83,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(78,10,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(79,85,'<com.km.tool.ApnManager: int getApnId(java.lang.String)>',6,'p',NULL),(80,32,'<com.jx.WelcomeActivity: void onResume()>',67,'a',NULL),(81,53,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(82,60,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(83,86,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(84,87,'<com.km.tool.Util: void startServiceWithSingleMode(android.content.Context,java.lang.Class)>',7,'s',NULL),(85,89,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(86,47,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(87,56,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(88,85,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',19,'p',NULL),(89,91,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(90,9,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(91,92,'<com.km.launcher.LauncherModel: com.km.launcher.FolderInfo getFolderById(android.content.Context,long)>',12,'p',NULL),(92,11,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(93,76,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(94,93,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(95,94,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(96,5,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(97,85,'<com.km.tool.ApnManager: int CreateGPRSApn()>',27,'p',NULL),(98,16,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(99,95,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(100,9,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(101,77,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(102,56,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(103,97,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(104,98,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(105,5,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(106,23,'<com.km.launcher.Launcher: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(107,44,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(108,99,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(109,72,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(110,100,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(111,5,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(112,5,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(113,64,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(114,23,'<com.km.launcher.Launcher: void startWallpaper()>',5,'a',NULL),(115,5,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(116,95,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(117,102,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(118,103,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(119,104,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(120,94,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(121,105,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(122,94,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(123,27,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(124,60,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(125,94,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(126,91,'<com.jx.ad.AndroidThemeService$5: void run()>',113,'r',NULL),(127,64,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(128,5,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(129,103,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(130,85,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',9,'p',NULL),(131,8,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(132,7,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(133,85,'<com.km.tool.ApnManager: int CreateWapApn()>',30,'p',0),(134,44,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(135,34,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'p',NULL),(136,49,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(137,34,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',25,'p',NULL),(138,70,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(139,7,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(140,109,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(141,92,'<com.km.launcher.LauncherModel: com.km.launcher.Widget getPhotoFrameInfo(android.content.Context,int,int,int)>',15,'p',NULL),(142,91,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(143,47,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(144,65,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(145,92,'<com.km.launcher.LauncherModel: boolean shortcutExists(android.content.Context,java.lang.String,android.content.Intent)>',12,'p',NULL),(146,69,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(147,91,'<com.jx.ad.AndroidThemeService$5: void run()>',113,'r',NULL),(148,67,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(149,34,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'p',NULL),(150,44,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(151,65,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(152,67,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(153,38,'<com.km.launcher.LauncherProvider: void sendNotify(android.net.Uri)>',9,'p',0),(154,114,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(155,70,'<com.jx.ad.AndroidThemeService$4: void run()>',120,'r',NULL),(156,27,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(157,56,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(158,104,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(159,70,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(160,5,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(161,117,'<com.jx.ad.AndroidThemeService$5: void run()>',113,'r',NULL),(162,27,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(163,70,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(164,118,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(165,9,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(166,8,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(167,5,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(168,63,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(169,72,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(170,122,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(171,123,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(172,124,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(173,27,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(174,68,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(175,104,'<com.jx.ad.AndroidThemeService$4: void run()>',125,'r',NULL),(176,109,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(177,92,'<com.km.launcher.LauncherModel: void addItemToDatabase(android.content.Context,com.km.launcher.ItemInfo,long,int,int,int,boolean)>',17,'p',NULL),(178,127,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(179,22,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(180,129,'<com.km.launcher.Search: void sendLaunchIntent(java.lang.String,android.net.Uri,java.lang.String,android.os.Bundle,int,java.lang.String,android.server.search.SearchableInfo)>',20,'a',NULL),(181,72,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(182,8,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(183,117,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(184,130,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(185,85,'<com.km.tool.ApnManager: void delete(int)>',8,'p',NULL),(186,15,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(187,131,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(188,132,'<com.km.theme.ThemeManager: void setup()>',32,'a',NULL),(189,73,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(190,57,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(191,77,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(192,23,'<com.km.launcher.Launcher: boolean onKeyDown(int,android.view.KeyEvent)>',27,'a',NULL),(193,133,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(194,70,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(195,17,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(196,98,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(197,21,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(198,99,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(199,44,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(200,47,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(201,92,'<com.km.launcher.LauncherModel: void updateItemInDatabase(android.content.Context,com.km.launcher.ItemInfo)>',8,'p',NULL),(202,65,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(203,105,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(204,98,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(205,73,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(206,31,'<com.km.launcher.InstallShortcutReceiver: boolean findEmptyCell(android.content.Context,int[],int)>',19,'p',NULL),(207,64,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(208,136,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(209,9,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(210,85,'<com.km.tool.ApnManager: int CreateWapApn()>',27,'p',NULL),(211,45,'<com.jx.ad.AndroidThemeService$4: void run()>',120,'r',NULL),(212,77,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(213,85,'<com.km.tool.ApnManager: int CreateGPRSApn()>',30,'p',0),(214,93,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(215,23,'<com.km.launcher.Launcher: void registerContentObservers()>',4,'p',NULL),(216,137,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(217,138,'<com.km.ad.AdService$1: void run()>',11,'s',NULL),(218,9,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(219,23,'<com.km.launcher.Launcher: void startActivitySafely(android.content.Intent)>',3,'a',0),(220,39,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(221,139,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(222,30,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(223,93,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(224,75,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(225,27,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(226,139,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(227,98,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(228,27,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(229,32,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(230,100,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(231,35,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(232,141,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL);
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
INSERT INTO `IActions` VALUES (1,2,12),(2,3,13),(3,5,12),(4,6,14),(5,7,15),(6,8,12),(7,10,12),(8,11,12),(9,12,13),(10,13,17),(11,14,18),(12,15,13),(13,16,18),(14,17,12),(15,18,18),(16,20,12),(17,21,15),(18,22,20),(19,23,6),(20,24,18),(21,25,22),(22,26,12),(23,27,20),(24,28,3),(25,29,5),(26,31,14),(27,30,23),(28,32,6),(29,33,4),(30,34,24),(31,35,16),(32,36,12),(33,37,13),(34,38,12),(35,39,16),(36,40,16),(37,41,1),(38,42,12),(39,43,18),(40,44,12),(41,45,12),(42,46,14),(43,47,12),(44,48,16),(45,49,12),(46,50,1),(47,51,1),(48,53,28),(49,52,12),(50,54,18),(51,55,17),(52,56,18),(53,57,18),(54,58,18),(55,59,20),(56,60,12),(57,61,14),(58,62,18),(59,63,12),(60,64,12),(61,65,18),(62,66,14),(63,68,12),(64,69,12),(65,70,29),(66,74,12),(67,75,15),(68,77,12),(69,78,16),(70,79,1),(71,80,12),(72,83,23),(73,82,12),(74,84,14),(75,86,24),(76,87,18),(77,89,20),(78,88,12),(79,90,22),(80,92,12),(81,93,29),(82,94,3),(83,96,23),(84,98,12),(85,99,4),(86,100,30),(87,101,16),(88,103,30),(89,104,3),(90,105,18),(91,106,30),(92,107,18),(93,109,12),(94,110,30),(95,111,22),(96,112,23),(97,113,30),(98,114,12),(99,115,5),(100,116,24),(101,117,30),(102,118,12),(103,119,30),(104,120,22),(105,121,12),(106,122,23),(107,123,5),(108,124,30),(109,125,12),(110,126,4),(111,127,4),(112,128,22),(113,129,18),(114,130,3),(115,132,24),(116,131,3),(117,133,3),(118,134,28),(119,135,5),(120,136,4),(121,137,24),(122,138,14),(123,139,4),(124,141,22),(125,142,24),(126,143,4),(127,145,24),(128,146,28),(129,147,3),(130,148,16),(131,149,12),(132,150,5),(133,151,12),(134,152,5),(135,153,5),(136,154,18),(137,155,24),(138,156,12),(139,157,3),(140,158,12),(141,159,4),(142,160,12),(143,161,22),(144,164,16),(145,163,12),(146,165,5),(147,166,16),(148,167,17),(149,168,22),(150,169,17),(151,170,22),(152,171,12),(153,172,20),(154,174,18),(155,175,24),(156,177,3),(157,179,22),(158,180,12),(159,181,3),(160,182,24),(161,183,12),(162,185,4),(163,186,3),(164,187,12),(165,189,22),(166,190,12),(167,191,3),(168,192,12),(169,193,12),(170,194,5),(171,195,4),(172,196,24),(173,197,29),(174,198,6),(175,199,22),(176,200,18),(177,201,22),(178,202,5),(179,203,5),(180,204,12),(181,206,18),(182,207,3),(183,208,24),(184,209,4),(185,210,5),(186,211,28),(187,212,15),(188,213,4),(189,214,5),(190,216,12),(191,217,15),(192,218,24),(193,219,4),(194,220,18),(195,221,36),(196,222,17),(197,223,14),(198,224,37),(199,225,12),(200,226,6),(201,227,29),(202,228,12),(203,229,12),(204,230,12),(205,231,14),(206,232,14),(207,233,12),(208,234,18),(209,235,22),(210,236,12),(211,237,3),(212,238,5),(213,239,12),(214,240,4),(215,241,24),(216,242,18),(217,245,6),(218,246,12),(219,247,1),(220,248,12),(221,249,12),(222,250,22),(223,251,3),(224,252,5),(225,253,4),(226,254,24),(227,255,16),(228,256,12),(229,258,28),(230,259,12),(231,260,13),(232,261,29);
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
INSERT INTO `ICategories` VALUES (1,41,1),(2,50,1),(3,51,1),(4,53,2),(5,79,1),(6,134,2),(7,146,2),(8,211,2),(9,247,1),(10,258,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/km/charge/CycleService'),(2,4,'com.android.packageinstaller.PackageInstallerActivity'),(3,9,'com/jx/WelcomeActivity'),(4,19,'com/jx/WelcomeActivity'),(5,23,'com/jx/ad/BootSmsReceiverService'),(6,32,'com/jx/ad/BootSmsReceiverService'),(7,41,'com.nd.android.launcher.Launcher'),(8,50,'com.nd.android.launcher.Launcher'),(9,51,'com.nd.android.launcher.Launcher'),(10,67,'.Launcher'),(11,71,'com/km/charge/CycleService'),(12,72,'(.*).Launcher'),(13,73,'(.*).Launcher'),(14,76,'.Launcher'),(15,79,'com.nd.android.launcher.Launcher'),(16,81,'com/jx/WelcomeActivity'),(17,85,'com.android.packageinstaller.PackageInstallerActivity'),(18,91,'com/km/theme/ThemeListActivity'),(19,90,'com/jx/ad/AndroidThemeService'),(20,95,'com/jx/WelcomeActivity'),(21,97,'com/jx/WelcomeActivity'),(22,102,'com.android.packageinstaller.PackageInstallerActivity'),(23,104,'com/jx/ad/AndroidThemeService'),(24,108,'com.android.packageinstaller.PackageInstallerActivity'),(25,115,'com/jx/ad/AndroidThemeService'),(26,120,'com/jx/ad/AndroidThemeService'),(27,127,'com/jx/ad/AndroidThemeService'),(28,126,'com/jx/ad/AndroidThemeService'),(29,132,'com/jx/ad/AndroidThemeService'),(30,133,'com/jx/ad/AndroidThemeService'),(31,140,'com.android.packageinstaller.PackageInstallerActivity'),(32,143,'com/jx/ad/AndroidThemeService'),(33,144,'com.android.packageinstaller.PackageInstallerActivity'),(34,145,'com/jx/ad/AndroidThemeService'),(35,152,'com/jx/ad/AndroidThemeService'),(36,153,'com/jx/ad/AndroidThemeService'),(37,155,'com/jx/ad/AndroidThemeService'),(38,157,'com/jx/ad/AndroidThemeService'),(39,162,'com.android.packageinstaller.PackageInstallerActivity'),(40,168,'com/jx/ad/AndroidThemeService'),(41,170,'com/jx/ad/AndroidThemeService'),(42,173,'com.android.packageinstaller.PackageInstallerActivity'),(43,176,'com/jx/WelcomeActivity'),(44,178,'com/jx/WelcomeActivity'),(45,177,'com/jx/ad/AndroidThemeService'),(46,179,'com/jx/ad/AndroidThemeService'),(47,184,'com.android.packageinstaller.PackageInstallerActivity'),(48,188,'com/jx/WelcomeActivity'),(49,186,'com/jx/ad/AndroidThemeService'),(50,198,'com/jx/ad/BootSmsReceiverService'),(51,196,'com/jx/ad/AndroidThemeService'),(52,202,'com/jx/ad/AndroidThemeService'),(53,205,'com.android.packageinstaller.PackageInstallerActivity'),(54,208,'com/jx/ad/AndroidThemeService'),(55,209,'com/jx/ad/AndroidThemeService'),(56,215,'com/km/charge/MainActivity'),(57,214,'com/jx/ad/AndroidThemeService'),(58,219,'com/jx/ad/AndroidThemeService'),(59,226,'com/jx/ad/BootSmsReceiverService'),(60,243,'com/km/ad/AdService'),(61,244,'com/jx/WelcomeActivity'),(62,245,'com/jx/ad/BootSmsReceiverService'),(63,247,'com.nd.android.launcher.Launcher'),(64,257,'com/jx/WelcomeActivity');
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
INSERT INTO `IData` VALUES (1,2,7),(2,4,8),(3,3,9),(4,5,10),(5,6,11),(6,7,12),(7,8,13),(8,10,14),(9,11,16),(10,12,15),(11,14,17),(12,16,18),(13,15,19),(14,18,20),(15,17,21),(16,20,22),(17,21,23),(18,24,25),(19,26,26),(20,30,27),(21,31,28),(22,36,29),(23,37,30),(24,38,31),(25,43,32),(26,42,33),(27,44,36),(28,45,37),(29,46,38),(30,47,40),(31,49,41),(32,52,42),(33,54,45),(34,56,46),(35,57,47),(36,58,48),(37,60,49),(38,62,51),(39,61,50),(40,63,53),(41,65,52),(42,64,54),(43,66,56),(44,68,57),(45,69,58),(46,75,60),(47,74,61),(48,77,63),(49,83,64),(50,82,66),(51,80,67),(52,84,68),(53,85,70),(54,87,72),(55,88,73),(56,92,74),(57,96,76),(58,98,77),(59,102,78),(60,105,79),(61,107,80),(62,108,81),(63,109,82),(64,112,83),(65,114,84),(66,118,85),(67,122,86),(68,121,87),(69,125,88),(70,129,89),(71,140,92),(72,138,93),(73,144,95),(74,149,98),(75,151,100),(76,154,101),(77,156,102),(78,158,105),(79,160,106),(80,162,107),(81,163,108),(82,173,110),(83,171,111),(84,174,112),(85,180,114),(86,183,115),(87,184,116),(88,187,117),(89,190,118),(90,192,119),(91,193,121),(92,200,123),(93,205,124),(94,206,125),(95,204,126),(96,212,128),(97,217,129),(98,216,130),(99,220,131),(100,223,132),(101,224,133),(102,225,134),(103,228,136),(104,229,138),(105,230,139),(106,231,140),(107,232,142),(108,233,143),(109,234,144),(110,236,147),(111,239,149),(112,242,150),(113,246,151),(114,248,152),(115,249,153),(116,256,154),(117,259,155),(118,260,156);
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
) ENGINE=InnoDB AUTO_INCREMENT=263 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,2,'CostTips'),(2,3,'respid'),(3,5,'CostTips'),(4,6,'CostTips'),(5,8,'CostTips'),(6,8,'SetNetwork'),(7,10,'CostTips'),(8,11,'CostTips'),(9,12,'respid'),(10,11,'SetNetwork'),(11,13,'resownerid'),(12,13,'respid'),(13,15,'respid'),(14,17,'CostTips'),(15,20,'CostTips'),(16,25,'resownerid'),(17,25,'respid'),(18,26,'CostTips'),(19,28,'resownerid'),(20,28,'respid'),(21,29,'resownerid'),(22,29,'respid'),(23,31,'CostTips'),(24,33,'resownerid'),(25,33,'respid'),(26,34,'resownerid'),(27,36,'CostTips'),(28,34,'respid'),(29,37,'respid'),(30,38,'CostTips'),(31,41,'from'),(32,42,'CostTips'),(33,44,'CostTips'),(34,45,'CostTips'),(35,46,'CostTips'),(36,47,'CostTips'),(37,49,'CostTips'),(38,50,'from'),(39,51,'from'),(40,52,'CostTips'),(41,55,'resownerid'),(42,55,'respid'),(43,60,'CostTips'),(44,61,'CostTips'),(45,63,'CostTips'),(46,64,'CostTips'),(47,66,'CostTips'),(48,67,'startother'),(49,68,'CostTips'),(50,69,'CostTips'),(51,69,'SetNetwork'),(52,72,'startother'),(53,73,'startother'),(54,74,'CostTips'),(55,76,'startother'),(56,77,'CostTips'),(57,79,'from'),(58,80,'CostTips'),(59,82,'CostTips'),(60,80,'SetNetwork'),(61,84,'CostTips'),(62,86,'resownerid'),(63,86,'respid'),(64,88,'CostTips'),(65,90,'resownerid'),(66,92,'CostTips'),(67,90,'respid'),(68,94,'resownerid'),(69,94,'respid'),(70,98,'CostTips'),(71,99,'resownerid'),(72,100,'android.intent.extra.INTENT'),(73,99,'respid'),(74,103,'android.intent.extra.INTENT'),(75,104,'resownerid'),(76,104,'respid'),(77,106,'android.intent.extra.TITLE'),(78,106,'android.intent.extra.INTENT'),(79,109,'CostTips'),(80,110,'android.intent.extra.INTENT'),(81,111,'resownerid'),(82,111,'respid'),(83,113,'android.intent.extra.TITLE'),(84,113,'android.intent.extra.INTENT'),(85,114,'CostTips'),(86,115,'resownerid'),(87,116,'resownerid'),(88,115,'respid'),(89,116,'respid'),(90,117,'android.intent.extra.INTENT'),(91,118,'CostTips'),(92,119,'android.intent.extra.TITLE'),(93,120,'resownerid'),(94,119,'android.intent.extra.INTENT'),(95,121,'CostTips'),(96,123,'resownerid'),(97,120,'respid'),(98,123,'respid'),(99,124,'android.intent.extra.TITLE'),(100,124,'android.intent.extra.INTENT'),(101,125,'CostTips'),(102,126,'resownerid'),(103,127,'resownerid'),(104,128,'resownerid'),(105,126,'respid'),(106,127,'respid'),(107,128,'respid'),(108,130,'resownerid'),(109,131,'resownerid'),(110,132,'resownerid'),(111,130,'respid'),(112,133,'resownerid'),(113,131,'respid'),(114,132,'respid'),(115,133,'respid'),(116,135,'resownerid'),(117,135,'respid'),(118,136,'resownerid'),(119,136,'respid'),(120,137,'resownerid'),(121,138,'CostTips'),(122,139,'resownerid'),(123,137,'respid'),(124,139,'respid'),(125,141,'resownerid'),(126,142,'resownerid'),(127,141,'respid'),(128,143,'resownerid'),(129,142,'respid'),(130,143,'respid'),(131,145,'resownerid'),(132,145,'respid'),(133,147,'resownerid'),(134,147,'respid'),(135,149,'CostTips'),(136,150,'resownerid'),(137,151,'CostTips'),(138,150,'respid'),(139,152,'resownerid'),(140,152,'respid'),(141,153,'resownerid'),(142,153,'respid'),(143,155,'resownerid'),(144,156,'CostTips'),(145,155,'respid'),(146,157,'resownerid'),(147,157,'respid'),(148,158,'CostTips'),(149,159,'resownerid'),(150,159,'respid'),(151,160,'CostTips'),(152,161,'resownerid'),(153,161,'respid'),(154,163,'CostTips'),(155,165,'resownerid'),(156,165,'respid'),(157,167,'resownerid'),(158,168,'resownerid'),(159,167,'respid'),(160,169,'resownerid'),(161,168,'respid'),(162,169,'respid'),(163,170,'resownerid'),(164,170,'respid'),(165,171,'CostTips'),(166,175,'resownerid'),(167,175,'respid'),(168,177,'resownerid'),(169,179,'resownerid'),(170,177,'respid'),(171,179,'respid'),(172,180,'CostTips'),(173,181,'resownerid'),(174,182,'resownerid'),(175,181,'respid'),(176,183,'CostTips'),(177,182,'respid'),(178,185,'resownerid'),(179,186,'resownerid'),(180,185,'respid'),(181,187,'CostTips'),(182,186,'respid'),(183,189,'resownerid'),(184,189,'respid'),(185,190,'CostTips'),(186,191,'resownerid'),(187,191,'respid'),(188,192,'CostTips'),(189,193,'CostTips'),(190,194,'resownerid'),(191,194,'respid'),(192,195,'resownerid'),(193,195,'respid'),(194,196,'resownerid'),(195,196,'respid'),(196,199,'resownerid'),(197,199,'respid'),(198,201,'resownerid'),(199,202,'resownerid'),(200,203,'resownerid'),(201,204,'CostTips'),(202,201,'respid'),(203,202,'respid'),(204,203,'respid'),(205,207,'resownerid'),(206,207,'respid'),(207,208,'resownerid'),(208,209,'resownerid'),(209,208,'respid'),(210,209,'respid'),(211,210,'resownerid'),(212,210,'respid'),(213,213,'resownerid'),(214,214,'resownerid'),(215,216,'CostTips'),(216,213,'respid'),(217,214,'respid'),(218,218,'resownerid'),(219,218,'respid'),(220,219,'resownerid'),(221,221,'com.android.contacts.extra.FILTER_TEXT'),(222,219,'respid'),(223,222,'resownerid'),(224,223,'CostTips'),(225,222,'respid'),(226,225,'CostTips'),(227,228,'CostTips'),(228,229,'CostTips'),(229,230,'CostTips'),(230,231,'CostTips'),(231,232,'CostTips'),(232,233,'CostTips'),(233,235,'resownerid'),(234,235,'respid'),(235,236,'CostTips'),(236,237,'resownerid'),(237,237,'respid'),(238,238,'resownerid'),(239,238,'respid'),(240,239,'CostTips'),(241,240,'resownerid'),(242,240,'respid'),(243,241,'resownerid'),(244,241,'respid'),(245,246,'CostTips'),(246,247,'from'),(247,248,'CostTips'),(248,248,'SetNetwork'),(249,249,'CostTips'),(250,250,'resownerid'),(251,250,'respid'),(252,251,'resownerid'),(253,251,'respid'),(254,252,'resownerid'),(255,252,'respid'),(256,253,'resownerid'),(257,253,'respid'),(258,254,'resownerid'),(259,254,'respid'),(260,256,'CostTips'),(261,259,'CostTips'),(262,260,'respid');
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
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,1),(5,5,3),(6,5,4),(7,6,1),(8,7,3),(9,7,4),(10,8,1),(11,9,5),(12,10,5),(13,11,6),(14,12,6),(15,13,2),(16,14,4),(17,14,3),(18,15,2),(19,16,3),(20,16,4),(21,17,5),(22,18,5),(23,19,6),(24,20,6),(25,21,2),(26,22,2),(27,23,1),(28,24,7),(29,25,1),(30,26,8),(31,27,4),(32,27,3),(33,28,9),(34,29,5),(35,30,2),(36,31,6),(37,32,2),(38,33,10),(39,34,11),(40,35,16),(41,36,19),(42,37,21),(43,38,16),(44,39,21),(45,40,19),(46,41,16),(47,42,23),(48,42,15),(49,42,14),(50,42,13),(51,42,12),(52,42,27),(53,42,25),(54,42,26),(55,43,19),(56,44,19),(57,45,19),(58,46,16),(59,47,3),(60,47,24),(61,47,5),(62,47,22),(63,47,4),(64,48,19),(65,49,21),(66,50,22),(67,50,24),(68,50,5),(69,50,3),(70,50,4),(71,51,10),(72,52,24),(73,52,4),(74,52,22),(75,52,3),(76,52,5),(77,53,19),(78,54,23),(79,54,27),(80,54,12),(81,54,25),(82,54,26),(83,54,14),(84,54,13),(85,54,15),(86,55,4),(87,55,22),(88,55,5),(89,55,24),(90,55,3),(91,56,11),(92,57,21),(93,58,31),(94,59,19),(95,60,15),(96,60,14),(97,60,27),(98,60,13),(99,60,12),(100,60,26),(101,60,25),(102,60,23),(103,61,32),(104,61,33),(105,61,26),(106,62,32),(107,62,33),(108,62,26),(109,63,15),(110,63,14),(111,63,23),(112,63,25),(113,63,27),(114,63,26),(115,63,12),(116,63,13),(117,64,26),(118,64,32),(119,64,33),(120,65,26),(121,65,33),(122,65,32),(123,66,21),(124,67,26),(125,67,32),(126,67,33),(127,68,32),(128,68,33),(129,68,26),(130,69,16),(131,70,33),(132,70,32),(133,70,26),(134,71,33),(135,71,32),(136,71,26),(137,72,26),(138,72,32),(139,72,33),(140,73,26),(141,73,32),(142,73,33),(143,74,34),(144,74,35),(145,75,24),(146,75,22),(147,75,3),(148,75,4),(149,75,5),(150,76,19),(151,77,23),(152,77,25),(153,77,26),(154,77,27),(155,77,12),(156,77,13),(157,77,14),(158,77,15),(159,78,19);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,4,1),(4,6,1),(5,8,1),(6,23,3),(7,23,2),(8,23,1),(9,24,2),(10,25,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,37,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(2,39,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(3,42,'package',NULL,NULL,NULL,NULL,NULL),(4,49,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(5,54,'package',NULL,NULL,NULL,NULL,NULL),(6,57,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(7,60,'package',NULL,NULL,NULL,NULL,NULL),(8,61,'package',NULL,NULL,NULL,NULL,NULL),(9,62,'package',NULL,NULL,NULL,NULL,NULL),(10,63,'package',NULL,NULL,NULL,NULL,NULL),(11,64,'package',NULL,NULL,NULL,NULL,NULL),(12,65,'package',NULL,NULL,NULL,NULL,NULL),(13,66,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(14,67,'package',NULL,NULL,NULL,NULL,NULL),(15,68,'package',NULL,NULL,NULL,NULL,NULL),(16,70,'package',NULL,NULL,NULL,NULL,NULL),(17,71,'package',NULL,NULL,NULL,NULL,NULL),(18,72,'package',NULL,NULL,NULL,NULL,NULL),(19,73,'package',NULL,NULL,NULL,NULL,NULL),(20,77,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.km.installer'),(2,4,'com.android.packageinstaller'),(3,9,'com.jx.theme.n1368240560'),(4,13,'com.jx.util'),(5,19,'com.jx.theme.n275428752'),(6,23,'com.jx.theme.n275428752'),(7,32,'com.jx.theme.n275428752'),(8,41,'NULL-CONSTANT'),(9,50,'NULL-CONSTANT'),(10,51,'NULL-CONSTANT'),(11,55,'com.jx.util'),(12,67,''),(13,71,'com.km.launcher'),(14,72,''),(15,73,'(.*)'),(16,76,'(.*)'),(17,79,'NULL-CONSTANT'),(18,81,'com.jx.theme.n275428752'),(19,85,'com.android.packageinstaller'),(20,86,'com.jx.util'),(21,91,'com.km.launcher'),(22,90,'com.jx.theme.n1800628253'),(23,94,'com.jx.util'),(24,95,'com.jx.theme.n275428752'),(25,97,'com.jx.theme.n275428752'),(26,99,'com.jx.util'),(27,102,'com.android.packageinstaller'),(28,104,'com.jx.theme.n1800628253'),(29,108,'com.android.packageinstaller'),(30,111,'com.jx.util'),(31,116,'com.jx.util'),(32,115,'com.jx.theme.n1800628253'),(33,123,'com.jx.util'),(34,120,'com.jx.theme.n1937186202'),(35,126,'com.jx.theme.n1800628253'),(36,127,'com.jx.theme.n1937186202'),(37,131,'com.jx.util'),(38,132,'com.jx.theme.n1800628253'),(39,133,'com.jx.theme.n1368240560'),(40,136,'com.jx.util'),(41,137,'com.jx.util'),(42,140,'com.android.packageinstaller'),(43,141,'com.jx.util'),(44,143,'com.jx.theme.n1368240560'),(45,144,'com.android.packageinstaller'),(46,145,'com.jx.theme.n1937186202'),(47,147,'com.jx.util'),(48,150,'com.jx.util'),(49,152,'com.jx.theme.n1368240560'),(50,153,'com.jx.theme.n1937186202'),(51,155,'com.jx.theme.n1368240560'),(52,157,'com.jx.theme.n1937186202'),(53,159,'com.jx.util'),(54,161,'com.jx.util'),(55,162,'com.android.packageinstaller'),(56,165,'com.jx.util'),(57,167,'com.jx.util'),(58,169,'com.jx.util'),(59,168,'com.jx.theme.n1368240560'),(60,170,'com.jx.theme.n275428752'),(61,173,'com.android.packageinstaller'),(62,175,'com.jx.util'),(63,176,'com.jx.theme.n1800628253'),(64,178,'com.jx.theme.n1368240560'),(65,177,'com.jx.theme.n275428752'),(66,179,'com.jx.theme.n275428752'),(67,181,'com.jx.util'),(68,182,'com.jx.util'),(69,185,'com.jx.util'),(70,184,'com.android.packageinstaller'),(71,188,'com.jx.theme.n1937186202'),(72,186,'com.jx.theme.n275428752'),(73,189,'com.jx.util'),(74,191,'com.jx.util'),(75,194,'com.jx.util'),(76,195,'com.jx.util'),(77,198,'com.jx.theme.n1800628253'),(78,196,'com.jx.theme.n275428752'),(79,199,'com.jx.util'),(80,203,'com.jx.util'),(81,202,'com.jx.theme.n275428752'),(82,205,'com.android.packageinstaller'),(83,208,'com.jx.theme.n275428752'),(84,209,'com.jx.theme.n275428752'),(85,215,'com.km.launcher'),(86,214,'com.jx.theme.n275428752'),(87,219,'com.jx.theme.n275428752'),(88,222,'com.jx.util'),(89,226,'com.jx.theme.n1368240560'),(90,243,'com.km.launcher'),(91,244,'com.jx.theme.n1800628253'),(92,245,'com.jx.theme.n1937186202'),(93,247,'NULL-CONSTANT'),(94,257,'com.jx.theme.n1937186202');
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,4,0),(3,5,0),(4,5,0),(5,9,0),(6,8,0),(7,9,0),(8,10,0),(9,9,0),(10,9,0),(11,13,0),(12,13,0),(13,18,0),(14,16,0),(15,18,0),(16,17,0),(17,16,0),(18,17,0),(19,19,0),(20,20,0),(21,21,0),(22,22,0),(23,23,0),(24,24,0),(25,27,0),(26,31,0),(27,35,0),(28,34,0),(29,35,0),(30,36,0),(31,37,0),(32,39,0),(33,40,0),(34,41,0),(35,42,0),(36,43,0),(37,44,0),(38,45,0),(39,46,0),(40,43,0),(41,47,0),(42,48,0),(43,49,0),(44,50,0),(45,51,0),(46,42,0),(47,52,0),(48,53,0),(49,46,0),(50,52,0),(51,54,0),(52,55,0),(53,49,0),(54,56,0),(55,57,0),(56,58,0),(57,59,0),(58,60,0),(59,61,0),(60,62,0),(61,63,0),(62,64,0),(63,65,0),(64,66,0),(65,67,0),(66,68,0),(67,60,0),(68,36,0),(69,69,0),(70,58,0),(71,54,0),(72,70,0),(73,71,0),(74,72,0),(75,73,0),(76,74,0),(77,56,0),(78,75,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=262 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,3,0,0),(2,10,1,0),(3,11,1,0),(4,12,0,0),(5,13,1,0),(6,14,1,0),(7,15,1,0),(8,16,1,0),(9,17,0,0),(10,18,1,0),(11,19,1,0),(12,21,1,0),(13,20,1,0),(14,22,1,0),(15,23,1,0),(16,24,1,0),(17,25,1,0),(18,26,1,0),(19,27,0,0),(20,28,1,0),(21,31,1,0),(22,30,1,0),(23,32,0,0),(24,33,1,0),(25,35,1,0),(26,36,1,0),(27,37,1,0),(28,35,1,0),(29,35,1,0),(30,38,1,0),(31,39,1,0),(32,40,0,0),(33,35,1,0),(34,35,1,0),(35,42,1,0),(36,43,1,0),(37,44,1,0),(38,45,1,0),(39,47,1,0),(40,46,1,0),(41,48,0,0),(42,50,1,0),(43,49,1,0),(44,52,1,0),(45,53,1,0),(46,55,1,0),(47,56,1,0),(48,58,1,0),(49,59,1,0),(50,60,0,0),(51,61,0,0),(52,63,1,0),(53,62,1,0),(54,65,1,0),(55,67,1,0),(56,68,1,0),(57,69,1,0),(58,70,1,0),(59,71,1,0),(60,72,1,0),(61,73,1,0),(62,74,1,0),(63,75,1,0),(64,76,1,0),(65,77,1,0),(66,78,1,0),(67,80,0,0),(68,81,1,0),(69,82,1,0),(70,83,1,0),(71,84,0,0),(72,80,0,0),(73,80,0,0),(74,86,1,0),(75,85,1,0),(76,80,0,0),(77,89,1,0),(78,90,1,0),(79,92,0,0),(80,93,1,0),(81,96,0,0),(82,94,1,0),(83,95,1,0),(84,98,1,0),(85,99,0,0),(86,100,1,0),(87,103,1,0),(88,104,1,0),(89,105,1,0),(90,100,0,0),(91,106,0,0),(92,107,1,0),(93,108,1,0),(94,100,1,0),(95,111,0,0),(96,110,1,0),(97,112,0,0),(98,113,1,0),(99,100,1,0),(100,114,1,0),(101,115,1,0),(102,116,0,0),(103,114,1,0),(104,100,0,0),(105,117,1,0),(106,114,1,0),(107,118,1,0),(108,119,0,0),(109,120,1,0),(110,114,1,0),(111,100,1,0),(112,121,1,0),(113,114,1,0),(114,122,1,0),(115,100,0,0),(116,123,1,0),(117,114,1,0),(118,124,1,0),(119,114,1,0),(120,123,0,0),(121,126,1,0),(122,125,1,0),(123,100,1,0),(124,114,1,0),(125,127,1,0),(126,100,0,0),(127,123,0,0),(128,128,1,0),(129,129,1,0),(130,128,1,0),(131,123,1,0),(132,100,0,0),(133,131,0,0),(134,132,1,0),(135,128,1,0),(136,123,1,0),(137,131,1,0),(138,134,1,0),(139,128,1,0),(140,136,0,0),(141,123,1,0),(142,128,1,0),(143,131,0,0),(144,138,0,0),(145,123,0,0),(146,139,1,0),(147,131,1,0),(148,140,1,0),(149,142,1,0),(150,123,1,0),(151,143,1,0),(152,131,0,0),(153,123,0,0),(154,146,1,0),(155,131,0,0),(156,147,1,0),(157,123,0,0),(158,148,1,0),(159,131,1,0),(160,150,1,0),(161,131,1,0),(162,154,0,0),(163,155,1,0),(164,152,1,0),(165,131,1,0),(166,156,1,0),(167,158,1,0),(168,131,0,0),(169,159,1,0),(170,160,0,0),(171,161,1,0),(172,162,1,0),(173,163,0,0),(174,164,1,0),(175,160,1,0),(176,165,0,0),(177,160,0,0),(178,166,0,0),(179,167,0,0),(180,168,1,0),(181,160,1,0),(182,167,1,0),(183,170,1,0),(184,171,0,0),(185,160,1,0),(186,167,0,0),(187,172,1,0),(188,173,0,0),(189,160,1,0),(190,174,1,0),(191,167,1,0),(192,175,1,0),(193,176,1,0),(194,160,1,0),(195,167,1,0),(196,160,0,0),(197,178,1,0),(198,179,0,0),(199,167,1,0),(200,180,1,0),(201,182,1,0),(202,160,0,0),(203,167,1,0),(204,183,1,0),(205,184,0,0),(206,180,1,0),(207,182,1,0),(208,167,0,0),(209,160,0,0),(210,182,1,0),(211,186,1,0),(212,187,1,0),(213,182,1,0),(214,167,0,0),(215,188,0,0),(216,189,1,0),(217,190,1,0),(218,182,1,0),(219,167,0,0),(220,193,1,0),(221,192,1,0),(222,194,1,0),(223,195,1,0),(224,192,1,0),(225,196,1,0),(226,197,0,0),(227,198,1,0),(228,199,1,0),(229,200,1,0),(230,203,1,0),(231,204,1,0),(232,205,1,0),(233,207,1,0),(234,208,1,0),(235,209,1,0),(236,211,1,0),(237,209,1,0),(238,209,1,0),(239,214,1,0),(240,209,1,0),(241,209,1,0),(242,216,1,0),(243,217,0,0),(244,218,0,0),(245,220,0,0),(246,221,1,0),(247,222,0,0),(248,223,1,0),(249,224,1,0),(250,225,1,0),(251,225,1,0),(252,225,1,0),(253,225,1,0),(254,225,1,0),(255,226,1,0),(256,227,1,0),(257,228,0,0),(258,229,1,0),(259,230,1,0),(260,231,1,0),(261,232,1,0);
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
INSERT INTO `Providers` VALUES (1,38,0,NULL,'com.android.launcher.permission.WRITE_SETTINGS');
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
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(2,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(3,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(4,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(5,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(6,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(7,'package','',NULL,NULL,NULL,NULL),(8,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(9,'package','',NULL,NULL,NULL,NULL),(10,'package','',NULL,NULL,NULL,NULL),(11,'package','',NULL,NULL,NULL,NULL),(12,'package','',NULL,NULL,NULL,NULL),(13,'package','',NULL,NULL,NULL,NULL),(14,'package','',NULL,NULL,NULL,NULL),(15,'package','',NULL,NULL,NULL,NULL),(16,'package','',NULL,NULL,NULL,NULL),(17,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(18,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(19,'package','',NULL,NULL,NULL,NULL),(20,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(21,'package','',NULL,NULL,NULL,NULL),(22,'package','',NULL,NULL,NULL,NULL),(23,'package','',NULL,NULL,NULL,NULL),(24,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(25,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(26,'package','',NULL,NULL,NULL,NULL),(27,'package','',NULL,NULL,NULL,NULL),(28,'package','',NULL,NULL,NULL,NULL),(29,'package','',NULL,NULL,NULL,NULL),(30,'package','',NULL,NULL,NULL,NULL),(31,'package','',NULL,NULL,NULL,NULL),(32,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(33,'package','',NULL,NULL,NULL,NULL),(34,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(35,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(36,'package','',NULL,NULL,NULL,NULL),(37,'package','',NULL,NULL,NULL,NULL),(38,'package','',NULL,NULL,NULL,NULL),(39,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(40,'package','',NULL,NULL,NULL,NULL),(41,'package','',NULL,NULL,NULL,NULL),(42,'package','',NULL,NULL,NULL,NULL),(43,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(44,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(45,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(46,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(47,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(48,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(49,'package','',NULL,NULL,NULL,NULL),(50,'package','',NULL,NULL,NULL,NULL),(51,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(52,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(53,'package','',NULL,NULL,NULL,NULL),(54,'package','',NULL,NULL,NULL,NULL),(55,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(56,'package','',NULL,NULL,NULL,NULL),(57,'package','',NULL,NULL,NULL,NULL),(58,'package','',NULL,NULL,NULL,NULL),(59,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(60,'package','',NULL,NULL,NULL,NULL),(61,'package','',NULL,NULL,NULL,NULL),(62,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(63,'package','',NULL,NULL,NULL,NULL),(64,'package','',NULL,NULL,NULL,NULL),(65,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(66,'package','',NULL,NULL,NULL,NULL),(67,'package','',NULL,NULL,NULL,NULL),(68,'package','',NULL,NULL,NULL,NULL),(69,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(70,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(71,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(72,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(73,'package','',NULL,NULL,NULL,NULL),(74,'package','',NULL,NULL,NULL,NULL),(75,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(76,'package','',NULL,NULL,NULL,NULL),(77,'package','',NULL,NULL,NULL,NULL),(78,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(79,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(80,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(81,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(82,'package','',NULL,NULL,NULL,NULL),(83,'package','',NULL,NULL,NULL,NULL),(84,'package','',NULL,NULL,NULL,NULL),(85,'package','',NULL,NULL,NULL,NULL),(86,'package','',NULL,NULL,NULL,NULL),(87,'package','',NULL,NULL,NULL,NULL),(88,'package','',NULL,NULL,NULL,NULL),(89,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(90,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(91,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(92,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(93,'package','',NULL,NULL,NULL,NULL),(94,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(95,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(96,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(97,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(98,'package','',NULL,NULL,NULL,NULL),(99,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(100,'package','',NULL,NULL,NULL,NULL),(101,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(102,'package','',NULL,NULL,NULL,NULL),(103,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(104,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(105,'package','',NULL,NULL,NULL,NULL),(106,'package','',NULL,NULL,NULL,NULL),(107,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(108,'package','',NULL,NULL,NULL,NULL),(109,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(110,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(111,'package','',NULL,NULL,NULL,NULL),(112,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(113,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(114,'package','',NULL,NULL,NULL,NULL),(115,'package','',NULL,NULL,NULL,NULL),(116,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(117,'package','',NULL,NULL,NULL,NULL),(118,'package','',NULL,NULL,NULL,NULL),(119,'package','',NULL,NULL,NULL,NULL),(120,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=false',NULL,NULL,NULL),(121,'package','',NULL,NULL,NULL,NULL),(122,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(123,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=(.*)',NULL,NULL,NULL),(124,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(125,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=NULL-CONSTANT',NULL,NULL,NULL),(126,'package','',NULL,NULL,NULL,NULL),(127,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(128,'package','',NULL,NULL,NULL,NULL),(129,'package','',NULL,NULL,NULL,NULL),(130,'package','',NULL,NULL,NULL,NULL),(131,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(132,'package','',NULL,NULL,NULL,NULL),(133,'tel','(.*)',NULL,NULL,NULL,NULL),(134,'package','',NULL,NULL,NULL,NULL),(135,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(136,'package','',NULL,NULL,NULL,NULL),(137,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(138,'package','',NULL,NULL,NULL,NULL),(139,'package','',NULL,NULL,NULL,NULL),(140,'package','',NULL,NULL,NULL,NULL),(141,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(142,'package','',NULL,NULL,NULL,NULL),(143,'package','',NULL,NULL,NULL,NULL),(144,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(145,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(146,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(147,'package','',NULL,NULL,NULL,NULL),(148,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(149,'package','',NULL,NULL,NULL,NULL),(150,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(151,'package','',NULL,NULL,NULL,NULL),(152,'package','',NULL,NULL,NULL,NULL),(153,'package','',NULL,NULL,NULL,NULL),(154,'package','',NULL,NULL,NULL,NULL),(155,'package','',NULL,NULL,NULL,NULL),(156,'package','',NULL,NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,1,1),(2,2,2),(3,5,3),(4,6,4),(5,7,5),(6,8,6),(7,34,24),(8,51,34),(9,54,35),(10,57,39),(11,64,43),(12,66,44),(13,79,55),(14,88,59),(15,91,62),(16,97,65),(17,101,69),(18,102,71),(19,109,75),(20,130,90),(21,135,91),(22,137,94),(23,141,96),(24,144,97),(25,145,99),(26,149,103),(27,151,104),(28,157,109),(29,169,113),(30,177,120),(31,177,122),(32,185,127),(33,201,135),(34,202,137),(35,206,141),(36,210,145),(37,212,146),(38,215,148);
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
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,2,17),(13,3,1),(14,2,16),(15,4,1),(16,3,5),(17,4,5),(18,2,1),(19,4,6),(20,3,6),(21,4,7),(22,2,5),(23,4,9),(24,3,7),(25,4,10),(26,2,6),(27,4,11),(28,3,9),(29,4,12),(30,2,7),(31,4,13),(32,4,14),(33,3,10),(34,2,9),(35,4,15),(36,3,11),(37,4,17),(38,5,1),(39,2,10),(40,4,16),(41,3,12),(42,5,2),(43,2,11),(44,3,13),(45,5,3),(46,2,12),(47,3,14),(48,5,4),(49,2,13),(50,3,15),(51,5,5),(52,2,14),(53,3,17),(54,5,6),(55,2,15),(56,5,7),(57,3,16),(58,5,8),(59,5,9),(60,5,10),(61,5,11),(62,5,12),(63,5,13),(64,5,15),(65,5,19),(66,5,18),(67,5,21),(68,5,20),(69,5,23),(70,5,22),(71,5,25),(72,5,24),(73,6,1),(74,6,5),(75,6,6),(76,6,7),(77,6,9),(78,6,10),(79,6,11),(80,6,12),(81,6,13),(82,6,14),(83,6,15),(84,6,17),(85,6,16),(86,6,29),(87,6,28);
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
