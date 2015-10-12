-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_503
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
INSERT INTO `ActionStrings` VALUES (7,'SMS_SEND_ACTIOIN'),(2,'android.intent.action.BOOT_COMPLETED'),(35,'android.intent.action.CHOOSER'),(31,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(21,'android.intent.action.PACKAGE_ADDED'),(36,'android.intent.action.PACKAGE_CHANGED'),(37,'android.intent.action.PACKAGE_REMOVED'),(33,'android.intent.action.SCREEN_OFF'),(34,'android.intent.action.SCREEN_ON'),(8,'android.intent.action.SET_WALLPAPER'),(14,'android.intent.action.VIEW'),(32,'android.intent.action.WALLPAPER_CHANGED'),(10,'android.net.conn.CONNECTIVITY_CHANGE'),(26,'android.provider.Telephony.SMS_RECEIVED'),(27,'android.provider.Telephony.WAP_PUSH_RECEIVED'),(28,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(17,'android.settings.WIRELESS_SETTINGS'),(30,'com.android.contacts.action.FILTER_CONTACTS'),(9,'com.android.launcher.action.INSTALL_SHORTCUT'),(11,'com.android.launcher.action.UNINSTALL_SHORTCUT'),(15,'com.jx.Action_CopyResError'),(25,'com.jx.MainActivity.CostInfo'),(16,'com.jx.MainActivity.ErrorInfo'),(22,'com.jx.MainActivity.InstallConfirmInfo'),(20,'com.jx.MainActivity.OpenLWP'),(24,'com.jx.MainActivity.RepeateInstall'),(23,'com.jx.MainActivity.SaveID'),(18,'com.jx.action.ExitBootReceiver'),(13,'com.jx.ad.ADService.ConfirmInstallInfo'),(5,'com.jx.ad.ADService.Init'),(29,'com.jx.ad.ADService.InitHasUpdate'),(12,'com.jx.ad.ADService.InstallRes'),(3,'com.jx.ad.ADService.Run'),(4,'com.jx.ad.ADService.RunCancel'),(19,'com.jx.ad.BootSmsReceiverService.Exit'),(6,'com.jx.ad.BootSmsReceiverService.Start');
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
INSERT INTO `Applications` VALUES (1,'com.km.installer',1),(2,'com.jx.theme.n1160524731',1),(3,'com.jx.theme.n1803371594',1),(4,'com.km.launcher',1),(5,'com.jx.theme.n90208279',1),(6,'com.jx.theme.n1094357875',1),(7,'com.jx.theme.n1533869057',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.km.installer.InstallerActivity'),(2,1,'com.km.charge.MainActivity'),(3,1,'com.km.charge.CycleService'),(4,1,'com.km.charge.BootReceiver'),(5,2,'com.jx.MainActivity'),(6,2,'com.jx.SettingActivity'),(7,2,'com.jx.WelcomeActivity'),(8,2,'com.jx.ad.AndroidThemeService'),(9,2,'com.jx.ad.BootSmsReceiverService'),(10,2,'com.jx.ad.BootReceiver'),(11,3,'com.jx.MainActivity'),(12,3,'com.jx.SettingActivity'),(13,3,'com.jx.WelcomeActivity'),(14,3,'com.jx.ad.AndroidThemeService'),(15,3,'com.jx.ad.BootSmsReceiverService'),(16,3,'com.jx.ad.BootReceiver'),(17,5,'com.jx.MainActivity'),(18,5,'com.jx.SettingActivity'),(19,1,'com.km.tool.ApnManager'),(20,5,'com.jx.WelcomeActivity'),(21,4,'com.km.launcher.Launcher'),(22,1,'com.km.charge.SendMessage$SendMessageReceiver'),(23,6,'com.jx.MainActivity'),(24,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(25,5,'com.jx.ad.AndroidThemeService'),(26,6,'com.jx.SettingActivity'),(27,4,'com.km.launcher.WallpaperChooser'),(28,7,'com.jx.MainActivity'),(29,6,'com.jx.WelcomeActivity'),(30,5,'com.jx.ad.BootSmsReceiverService'),(31,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(32,4,'com.km.theme.ThemeListActivity'),(33,6,'com.jx.ad.AndroidThemeService'),(34,7,'com.jx.SettingActivity'),(35,5,'com.jx.ad.BootReceiver'),(36,4,'com.km.charge.MainActivity'),(37,7,'com.jx.WelcomeActivity'),(38,4,'com.km.ad.AdService'),(39,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(40,4,'com.km.charge.CycleService'),(41,6,'com.jx.ad.BootSmsReceiverService'),(42,7,'com.jx.ad.AndroidThemeService'),(43,4,'com.km.launcher.InstallShortcutReceiver'),(44,6,'com.jx.ad.BootReceiver'),(45,1,'com.km.charge.HttpBox$ConnectivityReceiver'),(46,7,'com.jx.ad.BootSmsReceiverService'),(47,4,'com.km.launcher.UninstallShortcutReceiver'),(48,7,'com.jx.ad.BootReceiver'),(49,4,'com.km.charge.BootReceiver'),(50,1,'com.km.tool.Util'),(51,4,'com.km.launcher.LauncherProvider'),(52,2,'com.jx.tool.ApnManager'),(53,2,'com.jx.MainActivity$1'),(54,2,'com.jx.MainActivity$ControlReceiver$6$1'),(55,2,'com.jx.ad.AndroidThemeService$5'),(56,2,'com.jx.ad.AndroidThemeService$4'),(57,3,'com.jx.ad.AndroidThemeService$2'),(58,2,'com.jx.MainActivity$ControlReceiver$1'),(59,3,'com.jx.ad.AndroidThemeService$3'),(60,2,'com.jx.ad.AndroidThemeService$6'),(61,3,'com.jx.MainActivity$ControlReceiver$1'),(62,2,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(63,3,'com.jx.MainActivity$ControlReceiver'),(64,3,'com.jx.ad.AndroidThemeService$SmsReceiver'),(65,3,'com.jx.MainActivity$4'),(66,2,'com.jx.ad.AndroidThemeService$3'),(67,3,'com.jx.ad.AndroidThemeService$5'),(68,2,'com.jx.ad.AndroidThemeService$8'),(69,3,'com.jx.ad.AndroidThemeService$6'),(70,2,'com.jx.ad.AndroidThemeService$MMSReceiver'),(71,2,'com.jx.MainActivity$4'),(72,3,'com.jx.MainActivity$ControlReceiver$6$1'),(73,3,'com.jx.SettingActivity$6'),(74,2,'com.jx.SettingActivity$1'),(75,6,'com.jx.ad.AndroidThemeService$5'),(76,3,'com.jx.MainActivity$1'),(77,5,'com.jx.tool.ApnManager'),(78,2,'com.jx.ad.AndroidThemeService$2'),(79,7,'com.jx.MainActivity$ControlReceiver'),(80,6,'com.jx.tool.ApnManager'),(81,5,'com.jx.ad.AndroidThemeService$5'),(82,7,'com.jx.ad.AndroidThemeService$4'),(83,6,'com.jx.SettingActivity$1'),(84,5,'com.jx.ad.AndroidThemeService$8'),(85,6,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(86,2,'com.jx.ad.AndroidThemeService$7'),(87,2,'com.jx.ad.ServiceControlReciver'),(88,5,'com.jx.ad.AndroidThemeService$2'),(89,7,'com.jx.tool.ApnManager'),(90,4,'com.km.tool.ApnManager'),(91,6,'com.jx.ad.AndroidThemeService$2'),(92,7,'com.jx.ad.AndroidThemeService$2'),(93,5,'com.jx.ad.ServiceControlReciver'),(94,5,'com.jx.MainActivity$ControlReceiver'),(95,7,'com.jx.ad.AndroidThemeService$3'),(96,5,'com.jx.ad.AndroidThemeService$6'),(97,4,'com.km.charge.HttpBox$ConnectivityReceiver'),(98,4,'com.km.launcher.Search'),(99,7,'com.jx.MainActivity$ControlReceiver$1'),(100,6,'com.jx.ad.AndroidThemeService$6'),(101,3,'com.jx.ad.ServiceControlReciver'),(102,5,'com.jx.ad.AndroidThemeService$3'),(103,6,'com.jx.MainActivity$ControlReceiver$6$1'),(104,5,'com.jx.SettingActivity$6'),(105,7,'com.jx.ad.AndroidThemeService$6'),(106,6,'com.jx.ad.AndroidThemeService$8'),(107,4,'com.km.launcher.Launcher$WallpaperIntentReceiver'),(108,4,'com.km.tool.Util'),(109,5,'com.jx.SettingActivity$1'),(110,7,'com.jx.MainActivity$1'),(111,6,'com.jx.ad.ServiceControlReciver'),(112,6,'com.jx.ad.AndroidThemeService$4'),(113,5,'com.jx.ad.AndroidThemeService$7'),(114,6,'com.jx.MainActivity$1'),(115,4,'com.km.launcher.LauncherModel'),(116,2,'com.jx.ad.AndroidThemeService$SmsReceiver'),(117,3,'com.jx.ad.AndroidThemeService$8'),(118,3,'com.jx.ad.AndroidThemeService$7'),(119,4,'com.km.theme.ThemeManager'),(120,5,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(121,3,'com.jx.ad.AndroidThemeService$4'),(122,4,'com.km.charge.SendMessage$SendMessageReceiver'),(123,2,'com.jx.SettingActivity$6'),(124,2,'com.jx.MainActivity$ControlReceiver'),(125,5,'com.jx.MainActivity$ControlReceiver$6$1'),(126,7,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(127,2,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(128,5,'com.adwo.adsdk.M'),(129,3,'com.jx.tool.ApnManager'),(130,2,'com.jx.tool.Utility'),(131,6,'com.jx.MainActivity$ControlReceiver'),(132,5,'com.jx.MainActivity$1'),(133,6,'com.jx.ad.AndroidThemeService$MMSReceiver'),(134,6,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(135,6,'com.jx.ad.AndroidThemeService$7'),(136,6,'com.jx.MainActivity$4'),(137,7,'com.jx.ad.AndroidThemeService$8'),(138,3,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(139,4,'com.km.charge.HoldMessage'),(140,7,'com.adwo.adsdk.M'),(141,3,'com.jx.ad.AndroidThemeService$MMSReceiver'),(142,7,'com.jx.SettingActivity$6'),(143,4,'com.km.launcher.MyAnalogClock$1'),(144,3,'com.jx.SettingActivity$1'),(145,3,'com.jx.tool.Utility'),(146,6,'com.adwo.adsdk.M'),(147,4,'com.km.tool.Http$ConnectivityReceiver'),(148,6,'com.jx.tool.Utility'),(149,7,'com.jx.tool.Utility'),(150,4,'com.km.launcher.Launcher$ApplicationsIntentReceiver'),(151,7,'com.jx.ad.AndroidThemeService$7'),(152,4,'com.km.ad.AdService$1'),(153,5,'com.jx.MainActivity$ControlReceiver$1'),(154,3,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(155,5,'com.jx.ad.AndroidThemeService$4'),(156,7,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(157,6,'com.jx.MainActivity$ControlReceiver$1'),(158,7,'com.jx.MainActivity$ControlReceiver$6$1'),(159,6,'com.jx.SettingActivity$6'),(160,5,'com.jx.ad.AndroidThemeService$MMSReceiver'),(161,7,'com.jx.SettingActivity$1'),(162,6,'com.jx.ad.AndroidThemeService$3'),(163,7,'com.jx.ad.AndroidThemeService$SmsReceiver'),(164,5,'com.jx.tool.Utility'),(165,6,'com.jx.ad.AndroidThemeService$SmsReceiver'),(166,7,'com.jx.ad.ServiceControlReciver'),(167,7,'com.jx.MainActivity$4'),(168,7,'com.jx.ad.AndroidThemeService$5'),(169,5,'com.jx.ad.AndroidThemeService$SmsReceiver'),(170,7,'com.jx.ad.AndroidThemeService$MMSReceiver'),(171,5,'com.jx.MainActivity$4'),(172,5,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver');
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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,8,'respid'),(2,23,'url'),(3,38,'url'),(4,23,'shouldShowBottomBar'),(5,23,'shouldMakeOverlayTransparent'),(6,23,'shouldResizeOverlay'),(7,46,'android.intent.extra.shortcut.NAME'),(8,20,'launcher.add_occupied_cells'),(9,42,'android.intent.extra.shortcut.ICON_RESOURCE'),(10,38,'overlayTransition'),(11,20,'android.intent.extra.shortcut.ICON_RESOURCE'),(12,20,'data'),(13,20,'launcher.add_screen'),(14,46,'duplicate'),(15,42,'android.intent.extra.shortcut.NAME'),(16,20,'launcher.current_screen'),(17,20,'launcher.add_countX'),(18,24,'respid'),(19,30,'overlayTitle'),(20,38,'overlayTitle'),(21,38,'shouldResizeOverlay'),(22,38,'shouldMakeOverlayTransparent'),(23,42,'duplicate'),(24,14,'resownerid'),(25,20,'launcher.add_countY'),(26,42,'android.intent.extra.shortcut.INTENT'),(27,14,'respid'),(28,8,'resownerid'),(29,46,'android.intent.extra.shortcut.INTENT'),(30,24,'resownerid'),(31,23,'shouldEnableBottomBar'),(32,42,'android.intent.extra.shortcut.ICON'),(33,20,'android.intent.extra.shortcut.ICON'),(34,23,'transitionTime'),(35,23,'overlayTransition'),(36,30,'shouldResizeOverlay'),(37,20,'launcher.add_cellY'),(38,20,'launcher.add_spanY'),(39,20,'android.intent.extra.shortcut.NAME'),(40,20,'launcher.rename_folder'),(41,20,'android.intent.extra.livefolder.ICON'),(42,30,'shouldShowTitlebar'),(43,20,'android.intent.extra.livefolder.BASE_INTENT'),(44,31,'launcher.all_apps_folder'),(45,35,'launcher.all_apps_folder'),(46,20,'launcher.all_apps_folder'),(47,23,'shouldShowTitlebar'),(48,20,'android.intent.extra.shortcut.INTENT'),(49,20,'launcher.add_cellX'),(50,30,'shouldEnableBottomBar'),(51,32,'respid'),(52,31,'launcher.user_folder'),(53,35,'launcher.user_folder'),(54,41,'resownerid'),(55,20,'launcher.user_folder'),(56,30,'shouldMakeOverlayTransparent'),(57,38,'shouldEnableBottomBar'),(58,38,'shouldShowBottomBar'),(59,20,'android.intent.extra.livefolder.NAME'),(60,20,'launcher.rename_folder_id'),(61,20,'launcher.add_spanX'),(62,30,'transitionTime'),(63,30,'shouldShowBottomBar'),(64,30,'overlayTransition'),(65,41,'respid'),(66,23,'overlayTitle'),(67,38,'transitionTime'),(68,38,'shouldShowTitlebar'),(69,30,'url'),(70,32,'resownerid');
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
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'s',0,NULL,NULL),(4,4,'r',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'s',1,NULL,NULL),(9,9,'s',1,NULL,NULL),(10,10,'r',1,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'s',1,NULL,NULL),(15,15,'s',1,NULL,NULL),(16,16,'r',1,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,20,'a',0,NULL,NULL),(20,21,'a',1,NULL,NULL),(21,22,'r',1,NULL,NULL),(22,23,'a',1,NULL,NULL),(23,24,'a',0,NULL,NULL),(24,25,'s',1,NULL,NULL),(25,27,'a',1,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,28,'a',1,NULL,NULL),(28,29,'a',0,NULL,NULL),(29,30,'s',1,NULL,NULL),(30,31,'a',0,NULL,NULL),(31,32,'a',0,NULL,NULL),(32,33,'s',1,NULL,NULL),(33,34,'a',0,NULL,NULL),(34,35,'r',1,NULL,NULL),(35,36,'a',0,NULL,NULL),(36,37,'a',0,NULL,NULL),(37,38,'s',0,NULL,NULL),(38,39,'a',0,NULL,NULL),(39,40,'s',0,NULL,NULL),(40,41,'s',1,NULL,NULL),(41,42,'s',1,NULL,NULL),(42,43,'r',1,28,NULL),(43,44,'r',1,NULL,NULL),(44,45,'r',1,NULL,NULL),(45,46,'s',1,NULL,NULL),(46,47,'r',1,29,NULL),(47,48,'r',1,NULL,NULL),(48,49,'r',1,NULL,NULL),(49,51,'p',0,NULL,NULL),(50,62,'r',1,NULL,NULL),(51,63,'r',1,NULL,NULL),(52,64,'r',1,NULL,NULL),(53,70,'r',1,NULL,NULL),(54,79,'r',1,NULL,NULL),(55,85,'r',1,NULL,NULL),(56,87,'r',1,NULL,NULL),(57,93,'r',1,NULL,NULL),(58,94,'r',1,NULL,NULL),(59,97,'r',1,NULL,NULL),(60,101,'r',1,NULL,NULL),(61,107,'r',1,NULL,NULL),(62,111,'r',1,NULL,NULL),(63,116,'r',1,NULL,NULL),(64,120,'r',1,NULL,NULL),(65,122,'r',1,NULL,NULL),(66,124,'r',1,NULL,NULL),(67,126,'r',1,NULL,NULL),(68,127,'r',1,NULL,NULL),(69,128,'r',1,NULL,NULL),(70,131,'r',1,NULL,NULL),(71,133,'r',1,NULL,NULL),(72,134,'r',1,NULL,NULL),(73,43,'r',1,NULL,NULL),(74,47,'r',1,NULL,NULL),(75,138,'r',1,NULL,NULL),(76,139,'r',1,NULL,NULL),(77,140,'r',1,NULL,NULL),(78,141,'r',1,NULL,NULL),(79,143,'r',1,NULL,NULL),(80,146,'r',1,NULL,NULL),(81,147,'r',1,NULL,NULL),(82,150,'r',1,NULL,NULL),(83,154,'r',1,NULL,NULL),(84,156,'r',1,NULL,NULL),(85,160,'r',1,NULL,NULL),(86,163,'r',1,NULL,NULL),(87,165,'r',1,NULL,NULL),(88,166,'r',1,NULL,NULL),(89,169,'r',1,NULL,NULL),(90,170,'r',1,NULL,NULL),(91,172,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=347 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,2),(3,3,2),(4,4,2),(5,5,2),(6,6,2),(7,7,2),(8,8,1),(9,8,4),(10,9,2),(11,10,7),(12,10,5),(13,10,6),(14,11,8),(15,12,6),(16,12,5),(17,12,7),(18,13,7),(19,13,6),(20,13,5),(21,14,10),(22,15,8),(23,16,8),(24,17,14),(25,18,5),(26,18,6),(27,18,7),(28,19,14),(29,20,5),(30,21,11),(31,22,8),(32,23,11),(33,23,12),(34,23,13),(35,24,8),(36,25,8),(37,26,11),(38,26,12),(39,26,13),(40,27,8),(41,28,5),(42,29,14),(43,30,8),(44,31,14),(45,32,14),(46,33,7),(47,33,6),(48,33,5),(49,34,12),(50,34,11),(51,34,13),(52,35,8),(53,36,13),(54,36,11),(55,36,12),(56,37,8),(57,38,14),(58,39,19),(59,39,18),(60,40,5),(61,40,6),(62,40,7),(63,41,32),(64,43,27),(65,42,13),(66,42,12),(67,42,11),(68,44,24),(69,45,8),(70,46,24),(71,47,11),(72,47,13),(73,47,12),(74,48,32),(75,49,8),(76,50,24),(77,51,41),(78,52,26),(79,52,22),(80,52,28),(81,53,8),(82,54,24),(83,56,36),(84,55,32),(85,57,8),(86,58,17),(87,59,28),(88,60,8),(89,61,24),(90,63,17),(91,62,41),(92,64,20),(93,65,8),(94,66,24),(95,67,41),(96,68,31),(97,68,35),(98,69,5),(99,70,32),(100,71,41),(101,72,35),(102,72,20),(103,73,6),(104,73,7),(105,74,26),(106,75,8),(107,76,41),(108,77,24),(109,78,8),(110,81,11),(111,79,41),(112,80,32),(113,82,6),(114,83,24),(115,84,35),(116,84,20),(117,86,32),(118,85,33),(119,85,27),(120,85,36),(121,87,33),(122,88,12),(123,89,5),(124,89,7),(125,89,6),(126,90,24),(127,91,28),(128,91,26),(129,91,22),(130,92,35),(131,92,31),(132,93,19),(133,93,18),(134,93,17),(135,94,11),(136,94,12),(137,94,13),(138,95,41),(139,96,32),(140,98,17),(141,98,18),(142,98,19),(143,97,20),(144,97,48),(145,99,36),(146,99,27),(147,99,33),(148,100,35),(149,100,31),(150,101,24),(151,102,32),(152,103,8),(153,104,35),(154,104,31),(155,105,27),(156,106,49),(157,108,11),(158,107,24),(159,109,41),(160,111,20),(161,110,22),(162,110,26),(163,110,28),(164,112,5),(165,113,14),(166,115,24),(167,114,31),(168,114,35),(169,116,28),(170,116,26),(171,116,22),(172,117,27),(173,117,36),(174,117,33),(175,118,8),(176,119,31),(177,119,35),(178,120,31),(179,120,35),(180,121,14),(181,122,24),(182,123,20),(183,123,31),(184,124,8),(185,125,14),(186,126,24),(187,127,5),(188,127,7),(189,127,6),(190,128,41),(191,130,14),(192,129,42),(193,129,20),(194,131,17),(195,131,19),(196,131,18),(197,132,14),(198,133,42),(199,134,41),(200,135,20),(201,136,8),(202,137,14),(203,138,18),(204,139,27),(205,139,33),(206,139,36),(207,140,14),(208,141,8),(209,142,11),(210,143,24),(211,144,7),(212,144,8),(213,144,6),(214,145,14),(215,146,14),(216,147,18),(217,147,19),(218,147,17),(219,148,14),(220,149,22),(221,150,42),(222,151,32),(223,152,16),(224,153,14),(225,154,20),(226,154,35),(227,155,22),(228,156,18),(229,156,17),(230,156,19),(231,157,31),(232,157,20),(233,158,14),(234,159,46),(235,160,19),(236,160,17),(237,160,18),(238,161,14),(239,163,46),(240,162,32),(241,164,14),(242,165,14),(243,166,22),(244,166,26),(245,166,28),(246,167,41),(247,168,22),(248,169,43),(249,170,27),(250,170,36),(251,170,33),(252,171,11),(253,171,12),(254,171,13),(255,172,32),(256,173,36),(257,173,33),(258,174,12),(259,174,13),(260,174,14),(261,175,41),(262,176,14),(263,177,32),(264,177,28),(265,177,26),(266,178,33),(267,178,36),(268,178,41),(269,179,12),(270,179,13),(271,180,32),(272,181,35),(273,181,31),(274,183,32),(275,182,41),(276,184,14),(277,185,31),(278,185,35),(279,186,17),(280,186,18),(281,186,19),(282,187,41),(283,188,32),(284,189,17),(285,191,27),(286,190,20),(287,192,32),(288,193,24),(289,194,46),(290,195,32),(291,196,20),(292,198,24),(293,197,41),(294,199,22),(295,199,26),(296,199,28),(297,200,24),(298,201,33),(299,201,36),(300,201,27),(301,202,22),(302,202,26),(303,202,28),(304,203,36),(305,203,33),(306,203,27),(307,204,32),(308,205,34),(309,206,41),(310,207,18),(311,207,19),(312,207,24),(313,208,32),(314,209,24),(315,210,32),(316,211,33),(317,211,27),(318,211,36),(319,212,17),(320,213,22),(321,213,26),(322,213,28),(323,214,41),(324,215,24),(325,216,41),(326,217,41),(327,218,19),(328,219,41),(329,220,32),(330,221,32),(331,222,41),(332,223,17),(333,223,19),(334,223,18),(335,224,22),(336,225,41),(337,226,24),(338,227,28),(339,227,26),(340,228,27),(341,229,32),(342,230,24),(343,231,41),(344,232,32),(345,233,24),(346,234,47);
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
) ENGINE=InnoDB AUTO_INCREMENT=235 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,19,'<com.km.tool.ApnManager: int CreateWapApn()>',27,'p',NULL),(2,19,'<com.km.tool.ApnManager: void delete(int)>',8,'p',NULL),(3,19,'<com.km.tool.ApnManager: int CreateGPRSApn()>',27,'p',NULL),(4,19,'<com.km.tool.ApnManager: int getApnId(java.lang.String)>',6,'p',NULL),(5,19,'<com.km.tool.ApnManager: int CreateGPRSApn()>',30,'p',0),(6,19,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',9,'p',NULL),(7,19,'<com.km.tool.ApnManager: int CreateWapApn()>',30,'p',0),(8,50,'<com.km.tool.Util: void startServiceWithSingleMode(android.content.Context,java.lang.Class)>',7,'s',NULL),(9,19,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',19,'p',NULL),(10,5,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(11,52,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(12,53,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(13,54,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(14,10,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(15,55,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(16,56,'<com.jx.ad.AndroidThemeService$4: void run()>',120,'r',NULL),(17,57,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(18,58,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(19,59,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(20,5,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(21,11,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(22,60,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(23,61,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(24,60,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(25,52,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(26,65,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(27,66,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(28,5,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(29,67,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(30,68,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(31,69,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(32,14,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(33,71,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(34,72,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(35,68,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(36,73,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(37,56,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(38,14,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(39,20,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(40,74,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(41,75,'<com.jx.ad.AndroidThemeService$5: void run()>',116,'r',NULL),(42,76,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(43,28,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(44,77,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(45,78,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(46,77,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(47,11,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(48,80,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(49,8,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(50,81,'<com.jx.ad.AndroidThemeService$5: void run()>',116,'r',NULL),(51,82,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(52,83,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(53,55,'<com.jx.ad.AndroidThemeService$5: void run()>',113,'r',NULL),(54,84,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(55,33,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(56,37,'<com.jx.WelcomeActivity: void onResume()>',67,'a',NULL),(57,56,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(58,17,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(59,29,'<com.jx.WelcomeActivity: void onResume()>',67,'a',NULL),(60,86,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(61,25,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(62,82,'<com.jx.ad.AndroidThemeService$4: void run()>',125,'r',NULL),(63,17,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(64,21,'<com.km.launcher.Launcher: void registerContentObservers()>',4,'p',NULL),(65,60,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(66,88,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(67,89,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(68,90,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',9,'p',NULL),(69,5,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(70,91,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(71,92,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(72,21,'<com.km.launcher.Launcher: boolean onKeyDown(int,android.view.KeyEvent)>',27,'a',NULL),(73,7,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(74,26,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(75,52,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(76,95,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(77,96,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(78,52,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(79,89,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(80,80,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(81,11,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(82,6,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(83,25,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(84,98,'<com.km.launcher.Search: void sendLaunchIntent(java.lang.String,android.net.Uri,java.lang.String,android.os.Bundle,int,java.lang.String,android.server.search.SearchableInfo)>',20,'a',NULL),(85,99,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(86,100,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(87,34,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(88,12,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(89,5,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(90,102,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(91,103,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(92,90,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',19,'p',NULL),(93,104,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(94,11,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(95,105,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(96,106,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(97,108,'<com.km.tool.Util: void startServiceWithSingleMode(android.content.Context,java.lang.Class)>',7,'s',NULL),(98,109,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(99,110,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(100,90,'<com.km.tool.ApnManager: int getApnId(java.lang.String)>',6,'p',NULL),(101,96,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(102,112,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(103,78,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(104,90,'<com.km.tool.ApnManager: int CreateGPRSApn()>',30,'p',0),(105,28,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(106,51,'<com.km.launcher.LauncherProvider: void sendNotify(android.net.Uri)>',9,'p',0),(107,113,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(108,11,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(109,92,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(110,114,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(111,115,'<com.km.launcher.LauncherModel: com.km.launcher.FolderInfo getFolderById(android.content.Context,long)>',12,'p',NULL),(112,5,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(113,117,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(114,90,'<com.km.tool.ApnManager: void delete(int)>',8,'p',NULL),(115,96,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(116,23,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(117,28,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(118,78,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(119,90,'<com.km.tool.ApnManager: int CreateWapApn()>',30,'p',0),(120,90,'<com.km.tool.ApnManager: int CreateGPRSApn()>',27,'p',NULL),(121,118,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(122,96,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(123,119,'<com.km.theme.ThemeManager: void setup()>',32,'a',NULL),(124,66,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(125,121,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(126,88,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(127,123,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(128,42,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(129,115,'<com.km.launcher.LauncherModel: void addItemToDatabase(android.content.Context,com.km.launcher.ItemInfo,long,int,int,int,boolean)>',17,'p',NULL),(130,121,'<com.jx.ad.AndroidThemeService$4: void run()>',120,'r',NULL),(131,125,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(132,117,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(133,43,'<com.km.launcher.InstallShortcutReceiver: boolean findEmptyCell(android.content.Context,int[],int)>',19,'p',NULL),(134,105,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(135,21,'<com.km.launcher.Launcher: void startWallpaper()>',5,'a',NULL),(136,60,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(137,129,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(138,18,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(139,28,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(140,129,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(141,8,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(142,11,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(143,88,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(144,130,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(145,129,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(146,69,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(147,17,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(148,67,'<com.jx.ad.AndroidThemeService$5: void run()>',113,'r',NULL),(149,23,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(150,115,'<com.km.launcher.LauncherModel: boolean shortcutExists(android.content.Context,java.lang.String,android.content.Intent)>',12,'p',NULL),(151,112,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(152,16,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(153,57,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(154,21,'<com.km.launcher.Launcher: void startActivitySafely(android.content.Intent)>',3,'a',0),(155,23,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(156,132,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(157,115,'<com.km.launcher.LauncherModel: void updateItemInDatabase(android.content.Context,com.km.launcher.ItemInfo)>',8,'p',NULL),(158,69,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(159,47,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',25,'p',NULL),(160,17,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(161,69,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(162,135,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(163,47,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'p',NULL),(164,129,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(165,59,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(166,136,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(167,137,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(168,23,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(169,44,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(170,142,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(171,144,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(172,112,'<com.jx.ad.AndroidThemeService$4: void run()>',125,'r',NULL),(173,37,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(174,145,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(175,95,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(176,57,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(177,148,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(178,149,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(179,13,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(180,80,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(181,90,'<com.km.tool.ApnManager: int CreateWapApn()>',27,'p',NULL),(182,151,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(183,100,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(184,121,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(185,152,'<com.km.ad.AdService$1: void run()>',11,'s',NULL),(186,153,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(187,89,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(188,100,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(189,17,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(190,115,'<com.km.launcher.LauncherModel: com.km.launcher.Widget getPhotoFrameInfo(android.content.Context,int,int,int)>',15,'p',NULL),(191,28,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(192,80,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(193,155,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(194,47,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'p',NULL),(195,91,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(196,21,'<com.km.launcher.Launcher: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(197,42,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(198,155,'<com.jx.ad.AndroidThemeService$4: void run()>',125,'r',NULL),(199,157,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(200,84,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(201,158,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(202,159,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(203,161,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(204,162,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(205,35,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(206,105,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(207,164,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(208,91,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(209,81,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(210,75,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(211,167,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(212,17,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(213,23,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(214,168,'<com.jx.ad.AndroidThemeService$5: void run()>',116,'r',NULL),(215,102,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(216,89,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(217,137,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(218,20,'<com.jx.WelcomeActivity: void onResume()>',67,'a',NULL),(219,82,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(220,162,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(221,100,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(222,105,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(223,171,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(224,23,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(225,92,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(226,155,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(227,29,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(228,28,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(229,106,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(230,77,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(231,168,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(232,33,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(233,77,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(234,48,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL);
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
INSERT INTO `IActions` VALUES (1,2,12),(2,3,3),(3,4,12),(4,5,4),(5,6,13),(6,7,5),(7,8,13),(8,9,5),(9,10,4),(10,11,3),(11,12,14),(12,13,15),(13,14,6),(14,15,16),(15,16,16),(16,17,16),(17,18,17),(18,19,16),(19,20,18),(20,21,19),(21,22,16),(22,23,17),(23,24,25),(24,25,14),(25,26,19),(26,27,19),(27,28,16),(28,29,22),(29,30,25),(30,31,23),(31,32,14),(32,33,15),(33,34,16),(34,35,14),(35,37,25),(36,38,28),(37,39,14),(38,40,16),(39,41,14),(40,42,18),(41,43,16),(42,44,12),(43,45,25),(44,46,16),(45,48,3),(46,47,29),(47,49,14),(48,50,16),(49,51,22),(50,52,3),(51,54,25),(52,55,29),(53,57,13),(54,60,12),(55,62,16),(56,64,25),(57,66,5),(58,68,18),(59,69,16),(60,70,4),(61,71,16),(62,73,16),(63,74,4),(64,76,16),(65,77,16),(66,78,13),(67,79,28),(68,80,30),(69,81,1),(70,82,5),(71,83,31),(72,84,19),(73,85,25),(74,87,1),(75,88,23),(76,91,17),(77,90,14),(78,89,16),(79,92,14),(80,93,1),(81,94,1),(82,95,13),(83,96,19),(84,97,15),(85,98,3),(86,99,14),(87,100,13),(88,101,16),(89,102,5),(90,103,22),(91,104,3),(92,105,4),(93,107,14),(94,108,5),(95,109,14),(96,110,12),(97,111,4),(98,112,16),(99,114,16),(100,115,12),(101,116,19),(102,118,16),(103,119,18),(104,117,16),(105,120,14),(106,122,22),(107,123,16),(108,124,12),(109,125,13),(110,126,16),(111,127,3),(112,128,3),(113,130,16),(114,129,16),(115,131,5),(116,132,13),(117,134,4),(118,135,16),(119,136,29),(120,137,12),(121,138,3),(122,139,16),(123,140,14),(124,141,23),(125,142,16),(126,143,4),(127,144,13),(128,145,15),(129,146,16),(130,147,16),(131,148,12),(132,149,16),(133,150,35),(134,153,1),(135,152,5),(136,151,35),(137,154,12),(138,155,35),(139,156,23),(140,157,5),(141,158,12),(142,160,35),(143,161,16),(144,162,35),(145,163,4),(146,165,13),(147,166,35),(148,167,16),(149,168,13),(150,169,35),(151,170,3),(152,171,3),(153,172,35),(154,173,16),(155,174,5),(156,176,19),(157,175,5),(158,177,4),(159,179,4),(160,178,29),(161,180,6),(162,181,12),(163,182,3),(164,183,16),(165,184,18),(166,185,14),(167,186,4),(168,187,16),(169,188,13),(170,189,3),(171,190,16),(172,191,16),(173,192,5),(174,193,12),(175,194,12),(176,195,19),(177,196,16),(178,197,14),(179,198,13),(180,201,3),(181,200,6),(182,202,14),(183,203,14),(184,204,4),(185,205,16),(186,206,28),(187,208,4),(188,209,16),(189,210,13),(190,211,16),(191,214,5),(192,215,28),(193,216,5),(194,217,16),(195,218,16),(196,221,17),(197,222,25),(198,223,19),(199,225,29),(200,226,16),(201,228,16),(202,229,25),(203,230,17),(204,231,16),(205,232,15),(206,233,14),(207,234,14),(208,236,6),(209,235,16),(210,237,25),(211,239,16),(212,240,16),(213,241,16),(214,242,14),(215,244,13),(216,245,16),(217,246,16),(218,247,3),(219,248,5),(220,249,22),(221,251,4),(222,253,12),(223,256,19),(224,258,16),(225,259,16),(226,260,14),(227,262,16),(228,264,28),(229,266,16),(230,267,16),(231,268,23),(232,269,6);
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
INSERT INTO `ICategories` VALUES (1,38,2),(2,79,2),(3,81,1),(4,87,1),(5,94,1),(6,93,1),(7,153,1),(8,206,2),(9,215,2),(10,264,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/km/charge/CycleService'),(2,4,'com/jx/ad/AndroidThemeService'),(3,8,'com/jx/ad/AndroidThemeService'),(4,9,'com/jx/ad/AndroidThemeService'),(5,10,'com/jx/ad/AndroidThemeService'),(6,11,'com/jx/ad/AndroidThemeService'),(7,14,'com/jx/ad/BootSmsReceiverService'),(8,36,'com.android.packageinstaller.PackageInstallerActivity'),(9,48,'com/jx/ad/AndroidThemeService'),(10,53,'.Launcher'),(11,56,'(.*).Launcher'),(12,58,'com/jx/WelcomeActivity'),(13,57,'com/jx/ad/AndroidThemeService'),(14,59,'(.*).Launcher'),(15,61,'.Launcher'),(16,63,'.Launcher'),(17,60,'com/jx/ad/AndroidThemeService'),(18,65,'(.*).Launcher'),(19,66,'com/jx/ad/AndroidThemeService'),(20,67,'(.*).Launcher'),(21,72,'.Launcher'),(22,70,'com/jx/ad/AndroidThemeService'),(23,75,'com/jx/WelcomeActivity'),(24,81,'com.nd.android.launcher.Launcher'),(25,86,'com/jx/WelcomeActivity'),(26,87,'com.nd.android.launcher.Launcher'),(27,94,'com.nd.android.launcher.Launcher'),(28,93,'com.nd.android.launcher.Launcher'),(29,106,'com/km/charge/CycleService'),(30,113,'com.android.packageinstaller.PackageInstallerActivity'),(31,121,'com/jx/WelcomeActivity'),(32,133,'com/km/charge/MainActivity'),(33,132,'com/jx/ad/AndroidThemeService'),(34,138,'com/jx/ad/AndroidThemeService'),(35,148,'com/jx/ad/AndroidThemeService'),(36,153,'com.nd.android.launcher.Launcher'),(37,159,'com/jx/WelcomeActivity'),(38,157,'com/jx/ad/AndroidThemeService'),(39,158,'com/jx/ad/AndroidThemeService'),(40,164,'com.android.packageinstaller.PackageInstallerActivity'),(41,163,'com/jx/ad/AndroidThemeService'),(42,165,'com/jx/ad/AndroidThemeService'),(43,174,'com/jx/ad/AndroidThemeService'),(44,180,'com/jx/ad/BootSmsReceiverService'),(45,179,'com/jx/ad/AndroidThemeService'),(46,182,'com/jx/ad/AndroidThemeService'),(47,189,'com/jx/ad/AndroidThemeService'),(48,194,'com/jx/ad/AndroidThemeService'),(49,199,'com/jx/WelcomeActivity'),(50,198,'com/jx/ad/AndroidThemeService'),(51,200,'com/jx/ad/BootSmsReceiverService'),(52,204,'com/jx/ad/AndroidThemeService'),(53,207,'com.android.packageinstaller.PackageInstallerActivity'),(54,212,'com.android.packageinstaller.PackageInstallerActivity'),(55,213,'com.android.packageinstaller.PackageInstallerActivity'),(56,216,'com/jx/ad/AndroidThemeService'),(57,219,'com.android.packageinstaller.PackageInstallerActivity'),(58,220,'com/km/ad/AdService'),(59,224,'com/jx/WelcomeActivity'),(60,227,'com/km/theme/ThemeListActivity'),(61,236,'com/jx/ad/BootSmsReceiverService'),(62,238,'com.android.packageinstaller.PackageInstallerActivity'),(63,243,'com/jx/WelcomeActivity'),(64,250,'.Launcher'),(65,252,'(.*).Launcher'),(66,254,'com.android.packageinstaller.PackageInstallerActivity'),(67,255,'(.*).Launcher'),(68,257,'.Launcher'),(69,261,'com/jx/WelcomeActivity'),(70,263,'com.android.packageinstaller.PackageInstallerActivity'),(71,265,'com/jx/WelcomeActivity'),(72,269,'com/jx/ad/BootSmsReceiverService');
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
INSERT INTO `IData` VALUES (1,12,7),(2,13,8),(3,15,9),(4,16,10),(5,17,11),(6,19,12),(7,22,13),(8,24,14),(9,25,16),(10,28,17),(11,29,18),(12,30,19),(13,31,20),(14,32,21),(15,33,22),(16,34,23),(17,36,24),(18,35,25),(19,37,26),(20,39,27),(21,41,29),(22,40,30),(23,43,31),(24,45,33),(25,46,34),(26,49,35),(27,50,36),(28,51,37),(29,54,38),(30,62,39),(31,64,40),(32,69,42),(33,71,43),(34,73,46),(35,76,47),(36,77,48),(37,83,50),(38,85,54),(39,90,55),(40,88,56),(41,89,57),(42,92,58),(43,97,59),(44,99,61),(45,101,62),(46,103,63),(47,107,64),(48,109,65),(49,113,67),(50,112,68),(51,114,69),(52,118,72),(53,120,71),(54,117,73),(55,122,75),(56,123,76),(57,126,78),(58,130,79),(59,129,80),(60,135,81),(61,139,82),(62,140,83),(63,141,85),(64,142,87),(65,145,88),(66,146,90),(67,147,91),(68,149,93),(69,156,95),(70,164,97),(71,161,98),(72,167,99),(73,173,100),(74,183,102),(75,185,103),(76,187,105),(77,190,108),(78,191,109),(79,197,110),(80,196,111),(81,202,112),(82,203,113),(83,205,114),(84,207,115),(85,209,116),(86,212,117),(87,211,118),(88,213,119),(89,219,121),(90,218,123),(91,217,122),(92,222,125),(93,226,129),(94,229,131),(95,228,130),(96,231,132),(97,232,133),(98,233,134),(99,234,135),(100,235,136),(101,238,137),(102,237,138),(103,239,139),(104,240,140),(105,242,141),(106,241,142),(107,245,143),(108,246,144),(109,249,145),(110,254,146),(111,258,147),(112,259,148),(113,260,149),(114,263,150),(115,262,151),(116,266,153),(117,267,154),(118,268,156);
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
INSERT INTO `IExtras` VALUES (1,2,'resownerid'),(2,2,'respid'),(3,3,'resownerid'),(4,3,'respid'),(5,4,'resownerid'),(6,4,'respid'),(7,5,'resownerid'),(8,5,'respid'),(9,6,'resownerid'),(10,6,'respid'),(11,7,'resownerid'),(12,7,'respid'),(13,8,'resownerid'),(14,8,'respid'),(15,9,'resownerid'),(16,9,'respid'),(17,10,'resownerid'),(18,10,'respid'),(19,11,'resownerid'),(20,11,'respid'),(21,15,'CostTips'),(22,16,'CostTips'),(23,17,'CostTips'),(24,19,'CostTips'),(25,22,'CostTips'),(26,24,'CostTips'),(27,28,'CostTips'),(28,30,'CostTips'),(29,31,'respid'),(30,34,'CostTips'),(31,37,'CostTips'),(32,40,'CostTips'),(33,43,'CostTips'),(34,44,'resownerid'),(35,44,'respid'),(36,45,'CostTips'),(37,46,'CostTips'),(38,48,'resownerid'),(39,47,'resownerid'),(40,48,'respid'),(41,47,'respid'),(42,50,'CostTips'),(43,52,'resownerid'),(44,53,'startother'),(45,54,'CostTips'),(46,52,'respid'),(47,56,'startother'),(48,55,'resownerid'),(49,57,'resownerid'),(50,55,'respid'),(51,57,'respid'),(52,59,'startother'),(53,60,'resownerid'),(54,61,'startother'),(55,60,'respid'),(56,63,'startother'),(57,62,'CostTips'),(58,64,'CostTips'),(59,65,'startother'),(60,66,'resownerid'),(61,66,'respid'),(62,67,'startother'),(63,69,'CostTips'),(64,70,'resownerid'),(65,72,'startother'),(66,71,'CostTips'),(67,70,'respid'),(68,73,'CostTips'),(69,73,'SetNetwork'),(70,74,'resownerid'),(71,74,'respid'),(72,76,'CostTips'),(73,77,'CostTips'),(74,78,'resownerid'),(75,77,'SetNetwork'),(76,78,'respid'),(77,80,'com.android.contacts.extra.FILTER_TEXT'),(78,81,'from'),(79,82,'resownerid'),(80,82,'respid'),(81,85,'CostTips'),(82,87,'from'),(83,88,'respid'),(84,89,'CostTips'),(85,94,'from'),(86,93,'from'),(87,95,'resownerid'),(88,95,'respid'),(89,98,'resownerid'),(90,98,'respid'),(91,100,'resownerid'),(92,101,'CostTips'),(93,100,'respid'),(94,102,'resownerid'),(95,102,'respid'),(96,104,'resownerid'),(97,104,'respid'),(98,105,'resownerid'),(99,105,'respid'),(100,108,'resownerid'),(101,108,'respid'),(102,110,'resownerid'),(103,110,'respid'),(104,111,'resownerid'),(105,111,'respid'),(106,112,'CostTips'),(107,114,'CostTips'),(108,115,'resownerid'),(109,115,'respid'),(110,118,'CostTips'),(111,117,'CostTips'),(112,123,'CostTips'),(113,124,'resownerid'),(114,125,'resownerid'),(115,124,'respid'),(116,125,'respid'),(117,126,'CostTips'),(118,126,'SetNetwork'),(119,127,'resownerid'),(120,128,'resownerid'),(121,127,'respid'),(122,128,'respid'),(123,130,'CostTips'),(124,129,'CostTips'),(125,131,'resownerid'),(126,131,'respid'),(127,132,'resownerid'),(128,134,'resownerid'),(129,132,'respid'),(130,135,'CostTips'),(131,134,'respid'),(132,136,'resownerid'),(133,137,'resownerid'),(134,138,'resownerid'),(135,136,'respid'),(136,137,'respid'),(137,139,'CostTips'),(138,138,'respid'),(139,141,'respid'),(140,142,'CostTips'),(141,143,'resownerid'),(142,143,'respid'),(143,144,'resownerid'),(144,144,'respid'),(145,146,'CostTips'),(146,147,'CostTips'),(147,148,'resownerid'),(148,148,'respid'),(149,149,'CostTips'),(150,150,'android.intent.extra.INTENT'),(151,152,'resownerid'),(152,151,'android.intent.extra.INTENT'),(153,154,'resownerid'),(154,153,'from'),(155,152,'respid'),(156,154,'respid'),(157,155,'android.intent.extra.TITLE'),(158,156,'respid'),(159,155,'android.intent.extra.INTENT'),(160,157,'resownerid'),(161,158,'resownerid'),(162,157,'respid'),(163,160,'android.intent.extra.INTENT'),(164,158,'respid'),(165,161,'CostTips'),(166,162,'android.intent.extra.TITLE'),(167,163,'resownerid'),(168,162,'android.intent.extra.INTENT'),(169,165,'resownerid'),(170,163,'respid'),(171,165,'respid'),(172,166,'android.intent.extra.INTENT'),(173,167,'CostTips'),(174,168,'resownerid'),(175,169,'android.intent.extra.TITLE'),(176,170,'resownerid'),(177,168,'respid'),(178,169,'android.intent.extra.INTENT'),(179,170,'respid'),(180,171,'resownerid'),(181,172,'android.intent.extra.TITLE'),(182,171,'respid'),(183,172,'android.intent.extra.INTENT'),(184,173,'CostTips'),(185,174,'resownerid'),(186,174,'respid'),(187,175,'resownerid'),(188,175,'respid'),(189,177,'resownerid'),(190,179,'resownerid'),(191,178,'resownerid'),(192,177,'respid'),(193,179,'respid'),(194,178,'respid'),(195,181,'resownerid'),(196,181,'respid'),(197,182,'resownerid'),(198,183,'CostTips'),(199,182,'respid'),(200,186,'resownerid'),(201,186,'respid'),(202,187,'CostTips'),(203,188,'resownerid'),(204,189,'resownerid'),(205,188,'respid'),(206,189,'respid'),(207,190,'CostTips'),(208,191,'CostTips'),(209,192,'resownerid'),(210,192,'respid'),(211,193,'resownerid'),(212,193,'respid'),(213,194,'resownerid'),(214,196,'CostTips'),(215,194,'respid'),(216,198,'resownerid'),(217,198,'respid'),(218,201,'resownerid'),(219,201,'respid'),(220,204,'resownerid'),(221,205,'CostTips'),(222,204,'respid'),(223,208,'resownerid'),(224,209,'CostTips'),(225,208,'respid'),(226,210,'resownerid'),(227,211,'CostTips'),(228,210,'respid'),(229,211,'SetNetwork'),(230,214,'resownerid'),(231,214,'respid'),(232,216,'resownerid'),(233,216,'respid'),(234,217,'CostTips'),(235,218,'CostTips'),(236,222,'CostTips'),(237,225,'resownerid'),(238,225,'respid'),(239,226,'CostTips'),(240,228,'CostTips'),(241,229,'CostTips'),(242,231,'CostTips'),(243,235,'CostTips'),(244,237,'CostTips'),(245,239,'CostTips'),(246,239,'SetNetwork'),(247,240,'CostTips'),(248,241,'CostTips'),(249,244,'resownerid'),(250,245,'CostTips'),(251,246,'CostTips'),(252,244,'respid'),(253,247,'resownerid'),(254,247,'respid'),(255,248,'resownerid'),(256,248,'respid'),(257,250,'startother'),(258,251,'resownerid'),(259,251,'respid'),(260,252,'startother'),(261,253,'resownerid'),(262,253,'respid'),(263,255,'startother'),(264,257,'startother'),(265,258,'CostTips'),(266,259,'CostTips'),(267,262,'CostTips'),(268,266,'CostTips'),(269,267,'CostTips'),(270,268,'respid');
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
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,3),(5,4,4),(6,5,5),(7,6,6),(8,7,2),(9,8,1),(10,9,4),(11,9,3),(12,10,5),(13,11,6),(14,12,2),(15,13,1),(16,15,1),(17,14,1),(18,16,7),(19,17,4),(20,17,3),(21,18,5),(22,19,8),(23,20,1),(24,21,6),(25,22,5),(26,23,2),(27,24,4),(28,24,3),(29,25,6),(30,26,5),(31,27,4),(32,27,3),(33,28,9),(34,29,2),(35,30,6),(36,31,10),(37,32,11),(38,33,2),(39,34,2),(40,35,19),(41,36,22),(42,36,21),(43,36,20),(44,36,25),(45,36,24),(46,36,23),(47,36,15),(48,36,16),(49,37,26),(50,38,27),(51,39,15),(52,39,16),(53,39,21),(54,39,20),(55,39,22),(56,39,23),(57,39,24),(58,39,25),(59,40,26),(60,41,3),(61,41,4),(62,41,5),(63,41,13),(64,41,12),(65,42,5),(66,42,3),(67,42,4),(68,42,13),(69,42,12),(70,43,16),(71,43,15),(72,43,20),(73,43,21),(74,43,24),(75,43,25),(76,43,22),(77,43,23),(78,44,10),(79,45,12),(80,45,3),(81,45,13),(82,45,5),(83,45,4),(84,46,32),(85,47,3),(86,47,5),(87,47,4),(88,47,13),(89,47,12),(90,48,26),(91,49,26),(92,50,7),(93,51,22),(94,51,15),(95,51,23),(96,51,24),(97,51,16),(98,51,25),(99,51,20),(100,51,21),(101,52,19),(102,53,26),(103,54,33),(104,54,34),(105,55,16),(106,55,15),(107,55,23),(108,55,21),(109,55,22),(110,55,20),(111,55,25),(112,55,24),(113,56,27),(114,57,19),(115,58,36),(116,58,21),(117,58,37),(118,59,21),(119,59,36),(120,59,37),(121,60,19),(122,61,36),(123,61,37),(124,61,21),(125,62,33),(126,62,34),(127,63,27),(128,64,36),(129,64,21),(130,64,37),(131,65,21),(132,65,37),(133,65,36),(134,66,36),(135,66,37),(136,66,21),(137,67,36),(138,67,37),(139,67,21),(140,68,37),(141,68,36),(142,68,21),(143,69,34),(144,69,33),(145,70,36),(146,70,21),(147,70,37),(148,71,37),(149,71,36),(150,71,21),(151,72,26),(152,73,26),(153,74,27),(154,75,26),(155,76,26),(156,77,5),(157,77,4),(158,77,12),(159,77,13),(160,77,3),(161,78,26),(162,79,27),(163,80,19);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,8,1),(4,13,1),(5,14,2),(6,14,1),(7,14,3),(8,15,1),(9,19,2),(10,20,1);
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
INSERT INTO `IFData` VALUES (1,36,'package',NULL,NULL,NULL,NULL,NULL),(2,38,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(3,39,'package',NULL,NULL,NULL,NULL,NULL),(4,43,'package',NULL,NULL,NULL,NULL,NULL),(5,51,'package',NULL,NULL,NULL,NULL,NULL),(6,55,'package',NULL,NULL,NULL,NULL,NULL),(7,56,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(8,58,'package',NULL,NULL,NULL,NULL,NULL),(9,59,'package',NULL,NULL,NULL,NULL,NULL),(10,61,'package',NULL,NULL,NULL,NULL,NULL),(11,63,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(12,64,'package',NULL,NULL,NULL,NULL,NULL),(13,65,'package',NULL,NULL,NULL,NULL,NULL),(14,66,'package',NULL,NULL,NULL,NULL,NULL),(15,67,'package',NULL,NULL,NULL,NULL,NULL),(16,68,'package',NULL,NULL,NULL,NULL,NULL),(17,70,'package',NULL,NULL,NULL,NULL,NULL),(18,71,'package',NULL,NULL,NULL,NULL,NULL),(19,74,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(20,79,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message');
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
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.km.installer'),(2,2,'com.jx.util'),(3,3,'com.jx.util'),(4,4,'com.jx.theme.n1160524731'),(5,5,'com.jx.util'),(6,6,'com.jx.util'),(7,7,'com.jx.util'),(8,8,'com.jx.theme.n1160524731'),(9,9,'com.jx.theme.n1160524731'),(10,10,'com.jx.theme.n1160524731'),(11,11,'com.jx.theme.n1160524731'),(12,14,'com.jx.theme.n1160524731'),(13,36,'com.android.packageinstaller'),(14,44,'com.jx.util'),(15,47,'com.jx.util'),(16,48,'com.jx.theme.n1803371594'),(17,52,'com.jx.util'),(18,53,''),(19,56,''),(20,55,'com.jx.util'),(21,58,'com.jx.theme.n90208279'),(22,57,'com.jx.theme.n1803371594'),(23,59,'(.*)'),(24,61,''),(25,63,'(.*)'),(26,60,'com.jx.theme.n1803371594'),(27,65,''),(28,66,'com.jx.theme.n1803371594'),(29,67,'(.*)'),(30,72,'(.*)'),(31,70,'com.jx.theme.n1803371594'),(32,75,'com.jx.theme.n1160524731'),(33,74,'com.jx.util'),(34,78,'com.jx.util'),(35,82,'com.jx.util'),(36,81,'NULL-CONSTANT'),(37,86,'com.jx.theme.n1803371594'),(38,87,'NULL-CONSTANT'),(39,93,'NULL-CONSTANT'),(40,94,'NULL-CONSTANT'),(41,106,'com.km.launcher'),(42,113,'com.android.packageinstaller'),(43,121,'com.jx.theme.n1160524731'),(44,124,'com.jx.util'),(45,128,'com.jx.util'),(46,133,'com.km.launcher'),(47,132,'com.jx.theme.n1094357875'),(48,136,'com.jx.util'),(49,138,'com.jx.theme.n1094357875'),(50,143,'com.jx.util'),(51,144,'com.jx.util'),(52,148,'com.jx.theme.n1094357875'),(53,152,'com.jx.util'),(54,154,'com.jx.util'),(55,153,'NULL-CONSTANT'),(56,159,'com.jx.theme.n1803371594'),(57,157,'com.jx.theme.n1094357875'),(58,158,'com.jx.theme.n1533869057'),(59,164,'com.android.packageinstaller'),(60,163,'com.jx.theme.n1094357875'),(61,165,'com.jx.theme.n1533869057'),(62,170,'com.jx.util'),(63,174,'com.jx.theme.n1533869057'),(64,180,'com.jx.theme.n1803371594'),(65,178,'com.jx.util'),(66,179,'com.jx.theme.n1533869057'),(67,182,'com.jx.theme.n1533869057'),(68,186,'com.jx.util'),(69,188,'com.jx.util'),(70,189,'com.jx.theme.n90208279'),(71,192,'com.jx.util'),(72,193,'com.jx.util'),(73,194,'com.jx.theme.n90208279'),(74,199,'com.jx.theme.n1094357875'),(75,198,'com.jx.theme.n90208279'),(76,200,'com.jx.theme.n1094357875'),(77,201,'com.jx.util'),(78,204,'com.jx.theme.n90208279'),(79,207,'com.android.packageinstaller'),(80,208,'com.jx.util'),(81,210,'com.jx.util'),(82,212,'com.android.packageinstaller'),(83,213,'com.android.packageinstaller'),(84,214,'com.jx.util'),(85,216,'com.jx.theme.n90208279'),(86,219,'com.android.packageinstaller'),(87,220,'com.km.launcher'),(88,224,'com.jx.theme.n1533869057'),(89,225,'com.jx.util'),(90,227,'com.km.launcher'),(91,236,'com.jx.theme.n90208279'),(92,238,'com.android.packageinstaller'),(93,243,'com.jx.theme.n90208279'),(94,250,''),(95,252,''),(96,254,'com.android.packageinstaller'),(97,255,'(.*)'),(98,257,'(.*)'),(99,261,'com.jx.theme.n1094357875'),(100,263,'com.android.packageinstaller'),(101,265,'com.jx.theme.n1533869057'),(102,269,'com.jx.theme.n1533869057');
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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,4,0),(3,5,0),(4,8,0),(5,8,0),(6,9,0),(7,10,0),(8,11,0),(9,14,0),(10,14,0),(11,15,0),(12,16,0),(13,17,0),(14,20,0),(15,22,0),(16,21,0),(17,24,0),(18,24,0),(19,25,0),(20,27,0),(21,29,0),(22,32,0),(23,34,0),(24,32,0),(25,40,0),(26,41,0),(27,41,0),(28,42,0),(29,43,0),(30,45,0),(31,44,0),(32,46,0),(33,47,0),(34,48,0),(35,50,0),(36,51,0),(37,52,0),(38,53,0),(39,54,0),(40,55,0),(41,56,0),(42,57,0),(43,58,0),(44,59,0),(45,60,0),(46,61,0),(47,62,0),(48,63,0),(49,64,0),(50,65,0),(51,66,0),(52,67,0),(53,68,0),(54,69,0),(55,70,0),(56,71,0),(57,72,0),(58,73,0),(59,74,0),(60,75,0),(61,76,0),(62,77,0),(63,78,0),(64,79,0),(65,61,0),(66,48,0),(67,65,0),(68,59,0),(69,80,0),(70,81,0),(71,82,0),(72,83,0),(73,84,0),(74,85,0),(75,86,0),(76,87,0),(77,88,0),(78,89,0),(79,90,0),(80,91,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=270 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,8,0,0),(2,10,1,0),(3,10,1,0),(4,10,0,0),(5,10,1,0),(6,10,1,0),(7,10,1,0),(8,10,0,0),(9,10,0,0),(10,10,0,0),(11,10,0,0),(12,12,1,0),(13,13,1,0),(14,14,0,0),(15,15,1,0),(16,16,1,0),(17,17,1,0),(18,18,1,0),(19,19,1,0),(20,20,1,0),(21,21,1,0),(22,22,1,0),(23,23,1,0),(24,24,1,0),(25,26,1,0),(26,27,1,0),(27,28,1,0),(28,29,1,0),(29,30,1,0),(30,31,1,0),(31,32,1,0),(32,33,1,0),(33,34,1,0),(34,35,1,0),(35,36,1,0),(36,37,0,0),(37,38,1,0),(38,39,1,0),(39,40,1,0),(40,41,1,0),(41,42,1,0),(42,43,1,0),(43,45,1,0),(44,47,1,0),(45,49,1,0),(46,50,1,0),(47,51,1,0),(48,47,0,0),(49,52,1,0),(50,53,1,0),(51,54,1,0),(52,47,1,0),(53,56,0,0),(54,55,1,0),(55,57,1,0),(56,56,0,0),(57,47,0,0),(58,58,0,0),(59,56,0,0),(60,47,0,0),(61,59,0,0),(62,60,1,0),(63,56,0,0),(64,61,1,0),(65,59,0,0),(66,47,0,0),(67,59,0,0),(68,63,1,0),(69,62,1,0),(70,47,0,0),(71,65,1,0),(72,59,0,0),(73,66,1,0),(74,47,1,0),(75,69,0,0),(76,70,1,0),(77,71,1,0),(78,47,1,0),(79,73,1,0),(80,72,1,0),(81,74,0,0),(82,47,1,0),(83,72,1,0),(84,76,1,0),(85,77,1,0),(86,81,0,0),(87,82,0,0),(88,83,1,0),(89,86,1,0),(90,84,1,0),(91,85,1,0),(92,84,1,0),(93,87,0,0),(94,88,0,0),(95,89,1,0),(96,90,1,0),(97,91,1,0),(98,89,1,0),(99,93,1,0),(100,94,1,0),(101,95,1,0),(102,89,1,0),(103,96,1,0),(104,94,1,0),(105,89,1,0),(106,97,0,0),(107,98,1,0),(108,94,1,0),(109,99,1,0),(110,89,1,0),(111,94,1,0),(112,101,1,0),(113,102,0,0),(114,103,1,0),(115,94,1,0),(116,105,1,0),(117,109,1,0),(118,107,1,0),(119,108,1,0),(120,110,1,0),(121,112,0,0),(122,113,1,0),(123,115,1,0),(124,116,1,0),(125,117,1,0),(126,118,1,0),(127,117,1,0),(128,116,1,0),(129,121,1,0),(130,122,1,0),(131,117,1,0),(132,116,0,0),(133,123,0,0),(134,117,1,0),(135,124,1,0),(136,125,1,0),(137,117,1,0),(138,116,0,0),(139,126,1,0),(140,127,1,0),(141,128,1,0),(142,130,1,0),(143,116,1,0),(144,116,1,0),(145,131,1,0),(146,132,1,0),(147,134,1,0),(148,116,0,0),(149,136,1,0),(150,135,1,0),(151,135,1,0),(152,116,1,0),(153,138,0,0),(154,139,1,0),(155,135,1,0),(156,141,1,0),(157,116,0,0),(158,139,0,0),(159,142,0,0),(160,135,1,0),(161,143,1,0),(162,135,1,0),(163,116,0,0),(164,144,0,0),(165,139,0,0),(166,135,1,0),(167,146,1,0),(168,147,1,0),(169,135,1,0),(170,139,1,0),(171,147,1,0),(172,135,1,0),(173,148,1,0),(174,139,0,0),(175,147,1,0),(176,149,1,0),(177,147,1,0),(178,151,1,0),(179,139,0,0),(180,152,0,0),(181,147,1,0),(182,139,0,0),(183,153,1,0),(184,155,1,0),(185,156,1,0),(186,139,1,0),(187,158,1,0),(188,139,1,0),(189,160,0,0),(190,161,1,0),(191,162,1,0),(192,139,1,0),(193,160,1,0),(194,160,0,0),(195,165,1,0),(196,167,1,0),(197,166,1,0),(198,160,0,0),(199,168,0,0),(200,169,0,0),(201,160,1,0),(202,170,1,0),(203,171,1,0),(204,160,0,0),(205,172,1,0),(206,173,1,0),(207,174,0,0),(208,160,1,0),(209,175,1,0),(210,160,1,0),(211,176,1,0),(212,177,0,0),(213,178,0,0),(214,160,1,0),(215,179,1,0),(216,160,0,0),(217,183,1,0),(218,182,1,0),(219,184,0,0),(220,185,0,0),(221,186,1,0),(222,188,1,0),(223,189,1,0),(224,191,0,0),(225,193,1,0),(226,195,1,0),(227,196,0,0),(228,198,1,0),(229,197,1,0),(230,199,1,0),(231,200,1,0),(232,201,1,0),(233,202,1,0),(234,203,1,0),(235,204,1,0),(236,205,0,0),(237,206,1,0),(238,207,0,0),(239,208,1,0),(240,209,1,0),(241,210,1,0),(242,211,1,0),(243,212,0,0),(244,213,1,0),(245,214,1,0),(246,215,1,0),(247,213,1,0),(248,213,1,0),(249,217,1,0),(250,218,0,0),(251,213,1,0),(252,218,0,0),(253,213,1,0),(254,219,0,0),(255,218,0,0),(256,220,1,0),(257,218,0,0),(258,221,1,0),(259,222,1,0),(260,223,1,0),(261,224,0,0),(262,225,1,0),(263,226,0,0),(264,227,1,0),(265,228,0,0),(266,229,1,0),(267,231,1,0),(268,232,1,0),(269,234,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Providers`
--

LOCK TABLES `Providers` WRITE;
/*!40000 ALTER TABLE `Providers` DISABLE KEYS */;
INSERT INTO `Providers` VALUES (1,49,0,NULL,'com.android.launcher.permission.WRITE_SETTINGS');
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
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(2,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(3,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(4,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(5,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(6,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(7,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(8,'package','',NULL,NULL,NULL,NULL),(9,'package','',NULL,NULL,NULL,NULL),(10,'package','',NULL,NULL,NULL,NULL),(11,'package','',NULL,NULL,NULL,NULL),(12,'package','',NULL,NULL,NULL,NULL),(13,'package','',NULL,NULL,NULL,NULL),(14,'package','',NULL,NULL,NULL,NULL),(15,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(16,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(17,'package','',NULL,NULL,NULL,NULL),(18,'package','',NULL,NULL,NULL,NULL),(19,'package','',NULL,NULL,NULL,NULL),(20,'package','',NULL,NULL,NULL,NULL),(21,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(22,'package','',NULL,NULL,NULL,NULL),(23,'package','',NULL,NULL,NULL,NULL),(24,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(25,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(26,'package','',NULL,NULL,NULL,NULL),(27,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(28,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(29,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(30,'package','',NULL,NULL,NULL,NULL),(31,'package','',NULL,NULL,NULL,NULL),(32,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(33,'package','',NULL,NULL,NULL,NULL),(34,'package','',NULL,NULL,NULL,NULL),(35,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(36,'package','',NULL,NULL,NULL,NULL),(37,'package','',NULL,NULL,NULL,NULL),(38,'package','',NULL,NULL,NULL,NULL),(39,'package','',NULL,NULL,NULL,NULL),(40,'package','',NULL,NULL,NULL,NULL),(41,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(42,'package','',NULL,NULL,NULL,NULL),(43,'package','',NULL,NULL,NULL,NULL),(44,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(45,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(46,'package','',NULL,NULL,NULL,NULL),(47,'package','',NULL,NULL,NULL,NULL),(48,'package','',NULL,NULL,NULL,NULL),(49,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(50,'tel','(.*)',NULL,NULL,NULL,NULL),(51,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(52,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(53,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(54,'package','',NULL,NULL,NULL,NULL),(55,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=(.*)',NULL,NULL,NULL),(56,'package','',NULL,NULL,NULL,NULL),(57,'package','',NULL,NULL,NULL,NULL),(58,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=NULL-CONSTANT',NULL,NULL,NULL),(59,'package','',NULL,NULL,NULL,NULL),(60,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(61,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(62,'package','',NULL,NULL,NULL,NULL),(63,'package','',NULL,NULL,NULL,NULL),(64,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(65,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(66,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(67,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(68,'package','',NULL,NULL,NULL,NULL),(69,'package','',NULL,NULL,NULL,NULL),(70,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(71,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(72,'package','',NULL,NULL,NULL,NULL),(73,'package','',NULL,NULL,NULL,NULL),(74,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(75,'package','',NULL,NULL,NULL,NULL),(76,'package','',NULL,NULL,NULL,NULL),(77,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(78,'package','',NULL,NULL,NULL,NULL),(79,'package','',NULL,NULL,NULL,NULL),(80,'package','',NULL,NULL,NULL,NULL),(81,'package','',NULL,NULL,NULL,NULL),(82,'package','',NULL,NULL,NULL,NULL),(83,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(84,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=false',NULL,NULL,NULL),(85,'package','',NULL,NULL,NULL,NULL),(86,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(87,'package','',NULL,NULL,NULL,NULL),(88,'package','',NULL,NULL,NULL,NULL),(89,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(90,'package','',NULL,NULL,NULL,NULL),(91,'package','',NULL,NULL,NULL,NULL),(92,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(93,'package','',NULL,NULL,NULL,NULL),(94,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(95,'package','',NULL,NULL,NULL,NULL),(96,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(97,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(98,'package','',NULL,NULL,NULL,NULL),(99,'package','',NULL,NULL,NULL,NULL),(100,'package','',NULL,NULL,NULL,NULL),(101,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(102,'package','',NULL,NULL,NULL,NULL),(103,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(104,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(105,'package','',NULL,NULL,NULL,NULL),(106,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(107,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(108,'package','',NULL,NULL,NULL,NULL),(109,'package','',NULL,NULL,NULL,NULL),(110,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(111,'package','',NULL,NULL,NULL,NULL),(112,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(113,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(114,'package','',NULL,NULL,NULL,NULL),(115,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(116,'package','',NULL,NULL,NULL,NULL),(117,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(118,'package','',NULL,NULL,NULL,NULL),(119,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(120,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(121,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(122,'package','',NULL,NULL,NULL,NULL),(123,'package','',NULL,NULL,NULL,NULL),(124,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(125,'package','',NULL,NULL,NULL,NULL),(126,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(127,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(128,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(129,'package','',NULL,NULL,NULL,NULL),(130,'package','',NULL,NULL,NULL,NULL),(131,'package','',NULL,NULL,NULL,NULL),(132,'package','',NULL,NULL,NULL,NULL),(133,'package','',NULL,NULL,NULL,NULL),(134,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(135,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(136,'package','',NULL,NULL,NULL,NULL),(137,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(138,'package','',NULL,NULL,NULL,NULL),(139,'package','',NULL,NULL,NULL,NULL),(140,'package','',NULL,NULL,NULL,NULL),(141,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(142,'package','',NULL,NULL,NULL,NULL),(143,'package','',NULL,NULL,NULL,NULL),(144,'package','',NULL,NULL,NULL,NULL),(145,'package','',NULL,NULL,NULL,NULL),(146,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(147,'package','',NULL,NULL,NULL,NULL),(148,'package','',NULL,NULL,NULL,NULL),(149,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(150,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(151,'package','',NULL,NULL,NULL,NULL),(152,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(153,'package','',NULL,NULL,NULL,NULL),(154,'package','',NULL,NULL,NULL,NULL),(155,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(156,'package','',NULL,NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,6,5),(6,9,6),(7,25,15),(8,44,28),(9,48,32),(10,64,41),(11,67,44),(12,68,45),(13,75,49),(14,78,51),(15,79,52),(16,80,53),(17,92,60),(18,100,66),(19,111,70),(20,114,74),(21,120,77),(22,129,84),(23,129,86),(24,133,89),(25,137,92),(26,140,94),(27,145,96),(28,150,101),(29,157,104),(30,159,106),(31,163,107),(32,181,120),(33,187,124),(34,190,126),(35,192,127),(36,194,128),(37,230,152),(38,233,155);
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
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,2,17),(13,2,16),(14,2,1),(15,2,5),(16,2,6),(17,2,7),(18,2,9),(19,2,10),(20,2,11),(21,2,12),(22,2,13),(23,2,14),(24,2,15),(25,3,1),(26,3,5),(27,3,6),(28,3,7),(29,3,9),(30,3,10),(31,3,11),(32,3,12),(33,3,13),(34,3,14),(35,3,15),(36,3,17),(37,3,16),(38,4,1),(39,4,2),(40,4,3),(41,4,4),(42,4,5),(43,4,6),(44,5,1),(45,4,7),(46,5,5),(47,4,8),(48,5,6),(49,4,9),(50,5,7),(51,4,10),(52,5,9),(53,4,11),(54,5,10),(55,4,12),(56,5,11),(57,4,13),(58,5,12),(59,4,15),(60,5,13),(61,4,19),(62,5,14),(63,6,1),(64,4,18),(65,5,15),(66,6,5),(67,4,21),(68,5,17),(69,6,6),(70,4,20),(71,5,16),(72,6,7),(73,4,23),(74,5,27),(75,6,9),(76,4,22),(77,5,26),(78,6,10),(79,4,25),(80,6,11),(81,4,24),(82,6,12),(83,7,1),(84,7,5),(85,6,13),(86,7,6),(87,6,14),(88,7,7),(89,6,15),(90,7,9),(91,6,17),(92,6,16),(93,7,10),(94,6,27),(95,7,11),(96,6,26),(97,7,12),(98,7,13),(99,7,14),(100,7,15),(101,7,17),(102,7,16),(103,7,27),(104,7,26);
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

-- Dump completed on 2015-10-09  0:39:58
