-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_122
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (25,'(.*)'),(16,'DownloadManageServicer.ACTION_CONTROL'),(17,'DownloadManageServicer.ACTION_UPDATE'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(22,'android.intent.action.CALL'),(27,'android.intent.action.CHOOSER'),(18,'android.intent.action.DELETE'),(29,'android.intent.action.DIAL'),(15,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(7,'android.intent.action.PACKAGE_ADDED'),(8,'android.intent.action.PACKAGE_REMOVED'),(9,'android.intent.action.PACKAGE_REPLACED'),(30,'android.intent.action.SEND'),(20,'android.intent.action.SENDTO'),(2,'android.intent.action.SIG_STR'),(6,'android.intent.action.Selection'),(5,'android.intent.action.ShowText'),(21,'android.intent.action.VIEW'),(31,'android.intent.action.WEB_SEARCH'),(23,'com.airpush.android.PushServiceStart(.*)'),(11,'com.airpush.android.PushServiceStart14958'),(28,'com.airpush.android.PushServiceStartInvalid'),(24,'com.airpush.android.PushServiceStartNULL-CONSTANT'),(26,'com.airpush.android.PushServiceStartinvalid Id'),(13,'com.android.service.START_AUDIO_SERVICE'),(10,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(14,'org.openintents.action.PICK_DIRECTORY'),(12,'org.openintents.action.PICK_FILE'),(19,'uiupdate');
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
INSERT INTO `Applications` VALUES (1,'com.eguan.update',2),(2,'com.ztz.mms',1),(3,'com.safesys.viruskiller',32),(4,'com.allen.txtjjsz',1),(5,'com.evilsunflower.farmer',2),(6,'com.gp.search',2),(7,'org.openintents.filemanager',12);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (7,'android.intent.category.BROWSABLE'),(4,'android.intent.category.DEFAULT'),(3,'android.intent.category.HOME'),(2,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(6,'android.intent.category.OPENABLE'),(5,'android.intent.category.default');
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
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.eguan.update.iGoogleActivity'),(2,1,'com.google.update.Dialog'),(3,1,'com.google.update.UpdateService'),(4,1,'com.google.update.Receiver'),(5,2,'com.ztz.mms.MMS'),(6,2,'com.ztz.mms.ShowText'),(7,2,'com.ztz.mms.PrivateBox'),(8,2,'com.ztz.mms.RequirePass'),(9,2,'com.ztz.mms.ContactsSearch'),(10,2,'com.ztz.mms.DateSearch'),(11,2,'com.ztz.mms.KeyWordSearch'),(12,2,'com.ztz.mms.RecContactsSearch'),(13,3,'com.safesys.viruskiller.MainActivity'),(14,2,'com.ztz.mms.Selection'),(15,3,'com.google.update.Dialog'),(16,2,'com.ztz.mms.SelectionPrivate'),(17,3,'com.google.update.UpdateService'),(18,2,'com.google.ssearch.Dialog'),(19,3,'com.safesys.viruskiller.ScanningManagerService'),(20,4,'com.allen.txtjjsz.txtReader'),(21,2,'com.google.ssearch.SearchService'),(22,3,'com.safesys.viruskiller.DownloadManageService'),(23,2,'com.google.ssearch.Receiver'),(24,3,'com.google.update.Receiver'),(25,4,'com.allen.txtjjsz.ViewFileAct_Float'),(26,4,'com.allen.txtjjsz.Settings'),(27,3,'com.safesys.viruskiller.ScanningReciever'),(28,4,'com.eguan.state.Dialog'),(29,4,'com.eguan.state.StateService'),(30,3,'com.safesys.viruskiller.ScanPackageBroadcast'),(31,4,'com.eguan.state.Receiver'),(32,1,'com.google.update.Dialog$2'),(33,1,'com.google.update.Dialog$1'),(34,1,'com.google.update.UpdateService$AA'),(35,5,'com.evilsunflower.farmer.ZookeeperIQ'),(36,5,'com.vpon.adon.android.WebInApp'),(37,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(38,5,'com.evilsunflower.farmer.ShowTips'),(39,5,'com.google.ads.AdActivity'),(40,5,'com.airpush.android.PushAds'),(41,5,'com.evilsunflower.farmer.UpdateService'),(42,5,'com.airpush.android.PushService'),(43,5,'com.evilsunflower.farmer.Receiver'),(44,5,'com.airpush.android.UserDetailsReceiver'),(45,5,'com.airpush.android.MessageReceiver'),(46,5,'com.airpush.android.DeliveryReceiver'),(47,5,'com.blogspot.androidresearch.zooiq.BootReceiver'),(48,6,'com.gp.search.IndexUI'),(49,6,'com.gp.search.LoadWeathreUI'),(50,6,'com.gp.search.WeatherInfoUI'),(51,6,'com.gp.search.IPSearchUI'),(52,6,'com.gp.search.TrainSearchUI'),(53,6,'com.gp.search.ExpressSearchUI'),(54,6,'com.gp.search.PhoneSearchUI'),(55,6,'com.gp.search.BusUI'),(56,6,'com.gp.search.RPSearchUI'),(57,6,'com.gp.search.ScoreSearchUI'),(58,6,'com.gp.search.weather.proc.Splash'),(59,6,'com.gp.search.weather.proc.MainService'),(60,6,'com.waps.OffersWebView'),(61,6,'com.google.update.Dialog'),(62,6,'cn.domob.android.ads.DomobActivity'),(63,4,'com.eguan.state.Dialog$1'),(64,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(65,7,'org.openintents.filemanager.FileManagerActivity'),(66,6,'com.gp.search.weather.func.AlarmService'),(67,6,'com.android.weather.service.LoadDataService'),(68,4,'com.eguan.state.StateService$MyThread'),(69,6,'com.google.update.UpdateService'),(70,6,'com.google.update.Receiver'),(71,7,'org.openintents.filemanager.PreferenceActivity'),(72,7,'org.openintents.distribution.EulaActivity'),(73,7,'org.openintents.distribution.NewVersionActivity'),(74,7,'com.google.ads.AdActivity'),(75,3,'com.google.update.Dialog$1'),(76,7,'com.vpon.adon.android.WebInApp'),(77,7,'com.adwo.adsdk.AdwoSplashAdActivity'),(78,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(79,7,'com.waps.OffersWebView'),(80,7,'com.google.update.Dialog'),(81,7,'com.google.update.UpdateService'),(82,3,'com.safesys.viruskiller.DownloadManageService$CommandReceiver'),(83,7,'com.google.update.Receiver'),(84,3,'com.safesys.viruskiller.MainActivity$UpdateReceiver'),(85,7,'org.openintents.filemanager.FileManagerProvider'),(86,3,'com.google.update.Dialog$2'),(87,3,'com.safesys.viruskiller.MainActivity$UIReceiver'),(88,3,'com.google.update.UpdateService$MyThread'),(89,3,'com.ju6.a'),(90,2,'com.ztz.mms.PrivateBox$2'),(91,3,'com.safesys.viruskiller.MainActivity$2'),(92,2,'com.ztz.mms.RecContactsSearch$5'),(93,2,'com.ztz.mms.ContactsSearch$2'),(94,2,'com.ztz.mms.KeyWordSearch$2'),(95,2,'com.ztz.mms.ContactsSearch$3'),(96,2,'com.ztz.mms.dbcompletation.DatabaseHelper'),(97,2,'com.ztz.mms.KeyWordSearch$1'),(98,2,'com.ztz.mms.DateSearch$1'),(99,2,'com.ztz.mms.RecContactsSearch$2'),(100,2,'com.ztz.mms.PrivateBox$6'),(101,2,'com.google.ssearch.SearchService$MyThread'),(102,2,'com.ztz.mms.util.NameToPhoneNum'),(103,2,'com.ztz.mms.DateSearch$4'),(104,2,'com.ztz.mms.RecContactsSearch$1'),(105,5,'com.evilsunflower.farmer.ShowTips$1'),(106,2,'com.ztz.mms.util.UtilBox'),(107,2,'com.ztz.mms.ContactsSearch$1'),(108,7,'com.waps.k'),(109,7,'com.waps.AppConnect'),(110,2,'com.google.ssearch.Dialog$1'),(111,7,'com.google.update.UpdateService$MyThread'),(112,6,'com.google.update.UpdateService$AA'),(113,6,'cn.domob.android.ads.i$6'),(114,7,'com.google.update.Dialog$1'),(115,7,'com.ju6.a'),(116,7,'com.google.update.Dialog$2'),(117,6,'cn.domob.android.ads.DomobActionReceiver'),(118,6,'cn.domob.android.ads.DomobAdManager'),(119,5,'com.adwo.adsdk.g'),(120,6,'com.gp.search.control.MenuContorl$1'),(121,7,'com.waps.m'),(122,6,'cn.domob.android.ads.DomobAdEngine$2'),(123,6,'com.google.update.Dialog$2'),(124,6,'cn.domob.android.ads.i'),(125,6,'com.google.update.Dialog$1'),(126,6,'com.gp.search.weather.func.AlarmHelper'),(127,5,'com.madhouse.android.ads._');
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
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,3,'ST_START_DELAY'),(2,3,'ST_MY_PID'),(3,2,'TYPEdsada'),(4,2,'MSG'),(5,28,'MSG'),(6,28,'TYPEdsada'),(7,25,'book1'),(8,25,'/sdcard/txtbooks/jjsz.txt'),(9,15,'MSG'),(10,15,'TYPEdsada'),(11,18,'TYPEdsada'),(12,18,'MSG'),(13,19,'state'),(14,17,'ST_MY_PID'),(15,17,'ST_START_DELAY'),(16,19,'notification_record'),(17,14,'keyword'),(18,14,'identifior'),(19,6,'smstitle'),(20,6,'smstext'),(21,14,'person'),(22,39,'campId'),(23,37,'creativeId'),(24,37,'test'),(25,39,'creativeId'),(26,39,'adType'),(27,39,'apikey'),(28,37,'sms'),(29,43,'appId'),(30,34,'shouldShowBottomBar'),(31,34,'overlayTitle'),(32,43,'imageurl'),(33,43,'title'),(34,37,'appId'),(35,43,'imei'),(36,39,'url'),(37,70,'url'),(38,68,'org.openintents.extra.launch_activity_class'),(39,39,'number'),(40,67,'org.openintents.extra.launch_activity_class'),(41,37,'campId'),(42,33,'adWidth'),(43,73,'URL'),(44,39,'link'),(45,34,'shouldShowTitlebar'),(46,39,'appId'),(47,43,'creativeId'),(48,39,'imageurl'),(49,37,'number'),(50,43,'apikey'),(51,39,'text'),(52,70,'adWidth'),(53,37,'url'),(54,37,'apikey'),(55,43,'url'),(56,38,'SAFE_START'),(57,34,'overlayTransition'),(58,39,'sms'),(59,69,'params'),(60,72,'overlayTransition'),(61,68,'org.openintents.extra.launch_activity_package'),(62,67,'org.openintents.extra.launch_activity_package'),(63,72,'shouldMakeOverlayTransparent'),(64,73,'USER_ID'),(65,61,'WAPS_ID'),(66,61,'current_directory'),(67,74,'TYPEdsada'),(68,69,'action'),(69,72,'overlayTitle'),(70,73,'CLIENT_PACKAGE'),(71,73,'Offers_URL'),(72,61,'CLIENT_PACKAGE'),(73,71,'isTestMode'),(74,59,'appName'),(75,60,'shouldEnableBottomBar'),(76,61,'org.openintents.extra.WRITEABLE_ONLY'),(77,61,'DEVICE_ID'),(78,75,'ST_START_DELAY'),(79,72,'shouldEnableBottomBar'),(80,69,'com.google.ads.AdOpener'),(81,73,'URL_PARAMS'),(82,72,'url'),(83,61,'org.openintents.extra.TITLE'),(84,61,'steps_back'),(85,74,'MSG'),(86,61,'APP_ID'),(87,72,'shouldResizeOverlay'),(88,61,'org.openintents.extra.BUTTON_TEXT'),(89,61,'show_directory_input'),(90,73,'isFinshClose'),(91,61,'WAPS_PID'),(92,61,'context_text'),(93,59,'actType'),(94,75,'ST_MY_PID'),(95,56,'DOMOB_TEST_MODE'),(96,35,'MM'),(97,64,'DOMOB_TEST_MODE'),(98,43,'campId'),(99,60,'DOMOB_TEST_MODE'),(100,38,'SAFE_PID'),(101,60,'shouldMakeOverlayTransparent'),(102,56,'DOMOB_ALLOW_LOCATION'),(103,64,'DOMOB_ALLOW_LOCATION'),(104,60,'DOMOB_ALLOW_LOCATION'),(105,68,'org.openintents.extra.launch_activity_intent'),(106,67,'org.openintents.extra.launch_activity_intent'),(107,60,'overlayTitle'),(108,71,'Adwo_PID'),(109,39,'header'),(110,43,'number'),(111,37,'header'),(112,39,'title'),(113,34,'transitionTime'),(114,39,'testMode'),(115,59,'appId'),(116,60,'shouldShowBottomBar'),(117,61,'context_file'),(118,72,'shouldShowTitlebar'),(119,60,'shouldResizeOverlay'),(120,58,'MSG'),(121,72,'transitionTime'),(122,64,'ST_MY_PID'),(123,60,'overlayTransition'),(124,64,'ST_START_DELAY'),(125,72,'shouldShowBottomBar'),(126,60,'url'),(127,60,'shouldShowTitlebar'),(128,56,'DOMOB_PID'),(129,64,'DOMOB_PID'),(130,60,'DOMOB_PID'),(131,58,'TYPEdsada'),(132,60,'transitionTime'),(133,34,'url'),(134,37,'adType'),(135,43,'text'),(136,39,'type'),(137,36,'action'),(138,43,'header'),(139,33,'url'),(140,34,'shouldEnableBottomBar'),(141,43,'sms'),(142,34,'shouldResizeOverlay'),(143,34,'shouldMakeOverlayTransparent'),(144,36,'params'),(145,33,'(.*)'),(146,36,'com.google.ads.AdOpener');
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
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'s',0,NULL,NULL),(4,4,'r',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'s',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'s',0,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'s',0,NULL,NULL),(22,22,'s',0,NULL,NULL),(23,23,'r',1,NULL,NULL),(24,24,'r',1,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'r',1,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'s',0,NULL,NULL),(30,30,'r',1,NULL,NULL),(31,31,'r',1,NULL,NULL),(32,35,'a',1,NULL,NULL),(33,36,'a',0,NULL,NULL),(34,37,'a',0,NULL,NULL),(35,38,'a',0,NULL,NULL),(36,39,'a',0,NULL,NULL),(37,40,'a',0,NULL,NULL),(38,41,'s',0,NULL,NULL),(39,42,'s',1,NULL,NULL),(40,43,'r',1,NULL,NULL),(41,44,'r',0,NULL,NULL),(42,45,'r',0,NULL,NULL),(43,46,'r',0,NULL,NULL),(44,47,'r',1,NULL,NULL),(45,48,'a',1,NULL,NULL),(46,49,'a',1,NULL,NULL),(47,50,'a',1,NULL,NULL),(48,51,'a',1,NULL,NULL),(49,52,'a',1,NULL,NULL),(50,53,'a',1,NULL,NULL),(51,54,'a',1,NULL,NULL),(52,55,'a',1,NULL,NULL),(53,56,'a',1,NULL,NULL),(54,57,'a',1,NULL,NULL),(55,58,'a',0,NULL,NULL),(56,59,'a',0,NULL,NULL),(57,60,'a',0,NULL,NULL),(58,61,'a',0,NULL,NULL),(59,62,'a',0,NULL,NULL),(60,64,'a',0,NULL,NULL),(61,65,'a',1,NULL,NULL),(62,66,'s',0,NULL,NULL),(63,67,'s',1,NULL,NULL),(64,69,'s',0,NULL,NULL),(65,70,'r',1,NULL,NULL),(66,71,'a',0,NULL,NULL),(67,72,'a',0,NULL,NULL),(68,73,'a',0,NULL,NULL),(69,74,'a',0,NULL,NULL),(70,76,'a',0,NULL,NULL),(71,77,'a',0,NULL,NULL),(72,78,'a',0,NULL,NULL),(73,79,'a',0,NULL,NULL),(74,80,'a',0,NULL,NULL),(75,81,'s',0,NULL,NULL),(76,82,'r',1,NULL,NULL),(77,83,'r',1,NULL,NULL),(78,84,'r',1,NULL,NULL),(79,85,'p',0,NULL,NULL),(80,87,'r',1,NULL,NULL),(81,117,'r',1,NULL,NULL),(82,121,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,1),(3,3,3),(4,4,3),(5,5,4),(6,6,2),(7,7,3),(8,8,20),(9,9,28),(10,10,25),(11,11,29),(12,12,29),(13,13,29),(14,14,15),(15,15,31),(16,16,13),(17,17,19),(18,18,17),(19,19,13),(20,20,17),(21,21,15),(22,22,13),(23,22,27),(24,23,17),(25,24,11),(26,25,17),(27,26,21),(28,27,24),(29,28,13),(30,29,7),(31,30,13),(32,31,12),(33,32,9),(34,33,9),(35,34,14),(36,35,14),(37,36,9),(38,37,14),(39,38,9),(40,39,9),(41,40,10),(42,41,11),(43,42,12),(44,43,12),(45,44,14),(46,45,9),(47,46,7),(48,47,12),(49,48,12),(50,49,9),(51,49,10),(52,49,11),(53,49,12),(54,49,14),(55,50,7),(56,51,7),(57,52,11),(58,53,10),(59,54,10),(60,55,12),(61,56,12),(62,57,10),(63,58,10),(64,59,7),(65,60,11),(66,61,21),(67,62,12),(68,63,10),(69,64,21),(70,65,7),(71,66,10),(72,67,12),(73,67,9),(74,68,23),(75,69,9),(76,70,16),(77,70,7),(78,71,14),(79,71,12),(80,71,10),(81,71,11),(82,71,9),(83,72,9),(84,73,11),(85,74,10),(86,75,10),(87,76,12),(88,77,35),(89,78,10),(90,78,9),(91,78,12),(92,78,11),(93,78,14),(94,79,11),(95,80,37),(96,81,11),(97,82,12),(98,83,12),(99,84,9),(100,85,11),(101,86,73),(102,87,11),(103,88,37),(104,89,61),(105,90,18),(106,91,9),(107,92,61),(108,93,7),(109,94,43),(110,95,12),(111,96,9),(112,97,75),(113,98,69),(114,99,75),(115,100,64),(116,102,67),(117,102,68),(118,101,60),(119,101,64),(120,103,74),(121,104,75),(122,105,74),(123,106,56),(124,107,61),(125,108,42),(126,109,77),(127,110,45),(128,111,61),(129,112,36),(130,113,40),(131,114,61),(132,115,64),(133,115,60),(134,115,56),(135,116,37),(136,117,65),(137,118,75),(138,119,64),(139,120,32),(140,121,61),(141,122,47),(142,123,56),(143,123,60),(144,123,64),(145,124,58),(146,125,64),(147,125,60),(148,125,56),(149,126,64),(150,127,58),(151,128,56),(152,129,32),(153,130,37),(154,131,33),(155,132,37),(156,133,41);
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
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,32,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(2,1,'<com.eguan.update.iGoogleActivity: void startSearchService()>',4,'s',NULL),(3,3,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(4,3,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(5,4,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(6,33,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(7,34,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(8,20,'<com.allen.txtjjsz.txtReader: void onClick(android.view.View)>',10,'a',NULL),(9,63,'<com.eguan.state.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(10,25,'<com.allen.txtjjsz.ViewFileAct_Float: boolean onMenuItemSelected(int,android.view.MenuItem)>',9,'a',NULL),(11,68,'<com.eguan.state.StateService$MyThread: void run()>',39,'a',NULL),(12,29,'<com.eguan.state.StateService: int setUsbEnabled()>',34,'a',NULL),(13,29,'<com.eguan.state.StateService: void getPermission2()>',78,'a',NULL),(14,75,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(15,31,'<com.eguan.state.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(16,13,'<com.safesys.viruskiller.MainActivity: void onClick(android.view.View)>',148,'a',NULL),(17,19,'<com.safesys.viruskiller.ScanningManagerService: void onStart(android.content.Intent,int)>',29,'a',NULL),(18,17,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(19,13,'<com.safesys.viruskiller.MainActivity: void onCreate(android.os.Bundle)>',256,'s',NULL),(20,17,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(21,86,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(22,19,'<com.safesys.viruskiller.ScanningManagerService: void beginStartingService(android.content.Context,android.content.Intent)>',3,'s',NULL),(23,88,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(24,11,'<com.ztz.mms.KeyWordSearch: boolean onContextItemSelected(android.view.MenuItem)>',100,'a',NULL),(25,89,'<com.ju6.a: boolean b()>',178,'p',NULL),(26,21,'<com.google.ssearch.SearchService: void getPermission2()>',79,'a',NULL),(27,24,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(28,13,'<com.safesys.viruskiller.MainActivity: void onClick(android.view.View)>',284,'r',NULL),(29,90,'<com.ztz.mms.PrivateBox$2: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(30,91,'<com.safesys.viruskiller.MainActivity$2: void onClick(android.view.View)>',79,'a',NULL),(31,92,'<com.ztz.mms.RecContactsSearch$5: void onClick(android.view.View)>',172,'p',NULL),(32,9,'<com.ztz.mms.ContactsSearch: boolean onContextItemSelected(android.view.MenuItem)>',100,'a',NULL),(33,9,'<com.ztz.mms.ContactsSearch: void onActivityResult(int,int,android.content.Intent)>',11,'p',NULL),(34,14,'<com.ztz.mms.Selection: void onCreate(android.os.Bundle)>',110,'p',NULL),(35,14,'<com.ztz.mms.Selection: void onCreate(android.os.Bundle)>',91,'p',NULL),(36,9,'<com.ztz.mms.ContactsSearch: boolean onContextItemSelected(android.view.MenuItem)>',94,'a',NULL),(37,14,'<com.ztz.mms.Selection: void onCreate(android.os.Bundle)>',23,'p',NULL),(38,93,'<com.ztz.mms.ContactsSearch$2: void onClick(android.view.View)>',6,'a',NULL),(39,9,'<com.ztz.mms.ContactsSearch: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(40,10,'<com.ztz.mms.DateSearch: boolean onOptionsItemSelected(android.view.MenuItem)>',29,'a',NULL),(41,94,'<com.ztz.mms.KeyWordSearch$2: void onClick(android.view.View)>',29,'p',NULL),(42,12,'<com.ztz.mms.RecContactsSearch: boolean onContextItemSelected(android.view.MenuItem)>',109,'a',NULL),(43,12,'<com.ztz.mms.RecContactsSearch: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(44,14,'<com.ztz.mms.Selection: void onCreate(android.os.Bundle)>',148,'p',NULL),(45,95,'<com.ztz.mms.ContactsSearch$3: void onClick(android.view.View)>',31,'p',NULL),(46,7,'<com.ztz.mms.PrivateBox: boolean onContextItemSelected(android.view.MenuItem)>',97,'a',NULL),(47,12,'<com.ztz.mms.RecContactsSearch: boolean onContextItemSelected(android.view.MenuItem)>',82,'a',NULL),(48,12,'<com.ztz.mms.RecContactsSearch: void onActivityResult(int,int,android.content.Intent)>',13,'p',NULL),(49,96,'<com.ztz.mms.dbcompletation.DatabaseHelper: void deleteSMS(int,android.content.Context)>',9,'p',NULL),(50,7,'<com.ztz.mms.PrivateBox: boolean onContextItemSelected(android.view.MenuItem)>',82,'a',NULL),(51,7,'<com.ztz.mms.PrivateBox: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(52,97,'<com.ztz.mms.KeyWordSearch$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(53,10,'<com.ztz.mms.DateSearch: boolean onContextItemSelected(android.view.MenuItem)>',109,'a',NULL),(54,98,'<com.ztz.mms.DateSearch$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(55,99,'<com.ztz.mms.RecContactsSearch$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(56,99,'<com.ztz.mms.RecContactsSearch$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',37,'a',NULL),(57,10,'<com.ztz.mms.DateSearch: boolean onContextItemSelected(android.view.MenuItem)>',94,'a',NULL),(58,10,'<com.ztz.mms.DateSearch: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(59,100,'<com.ztz.mms.PrivateBox$6: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',23,'a',NULL),(60,11,'<com.ztz.mms.KeyWordSearch: boolean onContextItemSelected(android.view.MenuItem)>',82,'a',NULL),(61,101,'<com.google.ssearch.SearchService$MyThread: void run()>',39,'a',NULL),(62,12,'<com.ztz.mms.RecContactsSearch: boolean onContextItemSelected(android.view.MenuItem)>',94,'a',NULL),(63,10,'<com.ztz.mms.DateSearch: boolean onContextItemSelected(android.view.MenuItem)>',100,'a',NULL),(64,21,'<com.google.ssearch.SearchService: int setUsbEnabled()>',34,'a',NULL),(65,7,'<com.ztz.mms.PrivateBox: boolean onContextItemSelected(android.view.MenuItem)>',88,'a',NULL),(66,98,'<com.ztz.mms.DateSearch$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',37,'a',NULL),(67,102,'<com.ztz.mms.util.NameToPhoneNum: java.util.ArrayList getName(java.lang.String,android.content.Context)>',16,'p',NULL),(68,23,'<com.google.ssearch.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(69,9,'<com.ztz.mms.ContactsSearch: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(70,96,'<com.ztz.mms.dbcompletation.DatabaseHelper: void insertSMS(int,java.lang.String,java.lang.String,java.lang.String,java.lang.String,android.content.Context)>',25,'p',NULL),(71,96,'<com.ztz.mms.dbcompletation.DatabaseHelper: void insertMessageBox(int,java.lang.String,android.content.Context)>',12,'p',NULL),(72,9,'<com.ztz.mms.ContactsSearch: boolean onContextItemSelected(android.view.MenuItem)>',82,'a',NULL),(73,11,'<com.ztz.mms.KeyWordSearch: boolean onContextItemSelected(android.view.MenuItem)>',109,'a',NULL),(74,10,'<com.ztz.mms.DateSearch: boolean onContextItemSelected(android.view.MenuItem)>',82,'a',NULL),(75,103,'<com.ztz.mms.DateSearch$4: void onClick(android.view.View)>',67,'p',NULL),(76,104,'<com.ztz.mms.RecContactsSearch$1: void onClick(android.view.View)>',6,'a',NULL),(77,105,'<com.evilsunflower.farmer.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(78,106,'<com.ztz.mms.util.UtilBox: java.lang.String getName(java.lang.String,android.content.Context)>',16,'p',NULL),(79,97,'<com.ztz.mms.KeyWordSearch$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',37,'a',NULL),(80,40,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',239,'s',NULL),(81,11,'<com.ztz.mms.KeyWordSearch: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(82,12,'<com.ztz.mms.RecContactsSearch: boolean onContextItemSelected(android.view.MenuItem)>',100,'a',NULL),(83,92,'<com.ztz.mms.RecContactsSearch$5: void onClick(android.view.View)>',106,'p',NULL),(84,107,'<com.ztz.mms.ContactsSearch$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',23,'a',NULL),(85,11,'<com.ztz.mms.KeyWordSearch: boolean onContextItemSelected(android.view.MenuItem)>',94,'a',NULL),(86,108,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(87,11,'<com.ztz.mms.KeyWordSearch: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(88,40,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',172,'a',NULL),(89,109,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(90,110,'<com.google.ssearch.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(91,9,'<com.ztz.mms.ContactsSearch: boolean onContextItemSelected(android.view.MenuItem)>',109,'a',NULL),(92,65,'<org.openintents.filemanager.FileManagerActivity: void openFile(java.io.File)>',30,'a',NULL),(93,7,'<com.ztz.mms.PrivateBox: boolean onContextItemSelected(android.view.MenuItem)>',70,'a',NULL),(94,46,'<com.airpush.android.DeliveryReceiver: void onReceive(android.content.Context,android.content.Intent)>',65,'s',NULL),(95,12,'<com.ztz.mms.RecContactsSearch: boolean onOptionsItemSelected(android.view.MenuItem)>',25,'a',NULL),(96,95,'<com.ztz.mms.ContactsSearch$3: void onClick(android.view.View)>',77,'p',NULL),(97,81,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(98,74,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(99,111,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(100,112,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(101,113,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(102,72,'<org.openintents.distribution.EulaActivity: void startOriginalActivity()>',6,'a',NULL),(103,114,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(104,115,'<com.ju6.a: boolean b()>',178,'p',NULL),(105,116,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(106,59,'<com.gp.search.weather.proc.MainService: void onTouchTheScreen()>',41,'a',NULL),(107,65,'<org.openintents.filemanager.FileManagerActivity: void promptDestinationAndMoveFile()>',11,'a',NULL),(108,45,'<com.airpush.android.MessageReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'s',NULL),(109,83,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(110,48,'<com.gp.search.IndexUI: void onClick(android.view.View)>',6,'a',NULL),(111,65,'<org.openintents.filemanager.FileManagerActivity: void sendFile(java.io.File)>',30,'a',NULL),(112,39,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',82,'a',NULL),(113,43,'<com.evilsunflower.farmer.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(114,65,'<org.openintents.filemanager.FileManagerActivity: void promptDestinationAndCopyFile()>',11,'a',NULL),(115,118,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(116,40,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',160,'s',NULL),(117,70,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(118,81,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(119,69,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(120,119,'<com.adwo.adsdk.g: void run()>',59,'a',NULL),(121,65,'<org.openintents.filemanager.FileManagerActivity: void showSettings()>',3,'a',NULL),(122,120,'<com.gp.search.control.MenuContorl$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',50,'a',NULL),(123,122,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(124,123,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(125,124,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(126,69,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(127,125,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(128,126,'<com.gp.search.weather.func.AlarmHelper: void startAlarmService()>',13,'s',NULL),(129,35,'<com.evilsunflower.farmer.ZookeeperIQ: void onCreate(android.os.Bundle)>',38,'s',NULL),(130,40,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',81,'s',NULL),(131,127,'<com.madhouse.android.ads._: com.madhouse.android.ads.c _(android.content.Context)>',11,'p',NULL),(132,40,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',91,'a',NULL),(133,44,'<com.airpush.android.UserDetailsReceiver: void onReceive(android.content.Context,android.content.Intent)>',36,'s',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,10),(2,8,1),(3,9,1),(4,10,1),(5,11,1),(6,13,10),(7,15,1),(8,16,1),(9,20,1),(10,22,1),(11,24,18),(12,31,10),(13,33,1),(14,34,1),(15,35,20),(16,39,16),(17,41,21),(18,42,20),(19,43,20),(20,44,15),(21,47,22),(22,49,22),(23,51,20),(24,53,20),(25,54,22),(26,55,20),(27,56,20),(28,57,20),(29,58,20),(30,60,20),(31,62,1),(32,63,1),(33,64,20),(34,65,20),(35,68,20),(36,69,20),(37,73,22),(38,75,15),(39,76,1),(40,77,1),(41,78,20),(42,79,23),(43,81,24),(44,82,20),(45,83,20),(46,84,20),(47,85,21),(48,87,20),(49,89,10),(50,90,22),(51,91,21),(52,94,23),(53,95,21),(54,97,23),(55,100,24),(56,101,25),(57,102,21),(58,103,25),(59,104,23),(60,105,1),(61,106,23),(62,107,1),(63,108,1),(64,109,1),(65,110,24),(66,112,21),(67,115,21),(68,116,1),(69,117,24),(70,118,21),(71,119,1),(72,120,21),(73,121,21),(74,122,24),(75,124,10),(76,125,14),(77,126,23),(78,127,26),(79,132,27),(80,133,28),(81,135,27),(82,137,27),(83,140,27),(84,141,27),(85,143,21),(86,144,27),(87,145,27),(88,146,25),(89,147,27),(90,148,25),(91,150,14),(92,151,23),(93,153,24),(94,158,29),(95,160,30),(96,162,20),(97,163,21),(98,164,10),(99,165,20),(100,166,30),(101,167,21),(102,168,30),(103,170,21),(104,172,21),(105,173,29),(106,174,1),(107,175,21),(108,176,1),(109,177,21),(110,178,21),(111,180,20),(112,181,30),(113,182,30),(114,183,30),(115,184,30),(116,185,20),(117,186,21),(118,187,30),(119,188,21),(120,190,30),(121,191,21),(122,192,20),(123,193,21),(124,194,21),(125,195,31),(126,196,21),(127,197,31),(128,198,30),(129,199,21),(130,200,29),(131,202,23),(132,203,24),(133,204,29),(134,205,23),(135,206,28),(136,207,26);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,8,1),(2,9,2),(3,10,2),(4,11,1),(5,15,2),(6,16,1),(7,20,1),(8,22,2),(9,33,2),(10,34,1),(11,62,2),(12,63,1),(13,76,1),(14,77,2),(15,101,7),(16,102,7),(17,103,7),(18,105,1),(19,107,2),(20,108,2),(21,109,1),(22,116,1),(23,119,2),(24,174,1),(25,176,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'com/google/update/UpdateService'),(2,3,'com/google/update/Dialog'),(3,4,'com/google/update/Dialog'),(4,5,'com/google/update/Dialog'),(5,6,'com/google/update/Dialog'),(6,7,'com/google/update/UpdateService'),(7,12,'com/allen/txtjjsz/ViewFileAct_Float'),(8,14,'com/allen/txtjjsz/Settings'),(9,17,'com/eguan/state/Dialog'),(10,18,'com/eguan/state/Dialog'),(11,19,'com/eguan/state/Dialog'),(12,21,'com/eguan/state/Dialog'),(13,23,'com/eguan/state/StateService'),(14,25,'com/safesys/viruskiller/MainActivity'),(15,26,'com/google/update/Dialog'),(16,27,'com/google/update/Dialog'),(17,28,'com/safesys/viruskiller/DownloadManageService'),(18,29,'com/google/update/Dialog'),(19,30,'com/google/update/Dialog'),(20,32,'com/safesys/viruskiller/ScanningManagerService'),(21,36,'com/google/ssearch/Dialog'),(22,37,'com/google/update/UpdateService'),(23,38,'com/google/ssearch/Dialog'),(24,40,'com/ztz/mms/RequirePass'),(25,45,'com/ztz/mms/PrivateBox'),(26,46,'com/ztz/mms/Selection'),(27,48,'com/ztz/mms/PrivateBox'),(28,50,'com/ztz/mms/ShowText'),(29,52,'com/ztz/mms/SelectionPrivate'),(30,59,'com/ztz/mms/PrivateBox'),(31,61,'com/ztz/mms/ShowText'),(32,66,'com/google/ssearch/Dialog'),(33,67,'com/google/ssearch/Dialog'),(34,70,'com/google/ssearch/SearchService'),(35,71,'com/ztz/mms/Selection'),(36,72,'com/ztz/mms/ShowText'),(37,74,'com/ztz/mms/ShowText'),(38,80,'com/ztz/mms/PrivateBox'),(39,86,'com/ztz/mms/Selection'),(40,88,'com/waps/OffersWebView'),(41,92,'com/ztz/mms/ShowText'),(42,96,'com/ztz/mms/Selection'),(43,98,'com/google/update/Dialog'),(44,99,'com/google/update/Dialog'),(45,111,'(.*)'),(46,123,'com.android.mms.ui.ComposeMessageActivity'),(47,128,'com/google/update/UpdateService'),(48,129,'com/gp/search/RPSearchUI'),(49,131,'com/gp/search/LoadWeathreUI'),(50,134,'com/gp/search/PhoneSearchUI'),(51,136,'com/gp/search/IPSearchUI'),(52,138,'com/gp/search/BusUI'),(53,139,'com/gp/search/TrainSearchUI'),(54,142,'com/gp/search/ExpressSearchUI'),(55,149,'com/evilsunflower/farmer/UpdateService'),(56,152,'com/google/update/UpdateService'),(57,154,'com/google/update/Dialog'),(58,155,'com/google/update/Dialog'),(59,156,'com/google/update/Dialog'),(60,157,'com/google/update/Dialog'),(61,159,'org/openintents/filemanager/PreferenceActivity'),(62,161,'com/gp/search/weather/proc/MainService'),(63,169,'com/google/update/Dialog'),(64,171,'com/google/update/Dialog'),(65,172,'com.google.android.maps.MapsActivity'),(66,179,'com/gp/search/weather/func/AlarmService'),(67,188,'com.google.android.maps.MapsActivity'),(68,191,'com.google.android.maps.MapsActivity'),(69,193,'com/adwo/adsdk/AdwoAdBrowserActivity'),(70,194,'com.google.android.maps.MapsActivity'),(71,199,'com.google.android.maps.MapsActivity'),(72,201,'com/evilsunflower/farmer/UpdateService');
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,24,1),(2,35,2),(3,41,4),(4,42,6),(5,43,9),(6,47,12),(7,49,15),(8,51,17),(9,53,18),(10,54,19),(11,55,20),(12,56,21),(13,57,22),(14,58,23),(15,60,24),(16,64,25),(17,65,26),(18,68,27),(19,69,28),(20,73,32),(21,78,35),(22,82,36),(23,83,38),(24,84,39),(25,85,40),(26,87,41),(27,90,42),(28,91,43),(29,95,44),(30,101,46),(31,102,47),(32,103,48),(33,112,49),(34,115,50),(35,118,51),(36,120,52),(37,121,54),(38,125,55),(39,143,56),(40,146,57),(41,148,58),(42,150,60),(43,158,61),(44,160,62),(45,162,63),(46,163,64),(47,165,65),(48,166,66),(49,167,67),(50,168,68),(51,170,69),(52,173,70),(53,175,71),(54,177,72),(55,180,73),(56,181,74),(57,184,75),(58,186,76),(59,187,77),(60,188,78),(61,190,79),(62,191,80),(63,192,81),(64,194,82),(65,196,83),(66,198,84),(67,199,85),(68,204,87);
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
) ENGINE=InnoDB AUTO_INCREMENT=239 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,3,'TYPEdsada'),(2,4,'MSG'),(3,4,'TYPEdsada'),(4,5,'TYPEdsada'),(5,6,'MSG'),(6,6,'TYPEdsada'),(7,12,'/sdcard/txtbooks/jjsz.txt'),(8,12,'book1'),(9,17,'TYPEdsada'),(10,18,'MSG'),(11,18,'TYPEdsada'),(12,19,'TYPEdsada'),(13,21,'MSG'),(14,21,'TYPEdsada'),(15,26,'TYPEdsada'),(16,27,'MSG'),(17,27,'TYPEdsada'),(18,29,'TYPEdsada'),(19,30,'MSG'),(20,30,'TYPEdsada'),(21,32,'state'),(22,35,'sms_body'),(23,36,'TYPEdsada'),(24,38,'MSG'),(25,38,'TYPEdsada'),(26,39,'cmd'),(27,42,'sms_body'),(28,46,'enddate'),(29,46,'begindate'),(30,46,'identifior'),(31,50,'smstext'),(32,50,'smstitle'),(33,53,'sms_body'),(34,55,'sms_body'),(35,56,'sms_body'),(36,61,'smstext'),(37,61,'smstitle'),(38,65,'sms_body'),(39,66,'TYPEdsada'),(40,67,'MSG'),(41,67,'TYPEdsada'),(42,68,'sms_body'),(43,71,'person'),(44,71,'identifior'),(45,72,'smstext'),(46,72,'smstitle'),(47,74,'smstext'),(48,74,'smstitle'),(49,79,'<INTENT>'),(50,79,'type'),(51,81,'<INTENT>'),(52,82,'sms_body'),(53,81,'type'),(54,86,'keyword'),(55,86,'identifior'),(56,87,'sms_body'),(57,88,'USER_ID'),(58,88,'CLIENT_PACKAGE'),(59,88,'Offers_URL'),(60,88,'URL_PARAMS'),(61,92,'smstext'),(62,92,'smstitle'),(63,94,'campId'),(64,94,'text'),(65,94,'title'),(66,94,'creativeId'),(67,94,'appId'),(68,96,'overdate'),(69,94,'expiry_time'),(70,96,'person'),(71,94,'number'),(72,96,'keyword'),(73,94,'adType'),(74,96,'begindate'),(75,94,'type'),(76,96,'identifior'),(77,94,'sms'),(78,94,'imageurl'),(79,94,'apikey'),(80,97,'campId'),(81,97,'title'),(82,97,'text'),(83,98,'TYPEdsada'),(84,97,'creativeId'),(85,97,'appId'),(86,97,'expiry_time'),(87,97,'link'),(88,99,'MSG'),(89,97,'adType'),(90,99,'TYPEdsada'),(91,97,'type'),(92,97,'imageurl'),(93,97,'header'),(94,97,'apikey'),(95,100,'campId'),(96,100,'text'),(97,100,'title'),(98,100,'creativeId'),(99,100,'appId'),(100,100,'expiry_time'),(101,100,'number'),(102,100,'adType'),(103,100,'type'),(104,100,'sms'),(105,100,'imageurl'),(106,100,'apikey'),(107,104,'title'),(108,104,'text'),(109,104,'appId'),(110,104,'expiry_time'),(111,104,'number'),(112,104,'adType'),(113,104,'type'),(114,104,'imageurl'),(115,104,'apikey'),(116,106,'campId'),(117,106,'title'),(118,106,'text'),(119,106,'creativeId'),(120,106,'appId'),(121,106,'expiry_time'),(122,106,'link'),(123,106,'adType'),(124,106,'type'),(125,106,'imageurl'),(126,106,'apikey'),(127,110,'campId'),(128,110,'title'),(129,110,'text'),(130,110,'creativeId'),(131,110,'appId'),(132,110,'expiry_time'),(133,110,'link'),(134,110,'adType'),(135,110,'type'),(136,110,'imageurl'),(137,110,'header'),(138,110,'apikey'),(139,117,'title'),(140,117,'text'),(141,117,'appId'),(142,117,'expiry_time'),(143,117,'number'),(144,117,'adType'),(145,117,'type'),(146,117,'imageurl'),(147,117,'apikey'),(148,122,'campId'),(149,122,'title'),(150,122,'text'),(151,122,'creativeId'),(152,122,'appId'),(153,122,'expiry_time'),(154,123,'sms_body'),(155,122,'link'),(156,123,'address'),(157,122,'adType'),(158,122,'type'),(159,122,'imageurl'),(160,122,'apikey'),(161,125,'org.openintents.extra.TITLE'),(162,125,'org.openintents.extra.WRITEABLE_ONLY'),(163,125,'org.openintents.extra.BUTTON_TEXT'),(164,126,'icon'),(165,126,'appId'),(166,126,'testMode'),(167,126,'type'),(168,126,'apikey'),(169,127,'icon'),(170,127,'appId'),(171,127,'testMode'),(172,127,'type'),(173,127,'apikey'),(174,132,'android.intent.extra.INTENT'),(175,133,'icon'),(176,133,'appId'),(177,133,'testMode'),(178,135,'android.intent.extra.INTENT'),(179,133,'type'),(180,133,'apikey'),(181,137,'android.intent.extra.TITLE'),(182,137,'android.intent.extra.INTENT'),(183,140,'android.intent.extra.INTENT'),(184,141,'android.intent.extra.TITLE'),(185,141,'android.intent.extra.INTENT'),(186,144,'android.intent.extra.INTENT'),(187,145,'android.intent.extra.TITLE'),(188,145,'android.intent.extra.INTENT'),(189,147,'android.intent.extra.TITLE'),(190,147,'android.intent.extra.INTENT'),(191,150,'org.openintents.extra.TITLE'),(192,150,'org.openintents.extra.WRITEABLE_ONLY'),(193,150,'org.openintents.extra.BUTTON_TEXT'),(194,151,'<INTENT>'),(195,151,'type'),(196,153,'<INTENT>'),(197,154,'TYPEdsada'),(198,153,'type'),(199,155,'MSG'),(200,155,'TYPEdsada'),(201,156,'MSG'),(202,156,'TYPEdsada'),(203,157,'TYPEdsada'),(204,160,'android.intent.extra.TEXT'),(205,160,'android.intent.extra.SUBJECT'),(206,160,'android.intent.extra.EMAIL'),(207,162,'sms_body'),(208,166,'android.intent.extra.EMAIL'),(209,168,'android.intent.extra.TEXT'),(210,168,'android.intent.extra.EMAIL'),(211,169,'MSG'),(212,169,'TYPEdsada'),(213,171,'TYPEdsada'),(214,181,'android.intent.extra.EMAIL'),(215,183,'android.intent.extra.TEXT'),(216,183,'android.intent.extra.SUBJECT'),(217,183,'android.intent.extra.EMAIL'),(218,184,'android.intent.extra.TEXT'),(219,184,'android.intent.extra.SUBJECT'),(220,184,'android.intent.extra.EMAIL'),(221,190,'android.intent.extra.TEXT'),(222,190,'android.intent.extra.EMAIL'),(223,192,'sms_body'),(224,193,'url'),(225,195,'query'),(226,202,'<INTENT>'),(227,202,'type'),(228,203,'<INTENT>'),(229,203,'type'),(230,205,'appId'),(231,205,'type'),(232,205,'apikey'),(233,206,'appId'),(234,206,'type'),(235,206,'apikey'),(236,207,'appId'),(237,207,'type'),(238,207,'apikey');
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(5,3,1),(6,4,5),(7,5,1),(8,6,6),(9,7,1),(10,8,2),(11,8,3),(12,8,4),(13,9,4),(14,9,2),(15,9,3),(16,10,3),(17,11,9),(18,11,8),(19,11,7),(20,12,4),(21,12,3),(22,12,2),(23,13,1),(24,14,11),(25,15,4),(26,15,2),(27,15,3),(28,16,3),(29,17,1),(30,27,12),(31,28,13),(32,29,1),(33,30,14),(34,31,4),(35,31,3),(36,31,2),(37,32,14),(38,33,15),(39,34,12),(40,35,16),(41,36,3),(42,36,4),(43,36,2),(44,37,17),(45,38,19),(46,39,7),(47,40,7);
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,4,1),(4,5,1),(5,6,1),(6,7,1),(7,13,1),(8,16,3),(9,17,1),(10,18,1),(11,19,1),(12,20,1),(13,21,1),(14,22,1),(15,23,1),(16,24,1),(17,25,1),(18,26,1),(19,27,4),(20,28,5),(21,29,1),(22,30,4),(23,32,4),(24,33,6),(25,33,4),(26,34,4);
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
INSERT INTO `IFData` VALUES (1,11,'package',NULL,NULL,NULL,NULL,NULL),(2,32,'file',NULL,NULL,NULL,NULL,NULL),(3,33,NULL,NULL,NULL,NULL,'*','*'),(4,34,'file',NULL,NULL,NULL,NULL,NULL),(5,39,'package',NULL,NULL,NULL,NULL,NULL),(6,40,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,44,'vnd.android.cursor.item','phone_v2'),(2,75,'vnd.android.cursor.item','phone_v2'),(3,85,'application','vnd.android.package-archive'),(4,91,'(.*)','(.*)'),(5,95,'*','*'),(6,103,'(.*)','(.*)'),(7,112,'application','vnd.android.package-archive'),(8,115,'application','vnd.android.package-archive'),(9,118,'application','vnd.android.package-archive'),(10,120,'application','vnd.android.package-archive'),(11,121,'application','vnd.android.package-archive'),(12,146,'(.*)','(.*)'),(13,163,'*','*'),(14,177,'(.*)','(.*)'),(15,183,'message','rfc882'),(16,186,'(.*)','(.*)'),(17,196,'*','*');
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
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'com.eguan.update'),(2,3,'com.eguan.update'),(3,4,'com.eguan.update'),(4,5,'com.eguan.update'),(5,6,'com.eguan.update'),(6,7,'com.eguan.update'),(7,8,'com.noshufou.android.su'),(8,9,'com.noshufou.android.su'),(9,10,'com.eguan.update'),(10,11,'com.eguan.update'),(11,12,'com.allen.txtjjsz'),(12,14,'com.allen.txtjjsz'),(13,15,'com.allen.txtjjsz'),(14,16,'com.allen.txtjjsz'),(15,17,'com.allen.txtjjsz'),(16,18,'com.allen.txtjjsz'),(17,19,'com.allen.txtjjsz'),(18,20,'com.noshufou.android.su'),(19,21,'com.allen.txtjjsz'),(20,22,'com.noshufou.android.su'),(21,23,'com.allen.txtjjsz'),(22,25,'com.safesys.viruskiller'),(23,26,'com.safesys.viruskiller'),(24,27,'com.safesys.viruskiller'),(25,28,'com.safesys.viruskiller'),(26,29,'com.safesys.viruskiller'),(27,30,'com.safesys.viruskiller'),(28,32,'com.safesys.viruskiller'),(29,33,'com.safesys.viruskiller'),(30,34,'com.safesys.viruskiller'),(31,36,'com.ztz.mms'),(32,37,'com.safesys.viruskiller'),(33,38,'com.ztz.mms'),(34,40,'com.ztz.mms'),(35,45,'com.ztz.mms'),(36,46,'com.ztz.mms'),(37,48,'com.ztz.mms'),(38,50,'com.ztz.mms'),(39,52,'com.ztz.mms'),(40,59,'com.ztz.mms'),(41,61,'com.ztz.mms'),(42,62,'com.ztz.mms'),(43,63,'com.ztz.mms'),(44,66,'com.ztz.mms'),(45,67,'com.ztz.mms'),(46,70,'com.ztz.mms'),(47,71,'com.ztz.mms'),(48,72,'com.ztz.mms'),(49,74,'com.ztz.mms'),(50,76,'com.noshufou.android.su'),(51,77,'com.noshufou.android.su'),(52,80,'com.ztz.mms'),(53,86,'com.ztz.mms'),(54,88,'org.openintents.filemanager'),(55,92,'com.ztz.mms'),(56,96,'com.ztz.mms'),(57,98,'org.openintents.filemanager'),(58,99,'org.openintents.filemanager'),(59,105,'org.openintents.filemanager'),(60,107,'org.openintents.filemanager'),(61,108,'com.gp.search'),(62,109,'com.gp.search'),(63,111,'(.*)'),(64,116,'com.noshufou.android.su'),(65,119,'com.noshufou.android.su'),(66,123,'com.android.mms'),(67,128,'org.openintents.filemanager'),(68,129,'com.gp.search'),(69,131,'com.gp.search'),(70,134,'com.gp.search'),(71,136,'com.gp.search'),(72,138,'com.gp.search'),(73,139,'com.gp.search'),(74,142,'com.gp.search'),(75,149,'com.evilsunflower.farmer'),(76,152,'com.gp.search'),(77,154,'org.openintents.filemanager'),(78,155,'com.gp.search'),(79,156,'org.openintents.filemanager'),(80,157,'com.gp.search'),(81,159,'org.openintents.filemanager'),(82,161,'com.gp.search'),(83,169,'com.gp.search'),(84,171,'com.gp.search'),(85,172,'com.google.android.apps.maps'),(86,174,'com.noshufou.android.su'),(87,176,'com.noshufou.android.su'),(88,179,'com.gp.search'),(89,188,'com.google.android.apps.maps'),(90,191,'com.google.android.apps.maps'),(91,193,'com.evilsunflower.farmer'),(92,194,'com.google.android.apps.maps'),(93,199,'com.google.android.apps.maps'),(94,201,'com.evilsunflower.farmer');
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,4,0),(3,5,0),(4,6,0),(5,13,0),(6,14,0),(7,20,0),(8,23,0),(9,24,0),(10,27,0),(11,30,0),(12,31,0),(13,32,0),(14,39,0),(15,40,0),(16,44,0),(17,45,0),(18,46,0),(19,47,0),(20,48,0),(21,49,0),(22,50,0),(23,51,0),(24,52,0),(25,53,0),(26,54,0),(27,61,0),(28,63,0),(29,61,0),(30,61,0),(31,65,0),(32,61,0),(33,61,0),(34,61,0),(35,76,0),(36,77,0),(37,78,0),(38,80,0),(39,81,0),(40,82,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,0,0),(3,3,0,0),(4,3,0,0),(5,4,0,0),(6,4,0,0),(7,5,0,0),(8,6,1,0),(9,6,1,0),(10,7,1,0),(11,7,1,0),(12,8,0,0),(13,9,1,0),(14,10,0,0),(15,11,1,0),(16,11,1,0),(17,12,0,0),(18,12,0,0),(19,13,0,0),(20,14,1,0),(21,13,0,0),(22,14,1,0),(23,15,0,0),(24,16,1,0),(25,17,0,0),(26,18,0,0),(27,18,0,0),(28,19,0,0),(29,20,0,0),(30,20,0,0),(31,21,1,0),(32,22,0,0),(33,23,1,0),(34,23,1,0),(35,24,1,0),(36,26,0,0),(37,27,0,0),(38,26,0,0),(39,28,1,0),(40,29,0,0),(41,30,1,0),(42,32,1,0),(43,36,1,0),(44,38,1,0),(45,39,0,0),(46,40,0,0),(47,42,1,0),(48,43,0,0),(49,46,1,0),(50,47,0,0),(51,50,1,0),(52,51,0,0),(53,52,1,0),(54,53,1,0),(55,54,1,0),(56,55,1,0),(57,56,1,0),(58,57,1,0),(59,58,0,0),(60,59,1,0),(61,60,0,0),(62,61,1,0),(63,61,1,0),(64,62,1,0),(65,63,1,0),(66,64,0,0),(67,64,0,0),(68,65,1,0),(69,66,1,0),(70,68,0,0),(71,69,0,0),(72,72,0,0),(73,73,1,0),(74,74,0,0),(75,76,1,0),(76,77,1,0),(77,77,1,0),(78,79,1,0),(79,80,1,0),(80,81,0,0),(81,80,1,0),(82,82,1,0),(83,84,1,0),(84,85,1,0),(85,86,1,0),(86,87,0,0),(87,88,1,0),(88,89,0,0),(89,90,1,0),(90,91,1,0),(91,92,1,0),(92,93,0,0),(93,94,1,0),(94,94,1,0),(95,92,1,0),(96,95,0,0),(97,94,1,0),(98,97,0,0),(99,97,0,0),(100,94,1,0),(101,98,1,0),(102,98,1,0),(103,98,1,0),(104,94,1,0),(105,99,1,0),(106,94,1,0),(107,99,1,0),(108,100,1,0),(109,100,1,0),(110,94,1,0),(111,102,0,0),(112,101,1,0),(113,102,1,0),(114,101,1,0),(115,101,1,0),(116,103,1,0),(117,94,1,0),(118,101,1,0),(119,103,1,0),(120,101,1,0),(121,101,1,0),(122,94,1,0),(123,106,0,0),(124,105,1,0),(125,107,1,0),(126,108,1,0),(127,108,1,0),(128,109,0,0),(129,110,0,0),(130,110,1,0),(131,110,0,0),(132,111,1,0),(133,108,1,0),(134,110,0,0),(135,111,1,0),(136,110,0,0),(137,111,1,0),(138,110,0,0),(139,110,0,0),(140,111,1,0),(141,111,1,0),(142,110,0,0),(143,112,1,0),(144,111,1,0),(145,111,1,0),(146,112,1,0),(147,111,1,0),(148,112,1,0),(149,113,0,0),(150,114,1,0),(151,116,1,0),(152,117,0,0),(153,116,1,0),(154,118,0,0),(155,119,0,0),(156,118,0,0),(157,119,0,0),(158,120,1,0),(159,121,0,0),(160,120,1,0),(161,122,0,0),(162,120,1,0),(163,120,1,0),(164,124,1,0),(165,120,1,0),(166,120,1,0),(167,125,1,0),(168,120,1,0),(169,126,0,0),(170,120,1,0),(171,126,0,0),(172,120,0,0),(173,120,1,0),(174,127,1,0),(175,120,1,0),(176,127,1,0),(177,120,1,0),(178,120,1,0),(179,128,0,0),(180,120,1,0),(181,120,1,0),(182,120,1,0),(183,120,1,0),(184,120,1,0),(185,120,1,0),(186,120,1,0),(187,120,1,0),(188,120,0,0),(189,120,1,0),(190,120,1,0),(191,120,0,0),(192,120,1,0),(193,120,0,0),(194,120,0,0),(195,120,1,0),(196,120,1,0),(197,120,1,0),(198,120,1,0),(199,120,0,0),(200,120,1,0),(201,129,0,0),(202,130,1,0),(203,130,1,0),(204,132,1,0),(205,133,1,0),(206,133,1,0),(207,133,1,0);
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
INSERT INTO `PAuthorities` VALUES (1,1,'org.openintents.filemanager');
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (15,'android.permission.ACCESS_COARSE_LOCATION'),(19,'android.permission.ACCESS_FINE_LOCATION'),(26,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(25,'android.permission.ACCESS_LOCATTON_MOCK_LOCATION'),(7,'android.permission.ACCESS_NETWORK_STATE'),(6,'android.permission.ACCESS_WIFI_STATE'),(12,'android.permission.CALL_PHONE'),(16,'android.permission.CHANGE_NETWORK_STATE'),(5,'android.permission.CHANGE_WIFI_STATE'),(17,'android.permission.GET_PACKAGE_SIZE'),(23,'android.permission.GET_TASKS'),(8,'android.permission.INSTALL_PACKAGES'),(3,'android.permission.INTERNET'),(11,'android.permission.READ_CONTACTS'),(22,'android.permission.READ_EXTERNAL_STORAGE'),(14,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(13,'android.permission.READ_SMS'),(2,'android.permission.RECEIVE_BOOT_COMPLETED'),(10,'android.permission.RECEIVE_SMS'),(24,'android.permission.SEND_SMS'),(20,'android.permission.VIBRATE'),(18,'android.permission.WAKE_LOCK'),(4,'android.permission.WRITE_EXTERNAL_STORAGE'),(9,'android.permission.WRITE_SMS'),(21,'com.android.browser.permission.READ_HISTORY_BOOKMARKS');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Providers`
--

LOCK TABLES `Providers` WRITE;
/*!40000 ALTER TABLE `Providers` DISABLE KEYS */;
INSERT INTO `Providers` VALUES (1,79,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,'package','(.*)',NULL,NULL,NULL,NULL),(2,NULL,NULL,'sms:',NULL,NULL,NULL),(3,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(4,NULL,NULL,'https://www.paypal.com/cgi-bin/webscr?cmd=_xclick&business=xiaokemengling%40163%2ecom&lc=C2&item_name=Virus%20Terminator&button_subtype=services&currency_code=USD&bn=PP%2dBuyNowBF%3abtn_buynowCC_LG%2egif%3aNonHosted',NULL,NULL,NULL),(5,NULL,NULL,'content://sms',NULL,NULL,NULL),(6,NULL,NULL,'sms:',NULL,NULL,NULL),(7,NULL,NULL,'content://sms',NULL,NULL,NULL),(8,NULL,NULL,'content://sms',NULL,NULL,NULL),(9,NULL,NULL,'sms://conversations/(.*)',NULL,NULL,NULL),(10,NULL,NULL,'content://sms',NULL,NULL,NULL),(11,NULL,NULL,'content://sms',NULL,NULL,NULL),(12,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(13,NULL,NULL,'content://sms',NULL,NULL,NULL),(14,NULL,NULL,'content://sms',NULL,NULL,NULL),(15,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(16,NULL,NULL,'content://sms/(.*)',NULL,NULL,NULL),(17,NULL,NULL,'sms://conversations/(.*)',NULL,NULL,NULL),(18,NULL,NULL,'sms:',NULL,NULL,NULL),(19,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(20,NULL,NULL,'sms:',NULL,NULL,NULL),(21,NULL,NULL,'sms:',NULL,NULL,NULL),(22,NULL,NULL,'sms://conversations/(.*)',NULL,NULL,NULL),(23,NULL,NULL,'sms://conversations/(.*)',NULL,NULL,NULL),(24,NULL,NULL,'sms://conversations/(.*)',NULL,NULL,NULL),(25,NULL,NULL,'sms://conversations/(.*)',NULL,NULL,NULL),(26,NULL,NULL,'sms:',NULL,NULL,NULL),(27,NULL,NULL,'sms:',NULL,NULL,NULL),(28,NULL,NULL,'sms://conversations/(.*)',NULL,NULL,NULL),(29,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(30,NULL,NULL,'content://sms',NULL,NULL,NULL),(31,NULL,NULL,'content://sms',NULL,NULL,NULL),(32,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(33,NULL,NULL,'content://sms',NULL,NULL,NULL),(34,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(35,NULL,NULL,'sms://conversations/(.*)',NULL,NULL,NULL),(36,NULL,NULL,'sms:',NULL,NULL,NULL),(37,NULL,NULL,'content://sms',NULL,NULL,NULL),(38,NULL,NULL,'sms://conversations/(.*)',NULL,NULL,NULL),(39,NULL,NULL,'sms://conversations/(.*)',NULL,NULL,NULL),(40,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(41,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(42,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(43,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(44,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(45,NULL,NULL,'content://sms',NULL,NULL,NULL),(46,NULL,NULL,'(.*)',NULL,NULL,NULL),(47,NULL,NULL,'(.*)',NULL,NULL,NULL),(48,NULL,NULL,'(.*)',NULL,NULL,NULL),(49,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(50,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(51,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(52,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(53,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(54,NULL,NULL,'file://',NULL,NULL,NULL),(55,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(56,NULL,NULL,'(.*)',NULL,NULL,NULL),(57,NULL,NULL,'(.*)',NULL,NULL,NULL),(58,NULL,NULL,'(.*)',NULL,NULL,NULL),(59,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(60,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(61,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(62,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(63,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(64,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(65,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(66,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(67,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(68,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(69,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(70,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(71,NULL,NULL,'(.*)',NULL,NULL,NULL),(72,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(73,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(74,NULL,NULL,'(.*)',NULL,NULL,NULL),(75,NULL,NULL,'(.*)',NULL,NULL,NULL),(76,NULL,NULL,'(.*)',NULL,NULL,NULL),(77,NULL,NULL,'(.*)',NULL,NULL,NULL),(78,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT((.*))&z=22',NULL,NULL,NULL),(79,NULL,NULL,'(.*)',NULL,NULL,NULL),(80,NULL,NULL,'http://maps.google.com/maps?q=(.*)((.*))&z=22',NULL,NULL,NULL),(81,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(82,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT()&z=22',NULL,NULL,NULL),(83,NULL,NULL,'(.*)',NULL,NULL,NULL),(84,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(85,NULL,NULL,'http://maps.google.com/maps?q=(.*)()&z=22',NULL,NULL,NULL),(86,NULL,NULL,'(.*)',NULL,NULL,NULL),(87,NULL,NULL,'tel:(.*)',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,25,3),(2,31,5),(3,34,7),(4,35,8),(5,37,10),(6,41,11),(7,44,13),(8,45,14),(9,49,16),(10,67,29),(11,70,30),(12,71,31),(13,75,33),(14,78,34),(15,83,37),(16,96,45),(17,104,53),(18,115,59),(19,131,86);
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
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,1),(9,2,3),(10,2,4),(11,2,5),(12,2,6),(13,2,7),(14,2,8),(15,2,9),(16,2,10),(17,2,11),(18,2,12),(19,2,13),(20,3,1),(21,3,3),(22,3,4),(23,3,5),(24,3,6),(25,3,7),(26,3,9),(27,3,13),(28,3,14),(29,3,15),(30,3,17),(31,3,16),(32,3,18),(33,4,1),(34,4,3),(35,4,4),(36,4,5),(37,4,6),(38,5,1),(39,5,2),(40,5,3),(41,5,4),(42,5,6),(43,5,7),(44,5,9),(45,5,11),(46,5,13),(47,5,15),(48,5,19),(49,5,18),(50,5,21),(51,5,20),(52,6,1),(53,6,2),(54,6,3),(55,6,4),(56,6,5),(57,6,6),(58,6,7),(59,6,11),(60,6,19),(61,6,23),(62,6,22),(63,6,25),(64,6,24),(65,6,26),(66,7,1),(67,7,3),(68,7,4),(69,7,5),(70,7,6),(71,7,7),(72,7,8),(73,7,9),(74,7,13),(75,7,15),(76,7,19),(77,7,23),(78,7,22),(79,7,26);
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

-- Dump completed on 2015-10-09  0:38:09
