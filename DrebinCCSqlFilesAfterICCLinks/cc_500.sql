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
) ENGINE=InnoDB AUTO_INCREMENT=4344 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,21,17,2,NULL),(2,21,26,2,NULL),(3,25,14,2,NULL),(4,25,23,2,NULL),(5,28,15,2,NULL),(6,28,24,2,NULL),(7,35,19,2,NULL),(8,35,29,2,NULL),(9,36,13,2,NULL),(10,36,22,2,NULL),(11,1,11,2,NULL),(12,48,11,2,NULL),(13,49,11,2,NULL),(14,51,11,2,NULL),(15,52,11,2,NULL),(16,54,11,2,NULL),(17,55,11,2,NULL),(18,57,11,2,NULL),(19,60,11,2,NULL),(20,15,11,2,NULL),(21,17,11,2,NULL),(22,18,11,2,NULL),(23,20,11,2,NULL),(24,22,11,2,NULL),(25,23,11,2,NULL),(26,24,11,2,NULL),(27,27,11,2,NULL),(28,48,2,2,NULL),(29,49,2,2,NULL),(30,51,2,2,NULL),(31,52,2,2,NULL),(32,54,2,2,NULL),(33,55,2,2,NULL),(34,57,2,2,NULL),(35,60,2,2,NULL),(36,48,3,2,NULL),(37,49,3,2,NULL),(38,51,3,2,NULL),(39,52,3,2,NULL),(40,54,3,2,NULL),(41,55,3,2,NULL),(42,57,3,2,NULL),(43,60,3,2,NULL),(44,48,9,2,NULL),(45,49,9,2,NULL),(46,51,9,2,NULL),(47,52,9,2,NULL),(48,54,9,2,NULL),(49,55,9,2,NULL),(50,57,9,2,NULL),(51,60,9,2,NULL),(52,48,10,2,NULL),(53,49,10,2,NULL),(54,51,10,2,NULL),(55,52,10,2,NULL),(56,54,10,2,NULL),(57,55,10,2,NULL),(58,57,10,2,NULL),(59,60,10,2,NULL),(60,48,40,2,NULL),(61,49,40,2,NULL),(62,51,40,2,NULL),(63,52,40,2,NULL),(64,54,40,2,NULL),(65,55,40,2,NULL),(66,57,40,2,NULL),(67,60,40,2,NULL),(68,48,44,2,NULL),(69,49,44,2,NULL),(70,51,44,2,NULL),(71,52,44,2,NULL),(72,54,44,2,NULL),(73,55,44,2,NULL),(74,57,44,2,NULL),(75,60,44,2,NULL),(76,48,48,2,NULL),(77,49,48,2,NULL),(78,51,48,2,NULL),(79,52,48,2,NULL),(80,54,48,2,NULL),(81,55,48,2,NULL),(82,57,48,2,NULL),(83,60,48,2,NULL),(84,48,53,2,NULL),(85,49,53,2,NULL),(86,51,53,2,NULL),(87,52,53,2,NULL),(88,54,53,2,NULL),(89,55,53,2,NULL),(90,57,53,2,NULL),(91,60,53,2,NULL),(92,48,56,2,NULL),(93,49,56,2,NULL),(94,51,56,2,NULL),(95,52,56,2,NULL),(96,54,56,2,NULL),(97,55,56,2,NULL),(98,57,56,2,NULL),(99,60,56,2,NULL),(100,48,60,2,NULL),(101,49,60,2,NULL),(102,51,60,2,NULL),(103,52,60,2,NULL),(104,54,60,2,NULL),(105,55,60,2,NULL),(106,57,60,2,NULL),(107,60,60,2,NULL),(108,48,64,2,NULL),(109,49,64,2,NULL),(110,51,64,2,NULL),(111,52,64,2,NULL),(112,54,64,2,NULL),(113,55,64,2,NULL),(114,57,64,2,NULL),(115,60,64,2,NULL),(116,48,67,2,NULL),(117,49,67,2,NULL),(118,51,67,2,NULL),(119,52,67,2,NULL),(120,54,67,2,NULL),(121,55,67,2,NULL),(122,57,67,2,NULL),(123,60,67,2,NULL),(124,48,70,2,NULL),(125,49,70,2,NULL),(126,51,70,2,NULL),(127,52,70,2,NULL),(128,54,70,2,NULL),(129,55,70,2,NULL),(130,57,70,2,NULL),(131,60,70,2,NULL),(132,48,77,2,NULL),(133,49,77,2,NULL),(134,51,77,2,NULL),(135,52,77,2,NULL),(136,54,77,2,NULL),(137,55,77,2,NULL),(138,57,77,2,NULL),(139,60,77,2,NULL),(140,48,19,2,NULL),(141,49,19,2,NULL),(142,51,19,2,NULL),(143,52,19,2,NULL),(144,54,19,2,NULL),(145,55,19,2,NULL),(146,57,19,2,NULL),(147,60,19,2,NULL),(148,48,20,2,NULL),(149,49,20,2,NULL),(150,51,20,2,NULL),(151,52,20,2,NULL),(152,54,20,2,NULL),(153,55,20,2,NULL),(154,57,20,2,NULL),(155,60,20,2,NULL),(156,48,103,2,NULL),(157,49,103,2,NULL),(158,51,103,2,NULL),(159,52,103,2,NULL),(160,54,103,2,NULL),(161,55,103,2,NULL),(162,57,103,2,NULL),(163,60,103,2,NULL),(164,48,107,2,NULL),(165,49,107,2,NULL),(166,51,107,2,NULL),(167,52,107,2,NULL),(168,54,107,2,NULL),(169,55,107,2,NULL),(170,57,107,2,NULL),(171,60,107,2,NULL),(172,48,111,2,NULL),(173,49,111,2,NULL),(174,51,111,2,NULL),(175,52,111,2,NULL),(176,54,111,2,NULL),(177,55,111,2,NULL),(178,57,111,2,NULL),(179,60,111,2,NULL),(180,48,115,2,NULL),(181,49,115,2,NULL),(182,51,115,2,NULL),(183,52,115,2,NULL),(184,54,115,2,NULL),(185,55,115,2,NULL),(186,57,115,2,NULL),(187,60,115,2,NULL),(188,48,119,2,NULL),(189,49,119,2,NULL),(190,51,119,2,NULL),(191,52,119,2,NULL),(192,54,119,2,NULL),(193,55,119,2,NULL),(194,57,119,2,NULL),(195,60,119,2,NULL),(196,48,123,2,NULL),(197,49,123,2,NULL),(198,51,123,2,NULL),(199,52,123,2,NULL),(200,54,123,2,NULL),(201,55,123,2,NULL),(202,57,123,2,NULL),(203,60,123,2,NULL),(204,48,127,2,NULL),(205,49,127,2,NULL),(206,51,127,2,NULL),(207,52,127,2,NULL),(208,54,127,2,NULL),(209,55,127,2,NULL),(210,57,127,2,NULL),(211,60,127,2,NULL),(212,48,133,2,NULL),(213,49,133,2,NULL),(214,51,133,2,NULL),(215,52,133,2,NULL),(216,54,133,2,NULL),(217,55,133,2,NULL),(218,57,133,2,NULL),(219,60,133,2,NULL),(220,48,137,2,NULL),(221,49,137,2,NULL),(222,51,137,2,NULL),(223,52,137,2,NULL),(224,54,137,2,NULL),(225,55,137,2,NULL),(226,57,137,2,NULL),(227,60,137,2,NULL),(228,48,28,2,NULL),(229,49,28,2,NULL),(230,51,28,2,NULL),(231,52,28,2,NULL),(232,54,28,2,NULL),(233,55,28,2,NULL),(234,57,28,2,NULL),(235,60,28,2,NULL),(236,48,29,2,NULL),(237,49,29,2,NULL),(238,51,29,2,NULL),(239,52,29,2,NULL),(240,54,29,2,NULL),(241,55,29,2,NULL),(242,57,29,2,NULL),(243,60,29,2,NULL),(244,48,30,2,NULL),(245,49,30,2,NULL),(246,51,30,2,NULL),(247,52,30,2,NULL),(248,54,30,2,NULL),(249,55,30,2,NULL),(250,57,30,2,NULL),(251,60,30,2,NULL),(252,48,31,2,NULL),(253,49,31,2,NULL),(254,51,31,2,NULL),(255,52,31,2,NULL),(256,54,31,2,NULL),(257,55,31,2,NULL),(258,57,31,2,NULL),(259,60,31,2,NULL),(260,48,32,2,NULL),(261,49,32,2,NULL),(262,51,32,2,NULL),(263,52,32,2,NULL),(264,54,32,2,NULL),(265,55,32,2,NULL),(266,1,3,2,NULL),(267,57,32,2,NULL),(268,60,32,2,NULL),(269,1,9,2,NULL),(270,48,131,2,NULL),(271,49,131,2,NULL),(272,1,10,2,NULL),(273,51,131,2,NULL),(274,52,131,2,NULL),(275,54,131,2,NULL),(276,1,40,2,NULL),(277,55,131,2,NULL),(278,57,131,2,NULL),(279,1,44,2,NULL),(280,60,131,2,NULL),(281,48,138,2,NULL),(282,49,138,2,NULL),(283,1,48,2,NULL),(284,51,138,2,NULL),(285,52,138,2,NULL),(286,54,138,2,NULL),(287,1,53,2,NULL),(288,55,138,2,NULL),(289,57,138,2,NULL),(290,60,138,2,NULL),(291,1,56,2,NULL),(292,48,148,2,NULL),(293,49,148,2,NULL),(294,51,148,2,NULL),(295,1,60,2,NULL),(296,52,148,2,NULL),(297,54,148,2,NULL),(298,55,148,2,NULL),(299,1,64,2,NULL),(300,57,148,2,NULL),(301,60,148,2,NULL),(302,48,190,2,NULL),(303,1,67,2,NULL),(304,49,190,2,NULL),(305,51,190,2,NULL),(306,1,70,2,NULL),(307,52,190,2,NULL),(308,54,190,2,NULL),(309,1,77,2,NULL),(310,55,190,2,NULL),(311,57,190,2,NULL),(312,1,19,2,NULL),(313,60,190,2,NULL),(314,48,204,2,NULL),(315,1,20,2,NULL),(316,49,204,2,NULL),(317,51,204,2,NULL),(318,1,103,2,NULL),(319,52,204,2,NULL),(320,54,204,2,NULL),(321,1,107,2,NULL),(322,55,204,2,NULL),(323,1,111,2,NULL),(324,57,204,2,NULL),(325,60,204,2,NULL),(326,48,207,2,NULL),(327,1,115,2,NULL),(328,49,207,2,NULL),(329,51,207,2,NULL),(330,1,119,2,NULL),(331,52,207,2,NULL),(332,54,207,2,NULL),(333,1,123,2,NULL),(334,55,207,2,NULL),(335,57,207,2,NULL),(336,1,127,2,NULL),(337,60,207,2,NULL),(338,1,133,2,NULL),(339,48,211,2,NULL),(340,49,211,2,NULL),(341,1,137,2,NULL),(342,51,211,2,NULL),(343,52,211,2,NULL),(344,54,211,2,NULL),(345,15,2,2,NULL),(346,55,211,2,NULL),(347,57,211,2,NULL),(348,17,2,2,NULL),(349,60,211,2,NULL),(350,48,213,2,NULL),(351,18,2,2,NULL),(352,49,213,2,NULL),(353,20,2,2,NULL),(354,51,213,2,NULL),(355,52,213,2,NULL),(356,22,2,2,NULL),(357,54,213,2,NULL),(358,55,213,2,NULL),(359,23,2,2,NULL),(360,57,213,2,NULL),(361,60,213,2,NULL),(362,48,220,2,NULL),(363,24,2,2,NULL),(364,49,220,2,NULL),(365,51,220,2,NULL),(366,27,2,2,NULL),(367,52,220,2,NULL),(368,54,220,2,NULL),(369,1,28,2,NULL),(370,55,220,2,NULL),(371,57,220,2,NULL),(372,1,29,2,NULL),(373,60,220,2,NULL),(374,48,39,2,NULL),(375,1,30,2,NULL),(376,49,39,2,NULL),(377,51,39,2,NULL),(378,1,31,2,NULL),(379,52,39,2,NULL),(380,1,32,2,NULL),(381,54,39,2,NULL),(382,55,39,2,NULL),(383,57,39,2,NULL),(384,1,131,2,NULL),(385,60,39,2,NULL),(386,48,42,2,NULL),(387,1,138,2,NULL),(388,49,42,2,NULL),(389,51,42,2,NULL),(390,1,148,2,NULL),(391,52,42,2,NULL),(392,54,42,2,NULL),(393,1,190,2,NULL),(394,55,42,2,NULL),(395,1,204,2,NULL),(396,57,42,2,NULL),(397,60,42,2,NULL),(398,48,46,2,NULL),(399,1,207,2,NULL),(400,49,46,2,NULL),(401,1,211,2,NULL),(402,51,46,2,NULL),(403,52,46,2,NULL),(404,1,213,2,NULL),(405,54,46,2,NULL),(406,55,46,2,NULL),(407,1,220,2,NULL),(408,57,46,2,NULL),(409,60,46,2,NULL),(410,1,39,2,NULL),(411,48,49,2,NULL),(412,49,49,2,NULL),(413,1,42,2,NULL),(414,51,49,2,NULL),(415,52,49,2,NULL),(416,54,49,2,NULL),(417,1,46,2,NULL),(418,55,49,2,NULL),(419,57,49,2,NULL),(420,1,49,2,NULL),(421,60,49,2,NULL),(422,1,51,2,NULL),(423,48,51,2,NULL),(424,49,51,2,NULL),(425,1,55,2,NULL),(426,51,51,2,NULL),(427,52,51,2,NULL),(428,1,58,2,NULL),(429,54,51,2,NULL),(430,55,51,2,NULL),(431,57,51,2,NULL),(432,1,61,2,NULL),(433,60,51,2,NULL),(434,1,65,2,NULL),(435,48,55,2,NULL),(436,49,55,2,NULL),(437,1,68,2,NULL),(438,51,55,2,NULL),(439,52,55,2,NULL),(440,1,71,2,NULL),(441,54,55,2,NULL),(442,55,55,2,NULL),(443,1,74,2,NULL),(444,57,55,2,NULL),(445,60,55,2,NULL),(446,48,58,2,NULL),(447,1,78,2,NULL),(448,49,58,2,NULL),(449,51,58,2,NULL),(450,1,81,2,NULL),(451,52,58,2,NULL),(452,54,58,2,NULL),(453,1,85,2,NULL),(454,55,58,2,NULL),(455,1,88,2,NULL),(456,57,58,2,NULL),(457,60,58,2,NULL),(458,1,91,2,NULL),(459,48,61,2,NULL),(460,49,61,2,NULL),(461,51,61,2,NULL),(462,1,94,2,NULL),(463,52,61,2,NULL),(464,54,61,2,NULL),(465,1,97,2,NULL),(466,55,61,2,NULL),(467,1,100,2,NULL),(468,57,61,2,NULL),(469,60,61,2,NULL),(470,1,104,2,NULL),(471,48,65,2,NULL),(472,49,65,2,NULL),(473,1,108,2,NULL),(474,51,65,2,NULL),(475,52,65,2,NULL),(476,1,112,2,NULL),(477,54,65,2,NULL),(478,55,65,2,NULL),(479,1,116,2,NULL),(480,57,65,2,NULL),(481,60,65,2,NULL),(482,1,120,2,NULL),(483,48,68,2,NULL),(484,49,68,2,NULL),(485,51,68,2,NULL),(486,1,124,2,NULL),(487,52,68,2,NULL),(488,54,68,2,NULL),(489,1,128,2,NULL),(490,55,68,2,NULL),(491,57,68,2,NULL),(492,1,132,2,NULL),(493,60,68,2,NULL),(494,48,71,2,NULL),(495,1,136,2,NULL),(496,49,71,2,NULL),(497,1,141,2,NULL),(498,51,71,2,NULL),(499,52,71,2,NULL),(500,1,144,2,NULL),(501,54,71,2,NULL),(502,55,71,2,NULL),(503,1,147,2,NULL),(504,57,71,2,NULL),(505,60,71,2,NULL),(506,48,74,2,NULL),(507,1,151,2,NULL),(508,49,74,2,NULL),(509,51,74,2,NULL),(510,1,154,2,NULL),(511,52,74,2,NULL),(512,1,157,2,NULL),(513,54,74,2,NULL),(514,55,74,2,NULL),(515,1,160,2,NULL),(516,57,74,2,NULL),(517,60,74,2,NULL),(518,1,163,2,NULL),(519,48,78,2,NULL),(520,49,78,2,NULL),(521,51,78,2,NULL),(522,1,166,2,NULL),(523,52,78,2,NULL),(524,54,78,2,NULL),(525,54,78,2,NULL),(526,1,169,2,NULL),(527,55,78,2,NULL),(528,1,172,2,NULL),(529,57,78,2,NULL),(530,60,78,2,NULL),(531,1,175,2,NULL),(532,48,81,2,NULL),(533,48,81,2,NULL),(534,1,178,2,NULL),(535,49,81,2,NULL),(536,49,81,2,NULL),(537,1,181,2,NULL),(538,51,81,2,NULL),(539,52,81,2,NULL),(540,1,184,2,NULL),(541,54,81,2,NULL),(542,54,81,2,NULL),(543,1,187,2,NULL),(544,55,81,2,NULL),(545,55,81,2,NULL),(546,1,191,2,NULL),(547,57,81,2,NULL),(548,57,81,2,NULL),(549,1,197,2,NULL),(550,60,81,2,NULL),(551,48,85,2,NULL),(552,1,200,2,NULL),(553,49,85,2,NULL),(554,51,85,2,NULL),(555,1,203,2,NULL),(556,52,85,2,NULL),(557,54,85,2,NULL),(558,1,206,2,NULL),(559,55,85,2,NULL),(560,55,85,2,NULL),(561,1,208,2,NULL),(562,57,85,2,NULL),(563,60,85,2,NULL),(564,1,209,2,NULL),(565,48,88,2,NULL),(566,49,88,2,NULL),(567,1,212,2,NULL),(568,51,88,2,NULL),(569,51,88,2,NULL),(570,1,214,2,NULL),(571,52,88,2,NULL),(572,54,88,2,NULL),(573,1,218,2,NULL),(574,55,88,2,NULL),(575,55,88,2,NULL),(576,1,221,2,NULL),(577,57,88,2,NULL),(578,60,88,2,NULL),(579,1,223,2,NULL),(580,48,91,2,NULL),(581,48,91,2,NULL),(582,1,225,2,NULL),(583,49,91,2,NULL),(584,49,91,2,NULL),(585,1,226,2,NULL),(586,51,91,2,NULL),(587,51,91,2,NULL),(588,1,227,2,NULL),(589,52,91,2,NULL),(590,52,91,2,NULL),(591,1,229,2,NULL),(592,54,91,2,NULL),(593,55,91,2,NULL),(594,1,230,2,NULL),(595,57,91,2,NULL),(596,57,91,2,NULL),(597,1,231,2,NULL),(598,60,91,2,NULL),(599,60,91,2,NULL),(600,1,33,2,NULL),(601,48,94,2,NULL),(602,49,94,2,NULL),(603,1,34,2,NULL),(604,51,94,2,NULL),(605,51,94,2,NULL),(606,1,35,2,NULL),(607,52,94,2,NULL),(608,54,94,2,NULL),(609,1,36,2,NULL),(610,55,94,2,NULL),(611,57,94,2,NULL),(612,1,37,2,NULL),(613,60,94,2,NULL),(614,48,97,2,NULL),(615,1,38,2,NULL),(616,49,97,2,NULL),(617,49,97,2,NULL),(618,1,41,2,NULL),(619,51,97,2,NULL),(620,51,97,2,NULL),(621,1,43,2,NULL),(622,52,97,2,NULL),(623,52,97,2,NULL),(624,1,45,2,NULL),(625,54,97,2,NULL),(626,55,97,2,NULL),(627,1,47,2,NULL),(628,57,97,2,NULL),(629,57,97,2,NULL),(630,1,50,2,NULL),(631,60,97,2,NULL),(632,60,97,2,NULL),(633,1,52,2,NULL),(634,48,100,2,NULL),(635,48,100,2,NULL),(636,1,54,2,NULL),(637,49,100,2,NULL),(638,49,100,2,NULL),(639,1,57,2,NULL),(640,51,100,2,NULL),(641,51,100,2,NULL),(642,1,59,2,NULL),(643,52,100,2,NULL),(644,54,100,2,NULL),(645,1,62,2,NULL),(646,55,100,2,NULL),(647,57,100,2,NULL),(648,1,63,2,NULL),(649,60,100,2,NULL),(650,48,104,2,NULL),(651,1,66,2,NULL),(652,49,104,2,NULL),(653,1,69,2,NULL),(654,51,104,2,NULL),(655,52,104,2,NULL),(656,1,72,2,NULL),(657,54,104,2,NULL),(658,1,73,2,NULL),(659,55,104,2,NULL),(660,57,104,2,NULL),(661,60,104,2,NULL),(662,1,76,2,NULL),(663,48,108,2,NULL),(664,49,108,2,NULL),(665,1,75,2,NULL),(666,51,108,2,NULL),(667,1,80,2,NULL),(668,52,108,2,NULL),(669,54,108,2,NULL),(670,1,79,2,NULL),(671,55,108,2,NULL),(672,57,108,2,NULL),(673,1,82,2,NULL),(674,60,108,2,NULL),(675,48,112,2,NULL),(676,1,83,2,NULL),(677,49,112,2,NULL),(678,51,112,2,NULL),(679,1,84,2,NULL),(680,52,112,2,NULL),(681,54,112,2,NULL),(682,55,112,2,NULL),(683,1,86,2,NULL),(684,57,112,2,NULL),(685,1,87,2,NULL),(686,60,112,2,NULL),(687,48,116,2,NULL),(688,49,116,2,NULL),(689,1,89,2,NULL),(690,51,116,2,NULL),(691,1,90,2,NULL),(692,52,116,2,NULL),(693,54,116,2,NULL),(694,1,93,2,NULL),(695,55,116,2,NULL),(696,57,116,2,NULL),(697,1,92,2,NULL),(698,60,116,2,NULL),(699,48,120,2,NULL),(700,1,96,2,NULL),(701,49,120,2,NULL),(702,51,120,2,NULL),(703,52,120,2,NULL),(704,1,95,2,NULL),(705,54,120,2,NULL),(706,55,120,2,NULL),(707,1,99,2,NULL),(708,57,120,2,NULL),(709,1,98,2,NULL),(710,60,120,2,NULL),(711,48,124,2,NULL),(712,49,124,2,NULL),(713,1,102,2,NULL),(714,51,124,2,NULL),(715,1,101,2,NULL),(716,52,124,2,NULL),(717,54,124,2,NULL),(718,55,124,2,NULL),(719,1,105,2,NULL),(720,57,124,2,NULL),(721,60,124,2,NULL),(722,1,106,2,NULL),(723,48,128,2,NULL),(724,1,109,2,NULL),(725,49,128,2,NULL),(726,51,128,2,NULL),(727,1,110,2,NULL),(728,52,128,2,NULL),(729,54,128,2,NULL),(730,1,113,2,NULL),(731,55,128,2,NULL),(732,57,128,2,NULL),(733,60,128,2,NULL),(734,1,114,2,NULL),(735,48,132,2,NULL),(736,49,132,2,NULL),(737,1,117,2,NULL),(738,51,132,2,NULL),(739,52,132,2,NULL),(740,1,118,2,NULL),(741,54,132,2,NULL),(742,1,122,2,NULL),(743,55,132,2,NULL),(744,57,132,2,NULL),(745,1,121,2,NULL),(746,60,132,2,NULL),(747,48,136,2,NULL),(748,49,136,2,NULL),(749,1,126,2,NULL),(750,51,136,2,NULL),(751,52,136,2,NULL),(752,1,125,2,NULL),(753,54,136,2,NULL),(754,1,130,2,NULL),(755,55,136,2,NULL),(756,57,136,2,NULL),(757,60,136,2,NULL),(758,1,129,2,NULL),(759,48,141,2,NULL),(760,1,134,2,NULL),(761,49,141,2,NULL),(762,51,141,2,NULL),(763,52,141,2,NULL),(764,1,135,2,NULL),(765,54,141,2,NULL),(766,55,141,2,NULL),(767,1,139,2,NULL),(768,57,141,2,NULL),(769,1,140,2,NULL),(770,60,141,2,NULL),(771,48,144,2,NULL),(772,49,144,2,NULL),(773,1,143,2,NULL),(774,51,144,2,NULL),(775,1,142,2,NULL),(776,52,144,2,NULL),(777,54,144,2,NULL),(778,1,145,2,NULL),(779,55,144,2,NULL),(780,57,144,2,NULL),(781,60,144,2,NULL),(782,1,146,2,NULL),(783,48,147,2,NULL),(784,49,147,2,NULL),(785,1,149,2,NULL),(786,51,147,2,NULL),(787,1,150,2,NULL),(788,52,147,2,NULL),(789,54,147,2,NULL),(790,55,147,2,NULL),(791,1,152,2,NULL),(792,57,147,2,NULL),(793,1,153,2,NULL),(794,60,147,2,NULL),(795,48,151,2,NULL),(796,1,155,2,NULL),(797,49,151,2,NULL),(798,51,151,2,NULL),(799,1,156,2,NULL),(800,52,151,2,NULL),(801,54,151,2,NULL),(802,55,151,2,NULL),(803,1,158,2,NULL),(804,57,151,2,NULL),(805,1,159,2,NULL),(806,60,151,2,NULL),(807,48,154,2,NULL),(808,49,154,2,NULL),(809,1,161,2,NULL),(810,51,154,2,NULL),(811,1,162,2,NULL),(812,52,154,2,NULL),(813,54,154,2,NULL),(814,55,154,2,NULL),(815,1,167,2,NULL),(816,57,154,2,NULL),(817,1,168,2,NULL),(818,60,154,2,NULL),(819,48,157,2,NULL),(820,49,157,2,NULL),(821,1,170,2,NULL),(822,51,157,2,NULL),(823,1,171,2,NULL),(824,52,157,2,NULL),(825,54,157,2,NULL),(826,1,173,2,NULL),(827,55,157,2,NULL),(828,57,157,2,NULL),(829,1,174,2,NULL),(830,60,157,2,NULL),(831,48,160,2,NULL),(832,49,160,2,NULL),(833,1,176,2,NULL),(834,51,160,2,NULL),(835,1,177,2,NULL),(836,52,160,2,NULL),(837,54,160,2,NULL),(838,55,160,2,NULL),(839,1,179,2,NULL),(840,57,160,2,NULL),(841,60,160,2,NULL),(842,1,180,2,NULL),(843,48,163,2,NULL),(844,49,163,2,NULL),(845,1,183,2,NULL),(846,51,163,2,NULL),(847,1,182,2,NULL),(848,52,163,2,NULL),(849,54,163,2,NULL),(850,1,185,2,NULL),(851,55,163,2,NULL),(852,57,163,2,NULL),(853,60,163,2,NULL),(854,1,186,2,NULL),(855,48,166,2,NULL),(856,49,166,2,NULL),(857,1,188,2,NULL),(858,51,166,2,NULL),(859,1,189,2,NULL),(860,52,166,2,NULL),(861,54,166,2,NULL),(862,1,194,2,NULL),(863,55,166,2,NULL),(864,57,166,2,NULL),(865,1,195,2,NULL),(866,60,166,2,NULL),(867,48,169,2,NULL),(868,49,169,2,NULL),(869,1,198,2,NULL),(870,51,169,2,NULL),(871,52,169,2,NULL),(872,1,199,2,NULL),(873,54,169,2,NULL),(874,55,169,2,NULL),(875,1,202,2,NULL),(876,57,169,2,NULL),(877,1,205,2,NULL),(878,60,169,2,NULL),(879,48,172,2,NULL),(880,49,172,2,NULL),(881,1,210,2,NULL),(882,51,172,2,NULL),(883,1,215,2,NULL),(884,52,172,2,NULL),(885,54,172,2,NULL),(886,1,219,2,NULL),(887,55,172,2,NULL),(888,57,172,2,NULL),(889,1,222,2,NULL),(890,60,172,2,NULL),(891,48,175,2,NULL),(892,1,224,2,NULL),(893,49,175,2,NULL),(894,51,175,2,NULL),(895,52,175,2,NULL),(896,54,175,2,NULL),(897,55,175,2,NULL),(898,57,175,2,NULL),(899,60,175,2,NULL),(900,48,178,2,NULL),(901,49,178,2,NULL),(902,51,178,2,NULL),(903,52,178,2,NULL),(904,54,178,2,NULL),(905,55,178,2,NULL),(906,57,178,2,NULL),(907,60,178,2,NULL),(908,48,181,2,NULL),(909,49,181,2,NULL),(910,51,181,2,NULL),(911,52,181,2,NULL),(912,54,181,2,NULL),(913,55,181,2,NULL),(914,57,181,2,NULL),(915,60,181,2,NULL),(916,48,184,2,NULL),(917,49,184,2,NULL),(918,51,184,2,NULL),(919,52,184,2,NULL),(920,54,184,2,NULL),(921,55,184,2,NULL),(922,57,184,2,NULL),(923,60,184,2,NULL),(924,48,187,2,NULL),(925,49,187,2,NULL),(926,51,187,2,NULL),(927,52,187,2,NULL),(928,54,187,2,NULL),(929,55,187,2,NULL),(930,57,187,2,NULL),(931,60,187,2,NULL),(932,48,191,2,NULL),(933,49,191,2,NULL),(934,51,191,2,NULL),(935,52,191,2,NULL),(936,54,191,2,NULL),(937,55,191,2,NULL),(938,57,191,2,NULL),(939,60,191,2,NULL),(940,48,197,2,NULL),(941,49,197,2,NULL),(942,51,197,2,NULL),(943,52,197,2,NULL),(944,54,197,2,NULL),(945,55,197,2,NULL),(946,57,197,2,NULL),(947,60,197,2,NULL),(948,48,200,2,NULL),(949,49,200,2,NULL),(950,49,200,2,NULL),(951,51,200,2,NULL),(952,52,200,2,NULL),(953,54,200,2,NULL),(954,55,200,2,NULL),(955,57,200,2,NULL),(956,60,200,2,NULL),(957,60,200,2,NULL),(958,48,203,2,NULL),(959,49,203,2,NULL),(960,51,203,2,NULL),(961,52,203,2,NULL),(962,52,203,2,NULL),(963,54,203,2,NULL),(964,55,203,2,NULL),(965,57,203,2,NULL),(966,60,203,2,NULL),(967,48,206,2,NULL),(968,49,206,2,NULL),(969,51,206,2,NULL),(970,52,206,2,NULL),(971,54,206,2,NULL),(972,55,206,2,NULL),(973,57,206,2,NULL),(974,60,206,2,NULL),(975,48,208,2,NULL),(976,49,208,2,NULL),(977,51,208,2,NULL),(978,52,208,2,NULL),(979,54,208,2,NULL),(980,55,208,2,NULL),(981,57,208,2,NULL),(982,60,208,2,NULL),(983,48,209,2,NULL),(984,49,209,2,NULL),(985,51,209,2,NULL),(986,52,209,2,NULL),(987,54,209,2,NULL),(988,55,209,2,NULL),(989,57,209,2,NULL),(990,60,209,2,NULL),(991,48,212,2,NULL),(992,49,212,2,NULL),(993,51,212,2,NULL),(994,52,212,2,NULL),(995,54,212,2,NULL),(996,55,212,2,NULL),(997,57,212,2,NULL),(998,60,212,2,NULL),(999,48,214,2,NULL),(1000,49,214,2,NULL),(1001,51,214,2,NULL),(1002,52,214,2,NULL),(1003,54,214,2,NULL),(1004,55,214,2,NULL),(1005,57,214,2,NULL),(1006,60,214,2,NULL),(1007,48,218,2,NULL),(1008,49,218,2,NULL),(1009,51,218,2,NULL),(1010,52,218,2,NULL),(1011,54,218,2,NULL),(1012,55,218,2,NULL),(1013,57,218,2,NULL),(1014,60,218,2,NULL),(1015,48,221,2,NULL),(1016,49,221,2,NULL),(1017,51,221,2,NULL),(1018,52,221,2,NULL),(1019,54,221,2,NULL),(1020,55,221,2,NULL),(1021,57,221,2,NULL),(1022,60,221,2,NULL),(1023,48,223,2,NULL),(1024,49,223,2,NULL),(1025,51,223,2,NULL),(1026,52,223,2,NULL),(1027,54,223,2,NULL),(1028,55,223,2,NULL),(1029,57,223,2,NULL),(1030,60,223,2,NULL),(1031,48,225,2,NULL),(1032,49,225,2,NULL),(1033,51,225,2,NULL),(1034,52,225,2,NULL),(1035,54,225,2,NULL),(1036,55,225,2,NULL),(1037,57,225,2,NULL),(1038,60,225,2,NULL),(1039,48,226,2,NULL),(1040,49,226,2,NULL),(1041,51,226,2,NULL),(1042,52,226,2,NULL),(1043,54,226,2,NULL),(1044,55,226,2,NULL),(1045,57,226,2,NULL),(1046,60,226,2,NULL),(1047,48,227,2,NULL),(1048,49,227,2,NULL),(1049,51,227,2,NULL),(1050,52,227,2,NULL),(1051,54,227,2,NULL),(1052,55,227,2,NULL),(1053,57,227,2,NULL),(1054,60,227,2,NULL),(1055,48,229,2,NULL),(1056,49,229,2,NULL),(1057,51,229,2,NULL),(1058,52,229,2,NULL),(1059,54,229,2,NULL),(1060,55,229,2,NULL),(1061,57,229,2,NULL),(1062,60,229,2,NULL),(1063,48,230,2,NULL),(1064,49,230,2,NULL),(1065,51,230,2,NULL),(1066,52,230,2,NULL),(1067,54,230,2,NULL),(1068,55,230,2,NULL),(1069,57,230,2,NULL),(1070,60,230,2,NULL),(1071,48,231,2,NULL),(1072,49,231,2,NULL),(1073,51,231,2,NULL),(1074,52,231,2,NULL),(1075,54,231,2,NULL),(1076,55,231,2,NULL),(1077,57,231,2,NULL),(1078,60,231,2,NULL),(1079,48,33,2,NULL),(1080,49,33,2,NULL),(1081,51,33,2,NULL),(1082,52,33,2,NULL),(1083,54,33,2,NULL),(1084,55,33,2,NULL),(1085,57,33,2,NULL),(1086,60,33,2,NULL),(1087,48,34,2,NULL),(1088,49,34,2,NULL),(1089,51,34,2,NULL),(1090,52,34,2,NULL),(1091,54,34,2,NULL),(1092,55,34,2,NULL),(1093,57,34,2,NULL),(1094,60,34,2,NULL),(1095,48,35,2,NULL),(1096,49,35,2,NULL),(1097,51,35,2,NULL),(1098,52,35,2,NULL),(1099,54,35,2,NULL),(1100,55,35,2,NULL),(1101,57,35,2,NULL),(1102,60,35,2,NULL),(1103,48,36,2,NULL),(1104,49,36,2,NULL),(1105,51,36,2,NULL),(1106,52,36,2,NULL),(1107,54,36,2,NULL),(1108,55,36,2,NULL),(1109,57,36,2,NULL),(1110,60,36,2,NULL),(1111,48,37,2,NULL),(1112,49,37,2,NULL),(1113,51,37,2,NULL),(1114,52,37,2,NULL),(1115,54,37,2,NULL),(1116,55,37,2,NULL),(1117,57,37,2,NULL),(1118,60,37,2,NULL),(1119,48,38,2,NULL),(1120,49,38,2,NULL),(1121,51,38,2,NULL),(1122,52,38,2,NULL),(1123,54,38,2,NULL),(1124,55,38,2,NULL),(1125,57,38,2,NULL),(1126,60,38,2,NULL),(1127,48,41,2,NULL),(1128,49,41,2,NULL),(1129,51,41,2,NULL),(1130,52,41,2,NULL),(1131,54,41,2,NULL),(1132,55,41,2,NULL),(1133,57,41,2,NULL),(1134,60,41,2,NULL),(1135,48,43,2,NULL),(1136,49,43,2,NULL),(1137,51,43,2,NULL),(1138,52,43,2,NULL),(1139,54,43,2,NULL),(1140,55,43,2,NULL),(1141,57,43,2,NULL),(1142,60,43,2,NULL),(1143,48,45,2,NULL),(1144,49,45,2,NULL),(1145,51,45,2,NULL),(1146,52,45,2,NULL),(1147,54,45,2,NULL),(1148,55,45,2,NULL),(1149,57,45,2,NULL),(1150,60,45,2,NULL),(1151,48,47,2,NULL),(1152,49,47,2,NULL),(1153,51,47,2,NULL),(1154,52,47,2,NULL),(1155,54,47,2,NULL),(1156,55,47,2,NULL),(1157,57,47,2,NULL),(1158,3,9,2,NULL),(1159,60,47,2,NULL),(1160,48,50,2,NULL),(1161,16,5,2,NULL),(1162,49,50,2,NULL),(1163,51,50,2,NULL),(1164,52,50,2,NULL),(1165,54,50,2,NULL),(1166,19,6,2,NULL),(1167,55,50,2,NULL),(1168,57,50,2,NULL),(1169,60,50,2,NULL),(1170,29,4,2,NULL),(1171,48,52,2,NULL),(1172,49,52,2,NULL),(1173,31,8,2,NULL),(1174,51,52,2,NULL),(1175,52,52,2,NULL),(1176,54,52,2,NULL),(1177,55,52,2,NULL),(1178,15,3,2,NULL),(1179,57,52,2,NULL),(1180,60,52,2,NULL),(1181,48,54,2,NULL),(1182,17,3,2,NULL),(1183,49,54,2,NULL),(1184,51,54,2,NULL),(1185,52,54,2,NULL),(1186,18,3,2,NULL),(1187,54,54,2,NULL),(1188,55,54,2,NULL),(1189,57,54,2,NULL),(1190,20,3,2,NULL),(1191,60,54,2,NULL),(1192,48,57,2,NULL),(1193,49,57,2,NULL),(1194,22,3,2,NULL),(1195,51,57,2,NULL),(1196,52,57,2,NULL),(1197,54,57,2,NULL),(1198,23,3,2,NULL),(1199,55,57,2,NULL),(1200,57,57,2,NULL),(1201,60,57,2,NULL),(1202,24,3,2,NULL),(1203,48,59,2,NULL),(1204,49,59,2,NULL),(1205,51,59,2,NULL),(1206,27,3,2,NULL),(1207,52,59,2,NULL),(1208,54,59,2,NULL),(1209,55,59,2,NULL),(1210,2,7,2,NULL),(1211,57,59,2,NULL),(1212,60,59,2,NULL),(1213,48,62,2,NULL),(1214,49,62,2,NULL),(1215,15,9,2,NULL),(1216,51,62,2,NULL),(1217,52,62,2,NULL),(1218,17,9,2,NULL),(1219,54,62,2,NULL),(1220,55,62,2,NULL),(1221,57,62,2,NULL),(1222,18,9,2,NULL),(1223,60,62,2,NULL),(1224,48,63,2,NULL),(1225,49,63,2,NULL),(1226,20,9,2,NULL),(1227,51,63,2,NULL),(1228,52,63,2,NULL),(1229,54,63,2,NULL),(1230,22,9,2,NULL),(1231,55,63,2,NULL),(1232,57,63,2,NULL),(1233,23,9,2,NULL),(1234,60,63,2,NULL),(1235,48,66,2,NULL),(1236,49,66,2,NULL),(1237,24,9,2,NULL),(1238,51,66,2,NULL),(1239,52,66,2,NULL),(1240,54,66,2,NULL),(1241,54,66,2,NULL),(1242,27,9,2,NULL),(1243,55,66,2,NULL),(1244,57,66,2,NULL),(1245,26,9,2,NULL),(1246,60,66,2,NULL),(1247,48,69,2,NULL),(1248,49,69,2,NULL),(1249,51,69,2,NULL),(1250,15,10,2,NULL),(1251,52,69,2,NULL),(1252,52,69,2,NULL),(1253,17,10,2,NULL),(1254,54,69,2,NULL),(1255,54,69,2,NULL),(1256,18,10,2,NULL),(1257,55,69,2,NULL),(1258,57,69,2,NULL),(1259,20,10,2,NULL),(1260,60,69,2,NULL),(1261,48,72,2,NULL),(1262,22,10,2,NULL),(1263,49,72,2,NULL),(1264,51,72,2,NULL),(1265,52,72,2,NULL),(1266,23,10,2,NULL),(1267,54,72,2,NULL),(1268,55,72,2,NULL),(1269,24,10,2,NULL),(1270,57,72,2,NULL),(1271,60,72,2,NULL),(1272,27,10,2,NULL),(1273,48,73,2,NULL),(1274,49,73,2,NULL),(1275,51,73,2,NULL),(1276,15,40,2,NULL),(1277,52,73,2,NULL),(1278,54,73,2,NULL),(1279,55,73,2,NULL),(1280,17,40,2,NULL),(1281,57,73,2,NULL),(1282,60,73,2,NULL),(1283,48,76,2,NULL),(1284,18,40,2,NULL),(1285,49,76,2,NULL),(1286,51,76,2,NULL),(1287,20,40,2,NULL),(1288,52,76,2,NULL),(1289,54,76,2,NULL),(1290,22,40,2,NULL),(1291,55,76,2,NULL),(1292,57,76,2,NULL),(1293,23,40,2,NULL),(1294,60,76,2,NULL),(1295,48,75,2,NULL),(1296,24,40,2,NULL),(1297,49,75,2,NULL),(1298,51,75,2,NULL),(1299,27,40,2,NULL),(1300,52,75,2,NULL),(1301,54,75,2,NULL),(1302,55,75,2,NULL),(1303,15,44,2,NULL),(1304,57,75,2,NULL),(1305,60,75,2,NULL),(1306,17,44,2,NULL),(1307,48,80,2,NULL),(1308,49,80,2,NULL),(1309,18,44,2,NULL),(1310,51,80,2,NULL),(1311,52,80,2,NULL),(1312,20,44,2,NULL),(1313,54,80,2,NULL),(1314,55,80,2,NULL),(1315,22,44,2,NULL),(1316,57,80,2,NULL),(1317,60,80,2,NULL),(1318,23,44,2,NULL),(1319,48,79,2,NULL),(1320,49,79,2,NULL),(1321,24,44,2,NULL),(1322,51,79,2,NULL),(1323,52,79,2,NULL),(1324,27,44,2,NULL),(1325,54,79,2,NULL),(1326,55,79,2,NULL),(1327,57,79,2,NULL),(1328,15,48,2,NULL),(1329,60,79,2,NULL),(1330,48,82,2,NULL),(1331,17,48,2,NULL),(1332,49,82,2,NULL),(1333,51,82,2,NULL),(1334,18,48,2,NULL),(1335,52,82,2,NULL),(1336,54,82,2,NULL),(1337,20,48,2,NULL),(1338,55,82,2,NULL),(1339,57,82,2,NULL),(1340,22,48,2,NULL),(1341,60,82,2,NULL),(1342,48,83,2,NULL),(1343,23,48,2,NULL),(1344,49,83,2,NULL),(1345,51,83,2,NULL),(1346,24,48,2,NULL),(1347,52,83,2,NULL),(1348,54,83,2,NULL),(1349,27,48,2,NULL),(1350,55,83,2,NULL),(1351,57,83,2,NULL),(1352,60,83,2,NULL),(1353,15,53,2,NULL),(1354,48,84,2,NULL),(1355,49,84,2,NULL),(1356,17,53,2,NULL),(1357,51,84,2,NULL),(1358,52,84,2,NULL),(1359,18,53,2,NULL),(1360,54,84,2,NULL),(1361,55,84,2,NULL),(1362,20,53,2,NULL),(1363,57,84,2,NULL),(1364,60,84,2,NULL),(1365,22,53,2,NULL),(1366,48,86,2,NULL),(1367,49,86,2,NULL),(1368,23,53,2,NULL),(1369,51,86,2,NULL),(1370,52,86,2,NULL),(1371,24,53,2,NULL),(1372,54,86,2,NULL),(1373,55,86,2,NULL),(1374,27,53,2,NULL),(1375,57,86,2,NULL),(1376,60,86,2,NULL),(1377,48,87,2,NULL),(1378,15,56,2,NULL),(1379,49,87,2,NULL),(1380,51,87,2,NULL),(1381,17,56,2,NULL),(1382,52,87,2,NULL),(1383,54,87,2,NULL),(1384,18,56,2,NULL),(1385,55,87,2,NULL),(1386,57,87,2,NULL),(1387,20,56,2,NULL),(1388,60,87,2,NULL),(1389,48,89,2,NULL),(1390,22,56,2,NULL),(1391,49,89,2,NULL),(1392,51,89,2,NULL),(1393,23,56,2,NULL),(1394,52,89,2,NULL),(1395,54,89,2,NULL),(1396,24,56,2,NULL),(1397,55,89,2,NULL),(1398,57,89,2,NULL),(1399,27,56,2,NULL),(1400,60,89,2,NULL),(1401,48,90,2,NULL),(1402,49,90,2,NULL),(1403,15,60,2,NULL),(1404,51,90,2,NULL),(1405,52,90,2,NULL),(1406,54,90,2,NULL),(1407,17,60,2,NULL),(1408,55,90,2,NULL),(1409,57,90,2,NULL),(1410,18,60,2,NULL),(1411,60,90,2,NULL),(1412,48,93,2,NULL),(1413,20,60,2,NULL),(1414,49,93,2,NULL),(1415,51,93,2,NULL),(1416,22,60,2,NULL),(1417,52,93,2,NULL),(1418,54,93,2,NULL),(1419,23,60,2,NULL),(1420,55,93,2,NULL),(1421,57,93,2,NULL),(1422,24,60,2,NULL),(1423,60,93,2,NULL),(1424,48,92,2,NULL),(1425,27,60,2,NULL),(1426,49,92,2,NULL),(1427,51,92,2,NULL),(1428,52,92,2,NULL),(1429,15,64,2,NULL),(1430,54,92,2,NULL),(1431,55,92,2,NULL),(1432,17,64,2,NULL),(1433,57,92,2,NULL),(1434,60,92,2,NULL),(1435,18,64,2,NULL),(1436,48,96,2,NULL),(1437,49,96,2,NULL),(1438,20,64,2,NULL),(1439,51,96,2,NULL),(1440,52,96,2,NULL),(1441,22,64,2,NULL),(1442,54,96,2,NULL),(1443,55,96,2,NULL),(1444,23,64,2,NULL),(1445,57,96,2,NULL),(1446,60,96,2,NULL),(1447,24,64,2,NULL),(1448,48,95,2,NULL),(1449,49,95,2,NULL),(1450,27,64,2,NULL),(1451,51,95,2,NULL),(1452,52,95,2,NULL),(1453,54,95,2,NULL),(1454,15,67,2,NULL),(1455,55,95,2,NULL),(1456,57,95,2,NULL),(1457,17,67,2,NULL),(1458,60,95,2,NULL),(1459,48,99,2,NULL),(1460,18,67,2,NULL),(1461,49,99,2,NULL),(1462,51,99,2,NULL),(1463,20,67,2,NULL),(1464,52,99,2,NULL),(1465,54,99,2,NULL),(1466,22,67,2,NULL),(1467,55,99,2,NULL),(1468,57,99,2,NULL),(1469,23,67,2,NULL),(1470,60,99,2,NULL),(1471,48,98,2,NULL),(1472,24,67,2,NULL),(1473,49,98,2,NULL),(1474,51,98,2,NULL),(1475,27,67,2,NULL),(1476,52,98,2,NULL),(1477,54,98,2,NULL),(1478,15,70,2,NULL),(1479,55,98,2,NULL),(1480,57,98,2,NULL),(1481,60,98,2,NULL),(1482,17,70,2,NULL),(1483,48,102,2,NULL),(1484,49,102,2,NULL),(1485,18,70,2,NULL),(1486,51,102,2,NULL),(1487,52,102,2,NULL),(1488,20,70,2,NULL),(1489,54,102,2,NULL),(1490,55,102,2,NULL),(1491,22,70,2,NULL),(1492,57,102,2,NULL),(1493,60,102,2,NULL),(1494,23,70,2,NULL),(1495,48,101,2,NULL),(1496,49,101,2,NULL),(1497,24,70,2,NULL),(1498,51,101,2,NULL),(1499,52,101,2,NULL),(1500,27,70,2,NULL),(1501,54,101,2,NULL),(1502,55,101,2,NULL),(1503,57,101,2,NULL),(1504,15,77,2,NULL),(1505,60,101,2,NULL),(1506,48,105,2,NULL),(1507,17,77,2,NULL),(1508,49,105,2,NULL),(1509,51,105,2,NULL),(1510,18,77,2,NULL),(1511,52,105,2,NULL),(1512,54,105,2,NULL),(1513,20,77,2,NULL),(1514,55,105,2,NULL),(1515,57,105,2,NULL),(1516,22,77,2,NULL),(1517,60,105,2,NULL),(1518,48,106,2,NULL),(1519,23,77,2,NULL),(1520,49,106,2,NULL),(1521,51,106,2,NULL),(1522,24,77,2,NULL),(1523,52,106,2,NULL),(1524,54,106,2,NULL),(1525,27,77,2,NULL),(1526,55,106,2,NULL),(1527,57,106,2,NULL),(1528,60,106,2,NULL),(1529,48,109,2,NULL),(1530,49,109,2,NULL),(1531,51,109,2,NULL),(1532,52,109,2,NULL),(1533,54,109,2,NULL),(1534,55,109,2,NULL),(1535,57,109,2,NULL),(1536,60,109,2,NULL),(1537,48,110,2,NULL),(1538,49,110,2,NULL),(1539,51,110,2,NULL),(1540,52,110,2,NULL),(1541,54,110,2,NULL),(1542,55,110,2,NULL),(1543,57,110,2,NULL),(1544,60,110,2,NULL),(1545,48,113,2,NULL),(1546,49,113,2,NULL),(1547,51,113,2,NULL),(1548,52,113,2,NULL),(1549,54,113,2,NULL),(1550,55,113,2,NULL),(1551,57,113,2,NULL),(1552,60,113,2,NULL),(1553,48,114,2,NULL),(1554,49,114,2,NULL),(1555,51,114,2,NULL),(1556,52,114,2,NULL),(1557,54,114,2,NULL),(1558,55,114,2,NULL),(1559,57,114,2,NULL),(1560,60,114,2,NULL),(1561,48,117,2,NULL),(1562,49,117,2,NULL),(1563,51,117,2,NULL),(1564,52,117,2,NULL),(1565,54,117,2,NULL),(1566,55,117,2,NULL),(1567,57,117,2,NULL),(1568,60,117,2,NULL),(1569,48,118,2,NULL),(1570,49,118,2,NULL),(1571,51,118,2,NULL),(1572,52,118,2,NULL),(1573,54,118,2,NULL),(1574,55,118,2,NULL),(1575,57,118,2,NULL),(1576,60,118,2,NULL),(1577,48,122,2,NULL),(1578,49,122,2,NULL),(1579,51,122,2,NULL),(1580,52,122,2,NULL),(1581,54,122,2,NULL),(1582,55,122,2,NULL),(1583,57,122,2,NULL),(1584,60,122,2,NULL),(1585,48,121,2,NULL),(1586,49,121,2,NULL),(1587,51,121,2,NULL),(1588,52,121,2,NULL),(1589,54,121,2,NULL),(1590,55,121,2,NULL),(1591,57,121,2,NULL),(1592,60,121,2,NULL),(1593,48,126,2,NULL),(1594,49,126,2,NULL),(1595,51,126,2,NULL),(1596,52,126,2,NULL),(1597,54,126,2,NULL),(1598,54,126,2,NULL),(1599,55,126,2,NULL),(1600,57,126,2,NULL),(1601,60,126,2,NULL),(1602,48,125,2,NULL),(1603,49,125,2,NULL),(1604,51,125,2,NULL),(1605,52,125,2,NULL),(1606,52,125,2,NULL),(1607,54,125,2,NULL),(1608,55,125,2,NULL),(1609,57,125,2,NULL),(1610,60,125,2,NULL),(1611,48,130,2,NULL),(1612,49,130,2,NULL),(1613,51,130,2,NULL),(1614,51,130,2,NULL),(1615,52,130,2,NULL),(1616,54,130,2,NULL),(1617,55,130,2,NULL),(1618,57,130,2,NULL),(1619,60,130,2,NULL),(1620,48,129,2,NULL),(1621,49,129,2,NULL),(1622,51,129,2,NULL),(1623,52,129,2,NULL),(1624,54,129,2,NULL),(1625,55,129,2,NULL),(1626,57,129,2,NULL),(1627,60,129,2,NULL),(1628,48,134,2,NULL),(1629,49,134,2,NULL),(1630,51,134,2,NULL),(1631,52,134,2,NULL),(1632,54,134,2,NULL),(1633,55,134,2,NULL),(1634,57,134,2,NULL),(1635,60,134,2,NULL),(1636,48,135,2,NULL),(1637,49,135,2,NULL),(1638,51,135,2,NULL),(1639,52,135,2,NULL),(1640,54,135,2,NULL),(1641,55,135,2,NULL),(1642,57,135,2,NULL),(1643,60,135,2,NULL),(1644,48,139,2,NULL),(1645,49,139,2,NULL),(1646,51,139,2,NULL),(1647,52,139,2,NULL),(1648,54,139,2,NULL),(1649,55,139,2,NULL),(1650,57,139,2,NULL),(1651,60,139,2,NULL),(1652,48,140,2,NULL),(1653,49,140,2,NULL),(1654,51,140,2,NULL),(1655,52,140,2,NULL),(1656,54,140,2,NULL),(1657,55,140,2,NULL),(1658,57,140,2,NULL),(1659,60,140,2,NULL),(1660,48,143,2,NULL),(1661,49,143,2,NULL),(1662,51,143,2,NULL),(1663,52,143,2,NULL),(1664,54,143,2,NULL),(1665,55,143,2,NULL),(1666,57,143,2,NULL),(1667,60,143,2,NULL),(1668,48,142,2,NULL),(1669,49,142,2,NULL),(1670,51,142,2,NULL),(1671,52,142,2,NULL),(1672,54,142,2,NULL),(1673,55,142,2,NULL),(1674,57,142,2,NULL),(1675,60,142,2,NULL),(1676,48,145,2,NULL),(1677,49,145,2,NULL),(1678,51,145,2,NULL),(1679,52,145,2,NULL),(1680,54,145,2,NULL),(1681,55,145,2,NULL),(1682,57,145,2,NULL),(1683,60,145,2,NULL),(1684,48,146,2,NULL),(1685,49,146,2,NULL),(1686,51,146,2,NULL),(1687,52,146,2,NULL),(1688,54,146,2,NULL),(1689,55,146,2,NULL),(1690,57,146,2,NULL),(1691,60,146,2,NULL),(1692,48,149,2,NULL),(1693,49,149,2,NULL),(1694,51,149,2,NULL),(1695,52,149,2,NULL),(1696,54,149,2,NULL),(1697,55,149,2,NULL),(1698,57,149,2,NULL),(1699,60,149,2,NULL),(1700,48,150,2,NULL),(1701,49,150,2,NULL),(1702,51,150,2,NULL),(1703,52,150,2,NULL),(1704,54,150,2,NULL),(1705,55,150,2,NULL),(1706,57,150,2,NULL),(1707,60,150,2,NULL),(1708,48,152,2,NULL),(1709,49,152,2,NULL),(1710,51,152,2,NULL),(1711,52,152,2,NULL),(1712,54,152,2,NULL),(1713,55,152,2,NULL),(1714,57,152,2,NULL),(1715,60,152,2,NULL),(1716,48,153,2,NULL),(1717,49,153,2,NULL),(1718,51,153,2,NULL),(1719,52,153,2,NULL),(1720,54,153,2,NULL),(1721,55,153,2,NULL),(1722,57,153,2,NULL),(1723,60,153,2,NULL),(1724,48,155,2,NULL),(1725,49,155,2,NULL),(1726,51,155,2,NULL),(1727,52,155,2,NULL),(1728,54,155,2,NULL),(1729,55,155,2,NULL),(1730,57,155,2,NULL),(1731,60,155,2,NULL),(1732,48,156,2,NULL),(1733,49,156,2,NULL),(1734,51,156,2,NULL),(1735,52,156,2,NULL),(1736,54,156,2,NULL),(1737,55,156,2,NULL),(1738,57,156,2,NULL),(1739,60,156,2,NULL),(1740,48,158,2,NULL),(1741,49,158,2,NULL),(1742,51,158,2,NULL),(1743,52,158,2,NULL),(1744,54,158,2,NULL),(1745,55,158,2,NULL),(1746,57,158,2,NULL),(1747,60,158,2,NULL),(1748,48,159,2,NULL),(1749,49,159,2,NULL),(1750,51,159,2,NULL),(1751,52,159,2,NULL),(1752,54,159,2,NULL),(1753,55,159,2,NULL),(1754,57,159,2,NULL),(1755,60,159,2,NULL),(1756,48,161,2,NULL),(1757,49,161,2,NULL),(1758,51,161,2,NULL),(1759,52,161,2,NULL),(1760,54,161,2,NULL),(1761,55,161,2,NULL),(1762,57,161,2,NULL),(1763,60,161,2,NULL),(1764,48,162,2,NULL),(1765,49,162,2,NULL),(1766,51,162,2,NULL),(1767,52,162,2,NULL),(1768,54,162,2,NULL),(1769,55,162,2,NULL),(1770,57,162,2,NULL),(1771,60,162,2,NULL),(1772,48,167,2,NULL),(1773,49,167,2,NULL),(1774,51,167,2,NULL),(1775,52,167,2,NULL),(1776,54,167,2,NULL),(1777,55,167,2,NULL),(1778,57,167,2,NULL),(1779,60,167,2,NULL),(1780,48,168,2,NULL),(1781,49,168,2,NULL),(1782,51,168,2,NULL),(1783,52,168,2,NULL),(1784,54,168,2,NULL),(1785,55,168,2,NULL),(1786,57,168,2,NULL),(1787,60,168,2,NULL),(1788,48,170,2,NULL),(1789,49,170,2,NULL),(1790,51,170,2,NULL),(1791,52,170,2,NULL),(1792,54,170,2,NULL),(1793,55,170,2,NULL),(1794,57,170,2,NULL),(1795,60,170,2,NULL),(1796,48,171,2,NULL),(1797,15,39,2,NULL),(1798,49,171,2,NULL),(1799,51,171,2,NULL),(1800,17,39,2,NULL),(1801,52,171,2,NULL),(1802,54,171,2,NULL),(1803,55,171,2,NULL),(1804,18,39,2,NULL),(1805,57,171,2,NULL),(1806,60,171,2,NULL),(1807,48,173,2,NULL),(1808,49,173,2,NULL),(1809,20,39,2,NULL),(1810,51,173,2,NULL),(1811,52,173,2,NULL),(1812,54,173,2,NULL),(1813,22,39,2,NULL),(1814,55,173,2,NULL),(1815,23,39,2,NULL),(1816,57,173,2,NULL),(1817,60,173,2,NULL),(1818,24,39,2,NULL),(1819,48,174,2,NULL),(1820,49,174,2,NULL),(1821,51,174,2,NULL),(1822,27,39,2,NULL),(1823,52,174,2,NULL),(1824,54,174,2,NULL),(1825,15,42,2,NULL),(1826,55,174,2,NULL),(1827,57,174,2,NULL),(1828,60,174,2,NULL),(1829,17,42,2,NULL),(1830,48,176,2,NULL),(1831,49,176,2,NULL),(1832,18,42,2,NULL),(1833,51,176,2,NULL),(1834,52,176,2,NULL),(1835,20,42,2,NULL),(1836,54,176,2,NULL),(1837,55,176,2,NULL),(1838,22,42,2,NULL),(1839,57,176,2,NULL),(1840,60,176,2,NULL),(1841,23,42,2,NULL),(1842,48,177,2,NULL),(1843,49,177,2,NULL),(1844,24,42,2,NULL),(1845,51,177,2,NULL),(1846,52,177,2,NULL),(1847,27,42,2,NULL),(1848,54,177,2,NULL),(1849,55,177,2,NULL),(1850,57,177,2,NULL),(1851,15,46,2,NULL),(1852,60,177,2,NULL),(1853,48,179,2,NULL),(1854,17,46,2,NULL),(1855,49,179,2,NULL),(1856,51,179,2,NULL),(1857,52,179,2,NULL),(1858,18,46,2,NULL),(1859,54,179,2,NULL),(1860,55,179,2,NULL),(1861,57,179,2,NULL),(1862,20,46,2,NULL),(1863,60,179,2,NULL),(1864,48,180,2,NULL),(1865,49,180,2,NULL),(1866,22,46,2,NULL),(1867,51,180,2,NULL),(1868,52,180,2,NULL),(1869,23,46,2,NULL),(1870,54,180,2,NULL),(1871,55,180,2,NULL),(1872,24,46,2,NULL),(1873,57,180,2,NULL),(1874,60,180,2,NULL),(1875,27,46,2,NULL),(1876,48,183,2,NULL),(1877,49,183,2,NULL),(1878,15,49,2,NULL),(1879,51,183,2,NULL),(1880,52,183,2,NULL),(1881,17,49,2,NULL),(1882,54,183,2,NULL),(1883,55,183,2,NULL),(1884,18,49,2,NULL),(1885,57,183,2,NULL),(1886,60,183,2,NULL),(1887,20,49,2,NULL),(1888,48,182,2,NULL),(1889,49,182,2,NULL),(1890,22,49,2,NULL),(1891,51,182,2,NULL),(1892,52,182,2,NULL),(1893,23,49,2,NULL),(1894,54,182,2,NULL),(1895,24,49,2,NULL),(1896,55,182,2,NULL),(1897,57,182,2,NULL),(1898,60,182,2,NULL),(1899,27,49,2,NULL),(1900,48,185,2,NULL),(1901,49,185,2,NULL),(1902,15,51,2,NULL),(1903,51,185,2,NULL),(1904,52,185,2,NULL),(1905,54,185,2,NULL),(1906,17,51,2,NULL),(1907,55,185,2,NULL),(1908,57,185,2,NULL),(1909,18,51,2,NULL),(1910,60,185,2,NULL),(1911,48,186,2,NULL),(1912,20,51,2,NULL),(1913,49,186,2,NULL),(1914,51,186,2,NULL),(1915,22,51,2,NULL),(1916,52,186,2,NULL),(1917,54,186,2,NULL),(1918,23,51,2,NULL),(1919,55,186,2,NULL),(1920,57,186,2,NULL),(1921,24,51,2,NULL),(1922,60,186,2,NULL),(1923,48,188,2,NULL),(1924,27,51,2,NULL),(1925,49,188,2,NULL),(1926,51,188,2,NULL),(1927,15,55,2,NULL),(1928,52,188,2,NULL),(1929,54,188,2,NULL),(1930,55,188,2,NULL),(1931,17,55,2,NULL),(1932,57,188,2,NULL),(1933,60,188,2,NULL),(1934,18,55,2,NULL),(1935,48,189,2,NULL),(1936,49,189,2,NULL),(1937,20,55,2,NULL),(1938,51,189,2,NULL),(1939,52,189,2,NULL),(1940,22,55,2,NULL),(1941,54,189,2,NULL),(1942,23,55,2,NULL),(1943,55,189,2,NULL),(1944,57,189,2,NULL),(1945,24,55,2,NULL),(1946,60,189,2,NULL),(1947,48,194,2,NULL),(1948,49,194,2,NULL),(1949,27,55,2,NULL),(1950,51,194,2,NULL),(1951,52,194,2,NULL),(1952,15,58,2,NULL),(1953,54,194,2,NULL),(1954,55,194,2,NULL),(1955,17,58,2,NULL),(1956,57,194,2,NULL),(1957,18,58,2,NULL),(1958,60,194,2,NULL),(1959,48,195,2,NULL),(1960,49,195,2,NULL),(1961,20,58,2,NULL),(1962,49,195,2,NULL),(1963,51,195,2,NULL),(1964,52,195,2,NULL),(1965,22,58,2,NULL),(1966,54,195,2,NULL),(1967,55,195,2,NULL),(1968,55,195,2,NULL),(1969,23,58,2,NULL),(1970,57,195,2,NULL),(1971,60,195,2,NULL),(1972,24,58,2,NULL),(1973,48,198,2,NULL),(1974,49,198,2,NULL),(1975,49,198,2,NULL),(1976,27,58,2,NULL),(1977,51,198,2,NULL),(1978,52,198,2,NULL),(1979,15,61,2,NULL),(1980,54,198,2,NULL),(1981,17,61,2,NULL),(1982,55,198,2,NULL),(1983,57,198,2,NULL),(1984,18,61,2,NULL),(1985,60,198,2,NULL),(1986,20,61,2,NULL),(1987,48,199,2,NULL),(1988,22,61,2,NULL),(1989,49,199,2,NULL),(1990,51,199,2,NULL),(1991,23,61,2,NULL),(1992,52,199,2,NULL),(1993,24,61,2,NULL),(1994,54,199,2,NULL),(1995,27,61,2,NULL),(1996,55,199,2,NULL),(1997,57,199,2,NULL),(1998,15,65,2,NULL),(1999,15,65,2,NULL),(2000,60,199,2,NULL),(2001,48,202,2,NULL),(2002,49,202,2,NULL),(2003,17,65,2,NULL),(2004,18,65,2,NULL),(2005,51,202,2,NULL),(2006,52,202,2,NULL),(2007,20,65,2,NULL),(2008,54,202,2,NULL),(2009,22,65,2,NULL),(2010,55,202,2,NULL),(2011,23,65,2,NULL),(2012,57,202,2,NULL),(2013,60,202,2,NULL),(2014,24,65,2,NULL),(2015,27,65,2,NULL),(2016,48,205,2,NULL),(2017,49,205,2,NULL),(2018,15,68,2,NULL),(2019,51,205,2,NULL),(2020,52,205,2,NULL),(2021,17,68,2,NULL),(2022,54,205,2,NULL),(2023,18,68,2,NULL),(2024,55,205,2,NULL),(2025,57,205,2,NULL),(2026,20,68,2,NULL),(2027,22,68,2,NULL),(2028,60,205,2,NULL),(2029,48,210,2,NULL),(2030,23,68,2,NULL),(2031,24,68,2,NULL),(2032,49,210,2,NULL),(2033,51,210,2,NULL),(2034,27,68,2,NULL),(2035,52,210,2,NULL),(2036,15,71,2,NULL),(2037,54,210,2,NULL),(2038,17,71,2,NULL),(2039,55,210,2,NULL),(2040,18,71,2,NULL),(2041,57,210,2,NULL),(2042,20,71,2,NULL),(2043,60,210,2,NULL),(2044,22,71,2,NULL),(2045,48,215,2,NULL),(2046,23,71,2,NULL),(2047,49,215,2,NULL),(2048,51,215,2,NULL),(2049,24,71,2,NULL),(2050,27,71,2,NULL),(2051,52,215,2,NULL),(2052,54,215,2,NULL),(2053,15,74,2,NULL),(2054,55,215,2,NULL),(2055,17,74,2,NULL),(2056,57,215,2,NULL),(2057,60,215,2,NULL),(2058,18,74,2,NULL),(2059,48,219,2,NULL),(2060,20,74,2,NULL),(2061,49,219,2,NULL),(2062,22,74,2,NULL),(2063,51,219,2,NULL),(2064,23,74,2,NULL),(2065,52,219,2,NULL),(2066,24,74,2,NULL),(2067,54,219,2,NULL),(2068,55,219,2,NULL),(2069,27,74,2,NULL),(2070,57,219,2,NULL),(2071,15,78,2,NULL),(2072,60,219,2,NULL),(2073,17,78,2,NULL),(2074,48,222,2,NULL),(2075,18,78,2,NULL),(2076,49,222,2,NULL),(2077,51,222,2,NULL),(2078,20,78,2,NULL),(2079,22,78,2,NULL),(2080,52,222,2,NULL),(2081,54,222,2,NULL),(2082,23,78,2,NULL),(2083,55,222,2,NULL),(2084,24,78,2,NULL),(2085,57,222,2,NULL),(2086,27,78,2,NULL),(2087,60,222,2,NULL),(2088,48,224,2,NULL),(2089,15,81,2,NULL),(2090,17,81,2,NULL),(2091,49,224,2,NULL),(2092,51,224,2,NULL),(2093,18,81,2,NULL),(2094,52,224,2,NULL),(2095,20,81,2,NULL),(2096,54,224,2,NULL),(2097,55,224,2,NULL),(2098,22,81,2,NULL),(2099,23,81,2,NULL),(2100,57,224,2,NULL),(2101,60,224,2,NULL),(2102,24,81,2,NULL),(2103,33,12,2,NULL),(2104,27,81,2,NULL),(2105,33,21,2,NULL),(2106,15,85,2,NULL),(2107,15,19,2,NULL),(2108,17,85,2,NULL),(2109,18,85,2,NULL),(2110,17,19,2,NULL),(2111,18,19,2,NULL),(2112,20,19,2,NULL),(2113,20,85,2,NULL),(2114,22,85,2,NULL),(2115,22,19,2,NULL),(2116,23,19,2,NULL),(2117,23,85,2,NULL),(2118,24,85,2,NULL),(2119,24,19,2,NULL),(2120,27,19,2,NULL),(2121,27,85,2,NULL),(2122,30,19,2,NULL),(2123,15,88,2,NULL),(2124,30,29,2,NULL),(2125,17,88,2,NULL),(2126,18,88,2,NULL),(2127,15,20,2,NULL),(2128,17,20,2,NULL),(2129,20,88,2,NULL),(2130,22,88,2,NULL),(2131,18,20,2,NULL),(2132,20,20,2,NULL),(2133,23,88,2,NULL),(2134,24,88,2,NULL),(2135,22,20,2,NULL),(2136,23,20,2,NULL),(2137,27,88,2,NULL),(2138,27,88,2,NULL),(2139,24,20,2,NULL),(2140,27,20,2,NULL),(2141,15,91,2,NULL),(2142,15,91,2,NULL),(2143,15,103,2,NULL),(2144,17,91,2,NULL),(2145,17,91,2,NULL),(2146,17,103,2,NULL),(2147,18,103,2,NULL),(2148,20,103,2,NULL),(2149,18,91,2,NULL),(2150,20,91,2,NULL),(2151,22,103,2,NULL),(2152,22,91,2,NULL),(2153,23,103,2,NULL),(2154,23,91,2,NULL),(2155,24,103,2,NULL),(2156,24,91,2,NULL),(2157,27,103,2,NULL),(2158,27,91,2,NULL),(2159,15,107,2,NULL),(2160,15,94,2,NULL),(2161,17,94,2,NULL),(2162,17,107,2,NULL),(2163,18,107,2,NULL),(2164,18,94,2,NULL),(2165,20,107,2,NULL),(2166,20,94,2,NULL),(2167,22,107,2,NULL),(2168,22,94,2,NULL),(2169,23,107,2,NULL),(2170,23,94,2,NULL),(2171,24,107,2,NULL),(2172,24,94,2,NULL),(2173,27,107,2,NULL),(2174,27,94,2,NULL),(2175,15,111,2,NULL),(2176,15,97,2,NULL),(2177,17,111,2,NULL),(2178,17,97,2,NULL),(2179,18,111,2,NULL),(2180,18,97,2,NULL),(2181,20,111,2,NULL),(2182,20,111,2,NULL),(2183,20,97,2,NULL),(2184,22,97,2,NULL),(2185,22,111,2,NULL),(2186,22,111,2,NULL),(2187,23,97,2,NULL),(2188,24,97,2,NULL),(2189,23,111,2,NULL),(2190,23,111,2,NULL),(2191,27,97,2,NULL),(2192,15,100,2,NULL),(2193,24,111,2,NULL),(2194,24,111,2,NULL),(2195,17,100,2,NULL),(2196,18,100,2,NULL),(2197,27,111,2,NULL),(2198,27,111,2,NULL),(2199,20,100,2,NULL),(2200,22,100,2,NULL),(2201,23,100,2,NULL),(2202,15,115,2,NULL),(2203,15,115,2,NULL),(2204,24,100,2,NULL),(2205,17,115,2,NULL),(2206,17,115,2,NULL),(2207,27,100,2,NULL),(2208,15,104,2,NULL),(2209,18,115,2,NULL),(2210,18,115,2,NULL),(2211,17,104,2,NULL),(2212,18,104,2,NULL),(2213,20,115,2,NULL),(2214,20,115,2,NULL),(2215,20,104,2,NULL),(2216,20,104,2,NULL),(2217,22,115,2,NULL),(2218,22,115,2,NULL),(2219,22,104,2,NULL),(2220,22,104,2,NULL),(2221,23,115,2,NULL),(2222,23,115,2,NULL),(2223,23,104,2,NULL),(2224,23,104,2,NULL),(2225,24,115,2,NULL),(2226,24,115,2,NULL),(2227,24,104,2,NULL),(2228,24,104,2,NULL),(2229,27,115,2,NULL),(2230,27,115,2,NULL),(2231,27,104,2,NULL),(2232,27,104,2,NULL),(2233,15,119,2,NULL),(2234,15,119,2,NULL),(2235,15,108,2,NULL),(2236,15,108,2,NULL),(2237,17,119,2,NULL),(2238,17,108,2,NULL),(2239,17,108,2,NULL),(2240,18,119,2,NULL),(2241,20,119,2,NULL),(2242,18,108,2,NULL),(2243,18,108,2,NULL),(2244,22,119,2,NULL),(2245,23,119,2,NULL),(2246,20,108,2,NULL),(2247,20,108,2,NULL),(2248,24,119,2,NULL),(2249,27,119,2,NULL),(2250,22,108,2,NULL),(2251,22,108,2,NULL),(2252,15,123,2,NULL),(2253,17,123,2,NULL),(2254,23,108,2,NULL),(2255,23,108,2,NULL),(2256,18,123,2,NULL),(2257,24,108,2,NULL),(2258,20,123,2,NULL),(2259,24,108,2,NULL),(2260,22,123,2,NULL),(2261,27,108,2,NULL),(2262,23,123,2,NULL),(2263,15,112,2,NULL),(2264,24,123,2,NULL),(2265,17,112,2,NULL),(2266,27,123,2,NULL),(2267,18,112,2,NULL),(2268,15,127,2,NULL),(2269,20,112,2,NULL),(2270,20,112,2,NULL),(2271,17,127,2,NULL),(2272,18,127,2,NULL),(2273,22,112,2,NULL),(2274,20,127,2,NULL),(2275,22,112,2,NULL),(2276,22,127,2,NULL),(2277,23,112,2,NULL),(2278,23,112,2,NULL),(2279,23,127,2,NULL),(2280,24,127,2,NULL),(2281,24,112,2,NULL),(2282,24,112,2,NULL),(2283,27,127,2,NULL),(2284,15,133,2,NULL),(2285,27,112,2,NULL),(2286,27,112,2,NULL),(2287,17,133,2,NULL),(2288,18,133,2,NULL),(2289,20,133,2,NULL),(2290,15,116,2,NULL),(2291,15,116,2,NULL),(2292,22,133,2,NULL),(2293,23,133,2,NULL),(2294,17,116,2,NULL),(2295,24,133,2,NULL),(2296,17,116,2,NULL),(2297,27,133,2,NULL),(2298,18,116,2,NULL),(2299,18,116,2,NULL),(2300,15,137,2,NULL),(2301,20,116,2,NULL),(2302,20,116,2,NULL),(2303,17,137,2,NULL),(2304,18,137,2,NULL),(2305,22,116,2,NULL),(2306,22,116,2,NULL),(2307,20,137,2,NULL),(2308,22,137,2,NULL),(2309,23,116,2,NULL),(2310,23,116,2,NULL),(2311,23,137,2,NULL),(2312,24,137,2,NULL),(2313,24,116,2,NULL),(2314,24,116,2,NULL),(2315,27,137,2,NULL),(2316,27,116,2,NULL),(2317,27,116,2,NULL),(2318,15,120,2,NULL),(2319,17,120,2,NULL),(2320,17,120,2,NULL),(2321,18,120,2,NULL),(2322,20,120,2,NULL),(2323,22,120,2,NULL),(2324,23,120,2,NULL),(2325,15,28,2,NULL),(2326,15,28,2,NULL),(2327,24,120,2,NULL),(2328,27,120,2,NULL),(2329,17,28,2,NULL),(2330,17,28,2,NULL),(2331,15,124,2,NULL),(2332,17,124,2,NULL),(2333,18,28,2,NULL),(2334,18,28,2,NULL),(2335,18,124,2,NULL),(2336,20,28,2,NULL),(2337,20,28,2,NULL),(2338,20,124,2,NULL),(2339,22,124,2,NULL),(2340,22,28,2,NULL),(2341,22,28,2,NULL),(2342,23,124,2,NULL),(2343,24,124,2,NULL),(2344,23,28,2,NULL),(2345,23,28,2,NULL),(2346,27,124,2,NULL),(2347,15,128,2,NULL),(2348,24,28,2,NULL),(2349,24,28,2,NULL),(2350,17,128,2,NULL),(2351,18,128,2,NULL),(2352,27,28,2,NULL),(2353,27,28,2,NULL),(2354,20,128,2,NULL),(2355,22,128,2,NULL),(2356,15,29,2,NULL),(2357,15,29,2,NULL),(2358,23,128,2,NULL),(2359,24,128,2,NULL),(2360,17,29,2,NULL),(2361,17,29,2,NULL),(2362,27,128,2,NULL),(2363,15,132,2,NULL),(2364,18,29,2,NULL),(2365,18,29,2,NULL),(2366,17,132,2,NULL),(2367,18,132,2,NULL),(2368,20,29,2,NULL),(2369,20,29,2,NULL),(2370,20,132,2,NULL),(2371,22,132,2,NULL),(2372,22,29,2,NULL),(2373,22,29,2,NULL),(2374,23,132,2,NULL),(2375,24,132,2,NULL),(2376,23,29,2,NULL),(2377,23,29,2,NULL),(2378,27,132,2,NULL),(2379,15,136,2,NULL),(2380,24,29,2,NULL),(2381,24,29,2,NULL),(2382,17,136,2,NULL),(2383,18,136,2,NULL),(2384,27,29,2,NULL),(2385,27,29,2,NULL),(2386,20,136,2,NULL),(2387,20,136,2,NULL),(2388,15,30,2,NULL),(2389,15,30,2,NULL),(2390,22,136,2,NULL),(2391,22,136,2,NULL),(2392,17,30,2,NULL),(2393,17,30,2,NULL),(2394,23,136,2,NULL),(2395,23,136,2,NULL),(2396,18,30,2,NULL),(2397,18,30,2,NULL),(2398,24,136,2,NULL),(2399,24,136,2,NULL),(2400,20,30,2,NULL),(2401,20,30,2,NULL),(2402,27,136,2,NULL),(2403,27,136,2,NULL),(2404,22,30,2,NULL),(2405,22,30,2,NULL),(2406,15,141,2,NULL),(2407,15,141,2,NULL),(2408,23,30,2,NULL),(2409,23,30,2,NULL),(2410,17,141,2,NULL),(2411,24,30,2,NULL),(2412,24,30,2,NULL),(2413,18,141,2,NULL),(2414,20,141,2,NULL),(2415,27,30,2,NULL),(2416,27,30,2,NULL),(2417,22,141,2,NULL),(2418,23,141,2,NULL),(2419,15,31,2,NULL),(2420,15,31,2,NULL),(2421,24,141,2,NULL),(2422,24,141,2,NULL),(2423,17,31,2,NULL),(2424,27,141,2,NULL),(2425,27,141,2,NULL),(2426,18,31,2,NULL),(2427,20,31,2,NULL),(2428,22,31,2,NULL),(2429,15,144,2,NULL),(2430,15,144,2,NULL),(2431,23,31,2,NULL),(2432,17,144,2,NULL),(2433,24,31,2,NULL),(2434,17,144,2,NULL),(2435,27,31,2,NULL),(2436,18,144,2,NULL),(2437,18,144,2,NULL),(2438,15,32,2,NULL),(2439,17,32,2,NULL),(2440,17,32,2,NULL),(2441,20,144,2,NULL),(2442,20,144,2,NULL),(2443,18,32,2,NULL),(2444,22,144,2,NULL),(2445,20,32,2,NULL),(2446,20,32,2,NULL),(2447,22,144,2,NULL),(2448,23,144,2,NULL),(2449,22,32,2,NULL),(2450,22,32,2,NULL),(2451,24,144,2,NULL),(2452,27,144,2,NULL),(2453,23,32,2,NULL),(2454,23,32,2,NULL),(2455,15,147,2,NULL),(2456,17,147,2,NULL),(2457,24,32,2,NULL),(2458,24,32,2,NULL),(2459,18,147,2,NULL),(2460,27,32,2,NULL),(2461,27,32,2,NULL),(2462,20,147,2,NULL),(2463,22,147,2,NULL),(2464,15,131,2,NULL),(2465,15,131,2,NULL),(2466,23,147,2,NULL),(2467,24,147,2,NULL),(2468,17,131,2,NULL),(2469,17,131,2,NULL),(2470,27,147,2,NULL),(2471,15,151,2,NULL),(2472,18,131,2,NULL),(2473,18,131,2,NULL),(2474,17,151,2,NULL),(2475,18,151,2,NULL),(2476,20,131,2,NULL),(2477,20,131,2,NULL),(2478,20,151,2,NULL),(2479,22,151,2,NULL),(2480,22,131,2,NULL),(2481,22,131,2,NULL),(2482,23,151,2,NULL),(2483,24,151,2,NULL),(2484,23,131,2,NULL),(2485,23,131,2,NULL),(2486,27,151,2,NULL),(2487,15,154,2,NULL),(2488,24,131,2,NULL),(2489,24,131,2,NULL),(2490,17,154,2,NULL),(2491,18,154,2,NULL),(2492,27,131,2,NULL),(2493,27,131,2,NULL),(2494,20,154,2,NULL),(2495,22,154,2,NULL),(2496,15,138,2,NULL),(2497,15,138,2,NULL),(2498,23,154,2,NULL),(2499,24,154,2,NULL),(2500,17,138,2,NULL),(2501,17,138,2,NULL),(2502,27,154,2,NULL),(2503,15,157,2,NULL),(2504,18,138,2,NULL),(2505,18,138,2,NULL),(2506,17,157,2,NULL),(2507,18,157,2,NULL),(2508,20,138,2,NULL),(2509,20,138,2,NULL),(2510,20,157,2,NULL),(2511,22,157,2,NULL),(2512,22,138,2,NULL),(2513,22,138,2,NULL),(2514,23,157,2,NULL),(2515,24,157,2,NULL),(2516,23,138,2,NULL),(2517,23,138,2,NULL),(2518,27,157,2,NULL),(2519,15,160,2,NULL),(2520,24,138,2,NULL),(2521,24,138,2,NULL),(2522,17,160,2,NULL),(2523,18,160,2,NULL),(2524,27,138,2,NULL),(2525,27,138,2,NULL),(2526,20,160,2,NULL),(2527,22,160,2,NULL),(2528,15,148,2,NULL),(2529,15,148,2,NULL),(2530,23,160,2,NULL),(2531,24,160,2,NULL),(2532,17,148,2,NULL),(2533,17,148,2,NULL),(2534,27,160,2,NULL),(2535,15,163,2,NULL),(2536,18,148,2,NULL),(2537,18,148,2,NULL),(2538,17,163,2,NULL),(2539,18,163,2,NULL),(2540,20,148,2,NULL),(2541,20,148,2,NULL),(2542,20,163,2,NULL),(2543,22,163,2,NULL),(2544,22,148,2,NULL),(2545,22,148,2,NULL),(2546,23,163,2,NULL),(2547,24,163,2,NULL),(2548,23,148,2,NULL),(2549,23,148,2,NULL),(2550,27,163,2,NULL),(2551,15,166,2,NULL),(2552,24,148,2,NULL),(2553,24,148,2,NULL),(2554,17,166,2,NULL),(2555,18,166,2,NULL),(2556,27,148,2,NULL),(2557,27,148,2,NULL),(2558,20,166,2,NULL),(2559,20,166,2,NULL),(2560,15,190,2,NULL),(2561,15,190,2,NULL),(2562,22,166,2,NULL),(2563,22,166,2,NULL),(2564,17,190,2,NULL),(2565,17,190,2,NULL),(2566,23,166,2,NULL),(2567,23,166,2,NULL),(2568,18,190,2,NULL),(2569,18,190,2,NULL),(2570,24,166,2,NULL),(2571,24,166,2,NULL),(2572,20,190,2,NULL),(2573,20,190,2,NULL),(2574,27,166,2,NULL),(2575,27,166,2,NULL),(2576,22,190,2,NULL),(2577,22,190,2,NULL),(2578,15,169,2,NULL),(2579,15,169,2,NULL),(2580,23,190,2,NULL),(2581,23,190,2,NULL),(2582,17,169,2,NULL),(2583,17,169,2,NULL),(2584,24,190,2,NULL),(2585,24,190,2,NULL),(2586,18,169,2,NULL),(2587,18,169,2,NULL),(2588,27,190,2,NULL),(2589,27,190,2,NULL),(2590,20,169,2,NULL),(2591,20,169,2,NULL),(2592,15,204,2,NULL),(2593,15,204,2,NULL),(2594,22,169,2,NULL),(2595,22,169,2,NULL),(2596,17,204,2,NULL),(2597,17,204,2,NULL),(2598,23,169,2,NULL),(2599,23,169,2,NULL),(2600,18,204,2,NULL),(2601,18,204,2,NULL),(2602,24,169,2,NULL),(2603,24,169,2,NULL),(2604,20,204,2,NULL),(2605,20,204,2,NULL),(2606,27,169,2,NULL),(2607,27,169,2,NULL),(2608,22,204,2,NULL),(2609,22,204,2,NULL),(2610,15,172,2,NULL),(2611,15,172,2,NULL),(2612,23,204,2,NULL),(2613,23,204,2,NULL),(2614,17,172,2,NULL),(2615,24,204,2,NULL),(2616,24,204,2,NULL),(2617,18,172,2,NULL),(2618,20,172,2,NULL),(2619,27,204,2,NULL),(2620,27,204,2,NULL),(2621,22,172,2,NULL),(2622,23,172,2,NULL),(2623,15,207,2,NULL),(2624,15,207,2,NULL),(2625,24,172,2,NULL),(2626,27,172,2,NULL),(2627,17,207,2,NULL),(2628,17,207,2,NULL),(2629,15,175,2,NULL),(2630,17,175,2,NULL),(2631,18,207,2,NULL),(2632,18,207,2,NULL),(2633,18,175,2,NULL),(2634,20,207,2,NULL),(2635,20,207,2,NULL),(2636,20,175,2,NULL),(2637,22,175,2,NULL),(2638,22,207,2,NULL),(2639,22,207,2,NULL),(2640,23,175,2,NULL),(2641,24,175,2,NULL),(2642,23,207,2,NULL),(2643,23,207,2,NULL),(2644,27,175,2,NULL),(2645,15,178,2,NULL),(2646,24,207,2,NULL),(2647,24,207,2,NULL),(2648,17,178,2,NULL),(2649,18,178,2,NULL),(2650,27,207,2,NULL),(2651,27,207,2,NULL),(2652,20,178,2,NULL),(2653,22,178,2,NULL),(2654,15,211,2,NULL),(2655,15,211,2,NULL),(2656,23,178,2,NULL),(2657,24,178,2,NULL),(2658,17,211,2,NULL),(2659,17,211,2,NULL),(2660,27,178,2,NULL),(2661,15,181,2,NULL),(2662,18,211,2,NULL),(2663,18,211,2,NULL),(2664,17,181,2,NULL),(2665,18,181,2,NULL),(2666,20,211,2,NULL),(2667,20,211,2,NULL),(2668,20,181,2,NULL),(2669,22,181,2,NULL),(2670,22,211,2,NULL),(2671,22,211,2,NULL),(2672,23,181,2,NULL),(2673,24,181,2,NULL),(2674,23,211,2,NULL),(2675,23,211,2,NULL),(2676,27,181,2,NULL),(2677,27,181,2,NULL),(2678,24,211,2,NULL),(2679,24,211,2,NULL),(2680,15,184,2,NULL),(2681,15,184,2,NULL),(2682,27,211,2,NULL),(2683,27,211,2,NULL),(2684,17,184,2,NULL),(2685,15,213,2,NULL),(2686,15,213,2,NULL),(2687,18,184,2,NULL),(2688,20,184,2,NULL),(2689,17,213,2,NULL),(2690,17,213,2,NULL),(2691,22,184,2,NULL),(2692,23,184,2,NULL),(2693,18,213,2,NULL),(2694,18,213,2,NULL),(2695,24,184,2,NULL),(2696,27,184,2,NULL),(2697,20,213,2,NULL),(2698,20,213,2,NULL),(2699,15,187,2,NULL),(2700,17,187,2,NULL),(2701,22,213,2,NULL),(2702,18,187,2,NULL),(2703,23,213,2,NULL),(2704,20,187,2,NULL),(2705,22,187,2,NULL),(2706,24,213,2,NULL),(2707,23,187,2,NULL),(2708,27,213,2,NULL),(2709,24,187,2,NULL),(2710,15,220,2,NULL),(2711,27,187,2,NULL),(2712,17,220,2,NULL),(2713,18,220,2,NULL),(2714,15,191,2,NULL),(2715,20,220,2,NULL),(2716,17,191,2,NULL),(2717,22,220,2,NULL),(2718,18,191,2,NULL),(2719,20,191,2,NULL),(2720,23,220,2,NULL),(2721,24,220,2,NULL),(2722,22,191,2,NULL),(2723,23,191,2,NULL),(2724,27,220,2,NULL),(2725,24,191,2,NULL),(2726,27,191,2,NULL),(2727,15,197,2,NULL),(2728,15,197,2,NULL),(2729,17,197,2,NULL),(2730,18,197,2,NULL),(2731,20,197,2,NULL),(2732,22,197,2,NULL),(2733,23,197,2,NULL),(2734,24,197,2,NULL),(2735,27,197,2,NULL),(2736,15,200,2,NULL),(2737,17,200,2,NULL),(2738,18,200,2,NULL),(2739,20,200,2,NULL),(2740,22,200,2,NULL),(2741,22,200,2,NULL),(2742,23,200,2,NULL),(2743,24,200,2,NULL),(2744,24,200,2,NULL),(2745,27,200,2,NULL),(2746,15,203,2,NULL),(2747,17,203,2,NULL),(2748,17,203,2,NULL),(2749,18,203,2,NULL),(2750,20,203,2,NULL),(2751,22,203,2,NULL),(2752,22,203,2,NULL),(2753,23,203,2,NULL),(2754,23,203,2,NULL),(2755,24,203,2,NULL),(2756,24,203,2,NULL),(2757,27,203,2,NULL),(2758,27,203,2,NULL),(2759,15,206,2,NULL),(2760,15,206,2,NULL),(2761,17,206,2,NULL),(2762,17,206,2,NULL),(2763,17,206,2,NULL),(2764,18,206,2,NULL),(2765,20,206,2,NULL),(2766,22,206,2,NULL),(2767,23,206,2,NULL),(2768,23,206,2,NULL),(2769,24,206,2,NULL),(2770,27,206,2,NULL),(2771,27,206,2,NULL),(2772,27,206,2,NULL),(2773,15,208,2,NULL),(2774,17,208,2,NULL),(2775,18,208,2,NULL),(2776,18,208,2,NULL),(2777,18,208,2,NULL),(2778,20,208,2,NULL),(2779,22,208,2,NULL),(2780,22,208,2,NULL),(2781,23,208,2,NULL),(2782,24,208,2,NULL),(2783,27,208,2,NULL),(2784,27,208,2,NULL),(2785,27,208,2,NULL),(2786,15,209,2,NULL),(2787,17,209,2,NULL),(2788,18,209,2,NULL),(2789,18,209,2,NULL),(2790,18,209,2,NULL),(2791,20,209,2,NULL),(2792,22,209,2,NULL),(2793,22,209,2,NULL),(2794,22,209,2,NULL),(2795,23,209,2,NULL),(2796,24,209,2,NULL),(2797,24,209,2,NULL),(2798,24,209,2,NULL),(2799,27,209,2,NULL),(2800,15,212,2,NULL),(2801,17,212,2,NULL),(2802,17,212,2,NULL),(2803,17,212,2,NULL),(2804,18,212,2,NULL),(2805,20,212,2,NULL),(2806,20,212,2,NULL),(2807,22,212,2,NULL),(2808,23,212,2,NULL),(2809,24,212,2,NULL),(2810,24,212,2,NULL),(2811,24,212,2,NULL),(2812,27,212,2,NULL),(2813,15,214,2,NULL),(2814,17,214,2,NULL),(2815,17,214,2,NULL),(2816,18,214,2,NULL),(2817,20,214,2,NULL),(2818,22,214,2,NULL),(2819,22,214,2,NULL),(2820,23,214,2,NULL),(2821,24,214,2,NULL),(2822,27,214,2,NULL),(2823,27,214,2,NULL),(2824,27,214,2,NULL),(2825,15,218,2,NULL),(2826,17,218,2,NULL),(2827,18,218,2,NULL),(2828,18,218,2,NULL),(2829,20,218,2,NULL),(2830,22,218,2,NULL),(2831,22,218,2,NULL),(2832,22,218,2,NULL),(2833,23,218,2,NULL),(2834,24,218,2,NULL),(2835,24,218,2,NULL),(2836,24,218,2,NULL),(2837,27,218,2,NULL),(2838,15,221,2,NULL),(2839,17,221,2,NULL),(2840,17,221,2,NULL),(2841,18,221,2,NULL),(2842,20,221,2,NULL),(2843,22,221,2,NULL),(2844,23,221,2,NULL),(2845,23,221,2,NULL),(2846,24,221,2,NULL),(2847,27,221,2,NULL),(2848,27,221,2,NULL),(2849,27,221,2,NULL),(2850,15,223,2,NULL),(2851,17,223,2,NULL),(2852,18,223,2,NULL),(2853,18,223,2,NULL),(2854,18,223,2,NULL),(2855,20,223,2,NULL),(2856,22,223,2,NULL),(2857,22,223,2,NULL),(2858,22,223,2,NULL),(2859,23,223,2,NULL),(2860,24,223,2,NULL),(2861,24,223,2,NULL),(2862,24,223,2,NULL),(2863,27,223,2,NULL),(2864,15,225,2,NULL),(2865,17,225,2,NULL),(2866,17,225,2,NULL),(2867,18,225,2,NULL),(2868,20,225,2,NULL),(2869,22,225,2,NULL),(2870,22,225,2,NULL),(2871,22,225,2,NULL),(2872,23,225,2,NULL),(2873,24,225,2,NULL),(2874,24,225,2,NULL),(2875,24,225,2,NULL),(2876,27,225,2,NULL),(2877,15,226,2,NULL),(2878,17,226,2,NULL),(2879,17,226,2,NULL),(2880,17,226,2,NULL),(2881,18,226,2,NULL),(2882,20,226,2,NULL),(2883,20,226,2,NULL),(2884,20,226,2,NULL),(2885,22,226,2,NULL),(2886,23,226,2,NULL),(2887,23,226,2,NULL),(2888,23,226,2,NULL),(2889,24,226,2,NULL),(2890,27,226,2,NULL),(2891,27,226,2,NULL),(2892,27,226,2,NULL),(2893,15,227,2,NULL),(2894,17,227,2,NULL),(2895,17,227,2,NULL),(2896,18,227,2,NULL),(2897,18,227,2,NULL),(2898,20,227,2,NULL),(2899,22,227,2,NULL),(2900,22,227,2,NULL),(2901,22,227,2,NULL),(2902,23,227,2,NULL),(2903,24,227,2,NULL),(2904,24,227,2,NULL),(2905,24,227,2,NULL),(2906,27,227,2,NULL),(2907,15,229,2,NULL),(2908,17,229,2,NULL),(2909,17,229,2,NULL),(2910,18,229,2,NULL),(2911,18,229,2,NULL),(2912,18,229,2,NULL),(2913,18,229,2,NULL),(2914,20,229,2,NULL),(2915,22,229,2,NULL),(2916,22,229,2,NULL),(2917,23,229,2,NULL),(2918,24,229,2,NULL),(2919,24,229,2,NULL),(2920,24,229,2,NULL),(2921,24,229,2,NULL),(2922,27,229,2,NULL),(2923,15,230,2,NULL),(2924,17,230,2,NULL),(2925,17,230,2,NULL),(2926,18,230,2,NULL),(2927,20,230,2,NULL),(2928,20,230,2,NULL),(2929,20,230,2,NULL),(2930,22,230,2,NULL),(2931,23,230,2,NULL),(2932,23,230,2,NULL),(2933,23,230,2,NULL),(2934,24,230,2,NULL),(2935,27,230,2,NULL),(2936,27,230,2,NULL),(2937,27,230,2,NULL),(2938,15,231,2,NULL),(2939,17,231,2,NULL),(2940,18,231,2,NULL),(2941,18,231,2,NULL),(2942,20,231,2,NULL),(2943,22,231,2,NULL),(2944,22,231,2,NULL),(2945,22,231,2,NULL),(2946,23,231,2,NULL),(2947,24,231,2,NULL),(2948,24,231,2,NULL),(2949,24,231,2,NULL),(2950,27,231,2,NULL),(2951,15,33,2,NULL),(2952,17,33,2,NULL),(2953,17,33,2,NULL),(2954,17,33,2,NULL),(2955,18,33,2,NULL),(2956,20,33,2,NULL),(2957,20,33,2,NULL),(2958,20,33,2,NULL),(2959,22,33,2,NULL),(2960,23,33,2,NULL),(2961,23,33,2,NULL),(2962,23,33,2,NULL),(2963,24,33,2,NULL),(2964,27,33,2,NULL),(2965,27,33,2,NULL),(2966,27,33,2,NULL),(2967,15,34,2,NULL),(2968,17,34,2,NULL),(2969,18,34,2,NULL),(2970,18,34,2,NULL),(2971,18,34,2,NULL),(2972,20,34,2,NULL),(2973,22,34,2,NULL),(2974,22,34,2,NULL),(2975,22,34,2,NULL),(2976,23,34,2,NULL),(2977,24,34,2,NULL),(2978,24,34,2,NULL),(2979,24,34,2,NULL),(2980,27,34,2,NULL),(2981,15,35,2,NULL),(2982,17,35,2,NULL),(2983,18,35,2,NULL),(2984,18,35,2,NULL),(2985,20,35,2,NULL),(2986,22,35,2,NULL),(2987,23,35,2,NULL),(2988,24,35,2,NULL),(2989,24,35,2,NULL),(2990,27,35,2,NULL),(2991,15,36,2,NULL),(2992,17,36,2,NULL),(2993,18,36,2,NULL),(2994,18,36,2,NULL),(2995,20,36,2,NULL),(2996,22,36,2,NULL),(2997,22,36,2,NULL),(2998,22,36,2,NULL),(2999,23,36,2,NULL),(3000,24,36,2,NULL),(3001,24,36,2,NULL),(3002,24,36,2,NULL),(3003,27,36,2,NULL),(3004,15,37,2,NULL),(3005,17,37,2,NULL),(3006,17,37,2,NULL),(3007,17,37,2,NULL),(3008,18,37,2,NULL),(3009,20,37,2,NULL),(3010,20,37,2,NULL),(3011,22,37,2,NULL),(3012,23,37,2,NULL),(3013,24,37,2,NULL),(3014,24,37,2,NULL),(3015,27,37,2,NULL),(3016,15,38,2,NULL),(3017,17,38,2,NULL),(3018,18,38,2,NULL),(3019,18,38,2,NULL),(3020,20,38,2,NULL),(3021,22,38,2,NULL),(3022,22,38,2,NULL),(3023,23,38,2,NULL),(3024,24,38,2,NULL),(3025,27,38,2,NULL),(3026,27,38,2,NULL),(3027,27,38,2,NULL),(3028,15,41,2,NULL),(3029,17,41,2,NULL),(3030,18,41,2,NULL),(3031,18,41,2,NULL),(3032,20,41,2,NULL),(3033,22,41,2,NULL),(3034,22,41,2,NULL),(3035,22,41,2,NULL),(3036,23,41,2,NULL),(3037,24,41,2,NULL),(3038,24,41,2,NULL),(3039,24,41,2,NULL),(3040,27,41,2,NULL),(3041,15,43,2,NULL),(3042,17,43,2,NULL),(3043,18,43,2,NULL),(3044,18,43,2,NULL),(3045,20,43,2,NULL),(3046,22,43,2,NULL),(3047,23,43,2,NULL),(3048,23,43,2,NULL),(3049,23,43,2,NULL),(3050,24,43,2,NULL),(3051,27,43,2,NULL),(3052,27,43,2,NULL),(3053,27,43,2,NULL),(3054,15,45,2,NULL),(3055,17,45,2,NULL),(3056,18,45,2,NULL),(3057,20,45,2,NULL),(3058,20,45,2,NULL),(3059,22,45,2,NULL),(3060,23,45,2,NULL),(3061,23,45,2,NULL),(3062,23,45,2,NULL),(3063,24,45,2,NULL),(3064,27,45,2,NULL),(3065,27,45,2,NULL),(3066,27,45,2,NULL),(3067,15,47,2,NULL),(3068,17,47,2,NULL),(3069,18,47,2,NULL),(3070,18,47,2,NULL),(3071,20,47,2,NULL),(3072,22,47,2,NULL),(3073,23,47,2,NULL),(3074,23,47,2,NULL),(3075,23,47,2,NULL),(3076,24,47,2,NULL),(3077,27,47,2,NULL),(3078,27,47,2,NULL),(3079,27,47,2,NULL),(3080,15,50,2,NULL),(3081,17,50,2,NULL),(3082,18,50,2,NULL),(3083,20,50,2,NULL),(3084,20,50,2,NULL),(3085,22,50,2,NULL),(3086,23,50,2,NULL),(3087,23,50,2,NULL),(3088,24,50,2,NULL),(3089,24,50,2,NULL),(3090,27,50,2,NULL),(3091,27,50,2,NULL),(3092,15,52,2,NULL),(3093,17,52,2,NULL),(3094,17,52,2,NULL),(3095,18,52,2,NULL),(3096,18,52,2,NULL),(3097,20,52,2,NULL),(3098,20,52,2,NULL),(3099,22,52,2,NULL),(3100,22,52,2,NULL),(3101,23,52,2,NULL),(3102,23,52,2,NULL),(3103,24,52,2,NULL),(3104,24,52,2,NULL),(3105,27,52,2,NULL),(3106,27,52,2,NULL),(3107,15,54,2,NULL),(3108,17,54,2,NULL),(3109,18,54,2,NULL),(3110,20,54,2,NULL),(3111,22,54,2,NULL),(3112,23,54,2,NULL),(3113,24,54,2,NULL),(3114,27,54,2,NULL),(3115,15,57,2,NULL),(3116,17,57,2,NULL),(3117,18,57,2,NULL),(3118,20,57,2,NULL),(3119,20,57,2,NULL),(3120,22,57,2,NULL),(3121,23,57,2,NULL),(3122,24,57,2,NULL),(3123,24,57,2,NULL),(3124,27,57,2,NULL),(3125,27,57,2,NULL),(3126,15,59,2,NULL),(3127,17,59,2,NULL),(3128,17,59,2,NULL),(3129,18,59,2,NULL),(3130,18,59,2,NULL),(3131,20,59,2,NULL),(3132,20,59,2,NULL),(3133,22,59,2,NULL),(3134,22,59,2,NULL),(3135,23,59,2,NULL),(3136,23,59,2,NULL),(3137,24,59,2,NULL),(3138,24,59,2,NULL),(3139,27,59,2,NULL),(3140,27,59,2,NULL),(3141,15,62,2,NULL),(3142,17,62,2,NULL),(3143,18,62,2,NULL),(3144,20,62,2,NULL),(3145,20,62,2,NULL),(3146,22,62,2,NULL),(3147,22,62,2,NULL),(3148,23,62,2,NULL),(3149,23,62,2,NULL),(3150,24,62,2,NULL),(3151,24,62,2,NULL),(3152,27,62,2,NULL),(3153,27,62,2,NULL),(3154,15,63,2,NULL),(3155,17,63,2,NULL),(3156,18,63,2,NULL),(3157,20,63,2,NULL),(3158,20,63,2,NULL),(3159,22,63,2,NULL),(3160,22,63,2,NULL),(3161,23,63,2,NULL),(3162,23,63,2,NULL),(3163,24,63,2,NULL),(3164,24,63,2,NULL),(3165,27,63,2,NULL),(3166,27,63,2,NULL),(3167,15,66,2,NULL),(3168,17,66,2,NULL),(3169,18,66,2,NULL),(3170,20,66,2,NULL),(3171,20,66,2,NULL),(3172,22,66,2,NULL),(3173,22,66,2,NULL),(3174,23,66,2,NULL),(3175,23,66,2,NULL),(3176,24,66,2,NULL),(3177,24,66,2,NULL),(3178,27,66,2,NULL),(3179,27,66,2,NULL),(3180,15,69,2,NULL),(3181,17,69,2,NULL),(3182,18,69,2,NULL),(3183,20,69,2,NULL),(3184,20,69,2,NULL),(3185,22,69,2,NULL),(3186,22,69,2,NULL),(3187,23,69,2,NULL),(3188,23,69,2,NULL),(3189,24,69,2,NULL),(3190,24,69,2,NULL),(3191,27,69,2,NULL),(3192,27,69,2,NULL),(3193,15,72,2,NULL),(3194,17,72,2,NULL),(3195,17,72,2,NULL),(3196,18,72,2,NULL),(3197,20,72,2,NULL),(3198,22,72,2,NULL),(3199,22,72,2,NULL),(3200,22,72,2,NULL),(3201,23,72,2,NULL),(3202,24,72,2,NULL),(3203,24,72,2,NULL),(3204,24,72,2,NULL),(3205,27,72,2,NULL),(3206,15,73,2,NULL),(3207,17,73,2,NULL),(3208,17,73,2,NULL),(3209,17,73,2,NULL),(3210,18,73,2,NULL),(3211,20,73,2,NULL),(3212,20,73,2,NULL),(3213,22,73,2,NULL),(3214,23,73,2,NULL),(3215,24,73,2,NULL),(3216,24,73,2,NULL),(3217,24,73,2,NULL),(3218,27,73,2,NULL),(3219,15,76,2,NULL),(3220,17,76,2,NULL),(3221,17,76,2,NULL),(3222,18,76,2,NULL),(3223,20,76,2,NULL),(3224,22,76,2,NULL),(3225,22,76,2,NULL),(3226,22,76,2,NULL),(3227,23,76,2,NULL),(3228,24,76,2,NULL),(3229,24,76,2,NULL),(3230,24,76,2,NULL),(3231,27,76,2,NULL),(3232,15,75,2,NULL),(3233,17,75,2,NULL),(3234,17,75,2,NULL),(3235,17,75,2,NULL),(3236,18,75,2,NULL),(3237,20,75,2,NULL),(3238,20,75,2,NULL),(3239,22,75,2,NULL),(3240,23,75,2,NULL),(3241,24,75,2,NULL),(3242,24,75,2,NULL),(3243,24,75,2,NULL),(3244,27,75,2,NULL),(3245,15,80,2,NULL),(3246,17,80,2,NULL),(3247,17,80,2,NULL),(3248,17,80,2,NULL),(3249,18,80,2,NULL),(3250,20,80,2,NULL),(3251,20,80,2,NULL),(3252,20,80,2,NULL),(3253,22,80,2,NULL),(3254,23,80,2,NULL),(3255,23,80,2,NULL),(3256,24,80,2,NULL),(3257,27,80,2,NULL),(3258,27,80,2,NULL),(3259,15,79,2,NULL),(3260,17,79,2,NULL),(3261,18,79,2,NULL),(3262,20,79,2,NULL),(3263,20,79,2,NULL),(3264,22,79,2,NULL),(3265,23,79,2,NULL),(3266,24,79,2,NULL),(3267,24,79,2,NULL),(3268,27,79,2,NULL),(3269,27,79,2,NULL),(3270,15,82,2,NULL),(3271,17,82,2,NULL),(3272,18,82,2,NULL),(3273,20,82,2,NULL),(3274,20,82,2,NULL),(3275,22,82,2,NULL),(3276,22,82,2,NULL),(3277,23,82,2,NULL),(3278,23,82,2,NULL),(3279,24,82,2,NULL),(3280,24,82,2,NULL),(3281,27,82,2,NULL),(3282,27,82,2,NULL),(3283,15,83,2,NULL),(3284,17,83,2,NULL),(3285,17,83,2,NULL),(3286,18,83,2,NULL),(3287,18,83,2,NULL),(3288,20,83,2,NULL),(3289,20,83,2,NULL),(3290,22,83,2,NULL),(3291,22,83,2,NULL),(3292,23,83,2,NULL),(3293,23,83,2,NULL),(3294,24,83,2,NULL),(3295,24,83,2,NULL),(3296,27,83,2,NULL),(3297,27,83,2,NULL),(3298,15,84,2,NULL),(3299,17,84,2,NULL),(3300,18,84,2,NULL),(3301,20,84,2,NULL),(3302,22,84,2,NULL),(3303,22,84,2,NULL),(3304,23,84,2,NULL),(3305,24,84,2,NULL),(3306,24,84,2,NULL),(3307,27,84,2,NULL),(3308,15,86,2,NULL),(3309,17,86,2,NULL),(3310,18,86,2,NULL),(3311,18,86,2,NULL),(3312,20,86,2,NULL),(3313,22,86,2,NULL),(3314,22,86,2,NULL),(3315,22,86,2,NULL),(3316,23,86,2,NULL),(3317,24,86,2,NULL),(3318,24,86,2,NULL),(3319,24,86,2,NULL),(3320,27,86,2,NULL),(3321,15,87,2,NULL),(3322,17,87,2,NULL),(3323,17,87,2,NULL),(3324,17,87,2,NULL),(3325,18,87,2,NULL),(3326,20,87,2,NULL),(3327,20,87,2,NULL),(3328,20,87,2,NULL),(3329,22,87,2,NULL),(3330,23,87,2,NULL),(3331,23,87,2,NULL),(3332,23,87,2,NULL),(3333,24,87,2,NULL),(3334,27,87,2,NULL),(3335,27,87,2,NULL),(3336,27,87,2,NULL),(3337,15,89,2,NULL),(3338,17,89,2,NULL),(3339,18,89,2,NULL),(3340,18,89,2,NULL),(3341,18,89,2,NULL),(3342,20,89,2,NULL),(3343,22,89,2,NULL),(3344,22,89,2,NULL),(3345,22,89,2,NULL),(3346,23,89,2,NULL),(3347,24,89,2,NULL),(3348,24,89,2,NULL),(3349,24,89,2,NULL),(3350,27,89,2,NULL),(3351,15,90,2,NULL),(3352,17,90,2,NULL),(3353,17,90,2,NULL),(3354,18,90,2,NULL),(3355,20,90,2,NULL),(3356,20,90,2,NULL),(3357,20,90,2,NULL),(3358,22,90,2,NULL),(3359,23,90,2,NULL),(3360,23,90,2,NULL),(3361,23,90,2,NULL),(3362,24,90,2,NULL),(3363,27,90,2,NULL),(3364,27,90,2,NULL),(3365,27,90,2,NULL),(3366,15,93,2,NULL),(3367,17,93,2,NULL),(3368,18,93,2,NULL),(3369,18,93,2,NULL),(3370,18,93,2,NULL),(3371,20,93,2,NULL),(3372,22,93,2,NULL),(3373,22,93,2,NULL),(3374,22,93,2,NULL),(3375,23,93,2,NULL),(3376,24,93,2,NULL),(3377,24,93,2,NULL),(3378,24,93,2,NULL),(3379,24,93,2,NULL),(3380,27,93,2,NULL),(3381,15,92,2,NULL),(3382,15,92,2,NULL),(3383,17,92,2,NULL),(3384,17,92,2,NULL),(3385,18,92,2,NULL),(3386,20,92,2,NULL),(3387,20,92,2,NULL),(3388,20,92,2,NULL),(3389,20,92,2,NULL),(3390,22,92,2,NULL),(3391,23,92,2,NULL),(3392,23,92,2,NULL),(3393,23,92,2,NULL),(3394,24,92,2,NULL),(3395,27,92,2,NULL),(3396,27,92,2,NULL),(3397,27,92,2,NULL),(3398,15,96,2,NULL),(3399,15,96,2,NULL),(3400,17,96,2,NULL),(3401,18,96,2,NULL),(3402,20,96,2,NULL),(3403,22,96,2,NULL),(3404,22,96,2,NULL),(3405,23,96,2,NULL),(3406,23,96,2,NULL),(3407,24,96,2,NULL),(3408,24,96,2,NULL),(3409,27,96,2,NULL),(3410,27,96,2,NULL),(3411,15,95,2,NULL),(3412,15,95,2,NULL),(3413,17,95,2,NULL),(3414,17,95,2,NULL),(3415,18,95,2,NULL),(3416,18,95,2,NULL),(3417,20,95,2,NULL),(3418,22,95,2,NULL),(3419,22,95,2,NULL),(3420,22,95,2,NULL),(3421,23,95,2,NULL),(3422,24,95,2,NULL),(3423,24,95,2,NULL),(3424,24,95,2,NULL),(3425,27,95,2,NULL),(3426,15,99,2,NULL),(3427,17,99,2,NULL),(3428,17,99,2,NULL),(3429,18,99,2,NULL),(3430,20,99,2,NULL),(3431,20,99,2,NULL),(3432,20,99,2,NULL),(3433,22,99,2,NULL),(3434,23,99,2,NULL),(3435,23,99,2,NULL),(3436,23,99,2,NULL),(3437,24,99,2,NULL),(3438,27,99,2,NULL),(3439,27,99,2,NULL),(3440,27,99,2,NULL),(3441,15,98,2,NULL),(3442,17,98,2,NULL),(3443,18,98,2,NULL),(3444,18,98,2,NULL),(3445,20,98,2,NULL),(3446,22,98,2,NULL),(3447,22,98,2,NULL),(3448,22,98,2,NULL),(3449,23,98,2,NULL),(3450,24,98,2,NULL),(3451,24,98,2,NULL),(3452,24,98,2,NULL),(3453,27,98,2,NULL),(3454,15,102,2,NULL),(3455,17,102,2,NULL),(3456,17,102,2,NULL),(3457,17,102,2,NULL),(3458,18,102,2,NULL),(3459,20,102,2,NULL),(3460,20,102,2,NULL),(3461,20,102,2,NULL),(3462,22,102,2,NULL),(3463,23,102,2,NULL),(3464,23,102,2,NULL),(3465,23,102,2,NULL),(3466,24,102,2,NULL),(3467,27,102,2,NULL),(3468,27,102,2,NULL),(3469,27,102,2,NULL),(3470,15,101,2,NULL),(3471,17,101,2,NULL),(3472,18,101,2,NULL),(3473,18,101,2,NULL),(3474,18,101,2,NULL),(3475,20,101,2,NULL),(3476,22,101,2,NULL),(3477,22,101,2,NULL),(3478,22,101,2,NULL),(3479,23,101,2,NULL),(3480,24,101,2,NULL),(3481,24,101,2,NULL),(3482,24,101,2,NULL),(3483,27,101,2,NULL),(3484,15,105,2,NULL),(3485,17,105,2,NULL),(3486,17,105,2,NULL),(3487,17,105,2,NULL),(3488,18,105,2,NULL),(3489,20,105,2,NULL),(3490,20,105,2,NULL),(3491,20,105,2,NULL),(3492,22,105,2,NULL),(3493,23,105,2,NULL),(3494,23,105,2,NULL),(3495,23,105,2,NULL),(3496,24,105,2,NULL),(3497,27,105,2,NULL),(3498,27,105,2,NULL),(3499,15,106,2,NULL),(3500,15,106,2,NULL),(3501,17,106,2,NULL),(3502,18,106,2,NULL),(3503,18,106,2,NULL),(3504,18,106,2,NULL),(3505,20,106,2,NULL),(3506,22,106,2,NULL),(3507,22,106,2,NULL),(3508,22,106,2,NULL),(3509,23,106,2,NULL),(3510,24,106,2,NULL),(3511,24,106,2,NULL),(3512,24,106,2,NULL),(3513,27,106,2,NULL),(3514,15,109,2,NULL),(3515,17,109,2,NULL),(3516,17,109,2,NULL),(3517,18,109,2,NULL),(3518,20,109,2,NULL),(3519,20,109,2,NULL),(3520,22,109,2,NULL),(3521,23,109,2,NULL),(3522,23,109,2,NULL),(3523,23,109,2,NULL),(3524,24,109,2,NULL),(3525,27,109,2,NULL),(3526,27,109,2,NULL),(3527,27,109,2,NULL),(3528,15,110,2,NULL),(3529,17,110,2,NULL),(3530,18,110,2,NULL),(3531,18,110,2,NULL),(3532,18,110,2,NULL),(3533,20,110,2,NULL),(3534,22,110,2,NULL),(3535,22,110,2,NULL),(3536,22,110,2,NULL),(3537,23,110,2,NULL),(3538,24,110,2,NULL),(3539,24,110,2,NULL),(3540,24,110,2,NULL),(3541,27,110,2,NULL),(3542,15,113,2,NULL),(3543,17,113,2,NULL),(3544,17,113,2,NULL),(3545,17,113,2,NULL),(3546,18,113,2,NULL),(3547,20,113,2,NULL),(3548,20,113,2,NULL),(3549,20,113,2,NULL),(3550,22,113,2,NULL),(3551,23,113,2,NULL),(3552,23,113,2,NULL),(3553,23,113,2,NULL),(3554,24,113,2,NULL),(3555,27,113,2,NULL),(3556,27,113,2,NULL),(3557,27,113,2,NULL),(3558,15,114,2,NULL),(3559,17,114,2,NULL),(3560,18,114,2,NULL),(3561,18,114,2,NULL),(3562,18,114,2,NULL),(3563,20,114,2,NULL),(3564,22,114,2,NULL),(3565,22,114,2,NULL),(3566,22,114,2,NULL),(3567,23,114,2,NULL),(3568,24,114,2,NULL),(3569,24,114,2,NULL),(3570,24,114,2,NULL),(3571,27,114,2,NULL),(3572,15,117,2,NULL),(3573,17,117,2,NULL),(3574,17,117,2,NULL),(3575,18,117,2,NULL),(3576,20,117,2,NULL),(3577,22,117,2,NULL),(3578,22,117,2,NULL),(3579,22,117,2,NULL),(3580,23,117,2,NULL),(3581,24,117,2,NULL),(3582,24,117,2,NULL),(3583,24,117,2,NULL),(3584,27,117,2,NULL),(3585,15,118,2,NULL),(3586,17,118,2,NULL),(3587,17,118,2,NULL),(3588,17,118,2,NULL),(3589,18,118,2,NULL),(3590,20,118,2,NULL),(3591,20,118,2,NULL),(3592,20,118,2,NULL),(3593,22,118,2,NULL),(3594,23,118,2,NULL),(3595,23,118,2,NULL),(3596,23,118,2,NULL),(3597,24,118,2,NULL),(3598,27,118,2,NULL),(3599,27,118,2,NULL),(3600,27,118,2,NULL),(3601,15,122,2,NULL),(3602,17,122,2,NULL),(3603,17,122,2,NULL),(3604,18,122,2,NULL),(3605,20,122,2,NULL),(3606,20,122,2,NULL),(3607,22,122,2,NULL),(3608,23,122,2,NULL),(3609,24,122,2,NULL),(3610,24,122,2,NULL),(3611,27,122,2,NULL),(3612,15,121,2,NULL),(3613,17,121,2,NULL),(3614,18,121,2,NULL),(3615,18,121,2,NULL),(3616,18,121,2,NULL),(3617,20,121,2,NULL),(3618,22,121,2,NULL),(3619,22,121,2,NULL),(3620,22,121,2,NULL),(3621,23,121,2,NULL),(3622,24,121,2,NULL),(3623,24,121,2,NULL),(3624,24,121,2,NULL),(3625,27,121,2,NULL),(3626,15,126,2,NULL),(3627,17,126,2,NULL),(3628,17,126,2,NULL),(3629,17,126,2,NULL),(3630,18,126,2,NULL),(3631,20,126,2,NULL),(3632,20,126,2,NULL),(3633,20,126,2,NULL),(3634,22,126,2,NULL),(3635,23,126,2,NULL),(3636,23,126,2,NULL),(3637,23,126,2,NULL),(3638,24,126,2,NULL),(3639,27,126,2,NULL),(3640,27,126,2,NULL),(3641,27,126,2,NULL),(3642,15,125,2,NULL),(3643,17,125,2,NULL),(3644,18,125,2,NULL),(3645,18,125,2,NULL),(3646,20,125,2,NULL),(3647,22,125,2,NULL),(3648,23,125,2,NULL),(3649,24,125,2,NULL),(3650,24,125,2,NULL),(3651,27,125,2,NULL),(3652,15,130,2,NULL),(3653,17,130,2,NULL),(3654,17,130,2,NULL),(3655,17,130,2,NULL),(3656,18,130,2,NULL),(3657,20,130,2,NULL),(3658,20,130,2,NULL),(3659,20,130,2,NULL),(3660,22,130,2,NULL),(3661,23,130,2,NULL),(3662,23,130,2,NULL),(3663,23,130,2,NULL),(3664,24,130,2,NULL),(3665,27,130,2,NULL),(3666,27,130,2,NULL),(3667,27,130,2,NULL),(3668,15,129,2,NULL),(3669,17,129,2,NULL),(3670,18,129,2,NULL),(3671,18,129,2,NULL),(3672,18,129,2,NULL),(3673,20,129,2,NULL),(3674,22,129,2,NULL),(3675,22,129,2,NULL),(3676,22,129,2,NULL),(3677,23,129,2,NULL),(3678,24,129,2,NULL),(3679,24,129,2,NULL),(3680,24,129,2,NULL),(3681,27,129,2,NULL),(3682,15,134,2,NULL),(3683,17,134,2,NULL),(3684,17,134,2,NULL),(3685,17,134,2,NULL),(3686,18,134,2,NULL),(3687,20,134,2,NULL),(3688,20,134,2,NULL),(3689,20,134,2,NULL),(3690,22,134,2,NULL),(3691,23,134,2,NULL),(3692,23,134,2,NULL),(3693,23,134,2,NULL),(3694,24,134,2,NULL),(3695,27,134,2,NULL),(3696,27,134,2,NULL),(3697,27,134,2,NULL),(3698,15,135,2,NULL),(3699,17,135,2,NULL),(3700,18,135,2,NULL),(3701,18,135,2,NULL),(3702,18,135,2,NULL),(3703,20,135,2,NULL),(3704,22,135,2,NULL),(3705,22,135,2,NULL),(3706,22,135,2,NULL),(3707,23,135,2,NULL),(3708,24,135,2,NULL),(3709,24,135,2,NULL),(3710,24,135,2,NULL),(3711,27,135,2,NULL),(3712,15,139,2,NULL),(3713,17,139,2,NULL),(3714,17,139,2,NULL),(3715,17,139,2,NULL),(3716,18,139,2,NULL),(3717,20,139,2,NULL),(3718,20,139,2,NULL),(3719,20,139,2,NULL),(3720,22,139,2,NULL),(3721,23,139,2,NULL),(3722,23,139,2,NULL),(3723,23,139,2,NULL),(3724,24,139,2,NULL),(3725,27,139,2,NULL),(3726,27,139,2,NULL),(3727,27,139,2,NULL),(3728,15,140,2,NULL),(3729,17,140,2,NULL),(3730,18,140,2,NULL),(3731,18,140,2,NULL),(3732,18,140,2,NULL),(3733,20,140,2,NULL),(3734,22,140,2,NULL),(3735,22,140,2,NULL),(3736,22,140,2,NULL),(3737,23,140,2,NULL),(3738,24,140,2,NULL),(3739,24,140,2,NULL),(3740,24,140,2,NULL),(3741,27,140,2,NULL),(3742,15,143,2,NULL),(3743,17,143,2,NULL),(3744,17,143,2,NULL),(3745,17,143,2,NULL),(3746,18,143,2,NULL),(3747,20,143,2,NULL),(3748,20,143,2,NULL),(3749,20,143,2,NULL),(3750,22,143,2,NULL),(3751,23,143,2,NULL),(3752,23,143,2,NULL),(3753,23,143,2,NULL),(3754,24,143,2,NULL),(3755,27,143,2,NULL),(3756,27,143,2,NULL),(3757,27,143,2,NULL),(3758,15,142,2,NULL),(3759,17,142,2,NULL),(3760,18,142,2,NULL),(3761,18,142,2,NULL),(3762,20,142,2,NULL),(3763,22,142,2,NULL),(3764,22,142,2,NULL),(3765,22,142,2,NULL),(3766,23,142,2,NULL),(3767,24,142,2,NULL),(3768,24,142,2,NULL),(3769,24,142,2,NULL),(3770,27,142,2,NULL),(3771,15,145,2,NULL),(3772,17,145,2,NULL),(3773,17,145,2,NULL),(3774,17,145,2,NULL),(3775,18,145,2,NULL),(3776,20,145,2,NULL),(3777,20,145,2,NULL),(3778,20,145,2,NULL),(3779,22,145,2,NULL),(3780,23,145,2,NULL),(3781,23,145,2,NULL),(3782,23,145,2,NULL),(3783,24,145,2,NULL),(3784,27,145,2,NULL),(3785,27,145,2,NULL),(3786,15,146,2,NULL),(3787,15,146,2,NULL),(3788,17,146,2,NULL),(3789,18,146,2,NULL),(3790,18,146,2,NULL),(3791,20,146,2,NULL),(3792,22,146,2,NULL),(3793,23,146,2,NULL),(3794,23,146,2,NULL),(3795,23,146,2,NULL),(3796,24,146,2,NULL),(3797,27,146,2,NULL),(3798,27,146,2,NULL),(3799,27,146,2,NULL),(3800,15,149,2,NULL),(3801,17,149,2,NULL),(3802,18,149,2,NULL),(3803,18,149,2,NULL),(3804,18,149,2,NULL),(3805,20,149,2,NULL),(3806,22,149,2,NULL),(3807,22,149,2,NULL),(3808,22,149,2,NULL),(3809,23,149,2,NULL),(3810,24,149,2,NULL),(3811,24,149,2,NULL),(3812,24,149,2,NULL),(3813,27,149,2,NULL),(3814,15,150,2,NULL),(3815,17,150,2,NULL),(3816,17,150,2,NULL),(3817,17,150,2,NULL),(3818,18,150,2,NULL),(3819,20,150,2,NULL),(3820,20,150,2,NULL),(3821,20,150,2,NULL),(3822,22,150,2,NULL),(3823,23,150,2,NULL),(3824,23,150,2,NULL),(3825,23,150,2,NULL),(3826,24,150,2,NULL),(3827,27,150,2,NULL),(3828,27,150,2,NULL),(3829,27,150,2,NULL),(3830,15,152,2,NULL),(3831,17,152,2,NULL),(3832,18,152,2,NULL),(3833,18,152,2,NULL),(3834,18,152,2,NULL),(3835,20,152,2,NULL),(3836,22,152,2,NULL),(3837,22,152,2,NULL),(3838,22,152,2,NULL),(3839,23,152,2,NULL),(3840,24,152,2,NULL),(3841,24,152,2,NULL),(3842,24,152,2,NULL),(3843,27,152,2,NULL),(3844,15,153,2,NULL),(3845,17,153,2,NULL),(3846,17,153,2,NULL),(3847,17,153,2,NULL),(3848,18,153,2,NULL),(3849,20,153,2,NULL),(3850,20,153,2,NULL),(3851,20,153,2,NULL),(3852,22,153,2,NULL),(3853,23,153,2,NULL),(3854,23,153,2,NULL),(3855,23,153,2,NULL),(3856,24,153,2,NULL),(3857,27,153,2,NULL),(3858,27,153,2,NULL),(3859,27,153,2,NULL),(3860,15,155,2,NULL),(3861,17,155,2,NULL),(3862,18,155,2,NULL),(3863,18,155,2,NULL),(3864,20,155,2,NULL),(3865,22,155,2,NULL),(3866,22,155,2,NULL),(3867,22,155,2,NULL),(3868,23,155,2,NULL),(3869,24,155,2,NULL),(3870,24,155,2,NULL),(3871,24,155,2,NULL),(3872,27,155,2,NULL),(3873,15,156,2,NULL),(3874,17,156,2,NULL),(3875,17,156,2,NULL),(3876,18,156,2,NULL),(3877,20,156,2,NULL),(3878,22,156,2,NULL),(3879,22,156,2,NULL),(3880,22,156,2,NULL),(3881,23,156,2,NULL),(3882,24,156,2,NULL),(3883,24,156,2,NULL),(3884,24,156,2,NULL),(3885,27,156,2,NULL),(3886,15,158,2,NULL),(3887,17,158,2,NULL),(3888,17,158,2,NULL),(3889,17,158,2,NULL),(3890,18,158,2,NULL),(3891,20,158,2,NULL),(3892,20,158,2,NULL),(3893,20,158,2,NULL),(3894,22,158,2,NULL),(3895,23,158,2,NULL),(3896,23,158,2,NULL),(3897,23,158,2,NULL),(3898,24,158,2,NULL),(3899,27,158,2,NULL),(3900,27,158,2,NULL),(3901,27,158,2,NULL),(3902,27,158,2,NULL),(3903,15,159,2,NULL),(3904,17,159,2,NULL),(3905,18,159,2,NULL),(3906,18,159,2,NULL),(3907,20,159,2,NULL),(3908,22,159,2,NULL),(3909,22,159,2,NULL),(3910,22,159,2,NULL),(3911,22,159,2,NULL),(3912,23,159,2,NULL),(3913,24,159,2,NULL),(3914,24,159,2,NULL),(3915,24,159,2,NULL),(3916,27,159,2,NULL),(3917,27,159,2,NULL),(3918,27,159,2,NULL),(3919,27,159,2,NULL),(3920,15,161,2,NULL),(3921,15,161,2,NULL),(3922,15,161,2,NULL),(3923,17,161,2,NULL),(3924,18,161,2,NULL),(3925,20,161,2,NULL),(3926,20,161,2,NULL),(3927,20,161,2,NULL),(3928,22,161,2,NULL),(3929,23,161,2,NULL),(3930,23,161,2,NULL),(3931,23,161,2,NULL),(3932,24,161,2,NULL),(3933,27,161,2,NULL),(3934,27,161,2,NULL),(3935,27,161,2,NULL),(3936,15,162,2,NULL),(3937,17,162,2,NULL),(3938,18,162,2,NULL),(3939,18,162,2,NULL),(3940,18,162,2,NULL),(3941,20,162,2,NULL),(3942,22,162,2,NULL),(3943,22,162,2,NULL),(3944,22,162,2,NULL),(3945,23,162,2,NULL),(3946,24,162,2,NULL),(3947,24,162,2,NULL),(3948,24,162,2,NULL),(3949,27,162,2,NULL),(3950,15,167,2,NULL),(3951,17,167,2,NULL),(3952,17,167,2,NULL),(3953,17,167,2,NULL),(3954,18,167,2,NULL),(3955,20,167,2,NULL),(3956,20,167,2,NULL),(3957,20,167,2,NULL),(3958,22,167,2,NULL),(3959,23,167,2,NULL),(3960,23,167,2,NULL),(3961,23,167,2,NULL),(3962,24,167,2,NULL),(3963,27,167,2,NULL),(3964,27,167,2,NULL),(3965,27,167,2,NULL),(3966,15,168,2,NULL),(3967,17,168,2,NULL),(3968,18,168,2,NULL),(3969,18,168,2,NULL),(3970,20,168,2,NULL),(3971,22,168,2,NULL),(3972,22,168,2,NULL),(3973,22,168,2,NULL),(3974,23,168,2,NULL),(3975,24,168,2,NULL),(3976,24,168,2,NULL),(3977,24,168,2,NULL),(3978,27,168,2,NULL),(3979,15,170,2,NULL),(3980,17,170,2,NULL),(3981,18,170,2,NULL),(3982,18,170,2,NULL),(3983,20,170,2,NULL),(3984,22,170,2,NULL),(3985,22,170,2,NULL),(3986,22,170,2,NULL),(3987,23,170,2,NULL),(3988,24,170,2,NULL),(3989,24,170,2,NULL),(3990,24,170,2,NULL),(3991,27,170,2,NULL),(3992,15,171,2,NULL),(3993,17,171,2,NULL),(3994,17,171,2,NULL),(3995,17,171,2,NULL),(3996,18,171,2,NULL),(3997,20,171,2,NULL),(3998,20,171,2,NULL),(3999,20,171,2,NULL),(4000,22,171,2,NULL),(4001,23,171,2,NULL),(4002,23,171,2,NULL),(4003,23,171,2,NULL),(4004,24,171,2,NULL),(4005,27,171,2,NULL),(4006,27,171,2,NULL),(4007,27,171,2,NULL),(4008,15,173,2,NULL),(4009,17,173,2,NULL),(4010,18,173,2,NULL),(4011,18,173,2,NULL),(4012,20,173,2,NULL),(4013,22,173,2,NULL),(4014,23,173,2,NULL),(4015,23,173,2,NULL),(4016,24,173,2,NULL),(4017,27,173,2,NULL),(4018,15,174,2,NULL),(4019,17,174,2,NULL),(4020,17,174,2,NULL),(4021,17,174,2,NULL),(4022,18,174,2,NULL),(4023,20,174,2,NULL),(4024,20,174,2,NULL),(4025,20,174,2,NULL),(4026,22,174,2,NULL),(4027,23,174,2,NULL),(4028,23,174,2,NULL),(4029,23,174,2,NULL),(4030,24,174,2,NULL),(4031,27,174,2,NULL),(4032,27,174,2,NULL),(4033,27,174,2,NULL),(4034,15,176,2,NULL),(4035,17,176,2,NULL),(4036,18,176,2,NULL),(4037,18,176,2,NULL),(4038,18,176,2,NULL),(4039,20,176,2,NULL),(4040,22,176,2,NULL),(4041,22,176,2,NULL),(4042,22,176,2,NULL),(4043,23,176,2,NULL),(4044,24,176,2,NULL),(4045,24,176,2,NULL),(4046,24,176,2,NULL),(4047,27,176,2,NULL),(4048,15,177,2,NULL),(4049,17,177,2,NULL),(4050,17,177,2,NULL),(4051,18,177,2,NULL),(4052,20,177,2,NULL),(4053,20,177,2,NULL),(4054,20,177,2,NULL),(4055,22,177,2,NULL),(4056,23,177,2,NULL),(4057,23,177,2,NULL),(4058,23,177,2,NULL),(4059,24,177,2,NULL),(4060,27,177,2,NULL),(4061,27,177,2,NULL),(4062,27,177,2,NULL),(4063,15,179,2,NULL),(4064,17,179,2,NULL),(4065,18,179,2,NULL),(4066,18,179,2,NULL),(4067,20,179,2,NULL),(4068,22,179,2,NULL),(4069,22,179,2,NULL),(4070,22,179,2,NULL),(4071,23,179,2,NULL),(4072,24,179,2,NULL),(4073,24,179,2,NULL),(4074,24,179,2,NULL),(4075,27,179,2,NULL),(4076,15,180,2,NULL),(4077,17,180,2,NULL),(4078,17,180,2,NULL),(4079,17,180,2,NULL),(4080,18,180,2,NULL),(4081,20,180,2,NULL),(4082,20,180,2,NULL),(4083,20,180,2,NULL),(4084,22,180,2,NULL),(4085,23,180,2,NULL),(4086,23,180,2,NULL),(4087,23,180,2,NULL),(4088,24,180,2,NULL),(4089,27,180,2,NULL),(4090,27,180,2,NULL),(4091,27,180,2,NULL),(4092,15,183,2,NULL),(4093,17,183,2,NULL),(4094,18,183,2,NULL),(4095,18,183,2,NULL),(4096,18,183,2,NULL),(4097,20,183,2,NULL),(4098,22,183,2,NULL),(4099,22,183,2,NULL),(4100,22,183,2,NULL),(4101,23,183,2,NULL),(4102,24,183,2,NULL),(4103,24,183,2,NULL),(4104,24,183,2,NULL),(4105,27,183,2,NULL),(4106,15,182,2,NULL),(4107,17,182,2,NULL),(4108,17,182,2,NULL),(4109,18,182,2,NULL),(4110,20,182,2,NULL),(4111,20,182,2,NULL),(4112,20,182,2,NULL),(4113,22,182,2,NULL),(4114,23,182,2,NULL),(4115,23,182,2,NULL),(4116,23,182,2,NULL),(4117,24,182,2,NULL),(4118,27,182,2,NULL),(4119,27,182,2,NULL),(4120,27,182,2,NULL),(4121,15,185,2,NULL),(4122,17,185,2,NULL),(4123,18,185,2,NULL),(4124,18,185,2,NULL),(4125,18,185,2,NULL),(4126,20,185,2,NULL),(4127,22,185,2,NULL),(4128,22,185,2,NULL),(4129,22,185,2,NULL),(4130,23,185,2,NULL),(4131,24,185,2,NULL),(4132,24,185,2,NULL),(4133,24,185,2,NULL),(4134,27,185,2,NULL),(4135,15,186,2,NULL),(4136,17,186,2,NULL),(4137,17,186,2,NULL),(4138,17,186,2,NULL),(4139,18,186,2,NULL),(4140,20,186,2,NULL),(4141,20,186,2,NULL),(4142,20,186,2,NULL),(4143,22,186,2,NULL),(4144,23,186,2,NULL),(4145,23,186,2,NULL),(4146,23,186,2,NULL),(4147,24,186,2,NULL),(4148,27,186,2,NULL),(4149,27,186,2,NULL),(4150,15,188,2,NULL),(4151,17,188,2,NULL),(4152,18,188,2,NULL),(4153,18,188,2,NULL),(4154,18,188,2,NULL),(4155,20,188,2,NULL),(4156,22,188,2,NULL),(4157,22,188,2,NULL),(4158,22,188,2,NULL),(4159,23,188,2,NULL),(4160,24,188,2,NULL),(4161,24,188,2,NULL),(4162,24,188,2,NULL),(4163,27,188,2,NULL),(4164,15,189,2,NULL),(4165,17,189,2,NULL),(4166,17,189,2,NULL),(4167,17,189,2,NULL),(4168,18,189,2,NULL),(4169,20,189,2,NULL),(4170,20,189,2,NULL),(4171,20,189,2,NULL),(4172,22,189,2,NULL),(4173,23,189,2,NULL),(4174,23,189,2,NULL),(4175,23,189,2,NULL),(4176,24,189,2,NULL),(4177,27,189,2,NULL),(4178,27,189,2,NULL),(4179,27,189,2,NULL),(4180,15,194,2,NULL),(4181,17,194,2,NULL),(4182,18,194,2,NULL),(4183,20,194,2,NULL),(4184,20,194,2,NULL),(4185,22,194,2,NULL),(4186,23,194,2,NULL),(4187,24,194,2,NULL),(4188,27,194,2,NULL),(4189,27,194,2,NULL),(4190,15,195,2,NULL),(4191,17,195,2,NULL),(4192,18,195,2,NULL),(4193,18,195,2,NULL),(4194,20,195,2,NULL),(4195,22,195,2,NULL),(4196,23,195,2,NULL),(4197,23,195,2,NULL),(4198,23,195,2,NULL),(4199,24,195,2,NULL),(4200,27,195,2,NULL),(4201,27,195,2,NULL),(4202,27,195,2,NULL),(4203,15,198,2,NULL),(4204,17,198,2,NULL),(4205,18,198,2,NULL),(4206,18,198,2,NULL),(4207,20,198,2,NULL),(4208,22,198,2,NULL),(4209,23,198,2,NULL),(4210,23,198,2,NULL),(4211,23,198,2,NULL),(4212,24,198,2,NULL),(4213,27,198,2,NULL),(4214,27,198,2,NULL),(4215,15,199,2,NULL),(4216,17,199,2,NULL),(4217,18,199,2,NULL),(4218,20,199,2,NULL),(4219,20,199,2,NULL),(4220,20,199,2,NULL),(4221,22,199,2,NULL),(4222,23,199,2,NULL),(4223,23,199,2,NULL),(4224,23,199,2,NULL),(4225,24,199,2,NULL),(4226,27,199,2,NULL),(4227,27,199,2,NULL),(4228,27,199,2,NULL),(4229,15,202,2,NULL),(4230,17,202,2,NULL),(4231,18,202,2,NULL),(4232,18,202,2,NULL),(4233,18,202,2,NULL),(4234,20,202,2,NULL),(4235,22,202,2,NULL),(4236,22,202,2,NULL),(4237,22,202,2,NULL),(4238,23,202,2,NULL),(4239,24,202,2,NULL),(4240,24,202,2,NULL),(4241,24,202,2,NULL),(4242,27,202,2,NULL),(4243,15,205,2,NULL),(4244,17,205,2,NULL),(4245,18,205,2,NULL),(4246,18,205,2,NULL),(4247,20,205,2,NULL),(4248,22,205,2,NULL),(4249,23,205,2,NULL),(4250,23,205,2,NULL),(4251,23,205,2,NULL),(4252,24,205,2,NULL),(4253,27,205,2,NULL),(4254,27,205,2,NULL),(4255,27,205,2,NULL),(4256,15,210,2,NULL),(4257,17,210,2,NULL),(4258,18,210,2,NULL),(4259,18,210,2,NULL),(4260,18,210,2,NULL),(4261,20,210,2,NULL),(4262,22,210,2,NULL),(4263,22,210,2,NULL),(4264,22,210,2,NULL),(4265,23,210,2,NULL),(4266,24,210,2,NULL),(4267,24,210,2,NULL),(4268,24,210,2,NULL),(4269,27,210,2,NULL),(4270,15,215,2,NULL),(4271,17,215,2,NULL),(4272,17,215,2,NULL),(4273,17,215,2,NULL),(4274,18,215,2,NULL),(4275,20,215,2,NULL),(4276,20,215,2,NULL),(4277,20,215,2,NULL),(4278,22,215,2,NULL),(4279,23,215,2,NULL),(4280,23,215,2,NULL),(4281,23,215,2,NULL),(4282,24,215,2,NULL),(4283,27,215,2,NULL),(4284,27,215,2,NULL),(4285,27,215,2,NULL),(4286,15,219,2,NULL),(4287,17,219,2,NULL),(4288,18,219,2,NULL),(4289,18,219,2,NULL),(4290,18,219,2,NULL),(4291,20,219,2,NULL),(4292,22,219,2,NULL),(4293,22,219,2,NULL),(4294,22,219,2,NULL),(4295,23,219,2,NULL),(4296,24,219,2,NULL),(4297,24,219,2,NULL),(4298,24,219,2,NULL),(4299,27,219,2,NULL),(4300,15,222,2,NULL),(4301,17,222,2,NULL),(4302,17,222,2,NULL),(4303,17,222,2,NULL),(4304,18,222,2,NULL),(4305,20,222,2,NULL),(4306,20,222,2,NULL),(4307,20,222,2,NULL),(4308,22,222,2,NULL),(4309,23,222,2,NULL),(4310,23,222,2,NULL),(4311,23,222,2,NULL),(4312,24,222,2,NULL),(4313,27,222,2,NULL),(4314,27,222,2,NULL),(4315,27,222,2,NULL),(4316,15,224,2,NULL),(4317,17,224,2,NULL),(4318,18,224,2,NULL),(4319,20,224,2,NULL),(4320,20,224,2,NULL),(4321,22,224,2,NULL),(4322,23,224,2,NULL),(4323,23,224,2,NULL),(4324,23,224,2,NULL),(4325,24,224,2,NULL),(4326,27,224,2,NULL),(4327,27,224,2,NULL),(4328,27,224,2,NULL),(4329,50,12,2,NULL),(4330,50,21,2,NULL),(4331,13,17,2,NULL),(4332,13,26,2,NULL),(4333,14,14,2,NULL),(4334,14,23,2,NULL),(4335,34,13,2,NULL),(4336,34,22,2,NULL),(4337,42,15,2,NULL),(4338,42,24,2,NULL),(4339,53,19,2,NULL),(4340,53,29,2,NULL),(4341,32,19,2,NULL),(4342,32,19,2,NULL),(4343,32,29,2,NULL);
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

-- Dump completed on 2015-10-12  3:30:42
