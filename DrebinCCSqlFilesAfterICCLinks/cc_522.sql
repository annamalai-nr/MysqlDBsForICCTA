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
) ENGINE=InnoDB AUTO_INCREMENT=1333 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,111,20,2,NULL),(2,111,21,2,NULL),(3,117,20,2,NULL),(4,117,21,2,NULL),(5,122,25,2,NULL),(6,122,26,2,NULL),(7,127,25,2,NULL),(8,127,26,2,NULL),(9,129,25,2,NULL),(10,129,26,2,NULL),(11,133,25,2,NULL),(12,133,26,2,NULL),(13,137,25,2,NULL),(14,137,26,2,NULL),(15,45,1,2,NULL),(16,48,1,2,NULL),(17,51,1,2,NULL),(18,54,1,2,NULL),(19,57,1,2,NULL),(20,74,1,2,NULL),(21,103,1,2,NULL),(22,120,1,2,NULL),(23,124,1,2,NULL),(24,128,1,2,NULL),(25,131,1,2,NULL),(26,135,1,2,NULL),(27,45,4,2,NULL),(28,48,4,2,NULL),(29,51,4,2,NULL),(30,54,4,2,NULL),(31,57,4,2,NULL),(32,74,4,2,NULL),(33,103,4,2,NULL),(34,120,4,2,NULL),(35,124,4,2,NULL),(36,128,4,2,NULL),(37,131,4,2,NULL),(38,135,4,2,NULL),(39,45,38,2,NULL),(40,48,38,2,NULL),(41,51,38,2,NULL),(42,54,38,2,NULL),(43,57,38,2,NULL),(44,74,38,2,NULL),(45,103,38,2,NULL),(46,120,38,2,NULL),(47,124,38,2,NULL),(48,128,38,2,NULL),(49,131,38,2,NULL),(50,135,38,2,NULL),(51,45,39,2,NULL),(52,48,39,2,NULL),(53,51,39,2,NULL),(54,54,39,2,NULL),(55,57,39,2,NULL),(56,74,39,2,NULL),(57,103,39,2,NULL),(58,120,39,2,NULL),(59,124,39,2,NULL),(60,128,39,2,NULL),(61,131,39,2,NULL),(62,135,39,2,NULL),(63,45,5,2,NULL),(64,48,5,2,NULL),(65,51,5,2,NULL),(66,54,5,2,NULL),(67,57,5,2,NULL),(68,74,5,2,NULL),(69,103,5,2,NULL),(70,120,5,2,NULL),(71,124,5,2,NULL),(72,128,5,2,NULL),(73,131,5,2,NULL),(74,135,5,2,NULL),(75,45,7,2,NULL),(76,48,7,2,NULL),(77,51,7,2,NULL),(78,54,7,2,NULL),(79,57,7,2,NULL),(80,74,7,2,NULL),(81,103,7,2,NULL),(82,120,7,2,NULL),(83,124,7,2,NULL),(84,128,7,2,NULL),(85,131,7,2,NULL),(86,135,7,2,NULL),(87,45,40,2,NULL),(88,48,40,2,NULL),(89,51,40,2,NULL),(90,54,40,2,NULL),(91,57,40,2,NULL),(92,74,40,2,NULL),(93,103,40,2,NULL),(94,120,40,2,NULL),(95,124,40,2,NULL),(96,128,40,2,NULL),(97,131,40,2,NULL),(98,135,40,2,NULL),(99,45,9,2,NULL),(100,48,9,2,NULL),(101,51,9,2,NULL),(102,54,9,2,NULL),(103,57,9,2,NULL),(104,74,9,2,NULL),(105,103,9,2,NULL),(106,120,9,2,NULL),(107,124,9,2,NULL),(108,128,9,2,NULL),(109,131,9,2,NULL),(110,135,9,2,NULL),(111,23,15,2,NULL),(112,24,15,2,NULL),(113,26,15,2,NULL),(114,45,14,2,NULL),(115,48,14,2,NULL),(116,51,14,2,NULL),(117,54,14,2,NULL),(118,57,14,2,NULL),(119,74,14,2,NULL),(120,103,14,2,NULL),(121,120,14,2,NULL),(122,124,14,2,NULL),(123,128,14,2,NULL),(124,131,14,2,NULL),(125,135,14,2,NULL),(126,45,13,2,NULL),(127,48,13,2,NULL),(128,51,13,2,NULL),(129,54,13,2,NULL),(130,57,13,2,NULL),(131,74,13,2,NULL),(132,103,13,2,NULL),(133,120,13,2,NULL),(134,124,13,2,NULL),(135,128,13,2,NULL),(136,131,13,2,NULL),(137,135,13,2,NULL),(138,39,15,2,NULL),(139,44,15,2,NULL),(140,46,15,2,NULL),(141,49,15,2,NULL),(142,52,15,2,NULL),(143,55,15,2,NULL),(144,58,15,2,NULL),(145,60,15,2,NULL),(146,62,15,2,NULL),(147,45,17,2,NULL),(148,48,17,2,NULL),(149,51,17,2,NULL),(150,54,17,2,NULL),(151,57,17,2,NULL),(152,74,17,2,NULL),(153,103,17,2,NULL),(154,120,17,2,NULL),(155,124,17,2,NULL),(156,128,17,2,NULL),(157,131,17,2,NULL),(158,135,17,2,NULL),(159,45,30,2,NULL),(160,48,30,2,NULL),(161,51,30,2,NULL),(162,54,30,2,NULL),(163,57,30,2,NULL),(164,74,30,2,NULL),(165,103,30,2,NULL),(166,120,30,2,NULL),(167,124,30,2,NULL),(168,128,30,2,NULL),(169,131,30,2,NULL),(170,135,30,2,NULL),(171,45,34,2,NULL),(172,48,34,2,NULL),(173,51,34,2,NULL),(174,54,34,2,NULL),(175,57,34,2,NULL),(176,74,34,2,NULL),(177,103,34,2,NULL),(178,120,34,2,NULL),(179,124,34,2,NULL),(180,128,34,2,NULL),(181,131,34,2,NULL),(182,135,34,2,NULL),(183,45,36,2,NULL),(184,48,36,2,NULL),(185,51,36,2,NULL),(186,54,36,2,NULL),(187,57,36,2,NULL),(188,74,36,2,NULL),(189,103,36,2,NULL),(190,120,36,2,NULL),(191,124,36,2,NULL),(192,128,36,2,NULL),(193,131,36,2,NULL),(194,135,36,2,NULL),(195,45,48,2,NULL),(196,48,48,2,NULL),(197,51,48,2,NULL),(198,54,48,2,NULL),(199,57,48,2,NULL),(200,74,48,2,NULL),(201,103,48,2,NULL),(202,120,48,2,NULL),(203,124,48,2,NULL),(204,128,48,2,NULL),(205,131,48,2,NULL),(206,135,48,2,NULL),(207,45,52,2,NULL),(208,48,52,2,NULL),(209,51,52,2,NULL),(210,54,52,2,NULL),(211,57,52,2,NULL),(212,74,52,2,NULL),(213,103,52,2,NULL),(214,120,52,2,NULL),(215,124,52,2,NULL),(216,128,52,2,NULL),(217,131,52,2,NULL),(218,135,52,2,NULL),(219,45,58,2,NULL),(220,48,58,2,NULL),(221,51,58,2,NULL),(222,54,58,2,NULL),(223,57,58,2,NULL),(224,74,58,2,NULL),(225,103,58,2,NULL),(226,120,58,2,NULL),(227,124,58,2,NULL),(228,128,58,2,NULL),(229,131,58,2,NULL),(230,135,58,2,NULL),(231,45,16,2,NULL),(232,48,16,2,NULL),(233,51,16,2,NULL),(234,54,16,2,NULL),(235,57,16,2,NULL),(236,74,16,2,NULL),(237,103,16,2,NULL),(238,120,16,2,NULL),(239,124,16,2,NULL),(240,128,16,2,NULL),(241,131,16,2,NULL),(242,135,16,2,NULL),(243,47,15,2,NULL),(244,50,15,2,NULL),(245,53,15,2,NULL),(246,56,15,2,NULL),(247,59,15,2,NULL),(248,78,15,2,NULL),(249,99,15,2,NULL),(250,105,15,2,NULL),(251,112,15,2,NULL),(252,113,15,2,NULL),(253,115,15,2,NULL),(254,136,15,2,NULL),(255,73,15,2,NULL),(256,45,26,2,NULL),(257,48,26,2,NULL),(258,51,26,2,NULL),(259,54,26,2,NULL),(260,57,26,2,NULL),(261,74,26,2,NULL),(262,103,26,2,NULL),(263,120,26,2,NULL),(264,124,26,2,NULL),(265,128,26,2,NULL),(266,131,26,2,NULL),(267,135,26,2,NULL),(268,45,32,2,NULL),(269,48,32,2,NULL),(270,51,32,2,NULL),(271,54,32,2,NULL),(272,57,32,2,NULL),(273,74,32,2,NULL),(274,103,32,2,NULL),(275,120,32,2,NULL),(276,124,32,2,NULL),(277,128,32,2,NULL),(278,131,32,2,NULL),(279,135,32,2,NULL),(280,45,33,2,NULL),(281,48,33,2,NULL),(282,51,33,2,NULL),(283,54,33,2,NULL),(284,57,33,2,NULL),(285,74,33,2,NULL),(286,103,33,2,NULL),(287,120,33,2,NULL),(288,124,33,2,NULL),(289,128,33,2,NULL),(290,131,33,2,NULL),(291,135,33,2,NULL),(292,45,45,2,NULL),(293,48,45,2,NULL),(294,51,45,2,NULL),(295,54,45,2,NULL),(296,57,45,2,NULL),(297,74,45,2,NULL),(298,103,45,2,NULL),(299,89,24,2,NULL),(300,120,45,2,NULL),(301,39,1,2,NULL),(302,124,45,2,NULL),(303,44,1,2,NULL),(304,128,45,2,NULL),(305,46,1,2,NULL),(306,131,45,2,NULL),(307,49,1,2,NULL),(308,97,20,2,NULL),(309,135,45,2,NULL),(310,52,1,2,NULL),(311,97,21,2,NULL),(312,45,46,2,NULL),(313,55,1,2,NULL),(314,101,25,2,NULL),(315,48,46,2,NULL),(316,101,26,2,NULL),(317,58,1,2,NULL),(318,51,46,2,NULL),(319,102,25,2,NULL),(320,54,46,2,NULL),(321,60,1,2,NULL),(322,102,26,2,NULL),(323,57,46,2,NULL),(324,107,25,2,NULL),(325,74,46,2,NULL),(326,62,1,2,NULL),(327,107,26,2,NULL),(328,103,46,2,NULL),(329,39,4,2,NULL),(330,108,25,2,NULL),(331,120,46,2,NULL),(332,44,4,2,NULL),(333,108,26,2,NULL),(334,124,46,2,NULL),(335,46,4,2,NULL),(336,110,25,2,NULL),(337,128,46,2,NULL),(338,49,4,2,NULL),(339,110,26,2,NULL),(340,131,46,2,NULL),(341,52,4,2,NULL),(342,140,20,2,NULL),(343,135,46,2,NULL),(344,55,4,2,NULL),(345,45,51,2,NULL),(346,140,21,2,NULL),(347,58,4,2,NULL),(348,48,51,2,NULL),(349,47,1,2,NULL),(350,60,4,2,NULL),(351,51,51,2,NULL),(352,50,1,2,NULL),(353,54,51,2,NULL),(354,62,4,2,NULL),(355,53,1,2,NULL),(356,57,51,2,NULL),(357,39,38,2,NULL),(358,56,1,2,NULL),(359,74,51,2,NULL),(360,44,38,2,NULL),(361,59,1,2,NULL),(362,103,51,2,NULL),(363,46,38,2,NULL),(364,78,1,2,NULL),(365,120,51,2,NULL),(366,99,1,2,NULL),(367,49,38,2,NULL),(368,124,51,2,NULL),(369,105,1,2,NULL),(370,52,38,2,NULL),(371,128,51,2,NULL),(372,112,1,2,NULL),(373,55,38,2,NULL),(374,131,51,2,NULL),(375,113,1,2,NULL),(376,58,38,2,NULL),(377,135,51,2,NULL),(378,115,1,2,NULL),(379,45,61,2,NULL),(380,60,38,2,NULL),(381,136,1,2,NULL),(382,48,61,2,NULL),(383,62,38,2,NULL),(384,47,4,2,NULL),(385,51,61,2,NULL),(386,39,39,2,NULL),(387,50,4,2,NULL),(388,54,61,2,NULL),(389,44,39,2,NULL),(390,57,61,2,NULL),(391,53,4,2,NULL),(392,46,39,2,NULL),(393,74,61,2,NULL),(394,56,4,2,NULL),(395,49,39,2,NULL),(396,103,61,2,NULL),(397,59,4,2,NULL),(398,52,39,2,NULL),(399,120,61,2,NULL),(400,78,4,2,NULL),(401,55,39,2,NULL),(402,124,61,2,NULL),(403,99,4,2,NULL),(404,58,39,2,NULL),(405,128,61,2,NULL),(406,105,4,2,NULL),(407,60,39,2,NULL),(408,131,61,2,NULL),(409,112,4,2,NULL),(410,62,39,2,NULL),(411,135,61,2,NULL),(412,113,4,2,NULL),(413,39,5,2,NULL),(414,45,63,2,NULL),(415,115,4,2,NULL),(416,44,5,2,NULL),(417,48,63,2,NULL),(418,136,4,2,NULL),(419,46,5,2,NULL),(420,51,63,2,NULL),(421,47,38,2,NULL),(422,49,5,2,NULL),(423,54,63,2,NULL),(424,50,38,2,NULL),(425,52,5,2,NULL),(426,57,63,2,NULL),(427,53,38,2,NULL),(428,55,5,2,NULL),(429,74,63,2,NULL),(430,56,38,2,NULL),(431,58,5,2,NULL),(432,103,63,2,NULL),(433,59,38,2,NULL),(434,60,5,2,NULL),(435,120,63,2,NULL),(436,78,38,2,NULL),(437,62,5,2,NULL),(438,124,63,2,NULL),(439,99,38,2,NULL),(440,39,7,2,NULL),(441,128,63,2,NULL),(442,105,38,2,NULL),(443,44,7,2,NULL),(444,131,63,2,NULL),(445,112,38,2,NULL),(446,46,7,2,NULL),(447,135,63,2,NULL),(448,113,38,2,NULL),(449,49,7,2,NULL),(450,98,15,2,NULL),(451,115,38,2,NULL),(452,52,7,2,NULL),(453,45,25,2,NULL),(454,136,38,2,NULL),(455,55,7,2,NULL),(456,48,25,2,NULL),(457,47,39,2,NULL),(458,58,7,2,NULL),(459,51,25,2,NULL),(460,50,39,2,NULL),(461,60,7,2,NULL),(462,23,1,2,NULL),(463,54,25,2,NULL),(464,53,39,2,NULL),(465,62,7,2,NULL),(466,57,25,2,NULL),(467,56,39,2,NULL),(468,39,40,2,NULL),(469,24,1,2,NULL),(470,74,25,2,NULL),(471,59,39,2,NULL),(472,44,40,2,NULL),(473,103,25,2,NULL),(474,26,1,2,NULL),(475,78,39,2,NULL),(476,46,40,2,NULL),(477,120,25,2,NULL),(478,99,39,2,NULL),(479,49,40,2,NULL),(480,124,25,2,NULL),(481,105,39,2,NULL),(482,73,1,2,NULL),(483,52,40,2,NULL),(484,128,25,2,NULL),(485,112,39,2,NULL),(486,55,40,2,NULL),(487,98,1,2,NULL),(488,131,25,2,NULL),(489,113,39,2,NULL),(490,58,40,2,NULL),(491,23,4,2,NULL),(492,135,25,2,NULL),(493,115,39,2,NULL),(494,60,40,2,NULL),(495,136,39,2,NULL),(496,45,31,2,NULL),(497,24,4,2,NULL),(498,62,40,2,NULL),(499,48,31,2,NULL),(500,47,5,2,NULL),(501,26,4,2,NULL),(502,39,9,2,NULL),(503,51,31,2,NULL),(504,50,5,2,NULL),(505,44,9,2,NULL),(506,54,31,2,NULL),(507,53,5,2,NULL),(508,73,4,2,NULL),(509,46,9,2,NULL),(510,57,31,2,NULL),(511,56,5,2,NULL),(512,49,9,2,NULL),(513,74,31,2,NULL),(514,59,5,2,NULL),(515,98,4,2,NULL),(516,52,9,2,NULL),(517,103,31,2,NULL),(518,78,5,2,NULL),(519,23,38,2,NULL),(520,55,9,2,NULL),(521,120,31,2,NULL),(522,99,5,2,NULL),(523,58,9,2,NULL),(524,24,38,2,NULL),(525,124,31,2,NULL),(526,105,5,2,NULL),(527,60,9,2,NULL),(528,128,31,2,NULL),(529,112,5,2,NULL),(530,26,38,2,NULL),(531,62,9,2,NULL),(532,131,31,2,NULL),(533,113,5,2,NULL),(534,23,13,2,NULL),(535,135,31,2,NULL),(536,115,5,2,NULL),(537,73,38,2,NULL),(538,24,13,2,NULL),(539,45,35,2,NULL),(540,136,5,2,NULL),(541,26,13,2,NULL),(542,48,35,2,NULL),(543,47,7,2,NULL),(544,98,38,2,NULL),(545,39,14,2,NULL),(546,51,35,2,NULL),(547,50,7,2,NULL),(548,23,39,2,NULL),(549,44,14,2,NULL),(550,54,35,2,NULL),(551,53,7,2,NULL),(552,46,14,2,NULL),(553,24,39,2,NULL),(554,57,35,2,NULL),(555,56,7,2,NULL),(556,49,14,2,NULL),(557,26,39,2,NULL),(558,74,35,2,NULL),(559,59,7,2,NULL),(560,52,14,2,NULL),(561,103,35,2,NULL),(562,78,7,2,NULL),(563,55,14,2,NULL),(564,73,39,2,NULL),(565,120,35,2,NULL),(566,99,7,2,NULL),(567,58,14,2,NULL),(568,124,35,2,NULL),(569,105,7,2,NULL),(570,98,39,2,NULL),(571,60,14,2,NULL),(572,128,35,2,NULL),(573,112,7,2,NULL),(574,62,14,2,NULL),(575,131,35,2,NULL),(576,113,7,2,NULL),(577,39,17,2,NULL),(578,135,35,2,NULL),(579,115,7,2,NULL),(580,44,17,2,NULL),(581,45,43,2,NULL),(582,136,7,2,NULL),(583,46,17,2,NULL),(584,48,43,2,NULL),(585,47,40,2,NULL),(586,49,17,2,NULL),(587,51,43,2,NULL),(588,50,40,2,NULL),(589,52,17,2,NULL),(590,54,43,2,NULL),(591,53,40,2,NULL),(592,55,17,2,NULL),(593,57,43,2,NULL),(594,56,40,2,NULL),(595,58,17,2,NULL),(596,74,43,2,NULL),(597,59,40,2,NULL),(598,60,17,2,NULL),(599,103,43,2,NULL),(600,78,40,2,NULL),(601,62,17,2,NULL),(602,120,43,2,NULL),(603,99,40,2,NULL),(604,39,30,2,NULL),(605,124,43,2,NULL),(606,105,40,2,NULL),(607,44,30,2,NULL),(608,128,43,2,NULL),(609,112,40,2,NULL),(610,46,30,2,NULL),(611,131,43,2,NULL),(612,113,40,2,NULL),(613,49,30,2,NULL),(614,135,43,2,NULL),(615,115,40,2,NULL),(616,52,30,2,NULL),(617,45,47,2,NULL),(618,136,40,2,NULL),(619,55,30,2,NULL),(620,48,47,2,NULL),(621,47,9,2,NULL),(622,58,30,2,NULL),(623,51,47,2,NULL),(624,50,9,2,NULL),(625,60,30,2,NULL),(626,54,47,2,NULL),(627,53,9,2,NULL),(628,62,30,2,NULL),(629,57,47,2,NULL),(630,56,9,2,NULL),(631,39,34,2,NULL),(632,74,47,2,NULL),(633,59,9,2,NULL),(634,44,34,2,NULL),(635,103,47,2,NULL),(636,78,9,2,NULL),(637,46,34,2,NULL),(638,120,47,2,NULL),(639,99,9,2,NULL),(640,49,34,2,NULL),(641,124,47,2,NULL),(642,105,9,2,NULL),(643,52,34,2,NULL),(644,128,47,2,NULL),(645,112,9,2,NULL),(646,55,34,2,NULL),(647,131,47,2,NULL),(648,113,9,2,NULL),(649,58,34,2,NULL),(650,135,47,2,NULL),(651,115,9,2,NULL),(652,60,34,2,NULL),(653,45,49,2,NULL),(654,136,9,2,NULL),(655,62,34,2,NULL),(656,48,49,2,NULL),(657,23,16,2,NULL),(658,39,36,2,NULL),(659,51,49,2,NULL),(660,24,16,2,NULL),(661,44,36,2,NULL),(662,54,49,2,NULL),(663,26,16,2,NULL),(664,46,36,2,NULL),(665,57,49,2,NULL),(666,47,14,2,NULL),(667,49,36,2,NULL),(668,74,49,2,NULL),(669,50,14,2,NULL),(670,52,36,2,NULL),(671,53,14,2,NULL),(672,55,36,2,NULL),(673,56,14,2,NULL),(674,58,36,2,NULL),(675,59,14,2,NULL),(676,103,49,2,NULL),(677,60,36,2,NULL),(678,120,49,2,NULL),(679,78,14,2,NULL),(680,62,36,2,NULL),(681,124,49,2,NULL),(682,99,14,2,NULL),(683,128,49,2,NULL),(684,105,14,2,NULL),(685,39,48,2,NULL),(686,131,49,2,NULL),(687,112,14,2,NULL),(688,44,48,2,NULL),(689,135,49,2,NULL),(690,113,14,2,NULL),(691,46,48,2,NULL),(692,45,50,2,NULL),(693,115,14,2,NULL),(694,49,48,2,NULL),(695,48,50,2,NULL),(696,136,14,2,NULL),(697,52,48,2,NULL),(698,51,50,2,NULL),(699,47,13,2,NULL),(700,55,48,2,NULL),(701,54,50,2,NULL),(702,50,13,2,NULL),(703,58,48,2,NULL),(704,57,50,2,NULL),(705,53,13,2,NULL),(706,60,48,2,NULL),(707,74,50,2,NULL),(708,56,13,2,NULL),(709,62,48,2,NULL),(710,103,50,2,NULL),(711,59,13,2,NULL),(712,39,52,2,NULL),(713,120,50,2,NULL),(714,78,13,2,NULL),(715,44,52,2,NULL),(716,124,50,2,NULL),(717,99,13,2,NULL),(718,46,52,2,NULL),(719,128,50,2,NULL),(720,105,13,2,NULL),(721,49,52,2,NULL),(722,131,50,2,NULL),(723,112,13,2,NULL),(724,52,52,2,NULL),(725,135,50,2,NULL),(726,113,13,2,NULL),(727,55,52,2,NULL),(728,45,64,2,NULL),(729,115,13,2,NULL),(730,58,52,2,NULL),(731,48,64,2,NULL),(732,136,13,2,NULL),(733,60,52,2,NULL),(734,51,64,2,NULL),(735,39,16,2,NULL),(736,62,52,2,NULL),(737,54,64,2,NULL),(738,44,16,2,NULL),(739,39,58,2,NULL),(740,57,64,2,NULL),(741,46,16,2,NULL),(742,44,58,2,NULL),(743,74,64,2,NULL),(744,49,16,2,NULL),(745,46,58,2,NULL),(746,103,64,2,NULL),(747,52,16,2,NULL),(748,49,58,2,NULL),(749,120,64,2,NULL),(750,55,16,2,NULL),(751,52,58,2,NULL),(752,124,64,2,NULL),(753,58,16,2,NULL),(754,55,58,2,NULL),(755,128,64,2,NULL),(756,60,16,2,NULL),(757,58,58,2,NULL),(758,131,64,2,NULL),(759,62,16,2,NULL),(760,60,58,2,NULL),(761,135,64,2,NULL),(762,47,17,2,NULL),(763,62,58,2,NULL),(764,50,17,2,NULL),(765,98,5,2,NULL),(766,73,13,2,NULL),(767,98,7,2,NULL),(768,53,17,2,NULL),(769,39,26,2,NULL),(770,56,17,2,NULL),(771,98,40,2,NULL),(772,44,26,2,NULL),(773,98,9,2,NULL),(774,59,17,2,NULL),(775,46,26,2,NULL),(776,98,14,2,NULL),(777,78,17,2,NULL),(778,49,26,2,NULL),(779,98,13,2,NULL),(780,99,17,2,NULL),(781,52,26,2,NULL),(782,98,17,2,NULL),(783,105,17,2,NULL),(784,55,26,2,NULL),(785,98,30,2,NULL),(786,112,17,2,NULL),(787,58,26,2,NULL),(788,98,34,2,NULL),(789,113,17,2,NULL),(790,60,26,2,NULL),(791,98,36,2,NULL),(792,115,17,2,NULL),(793,62,26,2,NULL),(794,98,48,2,NULL),(795,136,17,2,NULL),(796,39,32,2,NULL),(797,47,30,2,NULL),(798,98,52,2,NULL),(799,44,32,2,NULL),(800,50,30,2,NULL),(801,98,58,2,NULL),(802,46,32,2,NULL),(803,98,16,2,NULL),(804,53,30,2,NULL),(805,49,32,2,NULL),(806,98,26,2,NULL),(807,56,30,2,NULL),(808,52,32,2,NULL),(809,98,32,2,NULL),(810,59,30,2,NULL),(811,55,32,2,NULL),(812,78,30,2,NULL),(813,98,33,2,NULL),(814,58,32,2,NULL),(815,98,45,2,NULL),(816,99,30,2,NULL),(817,60,32,2,NULL),(818,98,46,2,NULL),(819,105,30,2,NULL),(820,62,32,2,NULL),(821,98,51,2,NULL),(822,112,30,2,NULL),(823,39,33,2,NULL),(824,98,61,2,NULL),(825,113,30,2,NULL),(826,44,33,2,NULL),(827,115,30,2,NULL),(828,98,63,2,NULL),(829,46,33,2,NULL),(830,136,30,2,NULL),(831,98,25,2,NULL),(832,49,33,2,NULL),(833,47,34,2,NULL),(834,98,31,2,NULL),(835,50,34,2,NULL),(836,52,33,2,NULL),(837,98,35,2,NULL),(838,53,34,2,NULL),(839,55,33,2,NULL),(840,98,43,2,NULL),(841,58,33,2,NULL),(842,98,47,2,NULL),(843,56,34,2,NULL),(844,60,33,2,NULL),(845,98,49,2,NULL),(846,59,34,2,NULL),(847,62,33,2,NULL),(848,78,34,2,NULL),(849,98,50,2,NULL),(850,39,45,2,NULL),(851,98,64,2,NULL),(852,99,34,2,NULL),(853,44,45,2,NULL),(854,23,25,2,NULL),(855,105,34,2,NULL),(856,46,45,2,NULL),(857,24,25,2,NULL),(858,112,34,2,NULL),(859,49,45,2,NULL),(860,26,25,2,NULL),(861,113,34,2,NULL),(862,52,45,2,NULL),(863,39,25,2,NULL),(864,115,34,2,NULL),(865,55,45,2,NULL),(866,136,34,2,NULL),(867,44,25,2,NULL),(868,58,45,2,NULL),(869,46,25,2,NULL),(870,47,36,2,NULL),(871,60,45,2,NULL),(872,49,25,2,NULL),(873,50,36,2,NULL),(874,62,45,2,NULL),(875,52,25,2,NULL),(876,53,36,2,NULL),(877,39,46,2,NULL),(878,55,25,2,NULL),(879,56,36,2,NULL),(880,44,46,2,NULL),(881,58,25,2,NULL),(882,59,36,2,NULL),(883,46,46,2,NULL),(884,78,36,2,NULL),(885,60,25,2,NULL),(886,49,46,2,NULL),(887,99,36,2,NULL),(888,62,25,2,NULL),(889,52,46,2,NULL),(890,47,25,2,NULL),(891,105,36,2,NULL),(892,55,46,2,NULL),(893,50,25,2,NULL),(894,112,36,2,NULL),(895,58,46,2,NULL),(896,53,25,2,NULL),(897,113,36,2,NULL),(898,60,46,2,NULL),(899,115,36,2,NULL),(900,56,25,2,NULL),(901,62,46,2,NULL),(902,136,36,2,NULL),(903,59,25,2,NULL),(904,39,51,2,NULL),(905,47,48,2,NULL),(906,78,25,2,NULL),(907,44,51,2,NULL),(908,99,25,2,NULL),(909,50,48,2,NULL),(910,46,51,2,NULL),(911,105,25,2,NULL),(912,53,48,2,NULL),(913,49,51,2,NULL),(914,56,48,2,NULL),(915,112,25,2,NULL),(916,52,51,2,NULL),(917,59,48,2,NULL),(918,113,25,2,NULL),(919,55,51,2,NULL),(920,78,48,2,NULL),(921,115,25,2,NULL),(922,58,51,2,NULL),(923,99,48,2,NULL),(924,136,25,2,NULL),(925,60,51,2,NULL),(926,105,48,2,NULL),(927,73,25,2,NULL),(928,62,51,2,NULL),(929,112,48,2,NULL),(930,23,31,2,NULL),(931,39,61,2,NULL),(932,113,48,2,NULL),(933,24,31,2,NULL),(934,44,61,2,NULL),(935,115,48,2,NULL),(936,26,31,2,NULL),(937,46,61,2,NULL),(938,136,48,2,NULL),(939,39,31,2,NULL),(940,49,61,2,NULL),(941,47,52,2,NULL),(942,44,31,2,NULL),(943,52,61,2,NULL),(944,50,52,2,NULL),(945,46,31,2,NULL),(946,55,61,2,NULL),(947,53,52,2,NULL),(948,49,31,2,NULL),(949,58,61,2,NULL),(950,56,52,2,NULL),(951,60,61,2,NULL),(952,52,31,2,NULL),(953,59,52,2,NULL),(954,62,61,2,NULL),(955,55,31,2,NULL),(956,78,52,2,NULL),(957,58,31,2,NULL),(958,39,63,2,NULL),(959,99,52,2,NULL),(960,44,63,2,NULL),(961,60,31,2,NULL),(962,105,52,2,NULL),(963,46,63,2,NULL),(964,62,31,2,NULL),(965,112,52,2,NULL),(966,49,63,2,NULL),(967,47,31,2,NULL),(968,113,52,2,NULL),(969,52,63,2,NULL),(970,50,31,2,NULL),(971,115,52,2,NULL),(972,53,31,2,NULL),(973,55,63,2,NULL),(974,136,52,2,NULL),(975,58,63,2,NULL),(976,56,31,2,NULL),(977,47,58,2,NULL),(978,59,31,2,NULL),(979,60,63,2,NULL),(980,50,58,2,NULL),(981,78,31,2,NULL),(982,62,63,2,NULL),(983,53,58,2,NULL),(984,99,31,2,NULL),(985,56,58,2,NULL),(986,105,31,2,NULL),(987,39,35,2,NULL),(988,59,58,2,NULL),(989,112,31,2,NULL),(990,44,35,2,NULL),(991,78,58,2,NULL),(992,113,31,2,NULL),(993,46,35,2,NULL),(994,99,58,2,NULL),(995,115,31,2,NULL),(996,49,35,2,NULL),(997,105,58,2,NULL),(998,52,35,2,NULL),(999,136,31,2,NULL),(1000,112,58,2,NULL),(1001,55,35,2,NULL),(1002,73,31,2,NULL),(1003,113,58,2,NULL),(1004,58,35,2,NULL),(1005,83,31,2,NULL),(1006,115,58,2,NULL),(1007,60,35,2,NULL),(1008,83,32,2,NULL),(1009,136,58,2,NULL),(1010,62,35,2,NULL),(1011,23,35,2,NULL),(1012,73,16,2,NULL),(1013,39,43,2,NULL),(1014,47,26,2,NULL),(1015,24,35,2,NULL),(1016,44,43,2,NULL),(1017,26,35,2,NULL),(1018,50,26,2,NULL),(1019,46,43,2,NULL),(1020,53,26,2,NULL),(1021,47,35,2,NULL),(1022,49,43,2,NULL),(1023,56,26,2,NULL),(1024,50,35,2,NULL),(1025,52,43,2,NULL),(1026,59,26,2,NULL),(1027,53,35,2,NULL),(1028,55,43,2,NULL),(1029,78,26,2,NULL),(1030,58,43,2,NULL),(1031,56,35,2,NULL),(1032,99,26,2,NULL),(1033,60,43,2,NULL),(1034,59,35,2,NULL),(1035,105,26,2,NULL),(1036,78,35,2,NULL),(1037,62,43,2,NULL),(1038,112,26,2,NULL),(1039,99,35,2,NULL),(1040,39,47,2,NULL),(1041,113,26,2,NULL),(1042,105,35,2,NULL),(1043,44,47,2,NULL),(1044,115,26,2,NULL),(1045,112,35,2,NULL),(1046,46,47,2,NULL),(1047,136,26,2,NULL),(1048,49,47,2,NULL),(1049,113,35,2,NULL),(1050,47,32,2,NULL),(1051,115,35,2,NULL),(1052,52,47,2,NULL),(1053,50,32,2,NULL),(1054,55,47,2,NULL),(1055,136,35,2,NULL),(1056,53,32,2,NULL),(1057,58,47,2,NULL),(1058,73,35,2,NULL),(1059,56,32,2,NULL),(1060,60,47,2,NULL),(1061,23,43,2,NULL),(1062,59,32,2,NULL),(1063,62,47,2,NULL),(1064,24,43,2,NULL),(1065,78,32,2,NULL),(1066,39,49,2,NULL),(1067,26,43,2,NULL),(1068,99,32,2,NULL),(1069,44,49,2,NULL),(1070,105,32,2,NULL),(1071,47,43,2,NULL),(1072,46,49,2,NULL),(1073,112,32,2,NULL),(1074,50,43,2,NULL),(1075,49,49,2,NULL),(1076,53,43,2,NULL),(1077,113,32,2,NULL),(1078,52,49,2,NULL),(1079,56,43,2,NULL),(1080,115,32,2,NULL),(1081,55,49,2,NULL),(1082,136,32,2,NULL),(1083,59,43,2,NULL),(1084,58,49,2,NULL),(1085,47,33,2,NULL),(1086,78,43,2,NULL),(1087,60,49,2,NULL),(1088,99,43,2,NULL),(1089,50,33,2,NULL),(1090,62,49,2,NULL),(1091,105,43,2,NULL),(1092,53,33,2,NULL),(1093,39,50,2,NULL),(1094,112,43,2,NULL),(1095,56,33,2,NULL),(1096,44,50,2,NULL),(1097,113,43,2,NULL),(1098,59,33,2,NULL),(1099,46,50,2,NULL),(1100,115,43,2,NULL),(1101,78,33,2,NULL),(1102,49,50,2,NULL),(1103,136,43,2,NULL),(1104,99,33,2,NULL),(1105,52,50,2,NULL),(1106,73,43,2,NULL),(1107,105,33,2,NULL),(1108,55,50,2,NULL),(1109,112,33,2,NULL),(1110,23,47,2,NULL),(1111,58,50,2,NULL),(1112,24,47,2,NULL),(1113,113,33,2,NULL),(1114,60,50,2,NULL),(1115,26,47,2,NULL),(1116,115,33,2,NULL),(1117,62,50,2,NULL),(1118,136,33,2,NULL),(1119,47,47,2,NULL),(1120,39,64,2,NULL),(1121,50,47,2,NULL),(1122,47,45,2,NULL),(1123,44,64,2,NULL),(1124,53,47,2,NULL),(1125,50,45,2,NULL),(1126,46,64,2,NULL),(1127,56,47,2,NULL),(1128,53,45,2,NULL),(1129,49,64,2,NULL),(1130,59,47,2,NULL),(1131,56,45,2,NULL),(1132,52,64,2,NULL),(1133,78,47,2,NULL),(1134,59,45,2,NULL),(1135,55,64,2,NULL),(1136,99,47,2,NULL),(1137,78,45,2,NULL),(1138,58,64,2,NULL),(1139,105,47,2,NULL),(1140,99,45,2,NULL),(1141,60,64,2,NULL),(1142,112,47,2,NULL),(1143,105,45,2,NULL),(1144,62,64,2,NULL),(1145,113,47,2,NULL),(1146,112,45,2,NULL),(1147,23,17,2,NULL),(1148,115,47,2,NULL),(1149,113,45,2,NULL),(1150,24,17,2,NULL),(1151,136,47,2,NULL),(1152,115,45,2,NULL),(1153,26,17,2,NULL),(1154,73,47,2,NULL),(1155,136,45,2,NULL),(1156,73,17,2,NULL),(1157,47,46,2,NULL),(1158,23,49,2,NULL),(1159,23,30,2,NULL),(1160,24,49,2,NULL),(1161,50,46,2,NULL),(1162,24,30,2,NULL),(1163,26,49,2,NULL),(1164,53,46,2,NULL),(1165,26,30,2,NULL),(1166,56,46,2,NULL),(1167,47,49,2,NULL),(1168,50,49,2,NULL),(1169,59,46,2,NULL),(1170,73,30,2,NULL),(1171,53,49,2,NULL),(1172,78,46,2,NULL),(1173,56,49,2,NULL),(1174,99,46,2,NULL),(1175,23,34,2,NULL),(1176,59,49,2,NULL),(1177,105,46,2,NULL),(1178,24,34,2,NULL),(1179,78,49,2,NULL),(1180,112,46,2,NULL),(1181,26,34,2,NULL),(1182,99,49,2,NULL),(1183,113,46,2,NULL),(1184,115,46,2,NULL),(1185,105,49,2,NULL),(1186,73,34,2,NULL),(1187,112,49,2,NULL),(1188,136,46,2,NULL),(1189,113,49,2,NULL),(1190,47,51,2,NULL),(1191,23,36,2,NULL),(1192,115,49,2,NULL),(1193,50,51,2,NULL),(1194,24,36,2,NULL),(1195,136,49,2,NULL),(1196,53,51,2,NULL),(1197,26,36,2,NULL),(1198,73,49,2,NULL),(1199,56,51,2,NULL),(1200,59,51,2,NULL),(1201,73,36,2,NULL),(1202,23,50,2,NULL),(1203,78,51,2,NULL),(1204,24,50,2,NULL),(1205,99,51,2,NULL),(1206,23,48,2,NULL),(1207,26,50,2,NULL),(1208,105,51,2,NULL),(1209,24,48,2,NULL),(1210,47,50,2,NULL),(1211,26,48,2,NULL),(1212,112,51,2,NULL),(1213,50,50,2,NULL),(1214,113,51,2,NULL),(1215,53,50,2,NULL),(1216,73,48,2,NULL),(1217,115,51,2,NULL),(1218,56,50,2,NULL),(1219,23,52,2,NULL),(1220,136,51,2,NULL),(1221,59,50,2,NULL),(1222,24,52,2,NULL),(1223,47,61,2,NULL),(1224,78,50,2,NULL),(1225,26,52,2,NULL),(1226,50,61,2,NULL),(1227,99,50,2,NULL),(1228,53,61,2,NULL),(1229,105,50,2,NULL),(1230,73,52,2,NULL),(1231,56,61,2,NULL),(1232,112,50,2,NULL),(1233,23,58,2,NULL),(1234,59,61,2,NULL),(1235,113,50,2,NULL),(1236,24,58,2,NULL),(1237,78,61,2,NULL),(1238,115,50,2,NULL),(1239,26,58,2,NULL),(1240,99,61,2,NULL),(1241,136,50,2,NULL),(1242,105,61,2,NULL),(1243,73,58,2,NULL),(1244,73,50,2,NULL),(1245,112,61,2,NULL),(1246,23,64,2,NULL),(1247,113,61,2,NULL),(1248,24,64,2,NULL),(1249,115,61,2,NULL),(1250,26,64,2,NULL),(1251,136,61,2,NULL),(1252,47,64,2,NULL),(1253,47,63,2,NULL),(1254,50,64,2,NULL),(1255,50,63,2,NULL),(1256,53,64,2,NULL),(1257,53,63,2,NULL),(1258,56,64,2,NULL),(1259,56,63,2,NULL),(1260,59,64,2,NULL),(1261,59,63,2,NULL),(1262,78,64,2,NULL),(1263,78,63,2,NULL),(1264,99,64,2,NULL),(1265,99,63,2,NULL),(1266,105,64,2,NULL),(1267,105,63,2,NULL),(1268,112,64,2,NULL),(1269,112,63,2,NULL),(1270,113,64,2,NULL),(1271,113,63,2,NULL),(1272,115,64,2,NULL),(1273,115,63,2,NULL),(1274,136,64,2,NULL),(1275,136,63,2,NULL),(1276,73,64,2,NULL),(1277,73,5,2,NULL),(1278,73,7,2,NULL),(1279,73,40,2,NULL),(1280,73,9,2,NULL),(1281,73,14,2,NULL),(1282,73,26,2,NULL),(1283,73,32,2,NULL),(1284,73,33,2,NULL),(1285,73,45,2,NULL),(1286,73,46,2,NULL),(1287,73,51,2,NULL),(1288,73,61,2,NULL),(1289,73,63,2,NULL),(1290,23,26,2,NULL),(1291,24,26,2,NULL),(1292,26,26,2,NULL),(1293,23,32,2,NULL),(1294,24,32,2,NULL),(1295,26,32,2,NULL),(1296,82,31,2,NULL),(1297,82,32,2,NULL),(1298,23,33,2,NULL),(1299,24,33,2,NULL),(1300,26,33,2,NULL),(1301,23,45,2,NULL),(1302,24,45,2,NULL),(1303,26,45,2,NULL),(1304,23,46,2,NULL),(1305,24,46,2,NULL),(1306,26,46,2,NULL),(1307,23,51,2,NULL),(1308,24,51,2,NULL),(1309,26,51,2,NULL),(1310,23,61,2,NULL),(1311,24,61,2,NULL),(1312,26,61,2,NULL),(1313,23,63,2,NULL),(1314,24,63,2,NULL),(1315,26,63,2,NULL),(1316,23,5,2,NULL),(1317,24,5,2,NULL),(1318,26,5,2,NULL),(1319,23,7,2,NULL),(1320,24,7,2,NULL),(1321,6,6,2,NULL),(1322,26,7,2,NULL),(1323,23,9,2,NULL),(1324,24,9,2,NULL),(1325,23,40,2,NULL),(1326,26,9,2,NULL),(1327,24,40,2,NULL),(1328,26,40,2,NULL),(1329,23,14,2,NULL),(1330,24,14,2,NULL),(1331,26,14,2,NULL),(1332,9,12,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProviderLinks`
--

LOCK TABLES `ProviderLinks` WRITE;
/*!40000 ALTER TABLE `ProviderLinks` DISABLE KEYS */;
INSERT INTO `ProviderLinks` VALUES (1,13,37,NULL),(2,30,37,NULL),(3,53,37,NULL),(4,34,37,NULL),(5,54,37,NULL);
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

-- Dump completed on 2015-10-12  3:30:47
