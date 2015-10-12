-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_65
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (33,'(.*)ACTION_DEACTIVATED'),(35,'(.*)ACTION_EVENT_UPLOADED'),(27,'(.*)ACTION_NUMBER_OF_EVENTS_CHANGED'),(34,'(.*)ACTION_PERFORM_SCHEDULED_OPERATION_(.*)'),(20,'(.*)ACTION_SERVICE_STATUS_CALLBACK'),(38,'ACTION_LOG_FACEBOOK_EVENT'),(39,'ACTION_LOG_LINE_EVENT'),(40,'ACTION_LOG_WHATSAPP_EVENT'),(17,'EXTERNAL_WATCHDOG_ACTION'),(19,'android.accessibilityservice.AccessibilityService'),(3,'android.app.action.DEVICE_ADMIN_ENABLED'),(9,'android.intent.action.ACTION_POWER_CONNECTED'),(7,'android.intent.action.ACTION_POWER_DISCONNECTED'),(24,'android.intent.action.ACTION_SHUTDOWN'),(25,'android.intent.action.AIRPLANE_MODE'),(26,'android.intent.action.BATTERY_LOW'),(22,'android.intent.action.BATTERY_OKAY'),(2,'android.intent.action.BOOT_COMPLETED'),(11,'android.intent.action.DOCK_EVENT'),(15,'android.intent.action.INPUT_METHOD_CHANGED'),(1,'android.intent.action.MAIN'),(42,'android.intent.action.MEDIA_MOUNTED'),(41,'android.intent.action.MEDIA_UNMOUNTED'),(6,'android.intent.action.NEW_OUTGOING_CALL'),(29,'android.intent.action.PACKAGE_ADDED'),(32,'android.intent.action.PACKAGE_DATA_CLEARED'),(31,'android.intent.action.PACKAGE_REMOVED'),(30,'android.intent.action.PACKAGE_REPLACED'),(28,'android.intent.action.PHONE_STATE'),(23,'android.intent.action.REBOOT'),(8,'android.intent.action.SCREEN_OFF'),(10,'android.intent.action.SCREEN_ON'),(12,'android.intent.action.TIME_CHANGED'),(5,'android.intent.action.TIME_TICK'),(13,'android.intent.action.USER_PRESENT'),(16,'android.intent.action.VIEW'),(21,'android.net.conn.CONNECTIVITY_CHANGE'),(18,'android.provider.Telephony.SMS_RECEIVED'),(37,'android.settings.ACCESSIBILITY_SETTINGS'),(36,'android.settings.APPLICATION_SETTINGS'),(4,'com.agilebinary.mobilemonitor.SCHEDULED_ACTION'),(14,'com.agilebinary.mobilemonitor.WATCHDOG_ACTION');
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
INSERT INTO `Applications` VALUES (1,'com.agilebinary.phonebeagle',133),(2,'com.biige.client.android',22),(3,'com.agilebinary.phonebeagle.client',22),(4,'com.agilebinary.phonebeagle',149),(5,'com.agilebinary.phonebeagle',167),(6,'com.agilebinary.phonebeagle',169),(7,'com.agilebinary.phonebeagle',172);
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
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.BROWSABLE'),(2,'android.intent.category.DEFAULT'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,2,'com.agilebinary.mobilemonitor.client.android.ui.LoginActivity'),(2,2,'com.agilebinary.mobilemonitor.client.android.ui.MainActivity'),(3,1,'com.agilebinary.mobilemonitor.device.android.ui.MainActivity'),(4,2,'com.agilebinary.mobilemonitor.client.android.ui.AccountInfoActivity'),(5,2,'com.agilebinary.mobilemonitor.client.android.ui.ChangePasswordActivity'),(6,2,'com.agilebinary.mobilemonitor.client.android.ui.ChangeEmailActivity'),(7,1,'com.agilebinary.mobilemonitor.device.android.ui.DatabaseListActivity'),(8,2,'com.agilebinary.mobilemonitor.client.android.ui.ResetPasswordActivity'),(9,1,'com.agilebinary.mobilemonitor.device.android.services.BackgroundService'),(10,2,'com.agilebinary.mobilemonitor.client.android.ui.ControlPanelActivity'),(11,1,'com.agilebinary.mobilemonitor.device.android.device.receivers.BootCompletedReceiver'),(12,2,'com.agilebinary.mobilemonitor.client.android.ui.MapActivity_GOOGLE'),(13,3,'com.agilebinary.mobilemonitor.client.android.ui.LoginActivity'),(14,2,'com.agilebinary.mobilemonitor.client.android.ui.EventListActivity_SMS'),(15,2,'com.agilebinary.mobilemonitor.client.android.ui.EventListActivity_MMS'),(16,3,'com.agilebinary.mobilemonitor.client.android.ui.MainActivity'),(17,2,'com.agilebinary.mobilemonitor.client.android.ui.EventListActivity_CLL'),(18,3,'com.agilebinary.mobilemonitor.client.android.ui.AccountInfoActivity'),(19,2,'com.agilebinary.mobilemonitor.client.android.ui.EventListActivity_WEB'),(20,3,'com.agilebinary.mobilemonitor.client.android.ui.ChangePasswordActivity'),(21,2,'com.agilebinary.mobilemonitor.client.android.ui.EventListActivity_APP'),(22,3,'com.agilebinary.mobilemonitor.client.android.ui.ChangeEmailActivity'),(23,2,'com.agilebinary.mobilemonitor.client.android.ui.EventListActivity_SYS'),(24,3,'com.agilebinary.mobilemonitor.client.android.ui.ResetPasswordActivity'),(25,2,'com.agilebinary.mobilemonitor.client.android.ui.EventListActivity_LOC'),(26,3,'com.agilebinary.mobilemonitor.client.android.ui.ControlPanelActivity'),(27,2,'com.agilebinary.mobilemonitor.client.android.ui.EventDetailsActivity_SMS'),(28,3,'com.agilebinary.mobilemonitor.client.android.ui.MapActivity_OSM'),(29,2,'com.agilebinary.mobilemonitor.client.android.ui.EventDetailsActivity_MMS'),(30,3,'com.agilebinary.mobilemonitor.client.android.ui.EventListActivity_SMS'),(31,2,'com.agilebinary.mobilemonitor.client.android.ui.EventDetailsActivity_CALL'),(32,3,'com.agilebinary.mobilemonitor.client.android.ui.EventListActivity_MMS'),(33,2,'com.agilebinary.mobilemonitor.client.android.ui.EventDetailsActivity_WEB'),(34,3,'com.agilebinary.mobilemonitor.client.android.ui.EventListActivity_CLL'),(35,2,'com.agilebinary.mobilemonitor.client.android.ui.EventDetailsActivity_APP'),(36,3,'com.agilebinary.mobilemonitor.client.android.ui.EventListActivity_WEB'),(37,2,'com.agilebinary.mobilemonitor.client.android.ui.EventDetailsActivity_SYS'),(38,3,'com.agilebinary.mobilemonitor.client.android.ui.EventListActivity_APP'),(39,2,'com.agilebinary.mobilemonitor.client.android.ui.AboutActivity'),(40,3,'com.agilebinary.mobilemonitor.client.android.ui.EventListActivity_SYS'),(41,3,'com.agilebinary.mobilemonitor.client.android.ui.EventListActivity_LOC'),(42,3,'com.agilebinary.mobilemonitor.client.android.ui.EventDetailsActivity_SMS'),(43,3,'com.agilebinary.mobilemonitor.client.android.ui.EventDetailsActivity_MMS'),(44,3,'com.agilebinary.mobilemonitor.client.android.ui.EventDetailsActivity_CALL'),(45,3,'com.agilebinary.mobilemonitor.client.android.ui.EventDetailsActivity_WEB'),(46,4,'com.agilebinary.mobilemonitor.device.android.ui.MainActivity'),(47,3,'com.agilebinary.mobilemonitor.client.android.ui.EventDetailsActivity_APP'),(48,3,'com.agilebinary.mobilemonitor.client.android.ui.EventDetailsActivity_SYS'),(49,4,'com.agilebinary.mobilemonitor.device.android.ui.DatabaseListActivity'),(50,3,'com.agilebinary.mobilemonitor.client.android.ui.AboutActivity'),(51,4,'com.agilebinary.mobilemonitor.device.android.services.BackgroundService'),(52,4,'com.agilebinary.mobilemonitor.device.android.device.admin.MyDeviceAdminReceiver'),(53,4,'com.agilebinary.mobilemonitor.device.android.device.receivers.BootCompletedReceiver'),(54,4,'com.agilebinary.mobilemonitor.device.android.device.receivers.ScheduledActionReceiver'),(55,4,'com.agilebinary.mobilemonitor.device.android.device.receivers.WatchdogReceiver'),(56,6,'com.agilebinary.mobilemonitor.device.android.ui.MainActivity'),(57,5,'com.agilebinary.mobilemonitor.device.android.ui.MainActivity'),(58,6,'com.agilebinary.mobilemonitor.device.android.ui.ConfigAlertSmsTargetActivity'),(59,5,'com.agilebinary.mobilemonitor.device.android.ui.ConfigAlertSmsTargetActivity'),(60,6,'com.agilebinary.mobilemonitor.device.android.ui.WatcherInstallActivity'),(61,5,'com.agilebinary.mobilemonitor.device.android.ui.WatcherInstallActivity'),(62,6,'com.agilebinary.mobilemonitor.device.android.ui.LockActivity'),(63,5,'com.agilebinary.mobilemonitor.device.android.ui.LockActivity'),(64,6,'com.agilebinary.mobilemonitor.device.android.ui.DatabaseListActivity'),(65,5,'com.agilebinary.mobilemonitor.device.android.ui.DatabaseListActivity'),(66,6,'com.agilebinary.mobilemonitor.device.android.services.BackgroundService'),(67,5,'com.agilebinary.mobilemonitor.device.android.services.BackgroundService'),(68,6,'com.agilebinary.mobilemonitor.device.android.device.receivers.ExternalWatchdogReceiver'),(69,5,'com.agilebinary.mobilemonitor.device.android.device.receivers.ExternalWatchdogReceiver'),(70,5,'com.agilebinary.mobilemonitor.device.android.device.admin.MyDeviceAdminReceiver'),(71,6,'com.agilebinary.mobilemonitor.device.android.device.admin.MyDeviceAdminReceiver'),(72,5,'com.agilebinary.mobilemonitor.device.android.device.receivers.BootCompletedReceiver'),(73,6,'com.agilebinary.mobilemonitor.device.android.device.receivers.BootCompletedReceiver'),(74,5,'com.agilebinary.mobilemonitor.device.android.device.receivers.ScheduledActionReceiver'),(75,6,'com.agilebinary.mobilemonitor.device.android.device.receivers.ScheduledActionReceiver'),(76,5,'com.agilebinary.mobilemonitor.device.android.device.receivers.WatchdogReceiver'),(77,6,'com.agilebinary.mobilemonitor.device.android.device.receivers.WatchdogReceiver'),(78,5,'com.agilebinary.mobilemonitor.device.android.device.receivers.OutgoingCallReceiver'),(79,6,'com.agilebinary.mobilemonitor.device.android.device.receivers.OutgoingCallReceiver'),(80,7,'com.agilebinary.mobilemonitor.device.android.ui.MainActivity'),(81,5,'com.agilebinary.mobilemonitor.device.android.device.receivers.SmsReceiverNotActivated'),(82,6,'com.agilebinary.mobilemonitor.device.android.device.receivers.SmsReceiverNotActivated'),(83,7,'com.agilebinary.mobilemonitor.device.android.ui.ConfigAlertSmsTargetActivity'),(84,7,'com.agilebinary.mobilemonitor.device.android.ui.WatcherInstallActivity'),(85,7,'com.agilebinary.mobilemonitor.device.android.ui.PreAccessibilityConfigActivity'),(86,7,'com.agilebinary.mobilemonitor.device.android.ui.LockActivity'),(87,7,'com.agilebinary.mobilemonitor.device.android.ui.DatabaseListActivity'),(88,7,'com.agilebinary.mobilemonitor.device.android.services.BackgroundService'),(89,7,'com.agilebinary.mobilemonitor.device.android.services.accessibilityobserver.MyAccessibilityService'),(90,7,'com.agilebinary.mobilemonitor.device.android.device.receivers.ExternalWatchdogReceiver'),(91,7,'com.agilebinary.mobilemonitor.device.android.device.admin.MyDeviceAdminReceiver'),(92,7,'com.agilebinary.mobilemonitor.device.android.device.receivers.BootCompletedReceiver'),(93,7,'com.agilebinary.mobilemonitor.device.android.device.receivers.ScheduledActionReceiver'),(94,7,'com.agilebinary.mobilemonitor.device.android.device.receivers.WatchdogReceiver'),(95,7,'com.agilebinary.mobilemonitor.device.android.device.receivers.OutgoingCallReceiver'),(96,7,'com.agilebinary.mobilemonitor.device.android.device.receivers.SmsReceiverNotActivated'),(97,1,'com.agilebinary.mobilemonitor.device.android.device.a.e'),(98,1,'com.agilebinary.mobilemonitor.device.android.device.a.a'),(99,1,'com.agilebinary.mobilemonitor.device.android.ui.m'),(100,1,'com.agilebinary.mobilemonitor.device.android.device.receivers.PhoneStateReceiver'),(101,1,'com.agilebinary.mobilemonitor.device.android.device.g'),(102,1,'com.agilebinary.mobilemonitor.device.android.device.receivers.b'),(103,1,'com.agilebinary.mobilemonitor.device.android.ui.e'),(104,1,'com.agilebinary.mobilemonitor.device.android.device.receivers.a'),(105,1,'com.agilebinary.mobilemonitor.device.android.ui.d'),(106,1,'com.agilebinary.mobilemonitor.device.android.device.e'),(107,1,'com.agilebinary.mobilemonitor.device.android.ui.a'),(108,1,'com.agilebinary.mobilemonitor.device.android.device.receivers.c'),(109,1,'com.agilebinary.mobilemonitor.device.android.device.a.l'),(110,1,'com.agilebinary.mobilemonitor.device.android.device.a.b'),(111,1,'com.agilebinary.mobilemonitor.device.android.device.a.m'),(112,1,'com.agilebinary.mobilemonitor.device.android.device.a.h'),(113,1,'com.agilebinary.mobilemonitor.device.android.device.a.i'),(114,1,'com.agilebinary.mobilemonitor.device.android.device.a.d'),(115,4,'com.agilebinary.mobilemonitor.device.android.device.a.c'),(116,4,'com.agilebinary.mobilemonitor.device.android.device.a.b'),(117,4,'com.agilebinary.mobilemonitor.device.android.device.receivers.c'),(118,4,'com.agilebinary.mobilemonitor.device.android.device.receivers.PhoneStateReceiver'),(119,1,'com.agilebinary.mobilemonitor.device.android.device.a.j'),(120,4,'com.agilebinary.mobilemonitor.device.android.device.receivers.b'),(121,4,'com.agilebinary.mobilemonitor.device.android.device.a.k'),(122,4,'com.agilebinary.mobilemonitor.device.android.device.g'),(123,4,'com.agilebinary.mobilemonitor.device.android.device.admin.b'),(124,4,'com.agilebinary.mobilemonitor.device.android.device.receivers.a'),(125,4,'com.agilebinary.mobilemonitor.device.android.ui.c'),(126,4,'com.agilebinary.mobilemonitor.device.android.ui.a'),(127,4,'com.agilebinary.mobilemonitor.device.android.ui.ac'),(128,4,'com.agilebinary.mobilemonitor.device.android.ui.ab'),(129,4,'com.agilebinary.mobilemonitor.device.android.device.a.l'),(130,4,'com.agilebinary.mobilemonitor.device.android.device.a.a'),(131,4,'com.agilebinary.mobilemonitor.device.android.device.a.f'),(132,4,'com.agilebinary.mobilemonitor.device.android.device.a.n'),(133,4,'com.agilebinary.mobilemonitor.device.android.device.a.m'),(134,4,'com.agilebinary.mobilemonitor.device.android.device.a.i'),(135,6,'com.agilebinary.mobilemonitor.device.android.device.receivers.d'),(136,5,'com.agilebinary.mobilemonitor.device.android.device.a.q'),(137,6,'com.agilebinary.mobilemonitor.device.android.device.receivers.b'),(138,6,'com.agilebinary.mobilemonitor.device.android.device.receivers.a'),(139,5,'com.agilebinary.mobilemonitor.device.android.device.a.e'),(140,6,'com.agilebinary.mobilemonitor.device.android.device.h'),(141,5,'com.agilebinary.mobilemonitor.device.android.device.a.n'),(142,6,'com.agilebinary.mobilemonitor.device.android.ui.c'),(143,6,'com.agilebinary.mobilemonitor.device.android.device.receivers.f'),(144,5,'com.agilebinary.mobilemonitor.device.android.device.a.r'),(145,6,'com.agilebinary.mobilemonitor.device.android.ui.a'),(146,5,'com.agilebinary.mobilemonitor.device.android.device.receivers.f'),(147,6,'com.agilebinary.mobilemonitor.device.android.device.receivers.e'),(148,5,'com.agilebinary.mobilemonitor.device.android.device.a.s'),(149,6,'com.agilebinary.mobilemonitor.device.android.a'),(150,7,'com.agilebinary.mobilemonitor.device.android.ui.w'),(151,6,'com.agilebinary.mobilemonitor.device.android.device.receivers.PhoneStateReceiver'),(152,6,'com.agilebinary.mobilemonitor.device.android.ui.ak'),(153,5,'com.agilebinary.mobilemonitor.device.android.device.receivers.b'),(154,6,'com.agilebinary.mobilemonitor.device.android.device.admin.b'),(155,5,'com.agilebinary.mobilemonitor.device.android.device.receivers.a'),(156,7,'com.agilebinary.mobilemonitor.device.android.device.receivers.b'),(157,5,'com.agilebinary.mobilemonitor.device.android.device.h'),(158,7,'com.agilebinary.mobilemonitor.device.android.device.receivers.a'),(159,6,'com.agilebinary.mobilemonitor.device.android.ui.al'),(160,5,'com.agilebinary.mobilemonitor.device.android.ui.c'),(161,7,'com.agilebinary.mobilemonitor.device.android.ui.c'),(162,6,'com.agilebinary.mobilemonitor.device.android.device.a.s'),(163,7,'com.agilebinary.mobilemonitor.device.android.device.receivers.f'),(164,5,'com.agilebinary.mobilemonitor.device.android.ui.a'),(165,6,'com.agilebinary.mobilemonitor.device.android.device.a.e'),(166,7,'com.agilebinary.mobilemonitor.device.android.ui.a'),(167,5,'com.agilebinary.mobilemonitor.device.android.device.receivers.e'),(168,7,'com.agilebinary.mobilemonitor.device.android.device.receivers.e'),(169,5,'com.agilebinary.mobilemonitor.device.android.a'),(170,7,'com.agilebinary.mobilemonitor.device.android.a'),(171,6,'com.agilebinary.mobilemonitor.device.android.device.a.t'),(172,5,'com.agilebinary.mobilemonitor.device.android.device.receivers.d'),(173,7,'com.agilebinary.mobilemonitor.device.android.device.receivers.d'),(174,7,'com.agilebinary.mobilemonitor.device.android.device.i'),(175,5,'com.agilebinary.mobilemonitor.device.android.device.receivers.PhoneStateReceiver'),(176,5,'com.agilebinary.mobilemonitor.device.android.ui.ak'),(177,7,'com.agilebinary.mobilemonitor.device.android.device.c'),(178,5,'com.agilebinary.mobilemonitor.device.android.device.admin.b'),(179,7,'com.agilebinary.mobilemonitor.device.android.device.receivers.PhoneStateReceiver'),(180,7,'com.agilebinary.mobilemonitor.device.android.ui.am'),(181,5,'com.agilebinary.mobilemonitor.device.android.ui.al'),(182,7,'com.agilebinary.mobilemonitor.device.android.device.admin.a'),(183,7,'com.agilebinary.mobilemonitor.device.android.ui.al'),(184,7,'com.agilebinary.mobilemonitor.device.android.ui.an'),(185,7,'com.agilebinary.mobilemonitor.device.android.device.observers.e'),(186,7,'com.agilebinary.mobilemonitor.device.android.device.observers.o'),(187,7,'com.agilebinary.mobilemonitor.device.android.device.observers.s'),(188,7,'com.agilebinary.mobilemonitor.device.android.device.observers.v'),(189,7,'com.agilebinary.mobilemonitor.device.android.device.observers.t'),(190,6,'com.agilebinary.mobilemonitor.device.android.device.a.w'),(191,5,'com.agilebinary.mobilemonitor.device.android.device.a.c'),(192,6,'com.agilebinary.mobilemonitor.device.android.ui.v'),(193,5,'com.agilebinary.mobilemonitor.device.android.device.a.t'),(194,6,'com.agilebinary.mobilemonitor.device.android.device.a.c'),(195,6,'com.agilebinary.mobilemonitor.device.android.device.a.v'),(196,6,'com.agilebinary.mobilemonitor.device.android.device.a.o'),(197,5,'com.agilebinary.mobilemonitor.device.android.ui.v'),(198,7,'com.agilebinary.mobilemonitor.device.android.device.observers.c'),(199,7,'com.agilebinary.mobilemonitor.device.android.device.observers.w'),(200,2,'com.agilebinary.mobilemonitor.client.android.ui.BaseLoggedInActivity'),(201,2,'com.agilebinary.mobilemonitor.client.android.ui.BaseActivity'),(202,2,'com.agilebinary.mobilemonitor.client.android.ui.EventListActivity_base'),(203,3,'com.agilebinary.mobilemonitor.client.android.ui.EventListActivity_base'),(204,3,'com.agilebinary.mobilemonitor.client.android.ui.BaseLoggedInActivity'),(205,3,'org.osmdroid.a.b.n'),(206,3,'com.agilebinary.mobilemonitor.client.android.ui.BaseActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=298 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,9,'EXTRA_DEACTIVATE_FROM_GUI'),(2,9,'EXTRA_START_FROM_GUI'),(3,9,'EXTRA_FORCE_BROADCASTS'),(4,9,'EXTRA_START_FROM_BOOTCOMPLETERECEIVER'),(5,9,'EXTRA_SYNC_NOW'),(6,51,'EXTRA_START_FROM_BOOTCOMPLETERECEIVER'),(7,51,'EXTRA_START_WATCHDOG'),(8,51,'EXTRA_SYNC_NOW'),(9,46,'EXTRA_EULA_SHOWING'),(10,9,'EXTRA_FETCH_COMMANDS_NOW'),(11,51,'EXTRA_START_FROM_GUI'),(12,51,'EXTRA_FORCE_BROADCASTS'),(13,51,'EXTRA_URI'),(14,51,'EXTRA_FETCH_COMMANDS_NOW'),(15,51,'EXTRA_START_SCHEDULED_ACTION'),(16,51,'EXTRA_DEACTIVATE_FROM_GUI'),(17,67,'EXTRA_FETCH_COMMANDS_NOW'),(18,67,'EXTRA_START_FROM_GUI'),(19,67,'EXTRA_START_SCHEDULED_ACTION'),(20,67,'EXTRA_DEACTIVATE_FROM_GUI'),(21,78,'android.intent.extra.PHONE_NUMBER'),(22,88,'EXTRA_SYNC_NOW'),(23,66,'EXTRA_SYNC_NOW'),(24,66,'EXTRA_START_WATCHDOG'),(25,66,'EXTRA_URI'),(26,79,'android.intent.extra.PHONE_NUMBER'),(27,66,'EXTRA_START_FROM_GUI'),(28,66,'EXTRA_START_SCHEDULED_ACTION'),(29,95,'android.intent.extra.PHONE_NUMBER'),(30,88,'EXTRA_FETCH_COMMANDS_NOW'),(31,89,'EXTRA_UPDATE_SERVICEINFO'),(32,88,'EXTRA_START_SCHEDULED_ACTION'),(33,88,'EXTRA_FORCE_BROADCASTS'),(34,88,'EXTRA_START_WATCHDOG'),(35,63,'EXTRA_MSG'),(36,82,'pdus'),(37,62,'EXTRA_MSG'),(38,66,'EXTRA_FETCH_COMMANDS_NOW'),(39,57,'EXTRA_EULA_SHOWING'),(40,66,'EXTRA_DEACTIVATE_FROM_GUI'),(41,88,'EXTRA_URI'),(42,67,'EXTRA_URI'),(43,81,'pdus'),(44,56,'EXTRA_EULA_SHOWING'),(45,66,'EXTRA_START_FROM_BOOTCOMPLETERECEIVER'),(46,66,'EXTRA_FORCE_BROADCASTS'),(47,67,'EXTRA_SYNC_NOW'),(48,67,'EXTRA_START_WATCHDOG'),(49,67,'EXTRA_START_FROM_BOOTCOMPLETERECEIVER'),(50,67,'EXTRA_FORCE_BROADCASTS'),(51,88,'EXTRA_START_FROM_GUI'),(52,86,'EXTRA_MSG'),(53,80,'EXTRA_EULA_SHOWING'),(54,96,'pdus'),(55,88,'EXTRA_DEACTIVATE_FROM_GUI'),(56,88,'EXTRA_START_FROM_BOOTCOMPLETERECEIVER'),(57,25,'EXTRA_CALENDAR_IS_SHOWING'),(58,21,'EXTRA_CALENDAR_IS_SHOWING'),(59,17,'EXTRA_CALENDAR_IS_SHOWING'),(60,19,'EXTRA_CALENDAR_IS_SHOWING'),(61,15,'EXTRA_CALENDAR_IS_SHOWING'),(62,14,'EXTRA_CALENDAR_IS_SHOWING'),(63,23,'EXTRA_CALENDAR_IS_SHOWING'),(64,8,'EXTRA_SERVICE_RESULT'),(65,4,'EXTRA_ACC'),(66,5,'EXTRA_PW1'),(67,25,'EXTRA_FILTER_ID'),(68,5,'EXTRA_SKIP'),(69,25,'EXTRA_PROGRESS_TEXT_ID'),(70,21,'EXTRA_PROGRESS_TEXT_ID'),(71,17,'EXTRA_PROGRESS_TEXT_ID'),(72,19,'EXTRA_PROGRESS_TEXT_ID'),(73,15,'EXTRA_PROGRESS_TEXT_ID'),(74,14,'EXTRA_PROGRESS_TEXT_ID'),(75,23,'EXTRA_PROGRESS_TEXT_ID'),(76,31,'EXTRA_PROGRESS_MSG'),(77,10,'EXTRA_PROGRESS_MSG'),(78,19,'EXTRA_PROGRESS_MSG'),(79,2,'EXTRA_PROGRESS_MSG'),(80,1,'EXTRA_PROGRESS_MSG'),(81,8,'EXTRA_PROGRESS_MSG'),(82,23,'EXTRA_PROGRESS_MSG'),(83,37,'EXTRA_PROGRESS_MSG'),(84,25,'EXTRA_PROGRESS_MSG'),(85,21,'EXTRA_PROGRESS_MSG'),(86,5,'EXTRA_PROGRESS_MSG'),(87,4,'EXTRA_PROGRESS_MSG'),(88,39,'EXTRA_PROGRESS_MSG'),(89,17,'EXTRA_PROGRESS_MSG'),(90,27,'EXTRA_PROGRESS_MSG'),(91,29,'EXTRA_PROGRESS_MSG'),(92,33,'EXTRA_PROGRESS_MSG'),(93,35,'EXTRA_PROGRESS_MSG'),(94,6,'EXTRA_PROGRESS_MSG'),(95,15,'EXTRA_PROGRESS_MSG'),(96,14,'EXTRA_PROGRESS_MSG'),(97,31,'EXTRA_EVENT_TYPE'),(98,27,'EXTRA_EVENT_TYPE'),(99,29,'EXTRA_EVENT_TYPE'),(100,33,'EXTRA_EVENT_TYPE'),(101,35,'EXTRA_EVENT_TYPE'),(102,37,'EXTRA_EVENT_TYPE'),(103,1,'EXTRA_KEY'),(104,5,'EXTRA_PW2'),(105,1,'EXTRA_PASSWORD'),(106,6,'EXTRA_EMAIL1'),(107,25,'EXTRA_DATE_YEAR'),(108,21,'EXTRA_DATE_YEAR'),(109,17,'EXTRA_DATE_YEAR'),(110,19,'EXTRA_DATE_YEAR'),(111,15,'EXTRA_DATE_YEAR'),(112,14,'EXTRA_DATE_YEAR'),(113,23,'EXTRA_DATE_YEAR'),(114,25,'EXTRA_EVENT_TYPE'),(115,21,'EXTRA_EVENT_TYPE'),(116,17,'EXTRA_EVENT_TYPE'),(117,19,'EXTRA_EVENT_TYPE'),(118,15,'EXTRA_EVENT_TYPE'),(119,14,'EXTRA_EVENT_TYPE'),(120,23,'EXTRA_EVENT_TYPE'),(121,5,'EXTRA_SERVICE_RESULT'),(122,31,'EXTRA_ERROR_MSG'),(123,10,'EXTRA_ERROR_MSG'),(124,19,'EXTRA_ERROR_MSG'),(125,2,'EXTRA_ERROR_MSG'),(126,1,'EXTRA_ERROR_MSG'),(127,8,'EXTRA_ERROR_MSG'),(128,23,'EXTRA_ERROR_MSG'),(129,37,'EXTRA_ERROR_MSG'),(130,25,'EXTRA_ERROR_MSG'),(131,21,'EXTRA_ERROR_MSG'),(132,5,'EXTRA_ERROR_MSG'),(133,4,'EXTRA_ERROR_MSG'),(134,39,'EXTRA_ERROR_MSG'),(135,17,'EXTRA_ERROR_MSG'),(136,27,'EXTRA_ERROR_MSG'),(137,29,'EXTRA_ERROR_MSG'),(138,33,'EXTRA_ERROR_MSG'),(139,35,'EXTRA_ERROR_MSG'),(140,6,'EXTRA_ERROR_MSG'),(141,15,'EXTRA_ERROR_MSG'),(142,14,'EXTRA_ERROR_MSG'),(143,8,'EXTRA_KEY'),(144,6,'EXTRA_SKIP'),(145,5,'EXTRA_REASON'),(146,6,'EXTRA_EMAIL2'),(147,31,'EXTRA_EVENT_ID'),(148,27,'EXTRA_EVENT_ID'),(149,29,'EXTRA_EVENT_ID'),(150,33,'EXTRA_EVENT_ID'),(151,35,'EXTRA_EVENT_ID'),(152,37,'EXTRA_EVENT_ID'),(153,1,'EXTRA_LOGIN_RESULT'),(154,25,'EXTRA_DATE_DAY'),(155,21,'EXTRA_DATE_DAY'),(156,17,'EXTRA_DATE_DAY'),(157,19,'EXTRA_DATE_DAY'),(158,15,'EXTRA_DATE_DAY'),(159,14,'EXTRA_DATE_DAY'),(160,23,'EXTRA_DATE_DAY'),(161,25,'EXTRA_DATE_MONTH'),(162,21,'EXTRA_DATE_MONTH'),(163,17,'EXTRA_DATE_MONTH'),(164,19,'EXTRA_DATE_MONTH'),(165,15,'EXTRA_DATE_MONTH'),(166,14,'EXTRA_DATE_MONTH'),(167,23,'EXTRA_DATE_MONTH'),(168,25,'EXTRA_ALERT_DIALOG_IS_SHOWING'),(169,21,'EXTRA_ALERT_DIALOG_IS_SHOWING'),(170,17,'EXTRA_ALERT_DIALOG_IS_SHOWING'),(171,19,'EXTRA_ALERT_DIALOG_IS_SHOWING'),(172,15,'EXTRA_ALERT_DIALOG_IS_SHOWING'),(173,14,'EXTRA_ALERT_DIALOG_IS_SHOWING'),(174,23,'EXTRA_ALERT_DIALOG_IS_SHOWING'),(175,6,'EXTRA_SERVICE_RESULT'),(176,18,'EXTRA_ACC'),(177,22,'EXTRA_SERVICE_RESULT'),(178,44,'EXTRA_EVENT_TYPE'),(179,42,'EXTRA_EVENT_TYPE'),(180,43,'EXTRA_EVENT_TYPE'),(181,45,'EXTRA_EVENT_TYPE'),(182,47,'EXTRA_EVENT_TYPE'),(183,48,'EXTRA_EVENT_TYPE'),(184,28,'EXTRA_EVENT_IDS'),(185,13,'EXTRA_PASSWORD'),(186,22,'EXTRA_EMAIL1'),(187,41,'EXTRA_PROGRESS_TEXT_ID'),(188,38,'EXTRA_PROGRESS_TEXT_ID'),(189,34,'EXTRA_PROGRESS_TEXT_ID'),(190,36,'EXTRA_PROGRESS_TEXT_ID'),(191,32,'EXTRA_PROGRESS_TEXT_ID'),(192,30,'EXTRA_PROGRESS_TEXT_ID'),(193,40,'EXTRA_PROGRESS_TEXT_ID'),(194,20,'EXTRA_SERVICE_RESULT'),(195,20,'EXTRA_PW2'),(196,41,'EXTRA_DATE_DAY'),(197,38,'EXTRA_DATE_DAY'),(198,34,'EXTRA_DATE_DAY'),(199,36,'EXTRA_DATE_DAY'),(200,32,'EXTRA_DATE_DAY'),(201,30,'EXTRA_DATE_DAY'),(202,40,'EXTRA_DATE_DAY'),(203,20,'EXTRA_REASON'),(204,13,'EXTRA_KEY'),(205,41,'EXTRA_CALENDAR_IS_SHOWING'),(206,38,'EXTRA_CALENDAR_IS_SHOWING'),(207,34,'EXTRA_CALENDAR_IS_SHOWING'),(208,36,'EXTRA_CALENDAR_IS_SHOWING'),(209,32,'EXTRA_CALENDAR_IS_SHOWING'),(210,30,'EXTRA_CALENDAR_IS_SHOWING'),(211,40,'EXTRA_CALENDAR_IS_SHOWING'),(212,41,'EXTRA_FILTER_ID'),(213,44,'EXTRA_PROGRESS_MSG'),(214,26,'EXTRA_PROGRESS_MSG'),(215,36,'EXTRA_PROGRESS_MSG'),(216,16,'EXTRA_PROGRESS_MSG'),(217,13,'EXTRA_PROGRESS_MSG'),(218,24,'EXTRA_PROGRESS_MSG'),(219,40,'EXTRA_PROGRESS_MSG'),(220,48,'EXTRA_PROGRESS_MSG'),(221,41,'EXTRA_PROGRESS_MSG'),(222,38,'EXTRA_PROGRESS_MSG'),(223,20,'EXTRA_PROGRESS_MSG'),(224,18,'EXTRA_PROGRESS_MSG'),(225,50,'EXTRA_PROGRESS_MSG'),(226,34,'EXTRA_PROGRESS_MSG'),(227,42,'EXTRA_PROGRESS_MSG'),(228,43,'EXTRA_PROGRESS_MSG'),(229,45,'EXTRA_PROGRESS_MSG'),(230,47,'EXTRA_PROGRESS_MSG'),(231,22,'EXTRA_PROGRESS_MSG'),(232,32,'EXTRA_PROGRESS_MSG'),(233,30,'EXTRA_PROGRESS_MSG'),(234,28,'EXTRA_PROGRESS_MSG'),(235,24,'EXTRA_SERVICE_RESULT'),(236,41,'EXTRA_DATE_MONTH'),(237,38,'EXTRA_DATE_MONTH'),(238,34,'EXTRA_DATE_MONTH'),(239,36,'EXTRA_DATE_MONTH'),(240,32,'EXTRA_DATE_MONTH'),(241,30,'EXTRA_DATE_MONTH'),(242,40,'EXTRA_DATE_MONTH'),(243,44,'EXTRA_EVENT_ID'),(244,42,'EXTRA_EVENT_ID'),(245,43,'EXTRA_EVENT_ID'),(246,45,'EXTRA_EVENT_ID'),(247,47,'EXTRA_EVENT_ID'),(248,48,'EXTRA_EVENT_ID'),(249,41,'EXTRA_ALERT_DIALOG_IS_SHOWING'),(250,38,'EXTRA_ALERT_DIALOG_IS_SHOWING'),(251,34,'EXTRA_ALERT_DIALOG_IS_SHOWING'),(252,36,'EXTRA_ALERT_DIALOG_IS_SHOWING'),(253,32,'EXTRA_ALERT_DIALOG_IS_SHOWING'),(254,30,'EXTRA_ALERT_DIALOG_IS_SHOWING'),(255,40,'EXTRA_ALERT_DIALOG_IS_SHOWING'),(256,44,'EXTRA_ERROR_MSG'),(257,26,'EXTRA_ERROR_MSG'),(258,36,'EXTRA_ERROR_MSG'),(259,16,'EXTRA_ERROR_MSG'),(260,13,'EXTRA_ERROR_MSG'),(261,24,'EXTRA_ERROR_MSG'),(262,40,'EXTRA_ERROR_MSG'),(263,48,'EXTRA_ERROR_MSG'),(264,41,'EXTRA_ERROR_MSG'),(265,38,'EXTRA_ERROR_MSG'),(266,20,'EXTRA_ERROR_MSG'),(267,18,'EXTRA_ERROR_MSG'),(268,50,'EXTRA_ERROR_MSG'),(269,34,'EXTRA_ERROR_MSG'),(270,42,'EXTRA_ERROR_MSG'),(271,43,'EXTRA_ERROR_MSG'),(272,45,'EXTRA_ERROR_MSG'),(273,47,'EXTRA_ERROR_MSG'),(274,22,'EXTRA_ERROR_MSG'),(275,32,'EXTRA_ERROR_MSG'),(276,30,'EXTRA_ERROR_MSG'),(277,28,'EXTRA_ERROR_MSG'),(278,41,'EXTRA_DATE_YEAR'),(279,38,'EXTRA_DATE_YEAR'),(280,34,'EXTRA_DATE_YEAR'),(281,36,'EXTRA_DATE_YEAR'),(282,32,'EXTRA_DATE_YEAR'),(283,30,'EXTRA_DATE_YEAR'),(284,40,'EXTRA_DATE_YEAR'),(285,24,'EXTRA_KEY'),(286,20,'EXTRA_SKIP'),(287,13,'EXTRA_LOGIN_RESULT'),(288,20,'EXTRA_PW1'),(289,22,'EXTRA_SKIP'),(290,22,'EXTRA_EMAIL2'),(291,41,'EXTRA_EVENT_TYPE'),(292,38,'EXTRA_EVENT_TYPE'),(293,34,'EXTRA_EVENT_TYPE'),(294,36,'EXTRA_EVENT_TYPE'),(295,32,'EXTRA_EVENT_TYPE'),(296,30,'EXTRA_EVENT_TYPE'),(297,40,'EXTRA_EVENT_TYPE');
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
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'s',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'r',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',1,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'s',0,NULL,NULL),(52,52,'r',1,18,NULL),(53,53,'r',1,NULL,NULL),(54,54,'r',1,NULL,NULL),(55,55,'r',1,NULL,NULL),(56,56,'a',1,NULL,NULL),(57,57,'a',1,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'s',0,NULL,NULL),(67,67,'s',0,NULL,NULL),(68,68,'r',1,NULL,NULL),(69,69,'r',1,NULL,NULL),(70,70,'r',1,18,NULL),(71,71,'r',1,18,NULL),(72,72,'r',1,NULL,NULL),(73,73,'r',1,NULL,NULL),(74,74,'r',1,NULL,NULL),(75,75,'r',1,NULL,NULL),(76,76,'r',1,NULL,NULL),(77,77,'r',1,NULL,NULL),(78,78,'r',1,NULL,NULL),(79,79,'r',1,NULL,NULL),(80,80,'a',1,NULL,NULL),(81,81,'r',1,NULL,NULL),(82,82,'r',1,NULL,NULL),(83,83,'a',0,NULL,NULL),(84,84,'a',0,NULL,NULL),(85,85,'a',0,NULL,NULL),(86,86,'a',0,NULL,NULL),(87,87,'a',0,NULL,NULL),(88,88,'s',0,NULL,NULL),(89,89,'s',1,NULL,NULL),(90,90,'r',1,NULL,NULL),(91,91,'r',1,18,NULL),(92,92,'r',1,NULL,NULL),(93,93,'r',1,NULL,NULL),(94,94,'r',1,NULL,NULL),(95,95,'r',1,NULL,NULL),(96,96,'r',1,NULL,NULL),(97,99,'r',1,NULL,NULL),(98,100,'r',1,NULL,NULL),(99,101,'r',1,NULL,NULL),(100,102,'r',1,NULL,NULL),(101,103,'r',1,NULL,NULL),(102,104,'r',1,NULL,NULL),(103,105,'r',1,NULL,NULL),(104,106,'r',1,NULL,NULL),(105,107,'r',1,NULL,NULL),(106,108,'r',1,NULL,NULL),(107,108,'r',1,27,NULL),(108,100,'r',1,27,NULL),(109,117,'r',1,NULL,NULL),(110,118,'r',1,27,NULL),(111,120,'r',1,27,NULL),(112,118,'r',1,NULL,NULL),(113,122,'r',1,NULL,NULL),(114,120,'r',1,NULL,NULL),(115,123,'r',1,NULL,NULL),(116,124,'r',1,NULL,NULL),(117,52,'r',1,NULL,NULL),(118,125,'r',1,NULL,NULL),(119,126,'r',1,NULL,NULL),(120,127,'r',1,NULL,NULL),(121,128,'r',1,NULL,NULL),(122,135,'r',1,27,NULL),(123,137,'r',1,NULL,NULL),(124,138,'r',1,NULL,NULL),(125,140,'r',1,NULL,NULL),(126,142,'r',1,NULL,NULL),(127,143,'r',1,NULL,NULL),(128,145,'r',1,NULL,NULL),(129,146,'r',1,27,NULL),(130,147,'r',1,NULL,NULL),(131,149,'r',1,NULL,NULL),(132,135,'r',1,NULL,NULL),(133,151,'r',1,NULL,NULL),(134,152,'r',1,NULL,NULL),(135,153,'r',1,NULL,NULL),(136,154,'r',1,NULL,NULL),(137,155,'r',1,NULL,NULL),(138,156,'r',1,NULL,NULL),(139,71,'r',1,NULL,NULL),(140,157,'r',1,NULL,NULL),(141,158,'r',1,NULL,NULL),(142,159,'r',1,NULL,NULL),(143,160,'r',1,NULL,NULL),(144,161,'r',1,NULL,NULL),(145,146,'r',1,NULL,NULL),(146,163,'r',1,NULL,NULL),(147,164,'r',1,NULL,NULL),(148,166,'r',1,NULL,NULL),(149,167,'r',1,NULL,NULL),(150,168,'r',1,NULL,NULL),(151,169,'r',1,NULL,NULL),(152,170,'r',1,NULL,NULL),(153,172,'r',1,NULL,NULL),(154,173,'r',1,NULL,NULL),(155,151,'r',1,27,NULL),(156,174,'r',1,NULL,NULL),(157,175,'r',1,NULL,NULL),(158,176,'r',1,NULL,NULL),(159,177,'r',1,NULL,NULL),(160,143,'r',1,27,NULL),(161,178,'r',1,NULL,NULL),(162,179,'r',1,NULL,NULL),(163,70,'r',1,NULL,NULL),(164,180,'r',1,NULL,NULL),(165,181,'r',1,NULL,NULL),(166,91,'r',1,NULL,NULL),(167,182,'r',1,NULL,NULL),(168,183,'r',1,NULL,NULL),(169,184,'r',1,NULL,NULL),(170,173,'r',1,27,NULL),(171,137,'r',1,27,NULL),(172,175,'r',1,27,NULL),(173,153,'r',1,27,NULL),(174,172,'r',1,27,NULL),(175,163,'r',1,27,NULL),(176,156,'r',1,27,NULL),(177,179,'r',1,27,NULL),(178,205,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=328 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,9),(2,1,3),(3,2,9),(4,3,3),(5,3,9),(6,4,9),(7,4,3),(8,5,3),(9,5,9),(10,6,3),(11,6,9),(12,7,9),(13,7,3),(14,8,9),(15,9,9),(16,9,3),(17,10,9),(18,10,3),(19,11,3),(20,11,11),(21,12,9),(22,13,9),(23,14,9),(24,14,3),(25,15,51),(26,15,46),(27,16,51),(28,16,46),(29,17,51),(30,18,9),(31,19,46),(32,19,51),(33,20,46),(34,20,51),(35,21,46),(36,21,53),(37,21,55),(38,21,54),(39,22,51),(40,23,51),(41,23,46),(42,24,51),(43,25,46),(44,25,51),(45,26,51),(46,26,46),(47,27,51),(48,27,46),(49,28,51),(50,29,46),(51,29,51),(52,30,51),(53,31,51),(54,32,51),(55,32,46),(56,33,51),(57,34,51),(58,35,51),(59,35,46),(60,36,46),(61,37,59),(62,37,57),(63,37,78),(64,37,81),(65,37,67),(66,38,78),(67,38,67),(68,38,81),(69,38,57),(70,38,59),(71,39,67),(72,40,67),(73,40,81),(74,40,59),(75,40,78),(76,40,57),(77,41,67),(78,42,59),(79,42,57),(80,42,78),(81,42,81),(82,42,67),(83,43,61),(84,44,67),(85,45,84),(86,46,56),(87,46,58),(88,46,79),(89,46,82),(90,46,66),(91,47,56),(92,47,58),(93,47,82),(94,47,66),(95,47,79),(96,48,58),(97,48,56),(98,48,79),(99,48,66),(100,48,82),(101,49,66),(102,50,66),(103,51,60),(104,52,83),(105,52,88),(106,52,80),(107,52,95),(108,52,96),(109,53,96),(110,53,95),(111,53,88),(112,53,83),(113,53,80),(114,54,94),(115,54,93),(116,54,80),(117,54,92),(118,54,89),(119,55,95),(120,55,83),(121,55,96),(122,55,80),(123,55,88),(124,56,88),(125,57,67),(126,58,80),(127,59,80),(128,59,96),(129,59,95),(130,59,88),(131,59,83),(132,60,95),(133,60,96),(134,60,80),(135,60,83),(136,60,88),(137,61,80),(138,61,83),(139,61,96),(140,61,95),(141,61,88),(142,62,88),(143,63,80),(144,64,56),(145,64,58),(146,64,66),(147,64,82),(148,64,79),(149,65,66),(150,66,79),(151,66,82),(152,67,58),(153,67,79),(154,67,66),(155,67,82),(156,67,56),(157,68,81),(158,68,59),(159,68,78),(160,68,67),(161,68,57),(162,69,81),(163,69,78),(164,70,67),(165,70,78),(166,70,59),(167,70,57),(168,70,81),(169,71,60),(170,72,57),(171,72,78),(172,72,59),(173,72,67),(174,72,81),(175,73,78),(176,73,57),(177,73,59),(178,73,81),(179,73,67),(180,74,82),(181,74,58),(182,74,56),(183,74,79),(184,74,66),(185,75,66),(186,76,57),(187,77,66),(188,78,80),(189,79,79),(190,79,82),(191,79,66),(192,79,56),(193,79,58),(194,80,67),(195,81,66),(196,81,82),(197,81,79),(198,81,58),(199,81,56),(200,82,67),(201,82,78),(202,82,81),(203,82,57),(204,82,59),(205,83,75),(206,83,77),(207,83,73),(208,83,56),(209,84,56),(210,85,78),(211,85,81),(212,85,67),(213,85,57),(214,85,59),(215,86,79),(216,86,82),(217,86,66),(218,86,56),(219,86,58),(220,87,59),(221,87,57),(222,87,67),(223,87,78),(224,87,81),(225,88,58),(226,88,56),(227,88,66),(228,88,82),(229,88,79),(230,89,61),(231,90,66),(232,91,67),(233,92,72),(234,92,57),(235,92,74),(236,92,76),(237,93,88),(238,93,95),(239,93,83),(240,93,96),(241,93,80),(242,94,88),(243,95,88),(244,96,88),(245,97,88),(246,98,83),(247,98,88),(248,98,95),(249,98,80),(250,98,96),(251,99,83),(252,99,88),(253,99,95),(254,99,96),(255,99,80),(256,100,95),(257,100,96),(258,101,84),(259,102,6),(260,102,5),(261,102,37),(262,102,10),(263,102,15),(264,102,14),(265,102,19),(266,102,17),(267,102,23),(268,102,21),(269,102,27),(270,102,25),(271,102,31),(272,102,29),(273,102,35),(274,102,2),(275,102,33),(276,102,4),(277,103,1),(278,103,2),(279,104,1),(280,104,2),(281,105,2),(282,106,25),(283,107,2),(284,108,2),(285,109,15),(286,109,14),(287,109,19),(288,109,17),(289,109,23),(290,109,21),(291,109,25),(292,110,1),(293,111,13),(294,112,36),(295,112,38),(296,112,32),(297,112,34),(298,112,30),(299,112,40),(300,112,41),(301,113,16),(302,114,42),(303,114,41),(304,114,44),(305,114,43),(306,114,16),(307,114,45),(308,114,48),(309,114,47),(310,114,34),(311,114,36),(312,114,38),(313,114,40),(314,114,26),(315,114,28),(316,114,30),(317,114,32),(318,114,18),(319,114,20),(320,114,22),(321,115,41),(322,116,16),(323,117,16),(324,118,13),(325,118,16),(326,119,13),(327,119,16);
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
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,97,'<com.agilebinary.mobilemonitor.device.android.device.a.e: void d()>',9,'p',NULL),(2,9,'<com.agilebinary.mobilemonitor.device.android.services.BackgroundService: void a(boolean)>',7,'r',0),(3,98,'<com.agilebinary.mobilemonitor.device.android.device.a.a: void <init>(com.agilebinary.mobilemonitor.device.android.device.a.e,android.os.Handler)>',13,'p',NULL),(4,9,'<com.agilebinary.mobilemonitor.device.android.services.BackgroundService: void a()>',5,'r',0),(5,109,'<com.agilebinary.mobilemonitor.device.android.device.a.l: void <init>(com.agilebinary.mobilemonitor.device.android.device.a.h,android.os.Handler)>',12,'p',NULL),(6,110,'<com.agilebinary.mobilemonitor.device.android.device.a.b: void a()>',18,'p',NULL),(7,111,'<com.agilebinary.mobilemonitor.device.android.device.a.m: void <init>(com.agilebinary.mobilemonitor.device.android.device.a.h,android.os.Handler)>',12,'p',NULL),(8,9,'<com.agilebinary.mobilemonitor.device.android.services.BackgroundService: void a(long)>',7,'r',0),(9,112,'<com.agilebinary.mobilemonitor.device.android.device.a.h: void a()>',18,'p',NULL),(10,112,'<com.agilebinary.mobilemonitor.device.android.device.a.h: void a()>',9,'p',NULL),(11,9,'<com.agilebinary.mobilemonitor.device.android.services.BackgroundService: void a(android.content.Context,java.lang.String)>',7,'s',0),(12,9,'<com.agilebinary.mobilemonitor.device.android.services.BackgroundService: void a(long,int)>',9,'r',0),(13,113,'<com.agilebinary.mobilemonitor.device.android.device.a.i: void d()>',9,'p',NULL),(14,114,'<com.agilebinary.mobilemonitor.device.android.device.a.d: void <init>(com.agilebinary.mobilemonitor.device.android.device.a.b,android.os.Handler)>',10,'p',NULL),(15,115,'<com.agilebinary.mobilemonitor.device.android.device.a.c: void b()>',9,'p',NULL),(16,116,'<com.agilebinary.mobilemonitor.device.android.device.a.b: void <init>(com.agilebinary.mobilemonitor.device.android.device.a.i,android.os.Handler)>',16,'p',NULL),(17,51,'<com.agilebinary.mobilemonitor.device.android.services.BackgroundService: void a(boolean)>',7,'r',0),(18,119,'<com.agilebinary.mobilemonitor.device.android.device.a.j: void <init>(com.agilebinary.mobilemonitor.device.android.device.a.i,android.os.Handler)>',9,'p',NULL),(19,121,'<com.agilebinary.mobilemonitor.device.android.device.a.k: void a()>',9,'p',NULL),(20,116,'<com.agilebinary.mobilemonitor.device.android.device.a.b: void onChange(boolean)>',10,'p',NULL),(21,51,'<com.agilebinary.mobilemonitor.device.android.services.BackgroundService: void a(android.content.Context,java.lang.String,android.net.Uri)>',21,'s',0),(22,129,'<com.agilebinary.mobilemonitor.device.android.device.a.l: boolean b()>',6,'p',0),(23,130,'<com.agilebinary.mobilemonitor.device.android.device.a.a: void <init>(com.agilebinary.mobilemonitor.device.android.device.a.c,android.os.Handler)>',18,'p',NULL),(24,131,'<com.agilebinary.mobilemonitor.device.android.device.a.f: void <init>(com.agilebinary.mobilemonitor.device.android.device.a.l,android.os.Handler)>',18,'p',NULL),(25,121,'<com.agilebinary.mobilemonitor.device.android.device.a.k: void a()>',18,'p',NULL),(26,132,'<com.agilebinary.mobilemonitor.device.android.device.a.n: void <init>(com.agilebinary.mobilemonitor.device.android.device.a.k,android.os.Handler)>',18,'p',NULL),(27,133,'<com.agilebinary.mobilemonitor.device.android.device.a.m: void onChange(boolean)>',17,'p',NULL),(28,129,'<com.agilebinary.mobilemonitor.device.android.device.a.l: void c()>',9,'p',NULL),(29,133,'<com.agilebinary.mobilemonitor.device.android.device.a.m: void <init>(com.agilebinary.mobilemonitor.device.android.device.a.k,android.os.Handler)>',18,'p',NULL),(30,129,'<com.agilebinary.mobilemonitor.device.android.device.a.l: boolean b()>',36,'p',NULL),(31,51,'<com.agilebinary.mobilemonitor.device.android.services.BackgroundService: void a()>',5,'r',0),(32,132,'<com.agilebinary.mobilemonitor.device.android.device.a.n: void onChange(boolean)>',11,'p',NULL),(33,51,'<com.agilebinary.mobilemonitor.device.android.services.BackgroundService: void a(long,int)>',9,'r',0),(34,51,'<com.agilebinary.mobilemonitor.device.android.services.BackgroundService: void a(long)>',7,'r',0),(35,134,'<com.agilebinary.mobilemonitor.device.android.device.a.i: void a()>',18,'p',NULL),(36,46,'<com.agilebinary.mobilemonitor.device.android.ui.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(37,136,'<com.agilebinary.mobilemonitor.device.android.device.a.q: void a()>',18,'p',NULL),(38,139,'<com.agilebinary.mobilemonitor.device.android.device.a.e: void b()>',32,'p',NULL),(39,67,'<com.agilebinary.mobilemonitor.device.android.services.BackgroundService: void a(long)>',7,'r',0),(40,141,'<com.agilebinary.mobilemonitor.device.android.device.a.n: void a()>',20,'p',NULL),(41,144,'<com.agilebinary.mobilemonitor.device.android.device.a.r: void c()>',9,'p',NULL),(42,148,'<com.agilebinary.mobilemonitor.device.android.device.a.s: void <init>(com.agilebinary.mobilemonitor.device.android.device.a.q,android.os.Handler)>',18,'p',NULL),(43,61,'<com.agilebinary.mobilemonitor.device.android.ui.WatcherInstallActivity: void b()>',5,'a',NULL),(44,67,'<com.agilebinary.mobilemonitor.device.android.services.BackgroundService: void a(boolean)>',7,'r',0),(45,150,'<com.agilebinary.mobilemonitor.device.android.ui.w: void onClick(android.view.View)>',8,'a',NULL),(46,162,'<com.agilebinary.mobilemonitor.device.android.device.a.s: void a()>',18,'p',NULL),(47,165,'<com.agilebinary.mobilemonitor.device.android.device.a.e: void b()>',32,'p',NULL),(48,162,'<com.agilebinary.mobilemonitor.device.android.device.a.s: void a()>',9,'p',NULL),(49,171,'<com.agilebinary.mobilemonitor.device.android.device.a.t: void c()>',9,'p',NULL),(50,66,'<com.agilebinary.mobilemonitor.device.android.services.BackgroundService: void a(long,int)>',9,'r',0),(51,60,'<com.agilebinary.mobilemonitor.device.android.ui.WatcherInstallActivity: void b()>',5,'a',NULL),(52,185,'<com.agilebinary.mobilemonitor.device.android.device.observers.e: void b()>',32,'p',NULL),(53,89,'<com.agilebinary.mobilemonitor.device.android.services.accessibilityobserver.MyAccessibilityService: void a(android.content.Context)>',5,'s',0),(54,88,'<com.agilebinary.mobilemonitor.device.android.services.BackgroundService: void a(android.content.Context,java.lang.String,android.net.Uri)>',21,'s',0),(55,186,'<com.agilebinary.mobilemonitor.device.android.device.observers.o: void b()>',20,'p',NULL),(56,88,'<com.agilebinary.mobilemonitor.device.android.services.BackgroundService: void a()>',5,'r',0),(57,67,'<com.agilebinary.mobilemonitor.device.android.services.BackgroundService: void a(long,int)>',9,'r',0),(58,80,'<com.agilebinary.mobilemonitor.device.android.ui.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(59,187,'<com.agilebinary.mobilemonitor.device.android.device.observers.s: void a()>',18,'p',NULL),(60,187,'<com.agilebinary.mobilemonitor.device.android.device.observers.s: void a()>',9,'p',NULL),(61,188,'<com.agilebinary.mobilemonitor.device.android.device.observers.v: void <init>(com.agilebinary.mobilemonitor.device.android.device.observers.s,android.os.Handler)>',18,'p',NULL),(62,189,'<com.agilebinary.mobilemonitor.device.android.device.observers.t: void c()>',9,'p',NULL),(63,80,'<com.agilebinary.mobilemonitor.device.android.ui.MainActivity: void onActivityResult(int,int,android.content.Intent)>',17,'a',NULL),(64,165,'<com.agilebinary.mobilemonitor.device.android.device.a.e: void b()>',9,'p',NULL),(65,66,'<com.agilebinary.mobilemonitor.device.android.services.BackgroundService: void a(boolean)>',7,'r',0),(66,79,'<com.agilebinary.mobilemonitor.device.android.device.receivers.OutgoingCallReceiver: void a(android.content.Context)>',4,'a',NULL),(67,190,'<com.agilebinary.mobilemonitor.device.android.device.a.w: void onChange(boolean)>',11,'p',NULL),(68,139,'<com.agilebinary.mobilemonitor.device.android.device.a.e: void b()>',9,'p',NULL),(69,78,'<com.agilebinary.mobilemonitor.device.android.device.receivers.OutgoingCallReceiver: void a(android.content.Context)>',4,'a',NULL),(70,191,'<com.agilebinary.mobilemonitor.device.android.device.a.c: void <init>(com.agilebinary.mobilemonitor.device.android.device.a.n,android.os.Handler)>',22,'p',NULL),(71,192,'<com.agilebinary.mobilemonitor.device.android.ui.v: void onClick(android.view.View)>',8,'a',NULL),(72,148,'<com.agilebinary.mobilemonitor.device.android.device.a.s: void onChange(boolean)>',17,'p',NULL),(73,193,'<com.agilebinary.mobilemonitor.device.android.device.a.t: void onChange(boolean)>',11,'p',NULL),(74,194,'<com.agilebinary.mobilemonitor.device.android.device.a.c: void <init>(com.agilebinary.mobilemonitor.device.android.device.a.o,android.os.Handler)>',17,'p',NULL),(75,66,'<com.agilebinary.mobilemonitor.device.android.services.BackgroundService: void a()>',5,'r',0),(76,57,'<com.agilebinary.mobilemonitor.device.android.ui.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(77,171,'<com.agilebinary.mobilemonitor.device.android.device.a.t: void c()>',26,'p',0),(78,80,'<com.agilebinary.mobilemonitor.device.android.ui.MainActivity: boolean f()>',7,'a',NULL),(79,195,'<com.agilebinary.mobilemonitor.device.android.device.a.v: void onChange(boolean)>',17,'p',NULL),(80,144,'<com.agilebinary.mobilemonitor.device.android.device.a.r: void c()>',26,'p',0),(81,190,'<com.agilebinary.mobilemonitor.device.android.device.a.w: void <init>(com.agilebinary.mobilemonitor.device.android.device.a.s,android.os.Handler)>',18,'p',NULL),(82,191,'<com.agilebinary.mobilemonitor.device.android.device.a.c: void onChange(boolean)>',16,'p',NULL),(83,66,'<com.agilebinary.mobilemonitor.device.android.services.BackgroundService: void a(android.content.Context,java.lang.String,android.net.Uri)>',21,'s',0),(84,56,'<com.agilebinary.mobilemonitor.device.android.ui.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(85,193,'<com.agilebinary.mobilemonitor.device.android.device.a.t: void <init>(com.agilebinary.mobilemonitor.device.android.device.a.q,android.os.Handler)>',18,'p',NULL),(86,196,'<com.agilebinary.mobilemonitor.device.android.device.a.o: void b()>',20,'p',NULL),(87,136,'<com.agilebinary.mobilemonitor.device.android.device.a.q: void a()>',9,'p',NULL),(88,195,'<com.agilebinary.mobilemonitor.device.android.device.a.v: void <init>(com.agilebinary.mobilemonitor.device.android.device.a.s,android.os.Handler)>',18,'p',NULL),(89,197,'<com.agilebinary.mobilemonitor.device.android.ui.v: void onClick(android.view.View)>',8,'a',NULL),(90,66,'<com.agilebinary.mobilemonitor.device.android.services.BackgroundService: void a(long)>',7,'r',0),(91,67,'<com.agilebinary.mobilemonitor.device.android.services.BackgroundService: void a()>',5,'r',0),(92,67,'<com.agilebinary.mobilemonitor.device.android.services.BackgroundService: void a(android.content.Context,java.lang.String,android.net.Uri)>',21,'s',0),(93,198,'<com.agilebinary.mobilemonitor.device.android.device.observers.c: void <init>(com.agilebinary.mobilemonitor.device.android.device.observers.o,android.os.Handler)>',17,'p',NULL),(94,189,'<com.agilebinary.mobilemonitor.device.android.device.observers.t: void c()>',26,'p',0),(95,88,'<com.agilebinary.mobilemonitor.device.android.services.BackgroundService: void a(long,int)>',9,'r',0),(96,88,'<com.agilebinary.mobilemonitor.device.android.services.BackgroundService: void a(long)>',7,'r',0),(97,88,'<com.agilebinary.mobilemonitor.device.android.services.BackgroundService: void a(boolean)>',7,'r',0),(98,185,'<com.agilebinary.mobilemonitor.device.android.device.observers.e: void b()>',9,'p',NULL),(99,199,'<com.agilebinary.mobilemonitor.device.android.device.observers.w: void <init>(com.agilebinary.mobilemonitor.device.android.device.observers.s,android.os.Handler)>',18,'p',NULL),(100,95,'<com.agilebinary.mobilemonitor.device.android.device.receivers.OutgoingCallReceiver: void a(android.content.Context)>',4,'a',NULL),(101,84,'<com.agilebinary.mobilemonitor.device.android.ui.WatcherInstallActivity: void b()>',5,'a',NULL),(102,200,'<com.agilebinary.mobilemonitor.client.android.ui.BaseLoggedInActivity: void e()>',11,'a',NULL),(103,201,'<com.agilebinary.mobilemonitor.client.android.ui.BaseActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',16,'a',NULL),(104,201,'<com.agilebinary.mobilemonitor.client.android.ui.BaseActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(105,2,'<com.agilebinary.mobilemonitor.client.android.ui.MainActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',13,'a',NULL),(106,25,'<com.agilebinary.mobilemonitor.client.android.ui.EventListActivity_LOC: void a(java.util.List)>',6,'a',NULL),(107,202,'<com.agilebinary.mobilemonitor.client.android.ui.EventListActivity_base: void a(android.content.Context,byte)>',6,'a',NULL),(108,2,'<com.agilebinary.mobilemonitor.client.android.ui.MainActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',30,'a',NULL),(109,202,'<com.agilebinary.mobilemonitor.client.android.ui.EventListActivity_base: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(110,1,'<com.agilebinary.mobilemonitor.client.android.ui.LoginActivity: void onActivityResult(int,int,android.content.Intent)>',24,'a',NULL),(111,13,'<com.agilebinary.mobilemonitor.client.android.ui.LoginActivity: void onActivityResult(int,int,android.content.Intent)>',24,'a',NULL),(112,203,'<com.agilebinary.mobilemonitor.client.android.ui.EventListActivity_base: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(113,16,'<com.agilebinary.mobilemonitor.client.android.ui.MainActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',30,'a',NULL),(114,204,'<com.agilebinary.mobilemonitor.client.android.ui.BaseLoggedInActivity: void e()>',11,'a',NULL),(115,41,'<com.agilebinary.mobilemonitor.client.android.ui.EventListActivity_LOC: void a(java.util.List)>',6,'a',NULL),(116,203,'<com.agilebinary.mobilemonitor.client.android.ui.EventListActivity_base: void a(android.content.Context,byte)>',6,'a',NULL),(117,16,'<com.agilebinary.mobilemonitor.client.android.ui.MainActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',13,'a',NULL),(118,206,'<com.agilebinary.mobilemonitor.client.android.ui.BaseActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',16,'a',NULL),(119,206,'<com.agilebinary.mobilemonitor.client.android.ui.BaseActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,16),(2,2,36),(3,3,16),(4,4,36),(5,5,16),(6,6,37),(7,9,16),(8,10,16),(9,12,16),(10,13,16),(11,15,36),(12,17,16),(13,28,16),(14,43,16),(15,54,16);
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,7,'com/agilebinary/mobilemonitor/device/android/ui/MainActivity'),(2,8,'com/agilebinary/mobilemonitor/device/android/ui/MainActivity'),(3,11,'com/agilebinary/mobilemonitor/device/android/ui/PreAccessibilityConfigActivity'),(4,14,'com/agilebinary/mobilemonitor/device/android/ui/MainActivity'),(5,16,'com/agilebinary/mobilemonitor/client/android/ui/LoginActivity'),(6,18,'com/agilebinary/mobilemonitor/client/android/ui/AboutActivity'),(7,19,'com/agilebinary/mobilemonitor/client/android/ui/ControlPanelActivity'),(8,20,'com/agilebinary/mobilemonitor/client/android/ui/MapActivity_GOOGLE'),(9,21,'com/agilebinary/mobilemonitor/client/android/ui/EventListActivity_SYS'),(10,22,'com/agilebinary/mobilemonitor/client/android/ui/EventListActivity_CLL'),(11,23,'com/agilebinary/mobilemonitor/client/android/ui/EventListActivity_APP'),(12,24,'com/agilebinary/mobilemonitor/client/android/ui/EventListActivity_LOC'),(13,25,'com/agilebinary/mobilemonitor/client/android/ui/EventListActivity_MMS'),(14,26,'com/agilebinary/mobilemonitor/client/android/ui/EventListActivity_WEB'),(15,27,'com/agilebinary/mobilemonitor/client/android/ui/EventListActivity_SMS'),(16,29,'com/agilebinary/mobilemonitor/client/android/ui/EventDetailsActivity_MMS'),(17,30,'com/agilebinary/mobilemonitor/client/android/ui/EventDetailsActivity_CALL'),(18,31,'com/agilebinary/mobilemonitor/client/android/ui/EventDetailsActivity_SYS'),(19,32,'com/agilebinary/mobilemonitor/client/android/ui/EventDetailsActivity_WEB'),(20,33,'com/agilebinary/mobilemonitor/client/android/ui/EventDetailsActivity_SMS'),(21,34,'com/agilebinary/mobilemonitor/client/android/ui/EventDetailsActivity_APP'),(22,35,'com/agilebinary/mobilemonitor/client/android/ui/MainActivity'),(23,36,'com/agilebinary/mobilemonitor/client/android/ui/MainActivity'),(24,37,'com/agilebinary/mobilemonitor/client/android/ui/EventDetailsActivity_APP'),(25,38,'com/agilebinary/mobilemonitor/client/android/ui/EventDetailsActivity_SMS'),(26,39,'com/agilebinary/mobilemonitor/client/android/ui/EventDetailsActivity_CALL'),(27,40,'com/agilebinary/mobilemonitor/client/android/ui/EventDetailsActivity_MMS'),(28,41,'com/agilebinary/mobilemonitor/client/android/ui/EventDetailsActivity_WEB'),(29,42,'com/agilebinary/mobilemonitor/client/android/ui/EventDetailsActivity_SYS'),(30,44,'com/agilebinary/mobilemonitor/client/android/ui/LoginActivity'),(31,45,'com/agilebinary/mobilemonitor/client/android/ui/MapActivity_OSM'),(32,46,'com/agilebinary/mobilemonitor/client/android/ui/EventListActivity_WEB'),(33,47,'com/agilebinary/mobilemonitor/client/android/ui/EventListActivity_SMS'),(34,48,'com/agilebinary/mobilemonitor/client/android/ui/EventListActivity_MMS'),(35,49,'com/agilebinary/mobilemonitor/client/android/ui/EventListActivity_LOC'),(36,50,'com/agilebinary/mobilemonitor/client/android/ui/EventListActivity_CLL'),(37,51,'com/agilebinary/mobilemonitor/client/android/ui/EventListActivity_SYS'),(38,52,'com/agilebinary/mobilemonitor/client/android/ui/EventListActivity_APP'),(39,53,'com/agilebinary/mobilemonitor/client/android/ui/ControlPanelActivity'),(40,55,'com/agilebinary/mobilemonitor/client/android/ui/AboutActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,24),(2,3,30),(3,5,37),(4,9,47),(5,10,50),(6,12,55),(7,13,59),(8,17,63),(9,28,64),(10,43,65),(11,54,66);
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,20,'EXTRA_EVENT_IDS'),(2,21,'EXTRA_EVENT_TYPE'),(3,22,'EXTRA_EVENT_TYPE'),(4,23,'EXTRA_EVENT_TYPE'),(5,24,'EXTRA_EVENT_TYPE'),(6,25,'EXTRA_EVENT_TYPE'),(7,26,'EXTRA_EVENT_TYPE'),(8,27,'EXTRA_EVENT_TYPE'),(9,29,'EXTRA_EVENT_ID'),(10,29,'EXTRA_EVENT_TYPE'),(11,30,'EXTRA_EVENT_ID'),(12,30,'EXTRA_EVENT_TYPE'),(13,31,'EXTRA_EVENT_ID'),(14,31,'EXTRA_EVENT_TYPE'),(15,32,'EXTRA_EVENT_ID'),(16,32,'EXTRA_EVENT_TYPE'),(17,33,'EXTRA_EVENT_ID'),(18,33,'EXTRA_EVENT_TYPE'),(19,34,'EXTRA_EVENT_ID'),(20,34,'EXTRA_EVENT_TYPE'),(21,37,'EXTRA_EVENT_ID'),(22,37,'EXTRA_EVENT_TYPE'),(23,38,'EXTRA_EVENT_ID'),(24,38,'EXTRA_EVENT_TYPE'),(25,39,'EXTRA_EVENT_ID'),(26,39,'EXTRA_EVENT_TYPE'),(27,40,'EXTRA_EVENT_ID'),(28,40,'EXTRA_EVENT_TYPE'),(29,41,'EXTRA_EVENT_ID'),(30,41,'EXTRA_EVENT_TYPE'),(31,42,'EXTRA_EVENT_ID'),(32,42,'EXTRA_EVENT_TYPE'),(33,45,'EXTRA_EVENT_IDS'),(34,46,'EXTRA_EVENT_TYPE'),(35,47,'EXTRA_EVENT_TYPE'),(36,48,'EXTRA_EVENT_TYPE'),(37,49,'EXTRA_EVENT_TYPE'),(38,50,'EXTRA_EVENT_TYPE'),(39,51,'EXTRA_EVENT_TYPE'),(40,52,'EXTRA_EVENT_TYPE');
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
) ENGINE=InnoDB AUTO_INCREMENT=575 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,1),(5,5,1),(6,6,3),(7,7,2),(8,8,4),(9,9,15),(10,9,14),(11,9,13),(12,9,12),(13,9,11),(14,9,10),(15,9,9),(16,9,8),(17,9,5),(18,9,6),(19,9,7),(20,10,16),(21,11,16),(22,12,17),(23,13,17),(24,14,3),(25,15,3),(26,16,2),(27,17,2),(28,18,4),(29,19,4),(30,20,15),(31,20,14),(32,20,13),(33,20,12),(34,20,11),(35,20,10),(36,20,9),(37,20,8),(38,20,7),(39,20,6),(40,20,5),(41,21,13),(42,21,12),(43,21,15),(44,21,14),(45,21,5),(46,21,7),(47,21,6),(48,21,9),(49,21,8),(50,21,11),(51,21,10),(52,22,6),(53,23,6),(54,24,16),(55,25,18),(56,26,18),(57,27,19),(58,28,17),(59,29,3),(60,30,2),(61,31,4),(62,32,6),(63,32,5),(64,32,15),(65,32,12),(66,32,11),(67,32,14),(68,32,13),(69,32,8),(70,32,7),(71,32,10),(72,32,9),(73,33,6),(74,34,18),(75,35,20),(76,36,20),(77,37,20),(78,38,20),(79,39,20),(80,40,20),(81,41,20),(82,42,20),(83,43,20),(84,44,20),(85,45,20),(86,46,21),(87,47,25),(88,47,24),(89,47,23),(90,47,22),(91,47,26),(92,48,27),(93,49,27),(94,50,27),(95,51,27),(96,52,27),(97,53,27),(98,54,27),(99,55,27),(100,56,27),(101,57,27),(102,58,27),(103,59,28),(104,60,31),(105,60,32),(106,60,29),(107,60,30),(108,61,33),(109,62,33),(110,63,33),(111,64,33),(112,65,33),(113,66,33),(114,67,33),(115,68,33),(116,69,33),(117,70,26),(118,70,25),(119,70,22),(120,70,24),(121,70,23),(122,71,33),(123,72,33),(124,73,28),(125,74,34),(126,75,21),(127,76,35),(128,77,35),(129,78,35),(130,79,35),(131,80,35),(132,81,35),(133,82,35),(134,83,35),(135,84,35),(136,85,35),(137,86,35),(138,87,35),(139,88,35),(140,89,35),(141,90,35),(142,91,35),(143,92,35),(144,93,35),(145,94,35),(146,95,35),(147,96,35),(148,97,35),(149,98,35),(150,99,35),(151,100,35),(152,101,33),(153,102,33),(154,103,33),(155,104,33),(156,105,33),(157,106,33),(158,107,33),(159,108,33),(160,109,33),(161,110,33),(162,111,33),(163,112,33),(164,113,33),(165,114,33),(166,115,27),(167,116,27),(168,117,27),(169,118,27),(170,119,27),(171,120,27),(172,121,27),(173,122,27),(174,123,27),(175,124,27),(176,125,27),(177,126,27),(178,127,27),(179,128,27),(180,129,29),(181,129,30),(182,129,32),(183,129,31),(184,130,20),(185,131,20),(186,132,20),(187,133,20),(188,134,20),(189,135,20),(190,136,20),(191,137,20),(192,138,20),(193,139,20),(194,140,20),(195,141,20),(196,142,20),(197,143,20),(198,144,18),(199,145,35),(200,146,35),(201,147,35),(202,148,35),(203,149,35),(204,150,35),(205,151,35),(206,152,35),(207,153,35),(208,154,6),(209,155,35),(210,156,35),(211,157,35),(212,158,35),(213,159,35),(214,160,33),(215,161,35),(216,162,33),(217,163,35),(218,164,33),(219,165,20),(220,166,35),(221,167,20),(222,168,33),(223,169,20),(224,170,35),(225,171,33),(226,172,20),(227,173,35),(228,174,33),(229,175,20),(230,176,35),(231,177,33),(232,178,20),(233,179,33),(234,180,20),(235,181,33),(236,182,20),(237,183,33),(238,184,20),(239,185,33),(240,186,20),(241,187,33),(242,188,33),(243,189,20),(244,190,33),(245,191,28),(246,192,20),(247,193,33),(248,194,20),(249,195,33),(250,196,20),(251,197,33),(252,198,20),(253,199,6),(254,200,27),(255,201,33),(256,202,20),(257,203,27),(258,204,20),(259,205,33),(260,206,27),(261,207,27),(262,208,20),(263,209,33),(264,210,27),(265,211,35),(266,212,20),(267,213,27),(268,214,35),(269,215,27),(270,216,35),(271,217,20),(272,218,27),(273,219,35),(274,220,27),(275,221,35),(276,223,27),(277,222,20),(278,224,35),(279,225,27),(280,226,35),(281,227,27),(282,228,20),(283,229,35),(284,230,27),(285,231,35),(286,232,27),(287,233,35),(288,234,27),(289,235,35),(290,236,27),(291,237,18),(292,238,35),(293,239,27),(294,240,24),(295,240,23),(296,240,26),(297,240,25),(298,240,22),(299,241,27),(300,242,35),(301,243,35),(302,244,27),(303,245,27),(304,246,35),(305,248,33),(306,247,35),(307,249,35),(308,250,33),(309,251,33),(310,252,35),(311,253,35),(312,254,33),(313,255,35),(314,256,35),(315,257,33),(316,258,35),(317,259,35),(318,260,33),(319,261,35),(320,262,33),(321,263,27),(322,264,35),(323,265,33),(324,266,27),(325,267,35),(326,269,33),(327,268,27),(328,270,35),(329,271,33),(330,272,27),(331,273,35),(332,274,27),(333,275,33),(334,276,35),(335,277,27),(336,278,33),(337,279,35),(338,281,27),(339,280,33),(340,282,35),(341,283,27),(342,284,33),(343,285,35),(344,286,27),(345,287,33),(346,288,35),(347,290,33),(348,289,27),(349,291,35),(350,292,27),(351,293,33),(352,294,35),(353,295,33),(354,296,27),(355,297,35),(356,298,33),(357,299,27),(358,300,35),(359,301,33),(360,302,27),(361,303,35),(362,304,20),(363,305,27),(364,306,35),(365,307,20),(366,308,27),(367,309,35),(368,310,20),(369,311,27),(370,312,35),(371,313,20),(372,314,27),(373,315,35),(374,316,20),(375,317,27),(376,318,20),(377,319,27),(378,320,20),(379,321,20),(380,322,20),(381,323,20),(382,324,20),(383,325,20),(384,326,20),(385,327,20),(386,328,20),(387,329,20),(388,330,20),(389,331,20),(390,332,20),(391,333,20),(392,334,20),(393,335,20),(394,336,20),(395,337,20),(396,338,20),(397,339,20),(398,340,20),(399,341,20),(400,342,20),(401,343,20),(402,344,20),(403,345,20),(404,346,20),(405,347,20),(406,348,33),(407,349,20),(408,350,33),(409,351,20),(410,352,33),(411,353,20),(412,354,33),(413,355,20),(414,356,33),(415,357,20),(416,358,33),(417,359,20),(418,360,33),(419,361,33),(420,362,33),(421,363,33),(422,364,21),(423,365,33),(424,366,22),(425,366,24),(426,366,23),(427,366,26),(428,366,25),(429,367,33),(430,368,31),(431,368,32),(432,368,30),(433,368,29),(434,369,33),(435,370,33),(436,371,26),(437,371,24),(438,371,25),(439,371,22),(440,371,23),(441,372,33),(442,373,33),(443,374,33),(444,375,33),(445,376,33),(446,377,33),(447,378,33),(448,379,28),(449,380,33),(450,381,29),(451,382,29),(452,383,29),(453,384,21),(454,385,29),(455,386,29),(456,387,18),(457,388,29),(458,389,29),(459,390,29),(460,391,29),(461,392,29),(462,393,29),(463,394,30),(464,394,29),(465,394,32),(466,394,31),(467,395,29),(468,396,29),(469,397,29),(470,398,29),(471,399,29),(472,400,29),(473,401,29),(474,402,29),(475,403,29),(476,404,29),(477,405,29),(478,406,6),(479,407,38),(480,408,38),(481,409,38),(482,410,38),(483,411,38),(484,412,38),(485,413,38),(486,414,38),(487,415,38),(488,416,38),(489,417,38),(490,418,38),(491,419,38),(492,420,38),(493,421,38),(494,422,38),(495,423,38),(496,424,38),(497,425,38),(498,426,38),(499,427,38),(500,428,38),(501,429,27),(502,430,27),(503,431,27),(504,432,27),(505,433,27),(506,434,27),(507,435,27),(508,436,27),(509,437,27),(510,438,27),(511,439,27),(512,440,27),(513,441,27),(514,442,27),(515,443,27),(516,444,27),(517,445,27),(518,446,27),(519,447,27),(520,448,27),(521,449,27),(522,450,27),(523,451,29),(524,451,30),(525,451,31),(526,451,32),(527,452,21),(528,453,39),(529,454,39),(530,455,39),(531,456,39),(532,457,39),(533,458,39),(534,459,39),(535,460,39),(536,461,39),(537,462,39),(538,463,39),(539,464,39),(540,465,39),(541,466,39),(542,467,39),(543,468,39),(544,469,39),(545,470,39),(546,471,39),(547,472,39),(548,473,39),(549,474,39),(550,475,40),(551,476,40),(552,477,40),(553,478,40),(554,479,40),(555,480,40),(556,481,40),(557,482,40),(558,483,40),(559,484,40),(560,485,40),(561,486,40),(562,487,40),(563,488,40),(564,489,40),(565,490,40),(566,491,40),(567,492,40),(568,493,40),(569,494,40),(570,495,40),(571,496,40),(572,497,28),(573,498,42),(574,498,41);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,4,1),(4,5,1),(5,10,3),(6,10,2),(7,11,3),(8,11,2),(9,24,3),(10,24,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,8,'alarm',NULL,NULL,NULL,NULL,NULL),(2,10,'phonebeagle','open',NULL,NULL,NULL,NULL),(3,11,'phonebeagle','open',NULL,NULL,NULL,NULL),(4,18,'alarm',NULL,NULL,NULL,NULL,NULL),(5,19,'alarm',NULL,NULL,NULL,NULL,NULL),(6,24,'phonebeagle','open',NULL,NULL,NULL,NULL),(7,31,'alarm',NULL,NULL,NULL,NULL,NULL),(8,60,'package',NULL,NULL,NULL,NULL,NULL),(9,129,'package',NULL,NULL,NULL,NULL,NULL),(10,368,'package',NULL,NULL,NULL,NULL,NULL),(11,381,'package',NULL,NULL,NULL,NULL,NULL),(12,382,'package',NULL,NULL,NULL,NULL,NULL),(13,383,'package',NULL,NULL,NULL,NULL,NULL),(14,385,'package',NULL,NULL,NULL,NULL,NULL),(15,386,'package',NULL,NULL,NULL,NULL,NULL),(16,388,'package',NULL,NULL,NULL,NULL,NULL),(17,389,'package',NULL,NULL,NULL,NULL,NULL),(18,390,'package',NULL,NULL,NULL,NULL,NULL),(19,391,'package',NULL,NULL,NULL,NULL,NULL),(20,392,'package',NULL,NULL,NULL,NULL,NULL),(21,393,'package',NULL,NULL,NULL,NULL,NULL),(22,394,'package',NULL,NULL,NULL,NULL,NULL),(23,395,'package',NULL,NULL,NULL,NULL,NULL),(24,396,'package',NULL,NULL,NULL,NULL,NULL),(25,397,'package',NULL,NULL,NULL,NULL,NULL),(26,398,'package',NULL,NULL,NULL,NULL,NULL),(27,399,'package',NULL,NULL,NULL,NULL,NULL),(28,400,'package',NULL,NULL,NULL,NULL,NULL),(29,401,'package',NULL,NULL,NULL,NULL,NULL),(30,402,'package',NULL,NULL,NULL,NULL,NULL),(31,403,'package',NULL,NULL,NULL,NULL,NULL),(32,404,'package',NULL,NULL,NULL,NULL,NULL),(33,405,'package',NULL,NULL,NULL,NULL,NULL),(34,451,'package',NULL,NULL,NULL,NULL,NULL),(35,498,'file',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,7,'com.agilebinary.phonebeagle'),(2,8,'com.agilebinary.phonebeagle'),(3,11,'com.agilebinary.phonebeagle'),(4,14,'com.agilebinary.phonebeagle'),(5,16,'com.biige.client.android'),(6,18,'com.biige.client.android'),(7,19,'com.biige.client.android'),(8,20,'com.biige.client.android'),(9,21,'com.biige.client.android'),(10,22,'com.biige.client.android'),(11,23,'com.biige.client.android'),(12,24,'com.biige.client.android'),(13,25,'com.biige.client.android'),(14,26,'com.biige.client.android'),(15,27,'com.biige.client.android'),(16,29,'com.biige.client.android'),(17,30,'com.biige.client.android'),(18,31,'com.biige.client.android'),(19,32,'com.biige.client.android'),(20,33,'com.biige.client.android'),(21,34,'com.biige.client.android'),(22,35,'com.biige.client.android'),(23,36,'com.agilebinary.phonebeagle.client'),(24,37,'com.agilebinary.phonebeagle.client'),(25,38,'com.agilebinary.phonebeagle.client'),(26,39,'com.agilebinary.phonebeagle.client'),(27,40,'com.agilebinary.phonebeagle.client'),(28,41,'com.agilebinary.phonebeagle.client'),(29,42,'com.agilebinary.phonebeagle.client'),(30,44,'com.agilebinary.phonebeagle.client'),(31,45,'com.agilebinary.phonebeagle.client'),(32,46,'com.agilebinary.phonebeagle.client'),(33,47,'com.agilebinary.phonebeagle.client'),(34,48,'com.agilebinary.phonebeagle.client'),(35,49,'com.agilebinary.phonebeagle.client'),(36,50,'com.agilebinary.phonebeagle.client'),(37,51,'com.agilebinary.phonebeagle.client'),(38,52,'com.agilebinary.phonebeagle.client'),(39,53,'com.agilebinary.phonebeagle.client'),(40,55,'com.agilebinary.phonebeagle.client');
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
) ENGINE=InnoDB AUTO_INCREMENT=499 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,3,0),(3,11,0),(4,13,0),(5,46,0),(6,52,0),(7,53,0),(8,54,0),(9,55,0),(10,56,0),(11,57,0),(12,69,0),(13,68,0),(14,70,0),(15,71,0),(16,72,0),(17,73,0),(18,74,0),(19,75,0),(20,76,0),(21,77,0),(22,78,0),(23,79,0),(24,80,0),(25,82,0),(26,81,0),(27,89,0),(28,90,0),(29,91,0),(30,92,0),(31,93,0),(32,94,0),(33,95,0),(34,96,0),(35,97,0),(36,11,0),(37,98,0),(38,99,0),(39,100,0),(40,101,0),(41,102,0),(42,103,0),(43,104,0),(44,105,0),(45,106,0),(46,107,0),(47,100,0),(48,97,0),(49,11,0),(50,98,0),(51,99,0),(52,100,0),(53,101,0),(54,102,0),(55,103,0),(56,104,0),(57,105,0),(58,106,0),(59,108,0),(60,102,0),(61,97,0),(62,11,0),(63,98,0),(64,99,0),(65,100,0),(66,101,0),(67,102,0),(68,103,0),(69,104,0),(70,109,0),(71,105,0),(72,106,0),(73,110,0),(74,99,0),(75,111,0),(76,97,0),(77,11,0),(78,98,0),(79,99,0),(80,100,0),(81,53,0),(82,101,0),(83,55,0),(84,102,0),(85,112,0),(86,103,0),(87,54,0),(88,104,0),(89,105,0),(90,113,0),(91,106,0),(92,114,0),(93,115,0),(94,116,0),(95,117,0),(96,118,0),(97,119,0),(98,120,0),(99,121,0),(100,109,0),(101,53,0),(102,55,0),(103,112,0),(104,54,0),(105,113,0),(106,114,0),(107,115,0),(108,116,0),(109,117,0),(110,118,0),(111,119,0),(112,120,0),(113,121,0),(114,109,0),(115,53,0),(116,55,0),(117,112,0),(118,54,0),(119,113,0),(120,114,0),(121,115,0),(122,116,0),(123,117,0),(124,118,0),(125,119,0),(126,120,0),(127,121,0),(128,109,0),(129,116,0),(130,53,0),(131,55,0),(132,112,0),(133,54,0),(134,113,0),(135,114,0),(136,115,0),(137,116,0),(138,117,0),(139,118,0),(140,119,0),(141,120,0),(142,121,0),(143,109,0),(144,122,0),(145,82,0),(146,77,0),(147,75,0),(148,123,0),(149,124,0),(150,125,0),(151,126,0),(152,127,0),(153,128,0),(154,129,0),(155,130,0),(156,131,0),(157,132,0),(158,73,0),(159,68,0),(160,81,0),(161,133,0),(162,76,0),(163,79,0),(164,74,0),(165,96,0),(166,134,0),(167,94,0),(168,135,0),(169,93,0),(170,136,0),(171,137,0),(172,138,0),(173,139,0),(174,140,0),(175,141,0),(176,142,0),(177,143,0),(178,144,0),(179,145,0),(180,146,0),(181,147,0),(182,148,0),(183,149,0),(184,150,0),(185,151,0),(186,152,0),(187,153,0),(188,72,0),(189,154,0),(190,69,0),(191,155,0),(192,156,0),(193,157,0),(194,92,0),(195,78,0),(196,90,0),(197,158,0),(198,159,0),(199,160,0),(200,82,0),(201,161,0),(202,162,0),(203,77,0),(204,95,0),(205,163,0),(206,75,0),(207,123,0),(208,164,0),(209,165,0),(210,124,0),(211,81,0),(212,166,0),(213,125,0),(214,76,0),(215,126,0),(216,74,0),(217,167,0),(218,127,0),(219,135,0),(220,128,0),(221,137,0),(222,168,0),(223,130,0),(224,140,0),(225,131,0),(226,143,0),(227,132,0),(228,169,0),(229,145,0),(230,73,0),(231,147,0),(232,68,0),(233,149,0),(234,133,0),(235,151,0),(236,79,0),(237,170,0),(238,153,0),(239,134,0),(240,150,0),(241,136,0),(242,72,0),(243,69,0),(244,139,0),(245,142,0),(246,157,0),(247,78,0),(248,82,0),(249,158,0),(250,77,0),(251,75,0),(252,161,0),(253,96,0),(254,123,0),(255,163,0),(256,94,0),(257,124,0),(258,165,0),(259,93,0),(260,125,0),(261,138,0),(262,126,0),(263,81,0),(264,141,0),(265,127,0),(266,76,0),(267,144,0),(268,74,0),(269,128,0),(270,146,0),(271,130,0),(272,135,0),(273,148,0),(274,137,0),(275,131,0),(276,150,0),(277,140,0),(278,132,0),(279,152,0),(280,73,0),(281,143,0),(282,154,0),(283,145,0),(284,68,0),(285,156,0),(286,147,0),(287,133,0),(288,92,0),(289,149,0),(290,79,0),(291,90,0),(292,151,0),(293,134,0),(294,159,0),(295,136,0),(296,153,0),(297,162,0),(298,139,0),(299,72,0),(300,95,0),(301,142,0),(302,69,0),(303,164,0),(304,82,0),(305,157,0),(306,166,0),(307,77,0),(308,78,0),(309,167,0),(310,75,0),(311,158,0),(312,168,0),(313,123,0),(314,161,0),(315,169,0),(316,124,0),(317,163,0),(318,125,0),(319,165,0),(320,126,0),(321,81,0),(322,127,0),(323,76,0),(324,128,0),(325,74,0),(326,130,0),(327,135,0),(328,131,0),(329,137,0),(330,140,0),(331,132,0),(332,143,0),(333,73,0),(334,145,0),(335,68,0),(336,147,0),(337,133,0),(338,149,0),(339,79,0),(340,151,0),(341,134,0),(342,153,0),(343,136,0),(344,72,0),(345,139,0),(346,69,0),(347,142,0),(348,96,0),(349,157,0),(350,94,0),(351,78,0),(352,93,0),(353,158,0),(354,138,0),(355,161,0),(356,141,0),(357,163,0),(358,144,0),(359,165,0),(360,146,0),(361,148,0),(362,150,0),(363,152,0),(364,171,0),(365,154,0),(366,130,0),(367,156,0),(368,124,0),(369,92,0),(370,90,0),(371,149,0),(372,159,0),(373,162,0),(374,95,0),(375,164,0),(376,166,0),(377,167,0),(378,168,0),(379,172,0),(380,169,0),(381,96,0),(382,94,0),(383,93,0),(384,173,0),(385,138,0),(386,141,0),(387,174,0),(388,144,0),(389,146,0),(390,148,0),(391,150,0),(392,152,0),(393,154,0),(394,137,0),(395,156,0),(396,92,0),(397,90,0),(398,159,0),(399,162,0),(400,95,0),(401,164,0),(402,166,0),(403,167,0),(404,168,0),(405,169,0),(406,175,0),(407,96,0),(408,94,0),(409,93,0),(410,138,0),(411,141,0),(412,144,0),(413,146,0),(414,148,0),(415,150,0),(416,152,0),(417,154,0),(418,156,0),(419,92,0),(420,90,0),(421,159,0),(422,162,0),(423,95,0),(424,164,0),(425,166,0),(426,167,0),(427,168,0),(428,169,0),(429,96,0),(430,94,0),(431,93,0),(432,138,0),(433,141,0),(434,144,0),(435,146,0),(436,148,0),(437,150,0),(438,152,0),(439,154,0),(440,156,0),(441,92,0),(442,90,0),(443,159,0),(444,162,0),(445,95,0),(446,164,0),(447,166,0),(448,167,0),(449,168,0),(450,169,0),(451,141,0),(452,176,0),(453,96,0),(454,94,0),(455,93,0),(456,138,0),(457,141,0),(458,144,0),(459,146,0),(460,148,0),(461,150,0),(462,152,0),(463,154,0),(464,156,0),(465,92,0),(466,90,0),(467,159,0),(468,162,0),(469,95,0),(470,164,0),(471,166,0),(472,167,0),(473,168,0),(474,169,0),(475,96,0),(476,94,0),(477,93,0),(478,138,0),(479,141,0),(480,144,0),(481,146,0),(482,148,0),(483,150,0),(484,152,0),(485,154,0),(486,156,0),(487,92,0),(488,90,0),(489,159,0),(490,162,0),(491,95,0),(492,164,0),(493,166,0),(494,167,0),(495,168,0),(496,169,0),(497,177,0),(498,178,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,36,1,0),(2,43,1,0),(3,45,1,0),(4,51,1,0),(5,58,1,0),(6,63,1,0),(7,66,0,0),(8,69,0,0),(9,71,1,0),(10,76,1,0),(11,78,0,0),(12,84,1,0),(13,89,1,0),(14,100,0,0),(15,101,1,0),(16,102,0,0),(17,103,1,0),(18,104,0,0),(19,105,0,0),(20,106,0,0),(21,107,0,0),(22,107,0,0),(23,107,0,0),(24,107,0,0),(25,107,0,0),(26,107,0,0),(27,107,0,0),(28,108,1,0),(29,109,0,0),(30,109,0,0),(31,109,0,0),(32,109,0,0),(33,109,0,0),(34,109,0,0),(35,110,0,0),(36,111,0,0),(37,112,0,0),(38,112,0,0),(39,112,0,0),(40,112,0,0),(41,112,0,0),(42,112,0,0),(43,113,1,0),(44,114,0,0),(45,115,0,0),(46,116,0,0),(47,116,0,0),(48,116,0,0),(49,116,0,0),(50,116,0,0),(51,116,0,0),(52,116,0,0),(53,117,0,0),(54,118,1,0),(55,119,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=1030 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,43,3,2,NULL),(2,2,3,2,NULL),(3,4,3,2,NULL),(4,15,3,2,NULL),(5,43,11,2,NULL),(6,1,11,2,NULL),(7,10,11,2,NULL),(8,2,11,2,NULL),(9,12,11,2,NULL),(10,4,11,2,NULL),(11,5,11,2,NULL),(12,6,11,2,NULL),(13,15,11,2,NULL),(14,43,97,2,NULL),(15,1,97,2,NULL),(16,10,97,2,NULL),(17,2,97,2,NULL),(18,12,97,2,NULL),(19,4,97,2,NULL),(20,5,97,2,NULL),(21,6,97,2,NULL),(22,15,97,2,NULL),(23,43,98,2,NULL),(24,1,98,2,NULL),(25,10,98,2,NULL),(26,2,98,2,NULL),(27,12,98,2,NULL),(28,4,98,2,NULL),(29,5,98,2,NULL),(30,6,98,2,NULL),(31,15,98,2,NULL),(32,43,108,2,NULL),(33,1,108,2,NULL),(34,10,108,2,NULL),(35,2,108,2,NULL),(36,12,108,2,NULL),(37,4,108,2,NULL),(38,5,108,2,NULL),(39,6,108,2,NULL),(40,15,108,2,NULL),(41,43,99,2,NULL),(42,1,99,2,NULL),(43,10,99,2,NULL),(44,2,99,2,NULL),(45,12,99,2,NULL),(46,4,99,2,NULL),(47,5,99,2,NULL),(48,6,99,2,NULL),(49,15,99,2,NULL),(50,43,100,2,NULL),(51,1,100,2,NULL),(52,10,100,2,NULL),(53,2,100,2,NULL),(54,12,100,2,NULL),(55,4,100,2,NULL),(56,5,100,2,NULL),(57,6,100,2,NULL),(58,15,100,2,NULL),(59,43,101,2,NULL),(60,1,101,2,NULL),(61,10,101,2,NULL),(62,2,101,2,NULL),(63,12,101,2,NULL),(64,4,101,2,NULL),(65,5,101,2,NULL),(66,6,101,2,NULL),(67,15,101,2,NULL),(68,43,102,2,NULL),(69,1,102,2,NULL),(70,10,102,2,NULL),(71,2,102,2,NULL),(72,12,102,2,NULL),(73,4,102,2,NULL),(74,5,102,2,NULL),(75,6,102,2,NULL),(76,15,102,2,NULL),(77,43,103,2,NULL),(78,1,103,2,NULL),(79,10,103,2,NULL),(80,2,103,2,NULL),(81,12,103,2,NULL),(82,4,103,2,NULL),(83,5,103,2,NULL),(84,6,103,2,NULL),(85,15,103,2,NULL),(86,43,104,2,NULL),(87,1,104,2,NULL),(88,10,104,2,NULL),(89,2,104,2,NULL),(90,12,104,2,NULL),(91,4,104,2,NULL),(92,5,104,2,NULL),(93,6,104,2,NULL),(94,15,104,2,NULL),(95,43,105,2,NULL),(96,1,105,2,NULL),(97,10,105,2,NULL),(98,2,105,2,NULL),(99,12,105,2,NULL),(100,4,105,2,NULL),(101,5,105,2,NULL),(102,6,105,2,NULL),(103,15,105,2,NULL),(104,43,106,2,NULL),(105,1,106,2,NULL),(106,10,106,2,NULL),(107,2,106,2,NULL),(108,12,106,2,NULL),(109,4,106,2,NULL),(110,5,106,2,NULL),(111,6,106,2,NULL),(112,15,106,2,NULL),(113,43,107,2,NULL),(114,1,107,2,NULL),(115,10,107,2,NULL),(116,2,107,2,NULL),(117,12,107,2,NULL),(118,4,107,2,NULL),(119,5,107,2,NULL),(120,6,107,2,NULL),(121,15,107,2,NULL),(122,1,1,2,NULL),(123,1,13,2,NULL),(124,43,46,2,NULL),(125,1,52,2,NULL),(126,1,117,2,NULL),(127,1,53,2,NULL),(128,1,54,2,NULL),(129,1,55,2,NULL),(130,1,109,2,NULL),(131,1,110,2,NULL),(132,1,112,2,NULL),(133,1,111,2,NULL),(134,1,114,2,NULL),(135,1,113,2,NULL),(136,1,115,2,NULL),(137,1,116,2,NULL),(138,1,118,2,NULL),(139,1,119,2,NULL),(140,1,120,2,NULL),(141,1,121,2,NULL),(142,2,46,2,NULL),(143,1,69,2,NULL),(144,1,70,2,NULL),(145,1,163,2,NULL),(146,1,72,2,NULL),(147,1,74,2,NULL),(148,1,76,2,NULL),(149,1,78,2,NULL),(150,1,81,2,NULL),(151,1,129,2,NULL),(152,1,145,2,NULL),(153,1,135,2,NULL),(154,1,173,2,NULL),(155,1,137,2,NULL),(156,1,140,2,NULL),(157,1,143,2,NULL),(158,1,147,2,NULL),(159,1,149,2,NULL),(160,1,151,2,NULL),(161,1,153,2,NULL),(162,1,174,2,NULL),(163,1,157,2,NULL),(164,1,172,2,NULL),(165,1,158,2,NULL),(166,1,161,2,NULL),(167,1,165,2,NULL),(168,4,46,2,NULL),(169,1,68,2,NULL),(170,1,71,2,NULL),(171,1,139,2,NULL),(172,1,73,2,NULL),(173,1,75,2,NULL),(174,1,77,2,NULL),(175,1,79,2,NULL),(176,1,82,2,NULL),(177,1,122,2,NULL),(178,1,132,2,NULL),(179,1,123,2,NULL),(180,1,171,2,NULL),(181,1,124,2,NULL),(182,1,125,2,NULL),(183,1,126,2,NULL),(184,1,127,2,NULL),(185,1,160,2,NULL),(186,1,128,2,NULL),(187,1,130,2,NULL),(188,1,131,2,NULL),(189,1,133,2,NULL),(190,1,155,2,NULL),(191,1,134,2,NULL),(192,1,136,2,NULL),(193,1,142,2,NULL),(194,15,46,2,NULL),(195,1,89,2,NULL),(196,1,90,2,NULL),(197,1,91,2,NULL),(198,1,166,2,NULL),(199,1,92,2,NULL),(200,1,93,2,NULL),(201,1,94,2,NULL),(202,1,95,2,NULL),(203,1,96,2,NULL),(204,1,138,2,NULL),(205,1,176,2,NULL),(206,1,141,2,NULL),(207,1,144,2,NULL),(208,1,146,2,NULL),(209,1,175,2,NULL),(210,1,148,2,NULL),(211,1,150,2,NULL),(212,1,152,2,NULL),(213,1,154,2,NULL),(214,1,170,2,NULL),(215,1,156,2,NULL),(216,1,159,2,NULL),(217,1,162,2,NULL),(218,1,177,2,NULL),(219,1,164,2,NULL),(220,1,167,2,NULL),(221,1,168,2,NULL),(222,1,169,2,NULL),(223,43,52,2,NULL),(224,10,52,2,NULL),(225,2,52,2,NULL),(226,12,52,2,NULL),(227,4,52,2,NULL),(228,5,52,2,NULL),(229,6,52,2,NULL),(230,15,52,2,NULL),(231,43,117,2,NULL),(232,10,117,2,NULL),(233,2,117,2,NULL),(234,12,117,2,NULL),(235,4,117,2,NULL),(236,5,117,2,NULL),(237,6,117,2,NULL),(238,15,117,2,NULL),(239,43,53,2,NULL),(240,10,53,2,NULL),(241,2,53,2,NULL),(242,12,53,2,NULL),(243,4,53,2,NULL),(244,5,53,2,NULL),(245,6,53,2,NULL),(246,15,53,2,NULL),(247,43,54,2,NULL),(248,10,54,2,NULL),(249,2,54,2,NULL),(250,12,54,2,NULL),(251,4,54,2,NULL),(252,5,54,2,NULL),(253,6,54,2,NULL),(254,15,54,2,NULL),(255,43,55,2,NULL),(256,10,55,2,NULL),(257,2,55,2,NULL),(258,12,55,2,NULL),(259,4,55,2,NULL),(260,5,55,2,NULL),(261,6,55,2,NULL),(262,15,55,2,NULL),(263,43,109,2,NULL),(264,10,109,2,NULL),(265,2,109,2,NULL),(266,12,109,2,NULL),(267,4,109,2,NULL),(268,5,109,2,NULL),(269,6,109,2,NULL),(270,15,109,2,NULL),(271,43,110,2,NULL),(272,10,110,2,NULL),(273,2,110,2,NULL),(274,12,110,2,NULL),(275,4,110,2,NULL),(276,5,110,2,NULL),(277,6,110,2,NULL),(278,15,110,2,NULL),(279,43,112,2,NULL),(280,10,112,2,NULL),(281,2,112,2,NULL),(282,12,112,2,NULL),(283,4,112,2,NULL),(284,5,112,2,NULL),(285,6,112,2,NULL),(286,15,112,2,NULL),(287,43,111,2,NULL),(288,10,111,2,NULL),(289,2,111,2,NULL),(290,12,111,2,NULL),(291,4,111,2,NULL),(292,5,111,2,NULL),(293,6,111,2,NULL),(294,15,111,2,NULL),(295,43,114,2,NULL),(296,10,114,2,NULL),(297,2,114,2,NULL),(298,12,114,2,NULL),(299,4,114,2,NULL),(300,5,114,2,NULL),(301,6,114,2,NULL),(302,15,114,2,NULL),(303,43,113,2,NULL),(304,10,113,2,NULL),(305,2,113,2,NULL),(306,12,113,2,NULL),(307,4,113,2,NULL),(308,5,113,2,NULL),(309,6,113,2,NULL),(310,15,113,2,NULL),(311,43,115,2,NULL),(312,10,115,2,NULL),(313,2,115,2,NULL),(314,12,115,2,NULL),(315,4,115,2,NULL),(316,5,115,2,NULL),(317,6,115,2,NULL),(318,15,115,2,NULL),(319,43,116,2,NULL),(320,10,116,2,NULL),(321,2,116,2,NULL),(322,12,116,2,NULL),(323,4,116,2,NULL),(324,5,116,2,NULL),(325,6,116,2,NULL),(326,15,116,2,NULL),(327,43,118,2,NULL),(328,10,118,2,NULL),(329,2,118,2,NULL),(330,12,118,2,NULL),(331,4,118,2,NULL),(332,5,118,2,NULL),(333,6,118,2,NULL),(334,15,118,2,NULL),(335,43,119,2,NULL),(336,10,119,2,NULL),(337,2,119,2,NULL),(338,12,119,2,NULL),(339,4,119,2,NULL),(340,5,119,2,NULL),(341,6,119,2,NULL),(342,15,119,2,NULL),(343,43,120,2,NULL),(344,10,120,2,NULL),(345,2,120,2,NULL),(346,12,120,2,NULL),(347,4,120,2,NULL),(348,5,120,2,NULL),(349,6,120,2,NULL),(350,15,120,2,NULL),(351,43,121,2,NULL),(352,10,121,2,NULL),(353,2,121,2,NULL),(354,12,121,2,NULL),(355,4,121,2,NULL),(356,5,121,2,NULL),(357,6,121,2,NULL),(358,15,121,2,NULL),(359,10,1,2,NULL),(360,10,13,2,NULL),(361,10,69,2,NULL),(362,10,70,2,NULL),(363,10,163,2,NULL),(364,10,72,2,NULL),(365,10,74,2,NULL),(366,10,76,2,NULL),(367,10,78,2,NULL),(368,10,81,2,NULL),(369,10,129,2,NULL),(370,10,145,2,NULL),(371,10,135,2,NULL),(372,10,173,2,NULL),(373,10,137,2,NULL),(374,10,140,2,NULL),(375,10,143,2,NULL),(376,10,147,2,NULL),(377,10,149,2,NULL),(378,10,151,2,NULL),(379,10,153,2,NULL),(380,10,174,2,NULL),(381,10,157,2,NULL),(382,10,172,2,NULL),(383,10,158,2,NULL),(384,10,161,2,NULL),(385,10,165,2,NULL),(386,10,68,2,NULL),(387,10,71,2,NULL),(388,10,139,2,NULL),(389,10,73,2,NULL),(390,10,75,2,NULL),(391,10,77,2,NULL),(392,10,79,2,NULL),(393,10,82,2,NULL),(394,10,122,2,NULL),(395,10,132,2,NULL),(396,10,123,2,NULL),(397,10,171,2,NULL),(398,10,124,2,NULL),(399,10,125,2,NULL),(400,10,126,2,NULL),(401,10,127,2,NULL),(402,10,160,2,NULL),(403,10,128,2,NULL),(404,10,130,2,NULL),(405,10,131,2,NULL),(406,10,133,2,NULL),(407,10,155,2,NULL),(408,10,134,2,NULL),(409,10,136,2,NULL),(410,10,142,2,NULL),(411,10,89,2,NULL),(412,10,90,2,NULL),(413,10,91,2,NULL),(414,10,166,2,NULL),(415,10,92,2,NULL),(416,10,93,2,NULL),(417,10,94,2,NULL),(418,10,95,2,NULL),(419,10,96,2,NULL),(420,10,138,2,NULL),(421,10,176,2,NULL),(422,10,141,2,NULL),(423,10,144,2,NULL),(424,10,146,2,NULL),(425,10,175,2,NULL),(426,10,148,2,NULL),(427,10,150,2,NULL),(428,10,152,2,NULL),(429,10,154,2,NULL),(430,10,170,2,NULL),(431,10,156,2,NULL),(432,10,159,2,NULL),(433,10,162,2,NULL),(434,10,177,2,NULL),(435,10,164,2,NULL),(436,10,167,2,NULL),(437,10,168,2,NULL),(438,10,169,2,NULL),(439,2,1,2,NULL),(440,2,13,2,NULL),(441,2,69,2,NULL),(442,2,70,2,NULL),(443,2,163,2,NULL),(444,2,72,2,NULL),(445,2,74,2,NULL),(446,2,76,2,NULL),(447,2,78,2,NULL),(448,2,81,2,NULL),(449,2,129,2,NULL),(450,2,145,2,NULL),(451,2,135,2,NULL),(452,2,173,2,NULL),(453,2,137,2,NULL),(454,2,140,2,NULL),(455,2,143,2,NULL),(456,2,147,2,NULL),(457,2,149,2,NULL),(458,2,151,2,NULL),(459,2,153,2,NULL),(460,2,174,2,NULL),(461,2,157,2,NULL),(462,2,172,2,NULL),(463,2,158,2,NULL),(464,2,161,2,NULL),(465,2,165,2,NULL),(466,2,68,2,NULL),(467,2,71,2,NULL),(468,2,139,2,NULL),(469,2,73,2,NULL),(470,2,75,2,NULL),(471,2,77,2,NULL),(472,2,79,2,NULL),(473,2,82,2,NULL),(474,2,122,2,NULL),(475,2,132,2,NULL),(476,2,123,2,NULL),(477,2,171,2,NULL),(478,2,124,2,NULL),(479,2,125,2,NULL),(480,2,126,2,NULL),(481,2,127,2,NULL),(482,2,160,2,NULL),(483,2,128,2,NULL),(484,2,130,2,NULL),(485,2,131,2,NULL),(486,2,133,2,NULL),(487,2,155,2,NULL),(488,2,134,2,NULL),(489,2,136,2,NULL),(490,2,142,2,NULL),(491,2,89,2,NULL),(492,2,90,2,NULL),(493,2,91,2,NULL),(494,2,166,2,NULL),(495,2,92,2,NULL),(496,2,93,2,NULL),(497,2,94,2,NULL),(498,2,95,2,NULL),(499,2,96,2,NULL),(500,2,138,2,NULL),(501,2,176,2,NULL),(502,2,141,2,NULL),(503,2,144,2,NULL),(504,2,146,2,NULL),(505,2,175,2,NULL),(506,2,148,2,NULL),(507,2,150,2,NULL),(508,2,152,2,NULL),(509,2,154,2,NULL),(510,2,170,2,NULL),(511,2,156,2,NULL),(512,2,159,2,NULL),(513,2,162,2,NULL),(514,2,177,2,NULL),(515,2,164,2,NULL),(516,2,167,2,NULL),(517,2,168,2,NULL),(518,2,169,2,NULL),(519,43,69,2,NULL),(520,12,69,2,NULL),(521,4,69,2,NULL),(522,5,69,2,NULL),(523,6,69,2,NULL),(524,15,69,2,NULL),(525,43,70,2,NULL),(526,12,70,2,NULL),(527,4,70,2,NULL),(528,5,70,2,NULL),(529,6,70,2,NULL),(530,15,70,2,NULL),(531,43,163,2,NULL),(532,12,163,2,NULL),(533,4,163,2,NULL),(534,5,163,2,NULL),(535,6,163,2,NULL),(536,15,163,2,NULL),(537,43,72,2,NULL),(538,12,72,2,NULL),(539,4,72,2,NULL),(540,5,72,2,NULL),(541,6,72,2,NULL),(542,15,72,2,NULL),(543,43,74,2,NULL),(544,12,74,2,NULL),(545,4,74,2,NULL),(546,5,74,2,NULL),(547,6,74,2,NULL),(548,15,74,2,NULL),(549,43,76,2,NULL),(550,12,76,2,NULL),(551,4,76,2,NULL),(552,5,76,2,NULL),(553,6,76,2,NULL),(554,15,76,2,NULL),(555,8,3,2,NULL),(556,8,46,2,NULL),(557,8,56,2,NULL),(558,8,57,2,NULL),(559,8,80,2,NULL),(560,43,78,2,NULL),(561,12,78,2,NULL),(562,4,78,2,NULL),(563,5,78,2,NULL),(564,6,78,2,NULL),(565,15,78,2,NULL),(566,43,81,2,NULL),(567,12,81,2,NULL),(568,4,81,2,NULL),(569,5,81,2,NULL),(570,6,81,2,NULL),(571,15,81,2,NULL),(572,43,129,2,NULL),(573,12,129,2,NULL),(574,4,129,2,NULL),(575,5,129,2,NULL),(576,6,129,2,NULL),(577,15,129,2,NULL),(578,43,145,2,NULL),(579,12,145,2,NULL),(580,4,145,2,NULL),(581,5,145,2,NULL),(582,6,145,2,NULL),(583,15,145,2,NULL),(584,43,135,2,NULL),(585,12,135,2,NULL),(586,4,135,2,NULL),(587,5,135,2,NULL),(588,6,135,2,NULL),(589,15,135,2,NULL),(590,43,173,2,NULL),(591,12,173,2,NULL),(592,4,173,2,NULL),(593,5,173,2,NULL),(594,6,173,2,NULL),(595,15,173,2,NULL),(596,43,137,2,NULL),(597,12,137,2,NULL),(598,4,137,2,NULL),(599,5,137,2,NULL),(600,6,137,2,NULL),(601,15,137,2,NULL),(602,43,140,2,NULL),(603,12,140,2,NULL),(604,4,140,2,NULL),(605,5,140,2,NULL),(606,6,140,2,NULL),(607,15,140,2,NULL),(608,43,143,2,NULL),(609,12,143,2,NULL),(610,4,143,2,NULL),(611,5,143,2,NULL),(612,6,143,2,NULL),(613,15,143,2,NULL),(614,43,147,2,NULL),(615,12,147,2,NULL),(616,4,147,2,NULL),(617,5,147,2,NULL),(618,6,147,2,NULL),(619,15,147,2,NULL),(620,43,149,2,NULL),(621,12,149,2,NULL),(622,4,149,2,NULL),(623,5,149,2,NULL),(624,6,149,2,NULL),(625,15,149,2,NULL),(626,43,151,2,NULL),(627,12,151,2,NULL),(628,4,151,2,NULL),(629,5,151,2,NULL),(630,6,151,2,NULL),(631,15,151,2,NULL),(632,43,153,2,NULL),(633,12,153,2,NULL),(634,4,153,2,NULL),(635,5,153,2,NULL),(636,6,153,2,NULL),(637,15,153,2,NULL),(638,43,174,2,NULL),(639,12,174,2,NULL),(640,4,174,2,NULL),(641,5,174,2,NULL),(642,6,174,2,NULL),(643,15,174,2,NULL),(644,43,157,2,NULL),(645,12,157,2,NULL),(646,4,157,2,NULL),(647,5,157,2,NULL),(648,6,157,2,NULL),(649,15,157,2,NULL),(650,43,172,2,NULL),(651,12,172,2,NULL),(652,4,172,2,NULL),(653,5,172,2,NULL),(654,6,172,2,NULL),(655,15,172,2,NULL),(656,43,158,2,NULL),(657,12,158,2,NULL),(658,4,158,2,NULL),(659,5,158,2,NULL),(660,6,158,2,NULL),(661,15,158,2,NULL),(662,43,161,2,NULL),(663,12,161,2,NULL),(664,4,161,2,NULL),(665,5,161,2,NULL),(666,6,161,2,NULL),(667,15,161,2,NULL),(668,43,165,2,NULL),(669,12,165,2,NULL),(670,4,165,2,NULL),(671,5,165,2,NULL),(672,6,165,2,NULL),(673,15,165,2,NULL),(674,12,1,2,NULL),(675,12,13,2,NULL),(676,12,68,2,NULL),(677,12,71,2,NULL),(678,12,139,2,NULL),(679,12,73,2,NULL),(680,12,75,2,NULL),(681,12,77,2,NULL),(682,12,79,2,NULL),(683,12,82,2,NULL),(684,12,122,2,NULL),(685,12,132,2,NULL),(686,12,123,2,NULL),(687,12,171,2,NULL),(688,12,124,2,NULL),(689,12,125,2,NULL),(690,12,126,2,NULL),(691,12,127,2,NULL),(692,12,160,2,NULL),(693,12,128,2,NULL),(694,12,130,2,NULL),(695,12,131,2,NULL),(696,12,133,2,NULL),(697,12,155,2,NULL),(698,12,134,2,NULL),(699,12,136,2,NULL),(700,12,142,2,NULL),(701,12,89,2,NULL),(702,12,90,2,NULL),(703,12,91,2,NULL),(704,12,166,2,NULL),(705,12,92,2,NULL),(706,12,93,2,NULL),(707,12,94,2,NULL),(708,12,95,2,NULL),(709,12,96,2,NULL),(710,12,138,2,NULL),(711,12,176,2,NULL),(712,12,141,2,NULL),(713,12,144,2,NULL),(714,12,146,2,NULL),(715,12,175,2,NULL),(716,12,148,2,NULL),(717,12,150,2,NULL),(718,12,152,2,NULL),(719,12,154,2,NULL),(720,12,170,2,NULL),(721,12,156,2,NULL),(722,12,159,2,NULL),(723,12,162,2,NULL),(724,12,177,2,NULL),(725,12,164,2,NULL),(726,12,167,2,NULL),(727,12,168,2,NULL),(728,12,169,2,NULL),(729,4,1,2,NULL),(730,4,13,2,NULL),(731,4,68,2,NULL),(732,4,71,2,NULL),(733,4,139,2,NULL),(734,4,73,2,NULL),(735,4,75,2,NULL),(736,4,77,2,NULL),(737,4,79,2,NULL),(738,4,82,2,NULL),(739,4,122,2,NULL),(740,4,132,2,NULL),(741,4,123,2,NULL),(742,4,171,2,NULL),(743,4,124,2,NULL),(744,4,125,2,NULL),(745,4,126,2,NULL),(746,4,127,2,NULL),(747,4,160,2,NULL),(748,4,128,2,NULL),(749,4,130,2,NULL),(750,4,131,2,NULL),(751,4,133,2,NULL),(752,4,155,2,NULL),(753,4,134,2,NULL),(754,4,136,2,NULL),(755,4,142,2,NULL),(756,4,89,2,NULL),(757,4,90,2,NULL),(758,4,91,2,NULL),(759,4,166,2,NULL),(760,4,92,2,NULL),(761,4,93,2,NULL),(762,4,94,2,NULL),(763,4,95,2,NULL),(764,4,96,2,NULL),(765,4,138,2,NULL),(766,4,176,2,NULL),(767,4,141,2,NULL),(768,4,144,2,NULL),(769,4,146,2,NULL),(770,4,175,2,NULL),(771,4,148,2,NULL),(772,4,150,2,NULL),(773,4,152,2,NULL),(774,4,154,2,NULL),(775,4,170,2,NULL),(776,4,156,2,NULL),(777,4,159,2,NULL),(778,4,162,2,NULL),(779,4,177,2,NULL),(780,4,164,2,NULL),(781,4,167,2,NULL),(782,4,168,2,NULL),(783,4,169,2,NULL),(784,43,68,2,NULL),(785,5,68,2,NULL),(786,6,68,2,NULL),(787,15,68,2,NULL),(788,43,71,2,NULL),(789,5,71,2,NULL),(790,6,71,2,NULL),(791,15,71,2,NULL),(792,43,139,2,NULL),(793,5,139,2,NULL),(794,6,139,2,NULL),(795,15,139,2,NULL),(796,43,73,2,NULL),(797,5,73,2,NULL),(798,6,73,2,NULL),(799,15,73,2,NULL),(800,43,75,2,NULL),(801,5,75,2,NULL),(802,6,75,2,NULL),(803,15,75,2,NULL),(804,43,77,2,NULL),(805,5,77,2,NULL),(806,6,77,2,NULL),(807,15,77,2,NULL),(808,7,3,2,NULL),(809,7,46,2,NULL),(810,7,56,2,NULL),(811,7,57,2,NULL),(812,7,80,2,NULL),(813,43,79,2,NULL),(814,5,79,2,NULL),(815,6,79,2,NULL),(816,15,79,2,NULL),(817,43,82,2,NULL),(818,5,82,2,NULL),(819,6,82,2,NULL),(820,15,82,2,NULL),(821,43,122,2,NULL),(822,5,122,2,NULL),(823,6,122,2,NULL),(824,15,122,2,NULL),(825,43,132,2,NULL),(826,5,132,2,NULL),(827,6,132,2,NULL),(828,15,132,2,NULL),(829,43,123,2,NULL),(830,5,123,2,NULL),(831,6,123,2,NULL),(832,15,123,2,NULL),(833,43,171,2,NULL),(834,5,171,2,NULL),(835,6,171,2,NULL),(836,15,171,2,NULL),(837,43,124,2,NULL),(838,5,124,2,NULL),(839,6,124,2,NULL),(840,15,124,2,NULL),(841,43,125,2,NULL),(842,5,125,2,NULL),(843,6,125,2,NULL),(844,15,125,2,NULL),(845,43,126,2,NULL),(846,5,126,2,NULL),(847,6,126,2,NULL),(848,15,126,2,NULL),(849,43,127,2,NULL),(850,5,127,2,NULL),(851,6,127,2,NULL),(852,15,127,2,NULL),(853,43,160,2,NULL),(854,5,160,2,NULL),(855,6,160,2,NULL),(856,15,160,2,NULL),(857,43,128,2,NULL),(858,5,128,2,NULL),(859,6,128,2,NULL),(860,15,128,2,NULL),(861,43,130,2,NULL),(862,5,130,2,NULL),(863,6,130,2,NULL),(864,15,130,2,NULL),(865,43,131,2,NULL),(866,5,131,2,NULL),(867,6,131,2,NULL),(868,15,131,2,NULL),(869,43,133,2,NULL),(870,5,133,2,NULL),(871,6,133,2,NULL),(872,15,133,2,NULL),(873,43,155,2,NULL),(874,5,155,2,NULL),(875,6,155,2,NULL),(876,15,155,2,NULL),(877,43,134,2,NULL),(878,5,134,2,NULL),(879,6,134,2,NULL),(880,15,134,2,NULL),(881,43,136,2,NULL),(882,5,136,2,NULL),(883,6,136,2,NULL),(884,15,136,2,NULL),(885,43,142,2,NULL),(886,5,142,2,NULL),(887,6,142,2,NULL),(888,15,142,2,NULL),(889,11,85,2,NULL),(890,5,1,2,NULL),(891,6,1,2,NULL),(892,5,13,2,NULL),(893,6,13,2,NULL),(894,5,89,2,NULL),(895,6,89,2,NULL),(896,5,90,2,NULL),(897,6,90,2,NULL),(898,5,91,2,NULL),(899,6,91,2,NULL),(900,5,166,2,NULL),(901,6,166,2,NULL),(902,5,92,2,NULL),(903,6,92,2,NULL),(904,5,93,2,NULL),(905,6,93,2,NULL),(906,5,94,2,NULL),(907,6,94,2,NULL),(908,5,95,2,NULL),(909,6,95,2,NULL),(910,5,96,2,NULL),(911,6,96,2,NULL),(912,5,138,2,NULL),(913,6,138,2,NULL),(914,5,176,2,NULL),(915,6,176,2,NULL),(916,5,141,2,NULL),(917,6,141,2,NULL),(918,5,144,2,NULL),(919,6,144,2,NULL),(920,5,146,2,NULL),(921,6,146,2,NULL),(922,5,175,2,NULL),(923,6,175,2,NULL),(924,5,148,2,NULL),(925,6,148,2,NULL),(926,5,150,2,NULL),(927,6,150,2,NULL),(928,5,152,2,NULL),(929,6,152,2,NULL),(930,5,154,2,NULL),(931,6,154,2,NULL),(932,5,170,2,NULL),(933,6,170,2,NULL),(934,5,156,2,NULL),(935,6,156,2,NULL),(936,5,159,2,NULL),(937,6,159,2,NULL),(938,5,162,2,NULL),(939,6,162,2,NULL),(940,5,177,2,NULL),(941,6,177,2,NULL),(942,5,164,2,NULL),(943,6,164,2,NULL),(944,5,167,2,NULL),(945,6,167,2,NULL),(946,5,168,2,NULL),(947,6,168,2,NULL),(948,5,169,2,NULL),(949,6,169,2,NULL),(950,15,1,2,NULL),(951,15,13,2,NULL),(952,15,89,2,NULL),(953,15,89,2,NULL),(954,15,90,2,NULL),(955,15,91,2,NULL),(956,15,166,2,NULL),(957,15,92,2,NULL),(958,15,93,2,NULL),(959,15,93,2,NULL),(960,15,94,2,NULL),(961,15,95,2,NULL),(962,15,96,2,NULL),(963,15,138,2,NULL),(964,15,176,2,NULL),(965,15,141,2,NULL),(966,15,144,2,NULL),(967,15,146,2,NULL),(968,15,175,2,NULL),(969,15,148,2,NULL),(970,15,150,2,NULL),(971,15,150,2,NULL),(972,15,152,2,NULL),(973,15,154,2,NULL),(974,15,170,2,NULL),(975,15,156,2,NULL),(976,15,159,2,NULL),(977,15,162,2,NULL),(978,15,177,2,NULL),(979,15,164,2,NULL),(980,15,167,2,NULL),(981,15,168,2,NULL),(982,15,169,2,NULL),(983,43,89,2,NULL),(984,43,90,2,NULL),(985,43,91,2,NULL),(986,43,166,2,NULL),(987,43,92,2,NULL),(988,43,93,2,NULL),(989,43,94,2,NULL),(990,14,3,2,NULL),(991,14,3,2,NULL),(992,14,46,2,NULL),(993,14,56,2,NULL),(994,14,57,2,NULL),(995,14,80,2,NULL),(996,43,95,2,NULL),(997,43,96,2,NULL),(998,43,138,2,NULL),(999,43,176,2,NULL),(1000,43,176,2,NULL),(1001,43,141,2,NULL),(1002,43,144,2,NULL),(1003,43,146,2,NULL),(1004,43,175,2,NULL),(1005,43,148,2,NULL),(1006,43,150,2,NULL),(1007,43,152,2,NULL),(1008,43,154,2,NULL),(1009,43,170,2,NULL),(1010,43,156,2,NULL),(1011,43,159,2,NULL),(1012,43,162,2,NULL),(1013,43,177,2,NULL),(1014,43,164,2,NULL),(1015,43,167,2,NULL),(1016,43,168,2,NULL),(1017,43,169,2,NULL),(1018,35,2,2,NULL),(1019,36,2,2,NULL),(1020,35,16,2,NULL),(1021,36,16,2,NULL),(1022,43,1,2,NULL),(1023,43,13,2,NULL),(1024,19,10,2,NULL),(1025,53,10,2,NULL),(1026,19,26,2,NULL),(1027,53,26,2,NULL),(1028,20,12,2,NULL),(1029,45,28,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (27,'<NULL>'),(8,'android.permission.ACCESS_COARSE_UPDATES'),(14,'android.permission.ACCESS_FINE_LOCATION'),(15,'android.permission.ACCESS_NETWORK_STATE'),(4,'android.permission.ACCESS_WIFI_STATE'),(18,'android.permission.BIND_DEVICE_ADMIN'),(22,'android.permission.CALL_PHONE'),(13,'android.permission.CHANGE_WIFI_STATE'),(19,'android.permission.GET_TASKS'),(12,'android.permission.INTERNET'),(25,'android.permission.KILL_BACKGROUND_PROCESSES'),(2,'android.permission.PROCESS_OUTGOING_CALLS'),(6,'android.permission.READ_CONTACTS'),(21,'android.permission.READ_LOGS'),(9,'android.permission.READ_PHONE_STATE'),(10,'android.permission.READ_SMS'),(11,'android.permission.RECEIVE_BOOT_COMPLETED'),(24,'android.permission.RECEIVE_MMS'),(5,'android.permission.RECEIVE_SMS'),(1,'android.permission.SEND_SMS'),(16,'android.permission.WAKE_LOCK'),(7,'android.permission.WRITE_CONTACTS'),(20,'android.permission.WRITE_EXTERNAL_STORAGE'),(26,'android.permission.WRITE_MEDIA_STORAGE'),(3,'android.permission.WRITE_SMS'),(17,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(23,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS');
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://mms-sms',NULL,NULL,NULL),(2,NULL,NULL,'content://mms',NULL,NULL,NULL),(3,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(4,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(5,NULL,NULL,'content://browser/searches',NULL,NULL,NULL),(6,NULL,NULL,'content://browser/searches',NULL,NULL,NULL),(7,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(8,NULL,NULL,'content://mms-sms',NULL,NULL,NULL),(9,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(10,NULL,NULL,'content://mms-sms',NULL,NULL,NULL),(11,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(12,NULL,NULL,'content://sms',NULL,NULL,NULL),(13,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(14,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(15,NULL,NULL,'content://mms',NULL,NULL,NULL),(16,NULL,NULL,'content://sms',NULL,NULL,NULL),(17,NULL,NULL,'content://browser/searches',NULL,NULL,NULL),(18,NULL,NULL,'content://browser/searches',NULL,NULL,NULL),(19,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(20,NULL,NULL,'content://mms-sms',NULL,NULL,NULL),(21,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(22,NULL,NULL,'content://browser/searches',NULL,NULL,NULL),(23,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'content://browser/searches',NULL,NULL,NULL),(26,NULL,NULL,'content://mms',NULL,NULL,NULL),(27,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(28,NULL,NULL,'content://mms-sms',NULL,NULL,NULL),(29,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(30,NULL,NULL,'(.*)',NULL,NULL,NULL),(31,NULL,NULL,'content://browser/searches',NULL,NULL,NULL),(32,NULL,NULL,'content://mms',NULL,NULL,NULL),(33,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(34,NULL,NULL,'content://mms-sms',NULL,NULL,NULL),(35,NULL,NULL,'content://mms',NULL,NULL,NULL),(36,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(37,NULL,NULL,'(.*)',NULL,NULL,NULL),(38,NULL,NULL,'content://browser/searches',NULL,NULL,NULL),(39,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(40,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(41,NULL,NULL,'content://mms-sms',NULL,NULL,NULL),(42,NULL,NULL,'content://mms-sms',NULL,NULL,NULL),(43,NULL,NULL,'content://browser/searches',NULL,NULL,NULL),(44,NULL,NULL,'content://mms-sms',NULL,NULL,NULL),(45,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(46,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(47,NULL,NULL,'(.*)',NULL,NULL,NULL),(48,NULL,NULL,'content://browser/searches',NULL,NULL,NULL),(49,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(50,NULL,NULL,'(.*)',NULL,NULL,NULL),(51,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(52,NULL,NULL,'content://browser/searches',NULL,NULL,NULL),(53,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(54,NULL,NULL,'content://browser/searches',NULL,NULL,NULL),(55,NULL,NULL,'(.*)',NULL,NULL,NULL),(56,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(57,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(58,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(59,NULL,NULL,'(.*)',NULL,NULL,NULL),(60,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(61,NULL,NULL,'content://mms-sms',NULL,NULL,NULL),(62,NULL,NULL,'content://browser/searches',NULL,NULL,NULL),(63,NULL,NULL,'',NULL,NULL,NULL),(64,NULL,NULL,'https://api.biige.com/buy.php?upgrade=true&key=(.*)',NULL,NULL,NULL),(65,NULL,NULL,'N/A(.*)',NULL,NULL,NULL),(66,NULL,NULL,'http://www.phonebeagle.com/help_ac.html',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,1,1),(2,3,2),(3,5,3),(4,6,4),(5,7,5),(6,9,6),(7,10,7),(8,13,8),(9,14,9),(10,15,10),(11,16,11),(12,18,12),(13,19,13),(14,20,14),(15,23,15),(16,24,16),(17,25,17),(18,26,18),(19,27,19),(20,28,20),(21,29,21),(22,30,NULL),(23,32,22),(24,35,23),(25,37,25),(26,38,26),(27,40,27),(28,41,28),(29,42,29),(30,46,31),(31,47,32),(32,48,33),(33,49,34),(34,52,35),(35,55,36),(36,59,38),(37,60,39),(38,61,40),(39,62,41),(40,64,42),(41,67,43),(42,68,44),(43,70,45),(44,72,46),(45,73,48),(46,74,49),(47,79,51),(48,81,52),(49,82,53),(50,85,54),(51,86,56),(52,87,57),(53,88,58),(54,93,60),(55,98,61),(56,99,62);
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
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,2,16),(8,1,7),(9,2,12),(10,1,8),(11,2,15),(12,1,9),(13,1,10),(14,1,11),(15,1,12),(16,1,13),(17,1,14),(18,1,15),(19,1,17),(20,1,16),(21,3,16),(22,3,12),(23,3,15),(24,4,1),(25,4,2),(26,4,3),(27,4,4),(28,4,5),(29,4,6),(30,4,7),(31,4,8),(32,4,9),(33,4,10),(34,4,11),(35,4,12),(36,4,13),(37,4,14),(38,4,15),(39,4,17),(40,4,16),(41,6,1),(42,5,1),(43,6,2),(44,5,2),(45,6,3),(46,5,3),(47,6,4),(48,5,4),(49,6,5),(50,5,5),(51,6,6),(52,5,6),(53,6,7),(54,5,7),(55,6,8),(56,5,8),(57,6,9),(58,5,9),(59,6,10),(60,5,10),(61,6,11),(62,5,11),(63,6,12),(64,5,12),(65,6,13),(66,5,13),(67,6,14),(68,5,14),(69,6,15),(70,5,15),(71,6,17),(72,5,17),(73,6,16),(74,5,16),(75,6,19),(76,5,19),(77,6,21),(78,5,21),(79,6,20),(80,5,20),(81,6,23),(82,5,23),(83,6,22),(84,5,22),(85,6,25),(86,5,25),(87,6,24),(88,5,24),(89,7,1),(90,7,2),(91,7,3),(92,7,4),(93,7,5),(94,7,6),(95,7,7),(96,7,8),(97,7,9),(98,7,10),(99,7,11),(100,7,12),(101,7,13),(102,7,14),(103,7,15),(104,7,17),(105,7,16),(106,7,19),(107,7,21),(108,7,20),(109,7,23),(110,7,22),(111,7,25),(112,7,24),(113,7,26);
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

-- Dump completed on 2015-10-12  3:31:14
