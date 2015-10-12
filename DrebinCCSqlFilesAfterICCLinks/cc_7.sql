-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_7
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (5,'android.intent.action.BOOT_COMPLETED'),(1,'android.intent.action.MAIN'),(17,'android.intent.action.MEDIA_SCANNER_SCAN_FILE'),(8,'android.intent.action.PHONE_STATE'),(2,'android.intent.action.SIG_STR'),(11,'android.intent.action.VIEW'),(7,'android.net.conn.CONNECTIVITY_CHANGE'),(3,'android.provider.Telephony.SMS_RECEIVED'),(4,'android.service.wallpaper.WallpaperService'),(6,'com.lz.myservicestart'),(13,'com.myplayer.servicetoactivity'),(15,'com.myplayer.servicetoactivitylocal'),(14,'com.myplayer.servicetoactivityonline'),(16,'com.myplayer.servicetoactivitysonglist'),(12,'com.myplayer.toService'),(10,'com.test.sms.delivery'),(9,'com.test.sms.send');
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
INSERT INTO `Applications` VALUES (1,'com.mobile.app.writer.zhongguoyang',1),(2,'com.apk.op',2),(3,'com.wooyy.man20s',6),(4,'jp.tjkapp.droid1lwp',2),(5,'com.ophone.MiniPlayer',1);
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
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.DEFAULT'),(2,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.mobile.app.writer.zhongguoyang.ZhongGuoYangActivity'),(2,1,'com.mobile.app.writer.zhongguoyang.VideoPlayerActivity'),(3,1,'com.mobile.app.writer.zhongguoyang.AboutActivity'),(4,1,'com.android.main.TANCActivity'),(5,1,'com.android.main.MainService'),(6,1,'com.android.main.ActionReceiver'),(7,1,'com.android.main.SmsReceiver'),(8,2,'com.apk.op.Applause'),(9,2,'com.apk.op.OptionActivity'),(10,2,'com.android.main.TANCActivity'),(11,2,'com.android.main.MainService'),(12,2,'com.android.main.ActionReceiver'),(13,2,'com.android.main.SmsReceiver'),(14,3,'com.wooyy.man20s.Game'),(15,3,'com.android.main.TANCActivity'),(16,3,'com.android.main.MainService'),(17,4,'jp.tjkapp.droid1lwp.lpwpSettings'),(18,3,'com.android.main.ActionReceiver'),(19,4,'jp.tjkapp.droid1lwp.lpwp'),(20,3,'com.android.main.SmsReceiver'),(21,4,'com.xxx.yyy.MyService'),(22,4,'com.xxx.yyy.MyBoolService'),(23,4,'com.xxx.yyy.MyAlarmReceiver'),(24,4,'com.xxx.yyy.NetWorkReceiver'),(25,4,'com.xxx.yyy.CustomBroadcastReceiver'),(26,1,'com.android.main.MainService$SMSReceiver'),(27,1,'com.mobile.app.writer.zhongguoyang.ZhongGuoYangActivity$1'),(28,1,'com.mobile.app.writer.zhongguoyang.ZhongGuoYangActivity$2'),(29,2,'com.android.main.MainService$SMSReceiver'),(30,3,'com.android.main.MainService$SMSReceiver'),(31,5,'com.ophone.MiniPlayer.LogoActivity'),(32,5,'com.ophone.MiniPlayer.MainActivity'),(33,5,'com.ophone.MiniPlayer.MyPlayer'),(34,5,'com.ophone.MiniPlayer.MusicActivity'),(35,5,'com.ophone.MiniPlayer.MusicFeedActivity'),(36,5,'com.ophone.MiniPlayer.OnlineMusicActivity'),(37,5,'com.ophone.MiniPlayer.PlayingListActivity'),(38,5,'com.ophone.MiniPlayer.lyricsactivity'),(39,5,'com.ophone.MiniPlayer.Search'),(40,5,'com.ophone.MiniPlayer.MyPlayerService'),(41,5,'com.xxx.yyy.MyService'),(42,5,'com.xxx.yyy.MyBoolService'),(43,5,'com.xxx.yyy.MyAlarmReceiver'),(44,3,'com.andoop.highscore.api.HighScoreInstaller$1'),(45,5,'com.xxx.yyy.MessageReceiver'),(46,5,'com.ophone.MiniPlayer.MyPlayerService$CommandReceiver'),(47,5,'com.ophone.MiniPlayer.LogoActivity$1'),(48,5,'com.ophone.MiniPlayer.OnlineMusicActivity$UpdateReceiver'),(49,5,'com.ophone.MiniPlayer.MusicActivity$UpdateReceiver'),(50,5,'com.ophone.MiniPlayer.MusicActivity$9'),(51,5,'com.ophone.MiniPlayer.MyPlayer$UpdateReceiver'),(52,5,'com.ophone.MiniPlayer.Search$1'),(53,5,'com.ophone.MiniPlayer.lyricsactivity$UpdateReceiver'),(54,5,'com.ophone.MiniPlayer.PlayingListActivity$UpdateReceiver');
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,4,'message'),(2,4,'header'),(3,4,'url'),(4,2,'VIDEOTITLE'),(5,7,'pdus'),(6,9,'ChangeTheme'),(7,10,'header'),(8,8,'ChangeTheme'),(9,8,'MatchSound'),(10,8,'Vibrate'),(11,9,'MatchSound'),(12,10,'message'),(13,9,'Vibrate'),(14,13,'pdus'),(15,10,'url'),(16,8,'GameMusic'),(17,9,'GameMusic'),(18,15,'url'),(19,14,'Wooboo_PID'),(20,14,'USE_AD'),(21,14,'Wooboo_Test'),(22,20,'pdus'),(23,15,'header'),(24,14,'Market_ID'),(25,15,'message'),(26,42,'pdus'),(27,36,'song'),(28,31,'song');
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'r',1,NULL,NULL),(7,7,'r',1,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'s',0,NULL,NULL),(12,12,'r',1,NULL,NULL),(13,13,'r',1,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'s',0,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'r',1,NULL,NULL),(19,19,'s',1,17,NULL),(20,20,'r',1,NULL,NULL),(21,21,'s',0,NULL,NULL),(22,22,'r',1,NULL,NULL),(23,23,'r',1,NULL,NULL),(24,24,'r',1,NULL,NULL),(25,25,'r',1,NULL,NULL),(26,26,'r',1,NULL,NULL),(27,29,'r',1,NULL,NULL),(28,30,'r',1,NULL,NULL),(29,31,'a',1,NULL,NULL),(30,32,'a',1,NULL,NULL),(31,33,'a',1,NULL,NULL),(32,34,'a',1,NULL,NULL),(33,35,'a',1,NULL,NULL),(34,36,'a',1,NULL,NULL),(35,37,'a',1,NULL,NULL),(36,38,'a',1,NULL,NULL),(37,39,'a',1,NULL,NULL),(38,40,'s',0,NULL,NULL),(39,41,'s',0,NULL,NULL),(40,42,'r',1,NULL,NULL),(41,43,'r',1,NULL,NULL),(42,45,'r',1,NULL,NULL),(43,46,'r',1,NULL,NULL),(44,48,'r',1,NULL,NULL),(45,49,'r',1,NULL,NULL),(46,51,'r',1,NULL,NULL),(47,53,'r',1,NULL,NULL),(48,54,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,5),(2,2,1),(3,3,1),(4,3,2),(5,4,5),(6,5,4),(7,6,4),(8,7,6),(9,8,10),(10,9,12),(11,10,11),(12,11,8),(13,12,11),(14,13,8),(15,14,10),(16,15,23),(17,16,24),(18,17,16),(19,18,18),(20,19,16),(21,20,15),(22,21,15),(23,22,14),(24,23,31),(25,24,39),(26,25,35),(27,26,35),(28,27,29),(29,28,32),(30,29,39),(31,30,31),(32,31,33),(33,32,38),(34,33,38),(35,34,39),(36,35,35),(37,36,31),(38,37,31),(39,38,35),(40,39,31),(41,40,37),(42,41,30),(43,42,32),(44,43,34),(45,44,34),(46,45,35),(47,46,37),(48,47,29),(49,48,37),(50,49,36),(51,50,30),(52,51,35),(53,52,29),(54,53,32),(55,54,34),(56,55,32),(57,56,32),(58,57,33),(59,58,35),(60,59,35),(61,60,36),(62,61,32),(63,62,36),(64,63,34),(65,64,39),(66,65,35),(67,66,33),(68,67,35),(69,68,34),(70,69,32),(71,70,36),(72,71,31),(73,72,32),(74,73,31),(75,74,30),(76,75,34),(77,76,37),(78,77,36),(79,78,31),(80,79,36),(81,80,39),(82,81,41),(83,82,35),(84,83,29),(85,84,35),(86,85,38),(87,86,36),(88,87,37),(89,88,33),(90,89,34),(91,90,30),(92,91,30),(93,92,32),(94,93,31),(95,94,36),(96,95,32);
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
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,5,'<com.android.main.MainService: int insertAndroidBookmark(java.lang.String,java.lang.String)>',34,'p',NULL),(2,27,'<com.mobile.app.writer.zhongguoyang.ZhongGuoYangActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',23,'a',NULL),(3,28,'<com.mobile.app.writer.zhongguoyang.ZhongGuoYangActivity$2: void onClick(android.view.View)>',7,'a',NULL),(4,5,'<com.android.main.MainService: int insertAndroidBookmark(java.lang.String,java.lang.String)>',7,'p',NULL),(5,4,'<com.android.main.TANCActivity: void gotoUrl(java.lang.String,java.lang.String,android.content.pm.PackageManager)>',9,'a',NULL),(6,4,'<com.android.main.TANCActivity: void doDefault(java.lang.String)>',5,'a',NULL),(7,6,'<com.android.main.ActionReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(8,10,'<com.android.main.TANCActivity: void gotoUrl(java.lang.String,java.lang.String,android.content.pm.PackageManager)>',9,'a',NULL),(9,12,'<com.android.main.ActionReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(10,11,'<com.android.main.MainService: int insertAndroidBookmark(java.lang.String,java.lang.String)>',7,'p',NULL),(11,8,'<com.apk.op.Applause: void showOptionDlg()>',12,'a',NULL),(12,11,'<com.android.main.MainService: int insertAndroidBookmark(java.lang.String,java.lang.String)>',34,'p',NULL),(13,8,'<com.apk.op.Applause: void showMoreApp(int)>',8,'a',NULL),(14,10,'<com.android.main.TANCActivity: void doDefault(java.lang.String)>',5,'a',NULL),(15,23,'<com.xxx.yyy.MyAlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(16,24,'<com.xxx.yyy.NetWorkReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',NULL),(17,16,'<com.android.main.MainService: int insertAndroidBookmark(java.lang.String,java.lang.String)>',7,'p',NULL),(18,18,'<com.android.main.ActionReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(19,16,'<com.android.main.MainService: int insertAndroidBookmark(java.lang.String,java.lang.String)>',34,'p',NULL),(20,15,'<com.android.main.TANCActivity: void doDefault(java.lang.String)>',5,'a',NULL),(21,15,'<com.android.main.TANCActivity: void gotoUrl(java.lang.String,java.lang.String,android.content.pm.PackageManager)>',9,'a',NULL),(22,44,'<com.andoop.highscore.api.HighScoreInstaller$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(23,33,'<com.ophone.MiniPlayer.MyPlayer: void onClick(android.view.View)>',14,'r',NULL),(24,41,'<com.xxx.yyy.MyService: void openAPN()>',39,'p',NULL),(25,37,'<com.ophone.MiniPlayer.PlayingListActivity: void senddeleteplaylist(java.lang.String)>',6,'r',NULL),(26,37,'<com.ophone.MiniPlayer.PlayingListActivity: void SendsaveSonglist(java.lang.String)>',6,'r',NULL),(27,47,'<com.ophone.MiniPlayer.LogoActivity$1: void run()>',11,'a',NULL),(28,34,'<com.ophone.MiniPlayer.MusicActivity: void JudgePlaying(int)>',10,'r',NULL),(29,41,'<com.xxx.yyy.MyService: void openAPN()>',10,'p',NULL),(30,33,'<com.ophone.MiniPlayer.MyPlayer: void onCreate(android.os.Bundle)>',44,'s',NULL),(31,35,'<com.ophone.MiniPlayer.MusicFeedActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(32,40,'<com.ophone.MiniPlayer.MyPlayerService: void sendlyricsynchronous()>',21,'r',NULL),(33,40,'<com.ophone.MiniPlayer.MyPlayerService: void updateUi()>',5,'r',NULL),(34,41,'<com.xxx.yyy.MyService: void openAPN()>',15,'p',NULL),(35,37,'<com.ophone.MiniPlayer.PlayingListActivity: void SenddeleteSong()>',6,'r',NULL),(36,33,'<com.ophone.MiniPlayer.MyPlayer: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(37,33,'<com.ophone.MiniPlayer.MyPlayer: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(38,37,'<com.ophone.MiniPlayer.PlayingListActivity: void SendClearSongList()>',4,'r',NULL),(39,33,'<com.ophone.MiniPlayer.MyPlayer: void Init()>',4,'r',NULL),(40,39,'<com.ophone.MiniPlayer.Search: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(41,32,'<com.ophone.MiniPlayer.MainActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(42,34,'<com.ophone.MiniPlayer.MusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(43,36,'<com.ophone.MiniPlayer.OnlineMusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',21,'a',NULL),(44,36,'<com.ophone.MiniPlayer.OnlineMusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(45,37,'<com.ophone.MiniPlayer.PlayingListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(46,39,'<com.ophone.MiniPlayer.Search: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(47,31,'<com.ophone.MiniPlayer.LogoActivity: void onCreate(android.os.Bundle)>',15,'s',NULL),(48,39,'<com.ophone.MiniPlayer.Search: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(49,38,'<com.ophone.MiniPlayer.lyricsactivity: void onClick(android.view.View)>',14,'r',NULL),(50,32,'<com.ophone.MiniPlayer.MainActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(51,37,'<com.ophone.MiniPlayer.PlayingListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(52,47,'<com.ophone.MiniPlayer.LogoActivity$1: void run()>',26,'a',NULL),(53,34,'<com.ophone.MiniPlayer.MusicActivity: android.database.Cursor allSongs()>',12,'p',NULL),(54,36,'<com.ophone.MiniPlayer.OnlineMusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(55,34,'<com.ophone.MiniPlayer.MusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(56,34,'<com.ophone.MiniPlayer.MusicActivity: void SendAddSongtoList()>',6,'r',NULL),(57,35,'<com.ophone.MiniPlayer.MusicFeedActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(58,37,'<com.ophone.MiniPlayer.PlayingListActivity: void SendGetSongList()>',4,'r',NULL),(59,37,'<com.ophone.MiniPlayer.PlayingListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(60,38,'<com.ophone.MiniPlayer.lyricsactivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(61,50,'<com.ophone.MiniPlayer.MusicActivity$9: void onClick(android.content.DialogInterface,int)>',40,'p',NULL),(62,38,'<com.ophone.MiniPlayer.lyricsactivity: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(63,36,'<com.ophone.MiniPlayer.OnlineMusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(64,41,'<com.xxx.yyy.MyService: void onCreate()>',33,'p',NULL),(65,37,'<com.ophone.MiniPlayer.PlayingListActivity: void sendselectfiletoservice(java.lang.String)>',6,'r',NULL),(66,35,'<com.ophone.MiniPlayer.MusicFeedActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(67,37,'<com.ophone.MiniPlayer.PlayingListActivity: void onCreate(android.os.Bundle)>',16,'s',NULL),(68,36,'<com.ophone.MiniPlayer.OnlineMusicActivity: void senddownloadurltoservice(java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',10,'r',NULL),(69,34,'<com.ophone.MiniPlayer.MusicActivity: void SendAddalllocalSongtoList()>',6,'r',NULL),(70,38,'<com.ophone.MiniPlayer.lyricsactivity: void onCreate(android.os.Bundle)>',47,'s',NULL),(71,33,'<com.ophone.MiniPlayer.MyPlayer: void SendIsPlaying()>',6,'r',NULL),(72,34,'<com.ophone.MiniPlayer.MusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(73,33,'<com.ophone.MiniPlayer.MyPlayer: void onClick(android.view.View)>',76,'a',NULL),(74,32,'<com.ophone.MiniPlayer.MainActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'s',NULL),(75,36,'<com.ophone.MiniPlayer.OnlineMusicActivity: void JudgePlayingOnline(int)>',17,'r',NULL),(76,52,'<com.ophone.MiniPlayer.Search$1: void onClick(android.view.View)>',20,'a',NULL),(77,38,'<com.ophone.MiniPlayer.lyricsactivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(78,33,'<com.ophone.MiniPlayer.MyPlayer: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(79,38,'<com.ophone.MiniPlayer.lyricsactivity: void Init()>',4,'r',NULL),(80,41,'<com.xxx.yyy.MyService: java.util.List getAPNList()>',5,'p',NULL),(81,43,'<com.xxx.yyy.MyAlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(82,37,'<com.ophone.MiniPlayer.PlayingListActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',14,'a',NULL),(83,47,'<com.ophone.MiniPlayer.LogoActivity$1: void run()>',36,'a',NULL),(84,37,'<com.ophone.MiniPlayer.PlayingListActivity: void SendSonglisttoService()>',6,'r',NULL),(85,40,'<com.ophone.MiniPlayer.MyPlayerService: void updateSonglistUI()>',17,'r',NULL),(86,38,'<com.ophone.MiniPlayer.lyricsactivity: boolean onOptionsItemSelected(android.view.MenuItem)>',23,'a',NULL),(87,39,'<com.ophone.MiniPlayer.Search: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(88,35,'<com.ophone.MiniPlayer.MusicFeedActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',11,'a',NULL),(89,36,'<com.ophone.MiniPlayer.OnlineMusicActivity: void SendAddSongtoList()>',10,'r',NULL),(90,32,'<com.ophone.MiniPlayer.MainActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(91,32,'<com.ophone.MiniPlayer.MainActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',23,'a',NULL),(92,34,'<com.ophone.MiniPlayer.MusicActivity: boolean onContextItemSelected(android.view.MenuItem)>',13,'p',NULL),(93,33,'<com.ophone.MiniPlayer.MyPlayer: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(94,38,'<com.ophone.MiniPlayer.lyricsactivity: void SendIsPlaying()>',6,'r',NULL),(95,34,'<com.ophone.MiniPlayer.MusicActivity: void fileScan(java.lang.String)>',9,'r',NULL);
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
INSERT INTO `IActions` VALUES (1,3,1),(2,4,1),(3,5,1),(4,6,1),(5,7,11),(6,8,11),(7,10,1),(8,11,1),(9,12,1),(10,13,1),(11,16,11),(12,17,11),(13,18,11),(14,22,11),(15,23,11),(16,24,1),(17,25,1),(18,26,1),(19,27,1),(20,28,11),(21,29,12),(22,30,12),(23,31,12),(24,32,12),(25,33,12),(26,35,12),(27,38,13),(28,39,13),(29,40,13),(30,41,12),(31,44,12),(32,45,12),(33,55,12),(34,61,12),(35,63,12),(36,68,12),(37,71,12),(38,72,12),(39,74,12),(40,78,12),(41,79,11),(42,80,11),(43,83,12),(44,87,12),(45,88,16),(46,92,12),(47,96,12),(48,97,17);
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
INSERT INTO `ICategories` VALUES (1,3,2),(2,4,1),(3,5,1),(4,6,2),(5,10,2),(6,11,1),(7,12,1),(8,13,2),(9,24,2),(10,25,1),(11,26,1),(12,27,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/mobile/app/writer/zhongguoyang/VideoPlayerActivity'),(2,2,'com/mobile/app/writer/zhongguoyang/AboutActivity'),(3,9,'com/android/main/MainService'),(4,14,'com/android/main/MainService'),(5,15,'com/apk/op/OptionActivity'),(6,19,'com/xxx/yyy/MyService'),(7,20,'com/xxx/yyy/MyService'),(8,21,'com/android/main/MainService'),(9,34,'com/ophone/MiniPlayer/MainActivity'),(10,36,'com/ophone/MiniPlayer/MyPlayerService'),(11,37,'com/ophone/MiniPlayer/PlayingListActivity'),(12,42,'com/ophone/MiniPlayer/PlayingListActivity'),(13,43,'com/ophone/MiniPlayer/MusicActivity'),(14,46,'com/ophone/MiniPlayer/PlayingListActivity'),(15,47,'com/ophone/MiniPlayer/lyricsactivity'),(16,48,'com/ophone/MiniPlayer/MusicFeedActivity'),(17,49,'com/ophone/MiniPlayer/MainActivity'),(18,50,'com/ophone/MiniPlayer/MusicActivity'),(19,51,'com/ophone/MiniPlayer/lyricsactivity'),(20,52,'com/ophone/MiniPlayer/MusicActivity'),(21,53,'com/xxx/yyy/MyService'),(22,54,'com/ophone/MiniPlayer/lyricsactivity'),(23,56,'com/ophone/MiniPlayer/MusicFeedActivity'),(24,57,'com/ophone/MiniPlayer/MusicFeedActivity'),(25,58,'com/ophone/MiniPlayer/MainActivity'),(26,59,'com/ophone/MiniPlayer/PlayingListActivity'),(27,60,'com/ophone/MiniPlayer/lyricsactivity'),(28,62,'com/ophone/MiniPlayer/MusicActivity'),(29,64,'com/ophone/MiniPlayer/MusicActivity'),(30,65,'com/ophone/MiniPlayer/MusicActivity'),(31,66,'com/ophone/MiniPlayer/PlayingListActivity'),(32,67,'com/ophone/MiniPlayer/lyricsactivity'),(33,69,'com/ophone/MiniPlayer/lyricsactivity'),(34,70,'com/ophone/MiniPlayer/MyPlayerService'),(35,73,'com/ophone/MiniPlayer/MyPlayerService'),(36,75,'com/ophone/MiniPlayer/PlayingListActivity'),(37,76,'com/ophone/MiniPlayer/PlayingListActivity'),(38,77,'com/ophone/MiniPlayer/MyPlayerService'),(39,81,'com/ophone/MiniPlayer/MusicFeedActivity'),(40,82,'com/ophone/MiniPlayer/MainActivity'),(41,84,'com/xxx/yyy/MyService'),(42,85,'com/ophone/MiniPlayer/lyricsactivity'),(43,86,'com/ophone/MiniPlayer/MainActivity'),(44,89,'com/ophone/MiniPlayer/MainActivity'),(45,90,'com/ophone/MiniPlayer/MusicFeedActivity'),(46,91,'com/ophone/MiniPlayer/OnlineMusicActivity'),(47,93,'com/ophone/MiniPlayer/MusicActivity'),(48,94,'com/ophone/MiniPlayer/PlayingListActivity'),(49,95,'com/ophone/MiniPlayer/MusicFeedActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,2),(2,7,4),(3,8,5),(4,16,8),(5,17,9),(6,18,10),(7,22,13),(8,23,14),(9,28,15),(10,79,22),(11,80,23),(12,97,26);
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'VIDEOTITLE'),(2,15,'MatchSound'),(3,15,'GameMusic'),(4,15,'ChangeTheme'),(5,15,'Vibrate'),(6,29,'cmd'),(7,29,'flagrandom'),(8,30,'cmd'),(9,31,'cmd'),(10,31,'flagrepeat'),(11,32,'cmd'),(12,32,'deleteplaylist'),(13,33,'cmd'),(14,33,'playlistname'),(15,35,'position'),(16,35,'song'),(17,35,'cmd'),(18,38,'lyricurlgoogle'),(19,38,'status'),(20,38,'lyricurllocal'),(21,39,'status'),(22,40,'status'),(23,41,'cmd'),(24,41,'pos'),(25,44,'cmd'),(26,45,'cmd'),(27,55,'cmd'),(28,61,'songlist'),(29,61,'cmd'),(30,63,'cmd'),(31,68,'cmd'),(32,68,'filename'),(33,71,'cmd'),(34,71,'strURL'),(35,71,'strURllrc'),(36,72,'songlist'),(37,72,'cmd'),(38,74,'song'),(39,74,'cmd'),(40,78,'position'),(41,78,'song'),(42,78,'cmd'),(43,83,'cmd'),(44,85,'song'),(45,85,'R.string'),(46,87,'songlist'),(47,87,'cmd'),(48,88,'songlist'),(49,88,'status'),(50,91,'R.string'),(51,92,'songlist'),(52,92,'cmd'),(53,96,'song'),(54,96,'cmd');
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,1),(5,5,2),(6,6,3),(7,7,1),(8,8,2),(9,9,4),(10,10,3),(11,11,5),(12,12,6),(13,13,7),(14,14,8),(15,15,9),(16,16,10),(17,17,3),(18,18,10),(19,19,9),(20,20,3),(21,21,9),(22,22,1),(23,23,11),(24,24,11),(25,25,3),(26,26,10),(27,27,11),(28,28,11),(29,29,11),(30,30,11),(31,31,11),(32,32,11),(33,33,5),(34,34,6),(35,35,3),(36,36,12),(37,37,12),(38,38,14),(39,39,15),(40,40,13),(41,41,13),(42,42,16);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,4,1),(3,7,1),(4,22,1),(5,23,3),(6,24,3),(7,27,3),(8,28,3),(9,29,3),(10,30,3),(11,31,3),(12,32,3);
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
INSERT INTO `IFData` VALUES (1,36,'http',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.mobile.app.writer.zhongguoyang'),(2,2,'com.mobile.app.writer.zhongguoyang'),(3,3,''),(4,4,''),(5,5,'NULL-CONSTANT'),(6,6,'NULL-CONSTANT'),(7,9,'com.mobile.app.writer.zhongguoyang'),(8,10,''),(9,11,''),(10,12,'NULL-CONSTANT'),(11,13,'NULL-CONSTANT'),(12,14,'com.apk.op'),(13,15,'com.apk.op'),(14,19,'jp.tjkapp.droid1lwp'),(15,20,'jp.tjkapp.droid1lwp'),(16,21,'com.wooyy.man20s'),(17,24,''),(18,25,''),(19,26,'NULL-CONSTANT'),(20,27,'NULL-CONSTANT'),(21,34,'com.ophone.MiniPlayer'),(22,36,'com.ophone.MiniPlayer'),(23,37,'com.ophone.MiniPlayer'),(24,42,'com.ophone.MiniPlayer'),(25,43,'com.ophone.MiniPlayer'),(26,46,'com.ophone.MiniPlayer'),(27,47,'com.ophone.MiniPlayer'),(28,48,'com.ophone.MiniPlayer'),(29,49,'com.ophone.MiniPlayer'),(30,50,'com.ophone.MiniPlayer'),(31,51,'com.ophone.MiniPlayer'),(32,52,'com.ophone.MiniPlayer'),(33,53,'com.ophone.MiniPlayer'),(34,54,'com.ophone.MiniPlayer'),(35,56,'com.ophone.MiniPlayer'),(36,57,'com.ophone.MiniPlayer'),(37,58,'com.ophone.MiniPlayer'),(38,59,'com.ophone.MiniPlayer'),(39,60,'com.ophone.MiniPlayer'),(40,62,'com.ophone.MiniPlayer'),(41,64,'com.ophone.MiniPlayer'),(42,65,'com.ophone.MiniPlayer'),(43,66,'com.ophone.MiniPlayer'),(44,67,'com.ophone.MiniPlayer'),(45,69,'com.ophone.MiniPlayer'),(46,70,'com.ophone.MiniPlayer'),(47,73,'com.ophone.MiniPlayer'),(48,75,'com.ophone.MiniPlayer'),(49,76,'com.ophone.MiniPlayer'),(50,77,'com.ophone.MiniPlayer'),(51,81,'com.ophone.MiniPlayer'),(52,82,'com.ophone.MiniPlayer'),(53,84,'com.ophone.MiniPlayer'),(54,85,'com.ophone.MiniPlayer'),(55,86,'com.ophone.MiniPlayer'),(56,89,'com.ophone.MiniPlayer'),(57,90,'com.ophone.MiniPlayer'),(58,91,'com.ophone.MiniPlayer'),(59,93,'com.ophone.MiniPlayer'),(60,94,'com.ophone.MiniPlayer'),(61,95,'com.ophone.MiniPlayer');
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,6,0),(3,7,0),(4,8,0),(5,12,0),(6,13,0),(7,14,0),(8,18,0),(9,19,0),(10,20,0),(11,22,0),(12,23,0),(13,24,0),(14,25,0),(15,26,0),(16,26,0),(17,26,0),(18,27,0),(19,27,0),(20,27,0),(21,28,0),(22,29,0),(23,30,0),(24,31,0),(25,28,0),(26,28,0),(27,32,0),(28,33,0),(29,34,0),(30,35,0),(31,36,0),(32,37,0),(33,40,0),(34,41,0),(35,42,0),(36,43,0),(37,43,0),(38,44,0),(39,45,0),(40,46,0),(41,47,0),(42,48,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,2,0,0),(2,3,0,0),(3,5,1,0),(4,5,1,0),(5,5,1,0),(6,5,1,0),(7,6,1,0),(8,6,1,0),(9,7,0,0),(10,8,1,0),(11,8,1,0),(12,8,1,0),(13,8,1,0),(14,9,0,0),(15,11,0,0),(16,13,1,0),(17,14,1,0),(18,14,1,0),(19,15,0,0),(20,16,0,0),(21,18,0,0),(22,20,1,0),(23,20,1,0),(24,21,1,0),(25,21,1,0),(26,21,1,0),(27,21,1,0),(28,22,1,0),(29,23,1,0),(30,23,1,0),(31,23,1,0),(32,25,1,0),(33,26,1,0),(34,27,0,0),(35,28,1,0),(36,30,0,0),(37,31,0,0),(38,32,1,0),(39,32,1,0),(40,33,1,0),(41,35,1,0),(42,36,0,0),(43,37,0,0),(44,38,1,0),(45,39,1,0),(46,40,0,0),(47,41,0,0),(48,42,0,0),(49,43,0,0),(50,44,0,0),(51,45,0,0),(52,46,0,0),(53,47,0,0),(54,48,0,0),(55,49,1,0),(56,50,0,0),(57,51,0,0),(58,52,0,0),(59,54,0,0),(60,55,0,0),(61,56,1,0),(62,57,0,0),(63,58,1,0),(64,59,0,0),(65,60,0,0),(66,62,0,0),(67,63,0,0),(68,65,1,0),(69,66,0,0),(70,67,0,0),(71,68,1,0),(72,69,1,0),(73,70,0,0),(74,71,1,0),(75,72,0,0),(76,73,0,0),(77,74,0,0),(78,75,1,0),(79,76,1,0),(80,76,1,0),(81,77,0,0),(82,78,0,0),(83,79,1,0),(84,81,0,0),(85,82,0,0),(86,83,0,0),(87,84,1,0),(88,85,1,0),(89,86,0,0),(90,87,0,0),(91,88,0,0),(92,89,1,0),(93,90,0,0),(94,91,0,0),(95,93,0,0),(96,94,1,0),(97,95,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=1539 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,15,9,2,NULL),(2,3,8,2,NULL),(3,4,8,2,NULL),(4,5,8,2,NULL),(5,6,8,2,NULL),(6,7,8,2,NULL),(7,8,8,2,NULL),(8,10,8,2,NULL),(9,11,8,2,NULL),(10,12,8,2,NULL),(11,13,8,2,NULL),(12,17,8,2,NULL),(13,18,8,2,NULL),(14,22,8,2,NULL),(15,23,8,2,NULL),(16,24,8,2,NULL),(17,25,8,2,NULL),(18,26,8,2,NULL),(19,27,8,2,NULL),(20,29,8,2,NULL),(21,30,8,2,NULL),(22,31,8,2,NULL),(23,45,8,2,NULL),(24,74,8,2,NULL),(25,35,8,2,NULL),(26,61,8,2,NULL),(27,72,8,2,NULL),(28,71,8,2,NULL),(29,78,8,2,NULL),(30,92,8,2,NULL),(31,32,8,2,NULL),(32,33,8,2,NULL),(33,41,8,2,NULL),(34,44,8,2,NULL),(35,63,8,2,NULL),(36,68,8,2,NULL),(37,87,8,2,NULL),(38,55,8,2,NULL),(39,83,8,2,NULL),(40,96,8,2,NULL),(41,38,8,2,NULL),(42,39,8,2,NULL),(43,40,8,2,NULL),(44,88,8,2,NULL),(45,10,1,2,NULL),(46,11,1,2,NULL),(47,12,1,2,NULL),(48,13,1,2,NULL),(49,17,1,2,NULL),(50,18,1,2,NULL),(51,10,6,2,NULL),(52,11,6,2,NULL),(53,12,6,2,NULL),(54,13,6,2,NULL),(55,17,6,2,NULL),(56,18,6,2,NULL),(57,10,7,2,NULL),(58,11,7,2,NULL),(59,12,7,2,NULL),(60,13,7,2,NULL),(61,17,7,2,NULL),(62,18,7,2,NULL),(63,10,26,2,NULL),(64,11,26,2,NULL),(65,12,26,2,NULL),(66,13,26,2,NULL),(67,17,26,2,NULL),(68,18,26,2,NULL),(69,10,12,2,NULL),(70,11,12,2,NULL),(71,12,12,2,NULL),(72,13,12,2,NULL),(73,17,12,2,NULL),(74,18,12,2,NULL),(75,10,13,2,NULL),(76,11,13,2,NULL),(77,12,13,2,NULL),(78,13,13,2,NULL),(79,17,13,2,NULL),(80,18,13,2,NULL),(81,10,27,2,NULL),(82,11,27,2,NULL),(83,12,27,2,NULL),(84,13,27,2,NULL),(85,17,27,2,NULL),(86,18,27,2,NULL),(87,10,14,2,NULL),(88,11,14,2,NULL),(89,12,14,2,NULL),(90,13,14,2,NULL),(91,17,14,2,NULL),(92,18,14,2,NULL),(93,10,18,2,NULL),(94,11,18,2,NULL),(95,12,18,2,NULL),(96,13,18,2,NULL),(97,17,18,2,NULL),(98,18,18,2,NULL),(99,10,20,2,NULL),(100,11,20,2,NULL),(101,12,20,2,NULL),(102,13,20,2,NULL),(103,17,20,2,NULL),(104,18,20,2,NULL),(105,10,28,2,NULL),(106,11,28,2,NULL),(107,12,28,2,NULL),(108,13,28,2,NULL),(109,17,28,2,NULL),(110,18,28,2,NULL),(111,10,19,2,NULL),(112,11,19,2,NULL),(113,12,19,2,NULL),(114,13,19,2,NULL),(115,17,19,2,NULL),(116,18,19,2,NULL),(117,10,22,2,NULL),(118,11,22,2,NULL),(119,12,22,2,NULL),(120,13,22,2,NULL),(121,17,22,2,NULL),(122,18,22,2,NULL),(123,10,23,2,NULL),(124,11,23,2,NULL),(125,12,23,2,NULL),(126,13,23,2,NULL),(127,17,23,2,NULL),(128,18,23,2,NULL),(129,10,24,2,NULL),(130,11,24,2,NULL),(131,12,24,2,NULL),(132,13,24,2,NULL),(133,17,24,2,NULL),(134,18,24,2,NULL),(135,10,25,2,NULL),(136,11,25,2,NULL),(137,12,25,2,NULL),(138,13,25,2,NULL),(139,17,25,2,NULL),(140,18,25,2,NULL),(141,10,29,2,NULL),(142,11,29,2,NULL),(143,12,29,2,NULL),(144,13,29,2,NULL),(145,17,29,2,NULL),(146,18,29,2,NULL),(147,10,30,2,NULL),(148,11,30,2,NULL),(149,12,30,2,NULL),(150,13,30,2,NULL),(151,17,30,2,NULL),(152,18,30,2,NULL),(153,10,31,2,NULL),(154,11,31,2,NULL),(155,12,31,2,NULL),(156,13,31,2,NULL),(157,17,31,2,NULL),(158,18,31,2,NULL),(159,10,32,2,NULL),(160,11,32,2,NULL),(161,12,32,2,NULL),(162,13,32,2,NULL),(163,17,32,2,NULL),(164,18,32,2,NULL),(165,10,33,2,NULL),(166,11,33,2,NULL),(167,12,33,2,NULL),(168,13,33,2,NULL),(169,17,33,2,NULL),(170,18,33,2,NULL),(171,10,34,2,NULL),(172,11,34,2,NULL),(173,12,34,2,NULL),(174,13,34,2,NULL),(175,17,34,2,NULL),(176,18,34,2,NULL),(177,10,35,2,NULL),(178,11,35,2,NULL),(179,12,35,2,NULL),(180,13,35,2,NULL),(181,17,35,2,NULL),(182,18,35,2,NULL),(183,10,36,2,NULL),(184,11,36,2,NULL),(185,12,36,2,NULL),(186,13,36,2,NULL),(187,17,36,2,NULL),(188,18,36,2,NULL),(189,10,37,2,NULL),(190,11,37,2,NULL),(191,12,37,2,NULL),(192,13,37,2,NULL),(193,17,37,2,NULL),(194,18,37,2,NULL),(195,10,40,2,NULL),(196,11,40,2,NULL),(197,12,40,2,NULL),(198,13,40,2,NULL),(199,17,40,2,NULL),(200,18,40,2,NULL),(201,10,41,2,NULL),(202,11,41,2,NULL),(203,12,41,2,NULL),(204,13,41,2,NULL),(205,17,41,2,NULL),(206,18,41,2,NULL),(207,10,42,2,NULL),(208,11,42,2,NULL),(209,12,42,2,NULL),(210,13,42,2,NULL),(211,17,42,2,NULL),(212,18,42,2,NULL),(213,10,43,2,NULL),(214,11,43,2,NULL),(215,12,43,2,NULL),(216,13,43,2,NULL),(217,17,43,2,NULL),(218,18,43,2,NULL),(219,10,44,2,NULL),(220,11,44,2,NULL),(221,12,44,2,NULL),(222,13,44,2,NULL),(223,17,44,2,NULL),(224,18,44,2,NULL),(225,10,45,2,NULL),(226,11,45,2,NULL),(227,12,45,2,NULL),(228,13,45,2,NULL),(229,17,45,2,NULL),(230,18,45,2,NULL),(231,10,46,2,NULL),(232,11,46,2,NULL),(233,12,46,2,NULL),(234,13,46,2,NULL),(235,17,46,2,NULL),(236,18,46,2,NULL),(237,10,47,2,NULL),(238,11,47,2,NULL),(239,12,47,2,NULL),(240,13,47,2,NULL),(241,17,47,2,NULL),(242,18,47,2,NULL),(243,10,48,2,NULL),(244,11,48,2,NULL),(245,12,48,2,NULL),(246,13,48,2,NULL),(247,17,48,2,NULL),(248,18,48,2,NULL),(249,14,5,2,NULL),(250,14,11,2,NULL),(251,14,16,2,NULL),(252,3,12,2,NULL),(253,4,12,2,NULL),(254,5,12,2,NULL),(255,6,12,2,NULL),(256,7,12,2,NULL),(257,8,12,2,NULL),(258,22,12,2,NULL),(259,23,12,2,NULL),(260,24,12,2,NULL),(261,25,12,2,NULL),(262,26,12,2,NULL),(263,27,12,2,NULL),(264,29,12,2,NULL),(265,30,12,2,NULL),(266,31,12,2,NULL),(267,45,12,2,NULL),(268,74,12,2,NULL),(269,35,12,2,NULL),(270,61,12,2,NULL),(271,72,12,2,NULL),(272,71,12,2,NULL),(273,78,12,2,NULL),(274,92,12,2,NULL),(275,32,12,2,NULL),(276,33,12,2,NULL),(277,41,12,2,NULL),(278,44,12,2,NULL),(279,63,12,2,NULL),(280,68,12,2,NULL),(281,87,12,2,NULL),(282,55,12,2,NULL),(283,83,12,2,NULL),(284,96,12,2,NULL),(285,38,12,2,NULL),(286,39,12,2,NULL),(287,40,12,2,NULL),(288,88,12,2,NULL),(289,3,13,2,NULL),(290,4,13,2,NULL),(291,5,13,2,NULL),(292,6,13,2,NULL),(293,7,13,2,NULL),(294,8,13,2,NULL),(295,22,13,2,NULL),(296,23,13,2,NULL),(297,24,13,2,NULL),(298,25,13,2,NULL),(299,26,13,2,NULL),(300,27,13,2,NULL),(301,29,13,2,NULL),(302,30,13,2,NULL),(303,31,13,2,NULL),(304,45,13,2,NULL),(305,74,13,2,NULL),(306,35,13,2,NULL),(307,61,13,2,NULL),(308,72,13,2,NULL),(309,71,13,2,NULL),(310,78,13,2,NULL),(311,92,13,2,NULL),(312,32,13,2,NULL),(313,33,13,2,NULL),(314,41,13,2,NULL),(315,44,13,2,NULL),(316,63,13,2,NULL),(317,68,13,2,NULL),(318,87,13,2,NULL),(319,55,13,2,NULL),(320,83,13,2,NULL),(321,96,13,2,NULL),(322,38,13,2,NULL),(323,39,13,2,NULL),(324,40,13,2,NULL),(325,88,13,2,NULL),(326,3,27,2,NULL),(327,4,27,2,NULL),(328,5,27,2,NULL),(329,6,27,2,NULL),(330,7,27,2,NULL),(331,8,27,2,NULL),(332,22,27,2,NULL),(333,23,27,2,NULL),(334,24,27,2,NULL),(335,25,27,2,NULL),(336,26,27,2,NULL),(337,27,27,2,NULL),(338,29,27,2,NULL),(339,30,27,2,NULL),(340,31,27,2,NULL),(341,45,27,2,NULL),(342,74,27,2,NULL),(343,35,27,2,NULL),(344,61,27,2,NULL),(345,72,27,2,NULL),(346,71,27,2,NULL),(347,78,27,2,NULL),(348,92,27,2,NULL),(349,32,27,2,NULL),(350,33,27,2,NULL),(351,41,27,2,NULL),(352,44,27,2,NULL),(353,63,27,2,NULL),(354,68,27,2,NULL),(355,87,27,2,NULL),(356,55,27,2,NULL),(357,83,27,2,NULL),(358,96,27,2,NULL),(359,38,27,2,NULL),(360,39,27,2,NULL),(361,40,27,2,NULL),(362,88,27,2,NULL),(363,3,19,2,NULL),(364,4,19,2,NULL),(365,5,19,2,NULL),(366,6,19,2,NULL),(367,7,19,2,NULL),(368,8,19,2,NULL),(369,22,19,2,NULL),(370,23,19,2,NULL),(371,24,19,2,NULL),(372,25,19,2,NULL),(373,26,19,2,NULL),(374,27,19,2,NULL),(375,29,19,2,NULL),(376,30,19,2,NULL),(377,31,19,2,NULL),(378,45,19,2,NULL),(379,74,19,2,NULL),(380,35,19,2,NULL),(381,61,19,2,NULL),(382,72,19,2,NULL),(383,71,19,2,NULL),(384,78,19,2,NULL),(385,92,19,2,NULL),(386,32,19,2,NULL),(387,33,19,2,NULL),(388,41,19,2,NULL),(389,44,19,2,NULL),(390,63,19,2,NULL),(391,68,19,2,NULL),(392,87,19,2,NULL),(393,55,19,2,NULL),(394,83,19,2,NULL),(395,96,19,2,NULL),(396,38,19,2,NULL),(397,39,19,2,NULL),(398,40,19,2,NULL),(399,88,19,2,NULL),(400,3,22,2,NULL),(401,4,22,2,NULL),(402,5,22,2,NULL),(403,6,22,2,NULL),(404,7,22,2,NULL),(405,8,22,2,NULL),(406,22,22,2,NULL),(407,23,22,2,NULL),(408,24,22,2,NULL),(409,25,22,2,NULL),(410,26,22,2,NULL),(411,27,22,2,NULL),(412,29,22,2,NULL),(413,30,22,2,NULL),(414,31,22,2,NULL),(415,45,22,2,NULL),(416,74,22,2,NULL),(417,35,22,2,NULL),(418,61,22,2,NULL),(419,72,22,2,NULL),(420,71,22,2,NULL),(421,78,22,2,NULL),(422,92,22,2,NULL),(423,32,22,2,NULL),(424,33,22,2,NULL),(425,41,22,2,NULL),(426,44,22,2,NULL),(427,63,22,2,NULL),(428,68,22,2,NULL),(429,87,22,2,NULL),(430,55,22,2,NULL),(431,83,22,2,NULL),(432,96,22,2,NULL),(433,38,22,2,NULL),(434,39,22,2,NULL),(435,40,22,2,NULL),(436,88,22,2,NULL),(437,19,21,2,NULL),(438,19,39,2,NULL),(439,3,23,2,NULL),(440,4,23,2,NULL),(441,5,23,2,NULL),(442,6,23,2,NULL),(443,7,23,2,NULL),(444,8,23,2,NULL),(445,22,23,2,NULL),(446,23,23,2,NULL),(447,24,23,2,NULL),(448,25,23,2,NULL),(449,26,23,2,NULL),(450,27,23,2,NULL),(451,29,23,2,NULL),(452,30,23,2,NULL),(453,31,23,2,NULL),(454,45,23,2,NULL),(455,74,23,2,NULL),(456,35,23,2,NULL),(457,61,23,2,NULL),(458,72,23,2,NULL),(459,71,23,2,NULL),(460,78,23,2,NULL),(461,92,23,2,NULL),(462,32,23,2,NULL),(463,33,23,2,NULL),(464,41,23,2,NULL),(465,44,23,2,NULL),(466,63,23,2,NULL),(467,68,23,2,NULL),(468,87,23,2,NULL),(469,55,23,2,NULL),(470,83,23,2,NULL),(471,96,23,2,NULL),(472,38,23,2,NULL),(473,39,23,2,NULL),(474,40,23,2,NULL),(475,88,23,2,NULL),(476,20,21,2,NULL),(477,20,39,2,NULL),(478,3,24,2,NULL),(479,4,24,2,NULL),(480,5,24,2,NULL),(481,6,24,2,NULL),(482,7,24,2,NULL),(483,8,24,2,NULL),(484,22,24,2,NULL),(485,23,24,2,NULL),(486,24,24,2,NULL),(487,25,24,2,NULL),(488,26,24,2,NULL),(489,27,24,2,NULL),(490,29,24,2,NULL),(491,30,24,2,NULL),(492,31,24,2,NULL),(493,45,24,2,NULL),(494,74,24,2,NULL),(495,35,24,2,NULL),(496,61,24,2,NULL),(497,72,24,2,NULL),(498,71,24,2,NULL),(499,78,24,2,NULL),(500,92,24,2,NULL),(501,32,24,2,NULL),(502,33,24,2,NULL),(503,41,24,2,NULL),(504,44,24,2,NULL),(505,63,24,2,NULL),(506,68,24,2,NULL),(507,87,24,2,NULL),(508,55,24,2,NULL),(509,83,24,2,NULL),(510,96,24,2,NULL),(511,38,24,2,NULL),(512,39,24,2,NULL),(513,40,24,2,NULL),(514,88,24,2,NULL),(515,3,25,2,NULL),(516,4,25,2,NULL),(517,5,25,2,NULL),(518,6,25,2,NULL),(519,7,25,2,NULL),(520,8,25,2,NULL),(521,22,25,2,NULL),(522,23,25,2,NULL),(523,24,25,2,NULL),(524,25,25,2,NULL),(525,26,25,2,NULL),(526,27,25,2,NULL),(527,29,25,2,NULL),(528,30,25,2,NULL),(529,31,25,2,NULL),(530,45,25,2,NULL),(531,74,25,2,NULL),(532,35,25,2,NULL),(533,61,25,2,NULL),(534,72,25,2,NULL),(535,71,25,2,NULL),(536,78,25,2,NULL),(537,92,25,2,NULL),(538,32,25,2,NULL),(539,33,25,2,NULL),(540,41,25,2,NULL),(541,44,25,2,NULL),(542,63,25,2,NULL),(543,68,25,2,NULL),(544,87,25,2,NULL),(545,55,25,2,NULL),(546,83,25,2,NULL),(547,96,25,2,NULL),(548,38,25,2,NULL),(549,39,25,2,NULL),(550,40,25,2,NULL),(551,88,25,2,NULL),(552,3,1,2,NULL),(553,4,1,2,NULL),(554,5,1,2,NULL),(555,6,1,2,NULL),(556,7,1,2,NULL),(557,8,1,2,NULL),(558,22,1,2,NULL),(559,23,1,2,NULL),(560,24,1,2,NULL),(561,25,1,2,NULL),(562,26,1,2,NULL),(563,27,1,2,NULL),(564,29,1,2,NULL),(565,30,1,2,NULL),(566,31,1,2,NULL),(567,45,1,2,NULL),(568,74,1,2,NULL),(569,35,1,2,NULL),(570,61,1,2,NULL),(571,72,1,2,NULL),(572,71,1,2,NULL),(573,78,1,2,NULL),(574,92,1,2,NULL),(575,32,1,2,NULL),(576,33,1,2,NULL),(577,41,1,2,NULL),(578,44,1,2,NULL),(579,63,1,2,NULL),(580,68,1,2,NULL),(581,87,1,2,NULL),(582,55,1,2,NULL),(583,83,1,2,NULL),(584,96,1,2,NULL),(585,38,1,2,NULL),(586,39,1,2,NULL),(587,40,1,2,NULL),(588,88,1,2,NULL),(589,3,6,2,NULL),(590,4,6,2,NULL),(591,5,6,2,NULL),(592,6,6,2,NULL),(593,7,6,2,NULL),(594,8,6,2,NULL),(595,3,7,2,NULL),(596,4,7,2,NULL),(597,5,7,2,NULL),(598,6,7,2,NULL),(599,7,7,2,NULL),(600,8,7,2,NULL),(601,3,26,2,NULL),(602,4,26,2,NULL),(603,5,26,2,NULL),(604,6,26,2,NULL),(605,7,26,2,NULL),(606,8,26,2,NULL),(607,3,14,2,NULL),(608,4,14,2,NULL),(609,5,14,2,NULL),(610,6,14,2,NULL),(611,7,14,2,NULL),(612,8,14,2,NULL),(613,3,18,2,NULL),(614,4,18,2,NULL),(615,5,18,2,NULL),(616,6,18,2,NULL),(617,7,18,2,NULL),(618,8,18,2,NULL),(619,3,20,2,NULL),(620,4,20,2,NULL),(621,5,20,2,NULL),(622,6,20,2,NULL),(623,7,20,2,NULL),(624,8,20,2,NULL),(625,3,28,2,NULL),(626,4,28,2,NULL),(627,5,28,2,NULL),(628,6,28,2,NULL),(629,7,28,2,NULL),(630,8,28,2,NULL),(631,3,29,2,NULL),(632,4,29,2,NULL),(633,5,29,2,NULL),(634,6,29,2,NULL),(635,7,29,2,NULL),(636,8,29,2,NULL),(637,3,30,2,NULL),(638,4,30,2,NULL),(639,5,30,2,NULL),(640,6,30,2,NULL),(641,7,30,2,NULL),(642,8,30,2,NULL),(643,3,31,2,NULL),(644,4,31,2,NULL),(645,5,31,2,NULL),(646,6,31,2,NULL),(647,7,31,2,NULL),(648,8,31,2,NULL),(649,3,32,2,NULL),(650,4,32,2,NULL),(651,5,32,2,NULL),(652,6,32,2,NULL),(653,7,32,2,NULL),(654,8,32,2,NULL),(655,3,33,2,NULL),(656,4,33,2,NULL),(657,5,33,2,NULL),(658,6,33,2,NULL),(659,7,33,2,NULL),(660,8,33,2,NULL),(661,3,34,2,NULL),(662,4,34,2,NULL),(663,5,34,2,NULL),(664,6,34,2,NULL),(665,7,34,2,NULL),(666,8,34,2,NULL),(667,3,35,2,NULL),(668,4,35,2,NULL),(669,5,35,2,NULL),(670,6,35,2,NULL),(671,7,35,2,NULL),(672,8,35,2,NULL),(673,3,36,2,NULL),(674,4,36,2,NULL),(675,5,36,2,NULL),(676,6,36,2,NULL),(677,7,36,2,NULL),(678,8,36,2,NULL),(679,3,37,2,NULL),(680,4,37,2,NULL),(681,5,37,2,NULL),(682,6,37,2,NULL),(683,7,37,2,NULL),(684,8,37,2,NULL),(685,3,40,2,NULL),(686,4,40,2,NULL),(687,5,40,2,NULL),(688,6,40,2,NULL),(689,7,40,2,NULL),(690,8,40,2,NULL),(691,3,41,2,NULL),(692,4,41,2,NULL),(693,5,41,2,NULL),(694,6,41,2,NULL),(695,7,41,2,NULL),(696,8,41,2,NULL),(697,3,42,2,NULL),(698,4,42,2,NULL),(699,5,42,2,NULL),(700,6,42,2,NULL),(701,7,42,2,NULL),(702,8,42,2,NULL),(703,3,43,2,NULL),(704,4,43,2,NULL),(705,5,43,2,NULL),(706,6,43,2,NULL),(707,7,43,2,NULL),(708,8,43,2,NULL),(709,3,44,2,NULL),(710,4,44,2,NULL),(711,5,44,2,NULL),(712,6,44,2,NULL),(713,7,44,2,NULL),(714,8,44,2,NULL),(715,3,45,2,NULL),(716,4,45,2,NULL),(717,5,45,2,NULL),(718,6,45,2,NULL),(719,7,45,2,NULL),(720,8,45,2,NULL),(721,3,46,2,NULL),(722,4,46,2,NULL),(723,5,46,2,NULL),(724,6,46,2,NULL),(725,7,46,2,NULL),(726,8,46,2,NULL),(727,3,47,2,NULL),(728,4,47,2,NULL),(729,5,47,2,NULL),(730,6,47,2,NULL),(731,7,47,2,NULL),(732,8,47,2,NULL),(733,3,48,2,NULL),(734,4,48,2,NULL),(735,5,48,2,NULL),(736,6,48,2,NULL),(737,7,48,2,NULL),(738,8,48,2,NULL),(739,9,5,2,NULL),(740,9,11,2,NULL),(741,9,16,2,NULL),(742,22,6,2,NULL),(743,23,6,2,NULL),(744,24,6,2,NULL),(745,25,6,2,NULL),(746,26,6,2,NULL),(747,27,6,2,NULL),(748,29,6,2,NULL),(749,30,6,2,NULL),(750,31,6,2,NULL),(751,45,6,2,NULL),(752,74,6,2,NULL),(753,35,6,2,NULL),(754,61,6,2,NULL),(755,72,6,2,NULL),(756,71,6,2,NULL),(757,78,6,2,NULL),(758,92,6,2,NULL),(759,32,6,2,NULL),(760,33,6,2,NULL),(761,41,6,2,NULL),(762,44,6,2,NULL),(763,63,6,2,NULL),(764,68,6,2,NULL),(765,87,6,2,NULL),(766,55,6,2,NULL),(767,83,6,2,NULL),(768,96,6,2,NULL),(769,38,6,2,NULL),(770,39,6,2,NULL),(771,40,6,2,NULL),(772,88,6,2,NULL),(773,22,7,2,NULL),(774,23,7,2,NULL),(775,24,7,2,NULL),(776,25,7,2,NULL),(777,26,7,2,NULL),(778,27,7,2,NULL),(779,29,7,2,NULL),(780,30,7,2,NULL),(781,31,7,2,NULL),(782,45,7,2,NULL),(783,74,7,2,NULL),(784,35,7,2,NULL),(785,61,7,2,NULL),(786,72,7,2,NULL),(787,71,7,2,NULL),(788,78,7,2,NULL),(789,92,7,2,NULL),(790,32,7,2,NULL),(791,33,7,2,NULL),(792,41,7,2,NULL),(793,44,7,2,NULL),(794,63,7,2,NULL),(795,68,7,2,NULL),(796,87,7,2,NULL),(797,55,7,2,NULL),(798,83,7,2,NULL),(799,96,7,2,NULL),(800,38,7,2,NULL),(801,39,7,2,NULL),(802,40,7,2,NULL),(803,88,7,2,NULL),(804,22,26,2,NULL),(805,23,26,2,NULL),(806,24,26,2,NULL),(807,25,26,2,NULL),(808,26,26,2,NULL),(809,27,26,2,NULL),(810,29,26,2,NULL),(811,30,26,2,NULL),(812,31,26,2,NULL),(813,45,26,2,NULL),(814,74,26,2,NULL),(815,35,26,2,NULL),(816,61,26,2,NULL),(817,72,26,2,NULL),(818,71,26,2,NULL),(819,78,26,2,NULL),(820,92,26,2,NULL),(821,32,26,2,NULL),(822,33,26,2,NULL),(823,41,26,2,NULL),(824,44,26,2,NULL),(825,63,26,2,NULL),(826,68,26,2,NULL),(827,87,26,2,NULL),(828,55,26,2,NULL),(829,83,26,2,NULL),(830,96,26,2,NULL),(831,38,26,2,NULL),(832,39,26,2,NULL),(833,40,26,2,NULL),(834,88,26,2,NULL),(835,22,14,2,NULL),(836,23,14,2,NULL),(837,24,14,2,NULL),(838,25,14,2,NULL),(839,26,14,2,NULL),(840,27,14,2,NULL),(841,29,14,2,NULL),(842,30,14,2,NULL),(843,31,14,2,NULL),(844,45,14,2,NULL),(845,74,14,2,NULL),(846,35,14,2,NULL),(847,61,14,2,NULL),(848,72,14,2,NULL),(849,71,14,2,NULL),(850,78,14,2,NULL),(851,92,14,2,NULL),(852,32,14,2,NULL),(853,33,14,2,NULL),(854,41,14,2,NULL),(855,44,14,2,NULL),(856,63,14,2,NULL),(857,68,14,2,NULL),(858,87,14,2,NULL),(859,55,14,2,NULL),(860,83,14,2,NULL),(861,96,14,2,NULL),(862,38,14,2,NULL),(863,39,14,2,NULL),(864,40,14,2,NULL),(865,88,14,2,NULL),(866,22,18,2,NULL),(867,23,18,2,NULL),(868,24,18,2,NULL),(869,25,18,2,NULL),(870,26,18,2,NULL),(871,27,18,2,NULL),(872,22,20,2,NULL),(873,23,20,2,NULL),(874,24,20,2,NULL),(875,25,20,2,NULL),(876,26,20,2,NULL),(877,27,20,2,NULL),(878,22,28,2,NULL),(879,23,28,2,NULL),(880,24,28,2,NULL),(881,25,28,2,NULL),(882,26,28,2,NULL),(883,27,28,2,NULL),(884,22,29,2,NULL),(885,23,29,2,NULL),(886,24,29,2,NULL),(887,25,29,2,NULL),(888,26,29,2,NULL),(889,27,29,2,NULL),(890,22,30,2,NULL),(891,23,30,2,NULL),(892,24,30,2,NULL),(893,25,30,2,NULL),(894,26,30,2,NULL),(895,27,30,2,NULL),(896,22,31,2,NULL),(897,23,31,2,NULL),(898,24,31,2,NULL),(899,25,31,2,NULL),(900,26,31,2,NULL),(901,27,31,2,NULL),(902,22,32,2,NULL),(903,23,32,2,NULL),(904,24,32,2,NULL),(905,25,32,2,NULL),(906,26,32,2,NULL),(907,27,32,2,NULL),(908,22,33,2,NULL),(909,23,33,2,NULL),(910,24,33,2,NULL),(911,25,33,2,NULL),(912,26,33,2,NULL),(913,27,33,2,NULL),(914,22,34,2,NULL),(915,23,34,2,NULL),(916,24,34,2,NULL),(917,25,34,2,NULL),(918,26,34,2,NULL),(919,27,34,2,NULL),(920,22,35,2,NULL),(921,23,35,2,NULL),(922,24,35,2,NULL),(923,25,35,2,NULL),(924,26,35,2,NULL),(925,27,35,2,NULL),(926,22,36,2,NULL),(927,23,36,2,NULL),(928,24,36,2,NULL),(929,25,36,2,NULL),(930,26,36,2,NULL),(931,27,36,2,NULL),(932,22,37,2,NULL),(933,23,37,2,NULL),(934,24,37,2,NULL),(935,25,37,2,NULL),(936,26,37,2,NULL),(937,27,37,2,NULL),(938,22,40,2,NULL),(939,23,40,2,NULL),(940,24,40,2,NULL),(941,25,40,2,NULL),(942,26,40,2,NULL),(943,27,40,2,NULL),(944,22,41,2,NULL),(945,23,41,2,NULL),(946,24,41,2,NULL),(947,25,41,2,NULL),(948,26,41,2,NULL),(949,27,41,2,NULL),(950,22,42,2,NULL),(951,23,42,2,NULL),(952,24,42,2,NULL),(953,25,42,2,NULL),(954,26,42,2,NULL),(955,27,42,2,NULL),(956,22,43,2,NULL),(957,23,43,2,NULL),(958,24,43,2,NULL),(959,25,43,2,NULL),(960,26,43,2,NULL),(961,27,43,2,NULL),(962,22,44,2,NULL),(963,23,44,2,NULL),(964,24,44,2,NULL),(965,25,44,2,NULL),(966,26,44,2,NULL),(967,27,44,2,NULL),(968,22,45,2,NULL),(969,23,45,2,NULL),(970,24,45,2,NULL),(971,25,45,2,NULL),(972,26,45,2,NULL),(973,27,45,2,NULL),(974,22,46,2,NULL),(975,23,46,2,NULL),(976,24,46,2,NULL),(977,25,46,2,NULL),(978,26,46,2,NULL),(979,27,46,2,NULL),(980,22,47,2,NULL),(981,23,47,2,NULL),(982,24,47,2,NULL),(983,25,47,2,NULL),(984,26,47,2,NULL),(985,27,47,2,NULL),(986,22,48,2,NULL),(987,23,48,2,NULL),(988,24,48,2,NULL),(989,25,48,2,NULL),(990,26,48,2,NULL),(991,27,48,2,NULL),(992,21,5,2,NULL),(993,21,11,2,NULL),(994,21,16,2,NULL),(995,29,18,2,NULL),(996,30,18,2,NULL),(997,31,18,2,NULL),(998,45,18,2,NULL),(999,74,18,2,NULL),(1000,35,18,2,NULL),(1001,61,18,2,NULL),(1002,72,18,2,NULL),(1003,71,18,2,NULL),(1004,78,18,2,NULL),(1005,92,18,2,NULL),(1006,32,18,2,NULL),(1007,33,18,2,NULL),(1008,41,18,2,NULL),(1009,44,18,2,NULL),(1010,63,18,2,NULL),(1011,68,18,2,NULL),(1012,87,18,2,NULL),(1013,55,18,2,NULL),(1014,83,18,2,NULL),(1015,96,18,2,NULL),(1016,38,18,2,NULL),(1017,39,18,2,NULL),(1018,40,18,2,NULL),(1019,88,18,2,NULL),(1020,29,20,2,NULL),(1021,30,20,2,NULL),(1022,31,20,2,NULL),(1023,45,20,2,NULL),(1024,74,20,2,NULL),(1025,35,20,2,NULL),(1026,61,20,2,NULL),(1027,72,20,2,NULL),(1028,71,20,2,NULL),(1029,78,20,2,NULL),(1030,92,20,2,NULL),(1031,32,20,2,NULL),(1032,33,20,2,NULL),(1033,41,20,2,NULL),(1034,44,20,2,NULL),(1035,63,20,2,NULL),(1036,68,20,2,NULL),(1037,87,20,2,NULL),(1038,55,20,2,NULL),(1039,83,20,2,NULL),(1040,96,20,2,NULL),(1041,38,20,2,NULL),(1042,39,20,2,NULL),(1043,40,20,2,NULL),(1044,88,20,2,NULL),(1045,29,28,2,NULL),(1046,30,28,2,NULL),(1047,31,28,2,NULL),(1048,45,28,2,NULL),(1049,74,28,2,NULL),(1050,35,28,2,NULL),(1051,61,28,2,NULL),(1052,72,28,2,NULL),(1053,71,28,2,NULL),(1054,78,28,2,NULL),(1055,92,28,2,NULL),(1056,32,28,2,NULL),(1057,33,28,2,NULL),(1058,41,28,2,NULL),(1059,44,28,2,NULL),(1060,63,28,2,NULL),(1061,68,28,2,NULL),(1062,87,28,2,NULL),(1063,55,28,2,NULL),(1064,83,28,2,NULL),(1065,96,28,2,NULL),(1066,38,28,2,NULL),(1067,39,28,2,NULL),(1068,40,28,2,NULL),(1069,88,28,2,NULL),(1070,53,21,2,NULL),(1071,53,39,2,NULL),(1072,29,29,2,NULL),(1073,30,29,2,NULL),(1074,31,29,2,NULL),(1075,45,29,2,NULL),(1076,74,29,2,NULL),(1077,35,29,2,NULL),(1078,61,29,2,NULL),(1079,72,29,2,NULL),(1080,71,29,2,NULL),(1081,78,29,2,NULL),(1082,92,29,2,NULL),(1083,32,29,2,NULL),(1084,33,29,2,NULL),(1085,41,29,2,NULL),(1086,44,29,2,NULL),(1087,63,29,2,NULL),(1088,68,29,2,NULL),(1089,87,29,2,NULL),(1090,55,29,2,NULL),(1091,83,29,2,NULL),(1092,96,29,2,NULL),(1093,38,29,2,NULL),(1094,39,29,2,NULL),(1095,40,29,2,NULL),(1096,88,29,2,NULL),(1097,47,36,2,NULL),(1098,56,33,2,NULL),(1099,77,38,2,NULL),(1100,93,32,2,NULL),(1101,94,35,2,NULL),(1102,29,30,2,NULL),(1103,30,30,2,NULL),(1104,31,30,2,NULL),(1105,45,30,2,NULL),(1106,74,30,2,NULL),(1107,35,30,2,NULL),(1108,61,30,2,NULL),(1109,72,30,2,NULL),(1110,71,30,2,NULL),(1111,78,30,2,NULL),(1112,92,30,2,NULL),(1113,32,30,2,NULL),(1114,33,30,2,NULL),(1115,41,30,2,NULL),(1116,44,30,2,NULL),(1117,63,30,2,NULL),(1118,68,30,2,NULL),(1119,87,30,2,NULL),(1120,55,30,2,NULL),(1121,83,30,2,NULL),(1122,96,30,2,NULL),(1123,38,30,2,NULL),(1124,39,30,2,NULL),(1125,40,30,2,NULL),(1126,88,30,2,NULL),(1127,36,38,2,NULL),(1128,42,35,2,NULL),(1129,43,32,2,NULL),(1130,76,35,2,NULL),(1131,82,30,2,NULL),(1132,95,33,2,NULL),(1133,29,32,2,NULL),(1134,30,32,2,NULL),(1135,31,32,2,NULL),(1136,45,32,2,NULL),(1137,74,32,2,NULL),(1138,35,31,2,NULL),(1139,61,31,2,NULL),(1140,72,31,2,NULL),(1141,29,33,2,NULL),(1142,30,33,2,NULL),(1143,31,33,2,NULL),(1144,45,33,2,NULL),(1145,74,33,2,NULL),(1146,29,34,2,NULL),(1147,30,34,2,NULL),(1148,31,34,2,NULL),(1149,45,34,2,NULL),(1150,74,34,2,NULL),(1151,71,31,2,NULL),(1152,78,31,2,NULL),(1153,92,31,2,NULL),(1154,29,35,2,NULL),(1155,30,35,2,NULL),(1156,31,35,2,NULL),(1157,45,35,2,NULL),(1158,74,35,2,NULL),(1159,32,31,2,NULL),(1160,33,31,2,NULL),(1161,41,31,2,NULL),(1162,44,31,2,NULL),(1163,63,31,2,NULL),(1164,68,31,2,NULL),(1165,87,31,2,NULL),(1166,29,36,2,NULL),(1167,30,36,2,NULL),(1168,31,36,2,NULL),(1169,45,36,2,NULL),(1170,74,36,2,NULL),(1171,55,31,2,NULL),(1172,83,31,2,NULL),(1173,96,31,2,NULL),(1174,29,37,2,NULL),(1175,30,37,2,NULL),(1176,31,37,2,NULL),(1177,45,37,2,NULL),(1178,74,37,2,NULL),(1179,38,31,2,NULL),(1180,39,31,2,NULL),(1181,40,31,2,NULL),(1182,88,31,2,NULL),(1183,29,40,2,NULL),(1184,30,40,2,NULL),(1185,31,40,2,NULL),(1186,45,40,2,NULL),(1187,74,40,2,NULL),(1188,29,41,2,NULL),(1189,30,41,2,NULL),(1190,31,41,2,NULL),(1191,45,41,2,NULL),(1192,74,41,2,NULL),(1193,29,42,2,NULL),(1194,30,42,2,NULL),(1195,31,42,2,NULL),(1196,45,42,2,NULL),(1197,74,42,2,NULL),(1198,29,43,2,NULL),(1199,30,43,2,NULL),(1200,31,43,2,NULL),(1201,45,43,2,NULL),(1202,74,43,2,NULL),(1203,29,44,2,NULL),(1204,30,44,2,NULL),(1205,31,44,2,NULL),(1206,45,44,2,NULL),(1207,74,44,2,NULL),(1208,29,45,2,NULL),(1209,30,45,2,NULL),(1210,31,45,2,NULL),(1211,45,45,2,NULL),(1212,74,45,2,NULL),(1213,29,46,2,NULL),(1214,30,46,2,NULL),(1215,31,46,2,NULL),(1216,45,46,2,NULL),(1217,74,46,2,NULL),(1218,29,47,2,NULL),(1219,30,47,2,NULL),(1220,31,47,2,NULL),(1221,45,47,2,NULL),(1222,74,47,2,NULL),(1223,29,48,2,NULL),(1224,30,48,2,NULL),(1225,31,48,2,NULL),(1226,45,48,2,NULL),(1227,74,48,2,NULL),(1228,48,33,2,NULL),(1229,60,36,2,NULL),(1230,75,35,2,NULL),(1231,35,33,2,NULL),(1232,61,33,2,NULL),(1233,72,33,2,NULL),(1234,35,34,2,NULL),(1235,61,34,2,NULL),(1236,72,34,2,NULL),(1237,71,32,2,NULL),(1238,78,32,2,NULL),(1239,92,32,2,NULL),(1240,35,35,2,NULL),(1241,61,35,2,NULL),(1242,72,35,2,NULL),(1243,32,32,2,NULL),(1244,33,32,2,NULL),(1245,41,32,2,NULL),(1246,44,32,2,NULL),(1247,63,32,2,NULL),(1248,68,32,2,NULL),(1249,87,32,2,NULL),(1250,35,36,2,NULL),(1251,61,36,2,NULL),(1252,72,36,2,NULL),(1253,55,32,2,NULL),(1254,83,32,2,NULL),(1255,96,32,2,NULL),(1256,35,37,2,NULL),(1257,61,37,2,NULL),(1258,72,37,2,NULL),(1259,38,32,2,NULL),(1260,39,32,2,NULL),(1261,40,32,2,NULL),(1262,88,32,2,NULL),(1263,35,40,2,NULL),(1264,61,40,2,NULL),(1265,72,40,2,NULL),(1266,35,41,2,NULL),(1267,61,41,2,NULL),(1268,72,41,2,NULL),(1269,35,42,2,NULL),(1270,61,42,2,NULL),(1271,72,42,2,NULL),(1272,35,43,2,NULL),(1273,61,43,2,NULL),(1274,72,43,2,NULL),(1275,35,44,2,NULL),(1276,61,44,2,NULL),(1277,72,44,2,NULL),(1278,35,45,2,NULL),(1279,61,45,2,NULL),(1280,72,45,2,NULL),(1281,35,46,2,NULL),(1282,61,46,2,NULL),(1283,72,46,2,NULL),(1284,35,47,2,NULL),(1285,61,47,2,NULL),(1286,72,47,2,NULL),(1287,35,48,2,NULL),(1288,61,48,2,NULL),(1289,72,48,2,NULL),(1290,37,35,2,NULL),(1291,62,32,2,NULL),(1292,69,36,2,NULL),(1293,91,34,2,NULL),(1294,71,33,2,NULL),(1295,78,33,2,NULL),(1296,92,33,2,NULL),(1297,32,33,2,NULL),(1298,33,33,2,NULL),(1299,41,33,2,NULL),(1300,44,33,2,NULL),(1301,63,33,2,NULL),(1302,68,33,2,NULL),(1303,87,33,2,NULL),(1304,55,33,2,NULL),(1305,83,33,2,NULL),(1306,96,33,2,NULL),(1307,38,33,2,NULL),(1308,39,33,2,NULL),(1309,40,33,2,NULL),(1310,88,33,2,NULL),(1311,49,30,2,NULL),(1312,50,32,2,NULL),(1313,59,35,2,NULL),(1314,67,36,2,NULL),(1315,71,35,2,NULL),(1316,78,35,2,NULL),(1317,92,35,2,NULL),(1318,32,34,2,NULL),(1319,33,34,2,NULL),(1320,41,34,2,NULL),(1321,44,34,2,NULL),(1322,63,34,2,NULL),(1323,68,34,2,NULL),(1324,87,34,2,NULL),(1325,71,36,2,NULL),(1326,78,36,2,NULL),(1327,92,36,2,NULL),(1328,55,34,2,NULL),(1329,83,34,2,NULL),(1330,96,34,2,NULL),(1331,71,37,2,NULL),(1332,78,37,2,NULL),(1333,92,37,2,NULL),(1334,38,34,2,NULL),(1335,39,34,2,NULL),(1336,40,34,2,NULL),(1337,88,34,2,NULL),(1338,71,40,2,NULL),(1339,78,40,2,NULL),(1340,92,40,2,NULL),(1341,71,41,2,NULL),(1342,78,41,2,NULL),(1343,92,41,2,NULL),(1344,71,42,2,NULL),(1345,78,42,2,NULL),(1346,92,42,2,NULL),(1347,71,43,2,NULL),(1348,78,43,2,NULL),(1349,92,43,2,NULL),(1350,71,44,2,NULL),(1351,78,44,2,NULL),(1352,92,44,2,NULL),(1353,71,45,2,NULL),(1354,78,45,2,NULL),(1355,92,45,2,NULL),(1356,71,46,2,NULL),(1357,78,46,2,NULL),(1358,92,46,2,NULL),(1359,71,47,2,NULL),(1360,78,47,2,NULL),(1361,92,47,2,NULL),(1362,71,48,2,NULL),(1363,78,48,2,NULL),(1364,92,48,2,NULL),(1365,51,36,2,NULL),(1366,57,33,2,NULL),(1367,64,32,2,NULL),(1368,70,38,2,NULL),(1369,85,36,2,NULL),(1370,32,36,2,NULL),(1371,33,36,2,NULL),(1372,41,36,2,NULL),(1373,44,36,2,NULL),(1374,63,36,2,NULL),(1375,68,36,2,NULL),(1376,87,36,2,NULL),(1377,55,35,2,NULL),(1378,83,35,2,NULL),(1379,96,35,2,NULL),(1380,32,37,2,NULL),(1381,33,37,2,NULL),(1382,41,37,2,NULL),(1383,44,37,2,NULL),(1384,63,37,2,NULL),(1385,68,37,2,NULL),(1386,87,37,2,NULL),(1387,38,35,2,NULL),(1388,39,35,2,NULL),(1389,40,35,2,NULL),(1390,88,35,2,NULL),(1391,32,40,2,NULL),(1392,33,40,2,NULL),(1393,41,40,2,NULL),(1394,44,40,2,NULL),(1395,63,40,2,NULL),(1396,68,40,2,NULL),(1397,87,40,2,NULL),(1398,32,41,2,NULL),(1399,33,41,2,NULL),(1400,41,41,2,NULL),(1401,44,41,2,NULL),(1402,63,41,2,NULL),(1403,68,41,2,NULL),(1404,87,41,2,NULL),(1405,32,42,2,NULL),(1406,33,42,2,NULL),(1407,41,42,2,NULL),(1408,44,42,2,NULL),(1409,63,42,2,NULL),(1410,68,42,2,NULL),(1411,87,42,2,NULL),(1412,32,43,2,NULL),(1413,33,43,2,NULL),(1414,41,43,2,NULL),(1415,44,43,2,NULL),(1416,63,43,2,NULL),(1417,68,43,2,NULL),(1418,87,43,2,NULL),(1419,32,44,2,NULL),(1420,33,44,2,NULL),(1421,41,44,2,NULL),(1422,44,44,2,NULL),(1423,63,44,2,NULL),(1424,68,44,2,NULL),(1425,87,44,2,NULL),(1426,32,45,2,NULL),(1427,33,45,2,NULL),(1428,41,45,2,NULL),(1429,44,45,2,NULL),(1430,63,45,2,NULL),(1431,68,45,2,NULL),(1432,87,45,2,NULL),(1433,32,46,2,NULL),(1434,33,46,2,NULL),(1435,41,46,2,NULL),(1436,44,46,2,NULL),(1437,63,46,2,NULL),(1438,68,46,2,NULL),(1439,87,46,2,NULL),(1440,32,47,2,NULL),(1441,33,47,2,NULL),(1442,41,47,2,NULL),(1443,44,47,2,NULL),(1444,63,47,2,NULL),(1445,68,47,2,NULL),(1446,87,47,2,NULL),(1447,32,48,2,NULL),(1448,33,48,2,NULL),(1449,41,48,2,NULL),(1450,44,48,2,NULL),(1451,63,48,2,NULL),(1452,68,48,2,NULL),(1453,87,48,2,NULL),(1454,65,32,2,NULL),(1455,66,35,2,NULL),(1456,73,38,2,NULL),(1457,81,33,2,NULL),(1458,89,30,2,NULL),(1459,55,37,2,NULL),(1460,83,37,2,NULL),(1461,96,37,2,NULL),(1462,38,36,2,NULL),(1463,39,36,2,NULL),(1464,40,36,2,NULL),(1465,88,36,2,NULL),(1466,55,40,2,NULL),(1467,83,40,2,NULL),(1468,96,40,2,NULL),(1469,55,41,2,NULL),(1470,83,41,2,NULL),(1471,96,41,2,NULL),(1472,55,42,2,NULL),(1473,83,42,2,NULL),(1474,96,42,2,NULL),(1475,55,43,2,NULL),(1476,83,43,2,NULL),(1477,96,43,2,NULL),(1478,55,44,2,NULL),(1479,83,44,2,NULL),(1480,96,44,2,NULL),(1481,55,45,2,NULL),(1482,83,45,2,NULL),(1483,96,45,2,NULL),(1484,55,46,2,NULL),(1485,83,46,2,NULL),(1486,96,46,2,NULL),(1487,55,47,2,NULL),(1488,83,47,2,NULL),(1489,96,47,2,NULL),(1490,55,48,2,NULL),(1491,83,48,2,NULL),(1492,96,48,2,NULL),(1493,46,35,2,NULL),(1494,52,32,2,NULL),(1495,54,36,2,NULL),(1496,90,33,2,NULL),(1497,38,37,2,NULL),(1498,39,37,2,NULL),(1499,40,37,2,NULL),(1500,88,37,2,NULL),(1501,38,40,2,NULL),(1502,39,40,2,NULL),(1503,40,40,2,NULL),(1504,88,40,2,NULL),(1505,38,41,2,NULL),(1506,39,41,2,NULL),(1507,40,41,2,NULL),(1508,88,41,2,NULL),(1509,38,42,2,NULL),(1510,39,42,2,NULL),(1511,40,42,2,NULL),(1512,88,42,2,NULL),(1513,38,43,2,NULL),(1514,39,43,2,NULL),(1515,40,43,2,NULL),(1516,88,43,2,NULL),(1517,38,44,2,NULL),(1518,39,44,2,NULL),(1519,40,44,2,NULL),(1520,88,44,2,NULL),(1521,38,45,2,NULL),(1522,39,45,2,NULL),(1523,40,45,2,NULL),(1524,88,45,2,NULL),(1525,38,46,2,NULL),(1526,39,46,2,NULL),(1527,40,46,2,NULL),(1528,88,46,2,NULL),(1529,38,47,2,NULL),(1530,39,47,2,NULL),(1531,40,47,2,NULL),(1532,88,47,2,NULL),(1533,38,48,2,NULL),(1534,39,48,2,NULL),(1535,40,48,2,NULL),(1536,88,48,2,NULL),(1537,84,21,2,NULL),(1538,84,39,2,NULL);
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
INSERT INTO `PermissionStrings` VALUES (10,'android.permission.ACCESS_COARSE_LOCATION'),(9,'android.permission.ACCESS_FINE_LOCATION'),(16,'android.permission.ACCESS_NETWORK_STATE'),(17,'android.permission.BIND_WALLPAPER'),(18,'android.permission.BROADCAST_PACKAGE_REMOVED'),(1,'android.permission.INSTALL_PACKAGES'),(4,'android.permission.INTERNET'),(14,'android.permission.MODIFY_PHONE_STATE'),(22,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(20,'android.permission.READ_CONTACTS'),(2,'android.permission.READ_PHONE_STATE'),(23,'android.permission.READ_SMS'),(13,'android.permission.RECEIVE_BOOT_COMPLETED'),(7,'android.permission.RECEIVE_SMS'),(21,'android.permission.RESTART_PACKAGES'),(3,'android.permission.SEND_SMS'),(11,'android.permission.VIBRATE'),(12,'android.permission.WAKE_LOCK'),(15,'android.permission.WRITE_APN_SETTINGS'),(5,'android.permission.WRITE_EXTERNAL_STORAGE'),(24,'android.permission.WRITE_SETTINGS'),(19,'android.permission.WRITE_SMS'),(8,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(6,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS');
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'',NULL,NULL,NULL),(6,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(7,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(8,NULL,NULL,'http://www.10086apk.com',NULL,NULL,NULL),(9,NULL,NULL,'(.*)',NULL,NULL,NULL),(10,NULL,NULL,'',NULL,NULL,NULL),(11,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(12,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'',NULL,NULL,NULL),(15,NULL,NULL,'market://search?q=pname:com.andoop.highscore',NULL,NULL,NULL),(16,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL),(17,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(18,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(19,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(20,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(21,NULL,NULL,'content://sms/',NULL,NULL,NULL),(22,NULL,NULL,'http://mp3.baidu.com/m?f=ms&rf=idx&tn=baidump3&ct=134217728&lf=&rn=&lm=0&word=(.*)',NULL,NULL,NULL),(23,NULL,NULL,'NULL-CONSTANT(.*)',NULL,NULL,NULL),(24,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL),(25,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(26,NULL,NULL,'file://(.*)',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,1,1),(2,4,3),(3,10,6),(4,12,7),(5,17,11),(6,19,12),(7,24,16),(8,29,17),(9,34,18),(10,53,19),(11,61,20),(12,64,21),(13,80,24),(14,92,25);
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,2,1),(10,2,2),(11,2,3),(12,2,4),(13,2,5),(14,2,6),(15,2,7),(16,2,8),(17,2,9),(18,2,10),(19,3,1),(20,3,2),(21,3,3),(22,3,4),(23,3,5),(24,3,6),(25,3,7),(26,3,8),(27,3,11),(28,3,12),(29,4,16),(30,4,2),(31,4,4),(32,4,5),(33,4,13),(34,4,14),(35,4,15),(36,5,1),(37,5,2),(38,5,3),(39,5,4),(40,5,5),(41,5,7),(42,5,9),(43,5,10),(44,5,13),(45,5,14),(46,5,15),(47,5,16),(48,5,19),(49,5,18),(50,5,21),(51,5,20),(52,5,23),(53,5,22),(54,5,24);
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

-- Dump completed on 2015-10-12  3:31:25
