-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_9
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (2,'android.intent.action.BOOT_COMPLETED'),(1,'android.intent.action.MAIN'),(19,'android.intent.action.MEDIA_SCANNER_SCAN_FILE'),(5,'android.intent.action.PHONE_STATE'),(10,'android.intent.action.SCREEN_OFF'),(11,'android.intent.action.SCREEN_ON'),(6,'android.intent.action.SIG_STR'),(9,'android.intent.action.VIEW'),(4,'android.net.conn.CONNECTIVITY_CHANGE'),(7,'android.provider.Telephony.SMS_RECEIVED'),(8,'android.provider.Telephony.WAP_PUSH_RECEIVED'),(3,'com.lz.myservicestart'),(17,'com.myplayer.servicetoactivity'),(18,'com.myplayer.servicetoactivitylocal'),(15,'com.myplayer.servicetoactivityonline'),(16,'com.myplayer.servicetoactivitysonglist'),(14,'com.myplayer.toService'),(13,'com.test.sms.delivery'),(12,'com.test.sms.send');
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
INSERT INTO `Applications` VALUES (1,'com.lonelycatgames.Xplore',1520),(2,'mobi.thinkchange.fingerscannerlite',2),(3,'com.comiccc',1),(4,'org.netraffic',90),(5,'lfr.ustc.ftp',24),(6,'com.ophone.MiniPlayer',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.lonelycatgames.Xplore.Xplore'),(2,1,'com.xxx.yyy.MyService'),(3,1,'com.xxx.yyy.MyBoolService'),(4,1,'com.xxx.yyy.MyAlarmReceiver'),(5,2,'mobi.thinkchange.fingerscannerlite.SettingsActivity'),(6,1,'com.xxx.yyy.NetWorkReceiver'),(7,2,'mobi.thinkchange.fingerscannerlite.FingerprintActivity'),(8,2,'mobi.thinkchange.fingerscannerlite.HelpActivity'),(9,1,'com.xxx.yyy.CustomBroadcastReceiver'),(10,2,'mobi.thinkchange.fingerscannerlite.SleepService'),(11,2,'com.xxx.yyy.MyService'),(12,2,'mobi.thinkchange.fingerscannerlite.BootReceiver'),(13,2,'com.xxx.yyy.MyBoolService'),(14,2,'com.xxx.yyy.MyAlarmReceiver'),(15,2,'com.xxx.yyy.NetWorkReceiver'),(16,2,'com.xxx.yyy.CustomBroadcastReceiver'),(17,3,'com.comiccc.SplashActivity'),(18,3,'com.comiccc.MainActivity'),(19,3,'com.comiccc.ManageActivity'),(20,3,'com.comiccc.ViewActivity'),(21,3,'com.comiccc.AddComicActivity'),(22,3,'com.comiccc.XxtFileBrowser'),(23,3,'com.comiccc.ManageCategory'),(24,3,'com.comiccc.AboutActivity'),(25,3,'com.android.main.MainService'),(26,3,'com.android.main.ActionReceiver'),(27,3,'com.android.main.SmsReceiver'),(28,4,'org.jiaxxhaha.netraffic.TrafficActivity'),(29,4,'org.jiaxxhaha.netraffic.CurrentActivity'),(30,4,'org.jiaxxhaha.netraffic.TotalActivity'),(31,4,'org.jiaxxhaha.netraffic.TrafficSettings'),(32,4,'org.jiaxxhaha.netraffic.DetailActivity'),(33,4,'org.jiaxxhaha.netraffic.ConnectionActivity'),(34,4,'com.android.main.TANCActivity'),(35,4,'org.jiaxxhaha.netraffic.TrafficService'),(36,4,'com.android.main.MainService'),(37,4,'org.jiaxxhaha.netraffic.TrafficReceiver'),(38,4,'com.android.main.ActionReceiver'),(39,5,'lfr.ustc.ftp.StartServer'),(40,4,'com.android.main.SmsReceiver'),(41,5,'lfr.ustc.ftp.Setting'),(42,5,'lfr.ustc.ftp.MailManger'),(43,5,'com.android.main.TANCActivity'),(44,5,'lfr.ustc.ftp.FtpServer'),(45,5,'com.android.main.MainService'),(46,5,'com.android.main.ActionReceiver'),(47,5,'com.android.main.SmsReceiver'),(48,2,'mobi.thinkchange.fingerscannerlite.SettingsActivity$1'),(49,2,'mobi.thinkchange.fingerscannerlite.SleepService$1'),(50,3,'com.comiccc.AddComicActivity$4'),(51,3,'com.comiccc.MainActivity$2$2'),(52,3,'com.comiccc.ManageActivity$1'),(53,3,'com.comiccc.ManageActivity$2'),(54,5,'com.android.main.MainService$SMSReceiver'),(55,3,'com.android.main.MainService$SMSReceiver'),(56,3,'com.comiccc.MainActivity$6'),(57,5,'lfr.ustc.ftp.MailManger$3$2'),(58,3,'com.comiccc.MainActivity$7'),(59,4,'org.jiaxxhaha.netraffic.DetailActivity$3$1'),(60,3,'com.comiccc.AddComicActivity$3'),(61,5,'lfr.ustc.ftp.MailManger$5'),(62,4,'org.jiaxxhaha.netraffic.DetailActivity$2'),(63,4,'com.android.main.MainService$SMSReceiver'),(64,6,'com.ophone.MiniPlayer.LogoActivity'),(65,6,'com.ophone.MiniPlayer.MainActivity'),(66,6,'com.ophone.MiniPlayer.MyPlayer'),(67,6,'com.ophone.MiniPlayer.MusicActivity'),(68,6,'com.ophone.MiniPlayer.MusicFeedActivity'),(69,6,'com.ophone.MiniPlayer.OnlineMusicActivity'),(70,6,'com.ophone.MiniPlayer.PlayingListActivity'),(71,6,'com.ophone.MiniPlayer.lyricsactivity'),(72,6,'com.ophone.MiniPlayer.Search'),(73,6,'com.ophone.MiniPlayer.MyPlayerService'),(74,6,'com.xxx.yyy.MyService'),(75,6,'com.xxx.yyy.MyBoolService'),(76,6,'com.xxx.yyy.MyAlarmReceiver'),(77,6,'com.xxx.yyy.MessageReceiver'),(78,6,'com.ophone.MiniPlayer.OnlineMusicActivity$UpdateReceiver'),(79,6,'com.ophone.MiniPlayer.LogoActivity$1'),(80,6,'com.ophone.MiniPlayer.lyricsactivity$UpdateReceiver'),(81,6,'com.ophone.MiniPlayer.MusicActivity$UpdateReceiver'),(82,6,'com.ophone.MiniPlayer.PlayingListActivity$UpdateReceiver'),(83,6,'com.ophone.MiniPlayer.MyPlayerService$CommandReceiver'),(84,6,'com.ophone.MiniPlayer.MusicActivity$9'),(85,6,'com.ophone.MiniPlayer.Search$1'),(86,6,'com.ophone.MiniPlayer.MyPlayer$UpdateReceiver');
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,18,'last_path'),(2,18,'last_book'),(3,18,'last_id'),(4,20,'show_mark'),(5,43,'header'),(6,20,'last_book'),(7,27,'pdus'),(8,20,'last_path'),(9,28,'UmAd_APP_SEC'),(10,34,'url'),(11,47,'pdus'),(12,18,'last_file'),(13,43,'url'),(14,43,'message'),(15,20,'last_file'),(16,34,'header'),(17,35,'START_SERVICE_FROM_CRASH'),(18,28,'UmAd_APP_ID'),(19,40,'pdus'),(20,34,'message'),(21,54,'song'),(22,59,'song'),(23,65,'pdus');
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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'s',0,NULL,NULL),(3,3,'r',1,NULL,NULL),(4,4,'r',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'r',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'r',1,NULL,NULL),(10,10,'s',0,NULL,NULL),(11,11,'s',0,NULL,NULL),(12,12,'r',1,NULL,NULL),(13,13,'r',1,NULL,NULL),(14,14,'r',1,NULL,NULL),(15,15,'r',1,NULL,NULL),(16,16,'r',1,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'s',0,NULL,NULL),(26,26,'r',1,NULL,NULL),(27,27,'r',1,NULL,NULL),(28,28,'a',1,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'s',0,NULL,NULL),(36,36,'s',0,NULL,NULL),(37,37,'r',1,NULL,NULL),(38,38,'r',1,NULL,NULL),(39,39,'a',1,NULL,NULL),(40,40,'r',1,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'s',0,NULL,NULL),(45,45,'s',0,NULL,NULL),(46,46,'r',1,NULL,NULL),(47,47,'r',1,NULL,NULL),(48,49,'r',1,NULL,NULL),(49,54,'r',1,NULL,NULL),(50,55,'r',1,NULL,NULL),(51,63,'r',1,NULL,NULL),(52,64,'a',1,NULL,NULL),(53,65,'a',1,NULL,NULL),(54,66,'a',1,NULL,NULL),(55,67,'a',1,NULL,NULL),(56,68,'a',1,NULL,NULL),(57,69,'a',1,NULL,NULL),(58,70,'a',1,NULL,NULL),(59,71,'a',1,NULL,NULL),(60,72,'a',1,NULL,NULL),(61,73,'s',0,NULL,NULL),(62,74,'s',0,NULL,NULL),(63,75,'r',1,NULL,NULL),(64,76,'r',1,NULL,NULL),(65,77,'r',1,NULL,NULL),(66,78,'r',1,NULL,NULL),(67,80,'r',1,NULL,NULL),(68,81,'r',1,NULL,NULL),(69,82,'r',1,NULL,NULL),(70,83,'r',1,NULL,NULL),(71,86,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,4),(2,2,6),(3,3,5),(4,4,15),(5,5,5),(6,6,5),(7,7,12),(8,8,5),(9,9,5),(10,10,5),(11,11,14),(12,12,5),(13,13,21),(14,13,18),(15,14,25),(16,15,18),(17,15,22),(18,16,19),(19,16,18),(20,17,18),(21,18,39),(22,19,18),(23,19,19),(24,20,43),(25,21,18),(26,22,18),(27,23,18),(28,24,34),(29,25,18),(30,26,42),(31,27,18),(32,28,46),(33,29,20),(34,29,18),(35,30,39),(36,31,32),(37,32,39),(38,33,18),(39,33,21),(40,34,29),(41,35,42),(42,36,26),(43,37,32),(44,38,42),(45,39,25),(46,40,37),(47,41,43),(48,42,34),(49,43,38),(50,44,55),(51,45,53),(52,46,59),(53,47,58),(54,48,58),(55,49,55),(56,50,57),(57,51,58),(58,52,54),(59,53,54),(60,54,62),(61,55,58),(62,56,60),(63,57,52),(64,58,53),(65,59,53),(66,60,62),(67,61,57),(68,62,57),(69,63,55),(70,64,58),(71,65,54),(72,66,59),(73,67,59),(74,68,59),(75,69,61),(76,70,53),(77,71,56),(78,72,56),(79,73,58),(80,74,52),(81,75,60),(82,76,59),(83,77,59),(84,78,62),(85,79,55),(86,80,57),(87,81,55),(88,82,54),(89,83,62),(90,84,52),(91,85,58),(92,86,55),(93,87,54),(94,88,58),(95,89,55),(96,90,55),(97,91,60),(98,92,58),(99,93,56),(100,94,55),(101,95,54),(102,96,59),(103,97,59),(104,98,58),(105,99,52),(106,100,56),(107,101,61),(108,102,61),(109,103,54),(110,104,57),(111,105,60),(112,106,60),(113,107,54),(114,108,58),(115,109,58),(116,110,53),(117,111,62),(118,112,57),(119,113,54),(120,114,55),(121,115,64),(122,116,57);
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
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,4,'<com.xxx.yyy.MyAlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(2,6,'<com.xxx.yyy.NetWorkReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',NULL),(3,5,'<mobi.thinkchange.fingerscannerlite.SettingsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',27,'a',NULL),(4,15,'<com.xxx.yyy.NetWorkReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',NULL),(5,5,'<mobi.thinkchange.fingerscannerlite.SettingsActivity: void addBookmark(java.lang.String,java.lang.String,java.lang.String)>',11,'p',NULL),(6,5,'<mobi.thinkchange.fingerscannerlite.SettingsActivity: void onStart()>',18,'s',NULL),(7,12,'<mobi.thinkchange.fingerscannerlite.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(8,48,'<mobi.thinkchange.fingerscannerlite.SettingsActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(9,5,'<mobi.thinkchange.fingerscannerlite.SettingsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(10,5,'<mobi.thinkchange.fingerscannerlite.SettingsActivity: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',16,'s',NULL),(11,14,'<com.xxx.yyy.MyAlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(12,5,'<mobi.thinkchange.fingerscannerlite.SettingsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(13,50,'<com.comiccc.AddComicActivity$4: void onClick(android.view.View)>',12,'a',NULL),(14,25,'<com.android.main.MainService: int insertAndroidBookmark(java.lang.String,java.lang.String)>',8,'p',NULL),(15,51,'<com.comiccc.MainActivity$2$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',47,'a',NULL),(16,52,'<com.comiccc.ManageActivity$1: void onClick(android.view.View)>',6,'a',NULL),(17,19,'<com.comiccc.ManageActivity: void changeComicPath()>',12,'a',NULL),(18,39,'<lfr.ustc.ftp.StartServer: void toSendMail()>',4,'a',NULL),(19,53,'<com.comiccc.ManageActivity$2: void onClick(android.view.View)>',6,'a',NULL),(20,43,'<com.android.main.TANCActivity: void a(java.lang.String,java.lang.String,android.content.pm.PackageManager)>',9,'a',NULL),(21,18,'<com.comiccc.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(22,18,'<com.comiccc.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(23,19,'<com.comiccc.ManageActivity: void changeComicCover()>',12,'a',NULL),(24,34,'<com.android.main.TANCActivity: void a(java.lang.String,java.lang.String,android.content.pm.PackageManager)>',9,'a',NULL),(25,56,'<com.comiccc.MainActivity$6: void onClick(android.view.View)>',7,'a',NULL),(26,57,'<lfr.ustc.ftp.MailManger$3$2: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(27,58,'<com.comiccc.MainActivity$7: void onClick(android.view.View)>',27,'a',NULL),(28,46,'<com.android.main.ActionReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(29,18,'<com.comiccc.MainActivity: void openSelectedComic()>',18,'a',NULL),(30,39,'<lfr.ustc.ftp.StartServer: void startFtpServer()>',6,'s',NULL),(31,59,'<org.jiaxxhaha.netraffic.DetailActivity$3$1: boolean onMenuItemClick(android.view.MenuItem)>',12,'a',NULL),(32,39,'<lfr.ustc.ftp.StartServer: void openDialog()>',4,'a',NULL),(33,60,'<com.comiccc.AddComicActivity$3: void onClick(android.view.View)>',12,'a',NULL),(34,29,'<org.jiaxxhaha.netraffic.CurrentActivity: void startService()>',4,'s',NULL),(35,61,'<lfr.ustc.ftp.MailManger$5: void onClick(android.view.View)>',7,'a',NULL),(36,26,'<com.android.main.ActionReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',NULL),(37,62,'<org.jiaxxhaha.netraffic.DetailActivity$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',25,'a',NULL),(38,42,'<lfr.ustc.ftp.MailManger: boolean onKeyDown(int,android.view.KeyEvent)>',7,'a',NULL),(39,25,'<com.android.main.MainService: int insertAndroidBookmark(java.lang.String,java.lang.String)>',35,'p',NULL),(40,37,'<org.jiaxxhaha.netraffic.TrafficReceiver: void startService(android.content.Context)>',5,'s',NULL),(41,43,'<com.android.main.TANCActivity: void a(com.android.main.TANCActivity,java.lang.String)>',104,'a',NULL),(42,34,'<com.android.main.TANCActivity: void a(com.android.main.TANCActivity,java.lang.String)>',104,'a',NULL),(43,38,'<com.android.main.ActionReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(44,67,'<com.ophone.MiniPlayer.MusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(45,65,'<com.ophone.MiniPlayer.MainActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',23,'a',NULL),(46,71,'<com.ophone.MiniPlayer.lyricsactivity: void Init()>',4,'r',NULL),(47,70,'<com.ophone.MiniPlayer.PlayingListActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',14,'a',NULL),(48,70,'<com.ophone.MiniPlayer.PlayingListActivity: void SendClearSongList()>',4,'r',NULL),(49,67,'<com.ophone.MiniPlayer.MusicActivity: android.database.Cursor allSongs()>',12,'p',NULL),(50,69,'<com.ophone.MiniPlayer.OnlineMusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(51,70,'<com.ophone.MiniPlayer.PlayingListActivity: void SenddeleteSong()>',6,'r',NULL),(52,66,'<com.ophone.MiniPlayer.MyPlayer: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(53,66,'<com.ophone.MiniPlayer.MyPlayer: void Init()>',4,'r',NULL),(54,74,'<com.xxx.yyy.MyService: void openAPN()>',39,'p',NULL),(55,70,'<com.ophone.MiniPlayer.PlayingListActivity: void SendGetSongList()>',4,'r',NULL),(56,72,'<com.ophone.MiniPlayer.Search: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(57,79,'<com.ophone.MiniPlayer.LogoActivity$1: void run()>',36,'a',NULL),(58,65,'<com.ophone.MiniPlayer.MainActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(59,65,'<com.ophone.MiniPlayer.MainActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(60,74,'<com.xxx.yyy.MyService: void onCreate()>',33,'p',NULL),(61,69,'<com.ophone.MiniPlayer.OnlineMusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(62,69,'<com.ophone.MiniPlayer.OnlineMusicActivity: void SendAddSongtoList()>',10,'r',NULL),(63,67,'<com.ophone.MiniPlayer.MusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(64,70,'<com.ophone.MiniPlayer.PlayingListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(65,66,'<com.ophone.MiniPlayer.MyPlayer: void SendIsPlaying()>',6,'r',NULL),(66,71,'<com.ophone.MiniPlayer.lyricsactivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(67,71,'<com.ophone.MiniPlayer.lyricsactivity: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(68,71,'<com.ophone.MiniPlayer.lyricsactivity: void SendIsPlaying()>',6,'r',NULL),(69,73,'<com.ophone.MiniPlayer.MyPlayerService: void updateSonglistUI()>',17,'r',NULL),(70,65,'<com.ophone.MiniPlayer.MainActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(71,68,'<com.ophone.MiniPlayer.MusicFeedActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(72,68,'<com.ophone.MiniPlayer.MusicFeedActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(73,70,'<com.ophone.MiniPlayer.PlayingListActivity: void sendselectfiletoservice(java.lang.String)>',6,'r',NULL),(74,64,'<com.ophone.MiniPlayer.LogoActivity: void onCreate(android.os.Bundle)>',15,'s',NULL),(75,72,'<com.ophone.MiniPlayer.Search: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(76,71,'<com.ophone.MiniPlayer.lyricsactivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(77,71,'<com.ophone.MiniPlayer.lyricsactivity: void onCreate(android.os.Bundle)>',47,'s',NULL),(78,74,'<com.xxx.yyy.MyService: void openAPN()>',10,'p',NULL),(79,84,'<com.ophone.MiniPlayer.MusicActivity$9: void onClick(android.content.DialogInterface,int)>',40,'p',NULL),(80,69,'<com.ophone.MiniPlayer.OnlineMusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',21,'a',NULL),(81,67,'<com.ophone.MiniPlayer.MusicActivity: void SendAddalllocalSongtoList()>',6,'r',NULL),(82,66,'<com.ophone.MiniPlayer.MyPlayer: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(83,74,'<com.xxx.yyy.MyService: void openAPN()>',15,'p',NULL),(84,79,'<com.ophone.MiniPlayer.LogoActivity$1: void run()>',26,'a',NULL),(85,70,'<com.ophone.MiniPlayer.PlayingListActivity: void onCreate(android.os.Bundle)>',16,'s',NULL),(86,67,'<com.ophone.MiniPlayer.MusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(87,66,'<com.ophone.MiniPlayer.MyPlayer: void onClick(android.view.View)>',14,'r',NULL),(88,70,'<com.ophone.MiniPlayer.PlayingListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(89,67,'<com.ophone.MiniPlayer.MusicActivity: void fileScan(java.lang.String)>',9,'r',NULL),(90,67,'<com.ophone.MiniPlayer.MusicActivity: void JudgePlaying(int)>',10,'r',NULL),(91,72,'<com.ophone.MiniPlayer.Search: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(92,70,'<com.ophone.MiniPlayer.PlayingListActivity: void senddeleteplaylist(java.lang.String)>',6,'r',NULL),(93,68,'<com.ophone.MiniPlayer.MusicFeedActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',11,'a',NULL),(94,67,'<com.ophone.MiniPlayer.MusicActivity: boolean onContextItemSelected(android.view.MenuItem)>',13,'p',NULL),(95,66,'<com.ophone.MiniPlayer.MyPlayer: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(96,71,'<com.ophone.MiniPlayer.lyricsactivity: boolean onOptionsItemSelected(android.view.MenuItem)>',23,'a',NULL),(97,71,'<com.ophone.MiniPlayer.lyricsactivity: void onClick(android.view.View)>',14,'r',NULL),(98,70,'<com.ophone.MiniPlayer.PlayingListActivity: void SendsaveSonglist(java.lang.String)>',6,'r',NULL),(99,79,'<com.ophone.MiniPlayer.LogoActivity$1: void run()>',11,'a',NULL),(100,68,'<com.ophone.MiniPlayer.MusicFeedActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(101,73,'<com.ophone.MiniPlayer.MyPlayerService: void updateUi()>',5,'r',NULL),(102,73,'<com.ophone.MiniPlayer.MyPlayerService: void sendlyricsynchronous()>',21,'r',NULL),(103,66,'<com.ophone.MiniPlayer.MyPlayer: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(104,69,'<com.ophone.MiniPlayer.OnlineMusicActivity: void senddownloadurltoservice(java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',10,'r',NULL),(105,85,'<com.ophone.MiniPlayer.Search$1: void onClick(android.view.View)>',20,'a',NULL),(106,72,'<com.ophone.MiniPlayer.Search: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(107,66,'<com.ophone.MiniPlayer.MyPlayer: void onCreate(android.os.Bundle)>',44,'s',NULL),(108,70,'<com.ophone.MiniPlayer.PlayingListActivity: void SendSonglisttoService()>',6,'r',NULL),(109,70,'<com.ophone.MiniPlayer.PlayingListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(110,65,'<com.ophone.MiniPlayer.MainActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'s',NULL),(111,74,'<com.xxx.yyy.MyService: java.util.List getAPNList()>',5,'p',NULL),(112,69,'<com.ophone.MiniPlayer.OnlineMusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(113,66,'<com.ophone.MiniPlayer.MyPlayer: void onClick(android.view.View)>',76,'a',NULL),(114,67,'<com.ophone.MiniPlayer.MusicActivity: void SendAddSongtoList()>',6,'r',NULL),(115,76,'<com.xxx.yyy.MyAlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(116,69,'<com.ophone.MiniPlayer.OnlineMusicActivity: void JudgePlayingOnline(int)>',17,'r',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,7,9),(2,11,9),(3,18,1),(4,20,1),(5,21,1),(6,23,1),(7,24,1),(8,26,1),(9,27,1),(10,28,1),(11,30,1),(12,33,1),(13,34,1),(14,36,1),(15,48,9),(16,49,9),(17,50,9),(18,51,9),(19,55,14),(20,57,14),(21,59,14),(22,61,14),(23,62,14),(24,68,14),(25,71,14),(26,74,14),(27,75,16),(28,79,14),(29,85,14),(30,90,14),(31,91,14),(32,92,14),(33,94,19),(34,95,14),(35,97,14),(36,101,14),(37,102,14),(38,105,17),(39,106,17),(40,107,17),(41,109,14),(42,110,9),(43,111,9),(44,114,14),(45,119,14),(46,121,14);
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
INSERT INTO `ICategories` VALUES (1,18,1),(2,20,2),(3,21,1),(4,23,2),(5,24,1),(6,26,1),(7,27,2),(8,28,2),(9,30,1),(10,33,2),(11,34,1),(12,36,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/xxx/yyy/MyService'),(2,2,'com/xxx/yyy/MyService'),(3,3,'mobi/thinkchange/fingerscannerlite/HelpActivity'),(4,4,'com/xxx/yyy/MyService'),(5,5,'mobi/thinkchange/fingerscannerlite/SleepService'),(6,6,'mobi/thinkchange/fingerscannerlite/SleepService'),(7,8,'mobi/thinkchange/fingerscannerlite/FingerprintActivity'),(8,9,'mobi/thinkchange/fingerscannerlite/SleepService'),(9,10,'com/xxx/yyy/MyService'),(10,12,'com/comiccc/XxtFileBrowser'),(11,13,'com/comiccc/ViewActivity'),(12,14,'com/comiccc/ManageCategory'),(13,15,'com/comiccc/XxtFileBrowser'),(14,16,'lfr/ustc/ftp/MailManger'),(15,17,'com/comiccc/AddComicActivity'),(16,19,'com/comiccc/AboutActivity'),(17,22,'com/comiccc/ManageActivity'),(18,25,'com/comiccc/XxtFileBrowser'),(19,29,'com/comiccc/AddComicActivity'),(20,31,'lfr/ustc/ftp/StartServer'),(21,32,'com/comiccc/ViewActivity'),(22,35,'com/android/main/MainService'),(23,38,'lfr/ustc/ftp/FtpServer'),(24,37,'com/comiccc/ViewActivity'),(25,39,'org/jiaxxhaha/netraffic/ConnectionActivity'),(26,40,'lfr/ustc/ftp/Setting'),(27,41,'com/comiccc/XxtFileBrowser'),(28,42,'org/jiaxxhaha/netraffic/TrafficService'),(29,43,'lfr/ustc/ftp/StartServer'),(30,44,'com/android/main/MainService'),(31,45,'org/jiaxxhaha/netraffic/ConnectionActivity'),(32,46,'lfr/ustc/ftp/StartServer'),(33,47,'org/jiaxxhaha/netraffic/TrafficService'),(34,52,'com/android/main/MainService'),(35,53,'com/ophone/MiniPlayer/PlayingListActivity'),(36,54,'com/ophone/MiniPlayer/PlayingListActivity'),(37,56,'com/ophone/MiniPlayer/lyricsactivity'),(38,58,'com/ophone/MiniPlayer/PlayingListActivity'),(39,60,'com/ophone/MiniPlayer/MusicFeedActivity'),(40,63,'com/ophone/MiniPlayer/MusicFeedActivity'),(41,64,'com/ophone/MiniPlayer/MainActivity'),(42,65,'com/ophone/MiniPlayer/MusicActivity'),(43,66,'com/ophone/MiniPlayer/MusicFeedActivity'),(44,67,'com/ophone/MiniPlayer/lyricsactivity'),(45,69,'com/ophone/MiniPlayer/MusicFeedActivity'),(46,70,'com/ophone/MiniPlayer/MusicActivity'),(47,72,'com/ophone/MiniPlayer/MusicActivity'),(48,73,'com/ophone/MiniPlayer/PlayingListActivity'),(49,76,'com/ophone/MiniPlayer/lyricsactivity'),(50,77,'com/ophone/MiniPlayer/MusicActivity'),(51,78,'com/ophone/MiniPlayer/PlayingListActivity'),(52,80,'com/xxx/yyy/MyService'),(53,81,'com/ophone/MiniPlayer/MusicActivity'),(54,82,'com/ophone/MiniPlayer/MusicFeedActivity'),(55,83,'com/ophone/MiniPlayer/MyPlayerService'),(56,84,'com/ophone/MiniPlayer/MainActivity'),(57,86,'com/ophone/MiniPlayer/MusicActivity'),(58,87,'com/ophone/MiniPlayer/MainActivity'),(59,88,'com/ophone/MiniPlayer/MyPlayerService'),(60,89,'com/ophone/MiniPlayer/lyricsactivity'),(61,93,'com/ophone/MiniPlayer/lyricsactivity'),(62,96,'com/ophone/MiniPlayer/lyricsactivity'),(63,98,'com/ophone/MiniPlayer/OnlineMusicActivity'),(64,99,'com/ophone/MiniPlayer/MainActivity'),(65,100,'com/ophone/MiniPlayer/MainActivity'),(66,103,'com/ophone/MiniPlayer/MainActivity'),(67,104,'com/ophone/MiniPlayer/lyricsactivity'),(68,108,'com/ophone/MiniPlayer/PlayingListActivity'),(69,112,'com/ophone/MiniPlayer/PlayingListActivity'),(70,113,'com/ophone/MiniPlayer/MyPlayerService'),(71,115,'com/ophone/MiniPlayer/MusicFeedActivity'),(72,116,'com/ophone/MiniPlayer/MyPlayerService'),(73,117,'com/ophone/MiniPlayer/MusicActivity'),(74,118,'com/ophone/MiniPlayer/PlayingListActivity'),(75,120,'com/xxx/yyy/MyService');
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
INSERT INTO `IData` VALUES (1,7,2),(2,11,3),(3,48,6),(4,49,7),(5,50,8),(6,51,9),(7,94,16),(8,110,18),(9,111,19);
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,13,'last_path'),(2,13,'last_file'),(3,13,'last_book'),(4,13,'show_mark'),(5,32,'last_path'),(6,32,'last_file'),(7,32,'last_book'),(8,32,'show_mark'),(9,37,'last_path'),(10,37,'last_book'),(11,37,'show_mark'),(12,39,'com.roiding.traffic.connection.id'),(13,42,'START_SERVICE_FROM_CRASH'),(14,45,'com.roiding.traffic.connection.id'),(15,47,'START_SERVICE_FROM_CRASH'),(16,55,'cmd'),(17,56,'song'),(18,56,'R.string'),(19,57,'cmd'),(20,59,'cmd'),(21,59,'pos'),(22,61,'cmd'),(23,62,'cmd'),(24,68,'songlist'),(25,68,'cmd'),(26,71,'song'),(27,71,'cmd'),(28,74,'song'),(29,74,'cmd'),(30,75,'songlist'),(31,75,'status'),(32,79,'cmd'),(33,79,'filename'),(34,85,'songlist'),(35,85,'cmd'),(36,90,'cmd'),(37,90,'flagrandom'),(38,91,'cmd'),(39,92,'cmd'),(40,92,'flagrepeat'),(41,95,'position'),(42,95,'song'),(43,95,'cmd'),(44,97,'cmd'),(45,97,'deleteplaylist'),(46,98,'R.string'),(47,101,'cmd'),(48,102,'cmd'),(49,102,'playlistname'),(50,105,'status'),(51,106,'lyricurlgoogle'),(52,106,'status'),(53,106,'lyricurllocal'),(54,107,'status'),(55,109,'cmd'),(56,109,'strURL'),(57,109,'strURllrc'),(58,114,'songlist'),(59,114,'cmd'),(60,119,'songlist'),(61,119,'cmd'),(62,121,'position'),(63,121,'song'),(64,121,'cmd');
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,1),(5,5,4),(6,6,5),(7,7,2),(8,8,2),(9,9,3),(10,10,4),(11,11,5),(12,12,1),(13,13,6),(14,13,2),(15,14,7),(16,15,1),(17,16,4),(18,17,6),(19,18,1),(20,19,7),(21,20,8),(22,21,6),(23,22,7),(24,23,8),(25,24,11),(26,24,10),(27,25,10),(28,25,11),(29,26,11),(30,26,10),(31,27,11),(32,27,10),(33,28,10),(34,28,11),(35,29,10),(36,29,11),(37,30,12),(38,31,12),(39,32,7),(40,33,13),(41,34,7),(42,35,13),(43,36,7),(44,37,12),(45,38,1),(46,39,9),(47,40,13),(48,41,9),(49,42,9),(50,43,9),(51,44,9),(52,45,9),(53,46,9),(54,47,9),(55,48,2),(56,49,3),(57,50,7),(58,51,15),(59,52,17),(60,53,18),(61,54,16),(62,55,14),(63,56,14),(64,57,17);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,4,1),(3,12,1),(4,15,1),(5,16,1),(6,18,1),(7,38,1),(8,39,3),(9,41,3),(10,42,3),(11,43,3),(12,44,3),(13,45,3),(14,46,3),(15,47,3);
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
INSERT INTO `IFData` VALUES (1,20,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(2,23,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(3,55,'http',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.lonelycatgames.Xplore'),(2,2,'com.lonelycatgames.Xplore'),(3,3,'mobi.thinkchange.fingerscannerlite'),(4,4,'mobi.thinkchange.fingerscannerlite'),(5,5,'mobi.thinkchange.fingerscannerlite'),(6,6,'mobi.thinkchange.fingerscannerlite'),(7,8,'mobi.thinkchange.fingerscannerlite'),(8,9,'mobi.thinkchange.fingerscannerlite'),(9,10,'mobi.thinkchange.fingerscannerlite'),(10,12,'com.comiccc'),(11,13,'com.comiccc'),(12,14,'com.comiccc'),(13,15,'com.comiccc'),(14,16,'lfr.ustc.ftp'),(15,17,'com.comiccc'),(16,18,'(.*)'),(17,19,'com.comiccc'),(18,20,''),(19,21,''),(20,22,'com.comiccc'),(21,23,'(.*)'),(22,24,'NULL-CONSTANT'),(23,25,'com.comiccc'),(24,26,'(.*)'),(25,27,'NULL-CONSTANT'),(26,28,''),(27,29,'com.comiccc'),(28,30,''),(29,31,'lfr.ustc.ftp'),(30,33,'(.*)'),(31,32,'com.comiccc'),(32,34,'NULL-CONSTANT'),(33,35,'lfr.ustc.ftp'),(34,36,'NULL-CONSTANT'),(35,38,'lfr.ustc.ftp'),(36,37,'com.comiccc'),(37,39,'org.netraffic'),(38,40,'lfr.ustc.ftp'),(39,41,'com.comiccc'),(40,42,'org.netraffic'),(41,43,'lfr.ustc.ftp'),(42,44,'com.comiccc'),(43,45,'org.netraffic'),(44,46,'lfr.ustc.ftp'),(45,47,'org.netraffic'),(46,52,'org.netraffic'),(47,53,'com.ophone.MiniPlayer'),(48,54,'com.ophone.MiniPlayer'),(49,56,'com.ophone.MiniPlayer'),(50,58,'com.ophone.MiniPlayer'),(51,60,'com.ophone.MiniPlayer'),(52,63,'com.ophone.MiniPlayer'),(53,64,'com.ophone.MiniPlayer'),(54,65,'com.ophone.MiniPlayer'),(55,66,'com.ophone.MiniPlayer'),(56,67,'com.ophone.MiniPlayer'),(57,69,'com.ophone.MiniPlayer'),(58,70,'com.ophone.MiniPlayer'),(59,72,'com.ophone.MiniPlayer'),(60,73,'com.ophone.MiniPlayer'),(61,76,'com.ophone.MiniPlayer'),(62,77,'com.ophone.MiniPlayer'),(63,78,'com.ophone.MiniPlayer'),(64,80,'com.ophone.MiniPlayer'),(65,81,'com.ophone.MiniPlayer'),(66,82,'com.ophone.MiniPlayer'),(67,83,'com.ophone.MiniPlayer'),(68,84,'com.ophone.MiniPlayer'),(69,86,'com.ophone.MiniPlayer'),(70,87,'com.ophone.MiniPlayer'),(71,88,'com.ophone.MiniPlayer'),(72,89,'com.ophone.MiniPlayer'),(73,93,'com.ophone.MiniPlayer'),(74,96,'com.ophone.MiniPlayer'),(75,98,'com.ophone.MiniPlayer'),(76,99,'com.ophone.MiniPlayer'),(77,100,'com.ophone.MiniPlayer'),(78,103,'com.ophone.MiniPlayer'),(79,104,'com.ophone.MiniPlayer'),(80,108,'com.ophone.MiniPlayer'),(81,112,'com.ophone.MiniPlayer'),(82,113,'com.ophone.MiniPlayer'),(83,115,'com.ophone.MiniPlayer'),(84,116,'com.ophone.MiniPlayer'),(85,117,'com.ophone.MiniPlayer'),(86,118,'com.ophone.MiniPlayer'),(87,120,'com.ophone.MiniPlayer');
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,3,0),(3,4,0),(4,5,0),(5,6,0),(6,9,0),(7,12,0),(8,13,0),(9,14,0),(10,15,0),(11,16,0),(12,17,0),(13,26,0),(14,27,0),(15,28,0),(16,37,0),(17,38,0),(18,39,0),(19,40,0),(20,40,0),(21,46,0),(22,47,0),(23,47,0),(24,14,0),(25,16,0),(26,12,0),(27,13,0),(28,48,0),(29,15,0),(30,49,0),(31,50,0),(32,50,0),(33,50,0),(34,49,0),(35,49,0),(36,51,0),(37,51,0),(38,52,0),(39,53,0),(40,51,0),(41,54,0),(42,55,0),(43,56,0),(44,57,0),(45,58,0),(46,59,0),(47,60,0),(48,63,0),(49,64,0),(50,65,0),(51,66,0),(52,67,0),(53,68,0),(54,69,0),(55,70,0),(56,70,0),(57,71,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,6,0,0),(6,7,0,0),(7,8,1,0),(8,9,0,0),(9,10,0,0),(10,11,0,0),(11,12,1,0),(12,13,0,0),(13,15,0,0),(14,16,0,0),(15,17,0,0),(16,18,0,0),(17,19,0,0),(18,20,1,0),(19,21,0,0),(20,20,1,0),(21,20,1,0),(22,22,0,0),(23,20,1,0),(24,20,1,0),(25,23,0,0),(26,24,1,0),(27,20,1,0),(28,24,1,0),(29,25,0,0),(30,24,1,0),(31,26,0,0),(32,27,0,0),(33,24,1,0),(34,24,1,0),(35,28,0,0),(36,24,1,0),(37,29,0,0),(38,30,0,0),(39,31,0,0),(40,32,0,0),(41,33,0,0),(42,34,0,0),(43,35,0,0),(44,36,0,0),(45,37,0,0),(46,38,0,0),(47,40,0,0),(48,41,1,0),(49,41,1,0),(50,42,1,0),(51,42,1,0),(52,43,0,0),(53,44,0,0),(54,45,0,0),(55,46,1,0),(56,47,0,0),(57,48,1,0),(58,50,0,0),(59,51,1,0),(60,52,0,0),(61,53,1,0),(62,55,1,0),(63,56,0,0),(64,57,0,0),(65,58,0,0),(66,59,0,0),(67,61,0,0),(68,62,1,0),(69,63,0,0),(70,64,0,0),(71,65,1,0),(72,66,0,0),(73,67,0,0),(74,68,1,0),(75,69,1,0),(76,70,0,0),(77,71,0,0),(78,72,0,0),(79,73,1,0),(80,74,0,0),(81,75,0,0),(82,76,0,0),(83,77,0,0),(84,80,0,0),(85,81,1,0),(86,82,0,0),(87,84,0,0),(88,85,0,0),(89,86,0,0),(90,87,1,0),(91,87,1,0),(92,87,1,0),(93,88,0,0),(94,89,1,0),(95,90,1,0),(96,91,0,0),(97,92,1,0),(98,93,0,0),(99,95,0,0),(100,96,0,0),(101,97,1,0),(102,98,1,0),(103,99,0,0),(104,100,0,0),(105,101,1,0),(106,102,1,0),(107,102,1,0),(108,103,0,0),(109,104,1,0),(110,105,1,0),(111,105,1,0),(112,106,0,0),(113,107,0,0),(114,108,1,0),(115,109,0,0),(116,110,0,0),(117,112,0,0),(118,113,0,0),(119,114,1,0),(120,115,0,0),(121,116,1,0);
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
INSERT INTO `PermissionStrings` VALUES (23,'android.permission.ACCESS_COARSE_LOCATION'),(28,'android.permission.ACCESS_FINE_LOCATION'),(8,'android.permission.ACCESS_NETWORK_STATE'),(16,'android.permission.ACCESS_WIFI_STATE'),(21,'android.permission.BROADCAST_PACKAGE_REMOVED'),(19,'android.permission.CHANGE_NETWORK_STATE'),(18,'android.permission.CHANGE_WIFI_STATE'),(9,'android.permission.DISABLE_KEYGUARD'),(13,'android.permission.INSTALL_PACKAGES'),(5,'android.permission.INTERNET'),(3,'android.permission.MODIFY_PHONE_STATE'),(26,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(24,'android.permission.READ_CONTACTS'),(1,'android.permission.READ_PHONE_STATE'),(27,'android.permission.READ_SMS'),(2,'android.permission.RECEIVE_BOOT_COMPLETED'),(17,'android.permission.RECEIVE_MMS'),(15,'android.permission.RECEIVE_SMS'),(25,'android.permission.RESTART_PACKAGES'),(14,'android.permission.SEND_SMS'),(11,'android.permission.VIBRATE'),(20,'android.permission.WAKE_LOCK'),(6,'android.permission.WRITE_APN_SETTINGS'),(7,'android.permission.WRITE_EXTERNAL_STORAGE'),(4,'android.permission.WRITE_SETTINGS'),(22,'android.permission.WRITE_SMS'),(12,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(10,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(2,NULL,NULL,'http://market.android.com/details?id=mobi.thinkchange.fingerscanner',NULL,NULL,NULL),(3,NULL,NULL,'http://android.thinkchange.mobi',NULL,NULL,NULL),(4,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(5,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'',NULL,NULL,NULL),(10,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(11,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL),(12,NULL,NULL,'content://sms/',NULL,NULL,NULL),(13,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(14,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(15,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(16,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(17,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(18,NULL,NULL,'http://mp3.baidu.com/m?f=ms&rf=idx&tn=baidump3&ct=134217728&lf=&rn=&lm=0&word=(.*)',NULL,NULL,NULL),(19,NULL,NULL,'NULL-CONSTANT(.*)',NULL,NULL,NULL),(20,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,5,1),(2,14,4),(3,39,5),(4,49,10),(5,54,11),(6,60,12),(7,78,13),(8,79,14),(9,83,15),(10,94,17),(11,111,20);
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,2,1),(10,2,2),(11,2,3),(12,2,5),(13,2,6),(14,2,7),(15,2,8),(16,2,9),(17,2,10),(18,2,11),(19,2,12),(20,3,1),(21,3,2),(22,3,5),(23,3,7),(24,3,10),(25,3,12),(26,3,13),(27,3,14),(28,3,15),(29,4,1),(30,4,5),(31,4,6),(32,4,7),(33,4,8),(34,4,10),(35,4,12),(36,4,13),(37,4,14),(38,4,15),(39,4,17),(40,4,16),(41,4,19),(42,4,18),(43,4,20),(44,5,17),(45,5,16),(46,5,1),(47,5,5),(48,5,7),(49,5,10),(50,5,12),(51,5,13),(52,5,14),(53,5,15),(54,6,1),(55,6,2),(56,6,3),(57,6,4),(58,6,5),(59,6,6),(60,6,7),(61,6,8),(62,6,13),(63,6,14),(64,6,15),(65,6,21),(66,6,23),(67,6,22),(68,6,25),(69,6,24),(70,6,27),(71,6,26),(72,6,28);
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

-- Dump completed on 2015-10-09  0:41:14
