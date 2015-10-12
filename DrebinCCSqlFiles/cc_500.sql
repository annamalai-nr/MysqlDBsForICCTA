-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_500
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (34,'android.appwidget.action.APPWIDGET_UPDATE'),(16,'android.intent.action.ACTION_SHUTDOWN'),(19,'android.intent.action.AIRPLANE_MODE'),(4,'android.intent.action.BOOT_COMPLETED'),(18,'android.intent.action.CHOOSER'),(27,'android.intent.action.DATE_CHANGED'),(2,'android.intent.action.MAIN'),(23,'android.intent.action.MEDIA_BAD_REMOVAL'),(24,'android.intent.action.MEDIA_MOUNTED'),(21,'android.intent.action.MEDIA_REMOVED'),(22,'android.intent.action.MEDIA_SHARED'),(20,'android.intent.action.MEDIA_UNMOUNTED'),(5,'android.intent.action.NEW_OUTGOING_CALL'),(29,'android.intent.action.PHONE_STATE'),(7,'android.intent.action.SCREEN_OFF'),(33,'android.intent.action.SCREEN_ON'),(15,'android.intent.action.SEARCH_LONG_PRESS'),(31,'android.intent.action.TIME_SET'),(26,'android.intent.action.UMS_CONNECTED'),(25,'android.intent.action.UMS_DISCONNECTED'),(8,'android.intent.action.USER_PRESENT'),(28,'android.intent.action.VIEW'),(30,'android.net.conn.CONNECTIVITY_CHANGE'),(12,'android.net.wifi.NETWORK_IDS_CHANGED'),(11,'android.net.wifi.SCAN_RESULTS'),(39,'android.net.wifi.STATE_CHANGE'),(10,'android.net.wifi.WIFI_STATE_CHANGED'),(9,'android.net.wifi.supplicant.CONNECTION_CHANGE'),(13,'android.net.wifi.supplicant.STATE_CHANGE'),(17,'android.provider.Telephony.SMS_RECEIVED'),(1,'android.view.InputMethod'),(38,'com.kms.broadcast.deliveredsms'),(36,'com.kms.broadcast.sentsms.v1'),(37,'com.kms.broadcast.sentsms.v2'),(35,'com.kms.gui.widget.CLICK'),(14,'net.kidlogger.kidlogger.GpsError'),(3,'net.kidlogger.kidlogger.IRemoteService'),(6,'net.tesline.service.SEND_DATA');
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
INSERT INTO `Applications` VALUES (1,'net.kidlogger.kidloggerkeyboard',2),(2,'net.kidlogger.kidloggerlight',4),(3,'net.kidlogger.kidlogger',6),(4,'net.kidlogger.kidlogger',7),(5,'com.kms',108),(6,'com.kms',101);
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
) ENGINE=InnoDB AUTO_INCREMENT=243 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'net.kidlogger.kidloggerkeyboard.Settings'),(2,1,'net.kidlogger.kidloggerkeyboard.SoftKeyboardPRO'),(3,2,'net.kidlogger.kidloggerlight.KidLogger'),(4,2,'net.kidlogger.kidloggerlight.About'),(5,2,'net.kidlogger.kidloggerlight.ListLogFilesControl'),(6,2,'net.kidlogger.kidloggerlight.Settings'),(7,2,'net.kidlogger.kidloggerlight.ShowLogs'),(8,2,'net.kidlogger.kidloggerlight.ShowSysLogs'),(9,2,'net.kidlogger.kidloggerlight.KLService'),(10,2,'net.kidlogger.kidloggerlight.OnBootReceiver'),(11,3,'net.kidlogger.kidlogger.KidLogger'),(12,3,'net.kidlogger.kidlogger.ShowLogs'),(13,3,'net.kidlogger.kidlogger.Settings'),(14,3,'net.kidlogger.kidlogger.About'),(15,3,'net.kidlogger.kidlogger.ShowSysLogs'),(16,3,'net.kidlogger.kidlogger.ListLogFilesControl'),(17,3,'net.kidlogger.kidlogger.LogsTabHost'),(18,3,'net.kidlogger.kidlogger.AudioFilesList'),(19,3,'net.kidlogger.kidlogger.KLService'),(20,3,'net.kidlogger.kidlogger.OnBootReceiver'),(21,4,'net.kidlogger.kidlogger.ShowLogs'),(22,4,'net.kidlogger.kidlogger.Settings'),(23,4,'net.kidlogger.kidlogger.About'),(24,4,'net.kidlogger.kidlogger.ShowSysLogs'),(25,4,'net.kidlogger.kidlogger.ListLogFilesControl'),(26,4,'net.kidlogger.kidlogger.LogsTabHost'),(27,4,'net.kidlogger.kidlogger.AudioFilesList'),(28,4,'net.kidlogger.kidlogger.MainActivity'),(29,4,'net.kidlogger.kidlogger.KLService'),(30,4,'net.kidlogger.kidlogger.OnBootReceiver'),(31,4,'net.kidlogger.kidlogger.OutCallReceiver'),(32,4,'net.kidlogger.kidlogger.AlarmReceiver'),(33,6,'com.kms.gui.KMSEnterCodeActivity'),(34,6,'com.kms.gui.KMSMain'),(35,6,'com.kms.gui.KMSHelpActivity'),(36,6,'com.kms.antivirus.gui.AvScanFilesActivity'),(37,6,'com.kms.antivirus.gui.AvScanResultActivity'),(38,6,'com.kms.antivirus.gui.AvAdditionalActivity'),(39,5,'com.kms.gui.KMSEnterCodeActivity'),(40,2,'net.kidlogger.kidloggerlight.IdleReceiver'),(41,6,'com.kms.antivirus.gui.AvMonitorParamsActivity'),(42,5,'com.kms.gui.KMSMain'),(43,6,'com.kms.antivirus.gui.AvScanParamsActivity'),(44,2,'net.kidlogger.kidloggerlight.WifiReceiver'),(45,6,'com.kms.antivirus.gui.AvCheckObjectsActivity'),(46,5,'com.kms.gui.KMSHelpActivity'),(47,6,'com.kms.antivirus.gui.AvScanCureParamsActivity'),(48,2,'net.kidlogger.kidloggerlight.MediaReceiver'),(49,5,'com.kms.antivirus.gui.AvScanFilesActivity'),(50,6,'com.kms.antivirus.gui.AvSelectFolderActivity'),(51,5,'com.kms.antivirus.gui.AvScanResultActivity'),(52,6,'com.kms.antivirus.gui.AvUserActionActivity'),(53,2,'net.kidlogger.kidloggerlight.KLService$5'),(54,6,'com.kms.privacyprotection.gui.PrivacyProtectionActivity'),(55,5,'com.kms.antivirus.gui.AvAdditionalActivity'),(56,2,'net.kidlogger.kidloggerlight.ShutdownReceiver'),(57,6,'com.kms.privacyprotection.gui.PPSettingsActivity'),(58,5,'com.kms.antivirus.gui.AvMonitorParamsActivity'),(59,2,'net.kidlogger.kidloggerlight.AirplaneReceiver'),(60,6,'com.kms.privacyprotection.gui.PPContactsActivity'),(61,5,'com.kms.antivirus.gui.AvScanParamsActivity'),(62,6,'com.kms.antitheft.gui.SmsBlockSettingsActivity'),(63,2,'net.kidlogger.kidloggerlight.SmsObserver$1'),(64,6,'com.kms.antitheft.gui.InfoActivity'),(65,5,'com.kms.antivirus.gui.AvCheckObjectsActivity'),(66,6,'com.kms.antitheft.gui.BlockTextActivity'),(67,2,'net.kidlogger.kidloggerlight.UsbReceiver'),(68,5,'com.kms.antivirus.gui.AvScanCureParamsActivity'),(69,6,'com.kms.antitheft.gui.LockScreenActivity'),(70,2,'net.kidlogger.kidloggerlight.KidLogger$1'),(71,5,'com.kms.antivirus.gui.AvSelectFolderActivity'),(72,6,'com.kms.antitheft.gui.EmailActivity'),(73,5,'com.kms.antivirus.gui.AvUserActionActivity'),(74,6,'com.kms.antitheft.gui.PhoneNumberActivity'),(75,6,'com.kms.antitheft.gui.PhoneNumberActivity'),(76,2,'net.kidlogger.kidloggerlight.CallsReceiver'),(77,5,'com.kms.privacyprotection.gui.PrivacyProtectionActivity'),(78,6,'com.kms.antitheft.gui.SimWatchSettingsActivity'),(79,6,'com.kms.antitheft.gui.SimWatchSettingsActivity'),(80,5,'com.kms.privacyprotection.gui.PPSettingsActivity'),(81,6,'com.kms.activation.gui.PasswordRecoveryActivity'),(82,6,'com.kms.activation.gui.PasswordRecoveryInfoActivity'),(83,5,'com.kms.privacyprotection.gui.PPContactsActivity'),(84,6,'com.kms.activation.gui.PasswordRecoveryActionActivity'),(85,6,'com.kms.activation.gui.PasswordRecoveryActionActivity'),(86,5,'com.kms.antitheft.gui.SmsBlockSettingsActivity'),(87,6,'com.kms.antitheft.gui.SmsCleanSettingsActivity'),(88,6,'com.kms.antitheft.gui.SmsCleanSettingsActivity'),(89,5,'com.kms.antitheft.gui.InfoActivity'),(90,6,'com.kms.antitheft.gui.SmsFindSettingsActivity'),(91,6,'com.kms.antitheft.gui.SmsFindSettingsActivity'),(92,5,'com.kms.antitheft.gui.BlockTextActivity'),(93,6,'com.kms.antitheft.gui.SmsCleanSelectFolderActivity'),(94,6,'com.kms.antitheft.gui.SmsCleanSelectFolderActivity'),(95,5,'com.kms.antitheft.gui.LockScreenActivity'),(96,6,'com.kms.updater.gui.KMSUpdaterScheduleSettingsActivity'),(97,6,'com.kms.updater.gui.KMSUpdaterScheduleSettingsActivity'),(98,5,'com.kms.antitheft.gui.EmailActivity'),(99,6,'com.kms.updater.gui.UpdateActivity'),(100,6,'com.kms.updater.gui.UpdateActivity'),(101,3,'net.kidlogger.kidlogger.AirplaneReceiver'),(102,5,'com.kms.antitheft.gui.PhoneNumberActivity'),(103,6,'com.kms.activation.gui.ActivationSettingsActivity'),(104,6,'com.kms.activation.gui.ActivationSettingsActivity'),(105,3,'net.kidlogger.kidlogger.WifiReceiver'),(106,5,'com.kms.antitheft.gui.SimWatchSettingsActivity'),(107,2,'net.kidlogger.kidloggerlight.ShowSysLogs$1'),(108,6,'com.kms.activation.gui.ActivationActivity'),(109,6,'com.kms.activation.gui.ActivationActivity'),(110,3,'net.kidlogger.kidlogger.SmsObserver$1'),(111,5,'com.kms.activation.gui.PasswordRecoveryActivity'),(112,6,'com.kms.activation.gui.LicenseInfoActivity'),(113,6,'com.kms.activation.gui.LicenseInfoActivity'),(114,3,'net.kidlogger.kidlogger.UsbReceiver'),(115,5,'com.kms.activation.gui.PasswordRecoveryInfoActivity'),(116,6,'com.kms.activation.gui.SubscriptionErrorActivity'),(117,6,'com.kms.activation.gui.SubscriptionErrorActivity'),(118,3,'net.kidlogger.kidlogger.IdleReceiver'),(119,5,'com.kms.activation.gui.PasswordRecoveryActionActivity'),(120,6,'com.kms.activation.gui.ConfirmActivationActivity'),(121,6,'com.kms.activation.gui.ConfirmActivationActivity'),(122,3,'net.kidlogger.kidlogger.MediaReceiver'),(123,5,'com.kms.antitheft.gui.SmsCleanSettingsActivity'),(124,6,'com.kms.activation.gui.EnterCodeActivity'),(125,6,'com.kms.activation.gui.EnterCodeActivity'),(126,3,'net.kidlogger.kidlogger.CallsReceiver'),(127,5,'com.kms.antitheft.gui.SmsFindSettingsActivity'),(128,6,'com.kms.activation.gui.InternetConnectionRequiredActivity'),(129,6,'com.kms.activation.gui.InternetConnectionRequiredActivity'),(130,5,'com.kms.antitheft.gui.SmsCleanSelectFolderActivity'),(131,4,'net.kidlogger.kidlogger.AirplaneReceiver'),(132,3,'net.kidlogger.kidlogger.KLService$1'),(133,6,'com.kms.additional.gui.AdditionalSettingsActivity'),(134,6,'com.kms.additional.gui.AdditionalSettingsActivity'),(135,5,'com.kms.updater.gui.KMSUpdaterScheduleSettingsActivity'),(136,3,'net.kidlogger.kidlogger.ShutdownReceiver'),(137,4,'net.kidlogger.kidlogger.MediaReceiver'),(138,6,'com.kms.antispam.gui.AntiSpamSettingsActivity'),(139,6,'com.kms.antispam.gui.AntiSpamSettingsActivity'),(140,5,'com.kms.updater.gui.UpdateActivity'),(141,6,'com.kms.antispam.gui.AntiSpamListActivity'),(142,6,'com.kms.antispam.gui.AntiSpamListActivity'),(143,5,'com.kms.activation.gui.ActivationSettingsActivity'),(144,4,'net.kidlogger.kidlogger.SmsObserver'),(145,6,'com.kms.antispam.gui.AntiSpamListItemActivity'),(146,6,'com.kms.antispam.gui.AntiSpamListItemActivity'),(147,5,'com.kms.activation.gui.ActivationActivity'),(148,4,'net.kidlogger.kidlogger.UsbReceiver'),(149,6,'com.kms.antispam.gui.AntiSpamItemAlreadyExistsActivity'),(150,6,'com.kms.antispam.gui.AntiSpamItemAlreadyExistsActivity'),(151,5,'com.kms.activation.gui.LicenseInfoActivity'),(152,4,'net.kidlogger.kidlogger.Settings$2'),(153,6,'com.kms.antispam.gui.AntiSpamUserActionActivity'),(154,6,'com.kms.antispam.gui.AntiSpamUserActionActivity'),(155,5,'com.kms.activation.gui.SubscriptionErrorActivity'),(156,6,'com.kms.additional.gui.AboutActivity'),(157,6,'com.kms.additional.gui.AboutActivity'),(158,5,'com.kms.activation.gui.ConfirmActivationActivity'),(159,6,'com.kms.activation.gui.SubscriptionTermsActivity'),(160,6,'com.kms.activation.gui.SubscriptionTermsActivity'),(161,5,'com.kms.activation.gui.EnterCodeActivity'),(162,3,'net.kidlogger.kidlogger.PhotoObserver'),(163,6,'com.kms.activation.gui.SubscriptionKeyReceivedActivity'),(164,6,'com.kms.activation.gui.SubscriptionKeyReceivedActivity'),(165,5,'com.kms.activation.gui.InternetConnectionRequiredActivity'),(166,2,'net.kidlogger.kidloggerlight.SmsObserver'),(167,6,'com.kms.privacyprotection.gui.FakeActivity'),(168,6,'com.kms.privacyprotection.gui.FakeActivity'),(169,5,'com.kms.additional.gui.AdditionalSettingsActivity'),(170,6,'com.kms.additional.gui.SendCommandSettingsActivity'),(171,6,'com.kms.additional.gui.SendCommandSettingsActivity'),(172,5,'com.kms.antispam.gui.AntiSpamSettingsActivity'),(173,6,'com.kms.gui.LicenseExpiredInfoActivity'),(174,6,'com.kms.gui.LicenseExpiredInfoActivity'),(175,3,'net.kidlogger.kidlogger.HistoryObserver'),(176,5,'com.kms.antispam.gui.AntiSpamListActivity'),(177,6,'com.kms.additional.gui.WidgetSettingsActivity'),(178,6,'com.kms.additional.gui.WidgetSettingsActivity'),(179,5,'com.kms.antispam.gui.AntiSpamListItemActivity'),(180,6,'com.kms.updater.gui.KMSConfirmUpdateActivity'),(181,6,'com.kms.updater.gui.KMSConfirmUpdateActivity'),(182,5,'com.kms.antispam.gui.AntiSpamItemAlreadyExistsActivity'),(183,6,'com.kms.antispam.gui.CallListActivity'),(184,6,'com.kms.antispam.gui.CallListActivity'),(185,2,'net.kidlogger.kidloggerlight.HistoryObserver'),(186,5,'com.kms.antispam.gui.AntiSpamUserActionActivity'),(187,6,'com.kms.antispam.gui.ImportSMSNumberActivity'),(188,6,'com.kms.antispam.gui.ImportSMSNumberActivity'),(189,5,'com.kms.additional.gui.AboutActivity'),(190,6,'com.kms.gui.PremiumInstalledActivity'),(191,6,'com.kms.gui.PremiumInstalledActivity'),(192,5,'com.kms.activation.gui.SubscriptionTermsActivity'),(193,6,'com.kms.antispam.gui.AntispamReportsActivity'),(194,6,'com.kms.antispam.gui.AntispamReportsActivity'),(195,4,'net.kidlogger.kidlogger.ConnectivityReceiver'),(196,5,'com.kms.activation.gui.SubscriptionKeyReceivedActivity'),(197,6,'com.kms.kmsdaemon.KMSDaemon'),(198,6,'com.kms.kmsdaemon.KMSDaemon'),(199,6,'com.kms.kmsdaemon.SMSReceiver'),(200,6,'com.kms.kmsdaemon.SMSReceiver'),(201,5,'com.kms.privacyprotection.gui.FakeActivity'),(202,5,'com.kms.additional.gui.SendCommandSettingsActivity'),(203,6,'com.kms.kmsdaemon.BootReceiver'),(204,6,'com.kms.kmsdaemon.BootReceiver'),(205,5,'com.kms.gui.LicenseExpiredInfoActivity'),(206,3,'net.kidlogger.kidlogger.SmsObserver'),(207,6,'com.kms.kmsdaemon.TimeUpdatedReceiver'),(208,6,'com.kms.kmsdaemon.TimeUpdatedReceiver'),(209,5,'com.kms.additional.gui.WidgetSettingsActivity'),(210,4,'net.kidlogger.kidlogger.WifiReceiver'),(211,6,'com.kms.kmsdaemon.ScreenStateChangedReceiver'),(212,5,'com.kms.updater.gui.KMSConfirmUpdateActivity'),(213,4,'net.kidlogger.kidlogger.SmsObserver$1'),(214,5,'com.kms.antispam.gui.CallListActivity'),(215,5,'com.kms.antispam.gui.ImportSMSNumberActivity'),(216,6,'com.kms.gui.widget.KMSWidget'),(217,4,'net.kidlogger.kidlogger.IdleReceiver'),(218,5,'com.kms.gui.PremiumInstalledActivity'),(219,4,'net.kidlogger.kidlogger.CallsReceiver'),(220,5,'com.kms.antispam.gui.AntispamReportsActivity'),(221,3,'net.kidlogger.kidlogger.ShowSysLogs$1'),(222,6,'com.kms.gui.widget.WidgetEventsReceiver'),(223,5,'com.kms.kmsdaemon.KMSDaemon'),(224,6,'com.kms.kmsshared.alarmscheduler.KMSAlarmBroadcastReceiver'),(225,5,'com.kms.kmsdaemon.SMSReceiver'),(226,6,'com.kms.kmsdaemon.SmsSentReceiverV1'),(227,4,'net.kidlogger.kidlogger.ShutdownReceiver'),(228,5,'com.kms.kmsdaemon.BootReceiver'),(229,6,'com.kms.kmsdaemon.SmsSentReceiverV2'),(230,5,'com.kms.kmsdaemon.TimeUpdatedReceiver'),(231,6,'com.kms.kmsdaemon.DeliveredSmsReceiver'),(232,5,'com.kms.kmsdaemon.ScreenStateChangedReceiver'),(233,4,'net.kidlogger.kidlogger.PhotoObserver'),(234,5,'com.kms.gui.widget.KMSWidget'),(235,4,'net.kidlogger.kidlogger.HistoryObserver'),(236,5,'com.kms.gui.widget.WidgetEventsReceiver'),(237,5,'com.kms.kmsshared.alarmscheduler.KMSAlarmBroadcastReceiver'),(238,5,'com.kms.kmsdaemon.SmsSentReceiverV1'),(239,5,'com.kms.kmsdaemon.SmsSentReceiverV2'),(240,5,'com.kms.kmsdaemon.DeliveredSmsReceiver'),(241,4,'net.kidlogger.kidlogger.ShowSysLogs$1'),(242,3,'net.kidlogger.kidlogger.Settings$2');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,3,'password'),(2,21,'logFile'),(3,11,'dialog_id'),(4,28,'dialog_id'),(5,11,'password'),(6,7,'logFile'),(7,12,'logFile'),(8,28,'password'),(9,31,'android.intent.extra.PHONE_NUMBER');
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
) ENGINE=InnoDB AUTO_INCREMENT=232 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',0,NULL,NULL),(2,2,'s',1,1,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'s',1,NULL,NULL),(10,10,'r',1,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'s',1,NULL,NULL),(20,20,'r',1,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',1,NULL,NULL),(29,29,'s',1,NULL,NULL),(30,30,'r',1,NULL,NULL),(31,31,'r',1,NULL,NULL),(32,32,'r',1,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'a',1,NULL,NULL),(35,35,'a',1,NULL,NULL),(36,36,'a',1,NULL,NULL),(37,37,'a',1,NULL,NULL),(38,38,'a',1,NULL,NULL),(39,39,'a',1,NULL,NULL),(40,40,'r',1,NULL,NULL),(41,41,'a',1,NULL,NULL),(42,42,'a',1,NULL,NULL),(43,43,'a',1,NULL,NULL),(44,44,'r',1,NULL,NULL),(45,45,'a',1,NULL,NULL),(46,46,'a',1,NULL,NULL),(47,47,'a',1,NULL,NULL),(48,48,'r',1,NULL,NULL),(49,49,'a',1,NULL,NULL),(50,50,'a',1,NULL,NULL),(51,51,'a',1,NULL,NULL),(52,52,'a',1,NULL,NULL),(53,53,'r',1,NULL,NULL),(54,54,'a',1,NULL,NULL),(55,55,'a',1,NULL,NULL),(56,56,'r',1,NULL,NULL),(57,57,'a',1,NULL,NULL),(58,58,'a',1,NULL,NULL),(59,60,'a',1,NULL,NULL),(60,59,'r',1,NULL,NULL),(61,61,'a',1,NULL,NULL),(62,62,'a',1,NULL,NULL),(63,64,'a',1,NULL,NULL),(64,63,'r',1,NULL,NULL),(65,65,'a',1,NULL,NULL),(66,66,'a',1,NULL,NULL),(67,67,'r',1,NULL,NULL),(68,68,'a',1,NULL,NULL),(69,69,'a',1,NULL,NULL),(70,70,'r',1,NULL,NULL),(71,71,'a',1,NULL,NULL),(72,72,'a',1,NULL,NULL),(73,72,'a',1,NULL,NULL),(74,73,'a',1,NULL,NULL),(75,75,'a',1,NULL,NULL),(76,74,'a',1,NULL,NULL),(77,76,'r',1,NULL,NULL),(78,77,'a',1,NULL,NULL),(79,79,'a',1,NULL,NULL),(80,78,'a',1,NULL,NULL),(81,80,'a',1,NULL,NULL),(82,81,'a',1,NULL,NULL),(83,82,'a',1,NULL,NULL),(84,82,'a',1,NULL,NULL),(85,83,'a',1,NULL,NULL),(86,84,'a',1,NULL,NULL),(87,85,'a',1,NULL,NULL),(88,86,'a',1,NULL,NULL),(89,87,'a',1,NULL,NULL),(90,88,'a',1,NULL,NULL),(91,89,'a',1,NULL,NULL),(92,91,'a',1,NULL,NULL),(93,90,'a',1,NULL,NULL),(94,92,'a',1,NULL,NULL),(95,94,'a',1,NULL,NULL),(96,93,'a',1,NULL,NULL),(97,95,'a',1,NULL,NULL),(98,97,'a',1,NULL,NULL),(99,96,'a',1,NULL,NULL),(100,98,'a',1,NULL,NULL),(101,100,'a',1,NULL,NULL),(102,99,'a',1,NULL,NULL),(103,101,'r',1,NULL,NULL),(104,102,'a',1,NULL,NULL),(105,103,'a',1,NULL,NULL),(106,104,'a',1,NULL,NULL),(107,105,'r',1,NULL,NULL),(108,106,'a',1,NULL,NULL),(109,108,'a',1,NULL,NULL),(110,109,'a',1,NULL,NULL),(111,110,'r',1,NULL,NULL),(112,111,'a',1,NULL,NULL),(113,112,'a',1,NULL,NULL),(114,113,'a',1,NULL,NULL),(115,114,'r',1,NULL,NULL),(116,115,'a',1,NULL,NULL),(117,116,'a',1,NULL,NULL),(118,117,'a',1,NULL,NULL),(119,118,'r',1,NULL,NULL),(120,119,'a',1,NULL,NULL),(121,121,'a',1,NULL,NULL),(122,120,'a',1,NULL,NULL),(123,122,'r',1,NULL,NULL),(124,123,'a',1,NULL,NULL),(125,125,'a',1,NULL,NULL),(126,124,'a',1,NULL,NULL),(127,126,'r',1,NULL,NULL),(128,127,'a',1,NULL,NULL),(129,129,'a',1,NULL,NULL),(130,128,'a',1,NULL,NULL),(131,131,'r',1,NULL,NULL),(132,130,'a',1,NULL,NULL),(133,132,'r',1,NULL,NULL),(134,133,'a',1,NULL,NULL),(135,134,'a',1,NULL,NULL),(136,135,'a',1,NULL,NULL),(137,136,'r',1,NULL,NULL),(138,137,'r',1,NULL,NULL),(139,138,'a',1,NULL,NULL),(140,139,'a',1,NULL,NULL),(141,140,'a',1,NULL,NULL),(142,142,'a',1,NULL,NULL),(143,141,'a',1,NULL,NULL),(144,143,'a',1,NULL,NULL),(145,145,'a',1,NULL,NULL),(146,146,'a',1,NULL,NULL),(147,147,'a',1,NULL,NULL),(148,148,'r',1,NULL,NULL),(149,149,'a',1,NULL,NULL),(150,150,'a',1,NULL,NULL),(151,151,'a',1,NULL,NULL),(152,153,'a',1,NULL,NULL),(153,154,'a',1,NULL,NULL),(154,155,'a',1,NULL,NULL),(155,156,'a',1,NULL,NULL),(156,157,'a',1,NULL,NULL),(157,158,'a',1,NULL,NULL),(158,159,'a',1,NULL,NULL),(159,160,'a',1,NULL,NULL),(160,161,'a',1,NULL,NULL),(161,163,'a',1,NULL,NULL),(162,164,'a',1,NULL,NULL),(163,165,'a',1,NULL,NULL),(164,167,'a',0,NULL,NULL),(165,168,'a',0,NULL,NULL),(166,169,'a',1,NULL,NULL),(167,170,'a',1,NULL,NULL),(168,171,'a',1,NULL,NULL),(169,172,'a',1,NULL,NULL),(170,173,'a',1,NULL,NULL),(171,174,'a',1,NULL,NULL),(172,176,'a',1,NULL,NULL),(173,177,'a',1,NULL,NULL),(174,178,'a',1,NULL,NULL),(175,179,'a',1,NULL,NULL),(176,180,'a',1,NULL,NULL),(177,181,'a',1,NULL,NULL),(178,182,'a',1,NULL,NULL),(179,183,'a',1,NULL,NULL),(180,184,'a',1,NULL,NULL),(181,186,'a',1,NULL,NULL),(182,188,'a',1,NULL,NULL),(183,187,'a',1,NULL,NULL),(184,189,'a',1,NULL,NULL),(185,190,'a',1,NULL,NULL),(186,191,'a',1,NULL,NULL),(187,192,'a',1,NULL,NULL),(188,193,'a',1,NULL,NULL),(189,194,'a',1,NULL,NULL),(190,195,'r',1,NULL,NULL),(191,196,'a',1,NULL,NULL),(192,197,'s',0,NULL,NULL),(193,198,'s',0,NULL,NULL),(194,199,'r',1,NULL,NULL),(195,200,'r',1,NULL,NULL),(196,201,'a',0,NULL,NULL),(197,202,'a',1,NULL,NULL),(198,203,'r',1,NULL,NULL),(199,204,'r',1,NULL,NULL),(200,205,'a',1,NULL,NULL),(201,207,'r',1,NULL,NULL),(202,208,'r',1,NULL,NULL),(203,209,'a',1,NULL,NULL),(204,210,'r',1,NULL,NULL),(205,211,'r',1,NULL,NULL),(206,212,'a',1,NULL,NULL),(207,213,'r',1,NULL,NULL),(208,214,'a',1,NULL,NULL),(209,215,'a',1,NULL,NULL),(210,216,'r',1,NULL,NULL),(211,217,'r',1,NULL,NULL),(212,218,'a',1,NULL,NULL),(213,219,'r',1,NULL,NULL),(214,220,'a',1,NULL,NULL),(215,222,'r',1,NULL,NULL),(216,223,'s',0,NULL,NULL),(217,224,'r',0,NULL,NULL),(218,225,'r',1,NULL,NULL),(219,226,'r',1,NULL,NULL),(220,227,'r',1,NULL,NULL),(221,228,'r',1,NULL,NULL),(222,229,'r',1,NULL,NULL),(223,230,'r',1,NULL,NULL),(224,231,'r',1,NULL,NULL),(225,232,'r',1,NULL,NULL),(226,234,'r',1,NULL,NULL),(227,236,'r',1,NULL,NULL),(228,237,'r',0,NULL,NULL),(229,238,'r',1,NULL,NULL),(230,239,'r',1,NULL,NULL),(231,240,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,5),(3,3,3),(4,4,8),(5,5,29),(6,6,22),(7,7,28),(8,9,28),(9,8,19),(10,10,9),(11,11,19),(12,12,21),(13,13,3),(14,14,19),(15,15,3),(16,16,11),(17,17,9),(18,18,11),(19,19,10),(20,20,11),(21,21,3),(22,22,20),(23,23,3),(24,24,30),(25,25,16),(26,26,28),(27,27,19),(28,28,11),(29,29,11),(30,30,18),(31,31,15),(32,32,28),(33,33,27),(34,34,29),(35,35,29),(36,36,12),(37,37,29),(38,38,25),(39,39,28),(40,40,24),(41,41,13);
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,2,'<net.kidlogger.kidloggerkeyboard.SoftKeyboardPRO: void bindService()>',11,'s',NULL),(2,5,'<net.kidlogger.kidloggerlight.ListLogFilesControl: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',12,'a',NULL),(3,3,'<net.kidlogger.kidloggerlight.KidLogger: void startLogging()>',4,'s',NULL),(4,107,'<net.kidlogger.kidloggerlight.ShowSysLogs$1: void onClick(android.view.View)>',29,'a',NULL),(5,144,'<net.kidlogger.kidlogger.SmsObserver: void <init>(android.content.Context,android.os.Handler)>',16,'p',NULL),(6,152,'<net.kidlogger.kidlogger.Settings$2: boolean onPreferenceClick(android.preference.Preference)>',7,'a',NULL),(7,28,'<net.kidlogger.kidlogger.MainActivity: void onClick(android.view.View)>',17,'a',NULL),(8,162,'<net.kidlogger.kidlogger.PhotoObserver: void <init>(net.kidlogger.kidlogger.KLService,android.content.Context,android.os.Handler)>',15,'p',NULL),(9,28,'<net.kidlogger.kidlogger.MainActivity: void onClick(android.view.View)>',21,'a',NULL),(10,166,'<net.kidlogger.kidloggerlight.SmsObserver: void <init>(android.content.Context,android.os.Handler)>',12,'p',NULL),(11,162,'<net.kidlogger.kidlogger.PhotoObserver: int getNumPhotos()>',4,'p',NULL),(12,21,'<net.kidlogger.kidlogger.ShowLogs: void sendEmail()>',49,'a',NULL),(13,3,'<net.kidlogger.kidloggerlight.KidLogger: void onClick(android.view.View)>',17,'a',NULL),(14,175,'<net.kidlogger.kidlogger.HistoryObserver: void <init>(android.content.Context,android.os.Handler)>',9,'p',NULL),(15,3,'<net.kidlogger.kidloggerlight.KidLogger: void onClick(android.view.View)>',13,'a',NULL),(16,11,'<net.kidlogger.kidlogger.KidLogger: void onClick(android.view.View)>',17,'a',NULL),(17,185,'<net.kidlogger.kidloggerlight.HistoryObserver: void <init>(android.content.Context,android.os.Handler)>',9,'p',NULL),(18,11,'<net.kidlogger.kidlogger.KidLogger: void onClick(android.view.View)>',21,'a',NULL),(19,10,'<net.kidlogger.kidloggerlight.OnBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(20,11,'<net.kidlogger.kidlogger.KidLogger: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(21,3,'<net.kidlogger.kidloggerlight.KidLogger: void onClick(android.view.View)>',21,'a',NULL),(22,20,'<net.kidlogger.kidlogger.OnBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(23,3,'<net.kidlogger.kidloggerlight.KidLogger: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(24,30,'<net.kidlogger.kidlogger.OnBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(25,16,'<net.kidlogger.kidlogger.ListLogFilesControl: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',12,'a',NULL),(26,28,'<net.kidlogger.kidlogger.MainActivity: void onClick(android.view.View)>',13,'a',NULL),(27,206,'<net.kidlogger.kidlogger.SmsObserver: void <init>(android.content.Context,android.os.Handler)>',16,'p',NULL),(28,11,'<net.kidlogger.kidlogger.KidLogger: void startLogging()>',4,'s',NULL),(29,11,'<net.kidlogger.kidlogger.KidLogger: void onClick(android.view.View)>',13,'a',NULL),(30,18,'<net.kidlogger.kidlogger.AudioFilesList: void playFile(java.io.File)>',9,'a',NULL),(31,221,'<net.kidlogger.kidlogger.ShowSysLogs$1: void onClick(android.view.View)>',29,'a',NULL),(32,28,'<net.kidlogger.kidlogger.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(33,27,'<net.kidlogger.kidlogger.AudioFilesList: void playFile(java.io.File)>',9,'a',NULL),(34,233,'<net.kidlogger.kidlogger.PhotoObserver: int getNumPhotos()>',4,'p',NULL),(35,235,'<net.kidlogger.kidlogger.HistoryObserver: void <init>(android.content.Context,android.os.Handler)>',9,'p',NULL),(36,12,'<net.kidlogger.kidlogger.ShowLogs: void sendEmail()>',49,'a',NULL),(37,233,'<net.kidlogger.kidlogger.PhotoObserver: void <init>(net.kidlogger.kidlogger.KLService,android.content.Context,android.os.Handler)>',15,'p',NULL),(38,25,'<net.kidlogger.kidlogger.ListLogFilesControl: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',12,'a',NULL),(39,28,'<net.kidlogger.kidlogger.MainActivity: void startLogging()>',4,'s',NULL),(40,241,'<net.kidlogger.kidlogger.ShowSysLogs$1: void onClick(android.view.View)>',28,'a',NULL),(41,242,'<net.kidlogger.kidlogger.Settings$2: boolean onPreferenceClick(android.preference.Preference)>',7,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,3),(2,4,18),(3,5,18),(4,6,18),(5,7,18),(6,8,18),(7,9,18),(8,10,18),(9,11,18),(10,12,28),(11,15,18),(12,17,18),(13,18,18),(14,20,18),(15,22,18),(16,23,18),(17,24,18),(18,27,18),(19,37,28),(20,38,18),(21,39,18),(22,40,18),(23,41,18),(24,43,18),(25,44,18),(26,45,28),(27,46,18),(28,47,18),(29,48,18),(30,49,18),(31,51,18),(32,52,18),(33,54,18),(34,55,18),(35,56,18),(36,57,18),(37,58,18),(38,59,18),(39,60,18),(40,61,18),(41,62,18),(42,63,28),(43,64,18),(44,65,18),(45,66,18);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'net/kidlogger/kidloggerlight/ShowLogs'),(2,3,'net/kidlogger/kidloggerlight/KLService'),(3,13,'net/kidlogger/kidlogger/LogsTabHost'),(4,14,'net/kidlogger/kidlogger/About'),(5,16,'net/kidlogger/kidloggerlight/ListLogFilesControl'),(6,19,'net/kidlogger/kidloggerlight/Settings'),(7,21,'net/kidlogger/kidlogger/LogsTabHost'),(8,25,'net/kidlogger/kidlogger/About'),(9,26,'net/kidlogger/kidloggerlight/KLService'),(10,28,'net/kidlogger/kidlogger/ShowSysLogs'),(11,29,'net/kidlogger/kidloggerlight/About'),(12,30,'net/kidlogger/kidlogger/KLService'),(13,31,'net/kidlogger/kidloggerlight/ShowSysLogs'),(14,32,'net/kidlogger/kidlogger/KLService'),(15,33,'net/kidlogger/kidlogger/ShowLogs'),(16,34,'net/kidlogger/kidlogger/Settings'),(17,35,'net/kidlogger/kidlogger/KLService'),(18,36,'net/kidlogger/kidlogger/Settings'),(19,42,'net/kidlogger/kidlogger/ShowSysLogs'),(20,50,'net/kidlogger/kidlogger/ShowLogs'),(21,53,'net/kidlogger/kidlogger/KLService');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,12,2),(2,37,9),(3,45,10),(4,63,14);
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,2,'logFile'),(2,4,'android.intent.extra.INTENT'),(3,5,'android.intent.extra.INTENT'),(4,6,'android.intent.extra.TITLE'),(5,6,'android.intent.extra.INTENT'),(6,7,'android.intent.extra.INTENT'),(7,8,'android.intent.extra.TITLE'),(8,8,'android.intent.extra.INTENT'),(9,9,'android.intent.extra.INTENT'),(10,10,'android.intent.extra.TITLE'),(11,10,'android.intent.extra.INTENT'),(12,11,'android.intent.extra.TITLE'),(13,11,'android.intent.extra.INTENT'),(14,15,'android.intent.extra.INTENT'),(15,17,'android.intent.extra.INTENT'),(16,18,'android.intent.extra.TITLE'),(17,18,'android.intent.extra.INTENT'),(18,20,'android.intent.extra.INTENT'),(19,22,'android.intent.extra.TITLE'),(20,22,'android.intent.extra.INTENT'),(21,23,'android.intent.extra.INTENT'),(22,24,'android.intent.extra.TITLE'),(23,24,'android.intent.extra.INTENT'),(24,27,'android.intent.extra.TITLE'),(25,27,'android.intent.extra.INTENT'),(26,33,'logFile'),(27,38,'android.intent.extra.INTENT'),(28,39,'android.intent.extra.INTENT'),(29,40,'android.intent.extra.TITLE'),(30,40,'android.intent.extra.INTENT'),(31,41,'android.intent.extra.INTENT'),(32,43,'android.intent.extra.TITLE'),(33,43,'android.intent.extra.INTENT'),(34,44,'android.intent.extra.INTENT'),(35,46,'android.intent.extra.TITLE'),(36,46,'android.intent.extra.INTENT'),(37,47,'android.intent.extra.TITLE'),(38,47,'android.intent.extra.INTENT'),(39,48,'android.intent.extra.INTENT'),(40,49,'android.intent.extra.INTENT'),(41,50,'logFile'),(42,51,'android.intent.extra.TITLE'),(43,51,'android.intent.extra.INTENT'),(44,52,'android.intent.extra.INTENT'),(45,54,'android.intent.extra.TITLE'),(46,54,'android.intent.extra.INTENT'),(47,55,'android.intent.extra.INTENT'),(48,56,'android.intent.extra.INTENT'),(49,57,'android.intent.extra.TITLE'),(50,58,'android.intent.extra.INTENT'),(51,57,'android.intent.extra.INTENT'),(52,59,'android.intent.extra.TITLE'),(53,60,'android.intent.extra.TITLE'),(54,59,'android.intent.extra.INTENT'),(55,60,'android.intent.extra.INTENT'),(56,61,'android.intent.extra.INTENT'),(57,62,'android.intent.extra.TITLE'),(58,62,'android.intent.extra.INTENT'),(59,64,'android.intent.extra.INTENT'),(60,65,'android.intent.extra.TITLE'),(61,65,'android.intent.extra.INTENT'),(62,66,'android.intent.extra.TITLE'),(63,66,'android.intent.extra.INTENT');
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
) ENGINE=InnoDB AUTO_INCREMENT=313 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,2),(6,6,3),(7,7,4),(8,8,2),(9,9,3),(10,10,4),(11,11,5),(12,12,6),(13,13,2),(14,14,2),(15,15,2),(16,16,2),(17,17,2),(18,18,2),(19,19,2),(20,20,2),(21,21,2),(22,22,2),(23,23,2),(24,24,2),(25,25,2),(26,26,2),(27,27,2),(28,28,7),(29,28,8),(30,29,2),(31,30,2),(32,31,2),(33,32,12),(34,32,11),(35,32,13),(36,32,10),(37,32,9),(38,33,2),(39,34,2),(40,35,2),(41,36,2),(42,37,2),(43,38,14),(44,39,2),(45,40,2),(46,41,2),(47,42,14),(48,43,2),(49,45,2),(50,44,2),(51,46,14),(52,47,2),(53,48,2),(54,49,2),(55,50,14),(56,51,2),(57,52,2),(58,53,2),(59,54,2),(60,55,2),(61,56,14),(62,57,14),(63,58,2),(64,59,2),(65,60,2),(66,61,2),(67,62,2),(68,63,14),(69,64,2),(70,65,2),(71,66,2),(72,67,14),(73,68,2),(74,69,15),(75,69,2),(76,70,15),(77,70,2),(78,71,14),(79,72,2),(80,74,2),(81,73,2),(82,75,14),(83,76,2),(84,77,2),(85,78,2),(86,79,14),(87,80,2),(88,81,2),(89,82,2),(90,84,2),(91,83,2),(92,85,2),(93,86,16),(94,87,2),(95,88,2),(96,89,2),(97,90,17),(98,91,2),(99,92,2),(100,93,2),(101,94,17),(102,95,17),(103,96,2),(104,97,2),(105,99,17),(106,98,2),(107,100,17),(108,102,2),(109,101,2),(110,104,17),(111,103,2),(112,105,17),(113,106,2),(114,107,2),(115,108,17),(116,109,15),(117,109,2),(118,110,17),(119,111,2),(120,112,2),(121,113,17),(122,114,2),(123,115,17),(124,116,2),(125,117,2),(126,118,17),(127,119,2),(128,120,2),(129,121,2),(130,122,17),(131,123,2),(132,125,2),(133,124,2),(134,126,17),(135,127,2),(136,128,2),(137,129,2),(138,130,17),(139,131,2),(140,132,2),(141,133,2),(142,134,17),(143,135,2),(144,137,2),(145,136,2),(146,138,17),(147,139,2),(148,140,2),(149,141,2),(150,142,17),(151,143,2),(152,144,17),(153,145,2),(154,146,2),(155,147,2),(156,148,19),(157,149,17),(158,151,2),(159,150,2),(160,152,2),(161,153,17),(162,154,2),(163,155,2),(164,156,24),(165,156,23),(166,156,22),(167,156,21),(168,156,20),(169,159,19),(170,157,25),(171,157,26),(172,158,2),(173,160,2),(174,161,2),(175,162,27),(176,163,27),(177,164,2),(178,166,27),(179,165,27),(180,168,2),(181,167,2),(182,169,27),(183,170,27),(184,171,2),(185,173,27),(186,172,27),(187,174,25),(188,174,26),(189,176,2),(190,175,2),(191,177,27),(192,178,27),(193,179,2),(194,180,27),(195,181,27),(196,182,2),(197,183,2),(198,184,27),(199,185,27),(200,186,2),(201,187,27),(202,188,27),(203,189,2),(204,190,2),(205,191,27),(206,192,27),(207,193,2),(208,194,27),(209,195,27),(210,196,2),(211,197,2),(212,198,27),(213,199,2),(214,200,2),(215,201,2),(216,202,2),(217,203,2),(218,205,2),(219,204,2),(220,206,19),(221,208,24),(222,208,23),(223,208,22),(224,208,21),(225,208,20),(226,207,2),(227,209,2),(228,210,2),(229,212,21),(230,212,22),(231,212,20),(232,212,23),(233,212,24),(234,211,2),(235,213,2),(236,214,2),(237,215,2),(238,216,2),(239,217,2),(240,218,5),(241,218,29),(242,220,5),(243,220,29),(244,219,2),(245,221,2),(246,222,2),(247,223,2),(248,224,2),(249,225,2),(250,226,2),(251,227,2),(252,228,2),(253,229,2),(254,230,2),(255,231,2),(256,232,30),(257,233,2),(258,234,17),(259,235,17),(260,236,25),(261,236,26),(262,237,2),(263,238,4),(264,239,4),(265,240,2),(266,241,17),(267,242,31),(268,243,2),(269,244,17),(270,245,2),(271,246,7),(272,246,8),(273,247,33),(274,248,17),(275,249,17),(276,250,7),(277,251,2),(278,252,17),(279,253,2),(280,254,17),(281,255,34),(282,256,17),(283,257,2),(284,258,34),(285,259,17),(286,260,2),(287,261,17),(288,262,35),(289,263,17),(290,264,17),(291,265,17),(292,266,36),(293,267,17),(294,268,4),(295,269,37),(296,270,31),(297,271,38),(298,272,33),(299,273,7),(300,274,34),(301,275,39),(302,276,34),(303,277,16),(304,278,16),(305,279,35),(306,280,36),(307,281,37),(308,282,38),(309,283,8),(310,283,7),(311,284,39),(312,285,29);
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
INSERT INTO `IFCategories` VALUES (1,13,1),(2,14,1),(3,25,1),(4,69,3),(5,69,2),(6,70,3),(7,70,2),(8,109,3),(9,109,2),(10,239,2),(11,238,2),(12,242,2),(13,247,2),(14,250,2),(15,268,2),(16,270,2),(17,272,2),(18,273,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,156,'file',NULL,NULL,NULL,NULL,NULL),(2,208,'file',NULL,NULL,NULL,NULL,NULL),(3,212,'file',NULL,NULL,NULL,NULL,NULL),(4,258,'kms_widget',NULL,NULL,NULL,NULL,NULL),(5,276,'kms_widget',NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `IMimeTypes` VALUES (1,37,'audio','3gpp'),(2,45,'audio','3gpp');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'net.kidlogger.kidloggerlight'),(2,3,'net.kidlogger.kidloggerlight'),(3,13,'net.kidlogger.kidlogger'),(4,14,'net.kidlogger.kidlogger'),(5,16,'net.kidlogger.kidloggerlight'),(6,19,'net.kidlogger.kidloggerlight'),(7,21,'net.kidlogger.kidlogger'),(8,25,'net.kidlogger.kidlogger'),(9,26,'net.kidlogger.kidloggerlight'),(10,28,'net.kidlogger.kidlogger'),(11,29,'net.kidlogger.kidloggerlight'),(12,30,'net.kidlogger.kidlogger'),(13,31,'net.kidlogger.kidloggerlight'),(14,32,'net.kidlogger.kidlogger'),(15,33,'net.kidlogger.kidlogger'),(16,34,'net.kidlogger.kidlogger'),(17,35,'net.kidlogger.kidlogger'),(18,36,'net.kidlogger.kidlogger'),(19,42,'net.kidlogger.kidlogger'),(20,50,'net.kidlogger.kidlogger'),(21,53,'net.kidlogger.kidlogger');
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
INSERT INTO `IntentFilters` VALUES (1,2,0),(2,3,0),(3,9,0),(4,10,0),(5,11,0),(6,19,0),(7,20,0),(8,28,0),(9,29,0),(10,30,0),(11,31,0),(12,32,0),(13,33,0),(14,33,0),(15,34,0),(16,34,0),(17,35,0),(18,35,0),(19,36,0),(20,36,0),(21,37,0),(22,37,0),(23,38,0),(24,38,0),(25,39,0),(26,41,0),(27,41,0),(28,40,0),(29,43,0),(30,43,0),(31,42,0),(32,44,0),(33,45,0),(34,45,0),(35,46,0),(36,47,0),(37,47,0),(38,48,0),(39,49,0),(40,50,0),(41,50,0),(42,40,0),(43,52,0),(44,51,0),(45,52,0),(46,53,0),(47,54,0),(48,54,0),(49,55,0),(50,56,0),(51,57,0),(52,57,0),(53,58,0),(54,59,0),(55,59,0),(56,60,0),(57,44,0),(58,62,0),(59,61,0),(60,62,0),(61,63,0),(62,63,0),(63,64,0),(64,65,0),(65,66,0),(66,66,0),(67,67,0),(68,68,0),(69,69,0),(70,69,0),(71,70,0),(72,71,0),(73,73,0),(74,72,0),(75,10,0),(76,74,0),(77,76,0),(78,75,0),(79,77,0),(80,78,0),(81,80,0),(82,79,0),(83,81,0),(84,82,0),(85,82,0),(86,56,0),(87,84,0),(88,83,0),(89,85,0),(90,48,0),(91,87,0),(92,86,0),(93,88,0),(94,40,0),(95,53,0),(96,89,0),(97,90,0),(98,91,0),(99,56,0),(100,60,0),(101,93,0),(102,92,0),(103,94,0),(104,44,0),(105,64,0),(106,96,0),(107,95,0),(108,67,0),(109,97,0),(110,70,0),(111,99,0),(112,98,0),(113,10,0),(114,100,0),(115,77,0),(116,102,0),(117,101,0),(118,103,0),(119,104,0),(120,106,0),(121,105,0),(122,107,0),(123,108,0),(124,109,0),(125,110,0),(126,111,0),(127,112,0),(128,114,0),(129,113,0),(130,115,0),(131,116,0),(132,118,0),(133,117,0),(134,119,0),(135,120,0),(136,121,0),(137,122,0),(138,123,0),(139,124,0),(140,125,0),(141,126,0),(142,127,0),(143,128,0),(144,20,0),(145,130,0),(146,129,0),(147,132,0),(148,131,0),(149,133,0),(150,135,0),(151,134,0),(152,136,0),(153,137,0),(154,139,0),(155,140,0),(156,138,0),(157,115,0),(158,141,0),(159,60,0),(160,143,0),(161,142,0),(162,48,0),(163,103,0),(164,144,0),(165,107,0),(166,40,0),(167,146,0),(168,145,0),(169,53,0),(170,111,0),(171,147,0),(172,115,0),(173,56,0),(174,148,0),(175,150,0),(176,149,0),(177,60,0),(178,119,0),(179,151,0),(180,44,0),(181,123,0),(182,152,0),(183,153,0),(184,64,0),(185,127,0),(186,154,0),(187,67,0),(188,20,0),(189,156,0),(190,155,0),(191,70,0),(192,133,0),(193,157,0),(194,10,0),(195,137,0),(196,158,0),(197,159,0),(198,77,0),(199,160,0),(200,161,0),(201,162,0),(202,163,0),(203,166,0),(204,167,0),(205,168,0),(206,103,0),(207,169,0),(208,48,0),(209,170,0),(210,171,0),(211,172,0),(212,123,0),(213,174,0),(214,173,0),(215,175,0),(216,176,0),(217,177,0),(218,77,0),(219,178,0),(220,127,0),(221,180,0),(222,179,0),(223,181,0),(224,183,0),(225,182,0),(226,184,0),(227,185,0),(228,186,0),(229,187,0),(230,188,0),(231,189,0),(232,190,0),(233,191,0),(234,194,0),(235,195,0),(236,67,0),(237,197,0),(238,198,0),(239,199,0),(240,200,0),(241,131,0),(242,202,0),(243,203,0),(244,204,0),(245,206,0),(246,119,0),(247,205,0),(248,207,0),(249,190,0),(250,205,0),(251,208,0),(252,148,0),(253,209,0),(254,211,0),(255,210,0),(256,138,0),(257,212,0),(258,210,0),(259,213,0),(260,214,0),(261,31,0),(262,215,0),(263,30,0),(264,32,0),(265,218,0),(266,219,0),(267,220,0),(268,221,0),(269,222,0),(270,223,0),(271,224,0),(272,225,0),(273,225,0),(274,226,0),(275,107,0),(276,226,0),(277,137,0),(278,220,0),(279,227,0),(280,229,0),(281,230,0),(282,231,0),(283,211,0),(284,204,0),(285,213,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,0,0),(3,3,0,0),(4,4,1,0),(5,4,1,0),(6,4,1,0),(7,4,1,0),(8,4,1,0),(9,4,1,0),(10,4,1,0),(11,4,1,0),(12,6,1,0),(13,7,0,0),(14,9,0,0),(15,12,1,0),(16,13,0,0),(17,12,1,0),(18,12,1,0),(19,15,0,0),(20,12,1,0),(21,16,0,0),(22,12,1,0),(23,12,1,0),(24,12,1,0),(25,18,0,0),(26,19,0,0),(27,12,1,0),(28,20,0,0),(29,21,0,0),(30,22,0,0),(31,23,0,0),(32,24,0,0),(33,25,0,0),(34,26,0,0),(35,28,0,0),(36,29,0,0),(37,30,1,0),(38,31,1,0),(39,31,1,0),(40,31,1,0),(41,31,1,0),(42,32,0,0),(43,31,1,0),(44,31,1,0),(45,33,1,0),(46,31,1,0),(47,31,1,0),(48,36,1,0),(49,36,1,0),(50,38,0,0),(51,36,1,0),(52,36,1,0),(53,39,0,0),(54,36,1,0),(55,36,1,0),(56,40,1,0),(57,36,1,0),(58,40,1,0),(59,40,1,0),(60,36,1,0),(61,40,1,0),(62,40,1,0),(63,41,1,0),(64,40,1,0),(65,40,1,0),(66,40,1,0);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAuthorities`
--

LOCK TABLES `PAuthorities` WRITE;
/*!40000 ALTER TABLE `PAuthorities` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (16,'android.permission.ACCESS_COARSE_LOCATION'),(13,'android.permission.ACCESS_FINE_LOCATION'),(39,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(30,'android.permission.ACCESS_MOCK_LOCATION'),(19,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(1,'android.permission.BIND_INPUT_METHOD'),(21,'android.permission.CALL_PHONE'),(17,'android.permission.CAMERA'),(41,'android.permission.CHANGE_NETWORK_STATE'),(12,'android.permission.CHANGE_WIFI_STATE'),(22,'android.permission.GET_ACCOUNTS'),(2,'android.permission.GET_TASKS'),(11,'android.permission.INTERNET'),(33,'android.permission.KILL_BACKGROUND_PROCESSES'),(28,'android.permission.MANAGE_ACCOUNTS'),(36,'android.permission.MODIFY_PHONE_STATE'),(4,'android.permission.PROCESS_OUTGOING_CALLS'),(25,'android.permission.READ_CALENDAR'),(7,'android.permission.READ_CONTACTS'),(8,'android.permission.READ_PHONE_STATE'),(9,'android.permission.READ_SMS'),(38,'android.permission.READ_SYNC_SETTINGS'),(10,'android.permission.RECEIVE_BOOT_COMPLETED'),(6,'android.permission.RECEIVE_SMS'),(18,'android.permission.RECORD_AUDIO'),(24,'android.permission.RESTART_PACKAGES'),(3,'android.permission.SEND_SMS'),(26,'android.permission.SET_PREFERRED_APPLICATIONS'),(27,'android.permission.SUBSCRIBED_FEEDS_READ'),(40,'android.permission.VIBRATE'),(31,'android.permission.WAKE_LOCK'),(32,'android.permission.WRITE_APN_SETTINGS'),(34,'android.permission.WRITE_CALENDAR'),(23,'android.permission.WRITE_CONTACTS'),(15,'android.permission.WRITE_EXTERNAL_STORAGE'),(37,'android.permission.WRITE_SETTINGS'),(20,'android.permission.WRITE_SMS'),(35,'android.permission.WRITE_SYNC_SETTINGS'),(14,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(29,'com.android.vending.CHECK_LICENSE');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Providers`
--

