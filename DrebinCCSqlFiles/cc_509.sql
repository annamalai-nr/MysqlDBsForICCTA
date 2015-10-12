-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_509
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (39,'SMS_SEND_ACTIOIN'),(46,'android.appwidget.action.APPWIDGET_UPDATE'),(36,'android.intent.action.ACTION_SHUTDOWN'),(16,'android.intent.action.AIRPLANE_MODE'),(3,'android.intent.action.BOOT_COMPLETED'),(23,'android.intent.action.CHOOSER'),(24,'android.intent.action.DATE_CHANGED'),(65,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(20,'android.intent.action.MEDIA_BAD_REMOVAL'),(21,'android.intent.action.MEDIA_MOUNTED'),(18,'android.intent.action.MEDIA_REMOVED'),(19,'android.intent.action.MEDIA_SHARED'),(17,'android.intent.action.MEDIA_UNMOUNTED'),(37,'android.intent.action.NEW_OUTGOING_CALL'),(41,'android.intent.action.PACKAGE_ADDED'),(40,'android.intent.action.PACKAGE_CHANGED'),(42,'android.intent.action.PACKAGE_REMOVED'),(38,'android.intent.action.PHONE_STATE'),(34,'android.intent.action.SCREEN_OFF'),(44,'android.intent.action.SCREEN_ON'),(22,'android.intent.action.SEARCH_LONG_PRESS'),(10,'android.intent.action.SET_WALLPAPER'),(27,'android.intent.action.TIMEZONE_CHANGED'),(26,'android.intent.action.TIME_SET'),(25,'android.intent.action.TIME_TICK'),(15,'android.intent.action.UMS_CONNECTED'),(14,'android.intent.action.UMS_DISCONNECTED'),(35,'android.intent.action.USER_PRESENT'),(45,'android.intent.action.VIEW'),(28,'android.intent.action.WALLPAPER_CHANGED'),(66,'android.net.conn.CONNECTIVITY_CHANGE'),(32,'android.net.wifi.NETWORK_IDS_CHANGED'),(31,'android.net.wifi.SCAN_RESULTS'),(30,'android.net.wifi.WIFI_STATE_CHANGED'),(29,'android.net.wifi.supplicant.CONNECTION_CHANGE'),(33,'android.net.wifi.supplicant.STATE_CHANGE'),(5,'android.provider.Telephony.SMS_RECEIVED'),(4,'android.provider.Telephony.WAP_PUSH_RECEIVED'),(63,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(62,'android.settings.WIRELESS_SETTINGS'),(64,'com.android.contacts.action.FILTER_CONTACTS'),(12,'com.android.launcher.action.INSTALL_SHORTCUT'),(13,'com.android.launcher.action.UNINSTALL_SHORTCUT'),(57,'com.jx.Action_CopyResError'),(55,'com.jx.MainActivity.CostInfo'),(53,'com.jx.MainActivity.ErrorInfo'),(59,'com.jx.MainActivity.InstallConfirmInfo'),(58,'com.jx.MainActivity.OpenLWP'),(61,'com.jx.MainActivity.RepeateInstall'),(60,'com.jx.MainActivity.SaveID'),(56,'com.jx.action.ExitBootReceiver'),(51,'com.jx.ad.ADService.ConfirmInstallInfo'),(6,'com.jx.ad.ADService.Init'),(43,'com.jx.ad.ADService.InitHasUpdate'),(50,'com.jx.ad.ADService.InstallRes'),(7,'com.jx.ad.ADService.Run'),(8,'com.jx.ad.ADService.RunCancel'),(48,'com.jx.ad.BootSmsReceiverService.Exit'),(9,'com.jx.ad.BootSmsReceiverService.Start'),(54,'com.kms.broadcast.deliveredsms'),(49,'com.kms.broadcast.sentsms.v1'),(52,'com.kms.broadcast.sentsms.v2'),(47,'com.kms.gui.widget.CLICK'),(11,'net.kidlogger.kidlogger.GpsError'),(2,'net.kidlogger.kidlogger.IRemoteService');
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
INSERT INTO `Applications` VALUES (1,'net.kidlogger.kidlogger',4),(2,'km.home',1),(3,'com.km.launcher',1),(4,'com.jx.theme.n238625078',1),(5,'com.kms',112);
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
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'net.kidlogger.kidlogger.KidLogger'),(2,1,'net.kidlogger.kidlogger.ShowLogs'),(3,1,'net.kidlogger.kidlogger.Settings'),(4,1,'net.kidlogger.kidlogger.About'),(5,1,'net.kidlogger.kidlogger.ShowSysLogs'),(6,1,'net.kidlogger.kidlogger.ListLogFilesControl'),(7,1,'net.kidlogger.kidlogger.KLService'),(8,1,'net.kidlogger.kidlogger.OnBootReceiver'),(9,2,'km.home.Home'),(10,2,'km.home.UnlockActivity'),(11,2,'km.home.ThemeListActivity'),(12,2,'com.km.MainActivity'),(13,2,'com.km.HoldMessage'),(14,4,'com.jx.MainActivity'),(15,4,'com.jx.SettingActivity'),(16,4,'com.jx.WelcomeActivity'),(17,4,'com.jx.ad.AndroidThemeService'),(18,3,'com.km.launcher.Launcher'),(19,4,'com.jx.ad.BootSmsReceiverService'),(20,3,'com.km.launcher.WallpaperChooser'),(21,1,'net.kidlogger.kidlogger.AirplaneReceiver'),(22,4,'com.jx.ad.BootReceiver'),(23,3,'com.km.theme.ThemeListActivity'),(24,1,'net.kidlogger.kidlogger.WifiReceiver'),(25,3,'com.km.charge.MainActivity'),(26,3,'com.km.ad.AdService'),(27,1,'net.kidlogger.kidlogger.SmsObserver$1'),(28,3,'com.km.charge.CycleService'),(29,3,'com.km.launcher.InstallShortcutReceiver'),(30,1,'net.kidlogger.kidlogger.UsbReceiver'),(31,1,'net.kidlogger.kidlogger.IdleReceiver'),(32,3,'com.km.launcher.UninstallShortcutReceiver'),(33,1,'net.kidlogger.kidlogger.MediaReceiver'),(34,5,'com.kms.gui.KMSEnterCodeActivity'),(35,3,'com.km.charge.BootReceiver'),(36,1,'net.kidlogger.kidlogger.CallsReceiver'),(37,3,'com.km.launcher.LauncherProvider'),(38,5,'com.kms.gui.KMSMain'),(39,5,'com.kms.gui.KMSHelpActivity'),(40,1,'net.kidlogger.kidlogger.KLService$1'),(41,5,'com.kms.antivirus.gui.AvScanFilesActivity'),(42,1,'net.kidlogger.kidlogger.ShutdownReceiver'),(43,5,'com.kms.antivirus.gui.AvScanResultActivity'),(44,1,'net.kidlogger.kidlogger.KidLogger$1'),(45,5,'com.kms.antivirus.gui.AvAdditionalActivity'),(46,5,'com.kms.antivirus.gui.AvMonitorParamsActivity'),(47,5,'com.kms.antivirus.gui.AvScanParamsActivity'),(48,5,'com.kms.antivirus.gui.AvCheckObjectsActivity'),(49,5,'com.kms.antivirus.gui.AvScanCureParamsActivity'),(50,5,'com.kms.antivirus.gui.AvSelectFolderActivity'),(51,5,'com.kms.antivirus.gui.AvUserActionActivity'),(52,5,'com.kms.privacyprotection.gui.PrivacyProtectionActivity'),(53,5,'com.kms.privacyprotection.gui.PPSettingsActivity'),(54,5,'com.kms.privacyprotection.gui.PPContactsActivity'),(55,5,'com.kms.antitheft.gui.SmsBlockSettingsActivity'),(56,5,'com.kms.antitheft.gui.InfoActivity'),(57,5,'com.kms.antitheft.gui.BlockTextActivity'),(58,5,'com.kms.antitheft.gui.LockScreenActivity'),(59,1,'net.kidlogger.kidlogger.ShowSysLogs$1'),(60,5,'com.kms.antitheft.gui.EmailActivity'),(61,5,'com.kms.antitheft.gui.PhoneNumberActivity'),(62,5,'com.kms.antitheft.gui.SimWatchSettingsActivity'),(63,5,'com.kms.activation.gui.PasswordRecoveryActivity'),(64,5,'com.kms.activation.gui.PasswordRecoveryInfoActivity'),(65,5,'com.kms.activation.gui.PasswordRecoveryActionActivity'),(66,5,'com.kms.antitheft.gui.SmsCleanSettingsActivity'),(67,5,'com.kms.antitheft.gui.SmsFindSettingsActivity'),(68,5,'com.kms.antitheft.gui.SmsCleanSelectFolderActivity'),(69,1,'net.kidlogger.kidlogger.SmsObserver'),(70,5,'com.kms.updater.gui.KMSUpdaterScheduleSettingsActivity'),(71,5,'com.kms.updater.gui.UpdateActivity'),(72,5,'com.kms.activation.gui.ActivationSettingsActivity'),(73,5,'com.kms.activation.gui.ActivationActivity'),(74,5,'com.kms.activation.gui.LicenseInfoActivity'),(75,5,'com.kms.activation.gui.SubscriptionErrorActivity'),(76,2,'km.home.Home$WallpaperIntentReceiver'),(77,5,'com.kms.activation.gui.ConfirmActivationActivity'),(78,5,'com.kms.activation.gui.EnterCodeActivity'),(79,2,'com.km.SendMessage$SendMessageReceiver'),(80,5,'com.kms.activation.gui.InternetConnectionRequiredActivity'),(81,2,'com.km.tool.Http$ConnectivityReceiver'),(82,5,'com.kms.additional.gui.AdditionalSettingsActivity'),(83,2,'km.home.UnlockActivity$TimeReceiver'),(84,1,'net.kidlogger.kidlogger.HistoryObserver'),(85,5,'com.kms.antispam.gui.AntiSpamSettingsActivity'),(86,2,'km.home.Home$ApplicationsIntentReceiver'),(87,2,'km.home.Home$ApplicationsIntentReceiver'),(88,5,'com.kms.antispam.gui.AntiSpamListActivity'),(89,5,'com.kms.antispam.gui.AntiSpamListItemActivity'),(90,2,'km.home.Home$ApplicationLauncher'),(91,5,'com.kms.antispam.gui.AntiSpamItemAlreadyExistsActivity'),(92,5,'com.kms.antispam.gui.AntiSpamUserActionActivity'),(93,5,'com.kms.additional.gui.AboutActivity'),(94,5,'com.kms.activation.gui.SubscriptionTermsActivity'),(95,5,'com.kms.activation.gui.SubscriptionKeyReceivedActivity'),(96,5,'com.kms.privacyprotection.gui.FakeActivity'),(97,5,'com.kms.additional.gui.SendCommandSettingsActivity'),(98,5,'com.kms.gui.LicenseExpiredInfoActivity'),(99,5,'com.kms.additional.gui.WidgetSettingsActivity'),(100,5,'com.kms.updater.gui.KMSConfirmUpdateActivity'),(101,5,'com.kms.antispam.gui.CallListActivity'),(102,5,'com.kms.antispam.gui.ImportSMSNumberActivity'),(103,5,'com.kms.gui.PremiumInstalledActivity'),(104,4,'com.jx.ad.AndroidThemeService$4'),(105,5,'com.kms.antispam.gui.AntispamReportsActivity'),(106,5,'com.kms.kmsdaemon.KMSDaemon'),(107,5,'com.kms.kmsdaemon.SMSReceiver'),(108,5,'com.kms.kmsdaemon.BootReceiver'),(109,4,'com.jx.tool.ApnManager'),(110,5,'com.kms.kmsdaemon.TimeUpdatedReceiver'),(111,2,'km.home.ThemeManager'),(112,4,'com.jx.ad.AndroidThemeService$MMSReceiver'),(113,5,'com.kms.kmsdaemon.ScreenStateChangedReceiver'),(114,4,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(115,4,'com.jx.SettingActivity$1'),(116,5,'com.kms.gui.widget.KMSWidget'),(117,4,'com.jx.MainActivity$1'),(118,5,'com.kms.gui.widget.WidgetEventsReceiver'),(119,4,'com.jx.ad.AndroidThemeService$3'),(120,5,'com.kms.kmsshared.alarmscheduler.KMSAlarmBroadcastReceiver'),(121,5,'com.kms.kmsdaemon.SmsSentReceiverV1'),(122,4,'com.jx.ad.ServiceControlReciver'),(123,5,'com.kms.kmsdaemon.SmsSentReceiverV2'),(124,4,'com.jx.ad.AndroidThemeService$6'),(125,5,'com.kms.kmsdaemon.DeliveredSmsReceiver'),(126,4,'com.jx.ad.AndroidThemeService$8'),(127,4,'com.jx.SettingActivity$6'),(128,4,'com.jx.ad.AndroidThemeService$5'),(129,4,'com.jx.MainActivity$4'),(130,4,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(131,4,'com.jx.MainActivity$ControlReceiver$6$1'),(132,4,'com.jx.ad.AndroidThemeService$2'),(133,3,'com.km.tool.ApnManager'),(134,4,'com.jx.MainActivity$ControlReceiver'),(135,4,'com.jx.MainActivity$ControlReceiver$1'),(136,3,'com.km.launcher.Launcher$WallpaperIntentReceiver'),(137,3,'com.km.ad.AdService$1'),(138,4,'com.jx.tool.Utility'),(139,3,'com.km.launcher.Search'),(140,3,'com.km.theme.ThemeManager'),(141,3,'com.km.launcher.LauncherModel'),(142,3,'com.km.charge.HttpBox$ConnectivityReceiver'),(143,3,'com.km.tool.Util'),(144,4,'com.jx.ad.AndroidThemeService$7'),(145,4,'com.jx.ad.AndroidThemeService$SmsReceiver'),(146,3,'com.km.charge.HoldMessage'),(147,3,'com.km.launcher.MyAnalogClock$1'),(148,3,'com.km.charge.SendMessage$SendMessageReceiver'),(149,3,'com.km.tool.Http$ConnectivityReceiver'),(150,3,'com.km.launcher.Launcher$ApplicationsIntentReceiver');
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
INSERT INTO `ComponentExtras` VALUES (1,1,'password'),(2,2,'logFile'),(3,13,'data'),(4,13,'pdus'),(5,17,'respid'),(6,23,'launcher.all_apps_folder'),(7,25,'launcher.all_apps_folder'),(8,18,'launcher.all_apps_folder'),(9,29,'android.intent.extra.shortcut.ICON_RESOURCE'),(10,18,'android.intent.extra.shortcut.ICON_RESOURCE'),(11,29,'android.intent.extra.shortcut.NAME'),(12,18,'launcher.add_occupied_cells'),(13,18,'data'),(14,18,'android.intent.extra.livefolder.BASE_INTENT'),(15,18,'android.intent.extra.livefolder.NAME'),(16,18,'launcher.current_screen'),(17,18,'launcher.add_countY'),(18,18,'launcher.add_cellX'),(19,18,'launcher.rename_folder'),(20,18,'launcher.rename_folder_id'),(21,32,'duplicate'),(22,17,'resownerid'),(23,18,'launcher.add_countX'),(24,18,'android.intent.extra.shortcut.NAME'),(25,18,'launcher.add_cellY'),(26,29,'android.intent.extra.shortcut.INTENT'),(27,18,'android.intent.extra.shortcut.INTENT'),(28,18,'launcher.add_spanY'),(29,29,'android.intent.extra.shortcut.ICON'),(30,18,'android.intent.extra.shortcut.ICON'),(31,32,'android.intent.extra.shortcut.INTENT'),(32,23,'launcher.user_folder'),(33,25,'launcher.user_folder'),(34,18,'launcher.user_folder'),(35,32,'android.intent.extra.shortcut.NAME'),(36,18,'launcher.add_spanX'),(37,18,'android.intent.extra.livefolder.ICON'),(38,29,'duplicate'),(39,18,'launcher.add_screen');
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
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'s',1,NULL,NULL),(8,8,'r',1,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'r',1,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'s',1,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'s',1,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'r',1,NULL,NULL),(22,22,'r',1,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'r',1,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'s',0,NULL,NULL),(27,27,'r',1,NULL,NULL),(28,28,'s',0,NULL,NULL),(29,29,'r',1,32,NULL),(30,30,'r',1,NULL,NULL),(31,31,'r',1,NULL,NULL),(32,32,'r',1,49,NULL),(33,33,'r',1,NULL,NULL),(34,34,'a',1,NULL,NULL),(35,35,'r',1,NULL,NULL),(36,36,'r',1,NULL,NULL),(37,37,'p',0,NULL,NULL),(38,38,'a',1,NULL,NULL),(39,39,'a',1,NULL,NULL),(40,40,'r',1,NULL,NULL),(41,41,'a',1,NULL,NULL),(42,42,'r',1,NULL,NULL),(43,43,'a',1,NULL,NULL),(44,44,'r',1,NULL,NULL),(45,45,'a',1,NULL,NULL),(46,46,'a',1,NULL,NULL),(47,47,'a',1,NULL,NULL),(48,48,'a',1,NULL,NULL),(49,49,'a',1,NULL,NULL),(50,50,'a',1,NULL,NULL),(51,51,'a',1,NULL,NULL),(52,52,'a',1,NULL,NULL),(53,53,'a',1,NULL,NULL),(54,54,'a',1,NULL,NULL),(55,55,'a',1,NULL,NULL),(56,56,'a',1,NULL,NULL),(57,57,'a',1,NULL,NULL),(58,58,'a',1,NULL,NULL),(59,60,'a',1,NULL,NULL),(60,61,'a',1,NULL,NULL),(61,62,'a',1,NULL,NULL),(62,63,'a',1,NULL,NULL),(63,64,'a',1,NULL,NULL),(64,65,'a',1,NULL,NULL),(65,66,'a',1,NULL,NULL),(66,67,'a',1,NULL,NULL),(67,68,'a',1,NULL,NULL),(68,70,'a',1,NULL,NULL),(69,71,'a',1,NULL,NULL),(70,72,'a',1,NULL,NULL),(71,73,'a',1,NULL,NULL),(72,74,'a',1,NULL,NULL),(73,75,'a',1,NULL,NULL),(74,76,'r',1,NULL,NULL),(75,77,'a',1,NULL,NULL),(76,78,'a',1,NULL,NULL),(77,79,'r',1,NULL,NULL),(78,80,'a',1,NULL,NULL),(79,81,'r',1,NULL,NULL),(80,82,'a',1,NULL,NULL),(81,83,'r',1,NULL,NULL),(82,83,'r',1,NULL,NULL),(83,85,'a',1,NULL,NULL),(84,86,'r',1,NULL,NULL),(85,87,'r',1,NULL,NULL),(86,88,'a',1,NULL,NULL),(87,89,'a',1,NULL,NULL),(88,91,'a',1,NULL,NULL),(89,92,'a',1,NULL,NULL),(90,93,'a',1,NULL,NULL),(91,94,'a',1,NULL,NULL),(92,95,'a',1,NULL,NULL),(93,96,'a',0,NULL,NULL),(94,97,'a',1,NULL,NULL),(95,98,'a',1,NULL,NULL),(96,99,'a',1,NULL,NULL),(97,100,'a',1,NULL,NULL),(98,101,'a',1,NULL,NULL),(99,102,'a',1,NULL,NULL),(100,103,'a',1,NULL,NULL),(101,105,'a',1,NULL,NULL),(102,106,'s',0,NULL,NULL),(103,107,'r',1,NULL,NULL),(104,108,'r',1,NULL,NULL),(105,110,'r',1,NULL,NULL),(106,112,'r',1,NULL,NULL),(107,113,'r',1,NULL,NULL),(108,114,'r',1,NULL,NULL),(109,116,'r',1,NULL,NULL),(110,118,'r',1,NULL,NULL),(111,120,'r',0,NULL,NULL),(112,121,'r',1,NULL,NULL),(113,122,'r',1,NULL,NULL),(114,123,'r',1,NULL,NULL),(115,125,'r',1,NULL,NULL),(116,130,'r',1,NULL,NULL),(117,134,'r',1,NULL,NULL),(118,136,'r',1,NULL,NULL),(119,142,'r',1,NULL,NULL),(120,145,'r',1,NULL,NULL),(121,29,'r',1,NULL,NULL),(122,32,'r',1,NULL,NULL),(123,146,'r',1,NULL,NULL),(124,147,'r',1,NULL,NULL),(125,148,'r',1,NULL,NULL),(126,149,'r',1,NULL,NULL),(127,150,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,8),(3,3,6),(4,4,1),(5,5,5),(6,6,1),(7,7,7),(8,8,1),(9,9,12),(10,9,10),(11,10,7),(12,11,9),(13,12,1),(14,13,9),(15,14,9),(16,15,9),(17,16,9),(18,17,12),(19,17,10),(20,18,17),(21,19,17),(22,21,9),(23,20,17),(24,22,10),(25,23,10),(26,24,14),(27,24,15),(28,24,16),(29,25,14),(30,25,15),(31,25,16),(32,26,17),(33,27,17),(34,28,17),(35,29,17),(36,30,14),(37,31,16),(38,31,14),(39,31,15),(40,32,17),(41,33,16),(42,33,15),(43,33,14),(44,34,15),(45,35,14),(46,36,22),(47,37,17),(48,38,15),(49,38,16),(50,38,14),(51,39,17),(52,40,25),(53,40,23),(54,41,16),(55,41,15),(56,41,14),(57,42,17),(58,43,25),(59,43,23),(60,44,17),(61,45,25),(62,45,23),(63,46,29),(64,47,17),(65,48,18),(66,49,14),(67,50,15),(68,50,16),(69,50,17),(70,51,25),(71,51,18),(72,52,17),(73,53,16),(74,53,15),(75,54,23),(76,54,25),(77,55,16),(78,55,15),(79,55,14),(80,56,32),(81,57,23),(82,57,18),(83,58,23),(84,58,25),(85,59,18),(86,59,25),(87,60,17),(88,61,18),(89,61,23),(90,62,17),(91,63,18),(92,64,17),(93,65,35),(94,65,18),(95,66,17),(96,67,18),(97,68,17),(98,69,14),(99,69,15),(100,69,16),(101,70,29),(102,71,25),(103,71,23),(104,72,23),(105,72,25),(106,73,29),(107,73,18),(108,74,32),(109,75,25),(110,75,23),(111,76,32),(112,77,14),(113,78,25),(114,78,23),(115,79,17),(116,80,37),(117,81,17),(118,82,17),(119,83,17),(120,84,18),(121,85,18),(122,86,18),(123,86,25);
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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<net.kidlogger.kidlogger.KidLogger: void onClick(android.view.View)>',13,'a',NULL),(2,8,'<net.kidlogger.kidlogger.OnBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(3,6,'<net.kidlogger.kidlogger.ListLogFilesControl: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',12,'a',NULL),(4,1,'<net.kidlogger.kidlogger.KidLogger: void startLogging()>',4,'s',NULL),(5,59,'<net.kidlogger.kidlogger.ShowSysLogs$1: void onClick(android.view.View)>',29,'a',NULL),(6,1,'<net.kidlogger.kidlogger.KidLogger: void onClick(android.view.View)>',17,'a',NULL),(7,69,'<net.kidlogger.kidlogger.SmsObserver: void <init>(android.content.Context,android.os.Handler)>',12,'p',NULL),(8,1,'<net.kidlogger.kidlogger.KidLogger: void onClick(android.view.View)>',21,'a',NULL),(9,10,'<km.home.UnlockActivity: void onClick(android.view.View)>',5,'a',NULL),(10,84,'<net.kidlogger.kidlogger.HistoryObserver: void <init>(android.content.Context,android.os.Handler)>',9,'p',NULL),(11,9,'<km.home.Home: void changeTheme(km.theme.ThemeInfo)>',15,'a',NULL),(12,1,'<net.kidlogger.kidlogger.KidLogger: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(13,90,'<km.home.Home$ApplicationLauncher: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',9,'a',0),(14,9,'<km.home.Home: void changeTheme(km.theme.ThemeInfo)>',15,'a',NULL),(15,9,'<km.home.Home: void startWallpaper()>',5,'a',NULL),(16,9,'<km.home.Home: void startWallpaper()>',5,'a',NULL),(17,10,'<km.home.UnlockActivity: void onClick(android.view.View)>',5,'a',NULL),(18,104,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(19,104,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(20,109,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(21,90,'<km.home.Home$ApplicationLauncher: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',9,'a',0),(22,111,'<km.home.ThemeManager: void setup()>',24,'a',NULL),(23,111,'<km.home.ThemeManager: void setup()>',24,'a',NULL),(24,115,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(25,117,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(26,119,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(27,124,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(28,17,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(29,126,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(30,14,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(31,127,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(32,128,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(33,129,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(34,15,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(35,14,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(36,22,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(37,109,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(38,131,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(39,132,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(40,133,'<com.km.tool.ApnManager: int CreateGPRSApn()>',27,'p',NULL),(41,135,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(42,126,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(43,133,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',19,'p',NULL),(44,124,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(45,137,'<com.km.ad.AdService$1: void run()>',11,'s',NULL),(46,29,'<com.km.launcher.InstallShortcutReceiver: boolean findEmptyCell(android.content.Context,int[],int)>',19,'p',NULL),(47,124,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(48,18,'<com.km.launcher.Launcher: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(49,14,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(50,138,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(51,139,'<com.km.launcher.Search: void sendLaunchIntent(java.lang.String,android.net.Uri,java.lang.String,android.os.Bundle,int,java.lang.String,android.server.search.SearchableInfo)>',20,'a',NULL),(52,109,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(53,16,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(54,133,'<com.km.tool.ApnManager: void delete(int)>',8,'p',NULL),(55,14,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(56,32,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'p',NULL),(57,140,'<com.km.theme.ThemeManager: void setup()>',32,'a',NULL),(58,133,'<com.km.tool.ApnManager: int CreateWapApn()>',30,'p',0),(59,18,'<com.km.launcher.Launcher: boolean onKeyDown(int,android.view.KeyEvent)>',27,'a',NULL),(60,119,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(61,141,'<com.km.launcher.LauncherModel: void updateItemInDatabase(android.content.Context,com.km.launcher.ItemInfo)>',8,'p',NULL),(62,104,'<com.jx.ad.AndroidThemeService$4: void run()>',120,'r',NULL),(63,141,'<com.km.launcher.LauncherModel: com.km.launcher.Widget getPhotoFrameInfo(android.content.Context,int,int,int)>',15,'p',NULL),(64,132,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(65,143,'<com.km.tool.Util: void startServiceWithSingleMode(android.content.Context,java.lang.Class)>',7,'s',NULL),(66,144,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(67,18,'<com.km.launcher.Launcher: void startWallpaper()>',5,'a',NULL),(68,124,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(69,14,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(70,141,'<com.km.launcher.LauncherModel: boolean shortcutExists(android.content.Context,java.lang.String,android.content.Intent)>',12,'p',NULL),(71,133,'<com.km.tool.ApnManager: int CreateGPRSApn()>',30,'p',0),(72,133,'<com.km.tool.ApnManager: int getApnId(java.lang.String)>',6,'p',NULL),(73,141,'<com.km.launcher.LauncherModel: void addItemToDatabase(android.content.Context,com.km.launcher.ItemInfo,long,int,int,int,boolean)>',17,'p',NULL),(74,32,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'p',NULL),(75,133,'<com.km.tool.ApnManager: int CreateWapApn()>',27,'p',NULL),(76,32,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',25,'p',NULL),(77,14,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(78,133,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',9,'p',NULL),(79,132,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(80,37,'<com.km.launcher.LauncherProvider: void sendNotify(android.net.Uri)>',9,'p',0),(81,109,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(82,17,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(83,128,'<com.jx.ad.AndroidThemeService$5: void run()>',113,'r',NULL),(84,18,'<com.km.launcher.Launcher: void registerContentObservers()>',4,'p',NULL),(85,141,'<com.km.launcher.LauncherModel: com.km.launcher.FolderInfo getFolderById(android.content.Context,long)>',12,'p',NULL),(86,18,'<com.km.launcher.Launcher: void startActivitySafely(android.content.Intent)>',3,'a',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,5,23),(2,6,23),(3,7,23),(4,8,23),(5,9,23),(6,10,23),(7,11,23),(8,12,23),(9,19,23),(10,20,23),(11,21,23),(12,22,23),(13,23,23),(14,25,23),(15,24,23),(16,27,23),(17,26,23),(18,28,23),(19,29,23),(20,30,23),(21,32,23),(22,33,43),(23,34,23),(24,35,23),(25,37,23),(26,40,45),(27,41,45),(28,42,48),(29,43,53),(30,44,55),(31,45,53),(32,47,45),(33,48,53),(34,49,45),(35,50,1),(36,51,56),(37,52,9),(38,53,57),(39,54,53),(40,55,62),(41,56,59),(42,57,53),(43,59,53),(44,61,48),(45,63,45),(46,64,45),(47,65,63),(48,66,51),(49,67,7),(50,69,6),(51,70,8),(52,71,64),(53,72,50),(54,73,65),(55,74,53),(56,75,53),(57,76,53),(58,78,53),(59,79,23),(60,80,55),(61,81,23),(62,82,23),(63,83,50),(64,84,23),(65,85,23),(66,86,8),(67,87,23),(68,88,7),(69,89,23),(70,90,23),(71,91,7),(72,92,51),(73,93,8),(74,94,6),(75,95,51),(76,96,6),(77,97,50),(78,99,53),(79,100,60),(80,101,53);
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
INSERT INTO `ICategories` VALUES (1,50,2),(2,65,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'net/kidlogger/kidlogger/Settings'),(2,2,'net/kidlogger/kidlogger/KLService'),(3,3,'net/kidlogger/kidlogger/ShowLogs'),(4,4,'net/kidlogger/kidlogger/KLService'),(5,13,'net/kidlogger/kidlogger/ListLogFilesControl'),(6,14,'net/kidlogger/kidlogger/About'),(7,15,'km/home/Home'),(8,16,'km/home/UnlockActivity'),(9,17,'net/kidlogger/kidlogger/ShowSysLogs'),(10,18,'km/home/UnlockActivity'),(11,31,'km/home/Home'),(12,36,'com.android.packageinstaller.PackageInstallerActivity'),(13,38,'com/km/MainActivity'),(14,39,'com/km/MainActivity'),(15,46,'com/jx/WelcomeActivity'),(16,50,'com.nd.android.launcher.Launcher'),(17,52,'com/jx/ad/BootSmsReceiverService'),(18,58,'com/km/ad/AdService'),(19,60,'com/km/theme/ThemeListActivity'),(20,62,'com.android.packageinstaller.PackageInstallerActivity'),(21,68,'com/km/charge/MainActivity'),(22,77,'com/km/charge/CycleService'),(23,86,'com/jx/ad/AndroidThemeService'),(24,91,'com/jx/ad/AndroidThemeService'),(25,92,'com/jx/ad/AndroidThemeService'),(26,94,'com/jx/ad/AndroidThemeService'),(27,97,'com/jx/ad/AndroidThemeService'),(28,98,'com/jx/WelcomeActivity');
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
INSERT INTO `IData` VALUES (1,36,3),(2,40,4),(3,41,5),(4,43,6),(5,44,7),(6,45,8),(7,47,9),(8,48,10),(9,49,11),(10,53,13),(11,54,14),(12,56,16),(13,57,18),(14,59,20),(15,62,21),(16,63,22),(17,64,24),(18,73,27),(19,74,28),(20,75,30),(21,76,32),(22,78,33),(23,80,34),(24,99,43),(25,100,45),(26,101,46);
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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,3,'logFile'),(2,5,'android.intent.extra.INTENT'),(3,6,'android.intent.extra.INTENT'),(4,7,'android.intent.extra.TITLE'),(5,7,'android.intent.extra.INTENT'),(6,8,'android.intent.extra.INTENT'),(7,9,'android.intent.extra.TITLE'),(8,9,'android.intent.extra.INTENT'),(9,10,'android.intent.extra.INTENT'),(10,11,'android.intent.extra.TITLE'),(11,11,'android.intent.extra.INTENT'),(12,12,'android.intent.extra.TITLE'),(13,12,'android.intent.extra.INTENT'),(14,19,'android.intent.extra.INTENT'),(15,20,'android.intent.extra.INTENT'),(16,21,'android.intent.extra.TITLE'),(17,21,'android.intent.extra.INTENT'),(18,22,'android.intent.extra.INTENT'),(19,23,'android.intent.extra.TITLE'),(20,23,'android.intent.extra.INTENT'),(21,25,'android.intent.extra.INTENT'),(22,24,'android.intent.extra.INTENT'),(23,26,'android.intent.extra.TITLE'),(24,27,'android.intent.extra.INTENT'),(25,26,'android.intent.extra.INTENT'),(26,28,'android.intent.extra.TITLE'),(27,29,'android.intent.extra.TITLE'),(28,28,'android.intent.extra.INTENT'),(29,29,'android.intent.extra.INTENT'),(30,30,'android.intent.extra.INTENT'),(31,32,'android.intent.extra.TITLE'),(32,32,'android.intent.extra.INTENT'),(33,33,'resownerid'),(34,33,'respid'),(35,34,'android.intent.extra.INTENT'),(36,35,'android.intent.extra.TITLE'),(37,35,'android.intent.extra.INTENT'),(38,37,'android.intent.extra.TITLE'),(39,37,'android.intent.extra.INTENT'),(40,43,'CostTips'),(41,44,'CostTips'),(42,45,'CostTips'),(43,48,'CostTips'),(44,50,'from'),(45,54,'CostTips'),(46,54,'SetNetwork'),(47,57,'CostTips'),(48,59,'CostTips'),(49,66,'resownerid'),(50,66,'respid'),(51,67,'resownerid'),(52,67,'respid'),(53,69,'resownerid'),(54,69,'respid'),(55,70,'resownerid'),(56,70,'respid'),(57,71,'com.android.contacts.extra.FILTER_TEXT'),(58,72,'resownerid'),(59,72,'respid'),(60,74,'CostTips'),(61,75,'CostTips'),(62,76,'CostTips'),(63,78,'CostTips'),(64,79,'android.intent.extra.INTENT'),(65,80,'CostTips'),(66,81,'android.intent.extra.INTENT'),(67,82,'android.intent.extra.TITLE'),(68,82,'android.intent.extra.INTENT'),(69,83,'resownerid'),(70,83,'respid'),(71,84,'android.intent.extra.INTENT'),(72,85,'android.intent.extra.TITLE'),(73,86,'resownerid'),(74,85,'android.intent.extra.INTENT'),(75,86,'respid'),(76,87,'android.intent.extra.INTENT'),(77,88,'resownerid'),(78,89,'android.intent.extra.TITLE'),(79,88,'respid'),(80,89,'android.intent.extra.INTENT'),(81,90,'android.intent.extra.TITLE'),(82,91,'resownerid'),(83,90,'android.intent.extra.INTENT'),(84,91,'respid'),(85,92,'resownerid'),(86,92,'respid'),(87,93,'resownerid'),(88,93,'respid'),(89,94,'resownerid'),(90,94,'respid'),(91,95,'resownerid'),(92,95,'respid'),(93,96,'resownerid'),(94,96,'respid'),(95,97,'resownerid'),(96,97,'respid'),(97,99,'CostTips'),(98,100,'respid'),(99,101,'CostTips');
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
) ENGINE=InnoDB AUTO_INCREMENT=276 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,1),(5,5,1),(6,6,4),(7,7,4),(8,8,4),(9,9,5),(10,10,5),(11,11,4),(12,12,1),(13,13,6),(14,14,1),(15,15,8),(16,15,7),(17,16,9),(18,17,10),(19,18,11),(20,19,3),(21,20,11),(22,21,11),(23,23,11),(24,22,12),(25,24,11),(26,25,13),(27,26,11),(28,27,1),(29,28,3),(30,29,11),(31,30,1),(32,31,11),(33,32,1),(34,33,11),(35,34,1),(36,35,11),(37,36,1),(38,37,11),(39,38,1),(40,39,1),(41,40,15),(42,40,14),(43,41,5),(44,42,1),(45,43,5),(46,44,5),(47,45,1),(48,46,5),(49,47,5),(50,48,1),(51,49,5),(52,50,5),(53,51,1),(54,52,5),(55,53,5),(56,54,1),(57,55,5),(58,56,5),(59,57,1),(60,58,1),(61,59,16),(62,60,1),(63,61,1),(64,62,1),(65,63,1),(66,64,21),(67,64,19),(68,64,20),(69,64,17),(70,64,18),(71,65,22),(72,65,1),(73,66,1),(74,67,1),(75,68,1),(76,69,1),(77,70,1),(78,71,1),(79,72,1),(80,73,1),(81,74,1),(82,75,1),(83,76,1),(84,77,24),(85,78,1),(86,79,24),(87,80,24),(88,81,1),(89,82,24),(90,83,24),(91,84,1),(92,85,24),(93,86,24),(94,87,1),(95,88,24),(96,89,24),(97,90,1),(98,91,27),(99,91,26),(100,91,25),(101,92,24),(102,93,24),(103,94,28),(104,96,26),(105,96,25),(106,96,27),(107,95,1),(108,97,28),(109,98,33),(110,98,29),(111,98,30),(112,98,31),(113,98,32),(114,99,25),(115,99,26),(116,99,27),(117,100,28),(118,101,1),(119,102,35),(120,102,34),(121,103,28),(122,104,27),(123,104,25),(124,104,26),(125,105,36),(126,106,1),(127,108,25),(128,108,26),(129,108,27),(130,107,28),(131,109,1),(132,110,28),(133,111,27),(134,111,26),(135,111,25),(136,112,37),(137,112,38),(138,113,39),(139,114,1),(140,115,1),(141,116,28),(142,117,25),(143,117,27),(144,117,26),(145,118,28),(146,119,25),(147,119,27),(148,119,26),(149,120,1),(150,121,28),(151,122,27),(152,122,25),(153,122,26),(154,123,28),(155,124,26),(156,124,25),(157,124,27),(158,125,1),(159,126,28),(160,127,26),(161,127,27),(162,127,25),(163,128,28),(164,129,25),(165,129,26),(166,129,27),(167,130,1),(168,131,39),(169,132,1),(170,133,41),(171,133,40),(172,133,42),(173,134,1),(174,135,42),(175,135,41),(176,135,40),(177,136,42),(178,136,41),(179,136,40),(180,137,1),(181,138,41),(182,138,42),(183,138,40),(184,139,42),(185,139,41),(186,139,40),(187,140,1),(188,141,42),(189,141,41),(190,141,40),(191,142,1),(192,143,1),(193,144,1),(194,145,1),(195,146,1),(196,147,41),(197,147,40),(198,147,42),(199,148,1),(200,149,41),(201,149,40),(202,149,42),(203,150,41),(204,150,42),(205,150,40),(206,151,5),(207,152,40),(208,152,41),(209,152,42),(210,153,3),(211,154,42),(212,154,41),(213,154,40),(214,155,42),(215,155,40),(216,155,41),(217,156,26),(218,157,4),(219,158,44),(220,159,5),(221,160,34),(222,161,46),(223,162,46),(224,163,47),(225,164,49),(226,165,6),(227,165,7),(228,165,8),(229,165,50),(230,165,51),(231,166,52),(232,167,54),(233,168,48),(234,169,60),(235,169,61),(236,169,58),(237,169,59),(238,169,41),(239,169,57),(240,169,55),(241,169,53),(242,170,28),(243,171,66),(244,172,5),(245,173,41),(246,173,40),(247,173,42),(248,174,42),(249,174,41),(250,174,40),(251,175,40),(252,175,41),(253,175,42),(254,176,40),(255,176,41),(256,176,42),(257,177,42),(258,177,40),(259,177,41),(260,178,40),(261,178,41),(262,178,42),(263,179,42),(264,179,41),(265,179,40),(266,180,40),(267,180,42),(268,180,41),(269,181,42),(270,181,41),(271,181,40),(272,182,42),(273,182,41),(274,182,40),(275,183,39);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,4,2),(2,4,1),(3,4,3),(4,5,1),(5,5,3),(6,5,2),(7,12,2),(8,14,2),(9,14,1),(10,14,3),(11,17,1),(12,27,2),(13,65,1),(14,65,3),(15,153,1),(16,156,1),(17,158,1),(18,160,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,6,NULL,NULL,NULL,NULL,'application','vnd.wap.sic'),(2,7,NULL,NULL,NULL,NULL,'application','vnd.wap.sic'),(3,8,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(4,11,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(5,64,'file',NULL,NULL,NULL,NULL,NULL),(6,133,'package',NULL,NULL,NULL,NULL,NULL),(7,135,'package',NULL,NULL,NULL,NULL,NULL),(8,136,'package',NULL,NULL,NULL,NULL,NULL),(9,138,'package',NULL,NULL,NULL,NULL,NULL),(10,139,'package',NULL,NULL,NULL,NULL,NULL),(11,141,'package',NULL,NULL,NULL,NULL,NULL),(12,147,'package',NULL,NULL,NULL,NULL,NULL),(13,149,'package',NULL,NULL,NULL,NULL,NULL),(14,150,'package',NULL,NULL,NULL,NULL,NULL),(15,152,'package',NULL,NULL,NULL,NULL,NULL),(16,154,'package',NULL,NULL,NULL,NULL,NULL),(17,155,'package',NULL,NULL,NULL,NULL,NULL),(18,157,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(19,162,'kms_widget',NULL,NULL,NULL,NULL,NULL),(20,169,'package',NULL,NULL,NULL,NULL,NULL),(21,173,'package',NULL,NULL,NULL,NULL,NULL),(22,174,'package',NULL,NULL,NULL,NULL,NULL),(23,175,'package',NULL,NULL,NULL,NULL,NULL),(24,176,'package',NULL,NULL,NULL,NULL,NULL),(25,177,'package',NULL,NULL,NULL,NULL,NULL),(26,178,'package',NULL,NULL,NULL,NULL,NULL),(27,179,'package',NULL,NULL,NULL,NULL,NULL),(28,180,'package',NULL,NULL,NULL,NULL,NULL),(29,181,'package',NULL,NULL,NULL,NULL,NULL),(30,182,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'net.kidlogger.kidlogger'),(2,2,'net.kidlogger.kidlogger'),(3,3,'net.kidlogger.kidlogger'),(4,4,'net.kidlogger.kidlogger'),(5,13,'net.kidlogger.kidlogger'),(6,14,'net.kidlogger.kidlogger'),(7,15,'km.home'),(8,16,'km.home'),(9,17,'net.kidlogger.kidlogger'),(10,18,'km.home'),(11,31,'km.home'),(12,33,'com.jx.util'),(13,36,'com.android.packageinstaller'),(14,38,'km.home'),(15,39,'km.home'),(16,46,'com.jx.theme.n238625078'),(17,50,'NULL-CONSTANT'),(18,52,'com.jx.theme.n238625078'),(19,58,'com.km.launcher'),(20,60,'com.km.launcher'),(21,62,'com.android.packageinstaller'),(22,68,'com.km.launcher'),(23,77,'com.km.launcher'),(24,83,'com.jx.util'),(25,86,'com.jx.theme.n238625078'),(26,88,'com.jx.util'),(27,91,'com.jx.theme.n238625078'),(28,92,'com.jx.theme.n238625078'),(29,93,'com.jx.util'),(30,94,'com.jx.theme.n238625078'),(31,95,'com.jx.util'),(32,96,'com.jx.util'),(33,97,'com.jx.theme.n238625078'),(34,98,'com.jx.theme.n238625078');
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
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,7,0),(3,8,0),(4,10,0),(5,10,0),(6,13,0),(7,13,0),(8,13,0),(9,13,0),(10,13,0),(11,13,0),(12,14,0),(13,17,0),(14,18,0),(15,17,0),(16,19,0),(17,20,0),(18,21,0),(19,22,0),(20,24,0),(21,27,0),(22,29,0),(23,30,0),(24,31,0),(25,32,0),(26,33,0),(27,34,0),(28,35,0),(29,36,0),(30,38,0),(31,8,0),(32,39,0),(33,40,0),(34,41,0),(35,42,0),(36,43,0),(37,44,0),(38,45,0),(39,46,0),(40,30,0),(41,21,0),(42,47,0),(43,24,0),(44,27,0),(45,48,0),(46,30,0),(47,31,0),(48,49,0),(49,33,0),(50,36,0),(51,50,0),(52,8,0),(53,40,0),(54,51,0),(55,42,0),(56,44,0),(57,52,0),(58,53,0),(59,21,0),(60,54,0),(61,55,0),(62,56,0),(63,57,0),(64,33,0),(65,58,0),(66,59,0),(67,60,0),(68,61,0),(69,62,0),(70,63,0),(71,64,0),(72,65,0),(73,66,0),(74,67,0),(75,68,0),(76,69,0),(77,21,0),(78,70,0),(79,24,0),(80,27,0),(81,71,0),(82,30,0),(83,31,0),(84,72,0),(85,33,0),(86,36,0),(87,73,0),(88,8,0),(89,40,0),(90,75,0),(91,74,0),(92,42,0),(93,44,0),(94,74,0),(95,76,0),(96,77,0),(97,77,0),(98,24,0),(99,13,0),(100,13,0),(101,78,0),(102,31,0),(103,79,0),(104,79,0),(105,42,0),(106,80,0),(107,81,0),(108,82,0),(109,83,0),(110,84,0),(111,85,0),(112,36,0),(113,77,0),(114,86,0),(115,87,0),(116,74,0),(117,74,0),(118,77,0),(119,77,0),(120,88,0),(121,13,0),(122,13,0),(123,79,0),(124,79,0),(125,89,0),(126,81,0),(127,81,0),(128,84,0),(129,84,0),(130,90,0),(131,77,0),(132,91,0),(133,74,0),(134,92,0),(135,77,0),(136,13,0),(137,94,0),(138,79,0),(139,81,0),(140,95,0),(141,84,0),(142,96,0),(143,97,0),(144,98,0),(145,99,0),(146,100,0),(147,74,0),(148,101,0),(149,77,0),(150,13,0),(151,103,0),(152,79,0),(153,104,0),(154,81,0),(155,84,0),(156,105,0),(157,106,0),(158,107,0),(159,108,0),(160,107,0),(161,109,0),(162,109,0),(163,110,0),(164,112,0),(165,113,0),(166,114,0),(167,115,0),(168,116,0),(169,117,0),(170,118,0),(171,119,0),(172,120,0),(173,121,0),(174,122,0),(175,123,0),(176,124,0),(177,118,0),(178,35,0),(179,125,0),(180,119,0),(181,126,0),(182,127,0),(183,125,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,1,0),(6,5,1,0),(7,5,1,0),(8,5,1,0),(9,5,1,0),(10,5,1,0),(11,5,1,0),(12,5,1,0),(13,6,0,0),(14,8,0,0),(15,9,0,0),(16,11,0,0),(17,12,0,0),(18,14,0,0),(19,15,1,0),(20,15,1,0),(21,15,1,0),(22,15,1,0),(23,15,1,0),(24,16,1,0),(25,15,1,0),(26,15,1,0),(27,16,1,0),(28,16,1,0),(29,15,1,0),(30,16,1,0),(31,17,0,0),(32,16,1,0),(33,18,1,0),(34,16,1,0),(35,16,1,0),(36,19,0,0),(37,16,1,0),(38,22,0,0),(39,23,0,0),(40,24,1,0),(41,25,1,0),(42,26,1,0),(43,27,1,0),(44,28,1,0),(45,29,1,0),(46,30,0,0),(47,31,1,0),(48,32,1,0),(49,33,1,0),(50,34,0,0),(51,35,1,0),(52,36,0,0),(53,38,1,0),(54,39,1,0),(55,41,1,0),(56,42,1,0),(57,44,1,0),(58,45,0,0),(59,47,1,0),(60,48,0,0),(61,49,1,0),(62,50,0,0),(63,51,1,0),(64,51,1,0),(65,53,1,0),(66,55,1,0),(67,55,1,0),(68,57,0,0),(69,55,1,0),(70,55,1,0),(71,59,1,0),(72,55,1,0),(73,59,1,0),(74,60,1,0),(75,62,1,0),(76,64,1,0),(77,65,0,0),(78,66,1,0),(79,67,1,0),(80,68,1,0),(81,67,1,0),(82,67,1,0),(83,69,1,0),(84,67,1,0),(85,67,1,0),(86,69,0,0),(87,67,1,0),(88,69,1,0),(89,67,1,0),(90,67,1,0),(91,69,0,0),(92,69,0,0),(93,69,1,0),(94,69,0,0),(95,69,1,0),(96,69,1,0),(97,69,0,0),(98,77,0,0),(99,79,1,0),(100,82,1,0),(101,83,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (6,'android.permission.ACCESS_COARSE_LOCATION'),(13,'android.permission.ACCESS_FINE_LOCATION'),(48,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(42,'android.permission.ACCESS_MOCK_LOCATION'),(21,'android.permission.ACCESS_NETWORK_STATE'),(4,'android.permission.ACCESS_WIFI_STATE'),(23,'android.permission.CALL_PHONE'),(30,'android.permission.CHANGE_NETWORK_STATE'),(12,'android.permission.CHANGE_WIFI_STATE'),(26,'android.permission.EXPAND_STATUS_BAR'),(34,'android.permission.GET_ACCOUNTS'),(1,'android.permission.GET_TASKS'),(24,'android.permission.GLOBAL_SEARCH_CONTROL'),(11,'android.permission.INTERNET'),(43,'android.permission.KILL_BACKGROUND_PROCESSES'),(40,'android.permission.MANAGE_ACCOUNTS'),(46,'android.permission.MODIFY_PHONE_STATE'),(3,'android.permission.PROCESS_OUTGOING_CALLS'),(37,'android.permission.READ_CALENDAR'),(7,'android.permission.READ_CONTACTS'),(8,'android.permission.READ_PHONE_STATE'),(9,'android.permission.READ_SMS'),(47,'android.permission.READ_SYNC_SETTINGS'),(10,'android.permission.RECEIVE_BOOT_COMPLETED'),(19,'android.permission.RECEIVE_MMS'),(5,'android.permission.RECEIVE_SMS'),(15,'android.permission.RECEIVE_WAP_PUSH'),(36,'android.permission.RESTART_PACKAGES'),(2,'android.permission.SEND_SMS'),(38,'android.permission.SET_PREFERRED_APPLICATIONS'),(16,'android.permission.SET_WALLPAPER'),(25,'android.permission.SET_WALLPAPER_HINTS'),(39,'android.permission.SUBSCRIBED_FEEDS_READ'),(20,'android.permission.VIBRATE'),(31,'android.permission.WAKE_LOCK'),(17,'android.permission.WRITE_APN_SETTINGS'),(44,'android.permission.WRITE_CALENDAR'),(35,'android.permission.WRITE_CONTACTS'),(22,'android.permission.WRITE_EXTERNAL_STORAGE'),(27,'android.permission.WRITE_SETTINGS'),(18,'android.permission.WRITE_SMS'),(45,'android.permission.WRITE_SYNC_SETTINGS'),(14,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(32,'com.android.launcher.permission.INSTALL_SHORTCUT'),(28,'com.android.launcher.permission.READ_SETTINGS'),(49,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(29,'com.android.launcher.permission.WRITE_SETTINGS'),(41,'com.android.vending.CHECK_LICENSE');
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
INSERT INTO `Permissions` VALUES (28,'n'),(29,'n'),(32,'n'),(49,'n');
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://sms',NULL,NULL,NULL),(2,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(4,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(5,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(6,'package','',NULL,NULL,NULL,NULL),(7,'package','',NULL,NULL,NULL,NULL),(8,'package','',NULL,NULL,NULL,NULL),(9,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(10,'package','',NULL,NULL,NULL,NULL),(11,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(12,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(13,'package','',NULL,NULL,NULL,NULL),(14,'package','',NULL,NULL,NULL,NULL),(15,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(16,'package','',NULL,NULL,NULL,NULL),(17,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(18,'package','',NULL,NULL,NULL,NULL),(19,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(20,'package','',NULL,NULL,NULL,NULL),(21,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(22,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=(.*)',NULL,NULL,NULL),(23,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(24,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=NULL-CONSTANT',NULL,NULL,NULL),(25,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(26,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(27,'tel','(.*)',NULL,NULL,NULL,NULL),(28,'package','',NULL,NULL,NULL,NULL),(29,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(30,'package','',NULL,NULL,NULL,NULL),(31,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(32,'package','',NULL,NULL,NULL,NULL),(33,'package','',NULL,NULL,NULL,NULL),(34,'package','',NULL,NULL,NULL,NULL),(35,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(36,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(37,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=false',NULL,NULL,NULL),(38,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(39,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(40,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(41,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(42,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(43,'package','',NULL,NULL,NULL,NULL),(44,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(45,'package','',NULL,NULL,NULL,NULL),(46,'package','',NULL,NULL,NULL,NULL),(47,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(48,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,7,1),(2,10,2),(3,37,12),(4,40,15),(5,43,17),(6,46,19),(7,52,23),(8,54,25),(9,56,26),(10,61,29),(11,63,31),(12,70,35),(13,72,36),(14,73,37),(15,73,38),(16,74,39),(17,75,40),(18,76,41),(19,78,42),(20,81,44),(21,84,47),(22,85,48);
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
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,2,17),(16,2,16),(17,2,19),(18,2,2),(19,2,18),(20,2,21),(21,2,20),(22,2,5),(23,2,8),(24,2,9),(25,2,11),(26,2,15),(27,3,1),(28,4,17),(29,3,2),(30,4,16),(31,3,5),(32,4,19),(33,3,7),(34,4,2),(35,3,8),(36,4,21),(37,3,9),(38,4,5),(39,3,11),(40,4,22),(41,3,15),(42,4,8),(43,3,17),(44,3,16),(45,4,27),(46,3,19),(47,3,19),(48,4,10),(49,3,18),(50,3,18),(51,4,11),(52,3,21),(53,3,21),(54,4,31),(55,3,20),(56,3,23),(57,4,30),(58,3,22),(59,3,22),(60,3,25),(61,3,25),(62,3,24),(63,3,24),(64,3,27),(65,3,27),(66,3,26),(67,3,26),(68,3,29),(69,3,29),(70,3,28),(71,3,28),(72,5,2),(73,5,5),(74,5,6),(75,5,7),(76,5,8),(77,5,9),(78,5,10),(79,5,11),(80,5,13),(81,5,17),(82,5,18),(83,5,21),(84,5,20),(85,5,23),(86,5,22),(87,5,27),(88,5,31),(89,5,30),(90,5,34),(91,5,35),(92,5,38),(93,5,39),(94,5,36),(95,5,37),(96,5,42),(97,5,43),(98,5,40),(99,5,41),(100,5,46),(101,5,47),(102,5,44),(103,5,45),(104,5,48);
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

-- Dump completed on 2015-10-09  0:39:59
