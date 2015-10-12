-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_4
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (45,'DELIVERED_SMS_ACTION'),(44,'SENT_SMS_ACTION'),(8,'alei.switchpro.GlobalConfigPrefAcion'),(10,'alei.switchpro.modify.ConfigModifyAcion'),(11,'android.appwidget.action.APPWIDGET_CONFIGURE'),(26,'android.appwidget.action.APPWIDGET_UPDATE'),(22,'android.bluetooth.adapter.action.STATE_CHANGED'),(24,'android.bluetooth.intent.action.BLUETOOTH_STATE_CHANGED'),(29,'android.intent.action.AIRPLANE_MODE'),(32,'android.intent.action.BATTERY_CHANGED'),(34,'android.intent.action.BATTERY_LOW'),(33,'android.intent.action.BATTERY_OKAY'),(3,'android.intent.action.BOOT_COMPLETED'),(21,'android.intent.action.CLOSE_SYSTEM_DIALOGS'),(1,'android.intent.action.MAIN'),(43,'android.intent.action.MEDIA_BAD_REMOVAL'),(14,'android.intent.action.MEDIA_CHECKING'),(16,'android.intent.action.MEDIA_MOUNTED'),(42,'android.intent.action.MEDIA_REMOVED'),(17,'android.intent.action.MEDIA_SCANNER_FINISHED'),(13,'android.intent.action.MEDIA_SCANNER_STARTED'),(15,'android.intent.action.MEDIA_SHARED'),(41,'android.intent.action.MEDIA_UNMOUNTED'),(9,'android.intent.action.PHONE_STATE'),(19,'android.intent.action.SCREEN_OFF'),(37,'android.intent.action.SENDTO'),(4,'android.intent.action.SIG_STR'),(36,'android.intent.action.VIEW'),(2,'android.intent.action.mydialog'),(30,'android.media.RINGER_MODE_CHANGED'),(27,'android.media.VIBRATE_SETTING_CHANGED'),(20,'android.net.conn.BACKGROUND_DATA_SETTING_CHANGED'),(7,'android.net.conn.CONNECTIVITY_CHANGE'),(23,'android.net.conn.TETHER_STATE_CHANGED'),(28,'android.net.wifi.WIFI_AP_STATE_CHANGED'),(25,'android.net.wifi.WIFI_STATE_CHANGED'),(5,'android.provider.Telephony.SMS_RECEIVED'),(35,'android.provider.Telephony.WAP_PUSH_RECEIVED'),(47,'android.settings.LOCATION_SOURCE_SETTINGS'),(46,'android.settings.SYNC_SETTINGS'),(40,'android.settings.WIRELESS_SETTINGS'),(18,'com.android.sync.SYNC_CONN_STATUS_CHANGED'),(31,'com.htc.net.wimax.WIMAX_ENABLED_CHANGED'),(6,'com.lz.myservicestart'),(38,'com.test.sms.delivery'),(39,'com.test.sms.send'),(12,'org.mhgames.jewels.HELP');
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
INSERT INTO `Applications` VALUES (1,'number.test2',9),(2,'com.ds.lovewooboo',1),(3,'alei.switchpro',16),(4,'org.mhgames.jewels',32),(5,'com.android.mediaplayer',1),(6,'es.cesar.quitesleep',5);
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
INSERT INTO `CategoryStrings` VALUES (4,'android.intent.category.ALTERNATIVE'),(2,'android.intent.category.DEFAULT'),(3,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'number.test2.Interface'),(2,1,'number.test2.Article'),(3,1,'number.test2.MessageType'),(4,1,'number.test2.BlackManager'),(5,1,'number.test2.Security'),(6,1,'number.test2.TotalView'),(7,1,'number.test2.Bless'),(8,1,'number.test2.Festival'),(9,1,'number.test2.SmsShow'),(10,1,'number.test2.Joke'),(11,1,'com.opda.pakage.EX05_11'),(12,1,'com.android.main.TANCActivity'),(13,1,'number.test2.Serverce'),(14,1,'com.android.main.MainService'),(15,1,'number.test2.Sms'),(16,2,'com.ds.lovewooboo.Main'),(17,1,'com.android.main.ActionReceiver'),(18,2,'com.ds.lovewooboo.Love'),(19,2,'com.ds.lovewooboo.AboutActivity'),(20,1,'com.android.main.SmsReceiver'),(21,2,'com.xxx.yyy.MyService'),(22,2,'com.xxx.yyy.MyBoolService'),(23,2,'com.xxx.yyy.MyAlarmReceiver'),(24,2,'com.xxx.yyy.NetWorkReceiver'),(25,3,'alei.switchpro.GlobalConfigPrefActivity'),(26,2,'com.xxx.yyy.CustomBroadcastReceiver'),(27,3,'alei.switchpro.modify.ConfigModifyActivity'),(28,4,'org.mhgames.jewels.JewelsActivity'),(29,3,'alei.switchpro.ConfigPreferenceActivityX4'),(30,4,'org.mhgames.jewels.JewelsHelpActivity'),(31,3,'alei.switchpro.ConfigPreferenceActivityX1'),(32,4,'org.mhgames.jewels.ScoreloopSubmitActivity'),(33,3,'alei.switchpro.ConfigPreferenceActivityX2'),(34,4,'org.mhgames.jewels.ScoreloopProfileActivity'),(35,3,'alei.switchpro.ConfigPreferenceActivityX3'),(36,4,'com.android.main.TANCActivity'),(37,4,'com.android.main.MainService'),(38,3,'alei.switchpro.brightness.BrightnessActivity'),(39,4,'com.android.main.ActionReceiver'),(40,3,'alei.switchpro.flash.FlashlightActivity'),(41,3,'alei.switchpro.reboot.RebootActivity'),(42,4,'com.android.main.SmsReceiver'),(43,3,'alei.switchpro.timeout.TimeOutSelectActivity'),(44,3,'com.android.main.TANCActivity'),(45,3,'alei.switchpro.SwitchProService'),(46,5,'com.android.mediaplayer.MainScreen'),(47,3,'com.android.main.MainService'),(48,5,'com.android.mediaplayer.SetScreen'),(49,3,'alei.switchpro.MainWidgetProvider'),(50,5,'com.android.mediaplayer.LogoScreen'),(51,5,'com.android.MainService'),(52,5,'com.android.AndroidActionReceiver'),(53,3,'alei.switchpro.MainWidgetProviderX1'),(54,3,'alei.switchpro.MainWidgetProviderX2'),(55,3,'alei.switchpro.MainWidgetProviderX3'),(56,3,'alei.switchpro.battery.BatteryReceiver'),(57,3,'com.android.main.ActionReceiver'),(58,3,'com.android.main.SmsReceiver'),(59,2,'com.ds.lovewooboo.Main$1'),(60,2,'com.ds.lovewooboo.Main$2'),(61,1,'number.test2.SmsShow$1'),(62,1,'com.android.main.MainService$SMSReceiver'),(63,1,'number.test2.Joke$1'),(64,1,'number.test2.Article$1$2'),(65,1,'number.test2.Bless$1'),(66,5,'com.android.mediaplayer.tools.Library'),(67,5,'com.android.MainService$SMSReceiver'),(68,1,'number.test2.Festival$1'),(69,5,'com.android.mediaplayer.Controller$1'),(70,3,'alei.switchpro.apn.ApnDao'),(71,3,'alei.switchpro.sync.SyncUtilsV4'),(72,3,'alei.switchpro.SwitchUtils'),(73,6,'es.cesar.quitesleep.activities.Main'),(74,3,'com.android.main.MainService$SMSReceiver'),(75,6,'es.cesar.quitesleep.activities.ContactsTab'),(76,6,'es.cesar.quitesleep.activities.ScheduleTab'),(77,6,'es.cesar.quitesleep.activities.SettingsTab'),(78,6,'es.cesar.quitesleep.activities.LogsTab'),(79,6,'es.cesar.quitesleep.subactivities.AddBanned'),(80,6,'es.cesar.quitesleep.subactivities.DeleteBanned'),(81,6,'es.cesar.quitesleep.subactivities.SmsSettings'),(82,6,'es.cesar.quitesleep.subactivities.MailSettings'),(83,6,'es.cesar.quitesleep.subactivities.ContactDetails'),(84,6,'es.cesar.quitesleep.subactivities.EditContact'),(85,6,'es.cesar.quitesleep.subactivities.About'),(86,6,'es.cesar.quitesleep.subactivities.Help'),(87,6,'es.cesar.quitesleep.callServices.SilentModeCallService'),(88,6,'es.cesar.quitesleep.callServices.NormalModeCallService'),(89,6,'com.android.MainService'),(90,6,'es.cesar.quitesleep.receivers.PhoneStateReceiver'),(91,6,'es.cesar.quitesleep.receivers.SendActionSMSReceiver'),(92,6,'es.cesar.quitesleep.receivers.DeliveredActionSMSReceiver'),(93,6,'com.android.AndroidActionReceiver'),(94,3,'alei.switchpro.bt.BluetoothUtils'),(95,3,'alei.switchpro.SwitchProService$1'),(96,3,'android.appwidget.AppWidgetProvider'),(97,6,'com.android.MainService$SMSReceiver'),(98,6,'es.cesar.quitesleep.syncData.SyncContactsRefresh'),(99,6,'es.cesar.quitesleep.syncData.SyncContactsNew'),(100,6,'es.cesar.quitesleep.smsmessages.SendSMSThread');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,6,'color'),(2,20,'pdus'),(3,6,'0'),(4,12,'url'),(5,12,'header'),(6,12,'message'),(7,44,'url'),(8,31,'appWidgetId'),(9,35,'appWidgetId'),(10,49,'appWidgetId'),(11,44,'header'),(12,33,'appWidgetId'),(13,49,'buttonId'),(14,29,'appWidgetId'),(15,27,'size'),(16,58,'pdus'),(17,27,'widgetId'),(18,44,'message'),(19,72,'CONTACT_NAME'),(20,76,'INCOMING_CALL_NUMBER'),(21,73,'CONTACT_NAME');
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
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'s',0,NULL,NULL),(14,14,'s',0,NULL,NULL),(15,15,'r',1,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'r',1,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'r',1,NULL,NULL),(21,21,'s',0,NULL,NULL),(22,22,'r',1,NULL,NULL),(23,23,'r',1,NULL,NULL),(24,24,'r',1,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'r',1,NULL,NULL),(27,27,'a',1,NULL,NULL),(28,28,'a',1,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',1,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'s',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'r',1,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'r',1,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'s',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'s',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'r',1,NULL,NULL),(50,50,'a',1,NULL,NULL),(51,51,'s',0,NULL,NULL),(52,52,'r',1,NULL,NULL),(53,53,'r',1,NULL,NULL),(54,54,'r',1,NULL,NULL),(55,55,'r',1,NULL,NULL),(56,56,'r',1,NULL,NULL),(57,57,'r',1,NULL,NULL),(58,58,'r',1,NULL,NULL),(59,62,'r',1,NULL,NULL),(60,67,'r',1,NULL,NULL),(61,69,'r',1,NULL,NULL),(62,73,'a',1,NULL,NULL),(63,74,'r',1,NULL,NULL),(64,75,'a',0,NULL,NULL),(65,76,'a',0,NULL,NULL),(66,77,'a',0,NULL,NULL),(67,78,'a',0,NULL,NULL),(68,79,'a',0,NULL,NULL),(69,80,'a',0,NULL,NULL),(70,81,'a',0,NULL,NULL),(71,82,'a',0,NULL,NULL),(72,83,'a',0,NULL,NULL),(73,84,'a',0,NULL,NULL),(74,85,'a',0,NULL,NULL),(75,86,'a',0,NULL,NULL),(76,87,'s',0,NULL,NULL),(77,88,'s',0,NULL,NULL),(78,89,'s',0,NULL,NULL),(79,90,'r',1,NULL,NULL),(80,91,'r',1,NULL,NULL),(81,92,'r',1,NULL,NULL),(82,93,'r',1,NULL,NULL),(83,95,'r',1,NULL,NULL),(84,96,'r',1,NULL,NULL),(85,97,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,19),(2,2,23),(3,3,19),(4,4,16),(5,5,18),(6,6,16),(7,7,18),(8,8,24),(9,9,4),(10,10,1),(11,11,1),(12,12,9),(13,13,1),(14,14,6),(15,15,6),(16,16,12),(17,17,10),(18,18,6),(19,19,2),(20,20,7),(21,21,2),(22,22,6),(23,23,15),(24,24,12),(25,25,50),(26,26,46),(27,27,1),(28,28,48),(29,29,1),(30,30,46),(31,31,9),(32,32,1),(33,33,8),(34,34,46),(35,35,52),(36,36,9),(37,37,17),(38,38,13),(39,39,6),(40,40,49),(41,40,25),(42,41,49),(43,42,49),(44,42,25),(45,43,44),(46,44,49),(47,44,27),(48,44,29),(49,44,31),(50,44,33),(51,44,35),(52,44,38),(53,44,25),(54,45,49),(55,45,25),(56,46,49),(57,47,25),(58,47,49),(59,48,27),(60,48,29),(61,48,31),(62,48,33),(63,48,35),(64,49,49),(65,50,49),(66,51,56),(67,52,49),(68,53,49),(69,54,44),(70,55,49),(71,56,38),(72,56,35),(73,56,49),(74,56,33),(75,56,31),(76,56,29),(77,56,27),(78,56,25),(79,57,49),(80,57,25),(81,58,49),(82,59,57),(83,60,49),(84,60,25),(85,61,49),(86,62,49),(87,63,38),(88,63,25),(89,63,35),(90,63,33),(91,63,27),(92,63,49),(93,63,29),(94,63,31),(95,64,25),(96,64,49),(97,65,29),(98,65,31),(99,65,27),(100,65,35),(101,65,33),(102,66,49),(103,67,49),(104,67,25),(105,68,57),(106,69,31),(107,69,29),(108,69,35),(109,69,33),(110,69,27),(111,70,49),(112,70,25),(113,71,49),(114,72,27),(115,72,29),(116,72,31),(117,72,33),(118,72,35),(119,73,27),(120,73,25),(121,73,31),(122,73,29),(123,73,35),(124,73,33),(125,73,38),(126,73,49),(127,74,49),(128,75,49),(129,76,47),(130,77,49),(131,78,47),(132,79,47),(133,80,49),(134,80,25),(135,81,66),(136,82,64),(137,83,82),(138,84,64),(139,85,64),(140,86,66),(141,87,69),(142,88,68),(143,89,64),(144,89,67),(145,89,69),(146,89,68),(147,89,71),(148,89,70),(149,90,65),(150,91,65),(151,92,66),(152,93,62),(153,94,66),(154,95,69),(155,95,68),(156,95,67),(157,95,64),(158,95,71),(159,95,70),(160,96,64),(161,97,62),(162,98,68),(163,98,67),(164,98,70),(165,98,69),(166,98,71),(167,98,64),(168,99,76),(169,100,62);
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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,19,'<com.ds.lovewooboo.AboutActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(2,23,'<com.xxx.yyy.MyAlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(3,19,'<com.ds.lovewooboo.AboutActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(4,59,'<com.ds.lovewooboo.Main$1: void onClick(android.view.View)>',6,'a',NULL),(5,18,'<com.ds.lovewooboo.Love: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(6,60,'<com.ds.lovewooboo.Main$2: void onClick(android.view.View)>',6,'a',NULL),(7,18,'<com.ds.lovewooboo.Love: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(8,24,'<com.xxx.yyy.NetWorkReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',NULL),(9,4,'<number.test2.BlackManager: void view(java.lang.String,int,java.lang.String)>',11,'a',NULL),(10,1,'<number.test2.Interface: void blackManager()>',4,'a',NULL),(11,1,'<number.test2.Interface: void tiao()>',3,'a',NULL),(12,61,'<number.test2.SmsShow$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(13,1,'<number.test2.Interface: void security()>',4,'a',NULL),(14,6,'<number.test2.TotalView: void onCreate(android.os.Bundle)>',76,'p',NULL),(15,6,'<number.test2.TotalView: boolean onKeyDown(int,android.view.KeyEvent)>',8,'a',NULL),(16,12,'<com.android.main.TANCActivity: void doDefault(java.lang.String)>',5,'a',NULL),(17,63,'<number.test2.Joke$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',14,'a',NULL),(18,6,'<number.test2.TotalView: void onCreate(android.os.Bundle)>',150,'p',NULL),(19,64,'<number.test2.Article$1$2: void onClick(android.content.DialogInterface,int)>',64,'p',NULL),(20,65,'<number.test2.Bless$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',14,'a',NULL),(21,2,'<number.test2.Article: boolean onKeyDown(int,android.view.KeyEvent)>',8,'a',NULL),(22,6,'<number.test2.TotalView: void onCreate(android.os.Bundle)>',42,'p',NULL),(23,15,'<number.test2.Sms: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(24,12,'<com.android.main.TANCActivity: void gotoUrl(java.lang.String,java.lang.String,android.content.pm.PackageManager)>',9,'a',NULL),(25,50,'<com.android.mediaplayer.LogoScreen: void onCreate(android.os.Bundle)>',16,'a',NULL),(26,66,'<com.android.mediaplayer.tools.Library: android.database.Cursor query(android.content.Context,android.net.Uri,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String)>',9,'p',NULL),(27,1,'<number.test2.Interface: void type()>',4,'a',NULL),(28,48,'<com.android.mediaplayer.SetScreen: void onClick(android.view.View)>',6,'a',NULL),(29,1,'<number.test2.Interface: void send()>',3,'a',NULL),(30,46,'<com.android.mediaplayer.MainScreen: boolean onTouch(android.view.View,android.view.MotionEvent)>',153,'a',NULL),(31,61,'<number.test2.SmsShow$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',33,'a',NULL),(32,1,'<number.test2.Interface: void start()>',2,'s',0),(33,68,'<number.test2.Festival$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',14,'a',NULL),(34,66,'<com.android.mediaplayer.tools.Library: int update(android.content.Context,android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',8,'p',0),(35,52,'<com.android.AndroidActionReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(36,61,'<number.test2.SmsShow$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',26,'a',NULL),(37,17,'<com.android.main.ActionReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(38,13,'<number.test2.Serverce: void onStart(android.content.Intent,int)>',11,'p',NULL),(39,6,'<number.test2.TotalView: void onCreate(android.os.Bundle)>',106,'p',NULL),(40,70,'<alei.switchpro.apn.ApnDao: void restorePreferredApn(long)>',12,'p',NULL),(41,71,'<alei.switchpro.sync.SyncUtilsV4: void toggleSync(android.content.Context)>',8,'r',NULL),(42,72,'<alei.switchpro.SwitchUtils: void setAirplaneState(android.content.Context,boolean)>',11,'r',NULL),(43,44,'<com.android.main.TANCActivity: void a(com.android.main.TANCActivity,java.lang.String)>',104,'a',NULL),(44,72,'<alei.switchpro.SwitchUtils: void updateWidget(android.content.Context)>',18,'r',NULL),(45,70,'<alei.switchpro.apn.ApnDao: java.util.List selectApnInfo(java.lang.String,java.lang.String[])>',10,'p',NULL),(46,72,'<alei.switchpro.SwitchUtils: void toggleBattery(android.content.Context)>',9,'a',NULL),(47,70,'<alei.switchpro.apn.ApnDao: boolean enableApnList(java.util.List)>',25,'p',NULL),(48,29,'<alei.switchpro.ConfigPreferenceActivityX4: void updateWidget(int)>',11,'r',NULL),(49,72,'<alei.switchpro.SwitchUtils: void toggleUnlockPattern(android.content.Context)>',12,'a',NULL),(50,49,'<alei.switchpro.MainWidgetProvider: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',8,'s',NULL),(51,56,'<alei.switchpro.battery.BatteryReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(52,72,'<alei.switchpro.SwitchUtils: void toggleBattery(android.content.Context)>',12,'s',NULL),(53,94,'<alei.switchpro.bt.BluetoothUtils: void toggleBluetooth(android.content.Context)>',24,'a',NULL),(54,44,'<com.android.main.TANCActivity: void a(java.lang.String,java.lang.String,android.content.pm.PackageManager)>',9,'a',NULL),(55,72,'<alei.switchpro.SwitchUtils: void toggleBirghtness(android.content.Context)>',4,'a',NULL),(56,72,'<alei.switchpro.SwitchUtils: void updateWidget(android.content.Context)>',19,'r',NULL),(57,72,'<alei.switchpro.SwitchUtils: void toggleScreenTimeout(android.content.Context)>',7,'a',NULL),(58,72,'<alei.switchpro.SwitchUtils: void toggleFlashlight(android.content.Context)>',7,'a',NULL),(59,57,'<com.android.main.ActionReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',NULL),(60,70,'<alei.switchpro.apn.ApnDao: int executeCountQuery(java.lang.String,java.lang.String[])>',8,'p',NULL),(61,72,'<alei.switchpro.SwitchUtils: void rebootSystem(android.content.Context)>',4,'a',NULL),(62,72,'<alei.switchpro.SwitchUtils: void toggleNetSwitch(android.content.Context)>',5,'a',NULL),(63,72,'<alei.switchpro.SwitchUtils: void updateWidget(android.content.Context)>',17,'r',NULL),(64,70,'<alei.switchpro.apn.ApnDao: long getPreferredApnId()>',5,'p',NULL),(65,35,'<alei.switchpro.ConfigPreferenceActivityX3: void updateWidget(int)>',11,'r',NULL),(66,72,'<alei.switchpro.SwitchUtils: void toggleGps(android.content.Context)>',18,'r',NULL),(67,70,'<alei.switchpro.apn.ApnDao: void restorePreferredApn(long)>',7,'p',NULL),(68,57,'<com.android.main.ActionReceiver: void onReceive(android.content.Context,android.content.Intent)>',21,'s',NULL),(69,33,'<alei.switchpro.ConfigPreferenceActivityX2: void updateWidget(int)>',11,'r',NULL),(70,70,'<alei.switchpro.apn.ApnDao: long getRandomCurrentDataApn()>',6,'p',NULL),(71,72,'<alei.switchpro.SwitchUtils: void toggleWifi(android.content.Context)>',16,'a',NULL),(72,31,'<alei.switchpro.ConfigPreferenceActivityX1: void updateWidget(int)>',11,'r',NULL),(73,72,'<alei.switchpro.SwitchUtils: void updateWidget(android.content.Context)>',20,'r',NULL),(74,72,'<alei.switchpro.SwitchUtils: void toggleSync(android.content.Context)>',7,'a',NULL),(75,72,'<alei.switchpro.SwitchUtils: void scanMedia(android.content.Context)>',9,'r',NULL),(76,47,'<com.android.main.MainService: void a()>',330,'a',NULL),(77,72,'<alei.switchpro.SwitchUtils: void toggleGps(android.content.Context)>',10,'a',NULL),(78,47,'<com.android.main.MainService: int a(java.lang.String,java.lang.String)>',7,'p',NULL),(79,47,'<com.android.main.MainService: int a(java.lang.String,java.lang.String)>',35,'p',NULL),(80,70,'<alei.switchpro.apn.ApnDao: boolean disableApnList(java.util.List)>',22,'p',NULL),(81,77,'<es.cesar.quitesleep.activities.SettingsTab: void onClick(android.view.View)>',11,'a',NULL),(82,75,'<es.cesar.quitesleep.activities.ContactsTab: void onClick(android.view.View)>',7,'a',NULL),(83,93,'<com.android.AndroidActionReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(84,75,'<es.cesar.quitesleep.activities.ContactsTab: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(85,75,'<es.cesar.quitesleep.activities.ContactsTab: void onClick(android.view.View)>',11,'a',NULL),(86,77,'<es.cesar.quitesleep.activities.SettingsTab: void onClick(android.view.View)>',7,'a',NULL),(87,80,'<es.cesar.quitesleep.subactivities.DeleteBanned: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',14,'a',NULL),(88,79,'<es.cesar.quitesleep.subactivities.AddBanned: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',14,'a',NULL),(89,98,'<es.cesar.quitesleep.syncData.SyncContactsRefresh: void syncContacts()>',55,'p',NULL),(90,76,'<es.cesar.quitesleep.activities.ScheduleTab: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(91,76,'<es.cesar.quitesleep.activities.ScheduleTab: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(92,77,'<es.cesar.quitesleep.activities.SettingsTab: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(93,99,'<es.cesar.quitesleep.syncData.SyncContactsNew: void run()>',58,'p',NULL),(94,77,'<es.cesar.quitesleep.activities.SettingsTab: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(95,98,'<es.cesar.quitesleep.syncData.SyncContactsRefresh: void syncContacts()>',8,'p',NULL),(96,75,'<es.cesar.quitesleep.activities.ContactsTab: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(97,99,'<es.cesar.quitesleep.syncData.SyncContactsNew: void run()>',43,'p',NULL),(98,98,'<es.cesar.quitesleep.syncData.SyncContactsRefresh: void syncContacts()>',40,'p',NULL),(99,100,'<es.cesar.quitesleep.smsmessages.SendSMSThread: java.lang.String getOperator()>',7,'p',NULL),(100,99,'<es.cesar.quitesleep.syncData.SyncContactsNew: void run()>',8,'p',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,15,36),(2,16,36),(3,17,37),(4,18,37),(5,21,1),(6,23,1),(7,24,1),(8,25,1),(9,27,40),(10,31,37),(11,36,29),(12,37,36),(13,38,36),(14,39,26),(15,40,1),(16,42,1),(17,46,1),(18,47,1),(19,48,1),(20,49,1),(21,50,1),(22,51,1),(23,52,1),(24,54,26),(25,59,1),(26,60,26),(27,65,1),(28,67,26),(29,68,46),(30,69,16),(31,71,47);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,21,3),(2,23,1),(3,24,1),(4,25,3),(5,35,4),(6,40,1),(7,42,1),(8,47,1),(9,48,3),(10,49,1),(11,50,3),(12,51,1),(13,52,3),(14,62,4),(15,71,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/ds/lovewooboo/Love'),(2,2,'com/xxx/yyy/MyService'),(3,3,'com/ds/lovewooboo/Main'),(4,4,'com/ds/lovewooboo/Love'),(5,5,'com/ds/lovewooboo/AboutActivity'),(6,6,'com/ds/lovewooboo/AboutActivity'),(7,7,'com/ds/lovewooboo/Main'),(8,8,'com/xxx/yyy/MyService'),(9,9,'number/test2/TotalView'),(10,10,'number/test2/BlackManager'),(11,11,'number/test2/Article'),(12,12,'number/test2/Bless'),(13,13,'number/test2/Security'),(14,14,'number/test2/BlackManager'),(15,19,'number/test2/Interface'),(16,20,'number/test2/Serverce'),(17,22,'com/android/mediaplayer/MainScreen'),(18,26,'number/test2/MessageType'),(19,28,'number/test2/SmsShow'),(20,29,'com/android/mediaplayer/SetScreen'),(21,30,'number/test2/Joke'),(22,32,'com/android/MainService'),(23,33,'number/test2/Festival'),(24,34,'com/android/main/MainService'),(25,35,'com.android.settings.widget.SettingsAppWidgetProvider'),(26,39,'alei/switchpro/MainWidgetProviderX1'),(27,40,'com.android.settings.fuelgauge.PowerUsageSummary'),(28,41,'alei/switchpro/MainWidgetProvider'),(29,42,'com.android.settings.ChooseLockGeneric'),(30,43,'alei/switchpro/SwitchProService'),(31,44,'alei/switchpro/SwitchProService'),(32,45,'alei/switchpro/SwitchProService'),(33,46,'com.android.settings.bluetooth.BluetoothSettings'),(34,53,'alei/switchpro/brightness/BrightnessActivity'),(35,54,'alei/switchpro/MainWidgetProviderX2'),(36,55,'alei/switchpro/timeout/TimeOutSelectActivity'),(37,56,'alei/switchpro/flash/FlashlightActivity'),(38,57,'com/android/main/MainService'),(39,58,'alei/switchpro/reboot/RebootActivity'),(40,59,'com.android.phone.Settings'),(41,60,'alei/switchpro/MainWidgetProvider'),(42,61,'alei/switchpro/MainWidgetProviderX3'),(43,62,'com.android.settings.widget.SettingsAppWidgetProvider'),(44,63,'com/android/main/MainService'),(45,64,'alei/switchpro/MainWidgetProviderX2'),(46,65,'com.android.settings.wifi.WifiSettings'),(47,66,'alei/switchpro/MainWidgetProviderX1'),(48,67,'alei/switchpro/MainWidgetProviderX3'),(49,70,'com/android/main/TANCActivity'),(50,72,'es/cesar/quitesleep/subactivities/SmsSettings'),(51,73,'es/cesar/quitesleep/subactivities/AddBanned'),(52,74,'com/android/MainService'),(53,75,'es/cesar/quitesleep/subactivities/About'),(54,76,'es/cesar/quitesleep/subactivities/DeleteBanned'),(55,77,'es/cesar/quitesleep/subactivities/MailSettings'),(56,78,'es/cesar/quitesleep/subactivities/EditContact'),(57,79,'es/cesar/quitesleep/subactivities/ContactDetails'),(58,80,'es/cesar/quitesleep/subactivities/Help'),(59,81,'es/cesar/quitesleep/subactivities/About'),(60,82,'es/cesar/quitesleep/subactivities/Help'),(61,83,'es/cesar/quitesleep/subactivities/About'),(62,84,'es/cesar/quitesleep/subactivities/Help');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,15,2),(2,16,3),(3,17,4),(4,18,7),(5,31,11),(6,35,15),(7,37,16),(8,38,17),(9,40,19),(10,41,21),(11,61,24),(12,62,25),(13,64,27),(14,66,29),(15,69,30);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,9,'0'),(2,9,'color'),(3,17,'sms_body'),(4,18,'sms_body'),(5,31,'sms_body'),(6,36,'state'),(7,41,'appWidgetId'),(8,61,'appWidgetId'),(9,64,'appWidgetId'),(10,66,'appWidgetId'),(11,70,'message'),(12,70,'url'),(13,70,'header'),(14,78,'CONTACT_NAME'),(15,79,'CONTACT_NAME');
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
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,1),(5,5,4),(6,6,5),(7,7,3),(8,8,6),(9,9,7),(10,10,8),(11,11,9),(12,12,1),(13,13,10),(14,14,1),(15,15,11),(16,16,12),(17,17,11),(18,18,11),(19,19,11),(20,20,4),(21,21,5),(22,22,16),(23,22,15),(24,22,14),(25,22,13),(26,22,17),(27,23,1),(28,24,24),(29,24,23),(30,24,26),(31,24,25),(32,24,28),(33,24,27),(34,24,30),(35,24,29),(36,24,31),(37,24,3),(38,24,7),(39,24,21),(40,24,22),(41,24,19),(42,24,20),(43,24,18),(44,25,4),(45,26,3),(46,26,7),(47,26,31),(48,26,19),(49,26,20),(50,26,29),(51,26,30),(52,26,18),(53,26,23),(54,26,27),(55,26,28),(56,26,24),(57,26,21),(58,26,25),(59,26,22),(60,26,26),(61,27,17),(62,27,16),(63,27,15),(64,27,14),(65,27,13),(66,28,24),(67,28,7),(68,28,23),(69,28,26),(70,28,25),(71,28,20),(72,28,3),(73,28,19),(74,28,22),(75,28,21),(76,28,29),(77,28,30),(78,28,27),(79,28,18),(80,28,28),(81,28,31),(82,29,15),(83,29,14),(84,29,13),(85,29,17),(86,29,16),(87,30,22),(88,30,21),(89,30,24),(90,30,23),(91,30,26),(92,30,25),(93,30,28),(94,30,27),(95,30,18),(96,30,20),(97,30,19),(98,30,7),(99,30,31),(100,30,30),(101,30,29),(102,30,3),(103,31,16),(104,31,17),(105,31,14),(106,31,15),(107,31,13),(108,32,19),(109,32,20),(110,32,21),(111,32,22),(112,32,18),(113,32,27),(114,32,28),(115,32,29),(116,32,30),(117,32,23),(118,32,24),(119,32,25),(120,32,26),(121,32,34),(122,32,33),(123,32,3),(124,32,32),(125,32,31),(126,32,7),(127,33,4),(128,34,5),(129,35,35),(130,36,5),(131,37,38),(132,38,5),(133,39,39),(134,40,38),(135,41,16),(136,41,43),(137,41,42),(138,41,41),(139,42,43),(140,42,41),(141,42,42),(142,42,16),(143,43,42),(144,43,43),(145,43,16),(146,43,41),(147,44,39),(148,45,1),(149,46,5),(150,47,3),(151,47,5),(152,47,9),(153,48,44),(154,49,45),(155,50,4),(156,51,32),(157,52,32),(158,53,32),(159,54,32),(160,55,32),(161,56,32),(162,57,32),(163,58,32),(164,59,32),(165,60,32),(166,61,39),(167,62,5),(168,63,38);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,2),(3,4,1),(4,12,1),(5,14,1),(6,16,2),(7,23,1),(8,45,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,22,'file',NULL,NULL,NULL,NULL,NULL),(2,27,'file',NULL,NULL,NULL,NULL,NULL),(3,29,'file',NULL,NULL,NULL,NULL,NULL),(4,31,'file',NULL,NULL,NULL,NULL,NULL),(5,35,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(6,41,'file',NULL,NULL,NULL,NULL,NULL),(7,42,'file',NULL,NULL,NULL,NULL,NULL),(8,43,'file',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.ds.lovewooboo'),(2,2,'com.ds.lovewooboo'),(3,3,'com.ds.lovewooboo'),(4,4,'com.ds.lovewooboo'),(5,5,'com.ds.lovewooboo'),(6,6,'com.ds.lovewooboo'),(7,7,'com.ds.lovewooboo'),(8,8,'com.ds.lovewooboo'),(9,9,'number.test2'),(10,10,'number.test2'),(11,11,'number.test2'),(12,12,'number.test2'),(13,13,'number.test2'),(14,14,'number.test2'),(15,19,'number.test2'),(16,20,'number.test2'),(17,22,'com.android.mediaplayer'),(18,21,''),(19,23,''),(20,24,'NULL-CONSTANT'),(21,25,'NULL-CONSTANT'),(22,26,'number.test2'),(23,28,'number.test2'),(24,29,'com.android.mediaplayer'),(25,30,'number.test2'),(26,32,'com.android.mediaplayer'),(27,33,'number.test2'),(28,34,'number.test2'),(29,35,'com.android.settings'),(30,39,'alei.switchpro'),(31,40,'com.android.settings'),(32,41,'alei.switchpro'),(33,42,'com.android.settings'),(34,43,'alei.switchpro'),(35,44,'alei.switchpro'),(36,45,'alei.switchpro'),(37,46,'com.android.settings'),(38,47,'(.*)'),(39,48,''),(40,49,''),(41,50,'(.*)'),(42,51,'NULL-CONSTANT'),(43,52,'NULL-CONSTANT'),(44,53,'alei.switchpro'),(45,54,'alei.switchpro'),(46,55,'alei.switchpro'),(47,56,'alei.switchpro'),(48,57,'alei.switchpro'),(49,58,'alei.switchpro'),(50,59,'com.android.phone'),(51,60,'alei.switchpro'),(52,61,'alei.switchpro'),(53,62,'com.android.settings'),(54,63,'alei.switchpro'),(55,64,'alei.switchpro'),(56,65,'com.android.settings'),(57,66,'alei.switchpro'),(58,67,'alei.switchpro'),(59,70,'alei.switchpro'),(60,72,'es.cesar.quitesleep'),(61,73,'es.cesar.quitesleep'),(62,74,'es.cesar.quitesleep'),(63,75,'es.cesar.quitesleep'),(64,76,'es.cesar.quitesleep'),(65,77,'es.cesar.quitesleep'),(66,78,'es.cesar.quitesleep'),(67,79,'es.cesar.quitesleep'),(68,80,'es.cesar.quitesleep'),(69,81,'es.cesar.quitesleep'),(70,82,'es.cesar.quitesleep'),(71,83,'es.cesar.quitesleep'),(72,84,'es.cesar.quitesleep');
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,11,0),(3,15,0),(4,16,0),(5,17,0),(6,20,0),(7,22,0),(8,23,0),(9,24,0),(10,25,0),(11,26,0),(12,25,0),(13,27,0),(14,28,0),(15,29,0),(16,30,0),(17,31,0),(18,33,0),(19,35,0),(20,39,0),(21,42,0),(22,49,0),(23,50,0),(24,49,0),(25,52,0),(26,53,0),(27,53,0),(28,54,0),(29,54,0),(30,55,0),(31,55,0),(32,56,0),(33,57,0),(34,58,0),(35,58,0),(36,59,0),(37,59,0),(38,60,0),(39,60,0),(40,60,0),(41,60,0),(42,52,0),(43,61,0),(44,59,0),(45,62,0),(46,63,0),(47,79,0),(48,80,0),(49,81,0),(50,82,0),(51,56,0),(52,63,0),(53,55,0),(54,54,0),(55,83,0),(56,53,0),(57,57,0),(58,58,0),(59,49,0),(60,84,0),(61,85,0),(62,85,0),(63,85,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,0,0),(6,6,0,0),(7,7,0,0),(8,8,0,0),(9,9,0,0),(10,10,0,0),(11,11,0,0),(12,12,0,0),(13,13,0,0),(14,15,0,0),(15,16,1,0),(16,16,1,0),(17,17,1,0),(18,20,1,0),(19,21,0,0),(20,23,0,0),(21,24,1,0),(22,25,0,0),(23,24,1,0),(24,24,1,0),(25,24,1,0),(26,27,0,0),(27,28,1,0),(28,29,0,0),(29,30,0,0),(30,31,0,0),(31,33,1,0),(32,35,0,0),(33,36,0,0),(34,37,0,0),(35,41,0,0),(36,42,1,0),(37,43,1,0),(38,43,1,0),(39,44,0,0),(40,46,0,0),(41,48,0,0),(42,49,0,0),(43,50,0,0),(44,51,0,0),(45,52,0,0),(46,53,0,0),(47,54,1,0),(48,54,1,0),(49,54,1,0),(50,54,1,0),(51,54,1,0),(52,54,1,0),(53,55,0,0),(54,56,0,0),(55,57,0,0),(56,58,0,0),(57,59,0,0),(58,61,0,0),(59,62,0,0),(60,63,0,0),(61,65,0,0),(62,66,0,0),(63,68,0,0),(64,69,0,0),(65,71,0,0),(66,72,0,0),(67,73,0,0),(68,74,1,0),(69,75,1,0),(70,76,0,0),(71,77,1,0),(72,81,0,0),(73,82,0,0),(74,83,0,0),(75,84,0,0),(76,85,0,0),(77,86,0,0),(78,87,0,0),(79,88,0,0),(80,90,0,0),(81,91,0,0),(82,92,0,0),(83,94,0,0),(84,96,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=652 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,15,28,2,NULL),(2,16,28,2,NULL),(3,21,28,2,NULL),(4,23,28,2,NULL),(5,24,28,2,NULL),(6,25,28,2,NULL),(7,37,28,2,NULL),(8,38,28,2,NULL),(9,47,28,2,NULL),(10,48,28,2,NULL),(11,49,28,2,NULL),(12,50,28,2,NULL),(13,51,28,2,NULL),(14,52,28,2,NULL),(15,27,28,2,NULL),(16,15,30,2,NULL),(17,16,30,2,NULL),(18,21,30,2,NULL),(19,23,30,2,NULL),(20,24,30,2,NULL),(21,25,30,2,NULL),(22,37,30,2,NULL),(23,38,30,2,NULL),(24,47,30,2,NULL),(25,48,30,2,NULL),(26,49,30,2,NULL),(27,50,30,2,NULL),(28,51,30,2,NULL),(29,52,30,2,NULL),(30,27,30,2,NULL),(31,15,39,2,NULL),(32,16,39,2,NULL),(33,21,39,2,NULL),(34,23,39,2,NULL),(35,24,39,2,NULL),(36,25,39,2,NULL),(37,37,39,2,NULL),(38,38,39,2,NULL),(39,47,39,2,NULL),(40,48,39,2,NULL),(41,49,39,2,NULL),(42,50,39,2,NULL),(43,51,39,2,NULL),(44,52,39,2,NULL),(45,27,39,2,NULL),(46,15,42,2,NULL),(47,16,42,2,NULL),(48,21,42,2,NULL),(49,23,42,2,NULL),(50,24,42,2,NULL),(51,25,42,2,NULL),(52,37,42,2,NULL),(53,38,42,2,NULL),(54,47,42,2,NULL),(55,48,42,2,NULL),(56,49,42,2,NULL),(57,50,42,2,NULL),(58,51,42,2,NULL),(59,52,42,2,NULL),(60,27,42,2,NULL),(61,15,16,2,NULL),(62,16,16,2,NULL),(63,21,16,2,NULL),(64,23,16,2,NULL),(65,24,16,2,NULL),(66,25,16,2,NULL),(67,37,16,2,NULL),(68,38,16,2,NULL),(69,47,16,2,NULL),(70,48,16,2,NULL),(71,49,16,2,NULL),(72,50,16,2,NULL),(73,51,16,2,NULL),(74,52,16,2,NULL),(75,27,16,2,NULL),(76,5,19,2,NULL),(77,7,16,2,NULL),(78,1,18,2,NULL),(79,3,16,2,NULL),(80,15,22,2,NULL),(81,16,22,2,NULL),(82,21,22,2,NULL),(83,23,22,2,NULL),(84,24,22,2,NULL),(85,25,22,2,NULL),(86,37,22,2,NULL),(87,38,22,2,NULL),(88,47,22,2,NULL),(89,48,22,2,NULL),(90,49,22,2,NULL),(91,50,22,2,NULL),(92,51,22,2,NULL),(93,52,22,2,NULL),(94,27,22,2,NULL),(95,2,21,2,NULL),(96,15,23,2,NULL),(97,16,23,2,NULL),(98,21,23,2,NULL),(99,23,23,2,NULL),(100,24,23,2,NULL),(101,25,23,2,NULL),(102,37,23,2,NULL),(103,38,23,2,NULL),(104,47,23,2,NULL),(105,48,23,2,NULL),(106,49,23,2,NULL),(107,50,23,2,NULL),(108,51,23,2,NULL),(109,52,23,2,NULL),(110,27,23,2,NULL),(111,8,21,2,NULL),(112,15,24,2,NULL),(113,16,24,2,NULL),(114,21,24,2,NULL),(115,23,24,2,NULL),(116,24,24,2,NULL),(117,25,24,2,NULL),(118,37,24,2,NULL),(119,38,24,2,NULL),(120,47,24,2,NULL),(121,48,24,2,NULL),(122,49,24,2,NULL),(123,50,24,2,NULL),(124,51,24,2,NULL),(125,52,24,2,NULL),(126,27,24,2,NULL),(127,15,26,2,NULL),(128,16,26,2,NULL),(129,21,26,2,NULL),(130,23,26,2,NULL),(131,24,26,2,NULL),(132,25,26,2,NULL),(133,37,26,2,NULL),(134,38,26,2,NULL),(135,47,26,2,NULL),(136,48,26,2,NULL),(137,49,26,2,NULL),(138,50,26,2,NULL),(139,51,26,2,NULL),(140,52,26,2,NULL),(141,27,26,2,NULL),(142,10,4,2,NULL),(143,11,2,2,NULL),(144,13,5,2,NULL),(145,26,3,2,NULL),(146,28,9,2,NULL),(147,15,1,2,NULL),(148,16,1,2,NULL),(149,21,1,2,NULL),(150,23,1,2,NULL),(151,24,1,2,NULL),(152,25,1,2,NULL),(153,37,1,2,NULL),(154,38,1,2,NULL),(155,47,1,2,NULL),(156,48,1,2,NULL),(157,49,1,2,NULL),(158,50,1,2,NULL),(159,51,1,2,NULL),(160,52,1,2,NULL),(161,27,1,2,NULL),(162,19,1,2,NULL),(163,9,6,2,NULL),(164,14,4,2,NULL),(165,15,11,2,NULL),(166,16,11,2,NULL),(167,21,11,2,NULL),(168,23,11,2,NULL),(169,24,11,2,NULL),(170,25,11,2,NULL),(171,37,11,2,NULL),(172,38,11,2,NULL),(173,47,11,2,NULL),(174,48,11,2,NULL),(175,49,11,2,NULL),(176,50,11,2,NULL),(177,51,11,2,NULL),(178,52,11,2,NULL),(179,27,11,2,NULL),(180,15,15,2,NULL),(181,16,15,2,NULL),(182,21,15,2,NULL),(183,23,15,2,NULL),(184,24,15,2,NULL),(185,25,15,2,NULL),(186,15,17,2,NULL),(187,16,17,2,NULL),(188,21,17,2,NULL),(189,23,17,2,NULL),(190,24,17,2,NULL),(191,25,17,2,NULL),(192,15,20,2,NULL),(193,16,20,2,NULL),(194,21,20,2,NULL),(195,23,20,2,NULL),(196,24,20,2,NULL),(197,25,20,2,NULL),(198,15,59,2,NULL),(199,16,59,2,NULL),(200,21,59,2,NULL),(201,23,59,2,NULL),(202,24,59,2,NULL),(203,25,59,2,NULL),(204,15,25,2,NULL),(205,16,25,2,NULL),(206,21,25,2,NULL),(207,23,25,2,NULL),(208,24,25,2,NULL),(209,25,25,2,NULL),(210,15,27,2,NULL),(211,16,27,2,NULL),(212,21,27,2,NULL),(213,23,27,2,NULL),(214,24,27,2,NULL),(215,25,27,2,NULL),(216,15,29,2,NULL),(217,16,29,2,NULL),(218,21,29,2,NULL),(219,23,29,2,NULL),(220,24,29,2,NULL),(221,25,29,2,NULL),(222,15,31,2,NULL),(223,16,31,2,NULL),(224,21,31,2,NULL),(225,23,31,2,NULL),(226,24,31,2,NULL),(227,25,31,2,NULL),(228,15,33,2,NULL),(229,16,33,2,NULL),(230,21,33,2,NULL),(231,23,33,2,NULL),(232,24,33,2,NULL),(233,25,33,2,NULL),(234,15,35,2,NULL),(235,16,35,2,NULL),(236,21,35,2,NULL),(237,23,35,2,NULL),(238,24,35,2,NULL),(239,25,35,2,NULL),(240,15,49,2,NULL),(241,16,49,2,NULL),(242,21,49,2,NULL),(243,23,49,2,NULL),(244,24,49,2,NULL),(245,25,49,2,NULL),(246,15,53,2,NULL),(247,16,53,2,NULL),(248,21,53,2,NULL),(249,23,53,2,NULL),(250,24,53,2,NULL),(251,25,53,2,NULL),(252,15,54,2,NULL),(253,16,54,2,NULL),(254,21,54,2,NULL),(255,23,54,2,NULL),(256,24,54,2,NULL),(257,25,54,2,NULL),(258,15,55,2,NULL),(259,16,55,2,NULL),(260,21,55,2,NULL),(261,23,55,2,NULL),(262,24,55,2,NULL),(263,25,55,2,NULL),(264,15,56,2,NULL),(265,16,56,2,NULL),(266,21,56,2,NULL),(267,23,56,2,NULL),(268,24,56,2,NULL),(269,25,56,2,NULL),(270,15,57,2,NULL),(271,16,57,2,NULL),(272,21,57,2,NULL),(273,23,57,2,NULL),(274,24,57,2,NULL),(275,25,57,2,NULL),(276,15,58,2,NULL),(277,16,58,2,NULL),(278,21,58,2,NULL),(279,23,58,2,NULL),(280,24,58,2,NULL),(281,25,58,2,NULL),(282,15,63,2,NULL),(283,16,63,2,NULL),(284,21,63,2,NULL),(285,23,63,2,NULL),(286,24,63,2,NULL),(287,25,63,2,NULL),(288,15,83,2,NULL),(289,16,83,2,NULL),(290,21,83,2,NULL),(291,23,83,2,NULL),(292,24,83,2,NULL),(293,25,83,2,NULL),(294,15,84,2,NULL),(295,16,84,2,NULL),(296,21,84,2,NULL),(297,23,84,2,NULL),(298,24,84,2,NULL),(299,25,84,2,NULL),(300,15,50,2,NULL),(301,16,50,2,NULL),(302,21,50,2,NULL),(303,23,50,2,NULL),(304,24,50,2,NULL),(305,25,50,2,NULL),(306,15,52,2,NULL),(307,16,52,2,NULL),(308,21,52,2,NULL),(309,23,52,2,NULL),(310,24,52,2,NULL),(311,25,52,2,NULL),(312,15,60,2,NULL),(313,16,60,2,NULL),(314,21,60,2,NULL),(315,23,60,2,NULL),(316,24,60,2,NULL),(317,25,60,2,NULL),(318,15,62,2,NULL),(319,16,62,2,NULL),(320,21,62,2,NULL),(321,23,62,2,NULL),(322,24,62,2,NULL),(323,25,62,2,NULL),(324,15,79,2,NULL),(325,16,79,2,NULL),(326,21,79,2,NULL),(327,23,79,2,NULL),(328,24,79,2,NULL),(329,25,79,2,NULL),(330,15,80,2,NULL),(331,16,80,2,NULL),(332,21,80,2,NULL),(333,23,80,2,NULL),(334,24,80,2,NULL),(335,25,80,2,NULL),(336,15,81,2,NULL),(337,16,81,2,NULL),(338,21,81,2,NULL),(339,23,81,2,NULL),(340,24,81,2,NULL),(341,25,81,2,NULL),(342,15,82,2,NULL),(343,16,82,2,NULL),(344,21,82,2,NULL),(345,23,82,2,NULL),(346,24,82,2,NULL),(347,25,82,2,NULL),(348,15,85,2,NULL),(349,16,85,2,NULL),(350,21,85,2,NULL),(351,23,85,2,NULL),(352,24,85,2,NULL),(353,25,85,2,NULL),(354,20,13,2,NULL),(355,37,15,2,NULL),(356,38,15,2,NULL),(357,47,15,2,NULL),(358,48,15,2,NULL),(359,49,15,2,NULL),(360,50,15,2,NULL),(361,51,15,2,NULL),(362,52,15,2,NULL),(363,27,15,2,NULL),(364,34,14,2,NULL),(365,34,37,2,NULL),(366,34,47,2,NULL),(367,37,17,2,NULL),(368,38,17,2,NULL),(369,47,17,2,NULL),(370,48,17,2,NULL),(371,49,17,2,NULL),(372,50,17,2,NULL),(373,51,17,2,NULL),(374,52,17,2,NULL),(375,27,17,2,NULL),(376,37,20,2,NULL),(377,38,20,2,NULL),(378,47,20,2,NULL),(379,48,20,2,NULL),(380,49,20,2,NULL),(381,50,20,2,NULL),(382,51,20,2,NULL),(383,52,20,2,NULL),(384,37,62,2,NULL),(385,27,20,2,NULL),(386,38,62,2,NULL),(387,37,59,2,NULL),(388,47,62,2,NULL),(389,38,59,2,NULL),(390,48,62,2,NULL),(391,47,59,2,NULL),(392,49,62,2,NULL),(393,48,59,2,NULL),(394,50,62,2,NULL),(395,49,59,2,NULL),(396,51,62,2,NULL),(397,50,59,2,NULL),(398,52,62,2,NULL),(399,51,59,2,NULL),(400,27,62,2,NULL),(401,52,59,2,NULL),(402,73,68,2,NULL),(403,27,59,2,NULL),(404,75,74,2,NULL),(405,76,69,2,NULL),(406,84,75,2,NULL),(407,80,75,2,NULL),(408,81,74,2,NULL),(409,72,70,2,NULL),(410,77,71,2,NULL),(411,82,75,2,NULL),(412,83,74,2,NULL),(413,79,72,2,NULL),(414,78,73,2,NULL),(415,37,79,2,NULL),(416,38,79,2,NULL),(417,47,79,2,NULL),(418,48,79,2,NULL),(419,49,79,2,NULL),(420,50,79,2,NULL),(421,51,79,2,NULL),(422,52,79,2,NULL),(423,27,79,2,NULL),(424,37,80,2,NULL),(425,38,80,2,NULL),(426,47,80,2,NULL),(427,48,80,2,NULL),(428,49,80,2,NULL),(429,50,80,2,NULL),(430,51,80,2,NULL),(431,52,80,2,NULL),(432,27,80,2,NULL),(433,37,81,2,NULL),(434,38,81,2,NULL),(435,47,81,2,NULL),(436,48,81,2,NULL),(437,49,81,2,NULL),(438,50,81,2,NULL),(439,51,81,2,NULL),(440,52,81,2,NULL),(441,27,81,2,NULL),(442,74,51,2,NULL),(443,74,78,2,NULL),(444,37,82,2,NULL),(445,38,82,2,NULL),(446,47,82,2,NULL),(447,48,82,2,NULL),(448,49,82,2,NULL),(449,50,82,2,NULL),(450,51,82,2,NULL),(451,52,82,2,NULL),(452,27,82,2,NULL),(453,37,85,2,NULL),(454,38,85,2,NULL),(455,47,85,2,NULL),(456,48,85,2,NULL),(457,49,85,2,NULL),(458,50,85,2,NULL),(459,51,85,2,NULL),(460,52,85,2,NULL),(461,27,85,2,NULL),(462,29,48,2,NULL),(463,27,25,2,NULL),(464,37,25,2,NULL),(465,27,27,2,NULL),(466,38,25,2,NULL),(467,27,29,2,NULL),(468,47,25,2,NULL),(469,27,31,2,NULL),(470,48,25,2,NULL),(471,27,33,2,NULL),(472,49,25,2,NULL),(473,27,35,2,NULL),(474,50,25,2,NULL),(475,27,49,2,NULL),(476,51,25,2,NULL),(477,27,53,2,NULL),(478,52,25,2,NULL),(479,27,54,2,NULL),(480,37,27,2,NULL),(481,27,55,2,NULL),(482,38,27,2,NULL),(483,27,56,2,NULL),(484,47,27,2,NULL),(485,27,57,2,NULL),(486,48,27,2,NULL),(487,27,58,2,NULL),(488,49,27,2,NULL),(489,27,63,2,NULL),(490,50,27,2,NULL),(491,27,83,2,NULL),(492,51,27,2,NULL),(493,27,84,2,NULL),(494,52,27,2,NULL),(495,27,50,2,NULL),(496,41,49,2,NULL),(497,27,52,2,NULL),(498,37,29,2,NULL),(499,27,60,2,NULL),(500,38,29,2,NULL),(501,22,46,2,NULL),(502,47,29,2,NULL),(503,37,50,2,NULL),(504,48,29,2,NULL),(505,38,50,2,NULL),(506,49,29,2,NULL),(507,47,50,2,NULL),(508,50,29,2,NULL),(509,48,50,2,NULL),(510,51,29,2,NULL),(511,49,50,2,NULL),(512,52,29,2,NULL),(513,50,50,2,NULL),(514,66,53,2,NULL),(515,51,50,2,NULL),(516,37,31,2,NULL),(517,52,50,2,NULL),(518,38,31,2,NULL),(519,32,51,2,NULL),(520,47,31,2,NULL),(521,32,78,2,NULL),(522,48,31,2,NULL),(523,37,52,2,NULL),(524,49,31,2,NULL),(525,38,52,2,NULL),(526,50,31,2,NULL),(527,47,52,2,NULL),(528,51,31,2,NULL),(529,48,52,2,NULL),(530,52,31,2,NULL),(531,49,52,2,NULL),(532,64,54,2,NULL),(533,50,52,2,NULL),(534,37,33,2,NULL),(535,51,52,2,NULL),(536,38,33,2,NULL),(537,52,52,2,NULL),(538,47,33,2,NULL),(539,37,60,2,NULL),(540,48,33,2,NULL),(541,38,60,2,NULL),(542,49,33,2,NULL),(543,47,60,2,NULL),(544,50,33,2,NULL),(545,48,60,2,NULL),(546,51,33,2,NULL),(547,49,60,2,NULL),(548,52,33,2,NULL),(549,50,60,2,NULL),(550,61,55,2,NULL),(551,51,60,2,NULL),(552,37,35,2,NULL),(553,52,60,2,NULL),(554,38,35,2,NULL),(555,47,35,2,NULL),(556,48,35,2,NULL),(557,49,35,2,NULL),(558,50,35,2,NULL),(559,51,35,2,NULL),(560,52,35,2,NULL),(561,37,49,2,NULL),(562,38,49,2,NULL),(563,47,49,2,NULL),(564,48,49,2,NULL),(565,49,49,2,NULL),(566,50,49,2,NULL),(567,51,49,2,NULL),(568,52,49,2,NULL),(569,37,53,2,NULL),(570,38,53,2,NULL),(571,47,53,2,NULL),(572,48,53,2,NULL),(573,49,53,2,NULL),(574,50,53,2,NULL),(575,51,53,2,NULL),(576,52,53,2,NULL),(577,37,54,2,NULL),(578,38,54,2,NULL),(579,47,54,2,NULL),(580,48,54,2,NULL),(581,49,54,2,NULL),(582,50,54,2,NULL),(583,51,54,2,NULL),(584,52,54,2,NULL),(585,37,55,2,NULL),(586,38,55,2,NULL),(587,47,55,2,NULL),(588,48,55,2,NULL),(589,49,55,2,NULL),(590,50,55,2,NULL),(591,51,55,2,NULL),(592,52,55,2,NULL),(593,37,56,2,NULL),(594,38,56,2,NULL),(595,47,56,2,NULL),(596,48,56,2,NULL),(597,49,56,2,NULL),(598,50,56,2,NULL),(599,51,56,2,NULL),(600,52,56,2,NULL),(601,37,57,2,NULL),(602,38,57,2,NULL),(603,47,57,2,NULL),(604,48,57,2,NULL),(605,49,57,2,NULL),(606,50,57,2,NULL),(607,51,57,2,NULL),(608,52,57,2,NULL),(609,37,58,2,NULL),(610,38,58,2,NULL),(611,47,58,2,NULL),(612,48,58,2,NULL),(613,49,58,2,NULL),(614,50,58,2,NULL),(615,51,58,2,NULL),(616,52,58,2,NULL),(617,37,63,2,NULL),(618,38,63,2,NULL),(619,47,63,2,NULL),(620,48,63,2,NULL),(621,49,63,2,NULL),(622,50,63,2,NULL),(623,51,63,2,NULL),(624,52,63,2,NULL),(625,37,83,2,NULL),(626,38,83,2,NULL),(627,47,83,2,NULL),(628,48,83,2,NULL),(629,49,83,2,NULL),(630,50,83,2,NULL),(631,51,83,2,NULL),(632,52,83,2,NULL),(633,37,84,2,NULL),(634,38,84,2,NULL),(635,47,84,2,NULL),(636,48,84,2,NULL),(637,49,84,2,NULL),(638,50,84,2,NULL),(639,51,84,2,NULL),(640,52,84,2,NULL),(641,70,12,2,NULL),(642,70,36,2,NULL),(643,70,44,2,NULL),(644,43,45,2,NULL),(645,44,45,2,NULL),(646,57,14,2,NULL),(647,57,37,2,NULL),(648,57,47,2,NULL),(649,63,14,2,NULL),(650,63,37,2,NULL),(651,63,47,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (36,'android.permission.ACCESS_CACHE_FILESYSTEM'),(37,'android.permission.ACCESS_COARSE_LOCATION'),(43,'android.permission.ACCESS_DOWNLOAD_MANAGER'),(38,'android.permission.ACCESS_DOWNLOAD_MANAGER_ADVANCED'),(41,'android.permission.ACCESS_DRM'),(42,'android.permission.ACCESS_FINE_LOCATION'),(13,'android.permission.ACCESS_NETWORK_STATE'),(17,'android.permission.ACCESS_WIFI_STATE'),(19,'android.permission.ACCESS_WIMAX_STATE'),(25,'android.permission.BATTERY_STATS'),(31,'android.permission.BLUETOOTH'),(34,'android.permission.BLUETOOTH_ADMIN'),(20,'android.permission.CAMERA'),(47,'android.permission.CHANGE_NETWORK_STATE'),(32,'android.permission.CHANGE_WIFI_STATE'),(23,'android.permission.CHANGE_WIMAX_STATE'),(28,'android.permission.DISABLE_KEYGUARD'),(22,'android.permission.FLASHLIGHT'),(35,'android.permission.INSTALL_DRM'),(1,'android.permission.INSTALL_PACKAGES'),(10,'android.permission.INTERNET'),(27,'android.permission.MODIFY_AUDIO_SETTINGS'),(15,'android.permission.MODIFY_PHONE_STATE'),(18,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(6,'android.permission.READ_CONTACTS'),(7,'android.permission.READ_PHONE_STATE'),(8,'android.permission.READ_SMS'),(33,'android.permission.READ_SYNC_SETTINGS'),(9,'android.permission.RECEIVE_BOOT_COMPLETED'),(24,'android.permission.RECEIVE_MMS'),(5,'android.permission.RECEIVE_SMS'),(45,'android.permission.RECEIVE_WAP_PUSH'),(44,'android.permission.SEND_DOWNLOAD_COMPLETED_INTENTS'),(2,'android.permission.SEND_SMS'),(12,'android.permission.VIBRATE'),(21,'android.permission.WAKE_LOCK'),(16,'android.permission.WRITE_APN_SETTINGS'),(46,'android.permission.WRITE_CALENDAR'),(39,'android.permission.WRITE_CONTACTS'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(40,'android.permission.WRITE_OWNER_DATA'),(26,'android.permission.WRITE_SECURE_SETTINGS'),(30,'android.permission.WRITE_SETTINGS'),(4,'android.permission.WRITE_SMS'),(29,'android.permission.WRITE_SYNC_SETTINGS'),(14,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(11,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(48,'es.cesar.quitesleep.permission.DELIVERED_SMS_ACTION'),(49,'es.cesar.quitesleep.permission.SENT_SMS_ACTION');
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
INSERT INTO `Permissions` VALUES (48,'d'),(49,'d');
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://sms//inbox',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'',NULL,NULL,NULL),(4,NULL,NULL,'smsto:',NULL,NULL,NULL),(5,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(6,NULL,NULL,'content://sms/inbox/',NULL,NULL,NULL),(7,NULL,NULL,'smsto:',NULL,NULL,NULL),(8,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(9,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(10,NULL,NULL,'content://media/internal/audio/media',NULL,NULL,NULL),(11,NULL,NULL,'smsto:',NULL,NULL,NULL),(12,NULL,NULL,'content://sms/',NULL,NULL,NULL),(13,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(14,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(15,NULL,NULL,'custom:2',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'',NULL,NULL,NULL),(18,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(19,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(20,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(21,NULL,NULL,'SWITCH_PRO_WIDGET://widget/id/',NULL,NULL,NULL),(22,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(23,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(24,NULL,NULL,'SWITCH_PRO_WIDGET://widget/id/',NULL,NULL,NULL),(25,NULL,NULL,'custom:3',NULL,NULL,NULL),(26,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(27,NULL,NULL,'SWITCH_PRO_WIDGET://widget/id/',NULL,NULL,NULL),(28,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(29,NULL,NULL,'SWITCH_PRO_WIDGET://widget/id/',NULL,NULL,NULL),(30,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(31,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(32,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(33,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(34,NULL,NULL,'content://com.android.contacts/data/emails',NULL,NULL,NULL),(35,NULL,NULL,'content://com.android.contacts/data/emails',NULL,NULL,NULL),(36,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(37,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(38,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(39,NULL,NULL,'content://sms',NULL,NULL,NULL),(40,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,14,1),(2,18,5),(3,19,6),(4,22,8),(5,26,9),(6,26,10),(7,38,12),(8,39,13),(9,40,14),(10,45,18),(11,47,20),(12,60,22),(13,64,23),(14,67,26),(15,70,28),(16,78,31),(17,79,32),(18,80,33),(19,89,34),(20,93,35),(21,95,36),(22,97,37),(23,98,38),(24,99,39),(25,100,40);
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
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,2,16),(16,2,3),(17,3,1),(18,2,7),(19,3,2),(20,2,9),(21,3,3),(22,2,10),(23,3,5),(24,2,13),(25,3,7),(26,2,15),(27,3,9),(28,3,10),(29,3,11),(30,3,13),(31,3,14),(32,3,15),(33,3,17),(34,3,16),(35,3,19),(36,3,18),(37,3,21),(38,3,20),(39,3,23),(40,3,22),(41,3,25),(42,3,24),(43,3,27),(44,3,26),(45,3,29),(46,3,28),(47,3,31),(48,3,30),(49,3,34),(50,3,32),(51,3,33),(52,4,1),(53,4,2),(54,4,3),(55,4,5),(56,4,7),(57,4,10),(58,4,11),(59,4,13),(60,4,14),(61,5,2),(62,5,3),(63,5,4),(64,5,5),(65,5,6),(66,5,7),(67,5,8),(68,5,9),(69,5,10),(70,5,12),(71,5,13),(72,5,17),(73,5,16),(74,5,29),(75,5,30),(76,5,35),(77,5,38),(78,5,39),(79,5,36),(80,5,37),(81,5,42),(82,5,43),(83,5,40),(84,5,41),(85,5,46),(86,5,47),(87,5,44),(88,5,45),(89,6,2),(90,6,3),(91,6,4),(92,6,5),(93,6,6),(94,6,7),(95,6,8),(96,6,9),(97,6,10),(98,6,12),(99,6,13),(100,6,17),(101,6,16),(102,6,29),(103,6,30),(104,6,35),(105,6,38),(106,6,39),(107,6,36),(108,6,37),(109,6,42),(110,6,43),(111,6,40),(112,6,41),(113,6,46),(114,6,47),(115,6,44),(116,6,45);
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

-- Dump completed on 2015-10-12  3:30:21
