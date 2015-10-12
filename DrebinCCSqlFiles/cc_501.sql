-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_501
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
INSERT INTO `ActionStrings` VALUES (34,'(.*)'),(16,'android.appwidget.action.APPWIDGET_UPDATE'),(6,'android.intent.action.BOOT_COMPLETED'),(30,'android.intent.action.CHOOSER'),(11,'android.intent.action.DELETE'),(36,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(38,'android.intent.action.PACKAGE_ADDED'),(14,'android.intent.action.SCREEN_OFF'),(15,'android.intent.action.SCREEN_ON'),(10,'android.intent.action.SEARCH_LONG_PRESS'),(7,'android.intent.action.SET_WALLPAPER'),(13,'android.intent.action.TIME_SET'),(22,'android.intent.action.VIEW'),(12,'android.provider.Telephony.SMS_RECEIVED'),(33,'android.provider.Telephony.WAP_PUSH_RECEIVED'),(25,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(41,'android.settings.WIRELESS_SETTINGS'),(35,'com.android.contacts.action.FILTER_CONTACTS'),(8,'com.android.launcher.action.INSTALL_SHORTCUT'),(9,'com.android.launcher.action.UNINSTALL_SHORTCUT'),(24,'com.jx.Action_CopyResError'),(31,'com.jx.MainActivity.CostInfo'),(21,'com.jx.MainActivity.ErrorInfo'),(32,'com.jx.MainActivity.InstallConfirmInfo'),(37,'com.jx.MainActivity.OpenLWP'),(40,'com.jx.MainActivity.RepeateInstall'),(39,'com.jx.MainActivity.SaveID'),(23,'com.jx.action.ExitBootReceiver'),(29,'com.jx.ad.ADService.ConfirmInstallInfo'),(4,'com.jx.ad.ADService.Init'),(27,'com.jx.ad.ADService.InitHasUpdate'),(28,'com.jx.ad.ADService.InstallRes'),(2,'com.jx.ad.ADService.Run'),(3,'com.jx.ad.ADService.RunCancel'),(26,'com.jx.ad.BootSmsReceiverService.Exit'),(5,'com.jx.ad.BootSmsReceiverService.Start'),(20,'com.kms.broadcast.deliveredsms'),(18,'com.kms.broadcast.sentsms.v1'),(19,'com.kms.broadcast.sentsms.v2'),(17,'com.kms.gui.widget.CLICK');
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
INSERT INTO `Applications` VALUES (1,'com.kms',86),(2,'com.kms',70),(3,'com.jx.theme.n1117089725',1),(4,'com.kms',106),(5,'com.km.launcher',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=257 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.kms.gui.KMSEnterCodeActivity'),(2,2,'com.kms.gui.KMSEnterCodeActivity'),(3,1,'com.kms.gui.KMSMain'),(4,2,'com.kms.gui.KMSMain'),(5,1,'com.kms.gui.KMSHelpActivity'),(6,3,'com.jx.MainActivity'),(7,2,'com.kms.gui.KMSHelpActivity'),(8,1,'com.kms.antivirus.gui.AvScanFilesActivity'),(9,3,'com.jx.SettingActivity'),(10,2,'com.kms.antivirus.gui.AvScanFilesActivity'),(11,1,'com.kms.antivirus.gui.AvScanResultActivity'),(12,3,'com.jx.WelcomeActivity'),(13,2,'com.kms.antivirus.gui.AvScanResultActivity'),(14,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(15,1,'com.kms.antivirus.gui.AvAdditionalActivity'),(16,3,'com.jx.ad.AndroidThemeService'),(17,2,'com.kms.antivirus.gui.AvAdditionalActivity'),(18,1,'com.kms.antivirus.gui.AvMonitorParamsActivity'),(19,2,'com.kms.antivirus.gui.AvMonitorParamsActivity'),(20,1,'com.kms.antivirus.gui.AvScanParamsActivity'),(21,3,'com.jx.ad.BootSmsReceiverService'),(22,2,'com.kms.antivirus.gui.AvScanParamsActivity'),(23,1,'com.kms.antivirus.gui.AvCheckObjectsActivity'),(24,5,'com.km.launcher.Launcher'),(25,4,'com.kms.gui.KMSEnterCodeActivity'),(26,4,'com.kms.gui.KMSEnterCodeActivity'),(27,3,'com.jx.ad.BootReceiver'),(28,2,'com.kms.antivirus.gui.AvCheckObjectsActivity'),(29,1,'com.kms.antivirus.gui.AvScanCureParamsActivity'),(30,4,'com.kms.gui.KMSMain'),(31,4,'com.kms.gui.KMSMain'),(32,2,'com.kms.antivirus.gui.AvScanCureParamsActivity'),(33,5,'com.km.launcher.WallpaperChooser'),(34,1,'com.kms.antivirus.gui.AvSelectFolderActivity'),(35,4,'com.kms.gui.KMSHelpActivity'),(36,4,'com.kms.gui.KMSHelpActivity'),(37,2,'com.kms.antivirus.gui.AvSelectFolderActivity'),(38,1,'com.kms.antivirus.gui.AvUserActionActivity'),(39,5,'com.km.theme.ThemeListActivity'),(40,4,'com.kms.antivirus.gui.AvScanFilesActivity'),(41,4,'com.kms.antivirus.gui.AvScanFilesActivity'),(42,2,'com.kms.antivirus.gui.AvUserActionActivity'),(43,5,'com.km.charge.MainActivity'),(44,1,'com.kms.privacyprotection.gui.PrivacyProtectionActivity'),(45,5,'com.km.ad.AdService'),(46,4,'com.kms.antivirus.gui.AvScanResultActivity'),(47,4,'com.kms.antivirus.gui.AvScanResultActivity'),(48,2,'com.kms.privacyprotection.gui.PrivacyProtectionActivity'),(49,5,'com.km.charge.CycleService'),(50,1,'com.kms.privacyprotection.gui.PPSettingsActivity'),(51,5,'com.km.launcher.InstallShortcutReceiver'),(52,4,'com.kms.antivirus.gui.AvAdditionalActivity'),(53,4,'com.kms.antivirus.gui.AvAdditionalActivity'),(54,2,'com.kms.privacyprotection.gui.PPSettingsActivity'),(55,1,'com.kms.privacyprotection.gui.PPContactsActivity'),(56,4,'com.kms.antivirus.gui.AvMonitorParamsActivity'),(57,4,'com.kms.antivirus.gui.AvMonitorParamsActivity'),(58,5,'com.km.launcher.UninstallShortcutReceiver'),(59,2,'com.kms.privacyprotection.gui.PPContactsActivity'),(60,1,'com.kms.antitheft.gui.SmsBlockSettingsActivity'),(61,4,'com.kms.antivirus.gui.AvScanParamsActivity'),(62,4,'com.kms.antivirus.gui.AvScanParamsActivity'),(63,2,'com.kms.antitheft.gui.SmsBlockSettingsActivity'),(64,5,'com.km.charge.BootReceiver'),(65,1,'com.kms.antitheft.gui.InfoActivity'),(66,4,'com.kms.antivirus.gui.AvCheckObjectsActivity'),(67,4,'com.kms.antivirus.gui.AvCheckObjectsActivity'),(68,2,'com.kms.antitheft.gui.InfoActivity'),(69,5,'com.km.launcher.LauncherProvider'),(70,1,'com.kms.antitheft.gui.BlockTextActivity'),(71,2,'com.kms.antitheft.gui.BlockTextActivity'),(72,4,'com.kms.antivirus.gui.AvScanCureParamsActivity'),(73,1,'com.kms.antitheft.gui.LockScreenActivity'),(74,4,'com.kms.antivirus.gui.AvScanCureParamsActivity'),(75,2,'com.kms.antitheft.gui.LockScreenActivity'),(76,4,'com.kms.antivirus.gui.AvSelectFolderActivity'),(77,4,'com.kms.antivirus.gui.AvSelectFolderActivity'),(78,1,'com.kms.antitheft.gui.EmailActivity'),(79,4,'com.kms.antivirus.gui.AvUserActionActivity'),(80,1,'com.kms.antitheft.gui.PhoneNumberActivity'),(81,2,'com.kms.antitheft.gui.EmailActivity'),(82,4,'com.kms.privacyprotection.gui.PrivacyProtectionActivity'),(83,1,'com.kms.antitheft.gui.SimWatchSettingsActivity'),(84,2,'com.kms.antitheft.gui.PhoneNumberActivity'),(85,4,'com.kms.privacyprotection.gui.PPSettingsActivity'),(86,1,'com.kms.activation.gui.PasswordRecoveryActivity'),(87,2,'com.kms.antitheft.gui.SimWatchSettingsActivity'),(88,4,'com.kms.privacyprotection.gui.PPContactsActivity'),(89,4,'com.kms.antitheft.gui.SmsBlockSettingsActivity'),(90,1,'com.kms.activation.gui.PasswordRecoveryInfoActivity'),(91,2,'com.kms.activation.gui.PasswordRecoveryActivity'),(92,4,'com.kms.antitheft.gui.InfoActivity'),(93,1,'com.kms.activation.gui.PasswordRecoveryActionActivity'),(94,2,'com.kms.activation.gui.PasswordRecoveryInfoActivity'),(95,4,'com.kms.antitheft.gui.BlockTextActivity'),(96,1,'com.kms.antitheft.gui.SmsCleanSettingsActivity'),(97,2,'com.kms.activation.gui.PasswordRecoveryActionActivity'),(98,4,'com.kms.antitheft.gui.LockScreenActivity'),(99,1,'com.kms.antitheft.gui.SmsFindSettingsActivity'),(100,2,'com.kms.antitheft.gui.SmsCleanSettingsActivity'),(101,4,'com.kms.antitheft.gui.EmailActivity'),(102,4,'com.kms.antitheft.gui.PhoneNumberActivity'),(103,1,'com.kms.antitheft.gui.SmsCleanSelectFolderActivity'),(104,2,'com.kms.antitheft.gui.SmsFindSettingsActivity'),(105,4,'com.kms.antitheft.gui.SimWatchSettingsActivity'),(106,1,'com.kms.updater.gui.KMSUpdaterScheduleSettingsActivity'),(107,2,'com.kms.antitheft.gui.SmsCleanSelectFolderActivity'),(108,4,'com.kms.activation.gui.PasswordRecoveryActivity'),(109,1,'com.kms.updater.gui.UpdateActivity'),(110,2,'com.kms.updater.gui.KMSUpdaterScheduleSettingsActivity'),(111,4,'com.kms.activation.gui.PasswordRecoveryInfoActivity'),(112,4,'com.kms.activation.gui.PasswordRecoveryActionActivity'),(113,1,'com.kms.activation.gui.ActivationSettingsActivity'),(114,2,'com.kms.updater.gui.UpdateActivity'),(115,4,'com.kms.antitheft.gui.SmsCleanSettingsActivity'),(116,1,'com.kms.activation.gui.ActivationActivity'),(117,2,'com.kms.activation.gui.ActivationSettingsActivity'),(118,4,'com.kms.antitheft.gui.SmsFindSettingsActivity'),(119,1,'com.kms.activation.gui.LicenseInfoActivity'),(120,2,'com.kms.activation.gui.ActivationActivity'),(121,4,'com.kms.antitheft.gui.SmsCleanSelectFolderActivity'),(122,4,'com.kms.updater.gui.KMSUpdaterScheduleSettingsActivity'),(123,1,'com.kms.activation.gui.SubscriptionErrorActivity'),(124,2,'com.kms.activation.gui.LicenseInfoActivity'),(125,4,'com.kms.updater.gui.UpdateActivity'),(126,1,'com.kms.activation.gui.ConfirmActivationActivity'),(127,2,'com.kms.activation.gui.SubscriptionErrorActivity'),(128,4,'com.kms.activation.gui.ActivationSettingsActivity'),(129,1,'com.kms.activation.gui.EnterCodeActivity'),(130,2,'com.kms.activation.gui.ConfirmActivationActivity'),(131,4,'com.kms.activation.gui.ActivationActivity'),(132,4,'com.kms.activation.gui.LicenseInfoActivity'),(133,1,'com.kms.activation.gui.InternetConnectionRequiredActivity'),(134,2,'com.kms.activation.gui.EnterCodeActivity'),(135,4,'com.kms.activation.gui.SubscriptionErrorActivity'),(136,1,'com.kms.uninstaller.UninstallActivity'),(137,2,'com.kms.activation.gui.InternetConnectionRequiredActivity'),(138,4,'com.kms.activation.gui.ConfirmActivationActivity'),(139,2,'com.kms.uninstaller.UninstallActivity'),(140,4,'com.kms.activation.gui.EnterCodeActivity'),(141,1,'com.kms.additional.gui.AdditionalSettingsActivity'),(142,4,'com.kms.activation.gui.InternetConnectionRequiredActivity'),(143,2,'com.kms.additional.gui.AdditionalSettingsActivity'),(144,4,'com.kms.additional.gui.AdditionalSettingsActivity'),(145,1,'com.kms.antispam.gui.AntiSpamSettingsActivity'),(146,4,'com.kms.antispam.gui.AntiSpamSettingsActivity'),(147,2,'com.kms.antispam.gui.AntiSpamSettingsActivity'),(148,1,'com.kms.antispam.gui.AntiSpamListActivity'),(149,4,'com.kms.antispam.gui.AntiSpamListActivity'),(150,2,'com.kms.antispam.gui.AntiSpamListActivity'),(151,1,'com.kms.antispam.gui.AntiSpamListItemActivity'),(152,4,'com.kms.antispam.gui.AntiSpamListItemActivity'),(153,2,'com.kms.antispam.gui.AntiSpamListItemActivity'),(154,4,'com.kms.antispam.gui.AntiSpamItemAlreadyExistsActivity'),(155,1,'com.kms.antispam.gui.AntiSpamItemAlreadyExistsActivity'),(156,4,'com.kms.antispam.gui.AntiSpamUserActionActivity'),(157,2,'com.kms.antispam.gui.AntiSpamItemAlreadyExistsActivity'),(158,1,'com.kms.antispam.gui.AntiSpamUserActionActivity'),(159,4,'com.kms.additional.gui.AboutActivity'),(160,2,'com.kms.antispam.gui.AntiSpamUserActionActivity'),(161,1,'com.kms.additional.gui.AboutActivity'),(162,4,'com.kms.activation.gui.SubscriptionTermsActivity'),(163,2,'com.kms.additional.gui.AboutActivity'),(164,4,'com.kms.activation.gui.SubscriptionKeyReceivedActivity'),(165,1,'com.kms.activation.gui.SubscriptionTermsActivity'),(166,4,'com.kms.privacyprotection.gui.FakeActivity'),(167,2,'com.kms.activation.gui.SubscriptionTermsActivity'),(168,4,'com.kms.additional.gui.SendCommandSettingsActivity'),(169,1,'com.kms.activation.gui.SubscriptionKeyReceivedActivity'),(170,4,'com.kms.gui.LicenseExpiredInfoActivity'),(171,2,'com.kms.activation.gui.SubscriptionKeyReceivedActivity'),(172,1,'com.kms.privacyprotection.gui.FakeActivity'),(173,4,'com.kms.additional.gui.WidgetSettingsActivity'),(174,1,'com.kms.additional.gui.SendCommandSettingsActivity'),(175,2,'com.kms.privacyprotection.gui.FakeActivity'),(176,4,'com.kms.updater.gui.KMSConfirmUpdateActivity'),(177,2,'com.kms.additional.gui.SendCommandSettingsActivity'),(178,1,'com.kms.gui.LicenseExpiredInfoActivity'),(179,4,'com.kms.antispam.gui.CallListActivity'),(180,2,'com.kms.gui.LicenseExpiredInfoActivity'),(181,1,'com.kms.additional.gui.WidgetSettingsActivity'),(182,4,'com.kms.antispam.gui.ImportSMSNumberActivity'),(183,2,'com.kms.additional.gui.WidgetSettingsActivity'),(184,4,'com.kms.gui.PremiumInstalledActivity'),(185,1,'com.kms.updater.gui.KMSConfirmUpdateActivity'),(186,2,'com.kms.antispam.gui.AntispamReportsActivity'),(187,4,'com.kms.antispam.gui.AntispamReportsActivity'),(188,4,'com.kms.antispam.gui.AntispamReportsActivity'),(189,1,'com.kms.antispam.gui.AntispamReportsActivity'),(190,2,'com.kms.kmsdaemon.KMSDaemon'),(191,4,'com.kms.kmsdaemon.KMSDaemon'),(192,4,'com.kms.kmsdaemon.SMSReceiver'),(193,1,'com.kms.kmsdaemon.KMSDaemon'),(194,2,'com.kms.kmsdaemon.SMSReceiver'),(195,1,'com.kms.kmsdaemon.SMSReceiver'),(196,4,'com.kms.kmsdaemon.BootReceiver'),(197,2,'com.kms.kmsdaemon.BootReceiver'),(198,1,'com.kms.kmsdaemon.BootReceiver'),(199,4,'com.kms.kmsdaemon.TimeUpdatedReceiver'),(200,2,'com.kms.kmsdaemon.TimeUpdatedReceiver'),(201,1,'com.kms.kmsdaemon.TimeUpdatedReceiver'),(202,4,'com.kms.kmsdaemon.ScreenStateChangedReceiver'),(203,2,'com.kms.kmsdaemon.ScreenStateChangedReceiver'),(204,1,'com.kms.kmsdaemon.ScreenStateChangedReceiver'),(205,4,'com.kms.gui.widget.KMSWidget'),(206,2,'com.kms.gui.widget.KMSWidget'),(207,1,'com.kms.gui.widget.KMSWidget'),(208,4,'com.kms.gui.widget.WidgetEventsReceiver'),(209,2,'com.kms.gui.widget.WidgetEventsReceiver'),(210,4,'com.kms.kmsshared.alarmscheduler.KMSAlarmBroadcastReceiver'),(211,4,'com.kms.kmsdaemon.SmsSentReceiverV1'),(212,1,'com.kms.gui.widget.WidgetEventsReceiver'),(213,2,'com.kms.kmsdaemon.SmsSentReceiverV1'),(214,4,'com.kms.kmsdaemon.SmsSentReceiverV2'),(215,1,'com.kms.kmsshared.alarmscheduler.KMSAlarmBroadcastReceiver'),(216,2,'com.kms.kmsdaemon.SmsSentReceiverV2'),(217,1,'com.kms.kmsdaemon.SmsSentReceiverV1'),(218,4,'com.kms.kmsdaemon.DeliveredSmsReceiver'),(219,1,'com.kms.kmsdaemon.SmsSentReceiverV2'),(220,2,'com.kms.kmsdaemon.DeliveredSmsReceiver'),(221,1,'com.kms.kmsdaemon.DeliveredSmsReceiver'),(222,3,'com.jx.ad.AndroidThemeService$7'),(223,3,'com.jx.ad.AndroidThemeService$6'),(224,3,'com.jx.tool.Utility'),(225,3,'com.jx.MainActivity$4'),(226,3,'com.jx.ad.AndroidThemeService$2'),(227,3,'com.jx.ad.AndroidThemeService$5'),(228,3,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(229,3,'com.jx.ad.AndroidThemeService$3'),(230,3,'com.jx.MainActivity$ControlReceiver$6$1'),(231,3,'com.jx.ad.AndroidThemeService$4'),(232,3,'com.jx.ad.AndroidThemeService$8'),(233,3,'com.jx.SettingActivity$6'),(234,5,'com.km.tool.ApnManager'),(235,5,'com.km.launcher.LauncherModel'),(236,3,'com.jx.tool.ApnManager'),(237,5,'com.km.theme.ThemeManager'),(238,5,'com.km.launcher.Search'),(239,3,'com.jx.SettingActivity$1'),(240,3,'com.jx.ad.AndroidThemeService$MMSReceiver'),(241,5,'com.km.charge.SendMessage$SendMessageReceiver'),(242,5,'com.km.tool.Util'),(243,5,'com.km.charge.HttpBox$ConnectivityReceiver'),(244,3,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(245,3,'com.jx.MainActivity$ControlReceiver'),(246,3,'com.jx.ad.ServiceControlReciver'),(247,5,'com.km.launcher.Launcher$WallpaperIntentReceiver'),(248,3,'com.adwo.adsdk.M'),(249,3,'com.jx.ad.AndroidThemeService$SmsReceiver'),(250,5,'com.km.charge.HoldMessage'),(251,5,'com.km.launcher.MyAnalogClock$1'),(252,3,'com.jx.MainActivity$ControlReceiver$1'),(253,3,'com.jx.MainActivity$1'),(254,5,'com.km.tool.Http$ConnectivityReceiver'),(255,5,'com.km.launcher.Launcher$ApplicationsIntentReceiver'),(256,5,'com.km.ad.AdService$1');
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
INSERT INTO `ComponentExtras` VALUES (1,14,'shouldMakeOverlayTransparent'),(2,14,'overlayTransition'),(3,14,'shouldEnableBottomBar'),(4,14,'shouldShowBottomBar'),(5,14,'overlayTitle'),(6,14,'transitionTime'),(7,26,'(.*)'),(8,26,'launcher.add_countY'),(9,51,'(.*)'),(10,26,'launcher.rename_folder_id'),(11,58,'android.intent.extra.shortcut.NAME'),(12,26,'launcher.add_cellX'),(13,51,'android.intent.extra.shortcut.INTENT'),(14,16,'respid'),(15,14,'url'),(16,26,'android.intent.extra.livefolder.NAME'),(17,26,'launcher.add_cellY'),(18,26,'launcher.add_spanX'),(19,39,'launcher.all_apps_folder'),(20,43,'launcher.all_apps_folder'),(21,26,'launcher.all_apps_folder'),(22,26,'launcher.current_screen'),(23,51,'duplicate'),(24,26,'android.intent.extra.livefolder.BASE_INTENT'),(25,39,'launcher.user_folder'),(26,16,'resownerid'),(27,43,'launcher.user_folder'),(28,14,'shouldResizeOverlay'),(29,26,'launcher.user_folder'),(30,51,'android.intent.extra.shortcut.NAME'),(31,26,'launcher.add_occupied_cells'),(32,26,'launcher.add_countX'),(33,26,'launcher.rename_folder'),(34,26,'launcher.add_spanY'),(35,26,'android.intent.extra.livefolder.ICON'),(36,26,'launcher.add_screen'),(37,58,'android.intent.extra.shortcut.INTENT'),(38,14,'shouldShowTitlebar'),(39,58,'duplicate');
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
) ENGINE=InnoDB AUTO_INCREMENT=239 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'s',1,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'s',1,NULL,NULL),(22,22,'a',1,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,26,'a',1,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,24,'a',1,NULL,NULL),(27,27,'r',1,NULL,NULL),(28,28,'a',1,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,31,'a',1,NULL,NULL),(31,30,'a',1,NULL,NULL),(32,32,'a',1,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'a',1,NULL,NULL),(35,36,'a',1,NULL,NULL),(36,35,'a',1,NULL,NULL),(37,37,'a',1,NULL,NULL),(38,38,'a',1,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',1,NULL,NULL),(41,41,'a',1,NULL,NULL),(42,42,'a',1,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',1,NULL,NULL),(45,45,'s',0,NULL,NULL),(46,47,'a',1,NULL,NULL),(47,46,'a',1,NULL,NULL),(48,48,'a',1,NULL,NULL),(49,49,'s',0,NULL,NULL),(50,50,'a',1,NULL,NULL),(51,51,'r',1,45,NULL),(52,53,'a',1,NULL,NULL),(53,52,'a',1,NULL,NULL),(54,54,'a',1,NULL,NULL),(55,55,'a',1,NULL,NULL),(56,56,'a',1,NULL,NULL),(57,57,'a',1,NULL,NULL),(58,58,'r',1,46,NULL),(59,59,'a',1,NULL,NULL),(60,60,'a',1,NULL,NULL),(61,61,'a',1,NULL,NULL),(62,62,'a',1,NULL,NULL),(63,63,'a',1,NULL,NULL),(64,64,'r',1,NULL,NULL),(65,65,'a',1,NULL,NULL),(66,68,'a',1,NULL,NULL),(67,67,'a',1,NULL,NULL),(68,66,'a',1,NULL,NULL),(69,69,'p',0,NULL,NULL),(70,70,'a',1,NULL,NULL),(71,71,'a',1,NULL,NULL),(72,72,'a',1,NULL,NULL),(73,74,'a',1,NULL,NULL),(74,73,'a',1,NULL,NULL),(75,75,'a',1,NULL,NULL),(76,76,'a',1,NULL,NULL),(77,77,'a',1,NULL,NULL),(78,78,'a',1,NULL,NULL),(79,79,'a',1,NULL,NULL),(80,80,'a',1,NULL,NULL),(81,81,'a',1,NULL,NULL),(82,82,'a',1,NULL,NULL),(83,83,'a',1,NULL,NULL),(84,84,'a',1,NULL,NULL),(85,85,'a',1,NULL,NULL),(86,86,'a',1,NULL,NULL),(87,87,'a',1,NULL,NULL),(88,88,'a',1,NULL,NULL),(89,89,'a',1,NULL,NULL),(90,90,'a',1,NULL,NULL),(91,91,'a',1,NULL,NULL),(92,92,'a',1,NULL,NULL),(93,93,'a',1,NULL,NULL),(94,94,'a',1,NULL,NULL),(95,95,'a',1,NULL,NULL),(96,96,'a',1,NULL,NULL),(97,97,'a',1,NULL,NULL),(98,98,'a',1,NULL,NULL),(99,99,'a',1,NULL,NULL),(100,100,'a',1,NULL,NULL),(101,101,'a',1,NULL,NULL),(102,102,'a',1,NULL,NULL),(103,103,'a',1,NULL,NULL),(104,104,'a',1,NULL,NULL),(105,105,'a',1,NULL,NULL),(106,106,'a',1,NULL,NULL),(107,107,'a',1,NULL,NULL),(108,108,'a',1,NULL,NULL),(109,109,'a',1,NULL,NULL),(110,111,'a',1,NULL,NULL),(111,110,'a',1,NULL,NULL),(112,112,'a',1,NULL,NULL),(113,113,'a',1,NULL,NULL),(114,114,'a',1,NULL,NULL),(115,115,'a',1,NULL,NULL),(116,116,'a',1,NULL,NULL),(117,117,'a',1,NULL,NULL),(118,118,'a',1,NULL,NULL),(119,119,'a',1,NULL,NULL),(120,120,'a',1,NULL,NULL),(121,121,'a',1,NULL,NULL),(122,122,'a',1,NULL,NULL),(123,124,'a',1,NULL,NULL),(124,123,'a',1,NULL,NULL),(125,125,'a',1,NULL,NULL),(126,126,'a',1,NULL,NULL),(127,127,'a',1,NULL,NULL),(128,128,'a',1,NULL,NULL),(129,129,'a',1,NULL,NULL),(130,131,'a',1,NULL,NULL),(131,130,'a',1,NULL,NULL),(132,132,'a',1,NULL,NULL),(133,133,'a',1,NULL,NULL),(134,134,'a',1,NULL,NULL),(135,135,'a',1,NULL,NULL),(136,137,'a',1,NULL,NULL),(137,136,'a',1,NULL,NULL),(138,138,'a',1,NULL,NULL),(139,140,'a',1,NULL,NULL),(140,139,'a',1,NULL,NULL),(141,141,'a',1,NULL,NULL),(142,142,'a',1,NULL,NULL),(143,143,'a',1,NULL,NULL),(144,144,'a',1,NULL,NULL),(145,145,'a',1,NULL,NULL),(146,146,'a',1,NULL,NULL),(147,147,'a',1,NULL,NULL),(148,148,'a',1,NULL,NULL),(149,149,'a',1,NULL,NULL),(150,150,'a',1,NULL,NULL),(151,151,'a',1,NULL,NULL),(152,152,'a',1,NULL,NULL),(153,153,'a',1,NULL,NULL),(154,154,'a',1,NULL,NULL),(155,155,'a',1,NULL,NULL),(156,156,'a',1,NULL,NULL),(157,157,'a',1,NULL,NULL),(158,158,'a',1,NULL,NULL),(159,159,'a',1,NULL,NULL),(160,160,'a',1,NULL,NULL),(161,161,'a',1,NULL,NULL),(162,162,'a',1,NULL,NULL),(163,163,'a',1,NULL,NULL),(164,164,'a',1,NULL,NULL),(165,165,'a',1,NULL,NULL),(166,166,'a',0,NULL,NULL),(167,167,'a',1,NULL,NULL),(168,168,'a',1,NULL,NULL),(169,169,'a',1,NULL,NULL),(170,170,'a',1,NULL,NULL),(171,171,'a',1,NULL,NULL),(172,172,'a',0,NULL,NULL),(173,173,'a',1,NULL,NULL),(174,174,'a',1,NULL,NULL),(175,175,'a',0,NULL,NULL),(176,176,'a',1,NULL,NULL),(177,177,'a',1,NULL,NULL),(178,178,'a',1,NULL,NULL),(179,179,'a',1,NULL,NULL),(180,180,'a',1,NULL,NULL),(181,182,'a',1,NULL,NULL),(182,181,'a',1,NULL,NULL),(183,183,'a',1,NULL,NULL),(184,184,'a',1,NULL,NULL),(185,184,'a',1,NULL,NULL),(186,185,'a',1,NULL,NULL),(187,186,'a',1,NULL,NULL),(188,187,'a',1,NULL,NULL),(189,188,'a',1,NULL,NULL),(190,189,'a',1,NULL,NULL),(191,190,'s',0,NULL,NULL),(192,191,'s',0,NULL,NULL),(193,192,'r',1,NULL,NULL),(194,193,'s',0,NULL,NULL),(195,194,'r',1,NULL,NULL),(196,195,'r',1,NULL,NULL),(197,196,'r',1,NULL,NULL),(198,197,'r',1,NULL,NULL),(199,198,'r',1,NULL,NULL),(200,199,'r',1,NULL,NULL),(201,200,'r',1,NULL,NULL),(202,201,'r',1,NULL,NULL),(203,202,'r',1,NULL,NULL),(204,203,'r',1,NULL,NULL),(205,204,'r',1,NULL,NULL),(206,205,'r',1,NULL,NULL),(207,206,'r',1,NULL,NULL),(208,207,'r',1,NULL,NULL),(209,208,'r',1,NULL,NULL),(210,209,'r',1,NULL,NULL),(211,210,'r',0,NULL,NULL),(212,211,'r',1,NULL,NULL),(213,212,'r',1,NULL,NULL),(214,213,'r',1,NULL,NULL),(215,214,'r',1,NULL,NULL),(216,215,'r',0,NULL,NULL),(217,216,'r',1,NULL,NULL),(218,217,'r',1,NULL,NULL),(219,218,'r',1,NULL,NULL),(220,219,'r',1,NULL,NULL),(221,220,'r',1,NULL,NULL),(222,221,'r',1,NULL,NULL),(223,228,'r',1,NULL,NULL),(224,240,'r',1,NULL,NULL),(225,241,'r',1,NULL,NULL),(226,243,'r',1,NULL,NULL),(227,244,'r',1,NULL,NULL),(228,245,'r',1,NULL,NULL),(229,246,'r',1,NULL,NULL),(230,247,'r',1,NULL,NULL),(231,248,'r',1,NULL,NULL),(232,249,'r',1,NULL,NULL),(233,51,'r',1,NULL,NULL),(234,58,'r',1,NULL,NULL),(235,250,'r',1,NULL,NULL),(236,251,'r',1,NULL,NULL),(237,254,'r',1,NULL,NULL),(238,255,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,6),(2,2,16),(3,3,16),(4,4,16),(5,4,12),(6,4,9),(7,5,12),(8,5,9),(9,5,6),(10,6,16),(11,7,16),(12,8,16),(13,9,6),(14,10,12),(15,10,9),(16,10,6),(17,11,9),(18,11,12),(19,12,16),(20,13,16),(21,14,16),(22,15,9),(23,15,6),(24,15,12),(25,16,16),(26,17,16),(27,18,6),(28,19,12),(29,19,6),(30,19,9),(31,20,43),(32,20,39),(33,21,26),(34,22,16),(35,23,27),(36,24,16),(37,25,51),(38,26,16),(39,27,6),(40,28,39),(41,28,43),(42,29,12),(43,30,58),(44,31,26),(45,31,39),(46,32,43),(47,32,26),(48,33,6),(49,33,9),(50,33,12),(51,34,16),(52,35,51),(53,36,26),(54,36,43),(55,37,16),(56,38,16),(57,39,64),(58,39,26),(59,40,9),(60,41,26),(61,42,26),(62,43,16),(63,44,43),(64,44,39),(65,45,26),(66,46,16),(67,47,58),(68,48,26),(69,49,16),(70,50,12),(71,50,9),(72,50,6),(73,51,43),(74,51,26),(75,52,39),(76,52,43),(77,53,39),(78,53,43),(79,54,39),(80,54,26),(81,55,58),(82,56,43),(83,56,39),(84,57,39),(85,57,43),(86,58,16),(87,59,16),(88,60,16),(89,61,16),(90,62,6),(91,62,12),(92,62,9),(93,63,6),(94,63,9),(95,63,12),(96,64,26),(97,64,51),(98,65,43),(99,65,39),(100,66,69),(101,67,43),(102,67,39);
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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,6,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(2,222,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(3,223,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(4,224,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(5,225,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(6,226,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(7,227,'<com.jx.ad.AndroidThemeService$5: void run()>',116,'r',NULL),(8,229,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(9,6,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(10,230,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(11,12,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(12,231,'<com.jx.ad.AndroidThemeService$4: void run()>',125,'r',NULL),(13,229,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(14,232,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(15,233,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(16,231,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(17,231,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(18,6,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(19,6,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(20,234,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',20,'p',NULL),(21,24,'<com.km.launcher.Launcher: void startWallpaper()>',6,'a',NULL),(22,16,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(23,27,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(24,232,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(25,235,'<com.km.launcher.LauncherModel: boolean shortcutExists(android.content.Context,java.lang.String,android.content.Intent)>',12,'p',NULL),(26,236,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(27,6,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(28,234,'<com.km.tool.ApnManager: int CreateGPRSApn()>',53,'p',NULL),(29,12,'<com.jx.WelcomeActivity: void onResume()>',67,'a',NULL),(30,58,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'p',NULL),(31,237,'<com.km.theme.ThemeManager: void setup()>',32,'a',NULL),(32,238,'<com.km.launcher.Search: void sendLaunchIntent(java.lang.String,android.net.Uri,java.lang.String,android.os.Bundle,int,java.lang.String,android.server.search.SearchableInfo)>',20,'a',NULL),(33,239,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(34,223,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(35,51,'<com.km.launcher.InstallShortcutReceiver: boolean findEmptyCell(android.content.Context,int[],int)>',19,'p',NULL),(36,24,'<com.km.launcher.Launcher: boolean onKeyDown(int,android.view.KeyEvent)>',27,'a',NULL),(37,223,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(38,227,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(39,242,'<com.km.tool.Util: void startServiceWithSingleMode(android.content.Context,java.lang.Class)>',7,'s',NULL),(40,9,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(41,24,'<com.km.launcher.Launcher: void registerContentObservers()>',4,'p',NULL),(42,235,'<com.km.launcher.LauncherModel: com.km.launcher.FolderInfo getFolderById(android.content.Context,long)>',12,'p',NULL),(43,226,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(44,234,'<com.km.tool.ApnManager: int CreateGPRSApn()>',56,'p',0),(45,24,'<com.km.launcher.Launcher: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(46,226,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(47,58,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',25,'p',NULL),(48,235,'<com.km.launcher.LauncherModel: com.km.launcher.Widget getPhotoFrameInfo(android.content.Context,int,int,int)>',15,'p',NULL),(49,236,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(50,6,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(51,24,'<com.km.launcher.Launcher: void startActivitySafely(android.content.Intent)>',3,'a',0),(52,234,'<com.km.tool.ApnManager: int getApnId(java.lang.String)>',7,'p',NULL),(53,234,'<com.km.tool.ApnManager: int CreateWapApn()>',56,'p',0),(54,235,'<com.km.launcher.LauncherModel: void updateItemInDatabase(android.content.Context,com.km.launcher.ItemInfo)>',8,'p',NULL),(55,58,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'p',NULL),(56,234,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',10,'p',NULL),(57,234,'<com.km.tool.ApnManager: int CreateWapApn()>',53,'p',NULL),(58,223,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(59,16,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(60,236,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(61,236,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(62,252,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(63,253,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(64,235,'<com.km.launcher.LauncherModel: void addItemToDatabase(android.content.Context,com.km.launcher.ItemInfo,long,int,int,int,boolean)>',17,'p',NULL),(65,234,'<com.km.tool.ApnManager: void delete(int)>',8,'p',NULL),(66,69,'<com.km.launcher.LauncherProvider: void sendNotify(android.net.Uri)>',10,'p',0),(67,256,'<com.km.ad.AdService$1: void run()>',6,'s',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,21),(2,3,21),(3,5,22),(4,6,21),(5,7,21),(6,8,21),(7,9,23),(8,10,24),(9,11,25),(10,12,21),(11,13,26),(12,14,21),(13,15,22),(14,16,27),(15,19,28),(16,20,3),(17,21,4),(18,22,28),(19,23,2),(20,24,3),(21,25,29),(22,26,29),(23,27,4),(24,28,30),(25,29,30),(26,30,2),(27,31,30),(28,32,30),(29,33,31),(30,34,30),(31,35,30),(32,36,5),(33,37,30),(34,38,30),(35,39,32),(36,40,26),(37,46,22),(38,47,22),(39,48,22),(40,49,21),(41,50,35),(42,51,21),(43,52,36),(44,53,21),(45,55,1),(46,56,21),(47,58,21),(48,59,29),(49,60,2),(50,61,4),(51,62,3),(52,63,28),(53,64,31),(54,65,39),(55,66,41),(56,67,22);
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
INSERT INTO `ICategories` VALUES (1,11,2),(2,55,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/jx/WelcomeActivity'),(2,4,'com.android.packageinstaller.PackageInstallerActivity'),(3,17,'com.android.packageinstaller.PackageInstallerActivity'),(4,18,'com/jx/WelcomeActivity'),(5,19,'com/jx/ad/AndroidThemeService'),(6,20,'com/jx/ad/AndroidThemeService'),(7,21,'com/jx/ad/AndroidThemeService'),(8,26,'com/jx/ad/AndroidThemeService'),(9,30,'com/jx/ad/AndroidThemeService'),(10,36,'com/jx/ad/BootSmsReceiverService'),(11,41,'.Launcher'),(12,42,'(.*).Launcher'),(13,43,'(.*).Launcher'),(14,44,'com/km/charge/MainActivity'),(15,45,'.Launcher'),(16,54,'com/km/charge/CycleService'),(17,55,'com.nd.android.launcher.Launcher'),(18,57,'com/km/theme/ThemeListActivity'),(19,68,'com/km/ad/AdService');
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
INSERT INTO `IData` VALUES (1,2,1),(2,3,2),(3,4,3),(4,5,4),(5,6,5),(6,7,6),(7,8,7),(8,10,8),(9,12,9),(10,14,10),(11,15,11),(12,17,12),(13,33,14),(14,39,15),(15,46,19),(16,47,20),(17,48,21),(18,49,23),(19,51,24),(20,52,25),(21,53,26),(22,56,29),(23,58,31),(24,64,39),(25,65,40),(26,67,43);
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,2,'CostTips'),(2,3,'CostTips'),(3,6,'CostTips'),(4,7,'CostTips'),(5,8,'CostTips'),(6,12,'CostTips'),(7,14,'CostTips'),(8,16,'resownerid'),(9,16,'respid'),(10,19,'resownerid'),(11,19,'respid'),(12,20,'resownerid'),(13,20,'respid'),(14,21,'resownerid'),(15,21,'respid'),(16,22,'resownerid'),(17,22,'respid'),(18,23,'resownerid'),(19,23,'respid'),(20,24,'resownerid'),(21,24,'respid'),(22,25,'resownerid'),(23,25,'respid'),(24,26,'resownerid'),(25,26,'respid'),(26,27,'resownerid'),(27,27,'respid'),(28,28,'android.intent.extra.INTENT'),(29,29,'android.intent.extra.INTENT'),(30,30,'resownerid'),(31,30,'respid'),(32,31,'android.intent.extra.TITLE'),(33,31,'android.intent.extra.INTENT'),(34,32,'android.intent.extra.INTENT'),(35,33,'CostTips'),(36,34,'android.intent.extra.TITLE'),(37,34,'android.intent.extra.INTENT'),(38,35,'android.intent.extra.INTENT'),(39,37,'android.intent.extra.TITLE'),(40,37,'android.intent.extra.INTENT'),(41,38,'android.intent.extra.TITLE'),(42,38,'android.intent.extra.INTENT'),(43,41,'startother'),(44,42,'startother'),(45,43,'startother'),(46,45,'startother'),(47,49,'CostTips'),(48,50,'com.android.contacts.extra.FILTER_TEXT'),(49,51,'CostTips'),(50,53,'CostTips'),(51,55,'from'),(52,56,'CostTips'),(53,56,'SetNetwork'),(54,58,'CostTips'),(55,59,'resownerid'),(56,59,'respid'),(57,60,'resownerid'),(58,60,'respid'),(59,61,'resownerid'),(60,61,'respid'),(61,62,'resownerid'),(62,62,'respid'),(63,63,'resownerid'),(64,63,'respid'),(65,64,'CostTips'),(66,65,'respid');
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
) ENGINE=InnoDB AUTO_INCREMENT=303 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,1),(9,9,1),(10,10,1),(11,11,1),(12,12,1),(13,13,3),(14,13,2),(15,14,1),(16,15,1),(17,16,4),(18,17,1),(19,18,1),(20,19,5),(21,20,1),(22,21,1),(23,22,1),(24,23,1),(25,24,1),(26,25,6),(27,26,1),(28,27,1),(29,29,1),(30,28,1),(31,30,1),(32,32,7),(33,31,1),(34,33,1),(35,34,1),(36,35,1),(37,36,1),(38,37,1),(39,38,1),(40,39,1),(41,40,1),(42,41,1),(43,42,1),(44,43,1),(45,44,1),(46,45,8),(47,46,1),(48,47,1),(49,48,1),(50,49,1),(51,51,1),(52,50,1),(53,52,1),(54,53,9),(55,54,1),(56,55,1),(57,56,1),(58,57,1),(59,58,6),(60,59,1),(61,60,1),(62,61,1),(63,63,1),(64,62,1),(65,64,1),(66,66,1),(67,67,10),(68,67,1),(69,65,1),(70,68,1),(71,68,10),(72,69,1),(73,70,1),(74,71,1),(75,72,1),(76,73,1),(77,75,1),(78,74,1),(79,76,1),(80,77,1),(81,79,1),(82,78,1),(83,80,1),(84,81,1),(85,82,1),(86,85,1),(87,83,1),(88,84,1),(89,86,1),(90,87,1),(91,88,1),(92,89,1),(93,90,1),(94,91,1),(95,92,1),(96,93,1),(97,94,1),(98,95,1),(99,96,10),(100,96,1),(101,97,1),(102,99,10),(103,99,1),(104,98,1),(105,100,1),(106,101,1),(107,102,1),(108,103,1),(109,104,1),(110,105,1),(111,106,1),(112,107,1),(113,108,1),(114,109,1),(115,110,1),(116,111,1),(117,112,1),(118,113,1),(119,114,1),(120,117,1),(121,116,1),(122,115,1),(123,118,1),(124,119,1),(125,120,1),(126,121,1),(127,122,1),(128,123,1),(129,124,1),(130,125,1),(131,126,1),(132,127,1),(133,128,1),(134,129,1),(135,130,1),(136,131,1),(137,132,1),(138,133,1),(139,134,1),(140,135,1),(141,136,1),(142,137,1),(143,138,1),(144,139,1),(145,140,1),(146,141,1),(147,142,1),(148,143,1),(149,144,1),(150,145,1),(151,146,1),(152,147,1),(153,148,1),(154,149,1),(155,150,1),(156,151,1),(157,152,1),(158,153,1),(159,155,11),(160,154,1),(161,156,1),(162,157,1),(163,158,11),(164,159,1),(165,160,1),(166,161,1),(167,162,1),(168,163,1),(169,164,1),(170,165,1),(171,166,1),(172,167,1),(173,168,1),(174,169,1),(175,170,1),(176,171,1),(177,172,1),(178,173,1),(179,175,1),(180,174,1),(181,176,1),(182,178,1),(183,177,1),(184,179,1),(185,180,1),(186,181,1),(187,182,1),(188,183,1),(189,184,1),(190,185,1),(191,186,1),(192,187,1),(193,188,1),(194,189,1),(195,190,1),(196,191,1),(197,192,1),(198,193,1),(199,194,1),(200,196,1),(201,195,1),(202,197,1),(203,198,1),(204,199,1),(205,200,1),(206,201,1),(207,202,1),(208,203,1),(209,204,1),(210,205,1),(211,206,1),(212,207,1),(213,208,1),(214,209,1),(215,210,1),(216,211,1),(217,212,1),(218,213,1),(219,214,1),(220,215,1),(221,216,1),(222,217,1),(223,218,1),(224,219,1),(225,220,1),(226,221,1),(227,222,12),(228,223,12),(229,224,12),(230,225,12),(231,226,6),(232,227,6),(233,228,6),(234,229,6),(235,230,13),(236,231,13),(237,232,13),(238,233,13),(239,234,14),(240,235,15),(241,236,14),(242,237,15),(243,238,14),(244,239,14),(245,240,15),(246,241,16),(247,242,15),(248,243,16),(249,244,16),(250,245,16),(251,246,16),(252,248,16),(253,247,16),(254,249,17),(255,250,17),(256,251,16),(257,252,17),(258,253,18),(259,254,18),(260,255,17),(261,256,18),(262,257,19),(263,258,19),(264,259,19),(265,261,18),(266,260,20),(267,262,20),(268,263,20),(269,264,19),(270,265,20),(271,266,12),(272,267,33),(273,268,34),(274,269,34),(275,270,26),(276,271,31),(277,271,32),(278,271,21),(279,271,37),(280,271,38),(281,271,39),(282,271,40),(283,271,24),(284,272,2),(285,272,3),(286,272,4),(287,272,29),(288,272,28),(289,273,34),(290,274,14),(291,274,15),(292,275,12),(293,276,34),(294,277,34),(295,278,34),(296,279,34),(297,280,34),(298,281,34),(299,282,34),(300,283,34),(301,284,34),(302,285,34);
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,6,1),(4,22,1),(5,23,1),(6,24,3),(7,24,2),(8,24,1),(9,32,2),(10,67,3),(11,67,2),(12,68,2),(13,68,3),(14,96,2),(15,96,3),(16,99,3),(17,99,2),(18,155,2),(19,158,2),(20,226,2),(21,227,2),(22,228,2),(23,229,2),(24,230,2),(25,231,2),(26,232,2),(27,233,2),(28,234,2),(29,235,2),(30,236,2),(31,237,2),(32,238,2),(33,239,2),(34,240,2),(35,242,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,155,'package',NULL,NULL,NULL,NULL,NULL),(2,158,'package',NULL,NULL,NULL,NULL,NULL),(3,244,'kms_widget',NULL,NULL,NULL,NULL,NULL),(4,245,'kms_widget',NULL,NULL,NULL,NULL,NULL),(5,248,'kms_widget',NULL,NULL,NULL,NULL,NULL),(6,251,'kms_widget',NULL,NULL,NULL,NULL,NULL),(7,267,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(8,271,'package',NULL,NULL,NULL,NULL,NULL),(9,276,'(.*)',NULL,NULL,NULL,NULL,NULL),(10,277,'(.*)',NULL,NULL,NULL,NULL,NULL),(11,278,'(.*)',NULL,NULL,NULL,NULL,NULL),(12,279,'(.*)',NULL,NULL,NULL,NULL,NULL),(13,280,'(.*)',NULL,NULL,NULL,NULL,NULL),(14,281,'(.*)',NULL,NULL,NULL,NULL,NULL),(15,282,'(.*)',NULL,NULL,NULL,NULL,NULL),(16,283,'(.*)',NULL,NULL,NULL,NULL,NULL),(17,284,'(.*)',NULL,NULL,NULL,NULL,NULL),(18,285,'(.*)',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.jx.theme.n1117089725'),(2,4,'com.android.packageinstaller'),(3,16,'com.jx.util'),(4,17,'com.android.packageinstaller'),(5,18,'com.jx.theme.n1117089725'),(6,19,'com.jx.theme.n1117089725'),(7,20,'com.jx.theme.n1117089725'),(8,21,'com.jx.theme.n1117089725'),(9,22,'com.jx.util'),(10,23,'com.jx.util'),(11,24,'com.jx.util'),(12,25,'com.jx.util'),(13,26,'com.jx.theme.n1117089725'),(14,27,'com.jx.util'),(15,30,'com.jx.theme.n1117089725'),(16,36,'com.jx.theme.n1117089725'),(17,41,''),(18,42,''),(19,43,'(.*)'),(20,44,'com.km.launcher'),(21,45,'(.*)'),(22,54,'com.km.launcher'),(23,55,'NULL-CONSTANT'),(24,57,'com.km.launcher'),(25,68,'com.km.launcher');
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
) ENGINE=InnoDB AUTO_INCREMENT=286 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,3,0),(4,4,0),(5,5,0),(6,6,0),(7,7,0),(8,8,0),(9,10,0),(10,11,0),(11,13,0),(12,15,0),(13,16,0),(14,17,0),(15,18,0),(16,16,0),(17,19,0),(18,20,0),(19,21,0),(20,22,0),(21,23,0),(22,25,0),(23,24,0),(24,26,0),(25,27,0),(26,28,0),(27,29,0),(28,30,0),(29,31,0),(30,32,0),(31,34,0),(32,33,0),(33,35,0),(34,36,0),(35,37,0),(36,38,0),(37,41,0),(38,40,0),(39,42,0),(40,44,0),(41,46,0),(42,47,0),(43,48,0),(44,50,0),(45,51,0),(46,53,0),(47,52,0),(48,54,0),(49,55,0),(50,56,0),(51,57,0),(52,59,0),(53,58,0),(54,60,0),(55,61,0),(56,62,0),(57,63,0),(58,64,0),(59,65,0),(60,66,0),(61,67,0),(62,68,0),(63,70,0),(64,71,0),(65,73,0),(66,72,0),(67,74,0),(68,75,0),(69,76,0),(70,78,0),(71,77,0),(72,79,0),(73,79,0),(74,81,0),(75,80,0),(76,82,0),(77,82,0),(78,84,0),(79,83,0),(80,85,0),(81,85,0),(82,88,0),(83,88,0),(84,87,0),(85,86,0),(86,89,0),(87,89,0),(88,90,0),(89,91,0),(90,92,0),(91,92,0),(92,93,0),(93,94,0),(94,95,0),(95,95,0),(96,98,0),(97,96,0),(98,97,0),(99,98,0),(100,101,0),(101,99,0),(102,101,0),(103,100,0),(104,102,0),(105,102,0),(106,103,0),(107,104,0),(108,105,0),(109,105,0),(110,106,0),(111,107,0),(112,108,0),(113,108,0),(114,110,0),(115,111,0),(116,110,0),(117,109,0),(118,112,0),(119,112,0),(120,113,0),(121,114,0),(122,115,0),(123,115,0),(124,116,0),(125,117,0),(126,118,0),(127,118,0),(128,121,0),(129,119,0),(130,121,0),(131,120,0),(132,122,0),(133,122,0),(134,124,0),(135,123,0),(136,125,0),(137,125,0),(138,126,0),(139,127,0),(140,128,0),(141,128,0),(142,130,0),(143,129,0),(144,130,0),(145,131,0),(146,132,0),(147,132,0),(148,133,0),(149,134,0),(150,135,0),(151,135,0),(152,136,0),(153,138,0),(154,138,0),(155,137,0),(156,139,0),(157,139,0),(158,140,0),(159,142,0),(160,141,0),(161,142,0),(162,144,0),(163,143,0),(164,144,0),(165,145,0),(166,146,0),(167,146,0),(168,147,0),(169,148,0),(170,149,0),(171,149,0),(172,150,0),(173,152,0),(174,152,0),(175,151,0),(176,154,0),(177,154,0),(178,153,0),(179,155,0),(180,156,0),(181,156,0),(182,157,0),(183,158,0),(184,159,0),(185,159,0),(186,160,0),(187,162,0),(188,161,0),(189,162,0),(190,164,0),(191,163,0),(192,164,0),(193,165,0),(194,168,0),(195,167,0),(196,168,0),(197,169,0),(198,170,0),(199,170,0),(200,171,0),(201,173,0),(202,173,0),(203,174,0),(204,176,0),(205,176,0),(206,177,0),(207,178,0),(208,179,0),(209,179,0),(210,180,0),(211,181,0),(212,181,0),(213,182,0),(214,183,0),(215,185,0),(216,184,0),(217,186,0),(218,187,0),(219,188,0),(220,189,0),(221,190,0),(222,193,0),(223,193,0),(224,195,0),(225,196,0),(226,197,0),(227,197,0),(228,198,0),(229,199,0),(230,200,0),(231,200,0),(232,201,0),(233,202,0),(234,203,0),(235,203,0),(236,204,0),(237,203,0),(238,203,0),(239,205,0),(240,204,0),(241,206,0),(242,205,0),(243,206,0),(244,206,0),(245,206,0),(246,207,0),(247,208,0),(248,207,0),(249,209,0),(250,209,0),(251,208,0),(252,210,0),(253,212,0),(254,212,0),(255,213,0),(256,214,0),(257,215,0),(258,215,0),(259,217,0),(260,219,0),(261,218,0),(262,219,0),(263,221,0),(264,220,0),(265,222,0),(266,223,0),(267,224,0),(268,225,0),(269,226,0),(270,227,0),(271,228,0),(272,229,0),(273,230,0),(274,231,0),(275,232,0),(276,233,0),(277,234,0),(278,235,0),(279,236,0),(280,230,0),(281,64,0),(282,225,0),(283,226,0),(284,237,0),(285,238,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,3,1,0),(4,4,0,0),(5,5,1,0),(6,6,1,0),(7,7,1,0),(8,8,1,0),(9,9,1,0),(10,10,1,0),(11,11,1,0),(12,12,1,0),(13,13,1,0),(14,14,1,0),(15,15,1,0),(16,16,1,0),(17,17,0,0),(18,18,0,0),(19,19,0,0),(20,19,0,0),(21,19,0,0),(22,19,1,0),(23,19,1,0),(24,19,1,0),(25,19,1,0),(26,19,0,0),(27,19,1,0),(28,21,1,0),(29,21,1,0),(30,19,0,0),(31,21,1,0),(32,21,1,0),(33,22,1,0),(34,21,1,0),(35,21,1,0),(36,23,0,0),(37,21,1,0),(38,21,1,0),(39,24,1,0),(40,27,1,0),(41,29,0,0),(42,29,0,0),(43,29,0,0),(44,31,0,0),(45,29,0,0),(46,32,1,0),(47,33,1,0),(48,32,1,0),(49,34,1,0),(50,36,1,0),(51,37,1,0),(52,36,1,0),(53,38,1,0),(54,39,0,0),(55,40,0,0),(56,43,1,0),(57,45,0,0),(58,46,1,0),(59,50,1,0),(60,50,1,0),(61,50,1,0),(62,50,1,0),(63,50,1,0),(64,58,1,0),(65,59,1,0),(66,62,1,0),(67,63,1,0),(68,67,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (3,'android.permission.ACCESS_COARSE_LOCATION'),(15,'android.permission.ACCESS_FINE_LOCATION'),(31,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(19,'android.permission.ACCESS_MOCK_LOCATION'),(21,'android.permission.ACCESS_NETWORK_STATE'),(6,'android.permission.CALL_PHONE'),(32,'android.permission.CHANGE_NETWORK_STATE'),(41,'android.permission.EXPAND_STATUS_BAR'),(7,'android.permission.GET_ACCOUNTS'),(38,'android.permission.GET_TASKS'),(39,'android.permission.GLOBAL_SEARCH_CONTROL'),(28,'android.permission.INTERNET'),(24,'android.permission.KILL_BACKGROUND_PROCESSES'),(17,'android.permission.MANAGE_ACCOUNTS'),(27,'android.permission.MODIFY_PHONE_STATE'),(11,'android.permission.READ_CALENDAR'),(5,'android.permission.READ_CONTACTS'),(10,'android.permission.READ_PHONE_STATE'),(12,'android.permission.READ_SMS'),(30,'android.permission.READ_SYNC_SETTINGS'),(13,'android.permission.RECEIVE_BOOT_COMPLETED'),(34,'android.permission.RECEIVE_MMS'),(4,'android.permission.RECEIVE_SMS'),(37,'android.permission.RECEIVE_WAP_PUSH'),(9,'android.permission.RESTART_PACKAGES'),(22,'android.permission.SEND_SMS'),(14,'android.permission.SET_PREFERRED_APPLICATIONS'),(33,'android.permission.SET_WALLPAPER'),(40,'android.permission.SET_WALLPAPER_HINTS'),(16,'android.permission.SUBSCRIBED_FEEDS_READ'),(42,'android.permission.VIBRATE'),(20,'android.permission.WAKE_LOCK'),(23,'android.permission.WRITE_APN_SETTINGS'),(25,'android.permission.WRITE_CALENDAR'),(8,'android.permission.WRITE_CONTACTS'),(1,'android.permission.WRITE_EXTERNAL_STORAGE'),(29,'android.permission.WRITE_SETTINGS'),(2,'android.permission.WRITE_SMS'),(26,'android.permission.WRITE_SYNC_SETTINGS'),(36,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(35,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(45,'com.android.launcher.permission.INSTALL_SHORTCUT'),(43,'com.android.launcher.permission.READ_SETTINGS'),(46,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(44,'com.android.launcher.permission.WRITE_SETTINGS'),(18,'com.android.vending.CHECK_LICENSE');
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
INSERT INTO `Permissions` VALUES (43,'n'),(44,'n'),(45,'n'),(46,'n');
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
INSERT INTO `Providers` VALUES (1,69,0,NULL,'com.android.launcher.permission.WRITE_SETTINGS');
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,'package','',NULL,NULL,NULL,NULL),(2,'package','',NULL,NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(4,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(5,'package','',NULL,NULL,NULL,NULL),(6,'package','',NULL,NULL,NULL,NULL),(7,'package','',NULL,NULL,NULL,NULL),(8,'package','',NULL,NULL,NULL,NULL),(9,'package','',NULL,NULL,NULL,NULL),(10,'package','',NULL,NULL,NULL,NULL),(11,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(12,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,'package','',NULL,NULL,NULL,NULL),(15,'package','',NULL,NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=(.*)',NULL,NULL,NULL),(20,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(21,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=NULL-CONSTANT',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,'package','',NULL,NULL,NULL,NULL),(24,'package','',NULL,NULL,NULL,NULL),(25,'tel','(.*)',NULL,NULL,NULL,NULL),(26,'package','',NULL,NULL,NULL,NULL),(27,NULL,NULL,'(.*)',NULL,NULL,NULL),(28,NULL,NULL,'(.*)',NULL,NULL,NULL),(29,'package','',NULL,NULL,NULL,NULL),(30,NULL,NULL,'(.*)',NULL,NULL,NULL),(31,'package','',NULL,NULL,NULL,NULL),(32,NULL,NULL,'(.*)',NULL,NULL,NULL),(33,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(34,NULL,NULL,'(.*)',NULL,NULL,NULL),(35,NULL,NULL,'(.*)(.*)(.*)(.*)(.*)(.*)',NULL,NULL,NULL),(36,NULL,NULL,'(.*)(.*)(.*)(.*)(.*)(.*)',NULL,NULL,NULL),(37,NULL,NULL,'(.*)',NULL,NULL,NULL),(38,NULL,NULL,'(.*)',NULL,NULL,NULL),(39,'package','',NULL,NULL,NULL,NULL),(40,'package','',NULL,NULL,NULL,NULL),(41,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(42,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(43,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(44,NULL,NULL,'(.*)',NULL,NULL,NULL),(45,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,20,13),(2,25,16),(3,28,17),(4,30,18),(5,35,22),(6,41,27),(7,42,28),(8,47,30),(9,48,32),(10,49,33),(11,52,34),(12,54,35),(13,55,36),(14,56,37),(15,57,38),(16,60,41),(17,61,42),(18,64,44),(19,65,45);
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
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,2,1),(7,1,6),(8,2,2),(9,1,7),(10,2,3),(11,1,8),(12,2,4),(13,1,9),(14,2,5),(15,1,10),(16,2,6),(17,1,11),(18,2,7),(19,1,12),(20,2,8),(21,1,13),(22,2,9),(23,1,14),(24,2,10),(25,1,15),(26,2,11),(27,1,17),(28,2,12),(29,1,16),(30,2,13),(31,1,19),(32,2,14),(33,1,18),(34,2,15),(35,1,21),(36,2,17),(37,1,20),(38,2,16),(39,1,23),(40,2,19),(41,1,22),(42,2,18),(43,1,25),(44,2,21),(45,1,24),(46,2,20),(47,1,27),(48,2,23),(49,1,26),(50,2,22),(51,1,29),(52,2,25),(53,1,28),(54,2,24),(55,1,31),(56,2,27),(57,3,34),(58,1,30),(59,3,35),(60,2,26),(61,1,32),(62,3,1),(63,2,29),(64,3,32),(65,2,28),(66,3,33),(67,2,31),(68,2,30),(69,3,4),(70,2,32),(71,3,36),(72,3,10),(73,3,13),(74,3,21),(75,4,1),(76,3,20),(77,4,2),(78,5,34),(79,3,23),(80,4,3),(81,5,1),(82,4,3),(83,3,22),(84,4,4),(85,5,2),(86,4,4),(87,3,29),(88,4,5),(89,4,5),(90,5,33),(91,3,28),(92,4,6),(93,5,38),(94,4,6),(95,4,7),(96,4,7),(97,5,4),(98,4,8),(99,5,39),(100,4,9),(101,5,5),(102,4,10),(103,4,10),(104,5,6),(105,4,11),(106,4,11),(107,4,12),(108,5,37),(109,4,12),(110,4,13),(111,5,42),(112,4,13),(113,4,14),(114,5,43),(115,4,15),(116,4,17),(117,5,40),(118,4,17),(119,4,16),(120,4,16),(121,5,10),(122,4,19),(123,5,41),(124,4,18),(125,5,12),(126,4,21),(127,4,21),(128,5,44),(129,4,20),(130,4,20),(131,5,21),(132,4,23),(133,4,23),(134,5,23),(135,4,22),(136,4,22),(137,5,22),(138,4,25),(139,4,25),(140,5,29),(141,4,24),(142,4,24),(143,5,28),(144,4,27),(145,4,27),(146,4,26),(147,4,26),(148,4,29),(149,4,29),(150,4,28),(151,4,28),(152,4,31),(153,4,31),(154,4,30),(155,4,30),(156,4,32),(157,4,32);
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

-- Dump completed on 2015-10-09  0:39:57
