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
) ENGINE=InnoDB AUTO_INCREMENT=4239 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,158,8,2,NULL),(2,158,14,2,NULL),(3,158,24,2,NULL),(4,158,32,2,NULL),(5,158,41,2,NULL),(6,165,8,2,NULL),(7,165,14,2,NULL),(8,165,24,2,NULL),(9,165,32,2,NULL),(10,165,41,2,NULL),(11,174,8,2,NULL),(12,174,14,2,NULL),(13,174,24,2,NULL),(14,174,32,2,NULL),(15,174,41,2,NULL),(16,179,8,2,NULL),(17,179,14,2,NULL),(18,179,24,2,NULL),(19,179,32,2,NULL),(20,179,41,2,NULL),(21,182,8,2,NULL),(22,182,14,2,NULL),(23,182,24,2,NULL),(24,182,32,2,NULL),(25,182,41,2,NULL),(26,224,7,2,NULL),(27,224,13,2,NULL),(28,224,19,2,NULL),(29,224,28,2,NULL),(30,224,36,2,NULL),(31,265,7,2,NULL),(32,265,13,2,NULL),(33,265,19,2,NULL),(34,265,28,2,NULL),(35,265,36,2,NULL),(36,42,1,2,NULL),(37,116,1,2,NULL),(38,125,1,2,NULL),(39,127,1,2,NULL),(40,131,1,2,NULL),(41,134,1,2,NULL),(42,137,1,2,NULL),(43,154,1,2,NULL),(44,170,1,2,NULL),(45,186,1,2,NULL),(46,188,1,2,NULL),(47,192,1,2,NULL),(48,42,4,2,NULL),(49,116,4,2,NULL),(50,125,4,2,NULL),(51,127,4,2,NULL),(52,131,4,2,NULL),(53,134,4,2,NULL),(54,137,4,2,NULL),(55,154,4,2,NULL),(56,170,4,2,NULL),(57,186,4,2,NULL),(58,188,4,2,NULL),(59,192,4,2,NULL),(60,42,21,2,NULL),(61,116,21,2,NULL),(62,125,21,2,NULL),(63,127,21,2,NULL),(64,131,21,2,NULL),(65,134,21,2,NULL),(66,137,21,2,NULL),(67,154,21,2,NULL),(68,170,21,2,NULL),(69,186,21,2,NULL),(70,188,21,2,NULL),(71,192,21,2,NULL),(72,42,44,2,NULL),(73,116,44,2,NULL),(74,125,44,2,NULL),(75,127,44,2,NULL),(76,131,44,2,NULL),(77,134,44,2,NULL),(78,137,44,2,NULL),(79,154,44,2,NULL),(80,170,44,2,NULL),(81,186,44,2,NULL),(82,188,44,2,NULL),(83,192,44,2,NULL),(84,42,5,2,NULL),(85,116,5,2,NULL),(86,125,5,2,NULL),(87,127,5,2,NULL),(88,131,5,2,NULL),(89,134,5,2,NULL),(90,137,5,2,NULL),(91,154,5,2,NULL),(92,170,5,2,NULL),(93,186,5,2,NULL),(94,188,5,2,NULL),(95,192,5,2,NULL),(96,2,27,2,NULL),(97,3,27,2,NULL),(98,5,27,2,NULL),(99,6,27,2,NULL),(100,7,27,2,NULL),(101,4,8,2,NULL),(102,20,27,2,NULL),(103,4,14,2,NULL),(104,27,27,2,NULL),(105,4,24,2,NULL),(106,95,27,2,NULL),(107,4,32,2,NULL),(108,98,27,2,NULL),(109,4,41,2,NULL),(110,102,27,2,NULL),(111,8,8,2,NULL),(112,105,27,2,NULL),(113,8,14,2,NULL),(114,110,27,2,NULL),(115,8,24,2,NULL),(116,79,27,2,NULL),(117,8,32,2,NULL),(118,42,8,2,NULL),(119,8,41,2,NULL),(120,116,8,2,NULL),(121,9,8,2,NULL),(122,125,8,2,NULL),(123,9,14,2,NULL),(124,127,8,2,NULL),(125,9,24,2,NULL),(126,131,8,2,NULL),(127,9,32,2,NULL),(128,134,8,2,NULL),(129,9,41,2,NULL),(130,137,8,2,NULL),(131,10,8,2,NULL),(132,154,8,2,NULL),(133,10,14,2,NULL),(134,170,8,2,NULL),(135,10,24,2,NULL),(136,186,8,2,NULL),(137,10,32,2,NULL),(138,188,8,2,NULL),(139,10,41,2,NULL),(140,192,8,2,NULL),(141,11,8,2,NULL),(142,42,9,2,NULL),(143,11,14,2,NULL),(144,116,9,2,NULL),(145,11,24,2,NULL),(146,125,9,2,NULL),(147,11,32,2,NULL),(148,127,9,2,NULL),(149,11,41,2,NULL),(150,131,9,2,NULL),(151,75,7,2,NULL),(152,134,9,2,NULL),(153,75,13,2,NULL),(154,137,9,2,NULL),(155,75,19,2,NULL),(156,154,9,2,NULL),(157,75,28,2,NULL),(158,170,9,2,NULL),(159,75,36,2,NULL),(160,186,9,2,NULL),(161,121,7,2,NULL),(162,188,9,2,NULL),(163,121,13,2,NULL),(164,192,9,2,NULL),(165,121,19,2,NULL),(166,42,10,2,NULL),(167,121,28,2,NULL),(168,116,10,2,NULL),(169,121,36,2,NULL),(170,125,10,2,NULL),(171,2,1,2,NULL),(172,127,10,2,NULL),(173,3,1,2,NULL),(174,131,10,2,NULL),(175,5,1,2,NULL),(176,134,10,2,NULL),(177,6,1,2,NULL),(178,137,10,2,NULL),(179,7,1,2,NULL),(180,154,10,2,NULL),(181,20,1,2,NULL),(182,170,10,2,NULL),(183,27,1,2,NULL),(184,186,10,2,NULL),(185,95,1,2,NULL),(186,188,10,2,NULL),(187,98,1,2,NULL),(188,192,10,2,NULL),(189,102,1,2,NULL),(190,42,50,2,NULL),(191,105,1,2,NULL),(192,116,50,2,NULL),(193,110,1,2,NULL),(194,125,50,2,NULL),(195,2,4,2,NULL),(196,127,50,2,NULL),(197,3,4,2,NULL),(198,131,50,2,NULL),(199,5,4,2,NULL),(200,134,50,2,NULL),(201,6,4,2,NULL),(202,137,50,2,NULL),(203,7,4,2,NULL),(204,154,50,2,NULL),(205,20,4,2,NULL),(206,170,50,2,NULL),(207,27,4,2,NULL),(208,186,50,2,NULL),(209,95,4,2,NULL),(210,188,50,2,NULL),(211,98,4,2,NULL),(212,192,50,2,NULL),(213,102,4,2,NULL),(214,42,56,2,NULL),(215,105,4,2,NULL),(216,116,56,2,NULL),(217,110,4,2,NULL),(218,125,56,2,NULL),(219,2,21,2,NULL),(220,127,56,2,NULL),(221,3,21,2,NULL),(222,131,56,2,NULL),(223,5,21,2,NULL),(224,134,56,2,NULL),(225,6,21,2,NULL),(226,137,56,2,NULL),(227,7,21,2,NULL),(228,154,56,2,NULL),(229,20,21,2,NULL),(230,170,56,2,NULL),(231,27,21,2,NULL),(232,186,56,2,NULL),(233,95,21,2,NULL),(234,188,56,2,NULL),(235,98,21,2,NULL),(236,192,56,2,NULL),(237,102,21,2,NULL),(238,42,63,2,NULL),(239,105,21,2,NULL),(240,116,63,2,NULL),(241,110,21,2,NULL),(242,125,63,2,NULL),(243,2,44,2,NULL),(244,127,63,2,NULL),(245,3,44,2,NULL),(246,131,63,2,NULL),(247,5,44,2,NULL),(248,134,63,2,NULL),(249,6,44,2,NULL),(250,137,63,2,NULL),(251,7,44,2,NULL),(252,154,63,2,NULL),(253,20,44,2,NULL),(254,170,63,2,NULL),(255,27,44,2,NULL),(256,186,63,2,NULL),(257,95,44,2,NULL),(258,188,63,2,NULL),(259,98,44,2,NULL),(260,192,63,2,NULL),(261,102,44,2,NULL),(262,42,68,2,NULL),(263,105,44,2,NULL),(264,116,68,2,NULL),(265,110,44,2,NULL),(266,125,68,2,NULL),(267,79,5,2,NULL),(268,127,68,2,NULL),(269,2,8,2,NULL),(270,131,68,2,NULL),(271,3,8,2,NULL),(272,134,68,2,NULL),(273,5,8,2,NULL),(274,137,68,2,NULL),(275,6,8,2,NULL),(276,154,68,2,NULL),(277,7,8,2,NULL),(278,170,68,2,NULL),(279,20,8,2,NULL),(280,186,68,2,NULL),(281,27,8,2,NULL),(282,188,68,2,NULL),(283,95,8,2,NULL),(284,192,68,2,NULL),(285,98,8,2,NULL),(286,42,11,2,NULL),(287,102,8,2,NULL),(288,116,11,2,NULL),(289,105,8,2,NULL),(290,125,11,2,NULL),(291,110,8,2,NULL),(292,127,11,2,NULL),(293,2,9,2,NULL),(294,131,11,2,NULL),(295,3,9,2,NULL),(296,134,11,2,NULL),(297,5,9,2,NULL),(298,137,11,2,NULL),(299,6,9,2,NULL),(300,154,11,2,NULL),(301,7,9,2,NULL),(302,170,11,2,NULL),(303,20,9,2,NULL),(304,186,11,2,NULL),(305,27,9,2,NULL),(306,188,11,2,NULL),(307,95,9,2,NULL),(308,192,11,2,NULL),(309,98,9,2,NULL),(310,21,27,2,NULL),(311,102,9,2,NULL),(312,44,27,2,NULL),(313,105,9,2,NULL),(314,52,27,2,NULL),(315,110,9,2,NULL),(316,74,27,2,NULL),(317,2,10,2,NULL),(318,78,27,2,NULL),(319,3,10,2,NULL),(320,82,27,2,NULL),(321,5,10,2,NULL),(322,100,27,2,NULL),(323,6,10,2,NULL),(324,104,27,2,NULL),(325,7,10,2,NULL),(326,108,27,2,NULL),(327,20,10,2,NULL),(328,111,27,2,NULL),(329,27,10,2,NULL),(330,115,27,2,NULL),(331,95,10,2,NULL),(332,119,27,2,NULL),(333,98,10,2,NULL),(334,215,27,2,NULL),(335,102,10,2,NULL),(336,42,14,2,NULL),(337,105,10,2,NULL),(338,116,14,2,NULL),(339,110,10,2,NULL),(340,125,14,2,NULL),(341,2,50,2,NULL),(342,127,14,2,NULL),(343,3,50,2,NULL),(344,131,14,2,NULL),(345,5,50,2,NULL),(346,134,14,2,NULL),(347,6,50,2,NULL),(348,137,14,2,NULL),(349,7,50,2,NULL),(350,154,14,2,NULL),(351,20,50,2,NULL),(352,170,14,2,NULL),(353,27,50,2,NULL),(354,186,14,2,NULL),(355,95,50,2,NULL),(356,188,14,2,NULL),(357,98,50,2,NULL),(358,192,14,2,NULL),(359,102,50,2,NULL),(360,42,15,2,NULL),(361,105,50,2,NULL),(362,116,15,2,NULL),(363,110,50,2,NULL),(364,125,15,2,NULL),(365,2,56,2,NULL),(366,127,15,2,NULL),(367,3,56,2,NULL),(368,131,15,2,NULL),(369,5,56,2,NULL),(370,134,15,2,NULL),(371,6,56,2,NULL),(372,137,15,2,NULL),(373,7,56,2,NULL),(374,154,15,2,NULL),(375,20,56,2,NULL),(376,170,15,2,NULL),(377,27,56,2,NULL),(378,186,15,2,NULL),(379,95,56,2,NULL),(380,188,15,2,NULL),(381,98,56,2,NULL),(382,192,15,2,NULL),(383,102,56,2,NULL),(384,42,16,2,NULL),(385,105,56,2,NULL),(386,116,16,2,NULL),(387,110,56,2,NULL),(388,125,16,2,NULL),(389,2,63,2,NULL),(390,127,16,2,NULL),(391,3,63,2,NULL),(392,131,16,2,NULL),(393,5,63,2,NULL),(394,134,16,2,NULL),(395,6,63,2,NULL),(396,137,16,2,NULL),(397,7,63,2,NULL),(398,154,16,2,NULL),(399,20,63,2,NULL),(400,170,16,2,NULL),(401,27,63,2,NULL),(402,186,16,2,NULL),(403,95,63,2,NULL),(404,188,16,2,NULL),(405,98,63,2,NULL),(406,192,16,2,NULL),(407,102,63,2,NULL),(408,42,52,2,NULL),(409,105,63,2,NULL),(410,116,52,2,NULL),(411,110,63,2,NULL),(412,125,52,2,NULL),(413,2,68,2,NULL),(414,127,52,2,NULL),(415,3,68,2,NULL),(416,131,52,2,NULL),(417,5,68,2,NULL),(418,134,52,2,NULL),(419,6,68,2,NULL),(420,137,52,2,NULL),(421,7,68,2,NULL),(422,154,52,2,NULL),(423,20,68,2,NULL),(424,170,52,2,NULL),(425,27,68,2,NULL),(426,186,52,2,NULL),(427,95,68,2,NULL),(428,188,52,2,NULL),(429,98,68,2,NULL),(430,192,52,2,NULL),(431,102,68,2,NULL),(432,42,60,2,NULL),(433,105,68,2,NULL),(434,116,60,2,NULL),(435,110,68,2,NULL),(436,125,60,2,NULL),(437,2,11,2,NULL),(438,127,60,2,NULL),(439,3,11,2,NULL),(440,131,60,2,NULL),(441,5,11,2,NULL),(442,134,60,2,NULL),(443,6,11,2,NULL),(444,137,60,2,NULL),(445,7,11,2,NULL),(446,154,60,2,NULL),(447,20,11,2,NULL),(448,170,60,2,NULL),(449,27,11,2,NULL),(450,186,60,2,NULL),(451,95,11,2,NULL),(452,188,60,2,NULL),(453,98,11,2,NULL),(454,192,60,2,NULL),(455,102,11,2,NULL),(456,42,75,2,NULL),(457,105,11,2,NULL),(458,116,75,2,NULL),(459,110,11,2,NULL),(460,125,75,2,NULL),(461,21,5,2,NULL),(462,127,75,2,NULL),(463,44,5,2,NULL),(464,131,75,2,NULL),(465,52,5,2,NULL),(466,134,75,2,NULL),(467,74,5,2,NULL),(468,137,75,2,NULL),(469,78,5,2,NULL),(470,154,75,2,NULL),(471,82,5,2,NULL),(472,170,75,2,NULL),(473,100,5,2,NULL),(474,186,75,2,NULL),(475,104,5,2,NULL),(476,188,75,2,NULL),(477,108,5,2,NULL),(478,192,75,2,NULL),(479,111,5,2,NULL),(480,42,83,2,NULL),(481,115,5,2,NULL),(482,116,83,2,NULL),(483,119,5,2,NULL),(484,125,83,2,NULL),(485,215,5,2,NULL),(486,127,83,2,NULL),(487,2,14,2,NULL),(488,131,83,2,NULL),(489,3,14,2,NULL),(490,134,83,2,NULL),(491,5,14,2,NULL),(492,137,83,2,NULL),(493,6,14,2,NULL),(494,154,83,2,NULL),(495,7,14,2,NULL),(496,170,83,2,NULL),(497,20,14,2,NULL),(498,186,83,2,NULL),(499,27,14,2,NULL),(500,188,83,2,NULL),(501,95,14,2,NULL),(502,192,83,2,NULL),(503,98,14,2,NULL),(504,42,20,2,NULL),(505,102,14,2,NULL),(506,116,20,2,NULL),(507,105,14,2,NULL),(508,125,20,2,NULL),(509,110,14,2,NULL),(510,127,20,2,NULL),(511,2,15,2,NULL),(512,131,20,2,NULL),(513,3,15,2,NULL),(514,134,20,2,NULL),(515,5,15,2,NULL),(516,137,20,2,NULL),(517,6,15,2,NULL),(518,154,20,2,NULL),(519,7,15,2,NULL),(520,170,20,2,NULL),(521,20,15,2,NULL),(522,186,20,2,NULL),(523,27,15,2,NULL),(524,188,20,2,NULL),(525,95,15,2,NULL),(526,192,20,2,NULL),(527,98,15,2,NULL),(528,80,27,2,NULL),(529,102,15,2,NULL),(530,150,27,2,NULL),(531,105,15,2,NULL),(532,151,27,2,NULL),(533,110,15,2,NULL),(534,155,27,2,NULL),(535,2,16,2,NULL),(536,160,27,2,NULL),(537,3,16,2,NULL),(538,162,27,2,NULL),(539,5,16,2,NULL),(540,166,27,2,NULL),(541,6,16,2,NULL),(542,169,27,2,NULL),(543,7,16,2,NULL),(544,172,27,2,NULL),(545,20,16,2,NULL),(546,42,25,2,NULL),(547,27,16,2,NULL),(548,116,25,2,NULL),(549,95,16,2,NULL),(550,125,25,2,NULL),(551,98,16,2,NULL),(552,127,25,2,NULL),(553,102,16,2,NULL),(554,131,25,2,NULL),(555,105,16,2,NULL),(556,134,25,2,NULL),(557,110,16,2,NULL),(558,137,25,2,NULL),(559,2,52,2,NULL),(560,154,25,2,NULL),(561,3,52,2,NULL),(562,170,25,2,NULL),(563,5,52,2,NULL),(564,186,25,2,NULL),(565,6,52,2,NULL),(566,188,25,2,NULL),(567,7,52,2,NULL),(568,192,25,2,NULL),(569,20,52,2,NULL),(570,42,42,2,NULL),(571,27,52,2,NULL),(572,116,42,2,NULL),(573,95,52,2,NULL),(574,125,42,2,NULL),(575,98,52,2,NULL),(576,127,42,2,NULL),(577,102,52,2,NULL),(578,131,42,2,NULL),(579,105,52,2,NULL),(580,134,42,2,NULL),(581,110,52,2,NULL),(582,137,42,2,NULL),(583,2,60,2,NULL),(584,154,42,2,NULL),(585,3,60,2,NULL),(586,170,42,2,NULL),(587,5,60,2,NULL),(588,186,42,2,NULL),(589,6,60,2,NULL),(590,188,42,2,NULL),(591,7,60,2,NULL),(592,192,42,2,NULL),(593,20,60,2,NULL),(594,42,46,2,NULL),(595,27,60,2,NULL),(596,116,46,2,NULL),(597,95,60,2,NULL),(598,125,46,2,NULL),(599,98,60,2,NULL),(600,127,46,2,NULL),(601,102,60,2,NULL),(602,131,46,2,NULL),(603,105,60,2,NULL),(604,134,46,2,NULL),(605,110,60,2,NULL),(606,137,46,2,NULL),(607,2,75,2,NULL),(608,154,46,2,NULL),(609,3,75,2,NULL),(610,170,46,2,NULL),(611,5,75,2,NULL),(612,186,46,2,NULL),(613,6,75,2,NULL),(614,188,46,2,NULL),(615,7,75,2,NULL),(616,192,46,2,NULL),(617,20,75,2,NULL),(618,42,48,2,NULL),(619,27,75,2,NULL),(620,116,48,2,NULL),(621,95,75,2,NULL),(622,125,48,2,NULL),(623,98,75,2,NULL),(624,127,48,2,NULL),(625,102,75,2,NULL),(626,131,48,2,NULL),(627,105,75,2,NULL),(628,134,48,2,NULL),(629,110,75,2,NULL),(630,137,48,2,NULL),(631,2,83,2,NULL),(632,154,48,2,NULL),(633,3,83,2,NULL),(634,170,48,2,NULL),(635,5,83,2,NULL),(636,186,48,2,NULL),(637,6,83,2,NULL),(638,188,48,2,NULL),(639,7,83,2,NULL),(640,192,48,2,NULL),(641,20,83,2,NULL),(642,42,59,2,NULL),(643,27,83,2,NULL),(644,116,59,2,NULL),(645,95,83,2,NULL),(646,125,59,2,NULL),(647,98,83,2,NULL),(648,127,59,2,NULL),(649,102,83,2,NULL),(650,131,59,2,NULL),(651,105,83,2,NULL),(652,134,59,2,NULL),(653,110,83,2,NULL),(654,137,59,2,NULL),(655,2,20,2,NULL),(656,154,59,2,NULL),(657,3,20,2,NULL),(658,170,59,2,NULL),(659,5,20,2,NULL),(660,186,59,2,NULL),(661,6,20,2,NULL),(662,188,59,2,NULL),(663,7,20,2,NULL),(664,192,59,2,NULL),(665,20,20,2,NULL),(666,42,61,2,NULL),(667,27,20,2,NULL),(668,116,61,2,NULL),(669,95,20,2,NULL),(670,125,61,2,NULL),(671,98,20,2,NULL),(672,127,61,2,NULL),(673,102,20,2,NULL),(674,131,61,2,NULL),(675,105,20,2,NULL),(676,134,61,2,NULL),(677,110,20,2,NULL),(678,137,61,2,NULL),(679,80,5,2,NULL),(680,154,61,2,NULL),(681,150,5,2,NULL),(682,170,61,2,NULL),(683,151,5,2,NULL),(684,186,61,2,NULL),(685,155,5,2,NULL),(686,188,61,2,NULL),(687,160,5,2,NULL),(688,192,61,2,NULL),(689,162,5,2,NULL),(690,42,65,2,NULL),(691,166,5,2,NULL),(692,116,65,2,NULL),(693,169,5,2,NULL),(694,125,65,2,NULL),(695,172,5,2,NULL),(696,127,65,2,NULL),(697,2,25,2,NULL),(698,131,65,2,NULL),(699,3,25,2,NULL),(700,134,65,2,NULL),(701,5,25,2,NULL),(702,137,65,2,NULL),(703,6,25,2,NULL),(704,154,65,2,NULL),(705,7,25,2,NULL),(706,170,65,2,NULL),(707,20,25,2,NULL),(708,186,65,2,NULL),(709,27,25,2,NULL),(710,188,65,2,NULL),(711,95,25,2,NULL),(712,192,65,2,NULL),(713,98,25,2,NULL),(714,42,17,2,NULL),(715,102,25,2,NULL),(716,116,17,2,NULL),(717,105,25,2,NULL),(718,125,17,2,NULL),(719,110,25,2,NULL),(720,127,17,2,NULL),(721,2,42,2,NULL),(722,131,17,2,NULL),(723,3,42,2,NULL),(724,134,17,2,NULL),(725,5,42,2,NULL),(726,137,17,2,NULL),(727,6,42,2,NULL),(728,7,42,2,NULL),(729,20,42,2,NULL),(730,27,42,2,NULL),(731,154,17,2,NULL),(732,95,42,2,NULL),(733,170,17,2,NULL),(734,98,42,2,NULL),(735,186,17,2,NULL),(736,102,42,2,NULL),(737,188,17,2,NULL),(738,105,42,2,NULL),(739,227,31,2,NULL),(740,192,17,2,NULL),(741,110,42,2,NULL),(742,68,27,2,NULL),(743,80,1,2,NULL),(744,2,46,2,NULL),(745,168,27,2,NULL),(746,3,46,2,NULL),(747,171,27,2,NULL),(748,150,1,2,NULL),(749,5,46,2,NULL),(750,175,27,2,NULL),(751,151,1,2,NULL),(752,6,46,2,NULL),(753,177,27,2,NULL),(754,155,1,2,NULL),(755,7,46,2,NULL),(756,181,27,2,NULL),(757,160,1,2,NULL),(758,20,46,2,NULL),(759,193,27,2,NULL),(760,162,1,2,NULL),(761,27,46,2,NULL),(762,201,27,2,NULL),(763,166,1,2,NULL),(764,58,7,2,NULL),(765,95,46,2,NULL),(766,208,27,2,NULL),(767,169,1,2,NULL),(768,58,13,2,NULL),(769,98,46,2,NULL),(770,210,27,2,NULL),(771,172,1,2,NULL),(772,58,19,2,NULL),(773,102,46,2,NULL),(774,214,27,2,NULL),(775,80,4,2,NULL),(776,58,28,2,NULL),(777,105,46,2,NULL),(778,223,27,2,NULL),(779,150,4,2,NULL),(780,58,36,2,NULL),(781,110,46,2,NULL),(782,38,27,2,NULL),(783,2,48,2,NULL),(784,151,4,2,NULL),(785,189,8,2,NULL),(786,42,24,2,NULL),(787,3,48,2,NULL),(788,116,24,2,NULL),(789,155,4,2,NULL),(790,189,14,2,NULL),(791,5,48,2,NULL),(792,125,24,2,NULL),(793,6,48,2,NULL),(794,160,4,2,NULL),(795,189,24,2,NULL),(796,127,24,2,NULL),(797,7,48,2,NULL),(798,162,4,2,NULL),(799,131,24,2,NULL),(800,189,32,2,NULL),(801,20,48,2,NULL),(802,134,24,2,NULL),(803,166,4,2,NULL),(804,27,48,2,NULL),(805,189,41,2,NULL),(806,137,24,2,NULL),(807,95,48,2,NULL),(808,169,4,2,NULL),(809,154,24,2,NULL),(810,194,8,2,NULL),(811,98,48,2,NULL),(812,170,24,2,NULL),(813,172,4,2,NULL),(814,102,48,2,NULL),(815,194,14,2,NULL),(816,186,24,2,NULL),(817,105,48,2,NULL),(818,80,21,2,NULL),(819,188,24,2,NULL),(820,194,24,2,NULL),(821,110,48,2,NULL),(822,150,21,2,NULL),(823,192,24,2,NULL),(824,2,59,2,NULL),(825,194,32,2,NULL),(826,42,29,2,NULL),(827,151,21,2,NULL),(828,3,59,2,NULL),(829,116,29,2,NULL),(830,155,21,2,NULL),(831,194,41,2,NULL),(832,5,59,2,NULL),(833,125,29,2,NULL),(834,160,21,2,NULL),(835,198,8,2,NULL),(836,6,59,2,NULL),(837,127,29,2,NULL),(838,162,21,2,NULL),(839,198,14,2,NULL),(840,7,59,2,NULL),(841,131,29,2,NULL),(842,20,59,2,NULL),(843,166,21,2,NULL),(844,134,29,2,NULL),(845,198,24,2,NULL),(846,27,59,2,NULL),(847,137,29,2,NULL),(848,169,21,2,NULL),(849,198,32,2,NULL),(850,95,59,2,NULL),(851,154,29,2,NULL),(852,172,21,2,NULL),(853,98,59,2,NULL),(854,198,41,2,NULL),(855,170,29,2,NULL),(856,80,44,2,NULL),(857,102,59,2,NULL),(858,186,29,2,NULL),(859,150,44,2,NULL),(860,204,8,2,NULL),(861,105,59,2,NULL),(862,188,29,2,NULL),(863,204,14,2,NULL),(864,151,44,2,NULL),(865,110,59,2,NULL),(866,192,29,2,NULL),(867,2,61,2,NULL),(868,155,44,2,NULL),(869,204,24,2,NULL),(870,42,34,2,NULL),(871,3,61,2,NULL),(872,160,44,2,NULL),(873,204,32,2,NULL),(874,116,34,2,NULL),(875,5,61,2,NULL),(876,162,44,2,NULL),(877,204,41,2,NULL),(878,125,34,2,NULL),(879,6,61,2,NULL),(880,216,8,2,NULL),(881,166,44,2,NULL),(882,127,34,2,NULL),(883,7,61,2,NULL),(884,131,34,2,NULL),(885,169,44,2,NULL),(886,216,14,2,NULL),(887,20,61,2,NULL),(888,134,34,2,NULL),(889,172,44,2,NULL),(890,27,61,2,NULL),(891,216,24,2,NULL),(892,137,34,2,NULL),(893,95,61,2,NULL),(894,79,20,2,NULL),(895,154,34,2,NULL),(896,216,32,2,NULL),(897,98,61,2,NULL),(898,80,8,2,NULL),(899,216,41,2,NULL),(900,170,34,2,NULL),(901,102,61,2,NULL),(902,150,8,2,NULL),(903,186,34,2,NULL),(904,243,7,2,NULL),(905,105,61,2,NULL),(906,151,8,2,NULL),(907,188,34,2,NULL),(908,243,13,2,NULL),(909,110,61,2,NULL),(910,155,8,2,NULL),(911,192,34,2,NULL),(912,243,19,2,NULL),(913,2,65,2,NULL),(914,160,8,2,NULL),(915,42,57,2,NULL),(916,243,28,2,NULL),(917,3,65,2,NULL),(918,162,8,2,NULL),(919,116,57,2,NULL),(920,243,36,2,NULL),(921,5,65,2,NULL),(922,166,8,2,NULL),(923,125,57,2,NULL),(924,68,1,2,NULL),(925,6,65,2,NULL),(926,169,8,2,NULL),(927,127,57,2,NULL),(928,168,1,2,NULL),(929,7,65,2,NULL),(930,172,8,2,NULL),(931,131,57,2,NULL),(932,171,1,2,NULL),(933,20,65,2,NULL),(934,80,9,2,NULL),(935,134,57,2,NULL),(936,175,1,2,NULL),(937,27,65,2,NULL),(938,150,9,2,NULL),(939,137,57,2,NULL),(940,95,65,2,NULL),(941,151,9,2,NULL),(942,177,1,2,NULL),(943,154,57,2,NULL),(944,98,65,2,NULL),(945,181,1,2,NULL),(946,155,9,2,NULL),(947,170,57,2,NULL),(948,102,65,2,NULL),(949,160,9,2,NULL),(950,193,1,2,NULL),(951,186,57,2,NULL),(952,105,65,2,NULL),(953,201,1,2,NULL),(954,162,9,2,NULL),(955,188,57,2,NULL),(956,110,65,2,NULL),(957,166,9,2,NULL),(958,208,1,2,NULL),(959,192,57,2,NULL),(960,2,17,2,NULL),(961,169,9,2,NULL),(962,210,1,2,NULL),(963,42,64,2,NULL),(964,3,17,2,NULL),(965,172,9,2,NULL),(966,214,1,2,NULL),(967,116,64,2,NULL),(968,5,17,2,NULL),(969,223,1,2,NULL),(970,80,10,2,NULL),(971,125,64,2,NULL),(972,6,17,2,NULL),(973,150,10,2,NULL),(974,68,4,2,NULL),(975,127,64,2,NULL),(976,7,17,2,NULL),(977,151,10,2,NULL),(978,168,4,2,NULL),(979,131,64,2,NULL),(980,20,17,2,NULL),(981,155,10,2,NULL),(982,171,4,2,NULL),(983,134,64,2,NULL),(984,27,17,2,NULL),(985,160,10,2,NULL),(986,175,4,2,NULL),(987,137,64,2,NULL),(988,95,17,2,NULL),(989,162,10,2,NULL),(990,177,4,2,NULL),(991,154,64,2,NULL),(992,98,17,2,NULL),(993,166,10,2,NULL),(994,181,4,2,NULL),(995,170,64,2,NULL),(996,102,17,2,NULL),(997,169,10,2,NULL),(998,193,4,2,NULL),(999,186,64,2,NULL),(1000,105,17,2,NULL),(1001,172,10,2,NULL),(1002,201,4,2,NULL),(1003,188,64,2,NULL),(1004,110,17,2,NULL),(1005,80,50,2,NULL),(1006,208,4,2,NULL),(1007,192,64,2,NULL),(1008,68,5,2,NULL),(1009,150,50,2,NULL),(1010,210,4,2,NULL),(1011,42,69,2,NULL),(1012,168,5,2,NULL),(1013,151,50,2,NULL),(1014,214,4,2,NULL),(1015,116,69,2,NULL),(1016,171,5,2,NULL),(1017,223,4,2,NULL),(1018,155,50,2,NULL),(1019,125,69,2,NULL),(1020,175,5,2,NULL),(1021,68,21,2,NULL),(1022,160,50,2,NULL),(1023,127,69,2,NULL),(1024,177,5,2,NULL),(1025,168,21,2,NULL),(1026,162,50,2,NULL),(1027,131,69,2,NULL),(1028,181,5,2,NULL),(1029,171,21,2,NULL),(1030,166,50,2,NULL),(1031,134,69,2,NULL),(1032,193,5,2,NULL),(1033,175,21,2,NULL),(1034,169,50,2,NULL),(1035,137,69,2,NULL),(1036,201,5,2,NULL),(1037,172,50,2,NULL),(1038,177,21,2,NULL),(1039,154,69,2,NULL),(1040,208,5,2,NULL),(1041,181,21,2,NULL),(1042,80,56,2,NULL),(1043,170,69,2,NULL),(1044,210,5,2,NULL),(1045,193,21,2,NULL),(1046,150,56,2,NULL),(1047,186,69,2,NULL),(1048,214,5,2,NULL),(1049,201,21,2,NULL),(1050,151,56,2,NULL),(1051,188,69,2,NULL),(1052,223,5,2,NULL),(1053,208,21,2,NULL),(1054,155,56,2,NULL),(1055,192,69,2,NULL),(1056,38,5,2,NULL),(1057,210,21,2,NULL),(1058,160,56,2,NULL),(1059,42,89,2,NULL),(1060,2,24,2,NULL),(1061,214,21,2,NULL),(1062,162,56,2,NULL),(1063,116,89,2,NULL),(1064,3,24,2,NULL),(1065,166,56,2,NULL),(1066,223,21,2,NULL),(1067,125,89,2,NULL),(1068,5,24,2,NULL),(1069,68,44,2,NULL),(1070,169,56,2,NULL),(1071,127,89,2,NULL),(1072,6,24,2,NULL),(1073,168,44,2,NULL),(1074,172,56,2,NULL),(1075,131,89,2,NULL),(1076,7,24,2,NULL),(1077,171,44,2,NULL),(1078,80,63,2,NULL),(1079,134,89,2,NULL),(1080,20,24,2,NULL),(1081,175,44,2,NULL),(1082,150,63,2,NULL),(1083,137,89,2,NULL),(1084,177,44,2,NULL),(1085,151,63,2,NULL),(1086,154,89,2,NULL),(1087,181,44,2,NULL),(1088,155,63,2,NULL),(1089,170,89,2,NULL),(1090,160,63,2,NULL),(1091,193,44,2,NULL),(1092,27,24,2,NULL),(1093,186,89,2,NULL),(1094,162,63,2,NULL),(1095,201,44,2,NULL),(1096,95,24,2,NULL),(1097,188,89,2,NULL),(1098,166,63,2,NULL),(1099,98,24,2,NULL),(1100,208,44,2,NULL),(1101,192,89,2,NULL),(1102,102,24,2,NULL),(1103,169,63,2,NULL),(1104,210,44,2,NULL),(1105,42,91,2,NULL),(1106,172,63,2,NULL),(1107,105,24,2,NULL),(1108,214,44,2,NULL),(1109,116,91,2,NULL),(1110,110,24,2,NULL),(1111,223,44,2,NULL),(1112,80,68,2,NULL),(1113,125,91,2,NULL),(1114,2,29,2,NULL),(1115,150,68,2,NULL),(1116,127,91,2,NULL),(1117,79,17,2,NULL),(1118,3,29,2,NULL),(1119,151,68,2,NULL),(1120,131,91,2,NULL),(1121,68,8,2,NULL),(1122,5,29,2,NULL),(1123,155,68,2,NULL),(1124,134,91,2,NULL),(1125,168,8,2,NULL),(1126,6,29,2,NULL),(1127,160,68,2,NULL),(1128,137,91,2,NULL),(1129,171,8,2,NULL),(1130,7,29,2,NULL),(1131,162,68,2,NULL),(1132,154,91,2,NULL),(1133,175,8,2,NULL),(1134,20,29,2,NULL),(1135,166,68,2,NULL),(1136,170,91,2,NULL),(1137,177,8,2,NULL),(1138,27,29,2,NULL),(1139,169,68,2,NULL),(1140,186,91,2,NULL),(1141,181,8,2,NULL),(1142,95,29,2,NULL),(1143,172,68,2,NULL),(1144,188,91,2,NULL),(1145,193,8,2,NULL),(1146,98,29,2,NULL),(1147,80,11,2,NULL),(1148,192,91,2,NULL),(1149,201,8,2,NULL),(1150,102,29,2,NULL),(1151,150,11,2,NULL),(1152,42,22,2,NULL),(1153,208,8,2,NULL),(1154,105,29,2,NULL),(1155,151,11,2,NULL),(1156,116,22,2,NULL),(1157,210,8,2,NULL),(1158,110,29,2,NULL),(1159,155,11,2,NULL),(1160,125,22,2,NULL),(1161,214,8,2,NULL),(1162,2,34,2,NULL),(1163,160,11,2,NULL),(1164,127,22,2,NULL),(1165,223,8,2,NULL),(1166,3,34,2,NULL),(1167,162,11,2,NULL),(1168,131,22,2,NULL),(1169,68,9,2,NULL),(1170,5,34,2,NULL),(1171,166,11,2,NULL),(1172,134,22,2,NULL),(1173,168,9,2,NULL),(1174,6,34,2,NULL),(1175,169,11,2,NULL),(1176,137,22,2,NULL),(1177,171,9,2,NULL),(1178,7,34,2,NULL),(1179,172,11,2,NULL),(1180,154,22,2,NULL),(1181,175,9,2,NULL),(1182,20,34,2,NULL),(1183,21,20,2,NULL),(1184,170,22,2,NULL),(1185,177,9,2,NULL),(1186,27,34,2,NULL),(1187,44,20,2,NULL),(1188,186,22,2,NULL),(1189,181,9,2,NULL),(1190,95,34,2,NULL),(1191,52,20,2,NULL),(1192,188,22,2,NULL),(1193,193,9,2,NULL),(1194,98,34,2,NULL),(1195,74,20,2,NULL),(1196,192,22,2,NULL),(1197,201,9,2,NULL),(1198,102,34,2,NULL),(1199,78,20,2,NULL),(1200,124,27,2,NULL),(1201,208,9,2,NULL),(1202,105,34,2,NULL),(1203,82,20,2,NULL),(1204,128,27,2,NULL),(1205,210,9,2,NULL),(1206,110,34,2,NULL),(1207,100,20,2,NULL),(1208,143,27,2,NULL),(1209,214,9,2,NULL),(1210,2,57,2,NULL),(1211,104,20,2,NULL),(1212,144,27,2,NULL),(1213,223,9,2,NULL),(1214,3,57,2,NULL),(1215,108,20,2,NULL),(1216,152,27,2,NULL),(1217,68,10,2,NULL),(1218,5,57,2,NULL),(1219,111,20,2,NULL),(1220,176,27,2,NULL),(1221,168,10,2,NULL),(1222,6,57,2,NULL),(1223,115,20,2,NULL),(1224,184,27,2,NULL),(1225,171,10,2,NULL),(1226,7,57,2,NULL),(1227,119,20,2,NULL),(1228,244,27,2,NULL),(1229,175,10,2,NULL),(1230,20,57,2,NULL),(1231,215,20,2,NULL),(1232,247,27,2,NULL),(1233,177,10,2,NULL),(1234,27,57,2,NULL),(1235,80,14,2,NULL),(1236,248,27,2,NULL),(1237,181,10,2,NULL),(1238,95,57,2,NULL),(1239,150,14,2,NULL),(1240,251,27,2,NULL),(1241,193,10,2,NULL),(1242,98,57,2,NULL),(1243,253,27,2,NULL),(1244,201,10,2,NULL),(1245,151,14,2,NULL),(1246,102,57,2,NULL),(1247,264,27,2,NULL),(1248,208,10,2,NULL),(1249,155,14,2,NULL),(1250,105,57,2,NULL),(1251,42,32,2,NULL),(1252,210,10,2,NULL),(1253,160,14,2,NULL),(1254,110,57,2,NULL),(1255,116,32,2,NULL),(1256,162,14,2,NULL),(1257,214,10,2,NULL),(1258,2,64,2,NULL),(1259,125,32,2,NULL),(1260,223,10,2,NULL),(1261,166,14,2,NULL),(1262,3,64,2,NULL),(1263,127,32,2,NULL),(1264,5,64,2,NULL),(1265,68,50,2,NULL),(1266,169,14,2,NULL),(1267,131,32,2,NULL),(1268,6,64,2,NULL),(1269,172,14,2,NULL),(1270,168,50,2,NULL),(1271,134,32,2,NULL),(1272,7,64,2,NULL),(1273,171,50,2,NULL),(1274,137,32,2,NULL),(1275,80,15,2,NULL),(1276,20,64,2,NULL),(1277,154,32,2,NULL),(1278,175,50,2,NULL),(1279,150,15,2,NULL),(1280,27,64,2,NULL),(1281,170,32,2,NULL),(1282,177,50,2,NULL),(1283,151,15,2,NULL),(1284,95,64,2,NULL),(1285,186,32,2,NULL),(1286,181,50,2,NULL),(1287,155,15,2,NULL),(1288,98,64,2,NULL),(1289,188,32,2,NULL),(1290,193,50,2,NULL),(1291,160,15,2,NULL),(1292,102,64,2,NULL),(1293,192,32,2,NULL),(1294,201,50,2,NULL),(1295,162,15,2,NULL),(1296,105,64,2,NULL),(1297,42,40,2,NULL),(1298,166,15,2,NULL),(1299,208,50,2,NULL),(1300,110,64,2,NULL),(1301,116,40,2,NULL),(1302,210,50,2,NULL),(1303,169,15,2,NULL),(1304,2,69,2,NULL),(1305,125,40,2,NULL),(1306,214,50,2,NULL),(1307,172,15,2,NULL),(1308,3,69,2,NULL),(1309,127,40,2,NULL),(1310,80,16,2,NULL),(1311,223,50,2,NULL),(1312,5,69,2,NULL),(1313,131,40,2,NULL),(1314,150,16,2,NULL),(1315,68,56,2,NULL),(1316,6,69,2,NULL),(1317,134,40,2,NULL),(1318,168,56,2,NULL),(1319,151,16,2,NULL),(1320,7,69,2,NULL),(1321,137,40,2,NULL),(1322,171,56,2,NULL),(1323,155,16,2,NULL),(1324,20,69,2,NULL),(1325,154,40,2,NULL),(1326,160,16,2,NULL),(1327,175,56,2,NULL),(1328,27,69,2,NULL),(1329,170,40,2,NULL),(1330,177,56,2,NULL),(1331,162,16,2,NULL),(1332,95,69,2,NULL),(1333,186,40,2,NULL),(1334,181,56,2,NULL),(1335,166,16,2,NULL),(1336,98,69,2,NULL),(1337,188,40,2,NULL),(1338,193,56,2,NULL),(1339,169,16,2,NULL),(1340,102,69,2,NULL),(1341,192,40,2,NULL),(1342,201,56,2,NULL),(1343,172,16,2,NULL),(1344,105,69,2,NULL),(1345,42,43,2,NULL),(1346,208,56,2,NULL),(1347,80,52,2,NULL),(1348,110,69,2,NULL),(1349,116,43,2,NULL),(1350,150,52,2,NULL),(1351,210,56,2,NULL),(1352,2,89,2,NULL),(1353,125,43,2,NULL),(1354,151,52,2,NULL),(1355,214,56,2,NULL),(1356,3,89,2,NULL),(1357,127,43,2,NULL),(1358,155,52,2,NULL),(1359,223,56,2,NULL),(1360,5,89,2,NULL),(1361,160,52,2,NULL),(1362,68,63,2,NULL),(1363,131,43,2,NULL),(1364,6,89,2,NULL),(1365,134,43,2,NULL),(1366,162,52,2,NULL),(1367,168,63,2,NULL),(1368,7,89,2,NULL),(1369,137,43,2,NULL),(1370,171,63,2,NULL),(1371,166,52,2,NULL),(1372,20,89,2,NULL),(1373,154,43,2,NULL),(1374,175,63,2,NULL),(1375,169,52,2,NULL),(1376,27,89,2,NULL),(1377,170,43,2,NULL),(1378,177,63,2,NULL),(1379,172,52,2,NULL),(1380,95,89,2,NULL),(1381,186,43,2,NULL),(1382,181,63,2,NULL),(1383,80,60,2,NULL),(1384,98,89,2,NULL),(1385,188,43,2,NULL),(1386,150,60,2,NULL),(1387,193,63,2,NULL),(1388,102,89,2,NULL),(1389,192,43,2,NULL),(1390,151,60,2,NULL),(1391,201,63,2,NULL),(1392,105,89,2,NULL),(1393,42,55,2,NULL),(1394,155,60,2,NULL),(1395,208,63,2,NULL),(1396,110,89,2,NULL),(1397,116,55,2,NULL),(1398,210,63,2,NULL),(1399,160,60,2,NULL),(1400,2,91,2,NULL),(1401,125,55,2,NULL),(1402,162,60,2,NULL),(1403,214,63,2,NULL),(1404,3,91,2,NULL),(1405,127,55,2,NULL),(1406,223,63,2,NULL),(1407,166,60,2,NULL),(1408,5,91,2,NULL),(1409,131,55,2,NULL),(1410,169,60,2,NULL),(1411,68,68,2,NULL),(1412,6,91,2,NULL),(1413,134,55,2,NULL),(1414,172,60,2,NULL),(1415,168,68,2,NULL),(1416,7,91,2,NULL),(1417,137,55,2,NULL),(1418,171,68,2,NULL),(1419,80,75,2,NULL),(1420,20,91,2,NULL),(1421,154,55,2,NULL),(1422,150,75,2,NULL),(1423,175,68,2,NULL),(1424,27,91,2,NULL),(1425,170,55,2,NULL),(1426,177,68,2,NULL),(1427,151,75,2,NULL),(1428,95,91,2,NULL),(1429,186,55,2,NULL),(1430,155,75,2,NULL),(1431,181,68,2,NULL),(1432,98,91,2,NULL),(1433,188,55,2,NULL),(1434,193,68,2,NULL),(1435,160,75,2,NULL),(1436,102,91,2,NULL),(1437,192,55,2,NULL),(1438,201,68,2,NULL),(1439,162,75,2,NULL),(1440,105,91,2,NULL),(1441,42,62,2,NULL),(1442,208,68,2,NULL),(1443,166,75,2,NULL),(1444,110,91,2,NULL),(1445,116,62,2,NULL),(1446,210,68,2,NULL),(1447,169,75,2,NULL),(1448,2,22,2,NULL),(1449,125,62,2,NULL),(1450,214,68,2,NULL),(1451,172,75,2,NULL),(1452,3,22,2,NULL),(1453,127,62,2,NULL),(1454,223,68,2,NULL),(1455,80,83,2,NULL),(1456,5,22,2,NULL),(1457,131,62,2,NULL),(1458,68,11,2,NULL),(1459,150,83,2,NULL),(1460,6,22,2,NULL),(1461,134,62,2,NULL),(1462,168,11,2,NULL),(1463,151,83,2,NULL),(1464,7,22,2,NULL),(1465,137,62,2,NULL),(1466,171,11,2,NULL),(1467,155,83,2,NULL),(1468,20,22,2,NULL),(1469,154,62,2,NULL),(1470,175,11,2,NULL),(1471,160,83,2,NULL),(1472,27,22,2,NULL),(1473,170,62,2,NULL),(1474,177,11,2,NULL),(1475,162,83,2,NULL),(1476,95,22,2,NULL),(1477,186,62,2,NULL),(1478,166,83,2,NULL),(1479,181,11,2,NULL),(1480,98,22,2,NULL),(1481,188,62,2,NULL),(1482,169,83,2,NULL),(1483,193,11,2,NULL),(1484,102,22,2,NULL),(1485,192,62,2,NULL),(1486,172,83,2,NULL),(1487,201,11,2,NULL),(1488,105,22,2,NULL),(1489,42,72,2,NULL),(1490,208,11,2,NULL),(1491,80,25,2,NULL),(1492,110,22,2,NULL),(1493,116,72,2,NULL),(1494,210,11,2,NULL),(1495,150,25,2,NULL),(1496,124,5,2,NULL),(1497,125,72,2,NULL),(1498,214,11,2,NULL),(1499,151,25,2,NULL),(1500,128,5,2,NULL),(1501,127,72,2,NULL),(1502,223,11,2,NULL),(1503,155,25,2,NULL),(1504,143,5,2,NULL),(1505,131,72,2,NULL),(1506,21,17,2,NULL),(1507,160,25,2,NULL),(1508,144,5,2,NULL),(1509,134,72,2,NULL),(1510,44,17,2,NULL),(1511,162,25,2,NULL),(1512,152,5,2,NULL),(1513,137,72,2,NULL),(1514,166,25,2,NULL),(1515,52,17,2,NULL),(1516,176,5,2,NULL),(1517,154,72,2,NULL),(1518,169,25,2,NULL),(1519,74,17,2,NULL),(1520,184,5,2,NULL),(1521,170,72,2,NULL),(1522,78,17,2,NULL),(1523,172,25,2,NULL),(1524,244,5,2,NULL),(1525,186,72,2,NULL),(1526,82,17,2,NULL),(1527,80,42,2,NULL),(1528,247,5,2,NULL),(1529,188,72,2,NULL),(1530,100,17,2,NULL),(1531,150,42,2,NULL),(1532,248,5,2,NULL),(1533,192,72,2,NULL),(1534,104,17,2,NULL),(1535,151,42,2,NULL),(1536,251,5,2,NULL),(1537,42,80,2,NULL),(1538,108,17,2,NULL),(1539,155,42,2,NULL),(1540,253,5,2,NULL),(1541,116,80,2,NULL),(1542,111,17,2,NULL),(1543,160,42,2,NULL),(1544,264,5,2,NULL),(1545,125,80,2,NULL),(1546,162,42,2,NULL),(1547,115,17,2,NULL),(1548,2,32,2,NULL),(1549,127,80,2,NULL),(1550,119,17,2,NULL),(1551,166,42,2,NULL),(1552,3,32,2,NULL),(1553,131,80,2,NULL),(1554,215,17,2,NULL),(1555,169,42,2,NULL),(1556,5,32,2,NULL),(1557,134,80,2,NULL),(1558,68,14,2,NULL),(1559,172,42,2,NULL),(1560,6,32,2,NULL),(1561,137,80,2,NULL),(1562,80,46,2,NULL),(1563,168,14,2,NULL),(1564,7,32,2,NULL),(1565,154,80,2,NULL),(1566,150,46,2,NULL),(1567,171,14,2,NULL),(1568,20,32,2,NULL),(1569,170,80,2,NULL),(1570,151,46,2,NULL),(1571,175,14,2,NULL),(1572,27,32,2,NULL),(1573,186,80,2,NULL),(1574,155,46,2,NULL),(1575,177,14,2,NULL),(1576,95,32,2,NULL),(1577,188,80,2,NULL),(1578,160,46,2,NULL),(1579,181,14,2,NULL),(1580,98,32,2,NULL),(1581,192,80,2,NULL),(1582,162,46,2,NULL),(1583,193,14,2,NULL),(1584,102,32,2,NULL),(1585,42,87,2,NULL),(1586,166,46,2,NULL),(1587,201,14,2,NULL),(1588,105,32,2,NULL),(1589,116,87,2,NULL),(1590,169,46,2,NULL),(1591,208,14,2,NULL),(1592,110,32,2,NULL),(1593,125,87,2,NULL),(1594,172,46,2,NULL),(1595,210,14,2,NULL),(1596,2,40,2,NULL),(1597,127,87,2,NULL),(1598,214,14,2,NULL),(1599,80,48,2,NULL),(1600,3,40,2,NULL),(1601,131,87,2,NULL),(1602,150,48,2,NULL),(1603,223,14,2,NULL),(1604,5,40,2,NULL),(1605,134,87,2,NULL),(1606,151,48,2,NULL),(1607,68,15,2,NULL),(1608,6,40,2,NULL),(1609,137,87,2,NULL),(1610,168,15,2,NULL),(1611,155,48,2,NULL),(1612,7,40,2,NULL),(1613,154,87,2,NULL),(1614,171,15,2,NULL),(1615,160,48,2,NULL),(1616,20,40,2,NULL),(1617,170,87,2,NULL),(1618,175,15,2,NULL),(1619,162,48,2,NULL),(1620,27,40,2,NULL),(1621,186,87,2,NULL),(1622,177,15,2,NULL),(1623,166,48,2,NULL),(1624,95,40,2,NULL),(1625,188,87,2,NULL),(1626,181,15,2,NULL),(1627,169,48,2,NULL),(1628,98,40,2,NULL),(1629,192,87,2,NULL),(1630,193,15,2,NULL),(1631,172,48,2,NULL),(1632,102,40,2,NULL),(1633,206,27,2,NULL),(1634,201,15,2,NULL),(1635,105,40,2,NULL),(1636,42,41,2,NULL),(1637,208,15,2,NULL),(1638,80,59,2,NULL),(1639,110,40,2,NULL),(1640,116,41,2,NULL),(1641,210,15,2,NULL),(1642,150,59,2,NULL),(1643,2,43,2,NULL),(1644,125,41,2,NULL),(1645,214,15,2,NULL),(1646,151,59,2,NULL),(1647,3,43,2,NULL),(1648,223,15,2,NULL),(1649,127,41,2,NULL),(1650,155,59,2,NULL),(1651,5,43,2,NULL),(1652,131,41,2,NULL),(1653,68,16,2,NULL),(1654,160,59,2,NULL),(1655,6,43,2,NULL),(1656,168,16,2,NULL),(1657,134,41,2,NULL),(1658,162,59,2,NULL),(1659,7,43,2,NULL),(1660,137,41,2,NULL),(1661,171,16,2,NULL),(1662,166,59,2,NULL),(1663,20,43,2,NULL),(1664,175,16,2,NULL),(1665,169,59,2,NULL),(1666,154,41,2,NULL),(1667,27,43,2,NULL),(1668,170,41,2,NULL),(1669,177,16,2,NULL),(1670,172,59,2,NULL),(1671,95,43,2,NULL),(1672,181,16,2,NULL),(1673,186,41,2,NULL),(1674,80,61,2,NULL),(1675,98,43,2,NULL),(1676,193,16,2,NULL),(1677,188,41,2,NULL),(1678,150,61,2,NULL),(1679,102,43,2,NULL),(1680,192,41,2,NULL),(1681,201,16,2,NULL),(1682,151,61,2,NULL),(1683,105,43,2,NULL),(1684,42,45,2,NULL),(1685,208,16,2,NULL),(1686,155,61,2,NULL),(1687,110,43,2,NULL),(1688,116,45,2,NULL),(1689,210,16,2,NULL),(1690,160,61,2,NULL),(1691,2,55,2,NULL),(1692,125,45,2,NULL),(1693,162,61,2,NULL),(1694,214,16,2,NULL),(1695,3,55,2,NULL),(1696,127,45,2,NULL),(1697,166,61,2,NULL),(1698,223,16,2,NULL),(1699,5,55,2,NULL),(1700,131,45,2,NULL),(1701,68,52,2,NULL),(1702,169,61,2,NULL),(1703,6,55,2,NULL),(1704,134,45,2,NULL),(1705,168,52,2,NULL),(1706,172,61,2,NULL),(1707,7,55,2,NULL),(1708,137,45,2,NULL),(1709,80,65,2,NULL),(1710,171,52,2,NULL),(1711,20,55,2,NULL),(1712,154,45,2,NULL),(1713,175,52,2,NULL),(1714,150,65,2,NULL),(1715,27,55,2,NULL),(1716,170,45,2,NULL),(1717,151,65,2,NULL),(1718,177,52,2,NULL),(1719,95,55,2,NULL),(1720,186,45,2,NULL),(1721,181,52,2,NULL),(1722,155,65,2,NULL),(1723,98,55,2,NULL),(1724,188,45,2,NULL),(1725,193,52,2,NULL),(1726,160,65,2,NULL),(1727,102,55,2,NULL),(1728,192,45,2,NULL),(1729,162,65,2,NULL),(1730,201,52,2,NULL),(1731,105,55,2,NULL),(1732,42,47,2,NULL),(1733,208,52,2,NULL),(1734,166,65,2,NULL),(1735,110,55,2,NULL),(1736,116,47,2,NULL),(1737,169,65,2,NULL),(1738,210,52,2,NULL),(1739,2,62,2,NULL),(1740,125,47,2,NULL),(1741,214,52,2,NULL),(1742,172,65,2,NULL),(1743,3,62,2,NULL),(1744,127,47,2,NULL),(1745,223,52,2,NULL),(1746,80,17,2,NULL),(1747,5,62,2,NULL),(1748,131,47,2,NULL),(1749,150,17,2,NULL),(1750,68,60,2,NULL),(1751,6,62,2,NULL),(1752,134,47,2,NULL),(1753,168,60,2,NULL),(1754,151,17,2,NULL),(1755,7,62,2,NULL),(1756,137,47,2,NULL),(1757,155,17,2,NULL),(1758,171,60,2,NULL),(1759,20,62,2,NULL),(1760,154,47,2,NULL),(1761,160,17,2,NULL),(1762,175,60,2,NULL),(1763,27,62,2,NULL),(1764,170,47,2,NULL),(1765,162,17,2,NULL),(1766,177,60,2,NULL),(1767,95,62,2,NULL),(1768,186,47,2,NULL),(1769,166,17,2,NULL),(1770,181,60,2,NULL),(1771,98,62,2,NULL),(1772,188,47,2,NULL),(1773,169,17,2,NULL),(1774,193,60,2,NULL),(1775,102,62,2,NULL),(1776,192,47,2,NULL),(1777,172,17,2,NULL),(1778,201,60,2,NULL),(1779,105,62,2,NULL),(1780,42,67,2,NULL),(1781,208,60,2,NULL),(1782,68,20,2,NULL),(1783,110,62,2,NULL),(1784,116,67,2,NULL),(1785,210,60,2,NULL),(1786,168,20,2,NULL),(1787,2,72,2,NULL),(1788,125,67,2,NULL),(1789,214,60,2,NULL),(1790,171,20,2,NULL),(1791,3,72,2,NULL),(1792,127,67,2,NULL),(1793,223,60,2,NULL),(1794,175,20,2,NULL),(1795,5,72,2,NULL),(1796,131,67,2,NULL),(1797,68,75,2,NULL),(1798,177,20,2,NULL),(1799,6,72,2,NULL),(1800,134,67,2,NULL),(1801,168,75,2,NULL),(1802,181,20,2,NULL),(1803,7,72,2,NULL),(1804,137,67,2,NULL),(1805,171,75,2,NULL),(1806,193,20,2,NULL),(1807,20,72,2,NULL),(1808,154,67,2,NULL),(1809,175,75,2,NULL),(1810,201,20,2,NULL),(1811,27,72,2,NULL),(1812,170,67,2,NULL),(1813,177,75,2,NULL),(1814,208,20,2,NULL),(1815,95,72,2,NULL),(1816,186,67,2,NULL),(1817,210,20,2,NULL),(1818,181,75,2,NULL),(1819,98,72,2,NULL),(1820,188,67,2,NULL),(1821,214,20,2,NULL),(1822,193,75,2,NULL),(1823,102,72,2,NULL),(1824,192,67,2,NULL),(1825,223,20,2,NULL),(1826,201,75,2,NULL),(1827,105,72,2,NULL),(1828,42,77,2,NULL),(1829,208,75,2,NULL),(1830,38,20,2,NULL),(1831,110,72,2,NULL),(1832,116,77,2,NULL),(1833,210,75,2,NULL),(1834,80,24,2,NULL),(1835,2,80,2,NULL),(1836,125,77,2,NULL),(1837,214,75,2,NULL),(1838,150,24,2,NULL),(1839,3,80,2,NULL),(1840,127,77,2,NULL),(1841,223,75,2,NULL),(1842,151,24,2,NULL),(1843,5,80,2,NULL),(1844,131,77,2,NULL),(1845,68,83,2,NULL),(1846,155,24,2,NULL),(1847,6,80,2,NULL),(1848,134,77,2,NULL),(1849,168,83,2,NULL),(1850,160,24,2,NULL),(1851,7,80,2,NULL),(1852,137,77,2,NULL),(1853,171,83,2,NULL),(1854,162,24,2,NULL),(1855,20,80,2,NULL),(1856,154,77,2,NULL),(1857,175,83,2,NULL),(1858,166,24,2,NULL),(1859,27,80,2,NULL),(1860,170,77,2,NULL),(1861,177,83,2,NULL),(1862,169,24,2,NULL),(1863,95,80,2,NULL),(1864,186,77,2,NULL),(1865,181,83,2,NULL),(1866,172,24,2,NULL),(1867,98,80,2,NULL),(1868,188,77,2,NULL),(1869,193,83,2,NULL),(1870,80,29,2,NULL),(1871,102,80,2,NULL),(1872,192,77,2,NULL),(1873,201,83,2,NULL),(1874,150,29,2,NULL),(1875,105,80,2,NULL),(1876,42,84,2,NULL),(1877,208,83,2,NULL),(1878,151,29,2,NULL),(1879,110,80,2,NULL),(1880,116,84,2,NULL),(1881,210,83,2,NULL),(1882,155,29,2,NULL),(1883,2,87,2,NULL),(1884,125,84,2,NULL),(1885,214,83,2,NULL),(1886,160,29,2,NULL),(1887,3,87,2,NULL),(1888,127,84,2,NULL),(1889,223,83,2,NULL),(1890,162,29,2,NULL),(1891,5,87,2,NULL),(1892,131,84,2,NULL),(1893,166,29,2,NULL),(1894,6,87,2,NULL),(1895,68,25,2,NULL),(1896,134,84,2,NULL),(1897,169,29,2,NULL),(1898,7,87,2,NULL),(1899,168,25,2,NULL),(1900,137,84,2,NULL),(1901,172,29,2,NULL),(1902,20,87,2,NULL),(1903,171,25,2,NULL),(1904,154,84,2,NULL),(1905,80,34,2,NULL),(1906,27,87,2,NULL),(1907,175,25,2,NULL),(1908,170,84,2,NULL),(1909,150,34,2,NULL),(1910,95,87,2,NULL),(1911,177,25,2,NULL),(1912,186,84,2,NULL),(1913,151,34,2,NULL),(1914,98,87,2,NULL),(1915,181,25,2,NULL),(1916,188,84,2,NULL),(1917,155,34,2,NULL),(1918,102,87,2,NULL),(1919,192,84,2,NULL),(1920,160,34,2,NULL),(1921,193,25,2,NULL),(1922,105,87,2,NULL),(1923,42,86,2,NULL),(1924,110,87,2,NULL),(1925,162,34,2,NULL),(1926,201,25,2,NULL),(1927,116,86,2,NULL),(1928,208,25,2,NULL),(1929,166,34,2,NULL),(1930,206,5,2,NULL),(1931,125,86,2,NULL),(1932,210,25,2,NULL),(1933,169,34,2,NULL),(1934,127,86,2,NULL),(1935,2,41,2,NULL),(1936,214,25,2,NULL),(1937,131,86,2,NULL),(1938,172,34,2,NULL),(1939,223,25,2,NULL),(1940,3,41,2,NULL),(1941,134,86,2,NULL),(1942,68,42,2,NULL),(1943,5,41,2,NULL),(1944,80,57,2,NULL),(1945,137,86,2,NULL),(1946,150,57,2,NULL),(1947,168,42,2,NULL),(1948,6,41,2,NULL),(1949,154,86,2,NULL),(1950,7,41,2,NULL),(1951,171,42,2,NULL),(1952,151,57,2,NULL),(1953,170,86,2,NULL),(1954,20,41,2,NULL),(1955,175,42,2,NULL),(1956,155,57,2,NULL),(1957,186,86,2,NULL),(1958,177,42,2,NULL),(1959,27,41,2,NULL),(1960,160,57,2,NULL),(1961,188,86,2,NULL),(1962,162,57,2,NULL),(1963,95,41,2,NULL),(1964,181,42,2,NULL),(1965,192,86,2,NULL),(1966,193,42,2,NULL),(1967,98,41,2,NULL),(1968,166,57,2,NULL),(1969,42,88,2,NULL),(1970,102,41,2,NULL),(1971,201,42,2,NULL),(1972,169,57,2,NULL),(1973,116,88,2,NULL),(1974,208,42,2,NULL),(1975,105,41,2,NULL),(1976,172,57,2,NULL),(1977,125,88,2,NULL),(1978,110,41,2,NULL),(1979,210,42,2,NULL),(1980,80,64,2,NULL),(1981,127,88,2,NULL),(1982,214,42,2,NULL),(1983,2,45,2,NULL),(1984,150,64,2,NULL),(1985,131,88,2,NULL),(1986,3,45,2,NULL),(1987,223,42,2,NULL),(1988,151,64,2,NULL),(1989,134,88,2,NULL),(1990,5,45,2,NULL),(1991,155,64,2,NULL),(1992,68,46,2,NULL),(1993,137,88,2,NULL),(1994,6,45,2,NULL),(1995,168,46,2,NULL),(1996,160,64,2,NULL),(1997,154,88,2,NULL),(1998,7,45,2,NULL),(1999,162,64,2,NULL),(2000,171,46,2,NULL),(2001,170,88,2,NULL),(2002,20,45,2,NULL),(2003,166,64,2,NULL),(2004,175,46,2,NULL),(2005,186,88,2,NULL),(2006,27,45,2,NULL),(2007,177,46,2,NULL),(2008,169,64,2,NULL),(2009,188,88,2,NULL),(2010,95,45,2,NULL),(2011,181,46,2,NULL),(2012,172,64,2,NULL),(2013,192,88,2,NULL),(2014,98,45,2,NULL),(2015,193,46,2,NULL),(2016,80,69,2,NULL),(2017,206,1,2,NULL),(2018,102,45,2,NULL),(2019,201,46,2,NULL),(2020,150,69,2,NULL),(2021,206,4,2,NULL),(2022,105,45,2,NULL),(2023,208,46,2,NULL),(2024,151,69,2,NULL),(2025,206,21,2,NULL),(2026,110,45,2,NULL),(2027,210,46,2,NULL),(2028,155,69,2,NULL),(2029,206,44,2,NULL),(2030,2,47,2,NULL),(2031,214,46,2,NULL),(2032,160,69,2,NULL),(2033,206,8,2,NULL),(2034,3,47,2,NULL),(2035,223,46,2,NULL),(2036,162,69,2,NULL),(2037,206,9,2,NULL),(2038,5,47,2,NULL),(2039,166,69,2,NULL),(2040,68,48,2,NULL),(2041,206,10,2,NULL),(2042,6,47,2,NULL),(2043,169,69,2,NULL),(2044,168,48,2,NULL),(2045,206,50,2,NULL),(2046,7,47,2,NULL),(2047,171,48,2,NULL),(2048,172,69,2,NULL),(2049,206,56,2,NULL),(2050,20,47,2,NULL),(2051,175,48,2,NULL),(2052,80,89,2,NULL),(2053,206,63,2,NULL),(2054,150,89,2,NULL),(2055,27,47,2,NULL),(2056,177,48,2,NULL),(2057,206,68,2,NULL),(2058,95,47,2,NULL),(2059,181,48,2,NULL),(2060,151,89,2,NULL),(2061,206,11,2,NULL),(2062,98,47,2,NULL),(2063,193,48,2,NULL),(2064,155,89,2,NULL),(2065,206,14,2,NULL),(2066,102,47,2,NULL),(2067,201,48,2,NULL),(2068,160,89,2,NULL),(2069,206,15,2,NULL),(2070,208,48,2,NULL),(2071,105,47,2,NULL),(2072,162,89,2,NULL),(2073,206,16,2,NULL),(2074,166,89,2,NULL),(2075,110,47,2,NULL),(2076,210,48,2,NULL),(2077,206,52,2,NULL),(2078,2,67,2,NULL),(2079,214,48,2,NULL),(2080,169,89,2,NULL),(2081,206,60,2,NULL),(2082,3,67,2,NULL),(2083,223,48,2,NULL),(2084,172,89,2,NULL),(2085,206,75,2,NULL),(2086,5,67,2,NULL),(2087,68,59,2,NULL),(2088,80,91,2,NULL),(2089,206,83,2,NULL),(2090,6,67,2,NULL),(2091,168,59,2,NULL),(2092,150,91,2,NULL),(2093,206,20,2,NULL),(2094,7,67,2,NULL),(2095,171,59,2,NULL),(2096,151,91,2,NULL),(2097,206,25,2,NULL),(2098,20,67,2,NULL),(2099,175,59,2,NULL),(2100,155,91,2,NULL),(2101,206,42,2,NULL),(2102,27,67,2,NULL),(2103,177,59,2,NULL),(2104,160,91,2,NULL),(2105,206,46,2,NULL),(2106,95,67,2,NULL),(2107,181,59,2,NULL),(2108,162,91,2,NULL),(2109,206,48,2,NULL),(2110,98,67,2,NULL),(2111,193,59,2,NULL),(2112,166,91,2,NULL),(2113,206,59,2,NULL),(2114,102,67,2,NULL),(2115,201,59,2,NULL),(2116,169,91,2,NULL),(2117,206,61,2,NULL),(2118,105,67,2,NULL),(2119,208,59,2,NULL),(2120,172,91,2,NULL),(2121,206,65,2,NULL),(2122,110,67,2,NULL),(2123,210,59,2,NULL),(2124,80,22,2,NULL),(2125,206,17,2,NULL),(2126,2,77,2,NULL),(2127,214,59,2,NULL),(2128,150,22,2,NULL),(2129,206,24,2,NULL),(2130,151,22,2,NULL),(2131,3,77,2,NULL),(2132,223,59,2,NULL),(2133,206,29,2,NULL),(2134,5,77,2,NULL),(2135,155,22,2,NULL),(2136,68,61,2,NULL),(2137,206,34,2,NULL),(2138,6,77,2,NULL),(2139,168,61,2,NULL),(2140,160,22,2,NULL),(2141,206,57,2,NULL),(2142,7,77,2,NULL),(2143,171,61,2,NULL),(2144,162,22,2,NULL),(2145,206,64,2,NULL),(2146,20,77,2,NULL),(2147,175,61,2,NULL),(2148,166,22,2,NULL),(2149,206,69,2,NULL),(2150,27,77,2,NULL),(2151,177,61,2,NULL),(2152,169,22,2,NULL),(2153,206,89,2,NULL),(2154,95,77,2,NULL),(2155,172,22,2,NULL),(2156,181,61,2,NULL),(2157,206,91,2,NULL),(2158,98,77,2,NULL),(2159,124,20,2,NULL),(2160,193,61,2,NULL),(2161,206,22,2,NULL),(2162,102,77,2,NULL),(2163,201,61,2,NULL),(2164,128,20,2,NULL),(2165,206,32,2,NULL),(2166,208,61,2,NULL),(2167,105,77,2,NULL),(2168,143,20,2,NULL),(2169,206,40,2,NULL),(2170,110,77,2,NULL),(2171,210,61,2,NULL),(2172,144,20,2,NULL),(2173,206,43,2,NULL),(2174,2,84,2,NULL),(2175,214,61,2,NULL),(2176,152,20,2,NULL),(2177,206,55,2,NULL),(2178,3,84,2,NULL),(2179,223,61,2,NULL),(2180,176,20,2,NULL),(2181,206,62,2,NULL),(2182,5,84,2,NULL),(2183,68,65,2,NULL),(2184,184,20,2,NULL),(2185,206,72,2,NULL),(2186,6,84,2,NULL),(2187,168,65,2,NULL),(2188,244,20,2,NULL),(2189,206,80,2,NULL),(2190,7,84,2,NULL),(2191,171,65,2,NULL),(2192,247,20,2,NULL),(2193,206,87,2,NULL),(2194,20,84,2,NULL),(2195,175,65,2,NULL),(2196,248,20,2,NULL),(2197,206,41,2,NULL),(2198,27,84,2,NULL),(2199,177,65,2,NULL),(2200,251,20,2,NULL),(2201,206,45,2,NULL),(2202,95,84,2,NULL),(2203,181,65,2,NULL),(2204,253,20,2,NULL),(2205,206,47,2,NULL),(2206,98,84,2,NULL),(2207,264,20,2,NULL),(2208,193,65,2,NULL),(2209,206,67,2,NULL),(2210,102,84,2,NULL),(2211,80,32,2,NULL),(2212,201,65,2,NULL),(2213,206,77,2,NULL),(2214,105,84,2,NULL),(2215,208,65,2,NULL),(2216,150,32,2,NULL),(2217,206,84,2,NULL),(2218,110,84,2,NULL),(2219,210,65,2,NULL),(2220,151,32,2,NULL),(2221,206,86,2,NULL),(2222,2,86,2,NULL),(2223,214,65,2,NULL),(2224,155,32,2,NULL),(2225,206,88,2,NULL),(2226,3,86,2,NULL),(2227,223,65,2,NULL),(2228,160,32,2,NULL),(2229,5,86,2,NULL),(2230,38,17,2,NULL),(2231,162,32,2,NULL),(2232,79,41,2,NULL),(2233,6,86,2,NULL),(2234,68,24,2,NULL),(2235,21,41,2,NULL),(2236,166,32,2,NULL),(2237,7,86,2,NULL),(2238,44,41,2,NULL),(2239,168,24,2,NULL),(2240,169,32,2,NULL),(2241,20,86,2,NULL),(2242,52,41,2,NULL),(2243,171,24,2,NULL),(2244,172,32,2,NULL),(2245,27,86,2,NULL),(2246,74,41,2,NULL),(2247,175,24,2,NULL),(2248,80,40,2,NULL),(2249,95,86,2,NULL),(2250,150,40,2,NULL),(2251,78,41,2,NULL),(2252,177,24,2,NULL),(2253,98,86,2,NULL),(2254,82,41,2,NULL),(2255,151,40,2,NULL),(2256,181,24,2,NULL),(2257,102,86,2,NULL),(2258,155,40,2,NULL),(2259,100,41,2,NULL),(2260,193,24,2,NULL),(2261,105,86,2,NULL),(2262,104,41,2,NULL),(2263,160,40,2,NULL),(2264,201,24,2,NULL),(2265,110,86,2,NULL),(2266,108,41,2,NULL),(2267,162,40,2,NULL),(2268,208,24,2,NULL),(2269,2,88,2,NULL),(2270,166,40,2,NULL),(2271,111,41,2,NULL),(2272,210,24,2,NULL),(2273,3,88,2,NULL),(2274,115,41,2,NULL),(2275,169,40,2,NULL),(2276,214,24,2,NULL),(2277,5,88,2,NULL),(2278,119,41,2,NULL),(2279,172,40,2,NULL),(2280,223,24,2,NULL),(2281,6,88,2,NULL),(2282,215,41,2,NULL),(2283,80,43,2,NULL),(2284,68,29,2,NULL),(2285,7,88,2,NULL),(2286,150,43,2,NULL),(2287,80,41,2,NULL),(2288,168,29,2,NULL),(2289,20,88,2,NULL),(2290,171,29,2,NULL),(2291,150,41,2,NULL),(2292,151,43,2,NULL),(2293,27,88,2,NULL),(2294,151,41,2,NULL),(2295,175,29,2,NULL),(2296,155,43,2,NULL),(2297,95,88,2,NULL),(2298,177,29,2,NULL),(2299,155,41,2,NULL),(2300,160,43,2,NULL),(2301,98,88,2,NULL),(2302,181,29,2,NULL),(2303,160,41,2,NULL),(2304,162,43,2,NULL),(2305,102,88,2,NULL),(2306,193,29,2,NULL),(2307,166,43,2,NULL),(2308,162,41,2,NULL),(2309,105,88,2,NULL),(2310,201,29,2,NULL),(2311,166,41,2,NULL),(2312,169,43,2,NULL),(2313,110,88,2,NULL),(2314,169,41,2,NULL),(2315,208,29,2,NULL),(2316,172,43,2,NULL),(2317,79,1,2,NULL),(2318,210,29,2,NULL),(2319,172,41,2,NULL),(2320,80,55,2,NULL),(2321,79,4,2,NULL),(2322,214,29,2,NULL),(2323,68,41,2,NULL),(2324,150,55,2,NULL),(2325,79,21,2,NULL),(2326,223,29,2,NULL),(2327,168,41,2,NULL),(2328,151,55,2,NULL),(2329,79,44,2,NULL),(2330,171,41,2,NULL),(2331,68,34,2,NULL),(2332,155,55,2,NULL),(2333,79,8,2,NULL),(2334,168,34,2,NULL),(2335,175,41,2,NULL),(2336,160,55,2,NULL),(2337,79,9,2,NULL),(2338,171,34,2,NULL),(2339,177,41,2,NULL),(2340,162,55,2,NULL),(2341,79,10,2,NULL),(2342,175,34,2,NULL),(2343,181,41,2,NULL),(2344,166,55,2,NULL),(2345,79,50,2,NULL),(2346,193,41,2,NULL),(2347,177,34,2,NULL),(2348,169,55,2,NULL),(2349,79,56,2,NULL),(2350,181,34,2,NULL),(2351,201,41,2,NULL),(2352,172,55,2,NULL),(2353,79,63,2,NULL),(2354,208,41,2,NULL),(2355,193,34,2,NULL),(2356,80,62,2,NULL),(2357,79,68,2,NULL),(2358,150,62,2,NULL),(2359,210,41,2,NULL),(2360,201,34,2,NULL),(2361,79,11,2,NULL),(2362,151,62,2,NULL),(2363,214,41,2,NULL),(2364,208,34,2,NULL),(2365,79,14,2,NULL),(2366,210,34,2,NULL),(2367,223,41,2,NULL),(2368,155,62,2,NULL),(2369,79,15,2,NULL),(2370,38,41,2,NULL),(2371,214,34,2,NULL),(2372,160,62,2,NULL),(2373,79,16,2,NULL),(2374,223,34,2,NULL),(2375,124,41,2,NULL),(2376,162,62,2,NULL),(2377,79,52,2,NULL),(2378,68,57,2,NULL),(2379,166,62,2,NULL),(2380,128,41,2,NULL),(2381,79,60,2,NULL),(2382,143,41,2,NULL),(2383,168,57,2,NULL),(2384,169,62,2,NULL),(2385,79,75,2,NULL),(2386,171,57,2,NULL),(2387,172,62,2,NULL),(2388,144,41,2,NULL),(2389,79,83,2,NULL),(2390,175,57,2,NULL),(2391,152,41,2,NULL),(2392,80,72,2,NULL),(2393,79,25,2,NULL),(2394,176,41,2,NULL),(2395,177,57,2,NULL),(2396,79,42,2,NULL),(2397,181,57,2,NULL),(2398,184,41,2,NULL),(2399,79,46,2,NULL),(2400,150,72,2,NULL),(2401,244,41,2,NULL),(2402,193,57,2,NULL),(2403,79,48,2,NULL),(2404,247,41,2,NULL),(2405,201,57,2,NULL),(2406,151,72,2,NULL),(2407,79,59,2,NULL),(2408,208,57,2,NULL),(2409,155,72,2,NULL),(2410,248,41,2,NULL),(2411,79,61,2,NULL),(2412,160,72,2,NULL),(2413,251,41,2,NULL),(2414,210,57,2,NULL),(2415,79,65,2,NULL),(2416,214,57,2,NULL),(2417,253,41,2,NULL),(2418,162,72,2,NULL),(2419,79,24,2,NULL),(2420,223,57,2,NULL),(2421,264,41,2,NULL),(2422,166,72,2,NULL),(2423,79,29,2,NULL),(2424,68,64,2,NULL),(2425,169,72,2,NULL),(2426,79,34,2,NULL),(2427,172,72,2,NULL),(2428,168,64,2,NULL),(2429,79,45,2,NULL),(2430,79,57,2,NULL),(2431,21,45,2,NULL),(2432,80,80,2,NULL),(2433,79,64,2,NULL),(2434,44,45,2,NULL),(2435,150,80,2,NULL),(2436,79,69,2,NULL),(2437,171,64,2,NULL),(2438,52,45,2,NULL),(2439,151,80,2,NULL),(2440,79,89,2,NULL),(2441,74,45,2,NULL),(2442,155,80,2,NULL),(2443,175,64,2,NULL),(2444,79,91,2,NULL),(2445,78,45,2,NULL),(2446,177,64,2,NULL),(2447,160,80,2,NULL),(2448,79,22,2,NULL),(2449,82,45,2,NULL),(2450,162,80,2,NULL),(2451,181,64,2,NULL),(2452,79,32,2,NULL),(2453,100,45,2,NULL),(2454,193,64,2,NULL),(2455,166,80,2,NULL),(2456,79,40,2,NULL),(2457,104,45,2,NULL),(2458,201,64,2,NULL),(2459,169,80,2,NULL),(2460,79,43,2,NULL),(2461,108,45,2,NULL),(2462,172,80,2,NULL),(2463,208,64,2,NULL),(2464,79,55,2,NULL),(2465,111,45,2,NULL),(2466,80,87,2,NULL),(2467,210,64,2,NULL),(2468,79,62,2,NULL),(2469,115,45,2,NULL),(2470,214,64,2,NULL),(2471,150,87,2,NULL),(2472,79,72,2,NULL),(2473,119,45,2,NULL),(2474,151,87,2,NULL),(2475,223,64,2,NULL),(2476,79,80,2,NULL),(2477,215,45,2,NULL),(2478,68,69,2,NULL),(2479,155,87,2,NULL),(2480,79,87,2,NULL),(2481,80,45,2,NULL),(2482,160,87,2,NULL),(2483,168,69,2,NULL),(2484,79,47,2,NULL),(2485,150,45,2,NULL),(2486,162,87,2,NULL),(2487,171,69,2,NULL),(2488,79,67,2,NULL),(2489,151,45,2,NULL),(2490,166,87,2,NULL),(2491,175,69,2,NULL),(2492,79,77,2,NULL),(2493,155,45,2,NULL),(2494,169,87,2,NULL),(2495,177,69,2,NULL),(2496,79,84,2,NULL),(2497,160,45,2,NULL),(2498,172,87,2,NULL),(2499,181,69,2,NULL),(2500,79,86,2,NULL),(2501,162,45,2,NULL),(2502,193,69,2,NULL),(2503,166,45,2,NULL),(2504,79,88,2,NULL),(2505,201,69,2,NULL),(2506,169,45,2,NULL),(2507,169,45,2,NULL),(2508,21,8,2,NULL),(2509,208,69,2,NULL),(2510,172,45,2,NULL),(2511,172,45,2,NULL),(2512,44,8,2,NULL),(2513,210,69,2,NULL),(2514,68,45,2,NULL),(2515,214,69,2,NULL),(2516,52,8,2,NULL),(2517,80,47,2,NULL),(2518,168,45,2,NULL),(2519,223,69,2,NULL),(2520,171,45,2,NULL),(2521,150,47,2,NULL),(2522,74,8,2,NULL),(2523,68,89,2,NULL),(2524,175,45,2,NULL),(2525,151,47,2,NULL),(2526,78,8,2,NULL),(2527,168,89,2,NULL),(2528,177,45,2,NULL),(2529,155,47,2,NULL),(2530,82,8,2,NULL),(2531,171,89,2,NULL),(2532,181,45,2,NULL),(2533,160,47,2,NULL),(2534,100,8,2,NULL),(2535,175,89,2,NULL),(2536,193,45,2,NULL),(2537,162,47,2,NULL),(2538,104,8,2,NULL),(2539,177,89,2,NULL),(2540,201,45,2,NULL),(2541,108,8,2,NULL),(2542,166,47,2,NULL),(2543,181,89,2,NULL),(2544,208,45,2,NULL),(2545,169,47,2,NULL),(2546,111,8,2,NULL),(2547,193,89,2,NULL),(2548,210,45,2,NULL),(2549,172,47,2,NULL),(2550,115,8,2,NULL),(2551,201,89,2,NULL),(2552,214,45,2,NULL),(2553,80,67,2,NULL),(2554,119,8,2,NULL),(2555,208,89,2,NULL),(2556,223,45,2,NULL),(2557,150,67,2,NULL),(2558,215,8,2,NULL),(2559,210,89,2,NULL),(2560,38,45,2,NULL),(2561,151,67,2,NULL),(2562,38,8,2,NULL),(2563,214,89,2,NULL),(2564,124,45,2,NULL),(2565,124,8,2,NULL),(2566,155,67,2,NULL),(2567,223,89,2,NULL),(2568,128,45,2,NULL),(2569,160,67,2,NULL),(2570,128,8,2,NULL),(2571,68,91,2,NULL),(2572,143,45,2,NULL),(2573,162,67,2,NULL),(2574,143,8,2,NULL),(2575,168,91,2,NULL),(2576,144,45,2,NULL),(2577,144,8,2,NULL),(2578,166,67,2,NULL),(2579,171,91,2,NULL),(2580,152,45,2,NULL),(2581,169,67,2,NULL),(2582,152,8,2,NULL),(2583,175,91,2,NULL),(2584,176,45,2,NULL),(2585,172,67,2,NULL),(2586,176,8,2,NULL),(2587,177,91,2,NULL),(2588,184,45,2,NULL),(2589,184,8,2,NULL),(2590,80,77,2,NULL),(2591,181,91,2,NULL),(2592,244,45,2,NULL),(2593,150,77,2,NULL),(2594,244,8,2,NULL),(2595,193,91,2,NULL),(2596,247,45,2,NULL),(2597,151,77,2,NULL),(2598,247,8,2,NULL),(2599,201,91,2,NULL),(2600,248,45,2,NULL),(2601,248,8,2,NULL),(2602,155,77,2,NULL),(2603,208,91,2,NULL),(2604,251,45,2,NULL),(2605,160,77,2,NULL),(2606,251,8,2,NULL),(2607,210,91,2,NULL),(2608,253,45,2,NULL),(2609,253,8,2,NULL),(2610,162,77,2,NULL),(2611,214,91,2,NULL),(2612,264,45,2,NULL),(2613,166,77,2,NULL),(2614,264,8,2,NULL),(2615,223,91,2,NULL),(2616,169,77,2,NULL),(2617,269,9,2,NULL),(2618,68,22,2,NULL),(2619,21,9,2,NULL),(2620,172,77,2,NULL),(2621,269,15,2,NULL),(2622,168,22,2,NULL),(2623,44,9,2,NULL),(2624,80,84,2,NULL),(2625,269,29,2,NULL),(2626,171,22,2,NULL),(2627,52,9,2,NULL),(2628,150,84,2,NULL),(2629,269,40,2,NULL),(2630,175,22,2,NULL),(2631,74,9,2,NULL),(2632,151,84,2,NULL),(2633,269,45,2,NULL),(2634,177,22,2,NULL),(2635,78,9,2,NULL),(2636,155,84,2,NULL),(2637,181,22,2,NULL),(2638,21,47,2,NULL),(2639,82,9,2,NULL),(2640,160,84,2,NULL),(2641,193,22,2,NULL),(2642,44,47,2,NULL),(2643,162,84,2,NULL),(2644,100,9,2,NULL),(2645,201,22,2,NULL),(2646,52,47,2,NULL),(2647,104,9,2,NULL),(2648,166,84,2,NULL),(2649,208,22,2,NULL),(2650,108,9,2,NULL),(2651,74,47,2,NULL),(2652,169,84,2,NULL),(2653,210,22,2,NULL),(2654,172,84,2,NULL),(2655,111,9,2,NULL),(2656,214,22,2,NULL),(2657,115,9,2,NULL),(2658,80,86,2,NULL),(2659,223,22,2,NULL),(2660,78,47,2,NULL),(2661,119,9,2,NULL),(2662,150,86,2,NULL),(2663,82,47,2,NULL),(2664,124,17,2,NULL),(2665,215,9,2,NULL),(2666,151,86,2,NULL),(2667,100,47,2,NULL),(2668,128,17,2,NULL),(2669,155,86,2,NULL),(2670,104,47,2,NULL),(2671,143,17,2,NULL),(2672,38,9,2,NULL),(2673,160,86,2,NULL),(2674,108,47,2,NULL),(2675,144,17,2,NULL),(2676,162,86,2,NULL),(2677,124,9,2,NULL),(2678,111,47,2,NULL),(2679,152,17,2,NULL),(2680,128,9,2,NULL),(2681,166,86,2,NULL),(2682,176,17,2,NULL),(2683,115,47,2,NULL),(2684,143,9,2,NULL),(2685,169,86,2,NULL),(2686,119,47,2,NULL),(2687,184,17,2,NULL),(2688,144,9,2,NULL),(2689,172,86,2,NULL),(2690,215,47,2,NULL),(2691,244,17,2,NULL),(2692,152,9,2,NULL),(2693,80,88,2,NULL),(2694,247,17,2,NULL),(2695,176,9,2,NULL),(2696,150,88,2,NULL),(2697,68,47,2,NULL),(2698,248,17,2,NULL),(2699,184,9,2,NULL),(2700,168,47,2,NULL),(2701,151,88,2,NULL),(2702,251,17,2,NULL),(2703,244,9,2,NULL),(2704,171,47,2,NULL),(2705,155,88,2,NULL),(2706,253,17,2,NULL),(2707,247,9,2,NULL),(2708,175,47,2,NULL),(2709,160,88,2,NULL),(2710,264,17,2,NULL),(2711,248,9,2,NULL),(2712,177,47,2,NULL),(2713,162,88,2,NULL),(2714,68,32,2,NULL),(2715,251,9,2,NULL),(2716,181,47,2,NULL),(2717,166,88,2,NULL),(2718,168,32,2,NULL),(2719,193,47,2,NULL),(2720,253,9,2,NULL),(2721,169,88,2,NULL),(2722,171,32,2,NULL),(2723,201,47,2,NULL),(2724,264,9,2,NULL),(2725,172,88,2,NULL),(2726,175,32,2,NULL),(2727,208,47,2,NULL),(2728,14,9,2,NULL),(2729,177,32,2,NULL),(2730,21,25,2,NULL),(2731,210,47,2,NULL),(2732,14,15,2,NULL),(2733,181,32,2,NULL),(2734,44,25,2,NULL),(2735,214,47,2,NULL),(2736,14,29,2,NULL),(2737,52,25,2,NULL),(2738,193,32,2,NULL),(2739,223,47,2,NULL),(2740,14,40,2,NULL),(2741,74,25,2,NULL),(2742,201,32,2,NULL),(2743,38,47,2,NULL),(2744,14,45,2,NULL),(2745,78,25,2,NULL),(2746,208,32,2,NULL),(2747,124,47,2,NULL),(2748,82,25,2,NULL),(2749,210,32,2,NULL),(2750,21,10,2,NULL),(2751,128,47,2,NULL),(2752,100,25,2,NULL),(2753,214,32,2,NULL),(2754,143,47,2,NULL),(2755,44,10,2,NULL),(2756,104,25,2,NULL),(2757,223,32,2,NULL),(2758,144,47,2,NULL),(2759,52,10,2,NULL),(2760,108,25,2,NULL),(2761,68,40,2,NULL),(2762,152,47,2,NULL),(2763,74,10,2,NULL),(2764,168,40,2,NULL),(2765,111,25,2,NULL),(2766,176,47,2,NULL),(2767,78,10,2,NULL),(2768,171,40,2,NULL),(2769,115,25,2,NULL),(2770,184,47,2,NULL),(2771,82,10,2,NULL),(2772,119,25,2,NULL),(2773,175,40,2,NULL),(2774,244,47,2,NULL),(2775,100,10,2,NULL),(2776,177,40,2,NULL),(2777,215,25,2,NULL),(2778,247,47,2,NULL),(2779,104,10,2,NULL),(2780,181,40,2,NULL),(2781,248,47,2,NULL),(2782,108,10,2,NULL),(2783,38,25,2,NULL),(2784,193,40,2,NULL),(2785,111,10,2,NULL),(2786,124,25,2,NULL),(2787,251,47,2,NULL),(2788,201,40,2,NULL),(2789,115,10,2,NULL),(2790,253,47,2,NULL),(2791,128,25,2,NULL),(2792,208,40,2,NULL),(2793,119,10,2,NULL),(2794,264,47,2,NULL),(2795,143,25,2,NULL),(2796,210,40,2,NULL),(2797,215,10,2,NULL),(2798,144,25,2,NULL),(2799,214,40,2,NULL),(2800,21,67,2,NULL),(2801,152,25,2,NULL),(2802,223,40,2,NULL),(2803,38,10,2,NULL),(2804,44,67,2,NULL),(2805,176,25,2,NULL),(2806,68,43,2,NULL),(2807,52,67,2,NULL),(2808,124,10,2,NULL),(2809,184,25,2,NULL),(2810,168,43,2,NULL),(2811,74,67,2,NULL),(2812,128,10,2,NULL),(2813,244,25,2,NULL),(2814,171,43,2,NULL),(2815,143,10,2,NULL),(2816,78,67,2,NULL),(2817,247,25,2,NULL),(2818,175,43,2,NULL),(2819,144,10,2,NULL),(2820,82,67,2,NULL),(2821,248,25,2,NULL),(2822,177,43,2,NULL),(2823,100,67,2,NULL),(2824,152,10,2,NULL),(2825,251,25,2,NULL),(2826,181,43,2,NULL),(2827,104,67,2,NULL),(2828,176,10,2,NULL),(2829,253,25,2,NULL),(2830,193,43,2,NULL),(2831,108,67,2,NULL),(2832,184,10,2,NULL),(2833,264,25,2,NULL),(2834,201,43,2,NULL),(2835,111,67,2,NULL),(2836,244,10,2,NULL),(2837,208,43,2,NULL),(2838,247,10,2,NULL),(2839,115,67,2,NULL),(2840,21,42,2,NULL),(2841,210,43,2,NULL),(2842,248,10,2,NULL),(2843,119,67,2,NULL),(2844,214,43,2,NULL),(2845,44,42,2,NULL),(2846,251,10,2,NULL),(2847,215,67,2,NULL),(2848,223,43,2,NULL),(2849,52,42,2,NULL),(2850,253,10,2,NULL),(2851,68,67,2,NULL),(2852,68,55,2,NULL),(2853,74,42,2,NULL),(2854,264,10,2,NULL),(2855,168,67,2,NULL),(2856,168,55,2,NULL),(2857,78,42,2,NULL),(2858,171,55,2,NULL),(2859,171,67,2,NULL),(2860,82,42,2,NULL),(2861,21,50,2,NULL),(2862,175,55,2,NULL),(2863,175,67,2,NULL),(2864,100,42,2,NULL),(2865,177,55,2,NULL),(2866,44,50,2,NULL),(2867,104,42,2,NULL),(2868,177,67,2,NULL),(2869,52,50,2,NULL),(2870,181,55,2,NULL),(2871,181,67,2,NULL),(2872,108,42,2,NULL),(2873,74,50,2,NULL),(2874,193,55,2,NULL),(2875,193,67,2,NULL),(2876,111,42,2,NULL),(2877,78,50,2,NULL),(2878,201,55,2,NULL),(2879,201,67,2,NULL),(2880,115,42,2,NULL),(2881,82,50,2,NULL),(2882,208,55,2,NULL),(2883,208,67,2,NULL),(2884,119,42,2,NULL),(2885,100,50,2,NULL),(2886,210,55,2,NULL),(2887,210,67,2,NULL),(2888,215,42,2,NULL),(2889,104,50,2,NULL),(2890,214,55,2,NULL),(2891,214,67,2,NULL),(2892,108,50,2,NULL),(2893,223,55,2,NULL),(2894,223,67,2,NULL),(2895,111,50,2,NULL),(2896,68,62,2,NULL),(2897,38,42,2,NULL),(2898,38,67,2,NULL),(2899,115,50,2,NULL),(2900,168,62,2,NULL),(2901,124,42,2,NULL),(2902,124,67,2,NULL),(2903,119,50,2,NULL),(2904,171,62,2,NULL),(2905,128,42,2,NULL),(2906,128,67,2,NULL),(2907,215,50,2,NULL),(2908,175,62,2,NULL),(2909,143,42,2,NULL),(2910,143,67,2,NULL),(2911,177,62,2,NULL),(2912,144,42,2,NULL),(2913,144,67,2,NULL),(2914,38,50,2,NULL),(2915,181,62,2,NULL),(2916,152,42,2,NULL),(2917,152,67,2,NULL),(2918,176,42,2,NULL),(2919,193,62,2,NULL),(2920,124,50,2,NULL),(2921,176,67,2,NULL),(2922,128,50,2,NULL),(2923,184,42,2,NULL),(2924,201,62,2,NULL),(2925,184,67,2,NULL),(2926,143,50,2,NULL),(2927,244,42,2,NULL),(2928,208,62,2,NULL),(2929,244,67,2,NULL),(2930,144,50,2,NULL),(2931,247,42,2,NULL),(2932,210,62,2,NULL),(2933,247,67,2,NULL),(2934,152,50,2,NULL),(2935,214,62,2,NULL),(2936,248,42,2,NULL),(2937,248,67,2,NULL),(2938,176,50,2,NULL),(2939,223,62,2,NULL),(2940,251,42,2,NULL),(2941,251,67,2,NULL),(2942,184,50,2,NULL),(2943,253,42,2,NULL),(2944,68,72,2,NULL),(2945,253,67,2,NULL),(2946,244,50,2,NULL),(2947,168,72,2,NULL),(2948,264,42,2,NULL),(2949,264,67,2,NULL),(2950,247,50,2,NULL),(2951,171,72,2,NULL),(2952,248,50,2,NULL),(2953,175,72,2,NULL),(2954,21,77,2,NULL),(2955,251,50,2,NULL),(2956,177,72,2,NULL),(2957,21,46,2,NULL),(2958,44,77,2,NULL),(2959,253,50,2,NULL),(2960,181,72,2,NULL),(2961,44,46,2,NULL),(2962,52,77,2,NULL),(2963,264,50,2,NULL),(2964,193,72,2,NULL),(2965,52,46,2,NULL),(2966,74,77,2,NULL),(2967,201,72,2,NULL),(2968,74,46,2,NULL),(2969,78,77,2,NULL),(2970,78,46,2,NULL),(2971,208,72,2,NULL),(2972,21,56,2,NULL),(2973,82,77,2,NULL),(2974,44,56,2,NULL),(2975,82,46,2,NULL),(2976,210,72,2,NULL),(2977,100,77,2,NULL),(2978,214,72,2,NULL),(2979,52,56,2,NULL),(2980,100,46,2,NULL),(2981,104,77,2,NULL),(2982,74,56,2,NULL),(2983,223,72,2,NULL),(2984,104,46,2,NULL),(2985,108,77,2,NULL),(2986,78,56,2,NULL),(2987,68,80,2,NULL),(2988,108,46,2,NULL),(2989,111,77,2,NULL),(2990,82,56,2,NULL),(2991,168,80,2,NULL),(2992,111,46,2,NULL),(2993,115,77,2,NULL),(2994,100,56,2,NULL),(2995,115,46,2,NULL),(2996,171,80,2,NULL),(2997,119,77,2,NULL),(2998,104,56,2,NULL),(2999,175,80,2,NULL),(3000,119,46,2,NULL),(3001,215,77,2,NULL),(3002,108,56,2,NULL),(3003,215,46,2,NULL),(3004,177,80,2,NULL),(3005,111,56,2,NULL),(3006,68,77,2,NULL),(3007,181,80,2,NULL),(3008,115,56,2,NULL),(3009,168,77,2,NULL),(3010,193,80,2,NULL),(3011,119,56,2,NULL),(3012,38,46,2,NULL),(3013,171,77,2,NULL),(3014,201,80,2,NULL),(3015,215,56,2,NULL),(3016,124,46,2,NULL),(3017,175,77,2,NULL),(3018,208,80,2,NULL),(3019,128,46,2,NULL),(3020,177,77,2,NULL),(3021,210,80,2,NULL),(3022,38,56,2,NULL),(3023,143,46,2,NULL),(3024,214,80,2,NULL),(3025,181,77,2,NULL),(3026,144,46,2,NULL),(3027,124,56,2,NULL),(3028,193,77,2,NULL),(3029,223,80,2,NULL),(3030,128,56,2,NULL),(3031,152,46,2,NULL),(3032,201,77,2,NULL),(3033,68,87,2,NULL),(3034,143,56,2,NULL),(3035,176,46,2,NULL),(3036,208,77,2,NULL),(3037,168,87,2,NULL),(3038,144,56,2,NULL),(3039,184,46,2,NULL),(3040,210,77,2,NULL),(3041,171,87,2,NULL),(3042,152,56,2,NULL),(3043,244,46,2,NULL),(3044,214,77,2,NULL),(3045,175,87,2,NULL),(3046,176,56,2,NULL),(3047,247,46,2,NULL),(3048,223,77,2,NULL),(3049,177,87,2,NULL),(3050,184,56,2,NULL),(3051,248,46,2,NULL),(3052,38,77,2,NULL),(3053,181,87,2,NULL),(3054,244,56,2,NULL),(3055,124,77,2,NULL),(3056,193,87,2,NULL),(3057,251,46,2,NULL),(3058,247,56,2,NULL),(3059,201,87,2,NULL),(3060,128,77,2,NULL),(3061,253,46,2,NULL),(3062,143,77,2,NULL),(3063,208,87,2,NULL),(3064,264,46,2,NULL),(3065,144,77,2,NULL),(3066,248,56,2,NULL),(3067,210,87,2,NULL),(3068,152,77,2,NULL),(3069,214,87,2,NULL),(3070,251,56,2,NULL),(3071,176,77,2,NULL),(3072,21,48,2,NULL),(3073,253,56,2,NULL),(3074,184,77,2,NULL),(3075,223,87,2,NULL),(3076,44,48,2,NULL),(3077,264,56,2,NULL),(3078,244,77,2,NULL),(3079,52,48,2,NULL),(3080,247,77,2,NULL),(3081,74,48,2,NULL),(3082,21,63,2,NULL),(3083,68,84,2,NULL),(3084,248,77,2,NULL),(3085,44,63,2,NULL),(3086,78,48,2,NULL),(3087,251,77,2,NULL),(3088,168,84,2,NULL),(3089,82,48,2,NULL),(3090,52,63,2,NULL),(3091,253,77,2,NULL),(3092,171,84,2,NULL),(3093,74,63,2,NULL),(3094,100,48,2,NULL),(3095,264,77,2,NULL),(3096,175,84,2,NULL),(3097,78,63,2,NULL),(3098,104,48,2,NULL),(3099,177,84,2,NULL),(3100,82,63,2,NULL),(3101,108,48,2,NULL),(3102,21,84,2,NULL),(3103,181,84,2,NULL),(3104,100,63,2,NULL),(3105,111,48,2,NULL),(3106,44,84,2,NULL),(3107,193,84,2,NULL),(3108,104,63,2,NULL),(3109,115,48,2,NULL),(3110,52,84,2,NULL),(3111,201,84,2,NULL),(3112,108,63,2,NULL),(3113,119,48,2,NULL),(3114,74,84,2,NULL),(3115,208,84,2,NULL),(3116,111,63,2,NULL),(3117,215,48,2,NULL),(3118,78,84,2,NULL),(3119,210,84,2,NULL),(3120,115,63,2,NULL),(3121,82,84,2,NULL),(3122,214,84,2,NULL),(3123,38,48,2,NULL),(3124,119,63,2,NULL),(3125,100,84,2,NULL),(3126,223,84,2,NULL),(3127,215,63,2,NULL),(3128,124,48,2,NULL),(3129,104,84,2,NULL),(3130,68,86,2,NULL),(3131,128,48,2,NULL),(3132,38,63,2,NULL),(3133,108,84,2,NULL),(3134,168,86,2,NULL),(3135,124,63,2,NULL),(3136,143,48,2,NULL),(3137,111,84,2,NULL),(3138,171,86,2,NULL),(3139,128,63,2,NULL),(3140,144,48,2,NULL),(3141,115,84,2,NULL),(3142,175,86,2,NULL),(3143,143,63,2,NULL),(3144,152,48,2,NULL),(3145,119,84,2,NULL),(3146,177,86,2,NULL),(3147,144,63,2,NULL),(3148,176,48,2,NULL),(3149,215,84,2,NULL),(3150,181,86,2,NULL),(3151,184,48,2,NULL),(3152,152,63,2,NULL),(3153,193,86,2,NULL),(3154,176,63,2,NULL),(3155,244,48,2,NULL),(3156,38,84,2,NULL),(3157,201,86,2,NULL),(3158,184,63,2,NULL),(3159,247,48,2,NULL),(3160,208,86,2,NULL),(3161,124,84,2,NULL),(3162,244,63,2,NULL),(3163,248,48,2,NULL),(3164,128,84,2,NULL),(3165,210,86,2,NULL),(3166,247,63,2,NULL),(3167,251,48,2,NULL),(3168,143,84,2,NULL),(3169,214,86,2,NULL),(3170,248,63,2,NULL),(3171,253,48,2,NULL),(3172,144,84,2,NULL),(3173,223,86,2,NULL),(3174,251,63,2,NULL),(3175,264,48,2,NULL),(3176,152,84,2,NULL),(3177,68,88,2,NULL),(3178,253,63,2,NULL),(3179,176,84,2,NULL),(3180,168,88,2,NULL),(3181,264,63,2,NULL),(3182,21,59,2,NULL),(3183,184,84,2,NULL),(3184,171,88,2,NULL),(3185,44,59,2,NULL),(3186,244,84,2,NULL),(3187,175,88,2,NULL),(3188,52,59,2,NULL),(3189,21,68,2,NULL),(3190,247,84,2,NULL),(3191,177,88,2,NULL),(3192,44,68,2,NULL),(3193,74,59,2,NULL),(3194,248,84,2,NULL),(3195,181,88,2,NULL),(3196,52,68,2,NULL),(3197,78,59,2,NULL),(3198,251,84,2,NULL),(3199,193,88,2,NULL),(3200,82,59,2,NULL),(3201,74,68,2,NULL),(3202,253,84,2,NULL),(3203,201,88,2,NULL),(3204,78,68,2,NULL),(3205,100,59,2,NULL),(3206,264,84,2,NULL),(3207,208,88,2,NULL),(3208,82,68,2,NULL),(3209,104,59,2,NULL),(3210,210,88,2,NULL),(3211,100,68,2,NULL),(3212,108,59,2,NULL),(3213,214,88,2,NULL),(3214,21,86,2,NULL),(3215,104,68,2,NULL),(3216,111,59,2,NULL),(3217,223,88,2,NULL),(3218,44,86,2,NULL),(3219,108,68,2,NULL),(3220,115,59,2,NULL),(3221,52,86,2,NULL),(3222,38,1,2,NULL),(3223,111,68,2,NULL),(3224,119,59,2,NULL),(3225,74,86,2,NULL),(3226,38,4,2,NULL),(3227,115,68,2,NULL),(3228,215,59,2,NULL),(3229,78,86,2,NULL),(3230,38,21,2,NULL),(3231,119,68,2,NULL),(3232,38,44,2,NULL),(3233,82,86,2,NULL),(3234,38,59,2,NULL),(3235,215,68,2,NULL),(3236,100,86,2,NULL),(3237,38,68,2,NULL),(3238,124,59,2,NULL),(3239,104,86,2,NULL),(3240,124,68,2,NULL),(3241,128,59,2,NULL),(3242,38,11,2,NULL),(3243,108,86,2,NULL),(3244,128,68,2,NULL),(3245,143,59,2,NULL),(3246,38,14,2,NULL),(3247,111,86,2,NULL),(3248,143,68,2,NULL),(3249,144,59,2,NULL),(3250,38,15,2,NULL),(3251,115,86,2,NULL),(3252,144,68,2,NULL),(3253,152,59,2,NULL),(3254,38,16,2,NULL),(3255,119,86,2,NULL),(3256,152,68,2,NULL),(3257,176,59,2,NULL),(3258,38,52,2,NULL),(3259,215,86,2,NULL),(3260,176,68,2,NULL),(3261,38,60,2,NULL),(3262,184,59,2,NULL),(3263,184,68,2,NULL),(3264,38,75,2,NULL),(3265,244,59,2,NULL),(3266,38,86,2,NULL),(3267,244,68,2,NULL),(3268,247,59,2,NULL),(3269,38,83,2,NULL),(3270,247,68,2,NULL),(3271,124,86,2,NULL),(3272,248,59,2,NULL),(3273,38,61,2,NULL),(3274,128,86,2,NULL),(3275,248,68,2,NULL),(3276,251,59,2,NULL),(3277,143,86,2,NULL),(3278,251,68,2,NULL),(3279,38,65,2,NULL),(3280,253,59,2,NULL),(3281,144,86,2,NULL),(3282,253,68,2,NULL),(3283,38,24,2,NULL),(3284,264,59,2,NULL),(3285,38,29,2,NULL),(3286,152,86,2,NULL),(3287,264,68,2,NULL),(3288,176,86,2,NULL),(3289,38,34,2,NULL),(3290,184,86,2,NULL),(3291,21,61,2,NULL),(3292,38,57,2,NULL),(3293,244,86,2,NULL),(3294,44,61,2,NULL),(3295,38,64,2,NULL),(3296,247,86,2,NULL),(3297,52,61,2,NULL),(3298,38,69,2,NULL),(3299,248,86,2,NULL),(3300,74,61,2,NULL),(3301,38,89,2,NULL),(3302,251,86,2,NULL),(3303,78,61,2,NULL),(3304,38,91,2,NULL),(3305,253,86,2,NULL),(3306,82,61,2,NULL),(3307,38,22,2,NULL),(3308,264,86,2,NULL),(3309,100,61,2,NULL),(3310,38,32,2,NULL),(3311,104,61,2,NULL),(3312,21,88,2,NULL),(3313,38,40,2,NULL),(3314,44,88,2,NULL),(3315,108,61,2,NULL),(3316,38,43,2,NULL),(3317,52,88,2,NULL),(3318,111,61,2,NULL),(3319,38,55,2,NULL),(3320,74,88,2,NULL),(3321,115,61,2,NULL),(3322,38,62,2,NULL),(3323,78,88,2,NULL),(3324,119,61,2,NULL),(3325,38,72,2,NULL),(3326,82,88,2,NULL),(3327,215,61,2,NULL),(3328,38,80,2,NULL),(3329,100,88,2,NULL),(3330,38,87,2,NULL),(3331,104,88,2,NULL),(3332,124,61,2,NULL),(3333,38,88,2,NULL),(3334,108,88,2,NULL),(3335,128,61,2,NULL),(3336,111,88,2,NULL),(3337,143,61,2,NULL),(3338,21,24,2,NULL),(3339,115,88,2,NULL),(3340,144,61,2,NULL),(3341,44,24,2,NULL),(3342,119,88,2,NULL),(3343,152,61,2,NULL),(3344,52,24,2,NULL),(3345,215,88,2,NULL),(3346,176,61,2,NULL),(3347,74,24,2,NULL),(3348,184,61,2,NULL),(3349,78,24,2,NULL),(3350,124,88,2,NULL),(3351,244,61,2,NULL),(3352,128,88,2,NULL),(3353,82,24,2,NULL),(3354,247,61,2,NULL),(3355,143,88,2,NULL),(3356,100,24,2,NULL),(3357,248,61,2,NULL),(3358,144,88,2,NULL),(3359,104,24,2,NULL),(3360,251,61,2,NULL),(3361,152,88,2,NULL),(3362,108,24,2,NULL),(3363,253,61,2,NULL),(3364,176,88,2,NULL),(3365,111,24,2,NULL),(3366,264,61,2,NULL),(3367,184,88,2,NULL),(3368,115,24,2,NULL),(3369,244,88,2,NULL),(3370,119,24,2,NULL),(3371,247,88,2,NULL),(3372,21,65,2,NULL),(3373,215,24,2,NULL),(3374,248,88,2,NULL),(3375,44,65,2,NULL),(3376,52,65,2,NULL),(3377,251,88,2,NULL),(3378,74,65,2,NULL),(3379,124,24,2,NULL),(3380,253,88,2,NULL),(3381,78,65,2,NULL),(3382,128,24,2,NULL),(3383,264,88,2,NULL),(3384,82,65,2,NULL),(3385,143,24,2,NULL),(3386,100,65,2,NULL),(3387,144,24,2,NULL),(3388,104,65,2,NULL),(3389,152,24,2,NULL),(3390,108,65,2,NULL),(3391,176,24,2,NULL),(3392,111,65,2,NULL),(3393,184,24,2,NULL),(3394,115,65,2,NULL),(3395,244,24,2,NULL),(3396,119,65,2,NULL),(3397,247,24,2,NULL),(3398,215,65,2,NULL),(3399,248,24,2,NULL),(3400,124,65,2,NULL),(3401,251,24,2,NULL),(3402,128,65,2,NULL),(3403,253,24,2,NULL),(3404,143,65,2,NULL),(3405,264,24,2,NULL),(3406,144,65,2,NULL),(3407,152,65,2,NULL),(3408,21,29,2,NULL),(3409,176,65,2,NULL),(3410,44,29,2,NULL),(3411,184,65,2,NULL),(3412,52,29,2,NULL),(3413,244,65,2,NULL),(3414,74,29,2,NULL),(3415,247,65,2,NULL),(3416,78,29,2,NULL),(3417,248,65,2,NULL),(3418,82,29,2,NULL),(3419,251,65,2,NULL),(3420,100,29,2,NULL),(3421,253,65,2,NULL),(3422,104,29,2,NULL),(3423,264,65,2,NULL),(3424,108,29,2,NULL),(3425,111,29,2,NULL),(3426,115,29,2,NULL),(3427,119,29,2,NULL),(3428,215,29,2,NULL),(3429,124,29,2,NULL),(3430,128,29,2,NULL),(3431,143,29,2,NULL),(3432,144,29,2,NULL),(3433,152,29,2,NULL),(3434,176,29,2,NULL),(3435,184,29,2,NULL),(3436,244,29,2,NULL),(3437,247,29,2,NULL),(3438,248,29,2,NULL),(3439,251,29,2,NULL),(3440,253,29,2,NULL),(3441,264,29,2,NULL),(3442,236,9,2,NULL),(3443,236,15,2,NULL),(3444,236,29,2,NULL),(3445,236,40,2,NULL),(3446,236,45,2,NULL),(3447,21,34,2,NULL),(3448,44,34,2,NULL),(3449,52,34,2,NULL),(3450,74,34,2,NULL),(3451,78,34,2,NULL),(3452,82,34,2,NULL),(3453,100,34,2,NULL),(3454,104,34,2,NULL),(3455,108,34,2,NULL),(3456,111,34,2,NULL),(3457,115,34,2,NULL),(3458,119,34,2,NULL),(3459,215,34,2,NULL),(3460,124,34,2,NULL),(3461,128,34,2,NULL),(3462,143,34,2,NULL),(3463,144,34,2,NULL),(3464,152,34,2,NULL),(3465,176,34,2,NULL),(3466,184,34,2,NULL),(3467,244,34,2,NULL),(3468,247,34,2,NULL),(3469,248,34,2,NULL),(3470,251,34,2,NULL),(3471,253,34,2,NULL),(3472,264,34,2,NULL),(3473,21,57,2,NULL),(3474,44,57,2,NULL),(3475,52,57,2,NULL),(3476,74,57,2,NULL),(3477,78,57,2,NULL),(3478,82,57,2,NULL),(3479,100,57,2,NULL),(3480,104,57,2,NULL),(3481,108,57,2,NULL),(3482,111,57,2,NULL),(3483,115,57,2,NULL),(3484,119,57,2,NULL),(3485,215,57,2,NULL),(3486,124,57,2,NULL),(3487,128,57,2,NULL),(3488,143,57,2,NULL),(3489,144,57,2,NULL),(3490,152,57,2,NULL),(3491,176,57,2,NULL),(3492,184,57,2,NULL),(3493,244,57,2,NULL),(3494,247,57,2,NULL),(3495,248,57,2,NULL),(3496,251,57,2,NULL),(3497,253,57,2,NULL),(3498,264,57,2,NULL),(3499,21,64,2,NULL),(3500,44,64,2,NULL),(3501,52,64,2,NULL),(3502,74,64,2,NULL),(3503,78,64,2,NULL),(3504,82,64,2,NULL),(3505,100,64,2,NULL),(3506,104,64,2,NULL),(3507,108,64,2,NULL),(3508,111,64,2,NULL),(3509,115,64,2,NULL),(3510,119,64,2,NULL),(3511,215,64,2,NULL),(3512,124,64,2,NULL),(3513,128,64,2,NULL),(3514,143,64,2,NULL),(3515,144,64,2,NULL),(3516,152,64,2,NULL),(3517,176,64,2,NULL),(3518,184,64,2,NULL),(3519,244,64,2,NULL),(3520,247,64,2,NULL),(3521,248,64,2,NULL),(3522,251,64,2,NULL),(3523,253,64,2,NULL),(3524,264,64,2,NULL),(3525,21,69,2,NULL),(3526,44,69,2,NULL),(3527,52,69,2,NULL),(3528,74,69,2,NULL),(3529,78,69,2,NULL),(3530,82,69,2,NULL),(3531,100,69,2,NULL),(3532,104,69,2,NULL),(3533,108,69,2,NULL),(3534,111,69,2,NULL),(3535,115,69,2,NULL),(3536,119,69,2,NULL),(3537,215,69,2,NULL),(3538,124,69,2,NULL),(3539,128,69,2,NULL),(3540,143,69,2,NULL),(3541,144,69,2,NULL),(3542,152,69,2,NULL),(3543,176,69,2,NULL),(3544,184,69,2,NULL),(3545,244,69,2,NULL),(3546,247,69,2,NULL),(3547,248,69,2,NULL),(3548,251,69,2,NULL),(3549,253,69,2,NULL),(3550,264,69,2,NULL),(3551,21,89,2,NULL),(3552,44,89,2,NULL),(3553,52,89,2,NULL),(3554,74,89,2,NULL),(3555,78,89,2,NULL),(3556,82,89,2,NULL),(3557,100,89,2,NULL),(3558,104,89,2,NULL),(3559,108,89,2,NULL),(3560,111,89,2,NULL),(3561,115,89,2,NULL),(3562,119,89,2,NULL),(3563,215,89,2,NULL),(3564,124,89,2,NULL),(3565,128,89,2,NULL),(3566,143,89,2,NULL),(3567,144,89,2,NULL),(3568,152,89,2,NULL),(3569,176,89,2,NULL),(3570,184,89,2,NULL),(3571,244,89,2,NULL),(3572,247,89,2,NULL),(3573,248,89,2,NULL),(3574,251,89,2,NULL),(3575,253,89,2,NULL),(3576,264,89,2,NULL),(3577,21,91,2,NULL),(3578,44,91,2,NULL),(3579,52,91,2,NULL),(3580,74,91,2,NULL),(3581,78,91,2,NULL),(3582,82,91,2,NULL),(3583,100,91,2,NULL),(3584,104,91,2,NULL),(3585,108,91,2,NULL),(3586,111,91,2,NULL),(3587,115,91,2,NULL),(3588,119,91,2,NULL),(3589,215,91,2,NULL),(3590,124,91,2,NULL),(3591,128,91,2,NULL),(3592,143,91,2,NULL),(3593,144,91,2,NULL),(3594,152,91,2,NULL),(3595,176,91,2,NULL),(3596,184,91,2,NULL),(3597,244,91,2,NULL),(3598,247,91,2,NULL),(3599,248,91,2,NULL),(3600,251,91,2,NULL),(3601,253,91,2,NULL),(3602,264,91,2,NULL),(3603,132,8,2,NULL),(3604,132,14,2,NULL),(3605,132,24,2,NULL),(3606,132,32,2,NULL),(3607,132,41,2,NULL),(3608,138,8,2,NULL),(3609,138,14,2,NULL),(3610,138,24,2,NULL),(3611,138,32,2,NULL),(3612,138,41,2,NULL),(3613,148,8,2,NULL),(3614,148,14,2,NULL),(3615,148,24,2,NULL),(3616,148,32,2,NULL),(3617,148,41,2,NULL),(3618,157,8,2,NULL),(3619,157,14,2,NULL),(3620,157,24,2,NULL),(3621,157,32,2,NULL),(3622,157,41,2,NULL),(3623,163,8,2,NULL),(3624,163,14,2,NULL),(3625,163,24,2,NULL),(3626,163,32,2,NULL),(3627,163,41,2,NULL),(3628,199,7,2,NULL),(3629,199,13,2,NULL),(3630,199,19,2,NULL),(3631,199,28,2,NULL),(3632,199,36,2,NULL),(3633,261,7,2,NULL),(3634,261,13,2,NULL),(3635,261,19,2,NULL),(3636,261,28,2,NULL),(3637,261,36,2,NULL),(3638,124,1,2,NULL),(3639,128,1,2,NULL),(3640,143,1,2,NULL),(3641,144,1,2,NULL),(3642,152,1,2,NULL),(3643,176,1,2,NULL),(3644,184,1,2,NULL),(3645,244,1,2,NULL),(3646,247,1,2,NULL),(3647,248,1,2,NULL),(3648,251,1,2,NULL),(3649,253,1,2,NULL),(3650,124,4,2,NULL),(3651,128,4,2,NULL),(3652,143,4,2,NULL),(3653,144,4,2,NULL),(3654,152,4,2,NULL),(3655,176,4,2,NULL),(3656,184,4,2,NULL),(3657,244,4,2,NULL),(3658,247,4,2,NULL),(3659,248,4,2,NULL),(3660,251,4,2,NULL),(3661,253,4,2,NULL),(3662,124,21,2,NULL),(3663,128,21,2,NULL),(3664,143,21,2,NULL),(3665,144,21,2,NULL),(3666,152,21,2,NULL),(3667,176,21,2,NULL),(3668,184,21,2,NULL),(3669,244,21,2,NULL),(3670,247,21,2,NULL),(3671,248,21,2,NULL),(3672,251,21,2,NULL),(3673,253,21,2,NULL),(3674,124,44,2,NULL),(3675,128,44,2,NULL),(3676,143,44,2,NULL),(3677,144,44,2,NULL),(3678,152,44,2,NULL),(3679,176,44,2,NULL),(3680,184,44,2,NULL),(3681,244,44,2,NULL),(3682,247,44,2,NULL),(3683,248,44,2,NULL),(3684,251,44,2,NULL),(3685,253,44,2,NULL),(3686,124,11,2,NULL),(3687,128,11,2,NULL),(3688,143,11,2,NULL),(3689,144,11,2,NULL),(3690,152,11,2,NULL),(3691,176,11,2,NULL),(3692,184,11,2,NULL),(3693,244,11,2,NULL),(3694,247,11,2,NULL),(3695,248,11,2,NULL),(3696,251,11,2,NULL),(3697,21,1,2,NULL),(3698,253,11,2,NULL),(3699,44,1,2,NULL),(3700,21,22,2,NULL),(3701,52,1,2,NULL),(3702,44,22,2,NULL),(3703,74,1,2,NULL),(3704,52,22,2,NULL),(3705,78,1,2,NULL),(3706,74,22,2,NULL),(3707,82,1,2,NULL),(3708,78,22,2,NULL),(3709,100,1,2,NULL),(3710,82,22,2,NULL),(3711,104,1,2,NULL),(3712,100,22,2,NULL),(3713,108,1,2,NULL),(3714,104,22,2,NULL),(3715,111,1,2,NULL),(3716,108,22,2,NULL),(3717,115,1,2,NULL),(3718,111,22,2,NULL),(3719,119,1,2,NULL),(3720,115,22,2,NULL),(3721,215,1,2,NULL),(3722,119,22,2,NULL),(3723,264,1,2,NULL),(3724,215,22,2,NULL),(3725,124,14,2,NULL),(3726,21,4,2,NULL),(3727,128,14,2,NULL),(3728,44,4,2,NULL),(3729,143,14,2,NULL),(3730,52,4,2,NULL),(3731,144,14,2,NULL),(3732,74,4,2,NULL),(3733,152,14,2,NULL),(3734,78,4,2,NULL),(3735,176,14,2,NULL),(3736,82,4,2,NULL),(3737,184,14,2,NULL),(3738,100,4,2,NULL),(3739,244,14,2,NULL),(3740,104,4,2,NULL),(3741,247,14,2,NULL),(3742,108,4,2,NULL),(3743,248,14,2,NULL),(3744,111,4,2,NULL),(3745,251,14,2,NULL),(3746,115,4,2,NULL),(3747,253,14,2,NULL),(3748,119,4,2,NULL),(3749,124,15,2,NULL),(3750,215,4,2,NULL),(3751,128,15,2,NULL),(3752,143,15,2,NULL),(3753,264,4,2,NULL),(3754,144,15,2,NULL),(3755,152,15,2,NULL),(3756,21,21,2,NULL),(3757,176,15,2,NULL),(3758,44,21,2,NULL),(3759,184,15,2,NULL),(3760,52,21,2,NULL),(3761,244,15,2,NULL),(3762,74,21,2,NULL),(3763,247,15,2,NULL),(3764,78,21,2,NULL),(3765,248,15,2,NULL),(3766,82,21,2,NULL),(3767,251,15,2,NULL),(3768,100,21,2,NULL),(3769,253,15,2,NULL),(3770,104,21,2,NULL),(3771,124,16,2,NULL),(3772,108,21,2,NULL),(3773,128,16,2,NULL),(3774,111,21,2,NULL),(3775,143,16,2,NULL),(3776,115,21,2,NULL),(3777,144,16,2,NULL),(3778,119,21,2,NULL),(3779,152,16,2,NULL),(3780,215,21,2,NULL),(3781,176,16,2,NULL),(3782,184,16,2,NULL),(3783,264,21,2,NULL),(3784,244,16,2,NULL),(3785,247,16,2,NULL),(3786,21,44,2,NULL),(3787,248,16,2,NULL),(3788,44,44,2,NULL),(3789,251,16,2,NULL),(3790,52,44,2,NULL),(3791,253,16,2,NULL),(3792,74,44,2,NULL),(3793,124,52,2,NULL),(3794,78,44,2,NULL),(3795,128,52,2,NULL),(3796,82,44,2,NULL),(3797,143,52,2,NULL),(3798,100,44,2,NULL),(3799,144,52,2,NULL),(3800,104,44,2,NULL),(3801,152,52,2,NULL),(3802,108,44,2,NULL),(3803,176,52,2,NULL),(3804,111,44,2,NULL),(3805,184,52,2,NULL),(3806,115,44,2,NULL),(3807,244,52,2,NULL),(3808,119,44,2,NULL),(3809,247,52,2,NULL),(3810,215,44,2,NULL),(3811,248,52,2,NULL),(3812,251,52,2,NULL),(3813,264,44,2,NULL),(3814,253,52,2,NULL),(3815,124,60,2,NULL),(3816,128,60,2,NULL),(3817,143,60,2,NULL),(3818,144,60,2,NULL),(3819,152,60,2,NULL),(3820,176,60,2,NULL),(3821,184,60,2,NULL),(3822,244,60,2,NULL),(3823,247,60,2,NULL),(3824,248,60,2,NULL),(3825,251,60,2,NULL),(3826,253,60,2,NULL),(3827,124,75,2,NULL),(3828,128,75,2,NULL),(3829,143,75,2,NULL),(3830,144,75,2,NULL),(3831,152,75,2,NULL),(3832,176,75,2,NULL),(3833,184,75,2,NULL),(3834,244,75,2,NULL),(3835,247,75,2,NULL),(3836,248,75,2,NULL),(3837,251,75,2,NULL),(3838,253,75,2,NULL),(3839,124,83,2,NULL),(3840,128,83,2,NULL),(3841,143,83,2,NULL),(3842,144,83,2,NULL),(3843,152,83,2,NULL),(3844,176,83,2,NULL),(3845,184,83,2,NULL),(3846,244,83,2,NULL),(3847,247,83,2,NULL),(3848,248,83,2,NULL),(3849,251,83,2,NULL),(3850,253,83,2,NULL),(3851,264,22,2,NULL),(3852,124,32,2,NULL),(3853,128,32,2,NULL),(3854,143,32,2,NULL),(3855,144,32,2,NULL),(3856,152,32,2,NULL),(3857,176,32,2,NULL),(3858,184,32,2,NULL),(3859,244,32,2,NULL),(3860,247,32,2,NULL),(3861,248,32,2,NULL),(3862,251,32,2,NULL),(3863,253,32,2,NULL),(3864,124,40,2,NULL),(3865,128,40,2,NULL),(3866,143,40,2,NULL),(3867,144,40,2,NULL),(3868,152,40,2,NULL),(3869,176,40,2,NULL),(3870,184,40,2,NULL),(3871,244,40,2,NULL),(3872,247,40,2,NULL),(3873,248,40,2,NULL),(3874,251,40,2,NULL),(3875,253,40,2,NULL),(3876,124,43,2,NULL),(3877,128,43,2,NULL),(3878,143,43,2,NULL),(3879,144,43,2,NULL),(3880,152,43,2,NULL),(3881,176,43,2,NULL),(3882,184,43,2,NULL),(3883,244,43,2,NULL),(3884,247,43,2,NULL),(3885,248,43,2,NULL),(3886,251,43,2,NULL),(3887,253,43,2,NULL),(3888,124,55,2,NULL),(3889,128,55,2,NULL),(3890,143,55,2,NULL),(3891,48,8,2,NULL),(3892,144,55,2,NULL),(3893,48,14,2,NULL),(3894,152,55,2,NULL),(3895,48,24,2,NULL),(3896,176,55,2,NULL),(3897,48,32,2,NULL),(3898,184,55,2,NULL),(3899,48,41,2,NULL),(3900,244,55,2,NULL),(3901,57,8,2,NULL),(3902,247,55,2,NULL),(3903,57,14,2,NULL),(3904,248,55,2,NULL),(3905,57,24,2,NULL),(3906,251,55,2,NULL),(3907,57,32,2,NULL),(3908,253,55,2,NULL),(3909,57,41,2,NULL),(3910,124,62,2,NULL),(3911,60,8,2,NULL),(3912,128,62,2,NULL),(3913,60,14,2,NULL),(3914,143,62,2,NULL),(3915,60,24,2,NULL),(3916,144,62,2,NULL),(3917,60,32,2,NULL),(3918,152,62,2,NULL),(3919,60,41,2,NULL),(3920,176,62,2,NULL),(3921,66,8,2,NULL),(3922,184,62,2,NULL),(3923,66,14,2,NULL),(3924,244,62,2,NULL),(3925,66,24,2,NULL),(3926,247,62,2,NULL),(3927,66,32,2,NULL),(3928,248,62,2,NULL),(3929,66,41,2,NULL),(3930,251,62,2,NULL),(3931,70,8,2,NULL),(3932,253,62,2,NULL),(3933,70,14,2,NULL),(3934,124,72,2,NULL),(3935,70,24,2,NULL),(3936,128,72,2,NULL),(3937,70,32,2,NULL),(3938,143,72,2,NULL),(3939,70,41,2,NULL),(3940,144,72,2,NULL),(3941,86,7,2,NULL),(3942,152,72,2,NULL),(3943,86,13,2,NULL),(3944,176,72,2,NULL),(3945,86,19,2,NULL),(3946,184,72,2,NULL),(3947,86,28,2,NULL),(3948,244,72,2,NULL),(3949,86,36,2,NULL),(3950,247,72,2,NULL),(3951,159,7,2,NULL),(3952,248,72,2,NULL),(3953,159,13,2,NULL),(3954,251,72,2,NULL),(3955,159,19,2,NULL),(3956,253,72,2,NULL),(3957,159,28,2,NULL),(3958,124,80,2,NULL),(3959,159,36,2,NULL),(3960,128,80,2,NULL),(3961,143,80,2,NULL),(3962,215,11,2,NULL),(3963,144,80,2,NULL),(3964,21,14,2,NULL),(3965,152,80,2,NULL),(3966,44,14,2,NULL),(3967,176,80,2,NULL),(3968,52,14,2,NULL),(3969,184,80,2,NULL),(3970,74,14,2,NULL),(3971,244,80,2,NULL),(3972,78,14,2,NULL),(3973,247,80,2,NULL),(3974,82,14,2,NULL),(3975,248,80,2,NULL),(3976,100,14,2,NULL),(3977,251,80,2,NULL),(3978,104,14,2,NULL),(3979,253,80,2,NULL),(3980,108,14,2,NULL),(3981,124,87,2,NULL),(3982,111,14,2,NULL),(3983,128,87,2,NULL),(3984,115,14,2,NULL),(3985,143,87,2,NULL),(3986,119,14,2,NULL),(3987,144,87,2,NULL),(3988,21,15,2,NULL),(3989,152,87,2,NULL),(3990,44,15,2,NULL),(3991,176,87,2,NULL),(3992,52,15,2,NULL),(3993,184,87,2,NULL),(3994,74,15,2,NULL),(3995,244,87,2,NULL),(3996,78,15,2,NULL),(3997,247,87,2,NULL),(3998,82,15,2,NULL),(3999,248,87,2,NULL),(4000,100,15,2,NULL),(4001,251,87,2,NULL),(4002,104,15,2,NULL),(4003,253,87,2,NULL),(4004,108,15,2,NULL),(4005,111,15,2,NULL),(4006,115,15,2,NULL),(4007,119,15,2,NULL),(4008,264,11,2,NULL),(4009,21,16,2,NULL),(4010,264,14,2,NULL),(4011,44,16,2,NULL),(4012,264,15,2,NULL),(4013,52,16,2,NULL),(4014,264,16,2,NULL),(4015,74,16,2,NULL),(4016,264,52,2,NULL),(4017,78,16,2,NULL),(4018,264,60,2,NULL),(4019,82,16,2,NULL),(4020,264,75,2,NULL),(4021,100,16,2,NULL),(4022,264,83,2,NULL),(4023,104,16,2,NULL),(4024,108,16,2,NULL),(4025,264,32,2,NULL),(4026,111,16,2,NULL),(4027,264,40,2,NULL),(4028,115,16,2,NULL),(4029,264,43,2,NULL),(4030,119,16,2,NULL),(4031,264,55,2,NULL),(4032,21,52,2,NULL),(4033,264,62,2,NULL),(4034,44,52,2,NULL),(4035,264,72,2,NULL),(4036,52,52,2,NULL),(4037,264,80,2,NULL),(4038,74,52,2,NULL),(4039,264,87,2,NULL),(4040,78,52,2,NULL),(4041,82,52,2,NULL),(4042,21,32,2,NULL),(4043,100,52,2,NULL),(4044,44,32,2,NULL),(4045,104,52,2,NULL),(4046,52,32,2,NULL),(4047,108,52,2,NULL),(4048,74,32,2,NULL),(4049,111,52,2,NULL),(4050,78,32,2,NULL),(4051,115,52,2,NULL),(4052,82,32,2,NULL),(4053,119,52,2,NULL),(4054,100,32,2,NULL),(4055,21,60,2,NULL),(4056,104,32,2,NULL),(4057,44,60,2,NULL),(4058,108,32,2,NULL),(4059,52,60,2,NULL),(4060,111,32,2,NULL),(4061,74,60,2,NULL),(4062,115,32,2,NULL),(4063,78,60,2,NULL),(4064,119,32,2,NULL),(4065,82,60,2,NULL),(4066,215,32,2,NULL),(4067,100,60,2,NULL),(4068,104,60,2,NULL),(4069,108,60,2,NULL),(4070,111,60,2,NULL),(4071,21,40,2,NULL),(4072,115,60,2,NULL),(4073,44,40,2,NULL),(4074,119,60,2,NULL),(4075,52,40,2,NULL),(4076,21,75,2,NULL),(4077,74,40,2,NULL),(4078,44,75,2,NULL),(4079,78,40,2,NULL),(4080,52,75,2,NULL),(4081,82,40,2,NULL),(4082,74,75,2,NULL),(4083,100,40,2,NULL),(4084,78,75,2,NULL),(4085,104,40,2,NULL),(4086,82,75,2,NULL),(4087,108,40,2,NULL),(4088,100,75,2,NULL),(4089,111,40,2,NULL),(4090,104,75,2,NULL),(4091,115,40,2,NULL),(4092,108,75,2,NULL),(4093,119,40,2,NULL),(4094,111,75,2,NULL),(4095,215,40,2,NULL),(4096,115,75,2,NULL),(4097,119,75,2,NULL),(4098,200,9,2,NULL),(4099,21,83,2,NULL),(4100,200,15,2,NULL),(4101,44,83,2,NULL),(4102,200,29,2,NULL),(4103,52,83,2,NULL),(4104,200,40,2,NULL),(4105,74,83,2,NULL),(4106,200,45,2,NULL),(4107,78,83,2,NULL),(4108,82,83,2,NULL),(4109,21,43,2,NULL),(4110,44,43,2,NULL),(4111,100,83,2,NULL),(4112,52,43,2,NULL),(4113,104,83,2,NULL),(4114,74,43,2,NULL),(4115,108,83,2,NULL),(4116,78,43,2,NULL),(4117,111,83,2,NULL),(4118,82,43,2,NULL),(4119,115,83,2,NULL),(4120,100,43,2,NULL),(4121,119,83,2,NULL),(4122,104,43,2,NULL),(4123,108,43,2,NULL),(4124,111,43,2,NULL),(4125,115,43,2,NULL),(4126,119,43,2,NULL),(4127,215,43,2,NULL),(4128,21,55,2,NULL),(4129,44,55,2,NULL),(4130,44,55,2,NULL),(4131,52,55,2,NULL),(4132,52,55,2,NULL),(4133,74,55,2,NULL),(4134,74,55,2,NULL),(4135,78,55,2,NULL),(4136,78,55,2,NULL),(4137,82,55,2,NULL),(4138,82,55,2,NULL),(4139,100,55,2,NULL),(4140,100,55,2,NULL),(4141,104,55,2,NULL),(4142,104,55,2,NULL),(4143,108,55,2,NULL),(4144,108,55,2,NULL),(4145,111,55,2,NULL),(4146,111,55,2,NULL),(4147,115,55,2,NULL),(4148,115,55,2,NULL),(4149,119,55,2,NULL),(4150,119,55,2,NULL),(4151,215,55,2,NULL),(4152,21,62,2,NULL),(4153,44,62,2,NULL),(4154,52,62,2,NULL),(4155,74,62,2,NULL),(4156,78,62,2,NULL),(4157,82,62,2,NULL),(4158,100,62,2,NULL),(4159,100,62,2,NULL),(4160,104,62,2,NULL),(4161,104,62,2,NULL),(4162,108,62,2,NULL),(4163,108,62,2,NULL),(4164,111,62,2,NULL),(4165,111,62,2,NULL),(4166,115,62,2,NULL),(4167,115,62,2,NULL),(4168,119,62,2,NULL),(4169,21,72,2,NULL),(4170,215,62,2,NULL),(4171,44,72,2,NULL),(4172,52,72,2,NULL),(4173,74,72,2,NULL),(4174,78,72,2,NULL),(4175,82,72,2,NULL),(4176,100,72,2,NULL),(4177,104,72,2,NULL),(4178,108,72,2,NULL),(4179,111,72,2,NULL),(4180,115,72,2,NULL),(4181,119,72,2,NULL),(4182,215,72,2,NULL),(4183,21,80,2,NULL),(4184,44,80,2,NULL),(4185,44,80,2,NULL),(4186,52,80,2,NULL),(4187,52,80,2,NULL),(4188,74,80,2,NULL),(4189,74,80,2,NULL),(4190,78,80,2,NULL),(4191,78,80,2,NULL),(4192,82,80,2,NULL),(4193,82,80,2,NULL),(4194,100,80,2,NULL),(4195,100,80,2,NULL),(4196,104,80,2,NULL),(4197,104,80,2,NULL),(4198,108,80,2,NULL),(4199,108,80,2,NULL),(4200,111,80,2,NULL),(4201,111,80,2,NULL),(4202,115,80,2,NULL),(4203,115,80,2,NULL),(4204,119,80,2,NULL),(4205,119,80,2,NULL),(4206,215,80,2,NULL),(4207,21,87,2,NULL),(4208,44,87,2,NULL),(4209,52,87,2,NULL),(4210,74,87,2,NULL),(4211,78,87,2,NULL),(4212,82,87,2,NULL),(4213,82,87,2,NULL),(4214,100,87,2,NULL),(4215,100,87,2,NULL),(4216,104,87,2,NULL),(4217,104,87,2,NULL),(4218,108,87,2,NULL),(4219,108,87,2,NULL),(4220,111,87,2,NULL),(4221,111,87,2,NULL),(4222,115,87,2,NULL),(4223,115,87,2,NULL),(4224,119,87,2,NULL),(4225,119,87,2,NULL),(4226,215,87,2,NULL),(4227,215,14,2,NULL),(4228,215,15,2,NULL),(4229,215,16,2,NULL),(4230,215,52,2,NULL),(4231,215,60,2,NULL),(4232,215,75,2,NULL),(4233,215,83,2,NULL),(4234,180,9,2,NULL),(4235,180,15,2,NULL),(4236,180,29,2,NULL),(4237,180,40,2,NULL),(4238,180,45,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProviderLinks`
--

LOCK TABLES `ProviderLinks` WRITE;
/*!40000 ALTER TABLE `ProviderLinks` DISABLE KEYS */;
INSERT INTO `ProviderLinks` VALUES (1,20,49,NULL),(2,42,49,NULL),(3,73,49,NULL),(4,46,49,NULL),(5,74,49,NULL);
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

-- Dump completed on 2015-10-12  3:30:43
