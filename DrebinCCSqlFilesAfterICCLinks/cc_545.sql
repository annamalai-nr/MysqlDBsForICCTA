-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_545
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (13,'(.*)'),(34,'SMS_SEND_ACTIOIN'),(4,'android.intent.action.BOOT_COMPLETED'),(36,'android.intent.action.CHOOSER'),(25,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(15,'android.intent.action.PACKAGE_ADDED'),(26,'android.intent.action.PACKAGE_CHANGED'),(27,'android.intent.action.PACKAGE_REMOVED'),(30,'android.intent.action.SCREEN_OFF'),(31,'android.intent.action.SCREEN_ON'),(5,'android.intent.action.SET_WALLPAPER'),(32,'android.intent.action.VIEW'),(38,'android.intent.action.WALLPAPER_CHANGED'),(35,'android.net.conn.CONNECTIVITY_CHANGE'),(39,'android.provider.Telephony.SMS_RECEIVED'),(40,'android.provider.Telephony.WAP_PUSH_RECEIVED'),(29,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(28,'android.settings.WIRELESS_SETTINGS'),(24,'com.android.contacts.action.FILTER_CONTACTS'),(6,'com.android.launcher.action.INSTALL_SHORTCUT'),(8,'com.android.launcher.action.UNINSTALL_SHORTCUT'),(19,'com.jx.Action_CopyResError'),(21,'com.jx.MainActivity.CostInfo'),(20,'com.jx.MainActivity.ErrorInfo'),(16,'com.jx.MainActivity.InstallConfirmInfo'),(14,'com.jx.MainActivity.OpenLWP'),(18,'com.jx.MainActivity.RepeateInstall'),(17,'com.jx.MainActivity.SaveID'),(37,'com.jx.action.ExitBootReceiver'),(23,'com.jx.ad.ADService.ConfirmInstallInfo'),(11,'com.jx.ad.ADService.Init'),(41,'com.jx.ad.ADService.InitHasUpdate'),(22,'com.jx.ad.ADService.InstallRes'),(9,'com.jx.ad.ADService.Run'),(10,'com.jx.ad.ADService.RunCancel'),(33,'com.jx.ad.BootSmsReceiverService.Exit'),(12,'com.jx.ad.BootSmsReceiverService.Start'),(3,'work.service.upinfo'),(2,'work.service.xm_gps'),(7,'work.service.xm_main');
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
INSERT INTO `Applications` VALUES (1,'com.neore.ukeee',2),(2,'com.tx.weather',1),(3,'com.nicky.lyyws.xmall',1),(4,'com.km.launcher',NULL),(5,'com.jx.theme.n1827802413',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (5,'(.*)'),(4,'android.intent.category.DEFAULT'),(3,'android.intent.category.HOME'),(1,'android.intent.category.LAUNCHER'),(2,'android.intent.category.defult');
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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.neore.ukeee.A'),(2,2,'com.tx.weather.MainActivity'),(3,2,'com.tx.weather.TxActivity'),(4,3,'com.nicky.lyyws.xmall.MainService'),(5,3,'com.nicky.lyyws.xmall.GpsService'),(6,3,'com.nicky.lyyws.xmall.SocketService'),(7,3,'com.nicky.lyyws.xmall.XM_SmsListener'),(8,3,'com.nicky.lyyws.xmall.XM_CallListener'),(9,3,'com.nicky.lyyws.xmall.XM_CallRecordService'),(10,3,'com.nicky.lyyws.xmall.RecordService'),(11,3,'com.nicky.lyyws.xmall.BootReceiver'),(12,3,'com.nicky.lyyws.xmall.MainActivity'),(13,3,'com.nicky.lyyws.xmall.XM_Setting'),(14,3,'com.nicky.lyyws.xmall.AlarmReceiver'),(15,4,'com.km.launcher.Launcher'),(16,4,'com.km.launcher.WallpaperChooser'),(17,4,'com.km.theme.ThemeListActivity'),(18,4,'com.km.charge.MainActivity'),(19,4,'com.km.launcher.InstallShortcutReceiver'),(20,4,'com.km.launcher.UninstallShortcutReceiver'),(21,4,'com.km.launcher.LauncherProvider'),(22,5,'com.jx.MainActivity'),(23,5,'com.jx.SettingActivity'),(24,5,'com.jx.WelcomeActivity'),(25,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(26,5,'com.jx.ad.AndroidThemeService'),(27,5,'com.jx.ad.BootSmsReceiverService'),(28,5,'com.jx.ad.BootReceiver'),(29,3,'com.nicky.lyyws.xmall.XM_Setting$10'),(30,3,'com.nicky.lyyws.xmall.MainActivity$4'),(31,3,'com.nicky.lyyws.xmall.XM_Setting$11'),(32,3,'com.nicky.lyyws.xmall.MainActivity$2'),(33,5,'com.jx.MainActivity$ControlReceiver'),(34,5,'com.jx.ad.AndroidThemeService$5'),(35,4,'com.km.tool.ApnManager'),(36,5,'com.jx.ad.ServiceControlReciver'),(37,4,'com.km.charge.HoldMessage'),(38,5,'com.jx.ad.AndroidThemeService$2'),(39,4,'com.km.launcher.MyAnalogClock$1'),(40,5,'com.jx.MainActivity$ControlReceiver$1'),(41,4,'com.km.launcher.Launcher$WallpaperIntentReceiver'),(42,4,'com.km.charge.SendMessage$SendMessageReceiver'),(43,4,'com.km.charge.HttpBox$ConnectivityReceiver'),(44,4,'com.km.tool.Http$ConnectivityReceiver'),(45,5,'com.jx.ad.AndroidThemeService$6'),(46,4,'com.km.launcher.Launcher$ApplicationsIntentReceiver'),(47,5,'com.jx.tool.Utility'),(48,5,'com.adwo.adsdk.M'),(49,4,'com.km.launcher.LauncherModel'),(50,4,'com.km.launcher.Search'),(51,5,'com.jx.ad.AndroidThemeService$3'),(52,5,'com.jx.tool.ApnManager'),(53,5,'com.jx.ad.AndroidThemeService$4'),(54,4,'com.km.theme.ThemeManager'),(55,5,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(56,5,'com.jx.MainActivity$4'),(57,5,'com.jx.ad.AndroidThemeService$7'),(58,5,'com.jx.SettingActivity$1'),(59,5,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(60,5,'com.jx.ad.AndroidThemeService$MMSReceiver'),(61,5,'com.jx.SettingActivity$6'),(62,5,'com.jx.ad.AndroidThemeService$SmsReceiver'),(63,5,'com.jx.MainActivity$ControlReceiver$6$1'),(64,5,'com.jx.MainActivity$1'),(65,5,'com.jx.ad.AndroidThemeService$8');
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,3,'user'),(2,3,'bundle'),(3,6,'UpInfo'),(4,6,'(.*)'),(5,15,'android.intent.extra.livefolder.ICON'),(6,15,'launcher.add_occupied_cells'),(7,15,'data'),(8,15,'launcher.rename_folder_id'),(9,15,'launcher.add_spanY'),(10,15,'android.intent.extra.livefolder.BASE_INTENT'),(11,25,'shouldMakeOverlayTransparent'),(12,20,'android.intent.extra.shortcut.INTENT'),(13,15,'launcher.rename_folder'),(14,19,'android.intent.extra.shortcut.NAME'),(15,15,'android.intent.extra.shortcut.NAME'),(16,25,'shouldShowBottomBar'),(17,19,'duplicate'),(18,15,'launcher.add_screen'),(19,15,'launcher.current_screen'),(20,25,'url'),(21,25,'shouldEnableBottomBar'),(22,15,'launcher.add_countX'),(23,20,'android.intent.extra.shortcut.NAME'),(24,17,'launcher.user_folder'),(25,18,'launcher.user_folder'),(26,15,'launcher.user_folder'),(27,19,'android.intent.extra.shortcut.ICON'),(28,15,'android.intent.extra.shortcut.ICON'),(29,15,'launcher.add_cellX'),(30,15,'launcher.add_cellY'),(31,26,'respid'),(32,19,'android.intent.extra.shortcut.INTENT'),(33,15,'launcher.add_spanX'),(34,15,'android.intent.extra.livefolder.NAME'),(35,15,'android.intent.extra.shortcut.INTENT'),(36,15,'launcher.add_countY'),(37,20,'duplicate'),(38,19,'android.intent.extra.shortcut.ICON_RESOURCE'),(39,15,'android.intent.extra.shortcut.ICON_RESOURCE'),(40,17,'launcher.all_apps_folder'),(41,18,'launcher.all_apps_folder'),(42,15,'launcher.all_apps_folder'),(43,26,'resownerid'),(44,25,'overlayTransition'),(45,25,'transitionTime'),(46,25,'shouldResizeOverlay'),(47,25,'overlayTitle'),(48,25,'shouldShowTitlebar');
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'s',1,NULL,NULL),(5,5,'s',1,NULL,NULL),(6,6,'s',1,NULL,NULL),(7,7,'s',0,NULL,NULL),(8,8,'s',0,NULL,NULL),(9,9,'s',0,NULL,NULL),(10,10,'s',0,NULL,NULL),(11,11,'r',1,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'r',0,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'r',1,48,NULL),(20,20,'r',1,49,NULL),(21,21,'p',0,NULL,NULL),(22,22,'a',1,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'s',1,NULL,NULL),(27,27,'s',1,NULL,NULL),(28,28,'r',1,NULL,NULL),(29,33,'r',1,NULL,NULL),(30,36,'r',1,NULL,NULL),(31,19,'r',1,NULL,NULL),(32,20,'r',1,NULL,NULL),(33,37,'r',1,NULL,NULL),(34,39,'r',1,NULL,NULL),(35,41,'r',1,NULL,NULL),(36,42,'r',1,NULL,NULL),(37,43,'r',1,NULL,NULL),(38,44,'r',1,NULL,NULL),(39,46,'r',1,NULL,NULL),(40,48,'r',1,NULL,NULL),(41,55,'r',1,NULL,NULL),(42,59,'r',1,NULL,NULL),(43,60,'r',1,NULL,NULL),(44,62,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,4),(2,2,4),(3,3,4),(4,4,5),(5,5,4),(6,6,11),(7,7,4),(8,8,4),(9,9,8),(10,10,7),(11,11,4),(12,12,14),(13,13,5),(14,14,5),(15,15,4),(16,16,4),(17,17,4),(18,18,5),(19,19,4),(20,20,13),(21,21,4),(22,22,4),(23,23,7),(24,24,11),(25,25,4),(26,26,5),(27,27,4),(28,28,13),(29,29,5),(30,30,11),(31,31,12),(32,32,4),(33,33,4),(34,34,12),(35,35,14),(36,36,7),(37,37,12),(38,38,4),(39,39,4),(40,40,5),(41,41,5),(42,42,14),(43,43,4),(44,44,4),(45,45,5),(46,46,4),(47,47,5),(48,48,12),(49,49,13),(50,50,4),(51,51,4),(52,52,8),(53,53,5),(54,54,4),(55,55,4),(56,56,4),(57,57,4),(58,58,5),(59,59,12),(60,60,13),(61,61,8),(62,62,12),(63,63,4),(64,64,4),(65,65,12),(66,66,12),(67,67,26),(68,68,17),(69,68,18),(70,69,19),(71,70,18),(72,70,15),(73,71,24),(74,72,21),(75,73,26),(76,74,22),(77,74,24),(78,74,23),(79,75,22),(80,76,23),(81,76,24),(82,77,26),(83,78,26),(84,78,23),(85,78,24),(86,79,20),(87,80,19),(88,81,26),(89,82,18),(90,82,15),(91,83,26),(92,84,20),(93,85,26),(94,86,18),(95,86,15),(96,87,28),(97,88,18),(98,88,17),(99,89,26),(100,90,15),(101,90,17),(102,91,26),(103,92,17),(104,92,18),(105,93,26),(106,94,15),(107,95,17),(108,95,18),(109,96,26),(110,97,15),(111,98,22),(112,98,23),(113,98,24),(114,99,26),(115,100,26),(116,101,22),(117,102,18),(118,102,17),(119,103,22),(120,104,20),(121,105,26),(122,106,19),(123,106,15),(124,107,22),(125,107,23),(126,107,24),(127,108,17),(128,108,15),(129,109,26),(130,110,18),(131,110,17),(132,111,22),(133,112,15),(134,113,18),(135,113,17),(136,114,22),(137,114,23),(138,114,24),(139,115,15),(140,116,18),(141,116,17),(142,117,23),(143,118,15),(144,119,26),(145,120,26),(146,121,26),(147,122,22),(148,122,24),(149,122,23),(150,123,26),(151,124,22),(152,124,24),(153,124,23),(154,125,26),(155,126,26),(156,127,22),(157,127,23),(158,127,24),(159,128,26),(160,129,26),(161,130,26),(162,131,23),(163,131,22),(164,131,24);
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
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,4,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',108,'s',NULL),(2,4,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',98,'s',NULL),(3,4,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',114,'s',NULL),(4,5,'<com.nicky.lyyws.xmall.GpsService: void updateWithNewLocation(android.location.Location)>',71,'s',NULL),(5,4,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',120,'s',NULL),(6,11,'<com.nicky.lyyws.xmall.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',6,'s',NULL),(7,4,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',129,'s',NULL),(8,4,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',84,'s',NULL),(9,8,'<com.nicky.lyyws.xmall.XM_CallListener: void onCreate()>',12,'p',NULL),(10,7,'<com.nicky.lyyws.xmall.XM_SmsListener: void onCreate()>',12,'p',NULL),(11,4,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',126,'s',NULL),(12,14,'<com.nicky.lyyws.xmall.AlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',42,'s',NULL),(13,5,'<com.nicky.lyyws.xmall.GpsService: void updateWithNewLocation(android.location.Location)>',71,'s',NULL),(14,5,'<com.nicky.lyyws.xmall.GpsService: void updateWithNewLocation(android.location.Location)>',35,'s',NULL),(15,4,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',110,'s',NULL),(16,4,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',92,'s',NULL),(17,4,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',95,'s',NULL),(18,5,'<com.nicky.lyyws.xmall.GpsService: void getLocation()>',71,'s',NULL),(19,4,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',101,'s',NULL),(20,29,'<com.nicky.lyyws.xmall.XM_Setting$10: void onClick(android.view.View)>',42,'a',NULL),(21,4,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',82,'s',NULL),(22,4,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',92,'s',NULL),(23,7,'<com.nicky.lyyws.xmall.XM_SmsListener: void onCreate()>',12,'p',NULL),(24,11,'<com.nicky.lyyws.xmall.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',6,'s',NULL),(25,4,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',111,'s',NULL),(26,5,'<com.nicky.lyyws.xmall.GpsService: void getLocation()>',108,'s',NULL),(27,4,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',86,'s',NULL),(28,29,'<com.nicky.lyyws.xmall.XM_Setting$10: void onClick(android.view.View)>',41,'a',NULL),(29,5,'<com.nicky.lyyws.xmall.GpsService: void getLocation()>',71,'s',NULL),(30,11,'<com.nicky.lyyws.xmall.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',7,'s',NULL),(31,12,'<com.nicky.lyyws.xmall.MainActivity: void onCreate(android.os.Bundle)>',35,'s',NULL),(32,4,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',116,'s',NULL),(33,4,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',99,'s',NULL),(34,12,'<com.nicky.lyyws.xmall.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(35,14,'<com.nicky.lyyws.xmall.AlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',42,'s',NULL),(36,7,'<com.nicky.lyyws.xmall.XM_SmsListener: void onCreate()>',12,'p',NULL),(37,12,'<com.nicky.lyyws.xmall.MainActivity: void onCreate(android.os.Bundle)>',37,'s',NULL),(38,4,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',85,'s',NULL),(39,4,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',75,'s',NULL),(40,5,'<com.nicky.lyyws.xmall.GpsService: void updateWithNewLocation(android.location.Location)>',35,'s',NULL),(41,5,'<com.nicky.lyyws.xmall.GpsService: void getLocation()>',96,'s',NULL),(42,14,'<com.nicky.lyyws.xmall.AlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',42,'s',NULL),(43,4,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',105,'s',NULL),(44,4,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',91,'s',NULL),(45,5,'<com.nicky.lyyws.xmall.GpsService: void getLocation()>',66,'s',NULL),(46,4,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',74,'s',NULL),(47,5,'<com.nicky.lyyws.xmall.GpsService: void updateWithNewLocation(android.location.Location)>',71,'s',NULL),(48,30,'<com.nicky.lyyws.xmall.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(49,31,'<com.nicky.lyyws.xmall.XM_Setting$11: void onClick(android.view.View)>',7,'a',NULL),(50,4,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',119,'s',NULL),(51,4,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',89,'s',NULL),(52,8,'<com.nicky.lyyws.xmall.XM_CallListener: void onCreate()>',12,'p',NULL),(53,5,'<com.nicky.lyyws.xmall.GpsService: void updateWithNewLocation(android.location.Location)>',35,'s',NULL),(54,4,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',104,'s',NULL),(55,4,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',117,'s',NULL),(56,4,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',88,'s',NULL),(57,4,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',83,'s',NULL),(58,5,'<com.nicky.lyyws.xmall.GpsService: void getLocation()>',108,'s',NULL),(59,12,'<com.nicky.lyyws.xmall.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(60,31,'<com.nicky.lyyws.xmall.XM_Setting$11: void onClick(android.view.View)>',7,'a',NULL),(61,8,'<com.nicky.lyyws.xmall.XM_CallListener: void onCreate()>',12,'p',NULL),(62,32,'<com.nicky.lyyws.xmall.MainActivity$2: void onClick(android.view.View)>',6,'a',NULL),(63,4,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',120,'s',NULL),(64,4,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',98,'s',NULL),(65,30,'<com.nicky.lyyws.xmall.MainActivity$4: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(66,32,'<com.nicky.lyyws.xmall.MainActivity$2: void onClick(android.view.View)>',8,'a',NULL),(67,34,'<com.jx.ad.AndroidThemeService$5: void run()>',116,'r',NULL),(68,35,'<com.km.tool.ApnManager: int CreateGPRSApn()>',30,'p',0),(69,19,'<com.km.launcher.InstallShortcutReceiver: boolean findEmptyCell(android.content.Context,int[],int)>',19,'p',NULL),(70,15,'<com.km.launcher.Launcher: boolean onKeyDown(int,android.view.KeyEvent)>',27,'a',NULL),(71,24,'<com.jx.WelcomeActivity: void onResume()>',67,'a',NULL),(72,21,'<com.km.launcher.LauncherProvider: void sendNotify(android.net.Uri)>',9,'p',0),(73,38,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(74,40,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(75,22,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(76,24,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(77,45,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(78,47,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(79,20,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'p',NULL),(80,49,'<com.km.launcher.LauncherModel: boolean shortcutExists(android.content.Context,java.lang.String,android.content.Intent)>',12,'p',NULL),(81,38,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(82,50,'<com.km.launcher.Search: void sendLaunchIntent(java.lang.String,android.net.Uri,java.lang.String,android.os.Bundle,int,java.lang.String,android.server.search.SearchableInfo)>',20,'a',NULL),(83,51,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(84,20,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',25,'p',NULL),(85,52,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(86,15,'<com.km.launcher.Launcher: void startActivitySafely(android.content.Intent)>',3,'a',0),(87,28,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(88,35,'<com.km.tool.ApnManager: int getApnId(java.lang.String)>',6,'p',NULL),(89,53,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(90,54,'<com.km.theme.ThemeManager: void setup()>',32,'a',NULL),(91,52,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(92,35,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',9,'p',NULL),(93,38,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(94,49,'<com.km.launcher.LauncherModel: com.km.launcher.FolderInfo getFolderById(android.content.Context,long)>',12,'p',NULL),(95,35,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',19,'p',NULL),(96,45,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(97,15,'<com.km.launcher.Launcher: void startWallpaper()>',5,'a',NULL),(98,56,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(99,26,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(100,57,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(101,22,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(102,35,'<com.km.tool.ApnManager: int CreateWapApn()>',30,'p',0),(103,22,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(104,20,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'p',NULL),(105,34,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(106,49,'<com.km.launcher.LauncherModel: void addItemToDatabase(android.content.Context,com.km.launcher.ItemInfo,long,int,int,int,boolean)>',17,'p',NULL),(107,58,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(108,49,'<com.km.launcher.LauncherModel: void updateItemInDatabase(android.content.Context,com.km.launcher.ItemInfo)>',8,'p',NULL),(109,52,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(110,35,'<com.km.tool.ApnManager: int CreateWapApn()>',27,'p',NULL),(111,22,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(112,49,'<com.km.launcher.LauncherModel: com.km.launcher.Widget getPhotoFrameInfo(android.content.Context,int,int,int)>',15,'p',NULL),(113,35,'<com.km.tool.ApnManager: int CreateGPRSApn()>',27,'p',NULL),(114,61,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(115,15,'<com.km.launcher.Launcher: void registerContentObservers()>',4,'p',NULL),(116,35,'<com.km.tool.ApnManager: void delete(int)>',8,'p',NULL),(117,23,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(118,15,'<com.km.launcher.Launcher: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(119,51,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(120,45,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(121,45,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(122,63,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(123,52,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(124,64,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(125,26,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(126,53,'<com.jx.ad.AndroidThemeService$4: void run()>',125,'r',NULL),(127,22,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(128,65,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(129,65,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(130,53,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(131,22,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,4,3),(2,6,7),(3,11,3),(4,12,3),(5,16,3),(6,21,7),(7,23,3),(8,26,3),(9,28,13),(10,36,3),(11,37,3),(12,41,3),(13,43,3),(14,44,1),(15,48,3),(16,53,3),(17,56,1),(18,59,13),(19,60,13),(20,61,20),(21,62,24),(22,64,25),(23,68,20),(24,69,28),(25,71,29),(26,72,21),(27,74,20),(28,75,32),(29,76,32),(30,77,33),(31,78,12),(32,81,20),(33,82,20),(34,83,36),(35,84,32),(36,85,36),(37,86,36),(38,87,17),(39,88,36),(40,89,36),(41,90,36),(42,91,20),(43,92,36),(44,93,36),(45,95,37),(46,96,20),(47,97,32),(48,98,33),(49,99,32),(50,100,1),(51,102,20),(52,103,20),(53,104,20),(54,105,19),(55,106,32),(56,107,21),(57,108,20),(58,109,10),(59,110,22),(60,111,9),(61,112,23),(62,113,10),(63,114,23),(64,115,11),(65,116,11),(66,117,22),(67,118,9),(68,119,20),(69,120,16),(70,121,41),(71,122,23),(72,123,9),(73,124,11),(74,125,10),(75,126,22);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,44,3),(2,56,3),(3,59,5),(4,60,5),(5,71,4),(6,100,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/nicky/lyyws/xmall/GpsService'),(2,2,'com/nicky/lyyws/xmall/XM_SmsListener'),(3,3,'com/nicky/lyyws/xmall/XM_SmsListener'),(4,5,'com/nicky/lyyws/xmall/XM_CallListener'),(5,6,'com/nicky/lyyws/xmall/MainService'),(6,7,'com/nicky/lyyws/xmall/SocketService'),(7,8,'com/nicky/lyyws/xmall/SocketService'),(8,9,'com/nicky/lyyws/xmall/XM_CallRecordService'),(9,10,'com/nicky/lyyws/xmall/MainService'),(10,13,'com/nicky/lyyws/xmall/XM_CallListener'),(11,14,'com/nicky/lyyws/xmall/XM_CallRecordService'),(12,15,'com/nicky/lyyws/xmall/XM_CallListener'),(13,17,'com/nicky/lyyws/xmall/XM_CallRecordService'),(14,18,'com/nicky/lyyws/xmall/MainActivity'),(15,19,'com/nicky/lyyws/xmall/GpsService'),(16,20,'com/nicky/lyyws/xmall/GpsService'),(17,21,'com/nicky/lyyws/xmall/MainService'),(18,22,'com/nicky/lyyws/xmall/XM_CallListener'),(19,24,'com/nicky/lyyws/xmall/MainActivity'),(20,25,'com/nicky/lyyws/xmall/XM_CallListener'),(21,27,'com/nicky/lyyws/xmall/MainService'),(22,28,'com/nicky/lyyws/xmall/MainService'),(23,29,'com/nicky/lyyws/xmall/XM_CallRecordService'),(24,30,'com/nicky/lyyws/xmall/GpsService'),(25,31,'com/nicky/lyyws/xmall/XM_Setting'),(26,32,'com/nicky/lyyws/xmall/MainService'),(27,33,'com/nicky/lyyws/xmall/MainService'),(28,34,'com/nicky/lyyws/xmall/XM_CallListener'),(29,35,'com/nicky/lyyws/xmall/SocketService'),(30,38,'com/nicky/lyyws/xmall/MainService'),(31,39,'com/nicky/lyyws/xmall/XM_SmsListener'),(32,40,'com/nicky/lyyws/xmall/XM_CallRecordService'),(33,42,'com/nicky/lyyws/xmall/SocketService'),(34,45,'com/nicky/lyyws/xmall/MainActivity'),(35,46,'com/nicky/lyyws/xmall/SocketService'),(36,47,'com/nicky/lyyws/xmall/XM_SmsListener'),(37,49,'com/nicky/lyyws/xmall/XM_SmsListener'),(38,50,'com/nicky/lyyws/xmall/XM_CallRecordService'),(39,51,'com/nicky/lyyws/xmall/XM_SmsListener'),(40,52,'com/nicky/lyyws/xmall/GpsService'),(41,54,'com/nicky/lyyws/xmall/XM_Setting'),(42,55,'com/nicky/lyyws/xmall/MainActivity'),(43,57,'com/nicky/lyyws/xmall/SocketService'),(44,58,'com/nicky/lyyws/xmall/GpsService'),(45,63,'.Launcher'),(46,65,'(.*).Launcher'),(47,66,'(.*).Launcher'),(48,67,'.Launcher'),(49,70,'com/jx/WelcomeActivity'),(50,73,'com.android.packageinstaller.PackageInstallerActivity'),(51,78,'com/jx/ad/BootSmsReceiverService'),(52,79,'com.android.packageinstaller.PackageInstallerActivity'),(53,80,'com/km/charge/MainActivity'),(54,94,'com/jx/WelcomeActivity'),(55,100,'com.nd.android.launcher.Launcher'),(56,101,'com/km/theme/ThemeListActivity'),(57,109,'com/jx/ad/AndroidThemeService'),(58,112,'com/jx/ad/AndroidThemeService'),(59,115,'com/jx/ad/AndroidThemeService'),(60,117,'com/jx/ad/AndroidThemeService'),(61,118,'com/jx/ad/AndroidThemeService');
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
INSERT INTO `IData` VALUES (1,61,7),(2,64,9),(3,68,10),(4,72,11),(5,73,12),(6,74,15),(7,75,16),(8,76,17),(9,79,21),(10,81,25),(11,82,27),(12,84,28),(13,87,29),(14,91,30),(15,96,33),(16,97,35),(17,99,41),(18,102,43),(19,103,44),(20,104,45),(21,105,46),(22,106,48),(23,107,49),(24,108,50),(25,119,51),(26,120,52);
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,4,'UpInfo'),(2,11,'UpInfo'),(3,12,'UpInfo'),(4,16,'UpInfo'),(5,23,'UpInfo'),(6,26,'UpInfo'),(7,36,'UpInfo'),(8,37,'UpInfo'),(9,41,'UpInfo'),(10,43,'UpInfo'),(11,48,'UpInfo'),(12,53,'UpInfo'),(13,61,'CostTips'),(14,62,'com.android.contacts.extra.FILTER_TEXT'),(15,63,'startother'),(16,65,'startother'),(17,66,'startother'),(18,67,'startother'),(19,68,'CostTips'),(20,72,'CostTips'),(21,74,'CostTips'),(22,74,'SetNetwork'),(23,81,'CostTips'),(24,82,'CostTips'),(25,83,'android.intent.extra.INTENT'),(26,85,'android.intent.extra.INTENT'),(27,86,'android.intent.extra.TITLE'),(28,86,'android.intent.extra.INTENT'),(29,87,'respid'),(30,88,'android.intent.extra.INTENT'),(31,89,'android.intent.extra.TITLE'),(32,89,'android.intent.extra.INTENT'),(33,90,'android.intent.extra.INTENT'),(34,91,'CostTips'),(35,92,'android.intent.extra.TITLE'),(36,92,'android.intent.extra.INTENT'),(37,93,'android.intent.extra.TITLE'),(38,93,'android.intent.extra.INTENT'),(39,96,'CostTips'),(40,100,'from'),(41,102,'CostTips'),(42,103,'CostTips'),(43,104,'CostTips'),(44,107,'CostTips'),(45,108,'CostTips'),(46,109,'resownerid'),(47,109,'respid'),(48,110,'resownerid'),(49,110,'respid'),(50,111,'resownerid'),(51,111,'respid'),(52,112,'resownerid'),(53,112,'respid'),(54,113,'resownerid'),(55,113,'respid'),(56,114,'resownerid'),(57,114,'respid'),(58,115,'resownerid'),(59,115,'respid'),(60,116,'resownerid'),(61,116,'respid'),(62,117,'resownerid'),(63,117,'respid'),(64,118,'resownerid'),(65,118,'respid'),(66,119,'CostTips'),(67,121,'resownerid'),(68,121,'respid'),(69,122,'resownerid'),(70,122,'respid'),(71,123,'resownerid'),(72,123,'respid'),(73,124,'resownerid'),(74,124,'respid'),(75,125,'resownerid'),(76,125,'respid'),(77,126,'resownerid'),(78,126,'respid');
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,4,2),(4,5,3),(5,6,1),(6,7,4),(7,8,1),(8,10,2),(9,12,3),(10,13,2),(11,14,4),(12,15,3),(13,16,4),(14,17,1),(15,18,5),(16,19,6),(17,20,8),(18,21,1),(19,22,10),(20,22,9),(21,23,11),(22,24,12),(23,25,4),(24,26,15),(25,26,16),(26,26,14),(27,26,19),(28,26,20),(29,26,17),(30,26,18),(31,26,21),(32,27,9),(33,27,23),(34,27,22),(35,27,11),(36,27,10),(37,28,26),(38,28,15),(39,28,27),(40,29,27),(41,29,26),(42,29,15),(43,30,26),(44,30,27),(45,30,15),(46,31,15),(47,31,26),(48,31,27),(49,32,15),(50,32,27),(51,32,26),(52,33,26),(53,33,27),(54,33,15),(55,34,26),(56,34,27),(57,34,15),(58,35,27),(59,35,26),(60,35,15),(61,36,26),(62,36,27),(63,36,15),(64,37,31),(65,37,30),(66,38,34),(67,39,33),(68,40,35),(69,41,38),(70,42,39),(71,43,40),(72,44,39);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,2),(4,6,1),(5,7,3),(6,9,2),(7,8,1),(8,11,2),(9,14,3),(10,16,3),(11,17,4),(12,17,3),(13,17,1),(14,18,4),(15,21,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,26,'package',NULL,NULL,NULL,NULL,NULL),(2,28,'package',NULL,NULL,NULL,NULL,NULL),(3,29,'package',NULL,NULL,NULL,NULL,NULL),(4,30,'package',NULL,NULL,NULL,NULL,NULL),(5,31,'package',NULL,NULL,NULL,NULL,NULL),(6,32,'package',NULL,NULL,NULL,NULL,NULL),(7,33,'package',NULL,NULL,NULL,NULL,NULL),(8,34,'package',NULL,NULL,NULL,NULL,NULL),(9,35,'package',NULL,NULL,NULL,NULL,NULL),(10,36,'package',NULL,NULL,NULL,NULL,NULL),(11,43,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message');
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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.nicky.lyyws.xmall'),(2,2,'com.nicky.lyyws.xmall'),(3,3,'com.nicky.lyyws.xmall'),(4,5,'com.nicky.lyyws.xmall'),(5,6,'com.nicky.lyyws.xmall'),(6,7,'com.nicky.lyyws.xmall'),(7,8,'com.nicky.lyyws.xmall'),(8,9,'com.nicky.lyyws.xmall'),(9,10,'com.nicky.lyyws.xmall'),(10,13,'com.nicky.lyyws.xmall'),(11,14,'com.nicky.lyyws.xmall'),(12,15,'com.nicky.lyyws.xmall'),(13,17,'com.nicky.lyyws.xmall'),(14,18,'com.nicky.lyyws.xmall'),(15,19,'com.nicky.lyyws.xmall'),(16,20,'com.nicky.lyyws.xmall'),(17,22,'com.nicky.lyyws.xmall'),(18,21,'com.nicky.lyyws.xmall'),(19,25,'com.nicky.lyyws.xmall'),(20,24,'com.nicky.lyyws.xmall'),(21,27,'com.nicky.lyyws.xmall'),(22,28,'com.nicky.lyyws.xmall'),(23,29,'com.nicky.lyyws.xmall'),(24,30,'com.nicky.lyyws.xmall'),(25,31,'com.nicky.lyyws.xmall'),(26,32,'com.nicky.lyyws.xmall'),(27,33,'com.nicky.lyyws.xmall'),(28,34,'com.nicky.lyyws.xmall'),(29,35,'com.nicky.lyyws.xmall'),(30,38,'com.nicky.lyyws.xmall'),(31,39,'com.nicky.lyyws.xmall'),(32,40,'com.nicky.lyyws.xmall'),(33,42,'com.nicky.lyyws.xmall'),(34,45,'com.nicky.lyyws.xmall'),(35,46,'com.nicky.lyyws.xmall'),(36,47,'com.nicky.lyyws.xmall'),(37,49,'com.nicky.lyyws.xmall'),(38,50,'com.nicky.lyyws.xmall'),(39,51,'com.nicky.lyyws.xmall'),(40,52,'com.nicky.lyyws.xmall'),(41,54,'com.nicky.lyyws.xmall'),(42,55,'com.nicky.lyyws.xmall'),(43,57,'com.nicky.lyyws.xmall'),(44,58,'com.nicky.lyyws.xmall'),(45,63,''),(46,65,''),(47,66,'(.*)'),(48,67,'(.*)'),(49,70,'com.jx.theme.n1827802413'),(50,73,'com.android.packageinstaller'),(51,78,'com.jx.theme.n1827802413'),(52,79,'com.android.packageinstaller'),(53,80,'com.km.launcher'),(54,94,'com.jx.theme.n1827802413'),(55,100,'NULL-CONSTANT'),(56,101,'com.km.launcher'),(57,109,'com.jx.theme.n1827802413'),(58,110,'com.jx.util'),(59,111,'com.jx.util'),(60,112,'com.jx.theme.n1827802413'),(61,113,'com.jx.util'),(62,114,'com.jx.util'),(63,115,'com.jx.theme.n1827802413'),(64,116,'com.jx.util'),(65,117,'com.jx.theme.n1827802413'),(66,118,'com.jx.theme.n1827802413'),(67,121,'com.jx.util');
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,4,0),(4,5,0),(5,6,0),(6,12,0),(7,11,0),(8,12,0),(9,4,0),(10,5,0),(11,4,0),(12,6,0),(13,5,0),(14,11,0),(15,6,0),(16,11,0),(17,15,0),(18,16,0),(19,19,0),(20,20,0),(21,22,0),(22,26,0),(23,26,0),(24,27,0),(25,28,0),(26,29,0),(27,30,0),(28,31,0),(29,32,0),(30,33,0),(31,34,0),(32,35,0),(33,36,0),(34,37,0),(35,38,0),(36,39,0),(37,40,0),(38,36,0),(39,41,0),(40,37,0),(41,35,0),(42,42,0),(43,43,0),(44,44,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,1,0),(5,5,0,0),(6,6,0,0),(7,7,0,0),(8,8,0,0),(9,11,0,0),(10,12,0,0),(11,13,1,0),(12,14,1,0),(13,15,0,0),(14,16,0,0),(15,17,0,0),(16,18,1,0),(17,19,0,0),(18,20,0,0),(19,21,0,0),(20,22,0,0),(21,24,0,0),(22,25,0,0),(23,26,1,0),(24,28,0,0),(25,27,0,0),(26,29,1,0),(27,31,0,0),(28,30,0,0),(29,32,0,0),(30,33,0,0),(31,34,0,0),(32,35,0,0),(33,37,0,0),(34,38,0,0),(35,39,0,0),(36,40,1,0),(37,41,1,0),(38,42,0,0),(39,43,0,0),(40,44,0,0),(41,45,1,0),(42,46,0,0),(43,47,1,0),(44,48,1,0),(45,49,0,0),(46,50,0,0),(47,51,0,0),(48,53,1,0),(49,54,0,0),(50,55,0,0),(51,56,0,0),(52,57,0,0),(53,58,1,0),(54,59,0,0),(55,60,0,0),(56,62,1,0),(57,63,0,0),(58,64,0,0),(59,65,1,0),(60,66,1,0),(61,67,1,0),(62,70,1,0),(63,71,0,0),(64,70,1,0),(65,71,0,0),(66,71,0,0),(67,71,0,0),(68,73,1,0),(69,74,1,0),(70,75,0,0),(71,76,1,0),(72,77,1,0),(73,78,0,0),(74,81,1,0),(75,82,1,0),(76,82,1,0),(77,83,1,0),(78,87,0,0),(79,89,0,0),(80,90,0,0),(81,93,1,0),(82,96,1,0),(83,97,1,0),(84,98,1,0),(85,97,1,0),(86,97,1,0),(87,99,1,0),(88,97,1,0),(89,97,1,0),(90,97,1,0),(91,100,1,0),(92,97,1,0),(93,97,1,0),(94,101,0,0),(95,103,1,0),(96,105,1,0),(97,107,1,0),(98,111,1,0),(99,114,1,0),(100,117,0,0),(101,118,0,0),(102,119,1,0),(103,120,1,0),(104,121,1,0),(105,122,1,0),(106,124,1,0),(107,125,1,0),(108,126,1,0),(109,127,0,0),(110,127,1,0),(111,127,1,0),(112,127,0,0),(113,127,1,0),(114,127,1,0),(115,127,0,0),(116,127,1,0),(117,127,0,0),(118,127,0,0),(119,128,1,0),(120,129,1,0),(121,130,1,0),(122,131,1,0),(123,131,1,0),(124,131,1,0),(125,131,1,0),(126,131,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=799 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,4,1,2,NULL),(2,11,1,2,NULL),(3,12,1,2,NULL),(4,16,1,2,NULL),(5,23,1,2,NULL),(6,26,1,2,NULL),(7,36,1,2,NULL),(8,37,1,2,NULL),(9,41,1,2,NULL),(10,43,1,2,NULL),(11,48,1,2,NULL),(12,53,1,2,NULL),(13,62,1,2,NULL),(14,83,1,2,NULL),(15,85,1,2,NULL),(16,86,1,2,NULL),(17,88,1,2,NULL),(18,89,1,2,NULL),(19,90,1,2,NULL),(20,92,1,2,NULL),(21,93,1,2,NULL),(22,95,1,2,NULL),(23,98,1,2,NULL),(24,110,1,2,NULL),(25,111,1,2,NULL),(26,113,1,2,NULL),(27,114,1,2,NULL),(28,116,1,2,NULL),(29,122,1,2,NULL),(30,123,1,2,NULL),(31,124,1,2,NULL),(32,125,1,2,NULL),(33,126,1,2,NULL),(34,71,1,2,NULL),(35,70,24,2,NULL),(36,94,24,2,NULL),(37,109,26,2,NULL),(38,112,26,2,NULL),(39,115,26,2,NULL),(40,117,26,2,NULL),(41,118,26,2,NULL),(42,95,2,2,NULL),(43,98,2,2,NULL),(44,110,2,2,NULL),(45,111,2,2,NULL),(46,113,2,2,NULL),(47,114,2,2,NULL),(48,116,2,2,NULL),(49,122,2,2,NULL),(50,123,2,2,NULL),(51,124,2,2,NULL),(52,125,2,2,NULL),(53,126,2,2,NULL),(54,95,4,2,NULL),(55,98,4,2,NULL),(56,110,4,2,NULL),(57,111,4,2,NULL),(58,113,4,2,NULL),(59,114,4,2,NULL),(60,116,4,2,NULL),(61,122,4,2,NULL),(62,123,4,2,NULL),(63,124,4,2,NULL),(64,125,4,2,NULL),(65,126,4,2,NULL),(66,95,5,2,NULL),(67,98,5,2,NULL),(68,110,5,2,NULL),(69,111,5,2,NULL),(70,113,5,2,NULL),(71,114,5,2,NULL),(72,116,5,2,NULL),(73,122,5,2,NULL),(74,123,5,2,NULL),(75,124,5,2,NULL),(76,125,5,2,NULL),(77,126,5,2,NULL),(78,4,22,2,NULL),(79,11,22,2,NULL),(80,12,22,2,NULL),(81,16,22,2,NULL),(82,23,22,2,NULL),(83,26,22,2,NULL),(84,36,22,2,NULL),(85,37,22,2,NULL),(86,41,22,2,NULL),(87,43,22,2,NULL),(88,48,22,2,NULL),(89,53,22,2,NULL),(90,95,6,2,NULL),(91,98,6,2,NULL),(92,110,6,2,NULL),(93,111,6,2,NULL),(94,113,6,2,NULL),(95,114,6,2,NULL),(96,116,6,2,NULL),(97,122,6,2,NULL),(98,123,6,2,NULL),(99,124,6,2,NULL),(100,125,6,2,NULL),(101,126,6,2,NULL),(102,95,11,2,NULL),(103,98,11,2,NULL),(104,110,11,2,NULL),(105,111,11,2,NULL),(106,113,11,2,NULL),(107,114,11,2,NULL),(108,116,11,2,NULL),(109,122,11,2,NULL),(110,123,11,2,NULL),(111,124,11,2,NULL),(112,125,11,2,NULL),(113,126,11,2,NULL),(114,95,12,2,NULL),(115,98,12,2,NULL),(116,110,12,2,NULL),(117,111,12,2,NULL),(118,113,12,2,NULL),(119,114,12,2,NULL),(120,116,12,2,NULL),(121,122,12,2,NULL),(122,123,12,2,NULL),(123,124,12,2,NULL),(124,125,12,2,NULL),(125,126,12,2,NULL),(126,95,15,2,NULL),(127,98,15,2,NULL),(128,110,15,2,NULL),(129,111,15,2,NULL),(130,113,15,2,NULL),(131,114,15,2,NULL),(132,116,15,2,NULL),(133,122,15,2,NULL),(134,123,15,2,NULL),(135,124,15,2,NULL),(136,125,15,2,NULL),(137,126,15,2,NULL),(138,62,22,2,NULL),(139,83,22,2,NULL),(140,85,22,2,NULL),(141,86,22,2,NULL),(142,88,22,2,NULL),(143,89,22,2,NULL),(144,90,22,2,NULL),(145,92,22,2,NULL),(146,93,22,2,NULL),(147,95,16,2,NULL),(148,98,16,2,NULL),(149,110,16,2,NULL),(150,111,16,2,NULL),(151,113,16,2,NULL),(152,114,16,2,NULL),(153,116,16,2,NULL),(154,122,16,2,NULL),(155,123,16,2,NULL),(156,124,16,2,NULL),(157,125,16,2,NULL),(158,126,16,2,NULL),(159,95,19,2,NULL),(160,98,19,2,NULL),(161,110,19,2,NULL),(162,111,19,2,NULL),(163,113,19,2,NULL),(164,114,19,2,NULL),(165,116,19,2,NULL),(166,122,19,2,NULL),(167,123,19,2,NULL),(168,124,19,2,NULL),(169,125,19,2,NULL),(170,126,19,2,NULL),(171,95,20,2,NULL),(172,98,20,2,NULL),(173,110,20,2,NULL),(174,111,20,2,NULL),(175,113,20,2,NULL),(176,114,20,2,NULL),(177,116,20,2,NULL),(178,122,20,2,NULL),(179,123,20,2,NULL),(180,124,20,2,NULL),(181,125,20,2,NULL),(182,126,20,2,NULL),(183,95,35,2,NULL),(184,98,35,2,NULL),(185,110,35,2,NULL),(186,111,35,2,NULL),(187,113,35,2,NULL),(188,114,35,2,NULL),(189,116,35,2,NULL),(190,122,35,2,NULL),(191,123,35,2,NULL),(192,124,35,2,NULL),(193,125,35,2,NULL),(194,126,35,2,NULL),(195,95,36,2,NULL),(196,98,36,2,NULL),(197,110,36,2,NULL),(198,111,36,2,NULL),(199,113,36,2,NULL),(200,114,36,2,NULL),(201,116,36,2,NULL),(202,122,36,2,NULL),(203,123,36,2,NULL),(204,124,36,2,NULL),(205,125,36,2,NULL),(206,126,36,2,NULL),(207,95,37,2,NULL),(208,98,37,2,NULL),(209,110,37,2,NULL),(210,111,37,2,NULL),(211,113,37,2,NULL),(212,114,37,2,NULL),(213,116,37,2,NULL),(214,122,37,2,NULL),(215,123,37,2,NULL),(216,124,37,2,NULL),(217,125,37,2,NULL),(218,126,37,2,NULL),(219,71,22,2,NULL),(220,95,26,2,NULL),(221,98,26,2,NULL),(222,110,26,2,NULL),(223,111,26,2,NULL),(224,113,26,2,NULL),(225,114,26,2,NULL),(226,116,26,2,NULL),(227,122,26,2,NULL),(228,123,26,2,NULL),(229,124,26,2,NULL),(230,125,26,2,NULL),(231,126,26,2,NULL),(232,95,27,2,NULL),(233,98,27,2,NULL),(234,110,27,2,NULL),(235,111,27,2,NULL),(236,113,27,2,NULL),(237,114,27,2,NULL),(238,116,27,2,NULL),(239,122,27,2,NULL),(240,123,27,2,NULL),(241,124,27,2,NULL),(242,125,27,2,NULL),(243,126,27,2,NULL),(244,95,28,2,NULL),(245,98,28,2,NULL),(246,110,28,2,NULL),(247,111,28,2,NULL),(248,113,28,2,NULL),(249,114,28,2,NULL),(250,116,28,2,NULL),(251,122,28,2,NULL),(252,123,28,2,NULL),(253,124,28,2,NULL),(254,125,28,2,NULL),(255,126,28,2,NULL),(256,95,30,2,NULL),(257,98,30,2,NULL),(258,110,30,2,NULL),(259,111,30,2,NULL),(260,113,30,2,NULL),(261,114,30,2,NULL),(262,116,30,2,NULL),(263,122,30,2,NULL),(264,123,30,2,NULL),(265,124,30,2,NULL),(266,125,30,2,NULL),(267,126,30,2,NULL),(268,95,40,2,NULL),(269,98,40,2,NULL),(270,110,40,2,NULL),(271,111,40,2,NULL),(272,113,40,2,NULL),(273,114,40,2,NULL),(274,116,40,2,NULL),(275,122,40,2,NULL),(276,123,40,2,NULL),(277,124,40,2,NULL),(278,125,40,2,NULL),(279,126,40,2,NULL),(280,95,41,2,NULL),(281,98,41,2,NULL),(282,110,41,2,NULL),(283,111,41,2,NULL),(284,113,41,2,NULL),(285,114,41,2,NULL),(286,116,41,2,NULL),(287,122,41,2,NULL),(288,123,41,2,NULL),(289,124,41,2,NULL),(290,125,41,2,NULL),(291,126,41,2,NULL),(292,95,42,2,NULL),(293,98,42,2,NULL),(294,110,42,2,NULL),(295,111,42,2,NULL),(296,113,42,2,NULL),(297,114,42,2,NULL),(298,116,42,2,NULL),(299,122,42,2,NULL),(300,123,42,2,NULL),(301,124,42,2,NULL),(302,125,42,2,NULL),(303,126,42,2,NULL),(304,95,44,2,NULL),(305,98,44,2,NULL),(306,110,44,2,NULL),(307,111,44,2,NULL),(308,113,44,2,NULL),(309,114,44,2,NULL),(310,116,44,2,NULL),(311,122,44,2,NULL),(312,123,44,2,NULL),(313,124,44,2,NULL),(314,125,44,2,NULL),(315,126,44,2,NULL),(316,71,2,2,NULL),(317,71,4,2,NULL),(318,71,5,2,NULL),(319,71,6,2,NULL),(320,71,11,2,NULL),(321,71,12,2,NULL),(322,71,15,2,NULL),(323,71,16,2,NULL),(324,71,19,2,NULL),(325,71,20,2,NULL),(326,71,35,2,NULL),(327,71,36,2,NULL),(328,71,37,2,NULL),(329,71,26,2,NULL),(330,71,27,2,NULL),(331,71,28,2,NULL),(332,71,30,2,NULL),(333,71,40,2,NULL),(334,71,41,2,NULL),(335,71,42,2,NULL),(336,71,44,2,NULL),(337,4,26,2,NULL),(338,11,26,2,NULL),(339,12,26,2,NULL),(340,16,26,2,NULL),(341,23,26,2,NULL),(342,26,26,2,NULL),(343,36,26,2,NULL),(344,37,26,2,NULL),(345,41,26,2,NULL),(346,43,26,2,NULL),(347,48,26,2,NULL),(348,53,26,2,NULL),(349,62,26,2,NULL),(350,83,26,2,NULL),(351,85,26,2,NULL),(352,86,26,2,NULL),(353,88,26,2,NULL),(354,89,26,2,NULL),(355,90,26,2,NULL),(356,92,26,2,NULL),(357,93,26,2,NULL),(358,4,27,2,NULL),(359,11,27,2,NULL),(360,12,27,2,NULL),(361,16,27,2,NULL),(362,23,27,2,NULL),(363,26,27,2,NULL),(364,36,27,2,NULL),(365,37,27,2,NULL),(366,41,27,2,NULL),(367,43,27,2,NULL),(368,48,27,2,NULL),(369,53,27,2,NULL),(370,62,27,2,NULL),(371,83,27,2,NULL),(372,85,27,2,NULL),(373,86,27,2,NULL),(374,88,27,2,NULL),(375,89,27,2,NULL),(376,90,27,2,NULL),(377,92,27,2,NULL),(378,93,27,2,NULL),(379,78,27,2,NULL),(380,4,28,2,NULL),(381,11,28,2,NULL),(382,12,28,2,NULL),(383,16,28,2,NULL),(384,23,28,2,NULL),(385,26,28,2,NULL),(386,36,28,2,NULL),(387,37,28,2,NULL),(388,41,28,2,NULL),(389,43,28,2,NULL),(390,48,28,2,NULL),(391,53,28,2,NULL),(392,62,28,2,NULL),(393,83,28,2,NULL),(394,85,28,2,NULL),(395,86,28,2,NULL),(396,88,28,2,NULL),(397,89,28,2,NULL),(398,90,28,2,NULL),(399,92,28,2,NULL),(400,93,28,2,NULL),(401,4,30,2,NULL),(402,11,30,2,NULL),(403,12,30,2,NULL),(404,16,30,2,NULL),(405,23,30,2,NULL),(406,26,30,2,NULL),(407,36,30,2,NULL),(408,37,30,2,NULL),(409,41,30,2,NULL),(410,43,30,2,NULL),(411,48,30,2,NULL),(412,53,30,2,NULL),(413,62,30,2,NULL),(414,83,30,2,NULL),(415,85,30,2,NULL),(416,86,30,2,NULL),(417,88,30,2,NULL),(418,89,30,2,NULL),(419,90,30,2,NULL),(420,92,30,2,NULL),(421,93,30,2,NULL),(422,4,40,2,NULL),(423,11,40,2,NULL),(424,12,40,2,NULL),(425,16,40,2,NULL),(426,23,40,2,NULL),(427,26,40,2,NULL),(428,36,40,2,NULL),(429,37,40,2,NULL),(430,41,40,2,NULL),(431,43,40,2,NULL),(432,48,40,2,NULL),(433,53,40,2,NULL),(434,62,40,2,NULL),(435,83,40,2,NULL),(436,85,40,2,NULL),(437,86,40,2,NULL),(438,88,40,2,NULL),(439,89,40,2,NULL),(440,90,40,2,NULL),(441,92,40,2,NULL),(442,93,40,2,NULL),(443,4,41,2,NULL),(444,11,41,2,NULL),(445,12,41,2,NULL),(446,16,41,2,NULL),(447,23,41,2,NULL),(448,26,41,2,NULL),(449,36,41,2,NULL),(450,37,41,2,NULL),(451,41,41,2,NULL),(452,43,41,2,NULL),(453,48,41,2,NULL),(454,53,41,2,NULL),(455,62,41,2,NULL),(456,83,41,2,NULL),(457,85,41,2,NULL),(458,86,41,2,NULL),(459,88,41,2,NULL),(460,89,41,2,NULL),(461,90,41,2,NULL),(462,92,41,2,NULL),(463,93,41,2,NULL),(464,4,42,2,NULL),(465,11,42,2,NULL),(466,12,42,2,NULL),(467,16,42,2,NULL),(468,23,42,2,NULL),(469,26,42,2,NULL),(470,36,42,2,NULL),(471,37,42,2,NULL),(472,41,42,2,NULL),(473,43,42,2,NULL),(474,48,42,2,NULL),(475,53,42,2,NULL),(476,62,42,2,NULL),(477,83,42,2,NULL),(478,85,42,2,NULL),(479,86,42,2,NULL),(480,88,42,2,NULL),(481,89,42,2,NULL),(482,90,42,2,NULL),(483,92,42,2,NULL),(484,93,42,2,NULL),(485,4,44,2,NULL),(486,11,44,2,NULL),(487,12,44,2,NULL),(488,16,44,2,NULL),(489,23,44,2,NULL),(490,26,44,2,NULL),(491,36,44,2,NULL),(492,37,44,2,NULL),(493,41,44,2,NULL),(494,43,44,2,NULL),(495,48,44,2,NULL),(496,53,44,2,NULL),(497,62,44,2,NULL),(498,83,44,2,NULL),(499,85,44,2,NULL),(500,86,44,2,NULL),(501,88,44,2,NULL),(502,89,44,2,NULL),(503,90,44,2,NULL),(504,92,44,2,NULL),(505,93,44,2,NULL),(506,101,17,2,NULL),(507,62,2,2,NULL),(508,83,2,2,NULL),(509,85,2,2,NULL),(510,86,2,2,NULL),(511,88,2,2,NULL),(512,89,2,2,NULL),(513,90,2,2,NULL),(514,92,2,2,NULL),(515,93,2,2,NULL),(516,62,4,2,NULL),(517,83,4,2,NULL),(518,85,4,2,NULL),(519,86,4,2,NULL),(520,88,4,2,NULL),(521,89,4,2,NULL),(522,90,4,2,NULL),(523,92,4,2,NULL),(524,93,4,2,NULL),(525,62,5,2,NULL),(526,83,5,2,NULL),(527,85,5,2,NULL),(528,86,5,2,NULL),(529,88,5,2,NULL),(530,89,5,2,NULL),(531,90,5,2,NULL),(532,92,5,2,NULL),(533,93,5,2,NULL),(534,4,15,2,NULL),(535,11,15,2,NULL),(536,12,15,2,NULL),(537,16,15,2,NULL),(538,23,15,2,NULL),(539,26,15,2,NULL),(540,36,15,2,NULL),(541,37,15,2,NULL),(542,41,15,2,NULL),(543,43,15,2,NULL),(544,48,15,2,NULL),(545,53,15,2,NULL),(546,62,6,2,NULL),(547,83,6,2,NULL),(548,85,6,2,NULL),(549,86,6,2,NULL),(550,88,6,2,NULL),(551,89,6,2,NULL),(552,90,6,2,NULL),(553,92,6,2,NULL),(554,93,6,2,NULL),(555,62,11,2,NULL),(556,83,11,2,NULL),(557,85,11,2,NULL),(558,86,11,2,NULL),(559,88,11,2,NULL),(560,89,11,2,NULL),(561,90,11,2,NULL),(562,92,11,2,NULL),(563,93,11,2,NULL),(564,62,12,2,NULL),(565,83,12,2,NULL),(566,85,12,2,NULL),(567,86,12,2,NULL),(568,88,12,2,NULL),(569,89,12,2,NULL),(570,90,12,2,NULL),(571,92,12,2,NULL),(572,93,12,2,NULL),(573,62,16,2,NULL),(574,83,16,2,NULL),(575,85,16,2,NULL),(576,86,16,2,NULL),(577,88,16,2,NULL),(578,89,16,2,NULL),(579,90,16,2,NULL),(580,92,16,2,NULL),(581,93,16,2,NULL),(582,62,19,2,NULL),(583,83,19,2,NULL),(584,85,19,2,NULL),(585,86,19,2,NULL),(586,88,19,2,NULL),(587,89,19,2,NULL),(588,90,19,2,NULL),(589,92,19,2,NULL),(590,93,19,2,NULL),(591,62,20,2,NULL),(592,83,20,2,NULL),(593,85,20,2,NULL),(594,86,20,2,NULL),(595,88,20,2,NULL),(596,89,20,2,NULL),(597,90,20,2,NULL),(598,92,20,2,NULL),(599,93,20,2,NULL),(600,62,35,2,NULL),(601,83,35,2,NULL),(602,85,35,2,NULL),(603,86,35,2,NULL),(604,88,35,2,NULL),(605,89,35,2,NULL),(606,90,35,2,NULL),(607,92,35,2,NULL),(608,93,35,2,NULL),(609,62,36,2,NULL),(610,83,36,2,NULL),(611,85,36,2,NULL),(612,86,36,2,NULL),(613,88,36,2,NULL),(614,89,36,2,NULL),(615,90,36,2,NULL),(616,92,36,2,NULL),(617,93,36,2,NULL),(618,62,37,2,NULL),(619,83,37,2,NULL),(620,85,37,2,NULL),(621,86,37,2,NULL),(622,88,37,2,NULL),(623,89,37,2,NULL),(624,90,37,2,NULL),(625,92,37,2,NULL),(626,93,37,2,NULL),(627,4,16,2,NULL),(628,11,16,2,NULL),(629,12,16,2,NULL),(630,16,16,2,NULL),(631,23,16,2,NULL),(632,26,16,2,NULL),(633,36,16,2,NULL),(634,37,16,2,NULL),(635,41,16,2,NULL),(636,43,16,2,NULL),(637,48,16,2,NULL),(638,53,16,2,NULL),(639,4,19,2,NULL),(640,11,19,2,NULL),(641,12,19,2,NULL),(642,16,19,2,NULL),(643,23,19,2,NULL),(644,26,19,2,NULL),(645,36,19,2,NULL),(646,37,19,2,NULL),(647,41,19,2,NULL),(648,43,19,2,NULL),(649,48,19,2,NULL),(650,53,19,2,NULL),(651,4,20,2,NULL),(652,11,20,2,NULL),(653,12,20,2,NULL),(654,16,20,2,NULL),(655,23,20,2,NULL),(656,26,20,2,NULL),(657,36,20,2,NULL),(658,37,20,2,NULL),(659,41,20,2,NULL),(660,43,20,2,NULL),(661,48,20,2,NULL),(662,53,20,2,NULL),(663,4,35,2,NULL),(664,11,35,2,NULL),(665,12,35,2,NULL),(666,16,35,2,NULL),(667,23,35,2,NULL),(668,26,35,2,NULL),(669,36,35,2,NULL),(670,37,35,2,NULL),(671,41,35,2,NULL),(672,43,35,2,NULL),(673,48,35,2,NULL),(674,53,35,2,NULL),(675,4,36,2,NULL),(676,11,36,2,NULL),(677,12,36,2,NULL),(678,16,36,2,NULL),(679,23,36,2,NULL),(680,26,36,2,NULL),(681,36,36,2,NULL),(682,37,36,2,NULL),(683,41,36,2,NULL),(684,43,36,2,NULL),(685,48,36,2,NULL),(686,53,36,2,NULL),(687,4,37,2,NULL),(688,11,37,2,NULL),(689,12,37,2,NULL),(690,16,37,2,NULL),(691,23,37,2,NULL),(692,26,37,2,NULL),(693,36,37,2,NULL),(694,37,37,2,NULL),(695,41,37,2,NULL),(696,43,37,2,NULL),(697,48,37,2,NULL),(698,53,37,2,NULL),(699,4,2,2,NULL),(700,11,2,2,NULL),(701,12,2,2,NULL),(702,16,2,2,NULL),(703,23,2,2,NULL),(704,26,2,2,NULL),(705,36,2,2,NULL),(706,1,5,2,NULL),(707,37,2,2,NULL),(708,2,7,2,NULL),(709,41,2,2,NULL),(710,3,7,2,NULL),(711,43,2,2,NULL),(712,5,8,2,NULL),(713,48,2,2,NULL),(714,7,6,2,NULL),(715,53,2,2,NULL),(716,8,6,2,NULL),(717,9,9,2,NULL),(718,13,8,2,NULL),(719,14,9,2,NULL),(720,15,8,2,NULL),(721,17,9,2,NULL),(722,19,5,2,NULL),(723,20,5,2,NULL),(724,22,8,2,NULL),(725,25,8,2,NULL),(726,29,9,2,NULL),(727,30,5,2,NULL),(728,34,8,2,NULL),(729,35,6,2,NULL),(730,39,7,2,NULL),(731,40,9,2,NULL),(732,42,6,2,NULL),(733,46,6,2,NULL),(734,47,7,2,NULL),(735,49,7,2,NULL),(736,50,9,2,NULL),(737,51,7,2,NULL),(738,52,5,2,NULL),(739,57,6,2,NULL),(740,58,5,2,NULL),(741,4,4,2,NULL),(742,11,4,2,NULL),(743,12,4,2,NULL),(744,16,4,2,NULL),(745,23,4,2,NULL),(746,26,4,2,NULL),(747,36,4,2,NULL),(748,37,4,2,NULL),(749,41,4,2,NULL),(750,43,4,2,NULL),(751,48,4,2,NULL),(752,53,4,2,NULL),(753,4,6,2,NULL),(754,11,6,2,NULL),(755,12,6,2,NULL),(756,16,6,2,NULL),(757,23,6,2,NULL),(758,26,6,2,NULL),(759,36,6,2,NULL),(760,37,6,2,NULL),(761,41,6,2,NULL),(762,43,6,2,NULL),(763,48,6,2,NULL),(764,53,6,2,NULL),(765,4,11,2,NULL),(766,11,11,2,NULL),(767,12,11,2,NULL),(768,16,11,2,NULL),(769,23,11,2,NULL),(770,26,11,2,NULL),(771,36,11,2,NULL),(772,37,11,2,NULL),(773,41,11,2,NULL),(774,43,11,2,NULL),(775,48,11,2,NULL),(776,53,11,2,NULL),(777,4,12,2,NULL),(778,11,12,2,NULL),(779,12,12,2,NULL),(780,16,12,2,NULL),(781,23,12,2,NULL),(782,26,12,2,NULL),(783,36,12,2,NULL),(784,37,12,2,NULL),(785,41,12,2,NULL),(786,43,12,2,NULL),(787,48,12,2,NULL),(788,53,12,2,NULL),(789,6,4,2,NULL),(790,21,4,2,NULL),(791,28,4,2,NULL),(792,27,4,2,NULL),(793,31,13,2,NULL),(794,33,4,2,NULL),(795,54,13,2,NULL),(796,10,4,2,NULL),(797,32,4,2,NULL),(798,38,4,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (29,'android.permission.ACCESS_COARSE_LOCATION'),(31,'android.permission.ACCESS_COARSE_UPDATES'),(34,'android.permission.ACCESS_FINE_LOCATION'),(32,'android.permission.ACCESS_GPS'),(14,'android.permission.ACCESS_NETWORK_STATE'),(3,'android.permission.ACCESS_WIFI_STATE'),(17,'android.permission.BATTERY_STATS'),(30,'android.permission.CALL_PHONE'),(11,'android.permission.CAMERA'),(23,'android.permission.CHANGE_CONFIGURATION'),(52,'android.permission.CHANGE_NETWORK_STATE'),(13,'android.permission.CONTROL_LOCATION_UPDATES'),(37,'android.permission.DEVICE_POWER'),(19,'android.permission.EXPAND_STATUS_BAR'),(6,'android.permission.GET_ACCOUNTS'),(40,'android.permission.GET_TASKS'),(43,'android.permission.GLOBAL_SEARCH_CONTROL'),(15,'android.permission.INSTALL_PACKAGES'),(21,'android.permission.INTERNET'),(33,'android.permission.PERMISSION_NAME'),(27,'android.permission.PROCESS_OUTGOING_CALLS'),(9,'android.permission.READ_CALENDAR'),(7,'android.permission.READ_CONTACTS'),(12,'android.permission.READ_FRAME_BUFFER'),(1,'android.permission.READ_LOGS'),(25,'android.permission.READ_PHONE_STATE'),(10,'android.permission.READ_SMS'),(50,'android.permission.RECEIVE_BOOT_COMPLETED'),(42,'android.permission.RECEIVE_MMS'),(5,'android.permission.RECEIVE_SMS'),(38,'android.permission.RECEIVE_WAP_PUSH'),(36,'android.permission.RECORD_AUDIO'),(26,'android.permission.RESTART_PACKAGES'),(16,'android.permission.SEND_SMS'),(39,'android.permission.SET_WALLPAPER'),(44,'android.permission.SET_WALLPAPER_HINTS'),(4,'android.permission.STATUS_BAR'),(20,'android.permission.SYSTEM_ALERT_WINDOW'),(22,'android.permission.VIBRATE'),(35,'android.permission.WAKE_LOCK'),(41,'android.permission.WRITE_APN_SETTINGS'),(18,'android.permission.WRITE_CALENDAR'),(8,'android.permission.WRITE_CONTACTS'),(28,'android.permission.WRITE_EXTERNAL_STORAGE'),(45,'android.permission.WRITE_SETTINGS'),(2,'android.permission.WRITE_SMS'),(24,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(51,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(48,'com.android.launcher.permission.INSTALL_SHORTCUT'),(46,'com.android.launcher.permission.READ_SETTINGS'),(49,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(47,'com.android.launcher.permission.WRITE_SETTINGS');
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
INSERT INTO `Permissions` VALUES (46,'n'),(47,'n'),(48,'n'),(49,'n');
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
INSERT INTO `ProviderLinks` VALUES (1,15,21,NULL),(2,19,21,NULL),(3,31,21,NULL),(4,20,21,NULL),(5,32,21,NULL);
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
INSERT INTO `Providers` VALUES (1,21,0,NULL,'com.android.launcher.permission.WRITE_SETTINGS');
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(2,NULL,NULL,'content://sms/',NULL,NULL,NULL),(3,NULL,NULL,'content://sms/',NULL,NULL,NULL),(4,NULL,NULL,'content://sms/',NULL,NULL,NULL),(5,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(6,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(7,'package','',NULL,NULL,NULL,NULL),(8,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(9,'tel','(.*)',NULL,NULL,NULL,NULL),(10,'package','',NULL,NULL,NULL,NULL),(11,'package','',NULL,NULL,NULL,NULL),(12,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(13,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(14,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(15,'package','',NULL,NULL,NULL,NULL),(16,NULL,NULL,'http://se.zxin.cc?prod=search&op=redirect&id=10&v=7&ky=(.*)',NULL,NULL,NULL),(17,NULL,NULL,'http://se.zxin.cc?prod=search&op=redirect&id=10&v=7&ky=NULL-CONSTANT',NULL,NULL,NULL),(18,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(19,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(20,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(21,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(22,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(23,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(24,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(25,'package','',NULL,NULL,NULL,NULL),(26,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(27,'package','',NULL,NULL,NULL,NULL),(28,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(29,'package','',NULL,NULL,NULL,NULL),(30,'package','',NULL,NULL,NULL,NULL),(31,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(32,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=false',NULL,NULL,NULL),(33,'package','',NULL,NULL,NULL,NULL),(34,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(35,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(36,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(37,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(38,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(39,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(40,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(41,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(42,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(43,'package','',NULL,NULL,NULL,NULL),(44,'package','',NULL,NULL,NULL,NULL),(45,'package','',NULL,NULL,NULL,NULL),(46,'package','',NULL,NULL,NULL,NULL),(47,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(48,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(49,'package','',NULL,NULL,NULL,NULL),(50,'package','',NULL,NULL,NULL,NULL),(51,'package','',NULL,NULL,NULL,NULL),(52,'package','',NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,9,1),(2,10,2),(3,23,3),(4,36,4),(5,52,5),(6,61,6),(7,69,8),(8,79,13),(9,80,14),(10,84,18),(11,85,19),(12,88,20),(13,91,22),(14,92,23),(15,94,24),(16,95,26),(17,104,31),(18,106,32),(19,106,34),(20,108,36),(21,110,37),(22,112,38),(23,113,39),(24,115,40),(25,116,42),(26,123,47);
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
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,17),(17,1,16),(18,1,19),(19,1,18),(20,1,21),(21,1,20),(22,1,23),(23,1,22),(24,1,24),(25,2,16),(26,2,21),(27,2,25),(28,2,26),(29,3,34),(30,3,35),(31,3,32),(32,3,2),(33,3,33),(34,3,3),(35,3,36),(36,3,37),(37,3,7),(38,3,8),(39,3,10),(40,3,16),(41,3,21),(42,3,25),(43,3,27),(44,3,29),(45,3,28),(46,3,31),(47,3,30),(48,4,2),(49,4,38),(50,4,39),(51,4,5),(52,4,7),(53,4,42),(54,4,43),(55,4,40),(56,4,10),(57,4,41),(58,4,46),(59,4,47),(60,4,44),(61,4,14),(62,4,45),(63,4,16),(64,4,19),(65,4,21),(66,4,22),(67,4,25),(68,4,30),(69,5,35),(70,5,5),(71,5,39),(72,5,42),(73,5,41),(74,5,14),(75,5,45),(76,5,51),(77,5,50),(78,5,16),(79,5,21),(80,5,52),(81,5,25),(82,5,24),(83,5,28);
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

-- Dump completed on 2015-10-12  3:30:52
