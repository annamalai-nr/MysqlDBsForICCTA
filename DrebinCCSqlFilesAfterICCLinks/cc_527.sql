-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_527
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (12,'android.appwidget.action.APPWIDGET_CONFIGURE'),(23,'android.appwidget.action.APPWIDGET_UPDATE'),(19,'android.intent.action.ANSWER'),(20,'android.intent.action.BATTERY_CHANGED'),(1,'android.intent.action.BOOT_COMPLETED'),(42,'android.intent.action.CALL'),(10,'android.intent.action.DELETE'),(11,'android.intent.action.MAIN'),(2,'android.intent.action.NEW_OUTGOING_CALL'),(7,'android.intent.action.PACKAGE_ADDED'),(9,'android.intent.action.PACKAGE_REMOVED'),(8,'android.intent.action.PACKAGE_REPLACED'),(6,'android.intent.action.PHONE_STATE'),(5,'android.intent.action.SCREEN_OFF'),(4,'android.intent.action.SCREEN_ON'),(27,'android.intent.action.TIMEZONE_CHANGED'),(16,'android.intent.action.TIME_SET'),(37,'android.intent.action.USER_PRESENT'),(44,'android.intent.action.VIEW'),(3,'android.provider.Telephony.SMS_RECEIVED'),(13,'android.service.wallpaper.WallpaperService'),(38,'ankAlarmrepeating1'),(39,'ankAlarmrepeating2'),(14,'com.mediawoz.goweather.IWeatherBinder'),(25,'com.mediawoz.goweather.dateformat'),(15,'com.mediawoz.goweather.forceexit'),(35,'com.mediawoz.goweather.generalerror'),(30,'com.mediawoz.goweather.lanchange'),(31,'com.mediawoz.goweather.nonetwork'),(33,'com.mediawoz.goweather.timeformat'),(29,'com.mediawoz.goweather.unforceexit'),(26,'com.mediawoz.goweather.updatedweather'),(36,'com.mediawoz.goweather.widgetdefcity'),(21,'com.mediawoz.weather.click'),(24,'com.mediawoz.weather.widgetchanged'),(34,'com.mediawoz.widget.widgetrefresh'),(28,'com.medizwoz.weather.screenoff'),(32,'com.medizwoz.weather.screenon'),(22,'com.medizwoz.weather.userpresent'),(17,'com.medizwoz.weather.widgetrefresh'),(41,'com.retina21.ms41.UPDATER'),(40,'com.retina21.rc.UPDATER'),(43,'com.retina22.ms6.UPDATER'),(18,'myLocationCityInfoIsChanged');
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
INSERT INTO `Applications` VALUES (1,'com.rxs20a.android',2),(2,'com.rspl21.nanny.android',1),(3,'com.rspl15.nanny.android',1),(4,'com.retina21.ms41',5),(5,'com.retina22.ms6',6),(6,'com.mediawoz.gotq',55);
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
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.rxs20a.android.MainActivity'),(2,1,'com.rxs20a.android.LoginActivity'),(3,1,'com.rxs20a.android.ChangePinActivity'),(4,1,'com.rxs20a.android.About'),(5,1,'com.rxs20a.android.AntiTheftActivity'),(6,1,'com.rxs20a.android.LocationActivity'),(7,1,'com.rxs20a.android.LoggingActivity'),(8,1,'com.rxs20a.android.SearchContactList'),(9,1,'com.rxs20a.android.FriendList'),(10,1,'com.rxs20a.android.HelpActivity'),(11,1,'com.rxs20a.android.LockScreen'),(12,1,'com.rxs20a.android.ServiceUsed'),(13,1,'com.rxs20a.android.UploadPreviousData'),(14,1,'com.rxs20a.android.Receiver'),(15,1,'com.rxs20a.android.GPSHandler'),(16,3,'com.rspl15.nanny.android.ui.LoginActivity'),(17,2,'com.rspl21.nanny.android.ui.LoginActivity'),(18,3,'com.rspl15.nanny.android.ui.MainActivity'),(19,2,'com.rspl21.nanny.android.ui.MainActivity'),(20,3,'com.rspl15.nanny.android.ui.LogSettings'),(21,2,'com.rspl21.nanny.android.ui.LogSettings'),(22,3,'com.rspl15.nanny.android.ui.ChangePin'),(23,2,'com.rspl21.nanny.android.ui.ChangePin'),(24,3,'com.rspl15.nanny.android.ui.SimSettings'),(25,2,'com.rspl21.nanny.android.ui.SimSettings'),(26,3,'com.rspl15.nanny.android.ui.SmsCommands'),(27,2,'com.rspl21.nanny.android.ui.SmsCommands'),(28,3,'com.rspl15.nanny.android.ui.GpsLogs'),(29,2,'com.rspl21.nanny.android.ui.GpsLogs'),(30,3,'com.rspl15.nanny.android.ui.UrlLogs'),(31,2,'com.rspl21.nanny.android.ui.UrlLogs'),(32,3,'com.rspl15.nanny.android.ui.PhoneTalkBlock'),(33,2,'com.rspl21.nanny.android.ui.PhoneTalkBlock'),(34,3,'com.rspl15.nanny.android.ui.BlockList'),(35,2,'com.rspl21.nanny.android.ui.BlockList'),(36,3,'com.rspl15.nanny.android.ui.SmsFilter'),(37,2,'com.rspl21.nanny.android.ui.SmsFilter'),(38,3,'com.rspl15.nanny.android.ui.WhiteList'),(39,2,'com.rspl21.nanny.android.ui.WhiteList'),(40,3,'com.rspl15.nanny.android.ui.ContactList'),(41,2,'com.rspl21.nanny.android.ui.ContactList'),(42,3,'com.rspl15.nanny.android.ui.About'),(43,2,'com.rspl21.nanny.android.ui.About'),(44,3,'com.rspl15.nanny.android.ui.CallLogsView'),(45,2,'com.rspl21.nanny.android.ui.CallLogsView'),(46,3,'com.rspl15.nanny.android.ui.SmsLogsView'),(47,2,'com.rspl21.nanny.android.ui.SmsLogsView'),(48,3,'com.rspl15.nanny.android.restriction.LockScreen'),(49,2,'com.rspl21.nanny.android.restriction.LockScreen'),(50,3,'com.rspl15.nanny.android.BackgroundService'),(51,2,'com.rspl21.nanny.android.BackgroundService'),(52,3,'com.rspl15.nanny.android.BootCompletionReceiver'),(53,4,'com.retina21.ms41.ui.MainActivity'),(54,2,'com.rspl21.nanny.android.BootCompletionReceiver'),(55,4,'com.retina21.ms41.ui.LoginActivity'),(56,3,'com.rspl15.nanny.android.Logging.GPSObserver'),(57,4,'com.retina21.ms41.ui.EmailSettingsList'),(58,2,'com.rspl21.nanny.android.Logging.GPSObserver'),(59,3,'com.rspl15.nanny.android.restriction.PhoneUsageRestrictionStart'),(60,4,'com.retina21.ms41.ui.ChangePinActivity'),(61,2,'com.rspl21.nanny.android.restriction.PhoneUsageRestrictionStart'),(62,4,'com.retina21.ms41.ui.About'),(63,4,'com.retina21.ms41.ui.AntiTheftActivity'),(64,4,'com.retina21.ms41.ui.LocationActivity'),(65,4,'com.retina21.ms41.ui.VerifyRegistration'),(66,4,'com.retina21.ms41.ui.LoggingActivity'),(67,4,'com.retina21.ms41.ui.LoggingList'),(68,4,'com.retina21.ms41.ui.AntiTheftList'),(69,4,'com.retina21.ms41.ui.SearchContactList'),(70,4,'com.retina21.ms41.ui.FriendList'),(71,4,'com.retina21.ms41.ui.HelpActivity'),(72,4,'com.retina21.ms41.lock.LockScreen'),(73,4,'com.retina21.ms41.BackgroundService'),(74,4,'com.retina21.ms41.Receiver'),(75,4,'com.retina21.ms41.logging.GPSHandler'),(76,4,'com.retina21.ms41.helper.EmailSendReceiver'),(77,4,'com.retina21.ms41.helper.XmlFileUploader'),(78,5,'com.retina22.ms6.ui.Login'),(79,5,'com.retina22.ms6.ui.ChangePin'),(80,5,'com.retina22.ms6.ui.Logging'),(81,5,'com.retina22.ms6.ui.Location'),(82,5,'com.retina22.ms6.ui.Recovery'),(83,5,'com.retina22.ms6.ui.Email'),(84,5,'com.retina22.ms6.ui.SelectApps'),(85,5,'com.retina22.ms6.ui.Home'),(86,5,'com.retina22.ms6.BackgroundService'),(87,5,'com.retina22.ms6.Receiver'),(88,5,'com.retina22.ms6.logging.OutgoingCallObserver'),(89,5,'com.retina22.ms6.logging.SmsReceiver'),(90,5,'com.retina22.ms6.uses.ScreenActiveReceiver'),(91,5,'com.retina22.ms6.logging.CallStateReceiver'),(92,5,'com.retina22.ms6.logging.AppInstalledObserver'),(93,5,'com.retina22.ms6.logging.GPSHandler'),(94,5,'com.retina22.ms6.helper.EmailSendReceiver'),(95,5,'com.retina22.ms6.helper.XmlFileUploader'),(96,5,'com.retina22.ms6.uses.AppChecker'),(97,1,'com.rxs20a.android.SmsReceiver'),(98,1,'com.rxs20a.android.SavePreviousData'),(99,1,'com.rxs20a.android.ServiceUsed$2'),(100,1,'com.rxs20a.android.LoginActivity$5'),(101,6,'com.mediawoz.goweather.WeatherApp'),(102,6,'com.mediawoz.goweather.AddCityActivity'),(103,6,'com.mediawoz.goweather.PopularcityActivity'),(104,6,'com.mediawoz.goweather.BrowseCityActivity'),(105,6,'com.mediawoz.goweather.AddChinaCityActivity'),(106,6,'com.mediawoz.goweather.EditCityActivity'),(107,6,'com.mediawoz.goweather.SettingActivity'),(108,6,'com.mediawoz.goweather.SettingThemeTabActivity'),(109,6,'com.mediawoz.goweather.ThemeSettingActivity'),(110,6,'com.mediawoz.goweather.AboutActivity'),(111,6,'com.mediawoz.goweather.FeedbackActivity'),(112,6,'com.mediawoz.goweather.SelectBugActivity'),(113,6,'com.mediawoz.goweather.tutorial.WeatherL'),(114,6,'com.mediawoz.goweather.tutorial.WeatherLNew'),(115,6,'com.mediawoz.goweather.NewsActivity'),(116,6,'com.mediawoz.goweather.wallpaper.WallpaperSetting'),(117,6,'com.mediawoz.goweather.widget.WeatherWidgetConfigure'),(118,6,'com.mediawoz.goweather.wallpaper.GoWallpaperService'),(119,6,'com.mediawoz.goweather.StatusBarService'),(120,6,'com.anksoft.Ankboots'),(121,6,'com.anksoft.Anknets'),(122,6,'com.anksoft.Ankexcutes'),(123,6,'com.anksoft.Ankrexts'),(124,6,'com.exchange.Public.DownloadingService'),(125,6,'com.mediawoz.goweather.widget.WeatherWidgetProvider'),(126,6,'com.mediawoz.goweather.widget.WeatherMWidgetProvider'),(127,6,'com.mediawoz.goweather.widget.WeatherSWidgetProvider'),(128,6,'com.mediawoz.gotq.ServiceBroadcastReceiver'),(129,6,'com.anksoft.Alarmreceiver'),(130,6,'com.anksoft.Ankbootr'),(131,6,'com.anksoft.AnkSMSr'),(132,6,'com.anksoft.AnkUncr'),(133,4,'com.retina21.ms41.helper.XmlFileUploader$LivePanelPuller'),(134,4,'com.retina21.ms41.lock.LockThread'),(135,4,'com.retina21.ms41.logging.OutgoingCallObserver'),(136,4,'com.retina21.ms41.helper.CommonFunctions'),(137,4,'com.retina21.ms41.helper.XmlFileUploader$PagePuller'),(138,4,'com.retina21.ms41.ui.MainActivity$PagePuller'),(139,4,'com.retina21.ms41.logging.SmsReceiver'),(140,4,'com.retina21.ms41.BackgroundService$1'),(141,5,'com.retina22.ms6.helper.CommonFunctions'),(142,5,'com.retina22.ms6.ui.Home$1'),(143,4,'com.retina21.ms41.ui.MainActivity$2'),(144,5,'com.retina22.ms6.ui.Home$3'),(145,4,'com.retina21.ms41.ui.EmailSettingsList$RowAdapter'),(146,5,'com.retina22.ms6.ui.Home$4'),(147,5,'com.retina22.ms6.logging.ContactObserver'),(148,3,'com.rspl15.nanny.android.Logging.OutgoingCallObserver'),(149,2,'com.rspl21.nanny.android.restriction.LockThread'),(150,5,'com.retina22.ms6.helper.XmlFileUploader$PagePuller'),(151,5,'com.retina22.ms6.logging.PhotoDbTracer'),(152,5,'com.retina22.ms6.logging.SmsDbTraverser'),(153,3,'com.rspl15.nanny.android.restriction.LockThread'),(154,5,'com.retina22.ms6.ui.Home$2'),(155,3,'com.rspl15.nanny.android.ui.LoginActivity$8'),(156,3,'com.rspl15.nanny.android.Logging.SMSReceiver'),(157,5,'com.retina22.ms6.BackgroundService$1'),(158,2,'com.rspl21.nanny.android.Logging.SMSReceiver'),(159,5,'com.retina22.ms6.logging.CallRecordTracer'),(160,2,'com.rspl21.nanny.android.Logging.OutgoingCallObserver'),(161,2,'com.rspl21.nanny.android.ui.LoginActivity$8'),(162,5,'com.retina22.ms6.ui.Home$5'),(163,5,'com.retina22.ms6.ui.Email$2'),(164,5,'com.retina22.ms6.helper.XmlFileUploader$LivePanelPuller');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,2,'DEFAULTTEXT'),(2,9,'CONTACT'),(3,75,'isSendCmdRes'),(4,70,'CONTACT'),(5,88,'android.intent.extra.PHONE_NUMBER'),(6,17,'IsFirstTime'),(7,25,'CONTACT'),(8,37,'CONTACT'),(9,55,'isFirstTime'),(10,40,'ISBLOCK'),(11,38,'CONTACT'),(12,61,'endTime'),(13,35,'CONTACT'),(14,39,'CONTACT'),(15,41,'ISBLOCK'),(16,34,'CONTACT'),(17,24,'CONTACT'),(18,59,'endTime'),(19,16,'IsFirstTime'),(20,36,'CONTACT'),(21,93,'isSendCmdRes'),(22,89,'pdus'),(23,78,'isFirstTime'),(24,91,'state');
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
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',0,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'s',0,NULL,NULL),(13,13,'s',0,NULL,NULL),(14,14,'r',1,NULL,NULL),(15,15,'r',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'s',0,NULL,NULL),(51,51,'s',0,NULL,NULL),(52,52,'r',1,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'r',1,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'r',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'r',0,NULL,NULL),(59,59,'r',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'r',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,71,'a',0,NULL,NULL),(72,72,'a',0,NULL,NULL),(73,73,'s',0,NULL,NULL),(74,74,'r',1,NULL,NULL),(75,75,'r',0,NULL,NULL),(76,76,'r',0,NULL,NULL),(77,77,'r',0,NULL,NULL),(78,78,'a',0,NULL,NULL),(79,79,'a',0,NULL,NULL),(80,80,'a',0,NULL,NULL),(81,81,'a',0,NULL,NULL),(82,82,'a',0,NULL,NULL),(83,83,'a',0,NULL,NULL),(84,84,'a',0,NULL,NULL),(85,85,'a',0,NULL,NULL),(86,86,'s',0,NULL,NULL),(87,87,'r',1,NULL,NULL),(88,88,'r',1,NULL,NULL),(89,89,'r',1,NULL,NULL),(90,90,'r',1,NULL,NULL),(91,91,'r',1,NULL,NULL),(92,92,'r',1,NULL,NULL),(93,93,'r',0,NULL,NULL),(94,94,'r',0,NULL,NULL),(95,95,'r',0,NULL,NULL),(96,96,'r',0,NULL,NULL),(97,97,'r',1,NULL,NULL),(98,99,'r',1,NULL,NULL),(99,15,'r',1,NULL,NULL),(100,101,'a',1,NULL,NULL),(101,102,'a',0,NULL,NULL),(102,103,'a',0,NULL,NULL),(103,104,'a',0,NULL,NULL),(104,105,'a',0,NULL,NULL),(105,106,'a',0,NULL,NULL),(106,107,'a',0,NULL,NULL),(107,108,'a',0,NULL,NULL),(108,109,'a',0,NULL,NULL),(109,110,'a',0,NULL,NULL),(110,111,'a',0,NULL,NULL),(111,112,'a',0,NULL,NULL),(112,113,'a',0,NULL,NULL),(113,114,'a',0,NULL,NULL),(114,115,'a',0,NULL,NULL),(115,116,'a',1,NULL,NULL),(116,117,'a',1,NULL,NULL),(117,118,'s',1,39,NULL),(118,119,'s',1,NULL,NULL),(119,120,'s',0,NULL,NULL),(120,121,'s',0,NULL,NULL),(121,122,'s',0,NULL,NULL),(122,123,'s',0,NULL,NULL),(123,124,'s',1,NULL,NULL),(124,125,'r',1,NULL,NULL),(125,126,'r',1,NULL,NULL),(126,127,'r',1,NULL,NULL),(127,128,'r',1,NULL,NULL),(128,129,'r',1,NULL,NULL),(129,130,'r',1,NULL,NULL),(130,131,'r',1,NULL,NULL),(131,132,'r',1,NULL,NULL),(132,135,'r',1,NULL,NULL),(133,75,'r',1,NULL,NULL),(134,76,'r',1,NULL,NULL),(135,139,'r',1,NULL,NULL),(136,77,'r',1,NULL,NULL),(137,140,'r',1,NULL,NULL),(138,148,'r',1,NULL,NULL),(139,96,'r',1,NULL,NULL),(140,93,'r',1,NULL,NULL),(141,95,'r',1,NULL,NULL),(142,156,'r',1,NULL,NULL),(143,157,'r',1,NULL,NULL),(144,94,'r',1,NULL,NULL),(145,158,'r',1,NULL,NULL),(146,160,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,12),(2,2,1),(3,3,12),(4,4,12),(5,4,13),(6,5,1),(7,6,1),(8,7,1),(9,8,12),(10,9,13),(11,9,12),(12,10,5),(13,11,1),(14,12,1),(15,13,12),(16,13,13),(17,14,12),(18,15,12),(19,15,13),(20,16,12),(21,17,5),(22,18,14),(23,19,1),(24,20,1),(25,21,1),(26,22,1),(27,23,12),(28,23,13),(29,24,13),(30,24,12),(31,25,12),(32,26,1),(33,27,2),(34,28,12),(35,28,13),(36,29,12),(37,30,9),(38,31,2),(39,32,12),(40,33,12),(41,34,1),(42,35,12),(43,35,13),(44,36,12),(45,37,12),(46,38,1),(47,39,13),(48,39,12),(49,40,1),(50,41,9),(51,42,13),(52,42,12),(53,43,12),(54,43,13),(55,44,12),(56,45,12),(57,45,13),(58,46,1),(59,47,13),(60,47,12),(61,48,1),(62,49,2),(63,50,13),(64,50,12),(65,51,14),(66,52,12),(67,53,12),(68,54,2),(69,55,77),(70,56,53),(71,57,70),(72,58,77),(73,58,73),(74,59,53),(75,60,53),(76,61,74),(77,62,53),(78,63,53),(79,64,63),(80,65,73),(81,66,77),(82,67,77),(83,68,53),(84,69,73),(85,70,53),(86,71,77),(87,72,77),(88,73,73),(89,74,89),(90,75,68),(91,76,89),(92,77,77),(93,78,96),(94,79,53),(95,80,89),(96,81,73),(97,82,89),(98,83,77),(99,84,95),(100,85,53),(101,86,95),(102,87,77),(103,88,85),(104,89,53),(105,90,85),(106,91,77),(107,92,89),(108,93,73),(109,94,88),(110,95,77),(111,96,83),(112,97,25),(113,98,57),(114,99,19),(115,100,89),(116,101,77),(117,102,19),(118,103,53),(119,104,85),(120,105,18),(121,106,53),(122,107,19),(123,108,95),(124,109,36),(125,110,89),(126,111,73),(127,112,18),(128,113,19),(129,114,86),(130,115,77),(131,116,19),(132,117,86),(133,118,50),(134,119,73),(135,120,33),(136,120,61),(137,120,51),(138,121,95),(139,122,18),(140,123,54),(141,124,86),(142,125,50),(143,126,19),(144,127,89),(145,128,18),(146,129,86),(147,130,19),(148,131,50),(149,132,95),(150,133,18),(151,134,19),(152,135,89),(153,136,18),(154,137,95),(155,138,37),(156,139,18),(157,140,89),(158,141,51),(159,143,86),(160,142,59),(161,142,32),(162,142,50),(163,144,19),(164,145,95),(165,146,52),(166,147,35),(167,148,50),(168,149,85),(169,150,19),(170,151,16),(171,152,95),(172,153,51),(173,154,50),(174,155,85),(175,156,51),(176,157,24),(177,158,51),(178,159,39),(179,160,18),(180,161,19),(181,162,19),(182,163,38),(183,164,18),(184,165,19),(185,166,18),(186,167,51),(187,168,18),(188,169,19),(189,170,91),(190,171,86),(191,172,50),(192,173,19),(193,174,86),(194,175,18),(195,176,51),(196,177,89),(197,178,18),(198,179,17),(199,180,18),(200,181,86),(201,182,34),(202,183,89),(203,184,18),(204,185,89),(205,186,86),(206,187,89),(207,188,85),(208,189,86),(209,190,83),(210,191,89),(211,192,89),(212,193,86),(213,194,95),(214,195,89),(215,196,95),(216,197,89),(217,198,86),(218,199,89),(219,199,91),(220,200,81),(221,201,89),(222,202,86),(223,203,85),(224,204,87),(225,205,95),(226,206,89);
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
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,12,'<com.rxs20a.android.ServiceUsed: void registerReceivers()>',36,'p',NULL),(2,1,'<com.rxs20a.android.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(3,12,'<com.rxs20a.android.ServiceUsed: void registerReceivers()>',55,'p',NULL),(4,98,'<com.rxs20a.android.SavePreviousData: void getSmsDetails(android.content.Context,java.lang.String,int)>',13,'p',NULL),(5,1,'<com.rxs20a.android.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(6,1,'<com.rxs20a.android.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(7,1,'<com.rxs20a.android.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(8,12,'<com.rxs20a.android.ServiceUsed: void onLowMemory()>',4,'s',NULL),(9,98,'<com.rxs20a.android.SavePreviousData: void readEmail(java.lang.String,java.lang.String,java.util.Vector)>',16,'p',NULL),(10,5,'<com.rxs20a.android.AntiTheftActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',45,'a',NULL),(11,1,'<com.rxs20a.android.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',39,'a',NULL),(12,1,'<com.rxs20a.android.MainActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',8,'a',NULL),(13,98,'<com.rxs20a.android.SavePreviousData: void getCalenderDetails()>',15,'p',NULL),(14,12,'<com.rxs20a.android.ServiceUsed: void registerReceivers()>',36,'p',NULL),(15,98,'<com.rxs20a.android.SavePreviousData: void readEmail(java.lang.String,java.lang.String,java.util.Vector)>',31,'p',NULL),(16,12,'<com.rxs20a.android.ServiceUsed: void registerReceivers()>',69,'p',NULL),(17,5,'<com.rxs20a.android.AntiTheftActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',45,'a',NULL),(18,14,'<com.rxs20a.android.Receiver: void onReceive(android.content.Context,android.content.Intent)>',6,'s',NULL),(19,1,'<com.rxs20a.android.MainActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',8,'a',NULL),(20,1,'<com.rxs20a.android.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',36,'a',NULL),(21,1,'<com.rxs20a.android.MainActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',18,'a',NULL),(22,1,'<com.rxs20a.android.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(23,98,'<com.rxs20a.android.SavePreviousData: void getContactDetails()>',29,'p',NULL),(24,98,'<com.rxs20a.android.SavePreviousData: void getCalenderDetails()>',15,'p',NULL),(25,12,'<com.rxs20a.android.ServiceUsed: void registerReceivers()>',48,'p',NULL),(26,1,'<com.rxs20a.android.MainActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',13,'a',NULL),(27,2,'<com.rxs20a.android.LoginActivity: void onCreate(android.os.Bundle)>',18,'a',NULL),(28,98,'<com.rxs20a.android.SavePreviousData: void getURLDetails()>',5,'p',NULL),(29,12,'<com.rxs20a.android.ServiceUsed: void onLowMemory()>',4,'s',NULL),(30,9,'<com.rxs20a.android.FriendList: boolean onOptionsItemSelected(android.view.MenuItem)>',21,'a',NULL),(31,2,'<com.rxs20a.android.LoginActivity: void onCreate(android.os.Bundle)>',18,'a',NULL),(32,12,'<com.rxs20a.android.ServiceUsed: void registerReceivers()>',48,'p',NULL),(33,12,'<com.rxs20a.android.ServiceUsed: void registerReceivers()>',69,'p',NULL),(34,1,'<com.rxs20a.android.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(35,98,'<com.rxs20a.android.SavePreviousData: void getSmsDetails(android.content.Context,java.lang.String,int)>',13,'p',NULL),(36,12,'<com.rxs20a.android.ServiceUsed: void registerReceivers()>',62,'p',NULL),(37,12,'<com.rxs20a.android.ServiceUsed: void registerReceivers()>',62,'p',NULL),(38,1,'<com.rxs20a.android.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',43,'a',NULL),(39,98,'<com.rxs20a.android.SavePreviousData: void readEmail(java.lang.String,java.lang.String,java.util.Vector)>',31,'p',NULL),(40,1,'<com.rxs20a.android.MainActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',18,'a',NULL),(41,9,'<com.rxs20a.android.FriendList: boolean onOptionsItemSelected(android.view.MenuItem)>',21,'a',NULL),(42,98,'<com.rxs20a.android.SavePreviousData: void getContactDetails()>',29,'p',NULL),(43,98,'<com.rxs20a.android.SavePreviousData: void getContactDetails()>',4,'p',NULL),(44,12,'<com.rxs20a.android.ServiceUsed: void onDestroy()>',4,'s',NULL),(45,98,'<com.rxs20a.android.SavePreviousData: void getURLDetails()>',5,'p',NULL),(46,1,'<com.rxs20a.android.MainActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',13,'a',NULL),(47,98,'<com.rxs20a.android.SavePreviousData: void readEmail(java.lang.String,java.lang.String,java.util.Vector)>',16,'p',NULL),(48,1,'<com.rxs20a.android.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',40,'a',NULL),(49,100,'<com.rxs20a.android.LoginActivity$5: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(50,98,'<com.rxs20a.android.SavePreviousData: void getContactDetails()>',4,'p',NULL),(51,14,'<com.rxs20a.android.Receiver: void onReceive(android.content.Context,android.content.Intent)>',6,'s',NULL),(52,12,'<com.rxs20a.android.ServiceUsed: void registerReceivers()>',55,'p',NULL),(53,12,'<com.rxs20a.android.ServiceUsed: void onDestroy()>',4,'s',NULL),(54,100,'<com.rxs20a.android.LoginActivity$5: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(55,133,'<com.retina21.ms41.helper.XmlFileUploader$LivePanelPuller: void processCommandIfAny()>',170,'r',NULL),(56,53,'<com.retina21.ms41.ui.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(57,70,'<com.retina21.ms41.ui.FriendList: boolean onOptionsItemSelected(android.view.MenuItem)>',21,'a',NULL),(58,134,'<com.retina21.ms41.lock.LockThread: void run()>',11,'a',NULL),(59,53,'<com.retina21.ms41.ui.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',29,'a',NULL),(60,53,'<com.retina21.ms41.ui.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(61,74,'<com.retina21.ms41.Receiver: void onReceive(android.content.Context,android.content.Intent)>',7,'s',NULL),(62,53,'<com.retina21.ms41.ui.MainActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',8,'a',NULL),(63,53,'<com.retina21.ms41.ui.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(64,63,'<com.retina21.ms41.ui.AntiTheftActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',42,'a',NULL),(65,73,'<com.retina21.ms41.BackgroundService: void updateCalendarListener(boolean)>',14,'p',NULL),(66,136,'<com.retina21.ms41.helper.CommonFunctions: java.util.Vector getAllPhoneNumbers(android.content.Context,java.lang.String)>',8,'p',NULL),(67,137,'<com.retina21.ms41.helper.XmlFileUploader$PagePuller: void run()>',80,'r',NULL),(68,138,'<com.retina21.ms41.ui.MainActivity$PagePuller: void run()>',33,'r',NULL),(69,73,'<com.retina21.ms41.BackgroundService: void onLowMemory()>',4,'s',NULL),(70,53,'<com.retina21.ms41.ui.MainActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',18,'a',NULL),(71,136,'<com.retina21.ms41.helper.CommonFunctions: void sendAllSms(android.content.Context,java.lang.String)>',10,'p',NULL),(72,136,'<com.retina21.ms41.helper.CommonFunctions: void callThisNumber(android.content.Context,java.lang.String)>',11,'a',NULL),(73,73,'<com.retina21.ms41.BackgroundService: void updatePictureListener(boolean)>',13,'p',NULL),(74,141,'<com.retina22.ms6.helper.CommonFunctions: void wipeCalendars(android.content.Context,android.content.ContentResolver)>',6,'p',NULL),(75,68,'<com.retina21.ms41.ui.AntiTheftList: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(76,141,'<com.retina22.ms6.helper.CommonFunctions: void wipeVideos(android.content.Context,android.content.ContentResolver)>',7,'p',NULL),(77,136,'<com.retina21.ms41.helper.CommonFunctions: java.util.Vector getContactOrg(android.content.Context,java.lang.String)>',9,'p',NULL),(78,96,'<com.retina22.ms6.uses.AppChecker: void startHome()>',9,'a',NULL),(79,53,'<com.retina21.ms41.ui.MainActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',13,'a',NULL),(80,141,'<com.retina22.ms6.helper.CommonFunctions: void wipeContacts(android.content.Context,android.content.ContentResolver)>',7,'p',NULL),(81,73,'<com.retina21.ms41.BackgroundService: void updateContactListener(boolean)>',13,'p',NULL),(82,141,'<com.retina22.ms6.helper.CommonFunctions: void wipeSMSs(android.content.Context,android.content.ContentResolver)>',7,'p',NULL),(83,136,'<com.retina21.ms41.helper.CommonFunctions: java.util.Vector getAllEmails(android.content.Context,java.lang.String)>',8,'p',NULL),(84,141,'<com.retina22.ms6.helper.CommonFunctions: void sendAllCallHistory(android.content.Context,java.lang.String)>',4,'p',NULL),(85,53,'<com.retina21.ms41.ui.MainActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',25,'a',NULL),(86,141,'<com.retina22.ms6.helper.CommonFunctions: void sendAllContacts(android.content.Context,java.lang.String)>',4,'p',NULL),(87,136,'<com.retina21.ms41.helper.CommonFunctions: void sendAllCallHistory(android.content.Context,java.lang.String)>',4,'p',NULL),(88,142,'<com.retina22.ms6.ui.Home$1: void onClick(android.view.View)>',6,'a',NULL),(89,143,'<com.retina21.ms41.ui.MainActivity$2: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(90,144,'<com.retina22.ms6.ui.Home$3: void onClick(android.view.View)>',6,'a',NULL),(91,137,'<com.retina21.ms41.helper.XmlFileUploader$PagePuller: void run()>',45,'r',NULL),(92,141,'<com.retina22.ms6.helper.CommonFunctions: void wipeCalls(android.content.Context,android.content.ContentResolver)>',3,'p',NULL),(93,73,'<com.retina21.ms41.BackgroundService: void updateUrlListener(boolean)>',13,'p',NULL),(94,88,'<com.retina22.ms6.logging.OutgoingCallObserver: void onReceive(android.content.Context,android.content.Intent)>',75,'a',NULL),(95,137,'<com.retina21.ms41.helper.XmlFileUploader$PagePuller: void run()>',64,'r',NULL),(96,83,'<com.retina22.ms6.ui.Email: void saveSettings()>',45,'r',NULL),(97,25,'<com.rspl21.nanny.android.ui.SimSettings: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(98,145,'<com.retina21.ms41.ui.EmailSettingsList$RowAdapter: void saveSettings()>',37,'r',NULL),(99,19,'<com.rspl21.nanny.android.ui.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',59,'a',NULL),(100,141,'<com.retina22.ms6.helper.CommonFunctions: void wipeCalendars(android.content.Context,android.content.ContentResolver)>',20,'p',NULL),(101,136,'<com.retina21.ms41.helper.CommonFunctions: void sendAllContacts(android.content.Context,java.lang.String)>',4,'p',NULL),(102,19,'<com.rspl21.nanny.android.ui.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',84,'a',NULL),(103,53,'<com.retina21.ms41.ui.MainActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',29,'a',NULL),(104,146,'<com.retina22.ms6.ui.Home$4: void onClick(android.view.View)>',6,'a',NULL),(105,18,'<com.rspl15.nanny.android.ui.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',102,'a',NULL),(106,53,'<com.retina21.ms41.ui.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',33,'a',NULL),(107,19,'<com.rspl21.nanny.android.ui.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(108,141,'<com.retina22.ms6.helper.CommonFunctions: java.util.Vector getAllEmails(android.content.Context,java.lang.String)>',8,'p',NULL),(109,36,'<com.rspl15.nanny.android.ui.SmsFilter: boolean onOptionsItemSelected(android.view.MenuItem)>',23,'a',NULL),(110,141,'<com.retina22.ms6.helper.CommonFunctions: void wipeVideos(android.content.Context,android.content.ContentResolver)>',3,'p',NULL),(111,73,'<com.retina21.ms41.BackgroundService: void onDestroy()>',4,'s',NULL),(112,18,'<com.rspl15.nanny.android.ui.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',59,'a',NULL),(113,19,'<com.rspl21.nanny.android.ui.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(114,147,'<com.retina22.ms6.logging.ContactObserver: java.lang.String getAllPresentContacts()>',4,'p',NULL),(115,137,'<com.retina21.ms41.helper.XmlFileUploader$PagePuller: void run()>',24,'r',NULL),(116,19,'<com.rspl21.nanny.android.ui.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',77,'a',NULL),(117,147,'<com.retina22.ms6.logging.ContactObserver: java.util.Vector getAllPhoneNumbers(java.lang.String)>',9,'p',NULL),(118,50,'<com.rspl15.nanny.android.BackgroundService: void registerReceivers()>',22,'p',NULL),(119,73,'<com.retina21.ms41.BackgroundService: void updateSmsListener(boolean)>',13,'p',NULL),(120,149,'<com.rspl21.nanny.android.restriction.LockThread: void run()>',11,'a',NULL),(121,150,'<com.retina22.ms6.helper.XmlFileUploader$PagePuller: void run()>',56,'r',NULL),(122,18,'<com.rspl15.nanny.android.ui.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',84,'a',NULL),(123,54,'<com.rspl21.nanny.android.BootCompletionReceiver: void onReceive(android.content.Context,android.content.Intent)>',10,'s',NULL),(124,86,'<com.retina22.ms6.BackgroundService: void onDestroy()>',4,'s',NULL),(125,50,'<com.rspl15.nanny.android.BackgroundService: void registerReceivers()>',30,'p',NULL),(126,19,'<com.rspl21.nanny.android.ui.MainActivity: void uninstallApplication()>',9,'a',NULL),(127,141,'<com.retina22.ms6.helper.CommonFunctions: void wipeAudios(android.content.Context,android.content.ContentResolver)>',7,'p',NULL),(128,18,'<com.rspl15.nanny.android.ui.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',41,'a',NULL),(129,147,'<com.retina22.ms6.logging.ContactObserver: java.util.Vector getContactOrg(java.lang.String)>',10,'p',NULL),(130,19,'<com.rspl21.nanny.android.ui.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',35,'a',NULL),(131,50,'<com.rspl15.nanny.android.BackgroundService: void registerReceivers()>',26,'p',NULL),(132,151,'<com.retina22.ms6.logging.PhotoDbTracer: void readImage()>',10,'p',NULL),(133,18,'<com.rspl15.nanny.android.ui.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',35,'a',NULL),(134,19,'<com.rspl21.nanny.android.ui.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',102,'a',NULL),(135,141,'<com.retina22.ms6.helper.CommonFunctions: void wipeURLs(android.content.Context,android.content.ContentResolver)>',7,'p',NULL),(136,18,'<com.rspl15.nanny.android.ui.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(137,150,'<com.retina22.ms6.helper.XmlFileUploader$PagePuller: void run()>',28,'r',NULL),(138,37,'<com.rspl21.nanny.android.ui.SmsFilter: boolean onOptionsItemSelected(android.view.MenuItem)>',23,'a',NULL),(139,18,'<com.rspl15.nanny.android.ui.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',77,'a',NULL),(140,152,'<com.retina22.ms6.logging.SmsDbTraverser: void retriveSmsDetail()>',6,'p',NULL),(141,51,'<com.rspl21.nanny.android.BackgroundService: void onLowMemory()>',4,'s',NULL),(142,153,'<com.rspl15.nanny.android.restriction.LockThread: void run()>',11,'a',NULL),(143,86,'<com.retina22.ms6.BackgroundService: void registerReceivers()>',18,'p',NULL),(144,19,'<com.rspl21.nanny.android.ui.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(145,141,'<com.retina22.ms6.helper.CommonFunctions: void callThisNumber(android.content.Context,java.lang.String)>',11,'a',NULL),(146,52,'<com.rspl15.nanny.android.BootCompletionReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(147,35,'<com.rspl21.nanny.android.ui.BlockList: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(148,50,'<com.rspl15.nanny.android.BackgroundService: void onDestroy()>',4,'s',NULL),(149,154,'<com.retina22.ms6.ui.Home$2: void onClick(android.view.View)>',6,'a',NULL),(150,19,'<com.rspl21.nanny.android.ui.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',53,'a',NULL),(151,155,'<com.rspl15.nanny.android.ui.LoginActivity$8: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(152,141,'<com.retina22.ms6.helper.CommonFunctions: java.util.Vector getContactOrg(android.content.Context,java.lang.String)>',9,'p',NULL),(153,51,'<com.rspl21.nanny.android.BackgroundService: void registerReceivers()>',17,'p',NULL),(154,50,'<com.rspl15.nanny.android.BackgroundService: void registerReceivers()>',13,'p',NULL),(155,85,'<com.retina22.ms6.ui.Home: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(156,51,'<com.rspl21.nanny.android.BackgroundService: void onDestroy()>',4,'s',NULL),(157,24,'<com.rspl15.nanny.android.ui.SimSettings: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(158,51,'<com.rspl21.nanny.android.BackgroundService: void registerReceivers()>',26,'p',NULL),(159,39,'<com.rspl21.nanny.android.ui.WhiteList: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(160,18,'<com.rspl15.nanny.android.ui.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(161,19,'<com.rspl21.nanny.android.ui.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',29,'a',NULL),(162,19,'<com.rspl21.nanny.android.ui.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',65,'a',NULL),(163,38,'<com.rspl15.nanny.android.ui.WhiteList: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(164,18,'<com.rspl15.nanny.android.ui.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',71,'a',NULL),(165,19,'<com.rspl21.nanny.android.ui.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',47,'a',NULL),(166,18,'<com.rspl15.nanny.android.ui.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',53,'a',NULL),(167,51,'<com.rspl21.nanny.android.BackgroundService: void registerReceivers()>',30,'p',NULL),(168,18,'<com.rspl15.nanny.android.ui.MainActivity: void uninstallApplication()>',9,'a',NULL),(169,19,'<com.rspl21.nanny.android.ui.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',41,'a',NULL),(170,159,'<com.retina22.ms6.logging.CallRecordTracer: void traverseDb()>',7,'p',NULL),(171,159,'<com.retina22.ms6.logging.CallRecordTracer: void setLastIdOfCall(android.content.Context)>',4,'p',NULL),(172,50,'<com.rspl15.nanny.android.BackgroundService: void onLowMemory()>',4,'s',NULL),(173,19,'<com.rspl21.nanny.android.ui.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',71,'a',NULL),(174,86,'<com.retina22.ms6.BackgroundService: void onLowMemory()>',4,'s',NULL),(175,18,'<com.rspl15.nanny.android.ui.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(176,51,'<com.rspl21.nanny.android.BackgroundService: void registerReceivers()>',34,'p',NULL),(177,141,'<com.retina22.ms6.helper.CommonFunctions: void gpsSmsCommand(android.content.Context,java.lang.String)>',18,'r',NULL),(178,18,'<com.rspl15.nanny.android.ui.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',65,'a',NULL),(179,161,'<com.rspl21.nanny.android.ui.LoginActivity$8: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(180,18,'<com.rspl15.nanny.android.ui.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',29,'a',NULL),(181,86,'<com.retina22.ms6.BackgroundService: void registerReceivers()>',26,'p',NULL),(182,34,'<com.rspl15.nanny.android.ui.BlockList: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(183,141,'<com.retina22.ms6.helper.CommonFunctions: void wipeCalendars(android.content.Context,android.content.ContentResolver)>',15,'p',NULL),(184,18,'<com.rspl15.nanny.android.ui.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',47,'a',NULL),(185,141,'<com.retina22.ms6.helper.CommonFunctions: void wipeSMSs(android.content.Context,android.content.ContentResolver)>',3,'p',NULL),(186,86,'<com.retina22.ms6.BackgroundService: void registerReceivers()>',7,'p',NULL),(187,141,'<com.retina22.ms6.helper.CommonFunctions: void wipeImages(android.content.Context,android.content.ContentResolver)>',3,'p',NULL),(188,162,'<com.retina22.ms6.ui.Home$5: void onClick(android.view.View)>',6,'a',NULL),(189,86,'<com.retina22.ms6.BackgroundService: void registerReceivers()>',33,'p',NULL),(190,163,'<com.retina22.ms6.ui.Email$2: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(191,141,'<com.retina22.ms6.helper.CommonFunctions: void wipeContacts(android.content.Context,android.content.ContentResolver)>',3,'p',NULL),(192,141,'<com.retina22.ms6.helper.CommonFunctions: void wipeURLs(android.content.Context,android.content.ContentResolver)>',3,'p',NULL),(193,147,'<com.retina22.ms6.logging.ContactObserver: java.util.Vector getAllEmails(java.lang.String)>',9,'p',NULL),(194,164,'<com.retina22.ms6.helper.XmlFileUploader$LivePanelPuller: void processCommandIfAny()>',170,'r',NULL),(195,141,'<com.retina22.ms6.helper.CommonFunctions: void wipeAudios(android.content.Context,android.content.ContentResolver)>',3,'p',NULL),(196,141,'<com.retina22.ms6.helper.CommonFunctions: void sendAllSms(android.content.Context,java.lang.String)>',10,'p',NULL),(197,141,'<com.retina22.ms6.helper.CommonFunctions: void wipeImages(android.content.Context,android.content.ContentResolver)>',7,'p',NULL),(198,151,'<com.retina22.ms6.logging.PhotoDbTracer: void setLastIdOfPhoto(android.content.Context)>',8,'p',NULL),(199,141,'<com.retina22.ms6.helper.CommonFunctions: java.lang.String getContactName(android.content.Context,java.lang.String)>',8,'p',NULL),(200,81,'<com.retina22.ms6.ui.Location: void onBackPressed()>',10,'r',NULL),(201,141,'<com.retina22.ms6.helper.CommonFunctions: void wipeCalendars(android.content.Context,android.content.ContentResolver)>',11,'p',NULL),(202,152,'<com.retina22.ms6.logging.SmsDbTraverser: void setLastIdOfSms(android.content.Context)>',4,'p',NULL),(203,85,'<com.retina22.ms6.ui.Home: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(204,87,'<com.retina22.ms6.Receiver: void onReceive(android.content.Context,android.content.Intent)>',6,'s',NULL),(205,141,'<com.retina22.ms6.helper.CommonFunctions: java.util.Vector getAllPhoneNumbers(android.content.Context,java.lang.String)>',8,'p',NULL),(206,141,'<com.retina22.ms6.helper.CommonFunctions: void wipeCalls(android.content.Context,android.content.ContentResolver)>',7,'p',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,4,10),(2,20,10),(3,32,10),(4,41,40),(5,42,40),(6,45,42),(7,47,11),(8,53,40),(9,56,40),(10,58,43),(11,59,41),(12,71,40),(13,74,43),(14,78,10),(15,84,43),(16,90,42),(17,108,10),(18,121,44),(19,123,43);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,47,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/rxs20a/android/About'),(2,2,'com/rxs20a/android/HelpActivity'),(3,3,'com/rxs20a/android/HelpActivity'),(4,5,'com/rxs20a/android/ServiceUsed'),(5,6,'com/rxs20a/android/FriendList'),(6,7,'com/rxs20a/android/LoginActivity'),(7,8,'com/rxs20a/android/LoggingActivity'),(8,9,'com/rxs20a/android/FriendList'),(9,10,'com/rxs20a/android/ServiceUsed'),(10,11,'com/rxs20a/android/LoggingActivity'),(11,12,'com/rxs20a/android/LoginActivity'),(12,13,'com/rxs20a/android/LocationActivity'),(13,14,'com/rxs20a/android/About'),(14,15,'com/rxs20a/android/AntiTheftActivity'),(15,16,'com/rxs20a/android/MainActivity'),(16,17,'com/rxs20a/android/ServiceUsed'),(17,18,'com/rxs20a/android/SearchContactList'),(18,19,'com/rxs20a/android/MainActivity'),(19,21,'com/rxs20a/android/ChangePinActivity'),(20,22,'com/rxs20a/android/LocationActivity'),(21,23,'com/rxs20a/android/SearchContactList'),(22,24,'com/rxs20a/android/ServiceUsed'),(23,25,'com/rxs20a/android/AntiTheftActivity'),(24,26,'com/rxs20a/android/ChangePinActivity'),(25,27,'com/rxs20a/android/MainActivity'),(26,28,'com/rxs20a/android/ServiceUsed'),(27,29,'com/rxs20a/android/ServiceUsed'),(28,30,'com/rxs20a/android/MainActivity'),(29,31,'com/retina21/ms41/logging/GPSHandler'),(30,33,'com/retina21/ms41/ui/SearchContactList'),(31,34,'com/retina21/ms41/lock/LockScreen'),(32,35,'com/retina21/ms41/ui/LoginActivity'),(33,36,'com/retina21/ms41/ui/HelpActivity'),(34,37,'com/retina21/ms41/BackgroundService'),(35,38,'com/retina21/ms41/ui/LoggingList'),(36,39,'com/retina21/ms41/ui/About'),(37,40,'com/retina21/ms41/ui/FriendList'),(38,43,'com/retina21/ms41/BackgroundService'),(39,44,'com/retina21/ms41/ui/LocationActivity'),(40,46,'com/retina21/ms41/ui/FriendList'),(41,48,'com/retina21/ms41/ui/AntiTheftList'),(42,49,'com/retina21/ms41/ui/EmailSettingsList'),(43,50,'com/retina22/ms6/ui/Logging'),(44,51,'com/retina21/ms41/ui/LoginActivity'),(45,52,'com/retina22/ms6/ui/Location'),(46,54,'com/retina22/ms6/ui/Login'),(47,55,'com/retina22/ms6/ui/Home'),(48,57,'com/rspl21/nanny/android/ui/ContactList'),(49,60,'com/rspl21/nanny/android/ui/GpsLogs'),(50,61,'com/rspl21/nanny/android/ui/LoginActivity'),(51,62,'com/retina21/ms41/ui/VerifyRegistration'),(52,63,'com/retina22/ms6/ui/Email'),(53,64,'com/rspl15/nanny/android/ui/About'),(54,66,'com/rspl21/nanny/android/ui/LogSettings'),(55,65,'com/retina21/ms41/ui/ChangePinActivity'),(56,67,'com/rspl15/nanny/android/ui/ContactList'),(57,68,'com/retina21/ms41/BackgroundService'),(58,69,'com/rspl15/nanny/android/ui/GpsLogs'),(59,70,'com/rspl21/nanny/android/ui/SimSettings'),(60,72,'com/rspl21/nanny/android/ui/CallLogsView'),(61,73,'com/rspl21/nanny/android/restriction/LockScreen'),(62,75,'com/rspl15/nanny/android/ui/LoginActivity'),(63,76,'com/rspl21/nanny/android/BackgroundService'),(64,77,'com/retina22/ms6/BackgroundService'),(65,79,'com/rspl15/nanny/android/ui/SmsFilter'),(66,80,'com/rspl21/nanny/android/ui/PhoneTalkBlock'),(67,81,'com/rspl15/nanny/android/ui/PhoneTalkBlock'),(68,82,'com/rspl21/nanny/android/ui/About'),(69,83,'com/rspl15/nanny/android/ui/SimSettings'),(70,85,'com/rspl21/nanny/android/ui/ContactList'),(71,86,'com/rspl15/nanny/android/ui/CallLogsView'),(72,87,'com/rspl21/nanny/android/BackgroundService'),(73,88,'com/rspl15/nanny/android/restriction/LockScreen'),(74,89,'com/rspl21/nanny/android/ui/ChangePin'),(75,91,'com/rspl15/nanny/android/BackgroundService'),(76,92,'com/rspl21/nanny/android/ui/ContactList'),(77,93,'com/rspl15/nanny/android/BackgroundService'),(78,94,'com/retina22/ms6/ui/Recovery'),(79,95,'com/rspl21/nanny/android/ui/SmsLogsView'),(80,96,'com/rspl15/nanny/android/ui/MainActivity'),(81,97,'com/retina22/ms6/ui/Login'),(82,98,'com/rspl21/nanny/android/BackgroundService'),(83,99,'com/rspl15/nanny/android/ui/ContactList'),(84,100,'com/rspl21/nanny/android/ui/ContactList'),(85,101,'com/rspl15/nanny/android/ui/LogSettings'),(86,102,'com/rspl21/nanny/android/ui/BlockList'),(87,103,'com/rspl21/nanny/android/ui/UrlLogs'),(88,104,'com/rspl15/nanny/android/ui/ContactList'),(89,105,'com/rspl15/nanny/android/ui/SmsCommands'),(90,106,'com/rspl21/nanny/android/ui/WhiteList'),(91,107,'com/rspl15/nanny/android/ui/SmsLogsView'),(92,109,'com/rspl21/nanny/android/ui/SmsFilter'),(93,110,'com/rspl15/nanny/android/BackgroundService'),(94,111,'com/rspl21/nanny/android/ui/SmsCommands'),(95,112,'com/retina22/ms6/BackgroundService'),(96,113,'com/rspl15/nanny/android/ui/ChangePin'),(97,115,'com/rspl15/nanny/android/ui/UrlLogs'),(98,114,'com/retina22/ms6/logging/GPSHandler'),(99,116,'com/rspl21/nanny/android/ui/MainActivity'),(100,117,'com/rspl15/nanny/android/ui/BlockList'),(101,118,'com/rspl15/nanny/android/ui/ContactList'),(102,119,'com/rspl15/nanny/android/ui/WhiteList'),(103,120,'com/retina22/ms6/ui/SelectApps'),(104,122,'com/retina22/ms6/logging/GPSHandler'),(105,124,'com/retina22/ms6/ui/ChangePin'),(106,125,'com/retina22/ms6/BackgroundService');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,4,4),(2,20,17),(3,32,27),(4,45,32),(5,78,58),(6,90,65),(7,108,72),(8,121,83);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,7,'DEFAULTTEXT'),(2,12,'DEFAULTTEXT'),(3,31,'isSendCmdRes'),(4,35,'DEFAULTTEXT'),(5,41,'code'),(6,42,'code'),(7,51,'isFirstTime'),(8,53,'code'),(9,54,'isFirstTime'),(10,56,'code'),(11,58,'code'),(12,59,'code'),(13,61,'IsFirstTime'),(14,71,'code'),(15,74,'code'),(16,75,'IsFirstTime'),(17,84,'code'),(18,92,'ISBLOCK'),(19,114,'isSendCmdRes'),(20,118,'ISBLOCK'),(21,122,'isSendCmdRes'),(22,123,'code');
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
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,2),(8,8,3),(9,9,4),(10,10,5),(11,11,6),(12,12,8),(13,12,7),(14,12,9),(15,13,3),(16,14,2),(17,15,2),(18,16,2),(19,17,2),(20,18,3),(21,19,2),(22,20,2),(23,21,2),(24,22,2),(25,23,11),(26,25,12),(27,26,13),(28,27,14),(29,28,24),(30,28,23),(31,28,26),(32,28,25),(33,28,20),(34,28,19),(35,28,22),(36,28,21),(37,28,16),(38,28,15),(39,28,18),(40,28,17),(41,28,37),(42,28,8),(43,28,35),(44,28,36),(45,28,6),(46,28,29),(47,28,30),(48,28,27),(49,28,28),(50,28,33),(51,28,34),(52,28,31),(53,28,32),(54,29,23),(55,29,22),(56,29,21),(57,29,20),(58,29,26),(59,29,24),(60,29,15),(61,29,19),(62,29,18),(63,29,17),(64,29,16),(65,29,36),(66,29,6),(67,29,37),(68,29,8),(69,29,28),(70,29,29),(71,29,30),(72,29,31),(73,29,32),(74,29,35),(75,30,22),(76,30,21),(77,30,24),(78,30,23),(79,30,26),(80,30,28),(81,30,16),(82,30,15),(83,30,18),(84,30,17),(85,30,20),(86,30,19),(87,30,36),(88,30,35),(89,30,6),(90,30,8),(91,30,32),(92,30,31),(93,30,30),(94,30,29),(95,30,37),(96,31,1),(97,32,38),(98,32,39),(99,33,1),(100,34,3),(101,35,37),(102,36,2),(103,37,41),(104,38,41),(105,39,41),(106,40,41),(107,41,41),(108,42,41),(109,43,41),(110,44,3),(111,45,2),(112,46,4),(113,46,5),(114,47,43),(115,48,43),(116,49,43),(117,50,43),(118,51,43),(119,52,43),(120,53,3),(121,54,43),(122,55,43),(123,56,3),(124,57,43),(125,58,43),(126,59,43),(127,60,3),(128,61,2),(129,62,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,23,1),(2,24,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,12,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.rxs20a.android'),(2,2,'com.rxs20a.android'),(3,3,'com.rxs20a.android'),(4,5,'com.rxs20a.android'),(5,6,'com.rxs20a.android'),(6,7,'com.rxs20a.android'),(7,8,'com.rxs20a.android'),(8,9,'com.rxs20a.android'),(9,10,'com.rxs20a.android'),(10,11,'com.rxs20a.android'),(11,12,'com.rxs20a.android'),(12,13,'com.rxs20a.android'),(13,14,'com.rxs20a.android'),(14,15,'com.rxs20a.android'),(15,16,'com.rxs20a.android'),(16,17,'com.rxs20a.android'),(17,18,'com.rxs20a.android'),(18,19,'com.rxs20a.android'),(19,21,'com.rxs20a.android'),(20,22,'com.rxs20a.android'),(21,23,'com.rxs20a.android'),(22,24,'com.rxs20a.android'),(23,25,'com.rxs20a.android'),(24,26,'com.rxs20a.android'),(25,27,'com.rxs20a.android'),(26,28,'com.rxs20a.android'),(27,29,'com.rxs20a.android'),(28,30,'com.rxs20a.android'),(29,31,'com.retina21.ms41'),(30,33,'com.retina21.ms41'),(31,34,'com.retina21.ms41'),(32,35,'com.retina21.ms41'),(33,36,'com.retina21.ms41'),(34,37,'com.retina21.ms41'),(35,38,'com.retina21.ms41'),(36,39,'com.retina21.ms41'),(37,40,'com.retina21.ms41'),(38,43,'com.retina21.ms41'),(39,44,'com.retina21.ms41'),(40,46,'com.retina21.ms41'),(41,48,'com.retina21.ms41'),(42,49,'com.retina21.ms41'),(43,50,'com.retina22.ms6'),(44,51,'com.retina21.ms41'),(45,52,'com.retina22.ms6'),(46,54,'com.retina22.ms6'),(47,55,'com.retina22.ms6'),(48,57,'com.rspl21.nanny.android'),(49,60,'com.rspl21.nanny.android'),(50,61,'com.rspl21.nanny.android'),(51,62,'com.retina21.ms41'),(52,63,'com.retina22.ms6'),(53,64,'com.rspl15.nanny.android'),(54,66,'com.rspl21.nanny.android'),(55,65,'com.retina21.ms41'),(56,67,'com.rspl15.nanny.android'),(57,68,'com.retina21.ms41'),(58,69,'com.rspl15.nanny.android'),(59,70,'com.rspl21.nanny.android'),(60,72,'com.rspl21.nanny.android'),(61,73,'com.rspl21.nanny.android'),(62,75,'com.rspl15.nanny.android'),(63,76,'com.rspl21.nanny.android'),(64,77,'com.retina22.ms6'),(65,79,'com.rspl15.nanny.android'),(66,80,'com.rspl21.nanny.android'),(67,81,'com.rspl15.nanny.android'),(68,82,'com.rspl21.nanny.android'),(69,83,'com.rspl15.nanny.android'),(70,85,'com.rspl21.nanny.android'),(71,86,'com.rspl15.nanny.android'),(72,87,'com.rspl21.nanny.android'),(73,88,'com.rspl15.nanny.android'),(74,89,'com.rspl21.nanny.android'),(75,91,'com.rspl15.nanny.android'),(76,92,'com.rspl21.nanny.android'),(77,93,'com.rspl15.nanny.android'),(78,94,'com.retina22.ms6'),(79,95,'com.rspl21.nanny.android'),(80,96,'com.rspl15.nanny.android'),(81,97,'com.retina22.ms6'),(82,98,'com.rspl21.nanny.android'),(83,99,'com.rspl15.nanny.android'),(84,100,'com.rspl21.nanny.android'),(85,101,'com.rspl15.nanny.android'),(86,102,'com.rspl21.nanny.android'),(87,103,'com.rspl21.nanny.android'),(88,104,'com.rspl15.nanny.android'),(89,105,'com.rspl15.nanny.android'),(90,106,'com.rspl21.nanny.android'),(91,107,'com.rspl15.nanny.android'),(92,109,'com.rspl21.nanny.android'),(93,110,'com.rspl15.nanny.android'),(94,111,'com.rspl21.nanny.android'),(95,112,'com.retina22.ms6'),(96,113,'com.rspl15.nanny.android'),(97,115,'com.rspl15.nanny.android'),(98,114,'com.retina22.ms6'),(99,116,'com.rspl21.nanny.android'),(100,117,'com.rspl15.nanny.android'),(101,118,'com.rspl15.nanny.android'),(102,119,'com.rspl15.nanny.android'),(103,120,'com.retina22.ms6'),(104,122,'com.retina22.ms6'),(105,124,'com.retina22.ms6'),(106,125,'com.retina22.ms6');
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,14,0),(2,14,0),(3,52,0),(4,54,0),(5,74,0),(6,87,0),(7,88,0),(8,89,0),(9,90,0),(10,90,0),(11,91,0),(12,92,0),(13,97,0),(14,98,0),(15,14,0),(16,99,0),(17,97,0),(18,97,0),(19,98,0),(20,14,0),(21,99,0),(22,97,0),(23,100,0),(24,100,0),(25,116,0),(26,117,0),(27,118,0),(28,124,0),(29,125,0),(30,126,0),(31,127,0),(32,128,0),(33,129,0),(34,130,0),(35,131,0),(36,132,0),(37,132,0),(38,133,0),(39,134,0),(40,74,0),(41,135,0),(42,136,0),(43,137,0),(44,135,0),(45,138,0),(46,90,0),(47,90,0),(48,139,0),(49,88,0),(50,91,0),(51,140,0),(52,141,0),(53,142,0),(54,143,0),(55,144,0),(56,145,0),(57,92,0),(58,87,0),(59,89,0),(60,89,0),(61,146,0),(62,88,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,2,0,0),(2,5,0,0),(3,6,0,0),(4,7,1,0),(5,8,0,0),(6,10,0,0),(7,11,0,0),(8,12,0,0),(9,17,0,0),(10,18,0,0),(11,19,0,0),(12,20,0,0),(13,21,0,0),(14,22,0,0),(15,26,0,0),(16,27,0,0),(17,29,0,0),(18,30,0,0),(19,31,0,0),(20,34,1,0),(21,38,0,0),(22,40,0,0),(23,41,0,0),(24,44,0,0),(25,46,0,0),(26,48,0,0),(27,49,0,0),(28,51,0,0),(29,53,0,0),(30,54,0,0),(31,55,0,0),(32,56,1,0),(33,57,0,0),(34,58,0,0),(35,59,0,0),(36,60,0,0),(37,61,0,0),(38,62,0,0),(39,63,0,0),(40,64,0,0),(41,67,1,0),(42,68,1,0),(43,69,0,0),(44,70,0,0),(45,72,1,0),(46,75,0,0),(47,78,1,0),(48,79,0,0),(49,85,0,0),(50,88,0,0),(51,89,0,0),(52,90,0,0),(53,91,1,0),(54,94,0,0),(55,94,0,0),(56,95,1,0),(57,97,0,0),(58,96,1,0),(59,98,1,0),(60,99,0,0),(61,102,0,0),(62,103,0,0),(63,104,0,0),(64,105,0,0),(65,106,0,0),(66,107,0,0),(67,109,0,0),(68,111,0,0),(69,112,0,0),(70,113,0,0),(71,115,1,0),(72,116,0,0),(73,120,0,0),(74,121,1,0),(75,122,0,0),(76,123,0,0),(77,124,0,0),(78,126,1,0),(79,128,0,0),(80,130,0,0),(81,133,0,0),(82,134,0,0),(83,136,0,0),(84,137,1,0),(85,138,0,0),(86,139,0,0),(87,141,0,0),(88,142,0,0),(89,144,0,0),(90,145,1,0),(91,146,0,0),(92,147,0,0),(93,148,0,0),(94,149,0,0),(95,150,0,0),(96,151,0,0),(97,155,0,0),(98,156,0,0),(99,157,0,0),(100,159,0,0),(101,160,0,0),(102,161,0,0),(103,162,0,0),(104,163,0,0),(105,164,0,0),(106,165,0,0),(107,166,0,0),(108,168,1,0),(109,169,0,0),(110,172,0,0),(111,173,0,0),(112,174,0,0),(113,175,0,0),(114,177,0,0),(115,178,0,0),(116,179,0,0),(117,180,0,0),(118,182,0,0),(119,184,0,0),(120,188,0,0),(121,190,1,0),(122,194,0,0),(123,200,1,0),(124,203,0,0),(125,204,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=410 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,4,100,2,NULL),(2,20,100,2,NULL),(3,78,100,2,NULL),(4,108,100,2,NULL),(5,32,100,2,NULL),(6,123,100,2,NULL),(7,58,100,2,NULL),(8,47,100,2,NULL),(9,4,116,2,NULL),(10,20,116,2,NULL),(11,78,116,2,NULL),(12,108,116,2,NULL),(13,32,116,2,NULL),(14,123,116,2,NULL),(15,58,116,2,NULL),(16,47,116,2,NULL),(17,4,117,2,NULL),(18,20,117,2,NULL),(19,78,117,2,NULL),(20,108,117,2,NULL),(21,32,117,2,NULL),(22,123,117,2,NULL),(23,58,117,2,NULL),(24,47,117,2,NULL),(25,4,118,2,NULL),(26,20,118,2,NULL),(27,78,118,2,NULL),(28,108,118,2,NULL),(29,32,118,2,NULL),(30,123,118,2,NULL),(31,58,118,2,NULL),(32,47,118,2,NULL),(33,4,124,2,NULL),(34,20,124,2,NULL),(35,78,124,2,NULL),(36,108,124,2,NULL),(37,32,124,2,NULL),(38,123,124,2,NULL),(39,58,124,2,NULL),(40,47,124,2,NULL),(41,4,125,2,NULL),(42,20,125,2,NULL),(43,78,125,2,NULL),(44,108,125,2,NULL),(45,32,125,2,NULL),(46,123,125,2,NULL),(47,58,125,2,NULL),(48,47,125,2,NULL),(49,4,126,2,NULL),(50,20,126,2,NULL),(51,78,126,2,NULL),(52,108,126,2,NULL),(53,32,126,2,NULL),(54,123,126,2,NULL),(55,58,126,2,NULL),(56,47,126,2,NULL),(57,4,127,2,NULL),(58,20,127,2,NULL),(59,78,127,2,NULL),(60,108,127,2,NULL),(61,32,127,2,NULL),(62,123,127,2,NULL),(63,58,127,2,NULL),(64,47,127,2,NULL),(65,4,128,2,NULL),(66,20,128,2,NULL),(67,78,128,2,NULL),(68,108,128,2,NULL),(69,32,128,2,NULL),(70,123,128,2,NULL),(71,58,128,2,NULL),(72,47,128,2,NULL),(73,4,129,2,NULL),(74,20,129,2,NULL),(75,78,129,2,NULL),(76,108,129,2,NULL),(77,32,129,2,NULL),(78,123,129,2,NULL),(79,58,129,2,NULL),(80,47,129,2,NULL),(81,4,130,2,NULL),(82,20,130,2,NULL),(83,78,130,2,NULL),(84,108,130,2,NULL),(85,32,130,2,NULL),(86,123,130,2,NULL),(87,58,130,2,NULL),(88,47,130,2,NULL),(89,4,131,2,NULL),(90,20,131,2,NULL),(91,78,131,2,NULL),(92,108,131,2,NULL),(93,32,131,2,NULL),(94,123,131,2,NULL),(95,58,131,2,NULL),(96,47,131,2,NULL),(97,123,14,2,NULL),(98,123,99,2,NULL),(99,123,97,2,NULL),(100,123,98,2,NULL),(101,123,54,2,NULL),(102,123,145,2,NULL),(103,123,146,2,NULL),(104,123,52,2,NULL),(105,123,138,2,NULL),(106,123,142,2,NULL),(107,123,74,2,NULL),(108,123,133,2,NULL),(109,123,134,2,NULL),(110,123,136,2,NULL),(111,123,132,2,NULL),(112,123,135,2,NULL),(113,123,137,2,NULL),(114,123,87,2,NULL),(115,123,88,2,NULL),(116,123,89,2,NULL),(117,123,90,2,NULL),(118,123,91,2,NULL),(119,123,92,2,NULL),(120,123,140,2,NULL),(121,123,144,2,NULL),(122,123,141,2,NULL),(123,123,139,2,NULL),(124,123,143,2,NULL),(125,58,14,2,NULL),(126,58,99,2,NULL),(127,58,97,2,NULL),(128,58,98,2,NULL),(129,58,54,2,NULL),(130,58,145,2,NULL),(131,58,146,2,NULL),(132,58,52,2,NULL),(133,58,138,2,NULL),(134,58,142,2,NULL),(135,58,74,2,NULL),(136,58,133,2,NULL),(137,58,134,2,NULL),(138,58,136,2,NULL),(139,58,132,2,NULL),(140,58,135,2,NULL),(141,58,137,2,NULL),(142,58,87,2,NULL),(143,58,88,2,NULL),(144,58,89,2,NULL),(145,58,90,2,NULL),(146,58,91,2,NULL),(147,58,92,2,NULL),(148,58,140,2,NULL),(149,58,144,2,NULL),(150,58,141,2,NULL),(151,58,139,2,NULL),(152,58,143,2,NULL),(153,97,78,2,NULL),(154,124,79,2,NULL),(155,77,86,2,NULL),(156,112,86,2,NULL),(157,125,86,2,NULL),(158,4,87,2,NULL),(159,20,87,2,NULL),(160,78,87,2,NULL),(161,108,87,2,NULL),(162,32,87,2,NULL),(163,47,87,2,NULL),(164,54,78,2,NULL),(165,55,85,2,NULL),(166,4,88,2,NULL),(167,20,88,2,NULL),(168,78,88,2,NULL),(169,108,88,2,NULL),(170,32,88,2,NULL),(171,47,88,2,NULL),(172,4,89,2,NULL),(173,20,89,2,NULL),(174,78,89,2,NULL),(175,108,89,2,NULL),(176,32,89,2,NULL),(177,47,89,2,NULL),(178,4,90,2,NULL),(179,20,90,2,NULL),(180,78,90,2,NULL),(181,108,90,2,NULL),(182,32,90,2,NULL),(183,47,90,2,NULL),(184,4,91,2,NULL),(185,20,91,2,NULL),(186,78,91,2,NULL),(187,108,91,2,NULL),(188,32,91,2,NULL),(189,47,91,2,NULL),(190,4,92,2,NULL),(191,20,92,2,NULL),(192,78,92,2,NULL),(193,108,92,2,NULL),(194,32,92,2,NULL),(195,47,92,2,NULL),(196,4,140,2,NULL),(197,20,140,2,NULL),(198,78,140,2,NULL),(199,108,140,2,NULL),(200,32,140,2,NULL),(201,47,140,2,NULL),(202,4,144,2,NULL),(203,20,144,2,NULL),(204,78,144,2,NULL),(205,108,144,2,NULL),(206,32,144,2,NULL),(207,47,144,2,NULL),(208,4,141,2,NULL),(209,20,141,2,NULL),(210,78,141,2,NULL),(211,108,141,2,NULL),(212,32,141,2,NULL),(213,47,141,2,NULL),(214,47,14,2,NULL),(215,47,99,2,NULL),(216,47,97,2,NULL),(217,47,98,2,NULL),(218,47,54,2,NULL),(219,47,145,2,NULL),(220,47,146,2,NULL),(221,47,52,2,NULL),(222,47,138,2,NULL),(223,47,142,2,NULL),(224,47,74,2,NULL),(225,47,133,2,NULL),(226,47,134,2,NULL),(227,47,136,2,NULL),(228,47,132,2,NULL),(229,47,135,2,NULL),(230,47,137,2,NULL),(231,47,143,2,NULL),(232,4,139,2,NULL),(233,20,139,2,NULL),(234,78,139,2,NULL),(235,108,139,2,NULL),(236,32,139,2,NULL),(237,4,143,2,NULL),(238,20,143,2,NULL),(239,78,143,2,NULL),(240,108,143,2,NULL),(241,32,143,2,NULL),(242,35,55,2,NULL),(243,36,71,2,NULL),(244,38,67,2,NULL),(245,39,62,2,NULL),(246,44,64,2,NULL),(247,48,68,2,NULL),(248,49,57,2,NULL),(249,62,65,2,NULL),(250,65,60,2,NULL),(251,32,14,2,NULL),(252,32,99,2,NULL),(253,32,97,2,NULL),(254,32,98,2,NULL),(255,32,54,2,NULL),(256,32,145,2,NULL),(257,32,146,2,NULL),(258,32,52,2,NULL),(259,32,138,2,NULL),(260,32,142,2,NULL),(261,32,74,2,NULL),(262,32,133,2,NULL),(263,32,134,2,NULL),(264,32,136,2,NULL),(265,32,132,2,NULL),(266,32,135,2,NULL),(267,32,137,2,NULL),(268,40,70,2,NULL),(269,46,70,2,NULL),(270,33,69,2,NULL),(271,43,73,2,NULL),(272,68,73,2,NULL),(273,37,73,2,NULL),(274,4,74,2,NULL),(275,20,74,2,NULL),(276,78,74,2,NULL),(277,108,74,2,NULL),(278,4,133,2,NULL),(279,20,133,2,NULL),(280,78,133,2,NULL),(281,108,133,2,NULL),(282,4,134,2,NULL),(283,20,134,2,NULL),(284,78,134,2,NULL),(285,108,134,2,NULL),(286,4,136,2,NULL),(287,20,136,2,NULL),(288,78,136,2,NULL),(289,108,136,2,NULL),(290,4,132,2,NULL),(291,20,132,2,NULL),(292,78,132,2,NULL),(293,108,132,2,NULL),(294,4,135,2,NULL),(295,20,135,2,NULL),(296,78,135,2,NULL),(297,108,135,2,NULL),(298,4,137,2,NULL),(299,20,137,2,NULL),(300,78,137,2,NULL),(301,108,137,2,NULL),(302,1,4,2,NULL),(303,2,10,2,NULL),(304,3,10,2,NULL),(305,7,2,2,NULL),(306,8,7,2,NULL),(307,11,7,2,NULL),(308,12,2,2,NULL),(309,13,6,2,NULL),(310,14,4,2,NULL),(311,15,5,2,NULL),(312,21,3,2,NULL),(313,22,6,2,NULL),(314,25,5,2,NULL),(315,26,3,2,NULL),(316,4,14,2,NULL),(317,20,14,2,NULL),(318,4,99,2,NULL),(319,20,99,2,NULL),(320,4,97,2,NULL),(321,20,97,2,NULL),(322,4,98,2,NULL),(323,20,98,2,NULL),(324,4,54,2,NULL),(325,20,54,2,NULL),(326,4,145,2,NULL),(327,20,145,2,NULL),(328,4,146,2,NULL),(329,20,146,2,NULL),(330,4,52,2,NULL),(331,20,52,2,NULL),(332,4,138,2,NULL),(333,20,138,2,NULL),(334,4,142,2,NULL),(335,20,142,2,NULL),(336,16,1,2,NULL),(337,19,1,2,NULL),(338,6,9,2,NULL),(339,9,9,2,NULL),(340,18,8,2,NULL),(341,23,8,2,NULL),(342,5,12,2,NULL),(343,17,12,2,NULL),(344,24,12,2,NULL),(345,29,12,2,NULL),(346,10,12,2,NULL),(347,28,12,2,NULL),(348,78,14,2,NULL),(349,108,14,2,NULL),(350,78,99,2,NULL),(351,108,99,2,NULL),(352,78,97,2,NULL),(353,108,97,2,NULL),(354,78,98,2,NULL),(355,108,98,2,NULL),(356,64,42,2,NULL),(357,69,28,2,NULL),(358,75,16,2,NULL),(359,79,36,2,NULL),(360,81,32,2,NULL),(361,83,24,2,NULL),(362,86,44,2,NULL),(363,101,20,2,NULL),(364,105,26,2,NULL),(365,107,46,2,NULL),(366,113,22,2,NULL),(367,115,30,2,NULL),(368,117,34,2,NULL),(369,119,38,2,NULL),(370,108,54,2,NULL),(371,108,145,2,NULL),(372,108,146,2,NULL),(373,108,52,2,NULL),(374,108,138,2,NULL),(375,108,142,2,NULL),(376,99,40,2,NULL),(377,118,40,2,NULL),(378,67,40,2,NULL),(379,104,40,2,NULL),(380,93,50,2,NULL),(381,110,50,2,NULL),(382,91,50,2,NULL),(383,78,52,2,NULL),(384,78,138,2,NULL),(385,78,142,2,NULL),(386,60,29,2,NULL),(387,61,17,2,NULL),(388,66,21,2,NULL),(389,70,25,2,NULL),(390,72,45,2,NULL),(391,80,33,2,NULL),(392,82,43,2,NULL),(393,89,23,2,NULL),(394,95,47,2,NULL),(395,102,35,2,NULL),(396,103,31,2,NULL),(397,106,39,2,NULL),(398,109,37,2,NULL),(399,111,27,2,NULL),(400,78,54,2,NULL),(401,78,145,2,NULL),(402,78,146,2,NULL),(403,57,41,2,NULL),(404,92,41,2,NULL),(405,85,41,2,NULL),(406,100,41,2,NULL),(407,87,51,2,NULL),(408,98,51,2,NULL),(409,76,51,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (6,'android.permission.ACCESS_COARSE_LOCATION'),(15,'android.permission.ACCESS_FINE_LOCATION'),(38,'android.permission.ACCESS_MOCK_LOCATION'),(16,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(39,'android.permission.BIND_WALLPAPER'),(29,'android.permission.CALL_PHONE'),(31,'android.permission.CALL_PRIVILEGED'),(36,'android.permission.CAMERA'),(27,'android.permission.CHANGE_NETWORK_STATE'),(26,'android.permission.CHANGE_WIFI_STATE'),(19,'android.permission.DELETE_CACHE_FILES'),(23,'android.permission.DISABLE_KEYGUARD'),(32,'android.permission.GET_TASKS'),(17,'android.permission.INJECT_EVENTS'),(25,'android.permission.INTERNET'),(21,'android.permission.MODIFY_AUDIO_SETTINGS'),(30,'android.permission.MODIFY_PHONE_STATE'),(35,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(1,'android.permission.PROCESS_OUTGOING_CALLS'),(11,'android.permission.READ_CALENDAR'),(8,'android.permission.READ_CONTACTS'),(3,'android.permission.READ_LOGS'),(10,'android.permission.READ_PHONE_STATE'),(12,'android.permission.READ_SMS'),(13,'android.permission.RECEIVE_BOOT_COMPLETED'),(7,'android.permission.RECEIVE_SMS'),(18,'android.permission.SEND_SMS'),(37,'android.permission.VIBRATE'),(33,'android.permission.WAKE_LOCK'),(34,'android.permission.WRITE_APN_SETTINGS'),(22,'android.permission.WRITE_CALENDAR'),(9,'android.permission.WRITE_CONTACTS'),(2,'android.permission.WRITE_EXTERNAL_STORAGE'),(20,'android.permission.WRITE_SECURE_SETTINGS'),(24,'android.permission.WRITE_SETTINGS'),(4,'android.permission.WRITE_SMS'),(28,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(14,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS');
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://sms/',NULL,NULL,NULL),(2,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(3,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(4,NULL,NULL,'package:com.rxs20a.android',NULL,NULL,NULL),(5,NULL,NULL,'content://com.android.contacts/data/emails',NULL,NULL,NULL),(6,NULL,NULL,'content://calendar/events',NULL,NULL,NULL),(7,NULL,NULL,'content://sms/',NULL,NULL,NULL),(8,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(9,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(10,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(11,NULL,NULL,'content://calendar/events',NULL,NULL,NULL),(12,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(13,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(14,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(15,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(16,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(17,NULL,NULL,'package:com.rxs20a.android',NULL,NULL,NULL),(18,NULL,NULL,'content://calendar/events',NULL,NULL,NULL),(19,NULL,NULL,'content://calendar/events',NULL,NULL,NULL),(20,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(21,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(22,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(23,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(24,NULL,NULL,'content://com.android.contacts/data/emails',NULL,NULL,NULL),(25,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(26,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(27,NULL,NULL,'package:com.retina21.ms41',NULL,NULL,NULL),(28,NULL,NULL,'content://calendar/events',NULL,NULL,NULL),(29,NULL,NULL,'content://com.android.calendar/events',NULL,NULL,NULL),(30,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(31,NULL,NULL,'content://sms',NULL,NULL,NULL),(32,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(33,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(34,NULL,NULL,'content://calendar/events',NULL,NULL,NULL),(35,NULL,NULL,'content://com.android.calendar/events',NULL,NULL,NULL),(36,NULL,NULL,'content://media/external/video/media',NULL,NULL,NULL),(37,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(38,NULL,NULL,'content://com.android.contacts/raw_contacts',NULL,NULL,NULL),(39,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(40,NULL,NULL,'content://sms',NULL,NULL,NULL),(41,NULL,NULL,'content://com.android.contacts/data/emails',NULL,NULL,NULL),(42,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(43,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(44,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(45,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(46,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(47,NULL,NULL,'content://calendar/events',NULL,NULL,NULL),(48,NULL,NULL,'content://com.android.calendar/events',NULL,NULL,NULL),(49,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(50,NULL,NULL,'content://com.android.contacts/data/emails',NULL,NULL,NULL),(51,NULL,NULL,'content://media/external/video/media',NULL,NULL,NULL),(52,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(53,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(54,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(55,NULL,NULL,'content://sms/',NULL,NULL,NULL),(56,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(57,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(58,NULL,NULL,'package:com.rspl21.nanny.android',NULL,NULL,NULL),(59,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(60,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(61,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(62,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(63,NULL,NULL,'content://sms',NULL,NULL,NULL),(64,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(65,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(66,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(67,NULL,NULL,'content://sms/',NULL,NULL,NULL),(68,NULL,NULL,'content://sms/',NULL,NULL,NULL),(69,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(70,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(71,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(72,NULL,NULL,'package:com.rspl15.nanny.android',NULL,NULL,NULL),(73,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(74,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(75,NULL,NULL,'content://calendar/events',NULL,NULL,NULL),(76,NULL,NULL,'content://com.android.calendar/events',NULL,NULL,NULL),(77,NULL,NULL,'content://calendar/events',NULL,NULL,NULL),(78,NULL,NULL,'content://com.android.calendar/events',NULL,NULL,NULL),(79,NULL,NULL,'content://sms',NULL,NULL,NULL),(80,NULL,NULL,'content://sms/',NULL,NULL,NULL),(81,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(82,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(83,NULL,NULL,'https://secure.avangate.com/order/checkout.php?PRODS=4555854&QTY=1&CART=1&CARD=1&ORDERSTYLE=nLW4m5W5rn4',NULL,NULL,NULL),(84,NULL,NULL,'content://com.android.contacts/raw_contacts',NULL,NULL,NULL),(85,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(86,NULL,NULL,'content://com.android.contacts/data/emails',NULL,NULL,NULL),(87,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(88,NULL,NULL,'content://sms',NULL,NULL,NULL),(89,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(90,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(91,NULL,NULL,'content://com.android.contacts/phone_lookup',NULL,NULL,NULL),(92,NULL,NULL,'content://calendar/events',NULL,NULL,NULL),(93,NULL,NULL,'content://com.android.calendar/events',NULL,NULL,NULL),(94,NULL,NULL,'content://sms',NULL,NULL,NULL),(95,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(96,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,1,1),(2,3,2),(3,4,3),(4,9,5),(5,13,6),(6,14,7),(7,15,8),(8,16,9),(9,23,10),(10,24,11),(11,25,12),(12,28,13),(13,32,14),(14,33,15),(15,35,16),(16,36,18),(17,37,19),(18,39,20),(19,42,21),(20,43,22),(21,45,23),(22,47,24),(23,50,25),(24,52,26),(25,65,28),(26,65,29),(27,66,30),(28,71,31),(29,73,33),(30,74,34),(31,74,35),(32,76,36),(33,77,37),(34,80,38),(35,81,39),(36,82,40),(37,83,41),(38,84,42),(39,86,43),(40,87,44),(41,92,45),(42,93,46),(43,100,47),(44,100,48),(45,101,49),(46,108,50),(47,110,51),(48,114,52),(49,117,53),(50,118,54),(51,119,55),(52,125,56),(53,127,57),(54,129,59),(55,131,60),(56,132,61),(57,135,62),(58,140,63),(59,143,64),(60,152,66),(61,153,67),(62,154,68),(63,158,69),(64,167,70),(65,170,71),(66,171,73),(67,176,74),(68,181,75),(69,181,76),(70,183,77),(71,183,78),(72,185,79),(73,186,80),(74,187,81),(75,189,82),(76,191,84),(77,192,85),(78,193,86),(79,195,87),(80,196,88),(81,197,89),(82,198,90),(83,199,91),(84,201,92),(85,201,93),(86,202,94),(87,205,95),(88,206,96);
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
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,17),(17,1,16),(18,1,19),(19,1,18),(20,1,21),(21,1,20),(22,1,23),(23,1,22),(24,1,25),(25,1,24),(26,1,27),(27,1,26),(28,1,28),(29,3,1),(30,2,1),(31,3,2),(32,2,2),(33,3,3),(34,2,3),(35,3,4),(36,2,4),(37,3,5),(38,2,5),(39,3,6),(40,2,6),(41,3,7),(42,2,7),(43,3,8),(44,2,8),(45,3,9),(46,2,9),(47,3,10),(48,2,10),(49,3,11),(50,2,11),(51,3,12),(52,2,12),(53,3,13),(54,2,13),(55,3,14),(56,2,14),(57,3,15),(58,2,15),(59,3,17),(60,2,17),(61,3,16),(62,2,16),(63,3,19),(64,2,19),(65,3,18),(66,2,18),(67,3,21),(68,2,21),(69,3,20),(70,2,20),(71,3,23),(72,2,23),(73,3,22),(74,2,22),(75,3,25),(76,2,25),(77,3,24),(78,2,24),(79,3,27),(80,2,27),(81,3,26),(82,2,26),(83,3,29),(84,2,29),(85,3,28),(86,2,28),(87,3,31),(88,2,31),(89,3,30),(90,2,30),(91,4,1),(92,4,2),(93,4,3),(94,4,4),(95,4,5),(96,4,6),(97,4,7),(98,4,8),(99,4,10),(100,4,11),(101,4,12),(102,4,13),(103,4,15),(104,4,16),(105,4,18),(106,4,21),(107,4,25),(108,4,24),(109,4,27),(110,4,29),(111,4,28),(112,4,30),(113,5,1),(114,5,2),(115,5,3),(116,5,4),(117,5,5),(118,5,6),(119,5,7),(120,5,8),(121,5,9),(122,5,10),(123,5,11),(124,5,12),(125,5,13),(126,5,14),(127,5,15),(128,5,16),(129,5,18),(130,5,21),(131,5,25),(132,5,24),(133,5,27),(134,5,29),(135,5,28),(136,5,30),(137,5,32),(138,5,33),(139,6,34),(140,6,35),(141,6,2),(142,6,32),(143,6,3),(144,6,38),(145,6,4),(146,6,5),(147,6,36),(148,6,6),(149,6,37),(150,6,7),(151,6,10),(152,6,12),(153,6,13),(154,6,15),(155,6,16),(156,6,18),(157,6,25),(158,6,27);
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

-- Dump completed on 2015-10-12  3:30:48
