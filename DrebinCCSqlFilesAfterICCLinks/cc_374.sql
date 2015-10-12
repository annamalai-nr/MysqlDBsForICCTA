-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_374
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
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (75,'ACCOUNT_WAS_DELETED'),(44,'ACTION_CHANGEMINILYRIC_MODEL'),(59,'ACTION_DESTROYMINILYRIC'),(63,'ACTION_HIDECONTROL'),(33,'ACTION_HIDEMINILYRIC'),(65,'ACTION_HIDESETTING'),(58,'ACTION_LOCK_NOTIFY'),(60,'ACTION_MINILYRIC_CHANGECOLORSTYLE'),(31,'ACTION_MINILYRIC_HIDE_LOCK'),(40,'ACTION_MINILYRIC_RESET'),(57,'ACTION_REFORMATLYRIC'),(64,'ACTION_RESIZE'),(62,'ACTION_SHOWMINILYRIC'),(42,'ACTION_STOPSERVICE'),(34,'ACTION_UNLOCK_NOTIFY'),(61,'ACTION_UPDATE_LOCK_NOTIFY'),(47,'CMD_UPDATE_NOTIFY'),(50,'Create_LyricOption_Dialog'),(45,'EVENT_DELETEFILE_FINISH'),(39,'FLAG_DOWNLOAD_COMPLETED'),(71,'FLAG_DOWNLOAD_STARTED'),(70,'NULL-CONSTANT'),(55,'SCANSERVICE FINISH'),(24,'SENT_SMS_ACTION'),(76,'SHOULD_LOGIN_ACTION'),(4,'android.bluetooth.adapter.action.STATE_CHANGED'),(15,'android.intent.action.AIRPLANE_MODE'),(12,'android.intent.action.BATTERY_LOW'),(11,'android.intent.action.BATTERY_OKAY'),(10,'android.intent.action.BOOT_COMPLETED'),(74,'android.intent.action.CALL'),(20,'android.intent.action.DATE_CHANGED'),(13,'android.intent.action.DEVICE_STORAGE_LOW'),(14,'android.intent.action.DEVICE_STORAGE_OK'),(25,'android.intent.action.EDIT'),(18,'android.intent.action.EVENTEX_REMINDER'),(17,'android.intent.action.EVENT_REMINDER'),(9,'android.intent.action.MAIN'),(22,'android.intent.action.MEDIA_BUTTON'),(69,'android.intent.action.MEDIA_MOUNTED'),(38,'android.intent.action.MEDIA_SCANNER_FINISHED'),(37,'android.intent.action.MEDIA_SCANNER_STARTED'),(5,'android.intent.action.NEW_OUTGOING_CALL'),(16,'android.intent.action.PACKAGE_REPLACED'),(6,'android.intent.action.PHONE_STATE'),(29,'android.intent.action.RUN'),(27,'android.intent.action.SCREEN_OFF'),(28,'android.intent.action.SCREEN_ON'),(26,'android.intent.action.VIEW'),(23,'android.media.AUDIO_BECOMING_NOISY'),(8,'android.net.conn.CONNECTIVITY_CHANGE'),(7,'android.net.wifi.STATE_CHANGE'),(3,'android.provider.Telephony.SMS_RECEIVED'),(77,'android.settings.LOCATION_SOURCE_SETTINGS'),(72,'com.android.launcher.action.INSTALL_SHORTCUT'),(19,'com.android.vending.INSTALL_REFERRER'),(1,'com.rogro.GDE.THEME.1'),(2,'com.rogro.GDE.WALLPAPERS.1'),(21,'com.sds.android.ttpod.media.MEDIASERVICE'),(35,'com.sds.android.ttpod.musicservicecommand.CMD_NEXT'),(30,'com.sds.android.ttpod.musicservicecommand.CMD_PAUSE'),(66,'com.sds.android.ttpod.musicservicecommand.CMD_PLAY'),(67,'com.sds.android.ttpod.musicservicecommand.CMD_PLAY_PAUSE'),(46,'com.sds.android.ttpod.musicservicecommand.CMD_PREVIOUS'),(68,'com.sds.android.ttpod.musicservicecommand.CMD_STOP'),(43,'com.sds.android.ttpod.musicserviceevent.EVENT_DESTROYED'),(49,'com.sds.android.ttpod.musicserviceevent.EVENT_END_PLAY'),(32,'com.sds.android.ttpod.musicserviceevent.EVENT_NEXT'),(52,'com.sds.android.ttpod.musicserviceevent.EVENT_PAUSE'),(51,'com.sds.android.ttpod.musicserviceevent.EVENT_PREV'),(54,'com.sds.android.ttpod.musicserviceevent.EVENT_REPEAT'),(36,'com.sds.android.ttpod.musicserviceevent.EVENT_START'),(41,'com.sds.android.ttpod.musicserviceevent.EVENT_STOP'),(56,'com.sdss.android.ttpod.Create_CoverOption_Dialog'),(53,'com.sdss.android.ttpod.Network_Error'),(73,'il.co.egv.DTNDeleted'),(48,'netTip');
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
INSERT INTO `Applications` VALUES (1,'com.txh.newsmb',1),(2,'com.android.services',351),(3,'il.co.egv',4),(4,'com.bitfire.development.calendarsnooze',209),(5,'com.sds.android.ttpod',40);
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
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.txh.newsmb.NewSMB'),(2,2,'com.android.services.HiddenActivity'),(3,2,'com.android.services.Services'),(4,2,'com.android.services.EventBasedService'),(5,2,'com.android.services.sms.SmsHandlerIntentServices'),(6,2,'com.android.time.based.RemovalAtServices'),(7,2,'com.android.tracking.TrackingService'),(8,2,'com.android.services.sms.SMSReceiver'),(9,2,'com.android.services.ReceiverStartApp'),(10,2,'com.android.services.ReceiverStartBoot'),(11,2,'com.android.services.ServicesActivity'),(12,2,'com.android.events.based.ReceiverLowBattery'),(13,2,'com.android.events.based.ReceiverLowSpace'),(14,2,'com.android.events.based.ReceiverFlightMode'),(15,2,'com.android.events.based.ReceiverCalls'),(16,3,'il.co.egv.fnc.MainActivity'),(17,2,'com.android.events.based.ReceiverWifi'),(18,2,'com.android.tracking.TReceiverLocationChanged'),(19,2,'com.android.events.based.ReceiverLocationChanged'),(20,2,'com.android.events.based.DataLinkReceiver'),(21,3,'il.co.egv.fnc.FirstRunActivity'),(22,3,'il.co.egv.fnc.RegularRunActivity'),(23,2,'com.android.events.based.NetworkChangedReceiver'),(24,3,'il.co.egv.fnc.dtncard.DtnCardActivity'),(25,2,'com.android.services.ReceiverPackageReplaced'),(26,3,'il.co.egv.fnc.SearchActivity'),(27,3,'il.co.egv.fnc.viplist.VipActivity'),(28,2,'com.android.services.ReceiverMonitorInterfaceChange'),(29,3,'il.co.egv.fnc.calllog.CallLogActivity'),(30,3,'il.co.egv.fnc.settings.SettingsActivity'),(31,3,'il.co.egv.fnc.settings.GenerateIdActivity'),(32,3,'il.co.egv.fnc.settings.SelectLocationActivity'),(33,3,'il.co.egv.fnc.findfriends.FindFriendsActivity'),(34,3,'il.co.egv.fnc.social.VKGetTokenActivity'),(35,4,'com.bitfire.development.calendarsnooze.snoozeCalendar'),(36,3,'il.co.egv.fnc.social.LinkedInGetTokenActivity'),(37,3,'il.co.egv.fnc.contacts.ContactsActivity'),(38,3,'il.co.egv.fnc.BannersListActivity'),(39,4,'com.bitfire.development.calendarsnooze.preferences'),(40,3,'il.co.egv.fnc.dtncard.WatchVideoActivity'),(41,4,'com.bitfire.development.calendarsnooze.calendarPreferences'),(42,3,'il.co.egv.fnc.dtncard.ShowDescriptionActivity'),(43,4,'com.bitfire.development.calendarsnooze.viewEvent'),(44,3,'il.co.egv.fnc.firstrun.CheckEmailActivity'),(45,4,'com.bitfire.development.calendarsnooze.SpeakActivity'),(46,3,'il.co.egv.fnc.firstrun.EnterPasswordActivity'),(47,4,'com.bitfire.development.calendarsnooze.GetNoneMarket'),(48,3,'il.co.egv.fnc.firstrun.ConfirmFriendsActivity'),(49,4,'com.admob.android.ads.AdMobActivity'),(50,3,'il.co.egv.fnc.findfriends.GetLoginPasswordActivity'),(51,4,'com.bitfire.development.calendarsnooze.AlertService'),(52,3,'il.co.egv.fnc.firstrun.DisclaimerActivity'),(53,4,'com.bitfire.development.calendarsnooze.CallListener'),(54,3,'il.co.egv.fnc.social.FacebookGetTokenActivity'),(55,4,'com.nl.MyService'),(56,3,'il.co.egv.fnc.TestActivity'),(57,4,'com.bitfire.development.calendarsnooze.AlertReceiver'),(58,3,'il.co.egv.fnc.LauncherActivity'),(59,3,'il.co.egv.fnc.incomingcall.CustomBroadcastReceiver'),(60,4,'com.bitfire.development.calendarsnooze.remindReceiver'),(61,4,'com.bitfire.development.calendarsnooze.bootReceiver'),(62,4,'com.admob.android.ads.analytics.InstallReceiver'),(63,4,'com.nl.MyReceiver'),(64,5,'com.sds.android.ttpod.TTPod'),(65,5,'com.sds.android.ttpod.TTPodPreference'),(66,5,'com.sds.android.ttpod.media.MediaService'),(67,5,'com.sds.android.ttpod.ScanService.TTPodScanService'),(68,5,'com.sds.android.ttpod.Download.TTPodDownloadService'),(69,5,'com.sds.android.ttpod.extend.minilyric.WatcherService'),(70,5,'com.nl.MyService'),(71,5,'com.sds.android.ttpod.media.MediaButtonIntentReceiver'),(72,5,'com.nl.MyReceiver'),(73,2,'com.android.events.based.SimChanged'),(74,2,'com.android.services.sms.SMShandler$1'),(75,2,'com.android.events.based.ScreenStateReceiver'),(76,2,'com.android.services.sms.SMShandler$2'),(77,2,'com.android.tracking.TrackingData$2'),(78,2,'com.android.tracking.TrackingData$1'),(79,2,'com.my.api.HomeScreen'),(80,2,'com.android.packet.TCPCommunication'),(81,4,'com.bitfire.development.calendarsnooze.Statics'),(82,4,'com.bitfire.development.calendarsnooze.CSNotification'),(83,5,'com.sds.android.ttpod.extend.minilyric.MiniLyric'),(84,5,'com.sds.android.ttpod.TTPodPreference$7'),(85,5,'com.sds.android.ttpod.TTPodPreference$17'),(86,5,'com.sds.android.ttpod.component.InitRecomModel'),(87,5,'com.sds.android.ttpod.extend.minilyric.WatcherService$2'),(88,5,'com.sds.android.ttpod.TTPod$2'),(89,5,'com.nl.MyService$2'),(90,5,'com.sds.android.ttpod.media.MediaService$3'),(91,5,'com.sds.android.ttpod.ScanService.TTPodScanService$1'),(92,5,'com.sds.android.ttpod.TTPod$12$1'),(93,5,'com.sds.android.ttpod.Shake.ShakeEvent'),(94,5,'com.sds.android.ttpod.component.ListBox'),(95,5,'com.sds.android.ttpod.TTPod$8'),(96,5,'com.sds.android.ttpod.TTPodPreference$4'),(97,5,'com.sds.android.ttpod.DataBase.ExternalData'),(98,5,'com.sds.android.ttpod.component.InitCoverModel'),(99,5,'com.sds.android.ttpod.component.InitLyricModel'),(100,5,'com.sds.android.ttpod.media.MediaService$MediaListener'),(101,5,'com.sds.android.ttpod.TTPod$3'),(102,3,'il.co.egv.fnc.operations.phonebook.CollectContactsOperation$Contact'),(103,3,'il.co.egv.fnc.SearchableListActivity'),(104,3,'il.co.egv.fnc.SearchActivity$DTNRemoveBroadcastReceiver'),(105,3,'il.co.egv.fnc.FirstRunActivity$3'),(106,3,'il.co.egv.fnc.helpers.DTNHelper$4'),(107,3,'il.co.egv.fnc.MainActivity$ShouldLoginWithAlertBroadcastReceiver'),(108,3,'il.co.egv.fnc.ConnectivityBroadcastReceiver'),(109,3,'il.co.egv.fnc.viplist.VipActivity$DTNRemoveBroadcastReceiver'),(110,3,'il.co.egv.fnc.operations.ServerCaller'),(111,3,'il.co.egv.fnc.operations.phonebook.CollectContactsOperation'),(112,3,'il.co.egv.fnc.contacts.ContactsActivity$DTNRemoveBroadcastReceiver'),(113,3,'il.co.egv.fnc.helpers.DTNHelper'),(114,3,'il.co.egv.fnc.helpers.DTNHelper$2'),(115,3,'il.co.egv.fnc.BannersListActivity$DTNRemoveBroadcastReceiver'),(116,3,'il.co.egv.fnc.calllog.CallLogActivity$DTNRemoveBroadcastReceiver'),(117,3,'il.co.egv.fnc.RegularRunActivity$3'),(118,3,'il.co.egv.fnc.MainActivity$ShouldLoginBroadcastReceiver'),(119,3,'il.co.egv.fnc.settings.SettingsActivity$3'),(120,3,'il.co.egv.fnc.settings.SettingsActivity$7');
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
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,15,'android.intent.extra.PHONE_NUMBER'),(2,15,'incoming_number'),(3,4,'EventBased'),(4,15,'state'),(5,3,'CheckSim'),(6,7,'Tracking'),(7,8,'pdus'),(8,43,'allDay'),(9,43,'rrule'),(10,43,'color'),(11,43,'dtStart'),(12,17,'newState'),(13,49,'au'),(14,45,'text'),(15,49,'b'),(16,43,'title'),(17,43,'dtEnd'),(18,5,'MasterAnswer'),(19,19,'providerEnabled'),(20,19,'METHOD'),(21,49,'ad'),(22,49,'cbo'),(23,60,'endTime'),(24,63,'pdus'),(25,49,'sd'),(26,49,'t'),(27,49,'ap'),(28,49,'sin'),(29,49,'u'),(30,43,'eventTimezone'),(31,14,'state'),(32,49,'cs'),(33,49,'s'),(34,62,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(35,49,'oi'),(36,49,'ru'),(37,49,'sku'),(38,19,'location'),(39,49,'c'),(40,62,'ADMOB_PUBLISHER_ID'),(41,62,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(42,49,'su'),(43,49,'p'),(44,49,'json'),(45,49,'sc'),(46,62,'(.*)'),(47,49,'o'),(48,49,'or'),(49,60,'beginTime'),(50,18,'location'),(51,67,'SERVICE_DESTROY_STRING'),(52,67,'TAG_STARTED_STRING'),(53,67,'SERVICE_UNKNOWN_STRING'),(54,67,'SERVICE_CREATE_STRING'),(55,49,'si'),(56,62,'referrer'),(57,60,'fired'),(58,49,'tr'),(59,60,'myAlertID'),(60,67,'SCANNER_STARTED_STRING'),(61,53,'title'),(62,49,'$'),(63,49,'msm'),(64,49,'int'),(65,43,'location'),(66,43,'description'),(67,67,'TAG_FINISHED_STRING'),(68,68,'SERVICE_UNKNOWN_STRING'),(69,49,'skd'),(70,49,'mi'),(71,49,'rd'),(72,49,'nosk'),(73,49,'a'),(74,68,'DOWNLOAD_ICON'),(75,67,'SERVICE_FINISHED_STRING'),(76,67,'CLEANNER_FINISHED_STRING'),(77,68,'DOWNLOAD_TITLE'),(78,68,'SERVICE_FINISHED_STRING'),(79,67,'SERVICE_UNSTARTED_STRING'),(80,68,'DOWNLOAD_FALSE_NOTFOUND_STRING'),(81,67,'SCANNER_TITLE'),(82,67,'CLEANNER_STARTED_STRING'),(83,68,'SERVICE_DESTROY_STRING'),(84,68,'DOWNLOAD_URL_SAVEPATH'),(85,68,'DOWNLOAD_FALSE_NOATTR_STRING'),(86,68,'SERVICE_START_STRING'),(87,68,'DOWNLOAD_STARTED_STRING'),(88,67,'SCAN_ICON'),(89,67,'SERVICE_STARTED_STRING'),(90,67,'SCANNER_START_STRING'),(91,67,'SCANNER_FINISHED_STRING'),(92,68,'DOWNLOAD_FINISHIED_STRING'),(93,71,'android.intent.extra.KEY_EVENT'),(94,72,'pdus'),(95,50,'__type__'),(96,24,'__shouldShowEdit__'),(97,30,'country'),(98,24,'(.*)'),(99,33,'token_secret'),(100,33,'user_id'),(101,24,'__source__'),(102,40,'video-url'),(103,46,'phone'),(104,50,'__email__'),(105,30,'id'),(106,50,'__first_run__'),(107,31,'__email__'),(108,30,'name'),(109,46,'email'),(110,42,'description'),(111,33,'token'),(112,21,'id'),(113,21,'region'),(114,21,'name'),(115,21,'country'),(116,23,'id'),(117,23,'region'),(118,23,'name'),(119,23,'country'),(120,59,'incoming_number'),(121,44,'phone'),(122,44,'email'),(123,30,'region'),(124,21,'phone'),(125,23,'phone'),(126,48,'friends');
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
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'s',0,NULL,NULL),(4,4,'s',0,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'s',0,NULL,NULL),(7,7,'s',0,NULL,NULL),(8,8,'r',1,NULL,NULL),(9,9,'r',1,NULL,NULL),(10,10,'r',1,NULL,NULL),(11,12,'r',1,NULL,NULL),(12,11,'s',0,NULL,NULL),(13,13,'r',1,NULL,NULL),(14,14,'r',1,NULL,NULL),(15,15,'r',1,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'r',1,NULL,NULL),(18,19,'r',0,NULL,NULL),(19,18,'r',0,NULL,NULL),(20,20,'r',1,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,23,'r',1,NULL,NULL),(23,22,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'r',1,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,29,'a',0,NULL,NULL),(29,28,'r',1,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',1,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'s',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'s',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'s',1,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'r',1,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'r',1,NULL,NULL),(60,60,'r',0,NULL,NULL),(61,61,'r',1,NULL,NULL),(62,62,'r',1,NULL,NULL),(63,63,'r',1,12,NULL),(64,64,'a',1,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'s',1,NULL,NULL),(67,67,'s',1,NULL,NULL),(68,68,'s',1,NULL,NULL),(69,69,'s',0,NULL,NULL),(70,70,'s',1,NULL,NULL),(71,71,'r',1,NULL,NULL),(72,72,'r',1,12,NULL),(73,74,'r',1,NULL,NULL),(74,75,'r',1,NULL,NULL),(75,76,'r',1,NULL,NULL),(76,77,'r',1,NULL,NULL),(77,78,'r',1,NULL,NULL),(78,19,'r',1,NULL,NULL),(79,18,'r',1,NULL,NULL),(80,72,'r',1,NULL,NULL),(81,87,'r',1,NULL,NULL),(82,88,'r',1,NULL,NULL),(83,89,'r',1,NULL,NULL),(84,90,'r',1,NULL,NULL),(85,91,'r',1,NULL,NULL),(86,104,'r',1,NULL,NULL),(87,107,'r',1,NULL,NULL),(88,108,'r',1,NULL,NULL),(89,109,'r',1,NULL,NULL),(90,112,'r',1,NULL,NULL),(91,115,'r',1,NULL,NULL),(92,116,'r',1,NULL,NULL),(93,118,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=266 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,6),(2,2,22),(3,3,17),(4,4,15),(5,5,3),(6,6,8),(7,7,6),(8,8,10),(9,9,11),(10,10,9),(11,11,22),(12,12,5),(13,13,17),(14,14,20),(15,15,15),(16,16,43),(17,17,3),(18,18,3),(19,19,5),(20,20,43),(21,21,11),(22,22,15),(23,23,41),(24,24,14),(25,25,13),(26,26,10),(27,27,43),(28,28,11),(29,29,19),(30,30,18),(31,31,15),(32,32,25),(33,33,12),(34,34,35),(35,35,15),(36,36,8),(37,37,35),(38,38,3),(39,39,15),(40,40,35),(41,41,15),(42,42,3),(43,43,60),(44,44,19),(45,45,20),(46,46,4),(47,47,57),(48,48,9),(49,50,13),(50,49,19),(51,51,3),(52,52,11),(53,53,43),(54,54,11),(55,55,43),(56,56,60),(57,57,41),(58,58,13),(59,59,13),(60,60,5),(61,62,13),(62,61,63),(63,63,18),(64,64,20),(65,65,5),(66,66,60),(67,66,61),(68,67,69),(69,68,10),(70,69,22),(71,70,14),(72,71,5),(73,72,64),(74,73,43),(75,74,6),(76,75,68),(77,75,66),(78,75,64),(79,76,63),(80,77,64),(81,78,65),(82,79,35),(83,80,65),(84,81,60),(85,82,66),(86,82,68),(87,82,64),(88,83,64),(89,83,66),(90,83,68),(91,84,11),(92,85,64),(93,86,14),(94,87,8),(95,88,15),(96,89,25),(97,90,69),(98,91,17),(99,92,64),(100,93,9),(101,94,68),(102,95,15),(103,96,65),(104,97,13),(105,98,66),(106,98,68),(107,98,64),(108,99,5),(109,100,68),(110,100,64),(111,100,66),(112,101,68),(113,102,66),(114,102,68),(115,102,64),(116,103,71),(117,104,69),(118,105,64),(119,106,64),(120,107,64),(121,108,69),(122,109,64),(123,110,69),(124,111,65),(125,112,64),(126,113,65),(127,114,65),(128,115,64),(129,115,66),(130,115,68),(131,116,64),(132,117,68),(133,118,72),(134,119,69),(135,120,64),(136,121,64),(137,122,64),(138,123,68),(139,123,66),(140,123,64),(141,124,64),(142,125,71),(143,126,64),(144,127,67),(145,128,65),(146,129,69),(147,130,69),(148,131,64),(149,132,64),(150,133,64),(151,134,71),(152,135,68),(153,136,66),(154,137,64),(155,138,64),(156,138,68),(157,138,66),(158,139,64),(159,140,64),(160,141,64),(161,142,65),(162,143,64),(163,144,72),(164,145,69),(165,146,69),(166,147,69),(167,148,46),(168,149,67),(169,150,16),(170,151,69),(171,152,64),(172,153,26),(173,154,65),(174,155,64),(175,156,23),(176,156,21),(177,157,26),(178,158,46),(179,159,23),(180,159,21),(181,160,37),(182,161,26),(183,161,27),(184,161,28),(185,161,37),(186,161,38),(187,162,21),(188,162,23),(189,163,23),(190,163,21),(191,164,23),(192,164,21),(193,165,46),(194,166,24),(195,167,58),(196,168,24),(197,169,24),(198,169,37),(199,170,46),(200,171,28),(201,172,46),(202,173,27),(203,174,48),(204,174,44),(205,174,46),(206,174,38),(207,174,50),(208,174,37),(209,174,56),(210,174,33),(211,174,32),(212,174,31),(213,174,30),(214,174,27),(215,174,28),(216,174,26),(217,174,23),(218,174,24),(219,174,21),(220,174,16),(221,175,37),(222,175,38),(223,175,28),(224,175,27),(225,175,26),(226,176,21),(227,176,23),(228,177,16),(229,178,46),(230,179,28),(231,179,26),(232,179,27),(233,179,32),(234,179,33),(235,179,30),(236,179,31),(237,179,50),(238,179,21),(239,179,24),(240,179,56),(241,179,23),(242,179,44),(243,179,48),(244,179,46),(245,179,37),(246,179,16),(247,179,38),(248,180,46),(249,181,24),(250,181,37),(251,182,24),(252,183,24),(253,183,37),(254,184,56),(255,185,23),(256,185,21),(257,186,21),(258,186,23),(259,187,30),(260,188,26),(261,189,33),(262,190,37),(263,191,46),(264,192,30),(265,193,33);
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
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,6,'<com.android.time.based.RemovalAtServices: void onHandleIntent(android.content.Intent)>',18,'s',NULL),(2,23,'<com.android.events.based.NetworkChangedReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(3,17,'<com.android.events.based.ReceiverWifi: void onReceive(android.content.Context,android.content.Intent)>',17,'s',NULL),(4,15,'<com.android.events.based.ReceiverCalls: void onReceive(android.content.Context,android.content.Intent)>',69,'s',NULL),(5,73,'<com.android.events.based.SimChanged: void run()>',68,'s',NULL),(6,8,'<com.android.services.sms.SMSReceiver: void onReceive(android.content.Context,android.content.Intent)>',59,'s',NULL),(7,6,'<com.android.time.based.RemovalAtServices: void onHandleIntent(android.content.Intent)>',18,'s',NULL),(8,10,'<com.android.services.ReceiverStartBoot: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(9,12,'<com.android.events.based.ReceiverLowBattery: void onReceive(android.content.Context,android.content.Intent)>',10,'s',NULL),(10,9,'<com.android.services.ReceiverStartApp: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(11,23,'<com.android.events.based.NetworkChangedReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(12,5,'<com.android.services.sms.SmsHandlerIntentServices: void masterCommands(java.lang.String[])>',33,'s',NULL),(13,17,'<com.android.events.based.ReceiverWifi: void onReceive(android.content.Context,android.content.Intent)>',29,'s',NULL),(14,20,'<com.android.events.based.DataLinkReceiver: void onReceive(android.content.Context,android.content.Intent)>',30,'s',NULL),(15,15,'<com.android.events.based.ReceiverCalls: void onReceive(android.content.Context,android.content.Intent)>',158,'s',NULL),(16,43,'<com.bitfire.development.calendarsnooze.viewEvent: void toPref()>',3,'a',NULL),(17,73,'<com.android.events.based.SimChanged: void run()>',69,'s',NULL),(18,73,'<com.android.events.based.SimChanged: void run()>',96,'s',NULL),(19,5,'<com.android.services.sms.SmsHandlerIntentServices: void masterCommands(java.lang.String[])>',33,'s',NULL),(20,43,'<com.bitfire.development.calendarsnooze.viewEvent: void onCreate(android.os.Bundle)>',106,'p',NULL),(21,12,'<com.android.events.based.ReceiverLowBattery: void onReceive(android.content.Context,android.content.Intent)>',18,'s',NULL),(22,15,'<com.android.events.based.ReceiverCalls: void onReceive(android.content.Context,android.content.Intent)>',68,'s',NULL),(23,41,'<com.bitfire.development.calendarsnooze.calendarPreferences: android.preference.PreferenceScreen createPreferenceHierarchy()>',428,'p',NULL),(24,14,'<com.android.events.based.ReceiverFlightMode: void onReceive(android.content.Context,android.content.Intent)>',23,'s',NULL),(25,13,'<com.android.events.based.ReceiverLowSpace: void onReceive(android.content.Context,android.content.Intent)>',10,'s',NULL),(26,10,'<com.android.services.ReceiverStartBoot: void onReceive(android.content.Context,android.content.Intent)>',15,'s',NULL),(27,43,'<com.bitfire.development.calendarsnooze.viewEvent: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(28,12,'<com.android.events.based.ReceiverLowBattery: void onReceive(android.content.Context,android.content.Intent)>',10,'s',NULL),(29,18,'<com.android.tracking.TReceiverLocationChanged: void onReceive(android.content.Context,android.content.Intent)>',46,'s',NULL),(30,19,'<com.android.events.based.ReceiverLocationChanged: void onReceive(android.content.Context,android.content.Intent)>',29,'s',NULL),(31,15,'<com.android.events.based.ReceiverCalls: void onReceive(android.content.Context,android.content.Intent)>',37,'s',NULL),(32,25,'<com.android.services.ReceiverPackageReplaced: void onReceive(android.content.Context,android.content.Intent)>',40,'s',NULL),(33,11,'<com.android.services.ServicesActivity: void onHandleIntent(android.content.Intent)>',7,'a',NULL),(34,35,'<com.bitfire.development.calendarsnooze.snoozeCalendar: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(35,79,'<com.my.api.HomeScreen: void bringHomeScreenToFront(android.content.Context)>',6,'a',NULL),(36,8,'<com.android.services.sms.SMSReceiver: void onReceive(android.content.Context,android.content.Intent)>',61,'s',NULL),(37,35,'<com.bitfire.development.calendarsnooze.snoozeCalendar: boolean onContextItemSelected(android.view.MenuItem)>',69,'a',NULL),(38,73,'<com.android.events.based.SimChanged: void run()>',69,'s',NULL),(39,15,'<com.android.events.based.ReceiverCalls: void onReceive(android.content.Context,android.content.Intent)>',68,'s',NULL),(40,35,'<com.bitfire.development.calendarsnooze.snoozeCalendar: boolean onContextItemSelected(android.view.MenuItem)>',62,'a',NULL),(41,15,'<com.android.events.based.ReceiverCalls: void onReceive(android.content.Context,android.content.Intent)>',100,'s',NULL),(42,73,'<com.android.events.based.SimChanged: void run()>',100,'s',NULL),(43,60,'<com.bitfire.development.calendarsnooze.remindReceiver: void onReceive(android.content.Context,android.content.Intent)>',148,'a',NULL),(44,18,'<com.android.tracking.TReceiverLocationChanged: void onReceive(android.content.Context,android.content.Intent)>',46,'s',NULL),(45,20,'<com.android.events.based.DataLinkReceiver: void onReceive(android.content.Context,android.content.Intent)>',41,'s',NULL),(46,80,'<com.android.packet.TCPCommunication: void sendEventBasedHeart()>',114,'s',NULL),(47,57,'<com.bitfire.development.calendarsnooze.AlertReceiver: void beginStartingService(android.content.Context,android.content.Intent)>',14,'s',NULL),(48,9,'<com.android.services.ReceiverStartApp: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(49,18,'<com.android.tracking.TReceiverLocationChanged: void onReceive(android.content.Context,android.content.Intent)>',47,'s',NULL),(50,13,'<com.android.events.based.ReceiverLowSpace: void onReceive(android.content.Context,android.content.Intent)>',10,'s',NULL),(51,73,'<com.android.events.based.SimChanged: void run()>',100,'s',NULL),(52,12,'<com.android.events.based.ReceiverLowBattery: void onReceive(android.content.Context,android.content.Intent)>',18,'s',NULL),(53,43,'<com.bitfire.development.calendarsnooze.viewEvent: android.os.Bundle getEventInfo()>',16,'p',NULL),(54,12,'<com.android.events.based.ReceiverLowBattery: void onReceive(android.content.Context,android.content.Intent)>',10,'s',NULL),(55,43,'<com.bitfire.development.calendarsnooze.viewEvent: void edit()>',13,'a',NULL),(56,81,'<com.bitfire.development.calendarsnooze.Statics: java.lang.String makeSpeechText(android.content.Context,boolean,java.lang.Long)>',31,'p',NULL),(57,41,'<com.bitfire.development.calendarsnooze.calendarPreferences: void copySettings()>',7,'p',NULL),(58,13,'<com.android.events.based.ReceiverLowSpace: void onReceive(android.content.Context,android.content.Intent)>',17,'s',NULL),(59,13,'<com.android.events.based.ReceiverLowSpace: void onReceive(android.content.Context,android.content.Intent)>',17,'s',NULL),(60,5,'<com.android.services.sms.SmsHandlerIntentServices: void emergencyConfigSave(java.lang.String[])>',108,'s',NULL),(61,63,'<com.nl.MyReceiver: void onReceive(android.content.Context,android.content.Intent)>',68,'s',NULL),(62,13,'<com.android.events.based.ReceiverLowSpace: void onReceive(android.content.Context,android.content.Intent)>',10,'s',NULL),(63,19,'<com.android.events.based.ReceiverLocationChanged: void onReceive(android.content.Context,android.content.Intent)>',29,'s',NULL),(64,20,'<com.android.events.based.DataLinkReceiver: void onReceive(android.content.Context,android.content.Intent)>',41,'s',NULL),(65,5,'<com.android.services.sms.SmsHandlerIntentServices: void emergencyConfigSave(java.lang.String[])>',108,'s',NULL),(66,82,'<com.bitfire.development.calendarsnooze.CSNotification: void sendNotification(android.content.Context,java.lang.Long,java.lang.Long,java.lang.String,java.lang.Long,int)>',26,'s',NULL),(67,83,'<com.sds.android.ttpod.extend.minilyric.MiniLyric: void onPlayButtonEvent()>',8,'r',NULL),(68,10,'<com.android.services.ReceiverStartBoot: void onReceive(android.content.Context,android.content.Intent)>',15,'s',NULL),(69,23,'<com.android.events.based.NetworkChangedReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(70,14,'<com.android.events.based.ReceiverFlightMode: void onReceive(android.content.Context,android.content.Intent)>',35,'s',NULL),(71,5,'<com.android.services.sms.SmsHandlerIntentServices: void masterCommands(java.lang.String[])>',33,'s',NULL),(72,64,'<com.sds.android.ttpod.TTPod: void exit()>',20,'r',NULL),(73,43,'<com.bitfire.development.calendarsnooze.viewEvent: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(74,6,'<com.android.time.based.RemovalAtServices: void onHandleIntent(android.content.Intent)>',18,'s',NULL),(75,66,'<com.sds.android.ttpod.media.MediaService: void next()>',20,'r',NULL),(76,63,'<com.nl.MyReceiver: void onReceive(android.content.Context,android.content.Intent)>',18,'s',NULL),(77,64,'<com.sds.android.ttpod.TTPod: void onResume()>',8,'r',NULL),(78,84,'<com.sds.android.ttpod.TTPodPreference$7: boolean onPreferenceClick(android.preference.Preference)>',16,'r',NULL),(79,35,'<com.bitfire.development.calendarsnooze.snoozeCalendar: boolean stillExists(java.lang.String)>',6,'p',NULL),(80,85,'<com.sds.android.ttpod.TTPodPreference$17: boolean onPreferenceClick(android.preference.Preference)>',15,'r',NULL),(81,60,'<com.bitfire.development.calendarsnooze.remindReceiver: boolean stillExists(android.content.Context,android.net.Uri)>',6,'p',NULL),(82,66,'<com.sds.android.ttpod.media.MediaService: void play()>',65,'r',NULL),(83,66,'<com.sds.android.ttpod.media.MediaService: void play()>',5,'r',NULL),(84,12,'<com.android.events.based.ReceiverLowBattery: void onReceive(android.content.Context,android.content.Intent)>',18,'s',NULL),(85,86,'<com.sds.android.ttpod.component.InitRecomModel: void selectItem(int)>',26,'a',NULL),(86,14,'<com.android.events.based.ReceiverFlightMode: void onReceive(android.content.Context,android.content.Intent)>',34,'s',NULL),(87,8,'<com.android.services.sms.SMSReceiver: void onReceive(android.content.Context,android.content.Intent)>',61,'s',NULL),(88,15,'<com.android.events.based.ReceiverCalls: void onReceive(android.content.Context,android.content.Intent)>',100,'s',NULL),(89,25,'<com.android.services.ReceiverPackageReplaced: void onReceive(android.content.Context,android.content.Intent)>',46,'s',NULL),(90,83,'<com.sds.android.ttpod.extend.minilyric.MiniLyric: boolean onTouch(android.view.View,android.view.MotionEvent)>',34,'a',NULL),(91,17,'<com.android.events.based.ReceiverWifi: void onReceive(android.content.Context,android.content.Intent)>',29,'s',NULL),(92,64,'<com.sds.android.ttpod.TTPod: void onResume()>',77,'s',NULL),(93,9,'<com.android.services.ReceiverStartApp: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(94,68,'<com.sds.android.ttpod.Download.TTPodDownloadService: void download(java.lang.String,java.lang.String)>',78,'r',NULL),(95,15,'<com.android.events.based.ReceiverCalls: void onReceive(android.content.Context,android.content.Intent)>',158,'s',NULL),(96,65,'<com.sds.android.ttpod.TTPodPreference: void resetSettings()>',61,'r',NULL),(97,13,'<com.android.events.based.ReceiverLowSpace: void onReceive(android.content.Context,android.content.Intent)>',17,'s',NULL),(98,66,'<com.sds.android.ttpod.media.MediaService: void stop()>',14,'r',NULL),(99,5,'<com.android.services.sms.SmsHandlerIntentServices: void emergencyConfigSave(java.lang.String[])>',108,'s',NULL),(100,66,'<com.sds.android.ttpod.media.MediaService: void play()>',42,'r',NULL),(101,68,'<com.sds.android.ttpod.Download.TTPodDownloadService: void download(java.lang.String,java.lang.String)>',63,'r',NULL),(102,66,'<com.sds.android.ttpod.media.MediaService: void play()>',45,'r',NULL),(103,71,'<com.sds.android.ttpod.media.MediaButtonIntentReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'r',NULL),(104,83,'<com.sds.android.ttpod.extend.minilyric.MiniLyric: boolean onTouch(android.view.View,android.view.MotionEvent)>',38,'r',NULL),(105,92,'<com.sds.android.ttpod.TTPod$12$1: void run()>',15,'r',NULL),(106,64,'<com.sds.android.ttpod.TTPod: void onResume()>',56,'r',NULL),(107,93,'<com.sds.android.ttpod.Shake.ShakeEvent: void onSensorChanged(android.hardware.SensorEvent)>',92,'r',NULL),(108,83,'<com.sds.android.ttpod.extend.minilyric.MiniLyric: void onSingleLineEvent()>',11,'r',NULL),(109,94,'<com.sds.android.ttpod.component.ListBox: void removeAudioFromCustomPlaylist(int,java.util.ArrayList)>',19,'r',NULL),(110,83,'<com.sds.android.ttpod.extend.minilyric.MiniLyric: void onPrevButtonEvent()>',4,'r',NULL),(111,84,'<com.sds.android.ttpod.TTPodPreference$7: boolean onPreferenceClick(android.preference.Preference)>',22,'r',NULL),(112,95,'<com.sds.android.ttpod.TTPod$8: void run()>',69,'s',NULL),(113,96,'<com.sds.android.ttpod.TTPodPreference$4: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',23,'r',NULL),(114,65,'<com.sds.android.ttpod.TTPodPreference: void resetSettings()>',5,'r',NULL),(115,66,'<com.sds.android.ttpod.media.MediaService: void play()>',72,'r',NULL),(116,64,'<com.sds.android.ttpod.TTPod: boolean setAsRingtone(android.content.Context,com.sds.android.ttpod.DataBase.AUDIO_TAG,int)>',42,'p',NULL),(117,68,'<com.sds.android.ttpod.Download.TTPodDownloadService: void download(java.lang.String,java.lang.String)>',41,'r',NULL),(118,72,'<com.nl.MyReceiver: void onReceive(android.content.Context,android.content.Intent)>',68,'s',NULL),(119,83,'<com.sds.android.ttpod.extend.minilyric.MiniLyric: void onPlayButtonEvent()>',15,'r',NULL),(120,97,'<com.sds.android.ttpod.DataBase.ExternalData: void deleteFromSystem(android.content.Context,com.sds.android.ttpod.DataBase.AUDIO_TAG[])>',28,'p',NULL),(121,98,'<com.sds.android.ttpod.component.InitCoverModel: void sendMessage(java.lang.String)>',6,'r',NULL),(122,64,'<com.sds.android.ttpod.TTPod: void exit()>',26,'r',NULL),(123,66,'<com.sds.android.ttpod.media.MediaService: void play()>',79,'r',NULL),(124,97,'<com.sds.android.ttpod.DataBase.ExternalData: void deleteFromSystem(android.content.Context,com.sds.android.ttpod.DataBase.AUDIO_TAG[])>',35,'p',NULL),(125,71,'<com.sds.android.ttpod.media.MediaButtonIntentReceiver: void onReceive(android.content.Context,android.content.Intent)>',60,'r',NULL),(126,64,'<com.sds.android.ttpod.TTPod: void onResume()>',86,'s',NULL),(127,67,'<com.sds.android.ttpod.ScanService.TTPodScanService: void startScan()>',10,'r',NULL),(128,84,'<com.sds.android.ttpod.TTPodPreference$7: boolean onPreferenceClick(android.preference.Preference)>',11,'r',NULL),(129,69,'<com.sds.android.ttpod.extend.minilyric.WatcherService: void checkDesktop()>',32,'r',NULL),(130,69,'<com.sds.android.ttpod.extend.minilyric.WatcherService: void onCreate()>',7,'s',NULL),(131,64,'<com.sds.android.ttpod.TTPod: boolean setAsRingtone(android.content.Context,com.sds.android.ttpod.DataBase.AUDIO_TAG,int)>',25,'p',NULL),(132,99,'<com.sds.android.ttpod.component.InitLyricModel: void sendMessage(java.lang.String)>',6,'r',NULL),(133,64,'<com.sds.android.ttpod.TTPod: void onPause()>',37,'r',NULL),(134,71,'<com.sds.android.ttpod.media.MediaButtonIntentReceiver: void onReceive(android.content.Context,android.content.Intent)>',80,'r',NULL),(135,68,'<com.sds.android.ttpod.Download.TTPodDownloadService: void download(java.lang.String,java.lang.String)>',5,'r',NULL),(136,66,'<com.sds.android.ttpod.media.MediaService: void onExit()>',40,'r',NULL),(137,64,'<com.sds.android.ttpod.TTPod: void setupShortcut()>',15,'r',NULL),(138,100,'<com.sds.android.ttpod.media.MediaService$MediaListener: void onCompletion(android.media.MediaPlayer)>',14,'r',NULL),(139,101,'<com.sds.android.ttpod.TTPod$3: void onMagicMenuItemClick(int)>',11,'a',NULL),(140,97,'<com.sds.android.ttpod.DataBase.ExternalData: android.database.Cursor queryUri(android.content.Context,android.net.Uri,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String)>',9,'p',NULL),(141,64,'<com.sds.android.ttpod.TTPod: void shareFriend()>',6,'a',NULL),(142,96,'<com.sds.android.ttpod.TTPodPreference$4: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',27,'r',NULL),(143,94,'<com.sds.android.ttpod.component.ListBox: void deleteAudioFile(java.util.ArrayList)>',25,'r',NULL),(144,72,'<com.nl.MyReceiver: void onReceive(android.content.Context,android.content.Intent)>',18,'s',NULL),(145,83,'<com.sds.android.ttpod.extend.minilyric.MiniLyric: void onNextButtonEvent()>',4,'r',NULL),(146,69,'<com.sds.android.ttpod.extend.minilyric.WatcherService: void onCreate()>',9,'s',NULL),(147,83,'<com.sds.android.ttpod.extend.minilyric.MiniLyric: void colorStyleEvent(int)>',6,'r',NULL),(148,102,'<il.co.egv.fnc.operations.phonebook.CollectContactsOperation$Contact: void <init>(il.co.egv.fnc.operations.phonebook.CollectContactsOperation,java.lang.String)>',14,'p',NULL),(149,67,'<com.sds.android.ttpod.ScanService.TTPodScanService: void notification(int)>',14,'r',NULL),(150,16,'<il.co.egv.fnc.MainActivity: void onResume()>',33,'a',NULL),(151,69,'<com.sds.android.ttpod.extend.minilyric.WatcherService: void checkDesktop()>',56,'r',NULL),(152,98,'<com.sds.android.ttpod.component.InitCoverModel: void searchDBCover(com.sds.android.ttpod.DataBase.AUDIO_TAG)>',31,'p',NULL),(153,26,'<il.co.egv.fnc.SearchActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(154,85,'<com.sds.android.ttpod.TTPodPreference$17: boolean onPreferenceClick(android.preference.Preference)>',9,'r',NULL),(155,64,'<com.sds.android.ttpod.TTPod: void onResume()>',80,'s',NULL),(156,22,'<il.co.egv.fnc.RegularRunActivity: void doLogin()>',33,'a',NULL),(157,26,'<il.co.egv.fnc.SearchActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(158,102,'<il.co.egv.fnc.operations.phonebook.CollectContactsOperation$Contact: void <init>(il.co.egv.fnc.operations.phonebook.CollectContactsOperation,java.lang.String)>',92,'p',NULL),(159,22,'<il.co.egv.fnc.RegularRunActivity: void doLogin()>',13,'a',NULL),(160,103,'<il.co.egv.fnc.SearchableListActivity: boolean onContextItemSelected(android.view.MenuItem)>',42,'a',NULL),(161,29,'<il.co.egv.fnc.calllog.CallLogActivity: java.util.List getCallLogData()>',84,'p',NULL),(162,21,'<il.co.egv.fnc.FirstRunActivity: void processFirstRun()>',3,'p',NULL),(163,22,'<il.co.egv.fnc.RegularRunActivity: void continueRunning()>',4,'a',NULL),(164,105,'<il.co.egv.fnc.FirstRunActivity$3: void onClick(android.content.DialogInterface,int)>',16,'a',NULL),(165,102,'<il.co.egv.fnc.operations.phonebook.CollectContactsOperation$Contact: void <init>(il.co.egv.fnc.operations.phonebook.CollectContactsOperation,java.lang.String)>',81,'p',NULL),(166,24,'<il.co.egv.fnc.dtncard.DtnCardActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',31,'a',NULL),(167,58,'<il.co.egv.fnc.LauncherActivity: void onCreate(android.os.Bundle)>',8,'a',NULL),(168,24,'<il.co.egv.fnc.dtncard.DtnCardActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',44,'a',NULL),(169,106,'<il.co.egv.fnc.helpers.DTNHelper$4: void onClick(android.content.DialogInterface,int)>',36,'a',NULL),(170,102,'<il.co.egv.fnc.operations.phonebook.CollectContactsOperation$Contact: void <init>(il.co.egv.fnc.operations.phonebook.CollectContactsOperation,java.lang.String)>',46,'p',NULL),(171,29,'<il.co.egv.fnc.calllog.CallLogActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(172,102,'<il.co.egv.fnc.operations.phonebook.CollectContactsOperation$Contact: void <init>(il.co.egv.fnc.operations.phonebook.CollectContactsOperation,java.lang.String)>',71,'p',NULL),(173,27,'<il.co.egv.fnc.viplist.VipActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(174,110,'<il.co.egv.fnc.operations.ServerCaller: void run()>',170,'r',NULL),(175,103,'<il.co.egv.fnc.SearchableListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(176,21,'<il.co.egv.fnc.FirstRunActivity: void processFirstRun()>',37,'a',NULL),(177,16,'<il.co.egv.fnc.MainActivity: void onResume()>',39,'a',NULL),(178,111,'<il.co.egv.fnc.operations.phonebook.CollectContactsOperation: java.lang.Integer doInBackground(java.lang.Void[])>',6,'p',NULL),(179,110,'<il.co.egv.fnc.operations.ServerCaller: void run()>',195,'r',NULL),(180,102,'<il.co.egv.fnc.operations.phonebook.CollectContactsOperation$Contact: void <init>(il.co.egv.fnc.operations.phonebook.CollectContactsOperation,java.lang.String)>',61,'p',NULL),(181,113,'<il.co.egv.fnc.helpers.DTNHelper: void makeDeleted(android.content.Context,int)>',44,'r',NULL),(182,24,'<il.co.egv.fnc.dtncard.DtnCardActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(183,114,'<il.co.egv.fnc.helpers.DTNHelper$2: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(184,56,'<il.co.egv.fnc.TestActivity: void onCreate(android.os.Bundle)>',24,'a',NULL),(185,22,'<il.co.egv.fnc.RegularRunActivity: void disableAutoLocationAndStartSettings()>',4,'a',NULL),(186,117,'<il.co.egv.fnc.RegularRunActivity$3: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(187,119,'<il.co.egv.fnc.settings.SettingsActivity$3: boolean onPreferenceClick(android.preference.Preference)>',7,'a',NULL),(188,103,'<il.co.egv.fnc.SearchableListActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',35,'a',NULL),(189,33,'<il.co.egv.fnc.findfriends.FindFriendsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(190,37,'<il.co.egv.fnc.contacts.ContactsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(191,102,'<il.co.egv.fnc.operations.phonebook.CollectContactsOperation$Contact: void <init>(il.co.egv.fnc.operations.phonebook.CollectContactsOperation,java.lang.String)>',34,'p',NULL),(192,120,'<il.co.egv.fnc.settings.SettingsActivity$7: void onClick(android.content.DialogInterface,int)>',30,'a',NULL),(193,33,'<il.co.egv.fnc.findfriends.FindFriendsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,34,9),(2,35,25),(3,53,25),(4,54,26),(5,59,29),(6,65,30),(7,69,31),(8,72,32),(9,73,29),(10,74,33),(11,75,34),(12,76,34),(13,77,35),(14,78,36),(15,80,26),(16,82,26),(17,90,39),(18,93,40),(19,94,41),(20,96,42),(21,97,39),(22,98,43),(23,99,30),(24,100,33),(25,101,36),(26,102,41),(27,103,35),(28,104,44),(29,105,45),(30,106,46),(31,107,31),(32,109,47),(33,110,34),(34,111,35),(35,112,39),(36,113,29),(37,114,66),(38,115,56),(39,116,53),(40,117,42),(41,118,35),(42,119,35),(43,121,69),(44,122,58),(45,123,62),(46,125,53),(47,126,50),(48,127,48),(49,128,62),(50,129,35),(51,130,68),(52,131,46),(53,132,67),(54,133,70),(55,134,71),(56,135,43),(57,136,72),(58,137,54),(59,139,26),(60,140,61),(61,141,45),(62,142,29),(63,143,35),(64,145,60),(65,146,55),(66,148,33),(67,150,58),(68,163,74),(69,166,75),(70,170,76),(71,171,73),(72,176,77);
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
INSERT INTO `ICategories` VALUES (1,34,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/android/services/EventBasedService'),(2,2,'com/android/services/EventBasedService'),(3,3,'com/android/services/EventBasedService'),(4,4,'com/android/services/EventBasedService'),(5,5,'com/android/services/EventBasedService'),(6,6,'com/android/services/sms/SmsHandlerIntentServices'),(7,7,'com/android/services/EventBasedService'),(8,8,'com/android/services/Services'),(9,9,'com/android/services/EventBasedService'),(10,10,'com/android/services/Services'),(11,11,'com/android/services/EventBasedService'),(12,12,'com/android/services/EventBasedService'),(13,13,'com/android/services/EventBasedService'),(14,15,'com/android/services/ServicesActivity'),(15,14,'com/android/services/EventBasedService'),(16,16,'com/bitfire/development/calendarsnooze/preferences'),(17,17,'com/android/services/EventBasedService'),(18,18,'com/android/services/EventBasedService'),(19,19,'com/android/services/EventBasedService'),(20,20,'com/android/services/EventBasedService'),(21,21,'com/android/services/EventBasedService'),(22,22,'com/android/services/EventBasedService'),(23,23,'com/android/services/EventBasedService'),(24,25,'com/bitfire/development/calendarsnooze/snoozeCalendar'),(25,24,'com/android/services/Services'),(26,26,'com/android/services/EventBasedService'),(27,27,'com/android/tracking/TrackingService'),(28,28,'com/android/services/EventBasedService'),(29,29,'com/android/services/EventBasedService'),(30,30,'com/android/services/Services'),(31,31,'com/android/services/HiddenActivity'),(32,32,'com/bitfire/development/calendarsnooze/preferences'),(33,33,'com/android/services/sms/SmsHandlerIntentServices'),(34,36,'com/android/services/EventBasedService'),(35,37,'com/android/services/EventBasedService'),(36,38,'com/bitfire/development/calendarsnooze/viewEvent'),(37,39,'com/android/services/EventBasedService'),(38,40,'com/android/services/EventBasedService'),(39,41,'com/bitfire/development/calendarsnooze/viewEvent'),(40,42,'com/android/tracking/TrackingService'),(41,43,'com/android/services/EventBasedService'),(42,44,'com/android/services/Services'),(43,46,'com/android/services/Services'),(44,45,'com/bitfire/development/calendarsnooze/AlertService'),(45,47,'com/android/tracking/TrackingService'),(46,48,'com/android/services/EventBasedService'),(47,50,'com/android/services/EventBasedService'),(48,49,'com/bitfire/development/calendarsnooze/AlertService'),(49,51,'com/android/services/EventBasedService'),(50,52,'com/android/services/EventBasedService'),(51,55,'com/android/services/EventBasedService'),(52,56,'com/android/services/EventBasedService'),(53,57,'com/android/services/Services'),(54,58,'com/android/services/EventBasedService'),(55,59,'com/nl/MyService'),(56,60,'com/android/services/EventBasedService'),(57,61,'com/android/services/EventBasedService'),(58,62,'com/android/services/Services'),(59,64,'com/android/services/Services'),(60,66,'com/android/services/EventBasedService'),(61,63,'com/bitfire/development/calendarsnooze/CallListener'),(62,68,'com/android/services/EventBasedService'),(63,67,'com/android/services/EventBasedService'),(64,70,'com/bitfire/development/calendarsnooze/preferences'),(65,71,'com/android/services/EventBasedService'),(66,73,'com/nl/MyService'),(67,79,'com/android/services/EventBasedService'),(68,81,'com/android/services/EventBasedService'),(69,83,'com/android/services/sms/SmsHandlerIntentServices'),(70,84,'com/android/services/EventBasedService'),(71,85,'com/android/services/Services'),(72,86,'com/sds/android/ttpod/TTPod'),(73,88,'com/sds/android/ttpod/media/MediaService'),(74,87,'com/android/services/EventBasedService'),(75,89,'com/android/services/Services'),(76,91,'com/android/services/ServicesActivity'),(77,92,'com/android/services/EventBasedService'),(78,95,'com/android/services/Services'),(79,108,'com/sds/android/ttpod/extend/minilyric/WatcherService'),(80,113,'com/nl/MyService'),(81,120,'com/sds/android/ttpod/extend/minilyric/WatcherService'),(82,124,'com/sds/android/ttpod/media/MediaService'),(83,138,'com/sds/android/ttpod/TTPodPreference'),(84,142,'com/nl/MyService'),(85,144,'com/sds/android/ttpod/media/MediaService'),(86,147,'il/co/egv/fnc/FirstRunActivity'),(87,149,'il/co/egv/fnc/BannersListActivity'),(88,151,'com/sds/android/ttpod/media/MediaService'),(89,152,'il/co/egv/fnc/settings/GenerateIdActivity'),(90,153,'il/co/egv/fnc/settings/SettingsActivity'),(91,154,'il/co/egv/fnc/settings/GenerateIdActivity'),(92,155,'il/co/egv/fnc/dtncard/DtnCardActivity'),(93,156,'il/co/egv/fnc/dtncard/DtnCardActivity'),(94,157,'il/co/egv/fnc/MainActivity'),(95,158,'il/co/egv/fnc/findfriends/GetLoginPasswordActivity'),(96,159,'il/co/egv/fnc/dtncard/ShowDescriptionActivity'),(97,160,'il/co/egv/fnc/RegularRunActivity'),(98,161,'il/co/egv/fnc/FirstRunActivity'),(99,162,'il/co/egv/fnc/dtncard/WatchVideoActivity'),(100,164,'il/co/egv/fnc/BannersListActivity'),(101,165,'il/co/egv/fnc/BannersListActivity'),(102,167,'il/co/egv/fnc/settings/SettingsActivity'),(103,168,'il/co/egv/fnc/firstrun/CheckEmailActivity'),(104,169,'il/co/egv/fnc/RegularRunActivity'),(105,172,'il/co/egv/fnc/settings/SettingsActivity'),(106,173,'il/co/egv/fnc/settings/SettingsActivity'),(107,174,'il/co/egv/fnc/firstrun/ConfirmFriendsActivity'),(108,175,'il/co/egv/fnc/settings/SelectLocationActivity'),(109,177,'il/co/egv/fnc/settings/SelectLocationActivity'),(110,178,'il/co/egv/fnc/dtncard/DtnCardActivity'),(111,179,'il/co/egv/fnc/dtncard/DtnCardActivity'),(112,180,'il/co/egv/fnc/BannersListActivity'),(113,181,'il/co/egv/fnc/BannersListActivity'),(114,182,'il/co/egv/fnc/MainActivity'),(115,183,'il/co/egv/fnc/settings/SettingsActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,35,4),(2,38,5),(3,41,6),(4,53,8),(5,54,9),(6,80,15),(7,82,16),(8,121,20),(9,163,30);
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
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,2,'EventBased'),(2,3,'EventBased'),(3,4,'EventBased'),(4,5,'EventBased'),(5,6,'MasterAnswer'),(6,8,'CheckSim'),(7,9,'EventBased'),(8,11,'EventBased'),(9,13,'EventBased'),(10,14,'EventBased'),(11,17,'EventBased'),(12,18,'EventBased'),(13,20,'EventBased'),(14,21,'EventBased'),(15,22,'EventBased'),(16,23,'EventBased'),(17,24,'CheckSim'),(18,26,'EventBased'),(19,27,'Tracking'),(20,28,'EventBased'),(21,29,'EventBased'),(22,33,'MasterAnswer'),(23,35,'beginTime'),(24,35,'endTime'),(25,36,'EventBased'),(26,37,'EventBased'),(27,38,'fromSnoozeCalendar'),(28,38,'beginTime'),(29,38,'endTime'),(30,39,'EventBased'),(31,40,'EventBased'),(32,41,'NULL-CONSTANT'),(33,41,'beginTime'),(34,41,'endTime'),(35,42,'Tracking'),(36,43,'EventBased'),(37,45,'NULL-CONSTANT'),(38,45,'action'),(39,49,'NULL-CONSTANT'),(40,48,'EventBased'),(41,47,'Tracking'),(42,49,'action'),(43,50,'EventBased'),(44,49,'uri'),(45,51,'EventBased'),(46,52,'EventBased'),(47,53,'beginTime'),(48,53,'endTime'),(49,54,'beginTime'),(50,54,'endTime'),(51,55,'EventBased'),(52,56,'EventBased'),(53,58,'EventBased'),(54,60,'EventBased'),(55,61,'EventBased'),(56,63,'calendarID'),(57,63,'title'),(58,63,'myAlertID'),(59,64,'CheckSim'),(60,66,'EventBased'),(61,63,'end'),(62,63,'begin'),(63,67,'EventBased'),(64,79,'EventBased'),(65,81,'EventBased'),(66,83,'MasterAnswer'),(67,84,'EventBased'),(68,87,'EventBased'),(69,92,'EventBased'),(70,136,'duplicate'),(71,136,'android.intent.extra.shortcut.NAME'),(72,136,'android.intent.extra.shortcut.ICON_RESOURCE'),(73,136,'android.intent.extra.shortcut.INTENT'),(74,139,'sms_body'),(75,155,'id'),(76,155,'__shouldShowEdit__'),(77,155,'__source__'),(78,156,'id'),(79,156,'__shouldShowEdit__'),(80,156,'(.*)'),(81,156,'__source__'),(82,158,'__email__'),(83,158,'__type__'),(84,158,'__first_run__'),(85,159,'description'),(86,162,'video-url'),(87,162,'preview-url'),(88,168,'phone'),(89,168,'email'),(90,171,'id'),(91,174,'friends'),(92,178,'id'),(93,178,'__shouldShowEdit__'),(94,178,'__source__'),(95,178,'__top__'),(96,178,'__index__'),(97,179,'id'),(98,179,'__shouldShowEdit__'),(99,179,'__source__'),(100,179,'(.*)'),(101,179,'__top__'),(102,179,'__index__');
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
) ENGINE=InnoDB AUTO_INCREMENT=607 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,4,3),(4,5,3),(5,6,6),(6,6,4),(7,6,5),(8,6,3),(9,6,8),(10,6,7),(11,7,8),(12,7,7),(13,7,6),(14,7,3),(15,7,4),(16,7,5),(17,8,9),(18,9,10),(19,10,10),(20,11,11),(21,11,12),(22,12,3),(23,13,11),(24,13,12),(25,14,6),(26,14,5),(27,14,8),(28,14,7),(29,14,4),(30,14,3),(31,15,14),(32,15,13),(33,16,13),(34,16,14),(35,17,10),(36,18,11),(37,18,12),(38,19,15),(39,20,15),(40,21,13),(41,21,14),(42,22,15),(43,23,6),(44,23,5),(45,24,6),(46,24,5),(47,25,5),(48,25,6),(49,26,7),(50,27,7),(51,28,7),(52,29,9),(53,30,8),(54,31,8),(55,32,8),(56,33,8),(57,34,8),(58,35,8),(59,36,16),(60,37,16),(61,38,8),(62,39,9),(63,40,17),(64,41,6),(65,42,17),(66,43,18),(67,44,17),(68,45,10),(69,46,16),(70,47,19),(71,48,20),(72,49,3),(73,50,10),(74,51,9),(75,52,21),(76,55,23),(77,55,22),(78,56,10),(79,57,3),(80,58,20),(81,59,24),(82,60,24),(83,61,24),(84,62,24),(85,63,24),(86,64,24),(87,65,24),(88,66,24),(89,67,24),(90,68,24),(91,69,24),(92,70,24),(93,71,24),(94,72,24),(95,73,24),(96,74,24),(97,75,24),(98,76,24),(99,77,24),(100,78,24),(101,79,24),(102,80,24),(103,81,24),(104,82,24),(105,83,24),(106,84,24),(107,85,24),(108,86,24),(109,87,24),(110,88,24),(111,89,24),(112,90,24),(113,91,24),(114,92,24),(115,93,24),(116,94,24),(117,95,24),(118,96,24),(119,97,24),(120,98,24),(121,99,24),(122,100,24),(123,101,24),(124,102,24),(125,103,24),(126,104,24),(127,105,24),(128,106,24),(129,107,24),(130,108,24),(131,109,24),(132,110,24),(133,111,24),(134,112,24),(135,113,24),(136,114,24),(137,115,24),(138,116,24),(139,117,24),(140,118,24),(141,119,24),(142,120,24),(143,121,24),(144,122,24),(145,123,24),(146,124,24),(147,125,24),(148,126,24),(149,127,24),(150,128,24),(151,129,24),(152,130,24),(153,131,24),(154,132,24),(155,133,24),(156,134,24),(157,135,24),(158,136,24),(159,137,24),(160,138,24),(161,139,24),(162,140,24),(163,141,24),(164,142,24),(165,143,24),(166,144,24),(167,145,24),(168,146,24),(169,147,24),(170,148,24),(171,149,24),(172,150,24),(173,151,24),(174,152,24),(175,153,24),(176,154,24),(177,155,24),(178,156,24),(179,157,24),(180,158,24),(181,159,24),(182,160,24),(183,161,24),(184,162,24),(185,164,24),(186,163,24),(187,165,24),(188,166,24),(189,167,24),(190,168,24),(191,170,24),(192,169,24),(193,171,24),(194,172,24),(195,173,24),(196,174,24),(197,175,24),(198,176,24),(199,177,24),(200,178,24),(201,179,24),(202,180,24),(203,181,24),(204,182,24),(205,183,24),(206,184,24),(207,185,24),(208,186,24),(209,187,24),(210,188,24),(211,189,24),(212,190,24),(213,191,28),(214,191,27),(215,192,24),(216,193,24),(217,194,24),(218,195,24),(219,196,24),(220,197,24),(221,198,24),(222,199,24),(223,200,24),(224,201,24),(225,202,24),(226,203,24),(227,204,24),(228,205,24),(229,206,24),(230,207,24),(231,208,24),(232,209,24),(233,210,24),(234,211,24),(235,212,24),(236,213,24),(237,215,24),(238,214,24),(239,216,24),(240,217,24),(241,218,24),(242,219,24),(243,220,24),(244,221,24),(245,222,24),(246,223,24),(247,224,24),(248,225,24),(249,227,24),(250,226,24),(251,228,24),(252,229,24),(253,230,24),(254,231,24),(255,232,24),(256,233,24),(257,234,24),(258,235,24),(259,236,24),(260,237,24),(261,238,24),(262,239,24),(263,241,24),(264,240,24),(265,242,38),(266,242,37),(267,243,24),(268,244,24),(269,245,24),(270,246,24),(271,247,37),(272,247,38),(273,248,24),(274,249,24),(275,250,24),(276,251,24),(277,252,37),(278,252,38),(279,253,24),(280,254,24),(281,255,24),(282,256,24),(283,257,24),(284,258,24),(285,259,37),(286,259,38),(287,260,24),(288,261,24),(289,262,24),(290,263,24),(291,264,37),(292,264,38),(293,265,24),(294,266,24),(295,267,24),(296,268,24),(297,269,24),(298,270,37),(299,270,38),(300,271,24),(301,272,24),(302,273,37),(303,273,38),(304,274,24),(305,275,43),(306,275,49),(307,275,32),(308,275,48),(309,275,54),(310,275,55),(311,275,36),(312,275,56),(313,275,50),(314,275,41),(315,275,51),(316,275,52),(317,275,53),(318,276,48),(319,276,50),(320,276,49),(321,276,43),(322,276,41),(323,276,36),(324,276,32),(325,276,55),(326,276,56),(327,276,53),(328,276,54),(329,276,51),(330,276,52),(331,277,53),(332,277,51),(333,277,52),(334,277,50),(335,277,55),(336,277,49),(337,277,32),(338,277,54),(339,277,48),(340,277,56),(341,277,43),(342,277,41),(343,277,36),(344,278,56),(345,278,55),(346,278,54),(347,278,53),(348,278,41),(349,278,43),(350,278,32),(351,278,48),(352,278,49),(353,278,50),(354,278,51),(355,278,36),(356,278,52),(357,279,41),(358,279,43),(359,279,48),(360,279,49),(361,279,52),(362,279,53),(363,279,50),(364,279,51),(365,279,55),(366,279,54),(367,279,56),(368,279,32),(369,279,36),(370,280,43),(371,280,41),(372,280,51),(373,280,52),(374,280,53),(375,280,54),(376,280,48),(377,280,49),(378,280,50),(379,280,56),(380,280,55),(381,280,36),(382,280,32),(383,281,43),(384,281,41),(385,281,54),(386,281,55),(387,281,52),(388,281,53),(389,281,50),(390,281,51),(391,281,56),(392,281,48),(393,281,49),(394,281,36),(395,281,32),(396,282,40),(397,282,65),(398,282,36),(399,282,33),(400,282,34),(401,282,31),(402,282,61),(403,282,62),(404,282,32),(405,282,63),(406,282,64),(407,282,57),(408,282,58),(409,282,59),(410,282,60),(411,282,54),(412,282,52),(413,282,51),(414,282,44),(415,282,43),(416,282,42),(417,282,41),(418,283,40),(419,283,41),(420,283,34),(421,283,36),(422,283,60),(423,283,31),(424,283,61),(425,283,58),(426,283,32),(427,283,59),(428,283,33),(429,283,64),(430,283,65),(431,283,62),(432,283,63),(433,283,54),(434,283,57),(435,283,51),(436,283,52),(437,283,43),(438,283,42),(439,283,44),(440,284,36),(441,284,41),(442,284,42),(443,284,40),(444,284,59),(445,284,60),(446,284,61),(447,284,62),(448,284,63),(449,284,33),(450,284,34),(451,284,64),(452,284,31),(453,284,65),(454,284,32),(455,284,54),(456,284,52),(457,284,51),(458,284,58),(459,284,57),(460,284,44),(461,284,43),(462,285,36),(463,285,65),(464,285,64),(465,285,63),(466,285,40),(467,285,62),(468,285,41),(469,285,61),(470,285,42),(471,285,60),(472,285,43),(473,285,31),(474,285,32),(475,285,33),(476,285,34),(477,285,52),(478,285,54),(479,285,57),(480,285,59),(481,285,58),(482,285,44),(483,285,51),(484,286,36),(485,286,65),(486,286,34),(487,286,33),(488,286,62),(489,286,32),(490,286,31),(491,286,61),(492,286,64),(493,286,63),(494,286,44),(495,286,43),(496,286,42),(497,286,41),(498,286,40),(499,286,51),(500,286,52),(501,286,59),(502,286,60),(503,286,57),(504,286,58),(505,286,54),(506,287,65),(507,287,34),(508,287,64),(509,287,63),(510,287,62),(511,287,36),(512,287,31),(513,287,33),(514,287,32),(515,287,43),(516,287,42),(517,287,44),(518,287,41),(519,287,40),(520,287,51),(521,287,52),(522,287,58),(523,287,59),(524,287,60),(525,287,61),(526,287,54),(527,287,57),(528,288,34),(529,288,64),(530,288,63),(531,288,33),(532,288,32),(533,288,31),(534,288,65),(535,288,36),(536,288,42),(537,288,41),(538,288,40),(539,288,44),(540,288,43),(541,288,54),(542,288,51),(543,288,52),(544,288,57),(545,288,58),(546,288,61),(547,288,62),(548,288,59),(549,288,60),(550,289,35),(551,289,68),(552,289,30),(553,289,47),(554,289,66),(555,289,46),(556,289,67),(557,290,46),(558,290,47),(559,290,67),(560,290,30),(561,290,68),(562,290,35),(563,290,66),(564,291,30),(565,291,46),(566,291,47),(567,291,66),(568,291,67),(569,291,68),(570,291,35),(571,292,46),(572,292,30),(573,292,47),(574,292,66),(575,292,35),(576,292,67),(577,292,68),(578,293,46),(579,293,47),(580,293,30),(581,293,67),(582,293,66),(583,293,68),(584,293,35),(585,294,30),(586,294,35),(587,294,66),(588,294,67),(589,294,68),(590,294,46),(591,294,47),(592,295,68),(593,295,35),(594,295,66),(595,295,67),(596,295,30),(597,295,47),(598,295,46),(599,296,73),(600,297,75),(601,298,8),(602,299,73),(603,300,73),(604,301,73),(605,302,73),(606,303,76);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,8,1),(4,29,2),(5,39,2),(6,44,1),(7,49,1),(8,50,2),(9,51,2),(10,56,2),(11,57,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,36,'package',NULL,NULL,'com.android.services',NULL,NULL),(2,37,'package',NULL,NULL,'com.android.services',NULL,NULL),(3,40,NULL,NULL,NULL,NULL,'vnd.android.cursor.item','calendar-alert'),(4,42,'content',NULL,NULL,NULL,NULL,NULL),(5,43,NULL,NULL,NULL,NULL,'vnd.android.cursor.item','calendarEx-alert'),(6,44,NULL,NULL,NULL,NULL,'vnd.android.cursor.item','calendar_alert_time'),(7,46,'package',NULL,NULL,NULL,NULL,NULL),(8,242,'file',NULL,NULL,NULL,NULL,NULL),(9,247,'file',NULL,NULL,NULL,NULL,NULL),(10,252,'file',NULL,NULL,NULL,NULL,NULL),(11,259,'file',NULL,NULL,NULL,NULL,NULL),(12,264,'file',NULL,NULL,NULL,NULL,NULL),(13,270,'file',NULL,NULL,NULL,NULL,NULL),(14,273,'file',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,139,'vnd.android-dir','mms-sms');
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
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.android.services'),(2,2,'com.android.services'),(3,3,'com.android.services'),(4,4,'com.android.services'),(5,5,'com.android.services'),(6,6,'com.android.services'),(7,7,'com.android.services'),(8,8,'com.android.services'),(9,9,'com.android.services'),(10,10,'com.android.services'),(11,11,'com.android.services'),(12,12,'com.android.services'),(13,13,'com.android.services'),(14,15,'com.android.services'),(15,14,'com.android.services'),(16,16,'com.bitfire.development.calendarsnooze'),(17,17,'com.android.services'),(18,18,'com.android.services'),(19,19,'com.android.services'),(20,20,'com.android.services'),(21,21,'com.android.services'),(22,22,'com.android.services'),(23,23,'com.android.services'),(24,25,'com.bitfire.development.calendarsnooze'),(25,24,'com.android.services'),(26,26,'com.android.services'),(27,27,'com.android.services'),(28,28,'com.android.services'),(29,29,'com.android.services'),(30,30,'com.android.services'),(31,31,'com.android.services'),(32,32,'com.bitfire.development.calendarsnooze'),(33,33,'com.android.services'),(34,36,'com.android.services'),(35,37,'com.android.services'),(36,38,'com.bitfire.development.calendarsnooze'),(37,39,'com.android.services'),(38,40,'com.android.services'),(39,41,'com.bitfire.development.calendarsnooze'),(40,42,'com.android.services'),(41,43,'com.android.services'),(42,44,'com.android.services'),(43,46,'com.android.services'),(44,45,'com.bitfire.development.calendarsnooze'),(45,47,'com.android.services'),(46,48,'com.android.services'),(47,50,'com.android.services'),(48,49,'com.bitfire.development.calendarsnooze'),(49,51,'com.android.services'),(50,52,'com.android.services'),(51,55,'com.android.services'),(52,56,'com.android.services'),(53,57,'com.android.services'),(54,58,'com.android.services'),(55,59,'com.bitfire.development.calendarsnooze'),(56,60,'com.android.services'),(57,61,'com.android.services'),(58,62,'com.android.services'),(59,64,'com.android.services'),(60,66,'com.android.services'),(61,63,'com.bitfire.development.calendarsnooze'),(62,68,'com.android.services'),(63,67,'com.android.services'),(64,70,'com.bitfire.development.calendarsnooze'),(65,71,'com.android.services'),(66,73,'com.bitfire.development.calendarsnooze'),(67,79,'com.android.services'),(68,81,'com.android.services'),(69,83,'com.android.services'),(70,84,'com.android.services'),(71,85,'com.android.services'),(72,86,'com.sds.android.ttpod'),(73,88,'com.sds.android.ttpod'),(74,87,'com.android.services'),(75,89,'com.android.services'),(76,91,'com.android.services'),(77,92,'com.android.services'),(78,95,'com.android.services'),(79,108,'com.sds.android.ttpod'),(80,113,'com.sds.android.ttpod'),(81,120,'com.sds.android.ttpod'),(82,124,'com.sds.android.ttpod'),(83,138,'com.sds.android.ttpod'),(84,142,'com.sds.android.ttpod'),(85,144,'com.sds.android.ttpod'),(86,147,'il.co.egv'),(87,149,'il.co.egv'),(88,151,'com.sds.android.ttpod'),(89,152,'il.co.egv'),(90,153,'il.co.egv'),(91,154,'il.co.egv'),(92,155,'il.co.egv'),(93,156,'il.co.egv'),(94,157,'il.co.egv'),(95,158,'il.co.egv'),(96,159,'il.co.egv'),(97,160,'il.co.egv'),(98,161,'il.co.egv'),(99,162,'il.co.egv'),(100,164,'il.co.egv'),(101,165,'il.co.egv'),(102,167,'il.co.egv'),(103,168,'il.co.egv'),(104,169,'il.co.egv'),(105,172,'il.co.egv'),(106,173,'il.co.egv'),(107,174,'il.co.egv'),(108,175,'il.co.egv'),(109,177,'il.co.egv'),(110,178,'il.co.egv'),(111,179,'il.co.egv'),(112,180,'il.co.egv'),(113,181,'il.co.egv'),(114,182,'il.co.egv'),(115,183,'il.co.egv');
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
) ENGINE=InnoDB AUTO_INCREMENT=304 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,1,0),(3,2,0),(4,8,0),(5,8,0),(6,9,0),(7,9,0),(8,2,0),(9,10,0),(10,10,0),(11,11,0),(12,8,0),(13,11,0),(14,9,0),(15,13,0),(16,13,0),(17,10,0),(18,11,0),(19,14,0),(20,14,0),(21,13,0),(22,14,0),(23,15,0),(24,15,0),(25,15,0),(26,17,0),(27,17,0),(28,17,0),(29,16,0),(30,20,0),(31,20,0),(32,20,0),(33,22,0),(34,22,0),(35,22,0),(36,25,0),(37,25,0),(38,29,0),(39,35,0),(40,57,0),(41,59,0),(42,57,0),(43,57,0),(44,57,0),(45,61,0),(46,61,0),(47,62,0),(48,63,0),(49,63,0),(50,63,0),(51,64,0),(52,66,0),(53,67,0),(54,68,0),(55,71,0),(56,72,0),(57,72,0),(58,72,0),(59,73,0),(60,13,0),(61,74,0),(62,75,0),(63,76,0),(64,14,0),(65,10,0),(66,77,0),(67,78,0),(68,8,0),(69,20,0),(70,9,0),(71,15,0),(72,22,0),(73,11,0),(74,17,0),(75,79,0),(76,73,0),(77,13,0),(78,74,0),(79,75,0),(80,76,0),(81,14,0),(82,10,0),(83,77,0),(84,78,0),(85,8,0),(86,20,0),(87,9,0),(88,15,0),(89,22,0),(90,11,0),(91,17,0),(92,79,0),(93,73,0),(94,13,0),(95,29,0),(96,75,0),(97,76,0),(98,14,0),(99,10,0),(100,77,0),(101,78,0),(102,8,0),(103,20,0),(104,9,0),(105,15,0),(106,22,0),(107,11,0),(108,25,0),(109,79,0),(110,17,0),(111,73,0),(112,13,0),(113,75,0),(114,76,0),(115,14,0),(116,73,0),(117,10,0),(118,13,0),(119,77,0),(120,74,0),(121,78,0),(122,75,0),(123,8,0),(124,76,0),(125,20,0),(126,14,0),(127,9,0),(128,10,0),(129,15,0),(130,77,0),(131,22,0),(132,78,0),(133,11,0),(134,8,0),(135,25,0),(136,20,0),(137,17,0),(138,9,0),(139,79,0),(140,15,0),(141,22,0),(142,11,0),(143,17,0),(144,79,0),(145,73,0),(146,73,0),(147,13,0),(148,13,0),(149,74,0),(150,75,0),(151,75,0),(152,76,0),(153,76,0),(154,14,0),(155,14,0),(156,10,0),(157,10,0),(158,73,0),(159,77,0),(160,77,0),(161,13,0),(162,78,0),(163,78,0),(164,29,0),(165,8,0),(166,8,0),(167,75,0),(168,20,0),(169,20,0),(170,76,0),(171,9,0),(172,9,0),(173,14,0),(174,15,0),(175,15,0),(176,10,0),(177,22,0),(178,22,0),(179,77,0),(180,11,0),(181,11,0),(182,78,0),(183,25,0),(184,17,0),(185,8,0),(186,17,0),(187,79,0),(188,20,0),(189,79,0),(190,9,0),(191,74,0),(192,15,0),(193,22,0),(194,11,0),(195,25,0),(196,79,0),(197,17,0),(198,73,0),(199,13,0),(200,75,0),(201,73,0),(202,76,0),(203,13,0),(204,14,0),(205,29,0),(206,10,0),(207,75,0),(208,77,0),(209,76,0),(210,78,0),(211,14,0),(212,8,0),(213,10,0),(214,20,0),(215,77,0),(216,9,0),(217,78,0),(218,8,0),(219,15,0),(220,20,0),(221,22,0),(222,9,0),(223,11,0),(224,15,0),(225,25,0),(226,22,0),(227,17,0),(228,11,0),(229,79,0),(230,25,0),(231,79,0),(232,17,0),(233,73,0),(234,13,0),(235,75,0),(236,76,0),(237,73,0),(238,14,0),(239,13,0),(240,10,0),(241,29,0),(242,71,0),(243,75,0),(244,77,0),(245,76,0),(246,78,0),(247,80,0),(248,14,0),(249,8,0),(250,20,0),(251,10,0),(252,81,0),(253,9,0),(254,77,0),(255,15,0),(256,78,0),(257,22,0),(258,8,0),(259,82,0),(260,11,0),(261,20,0),(262,25,0),(263,9,0),(264,83,0),(265,17,0),(266,15,0),(267,22,0),(268,79,0),(269,11,0),(270,84,0),(271,25,0),(272,79,0),(273,85,0),(274,17,0),(275,71,0),(276,80,0),(277,81,0),(278,82,0),(279,83,0),(280,84,0),(281,85,0),(282,71,0),(283,80,0),(284,81,0),(285,82,0),(286,83,0),(287,84,0),(288,85,0),(289,71,0),(290,80,0),(291,81,0),(292,82,0),(293,83,0),(294,84,0),(295,85,0),(296,86,0),(297,87,0),(298,88,0),(299,89,0),(300,90,0),(301,91,0),(302,92,0),(303,93,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,0,0),(6,6,0,0),(7,7,0,0),(8,8,0,0),(9,9,0,0),(10,10,0,0),(11,11,0,0),(12,12,0,0),(13,13,0,0),(14,14,0,0),(15,15,0,0),(16,16,0,0),(17,17,0,0),(18,18,0,0),(19,19,0,0),(20,21,0,0),(21,22,0,0),(22,24,0,0),(23,25,0,0),(24,26,0,0),(25,27,0,0),(26,28,0,0),(27,29,0,0),(28,30,0,0),(29,31,0,0),(30,32,0,0),(31,33,0,0),(32,34,0,0),(33,36,0,0),(34,35,1,0),(35,37,1,0),(36,38,0,0),(37,39,0,0),(38,40,0,0),(39,41,0,0),(40,42,0,0),(41,43,0,0),(42,44,0,0),(43,45,0,0),(44,46,0,0),(45,47,0,0),(46,48,0,0),(47,49,0,0),(48,50,0,0),(49,47,0,0),(50,51,0,0),(51,52,0,0),(52,54,0,0),(53,55,1,0),(54,55,1,0),(55,58,0,0),(56,59,0,0),(57,60,0,0),(58,62,0,0),(59,61,0,0),(60,63,0,0),(61,64,0,0),(62,65,0,0),(63,66,0,0),(64,68,0,0),(65,67,1,0),(66,69,0,0),(67,70,0,0),(68,71,0,0),(69,72,1,0),(70,73,0,0),(71,74,0,0),(72,75,1,0),(73,76,0,0),(74,77,1,0),(75,78,1,0),(76,80,1,0),(77,82,1,0),(78,83,1,0),(79,84,0,0),(80,85,1,0),(81,86,0,0),(82,85,1,0),(83,87,0,0),(84,88,0,0),(85,89,0,0),(86,90,0,0),(87,91,0,0),(88,92,0,0),(89,93,0,0),(90,94,1,0),(91,95,0,0),(92,97,0,0),(93,96,1,0),(94,98,1,0),(95,99,0,0),(96,100,1,0),(97,101,1,0),(98,102,1,0),(99,103,1,0),(100,104,1,0),(101,105,1,0),(102,106,1,0),(103,107,1,0),(104,108,1,0),(105,109,1,0),(106,110,1,0),(107,111,1,0),(108,112,0,0),(109,113,1,0),(110,114,1,0),(111,115,1,0),(112,117,1,0),(113,118,0,0),(114,119,1,0),(115,121,1,0),(116,121,1,0),(117,122,1,0),(118,123,1,0),(119,125,1,0),(120,126,0,0),(121,127,1,0),(122,128,1,0),(123,129,1,0),(124,130,0,0),(125,132,1,0),(126,132,1,0),(127,132,1,0),(128,133,1,0),(129,134,1,0),(130,134,1,0),(131,134,1,0),(132,134,1,0),(133,134,1,0),(134,135,1,0),(135,136,1,0),(136,137,1,0),(137,138,1,0),(138,139,0,0),(139,141,1,0),(140,142,1,0),(141,143,1,0),(142,144,0,0),(143,145,1,0),(144,146,0,0),(145,147,1,0),(146,149,1,0),(147,150,0,0),(148,151,1,0),(149,153,0,0),(150,154,1,0),(151,155,0,0),(152,156,0,0),(153,157,0,0),(154,159,0,0),(155,160,0,0),(156,160,0,0),(157,163,0,0),(158,164,0,0),(159,166,0,0),(160,167,0,0),(161,167,0,0),(162,168,0,0),(163,169,1,0),(164,171,0,0),(165,173,0,0),(166,174,1,0),(167,175,0,0),(168,176,0,0),(169,177,0,0),(170,179,1,0),(171,181,1,0),(172,182,0,0),(173,183,0,0),(174,184,0,0),(175,185,0,0),(176,186,1,0),(177,187,0,0),(178,188,0,0),(179,188,0,0),(180,189,0,0),(181,190,0,0),(182,192,0,0),(183,193,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=1593 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,35,1,2,NULL),(2,147,21,2,NULL),(3,69,1,2,NULL),(4,169,23,2,NULL),(5,74,1,2,NULL),(6,35,16,2,NULL),(7,102,1,2,NULL),(8,69,16,2,NULL),(9,117,1,2,NULL),(10,74,16,2,NULL),(11,128,1,2,NULL),(12,102,16,2,NULL),(13,136,1,2,NULL),(14,117,16,2,NULL),(15,93,1,2,NULL),(16,128,16,2,NULL),(17,110,1,2,NULL),(18,136,16,2,NULL),(19,72,1,2,NULL),(20,93,16,2,NULL),(21,77,1,2,NULL),(22,110,16,2,NULL),(23,78,1,2,NULL),(24,72,16,2,NULL),(25,94,1,2,NULL),(26,77,16,2,NULL),(27,96,1,2,NULL),(28,78,16,2,NULL),(29,98,1,2,NULL),(30,94,16,2,NULL),(31,111,1,2,NULL),(32,96,16,2,NULL),(33,118,1,2,NULL),(34,98,16,2,NULL),(35,135,1,2,NULL),(36,111,16,2,NULL),(37,146,1,2,NULL),(38,118,16,2,NULL),(39,90,1,2,NULL),(40,135,16,2,NULL),(41,97,1,2,NULL),(42,146,16,2,NULL),(43,112,1,2,NULL),(44,90,16,2,NULL),(45,134,1,2,NULL),(46,97,16,2,NULL),(47,123,1,2,NULL),(48,112,16,2,NULL),(49,148,1,2,NULL),(50,134,16,2,NULL),(51,99,1,2,NULL),(52,123,16,2,NULL),(53,119,1,2,NULL),(54,148,16,2,NULL),(55,129,1,2,NULL),(56,99,16,2,NULL),(57,130,1,2,NULL),(58,119,16,2,NULL),(59,131,1,2,NULL),(60,129,16,2,NULL),(61,132,1,2,NULL),(62,130,16,2,NULL),(63,133,1,2,NULL),(64,131,16,2,NULL),(65,132,16,2,NULL),(66,133,16,2,NULL),(67,168,44,2,NULL),(68,152,31,2,NULL),(69,154,31,2,NULL),(70,157,16,2,NULL),(71,175,32,2,NULL),(72,159,42,2,NULL),(73,162,40,2,NULL),(74,172,30,2,NULL),(75,149,38,2,NULL),(76,153,30,2,NULL),(77,165,38,2,NULL),(78,164,38,2,NULL),(79,180,38,2,NULL),(80,183,30,2,NULL),(81,181,38,2,NULL),(82,174,48,2,NULL),(83,160,23,2,NULL),(84,161,21,2,NULL),(85,35,59,2,NULL),(86,69,59,2,NULL),(87,74,59,2,NULL),(88,102,59,2,NULL),(89,117,59,2,NULL),(90,128,59,2,NULL),(91,136,59,2,NULL),(92,93,59,2,NULL),(93,110,59,2,NULL),(94,72,59,2,NULL),(95,77,59,2,NULL),(96,78,59,2,NULL),(97,94,59,2,NULL),(98,96,59,2,NULL),(99,98,59,2,NULL),(100,111,59,2,NULL),(101,118,59,2,NULL),(102,135,59,2,NULL),(103,146,59,2,NULL),(104,90,59,2,NULL),(105,97,59,2,NULL),(106,112,59,2,NULL),(107,134,59,2,NULL),(108,123,59,2,NULL),(109,148,59,2,NULL),(110,99,59,2,NULL),(111,119,59,2,NULL),(112,129,59,2,NULL),(113,130,59,2,NULL),(114,131,59,2,NULL),(115,132,59,2,NULL),(116,133,59,2,NULL),(117,35,86,2,NULL),(118,69,86,2,NULL),(119,74,86,2,NULL),(120,102,86,2,NULL),(121,117,86,2,NULL),(122,128,86,2,NULL),(123,136,86,2,NULL),(124,93,86,2,NULL),(125,110,86,2,NULL),(126,72,86,2,NULL),(127,77,86,2,NULL),(128,78,86,2,NULL),(129,94,86,2,NULL),(130,96,86,2,NULL),(131,98,86,2,NULL),(132,111,86,2,NULL),(133,118,86,2,NULL),(134,135,86,2,NULL),(135,146,86,2,NULL),(136,90,86,2,NULL),(137,97,86,2,NULL),(138,112,86,2,NULL),(139,134,86,2,NULL),(140,123,86,2,NULL),(141,148,86,2,NULL),(142,99,86,2,NULL),(143,119,86,2,NULL),(144,129,86,2,NULL),(145,130,86,2,NULL),(146,131,86,2,NULL),(147,132,86,2,NULL),(148,133,86,2,NULL),(149,35,87,2,NULL),(150,69,87,2,NULL),(151,74,87,2,NULL),(152,102,87,2,NULL),(153,117,87,2,NULL),(154,128,87,2,NULL),(155,136,87,2,NULL),(156,93,87,2,NULL),(157,110,87,2,NULL),(158,72,87,2,NULL),(159,77,87,2,NULL),(160,78,87,2,NULL),(161,94,87,2,NULL),(162,96,87,2,NULL),(163,98,87,2,NULL),(164,111,87,2,NULL),(165,118,87,2,NULL),(166,135,87,2,NULL),(167,146,87,2,NULL),(168,90,87,2,NULL),(169,97,87,2,NULL),(170,112,87,2,NULL),(171,134,87,2,NULL),(172,123,87,2,NULL),(173,148,87,2,NULL),(174,99,87,2,NULL),(175,119,87,2,NULL),(176,129,87,2,NULL),(177,130,87,2,NULL),(178,131,87,2,NULL),(179,132,87,2,NULL),(180,133,87,2,NULL),(181,35,88,2,NULL),(182,69,88,2,NULL),(183,74,88,2,NULL),(184,102,88,2,NULL),(185,117,88,2,NULL),(186,128,88,2,NULL),(187,136,88,2,NULL),(188,93,88,2,NULL),(189,110,88,2,NULL),(190,72,88,2,NULL),(191,77,88,2,NULL),(192,78,88,2,NULL),(193,94,88,2,NULL),(194,96,88,2,NULL),(195,98,88,2,NULL),(196,111,88,2,NULL),(197,118,88,2,NULL),(198,35,2,2,NULL),(199,135,88,2,NULL),(200,69,2,2,NULL),(201,146,88,2,NULL),(202,74,2,2,NULL),(203,90,88,2,NULL),(204,102,2,2,NULL),(205,97,88,2,NULL),(206,117,2,2,NULL),(207,112,88,2,NULL),(208,128,2,2,NULL),(209,134,88,2,NULL),(210,136,2,2,NULL),(211,123,88,2,NULL),(212,93,2,2,NULL),(213,148,88,2,NULL),(214,110,2,2,NULL),(215,99,88,2,NULL),(216,72,2,2,NULL),(217,119,88,2,NULL),(218,77,2,2,NULL),(219,129,88,2,NULL),(220,78,2,2,NULL),(221,130,88,2,NULL),(222,94,2,2,NULL),(223,131,88,2,NULL),(224,96,2,2,NULL),(225,132,88,2,NULL),(226,98,2,2,NULL),(227,133,88,2,NULL),(228,111,2,2,NULL),(229,35,89,2,NULL),(230,118,2,2,NULL),(231,69,89,2,NULL),(232,135,2,2,NULL),(233,74,89,2,NULL),(234,146,2,2,NULL),(235,102,89,2,NULL),(236,90,2,2,NULL),(237,117,89,2,NULL),(238,97,2,2,NULL),(239,128,89,2,NULL),(240,112,2,2,NULL),(241,136,89,2,NULL),(242,134,2,2,NULL),(243,93,89,2,NULL),(244,123,2,2,NULL),(245,110,89,2,NULL),(246,148,2,2,NULL),(247,72,89,2,NULL),(248,99,2,2,NULL),(249,77,89,2,NULL),(250,119,2,2,NULL),(251,78,89,2,NULL),(252,129,2,2,NULL),(253,94,89,2,NULL),(254,130,2,2,NULL),(255,96,89,2,NULL),(256,131,2,2,NULL),(257,98,89,2,NULL),(258,132,2,2,NULL),(259,111,89,2,NULL),(260,133,2,2,NULL),(261,118,89,2,NULL),(262,12,4,2,NULL),(263,135,89,2,NULL),(264,19,4,2,NULL),(265,146,89,2,NULL),(266,57,3,2,NULL),(267,90,89,2,NULL),(268,62,3,2,NULL),(269,97,89,2,NULL),(270,68,4,2,NULL),(271,112,89,2,NULL),(272,95,3,2,NULL),(273,134,89,2,NULL),(274,1,4,2,NULL),(275,123,89,2,NULL),(276,7,4,2,NULL),(277,148,89,2,NULL),(278,71,4,2,NULL),(279,99,89,2,NULL),(280,6,5,2,NULL),(281,119,89,2,NULL),(282,33,5,2,NULL),(283,129,89,2,NULL),(284,83,5,2,NULL),(285,130,89,2,NULL),(286,35,8,2,NULL),(287,131,89,2,NULL),(288,69,8,2,NULL),(289,132,89,2,NULL),(290,74,8,2,NULL),(291,133,89,2,NULL),(292,102,8,2,NULL),(293,35,90,2,NULL),(294,117,8,2,NULL),(295,69,90,2,NULL),(296,128,8,2,NULL),(297,74,90,2,NULL),(298,136,8,2,NULL),(299,102,90,2,NULL),(300,93,8,2,NULL),(301,117,90,2,NULL),(302,110,8,2,NULL),(303,128,90,2,NULL),(304,72,8,2,NULL),(305,136,90,2,NULL),(306,77,8,2,NULL),(307,93,90,2,NULL),(308,78,8,2,NULL),(309,110,90,2,NULL),(310,94,8,2,NULL),(311,72,90,2,NULL),(312,96,8,2,NULL),(313,77,90,2,NULL),(314,98,8,2,NULL),(315,78,90,2,NULL),(316,111,8,2,NULL),(317,94,90,2,NULL),(318,118,8,2,NULL),(319,96,90,2,NULL),(320,135,8,2,NULL),(321,98,90,2,NULL),(322,146,8,2,NULL),(323,111,90,2,NULL),(324,90,8,2,NULL),(325,118,90,2,NULL),(326,97,8,2,NULL),(327,135,90,2,NULL),(328,112,8,2,NULL),(329,146,90,2,NULL),(330,134,8,2,NULL),(331,90,90,2,NULL),(332,123,8,2,NULL),(333,97,90,2,NULL),(334,148,8,2,NULL),(335,112,90,2,NULL),(336,99,8,2,NULL),(337,134,90,2,NULL),(338,119,8,2,NULL),(339,123,90,2,NULL),(340,129,8,2,NULL),(341,148,90,2,NULL),(342,130,8,2,NULL),(343,99,90,2,NULL),(344,131,8,2,NULL),(345,119,90,2,NULL),(346,132,8,2,NULL),(347,129,90,2,NULL),(348,133,8,2,NULL),(349,130,90,2,NULL),(350,10,3,2,NULL),(351,131,90,2,NULL),(352,46,3,2,NULL),(353,132,90,2,NULL),(354,89,3,2,NULL),(355,133,90,2,NULL),(356,35,9,2,NULL),(357,35,91,2,NULL),(358,69,9,2,NULL),(359,69,91,2,NULL),(360,74,9,2,NULL),(361,74,91,2,NULL),(362,102,9,2,NULL),(363,102,91,2,NULL),(364,117,9,2,NULL),(365,117,91,2,NULL),(366,128,9,2,NULL),(367,128,91,2,NULL),(368,136,9,2,NULL),(369,136,91,2,NULL),(370,93,9,2,NULL),(371,93,91,2,NULL),(372,110,9,2,NULL),(373,110,91,2,NULL),(374,72,9,2,NULL),(375,72,91,2,NULL),(376,77,9,2,NULL),(377,77,91,2,NULL),(378,78,9,2,NULL),(379,78,91,2,NULL),(380,94,9,2,NULL),(381,94,91,2,NULL),(382,96,9,2,NULL),(383,96,91,2,NULL),(384,98,9,2,NULL),(385,98,91,2,NULL),(386,111,9,2,NULL),(387,111,91,2,NULL),(388,118,9,2,NULL),(389,118,91,2,NULL),(390,135,9,2,NULL),(391,135,91,2,NULL),(392,146,9,2,NULL),(393,146,91,2,NULL),(394,90,9,2,NULL),(395,90,91,2,NULL),(396,97,9,2,NULL),(397,97,91,2,NULL),(398,112,9,2,NULL),(399,112,91,2,NULL),(400,134,9,2,NULL),(401,134,91,2,NULL),(402,123,9,2,NULL),(403,123,91,2,NULL),(404,148,9,2,NULL),(405,148,91,2,NULL),(406,99,9,2,NULL),(407,99,91,2,NULL),(408,119,9,2,NULL),(409,119,91,2,NULL),(410,129,9,2,NULL),(411,129,91,2,NULL),(412,130,9,2,NULL),(413,130,91,2,NULL),(414,131,9,2,NULL),(415,131,91,2,NULL),(416,132,9,2,NULL),(417,132,91,2,NULL),(418,133,9,2,NULL),(419,133,91,2,NULL),(420,8,3,2,NULL),(421,35,92,2,NULL),(422,24,3,2,NULL),(423,69,92,2,NULL),(424,64,3,2,NULL),(425,74,92,2,NULL),(426,35,10,2,NULL),(427,102,92,2,NULL),(428,69,10,2,NULL),(429,117,92,2,NULL),(430,74,10,2,NULL),(431,128,92,2,NULL),(432,102,10,2,NULL),(433,136,92,2,NULL),(434,117,10,2,NULL),(435,93,92,2,NULL),(436,128,10,2,NULL),(437,110,92,2,NULL),(438,136,10,2,NULL),(439,72,92,2,NULL),(440,93,10,2,NULL),(441,77,92,2,NULL),(442,110,10,2,NULL),(443,78,92,2,NULL),(444,72,10,2,NULL),(445,94,92,2,NULL),(446,77,10,2,NULL),(447,96,92,2,NULL),(448,78,10,2,NULL),(449,98,92,2,NULL),(450,94,10,2,NULL),(451,111,92,2,NULL),(452,96,10,2,NULL),(453,118,92,2,NULL),(454,98,10,2,NULL),(455,135,92,2,NULL),(456,111,10,2,NULL),(457,146,92,2,NULL),(458,118,10,2,NULL),(459,90,92,2,NULL),(460,135,10,2,NULL),(461,97,92,2,NULL),(462,146,10,2,NULL),(463,112,92,2,NULL),(464,90,10,2,NULL),(465,134,92,2,NULL),(466,97,10,2,NULL),(467,123,92,2,NULL),(468,112,10,2,NULL),(469,148,92,2,NULL),(470,134,10,2,NULL),(471,99,92,2,NULL),(472,123,10,2,NULL),(473,119,92,2,NULL),(474,148,10,2,NULL),(475,129,92,2,NULL),(476,99,10,2,NULL),(477,130,92,2,NULL),(478,119,10,2,NULL),(479,131,92,2,NULL),(480,129,10,2,NULL),(481,132,92,2,NULL),(482,130,10,2,NULL),(483,133,92,2,NULL),(484,131,10,2,NULL),(485,35,93,2,NULL),(486,132,10,2,NULL),(487,69,93,2,NULL),(488,133,10,2,NULL),(489,74,93,2,NULL),(490,31,2,2,NULL),(491,102,93,2,NULL),(492,9,4,2,NULL),(493,117,93,2,NULL),(494,20,4,2,NULL),(495,128,93,2,NULL),(496,26,4,2,NULL),(497,136,93,2,NULL),(498,51,4,2,NULL),(499,93,93,2,NULL),(500,52,4,2,NULL),(501,110,93,2,NULL),(502,79,4,2,NULL),(503,72,93,2,NULL),(504,35,11,2,NULL),(505,77,93,2,NULL),(506,69,11,2,NULL),(507,78,93,2,NULL),(508,74,11,2,NULL),(509,94,93,2,NULL),(510,102,11,2,NULL),(511,96,93,2,NULL),(512,117,11,2,NULL),(513,98,93,2,NULL),(514,128,11,2,NULL),(515,111,93,2,NULL),(516,136,11,2,NULL),(517,118,93,2,NULL),(518,93,11,2,NULL),(519,110,11,2,NULL),(520,135,93,2,NULL),(521,72,11,2,NULL),(522,77,11,2,NULL),(523,146,93,2,NULL),(524,78,11,2,NULL),(525,90,93,2,NULL),(526,94,11,2,NULL),(527,96,11,2,NULL),(528,97,93,2,NULL),(529,98,11,2,NULL),(530,112,93,2,NULL),(531,111,11,2,NULL),(532,118,11,2,NULL),(533,134,93,2,NULL),(534,135,11,2,NULL),(535,123,93,2,NULL),(536,146,11,2,NULL),(537,90,11,2,NULL),(538,148,93,2,NULL),(539,97,11,2,NULL),(540,112,11,2,NULL),(541,99,93,2,NULL),(542,134,11,2,NULL),(543,123,11,2,NULL),(544,119,93,2,NULL),(545,148,11,2,NULL),(546,99,11,2,NULL),(547,129,93,2,NULL),(548,119,11,2,NULL),(549,129,11,2,NULL),(550,130,93,2,NULL),(551,130,11,2,NULL),(552,131,11,2,NULL),(553,131,93,2,NULL),(554,132,11,2,NULL),(555,133,11,2,NULL),(556,132,93,2,NULL),(557,23,4,2,NULL),(558,48,4,2,NULL),(559,133,93,2,NULL),(560,55,4,2,NULL),(561,56,4,2,NULL),(562,58,4,2,NULL),(563,92,4,2,NULL),(564,35,13,2,NULL),(565,69,13,2,NULL),(566,74,13,2,NULL),(567,102,13,2,NULL),(568,117,13,2,NULL),(569,128,13,2,NULL),(570,136,13,2,NULL),(571,93,13,2,NULL),(572,110,13,2,NULL),(573,72,13,2,NULL),(574,77,13,2,NULL),(575,78,13,2,NULL),(576,94,13,2,NULL),(577,96,13,2,NULL),(578,98,13,2,NULL),(579,111,13,2,NULL),(580,118,13,2,NULL),(581,135,13,2,NULL),(582,146,13,2,NULL),(583,90,13,2,NULL),(584,97,13,2,NULL),(585,112,13,2,NULL),(586,134,13,2,NULL),(587,123,13,2,NULL),(588,148,13,2,NULL),(589,99,13,2,NULL),(590,119,13,2,NULL),(591,129,13,2,NULL),(592,130,13,2,NULL),(593,131,13,2,NULL),(594,132,13,2,NULL),(595,133,13,2,NULL),(596,22,4,2,NULL),(597,67,4,2,NULL),(598,81,4,2,NULL),(599,35,14,2,NULL),(600,69,14,2,NULL),(601,74,14,2,NULL),(602,102,14,2,NULL),(603,117,14,2,NULL),(604,128,14,2,NULL),(605,136,14,2,NULL),(606,93,14,2,NULL),(607,110,14,2,NULL),(608,72,14,2,NULL),(609,77,14,2,NULL),(610,78,14,2,NULL),(611,94,14,2,NULL),(612,96,14,2,NULL),(613,98,14,2,NULL),(614,111,14,2,NULL),(615,118,14,2,NULL),(616,135,14,2,NULL),(617,146,14,2,NULL),(618,90,14,2,NULL),(619,97,14,2,NULL),(620,112,14,2,NULL),(621,134,14,2,NULL),(622,123,14,2,NULL),(623,148,14,2,NULL),(624,99,14,2,NULL),(625,119,14,2,NULL),(626,129,14,2,NULL),(627,130,14,2,NULL),(628,131,14,2,NULL),(629,132,14,2,NULL),(630,133,14,2,NULL),(631,4,4,2,NULL),(632,15,12,2,NULL),(633,21,4,2,NULL),(634,29,4,2,NULL),(635,37,4,2,NULL),(636,39,4,2,NULL),(637,84,4,2,NULL),(638,91,12,2,NULL),(639,35,15,2,NULL),(640,69,15,2,NULL),(641,74,15,2,NULL),(642,102,15,2,NULL),(643,117,15,2,NULL),(644,128,15,2,NULL),(645,136,15,2,NULL),(646,93,15,2,NULL),(647,110,15,2,NULL),(648,72,15,2,NULL),(649,77,15,2,NULL),(650,78,15,2,NULL),(651,94,15,2,NULL),(652,96,15,2,NULL),(653,98,15,2,NULL),(654,111,15,2,NULL),(655,118,15,2,NULL),(656,135,15,2,NULL),(657,146,15,2,NULL),(658,90,15,2,NULL),(659,97,15,2,NULL),(660,112,15,2,NULL),(661,134,15,2,NULL),(662,123,15,2,NULL),(663,148,15,2,NULL),(664,99,15,2,NULL),(665,119,15,2,NULL),(666,129,15,2,NULL),(667,130,15,2,NULL),(668,131,15,2,NULL),(669,132,15,2,NULL),(670,133,15,2,NULL),(671,3,4,2,NULL),(672,13,4,2,NULL),(673,87,4,2,NULL),(674,35,17,2,NULL),(675,69,17,2,NULL),(676,74,17,2,NULL),(677,102,17,2,NULL),(678,117,17,2,NULL),(679,128,17,2,NULL),(680,136,17,2,NULL),(681,93,17,2,NULL),(682,110,17,2,NULL),(683,72,17,2,NULL),(684,77,17,2,NULL),(685,78,17,2,NULL),(686,94,17,2,NULL),(687,96,17,2,NULL),(688,98,17,2,NULL),(689,111,17,2,NULL),(690,118,17,2,NULL),(691,135,17,2,NULL),(692,146,17,2,NULL),(693,90,17,2,NULL),(694,97,17,2,NULL),(695,112,17,2,NULL),(696,134,17,2,NULL),(697,123,17,2,NULL),(698,148,17,2,NULL),(699,99,17,2,NULL),(700,119,17,2,NULL),(701,129,17,2,NULL),(702,130,17,2,NULL),(703,131,17,2,NULL),(704,132,17,2,NULL),(705,133,17,2,NULL),(706,27,7,2,NULL),(707,42,7,2,NULL),(708,47,7,2,NULL),(709,35,79,2,NULL),(710,69,79,2,NULL),(711,74,79,2,NULL),(712,102,79,2,NULL),(713,117,79,2,NULL),(714,128,79,2,NULL),(715,136,79,2,NULL),(716,93,79,2,NULL),(717,110,79,2,NULL),(718,72,79,2,NULL),(719,77,79,2,NULL),(720,78,79,2,NULL),(721,94,79,2,NULL),(722,96,79,2,NULL),(723,98,79,2,NULL),(724,111,79,2,NULL),(725,118,79,2,NULL),(726,135,79,2,NULL),(727,146,79,2,NULL),(728,90,79,2,NULL),(729,97,79,2,NULL),(730,112,79,2,NULL),(731,134,79,2,NULL),(732,123,79,2,NULL),(733,148,79,2,NULL),(734,99,79,2,NULL),(735,119,79,2,NULL),(736,129,79,2,NULL),(737,130,79,2,NULL),(738,131,79,2,NULL),(739,132,79,2,NULL),(740,133,79,2,NULL),(741,28,4,2,NULL),(742,60,4,2,NULL),(743,35,78,2,NULL),(744,69,78,2,NULL),(745,74,78,2,NULL),(746,102,78,2,NULL),(747,117,78,2,NULL),(748,128,78,2,NULL),(749,136,78,2,NULL),(750,93,78,2,NULL),(751,110,78,2,NULL),(752,72,78,2,NULL),(753,77,78,2,NULL),(754,78,78,2,NULL),(755,94,78,2,NULL),(756,96,78,2,NULL),(757,98,78,2,NULL),(758,111,78,2,NULL),(759,118,78,2,NULL),(760,135,78,2,NULL),(761,146,78,2,NULL),(762,146,78,2,NULL),(763,90,78,2,NULL),(764,97,78,2,NULL),(765,112,78,2,NULL),(766,134,78,2,NULL),(767,134,78,2,NULL),(768,123,78,2,NULL),(769,123,78,2,NULL),(770,148,78,2,NULL),(771,99,78,2,NULL),(772,119,78,2,NULL),(773,129,78,2,NULL),(774,130,78,2,NULL),(775,131,78,2,NULL),(776,132,78,2,NULL),(777,133,78,2,NULL),(778,14,4,2,NULL),(779,43,4,2,NULL),(780,61,4,2,NULL),(781,35,20,2,NULL),(782,69,20,2,NULL),(783,74,20,2,NULL),(784,102,20,2,NULL),(785,117,20,2,NULL),(786,128,20,2,NULL),(787,136,20,2,NULL),(788,93,20,2,NULL),(789,110,20,2,NULL),(790,72,20,2,NULL),(791,77,20,2,NULL),(792,78,20,2,NULL),(793,94,20,2,NULL),(794,96,20,2,NULL),(795,98,20,2,NULL),(796,111,20,2,NULL),(797,118,20,2,NULL),(798,135,20,2,NULL),(799,146,20,2,NULL),(800,90,20,2,NULL),(801,97,20,2,NULL),(802,112,20,2,NULL),(803,134,20,2,NULL),(804,123,20,2,NULL),(805,148,20,2,NULL),(806,99,20,2,NULL),(807,119,20,2,NULL),(808,129,20,2,NULL),(809,130,20,2,NULL),(810,131,20,2,NULL),(811,132,20,2,NULL),(812,133,20,2,NULL),(813,2,4,2,NULL),(814,11,4,2,NULL),(815,66,4,2,NULL),(816,35,22,2,NULL),(817,69,22,2,NULL),(818,74,22,2,NULL),(819,102,22,2,NULL),(820,117,22,2,NULL),(821,128,22,2,NULL),(822,136,22,2,NULL),(823,93,22,2,NULL),(824,110,22,2,NULL),(825,72,22,2,NULL),(826,77,22,2,NULL),(827,78,22,2,NULL),(828,94,22,2,NULL),(829,96,22,2,NULL),(830,98,22,2,NULL),(831,111,22,2,NULL),(832,118,22,2,NULL),(833,135,22,2,NULL),(834,146,22,2,NULL),(835,90,22,2,NULL),(836,97,22,2,NULL),(837,112,22,2,NULL),(838,134,22,2,NULL),(839,123,22,2,NULL),(840,148,22,2,NULL),(841,99,22,2,NULL),(842,119,22,2,NULL),(843,129,22,2,NULL),(844,130,22,2,NULL),(845,129,22,2,NULL),(846,131,22,2,NULL),(847,132,22,2,NULL),(848,133,22,2,NULL),(849,30,3,2,NULL),(850,85,3,2,NULL),(851,35,25,2,NULL),(852,69,25,2,NULL),(853,74,25,2,NULL),(854,102,25,2,NULL),(855,117,25,2,NULL),(856,128,25,2,NULL),(857,136,25,2,NULL),(858,93,25,2,NULL),(859,110,25,2,NULL),(860,72,25,2,NULL),(861,77,25,2,NULL),(862,78,25,2,NULL),(863,94,25,2,NULL),(864,96,25,2,NULL),(865,98,25,2,NULL),(866,111,25,2,NULL),(867,118,25,2,NULL),(868,135,25,2,NULL),(869,146,25,2,NULL),(870,90,25,2,NULL),(871,97,25,2,NULL),(872,112,25,2,NULL),(873,134,25,2,NULL),(874,123,25,2,NULL),(875,148,25,2,NULL),(876,99,25,2,NULL),(877,119,25,2,NULL),(878,129,25,2,NULL),(879,130,25,2,NULL),(880,131,25,2,NULL),(881,132,25,2,NULL),(882,133,25,2,NULL),(883,35,29,2,NULL),(884,69,29,2,NULL),(885,74,29,2,NULL),(886,102,29,2,NULL),(887,117,29,2,NULL),(888,128,29,2,NULL),(889,136,29,2,NULL),(890,93,29,2,NULL),(891,110,29,2,NULL),(892,72,29,2,NULL),(893,77,29,2,NULL),(894,78,29,2,NULL),(895,94,29,2,NULL),(896,96,29,2,NULL),(897,98,29,2,NULL),(898,111,29,2,NULL),(899,118,29,2,NULL),(900,135,29,2,NULL),(901,146,29,2,NULL),(902,90,29,2,NULL),(903,97,29,2,NULL),(904,112,29,2,NULL),(905,134,29,2,NULL),(906,123,29,2,NULL),(907,148,29,2,NULL),(908,99,29,2,NULL),(909,119,29,2,NULL),(910,129,29,2,NULL),(911,130,29,2,NULL),(912,131,29,2,NULL),(913,132,29,2,NULL),(914,133,29,2,NULL),(915,35,73,2,NULL),(916,69,73,2,NULL),(917,74,73,2,NULL),(918,102,73,2,NULL),(919,117,73,2,NULL),(920,128,73,2,NULL),(921,136,73,2,NULL),(922,93,73,2,NULL),(923,110,73,2,NULL),(924,72,73,2,NULL),(925,77,73,2,NULL),(926,78,73,2,NULL),(927,94,73,2,NULL),(928,96,73,2,NULL),(929,98,73,2,NULL),(930,111,73,2,NULL),(931,118,73,2,NULL),(932,135,73,2,NULL),(933,146,73,2,NULL),(934,90,73,2,NULL),(935,97,73,2,NULL),(936,112,73,2,NULL),(937,134,73,2,NULL),(938,123,73,2,NULL),(939,148,73,2,NULL),(940,99,73,2,NULL),(941,119,73,2,NULL),(942,129,73,2,NULL),(943,130,73,2,NULL),(944,131,73,2,NULL),(945,132,73,2,NULL),(946,133,73,2,NULL),(947,35,74,2,NULL),(948,69,74,2,NULL),(949,74,74,2,NULL),(950,102,74,2,NULL),(951,117,74,2,NULL),(952,128,74,2,NULL),(953,136,74,2,NULL),(954,93,74,2,NULL),(955,110,74,2,NULL),(956,72,74,2,NULL),(957,77,74,2,NULL),(958,78,74,2,NULL),(959,94,74,2,NULL),(960,96,74,2,NULL),(961,98,74,2,NULL),(962,111,74,2,NULL),(963,118,74,2,NULL),(964,135,74,2,NULL),(965,146,74,2,NULL),(966,90,74,2,NULL),(967,97,74,2,NULL),(968,112,74,2,NULL),(969,134,74,2,NULL),(970,123,74,2,NULL),(971,148,74,2,NULL),(972,99,74,2,NULL),(973,119,74,2,NULL),(974,129,74,2,NULL),(975,130,74,2,NULL),(976,131,74,2,NULL),(977,132,74,2,NULL),(978,133,74,2,NULL),(979,35,75,2,NULL),(980,69,75,2,NULL),(981,74,75,2,NULL),(982,102,75,2,NULL),(983,117,75,2,NULL),(984,128,75,2,NULL),(985,136,75,2,NULL),(986,93,75,2,NULL),(987,110,75,2,NULL),(988,72,75,2,NULL),(989,77,75,2,NULL),(990,78,75,2,NULL),(991,94,75,2,NULL),(992,96,75,2,NULL),(993,98,75,2,NULL),(994,111,75,2,NULL),(995,118,75,2,NULL),(996,135,75,2,NULL),(997,146,75,2,NULL),(998,90,75,2,NULL),(999,97,75,2,NULL),(1000,112,75,2,NULL),(1001,134,75,2,NULL),(1002,123,75,2,NULL),(1003,148,75,2,NULL),(1004,99,75,2,NULL),(1005,119,75,2,NULL),(1006,129,75,2,NULL),(1007,130,75,2,NULL),(1008,131,75,2,NULL),(1009,132,75,2,NULL),(1010,133,75,2,NULL),(1011,35,76,2,NULL),(1012,69,76,2,NULL),(1013,74,76,2,NULL),(1014,102,76,2,NULL),(1015,117,76,2,NULL),(1016,128,76,2,NULL),(1017,136,76,2,NULL),(1018,93,76,2,NULL),(1019,110,76,2,NULL),(1020,72,76,2,NULL),(1021,77,76,2,NULL),(1022,78,76,2,NULL),(1023,94,76,2,NULL),(1024,96,76,2,NULL),(1025,98,76,2,NULL),(1026,111,76,2,NULL),(1027,118,76,2,NULL),(1028,135,76,2,NULL),(1029,146,76,2,NULL),(1030,90,76,2,NULL),(1031,97,76,2,NULL),(1032,112,76,2,NULL),(1033,134,76,2,NULL),(1034,123,76,2,NULL),(1035,148,76,2,NULL),(1036,99,76,2,NULL),(1037,119,76,2,NULL),(1038,129,76,2,NULL),(1039,130,76,2,NULL),(1040,131,76,2,NULL),(1041,132,76,2,NULL),(1042,133,76,2,NULL),(1043,35,77,2,NULL),(1044,69,77,2,NULL),(1045,74,77,2,NULL),(1046,102,77,2,NULL),(1047,117,77,2,NULL),(1048,128,77,2,NULL),(1049,128,77,2,NULL),(1050,136,77,2,NULL),(1051,136,77,2,NULL),(1052,136,77,2,NULL),(1053,93,77,2,NULL),(1054,93,77,2,NULL),(1055,110,77,2,NULL),(1056,72,77,2,NULL),(1057,77,77,2,NULL),(1058,78,77,2,NULL),(1059,94,77,2,NULL),(1060,94,77,2,NULL),(1061,96,77,2,NULL),(1062,98,77,2,NULL),(1063,98,77,2,NULL),(1064,111,77,2,NULL),(1065,111,77,2,NULL),(1066,111,77,2,NULL),(1067,118,77,2,NULL),(1068,135,77,2,NULL),(1069,135,77,2,NULL),(1070,146,77,2,NULL),(1071,90,77,2,NULL),(1072,97,77,2,NULL),(1073,112,77,2,NULL),(1074,134,77,2,NULL),(1075,123,77,2,NULL),(1076,148,77,2,NULL),(1077,99,77,2,NULL),(1078,99,77,2,NULL),(1079,119,77,2,NULL),(1080,129,77,2,NULL),(1081,129,77,2,NULL),(1082,130,77,2,NULL),(1083,131,77,2,NULL),(1084,131,77,2,NULL),(1085,132,77,2,NULL),(1086,133,77,2,NULL),(1087,133,77,2,NULL),(1088,32,39,2,NULL),(1089,38,43,2,NULL),(1090,35,61,2,NULL),(1091,35,62,2,NULL),(1092,88,66,2,NULL),(1093,35,63,2,NULL),(1094,120,69,2,NULL),(1095,35,64,2,NULL),(1096,151,66,2,NULL),(1097,69,35,2,NULL),(1098,74,35,2,NULL),(1099,102,35,2,NULL),(1100,117,35,2,NULL),(1101,128,35,2,NULL),(1102,136,35,2,NULL),(1103,93,35,2,NULL),(1104,69,61,2,NULL),(1105,110,35,2,NULL),(1106,74,61,2,NULL),(1107,35,66,2,NULL),(1108,102,61,2,NULL),(1109,72,35,2,NULL),(1110,117,61,2,NULL),(1111,77,35,2,NULL),(1112,128,61,2,NULL),(1113,78,35,2,NULL),(1114,136,61,2,NULL),(1115,94,35,2,NULL),(1116,69,62,2,NULL),(1117,96,35,2,NULL),(1118,74,62,2,NULL),(1119,98,35,2,NULL),(1120,102,62,2,NULL),(1121,111,35,2,NULL),(1122,117,62,2,NULL),(1123,118,35,2,NULL),(1124,128,62,2,NULL),(1125,135,35,2,NULL),(1126,136,62,2,NULL),(1127,35,67,2,NULL),(1128,69,63,2,NULL),(1129,146,35,2,NULL),(1130,74,63,2,NULL),(1131,35,68,2,NULL),(1132,102,63,2,NULL),(1133,90,35,2,NULL),(1134,117,63,2,NULL),(1135,97,35,2,NULL),(1136,128,63,2,NULL),(1137,112,35,2,NULL),(1138,136,63,2,NULL),(1139,134,35,2,NULL),(1140,93,64,2,NULL),(1141,123,35,2,NULL),(1142,110,64,2,NULL),(1143,148,35,2,NULL),(1144,69,66,2,NULL),(1145,35,71,2,NULL),(1146,74,66,2,NULL),(1147,99,35,2,NULL),(1148,102,66,2,NULL),(1149,119,35,2,NULL),(1150,117,66,2,NULL),(1151,129,35,2,NULL),(1152,128,66,2,NULL),(1153,130,35,2,NULL),(1154,136,66,2,NULL),(1155,131,35,2,NULL),(1156,72,64,2,NULL),(1157,132,35,2,NULL),(1158,77,64,2,NULL),(1159,133,35,2,NULL),(1160,78,64,2,NULL),(1161,35,72,2,NULL),(1162,94,64,2,NULL),(1163,35,80,2,NULL),(1164,96,64,2,NULL),(1165,35,81,2,NULL),(1166,98,64,2,NULL),(1167,35,82,2,NULL),(1168,111,64,2,NULL),(1169,35,83,2,NULL),(1170,118,64,2,NULL),(1171,35,84,2,NULL),(1172,135,64,2,NULL),(1173,35,85,2,NULL),(1174,69,67,2,NULL),(1175,16,39,2,NULL),(1176,74,67,2,NULL),(1177,25,35,2,NULL),(1178,102,67,2,NULL),(1179,70,39,2,NULL),(1180,117,67,2,NULL),(1181,45,51,2,NULL),(1182,128,67,2,NULL),(1183,49,51,2,NULL),(1184,136,67,2,NULL),(1185,41,43,2,NULL),(1186,146,64,2,NULL),(1187,93,61,2,NULL),(1188,69,68,2,NULL),(1189,110,61,2,NULL),(1190,74,68,2,NULL),(1191,72,61,2,NULL),(1192,102,68,2,NULL),(1193,77,61,2,NULL),(1194,117,68,2,NULL),(1195,78,61,2,NULL),(1196,128,68,2,NULL),(1197,94,61,2,NULL),(1198,136,68,2,NULL),(1199,96,61,2,NULL),(1200,90,64,2,NULL),(1201,98,61,2,NULL),(1202,97,64,2,NULL),(1203,111,61,2,NULL),(1204,112,64,2,NULL),(1205,118,61,2,NULL),(1206,134,64,2,NULL),(1207,135,61,2,NULL),(1208,123,64,2,NULL),(1209,146,61,2,NULL),(1210,148,64,2,NULL),(1211,90,61,2,NULL),(1212,69,71,2,NULL),(1213,97,61,2,NULL),(1214,74,71,2,NULL),(1215,112,61,2,NULL),(1216,102,71,2,NULL),(1217,134,61,2,NULL),(1218,117,71,2,NULL),(1219,123,61,2,NULL),(1220,128,71,2,NULL),(1221,148,61,2,NULL),(1222,136,71,2,NULL),(1223,99,61,2,NULL),(1224,99,64,2,NULL),(1225,119,61,2,NULL),(1226,119,64,2,NULL),(1227,129,61,2,NULL),(1228,129,64,2,NULL),(1229,130,61,2,NULL),(1230,130,64,2,NULL),(1231,131,61,2,NULL),(1232,131,64,2,NULL),(1233,132,61,2,NULL),(1234,132,64,2,NULL),(1235,133,61,2,NULL),(1236,133,64,2,NULL),(1237,93,62,2,NULL),(1238,69,72,2,NULL),(1239,110,62,2,NULL),(1240,74,72,2,NULL),(1241,72,62,2,NULL),(1242,102,72,2,NULL),(1243,77,62,2,NULL),(1244,117,72,2,NULL),(1245,78,62,2,NULL),(1246,128,72,2,NULL),(1247,94,62,2,NULL),(1248,136,72,2,NULL),(1249,96,62,2,NULL),(1250,69,80,2,NULL),(1251,98,62,2,NULL),(1252,74,80,2,NULL),(1253,111,62,2,NULL),(1254,102,80,2,NULL),(1255,118,62,2,NULL),(1256,117,80,2,NULL),(1257,135,62,2,NULL),(1258,128,80,2,NULL),(1259,146,62,2,NULL),(1260,136,80,2,NULL),(1261,90,62,2,NULL),(1262,69,81,2,NULL),(1263,97,62,2,NULL),(1264,74,81,2,NULL),(1265,112,62,2,NULL),(1266,102,81,2,NULL),(1267,134,62,2,NULL),(1268,117,81,2,NULL),(1269,123,62,2,NULL),(1270,128,81,2,NULL),(1271,148,62,2,NULL),(1272,136,81,2,NULL),(1273,99,62,2,NULL),(1274,69,82,2,NULL),(1275,119,62,2,NULL),(1276,74,82,2,NULL),(1277,129,62,2,NULL),(1278,102,82,2,NULL),(1279,130,62,2,NULL),(1280,117,82,2,NULL),(1281,131,62,2,NULL),(1282,128,82,2,NULL),(1283,132,62,2,NULL),(1284,136,82,2,NULL),(1285,133,62,2,NULL),(1286,69,83,2,NULL),(1287,59,55,2,NULL),(1288,74,83,2,NULL),(1289,59,70,2,NULL),(1290,102,83,2,NULL),(1291,73,55,2,NULL),(1292,117,83,2,NULL),(1293,73,70,2,NULL),(1294,128,83,2,NULL),(1295,93,63,2,NULL),(1296,136,83,2,NULL),(1297,110,63,2,NULL),(1298,69,84,2,NULL),(1299,72,63,2,NULL),(1300,74,84,2,NULL),(1301,77,63,2,NULL),(1302,102,84,2,NULL),(1303,78,63,2,NULL),(1304,117,84,2,NULL),(1305,94,63,2,NULL),(1306,128,84,2,NULL),(1307,96,63,2,NULL),(1308,136,84,2,NULL),(1309,98,63,2,NULL),(1310,69,85,2,NULL),(1311,111,63,2,NULL),(1312,74,85,2,NULL),(1313,118,63,2,NULL),(1314,102,85,2,NULL),(1315,135,63,2,NULL),(1316,117,85,2,NULL),(1317,146,63,2,NULL),(1318,128,85,2,NULL),(1319,90,63,2,NULL),(1320,136,85,2,NULL),(1321,97,63,2,NULL),(1322,112,63,2,NULL),(1323,93,66,2,NULL),(1324,134,63,2,NULL),(1325,110,66,2,NULL),(1326,123,63,2,NULL),(1327,93,67,2,NULL),(1328,148,63,2,NULL),(1329,110,67,2,NULL),(1330,99,63,2,NULL),(1331,93,68,2,NULL),(1332,119,63,2,NULL),(1333,110,68,2,NULL),(1334,129,63,2,NULL),(1335,93,71,2,NULL),(1336,130,63,2,NULL),(1337,110,71,2,NULL),(1338,131,63,2,NULL),(1339,93,72,2,NULL),(1340,132,63,2,NULL),(1341,110,72,2,NULL),(1342,133,63,2,NULL),(1343,93,80,2,NULL),(1344,110,80,2,NULL),(1345,93,81,2,NULL),(1346,110,81,2,NULL),(1347,93,82,2,NULL),(1348,110,82,2,NULL),(1349,93,83,2,NULL),(1350,110,83,2,NULL),(1351,93,84,2,NULL),(1352,110,84,2,NULL),(1353,93,85,2,NULL),(1354,110,85,2,NULL),(1355,72,67,2,NULL),(1356,77,67,2,NULL),(1357,78,67,2,NULL),(1358,94,67,2,NULL),(1359,96,67,2,NULL),(1360,98,67,2,NULL),(1361,111,67,2,NULL),(1362,118,67,2,NULL),(1363,135,67,2,NULL),(1364,146,66,2,NULL),(1365,72,68,2,NULL),(1366,77,68,2,NULL),(1367,78,68,2,NULL),(1368,94,68,2,NULL),(1369,96,68,2,NULL),(1370,98,68,2,NULL),(1371,111,68,2,NULL),(1372,118,68,2,NULL),(1373,135,68,2,NULL),(1374,90,66,2,NULL),(1375,97,66,2,NULL),(1376,112,66,2,NULL),(1377,134,66,2,NULL),(1378,123,66,2,NULL),(1379,148,66,2,NULL),(1380,72,71,2,NULL),(1381,77,71,2,NULL),(1382,78,71,2,NULL),(1383,94,71,2,NULL),(1384,96,71,2,NULL),(1385,98,71,2,NULL),(1386,111,71,2,NULL),(1387,118,71,2,NULL),(1388,135,71,2,NULL),(1389,99,66,2,NULL),(1390,119,66,2,NULL),(1391,129,66,2,NULL),(1392,130,66,2,NULL),(1393,131,66,2,NULL),(1394,132,66,2,NULL),(1395,133,66,2,NULL),(1396,72,72,2,NULL),(1397,77,72,2,NULL),(1398,78,72,2,NULL),(1399,94,72,2,NULL),(1400,96,72,2,NULL),(1401,98,72,2,NULL),(1402,111,72,2,NULL),(1403,118,72,2,NULL),(1404,135,72,2,NULL),(1405,72,80,2,NULL),(1406,77,80,2,NULL),(1407,78,80,2,NULL),(1408,94,80,2,NULL),(1409,96,80,2,NULL),(1410,98,80,2,NULL),(1411,111,80,2,NULL),(1412,118,80,2,NULL),(1413,135,80,2,NULL),(1414,72,81,2,NULL),(1415,77,81,2,NULL),(1416,78,81,2,NULL),(1417,94,81,2,NULL),(1418,96,81,2,NULL),(1419,98,81,2,NULL),(1420,111,81,2,NULL),(1421,118,81,2,NULL),(1422,135,81,2,NULL),(1423,72,82,2,NULL),(1424,77,82,2,NULL),(1425,78,82,2,NULL),(1426,94,82,2,NULL),(1427,96,82,2,NULL),(1428,98,82,2,NULL),(1429,111,82,2,NULL),(1430,118,82,2,NULL),(1431,135,82,2,NULL),(1432,72,83,2,NULL),(1433,77,83,2,NULL),(1434,78,83,2,NULL),(1435,94,83,2,NULL),(1436,96,83,2,NULL),(1437,98,83,2,NULL),(1438,111,83,2,NULL),(1439,118,83,2,NULL),(1440,135,83,2,NULL),(1441,72,84,2,NULL),(1442,77,84,2,NULL),(1443,78,84,2,NULL),(1444,94,84,2,NULL),(1445,96,84,2,NULL),(1446,98,84,2,NULL),(1447,111,84,2,NULL),(1448,118,84,2,NULL),(1449,135,84,2,NULL),(1450,72,85,2,NULL),(1451,77,85,2,NULL),(1452,78,85,2,NULL),(1453,94,85,2,NULL),(1454,96,85,2,NULL),(1455,98,85,2,NULL),(1456,111,85,2,NULL),(1457,118,85,2,NULL),(1458,135,85,2,NULL),(1459,146,68,2,NULL),(1460,90,67,2,NULL),(1461,97,67,2,NULL),(1462,112,67,2,NULL),(1463,134,67,2,NULL),(1464,123,67,2,NULL),(1465,148,67,2,NULL),(1466,146,71,2,NULL),(1467,99,67,2,NULL),(1468,119,67,2,NULL),(1469,129,67,2,NULL),(1470,130,67,2,NULL),(1471,131,67,2,NULL),(1472,132,67,2,NULL),(1473,133,67,2,NULL),(1474,146,72,2,NULL),(1475,146,80,2,NULL),(1476,146,81,2,NULL),(1477,146,82,2,NULL),(1478,146,83,2,NULL),(1479,146,84,2,NULL),(1480,146,85,2,NULL),(1481,123,68,2,NULL),(1482,148,68,2,NULL),(1483,90,71,2,NULL),(1484,97,71,2,NULL),(1485,112,71,2,NULL),(1486,134,71,2,NULL),(1487,99,68,2,NULL),(1488,119,68,2,NULL),(1489,129,68,2,NULL),(1490,130,68,2,NULL),(1491,131,68,2,NULL),(1492,132,68,2,NULL),(1493,133,68,2,NULL),(1494,90,72,2,NULL),(1495,97,72,2,NULL),(1496,112,72,2,NULL),(1497,134,72,2,NULL),(1498,90,80,2,NULL),(1499,97,80,2,NULL),(1500,112,80,2,NULL),(1501,134,80,2,NULL),(1502,90,81,2,NULL),(1503,97,81,2,NULL),(1504,112,81,2,NULL),(1505,134,81,2,NULL),(1506,90,82,2,NULL),(1507,97,82,2,NULL),(1508,112,82,2,NULL),(1509,134,82,2,NULL),(1510,90,83,2,NULL),(1511,97,83,2,NULL),(1512,112,83,2,NULL),(1513,134,83,2,NULL),(1514,90,84,2,NULL),(1515,97,84,2,NULL),(1516,112,84,2,NULL),(1517,134,84,2,NULL),(1518,90,85,2,NULL),(1519,97,85,2,NULL),(1520,112,85,2,NULL),(1521,134,85,2,NULL),(1522,124,66,2,NULL),(1523,144,66,2,NULL),(1524,123,71,2,NULL),(1525,148,71,2,NULL),(1526,123,72,2,NULL),(1527,148,72,2,NULL),(1528,123,80,2,NULL),(1529,148,80,2,NULL),(1530,123,81,2,NULL),(1531,148,81,2,NULL),(1532,123,82,2,NULL),(1533,148,82,2,NULL),(1534,123,83,2,NULL),(1535,148,83,2,NULL),(1536,123,84,2,NULL),(1537,148,84,2,NULL),(1538,123,85,2,NULL),(1539,148,85,2,NULL),(1540,99,72,2,NULL),(1541,119,72,2,NULL),(1542,129,72,2,NULL),(1543,130,72,2,NULL),(1544,131,72,2,NULL),(1545,132,72,2,NULL),(1546,133,72,2,NULL),(1547,99,80,2,NULL),(1548,119,80,2,NULL),(1549,129,80,2,NULL),(1550,130,80,2,NULL),(1551,131,80,2,NULL),(1552,132,80,2,NULL),(1553,133,80,2,NULL),(1554,99,81,2,NULL),(1555,119,81,2,NULL),(1556,129,81,2,NULL),(1557,130,81,2,NULL),(1558,131,81,2,NULL),(1559,132,81,2,NULL),(1560,133,81,2,NULL),(1561,99,82,2,NULL),(1562,119,82,2,NULL),(1563,129,82,2,NULL),(1564,130,82,2,NULL),(1565,131,82,2,NULL),(1566,132,82,2,NULL),(1567,133,82,2,NULL),(1568,99,83,2,NULL),(1569,119,83,2,NULL),(1570,129,83,2,NULL),(1571,130,83,2,NULL),(1572,131,83,2,NULL),(1573,132,83,2,NULL),(1574,133,83,2,NULL),(1575,99,84,2,NULL),(1576,119,84,2,NULL),(1577,129,84,2,NULL),(1578,130,84,2,NULL),(1579,131,84,2,NULL),(1580,132,84,2,NULL),(1581,133,84,2,NULL),(1582,99,85,2,NULL),(1583,119,85,2,NULL),(1584,129,85,2,NULL),(1585,130,85,2,NULL),(1586,131,85,2,NULL),(1587,132,85,2,NULL),(1588,133,85,2,NULL),(1589,113,55,2,NULL),(1590,113,70,2,NULL),(1591,142,55,2,NULL),(1592,142,70,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (8,'android.permission.ACCESS_COARSE_LOCATION'),(17,'android.permission.ACCESS_FINE_LOCATION'),(18,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(15,'android.permission.BLUETOOTH'),(20,'android.permission.CALL_PHONE'),(16,'android.permission.CHANGE_WIFI_STATE'),(25,'android.permission.DELETE_PACKAGES'),(27,'android.permission.DISABLE_KEYGUARD'),(26,'android.permission.GET_TASKS'),(24,'android.permission.INSTALL_PACKAGES'),(14,'android.permission.INTERNET'),(22,'android.permission.MODIFY_AUDIO_SETTINGS'),(13,'android.permission.MODIFY_PHONE_STATE'),(3,'android.permission.PROCESS_OUTGOING_CALLS'),(29,'android.permission.READ_CALENDAR'),(9,'android.permission.READ_CONTACTS'),(10,'android.permission.READ_PHONE_STATE'),(11,'android.permission.READ_SMS'),(12,'android.permission.RECEIVE_BOOT_COMPLETED'),(6,'android.permission.RECEIVE_MMS'),(7,'android.permission.RECEIVE_SMS'),(1,'android.permission.RECEIVE_WAP_PUSH'),(2,'android.permission.SEND_SMS'),(32,'android.permission.SYSTEM_ALERT_WINDOW'),(30,'android.permission.VIBRATE'),(19,'android.permission.WAKE_LOCK'),(28,'android.permission.WRITE_CALENDAR'),(21,'android.permission.WRITE_CONTACTS'),(23,'android.permission.WRITE_EXTERNAL_STORAGE'),(33,'android.permission.WRITE_SETTINGS'),(4,'android.permission.WRITE_SMS'),(31,'com.android.launcher.permission.INSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'content://com.android.calendar/calendars',NULL,NULL,NULL),(3,NULL,NULL,'content://calendar/calendars',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'content://calendar/snooze_alerts/(.*)',NULL,NULL,NULL),(6,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(9,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'content://com.android.calendar/calendars',NULL,NULL,NULL),(12,NULL,NULL,'content://calendar/calendars',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(17,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(18,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(19,NULL,NULL,'content://media',NULL,NULL,NULL),(20,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(21,NULL,NULL,'content://media/internal/audio/media',NULL,NULL,NULL),(22,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(23,NULL,NULL,'content://media/external/audio/genres',NULL,NULL,NULL),(24,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(25,NULL,NULL,'content://media/internal/audio/media',NULL,NULL,NULL),(26,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(27,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(28,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(29,NULL,NULL,'content://com.android.contacts/data/emails',NULL,NULL,NULL),(30,NULL,NULL,'(.*)',NULL,NULL,NULL),(31,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(32,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(33,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(34,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(35,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,20,1),(2,23,2),(3,23,3),(4,53,7),(5,56,10),(6,57,11),(7,57,12),(8,79,13),(9,81,14),(10,116,17),(11,120,18),(12,124,19),(13,131,21),(14,140,22),(15,140,23),(16,148,24),(17,152,25),(18,158,26),(19,161,27),(20,162,28),(21,165,29),(22,170,31),(23,172,32),(24,178,33),(25,180,34),(26,191,35);
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,2,1),(2,2,2),(3,2,3),(4,2,4),(5,2,5),(6,2,6),(7,2,7),(8,2,8),(9,2,9),(10,2,10),(11,2,11),(12,2,12),(13,2,13),(14,2,14),(15,2,15),(16,2,17),(17,2,16),(18,2,19),(19,2,18),(20,2,21),(21,2,20),(22,2,22),(23,3,17),(24,3,20),(25,3,23),(26,3,8),(27,3,9),(28,3,10),(29,3,11),(30,3,14),(31,4,2),(32,4,4),(33,4,6),(34,4,7),(35,4,10),(36,4,12),(37,4,14),(38,4,19),(39,4,18),(40,4,25),(41,4,24),(42,4,27),(43,4,26),(44,4,29),(45,4,28),(46,4,30),(47,5,32),(48,5,2),(49,5,33),(50,5,4),(51,5,6),(52,5,7),(53,5,10),(54,5,12),(55,5,14),(56,5,15),(57,5,19),(58,5,18),(59,5,23),(60,5,25),(61,5,24),(62,5,31);
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

-- Dump completed on 2015-10-12  3:30:15
