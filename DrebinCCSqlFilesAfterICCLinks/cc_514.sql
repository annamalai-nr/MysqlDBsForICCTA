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
) ENGINE=InnoDB AUTO_INCREMENT=3423 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,120,9,2,NULL),(2,120,16,2,NULL),(3,120,17,2,NULL),(4,120,35,2,NULL),(5,127,9,2,NULL),(6,127,16,2,NULL),(7,127,17,2,NULL),(8,127,35,2,NULL),(9,145,9,2,NULL),(10,145,16,2,NULL),(11,145,17,2,NULL),(12,145,35,2,NULL),(13,153,9,2,NULL),(14,153,16,2,NULL),(15,153,17,2,NULL),(16,153,35,2,NULL),(17,157,9,2,NULL),(18,157,16,2,NULL),(19,157,17,2,NULL),(20,157,35,2,NULL),(21,188,7,2,NULL),(22,188,14,2,NULL),(23,188,15,2,NULL),(24,188,32,2,NULL),(25,257,7,2,NULL),(26,257,14,2,NULL),(27,257,15,2,NULL),(28,257,32,2,NULL),(29,116,1,2,NULL),(30,131,1,2,NULL),(31,136,1,2,NULL),(32,141,1,2,NULL),(33,150,1,2,NULL),(34,166,1,2,NULL),(35,172,1,2,NULL),(36,250,1,2,NULL),(37,251,1,2,NULL),(38,252,1,2,NULL),(39,253,1,2,NULL),(40,254,1,2,NULL),(41,116,4,2,NULL),(42,131,4,2,NULL),(43,136,4,2,NULL),(44,141,4,2,NULL),(45,150,4,2,NULL),(46,166,4,2,NULL),(47,172,4,2,NULL),(48,250,4,2,NULL),(49,251,4,2,NULL),(50,252,4,2,NULL),(51,253,4,2,NULL),(52,254,4,2,NULL),(53,116,40,2,NULL),(54,131,40,2,NULL),(55,136,40,2,NULL),(56,141,40,2,NULL),(57,150,40,2,NULL),(58,166,40,2,NULL),(59,172,40,2,NULL),(60,250,40,2,NULL),(61,251,40,2,NULL),(62,252,40,2,NULL),(63,253,40,2,NULL),(64,254,40,2,NULL),(65,116,41,2,NULL),(66,131,41,2,NULL),(67,136,41,2,NULL),(68,141,41,2,NULL),(69,150,41,2,NULL),(70,166,41,2,NULL),(71,172,41,2,NULL),(72,250,41,2,NULL),(73,251,41,2,NULL),(74,252,41,2,NULL),(75,253,41,2,NULL),(76,254,41,2,NULL),(77,116,8,2,NULL),(78,131,8,2,NULL),(79,136,8,2,NULL),(80,141,8,2,NULL),(81,150,8,2,NULL),(82,166,8,2,NULL),(83,172,8,2,NULL),(84,250,8,2,NULL),(85,251,8,2,NULL),(86,252,8,2,NULL),(87,253,8,2,NULL),(88,254,8,2,NULL),(89,48,27,2,NULL),(90,59,27,2,NULL),(91,137,27,2,NULL),(92,147,27,2,NULL),(93,159,27,2,NULL),(94,161,27,2,NULL),(95,165,27,2,NULL),(96,201,27,2,NULL),(97,207,27,2,NULL),(98,210,27,2,NULL),(99,213,27,2,NULL),(100,218,27,2,NULL),(101,53,27,2,NULL),(102,116,16,2,NULL),(103,131,16,2,NULL),(104,136,16,2,NULL),(105,141,16,2,NULL),(106,150,16,2,NULL),(107,166,16,2,NULL),(108,172,16,2,NULL),(109,250,16,2,NULL),(110,251,16,2,NULL),(111,252,16,2,NULL),(112,253,16,2,NULL),(113,254,16,2,NULL),(114,116,19,2,NULL),(115,131,19,2,NULL),(116,136,19,2,NULL),(117,141,19,2,NULL),(118,150,19,2,NULL),(119,166,19,2,NULL),(120,172,19,2,NULL),(121,250,19,2,NULL),(122,251,19,2,NULL),(123,252,19,2,NULL),(124,19,7,2,NULL),(125,253,19,2,NULL),(126,19,14,2,NULL),(127,254,19,2,NULL),(128,19,15,2,NULL),(129,116,21,2,NULL),(130,131,21,2,NULL),(131,19,32,2,NULL),(132,136,21,2,NULL),(133,81,7,2,NULL),(134,141,21,2,NULL),(135,150,21,2,NULL),(136,81,14,2,NULL),(137,166,21,2,NULL),(138,81,15,2,NULL),(139,172,21,2,NULL),(140,81,32,2,NULL),(141,250,21,2,NULL),(142,95,7,2,NULL),(143,251,21,2,NULL),(144,95,14,2,NULL),(145,252,21,2,NULL),(146,95,15,2,NULL),(147,253,21,2,NULL),(148,254,21,2,NULL),(149,95,32,2,NULL),(150,116,47,2,NULL),(151,97,7,2,NULL),(152,131,47,2,NULL),(153,97,14,2,NULL),(154,136,47,2,NULL),(155,141,47,2,NULL),(156,97,15,2,NULL),(157,150,47,2,NULL),(158,97,32,2,NULL),(159,166,47,2,NULL),(160,170,9,2,NULL),(161,172,47,2,NULL),(162,170,16,2,NULL),(163,250,47,2,NULL),(164,170,17,2,NULL),(165,251,47,2,NULL),(166,170,35,2,NULL),(167,252,47,2,NULL),(168,177,9,2,NULL),(169,253,47,2,NULL),(170,177,16,2,NULL),(171,254,47,2,NULL),(172,177,17,2,NULL),(173,116,50,2,NULL),(174,177,35,2,NULL),(175,131,50,2,NULL),(176,196,9,2,NULL),(177,136,50,2,NULL),(178,196,16,2,NULL),(179,141,50,2,NULL),(180,196,17,2,NULL),(181,150,50,2,NULL),(182,196,35,2,NULL),(183,166,50,2,NULL),(184,202,9,2,NULL),(185,172,50,2,NULL),(186,202,16,2,NULL),(187,250,50,2,NULL),(188,202,17,2,NULL),(189,251,50,2,NULL),(190,202,35,2,NULL),(191,252,50,2,NULL),(192,209,9,2,NULL),(193,253,50,2,NULL),(194,209,16,2,NULL),(195,254,50,2,NULL),(196,209,17,2,NULL),(197,116,53,2,NULL),(198,209,35,2,NULL),(199,131,53,2,NULL),(200,179,9,2,NULL),(201,136,53,2,NULL),(202,179,16,2,NULL),(203,141,53,2,NULL),(204,179,17,2,NULL),(205,150,53,2,NULL),(206,179,35,2,NULL),(207,166,53,2,NULL),(208,186,9,2,NULL),(209,172,53,2,NULL),(210,186,16,2,NULL),(211,250,53,2,NULL),(212,186,17,2,NULL),(213,251,53,2,NULL),(214,186,35,2,NULL),(215,252,53,2,NULL),(216,208,9,2,NULL),(217,253,53,2,NULL),(218,208,16,2,NULL),(219,254,53,2,NULL),(220,208,17,2,NULL),(221,116,73,2,NULL),(222,208,35,2,NULL),(223,131,73,2,NULL),(224,214,9,2,NULL),(225,136,73,2,NULL),(226,214,16,2,NULL),(227,141,73,2,NULL),(228,214,17,2,NULL),(229,150,73,2,NULL),(230,214,35,2,NULL),(231,166,73,2,NULL),(232,219,9,2,NULL),(233,172,73,2,NULL),(234,219,16,2,NULL),(235,250,73,2,NULL),(236,219,17,2,NULL),(237,251,73,2,NULL),(238,219,35,2,NULL),(239,252,73,2,NULL),(240,25,1,2,NULL),(241,253,73,2,NULL),(242,28,1,2,NULL),(243,254,73,2,NULL),(244,29,1,2,NULL),(245,116,10,2,NULL),(246,33,1,2,NULL),(247,131,10,2,NULL),(248,34,1,2,NULL),(249,136,10,2,NULL),(250,27,1,2,NULL),(251,141,10,2,NULL),(252,40,1,2,NULL),(253,150,10,2,NULL),(254,89,1,2,NULL),(255,166,10,2,NULL),(256,101,1,2,NULL),(257,172,10,2,NULL),(258,128,1,2,NULL),(259,250,10,2,NULL),(260,130,1,2,NULL),(261,251,10,2,NULL),(262,135,1,2,NULL),(263,252,10,2,NULL),(264,139,1,2,NULL),(265,253,10,2,NULL),(266,142,1,2,NULL),(267,254,10,2,NULL),(268,175,1,2,NULL),(269,22,27,2,NULL),(270,181,1,2,NULL),(271,78,27,2,NULL),(272,185,1,2,NULL),(273,86,27,2,NULL),(274,189,1,2,NULL),(275,94,27,2,NULL),(276,194,1,2,NULL),(277,99,27,2,NULL),(278,182,1,2,NULL),(279,111,27,2,NULL),(280,191,1,2,NULL),(281,123,27,2,NULL),(282,195,1,2,NULL),(283,235,27,2,NULL),(284,199,1,2,NULL),(285,237,27,2,NULL),(286,203,1,2,NULL),(287,238,27,2,NULL),(288,25,4,2,NULL),(289,240,27,2,NULL),(290,28,4,2,NULL),(291,241,27,2,NULL),(292,29,4,2,NULL),(293,211,27,2,NULL),(294,33,4,2,NULL),(295,116,17,2,NULL),(296,34,4,2,NULL),(297,131,17,2,NULL),(298,27,4,2,NULL),(299,136,17,2,NULL),(300,40,4,2,NULL),(301,141,17,2,NULL),(302,89,4,2,NULL),(303,150,17,2,NULL),(304,101,4,2,NULL),(305,166,17,2,NULL),(306,128,4,2,NULL),(307,172,17,2,NULL),(308,130,4,2,NULL),(309,250,17,2,NULL),(310,135,4,2,NULL),(311,251,17,2,NULL),(312,139,4,2,NULL),(313,252,17,2,NULL),(314,142,4,2,NULL),(315,253,17,2,NULL),(316,175,4,2,NULL),(317,254,17,2,NULL),(318,181,4,2,NULL),(319,116,20,2,NULL),(320,185,4,2,NULL),(321,131,20,2,NULL),(322,189,4,2,NULL),(323,136,20,2,NULL),(324,194,4,2,NULL),(325,141,20,2,NULL),(326,182,4,2,NULL),(327,150,20,2,NULL),(328,191,4,2,NULL),(329,166,20,2,NULL),(330,195,4,2,NULL),(331,172,20,2,NULL),(332,199,4,2,NULL),(333,250,20,2,NULL),(334,203,4,2,NULL),(335,251,20,2,NULL),(336,25,40,2,NULL),(337,252,20,2,NULL),(338,28,40,2,NULL),(339,253,20,2,NULL),(340,29,40,2,NULL),(341,254,20,2,NULL),(342,33,40,2,NULL),(343,116,22,2,NULL),(344,34,40,2,NULL),(345,131,22,2,NULL),(346,27,40,2,NULL),(347,136,22,2,NULL),(348,40,40,2,NULL),(349,141,22,2,NULL),(350,89,40,2,NULL),(351,150,22,2,NULL),(352,101,40,2,NULL),(353,166,22,2,NULL),(354,128,40,2,NULL),(355,172,22,2,NULL),(356,130,40,2,NULL),(357,250,22,2,NULL),(358,135,40,2,NULL),(359,251,22,2,NULL),(360,139,40,2,NULL),(361,252,22,2,NULL),(362,142,40,2,NULL),(363,253,22,2,NULL),(364,175,40,2,NULL),(365,254,22,2,NULL),(366,181,40,2,NULL),(367,116,45,2,NULL),(368,185,40,2,NULL),(369,131,45,2,NULL),(370,189,40,2,NULL),(371,136,45,2,NULL),(372,194,40,2,NULL),(373,141,45,2,NULL),(374,182,40,2,NULL),(375,150,45,2,NULL),(376,191,40,2,NULL),(377,166,45,2,NULL),(378,195,40,2,NULL),(379,172,45,2,NULL),(380,199,40,2,NULL),(381,250,45,2,NULL),(382,203,40,2,NULL),(383,251,45,2,NULL),(384,25,41,2,NULL),(385,252,45,2,NULL),(386,28,41,2,NULL),(387,253,45,2,NULL),(388,29,41,2,NULL),(389,254,45,2,NULL),(390,33,41,2,NULL),(391,116,57,2,NULL),(392,34,41,2,NULL),(393,131,57,2,NULL),(394,27,41,2,NULL),(395,136,57,2,NULL),(396,40,41,2,NULL),(397,141,57,2,NULL),(398,89,41,2,NULL),(399,150,57,2,NULL),(400,101,41,2,NULL),(401,166,57,2,NULL),(402,128,41,2,NULL),(403,172,57,2,NULL),(404,130,41,2,NULL),(405,250,57,2,NULL),(406,135,41,2,NULL),(407,251,57,2,NULL),(408,139,41,2,NULL),(409,252,57,2,NULL),(410,142,41,2,NULL),(411,253,57,2,NULL),(412,175,41,2,NULL),(413,254,57,2,NULL),(414,181,41,2,NULL),(415,116,61,2,NULL),(416,185,41,2,NULL),(417,131,61,2,NULL),(418,189,41,2,NULL),(419,136,61,2,NULL),(420,194,41,2,NULL),(421,141,61,2,NULL),(422,182,41,2,NULL),(423,150,61,2,NULL),(424,191,41,2,NULL),(425,166,61,2,NULL),(426,195,41,2,NULL),(427,172,61,2,NULL),(428,199,41,2,NULL),(429,250,61,2,NULL),(430,203,41,2,NULL),(431,251,61,2,NULL),(432,25,8,2,NULL),(433,252,61,2,NULL),(434,28,8,2,NULL),(435,253,61,2,NULL),(436,29,8,2,NULL),(437,254,61,2,NULL),(438,33,8,2,NULL),(439,116,74,2,NULL),(440,34,8,2,NULL),(441,131,74,2,NULL),(442,27,8,2,NULL),(443,136,74,2,NULL),(444,40,8,2,NULL),(445,141,74,2,NULL),(446,89,8,2,NULL),(447,150,74,2,NULL),(448,101,8,2,NULL),(449,166,74,2,NULL),(450,128,8,2,NULL),(451,172,74,2,NULL),(452,130,8,2,NULL),(453,250,74,2,NULL),(454,135,8,2,NULL),(455,251,74,2,NULL),(456,139,8,2,NULL),(457,252,74,2,NULL),(458,142,8,2,NULL),(459,253,74,2,NULL),(460,175,8,2,NULL),(461,254,74,2,NULL),(462,181,8,2,NULL),(463,116,5,2,NULL),(464,185,8,2,NULL),(465,131,5,2,NULL),(466,189,8,2,NULL),(467,136,5,2,NULL),(468,194,8,2,NULL),(469,141,5,2,NULL),(470,182,8,2,NULL),(471,150,5,2,NULL),(472,191,8,2,NULL),(473,166,5,2,NULL),(474,195,8,2,NULL),(475,172,5,2,NULL),(476,199,8,2,NULL),(477,250,5,2,NULL),(478,203,8,2,NULL),(479,251,5,2,NULL),(480,48,5,2,NULL),(481,252,5,2,NULL),(482,59,5,2,NULL),(483,253,5,2,NULL),(484,137,5,2,NULL),(485,254,5,2,NULL),(486,147,5,2,NULL),(487,25,27,2,NULL),(488,159,5,2,NULL),(489,28,27,2,NULL),(490,161,5,2,NULL),(491,29,27,2,NULL),(492,165,5,2,NULL),(493,33,27,2,NULL),(494,201,5,2,NULL),(495,34,27,2,NULL),(496,207,5,2,NULL),(497,27,27,2,NULL),(498,210,5,2,NULL),(499,40,27,2,NULL),(500,213,5,2,NULL),(501,89,27,2,NULL),(502,218,5,2,NULL),(503,101,27,2,NULL),(504,53,5,2,NULL),(505,128,27,2,NULL),(506,25,16,2,NULL),(507,130,27,2,NULL),(508,28,16,2,NULL),(509,135,27,2,NULL),(510,29,16,2,NULL),(511,139,27,2,NULL),(512,33,16,2,NULL),(513,142,27,2,NULL),(514,34,16,2,NULL),(515,175,27,2,NULL),(516,27,16,2,NULL),(517,181,27,2,NULL),(518,40,16,2,NULL),(519,185,27,2,NULL),(520,89,16,2,NULL),(521,189,27,2,NULL),(522,101,16,2,NULL),(523,194,27,2,NULL),(524,128,16,2,NULL),(525,182,27,2,NULL),(526,130,16,2,NULL),(527,191,27,2,NULL),(528,135,16,2,NULL),(529,195,27,2,NULL),(530,139,16,2,NULL),(531,199,27,2,NULL),(532,142,16,2,NULL),(533,203,27,2,NULL),(534,175,16,2,NULL),(535,134,27,2,NULL),(536,181,16,2,NULL),(537,146,27,2,NULL),(538,185,16,2,NULL),(539,116,9,2,NULL),(540,189,16,2,NULL),(541,131,9,2,NULL),(542,194,16,2,NULL),(543,136,9,2,NULL),(544,182,16,2,NULL),(545,141,9,2,NULL),(546,191,16,2,NULL),(547,150,9,2,NULL),(548,195,16,2,NULL),(549,166,9,2,NULL),(550,199,16,2,NULL),(551,172,9,2,NULL),(552,203,16,2,NULL),(553,250,9,2,NULL),(554,25,19,2,NULL),(555,251,9,2,NULL),(556,28,19,2,NULL),(557,252,9,2,NULL),(558,29,19,2,NULL),(559,253,9,2,NULL),(560,33,19,2,NULL),(561,254,9,2,NULL),(562,34,19,2,NULL),(563,116,13,2,NULL),(564,27,19,2,NULL),(565,131,13,2,NULL),(566,40,19,2,NULL),(567,136,13,2,NULL),(568,89,19,2,NULL),(569,141,13,2,NULL),(570,101,19,2,NULL),(571,150,13,2,NULL),(572,128,19,2,NULL),(573,166,13,2,NULL),(574,130,19,2,NULL),(575,172,13,2,NULL),(576,135,19,2,NULL),(577,250,13,2,NULL),(578,139,19,2,NULL),(579,251,13,2,NULL),(580,142,19,2,NULL),(581,252,13,2,NULL),(582,175,19,2,NULL),(583,253,13,2,NULL),(584,181,19,2,NULL),(585,254,13,2,NULL),(586,185,19,2,NULL),(587,116,18,2,NULL),(588,189,19,2,NULL),(589,131,18,2,NULL),(590,194,19,2,NULL),(591,136,18,2,NULL),(592,182,19,2,NULL),(593,141,18,2,NULL),(594,191,19,2,NULL),(595,150,18,2,NULL),(596,195,19,2,NULL),(597,166,18,2,NULL),(598,199,19,2,NULL),(599,172,18,2,NULL),(600,203,19,2,NULL),(601,250,18,2,NULL),(602,25,21,2,NULL),(603,251,18,2,NULL),(604,28,21,2,NULL),(605,252,18,2,NULL),(606,29,21,2,NULL),(607,253,18,2,NULL),(608,33,21,2,NULL),(609,254,18,2,NULL),(610,34,21,2,NULL),(611,116,42,2,NULL),(612,27,21,2,NULL),(613,131,42,2,NULL),(614,40,21,2,NULL),(615,136,42,2,NULL),(616,89,21,2,NULL),(617,141,42,2,NULL),(618,101,21,2,NULL),(619,150,42,2,NULL),(620,128,21,2,NULL),(621,166,42,2,NULL),(622,130,21,2,NULL),(623,172,42,2,NULL),(624,135,21,2,NULL),(625,250,42,2,NULL),(626,139,21,2,NULL),(627,251,42,2,NULL),(628,142,21,2,NULL),(629,252,42,2,NULL),(630,175,21,2,NULL),(631,253,42,2,NULL),(632,181,21,2,NULL),(633,254,42,2,NULL),(634,185,21,2,NULL),(635,116,43,2,NULL),(636,189,21,2,NULL),(637,131,43,2,NULL),(638,194,21,2,NULL),(639,136,43,2,NULL),(640,182,21,2,NULL),(641,141,43,2,NULL),(642,191,21,2,NULL),(643,150,43,2,NULL),(644,195,21,2,NULL),(645,166,43,2,NULL),(646,199,21,2,NULL),(647,172,43,2,NULL),(648,203,21,2,NULL),(649,250,43,2,NULL),(650,25,47,2,NULL),(651,251,43,2,NULL),(652,28,47,2,NULL),(653,252,43,2,NULL),(654,29,47,2,NULL),(655,253,43,2,NULL),(656,33,47,2,NULL),(657,254,43,2,NULL),(658,34,47,2,NULL),(659,116,49,2,NULL),(660,27,47,2,NULL),(661,131,49,2,NULL),(662,40,47,2,NULL),(663,136,49,2,NULL),(664,89,47,2,NULL),(665,141,49,2,NULL),(666,101,47,2,NULL),(667,150,49,2,NULL),(668,128,47,2,NULL),(669,166,49,2,NULL),(670,130,47,2,NULL),(671,172,49,2,NULL),(672,135,47,2,NULL),(673,250,49,2,NULL),(674,139,47,2,NULL),(675,251,49,2,NULL),(676,142,47,2,NULL),(677,252,49,2,NULL),(678,175,47,2,NULL),(679,90,9,2,NULL),(680,253,49,2,NULL),(681,181,47,2,NULL),(682,90,16,2,NULL),(683,254,49,2,NULL),(684,185,47,2,NULL),(685,90,17,2,NULL),(686,116,52,2,NULL),(687,189,47,2,NULL),(688,90,35,2,NULL),(689,131,52,2,NULL),(690,194,47,2,NULL),(691,104,9,2,NULL),(692,136,52,2,NULL),(693,182,47,2,NULL),(694,104,16,2,NULL),(695,141,52,2,NULL),(696,191,47,2,NULL),(697,104,17,2,NULL),(698,150,52,2,NULL),(699,195,47,2,NULL),(700,104,35,2,NULL),(701,166,52,2,NULL),(702,199,47,2,NULL),(703,172,52,2,NULL),(704,115,9,2,NULL),(705,203,47,2,NULL),(706,250,52,2,NULL),(707,25,50,2,NULL),(708,115,16,2,NULL),(709,28,50,2,NULL),(710,115,17,2,NULL),(711,29,50,2,NULL),(712,251,52,2,NULL),(713,115,35,2,NULL),(714,33,50,2,NULL),(715,252,52,2,NULL),(716,126,9,2,NULL),(717,253,52,2,NULL),(718,34,50,2,NULL),(719,126,16,2,NULL),(720,254,52,2,NULL),(721,27,50,2,NULL),(722,126,17,2,NULL),(723,40,50,2,NULL),(724,116,23,2,NULL),(725,126,35,2,NULL),(726,131,23,2,NULL),(727,89,50,2,NULL),(728,132,9,2,NULL),(729,136,23,2,NULL),(730,101,50,2,NULL),(731,132,16,2,NULL),(732,141,23,2,NULL),(733,128,50,2,NULL),(734,132,17,2,NULL),(735,150,23,2,NULL),(736,130,50,2,NULL),(737,132,35,2,NULL),(738,135,50,2,NULL),(739,166,23,2,NULL),(740,176,7,2,NULL),(741,172,23,2,NULL),(742,139,50,2,NULL),(743,176,14,2,NULL),(744,250,23,2,NULL),(745,142,50,2,NULL),(746,176,15,2,NULL),(747,251,23,2,NULL),(748,175,50,2,NULL),(749,176,32,2,NULL),(750,252,23,2,NULL),(751,181,50,2,NULL),(752,244,7,2,NULL),(753,253,23,2,NULL),(754,185,50,2,NULL),(755,244,14,2,NULL),(756,254,23,2,NULL),(757,189,50,2,NULL),(758,244,15,2,NULL),(759,100,27,2,NULL),(760,194,50,2,NULL),(761,244,32,2,NULL),(762,103,27,2,NULL),(763,182,50,2,NULL),(764,22,1,2,NULL),(765,106,27,2,NULL),(766,191,50,2,NULL),(767,78,1,2,NULL),(768,110,27,2,NULL),(769,195,50,2,NULL),(770,86,1,2,NULL),(771,113,27,2,NULL),(772,199,50,2,NULL),(773,94,1,2,NULL),(774,117,27,2,NULL),(775,203,50,2,NULL),(776,99,1,2,NULL),(777,119,27,2,NULL),(778,25,53,2,NULL),(779,111,1,2,NULL),(780,124,27,2,NULL),(781,28,53,2,NULL),(782,123,1,2,NULL),(783,221,27,2,NULL),(784,29,53,2,NULL),(785,235,1,2,NULL),(786,116,24,2,NULL),(787,33,53,2,NULL),(788,237,1,2,NULL),(789,131,24,2,NULL),(790,34,53,2,NULL),(791,238,1,2,NULL),(792,136,24,2,NULL),(793,27,53,2,NULL),(794,240,1,2,NULL),(795,141,24,2,NULL),(796,40,53,2,NULL),(797,241,1,2,NULL),(798,150,24,2,NULL),(799,89,53,2,NULL),(800,22,4,2,NULL),(801,166,24,2,NULL),(802,101,53,2,NULL),(803,78,4,2,NULL),(804,172,24,2,NULL),(805,128,53,2,NULL),(806,86,4,2,NULL),(807,250,24,2,NULL),(808,130,53,2,NULL),(809,94,4,2,NULL),(810,251,24,2,NULL),(811,135,53,2,NULL),(812,99,4,2,NULL),(813,252,24,2,NULL),(814,139,53,2,NULL),(815,111,4,2,NULL),(816,253,24,2,NULL),(817,142,53,2,NULL),(818,123,4,2,NULL),(819,254,24,2,NULL),(820,175,53,2,NULL),(821,235,4,2,NULL),(822,116,31,2,NULL),(823,181,53,2,NULL),(824,237,4,2,NULL),(825,131,31,2,NULL),(826,185,53,2,NULL),(827,238,4,2,NULL),(828,136,31,2,NULL),(829,189,53,2,NULL),(830,240,4,2,NULL),(831,141,31,2,NULL),(832,194,53,2,NULL),(833,241,4,2,NULL),(834,150,31,2,NULL),(835,182,53,2,NULL),(836,22,40,2,NULL),(837,166,31,2,NULL),(838,191,53,2,NULL),(839,78,40,2,NULL),(840,172,31,2,NULL),(841,195,53,2,NULL),(842,86,40,2,NULL),(843,250,31,2,NULL),(844,199,53,2,NULL),(845,94,40,2,NULL),(846,251,31,2,NULL),(847,203,53,2,NULL),(848,99,40,2,NULL),(849,252,31,2,NULL),(850,25,73,2,NULL),(851,111,40,2,NULL),(852,253,31,2,NULL),(853,28,73,2,NULL),(854,123,40,2,NULL),(855,48,1,2,NULL),(856,254,31,2,NULL),(857,29,73,2,NULL),(858,235,40,2,NULL),(859,59,1,2,NULL),(860,33,73,2,NULL),(861,116,34,2,NULL),(862,237,40,2,NULL),(863,131,34,2,NULL),(864,34,73,2,NULL),(865,137,1,2,NULL),(866,238,40,2,NULL),(867,136,34,2,NULL),(868,27,73,2,NULL),(869,240,40,2,NULL),(870,141,34,2,NULL),(871,40,73,2,NULL),(872,147,1,2,NULL),(873,241,40,2,NULL),(874,150,34,2,NULL),(875,89,73,2,NULL),(876,159,1,2,NULL),(877,22,41,2,NULL),(878,166,34,2,NULL),(879,101,73,2,NULL),(880,78,41,2,NULL),(881,161,1,2,NULL),(882,172,34,2,NULL),(883,128,73,2,NULL),(884,86,41,2,NULL),(885,250,34,2,NULL),(886,130,73,2,NULL),(887,165,1,2,NULL),(888,94,41,2,NULL),(889,251,34,2,NULL),(890,135,73,2,NULL),(891,99,41,2,NULL),(892,201,1,2,NULL),(893,252,34,2,NULL),(894,139,73,2,NULL),(895,111,41,2,NULL),(896,253,34,2,NULL),(897,142,73,2,NULL),(898,207,1,2,NULL),(899,123,41,2,NULL),(900,254,34,2,NULL),(901,175,73,2,NULL),(902,235,41,2,NULL),(903,210,1,2,NULL),(904,116,36,2,NULL),(905,181,73,2,NULL),(906,237,41,2,NULL),(907,213,1,2,NULL),(908,131,36,2,NULL),(909,185,73,2,NULL),(910,238,41,2,NULL),(911,218,1,2,NULL),(912,136,36,2,NULL),(913,189,73,2,NULL),(914,240,41,2,NULL),(915,53,1,2,NULL),(916,194,73,2,NULL),(917,141,36,2,NULL),(918,241,41,2,NULL),(919,211,1,2,NULL),(920,150,36,2,NULL),(921,182,73,2,NULL),(922,22,8,2,NULL),(923,191,73,2,NULL),(924,166,36,2,NULL),(925,78,8,2,NULL),(926,134,1,2,NULL),(927,172,36,2,NULL),(928,195,73,2,NULL),(929,86,8,2,NULL),(930,146,1,2,NULL),(931,250,36,2,NULL),(932,199,73,2,NULL),(933,94,8,2,NULL),(934,100,1,2,NULL),(935,251,36,2,NULL),(936,203,73,2,NULL),(937,99,8,2,NULL),(938,103,1,2,NULL),(939,252,36,2,NULL),(940,25,10,2,NULL),(941,111,8,2,NULL),(942,106,1,2,NULL),(943,253,36,2,NULL),(944,28,10,2,NULL),(945,123,8,2,NULL),(946,110,1,2,NULL),(947,254,36,2,NULL),(948,29,10,2,NULL),(949,235,8,2,NULL),(950,113,1,2,NULL),(951,116,54,2,NULL),(952,33,10,2,NULL),(953,237,8,2,NULL),(954,117,1,2,NULL),(955,131,54,2,NULL),(956,34,10,2,NULL),(957,238,8,2,NULL),(958,136,54,2,NULL),(959,27,10,2,NULL),(960,119,1,2,NULL),(961,240,8,2,NULL),(962,141,54,2,NULL),(963,40,10,2,NULL),(964,124,1,2,NULL),(965,241,8,2,NULL),(966,150,54,2,NULL),(967,89,10,2,NULL),(968,221,1,2,NULL),(969,48,10,2,NULL),(970,166,54,2,NULL),(971,101,10,2,NULL),(972,59,10,2,NULL),(973,258,1,2,NULL),(974,172,54,2,NULL),(975,128,10,2,NULL),(976,137,10,2,NULL),(977,48,4,2,NULL),(978,250,54,2,NULL),(979,130,10,2,NULL),(980,147,10,2,NULL),(981,59,4,2,NULL),(982,251,54,2,NULL),(983,135,10,2,NULL),(984,159,10,2,NULL),(985,137,4,2,NULL),(986,252,54,2,NULL),(987,139,10,2,NULL),(988,161,10,2,NULL),(989,147,4,2,NULL),(990,253,54,2,NULL),(991,142,10,2,NULL),(992,165,10,2,NULL),(993,159,4,2,NULL),(994,254,54,2,NULL),(995,175,10,2,NULL),(996,201,10,2,NULL),(997,161,4,2,NULL),(998,116,58,2,NULL),(999,181,10,2,NULL),(1000,207,10,2,NULL),(1001,165,4,2,NULL),(1002,131,58,2,NULL),(1003,185,10,2,NULL),(1004,210,10,2,NULL),(1005,201,4,2,NULL),(1006,136,58,2,NULL),(1007,189,10,2,NULL),(1008,213,10,2,NULL),(1009,207,4,2,NULL),(1010,141,58,2,NULL),(1011,194,10,2,NULL),(1012,218,10,2,NULL),(1013,210,4,2,NULL),(1014,150,58,2,NULL),(1015,182,10,2,NULL),(1016,53,10,2,NULL),(1017,213,4,2,NULL),(1018,166,58,2,NULL),(1019,191,10,2,NULL),(1020,22,16,2,NULL),(1021,218,4,2,NULL),(1022,172,58,2,NULL),(1023,195,10,2,NULL),(1024,78,16,2,NULL),(1025,53,4,2,NULL),(1026,250,58,2,NULL),(1027,199,10,2,NULL),(1028,86,16,2,NULL),(1029,211,4,2,NULL),(1030,251,58,2,NULL),(1031,203,10,2,NULL),(1032,94,16,2,NULL),(1033,252,58,2,NULL),(1034,22,5,2,NULL),(1035,99,16,2,NULL),(1036,134,4,2,NULL),(1037,253,58,2,NULL),(1038,78,5,2,NULL),(1039,111,16,2,NULL),(1040,146,4,2,NULL),(1041,254,58,2,NULL),(1042,86,5,2,NULL),(1043,123,16,2,NULL),(1044,100,4,2,NULL),(1045,116,60,2,NULL),(1046,94,5,2,NULL),(1047,235,16,2,NULL),(1048,103,4,2,NULL),(1049,131,60,2,NULL),(1050,99,5,2,NULL),(1051,237,16,2,NULL),(1052,106,4,2,NULL),(1053,136,60,2,NULL),(1054,111,5,2,NULL),(1055,238,16,2,NULL),(1056,110,4,2,NULL),(1057,141,60,2,NULL),(1058,123,5,2,NULL),(1059,240,16,2,NULL),(1060,113,4,2,NULL),(1061,150,60,2,NULL),(1062,235,5,2,NULL),(1063,241,16,2,NULL),(1064,117,4,2,NULL),(1065,166,60,2,NULL),(1066,237,5,2,NULL),(1067,22,19,2,NULL),(1068,119,4,2,NULL),(1069,172,60,2,NULL),(1070,238,5,2,NULL),(1071,78,19,2,NULL),(1072,124,4,2,NULL),(1073,250,60,2,NULL),(1074,240,5,2,NULL),(1075,86,19,2,NULL),(1076,221,4,2,NULL),(1077,251,60,2,NULL),(1078,241,5,2,NULL),(1079,94,19,2,NULL),(1080,258,4,2,NULL),(1081,252,60,2,NULL),(1082,211,5,2,NULL),(1083,99,19,2,NULL),(1084,253,60,2,NULL),(1085,25,17,2,NULL),(1086,48,40,2,NULL),(1087,111,19,2,NULL),(1088,254,60,2,NULL),(1089,28,17,2,NULL),(1090,59,40,2,NULL),(1091,123,19,2,NULL),(1092,258,27,2,NULL),(1093,29,17,2,NULL),(1094,137,40,2,NULL),(1095,235,19,2,NULL),(1096,116,35,2,NULL),(1097,33,17,2,NULL),(1098,147,40,2,NULL),(1099,237,19,2,NULL),(1100,131,35,2,NULL),(1101,34,17,2,NULL),(1102,159,40,2,NULL),(1103,238,19,2,NULL),(1104,136,35,2,NULL),(1105,27,17,2,NULL),(1106,161,40,2,NULL),(1107,240,19,2,NULL),(1108,141,35,2,NULL),(1109,165,40,2,NULL),(1110,40,17,2,NULL),(1111,241,19,2,NULL),(1112,150,35,2,NULL),(1113,201,40,2,NULL),(1114,89,17,2,NULL),(1115,22,21,2,NULL),(1116,166,35,2,NULL),(1117,207,40,2,NULL),(1118,101,17,2,NULL),(1119,78,21,2,NULL),(1120,172,35,2,NULL),(1121,128,17,2,NULL),(1122,210,40,2,NULL),(1123,86,21,2,NULL),(1124,250,35,2,NULL),(1125,213,40,2,NULL),(1126,130,17,2,NULL),(1127,94,21,2,NULL),(1128,251,35,2,NULL),(1129,135,17,2,NULL),(1130,218,40,2,NULL),(1131,99,21,2,NULL),(1132,252,35,2,NULL),(1133,139,17,2,NULL),(1134,53,40,2,NULL),(1135,111,21,2,NULL),(1136,253,35,2,NULL),(1137,142,17,2,NULL),(1138,211,40,2,NULL),(1139,123,21,2,NULL),(1140,254,35,2,NULL),(1141,175,17,2,NULL),(1142,235,21,2,NULL),(1143,116,37,2,NULL),(1144,181,17,2,NULL),(1145,134,40,2,NULL),(1146,237,21,2,NULL),(1147,131,37,2,NULL),(1148,146,40,2,NULL),(1149,185,17,2,NULL),(1150,238,21,2,NULL),(1151,136,37,2,NULL),(1152,189,17,2,NULL),(1153,100,40,2,NULL),(1154,240,21,2,NULL),(1155,141,37,2,NULL),(1156,103,40,2,NULL),(1157,194,17,2,NULL),(1158,241,21,2,NULL),(1159,150,37,2,NULL),(1160,182,17,2,NULL),(1161,106,40,2,NULL),(1162,22,47,2,NULL),(1163,166,37,2,NULL),(1164,191,17,2,NULL),(1165,110,40,2,NULL),(1166,78,47,2,NULL),(1167,172,37,2,NULL),(1168,113,40,2,NULL),(1169,195,17,2,NULL),(1170,86,47,2,NULL),(1171,250,37,2,NULL),(1172,199,17,2,NULL),(1173,117,40,2,NULL),(1174,94,47,2,NULL),(1175,251,37,2,NULL),(1176,119,40,2,NULL),(1177,203,17,2,NULL),(1178,99,47,2,NULL),(1179,252,37,2,NULL),(1180,25,20,2,NULL),(1181,124,40,2,NULL),(1182,111,47,2,NULL),(1183,253,37,2,NULL),(1184,28,20,2,NULL),(1185,221,40,2,NULL),(1186,123,47,2,NULL),(1187,254,37,2,NULL),(1188,29,20,2,NULL),(1189,258,40,2,NULL),(1190,235,47,2,NULL),(1191,116,39,2,NULL),(1192,33,20,2,NULL),(1193,237,47,2,NULL),(1194,48,41,2,NULL),(1195,131,39,2,NULL),(1196,238,47,2,NULL),(1197,59,41,2,NULL),(1198,136,39,2,NULL),(1199,34,20,2,NULL),(1200,240,47,2,NULL),(1201,137,41,2,NULL),(1202,141,39,2,NULL),(1203,27,20,2,NULL),(1204,241,47,2,NULL),(1205,147,41,2,NULL),(1206,150,39,2,NULL),(1207,40,20,2,NULL),(1208,22,50,2,NULL),(1209,159,41,2,NULL),(1210,166,39,2,NULL),(1211,89,20,2,NULL),(1212,78,50,2,NULL),(1213,161,41,2,NULL),(1214,172,39,2,NULL),(1215,165,41,2,NULL),(1216,86,50,2,NULL),(1217,101,20,2,NULL),(1218,250,39,2,NULL),(1219,128,20,2,NULL),(1220,201,41,2,NULL),(1221,94,50,2,NULL),(1222,251,39,2,NULL),(1223,130,20,2,NULL),(1224,99,50,2,NULL),(1225,207,41,2,NULL),(1226,252,39,2,NULL),(1227,135,20,2,NULL),(1228,111,50,2,NULL),(1229,253,39,2,NULL),(1230,210,41,2,NULL),(1231,139,20,2,NULL),(1232,254,39,2,NULL),(1233,123,50,2,NULL),(1234,213,41,2,NULL),(1235,142,20,2,NULL),(1236,116,51,2,NULL),(1237,235,50,2,NULL),(1238,218,41,2,NULL),(1239,175,20,2,NULL),(1240,131,51,2,NULL),(1241,237,50,2,NULL),(1242,53,41,2,NULL),(1243,181,20,2,NULL),(1244,136,51,2,NULL),(1245,238,50,2,NULL),(1246,211,41,2,NULL),(1247,185,20,2,NULL),(1248,141,51,2,NULL),(1249,240,50,2,NULL),(1250,189,20,2,NULL),(1251,150,51,2,NULL),(1252,241,50,2,NULL),(1253,134,41,2,NULL),(1254,194,20,2,NULL),(1255,166,51,2,NULL),(1256,22,53,2,NULL),(1257,182,20,2,NULL),(1258,146,41,2,NULL),(1259,172,51,2,NULL),(1260,78,53,2,NULL),(1261,191,20,2,NULL),(1262,100,41,2,NULL),(1263,250,51,2,NULL),(1264,86,53,2,NULL),(1265,195,20,2,NULL),(1266,103,41,2,NULL),(1267,251,51,2,NULL),(1268,94,53,2,NULL),(1269,199,20,2,NULL),(1270,106,41,2,NULL),(1271,252,51,2,NULL),(1272,99,53,2,NULL),(1273,203,20,2,NULL),(1274,110,41,2,NULL),(1275,253,51,2,NULL),(1276,111,53,2,NULL),(1277,25,22,2,NULL),(1278,113,41,2,NULL),(1279,254,51,2,NULL),(1280,123,53,2,NULL),(1281,28,22,2,NULL),(1282,117,41,2,NULL),(1283,116,55,2,NULL),(1284,235,53,2,NULL),(1285,29,22,2,NULL),(1286,119,41,2,NULL),(1287,131,55,2,NULL),(1288,237,53,2,NULL),(1289,33,22,2,NULL),(1290,124,41,2,NULL),(1291,136,55,2,NULL),(1292,238,53,2,NULL),(1293,34,22,2,NULL),(1294,221,41,2,NULL),(1295,141,55,2,NULL),(1296,240,53,2,NULL),(1297,27,22,2,NULL),(1298,258,41,2,NULL),(1299,150,55,2,NULL),(1300,241,53,2,NULL),(1301,40,22,2,NULL),(1302,166,55,2,NULL),(1303,22,73,2,NULL),(1304,89,22,2,NULL),(1305,172,55,2,NULL),(1306,78,73,2,NULL),(1307,101,22,2,NULL),(1308,250,55,2,NULL),(1309,86,73,2,NULL),(1310,128,22,2,NULL),(1311,251,55,2,NULL),(1312,94,73,2,NULL),(1313,130,22,2,NULL),(1314,252,55,2,NULL),(1315,99,73,2,NULL),(1316,135,22,2,NULL),(1317,253,55,2,NULL),(1318,111,73,2,NULL),(1319,139,22,2,NULL),(1320,254,55,2,NULL),(1321,123,73,2,NULL),(1322,142,22,2,NULL),(1323,116,69,2,NULL),(1324,235,73,2,NULL),(1325,175,22,2,NULL),(1326,131,69,2,NULL),(1327,237,73,2,NULL),(1328,181,22,2,NULL),(1329,136,69,2,NULL),(1330,238,73,2,NULL),(1331,185,22,2,NULL),(1332,141,69,2,NULL),(1333,240,73,2,NULL),(1334,189,22,2,NULL),(1335,150,69,2,NULL),(1336,241,73,2,NULL),(1337,194,22,2,NULL),(1338,166,69,2,NULL),(1339,211,10,2,NULL),(1340,182,22,2,NULL),(1341,172,69,2,NULL),(1342,22,17,2,NULL),(1343,191,22,2,NULL),(1344,250,69,2,NULL),(1345,78,17,2,NULL),(1346,195,22,2,NULL),(1347,251,69,2,NULL),(1348,86,17,2,NULL),(1349,199,22,2,NULL),(1350,252,69,2,NULL),(1351,94,17,2,NULL),(1352,203,22,2,NULL),(1353,253,69,2,NULL),(1354,99,17,2,NULL),(1355,25,45,2,NULL),(1356,254,69,2,NULL),(1357,111,17,2,NULL),(1358,28,45,2,NULL),(1359,116,72,2,NULL),(1360,123,17,2,NULL),(1361,29,45,2,NULL),(1362,131,72,2,NULL),(1363,235,17,2,NULL),(1364,33,45,2,NULL),(1365,136,72,2,NULL),(1366,237,17,2,NULL),(1367,34,45,2,NULL),(1368,141,72,2,NULL),(1369,238,17,2,NULL),(1370,27,45,2,NULL),(1371,150,72,2,NULL),(1372,240,17,2,NULL),(1373,40,45,2,NULL),(1374,166,72,2,NULL),(1375,241,17,2,NULL),(1376,89,45,2,NULL),(1377,172,72,2,NULL),(1378,22,20,2,NULL),(1379,101,45,2,NULL),(1380,250,72,2,NULL),(1381,78,20,2,NULL),(1382,128,45,2,NULL),(1383,251,72,2,NULL),(1384,86,20,2,NULL),(1385,130,45,2,NULL),(1386,252,72,2,NULL),(1387,94,20,2,NULL),(1388,135,45,2,NULL),(1389,253,72,2,NULL),(1390,99,20,2,NULL),(1391,139,45,2,NULL),(1392,254,72,2,NULL),(1393,111,20,2,NULL),(1394,142,45,2,NULL),(1395,116,75,2,NULL),(1396,123,20,2,NULL),(1397,175,45,2,NULL),(1398,131,75,2,NULL),(1399,235,20,2,NULL),(1400,181,45,2,NULL),(1401,136,75,2,NULL),(1402,237,20,2,NULL),(1403,185,45,2,NULL),(1404,141,75,2,NULL),(1405,238,20,2,NULL),(1406,189,45,2,NULL),(1407,150,75,2,NULL),(1408,240,20,2,NULL),(1409,194,45,2,NULL),(1410,166,75,2,NULL),(1411,241,20,2,NULL),(1412,182,45,2,NULL),(1413,172,75,2,NULL),(1414,22,22,2,NULL),(1415,191,45,2,NULL),(1416,250,75,2,NULL),(1417,78,22,2,NULL),(1418,195,45,2,NULL),(1419,251,75,2,NULL),(1420,86,22,2,NULL),(1421,199,45,2,NULL),(1422,252,75,2,NULL),(1423,94,22,2,NULL),(1424,203,45,2,NULL),(1425,99,22,2,NULL),(1426,253,75,2,NULL),(1427,25,57,2,NULL),(1428,111,22,2,NULL),(1429,254,75,2,NULL),(1430,28,57,2,NULL),(1431,123,22,2,NULL),(1432,258,8,2,NULL),(1433,29,57,2,NULL),(1434,235,22,2,NULL),(1435,258,16,2,NULL),(1436,33,57,2,NULL),(1437,237,22,2,NULL),(1438,258,19,2,NULL),(1439,34,57,2,NULL),(1440,258,21,2,NULL),(1441,238,22,2,NULL),(1442,27,57,2,NULL),(1443,240,22,2,NULL),(1444,258,47,2,NULL),(1445,40,57,2,NULL),(1446,241,22,2,NULL),(1447,258,50,2,NULL),(1448,89,57,2,NULL),(1449,22,45,2,NULL),(1450,258,53,2,NULL),(1451,101,57,2,NULL),(1452,78,45,2,NULL),(1453,258,73,2,NULL),(1454,128,57,2,NULL),(1455,86,45,2,NULL),(1456,258,10,2,NULL),(1457,130,57,2,NULL),(1458,94,45,2,NULL),(1459,258,17,2,NULL),(1460,135,57,2,NULL),(1461,99,45,2,NULL),(1462,258,20,2,NULL),(1463,139,57,2,NULL),(1464,111,45,2,NULL),(1465,258,22,2,NULL),(1466,142,57,2,NULL),(1467,258,45,2,NULL),(1468,123,45,2,NULL),(1469,175,57,2,NULL),(1470,235,45,2,NULL),(1471,258,57,2,NULL),(1472,181,57,2,NULL),(1473,258,61,2,NULL),(1474,237,45,2,NULL),(1475,185,57,2,NULL),(1476,258,74,2,NULL),(1477,238,45,2,NULL),(1478,189,57,2,NULL),(1479,258,5,2,NULL),(1480,240,45,2,NULL),(1481,194,57,2,NULL),(1482,241,45,2,NULL),(1483,258,9,2,NULL),(1484,182,57,2,NULL),(1485,22,57,2,NULL),(1486,258,13,2,NULL),(1487,191,57,2,NULL),(1488,78,57,2,NULL),(1489,258,18,2,NULL),(1490,195,57,2,NULL),(1491,86,57,2,NULL),(1492,258,42,2,NULL),(1493,199,57,2,NULL),(1494,94,57,2,NULL),(1495,258,43,2,NULL),(1496,203,57,2,NULL),(1497,99,57,2,NULL),(1498,258,49,2,NULL),(1499,25,61,2,NULL),(1500,111,57,2,NULL),(1501,258,52,2,NULL),(1502,28,61,2,NULL),(1503,258,23,2,NULL),(1504,123,57,2,NULL),(1505,29,61,2,NULL),(1506,258,24,2,NULL),(1507,235,57,2,NULL),(1508,33,61,2,NULL),(1509,258,31,2,NULL),(1510,237,57,2,NULL),(1511,34,61,2,NULL),(1512,258,34,2,NULL),(1513,238,57,2,NULL),(1514,27,61,2,NULL),(1515,258,36,2,NULL),(1516,240,57,2,NULL),(1517,40,61,2,NULL),(1518,258,54,2,NULL),(1519,241,57,2,NULL),(1520,89,61,2,NULL),(1521,258,58,2,NULL),(1522,22,61,2,NULL),(1523,101,61,2,NULL),(1524,258,60,2,NULL),(1525,78,61,2,NULL),(1526,128,61,2,NULL),(1527,258,35,2,NULL),(1528,86,61,2,NULL),(1529,130,61,2,NULL),(1530,94,61,2,NULL),(1531,258,37,2,NULL),(1532,135,61,2,NULL),(1533,99,61,2,NULL),(1534,258,39,2,NULL),(1535,139,61,2,NULL),(1536,111,61,2,NULL),(1537,258,51,2,NULL),(1538,142,61,2,NULL),(1539,258,55,2,NULL),(1540,123,61,2,NULL),(1541,175,61,2,NULL),(1542,258,69,2,NULL),(1543,235,61,2,NULL),(1544,181,61,2,NULL),(1545,258,72,2,NULL),(1546,237,61,2,NULL),(1547,185,61,2,NULL),(1548,258,75,2,NULL),(1549,238,61,2,NULL),(1550,189,61,2,NULL),(1551,48,35,2,NULL),(1552,240,61,2,NULL),(1553,194,61,2,NULL),(1554,59,35,2,NULL),(1555,241,61,2,NULL),(1556,182,61,2,NULL),(1557,137,35,2,NULL),(1558,22,74,2,NULL),(1559,191,61,2,NULL),(1560,78,74,2,NULL),(1561,147,35,2,NULL),(1562,195,61,2,NULL),(1563,86,74,2,NULL),(1564,159,35,2,NULL),(1565,199,61,2,NULL),(1566,161,35,2,NULL),(1567,94,74,2,NULL),(1568,203,61,2,NULL),(1569,99,74,2,NULL),(1570,165,35,2,NULL),(1571,25,74,2,NULL),(1572,201,35,2,NULL),(1573,111,74,2,NULL),(1574,28,74,2,NULL),(1575,123,74,2,NULL),(1576,207,35,2,NULL),(1577,29,74,2,NULL),(1578,235,74,2,NULL),(1579,210,35,2,NULL),(1580,33,74,2,NULL),(1581,237,74,2,NULL),(1582,213,35,2,NULL),(1583,34,74,2,NULL),(1584,238,74,2,NULL),(1585,218,35,2,NULL),(1586,27,74,2,NULL),(1587,240,74,2,NULL),(1588,53,35,2,NULL),(1589,40,74,2,NULL),(1590,241,74,2,NULL),(1591,22,35,2,NULL),(1592,89,74,2,NULL),(1593,78,35,2,NULL),(1594,101,74,2,NULL),(1595,86,35,2,NULL),(1596,134,10,2,NULL),(1597,128,74,2,NULL),(1598,94,35,2,NULL),(1599,146,10,2,NULL),(1600,130,74,2,NULL),(1601,99,35,2,NULL),(1602,22,9,2,NULL),(1603,135,74,2,NULL),(1604,111,35,2,NULL),(1605,139,74,2,NULL),(1606,78,9,2,NULL),(1607,123,35,2,NULL),(1608,86,9,2,NULL),(1609,142,74,2,NULL),(1610,235,35,2,NULL),(1611,175,74,2,NULL),(1612,94,9,2,NULL),(1613,237,35,2,NULL),(1614,181,74,2,NULL),(1615,99,9,2,NULL),(1616,238,35,2,NULL),(1617,185,74,2,NULL),(1618,111,9,2,NULL),(1619,240,35,2,NULL),(1620,189,74,2,NULL),(1621,123,9,2,NULL),(1622,241,35,2,NULL),(1623,194,74,2,NULL),(1624,235,9,2,NULL),(1625,211,35,2,NULL),(1626,182,74,2,NULL),(1627,237,9,2,NULL),(1628,25,35,2,NULL),(1629,238,9,2,NULL),(1630,191,74,2,NULL),(1631,28,35,2,NULL),(1632,195,74,2,NULL),(1633,240,9,2,NULL),(1634,29,35,2,NULL),(1635,199,74,2,NULL),(1636,241,9,2,NULL),(1637,33,35,2,NULL),(1638,203,74,2,NULL),(1639,22,13,2,NULL),(1640,34,35,2,NULL),(1641,134,5,2,NULL),(1642,78,13,2,NULL),(1643,27,35,2,NULL),(1644,86,13,2,NULL),(1645,146,5,2,NULL),(1646,40,35,2,NULL),(1647,94,13,2,NULL),(1648,25,9,2,NULL),(1649,89,35,2,NULL),(1650,99,13,2,NULL),(1651,28,9,2,NULL),(1652,101,35,2,NULL),(1653,29,9,2,NULL),(1654,111,13,2,NULL),(1655,128,35,2,NULL),(1656,33,9,2,NULL),(1657,123,13,2,NULL),(1658,130,35,2,NULL),(1659,235,13,2,NULL),(1660,34,9,2,NULL),(1661,135,35,2,NULL),(1662,237,13,2,NULL),(1663,27,9,2,NULL),(1664,139,35,2,NULL),(1665,40,9,2,NULL),(1666,238,13,2,NULL),(1667,142,35,2,NULL),(1668,89,9,2,NULL),(1669,240,13,2,NULL),(1670,175,35,2,NULL),(1671,101,9,2,NULL),(1672,241,13,2,NULL),(1673,181,35,2,NULL),(1674,22,18,2,NULL),(1675,128,9,2,NULL),(1676,185,35,2,NULL),(1677,78,18,2,NULL),(1678,130,9,2,NULL),(1679,189,35,2,NULL),(1680,86,18,2,NULL),(1681,135,9,2,NULL),(1682,194,35,2,NULL),(1683,139,9,2,NULL),(1684,94,18,2,NULL),(1685,182,35,2,NULL),(1686,142,9,2,NULL),(1687,99,18,2,NULL),(1688,191,35,2,NULL),(1689,111,18,2,NULL),(1690,175,9,2,NULL),(1691,195,35,2,NULL),(1692,123,18,2,NULL),(1693,181,9,2,NULL),(1694,199,35,2,NULL),(1695,185,9,2,NULL),(1696,235,18,2,NULL),(1697,203,35,2,NULL),(1698,237,18,2,NULL),(1699,189,9,2,NULL),(1700,134,35,2,NULL),(1701,194,9,2,NULL),(1702,238,18,2,NULL),(1703,146,35,2,NULL),(1704,182,9,2,NULL),(1705,100,35,2,NULL),(1706,240,18,2,NULL),(1707,191,9,2,NULL),(1708,103,35,2,NULL),(1709,241,18,2,NULL),(1710,195,9,2,NULL),(1711,106,35,2,NULL),(1712,22,42,2,NULL),(1713,199,9,2,NULL),(1714,110,35,2,NULL),(1715,78,42,2,NULL),(1716,203,9,2,NULL),(1717,113,35,2,NULL),(1718,86,42,2,NULL),(1719,25,13,2,NULL),(1720,117,35,2,NULL),(1721,28,13,2,NULL),(1722,94,42,2,NULL),(1723,119,35,2,NULL),(1724,29,13,2,NULL),(1725,99,42,2,NULL),(1726,124,35,2,NULL),(1727,33,13,2,NULL),(1728,111,42,2,NULL),(1729,221,35,2,NULL),(1730,34,13,2,NULL),(1731,123,42,2,NULL),(1732,27,13,2,NULL),(1733,235,42,2,NULL),(1734,48,37,2,NULL),(1735,40,13,2,NULL),(1736,59,37,2,NULL),(1737,237,42,2,NULL),(1738,89,13,2,NULL),(1739,137,37,2,NULL),(1740,238,42,2,NULL),(1741,101,13,2,NULL),(1742,147,37,2,NULL),(1743,240,42,2,NULL),(1744,128,13,2,NULL),(1745,159,37,2,NULL),(1746,241,42,2,NULL),(1747,130,13,2,NULL),(1748,161,37,2,NULL),(1749,22,43,2,NULL),(1750,135,13,2,NULL),(1751,165,37,2,NULL),(1752,78,43,2,NULL),(1753,139,13,2,NULL),(1754,201,37,2,NULL),(1755,86,43,2,NULL),(1756,142,13,2,NULL),(1757,207,37,2,NULL),(1758,94,43,2,NULL),(1759,175,13,2,NULL),(1760,210,37,2,NULL),(1761,99,43,2,NULL),(1762,181,13,2,NULL),(1763,213,37,2,NULL),(1764,111,43,2,NULL),(1765,185,13,2,NULL),(1766,218,37,2,NULL),(1767,123,43,2,NULL),(1768,189,13,2,NULL),(1769,53,37,2,NULL),(1770,235,43,2,NULL),(1771,194,13,2,NULL),(1772,22,37,2,NULL),(1773,237,43,2,NULL),(1774,182,13,2,NULL),(1775,78,37,2,NULL),(1776,238,43,2,NULL),(1777,191,13,2,NULL),(1778,86,37,2,NULL),(1779,240,43,2,NULL),(1780,195,13,2,NULL),(1781,94,37,2,NULL),(1782,241,43,2,NULL),(1783,199,13,2,NULL),(1784,99,37,2,NULL),(1785,22,49,2,NULL),(1786,203,13,2,NULL),(1787,111,37,2,NULL),(1788,78,49,2,NULL),(1789,25,18,2,NULL),(1790,123,37,2,NULL),(1791,86,49,2,NULL),(1792,28,18,2,NULL),(1793,235,37,2,NULL),(1794,94,49,2,NULL),(1795,29,18,2,NULL),(1796,237,37,2,NULL),(1797,99,49,2,NULL),(1798,33,18,2,NULL),(1799,238,37,2,NULL),(1800,111,49,2,NULL),(1801,34,18,2,NULL),(1802,240,37,2,NULL),(1803,123,49,2,NULL),(1804,27,18,2,NULL),(1805,241,37,2,NULL),(1806,235,49,2,NULL),(1807,40,18,2,NULL),(1808,211,37,2,NULL),(1809,237,49,2,NULL),(1810,89,18,2,NULL),(1811,25,37,2,NULL),(1812,238,49,2,NULL),(1813,101,18,2,NULL),(1814,28,37,2,NULL),(1815,240,49,2,NULL),(1816,128,18,2,NULL),(1817,29,37,2,NULL),(1818,241,49,2,NULL),(1819,130,18,2,NULL),(1820,33,37,2,NULL),(1821,22,52,2,NULL),(1822,135,18,2,NULL),(1823,34,37,2,NULL),(1824,78,52,2,NULL),(1825,139,18,2,NULL),(1826,27,37,2,NULL),(1827,86,52,2,NULL),(1828,142,18,2,NULL),(1829,40,37,2,NULL),(1830,94,52,2,NULL),(1831,175,18,2,NULL),(1832,89,37,2,NULL),(1833,99,52,2,NULL),(1834,181,18,2,NULL),(1835,101,37,2,NULL),(1836,111,52,2,NULL),(1837,185,18,2,NULL),(1838,128,37,2,NULL),(1839,123,52,2,NULL),(1840,189,18,2,NULL),(1841,130,37,2,NULL),(1842,235,52,2,NULL),(1843,194,18,2,NULL),(1844,135,37,2,NULL),(1845,237,52,2,NULL),(1846,182,18,2,NULL),(1847,139,37,2,NULL),(1848,238,52,2,NULL),(1849,191,18,2,NULL),(1850,142,37,2,NULL),(1851,240,52,2,NULL),(1852,195,18,2,NULL),(1853,175,37,2,NULL),(1854,241,52,2,NULL),(1855,199,18,2,NULL),(1856,181,37,2,NULL),(1857,22,23,2,NULL),(1858,203,18,2,NULL),(1859,185,37,2,NULL),(1860,78,23,2,NULL),(1861,25,42,2,NULL),(1862,189,37,2,NULL),(1863,86,23,2,NULL),(1864,28,42,2,NULL),(1865,194,37,2,NULL),(1866,94,23,2,NULL),(1867,29,42,2,NULL),(1868,182,37,2,NULL),(1869,99,23,2,NULL),(1870,33,42,2,NULL),(1871,191,37,2,NULL),(1872,111,23,2,NULL),(1873,34,42,2,NULL),(1874,195,37,2,NULL),(1875,123,23,2,NULL),(1876,27,42,2,NULL),(1877,199,37,2,NULL),(1878,235,23,2,NULL),(1879,40,42,2,NULL),(1880,203,37,2,NULL),(1881,237,23,2,NULL),(1882,89,42,2,NULL),(1883,134,37,2,NULL),(1884,238,23,2,NULL),(1885,101,42,2,NULL),(1886,146,37,2,NULL),(1887,240,23,2,NULL),(1888,128,42,2,NULL),(1889,100,37,2,NULL),(1890,241,23,2,NULL),(1891,130,42,2,NULL),(1892,103,37,2,NULL),(1893,100,10,2,NULL),(1894,135,42,2,NULL),(1895,106,37,2,NULL),(1896,103,10,2,NULL),(1897,139,42,2,NULL),(1898,110,37,2,NULL),(1899,106,10,2,NULL),(1900,142,42,2,NULL),(1901,91,25,2,NULL),(1902,113,37,2,NULL),(1903,110,10,2,NULL),(1904,175,42,2,NULL),(1905,100,8,2,NULL),(1906,117,37,2,NULL),(1907,113,10,2,NULL),(1908,181,42,2,NULL),(1909,103,8,2,NULL),(1910,119,37,2,NULL),(1911,117,10,2,NULL),(1912,185,42,2,NULL),(1913,124,37,2,NULL),(1914,119,10,2,NULL),(1915,106,8,2,NULL),(1916,189,42,2,NULL),(1917,221,37,2,NULL),(1918,124,10,2,NULL),(1919,110,8,2,NULL),(1920,194,42,2,NULL),(1921,221,10,2,NULL),(1922,245,13,2,NULL),(1923,182,42,2,NULL),(1924,113,8,2,NULL),(1925,22,24,2,NULL),(1926,245,19,2,NULL),(1927,191,42,2,NULL),(1928,78,24,2,NULL),(1929,117,8,2,NULL),(1930,245,20,2,NULL),(1931,195,42,2,NULL),(1932,86,24,2,NULL),(1933,245,37,2,NULL),(1934,199,42,2,NULL),(1935,119,8,2,NULL),(1936,94,24,2,NULL),(1937,48,39,2,NULL),(1938,203,42,2,NULL),(1939,99,24,2,NULL),(1940,124,8,2,NULL),(1941,59,39,2,NULL),(1942,25,43,2,NULL),(1943,111,24,2,NULL),(1944,137,39,2,NULL),(1945,28,43,2,NULL),(1946,221,8,2,NULL),(1947,123,24,2,NULL),(1948,147,39,2,NULL),(1949,29,43,2,NULL),(1950,235,24,2,NULL),(1951,48,23,2,NULL),(1952,159,39,2,NULL),(1953,33,43,2,NULL),(1954,237,24,2,NULL),(1955,34,43,2,NULL),(1956,161,39,2,NULL),(1957,59,23,2,NULL),(1958,238,24,2,NULL),(1959,165,39,2,NULL),(1960,27,43,2,NULL),(1961,137,23,2,NULL),(1962,240,24,2,NULL),(1963,201,39,2,NULL),(1964,40,43,2,NULL),(1965,241,24,2,NULL),(1966,147,23,2,NULL),(1967,207,39,2,NULL),(1968,89,43,2,NULL),(1969,22,31,2,NULL),(1970,159,23,2,NULL),(1971,210,39,2,NULL),(1972,101,43,2,NULL),(1973,78,31,2,NULL),(1974,213,39,2,NULL),(1975,128,43,2,NULL),(1976,161,23,2,NULL),(1977,86,31,2,NULL),(1978,218,39,2,NULL),(1979,130,43,2,NULL),(1980,94,31,2,NULL),(1981,165,23,2,NULL),(1982,53,39,2,NULL),(1983,135,43,2,NULL),(1984,99,31,2,NULL),(1985,22,39,2,NULL),(1986,139,43,2,NULL),(1987,201,23,2,NULL),(1988,111,31,2,NULL),(1989,78,39,2,NULL),(1990,142,43,2,NULL),(1991,123,31,2,NULL),(1992,207,23,2,NULL),(1993,175,43,2,NULL),(1994,86,39,2,NULL),(1995,235,31,2,NULL),(1996,210,23,2,NULL),(1997,94,39,2,NULL),(1998,181,43,2,NULL),(1999,237,31,2,NULL),(2000,99,39,2,NULL),(2001,185,43,2,NULL),(2002,213,23,2,NULL),(2003,238,31,2,NULL),(2004,111,39,2,NULL),(2005,189,43,2,NULL),(2006,240,31,2,NULL),(2007,218,23,2,NULL),(2008,123,39,2,NULL),(2009,194,43,2,NULL),(2010,241,31,2,NULL),(2011,235,39,2,NULL),(2012,182,43,2,NULL),(2013,53,23,2,NULL),(2014,22,34,2,NULL),(2015,237,39,2,NULL),(2016,191,43,2,NULL),(2017,78,34,2,NULL),(2018,100,16,2,NULL),(2019,238,39,2,NULL),(2020,195,43,2,NULL),(2021,86,34,2,NULL),(2022,240,39,2,NULL),(2023,199,43,2,NULL),(2024,103,16,2,NULL),(2025,94,34,2,NULL),(2026,241,39,2,NULL),(2027,203,43,2,NULL),(2028,99,34,2,NULL),(2029,106,16,2,NULL),(2030,211,39,2,NULL),(2031,25,49,2,NULL),(2032,111,34,2,NULL),(2033,110,16,2,NULL),(2034,25,39,2,NULL),(2035,28,49,2,NULL),(2036,123,34,2,NULL),(2037,29,49,2,NULL),(2038,28,39,2,NULL),(2039,113,16,2,NULL),(2040,235,34,2,NULL),(2041,29,39,2,NULL),(2042,33,49,2,NULL),(2043,237,34,2,NULL),(2044,117,16,2,NULL),(2045,33,39,2,NULL),(2046,34,49,2,NULL),(2047,238,34,2,NULL),(2048,34,39,2,NULL),(2049,27,49,2,NULL),(2050,119,16,2,NULL),(2051,240,34,2,NULL),(2052,27,39,2,NULL),(2053,40,49,2,NULL),(2054,124,16,2,NULL),(2055,40,39,2,NULL),(2056,89,49,2,NULL),(2057,221,16,2,NULL),(2058,89,39,2,NULL),(2059,101,49,2,NULL),(2060,100,19,2,NULL),(2061,241,34,2,NULL),(2062,101,39,2,NULL),(2063,128,49,2,NULL),(2064,103,19,2,NULL),(2065,128,39,2,NULL),(2066,22,36,2,NULL),(2067,130,49,2,NULL),(2068,106,19,2,NULL),(2069,130,39,2,NULL),(2070,78,36,2,NULL),(2071,135,49,2,NULL),(2072,110,19,2,NULL),(2073,135,39,2,NULL),(2074,86,36,2,NULL),(2075,139,49,2,NULL),(2076,113,19,2,NULL),(2077,139,39,2,NULL),(2078,94,36,2,NULL),(2079,142,49,2,NULL),(2080,117,19,2,NULL),(2081,99,36,2,NULL),(2082,142,39,2,NULL),(2083,119,19,2,NULL),(2084,175,49,2,NULL),(2085,111,36,2,NULL),(2086,175,39,2,NULL),(2087,181,49,2,NULL),(2088,124,19,2,NULL),(2089,123,36,2,NULL),(2090,181,39,2,NULL),(2091,185,49,2,NULL),(2092,221,19,2,NULL),(2093,235,36,2,NULL),(2094,185,39,2,NULL),(2095,189,49,2,NULL),(2096,100,21,2,NULL),(2097,237,36,2,NULL),(2098,189,39,2,NULL),(2099,194,49,2,NULL),(2100,103,21,2,NULL),(2101,238,36,2,NULL),(2102,194,39,2,NULL),(2103,182,49,2,NULL),(2104,106,21,2,NULL),(2105,240,36,2,NULL),(2106,182,39,2,NULL),(2107,241,36,2,NULL),(2108,110,21,2,NULL),(2109,191,49,2,NULL),(2110,191,39,2,NULL),(2111,195,49,2,NULL),(2112,195,39,2,NULL),(2113,113,21,2,NULL),(2114,22,54,2,NULL),(2115,199,49,2,NULL),(2116,199,39,2,NULL),(2117,78,54,2,NULL),(2118,117,21,2,NULL),(2119,203,49,2,NULL),(2120,203,39,2,NULL),(2121,86,54,2,NULL),(2122,119,21,2,NULL),(2123,25,52,2,NULL),(2124,134,39,2,NULL),(2125,94,54,2,NULL),(2126,124,21,2,NULL),(2127,28,52,2,NULL),(2128,146,39,2,NULL),(2129,99,54,2,NULL),(2130,221,21,2,NULL),(2131,29,52,2,NULL),(2132,111,54,2,NULL),(2133,100,39,2,NULL),(2134,100,47,2,NULL),(2135,33,52,2,NULL),(2136,103,39,2,NULL),(2137,123,54,2,NULL),(2138,103,47,2,NULL),(2139,34,52,2,NULL),(2140,106,39,2,NULL),(2141,235,54,2,NULL),(2142,106,47,2,NULL),(2143,27,52,2,NULL),(2144,110,39,2,NULL),(2145,237,54,2,NULL),(2146,110,47,2,NULL),(2147,40,52,2,NULL),(2148,113,39,2,NULL),(2149,238,54,2,NULL),(2150,113,47,2,NULL),(2151,89,52,2,NULL),(2152,117,39,2,NULL),(2153,240,54,2,NULL),(2154,117,47,2,NULL),(2155,101,52,2,NULL),(2156,119,39,2,NULL),(2157,241,54,2,NULL),(2158,119,47,2,NULL),(2159,128,52,2,NULL),(2160,124,39,2,NULL),(2161,22,58,2,NULL),(2162,124,47,2,NULL),(2163,130,52,2,NULL),(2164,221,39,2,NULL),(2165,78,58,2,NULL),(2166,221,47,2,NULL),(2167,135,52,2,NULL),(2168,86,58,2,NULL),(2169,100,50,2,NULL),(2170,48,51,2,NULL),(2171,139,52,2,NULL),(2172,94,58,2,NULL),(2173,103,50,2,NULL),(2174,59,51,2,NULL),(2175,142,52,2,NULL),(2176,99,58,2,NULL),(2177,106,50,2,NULL),(2178,137,51,2,NULL),(2179,175,52,2,NULL),(2180,111,58,2,NULL),(2181,110,50,2,NULL),(2182,147,51,2,NULL),(2183,181,52,2,NULL),(2184,123,58,2,NULL),(2185,113,50,2,NULL),(2186,159,51,2,NULL),(2187,185,52,2,NULL),(2188,235,58,2,NULL),(2189,117,50,2,NULL),(2190,161,51,2,NULL),(2191,189,52,2,NULL),(2192,237,58,2,NULL),(2193,119,50,2,NULL),(2194,165,51,2,NULL),(2195,194,52,2,NULL),(2196,238,58,2,NULL),(2197,124,50,2,NULL),(2198,201,51,2,NULL),(2199,182,52,2,NULL),(2200,240,58,2,NULL),(2201,221,50,2,NULL),(2202,207,51,2,NULL),(2203,191,52,2,NULL),(2204,241,58,2,NULL),(2205,100,53,2,NULL),(2206,210,51,2,NULL),(2207,195,52,2,NULL),(2208,22,60,2,NULL),(2209,103,53,2,NULL),(2210,213,51,2,NULL),(2211,199,52,2,NULL),(2212,78,60,2,NULL),(2213,106,53,2,NULL),(2214,218,51,2,NULL),(2215,203,52,2,NULL),(2216,86,60,2,NULL),(2217,110,53,2,NULL),(2218,53,51,2,NULL),(2219,25,23,2,NULL),(2220,94,60,2,NULL),(2221,113,53,2,NULL),(2222,22,51,2,NULL),(2223,28,23,2,NULL),(2224,99,60,2,NULL),(2225,117,53,2,NULL),(2226,78,51,2,NULL),(2227,29,23,2,NULL),(2228,111,60,2,NULL),(2229,119,53,2,NULL),(2230,86,51,2,NULL),(2231,33,23,2,NULL),(2232,123,60,2,NULL),(2233,124,53,2,NULL),(2234,94,51,2,NULL),(2235,34,23,2,NULL),(2236,235,60,2,NULL),(2237,221,53,2,NULL),(2238,99,51,2,NULL),(2239,27,23,2,NULL),(2240,237,60,2,NULL),(2241,100,73,2,NULL),(2242,111,51,2,NULL),(2243,40,23,2,NULL),(2244,238,60,2,NULL),(2245,103,73,2,NULL),(2246,123,51,2,NULL),(2247,89,23,2,NULL),(2248,240,60,2,NULL),(2249,106,73,2,NULL),(2250,235,51,2,NULL),(2251,101,23,2,NULL),(2252,241,60,2,NULL),(2253,110,73,2,NULL),(2254,237,51,2,NULL),(2255,128,23,2,NULL),(2256,113,73,2,NULL),(2257,238,51,2,NULL),(2258,130,23,2,NULL),(2259,117,73,2,NULL),(2260,135,23,2,NULL),(2261,240,51,2,NULL),(2262,119,73,2,NULL),(2263,139,23,2,NULL),(2264,241,51,2,NULL),(2265,22,55,2,NULL),(2266,124,73,2,NULL),(2267,211,51,2,NULL),(2268,142,23,2,NULL),(2269,78,55,2,NULL),(2270,221,73,2,NULL),(2271,25,51,2,NULL),(2272,175,23,2,NULL),(2273,86,55,2,NULL),(2274,28,51,2,NULL),(2275,181,23,2,NULL),(2276,211,23,2,NULL),(2277,94,55,2,NULL),(2278,29,51,2,NULL),(2279,185,23,2,NULL),(2280,99,55,2,NULL),(2281,100,17,2,NULL),(2282,33,51,2,NULL),(2283,189,23,2,NULL),(2284,111,55,2,NULL),(2285,103,17,2,NULL),(2286,34,51,2,NULL),(2287,194,23,2,NULL),(2288,123,55,2,NULL),(2289,106,17,2,NULL),(2290,27,51,2,NULL),(2291,182,23,2,NULL),(2292,235,55,2,NULL),(2293,110,17,2,NULL),(2294,40,51,2,NULL),(2295,191,23,2,NULL),(2296,237,55,2,NULL),(2297,113,17,2,NULL),(2298,89,51,2,NULL),(2299,195,23,2,NULL),(2300,238,55,2,NULL),(2301,117,17,2,NULL),(2302,101,51,2,NULL),(2303,199,23,2,NULL),(2304,240,55,2,NULL),(2305,119,17,2,NULL),(2306,128,51,2,NULL),(2307,203,23,2,NULL),(2308,241,55,2,NULL),(2309,124,17,2,NULL),(2310,130,51,2,NULL),(2311,100,5,2,NULL),(2312,22,69,2,NULL),(2313,221,17,2,NULL),(2314,135,51,2,NULL),(2315,103,5,2,NULL),(2316,78,69,2,NULL),(2317,100,20,2,NULL),(2318,139,51,2,NULL),(2319,106,5,2,NULL),(2320,86,69,2,NULL),(2321,103,20,2,NULL),(2322,142,51,2,NULL),(2323,110,5,2,NULL),(2324,94,69,2,NULL),(2325,106,20,2,NULL),(2326,175,51,2,NULL),(2327,113,5,2,NULL),(2328,99,69,2,NULL),(2329,110,20,2,NULL),(2330,181,51,2,NULL),(2331,117,5,2,NULL),(2332,111,69,2,NULL),(2333,113,20,2,NULL),(2334,185,51,2,NULL),(2335,119,5,2,NULL),(2336,123,69,2,NULL),(2337,117,20,2,NULL),(2338,189,51,2,NULL),(2339,124,5,2,NULL),(2340,235,69,2,NULL),(2341,119,20,2,NULL),(2342,194,51,2,NULL),(2343,221,5,2,NULL),(2344,237,69,2,NULL),(2345,124,20,2,NULL),(2346,182,51,2,NULL),(2347,25,24,2,NULL),(2348,238,69,2,NULL),(2349,221,20,2,NULL),(2350,191,51,2,NULL),(2351,28,24,2,NULL),(2352,240,69,2,NULL),(2353,100,22,2,NULL),(2354,195,51,2,NULL),(2355,29,24,2,NULL),(2356,241,69,2,NULL),(2357,103,22,2,NULL),(2358,199,51,2,NULL),(2359,33,24,2,NULL),(2360,22,72,2,NULL),(2361,106,22,2,NULL),(2362,203,51,2,NULL),(2363,34,24,2,NULL),(2364,78,72,2,NULL),(2365,110,22,2,NULL),(2366,134,51,2,NULL),(2367,27,24,2,NULL),(2368,86,72,2,NULL),(2369,113,22,2,NULL),(2370,146,51,2,NULL),(2371,40,24,2,NULL),(2372,94,72,2,NULL),(2373,117,22,2,NULL),(2374,89,24,2,NULL),(2375,100,51,2,NULL),(2376,99,72,2,NULL),(2377,119,22,2,NULL),(2378,103,51,2,NULL),(2379,101,24,2,NULL),(2380,111,72,2,NULL),(2381,124,22,2,NULL),(2382,106,51,2,NULL),(2383,128,24,2,NULL),(2384,123,72,2,NULL),(2385,221,22,2,NULL),(2386,110,51,2,NULL),(2387,130,24,2,NULL),(2388,235,72,2,NULL),(2389,100,45,2,NULL),(2390,113,51,2,NULL),(2391,135,24,2,NULL),(2392,237,72,2,NULL),(2393,103,45,2,NULL),(2394,139,24,2,NULL),(2395,117,51,2,NULL),(2396,238,72,2,NULL),(2397,106,45,2,NULL),(2398,142,24,2,NULL),(2399,240,72,2,NULL),(2400,110,45,2,NULL),(2401,175,24,2,NULL),(2402,241,72,2,NULL),(2403,113,45,2,NULL),(2404,119,51,2,NULL),(2405,181,24,2,NULL),(2406,22,75,2,NULL),(2407,117,45,2,NULL),(2408,185,24,2,NULL),(2409,124,51,2,NULL),(2410,78,75,2,NULL),(2411,119,45,2,NULL),(2412,221,51,2,NULL),(2413,189,24,2,NULL),(2414,86,75,2,NULL),(2415,124,45,2,NULL),(2416,194,24,2,NULL),(2417,48,55,2,NULL),(2418,94,75,2,NULL),(2419,221,45,2,NULL),(2420,59,55,2,NULL),(2421,182,24,2,NULL),(2422,99,75,2,NULL),(2423,100,57,2,NULL),(2424,137,55,2,NULL),(2425,191,24,2,NULL),(2426,111,75,2,NULL),(2427,103,57,2,NULL),(2428,195,24,2,NULL),(2429,147,55,2,NULL),(2430,123,75,2,NULL),(2431,106,57,2,NULL),(2432,159,55,2,NULL),(2433,199,24,2,NULL),(2434,235,75,2,NULL),(2435,110,57,2,NULL),(2436,161,55,2,NULL),(2437,203,24,2,NULL),(2438,237,75,2,NULL),(2439,113,57,2,NULL),(2440,165,55,2,NULL),(2441,25,31,2,NULL),(2442,238,75,2,NULL),(2443,117,57,2,NULL),(2444,201,55,2,NULL),(2445,28,31,2,NULL),(2446,240,75,2,NULL),(2447,119,57,2,NULL),(2448,29,31,2,NULL),(2449,207,55,2,NULL),(2450,241,75,2,NULL),(2451,124,57,2,NULL),(2452,33,31,2,NULL),(2453,210,55,2,NULL),(2454,221,57,2,NULL),(2455,211,8,2,NULL),(2456,34,31,2,NULL),(2457,213,55,2,NULL),(2458,211,16,2,NULL),(2459,100,61,2,NULL),(2460,27,31,2,NULL),(2461,218,55,2,NULL),(2462,211,19,2,NULL),(2463,103,61,2,NULL),(2464,40,31,2,NULL),(2465,53,55,2,NULL),(2466,211,21,2,NULL),(2467,106,61,2,NULL),(2468,89,31,2,NULL),(2469,211,55,2,NULL),(2470,211,47,2,NULL),(2471,110,61,2,NULL),(2472,25,55,2,NULL),(2473,101,31,2,NULL),(2474,211,50,2,NULL),(2475,113,61,2,NULL),(2476,28,55,2,NULL),(2477,128,31,2,NULL),(2478,211,53,2,NULL),(2479,117,61,2,NULL),(2480,130,31,2,NULL),(2481,29,55,2,NULL),(2482,211,73,2,NULL),(2483,119,61,2,NULL),(2484,33,55,2,NULL),(2485,135,31,2,NULL),(2486,211,17,2,NULL),(2487,124,61,2,NULL),(2488,34,55,2,NULL),(2489,139,31,2,NULL),(2490,211,20,2,NULL),(2491,221,61,2,NULL),(2492,142,31,2,NULL),(2493,27,55,2,NULL),(2494,211,22,2,NULL),(2495,100,74,2,NULL),(2496,40,55,2,NULL),(2497,175,31,2,NULL),(2498,211,45,2,NULL),(2499,103,74,2,NULL),(2500,89,55,2,NULL),(2501,181,31,2,NULL),(2502,211,57,2,NULL),(2503,106,74,2,NULL),(2504,101,55,2,NULL),(2505,185,31,2,NULL),(2506,211,61,2,NULL),(2507,110,74,2,NULL),(2508,128,55,2,NULL),(2509,189,31,2,NULL),(2510,211,74,2,NULL),(2511,113,74,2,NULL),(2512,130,55,2,NULL),(2513,194,31,2,NULL),(2514,211,9,2,NULL),(2515,117,74,2,NULL),(2516,135,55,2,NULL),(2517,182,31,2,NULL),(2518,119,74,2,NULL),(2519,211,13,2,NULL),(2520,139,55,2,NULL),(2521,191,31,2,NULL),(2522,211,18,2,NULL),(2523,124,74,2,NULL),(2524,142,55,2,NULL),(2525,195,31,2,NULL),(2526,211,42,2,NULL),(2527,221,74,2,NULL),(2528,175,55,2,NULL),(2529,199,31,2,NULL),(2530,211,43,2,NULL),(2531,181,55,2,NULL),(2532,203,31,2,NULL),(2533,211,49,2,NULL),(2534,134,23,2,NULL),(2535,185,55,2,NULL),(2536,25,34,2,NULL),(2537,211,52,2,NULL),(2538,146,23,2,NULL),(2539,189,55,2,NULL),(2540,28,34,2,NULL),(2541,100,9,2,NULL),(2542,211,24,2,NULL),(2543,194,55,2,NULL),(2544,29,34,2,NULL),(2545,211,31,2,NULL),(2546,103,9,2,NULL),(2547,182,55,2,NULL),(2548,33,34,2,NULL),(2549,211,34,2,NULL),(2550,106,9,2,NULL),(2551,191,55,2,NULL),(2552,34,34,2,NULL),(2553,211,36,2,NULL),(2554,195,55,2,NULL),(2555,27,34,2,NULL),(2556,110,9,2,NULL),(2557,211,54,2,NULL),(2558,199,55,2,NULL),(2559,40,34,2,NULL),(2560,113,9,2,NULL),(2561,211,58,2,NULL),(2562,203,55,2,NULL),(2563,89,34,2,NULL),(2564,117,9,2,NULL),(2565,211,60,2,NULL),(2566,134,55,2,NULL),(2567,101,34,2,NULL),(2568,119,9,2,NULL),(2569,211,69,2,NULL),(2570,146,55,2,NULL),(2571,128,34,2,NULL),(2572,124,9,2,NULL),(2573,211,72,2,NULL),(2574,100,55,2,NULL),(2575,130,34,2,NULL),(2576,211,75,2,NULL),(2577,221,9,2,NULL),(2578,103,55,2,NULL),(2579,48,17,2,NULL),(2580,135,34,2,NULL),(2581,100,13,2,NULL),(2582,106,55,2,NULL),(2583,139,34,2,NULL),(2584,110,55,2,NULL),(2585,59,17,2,NULL),(2586,103,13,2,NULL),(2587,142,34,2,NULL),(2588,113,55,2,NULL),(2589,137,17,2,NULL),(2590,106,13,2,NULL),(2591,175,34,2,NULL),(2592,117,55,2,NULL),(2593,147,17,2,NULL),(2594,110,13,2,NULL),(2595,181,34,2,NULL),(2596,119,55,2,NULL),(2597,159,17,2,NULL),(2598,113,13,2,NULL),(2599,185,34,2,NULL),(2600,124,55,2,NULL),(2601,161,17,2,NULL),(2602,117,13,2,NULL),(2603,189,34,2,NULL),(2604,221,55,2,NULL),(2605,165,17,2,NULL),(2606,119,13,2,NULL),(2607,194,34,2,NULL),(2608,201,17,2,NULL),(2609,124,13,2,NULL),(2610,48,69,2,NULL),(2611,182,34,2,NULL),(2612,207,17,2,NULL),(2613,221,13,2,NULL),(2614,191,34,2,NULL),(2615,59,69,2,NULL),(2616,210,17,2,NULL),(2617,100,18,2,NULL),(2618,137,69,2,NULL),(2619,195,34,2,NULL),(2620,213,17,2,NULL),(2621,103,18,2,NULL),(2622,147,69,2,NULL),(2623,199,34,2,NULL),(2624,218,17,2,NULL),(2625,106,18,2,NULL),(2626,159,69,2,NULL),(2627,203,34,2,NULL),(2628,53,17,2,NULL),(2629,110,18,2,NULL),(2630,161,69,2,NULL),(2631,25,36,2,NULL),(2632,113,18,2,NULL),(2633,165,69,2,NULL),(2634,28,36,2,NULL),(2635,117,18,2,NULL),(2636,29,36,2,NULL),(2637,201,69,2,NULL),(2638,134,17,2,NULL),(2639,119,18,2,NULL),(2640,33,36,2,NULL),(2641,207,69,2,NULL),(2642,146,17,2,NULL),(2643,124,18,2,NULL),(2644,34,36,2,NULL),(2645,210,69,2,NULL),(2646,221,18,2,NULL),(2647,213,69,2,NULL),(2648,27,36,2,NULL),(2649,100,42,2,NULL),(2650,48,20,2,NULL),(2651,40,36,2,NULL),(2652,218,69,2,NULL),(2653,59,20,2,NULL),(2654,103,42,2,NULL),(2655,53,69,2,NULL),(2656,89,36,2,NULL),(2657,137,20,2,NULL),(2658,106,42,2,NULL),(2659,101,36,2,NULL),(2660,25,69,2,NULL),(2661,147,20,2,NULL),(2662,110,42,2,NULL),(2663,128,36,2,NULL),(2664,159,20,2,NULL),(2665,28,69,2,NULL),(2666,113,42,2,NULL),(2667,130,36,2,NULL),(2668,29,69,2,NULL),(2669,161,20,2,NULL),(2670,117,42,2,NULL),(2671,135,36,2,NULL),(2672,33,69,2,NULL),(2673,165,20,2,NULL),(2674,119,42,2,NULL),(2675,139,36,2,NULL),(2676,34,69,2,NULL),(2677,201,20,2,NULL),(2678,124,42,2,NULL),(2679,142,36,2,NULL),(2680,27,69,2,NULL),(2681,207,20,2,NULL),(2682,221,42,2,NULL),(2683,175,36,2,NULL),(2684,40,69,2,NULL),(2685,210,20,2,NULL),(2686,100,43,2,NULL),(2687,181,36,2,NULL),(2688,89,69,2,NULL),(2689,213,20,2,NULL),(2690,103,43,2,NULL),(2691,185,36,2,NULL),(2692,101,69,2,NULL),(2693,218,20,2,NULL),(2694,106,43,2,NULL),(2695,189,36,2,NULL),(2696,128,69,2,NULL),(2697,53,20,2,NULL),(2698,110,43,2,NULL),(2699,194,36,2,NULL),(2700,130,69,2,NULL),(2701,113,43,2,NULL),(2702,182,36,2,NULL),(2703,135,69,2,NULL),(2704,117,43,2,NULL),(2705,134,20,2,NULL),(2706,191,36,2,NULL),(2707,139,69,2,NULL),(2708,119,43,2,NULL),(2709,195,36,2,NULL),(2710,146,20,2,NULL),(2711,142,69,2,NULL),(2712,124,43,2,NULL),(2713,199,36,2,NULL),(2714,198,13,2,NULL),(2715,175,69,2,NULL),(2716,221,43,2,NULL),(2717,203,36,2,NULL),(2718,198,19,2,NULL),(2719,181,69,2,NULL),(2720,100,49,2,NULL),(2721,25,54,2,NULL),(2722,198,20,2,NULL),(2723,185,69,2,NULL),(2724,103,49,2,NULL),(2725,28,54,2,NULL),(2726,198,37,2,NULL),(2727,189,69,2,NULL),(2728,106,49,2,NULL),(2729,29,54,2,NULL),(2730,48,22,2,NULL),(2731,194,69,2,NULL),(2732,110,49,2,NULL),(2733,33,54,2,NULL),(2734,59,22,2,NULL),(2735,182,69,2,NULL),(2736,113,49,2,NULL),(2737,34,54,2,NULL),(2738,137,22,2,NULL),(2739,191,69,2,NULL),(2740,117,49,2,NULL),(2741,27,54,2,NULL),(2742,147,22,2,NULL),(2743,195,69,2,NULL),(2744,119,49,2,NULL),(2745,40,54,2,NULL),(2746,159,22,2,NULL),(2747,199,69,2,NULL),(2748,124,49,2,NULL),(2749,89,54,2,NULL),(2750,161,22,2,NULL),(2751,203,69,2,NULL),(2752,221,49,2,NULL),(2753,101,54,2,NULL),(2754,165,22,2,NULL),(2755,134,69,2,NULL),(2756,100,52,2,NULL),(2757,201,22,2,NULL),(2758,128,54,2,NULL),(2759,146,69,2,NULL),(2760,103,52,2,NULL),(2761,130,54,2,NULL),(2762,207,22,2,NULL),(2763,100,69,2,NULL),(2764,106,52,2,NULL),(2765,135,54,2,NULL),(2766,210,22,2,NULL),(2767,103,69,2,NULL),(2768,110,52,2,NULL),(2769,213,22,2,NULL),(2770,139,54,2,NULL),(2771,106,69,2,NULL),(2772,113,52,2,NULL),(2773,218,22,2,NULL),(2774,142,54,2,NULL),(2775,110,69,2,NULL),(2776,117,52,2,NULL),(2777,53,22,2,NULL),(2778,175,54,2,NULL),(2779,113,69,2,NULL),(2780,119,52,2,NULL),(2781,181,54,2,NULL),(2782,117,69,2,NULL),(2783,124,52,2,NULL),(2784,185,54,2,NULL),(2785,119,69,2,NULL),(2786,134,22,2,NULL),(2787,221,52,2,NULL),(2788,189,54,2,NULL),(2789,124,69,2,NULL),(2790,146,22,2,NULL),(2791,100,24,2,NULL),(2792,194,54,2,NULL),(2793,221,69,2,NULL),(2794,103,24,2,NULL),(2795,182,54,2,NULL),(2796,48,45,2,NULL),(2797,106,24,2,NULL),(2798,191,54,2,NULL),(2799,59,45,2,NULL),(2800,48,72,2,NULL),(2801,110,24,2,NULL),(2802,195,54,2,NULL),(2803,59,72,2,NULL),(2804,137,45,2,NULL),(2805,113,24,2,NULL),(2806,199,54,2,NULL),(2807,137,72,2,NULL),(2808,147,45,2,NULL),(2809,117,24,2,NULL),(2810,147,72,2,NULL),(2811,203,54,2,NULL),(2812,159,45,2,NULL),(2813,119,24,2,NULL),(2814,159,72,2,NULL),(2815,25,58,2,NULL),(2816,161,45,2,NULL),(2817,124,24,2,NULL),(2818,161,72,2,NULL),(2819,28,58,2,NULL),(2820,165,45,2,NULL),(2821,221,24,2,NULL),(2822,29,58,2,NULL),(2823,165,72,2,NULL),(2824,201,45,2,NULL),(2825,100,31,2,NULL),(2826,33,58,2,NULL),(2827,201,72,2,NULL),(2828,207,45,2,NULL),(2829,103,31,2,NULL),(2830,34,58,2,NULL),(2831,207,72,2,NULL),(2832,210,45,2,NULL),(2833,106,31,2,NULL),(2834,210,72,2,NULL),(2835,27,58,2,NULL),(2836,213,45,2,NULL),(2837,110,31,2,NULL),(2838,213,72,2,NULL),(2839,40,58,2,NULL),(2840,218,45,2,NULL),(2841,113,31,2,NULL),(2842,218,72,2,NULL),(2843,89,58,2,NULL),(2844,53,45,2,NULL),(2845,117,31,2,NULL),(2846,53,72,2,NULL),(2847,101,58,2,NULL),(2848,119,31,2,NULL),(2849,128,58,2,NULL),(2850,124,31,2,NULL),(2851,25,72,2,NULL),(2852,134,45,2,NULL),(2853,130,58,2,NULL),(2854,28,72,2,NULL),(2855,146,45,2,NULL),(2856,221,31,2,NULL),(2857,135,58,2,NULL),(2858,29,72,2,NULL),(2859,100,34,2,NULL),(2860,139,58,2,NULL),(2861,48,57,2,NULL),(2862,33,72,2,NULL),(2863,103,34,2,NULL),(2864,142,58,2,NULL),(2865,34,72,2,NULL),(2866,59,57,2,NULL),(2867,106,34,2,NULL),(2868,175,58,2,NULL),(2869,27,72,2,NULL),(2870,137,57,2,NULL),(2871,110,34,2,NULL),(2872,181,58,2,NULL),(2873,40,72,2,NULL),(2874,147,57,2,NULL),(2875,113,34,2,NULL),(2876,185,58,2,NULL),(2877,89,72,2,NULL),(2878,159,57,2,NULL),(2879,117,34,2,NULL),(2880,189,58,2,NULL),(2881,101,72,2,NULL),(2882,161,57,2,NULL),(2883,119,34,2,NULL),(2884,194,58,2,NULL),(2885,128,72,2,NULL),(2886,165,57,2,NULL),(2887,124,34,2,NULL),(2888,182,58,2,NULL),(2889,130,72,2,NULL),(2890,201,57,2,NULL),(2891,221,34,2,NULL),(2892,191,58,2,NULL),(2893,135,72,2,NULL),(2894,207,57,2,NULL),(2895,100,36,2,NULL),(2896,195,58,2,NULL),(2897,139,72,2,NULL),(2898,210,57,2,NULL),(2899,103,36,2,NULL),(2900,142,72,2,NULL),(2901,213,57,2,NULL),(2902,106,36,2,NULL),(2903,218,57,2,NULL),(2904,175,72,2,NULL),(2905,110,36,2,NULL),(2906,199,58,2,NULL),(2907,181,72,2,NULL),(2908,53,57,2,NULL),(2909,203,58,2,NULL),(2910,113,36,2,NULL),(2911,185,72,2,NULL),(2912,25,60,2,NULL),(2913,117,36,2,NULL),(2914,189,72,2,NULL),(2915,28,60,2,NULL),(2916,134,57,2,NULL),(2917,119,36,2,NULL),(2918,194,72,2,NULL),(2919,29,60,2,NULL),(2920,146,57,2,NULL),(2921,124,36,2,NULL),(2922,182,72,2,NULL),(2923,33,60,2,NULL),(2924,221,36,2,NULL),(2925,48,61,2,NULL),(2926,191,72,2,NULL),(2927,34,60,2,NULL),(2928,59,61,2,NULL),(2929,195,72,2,NULL),(2930,27,60,2,NULL),(2931,137,61,2,NULL),(2932,100,54,2,NULL),(2933,199,72,2,NULL),(2934,147,61,2,NULL),(2935,40,60,2,NULL),(2936,103,54,2,NULL),(2937,203,72,2,NULL),(2938,159,61,2,NULL),(2939,89,60,2,NULL),(2940,106,54,2,NULL),(2941,134,72,2,NULL),(2942,101,60,2,NULL),(2943,161,61,2,NULL),(2944,110,54,2,NULL),(2945,146,72,2,NULL),(2946,128,60,2,NULL),(2947,165,61,2,NULL),(2948,113,54,2,NULL),(2949,100,72,2,NULL),(2950,130,60,2,NULL),(2951,201,61,2,NULL),(2952,117,54,2,NULL),(2953,103,72,2,NULL),(2954,207,61,2,NULL),(2955,135,60,2,NULL),(2956,119,54,2,NULL),(2957,106,72,2,NULL),(2958,210,61,2,NULL),(2959,139,60,2,NULL),(2960,124,54,2,NULL),(2961,110,72,2,NULL),(2962,213,61,2,NULL),(2963,142,60,2,NULL),(2964,221,54,2,NULL),(2965,113,72,2,NULL),(2966,175,60,2,NULL),(2967,218,61,2,NULL),(2968,100,58,2,NULL),(2969,117,72,2,NULL),(2970,181,60,2,NULL),(2971,53,61,2,NULL),(2972,103,58,2,NULL),(2973,119,72,2,NULL),(2974,185,60,2,NULL),(2975,106,58,2,NULL),(2976,124,72,2,NULL),(2977,189,60,2,NULL),(2978,110,58,2,NULL),(2979,134,61,2,NULL),(2980,221,72,2,NULL),(2981,194,60,2,NULL),(2982,146,61,2,NULL),(2983,113,58,2,NULL),(2984,48,75,2,NULL),(2985,182,60,2,NULL),(2986,117,58,2,NULL),(2987,59,75,2,NULL),(2988,48,74,2,NULL),(2989,191,60,2,NULL),(2990,119,58,2,NULL),(2991,137,75,2,NULL),(2992,59,74,2,NULL),(2993,195,60,2,NULL),(2994,124,58,2,NULL),(2995,147,75,2,NULL),(2996,137,74,2,NULL),(2997,199,60,2,NULL),(2998,221,58,2,NULL),(2999,159,75,2,NULL),(3000,147,74,2,NULL),(3001,203,60,2,NULL),(3002,100,60,2,NULL),(3003,161,75,2,NULL),(3004,159,74,2,NULL),(3005,103,60,2,NULL),(3006,165,75,2,NULL),(3007,161,74,2,NULL),(3008,106,60,2,NULL),(3009,201,75,2,NULL),(3010,165,74,2,NULL),(3011,110,60,2,NULL),(3012,207,75,2,NULL),(3013,201,74,2,NULL),(3014,113,60,2,NULL),(3015,210,75,2,NULL),(3016,207,74,2,NULL),(3017,117,60,2,NULL),(3018,213,75,2,NULL),(3019,210,74,2,NULL),(3020,119,60,2,NULL),(3021,218,75,2,NULL),(3022,213,74,2,NULL),(3023,124,60,2,NULL),(3024,53,75,2,NULL),(3025,218,74,2,NULL),(3026,221,60,2,NULL),(3027,53,74,2,NULL),(3028,25,75,2,NULL),(3029,28,75,2,NULL),(3030,29,75,2,NULL),(3031,33,75,2,NULL),(3032,34,75,2,NULL),(3033,134,74,2,NULL),(3034,27,75,2,NULL),(3035,40,75,2,NULL),(3036,146,74,2,NULL),(3037,89,75,2,NULL),(3038,101,75,2,NULL),(3039,100,75,2,NULL),(3040,128,75,2,NULL),(3041,130,75,2,NULL),(3042,103,75,2,NULL),(3043,135,75,2,NULL),(3044,106,75,2,NULL),(3045,139,75,2,NULL),(3046,142,75,2,NULL),(3047,175,75,2,NULL),(3048,110,75,2,NULL),(3049,181,75,2,NULL),(3050,113,75,2,NULL),(3051,185,75,2,NULL),(3052,189,75,2,NULL),(3053,194,75,2,NULL),(3054,117,75,2,NULL),(3055,182,75,2,NULL),(3056,191,75,2,NULL),(3057,119,75,2,NULL),(3058,195,75,2,NULL),(3059,124,75,2,NULL),(3060,199,75,2,NULL),(3061,203,75,2,NULL),(3062,134,75,2,NULL),(3063,221,75,2,NULL),(3064,134,8,2,NULL),(3065,146,75,2,NULL),(3066,48,24,2,NULL),(3067,146,8,2,NULL),(3068,59,24,2,NULL),(3069,134,16,2,NULL),(3070,137,24,2,NULL),(3071,146,16,2,NULL),(3072,147,24,2,NULL),(3073,134,19,2,NULL),(3074,159,24,2,NULL),(3075,146,19,2,NULL),(3076,161,24,2,NULL),(3077,134,21,2,NULL),(3078,165,24,2,NULL),(3079,146,21,2,NULL),(3080,201,24,2,NULL),(3081,134,47,2,NULL),(3082,207,24,2,NULL),(3083,146,47,2,NULL),(3084,210,24,2,NULL),(3085,134,50,2,NULL),(3086,213,24,2,NULL),(3087,146,50,2,NULL),(3088,218,24,2,NULL),(3089,134,53,2,NULL),(3090,53,24,2,NULL),(3091,146,53,2,NULL),(3092,134,73,2,NULL),(3093,134,24,2,NULL),(3094,146,73,2,NULL),(3095,146,24,2,NULL),(3096,134,9,2,NULL),(3097,48,31,2,NULL),(3098,146,9,2,NULL),(3099,59,31,2,NULL),(3100,134,13,2,NULL),(3101,137,31,2,NULL),(3102,146,13,2,NULL),(3103,147,31,2,NULL),(3104,134,18,2,NULL),(3105,159,31,2,NULL),(3106,146,18,2,NULL),(3107,161,31,2,NULL),(3108,134,42,2,NULL),(3109,165,31,2,NULL),(3110,146,42,2,NULL),(3111,201,31,2,NULL),(3112,134,43,2,NULL),(3113,207,31,2,NULL),(3114,146,43,2,NULL),(3115,210,31,2,NULL),(3116,134,49,2,NULL),(3117,213,31,2,NULL),(3118,146,49,2,NULL),(3119,218,31,2,NULL),(3120,134,52,2,NULL),(3121,53,31,2,NULL),(3122,146,52,2,NULL),(3123,134,31,2,NULL),(3124,146,31,2,NULL),(3125,134,34,2,NULL),(3126,146,34,2,NULL),(3127,134,36,2,NULL),(3128,48,34,2,NULL),(3129,146,36,2,NULL),(3130,59,34,2,NULL),(3131,134,54,2,NULL),(3132,137,34,2,NULL),(3133,146,54,2,NULL),(3134,147,34,2,NULL),(3135,134,58,2,NULL),(3136,159,34,2,NULL),(3137,146,58,2,NULL),(3138,161,34,2,NULL),(3139,134,60,2,NULL),(3140,165,34,2,NULL),(3141,146,60,2,NULL),(3142,201,34,2,NULL),(3143,48,9,2,NULL),(3144,207,34,2,NULL),(3145,59,9,2,NULL),(3146,210,34,2,NULL),(3147,137,9,2,NULL),(3148,213,34,2,NULL),(3149,147,9,2,NULL),(3150,218,34,2,NULL),(3151,159,9,2,NULL),(3152,53,34,2,NULL),(3153,161,9,2,NULL),(3154,165,9,2,NULL),(3155,201,9,2,NULL),(3156,207,9,2,NULL),(3157,48,36,2,NULL),(3158,210,9,2,NULL),(3159,59,36,2,NULL),(3160,213,9,2,NULL),(3161,137,36,2,NULL),(3162,218,9,2,NULL),(3163,147,36,2,NULL),(3164,53,9,2,NULL),(3165,159,36,2,NULL),(3166,161,36,2,NULL),(3167,165,36,2,NULL),(3168,48,13,2,NULL),(3169,201,36,2,NULL),(3170,59,13,2,NULL),(3171,207,36,2,NULL),(3172,137,13,2,NULL),(3173,210,36,2,NULL),(3174,147,13,2,NULL),(3175,213,36,2,NULL),(3176,159,13,2,NULL),(3177,218,36,2,NULL),(3178,161,13,2,NULL),(3179,53,36,2,NULL),(3180,165,13,2,NULL),(3181,201,13,2,NULL),(3182,207,13,2,NULL),(3183,48,54,2,NULL),(3184,210,13,2,NULL),(3185,59,54,2,NULL),(3186,213,13,2,NULL),(3187,137,54,2,NULL),(3188,218,13,2,NULL),(3189,147,54,2,NULL),(3190,53,13,2,NULL),(3191,159,54,2,NULL),(3192,161,54,2,NULL),(3193,165,54,2,NULL),(3194,23,13,2,NULL),(3195,201,54,2,NULL),(3196,23,19,2,NULL),(3197,207,54,2,NULL),(3198,23,20,2,NULL),(3199,210,54,2,NULL),(3200,23,37,2,NULL),(3201,213,54,2,NULL),(3202,32,13,2,NULL),(3203,218,54,2,NULL),(3204,32,19,2,NULL),(3205,53,54,2,NULL),(3206,32,20,2,NULL),(3207,32,37,2,NULL),(3208,48,18,2,NULL),(3209,48,58,2,NULL),(3210,59,18,2,NULL),(3211,59,58,2,NULL),(3212,137,18,2,NULL),(3213,137,58,2,NULL),(3214,147,18,2,NULL),(3215,147,58,2,NULL),(3216,159,18,2,NULL),(3217,159,58,2,NULL),(3218,161,18,2,NULL),(3219,161,58,2,NULL),(3220,165,18,2,NULL),(3221,165,58,2,NULL),(3222,201,18,2,NULL),(3223,201,58,2,NULL),(3224,207,18,2,NULL),(3225,207,58,2,NULL),(3226,210,18,2,NULL),(3227,210,58,2,NULL),(3228,213,18,2,NULL),(3229,213,58,2,NULL),(3230,218,18,2,NULL),(3231,218,58,2,NULL),(3232,53,18,2,NULL),(3233,53,58,2,NULL),(3234,48,42,2,NULL),(3235,48,60,2,NULL),(3236,59,42,2,NULL),(3237,59,60,2,NULL),(3238,137,42,2,NULL),(3239,137,60,2,NULL),(3240,147,42,2,NULL),(3241,147,60,2,NULL),(3242,159,42,2,NULL),(3243,159,60,2,NULL),(3244,161,42,2,NULL),(3245,161,60,2,NULL),(3246,165,42,2,NULL),(3247,165,60,2,NULL),(3248,201,42,2,NULL),(3249,201,60,2,NULL),(3250,207,42,2,NULL),(3251,207,60,2,NULL),(3252,210,42,2,NULL),(3253,210,60,2,NULL),(3254,213,42,2,NULL),(3255,213,60,2,NULL),(3256,218,42,2,NULL),(3257,218,60,2,NULL),(3258,53,42,2,NULL),(3259,53,60,2,NULL),(3260,48,43,2,NULL),(3261,59,43,2,NULL),(3262,137,43,2,NULL),(3263,147,43,2,NULL),(3264,159,43,2,NULL),(3265,161,43,2,NULL),(3266,165,43,2,NULL),(3267,201,43,2,NULL),(3268,207,43,2,NULL),(3269,210,43,2,NULL),(3270,213,43,2,NULL),(3271,218,43,2,NULL),(3272,53,43,2,NULL),(3273,48,49,2,NULL),(3274,59,49,2,NULL),(3275,137,49,2,NULL),(3276,147,49,2,NULL),(3277,159,49,2,NULL),(3278,161,49,2,NULL),(3279,165,49,2,NULL),(3280,201,49,2,NULL),(3281,207,49,2,NULL),(3282,210,49,2,NULL),(3283,213,49,2,NULL),(3284,218,49,2,NULL),(3285,53,49,2,NULL),(3286,48,52,2,NULL),(3287,59,52,2,NULL),(3288,137,52,2,NULL),(3289,147,52,2,NULL),(3290,159,52,2,NULL),(3291,161,52,2,NULL),(3292,165,52,2,NULL),(3293,201,52,2,NULL),(3294,207,52,2,NULL),(3295,210,52,2,NULL),(3296,213,52,2,NULL),(3297,218,52,2,NULL),(3298,53,52,2,NULL),(3299,9,7,2,NULL),(3300,9,14,2,NULL),(3301,9,15,2,NULL),(3302,9,32,2,NULL),(3303,133,9,2,NULL),(3304,133,16,2,NULL),(3305,133,17,2,NULL),(3306,133,35,2,NULL),(3307,143,9,2,NULL),(3308,143,16,2,NULL),(3309,143,17,2,NULL),(3310,143,35,2,NULL),(3311,152,9,2,NULL),(3312,152,16,2,NULL),(3313,152,17,2,NULL),(3314,152,35,2,NULL),(3315,155,9,2,NULL),(3316,155,16,2,NULL),(3317,155,17,2,NULL),(3318,155,35,2,NULL),(3319,168,9,2,NULL),(3320,168,16,2,NULL),(3321,168,17,2,NULL),(3322,168,35,2,NULL),(3323,178,7,2,NULL),(3324,178,14,2,NULL),(3325,178,15,2,NULL),(3326,178,32,2,NULL),(3327,53,8,2,NULL),(3328,48,16,2,NULL),(3329,59,16,2,NULL),(3330,137,16,2,NULL),(3331,147,16,2,NULL),(3332,159,16,2,NULL),(3333,161,16,2,NULL),(3334,165,16,2,NULL),(3335,201,16,2,NULL),(3336,207,16,2,NULL),(3337,210,16,2,NULL),(3338,213,16,2,NULL),(3339,218,16,2,NULL),(3340,48,19,2,NULL),(3341,59,19,2,NULL),(3342,137,19,2,NULL),(3343,147,19,2,NULL),(3344,159,19,2,NULL),(3345,161,19,2,NULL),(3346,165,19,2,NULL),(3347,201,19,2,NULL),(3348,207,19,2,NULL),(3349,210,19,2,NULL),(3350,213,19,2,NULL),(3351,218,19,2,NULL),(3352,48,21,2,NULL),(3353,59,21,2,NULL),(3354,137,21,2,NULL),(3355,147,21,2,NULL),(3356,159,21,2,NULL),(3357,161,21,2,NULL),(3358,165,21,2,NULL),(3359,201,21,2,NULL),(3360,207,21,2,NULL),(3361,210,21,2,NULL),(3362,213,21,2,NULL),(3363,218,21,2,NULL),(3364,48,47,2,NULL),(3365,59,47,2,NULL),(3366,137,47,2,NULL),(3367,147,47,2,NULL),(3368,159,47,2,NULL),(3369,161,47,2,NULL),(3370,165,47,2,NULL),(3371,201,47,2,NULL),(3372,207,47,2,NULL),(3373,210,47,2,NULL),(3374,213,47,2,NULL),(3375,218,47,2,NULL),(3376,48,50,2,NULL),(3377,59,50,2,NULL),(3378,137,50,2,NULL),(3379,147,50,2,NULL),(3380,159,50,2,NULL),(3381,161,50,2,NULL),(3382,165,50,2,NULL),(3383,201,50,2,NULL),(3384,207,50,2,NULL),(3385,210,50,2,NULL),(3386,213,50,2,NULL),(3387,218,50,2,NULL),(3388,48,53,2,NULL),(3389,59,53,2,NULL),(3390,137,53,2,NULL),(3391,147,53,2,NULL),(3392,159,53,2,NULL),(3393,161,53,2,NULL),(3394,165,53,2,NULL),(3395,201,53,2,NULL),(3396,207,53,2,NULL),(3397,210,53,2,NULL),(3398,213,53,2,NULL),(3399,218,53,2,NULL),(3400,48,73,2,NULL),(3401,59,73,2,NULL),(3402,137,73,2,NULL),(3403,147,73,2,NULL),(3404,159,73,2,NULL),(3405,161,73,2,NULL),(3406,165,73,2,NULL),(3407,201,73,2,NULL),(3408,207,73,2,NULL),(3409,210,73,2,NULL),(3410,213,73,2,NULL),(3411,218,73,2,NULL),(3412,53,16,2,NULL),(3413,53,19,2,NULL),(3414,53,21,2,NULL),(3415,53,47,2,NULL),(3416,53,50,2,NULL),(3417,53,53,2,NULL),(3418,53,73,2,NULL),(3419,226,13,2,NULL),(3420,226,19,2,NULL),(3421,226,20,2,NULL),(3422,226,37,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProviderLinks`
--

LOCK TABLES `ProviderLinks` WRITE;
/*!40000 ALTER TABLE `ProviderLinks` DISABLE KEYS */;
INSERT INTO `ProviderLinks` VALUES (1,23,38,NULL),(2,31,38,NULL),(3,63,38,NULL),(4,34,38,NULL),(5,64,38,NULL);
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

-- Dump completed on 2015-10-12  3:30:46
