-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_522
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
INSERT INTO `ActionStrings` VALUES (12,'SMS_SEND_ACTIOIN'),(2,'android.intent.action.BOOT_COMPLETED'),(31,'android.intent.action.CHOOSER'),(30,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(13,'android.intent.action.PACKAGE_ADDED'),(33,'android.intent.action.PACKAGE_CHANGED'),(34,'android.intent.action.PACKAGE_REMOVED'),(17,'android.intent.action.SCREEN_OFF'),(18,'android.intent.action.SCREEN_ON'),(4,'android.intent.action.SET_WALLPAPER'),(14,'android.intent.action.VIEW'),(37,'android.intent.action.WALLPAPER_CHANGED'),(11,'android.net.conn.CONNECTIVITY_CHANGE'),(3,'android.provider.Telephony.SMS_RECEIVED'),(16,'android.provider.Telephony.WAP_PUSH_RECEIVED'),(35,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(32,'android.settings.WIRELESS_SETTINGS'),(29,'com.android.contacts.action.FILTER_CONTACTS'),(8,'com.android.launcher.action.INSTALL_SHORTCUT'),(10,'com.android.launcher.action.UNINSTALL_SHORTCUT'),(23,'com.jx.Action_CopyResError'),(24,'com.jx.MainActivity.CostInfo'),(15,'com.jx.MainActivity.ErrorInfo'),(20,'com.jx.MainActivity.InstallConfirmInfo'),(19,'com.jx.MainActivity.OpenLWP'),(22,'com.jx.MainActivity.RepeateInstall'),(21,'com.jx.MainActivity.SaveID'),(36,'com.jx.action.ExitBootReceiver'),(28,'com.jx.ad.ADService.ConfirmInstallInfo'),(5,'com.jx.ad.ADService.Init'),(26,'com.jx.ad.ADService.InitHasUpdate'),(27,'com.jx.ad.ADService.InstallRes'),(6,'com.jx.ad.ADService.Run'),(7,'com.jx.ad.ADService.RunCancel'),(25,'com.jx.ad.BootSmsReceiverService.Exit'),(9,'com.jx.ad.BootSmsReceiverService.Start');
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
INSERT INTO `Applications` VALUES (1,'com.km.installer',1),(2,'com.koogame.SeaMinerGL',3),(3,'ming.Bleachx',7),(4,'com.km.launcher',1),(5,'com.jx.theme.n1533869057',1),(6,'com.jx.theme.n25345364',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(3,'android.intent.category.HOME'),(4,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.km.installer.InstallerActivity'),(2,1,'com.km.charge.MainActivity'),(3,1,'com.km.charge.CycleService'),(4,1,'com.km.charge.BootReceiver'),(5,2,'com.koogame.SeaMinerGL.KooSeaMinerGL'),(6,3,'ming.Bleachx.WelActivity'),(7,2,'cn.koogame.android.SmsReceiver'),(8,3,'ming.Bleachx.Overalook'),(9,3,'ming.Bleachx.Bleach'),(10,3,'com.waxx.OffersWebView'),(11,3,'superpack.fscriptME.TestWebViewAct'),(12,3,'com.simpleg.MyService'),(13,4,'com.km.launcher.Launcher'),(14,3,'com.simpleg.BootBroadcastReceiver'),(15,6,'com.jx.MainActivity'),(16,5,'com.jx.MainActivity'),(17,4,'com.km.launcher.WallpaperChooser'),(18,6,'com.jx.SettingActivity'),(19,5,'com.jx.SettingActivity'),(20,6,'com.jx.WelcomeActivity'),(21,5,'com.jx.WelcomeActivity'),(22,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(23,4,'com.km.theme.ThemeListActivity'),(24,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(25,6,'com.jx.ad.AndroidThemeService'),(26,4,'com.km.charge.MainActivity'),(27,5,'com.jx.ad.AndroidThemeService'),(28,4,'com.km.ad.AdService'),(29,4,'com.km.charge.CycleService'),(30,4,'com.km.launcher.InstallShortcutReceiver'),(31,6,'com.jx.ad.BootSmsReceiverService'),(32,5,'com.jx.ad.BootSmsReceiverService'),(33,5,'com.jx.ad.BootReceiver'),(34,4,'com.km.launcher.UninstallShortcutReceiver'),(35,6,'com.jx.ad.BootReceiver'),(36,4,'com.km.charge.BootReceiver'),(37,4,'com.km.launcher.LauncherProvider'),(38,1,'com.km.tool.Util'),(39,1,'com.km.tool.ApnManager'),(40,1,'com.km.charge.HttpBox$ConnectivityReceiver'),(41,1,'com.km.charge.SendMessage$SendMessageReceiver'),(42,2,'com.tendcloud.tenddata.B'),(43,3,'com.waxx.q'),(44,3,'com.waxx.AppConnecS'),(45,3,'com.waxx.s'),(46,3,'com.waxx.ac'),(47,3,'com.simpleg.simpleg'),(48,6,'com.jx.MainActivity$1'),(49,6,'com.jx.ad.AndroidThemeService$5'),(50,5,'com.jx.ad.AndroidThemeService$8'),(51,6,'com.jx.SettingActivity$6'),(52,5,'com.jx.SettingActivity$1'),(53,6,'com.jx.ad.AndroidThemeService$MMSReceiver'),(54,5,'com.jx.ad.AndroidThemeService$6'),(55,3,'com.waxx.z'),(56,6,'com.adwo.adsdk.M'),(57,5,'com.jx.MainActivity$ControlReceiver'),(58,6,'com.jx.tool.ApnManager'),(59,6,'com.jx.ad.AndroidThemeService$3'),(60,6,'com.jx.ad.AndroidThemeService$6'),(61,5,'com.jx.ad.AndroidThemeService$4'),(62,3,'com.waxx.o'),(63,6,'com.jx.ad.AndroidThemeService$2'),(64,5,'com.adwo.adsdk.M'),(65,3,'com.waxx.aa'),(66,5,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(67,6,'com.jx.ad.ServiceControlReciver'),(68,4,'com.km.tool.ApnManager'),(69,6,'com.jx.ad.AndroidThemeService$4'),(70,5,'com.jx.MainActivity$ControlReceiver$6$1'),(71,4,'com.km.charge.SendMessage$SendMessageReceiver'),(72,6,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(73,6,'com.jx.ad.AndroidThemeService$8'),(74,5,'com.jx.ad.AndroidThemeService$2'),(75,6,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(76,5,'com.jx.ad.AndroidThemeService$SmsReceiver'),(77,6,'com.jx.MainActivity$ControlReceiver$1'),(78,5,'com.jx.ad.AndroidThemeService$7'),(79,4,'com.km.charge.HttpBox$ConnectivityReceiver'),(80,5,'com.jx.ad.AndroidThemeService$5'),(81,5,'com.jx.ad.AndroidThemeService$3'),(82,6,'com.jx.MainActivity$ControlReceiver'),(83,4,'com.km.charge.HoldMessage'),(84,4,'com.km.launcher.MyAnalogClock$1'),(85,4,'com.km.launcher.Launcher$WallpaperIntentReceiver'),(86,5,'com.jx.MainActivity$4'),(87,5,'com.jx.MainActivity$ControlReceiver$1'),(88,4,'com.km.tool.Http$ConnectivityReceiver'),(89,4,'com.km.launcher.Launcher$ApplicationsIntentReceiver'),(90,5,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(91,4,'com.km.ad.AdService$1'),(92,6,'com.jx.tool.Utility'),(93,4,'com.km.launcher.LauncherModel'),(94,5,'com.jx.tool.Utility'),(95,5,'com.jx.ad.AndroidThemeService$MMSReceiver'),(96,5,'com.jx.tool.ApnManager'),(97,5,'com.jx.ad.ServiceControlReciver'),(98,5,'com.jx.SettingActivity$6'),(99,4,'com.km.theme.ThemeManager'),(100,6,'com.jx.ad.AndroidThemeService$7'),(101,6,'com.jx.ad.AndroidThemeService$SmsReceiver'),(102,4,'com.km.tool.Util'),(103,6,'com.jx.MainActivity$ControlReceiver$6$1'),(104,4,'com.km.launcher.Search'),(105,5,'com.jx.MainActivity$1'),(106,6,'com.jx.MainActivity$4'),(107,6,'com.jx.SettingActivity$1');
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
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,7,'pdus'),(2,5,'GameWidth'),(3,5,'GameHeight'),(4,10,'Offers_URL'),(5,10,'UrlPath'),(6,10,'Notify_Id'),(7,9,'gamename'),(8,8,'gamename'),(9,10,'isFinshClose'),(10,9,'CLIENT_PACKAGE'),(11,12,'CLIENT_PACKAGE'),(12,10,'CLIENT_PACKAGE'),(13,8,'CLIENT_PACKAGE'),(14,6,'channelnumber'),(15,10,'URL_PARAMS'),(16,9,'WAXX_ID'),(17,12,'WAXX_ID'),(18,10,'WAXX_ID'),(19,8,'WAXX_ID'),(20,10,'Notify_Url_Params'),(21,9,'APP_ID'),(22,12,'APP_ID'),(23,10,'APP_ID'),(24,8,'APP_ID'),(25,9,'WAXX_PID'),(26,12,'WAXX_PID'),(27,10,'WAXX_PID'),(28,8,'WAXX_PID'),(29,10,'SHWO_FLAG'),(30,10,'URL'),(31,9,'DEVICE_ID'),(32,12,'DEVICE_ID'),(33,10,'DEVICE_ID'),(34,8,'DEVICE_ID'),(35,25,'resownerid'),(36,23,'shouldShowBottomBar'),(37,10,'USER_ID'),(38,9,'channelnumber'),(39,8,'channelnumber'),(40,22,'shouldShowTitlebar'),(41,10,'offers_webview_tag'),(42,10,'ACTIVITY_FLAG'),(43,34,'android.intent.extra.shortcut.INTENT'),(44,13,'launcher.rename_folder_id'),(45,22,'transitionTime'),(46,23,'shouldEnableBottomBar'),(47,26,'resownerid'),(48,22,'shouldShowBottomBar'),(49,22,'overlayTransition'),(50,26,'respid'),(51,13,'launcher.add_screen'),(52,13,'launcher.add_countX'),(53,13,'launcher.add_countY'),(54,23,'shouldMakeOverlayTransparent'),(55,30,'android.intent.extra.shortcut.INTENT'),(56,13,'launcher.add_cellX'),(57,13,'launcher.add_spanX'),(58,30,'android.intent.extra.shortcut.ICON_RESOURCE'),(59,13,'android.intent.extra.shortcut.ICON_RESOURCE'),(60,13,'data'),(61,13,'launcher.add_occupied_cells'),(62,13,'android.intent.extra.shortcut.INTENT'),(63,13,'launcher.current_screen'),(64,22,'shouldEnableBottomBar'),(65,13,'android.intent.extra.livefolder.BASE_INTENT'),(66,34,'android.intent.extra.shortcut.NAME'),(67,13,'android.intent.extra.livefolder.ICON'),(68,13,'launcher.add_cellY'),(69,13,'launcher.add_spanY'),(70,30,'android.intent.extra.shortcut.NAME'),(71,24,'launcher.all_apps_folder'),(72,27,'launcher.all_apps_folder'),(73,13,'launcher.all_apps_folder'),(74,22,'overlayTitle'),(75,13,'android.intent.extra.shortcut.NAME'),(76,13,'android.intent.extra.livefolder.NAME'),(77,22,'shouldResizeOverlay'),(78,25,'respid'),(79,24,'launcher.user_folder'),(80,27,'launcher.user_folder'),(81,13,'launcher.user_folder'),(82,30,'android.intent.extra.shortcut.ICON'),(83,13,'android.intent.extra.shortcut.ICON'),(84,30,'duplicate'),(85,22,'url'),(86,34,'duplicate'),(87,13,'launcher.rename_folder'),(88,23,'url'),(89,23,'overlayTransition'),(90,23,'shouldShowTitlebar'),(91,23,'transitionTime'),(92,22,'shouldMakeOverlayTransparent'),(93,23,'overlayTitle'),(94,23,'shouldResizeOverlay');
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'s',0,NULL,NULL),(4,4,'r',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'r',1,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'s',0,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'r',1,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,24,'a',0,NULL,NULL),(24,23,'a',0,NULL,NULL),(25,25,'s',1,NULL,NULL),(26,27,'s',1,NULL,NULL),(27,26,'a',0,NULL,NULL),(28,28,'s',0,NULL,NULL),(29,29,'s',0,NULL,NULL),(30,30,'r',1,17,NULL),(31,31,'s',1,NULL,NULL),(32,32,'s',1,NULL,NULL),(33,33,'r',1,NULL,NULL),(34,34,'r',1,35,NULL),(35,35,'r',1,NULL,NULL),(36,36,'r',1,NULL,NULL),(37,37,'p',0,NULL,NULL),(38,40,'r',1,NULL,NULL),(39,41,'r',1,NULL,NULL),(40,42,'r',1,NULL,NULL),(41,43,'r',1,NULL,NULL),(42,53,'r',1,NULL,NULL),(43,56,'r',1,NULL,NULL),(44,57,'r',1,NULL,NULL),(45,64,'r',1,NULL,NULL),(46,66,'r',1,NULL,NULL),(47,67,'r',1,NULL,NULL),(48,71,'r',1,NULL,NULL),(49,72,'r',1,NULL,NULL),(50,75,'r',1,NULL,NULL),(51,76,'r',1,NULL,NULL),(52,79,'r',1,NULL,NULL),(53,30,'r',1,NULL,NULL),(54,34,'r',1,NULL,NULL),(55,82,'r',1,NULL,NULL),(56,83,'r',1,NULL,NULL),(57,84,'r',1,NULL,NULL),(58,85,'r',1,NULL,NULL),(59,88,'r',1,NULL,NULL),(60,89,'r',1,NULL,NULL),(61,90,'r',1,NULL,NULL),(62,95,'r',1,NULL,NULL),(63,97,'r',1,NULL,NULL),(64,101,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,1,4),(3,2,2),(4,3,2),(5,4,2),(6,5,2),(7,6,2),(8,7,2),(9,8,2),(10,9,2),(11,10,9),(12,11,8),(13,11,12),(14,12,10),(15,13,9),(16,14,6),(17,15,10),(18,16,14),(19,17,12),(20,17,8),(21,18,15),(22,18,18),(23,18,20),(24,19,25),(25,20,26),(26,21,15),(27,21,18),(28,21,20),(29,22,8),(30,22,12),(31,23,19),(32,23,21),(33,23,16),(34,24,26),(35,25,10),(36,26,25),(37,27,10),(38,28,26),(39,29,25),(40,30,25),(41,31,26),(42,32,10),(43,33,25),(44,34,10),(45,35,26),(46,36,24),(47,36,27),(48,37,25),(49,38,21),(50,38,19),(51,38,16),(52,39,26),(53,40,24),(54,40,27),(55,41,25),(56,42,13),(57,42,27),(58,43,26),(59,44,25),(60,45,13),(61,45,27),(62,46,27),(63,46,24),(64,47,26),(65,48,13),(66,49,15),(67,49,20),(68,49,18),(69,50,16),(70,50,21),(71,50,19),(72,51,15),(73,51,18),(74,51,20),(75,52,26),(76,53,25),(77,54,30),(78,55,25),(79,56,26),(80,57,26),(81,58,25),(82,59,26),(83,60,25),(84,61,16),(85,61,19),(86,61,21),(87,62,25),(88,63,19),(89,63,21),(90,64,15),(91,65,21),(92,65,16),(93,65,19),(94,66,18),(95,67,16),(96,68,25),(97,69,27),(98,69,24),(99,70,26),(100,71,27),(101,71,24),(102,72,25),(103,72,18),(104,72,20),(105,73,33),(106,74,30),(107,75,35),(108,76,13),(109,77,21),(110,77,26),(111,77,19),(112,78,20),(113,79,13),(114,80,24),(115,80,27),(116,81,26),(117,82,13),(118,83,19),(119,83,21),(120,83,16),(121,84,25),(122,85,27),(123,85,24),(124,86,26),(125,87,25),(126,88,24),(127,88,13),(128,90,26),(129,89,13),(130,89,24),(131,91,25),(132,92,34),(133,93,16),(134,94,18),(135,94,20),(136,95,24),(137,95,27),(138,96,16),(139,96,19),(140,96,21),(141,97,25),(142,98,34),(143,99,15),(144,100,36),(145,100,13),(146,101,25),(147,102,13),(148,103,27),(149,103,24),(150,104,25),(151,105,25),(152,106,37),(153,107,34),(154,108,15),(155,109,30),(156,109,13),(157,110,15),(158,110,18),(159,110,20),(160,111,27),(161,111,13),(162,112,15),(163,113,25),(164,114,26),(165,115,15),(166,115,20),(167,115,18),(168,116,21),(169,117,26),(170,118,26),(171,119,21),(172,119,19),(173,119,16),(174,120,26),(175,121,16),(176,122,19),(177,123,20),(178,123,18),(179,123,15),(180,124,26),(181,125,16),(182,126,25),(183,127,26),(184,128,18),(185,128,15),(186,128,20),(187,129,26);
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
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,38,'<com.km.tool.Util: void startServiceWithSingleMode(android.content.Context,java.lang.Class)>',7,'s',NULL),(2,39,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',19,'p',NULL),(3,39,'<com.km.tool.ApnManager: void delete(int)>',8,'p',NULL),(4,39,'<com.km.tool.ApnManager: int CreateGPRSApn()>',27,'p',NULL),(5,39,'<com.km.tool.ApnManager: int CreateWapApn()>',30,'p',0),(6,39,'<com.km.tool.ApnManager: int CreateWapApn()>',27,'p',NULL),(7,39,'<com.km.tool.ApnManager: int getApnId(java.lang.String)>',6,'p',NULL),(8,39,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',9,'p',NULL),(9,39,'<com.km.tool.ApnManager: int CreateGPRSApn()>',30,'p',0),(10,44,'<com.waxx.AppConnecS: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(11,45,'<com.waxx.s: void onClick(android.view.View)>',62,'a',NULL),(12,46,'<com.waxx.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(13,9,'<ming.Bleachx.Bleach: void intents(int)>',10,'a',NULL),(14,47,'<com.simpleg.simpleg: void init(android.app.Activity)>',9,'s',NULL),(15,10,'<com.waxx.OffersWebView: void onCreate(android.os.Bundle)>',321,'a',NULL),(16,14,'<com.simpleg.BootBroadcastReceiver: void onReceive(android.content.Context,android.content.Intent)>',10,'s',NULL),(17,45,'<com.waxx.s: void onClick(android.view.View)>',37,'a',NULL),(18,48,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(19,49,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(20,50,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(21,51,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(22,45,'<com.waxx.s: void onClick(android.view.View)>',85,'a',NULL),(23,52,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(24,54,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(25,55,'<com.waxx.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(26,58,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(27,10,'<com.waxx.OffersWebView: void onCreate(android.os.Bundle)>',296,'a',NULL),(28,27,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(29,59,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(30,60,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(31,61,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(32,62,'<com.waxx.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(33,63,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(34,65,'<com.waxx.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(35,61,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(36,68,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',9,'p',NULL),(37,69,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(38,70,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(39,54,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(40,68,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',19,'p',NULL),(41,73,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(42,13,'<com.km.launcher.Launcher: boolean onKeyDown(int,android.view.KeyEvent)>',27,'a',NULL),(43,74,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(44,69,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(45,13,'<com.km.launcher.Launcher: void startActivitySafely(android.content.Intent)>',3,'a',0),(46,68,'<com.km.tool.ApnManager: int CreateGPRSApn()>',27,'p',NULL),(47,54,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(48,13,'<com.km.launcher.Launcher: void startWallpaper()>',5,'a',NULL),(49,15,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(50,16,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(51,77,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(52,78,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(53,63,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(54,30,'<com.km.launcher.InstallShortcutReceiver: boolean findEmptyCell(android.content.Context,int[],int)>',19,'p',NULL),(55,59,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(56,80,'<com.jx.ad.AndroidThemeService$5: void run()>',116,'r',NULL),(57,81,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(58,49,'<com.jx.ad.AndroidThemeService$5: void run()>',116,'r',NULL),(59,74,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(60,60,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(61,86,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(62,73,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(63,21,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(64,15,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(65,87,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(66,18,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(67,16,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(68,69,'<com.jx.ad.AndroidThemeService$4: void run()>',125,'r',NULL),(69,68,'<com.km.tool.ApnManager: void delete(int)>',8,'p',NULL),(70,80,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(71,91,'<com.km.ad.AdService$1: void run()>',11,'s',NULL),(72,92,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(73,33,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(74,93,'<com.km.launcher.LauncherModel: boolean shortcutExists(android.content.Context,java.lang.String,android.content.Intent)>',12,'p',NULL),(75,35,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(76,93,'<com.km.launcher.LauncherModel: com.km.launcher.Widget getPhotoFrameInfo(android.content.Context,int,int,int)>',15,'p',NULL),(77,94,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(78,20,'<com.jx.WelcomeActivity: void onResume()>',67,'a',NULL),(79,93,'<com.km.launcher.LauncherModel: com.km.launcher.FolderInfo getFolderById(android.content.Context,long)>',12,'p',NULL),(80,68,'<com.km.tool.ApnManager: int CreateWapApn()>',27,'p',NULL),(81,96,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(82,13,'<com.km.launcher.Launcher: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(83,98,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(84,60,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(85,68,'<com.km.tool.ApnManager: int CreateGPRSApn()>',30,'p',0),(86,54,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(87,63,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(88,93,'<com.km.launcher.LauncherModel: void updateItemInDatabase(android.content.Context,com.km.launcher.ItemInfo)>',8,'p',NULL),(89,99,'<com.km.theme.ThemeManager: void setup()>',32,'a',NULL),(90,50,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(91,60,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(92,34,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',25,'p',NULL),(93,16,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(94,20,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(95,68,'<com.km.tool.ApnManager: int getApnId(java.lang.String)>',6,'p',NULL),(96,16,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(97,100,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(98,34,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'p',NULL),(99,15,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(100,102,'<com.km.tool.Util: void startServiceWithSingleMode(android.content.Context,java.lang.Class)>',7,'s',NULL),(101,25,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(102,13,'<com.km.launcher.Launcher: void registerContentObservers()>',4,'p',NULL),(103,68,'<com.km.tool.ApnManager: int CreateWapApn()>',30,'p',0),(104,58,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(105,25,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(106,37,'<com.km.launcher.LauncherProvider: void sendNotify(android.net.Uri)>',9,'p',0),(107,34,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'p',NULL),(108,15,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(109,93,'<com.km.launcher.LauncherModel: void addItemToDatabase(android.content.Context,com.km.launcher.ItemInfo,long,int,int,int,boolean)>',17,'p',NULL),(110,103,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(111,104,'<com.km.launcher.Search: void sendLaunchIntent(java.lang.String,android.net.Uri,java.lang.String,android.os.Bundle,int,java.lang.String,android.server.search.SearchableInfo)>',20,'a',NULL),(112,15,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(113,58,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(114,27,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(115,15,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(116,21,'<com.jx.WelcomeActivity: void onResume()>',67,'a',NULL),(117,96,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(118,74,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(119,105,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(120,81,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(121,16,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(122,19,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(123,106,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(124,96,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(125,16,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(126,58,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(127,96,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(128,107,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(129,61,'<com.jx.ad.AndroidThemeService$4: void run()>',125,'r',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,3,14),(2,4,14),(3,11,1),(4,12,14),(5,13,1),(6,14,1),(7,15,15),(8,16,15),(9,17,1),(10,18,14),(11,20,14),(12,21,15),(13,22,14),(14,24,1),(15,25,21),(16,26,1),(17,27,25),(18,28,24),(19,29,26),(20,30,14),(21,31,15),(22,36,23),(23,37,24),(24,38,15),(25,39,29),(26,40,15),(27,41,30),(28,42,26),(29,43,15),(30,44,31),(31,45,28),(32,46,31),(33,47,28),(34,48,6),(35,49,31),(36,50,6),(37,51,5),(38,52,31),(39,53,5),(40,54,7),(41,55,31),(42,56,7),(43,57,27),(44,58,31),(45,59,27),(46,60,31),(47,61,32),(48,62,31),(49,63,15),(50,64,15),(51,65,15),(52,66,15),(53,67,15),(54,68,15),(55,69,15),(56,70,15),(57,71,14),(58,72,20),(59,73,35),(60,74,25),(61,75,32),(62,76,1),(63,77,15),(64,78,36),(65,79,15),(66,82,9),(67,83,9),(68,90,14),(69,91,15),(70,92,15),(71,93,15),(72,95,20),(73,96,15),(74,98,35),(75,99,27),(76,100,15),(77,101,27),(78,102,28),(79,103,36),(80,105,6),(81,106,21),(82,107,5),(83,108,7),(84,109,24),(85,110,6),(86,112,7),(87,113,28),(88,114,23),(89,115,5),(90,116,14),(91,118,14),(92,119,24),(93,120,27),(94,122,5),(95,124,6),(96,127,7),(97,128,7),(98,129,28),(99,130,15),(100,131,28),(101,132,14),(102,133,6),(103,134,25),(104,135,5),(105,136,25),(106,137,27),(107,138,1),(108,139,14),(109,141,14),(110,142,15);
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
INSERT INTO `ICategories` VALUES (1,11,1),(2,13,4),(3,14,1),(4,17,4),(5,24,1),(6,26,4),(7,73,2),(8,76,1),(9,98,2),(10,138,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/km/charge/CycleService'),(2,2,'com/waxx/OffersWebView'),(3,5,'NULL-CONSTANT'),(4,6,'ming/Bleachx/WelActivity'),(5,7,'com/simpleg/MyService'),(6,8,'(.*)'),(7,9,'com/simpleg/MyService'),(8,19,'com/waxx/OffersWebView'),(9,32,'com/waxx/OffersWebView'),(10,33,'com.android.packageinstaller.PackageInstallerActivity'),(11,34,'com/waxx/OffersWebView'),(12,35,'com.android.packageinstaller.PackageInstallerActivity'),(13,76,'com.nd.android.launcher.Launcher'),(14,80,'com/km/ad/AdService'),(15,81,'com.android.packageinstaller.PackageInstallerActivity'),(16,82,'com/jx/ad/BootSmsReceiverService'),(17,83,'com/jx/ad/BootSmsReceiverService'),(18,84,'com.android.packageinstaller.PackageInstallerActivity'),(19,85,'.Launcher'),(20,86,'(.*).Launcher'),(21,87,'(.*).Launcher'),(22,88,'.Launcher'),(23,89,'com/km/theme/ThemeListActivity'),(24,94,'com/km/charge/MainActivity'),(25,97,'com/jx/WelcomeActivity'),(26,101,'com/jx/ad/AndroidThemeService'),(27,102,'com/jx/ad/AndroidThemeService'),(28,104,'com/km/charge/CycleService'),(29,107,'com/jx/ad/AndroidThemeService'),(30,108,'com/jx/ad/AndroidThemeService'),(31,110,'com/jx/ad/AndroidThemeService'),(32,111,'com/jx/WelcomeActivity'),(33,117,'com/jx/WelcomeActivity'),(34,121,'.Launcher'),(35,122,'com/jx/ad/AndroidThemeService'),(36,123,'(.*).Launcher'),(37,125,'(.*).Launcher'),(38,126,'.Launcher'),(39,127,'com/jx/ad/AndroidThemeService'),(40,129,'com/jx/ad/AndroidThemeService'),(41,133,'com/jx/ad/AndroidThemeService'),(42,137,'com/jx/ad/AndroidThemeService'),(43,138,'com.nd.android.launcher.Launcher'),(44,140,'com/jx/WelcomeActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,3,7),(2,4,8),(3,12,9),(4,15,10),(5,16,11),(6,18,12),(7,20,13),(8,21,14),(9,22,15),(10,25,17),(11,28,18),(12,30,19),(13,31,20),(14,33,21),(15,35,23),(16,36,24),(17,37,26),(18,38,27),(19,40,28),(20,41,29),(21,43,31),(22,63,32),(23,64,34),(24,65,35),(25,66,36),(26,67,37),(27,68,38),(28,69,39),(29,70,40),(30,71,41),(31,72,42),(32,77,44),(33,79,45),(34,81,46),(35,84,49),(36,90,52),(37,91,53),(38,92,55),(39,93,56),(40,95,57),(41,96,58),(42,100,62),(43,106,63),(44,109,65),(45,114,69),(46,116,70),(47,118,72),(48,119,73),(49,130,75),(50,132,76),(51,139,78),(52,141,81),(53,142,82);
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
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,2,'USER_ID'),(2,2,'CLIENT_PACKAGE'),(3,2,'Offers_URL'),(4,2,'offers_webview_tag'),(5,2,'URL_PARAMS'),(6,15,'CostTips'),(7,16,'CostTips'),(8,19,'CLIENT_PACKAGE'),(9,19,'URL'),(10,19,'isFinshClose'),(11,19,'offers_webview_tag'),(12,21,'CostTips'),(13,25,'respid'),(14,28,'CostTips'),(15,29,'resownerid'),(16,29,'respid'),(17,31,'CostTips'),(18,31,'SetNetwork'),(19,32,'UrlPath'),(20,32,'ACTIVITY_FLAG'),(21,32,'isFinshClose'),(22,32,'offers_webview_tag'),(23,34,'Notify_Url_Params'),(24,34,'UrlPath'),(25,34,'ACTIVITY_FLAG'),(26,34,'isFinshClose'),(27,34,'offers_webview_tag'),(28,37,'CostTips'),(29,38,'CostTips'),(30,39,'com.android.contacts.extra.FILTER_TEXT'),(31,40,'CostTips'),(32,40,'SetNetwork'),(33,42,'resownerid'),(34,42,'respid'),(35,43,'CostTips'),(36,44,'android.intent.extra.INTENT'),(37,45,'resownerid'),(38,45,'respid'),(39,46,'android.intent.extra.INTENT'),(40,47,'resownerid'),(41,48,'resownerid'),(42,47,'respid'),(43,48,'respid'),(44,49,'android.intent.extra.TITLE'),(45,49,'android.intent.extra.INTENT'),(46,50,'resownerid'),(47,51,'resownerid'),(48,50,'respid'),(49,51,'respid'),(50,52,'android.intent.extra.INTENT'),(51,53,'resownerid'),(52,54,'resownerid'),(53,53,'respid'),(54,55,'android.intent.extra.TITLE'),(55,54,'respid'),(56,55,'android.intent.extra.INTENT'),(57,56,'resownerid'),(58,57,'resownerid'),(59,56,'respid'),(60,58,'android.intent.extra.INTENT'),(61,57,'respid'),(62,59,'resownerid'),(63,60,'android.intent.extra.TITLE'),(64,59,'respid'),(65,60,'android.intent.extra.INTENT'),(66,62,'android.intent.extra.TITLE'),(67,62,'android.intent.extra.INTENT'),(68,63,'CostTips'),(69,64,'CostTips'),(70,65,'CostTips'),(71,66,'CostTips'),(72,67,'CostTips'),(73,68,'CostTips'),(74,69,'CostTips'),(75,70,'CostTips'),(76,76,'from'),(77,77,'CostTips'),(78,79,'CostTips'),(79,85,'startother'),(80,86,'startother'),(81,87,'startother'),(82,88,'startother'),(83,91,'CostTips'),(84,92,'CostTips'),(85,93,'CostTips'),(86,96,'CostTips'),(87,99,'resownerid'),(88,99,'respid'),(89,100,'CostTips'),(90,101,'resownerid'),(91,101,'respid'),(92,102,'resownerid'),(93,102,'respid'),(94,105,'resownerid'),(95,105,'respid'),(96,106,'respid'),(97,107,'resownerid'),(98,107,'respid'),(99,108,'resownerid'),(100,108,'respid'),(101,109,'CostTips'),(102,110,'resownerid'),(103,110,'respid'),(104,112,'resownerid'),(105,112,'respid'),(106,113,'resownerid'),(107,113,'respid'),(108,115,'resownerid'),(109,115,'respid'),(110,119,'CostTips'),(111,120,'resownerid'),(112,120,'respid'),(113,121,'startother'),(114,122,'resownerid'),(115,122,'respid'),(116,123,'startother'),(117,125,'startother'),(118,124,'resownerid'),(119,124,'respid'),(120,126,'startother'),(121,127,'resownerid'),(122,127,'respid'),(123,128,'resownerid'),(124,128,'respid'),(125,129,'resownerid'),(126,130,'CostTips'),(127,129,'respid'),(128,131,'resownerid'),(129,131,'respid'),(130,133,'resownerid'),(131,133,'respid'),(132,135,'resownerid'),(133,135,'respid'),(134,137,'resownerid'),(135,137,'respid'),(136,138,'from'),(137,142,'CostTips');
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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,3),(5,5,1),(6,7,2),(7,6,1),(8,8,1),(9,9,1),(10,10,4),(11,11,5),(12,12,5),(13,13,7),(14,13,6),(15,14,6),(16,14,7),(17,15,8),(18,16,9),(19,17,9),(20,18,2),(21,19,2),(22,20,10),(23,21,2),(24,22,11),(25,23,12),(26,24,3),(27,25,3),(28,26,13),(29,27,16),(30,28,18),(31,28,17),(32,29,23),(33,29,22),(34,29,21),(35,29,20),(36,29,24),(37,29,15),(38,29,13),(39,29,19),(40,30,18),(41,30,17),(42,31,25),(43,32,6),(44,32,5),(45,32,27),(46,32,28),(47,32,7),(48,33,12),(49,34,3),(50,35,25),(51,36,3),(52,37,11),(53,38,34),(54,38,33),(55,38,13),(56,39,33),(57,39,34),(58,39,13),(59,40,15),(60,40,22),(61,40,21),(62,40,20),(63,40,19),(64,40,23),(65,40,24),(66,40,13),(67,41,33),(68,41,34),(69,41,13),(70,42,33),(71,42,34),(72,42,13),(73,43,13),(74,43,33),(75,43,34),(76,44,13),(77,44,34),(78,44,33),(79,45,34),(80,45,33),(81,45,13),(82,46,34),(83,46,33),(84,46,13),(85,47,33),(86,47,13),(87,47,34),(88,48,13),(89,48,33),(90,48,34),(91,49,3),(92,50,37),(93,51,16),(94,52,7),(95,52,6),(96,52,5),(97,52,27),(98,52,28),(99,53,3);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,5,1),(4,7,3),(5,6,3),(6,6,2),(7,6,1),(8,8,1),(9,9,1),(10,10,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,26,'package',NULL,NULL,NULL,NULL,NULL),(2,27,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(3,29,'package',NULL,NULL,NULL,NULL,NULL),(4,38,'package',NULL,NULL,NULL,NULL,NULL),(5,39,'package',NULL,NULL,NULL,NULL,NULL),(6,40,'package',NULL,NULL,NULL,NULL,NULL),(7,41,'package',NULL,NULL,NULL,NULL,NULL),(8,42,'package',NULL,NULL,NULL,NULL,NULL),(9,43,'package',NULL,NULL,NULL,NULL,NULL),(10,44,'package',NULL,NULL,NULL,NULL,NULL),(11,45,'package',NULL,NULL,NULL,NULL,NULL),(12,46,'package',NULL,NULL,NULL,NULL,NULL),(13,47,'package',NULL,NULL,NULL,NULL,NULL),(14,48,'package',NULL,NULL,NULL,NULL,NULL),(15,51,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,22,'application','vnd.android.package-archive'),(2,30,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.km.installer'),(2,2,'ming.Bleachx'),(3,5,'NULL-CONSTANT'),(4,6,'ming.Bleachx'),(5,7,'ming.Bleachx'),(6,8,'(.*)'),(7,9,'ming.Bleachx'),(8,11,'(.*)'),(9,13,'(.*)'),(10,14,'NULL-CONSTANT'),(11,17,'NULL-CONSTANT'),(12,19,'ming.Bleachx'),(13,24,'(.*)'),(14,26,'(.*)'),(15,29,'com.jx.util'),(16,32,'ming.Bleachx'),(17,33,'com.android.packageinstaller'),(18,34,'ming.Bleachx'),(19,35,'com.android.packageinstaller'),(20,42,'com.jx.util'),(21,76,'NULL-CONSTANT'),(22,80,'com.km.launcher'),(23,81,'com.android.packageinstaller'),(24,82,'com.jx.theme.n1533869057'),(25,83,'com.jx.theme.n25345364'),(26,84,'com.android.packageinstaller'),(27,85,''),(28,86,''),(29,87,'(.*)'),(30,88,'(.*)'),(31,89,'com.km.launcher'),(32,94,'com.km.launcher'),(33,97,'com.jx.theme.n1533869057'),(34,99,'com.jx.util'),(35,101,'com.jx.theme.n1533869057'),(36,102,'com.jx.theme.n1533869057'),(37,104,'com.km.launcher'),(38,105,'com.jx.util'),(39,107,'com.jx.theme.n1533869057'),(40,108,'com.jx.theme.n1533869057'),(41,110,'com.jx.theme.n1533869057'),(42,111,'com.jx.theme.n25345364'),(43,112,'com.jx.util'),(44,113,'com.jx.util'),(45,117,'com.jx.theme.n25345364'),(46,115,'com.jx.util'),(47,120,'com.jx.util'),(48,121,''),(49,122,'com.jx.theme.n25345364'),(50,123,''),(51,125,'(.*)'),(52,124,'com.jx.util'),(53,126,'(.*)'),(54,127,'com.jx.theme.n25345364'),(55,128,'com.jx.util'),(56,129,'com.jx.theme.n25345364'),(57,131,'com.jx.util'),(58,133,'com.jx.theme.n25345364'),(59,135,'com.jx.util'),(60,137,'com.jx.theme.n25345364'),(61,138,'NULL-CONSTANT'),(62,140,'com.jx.theme.n1533869057');
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,4,0),(3,5,0),(4,7,0),(5,9,0),(6,13,0),(7,14,0),(8,15,0),(9,16,0),(10,17,0),(11,26,0),(12,25,0),(13,25,0),(14,26,0),(15,30,0),(16,32,0),(17,31,0),(18,33,0),(19,35,0),(20,34,0),(21,36,0),(22,38,0),(23,39,0),(24,7,0),(25,40,0),(26,41,0),(27,42,0),(28,43,0),(29,44,0),(30,45,0),(31,46,0),(32,47,0),(33,48,0),(34,49,0),(35,50,0),(36,51,0),(37,52,0),(38,53,0),(39,54,0),(40,55,0),(41,56,0),(42,57,0),(43,58,0),(44,36,0),(45,48,0),(46,52,0),(47,59,0),(48,60,0),(49,61,0),(50,58,0),(51,62,0),(52,63,0),(53,64,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,10,0,0),(3,11,1,0),(4,11,1,0),(5,12,0,0),(6,13,0,0),(7,14,0,0),(8,15,0,0),(9,16,0,0),(10,17,1,0),(11,17,1,0),(12,18,1,0),(13,17,1,0),(14,17,1,0),(15,19,1,0),(16,20,1,0),(17,17,1,0),(18,21,1,0),(19,22,0,0),(20,23,1,0),(21,24,1,0),(22,25,1,0),(23,27,1,0),(24,27,1,0),(25,28,1,0),(26,27,1,0),(27,29,1,0),(28,30,1,0),(29,31,1,0),(30,32,1,0),(31,33,1,0),(32,34,0,0),(33,35,0,0),(34,34,0,0),(35,37,0,0),(36,38,1,0),(37,39,1,0),(38,41,1,0),(39,42,1,0),(40,43,1,0),(41,42,1,0),(42,44,1,0),(43,47,1,0),(44,48,1,0),(45,49,1,0),(46,48,1,0),(47,50,1,0),(48,49,1,0),(49,48,1,0),(50,50,1,0),(51,49,1,0),(52,48,1,0),(53,50,1,0),(54,49,1,0),(55,48,1,0),(56,50,1,0),(57,49,1,0),(58,48,1,0),(59,50,1,0),(60,48,1,0),(61,51,1,0),(62,48,1,0),(63,52,1,0),(64,53,1,0),(65,55,1,0),(66,56,1,0),(67,57,1,0),(68,58,1,0),(69,59,1,0),(70,60,1,0),(71,61,1,0),(72,62,1,0),(73,63,1,0),(74,64,1,0),(75,65,1,0),(76,66,0,0),(77,68,1,0),(78,67,1,0),(79,70,1,0),(80,71,0,0),(81,72,0,0),(82,73,0,0),(83,75,0,0),(84,77,0,0),(85,78,0,0),(86,78,0,0),(87,78,0,0),(88,78,0,0),(89,82,0,0),(90,83,1,0),(91,84,1,0),(92,86,1,0),(93,87,1,0),(94,89,0,0),(95,90,1,0),(96,91,1,0),(97,93,0,0),(98,94,1,0),(99,96,1,0),(100,97,1,0),(101,96,0,0),(102,96,0,0),(103,99,1,0),(104,100,0,0),(105,96,1,0),(106,101,1,0),(107,96,0,0),(108,96,0,0),(109,105,1,0),(110,96,0,0),(111,108,0,0),(112,96,1,0),(113,96,1,0),(114,110,1,0),(115,96,1,0),(116,111,1,0),(117,112,0,0),(118,111,1,0),(119,114,1,0),(120,115,1,0),(121,116,0,0),(122,115,0,0),(123,116,0,0),(124,115,1,0),(125,116,0,0),(126,116,0,0),(127,115,0,0),(128,115,1,0),(129,115,0,0),(130,118,1,0),(131,115,1,0),(132,119,1,0),(133,115,0,0),(134,120,1,0),(135,115,1,0),(136,121,1,0),(137,115,0,0),(138,122,0,0),(139,123,1,0),(140,125,0,0),(141,128,1,0),(142,129,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (21,'android.permission.ACCESS_FINE_LOCATION'),(11,'android.permission.ACCESS_NETWORK_STATE'),(15,'android.permission.ACCESS_WIFI_STATE'),(26,'android.permission.CALL_PHONE'),(23,'android.permission.CHANGE_NETWORK_STATE'),(20,'android.permission.CHANGE_WIFI_STATE'),(29,'android.permission.EXPAND_STATUS_BAR'),(4,'android.permission.GET_TASKS'),(27,'android.permission.GLOBAL_SEARCH_CONTROL'),(7,'android.permission.INTERNET'),(19,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(12,'android.permission.RAISED_THREAD_PRIORITY'),(25,'android.permission.READ_CONTACTS'),(1,'android.permission.READ_PHONE_STATE'),(3,'android.permission.READ_SMS'),(13,'android.permission.RECEIVE_BOOT_COMPLETED'),(10,'android.permission.RECEIVE_MMS'),(9,'android.permission.RECEIVE_SMS'),(2,'android.permission.RECEIVE_WAP_PUSH'),(18,'android.permission.RESTART_PACKAGES'),(5,'android.permission.SEND_SMS'),(24,'android.permission.SET_WALLPAPER'),(28,'android.permission.SET_WALLPAPER_HINTS'),(22,'android.permission.VIBRATE'),(16,'android.permission.WAKE_LOCK'),(6,'android.permission.WRITE_APN_SETTINGS'),(14,'android.permission.WRITE_EXTERNAL_STORAGE'),(30,'android.permission.WRITE_SETTINGS'),(8,'android.permission.WRITE_SMS'),(34,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(33,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(17,'com.android.launcher.permission.INSTALL_SHORTCUT'),(31,'com.android.launcher.permission.READ_SETTINGS'),(35,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(32,'com.android.launcher.permission.WRITE_SETTINGS');
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
INSERT INTO `Permissions` VALUES (17,'n'),(31,'n'),(32,'n'),(35,'n');
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
INSERT INTO `Providers` VALUES (1,37,0,NULL,'com.android.launcher.permission.WRITE_SETTINGS');
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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(2,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(3,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(4,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(5,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(6,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(9,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(10,'package','',NULL,NULL,NULL,NULL),(11,'package','',NULL,NULL,NULL,NULL),(12,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(13,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(14,'package','',NULL,NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(16,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(17,'package','',NULL,NULL,NULL,NULL),(18,'package','',NULL,NULL,NULL,NULL),(19,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(20,'package','',NULL,NULL,NULL,NULL),(21,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(22,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(23,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(24,'package','',NULL,NULL,NULL,NULL),(25,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(26,'package','',NULL,NULL,NULL,NULL),(27,'package','',NULL,NULL,NULL,NULL),(28,'package','',NULL,NULL,NULL,NULL),(29,'tel','(.*)',NULL,NULL,NULL,NULL),(30,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(31,'package','',NULL,NULL,NULL,NULL),(32,'package','',NULL,NULL,NULL,NULL),(33,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(34,'package','',NULL,NULL,NULL,NULL),(35,'package','',NULL,NULL,NULL,NULL),(36,'package','',NULL,NULL,NULL,NULL),(37,'package','',NULL,NULL,NULL,NULL),(38,'package','',NULL,NULL,NULL,NULL),(39,'package','',NULL,NULL,NULL,NULL),(40,'package','',NULL,NULL,NULL,NULL),(41,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(42,'package','',NULL,NULL,NULL,NULL),(43,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(44,'package','',NULL,NULL,NULL,NULL),(45,'package','',NULL,NULL,NULL,NULL),(46,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(47,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(48,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(49,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(50,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(51,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(52,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(53,'package','',NULL,NULL,NULL,NULL),(54,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(55,'package','',NULL,NULL,NULL,NULL),(56,'package','',NULL,NULL,NULL,NULL),(57,'package','',NULL,NULL,NULL,NULL),(58,'package','',NULL,NULL,NULL,NULL),(59,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(60,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(61,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(62,'package','',NULL,NULL,NULL,NULL),(63,'package','',NULL,NULL,NULL,NULL),(64,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(65,'package','',NULL,NULL,NULL,NULL),(66,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(67,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=false',NULL,NULL,NULL),(68,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(69,'package','',NULL,NULL,NULL,NULL),(70,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=(.*)',NULL,NULL,NULL),(71,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(72,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=NULL-CONSTANT',NULL,NULL,NULL),(73,'package','',NULL,NULL,NULL,NULL),(74,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(75,'package','',NULL,NULL,NULL,NULL),(76,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(77,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(78,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(79,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(80,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(81,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(82,'package','',NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,2,1),(2,3,2),(3,4,3),(4,6,4),(5,7,5),(6,8,6),(7,26,16),(8,36,22),(9,40,25),(10,46,30),(11,54,33),(12,69,43),(13,74,47),(14,76,48),(15,79,50),(16,80,51),(17,88,54),(18,92,59),(19,95,60),(20,98,61),(21,102,64),(22,107,66),(23,109,67),(24,109,68),(25,113,71),(26,117,74),(27,124,77),(28,126,79),(29,127,80);
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
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,2,16),(13,3,1),(14,2,1),(15,3,4),(16,2,5),(17,3,6),(18,2,6),(19,3,7),(20,4,1),(21,4,32),(22,2,7),(23,3,11),(24,4,2),(25,4,2),(26,2,9),(27,4,3),(28,4,3),(29,3,14),(30,2,11),(31,4,4),(32,3,15),(33,4,4),(34,2,12),(35,3,17),(36,4,5),(37,4,5),(38,2,13),(39,3,16),(40,4,6),(41,4,6),(42,2,14),(43,3,19),(44,4,7),(45,4,7),(46,2,15),(47,4,8),(48,3,18),(49,4,8),(50,4,9),(51,4,9),(52,3,21),(53,4,10),(54,4,10),(55,3,20),(56,4,11),(57,3,23),(58,4,11),(59,4,14),(60,3,22),(61,4,14),(62,4,22),(63,4,22),(64,4,25),(65,4,25),(66,4,24),(67,4,24),(68,5,34),(69,6,34),(70,4,27),(71,4,27),(72,5,1),(73,6,1),(74,6,33),(75,4,26),(76,4,26),(77,5,33),(78,4,29),(79,6,5),(80,4,29),(81,5,5),(82,6,6),(83,5,6),(84,4,28),(85,4,28),(86,6,7),(87,4,31),(88,4,31),(89,5,7),(90,6,9),(91,4,30),(92,4,30),(93,5,9),(94,6,10),(95,5,10),(96,6,11),(97,5,11),(98,6,13),(99,5,13),(100,6,14),(101,5,14),(102,6,16),(103,5,16),(104,6,23),(105,5,23),(106,6,24),(107,5,24),(108,6,30),(109,5,30);
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

-- Dump completed on 2015-10-09  0:40:03
