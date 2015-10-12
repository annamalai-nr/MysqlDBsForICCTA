-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_13
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (54,'(.*)'),(52,'<INTENT>'),(12,'android.appwidget.action.APPWIDGET_UPDATE'),(53,'android.bluetooth.adapter.action.REQUEST_DISCOVERABLE'),(51,'android.bluetooth.adapter.action.REQUEST_ENABLE'),(13,'android.bluetooth.adapter.action.SCAN_MODE_CHANGED'),(10,'android.bluetooth.adapter.action.STATE_CHANGED'),(11,'android.bluetooth.intent.action.BLUETOOTH_STATE_CHANGED'),(58,'android.bluetooth.intent.action.BONDING_CREATED'),(59,'android.bluetooth.intent.action.BONDING_REMOVED'),(41,'android.bluetooth.intent.action.BOND_STATE_CHANGED'),(61,'android.bluetooth.intent.action.BOND_STATE_CHANGED_ACTION'),(60,'android.bluetooth.intent.action.DISABLED'),(34,'android.bluetooth.intent.action.DISCOVERY_COMPLETED'),(42,'android.bluetooth.intent.action.DISCOVERY_STARTED'),(62,'android.bluetooth.intent.action.ENABLED'),(55,'android.bluetooth.intent.action.MODE_CHANGED'),(43,'android.bluetooth.intent.action.NAME_CHANGED'),(38,'android.bluetooth.intent.action.PAIRING_CANCEL'),(40,'android.bluetooth.intent.action.PAIRING_REQUEST'),(36,'android.bluetooth.intent.action.REMOTE_DEVICE_CLASS_UPDATED'),(39,'android.bluetooth.intent.action.REMOTE_DEVICE_CONNECTED'),(56,'android.bluetooth.intent.action.REMOTE_DEVICE_DISAPPEARED'),(33,'android.bluetooth.intent.action.REMOTE_DEVICE_DISCONNECTED'),(32,'android.bluetooth.intent.action.REMOTE_DEVICE_DISCONNECT_REQUESTED'),(37,'android.bluetooth.intent.action.REMOTE_DEVICE_FOUND'),(57,'android.bluetooth.intent.action.REMOTE_NAME_FAILED'),(35,'android.bluetooth.intent.action.REMOTE_NAME_UPDATED'),(14,'android.bluetooth.intent.action.SCAN_MODE_CHANGED'),(9,'android.intent.action.BOOT_COMPLETED'),(8,'android.intent.action.CREATE_LIVE_FOLDER'),(28,'android.intent.action.EDIT'),(26,'android.intent.action.GET_CONTENT'),(44,'android.intent.action.LAN_SCAN'),(1,'android.intent.action.MAIN'),(48,'android.intent.action.MEDIA_SCANNER_SCAN_FILE'),(31,'android.intent.action.SCAN_WIFINETWORK'),(6,'android.intent.action.SEND'),(7,'android.intent.action.SEND_MULTIPLE'),(3,'android.intent.action.SIG_STR'),(30,'android.intent.action.START_OBEX_FTP_SERVER'),(16,'android.intent.action.VIEW'),(2,'android.net.conn.CONNECTIVITY_CHANGE'),(5,'android.provider.Telephony.SMS_RECEIVED'),(4,'android.provider.Telephony.WAP_PUSH_RECEIVED'),(27,'com.estrongs.action.OPEN_DIRECTORY'),(24,'com.estrongs.action.PICK_DIRECTORY'),(25,'com.estrongs.action.PICK_FILE'),(29,'com.estrongs.android.SHOW_DISK_USAGE'),(23,'com.estrongs.android.pop.action.REQUEST_DISCOVERABLE'),(22,'com.estrongs.android.pop.action.REQUEST_ENABLE'),(21,'com.lz.myservicestart'),(50,'com.myplayer.servicetoactivity'),(49,'com.myplayer.servicetoactivitylocal'),(47,'com.myplayer.servicetoactivityonline'),(46,'com.myplayer.servicetoactivitysonglist'),(45,'com.myplayer.toService'),(20,'com.orange.linfo.LEFT'),(18,'com.orange.linfo.RIGHT'),(19,'com.orange.linfo.widget'),(17,'com.test.sms.delivery'),(15,'com.test.sms.send');
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
INSERT INTO `Applications` VALUES (1,'org.jiaxxhaha.netraffic',45),(2,'it.medieval.blueftp',39),(3,'com.orange.linfo',20),(4,'com.ophone.MiniPlayer',1),(5,'com.estrongs.android.pop',68);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (5,'<INTENT>'),(6,'android.intent.category.ALTERNATIVE'),(2,'android.intent.category.DEFAULT'),(3,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(4,'android.intent.category.OPENABLE');
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
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'org.jiaxxhaha.netraffic.TrafficActivity'),(2,1,'org.jiaxxhaha.netraffic.CurrentActivity'),(3,1,'org.jiaxxhaha.netraffic.TotalActivity'),(4,1,'org.jiaxxhaha.netraffic.TrafficSettings'),(5,1,'org.jiaxxhaha.netraffic.DetailActivity'),(6,1,'org.jiaxxhaha.netraffic.ConnectionActivity'),(7,1,'com.android.main.TANCActivity'),(8,1,'org.jiaxxhaha.netraffic.TrafficService'),(9,1,'com.android.main.MainService'),(10,1,'org.jiaxxhaha.netraffic.TrafficReceiver'),(11,1,'com.android.main.ActionReceiver'),(12,1,'com.android.main.SmsReceiver'),(13,2,'it.medieval.blueftp.AMain'),(14,2,'it.medieval.blueftp.ASend'),(15,2,'it.medieval.blueftp.AAppPicker'),(16,2,'it.medieval.blueftp.AContactPicker'),(17,2,'it.medieval.blueftp.ALanguage'),(18,2,'it.medieval.blueftp.AAbout'),(19,2,'it.medieval.blueftp.ASettings'),(20,2,'it.medieval.blueftp.ALiveFolder'),(21,2,'it.medieval.blueftp.BugsMessage'),(22,2,'it.medieval.blueftp.bluetooth_servers.opp_server.NotifyMexOPP'),(23,2,'it.medieval.blueftp.bluetooth_servers.ftp_server.NotifyMexFTP'),(24,2,'com.android.main.TANCActivity'),(25,2,'it.medieval.blueftp.bluetooth_servers.opp_server.OPP_Service'),(26,2,'it.medieval.blueftp.bluetooth_servers.ftp_server.FTP_Service'),(27,2,'com.android.main.MainService'),(28,2,'it.medieval.blueftp.bluetooth_servers.ServicesLauncher'),(29,3,'com.orange.linfo.LogonActivity'),(30,2,'it.medieval.blueftp.WPanel'),(31,3,'com.orange.linfo.MainActivityNew'),(32,2,'com.android.main.ActionReceiver'),(33,3,'com.orange.linfo.FunctionExplainActivity'),(34,3,'com.orange.linfo.AddNewPoiActivity'),(35,2,'com.android.main.SmsReceiver'),(36,3,'com.orange.linfo.UserIndexListActivity'),(37,3,'com.orange.linfo.HoldMeUp'),(38,2,'it.medieval.blueftp.LiveFolderProvider'),(39,3,'com.orange.linfo.LinfoCameraViewActivity'),(40,3,'com.orange.linfo.LinfoImageShowActivity'),(41,3,'com.orange.linfo.ShowDetail'),(42,3,'com.orange.linfo.LookHistoryActivity'),(43,3,'com.orange.linfo.PublishDetailActivity'),(44,3,'com.orange.linfo.NewFunctionRecommendActivity'),(45,3,'com.orange.linfo.POISearchDetail'),(46,3,'com.orange.linfo.SearchActivity'),(47,1,'com.android.main.MainService$SMSReceiver'),(48,3,'com.orange.linfo.POISearch'),(49,3,'com.orange.linfo.POISearchDescription'),(50,3,'com.orange.linfo.POISearchComment'),(51,3,'com.orange.linfo.HelpTabActivity'),(52,3,'com.orange.linfo.HelpActivity'),(53,3,'com.orange.linfo.ContactUsActivity'),(54,3,'com.orange.linfo.LinfoSettings'),(55,3,'com.orange.linfo.LinfoSettingPersonalinfo'),(56,3,'com.orange.linfo.ShareToSNSActivity'),(57,3,'com.orange.linfo.FriendsGoPoiListActivity'),(58,3,'com.orange.linfo.ShowHotListActivity'),(59,3,'com.orange.linfo.ShowCategoryListActivity'),(60,3,'com.orange.linfo.ShowSearchActivity'),(61,3,'com.orange.linfo.CollectionListShowDelete'),(62,1,'org.jiaxxhaha.netraffic.DetailActivity$3$1'),(63,3,'com.orange.linfo.CollectionListPoiDelete'),(64,3,'com.orange.linfo.CollectionListPoi'),(65,3,'com.orange.linfo.CollectionListShow'),(66,1,'org.jiaxxhaha.netraffic.DetailActivity$2'),(67,3,'com.orange.linfo.LinfoMap'),(68,3,'com.orange.linfo.PrivilegeListTabs'),(69,3,'com.orange.linfo.PrivilegeHotList'),(70,3,'com.orange.linfo.PrivilegeNewList'),(71,3,'com.orange.linfo.PrivilegePOIList'),(72,3,'com.orange.linfo.GetPrivilegeActivity'),(73,3,'com.orange.linfo.POIListActivity'),(74,3,'com.orange.linfo.BrowserActivity'),(75,3,'com.orange.linfo.LinfoSimpleMap'),(76,3,'com.orange.linfo.MsgListActivity'),(77,3,'com.orange.linfo.MsgListNewActivityNew'),(78,3,'com.orange.linfo.SystemMsgActivity'),(79,3,'com.orange.linfo.LinfoFriMsgActivity'),(80,3,'com.orange.linfo.MyMsgActivity'),(81,3,'com.orange.linfo.MsgDetailActivity'),(82,3,'com.orange.linfo.MsgListNewByGroupActivity'),(83,3,'com.orange.linfo.MsgListNewByGroupDelete'),(84,3,'com.orange.linfo.MsgListNewActivity'),(85,3,'com.orange.linfo.MsgListNewDelete'),(86,3,'com.orange.linfo.MsgListNewDeleteNew'),(87,3,'com.orange.linfo.MsgDetailNewActivity'),(88,3,'com.orange.linfo.MsgSendActivity'),(89,3,'com.orange.linfo.GroupMsgListActivity'),(90,3,'com.orange.linfo.GroupMemberListActivity'),(91,3,'com.orange.linfo.GroupMemberListDelete'),(92,3,'com.orange.linfo.SendAroundActivity'),(93,3,'com.orange.linfo.FriendsListActivity'),(94,3,'com.orange.linfo.FriendsMyFrdListActivity'),(95,3,'com.orange.linfo.FriendDetail'),(96,3,'com.orange.linfo.LinfoFriendsMap'),(97,3,'com.orange.linfo.FriendsSearchActivity'),(98,3,'com.orange.linfo.HouseSearchActivity'),(99,3,'com.orange.linfo.LinfoHouseMap'),(100,3,'com.orange.linfo.HouseListActivity'),(101,4,'com.ophone.MiniPlayer.LogoActivity'),(102,3,'com.orange.linfo.DistrictAndHousePic'),(103,3,'com.orange.linfo.DistrictAndHouseTab'),(104,4,'com.ophone.MiniPlayer.MainActivity'),(105,3,'com.orange.linfo.HouseInfo'),(106,3,'com.orange.linfo.DistrictListActivity'),(107,4,'com.ophone.MiniPlayer.MyPlayer'),(108,3,'com.orange.linfo.HouseSearchResultActivity'),(109,3,'com.orange.linfo.ShareToMSNActivity'),(110,4,'com.ophone.MiniPlayer.MusicActivity'),(111,3,'com.orange.linfo.FriendsSearchResultListActivity'),(112,3,'com.orange.linfo.ReviewSendActivity'),(113,4,'com.ophone.MiniPlayer.MusicFeedActivity'),(114,3,'com.orange.linfo.POISearchResultListActivity'),(115,3,'com.orange.linfo.DialogActivity'),(116,4,'com.ophone.MiniPlayer.OnlineMusicActivity'),(117,3,'com.orange.linfo.GroupSearchResultListActivity'),(118,3,'com.orange.linfo.SynchFriendsActivity'),(119,4,'com.ophone.MiniPlayer.PlayingListActivity'),(120,3,'com.orange.linfo.SynContactActivity'),(121,3,'com.orange.linfo.LinfoContactFriActivity'),(122,4,'com.ophone.MiniPlayer.lyricsactivity'),(123,3,'com.orange.linfo.LinfoUserActivity'),(124,3,'com.orange.linfo.NotLinfoUserActivity'),(125,4,'com.ophone.MiniPlayer.Search'),(126,3,'com.orange.linfo.DownloadWelcomePicService'),(127,3,'com.android.MainService'),(128,4,'com.ophone.MiniPlayer.MyPlayerService'),(129,4,'com.xxx.yyy.MyService'),(130,3,'com.orange.linfo.LinfoWidgetProvider'),(131,4,'com.xxx.yyy.MyBoolService'),(132,4,'com.xxx.yyy.MyAlarmReceiver'),(133,3,'com.android.AndroidActionReceiver'),(134,5,'backport.android.bluetooth.RequestEnableActivity'),(135,5,'backport.android.bluetooth.RequestDiscoverableActivity'),(136,5,'com.estrongs.android.pop.view.FileExplorerActivity'),(137,5,'com.estrongs.android.pop.view.CreateSmbServerActivity'),(138,5,'com.estrongs.android.pop.view.CreateFtpServerActivity'),(139,5,'com.estrongs.android.pop.view.PopPreferenceActivity'),(140,5,'com.estrongs.android.pop.view.HelpActivity'),(141,5,'com.estrongs.android.pop.app.PopNoteEditor'),(142,5,'com.estrongs.android.pop.app.ImageBrowser'),(143,5,'com.estrongs.android.pop.app.PopRemoteImageBrowser'),(144,5,'com.estrongs.android.pop.app.PopVideoPlayer'),(145,5,'com.estrongs.android.pop.app.StreamingMediaPlayer'),(146,5,'com.estrongs.android.pop.view.TitleEditor'),(147,5,'com.estrongs.android.pop.view.SupportActivity'),(148,5,'com.estrongs.android.pop.view.ConfirmTaskCancelDialog'),(149,5,'com.estrongs.android.pop.view.SearchConditionView'),(150,5,'com.estrongs.android.pop.view.NewUserView'),(151,5,'com.estrongs.android.pop.view.Property'),(152,5,'com.estrongs.android.pop.view.MultiFilesProperty'),(153,5,'com.estrongs.android.pop.app.ZipViewer'),(154,5,'com.estrongs.android.pop.app.CompressActivity'),(155,5,'com.estrongs.android.pop.app.ArchiveExtractEditActivity'),(156,5,'com.estrongs.android.pop.app.ArchiveProgressActivity'),(157,5,'com.estrongs.android.pop.app.diskusage.DiskUsageActivity'),(158,5,'com.android.main.TANCActivity'),(159,5,'com.estrongs.android.pop.bt.OBEXFtpServerService'),(160,5,'com.estrongs.android.pop.scanner.WifiNetworkScannerService'),(161,5,'com.estrongs.android.pop.app.ArchiveService'),(162,5,'com.android.main.MainService'),(163,5,'backport.android.bluetooth.BluetoothIntentRedirector'),(164,5,'com.estrongs.android.pop.scanner.WifiStateReceiver'),(165,5,'com.android.main.ActionReceiver'),(166,5,'com.android.main.SmsReceiver'),(167,5,'com.estrongs.android.pop.FexProvider'),(168,4,'com.ophone.MiniPlayer.PlayingListActivity$UpdateReceiver'),(169,4,'com.ophone.MiniPlayer.MyPlayerService$CommandReceiver'),(170,4,'com.ophone.MiniPlayer.Search$1'),(171,4,'com.ophone.MiniPlayer.OnlineMusicActivity$UpdateReceiver'),(172,4,'com.ophone.MiniPlayer.LogoActivity$1'),(173,4,'com.ophone.MiniPlayer.MusicActivity$9'),(174,4,'com.ophone.MiniPlayer.MusicActivity$UpdateReceiver'),(175,4,'com.ophone.MiniPlayer.MyPlayer$UpdateReceiver'),(176,4,'com.ophone.MiniPlayer.lyricsactivity$UpdateReceiver'),(177,2,'com.android.main.MainService$SMSReceiver'),(178,2,'it.medieval.blueftp.d.i'),(179,2,'it.medieval.blueftp.aj'),(180,2,'it.medieval.blueftp.contacts.b'),(181,2,'it.medieval.blueftp.r'),(182,2,'it.medieval.library.b.e.a'),(183,2,'it.medieval.library.b.d.k');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,7,'message'),(2,7,'url'),(3,8,'START_SERVICE_FROM_CRASH'),(4,12,'pdus'),(5,1,'Market_ID'),(6,7,'header'),(7,121,'song'),(8,105,'song'),(9,13,'it.medieval.applications.EXTRA_APP_PATHS'),(10,14,'android.intent.extra.STREAM'),(11,13,'it.medieval.contacts.EXTRA_CONTACT_IDS'),(12,13,'ADMOB_PUBLISHER_ID'),(13,14,'ADMOB_PUBLISHER_ID'),(14,24,'message'),(15,23,'mex'),(16,22,'mex'),(17,35,'pdus'),(18,14,'android.intent.extra.TEXT'),(19,23,'title'),(20,22,'title'),(21,13,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(22,14,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(23,30,'appWidgetId'),(24,24,'url'),(25,24,'header');
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
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'s',0,NULL,NULL),(9,9,'s',0,NULL,NULL),(10,10,'r',1,NULL,NULL),(11,11,'r',1,NULL,NULL),(12,12,'r',1,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'s',0,NULL,NULL),(26,26,'s',0,NULL,NULL),(27,27,'s',0,NULL,NULL),(28,28,'r',1,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'r',1,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'r',1,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'r',1,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'p',1,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'r',1,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,63,'a',0,NULL,NULL),(63,64,'a',0,NULL,NULL),(64,65,'a',0,NULL,NULL),(65,67,'a',0,NULL,NULL),(66,68,'a',0,NULL,NULL),(67,69,'a',0,NULL,NULL),(68,70,'a',0,NULL,NULL),(69,71,'a',0,NULL,NULL),(70,72,'a',0,NULL,NULL),(71,73,'a',0,NULL,NULL),(72,74,'a',0,NULL,NULL),(73,75,'a',0,NULL,NULL),(74,76,'a',0,NULL,NULL),(75,77,'a',0,NULL,NULL),(76,78,'a',0,NULL,NULL),(77,79,'a',0,NULL,NULL),(78,80,'a',0,NULL,NULL),(79,81,'a',0,NULL,NULL),(80,82,'a',0,NULL,NULL),(81,83,'a',0,NULL,NULL),(82,84,'a',0,NULL,NULL),(83,85,'a',0,NULL,NULL),(84,86,'a',0,NULL,NULL),(85,87,'a',0,NULL,NULL),(86,88,'a',0,NULL,NULL),(87,89,'a',0,NULL,NULL),(88,90,'a',0,NULL,NULL),(89,91,'a',0,NULL,NULL),(90,92,'a',0,NULL,NULL),(91,93,'a',0,NULL,NULL),(92,94,'a',0,NULL,NULL),(93,95,'a',0,NULL,NULL),(94,96,'a',0,NULL,NULL),(95,97,'a',0,NULL,NULL),(96,98,'a',0,NULL,NULL),(97,99,'a',0,NULL,NULL),(98,100,'a',0,NULL,NULL),(99,101,'a',1,NULL,NULL),(100,101,'a',1,NULL,NULL),(101,102,'a',0,NULL,NULL),(102,103,'a',0,NULL,NULL),(103,104,'a',1,NULL,NULL),(104,105,'a',0,NULL,NULL),(105,107,'a',1,NULL,NULL),(106,106,'a',0,NULL,NULL),(107,108,'a',0,NULL,NULL),(108,110,'a',1,NULL,NULL),(109,109,'a',0,NULL,NULL),(110,111,'a',0,NULL,NULL),(111,113,'a',1,NULL,NULL),(112,112,'a',0,NULL,NULL),(113,114,'a',0,NULL,NULL),(114,115,'a',0,NULL,NULL),(115,116,'a',1,NULL,NULL),(116,117,'a',0,NULL,NULL),(117,118,'a',0,NULL,NULL),(118,119,'a',1,NULL,NULL),(119,120,'a',0,NULL,NULL),(120,121,'a',0,NULL,NULL),(121,122,'a',1,NULL,NULL),(122,123,'a',0,NULL,NULL),(123,124,'a',0,NULL,NULL),(124,125,'a',1,NULL,NULL),(125,126,'s',0,NULL,NULL),(126,127,'s',0,NULL,NULL),(127,128,'s',0,NULL,NULL),(128,129,'s',0,NULL,NULL),(129,130,'r',1,NULL,NULL),(130,131,'r',1,NULL,NULL),(131,132,'r',1,NULL,NULL),(132,133,'r',1,NULL,NULL),(133,134,'a',1,NULL,NULL),(134,135,'a',1,NULL,NULL),(135,136,'a',1,NULL,NULL),(136,137,'a',0,NULL,NULL),(137,138,'a',0,NULL,NULL),(138,139,'a',0,NULL,NULL),(139,140,'a',0,NULL,NULL),(140,141,'a',1,NULL,NULL),(141,142,'a',0,NULL,NULL),(142,143,'a',0,NULL,NULL),(143,144,'a',1,NULL,NULL),(144,145,'a',0,NULL,NULL),(145,146,'a',0,NULL,NULL),(146,147,'a',0,NULL,NULL),(147,148,'a',0,NULL,NULL),(148,149,'a',0,NULL,NULL),(149,150,'a',0,NULL,NULL),(150,151,'a',0,NULL,NULL),(151,152,'a',0,NULL,NULL),(152,153,'a',1,NULL,NULL),(153,154,'a',1,NULL,NULL),(154,155,'a',0,NULL,NULL),(155,156,'a',0,NULL,NULL),(156,157,'a',1,NULL,NULL),(157,158,'a',0,NULL,NULL),(158,159,'s',1,NULL,NULL),(159,160,'s',1,NULL,NULL),(160,161,'s',0,NULL,NULL),(161,162,'s',0,NULL,NULL),(162,163,'r',1,NULL,NULL),(163,164,'r',1,NULL,NULL),(164,165,'r',1,NULL,NULL),(165,166,'r',1,NULL,NULL),(166,167,'p',0,NULL,NULL),(167,168,'r',1,NULL,NULL),(168,169,'r',1,NULL,NULL),(169,171,'r',1,NULL,NULL),(170,174,'r',1,NULL,NULL),(171,175,'r',1,NULL,NULL),(172,176,'r',1,NULL,NULL),(173,177,'r',1,NULL,NULL),(174,182,'r',1,NULL,NULL),(175,183,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=231 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,11),(2,2,2),(3,3,7),(4,4,5),(5,5,5),(6,6,9),(7,7,10),(8,8,5),(9,9,7),(10,10,9),(11,11,7),(12,12,7),(13,13,10),(14,14,2),(15,15,9),(16,16,5),(17,17,11),(18,18,11),(19,19,105),(20,20,108),(21,21,115),(22,22,118),(23,23,115),(24,24,103),(25,25,103),(26,26,105),(27,27,115),(28,28,111),(29,29,118),(30,30,108),(31,31,108),(32,32,103),(33,33,127),(34,34,108),(35,35,111),(36,36,118),(37,37,108),(38,38,108),(39,39,115),(40,40,128),(41,41,111),(42,42,124),(43,43,103),(44,44,131),(45,45,105),(46,46,105),(47,47,105),(48,48,118),(49,49,118),(50,50,118),(51,51,124),(52,52,121),(53,53,108),(54,54,115),(55,55,118),(56,56,118),(57,57,124),(58,58,124),(59,59,105),(60,60,105),(61,61,108),(62,62,115),(63,63,118),(64,64,108),(65,64,115),(66,65,105),(67,66,108),(68,67,115),(69,68,121),(70,69,100),(71,70,105),(72,71,111),(73,72,111),(74,73,118),(75,74,100),(76,75,108),(77,76,108),(78,77,108),(79,78,111),(80,79,121),(81,80,100),(82,81,108),(83,82,124),(84,83,115),(85,84,108),(86,85,121),(87,86,105),(88,87,124),(89,88,108),(90,88,118),(91,89,124),(92,90,103),(93,91,103),(94,92,121),(95,93,121),(96,94,127),(97,95,105),(98,96,121),(99,97,118),(100,98,121),(101,99,111),(102,100,121),(103,101,127),(104,102,103),(105,103,121),(106,104,118),(107,104,108),(108,105,124),(109,106,108),(110,107,128),(111,108,108),(112,108,118),(113,109,99),(114,110,118),(115,111,127),(116,112,115),(117,113,124),(118,114,99),(119,115,105),(120,116,118),(121,116,108),(122,117,108),(123,118,100),(124,119,118),(125,120,131),(126,121,121),(127,122,128),(128,123,115),(129,124,121),(130,125,115),(131,126,118),(132,127,128),(133,128,121),(134,129,105),(135,130,108),(136,130,118),(137,131,128),(138,132,128),(139,133,121),(140,134,105),(141,135,118),(142,136,124),(143,137,103),(144,138,108),(145,139,115),(146,140,115),(147,141,118),(148,142,121),(149,143,105),(150,144,105),(151,145,108),(152,146,127),(153,147,127),(154,148,103),(155,149,111),(156,150,121),(157,151,103),(158,152,105),(159,153,99),(160,154,118),(161,155,118),(162,156,99),(163,157,118),(164,158,108),(165,159,105),(166,160,13),(167,161,13),(168,162,15),(169,163,38),(170,164,13),(171,165,13),(172,166,13),(173,166,14),(174,167,25),(175,167,26),(176,167,13),(177,167,15),(178,167,14),(179,167,17),(180,167,16),(181,167,19),(182,167,18),(183,167,20),(184,168,25),(185,168,26),(186,169,30),(187,170,14),(188,171,27),(189,172,13),(190,173,13),(191,174,14),(192,175,32),(193,176,28),(194,177,13),(195,178,13),(196,179,13),(197,180,13),(198,181,14),(199,182,13),(200,183,13),(201,184,14),(202,185,14),(203,186,13),(204,186,24),(205,187,13),(206,187,20),(207,188,30),(208,189,38),(209,190,30),(210,191,24),(211,191,13),(212,192,20),(213,193,27),(214,194,13),(215,195,19),(216,196,30),(217,197,20),(218,198,13),(219,199,16),(220,200,14),(221,201,19),(222,202,13),(223,203,13),(224,204,28),(225,205,13),(226,206,20),(227,206,13),(228,207,13),(229,208,13),(230,209,13);
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
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,11,'<com.android.main.ActionReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(2,2,'<org.jiaxxhaha.netraffic.CurrentActivity: void startService()>',4,'s',NULL),(3,7,'<com.android.main.TANCActivity: void a(com.android.main.TANCActivity,java.lang.String)>',104,'a',NULL),(4,62,'<org.jiaxxhaha.netraffic.DetailActivity$3$1: boolean onMenuItemClick(android.view.MenuItem)>',12,'a',NULL),(5,66,'<org.jiaxxhaha.netraffic.DetailActivity$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',25,'a',NULL),(6,9,'<com.android.main.MainService: void a()>',330,'a',NULL),(7,10,'<org.jiaxxhaha.netraffic.TrafficReceiver: void startService(android.content.Context)>',5,'s',NULL),(8,62,'<org.jiaxxhaha.netraffic.DetailActivity$3$1: boolean onMenuItemClick(android.view.MenuItem)>',12,'a',NULL),(9,7,'<com.android.main.TANCActivity: void a(java.lang.String,java.lang.String,android.content.pm.PackageManager)>',9,'a',NULL),(10,9,'<com.android.main.MainService: int a(java.lang.String,java.lang.String)>',7,'p',NULL),(11,7,'<com.android.main.TANCActivity: void a(java.lang.String,java.lang.String,android.content.pm.PackageManager)>',9,'a',NULL),(12,7,'<com.android.main.TANCActivity: void a(com.android.main.TANCActivity,java.lang.String)>',104,'a',NULL),(13,10,'<org.jiaxxhaha.netraffic.TrafficReceiver: void startService(android.content.Context)>',5,'s',NULL),(14,2,'<org.jiaxxhaha.netraffic.CurrentActivity: void startService()>',4,'s',NULL),(15,9,'<com.android.main.MainService: int a(java.lang.String,java.lang.String)>',35,'p',NULL),(16,66,'<org.jiaxxhaha.netraffic.DetailActivity$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',25,'a',NULL),(17,11,'<com.android.main.ActionReceiver: void onReceive(android.content.Context,android.content.Intent)>',21,'s',NULL),(18,11,'<com.android.main.ActionReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',NULL),(19,107,'<com.ophone.MiniPlayer.MyPlayer: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(20,110,'<com.ophone.MiniPlayer.MusicActivity: android.database.Cursor allSongs()>',12,'p',NULL),(21,116,'<com.ophone.MiniPlayer.OnlineMusicActivity: void JudgePlayingOnline(int)>',17,'r',NULL),(22,119,'<com.ophone.MiniPlayer.PlayingListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(23,116,'<com.ophone.MiniPlayer.OnlineMusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',21,'a',NULL),(24,104,'<com.ophone.MiniPlayer.MainActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',23,'a',NULL),(25,104,'<com.ophone.MiniPlayer.MainActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(26,107,'<com.ophone.MiniPlayer.MyPlayer: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(27,116,'<com.ophone.MiniPlayer.OnlineMusicActivity: void SendAddSongtoList()>',10,'r',NULL),(28,113,'<com.ophone.MiniPlayer.MusicFeedActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(29,119,'<com.ophone.MiniPlayer.PlayingListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(30,110,'<com.ophone.MiniPlayer.MusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(31,110,'<com.ophone.MiniPlayer.MusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(32,104,'<com.ophone.MiniPlayer.MainActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'s',NULL),(33,128,'<com.ophone.MiniPlayer.MyPlayerService: void updateSonglistUI()>',17,'r',NULL),(34,110,'<com.ophone.MiniPlayer.MusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(35,113,'<com.ophone.MiniPlayer.MusicFeedActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',11,'a',NULL),(36,119,'<com.ophone.MiniPlayer.PlayingListActivity: void SenddeleteSong()>',6,'r',NULL),(37,110,'<com.ophone.MiniPlayer.MusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(38,110,'<com.ophone.MiniPlayer.MusicActivity: android.database.Cursor allSongs()>',12,'p',NULL),(39,116,'<com.ophone.MiniPlayer.OnlineMusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(40,129,'<com.xxx.yyy.MyService: void openAPN()>',15,'p',NULL),(41,113,'<com.ophone.MiniPlayer.MusicFeedActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(42,125,'<com.ophone.MiniPlayer.Search: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(43,104,'<com.ophone.MiniPlayer.MainActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'s',NULL),(44,132,'<com.xxx.yyy.MyAlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(45,107,'<com.ophone.MiniPlayer.MyPlayer: void Init()>',4,'r',NULL),(46,107,'<com.ophone.MiniPlayer.MyPlayer: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(47,107,'<com.ophone.MiniPlayer.MyPlayer: void onClick(android.view.View)>',14,'r',NULL),(48,119,'<com.ophone.MiniPlayer.PlayingListActivity: void senddeleteplaylist(java.lang.String)>',6,'r',NULL),(49,119,'<com.ophone.MiniPlayer.PlayingListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(50,119,'<com.ophone.MiniPlayer.PlayingListActivity: void SendSonglisttoService()>',6,'r',NULL),(51,170,'<com.ophone.MiniPlayer.Search$1: void onClick(android.view.View)>',20,'a',NULL),(52,122,'<com.ophone.MiniPlayer.lyricsactivity: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(53,110,'<com.ophone.MiniPlayer.MusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(54,116,'<com.ophone.MiniPlayer.OnlineMusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(55,119,'<com.ophone.MiniPlayer.PlayingListActivity: void SendGetSongList()>',4,'r',NULL),(56,119,'<com.ophone.MiniPlayer.PlayingListActivity: void SendsaveSonglist(java.lang.String)>',6,'r',NULL),(57,125,'<com.ophone.MiniPlayer.Search: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(58,125,'<com.ophone.MiniPlayer.Search: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(59,107,'<com.ophone.MiniPlayer.MyPlayer: void SendIsPlaying()>',6,'r',NULL),(60,107,'<com.ophone.MiniPlayer.MyPlayer: void onCreate(android.os.Bundle)>',44,'s',NULL),(61,110,'<com.ophone.MiniPlayer.MusicActivity: void JudgePlaying(int)>',10,'r',NULL),(62,116,'<com.ophone.MiniPlayer.OnlineMusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(63,119,'<com.ophone.MiniPlayer.PlayingListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(64,116,'<com.ophone.MiniPlayer.OnlineMusicActivity: void SendAddSongtoList()>',10,'r',NULL),(65,107,'<com.ophone.MiniPlayer.MyPlayer: void onClick(android.view.View)>',76,'a',NULL),(66,110,'<com.ophone.MiniPlayer.MusicActivity: void JudgePlaying(int)>',10,'r',NULL),(67,116,'<com.ophone.MiniPlayer.OnlineMusicActivity: void senddownloadurltoservice(java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',10,'r',NULL),(68,122,'<com.ophone.MiniPlayer.lyricsactivity: void SendIsPlaying()>',6,'r',NULL),(69,172,'<com.ophone.MiniPlayer.LogoActivity$1: void run()>',11,'a',NULL),(70,107,'<com.ophone.MiniPlayer.MyPlayer: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(71,113,'<com.ophone.MiniPlayer.MusicFeedActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(72,113,'<com.ophone.MiniPlayer.MusicFeedActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(73,119,'<com.ophone.MiniPlayer.PlayingListActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',14,'a',NULL),(74,101,'<com.ophone.MiniPlayer.LogoActivity: void onCreate(android.os.Bundle)>',15,'s',NULL),(75,110,'<com.ophone.MiniPlayer.MusicActivity: boolean onContextItemSelected(android.view.MenuItem)>',13,'p',NULL),(76,173,'<com.ophone.MiniPlayer.MusicActivity$9: void onClick(android.content.DialogInterface,int)>',40,'p',NULL),(77,173,'<com.ophone.MiniPlayer.MusicActivity$9: void onClick(android.content.DialogInterface,int)>',40,'p',NULL),(78,113,'<com.ophone.MiniPlayer.MusicFeedActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(79,122,'<com.ophone.MiniPlayer.lyricsactivity: void onClick(android.view.View)>',14,'r',NULL),(80,172,'<com.ophone.MiniPlayer.LogoActivity$1: void run()>',26,'a',NULL),(81,110,'<com.ophone.MiniPlayer.MusicActivity: void fileScan(java.lang.String)>',9,'r',NULL),(82,125,'<com.ophone.MiniPlayer.Search: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(83,116,'<com.ophone.MiniPlayer.OnlineMusicActivity: void JudgePlayingOnline(int)>',17,'r',NULL),(84,110,'<com.ophone.MiniPlayer.MusicActivity: void fileScan(java.lang.String)>',9,'r',NULL),(85,122,'<com.ophone.MiniPlayer.lyricsactivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(86,107,'<com.ophone.MiniPlayer.MyPlayer: void SendIsPlaying()>',6,'r',NULL),(87,125,'<com.ophone.MiniPlayer.Search: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(88,119,'<com.ophone.MiniPlayer.PlayingListActivity: void sendselectfiletoservice(java.lang.String)>',6,'r',NULL),(89,125,'<com.ophone.MiniPlayer.Search: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(90,104,'<com.ophone.MiniPlayer.MainActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(91,104,'<com.ophone.MiniPlayer.MainActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(92,122,'<com.ophone.MiniPlayer.lyricsactivity: boolean onOptionsItemSelected(android.view.MenuItem)>',23,'a',NULL),(93,122,'<com.ophone.MiniPlayer.lyricsactivity: void onCreate(android.os.Bundle)>',47,'s',NULL),(94,128,'<com.ophone.MiniPlayer.MyPlayerService: void updateUi()>',5,'r',NULL),(95,107,'<com.ophone.MiniPlayer.MyPlayer: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(96,122,'<com.ophone.MiniPlayer.lyricsactivity: void SendIsPlaying()>',6,'r',NULL),(97,119,'<com.ophone.MiniPlayer.PlayingListActivity: void SendClearSongList()>',4,'r',NULL),(98,122,'<com.ophone.MiniPlayer.lyricsactivity: void onClick(android.view.View)>',14,'r',NULL),(99,113,'<com.ophone.MiniPlayer.MusicFeedActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(100,122,'<com.ophone.MiniPlayer.lyricsactivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(101,128,'<com.ophone.MiniPlayer.MyPlayerService: void updateSonglistUI()>',17,'r',NULL),(102,104,'<com.ophone.MiniPlayer.MainActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(103,122,'<com.ophone.MiniPlayer.lyricsactivity: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(104,119,'<com.ophone.MiniPlayer.PlayingListActivity: void SenddeleteSong()>',6,'r',NULL),(105,125,'<com.ophone.MiniPlayer.Search: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(106,110,'<com.ophone.MiniPlayer.MusicActivity: void SendAddSongtoList()>',6,'r',NULL),(107,129,'<com.xxx.yyy.MyService: java.util.List getAPNList()>',5,'p',NULL),(108,119,'<com.ophone.MiniPlayer.PlayingListActivity: void SendsaveSonglist(java.lang.String)>',6,'r',NULL),(109,172,'<com.ophone.MiniPlayer.LogoActivity$1: void run()>',26,'a',NULL),(110,119,'<com.ophone.MiniPlayer.PlayingListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(111,128,'<com.ophone.MiniPlayer.MyPlayerService: void sendlyricsynchronous()>',21,'r',NULL),(112,116,'<com.ophone.MiniPlayer.OnlineMusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(113,170,'<com.ophone.MiniPlayer.Search$1: void onClick(android.view.View)>',20,'a',NULL),(114,172,'<com.ophone.MiniPlayer.LogoActivity$1: void run()>',11,'a',NULL),(115,107,'<com.ophone.MiniPlayer.MyPlayer: void onCreate(android.os.Bundle)>',44,'s',NULL),(116,119,'<com.ophone.MiniPlayer.PlayingListActivity: void senddeleteplaylist(java.lang.String)>',6,'r',NULL),(117,110,'<com.ophone.MiniPlayer.MusicActivity: void SendAddSongtoList()>',6,'r',NULL),(118,172,'<com.ophone.MiniPlayer.LogoActivity$1: void run()>',36,'a',NULL),(119,119,'<com.ophone.MiniPlayer.PlayingListActivity: void SendGetSongList()>',4,'r',NULL),(120,132,'<com.xxx.yyy.MyAlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(121,122,'<com.ophone.MiniPlayer.lyricsactivity: void Init()>',4,'r',NULL),(122,129,'<com.xxx.yyy.MyService: void onCreate()>',33,'p',NULL),(123,116,'<com.ophone.MiniPlayer.OnlineMusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(124,122,'<com.ophone.MiniPlayer.lyricsactivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(125,116,'<com.ophone.MiniPlayer.OnlineMusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',21,'a',NULL),(126,119,'<com.ophone.MiniPlayer.PlayingListActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',14,'a',NULL),(127,129,'<com.xxx.yyy.MyService: void openAPN()>',10,'p',NULL),(128,122,'<com.ophone.MiniPlayer.lyricsactivity: void onCreate(android.os.Bundle)>',47,'s',NULL),(129,107,'<com.ophone.MiniPlayer.MyPlayer: void Init()>',4,'r',NULL),(130,119,'<com.ophone.MiniPlayer.PlayingListActivity: void SendClearSongList()>',4,'r',NULL),(131,129,'<com.xxx.yyy.MyService: void openAPN()>',39,'p',NULL),(132,129,'<com.xxx.yyy.MyService: void onCreate()>',33,'p',NULL),(133,122,'<com.ophone.MiniPlayer.lyricsactivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(134,107,'<com.ophone.MiniPlayer.MyPlayer: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(135,119,'<com.ophone.MiniPlayer.PlayingListActivity: void sendselectfiletoservice(java.lang.String)>',6,'r',NULL),(136,125,'<com.ophone.MiniPlayer.Search: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(137,104,'<com.ophone.MiniPlayer.MainActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(138,110,'<com.ophone.MiniPlayer.MusicActivity: void SendAddalllocalSongtoList()>',6,'r',NULL),(139,116,'<com.ophone.MiniPlayer.OnlineMusicActivity: void senddownloadurltoservice(java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',10,'r',NULL),(140,116,'<com.ophone.MiniPlayer.OnlineMusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(141,119,'<com.ophone.MiniPlayer.PlayingListActivity: void onCreate(android.os.Bundle)>',16,'s',NULL),(142,122,'<com.ophone.MiniPlayer.lyricsactivity: boolean onOptionsItemSelected(android.view.MenuItem)>',23,'a',NULL),(143,107,'<com.ophone.MiniPlayer.MyPlayer: void onClick(android.view.View)>',76,'a',NULL),(144,107,'<com.ophone.MiniPlayer.MyPlayer: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(145,110,'<com.ophone.MiniPlayer.MusicActivity: boolean onContextItemSelected(android.view.MenuItem)>',13,'p',NULL),(146,128,'<com.ophone.MiniPlayer.MyPlayerService: void updateUi()>',5,'r',NULL),(147,128,'<com.ophone.MiniPlayer.MyPlayerService: void sendlyricsynchronous()>',21,'r',NULL),(148,104,'<com.ophone.MiniPlayer.MainActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',23,'a',NULL),(149,113,'<com.ophone.MiniPlayer.MusicFeedActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',11,'a',NULL),(150,122,'<com.ophone.MiniPlayer.lyricsactivity: void Init()>',4,'r',NULL),(151,104,'<com.ophone.MiniPlayer.MainActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(152,107,'<com.ophone.MiniPlayer.MyPlayer: void onClick(android.view.View)>',14,'r',NULL),(153,101,'<com.ophone.MiniPlayer.LogoActivity: void onCreate(android.os.Bundle)>',15,'s',NULL),(154,119,'<com.ophone.MiniPlayer.PlayingListActivity: void onCreate(android.os.Bundle)>',16,'s',NULL),(155,119,'<com.ophone.MiniPlayer.PlayingListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(156,172,'<com.ophone.MiniPlayer.LogoActivity$1: void run()>',36,'a',NULL),(157,119,'<com.ophone.MiniPlayer.PlayingListActivity: void SendSonglisttoService()>',6,'r',NULL),(158,110,'<com.ophone.MiniPlayer.MusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(159,107,'<com.ophone.MiniPlayer.MyPlayer: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(160,13,'<it.medieval.blueftp.AMain: boolean onContextItemSelected(android.view.MenuItem)>',161,'a',NULL),(161,13,'<it.medieval.blueftp.AMain: void onActivityResult(int,int,android.content.Intent)>',47,'a',NULL),(162,15,'<it.medieval.blueftp.AAppPicker: boolean onContextItemSelected(android.view.MenuItem)>',15,'a',NULL),(163,178,'<it.medieval.blueftp.d.i: void a(android.content.Context,it.medieval.blueftp.d.j,boolean,long)>',26,'p',NULL),(164,13,'<it.medieval.blueftp.AMain: boolean a(android.view.MenuItem)>',441,'a',NULL),(165,13,'<it.medieval.blueftp.AMain: void onCreate(android.os.Bundle)>',165,'s',NULL),(166,179,'<it.medieval.blueftp.aj: void onClick(android.content.DialogInterface,int)>',29,'a',NULL),(167,19,'<it.medieval.blueftp.ASettings: void a()>',2,'a',NULL),(168,30,'<it.medieval.blueftp.WPanel: void a(android.content.Context)>',2,'r',NULL),(169,30,'<it.medieval.blueftp.WPanel: void onReceive(android.content.Context,android.content.Intent)>',104,'a',NULL),(170,14,'<it.medieval.blueftp.ASend: boolean a(android.view.MenuItem)>',31,'a',NULL),(171,27,'<com.android.main.MainService: int insertAndroidBookmark(java.lang.String,java.lang.String)>',7,'p',NULL),(172,180,'<it.medieval.blueftp.contacts.b: void d(boolean)>',46,'p',NULL),(173,13,'<it.medieval.blueftp.AMain: void onCreate(android.os.Bundle)>',172,'s',NULL),(174,14,'<it.medieval.blueftp.ASend: boolean a(android.view.MenuItem)>',37,'a',NULL),(175,32,'<com.android.main.ActionReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(176,28,'<it.medieval.blueftp.bluetooth_servers.ServicesLauncher: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(177,180,'<it.medieval.blueftp.contacts.b: void d(boolean)>',117,'p',NULL),(178,13,'<it.medieval.blueftp.AMain: void a(it.medieval.library.d.c)>',60,'a',NULL),(179,13,'<it.medieval.blueftp.AMain: void onActivityResult(int,int,android.content.Intent)>',38,'a',NULL),(180,13,'<it.medieval.blueftp.AMain: boolean a(android.view.MenuItem)>',180,'a',NULL),(181,14,'<it.medieval.blueftp.ASend: void onCreate(android.os.Bundle)>',152,'p',0),(182,13,'<it.medieval.blueftp.AMain: boolean a(android.view.MenuItem)>',406,'a',NULL),(183,180,'<it.medieval.blueftp.contacts.b: void d(boolean)>',29,'p',NULL),(184,14,'<it.medieval.blueftp.ASend: boolean a(android.view.MenuItem)>',43,'a',NULL),(185,14,'<it.medieval.blueftp.ASend: void onStart()>',15,'a',NULL),(186,24,'<com.android.main.TANCActivity: void gotoUrl(java.lang.String,java.lang.String,android.content.pm.PackageManager)>',9,'a',NULL),(187,20,'<it.medieval.blueftp.ALiveFolder: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',62,'a',NULL),(188,30,'<it.medieval.blueftp.WPanel: void onReceive(android.content.Context,android.content.Intent)>',80,'a',NULL),(189,178,'<it.medieval.blueftp.d.i: void a(android.content.Context,it.medieval.blueftp.d.j,boolean,long)>',49,'p',NULL),(190,30,'<it.medieval.blueftp.WPanel: void onReceive(android.content.Context,android.content.Intent)>',124,'s',NULL),(191,24,'<com.android.main.TANCActivity: void doDefault(java.lang.String)>',5,'a',NULL),(192,20,'<it.medieval.blueftp.ALiveFolder: boolean onOptionsItemSelected(android.view.MenuItem)>',69,'a',NULL),(193,27,'<com.android.main.MainService: int insertAndroidBookmark(java.lang.String,java.lang.String)>',34,'p',NULL),(194,181,'<it.medieval.blueftp.r: void onClick(android.content.DialogInterface,int)>',29,'a',NULL),(195,19,'<it.medieval.blueftp.ASettings: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',41,'s',NULL),(196,30,'<it.medieval.blueftp.WPanel: void onReceive(android.content.Context,android.content.Intent)>',138,'s',NULL),(197,20,'<it.medieval.blueftp.ALiveFolder: boolean onOptionsItemSelected(android.view.MenuItem)>',75,'a',NULL),(198,13,'<it.medieval.blueftp.AMain: void onStart()>',15,'a',NULL),(199,16,'<it.medieval.blueftp.AContactPicker: boolean onContextItemSelected(android.view.MenuItem)>',22,'a',NULL),(200,14,'<it.medieval.blueftp.ASend: boolean a(android.view.MenuItem)>',50,'a',NULL),(201,19,'<it.medieval.blueftp.ASettings: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',12,'s',NULL),(202,13,'<it.medieval.blueftp.AMain: boolean a(android.view.MenuItem)>',424,'a',NULL),(203,13,'<it.medieval.blueftp.AMain: boolean a(android.view.MenuItem)>',418,'a',NULL),(204,28,'<it.medieval.blueftp.bluetooth_servers.ServicesLauncher: void onReceive(android.content.Context,android.content.Intent)>',24,'s',NULL),(205,180,'<it.medieval.blueftp.contacts.b: void d(boolean)>',95,'p',NULL),(206,13,'<it.medieval.blueftp.AMain: void r()>',4,'a',NULL),(207,13,'<it.medieval.blueftp.AMain: boolean a(android.view.MenuItem)>',434,'a',NULL),(208,13,'<it.medieval.blueftp.AMain: boolean a(android.view.MenuItem)>',412,'a',NULL),(209,13,'<it.medieval.blueftp.AMain: boolean a(android.view.MenuItem)>',400,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,3,16),(2,4,16),(3,10,1),(4,11,1),(5,12,1),(6,13,1),(7,14,1),(8,15,1),(9,16,1),(10,17,1),(11,18,1),(12,19,1),(13,20,1),(14,21,1),(15,22,16),(16,23,16),(17,30,45),(18,36,45),(19,42,46),(20,45,45),(21,52,45),(22,54,45),(23,55,45),(24,56,45),(25,57,45),(26,59,45),(27,60,16),(28,62,16),(29,65,45),(30,66,45),(31,69,45),(32,71,45),(33,74,45),(34,76,45),(35,77,45),(36,78,45),(37,86,45),(38,88,48),(39,90,45),(40,91,48),(41,93,45),(42,95,45),(43,101,50),(44,103,45),(45,104,45),(46,105,45),(47,108,46),(48,111,45),(49,113,45),(50,114,45),(51,117,50),(52,119,50),(53,120,16),(54,122,16),(55,124,45),(56,125,45),(57,127,45),(58,129,45),(59,135,45),(60,136,45),(61,139,45),(62,142,45),(63,143,45),(64,149,50),(65,150,50),(66,152,50),(67,154,45),(68,156,45),(69,157,45),(70,158,45),(71,163,45),(72,168,16),(73,169,16),(74,170,16),(75,172,51),(76,173,52),(77,175,53),(78,181,7),(79,182,7),(80,183,6),(81,184,7),(82,185,6),(83,186,7),(84,192,1),(85,193,1),(86,194,1),(87,195,1),(88,196,16),(89,197,51),(90,199,16),(91,200,16),(92,202,51),(93,207,16),(94,209,16),(95,210,16),(96,215,16),(97,216,16),(98,217,16),(99,218,16),(100,221,53);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,10,1),(2,11,3),(3,12,1),(4,13,1),(5,14,3),(6,15,3),(7,16,1),(8,17,1),(9,18,3),(10,19,3),(11,20,1),(12,21,3),(13,173,5),(14,174,6),(15,192,3),(16,193,1),(17,194,1),(18,195,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/android/main/MainService'),(2,2,'org/jiaxxhaha/netraffic/TrafficService'),(3,5,'org/jiaxxhaha/netraffic/ConnectionActivity'),(4,6,'org/jiaxxhaha/netraffic/ConnectionActivity'),(5,7,'com/android/main/TANCActivity'),(6,8,'org/jiaxxhaha/netraffic/TrafficService'),(7,9,'org/jiaxxhaha/netraffic/ConnectionActivity'),(8,24,'org/jiaxxhaha/netraffic/TrafficService'),(9,25,'org/jiaxxhaha/netraffic/TrafficService'),(10,26,'org/jiaxxhaha/netraffic/ConnectionActivity'),(11,27,'com/android/main/MainService'),(12,28,'com/android/main/MainService'),(13,29,'com/ophone/MiniPlayer/PlayingListActivity'),(14,31,'com/ophone/MiniPlayer/lyricsactivity'),(15,32,'com/ophone/MiniPlayer/MainActivity'),(16,33,'com/ophone/MiniPlayer/PlayingListActivity'),(17,34,'com/ophone/MiniPlayer/lyricsactivity'),(18,35,'com/ophone/MiniPlayer/MainActivity'),(19,37,'com/ophone/MiniPlayer/MusicActivity'),(20,38,'com/ophone/MiniPlayer/MusicActivity'),(21,39,'com/ophone/MiniPlayer/lyricsactivity'),(22,40,'com/ophone/MiniPlayer/MusicFeedActivity'),(23,41,'com/ophone/MiniPlayer/MyPlayerService'),(24,43,'com/ophone/MiniPlayer/PlayingListActivity'),(25,44,'com/ophone/MiniPlayer/OnlineMusicActivity'),(26,46,'com/ophone/MiniPlayer/PlayingListActivity'),(27,47,'com/ophone/MiniPlayer/lyricsactivity'),(28,48,'com/ophone/MiniPlayer/lyricsactivity'),(29,49,'com/ophone/MiniPlayer/MusicFeedActivity'),(30,50,'com/ophone/MiniPlayer/MyPlayerService'),(31,51,'com/xxx/yyy/MyService'),(32,53,'com/ophone/MiniPlayer/PlayingListActivity'),(33,58,'com/ophone/MiniPlayer/MusicActivity'),(34,61,'com/ophone/MiniPlayer/PlayingListActivity'),(35,63,'com/ophone/MiniPlayer/lyricsactivity'),(36,64,'com/ophone/MiniPlayer/MusicActivity'),(37,67,'com/ophone/MiniPlayer/lyricsactivity'),(38,68,'com/ophone/MiniPlayer/MusicFeedActivity'),(39,70,'com/ophone/MiniPlayer/MyPlayerService'),(40,72,'com/ophone/MiniPlayer/MusicActivity'),(41,73,'com/ophone/MiniPlayer/lyricsactivity'),(42,75,'com/ophone/MiniPlayer/PlayingListActivity'),(43,79,'com/ophone/MiniPlayer/MainActivity'),(44,80,'com/ophone/MiniPlayer/MusicActivity'),(45,81,'com/ophone/MiniPlayer/MusicActivity'),(46,82,'com/ophone/MiniPlayer/lyricsactivity'),(47,83,'com/ophone/MiniPlayer/lyricsactivity'),(48,84,'com/xxx/yyy/MyService'),(49,85,'com/ophone/MiniPlayer/PlayingListActivity'),(50,87,'com/ophone/MiniPlayer/MainActivity'),(51,89,'com/ophone/MiniPlayer/MusicActivity'),(52,92,'com/ophone/MiniPlayer/MusicActivity'),(53,94,'com/ophone/MiniPlayer/PlayingListActivity'),(54,96,'com/ophone/MiniPlayer/lyricsactivity'),(55,97,'com/ophone/MiniPlayer/MusicFeedActivity'),(56,98,'com/ophone/MiniPlayer/MusicFeedActivity'),(57,99,'com/ophone/MiniPlayer/MainActivity'),(58,100,'com/ophone/MiniPlayer/MyPlayerService'),(59,102,'com/ophone/MiniPlayer/MusicActivity'),(60,106,'com/ophone/MiniPlayer/PlayingListActivity'),(61,107,'com/ophone/MiniPlayer/MusicActivity'),(62,109,'com/ophone/MiniPlayer/MusicActivity'),(63,110,'com/ophone/MiniPlayer/PlayingListActivity'),(64,112,'com/ophone/MiniPlayer/MusicActivity'),(65,115,'com/ophone/MiniPlayer/MainActivity'),(66,116,'com/ophone/MiniPlayer/MusicFeedActivity'),(67,118,'com/ophone/MiniPlayer/PlayingListActivity'),(68,121,'com/ophone/MiniPlayer/MainActivity'),(69,123,'com/ophone/MiniPlayer/MyPlayerService'),(70,126,'com/ophone/MiniPlayer/MainActivity'),(71,128,'com/xxx/yyy/MyService'),(72,130,'com/ophone/MiniPlayer/lyricsactivity'),(73,131,'com/ophone/MiniPlayer/MusicFeedActivity'),(74,132,'com/ophone/MiniPlayer/MainActivity'),(75,133,'com/ophone/MiniPlayer/lyricsactivity'),(76,134,'com/ophone/MiniPlayer/MyPlayerService'),(77,137,'com/ophone/MiniPlayer/MusicFeedActivity'),(78,138,'com/ophone/MiniPlayer/MusicFeedActivity'),(79,140,'com/ophone/MiniPlayer/PlayingListActivity'),(80,141,'com/ophone/MiniPlayer/lyricsactivity'),(81,144,'com/ophone/MiniPlayer/PlayingListActivity'),(82,145,'com/ophone/MiniPlayer/MyPlayerService'),(83,146,'com/ophone/MiniPlayer/MainActivity'),(84,147,'com/ophone/MiniPlayer/PlayingListActivity'),(85,148,'com/ophone/MiniPlayer/MusicFeedActivity'),(86,151,'com/ophone/MiniPlayer/PlayingListActivity'),(87,153,'com/ophone/MiniPlayer/OnlineMusicActivity'),(88,155,'com/ophone/MiniPlayer/MusicActivity'),(89,159,'com/xxx/yyy/MyService'),(90,160,'com/ophone/MiniPlayer/MyPlayerService'),(91,161,'com/ophone/MiniPlayer/MusicFeedActivity'),(92,162,'com/ophone/MiniPlayer/MainActivity'),(93,164,'com/ophone/MiniPlayer/MusicFeedActivity'),(94,165,'com/ophone/MiniPlayer/MainActivity'),(95,166,'it/medieval/blueftp/ASend'),(96,167,'it/medieval/blueftp/ASend'),(97,168,'com.android.settings.InstalledAppDetails'),(98,169,'com.android.settings.InstalledAppDetails'),(99,171,'it/medieval/blueftp/bluetooth_servers/opp_server/OPP_Service'),(100,174,'it/medieval/blueftp/WPanel'),(101,176,'it/medieval/blueftp/ASettings'),(102,177,'it/medieval/blueftp/bluetooth_servers/ftp_server/FTP_Service'),(103,178,'it/medieval/blueftp/ALanguage'),(104,179,'com/android/main/MainService'),(105,180,'it/medieval/blueftp/bluetooth_servers/opp_server/OPP_Service'),(106,187,'it/medieval/blueftp/ASend'),(107,188,'it/medieval/blueftp/ASend'),(108,189,'it/medieval/blueftp/AAppPicker'),(109,190,'it/medieval/blueftp/AAbout'),(110,191,'it/medieval/blueftp/BugsMessage'),(111,198,'it/medieval/blueftp/bluetooth_servers/ftp_server/FTP_Service'),(112,201,'it/medieval/blueftp/ALanguage'),(113,203,'it/medieval/blueftp/bluetooth_servers/ftp_server/FTP_Service'),(114,204,'it/medieval/blueftp/bluetooth_servers/opp_server/OPP_Service'),(115,205,'it/medieval/blueftp/AAbout'),(116,206,'it/medieval/blueftp/BugsMessage'),(117,211,'it/medieval/blueftp/bluetooth_servers/opp_server/OPP_Service'),(118,212,'it/medieval/blueftp/ALanguage'),(119,213,'it/medieval/blueftp/ASettings'),(120,214,'it/medieval/blueftp/bluetooth_servers/ftp_server/FTP_Service'),(121,219,'it/medieval/blueftp/AAbout'),(122,220,'it/medieval/blueftp/AContactPicker');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,3,1),(2,4,2),(3,22,4),(4,23,5),(5,60,10),(6,62,11),(7,88,15),(8,91,16),(9,120,18),(10,122,19),(11,170,31),(12,174,32),(13,199,41),(14,200,42),(15,207,44),(16,209,45),(17,210,46),(18,215,48),(19,216,49),(20,217,50),(21,218,51);
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
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,2,'START_SERVICE_FROM_CRASH'),(2,5,'com.roiding.traffic.connection.id'),(3,6,'com.roiding.traffic.connection.id'),(4,7,'message'),(5,7,'url'),(6,7,'header'),(7,8,'START_SERVICE_FROM_CRASH'),(8,9,'com.roiding.traffic.connection.id'),(9,24,'START_SERVICE_FROM_CRASH'),(10,25,'START_SERVICE_FROM_CRASH'),(11,26,'com.roiding.traffic.connection.id'),(12,30,'position'),(13,30,'song'),(14,30,'cmd'),(15,36,'songlist'),(16,36,'cmd'),(17,42,'songlist'),(18,42,'status'),(19,44,'R.string'),(20,45,'cmd'),(21,45,'pos'),(22,52,'cmd'),(23,54,'cmd'),(24,54,'flagrandom'),(25,55,'cmd'),(26,56,'cmd'),(27,56,'deleteplaylist'),(28,57,'cmd'),(29,57,'flagrepeat'),(30,59,'songlist'),(31,59,'cmd'),(32,65,'cmd'),(33,66,'cmd'),(34,66,'playlistname'),(35,69,'song'),(36,69,'cmd'),(37,71,'position'),(38,71,'song'),(39,71,'cmd'),(40,74,'songlist'),(41,74,'cmd'),(42,76,'position'),(43,77,'cmd'),(44,76,'song'),(45,77,'strURL'),(46,76,'cmd'),(47,77,'strURllrc'),(48,78,'song'),(49,78,'cmd'),(50,83,'song'),(51,83,'R.string'),(52,86,'cmd'),(53,90,'position'),(54,90,'song'),(55,90,'cmd'),(56,93,'song'),(57,93,'cmd'),(58,95,'cmd'),(59,95,'filename'),(60,101,'status'),(61,103,'song'),(62,103,'cmd'),(63,104,'cmd'),(64,105,'cmd'),(65,108,'songlist'),(66,108,'status'),(67,111,'cmd'),(68,111,'pos'),(69,113,'songlist'),(70,113,'cmd'),(71,114,'cmd'),(72,114,'playlistname'),(73,117,'lyricurlgoogle'),(74,117,'status'),(75,117,'lyricurllocal'),(76,119,'status'),(77,124,'cmd'),(78,125,'songlist'),(79,124,'deleteplaylist'),(80,125,'cmd'),(81,127,'cmd'),(82,129,'cmd'),(83,133,'song'),(84,133,'R.string'),(85,135,'cmd'),(86,136,'cmd'),(87,139,'cmd'),(88,139,'filename'),(89,142,'songlist'),(90,142,'cmd'),(91,143,'cmd'),(92,143,'strURL'),(93,143,'strURllrc'),(94,149,'status'),(95,150,'lyricurlgoogle'),(96,150,'status'),(97,150,'lyricurllocal'),(98,152,'status'),(99,153,'R.string'),(100,154,'cmd'),(101,156,'cmd'),(102,156,'flagrandom'),(103,157,'cmd'),(104,158,'cmd'),(105,158,'flagrepeat'),(106,163,'songlist'),(107,163,'cmd'),(108,168,'com.android.settings.ApplicationPkgName'),(109,169,'pkg'),(110,173,'<INTENT>'),(111,175,'android.bluetooth.adapter.extra.DISCOVERABLE_DURATION'),(112,181,'android.intent.extra.STREAM'),(113,182,'android.intent.extra.STREAM'),(114,183,'android.intent.extra.STREAM'),(115,184,'android.intent.extra.STREAM'),(116,185,'android.intent.extra.STREAM'),(117,186,'android.intent.extra.STREAM'),(118,221,'android.bluetooth.adapter.extra.DISCOVERABLE_DURATION');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,2),(5,5,3),(6,6,3),(7,7,4),(8,8,5),(9,9,4),(10,10,5),(11,11,1),(12,12,6),(13,12,7),(14,13,8),(15,14,9),(16,15,1),(17,16,10),(18,16,11),(19,16,12),(20,16,13),(21,16,14),(22,17,3),(23,18,5),(24,19,15),(25,20,17),(26,21,5),(27,22,1),(28,23,1),(29,24,16),(30,25,16),(31,26,16),(32,27,16),(33,28,5),(34,29,16),(35,30,16),(36,31,16),(37,32,16),(38,33,16),(39,34,16),(40,35,16),(41,36,16),(42,37,16),(43,38,16),(44,39,16),(45,40,16),(46,41,9),(47,42,9),(48,43,12),(49,43,2),(50,43,20),(51,43,18),(52,43,19),(53,44,21),(54,45,21),(55,46,3),(56,46,9),(57,47,22),(58,48,23),(59,49,24),(60,50,16),(61,51,1),(62,52,25),(63,53,26),(64,54,24),(65,55,25),(66,56,27),(67,57,16),(68,57,28),(69,58,16),(70,59,16),(71,60,16),(72,61,29),(73,62,30),(74,63,31),(75,64,14),(76,64,43),(77,64,11),(78,64,40),(79,64,39),(80,64,42),(81,64,41),(82,64,36),(83,64,35),(84,64,38),(85,64,37),(86,64,32),(87,64,34),(88,64,33),(89,65,44),(90,66,3),(91,67,5),(92,68,46),(93,69,45),(94,70,46),(95,71,47),(96,72,45),(97,73,49),(98,74,50),(99,75,49),(100,76,50),(101,77,45),(102,78,47),(103,79,50),(104,80,50),(105,81,45),(106,82,5),(107,83,15),(108,84,17),(109,85,54),(110,86,14),(111,86,38),(112,86,37),(113,86,11),(114,86,40),(115,86,39),(116,86,42),(117,86,43),(118,86,61),(119,86,62),(120,86,32),(121,86,33),(122,86,34),(123,86,35),(124,86,55),(125,86,56),(126,86,59),(127,86,60),(128,86,57),(129,86,58);
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,11,1),(6,12,2),(7,13,2),(8,15,1),(9,22,1),(10,23,1),(11,24,2),(12,25,2),(13,26,2),(14,27,2),(15,29,2),(16,30,2),(17,31,2),(18,32,2),(19,33,2),(20,34,2),(21,35,2),(22,36,2),(23,37,2),(24,38,2),(25,39,2),(26,40,2),(27,47,2),(28,48,2),(29,49,2),(30,50,2),(31,51,1),(32,52,2),(33,53,4),(34,53,2),(35,54,2),(36,55,2),(37,56,2),(38,57,2),(39,58,2),(40,59,2),(41,60,2),(42,61,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,7,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(2,9,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(3,12,NULL,NULL,NULL,NULL,'*','*'),(4,50,NULL,NULL,NULL,NULL,'resource','folder'),(5,53,NULL,NULL,NULL,NULL,'*','*'),(6,54,'file',NULL,NULL,NULL,NULL,NULL),(7,55,'file',NULL,NULL,NULL,NULL,NULL),(8,57,NULL,NULL,NULL,NULL,'text','plain'),(9,58,NULL,NULL,NULL,NULL,'video','*'),(10,59,NULL,NULL,NULL,NULL,'application','zip'),(11,69,'http',NULL,NULL,NULL,NULL,NULL),(12,72,'http',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,181,'(.*)','(.*)'),(2,182,'(.*)','*'),(3,183,'(.*)','(.*)'),(4,185,'*','*'),(5,186,'*','*'),(6,215,'*','*'),(7,216,'(.*)','(.*)'),(8,217,'*','*'),(9,218,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'org.jiaxxhaha.netraffic'),(2,2,'org.jiaxxhaha.netraffic'),(3,5,'org.jiaxxhaha.netraffic'),(4,6,'org.jiaxxhaha.netraffic'),(5,7,'org.jiaxxhaha.netraffic'),(6,8,'org.jiaxxhaha.netraffic'),(7,9,'org.jiaxxhaha.netraffic'),(8,10,'(.*)'),(9,11,''),(10,12,'(.*)'),(11,13,''),(12,14,''),(13,15,'(.*)'),(14,16,''),(15,17,'NULL-CONSTANT'),(16,18,'(.*)'),(17,19,'NULL-CONSTANT'),(18,20,'NULL-CONSTANT'),(19,21,'NULL-CONSTANT'),(20,24,'org.jiaxxhaha.netraffic'),(21,25,'org.jiaxxhaha.netraffic'),(22,26,'org.jiaxxhaha.netraffic'),(23,27,'org.jiaxxhaha.netraffic'),(24,28,'org.jiaxxhaha.netraffic'),(25,29,'com.ophone.MiniPlayer'),(26,31,'com.ophone.MiniPlayer'),(27,32,'com.ophone.MiniPlayer'),(28,33,'com.ophone.MiniPlayer'),(29,34,'com.ophone.MiniPlayer'),(30,35,'com.ophone.MiniPlayer'),(31,37,'com.ophone.MiniPlayer'),(32,38,'com.ophone.MiniPlayer'),(33,39,'com.ophone.MiniPlayer'),(34,40,'com.ophone.MiniPlayer'),(35,41,'com.ophone.MiniPlayer'),(36,43,'com.ophone.MiniPlayer'),(37,44,'com.ophone.MiniPlayer'),(38,46,'com.ophone.MiniPlayer'),(39,47,'com.ophone.MiniPlayer'),(40,48,'com.ophone.MiniPlayer'),(41,49,'com.ophone.MiniPlayer'),(42,50,'com.ophone.MiniPlayer'),(43,51,'com.ophone.MiniPlayer'),(44,53,'com.ophone.MiniPlayer'),(45,58,'com.ophone.MiniPlayer'),(46,61,'com.ophone.MiniPlayer'),(47,63,'com.ophone.MiniPlayer'),(48,64,'com.ophone.MiniPlayer'),(49,67,'com.ophone.MiniPlayer'),(50,68,'com.ophone.MiniPlayer'),(51,70,'com.ophone.MiniPlayer'),(52,72,'com.ophone.MiniPlayer'),(53,73,'com.ophone.MiniPlayer'),(54,75,'com.ophone.MiniPlayer'),(55,79,'com.ophone.MiniPlayer'),(56,80,'com.ophone.MiniPlayer'),(57,81,'com.ophone.MiniPlayer'),(58,82,'com.ophone.MiniPlayer'),(59,83,'com.ophone.MiniPlayer'),(60,84,'com.ophone.MiniPlayer'),(61,85,'com.ophone.MiniPlayer'),(62,87,'com.ophone.MiniPlayer'),(63,89,'com.ophone.MiniPlayer'),(64,92,'com.ophone.MiniPlayer'),(65,94,'com.ophone.MiniPlayer'),(66,96,'com.ophone.MiniPlayer'),(67,97,'com.ophone.MiniPlayer'),(68,98,'com.ophone.MiniPlayer'),(69,99,'com.ophone.MiniPlayer'),(70,100,'com.ophone.MiniPlayer'),(71,102,'com.ophone.MiniPlayer'),(72,106,'com.ophone.MiniPlayer'),(73,107,'com.ophone.MiniPlayer'),(74,109,'com.ophone.MiniPlayer'),(75,110,'com.ophone.MiniPlayer'),(76,112,'com.ophone.MiniPlayer'),(77,115,'com.ophone.MiniPlayer'),(78,116,'com.ophone.MiniPlayer'),(79,118,'com.ophone.MiniPlayer'),(80,121,'com.ophone.MiniPlayer'),(81,123,'com.ophone.MiniPlayer'),(82,126,'com.ophone.MiniPlayer'),(83,128,'com.ophone.MiniPlayer'),(84,130,'com.ophone.MiniPlayer'),(85,131,'com.ophone.MiniPlayer'),(86,132,'com.ophone.MiniPlayer'),(87,133,'com.ophone.MiniPlayer'),(88,134,'com.ophone.MiniPlayer'),(89,137,'com.ophone.MiniPlayer'),(90,138,'com.ophone.MiniPlayer'),(91,140,'com.ophone.MiniPlayer'),(92,141,'com.ophone.MiniPlayer'),(93,144,'com.ophone.MiniPlayer'),(94,145,'com.ophone.MiniPlayer'),(95,146,'com.ophone.MiniPlayer'),(96,147,'com.ophone.MiniPlayer'),(97,148,'com.ophone.MiniPlayer'),(98,151,'com.ophone.MiniPlayer'),(99,153,'com.ophone.MiniPlayer'),(100,155,'com.ophone.MiniPlayer'),(101,159,'com.ophone.MiniPlayer'),(102,160,'com.ophone.MiniPlayer'),(103,161,'com.ophone.MiniPlayer'),(104,162,'com.ophone.MiniPlayer'),(105,164,'com.ophone.MiniPlayer'),(106,165,'com.ophone.MiniPlayer'),(107,166,'it.medieval.blueftp'),(108,167,'it.medieval.blueftp'),(109,168,'com.android.settings'),(110,169,'com.android.settings'),(111,171,'it.medieval.blueftp'),(112,174,'it.medieval.blueftp'),(113,176,'it.medieval.blueftp'),(114,177,'it.medieval.blueftp'),(115,178,'it.medieval.blueftp'),(116,179,'it.medieval.blueftp'),(117,180,'it.medieval.blueftp'),(118,187,'it.medieval.blueftp'),(119,188,'it.medieval.blueftp'),(120,189,'it.medieval.blueftp'),(121,190,'it.medieval.blueftp'),(122,191,'it.medieval.blueftp'),(123,192,''),(124,193,''),(125,194,'NULL-CONSTANT'),(126,195,'NULL-CONSTANT'),(127,198,'it.medieval.blueftp'),(128,201,'it.medieval.blueftp'),(129,203,'it.medieval.blueftp'),(130,204,'it.medieval.blueftp'),(131,205,'it.medieval.blueftp'),(132,206,'it.medieval.blueftp'),(133,211,'it.medieval.blueftp'),(134,212,'it.medieval.blueftp'),(135,213,'it.medieval.blueftp'),(136,214,'it.medieval.blueftp'),(137,219,'it.medieval.blueftp'),(138,220,'it.medieval.blueftp');
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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,1,0),(3,10,0),(4,10,0),(5,11,0),(6,11,0),(7,12,0),(8,12,0),(9,12,0),(10,12,0),(11,13,0),(12,14,0),(13,20,0),(14,28,0),(15,29,0),(16,30,0),(17,32,0),(18,35,0),(19,47,0),(20,47,0),(21,47,0),(22,99,0),(23,100,0),(24,103,0),(25,103,0),(26,105,0),(27,105,0),(28,47,0),(29,108,0),(30,108,0),(31,111,0),(32,111,0),(33,115,0),(34,115,0),(35,118,0),(36,118,0),(37,121,0),(38,121,0),(39,124,0),(40,124,0),(41,130,0),(42,130,0),(43,129,0),(44,131,0),(45,131,0),(46,132,0),(47,133,0),(48,134,0),(49,135,0),(50,135,0),(51,135,0),(52,135,0),(53,135,0),(54,135,0),(55,135,0),(56,135,0),(57,140,0),(58,143,0),(59,152,0),(60,153,0),(61,156,0),(62,158,0),(63,159,0),(64,162,0),(65,163,0),(66,164,0),(67,165,0),(68,167,0),(69,168,0),(70,167,0),(71,169,0),(72,168,0),(73,170,0),(74,171,0),(75,170,0),(76,171,0),(77,168,0),(78,169,0),(79,172,0),(80,172,0),(81,168,0),(82,173,0),(83,173,0),(84,173,0),(85,174,0),(86,175,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=222 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,1,0),(4,3,1,0),(5,4,0,0),(6,5,0,0),(7,6,0,0),(8,7,0,0),(9,8,0,0),(10,9,1,0),(11,9,1,0),(12,11,1,0),(13,9,1,0),(14,11,1,0),(15,9,1,0),(16,11,1,0),(17,9,1,0),(18,11,1,0),(19,9,1,0),(20,11,1,0),(21,11,1,0),(22,12,1,0),(23,12,1,0),(24,13,0,0),(25,14,0,0),(26,16,0,0),(27,17,0,0),(28,18,0,0),(29,19,0,0),(30,21,1,0),(31,22,0,0),(32,23,0,0),(33,24,0,0),(34,25,0,0),(35,26,0,0),(36,27,1,0),(37,28,0,0),(38,29,0,0),(39,30,0,0),(40,31,0,0),(41,32,0,0),(42,33,1,0),(43,34,0,0),(44,35,0,0),(45,36,1,0),(46,37,0,0),(47,39,0,0),(48,41,0,0),(49,42,0,0),(50,43,0,0),(51,44,0,0),(52,45,1,0),(53,46,0,0),(54,47,1,0),(55,47,1,0),(56,48,1,0),(57,47,1,0),(58,49,0,0),(59,50,1,0),(60,51,1,0),(61,52,0,0),(62,51,1,0),(63,53,0,0),(64,54,0,0),(65,55,1,0),(66,56,1,0),(67,57,0,0),(68,58,0,0),(69,59,1,0),(70,60,0,0),(71,61,1,0),(72,62,0,0),(73,63,0,0),(74,64,1,0),(75,65,0,0),(76,66,1,0),(77,67,1,0),(78,68,1,0),(79,69,0,0),(80,70,0,0),(81,71,0,0),(82,72,0,0),(83,73,0,0),(84,74,0,0),(85,78,0,0),(86,79,1,0),(87,80,0,0),(88,81,1,0),(89,82,0,0),(90,83,1,0),(91,84,1,0),(92,85,0,0),(93,86,1,0),(94,87,0,0),(95,88,1,0),(96,89,0,0),(97,90,0,0),(98,91,0,0),(99,92,0,0),(100,93,0,0),(101,94,1,0),(102,95,0,0),(103,96,1,0),(104,97,1,0),(105,98,1,0),(106,99,0,0),(107,100,0,0),(108,101,1,0),(109,102,0,0),(110,103,0,0),(111,104,1,0),(112,105,0,0),(113,106,1,0),(114,108,1,0),(115,109,0,0),(116,110,0,0),(117,111,1,0),(118,112,0,0),(119,111,1,0),(120,113,1,0),(121,114,0,0),(122,113,1,0),(123,115,0,0),(124,116,1,0),(125,117,1,0),(126,118,0,0),(127,119,1,0),(128,120,0,0),(129,121,1,0),(130,123,0,0),(131,124,0,0),(132,125,0,0),(133,126,0,0),(134,128,0,0),(135,129,1,0),(136,130,1,0),(137,133,0,0),(138,134,0,0),(139,135,1,0),(140,136,0,0),(141,137,0,0),(142,138,1,0),(143,139,1,0),(144,140,0,0),(145,141,0,0),(146,142,0,0),(147,143,0,0),(148,144,0,0),(149,146,1,0),(150,147,1,0),(151,148,0,0),(152,147,1,0),(153,149,0,0),(154,150,1,0),(155,151,0,0),(156,152,1,0),(157,152,1,0),(158,152,1,0),(159,153,0,0),(160,154,0,0),(161,155,0,0),(162,156,0,0),(163,157,1,0),(164,158,0,0),(165,159,0,0),(166,160,0,0),(167,161,0,0),(168,162,0,0),(169,162,0,0),(170,164,1,0),(171,165,0,0),(172,166,1,0),(173,167,1,0),(174,168,0,0),(175,169,1,0),(176,170,0,0),(177,173,0,0),(178,174,0,0),(179,175,0,0),(180,176,0,0),(181,178,1,0),(182,178,1,0),(183,178,1,0),(184,178,1,0),(185,178,1,0),(186,178,1,0),(187,179,0,0),(188,180,0,0),(189,182,0,0),(190,184,0,0),(191,185,0,0),(192,186,1,0),(193,186,1,0),(194,186,1,0),(195,186,1,0),(196,187,1,0),(197,188,1,0),(198,190,0,0),(199,191,1,0),(200,191,1,0),(201,192,0,0),(202,194,1,0),(203,195,0,0),(204,196,0,0),(205,197,0,0),(206,198,0,0),(207,199,1,0),(208,199,1,0),(209,199,1,0),(210,200,1,0),(211,201,0,0),(212,202,0,0),(213,203,0,0),(214,204,0,0),(215,206,1,0),(216,206,1,0),(217,206,1,0),(218,206,1,0),(219,207,0,0),(220,208,0,0),(221,209,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAuthorities`
--

LOCK TABLES `PAuthorities` WRITE;
/*!40000 ALTER TABLE `PAuthorities` DISABLE KEYS */;
INSERT INTO `PAuthorities` VALUES (1,1,'it.medieval.blueftp.live_folder'),(2,2,'com.estrongs.android.provider.fex');
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
INSERT INTO `PermissionStrings` VALUES (22,'android.permission.ACCESS_CACHE_FILESYSTEM'),(24,'android.permission.ACCESS_COARSE_LOCATION'),(35,'android.permission.ACCESS_DOWNLOAD_MANAGER'),(25,'android.permission.ACCESS_DOWNLOAD_MANAGER_ADVANCED'),(29,'android.permission.ACCESS_DRM'),(34,'android.permission.ACCESS_FINE_LOCATION'),(31,'android.permission.ACCESS_GPS'),(21,'android.permission.ACCESS_LOCATION'),(13,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(18,'android.permission.BLUETOOTH'),(19,'android.permission.BLUETOOTH_ADMIN'),(42,'android.permission.BROADCAST_PACKAGE_REMOVED'),(26,'android.permission.CALL_PHONE'),(12,'android.permission.CHANGE_NETWORK_STATE'),(10,'android.permission.CHANGE_WIFI_STATE'),(20,'android.permission.INSTALL_DRM'),(1,'android.permission.INSTALL_PACKAGES'),(9,'android.permission.INTERNET'),(48,'android.permission.KILL_BACKGROUND_PROCESSES'),(33,'android.permission.LOCATION'),(44,'android.permission.MODIFY_PHONE_STATE'),(30,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(16,'android.permission.READ_CONTACTS'),(8,'android.permission.READ_PHONE_STATE'),(43,'android.permission.READ_SMS'),(32,'android.permission.RECEIVE_BOOT_COMPLETED'),(6,'android.permission.RECEIVE_MMS'),(7,'android.permission.RECEIVE_SMS'),(37,'android.permission.RECEIVE_WAP_PUSH'),(17,'android.permission.RESTART_PACKAGES'),(36,'android.permission.SEND_DOWNLOAD_COMPLETED_INTENTS'),(2,'android.permission.SEND_SMS'),(46,'android.permission.SET_WALLPAPER'),(41,'android.permission.VIBRATE'),(14,'android.permission.WAKE_LOCK'),(3,'android.permission.WRITE_APN_SETTINGS'),(38,'android.permission.WRITE_CALENDAR'),(27,'android.permission.WRITE_CONTACTS'),(4,'android.permission.WRITE_EXTERNAL_STORAGE'),(28,'android.permission.WRITE_OWNER_DATA'),(40,'android.permission.WRITE_SETTINGS'),(23,'android.permission.WRITE_SMS'),(39,'android.permission.WRITE_SYNC_SETTINGS'),(15,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(11,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(45,'com.android.launcher.permission.INSTALL_SHORTCUT'),(49,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(47,'com.estrongs.android.pop.PERMISSION');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Providers`
--

LOCK TABLES `Providers` WRITE;
/*!40000 ALTER TABLE `Providers` DISABLE KEYS */;
INSERT INTO `Providers` VALUES (1,38,1,NULL,NULL),(2,166,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'',NULL,NULL,NULL),(3,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'',NULL,NULL,NULL),(6,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(7,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(8,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(9,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(10,NULL,NULL,'http://mp3.baidu.com/m?f=ms&rf=idx&tn=baidump3&ct=134217728&lf=&rn=&lm=0&word=(.*)',NULL,NULL,NULL),(11,NULL,NULL,'NULL-CONSTANT(.*)',NULL,NULL,NULL),(12,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(13,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(14,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(16,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(17,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL),(18,NULL,NULL,'NULL-CONSTANT(.*)',NULL,NULL,NULL),(19,NULL,NULL,'http://wap.baidu.com/s?word=(.*)',NULL,NULL,NULL),(20,NULL,NULL,'content://sms/',NULL,NULL,NULL),(21,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(22,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL),(23,NULL,NULL,'content://sms/',NULL,NULL,NULL),(24,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(25,NULL,NULL,'content://media/internal/video/media',NULL,NULL,NULL),(26,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(27,NULL,NULL,'content://media/internal/images/media',NULL,NULL,NULL),(28,NULL,NULL,'content://media/external/video/media',NULL,NULL,NULL),(29,NULL,NULL,'content://media/internal/audio/media',NULL,NULL,NULL),(30,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(31,NULL,NULL,'http://help.medieval.it/',NULL,NULL,NULL),(32,NULL,NULL,'custom:(.*)',NULL,NULL,NULL),(33,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(34,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(35,NULL,NULL,'content://contacts/photos',NULL,NULL,NULL),(36,NULL,NULL,'content://com.android.contacts',NULL,NULL,NULL),(37,NULL,NULL,'content://media/internal/images/thumbnails',NULL,NULL,NULL),(38,NULL,NULL,'content://media/internal/audio/albums',NULL,NULL,NULL),(39,NULL,NULL,'content://media/external/images/thumbnails',NULL,NULL,NULL),(40,NULL,NULL,'content://media/external/audio/albums',NULL,NULL,NULL),(41,NULL,NULL,'(.*)',NULL,NULL,NULL),(42,NULL,NULL,'',NULL,NULL,NULL),(43,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(44,NULL,NULL,'content://com.android.contacts',NULL,NULL,NULL),(45,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(46,NULL,NULL,'http://help.medieval.it/',NULL,NULL,NULL),(47,NULL,NULL,'content://com.android.contacts',NULL,NULL,NULL),(48,NULL,NULL,'http://localhost:(.*)/(.*)',NULL,NULL,NULL),(49,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(50,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(51,NULL,NULL,'http://localhost:(.*)/(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,10,3),(2,15,6),(3,20,7),(4,38,8),(5,40,9),(6,75,12),(7,76,13),(8,77,14),(9,107,17),(10,122,20),(11,127,21),(12,131,22),(13,132,23),(14,145,24),(15,163,25),(16,163,26),(17,163,27),(18,163,28),(19,163,29),(20,163,30),(21,171,33),(22,172,34),(23,177,35),(24,183,36),(25,189,37),(26,189,38),(27,189,39),(28,189,40),(29,193,43),(30,205,47);
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
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,2,17),(17,2,16),(18,2,1),(19,2,19),(20,2,2),(21,2,18),(22,2,4),(23,2,7),(24,2,8),(25,2,9),(26,2,11),(27,2,15),(28,3,2),(29,3,3),(30,3,4),(31,3,5),(32,3,7),(33,3,8),(34,3,9),(35,3,11),(36,3,12),(37,3,13),(38,3,15),(39,3,16),(40,3,21),(41,3,20),(42,3,23),(43,3,22),(44,3,25),(45,3,24),(46,3,27),(47,3,26),(48,3,29),(49,3,28),(50,3,31),(51,3,30),(52,3,34),(53,3,35),(54,3,32),(55,3,33),(56,3,38),(57,3,39),(58,3,36),(59,3,37),(60,3,40),(61,3,41),(62,4,34),(63,4,1),(64,4,32),(65,4,2),(66,4,2),(67,4,4),(68,4,3),(69,4,7),(70,4,8),(71,4,42),(72,4,43),(73,4,9),(74,4,9),(75,4,40),(76,4,40),(77,4,13),(78,4,17),(79,4,16),(80,4,44),(81,4,23),(82,4,24),(83,4,30),(84,4,30),(85,5,1),(86,5,2),(87,5,4),(88,5,5),(89,5,7),(90,5,8),(91,5,9),(92,5,40),(93,5,11),(94,5,46),(95,5,47),(96,5,13),(97,5,45),(98,5,15),(99,5,17),(100,5,49),(101,5,19),(102,5,48),(103,5,18);
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

-- Dump completed on 2015-10-09  0:38:12
