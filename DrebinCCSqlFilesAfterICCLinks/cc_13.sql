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
) ENGINE=InnoDB AUTO_INCREMENT=3663 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,84,128,2,NULL),(2,159,128,2,NULL),(3,3,99,2,NULL),(4,4,99,2,NULL),(5,10,99,2,NULL),(6,11,99,2,NULL),(7,13,99,2,NULL),(8,15,99,2,NULL),(9,17,99,2,NULL),(10,19,99,2,NULL),(11,12,99,2,NULL),(12,14,99,2,NULL),(13,16,99,2,NULL),(14,18,99,2,NULL),(15,20,99,2,NULL),(16,21,99,2,NULL),(17,22,99,2,NULL),(18,23,99,2,NULL),(19,184,99,2,NULL),(20,221,99,2,NULL),(21,208,99,2,NULL),(22,173,99,2,NULL),(23,196,99,2,NULL),(24,192,99,2,NULL),(25,193,99,2,NULL),(26,194,99,2,NULL),(27,195,99,2,NULL),(28,199,99,2,NULL),(29,200,99,2,NULL),(30,175,99,2,NULL),(31,197,99,2,NULL),(32,52,99,2,NULL),(33,54,99,2,NULL),(34,55,99,2,NULL),(35,57,99,2,NULL),(36,69,99,2,NULL),(37,93,99,2,NULL),(38,135,99,2,NULL),(39,156,99,2,NULL),(40,157,99,2,NULL),(41,158,99,2,NULL),(42,71,99,2,NULL),(43,76,99,2,NULL),(44,113,99,2,NULL),(45,125,99,2,NULL),(46,142,99,2,NULL),(47,30,99,2,NULL),(48,36,99,2,NULL),(49,74,99,2,NULL),(50,77,99,2,NULL),(51,90,99,2,NULL),(52,143,99,2,NULL),(53,45,99,2,NULL),(54,56,99,2,NULL),(55,59,99,2,NULL),(56,65,99,2,NULL),(57,66,99,2,NULL),(58,95,99,2,NULL),(59,104,99,2,NULL),(60,111,99,2,NULL),(61,114,99,2,NULL),(62,124,99,2,NULL),(63,127,99,2,NULL),(64,136,99,2,NULL),(65,139,99,2,NULL),(66,163,99,2,NULL),(67,78,99,2,NULL),(68,86,99,2,NULL),(69,103,99,2,NULL),(70,105,99,2,NULL),(71,129,99,2,NULL),(72,154,99,2,NULL),(73,42,99,2,NULL),(74,101,99,2,NULL),(75,108,99,2,NULL),(76,117,99,2,NULL),(77,119,99,2,NULL),(78,149,99,2,NULL),(79,150,99,2,NULL),(80,152,99,2,NULL),(81,3,100,2,NULL),(82,4,100,2,NULL),(83,10,100,2,NULL),(84,11,100,2,NULL),(85,13,100,2,NULL),(86,15,100,2,NULL),(87,17,100,2,NULL),(88,19,100,2,NULL),(89,12,100,2,NULL),(90,14,100,2,NULL),(91,16,100,2,NULL),(92,18,100,2,NULL),(93,20,100,2,NULL),(94,21,100,2,NULL),(95,22,100,2,NULL),(96,23,100,2,NULL),(97,184,100,2,NULL),(98,221,100,2,NULL),(99,208,100,2,NULL),(100,173,100,2,NULL),(101,196,100,2,NULL),(102,192,100,2,NULL),(103,193,100,2,NULL),(104,194,100,2,NULL),(105,195,100,2,NULL),(106,199,100,2,NULL),(107,200,100,2,NULL),(108,175,100,2,NULL),(109,197,100,2,NULL),(110,52,100,2,NULL),(111,54,100,2,NULL),(112,55,100,2,NULL),(113,57,100,2,NULL),(114,69,100,2,NULL),(115,93,100,2,NULL),(116,135,100,2,NULL),(117,156,100,2,NULL),(118,157,100,2,NULL),(119,158,100,2,NULL),(120,71,100,2,NULL),(121,76,100,2,NULL),(122,113,100,2,NULL),(123,125,100,2,NULL),(124,142,100,2,NULL),(125,30,100,2,NULL),(126,36,100,2,NULL),(127,74,100,2,NULL),(128,77,100,2,NULL),(129,90,100,2,NULL),(130,143,100,2,NULL),(131,45,100,2,NULL),(132,56,100,2,NULL),(133,59,100,2,NULL),(134,65,100,2,NULL),(135,66,100,2,NULL),(136,95,100,2,NULL),(137,104,100,2,NULL),(138,111,100,2,NULL),(139,114,100,2,NULL),(140,124,100,2,NULL),(141,127,100,2,NULL),(142,136,100,2,NULL),(143,139,100,2,NULL),(144,163,100,2,NULL),(145,78,100,2,NULL),(146,86,100,2,NULL),(147,103,100,2,NULL),(148,105,100,2,NULL),(149,129,100,2,NULL),(150,154,100,2,NULL),(151,42,100,2,NULL),(152,101,100,2,NULL),(153,108,100,2,NULL),(154,117,100,2,NULL),(155,119,100,2,NULL),(156,149,100,2,NULL),(157,150,100,2,NULL),(158,152,100,2,NULL),(159,33,118,2,NULL),(160,34,121,2,NULL),(161,41,127,2,NULL),(162,50,127,2,NULL),(163,97,111,2,NULL),(164,98,111,2,NULL),(165,109,108,2,NULL),(166,141,121,2,NULL),(167,151,118,2,NULL),(168,155,108,2,NULL),(169,3,103,2,NULL),(170,4,103,2,NULL),(171,10,103,2,NULL),(172,11,103,2,NULL),(173,13,103,2,NULL),(174,15,103,2,NULL),(175,17,103,2,NULL),(176,19,103,2,NULL),(177,12,103,2,NULL),(178,14,103,2,NULL),(179,16,103,2,NULL),(180,18,103,2,NULL),(181,20,103,2,NULL),(182,21,103,2,NULL),(183,22,103,2,NULL),(184,23,103,2,NULL),(185,184,103,2,NULL),(186,221,103,2,NULL),(187,208,103,2,NULL),(188,173,103,2,NULL),(189,196,103,2,NULL),(190,192,103,2,NULL),(191,193,103,2,NULL),(192,194,103,2,NULL),(193,195,103,2,NULL),(194,199,103,2,NULL),(195,200,103,2,NULL),(196,175,103,2,NULL),(197,197,103,2,NULL),(198,52,103,2,NULL),(199,54,103,2,NULL),(200,55,103,2,NULL),(201,57,103,2,NULL),(202,69,103,2,NULL),(203,93,103,2,NULL),(204,135,103,2,NULL),(205,156,103,2,NULL),(206,157,103,2,NULL),(207,158,103,2,NULL),(208,71,103,2,NULL),(209,76,103,2,NULL),(210,113,103,2,NULL),(211,125,103,2,NULL),(212,142,103,2,NULL),(213,30,103,2,NULL),(214,36,103,2,NULL),(215,74,103,2,NULL),(216,77,103,2,NULL),(217,90,103,2,NULL),(218,143,103,2,NULL),(219,45,103,2,NULL),(220,56,103,2,NULL),(221,59,103,2,NULL),(222,65,103,2,NULL),(223,66,103,2,NULL),(224,95,103,2,NULL),(225,104,103,2,NULL),(226,111,103,2,NULL),(227,114,103,2,NULL),(228,124,103,2,NULL),(229,127,103,2,NULL),(230,136,103,2,NULL),(231,139,103,2,NULL),(232,163,103,2,NULL),(233,78,103,2,NULL),(234,86,103,2,NULL),(235,103,103,2,NULL),(236,105,103,2,NULL),(237,129,103,2,NULL),(238,154,103,2,NULL),(239,42,103,2,NULL),(240,101,103,2,NULL),(241,108,103,2,NULL),(242,117,103,2,NULL),(243,119,103,2,NULL),(244,149,103,2,NULL),(245,150,103,2,NULL),(246,152,103,2,NULL),(247,29,118,2,NULL),(248,35,103,2,NULL),(249,53,118,2,NULL),(250,70,127,2,NULL),(251,75,118,2,NULL),(252,80,108,2,NULL),(253,102,108,2,NULL),(254,123,127,2,NULL),(255,138,111,2,NULL),(256,147,118,2,NULL),(257,148,111,2,NULL),(258,165,103,2,NULL),(259,52,1,2,NULL),(260,54,1,2,NULL),(261,55,1,2,NULL),(262,57,1,2,NULL),(263,69,1,2,NULL),(264,93,1,2,NULL),(265,135,1,2,NULL),(266,156,1,2,NULL),(267,157,1,2,NULL),(268,158,1,2,NULL),(269,3,105,2,NULL),(270,4,105,2,NULL),(271,10,105,2,NULL),(272,11,105,2,NULL),(273,13,105,2,NULL),(274,15,105,2,NULL),(275,17,105,2,NULL),(276,19,105,2,NULL),(277,12,105,2,NULL),(278,14,105,2,NULL),(279,16,105,2,NULL),(280,18,105,2,NULL),(281,20,105,2,NULL),(282,21,105,2,NULL),(283,22,105,2,NULL),(284,23,105,2,NULL),(285,52,10,2,NULL),(286,54,10,2,NULL),(287,55,10,2,NULL),(288,57,10,2,NULL),(289,69,10,2,NULL),(290,93,10,2,NULL),(291,135,10,2,NULL),(292,156,10,2,NULL),(293,157,10,2,NULL),(294,158,10,2,NULL),(295,52,11,2,NULL),(296,54,11,2,NULL),(297,55,11,2,NULL),(298,57,11,2,NULL),(299,69,11,2,NULL),(300,93,11,2,NULL),(301,135,11,2,NULL),(302,156,11,2,NULL),(303,157,11,2,NULL),(304,158,11,2,NULL),(305,52,12,2,NULL),(306,54,12,2,NULL),(307,55,12,2,NULL),(308,57,12,2,NULL),(309,69,12,2,NULL),(310,93,12,2,NULL),(311,135,12,2,NULL),(312,156,12,2,NULL),(313,157,12,2,NULL),(314,158,12,2,NULL),(315,52,47,2,NULL),(316,54,47,2,NULL),(317,55,47,2,NULL),(318,57,47,2,NULL),(319,69,47,2,NULL),(320,93,47,2,NULL),(321,135,47,2,NULL),(322,156,47,2,NULL),(323,157,47,2,NULL),(324,158,47,2,NULL),(325,52,13,2,NULL),(326,54,13,2,NULL),(327,55,13,2,NULL),(328,57,13,2,NULL),(329,69,13,2,NULL),(330,93,13,2,NULL),(331,135,13,2,NULL),(332,156,13,2,NULL),(333,157,13,2,NULL),(334,158,13,2,NULL),(335,184,105,2,NULL),(336,221,105,2,NULL),(337,208,105,2,NULL),(338,173,105,2,NULL),(339,52,20,2,NULL),(340,54,20,2,NULL),(341,55,20,2,NULL),(342,57,20,2,NULL),(343,69,20,2,NULL),(344,93,20,2,NULL),(345,135,20,2,NULL),(346,156,20,2,NULL),(347,157,20,2,NULL),(348,158,20,2,NULL),(349,196,105,2,NULL),(350,192,105,2,NULL),(351,193,105,2,NULL),(352,194,105,2,NULL),(353,195,105,2,NULL),(354,199,105,2,NULL),(355,200,105,2,NULL),(356,52,28,2,NULL),(357,54,28,2,NULL),(358,55,28,2,NULL),(359,57,28,2,NULL),(360,69,28,2,NULL),(361,93,28,2,NULL),(362,135,28,2,NULL),(363,156,28,2,NULL),(364,157,28,2,NULL),(365,158,28,2,NULL),(366,52,30,2,NULL),(367,54,30,2,NULL),(368,55,30,2,NULL),(369,57,30,2,NULL),(370,69,30,2,NULL),(371,93,30,2,NULL),(372,135,30,2,NULL),(373,156,30,2,NULL),(374,157,30,2,NULL),(375,158,30,2,NULL),(376,175,105,2,NULL),(377,197,105,2,NULL),(378,52,32,2,NULL),(379,54,32,2,NULL),(380,55,32,2,NULL),(381,57,32,2,NULL),(382,69,32,2,NULL),(383,93,32,2,NULL),(384,135,32,2,NULL),(385,156,32,2,NULL),(386,157,32,2,NULL),(387,158,32,2,NULL),(388,52,35,2,NULL),(389,54,35,2,NULL),(390,55,35,2,NULL),(391,57,35,2,NULL),(392,69,35,2,NULL),(393,93,35,2,NULL),(394,135,35,2,NULL),(395,156,35,2,NULL),(396,157,35,2,NULL),(397,158,35,2,NULL),(398,52,173,2,NULL),(399,54,173,2,NULL),(400,55,173,2,NULL),(401,57,173,2,NULL),(402,69,173,2,NULL),(403,93,173,2,NULL),(404,135,173,2,NULL),(405,156,173,2,NULL),(406,157,173,2,NULL),(407,158,173,2,NULL),(408,52,174,2,NULL),(409,54,174,2,NULL),(410,55,174,2,NULL),(411,57,174,2,NULL),(412,69,174,2,NULL),(413,93,174,2,NULL),(414,135,174,2,NULL),(415,156,174,2,NULL),(416,157,174,2,NULL),(417,158,174,2,NULL),(418,52,175,2,NULL),(419,54,175,2,NULL),(420,55,175,2,NULL),(421,57,175,2,NULL),(422,69,175,2,NULL),(423,93,175,2,NULL),(424,135,175,2,NULL),(425,156,175,2,NULL),(426,157,175,2,NULL),(427,158,175,2,NULL),(428,52,29,2,NULL),(429,54,29,2,NULL),(430,55,29,2,NULL),(431,57,29,2,NULL),(432,69,29,2,NULL),(433,93,29,2,NULL),(434,135,29,2,NULL),(435,156,29,2,NULL),(436,157,29,2,NULL),(437,158,29,2,NULL),(438,52,129,2,NULL),(439,54,129,2,NULL),(440,55,129,2,NULL),(441,57,129,2,NULL),(442,69,129,2,NULL),(443,93,129,2,NULL),(444,135,129,2,NULL),(445,156,129,2,NULL),(446,157,129,2,NULL),(447,158,129,2,NULL),(448,52,132,2,NULL),(449,54,132,2,NULL),(450,55,132,2,NULL),(451,57,132,2,NULL),(452,69,132,2,NULL),(453,93,132,2,NULL),(454,135,132,2,NULL),(455,156,132,2,NULL),(456,157,132,2,NULL),(457,158,132,2,NULL),(458,52,108,2,NULL),(459,54,108,2,NULL),(460,55,108,2,NULL),(461,57,108,2,NULL),(462,69,108,2,NULL),(463,93,108,2,NULL),(464,135,108,2,NULL),(465,156,108,2,NULL),(466,157,108,2,NULL),(467,158,108,2,NULL),(468,71,105,2,NULL),(469,76,105,2,NULL),(470,113,105,2,NULL),(471,125,105,2,NULL),(472,142,105,2,NULL),(473,52,111,2,NULL),(474,54,111,2,NULL),(475,55,111,2,NULL),(476,57,111,2,NULL),(477,69,111,2,NULL),(478,93,111,2,NULL),(479,135,111,2,NULL),(480,156,111,2,NULL),(481,157,111,2,NULL),(482,158,111,2,NULL),(483,52,115,2,NULL),(484,54,115,2,NULL),(485,55,115,2,NULL),(486,57,115,2,NULL),(487,69,115,2,NULL),(488,93,115,2,NULL),(489,135,115,2,NULL),(490,156,115,2,NULL),(491,157,115,2,NULL),(492,158,115,2,NULL),(493,30,105,2,NULL),(494,36,105,2,NULL),(495,74,105,2,NULL),(496,77,105,2,NULL),(497,90,105,2,NULL),(498,143,105,2,NULL),(499,52,118,2,NULL),(500,54,118,2,NULL),(501,55,118,2,NULL),(502,57,118,2,NULL),(503,69,118,2,NULL),(504,93,118,2,NULL),(505,135,118,2,NULL),(506,156,118,2,NULL),(507,157,118,2,NULL),(508,158,118,2,NULL),(509,45,105,2,NULL),(510,56,105,2,NULL),(511,59,105,2,NULL),(512,65,105,2,NULL),(513,66,105,2,NULL),(514,95,105,2,NULL),(515,104,105,2,NULL),(516,111,105,2,NULL),(517,114,105,2,NULL),(518,124,105,2,NULL),(519,127,105,2,NULL),(520,136,105,2,NULL),(521,139,105,2,NULL),(522,163,105,2,NULL),(523,52,121,2,NULL),(524,54,121,2,NULL),(525,55,121,2,NULL),(526,57,121,2,NULL),(527,69,121,2,NULL),(528,93,121,2,NULL),(529,135,121,2,NULL),(530,156,121,2,NULL),(531,157,121,2,NULL),(532,158,121,2,NULL),(533,78,105,2,NULL),(534,86,105,2,NULL),(535,103,105,2,NULL),(536,105,105,2,NULL),(537,129,105,2,NULL),(538,154,105,2,NULL),(539,52,124,2,NULL),(540,54,124,2,NULL),(541,55,124,2,NULL),(542,57,124,2,NULL),(543,69,124,2,NULL),(544,93,124,2,NULL),(545,135,124,2,NULL),(546,156,124,2,NULL),(547,157,124,2,NULL),(548,158,124,2,NULL),(549,42,105,2,NULL),(550,101,105,2,NULL),(551,108,105,2,NULL),(552,117,105,2,NULL),(553,119,105,2,NULL),(554,149,105,2,NULL),(555,150,105,2,NULL),(556,152,105,2,NULL),(557,52,130,2,NULL),(558,54,130,2,NULL),(559,55,130,2,NULL),(560,57,130,2,NULL),(561,69,130,2,NULL),(562,93,130,2,NULL),(563,135,130,2,NULL),(564,156,130,2,NULL),(565,157,130,2,NULL),(566,158,130,2,NULL),(567,52,131,2,NULL),(568,54,131,2,NULL),(569,55,131,2,NULL),(570,57,131,2,NULL),(571,69,131,2,NULL),(572,93,131,2,NULL),(573,135,131,2,NULL),(574,156,131,2,NULL),(575,157,131,2,NULL),(576,158,131,2,NULL),(577,52,167,2,NULL),(578,54,167,2,NULL),(579,55,167,2,NULL),(580,57,167,2,NULL),(581,69,167,2,NULL),(582,93,167,2,NULL),(583,135,167,2,NULL),(584,156,167,2,NULL),(585,157,167,2,NULL),(586,158,167,2,NULL),(587,52,168,2,NULL),(588,54,168,2,NULL),(589,55,168,2,NULL),(590,57,168,2,NULL),(591,69,168,2,NULL),(592,93,168,2,NULL),(593,135,168,2,NULL),(594,156,168,2,NULL),(595,157,168,2,NULL),(596,158,168,2,NULL),(597,52,169,2,NULL),(598,54,169,2,NULL),(599,55,169,2,NULL),(600,57,169,2,NULL),(601,69,169,2,NULL),(602,93,169,2,NULL),(603,135,169,2,NULL),(604,156,169,2,NULL),(605,157,169,2,NULL),(606,158,169,2,NULL),(607,52,170,2,NULL),(608,54,170,2,NULL),(609,55,170,2,NULL),(610,57,170,2,NULL),(611,69,170,2,NULL),(612,93,170,2,NULL),(613,135,170,2,NULL),(614,156,170,2,NULL),(615,157,170,2,NULL),(616,158,170,2,NULL),(617,52,171,2,NULL),(618,54,171,2,NULL),(619,55,171,2,NULL),(620,57,171,2,NULL),(621,69,171,2,NULL),(622,93,171,2,NULL),(623,135,171,2,NULL),(624,156,171,2,NULL),(625,157,171,2,NULL),(626,158,171,2,NULL),(627,52,172,2,NULL),(628,54,172,2,NULL),(629,55,172,2,NULL),(630,57,172,2,NULL),(631,69,172,2,NULL),(632,93,172,2,NULL),(633,135,172,2,NULL),(634,156,172,2,NULL),(635,157,172,2,NULL),(636,158,172,2,NULL),(637,52,133,2,NULL),(638,54,133,2,NULL),(639,55,133,2,NULL),(640,57,133,2,NULL),(641,69,133,2,NULL),(642,93,133,2,NULL),(643,135,133,2,NULL),(644,156,133,2,NULL),(645,157,133,2,NULL),(646,158,133,2,NULL),(647,52,134,2,NULL),(648,54,134,2,NULL),(649,55,134,2,NULL),(650,57,134,2,NULL),(651,69,134,2,NULL),(652,93,134,2,NULL),(653,135,134,2,NULL),(654,156,134,2,NULL),(655,157,134,2,NULL),(656,158,134,2,NULL),(657,52,135,2,NULL),(658,54,135,2,NULL),(659,55,135,2,NULL),(660,57,135,2,NULL),(661,69,135,2,NULL),(662,93,135,2,NULL),(663,135,135,2,NULL),(664,156,135,2,NULL),(665,157,135,2,NULL),(666,158,135,2,NULL),(667,52,153,2,NULL),(668,54,153,2,NULL),(669,55,153,2,NULL),(670,57,153,2,NULL),(671,69,153,2,NULL),(672,93,153,2,NULL),(673,135,153,2,NULL),(674,156,153,2,NULL),(675,157,153,2,NULL),(676,158,153,2,NULL),(677,52,156,2,NULL),(678,54,156,2,NULL),(679,55,156,2,NULL),(680,57,156,2,NULL),(681,69,156,2,NULL),(682,93,156,2,NULL),(683,135,156,2,NULL),(684,156,156,2,NULL),(685,157,156,2,NULL),(686,158,156,2,NULL),(687,52,158,2,NULL),(688,54,158,2,NULL),(689,55,158,2,NULL),(690,57,158,2,NULL),(691,69,158,2,NULL),(692,93,158,2,NULL),(693,135,158,2,NULL),(694,156,158,2,NULL),(695,157,158,2,NULL),(696,158,158,2,NULL),(697,52,159,2,NULL),(698,54,159,2,NULL),(699,55,159,2,NULL),(700,57,159,2,NULL),(701,69,159,2,NULL),(702,93,159,2,NULL),(703,135,159,2,NULL),(704,156,159,2,NULL),(705,157,159,2,NULL),(706,158,159,2,NULL),(707,52,162,2,NULL),(708,54,162,2,NULL),(709,55,162,2,NULL),(710,57,162,2,NULL),(711,69,162,2,NULL),(712,93,162,2,NULL),(713,135,162,2,NULL),(714,156,162,2,NULL),(715,157,162,2,NULL),(716,158,162,2,NULL),(717,52,163,2,NULL),(718,54,163,2,NULL),(719,55,163,2,NULL),(720,57,163,2,NULL),(721,69,163,2,NULL),(722,93,163,2,NULL),(723,135,163,2,NULL),(724,156,163,2,NULL),(725,157,163,2,NULL),(726,158,163,2,NULL),(727,52,164,2,NULL),(728,54,164,2,NULL),(729,55,164,2,NULL),(730,57,164,2,NULL),(731,69,164,2,NULL),(732,93,164,2,NULL),(733,135,164,2,NULL),(734,156,164,2,NULL),(735,157,164,2,NULL),(736,158,164,2,NULL),(737,52,165,2,NULL),(738,54,165,2,NULL),(739,55,165,2,NULL),(740,57,165,2,NULL),(741,69,165,2,NULL),(742,93,165,2,NULL),(743,135,165,2,NULL),(744,156,165,2,NULL),(745,157,165,2,NULL),(746,158,165,2,NULL),(747,39,121,2,NULL),(748,40,111,2,NULL),(749,43,118,2,NULL),(750,46,118,2,NULL),(751,63,121,2,NULL),(752,164,111,2,NULL),(753,71,1,2,NULL),(754,76,1,2,NULL),(755,113,1,2,NULL),(756,125,1,2,NULL),(757,142,1,2,NULL),(758,3,108,2,NULL),(759,4,108,2,NULL),(760,10,108,2,NULL),(761,11,108,2,NULL),(762,13,108,2,NULL),(763,15,108,2,NULL),(764,17,108,2,NULL),(765,19,108,2,NULL),(766,12,108,2,NULL),(767,14,108,2,NULL),(768,16,108,2,NULL),(769,18,108,2,NULL),(770,20,108,2,NULL),(771,21,108,2,NULL),(772,22,108,2,NULL),(773,23,108,2,NULL),(774,71,10,2,NULL),(775,76,10,2,NULL),(776,113,10,2,NULL),(777,125,10,2,NULL),(778,142,10,2,NULL),(779,71,11,2,NULL),(780,76,11,2,NULL),(781,113,11,2,NULL),(782,125,11,2,NULL),(783,142,11,2,NULL),(784,71,12,2,NULL),(785,76,12,2,NULL),(786,113,12,2,NULL),(787,125,12,2,NULL),(788,142,12,2,NULL),(789,71,47,2,NULL),(790,76,47,2,NULL),(791,113,47,2,NULL),(792,125,47,2,NULL),(793,142,47,2,NULL),(794,71,13,2,NULL),(795,76,13,2,NULL),(796,113,13,2,NULL),(797,125,13,2,NULL),(798,142,13,2,NULL),(799,184,108,2,NULL),(800,221,108,2,NULL),(801,208,108,2,NULL),(802,173,108,2,NULL),(803,71,20,2,NULL),(804,76,20,2,NULL),(805,113,20,2,NULL),(806,125,20,2,NULL),(807,142,20,2,NULL),(808,196,108,2,NULL),(809,192,108,2,NULL),(810,193,108,2,NULL),(811,194,108,2,NULL),(812,195,108,2,NULL),(813,199,108,2,NULL),(814,200,108,2,NULL),(815,71,28,2,NULL),(816,76,28,2,NULL),(817,113,28,2,NULL),(818,125,28,2,NULL),(819,142,28,2,NULL),(820,71,30,2,NULL),(821,76,30,2,NULL),(822,113,30,2,NULL),(823,125,30,2,NULL),(824,142,30,2,NULL),(825,175,108,2,NULL),(826,197,108,2,NULL),(827,71,32,2,NULL),(828,76,32,2,NULL),(829,113,32,2,NULL),(830,125,32,2,NULL),(831,142,32,2,NULL),(832,71,35,2,NULL),(833,76,35,2,NULL),(834,113,35,2,NULL),(835,125,35,2,NULL),(836,142,35,2,NULL),(837,71,173,2,NULL),(838,76,173,2,NULL),(839,113,173,2,NULL),(840,125,173,2,NULL),(841,142,173,2,NULL),(842,71,174,2,NULL),(843,76,174,2,NULL),(844,113,174,2,NULL),(845,125,174,2,NULL),(846,142,174,2,NULL),(847,71,175,2,NULL),(848,76,175,2,NULL),(849,113,175,2,NULL),(850,125,175,2,NULL),(851,142,175,2,NULL),(852,71,29,2,NULL),(853,76,29,2,NULL),(854,113,29,2,NULL),(855,125,29,2,NULL),(856,142,29,2,NULL),(857,71,129,2,NULL),(858,76,129,2,NULL),(859,113,129,2,NULL),(860,125,129,2,NULL),(861,142,129,2,NULL),(862,71,132,2,NULL),(863,76,132,2,NULL),(864,113,132,2,NULL),(865,125,132,2,NULL),(866,142,132,2,NULL),(867,71,111,2,NULL),(868,76,111,2,NULL),(869,113,111,2,NULL),(870,125,111,2,NULL),(871,142,111,2,NULL),(872,71,115,2,NULL),(873,76,115,2,NULL),(874,113,115,2,NULL),(875,125,115,2,NULL),(876,142,115,2,NULL),(877,30,108,2,NULL),(878,36,108,2,NULL),(879,74,108,2,NULL),(880,77,108,2,NULL),(881,90,108,2,NULL),(882,143,108,2,NULL),(883,71,118,2,NULL),(884,76,118,2,NULL),(885,113,118,2,NULL),(886,125,118,2,NULL),(887,142,118,2,NULL),(888,45,108,2,NULL),(889,56,108,2,NULL),(890,59,108,2,NULL),(891,65,108,2,NULL),(892,66,108,2,NULL),(893,95,108,2,NULL),(894,104,108,2,NULL),(895,111,108,2,NULL),(896,114,108,2,NULL),(897,124,108,2,NULL),(898,127,108,2,NULL),(899,136,108,2,NULL),(900,139,108,2,NULL),(901,163,108,2,NULL),(902,71,121,2,NULL),(903,76,121,2,NULL),(904,113,121,2,NULL),(905,125,121,2,NULL),(906,142,121,2,NULL),(907,78,108,2,NULL),(908,86,108,2,NULL),(909,103,108,2,NULL),(910,105,108,2,NULL),(911,129,108,2,NULL),(912,154,108,2,NULL),(913,71,124,2,NULL),(914,76,124,2,NULL),(915,113,124,2,NULL),(916,125,124,2,NULL),(917,142,124,2,NULL),(918,42,108,2,NULL),(919,101,108,2,NULL),(920,108,108,2,NULL),(921,117,108,2,NULL),(922,119,108,2,NULL),(923,149,108,2,NULL),(924,150,108,2,NULL),(925,152,108,2,NULL),(926,71,130,2,NULL),(927,76,130,2,NULL),(928,113,130,2,NULL),(929,125,130,2,NULL),(930,142,130,2,NULL),(931,71,131,2,NULL),(932,76,131,2,NULL),(933,113,131,2,NULL),(934,125,131,2,NULL),(935,142,131,2,NULL),(936,71,167,2,NULL),(937,76,167,2,NULL),(938,113,167,2,NULL),(939,125,167,2,NULL),(940,142,167,2,NULL),(941,71,168,2,NULL),(942,76,168,2,NULL),(943,113,168,2,NULL),(944,125,168,2,NULL),(945,142,168,2,NULL),(946,71,169,2,NULL),(947,76,169,2,NULL),(948,113,169,2,NULL),(949,125,169,2,NULL),(950,142,169,2,NULL),(951,71,170,2,NULL),(952,76,170,2,NULL),(953,113,170,2,NULL),(954,125,170,2,NULL),(955,142,170,2,NULL),(956,71,171,2,NULL),(957,76,171,2,NULL),(958,113,171,2,NULL),(959,125,171,2,NULL),(960,142,171,2,NULL),(961,71,172,2,NULL),(962,76,172,2,NULL),(963,113,172,2,NULL),(964,125,172,2,NULL),(965,142,172,2,NULL),(966,71,133,2,NULL),(967,76,133,2,NULL),(968,113,133,2,NULL),(969,125,133,2,NULL),(970,142,133,2,NULL),(971,71,134,2,NULL),(972,76,134,2,NULL),(973,113,134,2,NULL),(974,125,134,2,NULL),(975,142,134,2,NULL),(976,71,135,2,NULL),(977,76,135,2,NULL),(978,113,135,2,NULL),(979,125,135,2,NULL),(980,142,135,2,NULL),(981,71,153,2,NULL),(982,76,153,2,NULL),(983,113,153,2,NULL),(984,125,153,2,NULL),(985,142,153,2,NULL),(986,71,156,2,NULL),(987,76,156,2,NULL),(988,113,156,2,NULL),(989,125,156,2,NULL),(990,142,156,2,NULL),(991,71,158,2,NULL),(992,76,158,2,NULL),(993,113,158,2,NULL),(994,125,158,2,NULL),(995,142,158,2,NULL),(996,71,159,2,NULL),(997,76,159,2,NULL),(998,113,159,2,NULL),(999,125,159,2,NULL),(1000,142,159,2,NULL),(1001,71,162,2,NULL),(1002,76,162,2,NULL),(1003,113,162,2,NULL),(1004,125,162,2,NULL),(1005,142,162,2,NULL),(1006,71,163,2,NULL),(1007,76,163,2,NULL),(1008,113,163,2,NULL),(1009,125,163,2,NULL),(1010,142,163,2,NULL),(1011,71,164,2,NULL),(1012,76,164,2,NULL),(1013,113,164,2,NULL),(1014,125,164,2,NULL),(1015,142,164,2,NULL),(1016,71,165,2,NULL),(1017,76,165,2,NULL),(1018,113,165,2,NULL),(1019,125,165,2,NULL),(1020,142,165,2,NULL),(1021,37,108,2,NULL),(1022,44,115,2,NULL),(1023,48,121,2,NULL),(1024,81,108,2,NULL),(1025,82,121,2,NULL),(1026,85,118,2,NULL),(1027,106,118,2,NULL),(1028,153,115,2,NULL),(1029,3,111,2,NULL),(1030,4,111,2,NULL),(1031,10,111,2,NULL),(1032,11,111,2,NULL),(1033,13,111,2,NULL),(1034,15,111,2,NULL),(1035,17,111,2,NULL),(1036,19,111,2,NULL),(1037,12,111,2,NULL),(1038,14,111,2,NULL),(1039,16,111,2,NULL),(1040,18,111,2,NULL),(1041,20,111,2,NULL),(1042,21,111,2,NULL),(1043,22,111,2,NULL),(1044,23,111,2,NULL),(1045,184,111,2,NULL),(1046,221,111,2,NULL),(1047,208,111,2,NULL),(1048,173,111,2,NULL),(1049,196,111,2,NULL),(1050,192,111,2,NULL),(1051,193,111,2,NULL),(1052,194,111,2,NULL),(1053,195,111,2,NULL),(1054,199,111,2,NULL),(1055,200,111,2,NULL),(1056,175,111,2,NULL),(1057,197,111,2,NULL),(1058,30,111,2,NULL),(1059,36,111,2,NULL),(1060,74,111,2,NULL),(1061,77,111,2,NULL),(1062,90,111,2,NULL),(1063,143,111,2,NULL),(1064,45,111,2,NULL),(1065,56,111,2,NULL),(1066,59,111,2,NULL),(1067,65,111,2,NULL),(1068,66,111,2,NULL),(1069,95,111,2,NULL),(1070,104,111,2,NULL),(1071,111,111,2,NULL),(1072,114,111,2,NULL),(1073,124,111,2,NULL),(1074,127,111,2,NULL),(1075,136,111,2,NULL),(1076,139,111,2,NULL),(1077,163,111,2,NULL),(1078,78,111,2,NULL),(1079,86,111,2,NULL),(1080,103,111,2,NULL),(1081,105,111,2,NULL),(1082,129,111,2,NULL),(1083,154,111,2,NULL),(1084,42,111,2,NULL),(1085,101,111,2,NULL),(1086,108,111,2,NULL),(1087,117,111,2,NULL),(1088,119,111,2,NULL),(1089,149,111,2,NULL),(1090,150,111,2,NULL),(1091,152,111,2,NULL),(1092,32,103,2,NULL),(1093,47,121,2,NULL),(1094,64,108,2,NULL),(1095,72,108,2,NULL),(1096,118,118,2,NULL),(1097,130,121,2,NULL),(1098,132,103,2,NULL),(1099,144,118,2,NULL),(1100,30,1,2,NULL),(1101,36,1,2,NULL),(1102,74,1,2,NULL),(1103,77,1,2,NULL),(1104,90,1,2,NULL),(1105,143,1,2,NULL),(1106,3,115,2,NULL),(1107,4,115,2,NULL),(1108,10,115,2,NULL),(1109,11,115,2,NULL),(1110,13,115,2,NULL),(1111,15,115,2,NULL),(1112,17,115,2,NULL),(1113,19,115,2,NULL),(1114,12,115,2,NULL),(1115,14,115,2,NULL),(1116,16,115,2,NULL),(1117,18,115,2,NULL),(1118,20,115,2,NULL),(1119,21,115,2,NULL),(1120,22,115,2,NULL),(1121,23,115,2,NULL),(1122,30,10,2,NULL),(1123,36,10,2,NULL),(1124,74,10,2,NULL),(1125,77,10,2,NULL),(1126,90,10,2,NULL),(1127,143,10,2,NULL),(1128,30,11,2,NULL),(1129,36,11,2,NULL),(1130,74,11,2,NULL),(1131,77,11,2,NULL),(1132,90,11,2,NULL),(1133,143,11,2,NULL),(1134,30,12,2,NULL),(1135,36,12,2,NULL),(1136,74,12,2,NULL),(1137,77,12,2,NULL),(1138,90,12,2,NULL),(1139,143,12,2,NULL),(1140,30,47,2,NULL),(1141,36,47,2,NULL),(1142,74,47,2,NULL),(1143,77,47,2,NULL),(1144,90,47,2,NULL),(1145,143,47,2,NULL),(1146,30,13,2,NULL),(1147,36,13,2,NULL),(1148,74,13,2,NULL),(1149,77,13,2,NULL),(1150,90,13,2,NULL),(1151,143,13,2,NULL),(1152,184,115,2,NULL),(1153,221,115,2,NULL),(1154,208,115,2,NULL),(1155,173,115,2,NULL),(1156,30,20,2,NULL),(1157,36,20,2,NULL),(1158,74,20,2,NULL),(1159,77,20,2,NULL),(1160,90,20,2,NULL),(1161,143,20,2,NULL),(1162,196,115,2,NULL),(1163,192,115,2,NULL),(1164,193,115,2,NULL),(1165,194,115,2,NULL),(1166,195,115,2,NULL),(1167,199,115,2,NULL),(1168,200,115,2,NULL),(1169,30,28,2,NULL),(1170,36,28,2,NULL),(1171,74,28,2,NULL),(1172,77,28,2,NULL),(1173,90,28,2,NULL),(1174,143,28,2,NULL),(1175,30,30,2,NULL),(1176,36,30,2,NULL),(1177,74,30,2,NULL),(1178,77,30,2,NULL),(1179,90,30,2,NULL),(1180,143,30,2,NULL),(1181,175,115,2,NULL),(1182,197,115,2,NULL),(1183,30,32,2,NULL),(1184,36,32,2,NULL),(1185,74,32,2,NULL),(1186,77,32,2,NULL),(1187,90,32,2,NULL),(1188,143,32,2,NULL),(1189,30,35,2,NULL),(1190,36,35,2,NULL),(1191,74,35,2,NULL),(1192,77,35,2,NULL),(1193,90,35,2,NULL),(1194,143,35,2,NULL),(1195,30,173,2,NULL),(1196,36,173,2,NULL),(1197,74,173,2,NULL),(1198,77,173,2,NULL),(1199,90,173,2,NULL),(1200,143,173,2,NULL),(1201,30,174,2,NULL),(1202,36,174,2,NULL),(1203,74,174,2,NULL),(1204,77,174,2,NULL),(1205,90,174,2,NULL),(1206,143,174,2,NULL),(1207,30,175,2,NULL),(1208,36,175,2,NULL),(1209,74,175,2,NULL),(1210,77,175,2,NULL),(1211,90,175,2,NULL),(1212,143,175,2,NULL),(1213,30,29,2,NULL),(1214,36,29,2,NULL),(1215,74,29,2,NULL),(1216,77,29,2,NULL),(1217,90,29,2,NULL),(1218,143,29,2,NULL),(1219,30,129,2,NULL),(1220,36,129,2,NULL),(1221,74,129,2,NULL),(1222,77,129,2,NULL),(1223,90,129,2,NULL),(1224,143,129,2,NULL),(1225,30,132,2,NULL),(1226,36,132,2,NULL),(1227,74,132,2,NULL),(1228,77,132,2,NULL),(1229,90,132,2,NULL),(1230,143,132,2,NULL),(1231,30,118,2,NULL),(1232,36,118,2,NULL),(1233,74,118,2,NULL),(1234,77,118,2,NULL),(1235,90,118,2,NULL),(1236,143,118,2,NULL),(1237,45,115,2,NULL),(1238,56,115,2,NULL),(1239,59,115,2,NULL),(1240,65,115,2,NULL),(1241,66,115,2,NULL),(1242,95,115,2,NULL),(1243,104,115,2,NULL),(1244,111,115,2,NULL),(1245,114,115,2,NULL),(1246,124,115,2,NULL),(1247,127,115,2,NULL),(1248,136,115,2,NULL),(1249,139,115,2,NULL),(1250,163,115,2,NULL),(1251,30,121,2,NULL),(1252,36,121,2,NULL),(1253,74,121,2,NULL),(1254,77,121,2,NULL),(1255,90,121,2,NULL),(1256,143,121,2,NULL),(1257,78,115,2,NULL),(1258,86,115,2,NULL),(1259,103,115,2,NULL),(1260,105,115,2,NULL),(1261,129,115,2,NULL),(1262,154,115,2,NULL),(1263,30,124,2,NULL),(1264,36,124,2,NULL),(1265,74,124,2,NULL),(1266,77,124,2,NULL),(1267,90,124,2,NULL),(1268,143,124,2,NULL),(1269,42,115,2,NULL),(1270,101,115,2,NULL),(1271,108,115,2,NULL),(1272,117,115,2,NULL),(1273,119,115,2,NULL),(1274,149,115,2,NULL),(1275,150,115,2,NULL),(1276,152,115,2,NULL),(1277,30,130,2,NULL),(1278,36,130,2,NULL),(1279,74,130,2,NULL),(1280,77,130,2,NULL),(1281,90,130,2,NULL),(1282,143,130,2,NULL),(1283,30,131,2,NULL),(1284,36,131,2,NULL),(1285,74,131,2,NULL),(1286,77,131,2,NULL),(1287,90,131,2,NULL),(1288,143,131,2,NULL),(1289,30,167,2,NULL),(1290,36,167,2,NULL),(1291,74,167,2,NULL),(1292,77,167,2,NULL),(1293,90,167,2,NULL),(1294,143,167,2,NULL),(1295,30,168,2,NULL),(1296,36,168,2,NULL),(1297,74,168,2,NULL),(1298,77,168,2,NULL),(1299,90,168,2,NULL),(1300,143,168,2,NULL),(1301,30,169,2,NULL),(1302,36,169,2,NULL),(1303,74,169,2,NULL),(1304,77,169,2,NULL),(1305,90,169,2,NULL),(1306,143,169,2,NULL),(1307,30,170,2,NULL),(1308,36,170,2,NULL),(1309,74,170,2,NULL),(1310,77,170,2,NULL),(1311,90,170,2,NULL),(1312,143,170,2,NULL),(1313,30,171,2,NULL),(1314,36,171,2,NULL),(1315,74,171,2,NULL),(1316,77,171,2,NULL),(1317,90,171,2,NULL),(1318,143,171,2,NULL),(1319,30,172,2,NULL),(1320,36,172,2,NULL),(1321,74,172,2,NULL),(1322,77,172,2,NULL),(1323,90,172,2,NULL),(1324,143,172,2,NULL),(1325,30,133,2,NULL),(1326,36,133,2,NULL),(1327,74,133,2,NULL),(1328,77,133,2,NULL),(1329,90,133,2,NULL),(1330,143,133,2,NULL),(1331,30,134,2,NULL),(1332,36,134,2,NULL),(1333,74,134,2,NULL),(1334,77,134,2,NULL),(1335,90,134,2,NULL),(1336,143,134,2,NULL),(1337,30,135,2,NULL),(1338,36,135,2,NULL),(1339,74,135,2,NULL),(1340,77,135,2,NULL),(1341,90,135,2,NULL),(1342,143,135,2,NULL),(1343,30,153,2,NULL),(1344,36,153,2,NULL),(1345,74,153,2,NULL),(1346,77,153,2,NULL),(1347,90,153,2,NULL),(1348,143,153,2,NULL),(1349,30,156,2,NULL),(1350,36,156,2,NULL),(1351,74,156,2,NULL),(1352,77,156,2,NULL),(1353,90,156,2,NULL),(1354,143,156,2,NULL),(1355,30,158,2,NULL),(1356,36,158,2,NULL),(1357,74,158,2,NULL),(1358,77,158,2,NULL),(1359,90,158,2,NULL),(1360,143,158,2,NULL),(1361,30,159,2,NULL),(1362,36,159,2,NULL),(1363,74,159,2,NULL),(1364,77,159,2,NULL),(1365,90,159,2,NULL),(1366,143,159,2,NULL),(1367,30,162,2,NULL),(1368,36,162,2,NULL),(1369,74,162,2,NULL),(1370,77,162,2,NULL),(1371,90,162,2,NULL),(1372,143,162,2,NULL),(1373,30,163,2,NULL),(1374,36,163,2,NULL),(1375,74,163,2,NULL),(1376,77,163,2,NULL),(1377,90,163,2,NULL),(1378,143,163,2,NULL),(1379,30,164,2,NULL),(1380,36,164,2,NULL),(1381,74,164,2,NULL),(1382,77,164,2,NULL),(1383,90,164,2,NULL),(1384,143,164,2,NULL),(1385,30,165,2,NULL),(1386,36,165,2,NULL),(1387,74,165,2,NULL),(1388,77,165,2,NULL),(1389,90,165,2,NULL),(1390,143,165,2,NULL),(1391,31,121,2,NULL),(1392,38,108,2,NULL),(1393,58,108,2,NULL),(1394,73,121,2,NULL),(1395,83,121,2,NULL),(1396,116,111,2,NULL),(1397,133,121,2,NULL),(1398,145,127,2,NULL),(1399,160,127,2,NULL),(1400,161,111,2,NULL),(1401,45,1,2,NULL),(1402,56,1,2,NULL),(1403,59,1,2,NULL),(1404,65,1,2,NULL),(1405,66,1,2,NULL),(1406,95,1,2,NULL),(1407,104,1,2,NULL),(1408,111,1,2,NULL),(1409,114,1,2,NULL),(1410,124,1,2,NULL),(1411,127,1,2,NULL),(1412,136,1,2,NULL),(1413,139,1,2,NULL),(1414,163,1,2,NULL),(1415,3,118,2,NULL),(1416,4,118,2,NULL),(1417,10,118,2,NULL),(1418,11,118,2,NULL),(1419,13,118,2,NULL),(1420,15,118,2,NULL),(1421,17,118,2,NULL),(1422,19,118,2,NULL),(1423,12,118,2,NULL),(1424,14,118,2,NULL),(1425,16,118,2,NULL),(1426,18,118,2,NULL),(1427,20,118,2,NULL),(1428,21,118,2,NULL),(1429,22,118,2,NULL),(1430,23,118,2,NULL),(1431,45,10,2,NULL),(1432,56,10,2,NULL),(1433,59,10,2,NULL),(1434,65,10,2,NULL),(1435,66,10,2,NULL),(1436,95,10,2,NULL),(1437,104,10,2,NULL),(1438,111,10,2,NULL),(1439,114,10,2,NULL),(1440,124,10,2,NULL),(1441,127,10,2,NULL),(1442,136,10,2,NULL),(1443,139,10,2,NULL),(1444,163,10,2,NULL),(1445,45,11,2,NULL),(1446,56,11,2,NULL),(1447,59,11,2,NULL),(1448,65,11,2,NULL),(1449,66,11,2,NULL),(1450,95,11,2,NULL),(1451,104,11,2,NULL),(1452,111,11,2,NULL),(1453,114,11,2,NULL),(1454,124,11,2,NULL),(1455,127,11,2,NULL),(1456,136,11,2,NULL),(1457,139,11,2,NULL),(1458,163,11,2,NULL),(1459,45,12,2,NULL),(1460,56,12,2,NULL),(1461,59,12,2,NULL),(1462,65,12,2,NULL),(1463,66,12,2,NULL),(1464,95,12,2,NULL),(1465,104,12,2,NULL),(1466,111,12,2,NULL),(1467,114,12,2,NULL),(1468,124,12,2,NULL),(1469,127,12,2,NULL),(1470,136,12,2,NULL),(1471,139,12,2,NULL),(1472,163,12,2,NULL),(1473,45,47,2,NULL),(1474,56,47,2,NULL),(1475,59,47,2,NULL),(1476,65,47,2,NULL),(1477,66,47,2,NULL),(1478,95,47,2,NULL),(1479,104,47,2,NULL),(1480,111,47,2,NULL),(1481,114,47,2,NULL),(1482,124,47,2,NULL),(1483,127,47,2,NULL),(1484,136,47,2,NULL),(1485,139,47,2,NULL),(1486,163,47,2,NULL),(1487,45,13,2,NULL),(1488,56,13,2,NULL),(1489,59,13,2,NULL),(1490,65,13,2,NULL),(1491,66,13,2,NULL),(1492,95,13,2,NULL),(1493,104,13,2,NULL),(1494,111,13,2,NULL),(1495,114,13,2,NULL),(1496,124,13,2,NULL),(1497,127,13,2,NULL),(1498,136,13,2,NULL),(1499,139,13,2,NULL),(1500,163,13,2,NULL),(1501,184,118,2,NULL),(1502,221,118,2,NULL),(1503,208,118,2,NULL),(1504,173,118,2,NULL),(1505,45,20,2,NULL),(1506,56,20,2,NULL),(1507,59,20,2,NULL),(1508,65,20,2,NULL),(1509,66,20,2,NULL),(1510,95,20,2,NULL),(1511,104,20,2,NULL),(1512,111,20,2,NULL),(1513,114,20,2,NULL),(1514,124,20,2,NULL),(1515,127,20,2,NULL),(1516,136,20,2,NULL),(1517,139,20,2,NULL),(1518,163,20,2,NULL),(1519,196,118,2,NULL),(1520,192,118,2,NULL),(1521,193,118,2,NULL),(1522,194,118,2,NULL),(1523,195,118,2,NULL),(1524,199,118,2,NULL),(1525,200,118,2,NULL),(1526,45,28,2,NULL),(1527,56,28,2,NULL),(1528,59,28,2,NULL),(1529,65,28,2,NULL),(1530,66,28,2,NULL),(1531,95,28,2,NULL),(1532,104,28,2,NULL),(1533,111,28,2,NULL),(1534,114,28,2,NULL),(1535,124,28,2,NULL),(1536,127,28,2,NULL),(1537,136,28,2,NULL),(1538,139,28,2,NULL),(1539,163,28,2,NULL),(1540,45,30,2,NULL),(1541,56,30,2,NULL),(1542,59,30,2,NULL),(1543,65,30,2,NULL),(1544,66,30,2,NULL),(1545,95,30,2,NULL),(1546,104,30,2,NULL),(1547,111,30,2,NULL),(1548,114,30,2,NULL),(1549,124,30,2,NULL),(1550,127,30,2,NULL),(1551,136,30,2,NULL),(1552,139,30,2,NULL),(1553,163,30,2,NULL),(1554,175,118,2,NULL),(1555,197,118,2,NULL),(1556,45,32,2,NULL),(1557,56,32,2,NULL),(1558,59,32,2,NULL),(1559,65,32,2,NULL),(1560,66,32,2,NULL),(1561,95,32,2,NULL),(1562,104,32,2,NULL),(1563,111,32,2,NULL),(1564,114,32,2,NULL),(1565,124,32,2,NULL),(1566,127,32,2,NULL),(1567,136,32,2,NULL),(1568,139,32,2,NULL),(1569,163,32,2,NULL),(1570,45,35,2,NULL),(1571,56,35,2,NULL),(1572,59,35,2,NULL),(1573,65,35,2,NULL),(1574,66,35,2,NULL),(1575,95,35,2,NULL),(1576,104,35,2,NULL),(1577,111,35,2,NULL),(1578,114,35,2,NULL),(1579,124,35,2,NULL),(1580,127,35,2,NULL),(1581,136,35,2,NULL),(1582,139,35,2,NULL),(1583,163,35,2,NULL),(1584,45,173,2,NULL),(1585,56,173,2,NULL),(1586,59,173,2,NULL),(1587,65,173,2,NULL),(1588,66,173,2,NULL),(1589,95,173,2,NULL),(1590,104,173,2,NULL),(1591,111,173,2,NULL),(1592,114,173,2,NULL),(1593,124,173,2,NULL),(1594,127,173,2,NULL),(1595,136,173,2,NULL),(1596,139,173,2,NULL),(1597,163,173,2,NULL),(1598,45,174,2,NULL),(1599,56,174,2,NULL),(1600,59,174,2,NULL),(1601,65,174,2,NULL),(1602,66,174,2,NULL),(1603,95,174,2,NULL),(1604,104,174,2,NULL),(1605,111,174,2,NULL),(1606,114,174,2,NULL),(1607,124,174,2,NULL),(1608,127,174,2,NULL),(1609,136,174,2,NULL),(1610,139,174,2,NULL),(1611,163,174,2,NULL),(1612,45,175,2,NULL),(1613,56,175,2,NULL),(1614,59,175,2,NULL),(1615,65,175,2,NULL),(1616,66,175,2,NULL),(1617,95,175,2,NULL),(1618,104,175,2,NULL),(1619,111,175,2,NULL),(1620,114,175,2,NULL),(1621,124,175,2,NULL),(1622,127,175,2,NULL),(1623,136,175,2,NULL),(1624,139,175,2,NULL),(1625,163,175,2,NULL),(1626,45,29,2,NULL),(1627,56,29,2,NULL),(1628,59,29,2,NULL),(1629,65,29,2,NULL),(1630,66,29,2,NULL),(1631,95,29,2,NULL),(1632,104,29,2,NULL),(1633,111,29,2,NULL),(1634,114,29,2,NULL),(1635,124,29,2,NULL),(1636,127,29,2,NULL),(1637,136,29,2,NULL),(1638,139,29,2,NULL),(1639,163,29,2,NULL),(1640,45,129,2,NULL),(1641,56,129,2,NULL),(1642,59,129,2,NULL),(1643,65,129,2,NULL),(1644,66,129,2,NULL),(1645,95,129,2,NULL),(1646,104,129,2,NULL),(1647,111,129,2,NULL),(1648,114,129,2,NULL),(1649,124,129,2,NULL),(1650,127,129,2,NULL),(1651,136,129,2,NULL),(1652,139,129,2,NULL),(1653,163,129,2,NULL),(1654,45,132,2,NULL),(1655,56,132,2,NULL),(1656,59,132,2,NULL),(1657,65,132,2,NULL),(1658,66,132,2,NULL),(1659,95,132,2,NULL),(1660,104,132,2,NULL),(1661,111,132,2,NULL),(1662,114,132,2,NULL),(1663,124,132,2,NULL),(1664,127,132,2,NULL),(1665,136,132,2,NULL),(1666,139,132,2,NULL),(1667,163,132,2,NULL),(1668,45,121,2,NULL),(1669,56,121,2,NULL),(1670,59,121,2,NULL),(1671,65,121,2,NULL),(1672,66,121,2,NULL),(1673,95,121,2,NULL),(1674,104,121,2,NULL),(1675,111,121,2,NULL),(1676,114,121,2,NULL),(1677,124,121,2,NULL),(1678,127,121,2,NULL),(1679,136,121,2,NULL),(1680,139,121,2,NULL),(1681,163,121,2,NULL),(1682,78,118,2,NULL),(1683,86,118,2,NULL),(1684,103,118,2,NULL),(1685,105,118,2,NULL),(1686,129,118,2,NULL),(1687,154,118,2,NULL),(1688,45,124,2,NULL),(1689,56,124,2,NULL),(1690,59,124,2,NULL),(1691,65,124,2,NULL),(1692,66,124,2,NULL),(1693,95,124,2,NULL),(1694,104,124,2,NULL),(1695,111,124,2,NULL),(1696,114,124,2,NULL),(1697,124,124,2,NULL),(1698,127,124,2,NULL),(1699,136,124,2,NULL),(1700,139,124,2,NULL),(1701,163,124,2,NULL),(1702,42,118,2,NULL),(1703,101,118,2,NULL),(1704,108,118,2,NULL),(1705,117,118,2,NULL),(1706,119,118,2,NULL),(1707,149,118,2,NULL),(1708,150,118,2,NULL),(1709,152,118,2,NULL),(1710,45,130,2,NULL),(1711,56,130,2,NULL),(1712,59,130,2,NULL),(1713,65,130,2,NULL),(1714,66,130,2,NULL),(1715,95,130,2,NULL),(1716,104,130,2,NULL),(1717,111,130,2,NULL),(1718,114,130,2,NULL),(1719,124,130,2,NULL),(1720,127,130,2,NULL),(1721,136,130,2,NULL),(1722,139,130,2,NULL),(1723,163,130,2,NULL),(1724,45,131,2,NULL),(1725,56,131,2,NULL),(1726,59,131,2,NULL),(1727,65,131,2,NULL),(1728,66,131,2,NULL),(1729,95,131,2,NULL),(1730,104,131,2,NULL),(1731,111,131,2,NULL),(1732,114,131,2,NULL),(1733,124,131,2,NULL),(1734,127,131,2,NULL),(1735,136,131,2,NULL),(1736,139,131,2,NULL),(1737,163,131,2,NULL),(1738,45,167,2,NULL),(1739,56,167,2,NULL),(1740,59,167,2,NULL),(1741,65,167,2,NULL),(1742,66,167,2,NULL),(1743,95,167,2,NULL),(1744,104,167,2,NULL),(1745,111,167,2,NULL),(1746,114,167,2,NULL),(1747,124,167,2,NULL),(1748,127,167,2,NULL),(1749,136,167,2,NULL),(1750,139,167,2,NULL),(1751,163,167,2,NULL),(1752,45,168,2,NULL),(1753,56,168,2,NULL),(1754,59,168,2,NULL),(1755,65,168,2,NULL),(1756,66,168,2,NULL),(1757,95,168,2,NULL),(1758,104,168,2,NULL),(1759,111,168,2,NULL),(1760,114,168,2,NULL),(1761,124,168,2,NULL),(1762,127,168,2,NULL),(1763,136,168,2,NULL),(1764,139,168,2,NULL),(1765,163,168,2,NULL),(1766,45,169,2,NULL),(1767,56,169,2,NULL),(1768,59,169,2,NULL),(1769,65,169,2,NULL),(1770,66,169,2,NULL),(1771,95,169,2,NULL),(1772,104,169,2,NULL),(1773,111,169,2,NULL),(1774,114,169,2,NULL),(1775,124,169,2,NULL),(1776,127,169,2,NULL),(1777,136,169,2,NULL),(1778,139,169,2,NULL),(1779,163,169,2,NULL),(1780,45,170,2,NULL),(1781,56,170,2,NULL),(1782,59,170,2,NULL),(1783,65,170,2,NULL),(1784,66,170,2,NULL),(1785,95,170,2,NULL),(1786,104,170,2,NULL),(1787,111,170,2,NULL),(1788,114,170,2,NULL),(1789,124,170,2,NULL),(1790,127,170,2,NULL),(1791,136,170,2,NULL),(1792,139,170,2,NULL),(1793,163,170,2,NULL),(1794,45,171,2,NULL),(1795,56,171,2,NULL),(1796,59,171,2,NULL),(1797,65,171,2,NULL),(1798,66,171,2,NULL),(1799,95,171,2,NULL),(1800,104,171,2,NULL),(1801,111,171,2,NULL),(1802,114,171,2,NULL),(1803,124,171,2,NULL),(1804,127,171,2,NULL),(1805,136,171,2,NULL),(1806,139,171,2,NULL),(1807,163,171,2,NULL),(1808,45,172,2,NULL),(1809,56,172,2,NULL),(1810,59,172,2,NULL),(1811,65,172,2,NULL),(1812,66,172,2,NULL),(1813,95,172,2,NULL),(1814,104,172,2,NULL),(1815,111,172,2,NULL),(1816,114,172,2,NULL),(1817,124,172,2,NULL),(1818,127,172,2,NULL),(1819,136,172,2,NULL),(1820,139,172,2,NULL),(1821,163,172,2,NULL),(1822,45,133,2,NULL),(1823,56,133,2,NULL),(1824,59,133,2,NULL),(1825,65,133,2,NULL),(1826,66,133,2,NULL),(1827,95,133,2,NULL),(1828,104,133,2,NULL),(1829,111,133,2,NULL),(1830,114,133,2,NULL),(1831,124,133,2,NULL),(1832,127,133,2,NULL),(1833,136,133,2,NULL),(1834,139,133,2,NULL),(1835,163,133,2,NULL),(1836,45,134,2,NULL),(1837,56,134,2,NULL),(1838,59,134,2,NULL),(1839,65,134,2,NULL),(1840,66,134,2,NULL),(1841,95,134,2,NULL),(1842,104,134,2,NULL),(1843,111,134,2,NULL),(1844,114,134,2,NULL),(1845,124,134,2,NULL),(1846,127,134,2,NULL),(1847,136,134,2,NULL),(1848,139,134,2,NULL),(1849,163,134,2,NULL),(1850,45,135,2,NULL),(1851,56,135,2,NULL),(1852,59,135,2,NULL),(1853,65,135,2,NULL),(1854,66,135,2,NULL),(1855,95,135,2,NULL),(1856,104,135,2,NULL),(1857,111,135,2,NULL),(1858,114,135,2,NULL),(1859,124,135,2,NULL),(1860,127,135,2,NULL),(1861,136,135,2,NULL),(1862,139,135,2,NULL),(1863,163,135,2,NULL),(1864,45,153,2,NULL),(1865,56,153,2,NULL),(1866,59,153,2,NULL),(1867,65,153,2,NULL),(1868,66,153,2,NULL),(1869,95,153,2,NULL),(1870,104,153,2,NULL),(1871,111,153,2,NULL),(1872,114,153,2,NULL),(1873,124,153,2,NULL),(1874,127,153,2,NULL),(1875,136,153,2,NULL),(1876,139,153,2,NULL),(1877,163,153,2,NULL),(1878,45,156,2,NULL),(1879,56,156,2,NULL),(1880,59,156,2,NULL),(1881,65,156,2,NULL),(1882,66,156,2,NULL),(1883,95,156,2,NULL),(1884,104,156,2,NULL),(1885,111,156,2,NULL),(1886,114,156,2,NULL),(1887,124,156,2,NULL),(1888,127,156,2,NULL),(1889,136,156,2,NULL),(1890,139,156,2,NULL),(1891,163,156,2,NULL),(1892,45,158,2,NULL),(1893,56,158,2,NULL),(1894,59,158,2,NULL),(1895,65,158,2,NULL),(1896,66,158,2,NULL),(1897,95,158,2,NULL),(1898,104,158,2,NULL),(1899,111,158,2,NULL),(1900,114,158,2,NULL),(1901,124,158,2,NULL),(1902,127,158,2,NULL),(1903,136,158,2,NULL),(1904,139,158,2,NULL),(1905,163,158,2,NULL),(1906,45,159,2,NULL),(1907,56,159,2,NULL),(1908,59,159,2,NULL),(1909,65,159,2,NULL),(1910,66,159,2,NULL),(1911,95,159,2,NULL),(1912,104,159,2,NULL),(1913,111,159,2,NULL),(1914,114,159,2,NULL),(1915,124,159,2,NULL),(1916,127,159,2,NULL),(1917,136,159,2,NULL),(1918,139,159,2,NULL),(1919,163,159,2,NULL),(1920,45,162,2,NULL),(1921,56,162,2,NULL),(1922,59,162,2,NULL),(1923,65,162,2,NULL),(1924,66,162,2,NULL),(1925,95,162,2,NULL),(1926,104,162,2,NULL),(1927,111,162,2,NULL),(1928,114,162,2,NULL),(1929,124,162,2,NULL),(1930,127,162,2,NULL),(1931,136,162,2,NULL),(1932,139,162,2,NULL),(1933,163,162,2,NULL),(1934,45,163,2,NULL),(1935,56,163,2,NULL),(1936,59,163,2,NULL),(1937,65,163,2,NULL),(1938,66,163,2,NULL),(1939,95,163,2,NULL),(1940,104,163,2,NULL),(1941,111,163,2,NULL),(1942,114,163,2,NULL),(1943,124,163,2,NULL),(1944,127,163,2,NULL),(1945,136,163,2,NULL),(1946,139,163,2,NULL),(1947,163,163,2,NULL),(1948,45,164,2,NULL),(1949,56,164,2,NULL),(1950,59,164,2,NULL),(1951,65,164,2,NULL),(1952,66,164,2,NULL),(1953,95,164,2,NULL),(1954,104,164,2,NULL),(1955,111,164,2,NULL),(1956,114,164,2,NULL),(1957,124,164,2,NULL),(1958,127,164,2,NULL),(1959,136,164,2,NULL),(1960,139,164,2,NULL),(1961,163,164,2,NULL),(1962,45,165,2,NULL),(1963,56,165,2,NULL),(1964,59,165,2,NULL),(1965,65,165,2,NULL),(1966,66,165,2,NULL),(1967,95,165,2,NULL),(1968,104,165,2,NULL),(1969,111,165,2,NULL),(1970,114,165,2,NULL),(1971,124,165,2,NULL),(1972,127,165,2,NULL),(1973,136,165,2,NULL),(1974,139,165,2,NULL),(1975,163,165,2,NULL),(1976,61,118,2,NULL),(1977,92,108,2,NULL),(1978,99,103,2,NULL),(1979,100,127,2,NULL),(1980,107,108,2,NULL),(1981,110,118,2,NULL),(1982,131,111,2,NULL),(1983,134,127,2,NULL),(1984,137,111,2,NULL),(1985,146,103,2,NULL),(1986,78,1,2,NULL),(1987,86,1,2,NULL),(1988,103,1,2,NULL),(1989,105,1,2,NULL),(1990,129,1,2,NULL),(1991,154,1,2,NULL),(1992,3,121,2,NULL),(1993,4,121,2,NULL),(1994,10,121,2,NULL),(1995,11,121,2,NULL),(1996,13,121,2,NULL),(1997,15,121,2,NULL),(1998,17,121,2,NULL),(1999,19,121,2,NULL),(2000,12,121,2,NULL),(2001,14,121,2,NULL),(2002,16,121,2,NULL),(2003,18,121,2,NULL),(2004,20,121,2,NULL),(2005,21,121,2,NULL),(2006,22,121,2,NULL),(2007,23,121,2,NULL),(2008,78,10,2,NULL),(2009,86,10,2,NULL),(2010,103,10,2,NULL),(2011,105,10,2,NULL),(2012,129,10,2,NULL),(2013,154,10,2,NULL),(2014,78,11,2,NULL),(2015,86,11,2,NULL),(2016,103,11,2,NULL),(2017,105,11,2,NULL),(2018,129,11,2,NULL),(2019,154,11,2,NULL),(2020,78,12,2,NULL),(2021,86,12,2,NULL),(2022,103,12,2,NULL),(2023,105,12,2,NULL),(2024,129,12,2,NULL),(2025,154,12,2,NULL),(2026,78,47,2,NULL),(2027,86,47,2,NULL),(2028,103,47,2,NULL),(2029,105,47,2,NULL),(2030,129,47,2,NULL),(2031,154,47,2,NULL),(2032,78,13,2,NULL),(2033,86,13,2,NULL),(2034,103,13,2,NULL),(2035,105,13,2,NULL),(2036,129,13,2,NULL),(2037,154,13,2,NULL),(2038,184,121,2,NULL),(2039,221,121,2,NULL),(2040,208,121,2,NULL),(2041,173,121,2,NULL),(2042,78,20,2,NULL),(2043,86,20,2,NULL),(2044,103,20,2,NULL),(2045,105,20,2,NULL),(2046,129,20,2,NULL),(2047,154,20,2,NULL),(2048,196,121,2,NULL),(2049,192,121,2,NULL),(2050,193,121,2,NULL),(2051,194,121,2,NULL),(2052,195,121,2,NULL),(2053,199,121,2,NULL),(2054,200,121,2,NULL),(2055,78,28,2,NULL),(2056,86,28,2,NULL),(2057,103,28,2,NULL),(2058,105,28,2,NULL),(2059,129,28,2,NULL),(2060,154,28,2,NULL),(2061,78,30,2,NULL),(2062,86,30,2,NULL),(2063,103,30,2,NULL),(2064,105,30,2,NULL),(2065,129,30,2,NULL),(2066,154,30,2,NULL),(2067,175,121,2,NULL),(2068,197,121,2,NULL),(2069,78,32,2,NULL),(2070,86,32,2,NULL),(2071,103,32,2,NULL),(2072,105,32,2,NULL),(2073,129,32,2,NULL),(2074,154,32,2,NULL),(2075,78,35,2,NULL),(2076,86,35,2,NULL),(2077,103,35,2,NULL),(2078,105,35,2,NULL),(2079,129,35,2,NULL),(2080,154,35,2,NULL),(2081,78,173,2,NULL),(2082,86,173,2,NULL),(2083,103,173,2,NULL),(2084,105,173,2,NULL),(2085,129,173,2,NULL),(2086,154,173,2,NULL),(2087,78,174,2,NULL),(2088,86,174,2,NULL),(2089,103,174,2,NULL),(2090,105,174,2,NULL),(2091,129,174,2,NULL),(2092,154,174,2,NULL),(2093,78,175,2,NULL),(2094,86,175,2,NULL),(2095,103,175,2,NULL),(2096,105,175,2,NULL),(2097,129,175,2,NULL),(2098,154,175,2,NULL),(2099,78,29,2,NULL),(2100,86,29,2,NULL),(2101,103,29,2,NULL),(2102,105,29,2,NULL),(2103,129,29,2,NULL),(2104,154,29,2,NULL),(2105,78,129,2,NULL),(2106,86,129,2,NULL),(2107,103,129,2,NULL),(2108,105,129,2,NULL),(2109,129,129,2,NULL),(2110,154,129,2,NULL),(2111,78,132,2,NULL),(2112,86,132,2,NULL),(2113,103,132,2,NULL),(2114,105,132,2,NULL),(2115,129,132,2,NULL),(2116,154,132,2,NULL),(2117,78,124,2,NULL),(2118,86,124,2,NULL),(2119,103,124,2,NULL),(2120,105,124,2,NULL),(2121,129,124,2,NULL),(2122,154,124,2,NULL),(2123,42,121,2,NULL),(2124,101,121,2,NULL),(2125,108,121,2,NULL),(2126,117,121,2,NULL),(2127,119,121,2,NULL),(2128,149,121,2,NULL),(2129,150,121,2,NULL),(2130,152,121,2,NULL),(2131,78,130,2,NULL),(2132,86,130,2,NULL),(2133,103,130,2,NULL),(2134,105,130,2,NULL),(2135,129,130,2,NULL),(2136,154,130,2,NULL),(2137,78,131,2,NULL),(2138,86,131,2,NULL),(2139,103,131,2,NULL),(2140,105,131,2,NULL),(2141,129,131,2,NULL),(2142,154,131,2,NULL),(2143,78,167,2,NULL),(2144,86,167,2,NULL),(2145,103,167,2,NULL),(2146,105,167,2,NULL),(2147,129,167,2,NULL),(2148,154,167,2,NULL),(2149,78,168,2,NULL),(2150,86,168,2,NULL),(2151,103,168,2,NULL),(2152,105,168,2,NULL),(2153,129,168,2,NULL),(2154,154,168,2,NULL),(2155,78,169,2,NULL),(2156,86,169,2,NULL),(2157,103,169,2,NULL),(2158,105,169,2,NULL),(2159,129,169,2,NULL),(2160,154,169,2,NULL),(2161,78,170,2,NULL),(2162,86,170,2,NULL),(2163,103,170,2,NULL),(2164,105,170,2,NULL),(2165,129,170,2,NULL),(2166,154,170,2,NULL),(2167,78,171,2,NULL),(2168,86,171,2,NULL),(2169,103,171,2,NULL),(2170,105,171,2,NULL),(2171,129,171,2,NULL),(2172,154,171,2,NULL),(2173,78,172,2,NULL),(2174,86,172,2,NULL),(2175,103,172,2,NULL),(2176,105,172,2,NULL),(2177,129,172,2,NULL),(2178,154,172,2,NULL),(2179,78,133,2,NULL),(2180,86,133,2,NULL),(2181,103,133,2,NULL),(2182,105,133,2,NULL),(2183,129,133,2,NULL),(2184,154,133,2,NULL),(2185,78,134,2,NULL),(2186,86,134,2,NULL),(2187,103,134,2,NULL),(2188,105,134,2,NULL),(2189,129,134,2,NULL),(2190,154,134,2,NULL),(2191,78,135,2,NULL),(2192,86,135,2,NULL),(2193,103,135,2,NULL),(2194,105,135,2,NULL),(2195,129,135,2,NULL),(2196,154,135,2,NULL),(2197,78,153,2,NULL),(2198,86,153,2,NULL),(2199,103,153,2,NULL),(2200,105,153,2,NULL),(2201,129,153,2,NULL),(2202,154,153,2,NULL),(2203,78,156,2,NULL),(2204,86,156,2,NULL),(2205,103,156,2,NULL),(2206,105,156,2,NULL),(2207,129,156,2,NULL),(2208,154,156,2,NULL),(2209,78,158,2,NULL),(2210,86,158,2,NULL),(2211,103,158,2,NULL),(2212,105,158,2,NULL),(2213,129,158,2,NULL),(2214,154,158,2,NULL),(2215,78,159,2,NULL),(2216,86,159,2,NULL),(2217,103,159,2,NULL),(2218,105,159,2,NULL),(2219,129,159,2,NULL),(2220,154,159,2,NULL),(2221,78,162,2,NULL),(2222,86,162,2,NULL),(2223,103,162,2,NULL),(2224,105,162,2,NULL),(2225,129,162,2,NULL),(2226,154,162,2,NULL),(2227,78,163,2,NULL),(2228,86,163,2,NULL),(2229,103,163,2,NULL),(2230,105,163,2,NULL),(2231,129,163,2,NULL),(2232,154,163,2,NULL),(2233,78,164,2,NULL),(2234,86,164,2,NULL),(2235,103,164,2,NULL),(2236,105,164,2,NULL),(2237,129,164,2,NULL),(2238,154,164,2,NULL),(2239,78,165,2,NULL),(2240,86,165,2,NULL),(2241,103,165,2,NULL),(2242,105,165,2,NULL),(2243,129,165,2,NULL),(2244,154,165,2,NULL),(2245,49,111,2,NULL),(2246,67,121,2,NULL),(2247,68,111,2,NULL),(2248,89,108,2,NULL),(2249,94,118,2,NULL),(2250,96,121,2,NULL),(2251,112,108,2,NULL),(2252,140,118,2,NULL),(2253,3,124,2,NULL),(2254,4,124,2,NULL),(2255,10,124,2,NULL),(2256,11,124,2,NULL),(2257,13,124,2,NULL),(2258,15,124,2,NULL),(2259,17,124,2,NULL),(2260,19,124,2,NULL),(2261,12,124,2,NULL),(2262,14,124,2,NULL),(2263,16,124,2,NULL),(2264,18,124,2,NULL),(2265,20,124,2,NULL),(2266,21,124,2,NULL),(2267,22,124,2,NULL),(2268,23,124,2,NULL),(2269,184,124,2,NULL),(2270,221,124,2,NULL),(2271,208,124,2,NULL),(2272,173,124,2,NULL),(2273,196,124,2,NULL),(2274,192,124,2,NULL),(2275,193,124,2,NULL),(2276,194,124,2,NULL),(2277,195,124,2,NULL),(2278,199,124,2,NULL),(2279,200,124,2,NULL),(2280,175,124,2,NULL),(2281,197,124,2,NULL),(2282,42,124,2,NULL),(2283,101,124,2,NULL),(2284,108,124,2,NULL),(2285,117,124,2,NULL),(2286,119,124,2,NULL),(2287,149,124,2,NULL),(2288,150,124,2,NULL),(2289,152,124,2,NULL),(2290,42,1,2,NULL),(2291,101,1,2,NULL),(2292,108,1,2,NULL),(2293,117,1,2,NULL),(2294,119,1,2,NULL),(2295,149,1,2,NULL),(2296,150,1,2,NULL),(2297,152,1,2,NULL),(2298,42,10,2,NULL),(2299,101,10,2,NULL),(2300,108,10,2,NULL),(2301,117,10,2,NULL),(2302,119,10,2,NULL),(2303,149,10,2,NULL),(2304,150,10,2,NULL),(2305,152,10,2,NULL),(2306,42,11,2,NULL),(2307,101,11,2,NULL),(2308,108,11,2,NULL),(2309,117,11,2,NULL),(2310,119,11,2,NULL),(2311,149,11,2,NULL),(2312,150,11,2,NULL),(2313,152,11,2,NULL),(2314,42,12,2,NULL),(2315,101,12,2,NULL),(2316,108,12,2,NULL),(2317,117,12,2,NULL),(2318,119,12,2,NULL),(2319,149,12,2,NULL),(2320,150,12,2,NULL),(2321,152,12,2,NULL),(2322,42,47,2,NULL),(2323,101,47,2,NULL),(2324,108,47,2,NULL),(2325,117,47,2,NULL),(2326,119,47,2,NULL),(2327,149,47,2,NULL),(2328,150,47,2,NULL),(2329,152,47,2,NULL),(2330,42,13,2,NULL),(2331,101,13,2,NULL),(2332,108,13,2,NULL),(2333,117,13,2,NULL),(2334,119,13,2,NULL),(2335,149,13,2,NULL),(2336,150,13,2,NULL),(2337,152,13,2,NULL),(2338,42,20,2,NULL),(2339,101,20,2,NULL),(2340,108,20,2,NULL),(2341,117,20,2,NULL),(2342,119,20,2,NULL),(2343,149,20,2,NULL),(2344,150,20,2,NULL),(2345,152,20,2,NULL),(2346,42,28,2,NULL),(2347,101,28,2,NULL),(2348,108,28,2,NULL),(2349,117,28,2,NULL),(2350,119,28,2,NULL),(2351,149,28,2,NULL),(2352,150,28,2,NULL),(2353,152,28,2,NULL),(2354,42,30,2,NULL),(2355,101,30,2,NULL),(2356,108,30,2,NULL),(2357,117,30,2,NULL),(2358,119,30,2,NULL),(2359,149,30,2,NULL),(2360,150,30,2,NULL),(2361,152,30,2,NULL),(2362,42,32,2,NULL),(2363,101,32,2,NULL),(2364,108,32,2,NULL),(2365,117,32,2,NULL),(2366,119,32,2,NULL),(2367,149,32,2,NULL),(2368,150,32,2,NULL),(2369,152,32,2,NULL),(2370,42,35,2,NULL),(2371,101,35,2,NULL),(2372,108,35,2,NULL),(2373,117,35,2,NULL),(2374,119,35,2,NULL),(2375,149,35,2,NULL),(2376,150,35,2,NULL),(2377,152,35,2,NULL),(2378,42,173,2,NULL),(2379,101,173,2,NULL),(2380,108,173,2,NULL),(2381,117,173,2,NULL),(2382,119,173,2,NULL),(2383,149,173,2,NULL),(2384,150,173,2,NULL),(2385,152,173,2,NULL),(2386,42,174,2,NULL),(2387,101,174,2,NULL),(2388,108,174,2,NULL),(2389,117,174,2,NULL),(2390,119,174,2,NULL),(2391,149,174,2,NULL),(2392,150,174,2,NULL),(2393,152,174,2,NULL),(2394,42,175,2,NULL),(2395,101,175,2,NULL),(2396,108,175,2,NULL),(2397,117,175,2,NULL),(2398,119,175,2,NULL),(2399,149,175,2,NULL),(2400,150,175,2,NULL),(2401,152,175,2,NULL),(2402,42,29,2,NULL),(2403,101,29,2,NULL),(2404,108,29,2,NULL),(2405,117,29,2,NULL),(2406,119,29,2,NULL),(2407,149,29,2,NULL),(2408,150,29,2,NULL),(2409,152,29,2,NULL),(2410,42,129,2,NULL),(2411,101,129,2,NULL),(2412,108,129,2,NULL),(2413,117,129,2,NULL),(2414,119,129,2,NULL),(2415,149,129,2,NULL),(2416,150,129,2,NULL),(2417,152,129,2,NULL),(2418,42,132,2,NULL),(2419,101,132,2,NULL),(2420,108,132,2,NULL),(2421,117,132,2,NULL),(2422,119,132,2,NULL),(2423,149,132,2,NULL),(2424,150,132,2,NULL),(2425,152,132,2,NULL),(2426,42,130,2,NULL),(2427,101,130,2,NULL),(2428,108,130,2,NULL),(2429,117,130,2,NULL),(2430,119,130,2,NULL),(2431,149,130,2,NULL),(2432,150,130,2,NULL),(2433,152,130,2,NULL),(2434,42,131,2,NULL),(2435,101,131,2,NULL),(2436,108,131,2,NULL),(2437,117,131,2,NULL),(2438,119,131,2,NULL),(2439,149,131,2,NULL),(2440,150,131,2,NULL),(2441,152,131,2,NULL),(2442,42,167,2,NULL),(2443,101,167,2,NULL),(2444,108,167,2,NULL),(2445,117,167,2,NULL),(2446,119,167,2,NULL),(2447,149,167,2,NULL),(2448,150,167,2,NULL),(2449,152,167,2,NULL),(2450,42,168,2,NULL),(2451,101,168,2,NULL),(2452,108,168,2,NULL),(2453,117,168,2,NULL),(2454,119,168,2,NULL),(2455,149,168,2,NULL),(2456,150,168,2,NULL),(2457,152,168,2,NULL),(2458,42,169,2,NULL),(2459,101,169,2,NULL),(2460,108,169,2,NULL),(2461,117,169,2,NULL),(2462,119,169,2,NULL),(2463,149,169,2,NULL),(2464,150,169,2,NULL),(2465,152,169,2,NULL),(2466,42,170,2,NULL),(2467,101,170,2,NULL),(2468,108,170,2,NULL),(2469,117,170,2,NULL),(2470,119,170,2,NULL),(2471,149,170,2,NULL),(2472,150,170,2,NULL),(2473,152,170,2,NULL),(2474,42,171,2,NULL),(2475,101,171,2,NULL),(2476,108,171,2,NULL),(2477,117,171,2,NULL),(2478,119,171,2,NULL),(2479,149,171,2,NULL),(2480,150,171,2,NULL),(2481,152,171,2,NULL),(2482,42,172,2,NULL),(2483,101,172,2,NULL),(2484,108,172,2,NULL),(2485,117,172,2,NULL),(2486,119,172,2,NULL),(2487,149,172,2,NULL),(2488,150,172,2,NULL),(2489,152,172,2,NULL),(2490,42,133,2,NULL),(2491,101,133,2,NULL),(2492,108,133,2,NULL),(2493,117,133,2,NULL),(2494,119,133,2,NULL),(2495,149,133,2,NULL),(2496,150,133,2,NULL),(2497,152,133,2,NULL),(2498,42,134,2,NULL),(2499,101,134,2,NULL),(2500,108,134,2,NULL),(2501,117,134,2,NULL),(2502,119,134,2,NULL),(2503,149,134,2,NULL),(2504,150,134,2,NULL),(2505,152,134,2,NULL),(2506,42,135,2,NULL),(2507,101,135,2,NULL),(2508,108,135,2,NULL),(2509,117,135,2,NULL),(2510,119,135,2,NULL),(2511,149,135,2,NULL),(2512,150,135,2,NULL),(2513,152,135,2,NULL),(2514,42,153,2,NULL),(2515,101,153,2,NULL),(2516,108,153,2,NULL),(2517,117,153,2,NULL),(2518,119,153,2,NULL),(2519,149,153,2,NULL),(2520,150,153,2,NULL),(2521,152,153,2,NULL),(2522,42,156,2,NULL),(2523,101,156,2,NULL),(2524,108,156,2,NULL),(2525,117,156,2,NULL),(2526,119,156,2,NULL),(2527,149,156,2,NULL),(2528,150,156,2,NULL),(2529,152,156,2,NULL),(2530,42,158,2,NULL),(2531,101,158,2,NULL),(2532,108,158,2,NULL),(2533,117,158,2,NULL),(2534,119,158,2,NULL),(2535,149,158,2,NULL),(2536,150,158,2,NULL),(2537,152,158,2,NULL),(2538,42,159,2,NULL),(2539,101,159,2,NULL),(2540,108,159,2,NULL),(2541,117,159,2,NULL),(2542,119,159,2,NULL),(2543,149,159,2,NULL),(2544,150,159,2,NULL),(2545,152,159,2,NULL),(2546,42,162,2,NULL),(2547,101,162,2,NULL),(2548,108,162,2,NULL),(2549,117,162,2,NULL),(2550,119,162,2,NULL),(2551,149,162,2,NULL),(2552,150,162,2,NULL),(2553,152,162,2,NULL),(2554,42,163,2,NULL),(2555,101,163,2,NULL),(2556,108,163,2,NULL),(2557,117,163,2,NULL),(2558,119,163,2,NULL),(2559,149,163,2,NULL),(2560,150,163,2,NULL),(2561,152,163,2,NULL),(2562,42,164,2,NULL),(2563,101,164,2,NULL),(2564,108,164,2,NULL),(2565,117,164,2,NULL),(2566,119,164,2,NULL),(2567,149,164,2,NULL),(2568,150,164,2,NULL),(2569,152,164,2,NULL),(2570,42,165,2,NULL),(2571,101,165,2,NULL),(2572,108,165,2,NULL),(2573,117,165,2,NULL),(2574,119,165,2,NULL),(2575,149,165,2,NULL),(2576,150,165,2,NULL),(2577,152,165,2,NULL),(2578,3,130,2,NULL),(2579,4,130,2,NULL),(2580,10,130,2,NULL),(2581,11,130,2,NULL),(2582,13,130,2,NULL),(2583,15,130,2,NULL),(2584,17,130,2,NULL),(2585,19,130,2,NULL),(2586,12,130,2,NULL),(2587,14,130,2,NULL),(2588,16,130,2,NULL),(2589,18,130,2,NULL),(2590,20,130,2,NULL),(2591,21,130,2,NULL),(2592,22,130,2,NULL),(2593,23,130,2,NULL),(2594,184,130,2,NULL),(2595,221,130,2,NULL),(2596,208,130,2,NULL),(2597,173,130,2,NULL),(2598,196,130,2,NULL),(2599,192,130,2,NULL),(2600,193,130,2,NULL),(2601,194,130,2,NULL),(2602,195,130,2,NULL),(2603,199,130,2,NULL),(2604,200,130,2,NULL),(2605,175,130,2,NULL),(2606,197,130,2,NULL),(2607,51,128,2,NULL),(2608,128,128,2,NULL),(2609,3,131,2,NULL),(2610,4,131,2,NULL),(2611,10,131,2,NULL),(2612,11,131,2,NULL),(2613,13,131,2,NULL),(2614,15,131,2,NULL),(2615,17,131,2,NULL),(2616,19,131,2,NULL),(2617,12,131,2,NULL),(2618,14,131,2,NULL),(2619,16,131,2,NULL),(2620,18,131,2,NULL),(2621,20,131,2,NULL),(2622,21,131,2,NULL),(2623,22,131,2,NULL),(2624,23,131,2,NULL),(2625,184,131,2,NULL),(2626,221,131,2,NULL),(2627,208,131,2,NULL),(2628,173,131,2,NULL),(2629,196,131,2,NULL),(2630,192,131,2,NULL),(2631,193,131,2,NULL),(2632,194,131,2,NULL),(2633,195,131,2,NULL),(2634,199,131,2,NULL),(2635,200,131,2,NULL),(2636,175,131,2,NULL),(2637,197,131,2,NULL),(2638,3,167,2,NULL),(2639,4,167,2,NULL),(2640,10,167,2,NULL),(2641,11,167,2,NULL),(2642,13,167,2,NULL),(2643,15,167,2,NULL),(2644,17,167,2,NULL),(2645,19,167,2,NULL),(2646,12,167,2,NULL),(2647,14,167,2,NULL),(2648,16,167,2,NULL),(2649,18,167,2,NULL),(2650,20,167,2,NULL),(2651,21,167,2,NULL),(2652,22,167,2,NULL),(2653,23,167,2,NULL),(2654,184,167,2,NULL),(2655,221,167,2,NULL),(2656,208,167,2,NULL),(2657,173,167,2,NULL),(2658,196,167,2,NULL),(2659,192,167,2,NULL),(2660,193,167,2,NULL),(2661,194,167,2,NULL),(2662,195,167,2,NULL),(2663,199,167,2,NULL),(2664,200,167,2,NULL),(2665,175,167,2,NULL),(2666,197,167,2,NULL),(2667,3,168,2,NULL),(2668,4,168,2,NULL),(2669,10,168,2,NULL),(2670,11,168,2,NULL),(2671,13,168,2,NULL),(2672,15,168,2,NULL),(2673,17,168,2,NULL),(2674,19,168,2,NULL),(2675,12,168,2,NULL),(2676,14,168,2,NULL),(2677,16,168,2,NULL),(2678,18,168,2,NULL),(2679,20,168,2,NULL),(2680,21,168,2,NULL),(2681,22,168,2,NULL),(2682,23,168,2,NULL),(2683,184,168,2,NULL),(2684,221,168,2,NULL),(2685,208,168,2,NULL),(2686,173,168,2,NULL),(2687,196,168,2,NULL),(2688,192,168,2,NULL),(2689,193,168,2,NULL),(2690,194,168,2,NULL),(2691,195,168,2,NULL),(2692,199,168,2,NULL),(2693,200,168,2,NULL),(2694,175,168,2,NULL),(2695,197,168,2,NULL),(2696,3,169,2,NULL),(2697,4,169,2,NULL),(2698,10,169,2,NULL),(2699,11,169,2,NULL),(2700,13,169,2,NULL),(2701,15,169,2,NULL),(2702,17,169,2,NULL),(2703,19,169,2,NULL),(2704,12,169,2,NULL),(2705,14,169,2,NULL),(2706,16,169,2,NULL),(2707,18,169,2,NULL),(2708,20,169,2,NULL),(2709,21,169,2,NULL),(2710,22,169,2,NULL),(2711,23,169,2,NULL),(2712,184,169,2,NULL),(2713,221,169,2,NULL),(2714,208,169,2,NULL),(2715,173,169,2,NULL),(2716,196,169,2,NULL),(2717,192,169,2,NULL),(2718,193,169,2,NULL),(2719,194,169,2,NULL),(2720,195,169,2,NULL),(2721,199,169,2,NULL),(2722,200,169,2,NULL),(2723,175,169,2,NULL),(2724,197,169,2,NULL),(2725,3,170,2,NULL),(2726,4,170,2,NULL),(2727,10,170,2,NULL),(2728,11,170,2,NULL),(2729,13,170,2,NULL),(2730,15,170,2,NULL),(2731,17,170,2,NULL),(2732,19,170,2,NULL),(2733,12,170,2,NULL),(2734,14,170,2,NULL),(2735,16,170,2,NULL),(2736,18,170,2,NULL),(2737,20,170,2,NULL),(2738,21,170,2,NULL),(2739,22,170,2,NULL),(2740,23,170,2,NULL),(2741,184,170,2,NULL),(2742,221,170,2,NULL),(2743,208,170,2,NULL),(2744,173,170,2,NULL),(2745,196,170,2,NULL),(2746,192,170,2,NULL),(2747,193,170,2,NULL),(2748,194,170,2,NULL),(2749,195,170,2,NULL),(2750,199,170,2,NULL),(2751,200,170,2,NULL),(2752,175,170,2,NULL),(2753,197,170,2,NULL),(2754,3,171,2,NULL),(2755,4,171,2,NULL),(2756,10,171,2,NULL),(2757,11,171,2,NULL),(2758,13,171,2,NULL),(2759,15,171,2,NULL),(2760,17,171,2,NULL),(2761,19,171,2,NULL),(2762,12,171,2,NULL),(2763,14,171,2,NULL),(2764,16,171,2,NULL),(2765,18,171,2,NULL),(2766,20,171,2,NULL),(2767,21,171,2,NULL),(2768,22,171,2,NULL),(2769,23,171,2,NULL),(2770,184,171,2,NULL),(2771,221,171,2,NULL),(2772,208,171,2,NULL),(2773,173,171,2,NULL),(2774,196,171,2,NULL),(2775,192,171,2,NULL),(2776,193,171,2,NULL),(2777,194,171,2,NULL),(2778,195,171,2,NULL),(2779,199,171,2,NULL),(2780,200,171,2,NULL),(2781,175,171,2,NULL),(2782,197,171,2,NULL),(2783,3,172,2,NULL),(2784,4,172,2,NULL),(2785,10,172,2,NULL),(2786,11,172,2,NULL),(2787,13,172,2,NULL),(2788,15,172,2,NULL),(2789,17,172,2,NULL),(2790,19,172,2,NULL),(2791,12,172,2,NULL),(2792,14,172,2,NULL),(2793,16,172,2,NULL),(2794,18,172,2,NULL),(2795,20,172,2,NULL),(2796,21,172,2,NULL),(2797,22,172,2,NULL),(2798,23,172,2,NULL),(2799,184,172,2,NULL),(2800,221,172,2,NULL),(2801,208,172,2,NULL),(2802,173,172,2,NULL),(2803,196,172,2,NULL),(2804,192,172,2,NULL),(2805,193,172,2,NULL),(2806,194,172,2,NULL),(2807,195,172,2,NULL),(2808,199,172,2,NULL),(2809,200,172,2,NULL),(2810,175,172,2,NULL),(2811,197,172,2,NULL),(2812,3,1,2,NULL),(2813,4,1,2,NULL),(2814,10,1,2,NULL),(2815,11,1,2,NULL),(2816,13,1,2,NULL),(2817,15,1,2,NULL),(2818,17,1,2,NULL),(2819,19,1,2,NULL),(2820,12,1,2,NULL),(2821,14,1,2,NULL),(2822,16,1,2,NULL),(2823,18,1,2,NULL),(2824,20,1,2,NULL),(2825,21,1,2,NULL),(2826,22,1,2,NULL),(2827,23,1,2,NULL),(2828,184,1,2,NULL),(2829,221,1,2,NULL),(2830,208,1,2,NULL),(2831,173,1,2,NULL),(2832,196,1,2,NULL),(2833,192,1,2,NULL),(2834,193,1,2,NULL),(2835,194,1,2,NULL),(2836,195,1,2,NULL),(2837,199,1,2,NULL),(2838,200,1,2,NULL),(2839,175,1,2,NULL),(2840,197,1,2,NULL),(2841,2,8,2,NULL),(2842,25,8,2,NULL),(2843,3,10,2,NULL),(2844,4,10,2,NULL),(2845,10,10,2,NULL),(2846,11,10,2,NULL),(2847,13,10,2,NULL),(2848,15,10,2,NULL),(2849,17,10,2,NULL),(2850,19,10,2,NULL),(2851,12,10,2,NULL),(2852,14,10,2,NULL),(2853,16,10,2,NULL),(2854,18,10,2,NULL),(2855,20,10,2,NULL),(2856,21,10,2,NULL),(2857,22,10,2,NULL),(2858,23,10,2,NULL),(2859,3,11,2,NULL),(2860,4,11,2,NULL),(2861,10,11,2,NULL),(2862,11,11,2,NULL),(2863,13,11,2,NULL),(2864,15,11,2,NULL),(2865,17,11,2,NULL),(2866,19,11,2,NULL),(2867,12,11,2,NULL),(2868,14,11,2,NULL),(2869,16,11,2,NULL),(2870,18,11,2,NULL),(2871,20,11,2,NULL),(2872,21,11,2,NULL),(2873,22,11,2,NULL),(2874,23,11,2,NULL),(2875,3,12,2,NULL),(2876,4,12,2,NULL),(2877,10,12,2,NULL),(2878,11,12,2,NULL),(2879,13,12,2,NULL),(2880,15,12,2,NULL),(2881,17,12,2,NULL),(2882,19,12,2,NULL),(2883,12,12,2,NULL),(2884,14,12,2,NULL),(2885,16,12,2,NULL),(2886,18,12,2,NULL),(2887,20,12,2,NULL),(2888,21,12,2,NULL),(2889,22,12,2,NULL),(2890,23,12,2,NULL),(2891,3,47,2,NULL),(2892,4,47,2,NULL),(2893,10,47,2,NULL),(2894,11,47,2,NULL),(2895,13,47,2,NULL),(2896,15,47,2,NULL),(2897,17,47,2,NULL),(2898,19,47,2,NULL),(2899,12,47,2,NULL),(2900,14,47,2,NULL),(2901,16,47,2,NULL),(2902,18,47,2,NULL),(2903,20,47,2,NULL),(2904,21,47,2,NULL),(2905,22,47,2,NULL),(2906,23,47,2,NULL),(2907,3,13,2,NULL),(2908,4,13,2,NULL),(2909,10,13,2,NULL),(2910,11,13,2,NULL),(2911,13,13,2,NULL),(2912,15,13,2,NULL),(2913,17,13,2,NULL),(2914,19,13,2,NULL),(2915,12,13,2,NULL),(2916,14,13,2,NULL),(2917,16,13,2,NULL),(2918,18,13,2,NULL),(2919,20,13,2,NULL),(2920,21,13,2,NULL),(2921,22,13,2,NULL),(2922,23,13,2,NULL),(2923,3,20,2,NULL),(2924,4,20,2,NULL),(2925,10,20,2,NULL),(2926,11,20,2,NULL),(2927,13,20,2,NULL),(2928,15,20,2,NULL),(2929,17,20,2,NULL),(2930,19,20,2,NULL),(2931,12,20,2,NULL),(2932,14,20,2,NULL),(2933,16,20,2,NULL),(2934,18,20,2,NULL),(2935,20,20,2,NULL),(2936,21,20,2,NULL),(2937,22,20,2,NULL),(2938,23,20,2,NULL),(2939,3,28,2,NULL),(2940,4,28,2,NULL),(2941,10,28,2,NULL),(2942,11,28,2,NULL),(2943,13,28,2,NULL),(2944,15,28,2,NULL),(2945,17,28,2,NULL),(2946,19,28,2,NULL),(2947,12,28,2,NULL),(2948,14,28,2,NULL),(2949,16,28,2,NULL),(2950,18,28,2,NULL),(2951,20,28,2,NULL),(2952,21,28,2,NULL),(2953,22,28,2,NULL),(2954,23,28,2,NULL),(2955,3,30,2,NULL),(2956,4,30,2,NULL),(2957,10,30,2,NULL),(2958,11,30,2,NULL),(2959,13,30,2,NULL),(2960,15,30,2,NULL),(2961,17,30,2,NULL),(2962,19,30,2,NULL),(2963,12,30,2,NULL),(2964,14,30,2,NULL),(2965,16,30,2,NULL),(2966,18,30,2,NULL),(2967,20,30,2,NULL),(2968,21,30,2,NULL),(2969,22,30,2,NULL),(2970,23,30,2,NULL),(2971,3,32,2,NULL),(2972,4,32,2,NULL),(2973,10,32,2,NULL),(2974,11,32,2,NULL),(2975,13,32,2,NULL),(2976,15,32,2,NULL),(2977,17,32,2,NULL),(2978,19,32,2,NULL),(2979,12,32,2,NULL),(2980,14,32,2,NULL),(2981,16,32,2,NULL),(2982,18,32,2,NULL),(2983,20,32,2,NULL),(2984,21,32,2,NULL),(2985,22,32,2,NULL),(2986,23,32,2,NULL),(2987,3,35,2,NULL),(2988,4,35,2,NULL),(2989,10,35,2,NULL),(2990,11,35,2,NULL),(2991,13,35,2,NULL),(2992,15,35,2,NULL),(2993,17,35,2,NULL),(2994,19,35,2,NULL),(2995,12,35,2,NULL),(2996,14,35,2,NULL),(2997,16,35,2,NULL),(2998,18,35,2,NULL),(2999,20,35,2,NULL),(3000,21,35,2,NULL),(3001,22,35,2,NULL),(3002,23,35,2,NULL),(3003,3,173,2,NULL),(3004,4,173,2,NULL),(3005,10,173,2,NULL),(3006,11,173,2,NULL),(3007,13,173,2,NULL),(3008,15,173,2,NULL),(3009,17,173,2,NULL),(3010,19,173,2,NULL),(3011,12,173,2,NULL),(3012,14,173,2,NULL),(3013,16,173,2,NULL),(3014,18,173,2,NULL),(3015,20,173,2,NULL),(3016,21,173,2,NULL),(3017,22,173,2,NULL),(3018,23,173,2,NULL),(3019,3,174,2,NULL),(3020,4,174,2,NULL),(3021,10,174,2,NULL),(3022,11,174,2,NULL),(3023,13,174,2,NULL),(3024,15,174,2,NULL),(3025,17,174,2,NULL),(3026,19,174,2,NULL),(3027,12,174,2,NULL),(3028,14,174,2,NULL),(3029,16,174,2,NULL),(3030,18,174,2,NULL),(3031,20,174,2,NULL),(3032,21,174,2,NULL),(3033,22,174,2,NULL),(3034,23,174,2,NULL),(3035,3,175,2,NULL),(3036,4,175,2,NULL),(3037,10,175,2,NULL),(3038,11,175,2,NULL),(3039,13,175,2,NULL),(3040,15,175,2,NULL),(3041,17,175,2,NULL),(3042,19,175,2,NULL),(3043,12,175,2,NULL),(3044,14,175,2,NULL),(3045,16,175,2,NULL),(3046,18,175,2,NULL),(3047,20,175,2,NULL),(3048,21,175,2,NULL),(3049,22,175,2,NULL),(3050,23,175,2,NULL),(3051,3,29,2,NULL),(3052,4,29,2,NULL),(3053,10,29,2,NULL),(3054,11,29,2,NULL),(3055,13,29,2,NULL),(3056,15,29,2,NULL),(3057,17,29,2,NULL),(3058,19,29,2,NULL),(3059,12,29,2,NULL),(3060,14,29,2,NULL),(3061,16,29,2,NULL),(3062,18,29,2,NULL),(3063,20,29,2,NULL),(3064,21,29,2,NULL),(3065,22,29,2,NULL),(3066,23,29,2,NULL),(3067,3,129,2,NULL),(3068,4,129,2,NULL),(3069,10,129,2,NULL),(3070,11,129,2,NULL),(3071,13,129,2,NULL),(3072,15,129,2,NULL),(3073,17,129,2,NULL),(3074,19,129,2,NULL),(3075,12,129,2,NULL),(3076,14,129,2,NULL),(3077,16,129,2,NULL),(3078,18,129,2,NULL),(3079,20,129,2,NULL),(3080,21,129,2,NULL),(3081,22,129,2,NULL),(3082,23,129,2,NULL),(3083,3,132,2,NULL),(3084,4,132,2,NULL),(3085,10,132,2,NULL),(3086,11,132,2,NULL),(3087,13,132,2,NULL),(3088,15,132,2,NULL),(3089,17,132,2,NULL),(3090,19,132,2,NULL),(3091,12,132,2,NULL),(3092,14,132,2,NULL),(3093,16,132,2,NULL),(3094,18,132,2,NULL),(3095,20,132,2,NULL),(3096,21,132,2,NULL),(3097,22,132,2,NULL),(3098,23,132,2,NULL),(3099,3,133,2,NULL),(3100,4,133,2,NULL),(3101,10,133,2,NULL),(3102,11,133,2,NULL),(3103,13,133,2,NULL),(3104,15,133,2,NULL),(3105,17,133,2,NULL),(3106,19,133,2,NULL),(3107,12,133,2,NULL),(3108,14,133,2,NULL),(3109,16,133,2,NULL),(3110,18,133,2,NULL),(3111,20,133,2,NULL),(3112,21,133,2,NULL),(3113,22,133,2,NULL),(3114,23,133,2,NULL),(3115,3,134,2,NULL),(3116,4,134,2,NULL),(3117,10,134,2,NULL),(3118,11,134,2,NULL),(3119,13,134,2,NULL),(3120,15,134,2,NULL),(3121,17,134,2,NULL),(3122,19,134,2,NULL),(3123,12,134,2,NULL),(3124,14,134,2,NULL),(3125,16,134,2,NULL),(3126,18,134,2,NULL),(3127,20,134,2,NULL),(3128,21,134,2,NULL),(3129,22,134,2,NULL),(3130,23,134,2,NULL),(3131,3,135,2,NULL),(3132,4,135,2,NULL),(3133,10,135,2,NULL),(3134,11,135,2,NULL),(3135,13,135,2,NULL),(3136,15,135,2,NULL),(3137,17,135,2,NULL),(3138,19,135,2,NULL),(3139,12,135,2,NULL),(3140,14,135,2,NULL),(3141,16,135,2,NULL),(3142,18,135,2,NULL),(3143,20,135,2,NULL),(3144,21,135,2,NULL),(3145,22,135,2,NULL),(3146,23,135,2,NULL),(3147,3,153,2,NULL),(3148,4,153,2,NULL),(3149,10,153,2,NULL),(3150,11,153,2,NULL),(3151,13,153,2,NULL),(3152,15,153,2,NULL),(3153,17,153,2,NULL),(3154,19,153,2,NULL),(3155,12,153,2,NULL),(3156,14,153,2,NULL),(3157,16,153,2,NULL),(3158,18,153,2,NULL),(3159,20,153,2,NULL),(3160,21,153,2,NULL),(3161,22,153,2,NULL),(3162,23,153,2,NULL),(3163,3,156,2,NULL),(3164,4,156,2,NULL),(3165,10,156,2,NULL),(3166,11,156,2,NULL),(3167,13,156,2,NULL),(3168,15,156,2,NULL),(3169,17,156,2,NULL),(3170,19,156,2,NULL),(3171,12,156,2,NULL),(3172,14,156,2,NULL),(3173,16,156,2,NULL),(3174,18,156,2,NULL),(3175,20,156,2,NULL),(3176,21,156,2,NULL),(3177,22,156,2,NULL),(3178,23,156,2,NULL),(3179,3,158,2,NULL),(3180,4,158,2,NULL),(3181,10,158,2,NULL),(3182,11,158,2,NULL),(3183,13,158,2,NULL),(3184,15,158,2,NULL),(3185,17,158,2,NULL),(3186,19,158,2,NULL),(3187,12,158,2,NULL),(3188,14,158,2,NULL),(3189,16,158,2,NULL),(3190,18,158,2,NULL),(3191,20,158,2,NULL),(3192,21,158,2,NULL),(3193,22,158,2,NULL),(3194,23,158,2,NULL),(3195,3,159,2,NULL),(3196,4,159,2,NULL),(3197,10,159,2,NULL),(3198,11,159,2,NULL),(3199,13,159,2,NULL),(3200,15,159,2,NULL),(3201,17,159,2,NULL),(3202,19,159,2,NULL),(3203,12,159,2,NULL),(3204,14,159,2,NULL),(3205,16,159,2,NULL),(3206,18,159,2,NULL),(3207,20,159,2,NULL),(3208,21,159,2,NULL),(3209,22,159,2,NULL),(3210,23,159,2,NULL),(3211,3,162,2,NULL),(3212,4,162,2,NULL),(3213,10,162,2,NULL),(3214,11,162,2,NULL),(3215,13,162,2,NULL),(3216,15,162,2,NULL),(3217,17,162,2,NULL),(3218,19,162,2,NULL),(3219,12,162,2,NULL),(3220,14,162,2,NULL),(3221,16,162,2,NULL),(3222,18,162,2,NULL),(3223,20,162,2,NULL),(3224,21,162,2,NULL),(3225,22,162,2,NULL),(3226,23,162,2,NULL),(3227,3,163,2,NULL),(3228,4,163,2,NULL),(3229,10,163,2,NULL),(3230,11,163,2,NULL),(3231,13,163,2,NULL),(3232,15,163,2,NULL),(3233,17,163,2,NULL),(3234,19,163,2,NULL),(3235,12,163,2,NULL),(3236,14,163,2,NULL),(3237,16,163,2,NULL),(3238,18,163,2,NULL),(3239,20,163,2,NULL),(3240,21,163,2,NULL),(3241,22,163,2,NULL),(3242,23,163,2,NULL),(3243,3,164,2,NULL),(3244,4,164,2,NULL),(3245,10,164,2,NULL),(3246,11,164,2,NULL),(3247,13,164,2,NULL),(3248,15,164,2,NULL),(3249,17,164,2,NULL),(3250,19,164,2,NULL),(3251,12,164,2,NULL),(3252,14,164,2,NULL),(3253,16,164,2,NULL),(3254,18,164,2,NULL),(3255,20,164,2,NULL),(3256,21,164,2,NULL),(3257,22,164,2,NULL),(3258,23,164,2,NULL),(3259,3,165,2,NULL),(3260,4,165,2,NULL),(3261,10,165,2,NULL),(3262,11,165,2,NULL),(3263,13,165,2,NULL),(3264,15,165,2,NULL),(3265,17,165,2,NULL),(3266,19,165,2,NULL),(3267,12,165,2,NULL),(3268,14,165,2,NULL),(3269,16,165,2,NULL),(3270,18,165,2,NULL),(3271,20,165,2,NULL),(3272,21,165,2,NULL),(3273,22,165,2,NULL),(3274,23,165,2,NULL),(3275,7,7,2,NULL),(3276,7,24,2,NULL),(3277,7,157,2,NULL),(3278,8,8,2,NULL),(3279,24,8,2,NULL),(3280,184,10,2,NULL),(3281,221,10,2,NULL),(3282,208,10,2,NULL),(3283,173,10,2,NULL),(3284,196,10,2,NULL),(3285,192,10,2,NULL),(3286,193,10,2,NULL),(3287,194,10,2,NULL),(3288,195,10,2,NULL),(3289,199,10,2,NULL),(3290,200,10,2,NULL),(3291,175,10,2,NULL),(3292,197,10,2,NULL),(3293,1,9,2,NULL),(3294,1,27,2,NULL),(3295,1,161,2,NULL),(3296,27,9,2,NULL),(3297,27,27,2,NULL),(3298,27,161,2,NULL),(3299,28,9,2,NULL),(3300,28,27,2,NULL),(3301,28,161,2,NULL),(3302,184,11,2,NULL),(3303,221,11,2,NULL),(3304,208,11,2,NULL),(3305,173,11,2,NULL),(3306,196,11,2,NULL),(3307,192,11,2,NULL),(3308,193,11,2,NULL),(3309,194,11,2,NULL),(3310,195,11,2,NULL),(3311,199,11,2,NULL),(3312,200,11,2,NULL),(3313,175,11,2,NULL),(3314,197,11,2,NULL),(3315,184,12,2,NULL),(3316,221,12,2,NULL),(3317,208,12,2,NULL),(3318,173,12,2,NULL),(3319,196,12,2,NULL),(3320,192,12,2,NULL),(3321,193,12,2,NULL),(3322,194,12,2,NULL),(3323,195,12,2,NULL),(3324,199,12,2,NULL),(3325,200,12,2,NULL),(3326,175,12,2,NULL),(3327,197,12,2,NULL),(3328,184,47,2,NULL),(3329,221,47,2,NULL),(3330,208,47,2,NULL),(3331,173,47,2,NULL),(3332,196,47,2,NULL),(3333,192,47,2,NULL),(3334,193,47,2,NULL),(3335,194,47,2,NULL),(3336,195,47,2,NULL),(3337,199,47,2,NULL),(3338,200,47,2,NULL),(3339,175,47,2,NULL),(3340,197,47,2,NULL),(3341,184,133,2,NULL),(3342,221,133,2,NULL),(3343,208,133,2,NULL),(3344,173,133,2,NULL),(3345,196,133,2,NULL),(3346,192,133,2,NULL),(3347,193,133,2,NULL),(3348,194,133,2,NULL),(3349,195,133,2,NULL),(3350,199,133,2,NULL),(3351,200,133,2,NULL),(3352,175,133,2,NULL),(3353,197,133,2,NULL),(3354,184,134,2,NULL),(3355,221,134,2,NULL),(3356,208,134,2,NULL),(3357,173,134,2,NULL),(3358,196,134,2,NULL),(3359,192,134,2,NULL),(3360,193,134,2,NULL),(3361,194,134,2,NULL),(3362,195,134,2,NULL),(3363,199,134,2,NULL),(3364,200,134,2,NULL),(3365,175,134,2,NULL),(3366,197,134,2,NULL),(3367,184,135,2,NULL),(3368,221,135,2,NULL),(3369,208,135,2,NULL),(3370,173,135,2,NULL),(3371,196,135,2,NULL),(3372,192,135,2,NULL),(3373,193,135,2,NULL),(3374,194,135,2,NULL),(3375,195,135,2,NULL),(3376,199,135,2,NULL),(3377,200,135,2,NULL),(3378,175,135,2,NULL),(3379,197,135,2,NULL),(3380,184,153,2,NULL),(3381,221,153,2,NULL),(3382,208,153,2,NULL),(3383,173,153,2,NULL),(3384,196,153,2,NULL),(3385,192,153,2,NULL),(3386,193,153,2,NULL),(3387,194,153,2,NULL),(3388,195,153,2,NULL),(3389,199,153,2,NULL),(3390,200,153,2,NULL),(3391,175,153,2,NULL),(3392,197,153,2,NULL),(3393,184,156,2,NULL),(3394,221,156,2,NULL),(3395,208,156,2,NULL),(3396,173,156,2,NULL),(3397,196,156,2,NULL),(3398,192,156,2,NULL),(3399,193,156,2,NULL),(3400,194,156,2,NULL),(3401,195,156,2,NULL),(3402,199,156,2,NULL),(3403,200,156,2,NULL),(3404,175,156,2,NULL),(3405,197,156,2,NULL),(3406,184,158,2,NULL),(3407,221,158,2,NULL),(3408,208,158,2,NULL),(3409,173,158,2,NULL),(3410,196,158,2,NULL),(3411,192,158,2,NULL),(3412,193,158,2,NULL),(3413,194,158,2,NULL),(3414,195,158,2,NULL),(3415,199,158,2,NULL),(3416,200,158,2,NULL),(3417,175,158,2,NULL),(3418,197,158,2,NULL),(3419,184,159,2,NULL),(3420,221,159,2,NULL),(3421,208,159,2,NULL),(3422,173,159,2,NULL),(3423,196,159,2,NULL),(3424,192,159,2,NULL),(3425,193,159,2,NULL),(3426,194,159,2,NULL),(3427,195,159,2,NULL),(3428,199,159,2,NULL),(3429,200,159,2,NULL),(3430,175,159,2,NULL),(3431,197,159,2,NULL),(3432,184,162,2,NULL),(3433,221,162,2,NULL),(3434,208,162,2,NULL),(3435,173,162,2,NULL),(3436,196,162,2,NULL),(3437,192,162,2,NULL),(3438,193,162,2,NULL),(3439,194,162,2,NULL),(3440,195,162,2,NULL),(3441,199,162,2,NULL),(3442,200,162,2,NULL),(3443,175,162,2,NULL),(3444,197,162,2,NULL),(3445,184,163,2,NULL),(3446,221,163,2,NULL),(3447,208,163,2,NULL),(3448,173,163,2,NULL),(3449,196,163,2,NULL),(3450,192,163,2,NULL),(3451,193,163,2,NULL),(3452,194,163,2,NULL),(3453,195,163,2,NULL),(3454,199,163,2,NULL),(3455,200,163,2,NULL),(3456,175,163,2,NULL),(3457,197,163,2,NULL),(3458,184,164,2,NULL),(3459,221,164,2,NULL),(3460,208,164,2,NULL),(3461,173,164,2,NULL),(3462,196,164,2,NULL),(3463,192,164,2,NULL),(3464,193,164,2,NULL),(3465,194,164,2,NULL),(3466,195,164,2,NULL),(3467,199,164,2,NULL),(3468,200,164,2,NULL),(3469,175,164,2,NULL),(3470,197,164,2,NULL),(3471,184,165,2,NULL),(3472,221,165,2,NULL),(3473,208,165,2,NULL),(3474,173,165,2,NULL),(3475,196,165,2,NULL),(3476,192,165,2,NULL),(3477,193,165,2,NULL),(3478,194,165,2,NULL),(3479,195,165,2,NULL),(3480,199,165,2,NULL),(3481,200,165,2,NULL),(3482,175,165,2,NULL),(3483,197,165,2,NULL),(3484,184,29,2,NULL),(3485,221,29,2,NULL),(3486,208,29,2,NULL),(3487,173,29,2,NULL),(3488,196,29,2,NULL),(3489,192,29,2,NULL),(3490,193,29,2,NULL),(3491,194,29,2,NULL),(3492,195,29,2,NULL),(3493,199,29,2,NULL),(3494,200,29,2,NULL),(3495,175,29,2,NULL),(3496,197,29,2,NULL),(3497,184,129,2,NULL),(3498,221,129,2,NULL),(3499,208,129,2,NULL),(3500,173,129,2,NULL),(3501,196,129,2,NULL),(3502,192,129,2,NULL),(3503,193,129,2,NULL),(3504,194,129,2,NULL),(3505,195,129,2,NULL),(3506,199,129,2,NULL),(3507,200,129,2,NULL),(3508,175,129,2,NULL),(3509,197,129,2,NULL),(3510,184,132,2,NULL),(3511,221,132,2,NULL),(3512,208,132,2,NULL),(3513,173,132,2,NULL),(3514,196,132,2,NULL),(3515,192,132,2,NULL),(3516,193,132,2,NULL),(3517,194,132,2,NULL),(3518,195,132,2,NULL),(3519,199,132,2,NULL),(3520,200,132,2,NULL),(3521,175,132,2,NULL),(3522,197,132,2,NULL),(3523,166,14,2,NULL),(3524,167,14,2,NULL),(3525,171,25,2,NULL),(3526,177,26,2,NULL),(3527,187,14,2,NULL),(3528,188,14,2,NULL),(3529,189,15,2,NULL),(3530,206,21,2,NULL),(3531,212,17,2,NULL),(3532,213,19,2,NULL),(3533,219,18,2,NULL),(3534,220,16,2,NULL),(3535,208,13,2,NULL),(3536,173,13,2,NULL),(3537,184,20,2,NULL),(3538,221,20,2,NULL),(3539,196,13,2,NULL),(3540,192,13,2,NULL),(3541,193,13,2,NULL),(3542,194,13,2,NULL),(3543,195,13,2,NULL),(3544,199,13,2,NULL),(3545,200,13,2,NULL),(3546,184,28,2,NULL),(3547,221,28,2,NULL),(3548,184,30,2,NULL),(3549,221,30,2,NULL),(3550,175,13,2,NULL),(3551,197,13,2,NULL),(3552,184,32,2,NULL),(3553,221,32,2,NULL),(3554,184,35,2,NULL),(3555,221,35,2,NULL),(3556,184,173,2,NULL),(3557,221,173,2,NULL),(3558,184,174,2,NULL),(3559,221,174,2,NULL),(3560,184,175,2,NULL),(3561,221,175,2,NULL),(3562,176,19,2,NULL),(3563,178,17,2,NULL),(3564,190,18,2,NULL),(3565,191,21,2,NULL),(3566,208,20,2,NULL),(3567,208,28,2,NULL),(3568,208,30,2,NULL),(3569,208,32,2,NULL),(3570,208,35,2,NULL),(3571,208,173,2,NULL),(3572,208,174,2,NULL),(3573,208,175,2,NULL),(3574,203,26,2,NULL),(3575,211,25,2,NULL),(3576,173,20,2,NULL),(3577,173,28,2,NULL),(3578,173,30,2,NULL),(3579,173,32,2,NULL),(3580,173,35,2,NULL),(3581,173,173,2,NULL),(3582,173,174,2,NULL),(3583,173,175,2,NULL),(3584,201,17,2,NULL),(3585,205,18,2,NULL),(3586,192,20,2,NULL),(3587,193,20,2,NULL),(3588,194,20,2,NULL),(3589,195,20,2,NULL),(3590,199,20,2,NULL),(3591,200,20,2,NULL),(3592,196,28,2,NULL),(3593,196,30,2,NULL),(3594,175,20,2,NULL),(3595,197,20,2,NULL),(3596,196,32,2,NULL),(3597,196,35,2,NULL),(3598,196,173,2,NULL),(3599,196,174,2,NULL),(3600,196,175,2,NULL),(3601,192,28,2,NULL),(3602,193,28,2,NULL),(3603,194,28,2,NULL),(3604,195,28,2,NULL),(3605,199,28,2,NULL),(3606,200,28,2,NULL),(3607,192,30,2,NULL),(3608,193,30,2,NULL),(3609,194,30,2,NULL),(3610,195,30,2,NULL),(3611,199,30,2,NULL),(3612,200,30,2,NULL),(3613,192,32,2,NULL),(3614,193,32,2,NULL),(3615,194,32,2,NULL),(3616,195,32,2,NULL),(3617,199,32,2,NULL),(3618,200,32,2,NULL),(3619,192,35,2,NULL),(3620,193,35,2,NULL),(3621,194,35,2,NULL),(3622,195,35,2,NULL),(3623,199,35,2,NULL),(3624,200,35,2,NULL),(3625,192,173,2,NULL),(3626,193,173,2,NULL),(3627,194,173,2,NULL),(3628,195,173,2,NULL),(3629,199,173,2,NULL),(3630,200,173,2,NULL),(3631,192,174,2,NULL),(3632,193,174,2,NULL),(3633,194,174,2,NULL),(3634,195,174,2,NULL),(3635,199,174,2,NULL),(3636,200,174,2,NULL),(3637,192,175,2,NULL),(3638,193,175,2,NULL),(3639,194,175,2,NULL),(3640,195,175,2,NULL),(3641,199,175,2,NULL),(3642,200,175,2,NULL),(3643,180,25,2,NULL),(3644,214,26,2,NULL),(3645,175,28,2,NULL),(3646,197,28,2,NULL),(3647,174,30,2,NULL),(3648,198,26,2,NULL),(3649,204,25,2,NULL),(3650,175,32,2,NULL),(3651,197,32,2,NULL),(3652,175,35,2,NULL),(3653,197,35,2,NULL),(3654,175,173,2,NULL),(3655,197,173,2,NULL),(3656,175,174,2,NULL),(3657,197,174,2,NULL),(3658,175,175,2,NULL),(3659,197,175,2,NULL),(3660,179,9,2,NULL),(3661,179,27,2,NULL),(3662,179,161,2,NULL);
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

-- Dump completed on 2015-10-12  3:29:23
