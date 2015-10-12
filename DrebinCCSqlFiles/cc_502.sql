-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_502
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (12,'SMS_SEND_ACTIOIN'),(8,'android.intent.action.BOOT_COMPLETED'),(20,'android.intent.action.CHOOSER'),(40,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(17,'android.intent.action.PACKAGE_ADDED'),(16,'android.intent.action.PACKAGE_CHANGED'),(18,'android.intent.action.PACKAGE_REMOVED'),(37,'android.intent.action.SCREEN_OFF'),(38,'android.intent.action.SCREEN_ON'),(9,'android.intent.action.SET_WALLPAPER'),(15,'android.intent.action.TIMEZONE_CHANGED'),(14,'android.intent.action.TIME_SET'),(13,'android.intent.action.TIME_TICK'),(31,'android.intent.action.VIEW'),(19,'android.intent.action.WALLPAPER_CHANGED'),(36,'android.net.conn.CONNECTIVITY_CHANGE'),(3,'android.provider.Telephony.SMS_RECEIVED'),(2,'android.provider.Telephony.WAP_PUSH_RECEIVED'),(34,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(33,'android.settings.WIRELESS_SETTINGS'),(39,'com.android.contacts.action.FILTER_CONTACTS'),(10,'com.android.launcher.action.INSTALL_SHORTCUT'),(11,'com.android.launcher.action.UNINSTALL_SHORTCUT'),(22,'com.jx.Action_CopyResError'),(28,'com.jx.MainActivity.CostInfo'),(23,'com.jx.MainActivity.ErrorInfo'),(25,'com.jx.MainActivity.InstallConfirmInfo'),(24,'com.jx.MainActivity.OpenLWP'),(27,'com.jx.MainActivity.RepeateInstall'),(26,'com.jx.MainActivity.SaveID'),(35,'com.jx.action.ExitBootReceiver'),(29,'com.jx.ad.ADService.ConfirmInstallInfo'),(6,'com.jx.ad.ADService.Init'),(32,'com.jx.ad.ADService.InitHasUpdate'),(30,'com.jx.ad.ADService.InstallRes'),(4,'com.jx.ad.ADService.Run'),(5,'com.jx.ad.ADService.RunCancel'),(21,'com.jx.ad.BootSmsReceiverService.Exit'),(7,'com.jx.ad.BootSmsReceiverService.Start');
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
INSERT INTO `Applications` VALUES (1,'km.home',1),(2,'com.jx.theme.n398397726',1),(3,'com.km.launcher',1),(4,'com.jx.theme.n1368240560',1),(5,'com.jx.theme.n191148435',1),(6,'com.jx.theme.n678504952',1),(7,'com.jx.theme.n2141139728',1);
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
INSERT INTO `CategoryStrings` VALUES (1,'android.intent.category.DEFAULT'),(3,'android.intent.category.HOME'),(2,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'km.home.Home'),(2,1,'km.home.UnlockActivity'),(3,1,'km.home.ThemeListActivity'),(4,1,'com.km.MainActivity'),(5,1,'com.km.HoldMessage'),(6,2,'com.jx.MainActivity'),(7,2,'com.jx.SettingActivity'),(8,2,'com.jx.WelcomeActivity'),(9,2,'com.jx.ad.AndroidThemeService'),(10,2,'com.jx.ad.BootSmsReceiverService'),(11,2,'com.jx.ad.BootReceiver'),(12,4,'com.jx.MainActivity'),(13,5,'com.jx.MainActivity'),(14,6,'com.jx.MainActivity'),(15,4,'com.jx.SettingActivity'),(16,3,'com.km.launcher.Launcher'),(17,4,'com.jx.WelcomeActivity'),(18,5,'com.jx.SettingActivity'),(19,6,'com.jx.SettingActivity'),(20,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(21,3,'com.km.launcher.WallpaperChooser'),(22,5,'com.jx.WelcomeActivity'),(23,6,'com.jx.WelcomeActivity'),(24,4,'com.jx.ad.AndroidThemeService'),(25,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(26,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(27,5,'com.jx.ad.AndroidThemeService'),(28,7,'com.jx.MainActivity'),(29,6,'com.jx.ad.AndroidThemeService'),(30,4,'com.jx.ad.BootSmsReceiverService'),(31,3,'com.km.theme.ThemeListActivity'),(32,3,'com.km.charge.MainActivity'),(33,4,'com.jx.ad.BootReceiver'),(34,3,'com.km.ad.AdService'),(35,7,'com.jx.SettingActivity'),(36,5,'com.jx.ad.BootSmsReceiverService'),(37,3,'com.km.charge.CycleService'),(38,7,'com.jx.WelcomeActivity'),(39,6,'com.jx.ad.BootSmsReceiverService'),(40,3,'com.km.launcher.InstallShortcutReceiver'),(41,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(42,5,'com.jx.ad.BootReceiver'),(43,7,'com.jx.ad.AndroidThemeService'),(44,6,'com.jx.ad.BootReceiver'),(45,3,'com.km.launcher.UninstallShortcutReceiver'),(46,7,'com.jx.ad.BootSmsReceiverService'),(47,3,'com.km.charge.BootReceiver'),(48,7,'com.jx.ad.BootReceiver'),(49,3,'com.km.launcher.LauncherProvider'),(50,1,'com.km.SendMessage$SendMessageReceiver'),(51,1,'km.home.ThemeManager'),(52,1,'km.home.Home$WallpaperIntentReceiver'),(53,1,'com.km.tool.Http$ConnectivityReceiver'),(54,1,'km.home.UnlockActivity$TimeReceiver'),(55,1,'km.home.Home$ApplicationsIntentReceiver'),(56,1,'km.home.Home$ApplicationLauncher'),(57,2,'com.jx.ad.AndroidThemeService$4'),(58,2,'com.jx.ad.AndroidThemeService$MMSReceiver'),(59,2,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(60,2,'com.jx.MainActivity$ControlReceiver$6$1'),(61,2,'com.jx.tool.ApnManager'),(62,2,'com.jx.ad.AndroidThemeService$3'),(63,2,'com.jx.MainActivity$ControlReceiver'),(64,2,'com.jx.ad.AndroidThemeService$2'),(65,2,'com.jx.ad.ServiceControlReciver'),(66,2,'com.jx.ad.AndroidThemeService$8'),(67,2,'com.jx.SettingActivity$6'),(68,2,'com.jx.ad.AndroidThemeService$6'),(69,2,'com.jx.SettingActivity$1'),(70,2,'com.jx.ad.AndroidThemeService$SmsReceiver'),(71,2,'com.jx.MainActivity$ControlReceiver$1'),(72,2,'com.jx.ad.AndroidThemeService$7'),(73,2,'com.jx.MainActivity$4'),(74,2,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(75,2,'com.jx.tool.Utility'),(76,2,'com.jx.ad.AndroidThemeService$5'),(77,4,'com.jx.MainActivity$4'),(78,6,'com.jx.ad.AndroidThemeService$2'),(79,4,'com.jx.ad.AndroidThemeService$3'),(80,6,'com.jx.tool.ApnManager'),(81,4,'com.jx.ad.AndroidThemeService$MMSReceiver'),(82,6,'com.jx.SettingActivity$1'),(83,4,'com.jx.ad.AndroidThemeService$4'),(84,6,'com.jx.MainActivity$ControlReceiver'),(85,7,'com.jx.ad.AndroidThemeService$MMSReceiver'),(86,5,'com.jx.ad.AndroidThemeService$6'),(87,6,'com.jx.ad.AndroidThemeService$4'),(88,4,'com.jx.ad.AndroidThemeService$5'),(89,6,'com.jx.ad.AndroidThemeService$7'),(90,4,'com.jx.ad.AndroidThemeService$SmsReceiver'),(91,5,'com.jx.ad.AndroidThemeService$3'),(92,7,'com.jx.ad.AndroidThemeService$3'),(93,4,'com.jx.ad.AndroidThemeService$7'),(94,5,'com.jx.ad.AndroidThemeService$5'),(95,7,'com.jx.MainActivity$4'),(96,6,'com.jx.tool.Utility'),(97,7,'com.jx.tool.ApnManager'),(98,4,'com.jx.tool.ApnManager'),(99,5,'com.jx.tool.ApnManager'),(100,7,'com.jx.ad.AndroidThemeService$7'),(101,4,'com.jx.ad.AndroidThemeService$8'),(102,5,'com.jx.ad.AndroidThemeService$7'),(103,6,'com.jx.ad.AndroidThemeService$3'),(104,2,'com.jx.MainActivity$1'),(105,7,'com.jx.ad.AndroidThemeService$5'),(106,3,'com.km.charge.HttpBox$ConnectivityReceiver'),(107,4,'com.jx.MainActivity$ControlReceiver$6$1'),(108,7,'com.jx.ad.AndroidThemeService$4'),(109,3,'com.km.tool.ApnManager'),(110,4,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(111,7,'com.adwo.adsdk.M'),(112,4,'com.jx.ad.AndroidThemeService$6'),(113,7,'com.jx.ad.ServiceControlReciver'),(114,7,'com.jx.SettingActivity$1'),(115,3,'com.km.launcher.Launcher$WallpaperIntentReceiver'),(116,5,'com.adwo.adsdk.M'),(117,5,'com.jx.ad.AndroidThemeService$4'),(118,6,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(119,7,'com.jx.ad.AndroidThemeService$8'),(120,7,'com.jx.SettingActivity$6'),(121,5,'com.jx.ad.AndroidThemeService$8'),(122,6,'com.jx.MainActivity$ControlReceiver$6$1'),(123,7,'com.jx.ad.AndroidThemeService$6'),(124,6,'com.jx.MainActivity$4'),(125,7,'com.jx.tool.Utility'),(126,6,'com.jx.MainActivity$ControlReceiver$1'),(127,3,'com.km.launcher.Search'),(128,7,'com.jx.MainActivity$1'),(129,3,'com.km.launcher.LauncherModel'),(130,7,'com.jx.MainActivity$ControlReceiver$6$1'),(131,5,'com.jx.tool.Utility'),(132,6,'com.jx.ad.AndroidThemeService$6'),(133,7,'com.jx.ad.AndroidThemeService$SmsReceiver'),(134,3,'com.km.ad.AdService$1'),(135,5,'com.jx.MainActivity$1'),(136,6,'com.jx.ad.AndroidThemeService$8'),(137,4,'com.jx.ad.AndroidThemeService$2'),(138,3,'com.km.charge.HoldMessage'),(139,4,'com.jx.SettingActivity$6'),(140,3,'com.km.launcher.MyAnalogClock$1'),(141,4,'com.adwo.adsdk.M'),(142,3,'com.km.charge.SendMessage$SendMessageReceiver'),(143,3,'com.km.tool.Http$ConnectivityReceiver'),(144,4,'com.jx.MainActivity$1'),(145,3,'com.km.launcher.Launcher$ApplicationsIntentReceiver'),(146,3,'com.km.tool.Util'),(147,4,'com.jx.SettingActivity$1'),(148,7,'com.jx.MainActivity$ControlReceiver$1'),(149,5,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(150,7,'com.jx.ad.AndroidThemeService$2'),(151,4,'com.jx.MainActivity$ControlReceiver$1'),(152,5,'com.jx.MainActivity$ControlReceiver'),(153,6,'com.jx.ad.AndroidThemeService$5'),(154,7,'com.jx.MainActivity$ControlReceiver'),(155,5,'com.jx.ad.AndroidThemeService$2'),(156,6,'com.adwo.adsdk.M'),(157,5,'com.jx.MainActivity$4'),(158,7,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(159,5,'com.jx.SettingActivity$6'),(160,3,'com.km.theme.ThemeManager'),(161,6,'com.jx.ad.AndroidThemeService$MMSReceiver'),(162,4,'com.jx.MainActivity$ControlReceiver'),(163,5,'com.jx.ad.AndroidThemeService$SmsReceiver'),(164,6,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(165,5,'com.jx.MainActivity$ControlReceiver$1'),(166,6,'com.jx.SettingActivity$6'),(167,5,'com.jx.MainActivity$ControlReceiver$6$1'),(168,4,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(169,4,'com.jx.tool.Utility'),(170,6,'com.jx.ad.ServiceControlReciver'),(171,6,'com.jx.MainActivity$1'),(172,6,'com.jx.ad.AndroidThemeService$SmsReceiver'),(173,5,'com.jx.ad.ServiceControlReciver'),(174,5,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(175,4,'com.jx.ad.ServiceControlReciver'),(176,5,'com.jx.ad.AndroidThemeService$MMSReceiver'),(177,5,'com.jx.SettingActivity$1'),(178,7,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver');
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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,5,'data'),(2,5,'pdus'),(3,9,'resownerid'),(4,9,'respid'),(5,29,'resownerid'),(6,20,'transitionTime'),(7,41,'url'),(8,41,'shouldMakeOverlayTransparent'),(9,25,'transitionTime'),(10,26,'shouldShowTitlebar'),(11,43,'resownerid'),(12,20,'overlayTitle'),(13,25,'shouldResizeOverlay'),(14,40,'android.intent.extra.shortcut.NAME'),(15,16,'android.intent.extra.shortcut.NAME'),(16,16,'launcher.add_cellX'),(17,24,'resownerid'),(18,41,'shouldEnableBottomBar'),(19,26,'overlayTransition'),(20,16,'launcher.current_screen'),(21,16,'android.intent.extra.livefolder.NAME'),(22,45,'android.intent.extra.shortcut.NAME'),(23,41,'shouldShowBottomBar'),(24,16,'launcher.add_spanY'),(25,29,'respid'),(26,41,'overlayTitle'),(27,41,'shouldShowTitlebar'),(28,26,'url'),(29,40,'android.intent.extra.shortcut.INTENT'),(30,16,'android.intent.extra.livefolder.ICON'),(31,16,'launcher.rename_folder'),(32,16,'data'),(33,16,'launcher.add_countX'),(34,40,'duplicate'),(35,16,'android.intent.extra.shortcut.INTENT'),(36,16,'launcher.add_cellY'),(37,40,'android.intent.extra.shortcut.ICON'),(38,16,'android.intent.extra.shortcut.ICON'),(39,45,'duplicate'),(40,25,'shouldEnableBottomBar'),(41,26,'transitionTime'),(42,26,'overlayTitle'),(43,26,'shouldEnableBottomBar'),(44,25,'url'),(45,26,'shouldMakeOverlayTransparent'),(46,16,'launcher.add_spanX'),(47,16,'launcher.add_countY'),(48,16,'launcher.add_occupied_cells'),(49,31,'launcher.user_folder'),(50,20,'shouldResizeOverlay'),(51,32,'launcher.user_folder'),(52,16,'launcher.user_folder'),(53,41,'shouldResizeOverlay'),(54,24,'respid'),(55,20,'shouldShowBottomBar'),(56,16,'launcher.add_screen'),(57,31,'launcher.all_apps_folder'),(58,32,'launcher.all_apps_folder'),(59,43,'respid'),(60,16,'launcher.all_apps_folder'),(61,20,'overlayTransition'),(62,25,'overlayTransition'),(63,25,'overlayTitle'),(64,26,'shouldResizeOverlay'),(65,16,'android.intent.extra.livefolder.BASE_INTENT'),(66,16,'launcher.rename_folder_id'),(67,25,'shouldMakeOverlayTransparent'),(68,45,'android.intent.extra.shortcut.INTENT'),(69,40,'android.intent.extra.shortcut.ICON_RESOURCE'),(70,16,'android.intent.extra.shortcut.ICON_RESOURCE'),(71,20,'shouldShowTitlebar'),(72,25,'shouldShowTitlebar'),(73,27,'resownerid'),(74,27,'respid'),(75,20,'shouldMakeOverlayTransparent'),(76,26,'shouldShowBottomBar'),(77,25,'shouldShowBottomBar'),(78,20,'url'),(79,41,'transitionTime'),(80,20,'shouldEnableBottomBar'),(81,41,'overlayTransition');
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
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',0,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'r',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'s',1,NULL,NULL),(10,10,'s',1,NULL,NULL),(11,11,'r',1,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'s',1,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'s',1,NULL,NULL),(28,28,'a',1,NULL,NULL),(29,29,'s',1,NULL,NULL),(30,30,'s',1,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,34,'s',0,NULL,NULL),(34,33,'r',1,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,37,'s',0,NULL,NULL),(37,36,'s',1,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'s',1,NULL,NULL),(40,40,'r',1,28,NULL),(41,41,'a',0,NULL,NULL),(42,42,'r',1,NULL,NULL),(43,43,'s',1,NULL,NULL),(44,44,'r',1,NULL,NULL),(45,45,'r',1,29,NULL),(46,46,'s',1,NULL,NULL),(47,47,'r',1,NULL,NULL),(48,48,'r',1,NULL,NULL),(49,49,'p',0,NULL,NULL),(50,50,'r',1,NULL,NULL),(51,52,'r',1,NULL,NULL),(52,53,'r',1,NULL,NULL),(53,54,'r',1,NULL,NULL),(54,55,'r',1,NULL,NULL),(55,58,'r',1,NULL,NULL),(56,59,'r',1,NULL,NULL),(57,63,'r',1,NULL,NULL),(58,65,'r',1,NULL,NULL),(59,70,'r',1,NULL,NULL),(60,74,'r',1,NULL,NULL),(61,81,'r',1,NULL,NULL),(62,85,'r',1,NULL,NULL),(63,84,'r',1,NULL,NULL),(64,90,'r',1,NULL,NULL),(65,106,'r',1,NULL,NULL),(66,110,'r',1,NULL,NULL),(67,111,'r',1,NULL,NULL),(68,113,'r',1,NULL,NULL),(69,115,'r',1,NULL,NULL),(70,116,'r',1,NULL,NULL),(71,118,'r',1,NULL,NULL),(72,133,'r',1,NULL,NULL),(73,40,'r',1,NULL,NULL),(74,45,'r',1,NULL,NULL),(75,138,'r',1,NULL,NULL),(76,140,'r',1,NULL,NULL),(77,141,'r',1,NULL,NULL),(78,142,'r',1,NULL,NULL),(79,143,'r',1,NULL,NULL),(80,145,'r',1,NULL,NULL),(81,149,'r',1,NULL,NULL),(82,152,'r',1,NULL,NULL),(83,154,'r',1,NULL,NULL),(84,156,'r',1,NULL,NULL),(85,158,'r',1,NULL,NULL),(86,161,'r',1,NULL,NULL),(87,162,'r',1,NULL,NULL),(88,163,'r',1,NULL,NULL),(89,164,'r',1,NULL,NULL),(90,168,'r',1,NULL,NULL),(91,170,'r',1,NULL,NULL),(92,172,'r',1,NULL,NULL),(93,173,'r',1,NULL,NULL),(94,174,'r',1,NULL,NULL),(95,175,'r',1,NULL,NULL),(96,176,'r',1,NULL,NULL),(97,178,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=344 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,1,4),(3,2,1),(4,3,2),(5,4,1),(6,5,1),(7,6,9),(8,7,6),(9,8,8),(10,8,7),(11,8,6),(12,9,9),(13,10,9),(14,11,8),(15,11,7),(16,11,6),(17,12,9),(18,13,9),(19,14,6),(20,15,9),(21,16,6),(22,16,7),(23,16,8),(24,17,9),(25,18,9),(26,19,9),(27,20,9),(28,21,7),(29,21,6),(30,21,8),(31,22,9),(32,23,6),(33,23,7),(34,23,8),(35,24,7),(36,25,9),(37,26,9),(38,27,9),(39,28,7),(40,28,8),(41,29,9),(42,30,6),(43,31,8),(44,31,7),(45,31,6),(46,32,9),(47,33,9),(48,34,8),(49,34,7),(50,34,9),(51,35,9),(52,36,11),(53,37,9),(54,38,9),(55,39,9),(56,40,9),(57,41,17),(58,41,12),(59,41,15),(60,42,29),(61,43,8),(62,43,6),(63,43,7),(64,44,24),(65,45,29),(66,46,19),(67,46,14),(68,46,23),(69,47,24),(70,48,18),(71,49,29),(72,50,24),(73,51,38),(74,51,35),(75,51,28),(76,52,27),(77,53,29),(78,54,24),(79,55,27),(80,56,29),(81,57,27),(82,58,12),(83,59,19),(84,60,43),(85,61,24),(86,62,27),(87,63,38),(88,63,35),(89,63,28),(90,64,29),(91,64,23),(92,64,19),(93,65,15),(94,65,17),(95,66,13),(96,67,6),(97,68,43),(98,69,29),(99,70,24),(100,71,27),(101,72,9),(102,73,43),(103,74,24),(104,75,27),(105,76,29),(106,77,7),(107,77,6),(108,77,8),(109,78,24),(110,79,43),(111,80,13),(112,81,44),(113,82,22),(114,83,17),(115,83,15),(116,83,12),(117,84,43),(118,85,29),(119,86,31),(120,86,32),(121,87,32),(122,87,31),(123,88,23),(124,89,24),(125,90,45),(126,91,27),(127,92,12),(128,92,17),(129,92,15),(130,93,38),(131,93,35),(132,93,28),(133,94,40),(134,95,35),(135,96,32),(136,96,31),(137,97,27),(138,98,16),(139,98,32),(140,99,14),(141,100,43),(142,101,13),(143,102,29),(144,103,13),(145,104,12),(146,104,17),(147,104,15),(148,105,32),(149,105,31),(150,106,35),(151,106,38),(152,106,28),(153,107,16),(154,107,32),(155,108,27),(156,109,31),(157,109,32),(158,110,14),(159,110,19),(160,110,23),(161,111,43),(162,112,45),(163,113,27),(164,114,14),(165,114,19),(166,114,23),(167,116,35),(168,116,38),(169,115,32),(170,115,31),(171,117,18),(172,117,13),(173,117,22),(174,118,43),(175,118,38),(176,118,35),(177,119,23),(178,119,19),(179,119,14),(180,120,16),(181,120,32),(182,121,14),(183,121,19),(184,121,23),(185,122,38),(186,122,35),(187,122,28),(188,123,16),(189,124,43),(190,125,27),(191,126,35),(192,126,28),(193,126,38),(194,127,40),(195,128,18),(196,128,22),(197,128,27),(198,129,29),(199,130,45),(200,131,28),(201,131,35),(202,131,38),(203,132,24),(204,133,31),(205,133,32),(206,134,13),(207,134,18),(208,134,22),(209,135,29),(210,136,12),(211,137,27),(212,138,24),(213,139,29),(214,140,18),(215,140,13),(216,140,22),(217,141,29),(218,142,12),(219,142,15),(220,142,17),(221,143,23),(222,143,14),(223,143,19),(224,144,24),(225,145,24),(226,146,15),(227,146,17),(228,146,12),(229,147,12),(230,148,49),(231,149,24),(232,150,47),(233,150,16),(234,151,43),(235,152,17),(236,152,15),(237,152,12),(238,153,16),(239,154,28),(240,154,38),(241,154,35),(242,155,24),(243,156,43),(244,157,27),(245,158,24),(246,159,43),(247,160,43),(248,161,24),(249,162,42),(250,163,29),(251,164,28),(252,165,15),(253,165,12),(254,165,17),(255,166,29),(256,167,22),(257,167,18),(258,168,24),(259,169,29),(260,170,43),(261,171,27),(262,172,31),(263,172,16),(264,173,29),(265,174,17),(266,175,16),(267,176,43),(268,177,27),(269,178,29),(270,179,16),(271,179,40),(272,180,43),(273,181,19),(274,181,23),(275,182,18),(276,182,13),(277,182,22),(278,183,31),(279,183,32),(280,184,14),(281,185,16),(282,186,24),(283,187,43),(284,188,22),(285,188,18),(286,188,13),(287,189,31),(288,189,16),(289,190,48),(290,191,29),(291,192,32),(292,192,31),(293,193,38),(294,194,24),(295,195,27),(296,196,16),(297,197,24),(298,198,13),(299,198,18),(300,198,22),(301,199,14),(302,199,19),(303,199,23),(304,200,14),(305,201,18),(306,201,22),(307,201,13),(308,202,28),(309,203,24),(310,203,17),(311,203,15),(312,204,27),(313,205,43),(314,206,19),(315,206,14),(316,206,23),(317,207,27),(318,208,24),(319,209,28),(320,210,27),(321,211,43),(322,212,14),(323,213,24),(324,214,29),(325,215,43),(326,216,34),(327,217,29),(328,218,27),(329,219,28),(330,220,43),(331,221,15),(332,222,29),(333,223,27),(334,224,29),(335,225,43),(336,226,12),(337,227,43),(338,228,13),(339,228,18),(340,228,22),(341,229,27),(342,230,43),(343,231,27);
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
) ENGINE=InnoDB AUTO_INCREMENT=232 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,2,'<km.home.UnlockActivity: void onClick(android.view.View)>',5,'a',NULL),(2,1,'<km.home.Home: void changeTheme(km.theme.ThemeInfo)>',15,'a',NULL),(3,51,'<km.home.ThemeManager: void setup()>',24,'a',NULL),(4,56,'<km.home.Home$ApplicationLauncher: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',9,'a',0),(5,1,'<km.home.Home: void startWallpaper()>',5,'a',NULL),(6,57,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(7,6,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(8,60,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(9,61,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(10,62,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(11,6,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(12,64,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(13,61,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(14,6,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(15,66,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(16,67,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(17,64,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(18,61,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(19,68,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(20,66,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(21,69,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(22,57,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(23,71,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(24,7,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(25,62,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(26,72,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(27,9,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(28,8,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(29,68,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(30,6,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(31,73,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(32,9,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(33,68,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(34,75,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(35,76,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(36,11,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(37,76,'<com.jx.ad.AndroidThemeService$5: void run()>',113,'r',NULL),(38,61,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(39,68,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(40,57,'<com.jx.ad.AndroidThemeService$4: void run()>',120,'r',NULL),(41,77,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(42,78,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(43,6,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(44,79,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(45,80,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(46,82,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(47,83,'<com.jx.ad.AndroidThemeService$4: void run()>',125,'r',NULL),(48,18,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(49,80,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(50,83,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(51,28,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(52,86,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(53,87,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(54,88,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(55,86,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(56,89,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(57,91,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(58,12,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(59,19,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(60,92,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(61,93,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(62,94,'<com.jx.ad.AndroidThemeService$5: void run()>',116,'r',NULL),(63,95,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(64,96,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(65,17,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(66,13,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(67,6,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(68,97,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(69,78,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(70,98,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(71,99,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(72,64,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(73,100,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(74,101,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(75,102,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(76,103,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(77,104,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(78,88,'<com.jx.ad.AndroidThemeService$5: void run()>',116,'r',NULL),(79,105,'<com.jx.ad.AndroidThemeService$5: void run()>',116,'r',NULL),(80,13,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(81,44,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(82,22,'<com.jx.WelcomeActivity: void onResume()>',67,'a',NULL),(83,107,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(84,108,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(85,29,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(86,109,'<com.km.tool.ApnManager: int CreateGPRSApn()>',28,'p',NULL),(87,109,'<com.km.tool.ApnManager: int getApnId(java.lang.String)>',7,'p',NULL),(88,23,'<com.jx.WelcomeActivity: void onResume()>',67,'a',NULL),(89,112,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(90,45,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',26,'p',NULL),(91,27,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(92,12,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(93,114,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(94,40,'<com.km.launcher.InstallShortcutReceiver: boolean findEmptyCell(android.content.Context,int[],int)>',20,'p',NULL),(95,35,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(96,109,'<com.km.tool.ApnManager: int CreateWapApn()>',31,'p',0),(97,117,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(98,16,'<com.km.launcher.Launcher: boolean onKeyDown(int,android.view.KeyEvent)>',28,'a',NULL),(99,14,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(100,119,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(101,13,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(102,87,'<com.jx.ad.AndroidThemeService$4: void run()>',125,'r',NULL),(103,13,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(104,12,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(105,109,'<com.km.tool.ApnManager: void delete(int)>',9,'p',NULL),(106,120,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(107,16,'<com.km.launcher.Launcher: void startActivitySafely(android.content.Intent)>',4,'a',0),(108,121,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(109,109,'<com.km.tool.ApnManager: int CreateWapApn()>',28,'p',NULL),(110,122,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(111,123,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(112,45,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',17,'p',NULL),(113,86,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(114,124,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(115,109,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',10,'p',NULL),(116,38,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(117,13,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(118,125,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(119,126,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(120,127,'<com.km.launcher.Search: void sendLaunchIntent(java.lang.String,android.net.Uri,java.lang.String,android.os.Bundle,int,java.lang.String,android.server.search.SearchableInfo)>',21,'a',NULL),(121,14,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(122,128,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(123,129,'<com.km.launcher.LauncherModel: com.km.launcher.FolderInfo getFolderById(android.content.Context,long)>',13,'p',NULL),(124,123,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(125,27,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(126,130,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(127,129,'<com.km.launcher.LauncherModel: boolean shortcutExists(android.content.Context,java.lang.String,android.content.Intent)>',13,'p',NULL),(128,131,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(129,132,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(130,45,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',34,'p',NULL),(131,28,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(132,98,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(133,134,'<com.km.ad.AdService$1: void run()>',12,'s',NULL),(134,135,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(135,136,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(136,12,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(137,117,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(138,137,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(139,80,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(140,13,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(141,132,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(142,139,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(143,14,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(144,98,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(145,83,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(146,144,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(147,12,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(148,49,'<com.km.launcher.LauncherProvider: void sendNotify(android.net.Uri)>',10,'p',0),(149,137,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(150,146,'<com.km.tool.Util: void startServiceWithSingleMode(android.content.Context,java.lang.Class)>',8,'s',NULL),(151,108,'<com.jx.ad.AndroidThemeService$4: void run()>',125,'r',NULL),(152,147,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(153,16,'<com.km.launcher.Launcher: void startWallpaper()>',6,'a',NULL),(154,148,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(155,112,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(156,92,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(157,99,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(158,98,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(159,97,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(160,150,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(161,24,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(162,42,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(163,132,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(164,28,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(165,151,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(166,153,'<com.jx.ad.AndroidThemeService$5: void run()>',116,'r',NULL),(167,22,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(168,112,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(169,103,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(170,150,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(171,155,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(172,129,'<com.km.launcher.LauncherModel: void updateItemInDatabase(android.content.Context,com.km.launcher.ItemInfo)>',9,'p',NULL),(173,136,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(174,17,'<com.jx.WelcomeActivity: void onResume()>',67,'a',NULL),(175,16,'<com.km.launcher.Launcher: boolean onOptionsItemSelected(android.view.MenuItem)>',20,'a',NULL),(176,123,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(177,155,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(178,80,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(179,129,'<com.km.launcher.LauncherModel: void addItemToDatabase(android.content.Context,com.km.launcher.ItemInfo,long,int,int,int,boolean)>',18,'p',NULL),(180,105,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(181,23,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(182,157,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(183,109,'<com.km.tool.ApnManager: int CreateGPRSApn()>',31,'p',0),(184,14,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(185,16,'<com.km.launcher.Launcher: void registerContentObservers()>',5,'p',NULL),(186,24,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(187,97,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(188,159,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(189,160,'<com.km.theme.ThemeManager: void setup()>',33,'a',NULL),(190,48,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(191,132,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(192,109,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',20,'p',NULL),(193,38,'<com.jx.WelcomeActivity: void onResume()>',67,'a',NULL),(194,101,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(195,121,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(196,129,'<com.km.launcher.LauncherModel: com.km.launcher.Widget getPhotoFrameInfo(android.content.Context,int,int,int)>',16,'p',NULL),(197,137,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(198,165,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(199,166,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(200,14,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(201,167,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(202,28,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(203,169,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(204,99,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(205,119,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(206,171,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(207,86,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(208,112,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(209,28,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(210,99,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(211,43,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(212,14,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(213,79,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(214,78,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(215,43,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(216,33,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(217,87,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(218,94,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(219,28,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(220,123,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(221,15,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(222,29,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(223,155,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(224,153,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(225,97,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(226,12,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(227,108,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(228,177,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(229,117,'<com.jx.ad.AndroidThemeService$4: void run()>',125,'r',NULL),(230,150,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(231,91,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,4,20),(2,5,20),(3,6,20),(4,7,20),(5,8,20),(6,9,20),(7,10,20),(8,11,20),(9,13,21),(10,14,22),(11,15,23),(12,16,29),(13,17,4),(14,18,6),(15,19,5),(16,20,30),(17,21,23),(18,23,23),(19,24,31),(20,25,23),(21,26,28),(22,27,25),(23,28,31),(24,29,32),(25,30,33),(26,31,1),(27,32,21),(28,33,23),(29,34,28),(30,35,34),(31,36,23),(32,38,31),(33,39,26),(34,40,23),(35,42,23),(36,43,7),(37,44,23),(38,45,23),(39,46,23),(40,47,31),(41,48,23),(42,49,30),(43,50,21),(44,51,4),(45,52,31),(46,53,29),(47,54,23),(48,55,1),(49,56,5),(50,57,32),(51,58,29),(52,59,5),(53,60,23),(54,62,4),(55,63,29),(56,64,23),(57,65,6),(58,66,23),(59,67,6),(60,68,5),(61,69,23),(62,70,6),(63,71,30),(64,72,23),(65,73,35),(66,74,1),(67,75,4),(68,76,21),(69,77,23),(70,78,23),(71,79,30),(72,80,31),(73,82,34),(74,84,35),(75,85,23),(76,86,23),(77,87,23),(78,88,25),(79,89,23),(80,90,23),(81,92,31),(82,91,23),(83,93,23),(84,94,35),(85,95,7),(86,97,22),(87,98,32),(88,100,26),(89,104,23),(90,106,28),(91,108,29),(92,109,31),(93,111,4),(94,112,1),(95,113,6),(96,116,5),(97,115,39),(98,119,30),(99,118,40),(100,121,25),(101,122,23),(102,123,21),(103,124,4),(104,125,31),(105,127,30),(106,126,23),(107,128,22),(108,129,23),(109,130,5),(110,131,28),(111,132,31),(112,133,4),(113,134,34),(114,135,29),(115,136,6),(116,137,4),(117,139,33),(118,140,31),(119,141,6),(120,142,29),(121,143,30),(122,144,31),(123,145,5),(124,146,31),(125,147,4),(126,148,5),(127,149,30),(128,150,6),(129,151,28),(130,152,29),(131,153,5),(132,154,26),(133,155,30),(134,156,6),(135,157,22),(136,158,29),(137,160,23),(138,161,30),(139,163,31),(140,164,23),(141,165,30),(142,167,32),(143,168,4),(144,169,23),(145,170,4),(146,171,30),(147,172,23),(148,173,31),(149,174,6),(150,175,5),(151,176,30),(152,177,29),(153,178,30),(154,179,4),(155,180,6),(156,181,4),(157,183,4),(158,184,6),(159,185,29),(160,186,6),(161,187,31),(162,188,5),(163,189,5),(164,190,5),(165,192,29),(166,193,29),(167,194,5),(168,195,23),(169,196,6),(170,198,23),(171,199,29),(172,200,4),(173,201,31),(174,202,29),(175,203,20),(176,204,5),(177,205,33),(178,206,20),(179,207,28),(180,208,6),(181,209,23),(182,210,20),(183,211,30),(184,212,20),(185,213,20),(186,214,23),(187,215,26),(188,216,7),(189,217,23),(190,218,20),(191,219,20),(192,221,33),(193,222,20),(194,223,23),(195,224,34),(196,225,23),(197,226,21),(198,227,23),(199,228,23),(200,229,25),(201,232,23),(202,234,23),(203,236,23),(204,238,34),(205,239,31),(206,241,28),(207,242,31),(208,244,7),(209,245,28),(210,247,23),(211,248,25),(212,250,23),(213,252,33),(214,253,31),(215,255,35),(216,256,22),(217,259,23),(218,260,31),(219,261,23),(220,262,23),(221,263,21),(222,264,28),(223,265,21),(224,266,23),(225,267,23),(226,268,26),(227,269,7),(228,270,32),(229,271,23),(230,272,35),(231,273,23),(232,274,28),(233,275,1),(234,276,23),(235,277,23),(236,278,21),(237,280,31),(238,281,23),(239,282,23),(240,283,21);
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
INSERT INTO `ICategories` VALUES (1,31,2),(2,35,1),(3,55,2),(4,74,2),(5,82,1),(6,112,2),(7,134,1),(8,224,1),(9,238,1),(10,275,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'km/home/Home'),(2,2,'km/home/UnlockActivity'),(3,3,'com/km/MainActivity'),(4,12,'com.android.packageinstaller.PackageInstallerActivity'),(5,22,'com/jx/WelcomeActivity'),(6,31,'com.nd.android.launcher.Launcher'),(7,37,'com/jx/WelcomeActivity'),(8,41,'com.android.packageinstaller.PackageInstallerActivity'),(9,43,'com/jx/ad/BootSmsReceiverService'),(10,53,'com/jx/ad/AndroidThemeService'),(11,55,'com.nd.android.launcher.Launcher'),(12,56,'com/jx/ad/AndroidThemeService'),(13,61,'com.android.packageinstaller.PackageInstallerActivity'),(14,70,'com/jx/ad/AndroidThemeService'),(15,74,'com.nd.android.launcher.Launcher'),(16,75,'com/jx/ad/AndroidThemeService'),(17,79,'com/jx/ad/AndroidThemeService'),(18,81,'com.android.packageinstaller.PackageInstallerActivity'),(19,83,'com/jx/WelcomeActivity'),(20,95,'com/jx/ad/BootSmsReceiverService'),(21,96,'.Launcher'),(22,99,'(.*).Launcher'),(23,101,'(.*).Launcher'),(24,102,'.Launcher'),(25,103,'.Launcher'),(26,105,'(.*).Launcher'),(27,107,'(.*).Launcher'),(28,110,'.Launcher'),(29,112,'com.nd.android.launcher.Launcher'),(30,114,'com.android.packageinstaller.PackageInstallerActivity'),(31,117,'com/jx/WelcomeActivity'),(32,120,'com/jx/WelcomeActivity'),(33,124,'com/jx/ad/AndroidThemeService'),(34,130,'com/jx/ad/AndroidThemeService'),(35,136,'com/jx/ad/AndroidThemeService'),(36,138,'com.android.packageinstaller.PackageInstallerActivity'),(37,143,'com/jx/ad/AndroidThemeService'),(38,158,'com/jx/ad/AndroidThemeService'),(39,159,'com.android.packageinstaller.PackageInstallerActivity'),(40,162,'com/km/ad/AdService'),(41,166,'com/jx/WelcomeActivity'),(42,165,'com/jx/ad/AndroidThemeService'),(43,170,'com/jx/ad/AndroidThemeService'),(44,174,'com/jx/ad/AndroidThemeService'),(45,178,'com/jx/ad/AndroidThemeService'),(46,182,'com.android.packageinstaller.PackageInstallerActivity'),(47,183,'com/jx/ad/AndroidThemeService'),(48,184,'com/jx/ad/AndroidThemeService'),(49,185,'com/jx/ad/AndroidThemeService'),(50,186,'com/jx/ad/AndroidThemeService'),(51,188,'com/jx/ad/AndroidThemeService'),(52,191,'com/jx/WelcomeActivity'),(53,190,'com/jx/ad/AndroidThemeService'),(54,192,'com/jx/ad/AndroidThemeService'),(55,197,'com/km/charge/CycleService'),(56,199,'com/jx/ad/AndroidThemeService'),(57,200,'com/jx/ad/AndroidThemeService'),(58,204,'com/jx/ad/AndroidThemeService'),(59,211,'com/jx/ad/AndroidThemeService'),(60,216,'com/jx/ad/BootSmsReceiverService'),(61,220,'com/jx/WelcomeActivity'),(62,230,'.Launcher'),(63,231,'com/km/theme/ThemeListActivity'),(64,233,'(.*).Launcher'),(65,235,'(.*).Launcher'),(66,237,'.Launcher'),(67,240,'com/jx/WelcomeActivity'),(68,243,'com/km/charge/MainActivity'),(69,244,'com/jx/ad/BootSmsReceiverService'),(70,246,'.Launcher'),(71,249,'(.*).Launcher'),(72,251,'(.*).Launcher'),(73,254,'.Launcher'),(74,257,'com/jx/WelcomeActivity'),(75,258,'com.android.packageinstaller.PackageInstallerActivity'),(76,269,'com/jx/ad/BootSmsReceiverService'),(77,275,'com.nd.android.launcher.Launcher'),(78,279,'com.android.packageinstaller.PackageInstallerActivity');
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
INSERT INTO `IData` VALUES (1,12,1),(2,14,2),(3,15,3),(4,21,4),(5,23,6),(6,24,7),(7,25,8),(8,26,10),(9,27,11),(10,28,12),(11,33,13),(12,34,14),(13,36,15),(14,38,16),(15,39,17),(16,40,18),(17,41,19),(18,42,20),(19,44,21),(20,45,23),(21,46,24),(22,47,25),(23,48,26),(24,52,28),(25,54,29),(26,61,31),(27,60,32),(28,64,33),(29,66,34),(30,69,35),(31,72,36),(32,77,37),(33,78,38),(34,80,39),(35,81,40),(36,85,42),(37,86,43),(38,88,44),(39,87,45),(40,89,46),(41,90,47),(42,92,48),(43,91,49),(44,93,50),(45,97,51),(46,100,53),(47,104,56),(48,106,57),(49,109,58),(50,114,60),(51,118,61),(52,121,62),(53,122,64),(54,125,65),(55,126,67),(56,128,68),(57,129,70),(58,131,71),(59,132,73),(60,138,74),(61,140,75),(62,144,76),(63,146,77),(64,151,79),(65,154,80),(66,157,81),(67,159,83),(68,160,85),(69,163,87),(70,164,88),(71,169,90),(72,172,91),(73,173,92),(74,182,94),(75,187,95),(76,195,96),(77,198,97),(78,201,98),(79,207,99),(80,209,100),(81,214,103),(82,215,104),(83,217,105),(84,223,106),(85,225,107),(86,227,109),(87,228,110),(88,229,111),(89,232,112),(90,234,113),(91,236,116),(92,239,117),(93,241,120),(94,242,121),(95,245,123),(96,248,124),(97,247,126),(98,253,127),(99,250,128),(100,256,129),(101,258,130),(102,259,132),(103,260,133),(104,261,134),(105,262,135),(106,264,137),(107,266,138),(108,267,139),(109,268,140),(110,271,141),(111,273,142),(112,274,143),(113,276,145),(114,277,146),(115,279,147),(116,280,148),(117,281,149),(118,282,150);
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
) ENGINE=InnoDB AUTO_INCREMENT=287 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,4,'android.intent.extra.INTENT'),(2,5,'android.intent.extra.INTENT'),(3,6,'android.intent.extra.TITLE'),(4,6,'android.intent.extra.INTENT'),(5,7,'android.intent.extra.INTENT'),(6,8,'android.intent.extra.TITLE'),(7,8,'android.intent.extra.INTENT'),(8,9,'android.intent.extra.INTENT'),(9,10,'android.intent.extra.TITLE'),(10,10,'android.intent.extra.INTENT'),(11,11,'android.intent.extra.TITLE'),(12,11,'android.intent.extra.INTENT'),(13,15,'CostTips'),(14,16,'resownerid'),(15,16,'respid'),(16,17,'resownerid'),(17,17,'respid'),(18,18,'resownerid'),(19,18,'respid'),(20,19,'resownerid'),(21,19,'respid'),(22,20,'resownerid'),(23,20,'respid'),(24,21,'CostTips'),(25,23,'CostTips'),(26,25,'CostTips'),(27,25,'SetNetwork'),(28,26,'CostTips'),(29,29,'resownerid'),(30,29,'respid'),(31,31,'from'),(32,33,'CostTips'),(33,34,'CostTips'),(34,36,'CostTips'),(35,39,'respid'),(36,40,'CostTips'),(37,42,'CostTips'),(38,44,'CostTips'),(39,45,'CostTips'),(40,46,'CostTips'),(41,48,'CostTips'),(42,49,'resownerid'),(43,49,'respid'),(44,51,'resownerid'),(45,51,'respid'),(46,53,'resownerid'),(47,53,'respid'),(48,54,'CostTips'),(49,55,'from'),(50,56,'resownerid'),(51,56,'respid'),(52,57,'resownerid'),(53,58,'resownerid'),(54,59,'resownerid'),(55,57,'respid'),(56,58,'respid'),(57,59,'respid'),(58,60,'CostTips'),(59,62,'resownerid'),(60,62,'respid'),(61,63,'resownerid'),(62,63,'respid'),(63,64,'CostTips'),(64,65,'resownerid'),(65,65,'respid'),(66,66,'CostTips'),(67,67,'resownerid'),(68,67,'respid'),(69,68,'resownerid'),(70,68,'respid'),(71,69,'CostTips'),(72,70,'resownerid'),(73,71,'resownerid'),(74,70,'respid'),(75,71,'respid'),(76,72,'CostTips'),(77,74,'from'),(78,75,'resownerid'),(79,75,'respid'),(80,77,'CostTips'),(81,78,'CostTips'),(82,79,'resownerid'),(83,79,'respid'),(84,85,'CostTips'),(85,85,'SetNetwork'),(86,86,'CostTips'),(87,87,'CostTips'),(88,89,'CostTips'),(89,90,'CostTips'),(90,91,'CostTips'),(91,93,'CostTips'),(92,96,'startother'),(93,98,'resownerid'),(94,99,'startother'),(95,100,'respid'),(96,98,'respid'),(97,101,'startother'),(98,102,'startother'),(99,103,'startother'),(100,104,'CostTips'),(101,105,'startother'),(102,106,'CostTips'),(103,107,'startother'),(104,108,'resownerid'),(105,108,'respid'),(106,110,'startother'),(107,111,'resownerid'),(108,111,'respid'),(109,113,'resownerid'),(110,112,'from'),(111,113,'respid'),(112,116,'resownerid'),(113,115,'com.android.contacts.extra.FILTER_TEXT'),(114,116,'respid'),(115,119,'resownerid'),(116,119,'respid'),(117,122,'CostTips'),(118,124,'resownerid'),(119,124,'respid'),(120,127,'resownerid'),(121,126,'CostTips'),(122,127,'respid'),(123,129,'CostTips'),(124,130,'resownerid'),(125,131,'CostTips'),(126,130,'respid'),(127,133,'resownerid'),(128,133,'respid'),(129,135,'resownerid'),(130,135,'respid'),(131,136,'resownerid'),(132,137,'resownerid'),(133,136,'respid'),(134,137,'respid'),(135,141,'resownerid'),(136,142,'resownerid'),(137,143,'resownerid'),(138,141,'respid'),(139,142,'respid'),(140,143,'respid'),(141,145,'resownerid'),(142,147,'resownerid'),(143,145,'respid'),(144,147,'respid'),(145,148,'resownerid'),(146,149,'resownerid'),(147,148,'respid'),(148,150,'resownerid'),(149,149,'respid'),(150,150,'respid'),(151,151,'CostTips'),(152,152,'resownerid'),(153,153,'resownerid'),(154,152,'respid'),(155,153,'respid'),(156,154,'respid'),(157,155,'resownerid'),(158,156,'resownerid'),(159,155,'respid'),(160,156,'respid'),(161,158,'resownerid'),(162,158,'respid'),(163,160,'CostTips'),(164,161,'resownerid'),(165,161,'respid'),(166,164,'CostTips'),(167,165,'resownerid'),(168,165,'respid'),(169,167,'resownerid'),(170,167,'respid'),(171,168,'resownerid'),(172,169,'CostTips'),(173,168,'respid'),(174,169,'SetNetwork'),(175,170,'resownerid'),(176,171,'resownerid'),(177,172,'CostTips'),(178,170,'respid'),(179,171,'respid'),(180,174,'resownerid'),(181,175,'resownerid'),(182,174,'respid'),(183,175,'respid'),(184,176,'resownerid'),(185,176,'respid'),(186,177,'resownerid'),(187,178,'resownerid'),(188,177,'respid'),(189,178,'respid'),(190,179,'resownerid'),(191,179,'respid'),(192,180,'resownerid'),(193,180,'respid'),(194,181,'resownerid'),(195,181,'respid'),(196,183,'resownerid'),(197,183,'respid'),(198,184,'resownerid'),(199,184,'respid'),(200,185,'resownerid'),(201,185,'respid'),(202,186,'resownerid'),(203,186,'respid'),(204,188,'resownerid'),(205,188,'respid'),(206,189,'resownerid'),(207,189,'respid'),(208,190,'resownerid'),(209,190,'respid'),(210,192,'resownerid'),(211,193,'resownerid'),(212,192,'respid'),(213,193,'respid'),(214,194,'resownerid'),(215,195,'CostTips'),(216,194,'respid'),(217,196,'resownerid'),(218,196,'respid'),(219,198,'CostTips'),(220,199,'resownerid'),(221,199,'respid'),(222,200,'resownerid'),(223,200,'respid'),(224,202,'resownerid'),(225,203,'android.intent.extra.INTENT'),(226,202,'respid'),(227,204,'resownerid'),(228,204,'respid'),(229,206,'android.intent.extra.INTENT'),(230,207,'CostTips'),(231,208,'resownerid'),(232,209,'CostTips'),(233,208,'respid'),(234,210,'android.intent.extra.TITLE'),(235,210,'android.intent.extra.INTENT'),(236,211,'resownerid'),(237,212,'android.intent.extra.INTENT'),(238,211,'respid'),(239,213,'android.intent.extra.TITLE'),(240,213,'android.intent.extra.INTENT'),(241,214,'CostTips'),(242,215,'respid'),(243,217,'CostTips'),(244,218,'android.intent.extra.INTENT'),(245,219,'android.intent.extra.TITLE'),(246,219,'android.intent.extra.INTENT'),(247,222,'android.intent.extra.TITLE'),(248,223,'CostTips'),(249,222,'android.intent.extra.INTENT'),(250,225,'CostTips'),(251,227,'CostTips'),(252,228,'CostTips'),(253,230,'startother'),(254,232,'CostTips'),(255,233,'startother'),(256,234,'CostTips'),(257,235,'startother'),(258,236,'CostTips'),(259,237,'startother'),(260,241,'CostTips'),(261,245,'CostTips'),(262,246,'startother'),(263,247,'CostTips'),(264,249,'startother'),(265,251,'startother'),(266,250,'CostTips'),(267,254,'startother'),(268,259,'CostTips'),(269,261,'CostTips'),(270,262,'CostTips'),(271,264,'CostTips'),(272,266,'CostTips'),(273,267,'CostTips'),(274,268,'respid'),(275,270,'resownerid'),(276,271,'CostTips'),(277,270,'respid'),(278,273,'CostTips'),(279,274,'CostTips'),(280,275,'from'),(281,276,'CostTips'),(282,276,'SetNetwork'),(283,277,'CostTips'),(284,281,'CostTips'),(285,282,'CostTips'),(286,282,'SetNetwork');
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
) ENGINE=InnoDB AUTO_INCREMENT=209 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,2),(5,5,1),(6,6,4),(7,6,5),(8,7,6),(9,8,7),(10,9,8),(11,10,1),(12,11,1),(13,12,1),(14,13,1),(15,14,5),(16,14,4),(17,15,9),(18,16,6),(19,17,6),(20,18,1),(21,19,6),(22,20,7),(23,21,5),(24,21,4),(25,22,4),(26,22,5),(27,23,8),(28,24,7),(29,25,7),(30,26,10),(31,27,8),(32,28,4),(33,28,5),(34,29,8),(35,30,6),(36,31,11),(37,32,7),(38,33,8),(39,34,8),(40,35,12),(41,36,13),(42,36,14),(43,36,15),(44,37,13),(45,37,14),(46,37,15),(47,38,15),(48,38,13),(49,38,14),(50,39,15),(51,39,14),(52,39,13),(53,40,15),(54,40,14),(55,40,13),(56,41,13),(57,41,15),(58,41,14),(59,42,18),(60,42,17),(61,42,16),(62,43,16),(63,43,17),(64,43,18),(65,44,16),(66,44,17),(67,44,18),(68,45,18),(69,45,16),(70,45,17),(71,46,17),(72,46,18),(73,46,16),(74,47,17),(75,47,16),(76,47,18),(77,48,19),(78,49,19),(79,50,19),(80,51,19),(81,52,19),(82,53,19),(83,54,2),(84,55,21),(85,56,22),(86,56,17),(87,56,28),(88,56,27),(89,56,26),(90,56,25),(91,56,24),(92,56,23),(93,57,6),(94,57,5),(95,57,4),(96,57,29),(97,57,30),(98,58,3),(99,59,3),(100,60,2),(101,62,17),(102,62,24),(103,62,23),(104,62,22),(105,62,28),(106,62,27),(107,62,26),(108,62,25),(109,61,2),(110,63,3),(111,64,36),(112,65,21),(113,66,38),(114,66,37),(115,67,29),(116,67,30),(117,67,5),(118,67,4),(119,67,6),(120,68,19),(121,69,37),(122,69,38),(123,70,3),(124,71,3),(125,72,16),(126,72,18),(127,72,17),(128,73,18),(129,73,17),(130,73,16),(131,74,16),(132,74,18),(133,74,17),(134,75,17),(135,75,16),(136,75,18),(137,76,17),(138,76,18),(139,76,16),(140,77,16),(141,77,17),(142,77,18),(143,78,38),(144,78,37),(145,79,18),(146,79,16),(147,79,17),(148,80,18),(149,80,17),(150,80,16),(151,81,17),(152,81,16),(153,81,18),(154,82,18),(155,82,17),(156,82,16),(157,83,12),(158,84,21),(159,85,17),(160,85,28),(161,85,26),(162,85,27),(163,85,24),(164,85,25),(165,85,22),(166,85,23),(167,86,17),(168,86,22),(169,86,23),(170,86,24),(171,86,25),(172,86,26),(173,86,27),(174,86,28),(175,87,37),(176,87,38),(177,88,3),(178,89,2),(179,90,26),(180,90,25),(181,90,28),(182,90,27),(183,90,23),(184,90,24),(185,90,22),(186,90,17),(187,91,3),(188,92,21),(189,93,3),(190,94,5),(191,94,6),(192,94,29),(193,94,30),(194,94,4),(195,95,3),(196,96,30),(197,96,29),(198,96,4),(199,96,5),(200,96,6),(201,97,3),(202,98,6),(203,98,5),(204,98,4),(205,98,29),(206,98,30),(207,99,2),(208,100,21);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,1,3),(3,1,2),(4,5,2),(5,10,2),(6,11,2),(7,12,2),(8,13,3),(9,13,2),(10,13,1),(11,15,1),(12,18,2);
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
INSERT INTO `IFData` VALUES (1,2,NULL,NULL,NULL,NULL,'application','vnd.wap.sic'),(2,4,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(3,42,'package',NULL,NULL,NULL,NULL,NULL),(4,43,'package',NULL,NULL,NULL,NULL,NULL),(5,44,'package',NULL,NULL,NULL,NULL,NULL),(6,45,'package',NULL,NULL,NULL,NULL,NULL),(7,46,'package',NULL,NULL,NULL,NULL,NULL),(8,47,'package',NULL,NULL,NULL,NULL,NULL),(9,54,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(10,56,'package',NULL,NULL,NULL,NULL,NULL),(11,60,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(12,62,'package',NULL,NULL,NULL,NULL,NULL),(13,61,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(14,72,'package',NULL,NULL,NULL,NULL,NULL),(15,73,'package',NULL,NULL,NULL,NULL,NULL),(16,74,'package',NULL,NULL,NULL,NULL,NULL),(17,75,'package',NULL,NULL,NULL,NULL,NULL),(18,76,'package',NULL,NULL,NULL,NULL,NULL),(19,77,'package',NULL,NULL,NULL,NULL,NULL),(20,79,'package',NULL,NULL,NULL,NULL,NULL),(21,80,'package',NULL,NULL,NULL,NULL,NULL),(22,81,'package',NULL,NULL,NULL,NULL,NULL),(23,82,'package',NULL,NULL,NULL,NULL,NULL),(24,85,'package',NULL,NULL,NULL,NULL,NULL),(25,86,'package',NULL,NULL,NULL,NULL,NULL),(26,89,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(27,90,'package',NULL,NULL,NULL,NULL,NULL),(28,99,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message');
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
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'km.home'),(2,2,'km.home'),(3,3,'km.home'),(4,12,'com.android.packageinstaller'),(5,22,'com.jx.theme.n398397726'),(6,29,'com.jx.util'),(7,31,'NULL-CONSTANT'),(8,37,'com.jx.theme.n398397726'),(9,41,'com.android.packageinstaller'),(10,43,'com.jx.theme.n398397726'),(11,49,'com.jx.util'),(12,51,'com.jx.util'),(13,53,'com.jx.theme.n398397726'),(14,55,'NULL-CONSTANT'),(15,56,'com.jx.theme.n398397726'),(16,57,'com.jx.util'),(17,59,'com.jx.util'),(18,61,'com.android.packageinstaller'),(19,63,'com.jx.util'),(20,67,'com.jx.util'),(21,70,'com.jx.theme.n398397726'),(22,74,'NULL-CONSTANT'),(23,75,'com.jx.theme.n398397726'),(24,79,'com.jx.theme.n398397726'),(25,81,'com.android.packageinstaller'),(26,83,'com.jx.theme.n191148435'),(27,95,'com.jx.theme.n678504952'),(28,96,''),(29,99,''),(30,98,'com.jx.util'),(31,101,'(.*)'),(32,102,''),(33,103,'(.*)'),(34,105,''),(35,107,'(.*)'),(36,110,'(.*)'),(37,112,'NULL-CONSTANT'),(38,114,'com.android.packageinstaller'),(39,117,'com.jx.theme.n678504952'),(40,120,'com.jx.theme.n191148435'),(41,124,'com.jx.theme.n1368240560'),(42,127,'com.jx.util'),(43,130,'com.jx.theme.n1368240560'),(44,133,'com.jx.util'),(45,136,'com.jx.theme.n1368240560'),(46,138,'com.android.packageinstaller'),(47,143,'com.jx.theme.n1368240560'),(48,148,'com.jx.util'),(49,152,'com.jx.util'),(50,156,'com.jx.util'),(51,158,'com.jx.theme.n1368240560'),(52,159,'com.android.packageinstaller'),(53,161,'com.jx.util'),(54,162,'com.km.launcher'),(55,166,'com.jx.theme.n1368240560'),(56,165,'com.jx.theme.n2141139728'),(57,167,'com.jx.util'),(58,168,'com.jx.util'),(59,171,'com.jx.util'),(60,170,'com.jx.theme.n2141139728'),(61,175,'com.jx.util'),(62,174,'com.jx.theme.n191148435'),(63,176,'com.jx.util'),(64,177,'com.jx.util'),(65,178,'com.jx.theme.n191148435'),(66,179,'com.jx.util'),(67,180,'com.jx.util'),(68,181,'com.jx.util'),(69,182,'com.android.packageinstaller'),(70,183,'com.jx.theme.n678504952'),(71,184,'com.jx.theme.n2141139728'),(72,185,'com.jx.theme.n191148435'),(73,186,'com.jx.theme.n678504952'),(74,188,'com.jx.theme.n2141139728'),(75,189,'com.jx.util'),(76,191,'com.jx.theme.n1368240560'),(77,190,'com.jx.theme.n678504952'),(78,193,'com.jx.util'),(79,192,'com.jx.theme.n2141139728'),(80,194,'com.jx.util'),(81,197,'com.km.launcher'),(82,196,'com.jx.util'),(83,199,'com.jx.theme.n678504952'),(84,200,'com.jx.theme.n191148435'),(85,202,'com.jx.util'),(86,204,'com.jx.theme.n191148435'),(87,208,'com.jx.util'),(88,211,'com.jx.theme.n678504952'),(89,216,'com.jx.theme.n191148435'),(90,220,'com.jx.theme.n2141139728'),(91,230,''),(92,231,'com.km.launcher'),(93,233,''),(94,235,'(.*)'),(95,237,'(.*)'),(96,240,'com.jx.theme.n678504952'),(97,243,'com.km.launcher'),(98,244,'com.jx.theme.n2141139728'),(99,246,''),(100,249,''),(101,251,'(.*)'),(102,254,'(.*)'),(103,257,'com.jx.theme.n2141139728'),(104,258,'com.android.packageinstaller'),(105,269,'com.jx.theme.n1368240560'),(106,270,'com.jx.util'),(107,275,'NULL-CONSTANT'),(108,279,'com.android.packageinstaller');
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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,2,0),(2,5,0),(3,5,0),(4,5,0),(5,6,0),(6,9,0),(7,9,0),(8,10,0),(9,11,0),(10,12,0),(11,13,0),(12,14,0),(13,16,0),(14,24,0),(15,21,0),(16,24,0),(17,27,0),(18,28,0),(19,29,0),(20,30,0),(21,27,0),(22,29,0),(23,34,0),(24,37,0),(25,39,0),(26,40,0),(27,42,0),(28,43,0),(29,44,0),(30,43,0),(31,45,0),(32,46,0),(33,47,0),(34,48,0),(35,50,0),(36,51,0),(37,50,0),(38,5,0),(39,52,0),(40,53,0),(41,54,0),(42,51,0),(43,50,0),(44,5,0),(45,52,0),(46,53,0),(47,54,0),(48,51,0),(49,50,0),(50,5,0),(51,52,0),(52,53,0),(53,54,0),(54,55,0),(55,56,0),(56,57,0),(57,58,0),(58,59,0),(59,60,0),(60,61,0),(61,62,0),(62,63,0),(63,64,0),(64,65,0),(65,66,0),(66,67,0),(67,68,0),(68,69,0),(69,70,0),(70,71,0),(71,72,0),(72,73,0),(73,74,0),(74,75,0),(75,76,0),(76,69,0),(77,47,0),(78,77,0),(79,78,0),(80,65,0),(81,79,0),(82,80,0),(83,78,0),(84,81,0),(85,82,0),(86,83,0),(87,84,0),(88,85,0),(89,86,0),(90,87,0),(91,88,0),(92,89,0),(93,90,0),(94,91,0),(95,92,0),(96,93,0),(97,94,0),(98,95,0),(99,96,0),(100,97,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=284 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,5,1,0),(5,5,1,0),(6,5,1,0),(7,5,1,0),(8,5,1,0),(9,5,1,0),(10,5,1,0),(11,5,1,0),(12,6,0,0),(13,7,1,0),(14,8,1,0),(15,10,1,0),(16,11,1,0),(17,11,1,0),(18,11,1,0),(19,11,1,0),(20,11,1,0),(21,12,1,0),(22,14,0,0),(23,15,1,0),(24,16,1,0),(25,17,1,0),(26,19,1,0),(27,20,1,0),(28,21,1,0),(29,22,1,0),(30,23,1,0),(31,24,0,0),(32,25,1,0),(33,26,1,0),(34,27,1,0),(35,28,1,0),(36,29,1,0),(37,30,0,0),(38,31,1,0),(39,32,1,0),(40,33,1,0),(41,34,0,0),(42,35,1,0),(43,36,0,0),(44,37,1,0),(45,39,1,0),(46,40,1,0),(47,41,1,0),(48,42,1,0),(49,43,1,0),(50,44,1,0),(51,43,1,0),(52,46,1,0),(53,43,0,0),(54,47,1,0),(55,48,0,0),(56,43,0,0),(57,50,1,0),(58,51,1,0),(59,43,1,0),(60,52,1,0),(61,53,0,0),(62,51,1,0),(63,43,1,0),(64,54,1,0),(65,51,1,0),(66,55,1,0),(67,43,1,0),(68,51,1,0),(69,56,1,0),(70,43,0,0),(71,51,1,0),(72,57,1,0),(73,58,1,0),(74,59,0,0),(75,43,0,0),(76,60,1,0),(77,61,1,0),(78,62,1,0),(79,43,0,0),(80,63,1,0),(81,64,0,0),(82,65,1,0),(83,66,0,0),(84,67,1,0),(85,69,1,0),(86,72,1,0),(87,73,1,0),(88,74,1,0),(89,75,1,0),(90,76,1,0),(91,78,1,0),(92,77,1,0),(93,79,1,0),(94,80,1,0),(95,81,0,0),(96,82,0,0),(97,83,1,0),(98,84,1,0),(99,82,0,0),(100,85,1,0),(101,82,0,0),(102,88,0,0),(103,82,0,0),(104,89,1,0),(105,88,0,0),(106,91,1,0),(107,88,0,0),(108,92,1,0),(109,93,1,0),(110,88,0,0),(111,92,1,0),(112,95,0,0),(113,92,1,0),(114,97,0,0),(115,98,1,0),(116,92,1,0),(117,99,0,0),(118,98,1,0),(119,92,1,0),(120,101,0,0),(121,100,1,0),(122,102,1,0),(123,103,1,0),(124,104,0,0),(125,106,1,0),(126,108,1,0),(127,104,1,0),(128,110,1,0),(129,111,1,0),(130,104,0,0),(131,113,1,0),(132,114,1,0),(133,104,1,0),(134,116,1,0),(135,117,1,0),(136,104,0,0),(137,117,1,0),(138,118,0,0),(139,119,1,0),(140,120,1,0),(141,117,1,0),(142,121,1,0),(143,104,0,0),(144,120,1,0),(145,117,1,0),(146,122,1,0),(147,121,1,0),(148,104,1,0),(149,117,1,0),(150,121,1,0),(151,124,1,0),(152,104,1,0),(153,121,1,0),(154,125,1,0),(155,121,1,0),(156,104,1,0),(157,126,1,0),(158,104,0,0),(159,128,0,0),(160,129,1,0),(161,131,1,0),(162,133,0,0),(163,134,1,0),(164,135,1,0),(165,131,0,0),(166,136,0,0),(167,137,1,0),(168,131,1,0),(169,138,1,0),(170,131,0,0),(171,140,1,0),(172,141,1,0),(173,142,1,0),(174,140,0,0),(175,131,1,0),(176,143,1,0),(177,131,1,0),(178,140,0,0),(179,143,1,0),(180,131,1,0),(181,140,1,0),(182,145,0,0),(183,143,0,0),(184,131,0,0),(185,140,0,0),(186,143,0,0),(187,146,1,0),(188,131,0,0),(189,140,1,0),(190,143,0,0),(191,147,0,0),(192,131,0,0),(193,140,1,0),(194,143,1,0),(195,149,1,0),(196,140,1,0),(197,150,0,0),(198,151,1,0),(199,143,0,0),(200,140,0,0),(201,152,1,0),(202,143,1,0),(203,153,1,0),(204,140,0,0),(205,154,1,0),(206,153,1,0),(207,155,1,0),(208,143,1,0),(209,156,1,0),(210,153,1,0),(211,143,0,0),(212,153,1,0),(213,153,1,0),(214,160,1,0),(215,161,1,0),(216,162,0,0),(217,163,1,0),(218,153,1,0),(219,153,1,0),(220,164,0,0),(221,165,1,0),(222,153,1,0),(223,166,1,0),(224,167,1,0),(225,168,1,0),(226,169,1,0),(227,170,1,0),(228,171,1,0),(229,173,1,0),(230,174,0,0),(231,175,0,0),(232,176,1,0),(233,174,0,0),(234,177,1,0),(235,174,0,0),(236,180,1,0),(237,174,0,0),(238,181,1,0),(239,182,1,0),(240,184,0,0),(241,186,1,0),(242,188,1,0),(243,189,0,0),(244,190,0,0),(245,191,1,0),(246,193,0,0),(247,194,1,0),(248,195,1,0),(249,193,0,0),(250,197,1,0),(251,193,0,0),(252,198,1,0),(253,199,1,0),(254,193,0,0),(255,200,1,0),(256,201,1,0),(257,202,0,0),(258,203,0,0),(259,205,1,0),(260,206,1,0),(261,207,1,0),(262,208,1,0),(263,209,1,0),(264,211,1,0),(265,212,1,0),(266,213,1,0),(267,214,1,0),(268,215,1,0),(269,216,0,0),(270,217,1,0),(271,218,1,0),(272,219,1,0),(273,220,1,0),(274,222,1,0),(275,221,0,0),(276,223,1,0),(277,224,1,0),(278,226,1,0),(279,227,0,0),(280,228,1,0),(281,229,1,0),(282,230,1,0),(283,231,1,0);
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
INSERT INTO `PermissionStrings` VALUES (12,'android.permission.ACCESS_NETWORK_STATE'),(20,'android.permission.CALL_PHONE'),(16,'android.permission.CHANGE_NETWORK_STATE'),(23,'android.permission.EXPAND_STATUS_BAR'),(18,'android.permission.GET_TASKS'),(21,'android.permission.GLOBAL_SEARCH_CONTROL'),(10,'android.permission.INTERNET'),(19,'android.permission.READ_CONTACTS'),(8,'android.permission.READ_PHONE_STATE'),(9,'android.permission.READ_SMS'),(14,'android.permission.RECEIVE_BOOT_COMPLETED'),(7,'android.permission.RECEIVE_MMS'),(6,'android.permission.RECEIVE_SMS'),(1,'android.permission.RECEIVE_WAP_PUSH'),(3,'android.permission.SEND_SMS'),(2,'android.permission.SET_WALLPAPER'),(22,'android.permission.SET_WALLPAPER_HINTS'),(11,'android.permission.VIBRATE'),(17,'android.permission.WAKE_LOCK'),(4,'android.permission.WRITE_APN_SETTINGS'),(13,'android.permission.WRITE_EXTERNAL_STORAGE'),(15,'android.permission.WRITE_SETTINGS'),(5,'android.permission.WRITE_SMS'),(27,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(26,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(28,'com.android.launcher.permission.INSTALL_SHORTCUT'),(24,'com.android.launcher.permission.READ_SETTINGS'),(29,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(25,'com.android.launcher.permission.WRITE_SETTINGS');
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
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,'package','',NULL,NULL,NULL,NULL),(3,'package','',NULL,NULL,NULL,NULL),(4,'package','',NULL,NULL,NULL,NULL),(5,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(6,'package','',NULL,NULL,NULL,NULL),(7,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(8,'package','',NULL,NULL,NULL,NULL),(9,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(10,'package','',NULL,NULL,NULL,NULL),(11,'package','',NULL,NULL,NULL,NULL),(12,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(13,'package','',NULL,NULL,NULL,NULL),(14,'package','',NULL,NULL,NULL,NULL),(15,'package','',NULL,NULL,NULL,NULL),(16,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(17,'package','',NULL,NULL,NULL,NULL),(18,'package','',NULL,NULL,NULL,NULL),(19,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(20,'package','',NULL,NULL,NULL,NULL),(21,'package','',NULL,NULL,NULL,NULL),(22,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(23,'package','',NULL,NULL,NULL,NULL),(24,'package','',NULL,NULL,NULL,NULL),(25,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(26,'package','',NULL,NULL,NULL,NULL),(27,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(28,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(29,'package','',NULL,NULL,NULL,NULL),(30,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(31,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(32,'package','',NULL,NULL,NULL,NULL),(33,'package','',NULL,NULL,NULL,NULL),(34,'package','',NULL,NULL,NULL,NULL),(35,'package','',NULL,NULL,NULL,NULL),(36,'package','',NULL,NULL,NULL,NULL),(37,'package','',NULL,NULL,NULL,NULL),(38,'package','',NULL,NULL,NULL,NULL),(39,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(40,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(41,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(42,'package','',NULL,NULL,NULL,NULL),(43,'package','',NULL,NULL,NULL,NULL),(44,'package','',NULL,NULL,NULL,NULL),(45,'package','',NULL,NULL,NULL,NULL),(46,'package','',NULL,NULL,NULL,NULL),(47,'package','',NULL,NULL,NULL,NULL),(48,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(49,'package','',NULL,NULL,NULL,NULL),(50,'package','',NULL,NULL,NULL,NULL),(51,'package','',NULL,NULL,NULL,NULL),(52,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(53,'package','',NULL,NULL,NULL,NULL),(54,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(55,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(56,'package','',NULL,NULL,NULL,NULL),(57,'package','',NULL,NULL,NULL,NULL),(58,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(59,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(60,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(61,'tel','(.*)',NULL,NULL,NULL,NULL),(62,'package','',NULL,NULL,NULL,NULL),(63,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(64,'package','',NULL,NULL,NULL,NULL),(65,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(66,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(67,'package','',NULL,NULL,NULL,NULL),(68,'package','',NULL,NULL,NULL,NULL),(69,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(70,'package','',NULL,NULL,NULL,NULL),(71,'package','',NULL,NULL,NULL,NULL),(72,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(73,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(74,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(75,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=(.*)',NULL,NULL,NULL),(76,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=NULL-CONSTANT',NULL,NULL,NULL),(77,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(78,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(79,'package','',NULL,NULL,NULL,NULL),(80,'package','',NULL,NULL,NULL,NULL),(81,'package','',NULL,NULL,NULL,NULL),(82,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(83,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(84,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(85,'package','',NULL,NULL,NULL,NULL),(86,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(87,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(88,'package','',NULL,NULL,NULL,NULL),(89,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(90,'package','',NULL,NULL,NULL,NULL),(91,'package','',NULL,NULL,NULL,NULL),(92,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(93,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(94,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(95,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(96,'package','',NULL,NULL,NULL,NULL),(97,'package','',NULL,NULL,NULL,NULL),(98,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(99,'package','',NULL,NULL,NULL,NULL),(100,'package','',NULL,NULL,NULL,NULL),(101,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(102,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(103,'package','',NULL,NULL,NULL,NULL),(104,'package','',NULL,NULL,NULL,NULL),(105,'package','',NULL,NULL,NULL,NULL),(106,'package','',NULL,NULL,NULL,NULL),(107,'package','',NULL,NULL,NULL,NULL),(108,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(109,'package','',NULL,NULL,NULL,NULL),(110,'package','',NULL,NULL,NULL,NULL),(111,'package','',NULL,NULL,NULL,NULL),(112,'package','',NULL,NULL,NULL,NULL),(113,'package','',NULL,NULL,NULL,NULL),(114,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=false',NULL,NULL,NULL),(115,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(116,'package','',NULL,NULL,NULL,NULL),(117,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(118,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(119,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(120,'package','',NULL,NULL,NULL,NULL),(121,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(122,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(123,'package','',NULL,NULL,NULL,NULL),(124,'package','',NULL,NULL,NULL,NULL),(125,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(126,'package','',NULL,NULL,NULL,NULL),(127,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(128,'package','',NULL,NULL,NULL,NULL),(129,'package','',NULL,NULL,NULL,NULL),(130,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(131,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(132,'package','',NULL,NULL,NULL,NULL),(133,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(134,'package','',NULL,NULL,NULL,NULL),(135,'package','',NULL,NULL,NULL,NULL),(136,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(137,'package','',NULL,NULL,NULL,NULL),(138,'package','',NULL,NULL,NULL,NULL),(139,'package','',NULL,NULL,NULL,NULL),(140,'package','',NULL,NULL,NULL,NULL),(141,'package','',NULL,NULL,NULL,NULL),(142,'package','',NULL,NULL,NULL,NULL),(143,'package','',NULL,NULL,NULL,NULL),(144,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(145,'package','',NULL,NULL,NULL,NULL),(146,'package','',NULL,NULL,NULL,NULL),(147,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(148,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(149,'package','',NULL,NULL,NULL,NULL),(150,'package','',NULL,NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,13,5),(2,18,9),(3,38,22),(4,45,27),(5,49,30),(6,68,41),(7,86,52),(8,87,54),(9,90,55),(10,94,59),(11,105,63),(12,109,66),(13,112,69),(14,115,72),(15,123,78),(16,127,82),(17,130,84),(18,132,86),(19,139,89),(20,144,93),(21,157,101),(22,158,102),(23,172,108),(24,179,114),(25,179,115),(26,185,118),(27,187,119),(28,192,122),(29,196,125),(30,204,131),(31,210,136),(32,225,144);
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
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,2,17),(14,2,16),(15,2,2),(16,2,3),(17,2,4),(18,2,6),(19,2,7),(20,2,8),(21,2,10),(22,2,12),(23,2,13),(24,2,14),(25,2,15),(26,3,1),(27,3,2),(28,3,3),(29,3,4),(30,3,5),(31,3,6),(32,3,7),(33,3,8),(34,4,2),(35,3,9),(36,4,3),(37,3,10),(38,4,4),(39,3,11),(40,4,6),(41,3,12),(42,5,2),(43,4,7),(44,6,2),(45,3,13),(46,5,3),(47,6,3),(48,4,8),(49,3,15),(50,5,4),(51,6,4),(52,4,10),(53,3,19),(54,5,6),(55,4,12),(56,6,6),(57,3,18),(58,5,7),(59,4,13),(60,6,7),(61,3,21),(62,5,8),(63,4,14),(64,6,8),(65,3,20),(66,5,10),(67,4,15),(68,6,10),(69,3,23),(70,5,12),(71,6,12),(72,4,17),(73,3,22),(74,5,13),(75,6,13),(76,4,16),(77,3,25),(78,5,14),(79,4,27),(80,6,14),(81,3,24),(82,5,15),(83,4,26),(84,6,15),(85,7,2),(86,5,17),(87,7,3),(88,6,17),(89,5,16),(90,7,4),(91,6,16),(92,5,27),(93,6,27),(94,7,6),(95,5,26),(96,6,26),(97,7,7),(98,7,8),(99,7,10),(100,7,12),(101,7,13),(102,7,14),(103,7,15),(104,7,17),(105,7,16),(106,7,27),(107,7,26);
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
