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
) ENGINE=InnoDB AUTO_INCREMENT=1645 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,129,53,2,NULL),(2,131,46,2,NULL),(3,134,51,2,NULL),(4,136,48,2,NULL),(5,138,52,2,NULL),(6,139,49,2,NULL),(7,142,50,2,NULL),(8,130,1,2,NULL),(9,130,4,2,NULL),(10,130,5,2,NULL),(11,130,6,2,NULL),(12,49,45,2,NULL),(13,68,45,2,NULL),(14,42,45,2,NULL),(15,90,45,2,NULL),(16,54,45,2,NULL),(17,65,45,2,NULL),(18,35,45,2,NULL),(19,73,45,2,NULL),(20,47,45,2,NULL),(21,82,45,2,NULL),(22,130,14,2,NULL),(23,130,23,2,NULL),(24,130,13,2,NULL),(25,39,45,2,NULL),(26,130,24,2,NULL),(27,130,27,2,NULL),(28,130,76,2,NULL),(29,130,78,2,NULL),(30,130,80,2,NULL),(31,130,20,2,NULL),(32,130,31,2,NULL),(33,130,32,2,NULL),(34,143,45,2,NULL),(35,148,45,2,NULL),(36,79,45,2,NULL),(37,81,45,2,NULL),(38,87,45,2,NULL),(39,151,45,2,NULL),(40,153,45,2,NULL),(41,202,45,2,NULL),(42,203,45,2,NULL),(43,204,45,2,NULL),(44,130,39,2,NULL),(45,130,40,2,NULL),(46,205,45,2,NULL),(47,206,45,2,NULL),(48,207,45,2,NULL),(49,126,45,2,NULL),(50,127,45,2,NULL),(51,133,45,2,NULL),(52,93,45,2,NULL),(53,94,45,2,NULL),(54,97,45,2,NULL),(55,100,45,2,NULL),(56,104,45,2,NULL),(57,106,45,2,NULL),(58,110,45,2,NULL),(59,117,45,2,NULL),(60,122,45,2,NULL),(61,130,44,2,NULL),(62,130,46,2,NULL),(63,130,47,2,NULL),(64,130,48,2,NULL),(65,130,49,2,NULL),(66,130,50,2,NULL),(67,130,51,2,NULL),(68,130,52,2,NULL),(69,130,53,2,NULL),(70,130,54,2,NULL),(71,130,63,2,NULL),(72,130,65,2,NULL),(73,130,61,2,NULL),(74,132,45,2,NULL),(75,135,45,2,NULL),(76,137,45,2,NULL),(77,140,45,2,NULL),(78,141,45,2,NULL),(79,144,45,2,NULL),(80,145,45,2,NULL),(81,147,45,2,NULL),(82,49,5,2,NULL),(83,113,45,2,NULL),(84,68,5,2,NULL),(85,101,45,2,NULL),(86,42,5,2,NULL),(87,102,45,2,NULL),(88,90,5,2,NULL),(89,130,77,2,NULL),(90,28,22,2,NULL),(91,54,5,2,NULL),(92,49,46,2,NULL),(93,39,1,2,NULL),(94,65,5,2,NULL),(95,68,46,2,NULL),(96,39,4,2,NULL),(97,42,46,2,NULL),(98,35,5,2,NULL),(99,90,46,2,NULL),(100,39,5,2,NULL),(101,73,5,2,NULL),(102,54,46,2,NULL),(103,39,6,2,NULL),(104,65,46,2,NULL),(105,47,5,2,NULL),(106,49,13,2,NULL),(107,35,46,2,NULL),(108,82,5,2,NULL),(109,68,13,2,NULL),(110,73,46,2,NULL),(111,143,5,2,NULL),(112,42,13,2,NULL),(113,47,46,2,NULL),(114,148,5,2,NULL),(115,82,46,2,NULL),(116,79,5,2,NULL),(117,90,13,2,NULL),(118,39,46,2,NULL),(119,54,13,2,NULL),(120,81,5,2,NULL),(121,143,46,2,NULL),(122,65,13,2,NULL),(123,148,46,2,NULL),(124,87,5,2,NULL),(125,35,13,2,NULL),(126,79,46,2,NULL),(127,151,5,2,NULL),(128,73,13,2,NULL),(129,81,46,2,NULL),(130,153,5,2,NULL),(131,87,46,2,NULL),(132,47,13,2,NULL),(133,202,5,2,NULL),(134,151,46,2,NULL),(135,82,13,2,NULL),(136,203,5,2,NULL),(137,153,46,2,NULL),(138,39,14,2,NULL),(139,204,5,2,NULL),(140,202,46,2,NULL),(141,39,23,2,NULL),(142,205,5,2,NULL),(143,203,46,2,NULL),(144,39,24,2,NULL),(145,206,5,2,NULL),(146,204,46,2,NULL),(147,39,27,2,NULL),(148,207,5,2,NULL),(149,205,46,2,NULL),(150,39,76,2,NULL),(151,126,5,2,NULL),(152,206,46,2,NULL),(153,39,78,2,NULL),(154,127,5,2,NULL),(155,207,46,2,NULL),(156,39,80,2,NULL),(157,133,5,2,NULL),(158,126,46,2,NULL),(159,39,20,2,NULL),(160,93,5,2,NULL),(161,127,46,2,NULL),(162,39,31,2,NULL),(163,94,5,2,NULL),(164,133,46,2,NULL),(165,39,32,2,NULL),(166,97,5,2,NULL),(167,93,46,2,NULL),(168,143,13,2,NULL),(169,100,5,2,NULL),(170,94,46,2,NULL),(171,104,5,2,NULL),(172,148,13,2,NULL),(173,97,46,2,NULL),(174,106,5,2,NULL),(175,79,13,2,NULL),(176,100,46,2,NULL),(177,110,5,2,NULL),(178,81,13,2,NULL),(179,104,46,2,NULL),(180,117,5,2,NULL),(181,87,13,2,NULL),(182,106,46,2,NULL),(183,122,5,2,NULL),(184,151,13,2,NULL),(185,110,46,2,NULL),(186,153,13,2,NULL),(187,132,5,2,NULL),(188,117,46,2,NULL),(189,135,5,2,NULL),(190,202,13,2,NULL),(191,122,46,2,NULL),(192,137,5,2,NULL),(193,203,13,2,NULL),(194,132,46,2,NULL),(195,140,5,2,NULL),(196,204,13,2,NULL),(197,135,46,2,NULL),(198,141,5,2,NULL),(199,39,39,2,NULL),(200,137,46,2,NULL),(201,144,5,2,NULL),(202,39,40,2,NULL),(203,140,46,2,NULL),(204,145,5,2,NULL),(205,205,13,2,NULL),(206,141,46,2,NULL),(207,147,5,2,NULL),(208,206,13,2,NULL),(209,144,46,2,NULL),(210,113,5,2,NULL),(211,207,13,2,NULL),(212,145,46,2,NULL),(213,101,5,2,NULL),(214,126,13,2,NULL),(215,147,46,2,NULL),(216,102,5,2,NULL),(217,127,13,2,NULL),(218,113,46,2,NULL),(219,49,6,2,NULL),(220,133,13,2,NULL),(221,101,46,2,NULL),(222,68,6,2,NULL),(223,93,13,2,NULL),(224,102,46,2,NULL),(225,94,13,2,NULL),(226,42,6,2,NULL),(227,49,47,2,NULL),(228,90,6,2,NULL),(229,97,13,2,NULL),(230,68,47,2,NULL),(231,54,6,2,NULL),(232,100,13,2,NULL),(233,42,47,2,NULL),(234,65,6,2,NULL),(235,104,13,2,NULL),(236,90,47,2,NULL),(237,35,6,2,NULL),(238,106,13,2,NULL),(239,54,47,2,NULL),(240,73,6,2,NULL),(241,110,13,2,NULL),(242,65,47,2,NULL),(243,47,6,2,NULL),(244,117,13,2,NULL),(245,35,47,2,NULL),(246,82,6,2,NULL),(247,122,13,2,NULL),(248,73,47,2,NULL),(249,143,6,2,NULL),(250,39,44,2,NULL),(251,47,47,2,NULL),(252,148,6,2,NULL),(253,39,47,2,NULL),(254,82,47,2,NULL),(255,79,6,2,NULL),(256,39,48,2,NULL),(257,143,47,2,NULL),(258,81,6,2,NULL),(259,39,49,2,NULL),(260,148,47,2,NULL),(261,87,6,2,NULL),(262,39,50,2,NULL),(263,79,47,2,NULL),(264,151,6,2,NULL),(265,39,51,2,NULL),(266,81,47,2,NULL),(267,153,6,2,NULL),(268,39,52,2,NULL),(269,87,47,2,NULL),(270,202,6,2,NULL),(271,39,53,2,NULL),(272,151,47,2,NULL),(273,203,6,2,NULL),(274,39,54,2,NULL),(275,153,47,2,NULL),(276,204,6,2,NULL),(277,39,63,2,NULL),(278,202,47,2,NULL),(279,205,6,2,NULL),(280,39,65,2,NULL),(281,203,47,2,NULL),(282,206,6,2,NULL),(283,39,61,2,NULL),(284,204,47,2,NULL),(285,207,6,2,NULL),(286,132,13,2,NULL),(287,205,47,2,NULL),(288,126,6,2,NULL),(289,135,13,2,NULL),(290,206,47,2,NULL),(291,137,13,2,NULL),(292,127,6,2,NULL),(293,207,47,2,NULL),(294,140,13,2,NULL),(295,133,6,2,NULL),(296,126,47,2,NULL),(297,141,13,2,NULL),(298,93,6,2,NULL),(299,127,47,2,NULL),(300,94,6,2,NULL),(301,144,13,2,NULL),(302,133,47,2,NULL),(303,97,6,2,NULL),(304,145,13,2,NULL),(305,93,47,2,NULL),(306,147,13,2,NULL),(307,100,6,2,NULL),(308,94,47,2,NULL),(309,104,6,2,NULL),(310,113,13,2,NULL),(311,97,47,2,NULL),(312,106,6,2,NULL),(313,101,13,2,NULL),(314,100,47,2,NULL),(315,110,6,2,NULL),(316,102,13,2,NULL),(317,104,47,2,NULL),(318,117,6,2,NULL),(319,39,77,2,NULL),(320,106,47,2,NULL),(321,26,2,2,NULL),(322,122,6,2,NULL),(323,110,47,2,NULL),(324,26,15,2,NULL),(325,132,6,2,NULL),(326,117,47,2,NULL),(327,26,58,2,NULL),(328,135,6,2,NULL),(329,122,47,2,NULL),(330,26,74,2,NULL),(331,137,6,2,NULL),(332,132,47,2,NULL),(333,140,6,2,NULL),(334,27,2,2,NULL),(335,135,47,2,NULL),(336,141,6,2,NULL),(337,27,15,2,NULL),(338,137,47,2,NULL),(339,144,6,2,NULL),(340,27,58,2,NULL),(341,140,47,2,NULL),(342,145,6,2,NULL),(343,27,74,2,NULL),(344,141,47,2,NULL),(345,29,2,2,NULL),(346,147,6,2,NULL),(347,144,47,2,NULL),(348,29,15,2,NULL),(349,113,6,2,NULL),(350,145,47,2,NULL),(351,29,58,2,NULL),(352,101,6,2,NULL),(353,147,47,2,NULL),(354,29,74,2,NULL),(355,102,6,2,NULL),(356,113,47,2,NULL),(357,52,16,2,NULL),(358,30,2,2,NULL),(359,101,47,2,NULL),(360,92,6,2,NULL),(361,102,47,2,NULL),(362,30,15,2,NULL),(363,49,1,2,NULL),(364,49,48,2,NULL),(365,30,58,2,NULL),(366,68,1,2,NULL),(367,68,48,2,NULL),(368,30,74,2,NULL),(369,49,4,2,NULL),(370,42,48,2,NULL),(371,25,13,2,NULL),(372,68,4,2,NULL),(373,90,48,2,NULL),(374,32,19,2,NULL),(375,49,14,2,NULL),(376,54,48,2,NULL),(377,37,3,2,NULL),(378,68,14,2,NULL),(379,65,48,2,NULL),(380,37,17,2,NULL),(381,49,23,2,NULL),(382,35,48,2,NULL),(383,37,64,2,NULL),(384,68,23,2,NULL),(385,73,48,2,NULL),(386,37,75,2,NULL),(387,49,24,2,NULL),(388,47,48,2,NULL),(389,68,24,2,NULL),(390,49,27,2,NULL),(391,82,48,2,NULL),(392,42,24,2,NULL),(393,68,27,2,NULL),(394,143,48,2,NULL),(395,90,24,2,NULL),(396,49,76,2,NULL),(397,148,48,2,NULL),(398,54,24,2,NULL),(399,68,76,2,NULL),(400,79,48,2,NULL),(401,65,24,2,NULL),(402,49,78,2,NULL),(403,81,48,2,NULL),(404,35,24,2,NULL),(405,68,78,2,NULL),(406,87,48,2,NULL),(407,73,24,2,NULL),(408,49,80,2,NULL),(409,151,48,2,NULL),(410,47,24,2,NULL),(411,68,80,2,NULL),(412,153,48,2,NULL),(413,82,24,2,NULL),(414,49,20,2,NULL),(415,202,48,2,NULL),(416,143,24,2,NULL),(417,68,20,2,NULL),(418,203,48,2,NULL),(419,148,24,2,NULL),(420,49,31,2,NULL),(421,204,48,2,NULL),(422,79,24,2,NULL),(423,68,31,2,NULL),(424,205,48,2,NULL),(425,81,24,2,NULL),(426,49,32,2,NULL),(427,206,48,2,NULL),(428,87,24,2,NULL),(429,68,32,2,NULL),(430,207,48,2,NULL),(431,151,24,2,NULL),(432,49,39,2,NULL),(433,126,48,2,NULL),(434,153,24,2,NULL),(435,68,39,2,NULL),(436,127,48,2,NULL),(437,202,24,2,NULL),(438,49,40,2,NULL),(439,133,48,2,NULL),(440,203,24,2,NULL),(441,68,40,2,NULL),(442,159,66,2,NULL),(443,93,48,2,NULL),(444,204,24,2,NULL),(445,49,44,2,NULL),(446,132,1,2,NULL),(447,94,48,2,NULL),(448,205,24,2,NULL),(449,68,44,2,NULL),(450,97,48,2,NULL),(451,206,24,2,NULL),(452,135,1,2,NULL),(453,49,49,2,NULL),(454,100,48,2,NULL),(455,207,24,2,NULL),(456,68,49,2,NULL),(457,104,48,2,NULL),(458,126,24,2,NULL),(459,137,1,2,NULL),(460,49,50,2,NULL),(461,106,48,2,NULL),(462,127,24,2,NULL),(463,140,1,2,NULL),(464,68,50,2,NULL),(465,110,48,2,NULL),(466,133,24,2,NULL),(467,49,51,2,NULL),(468,141,1,2,NULL),(469,117,48,2,NULL),(470,93,24,2,NULL),(471,68,51,2,NULL),(472,122,48,2,NULL),(473,94,24,2,NULL),(474,144,1,2,NULL),(475,49,52,2,NULL),(476,97,24,2,NULL),(477,132,48,2,NULL),(478,68,52,2,NULL),(479,145,1,2,NULL),(480,135,48,2,NULL),(481,100,24,2,NULL),(482,49,53,2,NULL),(483,137,48,2,NULL),(484,104,24,2,NULL),(485,147,1,2,NULL),(486,68,53,2,NULL),(487,140,48,2,NULL),(488,106,24,2,NULL),(489,49,54,2,NULL),(490,132,4,2,NULL),(491,141,48,2,NULL),(492,110,24,2,NULL),(493,68,54,2,NULL),(494,144,48,2,NULL),(495,117,24,2,NULL),(496,135,4,2,NULL),(497,49,63,2,NULL),(498,145,48,2,NULL),(499,122,24,2,NULL),(500,68,63,2,NULL),(501,137,4,2,NULL),(502,147,48,2,NULL),(503,132,24,2,NULL),(504,49,65,2,NULL),(505,113,48,2,NULL),(506,135,24,2,NULL),(507,140,4,2,NULL),(508,68,65,2,NULL),(509,101,48,2,NULL),(510,137,24,2,NULL),(511,141,4,2,NULL),(512,49,61,2,NULL),(513,102,48,2,NULL),(514,140,24,2,NULL),(515,68,61,2,NULL),(516,144,4,2,NULL),(517,141,24,2,NULL),(518,42,49,2,NULL),(519,49,77,2,NULL),(520,90,49,2,NULL),(521,144,24,2,NULL),(522,145,4,2,NULL),(523,68,77,2,NULL),(524,54,49,2,NULL),(525,145,24,2,NULL),(526,147,4,2,NULL),(527,45,7,2,NULL),(528,65,49,2,NULL),(529,147,24,2,NULL),(530,71,14,2,NULL),(531,35,49,2,NULL),(532,113,24,2,NULL),(533,42,61,2,NULL),(534,72,6,2,NULL),(535,73,49,2,NULL),(536,101,24,2,NULL),(537,42,1,2,NULL),(538,90,61,2,NULL),(539,47,49,2,NULL),(540,102,24,2,NULL),(541,90,1,2,NULL),(542,82,49,2,NULL),(543,42,27,2,NULL),(544,54,61,2,NULL),(545,42,4,2,NULL),(546,90,27,2,NULL),(547,143,49,2,NULL),(548,90,4,2,NULL),(549,65,61,2,NULL),(550,148,49,2,NULL),(551,54,27,2,NULL),(552,42,14,2,NULL),(553,79,49,2,NULL),(554,65,27,2,NULL),(555,35,61,2,NULL),(556,90,14,2,NULL),(557,81,49,2,NULL),(558,35,27,2,NULL),(559,42,23,2,NULL),(560,73,61,2,NULL),(561,87,49,2,NULL),(562,73,27,2,NULL),(563,90,23,2,NULL),(564,47,61,2,NULL),(565,151,49,2,NULL),(566,47,27,2,NULL),(567,42,76,2,NULL),(568,153,49,2,NULL),(569,82,27,2,NULL),(570,82,61,2,NULL),(571,90,76,2,NULL),(572,202,49,2,NULL),(573,143,27,2,NULL),(574,42,78,2,NULL),(575,132,14,2,NULL),(576,203,49,2,NULL),(577,148,27,2,NULL),(578,90,78,2,NULL),(579,204,49,2,NULL),(580,79,27,2,NULL),(581,135,14,2,NULL),(582,42,80,2,NULL),(583,205,49,2,NULL),(584,81,27,2,NULL),(585,137,14,2,NULL),(586,90,80,2,NULL),(587,206,49,2,NULL),(588,87,27,2,NULL),(589,140,14,2,NULL),(590,42,20,2,NULL),(591,207,49,2,NULL),(592,151,27,2,NULL),(593,141,14,2,NULL),(594,90,20,2,NULL),(595,126,49,2,NULL),(596,153,27,2,NULL),(597,144,14,2,NULL),(598,42,31,2,NULL),(599,127,49,2,NULL),(600,202,27,2,NULL),(601,145,14,2,NULL),(602,90,31,2,NULL),(603,133,49,2,NULL),(604,203,27,2,NULL),(605,147,14,2,NULL),(606,42,32,2,NULL),(607,93,49,2,NULL),(608,204,27,2,NULL),(609,132,23,2,NULL),(610,90,32,2,NULL),(611,94,49,2,NULL),(612,205,27,2,NULL),(613,135,23,2,NULL),(614,206,27,2,NULL),(615,97,49,2,NULL),(616,42,39,2,NULL),(617,137,23,2,NULL),(618,100,49,2,NULL),(619,90,39,2,NULL),(620,207,27,2,NULL),(621,140,23,2,NULL),(622,104,49,2,NULL),(623,42,40,2,NULL),(624,126,27,2,NULL),(625,141,23,2,NULL),(626,106,49,2,NULL),(627,127,27,2,NULL),(628,90,40,2,NULL),(629,144,23,2,NULL),(630,110,49,2,NULL),(631,133,27,2,NULL),(632,42,44,2,NULL),(633,145,23,2,NULL),(634,117,49,2,NULL),(635,93,27,2,NULL),(636,90,44,2,NULL),(637,147,23,2,NULL),(638,122,49,2,NULL),(639,94,27,2,NULL),(640,42,50,2,NULL),(641,132,27,2,NULL),(642,132,49,2,NULL),(643,97,27,2,NULL),(644,135,49,2,NULL),(645,90,50,2,NULL),(646,135,27,2,NULL),(647,100,27,2,NULL),(648,137,49,2,NULL),(649,42,51,2,NULL),(650,137,27,2,NULL),(651,104,27,2,NULL),(652,140,49,2,NULL),(653,90,51,2,NULL),(654,140,27,2,NULL),(655,106,27,2,NULL),(656,141,49,2,NULL),(657,42,52,2,NULL),(658,141,27,2,NULL),(659,110,27,2,NULL),(660,144,49,2,NULL),(661,90,52,2,NULL),(662,144,27,2,NULL),(663,117,27,2,NULL),(664,145,49,2,NULL),(665,42,53,2,NULL),(666,145,27,2,NULL),(667,122,27,2,NULL),(668,147,49,2,NULL),(669,90,53,2,NULL),(670,147,27,2,NULL),(671,113,27,2,NULL),(672,113,49,2,NULL),(673,42,54,2,NULL),(674,132,76,2,NULL),(675,101,27,2,NULL),(676,101,49,2,NULL),(677,90,54,2,NULL),(678,135,76,2,NULL),(679,102,27,2,NULL),(680,102,49,2,NULL),(681,42,63,2,NULL),(682,137,76,2,NULL),(683,54,76,2,NULL),(684,90,63,2,NULL),(685,140,76,2,NULL),(686,54,50,2,NULL),(687,65,76,2,NULL),(688,42,65,2,NULL),(689,65,50,2,NULL),(690,141,76,2,NULL),(691,35,76,2,NULL),(692,35,50,2,NULL),(693,90,65,2,NULL),(694,144,76,2,NULL),(695,73,76,2,NULL),(696,73,50,2,NULL),(697,145,76,2,NULL),(698,42,77,2,NULL),(699,47,76,2,NULL),(700,47,50,2,NULL),(701,147,76,2,NULL),(702,90,77,2,NULL),(703,82,76,2,NULL),(704,82,50,2,NULL),(705,46,14,2,NULL),(706,132,78,2,NULL),(707,143,76,2,NULL),(708,59,7,2,NULL),(709,143,50,2,NULL),(710,135,78,2,NULL),(711,148,76,2,NULL),(712,148,50,2,NULL),(713,74,6,2,NULL),(714,137,78,2,NULL),(715,79,76,2,NULL),(716,79,50,2,NULL),(717,54,1,2,NULL),(718,140,78,2,NULL),(719,81,76,2,NULL),(720,81,50,2,NULL),(721,65,1,2,NULL),(722,141,78,2,NULL),(723,87,76,2,NULL),(724,87,50,2,NULL),(725,54,4,2,NULL),(726,144,78,2,NULL),(727,151,76,2,NULL),(728,151,50,2,NULL),(729,65,4,2,NULL),(730,145,78,2,NULL),(731,153,76,2,NULL),(732,147,78,2,NULL),(733,153,50,2,NULL),(734,54,14,2,NULL),(735,202,76,2,NULL),(736,202,50,2,NULL),(737,65,14,2,NULL),(738,132,80,2,NULL),(739,203,76,2,NULL),(740,203,50,2,NULL),(741,54,23,2,NULL),(742,135,80,2,NULL),(743,204,76,2,NULL),(744,204,50,2,NULL),(745,65,23,2,NULL),(746,137,80,2,NULL),(747,205,76,2,NULL),(748,205,50,2,NULL),(749,54,78,2,NULL),(750,140,80,2,NULL),(751,206,76,2,NULL),(752,206,50,2,NULL),(753,65,78,2,NULL),(754,141,80,2,NULL),(755,207,76,2,NULL),(756,207,50,2,NULL),(757,54,80,2,NULL),(758,144,80,2,NULL),(759,126,76,2,NULL),(760,126,50,2,NULL),(761,65,80,2,NULL),(762,145,80,2,NULL),(763,127,76,2,NULL),(764,127,50,2,NULL),(765,54,20,2,NULL),(766,147,80,2,NULL),(767,133,76,2,NULL),(768,133,50,2,NULL),(769,65,20,2,NULL),(770,132,20,2,NULL),(771,93,76,2,NULL),(772,93,50,2,NULL),(773,54,31,2,NULL),(774,135,20,2,NULL),(775,94,76,2,NULL),(776,137,20,2,NULL),(777,94,50,2,NULL),(778,65,31,2,NULL),(779,97,76,2,NULL),(780,140,20,2,NULL),(781,97,50,2,NULL),(782,54,32,2,NULL),(783,100,76,2,NULL),(784,100,50,2,NULL),(785,65,32,2,NULL),(786,141,20,2,NULL),(787,104,76,2,NULL),(788,104,50,2,NULL),(789,54,39,2,NULL),(790,144,20,2,NULL),(791,106,76,2,NULL),(792,106,50,2,NULL),(793,65,39,2,NULL),(794,145,20,2,NULL),(795,110,76,2,NULL),(796,110,50,2,NULL),(797,54,40,2,NULL),(798,147,20,2,NULL),(799,117,76,2,NULL),(800,117,50,2,NULL),(801,65,40,2,NULL),(802,132,31,2,NULL),(803,122,76,2,NULL),(804,122,50,2,NULL),(805,54,44,2,NULL),(806,135,31,2,NULL),(807,113,76,2,NULL),(808,65,44,2,NULL),(809,132,50,2,NULL),(810,137,31,2,NULL),(811,101,76,2,NULL),(812,135,50,2,NULL),(813,140,31,2,NULL),(814,54,51,2,NULL),(815,102,76,2,NULL),(816,137,50,2,NULL),(817,141,31,2,NULL),(818,65,51,2,NULL),(819,35,78,2,NULL),(820,140,50,2,NULL),(821,144,31,2,NULL),(822,54,52,2,NULL),(823,73,78,2,NULL),(824,141,50,2,NULL),(825,145,31,2,NULL),(826,65,52,2,NULL),(827,47,78,2,NULL),(828,144,50,2,NULL),(829,147,31,2,NULL),(830,54,53,2,NULL),(831,82,78,2,NULL),(832,145,50,2,NULL),(833,132,32,2,NULL),(834,65,53,2,NULL),(835,143,78,2,NULL),(836,147,50,2,NULL),(837,135,32,2,NULL),(838,54,54,2,NULL),(839,148,78,2,NULL),(840,113,50,2,NULL),(841,137,32,2,NULL),(842,65,54,2,NULL),(843,79,78,2,NULL),(844,101,50,2,NULL),(845,140,32,2,NULL),(846,81,78,2,NULL),(847,54,63,2,NULL),(848,102,50,2,NULL),(849,141,32,2,NULL),(850,87,78,2,NULL),(851,65,63,2,NULL),(852,144,32,2,NULL),(853,35,51,2,NULL),(854,54,65,2,NULL),(855,151,78,2,NULL),(856,73,51,2,NULL),(857,145,32,2,NULL),(858,153,78,2,NULL),(859,65,65,2,NULL),(860,47,51,2,NULL),(861,147,32,2,NULL),(862,202,78,2,NULL),(863,54,77,2,NULL),(864,82,51,2,NULL),(865,143,61,2,NULL),(866,203,78,2,NULL),(867,65,77,2,NULL),(868,143,51,2,NULL),(869,148,61,2,NULL),(870,204,78,2,NULL),(871,61,6,2,NULL),(872,148,51,2,NULL),(873,79,61,2,NULL),(874,205,78,2,NULL),(875,80,7,2,NULL),(876,79,51,2,NULL),(877,81,61,2,NULL),(878,206,78,2,NULL),(879,86,14,2,NULL),(880,81,51,2,NULL),(881,87,61,2,NULL),(882,35,1,2,NULL),(883,207,78,2,NULL),(884,87,51,2,NULL),(885,151,61,2,NULL),(886,73,1,2,NULL),(887,126,78,2,NULL),(888,151,51,2,NULL),(889,153,61,2,NULL),(890,127,78,2,NULL),(891,35,4,2,NULL),(892,153,51,2,NULL),(893,202,61,2,NULL),(894,73,4,2,NULL),(895,133,78,2,NULL),(896,202,51,2,NULL),(897,203,61,2,NULL),(898,93,78,2,NULL),(899,35,14,2,NULL),(900,203,51,2,NULL),(901,204,61,2,NULL),(902,73,14,2,NULL),(903,94,78,2,NULL),(904,204,51,2,NULL),(905,132,39,2,NULL),(906,35,23,2,NULL),(907,97,78,2,NULL),(908,205,51,2,NULL),(909,135,39,2,NULL),(910,73,23,2,NULL),(911,100,78,2,NULL),(912,206,51,2,NULL),(913,137,39,2,NULL),(914,104,78,2,NULL),(915,35,80,2,NULL),(916,207,51,2,NULL),(917,140,39,2,NULL),(918,106,78,2,NULL),(919,126,51,2,NULL),(920,73,80,2,NULL),(921,141,39,2,NULL),(922,110,78,2,NULL),(923,127,51,2,NULL),(924,35,20,2,NULL),(925,144,39,2,NULL),(926,117,78,2,NULL),(927,133,51,2,NULL),(928,73,20,2,NULL),(929,145,39,2,NULL),(930,122,78,2,NULL),(931,93,51,2,NULL),(932,147,39,2,NULL),(933,35,31,2,NULL),(934,113,78,2,NULL),(935,94,51,2,NULL),(936,73,31,2,NULL),(937,132,40,2,NULL),(938,101,78,2,NULL),(939,97,51,2,NULL),(940,35,32,2,NULL),(941,135,40,2,NULL),(942,102,78,2,NULL),(943,100,51,2,NULL),(944,73,32,2,NULL),(945,137,40,2,NULL),(946,47,80,2,NULL),(947,104,51,2,NULL),(948,35,39,2,NULL),(949,140,40,2,NULL),(950,82,80,2,NULL),(951,106,51,2,NULL),(952,73,39,2,NULL),(953,141,40,2,NULL),(954,143,80,2,NULL),(955,110,51,2,NULL),(956,144,40,2,NULL),(957,35,40,2,NULL),(958,148,80,2,NULL),(959,117,51,2,NULL),(960,73,40,2,NULL),(961,145,40,2,NULL),(962,79,80,2,NULL),(963,122,51,2,NULL),(964,35,44,2,NULL),(965,147,40,2,NULL),(966,81,80,2,NULL),(967,73,44,2,NULL),(968,132,51,2,NULL),(969,205,61,2,NULL),(970,87,80,2,NULL),(971,135,51,2,NULL),(972,206,61,2,NULL),(973,35,52,2,NULL),(974,151,80,2,NULL),(975,137,51,2,NULL),(976,207,61,2,NULL),(977,73,52,2,NULL),(978,153,80,2,NULL),(979,140,51,2,NULL),(980,126,61,2,NULL),(981,202,80,2,NULL),(982,35,53,2,NULL),(983,141,51,2,NULL),(984,127,61,2,NULL),(985,73,53,2,NULL),(986,203,80,2,NULL),(987,144,51,2,NULL),(988,133,61,2,NULL),(989,35,54,2,NULL),(990,204,80,2,NULL),(991,145,51,2,NULL),(992,93,61,2,NULL),(993,73,54,2,NULL),(994,205,80,2,NULL),(995,147,51,2,NULL),(996,94,61,2,NULL),(997,35,63,2,NULL),(998,206,80,2,NULL),(999,113,51,2,NULL),(1000,97,61,2,NULL),(1001,73,63,2,NULL),(1002,207,80,2,NULL),(1003,101,51,2,NULL),(1004,100,61,2,NULL),(1005,35,65,2,NULL),(1006,126,80,2,NULL),(1007,102,51,2,NULL),(1008,104,61,2,NULL),(1009,73,65,2,NULL),(1010,127,80,2,NULL),(1011,106,61,2,NULL),(1012,47,52,2,NULL),(1013,133,80,2,NULL),(1014,35,77,2,NULL),(1015,82,52,2,NULL),(1016,110,61,2,NULL),(1017,73,77,2,NULL),(1018,93,80,2,NULL),(1019,143,52,2,NULL),(1020,117,61,2,NULL),(1021,94,80,2,NULL),(1022,48,7,2,NULL),(1023,148,52,2,NULL),(1024,122,61,2,NULL),(1025,97,80,2,NULL),(1026,50,6,2,NULL),(1027,79,52,2,NULL),(1028,132,44,2,NULL),(1029,96,14,2,NULL),(1030,100,80,2,NULL),(1031,81,52,2,NULL),(1032,135,44,2,NULL),(1033,47,1,2,NULL),(1034,104,80,2,NULL),(1035,87,52,2,NULL),(1036,137,44,2,NULL),(1037,106,80,2,NULL),(1038,82,1,2,NULL),(1039,151,52,2,NULL),(1040,140,44,2,NULL),(1041,110,80,2,NULL),(1042,47,4,2,NULL),(1043,153,52,2,NULL),(1044,141,44,2,NULL),(1045,117,80,2,NULL),(1046,82,4,2,NULL),(1047,202,52,2,NULL),(1048,144,44,2,NULL),(1049,122,80,2,NULL),(1050,47,14,2,NULL),(1051,203,52,2,NULL),(1052,145,44,2,NULL),(1053,82,14,2,NULL),(1054,113,80,2,NULL),(1055,204,52,2,NULL),(1056,147,44,2,NULL),(1057,47,23,2,NULL),(1058,205,52,2,NULL),(1059,101,80,2,NULL),(1060,82,23,2,NULL),(1061,206,52,2,NULL),(1062,102,80,2,NULL),(1063,132,52,2,NULL),(1064,47,20,2,NULL),(1065,207,52,2,NULL),(1066,135,52,2,NULL),(1067,126,52,2,NULL),(1068,82,20,2,NULL),(1069,137,52,2,NULL),(1070,127,52,2,NULL),(1071,47,31,2,NULL),(1072,140,52,2,NULL),(1073,133,52,2,NULL),(1074,82,31,2,NULL),(1075,141,52,2,NULL),(1076,93,52,2,NULL),(1077,47,32,2,NULL),(1078,144,52,2,NULL),(1079,94,52,2,NULL),(1080,82,32,2,NULL),(1081,145,52,2,NULL),(1082,47,39,2,NULL),(1083,97,52,2,NULL),(1084,147,52,2,NULL),(1085,100,52,2,NULL),(1086,82,39,2,NULL),(1087,132,53,2,NULL),(1088,104,52,2,NULL),(1089,47,40,2,NULL),(1090,135,53,2,NULL),(1091,106,52,2,NULL),(1092,82,40,2,NULL),(1093,137,53,2,NULL),(1094,110,52,2,NULL),(1095,47,44,2,NULL),(1096,140,53,2,NULL),(1097,117,52,2,NULL),(1098,82,44,2,NULL),(1099,141,53,2,NULL),(1100,122,52,2,NULL),(1101,47,53,2,NULL),(1102,144,53,2,NULL),(1103,82,53,2,NULL),(1104,113,52,2,NULL),(1105,145,53,2,NULL),(1106,101,52,2,NULL),(1107,47,54,2,NULL),(1108,147,53,2,NULL),(1109,82,54,2,NULL),(1110,102,52,2,NULL),(1111,132,54,2,NULL),(1112,47,63,2,NULL),(1113,143,53,2,NULL),(1114,135,54,2,NULL),(1115,148,53,2,NULL),(1116,82,63,2,NULL),(1117,137,54,2,NULL),(1118,79,53,2,NULL),(1119,47,65,2,NULL),(1120,140,54,2,NULL),(1121,81,53,2,NULL),(1122,82,65,2,NULL),(1123,141,54,2,NULL),(1124,87,53,2,NULL),(1125,47,77,2,NULL),(1126,144,54,2,NULL),(1127,151,53,2,NULL),(1128,82,77,2,NULL),(1129,145,54,2,NULL),(1130,153,53,2,NULL),(1131,143,14,2,NULL),(1132,147,54,2,NULL),(1133,202,53,2,NULL),(1134,148,14,2,NULL),(1135,132,63,2,NULL),(1136,203,53,2,NULL),(1137,79,14,2,NULL),(1138,135,63,2,NULL),(1139,204,53,2,NULL),(1140,137,63,2,NULL),(1141,81,14,2,NULL),(1142,205,53,2,NULL),(1143,87,14,2,NULL),(1144,140,63,2,NULL),(1145,206,53,2,NULL),(1146,151,14,2,NULL),(1147,141,63,2,NULL),(1148,207,53,2,NULL),(1149,144,63,2,NULL),(1150,126,53,2,NULL),(1151,153,14,2,NULL),(1152,145,63,2,NULL),(1153,127,53,2,NULL),(1154,202,14,2,NULL),(1155,147,63,2,NULL),(1156,133,53,2,NULL),(1157,203,14,2,NULL),(1158,132,65,2,NULL),(1159,93,53,2,NULL),(1160,204,14,2,NULL),(1161,135,65,2,NULL),(1162,94,53,2,NULL),(1163,205,14,2,NULL),(1164,137,65,2,NULL),(1165,97,53,2,NULL),(1166,206,14,2,NULL),(1167,140,65,2,NULL),(1168,100,53,2,NULL),(1169,207,14,2,NULL),(1170,141,65,2,NULL),(1171,104,53,2,NULL),(1172,144,65,2,NULL),(1173,126,14,2,NULL),(1174,106,53,2,NULL),(1175,145,65,2,NULL),(1176,127,14,2,NULL),(1177,110,53,2,NULL),(1178,133,14,2,NULL),(1179,147,65,2,NULL),(1180,117,53,2,NULL),(1181,93,14,2,NULL),(1182,113,61,2,NULL),(1183,122,53,2,NULL),(1184,94,14,2,NULL),(1185,101,61,2,NULL),(1186,113,53,2,NULL),(1187,97,14,2,NULL),(1188,102,61,2,NULL),(1189,101,53,2,NULL),(1190,100,14,2,NULL),(1191,132,77,2,NULL),(1192,102,53,2,NULL),(1193,104,14,2,NULL),(1194,135,77,2,NULL),(1195,143,54,2,NULL),(1196,106,14,2,NULL),(1197,137,77,2,NULL),(1198,148,54,2,NULL),(1199,140,77,2,NULL),(1200,110,14,2,NULL),(1201,79,54,2,NULL),(1202,117,14,2,NULL),(1203,141,77,2,NULL),(1204,81,54,2,NULL),(1205,122,14,2,NULL),(1206,144,77,2,NULL),(1207,87,54,2,NULL),(1208,145,77,2,NULL),(1209,113,14,2,NULL),(1210,151,54,2,NULL),(1211,101,14,2,NULL),(1212,147,77,2,NULL),(1213,153,54,2,NULL),(1214,102,14,2,NULL),(1215,113,1,2,NULL),(1216,113,4,2,NULL),(1217,202,54,2,NULL),(1218,113,23,2,NULL),(1219,203,54,2,NULL),(1220,113,20,2,NULL),(1221,204,54,2,NULL),(1222,113,31,2,NULL),(1223,205,54,2,NULL),(1224,113,32,2,NULL),(1225,206,54,2,NULL),(1226,113,39,2,NULL),(1227,207,54,2,NULL),(1228,113,40,2,NULL),(1229,126,54,2,NULL),(1230,113,44,2,NULL),(1231,127,54,2,NULL),(1232,113,54,2,NULL),(1233,133,54,2,NULL),(1234,113,63,2,NULL),(1235,93,54,2,NULL),(1236,113,65,2,NULL),(1237,94,54,2,NULL),(1238,113,77,2,NULL),(1239,97,54,2,NULL),(1240,101,1,2,NULL),(1241,100,54,2,NULL),(1242,102,1,2,NULL),(1243,104,54,2,NULL),(1244,101,4,2,NULL),(1245,106,54,2,NULL),(1246,102,4,2,NULL),(1247,110,54,2,NULL),(1248,101,23,2,NULL),(1249,117,54,2,NULL),(1250,102,23,2,NULL),(1251,122,54,2,NULL),(1252,101,20,2,NULL),(1253,101,54,2,NULL),(1254,102,20,2,NULL),(1255,102,54,2,NULL),(1256,101,31,2,NULL),(1257,143,63,2,NULL),(1258,102,31,2,NULL),(1259,148,63,2,NULL),(1260,101,32,2,NULL),(1261,79,63,2,NULL),(1262,102,32,2,NULL),(1263,81,63,2,NULL),(1264,101,39,2,NULL),(1265,87,63,2,NULL),(1266,102,39,2,NULL),(1267,151,63,2,NULL),(1268,101,40,2,NULL),(1269,153,63,2,NULL),(1270,102,40,2,NULL),(1271,202,63,2,NULL),(1272,101,44,2,NULL),(1273,203,63,2,NULL),(1274,102,44,2,NULL),(1275,204,63,2,NULL),(1276,101,63,2,NULL),(1277,205,63,2,NULL),(1278,102,63,2,NULL),(1279,206,63,2,NULL),(1280,101,65,2,NULL),(1281,207,63,2,NULL),(1282,102,65,2,NULL),(1283,126,63,2,NULL),(1284,101,77,2,NULL),(1285,127,63,2,NULL),(1286,102,77,2,NULL),(1287,133,63,2,NULL),(1288,98,2,2,NULL),(1289,93,63,2,NULL),(1290,98,15,2,NULL),(1291,94,63,2,NULL),(1292,98,58,2,NULL),(1293,97,63,2,NULL),(1294,98,74,2,NULL),(1295,100,63,2,NULL),(1296,99,2,2,NULL),(1297,104,63,2,NULL),(1298,99,15,2,NULL),(1299,106,63,2,NULL),(1300,99,58,2,NULL),(1301,110,63,2,NULL),(1302,99,74,2,NULL),(1303,117,63,2,NULL),(1304,154,2,2,NULL),(1305,122,63,2,NULL),(1306,154,15,2,NULL),(1307,155,2,2,NULL),(1308,154,58,2,NULL),(1309,155,15,2,NULL),(1310,154,74,2,NULL),(1311,155,58,2,NULL),(1312,156,2,2,NULL),(1313,155,74,2,NULL),(1314,156,15,2,NULL),(1315,157,2,2,NULL),(1316,156,58,2,NULL),(1317,157,15,2,NULL),(1318,156,74,2,NULL),(1319,157,58,2,NULL),(1320,128,3,2,NULL),(1321,157,74,2,NULL),(1322,128,17,2,NULL),(1323,169,2,2,NULL),(1324,128,64,2,NULL),(1325,169,15,2,NULL),(1326,128,75,2,NULL),(1327,169,58,2,NULL),(1328,143,77,2,NULL),(1329,169,74,2,NULL),(1330,148,77,2,NULL),(1331,171,2,2,NULL),(1332,79,77,2,NULL),(1333,171,15,2,NULL),(1334,81,77,2,NULL),(1335,171,58,2,NULL),(1336,87,77,2,NULL),(1337,171,74,2,NULL),(1338,151,77,2,NULL),(1339,152,3,2,NULL),(1340,153,77,2,NULL),(1341,152,17,2,NULL),(1342,202,77,2,NULL),(1343,152,64,2,NULL),(1344,203,77,2,NULL),(1345,152,75,2,NULL),(1346,204,77,2,NULL),(1347,143,65,2,NULL),(1348,205,77,2,NULL),(1349,148,65,2,NULL),(1350,206,77,2,NULL),(1351,79,65,2,NULL),(1352,207,77,2,NULL),(1353,81,65,2,NULL),(1354,126,77,2,NULL),(1355,87,65,2,NULL),(1356,127,77,2,NULL),(1357,151,65,2,NULL),(1358,133,77,2,NULL),(1359,153,65,2,NULL),(1360,93,77,2,NULL),(1361,202,65,2,NULL),(1362,94,77,2,NULL),(1363,203,65,2,NULL),(1364,97,77,2,NULL),(1365,204,65,2,NULL),(1366,100,77,2,NULL),(1367,205,65,2,NULL),(1368,104,77,2,NULL),(1369,206,65,2,NULL),(1370,106,77,2,NULL),(1371,207,65,2,NULL),(1372,110,77,2,NULL),(1373,126,65,2,NULL),(1374,117,77,2,NULL),(1375,127,65,2,NULL),(1376,122,77,2,NULL),(1377,133,65,2,NULL),(1378,93,65,2,NULL),(1379,94,65,2,NULL),(1380,97,65,2,NULL),(1381,100,65,2,NULL),(1382,104,65,2,NULL),(1383,106,65,2,NULL),(1384,110,65,2,NULL),(1385,117,65,2,NULL),(1386,122,65,2,NULL),(1387,12,25,2,NULL),(1388,143,20,2,NULL),(1389,148,20,2,NULL),(1390,79,20,2,NULL),(1391,81,20,2,NULL),(1392,87,20,2,NULL),(1393,151,20,2,NULL),(1394,153,20,2,NULL),(1395,202,20,2,NULL),(1396,203,20,2,NULL),(1397,204,20,2,NULL),(1398,205,20,2,NULL),(1399,206,20,2,NULL),(1400,207,20,2,NULL),(1401,126,20,2,NULL),(1402,127,20,2,NULL),(1403,2,3,2,NULL),(1404,133,20,2,NULL),(1405,2,17,2,NULL),(1406,93,20,2,NULL),(1407,2,64,2,NULL),(1408,94,20,2,NULL),(1409,2,75,2,NULL),(1410,97,20,2,NULL),(1411,143,1,2,NULL),(1412,100,20,2,NULL),(1413,148,1,2,NULL),(1414,104,20,2,NULL),(1415,79,1,2,NULL),(1416,106,20,2,NULL),(1417,81,1,2,NULL),(1418,110,20,2,NULL),(1419,87,1,2,NULL),(1420,117,20,2,NULL),(1421,151,1,2,NULL),(1422,122,20,2,NULL),(1423,153,1,2,NULL),(1424,14,26,2,NULL),(1425,202,1,2,NULL),(1426,17,28,2,NULL),(1427,203,1,2,NULL),(1428,18,28,2,NULL),(1429,204,1,2,NULL),(1430,19,28,2,NULL),(1431,205,1,2,NULL),(1432,21,28,2,NULL),(1433,206,1,2,NULL),(1434,23,29,2,NULL),(1435,207,1,2,NULL),(1436,143,31,2,NULL),(1437,126,1,2,NULL),(1438,148,31,2,NULL),(1439,127,1,2,NULL),(1440,79,31,2,NULL),(1441,133,1,2,NULL),(1442,81,31,2,NULL),(1443,93,1,2,NULL),(1444,87,31,2,NULL),(1445,94,1,2,NULL),(1446,151,31,2,NULL),(1447,97,1,2,NULL),(1448,153,31,2,NULL),(1449,100,1,2,NULL),(1450,202,31,2,NULL),(1451,104,1,2,NULL),(1452,203,31,2,NULL),(1453,106,1,2,NULL),(1454,204,31,2,NULL),(1455,110,1,2,NULL),(1456,205,31,2,NULL),(1457,117,1,2,NULL),(1458,206,31,2,NULL),(1459,122,1,2,NULL),(1460,207,31,2,NULL),(1461,3,2,2,NULL),(1462,126,31,2,NULL),(1463,3,15,2,NULL),(1464,127,31,2,NULL),(1465,3,58,2,NULL),(1466,133,31,2,NULL),(1467,3,74,2,NULL),(1468,93,31,2,NULL),(1469,4,2,2,NULL),(1470,94,31,2,NULL),(1471,4,15,2,NULL),(1472,97,31,2,NULL),(1473,4,58,2,NULL),(1474,100,31,2,NULL),(1475,4,74,2,NULL),(1476,104,31,2,NULL),(1477,5,2,2,NULL),(1478,106,31,2,NULL),(1479,5,15,2,NULL),(1480,110,31,2,NULL),(1481,5,58,2,NULL),(1482,117,31,2,NULL),(1483,5,74,2,NULL),(1484,122,31,2,NULL),(1485,6,2,2,NULL),(1486,6,15,2,NULL),(1487,6,58,2,NULL),(1488,6,74,2,NULL),(1489,7,3,2,NULL),(1490,7,17,2,NULL),(1491,7,64,2,NULL),(1492,7,75,2,NULL),(1493,143,4,2,NULL),(1494,148,4,2,NULL),(1495,79,4,2,NULL),(1496,81,4,2,NULL),(1497,87,4,2,NULL),(1498,151,4,2,NULL),(1499,153,4,2,NULL),(1500,202,4,2,NULL),(1501,203,4,2,NULL),(1502,204,4,2,NULL),(1503,205,4,2,NULL),(1504,206,4,2,NULL),(1505,207,4,2,NULL),(1506,126,4,2,NULL),(1507,127,4,2,NULL),(1508,133,4,2,NULL),(1509,93,4,2,NULL),(1510,94,4,2,NULL),(1511,97,4,2,NULL),(1512,100,4,2,NULL),(1513,104,4,2,NULL),(1514,106,4,2,NULL),(1515,110,4,2,NULL),(1516,117,4,2,NULL),(1517,122,4,2,NULL),(1518,201,38,2,NULL),(1519,143,32,2,NULL),(1520,148,32,2,NULL),(1521,79,32,2,NULL),(1522,81,32,2,NULL),(1523,87,32,2,NULL),(1524,151,32,2,NULL),(1525,153,32,2,NULL),(1526,202,32,2,NULL),(1527,203,32,2,NULL),(1528,204,32,2,NULL),(1529,205,32,2,NULL),(1530,206,32,2,NULL),(1531,207,32,2,NULL),(1532,126,32,2,NULL),(1533,127,32,2,NULL),(1534,133,32,2,NULL),(1535,93,32,2,NULL),(1536,94,32,2,NULL),(1537,97,32,2,NULL),(1538,100,32,2,NULL),(1539,104,32,2,NULL),(1540,106,32,2,NULL),(1541,110,32,2,NULL),(1542,117,32,2,NULL),(1543,122,32,2,NULL),(1544,143,23,2,NULL),(1545,148,23,2,NULL),(1546,143,39,2,NULL),(1547,148,39,2,NULL),(1548,143,40,2,NULL),(1549,148,40,2,NULL),(1550,143,44,2,NULL),(1551,148,44,2,NULL),(1552,79,23,2,NULL),(1553,81,23,2,NULL),(1554,87,23,2,NULL),(1555,151,23,2,NULL),(1556,153,23,2,NULL),(1557,202,23,2,NULL),(1558,203,23,2,NULL),(1559,204,23,2,NULL),(1560,79,39,2,NULL),(1561,81,39,2,NULL),(1562,87,39,2,NULL),(1563,151,39,2,NULL),(1564,153,39,2,NULL),(1565,202,39,2,NULL),(1566,203,39,2,NULL),(1567,204,39,2,NULL),(1568,79,40,2,NULL),(1569,81,40,2,NULL),(1570,87,40,2,NULL),(1571,151,40,2,NULL),(1572,153,40,2,NULL),(1573,202,40,2,NULL),(1574,203,40,2,NULL),(1575,204,40,2,NULL),(1576,79,44,2,NULL),(1577,81,44,2,NULL),(1578,87,44,2,NULL),(1579,151,44,2,NULL),(1580,153,44,2,NULL),(1581,202,44,2,NULL),(1582,203,44,2,NULL),(1583,204,44,2,NULL),(1584,205,39,2,NULL),(1585,206,39,2,NULL),(1586,207,39,2,NULL),(1587,126,39,2,NULL),(1588,127,39,2,NULL),(1589,133,39,2,NULL),(1590,93,39,2,NULL),(1591,94,39,2,NULL),(1592,97,39,2,NULL),(1593,100,39,2,NULL),(1594,104,39,2,NULL),(1595,106,39,2,NULL),(1596,110,39,2,NULL),(1597,117,39,2,NULL),(1598,122,39,2,NULL),(1599,149,38,2,NULL),(1600,205,40,2,NULL),(1601,206,40,2,NULL),(1602,207,40,2,NULL),(1603,126,40,2,NULL),(1604,127,40,2,NULL),(1605,133,40,2,NULL),(1606,93,40,2,NULL),(1607,94,40,2,NULL),(1608,97,40,2,NULL),(1609,100,40,2,NULL),(1610,104,40,2,NULL),(1611,106,40,2,NULL),(1612,110,40,2,NULL),(1613,117,40,2,NULL),(1614,122,40,2,NULL),(1615,205,23,2,NULL),(1616,206,23,2,NULL),(1617,207,23,2,NULL),(1618,205,44,2,NULL),(1619,206,44,2,NULL),(1620,207,44,2,NULL),(1621,126,23,2,NULL),(1622,127,23,2,NULL),(1623,133,23,2,NULL),(1624,126,44,2,NULL),(1625,127,44,2,NULL),(1626,133,44,2,NULL),(1627,93,23,2,NULL),(1628,94,23,2,NULL),(1629,97,23,2,NULL),(1630,100,23,2,NULL),(1631,104,23,2,NULL),(1632,106,23,2,NULL),(1633,110,23,2,NULL),(1634,117,23,2,NULL),(1635,122,23,2,NULL),(1636,93,44,2,NULL),(1637,94,44,2,NULL),(1638,97,44,2,NULL),(1639,100,44,2,NULL),(1640,104,44,2,NULL),(1641,106,44,2,NULL),(1642,110,44,2,NULL),(1643,117,44,2,NULL),(1644,122,44,2,NULL);
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

-- Dump completed on 2015-10-12  3:29:21
