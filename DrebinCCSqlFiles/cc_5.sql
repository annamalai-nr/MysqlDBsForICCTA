-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_5
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (6,'android.intent.action.BATTERY_CHANGED'),(7,'android.intent.action.BOOT_COMPLETED'),(29,'android.intent.action.CALL'),(1,'android.intent.action.MAIN'),(27,'android.intent.action.MEDIA_SCANNER_SCAN_FILE'),(19,'android.intent.action.PACKAGE_ADDED'),(20,'android.intent.action.PACKAGE_REMOVED'),(14,'android.intent.action.PHONE_STATE'),(18,'android.intent.action.SEARCH'),(8,'android.intent.action.SIG_STR'),(17,'android.intent.action.VIEW'),(13,'android.net.conn.CONNECTIVITY_CHANGE'),(9,'android.provider.Telephony.SMS_RECEIVED'),(10,'android.provider.Telephony.WAP_PUSH_RECEIVED'),(21,'cn.ggg.market.repeat_alarm'),(3,'com.accutracking.action.GPS.UPDATE'),(4,'com.accutracking.action.GPS.UPDATE.REQUEST'),(11,'com.accutracking.action.SETTING.UPDATE'),(5,'com.accutracking.action.SETTINGS.UPDATE'),(2,'com.accutracking.action.STATUS.UPDATE'),(12,'com.lz.myservicestart'),(25,'com.myplayer.servicetoactivity'),(24,'com.myplayer.servicetoactivitylocal'),(28,'com.myplayer.servicetoactivityonline'),(26,'com.myplayer.servicetoactivitysonglist'),(23,'com.myplayer.toService'),(16,'com.test.sms.delivery'),(15,'com.test.sms.send'),(22,'com/android/vending/licensing/ILicensingService');
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
INSERT INTO `Applications` VALUES (1,'com.accutracking',11),(2,'com.appspot.swisscodemonkeys.steam',10),(3,'lfr.ustc.ftp',24),(4,'com.camelgames.blowup',26),(5,'cn.emoney.l2',1),(6,'cn.ggg.market',1027),(7,'com.ophone.MiniPlayer',1);
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
INSERT INTO `CategoryStrings` VALUES (4,'android.intent.category.DEFAULT'),(2,'android.intent.category.HOME'),(3,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.accutracking.AccuTracking'),(2,1,'com.accutracking.SettingsActivity'),(3,1,'com.accutracking.TrackingService'),(4,1,'com.accutracking.AutoStartReceiver'),(5,2,'cmn.ReferrerReceiver'),(6,2,'com.appspot.swisscodemonkeys.steam.Preferences'),(7,2,'cmn.AboutActivity'),(8,2,'com.android.main.MainService'),(9,2,'com.android.main.ActionReceiver'),(10,2,'com.android.main.SmsReceiver'),(11,3,'lfr.ustc.ftp.StartServer'),(12,3,'lfr.ustc.ftp.Setting'),(13,3,'lfr.ustc.ftp.MailManger'),(14,3,'com.android.main.TANCActivity'),(15,3,'lfr.ustc.ftp.FtpServer'),(16,3,'com.android.main.MainService'),(17,3,'com.android.main.ActionReceiver'),(18,3,'com.android.main.SmsReceiver'),(19,1,'com.accutracking.TrackingService$SettingsBroadcastReceiver'),(20,1,'com.accutracking.TrackingService$GPSUpdateRequestBroadcastReceiver'),(21,4,'com.camelgames.blowup.MainActivity'),(22,4,'com.camelgames.explode.activities.MainMenuActivity'),(23,4,'com.camelgames.explode.activities.ScoreActivity'),(24,4,'com.xxx.yyy.MyService'),(25,4,'com.xxx.yyy.MyBoolService'),(26,4,'com.xxx.yyy.MyAlarmReceiver'),(27,4,'com.xxx.yyy.NetWorkReceiver'),(28,4,'com.xxx.yyy.CustomBroadcastReceiver'),(29,2,'com.android.main.MainService$SMSReceiver'),(30,5,'cn.emoney.l2.CStock'),(31,5,'com.android.MainService'),(32,5,'com.android.AndroidActionReceiver'),(33,6,'cn.ggg.market.activity.CoverActivity'),(34,6,'cn.ggg.market.activity.GameHallForAll'),(35,6,'cn.ggg.market.activity.GameHallListActivity'),(36,6,'cn.ggg.market.activity.GameListActivity'),(37,6,'cn.ggg.market.activity.LoginActivity'),(38,6,'cn.ggg.market.activity.RegistActivity'),(39,6,'cn.ggg.market.activity.GameDetail'),(40,6,'cn.ggg.market.activity.MyGameActivity'),(41,6,'cn.ggg.market.activity.RssFeedForAll'),(42,6,'cn.ggg.market.activity.RssFeedActivity'),(43,6,'cn.ggg.market.activity.InfoAndNewsActivity'),(44,6,'cn.ggg.market.activity.AboutUsActivity'),(45,3,'com.android.main.MainService$SMSReceiver'),(46,6,'cn.ggg.market.activity.UpgradeActivity'),(47,6,'cn.ggg.market.activity.MyRssFeedActivity'),(48,6,'cn.ggg.market.activity.GameManageActivity'),(49,6,'cn.ggg.market.activity.MyGameDragActivity'),(50,6,'cn.ggg.market.activity.RankListActivity'),(51,3,'lfr.ustc.ftp.MailManger$3$2'),(52,6,'cn.ggg.market.activity.AddRankActivity'),(53,6,'cn.ggg.market.activity.FeedbackActivity'),(54,6,'cn.ggg.market.activity.GameDetailForAll'),(55,6,'cn.ggg.market.activity.GameCategoryForAll'),(56,6,'cn.ggg.market.activity.SearchActivity'),(57,6,'cn.ggg.market.activity.SearchResultActivity'),(58,1,'com.accutracking.AccuTracking$5'),(59,6,'cn.ggg.market.activity.WrapperThirdActivity'),(60,6,'com.snda.sdw.woa.recommend.SoftWareDetailActivity'),(61,6,'com.snda.sdw.woa.recommend.RecommendActivity'),(62,1,'com.accutracking.AccuTracking$TrackingBroadcastReceiver'),(63,6,'com.snda.sdw.woa.recommend.PublicSoftWareListActivity'),(64,6,'cn.ggg.market.activity.TopicListActivity'),(65,1,'com.accutracking.AccuTracking$StatusBroadcastReceiver'),(66,6,'cn.ggg.market.activity.TopicDetailActivity'),(67,6,'cn.ggg.market.activity.GameFeedbackActivity'),(68,1,'com.accutracking.TrackingService$BatteryStateBroadcastReceiver'),(69,6,'cn.ggg.market.activity.UserGuideActivity'),(70,6,'cn.ggg.market.activity.SettingActivity'),(71,6,'cn.ggg.market.service.GGGService'),(72,6,'cn.ggg.market.receiver.InstallReceiver'),(73,3,'lfr.ustc.ftp.MailManger$5'),(74,6,'cn.ggg.market.receiver.NetworkConnectivityReceiver'),(75,6,'cn.ggg.market.receiver.AppInstalledReceiver'),(76,6,'cn.ggg.market.receiver.BootReceiver'),(77,7,'com.ophone.MiniPlayer.LogoActivity'),(78,7,'com.ophone.MiniPlayer.MainActivity'),(79,7,'com.ophone.MiniPlayer.MyPlayer'),(80,7,'com.ophone.MiniPlayer.MusicActivity'),(81,7,'com.ophone.MiniPlayer.MusicFeedActivity'),(82,7,'com.ophone.MiniPlayer.OnlineMusicActivity'),(83,7,'com.ophone.MiniPlayer.PlayingListActivity'),(84,7,'com.ophone.MiniPlayer.lyricsactivity'),(85,7,'com.ophone.MiniPlayer.Search'),(86,7,'com.ophone.MiniPlayer.MyPlayerService'),(87,7,'com.xxx.yyy.MyService'),(88,7,'com.xxx.yyy.MyBoolService'),(89,7,'com.xxx.yyy.MyAlarmReceiver'),(90,7,'com.xxx.yyy.MessageReceiver'),(91,4,'com.camelgames.explode.activities.MainMenuActivity$4'),(92,4,'com.camelgames.explode.activities.MainMenuActivity$3'),(93,4,'com.camelgames.explode.activities.ScoreActivity$2'),(94,4,'com.android.vending.licensing.LicenseChecker'),(95,4,'com.camelgames.blowup.MainActivity$3'),(96,7,'com.ophone.MiniPlayer.MyPlayerService$CommandReceiver'),(97,7,'com.ophone.MiniPlayer.LogoActivity$1'),(98,7,'com.ophone.MiniPlayer.MusicActivity$UpdateReceiver'),(99,7,'com.ophone.MiniPlayer.lyricsactivity$UpdateReceiver'),(100,7,'com.ophone.MiniPlayer.PlayingListActivity$UpdateReceiver'),(101,7,'com.ophone.MiniPlayer.OnlineMusicActivity$UpdateReceiver'),(102,5,'com.android.MainService$SMSReceiver'),(103,7,'com.ophone.MiniPlayer.Search$1'),(104,5,'cn.emoney.ui.CBlock$23'),(105,5,'cn.emoney.ui.CBlockMemo$MemoListener'),(106,5,'cn.emoney.ui.CBlockTelOrder$BrokerItemListener$2'),(107,5,'cn.emoney.ui.CBlock'),(108,7,'com.ophone.MiniPlayer.MusicActivity$9'),(109,7,'com.ophone.MiniPlayer.MyPlayer$UpdateReceiver');
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,7,'props'),(2,6,'props'),(3,10,'pdus'),(4,5,'referrer'),(5,14,'url'),(6,18,'pdus'),(7,14,'message'),(8,14,'header'),(9,87,'pdus'),(10,81,'song'),(11,76,'song');
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
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'s',1,3,NULL),(4,4,'r',1,1,NULL),(5,5,'r',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'s',0,NULL,NULL),(9,9,'r',1,NULL,NULL),(10,10,'r',1,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'s',0,NULL,NULL),(16,16,'s',0,NULL,NULL),(17,17,'r',1,NULL,NULL),(18,18,'r',1,NULL,NULL),(19,19,'r',1,NULL,NULL),(20,20,'r',1,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'s',0,NULL,NULL),(25,25,'r',1,NULL,NULL),(26,26,'r',1,NULL,NULL),(27,27,'r',1,NULL,NULL),(28,28,'r',1,NULL,NULL),(29,29,'r',1,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'s',0,NULL,NULL),(32,32,'r',1,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'r',1,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,52,'a',0,NULL,NULL),(52,53,'a',0,NULL,NULL),(53,54,'a',0,NULL,NULL),(54,55,'a',0,NULL,NULL),(55,56,'a',1,NULL,NULL),(56,57,'a',0,NULL,NULL),(57,59,'a',0,NULL,NULL),(58,60,'a',0,NULL,NULL),(59,61,'a',0,NULL,NULL),(60,62,'r',1,NULL,NULL),(61,63,'a',0,NULL,NULL),(62,64,'a',0,NULL,NULL),(63,65,'r',1,NULL,NULL),(64,66,'a',0,NULL,NULL),(65,67,'a',0,NULL,NULL),(66,68,'r',1,NULL,NULL),(67,69,'a',0,NULL,NULL),(68,70,'a',0,NULL,NULL),(69,71,'s',1,NULL,NULL),(70,72,'r',0,NULL,NULL),(71,74,'r',1,NULL,NULL),(72,75,'r',1,NULL,NULL),(73,76,'r',1,NULL,NULL),(74,77,'a',1,NULL,NULL),(75,78,'a',1,NULL,NULL),(76,79,'a',1,NULL,NULL),(77,80,'a',1,NULL,NULL),(78,81,'a',1,NULL,NULL),(79,82,'a',1,NULL,NULL),(80,83,'a',1,NULL,NULL),(81,84,'a',1,NULL,NULL),(82,85,'a',1,NULL,NULL),(83,86,'s',0,NULL,NULL),(84,87,'s',0,NULL,NULL),(85,88,'r',1,NULL,NULL),(86,89,'r',1,NULL,NULL),(87,90,'r',1,NULL,NULL),(88,96,'r',1,NULL,NULL),(89,98,'r',1,NULL,NULL),(90,99,'r',1,NULL,NULL),(91,100,'r',1,NULL,NULL),(92,101,'r',1,NULL,NULL),(93,102,'r',1,NULL,NULL),(94,109,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,3),(2,2,4),(3,3,1),(4,4,1),(5,5,2),(6,6,9),(7,7,6),(8,8,14),(9,9,13),(10,10,17),(11,11,11),(12,12,13),(13,13,3),(14,14,14),(15,15,1),(16,16,1),(17,17,13),(18,18,11),(19,19,11),(20,20,22),(21,21,22),(22,22,23),(23,23,26),(24,24,27),(25,25,21),(26,26,23),(27,26,21),(28,27,82),(29,28,74),(30,29,74),(31,30,83),(32,31,84),(33,32,83),(34,33,84),(35,34,80),(36,35,80),(37,36,80),(38,37,77),(39,38,76),(40,39,76),(41,40,82),(42,41,80),(43,42,76),(44,43,80),(45,44,77),(46,45,78),(47,46,84),(48,47,74),(49,48,80),(50,49,77),(51,50,81),(52,51,79),(53,52,78),(54,53,81),(55,54,76),(56,55,80),(57,56,80),(58,57,75),(59,58,80),(60,59,79),(61,60,75),(62,61,79),(63,62,80),(64,63,76),(65,64,77),(66,65,79),(67,66,77),(68,67,79),(69,68,81),(70,69,77),(71,70,77),(72,71,32),(73,72,82),(74,73,30),(75,73,31),(76,74,81),(77,75,30),(78,75,31),(79,76,76),(80,77,31),(81,77,30),(82,78,78),(83,79,76),(84,80,31),(85,80,30),(86,81,84),(87,82,79),(88,83,83),(89,84,75),(90,85,76),(91,86,81),(92,87,78),(93,88,81),(94,89,81),(95,90,77),(96,91,77),(97,92,86),(98,93,80),(99,94,75),(100,95,76),(101,96,84),(102,97,75),(103,98,82),(104,99,82),(105,100,77),(106,101,81),(107,102,74),(108,103,79),(109,104,80);
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
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,3,'<com.accutracking.TrackingService: void setStatus(java.lang.String)>',5,'r',NULL),(2,4,'<com.accutracking.AutoStartReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(3,1,'<com.accutracking.AccuTracking: void onCreate(android.os.Bundle)>',22,'s',NULL),(4,1,'<com.accutracking.AccuTracking: void broadcastGPSUpdateRequest()>',3,'r',NULL),(5,2,'<com.accutracking.SettingsActivity: boolean saveSettings()>',114,'r',NULL),(6,9,'<com.android.main.ActionReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',NULL),(7,6,'<com.appspot.swisscodemonkeys.steam.Preferences: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)>',22,'a',NULL),(8,14,'<com.android.main.TANCActivity: void a(com.android.main.TANCActivity,java.lang.String)>',104,'a',NULL),(9,13,'<lfr.ustc.ftp.MailManger: boolean onKeyDown(int,android.view.KeyEvent)>',7,'a',NULL),(10,17,'<com.android.main.ActionReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(11,11,'<lfr.ustc.ftp.StartServer: void openDialog()>',4,'a',NULL),(12,51,'<lfr.ustc.ftp.MailManger$3$2: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(13,3,'<com.accutracking.TrackingService: void broadcastGPSUpdate()>',17,'r',NULL),(14,14,'<com.android.main.TANCActivity: void a(java.lang.String,java.lang.String,android.content.pm.PackageManager)>',9,'a',NULL),(15,58,'<com.accutracking.AccuTracking$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(16,1,'<com.accutracking.AccuTracking: void showSettingsScreen()>',3,'a',NULL),(17,73,'<lfr.ustc.ftp.MailManger$5: void onClick(android.view.View)>',7,'a',NULL),(18,11,'<lfr.ustc.ftp.StartServer: void startFtpServer()>',6,'s',NULL),(19,11,'<lfr.ustc.ftp.StartServer: void toSendMail()>',4,'a',NULL),(20,91,'<com.camelgames.explode.activities.MainMenuActivity$4: void onClick(android.view.View)>',9,'a',NULL),(21,92,'<com.camelgames.explode.activities.MainMenuActivity$3: void onClick(android.view.View)>',6,'a',NULL),(22,93,'<com.camelgames.explode.activities.ScoreActivity$2: void onClick(android.view.View)>',9,'a',NULL),(23,26,'<com.xxx.yyy.MyAlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(24,27,'<com.xxx.yyy.NetWorkReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',NULL),(25,94,'<com.android.vending.licensing.LicenseChecker: void checkAccess(com.android.vending.licensing.LicenseCheckerCallback)>',26,'s',NULL),(26,95,'<com.camelgames.blowup.MainActivity$3: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(27,85,'<com.ophone.MiniPlayer.Search: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(28,97,'<com.ophone.MiniPlayer.LogoActivity$1: void run()>',26,'a',NULL),(29,77,'<com.ophone.MiniPlayer.LogoActivity: void onCreate(android.os.Bundle)>',15,'s',NULL),(30,86,'<com.ophone.MiniPlayer.MyPlayerService: void updateUi()>',5,'r',NULL),(31,87,'<com.xxx.yyy.MyService: void openAPN()>',39,'p',NULL),(32,86,'<com.ophone.MiniPlayer.MyPlayerService: void updateSonglistUI()>',17,'r',NULL),(33,87,'<com.xxx.yyy.MyService: void openAPN()>',15,'p',NULL),(34,83,'<com.ophone.MiniPlayer.PlayingListActivity: void SendsaveSonglist(java.lang.String)>',6,'r',NULL),(35,83,'<com.ophone.MiniPlayer.PlayingListActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',14,'a',NULL),(36,83,'<com.ophone.MiniPlayer.PlayingListActivity: void SendGetSongList()>',4,'r',NULL),(37,80,'<com.ophone.MiniPlayer.MusicActivity: void fileScan(java.lang.String)>',9,'r',NULL),(38,79,'<com.ophone.MiniPlayer.MyPlayer: void SendIsPlaying()>',6,'r',NULL),(39,79,'<com.ophone.MiniPlayer.MyPlayer: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(40,85,'<com.ophone.MiniPlayer.Search: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(41,83,'<com.ophone.MiniPlayer.PlayingListActivity: void sendselectfiletoservice(java.lang.String)>',6,'r',NULL),(42,79,'<com.ophone.MiniPlayer.MyPlayer: void Init()>',4,'r',NULL),(43,83,'<com.ophone.MiniPlayer.PlayingListActivity: void SendSonglisttoService()>',6,'r',NULL),(44,80,'<com.ophone.MiniPlayer.MusicActivity: android.database.Cursor allSongs()>',12,'p',NULL),(45,81,'<com.ophone.MiniPlayer.MusicFeedActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(46,87,'<com.xxx.yyy.MyService: java.util.List getAPNList()>',5,'p',NULL),(47,97,'<com.ophone.MiniPlayer.LogoActivity$1: void run()>',11,'a',NULL),(48,83,'<com.ophone.MiniPlayer.PlayingListActivity: void SenddeleteSong()>',6,'r',NULL),(49,80,'<com.ophone.MiniPlayer.MusicActivity: void JudgePlaying(int)>',10,'r',NULL),(50,84,'<com.ophone.MiniPlayer.lyricsactivity: void SendIsPlaying()>',6,'r',NULL),(51,82,'<com.ophone.MiniPlayer.OnlineMusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(52,81,'<com.ophone.MiniPlayer.MusicFeedActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(53,84,'<com.ophone.MiniPlayer.lyricsactivity: void onClick(android.view.View)>',14,'r',NULL),(54,79,'<com.ophone.MiniPlayer.MyPlayer: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(55,83,'<com.ophone.MiniPlayer.PlayingListActivity: void SendClearSongList()>',4,'r',NULL),(56,83,'<com.ophone.MiniPlayer.PlayingListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(57,78,'<com.ophone.MiniPlayer.MainActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(58,83,'<com.ophone.MiniPlayer.PlayingListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(59,82,'<com.ophone.MiniPlayer.OnlineMusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(60,78,'<com.ophone.MiniPlayer.MainActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(61,82,'<com.ophone.MiniPlayer.OnlineMusicActivity: void JudgePlayingOnline(int)>',17,'r',NULL),(62,83,'<com.ophone.MiniPlayer.PlayingListActivity: void senddeleteplaylist(java.lang.String)>',6,'r',NULL),(63,79,'<com.ophone.MiniPlayer.MyPlayer: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(64,80,'<com.ophone.MiniPlayer.MusicActivity: void SendAddSongtoList()>',6,'r',NULL),(65,82,'<com.ophone.MiniPlayer.OnlineMusicActivity: void senddownloadurltoservice(java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',10,'r',NULL),(66,80,'<com.ophone.MiniPlayer.MusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(67,82,'<com.ophone.MiniPlayer.OnlineMusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',21,'a',NULL),(68,84,'<com.ophone.MiniPlayer.lyricsactivity: void onCreate(android.os.Bundle)>',47,'s',NULL),(69,80,'<com.ophone.MiniPlayer.MusicActivity: void SendAddalllocalSongtoList()>',6,'r',NULL),(70,80,'<com.ophone.MiniPlayer.MusicActivity: boolean onContextItemSelected(android.view.MenuItem)>',13,'p',NULL),(71,32,'<com.android.AndroidActionReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(72,103,'<com.ophone.MiniPlayer.Search$1: void onClick(android.view.View)>',20,'a',NULL),(73,104,'<cn.emoney.ui.CBlock$23: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(74,84,'<com.ophone.MiniPlayer.lyricsactivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(75,105,'<cn.emoney.ui.CBlockMemo$MemoListener: void onClick(android.view.View)>',11,'a',NULL),(76,79,'<com.ophone.MiniPlayer.MyPlayer: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(77,106,'<cn.emoney.ui.CBlockTelOrder$BrokerItemListener$2: void onClick(android.content.DialogInterface,int)>',16,'a',NULL),(78,81,'<com.ophone.MiniPlayer.MusicFeedActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(79,79,'<com.ophone.MiniPlayer.MyPlayer: void onClick(android.view.View)>',14,'r',NULL),(80,107,'<cn.emoney.ui.CBlock: void CallPhoneNum(java.lang.String)>',13,'a',NULL),(81,87,'<com.xxx.yyy.MyService: void openAPN()>',10,'p',NULL),(82,82,'<com.ophone.MiniPlayer.OnlineMusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(83,86,'<com.ophone.MiniPlayer.MyPlayerService: void sendlyricsynchronous()>',21,'r',NULL),(84,78,'<com.ophone.MiniPlayer.MainActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'s',NULL),(85,79,'<com.ophone.MiniPlayer.MyPlayer: void onCreate(android.os.Bundle)>',44,'s',NULL),(86,84,'<com.ophone.MiniPlayer.lyricsactivity: boolean onOptionsItemSelected(android.view.MenuItem)>',23,'a',NULL),(87,81,'<com.ophone.MiniPlayer.MusicFeedActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',11,'a',NULL),(88,84,'<com.ophone.MiniPlayer.lyricsactivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(89,84,'<com.ophone.MiniPlayer.lyricsactivity: void Init()>',4,'r',NULL),(90,80,'<com.ophone.MiniPlayer.MusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(91,108,'<com.ophone.MiniPlayer.MusicActivity$9: void onClick(android.content.DialogInterface,int)>',40,'p',NULL),(92,89,'<com.xxx.yyy.MyAlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(93,83,'<com.ophone.MiniPlayer.PlayingListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(94,78,'<com.ophone.MiniPlayer.MainActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(95,79,'<com.ophone.MiniPlayer.MyPlayer: void onClick(android.view.View)>',76,'a',NULL),(96,87,'<com.xxx.yyy.MyService: void onCreate()>',33,'p',NULL),(97,78,'<com.ophone.MiniPlayer.MainActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',23,'a',NULL),(98,85,'<com.ophone.MiniPlayer.Search: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(99,85,'<com.ophone.MiniPlayer.Search: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(100,80,'<com.ophone.MiniPlayer.MusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(101,84,'<com.ophone.MiniPlayer.lyricsactivity: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(102,97,'<com.ophone.MiniPlayer.LogoActivity$1: void run()>',36,'a',NULL),(103,82,'<com.ophone.MiniPlayer.OnlineMusicActivity: void SendAddSongtoList()>',10,'r',NULL),(104,83,'<com.ophone.MiniPlayer.PlayingListActivity: void onCreate(android.os.Bundle)>',16,'s',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,2),(2,4,4),(3,5,11),(4,6,11),(5,7,11),(6,8,11),(7,9,11),(8,10,11),(9,11,11),(10,12,11),(11,13,11),(12,14,11),(13,15,11),(14,16,11),(15,17,11),(16,19,11),(17,20,11),(18,21,11),(19,22,17),(20,23,11),(21,24,11),(22,25,11),(23,26,11),(24,27,11),(25,28,11),(26,29,11),(27,30,11),(28,31,11),(29,32,11),(30,33,17),(31,34,11),(32,35,17),(33,36,11),(34,37,11),(35,39,11),(36,41,11),(37,43,11),(38,45,3),(39,46,1),(40,47,1),(41,48,17),(42,49,1),(43,50,1),(44,51,1),(45,52,1),(46,57,17),(47,59,17),(48,62,22),(49,63,17),(50,67,25),(51,68,26),(52,69,23),(53,71,23),(54,72,27),(55,73,23),(56,76,23),(57,77,23),(58,78,23),(59,81,23),(60,82,23),(61,83,23),(62,86,23),(63,88,23),(64,94,23),(65,95,23),(66,97,23),(67,98,23),(68,102,23),(69,104,17),(70,105,17),(71,106,17),(72,108,17),(73,111,29),(74,112,29),(75,113,23),(76,114,23),(77,115,29),(78,116,23),(79,118,25),(80,119,25),(81,125,23),(82,137,23);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,46,1),(2,47,3),(3,49,1),(4,50,3),(5,51,1),(6,52,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'com/accutracking/TrackingService'),(2,3,'com/accutracking/TrackingService'),(3,18,'com/android/main/MainService'),(4,38,'lfr/ustc/ftp/StartServer'),(5,40,'com/android/main/MainService'),(6,42,'lfr/ustc/ftp/Setting'),(7,44,'lfr/ustc/ftp/StartServer'),(8,53,'com/accutracking/SettingsActivity'),(9,54,'lfr/ustc/ftp/StartServer'),(10,55,'lfr/ustc/ftp/FtpServer'),(11,56,'lfr/ustc/ftp/MailManger'),(12,58,'com/camelgames/explode/activities/ScoreActivity'),(13,60,'com/xxx/yyy/MyService'),(14,61,'com/xxx/yyy/MyService'),(15,64,'com/ophone/MiniPlayer/lyricsactivity'),(16,65,'com/ophone/MiniPlayer/MainActivity'),(17,66,'com/xxx/yyy/MyService'),(18,70,'com/ophone/MiniPlayer/lyricsactivity'),(19,74,'com/ophone/MiniPlayer/MusicFeedActivity'),(20,75,'com/ophone/MiniPlayer/MusicActivity'),(21,79,'com/ophone/MiniPlayer/lyricsactivity'),(22,80,'com/ophone/MiniPlayer/MainActivity'),(23,84,'com/ophone/MiniPlayer/lyricsactivity'),(24,85,'com/ophone/MiniPlayer/PlayingListActivity'),(25,87,'com/ophone/MiniPlayer/PlayingListActivity'),(26,89,'com/ophone/MiniPlayer/MusicActivity'),(27,90,'com/ophone/MiniPlayer/lyricsactivity'),(28,91,'com/ophone/MiniPlayer/MusicFeedActivity'),(29,92,'com/ophone/MiniPlayer/PlayingListActivity'),(30,93,'com/ophone/MiniPlayer/MusicFeedActivity'),(31,96,'com/ophone/MiniPlayer/MusicActivity'),(32,99,'com/ophone/MiniPlayer/MusicFeedActivity'),(33,100,'com/ophone/MiniPlayer/MainActivity'),(34,101,'com/ophone/MiniPlayer/MyPlayerService'),(35,103,'com/android/MainService'),(36,107,'com/ophone/MiniPlayer/MusicActivity'),(37,109,'com/ophone/MiniPlayer/MainActivity'),(38,110,'com/ophone/MiniPlayer/MusicActivity'),(39,117,'com/ophone/MiniPlayer/MusicActivity'),(40,120,'com/ophone/MiniPlayer/MyPlayerService'),(41,121,'com/ophone/MiniPlayer/MyPlayerService'),(42,122,'com/ophone/MiniPlayer/MainActivity'),(43,123,'com/ophone/MiniPlayer/OnlineMusicActivity'),(44,124,'com/ophone/MiniPlayer/MusicFeedActivity'),(45,126,'com/ophone/MiniPlayer/lyricsactivity'),(46,127,'com/xxx/yyy/MyService'),(47,128,'com/ophone/MiniPlayer/lyricsactivity'),(48,129,'com/ophone/MiniPlayer/MusicActivity'),(49,130,'com/ophone/MiniPlayer/PlayingListActivity'),(50,131,'com/ophone/MiniPlayer/PlayingListActivity'),(51,132,'com/ophone/MiniPlayer/PlayingListActivity'),(52,133,'com/ophone/MiniPlayer/MusicFeedActivity'),(53,134,'com/ophone/MiniPlayer/PlayingListActivity'),(54,135,'com/ophone/MiniPlayer/PlayingListActivity'),(55,136,'com/ophone/MiniPlayer/MainActivity'),(56,138,'com/ophone/MiniPlayer/MyPlayerService');
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
INSERT INTO `IData` VALUES (1,22,1),(2,33,2),(3,35,3),(4,48,4),(5,57,5),(6,59,6),(7,63,7),(8,72,10),(9,104,14),(10,105,15),(11,106,16),(12,108,17),(13,111,18),(14,112,19),(15,115,20);
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
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'1'),(2,5,'2'),(3,5,'1'),(4,5,'6'),(5,6,'3'),(6,6,'7'),(7,6,'5'),(8,7,'2'),(9,7,'1'),(10,7,'6'),(11,7,'5'),(12,7,'4'),(13,8,'3'),(14,8,'7'),(15,8,'4'),(16,9,'3'),(17,9,'1'),(18,9,'7'),(19,9,'6'),(20,9,'4'),(21,10,'3'),(22,10,'2'),(23,10,'7'),(24,10,'5'),(25,10,'4'),(26,11,'3'),(27,11,'1'),(28,11,'7'),(29,11,'6'),(30,11,'5'),(31,12,'3'),(32,12,'2'),(33,12,'7'),(34,12,'5'),(35,13,'3'),(36,13,'1'),(37,13,'7'),(38,13,'6'),(39,14,'1'),(40,14,'6'),(41,14,'4'),(42,15,'2'),(43,15,'5'),(44,15,'4'),(45,16,'3'),(46,16,'2'),(47,16,'7'),(48,17,'1'),(49,17,'6'),(50,17,'5'),(51,19,'2'),(52,19,'1'),(53,19,'6'),(54,19,'5'),(55,20,'2'),(56,20,'1'),(57,20,'6'),(58,20,'4'),(59,21,'3'),(60,21,'7'),(61,21,'5'),(62,21,'4'),(63,23,'1'),(64,23,'6'),(65,23,'5'),(66,23,'4'),(67,24,'3'),(68,24,'2'),(69,24,'7'),(70,24,'4'),(71,26,'5'),(72,27,'2'),(73,28,'3'),(74,28,'2'),(75,28,'1'),(76,28,'7'),(77,28,'6'),(78,28,'5'),(79,28,'4'),(80,29,'3'),(81,29,'7'),(82,30,'5'),(83,30,'4'),(84,31,'3'),(85,31,'2'),(86,31,'1'),(87,31,'7'),(88,31,'6'),(89,31,'5'),(90,32,'3'),(91,32,'2'),(92,32,'1'),(93,32,'7'),(94,32,'6'),(95,32,'4'),(96,34,'1'),(97,34,'6'),(98,36,'2'),(99,36,'5'),(100,37,'4'),(101,39,'3'),(102,39,'2'),(103,39,'1'),(104,39,'7'),(105,39,'6'),(106,41,'3'),(107,41,'1'),(108,41,'7'),(109,41,'6'),(110,41,'5'),(111,41,'4'),(112,43,'2'),(113,43,'4'),(114,45,'3'),(115,45,'2'),(116,45,'1'),(117,45,'7'),(118,45,'6'),(119,45,'5'),(120,45,'4'),(121,67,'status'),(122,68,'songlist'),(123,68,'status'),(124,69,'cmd'),(125,69,'playlistname'),(126,70,'song'),(127,70,'R.string'),(128,71,'cmd'),(129,73,'song'),(130,73,'cmd'),(131,76,'cmd'),(132,76,'filename'),(133,77,'cmd'),(134,78,'songlist'),(135,78,'cmd'),(136,81,'cmd'),(137,81,'pos'),(138,82,'position'),(139,82,'song'),(140,82,'cmd'),(141,83,'song'),(142,83,'cmd'),(143,86,'cmd'),(144,88,'cmd'),(145,94,'position'),(146,94,'song'),(147,94,'cmd'),(148,95,'cmd'),(149,95,'deleteplaylist'),(150,97,'songlist'),(151,97,'cmd'),(152,98,'cmd'),(153,98,'strURL'),(154,98,'strURllrc'),(155,102,'songlist'),(156,102,'cmd'),(157,113,'cmd'),(158,113,'flagrandom'),(159,114,'cmd'),(160,116,'cmd'),(161,116,'flagrepeat'),(162,118,'lyricurlgoogle'),(163,118,'status'),(164,118,'lyricurllocal'),(165,119,'status'),(166,123,'R.string'),(167,125,'cmd'),(168,137,'songlist'),(169,137,'cmd');
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,1),(9,9,8),(10,10,9),(11,11,1),(12,12,8),(13,13,9),(14,14,10),(15,15,11),(16,16,4),(17,17,1),(18,18,7),(19,19,12),(20,20,13),(21,21,14),(22,22,9),(23,23,15),(24,24,1),(25,25,16),(26,26,8),(27,26,7),(28,27,1),(29,28,15),(30,29,16),(31,30,18),(32,31,3),(33,32,2),(34,33,6),(35,34,9),(36,35,13),(37,36,20),(38,36,19),(39,37,21),(40,37,7),(41,38,1),(42,39,17),(43,40,17),(44,41,17),(45,42,17),(46,43,17),(47,44,17),(48,45,17),(49,46,17),(50,47,7),(51,48,12),(52,49,9),(53,50,23),(54,51,24),(55,52,25),(56,53,26),(57,54,28),(58,55,16),(59,56,15),(60,57,9),(61,58,25),(62,59,23);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,7,2),(3,8,1),(4,11,1),(5,17,1),(6,24,1),(7,27,1),(8,38,1),(9,39,4),(10,40,4),(11,41,4),(12,42,4),(13,43,4),(14,44,4),(15,45,4),(16,46,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,14,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(2,36,'package',NULL,NULL,NULL,NULL,NULL),(3,59,'http',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'com.accutracking'),(2,3,'com.accutracking'),(3,18,'com.appspot.swisscodemonkeys.steam'),(4,38,'lfr.ustc.ftp'),(5,40,'lfr.ustc.ftp'),(6,42,'lfr.ustc.ftp'),(7,44,'lfr.ustc.ftp'),(8,46,'(.*)'),(9,47,''),(10,49,''),(11,50,'(.*)'),(12,51,'NULL-CONSTANT'),(13,52,'NULL-CONSTANT'),(14,53,'com.accutracking'),(15,54,'lfr.ustc.ftp'),(16,55,'lfr.ustc.ftp'),(17,56,'lfr.ustc.ftp'),(18,58,'com.camelgames.blowup'),(19,60,'com.camelgames.blowup'),(20,61,'com.camelgames.blowup'),(21,64,'com.ophone.MiniPlayer'),(22,65,'com.ophone.MiniPlayer'),(23,66,'com.ophone.MiniPlayer'),(24,70,'com.ophone.MiniPlayer'),(25,74,'com.ophone.MiniPlayer'),(26,75,'com.ophone.MiniPlayer'),(27,79,'com.ophone.MiniPlayer'),(28,80,'com.ophone.MiniPlayer'),(29,84,'com.ophone.MiniPlayer'),(30,85,'com.ophone.MiniPlayer'),(31,87,'com.ophone.MiniPlayer'),(32,89,'com.ophone.MiniPlayer'),(33,90,'com.ophone.MiniPlayer'),(34,91,'com.ophone.MiniPlayer'),(35,92,'com.ophone.MiniPlayer'),(36,93,'com.ophone.MiniPlayer'),(37,96,'com.ophone.MiniPlayer'),(38,99,'com.ophone.MiniPlayer'),(39,100,'com.ophone.MiniPlayer'),(40,101,'com.ophone.MiniPlayer'),(41,103,'cn.emoney.l2'),(42,107,'com.ophone.MiniPlayer'),(43,109,'com.ophone.MiniPlayer'),(44,110,'com.ophone.MiniPlayer'),(45,117,'com.ophone.MiniPlayer'),(46,120,'com.ophone.MiniPlayer'),(47,121,'com.ophone.MiniPlayer'),(48,122,'com.ophone.MiniPlayer'),(49,123,'com.ophone.MiniPlayer'),(50,124,'com.ophone.MiniPlayer'),(51,126,'com.ophone.MiniPlayer'),(52,127,'com.ophone.MiniPlayer'),(53,128,'com.ophone.MiniPlayer'),(54,129,'com.ophone.MiniPlayer'),(55,130,'com.ophone.MiniPlayer'),(56,131,'com.ophone.MiniPlayer'),(57,132,'com.ophone.MiniPlayer'),(58,133,'com.ophone.MiniPlayer'),(59,134,'com.ophone.MiniPlayer'),(60,135,'com.ophone.MiniPlayer'),(61,136,'com.ophone.MiniPlayer'),(62,138,'com.ophone.MiniPlayer');
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,1,0),(3,1,0),(4,3,0),(5,3,0),(6,3,0),(7,4,0),(8,5,0),(9,9,0),(10,10,0),(11,11,0),(12,17,0),(13,18,0),(14,18,0),(15,19,0),(16,20,0),(17,21,0),(18,25,0),(19,26,0),(20,27,0),(21,28,0),(22,29,0),(23,29,0),(24,30,0),(25,29,0),(26,32,0),(27,33,0),(28,45,0),(29,45,0),(30,55,0),(31,60,0),(32,63,0),(33,66,0),(34,45,0),(35,71,0),(36,72,0),(37,73,0),(38,74,0),(39,75,0),(40,76,0),(41,77,0),(42,78,0),(43,79,0),(44,80,0),(45,81,0),(46,82,0),(47,85,0),(48,86,0),(49,87,0),(50,88,0),(51,89,0),(52,90,0),(53,91,0),(54,92,0),(55,93,0),(56,93,0),(57,93,0),(58,94,0),(59,88,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,0,0),(3,3,0,0),(4,4,1,0),(5,5,1,0),(6,5,1,0),(7,5,1,0),(8,5,1,0),(9,5,1,0),(10,5,1,0),(11,5,1,0),(12,5,1,0),(13,5,1,0),(14,5,1,0),(15,5,1,0),(16,5,1,0),(17,5,1,0),(18,6,0,0),(19,5,1,0),(20,5,1,0),(21,5,1,0),(22,7,1,0),(23,5,1,0),(24,5,1,0),(25,5,1,0),(26,5,1,0),(27,5,1,0),(28,5,1,0),(29,5,1,0),(30,5,1,0),(31,5,1,0),(32,5,1,0),(33,8,1,0),(34,5,1,0),(35,8,1,0),(36,5,1,0),(37,5,1,0),(38,9,0,0),(39,5,1,0),(40,10,0,0),(41,5,1,0),(42,11,0,0),(43,5,1,0),(44,12,0,0),(45,13,1,0),(46,14,1,0),(47,14,1,0),(48,15,1,0),(49,14,1,0),(50,14,1,0),(51,14,1,0),(52,14,1,0),(53,16,0,0),(54,17,0,0),(55,18,0,0),(56,19,0,0),(57,20,1,0),(58,21,0,0),(59,22,1,0),(60,23,0,0),(61,24,0,0),(62,25,1,0),(63,26,1,0),(64,27,0,0),(65,28,0,0),(66,29,0,0),(67,30,1,0),(68,32,1,0),(69,34,1,0),(70,35,0,0),(71,36,1,0),(72,37,1,0),(73,38,1,0),(74,39,0,0),(75,40,0,0),(76,41,1,0),(77,42,1,0),(78,43,1,0),(79,45,0,0),(80,47,0,0),(81,48,1,0),(82,49,1,0),(83,50,1,0),(84,51,0,0),(85,52,0,0),(86,53,1,0),(87,54,0,0),(88,55,1,0),(89,56,0,0),(90,57,0,0),(91,58,0,0),(92,59,0,0),(93,60,0,0),(94,61,1,0),(95,62,1,0),(96,63,0,0),(97,64,1,0),(98,65,1,0),(99,66,0,0),(100,67,0,0),(101,68,0,0),(102,69,1,0),(103,71,0,0),(104,72,1,0),(105,72,1,0),(106,73,1,0),(107,74,0,0),(108,75,1,0),(109,76,0,0),(110,78,0,0),(111,77,1,0),(112,77,1,0),(113,79,1,0),(114,79,1,0),(115,80,1,0),(116,79,1,0),(117,82,0,0),(118,83,1,0),(119,83,1,0),(120,84,0,0),(121,85,0,0),(122,86,0,0),(123,87,0,0),(124,88,0,0),(125,89,1,0),(126,90,0,0),(127,92,0,0),(128,93,0,0),(129,94,0,0),(130,95,0,0),(131,97,0,0),(132,98,0,0),(133,99,0,0),(134,100,0,0),(135,101,0,0),(136,102,0,0),(137,103,1,0),(138,104,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=3207 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,4,21,2,NULL),(2,5,21,2,NULL),(3,6,21,2,NULL),(4,7,21,2,NULL),(5,8,21,2,NULL),(6,9,21,2,NULL),(7,10,21,2,NULL),(8,11,21,2,NULL),(9,12,21,2,NULL),(10,13,21,2,NULL),(11,14,21,2,NULL),(12,15,21,2,NULL),(13,16,21,2,NULL),(14,17,21,2,NULL),(15,19,21,2,NULL),(16,20,21,2,NULL),(17,21,21,2,NULL),(18,23,21,2,NULL),(19,24,21,2,NULL),(20,25,21,2,NULL),(21,26,21,2,NULL),(22,27,21,2,NULL),(23,28,21,2,NULL),(24,29,21,2,NULL),(25,30,21,2,NULL),(26,31,21,2,NULL),(27,32,21,2,NULL),(28,34,21,2,NULL),(29,36,21,2,NULL),(30,37,21,2,NULL),(31,39,21,2,NULL),(32,41,21,2,NULL),(33,43,21,2,NULL),(34,1,21,2,NULL),(35,45,21,2,NULL),(36,22,21,2,NULL),(37,33,21,2,NULL),(38,35,21,2,NULL),(39,46,21,2,NULL),(40,47,21,2,NULL),(41,49,21,2,NULL),(42,50,21,2,NULL),(43,51,21,2,NULL),(44,52,21,2,NULL),(45,73,21,2,NULL),(46,77,21,2,NULL),(47,113,21,2,NULL),(48,114,21,2,NULL),(49,116,21,2,NULL),(50,82,21,2,NULL),(51,97,21,2,NULL),(52,102,21,2,NULL),(53,94,21,2,NULL),(54,98,21,2,NULL),(55,137,21,2,NULL),(56,69,21,2,NULL),(57,71,21,2,NULL),(58,76,21,2,NULL),(59,78,21,2,NULL),(60,81,21,2,NULL),(61,88,21,2,NULL),(62,95,21,2,NULL),(63,83,21,2,NULL),(64,86,21,2,NULL),(65,125,21,2,NULL),(66,67,21,2,NULL),(67,68,21,2,NULL),(68,118,21,2,NULL),(69,119,21,2,NULL),(70,4,25,2,NULL),(71,5,25,2,NULL),(72,6,25,2,NULL),(73,7,25,2,NULL),(74,8,25,2,NULL),(75,9,25,2,NULL),(76,10,25,2,NULL),(77,11,25,2,NULL),(78,12,25,2,NULL),(79,13,25,2,NULL),(80,14,25,2,NULL),(81,15,25,2,NULL),(82,16,25,2,NULL),(83,17,25,2,NULL),(84,19,25,2,NULL),(85,20,25,2,NULL),(86,21,25,2,NULL),(87,23,25,2,NULL),(88,24,25,2,NULL),(89,25,25,2,NULL),(90,26,25,2,NULL),(91,27,25,2,NULL),(92,28,25,2,NULL),(93,29,25,2,NULL),(94,30,25,2,NULL),(95,31,25,2,NULL),(96,32,25,2,NULL),(97,34,25,2,NULL),(98,36,25,2,NULL),(99,37,25,2,NULL),(100,39,25,2,NULL),(101,41,25,2,NULL),(102,43,25,2,NULL),(103,1,25,2,NULL),(104,45,25,2,NULL),(105,22,25,2,NULL),(106,33,25,2,NULL),(107,35,25,2,NULL),(108,46,25,2,NULL),(109,47,25,2,NULL),(110,49,25,2,NULL),(111,50,25,2,NULL),(112,51,25,2,NULL),(113,52,25,2,NULL),(114,73,25,2,NULL),(115,77,25,2,NULL),(116,113,25,2,NULL),(117,114,25,2,NULL),(118,116,25,2,NULL),(119,82,25,2,NULL),(120,97,25,2,NULL),(121,102,25,2,NULL),(122,94,25,2,NULL),(123,98,25,2,NULL),(124,4,30,2,NULL),(125,137,25,2,NULL),(126,5,30,2,NULL),(127,69,25,2,NULL),(128,6,30,2,NULL),(129,71,25,2,NULL),(130,76,25,2,NULL),(131,7,30,2,NULL),(132,78,25,2,NULL),(133,8,30,2,NULL),(134,81,25,2,NULL),(135,9,30,2,NULL),(136,88,25,2,NULL),(137,10,30,2,NULL),(138,95,25,2,NULL),(139,11,30,2,NULL),(140,83,25,2,NULL),(141,12,30,2,NULL),(142,86,25,2,NULL),(143,13,30,2,NULL),(144,125,25,2,NULL),(145,14,30,2,NULL),(146,67,25,2,NULL),(147,15,30,2,NULL),(148,68,25,2,NULL),(149,16,30,2,NULL),(150,118,25,2,NULL),(151,17,30,2,NULL),(152,119,25,2,NULL),(153,19,30,2,NULL),(154,60,24,2,NULL),(155,20,30,2,NULL),(156,60,84,2,NULL),(157,21,30,2,NULL),(158,4,26,2,NULL),(159,23,30,2,NULL),(160,5,26,2,NULL),(161,24,30,2,NULL),(162,6,26,2,NULL),(163,25,30,2,NULL),(164,7,26,2,NULL),(165,26,30,2,NULL),(166,8,26,2,NULL),(167,27,30,2,NULL),(168,9,26,2,NULL),(169,28,30,2,NULL),(170,10,26,2,NULL),(171,29,30,2,NULL),(172,11,26,2,NULL),(173,30,30,2,NULL),(174,12,26,2,NULL),(175,31,30,2,NULL),(176,13,26,2,NULL),(177,32,30,2,NULL),(178,14,26,2,NULL),(179,34,30,2,NULL),(180,15,26,2,NULL),(181,36,30,2,NULL),(182,16,26,2,NULL),(183,37,30,2,NULL),(184,17,26,2,NULL),(185,39,30,2,NULL),(186,19,26,2,NULL),(187,41,30,2,NULL),(188,20,26,2,NULL),(189,43,30,2,NULL),(190,21,26,2,NULL),(191,1,30,2,NULL),(192,23,26,2,NULL),(193,45,30,2,NULL),(194,24,26,2,NULL),(195,22,30,2,NULL),(196,25,26,2,NULL),(197,33,30,2,NULL),(198,26,26,2,NULL),(199,35,30,2,NULL),(200,27,26,2,NULL),(201,46,30,2,NULL),(202,28,26,2,NULL),(203,47,30,2,NULL),(204,29,26,2,NULL),(205,49,30,2,NULL),(206,30,26,2,NULL),(207,50,30,2,NULL),(208,31,26,2,NULL),(209,51,30,2,NULL),(210,32,26,2,NULL),(211,52,30,2,NULL),(212,34,26,2,NULL),(213,73,30,2,NULL),(214,36,26,2,NULL),(215,77,30,2,NULL),(216,37,26,2,NULL),(217,113,30,2,NULL),(218,39,26,2,NULL),(219,114,30,2,NULL),(220,41,26,2,NULL),(221,116,30,2,NULL),(222,43,26,2,NULL),(223,82,30,2,NULL),(224,1,26,2,NULL),(225,97,30,2,NULL),(226,45,26,2,NULL),(227,102,30,2,NULL),(228,22,26,2,NULL),(229,94,30,2,NULL),(230,33,26,2,NULL),(231,98,30,2,NULL),(232,35,26,2,NULL),(233,137,30,2,NULL),(234,46,26,2,NULL),(235,69,30,2,NULL),(236,47,26,2,NULL),(237,71,30,2,NULL),(238,49,26,2,NULL),(239,76,30,2,NULL),(240,50,26,2,NULL),(241,78,30,2,NULL),(242,51,26,2,NULL),(243,81,30,2,NULL),(244,52,26,2,NULL),(245,88,30,2,NULL),(246,73,26,2,NULL),(247,95,30,2,NULL),(248,77,26,2,NULL),(249,83,30,2,NULL),(250,113,26,2,NULL),(251,86,30,2,NULL),(252,114,26,2,NULL),(253,125,30,2,NULL),(254,116,26,2,NULL),(255,67,30,2,NULL),(256,82,26,2,NULL),(257,68,30,2,NULL),(258,97,26,2,NULL),(259,118,30,2,NULL),(260,102,26,2,NULL),(261,119,30,2,NULL),(262,94,26,2,NULL),(263,103,31,2,NULL),(264,98,26,2,NULL),(265,4,32,2,NULL),(266,137,26,2,NULL),(267,5,32,2,NULL),(268,69,26,2,NULL),(269,6,32,2,NULL),(270,71,26,2,NULL),(271,7,32,2,NULL),(272,76,26,2,NULL),(273,8,32,2,NULL),(274,78,26,2,NULL),(275,9,32,2,NULL),(276,81,26,2,NULL),(277,10,32,2,NULL),(278,88,26,2,NULL),(279,11,32,2,NULL),(280,95,26,2,NULL),(281,12,32,2,NULL),(282,83,26,2,NULL),(283,13,32,2,NULL),(284,86,26,2,NULL),(285,14,32,2,NULL),(286,125,26,2,NULL),(287,15,32,2,NULL),(288,67,26,2,NULL),(289,16,32,2,NULL),(290,68,26,2,NULL),(291,17,32,2,NULL),(292,118,26,2,NULL),(293,19,32,2,NULL),(294,119,26,2,NULL),(295,20,32,2,NULL),(296,61,24,2,NULL),(297,21,32,2,NULL),(298,61,84,2,NULL),(299,23,32,2,NULL),(300,4,27,2,NULL),(301,24,32,2,NULL),(302,5,27,2,NULL),(303,25,32,2,NULL),(304,6,27,2,NULL),(305,26,32,2,NULL),(306,7,27,2,NULL),(307,27,32,2,NULL),(308,8,27,2,NULL),(309,28,32,2,NULL),(310,9,27,2,NULL),(311,29,32,2,NULL),(312,10,27,2,NULL),(313,30,32,2,NULL),(314,11,27,2,NULL),(315,31,32,2,NULL),(316,12,27,2,NULL),(317,32,32,2,NULL),(318,13,27,2,NULL),(319,34,32,2,NULL),(320,14,27,2,NULL),(321,36,32,2,NULL),(322,15,27,2,NULL),(323,37,32,2,NULL),(324,16,27,2,NULL),(325,39,32,2,NULL),(326,17,27,2,NULL),(327,41,32,2,NULL),(328,19,27,2,NULL),(329,43,32,2,NULL),(330,20,27,2,NULL),(331,1,32,2,NULL),(332,21,27,2,NULL),(333,45,32,2,NULL),(334,23,27,2,NULL),(335,22,32,2,NULL),(336,24,27,2,NULL),(337,33,32,2,NULL),(338,25,27,2,NULL),(339,35,32,2,NULL),(340,26,27,2,NULL),(341,27,27,2,NULL),(342,46,32,2,NULL),(343,47,32,2,NULL),(344,28,27,2,NULL),(345,29,27,2,NULL),(346,49,32,2,NULL),(347,50,32,2,NULL),(348,30,27,2,NULL),(349,51,32,2,NULL),(350,31,27,2,NULL),(351,52,32,2,NULL),(352,32,27,2,NULL),(353,73,32,2,NULL),(354,34,27,2,NULL),(355,36,27,2,NULL),(356,77,32,2,NULL),(357,113,32,2,NULL),(358,37,27,2,NULL),(359,39,27,2,NULL),(360,114,32,2,NULL),(361,41,27,2,NULL),(362,116,32,2,NULL),(363,43,27,2,NULL),(364,82,32,2,NULL),(365,1,27,2,NULL),(366,97,32,2,NULL),(367,45,27,2,NULL),(368,102,32,2,NULL),(369,22,27,2,NULL),(370,94,32,2,NULL),(371,33,27,2,NULL),(372,98,32,2,NULL),(373,35,27,2,NULL),(374,137,32,2,NULL),(375,69,32,2,NULL),(376,46,27,2,NULL),(377,71,32,2,NULL),(378,47,27,2,NULL),(379,49,27,2,NULL),(380,76,32,2,NULL),(381,78,32,2,NULL),(382,50,27,2,NULL),(383,81,32,2,NULL),(384,51,27,2,NULL),(385,88,32,2,NULL),(386,52,27,2,NULL),(387,73,27,2,NULL),(388,95,32,2,NULL),(389,77,27,2,NULL),(390,83,32,2,NULL),(391,113,27,2,NULL),(392,86,32,2,NULL),(393,114,27,2,NULL),(394,125,32,2,NULL),(395,116,27,2,NULL),(396,67,32,2,NULL),(397,82,27,2,NULL),(398,68,32,2,NULL),(399,118,32,2,NULL),(400,97,27,2,NULL),(401,102,27,2,NULL),(402,119,32,2,NULL),(403,94,27,2,NULL),(404,4,93,2,NULL),(405,5,93,2,NULL),(406,98,27,2,NULL),(407,6,93,2,NULL),(408,137,27,2,NULL),(409,69,27,2,NULL),(410,7,93,2,NULL),(411,71,27,2,NULL),(412,8,93,2,NULL),(413,76,27,2,NULL),(414,9,93,2,NULL),(415,78,27,2,NULL),(416,10,93,2,NULL),(417,81,27,2,NULL),(418,11,93,2,NULL),(419,88,27,2,NULL),(420,12,93,2,NULL),(421,95,27,2,NULL),(422,13,93,2,NULL),(423,14,93,2,NULL),(424,83,27,2,NULL),(425,86,27,2,NULL),(426,15,93,2,NULL),(427,125,27,2,NULL),(428,16,93,2,NULL),(429,17,93,2,NULL),(430,67,27,2,NULL),(431,68,27,2,NULL),(432,19,93,2,NULL),(433,118,27,2,NULL),(434,20,93,2,NULL),(435,119,27,2,NULL),(436,21,93,2,NULL),(437,4,28,2,NULL),(438,23,93,2,NULL),(439,5,28,2,NULL),(440,24,93,2,NULL),(441,6,28,2,NULL),(442,25,93,2,NULL),(443,7,28,2,NULL),(444,26,93,2,NULL),(445,8,28,2,NULL),(446,27,93,2,NULL),(447,9,28,2,NULL),(448,28,93,2,NULL),(449,10,28,2,NULL),(450,29,93,2,NULL),(451,11,28,2,NULL),(452,30,93,2,NULL),(453,12,28,2,NULL),(454,31,93,2,NULL),(455,32,93,2,NULL),(456,13,28,2,NULL),(457,14,28,2,NULL),(458,34,93,2,NULL),(459,15,28,2,NULL),(460,36,93,2,NULL),(461,16,28,2,NULL),(462,37,93,2,NULL),(463,39,93,2,NULL),(464,17,28,2,NULL),(465,19,28,2,NULL),(466,41,93,2,NULL),(467,20,28,2,NULL),(468,43,93,2,NULL),(469,21,28,2,NULL),(470,1,93,2,NULL),(471,23,28,2,NULL),(472,45,93,2,NULL),(473,24,28,2,NULL),(474,22,93,2,NULL),(475,25,28,2,NULL),(476,33,93,2,NULL),(477,26,28,2,NULL),(478,35,93,2,NULL),(479,27,28,2,NULL),(480,46,93,2,NULL),(481,28,28,2,NULL),(482,47,93,2,NULL),(483,49,93,2,NULL),(484,29,28,2,NULL),(485,30,28,2,NULL),(486,50,93,2,NULL),(487,31,28,2,NULL),(488,51,93,2,NULL),(489,32,28,2,NULL),(490,52,93,2,NULL),(491,34,28,2,NULL),(492,73,93,2,NULL),(493,36,28,2,NULL),(494,77,93,2,NULL),(495,37,28,2,NULL),(496,113,93,2,NULL),(497,39,28,2,NULL),(498,114,93,2,NULL),(499,41,28,2,NULL),(500,116,93,2,NULL),(501,43,28,2,NULL),(502,82,93,2,NULL),(503,1,28,2,NULL),(504,97,93,2,NULL),(505,45,28,2,NULL),(506,102,93,2,NULL),(507,22,28,2,NULL),(508,94,93,2,NULL),(509,33,28,2,NULL),(510,98,93,2,NULL),(511,35,28,2,NULL),(512,137,93,2,NULL),(513,46,28,2,NULL),(514,69,93,2,NULL),(515,47,28,2,NULL),(516,71,93,2,NULL),(517,49,28,2,NULL),(518,76,93,2,NULL),(519,78,93,2,NULL),(520,50,28,2,NULL),(521,51,28,2,NULL),(522,81,93,2,NULL),(523,52,28,2,NULL),(524,88,93,2,NULL),(525,73,28,2,NULL),(526,95,93,2,NULL),(527,77,28,2,NULL),(528,83,93,2,NULL),(529,113,28,2,NULL),(530,86,93,2,NULL),(531,114,28,2,NULL),(532,125,93,2,NULL),(533,116,28,2,NULL),(534,67,93,2,NULL),(535,82,28,2,NULL),(536,68,93,2,NULL),(537,97,28,2,NULL),(538,118,93,2,NULL),(539,102,28,2,NULL),(540,119,93,2,NULL),(541,94,28,2,NULL),(542,98,28,2,NULL),(543,137,28,2,NULL),(544,69,28,2,NULL),(545,71,28,2,NULL),(546,76,28,2,NULL),(547,78,28,2,NULL),(548,81,28,2,NULL),(549,88,28,2,NULL),(550,95,28,2,NULL),(551,83,28,2,NULL),(552,86,28,2,NULL),(553,125,28,2,NULL),(554,67,28,2,NULL),(555,68,28,2,NULL),(556,118,28,2,NULL),(557,119,28,2,NULL),(558,4,5,2,NULL),(559,5,5,2,NULL),(560,6,5,2,NULL),(561,7,5,2,NULL),(562,8,5,2,NULL),(563,9,5,2,NULL),(564,10,5,2,NULL),(565,11,5,2,NULL),(566,4,33,2,NULL),(567,12,5,2,NULL),(568,5,33,2,NULL),(569,13,5,2,NULL),(570,6,33,2,NULL),(571,14,5,2,NULL),(572,7,33,2,NULL),(573,15,5,2,NULL),(574,8,33,2,NULL),(575,16,5,2,NULL),(576,9,33,2,NULL),(577,17,5,2,NULL),(578,10,33,2,NULL),(579,19,5,2,NULL),(580,11,33,2,NULL),(581,20,5,2,NULL),(582,12,33,2,NULL),(583,21,5,2,NULL),(584,13,33,2,NULL),(585,23,5,2,NULL),(586,14,33,2,NULL),(587,24,5,2,NULL),(588,15,33,2,NULL),(589,25,5,2,NULL),(590,16,33,2,NULL),(591,26,5,2,NULL),(592,17,33,2,NULL),(593,27,5,2,NULL),(594,19,33,2,NULL),(595,28,5,2,NULL),(596,20,33,2,NULL),(597,29,5,2,NULL),(598,21,33,2,NULL),(599,30,5,2,NULL),(600,23,33,2,NULL),(601,31,5,2,NULL),(602,24,33,2,NULL),(603,32,5,2,NULL),(604,25,33,2,NULL),(605,34,5,2,NULL),(606,26,33,2,NULL),(607,36,5,2,NULL),(608,27,33,2,NULL),(609,37,5,2,NULL),(610,28,33,2,NULL),(611,39,5,2,NULL),(612,29,33,2,NULL),(613,41,5,2,NULL),(614,30,33,2,NULL),(615,43,5,2,NULL),(616,31,33,2,NULL),(617,1,5,2,NULL),(618,32,33,2,NULL),(619,45,5,2,NULL),(620,34,33,2,NULL),(621,22,5,2,NULL),(622,36,33,2,NULL),(623,33,5,2,NULL),(624,37,33,2,NULL),(625,35,5,2,NULL),(626,39,33,2,NULL),(627,46,5,2,NULL),(628,41,33,2,NULL),(629,47,5,2,NULL),(630,43,33,2,NULL),(631,49,5,2,NULL),(632,1,33,2,NULL),(633,50,5,2,NULL),(634,45,33,2,NULL),(635,51,5,2,NULL),(636,22,33,2,NULL),(637,52,5,2,NULL),(638,33,33,2,NULL),(639,73,5,2,NULL),(640,35,33,2,NULL),(641,77,5,2,NULL),(642,46,33,2,NULL),(643,113,5,2,NULL),(644,47,33,2,NULL),(645,114,5,2,NULL),(646,49,33,2,NULL),(647,116,5,2,NULL),(648,50,33,2,NULL),(649,82,5,2,NULL),(650,51,33,2,NULL),(651,97,5,2,NULL),(652,52,33,2,NULL),(653,102,5,2,NULL),(654,73,33,2,NULL),(655,94,5,2,NULL),(656,77,33,2,NULL),(657,98,5,2,NULL),(658,113,33,2,NULL),(659,137,5,2,NULL),(660,114,33,2,NULL),(661,69,5,2,NULL),(662,116,33,2,NULL),(663,71,5,2,NULL),(664,82,33,2,NULL),(665,76,5,2,NULL),(666,97,33,2,NULL),(667,78,5,2,NULL),(668,102,33,2,NULL),(669,81,5,2,NULL),(670,94,33,2,NULL),(671,88,5,2,NULL),(672,98,33,2,NULL),(673,95,5,2,NULL),(674,137,33,2,NULL),(675,83,5,2,NULL),(676,69,33,2,NULL),(677,86,5,2,NULL),(678,71,33,2,NULL),(679,125,5,2,NULL),(680,76,33,2,NULL),(681,67,5,2,NULL),(682,78,33,2,NULL),(683,68,5,2,NULL),(684,81,33,2,NULL),(685,118,5,2,NULL),(686,88,33,2,NULL),(687,119,5,2,NULL),(688,95,33,2,NULL),(689,22,1,2,NULL),(690,83,33,2,NULL),(691,22,3,2,NULL),(692,86,33,2,NULL),(693,22,4,2,NULL),(694,125,33,2,NULL),(695,22,19,2,NULL),(696,67,33,2,NULL),(697,22,20,2,NULL),(698,68,33,2,NULL),(699,22,60,2,NULL),(700,118,33,2,NULL),(701,22,63,2,NULL),(702,119,33,2,NULL),(703,22,66,2,NULL),(704,4,55,2,NULL),(705,22,9,2,NULL),(706,5,55,2,NULL),(707,22,10,2,NULL),(708,6,55,2,NULL),(709,22,29,2,NULL),(710,7,55,2,NULL),(711,22,11,2,NULL),(712,8,55,2,NULL),(713,22,17,2,NULL),(714,9,55,2,NULL),(715,22,18,2,NULL),(716,10,55,2,NULL),(717,22,45,2,NULL),(718,11,55,2,NULL),(719,22,55,2,NULL),(720,12,55,2,NULL),(721,22,71,2,NULL),(722,13,55,2,NULL),(723,22,73,2,NULL),(724,14,55,2,NULL),(725,22,74,2,NULL),(726,15,55,2,NULL),(727,22,75,2,NULL),(728,16,55,2,NULL),(729,22,76,2,NULL),(730,17,55,2,NULL),(731,22,77,2,NULL),(732,19,55,2,NULL),(733,22,78,2,NULL),(734,20,55,2,NULL),(735,22,79,2,NULL),(736,21,55,2,NULL),(737,22,80,2,NULL),(738,23,55,2,NULL),(739,22,81,2,NULL),(740,24,55,2,NULL),(741,22,82,2,NULL),(742,25,55,2,NULL),(743,22,85,2,NULL),(744,26,55,2,NULL),(745,22,86,2,NULL),(746,27,55,2,NULL),(747,22,87,2,NULL),(748,28,55,2,NULL),(749,22,88,2,NULL),(750,29,55,2,NULL),(751,22,89,2,NULL),(752,30,55,2,NULL),(753,22,90,2,NULL),(754,31,55,2,NULL),(755,22,91,2,NULL),(756,32,55,2,NULL),(757,22,92,2,NULL),(758,34,55,2,NULL),(759,22,94,2,NULL),(760,36,55,2,NULL),(761,18,8,2,NULL),(762,37,55,2,NULL),(763,18,16,2,NULL),(764,39,55,2,NULL),(765,4,9,2,NULL),(766,41,55,2,NULL),(767,5,9,2,NULL),(768,43,55,2,NULL),(769,6,9,2,NULL),(770,1,55,2,NULL),(771,7,9,2,NULL),(772,45,55,2,NULL),(773,8,9,2,NULL),(774,33,55,2,NULL),(775,9,9,2,NULL),(776,35,55,2,NULL),(777,10,9,2,NULL),(778,46,55,2,NULL),(779,11,9,2,NULL),(780,47,55,2,NULL),(781,12,9,2,NULL),(782,49,55,2,NULL),(783,13,9,2,NULL),(784,50,55,2,NULL),(785,14,9,2,NULL),(786,51,55,2,NULL),(787,15,9,2,NULL),(788,52,55,2,NULL),(789,16,9,2,NULL),(790,73,55,2,NULL),(791,17,9,2,NULL),(792,77,55,2,NULL),(793,19,9,2,NULL),(794,113,55,2,NULL),(795,20,9,2,NULL),(796,114,55,2,NULL),(797,21,9,2,NULL),(798,116,55,2,NULL),(799,23,9,2,NULL),(800,82,55,2,NULL),(801,24,9,2,NULL),(802,97,55,2,NULL),(803,25,9,2,NULL),(804,102,55,2,NULL),(805,26,9,2,NULL),(806,94,55,2,NULL),(807,27,9,2,NULL),(808,98,55,2,NULL),(809,28,9,2,NULL),(810,137,55,2,NULL),(811,29,9,2,NULL),(812,69,55,2,NULL),(813,30,9,2,NULL),(814,71,55,2,NULL),(815,31,9,2,NULL),(816,76,55,2,NULL),(817,32,9,2,NULL),(818,78,55,2,NULL),(819,34,9,2,NULL),(820,81,55,2,NULL),(821,36,9,2,NULL),(822,88,55,2,NULL),(823,37,9,2,NULL),(824,95,55,2,NULL),(825,39,9,2,NULL),(826,83,55,2,NULL),(827,41,9,2,NULL),(828,86,55,2,NULL),(829,43,9,2,NULL),(830,125,55,2,NULL),(831,1,9,2,NULL),(832,67,55,2,NULL),(833,45,9,2,NULL),(834,68,55,2,NULL),(835,33,9,2,NULL),(836,118,55,2,NULL),(837,35,9,2,NULL),(838,119,55,2,NULL),(839,46,9,2,NULL),(840,4,71,2,NULL),(841,47,9,2,NULL),(842,5,71,2,NULL),(843,49,9,2,NULL),(844,6,71,2,NULL),(845,50,9,2,NULL),(846,7,71,2,NULL),(847,51,9,2,NULL),(848,8,71,2,NULL),(849,52,9,2,NULL),(850,9,71,2,NULL),(851,73,9,2,NULL),(852,10,71,2,NULL),(853,77,9,2,NULL),(854,11,71,2,NULL),(855,113,9,2,NULL),(856,12,71,2,NULL),(857,114,9,2,NULL),(858,13,71,2,NULL),(859,116,9,2,NULL),(860,14,71,2,NULL),(861,82,9,2,NULL),(862,15,71,2,NULL),(863,97,9,2,NULL),(864,16,71,2,NULL),(865,102,9,2,NULL),(866,17,71,2,NULL),(867,94,9,2,NULL),(868,19,71,2,NULL),(869,98,9,2,NULL),(870,20,71,2,NULL),(871,137,9,2,NULL),(872,21,71,2,NULL),(873,69,9,2,NULL),(874,23,71,2,NULL),(875,71,9,2,NULL),(876,24,71,2,NULL),(877,76,9,2,NULL),(878,25,71,2,NULL),(879,78,9,2,NULL),(880,26,71,2,NULL),(881,81,9,2,NULL),(882,27,71,2,NULL),(883,88,9,2,NULL),(884,28,71,2,NULL),(885,95,9,2,NULL),(886,29,71,2,NULL),(887,83,9,2,NULL),(888,30,71,2,NULL),(889,86,9,2,NULL),(890,31,71,2,NULL),(891,125,9,2,NULL),(892,32,71,2,NULL),(893,67,9,2,NULL),(894,34,71,2,NULL),(895,68,9,2,NULL),(896,36,71,2,NULL),(897,118,9,2,NULL),(898,37,71,2,NULL),(899,119,9,2,NULL),(900,39,71,2,NULL),(901,4,10,2,NULL),(902,41,71,2,NULL),(903,5,10,2,NULL),(904,43,71,2,NULL),(905,6,10,2,NULL),(906,1,71,2,NULL),(907,7,10,2,NULL),(908,45,71,2,NULL),(909,8,10,2,NULL),(910,33,71,2,NULL),(911,9,10,2,NULL),(912,35,71,2,NULL),(913,10,10,2,NULL),(914,46,71,2,NULL),(915,11,10,2,NULL),(916,47,71,2,NULL),(917,12,10,2,NULL),(918,49,71,2,NULL),(919,13,10,2,NULL),(920,50,71,2,NULL),(921,14,10,2,NULL),(922,51,71,2,NULL),(923,15,10,2,NULL),(924,52,71,2,NULL),(925,16,10,2,NULL),(926,73,71,2,NULL),(927,17,10,2,NULL),(928,77,71,2,NULL),(929,19,10,2,NULL),(930,113,71,2,NULL),(931,20,10,2,NULL),(932,114,71,2,NULL),(933,21,10,2,NULL),(934,116,71,2,NULL),(935,23,10,2,NULL),(936,82,71,2,NULL),(937,24,10,2,NULL),(938,97,71,2,NULL),(939,25,10,2,NULL),(940,102,71,2,NULL),(941,26,10,2,NULL),(942,94,71,2,NULL),(943,27,10,2,NULL),(944,98,71,2,NULL),(945,28,10,2,NULL),(946,137,71,2,NULL),(947,29,10,2,NULL),(948,69,71,2,NULL),(949,30,10,2,NULL),(950,71,71,2,NULL),(951,31,10,2,NULL),(952,76,71,2,NULL),(953,32,10,2,NULL),(954,78,71,2,NULL),(955,34,10,2,NULL),(956,81,71,2,NULL),(957,36,10,2,NULL),(958,88,71,2,NULL),(959,37,10,2,NULL),(960,95,71,2,NULL),(961,39,10,2,NULL),(962,83,71,2,NULL),(963,41,10,2,NULL),(964,86,71,2,NULL),(965,43,10,2,NULL),(966,125,71,2,NULL),(967,1,10,2,NULL),(968,67,71,2,NULL),(969,45,10,2,NULL),(970,68,71,2,NULL),(971,33,10,2,NULL),(972,118,71,2,NULL),(973,35,10,2,NULL),(974,119,71,2,NULL),(975,46,10,2,NULL),(976,4,73,2,NULL),(977,47,10,2,NULL),(978,5,73,2,NULL),(979,49,10,2,NULL),(980,6,73,2,NULL),(981,50,10,2,NULL),(982,7,73,2,NULL),(983,51,10,2,NULL),(984,8,73,2,NULL),(985,52,10,2,NULL),(986,9,73,2,NULL),(987,73,10,2,NULL),(988,10,73,2,NULL),(989,77,10,2,NULL),(990,11,73,2,NULL),(991,113,10,2,NULL),(992,12,73,2,NULL),(993,114,10,2,NULL),(994,13,73,2,NULL),(995,116,10,2,NULL),(996,14,73,2,NULL),(997,82,10,2,NULL),(998,15,73,2,NULL),(999,97,10,2,NULL),(1000,16,73,2,NULL),(1001,102,10,2,NULL),(1002,17,73,2,NULL),(1003,94,10,2,NULL),(1004,19,73,2,NULL),(1005,98,10,2,NULL),(1006,20,73,2,NULL),(1007,137,10,2,NULL),(1008,21,73,2,NULL),(1009,69,10,2,NULL),(1010,23,73,2,NULL),(1011,71,10,2,NULL),(1012,24,73,2,NULL),(1013,76,10,2,NULL),(1014,25,73,2,NULL),(1015,78,10,2,NULL),(1016,26,73,2,NULL),(1017,81,10,2,NULL),(1018,27,73,2,NULL),(1019,88,10,2,NULL),(1020,28,73,2,NULL),(1021,95,10,2,NULL),(1022,29,73,2,NULL),(1023,83,10,2,NULL),(1024,30,73,2,NULL),(1025,86,10,2,NULL),(1026,31,73,2,NULL),(1027,125,10,2,NULL),(1028,32,73,2,NULL),(1029,67,10,2,NULL),(1030,34,73,2,NULL),(1031,68,10,2,NULL),(1032,36,73,2,NULL),(1033,118,10,2,NULL),(1034,37,73,2,NULL),(1035,119,10,2,NULL),(1036,39,73,2,NULL),(1037,4,29,2,NULL),(1038,41,73,2,NULL),(1039,5,29,2,NULL),(1040,43,73,2,NULL),(1041,6,29,2,NULL),(1042,1,73,2,NULL),(1043,7,29,2,NULL),(1044,45,73,2,NULL),(1045,8,29,2,NULL),(1046,33,73,2,NULL),(1047,9,29,2,NULL),(1048,35,73,2,NULL),(1049,10,29,2,NULL),(1050,46,73,2,NULL),(1051,11,29,2,NULL),(1052,47,73,2,NULL),(1053,12,29,2,NULL),(1054,49,73,2,NULL),(1055,13,29,2,NULL),(1056,50,73,2,NULL),(1057,14,29,2,NULL),(1058,51,73,2,NULL),(1059,15,29,2,NULL),(1060,52,73,2,NULL),(1061,16,29,2,NULL),(1062,73,73,2,NULL),(1063,17,29,2,NULL),(1064,77,73,2,NULL),(1065,19,29,2,NULL),(1066,113,73,2,NULL),(1067,20,29,2,NULL),(1068,114,73,2,NULL),(1069,21,29,2,NULL),(1070,116,73,2,NULL),(1071,23,29,2,NULL),(1072,82,73,2,NULL),(1073,24,29,2,NULL),(1074,97,73,2,NULL),(1075,25,29,2,NULL),(1076,102,73,2,NULL),(1077,26,29,2,NULL),(1078,94,73,2,NULL),(1079,27,29,2,NULL),(1080,98,73,2,NULL),(1081,28,29,2,NULL),(1082,137,73,2,NULL),(1083,29,29,2,NULL),(1084,69,73,2,NULL),(1085,30,29,2,NULL),(1086,71,73,2,NULL),(1087,31,29,2,NULL),(1088,76,73,2,NULL),(1089,32,29,2,NULL),(1090,78,73,2,NULL),(1091,34,29,2,NULL),(1092,81,73,2,NULL),(1093,36,29,2,NULL),(1094,88,73,2,NULL),(1095,37,29,2,NULL),(1096,95,73,2,NULL),(1097,39,29,2,NULL),(1098,83,73,2,NULL),(1099,41,29,2,NULL),(1100,86,73,2,NULL),(1101,43,29,2,NULL),(1102,125,73,2,NULL),(1103,1,29,2,NULL),(1104,67,73,2,NULL),(1105,45,29,2,NULL),(1106,68,73,2,NULL),(1107,33,29,2,NULL),(1108,118,73,2,NULL),(1109,35,29,2,NULL),(1110,119,73,2,NULL),(1111,46,29,2,NULL),(1112,47,29,2,NULL),(1113,49,29,2,NULL),(1114,50,29,2,NULL),(1115,51,29,2,NULL),(1116,52,29,2,NULL),(1117,73,29,2,NULL),(1118,77,29,2,NULL),(1119,113,29,2,NULL),(1120,114,29,2,NULL),(1121,116,29,2,NULL),(1122,82,29,2,NULL),(1123,97,29,2,NULL),(1124,102,29,2,NULL),(1125,94,29,2,NULL),(1126,98,29,2,NULL),(1127,137,29,2,NULL),(1128,69,29,2,NULL),(1129,71,29,2,NULL),(1130,76,29,2,NULL),(1131,78,29,2,NULL),(1132,81,29,2,NULL),(1133,88,29,2,NULL),(1134,95,29,2,NULL),(1135,83,29,2,NULL),(1136,86,29,2,NULL),(1137,125,29,2,NULL),(1138,67,29,2,NULL),(1139,68,29,2,NULL),(1140,118,29,2,NULL),(1141,119,29,2,NULL),(1142,66,24,2,NULL),(1143,66,84,2,NULL),(1144,4,74,2,NULL),(1145,5,74,2,NULL),(1146,6,74,2,NULL),(1147,7,74,2,NULL),(1148,8,74,2,NULL),(1149,9,74,2,NULL),(1150,10,74,2,NULL),(1151,11,74,2,NULL),(1152,12,74,2,NULL),(1153,13,74,2,NULL),(1154,14,74,2,NULL),(1155,15,74,2,NULL),(1156,16,74,2,NULL),(1157,17,74,2,NULL),(1158,19,74,2,NULL),(1159,20,74,2,NULL),(1160,21,74,2,NULL),(1161,23,74,2,NULL),(1162,24,74,2,NULL),(1163,25,74,2,NULL),(1164,26,74,2,NULL),(1165,27,74,2,NULL),(1166,28,74,2,NULL),(1167,29,74,2,NULL),(1168,30,74,2,NULL),(1169,31,74,2,NULL),(1170,32,74,2,NULL),(1171,34,74,2,NULL),(1172,36,74,2,NULL),(1173,37,74,2,NULL),(1174,39,74,2,NULL),(1175,41,74,2,NULL),(1176,43,74,2,NULL),(1177,1,74,2,NULL),(1178,45,74,2,NULL),(1179,33,74,2,NULL),(1180,35,74,2,NULL),(1181,46,74,2,NULL),(1182,47,74,2,NULL),(1183,49,74,2,NULL),(1184,50,74,2,NULL),(1185,51,74,2,NULL),(1186,52,74,2,NULL),(1187,73,74,2,NULL),(1188,77,74,2,NULL),(1189,113,74,2,NULL),(1190,114,74,2,NULL),(1191,116,74,2,NULL),(1192,82,74,2,NULL),(1193,97,74,2,NULL),(1194,102,74,2,NULL),(1195,94,74,2,NULL),(1196,98,74,2,NULL),(1197,137,74,2,NULL),(1198,69,74,2,NULL),(1199,71,74,2,NULL),(1200,76,74,2,NULL),(1201,78,74,2,NULL),(1202,81,74,2,NULL),(1203,88,74,2,NULL),(1204,95,74,2,NULL),(1205,83,74,2,NULL),(1206,86,74,2,NULL),(1207,125,74,2,NULL),(1208,67,74,2,NULL),(1209,68,74,2,NULL),(1210,118,74,2,NULL),(1211,119,74,2,NULL),(1212,90,81,2,NULL),(1213,93,78,2,NULL),(1214,120,83,2,NULL),(1215,129,77,2,NULL),(1216,131,80,2,NULL),(1217,4,75,2,NULL),(1218,5,75,2,NULL),(1219,6,75,2,NULL),(1220,7,75,2,NULL),(1221,8,75,2,NULL),(1222,9,75,2,NULL),(1223,10,75,2,NULL),(1224,11,75,2,NULL),(1225,12,75,2,NULL),(1226,13,75,2,NULL),(1227,14,75,2,NULL),(1228,15,75,2,NULL),(1229,16,75,2,NULL),(1230,17,75,2,NULL),(1231,19,75,2,NULL),(1232,20,75,2,NULL),(1233,21,75,2,NULL),(1234,23,75,2,NULL),(1235,24,75,2,NULL),(1236,25,75,2,NULL),(1237,26,75,2,NULL),(1238,27,75,2,NULL),(1239,28,75,2,NULL),(1240,29,75,2,NULL),(1241,30,75,2,NULL),(1242,31,75,2,NULL),(1243,32,75,2,NULL),(1244,34,75,2,NULL),(1245,36,75,2,NULL),(1246,37,75,2,NULL),(1247,39,75,2,NULL),(1248,41,75,2,NULL),(1249,43,75,2,NULL),(1250,1,75,2,NULL),(1251,45,75,2,NULL),(1252,33,75,2,NULL),(1253,35,75,2,NULL),(1254,46,75,2,NULL),(1255,47,75,2,NULL),(1256,49,75,2,NULL),(1257,50,75,2,NULL),(1258,51,75,2,NULL),(1259,52,75,2,NULL),(1260,73,75,2,NULL),(1261,77,75,2,NULL),(1262,113,75,2,NULL),(1263,114,75,2,NULL),(1264,116,75,2,NULL),(1265,82,75,2,NULL),(1266,97,75,2,NULL),(1267,102,75,2,NULL),(1268,94,75,2,NULL),(1269,98,75,2,NULL),(1270,137,75,2,NULL),(1271,69,75,2,NULL),(1272,71,75,2,NULL),(1273,76,75,2,NULL),(1274,78,75,2,NULL),(1275,81,75,2,NULL),(1276,88,75,2,NULL),(1277,95,75,2,NULL),(1278,83,75,2,NULL),(1279,86,75,2,NULL),(1280,125,75,2,NULL),(1281,67,75,2,NULL),(1282,68,75,2,NULL),(1283,118,75,2,NULL),(1284,119,75,2,NULL),(1285,74,78,2,NULL),(1286,87,80,2,NULL),(1287,96,77,2,NULL),(1288,109,75,2,NULL),(1289,121,83,2,NULL),(1290,130,80,2,NULL),(1291,73,1,2,NULL),(1292,77,1,2,NULL),(1293,113,1,2,NULL),(1294,114,1,2,NULL),(1295,116,1,2,NULL),(1296,4,76,2,NULL),(1297,5,76,2,NULL),(1298,6,76,2,NULL),(1299,7,76,2,NULL),(1300,8,76,2,NULL),(1301,9,76,2,NULL),(1302,10,76,2,NULL),(1303,11,76,2,NULL),(1304,12,76,2,NULL),(1305,13,76,2,NULL),(1306,14,76,2,NULL),(1307,15,76,2,NULL),(1308,16,76,2,NULL),(1309,17,76,2,NULL),(1310,19,76,2,NULL),(1311,20,76,2,NULL),(1312,21,76,2,NULL),(1313,23,76,2,NULL),(1314,24,76,2,NULL),(1315,25,76,2,NULL),(1316,26,76,2,NULL),(1317,27,76,2,NULL),(1318,28,76,2,NULL),(1319,29,76,2,NULL),(1320,30,76,2,NULL),(1321,31,76,2,NULL),(1322,32,76,2,NULL),(1323,34,76,2,NULL),(1324,36,76,2,NULL),(1325,37,76,2,NULL),(1326,39,76,2,NULL),(1327,41,76,2,NULL),(1328,43,76,2,NULL),(1329,73,3,2,NULL),(1330,77,3,2,NULL),(1331,113,3,2,NULL),(1332,114,3,2,NULL),(1333,116,3,2,NULL),(1334,1,76,2,NULL),(1335,45,76,2,NULL),(1336,73,4,2,NULL),(1337,77,4,2,NULL),(1338,113,4,2,NULL),(1339,114,4,2,NULL),(1340,116,4,2,NULL),(1341,73,19,2,NULL),(1342,77,19,2,NULL),(1343,113,19,2,NULL),(1344,114,19,2,NULL),(1345,116,19,2,NULL),(1346,73,20,2,NULL),(1347,77,20,2,NULL),(1348,113,20,2,NULL),(1349,114,20,2,NULL),(1350,116,20,2,NULL),(1351,73,60,2,NULL),(1352,77,60,2,NULL),(1353,113,60,2,NULL),(1354,114,60,2,NULL),(1355,116,60,2,NULL),(1356,73,63,2,NULL),(1357,77,63,2,NULL),(1358,113,63,2,NULL),(1359,114,63,2,NULL),(1360,116,63,2,NULL),(1361,73,66,2,NULL),(1362,77,66,2,NULL),(1363,113,66,2,NULL),(1364,114,66,2,NULL),(1365,116,66,2,NULL),(1366,73,11,2,NULL),(1367,77,11,2,NULL),(1368,113,11,2,NULL),(1369,114,11,2,NULL),(1370,116,11,2,NULL),(1371,33,76,2,NULL),(1372,35,76,2,NULL),(1373,46,76,2,NULL),(1374,47,76,2,NULL),(1375,49,76,2,NULL),(1376,50,76,2,NULL),(1377,51,76,2,NULL),(1378,52,76,2,NULL),(1379,73,17,2,NULL),(1380,77,17,2,NULL),(1381,113,17,2,NULL),(1382,114,17,2,NULL),(1383,116,17,2,NULL),(1384,73,18,2,NULL),(1385,77,18,2,NULL),(1386,113,18,2,NULL),(1387,114,18,2,NULL),(1388,116,18,2,NULL),(1389,73,45,2,NULL),(1390,77,45,2,NULL),(1391,113,45,2,NULL),(1392,114,45,2,NULL),(1393,116,45,2,NULL),(1394,73,77,2,NULL),(1395,77,77,2,NULL),(1396,113,77,2,NULL),(1397,114,77,2,NULL),(1398,116,77,2,NULL),(1399,82,76,2,NULL),(1400,97,76,2,NULL),(1401,102,76,2,NULL),(1402,73,78,2,NULL),(1403,77,78,2,NULL),(1404,113,78,2,NULL),(1405,114,78,2,NULL),(1406,116,78,2,NULL),(1407,73,79,2,NULL),(1408,77,79,2,NULL),(1409,113,79,2,NULL),(1410,114,79,2,NULL),(1411,116,79,2,NULL),(1412,94,76,2,NULL),(1413,98,76,2,NULL),(1414,137,76,2,NULL),(1415,73,80,2,NULL),(1416,77,80,2,NULL),(1417,113,80,2,NULL),(1418,114,80,2,NULL),(1419,116,80,2,NULL),(1420,69,76,2,NULL),(1421,71,76,2,NULL),(1422,76,76,2,NULL),(1423,78,76,2,NULL),(1424,81,76,2,NULL),(1425,88,76,2,NULL),(1426,95,76,2,NULL),(1427,73,81,2,NULL),(1428,77,81,2,NULL),(1429,113,81,2,NULL),(1430,114,81,2,NULL),(1431,116,81,2,NULL),(1432,83,76,2,NULL),(1433,86,76,2,NULL),(1434,125,76,2,NULL),(1435,73,82,2,NULL),(1436,77,82,2,NULL),(1437,113,82,2,NULL),(1438,114,82,2,NULL),(1439,116,82,2,NULL),(1440,67,76,2,NULL),(1441,68,76,2,NULL),(1442,118,76,2,NULL),(1443,119,76,2,NULL),(1444,73,85,2,NULL),(1445,77,85,2,NULL),(1446,113,85,2,NULL),(1447,114,85,2,NULL),(1448,116,85,2,NULL),(1449,73,86,2,NULL),(1450,77,86,2,NULL),(1451,113,86,2,NULL),(1452,114,86,2,NULL),(1453,116,86,2,NULL),(1454,73,87,2,NULL),(1455,77,87,2,NULL),(1456,113,87,2,NULL),(1457,114,87,2,NULL),(1458,116,87,2,NULL),(1459,73,88,2,NULL),(1460,77,88,2,NULL),(1461,113,88,2,NULL),(1462,114,88,2,NULL),(1463,116,88,2,NULL),(1464,73,89,2,NULL),(1465,77,89,2,NULL),(1466,113,89,2,NULL),(1467,114,89,2,NULL),(1468,116,89,2,NULL),(1469,73,90,2,NULL),(1470,77,90,2,NULL),(1471,113,90,2,NULL),(1472,114,90,2,NULL),(1473,116,90,2,NULL),(1474,73,91,2,NULL),(1475,77,91,2,NULL),(1476,113,91,2,NULL),(1477,114,91,2,NULL),(1478,116,91,2,NULL),(1479,73,92,2,NULL),(1480,77,92,2,NULL),(1481,113,92,2,NULL),(1482,114,92,2,NULL),(1483,116,92,2,NULL),(1484,73,94,2,NULL),(1485,77,94,2,NULL),(1486,113,94,2,NULL),(1487,114,94,2,NULL),(1488,116,94,2,NULL),(1489,99,78,2,NULL),(1490,126,81,2,NULL),(1491,134,80,2,NULL),(1492,82,1,2,NULL),(1493,97,1,2,NULL),(1494,102,1,2,NULL),(1495,4,77,2,NULL),(1496,5,77,2,NULL),(1497,6,77,2,NULL),(1498,7,77,2,NULL),(1499,8,77,2,NULL),(1500,9,77,2,NULL),(1501,10,77,2,NULL),(1502,11,77,2,NULL),(1503,12,77,2,NULL),(1504,13,77,2,NULL),(1505,14,77,2,NULL),(1506,15,77,2,NULL),(1507,16,77,2,NULL),(1508,17,77,2,NULL),(1509,19,77,2,NULL),(1510,20,77,2,NULL),(1511,21,77,2,NULL),(1512,23,77,2,NULL),(1513,24,77,2,NULL),(1514,25,77,2,NULL),(1515,26,77,2,NULL),(1516,27,77,2,NULL),(1517,28,77,2,NULL),(1518,29,77,2,NULL),(1519,30,77,2,NULL),(1520,31,77,2,NULL),(1521,32,77,2,NULL),(1522,34,77,2,NULL),(1523,36,77,2,NULL),(1524,37,77,2,NULL),(1525,39,77,2,NULL),(1526,41,77,2,NULL),(1527,43,77,2,NULL),(1528,82,3,2,NULL),(1529,97,3,2,NULL),(1530,102,3,2,NULL),(1531,1,77,2,NULL),(1532,45,77,2,NULL),(1533,82,4,2,NULL),(1534,97,4,2,NULL),(1535,102,4,2,NULL),(1536,82,19,2,NULL),(1537,97,19,2,NULL),(1538,102,19,2,NULL),(1539,82,20,2,NULL),(1540,97,20,2,NULL),(1541,102,20,2,NULL),(1542,82,60,2,NULL),(1543,97,60,2,NULL),(1544,102,60,2,NULL),(1545,82,63,2,NULL),(1546,97,63,2,NULL),(1547,102,63,2,NULL),(1548,82,66,2,NULL),(1549,97,66,2,NULL),(1550,102,66,2,NULL),(1551,82,11,2,NULL),(1552,97,11,2,NULL),(1553,102,11,2,NULL),(1554,33,77,2,NULL),(1555,35,77,2,NULL),(1556,46,77,2,NULL),(1557,47,77,2,NULL),(1558,49,77,2,NULL),(1559,50,77,2,NULL),(1560,51,77,2,NULL),(1561,52,77,2,NULL),(1562,82,17,2,NULL),(1563,97,17,2,NULL),(1564,102,17,2,NULL),(1565,82,18,2,NULL),(1566,97,18,2,NULL),(1567,102,18,2,NULL),(1568,82,45,2,NULL),(1569,97,45,2,NULL),(1570,102,45,2,NULL),(1571,82,78,2,NULL),(1572,97,78,2,NULL),(1573,102,78,2,NULL),(1574,82,79,2,NULL),(1575,97,79,2,NULL),(1576,102,79,2,NULL),(1577,94,77,2,NULL),(1578,98,77,2,NULL),(1579,137,77,2,NULL),(1580,82,80,2,NULL),(1581,97,80,2,NULL),(1582,102,80,2,NULL),(1583,69,77,2,NULL),(1584,71,77,2,NULL),(1585,76,77,2,NULL),(1586,78,77,2,NULL),(1587,81,77,2,NULL),(1588,88,77,2,NULL),(1589,95,77,2,NULL),(1590,82,81,2,NULL),(1591,97,81,2,NULL),(1592,102,81,2,NULL),(1593,83,77,2,NULL),(1594,86,77,2,NULL),(1595,125,77,2,NULL),(1596,82,82,2,NULL),(1597,97,82,2,NULL),(1598,102,82,2,NULL),(1599,67,77,2,NULL),(1600,68,77,2,NULL),(1601,118,77,2,NULL),(1602,119,77,2,NULL),(1603,82,85,2,NULL),(1604,97,85,2,NULL),(1605,102,85,2,NULL),(1606,82,86,2,NULL),(1607,97,86,2,NULL),(1608,102,86,2,NULL),(1609,82,87,2,NULL),(1610,97,87,2,NULL),(1611,102,87,2,NULL),(1612,82,88,2,NULL),(1613,97,88,2,NULL),(1614,102,88,2,NULL),(1615,82,89,2,NULL),(1616,97,89,2,NULL),(1617,102,89,2,NULL),(1618,82,90,2,NULL),(1619,97,90,2,NULL),(1620,102,90,2,NULL),(1621,82,91,2,NULL),(1622,97,91,2,NULL),(1623,102,91,2,NULL),(1624,82,92,2,NULL),(1625,97,92,2,NULL),(1626,102,92,2,NULL),(1627,82,94,2,NULL),(1628,97,94,2,NULL),(1629,102,94,2,NULL),(1630,79,81,2,NULL),(1631,85,80,2,NULL),(1632,110,77,2,NULL),(1633,123,79,2,NULL),(1634,4,78,2,NULL),(1635,5,78,2,NULL),(1636,6,78,2,NULL),(1637,7,78,2,NULL),(1638,8,78,2,NULL),(1639,9,78,2,NULL),(1640,10,78,2,NULL),(1641,11,78,2,NULL),(1642,12,78,2,NULL),(1643,13,78,2,NULL),(1644,14,78,2,NULL),(1645,15,78,2,NULL),(1646,16,78,2,NULL),(1647,17,78,2,NULL),(1648,19,78,2,NULL),(1649,20,78,2,NULL),(1650,21,78,2,NULL),(1651,23,78,2,NULL),(1652,24,78,2,NULL),(1653,25,78,2,NULL),(1654,26,78,2,NULL),(1655,27,78,2,NULL),(1656,28,78,2,NULL),(1657,29,78,2,NULL),(1658,30,78,2,NULL),(1659,31,78,2,NULL),(1660,32,78,2,NULL),(1661,34,78,2,NULL),(1662,36,78,2,NULL),(1663,37,78,2,NULL),(1664,39,78,2,NULL),(1665,41,78,2,NULL),(1666,43,78,2,NULL),(1667,1,78,2,NULL),(1668,45,78,2,NULL),(1669,33,78,2,NULL),(1670,35,78,2,NULL),(1671,46,78,2,NULL),(1672,47,78,2,NULL),(1673,49,78,2,NULL),(1674,50,78,2,NULL),(1675,51,78,2,NULL),(1676,52,78,2,NULL),(1677,94,78,2,NULL),(1678,98,78,2,NULL),(1679,137,78,2,NULL),(1680,69,78,2,NULL),(1681,71,78,2,NULL),(1682,76,78,2,NULL),(1683,78,78,2,NULL),(1684,81,78,2,NULL),(1685,88,78,2,NULL),(1686,95,78,2,NULL),(1687,83,78,2,NULL),(1688,86,78,2,NULL),(1689,125,78,2,NULL),(1690,67,78,2,NULL),(1691,68,78,2,NULL),(1692,118,78,2,NULL),(1693,119,78,2,NULL),(1694,84,81,2,NULL),(1695,92,80,2,NULL),(1696,100,75,2,NULL),(1697,117,77,2,NULL),(1698,94,1,2,NULL),(1699,98,1,2,NULL),(1700,137,1,2,NULL),(1701,4,79,2,NULL),(1702,5,79,2,NULL),(1703,6,79,2,NULL),(1704,7,79,2,NULL),(1705,8,79,2,NULL),(1706,9,79,2,NULL),(1707,10,79,2,NULL),(1708,11,79,2,NULL),(1709,12,79,2,NULL),(1710,13,79,2,NULL),(1711,14,79,2,NULL),(1712,15,79,2,NULL),(1713,16,79,2,NULL),(1714,17,79,2,NULL),(1715,19,79,2,NULL),(1716,20,79,2,NULL),(1717,21,79,2,NULL),(1718,23,79,2,NULL),(1719,24,79,2,NULL),(1720,25,79,2,NULL),(1721,26,79,2,NULL),(1722,27,79,2,NULL),(1723,28,79,2,NULL),(1724,29,79,2,NULL),(1725,30,79,2,NULL),(1726,31,79,2,NULL),(1727,32,79,2,NULL),(1728,34,79,2,NULL),(1729,36,79,2,NULL),(1730,37,79,2,NULL),(1731,39,79,2,NULL),(1732,41,79,2,NULL),(1733,43,79,2,NULL),(1734,94,3,2,NULL),(1735,98,3,2,NULL),(1736,137,3,2,NULL),(1737,1,79,2,NULL),(1738,45,79,2,NULL),(1739,94,4,2,NULL),(1740,98,4,2,NULL),(1741,137,4,2,NULL),(1742,94,19,2,NULL),(1743,98,19,2,NULL),(1744,137,19,2,NULL),(1745,94,20,2,NULL),(1746,98,20,2,NULL),(1747,137,20,2,NULL),(1748,94,60,2,NULL),(1749,98,60,2,NULL),(1750,137,60,2,NULL),(1751,94,63,2,NULL),(1752,98,63,2,NULL),(1753,137,63,2,NULL),(1754,94,66,2,NULL),(1755,98,66,2,NULL),(1756,137,66,2,NULL),(1757,94,11,2,NULL),(1758,98,11,2,NULL),(1759,137,11,2,NULL),(1760,33,79,2,NULL),(1761,35,79,2,NULL),(1762,46,79,2,NULL),(1763,47,79,2,NULL),(1764,49,79,2,NULL),(1765,50,79,2,NULL),(1766,51,79,2,NULL),(1767,52,79,2,NULL),(1768,94,17,2,NULL),(1769,98,17,2,NULL),(1770,137,17,2,NULL),(1771,94,18,2,NULL),(1772,98,18,2,NULL),(1773,137,18,2,NULL),(1774,94,45,2,NULL),(1775,98,45,2,NULL),(1776,137,45,2,NULL),(1777,94,80,2,NULL),(1778,98,80,2,NULL),(1779,137,80,2,NULL),(1780,69,79,2,NULL),(1781,71,79,2,NULL),(1782,76,79,2,NULL),(1783,78,79,2,NULL),(1784,81,79,2,NULL),(1785,88,79,2,NULL),(1786,95,79,2,NULL),(1787,94,81,2,NULL),(1788,98,81,2,NULL),(1789,137,81,2,NULL),(1790,83,79,2,NULL),(1791,86,79,2,NULL),(1792,125,79,2,NULL),(1793,94,82,2,NULL),(1794,98,82,2,NULL),(1795,137,82,2,NULL),(1796,67,79,2,NULL),(1797,68,79,2,NULL),(1798,118,79,2,NULL),(1799,119,79,2,NULL),(1800,94,85,2,NULL),(1801,98,85,2,NULL),(1802,137,85,2,NULL),(1803,94,86,2,NULL),(1804,98,86,2,NULL),(1805,137,86,2,NULL),(1806,94,87,2,NULL),(1807,98,87,2,NULL),(1808,137,87,2,NULL),(1809,94,88,2,NULL),(1810,98,88,2,NULL),(1811,137,88,2,NULL),(1812,94,89,2,NULL),(1813,98,89,2,NULL),(1814,137,89,2,NULL),(1815,94,90,2,NULL),(1816,98,90,2,NULL),(1817,137,90,2,NULL),(1818,94,91,2,NULL),(1819,98,91,2,NULL),(1820,137,91,2,NULL),(1821,94,92,2,NULL),(1822,98,92,2,NULL),(1823,137,92,2,NULL),(1824,94,94,2,NULL),(1825,98,94,2,NULL),(1826,137,94,2,NULL),(1827,70,81,2,NULL),(1828,89,77,2,NULL),(1829,91,78,2,NULL),(1830,128,81,2,NULL),(1831,138,83,2,NULL),(1832,69,1,2,NULL),(1833,71,1,2,NULL),(1834,76,1,2,NULL),(1835,78,1,2,NULL),(1836,81,1,2,NULL),(1837,88,1,2,NULL),(1838,95,1,2,NULL),(1839,4,80,2,NULL),(1840,5,80,2,NULL),(1841,6,80,2,NULL),(1842,7,80,2,NULL),(1843,8,80,2,NULL),(1844,9,80,2,NULL),(1845,10,80,2,NULL),(1846,11,80,2,NULL),(1847,12,80,2,NULL),(1848,13,80,2,NULL),(1849,14,80,2,NULL),(1850,15,80,2,NULL),(1851,16,80,2,NULL),(1852,17,80,2,NULL),(1853,19,80,2,NULL),(1854,20,80,2,NULL),(1855,21,80,2,NULL),(1856,23,80,2,NULL),(1857,24,80,2,NULL),(1858,25,80,2,NULL),(1859,26,80,2,NULL),(1860,27,80,2,NULL),(1861,28,80,2,NULL),(1862,29,80,2,NULL),(1863,30,80,2,NULL),(1864,31,80,2,NULL),(1865,32,80,2,NULL),(1866,34,80,2,NULL),(1867,36,80,2,NULL),(1868,37,80,2,NULL),(1869,39,80,2,NULL),(1870,41,80,2,NULL),(1871,43,80,2,NULL),(1872,69,3,2,NULL),(1873,71,3,2,NULL),(1874,76,3,2,NULL),(1875,78,3,2,NULL),(1876,81,3,2,NULL),(1877,88,3,2,NULL),(1878,95,3,2,NULL),(1879,1,80,2,NULL),(1880,45,80,2,NULL),(1881,69,4,2,NULL),(1882,71,4,2,NULL),(1883,76,4,2,NULL),(1884,78,4,2,NULL),(1885,81,4,2,NULL),(1886,88,4,2,NULL),(1887,95,4,2,NULL),(1888,69,19,2,NULL),(1889,71,19,2,NULL),(1890,76,19,2,NULL),(1891,78,19,2,NULL),(1892,81,19,2,NULL),(1893,88,19,2,NULL),(1894,95,19,2,NULL),(1895,69,20,2,NULL),(1896,71,20,2,NULL),(1897,76,20,2,NULL),(1898,78,20,2,NULL),(1899,81,20,2,NULL),(1900,88,20,2,NULL),(1901,95,20,2,NULL),(1902,69,60,2,NULL),(1903,71,60,2,NULL),(1904,76,60,2,NULL),(1905,78,60,2,NULL),(1906,81,60,2,NULL),(1907,88,60,2,NULL),(1908,95,60,2,NULL),(1909,69,63,2,NULL),(1910,71,63,2,NULL),(1911,76,63,2,NULL),(1912,78,63,2,NULL),(1913,81,63,2,NULL),(1914,88,63,2,NULL),(1915,95,63,2,NULL),(1916,69,66,2,NULL),(1917,71,66,2,NULL),(1918,76,66,2,NULL),(1919,78,66,2,NULL),(1920,81,66,2,NULL),(1921,88,66,2,NULL),(1922,95,66,2,NULL),(1923,69,11,2,NULL),(1924,71,11,2,NULL),(1925,76,11,2,NULL),(1926,78,11,2,NULL),(1927,81,11,2,NULL),(1928,88,11,2,NULL),(1929,95,11,2,NULL),(1930,33,80,2,NULL),(1931,35,80,2,NULL),(1932,46,80,2,NULL),(1933,47,80,2,NULL),(1934,49,80,2,NULL),(1935,50,80,2,NULL),(1936,51,80,2,NULL),(1937,52,80,2,NULL),(1938,69,17,2,NULL),(1939,71,17,2,NULL),(1940,76,17,2,NULL),(1941,78,17,2,NULL),(1942,81,17,2,NULL),(1943,88,17,2,NULL),(1944,95,17,2,NULL),(1945,69,18,2,NULL),(1946,71,18,2,NULL),(1947,76,18,2,NULL),(1948,78,18,2,NULL),(1949,81,18,2,NULL),(1950,88,18,2,NULL),(1951,95,18,2,NULL),(1952,69,45,2,NULL),(1953,71,45,2,NULL),(1954,76,45,2,NULL),(1955,78,45,2,NULL),(1956,81,45,2,NULL),(1957,88,45,2,NULL),(1958,95,45,2,NULL),(1959,69,81,2,NULL),(1960,71,81,2,NULL),(1961,76,81,2,NULL),(1962,78,81,2,NULL),(1963,81,81,2,NULL),(1964,88,81,2,NULL),(1965,95,81,2,NULL),(1966,83,80,2,NULL),(1967,86,80,2,NULL),(1968,125,80,2,NULL),(1969,69,82,2,NULL),(1970,71,82,2,NULL),(1971,76,82,2,NULL),(1972,78,82,2,NULL),(1973,81,82,2,NULL),(1974,88,82,2,NULL),(1975,95,82,2,NULL),(1976,67,80,2,NULL),(1977,68,80,2,NULL),(1978,118,80,2,NULL),(1979,119,80,2,NULL),(1980,69,85,2,NULL),(1981,71,85,2,NULL),(1982,76,85,2,NULL),(1983,78,85,2,NULL),(1984,81,85,2,NULL),(1985,88,85,2,NULL),(1986,95,85,2,NULL),(1987,69,86,2,NULL),(1988,71,86,2,NULL),(1989,76,86,2,NULL),(1990,78,86,2,NULL),(1991,81,86,2,NULL),(1992,88,86,2,NULL),(1993,95,86,2,NULL),(1994,69,87,2,NULL),(1995,71,87,2,NULL),(1996,76,87,2,NULL),(1997,78,87,2,NULL),(1998,81,87,2,NULL),(1999,88,87,2,NULL),(2000,95,87,2,NULL),(2001,69,88,2,NULL),(2002,71,88,2,NULL),(2003,76,88,2,NULL),(2004,78,88,2,NULL),(2005,81,88,2,NULL),(2006,88,88,2,NULL),(2007,95,88,2,NULL),(2008,69,89,2,NULL),(2009,71,89,2,NULL),(2010,76,89,2,NULL),(2011,78,89,2,NULL),(2012,81,89,2,NULL),(2013,88,89,2,NULL),(2014,95,89,2,NULL),(2015,69,90,2,NULL),(2016,71,90,2,NULL),(2017,76,90,2,NULL),(2018,78,90,2,NULL),(2019,81,90,2,NULL),(2020,88,90,2,NULL),(2021,95,90,2,NULL),(2022,69,91,2,NULL),(2023,71,91,2,NULL),(2024,76,91,2,NULL),(2025,78,91,2,NULL),(2026,81,91,2,NULL),(2027,88,91,2,NULL),(2028,95,91,2,NULL),(2029,69,92,2,NULL),(2030,71,92,2,NULL),(2031,76,92,2,NULL),(2032,78,92,2,NULL),(2033,81,92,2,NULL),(2034,88,92,2,NULL),(2035,95,92,2,NULL),(2036,69,94,2,NULL),(2037,71,94,2,NULL),(2038,76,94,2,NULL),(2039,78,94,2,NULL),(2040,81,94,2,NULL),(2041,88,94,2,NULL),(2042,95,94,2,NULL),(2043,101,83,2,NULL),(2044,107,77,2,NULL),(2045,122,75,2,NULL),(2046,124,78,2,NULL),(2047,135,80,2,NULL),(2048,83,1,2,NULL),(2049,86,1,2,NULL),(2050,125,1,2,NULL),(2051,4,81,2,NULL),(2052,5,81,2,NULL),(2053,6,81,2,NULL),(2054,7,81,2,NULL),(2055,8,81,2,NULL),(2056,9,81,2,NULL),(2057,10,81,2,NULL),(2058,11,81,2,NULL),(2059,12,81,2,NULL),(2060,13,81,2,NULL),(2061,14,81,2,NULL),(2062,15,81,2,NULL),(2063,16,81,2,NULL),(2064,17,81,2,NULL),(2065,19,81,2,NULL),(2066,20,81,2,NULL),(2067,21,81,2,NULL),(2068,23,81,2,NULL),(2069,24,81,2,NULL),(2070,25,81,2,NULL),(2071,26,81,2,NULL),(2072,27,81,2,NULL),(2073,28,81,2,NULL),(2074,29,81,2,NULL),(2075,30,81,2,NULL),(2076,31,81,2,NULL),(2077,32,81,2,NULL),(2078,34,81,2,NULL),(2079,36,81,2,NULL),(2080,37,81,2,NULL),(2081,39,81,2,NULL),(2082,41,81,2,NULL),(2083,43,81,2,NULL),(2084,83,3,2,NULL),(2085,86,3,2,NULL),(2086,125,3,2,NULL),(2087,1,81,2,NULL),(2088,45,81,2,NULL),(2089,83,4,2,NULL),(2090,86,4,2,NULL),(2091,125,4,2,NULL),(2092,83,19,2,NULL),(2093,86,19,2,NULL),(2094,125,19,2,NULL),(2095,83,20,2,NULL),(2096,86,20,2,NULL),(2097,125,20,2,NULL),(2098,83,60,2,NULL),(2099,86,60,2,NULL),(2100,125,60,2,NULL),(2101,83,63,2,NULL),(2102,86,63,2,NULL),(2103,125,63,2,NULL),(2104,83,66,2,NULL),(2105,86,66,2,NULL),(2106,125,66,2,NULL),(2107,83,11,2,NULL),(2108,86,11,2,NULL),(2109,125,11,2,NULL),(2110,33,81,2,NULL),(2111,35,81,2,NULL),(2112,46,81,2,NULL),(2113,47,81,2,NULL),(2114,49,81,2,NULL),(2115,50,81,2,NULL),(2116,51,81,2,NULL),(2117,52,81,2,NULL),(2118,83,17,2,NULL),(2119,86,17,2,NULL),(2120,125,17,2,NULL),(2121,83,18,2,NULL),(2122,86,18,2,NULL),(2123,125,18,2,NULL),(2124,83,45,2,NULL),(2125,86,45,2,NULL),(2126,125,45,2,NULL),(2127,83,82,2,NULL),(2128,86,82,2,NULL),(2129,125,82,2,NULL),(2130,67,81,2,NULL),(2131,68,81,2,NULL),(2132,118,81,2,NULL),(2133,119,81,2,NULL),(2134,83,85,2,NULL),(2135,86,85,2,NULL),(2136,125,85,2,NULL),(2137,83,86,2,NULL),(2138,86,86,2,NULL),(2139,125,86,2,NULL),(2140,83,87,2,NULL),(2141,86,87,2,NULL),(2142,125,87,2,NULL),(2143,83,88,2,NULL),(2144,86,88,2,NULL),(2145,125,88,2,NULL),(2146,83,89,2,NULL),(2147,86,89,2,NULL),(2148,125,89,2,NULL),(2149,83,90,2,NULL),(2150,86,90,2,NULL),(2151,125,90,2,NULL),(2152,83,91,2,NULL),(2153,86,91,2,NULL),(2154,125,91,2,NULL),(2155,83,92,2,NULL),(2156,86,92,2,NULL),(2157,125,92,2,NULL),(2158,83,94,2,NULL),(2159,86,94,2,NULL),(2160,125,94,2,NULL),(2161,64,81,2,NULL),(2162,75,77,2,NULL),(2163,132,80,2,NULL),(2164,133,78,2,NULL),(2165,4,82,2,NULL),(2166,5,82,2,NULL),(2167,6,82,2,NULL),(2168,7,82,2,NULL),(2169,8,82,2,NULL),(2170,9,82,2,NULL),(2171,10,82,2,NULL),(2172,11,82,2,NULL),(2173,12,82,2,NULL),(2174,13,82,2,NULL),(2175,14,82,2,NULL),(2176,15,82,2,NULL),(2177,16,82,2,NULL),(2178,17,82,2,NULL),(2179,19,82,2,NULL),(2180,20,82,2,NULL),(2181,21,82,2,NULL),(2182,23,82,2,NULL),(2183,24,82,2,NULL),(2184,25,82,2,NULL),(2185,26,82,2,NULL),(2186,27,82,2,NULL),(2187,28,82,2,NULL),(2188,29,82,2,NULL),(2189,30,82,2,NULL),(2190,31,82,2,NULL),(2191,32,82,2,NULL),(2192,34,82,2,NULL),(2193,36,82,2,NULL),(2194,37,82,2,NULL),(2195,39,82,2,NULL),(2196,41,82,2,NULL),(2197,43,82,2,NULL),(2198,1,82,2,NULL),(2199,45,82,2,NULL),(2200,33,82,2,NULL),(2201,35,82,2,NULL),(2202,46,82,2,NULL),(2203,47,82,2,NULL),(2204,49,82,2,NULL),(2205,50,82,2,NULL),(2206,51,82,2,NULL),(2207,52,82,2,NULL),(2208,67,82,2,NULL),(2209,68,82,2,NULL),(2210,118,82,2,NULL),(2211,119,82,2,NULL),(2212,67,1,2,NULL),(2213,68,1,2,NULL),(2214,118,1,2,NULL),(2215,119,1,2,NULL),(2216,67,3,2,NULL),(2217,68,3,2,NULL),(2218,118,3,2,NULL),(2219,119,3,2,NULL),(2220,67,4,2,NULL),(2221,68,4,2,NULL),(2222,118,4,2,NULL),(2223,119,4,2,NULL),(2224,67,19,2,NULL),(2225,68,19,2,NULL),(2226,118,19,2,NULL),(2227,119,19,2,NULL),(2228,67,20,2,NULL),(2229,68,20,2,NULL),(2230,118,20,2,NULL),(2231,119,20,2,NULL),(2232,67,60,2,NULL),(2233,68,60,2,NULL),(2234,118,60,2,NULL),(2235,119,60,2,NULL),(2236,67,63,2,NULL),(2237,68,63,2,NULL),(2238,118,63,2,NULL),(2239,119,63,2,NULL),(2240,67,66,2,NULL),(2241,68,66,2,NULL),(2242,118,66,2,NULL),(2243,119,66,2,NULL),(2244,67,11,2,NULL),(2245,68,11,2,NULL),(2246,118,11,2,NULL),(2247,119,11,2,NULL),(2248,67,17,2,NULL),(2249,68,17,2,NULL),(2250,118,17,2,NULL),(2251,119,17,2,NULL),(2252,67,18,2,NULL),(2253,68,18,2,NULL),(2254,118,18,2,NULL),(2255,119,18,2,NULL),(2256,67,45,2,NULL),(2257,68,45,2,NULL),(2258,118,45,2,NULL),(2259,119,45,2,NULL),(2260,67,85,2,NULL),(2261,68,85,2,NULL),(2262,118,85,2,NULL),(2263,119,85,2,NULL),(2264,67,86,2,NULL),(2265,68,86,2,NULL),(2266,118,86,2,NULL),(2267,119,86,2,NULL),(2268,67,87,2,NULL),(2269,68,87,2,NULL),(2270,118,87,2,NULL),(2271,119,87,2,NULL),(2272,67,88,2,NULL),(2273,68,88,2,NULL),(2274,118,88,2,NULL),(2275,119,88,2,NULL),(2276,67,89,2,NULL),(2277,68,89,2,NULL),(2278,118,89,2,NULL),(2279,119,89,2,NULL),(2280,67,90,2,NULL),(2281,68,90,2,NULL),(2282,118,90,2,NULL),(2283,119,90,2,NULL),(2284,67,91,2,NULL),(2285,68,91,2,NULL),(2286,118,91,2,NULL),(2287,119,91,2,NULL),(2288,67,92,2,NULL),(2289,68,92,2,NULL),(2290,118,92,2,NULL),(2291,119,92,2,NULL),(2292,67,94,2,NULL),(2293,68,94,2,NULL),(2294,118,94,2,NULL),(2295,119,94,2,NULL),(2296,4,85,2,NULL),(2297,5,85,2,NULL),(2298,6,85,2,NULL),(2299,7,85,2,NULL),(2300,8,85,2,NULL),(2301,9,85,2,NULL),(2302,10,85,2,NULL),(2303,11,85,2,NULL),(2304,12,85,2,NULL),(2305,13,85,2,NULL),(2306,14,85,2,NULL),(2307,15,85,2,NULL),(2308,16,85,2,NULL),(2309,17,85,2,NULL),(2310,19,85,2,NULL),(2311,20,85,2,NULL),(2312,21,85,2,NULL),(2313,23,85,2,NULL),(2314,24,85,2,NULL),(2315,25,85,2,NULL),(2316,26,85,2,NULL),(2317,27,85,2,NULL),(2318,28,85,2,NULL),(2319,29,85,2,NULL),(2320,30,85,2,NULL),(2321,31,85,2,NULL),(2322,32,85,2,NULL),(2323,34,85,2,NULL),(2324,36,85,2,NULL),(2325,37,85,2,NULL),(2326,39,85,2,NULL),(2327,41,85,2,NULL),(2328,43,85,2,NULL),(2329,1,85,2,NULL),(2330,45,85,2,NULL),(2331,33,85,2,NULL),(2332,35,85,2,NULL),(2333,46,85,2,NULL),(2334,47,85,2,NULL),(2335,49,85,2,NULL),(2336,50,85,2,NULL),(2337,51,85,2,NULL),(2338,52,85,2,NULL),(2339,127,24,2,NULL),(2340,127,84,2,NULL),(2341,4,86,2,NULL),(2342,5,86,2,NULL),(2343,6,86,2,NULL),(2344,7,86,2,NULL),(2345,8,86,2,NULL),(2346,9,86,2,NULL),(2347,10,86,2,NULL),(2348,11,86,2,NULL),(2349,12,86,2,NULL),(2350,13,86,2,NULL),(2351,14,86,2,NULL),(2352,15,86,2,NULL),(2353,16,86,2,NULL),(2354,17,86,2,NULL),(2355,19,86,2,NULL),(2356,20,86,2,NULL),(2357,21,86,2,NULL),(2358,23,86,2,NULL),(2359,24,86,2,NULL),(2360,25,86,2,NULL),(2361,26,86,2,NULL),(2362,27,86,2,NULL),(2363,28,86,2,NULL),(2364,29,86,2,NULL),(2365,30,86,2,NULL),(2366,31,86,2,NULL),(2367,32,86,2,NULL),(2368,34,86,2,NULL),(2369,36,86,2,NULL),(2370,37,86,2,NULL),(2371,39,86,2,NULL),(2372,41,86,2,NULL),(2373,43,86,2,NULL),(2374,1,86,2,NULL),(2375,45,86,2,NULL),(2376,33,86,2,NULL),(2377,35,86,2,NULL),(2378,46,86,2,NULL),(2379,47,86,2,NULL),(2380,49,86,2,NULL),(2381,50,86,2,NULL),(2382,51,86,2,NULL),(2383,52,86,2,NULL),(2384,4,87,2,NULL),(2385,5,87,2,NULL),(2386,6,87,2,NULL),(2387,7,87,2,NULL),(2388,8,87,2,NULL),(2389,9,87,2,NULL),(2390,10,87,2,NULL),(2391,11,87,2,NULL),(2392,12,87,2,NULL),(2393,13,87,2,NULL),(2394,14,87,2,NULL),(2395,15,87,2,NULL),(2396,16,87,2,NULL),(2397,17,87,2,NULL),(2398,19,87,2,NULL),(2399,20,87,2,NULL),(2400,21,87,2,NULL),(2401,23,87,2,NULL),(2402,24,87,2,NULL),(2403,25,87,2,NULL),(2404,26,87,2,NULL),(2405,27,87,2,NULL),(2406,28,87,2,NULL),(2407,29,87,2,NULL),(2408,30,87,2,NULL),(2409,31,87,2,NULL),(2410,32,87,2,NULL),(2411,34,87,2,NULL),(2412,36,87,2,NULL),(2413,37,87,2,NULL),(2414,39,87,2,NULL),(2415,41,87,2,NULL),(2416,43,87,2,NULL),(2417,1,87,2,NULL),(2418,45,87,2,NULL),(2419,33,87,2,NULL),(2420,35,87,2,NULL),(2421,46,87,2,NULL),(2422,47,87,2,NULL),(2423,49,87,2,NULL),(2424,50,87,2,NULL),(2425,51,87,2,NULL),(2426,52,87,2,NULL),(2427,4,88,2,NULL),(2428,5,88,2,NULL),(2429,6,88,2,NULL),(2430,7,88,2,NULL),(2431,8,88,2,NULL),(2432,9,88,2,NULL),(2433,10,88,2,NULL),(2434,11,88,2,NULL),(2435,12,88,2,NULL),(2436,13,88,2,NULL),(2437,14,88,2,NULL),(2438,15,88,2,NULL),(2439,16,88,2,NULL),(2440,17,88,2,NULL),(2441,19,88,2,NULL),(2442,20,88,2,NULL),(2443,21,88,2,NULL),(2444,23,88,2,NULL),(2445,24,88,2,NULL),(2446,25,88,2,NULL),(2447,26,88,2,NULL),(2448,27,88,2,NULL),(2449,28,88,2,NULL),(2450,29,88,2,NULL),(2451,30,88,2,NULL),(2452,31,88,2,NULL),(2453,32,88,2,NULL),(2454,34,88,2,NULL),(2455,36,88,2,NULL),(2456,37,88,2,NULL),(2457,39,88,2,NULL),(2458,41,88,2,NULL),(2459,43,88,2,NULL),(2460,1,88,2,NULL),(2461,45,88,2,NULL),(2462,33,88,2,NULL),(2463,35,88,2,NULL),(2464,46,88,2,NULL),(2465,47,88,2,NULL),(2466,49,88,2,NULL),(2467,50,88,2,NULL),(2468,51,88,2,NULL),(2469,52,88,2,NULL),(2470,4,89,2,NULL),(2471,5,89,2,NULL),(2472,6,89,2,NULL),(2473,7,89,2,NULL),(2474,8,89,2,NULL),(2475,9,89,2,NULL),(2476,10,89,2,NULL),(2477,11,89,2,NULL),(2478,12,89,2,NULL),(2479,13,89,2,NULL),(2480,14,89,2,NULL),(2481,15,89,2,NULL),(2482,16,89,2,NULL),(2483,17,89,2,NULL),(2484,19,89,2,NULL),(2485,20,89,2,NULL),(2486,21,89,2,NULL),(2487,23,89,2,NULL),(2488,3,3,2,NULL),(2489,24,89,2,NULL),(2490,25,89,2,NULL),(2491,53,2,2,NULL),(2492,26,89,2,NULL),(2493,5,1,2,NULL),(2494,27,89,2,NULL),(2495,6,1,2,NULL),(2496,28,89,2,NULL),(2497,7,1,2,NULL),(2498,29,89,2,NULL),(2499,30,89,2,NULL),(2500,8,1,2,NULL),(2501,31,89,2,NULL),(2502,32,89,2,NULL),(2503,9,1,2,NULL),(2504,34,89,2,NULL),(2505,36,89,2,NULL),(2506,10,1,2,NULL),(2507,37,89,2,NULL),(2508,11,1,2,NULL),(2509,39,89,2,NULL),(2510,12,1,2,NULL),(2511,41,89,2,NULL),(2512,13,1,2,NULL),(2513,43,89,2,NULL),(2514,14,1,2,NULL),(2515,1,89,2,NULL),(2516,15,1,2,NULL),(2517,45,89,2,NULL),(2518,16,1,2,NULL),(2519,33,89,2,NULL),(2520,17,1,2,NULL),(2521,35,89,2,NULL),(2522,19,1,2,NULL),(2523,46,89,2,NULL),(2524,47,89,2,NULL),(2525,20,1,2,NULL),(2526,49,89,2,NULL),(2527,50,89,2,NULL),(2528,21,1,2,NULL),(2529,51,89,2,NULL),(2530,23,1,2,NULL),(2531,52,89,2,NULL),(2532,24,1,2,NULL),(2533,4,90,2,NULL),(2534,25,1,2,NULL),(2535,5,90,2,NULL),(2536,26,1,2,NULL),(2537,6,90,2,NULL),(2538,27,1,2,NULL),(2539,7,90,2,NULL),(2540,28,1,2,NULL),(2541,8,90,2,NULL),(2542,29,1,2,NULL),(2543,9,90,2,NULL),(2544,30,1,2,NULL),(2545,10,90,2,NULL),(2546,31,1,2,NULL),(2547,11,90,2,NULL),(2548,32,1,2,NULL),(2549,12,90,2,NULL),(2550,34,1,2,NULL),(2551,13,90,2,NULL),(2552,36,1,2,NULL),(2553,14,90,2,NULL),(2554,37,1,2,NULL),(2555,15,90,2,NULL),(2556,39,1,2,NULL),(2557,16,90,2,NULL),(2558,41,1,2,NULL),(2559,17,90,2,NULL),(2560,43,1,2,NULL),(2561,19,90,2,NULL),(2562,4,3,2,NULL),(2563,20,90,2,NULL),(2564,1,1,2,NULL),(2565,21,90,2,NULL),(2566,45,1,2,NULL),(2567,23,90,2,NULL),(2568,4,4,2,NULL),(2569,24,90,2,NULL),(2570,4,19,2,NULL),(2571,25,90,2,NULL),(2572,4,20,2,NULL),(2573,26,90,2,NULL),(2574,4,60,2,NULL),(2575,27,90,2,NULL),(2576,4,63,2,NULL),(2577,28,90,2,NULL),(2578,4,66,2,NULL),(2579,29,90,2,NULL),(2580,4,11,2,NULL),(2581,30,90,2,NULL),(2582,33,1,2,NULL),(2583,31,90,2,NULL),(2584,35,1,2,NULL),(2585,46,1,2,NULL),(2586,47,1,2,NULL),(2587,32,90,2,NULL),(2588,49,1,2,NULL),(2589,34,90,2,NULL),(2590,50,1,2,NULL),(2591,36,90,2,NULL),(2592,51,1,2,NULL),(2593,37,90,2,NULL),(2594,52,1,2,NULL),(2595,39,90,2,NULL),(2596,4,17,2,NULL),(2597,41,90,2,NULL),(2598,4,18,2,NULL),(2599,43,90,2,NULL),(2600,4,45,2,NULL),(2601,1,90,2,NULL),(2602,45,90,2,NULL),(2603,4,91,2,NULL),(2604,33,90,2,NULL),(2605,4,92,2,NULL),(2606,35,90,2,NULL),(2607,4,94,2,NULL),(2608,46,90,2,NULL),(2609,47,90,2,NULL),(2610,49,90,2,NULL),(2611,5,3,2,NULL),(2612,50,90,2,NULL),(2613,6,3,2,NULL),(2614,51,90,2,NULL),(2615,7,3,2,NULL),(2616,52,90,2,NULL),(2617,8,3,2,NULL),(2618,5,91,2,NULL),(2619,9,3,2,NULL),(2620,6,91,2,NULL),(2621,10,3,2,NULL),(2622,7,91,2,NULL),(2623,11,3,2,NULL),(2624,8,91,2,NULL),(2625,12,3,2,NULL),(2626,9,91,2,NULL),(2627,13,3,2,NULL),(2628,10,91,2,NULL),(2629,14,3,2,NULL),(2630,11,91,2,NULL),(2631,15,3,2,NULL),(2632,12,91,2,NULL),(2633,16,3,2,NULL),(2634,13,91,2,NULL),(2635,17,3,2,NULL),(2636,14,91,2,NULL),(2637,19,3,2,NULL),(2638,15,91,2,NULL),(2639,20,3,2,NULL),(2640,16,91,2,NULL),(2641,21,3,2,NULL),(2642,17,91,2,NULL),(2643,23,3,2,NULL),(2644,19,91,2,NULL),(2645,24,3,2,NULL),(2646,20,91,2,NULL),(2647,25,3,2,NULL),(2648,21,91,2,NULL),(2649,26,3,2,NULL),(2650,23,91,2,NULL),(2651,27,3,2,NULL),(2652,24,91,2,NULL),(2653,28,3,2,NULL),(2654,25,91,2,NULL),(2655,29,3,2,NULL),(2656,26,91,2,NULL),(2657,30,3,2,NULL),(2658,27,91,2,NULL),(2659,31,3,2,NULL),(2660,28,91,2,NULL),(2661,32,3,2,NULL),(2662,29,91,2,NULL),(2663,34,3,2,NULL),(2664,30,91,2,NULL),(2665,36,3,2,NULL),(2666,31,91,2,NULL),(2667,37,3,2,NULL),(2668,32,91,2,NULL),(2669,39,3,2,NULL),(2670,34,91,2,NULL),(2671,41,3,2,NULL),(2672,36,91,2,NULL),(2673,43,3,2,NULL),(2674,37,91,2,NULL),(2675,5,4,2,NULL),(2676,39,91,2,NULL),(2677,6,4,2,NULL),(2678,41,91,2,NULL),(2679,7,4,2,NULL),(2680,43,91,2,NULL),(2681,8,4,2,NULL),(2682,1,91,2,NULL),(2683,9,4,2,NULL),(2684,45,91,2,NULL),(2685,10,4,2,NULL),(2686,33,91,2,NULL),(2687,11,4,2,NULL),(2688,35,91,2,NULL),(2689,12,4,2,NULL),(2690,46,91,2,NULL),(2691,13,4,2,NULL),(2692,47,91,2,NULL),(2693,14,4,2,NULL),(2694,49,91,2,NULL),(2695,15,4,2,NULL),(2696,50,91,2,NULL),(2697,16,4,2,NULL),(2698,51,91,2,NULL),(2699,17,4,2,NULL),(2700,52,91,2,NULL),(2701,19,4,2,NULL),(2702,5,92,2,NULL),(2703,20,4,2,NULL),(2704,6,92,2,NULL),(2705,21,4,2,NULL),(2706,7,92,2,NULL),(2707,23,4,2,NULL),(2708,8,92,2,NULL),(2709,24,4,2,NULL),(2710,9,92,2,NULL),(2711,25,4,2,NULL),(2712,10,92,2,NULL),(2713,26,4,2,NULL),(2714,11,92,2,NULL),(2715,27,4,2,NULL),(2716,12,92,2,NULL),(2717,28,4,2,NULL),(2718,13,92,2,NULL),(2719,29,4,2,NULL),(2720,14,92,2,NULL),(2721,30,4,2,NULL),(2722,15,92,2,NULL),(2723,31,4,2,NULL),(2724,16,92,2,NULL),(2725,32,4,2,NULL),(2726,17,92,2,NULL),(2727,34,4,2,NULL),(2728,19,92,2,NULL),(2729,36,4,2,NULL),(2730,20,92,2,NULL),(2731,37,4,2,NULL),(2732,21,92,2,NULL),(2733,39,4,2,NULL),(2734,23,92,2,NULL),(2735,41,4,2,NULL),(2736,24,92,2,NULL),(2737,43,4,2,NULL),(2738,25,92,2,NULL),(2739,5,19,2,NULL),(2740,26,92,2,NULL),(2741,6,19,2,NULL),(2742,27,92,2,NULL),(2743,7,19,2,NULL),(2744,28,92,2,NULL),(2745,8,19,2,NULL),(2746,29,92,2,NULL),(2747,9,19,2,NULL),(2748,30,92,2,NULL),(2749,10,19,2,NULL),(2750,31,92,2,NULL),(2751,11,19,2,NULL),(2752,32,92,2,NULL),(2753,12,19,2,NULL),(2754,34,92,2,NULL),(2755,13,19,2,NULL),(2756,36,92,2,NULL),(2757,14,19,2,NULL),(2758,37,92,2,NULL),(2759,15,19,2,NULL),(2760,39,92,2,NULL),(2761,16,19,2,NULL),(2762,41,92,2,NULL),(2763,17,19,2,NULL),(2764,43,92,2,NULL),(2765,19,19,2,NULL),(2766,1,92,2,NULL),(2767,20,19,2,NULL),(2768,45,92,2,NULL),(2769,21,19,2,NULL),(2770,33,92,2,NULL),(2771,23,19,2,NULL),(2772,35,92,2,NULL),(2773,24,19,2,NULL),(2774,46,92,2,NULL),(2775,25,19,2,NULL),(2776,47,92,2,NULL),(2777,26,19,2,NULL),(2778,49,92,2,NULL),(2779,27,19,2,NULL),(2780,50,92,2,NULL),(2781,28,19,2,NULL),(2782,51,92,2,NULL),(2783,29,19,2,NULL),(2784,52,92,2,NULL),(2785,30,19,2,NULL),(2786,5,94,2,NULL),(2787,31,19,2,NULL),(2788,6,94,2,NULL),(2789,32,19,2,NULL),(2790,7,94,2,NULL),(2791,34,19,2,NULL),(2792,8,94,2,NULL),(2793,36,19,2,NULL),(2794,9,94,2,NULL),(2795,37,19,2,NULL),(2796,10,94,2,NULL),(2797,39,19,2,NULL),(2798,11,94,2,NULL),(2799,41,19,2,NULL),(2800,12,94,2,NULL),(2801,43,19,2,NULL),(2802,13,94,2,NULL),(2803,5,20,2,NULL),(2804,14,94,2,NULL),(2805,6,20,2,NULL),(2806,15,94,2,NULL),(2807,7,20,2,NULL),(2808,16,94,2,NULL),(2809,8,20,2,NULL),(2810,17,94,2,NULL),(2811,9,20,2,NULL),(2812,19,94,2,NULL),(2813,10,20,2,NULL),(2814,20,94,2,NULL),(2815,11,20,2,NULL),(2816,21,94,2,NULL),(2817,12,20,2,NULL),(2818,23,94,2,NULL),(2819,13,20,2,NULL),(2820,24,94,2,NULL),(2821,14,20,2,NULL),(2822,25,94,2,NULL),(2823,15,20,2,NULL),(2824,26,94,2,NULL),(2825,16,20,2,NULL),(2826,27,94,2,NULL),(2827,17,20,2,NULL),(2828,28,94,2,NULL),(2829,19,20,2,NULL),(2830,29,94,2,NULL),(2831,20,20,2,NULL),(2832,30,94,2,NULL),(2833,21,20,2,NULL),(2834,31,94,2,NULL),(2835,23,20,2,NULL),(2836,32,94,2,NULL),(2837,24,20,2,NULL),(2838,34,94,2,NULL),(2839,25,20,2,NULL),(2840,36,94,2,NULL),(2841,26,20,2,NULL),(2842,37,94,2,NULL),(2843,27,20,2,NULL),(2844,39,94,2,NULL),(2845,28,20,2,NULL),(2846,41,94,2,NULL),(2847,29,20,2,NULL),(2848,43,94,2,NULL),(2849,30,20,2,NULL),(2850,1,94,2,NULL),(2851,31,20,2,NULL),(2852,45,94,2,NULL),(2853,32,20,2,NULL),(2854,33,94,2,NULL),(2855,34,20,2,NULL),(2856,35,94,2,NULL),(2857,36,20,2,NULL),(2858,46,94,2,NULL),(2859,37,20,2,NULL),(2860,47,94,2,NULL),(2861,39,20,2,NULL),(2862,49,94,2,NULL),(2863,41,20,2,NULL),(2864,50,94,2,NULL),(2865,43,20,2,NULL),(2866,51,94,2,NULL),(2867,5,60,2,NULL),(2868,52,94,2,NULL),(2869,6,60,2,NULL),(2870,7,60,2,NULL),(2871,8,60,2,NULL),(2872,9,60,2,NULL),(2873,10,60,2,NULL),(2874,11,60,2,NULL),(2875,12,60,2,NULL),(2876,13,60,2,NULL),(2877,14,60,2,NULL),(2878,15,60,2,NULL),(2879,16,60,2,NULL),(2880,17,60,2,NULL),(2881,19,60,2,NULL),(2882,20,60,2,NULL),(2883,21,60,2,NULL),(2884,23,60,2,NULL),(2885,24,60,2,NULL),(2886,25,60,2,NULL),(2887,26,60,2,NULL),(2888,27,60,2,NULL),(2889,28,60,2,NULL),(2890,29,60,2,NULL),(2891,30,60,2,NULL),(2892,31,60,2,NULL),(2893,32,60,2,NULL),(2894,34,60,2,NULL),(2895,36,60,2,NULL),(2896,37,60,2,NULL),(2897,39,60,2,NULL),(2898,41,60,2,NULL),(2899,43,60,2,NULL),(2900,5,63,2,NULL),(2901,6,63,2,NULL),(2902,7,63,2,NULL),(2903,8,63,2,NULL),(2904,9,63,2,NULL),(2905,10,63,2,NULL),(2906,11,63,2,NULL),(2907,12,63,2,NULL),(2908,13,63,2,NULL),(2909,14,63,2,NULL),(2910,15,63,2,NULL),(2911,16,63,2,NULL),(2912,17,63,2,NULL),(2913,19,63,2,NULL),(2914,20,63,2,NULL),(2915,21,63,2,NULL),(2916,23,63,2,NULL),(2917,24,63,2,NULL),(2918,25,63,2,NULL),(2919,26,63,2,NULL),(2920,27,63,2,NULL),(2921,28,63,2,NULL),(2922,29,63,2,NULL),(2923,30,63,2,NULL),(2924,31,63,2,NULL),(2925,32,63,2,NULL),(2926,34,63,2,NULL),(2927,36,63,2,NULL),(2928,37,63,2,NULL),(2929,39,63,2,NULL),(2930,41,63,2,NULL),(2931,43,63,2,NULL),(2932,5,66,2,NULL),(2933,6,66,2,NULL),(2934,7,66,2,NULL),(2935,8,66,2,NULL),(2936,9,66,2,NULL),(2937,10,66,2,NULL),(2938,11,66,2,NULL),(2939,12,66,2,NULL),(2940,13,66,2,NULL),(2941,14,66,2,NULL),(2942,15,66,2,NULL),(2943,16,66,2,NULL),(2944,17,66,2,NULL),(2945,19,66,2,NULL),(2946,20,66,2,NULL),(2947,21,66,2,NULL),(2948,23,66,2,NULL),(2949,24,66,2,NULL),(2950,25,66,2,NULL),(2951,26,66,2,NULL),(2952,27,66,2,NULL),(2953,28,66,2,NULL),(2954,29,66,2,NULL),(2955,30,66,2,NULL),(2956,31,66,2,NULL),(2957,32,66,2,NULL),(2958,34,66,2,NULL),(2959,36,66,2,NULL),(2960,37,66,2,NULL),(2961,39,66,2,NULL),(2962,41,66,2,NULL),(2963,43,66,2,NULL),(2964,5,11,2,NULL),(2965,6,11,2,NULL),(2966,7,11,2,NULL),(2967,8,11,2,NULL),(2968,9,11,2,NULL),(2969,10,11,2,NULL),(2970,11,11,2,NULL),(2971,12,11,2,NULL),(2972,13,11,2,NULL),(2973,14,11,2,NULL),(2974,15,11,2,NULL),(2975,16,11,2,NULL),(2976,17,11,2,NULL),(2977,19,11,2,NULL),(2978,20,11,2,NULL),(2979,21,11,2,NULL),(2980,23,11,2,NULL),(2981,24,11,2,NULL),(2982,25,11,2,NULL),(2983,26,11,2,NULL),(2984,27,11,2,NULL),(2985,28,11,2,NULL),(2986,29,11,2,NULL),(2987,30,11,2,NULL),(2988,31,11,2,NULL),(2989,32,11,2,NULL),(2990,34,11,2,NULL),(2991,36,11,2,NULL),(2992,37,11,2,NULL),(2993,39,11,2,NULL),(2994,41,11,2,NULL),(2995,43,11,2,NULL),(2996,5,17,2,NULL),(2997,6,17,2,NULL),(2998,7,17,2,NULL),(2999,8,17,2,NULL),(3000,9,17,2,NULL),(3001,10,17,2,NULL),(3002,11,17,2,NULL),(3003,12,17,2,NULL),(3004,13,17,2,NULL),(3005,14,17,2,NULL),(3006,15,17,2,NULL),(3007,16,17,2,NULL),(3008,17,17,2,NULL),(3009,19,17,2,NULL),(3010,20,17,2,NULL),(3011,21,17,2,NULL),(3012,23,17,2,NULL),(3013,24,17,2,NULL),(3014,25,17,2,NULL),(3015,26,17,2,NULL),(3016,27,17,2,NULL),(3017,28,17,2,NULL),(3018,29,17,2,NULL),(3019,30,17,2,NULL),(3020,31,17,2,NULL),(3021,32,17,2,NULL),(3022,34,17,2,NULL),(3023,36,17,2,NULL),(3024,37,17,2,NULL),(3025,39,17,2,NULL),(3026,41,17,2,NULL),(3027,43,17,2,NULL),(3028,5,18,2,NULL),(3029,6,18,2,NULL),(3030,7,18,2,NULL),(3031,8,18,2,NULL),(3032,9,18,2,NULL),(3033,10,18,2,NULL),(3034,11,18,2,NULL),(3035,12,18,2,NULL),(3036,13,18,2,NULL),(3037,14,18,2,NULL),(3038,15,18,2,NULL),(3039,16,18,2,NULL),(3040,17,18,2,NULL),(3041,19,18,2,NULL),(3042,20,18,2,NULL),(3043,21,18,2,NULL),(3044,23,18,2,NULL),(3045,24,18,2,NULL),(3046,25,18,2,NULL),(3047,26,18,2,NULL),(3048,27,18,2,NULL),(3049,28,18,2,NULL),(3050,29,18,2,NULL),(3051,30,18,2,NULL),(3052,31,18,2,NULL),(3053,32,18,2,NULL),(3054,34,18,2,NULL),(3055,36,18,2,NULL),(3056,37,18,2,NULL),(3057,39,18,2,NULL),(3058,41,18,2,NULL),(3059,43,18,2,NULL),(3060,5,45,2,NULL),(3061,6,45,2,NULL),(3062,7,45,2,NULL),(3063,8,45,2,NULL),(3064,9,45,2,NULL),(3065,10,45,2,NULL),(3066,11,45,2,NULL),(3067,12,45,2,NULL),(3068,13,45,2,NULL),(3069,14,45,2,NULL),(3070,15,45,2,NULL),(3071,16,45,2,NULL),(3072,17,45,2,NULL),(3073,19,45,2,NULL),(3074,20,45,2,NULL),(3075,21,45,2,NULL),(3076,23,45,2,NULL),(3077,24,45,2,NULL),(3078,25,45,2,NULL),(3079,26,45,2,NULL),(3080,27,45,2,NULL),(3081,28,45,2,NULL),(3082,29,45,2,NULL),(3083,30,45,2,NULL),(3084,31,45,2,NULL),(3085,32,45,2,NULL),(3086,34,45,2,NULL),(3087,36,45,2,NULL),(3088,37,45,2,NULL),(3089,39,45,2,NULL),(3090,41,45,2,NULL),(3091,43,45,2,NULL),(3092,1,4,2,NULL),(3093,45,4,2,NULL),(3094,1,19,2,NULL),(3095,45,19,2,NULL),(3096,1,20,2,NULL),(3097,45,20,2,NULL),(3098,1,60,2,NULL),(3099,45,60,2,NULL),(3100,1,63,2,NULL),(3101,45,63,2,NULL),(3102,1,66,2,NULL),(3103,45,66,2,NULL),(3104,1,11,2,NULL),(3105,45,11,2,NULL),(3106,33,3,2,NULL),(3107,35,3,2,NULL),(3108,46,3,2,NULL),(3109,47,3,2,NULL),(3110,49,3,2,NULL),(3111,50,3,2,NULL),(3112,51,3,2,NULL),(3113,52,3,2,NULL),(3114,1,17,2,NULL),(3115,45,17,2,NULL),(3116,1,18,2,NULL),(3117,45,18,2,NULL),(3118,1,45,2,NULL),(3119,45,45,2,NULL),(3120,2,3,2,NULL),(3121,33,4,2,NULL),(3122,35,4,2,NULL),(3123,46,4,2,NULL),(3124,47,4,2,NULL),(3125,49,4,2,NULL),(3126,50,4,2,NULL),(3127,51,4,2,NULL),(3128,52,4,2,NULL),(3129,33,19,2,NULL),(3130,35,19,2,NULL),(3131,46,19,2,NULL),(3132,47,19,2,NULL),(3133,49,19,2,NULL),(3134,50,19,2,NULL),(3135,51,19,2,NULL),(3136,52,19,2,NULL),(3137,33,20,2,NULL),(3138,35,20,2,NULL),(3139,46,20,2,NULL),(3140,47,20,2,NULL),(3141,49,20,2,NULL),(3142,50,20,2,NULL),(3143,51,20,2,NULL),(3144,52,20,2,NULL),(3145,33,60,2,NULL),(3146,35,60,2,NULL),(3147,46,60,2,NULL),(3148,47,60,2,NULL),(3149,49,60,2,NULL),(3150,50,60,2,NULL),(3151,51,60,2,NULL),(3152,52,60,2,NULL),(3153,33,63,2,NULL),(3154,35,63,2,NULL),(3155,46,63,2,NULL),(3156,47,63,2,NULL),(3157,49,63,2,NULL),(3158,50,63,2,NULL),(3159,51,63,2,NULL),(3160,52,63,2,NULL),(3161,33,66,2,NULL),(3162,35,66,2,NULL),(3163,46,66,2,NULL),(3164,47,66,2,NULL),(3165,49,66,2,NULL),(3166,50,66,2,NULL),(3167,51,66,2,NULL),(3168,52,66,2,NULL),(3169,42,12,2,NULL),(3170,55,15,2,NULL),(3171,56,13,2,NULL),(3172,33,11,2,NULL),(3173,35,11,2,NULL),(3174,46,11,2,NULL),(3175,47,11,2,NULL),(3176,49,11,2,NULL),(3177,50,11,2,NULL),(3178,51,11,2,NULL),(3179,52,11,2,NULL),(3180,38,11,2,NULL),(3181,33,17,2,NULL),(3182,35,17,2,NULL),(3183,46,17,2,NULL),(3184,47,17,2,NULL),(3185,49,17,2,NULL),(3186,50,17,2,NULL),(3187,51,17,2,NULL),(3188,52,17,2,NULL),(3189,33,18,2,NULL),(3190,35,18,2,NULL),(3191,46,18,2,NULL),(3192,47,18,2,NULL),(3193,49,18,2,NULL),(3194,50,18,2,NULL),(3195,51,18,2,NULL),(3196,52,18,2,NULL),(3197,33,45,2,NULL),(3198,35,45,2,NULL),(3199,46,45,2,NULL),(3200,47,45,2,NULL),(3201,49,45,2,NULL),(3202,50,45,2,NULL),(3203,51,45,2,NULL),(3204,52,45,2,NULL),(3205,40,8,2,NULL),(3206,40,16,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (21,'android.permission.ACCESS_CACHE_FILESYSTEM'),(5,'android.permission.ACCESS_COARSE_LOCATION'),(28,'android.permission.ACCESS_DOWNLOAD_MANAGER'),(24,'android.permission.ACCESS_DOWNLOAD_MANAGER_ADVANCED'),(27,'android.permission.ACCESS_DRM'),(3,'android.permission.ACCESS_FINE_LOCATION'),(4,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(19,'android.permission.ACCESS_NETWORK_STATE'),(14,'android.permission.ACCESS_WIFI_STATE'),(43,'android.permission.BROADCAST_PACKAGE_REMOVED'),(40,'android.permission.BROADCAST_STICKY'),(23,'android.permission.CALL_PHONE'),(35,'android.permission.CHANGE_NETWORK_STATE'),(42,'android.permission.DEVICE_POWER'),(20,'android.permission.INSTALL_DRM'),(6,'android.permission.INSTALL_PACKAGES'),(2,'android.permission.INTERNET'),(16,'android.permission.MODIFY_PHONE_STATE'),(38,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(44,'android.permission.READ_CONTACTS'),(7,'android.permission.READ_PHONE_STATE'),(39,'android.permission.READ_SMS'),(1,'android.permission.RECEIVE_BOOT_COMPLETED'),(15,'android.permission.RECEIVE_MMS'),(11,'android.permission.RECEIVE_SMS'),(30,'android.permission.RECEIVE_WAP_PUSH'),(12,'android.permission.RECORD_AUDIO'),(45,'android.permission.RESTART_PACKAGES'),(29,'android.permission.SEND_DOWNLOAD_COMPLETED_INTENTS'),(8,'android.permission.SEND_SMS'),(34,'android.permission.VIBRATE'),(41,'android.permission.WAKE_LOCK'),(17,'android.permission.WRITE_APN_SETTINGS'),(31,'android.permission.WRITE_CALENDAR'),(25,'android.permission.WRITE_CONTACTS'),(9,'android.permission.WRITE_EXTERNAL_STORAGE'),(26,'android.permission.WRITE_OWNER_DATA'),(33,'android.permission.WRITE_SETTINGS'),(22,'android.permission.WRITE_SMS'),(32,'android.permission.WRITE_SYNC_SETTINGS'),(13,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(10,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(36,'com.android.launcher.permission.INSTALL_SHORTCUT'),(37,'com.android.permission.READ_LOGS'),(18,'com.android.vending.CHECK_LICENSE');
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'',NULL,NULL,NULL),(4,NULL,NULL,'http://support.accutracking.com/docs/androidsetup.html#config',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'http://market.android.com/details?id=com.camelgames.blowup',NULL,NULL,NULL),(8,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL),(9,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(10,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(11,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(12,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL),(13,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(14,NULL,NULL,'http://mp3.baidu.com/m?f=ms&rf=idx&tn=baidump3&ct=134217728&lf=&rn=&lm=0&word=(.*)',NULL,NULL,NULL),(15,NULL,NULL,'NULL-CONSTANT(.*)',NULL,NULL,NULL),(16,NULL,NULL,'http://wap.emoney.cn/l2/eStockL2.apk',NULL,NULL,NULL),(17,NULL,NULL,'http://wap.emoney.cn/l2/eStockL2.apk',NULL,NULL,NULL),(18,NULL,NULL,'tel:',NULL,NULL,NULL),(19,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(20,NULL,NULL,'tel:',NULL,NULL,NULL),(21,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(22,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(23,NULL,NULL,'content://sms/',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,31,8),(2,33,9),(3,44,11),(4,46,12),(5,70,13),(6,81,21),(7,91,22),(8,96,23);
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
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,2,2),(7,2,6),(8,2,7),(9,2,8),(10,2,9),(11,2,10),(12,2,11),(13,2,12),(14,2,13),(15,3,2),(16,3,6),(17,3,7),(18,3,8),(19,3,9),(20,3,10),(21,3,11),(22,3,13),(23,3,14),(24,3,15),(25,4,17),(26,4,16),(27,4,1),(28,4,19),(29,4,2),(30,4,18),(31,4,7),(32,4,9),(33,5,1),(34,5,2),(35,5,5),(36,5,7),(37,5,8),(38,5,9),(39,5,10),(40,5,11),(41,5,13),(42,5,14),(43,5,17),(44,5,19),(45,5,21),(46,5,20),(47,5,23),(48,5,22),(49,5,25),(50,5,24),(51,5,27),(52,5,26),(53,5,29),(54,5,28),(55,5,31),(56,5,30),(57,5,34),(58,5,35),(59,5,32),(60,5,33),(61,6,34),(62,6,35),(63,6,2),(64,6,38),(65,6,39),(66,6,36),(67,6,7),(68,6,37),(69,6,42),(70,6,8),(71,6,9),(72,6,40),(73,6,41),(74,6,14),(75,6,19),(76,6,22),(77,7,1),(78,7,2),(79,7,3),(80,7,33),(81,7,38),(82,7,39),(83,7,5),(84,7,6),(85,7,7),(86,7,8),(87,7,43),(88,7,9),(89,7,11),(90,7,44),(91,7,45),(92,7,17),(93,7,16),(94,7,19),(95,7,22);
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

-- Dump completed on 2015-10-09  0:39:56
