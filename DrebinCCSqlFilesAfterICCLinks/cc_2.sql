-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_2
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (26,'<INTENT>'),(2,'android.intent.action.BOOT_COMPLETED'),(23,'android.intent.action.CHOOSER'),(25,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(21,'android.intent.action.MEDIA_SCANNER_SCAN_FILE'),(11,'android.intent.action.MEDIA_SEARCH'),(8,'android.intent.action.PHONE_STATE'),(9,'android.intent.action.SEARCH'),(16,'android.intent.action.SEND'),(14,'android.intent.action.SENDTO'),(4,'android.intent.action.SIG_STR'),(6,'android.intent.action.VIEW'),(10,'android.intent.action.WEB_SEARCH'),(7,'android.net.conn.CONNECTIVITY_CHANGE'),(5,'android.provider.Telephony.SMS_RECEIVED'),(3,'com.lz.myservicestart'),(19,'com.myplayer.servicetoactivity'),(22,'com.myplayer.servicetoactivitylocal'),(20,'com.myplayer.servicetoactivityonline'),(17,'com.myplayer.servicetoactivitysonglist'),(18,'com.myplayer.toService'),(13,'com.test.sms.delivery'),(12,'com.test.sms.send'),(15,'com.xtralogic.logcollector.intent.action.SEND_LOG'),(24,'org.coolcode.service.download.IDownloadService');
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
INSERT INTO `Applications` VALUES (1,'com.tt.yy',1),(2,'com.apk.op',2),(3,'com.um.mplayer',1),(4,'com.etie',20101025),(5,'com.mibollma.zilchR2',161),(6,'org.coolcode.ringtones',16),(7,'com.ophone.MiniPlayer',1);
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
INSERT INTO `CategoryStrings` VALUES (4,'<INTENT>'),(2,'android.intent.category.DEFAULT'),(3,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.tt.yy.loginActivity'),(2,1,'com.tt.yy.ViewActivity'),(3,1,'com.xxx.yyy.MyService'),(4,1,'com.xxx.yyy.MyBoolService'),(5,1,'com.xxx.yyy.MyAlarmReceiver'),(6,2,'com.apk.op.Applause'),(7,2,'com.apk.op.OptionActivity'),(8,2,'com.android.main.TANCActivity'),(9,2,'com.android.main.MainService'),(10,2,'com.android.main.ActionReceiver'),(11,2,'com.android.main.SmsReceiver'),(12,3,'com.um.mplayer.FileList'),(13,3,'com.um.mplayer.MPMain'),(14,3,'com.um.mplayer.UMPlayList'),(15,3,'com.um.mplayer.UMZone'),(16,3,'com.um.mplayer.UMWeb'),(17,3,'com.um.mplayer.UMApp'),(18,3,'com.um.mplayer.UMPHelp'),(19,3,'com.xxx.yyy.MyService'),(20,3,'com.xxx.yyy.MyBoolService'),(21,3,'com.xxx.yyy.MyAlarmReceiver'),(22,3,'com.xxx.yyy.NetWorkReceiver'),(23,3,'com.xxx.yyy.CustomBroadcastReceiver'),(24,4,'com.etie.LoadingActivity'),(25,4,'com.etie.upload.UploadActivity'),(26,4,'com.etie.ActivityMain'),(27,5,'com.mibollma.zilchR2.NewMain'),(28,4,'com.etie.RegisterActivity'),(29,5,'com.mibollma.zilchR2.EnterNames'),(30,4,'com.etie.LoginActivity'),(31,6,'org.coolcode.ringtones.Main'),(32,5,'com.millennialmedia.android.MMAdViewOverlayActivity'),(33,4,'com.etie.home.HomeActivity'),(34,5,'com.android.main.MainService'),(35,4,'com.etie.yard.YardActivity'),(36,5,'com.android.main.ActionReceiver'),(37,6,'org.coolcode.ringtones.English'),(38,4,'com.etie.things.ThingsActivity'),(39,6,'org.coolcode.ringtones.SubCata'),(40,4,'com.etie.common.HideTabActivity'),(41,5,'com.android.main.SmsReceiver'),(42,6,'org.coolcode.ringtones.Emome'),(43,4,'com.etie.activity.FavoriteActivity'),(44,6,'org.coolcode.ringtones.Cata'),(45,4,'com.etie.attention.AttentionActivity'),(46,6,'org.coolcode.ringtones.Theme'),(47,4,'com.etie.activity.SendMessageActivity'),(48,6,'org.coolcode.ringtones.Top'),(49,4,'com.etie.activity.CommentActivity'),(50,6,'org.coolcode.ringtones.Waptt'),(51,4,'com.etie.activity.RetweetActivity'),(52,6,'org.coolcode.ringtones.SingerList'),(53,4,'com.etie.activity.ThemeListActivity'),(54,6,'org.coolcode.ringtones.Mp3'),(55,4,'com.etie.activity.ValidateActivity'),(56,6,'org.coolcode.ringtones.BaiduMp3List'),(57,4,'com.etie.activity.AboutActivity'),(58,6,'org.coolcode.ringtones.BaiduRadioList'),(59,4,'com.etie.activity.AccountActivity'),(60,6,'org.coolcode.ringtones.GoogleMp3List'),(61,4,'com.etie.activity.ServiceActivity'),(62,6,'org.coolcode.ringtones.SosoMp3List'),(63,4,'com.etie.activity.SettingActivity'),(64,6,'org.coolcode.ringtones.SearchList'),(65,4,'com.etie.activity.MessageCommentActivity'),(66,4,'com.etie.activity.ImageActivity'),(67,4,'com.etie.camera.PhotoActivity'),(68,4,'com.etie.camera.VideoActivity'),(69,4,'com.etie.upload.UploadService'),(70,6,'org.coolcode.ringtones.Setup'),(71,4,'com.xxx.yyy.MyService'),(72,4,'com.xxx.yyy.MyBoolService'),(73,4,'com.xxx.yyy.MyAlarmReceiver'),(74,4,'com.xxx.yyy.NetWorkReceiver'),(75,2,'com.android.main.MainService$SMSReceiver'),(76,6,'org.coolcode.ringtones.PreferencePage'),(77,6,'com.admob.android.ads.AdMobActivity'),(78,4,'com.xxx.yyy.CustomBroadcastReceiver'),(79,6,'com.android.main.TANCActivity'),(80,6,'com.android.main.MainService'),(81,6,'com.android.main.ActionReceiver'),(82,6,'com.android.main.SmsReceiver'),(83,7,'com.ophone.MiniPlayer.LogoActivity'),(84,7,'com.ophone.MiniPlayer.MainActivity'),(85,7,'com.ophone.MiniPlayer.MyPlayer'),(86,7,'com.ophone.MiniPlayer.MusicActivity'),(87,7,'com.ophone.MiniPlayer.MusicFeedActivity'),(88,7,'com.ophone.MiniPlayer.OnlineMusicActivity'),(89,7,'com.ophone.MiniPlayer.PlayingListActivity'),(90,5,'com.mibollma.zilchR2.NewMain$3'),(91,7,'com.ophone.MiniPlayer.lyricsactivity'),(92,7,'com.ophone.MiniPlayer.Search'),(93,5,'helper.DialogProvider$11'),(94,7,'com.ophone.MiniPlayer.MyPlayerService'),(95,7,'com.xxx.yyy.MyService'),(96,5,'com.android.main.MainService$SMSReceiver'),(97,7,'com.xxx.yyy.MyBoolService'),(98,7,'com.xxx.yyy.MyAlarmReceiver'),(99,5,'com.mibollma.zilchR2.NewMain$4'),(100,5,'helper.DialogProvider$13'),(101,5,'com.scoreninja.adapter.ScoreNinjaAdapter'),(102,3,'com.um.mplayer.UMApp$4'),(103,5,'helper.DialogProvider$12'),(104,3,'com.um.mplayer.FileList$7'),(105,3,'com.um.mplayer.FileList$1'),(106,3,'com.um.mplayer.MPMain$AsyncImgGridViewAdapter$2'),(107,3,'com.um.mplayer.FileList$3'),(108,3,'com.um.mplayer.UMPlayList$6'),(109,3,'com.um.mplayer.MPMain$19'),(110,3,'com.um.mplayer.MPMain$3'),(111,3,'com.um.mplayer.UMApp$5'),(112,3,'com.um.mplayer.UMZone$2'),(113,3,'com.um.mplayer.FileList$11'),(114,7,'com.ophone.MiniPlayer.LogoActivity$1'),(115,7,'com.ophone.MiniPlayer.PlayingListActivity$UpdateReceiver'),(116,7,'com.ophone.MiniPlayer.MyPlayerService$CommandReceiver'),(117,7,'com.ophone.MiniPlayer.MyPlayer$UpdateReceiver'),(118,7,'com.ophone.MiniPlayer.MusicActivity$9'),(119,7,'com.ophone.MiniPlayer.OnlineMusicActivity$UpdateReceiver'),(120,7,'com.ophone.MiniPlayer.Search$1'),(121,7,'com.ophone.MiniPlayer.MusicActivity$UpdateReceiver'),(122,7,'com.ophone.MiniPlayer.lyricsactivity$UpdateReceiver'),(123,6,'org.coolcode.ringtones.BaseList'),(124,6,'org.coolcode.ringtones.SubCata$6'),(125,6,'net.youmi.android.r'),(126,6,'org.coolcode.ringtones.SingerList$5'),(127,6,'org.coolcode.ringtones.Mp3$5'),(128,6,'org.coolcode.ringtones.RingtonesBaseList'),(129,6,'org.coolcode.ringtones.SubCata$9'),(130,6,'org.coolcode.ringtones.RingtonesBaseList$3'),(131,6,'org.coolcode.ringtones.SubCata$5'),(132,6,'org.coolcode.ringtones.GoogleMp3List$3'),(133,6,'org.coolcode.ringtones.Main$3'),(134,6,'net.youmi.android.q'),(135,6,'org.coolcode.ringtones.English$3'),(136,6,'org.coolcode.ringtones.SubCata$3'),(137,6,'org.coolcode.ringtones.SubCata$7'),(138,6,'net.youmi.android.n'),(139,6,'net.youmi.android.m'),(140,6,'com.android.main.MainService$SMSReceiver'),(141,6,'org.coolcode.ringtones.RingtonesBaseList$6'),(142,6,'org.coolcode.ringtones.Setup$9'),(143,6,'org.coolcode.ringtones.SubCata$4'),(144,6,'com.admob.android.ads.q'),(145,6,'org.coolcode.ringtones.SubCata$8'),(146,6,'net.youmi.android.R'),(147,4,'com.etie.LoadingActivity$4$1');
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
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,2,'SID'),(2,8,'header'),(3,8,'url'),(4,6,'GameMusic'),(5,7,'MatchSound'),(6,7,'ChangeTheme'),(7,6,'ChangeTheme'),(8,8,'message'),(9,7,'GameMusic'),(10,7,'Vibrate'),(11,11,'pdus'),(12,6,'Vibrate'),(13,6,'MatchSound'),(14,27,'name'),(15,27,'comments'),(16,32,'overlayTransition'),(17,41,'pdus'),(18,32,'shouldShowTitlebar'),(19,32,'transitionTime'),(20,32,'overlayTitle'),(21,32,'shouldResizeOverlay'),(22,27,'signature'),(23,27,'subboard'),(24,13,'VideoFile'),(25,32,'canAccelerate'),(26,14,'ListForm'),(27,16,'Title'),(28,16,'URL'),(29,90,'song'),(30,85,'song'),(31,77,'sd'),(32,77,'ad'),(33,82,'pdus'),(34,77,'oi'),(35,77,'cs'),(36,77,'b'),(37,39,'menu'),(38,79,'url'),(39,77,'u'),(40,79,'message'),(41,39,'ADMOB_PUBLISHER_ID'),(42,39,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(43,50,'ADMOB_PUBLISHER_ID'),(44,50,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(45,64,'ADMOB_PUBLISHER_ID'),(46,64,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(47,48,'ADMOB_PUBLISHER_ID'),(48,48,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(49,54,'ADMOB_PUBLISHER_ID'),(50,54,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(51,31,'ADMOB_PUBLISHER_ID'),(52,31,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(53,37,'ADMOB_PUBLISHER_ID'),(54,37,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(55,44,'ADMOB_PUBLISHER_ID'),(56,44,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(57,46,'ADMOB_PUBLISHER_ID'),(58,46,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(59,52,'ADMOB_PUBLISHER_ID'),(60,52,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(61,70,'ADMOB_PUBLISHER_ID'),(62,70,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(63,42,'ADMOB_PUBLISHER_ID'),(64,42,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(65,77,'skd'),(66,77,'t'),(67,77,'rd'),(68,77,'p'),(69,39,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(70,50,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(71,64,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(72,48,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(73,54,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(74,31,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(75,37,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(76,44,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(77,46,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(78,52,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(79,70,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(80,42,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(81,50,'title'),(82,64,'title'),(83,48,'title'),(84,44,'title'),(85,46,'title'),(86,42,'title'),(87,50,'query'),(88,64,'query'),(89,48,'query'),(90,44,'query'),(91,46,'query'),(92,42,'query'),(93,77,'su'),(94,77,'tr'),(95,54,'type'),(96,77,'json'),(97,77,'ap'),(98,77,'mi'),(99,77,'sku'),(100,77,'$'),(101,77,'au'),(102,77,'o'),(103,77,'int'),(104,77,'msm'),(105,77,'sc'),(106,77,'nosk'),(107,77,'sin'),(108,77,'or'),(109,77,'si'),(110,52,'title'),(111,77,'a'),(112,79,'header'),(113,77,'c'),(114,54,'title'),(115,77,'cbo'),(116,77,'ru'),(117,77,'s'),(118,47,'is_has_data'),(119,55,'password'),(120,49,'message_comment'),(121,55,'mobile'),(122,66,'image_url'),(123,30,'is_account'),(124,51,'message_item'),(125,69,'upload_data'),(126,53,'theme_list'),(127,49,'message_item'),(128,26,'currentTab'),(129,68,'from_send');
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
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'s',0,NULL,NULL),(4,4,'r',1,NULL,NULL),(5,5,'r',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'s',0,NULL,NULL),(10,10,'r',1,NULL,NULL),(11,11,'r',1,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'s',0,NULL,NULL),(20,20,'r',1,NULL,NULL),(21,21,'r',1,NULL,NULL),(22,22,'r',1,NULL,NULL),(23,23,'r',1,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',1,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'s',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'r',1,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'r',1,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',1,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'s',0,NULL,NULL),(70,70,'a',1,NULL,NULL),(71,71,'s',0,NULL,NULL),(72,72,'r',1,NULL,NULL),(73,73,'r',1,NULL,NULL),(74,74,'r',1,NULL,NULL),(75,75,'r',1,NULL,NULL),(76,76,'a',0,NULL,NULL),(77,77,'a',0,NULL,NULL),(78,78,'r',1,NULL,NULL),(79,79,'a',0,NULL,NULL),(80,80,'s',0,NULL,NULL),(81,81,'r',1,NULL,NULL),(82,82,'r',1,NULL,NULL),(83,83,'a',1,NULL,NULL),(84,84,'a',1,NULL,NULL),(85,85,'a',1,NULL,NULL),(86,86,'a',1,NULL,NULL),(87,87,'a',1,NULL,NULL),(88,88,'a',1,NULL,NULL),(89,89,'a',1,NULL,NULL),(90,91,'a',1,NULL,NULL),(91,92,'a',1,NULL,NULL),(92,94,'s',0,NULL,NULL),(93,95,'s',0,NULL,NULL),(94,96,'r',1,NULL,NULL),(95,97,'r',1,NULL,NULL),(96,98,'r',1,NULL,NULL),(97,115,'r',1,NULL,NULL),(98,116,'r',1,NULL,NULL),(99,117,'r',1,NULL,NULL),(100,119,'r',1,NULL,NULL),(101,121,'r',1,NULL,NULL),(102,122,'r',1,NULL,NULL),(103,140,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=394 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,3),(2,2,1),(3,3,5),(4,4,1),(5,5,6),(6,6,10),(7,7,9),(8,8,8),(9,9,6),(10,10,8),(11,11,9),(12,12,27),(13,13,27),(14,14,27),(15,15,27),(16,16,27),(17,17,36),(18,18,34),(19,19,34),(20,20,27),(21,21,12),(22,21,15),(23,21,14),(24,21,17),(25,22,27),(26,23,12),(27,23,14),(28,23,15),(29,24,13),(30,24,14),(31,24,12),(32,24,17),(33,24,18),(34,24,15),(35,24,16),(36,25,12),(37,25,13),(38,25,14),(39,25,15),(40,25,16),(41,25,17),(42,25,18),(43,26,12),(44,26,15),(45,26,16),(46,26,13),(47,26,14),(48,26,17),(49,26,18),(50,27,18),(51,27,17),(52,27,16),(53,27,15),(54,27,14),(55,27,13),(56,27,12),(57,28,16),(58,28,15),(59,28,18),(60,28,17),(61,28,12),(62,28,14),(63,28,13),(64,29,15),(65,29,14),(66,29,13),(67,29,12),(68,29,18),(69,29,17),(70,29,16),(71,30,12),(72,30,14),(73,30,15),(74,31,21),(75,32,15),(76,32,17),(77,32,12),(78,32,14),(79,32,13),(80,33,18),(81,33,16),(82,33,17),(83,33,15),(84,33,14),(85,33,13),(86,33,12),(87,34,17),(88,34,12),(89,34,14),(90,34,13),(91,34,15),(92,35,12),(93,35,14),(94,35,15),(95,36,22),(96,37,17),(97,37,12),(98,37,13),(99,37,14),(100,37,15),(101,38,83),(102,39,83),(103,40,85),(104,41,92),(105,42,93),(106,43,86),(107,44,89),(108,45,84),(109,46,85),(110,47,91),(111,48,85),(112,49,85),(113,50,89),(114,51,90),(115,52,89),(116,53,87),(117,54,84),(118,55,86),(119,56,88),(120,57,87),(121,58,83),(122,59,88),(123,60,85),(124,61,85),(125,62,88),(126,63,89),(127,64,87),(128,65,88),(129,66,96),(130,67,90),(131,68,91),(132,69,93),(133,70,90),(134,71,91),(135,72,86),(136,73,85),(137,74,89),(138,75,86),(139,76,89),(140,77,90),(141,78,90),(142,79,90),(143,80,89),(144,81,93),(145,82,91),(146,83,87),(147,84,86),(148,85,86),(149,86,86),(150,87,84),(151,88,85),(152,89,89),(153,90,89),(154,91,86),(155,92,90),(156,93,92),(157,94,92),(158,95,88),(159,96,91),(160,97,86),(161,98,89),(162,99,89),(163,100,84),(164,101,85),(165,102,88),(166,103,86),(167,104,88),(168,105,83),(169,106,93),(170,107,89),(171,108,93),(172,109,84),(173,110,90),(174,111,70),(175,112,37),(176,112,31),(177,112,39),(178,112,70),(179,112,54),(180,112,52),(181,113,31),(182,113,39),(183,113,54),(184,113,37),(185,114,60),(186,114,31),(187,114,56),(188,114,70),(189,114,54),(190,114,37),(191,114,52),(192,114,39),(193,115,60),(194,116,31),(195,116,52),(196,116,54),(197,116,37),(198,117,54),(199,117,37),(200,117,31),(201,118,81),(202,119,39),(203,119,70),(204,119,54),(205,119,31),(206,119,37),(207,119,52),(208,120,39),(209,120,70),(210,120,31),(211,120,54),(212,120,37),(213,120,52),(214,121,48),(215,121,64),(216,121,50),(217,121,44),(218,121,46),(219,121,42),(220,122,39),(221,122,54),(222,122,37),(223,122,31),(224,123,37),(225,123,52),(226,123,39),(227,123,54),(228,123,70),(229,123,56),(230,123,60),(231,123,31),(232,124,37),(233,125,39),(234,126,31),(235,126,54),(236,126,37),(237,126,39),(238,127,31),(239,127,37),(240,127,52),(241,127,56),(242,127,70),(243,127,39),(244,127,54),(245,127,60),(246,128,31),(247,128,54),(248,128,37),(249,129,60),(250,129,56),(251,129,39),(252,129,54),(253,129,70),(254,129,37),(255,129,52),(256,129,31),(257,130,31),(258,130,54),(259,130,37),(260,131,31),(261,131,37),(262,131,39),(263,131,54),(264,132,31),(265,132,54),(266,132,37),(267,132,39),(268,133,60),(269,133,31),(270,133,37),(271,133,52),(272,133,70),(273,133,39),(274,133,54),(275,133,56),(276,134,31),(277,134,52),(278,134,39),(279,134,56),(280,134,54),(281,134,37),(282,134,70),(283,134,60),(284,135,31),(285,136,54),(286,136,70),(287,136,37),(288,136,52),(289,136,31),(290,136,60),(291,136,39),(292,136,56),(293,137,39),(294,137,37),(295,137,31),(296,137,52),(297,137,54),(298,137,70),(299,138,31),(300,138,37),(301,138,54),(302,139,31),(303,139,54),(304,139,37),(305,139,70),(306,139,39),(307,139,52),(308,140,31),(309,140,39),(310,140,54),(311,140,37),(312,141,70),(313,141,54),(314,141,52),(315,141,31),(316,141,56),(317,141,79),(318,141,60),(319,141,39),(320,141,37),(321,142,76),(322,143,39),(323,143,70),(324,143,54),(325,143,31),(326,143,52),(327,143,37),(328,144,60),(329,144,56),(330,144,39),(331,144,37),(332,144,52),(333,144,54),(334,144,70),(335,144,31),(336,145,31),(337,145,54),(338,145,37),(339,145,39),(340,146,54),(341,146,37),(342,146,31),(343,147,56),(344,147,54),(345,147,37),(346,147,70),(347,147,39),(348,147,52),(349,147,60),(350,147,31),(351,148,37),(352,148,54),(353,148,31),(354,149,37),(355,149,39),(356,149,52),(357,149,70),(358,149,54),(359,149,31),(360,150,52),(361,150,79),(362,150,31),(363,150,60),(364,150,56),(365,150,37),(366,150,39),(367,150,54),(368,150,70),(369,151,37),(370,151,52),(371,151,31),(372,151,70),(373,151,54),(374,151,56),(375,151,39),(376,151,60),(377,152,73),(378,153,59),(379,153,26),(380,153,24),(381,153,47),(382,154,25),(383,155,67),(384,156,68),(385,157,67),(386,158,26),(387,159,74),(388,160,24),(389,160,59),(390,160,26),(391,160,47),(392,160,67),(393,161,68);
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
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,3,'<com.xxx.yyy.MyService: void onCreate()>',33,'p',NULL),(2,1,'<com.tt.yy.loginActivity: void StartInstall()>',10,'a',NULL),(3,5,'<com.xxx.yyy.MyAlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(4,1,'<com.tt.yy.loginActivity: void onCreate(android.os.Bundle)>',8,'s',NULL),(5,6,'<com.apk.op.Applause: void showOptionDlg()>',12,'a',NULL),(6,10,'<com.android.main.ActionReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(7,9,'<com.android.main.MainService: int insertAndroidBookmark(java.lang.String,java.lang.String)>',7,'p',NULL),(8,8,'<com.android.main.TANCActivity: void gotoUrl(java.lang.String,java.lang.String,android.content.pm.PackageManager)>',9,'a',NULL),(9,6,'<com.apk.op.Applause: void showMoreApp(int)>',8,'a',NULL),(10,8,'<com.android.main.TANCActivity: void doDefault(java.lang.String)>',5,'a',NULL),(11,9,'<com.android.main.MainService: int insertAndroidBookmark(java.lang.String,java.lang.String)>',34,'p',NULL),(12,90,'<com.mibollma.zilchR2.NewMain$3: void onClick(android.content.DialogInterface,int)>',13,'a',NULL),(13,93,'<helper.DialogProvider$11: void onClick(android.view.View)>',9,'a',NULL),(14,99,'<com.mibollma.zilchR2.NewMain$4: void onClick(android.content.DialogInterface,int)>',86,'a',NULL),(15,100,'<helper.DialogProvider$13: void onClick(android.view.View)>',9,'a',NULL),(16,27,'<com.mibollma.zilchR2.NewMain: boolean onOptionsItemSelected(android.view.MenuItem)>',34,'a',NULL),(17,36,'<com.android.main.ActionReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',NULL),(18,34,'<com.android.main.MainService: int insertAndroidBookmark(java.lang.String,java.lang.String)>',35,'p',NULL),(19,34,'<com.android.main.MainService: int insertAndroidBookmark(java.lang.String,java.lang.String)>',8,'p',NULL),(20,101,'<com.scoreninja.adapter.ScoreNinjaAdapter: void onActivityResult(int,int,android.content.Intent)>',58,'s',NULL),(21,102,'<com.um.mplayer.UMApp$4: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',29,'a',NULL),(22,103,'<helper.DialogProvider$12: void onClick(android.view.View)>',9,'a',NULL),(23,104,'<com.um.mplayer.FileList$7: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',54,'a',NULL),(24,105,'<com.um.mplayer.FileList$1: void onUMMenuItemClick(com.um.uibase.UMMenu,int,long,java.lang.String)>',22,'a',NULL),(25,105,'<com.um.mplayer.FileList$1: void onUMMenuItemClick(com.um.uibase.UMMenu,int,long,java.lang.String)>',29,'a',NULL),(26,105,'<com.um.mplayer.FileList$1: void onUMMenuItemClick(com.um.uibase.UMMenu,int,long,java.lang.String)>',36,'a',NULL),(27,105,'<com.um.mplayer.FileList$1: void onUMMenuItemClick(com.um.uibase.UMMenu,int,long,java.lang.String)>',46,'a',NULL),(28,106,'<com.um.mplayer.MPMain$AsyncImgGridViewAdapter$2: void onClick(android.view.View)>',28,'a',NULL),(29,107,'<com.um.mplayer.FileList$3: void onClick(android.view.View)>',11,'a',NULL),(30,108,'<com.um.mplayer.UMPlayList$6: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',33,'a',NULL),(31,21,'<com.xxx.yyy.MyAlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(32,109,'<com.um.mplayer.MPMain$19: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(33,110,'<com.um.mplayer.MPMain$3: void onUMMenuItemClick(com.um.uibase.UMMenu,int,long,java.lang.String)>',66,'a',NULL),(34,111,'<com.um.mplayer.UMApp$5: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(35,112,'<com.um.mplayer.UMZone$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',28,'a',NULL),(36,22,'<com.xxx.yyy.NetWorkReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',NULL),(37,113,'<com.um.mplayer.FileList$11: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(38,83,'<com.ophone.MiniPlayer.LogoActivity: void onCreate(android.os.Bundle)>',15,'s',NULL),(39,114,'<com.ophone.MiniPlayer.LogoActivity$1: void run()>',11,'a',NULL),(40,85,'<com.ophone.MiniPlayer.MyPlayer: void Init()>',4,'r',NULL),(41,94,'<com.ophone.MiniPlayer.MyPlayerService: void updateUi()>',5,'r',NULL),(42,95,'<com.xxx.yyy.MyService: void openAPN()>',15,'p',NULL),(43,86,'<com.ophone.MiniPlayer.MusicActivity: void SendAddSongtoList()>',6,'r',NULL),(44,89,'<com.ophone.MiniPlayer.PlayingListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(45,84,'<com.ophone.MiniPlayer.MainActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(46,85,'<com.ophone.MiniPlayer.MyPlayer: void onClick(android.view.View)>',14,'r',NULL),(47,92,'<com.ophone.MiniPlayer.Search: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(48,85,'<com.ophone.MiniPlayer.MyPlayer: void onCreate(android.os.Bundle)>',44,'s',NULL),(49,85,'<com.ophone.MiniPlayer.MyPlayer: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(50,89,'<com.ophone.MiniPlayer.PlayingListActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',14,'a',NULL),(51,91,'<com.ophone.MiniPlayer.lyricsactivity: void onCreate(android.os.Bundle)>',47,'s',NULL),(52,89,'<com.ophone.MiniPlayer.PlayingListActivity: void SendSonglisttoService()>',6,'r',NULL),(53,87,'<com.ophone.MiniPlayer.MusicFeedActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(54,84,'<com.ophone.MiniPlayer.MainActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(55,86,'<com.ophone.MiniPlayer.MusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(56,88,'<com.ophone.MiniPlayer.OnlineMusicActivity: void JudgePlayingOnline(int)>',17,'r',NULL),(57,87,'<com.ophone.MiniPlayer.MusicFeedActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',11,'a',NULL),(58,114,'<com.ophone.MiniPlayer.LogoActivity$1: void run()>',26,'a',NULL),(59,88,'<com.ophone.MiniPlayer.OnlineMusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(60,85,'<com.ophone.MiniPlayer.MyPlayer: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(61,85,'<com.ophone.MiniPlayer.MyPlayer: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(62,88,'<com.ophone.MiniPlayer.OnlineMusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',21,'a',NULL),(63,89,'<com.ophone.MiniPlayer.PlayingListActivity: void SendsaveSonglist(java.lang.String)>',6,'r',NULL),(64,87,'<com.ophone.MiniPlayer.MusicFeedActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(65,88,'<com.ophone.MiniPlayer.OnlineMusicActivity: void senddownloadurltoservice(java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',10,'r',NULL),(66,98,'<com.xxx.yyy.MyAlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(67,91,'<com.ophone.MiniPlayer.lyricsactivity: void onClick(android.view.View)>',14,'r',NULL),(68,92,'<com.ophone.MiniPlayer.Search: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(69,95,'<com.xxx.yyy.MyService: java.util.List getAPNList()>',5,'p',NULL),(70,91,'<com.ophone.MiniPlayer.lyricsactivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(71,92,'<com.ophone.MiniPlayer.Search: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(72,86,'<com.ophone.MiniPlayer.MusicActivity: void JudgePlaying(int)>',10,'r',NULL),(73,85,'<com.ophone.MiniPlayer.MyPlayer: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(74,89,'<com.ophone.MiniPlayer.PlayingListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(75,118,'<com.ophone.MiniPlayer.MusicActivity$9: void onClick(android.content.DialogInterface,int)>',40,'p',NULL),(76,89,'<com.ophone.MiniPlayer.PlayingListActivity: void SendGetSongList()>',4,'r',NULL),(77,91,'<com.ophone.MiniPlayer.lyricsactivity: void Init()>',4,'r',NULL),(78,91,'<com.ophone.MiniPlayer.lyricsactivity: boolean onOptionsItemSelected(android.view.MenuItem)>',23,'a',NULL),(79,91,'<com.ophone.MiniPlayer.lyricsactivity: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(80,89,'<com.ophone.MiniPlayer.PlayingListActivity: void SendClearSongList()>',4,'r',NULL),(81,95,'<com.xxx.yyy.MyService: void onCreate()>',33,'p',NULL),(82,92,'<com.ophone.MiniPlayer.Search: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(83,87,'<com.ophone.MiniPlayer.MusicFeedActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(84,86,'<com.ophone.MiniPlayer.MusicActivity: android.database.Cursor allSongs()>',12,'p',NULL),(85,86,'<com.ophone.MiniPlayer.MusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(86,86,'<com.ophone.MiniPlayer.MusicActivity: void SendAddalllocalSongtoList()>',6,'r',NULL),(87,84,'<com.ophone.MiniPlayer.MainActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(88,85,'<com.ophone.MiniPlayer.MyPlayer: void SendIsPlaying()>',6,'r',NULL),(89,89,'<com.ophone.MiniPlayer.PlayingListActivity: void onCreate(android.os.Bundle)>',16,'s',NULL),(90,89,'<com.ophone.MiniPlayer.PlayingListActivity: void sendselectfiletoservice(java.lang.String)>',6,'r',NULL),(91,86,'<com.ophone.MiniPlayer.MusicActivity: void fileScan(java.lang.String)>',9,'r',NULL),(92,91,'<com.ophone.MiniPlayer.lyricsactivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(93,94,'<com.ophone.MiniPlayer.MyPlayerService: void updateSonglistUI()>',17,'r',NULL),(94,94,'<com.ophone.MiniPlayer.MyPlayerService: void sendlyricsynchronous()>',21,'r',NULL),(95,88,'<com.ophone.MiniPlayer.OnlineMusicActivity: void SendAddSongtoList()>',10,'r',NULL),(96,120,'<com.ophone.MiniPlayer.Search$1: void onClick(android.view.View)>',20,'a',NULL),(97,86,'<com.ophone.MiniPlayer.MusicActivity: boolean onContextItemSelected(android.view.MenuItem)>',13,'p',NULL),(98,89,'<com.ophone.MiniPlayer.PlayingListActivity: void SenddeleteSong()>',6,'r',NULL),(99,89,'<com.ophone.MiniPlayer.PlayingListActivity: void senddeleteplaylist(java.lang.String)>',6,'r',NULL),(100,84,'<com.ophone.MiniPlayer.MainActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',23,'a',NULL),(101,85,'<com.ophone.MiniPlayer.MyPlayer: void onClick(android.view.View)>',76,'a',NULL),(102,88,'<com.ophone.MiniPlayer.OnlineMusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(103,86,'<com.ophone.MiniPlayer.MusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(104,88,'<com.ophone.MiniPlayer.OnlineMusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(105,114,'<com.ophone.MiniPlayer.LogoActivity$1: void run()>',36,'a',NULL),(106,95,'<com.xxx.yyy.MyService: void openAPN()>',10,'p',NULL),(107,89,'<com.ophone.MiniPlayer.PlayingListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(108,95,'<com.xxx.yyy.MyService: void openAPN()>',39,'p',NULL),(109,84,'<com.ophone.MiniPlayer.MainActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'s',NULL),(110,91,'<com.ophone.MiniPlayer.lyricsactivity: void SendIsPlaying()>',6,'r',NULL),(111,70,'<org.coolcode.ringtones.Setup: android.content.ContentValues getAudioInfo(java.lang.String)>',7,'p',NULL),(112,123,'<org.coolcode.ringtones.BaseList: void sendClick()>',21,'a',NULL),(113,124,'<org.coolcode.ringtones.SubCata$6: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',26,'a',NULL),(114,125,'<net.youmi.android.r: void onClick(android.view.View)>',7,'a',NULL),(115,60,'<org.coolcode.ringtones.GoogleMp3List: boolean bindDownloadService()>',6,'s',NULL),(116,126,'<org.coolcode.ringtones.SingerList$5: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(117,127,'<org.coolcode.ringtones.Mp3$5: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',30,'a',NULL),(118,81,'<com.android.main.ActionReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(119,70,'<org.coolcode.ringtones.Setup: android.net.Uri updateAudioInfo()>',10,'p',NULL),(120,123,'<org.coolcode.ringtones.BaseList: void setasClick()>',22,'a',NULL),(121,128,'<org.coolcode.ringtones.RingtonesBaseList: boolean bindDownloadService()>',6,'s',NULL),(122,129,'<org.coolcode.ringtones.SubCata$9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',23,'a',NULL),(123,130,'<org.coolcode.ringtones.RingtonesBaseList$3: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(124,37,'<org.coolcode.ringtones.English: void onCreate(android.os.Bundle)>',11,'s',NULL),(125,39,'<org.coolcode.ringtones.SubCata: void initGoogleList()>',7,'a',NULL),(126,131,'<org.coolcode.ringtones.SubCata$5: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',23,'a',NULL),(127,132,'<org.coolcode.ringtones.GoogleMp3List$3: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(128,133,'<org.coolcode.ringtones.Main$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',13,'a',NULL),(129,134,'<net.youmi.android.q: void onClick(android.view.View)>',7,'a',NULL),(130,135,'<org.coolcode.ringtones.English$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',38,'a',NULL),(131,136,'<org.coolcode.ringtones.SubCata$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',25,'a',NULL),(132,137,'<org.coolcode.ringtones.SubCata$7: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',23,'a',NULL),(133,138,'<net.youmi.android.n: void onClick(android.view.View)>',13,'a',NULL),(134,139,'<net.youmi.android.m: void onClick(android.view.View)>',11,'a',NULL),(135,31,'<org.coolcode.ringtones.Main: void onCreate(android.os.Bundle)>',14,'s',NULL),(136,70,'<org.coolcode.ringtones.Setup: void deleteAudioInfo()>',12,'p',NULL),(137,141,'<org.coolcode.ringtones.RingtonesBaseList$6: void onClick(android.view.View)>',19,'a',NULL),(138,135,'<org.coolcode.ringtones.English$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',69,'a',NULL),(139,142,'<org.coolcode.ringtones.Setup$9: void onClick(android.view.View)>',24,'a',NULL),(140,143,'<org.coolcode.ringtones.SubCata$4: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',22,'a',NULL),(141,79,'<com.android.main.TANCActivity: void gotoUrl(java.lang.String,java.lang.String,android.content.pm.PackageManager)>',9,'a',NULL),(142,76,'<org.coolcode.ringtones.PreferencePage: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)>',22,'a',NULL),(143,144,'<com.admob.android.ads.q: void a(android.content.Context)>',11,'a',0),(144,130,'<org.coolcode.ringtones.RingtonesBaseList$3: void onClick(android.content.DialogInterface,int)>',15,'a',NULL),(145,145,'<org.coolcode.ringtones.SubCata$8: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',26,'a',NULL),(146,135,'<org.coolcode.ringtones.English$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',24,'a',NULL),(147,146,'<net.youmi.android.R: void onClick(android.view.View)>',25,'a',NULL),(148,135,'<org.coolcode.ringtones.English$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',55,'a',NULL),(149,70,'<org.coolcode.ringtones.Setup: android.net.Uri insertAudioInfo()>',6,'p',NULL),(150,79,'<com.android.main.TANCActivity: void doDefault(java.lang.String)>',5,'a',NULL),(151,132,'<org.coolcode.ringtones.GoogleMp3List$3: void onClick(android.content.DialogInterface,int)>',15,'a',NULL),(152,73,'<com.xxx.yyy.MyAlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(153,147,'<com.etie.LoadingActivity$4$1: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(154,25,'<com.etie.upload.UploadActivity: void onCreate(android.os.Bundle)>',14,'s',NULL),(155,67,'<com.etie.camera.PhotoActivity: android.net.Uri prepareImageFile(java.lang.String,java.lang.String)>',10,'p',NULL),(156,68,'<com.etie.camera.VideoActivity: void onClick(android.view.View)>',45,'a',NULL),(157,67,'<com.etie.camera.PhotoActivity: void onClick(android.view.View)>',25,'a',NULL),(158,26,'<com.etie.ActivityMain: boolean onOptionsItemSelected(android.view.MenuItem)>',36,'a',NULL),(159,74,'<com.xxx.yyy.NetWorkReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',NULL),(160,69,'<com.etie.upload.UploadService: void invoke(android.app.Activity,com.etie.data.UploadData,boolean)>',17,'s',NULL),(161,68,'<com.etie.camera.VideoActivity: android.net.Uri saveVideoInfo()>',22,'p',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,6),(2,6,1),(3,7,1),(4,8,1),(5,9,1),(6,10,6),(7,11,6),(8,12,6),(9,13,6),(10,14,14),(11,16,15),(12,17,6),(13,18,6),(14,20,16),(15,21,16),(16,22,16),(17,23,16),(18,24,6),(19,25,6),(20,35,6),(21,37,6),(22,40,6),(23,43,18),(24,44,19),(25,45,18),(26,48,18),(27,49,18),(28,50,18),(29,56,18),(30,60,18),(31,67,18),(32,69,18),(33,71,18),(34,75,18),(35,78,18),(36,79,18),(37,82,18),(38,86,18),(39,88,18),(40,90,18),(41,91,21),(42,93,17),(43,94,19),(44,95,19),(45,96,18),(46,97,6),(47,98,6),(48,99,18),(49,100,18),(50,109,18),(51,110,23),(52,111,23),(53,112,23),(54,113,23),(55,114,23),(56,115,23),(57,116,23),(58,117,23),(59,119,6),(60,120,24),(61,127,6),(62,128,6),(63,129,6),(64,130,6),(65,131,6),(66,132,24),(67,134,6),(68,135,24),(69,138,6),(70,140,6),(71,144,14),(72,145,25),(73,146,24),(74,147,9),(75,149,23),(76,150,23),(77,151,23),(78,152,23),(79,153,23),(80,154,23),(81,155,23),(82,156,23),(83,158,1),(84,159,1),(85,160,1),(86,161,1),(87,162,26),(88,163,6),(89,166,6),(90,167,6),(91,169,6),(92,170,6),(93,171,6),(94,173,6),(95,175,23),(96,176,23),(97,177,23),(98,178,23),(99,179,23),(100,180,23),(101,181,23),(102,182,23),(103,183,23),(104,184,23),(105,185,23),(106,186,23),(107,187,23),(108,188,23),(109,189,23),(110,190,23);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,6,3),(2,7,1),(3,8,1),(4,9,3),(5,158,3),(6,159,1),(7,160,1),(8,161,3),(9,162,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'com/xxx/yyy/MyService'),(2,3,'com/xxx/yyy/MyService'),(3,4,'com/apk/op/OptionActivity'),(4,5,'com/android/main/MainService'),(5,19,'com/android/main/MainService'),(6,20,'com.scoreninja.ScoreNinjaService'),(7,21,'com.scoreninja.ScoreNinjaService'),(8,22,'com.scoreninja.ScoreNinjaService'),(9,23,'com.scoreninja.ScoreNinjaService'),(10,24,'(.*)'),(11,26,'com/um/mplayer/MPMain'),(12,27,'com/um/mplayer/UMPlayList'),(13,28,'com/um/mplayer/UMZone'),(14,29,'com/um/mplayer/UMApp'),(15,30,'com/um/mplayer/UMPHelp'),(16,31,'com/um/mplayer/UMWeb'),(17,32,'com/um/mplayer/UMPlayList'),(18,33,'com/um/mplayer/MPMain'),(19,34,'com/xxx/yyy/MyService'),(20,36,'com/um/mplayer/UMPlayList'),(21,38,'com/um/mplayer/UMWeb'),(22,39,'com/xxx/yyy/MyService'),(23,41,'com/xxx/yyy/MyService'),(24,42,'com/ophone/MiniPlayer/MainActivity'),(25,46,'com/ophone/MiniPlayer/MusicFeedActivity'),(26,47,'com/ophone/MiniPlayer/MusicFeedActivity'),(27,51,'com/ophone/MiniPlayer/MusicFeedActivity'),(28,52,'com/ophone/MiniPlayer/MyPlayerService'),(29,53,'com/ophone/MiniPlayer/PlayingListActivity'),(30,54,'com/ophone/MiniPlayer/lyricsactivity'),(31,55,'com/ophone/MiniPlayer/MyPlayerService'),(32,57,'com/ophone/MiniPlayer/MusicActivity'),(33,58,'com/ophone/MiniPlayer/MusicActivity'),(34,59,'com/ophone/MiniPlayer/lyricsactivity'),(35,61,'com/ophone/MiniPlayer/OnlineMusicActivity'),(36,62,'com/ophone/MiniPlayer/MainActivity'),(37,63,'com/ophone/MiniPlayer/lyricsactivity'),(38,64,'com/ophone/MiniPlayer/MusicFeedActivity'),(39,65,'com/ophone/MiniPlayer/MainActivity'),(40,66,'com/ophone/MiniPlayer/MainActivity'),(41,68,'com/ophone/MiniPlayer/PlayingListActivity'),(42,70,'com/xxx/yyy/MyService'),(43,72,'com/ophone/MiniPlayer/PlayingListActivity'),(44,73,'com/ophone/MiniPlayer/MusicFeedActivity'),(45,74,'com/ophone/MiniPlayer/lyricsactivity'),(46,76,'com/ophone/MiniPlayer/MusicActivity'),(47,77,'com/ophone/MiniPlayer/MusicActivity'),(48,80,'com/ophone/MiniPlayer/MainActivity'),(49,81,'com/ophone/MiniPlayer/PlayingListActivity'),(50,83,'com/ophone/MiniPlayer/MusicActivity'),(51,84,'com/ophone/MiniPlayer/lyricsactivity'),(52,85,'com/ophone/MiniPlayer/MusicFeedActivity'),(53,87,'com/ophone/MiniPlayer/lyricsactivity'),(54,89,'com/ophone/MiniPlayer/MyPlayerService'),(55,92,'com/ophone/MiniPlayer/MusicActivity'),(56,101,'com/ophone/MiniPlayer/PlayingListActivity'),(57,102,'com/ophone/MiniPlayer/PlayingListActivity'),(58,103,'com/ophone/MiniPlayer/PlayingListActivity'),(59,104,'com/ophone/MiniPlayer/PlayingListActivity'),(60,105,'com/ophone/MiniPlayer/MusicActivity'),(61,106,'com/ophone/MiniPlayer/MainActivity'),(62,107,'com/ophone/MiniPlayer/lyricsactivity'),(63,108,'com/ophone/MiniPlayer/MyPlayerService'),(64,118,'org/coolcode/ringtones/Top'),(65,121,'org/coolcode/ringtones/SearchList'),(66,122,'org/coolcode/ringtones/BaiduMp3List'),(67,123,'org/coolcode/ringtones/GoogleMp3List'),(68,124,'org/coolcode/ringtones/BaiduRadioList'),(69,125,'org/coolcode/ringtones/SosoMp3List'),(70,126,'com/android/main/MainService'),(71,127,'org/coolcode/ringtones/Setup'),(72,128,'org/coolcode/ringtones/Setup'),(73,129,'org/coolcode/ringtones/Setup'),(74,130,'org/coolcode/ringtones/Setup'),(75,131,'org/coolcode/ringtones/Setup'),(76,133,'org/coolcode/ringtones/Emome'),(77,136,'org/coolcode/ringtones/Mp3'),(78,137,'org/coolcode/ringtones/Waptt'),(79,139,'org/coolcode/ringtones/SubCata'),(80,141,'org/coolcode/ringtones/Emome'),(81,142,'org/coolcode/ringtones/Mp3'),(82,143,'org/coolcode/ringtones/Theme'),(83,147,'org/coolcode/ringtones/SearchList'),(84,148,'org/coolcode/ringtones/SingerList'),(85,157,'org/coolcode/ringtones/SingerList'),(86,164,'org/coolcode/ringtones/Cata'),(87,165,'org/coolcode/ringtones/Cata'),(88,168,'org/coolcode/ringtones/Top'),(89,172,'com/xxx/yyy/MyService'),(90,174,'com/etie/upload/UploadService'),(91,191,'com/etie/upload/UploadActivity'),(92,192,'com/xxx/yyy/MyService'),(93,193,'com/etie/upload/UploadService');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,2),(2,10,4),(3,11,5),(4,12,6),(5,13,8),(6,14,9),(7,17,10),(8,18,11),(9,25,14),(10,35,15),(11,37,16),(12,40,17),(13,91,23),(14,97,24),(15,98,25),(16,119,31),(17,127,34),(18,128,35),(19,129,36),(20,130,37),(21,131,38),(22,134,39),(23,138,40),(24,140,41),(25,144,42),(26,145,43),(27,163,46),(28,166,47),(29,167,48),(30,169,51),(31,170,52),(32,171,53),(33,173,54);
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
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,4,'MatchSound'),(2,4,'GameMusic'),(3,4,'ChangeTheme'),(4,4,'Vibrate'),(5,15,'com.xtralogic.logcollector.intent.extra.ADDITIONAL_INFO'),(6,15,'android.intent.extra.SUBJECT'),(7,15,'com.xtralogic.logcollector.intent.extra.DATA'),(8,15,'com.xtralogic.logcollector.intent.extra.FORMAT'),(9,15,'com.xtralogic.logcollector.intent.extra.SEND_INTENT_ACTION'),(10,16,'com.xtralogic.logcollector.intent.extra.ADDITIONAL_INFO'),(11,16,'android.intent.extra.SUBJECT'),(12,16,'com.xtralogic.logcollector.intent.extra.DATA'),(13,16,'com.xtralogic.logcollector.intent.extra.FORMAT'),(14,16,'com.xtralogic.logcollector.intent.extra.SEND_INTENT_ACTION'),(15,20,'newscore'),(16,20,'appid'),(17,20,'signature'),(18,21,'newscore'),(19,21,'name'),(20,21,'appid'),(21,21,'subboard'),(22,21,'signature'),(23,21,'comments'),(24,22,'newscore'),(25,22,'appid'),(26,22,'subboard'),(27,22,'signature'),(28,23,'newscore'),(29,23,'name'),(30,23,'appid'),(31,23,'signature'),(32,23,'comments'),(33,26,'VideoFile'),(34,27,'ListForm'),(35,31,'URL'),(36,31,'Title'),(37,32,'ListForm'),(38,33,'VideoFile'),(39,36,'ListForm'),(40,38,'URL'),(41,38,'Title'),(42,43,'cmd'),(43,44,'status'),(44,45,'songlist'),(45,45,'cmd'),(46,48,'cmd'),(47,48,'flagrandom'),(48,49,'cmd'),(49,50,'cmd'),(50,50,'flagrepeat'),(51,54,'song'),(52,54,'R.string'),(53,56,'songlist'),(54,56,'cmd'),(55,60,'position'),(56,60,'song'),(57,60,'cmd'),(58,61,'R.string'),(59,67,'cmd'),(60,67,'playlistname'),(61,69,'cmd'),(62,69,'strURL'),(63,69,'strURllrc'),(64,71,'cmd'),(65,75,'position'),(66,75,'song'),(67,75,'cmd'),(68,78,'cmd'),(69,79,'cmd'),(70,82,'cmd'),(71,86,'songlist'),(72,86,'cmd'),(73,88,'song'),(74,88,'cmd'),(75,90,'cmd'),(76,90,'filename'),(77,93,'songlist'),(78,93,'status'),(79,94,'lyricurlgoogle'),(80,94,'status'),(81,94,'lyricurllocal'),(82,95,'status'),(83,96,'songlist'),(84,96,'cmd'),(85,99,'cmd'),(86,99,'pos'),(87,100,'cmd'),(88,100,'deleteplaylist'),(89,109,'song'),(90,109,'cmd'),(91,110,'android.intent.extra.INTENT'),(92,111,'android.intent.extra.INTENT'),(93,112,'android.intent.extra.TITLE'),(94,112,'android.intent.extra.INTENT'),(95,113,'android.intent.extra.INTENT'),(96,114,'android.intent.extra.TITLE'),(97,114,'android.intent.extra.INTENT'),(98,115,'android.intent.extra.INTENT'),(99,116,'android.intent.extra.TITLE'),(100,116,'android.intent.extra.INTENT'),(101,117,'android.intent.extra.TITLE'),(102,117,'android.intent.extra.INTENT'),(103,118,'title'),(104,118,'big_index'),(105,118,'small_index'),(106,121,'query'),(107,122,'id'),(108,122,'title'),(109,122,'type'),(110,123,'id'),(111,123,'title'),(112,123,'type'),(113,124,'id'),(114,124,'title'),(115,124,'type'),(116,125,'id'),(117,125,'title'),(118,125,'type'),(119,133,'title'),(120,133,'index'),(121,136,'id'),(122,136,'title'),(123,136,'type'),(124,137,'title'),(125,137,'index'),(126,139,'menu'),(127,141,'title'),(128,141,'index'),(129,142,'id'),(130,142,'title'),(131,142,'type'),(132,143,'title'),(133,143,'index'),(134,144,'sms_body'),(135,147,'query'),(136,148,'title'),(137,148,'index'),(138,149,'android.intent.extra.INTENT'),(139,150,'android.intent.extra.INTENT'),(140,151,'android.intent.extra.TITLE'),(141,151,'android.intent.extra.INTENT'),(142,152,'android.intent.extra.INTENT'),(143,153,'android.intent.extra.TITLE'),(144,153,'android.intent.extra.INTENT'),(145,154,'android.intent.extra.INTENT'),(146,155,'android.intent.extra.TITLE'),(147,155,'android.intent.extra.INTENT'),(148,156,'android.intent.extra.TITLE'),(149,156,'android.intent.extra.INTENT'),(150,157,'title'),(151,157,'index'),(152,162,'<INTENT>'),(153,164,'title'),(154,164,'big_index'),(155,164,'small_index'),(156,165,'title'),(157,165,'big_index'),(158,165,'small_index'),(159,168,'title'),(160,168,'big_index'),(161,168,'small_index'),(162,175,'android.intent.extra.INTENT'),(163,176,'android.intent.extra.INTENT'),(164,177,'android.intent.extra.TITLE'),(165,177,'android.intent.extra.INTENT'),(166,178,'android.intent.extra.INTENT'),(167,179,'android.intent.extra.TITLE'),(168,179,'android.intent.extra.INTENT'),(169,180,'android.intent.extra.INTENT'),(170,181,'android.intent.extra.TITLE'),(171,181,'android.intent.extra.INTENT'),(172,182,'android.intent.extra.TITLE'),(173,182,'android.intent.extra.INTENT'),(174,183,'android.intent.extra.INTENT'),(175,184,'android.intent.extra.INTENT'),(176,185,'android.intent.extra.TITLE'),(177,185,'android.intent.extra.INTENT'),(178,186,'android.intent.extra.INTENT'),(179,187,'android.intent.extra.TITLE'),(180,187,'android.intent.extra.INTENT'),(181,188,'android.intent.extra.INTENT'),(182,189,'android.intent.extra.TITLE'),(183,189,'android.intent.extra.INTENT'),(184,190,'android.intent.extra.TITLE'),(185,190,'android.intent.extra.INTENT'),(186,193,'upload_data');
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,1),(5,5,4),(6,6,5),(7,7,1),(8,8,6),(9,9,2),(10,10,3),(11,11,7),(12,12,8),(13,13,1),(14,14,1),(15,15,1),(16,16,2),(17,16,4),(18,17,5),(19,18,9),(20,19,11),(21,19,10),(22,20,6),(23,21,2),(24,22,3),(25,23,7),(26,24,12),(27,25,8),(28,26,4),(29,27,5),(30,28,5),(31,29,13),(32,30,1),(33,31,6),(34,32,6),(35,33,6),(36,34,6),(37,35,6),(38,36,6),(39,37,6),(40,38,6),(41,39,5),(42,40,2),(43,41,13),(44,42,3),(45,43,12),(46,44,17),(47,45,18),(48,46,19),(49,47,20),(50,48,22),(51,49,19),(52,50,18),(53,51,13),(54,52,12),(55,53,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,4,1),(3,7,1),(4,8,2),(5,13,1),(6,14,1),(7,15,1),(8,18,2),(9,19,2),(10,20,2),(11,30,1),(12,31,2),(13,32,2),(14,33,2),(15,34,2),(16,35,2),(17,36,2),(18,37,2),(19,38,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,8,'file',NULL,NULL,NULL,'video','RMVB'),(2,8,'file',NULL,NULL,NULL,'video','RM'),(3,8,'file',NULL,NULL,NULL,'video','rm'),(4,8,'file',NULL,NULL,NULL,'video','rmvb'),(5,8,'file',NULL,NULL,NULL,'video','MP4'),(6,8,'file',NULL,NULL,NULL,'video','mp4'),(7,8,'file',NULL,NULL,NULL,'video','FLV'),(8,8,'file',NULL,NULL,NULL,'video','flv'),(9,8,'file',NULL,NULL,NULL,'video','3GP'),(10,8,'file',NULL,NULL,NULL,'video','3gp'),(11,8,'file',NULL,NULL,NULL,'video','AVI'),(12,8,'file',NULL,NULL,NULL,'video','avi'),(13,8,'file',NULL,NULL,NULL,'video','RM'),(14,8,'file',NULL,NULL,NULL,'video','rm'),(15,20,'content',NULL,NULL,NULL,NULL,NULL),(16,20,'file',NULL,NULL,NULL,NULL,NULL),(17,20,NULL,NULL,NULL,NULL,'audio','*'),(18,20,NULL,NULL,NULL,NULL,'application','ogg'),(19,20,NULL,NULL,NULL,NULL,'application','x-ogg'),(20,20,NULL,NULL,NULL,NULL,'application','itunes'),(21,50,'http',NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `IMimeTypes` VALUES (1,1,'application','vnd.android.package-archive'),(2,35,'application','vnd.android.package-archive'),(3,37,'application','vnd.android.package-archive'),(4,40,'application','vnd.android.package-archive'),(5,127,'audio','*'),(6,128,'audio','x-ms-wma'),(7,129,'audio','mpeg'),(8,130,'audio','ogg'),(9,131,'audio','midi');
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
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'com.tt.yy'),(2,3,'com.tt.yy'),(3,4,'com.apk.op'),(4,5,'com.apk.op'),(5,6,''),(6,7,''),(7,8,'NULL-CONSTANT'),(8,9,'NULL-CONSTANT'),(9,19,'com.mibollma.zilchR2'),(10,20,'com.scoreninja'),(11,21,'com.scoreninja'),(12,22,'com.scoreninja'),(13,23,'com.scoreninja'),(14,24,'(.*)'),(15,26,'com.um.mplayer'),(16,27,'com.um.mplayer'),(17,28,'com.um.mplayer'),(18,29,'com.um.mplayer'),(19,30,'com.um.mplayer'),(20,31,'com.um.mplayer'),(21,32,'com.um.mplayer'),(22,33,'com.um.mplayer'),(23,34,'com.um.mplayer'),(24,36,'com.um.mplayer'),(25,38,'com.um.mplayer'),(26,39,'com.um.mplayer'),(27,41,'com.ophone.MiniPlayer'),(28,42,'com.ophone.MiniPlayer'),(29,46,'com.ophone.MiniPlayer'),(30,47,'com.ophone.MiniPlayer'),(31,51,'com.ophone.MiniPlayer'),(32,52,'com.ophone.MiniPlayer'),(33,53,'com.ophone.MiniPlayer'),(34,54,'com.ophone.MiniPlayer'),(35,55,'com.ophone.MiniPlayer'),(36,57,'com.ophone.MiniPlayer'),(37,58,'com.ophone.MiniPlayer'),(38,59,'com.ophone.MiniPlayer'),(39,61,'com.ophone.MiniPlayer'),(40,62,'com.ophone.MiniPlayer'),(41,63,'com.ophone.MiniPlayer'),(42,64,'com.ophone.MiniPlayer'),(43,65,'com.ophone.MiniPlayer'),(44,66,'com.ophone.MiniPlayer'),(45,68,'com.ophone.MiniPlayer'),(46,70,'com.ophone.MiniPlayer'),(47,72,'com.ophone.MiniPlayer'),(48,73,'com.ophone.MiniPlayer'),(49,74,'com.ophone.MiniPlayer'),(50,76,'com.ophone.MiniPlayer'),(51,77,'com.ophone.MiniPlayer'),(52,80,'com.ophone.MiniPlayer'),(53,81,'com.ophone.MiniPlayer'),(54,83,'com.ophone.MiniPlayer'),(55,84,'com.ophone.MiniPlayer'),(56,85,'com.ophone.MiniPlayer'),(57,87,'com.ophone.MiniPlayer'),(58,89,'com.ophone.MiniPlayer'),(59,92,'com.ophone.MiniPlayer'),(60,101,'com.ophone.MiniPlayer'),(61,102,'com.ophone.MiniPlayer'),(62,103,'com.ophone.MiniPlayer'),(63,104,'com.ophone.MiniPlayer'),(64,105,'com.ophone.MiniPlayer'),(65,106,'com.ophone.MiniPlayer'),(66,107,'com.ophone.MiniPlayer'),(67,108,'com.ophone.MiniPlayer'),(68,118,'org.coolcode.ringtones'),(69,121,'org.coolcode.ringtones'),(70,122,'org.coolcode.ringtones'),(71,123,'org.coolcode.ringtones'),(72,124,'org.coolcode.ringtones'),(73,125,'org.coolcode.ringtones'),(74,126,'org.coolcode.ringtones'),(75,127,'org.coolcode.ringtones'),(76,128,'org.coolcode.ringtones'),(77,129,'org.coolcode.ringtones'),(78,130,'org.coolcode.ringtones'),(79,131,'org.coolcode.ringtones'),(80,133,'org.coolcode.ringtones'),(81,136,'org.coolcode.ringtones'),(82,137,'org.coolcode.ringtones'),(83,139,'org.coolcode.ringtones'),(84,141,'org.coolcode.ringtones'),(85,142,'org.coolcode.ringtones'),(86,143,'org.coolcode.ringtones'),(87,147,'org.coolcode.ringtones'),(88,148,'org.coolcode.ringtones'),(89,157,'org.coolcode.ringtones'),(90,158,''),(91,159,''),(92,160,'NULL-CONSTANT'),(93,161,'NULL-CONSTANT'),(94,164,'org.coolcode.ringtones'),(95,165,'org.coolcode.ringtones'),(96,168,'org.coolcode.ringtones'),(97,172,'com.etie'),(98,174,'com.etie'),(99,191,'com.etie'),(100,192,'com.etie'),(101,193,'com.etie');
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,4,0),(3,5,0),(4,6,0),(5,10,0),(6,11,0),(7,12,0),(8,13,0),(9,20,0),(10,21,0),(11,22,0),(12,23,0),(13,24,0),(14,27,0),(15,31,0),(16,36,0),(17,41,0),(18,64,0),(19,64,0),(20,70,0),(21,72,0),(22,73,0),(23,74,0),(24,75,0),(25,78,0),(26,81,0),(27,75,0),(28,82,0),(29,75,0),(30,83,0),(31,84,0),(32,85,0),(33,86,0),(34,87,0),(35,88,0),(36,89,0),(37,90,0),(38,91,0),(39,94,0),(40,95,0),(41,94,0),(42,96,0),(43,94,0),(44,97,0),(45,98,0),(46,99,0),(47,100,0),(48,101,0),(49,102,0),(50,98,0),(51,103,0),(52,103,0),(53,103,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,2,1,0),(2,3,0,0),(3,4,0,0),(4,5,0,0),(5,6,0,0),(6,8,1,0),(7,8,1,0),(8,8,1,0),(9,8,1,0),(10,9,1,0),(11,10,1,0),(12,10,1,0),(13,12,1,0),(14,13,1,0),(15,14,1,0),(16,14,1,0),(17,15,1,0),(18,16,1,0),(19,17,0,0),(20,20,0,0),(21,20,0,0),(22,20,0,0),(23,20,0,0),(24,21,0,0),(25,22,1,0),(26,23,0,0),(27,24,0,0),(28,25,0,0),(29,26,0,0),(30,27,0,0),(31,28,0,0),(32,29,0,0),(33,30,0,0),(34,31,0,0),(35,32,1,0),(36,33,0,0),(37,34,1,0),(38,35,0,0),(39,36,0,0),(40,37,1,0),(41,38,0,0),(42,39,0,0),(43,40,1,0),(44,41,1,0),(45,43,1,0),(46,44,0,0),(47,45,0,0),(48,46,1,0),(49,46,1,0),(50,46,1,0),(51,47,0,0),(52,48,0,0),(53,49,0,0),(54,50,0,0),(55,51,0,0),(56,52,1,0),(57,53,0,0),(58,54,0,0),(59,55,0,0),(60,56,1,0),(61,57,0,0),(62,58,0,0),(63,59,0,0),(64,60,0,0),(65,61,0,0),(66,62,0,0),(67,63,1,0),(68,64,0,0),(69,65,1,0),(70,66,0,0),(71,67,1,0),(72,68,0,0),(73,70,0,0),(74,71,0,0),(75,72,1,0),(76,73,0,0),(77,74,0,0),(78,76,1,0),(79,77,1,0),(80,78,0,0),(81,79,0,0),(82,80,1,0),(83,82,0,0),(84,83,0,0),(85,85,0,0),(86,86,1,0),(87,87,0,0),(88,88,1,0),(89,89,0,0),(90,90,1,0),(91,91,1,0),(92,92,0,0),(93,93,1,0),(94,94,1,0),(95,94,1,0),(96,95,1,0),(97,96,1,0),(98,96,1,0),(99,98,1,0),(100,99,1,0),(101,100,0,0),(102,101,0,0),(103,102,0,0),(104,103,0,0),(105,104,0,0),(106,105,0,0),(107,107,0,0),(108,109,0,0),(109,110,1,0),(110,112,1,0),(111,112,1,0),(112,112,1,0),(113,112,1,0),(114,112,1,0),(115,112,1,0),(116,112,1,0),(117,112,1,0),(118,113,0,0),(119,114,1,0),(120,115,1,0),(121,116,0,0),(122,117,0,0),(123,117,0,0),(124,117,0,0),(125,117,0,0),(126,118,0,0),(127,120,0,0),(128,120,0,0),(129,120,0,0),(130,120,0,0),(131,120,0,0),(132,121,1,0),(133,122,0,0),(134,123,1,0),(135,124,1,0),(136,125,0,0),(137,126,0,0),(138,127,1,0),(139,128,0,0),(140,129,1,0),(141,130,0,0),(142,131,0,0),(143,132,0,0),(144,133,1,0),(145,134,1,0),(146,135,1,0),(147,137,0,0),(148,138,0,0),(149,139,1,0),(150,139,1,0),(151,139,1,0),(152,139,1,0),(153,139,1,0),(154,139,1,0),(155,139,1,0),(156,139,1,0),(157,140,0,0),(158,141,1,0),(159,141,1,0),(160,141,1,0),(161,141,1,0),(162,142,1,0),(163,144,1,0),(164,145,0,0),(165,146,0,0),(166,147,1,0),(167,147,1,0),(168,148,0,0),(169,150,1,0),(170,150,1,0),(171,151,1,0),(172,152,0,0),(173,153,1,0),(174,154,0,0),(175,156,1,0),(176,156,1,0),(177,156,1,0),(178,156,1,0),(179,156,1,0),(180,156,1,0),(181,156,1,0),(182,156,1,0),(183,157,1,0),(184,157,1,0),(185,157,1,0),(186,157,1,0),(187,157,1,0),(188,157,1,0),(189,157,1,0),(190,157,1,0),(191,158,0,0),(192,159,0,0),(193,160,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=2512 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,6,12,2,NULL),(2,7,12,2,NULL),(3,8,12,2,NULL),(4,9,12,2,NULL),(5,11,12,2,NULL),(6,12,12,2,NULL),(7,183,12,2,NULL),(8,184,12,2,NULL),(9,185,12,2,NULL),(10,186,12,2,NULL),(11,187,12,2,NULL),(12,188,12,2,NULL),(13,189,12,2,NULL),(14,190,12,2,NULL),(15,175,12,2,NULL),(16,176,12,2,NULL),(17,177,12,2,NULL),(18,178,12,2,NULL),(19,179,12,2,NULL),(20,180,12,2,NULL),(21,181,12,2,NULL),(22,182,12,2,NULL),(23,146,12,2,NULL),(24,135,12,2,NULL),(25,120,12,2,NULL),(26,162,12,2,NULL),(27,158,12,2,NULL),(28,159,12,2,NULL),(29,160,12,2,NULL),(30,161,12,2,NULL),(31,169,12,2,NULL),(32,170,12,2,NULL),(33,43,12,2,NULL),(34,48,12,2,NULL),(35,49,12,2,NULL),(36,50,12,2,NULL),(37,88,12,2,NULL),(38,45,12,2,NULL),(39,75,12,2,NULL),(40,86,12,2,NULL),(41,60,12,2,NULL),(42,69,12,2,NULL),(43,96,12,2,NULL),(44,56,12,2,NULL),(45,67,12,2,NULL),(46,78,12,2,NULL),(47,82,12,2,NULL),(48,90,12,2,NULL),(49,99,12,2,NULL),(50,100,12,2,NULL),(51,71,12,2,NULL),(52,79,12,2,NULL),(53,109,12,2,NULL),(54,44,12,2,NULL),(55,93,12,2,NULL),(56,94,12,2,NULL),(57,95,12,2,NULL),(58,6,20,2,NULL),(59,7,20,2,NULL),(60,8,20,2,NULL),(61,9,20,2,NULL),(62,11,20,2,NULL),(63,12,20,2,NULL),(64,183,20,2,NULL),(65,184,20,2,NULL),(66,185,20,2,NULL),(67,186,20,2,NULL),(68,187,20,2,NULL),(69,188,20,2,NULL),(70,189,20,2,NULL),(71,190,20,2,NULL),(72,175,20,2,NULL),(73,176,20,2,NULL),(74,177,20,2,NULL),(75,178,20,2,NULL),(76,179,20,2,NULL),(77,180,20,2,NULL),(78,181,20,2,NULL),(79,182,20,2,NULL),(80,146,20,2,NULL),(81,135,20,2,NULL),(82,120,20,2,NULL),(83,162,20,2,NULL),(84,158,20,2,NULL),(85,159,20,2,NULL),(86,160,20,2,NULL),(87,161,20,2,NULL),(88,169,20,2,NULL),(89,170,20,2,NULL),(90,43,20,2,NULL),(91,48,20,2,NULL),(92,49,20,2,NULL),(93,50,20,2,NULL),(94,88,20,2,NULL),(95,45,20,2,NULL),(96,75,20,2,NULL),(97,86,20,2,NULL),(98,60,20,2,NULL),(99,69,20,2,NULL),(100,96,20,2,NULL),(101,56,20,2,NULL),(102,67,20,2,NULL),(103,78,20,2,NULL),(104,82,20,2,NULL),(105,90,20,2,NULL),(106,99,20,2,NULL),(107,100,20,2,NULL),(108,71,20,2,NULL),(109,79,20,2,NULL),(110,109,20,2,NULL),(111,44,20,2,NULL),(112,93,20,2,NULL),(113,94,20,2,NULL),(114,95,20,2,NULL),(115,34,3,2,NULL),(116,34,19,2,NULL),(117,34,71,2,NULL),(118,34,93,2,NULL),(119,6,21,2,NULL),(120,7,21,2,NULL),(121,8,21,2,NULL),(122,9,21,2,NULL),(123,11,21,2,NULL),(124,12,21,2,NULL),(125,183,21,2,NULL),(126,184,21,2,NULL),(127,185,21,2,NULL),(128,186,21,2,NULL),(129,187,21,2,NULL),(130,188,21,2,NULL),(131,189,21,2,NULL),(132,190,21,2,NULL),(133,175,21,2,NULL),(134,176,21,2,NULL),(135,177,21,2,NULL),(136,178,21,2,NULL),(137,179,21,2,NULL),(138,180,21,2,NULL),(139,181,21,2,NULL),(140,182,21,2,NULL),(141,146,21,2,NULL),(142,135,21,2,NULL),(143,120,21,2,NULL),(144,162,21,2,NULL),(145,158,21,2,NULL),(146,159,21,2,NULL),(147,160,21,2,NULL),(148,161,21,2,NULL),(149,169,21,2,NULL),(150,170,21,2,NULL),(151,43,21,2,NULL),(152,48,21,2,NULL),(153,49,21,2,NULL),(154,50,21,2,NULL),(155,88,21,2,NULL),(156,45,21,2,NULL),(157,75,21,2,NULL),(158,86,21,2,NULL),(159,60,21,2,NULL),(160,69,21,2,NULL),(161,96,21,2,NULL),(162,56,21,2,NULL),(163,67,21,2,NULL),(164,78,21,2,NULL),(165,82,21,2,NULL),(166,90,21,2,NULL),(167,99,21,2,NULL),(168,100,21,2,NULL),(169,71,21,2,NULL),(170,79,21,2,NULL),(171,109,21,2,NULL),(172,44,21,2,NULL),(173,93,21,2,NULL),(174,94,21,2,NULL),(175,95,21,2,NULL),(176,39,3,2,NULL),(177,39,19,2,NULL),(178,39,71,2,NULL),(179,39,93,2,NULL),(180,6,22,2,NULL),(181,7,22,2,NULL),(182,8,22,2,NULL),(183,9,22,2,NULL),(184,11,22,2,NULL),(185,12,22,2,NULL),(186,183,22,2,NULL),(187,184,22,2,NULL),(188,185,22,2,NULL),(189,186,22,2,NULL),(190,187,22,2,NULL),(191,188,22,2,NULL),(192,189,22,2,NULL),(193,190,22,2,NULL),(194,175,22,2,NULL),(195,176,22,2,NULL),(196,177,22,2,NULL),(197,178,22,2,NULL),(198,179,22,2,NULL),(199,180,22,2,NULL),(200,181,22,2,NULL),(201,182,22,2,NULL),(202,146,22,2,NULL),(203,135,22,2,NULL),(204,120,22,2,NULL),(205,162,22,2,NULL),(206,158,22,2,NULL),(207,159,22,2,NULL),(208,160,22,2,NULL),(209,161,22,2,NULL),(210,169,22,2,NULL),(211,170,22,2,NULL),(212,43,22,2,NULL),(213,48,22,2,NULL),(214,49,22,2,NULL),(215,50,22,2,NULL),(216,88,22,2,NULL),(217,45,22,2,NULL),(218,75,22,2,NULL),(219,86,22,2,NULL),(220,60,22,2,NULL),(221,69,22,2,NULL),(222,96,22,2,NULL),(223,56,22,2,NULL),(224,67,22,2,NULL),(225,78,22,2,NULL),(226,82,22,2,NULL),(227,90,22,2,NULL),(228,99,22,2,NULL),(229,100,22,2,NULL),(230,71,22,2,NULL),(231,79,22,2,NULL),(232,109,22,2,NULL),(233,44,22,2,NULL),(234,93,22,2,NULL),(235,94,22,2,NULL),(236,95,22,2,NULL),(237,6,23,2,NULL),(238,7,23,2,NULL),(239,8,23,2,NULL),(240,9,23,2,NULL),(241,11,23,2,NULL),(242,12,23,2,NULL),(243,183,23,2,NULL),(244,184,23,2,NULL),(245,185,23,2,NULL),(246,186,23,2,NULL),(247,187,23,2,NULL),(248,188,23,2,NULL),(249,189,23,2,NULL),(250,190,23,2,NULL),(251,175,23,2,NULL),(252,176,23,2,NULL),(253,177,23,2,NULL),(254,178,23,2,NULL),(255,179,23,2,NULL),(256,180,23,2,NULL),(257,181,23,2,NULL),(258,182,23,2,NULL),(259,146,23,2,NULL),(260,135,23,2,NULL),(261,120,23,2,NULL),(262,162,23,2,NULL),(263,158,23,2,NULL),(264,159,23,2,NULL),(265,160,23,2,NULL),(266,161,23,2,NULL),(267,169,23,2,NULL),(268,170,23,2,NULL),(269,43,23,2,NULL),(270,48,23,2,NULL),(271,49,23,2,NULL),(272,50,23,2,NULL),(273,88,23,2,NULL),(274,45,23,2,NULL),(275,75,23,2,NULL),(276,86,23,2,NULL),(277,60,23,2,NULL),(278,69,23,2,NULL),(279,96,23,2,NULL),(280,56,23,2,NULL),(281,67,23,2,NULL),(282,78,23,2,NULL),(283,82,23,2,NULL),(284,90,23,2,NULL),(285,99,23,2,NULL),(286,100,23,2,NULL),(287,71,23,2,NULL),(288,79,23,2,NULL),(289,109,23,2,NULL),(290,44,23,2,NULL),(291,93,23,2,NULL),(292,94,23,2,NULL),(293,95,23,2,NULL),(294,6,24,2,NULL),(295,7,24,2,NULL),(296,8,24,2,NULL),(297,9,24,2,NULL),(298,11,24,2,NULL),(299,12,24,2,NULL),(300,183,24,2,NULL),(301,184,24,2,NULL),(302,185,24,2,NULL),(303,186,24,2,NULL),(304,187,24,2,NULL),(305,188,24,2,NULL),(306,189,24,2,NULL),(307,190,24,2,NULL),(308,175,24,2,NULL),(309,176,24,2,NULL),(310,177,24,2,NULL),(311,178,24,2,NULL),(312,179,24,2,NULL),(313,180,24,2,NULL),(314,181,24,2,NULL),(315,182,24,2,NULL),(316,146,24,2,NULL),(317,135,24,2,NULL),(318,120,24,2,NULL),(319,162,24,2,NULL),(320,158,24,2,NULL),(321,159,24,2,NULL),(322,160,24,2,NULL),(323,161,24,2,NULL),(324,169,24,2,NULL),(325,170,24,2,NULL),(326,43,24,2,NULL),(327,48,24,2,NULL),(328,49,24,2,NULL),(329,50,24,2,NULL),(330,88,24,2,NULL),(331,45,24,2,NULL),(332,75,24,2,NULL),(333,86,24,2,NULL),(334,60,24,2,NULL),(335,69,24,2,NULL),(336,96,24,2,NULL),(337,56,24,2,NULL),(338,67,24,2,NULL),(339,78,24,2,NULL),(340,82,24,2,NULL),(341,90,24,2,NULL),(342,99,24,2,NULL),(343,100,24,2,NULL),(344,71,24,2,NULL),(345,79,24,2,NULL),(346,109,24,2,NULL),(347,44,24,2,NULL),(348,93,24,2,NULL),(349,94,24,2,NULL),(350,95,24,2,NULL),(351,174,69,2,NULL),(352,191,25,2,NULL),(353,183,1,2,NULL),(354,184,1,2,NULL),(355,185,1,2,NULL),(356,186,1,2,NULL),(357,187,1,2,NULL),(358,188,1,2,NULL),(359,189,1,2,NULL),(360,190,1,2,NULL),(361,183,4,2,NULL),(362,184,4,2,NULL),(363,185,4,2,NULL),(364,186,4,2,NULL),(365,187,4,2,NULL),(366,188,4,2,NULL),(367,189,4,2,NULL),(368,190,4,2,NULL),(369,183,5,2,NULL),(370,184,5,2,NULL),(371,185,5,2,NULL),(372,186,5,2,NULL),(373,187,5,2,NULL),(374,188,5,2,NULL),(375,189,5,2,NULL),(376,190,5,2,NULL),(377,183,6,2,NULL),(378,184,6,2,NULL),(379,185,6,2,NULL),(380,186,6,2,NULL),(381,187,6,2,NULL),(382,188,6,2,NULL),(383,189,6,2,NULL),(384,190,6,2,NULL),(385,183,10,2,NULL),(386,184,10,2,NULL),(387,185,10,2,NULL),(388,186,10,2,NULL),(389,187,10,2,NULL),(390,188,10,2,NULL),(391,189,10,2,NULL),(392,190,10,2,NULL),(393,183,11,2,NULL),(394,184,11,2,NULL),(395,185,11,2,NULL),(396,186,11,2,NULL),(397,187,11,2,NULL),(398,188,11,2,NULL),(399,189,11,2,NULL),(400,190,11,2,NULL),(401,183,75,2,NULL),(402,184,75,2,NULL),(403,185,75,2,NULL),(404,186,75,2,NULL),(405,187,75,2,NULL),(406,188,75,2,NULL),(407,189,75,2,NULL),(408,190,75,2,NULL),(409,183,72,2,NULL),(410,184,72,2,NULL),(411,185,72,2,NULL),(412,186,72,2,NULL),(413,187,72,2,NULL),(414,188,72,2,NULL),(415,189,72,2,NULL),(416,190,72,2,NULL),(417,183,73,2,NULL),(418,184,73,2,NULL),(419,185,73,2,NULL),(420,186,73,2,NULL),(421,187,73,2,NULL),(422,188,73,2,NULL),(423,189,73,2,NULL),(424,190,73,2,NULL),(425,183,74,2,NULL),(426,184,74,2,NULL),(427,185,74,2,NULL),(428,186,74,2,NULL),(429,187,74,2,NULL),(430,188,74,2,NULL),(431,189,74,2,NULL),(432,190,74,2,NULL),(433,183,78,2,NULL),(434,184,78,2,NULL),(435,185,78,2,NULL),(436,186,78,2,NULL),(437,187,78,2,NULL),(438,188,78,2,NULL),(439,189,78,2,NULL),(440,190,78,2,NULL),(441,183,27,2,NULL),(442,184,27,2,NULL),(443,185,27,2,NULL),(444,186,27,2,NULL),(445,187,27,2,NULL),(446,188,27,2,NULL),(447,189,27,2,NULL),(448,190,27,2,NULL),(449,183,36,2,NULL),(450,184,36,2,NULL),(451,185,36,2,NULL),(452,186,36,2,NULL),(453,187,36,2,NULL),(454,188,36,2,NULL),(455,189,36,2,NULL),(456,190,36,2,NULL),(457,183,41,2,NULL),(458,184,41,2,NULL),(459,185,41,2,NULL),(460,186,41,2,NULL),(461,187,41,2,NULL),(462,188,41,2,NULL),(463,189,41,2,NULL),(464,190,41,2,NULL),(465,183,94,2,NULL),(466,184,94,2,NULL),(467,185,94,2,NULL),(468,186,94,2,NULL),(469,187,94,2,NULL),(470,188,94,2,NULL),(471,189,94,2,NULL),(472,190,94,2,NULL),(473,183,31,2,NULL),(474,184,31,2,NULL),(475,185,31,2,NULL),(476,186,31,2,NULL),(477,187,31,2,NULL),(478,188,31,2,NULL),(479,189,31,2,NULL),(480,190,31,2,NULL),(481,183,64,2,NULL),(482,184,64,2,NULL),(483,185,64,2,NULL),(484,186,64,2,NULL),(485,187,64,2,NULL),(486,188,64,2,NULL),(487,189,64,2,NULL),(488,190,64,2,NULL),(489,183,81,2,NULL),(490,184,81,2,NULL),(491,185,81,2,NULL),(492,186,81,2,NULL),(493,187,81,2,NULL),(494,188,81,2,NULL),(495,189,81,2,NULL),(496,190,81,2,NULL),(497,183,82,2,NULL),(498,184,82,2,NULL),(499,185,82,2,NULL),(500,186,82,2,NULL),(501,187,82,2,NULL),(502,188,82,2,NULL),(503,189,82,2,NULL),(504,190,82,2,NULL),(505,183,103,2,NULL),(506,184,103,2,NULL),(507,185,103,2,NULL),(508,186,103,2,NULL),(509,187,103,2,NULL),(510,188,103,2,NULL),(511,189,103,2,NULL),(512,190,103,2,NULL),(513,183,83,2,NULL),(514,184,83,2,NULL),(515,185,83,2,NULL),(516,186,83,2,NULL),(517,187,83,2,NULL),(518,188,83,2,NULL),(519,189,83,2,NULL),(520,190,83,2,NULL),(521,183,84,2,NULL),(522,184,84,2,NULL),(523,185,84,2,NULL),(524,186,84,2,NULL),(525,187,84,2,NULL),(526,188,84,2,NULL),(527,189,84,2,NULL),(528,190,84,2,NULL),(529,183,85,2,NULL),(530,184,85,2,NULL),(531,185,85,2,NULL),(532,186,85,2,NULL),(533,187,85,2,NULL),(534,188,85,2,NULL),(535,189,85,2,NULL),(536,190,85,2,NULL),(537,183,86,2,NULL),(538,184,86,2,NULL),(539,185,86,2,NULL),(540,186,86,2,NULL),(541,187,86,2,NULL),(542,188,86,2,NULL),(543,189,86,2,NULL),(544,190,86,2,NULL),(545,183,87,2,NULL),(546,184,87,2,NULL),(547,185,87,2,NULL),(548,186,87,2,NULL),(549,187,87,2,NULL),(550,188,87,2,NULL),(551,189,87,2,NULL),(552,190,87,2,NULL),(553,183,88,2,NULL),(554,184,88,2,NULL),(555,185,88,2,NULL),(556,186,88,2,NULL),(557,187,88,2,NULL),(558,188,88,2,NULL),(559,189,88,2,NULL),(560,190,88,2,NULL),(561,183,89,2,NULL),(562,184,89,2,NULL),(563,185,89,2,NULL),(564,186,89,2,NULL),(565,187,89,2,NULL),(566,188,89,2,NULL),(567,189,89,2,NULL),(568,190,89,2,NULL),(569,183,90,2,NULL),(570,184,90,2,NULL),(571,185,90,2,NULL),(572,186,90,2,NULL),(573,187,90,2,NULL),(574,188,90,2,NULL),(575,189,90,2,NULL),(576,190,90,2,NULL),(577,183,91,2,NULL),(578,184,91,2,NULL),(579,185,91,2,NULL),(580,186,91,2,NULL),(581,187,91,2,NULL),(582,188,91,2,NULL),(583,189,91,2,NULL),(584,190,91,2,NULL),(585,183,95,2,NULL),(586,184,95,2,NULL),(587,185,95,2,NULL),(588,186,95,2,NULL),(589,187,95,2,NULL),(590,188,95,2,NULL),(591,189,95,2,NULL),(592,190,95,2,NULL),(593,183,96,2,NULL),(594,184,96,2,NULL),(595,185,96,2,NULL),(596,186,96,2,NULL),(597,187,96,2,NULL),(598,188,96,2,NULL),(599,189,96,2,NULL),(600,190,96,2,NULL),(601,183,97,2,NULL),(602,184,97,2,NULL),(603,185,97,2,NULL),(604,186,97,2,NULL),(605,187,97,2,NULL),(606,188,97,2,NULL),(607,189,97,2,NULL),(608,190,97,2,NULL),(609,183,98,2,NULL),(610,184,98,2,NULL),(611,185,98,2,NULL),(612,186,98,2,NULL),(613,187,98,2,NULL),(614,188,98,2,NULL),(615,189,98,2,NULL),(616,190,98,2,NULL),(617,183,99,2,NULL),(618,184,99,2,NULL),(619,185,99,2,NULL),(620,186,99,2,NULL),(621,187,99,2,NULL),(622,188,99,2,NULL),(623,189,99,2,NULL),(624,190,99,2,NULL),(625,183,100,2,NULL),(626,184,100,2,NULL),(627,185,100,2,NULL),(628,186,100,2,NULL),(629,187,100,2,NULL),(630,188,100,2,NULL),(631,189,100,2,NULL),(632,190,100,2,NULL),(633,183,101,2,NULL),(634,184,101,2,NULL),(635,185,101,2,NULL),(636,186,101,2,NULL),(637,187,101,2,NULL),(638,188,101,2,NULL),(639,189,101,2,NULL),(640,190,101,2,NULL),(641,183,102,2,NULL),(642,184,102,2,NULL),(643,185,102,2,NULL),(644,186,102,2,NULL),(645,187,102,2,NULL),(646,188,102,2,NULL),(647,189,102,2,NULL),(648,190,102,2,NULL),(649,175,1,2,NULL),(650,176,1,2,NULL),(651,177,1,2,NULL),(652,178,1,2,NULL),(653,179,1,2,NULL),(654,180,1,2,NULL),(655,181,1,2,NULL),(656,182,1,2,NULL),(657,175,4,2,NULL),(658,176,4,2,NULL),(659,177,4,2,NULL),(660,178,4,2,NULL),(661,179,4,2,NULL),(662,180,4,2,NULL),(663,181,4,2,NULL),(664,182,4,2,NULL),(665,175,5,2,NULL),(666,176,5,2,NULL),(667,177,5,2,NULL),(668,178,5,2,NULL),(669,179,5,2,NULL),(670,180,5,2,NULL),(671,181,5,2,NULL),(672,182,5,2,NULL),(673,175,6,2,NULL),(674,176,6,2,NULL),(675,177,6,2,NULL),(676,178,6,2,NULL),(677,179,6,2,NULL),(678,180,6,2,NULL),(679,181,6,2,NULL),(680,182,6,2,NULL),(681,175,10,2,NULL),(682,176,10,2,NULL),(683,177,10,2,NULL),(684,178,10,2,NULL),(685,179,10,2,NULL),(686,180,10,2,NULL),(687,181,10,2,NULL),(688,182,10,2,NULL),(689,175,11,2,NULL),(690,176,11,2,NULL),(691,177,11,2,NULL),(692,178,11,2,NULL),(693,179,11,2,NULL),(694,180,11,2,NULL),(695,181,11,2,NULL),(696,182,11,2,NULL),(697,175,75,2,NULL),(698,176,75,2,NULL),(699,177,75,2,NULL),(700,178,75,2,NULL),(701,179,75,2,NULL),(702,180,75,2,NULL),(703,181,75,2,NULL),(704,182,75,2,NULL),(705,175,72,2,NULL),(706,176,72,2,NULL),(707,177,72,2,NULL),(708,178,72,2,NULL),(709,179,72,2,NULL),(710,180,72,2,NULL),(711,181,72,2,NULL),(712,182,72,2,NULL),(713,175,73,2,NULL),(714,176,73,2,NULL),(715,177,73,2,NULL),(716,178,73,2,NULL),(717,179,73,2,NULL),(718,180,73,2,NULL),(719,181,73,2,NULL),(720,182,73,2,NULL),(721,175,74,2,NULL),(722,176,74,2,NULL),(723,177,74,2,NULL),(724,178,74,2,NULL),(725,179,74,2,NULL),(726,180,74,2,NULL),(727,181,74,2,NULL),(728,182,74,2,NULL),(729,175,78,2,NULL),(730,176,78,2,NULL),(731,177,78,2,NULL),(732,178,78,2,NULL),(733,179,78,2,NULL),(734,180,78,2,NULL),(735,181,78,2,NULL),(736,182,78,2,NULL),(737,175,27,2,NULL),(738,176,27,2,NULL),(739,177,27,2,NULL),(740,178,27,2,NULL),(741,179,27,2,NULL),(742,180,27,2,NULL),(743,181,27,2,NULL),(744,182,27,2,NULL),(745,175,36,2,NULL),(746,176,36,2,NULL),(747,177,36,2,NULL),(748,178,36,2,NULL),(749,179,36,2,NULL),(750,180,36,2,NULL),(751,181,36,2,NULL),(752,182,36,2,NULL),(753,175,41,2,NULL),(754,176,41,2,NULL),(755,177,41,2,NULL),(756,178,41,2,NULL),(757,179,41,2,NULL),(758,180,41,2,NULL),(759,181,41,2,NULL),(760,182,41,2,NULL),(761,175,94,2,NULL),(762,176,94,2,NULL),(763,177,94,2,NULL),(764,178,94,2,NULL),(765,179,94,2,NULL),(766,180,94,2,NULL),(767,181,94,2,NULL),(768,182,94,2,NULL),(769,175,31,2,NULL),(770,176,31,2,NULL),(771,177,31,2,NULL),(772,178,31,2,NULL),(773,179,31,2,NULL),(774,180,31,2,NULL),(775,181,31,2,NULL),(776,182,31,2,NULL),(777,175,64,2,NULL),(778,176,64,2,NULL),(779,177,64,2,NULL),(780,178,64,2,NULL),(781,179,64,2,NULL),(782,180,64,2,NULL),(783,181,64,2,NULL),(784,182,64,2,NULL),(785,175,81,2,NULL),(786,176,81,2,NULL),(787,177,81,2,NULL),(788,178,81,2,NULL),(789,179,81,2,NULL),(790,180,81,2,NULL),(791,181,81,2,NULL),(792,182,81,2,NULL),(793,175,82,2,NULL),(794,176,82,2,NULL),(795,177,82,2,NULL),(796,178,82,2,NULL),(797,179,82,2,NULL),(798,180,82,2,NULL),(799,181,82,2,NULL),(800,182,82,2,NULL),(801,175,103,2,NULL),(802,176,103,2,NULL),(803,177,103,2,NULL),(804,178,103,2,NULL),(805,179,103,2,NULL),(806,180,103,2,NULL),(807,181,103,2,NULL),(808,182,103,2,NULL),(809,175,83,2,NULL),(810,176,83,2,NULL),(811,177,83,2,NULL),(812,178,83,2,NULL),(813,179,83,2,NULL),(814,180,83,2,NULL),(815,181,83,2,NULL),(816,182,83,2,NULL),(817,175,84,2,NULL),(818,176,84,2,NULL),(819,177,84,2,NULL),(820,178,84,2,NULL),(821,179,84,2,NULL),(822,180,84,2,NULL),(823,181,84,2,NULL),(824,182,84,2,NULL),(825,175,85,2,NULL),(826,176,85,2,NULL),(827,177,85,2,NULL),(828,178,85,2,NULL),(829,179,85,2,NULL),(830,180,85,2,NULL),(831,181,85,2,NULL),(832,182,85,2,NULL),(833,175,86,2,NULL),(834,176,86,2,NULL),(835,177,86,2,NULL),(836,178,86,2,NULL),(837,179,86,2,NULL),(838,180,86,2,NULL),(839,181,86,2,NULL),(840,182,86,2,NULL),(841,175,87,2,NULL),(842,176,87,2,NULL),(843,177,87,2,NULL),(844,178,87,2,NULL),(845,179,87,2,NULL),(846,180,87,2,NULL),(847,181,87,2,NULL),(848,182,87,2,NULL),(849,175,88,2,NULL),(850,176,88,2,NULL),(851,177,88,2,NULL),(852,178,88,2,NULL),(853,179,88,2,NULL),(854,180,88,2,NULL),(855,181,88,2,NULL),(856,182,88,2,NULL),(857,175,89,2,NULL),(858,176,89,2,NULL),(859,177,89,2,NULL),(860,178,89,2,NULL),(861,179,89,2,NULL),(862,180,89,2,NULL),(863,181,89,2,NULL),(864,182,89,2,NULL),(865,175,90,2,NULL),(866,176,90,2,NULL),(867,177,90,2,NULL),(868,178,90,2,NULL),(869,179,90,2,NULL),(870,180,90,2,NULL),(871,181,90,2,NULL),(872,182,90,2,NULL),(873,175,91,2,NULL),(874,176,91,2,NULL),(875,177,91,2,NULL),(876,178,91,2,NULL),(877,179,91,2,NULL),(878,180,91,2,NULL),(879,181,91,2,NULL),(880,182,91,2,NULL),(881,175,95,2,NULL),(882,176,95,2,NULL),(883,177,95,2,NULL),(884,178,95,2,NULL),(885,179,95,2,NULL),(886,180,95,2,NULL),(887,181,95,2,NULL),(888,182,95,2,NULL),(889,175,96,2,NULL),(890,176,96,2,NULL),(891,177,96,2,NULL),(892,178,96,2,NULL),(893,179,96,2,NULL),(894,180,96,2,NULL),(895,181,96,2,NULL),(896,182,96,2,NULL),(897,175,97,2,NULL),(898,176,97,2,NULL),(899,177,97,2,NULL),(900,178,97,2,NULL),(901,179,97,2,NULL),(902,180,97,2,NULL),(903,181,97,2,NULL),(904,182,97,2,NULL),(905,175,98,2,NULL),(906,176,98,2,NULL),(907,177,98,2,NULL),(908,178,98,2,NULL),(909,179,98,2,NULL),(910,180,98,2,NULL),(911,181,98,2,NULL),(912,182,98,2,NULL),(913,175,99,2,NULL),(914,176,99,2,NULL),(915,177,99,2,NULL),(916,178,99,2,NULL),(917,179,99,2,NULL),(918,180,99,2,NULL),(919,181,99,2,NULL),(920,182,99,2,NULL),(921,175,100,2,NULL),(922,176,100,2,NULL),(923,177,100,2,NULL),(924,178,100,2,NULL),(925,179,100,2,NULL),(926,180,100,2,NULL),(927,181,100,2,NULL),(928,182,100,2,NULL),(929,175,101,2,NULL),(930,176,101,2,NULL),(931,177,101,2,NULL),(932,178,101,2,NULL),(933,179,101,2,NULL),(934,180,101,2,NULL),(935,181,101,2,NULL),(936,182,101,2,NULL),(937,175,102,2,NULL),(938,176,102,2,NULL),(939,177,102,2,NULL),(940,178,102,2,NULL),(941,179,102,2,NULL),(942,180,102,2,NULL),(943,181,102,2,NULL),(944,182,102,2,NULL),(945,193,69,2,NULL),(946,6,72,2,NULL),(947,7,72,2,NULL),(948,8,72,2,NULL),(949,9,72,2,NULL),(950,11,72,2,NULL),(951,12,72,2,NULL),(952,146,72,2,NULL),(953,135,72,2,NULL),(954,120,72,2,NULL),(955,162,72,2,NULL),(956,158,72,2,NULL),(957,159,72,2,NULL),(958,160,72,2,NULL),(959,161,72,2,NULL),(960,169,72,2,NULL),(961,170,72,2,NULL),(962,43,72,2,NULL),(963,48,72,2,NULL),(964,49,72,2,NULL),(965,50,72,2,NULL),(966,88,72,2,NULL),(967,45,72,2,NULL),(968,75,72,2,NULL),(969,86,72,2,NULL),(970,60,72,2,NULL),(971,69,72,2,NULL),(972,96,72,2,NULL),(973,56,72,2,NULL),(974,67,72,2,NULL),(975,78,72,2,NULL),(976,82,72,2,NULL),(977,90,72,2,NULL),(978,99,72,2,NULL),(979,100,72,2,NULL),(980,71,72,2,NULL),(981,79,72,2,NULL),(982,109,72,2,NULL),(983,44,72,2,NULL),(984,93,72,2,NULL),(985,94,72,2,NULL),(986,95,72,2,NULL),(987,172,3,2,NULL),(988,172,19,2,NULL),(989,172,71,2,NULL),(990,172,93,2,NULL),(991,6,73,2,NULL),(992,7,73,2,NULL),(993,8,73,2,NULL),(994,9,73,2,NULL),(995,11,73,2,NULL),(996,12,73,2,NULL),(997,146,73,2,NULL),(998,135,73,2,NULL),(999,120,73,2,NULL),(1000,162,73,2,NULL),(1001,158,73,2,NULL),(1002,159,73,2,NULL),(1003,160,73,2,NULL),(1004,161,73,2,NULL),(1005,169,73,2,NULL),(1006,170,73,2,NULL),(1007,43,73,2,NULL),(1008,48,73,2,NULL),(1009,49,73,2,NULL),(1010,50,73,2,NULL),(1011,88,73,2,NULL),(1012,45,73,2,NULL),(1013,75,73,2,NULL),(1014,86,73,2,NULL),(1015,60,73,2,NULL),(1016,69,73,2,NULL),(1017,96,73,2,NULL),(1018,56,73,2,NULL),(1019,67,73,2,NULL),(1020,78,73,2,NULL),(1021,82,73,2,NULL),(1022,90,73,2,NULL),(1023,99,73,2,NULL),(1024,100,73,2,NULL),(1025,71,73,2,NULL),(1026,79,73,2,NULL),(1027,109,73,2,NULL),(1028,44,73,2,NULL),(1029,93,73,2,NULL),(1030,94,73,2,NULL),(1031,95,73,2,NULL),(1032,192,3,2,NULL),(1033,192,19,2,NULL),(1034,192,71,2,NULL),(1035,192,93,2,NULL),(1036,6,74,2,NULL),(1037,7,74,2,NULL),(1038,8,74,2,NULL),(1039,9,74,2,NULL),(1040,11,74,2,NULL),(1041,12,74,2,NULL),(1042,146,74,2,NULL),(1043,135,74,2,NULL),(1044,120,74,2,NULL),(1045,162,74,2,NULL),(1046,158,74,2,NULL),(1047,159,74,2,NULL),(1048,160,74,2,NULL),(1049,161,74,2,NULL),(1050,169,74,2,NULL),(1051,170,74,2,NULL),(1052,43,74,2,NULL),(1053,48,74,2,NULL),(1054,49,74,2,NULL),(1055,50,74,2,NULL),(1056,88,74,2,NULL),(1057,45,74,2,NULL),(1058,75,74,2,NULL),(1059,86,74,2,NULL),(1060,60,74,2,NULL),(1061,69,74,2,NULL),(1062,96,74,2,NULL),(1063,56,74,2,NULL),(1064,67,74,2,NULL),(1065,78,74,2,NULL),(1066,82,74,2,NULL),(1067,90,74,2,NULL),(1068,99,74,2,NULL),(1069,100,74,2,NULL),(1070,71,74,2,NULL),(1071,79,74,2,NULL),(1072,109,74,2,NULL),(1073,44,74,2,NULL),(1074,93,74,2,NULL),(1075,94,74,2,NULL),(1076,95,74,2,NULL),(1077,6,78,2,NULL),(1078,7,78,2,NULL),(1079,8,78,2,NULL),(1080,9,78,2,NULL),(1081,11,78,2,NULL),(1082,12,78,2,NULL),(1083,146,78,2,NULL),(1084,135,78,2,NULL),(1085,120,78,2,NULL),(1086,162,78,2,NULL),(1087,158,78,2,NULL),(1088,159,78,2,NULL),(1089,160,78,2,NULL),(1090,161,78,2,NULL),(1091,169,78,2,NULL),(1092,170,78,2,NULL),(1093,43,78,2,NULL),(1094,48,78,2,NULL),(1095,49,78,2,NULL),(1096,50,78,2,NULL),(1097,88,78,2,NULL),(1098,45,78,2,NULL),(1099,75,78,2,NULL),(1100,86,78,2,NULL),(1101,60,78,2,NULL),(1102,69,78,2,NULL),(1103,96,78,2,NULL),(1104,56,78,2,NULL),(1105,67,78,2,NULL),(1106,78,78,2,NULL),(1107,82,78,2,NULL),(1108,90,78,2,NULL),(1109,99,78,2,NULL),(1110,100,78,2,NULL),(1111,71,78,2,NULL),(1112,79,78,2,NULL),(1113,109,78,2,NULL),(1114,44,78,2,NULL),(1115,93,78,2,NULL),(1116,94,78,2,NULL),(1117,95,78,2,NULL),(1118,6,27,2,NULL),(1119,7,27,2,NULL),(1120,8,27,2,NULL),(1121,9,27,2,NULL),(1122,11,27,2,NULL),(1123,12,27,2,NULL),(1124,146,27,2,NULL),(1125,135,27,2,NULL),(1126,120,27,2,NULL),(1127,162,27,2,NULL),(1128,158,27,2,NULL),(1129,159,27,2,NULL),(1130,160,27,2,NULL),(1131,161,27,2,NULL),(1132,169,27,2,NULL),(1133,170,27,2,NULL),(1134,43,27,2,NULL),(1135,48,27,2,NULL),(1136,49,27,2,NULL),(1137,50,27,2,NULL),(1138,88,27,2,NULL),(1139,45,27,2,NULL),(1140,75,27,2,NULL),(1141,86,27,2,NULL),(1142,60,27,2,NULL),(1143,69,27,2,NULL),(1144,96,27,2,NULL),(1145,56,27,2,NULL),(1146,67,27,2,NULL),(1147,78,27,2,NULL),(1148,82,27,2,NULL),(1149,90,27,2,NULL),(1150,99,27,2,NULL),(1151,100,27,2,NULL),(1152,71,27,2,NULL),(1153,79,27,2,NULL),(1154,109,27,2,NULL),(1155,44,27,2,NULL),(1156,93,27,2,NULL),(1157,94,27,2,NULL),(1158,95,27,2,NULL),(1159,19,9,2,NULL),(1160,19,34,2,NULL),(1161,19,80,2,NULL),(1162,6,36,2,NULL),(1163,7,36,2,NULL),(1164,8,36,2,NULL),(1165,9,36,2,NULL),(1166,11,36,2,NULL),(1167,12,36,2,NULL),(1168,146,36,2,NULL),(1169,135,36,2,NULL),(1170,120,36,2,NULL),(1171,162,36,2,NULL),(1172,158,36,2,NULL),(1173,159,36,2,NULL),(1174,160,36,2,NULL),(1175,161,36,2,NULL),(1176,169,36,2,NULL),(1177,170,36,2,NULL),(1178,43,36,2,NULL),(1179,48,36,2,NULL),(1180,49,36,2,NULL),(1181,50,36,2,NULL),(1182,88,36,2,NULL),(1183,45,36,2,NULL),(1184,75,36,2,NULL),(1185,86,36,2,NULL),(1186,60,36,2,NULL),(1187,69,36,2,NULL),(1188,96,36,2,NULL),(1189,56,36,2,NULL),(1190,67,36,2,NULL),(1191,78,36,2,NULL),(1192,82,36,2,NULL),(1193,90,36,2,NULL),(1194,99,36,2,NULL),(1195,100,36,2,NULL),(1196,71,36,2,NULL),(1197,79,36,2,NULL),(1198,109,36,2,NULL),(1199,44,36,2,NULL),(1200,93,36,2,NULL),(1201,94,36,2,NULL),(1202,95,36,2,NULL),(1203,6,41,2,NULL),(1204,7,41,2,NULL),(1205,8,41,2,NULL),(1206,9,41,2,NULL),(1207,11,41,2,NULL),(1208,12,41,2,NULL),(1209,146,41,2,NULL),(1210,135,41,2,NULL),(1211,120,41,2,NULL),(1212,162,41,2,NULL),(1213,158,41,2,NULL),(1214,159,41,2,NULL),(1215,160,41,2,NULL),(1216,161,41,2,NULL),(1217,169,41,2,NULL),(1218,170,41,2,NULL),(1219,43,41,2,NULL),(1220,48,41,2,NULL),(1221,49,41,2,NULL),(1222,50,41,2,NULL),(1223,88,41,2,NULL),(1224,45,41,2,NULL),(1225,75,41,2,NULL),(1226,86,41,2,NULL),(1227,60,41,2,NULL),(1228,69,41,2,NULL),(1229,96,41,2,NULL),(1230,56,41,2,NULL),(1231,67,41,2,NULL),(1232,78,41,2,NULL),(1233,82,41,2,NULL),(1234,90,41,2,NULL),(1235,99,41,2,NULL),(1236,100,41,2,NULL),(1237,71,41,2,NULL),(1238,79,41,2,NULL),(1239,109,41,2,NULL),(1240,44,41,2,NULL),(1241,93,41,2,NULL),(1242,94,41,2,NULL),(1243,95,41,2,NULL),(1244,6,94,2,NULL),(1245,7,94,2,NULL),(1246,8,94,2,NULL),(1247,9,94,2,NULL),(1248,11,94,2,NULL),(1249,12,94,2,NULL),(1250,146,94,2,NULL),(1251,135,94,2,NULL),(1252,120,94,2,NULL),(1253,162,94,2,NULL),(1254,158,94,2,NULL),(1255,159,94,2,NULL),(1256,160,94,2,NULL),(1257,161,94,2,NULL),(1258,169,94,2,NULL),(1259,170,94,2,NULL),(1260,43,94,2,NULL),(1261,48,94,2,NULL),(1262,49,94,2,NULL),(1263,50,94,2,NULL),(1264,88,94,2,NULL),(1265,45,94,2,NULL),(1266,75,94,2,NULL),(1267,86,94,2,NULL),(1268,60,94,2,NULL),(1269,69,94,2,NULL),(1270,96,94,2,NULL),(1271,56,94,2,NULL),(1272,67,94,2,NULL),(1273,78,94,2,NULL),(1274,82,94,2,NULL),(1275,90,94,2,NULL),(1276,99,94,2,NULL),(1277,100,94,2,NULL),(1278,71,94,2,NULL),(1279,79,94,2,NULL),(1280,109,94,2,NULL),(1281,44,94,2,NULL),(1282,93,94,2,NULL),(1283,94,94,2,NULL),(1284,95,94,2,NULL),(1285,41,3,2,NULL),(1286,41,19,2,NULL),(1287,41,71,2,NULL),(1288,41,93,2,NULL),(1289,6,83,2,NULL),(1290,7,83,2,NULL),(1291,8,83,2,NULL),(1292,9,83,2,NULL),(1293,11,83,2,NULL),(1294,12,83,2,NULL),(1295,146,83,2,NULL),(1296,135,83,2,NULL),(1297,120,83,2,NULL),(1298,162,83,2,NULL),(1299,158,83,2,NULL),(1300,159,83,2,NULL),(1301,160,83,2,NULL),(1302,161,83,2,NULL),(1303,169,83,2,NULL),(1304,170,83,2,NULL),(1305,43,83,2,NULL),(1306,48,83,2,NULL),(1307,49,83,2,NULL),(1308,50,83,2,NULL),(1309,88,83,2,NULL),(1310,45,83,2,NULL),(1311,75,83,2,NULL),(1312,86,83,2,NULL),(1313,60,83,2,NULL),(1314,69,83,2,NULL),(1315,96,83,2,NULL),(1316,56,83,2,NULL),(1317,67,83,2,NULL),(1318,78,83,2,NULL),(1319,82,83,2,NULL),(1320,90,83,2,NULL),(1321,99,83,2,NULL),(1322,100,83,2,NULL),(1323,71,83,2,NULL),(1324,79,83,2,NULL),(1325,109,83,2,NULL),(1326,44,83,2,NULL),(1327,93,83,2,NULL),(1328,94,83,2,NULL),(1329,95,83,2,NULL),(1330,47,87,2,NULL),(1331,58,86,2,NULL),(1332,87,90,2,NULL),(1333,101,89,2,NULL),(1334,108,92,2,NULL),(1335,6,84,2,NULL),(1336,7,84,2,NULL),(1337,8,84,2,NULL),(1338,9,84,2,NULL),(1339,11,84,2,NULL),(1340,12,84,2,NULL),(1341,146,84,2,NULL),(1342,135,84,2,NULL),(1343,120,84,2,NULL),(1344,162,84,2,NULL),(1345,158,84,2,NULL),(1346,159,84,2,NULL),(1347,160,84,2,NULL),(1348,161,84,2,NULL),(1349,169,84,2,NULL),(1350,170,84,2,NULL),(1351,43,84,2,NULL),(1352,48,84,2,NULL),(1353,49,84,2,NULL),(1354,50,84,2,NULL),(1355,88,84,2,NULL),(1356,45,84,2,NULL),(1357,75,84,2,NULL),(1358,86,84,2,NULL),(1359,60,84,2,NULL),(1360,69,84,2,NULL),(1361,96,84,2,NULL),(1362,56,84,2,NULL),(1363,67,84,2,NULL),(1364,78,84,2,NULL),(1365,82,84,2,NULL),(1366,90,84,2,NULL),(1367,99,84,2,NULL),(1368,100,84,2,NULL),(1369,71,84,2,NULL),(1370,79,84,2,NULL),(1371,109,84,2,NULL),(1372,44,84,2,NULL),(1373,93,84,2,NULL),(1374,94,84,2,NULL),(1375,95,84,2,NULL),(1376,52,92,2,NULL),(1377,53,89,2,NULL),(1378,64,87,2,NULL),(1379,65,84,2,NULL),(1380,76,86,2,NULL),(1381,102,89,2,NULL),(1382,43,1,2,NULL),(1383,48,1,2,NULL),(1384,49,1,2,NULL),(1385,50,1,2,NULL),(1386,88,1,2,NULL),(1387,43,4,2,NULL),(1388,48,4,2,NULL),(1389,49,4,2,NULL),(1390,50,4,2,NULL),(1391,88,4,2,NULL),(1392,43,5,2,NULL),(1393,48,5,2,NULL),(1394,49,5,2,NULL),(1395,50,5,2,NULL),(1396,88,5,2,NULL),(1397,43,6,2,NULL),(1398,48,6,2,NULL),(1399,49,6,2,NULL),(1400,50,6,2,NULL),(1401,88,6,2,NULL),(1402,6,85,2,NULL),(1403,7,85,2,NULL),(1404,8,85,2,NULL),(1405,9,85,2,NULL),(1406,11,85,2,NULL),(1407,12,85,2,NULL),(1408,43,10,2,NULL),(1409,48,10,2,NULL),(1410,49,10,2,NULL),(1411,50,10,2,NULL),(1412,88,10,2,NULL),(1413,43,11,2,NULL),(1414,48,11,2,NULL),(1415,49,11,2,NULL),(1416,50,11,2,NULL),(1417,88,11,2,NULL),(1418,43,75,2,NULL),(1419,48,75,2,NULL),(1420,49,75,2,NULL),(1421,50,75,2,NULL),(1422,88,75,2,NULL),(1423,43,31,2,NULL),(1424,48,31,2,NULL),(1425,49,31,2,NULL),(1426,50,31,2,NULL),(1427,88,31,2,NULL),(1428,146,85,2,NULL),(1429,135,85,2,NULL),(1430,120,85,2,NULL),(1431,43,64,2,NULL),(1432,48,64,2,NULL),(1433,49,64,2,NULL),(1434,50,64,2,NULL),(1435,88,64,2,NULL),(1436,162,85,2,NULL),(1437,158,85,2,NULL),(1438,159,85,2,NULL),(1439,160,85,2,NULL),(1440,161,85,2,NULL),(1441,169,85,2,NULL),(1442,170,85,2,NULL),(1443,43,81,2,NULL),(1444,48,81,2,NULL),(1445,49,81,2,NULL),(1446,50,81,2,NULL),(1447,88,81,2,NULL),(1448,43,82,2,NULL),(1449,48,82,2,NULL),(1450,49,82,2,NULL),(1451,50,82,2,NULL),(1452,88,82,2,NULL),(1453,43,103,2,NULL),(1454,48,103,2,NULL),(1455,49,103,2,NULL),(1456,50,103,2,NULL),(1457,88,103,2,NULL),(1458,43,86,2,NULL),(1459,48,86,2,NULL),(1460,49,86,2,NULL),(1461,50,86,2,NULL),(1462,88,86,2,NULL),(1463,45,85,2,NULL),(1464,75,85,2,NULL),(1465,86,85,2,NULL),(1466,43,87,2,NULL),(1467,48,87,2,NULL),(1468,49,87,2,NULL),(1469,50,87,2,NULL),(1470,88,87,2,NULL),(1471,43,88,2,NULL),(1472,48,88,2,NULL),(1473,49,88,2,NULL),(1474,50,88,2,NULL),(1475,88,88,2,NULL),(1476,60,85,2,NULL),(1477,69,85,2,NULL),(1478,96,85,2,NULL),(1479,43,89,2,NULL),(1480,48,89,2,NULL),(1481,49,89,2,NULL),(1482,50,89,2,NULL),(1483,88,89,2,NULL),(1484,56,85,2,NULL),(1485,67,85,2,NULL),(1486,78,85,2,NULL),(1487,82,85,2,NULL),(1488,90,85,2,NULL),(1489,99,85,2,NULL),(1490,100,85,2,NULL),(1491,43,90,2,NULL),(1492,48,90,2,NULL),(1493,49,90,2,NULL),(1494,50,90,2,NULL),(1495,88,90,2,NULL),(1496,71,85,2,NULL),(1497,79,85,2,NULL),(1498,109,85,2,NULL),(1499,43,91,2,NULL),(1500,48,91,2,NULL),(1501,49,91,2,NULL),(1502,50,91,2,NULL),(1503,88,91,2,NULL),(1504,44,85,2,NULL),(1505,93,85,2,NULL),(1506,94,85,2,NULL),(1507,95,85,2,NULL),(1508,43,95,2,NULL),(1509,48,95,2,NULL),(1510,49,95,2,NULL),(1511,50,95,2,NULL),(1512,88,95,2,NULL),(1513,43,96,2,NULL),(1514,48,96,2,NULL),(1515,49,96,2,NULL),(1516,50,96,2,NULL),(1517,88,96,2,NULL),(1518,43,97,2,NULL),(1519,48,97,2,NULL),(1520,49,97,2,NULL),(1521,50,97,2,NULL),(1522,88,97,2,NULL),(1523,43,98,2,NULL),(1524,48,98,2,NULL),(1525,49,98,2,NULL),(1526,50,98,2,NULL),(1527,88,98,2,NULL),(1528,43,99,2,NULL),(1529,48,99,2,NULL),(1530,49,99,2,NULL),(1531,50,99,2,NULL),(1532,88,99,2,NULL),(1533,43,100,2,NULL),(1534,48,100,2,NULL),(1535,49,100,2,NULL),(1536,50,100,2,NULL),(1537,88,100,2,NULL),(1538,43,101,2,NULL),(1539,48,101,2,NULL),(1540,49,101,2,NULL),(1541,50,101,2,NULL),(1542,88,101,2,NULL),(1543,43,102,2,NULL),(1544,48,102,2,NULL),(1545,49,102,2,NULL),(1546,50,102,2,NULL),(1547,88,102,2,NULL),(1548,59,90,2,NULL),(1549,85,87,2,NULL),(1550,104,89,2,NULL),(1551,45,1,2,NULL),(1552,75,1,2,NULL),(1553,86,1,2,NULL),(1554,45,4,2,NULL),(1555,75,4,2,NULL),(1556,86,4,2,NULL),(1557,45,5,2,NULL),(1558,75,5,2,NULL),(1559,86,5,2,NULL),(1560,45,6,2,NULL),(1561,75,6,2,NULL),(1562,86,6,2,NULL),(1563,6,86,2,NULL),(1564,7,86,2,NULL),(1565,8,86,2,NULL),(1566,9,86,2,NULL),(1567,11,86,2,NULL),(1568,12,86,2,NULL),(1569,45,10,2,NULL),(1570,75,10,2,NULL),(1571,86,10,2,NULL),(1572,45,11,2,NULL),(1573,75,11,2,NULL),(1574,86,11,2,NULL),(1575,45,75,2,NULL),(1576,75,75,2,NULL),(1577,86,75,2,NULL),(1578,45,31,2,NULL),(1579,75,31,2,NULL),(1580,86,31,2,NULL),(1581,146,86,2,NULL),(1582,135,86,2,NULL),(1583,120,86,2,NULL),(1584,45,64,2,NULL),(1585,75,64,2,NULL),(1586,86,64,2,NULL),(1587,162,86,2,NULL),(1588,158,86,2,NULL),(1589,159,86,2,NULL),(1590,160,86,2,NULL),(1591,161,86,2,NULL),(1592,169,86,2,NULL),(1593,170,86,2,NULL),(1594,45,81,2,NULL),(1595,75,81,2,NULL),(1596,86,81,2,NULL),(1597,45,82,2,NULL),(1598,75,82,2,NULL),(1599,86,82,2,NULL),(1600,45,103,2,NULL),(1601,75,103,2,NULL),(1602,86,103,2,NULL),(1603,45,87,2,NULL),(1604,75,87,2,NULL),(1605,86,87,2,NULL),(1606,45,88,2,NULL),(1607,75,88,2,NULL),(1608,86,88,2,NULL),(1609,60,86,2,NULL),(1610,69,86,2,NULL),(1611,96,86,2,NULL),(1612,45,89,2,NULL),(1613,75,89,2,NULL),(1614,86,89,2,NULL),(1615,56,86,2,NULL),(1616,67,86,2,NULL),(1617,78,86,2,NULL),(1618,82,86,2,NULL),(1619,90,86,2,NULL),(1620,99,86,2,NULL),(1621,100,86,2,NULL),(1622,45,90,2,NULL),(1623,75,90,2,NULL),(1624,86,90,2,NULL),(1625,71,86,2,NULL),(1626,79,86,2,NULL),(1627,109,86,2,NULL),(1628,45,91,2,NULL),(1629,75,91,2,NULL),(1630,86,91,2,NULL),(1631,44,86,2,NULL),(1632,93,86,2,NULL),(1633,94,86,2,NULL),(1634,95,86,2,NULL),(1635,45,95,2,NULL),(1636,75,95,2,NULL),(1637,86,95,2,NULL),(1638,45,96,2,NULL),(1639,75,96,2,NULL),(1640,86,96,2,NULL),(1641,45,97,2,NULL),(1642,75,97,2,NULL),(1643,86,97,2,NULL),(1644,45,98,2,NULL),(1645,75,98,2,NULL),(1646,86,98,2,NULL),(1647,45,99,2,NULL),(1648,75,99,2,NULL),(1649,86,99,2,NULL),(1650,45,100,2,NULL),(1651,75,100,2,NULL),(1652,86,100,2,NULL),(1653,45,101,2,NULL),(1654,75,101,2,NULL),(1655,86,101,2,NULL),(1656,45,102,2,NULL),(1657,75,102,2,NULL),(1658,86,102,2,NULL),(1659,57,86,2,NULL),(1660,61,88,2,NULL),(1661,68,89,2,NULL),(1662,84,90,2,NULL),(1663,6,87,2,NULL),(1664,7,87,2,NULL),(1665,8,87,2,NULL),(1666,9,87,2,NULL),(1667,11,87,2,NULL),(1668,12,87,2,NULL),(1669,146,87,2,NULL),(1670,135,87,2,NULL),(1671,120,87,2,NULL),(1672,162,87,2,NULL),(1673,158,87,2,NULL),(1674,159,87,2,NULL),(1675,160,87,2,NULL),(1676,161,87,2,NULL),(1677,169,87,2,NULL),(1678,170,87,2,NULL),(1679,60,87,2,NULL),(1680,69,87,2,NULL),(1681,96,87,2,NULL),(1682,56,87,2,NULL),(1683,67,87,2,NULL),(1684,78,87,2,NULL),(1685,82,87,2,NULL),(1686,90,87,2,NULL),(1687,99,87,2,NULL),(1688,100,87,2,NULL),(1689,71,87,2,NULL),(1690,79,87,2,NULL),(1691,109,87,2,NULL),(1692,44,87,2,NULL),(1693,93,87,2,NULL),(1694,94,87,2,NULL),(1695,95,87,2,NULL),(1696,63,90,2,NULL),(1697,66,84,2,NULL),(1698,103,89,2,NULL),(1699,105,86,2,NULL),(1700,60,1,2,NULL),(1701,69,1,2,NULL),(1702,96,1,2,NULL),(1703,60,4,2,NULL),(1704,69,4,2,NULL),(1705,96,4,2,NULL),(1706,60,5,2,NULL),(1707,69,5,2,NULL),(1708,96,5,2,NULL),(1709,60,6,2,NULL),(1710,69,6,2,NULL),(1711,96,6,2,NULL),(1712,6,88,2,NULL),(1713,7,88,2,NULL),(1714,8,88,2,NULL),(1715,9,88,2,NULL),(1716,11,88,2,NULL),(1717,12,88,2,NULL),(1718,60,10,2,NULL),(1719,69,10,2,NULL),(1720,96,10,2,NULL),(1721,60,11,2,NULL),(1722,69,11,2,NULL),(1723,96,11,2,NULL),(1724,60,75,2,NULL),(1725,69,75,2,NULL),(1726,96,75,2,NULL),(1727,60,31,2,NULL),(1728,69,31,2,NULL),(1729,96,31,2,NULL),(1730,146,88,2,NULL),(1731,135,88,2,NULL),(1732,120,88,2,NULL),(1733,60,64,2,NULL),(1734,69,64,2,NULL),(1735,96,64,2,NULL),(1736,162,88,2,NULL),(1737,158,88,2,NULL),(1738,159,88,2,NULL),(1739,160,88,2,NULL),(1740,161,88,2,NULL),(1741,169,88,2,NULL),(1742,170,88,2,NULL),(1743,60,81,2,NULL),(1744,69,81,2,NULL),(1745,96,81,2,NULL),(1746,60,82,2,NULL),(1747,69,82,2,NULL),(1748,96,82,2,NULL),(1749,60,103,2,NULL),(1750,69,103,2,NULL),(1751,96,103,2,NULL),(1752,60,89,2,NULL),(1753,69,89,2,NULL),(1754,96,89,2,NULL),(1755,56,88,2,NULL),(1756,67,88,2,NULL),(1757,78,88,2,NULL),(1758,82,88,2,NULL),(1759,90,88,2,NULL),(1760,99,88,2,NULL),(1761,100,88,2,NULL),(1762,60,90,2,NULL),(1763,69,90,2,NULL),(1764,96,90,2,NULL),(1765,71,88,2,NULL),(1766,79,88,2,NULL),(1767,109,88,2,NULL),(1768,60,91,2,NULL),(1769,69,91,2,NULL),(1770,96,91,2,NULL),(1771,44,88,2,NULL),(1772,93,88,2,NULL),(1773,94,88,2,NULL),(1774,95,88,2,NULL),(1775,60,95,2,NULL),(1776,69,95,2,NULL),(1777,96,95,2,NULL),(1778,60,96,2,NULL),(1779,69,96,2,NULL),(1780,96,96,2,NULL),(1781,60,97,2,NULL),(1782,69,97,2,NULL),(1783,96,97,2,NULL),(1784,60,98,2,NULL),(1785,69,98,2,NULL),(1786,96,98,2,NULL),(1787,60,99,2,NULL),(1788,69,99,2,NULL),(1789,96,99,2,NULL),(1790,60,100,2,NULL),(1791,69,100,2,NULL),(1792,96,100,2,NULL),(1793,60,101,2,NULL),(1794,69,101,2,NULL),(1795,96,101,2,NULL),(1796,60,102,2,NULL),(1797,69,102,2,NULL),(1798,96,102,2,NULL),(1799,46,87,2,NULL),(1800,54,90,2,NULL),(1801,77,86,2,NULL),(1802,89,92,2,NULL),(1803,107,90,2,NULL),(1804,56,1,2,NULL),(1805,67,1,2,NULL),(1806,78,1,2,NULL),(1807,82,1,2,NULL),(1808,90,1,2,NULL),(1809,99,1,2,NULL),(1810,100,1,2,NULL),(1811,56,4,2,NULL),(1812,67,4,2,NULL),(1813,78,4,2,NULL),(1814,82,4,2,NULL),(1815,90,4,2,NULL),(1816,99,4,2,NULL),(1817,100,4,2,NULL),(1818,56,5,2,NULL),(1819,67,5,2,NULL),(1820,78,5,2,NULL),(1821,82,5,2,NULL),(1822,90,5,2,NULL),(1823,99,5,2,NULL),(1824,100,5,2,NULL),(1825,56,6,2,NULL),(1826,67,6,2,NULL),(1827,78,6,2,NULL),(1828,82,6,2,NULL),(1829,90,6,2,NULL),(1830,99,6,2,NULL),(1831,100,6,2,NULL),(1832,6,89,2,NULL),(1833,7,89,2,NULL),(1834,8,89,2,NULL),(1835,9,89,2,NULL),(1836,11,89,2,NULL),(1837,12,89,2,NULL),(1838,56,10,2,NULL),(1839,67,10,2,NULL),(1840,78,10,2,NULL),(1841,82,10,2,NULL),(1842,90,10,2,NULL),(1843,99,10,2,NULL),(1844,100,10,2,NULL),(1845,56,11,2,NULL),(1846,67,11,2,NULL),(1847,78,11,2,NULL),(1848,82,11,2,NULL),(1849,90,11,2,NULL),(1850,99,11,2,NULL),(1851,100,11,2,NULL),(1852,56,75,2,NULL),(1853,67,75,2,NULL),(1854,78,75,2,NULL),(1855,82,75,2,NULL),(1856,90,75,2,NULL),(1857,99,75,2,NULL),(1858,100,75,2,NULL),(1859,56,31,2,NULL),(1860,67,31,2,NULL),(1861,78,31,2,NULL),(1862,82,31,2,NULL),(1863,90,31,2,NULL),(1864,99,31,2,NULL),(1865,100,31,2,NULL),(1866,146,89,2,NULL),(1867,135,89,2,NULL),(1868,120,89,2,NULL),(1869,56,64,2,NULL),(1870,67,64,2,NULL),(1871,78,64,2,NULL),(1872,82,64,2,NULL),(1873,90,64,2,NULL),(1874,99,64,2,NULL),(1875,100,64,2,NULL),(1876,162,89,2,NULL),(1877,158,89,2,NULL),(1878,159,89,2,NULL),(1879,160,89,2,NULL),(1880,161,89,2,NULL),(1881,169,89,2,NULL),(1882,170,89,2,NULL),(1883,56,81,2,NULL),(1884,67,81,2,NULL),(1885,78,81,2,NULL),(1886,82,81,2,NULL),(1887,90,81,2,NULL),(1888,99,81,2,NULL),(1889,100,81,2,NULL),(1890,56,82,2,NULL),(1891,67,82,2,NULL),(1892,78,82,2,NULL),(1893,82,82,2,NULL),(1894,90,82,2,NULL),(1895,99,82,2,NULL),(1896,100,82,2,NULL),(1897,56,103,2,NULL),(1898,67,103,2,NULL),(1899,78,103,2,NULL),(1900,82,103,2,NULL),(1901,90,103,2,NULL),(1902,99,103,2,NULL),(1903,100,103,2,NULL),(1904,56,90,2,NULL),(1905,67,90,2,NULL),(1906,78,90,2,NULL),(1907,82,90,2,NULL),(1908,90,90,2,NULL),(1909,99,90,2,NULL),(1910,100,90,2,NULL),(1911,71,89,2,NULL),(1912,79,89,2,NULL),(1913,109,89,2,NULL),(1914,56,91,2,NULL),(1915,67,91,2,NULL),(1916,78,91,2,NULL),(1917,82,91,2,NULL),(1918,90,91,2,NULL),(1919,99,91,2,NULL),(1920,100,91,2,NULL),(1921,44,89,2,NULL),(1922,93,89,2,NULL),(1923,94,89,2,NULL),(1924,95,89,2,NULL),(1925,56,95,2,NULL),(1926,67,95,2,NULL),(1927,78,95,2,NULL),(1928,82,95,2,NULL),(1929,90,95,2,NULL),(1930,99,95,2,NULL),(1931,100,95,2,NULL),(1932,56,96,2,NULL),(1933,67,96,2,NULL),(1934,78,96,2,NULL),(1935,82,96,2,NULL),(1936,90,96,2,NULL),(1937,99,96,2,NULL),(1938,100,96,2,NULL),(1939,56,97,2,NULL),(1940,67,97,2,NULL),(1941,78,97,2,NULL),(1942,82,97,2,NULL),(1943,90,97,2,NULL),(1944,99,97,2,NULL),(1945,100,97,2,NULL),(1946,56,98,2,NULL),(1947,67,98,2,NULL),(1948,78,98,2,NULL),(1949,82,98,2,NULL),(1950,90,98,2,NULL),(1951,99,98,2,NULL),(1952,100,98,2,NULL),(1953,56,99,2,NULL),(1954,67,99,2,NULL),(1955,78,99,2,NULL),(1956,82,99,2,NULL),(1957,90,99,2,NULL),(1958,99,99,2,NULL),(1959,100,99,2,NULL),(1960,56,100,2,NULL),(1961,67,100,2,NULL),(1962,78,100,2,NULL),(1963,82,100,2,NULL),(1964,90,100,2,NULL),(1965,99,100,2,NULL),(1966,100,100,2,NULL),(1967,56,101,2,NULL),(1968,67,101,2,NULL),(1969,78,101,2,NULL),(1970,82,101,2,NULL),(1971,90,101,2,NULL),(1972,99,101,2,NULL),(1973,100,101,2,NULL),(1974,56,102,2,NULL),(1975,67,102,2,NULL),(1976,78,102,2,NULL),(1977,82,102,2,NULL),(1978,90,102,2,NULL),(1979,99,102,2,NULL),(1980,100,102,2,NULL),(1981,55,92,2,NULL),(1982,73,87,2,NULL),(1983,80,84,2,NULL),(1984,81,89,2,NULL),(1985,92,86,2,NULL),(1986,71,1,2,NULL),(1987,79,1,2,NULL),(1988,109,1,2,NULL),(1989,71,4,2,NULL),(1990,79,4,2,NULL),(1991,109,4,2,NULL),(1992,71,5,2,NULL),(1993,79,5,2,NULL),(1994,109,5,2,NULL),(1995,71,6,2,NULL),(1996,79,6,2,NULL),(1997,109,6,2,NULL),(1998,6,90,2,NULL),(1999,7,90,2,NULL),(2000,8,90,2,NULL),(2001,9,90,2,NULL),(2002,11,90,2,NULL),(2003,12,90,2,NULL),(2004,71,10,2,NULL),(2005,79,10,2,NULL),(2006,109,10,2,NULL),(2007,71,11,2,NULL),(2008,79,11,2,NULL),(2009,109,11,2,NULL),(2010,71,75,2,NULL),(2011,79,75,2,NULL),(2012,109,75,2,NULL),(2013,71,31,2,NULL),(2014,79,31,2,NULL),(2015,109,31,2,NULL),(2016,146,90,2,NULL),(2017,135,90,2,NULL),(2018,120,90,2,NULL),(2019,71,64,2,NULL),(2020,79,64,2,NULL),(2021,109,64,2,NULL),(2022,162,90,2,NULL),(2023,158,90,2,NULL),(2024,159,90,2,NULL),(2025,160,90,2,NULL),(2026,161,90,2,NULL),(2027,169,90,2,NULL),(2028,170,90,2,NULL),(2029,71,81,2,NULL),(2030,79,81,2,NULL),(2031,109,81,2,NULL),(2032,71,82,2,NULL),(2033,79,82,2,NULL),(2034,109,82,2,NULL),(2035,71,103,2,NULL),(2036,79,103,2,NULL),(2037,109,103,2,NULL),(2038,71,91,2,NULL),(2039,79,91,2,NULL),(2040,109,91,2,NULL),(2041,44,90,2,NULL),(2042,93,90,2,NULL),(2043,94,90,2,NULL),(2044,95,90,2,NULL),(2045,71,95,2,NULL),(2046,79,95,2,NULL),(2047,109,95,2,NULL),(2048,71,96,2,NULL),(2049,79,96,2,NULL),(2050,109,96,2,NULL),(2051,71,97,2,NULL),(2052,79,97,2,NULL),(2053,109,97,2,NULL),(2054,71,98,2,NULL),(2055,79,98,2,NULL),(2056,109,98,2,NULL),(2057,71,99,2,NULL),(2058,79,99,2,NULL),(2059,109,99,2,NULL),(2060,71,100,2,NULL),(2061,79,100,2,NULL),(2062,109,100,2,NULL),(2063,71,101,2,NULL),(2064,79,101,2,NULL),(2065,109,101,2,NULL),(2066,71,102,2,NULL),(2067,79,102,2,NULL),(2068,109,102,2,NULL),(2069,51,87,2,NULL),(2070,72,89,2,NULL),(2071,74,90,2,NULL),(2072,83,86,2,NULL),(2073,6,91,2,NULL),(2074,7,91,2,NULL),(2075,8,91,2,NULL),(2076,9,91,2,NULL),(2077,11,91,2,NULL),(2078,12,91,2,NULL),(2079,146,91,2,NULL),(2080,135,91,2,NULL),(2081,120,91,2,NULL),(2082,162,91,2,NULL),(2083,158,91,2,NULL),(2084,159,91,2,NULL),(2085,160,91,2,NULL),(2086,161,91,2,NULL),(2087,169,91,2,NULL),(2088,170,91,2,NULL),(2089,44,91,2,NULL),(2090,93,91,2,NULL),(2091,94,91,2,NULL),(2092,95,91,2,NULL),(2093,44,1,2,NULL),(2094,93,1,2,NULL),(2095,94,1,2,NULL),(2096,95,1,2,NULL),(2097,44,4,2,NULL),(2098,93,4,2,NULL),(2099,94,4,2,NULL),(2100,95,4,2,NULL),(2101,44,5,2,NULL),(2102,93,5,2,NULL),(2103,94,5,2,NULL),(2104,95,5,2,NULL),(2105,44,6,2,NULL),(2106,93,6,2,NULL),(2107,94,6,2,NULL),(2108,95,6,2,NULL),(2109,44,10,2,NULL),(2110,93,10,2,NULL),(2111,94,10,2,NULL),(2112,95,10,2,NULL),(2113,44,11,2,NULL),(2114,93,11,2,NULL),(2115,94,11,2,NULL),(2116,95,11,2,NULL),(2117,44,75,2,NULL),(2118,93,75,2,NULL),(2119,94,75,2,NULL),(2120,95,75,2,NULL),(2121,44,31,2,NULL),(2122,93,31,2,NULL),(2123,94,31,2,NULL),(2124,95,31,2,NULL),(2125,44,64,2,NULL),(2126,93,64,2,NULL),(2127,94,64,2,NULL),(2128,95,64,2,NULL),(2129,44,81,2,NULL),(2130,93,81,2,NULL),(2131,94,81,2,NULL),(2132,95,81,2,NULL),(2133,44,82,2,NULL),(2134,93,82,2,NULL),(2135,94,82,2,NULL),(2136,95,82,2,NULL),(2137,44,103,2,NULL),(2138,93,103,2,NULL),(2139,94,103,2,NULL),(2140,95,103,2,NULL),(2141,44,95,2,NULL),(2142,93,95,2,NULL),(2143,94,95,2,NULL),(2144,95,95,2,NULL),(2145,44,96,2,NULL),(2146,93,96,2,NULL),(2147,94,96,2,NULL),(2148,95,96,2,NULL),(2149,44,97,2,NULL),(2150,93,97,2,NULL),(2151,94,97,2,NULL),(2152,95,97,2,NULL),(2153,44,98,2,NULL),(2154,93,98,2,NULL),(2155,94,98,2,NULL),(2156,95,98,2,NULL),(2157,44,99,2,NULL),(2158,93,99,2,NULL),(2159,94,99,2,NULL),(2160,95,99,2,NULL),(2161,44,100,2,NULL),(2162,93,100,2,NULL),(2163,94,100,2,NULL),(2164,95,100,2,NULL),(2165,44,101,2,NULL),(2166,93,101,2,NULL),(2167,94,101,2,NULL),(2168,95,101,2,NULL),(2169,44,102,2,NULL),(2170,93,102,2,NULL),(2171,94,102,2,NULL),(2172,95,102,2,NULL),(2173,6,95,2,NULL),(2174,7,95,2,NULL),(2175,8,95,2,NULL),(2176,9,95,2,NULL),(2177,11,95,2,NULL),(2178,12,95,2,NULL),(2179,146,95,2,NULL),(2180,135,95,2,NULL),(2181,120,95,2,NULL),(2182,162,95,2,NULL),(2183,158,95,2,NULL),(2184,159,95,2,NULL),(2185,160,95,2,NULL),(2186,161,95,2,NULL),(2187,169,95,2,NULL),(2188,170,95,2,NULL),(2189,70,3,2,NULL),(2190,70,19,2,NULL),(2191,70,71,2,NULL),(2192,70,93,2,NULL),(2193,6,96,2,NULL),(2194,7,96,2,NULL),(2195,8,96,2,NULL),(2196,9,96,2,NULL),(2197,11,96,2,NULL),(2198,12,96,2,NULL),(2199,146,96,2,NULL),(2200,135,96,2,NULL),(2201,120,96,2,NULL),(2202,162,96,2,NULL),(2203,158,96,2,NULL),(2204,159,96,2,NULL),(2205,160,96,2,NULL),(2206,161,96,2,NULL),(2207,169,96,2,NULL),(2208,170,96,2,NULL),(2209,6,97,2,NULL),(2210,7,97,2,NULL),(2211,8,97,2,NULL),(2212,9,97,2,NULL),(2213,11,97,2,NULL),(2214,12,97,2,NULL),(2215,146,97,2,NULL),(2216,135,97,2,NULL),(2217,120,97,2,NULL),(2218,162,97,2,NULL),(2219,158,97,2,NULL),(2220,159,97,2,NULL),(2221,160,97,2,NULL),(2222,161,97,2,NULL),(2223,169,97,2,NULL),(2224,170,97,2,NULL),(2225,6,98,2,NULL),(2226,7,98,2,NULL),(2227,8,98,2,NULL),(2228,9,98,2,NULL),(2229,11,98,2,NULL),(2230,12,98,2,NULL),(2231,146,98,2,NULL),(2232,135,98,2,NULL),(2233,120,98,2,NULL),(2234,162,98,2,NULL),(2235,158,98,2,NULL),(2236,159,98,2,NULL),(2237,160,98,2,NULL),(2238,161,98,2,NULL),(2239,169,98,2,NULL),(2240,170,98,2,NULL),(2241,6,99,2,NULL),(2242,7,99,2,NULL),(2243,8,99,2,NULL),(2244,9,99,2,NULL),(2245,11,99,2,NULL),(2246,12,99,2,NULL),(2247,146,99,2,NULL),(2248,135,99,2,NULL),(2249,120,99,2,NULL),(2250,162,99,2,NULL),(2251,158,99,2,NULL),(2252,159,99,2,NULL),(2253,160,99,2,NULL),(2254,161,99,2,NULL),(2255,169,99,2,NULL),(2256,170,99,2,NULL),(2257,6,100,2,NULL),(2258,7,100,2,NULL),(2259,8,100,2,NULL),(2260,9,100,2,NULL),(2261,11,100,2,NULL),(2262,12,100,2,NULL),(2263,146,100,2,NULL),(2264,135,100,2,NULL),(2265,120,100,2,NULL),(2266,162,100,2,NULL),(2267,158,100,2,NULL),(2268,159,100,2,NULL),(2269,160,100,2,NULL),(2270,161,100,2,NULL),(2271,169,100,2,NULL),(2272,170,100,2,NULL),(2273,6,101,2,NULL),(2274,7,101,2,NULL),(2275,8,101,2,NULL),(2276,9,101,2,NULL),(2277,11,101,2,NULL),(2278,12,101,2,NULL),(2279,146,101,2,NULL),(2280,135,101,2,NULL),(2281,120,101,2,NULL),(2282,162,101,2,NULL),(2283,158,101,2,NULL),(2284,159,101,2,NULL),(2285,160,101,2,NULL),(2286,161,101,2,NULL),(2287,169,101,2,NULL),(2288,170,101,2,NULL),(2289,6,102,2,NULL),(2290,7,102,2,NULL),(2291,8,102,2,NULL),(2292,9,102,2,NULL),(2293,11,102,2,NULL),(2294,12,102,2,NULL),(2295,146,102,2,NULL),(2296,135,102,2,NULL),(2297,120,102,2,NULL),(2298,162,102,2,NULL),(2299,158,102,2,NULL),(2300,159,102,2,NULL),(2301,160,102,2,NULL),(2302,161,102,2,NULL),(2303,169,102,2,NULL),(2304,170,102,2,NULL),(2305,4,7,2,NULL),(2306,6,6,2,NULL),(2307,7,6,2,NULL),(2308,8,6,2,NULL),(2309,9,6,2,NULL),(2310,11,6,2,NULL),(2311,12,6,2,NULL),(2312,146,6,2,NULL),(2313,135,6,2,NULL),(2314,120,6,2,NULL),(2315,162,6,2,NULL),(2316,158,6,2,NULL),(2317,159,6,2,NULL),(2318,160,6,2,NULL),(2319,161,6,2,NULL),(2320,169,6,2,NULL),(2321,170,6,2,NULL),(2322,6,1,2,NULL),(2323,7,1,2,NULL),(2324,8,1,2,NULL),(2325,9,1,2,NULL),(2326,11,1,2,NULL),(2327,12,1,2,NULL),(2328,6,4,2,NULL),(2329,7,4,2,NULL),(2330,8,4,2,NULL),(2331,9,4,2,NULL),(2332,11,4,2,NULL),(2333,12,4,2,NULL),(2334,6,5,2,NULL),(2335,7,5,2,NULL),(2336,8,5,2,NULL),(2337,9,5,2,NULL),(2338,11,5,2,NULL),(2339,12,5,2,NULL),(2340,6,10,2,NULL),(2341,7,10,2,NULL),(2342,8,10,2,NULL),(2343,9,10,2,NULL),(2344,11,10,2,NULL),(2345,12,10,2,NULL),(2346,6,11,2,NULL),(2347,7,11,2,NULL),(2348,8,11,2,NULL),(2349,9,11,2,NULL),(2350,11,11,2,NULL),(2351,12,11,2,NULL),(2352,6,75,2,NULL),(2353,7,75,2,NULL),(2354,8,75,2,NULL),(2355,9,75,2,NULL),(2356,11,75,2,NULL),(2357,12,75,2,NULL),(2358,6,31,2,NULL),(2359,7,31,2,NULL),(2360,8,31,2,NULL),(2361,9,31,2,NULL),(2362,11,31,2,NULL),(2363,12,31,2,NULL),(2364,6,64,2,NULL),(2365,7,64,2,NULL),(2366,8,64,2,NULL),(2367,9,64,2,NULL),(2368,11,64,2,NULL),(2369,12,64,2,NULL),(2370,6,81,2,NULL),(2371,7,81,2,NULL),(2372,8,81,2,NULL),(2373,9,81,2,NULL),(2374,11,81,2,NULL),(2375,12,81,2,NULL),(2376,6,82,2,NULL),(2377,7,82,2,NULL),(2378,8,82,2,NULL),(2379,9,82,2,NULL),(2380,11,82,2,NULL),(2381,12,82,2,NULL),(2382,6,103,2,NULL),(2383,7,103,2,NULL),(2384,8,103,2,NULL),(2385,9,103,2,NULL),(2386,11,103,2,NULL),(2387,12,103,2,NULL),(2388,5,9,2,NULL),(2389,5,34,2,NULL),(2390,5,80,2,NULL),(2391,146,10,2,NULL),(2392,135,10,2,NULL),(2393,120,10,2,NULL),(2394,162,10,2,NULL),(2395,158,10,2,NULL),(2396,159,10,2,NULL),(2397,160,10,2,NULL),(2398,161,10,2,NULL),(2399,169,10,2,NULL),(2400,170,10,2,NULL),(2401,146,11,2,NULL),(2402,135,11,2,NULL),(2403,120,11,2,NULL),(2404,162,11,2,NULL),(2405,158,11,2,NULL),(2406,159,11,2,NULL),(2407,160,11,2,NULL),(2408,161,11,2,NULL),(2409,169,11,2,NULL),(2410,170,11,2,NULL),(2411,146,75,2,NULL),(2412,135,75,2,NULL),(2413,120,75,2,NULL),(2414,162,75,2,NULL),(2415,158,75,2,NULL),(2416,159,75,2,NULL),(2417,160,75,2,NULL),(2418,161,75,2,NULL),(2419,169,75,2,NULL),(2420,170,75,2,NULL),(2421,146,1,2,NULL),(2422,3,3,2,NULL),(2423,146,4,2,NULL),(2424,3,19,2,NULL),(2425,3,71,2,NULL),(2426,146,5,2,NULL),(2427,3,93,2,NULL),(2428,135,31,2,NULL),(2429,120,31,2,NULL),(2430,135,1,2,NULL),(2431,146,64,2,NULL),(2432,120,1,2,NULL),(2433,162,1,2,NULL),(2434,162,31,2,NULL),(2435,158,31,2,NULL),(2436,158,1,2,NULL),(2437,159,31,2,NULL),(2438,159,1,2,NULL),(2439,160,31,2,NULL),(2440,160,1,2,NULL),(2441,161,31,2,NULL),(2442,161,1,2,NULL),(2443,169,31,2,NULL),(2444,169,1,2,NULL),(2445,170,31,2,NULL),(2446,170,1,2,NULL),(2447,146,81,2,NULL),(2448,135,4,2,NULL),(2449,146,82,2,NULL),(2450,120,4,2,NULL),(2451,146,103,2,NULL),(2452,162,4,2,NULL),(2453,135,5,2,NULL),(2454,158,4,2,NULL),(2455,135,64,2,NULL),(2456,159,4,2,NULL),(2457,160,4,2,NULL),(2458,135,81,2,NULL),(2459,135,82,2,NULL),(2460,161,4,2,NULL),(2461,135,103,2,NULL),(2462,169,4,2,NULL),(2463,170,4,2,NULL),(2464,136,54,2,NULL),(2465,2,3,2,NULL),(2466,120,5,2,NULL),(2467,2,19,2,NULL),(2468,120,64,2,NULL),(2469,2,71,2,NULL),(2470,120,81,2,NULL),(2471,2,93,2,NULL),(2472,120,82,2,NULL),(2473,162,5,2,NULL),(2474,120,103,2,NULL),(2475,158,5,2,NULL),(2476,162,64,2,NULL),(2477,159,5,2,NULL),(2478,158,64,2,NULL),(2479,160,5,2,NULL),(2480,159,64,2,NULL),(2481,161,5,2,NULL),(2482,160,64,2,NULL),(2483,169,5,2,NULL),(2484,161,64,2,NULL),(2485,170,5,2,NULL),(2486,169,64,2,NULL),(2487,170,64,2,NULL),(2488,162,81,2,NULL),(2489,162,82,2,NULL),(2490,162,103,2,NULL),(2491,158,81,2,NULL),(2492,159,81,2,NULL),(2493,160,81,2,NULL),(2494,161,81,2,NULL),(2495,169,81,2,NULL),(2496,170,81,2,NULL),(2497,158,82,2,NULL),(2498,159,82,2,NULL),(2499,160,82,2,NULL),(2500,161,82,2,NULL),(2501,169,82,2,NULL),(2502,170,82,2,NULL),(2503,158,103,2,NULL),(2504,159,103,2,NULL),(2505,160,103,2,NULL),(2506,161,103,2,NULL),(2507,169,103,2,NULL),(2508,170,103,2,NULL),(2509,126,9,2,NULL),(2510,126,34,2,NULL),(2511,126,80,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (13,'android.permission.ACCESS_COARSE_LOCATION'),(12,'android.permission.ACCESS_FINE_LOCATION'),(8,'android.permission.ACCESS_NETWORK_STATE'),(21,'android.permission.ACCESS_WIFI_STATE'),(26,'android.permission.BROADCAST_PACKAGE_REMOVED'),(24,'android.permission.CAMERA'),(9,'android.permission.INSTALL_PACKAGES'),(5,'android.permission.INTERNET'),(20,'android.permission.MODIFY_AUDIO_SETTINGS'),(15,'android.permission.MODIFY_PHONE_STATE'),(28,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(27,'android.permission.READ_CONTACTS'),(1,'android.permission.READ_PHONE_STATE'),(2,'android.permission.READ_SMS'),(3,'android.permission.RECEIVE_BOOT_COMPLETED'),(7,'android.permission.RECEIVE_SMS'),(18,'android.permission.RECORD_AUDIO'),(23,'android.permission.RECORD_VIDEO'),(22,'android.permission.RESTART_PACKAGES'),(4,'android.permission.SEND_SMS'),(25,'android.permission.VIBRATE'),(19,'android.permission.WAKE_LOCK'),(17,'android.permission.WRITE_APN_SETTINGS'),(10,'android.permission.WRITE_EXTERNAL_STORAGE'),(16,'android.permission.WRITE_SETTINGS'),(6,'android.permission.WRITE_SMS'),(14,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(11,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS');
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://sms/',NULL,NULL,NULL),(2,NULL,NULL,'file:///sdcard/uc/myupdate.apk',NULL,NULL,NULL),(3,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(4,NULL,NULL,'http://www.10086apk.com',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'',NULL,NULL,NULL),(7,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(8,NULL,NULL,'market://search?q=pname:com.xtralogic.android.logcollector',NULL,NULL,NULL),(9,NULL,NULL,'mailto:Michael.Bollmann@gmail.com',NULL,NULL,NULL),(10,NULL,NULL,'http://allhopeislost.deviantart.com',NULL,NULL,NULL),(11,NULL,NULL,'market://search?q=pname:com.mibollma.zilchR1',NULL,NULL,NULL),(12,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(13,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(14,NULL,NULL,'http://psycho287.deviantart.com',NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(16,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(17,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(18,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(19,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL),(20,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(21,NULL,NULL,'content://sms/',NULL,NULL,NULL),(22,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(23,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(24,NULL,NULL,'http://mp3.baidu.com/m?f=ms&rf=idx&tn=baidump3&ct=134217728&lf=&rn=&lm=0&word=(.*)',NULL,NULL,NULL),(25,NULL,NULL,'NULL-CONSTANT(.*)',NULL,NULL,NULL),(26,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(27,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(28,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL),(29,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(30,NULL,NULL,'content://media/internal/audio/media',NULL,NULL,NULL),(31,NULL,NULL,'',NULL,NULL,NULL),(32,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(33,NULL,NULL,'content://media/internal/audio/media',NULL,NULL,NULL),(34,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(35,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(36,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(37,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(38,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(39,NULL,NULL,'market://details?id=org.coolcode.service.download',NULL,NULL,NULL),(40,NULL,NULL,'market://details?id=org.coolcode.service.download',NULL,NULL,NULL),(41,NULL,NULL,'',NULL,NULL,NULL),(42,NULL,NULL,'smsto:',NULL,NULL,NULL),(43,NULL,NULL,'tel:',NULL,NULL,NULL),(44,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(45,NULL,NULL,'content://media/internal/audio/media',NULL,NULL,NULL),(46,NULL,NULL,'http://www.coolcode.org/android/Download_Service.apk',NULL,NULL,NULL),(47,NULL,NULL,'NULL-CONSTANT(.*)',NULL,NULL,NULL),(48,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(49,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(50,NULL,NULL,'content://media/internal/audio/media',NULL,NULL,NULL),(51,NULL,NULL,'(.*)',NULL,NULL,NULL),(52,NULL,NULL,'',NULL,NULL,NULL),(53,NULL,NULL,'http://www.coolcode.org/android/Download_Service.apk',NULL,NULL,NULL),(54,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(55,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(56,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,1,1),(2,7,3),(3,11,7),(4,18,12),(5,19,13),(6,42,18),(7,69,19),(8,75,20),(9,81,21),(10,84,22),(11,97,26),(12,106,27),(13,108,28),(14,111,29),(15,111,30),(16,119,32),(17,119,33),(18,136,44),(19,136,45),(20,149,49),(21,149,50),(22,155,55),(23,161,56);
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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,2,1),(10,2,4),(11,2,5),(12,2,7),(13,2,9),(14,2,10),(15,2,11),(16,2,12),(17,2,13),(18,2,14),(19,3,17),(20,3,16),(21,3,1),(22,3,19),(23,3,18),(24,3,3),(25,3,20),(26,3,5),(27,3,8),(28,3,10),(29,3,15),(30,4,1),(31,4,3),(32,4,5),(33,4,8),(34,4,10),(35,4,12),(36,4,15),(37,4,17),(38,4,18),(39,4,21),(40,5,1),(41,4,23),(42,5,3),(43,4,22),(44,5,4),(45,4,25),(46,5,5),(47,4,24),(48,5,7),(49,5,8),(50,6,16),(51,6,1),(52,5,9),(53,6,19),(54,5,10),(55,6,4),(56,5,11),(57,6,5),(58,5,13),(59,5,14),(60,6,7),(61,6,8),(62,6,9),(63,6,10),(64,6,11),(65,6,14),(66,7,1),(67,7,2),(68,7,3),(69,7,4),(70,7,5),(71,7,6),(72,7,7),(73,7,8),(74,7,9),(75,7,10),(76,7,12),(77,7,13),(78,7,15),(79,7,17),(80,7,16),(81,7,22),(82,7,27),(83,7,26),(84,7,28);
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

-- Dump completed on 2015-10-12  3:29:38
