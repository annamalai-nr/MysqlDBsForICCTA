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
) ENGINE=InnoDB AUTO_INCREMENT=4057 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,1,3,2,NULL),(2,19,34,2,NULL),(3,4,7,2,NULL),(4,20,34,2,NULL),(5,13,6,2,NULL),(6,21,34,2,NULL),(7,14,4,2,NULL),(8,22,34,2,NULL),(9,17,5,2,NULL),(10,23,34,2,NULL),(11,19,1,2,NULL),(12,25,34,2,NULL),(13,20,1,2,NULL),(14,26,34,2,NULL),(15,21,1,2,NULL),(16,29,34,2,NULL),(17,22,1,2,NULL),(18,24,34,2,NULL),(19,23,1,2,NULL),(20,27,34,2,NULL),(21,25,1,2,NULL),(22,28,34,2,NULL),(23,26,1,2,NULL),(24,30,34,2,NULL),(25,29,1,2,NULL),(26,32,34,2,NULL),(27,24,1,2,NULL),(28,34,34,2,NULL),(29,27,1,2,NULL),(30,35,34,2,NULL),(31,28,1,2,NULL),(32,37,34,2,NULL),(33,30,1,2,NULL),(34,71,34,2,NULL),(35,32,1,2,NULL),(36,79,34,2,NULL),(37,34,1,2,NULL),(38,81,34,2,NULL),(39,35,1,2,NULL),(40,82,34,2,NULL),(41,37,1,2,NULL),(42,84,34,2,NULL),(43,71,1,2,NULL),(44,85,34,2,NULL),(45,79,1,2,NULL),(46,87,34,2,NULL),(47,81,1,2,NULL),(48,89,34,2,NULL),(49,82,1,2,NULL),(50,90,34,2,NULL),(51,84,1,2,NULL),(52,51,34,2,NULL),(53,85,1,2,NULL),(54,61,34,2,NULL),(55,87,1,2,NULL),(56,66,34,2,NULL),(57,89,1,2,NULL),(58,67,34,2,NULL),(59,90,1,2,NULL),(60,69,34,2,NULL),(61,51,1,2,NULL),(62,70,34,2,NULL),(63,61,1,2,NULL),(64,72,34,2,NULL),(65,66,1,2,NULL),(66,83,34,2,NULL),(67,67,1,2,NULL),(68,88,34,2,NULL),(69,69,1,2,NULL),(70,93,34,2,NULL),(71,70,1,2,NULL),(72,95,34,2,NULL),(73,72,1,2,NULL),(74,96,34,2,NULL),(75,83,1,2,NULL),(76,65,34,2,NULL),(77,88,1,2,NULL),(78,19,38,2,NULL),(79,93,1,2,NULL),(80,20,38,2,NULL),(81,95,1,2,NULL),(82,21,38,2,NULL),(83,96,1,2,NULL),(84,22,38,2,NULL),(85,65,1,2,NULL),(86,23,38,2,NULL),(87,3,2,2,NULL),(88,25,38,2,NULL),(89,19,7,2,NULL),(90,26,38,2,NULL),(91,20,7,2,NULL),(92,29,38,2,NULL),(93,21,7,2,NULL),(94,24,38,2,NULL),(95,22,7,2,NULL),(96,27,38,2,NULL),(97,23,7,2,NULL),(98,28,38,2,NULL),(99,25,7,2,NULL),(100,30,38,2,NULL),(101,26,7,2,NULL),(102,32,38,2,NULL),(103,29,7,2,NULL),(104,34,38,2,NULL),(105,24,7,2,NULL),(106,35,38,2,NULL),(107,27,7,2,NULL),(108,37,38,2,NULL),(109,28,7,2,NULL),(110,71,38,2,NULL),(111,30,7,2,NULL),(112,79,38,2,NULL),(113,32,7,2,NULL),(114,81,38,2,NULL),(115,34,7,2,NULL),(116,82,38,2,NULL),(117,35,7,2,NULL),(118,84,38,2,NULL),(119,37,7,2,NULL),(120,85,38,2,NULL),(121,71,7,2,NULL),(122,87,38,2,NULL),(123,79,7,2,NULL),(124,89,38,2,NULL),(125,81,7,2,NULL),(126,90,38,2,NULL),(127,82,7,2,NULL),(128,51,38,2,NULL),(129,84,7,2,NULL),(130,61,38,2,NULL),(131,85,7,2,NULL),(132,66,38,2,NULL),(133,87,7,2,NULL),(134,67,38,2,NULL),(135,89,7,2,NULL),(136,69,38,2,NULL),(137,90,7,2,NULL),(138,70,38,2,NULL),(139,51,7,2,NULL),(140,72,38,2,NULL),(141,61,7,2,NULL),(142,83,38,2,NULL),(143,66,7,2,NULL),(144,88,38,2,NULL),(145,67,7,2,NULL),(146,93,38,2,NULL),(147,69,7,2,NULL),(148,95,38,2,NULL),(149,70,7,2,NULL),(150,96,38,2,NULL),(151,72,7,2,NULL),(152,65,38,2,NULL),(153,83,7,2,NULL),(154,19,39,2,NULL),(155,88,7,2,NULL),(156,20,39,2,NULL),(157,93,7,2,NULL),(158,21,39,2,NULL),(159,95,7,2,NULL),(160,22,39,2,NULL),(161,96,7,2,NULL),(162,23,39,2,NULL),(163,65,7,2,NULL),(164,25,39,2,NULL),(165,2,7,2,NULL),(166,26,39,2,NULL),(167,19,8,2,NULL),(168,29,39,2,NULL),(169,20,8,2,NULL),(170,24,39,2,NULL),(171,21,8,2,NULL),(172,27,39,2,NULL),(173,22,8,2,NULL),(174,28,39,2,NULL),(175,23,8,2,NULL),(176,30,39,2,NULL),(177,25,8,2,NULL),(178,32,39,2,NULL),(179,26,8,2,NULL),(180,34,39,2,NULL),(181,29,8,2,NULL),(182,35,39,2,NULL),(183,24,8,2,NULL),(184,37,39,2,NULL),(185,27,8,2,NULL),(186,71,39,2,NULL),(187,28,8,2,NULL),(188,79,39,2,NULL),(189,30,8,2,NULL),(190,81,39,2,NULL),(191,32,8,2,NULL),(192,82,39,2,NULL),(193,34,8,2,NULL),(194,84,39,2,NULL),(195,35,8,2,NULL),(196,85,39,2,NULL),(197,37,8,2,NULL),(198,87,39,2,NULL),(199,71,8,2,NULL),(200,89,39,2,NULL),(201,79,8,2,NULL),(202,90,39,2,NULL),(203,81,8,2,NULL),(204,51,39,2,NULL),(205,82,8,2,NULL),(206,61,39,2,NULL),(207,84,8,2,NULL),(208,66,39,2,NULL),(209,85,8,2,NULL),(210,67,39,2,NULL),(211,87,8,2,NULL),(212,69,39,2,NULL),(213,89,8,2,NULL),(214,70,39,2,NULL),(215,90,8,2,NULL),(216,72,39,2,NULL),(217,51,8,2,NULL),(218,83,39,2,NULL),(219,61,8,2,NULL),(220,88,39,2,NULL),(221,66,8,2,NULL),(222,93,39,2,NULL),(223,67,8,2,NULL),(224,95,39,2,NULL),(225,69,8,2,NULL),(226,96,39,2,NULL),(227,70,8,2,NULL),(228,65,39,2,NULL),(229,72,8,2,NULL),(230,19,41,2,NULL),(231,83,8,2,NULL),(232,20,41,2,NULL),(233,88,8,2,NULL),(234,21,41,2,NULL),(235,93,8,2,NULL),(236,22,41,2,NULL),(237,95,8,2,NULL),(238,23,41,2,NULL),(239,96,8,2,NULL),(240,25,41,2,NULL),(241,65,8,2,NULL),(242,26,41,2,NULL),(243,19,21,2,NULL),(244,29,41,2,NULL),(245,20,21,2,NULL),(246,24,41,2,NULL),(247,21,21,2,NULL),(248,27,41,2,NULL),(249,22,21,2,NULL),(250,28,41,2,NULL),(251,23,21,2,NULL),(252,30,41,2,NULL),(253,25,21,2,NULL),(254,32,41,2,NULL),(255,26,21,2,NULL),(256,34,41,2,NULL),(257,29,21,2,NULL),(258,35,41,2,NULL),(259,24,21,2,NULL),(260,37,41,2,NULL),(261,27,21,2,NULL),(262,71,41,2,NULL),(263,28,21,2,NULL),(264,79,41,2,NULL),(265,30,21,2,NULL),(266,81,41,2,NULL),(267,32,21,2,NULL),(268,82,41,2,NULL),(269,34,21,2,NULL),(270,84,41,2,NULL),(271,35,21,2,NULL),(272,85,41,2,NULL),(273,37,21,2,NULL),(274,87,41,2,NULL),(275,71,21,2,NULL),(276,89,41,2,NULL),(277,79,21,2,NULL),(278,90,41,2,NULL),(279,81,21,2,NULL),(280,51,41,2,NULL),(281,82,21,2,NULL),(282,61,41,2,NULL),(283,84,21,2,NULL),(284,66,41,2,NULL),(285,85,21,2,NULL),(286,67,41,2,NULL),(287,87,21,2,NULL),(288,69,41,2,NULL),(289,89,21,2,NULL),(290,70,41,2,NULL),(291,90,21,2,NULL),(292,72,41,2,NULL),(293,51,21,2,NULL),(294,83,41,2,NULL),(295,61,21,2,NULL),(296,88,41,2,NULL),(297,66,21,2,NULL),(298,93,41,2,NULL),(299,67,21,2,NULL),(300,95,41,2,NULL),(301,69,21,2,NULL),(302,96,41,2,NULL),(303,70,21,2,NULL),(304,65,41,2,NULL),(305,72,21,2,NULL),(306,19,43,2,NULL),(307,83,21,2,NULL),(308,20,43,2,NULL),(309,88,21,2,NULL),(310,21,43,2,NULL),(311,93,21,2,NULL),(312,22,43,2,NULL),(313,95,21,2,NULL),(314,23,43,2,NULL),(315,96,21,2,NULL),(316,25,43,2,NULL),(317,65,21,2,NULL),(318,26,43,2,NULL),(319,19,24,2,NULL),(320,29,43,2,NULL),(321,20,24,2,NULL),(322,24,43,2,NULL),(323,21,24,2,NULL),(324,27,43,2,NULL),(325,22,24,2,NULL),(326,28,43,2,NULL),(327,23,24,2,NULL),(328,30,43,2,NULL),(329,25,24,2,NULL),(330,32,43,2,NULL),(331,26,24,2,NULL),(332,34,43,2,NULL),(333,29,24,2,NULL),(334,35,43,2,NULL),(335,24,24,2,NULL),(336,37,43,2,NULL),(337,27,24,2,NULL),(338,71,43,2,NULL),(339,28,24,2,NULL),(340,79,43,2,NULL),(341,30,24,2,NULL),(342,81,43,2,NULL),(343,32,24,2,NULL),(344,82,43,2,NULL),(345,34,24,2,NULL),(346,84,43,2,NULL),(347,35,24,2,NULL),(348,85,43,2,NULL),(349,60,23,2,NULL),(350,37,24,2,NULL),(351,87,43,2,NULL),(352,71,24,2,NULL),(353,89,43,2,NULL),(354,79,24,2,NULL),(355,90,43,2,NULL),(356,81,24,2,NULL),(357,82,24,2,NULL),(358,51,43,2,NULL),(359,84,24,2,NULL),(360,61,43,2,NULL),(361,85,24,2,NULL),(362,87,24,2,NULL),(363,66,43,2,NULL),(364,89,24,2,NULL),(365,67,43,2,NULL),(366,90,24,2,NULL),(367,51,24,2,NULL),(368,69,43,2,NULL),(369,61,24,2,NULL),(370,71,27,2,NULL),(371,70,43,2,NULL),(372,66,24,2,NULL),(373,79,27,2,NULL),(374,72,43,2,NULL),(375,67,24,2,NULL),(376,83,43,2,NULL),(377,81,27,2,NULL),(378,69,24,2,NULL),(379,88,43,2,NULL),(380,70,24,2,NULL),(381,82,27,2,NULL),(382,93,43,2,NULL),(383,72,24,2,NULL),(384,95,43,2,NULL),(385,84,27,2,NULL),(386,83,24,2,NULL),(387,96,43,2,NULL),(388,88,24,2,NULL),(389,85,27,2,NULL),(390,65,43,2,NULL),(391,93,24,2,NULL),(392,19,45,2,NULL),(393,87,27,2,NULL),(394,95,24,2,NULL),(395,20,45,2,NULL),(396,96,24,2,NULL),(397,89,27,2,NULL),(398,21,45,2,NULL),(399,65,24,2,NULL),(400,22,45,2,NULL),(401,90,27,2,NULL),(402,19,27,2,NULL),(403,23,45,2,NULL),(404,20,27,2,NULL),(405,71,30,2,NULL),(406,25,45,2,NULL),(407,21,27,2,NULL),(408,79,30,2,NULL),(409,26,45,2,NULL),(410,22,27,2,NULL),(411,29,45,2,NULL),(412,81,30,2,NULL),(413,23,27,2,NULL),(414,24,45,2,NULL),(415,82,30,2,NULL),(416,25,27,2,NULL),(417,27,45,2,NULL),(418,26,27,2,NULL),(419,84,30,2,NULL),(420,28,45,2,NULL),(421,29,27,2,NULL),(422,30,45,2,NULL),(423,85,30,2,NULL),(424,24,27,2,NULL),(425,32,45,2,NULL),(426,27,27,2,NULL),(427,87,30,2,NULL),(428,34,45,2,NULL),(429,28,27,2,NULL),(430,89,30,2,NULL),(431,35,45,2,NULL),(432,30,27,2,NULL),(433,90,30,2,NULL),(434,37,45,2,NULL),(435,32,27,2,NULL),(436,71,45,2,NULL),(437,71,31,2,NULL),(438,34,27,2,NULL),(439,79,45,2,NULL),(440,79,31,2,NULL),(441,35,27,2,NULL),(442,81,45,2,NULL),(443,81,31,2,NULL),(444,37,27,2,NULL),(445,82,45,2,NULL),(446,82,31,2,NULL),(447,51,27,2,NULL),(448,84,45,2,NULL),(449,84,31,2,NULL),(450,61,27,2,NULL),(451,85,45,2,NULL),(452,85,31,2,NULL),(453,66,27,2,NULL),(454,87,45,2,NULL),(455,87,31,2,NULL),(456,67,27,2,NULL),(457,89,45,2,NULL),(458,89,31,2,NULL),(459,69,27,2,NULL),(460,90,45,2,NULL),(461,90,31,2,NULL),(462,70,27,2,NULL),(463,51,45,2,NULL),(464,71,33,2,NULL),(465,72,27,2,NULL),(466,79,33,2,NULL),(467,61,45,2,NULL),(468,83,27,2,NULL),(469,66,45,2,NULL),(470,81,33,2,NULL),(471,88,27,2,NULL),(472,67,45,2,NULL),(473,82,33,2,NULL),(474,93,27,2,NULL),(475,84,33,2,NULL),(476,69,45,2,NULL),(477,95,27,2,NULL),(478,85,33,2,NULL),(479,70,45,2,NULL),(480,96,27,2,NULL),(481,72,45,2,NULL),(482,87,33,2,NULL),(483,65,27,2,NULL),(484,83,45,2,NULL),(485,89,33,2,NULL),(486,19,30,2,NULL),(487,90,33,2,NULL),(488,88,45,2,NULL),(489,20,30,2,NULL),(490,93,45,2,NULL),(491,71,36,2,NULL),(492,21,30,2,NULL),(493,95,45,2,NULL),(494,79,36,2,NULL),(495,22,30,2,NULL),(496,96,45,2,NULL),(497,81,36,2,NULL),(498,23,30,2,NULL),(499,65,45,2,NULL),(500,82,36,2,NULL),(501,25,30,2,NULL),(502,19,46,2,NULL),(503,84,36,2,NULL),(504,26,30,2,NULL),(505,20,46,2,NULL),(506,85,36,2,NULL),(507,29,30,2,NULL),(508,87,36,2,NULL),(509,21,46,2,NULL),(510,24,30,2,NULL),(511,22,46,2,NULL),(512,89,36,2,NULL),(513,27,30,2,NULL),(514,23,46,2,NULL),(515,90,36,2,NULL),(516,28,30,2,NULL),(517,25,46,2,NULL),(518,71,40,2,NULL),(519,30,30,2,NULL),(520,79,40,2,NULL),(521,26,46,2,NULL),(522,32,30,2,NULL),(523,81,40,2,NULL),(524,29,46,2,NULL),(525,34,30,2,NULL),(526,24,46,2,NULL),(527,82,40,2,NULL),(528,35,30,2,NULL),(529,27,46,2,NULL),(530,84,40,2,NULL),(531,37,30,2,NULL),(532,85,40,2,NULL),(533,28,46,2,NULL),(534,30,46,2,NULL),(535,87,40,2,NULL),(536,51,30,2,NULL),(537,32,46,2,NULL),(538,89,40,2,NULL),(539,61,30,2,NULL),(540,34,46,2,NULL),(541,66,30,2,NULL),(542,90,40,2,NULL),(543,35,46,2,NULL),(544,67,30,2,NULL),(545,71,42,2,NULL),(546,37,46,2,NULL),(547,69,30,2,NULL),(548,79,42,2,NULL),(549,71,46,2,NULL),(550,81,42,2,NULL),(551,70,30,2,NULL),(552,79,46,2,NULL),(553,82,42,2,NULL),(554,72,30,2,NULL),(555,81,46,2,NULL),(556,83,30,2,NULL),(557,84,42,2,NULL),(558,82,46,2,NULL),(559,88,30,2,NULL),(560,85,42,2,NULL),(561,84,46,2,NULL),(562,87,42,2,NULL),(563,93,30,2,NULL),(564,85,46,2,NULL),(565,95,30,2,NULL),(566,89,42,2,NULL),(567,87,46,2,NULL),(568,90,42,2,NULL),(569,96,30,2,NULL),(570,89,46,2,NULL),(571,65,30,2,NULL),(572,71,44,2,NULL),(573,90,46,2,NULL),(574,19,31,2,NULL),(575,79,44,2,NULL),(576,51,46,2,NULL),(577,20,31,2,NULL),(578,81,44,2,NULL),(579,61,46,2,NULL),(580,21,31,2,NULL),(581,82,44,2,NULL),(582,66,46,2,NULL),(583,84,44,2,NULL),(584,22,31,2,NULL),(585,67,46,2,NULL),(586,85,44,2,NULL),(587,23,31,2,NULL),(588,69,46,2,NULL),(589,25,31,2,NULL),(590,87,44,2,NULL),(591,70,46,2,NULL),(592,26,31,2,NULL),(593,89,44,2,NULL),(594,72,46,2,NULL),(595,29,31,2,NULL),(596,90,44,2,NULL),(597,83,46,2,NULL),(598,19,18,2,NULL),(599,24,31,2,NULL),(600,88,46,2,NULL),(601,27,31,2,NULL),(602,20,18,2,NULL),(603,93,46,2,NULL),(604,28,31,2,NULL),(605,21,18,2,NULL),(606,95,46,2,NULL),(607,22,18,2,NULL),(608,30,31,2,NULL),(609,96,46,2,NULL),(610,32,31,2,NULL),(611,23,18,2,NULL),(612,65,46,2,NULL),(613,25,18,2,NULL),(614,34,31,2,NULL),(615,19,47,2,NULL),(616,35,31,2,NULL),(617,26,18,2,NULL),(618,20,47,2,NULL),(619,29,18,2,NULL),(620,37,31,2,NULL),(621,21,47,2,NULL),(622,24,18,2,NULL),(623,51,31,2,NULL),(624,22,47,2,NULL),(625,61,31,2,NULL),(626,27,18,2,NULL),(627,23,47,2,NULL),(628,28,18,2,NULL),(629,66,31,2,NULL),(630,25,47,2,NULL),(631,30,18,2,NULL),(632,67,31,2,NULL),(633,26,47,2,NULL),(634,32,18,2,NULL),(635,69,31,2,NULL),(636,29,47,2,NULL),(637,34,18,2,NULL),(638,70,31,2,NULL),(639,24,47,2,NULL),(640,72,31,2,NULL),(641,35,18,2,NULL),(642,27,47,2,NULL),(643,37,18,2,NULL),(644,83,31,2,NULL),(645,28,47,2,NULL),(646,71,10,2,NULL),(647,88,31,2,NULL),(648,30,47,2,NULL),(649,79,10,2,NULL),(650,93,31,2,NULL),(651,32,47,2,NULL),(652,81,10,2,NULL),(653,95,31,2,NULL),(654,34,47,2,NULL),(655,82,10,2,NULL),(656,96,31,2,NULL),(657,35,47,2,NULL),(658,84,10,2,NULL),(659,65,31,2,NULL),(660,37,47,2,NULL),(661,85,10,2,NULL),(662,19,33,2,NULL),(663,71,47,2,NULL),(664,20,33,2,NULL),(665,87,10,2,NULL),(666,79,47,2,NULL),(667,21,33,2,NULL),(668,89,10,2,NULL),(669,81,47,2,NULL),(670,22,33,2,NULL),(671,82,47,2,NULL),(672,90,10,2,NULL),(673,23,33,2,NULL),(674,84,47,2,NULL),(675,71,13,2,NULL),(676,25,33,2,NULL),(677,85,47,2,NULL),(678,79,13,2,NULL),(679,26,33,2,NULL),(680,87,47,2,NULL),(681,81,13,2,NULL),(682,29,33,2,NULL),(683,89,47,2,NULL),(684,82,13,2,NULL),(685,24,33,2,NULL),(686,90,47,2,NULL),(687,84,13,2,NULL),(688,27,33,2,NULL),(689,51,47,2,NULL),(690,85,13,2,NULL),(691,28,33,2,NULL),(692,61,47,2,NULL),(693,87,13,2,NULL),(694,30,33,2,NULL),(695,66,47,2,NULL),(696,89,13,2,NULL),(697,32,33,2,NULL),(698,67,47,2,NULL),(699,90,13,2,NULL),(700,34,33,2,NULL),(701,69,47,2,NULL),(702,71,74,2,NULL),(703,35,33,2,NULL),(704,70,47,2,NULL),(705,79,74,2,NULL),(706,37,33,2,NULL),(707,72,47,2,NULL),(708,81,74,2,NULL),(709,51,33,2,NULL),(710,83,47,2,NULL),(711,82,74,2,NULL),(712,61,33,2,NULL),(713,84,74,2,NULL),(714,88,47,2,NULL),(715,66,33,2,NULL),(716,85,74,2,NULL),(717,93,47,2,NULL),(718,67,33,2,NULL),(719,95,47,2,NULL),(720,87,74,2,NULL),(721,69,33,2,NULL),(722,89,74,2,NULL),(723,96,47,2,NULL),(724,70,33,2,NULL),(725,65,47,2,NULL),(726,90,74,2,NULL),(727,72,33,2,NULL),(728,19,48,2,NULL),(729,71,77,2,NULL),(730,83,33,2,NULL),(731,20,48,2,NULL),(732,79,77,2,NULL),(733,88,33,2,NULL),(734,21,48,2,NULL),(735,81,77,2,NULL),(736,93,33,2,NULL),(737,22,48,2,NULL),(738,82,77,2,NULL),(739,95,33,2,NULL),(740,23,48,2,NULL),(741,84,77,2,NULL),(742,96,33,2,NULL),(743,25,48,2,NULL),(744,85,77,2,NULL),(745,65,33,2,NULL),(746,26,48,2,NULL),(747,87,77,2,NULL),(748,19,36,2,NULL),(749,29,48,2,NULL),(750,89,77,2,NULL),(751,20,36,2,NULL),(752,90,77,2,NULL),(753,24,48,2,NULL),(754,21,36,2,NULL),(755,71,79,2,NULL),(756,27,48,2,NULL),(757,22,36,2,NULL),(758,28,48,2,NULL),(759,79,79,2,NULL),(760,23,36,2,NULL),(761,30,48,2,NULL),(762,81,79,2,NULL),(763,25,36,2,NULL),(764,32,48,2,NULL),(765,82,79,2,NULL),(766,26,36,2,NULL),(767,34,48,2,NULL),(768,84,79,2,NULL),(769,29,36,2,NULL),(770,35,48,2,NULL),(771,85,79,2,NULL),(772,24,36,2,NULL),(773,37,48,2,NULL),(774,87,79,2,NULL),(775,27,36,2,NULL),(776,71,48,2,NULL),(777,89,79,2,NULL),(778,28,36,2,NULL),(779,79,48,2,NULL),(780,90,79,2,NULL),(781,30,36,2,NULL),(782,81,48,2,NULL),(783,71,81,2,NULL),(784,32,36,2,NULL),(785,82,48,2,NULL),(786,79,81,2,NULL),(787,34,36,2,NULL),(788,84,48,2,NULL),(789,81,81,2,NULL),(790,35,36,2,NULL),(791,85,48,2,NULL),(792,82,81,2,NULL),(793,37,36,2,NULL),(794,87,48,2,NULL),(795,84,81,2,NULL),(796,89,48,2,NULL),(797,85,81,2,NULL),(798,51,36,2,NULL),(799,90,48,2,NULL),(800,61,36,2,NULL),(801,87,81,2,NULL),(802,51,48,2,NULL),(803,89,81,2,NULL),(804,66,36,2,NULL),(805,61,48,2,NULL),(806,90,81,2,NULL),(807,67,36,2,NULL),(808,66,48,2,NULL),(809,71,82,2,NULL),(810,69,36,2,NULL),(811,67,48,2,NULL),(812,79,82,2,NULL),(813,70,36,2,NULL),(814,69,48,2,NULL),(815,81,82,2,NULL),(816,72,36,2,NULL),(817,70,48,2,NULL),(818,82,82,2,NULL),(819,83,36,2,NULL),(820,72,48,2,NULL),(821,84,82,2,NULL),(822,88,36,2,NULL),(823,83,48,2,NULL),(824,85,82,2,NULL),(825,93,36,2,NULL),(826,88,48,2,NULL),(827,87,82,2,NULL),(828,95,36,2,NULL),(829,93,48,2,NULL),(830,89,82,2,NULL),(831,96,36,2,NULL),(832,95,48,2,NULL),(833,90,82,2,NULL),(834,65,36,2,NULL),(835,96,48,2,NULL),(836,71,84,2,NULL),(837,19,40,2,NULL),(838,65,48,2,NULL),(839,79,84,2,NULL),(840,20,40,2,NULL),(841,19,49,2,NULL),(842,81,84,2,NULL),(843,21,40,2,NULL),(844,20,49,2,NULL),(845,82,84,2,NULL),(846,22,40,2,NULL),(847,21,49,2,NULL),(848,84,84,2,NULL),(849,23,40,2,NULL),(850,22,49,2,NULL),(851,25,40,2,NULL),(852,85,84,2,NULL),(853,23,49,2,NULL),(854,26,40,2,NULL),(855,87,84,2,NULL),(856,25,49,2,NULL),(857,29,40,2,NULL),(858,89,84,2,NULL),(859,26,49,2,NULL),(860,24,40,2,NULL),(861,90,84,2,NULL),(862,29,49,2,NULL),(863,27,40,2,NULL),(864,71,85,2,NULL),(865,24,49,2,NULL),(866,79,85,2,NULL),(867,28,40,2,NULL),(868,27,49,2,NULL),(869,81,85,2,NULL),(870,30,40,2,NULL),(871,28,49,2,NULL),(872,82,85,2,NULL),(873,32,40,2,NULL),(874,30,49,2,NULL),(875,84,85,2,NULL),(876,34,40,2,NULL),(877,32,49,2,NULL),(878,85,85,2,NULL),(879,35,40,2,NULL),(880,34,49,2,NULL),(881,87,85,2,NULL),(882,37,40,2,NULL),(883,35,49,2,NULL),(884,89,85,2,NULL),(885,51,40,2,NULL),(886,37,49,2,NULL),(887,90,85,2,NULL),(888,61,40,2,NULL),(889,71,49,2,NULL),(890,71,20,2,NULL),(891,66,40,2,NULL),(892,79,49,2,NULL),(893,79,20,2,NULL),(894,67,40,2,NULL),(895,81,49,2,NULL),(896,81,20,2,NULL),(897,69,40,2,NULL),(898,82,49,2,NULL),(899,82,20,2,NULL),(900,70,40,2,NULL),(901,84,49,2,NULL),(902,84,20,2,NULL),(903,72,40,2,NULL),(904,85,49,2,NULL),(905,83,40,2,NULL),(906,85,20,2,NULL),(907,87,49,2,NULL),(908,88,40,2,NULL),(909,87,20,2,NULL),(910,89,49,2,NULL),(911,89,20,2,NULL),(912,93,40,2,NULL),(913,90,49,2,NULL),(914,90,20,2,NULL),(915,95,40,2,NULL),(916,51,49,2,NULL),(917,96,40,2,NULL),(918,71,29,2,NULL),(919,61,49,2,NULL),(920,79,29,2,NULL),(921,65,40,2,NULL),(922,66,49,2,NULL),(923,81,29,2,NULL),(924,19,42,2,NULL),(925,67,49,2,NULL),(926,82,29,2,NULL),(927,20,42,2,NULL),(928,69,49,2,NULL),(929,84,29,2,NULL),(930,21,42,2,NULL),(931,70,49,2,NULL),(932,22,42,2,NULL),(933,85,29,2,NULL),(934,72,49,2,NULL),(935,87,29,2,NULL),(936,23,42,2,NULL),(937,83,49,2,NULL),(938,89,29,2,NULL),(939,25,42,2,NULL),(940,88,49,2,NULL),(941,90,29,2,NULL),(942,26,42,2,NULL),(943,93,49,2,NULL),(944,71,32,2,NULL),(945,29,42,2,NULL),(946,95,49,2,NULL),(947,79,32,2,NULL),(948,24,42,2,NULL),(949,96,49,2,NULL),(950,27,42,2,NULL),(951,81,32,2,NULL),(952,65,49,2,NULL),(953,82,32,2,NULL),(954,28,42,2,NULL),(955,19,50,2,NULL),(956,84,32,2,NULL),(957,30,42,2,NULL),(958,20,50,2,NULL),(959,85,32,2,NULL),(960,32,42,2,NULL),(961,21,50,2,NULL),(962,87,32,2,NULL),(963,34,42,2,NULL),(964,22,50,2,NULL),(965,89,32,2,NULL),(966,35,42,2,NULL),(967,23,50,2,NULL),(968,90,32,2,NULL),(969,37,42,2,NULL),(970,25,50,2,NULL),(971,71,35,2,NULL),(972,26,50,2,NULL),(973,51,42,2,NULL),(974,79,35,2,NULL),(975,29,50,2,NULL),(976,61,42,2,NULL),(977,81,35,2,NULL),(978,24,50,2,NULL),(979,66,42,2,NULL),(980,82,35,2,NULL),(981,67,42,2,NULL),(982,27,50,2,NULL),(983,84,35,2,NULL),(984,69,42,2,NULL),(985,28,50,2,NULL),(986,85,35,2,NULL),(987,70,42,2,NULL),(988,30,50,2,NULL),(989,87,35,2,NULL),(990,72,42,2,NULL),(991,32,50,2,NULL),(992,89,35,2,NULL),(993,34,50,2,NULL),(994,83,42,2,NULL),(995,90,35,2,NULL),(996,35,50,2,NULL),(997,88,42,2,NULL),(998,37,50,2,NULL),(999,71,118,2,NULL),(1000,93,42,2,NULL),(1001,71,50,2,NULL),(1002,95,42,2,NULL),(1003,79,118,2,NULL),(1004,79,50,2,NULL),(1005,81,118,2,NULL),(1006,96,42,2,NULL),(1007,81,50,2,NULL),(1008,82,118,2,NULL),(1009,65,42,2,NULL),(1010,82,50,2,NULL),(1011,84,118,2,NULL),(1012,19,44,2,NULL),(1013,84,50,2,NULL),(1014,85,118,2,NULL),(1015,20,44,2,NULL),(1016,85,50,2,NULL),(1017,87,118,2,NULL),(1018,21,44,2,NULL),(1019,87,50,2,NULL),(1020,22,44,2,NULL),(1021,89,118,2,NULL),(1022,89,50,2,NULL),(1023,23,44,2,NULL),(1024,90,118,2,NULL),(1025,90,50,2,NULL),(1026,71,119,2,NULL),(1027,25,44,2,NULL),(1028,51,50,2,NULL),(1029,79,119,2,NULL),(1030,26,44,2,NULL),(1031,61,50,2,NULL),(1032,81,119,2,NULL),(1033,29,44,2,NULL),(1034,66,50,2,NULL),(1035,24,44,2,NULL),(1036,82,119,2,NULL),(1037,67,50,2,NULL),(1038,27,44,2,NULL),(1039,84,119,2,NULL),(1040,69,50,2,NULL),(1041,85,119,2,NULL),(1042,28,44,2,NULL),(1043,70,50,2,NULL),(1044,87,119,2,NULL),(1045,30,44,2,NULL),(1046,72,50,2,NULL),(1047,32,44,2,NULL),(1048,89,119,2,NULL),(1049,83,50,2,NULL),(1050,34,44,2,NULL),(1051,90,119,2,NULL),(1052,88,50,2,NULL),(1053,71,125,2,NULL),(1054,35,44,2,NULL),(1055,93,50,2,NULL),(1056,79,125,2,NULL),(1057,37,44,2,NULL),(1058,95,50,2,NULL),(1059,81,125,2,NULL),(1060,51,44,2,NULL),(1061,96,50,2,NULL),(1062,82,125,2,NULL),(1063,65,50,2,NULL),(1064,61,44,2,NULL),(1065,84,125,2,NULL),(1066,66,44,2,NULL),(1067,85,125,2,NULL),(1068,19,51,2,NULL),(1069,67,44,2,NULL),(1070,20,51,2,NULL),(1071,87,125,2,NULL),(1072,69,44,2,NULL),(1073,21,51,2,NULL),(1074,89,125,2,NULL),(1075,70,44,2,NULL),(1076,90,125,2,NULL),(1077,22,51,2,NULL),(1078,72,44,2,NULL),(1079,71,14,2,NULL),(1080,23,51,2,NULL),(1081,83,44,2,NULL),(1082,79,14,2,NULL),(1083,25,51,2,NULL),(1084,88,44,2,NULL),(1085,81,14,2,NULL),(1086,26,51,2,NULL),(1087,93,44,2,NULL),(1088,82,14,2,NULL),(1089,29,51,2,NULL),(1090,95,44,2,NULL),(1091,84,14,2,NULL),(1092,24,51,2,NULL),(1093,96,44,2,NULL),(1094,27,51,2,NULL),(1095,85,14,2,NULL),(1096,65,44,2,NULL),(1097,28,51,2,NULL),(1098,87,14,2,NULL),(1099,30,51,2,NULL),(1100,89,14,2,NULL),(1101,32,51,2,NULL),(1102,90,14,2,NULL),(1103,34,51,2,NULL),(1104,51,18,2,NULL),(1105,35,51,2,NULL),(1106,61,18,2,NULL),(1107,37,51,2,NULL),(1108,66,18,2,NULL),(1109,71,51,2,NULL),(1110,67,18,2,NULL),(1111,79,51,2,NULL),(1112,69,18,2,NULL),(1113,81,51,2,NULL),(1114,70,18,2,NULL),(1115,82,51,2,NULL),(1116,72,18,2,NULL),(1117,84,51,2,NULL),(1118,83,18,2,NULL),(1119,85,51,2,NULL),(1120,88,18,2,NULL),(1121,87,51,2,NULL),(1122,93,18,2,NULL),(1123,89,51,2,NULL),(1124,95,18,2,NULL),(1125,90,51,2,NULL),(1126,96,18,2,NULL),(1127,51,51,2,NULL),(1128,65,18,2,NULL),(1129,61,51,2,NULL),(1130,71,17,2,NULL),(1131,66,51,2,NULL),(1132,79,17,2,NULL),(1133,67,51,2,NULL),(1134,81,17,2,NULL),(1135,69,51,2,NULL),(1136,82,17,2,NULL),(1137,70,51,2,NULL),(1138,84,17,2,NULL),(1139,72,51,2,NULL),(1140,85,17,2,NULL),(1141,83,51,2,NULL),(1142,87,17,2,NULL),(1143,88,51,2,NULL),(1144,89,17,2,NULL),(1145,93,51,2,NULL),(1146,90,17,2,NULL),(1147,95,51,2,NULL),(1148,71,19,2,NULL),(1149,96,51,2,NULL),(1150,79,19,2,NULL),(1151,65,51,2,NULL),(1152,81,19,2,NULL),(1153,19,52,2,NULL),(1154,82,19,2,NULL),(1155,20,52,2,NULL),(1156,84,19,2,NULL),(1157,21,52,2,NULL),(1158,85,19,2,NULL),(1159,22,52,2,NULL),(1160,87,19,2,NULL),(1161,23,52,2,NULL),(1162,89,19,2,NULL),(1163,25,52,2,NULL),(1164,90,19,2,NULL),(1165,26,52,2,NULL),(1166,71,22,2,NULL),(1167,29,52,2,NULL),(1168,79,22,2,NULL),(1169,24,52,2,NULL),(1170,81,22,2,NULL),(1171,27,52,2,NULL),(1172,82,22,2,NULL),(1173,28,52,2,NULL),(1174,84,22,2,NULL),(1175,30,52,2,NULL),(1176,85,22,2,NULL),(1177,32,52,2,NULL),(1178,87,22,2,NULL),(1179,34,52,2,NULL),(1180,89,22,2,NULL),(1181,35,52,2,NULL),(1182,90,22,2,NULL),(1183,37,52,2,NULL),(1184,71,108,2,NULL),(1185,71,52,2,NULL),(1186,79,108,2,NULL),(1187,79,52,2,NULL),(1188,81,108,2,NULL),(1189,81,52,2,NULL),(1190,82,108,2,NULL),(1191,82,52,2,NULL),(1192,84,108,2,NULL),(1193,84,52,2,NULL),(1194,85,108,2,NULL),(1195,85,52,2,NULL),(1196,87,108,2,NULL),(1197,87,52,2,NULL),(1198,89,108,2,NULL),(1199,89,52,2,NULL),(1200,90,108,2,NULL),(1201,90,52,2,NULL),(1202,71,113,2,NULL),(1203,51,52,2,NULL),(1204,79,113,2,NULL),(1205,61,52,2,NULL),(1206,81,113,2,NULL),(1207,66,52,2,NULL),(1208,82,113,2,NULL),(1209,67,52,2,NULL),(1210,84,113,2,NULL),(1211,69,52,2,NULL),(1212,85,113,2,NULL),(1213,70,52,2,NULL),(1214,87,113,2,NULL),(1215,89,113,2,NULL),(1216,72,52,2,NULL),(1217,90,113,2,NULL),(1218,71,116,2,NULL),(1219,83,52,2,NULL),(1220,79,116,2,NULL),(1221,81,116,2,NULL),(1222,88,52,2,NULL),(1223,82,116,2,NULL),(1224,84,116,2,NULL),(1225,93,52,2,NULL),(1226,85,116,2,NULL),(1227,87,116,2,NULL),(1228,95,52,2,NULL),(1229,89,116,2,NULL),(1230,90,116,2,NULL),(1231,96,52,2,NULL),(1232,71,120,2,NULL),(1233,79,120,2,NULL),(1234,65,52,2,NULL),(1235,81,120,2,NULL),(1236,82,120,2,NULL),(1237,19,53,2,NULL),(1238,84,120,2,NULL),(1239,85,120,2,NULL),(1240,20,53,2,NULL),(1241,87,120,2,NULL),(1242,89,120,2,NULL),(1243,21,53,2,NULL),(1244,90,120,2,NULL),(1245,71,53,2,NULL),(1246,22,53,2,NULL),(1247,79,53,2,NULL),(1248,81,53,2,NULL),(1249,23,53,2,NULL),(1250,82,53,2,NULL),(1251,84,53,2,NULL),(1252,25,53,2,NULL),(1253,85,53,2,NULL),(1254,87,53,2,NULL),(1255,26,53,2,NULL),(1256,89,53,2,NULL),(1257,90,53,2,NULL),(1258,29,53,2,NULL),(1259,71,54,2,NULL),(1260,79,54,2,NULL),(1261,24,53,2,NULL),(1262,81,54,2,NULL),(1263,82,54,2,NULL),(1264,27,53,2,NULL),(1265,84,54,2,NULL),(1266,85,54,2,NULL),(1267,28,53,2,NULL),(1268,87,54,2,NULL),(1269,89,54,2,NULL),(1270,30,53,2,NULL),(1271,90,54,2,NULL),(1272,71,55,2,NULL),(1273,32,53,2,NULL),(1274,79,55,2,NULL),(1275,81,55,2,NULL),(1276,34,53,2,NULL),(1277,82,55,2,NULL),(1278,84,55,2,NULL),(1279,35,53,2,NULL),(1280,85,55,2,NULL),(1281,87,55,2,NULL),(1282,37,53,2,NULL),(1283,89,55,2,NULL),(1284,89,55,2,NULL),(1285,51,53,2,NULL),(1286,90,55,2,NULL),(1287,71,56,2,NULL),(1288,61,53,2,NULL),(1289,79,56,2,NULL),(1290,81,56,2,NULL),(1291,66,53,2,NULL),(1292,82,56,2,NULL),(1293,84,56,2,NULL),(1294,67,53,2,NULL),(1295,85,56,2,NULL),(1296,69,53,2,NULL),(1297,87,56,2,NULL),(1298,89,56,2,NULL),(1299,70,53,2,NULL),(1300,90,56,2,NULL),(1301,71,57,2,NULL),(1302,72,53,2,NULL),(1303,79,57,2,NULL),(1304,81,57,2,NULL),(1305,83,53,2,NULL),(1306,82,57,2,NULL),(1307,84,57,2,NULL),(1308,88,53,2,NULL),(1309,85,57,2,NULL),(1310,87,57,2,NULL),(1311,89,57,2,NULL),(1312,93,53,2,NULL),(1313,90,57,2,NULL),(1314,95,53,2,NULL),(1315,71,58,2,NULL),(1316,79,58,2,NULL),(1317,96,53,2,NULL),(1318,81,58,2,NULL),(1319,82,58,2,NULL),(1320,65,53,2,NULL),(1321,84,58,2,NULL),(1322,85,58,2,NULL),(1323,19,54,2,NULL),(1324,87,58,2,NULL),(1325,89,58,2,NULL),(1326,20,54,2,NULL),(1327,90,58,2,NULL),(1328,71,59,2,NULL),(1329,21,54,2,NULL),(1330,79,59,2,NULL),(1331,81,59,2,NULL),(1332,22,54,2,NULL),(1333,82,59,2,NULL),(1334,84,59,2,NULL),(1335,85,59,2,NULL),(1336,23,54,2,NULL),(1337,87,59,2,NULL),(1338,25,54,2,NULL),(1339,89,59,2,NULL),(1340,90,59,2,NULL),(1341,26,54,2,NULL),(1342,71,60,2,NULL),(1343,79,60,2,NULL),(1344,81,60,2,NULL),(1345,29,54,2,NULL),(1346,82,60,2,NULL),(1347,24,54,2,NULL),(1348,84,60,2,NULL),(1349,85,60,2,NULL),(1350,27,54,2,NULL),(1351,87,60,2,NULL),(1352,89,60,2,NULL),(1353,28,54,2,NULL),(1354,90,60,2,NULL),(1355,71,61,2,NULL),(1356,30,54,2,NULL),(1357,79,61,2,NULL),(1358,81,61,2,NULL),(1359,32,54,2,NULL),(1360,82,61,2,NULL),(1361,84,61,2,NULL),(1362,34,54,2,NULL),(1363,85,61,2,NULL),(1364,87,61,2,NULL),(1365,35,54,2,NULL),(1366,89,61,2,NULL),(1367,90,61,2,NULL),(1368,37,54,2,NULL),(1369,71,62,2,NULL),(1370,79,62,2,NULL),(1371,81,62,2,NULL),(1372,51,54,2,NULL),(1373,82,62,2,NULL),(1374,61,54,2,NULL),(1375,84,62,2,NULL),(1376,85,62,2,NULL),(1377,66,54,2,NULL),(1378,87,62,2,NULL),(1379,89,62,2,NULL),(1380,67,54,2,NULL),(1381,90,62,2,NULL),(1382,71,63,2,NULL),(1383,69,54,2,NULL),(1384,79,63,2,NULL),(1385,81,63,2,NULL),(1386,70,54,2,NULL),(1387,82,63,2,NULL),(1388,84,63,2,NULL),(1389,72,54,2,NULL),(1390,85,63,2,NULL),(1391,87,63,2,NULL),(1392,83,54,2,NULL),(1393,89,63,2,NULL),(1394,90,63,2,NULL),(1395,71,64,2,NULL),(1396,88,54,2,NULL),(1397,79,64,2,NULL),(1398,93,54,2,NULL),(1399,81,64,2,NULL),(1400,82,64,2,NULL),(1401,95,54,2,NULL),(1402,84,64,2,NULL),(1403,85,64,2,NULL),(1404,85,64,2,NULL),(1405,96,54,2,NULL),(1406,87,64,2,NULL),(1407,89,64,2,NULL),(1408,65,54,2,NULL),(1409,90,64,2,NULL),(1410,71,65,2,NULL),(1411,71,65,2,NULL),(1412,19,55,2,NULL),(1413,79,65,2,NULL),(1414,81,65,2,NULL),(1415,20,55,2,NULL),(1416,82,65,2,NULL),(1417,21,55,2,NULL),(1418,84,65,2,NULL),(1419,85,65,2,NULL),(1420,22,55,2,NULL),(1421,87,65,2,NULL),(1422,89,65,2,NULL),(1423,90,65,2,NULL),(1424,23,55,2,NULL),(1425,71,66,2,NULL),(1426,25,55,2,NULL),(1427,79,66,2,NULL),(1428,81,66,2,NULL),(1429,82,66,2,NULL),(1430,26,55,2,NULL),(1431,84,66,2,NULL),(1432,29,55,2,NULL),(1433,85,66,2,NULL),(1434,87,66,2,NULL),(1435,24,55,2,NULL),(1436,89,66,2,NULL),(1437,90,66,2,NULL),(1438,27,55,2,NULL),(1439,71,67,2,NULL),(1440,79,67,2,NULL),(1441,28,55,2,NULL),(1442,81,67,2,NULL),(1443,82,67,2,NULL),(1444,30,55,2,NULL),(1445,84,67,2,NULL),(1446,85,67,2,NULL),(1447,32,55,2,NULL),(1448,87,67,2,NULL),(1449,89,67,2,NULL),(1450,34,55,2,NULL),(1451,90,67,2,NULL),(1452,71,68,2,NULL),(1453,35,55,2,NULL),(1454,79,68,2,NULL),(1455,81,68,2,NULL),(1456,37,55,2,NULL),(1457,82,68,2,NULL),(1458,84,68,2,NULL),(1459,85,68,2,NULL),(1460,51,55,2,NULL),(1461,87,68,2,NULL),(1462,61,55,2,NULL),(1463,89,68,2,NULL),(1464,90,68,2,NULL),(1465,66,55,2,NULL),(1466,71,69,2,NULL),(1467,79,69,2,NULL),(1468,67,55,2,NULL),(1469,81,69,2,NULL),(1470,82,69,2,NULL),(1471,69,55,2,NULL),(1472,84,69,2,NULL),(1473,85,69,2,NULL),(1474,70,55,2,NULL),(1475,87,69,2,NULL),(1476,89,69,2,NULL),(1477,72,55,2,NULL),(1478,90,69,2,NULL),(1479,71,70,2,NULL),(1480,83,55,2,NULL),(1481,79,70,2,NULL),(1482,81,70,2,NULL),(1483,88,55,2,NULL),(1484,82,70,2,NULL),(1485,84,70,2,NULL),(1486,93,55,2,NULL),(1487,85,70,2,NULL),(1488,87,70,2,NULL),(1489,95,55,2,NULL),(1490,89,70,2,NULL),(1491,90,70,2,NULL),(1492,96,55,2,NULL),(1493,71,71,2,NULL),(1494,79,71,2,NULL),(1495,65,55,2,NULL),(1496,81,71,2,NULL),(1497,82,71,2,NULL),(1498,19,56,2,NULL),(1499,84,71,2,NULL),(1500,85,71,2,NULL),(1501,20,56,2,NULL),(1502,87,71,2,NULL),(1503,89,71,2,NULL),(1504,21,56,2,NULL),(1505,90,71,2,NULL),(1506,71,72,2,NULL),(1507,22,56,2,NULL),(1508,79,72,2,NULL),(1509,81,72,2,NULL),(1510,23,56,2,NULL),(1511,82,72,2,NULL),(1512,25,56,2,NULL),(1513,84,72,2,NULL),(1514,26,56,2,NULL),(1515,85,72,2,NULL),(1516,87,72,2,NULL),(1517,29,56,2,NULL),(1518,89,72,2,NULL),(1519,90,72,2,NULL),(1520,24,56,2,NULL),(1521,71,73,2,NULL),(1522,79,73,2,NULL),(1523,27,56,2,NULL),(1524,81,73,2,NULL),(1525,82,73,2,NULL),(1526,28,56,2,NULL),(1527,84,73,2,NULL),(1528,85,73,2,NULL),(1529,30,56,2,NULL),(1530,87,73,2,NULL),(1531,89,73,2,NULL),(1532,32,56,2,NULL),(1533,90,73,2,NULL),(1534,71,75,2,NULL),(1535,34,56,2,NULL),(1536,79,75,2,NULL),(1537,81,75,2,NULL),(1538,35,56,2,NULL),(1539,82,75,2,NULL),(1540,84,75,2,NULL),(1541,37,56,2,NULL),(1542,85,75,2,NULL),(1543,87,75,2,NULL),(1544,89,75,2,NULL),(1545,51,56,2,NULL),(1546,90,75,2,NULL),(1547,61,56,2,NULL),(1548,71,76,2,NULL),(1549,79,76,2,NULL),(1550,66,56,2,NULL),(1551,81,76,2,NULL),(1552,82,76,2,NULL),(1553,67,56,2,NULL),(1554,84,76,2,NULL),(1555,85,76,2,NULL),(1556,69,56,2,NULL),(1557,87,76,2,NULL),(1558,89,76,2,NULL),(1559,70,56,2,NULL),(1560,90,76,2,NULL),(1561,71,78,2,NULL),(1562,72,56,2,NULL),(1563,79,78,2,NULL),(1564,81,78,2,NULL),(1565,83,56,2,NULL),(1566,82,78,2,NULL),(1567,84,78,2,NULL),(1568,88,56,2,NULL),(1569,85,78,2,NULL),(1570,87,78,2,NULL),(1571,93,56,2,NULL),(1572,89,78,2,NULL),(1573,90,78,2,NULL),(1574,95,56,2,NULL),(1575,71,80,2,NULL),(1576,16,10,2,NULL),(1577,79,80,2,NULL),(1578,96,56,2,NULL),(1579,81,80,2,NULL),(1580,82,80,2,NULL),(1581,18,10,2,NULL),(1582,65,56,2,NULL),(1583,84,80,2,NULL),(1584,85,80,2,NULL),(1585,19,57,2,NULL),(1586,87,80,2,NULL),(1587,89,80,2,NULL),(1588,20,57,2,NULL),(1589,90,80,2,NULL),(1590,71,83,2,NULL),(1591,21,57,2,NULL),(1592,79,83,2,NULL),(1593,19,10,2,NULL),(1594,81,83,2,NULL),(1595,22,57,2,NULL),(1596,82,83,2,NULL),(1597,20,10,2,NULL),(1598,84,83,2,NULL),(1599,23,57,2,NULL),(1600,85,83,2,NULL),(1601,21,10,2,NULL),(1602,87,83,2,NULL),(1603,25,57,2,NULL),(1604,89,83,2,NULL),(1605,90,83,2,NULL),(1606,22,10,2,NULL),(1607,26,57,2,NULL),(1608,71,86,2,NULL),(1609,79,86,2,NULL),(1610,29,57,2,NULL),(1611,81,86,2,NULL),(1612,23,10,2,NULL),(1613,82,86,2,NULL),(1614,24,57,2,NULL),(1615,84,86,2,NULL),(1616,85,86,2,NULL),(1617,25,10,2,NULL),(1618,27,57,2,NULL),(1619,87,86,2,NULL),(1620,89,86,2,NULL),(1621,28,57,2,NULL),(1622,90,86,2,NULL),(1623,26,10,2,NULL),(1624,71,87,2,NULL),(1625,30,57,2,NULL),(1626,79,87,2,NULL),(1627,81,87,2,NULL),(1628,29,10,2,NULL),(1629,32,57,2,NULL),(1630,82,87,2,NULL),(1631,84,87,2,NULL),(1632,24,10,2,NULL),(1633,34,57,2,NULL),(1634,85,87,2,NULL),(1635,87,87,2,NULL),(1636,27,10,2,NULL),(1637,35,57,2,NULL),(1638,89,87,2,NULL),(1639,90,87,2,NULL),(1640,37,57,2,NULL),(1641,71,88,2,NULL),(1642,28,10,2,NULL),(1643,79,88,2,NULL),(1644,81,88,2,NULL),(1645,51,57,2,NULL),(1646,82,88,2,NULL),(1647,30,10,2,NULL),(1648,61,57,2,NULL),(1649,84,88,2,NULL),(1650,85,88,2,NULL),(1651,66,57,2,NULL),(1652,87,88,2,NULL),(1653,32,10,2,NULL),(1654,89,88,2,NULL),(1655,67,57,2,NULL),(1656,90,88,2,NULL),(1657,71,89,2,NULL),(1658,69,57,2,NULL),(1659,79,89,2,NULL),(1660,34,10,2,NULL),(1661,81,89,2,NULL),(1662,70,57,2,NULL),(1663,82,89,2,NULL),(1664,35,10,2,NULL),(1665,84,89,2,NULL),(1666,72,57,2,NULL),(1667,85,89,2,NULL),(1668,87,89,2,NULL),(1669,37,10,2,NULL),(1670,83,57,2,NULL),(1671,89,89,2,NULL),(1672,90,89,2,NULL),(1673,19,13,2,NULL),(1674,88,57,2,NULL),(1675,71,90,2,NULL),(1676,79,90,2,NULL),(1677,93,57,2,NULL),(1678,81,90,2,NULL),(1679,20,13,2,NULL),(1680,82,90,2,NULL),(1681,95,57,2,NULL),(1682,84,90,2,NULL),(1683,85,90,2,NULL),(1684,21,13,2,NULL),(1685,96,57,2,NULL),(1686,87,90,2,NULL),(1687,89,90,2,NULL),(1688,65,57,2,NULL),(1689,90,90,2,NULL),(1690,22,13,2,NULL),(1691,71,91,2,NULL),(1692,19,58,2,NULL),(1693,79,91,2,NULL),(1694,81,91,2,NULL),(1695,23,13,2,NULL),(1696,20,58,2,NULL),(1697,82,91,2,NULL),(1698,84,91,2,NULL),(1699,21,58,2,NULL),(1700,85,91,2,NULL),(1701,25,13,2,NULL),(1702,87,91,2,NULL),(1703,22,58,2,NULL),(1704,89,91,2,NULL),(1705,90,91,2,NULL),(1706,26,13,2,NULL),(1707,23,58,2,NULL),(1708,71,92,2,NULL),(1709,79,92,2,NULL),(1710,25,58,2,NULL),(1711,81,92,2,NULL),(1712,29,13,2,NULL),(1713,82,92,2,NULL),(1714,26,58,2,NULL),(1715,84,92,2,NULL),(1716,24,13,2,NULL),(1717,85,92,2,NULL),(1718,29,58,2,NULL),(1719,87,92,2,NULL),(1720,89,92,2,NULL),(1721,27,13,2,NULL),(1722,24,58,2,NULL),(1723,90,92,2,NULL),(1724,71,94,2,NULL),(1725,27,58,2,NULL),(1726,79,94,2,NULL),(1727,28,13,2,NULL),(1728,81,94,2,NULL),(1729,28,58,2,NULL),(1730,82,94,2,NULL),(1731,84,94,2,NULL),(1732,30,13,2,NULL),(1733,30,58,2,NULL),(1734,85,94,2,NULL),(1735,87,94,2,NULL),(1736,32,58,2,NULL),(1737,89,94,2,NULL),(1738,32,13,2,NULL),(1739,90,94,2,NULL),(1740,34,58,2,NULL),(1741,71,95,2,NULL),(1742,79,95,2,NULL),(1743,34,13,2,NULL),(1744,35,58,2,NULL),(1745,81,95,2,NULL),(1746,82,95,2,NULL),(1747,35,13,2,NULL),(1748,37,58,2,NULL),(1749,84,95,2,NULL),(1750,85,95,2,NULL),(1751,87,95,2,NULL),(1752,37,13,2,NULL),(1753,51,58,2,NULL),(1754,89,95,2,NULL),(1755,61,58,2,NULL),(1756,90,95,2,NULL),(1757,19,74,2,NULL),(1758,71,96,2,NULL),(1759,66,58,2,NULL),(1760,79,96,2,NULL),(1761,20,74,2,NULL),(1762,81,96,2,NULL),(1763,67,58,2,NULL),(1764,82,96,2,NULL),(1765,21,74,2,NULL),(1766,84,96,2,NULL),(1767,69,58,2,NULL),(1768,85,96,2,NULL),(1769,22,74,2,NULL),(1770,87,96,2,NULL),(1771,70,58,2,NULL),(1772,89,96,2,NULL),(1773,23,74,2,NULL),(1774,90,96,2,NULL),(1775,72,58,2,NULL),(1776,71,97,2,NULL),(1777,25,74,2,NULL),(1778,79,97,2,NULL),(1779,83,58,2,NULL),(1780,81,97,2,NULL),(1781,26,74,2,NULL),(1782,82,97,2,NULL),(1783,88,58,2,NULL),(1784,84,97,2,NULL),(1785,29,74,2,NULL),(1786,85,97,2,NULL),(1787,93,58,2,NULL),(1788,87,97,2,NULL),(1789,24,74,2,NULL),(1790,89,97,2,NULL),(1791,95,58,2,NULL),(1792,90,97,2,NULL),(1793,27,74,2,NULL),(1794,71,98,2,NULL),(1795,96,58,2,NULL),(1796,79,98,2,NULL),(1797,28,74,2,NULL),(1798,81,98,2,NULL),(1799,65,58,2,NULL),(1800,82,98,2,NULL),(1801,30,74,2,NULL),(1802,84,98,2,NULL),(1803,19,59,2,NULL),(1804,85,98,2,NULL),(1805,32,74,2,NULL),(1806,87,98,2,NULL),(1807,20,59,2,NULL),(1808,89,98,2,NULL),(1809,34,74,2,NULL),(1810,90,98,2,NULL),(1811,21,59,2,NULL),(1812,71,99,2,NULL),(1813,35,74,2,NULL),(1814,79,99,2,NULL),(1815,22,59,2,NULL),(1816,81,99,2,NULL),(1817,37,74,2,NULL),(1818,82,99,2,NULL),(1819,23,59,2,NULL),(1820,84,99,2,NULL),(1821,19,77,2,NULL),(1822,85,99,2,NULL),(1823,25,59,2,NULL),(1824,87,99,2,NULL),(1825,20,77,2,NULL),(1826,89,99,2,NULL),(1827,26,59,2,NULL),(1828,90,99,2,NULL),(1829,21,77,2,NULL),(1830,71,100,2,NULL),(1831,29,59,2,NULL),(1832,79,100,2,NULL),(1833,22,77,2,NULL),(1834,81,100,2,NULL),(1835,24,59,2,NULL),(1836,82,100,2,NULL),(1837,23,77,2,NULL),(1838,84,100,2,NULL),(1839,27,59,2,NULL),(1840,85,100,2,NULL),(1841,25,77,2,NULL),(1842,87,100,2,NULL),(1843,28,59,2,NULL),(1844,89,100,2,NULL),(1845,26,77,2,NULL),(1846,90,100,2,NULL),(1847,30,59,2,NULL),(1848,71,101,2,NULL),(1849,29,77,2,NULL),(1850,79,101,2,NULL),(1851,32,59,2,NULL),(1852,81,101,2,NULL),(1853,24,77,2,NULL),(1854,82,101,2,NULL),(1855,34,59,2,NULL),(1856,84,101,2,NULL),(1857,27,77,2,NULL),(1858,85,101,2,NULL),(1859,35,59,2,NULL),(1860,87,101,2,NULL),(1861,28,77,2,NULL),(1862,89,101,2,NULL),(1863,37,59,2,NULL),(1864,90,101,2,NULL),(1865,30,77,2,NULL),(1866,71,103,2,NULL),(1867,79,103,2,NULL),(1868,32,77,2,NULL),(1869,51,59,2,NULL),(1870,81,103,2,NULL),(1871,61,59,2,NULL),(1872,82,103,2,NULL),(1873,34,77,2,NULL),(1874,84,103,2,NULL),(1875,66,59,2,NULL),(1876,85,103,2,NULL),(1877,35,77,2,NULL),(1878,87,103,2,NULL),(1879,67,59,2,NULL),(1880,89,103,2,NULL),(1881,37,77,2,NULL),(1882,90,103,2,NULL),(1883,69,59,2,NULL),(1884,71,104,2,NULL),(1885,19,79,2,NULL),(1886,79,104,2,NULL),(1887,70,59,2,NULL),(1888,81,104,2,NULL),(1889,20,79,2,NULL),(1890,82,104,2,NULL),(1891,72,59,2,NULL),(1892,84,104,2,NULL),(1893,21,79,2,NULL),(1894,85,104,2,NULL),(1895,83,59,2,NULL),(1896,87,104,2,NULL),(1897,22,79,2,NULL),(1898,89,104,2,NULL),(1899,88,59,2,NULL),(1900,90,104,2,NULL),(1901,71,105,2,NULL),(1902,23,79,2,NULL),(1903,79,105,2,NULL),(1904,93,59,2,NULL),(1905,81,105,2,NULL),(1906,95,59,2,NULL),(1907,82,105,2,NULL),(1908,25,79,2,NULL),(1909,84,105,2,NULL),(1910,96,59,2,NULL),(1911,85,105,2,NULL),(1912,87,105,2,NULL),(1913,26,79,2,NULL),(1914,65,59,2,NULL),(1915,89,105,2,NULL),(1916,90,105,2,NULL),(1917,29,79,2,NULL),(1918,19,60,2,NULL),(1919,71,107,2,NULL),(1920,79,107,2,NULL),(1921,24,79,2,NULL),(1922,20,60,2,NULL),(1923,81,107,2,NULL),(1924,82,107,2,NULL),(1925,27,79,2,NULL),(1926,21,60,2,NULL),(1927,84,107,2,NULL),(1928,85,107,2,NULL),(1929,28,79,2,NULL),(1930,22,60,2,NULL),(1931,87,107,2,NULL),(1932,89,107,2,NULL),(1933,30,79,2,NULL),(1934,23,60,2,NULL),(1935,90,107,2,NULL),(1936,71,109,2,NULL),(1937,32,79,2,NULL),(1938,25,60,2,NULL),(1939,79,109,2,NULL),(1940,81,109,2,NULL),(1941,34,79,2,NULL),(1942,26,60,2,NULL),(1943,82,109,2,NULL),(1944,84,109,2,NULL),(1945,84,109,2,NULL),(1946,29,60,2,NULL),(1947,35,79,2,NULL),(1948,85,109,2,NULL),(1949,24,60,2,NULL),(1950,87,109,2,NULL),(1951,37,79,2,NULL),(1952,89,109,2,NULL),(1953,27,60,2,NULL),(1954,90,109,2,NULL),(1955,19,81,2,NULL),(1956,71,110,2,NULL),(1957,28,60,2,NULL),(1958,79,110,2,NULL),(1959,20,81,2,NULL),(1960,81,110,2,NULL),(1961,81,110,2,NULL),(1962,30,60,2,NULL),(1963,21,81,2,NULL),(1964,82,110,2,NULL),(1965,32,60,2,NULL),(1966,84,110,2,NULL),(1967,22,81,2,NULL),(1968,85,110,2,NULL),(1969,34,60,2,NULL),(1970,87,110,2,NULL),(1971,87,110,2,NULL),(1972,23,81,2,NULL),(1973,35,60,2,NULL),(1974,89,110,2,NULL),(1975,89,110,2,NULL),(1976,25,81,2,NULL),(1977,37,60,2,NULL),(1978,90,110,2,NULL),(1979,90,110,2,NULL),(1980,26,81,2,NULL),(1981,51,60,2,NULL),(1982,71,112,2,NULL),(1983,71,112,2,NULL),(1984,29,81,2,NULL),(1985,61,60,2,NULL),(1986,79,112,2,NULL),(1987,79,112,2,NULL),(1988,24,81,2,NULL),(1989,66,60,2,NULL),(1990,81,112,2,NULL),(1991,81,112,2,NULL),(1992,27,81,2,NULL),(1993,67,60,2,NULL),(1994,82,112,2,NULL),(1995,82,112,2,NULL),(1996,28,81,2,NULL),(1997,69,60,2,NULL),(1998,84,112,2,NULL),(1999,84,112,2,NULL),(2000,30,81,2,NULL),(2001,70,60,2,NULL),(2002,85,112,2,NULL),(2003,85,112,2,NULL),(2004,32,81,2,NULL),(2005,72,60,2,NULL),(2006,87,112,2,NULL),(2007,87,112,2,NULL),(2008,34,81,2,NULL),(2009,83,60,2,NULL),(2010,89,112,2,NULL),(2011,90,112,2,NULL),(2012,35,81,2,NULL),(2013,88,60,2,NULL),(2014,71,114,2,NULL),(2015,71,114,2,NULL),(2016,37,81,2,NULL),(2017,93,60,2,NULL),(2018,79,114,2,NULL),(2019,79,114,2,NULL),(2020,19,82,2,NULL),(2021,95,60,2,NULL),(2022,81,114,2,NULL),(2023,81,114,2,NULL),(2024,20,82,2,NULL),(2025,96,60,2,NULL),(2026,82,114,2,NULL),(2027,82,114,2,NULL),(2028,21,82,2,NULL),(2029,65,60,2,NULL),(2030,84,114,2,NULL),(2031,84,114,2,NULL),(2032,22,82,2,NULL),(2033,19,61,2,NULL),(2034,85,114,2,NULL),(2035,85,114,2,NULL),(2036,23,82,2,NULL),(2037,20,61,2,NULL),(2038,87,114,2,NULL),(2039,87,114,2,NULL),(2040,25,82,2,NULL),(2041,21,61,2,NULL),(2042,89,114,2,NULL),(2043,89,114,2,NULL),(2044,26,82,2,NULL),(2045,22,61,2,NULL),(2046,90,114,2,NULL),(2047,90,114,2,NULL),(2048,29,82,2,NULL),(2049,23,61,2,NULL),(2050,71,115,2,NULL),(2051,71,115,2,NULL),(2052,24,82,2,NULL),(2053,25,61,2,NULL),(2054,79,115,2,NULL),(2055,79,115,2,NULL),(2056,27,82,2,NULL),(2057,26,61,2,NULL),(2058,81,115,2,NULL),(2059,81,115,2,NULL),(2060,28,82,2,NULL),(2061,29,61,2,NULL),(2062,82,115,2,NULL),(2063,82,115,2,NULL),(2064,30,82,2,NULL),(2065,24,61,2,NULL),(2066,84,115,2,NULL),(2067,84,115,2,NULL),(2068,32,82,2,NULL),(2069,27,61,2,NULL),(2070,85,115,2,NULL),(2071,85,115,2,NULL),(2072,34,82,2,NULL),(2073,28,61,2,NULL),(2074,87,115,2,NULL),(2075,35,82,2,NULL),(2076,89,115,2,NULL),(2077,30,61,2,NULL),(2078,90,115,2,NULL),(2079,90,115,2,NULL),(2080,37,82,2,NULL),(2081,32,61,2,NULL),(2082,19,20,2,NULL),(2083,19,20,2,NULL),(2084,19,84,2,NULL),(2085,34,61,2,NULL),(2086,20,20,2,NULL),(2087,20,20,2,NULL),(2088,20,84,2,NULL),(2089,35,61,2,NULL),(2090,21,20,2,NULL),(2091,21,20,2,NULL),(2092,21,84,2,NULL),(2093,37,61,2,NULL),(2094,22,20,2,NULL),(2095,22,20,2,NULL),(2096,22,84,2,NULL),(2097,51,61,2,NULL),(2098,23,20,2,NULL),(2099,23,20,2,NULL),(2100,23,84,2,NULL),(2101,61,61,2,NULL),(2102,25,20,2,NULL),(2103,25,20,2,NULL),(2104,25,84,2,NULL),(2105,66,61,2,NULL),(2106,26,20,2,NULL),(2107,26,20,2,NULL),(2108,26,84,2,NULL),(2109,67,61,2,NULL),(2110,29,20,2,NULL),(2111,29,20,2,NULL),(2112,29,84,2,NULL),(2113,69,61,2,NULL),(2114,24,20,2,NULL),(2115,24,20,2,NULL),(2116,24,84,2,NULL),(2117,70,61,2,NULL),(2118,27,20,2,NULL),(2119,27,20,2,NULL),(2120,27,84,2,NULL),(2121,72,61,2,NULL),(2122,28,20,2,NULL),(2123,28,20,2,NULL),(2124,28,84,2,NULL),(2125,83,61,2,NULL),(2126,30,20,2,NULL),(2127,30,20,2,NULL),(2128,30,84,2,NULL),(2129,88,61,2,NULL),(2130,32,20,2,NULL),(2131,32,20,2,NULL),(2132,32,84,2,NULL),(2133,93,61,2,NULL),(2134,34,20,2,NULL),(2135,34,20,2,NULL),(2136,34,84,2,NULL),(2137,95,61,2,NULL),(2138,35,20,2,NULL),(2139,35,20,2,NULL),(2140,35,84,2,NULL),(2141,96,61,2,NULL),(2142,37,20,2,NULL),(2143,37,20,2,NULL),(2144,37,84,2,NULL),(2145,65,61,2,NULL),(2146,19,85,2,NULL),(2147,51,20,2,NULL),(2148,51,20,2,NULL),(2149,19,62,2,NULL),(2150,20,85,2,NULL),(2151,20,62,2,NULL),(2152,61,20,2,NULL),(2153,61,20,2,NULL),(2154,21,85,2,NULL),(2155,21,62,2,NULL),(2156,66,20,2,NULL),(2157,66,20,2,NULL),(2158,22,85,2,NULL),(2159,22,62,2,NULL),(2160,67,20,2,NULL),(2161,67,20,2,NULL),(2162,23,85,2,NULL),(2163,23,62,2,NULL),(2164,69,20,2,NULL),(2165,69,20,2,NULL),(2166,25,85,2,NULL),(2167,25,62,2,NULL),(2168,70,20,2,NULL),(2169,70,20,2,NULL),(2170,26,85,2,NULL),(2171,26,62,2,NULL),(2172,72,20,2,NULL),(2173,72,20,2,NULL),(2174,29,85,2,NULL),(2175,29,62,2,NULL),(2176,83,20,2,NULL),(2177,83,20,2,NULL),(2178,24,85,2,NULL),(2179,24,62,2,NULL),(2180,88,20,2,NULL),(2181,88,20,2,NULL),(2182,27,85,2,NULL),(2183,27,62,2,NULL),(2184,93,20,2,NULL),(2185,93,20,2,NULL),(2186,28,85,2,NULL),(2187,28,62,2,NULL),(2188,95,20,2,NULL),(2189,95,20,2,NULL),(2190,30,85,2,NULL),(2191,96,20,2,NULL),(2192,30,62,2,NULL),(2193,96,20,2,NULL),(2194,32,85,2,NULL),(2195,32,62,2,NULL),(2196,65,20,2,NULL),(2197,65,20,2,NULL),(2198,34,85,2,NULL),(2199,34,62,2,NULL),(2200,19,29,2,NULL),(2201,19,29,2,NULL),(2202,35,85,2,NULL),(2203,20,29,2,NULL),(2204,35,62,2,NULL),(2205,21,29,2,NULL),(2206,37,85,2,NULL),(2207,37,62,2,NULL),(2208,22,29,2,NULL),(2209,22,29,2,NULL),(2210,23,29,2,NULL),(2211,23,29,2,NULL),(2212,51,62,2,NULL),(2213,25,29,2,NULL),(2214,26,29,2,NULL),(2215,61,62,2,NULL),(2216,29,29,2,NULL),(2217,24,29,2,NULL),(2218,24,29,2,NULL),(2219,66,62,2,NULL),(2220,27,29,2,NULL),(2221,28,29,2,NULL),(2222,28,29,2,NULL),(2223,67,62,2,NULL),(2224,30,29,2,NULL),(2225,32,29,2,NULL),(2226,32,29,2,NULL),(2227,69,62,2,NULL),(2228,34,29,2,NULL),(2229,35,29,2,NULL),(2230,35,29,2,NULL),(2231,70,62,2,NULL),(2232,37,29,2,NULL),(2233,19,32,2,NULL),(2234,72,62,2,NULL),(2235,51,29,2,NULL),(2236,20,32,2,NULL),(2237,83,62,2,NULL),(2238,61,29,2,NULL),(2239,66,29,2,NULL),(2240,21,32,2,NULL),(2241,88,62,2,NULL),(2242,67,29,2,NULL),(2243,69,29,2,NULL),(2244,22,32,2,NULL),(2245,93,62,2,NULL),(2246,70,29,2,NULL),(2247,70,29,2,NULL),(2248,23,32,2,NULL),(2249,95,62,2,NULL),(2250,72,29,2,NULL),(2251,72,29,2,NULL),(2252,25,32,2,NULL),(2253,96,62,2,NULL),(2254,83,29,2,NULL),(2255,83,29,2,NULL),(2256,26,32,2,NULL),(2257,65,62,2,NULL),(2258,88,29,2,NULL),(2259,88,29,2,NULL),(2260,29,32,2,NULL),(2261,19,63,2,NULL),(2262,93,29,2,NULL),(2263,93,29,2,NULL),(2264,24,32,2,NULL),(2265,95,29,2,NULL),(2266,20,63,2,NULL),(2267,96,29,2,NULL),(2268,27,32,2,NULL),(2269,21,63,2,NULL),(2270,65,29,2,NULL),(2271,65,29,2,NULL),(2272,28,32,2,NULL),(2273,22,63,2,NULL),(2274,30,32,2,NULL),(2275,32,32,2,NULL),(2276,23,63,2,NULL),(2277,34,32,2,NULL),(2278,35,32,2,NULL),(2279,35,32,2,NULL),(2280,25,63,2,NULL),(2281,37,32,2,NULL),(2282,37,32,2,NULL),(2283,37,32,2,NULL),(2284,26,63,2,NULL),(2285,19,35,2,NULL),(2286,29,63,2,NULL),(2287,20,35,2,NULL),(2288,24,63,2,NULL),(2289,51,32,2,NULL),(2290,51,32,2,NULL),(2291,21,35,2,NULL),(2292,27,63,2,NULL),(2293,61,32,2,NULL),(2294,61,32,2,NULL),(2295,22,35,2,NULL),(2296,28,63,2,NULL),(2297,66,32,2,NULL),(2298,67,32,2,NULL),(2299,23,35,2,NULL),(2300,30,63,2,NULL),(2301,69,32,2,NULL),(2302,70,32,2,NULL),(2303,25,35,2,NULL),(2304,72,32,2,NULL),(2305,32,63,2,NULL),(2306,83,32,2,NULL),(2307,26,35,2,NULL),(2308,88,32,2,NULL),(2309,88,32,2,NULL),(2310,34,63,2,NULL),(2311,29,35,2,NULL),(2312,35,63,2,NULL),(2313,93,32,2,NULL),(2314,93,32,2,NULL),(2315,24,35,2,NULL),(2316,37,63,2,NULL),(2317,95,32,2,NULL),(2318,95,32,2,NULL),(2319,27,35,2,NULL),(2320,96,32,2,NULL),(2321,65,32,2,NULL),(2322,51,63,2,NULL),(2323,28,35,2,NULL),(2324,61,63,2,NULL),(2325,30,35,2,NULL),(2326,32,35,2,NULL),(2327,66,63,2,NULL),(2328,32,35,2,NULL),(2329,34,35,2,NULL),(2330,35,35,2,NULL),(2331,67,63,2,NULL),(2332,37,35,2,NULL),(2333,37,35,2,NULL),(2334,51,35,2,NULL),(2335,69,63,2,NULL),(2336,19,118,2,NULL),(2337,61,35,2,NULL),(2338,66,35,2,NULL),(2339,70,63,2,NULL),(2340,20,118,2,NULL),(2341,67,35,2,NULL),(2342,69,35,2,NULL),(2343,72,63,2,NULL),(2344,21,118,2,NULL),(2345,70,35,2,NULL),(2346,70,35,2,NULL),(2347,83,63,2,NULL),(2348,22,118,2,NULL),(2349,72,35,2,NULL),(2350,72,35,2,NULL),(2351,88,63,2,NULL),(2352,23,118,2,NULL),(2353,83,35,2,NULL),(2354,83,35,2,NULL),(2355,93,63,2,NULL),(2356,25,118,2,NULL),(2357,88,35,2,NULL),(2358,88,35,2,NULL),(2359,95,63,2,NULL),(2360,26,118,2,NULL),(2361,93,35,2,NULL),(2362,93,35,2,NULL),(2363,96,63,2,NULL),(2364,29,118,2,NULL),(2365,95,35,2,NULL),(2366,95,35,2,NULL),(2367,65,63,2,NULL),(2368,24,118,2,NULL),(2369,96,35,2,NULL),(2370,96,35,2,NULL),(2371,19,64,2,NULL),(2372,27,118,2,NULL),(2373,65,35,2,NULL),(2374,65,35,2,NULL),(2375,20,64,2,NULL),(2376,28,118,2,NULL),(2377,21,64,2,NULL),(2378,30,118,2,NULL),(2379,30,118,2,NULL),(2380,30,118,2,NULL),(2381,22,64,2,NULL),(2382,32,118,2,NULL),(2383,32,118,2,NULL),(2384,34,118,2,NULL),(2385,23,64,2,NULL),(2386,35,118,2,NULL),(2387,35,118,2,NULL),(2388,35,118,2,NULL),(2389,25,64,2,NULL),(2390,37,118,2,NULL),(2391,37,118,2,NULL),(2392,19,119,2,NULL),(2393,26,64,2,NULL),(2394,20,119,2,NULL),(2395,51,118,2,NULL),(2396,51,118,2,NULL),(2397,29,64,2,NULL),(2398,21,119,2,NULL),(2399,24,64,2,NULL),(2400,61,118,2,NULL),(2401,61,118,2,NULL),(2402,22,119,2,NULL),(2403,66,118,2,NULL),(2404,66,118,2,NULL),(2405,27,64,2,NULL),(2406,23,119,2,NULL),(2407,28,64,2,NULL),(2408,67,118,2,NULL),(2409,67,118,2,NULL),(2410,25,119,2,NULL),(2411,30,64,2,NULL),(2412,69,118,2,NULL),(2413,69,118,2,NULL),(2414,26,119,2,NULL),(2415,32,64,2,NULL),(2416,70,118,2,NULL),(2417,70,118,2,NULL),(2418,29,119,2,NULL),(2419,34,64,2,NULL),(2420,72,118,2,NULL),(2421,72,118,2,NULL),(2422,24,119,2,NULL),(2423,35,64,2,NULL),(2424,83,118,2,NULL),(2425,83,118,2,NULL),(2426,27,119,2,NULL),(2427,37,64,2,NULL),(2428,88,118,2,NULL),(2429,88,118,2,NULL),(2430,28,119,2,NULL),(2431,93,118,2,NULL),(2432,93,118,2,NULL),(2433,51,64,2,NULL),(2434,30,119,2,NULL),(2435,95,118,2,NULL),(2436,95,118,2,NULL),(2437,61,64,2,NULL),(2438,32,119,2,NULL),(2439,96,118,2,NULL),(2440,96,118,2,NULL),(2441,66,64,2,NULL),(2442,34,119,2,NULL),(2443,65,118,2,NULL),(2444,65,118,2,NULL),(2445,67,64,2,NULL),(2446,35,119,2,NULL),(2447,69,64,2,NULL),(2448,37,119,2,NULL),(2449,37,119,2,NULL),(2450,37,119,2,NULL),(2451,70,64,2,NULL),(2452,19,125,2,NULL),(2453,51,119,2,NULL),(2454,51,119,2,NULL),(2455,72,64,2,NULL),(2456,20,125,2,NULL),(2457,61,119,2,NULL),(2458,83,64,2,NULL),(2459,66,119,2,NULL),(2460,21,125,2,NULL),(2461,88,64,2,NULL),(2462,67,119,2,NULL),(2463,67,119,2,NULL),(2464,22,125,2,NULL),(2465,93,64,2,NULL),(2466,69,119,2,NULL),(2467,69,119,2,NULL),(2468,23,125,2,NULL),(2469,95,64,2,NULL),(2470,70,119,2,NULL),(2471,70,119,2,NULL),(2472,25,125,2,NULL),(2473,72,119,2,NULL),(2474,96,64,2,NULL),(2475,83,119,2,NULL),(2476,26,125,2,NULL),(2477,65,64,2,NULL),(2478,88,119,2,NULL),(2479,88,119,2,NULL),(2480,29,125,2,NULL),(2481,19,65,2,NULL),(2482,93,119,2,NULL),(2483,93,119,2,NULL),(2484,24,125,2,NULL),(2485,20,65,2,NULL),(2486,95,119,2,NULL),(2487,95,119,2,NULL),(2488,27,125,2,NULL),(2489,21,65,2,NULL),(2490,96,119,2,NULL),(2491,96,119,2,NULL),(2492,28,125,2,NULL),(2493,22,65,2,NULL),(2494,30,125,2,NULL),(2495,65,119,2,NULL),(2496,65,119,2,NULL),(2497,23,65,2,NULL),(2498,32,125,2,NULL),(2499,34,125,2,NULL),(2500,34,125,2,NULL),(2501,25,65,2,NULL),(2502,35,125,2,NULL),(2503,26,65,2,NULL),(2504,37,125,2,NULL),(2505,37,125,2,NULL),(2506,37,125,2,NULL),(2507,29,65,2,NULL),(2508,19,14,2,NULL),(2509,24,65,2,NULL),(2510,51,125,2,NULL),(2511,51,125,2,NULL),(2512,20,14,2,NULL),(2513,27,65,2,NULL),(2514,61,125,2,NULL),(2515,61,125,2,NULL),(2516,21,14,2,NULL),(2517,28,65,2,NULL),(2518,66,125,2,NULL),(2519,66,125,2,NULL),(2520,22,14,2,NULL),(2521,30,65,2,NULL),(2522,67,125,2,NULL),(2523,67,125,2,NULL),(2524,23,14,2,NULL),(2525,32,65,2,NULL),(2526,69,125,2,NULL),(2527,69,125,2,NULL),(2528,25,14,2,NULL),(2529,34,65,2,NULL),(2530,70,125,2,NULL),(2531,70,125,2,NULL),(2532,26,14,2,NULL),(2533,35,65,2,NULL),(2534,72,125,2,NULL),(2535,72,125,2,NULL),(2536,29,14,2,NULL),(2537,37,65,2,NULL),(2538,83,125,2,NULL),(2539,83,125,2,NULL),(2540,24,14,2,NULL),(2541,88,125,2,NULL),(2542,88,125,2,NULL),(2543,51,65,2,NULL),(2544,27,14,2,NULL),(2545,93,125,2,NULL),(2546,93,125,2,NULL),(2547,61,65,2,NULL),(2548,28,14,2,NULL),(2549,95,125,2,NULL),(2550,95,125,2,NULL),(2551,66,65,2,NULL),(2552,30,14,2,NULL),(2553,96,125,2,NULL),(2554,96,125,2,NULL),(2555,67,65,2,NULL),(2556,32,14,2,NULL),(2557,65,125,2,NULL),(2558,65,125,2,NULL),(2559,69,65,2,NULL),(2560,34,14,2,NULL),(2561,70,65,2,NULL),(2562,35,14,2,NULL),(2563,72,65,2,NULL),(2564,37,14,2,NULL),(2565,83,65,2,NULL),(2566,19,17,2,NULL),(2567,88,65,2,NULL),(2568,20,17,2,NULL),(2569,93,65,2,NULL),(2570,21,17,2,NULL),(2571,95,65,2,NULL),(2572,22,17,2,NULL),(2573,96,65,2,NULL),(2574,23,17,2,NULL),(2575,65,65,2,NULL),(2576,25,17,2,NULL),(2577,19,66,2,NULL),(2578,26,17,2,NULL),(2579,20,66,2,NULL),(2580,29,17,2,NULL),(2581,21,66,2,NULL),(2582,24,17,2,NULL),(2583,22,66,2,NULL),(2584,27,17,2,NULL),(2585,23,66,2,NULL),(2586,28,17,2,NULL),(2587,25,66,2,NULL),(2588,30,17,2,NULL),(2589,26,66,2,NULL),(2590,32,17,2,NULL),(2591,29,66,2,NULL),(2592,34,17,2,NULL),(2593,24,66,2,NULL),(2594,35,17,2,NULL),(2595,27,66,2,NULL),(2596,37,17,2,NULL),(2597,28,66,2,NULL),(2598,19,19,2,NULL),(2599,30,66,2,NULL),(2600,20,19,2,NULL),(2601,32,66,2,NULL),(2602,21,19,2,NULL),(2603,34,66,2,NULL),(2604,22,19,2,NULL),(2605,35,66,2,NULL),(2606,23,19,2,NULL),(2607,37,66,2,NULL),(2608,25,19,2,NULL),(2609,51,66,2,NULL),(2610,26,19,2,NULL),(2611,61,66,2,NULL),(2612,29,19,2,NULL),(2613,66,66,2,NULL),(2614,24,19,2,NULL),(2615,67,66,2,NULL),(2616,27,19,2,NULL),(2617,69,66,2,NULL),(2618,28,19,2,NULL),(2619,70,66,2,NULL),(2620,30,19,2,NULL),(2621,72,66,2,NULL),(2622,32,19,2,NULL),(2623,83,66,2,NULL),(2624,34,19,2,NULL),(2625,88,66,2,NULL),(2626,35,19,2,NULL),(2627,93,66,2,NULL),(2628,37,19,2,NULL),(2629,95,66,2,NULL),(2630,19,22,2,NULL),(2631,96,66,2,NULL),(2632,20,22,2,NULL),(2633,65,66,2,NULL),(2634,21,22,2,NULL),(2635,19,67,2,NULL),(2636,22,22,2,NULL),(2637,20,67,2,NULL),(2638,23,22,2,NULL),(2639,21,67,2,NULL),(2640,25,22,2,NULL),(2641,22,67,2,NULL),(2642,26,22,2,NULL),(2643,23,67,2,NULL),(2644,29,22,2,NULL),(2645,24,22,2,NULL),(2646,25,67,2,NULL),(2647,27,22,2,NULL),(2648,26,67,2,NULL),(2649,28,22,2,NULL),(2650,29,67,2,NULL),(2651,30,22,2,NULL),(2652,24,67,2,NULL),(2653,32,22,2,NULL),(2654,27,67,2,NULL),(2655,34,22,2,NULL),(2656,28,67,2,NULL),(2657,35,22,2,NULL),(2658,30,67,2,NULL),(2659,37,22,2,NULL),(2660,32,67,2,NULL),(2661,19,108,2,NULL),(2662,34,67,2,NULL),(2663,20,108,2,NULL),(2664,35,67,2,NULL),(2665,21,108,2,NULL),(2666,37,67,2,NULL),(2667,22,108,2,NULL),(2668,51,67,2,NULL),(2669,23,108,2,NULL),(2670,61,67,2,NULL),(2671,25,108,2,NULL),(2672,66,67,2,NULL),(2673,26,108,2,NULL),(2674,67,67,2,NULL),(2675,29,108,2,NULL),(2676,69,67,2,NULL),(2677,24,108,2,NULL),(2678,70,67,2,NULL),(2679,27,108,2,NULL),(2680,72,67,2,NULL),(2681,28,108,2,NULL),(2682,83,67,2,NULL),(2683,30,108,2,NULL),(2684,88,67,2,NULL),(2685,32,108,2,NULL),(2686,93,67,2,NULL),(2687,34,108,2,NULL),(2688,95,67,2,NULL),(2689,35,108,2,NULL),(2690,96,67,2,NULL),(2691,37,108,2,NULL),(2692,65,67,2,NULL),(2693,19,113,2,NULL),(2694,19,68,2,NULL),(2695,20,113,2,NULL),(2696,20,68,2,NULL),(2697,21,113,2,NULL),(2698,21,68,2,NULL),(2699,22,113,2,NULL),(2700,22,68,2,NULL),(2701,23,113,2,NULL),(2702,23,68,2,NULL),(2703,25,113,2,NULL),(2704,25,68,2,NULL),(2705,26,113,2,NULL),(2706,26,68,2,NULL),(2707,29,113,2,NULL),(2708,29,68,2,NULL),(2709,24,113,2,NULL),(2710,24,68,2,NULL),(2711,27,113,2,NULL),(2712,27,68,2,NULL),(2713,28,113,2,NULL),(2714,28,68,2,NULL),(2715,30,113,2,NULL),(2716,30,68,2,NULL),(2717,32,113,2,NULL),(2718,32,68,2,NULL),(2719,34,113,2,NULL),(2720,34,68,2,NULL),(2721,35,113,2,NULL),(2722,35,68,2,NULL),(2723,37,113,2,NULL),(2724,37,68,2,NULL),(2725,19,116,2,NULL),(2726,51,68,2,NULL),(2727,20,116,2,NULL),(2728,61,68,2,NULL),(2729,21,116,2,NULL),(2730,66,68,2,NULL),(2731,22,116,2,NULL),(2732,67,68,2,NULL),(2733,23,116,2,NULL),(2734,69,68,2,NULL),(2735,25,116,2,NULL),(2736,70,68,2,NULL),(2737,26,116,2,NULL),(2738,72,68,2,NULL),(2739,29,116,2,NULL),(2740,83,68,2,NULL),(2741,24,116,2,NULL),(2742,88,68,2,NULL),(2743,27,116,2,NULL),(2744,93,68,2,NULL),(2745,28,116,2,NULL),(2746,95,68,2,NULL),(2747,30,116,2,NULL),(2748,96,68,2,NULL),(2749,32,116,2,NULL),(2750,65,68,2,NULL),(2751,34,116,2,NULL),(2752,19,69,2,NULL),(2753,35,116,2,NULL),(2754,20,69,2,NULL),(2755,37,116,2,NULL),(2756,21,69,2,NULL),(2757,19,120,2,NULL),(2758,22,69,2,NULL),(2759,20,120,2,NULL),(2760,23,69,2,NULL),(2761,21,120,2,NULL),(2762,25,69,2,NULL),(2763,22,120,2,NULL),(2764,26,69,2,NULL),(2765,23,120,2,NULL),(2766,29,69,2,NULL),(2767,25,120,2,NULL),(2768,24,69,2,NULL),(2769,26,120,2,NULL),(2770,27,69,2,NULL),(2771,29,120,2,NULL),(2772,28,69,2,NULL),(2773,24,120,2,NULL),(2774,30,69,2,NULL),(2775,27,120,2,NULL),(2776,32,69,2,NULL),(2777,28,120,2,NULL),(2778,34,69,2,NULL),(2779,30,120,2,NULL),(2780,35,69,2,NULL),(2781,32,120,2,NULL),(2782,37,69,2,NULL),(2783,34,120,2,NULL),(2784,51,69,2,NULL),(2785,35,120,2,NULL),(2786,61,69,2,NULL),(2787,37,120,2,NULL),(2788,66,69,2,NULL),(2789,67,69,2,NULL),(2790,69,69,2,NULL),(2791,70,69,2,NULL),(2792,72,69,2,NULL),(2793,83,69,2,NULL),(2794,88,69,2,NULL),(2795,93,69,2,NULL),(2796,95,69,2,NULL),(2797,96,69,2,NULL),(2798,65,69,2,NULL),(2799,19,70,2,NULL),(2800,20,70,2,NULL),(2801,21,70,2,NULL),(2802,22,70,2,NULL),(2803,23,70,2,NULL),(2804,25,70,2,NULL),(2805,26,70,2,NULL),(2806,29,70,2,NULL),(2807,24,70,2,NULL),(2808,27,70,2,NULL),(2809,27,70,2,NULL),(2810,28,70,2,NULL),(2811,30,70,2,NULL),(2812,32,70,2,NULL),(2813,34,70,2,NULL),(2814,35,70,2,NULL),(2815,37,70,2,NULL),(2816,51,70,2,NULL),(2817,19,71,2,NULL),(2818,61,70,2,NULL),(2819,20,71,2,NULL),(2820,66,70,2,NULL),(2821,21,71,2,NULL),(2822,67,70,2,NULL),(2823,22,71,2,NULL),(2824,69,70,2,NULL),(2825,23,71,2,NULL),(2826,70,70,2,NULL),(2827,25,71,2,NULL),(2828,72,70,2,NULL),(2829,26,71,2,NULL),(2830,83,70,2,NULL),(2831,29,71,2,NULL),(2832,88,70,2,NULL),(2833,24,71,2,NULL),(2834,93,70,2,NULL),(2835,27,71,2,NULL),(2836,95,70,2,NULL),(2837,28,71,2,NULL),(2838,96,70,2,NULL),(2839,30,71,2,NULL),(2840,65,70,2,NULL),(2841,32,71,2,NULL),(2842,34,71,2,NULL),(2843,35,71,2,NULL),(2844,37,71,2,NULL),(2845,19,72,2,NULL),(2846,51,71,2,NULL),(2847,20,72,2,NULL),(2848,61,71,2,NULL),(2849,21,72,2,NULL),(2850,66,71,2,NULL),(2851,22,72,2,NULL),(2852,67,71,2,NULL),(2853,23,72,2,NULL),(2854,69,71,2,NULL),(2855,25,72,2,NULL),(2856,70,71,2,NULL),(2857,26,72,2,NULL),(2858,72,71,2,NULL),(2859,29,72,2,NULL),(2860,83,71,2,NULL),(2861,24,72,2,NULL),(2862,88,71,2,NULL),(2863,27,72,2,NULL),(2864,93,71,2,NULL),(2865,28,72,2,NULL),(2866,95,71,2,NULL),(2867,30,72,2,NULL),(2868,96,71,2,NULL),(2869,65,71,2,NULL),(2870,32,72,2,NULL),(2871,34,72,2,NULL),(2872,35,72,2,NULL),(2873,37,72,2,NULL),(2874,19,73,2,NULL),(2875,51,72,2,NULL),(2876,20,73,2,NULL),(2877,61,72,2,NULL),(2878,21,73,2,NULL),(2879,66,72,2,NULL),(2880,22,73,2,NULL),(2881,67,72,2,NULL),(2882,23,73,2,NULL),(2883,69,72,2,NULL),(2884,25,73,2,NULL),(2885,70,72,2,NULL),(2886,26,73,2,NULL),(2887,72,72,2,NULL),(2888,29,73,2,NULL),(2889,83,72,2,NULL),(2890,24,73,2,NULL),(2891,88,72,2,NULL),(2892,27,73,2,NULL),(2893,93,72,2,NULL),(2894,28,73,2,NULL),(2895,95,72,2,NULL),(2896,30,73,2,NULL),(2897,96,72,2,NULL),(2898,32,73,2,NULL),(2899,65,72,2,NULL),(2900,34,73,2,NULL),(2901,35,73,2,NULL),(2902,37,73,2,NULL),(2903,51,73,2,NULL),(2904,19,75,2,NULL),(2905,61,73,2,NULL),(2906,20,75,2,NULL),(2907,66,73,2,NULL),(2908,21,75,2,NULL),(2909,67,73,2,NULL),(2910,22,75,2,NULL),(2911,69,73,2,NULL),(2912,23,75,2,NULL),(2913,70,73,2,NULL),(2914,25,75,2,NULL),(2915,72,73,2,NULL),(2916,26,75,2,NULL),(2917,83,73,2,NULL),(2918,29,75,2,NULL),(2919,88,73,2,NULL),(2920,24,75,2,NULL),(2921,93,73,2,NULL),(2922,27,75,2,NULL),(2923,95,73,2,NULL),(2924,28,75,2,NULL),(2925,96,73,2,NULL),(2926,30,75,2,NULL),(2927,65,73,2,NULL),(2928,32,75,2,NULL),(2929,34,75,2,NULL),(2930,35,75,2,NULL),(2931,37,75,2,NULL),(2932,19,76,2,NULL),(2933,51,75,2,NULL),(2934,20,76,2,NULL),(2935,61,75,2,NULL),(2936,21,76,2,NULL),(2937,66,75,2,NULL),(2938,22,76,2,NULL),(2939,67,75,2,NULL),(2940,23,76,2,NULL),(2941,69,75,2,NULL),(2942,25,76,2,NULL),(2943,70,75,2,NULL),(2944,26,76,2,NULL),(2945,72,75,2,NULL),(2946,29,76,2,NULL),(2947,83,75,2,NULL),(2948,24,76,2,NULL),(2949,88,75,2,NULL),(2950,27,76,2,NULL),(2951,93,75,2,NULL),(2952,28,76,2,NULL),(2953,95,75,2,NULL),(2954,30,76,2,NULL),(2955,96,75,2,NULL),(2956,32,76,2,NULL),(2957,65,75,2,NULL),(2958,34,76,2,NULL),(2959,35,76,2,NULL),(2960,37,76,2,NULL),(2961,51,76,2,NULL),(2962,19,78,2,NULL),(2963,61,76,2,NULL),(2964,20,78,2,NULL),(2965,66,76,2,NULL),(2966,21,78,2,NULL),(2967,67,76,2,NULL),(2968,22,78,2,NULL),(2969,69,76,2,NULL),(2970,23,78,2,NULL),(2971,70,76,2,NULL),(2972,25,78,2,NULL),(2973,72,76,2,NULL),(2974,26,78,2,NULL),(2975,83,76,2,NULL),(2976,29,78,2,NULL),(2977,88,76,2,NULL),(2978,24,78,2,NULL),(2979,93,76,2,NULL),(2980,27,78,2,NULL),(2981,95,76,2,NULL),(2982,28,78,2,NULL),(2983,96,76,2,NULL),(2984,30,78,2,NULL),(2985,65,76,2,NULL),(2986,32,78,2,NULL),(2987,34,78,2,NULL),(2988,35,78,2,NULL),(2989,37,78,2,NULL),(2990,19,80,2,NULL),(2991,51,78,2,NULL),(2992,20,80,2,NULL),(2993,61,78,2,NULL),(2994,21,80,2,NULL),(2995,66,78,2,NULL),(2996,22,80,2,NULL),(2997,67,78,2,NULL),(2998,23,80,2,NULL),(2999,69,78,2,NULL),(3000,25,80,2,NULL),(3001,70,78,2,NULL),(3002,26,80,2,NULL),(3003,72,78,2,NULL),(3004,29,80,2,NULL),(3005,83,78,2,NULL),(3006,24,80,2,NULL),(3007,88,78,2,NULL),(3008,27,80,2,NULL),(3009,93,78,2,NULL),(3010,28,80,2,NULL),(3011,95,78,2,NULL),(3012,30,80,2,NULL),(3013,96,78,2,NULL),(3014,32,80,2,NULL),(3015,65,78,2,NULL),(3016,34,80,2,NULL),(3017,35,80,2,NULL),(3018,37,80,2,NULL),(3019,51,80,2,NULL),(3020,19,83,2,NULL),(3021,61,80,2,NULL),(3022,20,83,2,NULL),(3023,66,80,2,NULL),(3024,21,83,2,NULL),(3025,67,80,2,NULL),(3026,22,83,2,NULL),(3027,69,80,2,NULL),(3028,23,83,2,NULL),(3029,70,80,2,NULL),(3030,25,83,2,NULL),(3031,72,80,2,NULL),(3032,26,83,2,NULL),(3033,83,80,2,NULL),(3034,29,83,2,NULL),(3035,88,80,2,NULL),(3036,24,83,2,NULL),(3037,93,80,2,NULL),(3038,27,83,2,NULL),(3039,95,80,2,NULL),(3040,28,83,2,NULL),(3041,96,80,2,NULL),(3042,30,83,2,NULL),(3043,65,80,2,NULL),(3044,32,83,2,NULL),(3045,34,83,2,NULL),(3046,35,83,2,NULL),(3047,37,83,2,NULL),(3048,19,86,2,NULL),(3049,51,83,2,NULL),(3050,20,86,2,NULL),(3051,61,83,2,NULL),(3052,21,86,2,NULL),(3053,66,83,2,NULL),(3054,22,86,2,NULL),(3055,67,83,2,NULL),(3056,23,86,2,NULL),(3057,69,83,2,NULL),(3058,25,86,2,NULL),(3059,70,83,2,NULL),(3060,26,86,2,NULL),(3061,72,83,2,NULL),(3062,29,86,2,NULL),(3063,83,83,2,NULL),(3064,24,86,2,NULL),(3065,88,83,2,NULL),(3066,27,86,2,NULL),(3067,93,83,2,NULL),(3068,28,86,2,NULL),(3069,95,83,2,NULL),(3070,30,86,2,NULL),(3071,96,83,2,NULL),(3072,32,86,2,NULL),(3073,65,83,2,NULL),(3074,34,86,2,NULL),(3075,35,86,2,NULL),(3076,35,86,2,NULL),(3077,37,86,2,NULL),(3078,19,87,2,NULL),(3079,51,86,2,NULL),(3080,20,87,2,NULL),(3081,61,86,2,NULL),(3082,21,87,2,NULL),(3083,66,86,2,NULL),(3084,22,87,2,NULL),(3085,67,86,2,NULL),(3086,23,87,2,NULL),(3087,69,86,2,NULL),(3088,25,87,2,NULL),(3089,70,86,2,NULL),(3090,26,87,2,NULL),(3091,72,86,2,NULL),(3092,29,87,2,NULL),(3093,83,86,2,NULL),(3094,24,87,2,NULL),(3095,88,86,2,NULL),(3096,27,87,2,NULL),(3097,93,86,2,NULL),(3098,28,87,2,NULL),(3099,95,86,2,NULL),(3100,30,87,2,NULL),(3101,96,86,2,NULL),(3102,32,87,2,NULL),(3103,65,86,2,NULL),(3104,34,87,2,NULL),(3105,35,87,2,NULL),(3106,37,87,2,NULL),(3107,19,88,2,NULL),(3108,51,87,2,NULL),(3109,20,88,2,NULL),(3110,61,87,2,NULL),(3111,21,88,2,NULL),(3112,66,87,2,NULL),(3113,22,88,2,NULL),(3114,67,87,2,NULL),(3115,23,88,2,NULL),(3116,69,87,2,NULL),(3117,25,88,2,NULL),(3118,70,87,2,NULL),(3119,26,88,2,NULL),(3120,72,87,2,NULL),(3121,29,88,2,NULL),(3122,83,87,2,NULL),(3123,24,88,2,NULL),(3124,88,87,2,NULL),(3125,27,88,2,NULL),(3126,93,87,2,NULL),(3127,28,88,2,NULL),(3128,95,87,2,NULL),(3129,30,88,2,NULL),(3130,96,87,2,NULL),(3131,32,88,2,NULL),(3132,65,87,2,NULL),(3133,34,88,2,NULL),(3134,35,88,2,NULL),(3135,37,88,2,NULL),(3136,19,89,2,NULL),(3137,51,88,2,NULL),(3138,20,89,2,NULL),(3139,61,88,2,NULL),(3140,21,89,2,NULL),(3141,66,88,2,NULL),(3142,22,89,2,NULL),(3143,67,88,2,NULL),(3144,23,89,2,NULL),(3145,69,88,2,NULL),(3146,25,89,2,NULL),(3147,70,88,2,NULL),(3148,26,89,2,NULL),(3149,72,88,2,NULL),(3150,29,89,2,NULL),(3151,83,88,2,NULL),(3152,24,89,2,NULL),(3153,88,88,2,NULL),(3154,27,89,2,NULL),(3155,93,88,2,NULL),(3156,28,89,2,NULL),(3157,95,88,2,NULL),(3158,30,89,2,NULL),(3159,96,88,2,NULL),(3160,32,89,2,NULL),(3161,65,88,2,NULL),(3162,34,89,2,NULL),(3163,35,89,2,NULL),(3164,37,89,2,NULL),(3165,19,90,2,NULL),(3166,20,90,2,NULL),(3167,21,90,2,NULL),(3168,51,89,2,NULL),(3169,61,89,2,NULL),(3170,22,90,2,NULL),(3171,22,90,2,NULL),(3172,66,89,2,NULL),(3173,46,16,2,NULL),(3174,23,90,2,NULL),(3175,67,89,2,NULL),(3176,25,90,2,NULL),(3177,26,90,2,NULL),(3178,69,89,2,NULL),(3179,86,17,2,NULL),(3180,29,90,2,NULL),(3181,29,90,2,NULL),(3182,70,89,2,NULL),(3183,91,17,2,NULL),(3184,24,90,2,NULL),(3185,27,90,2,NULL),(3186,72,89,2,NULL),(3187,28,90,2,NULL),(3188,83,89,2,NULL),(3189,92,17,2,NULL),(3190,30,90,2,NULL),(3191,32,90,2,NULL),(3192,88,89,2,NULL),(3193,34,90,2,NULL),(3194,94,17,2,NULL),(3195,93,89,2,NULL),(3196,35,90,2,NULL),(3197,37,90,2,NULL),(3198,97,17,2,NULL),(3199,95,89,2,NULL),(3200,19,91,2,NULL),(3201,20,91,2,NULL),(3202,96,89,2,NULL),(3203,98,16,2,NULL),(3204,21,91,2,NULL),(3205,22,91,2,NULL),(3206,65,89,2,NULL),(3207,23,91,2,NULL),(3208,25,91,2,NULL),(3209,26,91,2,NULL),(3210,51,90,2,NULL),(3211,29,91,2,NULL),(3212,61,90,2,NULL),(3213,24,91,2,NULL),(3214,27,91,2,NULL),(3215,66,90,2,NULL),(3216,28,91,2,NULL),(3217,30,91,2,NULL),(3218,67,90,2,NULL),(3219,32,91,2,NULL),(3220,34,91,2,NULL),(3221,35,91,2,NULL),(3222,69,90,2,NULL),(3223,37,91,2,NULL),(3224,70,90,2,NULL),(3225,19,92,2,NULL),(3226,20,92,2,NULL),(3227,72,90,2,NULL),(3228,21,92,2,NULL),(3229,22,92,2,NULL),(3230,83,90,2,NULL),(3231,23,92,2,NULL),(3232,25,92,2,NULL),(3233,88,90,2,NULL),(3234,26,92,2,NULL),(3235,29,92,2,NULL),(3236,93,90,2,NULL),(3237,24,92,2,NULL),(3238,27,92,2,NULL),(3239,95,90,2,NULL),(3240,28,92,2,NULL),(3241,30,92,2,NULL),(3242,96,90,2,NULL),(3243,32,92,2,NULL),(3244,51,10,2,NULL),(3245,34,92,2,NULL),(3246,65,90,2,NULL),(3247,35,92,2,NULL),(3248,61,10,2,NULL),(3249,37,92,2,NULL),(3250,19,94,2,NULL),(3251,51,91,2,NULL),(3252,66,10,2,NULL),(3253,20,94,2,NULL),(3254,21,94,2,NULL),(3255,61,91,2,NULL),(3256,22,94,2,NULL),(3257,23,94,2,NULL),(3258,67,10,2,NULL),(3259,66,91,2,NULL),(3260,25,94,2,NULL),(3261,26,94,2,NULL),(3262,67,91,2,NULL),(3263,69,10,2,NULL),(3264,29,94,2,NULL),(3265,24,94,2,NULL),(3266,69,91,2,NULL),(3267,70,10,2,NULL),(3268,27,94,2,NULL),(3269,28,94,2,NULL),(3270,72,10,2,NULL),(3271,70,91,2,NULL),(3272,30,94,2,NULL),(3273,32,94,2,NULL),(3274,83,10,2,NULL),(3275,72,91,2,NULL),(3276,34,94,2,NULL),(3277,35,94,2,NULL),(3278,88,10,2,NULL),(3279,83,91,2,NULL),(3280,37,94,2,NULL),(3281,19,95,2,NULL),(3282,93,10,2,NULL),(3283,88,91,2,NULL),(3284,20,95,2,NULL),(3285,21,95,2,NULL),(3286,95,10,2,NULL),(3287,93,91,2,NULL),(3288,22,95,2,NULL),(3289,23,95,2,NULL),(3290,96,10,2,NULL),(3291,95,91,2,NULL),(3292,25,95,2,NULL),(3293,26,95,2,NULL),(3294,51,13,2,NULL),(3295,96,91,2,NULL),(3296,29,95,2,NULL),(3297,24,95,2,NULL),(3298,61,13,2,NULL),(3299,65,91,2,NULL),(3300,27,95,2,NULL),(3301,28,95,2,NULL),(3302,66,13,2,NULL),(3303,30,95,2,NULL),(3304,30,95,2,NULL),(3305,51,92,2,NULL),(3306,67,13,2,NULL),(3307,32,95,2,NULL),(3308,34,95,2,NULL),(3309,61,92,2,NULL),(3310,35,95,2,NULL),(3311,35,95,2,NULL),(3312,69,13,2,NULL),(3313,66,92,2,NULL),(3314,37,95,2,NULL),(3315,19,96,2,NULL),(3316,70,13,2,NULL),(3317,67,92,2,NULL),(3318,20,96,2,NULL),(3319,20,96,2,NULL),(3320,69,92,2,NULL),(3321,72,13,2,NULL),(3322,21,96,2,NULL),(3323,22,96,2,NULL),(3324,70,92,2,NULL),(3325,83,13,2,NULL),(3326,23,96,2,NULL),(3327,23,96,2,NULL),(3328,72,92,2,NULL),(3329,88,13,2,NULL),(3330,25,96,2,NULL),(3331,26,96,2,NULL),(3332,83,92,2,NULL),(3333,93,13,2,NULL),(3334,29,96,2,NULL),(3335,29,96,2,NULL),(3336,88,92,2,NULL),(3337,95,13,2,NULL),(3338,24,96,2,NULL),(3339,27,96,2,NULL),(3340,93,92,2,NULL),(3341,96,13,2,NULL),(3342,28,96,2,NULL),(3343,28,96,2,NULL),(3344,95,92,2,NULL),(3345,30,96,2,NULL),(3346,32,96,2,NULL),(3347,51,74,2,NULL),(3348,96,92,2,NULL),(3349,34,96,2,NULL),(3350,34,96,2,NULL),(3351,61,74,2,NULL),(3352,65,92,2,NULL),(3353,35,96,2,NULL),(3354,37,96,2,NULL),(3355,66,74,2,NULL),(3356,19,97,2,NULL),(3357,19,97,2,NULL),(3358,51,94,2,NULL),(3359,67,74,2,NULL),(3360,20,97,2,NULL),(3361,21,97,2,NULL),(3362,61,94,2,NULL),(3363,69,74,2,NULL),(3364,22,97,2,NULL),(3365,22,97,2,NULL),(3366,66,94,2,NULL),(3367,70,74,2,NULL),(3368,23,97,2,NULL),(3369,23,97,2,NULL),(3370,67,94,2,NULL),(3371,72,74,2,NULL),(3372,25,97,2,NULL),(3373,26,97,2,NULL),(3374,69,94,2,NULL),(3375,83,74,2,NULL),(3376,29,97,2,NULL),(3377,29,97,2,NULL),(3378,70,94,2,NULL),(3379,88,74,2,NULL),(3380,24,97,2,NULL),(3381,27,97,2,NULL),(3382,72,94,2,NULL),(3383,93,74,2,NULL),(3384,28,97,2,NULL),(3385,28,97,2,NULL),(3386,83,94,2,NULL),(3387,95,74,2,NULL),(3388,30,97,2,NULL),(3389,32,97,2,NULL),(3390,88,94,2,NULL),(3391,96,74,2,NULL),(3392,34,97,2,NULL),(3393,34,97,2,NULL),(3394,93,94,2,NULL),(3395,51,77,2,NULL),(3396,35,97,2,NULL),(3397,37,97,2,NULL),(3398,95,94,2,NULL),(3399,61,77,2,NULL),(3400,19,98,2,NULL),(3401,19,98,2,NULL),(3402,96,94,2,NULL),(3403,66,77,2,NULL),(3404,20,98,2,NULL),(3405,20,98,2,NULL),(3406,65,94,2,NULL),(3407,67,77,2,NULL),(3408,21,98,2,NULL),(3409,21,98,2,NULL),(3410,69,77,2,NULL),(3411,22,98,2,NULL),(3412,23,98,2,NULL),(3413,51,95,2,NULL),(3414,70,77,2,NULL),(3415,25,98,2,NULL),(3416,25,98,2,NULL),(3417,61,95,2,NULL),(3418,72,77,2,NULL),(3419,26,98,2,NULL),(3420,29,98,2,NULL),(3421,66,95,2,NULL),(3422,83,77,2,NULL),(3423,24,98,2,NULL),(3424,24,98,2,NULL),(3425,67,95,2,NULL),(3426,88,77,2,NULL),(3427,27,98,2,NULL),(3428,28,98,2,NULL),(3429,69,95,2,NULL),(3430,93,77,2,NULL),(3431,30,98,2,NULL),(3432,30,98,2,NULL),(3433,70,95,2,NULL),(3434,95,77,2,NULL),(3435,32,98,2,NULL),(3436,34,98,2,NULL),(3437,72,95,2,NULL),(3438,96,77,2,NULL),(3439,35,98,2,NULL),(3440,35,98,2,NULL),(3441,83,95,2,NULL),(3442,51,79,2,NULL),(3443,37,98,2,NULL),(3444,19,99,2,NULL),(3445,88,95,2,NULL),(3446,61,79,2,NULL),(3447,20,99,2,NULL),(3448,20,99,2,NULL),(3449,93,95,2,NULL),(3450,66,79,2,NULL),(3451,21,99,2,NULL),(3452,21,99,2,NULL),(3453,95,95,2,NULL),(3454,67,79,2,NULL),(3455,22,99,2,NULL),(3456,23,99,2,NULL),(3457,96,95,2,NULL),(3458,69,79,2,NULL),(3459,25,99,2,NULL),(3460,25,99,2,NULL),(3461,65,95,2,NULL),(3462,70,79,2,NULL),(3463,26,99,2,NULL),(3464,29,99,2,NULL),(3465,72,79,2,NULL),(3466,24,99,2,NULL),(3467,24,99,2,NULL),(3468,51,96,2,NULL),(3469,83,79,2,NULL),(3470,27,99,2,NULL),(3471,27,99,2,NULL),(3472,61,96,2,NULL),(3473,88,79,2,NULL),(3474,28,99,2,NULL),(3475,30,99,2,NULL),(3476,66,96,2,NULL),(3477,93,79,2,NULL),(3478,32,99,2,NULL),(3479,32,99,2,NULL),(3480,67,96,2,NULL),(3481,95,79,2,NULL),(3482,34,99,2,NULL),(3483,35,99,2,NULL),(3484,69,96,2,NULL),(3485,96,79,2,NULL),(3486,37,99,2,NULL),(3487,37,99,2,NULL),(3488,70,96,2,NULL),(3489,51,81,2,NULL),(3490,19,100,2,NULL),(3491,20,100,2,NULL),(3492,72,96,2,NULL),(3493,61,81,2,NULL),(3494,21,100,2,NULL),(3495,21,100,2,NULL),(3496,83,96,2,NULL),(3497,66,81,2,NULL),(3498,22,100,2,NULL),(3499,23,100,2,NULL),(3500,88,96,2,NULL),(3501,67,81,2,NULL),(3502,25,100,2,NULL),(3503,25,100,2,NULL),(3504,93,96,2,NULL),(3505,69,81,2,NULL),(3506,26,100,2,NULL),(3507,29,100,2,NULL),(3508,95,96,2,NULL),(3509,70,81,2,NULL),(3510,24,100,2,NULL),(3511,24,100,2,NULL),(3512,96,96,2,NULL),(3513,72,81,2,NULL),(3514,27,100,2,NULL),(3515,28,100,2,NULL),(3516,65,96,2,NULL),(3517,83,81,2,NULL),(3518,30,100,2,NULL),(3519,30,100,2,NULL),(3520,88,81,2,NULL),(3521,32,100,2,NULL),(3522,32,100,2,NULL),(3523,51,97,2,NULL),(3524,93,81,2,NULL),(3525,61,97,2,NULL),(3526,34,100,2,NULL),(3527,34,100,2,NULL),(3528,95,81,2,NULL),(3529,66,97,2,NULL),(3530,35,100,2,NULL),(3531,35,100,2,NULL),(3532,96,81,2,NULL),(3533,67,97,2,NULL),(3534,37,100,2,NULL),(3535,37,100,2,NULL),(3536,51,82,2,NULL),(3537,69,97,2,NULL),(3538,19,101,2,NULL),(3539,19,101,2,NULL),(3540,61,82,2,NULL),(3541,70,97,2,NULL),(3542,20,101,2,NULL),(3543,20,101,2,NULL),(3544,66,82,2,NULL),(3545,72,97,2,NULL),(3546,21,101,2,NULL),(3547,21,101,2,NULL),(3548,67,82,2,NULL),(3549,83,97,2,NULL),(3550,22,101,2,NULL),(3551,22,101,2,NULL),(3552,69,82,2,NULL),(3553,88,97,2,NULL),(3554,23,101,2,NULL),(3555,23,101,2,NULL),(3556,70,82,2,NULL),(3557,93,97,2,NULL),(3558,25,101,2,NULL),(3559,25,101,2,NULL),(3560,72,82,2,NULL),(3561,95,97,2,NULL),(3562,26,101,2,NULL),(3563,26,101,2,NULL),(3564,83,82,2,NULL),(3565,96,97,2,NULL),(3566,88,82,2,NULL),(3567,29,101,2,NULL),(3568,29,101,2,NULL),(3569,65,97,2,NULL),(3570,24,101,2,NULL),(3571,24,101,2,NULL),(3572,93,82,2,NULL),(3573,27,101,2,NULL),(3574,27,101,2,NULL),(3575,95,82,2,NULL),(3576,51,98,2,NULL),(3577,28,101,2,NULL),(3578,61,98,2,NULL),(3579,30,101,2,NULL),(3580,96,82,2,NULL),(3581,32,101,2,NULL),(3582,66,98,2,NULL),(3583,34,101,2,NULL),(3584,34,101,2,NULL),(3585,51,84,2,NULL),(3586,67,98,2,NULL),(3587,35,101,2,NULL),(3588,35,101,2,NULL),(3589,61,84,2,NULL),(3590,69,98,2,NULL),(3591,37,101,2,NULL),(3592,37,101,2,NULL),(3593,66,84,2,NULL),(3594,70,98,2,NULL),(3595,19,103,2,NULL),(3596,19,103,2,NULL),(3597,72,98,2,NULL),(3598,67,84,2,NULL),(3599,20,103,2,NULL),(3600,20,103,2,NULL),(3601,83,98,2,NULL),(3602,69,84,2,NULL),(3603,21,103,2,NULL),(3604,22,103,2,NULL),(3605,88,98,2,NULL),(3606,70,84,2,NULL),(3607,23,103,2,NULL),(3608,23,103,2,NULL),(3609,93,98,2,NULL),(3610,72,84,2,NULL),(3611,25,103,2,NULL),(3612,25,103,2,NULL),(3613,95,98,2,NULL),(3614,83,84,2,NULL),(3615,26,103,2,NULL),(3616,29,103,2,NULL),(3617,96,98,2,NULL),(3618,88,84,2,NULL),(3619,24,103,2,NULL),(3620,24,103,2,NULL),(3621,65,98,2,NULL),(3622,93,84,2,NULL),(3623,27,103,2,NULL),(3624,28,103,2,NULL),(3625,95,84,2,NULL),(3626,30,103,2,NULL),(3627,30,103,2,NULL),(3628,51,99,2,NULL),(3629,96,84,2,NULL),(3630,32,103,2,NULL),(3631,32,103,2,NULL),(3632,61,99,2,NULL),(3633,51,85,2,NULL),(3634,34,103,2,NULL),(3635,34,103,2,NULL),(3636,66,99,2,NULL),(3637,61,85,2,NULL),(3638,35,103,2,NULL),(3639,35,103,2,NULL),(3640,67,99,2,NULL),(3641,66,85,2,NULL),(3642,37,103,2,NULL),(3643,37,103,2,NULL),(3644,69,99,2,NULL),(3645,67,85,2,NULL),(3646,19,104,2,NULL),(3647,19,104,2,NULL),(3648,70,99,2,NULL),(3649,69,85,2,NULL),(3650,20,104,2,NULL),(3651,20,104,2,NULL),(3652,72,99,2,NULL),(3653,70,85,2,NULL),(3654,21,104,2,NULL),(3655,21,104,2,NULL),(3656,83,99,2,NULL),(3657,72,85,2,NULL),(3658,22,104,2,NULL),(3659,22,104,2,NULL),(3660,88,99,2,NULL),(3661,83,85,2,NULL),(3662,23,104,2,NULL),(3663,23,104,2,NULL),(3664,93,99,2,NULL),(3665,88,85,2,NULL),(3666,25,104,2,NULL),(3667,25,104,2,NULL),(3668,95,99,2,NULL),(3669,93,85,2,NULL),(3670,26,104,2,NULL),(3671,26,104,2,NULL),(3672,96,99,2,NULL),(3673,95,85,2,NULL),(3674,29,104,2,NULL),(3675,24,104,2,NULL),(3676,65,99,2,NULL),(3677,96,85,2,NULL),(3678,27,104,2,NULL),(3679,27,104,2,NULL),(3680,28,104,2,NULL),(3681,28,104,2,NULL),(3682,51,100,2,NULL),(3683,30,104,2,NULL),(3684,65,14,2,NULL),(3685,61,100,2,NULL),(3686,32,104,2,NULL),(3687,34,104,2,NULL),(3688,51,17,2,NULL),(3689,66,100,2,NULL),(3690,35,104,2,NULL),(3691,37,104,2,NULL),(3692,61,17,2,NULL),(3693,67,100,2,NULL),(3694,19,105,2,NULL),(3695,20,105,2,NULL),(3696,66,17,2,NULL),(3697,69,100,2,NULL),(3698,21,105,2,NULL),(3699,22,105,2,NULL),(3700,67,17,2,NULL),(3701,70,100,2,NULL),(3702,23,105,2,NULL),(3703,25,105,2,NULL),(3704,69,17,2,NULL),(3705,72,100,2,NULL),(3706,26,105,2,NULL),(3707,29,105,2,NULL),(3708,70,17,2,NULL),(3709,83,100,2,NULL),(3710,24,105,2,NULL),(3711,27,105,2,NULL),(3712,72,17,2,NULL),(3713,88,100,2,NULL),(3714,28,105,2,NULL),(3715,30,105,2,NULL),(3716,83,17,2,NULL),(3717,93,100,2,NULL),(3718,32,105,2,NULL),(3719,34,105,2,NULL),(3720,88,17,2,NULL),(3721,95,100,2,NULL),(3722,35,105,2,NULL),(3723,37,105,2,NULL),(3724,93,17,2,NULL),(3725,96,100,2,NULL),(3726,19,107,2,NULL),(3727,20,107,2,NULL),(3728,95,17,2,NULL),(3729,65,100,2,NULL),(3730,21,107,2,NULL),(3731,22,107,2,NULL),(3732,96,17,2,NULL),(3733,23,107,2,NULL),(3734,51,101,2,NULL),(3735,25,107,2,NULL),(3736,51,19,2,NULL),(3737,61,101,2,NULL),(3738,26,107,2,NULL),(3739,61,19,2,NULL),(3740,29,107,2,NULL),(3741,66,101,2,NULL),(3742,24,107,2,NULL),(3743,66,19,2,NULL),(3744,27,107,2,NULL),(3745,67,101,2,NULL),(3746,28,107,2,NULL),(3747,67,19,2,NULL),(3748,30,107,2,NULL),(3749,69,101,2,NULL),(3750,32,107,2,NULL),(3751,69,19,2,NULL),(3752,34,107,2,NULL),(3753,70,101,2,NULL),(3754,35,107,2,NULL),(3755,70,19,2,NULL),(3756,37,107,2,NULL),(3757,72,101,2,NULL),(3758,19,109,2,NULL),(3759,72,19,2,NULL),(3760,20,109,2,NULL),(3761,83,101,2,NULL),(3762,21,109,2,NULL),(3763,22,109,2,NULL),(3764,83,19,2,NULL),(3765,88,101,2,NULL),(3766,23,109,2,NULL),(3767,25,109,2,NULL),(3768,88,19,2,NULL),(3769,93,101,2,NULL),(3770,26,109,2,NULL),(3771,29,109,2,NULL),(3772,93,19,2,NULL),(3773,95,101,2,NULL),(3774,24,109,2,NULL),(3775,27,109,2,NULL),(3776,95,19,2,NULL),(3777,96,101,2,NULL),(3778,28,109,2,NULL),(3779,30,109,2,NULL),(3780,96,19,2,NULL),(3781,65,101,2,NULL),(3782,32,109,2,NULL),(3783,34,109,2,NULL),(3784,51,22,2,NULL),(3785,35,109,2,NULL),(3786,61,22,2,NULL),(3787,37,109,2,NULL),(3788,19,110,2,NULL),(3789,51,103,2,NULL),(3790,20,110,2,NULL),(3791,66,22,2,NULL),(3792,61,103,2,NULL),(3793,21,110,2,NULL),(3794,22,110,2,NULL),(3795,67,22,2,NULL),(3796,66,103,2,NULL),(3797,23,110,2,NULL),(3798,25,110,2,NULL),(3799,69,22,2,NULL),(3800,67,103,2,NULL),(3801,26,110,2,NULL),(3802,29,110,2,NULL),(3803,70,22,2,NULL),(3804,69,103,2,NULL),(3805,24,110,2,NULL),(3806,27,110,2,NULL),(3807,72,22,2,NULL),(3808,70,103,2,NULL),(3809,28,110,2,NULL),(3810,83,22,2,NULL),(3811,30,110,2,NULL),(3812,72,103,2,NULL),(3813,32,110,2,NULL),(3814,34,110,2,NULL),(3815,88,22,2,NULL),(3816,83,103,2,NULL),(3817,35,110,2,NULL),(3818,37,110,2,NULL),(3819,93,22,2,NULL),(3820,88,103,2,NULL),(3821,19,112,2,NULL),(3822,95,22,2,NULL),(3823,20,112,2,NULL),(3824,93,103,2,NULL),(3825,21,112,2,NULL),(3826,22,112,2,NULL),(3827,96,22,2,NULL),(3828,95,103,2,NULL),(3829,23,112,2,NULL),(3830,25,112,2,NULL),(3831,51,108,2,NULL),(3832,96,103,2,NULL),(3833,26,112,2,NULL),(3834,61,108,2,NULL),(3835,29,112,2,NULL),(3836,65,103,2,NULL),(3837,24,112,2,NULL),(3838,27,112,2,NULL),(3839,66,108,2,NULL),(3840,28,112,2,NULL),(3841,30,112,2,NULL),(3842,67,108,2,NULL),(3843,32,112,2,NULL),(3844,51,104,2,NULL),(3845,34,112,2,NULL),(3846,69,108,2,NULL),(3847,61,104,2,NULL),(3848,35,112,2,NULL),(3849,37,112,2,NULL),(3850,70,108,2,NULL),(3851,66,104,2,NULL),(3852,19,114,2,NULL),(3853,72,108,2,NULL),(3854,20,114,2,NULL),(3855,67,104,2,NULL),(3856,21,114,2,NULL),(3857,22,114,2,NULL),(3858,83,108,2,NULL),(3859,69,104,2,NULL),(3860,23,114,2,NULL),(3861,25,114,2,NULL),(3862,88,108,2,NULL),(3863,70,104,2,NULL),(3864,26,114,2,NULL),(3865,29,114,2,NULL),(3866,93,108,2,NULL),(3867,72,104,2,NULL),(3868,24,114,2,NULL),(3869,27,114,2,NULL),(3870,95,108,2,NULL),(3871,83,104,2,NULL),(3872,28,114,2,NULL),(3873,30,114,2,NULL),(3874,96,108,2,NULL),(3875,88,104,2,NULL),(3876,32,114,2,NULL),(3877,34,114,2,NULL),(3878,51,113,2,NULL),(3879,93,104,2,NULL),(3880,35,114,2,NULL),(3881,61,113,2,NULL),(3882,37,114,2,NULL),(3883,95,104,2,NULL),(3884,19,115,2,NULL),(3885,20,115,2,NULL),(3886,66,113,2,NULL),(3887,96,104,2,NULL),(3888,21,115,2,NULL),(3889,22,115,2,NULL),(3890,67,113,2,NULL),(3891,65,104,2,NULL),(3892,23,115,2,NULL),(3893,25,115,2,NULL),(3894,69,113,2,NULL),(3895,26,115,2,NULL),(3896,70,113,2,NULL),(3897,29,115,2,NULL),(3898,24,115,2,NULL),(3899,51,105,2,NULL),(3900,72,113,2,NULL),(3901,27,115,2,NULL),(3902,61,105,2,NULL),(3903,28,115,2,NULL),(3904,30,115,2,NULL),(3905,83,113,2,NULL),(3906,66,105,2,NULL),(3907,32,115,2,NULL),(3908,88,113,2,NULL),(3909,34,115,2,NULL),(3910,67,105,2,NULL),(3911,35,115,2,NULL),(3912,37,115,2,NULL),(3913,93,113,2,NULL),(3914,69,105,2,NULL),(3915,15,9,2,NULL),(3916,95,113,2,NULL),(3917,31,9,2,NULL),(3918,70,105,2,NULL),(3919,96,113,2,NULL),(3920,72,105,2,NULL),(3921,51,116,2,NULL),(3922,83,105,2,NULL),(3923,65,10,2,NULL),(3924,65,10,2,NULL),(3925,61,116,2,NULL),(3926,88,105,2,NULL),(3927,66,116,2,NULL),(3928,93,105,2,NULL),(3929,67,116,2,NULL),(3930,95,105,2,NULL),(3931,69,116,2,NULL),(3932,96,105,2,NULL),(3933,70,116,2,NULL),(3934,65,105,2,NULL),(3935,72,116,2,NULL),(3936,65,13,2,NULL),(3937,65,13,2,NULL),(3938,51,107,2,NULL),(3939,83,116,2,NULL),(3940,61,107,2,NULL),(3941,88,116,2,NULL),(3942,65,74,2,NULL),(3943,65,74,2,NULL),(3944,66,107,2,NULL),(3945,93,116,2,NULL),(3946,67,107,2,NULL),(3947,95,116,2,NULL),(3948,65,77,2,NULL),(3949,65,77,2,NULL),(3950,69,107,2,NULL),(3951,96,116,2,NULL),(3952,70,107,2,NULL),(3953,51,120,2,NULL),(3954,65,79,2,NULL),(3955,65,79,2,NULL),(3956,72,107,2,NULL),(3957,61,120,2,NULL),(3958,83,107,2,NULL),(3959,66,120,2,NULL),(3960,88,107,2,NULL),(3961,65,81,2,NULL),(3962,65,81,2,NULL),(3963,67,120,2,NULL),(3964,93,107,2,NULL),(3965,69,120,2,NULL),(3966,95,107,2,NULL),(3967,70,120,2,NULL),(3968,65,82,2,NULL),(3969,65,82,2,NULL),(3970,96,107,2,NULL),(3971,72,120,2,NULL),(3972,65,107,2,NULL),(3973,83,120,2,NULL),(3974,88,120,2,NULL),(3975,93,120,2,NULL),(3976,51,109,2,NULL),(3977,65,84,2,NULL),(3978,65,84,2,NULL),(3979,95,120,2,NULL),(3980,61,109,2,NULL),(3981,96,120,2,NULL),(3982,66,109,2,NULL),(3983,65,85,2,NULL),(3984,65,85,2,NULL),(3985,67,109,2,NULL),(3986,69,109,2,NULL),(3987,70,109,2,NULL),(3988,72,109,2,NULL),(3989,83,109,2,NULL),(3990,88,109,2,NULL),(3991,93,109,2,NULL),(3992,95,109,2,NULL),(3993,96,109,2,NULL),(3994,65,109,2,NULL),(3995,51,110,2,NULL),(3996,61,110,2,NULL),(3997,66,110,2,NULL),(3998,67,110,2,NULL),(3999,69,110,2,NULL),(4000,70,110,2,NULL),(4001,72,110,2,NULL),(4002,83,110,2,NULL),(4003,88,110,2,NULL),(4004,93,110,2,NULL),(4005,95,110,2,NULL),(4006,96,110,2,NULL),(4007,51,112,2,NULL),(4008,65,110,2,NULL),(4009,61,112,2,NULL),(4010,66,112,2,NULL),(4011,67,112,2,NULL),(4012,69,112,2,NULL),(4013,70,112,2,NULL),(4014,72,112,2,NULL),(4015,72,112,2,NULL),(4016,83,112,2,NULL),(4017,83,112,2,NULL),(4018,88,112,2,NULL),(4019,93,112,2,NULL),(4020,95,112,2,NULL),(4021,96,112,2,NULL),(4022,65,112,2,NULL),(4023,51,114,2,NULL),(4024,61,114,2,NULL),(4025,66,114,2,NULL),(4026,67,114,2,NULL),(4027,69,114,2,NULL),(4028,70,114,2,NULL),(4029,72,114,2,NULL),(4030,83,114,2,NULL),(4031,88,114,2,NULL),(4032,93,114,2,NULL),(4033,95,114,2,NULL),(4034,96,114,2,NULL),(4035,65,114,2,NULL),(4036,51,115,2,NULL),(4037,61,115,2,NULL),(4038,66,115,2,NULL),(4039,67,115,2,NULL),(4040,69,115,2,NULL),(4041,70,115,2,NULL),(4042,72,115,2,NULL),(4043,83,115,2,NULL),(4044,88,115,2,NULL),(4045,93,115,2,NULL),(4046,95,115,2,NULL),(4047,96,115,2,NULL),(4048,65,115,2,NULL),(4049,65,17,2,NULL),(4050,65,19,2,NULL),(4051,65,22,2,NULL),(4052,65,108,2,NULL),(4053,65,113,2,NULL),(4054,65,116,2,NULL),(4055,65,120,2,NULL),(4056,52,19,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProviderLinks`
--

LOCK TABLES `ProviderLinks` WRITE;
/*!40000 ALTER TABLE `ProviderLinks` DISABLE KEYS */;
INSERT INTO `ProviderLinks` VALUES (1,18,37,NULL),(2,29,37,NULL),(3,121,37,NULL),(4,32,37,NULL),(5,32,37,NULL),(6,122,37,NULL),(7,122,37,NULL);
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

-- Dump completed on 2015-10-12  3:30:44