LOCK TABLES `Providers` WRITE;
/*!40000 ALTER TABLE `Providers` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://sms/',NULL,NULL,NULL),(2,NULL,NULL,'http://www.kidlogger.net/',NULL,NULL,NULL),(3,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(4,NULL,NULL,'content://sms',NULL,NULL,NULL),(5,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(6,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(7,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(8,NULL,NULL,'content://sms/',NULL,NULL,NULL),(9,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(10,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(11,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(12,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(13,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(14,NULL,NULL,'http://www.kidlogger.net/',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,5,1),(2,8,3),(3,10,4),(4,11,5),(5,14,6),(6,17,7),(7,27,8),(8,34,11),(9,35,12),(10,37,13);
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
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,2,2),(2,2,3),(3,2,4),(4,2,5),(5,2,6),(6,2,7),(7,2,8),(8,2,9),(9,2,10),(10,2,11),(11,2,12),(12,2,13),(13,2,14),(14,3,2),(15,3,3),(16,3,4),(17,3,5),(18,3,6),(19,3,7),(20,3,8),(21,3,9),(22,3,10),(23,3,11),(24,3,12),(25,3,13),(26,3,14),(27,3,15),(28,3,17),(29,3,16),(30,3,19),(31,3,18),(32,4,2),(33,4,3),(34,4,4),(35,4,5),(36,4,6),(37,4,7),(38,4,8),(39,4,9),(40,4,10),(41,4,11),(42,4,12),(43,4,13),(44,4,14),(45,4,15),(46,4,17),(47,4,16),(48,4,19),(49,4,18),(50,6,3),(51,5,3),(52,6,6),(53,6,7),(54,5,6),(55,6,8),(56,5,7),(57,6,9),(58,6,10),(59,5,8),(60,6,11),(61,6,13),(62,5,9),(63,6,15),(64,6,16),(65,6,19),(66,5,10),(67,6,21),(68,5,11),(69,6,20),(70,6,23),(71,6,22),(72,5,13),(73,6,25),(74,5,15),(75,6,24),(76,6,27),(77,5,16),(78,6,26),(79,6,29),(80,5,19),(81,6,28),(82,6,31),(83,6,30),(84,5,21),(85,6,34),(86,5,20),(87,6,35),(88,6,32),(89,5,23),(90,6,33),(91,6,38),(92,5,22),(93,6,39),(94,6,36),(95,5,25),(96,6,37),(97,6,41),(98,5,24),(99,5,27),(100,5,26),(101,5,29),(102,5,28),(103,5,31),(104,5,30),(105,5,34),(106,5,35),(107,5,32),(108,5,33),(109,5,38),(110,5,39),(111,5,36),(112,5,37),(113,5,40),(114,5,41);
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
