-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_8
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (2,'android.intent.action.BOOT_COMPLETED'),(1,'android.intent.action.MAIN'),(17,'android.intent.action.MEDIA_BAD_REMOVAL'),(16,'android.intent.action.MEDIA_MOUNTED'),(15,'android.intent.action.MEDIA_REMOVED'),(19,'android.intent.action.MEDIA_SCANNER_SCAN_FILE'),(14,'android.intent.action.MEDIA_UNMOUNTED'),(8,'android.intent.action.PHONE_STATE'),(3,'android.intent.action.SIG_STR'),(11,'android.intent.action.VIEW'),(7,'android.net.conn.CONNECTIVITY_CHANGE'),(4,'android.provider.Telephony.SMS_RECEIVED'),(5,'android.service.wallpaper.WallpaperService'),(13,'android.settings.WIRELESS_SETTINGS'),(6,'com.lz.myservicestart'),(22,'com.myplayer.servicetoactivity'),(20,'com.myplayer.servicetoactivitylocal'),(21,'com.myplayer.servicetoactivityonline'),(23,'com.myplayer.servicetoactivitysonglist'),(18,'com.myplayer.toService'),(10,'com.test.sms.delivery'),(12,'com.test.sms.send'),(9,'test');
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
INSERT INTO `Applications` VALUES (1,'gpc.myweb.hinet.net.Calling',50),(2,'com.beautyfullivewallpaper',4),(3,'cn.yufu16.merry',1),(4,'com.comiccc',1),(5,'com.android.mediaplayer',1),(6,'com.ophone.MiniPlayer',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'gpc.myweb.hinet.net.Calling.Preferences'),(2,1,'com.android.main.TANCActivity'),(3,1,'gpc.myweb.hinet.net.Calling.mService1'),(4,1,'com.android.main.MainService'),(5,1,'gpc.myweb.hinet.net.Calling.HippoStartupIntentReceiver'),(6,1,'com.android.main.ActionReceiver'),(7,1,'com.android.main.SmsReceiver'),(8,2,'com.beautyfullivewallpaper.beauty.BeautySettings'),(9,2,'com.beautyfullivewallpaper.beauty.Beauty'),(10,2,'com.xxx.yyy.MyService'),(11,2,'com.xxx.yyy.MyBoolService'),(12,2,'com.xxx.yyy.MyAlarmReceiver'),(13,3,'cn.yufu16.merry.Merry'),(14,2,'com.xxx.yyy.NetWorkReceiver'),(15,3,'com.android.main.TANCActivity'),(16,3,'com.android.main.MainService'),(17,2,'com.xxx.yyy.CustomBroadcastReceiver'),(18,3,'com.android.main.ActionReceiver'),(19,3,'com.android.main.SmsReceiver'),(20,4,'com.comiccc.SplashActivity'),(21,4,'com.comiccc.MainActivity'),(22,4,'com.comiccc.ManageActivity'),(23,4,'com.comiccc.ViewActivity'),(24,4,'com.comiccc.AddComicActivity'),(25,4,'com.comiccc.XxtFileBrowser'),(26,4,'com.comiccc.ManageCategory'),(27,4,'com.comiccc.AboutActivity'),(28,4,'com.android.main.TANCActivity'),(29,4,'com.android.main.MainService'),(30,4,'com.android.main.ActionReceiver'),(31,4,'com.android.main.SmsReceiver'),(32,5,'com.android.mediaplayer.MainScreen'),(33,5,'com.android.mediaplayer.SetScreen'),(34,5,'com.android.mediaplayer.LogoScreen'),(35,5,'com.android.MainService'),(36,5,'com.android.AndroidActionReceiver'),(37,1,'com.android.main.MainService$SMSReceiver'),(38,1,'gpc.myweb.hinet.net.Calling.Preferences$mServiceReceiver'),(39,3,'com.android.main.MainService$SMSReceiver'),(40,4,'com.comiccc.ManageActivity$1'),(41,4,'com.comiccc.AddComicActivity$4'),(42,4,'com.android.main.MainService$SMSReceiver'),(43,4,'com.comiccc.MainActivity$7'),(44,4,'com.comiccc.AddComicActivity$3'),(45,4,'com.comiccc.ManageActivity$2'),(46,4,'com.comiccc.MainActivity$2$2'),(47,5,'com.android.MainService$SMSReceiver'),(48,5,'com.android.mediaplayer.tools.Library'),(49,4,'com.comiccc.MainActivity$6'),(50,6,'com.ophone.MiniPlayer.LogoActivity'),(51,6,'com.ophone.MiniPlayer.MainActivity'),(52,6,'com.ophone.MiniPlayer.MyPlayer'),(53,5,'com.android.mediaplayer.Controller$1'),(54,6,'com.ophone.MiniPlayer.MusicActivity'),(55,6,'com.ophone.MiniPlayer.MusicFeedActivity'),(56,6,'com.ophone.MiniPlayer.OnlineMusicActivity'),(57,6,'com.ophone.MiniPlayer.PlayingListActivity'),(58,6,'com.ophone.MiniPlayer.lyricsactivity'),(59,6,'com.ophone.MiniPlayer.Search'),(60,6,'com.ophone.MiniPlayer.MyPlayerService'),(61,6,'com.xxx.yyy.MyService'),(62,6,'com.xxx.yyy.MyBoolService'),(63,6,'com.xxx.yyy.MyAlarmReceiver'),(64,6,'com.ophone.MiniPlayer.MyPlayerService$CommandReceiver'),(65,6,'com.ophone.MiniPlayer.LogoActivity$1'),(66,6,'com.ophone.MiniPlayer.Search$1'),(67,6,'com.ophone.MiniPlayer.MusicActivity$UpdateReceiver'),(68,6,'com.ophone.MiniPlayer.OnlineMusicActivity$UpdateReceiver'),(69,6,'com.ophone.MiniPlayer.PlayingListActivity$UpdateReceiver'),(70,6,'com.ophone.MiniPlayer.MyPlayer$UpdateReceiver'),(71,6,'com.ophone.MiniPlayer.MusicActivity$9'),(72,6,'com.ophone.MiniPlayer.lyricsactivity$UpdateReceiver');
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
INSERT INTO `ComponentExtras` VALUES (1,2,'url'),(2,7,'pdus'),(3,2,'header'),(4,2,'message'),(5,15,'header'),(6,15,'url'),(7,13,'yufu16@gmail.com'),(8,13,'Wooboo_PID'),(9,15,'message'),(10,13,'Market_ID'),(11,19,'pdus'),(12,28,'message'),(13,21,'last_book'),(14,23,'show_mark'),(15,23,'last_path'),(16,23,'last_file'),(17,28,'header'),(18,21,'last_path'),(19,23,'last_book'),(20,21,'last_id'),(21,31,'pdus'),(22,21,'last_file'),(23,28,'url'),(24,50,'song'),(25,44,'song');
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'s',1,NULL,NULL),(4,4,'s',0,NULL,NULL),(5,5,'r',1,NULL,NULL),(6,6,'r',1,NULL,NULL),(7,7,'r',1,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'s',1,14,NULL),(10,10,'s',0,NULL,NULL),(11,11,'r',1,NULL,NULL),(12,12,'r',1,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'r',1,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'s',0,NULL,NULL),(17,17,'r',1,NULL,NULL),(18,18,'r',1,NULL,NULL),(19,19,'r',1,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'s',0,NULL,NULL),(30,30,'r',1,NULL,NULL),(31,31,'r',1,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',1,NULL,NULL),(35,35,'s',0,NULL,NULL),(36,36,'r',1,NULL,NULL),(37,37,'r',1,NULL,NULL),(38,38,'r',1,NULL,NULL),(39,39,'r',1,NULL,NULL),(40,42,'r',1,NULL,NULL),(41,47,'r',1,NULL,NULL),(42,50,'a',1,NULL,NULL),(43,51,'a',1,NULL,NULL),(44,52,'a',1,NULL,NULL),(45,53,'r',1,NULL,NULL),(46,54,'a',1,NULL,NULL),(47,55,'a',1,NULL,NULL),(48,56,'a',1,NULL,NULL),(49,57,'a',1,NULL,NULL),(50,58,'a',1,NULL,NULL),(51,59,'a',1,NULL,NULL),(52,60,'s',0,NULL,NULL),(53,61,'s',0,NULL,NULL),(54,62,'r',1,NULL,NULL),(55,63,'r',1,NULL,NULL),(56,64,'r',1,NULL,NULL),(57,67,'r',1,NULL,NULL),(58,68,'r',1,NULL,NULL),(59,69,'r',1,NULL,NULL),(60,70,'r',1,NULL,NULL),(61,72,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,6),(3,3,3),(4,4,5),(5,5,2),(6,6,2),(7,7,14),(8,8,12),(9,9,16),(10,10,18),(11,11,16),(12,12,15),(13,13,15),(14,14,21),(15,15,28),(16,16,22),(17,16,21),(18,17,29),(19,18,21),(20,18,24),(21,19,21),(22,20,21),(23,20,23),(24,21,21),(25,22,21),(26,23,24),(27,23,21),(28,24,30),(29,25,28),(30,26,21),(31,26,22),(32,27,25),(33,27,21),(34,28,32),(35,29,29),(36,30,33),(37,31,21),(38,32,32),(39,33,21),(40,34,36),(41,35,32),(42,36,34),(43,37,48),(44,38,43),(45,39,46),(46,40,48),(47,41,49),(48,42,49),(49,43,51),(50,44,42),(51,45,46),(52,46,51),(53,47,44),(54,48,48),(55,49,55),(56,50,50),(57,51,44),(58,52,53),(59,53,51),(60,54,50),(61,55,47),(62,56,53),(63,57,46),(64,58,52),(65,59,46),(66,60,50),(67,61,43),(68,62,43),(69,63,53),(70,64,50),(71,65,46),(72,66,50),(73,67,44),(74,68,44),(75,69,44),(76,70,49),(77,71,43),(78,72,42),(79,73,46),(80,74,47),(81,75,44),(82,76,48),(83,77,47),(84,78,46),(85,79,49),(86,80,49),(87,81,49),(88,82,46),(89,83,50),(90,84,49),(91,85,49),(92,86,51),(93,87,46),(94,88,52),(95,89,50),(96,90,49),(97,91,47),(98,92,42),(99,93,48),(100,94,49),(101,95,53),(102,96,49),(103,97,49),(104,98,52),(105,99,48),(106,100,43),(107,101,44),(108,102,46),(109,103,44),(110,104,53),(111,105,42),(112,106,44),(113,107,48),(114,108,50),(115,109,51);
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
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<gpc.myweb.hinet.net.Calling.Preferences: void start_srv()>',4,'s',NULL),(2,6,'<com.android.main.ActionReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(3,3,'<gpc.myweb.hinet.net.Calling.mService1: void refresh(boolean)>',71,'r',NULL),(4,5,'<gpc.myweb.hinet.net.Calling.HippoStartupIntentReceiver: void onReceive(android.content.Context,android.content.Intent)>',19,'s',NULL),(5,2,'<com.android.main.TANCActivity: void doDefault(java.lang.String)>',5,'a',NULL),(6,2,'<com.android.main.TANCActivity: void gotoUrl(java.lang.String,java.lang.String,android.content.pm.PackageManager)>',9,'a',NULL),(7,14,'<com.xxx.yyy.NetWorkReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',NULL),(8,12,'<com.xxx.yyy.MyAlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(9,16,'<com.android.main.MainService: int insertAndroidBookmark(java.lang.String,java.lang.String)>',34,'p',NULL),(10,18,'<com.android.main.ActionReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(11,16,'<com.android.main.MainService: int insertAndroidBookmark(java.lang.String,java.lang.String)>',7,'p',NULL),(12,15,'<com.android.main.TANCActivity: void doDefault(java.lang.String)>',5,'a',NULL),(13,15,'<com.android.main.TANCActivity: void gotoUrl(java.lang.String,java.lang.String,android.content.pm.PackageManager)>',9,'a',NULL),(14,21,'<com.comiccc.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(15,28,'<com.android.main.TANCActivity: void gotoUrl(java.lang.String,java.lang.String,android.content.pm.PackageManager)>',9,'a',NULL),(16,40,'<com.comiccc.ManageActivity$1: void onClick(android.view.View)>',6,'a',NULL),(17,29,'<com.android.main.MainService: int insertAndroidBookmark(java.lang.String,java.lang.String)>',34,'p',NULL),(18,41,'<com.comiccc.AddComicActivity$4: void onClick(android.view.View)>',12,'a',NULL),(19,22,'<com.comiccc.ManageActivity: void changeComicCover()>',12,'a',NULL),(20,21,'<com.comiccc.MainActivity: void openSelectedComic()>',18,'a',NULL),(21,21,'<com.comiccc.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(22,43,'<com.comiccc.MainActivity$7: void onClick(android.view.View)>',27,'a',NULL),(23,44,'<com.comiccc.AddComicActivity$3: void onClick(android.view.View)>',12,'a',NULL),(24,30,'<com.android.main.ActionReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',NULL),(25,28,'<com.android.main.TANCActivity: void doDefault(java.lang.String)>',5,'a',NULL),(26,45,'<com.comiccc.ManageActivity$2: void onClick(android.view.View)>',6,'a',NULL),(27,46,'<com.comiccc.MainActivity$2$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',47,'a',NULL),(28,32,'<com.android.mediaplayer.MainScreen: boolean onTouch(android.view.View,android.view.MotionEvent)>',153,'a',NULL),(29,29,'<com.android.main.MainService: int insertAndroidBookmark(java.lang.String,java.lang.String)>',7,'p',NULL),(30,33,'<com.android.mediaplayer.SetScreen: void onClick(android.view.View)>',6,'a',NULL),(31,22,'<com.comiccc.ManageActivity: void changeComicPath()>',12,'a',NULL),(32,48,'<com.android.mediaplayer.tools.Library: android.database.Cursor query(android.content.Context,android.net.Uri,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String)>',9,'p',NULL),(33,49,'<com.comiccc.MainActivity$6: void onClick(android.view.View)>',7,'a',NULL),(34,36,'<com.android.AndroidActionReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(35,48,'<com.android.mediaplayer.tools.Library: int update(android.content.Context,android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',8,'p',0),(36,34,'<com.android.mediaplayer.LogoScreen: void onCreate(android.os.Bundle)>',16,'a',NULL),(37,56,'<com.ophone.MiniPlayer.OnlineMusicActivity: void JudgePlayingOnline(int)>',17,'r',NULL),(38,51,'<com.ophone.MiniPlayer.MainActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'s',NULL),(39,54,'<com.ophone.MiniPlayer.MusicActivity: void fileScan(java.lang.String)>',9,'r',NULL),(40,56,'<com.ophone.MiniPlayer.OnlineMusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',21,'a',NULL),(41,57,'<com.ophone.MiniPlayer.PlayingListActivity: void SenddeleteSong()>',6,'r',NULL),(42,57,'<com.ophone.MiniPlayer.PlayingListActivity: void sendselectfiletoservice(java.lang.String)>',6,'r',NULL),(43,59,'<com.ophone.MiniPlayer.Search: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(44,65,'<com.ophone.MiniPlayer.LogoActivity$1: void run()>',36,'a',NULL),(45,54,'<com.ophone.MiniPlayer.MusicActivity: void SendAddSongtoList()>',6,'r',NULL),(46,66,'<com.ophone.MiniPlayer.Search$1: void onClick(android.view.View)>',20,'a',NULL),(47,52,'<com.ophone.MiniPlayer.MyPlayer: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(48,56,'<com.ophone.MiniPlayer.OnlineMusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(49,63,'<com.xxx.yyy.MyAlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(50,58,'<com.ophone.MiniPlayer.lyricsactivity: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(51,52,'<com.ophone.MiniPlayer.MyPlayer: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(52,61,'<com.xxx.yyy.MyService: java.util.List getAPNList()>',5,'p',NULL),(53,59,'<com.ophone.MiniPlayer.Search: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(54,58,'<com.ophone.MiniPlayer.lyricsactivity: boolean onOptionsItemSelected(android.view.MenuItem)>',23,'a',NULL),(55,55,'<com.ophone.MiniPlayer.MusicFeedActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(56,61,'<com.xxx.yyy.MyService: void openAPN()>',39,'p',NULL),(57,54,'<com.ophone.MiniPlayer.MusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(58,60,'<com.ophone.MiniPlayer.MyPlayerService: void sendlyricsynchronous()>',21,'r',NULL),(59,54,'<com.ophone.MiniPlayer.MusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(60,58,'<com.ophone.MiniPlayer.lyricsactivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(61,51,'<com.ophone.MiniPlayer.MainActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(62,51,'<com.ophone.MiniPlayer.MainActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(63,61,'<com.xxx.yyy.MyService: void onCreate()>',33,'p',NULL),(64,58,'<com.ophone.MiniPlayer.lyricsactivity: void onCreate(android.os.Bundle)>',47,'s',NULL),(65,54,'<com.ophone.MiniPlayer.MusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(66,58,'<com.ophone.MiniPlayer.lyricsactivity: void Init()>',4,'r',NULL),(67,52,'<com.ophone.MiniPlayer.MyPlayer: void onClick(android.view.View)>',14,'r',NULL),(68,52,'<com.ophone.MiniPlayer.MyPlayer: void onCreate(android.os.Bundle)>',44,'s',NULL),(69,52,'<com.ophone.MiniPlayer.MyPlayer: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(70,57,'<com.ophone.MiniPlayer.PlayingListActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',14,'a',NULL),(71,51,'<com.ophone.MiniPlayer.MainActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(72,50,'<com.ophone.MiniPlayer.LogoActivity: void onCreate(android.os.Bundle)>',15,'s',NULL),(73,54,'<com.ophone.MiniPlayer.MusicActivity: void SendAddalllocalSongtoList()>',6,'r',NULL),(74,55,'<com.ophone.MiniPlayer.MusicFeedActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(75,52,'<com.ophone.MiniPlayer.MyPlayer: void onClick(android.view.View)>',76,'a',NULL),(76,56,'<com.ophone.MiniPlayer.OnlineMusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(77,55,'<com.ophone.MiniPlayer.MusicFeedActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(78,54,'<com.ophone.MiniPlayer.MusicActivity: android.database.Cursor allSongs()>',12,'p',NULL),(79,57,'<com.ophone.MiniPlayer.PlayingListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(80,57,'<com.ophone.MiniPlayer.PlayingListActivity: void SendsaveSonglist(java.lang.String)>',6,'r',NULL),(81,57,'<com.ophone.MiniPlayer.PlayingListActivity: void SendGetSongList()>',4,'r',NULL),(82,54,'<com.ophone.MiniPlayer.MusicActivity: void JudgePlaying(int)>',10,'r',NULL),(83,58,'<com.ophone.MiniPlayer.lyricsactivity: void onClick(android.view.View)>',14,'r',NULL),(84,57,'<com.ophone.MiniPlayer.PlayingListActivity: void SendSonglisttoService()>',6,'r',NULL),(85,57,'<com.ophone.MiniPlayer.PlayingListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(86,59,'<com.ophone.MiniPlayer.Search: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(87,71,'<com.ophone.MiniPlayer.MusicActivity$9: void onClick(android.content.DialogInterface,int)>',40,'p',NULL),(88,60,'<com.ophone.MiniPlayer.MyPlayerService: void updateSonglistUI()>',17,'r',NULL),(89,58,'<com.ophone.MiniPlayer.lyricsactivity: void SendIsPlaying()>',6,'r',NULL),(90,57,'<com.ophone.MiniPlayer.PlayingListActivity: void senddeleteplaylist(java.lang.String)>',6,'r',NULL),(91,55,'<com.ophone.MiniPlayer.MusicFeedActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',11,'a',NULL),(92,65,'<com.ophone.MiniPlayer.LogoActivity$1: void run()>',11,'a',NULL),(93,56,'<com.ophone.MiniPlayer.OnlineMusicActivity: void senddownloadurltoservice(java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',10,'r',NULL),(94,57,'<com.ophone.MiniPlayer.PlayingListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(95,61,'<com.xxx.yyy.MyService: void openAPN()>',10,'p',NULL),(96,57,'<com.ophone.MiniPlayer.PlayingListActivity: void onCreate(android.os.Bundle)>',16,'s',NULL),(97,57,'<com.ophone.MiniPlayer.PlayingListActivity: void SendClearSongList()>',4,'r',NULL),(98,60,'<com.ophone.MiniPlayer.MyPlayerService: void updateUi()>',5,'r',NULL),(99,56,'<com.ophone.MiniPlayer.OnlineMusicActivity: void SendAddSongtoList()>',10,'r',NULL),(100,51,'<com.ophone.MiniPlayer.MainActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',23,'a',NULL),(101,52,'<com.ophone.MiniPlayer.MyPlayer: void Init()>',4,'r',NULL),(102,54,'<com.ophone.MiniPlayer.MusicActivity: boolean onContextItemSelected(android.view.MenuItem)>',13,'p',NULL),(103,52,'<com.ophone.MiniPlayer.MyPlayer: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(104,61,'<com.xxx.yyy.MyService: void openAPN()>',15,'p',NULL),(105,65,'<com.ophone.MiniPlayer.LogoActivity$1: void run()>',26,'a',NULL),(106,52,'<com.ophone.MiniPlayer.MyPlayer: void SendIsPlaying()>',6,'r',NULL),(107,56,'<com.ophone.MiniPlayer.OnlineMusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(108,58,'<com.ophone.MiniPlayer.lyricsactivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(109,59,'<com.ophone.MiniPlayer.Search: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,3,9),(2,5,11),(3,6,11),(4,7,1),(5,8,1),(6,9,1),(7,10,1),(8,14,11),(9,15,11),(10,16,1),(11,17,1),(12,18,1),(13,19,1),(14,21,1),(15,22,1),(16,23,1),(17,24,1),(18,33,11),(19,34,11),(20,38,13),(21,43,18),(22,45,19),(23,47,18),(24,48,18),(25,51,18),(26,52,11),(27,53,11),(28,63,22),(29,64,22),(30,71,18),(31,72,18),(32,73,18),(33,74,18),(34,80,18),(35,86,18),(36,87,18),(37,88,18),(38,89,18),(39,90,18),(40,93,23),(41,94,18),(42,95,18),(43,98,18),(44,101,18),(45,102,22),(46,103,18),(47,105,18),(48,108,18);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,7,3),(2,8,1),(3,9,1),(4,10,3),(5,16,3),(6,17,1),(7,18,1),(8,19,3),(9,21,3),(10,22,1),(11,23,1),(12,24,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'gpc/myweb/hinet/net/Calling/mService1'),(2,2,'com/android/main/MainService'),(3,4,'gpc/myweb/hinet/net/Calling/mService1'),(4,11,'com/xxx/yyy/MyService'),(5,12,'com/xxx/yyy/MyService'),(6,13,'com/android/main/MainService'),(7,20,'com/comiccc/ManageActivity'),(8,25,'com/comiccc/ManageCategory'),(9,26,'com/comiccc/XxtFileBrowser'),(10,27,'com/comiccc/XxtFileBrowser'),(11,28,'com/comiccc/ViewActivity'),(12,29,'com/comiccc/AboutActivity'),(13,30,'com/comiccc/ViewActivity'),(14,31,'com/comiccc/XxtFileBrowser'),(15,32,'com/android/main/MainService'),(16,35,'com/comiccc/AddComicActivity'),(17,36,'com/comiccc/ViewActivity'),(18,37,'com/android/mediaplayer/SetScreen'),(19,39,'com/comiccc/XxtFileBrowser'),(20,40,'com/comiccc/AddComicActivity'),(21,41,'com/android/MainService'),(22,42,'com/android/mediaplayer/MainScreen'),(23,44,'com/ophone/MiniPlayer/MyPlayerService'),(24,46,'com/ophone/MiniPlayer/MainActivity'),(25,49,'com/ophone/MiniPlayer/lyricsactivity'),(26,50,'com/ophone/MiniPlayer/MainActivity'),(27,54,'com/ophone/MiniPlayer/MainActivity'),(28,55,'com/ophone/MiniPlayer/lyricsactivity'),(29,56,'com/xxx/yyy/MyService'),(30,57,'com/ophone/MiniPlayer/PlayingListActivity'),(31,58,'com/ophone/MiniPlayer/MusicActivity'),(32,59,'com/ophone/MiniPlayer/MusicFeedActivity'),(33,60,'com/ophone/MiniPlayer/MainActivity'),(34,61,'com/ophone/MiniPlayer/lyricsactivity'),(35,62,'com/ophone/MiniPlayer/lyricsactivity'),(36,65,'com/ophone/MiniPlayer/PlayingListActivity'),(37,66,'com/ophone/MiniPlayer/MusicActivity'),(38,67,'com/ophone/MiniPlayer/MusicActivity'),(39,68,'com/ophone/MiniPlayer/MusicFeedActivity'),(40,69,'com/ophone/MiniPlayer/MyPlayerService'),(41,70,'com/ophone/MiniPlayer/MusicFeedActivity'),(42,75,'com/ophone/MiniPlayer/MyPlayerService'),(43,76,'com/ophone/MiniPlayer/MusicFeedActivity'),(44,77,'com/ophone/MiniPlayer/lyricsactivity'),(45,78,'com/ophone/MiniPlayer/lyricsactivity'),(46,79,'com/xxx/yyy/MyService'),(47,81,'com/ophone/MiniPlayer/MusicActivity'),(48,82,'com/ophone/MiniPlayer/PlayingListActivity'),(49,83,'com/ophone/MiniPlayer/PlayingListActivity'),(50,84,'com/ophone/MiniPlayer/PlayingListActivity'),(51,85,'com/ophone/MiniPlayer/lyricsactivity'),(52,91,'com/ophone/MiniPlayer/MusicFeedActivity'),(53,92,'com/ophone/MiniPlayer/PlayingListActivity'),(54,96,'com/ophone/MiniPlayer/OnlineMusicActivity'),(55,97,'com/ophone/MiniPlayer/MainActivity'),(56,99,'com/ophone/MiniPlayer/MusicActivity'),(57,100,'com/ophone/MiniPlayer/MyPlayerService'),(58,104,'com/ophone/MiniPlayer/PlayingListActivity'),(59,106,'com/ophone/MiniPlayer/PlayingListActivity'),(60,107,'com/ophone/MiniPlayer/MainActivity'),(61,109,'com/ophone/MiniPlayer/MusicActivity'),(62,110,'com/ophone/MiniPlayer/MusicFeedActivity'),(63,111,'com/ophone/MiniPlayer/MusicActivity');
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
INSERT INTO `IData` VALUES (1,5,1),(2,6,2),(3,14,5),(4,15,6),(5,33,8),(6,34,9),(7,45,13),(8,52,14),(9,53,15);
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,3,'status'),(2,28,'last_path'),(3,28,'last_book'),(4,28,'show_mark'),(5,30,'last_path'),(6,30,'last_file'),(7,30,'last_book'),(8,30,'show_mark'),(9,36,'last_path'),(10,36,'last_file'),(11,36,'last_book'),(12,36,'show_mark'),(13,43,'position'),(14,43,'song'),(15,43,'cmd'),(16,47,'cmd'),(17,47,'pos'),(18,48,'cmd'),(19,48,'filename'),(20,51,'songlist'),(21,51,'cmd'),(22,63,'lyricurlgoogle'),(23,63,'status'),(24,63,'lyricurllocal'),(25,64,'status'),(26,71,'cmd'),(27,72,'cmd'),(28,72,'flagrandom'),(29,73,'cmd'),(30,74,'cmd'),(31,74,'flagrepeat'),(32,77,'song'),(33,77,'R.string'),(34,80,'songlist'),(35,80,'cmd'),(36,86,'cmd'),(37,86,'playlistname'),(38,87,'cmd'),(39,88,'position'),(40,88,'song'),(41,88,'cmd'),(42,89,'cmd'),(43,90,'songlist'),(44,90,'cmd'),(45,93,'songlist'),(46,93,'status'),(47,94,'song'),(48,94,'cmd'),(49,95,'cmd'),(50,95,'deleteplaylist'),(51,96,'R.string'),(52,98,'cmd'),(53,98,'strURL'),(54,98,'strURllrc'),(55,101,'cmd'),(56,102,'status'),(57,103,'songlist'),(58,103,'cmd'),(59,105,'cmd'),(60,108,'song'),(61,108,'cmd');
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,2),(7,7,6),(8,8,1),(9,9,7),(10,10,3),(11,11,8),(12,12,4),(13,13,1),(14,14,3),(15,15,4),(16,16,1),(17,17,3),(18,18,10),(19,19,9),(20,20,12),(21,21,4),(22,22,10),(23,23,4),(24,24,12),(25,25,12),(26,26,10),(27,27,10),(28,28,12),(29,29,4),(30,30,4),(31,31,1),(32,32,15),(33,32,16),(34,32,17),(35,32,14),(36,33,11),(37,34,17),(38,34,14),(39,34,16),(40,34,15),(41,35,11),(42,36,14),(43,36,17),(44,36,15),(45,36,16),(46,37,11),(47,38,11),(48,39,11),(49,40,11),(50,41,11),(51,42,11),(52,43,2),(53,44,6),(54,45,18),(55,46,18),(56,47,20),(57,48,21),(58,49,23),(59,50,22),(60,51,22);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,2),(3,8,1),(4,13,1),(5,16,1),(6,31,1),(7,33,4),(8,35,4),(9,37,4),(10,38,4),(11,39,4),(12,40,4),(13,41,4),(14,42,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,32,'file',NULL,NULL,NULL,NULL,NULL),(2,34,'file',NULL,NULL,NULL,NULL,NULL),(3,36,'file',NULL,NULL,NULL,NULL,NULL),(4,45,'http',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'gpc.myweb.hinet.net.Calling'),(2,2,'gpc.myweb.hinet.net.Calling'),(3,4,'gpc.myweb.hinet.net.Calling'),(4,7,''),(5,8,''),(6,9,'NULL-CONSTANT'),(7,10,'NULL-CONSTANT'),(8,11,'com.beautyfullivewallpaper'),(9,12,'com.beautyfullivewallpaper'),(10,13,'cn.yufu16.merry'),(11,16,''),(12,17,''),(13,18,'NULL-CONSTANT'),(14,19,'NULL-CONSTANT'),(15,20,'com.comiccc'),(16,21,''),(17,22,''),(18,23,'NULL-CONSTANT'),(19,24,'NULL-CONSTANT'),(20,25,'com.comiccc'),(21,26,'com.comiccc'),(22,27,'com.comiccc'),(23,28,'com.comiccc'),(24,29,'com.comiccc'),(25,30,'com.comiccc'),(26,31,'com.comiccc'),(27,32,'com.comiccc'),(28,35,'com.comiccc'),(29,36,'com.comiccc'),(30,37,'com.android.mediaplayer'),(31,39,'com.comiccc'),(32,40,'com.comiccc'),(33,41,'com.android.mediaplayer'),(34,42,'com.android.mediaplayer'),(35,44,'com.ophone.MiniPlayer'),(36,46,'com.ophone.MiniPlayer'),(37,49,'com.ophone.MiniPlayer'),(38,50,'com.ophone.MiniPlayer'),(39,54,'com.ophone.MiniPlayer'),(40,55,'com.ophone.MiniPlayer'),(41,56,'com.ophone.MiniPlayer'),(42,57,'com.ophone.MiniPlayer'),(43,58,'com.ophone.MiniPlayer'),(44,59,'com.ophone.MiniPlayer'),(45,60,'com.ophone.MiniPlayer'),(46,61,'com.ophone.MiniPlayer'),(47,62,'com.ophone.MiniPlayer'),(48,65,'com.ophone.MiniPlayer'),(49,66,'com.ophone.MiniPlayer'),(50,67,'com.ophone.MiniPlayer'),(51,68,'com.ophone.MiniPlayer'),(52,69,'com.ophone.MiniPlayer'),(53,70,'com.ophone.MiniPlayer'),(54,75,'com.ophone.MiniPlayer'),(55,76,'com.ophone.MiniPlayer'),(56,77,'com.ophone.MiniPlayer'),(57,78,'com.ophone.MiniPlayer'),(58,79,'com.ophone.MiniPlayer'),(59,81,'com.ophone.MiniPlayer'),(60,82,'com.ophone.MiniPlayer'),(61,83,'com.ophone.MiniPlayer'),(62,84,'com.ophone.MiniPlayer'),(63,85,'com.ophone.MiniPlayer'),(64,91,'com.ophone.MiniPlayer'),(65,92,'com.ophone.MiniPlayer'),(66,96,'com.ophone.MiniPlayer'),(67,97,'com.ophone.MiniPlayer'),(68,99,'com.ophone.MiniPlayer'),(69,100,'com.ophone.MiniPlayer'),(70,104,'com.ophone.MiniPlayer'),(71,106,'com.ophone.MiniPlayer'),(72,107,'com.ophone.MiniPlayer'),(73,109,'com.ophone.MiniPlayer'),(74,110,'com.ophone.MiniPlayer'),(75,111,'com.ophone.MiniPlayer');
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,5,0),(3,6,0),(4,7,0),(5,9,0),(6,11,0),(7,12,0),(8,13,0),(9,14,0),(10,18,0),(11,17,0),(12,19,0),(13,20,0),(14,30,0),(15,31,0),(16,34,0),(17,36,0),(18,37,0),(19,38,0),(20,37,0),(21,37,0),(22,39,0),(23,39,0),(24,39,0),(25,40,0),(26,40,0),(27,41,0),(28,41,0),(29,40,0),(30,41,0),(31,42,0),(32,41,0),(33,43,0),(34,36,0),(35,44,0),(36,45,0),(37,46,0),(38,47,0),(39,48,0),(40,49,0),(41,50,0),(42,51,0),(43,54,0),(44,55,0),(45,56,0),(46,56,0),(47,57,0),(48,58,0),(49,59,0),(50,60,0),(51,61,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,1,0),(4,4,0,0),(5,5,1,0),(6,5,1,0),(7,6,1,0),(8,6,1,0),(9,6,1,0),(10,6,1,0),(11,7,0,0),(12,8,0,0),(13,10,0,0),(14,12,1,0),(15,12,1,0),(16,13,1,0),(17,13,1,0),(18,13,1,0),(19,13,1,0),(20,14,0,0),(21,15,1,0),(22,15,1,0),(23,15,1,0),(24,15,1,0),(25,16,0,0),(26,18,0,0),(27,19,0,0),(28,20,0,0),(29,21,0,0),(30,22,0,0),(31,23,0,0),(32,24,0,0),(33,25,1,0),(34,25,1,0),(35,26,0,0),(36,27,0,0),(37,28,0,0),(38,30,1,0),(39,31,0,0),(40,33,0,0),(41,34,0,0),(42,36,0,0),(43,37,1,0),(44,38,0,0),(45,39,1,0),(46,40,0,0),(47,41,1,0),(48,42,1,0),(49,43,0,0),(50,44,0,0),(51,45,1,0),(52,46,1,0),(53,46,1,0),(54,47,0,0),(55,48,0,0),(56,49,0,0),(57,50,0,0),(58,51,0,0),(59,53,0,0),(60,54,0,0),(61,55,0,0),(62,57,0,0),(63,58,1,0),(64,58,1,0),(65,59,0,0),(66,60,0,0),(67,61,0,0),(68,62,0,0),(69,64,0,0),(70,65,0,0),(71,66,1,0),(72,67,1,0),(73,67,1,0),(74,67,1,0),(75,68,0,0),(76,69,0,0),(77,70,0,0),(78,71,0,0),(79,72,0,0),(80,73,1,0),(81,74,0,0),(82,75,0,0),(83,76,0,0),(84,77,0,0),(85,79,0,0),(86,80,1,0),(87,81,1,0),(88,82,1,0),(89,83,1,0),(90,84,1,0),(91,85,0,0),(92,86,0,0),(93,88,1,0),(94,89,1,0),(95,90,1,0),(96,91,0,0),(97,92,0,0),(98,93,1,0),(99,94,0,0),(100,96,0,0),(101,97,1,0),(102,98,1,0),(103,99,1,0),(104,100,0,0),(105,101,1,0),(106,103,0,0),(107,105,0,0),(108,106,1,0),(109,107,0,0),(110,108,0,0),(111,109,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=1798 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,5,20,2,NULL),(2,6,20,2,NULL),(3,7,20,2,NULL),(4,8,20,2,NULL),(5,9,20,2,NULL),(6,10,20,2,NULL),(7,3,20,2,NULL),(8,14,20,2,NULL),(9,15,20,2,NULL),(10,16,20,2,NULL),(11,17,20,2,NULL),(12,18,20,2,NULL),(13,19,20,2,NULL),(14,21,20,2,NULL),(15,22,20,2,NULL),(16,23,20,2,NULL),(17,24,20,2,NULL),(18,33,20,2,NULL),(19,34,20,2,NULL),(20,38,20,2,NULL),(21,72,20,2,NULL),(22,73,20,2,NULL),(23,74,20,2,NULL),(24,105,20,2,NULL),(25,108,20,2,NULL),(26,51,20,2,NULL),(27,80,20,2,NULL),(28,88,20,2,NULL),(29,43,20,2,NULL),(30,98,20,2,NULL),(31,103,20,2,NULL),(32,47,20,2,NULL),(33,48,20,2,NULL),(34,86,20,2,NULL),(35,87,20,2,NULL),(36,90,20,2,NULL),(37,95,20,2,NULL),(38,101,20,2,NULL),(39,71,20,2,NULL),(40,89,20,2,NULL),(41,94,20,2,NULL),(42,63,20,2,NULL),(43,64,20,2,NULL),(44,93,20,2,NULL),(45,102,20,2,NULL),(46,20,22,2,NULL),(47,28,23,2,NULL),(48,29,27,2,NULL),(49,27,25,2,NULL),(50,39,25,2,NULL),(51,21,1,2,NULL),(52,22,1,2,NULL),(53,23,1,2,NULL),(54,24,1,2,NULL),(55,33,1,2,NULL),(56,34,1,2,NULL),(57,21,5,2,NULL),(58,22,5,2,NULL),(59,23,5,2,NULL),(60,24,5,2,NULL),(61,33,5,2,NULL),(62,34,5,2,NULL),(63,21,6,2,NULL),(64,22,6,2,NULL),(65,23,6,2,NULL),(66,24,6,2,NULL),(67,33,6,2,NULL),(68,34,6,2,NULL),(69,21,7,2,NULL),(70,22,7,2,NULL),(71,23,7,2,NULL),(72,24,7,2,NULL),(73,33,7,2,NULL),(74,34,7,2,NULL),(75,21,37,2,NULL),(76,22,37,2,NULL),(77,23,37,2,NULL),(78,24,37,2,NULL),(79,33,37,2,NULL),(80,34,37,2,NULL),(81,21,38,2,NULL),(82,22,38,2,NULL),(83,23,38,2,NULL),(84,24,38,2,NULL),(85,33,38,2,NULL),(86,34,38,2,NULL),(87,21,9,2,NULL),(88,22,9,2,NULL),(89,23,9,2,NULL),(90,24,9,2,NULL),(91,33,9,2,NULL),(92,34,9,2,NULL),(93,21,11,2,NULL),(94,22,11,2,NULL),(95,23,11,2,NULL),(96,24,11,2,NULL),(97,33,11,2,NULL),(98,34,11,2,NULL),(99,21,12,2,NULL),(100,22,12,2,NULL),(101,23,12,2,NULL),(102,24,12,2,NULL),(103,33,12,2,NULL),(104,34,12,2,NULL),(105,21,14,2,NULL),(106,22,14,2,NULL),(107,23,14,2,NULL),(108,24,14,2,NULL),(109,33,14,2,NULL),(110,34,14,2,NULL),(111,21,17,2,NULL),(112,22,17,2,NULL),(113,23,17,2,NULL),(114,24,17,2,NULL),(115,33,17,2,NULL),(116,34,17,2,NULL),(117,21,13,2,NULL),(118,22,13,2,NULL),(119,23,13,2,NULL),(120,24,13,2,NULL),(121,33,13,2,NULL),(122,34,13,2,NULL),(123,21,18,2,NULL),(124,22,18,2,NULL),(125,23,18,2,NULL),(126,24,18,2,NULL),(127,33,18,2,NULL),(128,34,18,2,NULL),(129,21,19,2,NULL),(130,22,19,2,NULL),(131,23,19,2,NULL),(132,24,19,2,NULL),(133,33,19,2,NULL),(134,34,19,2,NULL),(135,21,39,2,NULL),(136,22,39,2,NULL),(137,23,39,2,NULL),(138,24,39,2,NULL),(139,33,39,2,NULL),(140,34,39,2,NULL),(141,21,30,2,NULL),(142,22,30,2,NULL),(143,23,30,2,NULL),(144,24,30,2,NULL),(145,33,30,2,NULL),(146,34,30,2,NULL),(147,21,31,2,NULL),(148,22,31,2,NULL),(149,23,31,2,NULL),(150,24,31,2,NULL),(151,33,31,2,NULL),(152,34,31,2,NULL),(153,21,40,2,NULL),(154,22,40,2,NULL),(155,23,40,2,NULL),(156,24,40,2,NULL),(157,33,40,2,NULL),(158,34,40,2,NULL),(159,21,34,2,NULL),(160,22,34,2,NULL),(161,23,34,2,NULL),(162,24,34,2,NULL),(163,33,34,2,NULL),(164,34,34,2,NULL),(165,21,36,2,NULL),(166,22,36,2,NULL),(167,23,36,2,NULL),(168,24,36,2,NULL),(169,33,36,2,NULL),(170,34,36,2,NULL),(171,21,41,2,NULL),(172,22,41,2,NULL),(173,23,41,2,NULL),(174,24,41,2,NULL),(175,33,41,2,NULL),(176,34,41,2,NULL),(177,21,42,2,NULL),(178,22,42,2,NULL),(179,23,42,2,NULL),(180,24,42,2,NULL),(181,33,42,2,NULL),(182,34,42,2,NULL),(183,21,43,2,NULL),(184,22,43,2,NULL),(185,23,43,2,NULL),(186,24,43,2,NULL),(187,33,43,2,NULL),(188,34,43,2,NULL),(189,21,44,2,NULL),(190,22,44,2,NULL),(191,23,44,2,NULL),(192,24,44,2,NULL),(193,33,44,2,NULL),(194,34,44,2,NULL),(195,21,46,2,NULL),(196,22,46,2,NULL),(197,23,46,2,NULL),(198,24,46,2,NULL),(199,33,46,2,NULL),(200,34,46,2,NULL),(201,21,47,2,NULL),(202,22,47,2,NULL),(203,23,47,2,NULL),(204,24,47,2,NULL),(205,33,47,2,NULL),(206,34,47,2,NULL),(207,21,48,2,NULL),(208,22,48,2,NULL),(209,23,48,2,NULL),(210,24,48,2,NULL),(211,33,48,2,NULL),(212,34,48,2,NULL),(213,21,49,2,NULL),(214,22,49,2,NULL),(215,23,49,2,NULL),(216,24,49,2,NULL),(217,33,49,2,NULL),(218,34,49,2,NULL),(219,21,50,2,NULL),(220,22,50,2,NULL),(221,23,50,2,NULL),(222,24,50,2,NULL),(223,33,50,2,NULL),(224,34,50,2,NULL),(225,21,51,2,NULL),(226,22,51,2,NULL),(227,23,51,2,NULL),(228,24,51,2,NULL),(229,33,51,2,NULL),(230,34,51,2,NULL),(231,21,54,2,NULL),(232,22,54,2,NULL),(233,23,54,2,NULL),(234,24,54,2,NULL),(235,33,54,2,NULL),(236,34,54,2,NULL),(237,21,55,2,NULL),(238,22,55,2,NULL),(239,23,55,2,NULL),(240,24,55,2,NULL),(241,33,55,2,NULL),(242,34,55,2,NULL),(243,21,56,2,NULL),(244,22,56,2,NULL),(245,23,56,2,NULL),(246,24,56,2,NULL),(247,33,56,2,NULL),(248,34,56,2,NULL),(249,21,57,2,NULL),(250,22,57,2,NULL),(251,23,57,2,NULL),(252,24,57,2,NULL),(253,33,57,2,NULL),(254,34,57,2,NULL),(255,21,58,2,NULL),(256,22,58,2,NULL),(257,23,58,2,NULL),(258,24,58,2,NULL),(259,33,58,2,NULL),(260,34,58,2,NULL),(261,21,59,2,NULL),(262,22,59,2,NULL),(263,23,59,2,NULL),(264,24,59,2,NULL),(265,33,59,2,NULL),(266,34,59,2,NULL),(267,21,60,2,NULL),(268,22,60,2,NULL),(269,23,60,2,NULL),(270,24,60,2,NULL),(271,33,60,2,NULL),(272,34,60,2,NULL),(273,21,61,2,NULL),(274,22,61,2,NULL),(275,23,61,2,NULL),(276,24,61,2,NULL),(277,33,61,2,NULL),(278,34,61,2,NULL),(279,32,4,2,NULL),(280,32,16,2,NULL),(281,32,29,2,NULL),(282,5,30,2,NULL),(283,6,30,2,NULL),(284,7,30,2,NULL),(285,8,30,2,NULL),(286,9,30,2,NULL),(287,10,30,2,NULL),(288,3,30,2,NULL),(289,14,30,2,NULL),(290,15,30,2,NULL),(291,16,30,2,NULL),(292,17,30,2,NULL),(293,18,30,2,NULL),(294,19,30,2,NULL),(295,38,30,2,NULL),(296,72,30,2,NULL),(297,73,30,2,NULL),(298,74,30,2,NULL),(299,105,30,2,NULL),(300,108,30,2,NULL),(301,51,30,2,NULL),(302,80,30,2,NULL),(303,88,30,2,NULL),(304,43,30,2,NULL),(305,98,30,2,NULL),(306,103,30,2,NULL),(307,47,30,2,NULL),(308,48,30,2,NULL),(309,86,30,2,NULL),(310,87,30,2,NULL),(311,90,30,2,NULL),(312,95,30,2,NULL),(313,101,30,2,NULL),(314,71,30,2,NULL),(315,89,30,2,NULL),(316,94,30,2,NULL),(317,63,30,2,NULL),(318,64,30,2,NULL),(319,93,30,2,NULL),(320,102,30,2,NULL),(321,5,31,2,NULL),(322,6,31,2,NULL),(323,7,31,2,NULL),(324,8,31,2,NULL),(325,9,31,2,NULL),(326,10,31,2,NULL),(327,3,31,2,NULL),(328,14,31,2,NULL),(329,15,31,2,NULL),(330,16,31,2,NULL),(331,17,31,2,NULL),(332,18,31,2,NULL),(333,19,31,2,NULL),(334,38,31,2,NULL),(335,72,31,2,NULL),(336,73,31,2,NULL),(337,74,31,2,NULL),(338,105,31,2,NULL),(339,108,31,2,NULL),(340,51,31,2,NULL),(341,80,31,2,NULL),(342,88,31,2,NULL),(343,43,31,2,NULL),(344,98,31,2,NULL),(345,103,31,2,NULL),(346,47,31,2,NULL),(347,48,31,2,NULL),(348,86,31,2,NULL),(349,87,31,2,NULL),(350,90,31,2,NULL),(351,95,31,2,NULL),(352,101,31,2,NULL),(353,71,31,2,NULL),(354,89,31,2,NULL),(355,94,31,2,NULL),(356,63,31,2,NULL),(357,64,31,2,NULL),(358,93,31,2,NULL),(359,102,31,2,NULL),(360,5,40,2,NULL),(361,6,40,2,NULL),(362,7,40,2,NULL),(363,8,40,2,NULL),(364,9,40,2,NULL),(365,10,40,2,NULL),(366,3,40,2,NULL),(367,14,40,2,NULL),(368,15,40,2,NULL),(369,16,40,2,NULL),(370,17,40,2,NULL),(371,18,40,2,NULL),(372,19,40,2,NULL),(373,38,40,2,NULL),(374,72,40,2,NULL),(375,73,40,2,NULL),(376,74,40,2,NULL),(377,105,40,2,NULL),(378,108,40,2,NULL),(379,51,40,2,NULL),(380,80,40,2,NULL),(381,88,40,2,NULL),(382,43,40,2,NULL),(383,98,40,2,NULL),(384,103,40,2,NULL),(385,47,40,2,NULL),(386,48,40,2,NULL),(387,86,40,2,NULL),(388,87,40,2,NULL),(389,90,40,2,NULL),(390,95,40,2,NULL),(391,101,40,2,NULL),(392,71,40,2,NULL),(393,89,40,2,NULL),(394,94,40,2,NULL),(395,63,40,2,NULL),(396,64,40,2,NULL),(397,93,40,2,NULL),(398,102,40,2,NULL),(399,79,10,2,NULL),(400,79,53,2,NULL),(401,5,42,2,NULL),(402,6,42,2,NULL),(403,7,42,2,NULL),(404,8,42,2,NULL),(405,9,42,2,NULL),(406,10,42,2,NULL),(407,3,42,2,NULL),(408,14,42,2,NULL),(409,15,42,2,NULL),(410,16,42,2,NULL),(411,17,42,2,NULL),(412,18,42,2,NULL),(413,19,42,2,NULL),(414,38,42,2,NULL),(415,72,42,2,NULL),(416,73,42,2,NULL),(417,74,42,2,NULL),(418,105,42,2,NULL),(419,108,42,2,NULL),(420,51,42,2,NULL),(421,80,42,2,NULL),(422,88,42,2,NULL),(423,43,42,2,NULL),(424,98,42,2,NULL),(425,103,42,2,NULL),(426,47,42,2,NULL),(427,48,42,2,NULL),(428,86,42,2,NULL),(429,87,42,2,NULL),(430,90,42,2,NULL),(431,95,42,2,NULL),(432,101,42,2,NULL),(433,71,42,2,NULL),(434,89,42,2,NULL),(435,94,42,2,NULL),(436,63,42,2,NULL),(437,64,42,2,NULL),(438,93,42,2,NULL),(439,102,42,2,NULL),(440,44,52,2,NULL),(441,67,46,2,NULL),(442,68,47,2,NULL),(443,78,50,2,NULL),(444,104,49,2,NULL),(445,5,43,2,NULL),(446,6,43,2,NULL),(447,7,43,2,NULL),(448,8,43,2,NULL),(449,9,43,2,NULL),(450,10,43,2,NULL),(451,3,43,2,NULL),(452,14,43,2,NULL),(453,15,43,2,NULL),(454,16,43,2,NULL),(455,17,43,2,NULL),(456,18,43,2,NULL),(457,19,43,2,NULL),(458,38,43,2,NULL),(459,72,43,2,NULL),(460,73,43,2,NULL),(461,74,43,2,NULL),(462,105,43,2,NULL),(463,108,43,2,NULL),(464,51,43,2,NULL),(465,80,43,2,NULL),(466,88,43,2,NULL),(467,43,43,2,NULL),(468,98,43,2,NULL),(469,103,43,2,NULL),(470,47,43,2,NULL),(471,48,43,2,NULL),(472,86,43,2,NULL),(473,87,43,2,NULL),(474,90,43,2,NULL),(475,95,43,2,NULL),(476,101,43,2,NULL),(477,71,43,2,NULL),(478,89,43,2,NULL),(479,94,43,2,NULL),(480,63,43,2,NULL),(481,64,43,2,NULL),(482,93,43,2,NULL),(483,102,43,2,NULL),(484,54,43,2,NULL),(485,58,46,2,NULL),(486,75,52,2,NULL),(487,76,47,2,NULL),(488,82,49,2,NULL),(489,106,49,2,NULL),(490,72,1,2,NULL),(491,73,1,2,NULL),(492,74,1,2,NULL),(493,105,1,2,NULL),(494,108,1,2,NULL),(495,5,44,2,NULL),(496,6,44,2,NULL),(497,7,44,2,NULL),(498,8,44,2,NULL),(499,9,44,2,NULL),(500,10,44,2,NULL),(501,3,44,2,NULL),(502,72,5,2,NULL),(503,73,5,2,NULL),(504,74,5,2,NULL),(505,105,5,2,NULL),(506,108,5,2,NULL),(507,72,6,2,NULL),(508,73,6,2,NULL),(509,74,6,2,NULL),(510,105,6,2,NULL),(511,108,6,2,NULL),(512,72,7,2,NULL),(513,73,7,2,NULL),(514,74,7,2,NULL),(515,105,7,2,NULL),(516,108,7,2,NULL),(517,72,37,2,NULL),(518,73,37,2,NULL),(519,74,37,2,NULL),(520,105,37,2,NULL),(521,108,37,2,NULL),(522,72,38,2,NULL),(523,73,38,2,NULL),(524,74,38,2,NULL),(525,105,38,2,NULL),(526,108,38,2,NULL),(527,72,9,2,NULL),(528,73,9,2,NULL),(529,74,9,2,NULL),(530,105,9,2,NULL),(531,108,9,2,NULL),(532,72,11,2,NULL),(533,73,11,2,NULL),(534,74,11,2,NULL),(535,105,11,2,NULL),(536,108,11,2,NULL),(537,72,12,2,NULL),(538,73,12,2,NULL),(539,74,12,2,NULL),(540,105,12,2,NULL),(541,108,12,2,NULL),(542,72,14,2,NULL),(543,73,14,2,NULL),(544,74,14,2,NULL),(545,105,14,2,NULL),(546,108,14,2,NULL),(547,72,17,2,NULL),(548,73,17,2,NULL),(549,74,17,2,NULL),(550,105,17,2,NULL),(551,108,17,2,NULL),(552,72,13,2,NULL),(553,73,13,2,NULL),(554,74,13,2,NULL),(555,105,13,2,NULL),(556,108,13,2,NULL),(557,14,44,2,NULL),(558,15,44,2,NULL),(559,16,44,2,NULL),(560,17,44,2,NULL),(561,18,44,2,NULL),(562,19,44,2,NULL),(563,72,18,2,NULL),(564,73,18,2,NULL),(565,74,18,2,NULL),(566,105,18,2,NULL),(567,108,18,2,NULL),(568,72,19,2,NULL),(569,73,19,2,NULL),(570,74,19,2,NULL),(571,105,19,2,NULL),(572,108,19,2,NULL),(573,72,39,2,NULL),(574,73,39,2,NULL),(575,74,39,2,NULL),(576,105,39,2,NULL),(577,108,39,2,NULL),(578,38,44,2,NULL),(579,72,34,2,NULL),(580,73,34,2,NULL),(581,74,34,2,NULL),(582,105,34,2,NULL),(583,108,34,2,NULL),(584,72,36,2,NULL),(585,73,36,2,NULL),(586,74,36,2,NULL),(587,105,36,2,NULL),(588,108,36,2,NULL),(589,72,41,2,NULL),(590,73,41,2,NULL),(591,74,41,2,NULL),(592,105,41,2,NULL),(593,108,41,2,NULL),(594,72,46,2,NULL),(595,73,46,2,NULL),(596,74,46,2,NULL),(597,105,46,2,NULL),(598,108,46,2,NULL),(599,51,44,2,NULL),(600,80,44,2,NULL),(601,88,44,2,NULL),(602,72,47,2,NULL),(603,73,47,2,NULL),(604,74,47,2,NULL),(605,105,47,2,NULL),(606,108,47,2,NULL),(607,72,48,2,NULL),(608,73,48,2,NULL),(609,74,48,2,NULL),(610,105,48,2,NULL),(611,108,48,2,NULL),(612,43,44,2,NULL),(613,98,44,2,NULL),(614,103,44,2,NULL),(615,72,49,2,NULL),(616,73,49,2,NULL),(617,74,49,2,NULL),(618,105,49,2,NULL),(619,108,49,2,NULL),(620,47,44,2,NULL),(621,48,44,2,NULL),(622,86,44,2,NULL),(623,87,44,2,NULL),(624,90,44,2,NULL),(625,95,44,2,NULL),(626,101,44,2,NULL),(627,72,50,2,NULL),(628,73,50,2,NULL),(629,74,50,2,NULL),(630,105,50,2,NULL),(631,108,50,2,NULL),(632,71,44,2,NULL),(633,89,44,2,NULL),(634,94,44,2,NULL),(635,72,51,2,NULL),(636,73,51,2,NULL),(637,74,51,2,NULL),(638,105,51,2,NULL),(639,108,51,2,NULL),(640,63,44,2,NULL),(641,64,44,2,NULL),(642,93,44,2,NULL),(643,102,44,2,NULL),(644,72,54,2,NULL),(645,73,54,2,NULL),(646,74,54,2,NULL),(647,105,54,2,NULL),(648,108,54,2,NULL),(649,72,55,2,NULL),(650,73,55,2,NULL),(651,74,55,2,NULL),(652,105,55,2,NULL),(653,108,55,2,NULL),(654,72,56,2,NULL),(655,73,56,2,NULL),(656,74,56,2,NULL),(657,105,56,2,NULL),(658,108,56,2,NULL),(659,72,57,2,NULL),(660,73,57,2,NULL),(661,74,57,2,NULL),(662,105,57,2,NULL),(663,108,57,2,NULL),(664,72,58,2,NULL),(665,73,58,2,NULL),(666,74,58,2,NULL),(667,105,58,2,NULL),(668,108,58,2,NULL),(669,72,59,2,NULL),(670,73,59,2,NULL),(671,74,59,2,NULL),(672,105,59,2,NULL),(673,108,59,2,NULL),(674,72,60,2,NULL),(675,73,60,2,NULL),(676,74,60,2,NULL),(677,105,60,2,NULL),(678,108,60,2,NULL),(679,72,61,2,NULL),(680,73,61,2,NULL),(681,74,61,2,NULL),(682,105,61,2,NULL),(683,108,61,2,NULL),(684,62,50,2,NULL),(685,65,49,2,NULL),(686,70,47,2,NULL),(687,51,1,2,NULL),(688,80,1,2,NULL),(689,88,1,2,NULL),(690,5,46,2,NULL),(691,6,46,2,NULL),(692,7,46,2,NULL),(693,8,46,2,NULL),(694,9,46,2,NULL),(695,10,46,2,NULL),(696,3,46,2,NULL),(697,51,5,2,NULL),(698,80,5,2,NULL),(699,88,5,2,NULL),(700,51,6,2,NULL),(701,80,6,2,NULL),(702,88,6,2,NULL),(703,51,7,2,NULL),(704,80,7,2,NULL),(705,88,7,2,NULL),(706,51,37,2,NULL),(707,80,37,2,NULL),(708,88,37,2,NULL),(709,51,38,2,NULL),(710,80,38,2,NULL),(711,88,38,2,NULL),(712,51,9,2,NULL),(713,80,9,2,NULL),(714,88,9,2,NULL),(715,51,11,2,NULL),(716,80,11,2,NULL),(717,88,11,2,NULL),(718,51,12,2,NULL),(719,80,12,2,NULL),(720,88,12,2,NULL),(721,51,14,2,NULL),(722,80,14,2,NULL),(723,88,14,2,NULL),(724,51,17,2,NULL),(725,80,17,2,NULL),(726,88,17,2,NULL),(727,51,13,2,NULL),(728,80,13,2,NULL),(729,88,13,2,NULL),(730,14,46,2,NULL),(731,15,46,2,NULL),(732,16,46,2,NULL),(733,17,46,2,NULL),(734,18,46,2,NULL),(735,19,46,2,NULL),(736,51,18,2,NULL),(737,80,18,2,NULL),(738,88,18,2,NULL),(739,51,19,2,NULL),(740,80,19,2,NULL),(741,88,19,2,NULL),(742,51,39,2,NULL),(743,80,39,2,NULL),(744,88,39,2,NULL),(745,38,46,2,NULL),(746,51,34,2,NULL),(747,80,34,2,NULL),(748,88,34,2,NULL),(749,51,36,2,NULL),(750,80,36,2,NULL),(751,88,36,2,NULL),(752,51,41,2,NULL),(753,80,41,2,NULL),(754,88,41,2,NULL),(755,51,47,2,NULL),(756,80,47,2,NULL),(757,88,47,2,NULL),(758,51,48,2,NULL),(759,80,48,2,NULL),(760,88,48,2,NULL),(761,43,46,2,NULL),(762,98,46,2,NULL),(763,103,46,2,NULL),(764,51,49,2,NULL),(765,80,49,2,NULL),(766,88,49,2,NULL),(767,47,46,2,NULL),(768,48,46,2,NULL),(769,86,46,2,NULL),(770,87,46,2,NULL),(771,90,46,2,NULL),(772,95,46,2,NULL),(773,101,46,2,NULL),(774,51,50,2,NULL),(775,80,50,2,NULL),(776,88,50,2,NULL),(777,71,46,2,NULL),(778,89,46,2,NULL),(779,94,46,2,NULL),(780,51,51,2,NULL),(781,80,51,2,NULL),(782,88,51,2,NULL),(783,63,46,2,NULL),(784,64,46,2,NULL),(785,93,46,2,NULL),(786,102,46,2,NULL),(787,51,54,2,NULL),(788,80,54,2,NULL),(789,88,54,2,NULL),(790,51,55,2,NULL),(791,80,55,2,NULL),(792,88,55,2,NULL),(793,51,56,2,NULL),(794,80,56,2,NULL),(795,88,56,2,NULL),(796,51,57,2,NULL),(797,80,57,2,NULL),(798,88,57,2,NULL),(799,51,58,2,NULL),(800,80,58,2,NULL),(801,88,58,2,NULL),(802,51,59,2,NULL),(803,80,59,2,NULL),(804,88,59,2,NULL),(805,51,60,2,NULL),(806,80,60,2,NULL),(807,88,60,2,NULL),(808,51,61,2,NULL),(809,80,61,2,NULL),(810,88,61,2,NULL),(811,61,50,2,NULL),(812,81,46,2,NULL),(813,84,49,2,NULL),(814,96,48,2,NULL),(815,5,47,2,NULL),(816,6,47,2,NULL),(817,7,47,2,NULL),(818,8,47,2,NULL),(819,9,47,2,NULL),(820,10,47,2,NULL),(821,3,47,2,NULL),(822,14,47,2,NULL),(823,15,47,2,NULL),(824,16,47,2,NULL),(825,17,47,2,NULL),(826,18,47,2,NULL),(827,19,47,2,NULL),(828,38,47,2,NULL),(829,43,47,2,NULL),(830,98,47,2,NULL),(831,103,47,2,NULL),(832,47,47,2,NULL),(833,48,47,2,NULL),(834,86,47,2,NULL),(835,87,47,2,NULL),(836,90,47,2,NULL),(837,95,47,2,NULL),(838,101,47,2,NULL),(839,71,47,2,NULL),(840,89,47,2,NULL),(841,94,47,2,NULL),(842,63,47,2,NULL),(843,64,47,2,NULL),(844,93,47,2,NULL),(845,102,47,2,NULL),(846,46,43,2,NULL),(847,55,50,2,NULL),(848,83,49,2,NULL),(849,109,46,2,NULL),(850,43,1,2,NULL),(851,98,1,2,NULL),(852,103,1,2,NULL),(853,5,48,2,NULL),(854,6,48,2,NULL),(855,7,48,2,NULL),(856,8,48,2,NULL),(857,9,48,2,NULL),(858,10,48,2,NULL),(859,3,48,2,NULL),(860,43,5,2,NULL),(861,98,5,2,NULL),(862,103,5,2,NULL),(863,43,6,2,NULL),(864,98,6,2,NULL),(865,103,6,2,NULL),(866,43,7,2,NULL),(867,98,7,2,NULL),(868,103,7,2,NULL),(869,43,37,2,NULL),(870,98,37,2,NULL),(871,103,37,2,NULL),(872,43,38,2,NULL),(873,98,38,2,NULL),(874,103,38,2,NULL),(875,43,9,2,NULL),(876,98,9,2,NULL),(877,103,9,2,NULL),(878,43,11,2,NULL),(879,98,11,2,NULL),(880,103,11,2,NULL),(881,43,12,2,NULL),(882,98,12,2,NULL),(883,103,12,2,NULL),(884,43,14,2,NULL),(885,98,14,2,NULL),(886,103,14,2,NULL),(887,43,17,2,NULL),(888,98,17,2,NULL),(889,103,17,2,NULL),(890,43,13,2,NULL),(891,98,13,2,NULL),(892,103,13,2,NULL),(893,14,48,2,NULL),(894,15,48,2,NULL),(895,16,48,2,NULL),(896,17,48,2,NULL),(897,18,48,2,NULL),(898,19,48,2,NULL),(899,43,18,2,NULL),(900,98,18,2,NULL),(901,103,18,2,NULL),(902,43,19,2,NULL),(903,98,19,2,NULL),(904,103,19,2,NULL),(905,43,39,2,NULL),(906,98,39,2,NULL),(907,103,39,2,NULL),(908,38,48,2,NULL),(909,43,34,2,NULL),(910,98,34,2,NULL),(911,103,34,2,NULL),(912,43,36,2,NULL),(913,98,36,2,NULL),(914,103,36,2,NULL),(915,43,41,2,NULL),(916,98,41,2,NULL),(917,103,41,2,NULL),(918,43,49,2,NULL),(919,98,49,2,NULL),(920,103,49,2,NULL),(921,47,48,2,NULL),(922,48,48,2,NULL),(923,86,48,2,NULL),(924,87,48,2,NULL),(925,90,48,2,NULL),(926,95,48,2,NULL),(927,101,48,2,NULL),(928,43,50,2,NULL),(929,98,50,2,NULL),(930,103,50,2,NULL),(931,71,48,2,NULL),(932,89,48,2,NULL),(933,94,48,2,NULL),(934,43,51,2,NULL),(935,98,51,2,NULL),(936,103,51,2,NULL),(937,63,48,2,NULL),(938,64,48,2,NULL),(939,93,48,2,NULL),(940,102,48,2,NULL),(941,43,54,2,NULL),(942,98,54,2,NULL),(943,103,54,2,NULL),(944,43,55,2,NULL),(945,98,55,2,NULL),(946,103,55,2,NULL),(947,43,56,2,NULL),(948,98,56,2,NULL),(949,103,56,2,NULL),(950,43,57,2,NULL),(951,98,57,2,NULL),(952,103,57,2,NULL),(953,43,58,2,NULL),(954,98,58,2,NULL),(955,103,58,2,NULL),(956,43,59,2,NULL),(957,98,59,2,NULL),(958,103,59,2,NULL),(959,43,60,2,NULL),(960,98,60,2,NULL),(961,103,60,2,NULL),(962,43,61,2,NULL),(963,98,61,2,NULL),(964,103,61,2,NULL),(965,77,50,2,NULL),(966,85,50,2,NULL),(967,91,47,2,NULL),(968,99,46,2,NULL),(969,100,52,2,NULL),(970,47,1,2,NULL),(971,48,1,2,NULL),(972,86,1,2,NULL),(973,87,1,2,NULL),(974,90,1,2,NULL),(975,95,1,2,NULL),(976,101,1,2,NULL),(977,5,49,2,NULL),(978,6,49,2,NULL),(979,7,49,2,NULL),(980,8,49,2,NULL),(981,9,49,2,NULL),(982,10,49,2,NULL),(983,3,49,2,NULL),(984,47,5,2,NULL),(985,48,5,2,NULL),(986,86,5,2,NULL),(987,87,5,2,NULL),(988,90,5,2,NULL),(989,95,5,2,NULL),(990,101,5,2,NULL),(991,47,6,2,NULL),(992,48,6,2,NULL),(993,86,6,2,NULL),(994,87,6,2,NULL),(995,90,6,2,NULL),(996,95,6,2,NULL),(997,101,6,2,NULL),(998,47,7,2,NULL),(999,48,7,2,NULL),(1000,86,7,2,NULL),(1001,87,7,2,NULL),(1002,90,7,2,NULL),(1003,95,7,2,NULL),(1004,101,7,2,NULL),(1005,47,37,2,NULL),(1006,48,37,2,NULL),(1007,86,37,2,NULL),(1008,87,37,2,NULL),(1009,90,37,2,NULL),(1010,95,37,2,NULL),(1011,101,37,2,NULL),(1012,47,38,2,NULL),(1013,48,38,2,NULL),(1014,86,38,2,NULL),(1015,87,38,2,NULL),(1016,90,38,2,NULL),(1017,95,38,2,NULL),(1018,101,38,2,NULL),(1019,47,9,2,NULL),(1020,48,9,2,NULL),(1021,86,9,2,NULL),(1022,87,9,2,NULL),(1023,90,9,2,NULL),(1024,95,9,2,NULL),(1025,101,9,2,NULL),(1026,47,11,2,NULL),(1027,48,11,2,NULL),(1028,86,11,2,NULL),(1029,87,11,2,NULL),(1030,90,11,2,NULL),(1031,95,11,2,NULL),(1032,101,11,2,NULL),(1033,47,12,2,NULL),(1034,48,12,2,NULL),(1035,86,12,2,NULL),(1036,87,12,2,NULL),(1037,90,12,2,NULL),(1038,95,12,2,NULL),(1039,101,12,2,NULL),(1040,47,14,2,NULL),(1041,48,14,2,NULL),(1042,86,14,2,NULL),(1043,87,14,2,NULL),(1044,90,14,2,NULL),(1045,95,14,2,NULL),(1046,101,14,2,NULL),(1047,47,17,2,NULL),(1048,48,17,2,NULL),(1049,86,17,2,NULL),(1050,87,17,2,NULL),(1051,90,17,2,NULL),(1052,95,17,2,NULL),(1053,101,17,2,NULL),(1054,47,13,2,NULL),(1055,48,13,2,NULL),(1056,86,13,2,NULL),(1057,87,13,2,NULL),(1058,90,13,2,NULL),(1059,95,13,2,NULL),(1060,101,13,2,NULL),(1061,14,49,2,NULL),(1062,15,49,2,NULL),(1063,16,49,2,NULL),(1064,17,49,2,NULL),(1065,18,49,2,NULL),(1066,19,49,2,NULL),(1067,47,18,2,NULL),(1068,48,18,2,NULL),(1069,86,18,2,NULL),(1070,87,18,2,NULL),(1071,90,18,2,NULL),(1072,95,18,2,NULL),(1073,101,18,2,NULL),(1074,47,19,2,NULL),(1075,48,19,2,NULL),(1076,86,19,2,NULL),(1077,87,19,2,NULL),(1078,90,19,2,NULL),(1079,95,19,2,NULL),(1080,101,19,2,NULL),(1081,47,39,2,NULL),(1082,48,39,2,NULL),(1083,86,39,2,NULL),(1084,87,39,2,NULL),(1085,90,39,2,NULL),(1086,95,39,2,NULL),(1087,101,39,2,NULL),(1088,38,49,2,NULL),(1089,47,34,2,NULL),(1090,48,34,2,NULL),(1091,86,34,2,NULL),(1092,87,34,2,NULL),(1093,90,34,2,NULL),(1094,95,34,2,NULL),(1095,101,34,2,NULL),(1096,47,36,2,NULL),(1097,48,36,2,NULL),(1098,86,36,2,NULL),(1099,87,36,2,NULL),(1100,90,36,2,NULL),(1101,95,36,2,NULL),(1102,101,36,2,NULL),(1103,47,41,2,NULL),(1104,48,41,2,NULL),(1105,86,41,2,NULL),(1106,87,41,2,NULL),(1107,90,41,2,NULL),(1108,95,41,2,NULL),(1109,101,41,2,NULL),(1110,47,50,2,NULL),(1111,48,50,2,NULL),(1112,86,50,2,NULL),(1113,87,50,2,NULL),(1114,90,50,2,NULL),(1115,95,50,2,NULL),(1116,101,50,2,NULL),(1117,71,49,2,NULL),(1118,89,49,2,NULL),(1119,94,49,2,NULL),(1120,47,51,2,NULL),(1121,48,51,2,NULL),(1122,86,51,2,NULL),(1123,87,51,2,NULL),(1124,90,51,2,NULL),(1125,95,51,2,NULL),(1126,101,51,2,NULL),(1127,63,49,2,NULL),(1128,64,49,2,NULL),(1129,93,49,2,NULL),(1130,102,49,2,NULL),(1131,47,54,2,NULL),(1132,48,54,2,NULL),(1133,86,54,2,NULL),(1134,87,54,2,NULL),(1135,90,54,2,NULL),(1136,95,54,2,NULL),(1137,101,54,2,NULL),(1138,47,55,2,NULL),(1139,48,55,2,NULL),(1140,86,55,2,NULL),(1141,87,55,2,NULL),(1142,90,55,2,NULL),(1143,95,55,2,NULL),(1144,101,55,2,NULL),(1145,47,56,2,NULL),(1146,48,56,2,NULL),(1147,86,56,2,NULL),(1148,87,56,2,NULL),(1149,90,56,2,NULL),(1150,95,56,2,NULL),(1151,101,56,2,NULL),(1152,47,57,2,NULL),(1153,48,57,2,NULL),(1154,86,57,2,NULL),(1155,87,57,2,NULL),(1156,90,57,2,NULL),(1157,95,57,2,NULL),(1158,101,57,2,NULL),(1159,47,58,2,NULL),(1160,48,58,2,NULL),(1161,86,58,2,NULL),(1162,87,58,2,NULL),(1163,90,58,2,NULL),(1164,95,58,2,NULL),(1165,101,58,2,NULL),(1166,47,59,2,NULL),(1167,48,59,2,NULL),(1168,86,59,2,NULL),(1169,87,59,2,NULL),(1170,90,59,2,NULL),(1171,95,59,2,NULL),(1172,101,59,2,NULL),(1173,47,60,2,NULL),(1174,48,60,2,NULL),(1175,86,60,2,NULL),(1176,87,60,2,NULL),(1177,90,60,2,NULL),(1178,95,60,2,NULL),(1179,101,60,2,NULL),(1180,47,61,2,NULL),(1181,48,61,2,NULL),(1182,86,61,2,NULL),(1183,87,61,2,NULL),(1184,90,61,2,NULL),(1185,95,61,2,NULL),(1186,101,61,2,NULL),(1187,57,49,2,NULL),(1188,60,43,2,NULL),(1189,66,46,2,NULL),(1190,69,52,2,NULL),(1191,110,47,2,NULL),(1192,71,1,2,NULL),(1193,89,1,2,NULL),(1194,94,1,2,NULL),(1195,5,50,2,NULL),(1196,6,50,2,NULL),(1197,7,50,2,NULL),(1198,8,50,2,NULL),(1199,9,50,2,NULL),(1200,10,50,2,NULL),(1201,3,50,2,NULL),(1202,71,5,2,NULL),(1203,89,5,2,NULL),(1204,94,5,2,NULL),(1205,71,6,2,NULL),(1206,89,6,2,NULL),(1207,94,6,2,NULL),(1208,71,7,2,NULL),(1209,89,7,2,NULL),(1210,94,7,2,NULL),(1211,71,37,2,NULL),(1212,89,37,2,NULL),(1213,94,37,2,NULL),(1214,71,38,2,NULL),(1215,89,38,2,NULL),(1216,94,38,2,NULL),(1217,71,9,2,NULL),(1218,89,9,2,NULL),(1219,94,9,2,NULL),(1220,71,11,2,NULL),(1221,89,11,2,NULL),(1222,94,11,2,NULL),(1223,71,12,2,NULL),(1224,89,12,2,NULL),(1225,94,12,2,NULL),(1226,71,14,2,NULL),(1227,89,14,2,NULL),(1228,94,14,2,NULL),(1229,71,17,2,NULL),(1230,89,17,2,NULL),(1231,94,17,2,NULL),(1232,71,13,2,NULL),(1233,89,13,2,NULL),(1234,94,13,2,NULL),(1235,14,50,2,NULL),(1236,15,50,2,NULL),(1237,16,50,2,NULL),(1238,17,50,2,NULL),(1239,18,50,2,NULL),(1240,19,50,2,NULL),(1241,71,18,2,NULL),(1242,89,18,2,NULL),(1243,94,18,2,NULL),(1244,71,19,2,NULL),(1245,89,19,2,NULL),(1246,94,19,2,NULL),(1247,71,39,2,NULL),(1248,89,39,2,NULL),(1249,94,39,2,NULL),(1250,38,50,2,NULL),(1251,71,34,2,NULL),(1252,89,34,2,NULL),(1253,94,34,2,NULL),(1254,71,36,2,NULL),(1255,89,36,2,NULL),(1256,94,36,2,NULL),(1257,71,41,2,NULL),(1258,89,41,2,NULL),(1259,94,41,2,NULL),(1260,71,51,2,NULL),(1261,89,51,2,NULL),(1262,94,51,2,NULL),(1263,63,50,2,NULL),(1264,64,50,2,NULL),(1265,93,50,2,NULL),(1266,102,50,2,NULL),(1267,71,54,2,NULL),(1268,89,54,2,NULL),(1269,94,54,2,NULL),(1270,71,55,2,NULL),(1271,89,55,2,NULL),(1272,94,55,2,NULL),(1273,71,56,2,NULL),(1274,89,56,2,NULL),(1275,94,56,2,NULL),(1276,71,57,2,NULL),(1277,89,57,2,NULL),(1278,94,57,2,NULL),(1279,71,58,2,NULL),(1280,89,58,2,NULL),(1281,94,58,2,NULL),(1282,71,59,2,NULL),(1283,89,59,2,NULL),(1284,94,59,2,NULL),(1285,71,60,2,NULL),(1286,89,60,2,NULL),(1287,94,60,2,NULL),(1288,71,61,2,NULL),(1289,89,61,2,NULL),(1290,94,61,2,NULL),(1291,49,50,2,NULL),(1292,59,47,2,NULL),(1293,92,49,2,NULL),(1294,111,46,2,NULL),(1295,5,51,2,NULL),(1296,6,51,2,NULL),(1297,7,51,2,NULL),(1298,8,51,2,NULL),(1299,9,51,2,NULL),(1300,10,51,2,NULL),(1301,3,51,2,NULL),(1302,14,51,2,NULL),(1303,15,51,2,NULL),(1304,16,51,2,NULL),(1305,17,51,2,NULL),(1306,18,51,2,NULL),(1307,19,51,2,NULL),(1308,38,51,2,NULL),(1309,63,51,2,NULL),(1310,64,51,2,NULL),(1311,93,51,2,NULL),(1312,102,51,2,NULL),(1313,63,1,2,NULL),(1314,64,1,2,NULL),(1315,93,1,2,NULL),(1316,102,1,2,NULL),(1317,63,5,2,NULL),(1318,64,5,2,NULL),(1319,93,5,2,NULL),(1320,102,5,2,NULL),(1321,63,6,2,NULL),(1322,64,6,2,NULL),(1323,93,6,2,NULL),(1324,102,6,2,NULL),(1325,63,7,2,NULL),(1326,64,7,2,NULL),(1327,93,7,2,NULL),(1328,102,7,2,NULL),(1329,63,37,2,NULL),(1330,64,37,2,NULL),(1331,93,37,2,NULL),(1332,102,37,2,NULL),(1333,63,38,2,NULL),(1334,64,38,2,NULL),(1335,93,38,2,NULL),(1336,102,38,2,NULL),(1337,63,9,2,NULL),(1338,64,9,2,NULL),(1339,93,9,2,NULL),(1340,102,9,2,NULL),(1341,63,11,2,NULL),(1342,64,11,2,NULL),(1343,93,11,2,NULL),(1344,102,11,2,NULL),(1345,63,12,2,NULL),(1346,64,12,2,NULL),(1347,93,12,2,NULL),(1348,102,12,2,NULL),(1349,63,14,2,NULL),(1350,64,14,2,NULL),(1351,93,14,2,NULL),(1352,102,14,2,NULL),(1353,63,17,2,NULL),(1354,64,17,2,NULL),(1355,93,17,2,NULL),(1356,102,17,2,NULL),(1357,63,13,2,NULL),(1358,64,13,2,NULL),(1359,93,13,2,NULL),(1360,102,13,2,NULL),(1361,63,18,2,NULL),(1362,64,18,2,NULL),(1363,93,18,2,NULL),(1364,102,18,2,NULL),(1365,63,19,2,NULL),(1366,64,19,2,NULL),(1367,93,19,2,NULL),(1368,102,19,2,NULL),(1369,63,39,2,NULL),(1370,64,39,2,NULL),(1371,93,39,2,NULL),(1372,102,39,2,NULL),(1373,63,34,2,NULL),(1374,64,34,2,NULL),(1375,93,34,2,NULL),(1376,102,34,2,NULL),(1377,63,36,2,NULL),(1378,64,36,2,NULL),(1379,93,36,2,NULL),(1380,102,36,2,NULL),(1381,63,41,2,NULL),(1382,64,41,2,NULL),(1383,93,41,2,NULL),(1384,102,41,2,NULL),(1385,63,54,2,NULL),(1386,64,54,2,NULL),(1387,93,54,2,NULL),(1388,102,54,2,NULL),(1389,63,55,2,NULL),(1390,64,55,2,NULL),(1391,93,55,2,NULL),(1392,102,55,2,NULL),(1393,63,56,2,NULL),(1394,64,56,2,NULL),(1395,93,56,2,NULL),(1396,102,56,2,NULL),(1397,63,57,2,NULL),(1398,64,57,2,NULL),(1399,93,57,2,NULL),(1400,102,57,2,NULL),(1401,63,58,2,NULL),(1402,64,58,2,NULL),(1403,93,58,2,NULL),(1404,102,58,2,NULL),(1405,63,59,2,NULL),(1406,64,59,2,NULL),(1407,93,59,2,NULL),(1408,102,59,2,NULL),(1409,63,60,2,NULL),(1410,64,60,2,NULL),(1411,93,60,2,NULL),(1412,102,60,2,NULL),(1413,63,61,2,NULL),(1414,64,61,2,NULL),(1415,93,61,2,NULL),(1416,102,61,2,NULL),(1417,5,54,2,NULL),(1418,6,54,2,NULL),(1419,7,54,2,NULL),(1420,8,54,2,NULL),(1421,9,54,2,NULL),(1422,10,54,2,NULL),(1423,3,54,2,NULL),(1424,14,54,2,NULL),(1425,15,54,2,NULL),(1426,16,54,2,NULL),(1427,17,54,2,NULL),(1428,18,54,2,NULL),(1429,19,54,2,NULL),(1430,38,54,2,NULL),(1431,56,10,2,NULL),(1432,56,53,2,NULL),(1433,5,55,2,NULL),(1434,6,55,2,NULL),(1435,7,55,2,NULL),(1436,8,55,2,NULL),(1437,9,55,2,NULL),(1438,10,55,2,NULL),(1439,3,55,2,NULL),(1440,14,55,2,NULL),(1441,15,55,2,NULL),(1442,16,55,2,NULL),(1443,17,55,2,NULL),(1444,18,55,2,NULL),(1445,19,55,2,NULL),(1446,38,55,2,NULL),(1447,5,56,2,NULL),(1448,6,56,2,NULL),(1449,7,56,2,NULL),(1450,8,56,2,NULL),(1451,9,56,2,NULL),(1452,10,56,2,NULL),(1453,3,56,2,NULL),(1454,14,56,2,NULL),(1455,15,56,2,NULL),(1456,16,56,2,NULL),(1457,17,56,2,NULL),(1458,18,56,2,NULL),(1459,19,56,2,NULL),(1460,38,56,2,NULL),(1461,5,57,2,NULL),(1462,6,57,2,NULL),(1463,7,57,2,NULL),(1464,8,57,2,NULL),(1465,9,57,2,NULL),(1466,10,57,2,NULL),(1467,3,57,2,NULL),(1468,14,57,2,NULL),(1469,15,57,2,NULL),(1470,16,57,2,NULL),(1471,17,57,2,NULL),(1472,18,57,2,NULL),(1473,19,57,2,NULL),(1474,38,57,2,NULL),(1475,5,58,2,NULL),(1476,6,58,2,NULL),(1477,7,58,2,NULL),(1478,8,58,2,NULL),(1479,9,58,2,NULL),(1480,10,58,2,NULL),(1481,3,58,2,NULL),(1482,14,58,2,NULL),(1483,15,58,2,NULL),(1484,16,58,2,NULL),(1485,17,58,2,NULL),(1486,18,58,2,NULL),(1487,19,58,2,NULL),(1488,38,58,2,NULL),(1489,5,59,2,NULL),(1490,6,59,2,NULL),(1491,7,59,2,NULL),(1492,8,59,2,NULL),(1493,9,59,2,NULL),(1494,10,59,2,NULL),(1495,3,59,2,NULL),(1496,14,59,2,NULL),(1497,15,59,2,NULL),(1498,16,59,2,NULL),(1499,17,59,2,NULL),(1500,18,59,2,NULL),(1501,19,59,2,NULL),(1502,38,59,2,NULL),(1503,5,60,2,NULL),(1504,6,60,2,NULL),(1505,7,60,2,NULL),(1506,8,60,2,NULL),(1507,9,60,2,NULL),(1508,10,60,2,NULL),(1509,3,60,2,NULL),(1510,14,60,2,NULL),(1511,15,60,2,NULL),(1512,16,60,2,NULL),(1513,17,60,2,NULL),(1514,18,60,2,NULL),(1515,19,60,2,NULL),(1516,38,60,2,NULL),(1517,5,61,2,NULL),(1518,6,61,2,NULL),(1519,7,61,2,NULL),(1520,8,61,2,NULL),(1521,9,61,2,NULL),(1522,10,61,2,NULL),(1523,3,61,2,NULL),(1524,14,61,2,NULL),(1525,15,61,2,NULL),(1526,16,61,2,NULL),(1527,17,61,2,NULL),(1528,18,61,2,NULL),(1529,19,61,2,NULL),(1530,38,61,2,NULL),(1531,5,13,2,NULL),(1532,6,13,2,NULL),(1533,7,13,2,NULL),(1534,8,13,2,NULL),(1535,9,13,2,NULL),(1536,10,13,2,NULL),(1537,3,13,2,NULL),(1538,14,13,2,NULL),(1539,15,13,2,NULL),(1540,16,13,2,NULL),(1541,17,13,2,NULL),(1542,18,13,2,NULL),(1543,19,13,2,NULL),(1544,38,13,2,NULL),(1545,14,1,2,NULL),(1546,15,1,2,NULL),(1547,16,1,2,NULL),(1548,17,1,2,NULL),(1549,18,1,2,NULL),(1550,19,1,2,NULL),(1551,14,5,2,NULL),(1552,15,5,2,NULL),(1553,16,5,2,NULL),(1554,17,5,2,NULL),(1555,18,5,2,NULL),(1556,19,5,2,NULL),(1557,14,6,2,NULL),(1558,15,6,2,NULL),(1559,16,6,2,NULL),(1560,17,6,2,NULL),(1561,18,6,2,NULL),(1562,19,6,2,NULL),(1563,14,7,2,NULL),(1564,15,7,2,NULL),(1565,16,7,2,NULL),(1566,17,7,2,NULL),(1567,18,7,2,NULL),(1568,19,7,2,NULL),(1569,14,37,2,NULL),(1570,15,37,2,NULL),(1571,16,37,2,NULL),(1572,17,37,2,NULL),(1573,18,37,2,NULL),(1574,19,37,2,NULL),(1575,14,38,2,NULL),(1576,15,38,2,NULL),(1577,16,38,2,NULL),(1578,17,38,2,NULL),(1579,18,38,2,NULL),(1580,19,38,2,NULL),(1581,14,9,2,NULL),(1582,15,9,2,NULL),(1583,16,9,2,NULL),(1584,17,9,2,NULL),(1585,18,9,2,NULL),(1586,19,9,2,NULL),(1587,14,11,2,NULL),(1588,15,11,2,NULL),(1589,16,11,2,NULL),(1590,17,11,2,NULL),(1591,18,11,2,NULL),(1592,19,11,2,NULL),(1593,14,12,2,NULL),(1594,15,12,2,NULL),(1595,16,12,2,NULL),(1596,17,12,2,NULL),(1597,18,12,2,NULL),(1598,19,12,2,NULL),(1599,14,14,2,NULL),(1600,15,14,2,NULL),(1601,16,14,2,NULL),(1602,17,14,2,NULL),(1603,18,14,2,NULL),(1604,19,14,2,NULL),(1605,14,17,2,NULL),(1606,15,17,2,NULL),(1607,16,17,2,NULL),(1608,17,17,2,NULL),(1609,18,17,2,NULL),(1610,19,17,2,NULL),(1611,14,18,2,NULL),(1612,15,18,2,NULL),(1613,16,18,2,NULL),(1614,17,18,2,NULL),(1615,18,18,2,NULL),(1616,19,18,2,NULL),(1617,14,19,2,NULL),(1618,15,19,2,NULL),(1619,16,19,2,NULL),(1620,17,19,2,NULL),(1621,18,19,2,NULL),(1622,19,19,2,NULL),(1623,14,39,2,NULL),(1624,15,39,2,NULL),(1625,16,39,2,NULL),(1626,17,39,2,NULL),(1627,18,39,2,NULL),(1628,19,39,2,NULL),(1629,14,34,2,NULL),(1630,15,34,2,NULL),(1631,16,34,2,NULL),(1632,17,34,2,NULL),(1633,18,34,2,NULL),(1634,19,34,2,NULL),(1635,14,36,2,NULL),(1636,15,36,2,NULL),(1637,16,36,2,NULL),(1638,17,36,2,NULL),(1639,18,36,2,NULL),(1640,19,36,2,NULL),(1641,14,41,2,NULL),(1642,15,41,2,NULL),(1643,16,41,2,NULL),(1644,17,41,2,NULL),(1645,18,41,2,NULL),(1646,19,41,2,NULL),(1647,13,4,2,NULL),(1648,13,16,2,NULL),(1649,13,29,2,NULL),(1650,5,18,2,NULL),(1651,6,18,2,NULL),(1652,7,18,2,NULL),(1653,8,18,2,NULL),(1654,9,18,2,NULL),(1655,10,18,2,NULL),(1656,3,18,2,NULL),(1657,38,18,2,NULL),(1658,5,19,2,NULL),(1659,6,19,2,NULL),(1660,7,19,2,NULL),(1661,8,19,2,NULL),(1662,9,19,2,NULL),(1663,10,19,2,NULL),(1664,3,19,2,NULL),(1665,38,19,2,NULL),(1666,5,39,2,NULL),(1667,6,39,2,NULL),(1668,7,39,2,NULL),(1669,8,39,2,NULL),(1670,9,39,2,NULL),(1671,10,39,2,NULL),(1672,3,39,2,NULL),(1673,38,39,2,NULL),(1674,37,33,2,NULL),(1675,38,1,2,NULL),(1676,38,5,2,NULL),(1677,38,6,2,NULL),(1678,38,7,2,NULL),(1679,38,37,2,NULL),(1680,38,38,2,NULL),(1681,38,9,2,NULL),(1682,38,11,2,NULL),(1683,38,12,2,NULL),(1684,38,14,2,NULL),(1685,38,17,2,NULL),(1686,38,34,2,NULL),(1687,38,36,2,NULL),(1688,38,41,2,NULL),(1689,42,32,2,NULL),(1690,5,34,2,NULL),(1691,6,34,2,NULL),(1692,7,34,2,NULL),(1693,8,34,2,NULL),(1694,9,34,2,NULL),(1695,10,34,2,NULL),(1696,3,34,2,NULL),(1697,41,35,2,NULL),(1698,5,36,2,NULL),(1699,6,36,2,NULL),(1700,7,36,2,NULL),(1701,8,36,2,NULL),(1702,9,36,2,NULL),(1703,10,36,2,NULL),(1704,3,36,2,NULL),(1705,5,41,2,NULL),(1706,6,41,2,NULL),(1707,7,41,2,NULL),(1708,8,41,2,NULL),(1709,9,41,2,NULL),(1710,10,41,2,NULL),(1711,3,41,2,NULL),(1712,5,9,2,NULL),(1713,6,9,2,NULL),(1714,7,9,2,NULL),(1715,8,9,2,NULL),(1716,9,9,2,NULL),(1717,10,9,2,NULL),(1718,3,9,2,NULL),(1719,5,11,2,NULL),(1720,6,11,2,NULL),(1721,7,11,2,NULL),(1722,8,11,2,NULL),(1723,9,11,2,NULL),(1724,10,11,2,NULL),(1725,3,11,2,NULL),(1726,12,10,2,NULL),(1727,12,53,2,NULL),(1728,5,12,2,NULL),(1729,6,12,2,NULL),(1730,7,12,2,NULL),(1731,8,12,2,NULL),(1732,9,12,2,NULL),(1733,10,12,2,NULL),(1734,3,12,2,NULL),(1735,11,10,2,NULL),(1736,11,53,2,NULL),(1737,5,14,2,NULL),(1738,6,14,2,NULL),(1739,7,14,2,NULL),(1740,8,14,2,NULL),(1741,9,14,2,NULL),(1742,10,14,2,NULL),(1743,3,14,2,NULL),(1744,5,17,2,NULL),(1745,6,17,2,NULL),(1746,7,17,2,NULL),(1747,8,17,2,NULL),(1748,9,17,2,NULL),(1749,10,17,2,NULL),(1750,3,17,2,NULL),(1751,1,3,2,NULL),(1752,5,1,2,NULL),(1753,6,1,2,NULL),(1754,7,1,2,NULL),(1755,8,1,2,NULL),(1756,9,1,2,NULL),(1757,10,1,2,NULL),(1758,3,1,2,NULL),(1759,5,5,2,NULL),(1760,6,5,2,NULL),(1761,7,5,2,NULL),(1762,8,5,2,NULL),(1763,9,5,2,NULL),(1764,10,5,2,NULL),(1765,5,6,2,NULL),(1766,6,6,2,NULL),(1767,7,6,2,NULL),(1768,8,6,2,NULL),(1769,9,6,2,NULL),(1770,10,6,2,NULL),(1771,5,7,2,NULL),(1772,6,7,2,NULL),(1773,7,7,2,NULL),(1774,8,7,2,NULL),(1775,9,7,2,NULL),(1776,10,7,2,NULL),(1777,5,37,2,NULL),(1778,6,37,2,NULL),(1779,7,37,2,NULL),(1780,8,37,2,NULL),(1781,9,37,2,NULL),(1782,10,37,2,NULL),(1783,5,38,2,NULL),(1784,6,38,2,NULL),(1785,7,38,2,NULL),(1786,8,38,2,NULL),(1787,9,38,2,NULL),(1788,10,38,2,NULL),(1789,3,5,2,NULL),(1790,3,6,2,NULL),(1791,3,7,2,NULL),(1792,3,37,2,NULL),(1793,3,38,2,NULL),(1794,4,3,2,NULL),(1795,2,4,2,NULL),(1796,2,16,2,NULL),(1797,2,29,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (16,'android.permission.ACCESS_CACHE_FILESYSTEM'),(19,'android.permission.ACCESS_COARSE_LOCATION'),(27,'android.permission.ACCESS_DOWNLOAD_MANAGER'),(20,'android.permission.ACCESS_DOWNLOAD_MANAGER_ADVANCED'),(24,'android.permission.ACCESS_DRM'),(26,'android.permission.ACCESS_FINE_LOCATION'),(13,'android.permission.ACCESS_NETWORK_STATE'),(18,'android.permission.ACCESS_WIFI_STATE'),(14,'android.permission.BIND_WALLPAPER'),(34,'android.permission.BROADCAST_PACKAGE_REMOVED'),(33,'android.permission.CHANGE_NETWORK_STATE'),(15,'android.permission.INSTALL_DRM'),(1,'android.permission.INSTALL_PACKAGES'),(4,'android.permission.INTERNET'),(11,'android.permission.MODIFY_PHONE_STATE'),(36,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(21,'android.permission.READ_CONTACTS'),(2,'android.permission.READ_PHONE_STATE'),(25,'android.permission.READ_SMS'),(10,'android.permission.RECEIVE_BOOT_COMPLETED'),(8,'android.permission.RECEIVE_SMS'),(29,'android.permission.RECEIVE_WAP_PUSH'),(35,'android.permission.RESTART_PACKAGES'),(28,'android.permission.SEND_DOWNLOAD_COMPLETED_INTENTS'),(3,'android.permission.SEND_SMS'),(7,'android.permission.VIBRATE'),(12,'android.permission.WRITE_APN_SETTINGS'),(30,'android.permission.WRITE_CALENDAR'),(22,'android.permission.WRITE_CONTACTS'),(5,'android.permission.WRITE_EXTERNAL_STORAGE'),(23,'android.permission.WRITE_OWNER_DATA'),(32,'android.permission.WRITE_SETTINGS'),(17,'android.permission.WRITE_SMS'),(31,'android.permission.WRITE_SYNC_SETTINGS'),(9,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(6,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS');
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
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'',NULL,NULL,NULL),(3,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(4,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'',NULL,NULL,NULL),(7,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'',NULL,NULL,NULL),(10,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(11,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(12,NULL,NULL,'content://media/internal/audio/media',NULL,NULL,NULL),(13,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(14,NULL,NULL,'http://mp3.baidu.com/m?f=ms&rf=idx&tn=baidump3&ct=134217728&lf=&rn=&lm=0&word=(.*)',NULL,NULL,NULL),(15,NULL,NULL,'NULL-CONSTANT(.*)',NULL,NULL,NULL),(16,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL),(17,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL),(18,NULL,NULL,'content://sms/',NULL,NULL,NULL),(19,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(20,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(21,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(22,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(23,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,9,3),(2,11,4),(3,17,7),(4,29,10),(5,32,11),(6,32,12),(7,52,16),(8,56,17),(9,63,18),(10,78,19),(11,87,20),(12,95,21),(13,102,22),(14,104,23);
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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,2,2),(11,2,4),(12,2,5),(13,2,10),(14,2,11),(15,2,12),(16,2,13),(17,3,1),(18,3,2),(19,3,3),(20,3,4),(21,3,5),(22,3,6),(23,3,8),(24,3,9),(25,4,1),(26,4,2),(27,4,3),(28,4,4),(29,4,5),(30,4,6),(31,4,8),(32,4,9),(33,4,10),(34,5,2),(35,5,3),(36,5,4),(37,5,5),(38,5,7),(39,5,8),(40,5,10),(41,5,12),(42,5,13),(43,5,15),(44,5,17),(45,5,16),(46,5,19),(47,5,18),(48,5,21),(49,5,20),(50,5,23),(51,5,22),(52,5,25),(53,5,24),(54,5,27),(55,5,26),(56,5,29),(57,5,28),(58,5,31),(59,5,30),(60,5,32),(61,5,33),(62,6,34),(63,6,35),(64,6,1),(65,6,32),(66,6,2),(67,6,3),(68,6,4),(69,6,5),(70,6,36),(71,6,8),(72,6,10),(73,6,11),(74,6,12),(75,6,13),(76,6,17),(77,6,19),(78,6,21),(79,6,25),(80,6,26);
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

-- Dump completed on 2015-10-12  3:31:47
