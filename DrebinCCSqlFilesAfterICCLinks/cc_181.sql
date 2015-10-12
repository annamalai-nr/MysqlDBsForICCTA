-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_181
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (29,'(.*)'),(5,'android.appwidget.action.APPWIDGET_UPDATE'),(21,'android.intent.action.ANSWER'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(2,'android.intent.action.BOOT_COMPLETED'),(19,'android.intent.action.DIAL'),(12,'android.intent.action.DOCK_EVENT'),(1,'android.intent.action.MAIN'),(30,'android.intent.action.MEDIA_MOUNTED'),(25,'android.intent.action.MEDIA_SCANNER_FINISHED'),(24,'android.intent.action.MEDIA_SCANNER_STARTED'),(7,'android.intent.action.PACKAGE_ADDED'),(42,'android.intent.action.PICK'),(17,'android.intent.action.SCREEN_OFF'),(28,'android.intent.action.SCREEN_ON'),(20,'android.intent.action.SEND'),(22,'android.intent.action.SENDTO'),(3,'android.intent.action.SIG_STR'),(40,'android.intent.action.USE_TTS'),(18,'android.intent.action.VIEW'),(26,'android.intent.action.WEB_SEARCH'),(27,'android.net.conn.CONNECTIVITY_CHANGE'),(11,'android.provider.Telephony.SMS_RECEIVED'),(8,'android.provider.Telephony.WAP_PUSH_RECEIVED'),(41,'android.speech.action.RECOGNIZE_SPEECH'),(35,'android.speech.tts.engine.CHECK_TTS_DATA'),(43,'com.android.contacts.action.SHOW_OR_CREATE_CONTACT'),(9,'com.android.mms.transaction.MESSAGE_SENT'),(16,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(34,'com.mogo.currentTime'),(31,'com.mogo.duration'),(23,'com.mogo.list'),(6,'com.mogo.media.MUSIC_SERVICE'),(32,'com.mogo.next'),(36,'com.mogo.smspopup.ACTION_DELETE_MESSAGE'),(38,'com.mogo.smspopup.ACTION_MARK_MESSAGE_READ'),(39,'com.mogo.smspopup.ACTION_QUICKREPLY'),(37,'com.mogo.smspopup.ACTION_UPDATE_NOTIFICATION'),(13,'com.mogo.smspopup.DISABLE'),(14,'com.mogo.smspopup.DONATED'),(15,'com.mogo.smspopup.ENABLE'),(10,'com.mogo.smspopup.MESSAGE_RECEIVED'),(33,'com.mogo.update');
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
INSERT INTO `Applications` VALUES (1,'android.atools.bootstartsetting',6),(2,'pt.com.iozhu.milestoneoverclock',6),(3,'com.ps.llk',34),(4,'com.safetest.compass',10),(5,'com.mogo.media',2),(6,'com.gp.solitaire',451),(7,'com.mogo.smspopup',4);
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
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.BROWSABLE'),(2,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(4,'android.intent.category.TTS');
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
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'android.atools.bootstartsetting.BootStartSettingActivity'),(2,1,'android.atools.bootstartsetting.AppSettingActivity'),(3,1,'com.atools.battery.ShowTips'),(4,1,'com.atools.battery.UpdateService'),(5,1,'android.atools.bootstartsetting.BootReceive'),(6,2,'pt.com.iozhu.milestoneoverclock.MainActivity'),(7,1,'com.atools.battery.Receiver'),(8,2,'ad.imadpush.com.poster.PosterInfoActivity'),(9,2,'pt.com.iozhu.milestoneoverclock.AutoloadService'),(10,2,'com.airpuh.ad.UpdateCheck'),(11,2,'ad.imadpush.com.poster.AlarmService'),(12,2,'pt.com.iozhu.milestoneoverclock.BootCompletedBroadcastReceiver'),(13,2,'ad.imadpush.com.poster.ReceiverAlarm'),(14,3,'com.ps.llk.MainActivity'),(15,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(16,3,'com.google.update.Dialog'),(17,3,'com.waps.OffersWebView'),(18,3,'com.google.update.UpdateService'),(19,3,'com.google.update.Receiver'),(20,4,'com.safetest.compass.CompassActivity'),(21,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(22,4,'com.safetest.compass.ShowTips'),(23,4,'com.safetest.compass.widget.CompassService'),(24,4,'com.safetest.compass.UpdateService'),(25,4,'com.safetest.compass.widget.CompassWidget'),(26,4,'com.safetest.compass.Receiver'),(27,5,'com.mogo.media.ListActivity'),(28,5,'com.mogo.media.PlayActivity'),(29,5,'com.mogo.media.MainActivity'),(30,5,'com.mogo.media.ClicksActivity'),(31,5,'com.mogo.media.RecentlyActivity'),(32,5,'com.mogo.media.MusicActivity'),(33,5,'com.mogo.media.TestMain'),(34,5,'com.mogo.media.ArtistList'),(35,5,'com.mogo.media.ArtistActivity'),(36,5,'com.mogo.media.AlbumList'),(37,5,'com.mogo.media.AlbumActivity'),(38,5,'com.eguan.state.Dialog'),(39,6,'com.gp.solitaire.Solitaire'),(40,5,'com.google.ads.AdActivity'),(41,5,'com.eguan.state.StateService'),(42,1,'com.atools.battery.ShowTips$1'),(43,6,'com.google.update.Dialog'),(44,5,'com.mogo.media.MusicService'),(45,6,'cn.domob.android.ads.DomobActivity'),(46,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(47,5,'com.eguan.state.Receiver'),(48,6,'com.google.update.UpdateService'),(49,6,'com.google.update.Receiver'),(50,7,'com.mogo.smspopup.SmsPopupConfigActivity'),(51,7,'com.mogo.smspopup.ConfigContactsActivity'),(52,7,'com.mogo.smspopup.ConfigPerContactActivity'),(53,2,'ad.imadpush.com.poster.PosterInfoActivity$PackageReceiver'),(54,7,'com.mogo.smspopup.ConfigPresetMessagesActivity'),(55,7,'com.mogo.smspopup.SmsPopupActivity'),(56,7,'com.google.ads.AdActivity'),(57,7,'com.vpon.adon.android.WebInApp'),(58,7,'com.adwo.adsdk.AdwoSplashAdActivity'),(59,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(60,7,'com.waps.OffersWebView'),(61,7,'com.google.update.Dialog'),(62,7,'com.mogo.smspopup.SmsPopupUtilsService'),(63,7,'com.mogo.smspopup.SmsReceiverService'),(64,7,'com.mogo.smspopup.ReminderReceiverService'),(65,7,'com.mogo.smspopup.SmsMonitorService'),(66,7,'com.google.update.UpdateService'),(67,7,'com.mogo.smspopup.SmsReceiver'),(68,7,'com.mogo.smspopup.ExternalEventReceiver'),(69,7,'com.mogo.smspopup.ClearAllReceiver'),(70,7,'com.mogo.smspopup.ReminderReceiver'),(71,7,'com.google.update.Receiver'),(72,3,'com.google.update.Dialog$1'),(73,3,'com.waps.q'),(74,3,'com.google.update.Dialog$2'),(75,4,'com.safetest.compass.widget.CompassService$1'),(76,4,'com.safetest.compass.MyLocationManager$ConnectivityBroadcastReceiver'),(77,4,'com.adwo.adsdk.D'),(78,3,'com.waps.o'),(79,4,'android.appwidget.AppWidgetProvider'),(80,3,'com.waps.aa'),(81,5,'com.eguan.state.StateService$MyThread'),(82,4,'com.adwo.adsdk.g'),(83,5,'u$b'),(84,5,'com.mogo.media.MusicActivity$1'),(85,3,'com.waps.x'),(86,5,'com.mogo.media.TestMain$1'),(87,5,'com.mogo.media.ScanSdReceiver'),(88,5,'com.mogo.media.MusicService$3'),(89,3,'com.waps.y'),(90,5,'com.mogo.media.MainActivity$1'),(91,3,'com.google.update.UpdateService$AA'),(92,6,'com.google.update.Dialog$2'),(93,6,'cn.domob.android.ads.i$6'),(94,5,'com.eguan.state.Dialog$1'),(95,5,'com.mogo.media.ClicksActivity$ListItemClickListener'),(96,6,'cn.domob.android.ads.DomobAdEngine$2'),(97,6,'com.ju6.a'),(98,6,'com.google.update.Dialog$1'),(99,6,'com.google.update.UpdateService$MyThread'),(100,6,'cn.domob.android.ads.DomobAdManager'),(101,6,'cn.domob.android.ads.DomobActionReceiver'),(102,6,'cn.domob.android.ads.i'),(103,4,'com.safetest.compass.ShowTips$1'),(104,5,'com.mogo.media.RecentlyActivity$ListItemClickListener'),(105,5,'com.mogo.media.TestMain$AlbumsItemClickListener'),(106,5,'com.mogo.media.TestMain$ArtistsItemClickListener'),(107,7,'com.waps.m'),(108,7,'com.mogo.smspopup.SmsPopupActivity$18'),(109,7,'com.mogo.smspopup.SmsPopupUtils'),(110,7,'com.waps.k'),(111,7,'com.mogo.smspopup.SmsPopupActivity$20'),(112,7,'com.google.update.UpdateService$MyThread'),(113,7,'com.google.update.Dialog$1'),(114,7,'com.ju6.a'),(115,7,'com.mogo.smspopup.ConfigContactsActivity$SynchronizeContactNames'),(116,7,'com.google.update.Dialog$2'),(117,7,'com.google.tts.PrefsActivity$2'),(118,7,'com.google.tts.TTS'),(119,7,'com.mogo.smspopup.SmsPopupActivity$9$1'),(120,7,'com.mogo.smspopup.ConfigContactsActivity$1'),(121,7,'com.waps.AppConnect');
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
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,3,'MM'),(2,4,'SAFE_PID'),(3,4,'SAFE_START'),(4,8,'push'),(5,8,'notifyId'),(6,8,'userId'),(7,8,'dId'),(8,10,'MYAD_PID'),(9,6,'ad.imadpush.com'),(10,11,'ad.imadpush.com'),(11,14,'WAPS_PID'),(12,17,'WAPS_PID'),(13,16,'MSG'),(14,17,'Notify_Url_Params'),(15,17,'CLIENT_PACKAGE'),(16,15,'shouldShowTitlebar'),(17,14,'APP_ID'),(18,17,'APP_ID'),(19,15,'shouldEnableBottomBar'),(20,15,'shouldShowBottomBar'),(21,14,'WAPS_ID'),(22,17,'WAPS_ID'),(23,17,'SHWO_FLAG'),(24,17,'ACTIVITY_FLAG'),(25,14,'DEVICE_ID'),(26,17,'DEVICE_ID'),(27,15,'url'),(28,14,'CLIENT_PACKAGE'),(29,17,'Offers_URL'),(30,17,'offers_webview_tag'),(31,17,'USER_ID'),(32,16,'TYPEdsada'),(33,15,'overlayTransition'),(34,24,'SAFE_START'),(35,18,'ST_MY_PID'),(36,17,'Notify_Id'),(37,21,'transitionTime'),(38,17,'isFinshClose'),(39,15,'overlayTitle'),(40,17,'URL_PARAMS'),(41,17,'UrlPath'),(42,15,'shouldResizeOverlay'),(43,15,'shouldMakeOverlayTransparent'),(44,18,'ST_START_DELAY'),(45,17,'URL'),(46,15,'transitionTime'),(47,40,'action'),(48,32,'_ids'),(49,37,'albums'),(50,47,'DOMOB_TEST_MODE'),(51,39,'DOMOB_TEST_MODE'),(52,45,'DOMOB_TEST_MODE'),(53,44,'appName'),(54,42,'TYPEdsada'),(55,45,'overlayTransition'),(56,44,'actType'),(57,35,'artist'),(58,45,'shouldEnableBottomBar'),(59,43,'list'),(60,43,'progress'),(61,42,'MSG'),(62,32,'position'),(63,47,'ST_MY_PID'),(64,45,'shouldMakeOverlayTransparent'),(65,47,'DOMOB_PID'),(66,39,'DOMOB_PID'),(67,45,'DOMOB_PID'),(68,45,'shouldShowBottomBar'),(69,45,'shouldResizeOverlay'),(70,43,'_ids'),(71,44,'appId'),(72,47,'ST_START_DELAY'),(73,45,'transitionTime'),(74,47,'DOMOB_ALLOW_LOCATION'),(75,21,'overlayTransition'),(76,39,'DOMOB_ALLOW_LOCATION'),(77,21,'shouldMakeOverlayTransparent'),(78,45,'DOMOB_ALLOW_LOCATION'),(79,24,'SAFE_PID'),(80,21,'shouldResizeOverlay'),(81,21,'shouldEnableBottomBar'),(82,21,'shouldShowBottomBar'),(83,21,'url'),(84,45,'url'),(85,45,'overlayTitle'),(86,21,'overlayTitle'),(87,45,'shouldShowTitlebar'),(88,21,'shouldShowTitlebar'),(89,22,'MM'),(90,38,'TYPEdsada'),(91,40,'params'),(92,32,'_titles'),(93,38,'MSG'),(94,40,'com.google.ads.AdOpener'),(95,59,'Offers_URL'),(96,59,'isFinshClose'),(97,49,'CLIENT_PACKAGE'),(98,53,'CLIENT_PACKAGE'),(99,54,'com.mogo.smspopup.EXTRAS_CONTACT_LOOKUP'),(100,54,'com.mogo.smspopup.EXTRAS_MESSAGE_BODY'),(101,60,'MSG'),(102,49,'WAPS_ID'),(103,53,'WAPS_ID'),(104,58,'overlayTransition'),(105,54,'com.mogo.smspopup.EXTRAS_FROM_ADDRESS'),(106,65,'ST_START_DELAY'),(107,54,'android.speech.extra.RESULTS'),(108,49,'WAPS_PID'),(109,53,'WAPS_PID'),(110,54,'com.mogo.smspopup.EXTRAS_REMINDER_COUNT'),(111,54,'com.mogo.smspopup.EXTRAS_TIMESTAMP'),(112,55,'com.google.ads.AdOpener'),(113,59,'URL'),(114,54,'com.mogo.smspopup.EXTRAS_MESSAGE_ID'),(115,54,'com.mogo.smspopup.EXTRAS_NOTIFY'),(116,54,'com.mogo.smspopup.EXTRAS_MESSAGE_TYPE'),(117,59,'USER_ID'),(118,59,'URL_PARAMS'),(119,58,'shouldEnableBottomBar'),(120,54,'com.mogo.smspopup.EXTRAS_THREAD_ID'),(121,58,'url'),(122,58,'overlayTitle'),(123,54,'com.mogo.smspopup.EXTRAS_CONTACT_NAME'),(124,56,'adWidth'),(125,57,'Adwo_PID'),(126,54,'com.mogo.smspopup.EXTRAS_EMAIL_GATEWAY'),(127,57,'isTestMode'),(128,60,'TYPEdsada'),(129,55,'params'),(130,58,'shouldShowBottomBar'),(131,58,'shouldResizeOverlay'),(132,56,'url'),(133,65,'ST_MY_PID'),(134,54,'com.mogo.smspopup.EXTRAS_CONTACT_ID'),(135,54,'com.mogo.smspopup.EXTRAS_UNREAD_COUNT'),(136,58,'shouldMakeOverlayTransparent'),(137,59,'CLIENT_PACKAGE'),(138,58,'shouldShowTitlebar'),(139,49,'APP_ID'),(140,53,'APP_ID'),(141,58,'transitionTime'),(142,55,'action'),(143,49,'DEVICE_ID'),(144,53,'DEVICE_ID');
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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'s',0,NULL,NULL),(5,5,'r',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'r',1,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'s',0,NULL,NULL),(10,10,'s',0,NULL,NULL),(11,11,'s',0,NULL,NULL),(12,12,'r',1,NULL,NULL),(13,13,'r',0,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'s',0,NULL,NULL),(19,19,'r',1,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'s',0,NULL,NULL),(24,24,'s',0,NULL,NULL),(25,25,'r',1,NULL,NULL),(26,26,'r',1,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',1,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'s',0,NULL,NULL),(42,43,'a',0,NULL,NULL),(43,44,'s',1,NULL,NULL),(44,45,'a',0,NULL,NULL),(45,46,'a',0,NULL,NULL),(46,47,'r',1,NULL,NULL),(47,48,'s',0,NULL,NULL),(48,49,'r',1,NULL,NULL),(49,50,'a',1,NULL,NULL),(50,51,'a',0,NULL,NULL),(51,52,'a',0,NULL,NULL),(52,53,'r',1,NULL,NULL),(53,54,'a',0,NULL,NULL),(54,55,'a',0,NULL,NULL),(55,56,'a',0,NULL,NULL),(56,57,'a',0,NULL,NULL),(57,58,'a',0,NULL,NULL),(58,59,'a',0,NULL,NULL),(59,60,'a',0,NULL,NULL),(60,61,'a',0,NULL,NULL),(61,62,'s',0,NULL,NULL),(62,63,'s',0,NULL,NULL),(63,64,'s',0,NULL,NULL),(64,65,'s',0,NULL,NULL),(65,66,'s',0,NULL,NULL),(66,67,'r',1,NULL,NULL),(67,68,'r',1,NULL,NULL),(68,69,'r',0,NULL,NULL),(69,70,'r',0,NULL,NULL),(70,71,'r',1,NULL,NULL),(71,73,'r',1,NULL,NULL),(72,75,'r',1,NULL,NULL),(73,76,'r',1,NULL,NULL),(74,77,'r',1,NULL,NULL),(75,79,'r',1,NULL,NULL),(76,83,'r',1,NULL,NULL),(77,84,'r',1,NULL,NULL),(78,86,'r',1,NULL,NULL),(79,87,'r',1,NULL,NULL),(80,88,'r',1,NULL,NULL),(81,101,'r',1,NULL,NULL),(82,107,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,7),(2,2,3),(3,3,13),(4,4,12),(5,5,6),(6,6,17),(7,7,16),(8,8,19),(9,9,16),(10,10,25),(11,11,18),(12,12,17),(13,13,17),(14,14,41),(15,15,20),(16,16,17),(17,17,17),(18,18,18),(19,19,37),(20,20,17),(21,21,32),(22,22,30),(23,23,33),(24,24,17),(25,25,29),(26,26,43),(27,27,18),(28,28,46),(29,29,42),(30,30,29),(31,31,47),(32,31,45),(33,31,39),(34,32,38),(35,33,33),(36,34,30),(37,35,39),(38,35,45),(39,35,47),(40,36,48),(41,37,32),(42,38,47),(43,39,30),(44,40,35),(45,41,47),(46,42,41),(47,43,47),(48,44,43),(49,45,42),(50,46,33),(51,47,35),(52,48,32),(53,49,47),(54,50,32),(55,51,26),(56,52,31),(57,53,39),(58,53,45),(59,53,47),(60,54,35),(61,55,40),(62,56,47),(63,56,45),(64,56,39),(65,57,22),(66,58,31),(67,59,32),(68,60,33),(69,61,37),(70,62,29),(71,63,37),(72,64,32),(73,65,33),(74,66,29),(75,67,32),(76,68,43),(77,69,41),(78,70,31),(79,71,32),(80,72,32),(81,73,32),(82,74,43),(83,75,33),(84,76,33),(85,77,54),(86,78,54),(87,79,65),(88,80,59),(89,81,51),(90,82,54),(91,83,50),(92,84,54),(93,85,65),(94,86,50),(95,87,60),(96,88,65),(97,89,65),(98,90,49),(99,90,67),(100,91,66),(101,92,50),(102,93,50),(103,94,54),(104,95,60),(105,96,55),(106,97,51),(107,98,54),(108,99,54),(109,100,50),(110,101,69),(111,102,64),(112,103,54),(113,104,54),(114,105,50),(115,106,54),(116,107,53),(117,108,50),(118,109,54),(119,110,70),(120,111,54),(121,112,54);
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
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,7,'<com.atools.battery.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(2,42,'<com.atools.battery.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(3,13,'<ad.imadpush.com.poster.ReceiverAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(4,12,'<pt.com.iozhu.milestoneoverclock.BootCompletedBroadcastReceiver: void onReceive(android.content.Context,android.content.Intent)>',10,'s',NULL),(5,6,'<pt.com.iozhu.milestoneoverclock.MainActivity: void onCreate(android.os.Bundle)>',14,'s',NULL),(6,17,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',41,'a',NULL),(7,72,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(8,19,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(9,74,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(10,23,'<com.safetest.compass.widget.CompassService: void start(android.content.Context)>',4,'s',NULL),(11,18,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(12,78,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(13,80,'<com.waps.aa: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(14,81,'<com.eguan.state.StateService$MyThread: void run()>',39,'a',NULL),(15,82,'<com.adwo.adsdk.g: void run()>',59,'a',NULL),(16,17,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',356,'a',NULL),(17,85,'<com.waps.x: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(18,18,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(19,37,'<com.mogo.media.AlbumActivity: void deleteMusic(int)>',10,'p',NULL),(20,89,'<com.waps.y: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(21,32,'<com.mogo.media.MusicActivity: void play()>',8,'s',NULL),(22,30,'<com.mogo.media.ClicksActivity: boolean onKeyDown(int,android.view.KeyEvent)>',7,'a',NULL),(23,33,'<com.mogo.media.TestMain: void deleteMusic(int)>',10,'p',NULL),(24,17,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(25,90,'<com.mogo.media.MainActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(26,44,'<com.mogo.media.MusicService: void onStart(android.content.Intent,int)>',82,'r',NULL),(27,91,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(28,47,'<com.eguan.state.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(29,92,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(30,90,'<com.mogo.media.MainActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',48,'a',NULL),(31,93,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(32,94,'<com.eguan.state.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(33,33,'<com.mogo.media.TestMain: void onCreate(android.os.Bundle)>',24,'s',NULL),(34,95,'<com.mogo.media.ClicksActivity$ListItemClickListener: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',16,'a',NULL),(35,96,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(36,49,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(37,32,'<com.mogo.media.MusicActivity: void stop()>',7,'s',NULL),(38,48,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(39,30,'<com.mogo.media.ClicksActivity: void onCreate(android.os.Bundle)>',48,'p',NULL),(40,35,'<com.mogo.media.ArtistActivity: void playMusic(int)>',9,'a',NULL),(41,48,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(42,41,'<com.eguan.state.StateService: void getPermission2()>',78,'a',NULL),(43,97,'<com.ju6.a: boolean b()>',178,'p',NULL),(44,44,'<com.mogo.media.MusicService: void onCompletion(android.media.MediaPlayer)>',46,'r',NULL),(45,98,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(46,33,'<com.mogo.media.TestMain: boolean onKeyDown(int,android.view.KeyEvent)>',11,'a',NULL),(47,35,'<com.mogo.media.ArtistActivity: void deleteMusic(int)>',10,'p',NULL),(48,32,'<com.mogo.media.MusicActivity: boolean onKeyDown(int,android.view.KeyEvent)>',7,'a',NULL),(49,99,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(50,32,'<com.mogo.media.MusicActivity: void seekbar_change(int)>',7,'s',NULL),(51,26,'<com.safetest.compass.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(52,31,'<com.mogo.media.RecentlyActivity: boolean onKeyDown(int,android.view.KeyEvent)>',7,'a',NULL),(53,100,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(54,35,'<com.mogo.media.ArtistActivity: void setListData()>',16,'p',NULL),(55,40,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(56,102,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(57,103,'<com.safetest.compass.ShowTips$1: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(58,104,'<com.mogo.media.RecentlyActivity$ListItemClickListener: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',16,'a',NULL),(59,32,'<com.mogo.media.MusicActivity: void nextOne()>',10,'s',NULL),(60,105,'<com.mogo.media.TestMain$AlbumsItemClickListener: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',14,'a',NULL),(61,37,'<com.mogo.media.AlbumActivity: void playMusic(int)>',9,'a',NULL),(62,29,'<com.mogo.media.MainActivity: void scanSdCard()>',19,'r',NULL),(63,37,'<com.mogo.media.AlbumActivity: void setListData()>',16,'p',NULL),(64,32,'<com.mogo.media.MusicActivity: void forward()>',5,'s',NULL),(65,33,'<com.mogo.media.TestMain: void playMusic(int)>',9,'a',NULL),(66,90,'<com.mogo.media.MainActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',33,'a',NULL),(67,32,'<com.mogo.media.MusicActivity: void rewind()>',5,'s',NULL),(68,44,'<com.mogo.media.MusicService: void setup()>',18,'r',NULL),(69,41,'<com.eguan.state.StateService: int setUsbEnabled()>',34,'a',NULL),(70,31,'<com.mogo.media.RecentlyActivity: void onCreate(android.os.Bundle)>',48,'p',NULL),(71,32,'<com.mogo.media.MusicActivity: void refreshView()>',18,'p',NULL),(72,32,'<com.mogo.media.MusicActivity: void pause()>',8,'s',NULL),(73,32,'<com.mogo.media.MusicActivity: void loadClip()>',15,'s',NULL),(74,44,'<com.mogo.media.MusicService: void onCompletion(android.media.MediaPlayer)>',52,'r',NULL),(75,33,'<com.mogo.media.TestMain: void setListData()>',10,'p',NULL),(76,106,'<com.mogo.media.TestMain$ArtistsItemClickListener: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',14,'a',NULL),(77,108,'<com.mogo.smspopup.SmsPopupActivity$18: void LaunchOnKeyguardExitSuccess()>',8,'a',0),(78,109,'<com.mogo.smspopup.SmsPopupUtils: com.mogo.smspopup.SmsPopupUtils$ContactIdentification getPersonIdFromEmail(android.content.Context,java.lang.String)>',13,'p',NULL),(79,66,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(80,110,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(81,109,'<com.mogo.smspopup.SmsPopupUtils: java.lang.String getPersonName(android.content.Context,java.lang.String,java.lang.String)>',14,'p',NULL),(82,111,'<com.mogo.smspopup.SmsPopupActivity$20: void LaunchOnKeyguardExitSuccess()>',4,'a',NULL),(83,51,'<com.mogo.smspopup.ConfigContactsActivity: void onCreate(android.os.Bundle)>',10,'p',NULL),(84,109,'<com.mogo.smspopup.SmsPopupUtils: com.mogo.smspopup.SmsPopupUtils$ContactIdentification getPersonIdFromPhoneNumber(android.content.Context,java.lang.String)>',12,'p',NULL),(85,112,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(86,51,'<com.mogo.smspopup.ConfigContactsActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',7,'a',NULL),(87,113,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(88,114,'<com.ju6.a: boolean b()>',178,'p',NULL),(89,66,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(90,109,'<com.mogo.smspopup.SmsPopupUtils: void disableOtherSMSPopup(android.content.Context)>',4,'r',NULL),(91,63,'<com.mogo.smspopup.SmsReceiverService: void beginStartingService(android.content.Context,android.content.Intent)>',15,'s',NULL),(92,115,'<com.mogo.smspopup.ConfigContactsActivity$SynchronizeContactNames: android.graphics.Bitmap doInBackground(java.lang.Object[])>',25,'p',NULL),(93,51,'<com.mogo.smspopup.ConfigContactsActivity: boolean onContextItemSelected(android.view.MenuItem)>',20,'a',NULL),(94,109,'<com.mogo.smspopup.SmsPopupUtils: java.util.ArrayList getUnreadMessages(android.content.Context,long)>',27,'p',NULL),(95,116,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(96,56,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(97,117,'<com.google.tts.PrefsActivity$2: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',11,'a',NULL),(98,118,'<com.google.tts.TTS: boolean dataFilesCheck()>',13,'a',NULL),(99,62,'<com.mogo.smspopup.SmsPopupUtilsService: void beginStartingService(android.content.Context,android.content.Intent)>',15,'s',NULL),(100,51,'<com.mogo.smspopup.ConfigContactsActivity: void onActivityResult(int,int,android.content.Intent)>',28,'a',NULL),(101,64,'<com.mogo.smspopup.ReminderReceiverService: void beginStartingService(android.content.Context,android.content.Intent)>',15,'s',NULL),(102,65,'<com.mogo.smspopup.SmsMonitorService: void registerSMSObserver()>',13,'p',NULL),(103,118,'<com.google.tts.TTS: void initTts()>',10,'s',NULL),(104,119,'<com.mogo.smspopup.SmsPopupActivity$9$1: void LaunchOnKeyguardExitSuccess()>',4,'a',NULL),(105,120,'<com.mogo.smspopup.ConfigContactsActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',8,'a',NULL),(106,65,'<com.mogo.smspopup.SmsMonitorService: void beginStartingService(android.content.Context)>',4,'s',NULL),(107,121,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(108,51,'<com.mogo.smspopup.ConfigContactsActivity: void selectContact()>',4,'a',NULL),(109,55,'<com.mogo.smspopup.SmsPopupActivity: void viewContact()>',12,'a',NULL),(110,71,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(111,109,'<com.mogo.smspopup.SmsPopupUtils: long findMessageId(android.content.Context,long,long,java.lang.String,int)>',31,'p',NULL),(112,109,'<com.mogo.smspopup.SmsPopupUtils: long findThreadIdFromAddress(android.content.Context,java.lang.String)>',16,'p',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,1),(2,3,1),(3,7,1),(4,8,1),(5,9,1),(6,10,1),(7,13,16),(8,16,18),(9,18,1),(10,19,19),(11,20,1),(12,21,20),(13,23,22),(14,24,18),(15,25,18),(16,26,22),(17,28,20),(18,30,20),(19,32,6),(20,33,18),(21,35,18),(22,37,19),(23,38,18),(24,41,1),(25,43,18),(26,44,1),(27,45,18),(28,46,23),(29,47,22),(30,48,1),(31,49,20),(32,51,16),(33,52,1),(34,53,20),(35,54,20),(36,56,18),(37,58,20),(38,60,18),(39,61,16),(40,62,6),(41,63,18),(42,64,22),(43,65,18),(44,66,18),(45,67,20),(46,68,18),(47,69,18),(48,70,18),(49,74,20),(50,75,6),(51,78,18),(52,81,22),(53,83,18),(54,85,26),(55,87,18),(56,88,23),(57,89,26),(58,90,20),(59,91,1),(60,93,18),(61,94,1),(62,95,19),(63,97,1),(64,98,6),(65,100,1),(66,102,29),(67,103,18),(68,104,18),(69,105,1),(70,106,29),(71,107,1),(72,109,6),(73,112,30),(74,113,6),(75,117,6),(76,118,31),(77,121,6),(78,122,6),(79,123,33),(80,127,18),(81,128,1),(82,129,1),(83,130,1),(84,132,1),(85,133,1),(86,136,13),(87,139,16),(88,140,29),(89,141,18),(90,142,29),(91,143,35),(92,145,36),(93,146,37),(94,147,38),(95,148,37),(96,149,39),(97,152,40),(98,153,41),(99,157,42),(100,158,42),(101,159,43),(102,160,43);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,2,1),(2,3,2),(3,7,1),(4,8,2),(5,9,1),(6,10,2),(7,18,1),(8,20,2),(9,41,1),(10,44,2),(11,48,1),(12,52,2),(13,91,1),(14,94,2),(15,97,1),(16,100,2),(17,102,3),(18,103,3),(19,105,1),(20,106,3),(21,107,2),(22,129,1),(23,130,2),(24,132,1),(25,133,2),(26,140,3),(27,141,3),(28,142,3),(29,152,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/atools/battery/UpdateService'),(2,4,'ad/imadpush/com/poster/AlarmService'),(3,5,'pt/com/iozhu/milestoneoverclock/AutoloadService'),(4,6,'com/airpuh/ad/UpdateCheck'),(5,11,'com/google/update/UpdateService'),(6,12,'com/safetest/compass/widget/CompassService'),(7,14,'com/google/update/Dialog'),(8,15,'com/google/update/Dialog'),(9,17,'NULL-CONSTANT'),(10,22,'(.*)'),(11,27,'com/google/update/Dialog'),(12,29,'com/google/update/Dialog'),(13,31,'com/waps/OffersWebView'),(14,34,'com/mogo/media/MainActivity'),(15,35,'com.google.android.maps.MapsActivity'),(16,36,'com/waps/OffersWebView'),(17,42,'com/mogo/media/TestMain'),(18,50,'com/eguan/state/StateService'),(19,57,'com/mogo/media/ClicksActivity'),(20,69,'com/adwo/adsdk/AdwoAdBrowserActivity'),(21,70,'com.google.android.maps.MapsActivity'),(22,71,'com/mogo/media/MusicActivity'),(23,72,'com/google/update/UpdateService'),(24,76,'com/google/update/Dialog'),(25,77,'com/google/update/Dialog'),(26,78,'com.google.android.maps.MapsActivity'),(27,79,'com/mogo/media/MusicActivity'),(28,80,'com/google/update/Dialog'),(29,82,'com/google/update/Dialog'),(30,83,'com.google.android.maps.MapsActivity'),(31,84,'com/eguan/state/Dialog'),(32,86,'com/eguan/state/Dialog'),(33,92,'com/mogo/media/MainActivity'),(34,93,'com.google.android.maps.MapsActivity'),(35,96,'com/mogo/media/TestMain'),(36,99,'com/safetest/compass/UpdateService'),(37,101,'com/mogo/media/MainActivity'),(38,108,'com/mogo/media/MusicActivity'),(39,110,'com/mogo/media/AlbumActivity'),(40,111,'com/mogo/media/MusicActivity'),(41,114,'com/mogo/media/MusicActivity'),(42,116,'com/mogo/media/RecentlyActivity'),(43,119,'com/eguan/state/Dialog'),(44,120,'com/eguan/state/Dialog'),(45,124,'com/mogo/media/ArtistActivity'),(46,125,'com/google/update/Dialog'),(47,126,'com/google/update/Dialog'),(48,131,'com/mogo/smspopup/ConfigPerContactActivity'),(49,134,'com/google/update/Dialog'),(50,135,'com/google/update/Dialog'),(51,136,'com.mogo.smspopuppro.ExternalEventReceiver'),(52,137,'com/mogo/smspopup/SmsReceiverService'),(53,138,'com/mogo/smspopup/ConfigPerContactActivity'),(54,143,'com.svox.pico.CheckVoiceData'),(55,144,'com.google.tts.ConfigurationManager'),(56,145,'com/mogo/smspopup/SmsPopupUtilsService'),(57,146,'com/mogo/smspopup/SmsPopupUtilsService'),(58,147,'com/mogo/smspopup/SmsPopupUtilsService'),(59,148,'com/mogo/smspopup/SmsPopupUtilsService'),(60,149,'com/mogo/smspopup/SmsPopupUtilsService'),(61,150,'com/mogo/smspopup/ConfigPerContactActivity'),(62,151,'com/mogo/smspopup/ReminderReceiverService'),(63,154,'com/mogo/smspopup/ConfigPerContactActivity'),(64,155,'com/mogo/smspopup/SmsMonitorService'),(65,156,'com/waps/OffersWebView'),(66,161,'com/google/update/UpdateService');
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,16,1),(2,19,2),(3,21,3),(4,23,4),(5,24,5),(6,25,6),(7,26,7),(8,28,8),(9,30,10),(10,33,11),(11,37,13),(12,38,14),(13,43,15),(14,47,16),(15,49,17),(16,56,18),(17,60,19),(18,58,20),(19,63,21),(20,65,22),(21,66,23),(22,67,24),(23,68,25),(24,70,26),(25,74,28),(26,78,29),(27,81,30),(28,83,31),(29,87,33),(30,90,34),(31,93,35),(32,102,39),(33,104,40),(34,103,41),(35,106,42),(36,112,43),(37,127,50),(38,140,61),(39,141,62),(40,142,63),(41,157,65),(42,158,66),(43,159,67),(44,160,68);
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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,14,'TYPEdsada'),(2,15,'MSG'),(3,15,'TYPEdsada'),(4,21,'android.intent.extra.TEXT'),(5,21,'android.intent.extra.SUBJECT'),(6,21,'android.intent.extra.EMAIL'),(7,23,'sms_body'),(8,27,'TYPEdsada'),(9,29,'MSG'),(10,28,'android.intent.extra.EMAIL'),(11,29,'TYPEdsada'),(12,30,'android.intent.extra.TEXT'),(13,30,'android.intent.extra.EMAIL'),(14,31,'Notify_Url_Params'),(15,31,'UrlPath'),(16,32,'op'),(17,31,'ACTIVITY_FLAG'),(18,31,'isFinshClose'),(19,31,'offers_webview_tag'),(20,36,'UrlPath'),(21,36,'ACTIVITY_FLAG'),(22,36,'isFinshClose'),(23,36,'offers_webview_tag'),(24,46,'position'),(25,49,'android.intent.extra.EMAIL'),(26,54,'android.intent.extra.TEXT'),(27,54,'android.intent.extra.SUBJECT'),(28,54,'android.intent.extra.EMAIL'),(29,58,'android.intent.extra.TEXT'),(30,58,'android.intent.extra.SUBJECT'),(31,58,'android.intent.extra.EMAIL'),(32,62,'list'),(33,69,'url'),(34,71,'position'),(35,71,'_ids'),(36,71,'_titles'),(37,76,'MSG'),(38,74,'android.intent.extra.TEXT'),(39,75,'op'),(40,76,'TYPEdsada'),(41,74,'android.intent.extra.EMAIL'),(42,77,'TYPEdsada'),(43,79,'position'),(44,79,'_ids'),(45,79,'_titles'),(46,80,'MSG'),(47,80,'TYPEdsada'),(48,81,'sms_body'),(49,82,'TYPEdsada'),(50,84,'TYPEdsada'),(51,85,'query'),(52,86,'MSG'),(53,86,'TYPEdsada'),(54,88,'position'),(55,98,'progress'),(56,98,'op'),(57,108,'position'),(58,108,'_ids'),(59,108,'_titles'),(60,109,'length'),(61,110,'albums'),(62,111,'position'),(63,111,'_ids'),(64,111,'_titles'),(65,113,'op'),(66,114,'position'),(67,114,'_ids'),(68,114,'_titles'),(69,117,'op'),(70,118,'duration'),(71,119,'TYPEdsada'),(72,120,'MSG'),(73,120,'TYPEdsada'),(74,121,'op'),(75,122,'position'),(76,122,'_ids'),(77,123,'position'),(78,124,'artist'),(79,125,'TYPEdsada'),(80,126,'MSG'),(81,126,'TYPEdsada'),(82,131,'com.mogo.smspopuppro.EXTRA_CONTACT_ID'),(83,134,'TYPEdsada'),(84,135,'MSG'),(85,135,'TYPEdsada'),(86,137,'result'),(87,138,'com.mogo.smspopuppro.EXTRA_CONTACT_ID'),(88,145,'(.*)'),(89,147,'(.*)'),(90,148,'com.mogo.smspopup.EXTRAS_REPLYING'),(91,148,'(.*)'),(92,149,'(.*)'),(93,149,'com.mogo.smspopup.EXTRAS_QUICKREPLY'),(94,150,'com.mogo.smspopuppro.EXTRA_CONTACT_ID'),(95,153,'android.speech.extra.LANGUAGE_MODEL'),(96,154,'com.mogo.smspopuppro.EXTRA_CONTACT_ID'),(97,156,'USER_ID'),(98,156,'CLIENT_PACKAGE'),(99,156,'Offers_URL'),(100,156,'URL_PARAMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,2),(5,4,3),(6,4,4),(7,5,2),(8,6,1),(9,7,2),(10,7,3),(11,7,4),(12,8,1),(13,9,5),(14,10,3),(15,10,4),(16,10,2),(17,11,1),(18,12,1),(19,13,6),(20,14,2),(21,14,4),(22,14,3),(23,15,4),(24,15,2),(25,15,3),(26,16,1),(27,17,7),(28,18,8),(29,19,9),(30,20,10),(31,21,11),(32,22,12),(33,23,13),(34,24,14),(35,25,15),(36,26,4),(37,26,3),(38,26,2),(39,27,7),(40,28,17),(41,29,17),(42,30,17),(43,31,17),(44,32,17),(45,33,17),(46,34,21),(47,35,21),(48,36,21),(49,37,21),(50,38,21),(51,39,21),(52,40,23),(53,41,23),(54,42,23),(55,43,23),(56,44,23),(57,45,23),(58,46,25),(59,46,24),(60,47,27),(61,48,28),(62,49,28),(63,50,28),(64,51,7),(65,52,28),(66,53,28),(67,54,28),(68,55,34),(69,55,31),(70,55,33),(71,55,32),(72,56,34),(73,56,33),(74,56,32),(75,56,31),(76,57,33),(77,57,32),(78,57,34),(79,57,31),(80,58,34),(81,58,33),(82,58,32),(83,58,31),(84,59,32),(85,59,33),(86,59,31),(87,59,34),(88,60,31),(89,60,32),(90,60,33),(91,60,34),(92,61,7);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,6,1),(4,8,1),(5,11,1),(6,12,1),(7,16,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,17,'package',NULL,NULL,NULL,NULL,NULL),(2,18,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(3,27,'package',NULL,NULL,NULL,NULL,NULL),(4,46,'file',NULL,NULL,NULL,NULL,NULL),(5,51,'package',NULL,NULL,NULL,NULL,NULL),(6,61,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,16,'application','vnd.android.package-archive'),(2,24,'application','vnd.android.package-archive'),(3,25,'*','*'),(4,43,'(.*)','(.*)'),(5,54,'message','rfc882'),(6,56,'application','vnd.android.package-archive'),(7,60,'application','vnd.android.package-archive'),(8,63,'application','vnd.android.package-archive'),(9,65,'(.*)','(.*)'),(10,66,'application','vnd.android.package-archive'),(11,68,'application','vnd.android.package-archive'),(12,87,'*','*'),(13,106,'(.*)','(.*)'),(14,127,'application','vnd.android.package-archive'),(15,128,'vnd.android-dir','mms-sms'),(16,142,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'android.atools.bootstartsetting'),(2,2,'com.noshufou.android.su'),(3,3,'com.noshufou.android.su'),(4,4,'pt.com.iozhu.milestoneoverclock'),(5,5,'pt.com.iozhu.milestoneoverclock'),(6,6,'pt.com.iozhu.milestoneoverclock'),(7,7,'(.*)'),(8,8,'(.*)'),(9,9,'com.noshufou.android.su'),(10,10,'com.noshufou.android.su'),(11,11,'com.ps.llk'),(12,12,'com.safetest.compass'),(13,14,'com.ps.llk'),(14,15,'com.ps.llk'),(15,17,'NULL-CONSTANT'),(16,18,'com.mogo.media'),(17,20,'com.mogo.media'),(18,22,'(.*)'),(19,27,'com.ps.llk'),(20,29,'com.ps.llk'),(21,31,'com.ps.llk'),(22,34,'com.mogo.media'),(23,35,'com.google.android.apps.maps'),(24,36,'com.ps.llk'),(25,42,'com.mogo.media'),(26,41,'(.*)'),(27,44,'(.*)'),(28,48,'com.ps.llk'),(29,50,'com.mogo.media'),(30,52,'com.ps.llk'),(31,57,'com.mogo.media'),(32,69,'com.safetest.compass'),(33,70,'com.google.android.apps.maps'),(34,71,'com.mogo.media'),(35,72,'com.gp.solitaire'),(36,76,'com.gp.solitaire'),(37,77,'com.gp.solitaire'),(38,78,'com.google.android.apps.maps'),(39,79,'com.mogo.media'),(40,80,'com.gp.solitaire'),(41,82,'com.gp.solitaire'),(42,83,'com.google.android.apps.maps'),(43,84,'com.mogo.media'),(44,86,'com.mogo.media'),(45,91,'com.noshufou.android.su'),(46,92,'com.mogo.media'),(47,94,'com.noshufou.android.su'),(48,93,'com.google.android.apps.maps'),(49,96,'com.mogo.media'),(50,97,'com.gp.solitaire'),(51,99,'com.safetest.compass'),(52,100,'com.gp.solitaire'),(53,101,'com.mogo.media'),(54,105,'com.noshufou.android.su'),(55,107,'com.noshufou.android.su'),(56,108,'com.mogo.media'),(57,110,'com.mogo.media'),(58,111,'com.mogo.media'),(59,114,'com.mogo.media'),(60,116,'com.mogo.media'),(61,119,'com.mogo.media'),(62,120,'com.mogo.media'),(63,124,'com.mogo.media'),(64,125,'com.mogo.smspopup'),(65,126,'com.mogo.smspopup'),(66,129,'com.mogo.smspopup'),(67,130,'com.mogo.smspopup'),(68,131,'com.mogo.smspopup'),(69,132,'com.noshufou.android.su'),(70,133,'com.noshufou.android.su'),(71,134,'com.mogo.smspopup'),(72,135,'com.mogo.smspopup'),(73,136,'com.mogo.smspopuppro'),(74,137,'com.mogo.smspopup'),(75,138,'com.mogo.smspopup'),(76,143,'com.svox.pico'),(77,144,'com.mogo.smspopup'),(78,145,'com.mogo.smspopup'),(79,146,'com.mogo.smspopup'),(80,147,'com.mogo.smspopup'),(81,148,'com.mogo.smspopup'),(82,149,'com.mogo.smspopup'),(83,150,'com.mogo.smspopup'),(84,151,'com.mogo.smspopup'),(85,154,'com.mogo.smspopup'),(86,155,'com.mogo.smspopup'),(87,156,'com.mogo.smspopup'),(88,161,'com.mogo.smspopup');
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,5,0),(3,6,0),(4,7,0),(5,12,0),(6,14,0),(7,19,0),(8,20,0),(9,25,0),(10,26,0),(11,29,0),(12,39,0),(13,43,0),(14,46,0),(15,48,0),(16,49,0),(17,52,0),(18,66,0),(19,66,0),(20,66,0),(21,66,0),(22,67,0),(23,67,0),(24,67,0),(25,67,0),(26,70,0),(27,71,0),(28,72,0),(29,73,0),(30,26,0),(31,74,0),(32,75,0),(33,25,0),(34,76,0),(35,77,0),(36,78,0),(37,79,0),(38,46,0),(39,80,0),(40,76,0),(41,77,0),(42,78,0),(43,79,0),(44,46,0),(45,80,0),(46,79,0),(47,73,0),(48,72,0),(49,73,0),(50,26,0),(51,81,0),(52,74,0),(53,75,0),(54,25,0),(55,76,0),(56,77,0),(57,78,0),(58,79,0),(59,46,0),(60,80,0),(61,82,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,2,1,0),(4,3,0,0),(5,4,0,0),(6,5,0,0),(7,6,1,0),(8,6,1,0),(9,7,1,0),(10,7,1,0),(11,8,0,0),(12,10,0,0),(13,9,1,0),(14,11,0,0),(15,11,0,0),(16,12,1,0),(17,13,0,0),(18,14,1,0),(19,15,1,0),(20,14,1,0),(21,15,1,0),(22,16,0,0),(23,15,1,0),(24,17,1,0),(25,15,1,0),(26,15,1,0),(27,18,0,0),(28,15,1,0),(29,18,0,0),(30,15,1,0),(31,20,0,0),(32,21,1,0),(33,15,1,0),(34,22,0,0),(35,15,0,0),(36,20,0,0),(37,15,1,0),(38,15,1,0),(39,24,1,0),(40,25,1,0),(41,24,1,0),(42,25,0,0),(43,15,1,0),(44,24,1,0),(45,15,1,0),(46,26,1,0),(47,15,1,0),(48,27,1,0),(49,15,1,0),(50,28,0,0),(51,29,1,0),(52,27,1,0),(53,15,1,0),(54,15,1,0),(55,30,1,0),(56,31,1,0),(57,30,0,0),(58,15,1,0),(59,31,1,0),(60,31,1,0),(61,32,1,0),(62,33,1,0),(63,31,1,0),(64,15,1,0),(65,15,1,0),(66,31,1,0),(67,15,1,0),(68,31,1,0),(69,15,0,0),(70,15,0,0),(71,34,0,0),(72,36,0,0),(73,15,1,0),(74,15,1,0),(75,37,1,0),(76,38,0,0),(77,38,0,0),(78,15,0,0),(79,40,0,0),(80,41,0,0),(81,15,1,0),(82,41,0,0),(83,15,0,0),(84,42,0,0),(85,15,1,0),(86,42,0,0),(87,15,1,0),(88,44,1,0),(89,15,1,0),(90,15,1,0),(91,45,1,0),(92,46,0,0),(93,15,0,0),(94,45,1,0),(95,15,1,0),(96,48,0,0),(97,49,1,0),(98,50,1,0),(99,51,0,0),(100,49,1,0),(101,52,0,0),(102,55,1,0),(103,55,1,0),(104,56,1,0),(105,57,1,0),(106,55,1,0),(107,57,1,0),(108,58,0,0),(109,59,1,0),(110,60,0,0),(111,61,0,0),(112,62,1,0),(113,64,1,0),(114,65,0,0),(115,66,1,0),(116,66,0,0),(117,67,1,0),(118,68,1,0),(119,69,0,0),(120,69,0,0),(121,72,1,0),(122,73,1,0),(123,74,1,0),(124,76,0,0),(125,79,0,0),(126,79,0,0),(127,80,1,0),(128,82,1,0),(129,85,1,0),(130,85,1,0),(131,86,0,0),(132,87,1,0),(133,87,1,0),(134,89,0,0),(135,89,0,0),(136,90,0,0),(137,91,0,0),(138,93,0,0),(139,95,1,0),(140,96,1,0),(141,96,1,0),(142,96,1,0),(143,97,0,0),(144,98,0,0),(145,99,0,0),(146,99,0,0),(147,99,0,0),(148,99,0,0),(149,99,0,0),(150,100,0,0),(151,101,0,0),(152,103,1,0),(153,104,1,0),(154,105,0,0),(155,106,0,0),(156,107,0,0),(157,108,1,0),(158,108,1,0),(159,109,1,0),(160,109,1,0),(161,110,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=687 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,7,39,2,NULL),(2,8,39,2,NULL),(3,39,39,2,NULL),(4,41,39,2,NULL),(5,44,39,2,NULL),(6,32,39,2,NULL),(7,75,39,2,NULL),(8,98,39,2,NULL),(9,109,39,2,NULL),(10,113,39,2,NULL),(11,117,39,2,NULL),(12,121,39,2,NULL),(13,122,39,2,NULL),(14,62,39,2,NULL),(15,102,39,2,NULL),(16,103,39,2,NULL),(17,46,39,2,NULL),(18,88,39,2,NULL),(19,118,39,2,NULL),(20,123,39,2,NULL),(21,140,39,2,NULL),(22,141,39,2,NULL),(23,76,16,2,NULL),(24,76,42,2,NULL),(25,76,60,2,NULL),(26,77,16,2,NULL),(27,77,42,2,NULL),(28,77,60,2,NULL),(29,80,16,2,NULL),(30,80,42,2,NULL),(31,80,60,2,NULL),(32,82,16,2,NULL),(33,82,42,2,NULL),(34,82,60,2,NULL),(35,72,18,2,NULL),(36,72,47,2,NULL),(37,72,65,2,NULL),(38,7,48,2,NULL),(39,8,48,2,NULL),(40,39,48,2,NULL),(41,41,48,2,NULL),(42,44,48,2,NULL),(43,32,48,2,NULL),(44,75,48,2,NULL),(45,98,48,2,NULL),(46,109,48,2,NULL),(47,113,48,2,NULL),(48,117,48,2,NULL),(49,121,48,2,NULL),(50,122,48,2,NULL),(51,62,48,2,NULL),(52,102,48,2,NULL),(53,103,48,2,NULL),(54,46,48,2,NULL),(55,88,48,2,NULL),(56,118,48,2,NULL),(57,123,48,2,NULL),(58,140,48,2,NULL),(59,141,48,2,NULL),(60,7,29,2,NULL),(61,8,29,2,NULL),(62,39,29,2,NULL),(63,41,29,2,NULL),(64,44,29,2,NULL),(65,32,29,2,NULL),(66,75,29,2,NULL),(67,98,29,2,NULL),(68,109,29,2,NULL),(69,113,29,2,NULL),(70,117,29,2,NULL),(71,121,29,2,NULL),(72,122,29,2,NULL),(73,62,29,2,NULL),(74,102,29,2,NULL),(75,103,29,2,NULL),(76,46,29,2,NULL),(77,88,29,2,NULL),(78,118,29,2,NULL),(79,123,29,2,NULL),(80,140,29,2,NULL),(81,141,29,2,NULL),(82,34,29,2,NULL),(83,101,29,2,NULL),(84,96,33,2,NULL),(85,32,1,2,NULL),(86,75,1,2,NULL),(87,98,1,2,NULL),(88,109,1,2,NULL),(89,113,1,2,NULL),(90,117,1,2,NULL),(91,121,1,2,NULL),(92,122,1,2,NULL),(93,32,5,2,NULL),(94,75,5,2,NULL),(95,98,5,2,NULL),(96,109,5,2,NULL),(97,113,5,2,NULL),(98,117,5,2,NULL),(99,121,5,2,NULL),(100,122,5,2,NULL),(101,32,7,2,NULL),(102,75,7,2,NULL),(103,98,7,2,NULL),(104,109,7,2,NULL),(105,113,7,2,NULL),(106,117,7,2,NULL),(107,121,7,2,NULL),(108,122,7,2,NULL),(109,32,6,2,NULL),(110,75,6,2,NULL),(111,98,6,2,NULL),(112,109,6,2,NULL),(113,113,6,2,NULL),(114,117,6,2,NULL),(115,121,6,2,NULL),(116,122,6,2,NULL),(117,32,12,2,NULL),(118,75,12,2,NULL),(119,98,12,2,NULL),(120,109,12,2,NULL),(121,113,12,2,NULL),(122,117,12,2,NULL),(123,121,12,2,NULL),(124,122,12,2,NULL),(125,32,14,2,NULL),(126,75,14,2,NULL),(127,98,14,2,NULL),(128,109,14,2,NULL),(129,113,14,2,NULL),(130,117,14,2,NULL),(131,121,14,2,NULL),(132,122,14,2,NULL),(133,32,19,2,NULL),(134,75,19,2,NULL),(135,98,19,2,NULL),(136,109,19,2,NULL),(137,113,19,2,NULL),(138,117,19,2,NULL),(139,121,19,2,NULL),(140,122,19,2,NULL),(141,32,20,2,NULL),(142,75,20,2,NULL),(143,98,20,2,NULL),(144,109,20,2,NULL),(145,113,20,2,NULL),(146,117,20,2,NULL),(147,121,20,2,NULL),(148,122,20,2,NULL),(149,32,25,2,NULL),(150,75,25,2,NULL),(151,98,25,2,NULL),(152,109,25,2,NULL),(153,113,25,2,NULL),(154,117,25,2,NULL),(155,121,25,2,NULL),(156,122,25,2,NULL),(157,32,26,2,NULL),(158,75,26,2,NULL),(159,98,26,2,NULL),(160,109,26,2,NULL),(161,113,26,2,NULL),(162,117,26,2,NULL),(163,121,26,2,NULL),(164,122,26,2,NULL),(165,32,72,2,NULL),(166,75,72,2,NULL),(167,98,72,2,NULL),(168,109,72,2,NULL),(169,113,72,2,NULL),(170,117,72,2,NULL),(171,121,72,2,NULL),(172,122,72,2,NULL),(173,32,73,2,NULL),(174,75,73,2,NULL),(175,98,73,2,NULL),(176,109,73,2,NULL),(177,113,73,2,NULL),(178,117,73,2,NULL),(179,121,73,2,NULL),(180,122,73,2,NULL),(181,32,74,2,NULL),(182,75,74,2,NULL),(183,98,74,2,NULL),(184,109,74,2,NULL),(185,113,74,2,NULL),(186,117,74,2,NULL),(187,121,74,2,NULL),(188,122,74,2,NULL),(189,32,75,2,NULL),(190,75,75,2,NULL),(191,98,75,2,NULL),(192,109,75,2,NULL),(193,113,75,2,NULL),(194,117,75,2,NULL),(195,121,75,2,NULL),(196,122,75,2,NULL),(197,32,43,2,NULL),(198,75,43,2,NULL),(199,98,43,2,NULL),(200,109,43,2,NULL),(201,113,43,2,NULL),(202,117,43,2,NULL),(203,121,43,2,NULL),(204,122,43,2,NULL),(205,32,46,2,NULL),(206,75,46,2,NULL),(207,98,46,2,NULL),(208,109,46,2,NULL),(209,113,46,2,NULL),(210,117,46,2,NULL),(211,121,46,2,NULL),(212,122,46,2,NULL),(213,32,76,2,NULL),(214,75,76,2,NULL),(215,98,76,2,NULL),(216,109,76,2,NULL),(217,113,76,2,NULL),(218,117,76,2,NULL),(219,121,76,2,NULL),(220,122,76,2,NULL),(221,32,77,2,NULL),(222,75,77,2,NULL),(223,98,77,2,NULL),(224,109,77,2,NULL),(225,113,77,2,NULL),(226,117,77,2,NULL),(227,121,77,2,NULL),(228,122,77,2,NULL),(229,32,78,2,NULL),(230,75,78,2,NULL),(231,98,78,2,NULL),(232,109,78,2,NULL),(233,113,78,2,NULL),(234,117,78,2,NULL),(235,121,78,2,NULL),(236,122,78,2,NULL),(237,32,79,2,NULL),(238,75,79,2,NULL),(239,98,79,2,NULL),(240,109,79,2,NULL),(241,113,79,2,NULL),(242,117,79,2,NULL),(243,121,79,2,NULL),(244,122,79,2,NULL),(245,32,80,2,NULL),(246,75,80,2,NULL),(247,98,80,2,NULL),(248,109,80,2,NULL),(249,113,80,2,NULL),(250,117,80,2,NULL),(251,121,80,2,NULL),(252,122,80,2,NULL),(253,32,49,2,NULL),(254,75,49,2,NULL),(255,98,49,2,NULL),(256,109,49,2,NULL),(257,113,49,2,NULL),(258,117,49,2,NULL),(259,121,49,2,NULL),(260,122,49,2,NULL),(261,32,66,2,NULL),(262,75,66,2,NULL),(263,98,66,2,NULL),(264,109,66,2,NULL),(265,113,66,2,NULL),(266,117,66,2,NULL),(267,121,66,2,NULL),(268,122,66,2,NULL),(269,32,67,2,NULL),(270,75,67,2,NULL),(271,98,67,2,NULL),(272,109,67,2,NULL),(273,113,67,2,NULL),(274,117,67,2,NULL),(275,121,67,2,NULL),(276,122,67,2,NULL),(277,32,70,2,NULL),(278,75,70,2,NULL),(279,98,70,2,NULL),(280,109,70,2,NULL),(281,113,70,2,NULL),(282,117,70,2,NULL),(283,121,70,2,NULL),(284,122,70,2,NULL),(285,92,29,2,NULL),(286,114,32,2,NULL),(287,62,1,2,NULL),(288,62,5,2,NULL),(289,62,7,2,NULL),(290,62,6,2,NULL),(291,62,12,2,NULL),(292,62,14,2,NULL),(293,62,19,2,NULL),(294,62,20,2,NULL),(295,62,25,2,NULL),(296,62,26,2,NULL),(297,62,72,2,NULL),(298,62,73,2,NULL),(299,62,74,2,NULL),(300,62,75,2,NULL),(301,62,43,2,NULL),(302,62,46,2,NULL),(303,62,76,2,NULL),(304,62,77,2,NULL),(305,62,78,2,NULL),(306,62,79,2,NULL),(307,62,80,2,NULL),(308,62,49,2,NULL),(309,62,66,2,NULL),(310,62,67,2,NULL),(311,62,70,2,NULL),(312,79,32,2,NULL),(313,111,32,2,NULL),(314,102,1,2,NULL),(315,103,1,2,NULL),(316,102,5,2,NULL),(317,103,5,2,NULL),(318,102,7,2,NULL),(319,103,7,2,NULL),(320,102,6,2,NULL),(321,103,6,2,NULL),(322,102,12,2,NULL),(323,103,12,2,NULL),(324,102,14,2,NULL),(325,103,14,2,NULL),(326,102,19,2,NULL),(327,103,19,2,NULL),(328,102,20,2,NULL),(329,103,20,2,NULL),(330,102,25,2,NULL),(331,103,25,2,NULL),(332,102,26,2,NULL),(333,103,26,2,NULL),(334,102,72,2,NULL),(335,103,72,2,NULL),(336,102,73,2,NULL),(337,103,73,2,NULL),(338,102,74,2,NULL),(339,103,74,2,NULL),(340,7,1,2,NULL),(341,102,75,2,NULL),(342,8,1,2,NULL),(343,103,75,2,NULL),(344,7,20,2,NULL),(345,39,1,2,NULL),(346,102,43,2,NULL),(347,41,1,2,NULL),(348,8,20,2,NULL),(349,103,43,2,NULL),(350,39,20,2,NULL),(351,102,46,2,NULL),(352,44,1,2,NULL),(353,41,20,2,NULL),(354,103,46,2,NULL),(355,46,1,2,NULL),(356,44,20,2,NULL),(357,102,76,2,NULL),(358,88,1,2,NULL),(359,103,76,2,NULL),(360,46,20,2,NULL),(361,102,77,2,NULL),(362,118,1,2,NULL),(363,88,20,2,NULL),(364,103,77,2,NULL),(365,123,1,2,NULL),(366,102,78,2,NULL),(367,118,20,2,NULL),(368,140,1,2,NULL),(369,103,78,2,NULL),(370,123,20,2,NULL),(371,141,1,2,NULL),(372,102,79,2,NULL),(373,140,20,2,NULL),(374,7,5,2,NULL),(375,103,79,2,NULL),(376,141,20,2,NULL),(377,8,5,2,NULL),(378,102,80,2,NULL),(379,12,23,2,NULL),(380,39,5,2,NULL),(381,103,80,2,NULL),(382,7,25,2,NULL),(383,41,5,2,NULL),(384,102,49,2,NULL),(385,8,25,2,NULL),(386,103,49,2,NULL),(387,44,5,2,NULL),(388,39,25,2,NULL),(389,102,66,2,NULL),(390,46,5,2,NULL),(391,41,25,2,NULL),(392,103,66,2,NULL),(393,88,5,2,NULL),(394,44,25,2,NULL),(395,102,67,2,NULL),(396,118,5,2,NULL),(397,103,67,2,NULL),(398,123,5,2,NULL),(399,46,25,2,NULL),(400,102,70,2,NULL),(401,88,25,2,NULL),(402,140,5,2,NULL),(403,103,70,2,NULL),(404,118,25,2,NULL),(405,141,5,2,NULL),(406,84,38,2,NULL),(407,1,4,2,NULL),(408,123,25,2,NULL),(409,86,38,2,NULL),(410,7,7,2,NULL),(411,119,38,2,NULL),(412,140,25,2,NULL),(413,8,7,2,NULL),(414,120,38,2,NULL),(415,39,7,2,NULL),(416,141,25,2,NULL),(417,46,7,2,NULL),(418,41,7,2,NULL),(419,88,7,2,NULL),(420,99,24,2,NULL),(421,44,7,2,NULL),(422,118,7,2,NULL),(423,7,26,2,NULL),(424,123,7,2,NULL),(425,46,6,2,NULL),(426,8,26,2,NULL),(427,140,7,2,NULL),(428,88,6,2,NULL),(429,39,26,2,NULL),(430,141,7,2,NULL),(431,118,6,2,NULL),(432,41,26,2,NULL),(433,123,6,2,NULL),(434,44,26,2,NULL),(435,46,12,2,NULL),(436,46,26,2,NULL),(437,88,12,2,NULL),(438,88,26,2,NULL),(439,118,12,2,NULL),(440,118,26,2,NULL),(441,123,12,2,NULL),(442,123,26,2,NULL),(443,46,14,2,NULL),(444,140,26,2,NULL),(445,88,14,2,NULL),(446,141,26,2,NULL),(447,118,14,2,NULL),(448,7,72,2,NULL),(449,123,14,2,NULL),(450,8,72,2,NULL),(451,7,43,2,NULL),(452,39,72,2,NULL),(453,8,43,2,NULL),(454,41,72,2,NULL),(455,39,43,2,NULL),(456,44,72,2,NULL),(457,41,43,2,NULL),(458,46,72,2,NULL),(459,44,43,2,NULL),(460,88,72,2,NULL),(461,46,19,2,NULL),(462,118,72,2,NULL),(463,88,19,2,NULL),(464,123,72,2,NULL),(465,118,19,2,NULL),(466,140,72,2,NULL),(467,123,19,2,NULL),(468,141,72,2,NULL),(469,46,73,2,NULL),(470,7,73,2,NULL),(471,88,73,2,NULL),(472,8,73,2,NULL),(473,118,73,2,NULL),(474,39,73,2,NULL),(475,123,73,2,NULL),(476,41,73,2,NULL),(477,46,74,2,NULL),(478,44,73,2,NULL),(479,88,74,2,NULL),(480,118,74,2,NULL),(481,140,73,2,NULL),(482,123,74,2,NULL),(483,141,73,2,NULL),(484,46,75,2,NULL),(485,7,74,2,NULL),(486,88,75,2,NULL),(487,8,74,2,NULL),(488,118,75,2,NULL),(489,39,74,2,NULL),(490,123,75,2,NULL),(491,41,74,2,NULL),(492,46,46,2,NULL),(493,44,74,2,NULL),(494,88,46,2,NULL),(495,118,46,2,NULL),(496,140,74,2,NULL),(497,123,46,2,NULL),(498,141,74,2,NULL),(499,46,76,2,NULL),(500,7,75,2,NULL),(501,88,76,2,NULL),(502,8,75,2,NULL),(503,118,76,2,NULL),(504,39,75,2,NULL),(505,123,76,2,NULL),(506,41,75,2,NULL),(507,46,77,2,NULL),(508,44,75,2,NULL),(509,88,77,2,NULL),(510,140,75,2,NULL),(511,118,77,2,NULL),(512,141,75,2,NULL),(513,123,77,2,NULL),(514,46,78,2,NULL),(515,88,78,2,NULL),(516,118,78,2,NULL),(517,123,78,2,NULL),(518,46,79,2,NULL),(519,88,79,2,NULL),(520,118,79,2,NULL),(521,123,79,2,NULL),(522,46,80,2,NULL),(523,88,80,2,NULL),(524,118,80,2,NULL),(525,123,80,2,NULL),(526,46,49,2,NULL),(527,88,49,2,NULL),(528,118,49,2,NULL),(529,123,49,2,NULL),(530,140,43,2,NULL),(531,141,43,2,NULL),(532,46,66,2,NULL),(533,88,66,2,NULL),(534,118,66,2,NULL),(535,123,66,2,NULL),(536,46,67,2,NULL),(537,88,67,2,NULL),(538,118,67,2,NULL),(539,123,67,2,NULL),(540,46,70,2,NULL),(541,88,70,2,NULL),(542,118,70,2,NULL),(543,123,70,2,NULL),(544,50,41,2,NULL),(545,7,46,2,NULL),(546,8,46,2,NULL),(547,39,46,2,NULL),(548,41,46,2,NULL),(549,44,46,2,NULL),(550,140,46,2,NULL),(551,141,46,2,NULL),(552,7,76,2,NULL),(553,8,76,2,NULL),(554,39,76,2,NULL),(555,41,76,2,NULL),(556,44,76,2,NULL),(557,140,76,2,NULL),(558,141,76,2,NULL),(559,7,77,2,NULL),(560,8,77,2,NULL),(561,39,77,2,NULL),(562,41,77,2,NULL),(563,44,77,2,NULL),(564,140,77,2,NULL),(565,141,77,2,NULL),(566,7,78,2,NULL),(567,8,78,2,NULL),(568,39,78,2,NULL),(569,41,78,2,NULL),(570,44,78,2,NULL),(571,140,78,2,NULL),(572,141,78,2,NULL),(573,7,79,2,NULL),(574,8,79,2,NULL),(575,39,79,2,NULL),(576,41,79,2,NULL),(577,44,79,2,NULL),(578,140,79,2,NULL),(579,141,79,2,NULL),(580,7,80,2,NULL),(581,8,80,2,NULL),(582,39,80,2,NULL),(583,41,80,2,NULL),(584,44,80,2,NULL),(585,140,80,2,NULL),(586,141,80,2,NULL),(587,6,10,2,NULL),(588,7,6,2,NULL),(589,8,6,2,NULL),(590,39,6,2,NULL),(591,41,6,2,NULL),(592,44,6,2,NULL),(593,140,6,2,NULL),(594,141,6,2,NULL),(595,5,9,2,NULL),(596,7,12,2,NULL),(597,8,12,2,NULL),(598,39,12,2,NULL),(599,41,12,2,NULL),(600,44,12,2,NULL),(601,140,12,2,NULL),(602,141,12,2,NULL),(603,4,11,2,NULL),(604,7,14,2,NULL),(605,8,14,2,NULL),(606,39,14,2,NULL),(607,41,14,2,NULL),(608,44,14,2,NULL),(609,140,14,2,NULL),(610,141,14,2,NULL),(611,7,19,2,NULL),(612,8,19,2,NULL),(613,39,19,2,NULL),(614,41,19,2,NULL),(615,44,19,2,NULL),(616,7,49,2,NULL),(617,8,49,2,NULL),(618,39,49,2,NULL),(619,41,49,2,NULL),(620,44,49,2,NULL),(621,7,66,2,NULL),(622,8,66,2,NULL),(623,39,66,2,NULL),(624,41,66,2,NULL),(625,44,66,2,NULL),(626,7,67,2,NULL),(627,8,67,2,NULL),(628,39,67,2,NULL),(629,41,67,2,NULL),(630,44,67,2,NULL),(631,7,70,2,NULL),(632,8,70,2,NULL),(633,39,70,2,NULL),(634,41,70,2,NULL),(635,44,70,2,NULL),(636,14,16,2,NULL),(637,14,42,2,NULL),(638,14,60,2,NULL),(639,15,16,2,NULL),(640,15,42,2,NULL),(641,15,60,2,NULL),(642,27,16,2,NULL),(643,27,42,2,NULL),(644,27,60,2,NULL),(645,29,16,2,NULL),(646,29,42,2,NULL),(647,29,60,2,NULL),(648,11,18,2,NULL),(649,11,47,2,NULL),(650,11,65,2,NULL),(651,140,19,2,NULL),(652,141,19,2,NULL),(653,140,49,2,NULL),(654,141,49,2,NULL),(655,131,51,2,NULL),(656,138,51,2,NULL),(657,150,51,2,NULL),(658,140,66,2,NULL),(659,141,66,2,NULL),(660,140,67,2,NULL),(661,141,67,2,NULL),(662,140,70,2,NULL),(663,141,70,2,NULL),(664,145,61,2,NULL),(665,146,61,2,NULL),(666,147,61,2,NULL),(667,148,61,2,NULL),(668,149,61,2,NULL),(669,137,62,2,NULL),(670,151,63,2,NULL),(671,155,64,2,NULL),(672,125,16,2,NULL),(673,125,42,2,NULL),(674,125,60,2,NULL),(675,126,16,2,NULL),(676,126,42,2,NULL),(677,126,60,2,NULL),(678,134,16,2,NULL),(679,134,42,2,NULL),(680,134,60,2,NULL),(681,135,16,2,NULL),(682,135,42,2,NULL),(683,135,60,2,NULL),(684,161,18,2,NULL),(685,161,47,2,NULL),(686,161,65,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (7,'android.permission.ACCESS_COARSE_LOCATION'),(5,'android.permission.ACCESS_FINE_LOCATION'),(15,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(8,'android.permission.ACCESS_NETWORK_STATE'),(6,'android.permission.ACCESS_WIFI_STATE'),(11,'android.permission.CHANGE_WIFI_STATE'),(22,'android.permission.DISABLE_KEYGUARD'),(10,'android.permission.GET_TASKS'),(16,'android.permission.INSTALL_PACKAGES'),(3,'android.permission.INTERNET'),(21,'android.permission.READ_CONTACTS'),(14,'android.permission.READ_EXTERNAL_STORAGE'),(18,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(12,'android.permission.READ_SMS'),(2,'android.permission.RECEIVE_BOOT_COMPLETED'),(19,'android.permission.RECEIVE_MMS'),(20,'android.permission.RECEIVE_SMS'),(17,'android.permission.SEND_SMS'),(23,'android.permission.VIBRATE'),(24,'android.permission.WAKE_LOCK'),(4,'android.permission.WRITE_EXTERNAL_STORAGE'),(13,'android.permission.WRITE_SMS'),(9,'com.android.launcher.permission.INSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(3,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(4,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(6,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(7,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(8,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(9,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(10,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(11,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(12,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(13,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(16,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(19,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL),(21,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'file://',NULL,NULL,NULL),(26,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT((.*))&z=22',NULL,NULL,NULL),(27,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(28,NULL,NULL,'(.*)',NULL,NULL,NULL),(29,NULL,NULL,'http://maps.google.com/maps?q=(.*)((.*))&z=22',NULL,NULL,NULL),(30,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(31,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT()&z=22',NULL,NULL,NULL),(32,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(33,NULL,NULL,'(.*)',NULL,NULL,NULL),(34,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(35,NULL,NULL,'http://maps.google.com/maps?q=(.*)()&z=22',NULL,NULL,NULL),(36,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(37,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(38,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(39,NULL,NULL,'(.*)',NULL,NULL,NULL),(40,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(41,NULL,NULL,'(.*)',NULL,NULL,NULL),(42,NULL,NULL,'(.*)',NULL,NULL,NULL),(43,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(44,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(45,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(46,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(47,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(48,NULL,NULL,'content://contacts/people/with_email_or_im_filter',NULL,NULL,NULL),(49,NULL,NULL,'content://com.android.contacts/data/emails/lookup',NULL,NULL,NULL),(50,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(51,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(52,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(53,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(54,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(55,NULL,NULL,'content://com.android.contacts/phone_lookup',NULL,NULL,NULL),(56,NULL,NULL,'content://contacts/phones/filter',NULL,NULL,NULL),(57,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(58,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(59,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(60,NULL,NULL,'content://sms',NULL,NULL,NULL),(61,NULL,NULL,'(.*)',NULL,NULL,NULL),(62,NULL,NULL,'(.*)',NULL,NULL,NULL),(63,NULL,NULL,'(.*)',NULL,NULL,NULL),(64,NULL,NULL,'content://mms-sms/conversations/',NULL,NULL,NULL),(65,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(66,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(67,'tel','(.*)',NULL,NULL,NULL,NULL),(68,'mailto','(.*)',NULL,NULL,NULL,NULL),(69,NULL,NULL,'content://mms-sms/',NULL,NULL,NULL),(70,NULL,NULL,'content://mms-sms/',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,19,9),(2,23,12),(3,39,27),(4,43,32),(5,47,36),(6,53,37),(7,54,38),(8,63,44),(9,70,45),(10,71,46),(11,75,47),(12,78,48),(13,78,49),(14,81,51),(15,81,52),(16,83,53),(17,83,54),(18,84,55),(19,84,56),(20,88,57),(21,92,58),(22,92,59),(23,94,60),(24,102,64),(25,111,69),(26,111,NULL),(27,112,70);
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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,2,1),(10,2,2),(11,2,3),(12,2,4),(13,2,6),(14,2,7),(15,2,8),(16,3,1),(17,3,2),(18,3,3),(19,3,4),(20,3,6),(21,3,7),(22,3,8),(23,3,9),(24,3,10),(25,3,11),(26,4,1),(27,4,3),(28,4,5),(29,4,6),(30,4,7),(31,4,8),(32,4,12),(33,4,13),(34,5,1),(35,5,3),(36,5,4),(37,5,5),(38,5,6),(39,5,7),(40,5,8),(41,5,11),(42,5,14),(43,5,15),(44,6,1),(45,6,2),(46,6,3),(47,6,4),(48,6,5),(49,6,6),(50,6,7),(51,6,8),(52,6,11),(53,6,12),(54,6,13),(55,6,14),(56,6,15),(57,6,16),(58,7,1),(59,7,3),(60,7,4),(61,7,5),(62,7,6),(63,7,7),(64,7,8),(65,7,10),(66,7,11),(67,7,12),(68,7,13),(69,7,14),(70,7,15),(71,7,17),(72,7,16),(73,7,19),(74,7,18),(75,7,21),(76,7,20),(77,7,23),(78,7,22),(79,7,24);
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

-- Dump completed on 2015-10-12  3:29:34
