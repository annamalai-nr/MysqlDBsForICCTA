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
) ENGINE=InnoDB AUTO_INCREMENT=1822 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,26,28,2,NULL),(2,28,28,2,NULL),(3,30,28,2,NULL),(4,33,28,2,NULL),(5,34,28,2,NULL),(6,36,28,2,NULL),(7,50,28,2,NULL),(8,51,28,2,NULL),(9,18,28,2,NULL),(10,20,28,2,NULL),(11,21,28,2,NULL),(12,23,28,2,NULL),(13,24,28,2,NULL),(14,27,28,2,NULL),(15,48,28,2,NULL),(16,49,28,2,NULL),(17,61,28,2,NULL),(18,71,28,2,NULL),(19,90,28,2,NULL),(20,91,28,2,NULL),(21,92,28,2,NULL),(22,85,28,2,NULL),(23,95,28,2,NULL),(24,119,28,2,NULL),(25,68,28,2,NULL),(26,109,28,2,NULL),(27,121,28,2,NULL),(28,57,28,2,NULL),(29,59,28,2,NULL),(30,62,28,2,NULL),(31,79,28,2,NULL),(32,97,28,2,NULL),(33,102,28,2,NULL),(34,114,28,2,NULL),(35,55,28,2,NULL),(36,74,28,2,NULL),(37,101,28,2,NULL),(38,75,28,2,NULL),(39,105,28,2,NULL),(40,106,28,2,NULL),(41,107,28,2,NULL),(42,42,35,2,NULL),(43,26,1,2,NULL),(44,28,1,2,NULL),(45,30,1,2,NULL),(46,33,1,2,NULL),(47,34,1,2,NULL),(48,36,1,2,NULL),(49,50,1,2,NULL),(50,51,1,2,NULL),(51,26,3,2,NULL),(52,28,3,2,NULL),(53,30,3,2,NULL),(54,33,3,2,NULL),(55,34,3,2,NULL),(56,36,3,2,NULL),(57,50,3,2,NULL),(58,51,3,2,NULL),(59,26,4,2,NULL),(60,28,4,2,NULL),(61,30,4,2,NULL),(62,33,4,2,NULL),(63,34,4,2,NULL),(64,36,4,2,NULL),(65,50,4,2,NULL),(66,51,4,2,NULL),(67,26,6,2,NULL),(68,28,6,2,NULL),(69,30,6,2,NULL),(70,33,6,2,NULL),(71,34,6,2,NULL),(72,36,6,2,NULL),(73,50,6,2,NULL),(74,51,6,2,NULL),(75,26,9,2,NULL),(76,28,9,2,NULL),(77,30,9,2,NULL),(78,33,9,2,NULL),(79,34,9,2,NULL),(80,36,9,2,NULL),(81,50,9,2,NULL),(82,51,9,2,NULL),(83,26,5,2,NULL),(84,28,5,2,NULL),(85,30,5,2,NULL),(86,33,5,2,NULL),(87,34,5,2,NULL),(88,36,5,2,NULL),(89,50,5,2,NULL),(90,51,5,2,NULL),(91,26,12,2,NULL),(92,28,12,2,NULL),(93,30,12,2,NULL),(94,33,12,2,NULL),(95,34,12,2,NULL),(96,36,12,2,NULL),(97,50,12,2,NULL),(98,51,12,2,NULL),(99,26,13,2,NULL),(100,28,13,2,NULL),(101,30,13,2,NULL),(102,33,13,2,NULL),(103,34,13,2,NULL),(104,36,13,2,NULL),(105,50,13,2,NULL),(106,51,13,2,NULL),(107,26,14,2,NULL),(108,28,14,2,NULL),(109,30,14,2,NULL),(110,33,14,2,NULL),(111,34,14,2,NULL),(112,36,14,2,NULL),(113,50,14,2,NULL),(114,51,14,2,NULL),(115,26,15,2,NULL),(116,28,15,2,NULL),(117,30,15,2,NULL),(118,33,15,2,NULL),(119,34,15,2,NULL),(120,36,15,2,NULL),(121,50,15,2,NULL),(122,51,15,2,NULL),(123,26,16,2,NULL),(124,28,16,2,NULL),(125,30,16,2,NULL),(126,33,16,2,NULL),(127,34,16,2,NULL),(128,36,16,2,NULL),(129,50,16,2,NULL),(130,51,16,2,NULL),(131,26,48,2,NULL),(132,28,48,2,NULL),(133,30,48,2,NULL),(134,33,48,2,NULL),(135,34,48,2,NULL),(136,36,48,2,NULL),(137,50,48,2,NULL),(138,51,48,2,NULL),(139,26,17,2,NULL),(140,28,17,2,NULL),(141,30,17,2,NULL),(142,33,17,2,NULL),(143,34,17,2,NULL),(144,36,17,2,NULL),(145,50,17,2,NULL),(146,51,17,2,NULL),(147,26,26,2,NULL),(148,28,26,2,NULL),(149,30,26,2,NULL),(150,33,26,2,NULL),(151,34,26,2,NULL),(152,36,26,2,NULL),(153,50,26,2,NULL),(154,51,26,2,NULL),(155,26,27,2,NULL),(156,28,27,2,NULL),(157,30,27,2,NULL),(158,33,27,2,NULL),(159,34,27,2,NULL),(160,36,27,2,NULL),(161,50,27,2,NULL),(162,51,27,2,NULL),(163,26,50,2,NULL),(164,28,50,2,NULL),(165,30,50,2,NULL),(166,33,50,2,NULL),(167,34,50,2,NULL),(168,36,50,2,NULL),(169,50,50,2,NULL),(170,51,50,2,NULL),(171,26,37,2,NULL),(172,28,37,2,NULL),(173,30,37,2,NULL),(174,33,37,2,NULL),(175,34,37,2,NULL),(176,36,37,2,NULL),(177,50,37,2,NULL),(178,51,37,2,NULL),(179,26,38,2,NULL),(180,28,38,2,NULL),(181,30,38,2,NULL),(182,33,38,2,NULL),(183,34,38,2,NULL),(184,36,38,2,NULL),(185,50,38,2,NULL),(186,51,38,2,NULL),(187,26,40,2,NULL),(188,28,40,2,NULL),(189,30,40,2,NULL),(190,33,40,2,NULL),(191,34,40,2,NULL),(192,36,40,2,NULL),(193,50,40,2,NULL),(194,51,40,2,NULL),(195,26,51,2,NULL),(196,28,51,2,NULL),(197,30,51,2,NULL),(198,33,51,2,NULL),(199,34,51,2,NULL),(200,36,51,2,NULL),(201,50,51,2,NULL),(202,51,51,2,NULL),(203,26,39,2,NULL),(204,28,39,2,NULL),(205,30,39,2,NULL),(206,33,39,2,NULL),(207,34,39,2,NULL),(208,36,39,2,NULL),(209,50,39,2,NULL),(210,51,39,2,NULL),(211,26,46,2,NULL),(212,28,46,2,NULL),(213,30,46,2,NULL),(214,33,46,2,NULL),(215,34,46,2,NULL),(216,36,46,2,NULL),(217,50,46,2,NULL),(218,51,46,2,NULL),(219,26,47,2,NULL),(220,28,47,2,NULL),(221,30,47,2,NULL),(222,33,47,2,NULL),(223,34,47,2,NULL),(224,36,47,2,NULL),(225,50,47,2,NULL),(226,51,47,2,NULL),(227,26,49,2,NULL),(228,28,49,2,NULL),(229,30,49,2,NULL),(230,33,49,2,NULL),(231,34,49,2,NULL),(232,36,49,2,NULL),(233,50,49,2,NULL),(234,51,49,2,NULL),(235,26,52,2,NULL),(236,28,52,2,NULL),(237,30,52,2,NULL),(238,33,52,2,NULL),(239,34,52,2,NULL),(240,36,52,2,NULL),(241,50,52,2,NULL),(242,51,52,2,NULL),(243,26,53,2,NULL),(244,28,53,2,NULL),(245,30,53,2,NULL),(246,33,53,2,NULL),(247,34,53,2,NULL),(248,36,53,2,NULL),(249,50,53,2,NULL),(250,51,53,2,NULL),(251,26,54,2,NULL),(252,28,54,2,NULL),(253,30,54,2,NULL),(254,33,54,2,NULL),(255,34,54,2,NULL),(256,36,54,2,NULL),(257,50,54,2,NULL),(258,51,54,2,NULL),(259,26,55,2,NULL),(260,28,55,2,NULL),(261,30,55,2,NULL),(262,33,55,2,NULL),(263,34,55,2,NULL),(264,36,55,2,NULL),(265,50,55,2,NULL),(266,51,55,2,NULL),(267,26,56,2,NULL),(268,28,56,2,NULL),(269,30,56,2,NULL),(270,33,56,2,NULL),(271,34,56,2,NULL),(272,36,56,2,NULL),(273,50,56,2,NULL),(274,51,56,2,NULL),(275,26,57,2,NULL),(276,28,57,2,NULL),(277,30,57,2,NULL),(278,33,57,2,NULL),(279,34,57,2,NULL),(280,36,57,2,NULL),(281,50,57,2,NULL),(282,51,57,2,NULL),(283,26,58,2,NULL),(284,28,58,2,NULL),(285,30,58,2,NULL),(286,33,58,2,NULL),(287,34,58,2,NULL),(288,36,58,2,NULL),(289,50,58,2,NULL),(290,51,58,2,NULL),(291,26,59,2,NULL),(292,28,59,2,NULL),(293,30,59,2,NULL),(294,33,59,2,NULL),(295,34,59,2,NULL),(296,36,59,2,NULL),(297,50,59,2,NULL),(298,51,59,2,NULL),(299,26,60,2,NULL),(300,28,60,2,NULL),(301,30,60,2,NULL),(302,33,60,2,NULL),(303,34,60,2,NULL),(304,36,60,2,NULL),(305,50,60,2,NULL),(306,51,60,2,NULL),(307,26,63,2,NULL),(308,28,63,2,NULL),(309,30,63,2,NULL),(310,33,63,2,NULL),(311,34,63,2,NULL),(312,36,63,2,NULL),(313,50,63,2,NULL),(314,51,63,2,NULL),(315,26,64,2,NULL),(316,28,64,2,NULL),(317,30,64,2,NULL),(318,33,64,2,NULL),(319,34,64,2,NULL),(320,36,64,2,NULL),(321,50,64,2,NULL),(322,51,64,2,NULL),(323,26,65,2,NULL),(324,28,65,2,NULL),(325,30,65,2,NULL),(326,33,65,2,NULL),(327,34,65,2,NULL),(328,36,65,2,NULL),(329,50,65,2,NULL),(330,51,65,2,NULL),(331,26,66,2,NULL),(332,28,66,2,NULL),(333,30,66,2,NULL),(334,33,66,2,NULL),(335,34,66,2,NULL),(336,36,66,2,NULL),(337,50,66,2,NULL),(338,51,66,2,NULL),(339,26,67,2,NULL),(340,28,67,2,NULL),(341,30,67,2,NULL),(342,33,67,2,NULL),(343,34,67,2,NULL),(344,36,67,2,NULL),(345,50,67,2,NULL),(346,51,67,2,NULL),(347,26,68,2,NULL),(348,28,68,2,NULL),(349,30,68,2,NULL),(350,33,68,2,NULL),(351,34,68,2,NULL),(352,36,68,2,NULL),(353,50,68,2,NULL),(354,51,68,2,NULL),(355,26,69,2,NULL),(356,28,69,2,NULL),(357,30,69,2,NULL),(358,33,69,2,NULL),(359,34,69,2,NULL),(360,36,69,2,NULL),(361,50,69,2,NULL),(362,51,69,2,NULL),(363,26,70,2,NULL),(364,28,70,2,NULL),(365,30,70,2,NULL),(366,33,70,2,NULL),(367,34,70,2,NULL),(368,36,70,2,NULL),(369,50,70,2,NULL),(370,51,70,2,NULL),(371,26,71,2,NULL),(372,28,71,2,NULL),(373,30,71,2,NULL),(374,33,71,2,NULL),(375,34,71,2,NULL),(376,36,71,2,NULL),(377,50,71,2,NULL),(378,51,71,2,NULL),(379,47,35,2,NULL),(380,18,37,2,NULL),(381,20,37,2,NULL),(382,21,37,2,NULL),(383,23,37,2,NULL),(384,24,37,2,NULL),(385,27,37,2,NULL),(386,48,37,2,NULL),(387,49,37,2,NULL),(388,61,37,2,NULL),(389,71,37,2,NULL),(390,90,37,2,NULL),(391,91,37,2,NULL),(392,92,37,2,NULL),(393,85,37,2,NULL),(394,95,37,2,NULL),(395,119,37,2,NULL),(396,68,37,2,NULL),(397,109,37,2,NULL),(398,121,37,2,NULL),(399,57,37,2,NULL),(400,59,37,2,NULL),(401,62,37,2,NULL),(402,79,37,2,NULL),(403,97,37,2,NULL),(404,102,37,2,NULL),(405,114,37,2,NULL),(406,55,37,2,NULL),(407,74,37,2,NULL),(408,101,37,2,NULL),(409,75,37,2,NULL),(410,105,37,2,NULL),(411,106,37,2,NULL),(412,107,37,2,NULL),(413,52,25,2,NULL),(414,52,36,2,NULL),(415,52,45,2,NULL),(416,18,38,2,NULL),(417,20,38,2,NULL),(418,21,38,2,NULL),(419,23,38,2,NULL),(420,24,38,2,NULL),(421,27,38,2,NULL),(422,48,38,2,NULL),(423,49,38,2,NULL),(424,61,38,2,NULL),(425,71,38,2,NULL),(426,90,38,2,NULL),(427,91,38,2,NULL),(428,92,38,2,NULL),(429,85,38,2,NULL),(430,95,38,2,NULL),(431,119,38,2,NULL),(432,68,38,2,NULL),(433,109,38,2,NULL),(434,121,38,2,NULL),(435,57,38,2,NULL),(436,59,38,2,NULL),(437,62,38,2,NULL),(438,79,38,2,NULL),(439,97,38,2,NULL),(440,102,38,2,NULL),(441,114,38,2,NULL),(442,55,38,2,NULL),(443,74,38,2,NULL),(444,101,38,2,NULL),(445,75,38,2,NULL),(446,105,38,2,NULL),(447,106,38,2,NULL),(448,107,38,2,NULL),(449,18,40,2,NULL),(450,20,40,2,NULL),(451,21,40,2,NULL),(452,23,40,2,NULL),(453,24,40,2,NULL),(454,27,40,2,NULL),(455,48,40,2,NULL),(456,49,40,2,NULL),(457,61,40,2,NULL),(458,71,40,2,NULL),(459,90,40,2,NULL),(460,91,40,2,NULL),(461,92,40,2,NULL),(462,85,40,2,NULL),(463,95,40,2,NULL),(464,119,40,2,NULL),(465,68,40,2,NULL),(466,109,40,2,NULL),(467,121,40,2,NULL),(468,57,40,2,NULL),(469,59,40,2,NULL),(470,62,40,2,NULL),(471,79,40,2,NULL),(472,97,40,2,NULL),(473,102,40,2,NULL),(474,114,40,2,NULL),(475,55,40,2,NULL),(476,74,40,2,NULL),(477,101,40,2,NULL),(478,75,40,2,NULL),(479,105,40,2,NULL),(480,106,40,2,NULL),(481,107,40,2,NULL),(482,18,51,2,NULL),(483,20,51,2,NULL),(484,21,51,2,NULL),(485,23,51,2,NULL),(486,24,51,2,NULL),(487,27,51,2,NULL),(488,48,51,2,NULL),(489,49,51,2,NULL),(490,61,51,2,NULL),(491,71,51,2,NULL),(492,90,51,2,NULL),(493,91,51,2,NULL),(494,92,51,2,NULL),(495,85,51,2,NULL),(496,95,51,2,NULL),(497,119,51,2,NULL),(498,68,51,2,NULL),(499,109,51,2,NULL),(500,121,51,2,NULL),(501,57,51,2,NULL),(502,59,51,2,NULL),(503,62,51,2,NULL),(504,79,51,2,NULL),(505,97,51,2,NULL),(506,102,51,2,NULL),(507,114,51,2,NULL),(508,55,51,2,NULL),(509,74,51,2,NULL),(510,101,51,2,NULL),(511,75,51,2,NULL),(512,105,51,2,NULL),(513,106,51,2,NULL),(514,107,51,2,NULL),(515,3,8,2,NULL),(516,5,10,2,NULL),(517,8,7,2,NULL),(518,9,10,2,NULL),(519,18,5,2,NULL),(520,20,5,2,NULL),(521,21,5,2,NULL),(522,23,5,2,NULL),(523,24,5,2,NULL),(524,27,5,2,NULL),(525,48,5,2,NULL),(526,49,5,2,NULL),(527,61,5,2,NULL),(528,71,5,2,NULL),(529,90,5,2,NULL),(530,91,5,2,NULL),(531,92,5,2,NULL),(532,85,5,2,NULL),(533,95,5,2,NULL),(534,119,5,2,NULL),(535,68,5,2,NULL),(536,109,5,2,NULL),(537,121,5,2,NULL),(538,57,5,2,NULL),(539,59,5,2,NULL),(540,62,5,2,NULL),(541,79,5,2,NULL),(542,97,5,2,NULL),(543,102,5,2,NULL),(544,114,5,2,NULL),(545,55,5,2,NULL),(546,74,5,2,NULL),(547,101,5,2,NULL),(548,75,5,2,NULL),(549,105,5,2,NULL),(550,106,5,2,NULL),(551,107,5,2,NULL),(552,6,10,2,NULL),(553,18,12,2,NULL),(554,20,12,2,NULL),(555,21,12,2,NULL),(556,23,12,2,NULL),(557,24,12,2,NULL),(558,27,12,2,NULL),(559,48,12,2,NULL),(560,49,12,2,NULL),(561,61,12,2,NULL),(562,71,12,2,NULL),(563,90,12,2,NULL),(564,91,12,2,NULL),(565,92,12,2,NULL),(566,85,12,2,NULL),(567,95,12,2,NULL),(568,119,12,2,NULL),(569,68,12,2,NULL),(570,109,12,2,NULL),(571,121,12,2,NULL),(572,57,12,2,NULL),(573,59,12,2,NULL),(574,62,12,2,NULL),(575,79,12,2,NULL),(576,97,12,2,NULL),(577,102,12,2,NULL),(578,114,12,2,NULL),(579,55,12,2,NULL),(580,74,12,2,NULL),(581,101,12,2,NULL),(582,75,12,2,NULL),(583,105,12,2,NULL),(584,106,12,2,NULL),(585,107,12,2,NULL),(586,18,13,2,NULL),(587,20,13,2,NULL),(588,21,13,2,NULL),(589,23,13,2,NULL),(590,24,13,2,NULL),(591,27,13,2,NULL),(592,48,13,2,NULL),(593,49,13,2,NULL),(594,61,13,2,NULL),(595,71,13,2,NULL),(596,90,13,2,NULL),(597,91,13,2,NULL),(598,92,13,2,NULL),(599,85,13,2,NULL),(600,95,13,2,NULL),(601,119,13,2,NULL),(602,68,13,2,NULL),(603,109,13,2,NULL),(604,121,13,2,NULL),(605,57,13,2,NULL),(606,59,13,2,NULL),(607,62,13,2,NULL),(608,79,13,2,NULL),(609,97,13,2,NULL),(610,102,13,2,NULL),(611,114,13,2,NULL),(612,55,13,2,NULL),(613,74,13,2,NULL),(614,101,13,2,NULL),(615,75,13,2,NULL),(616,105,13,2,NULL),(617,106,13,2,NULL),(618,107,13,2,NULL),(619,10,2,2,NULL),(620,10,11,2,NULL),(621,10,62,2,NULL),(622,18,14,2,NULL),(623,20,14,2,NULL),(624,21,14,2,NULL),(625,23,14,2,NULL),(626,24,14,2,NULL),(627,27,14,2,NULL),(628,48,14,2,NULL),(629,49,14,2,NULL),(630,61,14,2,NULL),(631,71,14,2,NULL),(632,90,14,2,NULL),(633,91,14,2,NULL),(634,92,14,2,NULL),(635,85,14,2,NULL),(636,95,14,2,NULL),(637,119,14,2,NULL),(638,68,14,2,NULL),(639,109,14,2,NULL),(640,121,14,2,NULL),(641,57,14,2,NULL),(642,59,14,2,NULL),(643,62,14,2,NULL),(644,79,14,2,NULL),(645,97,14,2,NULL),(646,102,14,2,NULL),(647,114,14,2,NULL),(648,55,14,2,NULL),(649,74,14,2,NULL),(650,101,14,2,NULL),(651,75,14,2,NULL),(652,105,14,2,NULL),(653,106,14,2,NULL),(654,107,14,2,NULL),(655,4,2,2,NULL),(656,4,11,2,NULL),(657,4,62,2,NULL),(658,18,15,2,NULL),(659,20,15,2,NULL),(660,21,15,2,NULL),(661,23,15,2,NULL),(662,24,15,2,NULL),(663,27,15,2,NULL),(664,48,15,2,NULL),(665,49,15,2,NULL),(666,61,15,2,NULL),(667,71,15,2,NULL),(668,90,15,2,NULL),(669,91,15,2,NULL),(670,92,15,2,NULL),(671,85,15,2,NULL),(672,95,15,2,NULL),(673,119,15,2,NULL),(674,68,15,2,NULL),(675,109,15,2,NULL),(676,121,15,2,NULL),(677,57,15,2,NULL),(678,59,15,2,NULL),(679,62,15,2,NULL),(680,79,15,2,NULL),(681,97,15,2,NULL),(682,102,15,2,NULL),(683,114,15,2,NULL),(684,55,15,2,NULL),(685,74,15,2,NULL),(686,101,15,2,NULL),(687,75,15,2,NULL),(688,105,15,2,NULL),(689,106,15,2,NULL),(690,107,15,2,NULL),(691,18,16,2,NULL),(692,20,16,2,NULL),(693,21,16,2,NULL),(694,23,16,2,NULL),(695,24,16,2,NULL),(696,27,16,2,NULL),(697,48,16,2,NULL),(698,49,16,2,NULL),(699,61,16,2,NULL),(700,71,16,2,NULL),(701,90,16,2,NULL),(702,91,16,2,NULL),(703,92,16,2,NULL),(704,85,16,2,NULL),(705,95,16,2,NULL),(706,119,16,2,NULL),(707,68,16,2,NULL),(708,109,16,2,NULL),(709,121,16,2,NULL),(710,57,16,2,NULL),(711,59,16,2,NULL),(712,62,16,2,NULL),(713,79,16,2,NULL),(714,97,16,2,NULL),(715,102,16,2,NULL),(716,114,16,2,NULL),(717,55,16,2,NULL),(718,74,16,2,NULL),(719,101,16,2,NULL),(720,75,16,2,NULL),(721,105,16,2,NULL),(722,106,16,2,NULL),(723,107,16,2,NULL),(724,18,48,2,NULL),(725,20,48,2,NULL),(726,21,48,2,NULL),(727,23,48,2,NULL),(728,24,48,2,NULL),(729,27,48,2,NULL),(730,48,48,2,NULL),(731,49,48,2,NULL),(732,61,48,2,NULL),(733,71,48,2,NULL),(734,90,48,2,NULL),(735,91,48,2,NULL),(736,92,48,2,NULL),(737,85,48,2,NULL),(738,95,48,2,NULL),(739,119,48,2,NULL),(740,68,48,2,NULL),(741,109,48,2,NULL),(742,121,48,2,NULL),(743,57,48,2,NULL),(744,59,48,2,NULL),(745,62,48,2,NULL),(746,79,48,2,NULL),(747,97,48,2,NULL),(748,102,48,2,NULL),(749,114,48,2,NULL),(750,55,48,2,NULL),(751,74,48,2,NULL),(752,101,48,2,NULL),(753,75,48,2,NULL),(754,105,48,2,NULL),(755,106,48,2,NULL),(756,107,48,2,NULL),(757,80,2,2,NULL),(758,80,11,2,NULL),(759,80,62,2,NULL),(760,18,52,2,NULL),(761,20,52,2,NULL),(762,21,52,2,NULL),(763,23,52,2,NULL),(764,24,52,2,NULL),(765,27,52,2,NULL),(766,48,52,2,NULL),(767,49,52,2,NULL),(768,61,52,2,NULL),(769,71,52,2,NULL),(770,90,52,2,NULL),(771,91,52,2,NULL),(772,92,52,2,NULL),(773,85,52,2,NULL),(774,95,52,2,NULL),(775,119,52,2,NULL),(776,68,52,2,NULL),(777,109,52,2,NULL),(778,121,52,2,NULL),(779,57,52,2,NULL),(780,59,52,2,NULL),(781,62,52,2,NULL),(782,79,52,2,NULL),(783,97,52,2,NULL),(784,102,52,2,NULL),(785,114,52,2,NULL),(786,55,52,2,NULL),(787,74,52,2,NULL),(788,101,52,2,NULL),(789,75,52,2,NULL),(790,105,52,2,NULL),(791,106,52,2,NULL),(792,107,52,2,NULL),(793,54,58,2,NULL),(794,65,55,2,NULL),(795,66,56,2,NULL),(796,76,59,2,NULL),(797,116,61,2,NULL),(798,18,53,2,NULL),(799,20,53,2,NULL),(800,21,53,2,NULL),(801,23,53,2,NULL),(802,24,53,2,NULL),(803,27,53,2,NULL),(804,48,53,2,NULL),(805,49,53,2,NULL),(806,61,53,2,NULL),(807,71,53,2,NULL),(808,90,53,2,NULL),(809,91,53,2,NULL),(810,92,53,2,NULL),(811,85,53,2,NULL),(812,95,53,2,NULL),(813,119,53,2,NULL),(814,68,53,2,NULL),(815,109,53,2,NULL),(816,121,53,2,NULL),(817,57,53,2,NULL),(818,59,53,2,NULL),(819,62,53,2,NULL),(820,79,53,2,NULL),(821,97,53,2,NULL),(822,102,53,2,NULL),(823,114,53,2,NULL),(824,55,53,2,NULL),(825,74,53,2,NULL),(826,101,53,2,NULL),(827,75,53,2,NULL),(828,105,53,2,NULL),(829,106,53,2,NULL),(830,107,53,2,NULL),(831,60,56,2,NULL),(832,86,55,2,NULL),(833,99,53,2,NULL),(834,108,58,2,NULL),(835,113,61,2,NULL),(836,118,58,2,NULL),(837,61,1,2,NULL),(838,71,1,2,NULL),(839,90,1,2,NULL),(840,91,1,2,NULL),(841,92,1,2,NULL),(842,61,3,2,NULL),(843,71,3,2,NULL),(844,90,3,2,NULL),(845,91,3,2,NULL),(846,92,3,2,NULL),(847,61,4,2,NULL),(848,71,4,2,NULL),(849,90,4,2,NULL),(850,91,4,2,NULL),(851,92,4,2,NULL),(852,61,6,2,NULL),(853,71,6,2,NULL),(854,90,6,2,NULL),(855,91,6,2,NULL),(856,92,6,2,NULL),(857,61,9,2,NULL),(858,71,9,2,NULL),(859,90,9,2,NULL),(860,91,9,2,NULL),(861,92,9,2,NULL),(862,61,17,2,NULL),(863,71,17,2,NULL),(864,90,17,2,NULL),(865,91,17,2,NULL),(866,92,17,2,NULL),(867,61,26,2,NULL),(868,71,26,2,NULL),(869,90,26,2,NULL),(870,91,26,2,NULL),(871,92,26,2,NULL),(872,61,27,2,NULL),(873,71,27,2,NULL),(874,90,27,2,NULL),(875,91,27,2,NULL),(876,92,27,2,NULL),(877,61,50,2,NULL),(878,71,50,2,NULL),(879,90,50,2,NULL),(880,91,50,2,NULL),(881,92,50,2,NULL),(882,61,39,2,NULL),(883,71,39,2,NULL),(884,90,39,2,NULL),(885,91,39,2,NULL),(886,92,39,2,NULL),(887,18,54,2,NULL),(888,20,54,2,NULL),(889,21,54,2,NULL),(890,23,54,2,NULL),(891,24,54,2,NULL),(892,27,54,2,NULL),(893,48,54,2,NULL),(894,49,54,2,NULL),(895,61,46,2,NULL),(896,71,46,2,NULL),(897,90,46,2,NULL),(898,91,46,2,NULL),(899,92,46,2,NULL),(900,61,47,2,NULL),(901,71,47,2,NULL),(902,90,47,2,NULL),(903,91,47,2,NULL),(904,92,47,2,NULL),(905,61,49,2,NULL),(906,71,49,2,NULL),(907,90,49,2,NULL),(908,91,49,2,NULL),(909,92,49,2,NULL),(910,61,55,2,NULL),(911,71,55,2,NULL),(912,90,55,2,NULL),(913,91,55,2,NULL),(914,92,55,2,NULL),(915,85,54,2,NULL),(916,95,54,2,NULL),(917,119,54,2,NULL),(918,61,56,2,NULL),(919,71,56,2,NULL),(920,90,56,2,NULL),(921,91,56,2,NULL),(922,92,56,2,NULL),(923,61,57,2,NULL),(924,71,57,2,NULL),(925,90,57,2,NULL),(926,91,57,2,NULL),(927,92,57,2,NULL),(928,68,54,2,NULL),(929,109,54,2,NULL),(930,121,54,2,NULL),(931,61,58,2,NULL),(932,71,58,2,NULL),(933,90,58,2,NULL),(934,91,58,2,NULL),(935,92,58,2,NULL),(936,57,54,2,NULL),(937,59,54,2,NULL),(938,62,54,2,NULL),(939,79,54,2,NULL),(940,97,54,2,NULL),(941,102,54,2,NULL),(942,114,54,2,NULL),(943,61,59,2,NULL),(944,71,59,2,NULL),(945,90,59,2,NULL),(946,91,59,2,NULL),(947,92,59,2,NULL),(948,55,54,2,NULL),(949,74,54,2,NULL),(950,101,54,2,NULL),(951,61,60,2,NULL),(952,71,60,2,NULL),(953,90,60,2,NULL),(954,91,60,2,NULL),(955,92,60,2,NULL),(956,75,54,2,NULL),(957,105,54,2,NULL),(958,106,54,2,NULL),(959,107,54,2,NULL),(960,61,63,2,NULL),(961,71,63,2,NULL),(962,90,63,2,NULL),(963,91,63,2,NULL),(964,92,63,2,NULL),(965,61,64,2,NULL),(966,71,64,2,NULL),(967,90,64,2,NULL),(968,91,64,2,NULL),(969,92,64,2,NULL),(970,61,65,2,NULL),(971,71,65,2,NULL),(972,90,65,2,NULL),(973,91,65,2,NULL),(974,92,65,2,NULL),(975,61,66,2,NULL),(976,71,66,2,NULL),(977,90,66,2,NULL),(978,91,66,2,NULL),(979,92,66,2,NULL),(980,61,67,2,NULL),(981,71,67,2,NULL),(982,90,67,2,NULL),(983,91,67,2,NULL),(984,92,67,2,NULL),(985,61,68,2,NULL),(986,71,68,2,NULL),(987,90,68,2,NULL),(988,91,68,2,NULL),(989,92,68,2,NULL),(990,61,69,2,NULL),(991,71,69,2,NULL),(992,90,69,2,NULL),(993,91,69,2,NULL),(994,92,69,2,NULL),(995,61,70,2,NULL),(996,71,70,2,NULL),(997,90,70,2,NULL),(998,91,70,2,NULL),(999,92,70,2,NULL),(1000,61,71,2,NULL),(1001,71,71,2,NULL),(1002,90,71,2,NULL),(1003,91,71,2,NULL),(1004,92,71,2,NULL),(1005,53,58,2,NULL),(1006,69,56,2,NULL),(1007,89,59,2,NULL),(1008,85,1,2,NULL),(1009,95,1,2,NULL),(1010,119,1,2,NULL),(1011,85,3,2,NULL),(1012,95,3,2,NULL),(1013,119,3,2,NULL),(1014,85,4,2,NULL),(1015,95,4,2,NULL),(1016,119,4,2,NULL),(1017,85,6,2,NULL),(1018,95,6,2,NULL),(1019,119,6,2,NULL),(1020,85,9,2,NULL),(1021,95,9,2,NULL),(1022,119,9,2,NULL),(1023,85,17,2,NULL),(1024,95,17,2,NULL),(1025,119,17,2,NULL),(1026,85,26,2,NULL),(1027,95,26,2,NULL),(1028,119,26,2,NULL),(1029,85,27,2,NULL),(1030,95,27,2,NULL),(1031,119,27,2,NULL),(1032,85,50,2,NULL),(1033,95,50,2,NULL),(1034,119,50,2,NULL),(1035,85,39,2,NULL),(1036,95,39,2,NULL),(1037,119,39,2,NULL),(1038,18,55,2,NULL),(1039,20,55,2,NULL),(1040,21,55,2,NULL),(1041,23,55,2,NULL),(1042,24,55,2,NULL),(1043,27,55,2,NULL),(1044,48,55,2,NULL),(1045,49,55,2,NULL),(1046,85,46,2,NULL),(1047,95,46,2,NULL),(1048,119,46,2,NULL),(1049,85,47,2,NULL),(1050,95,47,2,NULL),(1051,119,47,2,NULL),(1052,85,49,2,NULL),(1053,95,49,2,NULL),(1054,119,49,2,NULL),(1055,85,56,2,NULL),(1056,95,56,2,NULL),(1057,119,56,2,NULL),(1058,85,57,2,NULL),(1059,95,57,2,NULL),(1060,119,57,2,NULL),(1061,68,55,2,NULL),(1062,109,55,2,NULL),(1063,121,55,2,NULL),(1064,85,58,2,NULL),(1065,95,58,2,NULL),(1066,119,58,2,NULL),(1067,57,55,2,NULL),(1068,59,55,2,NULL),(1069,62,55,2,NULL),(1070,79,55,2,NULL),(1071,97,55,2,NULL),(1072,102,55,2,NULL),(1073,114,55,2,NULL),(1074,85,59,2,NULL),(1075,95,59,2,NULL),(1076,119,59,2,NULL),(1077,55,55,2,NULL),(1078,74,55,2,NULL),(1079,101,55,2,NULL),(1080,85,60,2,NULL),(1081,95,60,2,NULL),(1082,119,60,2,NULL),(1083,75,55,2,NULL),(1084,105,55,2,NULL),(1085,106,55,2,NULL),(1086,107,55,2,NULL),(1087,85,63,2,NULL),(1088,95,63,2,NULL),(1089,119,63,2,NULL),(1090,85,64,2,NULL),(1091,95,64,2,NULL),(1092,119,64,2,NULL),(1093,85,65,2,NULL),(1094,95,65,2,NULL),(1095,119,65,2,NULL),(1096,85,66,2,NULL),(1097,95,66,2,NULL),(1098,119,66,2,NULL),(1099,85,67,2,NULL),(1100,95,67,2,NULL),(1101,119,67,2,NULL),(1102,85,68,2,NULL),(1103,95,68,2,NULL),(1104,119,68,2,NULL),(1105,85,69,2,NULL),(1106,95,69,2,NULL),(1107,119,69,2,NULL),(1108,85,70,2,NULL),(1109,95,70,2,NULL),(1110,119,70,2,NULL),(1111,85,71,2,NULL),(1112,95,71,2,NULL),(1113,119,71,2,NULL),(1114,77,55,2,NULL),(1115,78,58,2,NULL),(1116,98,57,2,NULL),(1117,104,59,2,NULL),(1118,18,56,2,NULL),(1119,20,56,2,NULL),(1120,21,56,2,NULL),(1121,23,56,2,NULL),(1122,24,56,2,NULL),(1123,27,56,2,NULL),(1124,48,56,2,NULL),(1125,49,56,2,NULL),(1126,68,56,2,NULL),(1127,109,56,2,NULL),(1128,121,56,2,NULL),(1129,57,56,2,NULL),(1130,59,56,2,NULL),(1131,18,1,2,NULL),(1132,62,56,2,NULL),(1133,20,1,2,NULL),(1134,79,56,2,NULL),(1135,21,1,2,NULL),(1136,97,56,2,NULL),(1137,23,1,2,NULL),(1138,102,56,2,NULL),(1139,24,1,2,NULL),(1140,114,56,2,NULL),(1141,27,1,2,NULL),(1142,55,56,2,NULL),(1143,48,1,2,NULL),(1144,74,56,2,NULL),(1145,49,1,2,NULL),(1146,101,56,2,NULL),(1147,68,1,2,NULL),(1148,75,56,2,NULL),(1149,109,1,2,NULL),(1150,105,56,2,NULL),(1151,121,1,2,NULL),(1152,106,56,2,NULL),(1153,57,1,2,NULL),(1154,107,56,2,NULL),(1155,59,1,2,NULL),(1156,58,58,2,NULL),(1157,62,1,2,NULL),(1158,67,59,2,NULL),(1159,79,1,2,NULL),(1160,84,53,2,NULL),(1161,97,1,2,NULL),(1162,117,55,2,NULL),(1163,102,1,2,NULL),(1164,68,3,2,NULL),(1165,114,1,2,NULL),(1166,109,3,2,NULL),(1167,55,1,2,NULL),(1168,121,3,2,NULL),(1169,74,1,2,NULL),(1170,68,4,2,NULL),(1171,101,1,2,NULL),(1172,109,4,2,NULL),(1173,75,1,2,NULL),(1174,121,4,2,NULL),(1175,105,1,2,NULL),(1176,68,6,2,NULL),(1177,106,1,2,NULL),(1178,109,6,2,NULL),(1179,107,1,2,NULL),(1180,121,6,2,NULL),(1181,18,3,2,NULL),(1182,68,9,2,NULL),(1183,20,3,2,NULL),(1184,109,9,2,NULL),(1185,21,3,2,NULL),(1186,121,9,2,NULL),(1187,23,3,2,NULL),(1188,68,17,2,NULL),(1189,24,3,2,NULL),(1190,109,17,2,NULL),(1191,27,3,2,NULL),(1192,121,17,2,NULL),(1193,48,3,2,NULL),(1194,68,26,2,NULL),(1195,49,3,2,NULL),(1196,109,26,2,NULL),(1197,57,3,2,NULL),(1198,121,26,2,NULL),(1199,59,3,2,NULL),(1200,68,27,2,NULL),(1201,62,3,2,NULL),(1202,109,27,2,NULL),(1203,79,3,2,NULL),(1204,121,27,2,NULL),(1205,97,3,2,NULL),(1206,102,3,2,NULL),(1207,68,50,2,NULL),(1208,114,3,2,NULL),(1209,109,50,2,NULL),(1210,55,3,2,NULL),(1211,121,50,2,NULL),(1212,74,3,2,NULL),(1213,68,39,2,NULL),(1214,101,3,2,NULL),(1215,109,39,2,NULL),(1216,75,3,2,NULL),(1217,121,39,2,NULL),(1218,105,3,2,NULL),(1219,18,57,2,NULL),(1220,106,3,2,NULL),(1221,20,57,2,NULL),(1222,107,3,2,NULL),(1223,21,57,2,NULL),(1224,1,2,2,NULL),(1225,23,57,2,NULL),(1226,1,11,2,NULL),(1227,24,57,2,NULL),(1228,1,62,2,NULL),(1229,27,57,2,NULL),(1230,18,4,2,NULL),(1231,48,57,2,NULL),(1232,20,4,2,NULL),(1233,49,57,2,NULL),(1234,21,4,2,NULL),(1235,68,46,2,NULL),(1236,23,4,2,NULL),(1237,109,46,2,NULL),(1238,24,4,2,NULL),(1239,121,46,2,NULL),(1240,27,4,2,NULL),(1241,68,47,2,NULL),(1242,48,4,2,NULL),(1243,109,47,2,NULL),(1244,49,4,2,NULL),(1245,121,47,2,NULL),(1246,57,4,2,NULL),(1247,68,49,2,NULL),(1248,59,4,2,NULL),(1249,109,49,2,NULL),(1250,62,4,2,NULL),(1251,121,49,2,NULL),(1252,79,4,2,NULL),(1253,68,58,2,NULL),(1254,97,4,2,NULL),(1255,109,58,2,NULL),(1256,102,4,2,NULL),(1257,121,58,2,NULL),(1258,114,4,2,NULL),(1259,57,57,2,NULL),(1260,55,4,2,NULL),(1261,59,57,2,NULL),(1262,74,4,2,NULL),(1263,62,57,2,NULL),(1264,101,4,2,NULL),(1265,79,57,2,NULL),(1266,75,4,2,NULL),(1267,97,57,2,NULL),(1268,105,4,2,NULL),(1269,102,57,2,NULL),(1270,106,4,2,NULL),(1271,114,57,2,NULL),(1272,107,4,2,NULL),(1273,68,59,2,NULL),(1274,2,2,2,NULL),(1275,109,59,2,NULL),(1276,2,11,2,NULL),(1277,121,59,2,NULL),(1278,2,62,2,NULL),(1279,55,57,2,NULL),(1280,18,6,2,NULL),(1281,74,57,2,NULL),(1282,20,6,2,NULL),(1283,101,57,2,NULL),(1284,21,6,2,NULL),(1285,68,60,2,NULL),(1286,23,6,2,NULL),(1287,109,60,2,NULL),(1288,24,6,2,NULL),(1289,121,60,2,NULL),(1290,27,6,2,NULL),(1291,75,57,2,NULL),(1292,48,6,2,NULL),(1293,105,57,2,NULL),(1294,49,6,2,NULL),(1295,106,57,2,NULL),(1296,57,6,2,NULL),(1297,107,57,2,NULL),(1298,59,6,2,NULL),(1299,68,63,2,NULL),(1300,62,6,2,NULL),(1301,109,63,2,NULL),(1302,79,6,2,NULL),(1303,121,63,2,NULL),(1304,97,6,2,NULL),(1305,68,64,2,NULL),(1306,102,6,2,NULL),(1307,109,64,2,NULL),(1308,114,6,2,NULL),(1309,121,64,2,NULL),(1310,55,6,2,NULL),(1311,68,65,2,NULL),(1312,74,6,2,NULL),(1313,109,65,2,NULL),(1314,101,6,2,NULL),(1315,121,65,2,NULL),(1316,75,6,2,NULL),(1317,68,66,2,NULL),(1318,105,6,2,NULL),(1319,109,66,2,NULL),(1320,106,6,2,NULL),(1321,121,66,2,NULL),(1322,107,6,2,NULL),(1323,68,67,2,NULL),(1324,18,9,2,NULL),(1325,109,67,2,NULL),(1326,20,9,2,NULL),(1327,121,67,2,NULL),(1328,21,9,2,NULL),(1329,68,68,2,NULL),(1330,23,9,2,NULL),(1331,109,68,2,NULL),(1332,24,9,2,NULL),(1333,121,68,2,NULL),(1334,27,9,2,NULL),(1335,68,69,2,NULL),(1336,48,9,2,NULL),(1337,109,69,2,NULL),(1338,49,9,2,NULL),(1339,121,69,2,NULL),(1340,57,9,2,NULL),(1341,68,70,2,NULL),(1342,59,9,2,NULL),(1343,109,70,2,NULL),(1344,62,9,2,NULL),(1345,121,70,2,NULL),(1346,79,9,2,NULL),(1347,68,71,2,NULL),(1348,97,9,2,NULL),(1349,109,71,2,NULL),(1350,102,9,2,NULL),(1351,121,71,2,NULL),(1352,114,9,2,NULL),(1353,56,59,2,NULL),(1354,55,9,2,NULL),(1355,70,55,2,NULL),(1356,74,9,2,NULL),(1357,88,61,2,NULL),(1358,101,9,2,NULL),(1359,93,59,2,NULL),(1360,75,9,2,NULL),(1361,115,56,2,NULL),(1362,105,9,2,NULL),(1363,57,17,2,NULL),(1364,106,9,2,NULL),(1365,59,17,2,NULL),(1366,107,9,2,NULL),(1367,62,17,2,NULL),(1368,79,17,2,NULL),(1369,97,17,2,NULL),(1370,102,17,2,NULL),(1371,114,17,2,NULL),(1372,57,26,2,NULL),(1373,59,26,2,NULL),(1374,62,26,2,NULL),(1375,79,26,2,NULL),(1376,97,26,2,NULL),(1377,102,26,2,NULL),(1378,114,26,2,NULL),(1379,57,27,2,NULL),(1380,59,27,2,NULL),(1381,62,27,2,NULL),(1382,79,27,2,NULL),(1383,97,27,2,NULL),(1384,102,27,2,NULL),(1385,114,27,2,NULL),(1386,57,50,2,NULL),(1387,59,50,2,NULL),(1388,62,50,2,NULL),(1389,79,50,2,NULL),(1390,97,50,2,NULL),(1391,102,50,2,NULL),(1392,114,50,2,NULL),(1393,57,39,2,NULL),(1394,59,39,2,NULL),(1395,62,39,2,NULL),(1396,79,39,2,NULL),(1397,97,39,2,NULL),(1398,102,39,2,NULL),(1399,114,39,2,NULL),(1400,18,58,2,NULL),(1401,20,58,2,NULL),(1402,21,58,2,NULL),(1403,23,58,2,NULL),(1404,24,58,2,NULL),(1405,27,58,2,NULL),(1406,48,58,2,NULL),(1407,49,58,2,NULL),(1408,57,46,2,NULL),(1409,59,46,2,NULL),(1410,62,46,2,NULL),(1411,79,46,2,NULL),(1412,97,46,2,NULL),(1413,102,46,2,NULL),(1414,114,46,2,NULL),(1415,57,47,2,NULL),(1416,59,47,2,NULL),(1417,62,47,2,NULL),(1418,79,47,2,NULL),(1419,97,47,2,NULL),(1420,102,47,2,NULL),(1421,114,47,2,NULL),(1422,57,49,2,NULL),(1423,59,49,2,NULL),(1424,62,49,2,NULL),(1425,79,49,2,NULL),(1426,97,49,2,NULL),(1427,102,49,2,NULL),(1428,114,49,2,NULL),(1429,57,59,2,NULL),(1430,59,59,2,NULL),(1431,62,59,2,NULL),(1432,79,59,2,NULL),(1433,97,59,2,NULL),(1434,102,59,2,NULL),(1435,114,59,2,NULL),(1436,55,58,2,NULL),(1437,74,58,2,NULL),(1438,101,58,2,NULL),(1439,57,60,2,NULL),(1440,59,60,2,NULL),(1441,62,60,2,NULL),(1442,79,60,2,NULL),(1443,97,60,2,NULL),(1444,102,60,2,NULL),(1445,114,60,2,NULL),(1446,75,58,2,NULL),(1447,105,58,2,NULL),(1448,106,58,2,NULL),(1449,107,58,2,NULL),(1450,57,63,2,NULL),(1451,59,63,2,NULL),(1452,62,63,2,NULL),(1453,79,63,2,NULL),(1454,97,63,2,NULL),(1455,102,63,2,NULL),(1456,114,63,2,NULL),(1457,57,64,2,NULL),(1458,59,64,2,NULL),(1459,62,64,2,NULL),(1460,79,64,2,NULL),(1461,97,64,2,NULL),(1462,102,64,2,NULL),(1463,114,64,2,NULL),(1464,57,65,2,NULL),(1465,59,65,2,NULL),(1466,62,65,2,NULL),(1467,79,65,2,NULL),(1468,97,65,2,NULL),(1469,102,65,2,NULL),(1470,114,65,2,NULL),(1471,57,66,2,NULL),(1472,59,66,2,NULL),(1473,62,66,2,NULL),(1474,79,66,2,NULL),(1475,97,66,2,NULL),(1476,102,66,2,NULL),(1477,114,66,2,NULL),(1478,57,67,2,NULL),(1479,59,67,2,NULL),(1480,62,67,2,NULL),(1481,79,67,2,NULL),(1482,97,67,2,NULL),(1483,102,67,2,NULL),(1484,114,67,2,NULL),(1485,57,68,2,NULL),(1486,59,68,2,NULL),(1487,62,68,2,NULL),(1488,79,68,2,NULL),(1489,97,68,2,NULL),(1490,102,68,2,NULL),(1491,114,68,2,NULL),(1492,57,69,2,NULL),(1493,59,69,2,NULL),(1494,62,69,2,NULL),(1495,79,69,2,NULL),(1496,97,69,2,NULL),(1497,102,69,2,NULL),(1498,114,69,2,NULL),(1499,57,70,2,NULL),(1500,59,70,2,NULL),(1501,62,70,2,NULL),(1502,79,70,2,NULL),(1503,97,70,2,NULL),(1504,102,70,2,NULL),(1505,114,70,2,NULL),(1506,57,71,2,NULL),(1507,59,71,2,NULL),(1508,62,71,2,NULL),(1509,79,71,2,NULL),(1510,97,71,2,NULL),(1511,102,71,2,NULL),(1512,114,71,2,NULL),(1513,72,55,2,NULL),(1514,73,58,2,NULL),(1515,82,56,2,NULL),(1516,83,61,2,NULL),(1517,100,53,2,NULL),(1518,55,17,2,NULL),(1519,74,17,2,NULL),(1520,101,17,2,NULL),(1521,55,26,2,NULL),(1522,74,26,2,NULL),(1523,101,26,2,NULL),(1524,55,27,2,NULL),(1525,74,27,2,NULL),(1526,101,27,2,NULL),(1527,55,50,2,NULL),(1528,74,50,2,NULL),(1529,101,50,2,NULL),(1530,55,39,2,NULL),(1531,74,39,2,NULL),(1532,101,39,2,NULL),(1533,18,59,2,NULL),(1534,20,59,2,NULL),(1535,21,59,2,NULL),(1536,23,59,2,NULL),(1537,24,59,2,NULL),(1538,27,59,2,NULL),(1539,48,59,2,NULL),(1540,49,59,2,NULL),(1541,55,46,2,NULL),(1542,74,46,2,NULL),(1543,101,46,2,NULL),(1544,55,47,2,NULL),(1545,74,47,2,NULL),(1546,101,47,2,NULL),(1547,55,49,2,NULL),(1548,74,49,2,NULL),(1549,101,49,2,NULL),(1550,55,60,2,NULL),(1551,74,60,2,NULL),(1552,101,60,2,NULL),(1553,75,59,2,NULL),(1554,105,59,2,NULL),(1555,106,59,2,NULL),(1556,107,59,2,NULL),(1557,55,63,2,NULL),(1558,74,63,2,NULL),(1559,101,63,2,NULL),(1560,55,64,2,NULL),(1561,74,64,2,NULL),(1562,101,64,2,NULL),(1563,55,65,2,NULL),(1564,74,65,2,NULL),(1565,101,65,2,NULL),(1566,55,66,2,NULL),(1567,74,66,2,NULL),(1568,101,66,2,NULL),(1569,55,67,2,NULL),(1570,74,67,2,NULL),(1571,101,67,2,NULL),(1572,55,68,2,NULL),(1573,74,68,2,NULL),(1574,101,68,2,NULL),(1575,55,69,2,NULL),(1576,74,69,2,NULL),(1577,101,69,2,NULL),(1578,55,70,2,NULL),(1579,74,70,2,NULL),(1580,101,70,2,NULL),(1581,55,71,2,NULL),(1582,74,71,2,NULL),(1583,101,71,2,NULL),(1584,63,56,2,NULL),(1585,81,55,2,NULL),(1586,96,59,2,NULL),(1587,112,58,2,NULL),(1588,18,60,2,NULL),(1589,20,60,2,NULL),(1590,21,60,2,NULL),(1591,23,60,2,NULL),(1592,24,60,2,NULL),(1593,27,60,2,NULL),(1594,48,60,2,NULL),(1595,49,60,2,NULL),(1596,75,60,2,NULL),(1597,105,60,2,NULL),(1598,106,60,2,NULL),(1599,107,60,2,NULL),(1600,75,17,2,NULL),(1601,105,17,2,NULL),(1602,18,17,2,NULL),(1603,106,17,2,NULL),(1604,20,17,2,NULL),(1605,107,17,2,NULL),(1606,21,17,2,NULL),(1607,75,26,2,NULL),(1608,23,17,2,NULL),(1609,105,26,2,NULL),(1610,24,17,2,NULL),(1611,106,26,2,NULL),(1612,27,17,2,NULL),(1613,107,26,2,NULL),(1614,48,17,2,NULL),(1615,75,27,2,NULL),(1616,49,17,2,NULL),(1617,105,27,2,NULL),(1618,106,27,2,NULL),(1619,19,24,2,NULL),(1620,107,27,2,NULL),(1621,22,19,2,NULL),(1622,75,50,2,NULL),(1623,37,20,2,NULL),(1624,105,50,2,NULL),(1625,15,22,2,NULL),(1626,106,50,2,NULL),(1627,25,22,2,NULL),(1628,107,50,2,NULL),(1629,44,25,2,NULL),(1630,75,39,2,NULL),(1631,44,36,2,NULL),(1632,105,39,2,NULL),(1633,44,45,2,NULL),(1634,106,39,2,NULL),(1635,18,26,2,NULL),(1636,107,39,2,NULL),(1637,20,26,2,NULL),(1638,75,46,2,NULL),(1639,21,26,2,NULL),(1640,105,46,2,NULL),(1641,23,26,2,NULL),(1642,106,46,2,NULL),(1643,24,26,2,NULL),(1644,107,46,2,NULL),(1645,27,26,2,NULL),(1646,75,47,2,NULL),(1647,48,26,2,NULL),(1648,105,47,2,NULL),(1649,49,26,2,NULL),(1650,106,47,2,NULL),(1651,18,27,2,NULL),(1652,107,47,2,NULL),(1653,20,27,2,NULL),(1654,75,49,2,NULL),(1655,21,27,2,NULL),(1656,105,49,2,NULL),(1657,23,27,2,NULL),(1658,106,49,2,NULL),(1659,24,27,2,NULL),(1660,107,49,2,NULL),(1661,27,27,2,NULL),(1662,75,63,2,NULL),(1663,48,27,2,NULL),(1664,105,63,2,NULL),(1665,49,27,2,NULL),(1666,106,63,2,NULL),(1667,107,63,2,NULL),(1668,18,50,2,NULL),(1669,75,64,2,NULL),(1670,20,50,2,NULL),(1671,105,64,2,NULL),(1672,21,50,2,NULL),(1673,106,64,2,NULL),(1674,23,50,2,NULL),(1675,107,64,2,NULL),(1676,24,50,2,NULL),(1677,75,65,2,NULL),(1678,27,50,2,NULL),(1679,105,65,2,NULL),(1680,48,50,2,NULL),(1681,106,65,2,NULL),(1682,49,50,2,NULL),(1683,107,65,2,NULL),(1684,75,66,2,NULL),(1685,105,66,2,NULL),(1686,106,66,2,NULL),(1687,107,66,2,NULL),(1688,75,67,2,NULL),(1689,105,67,2,NULL),(1690,106,67,2,NULL),(1691,107,67,2,NULL),(1692,75,68,2,NULL),(1693,105,68,2,NULL),(1694,106,68,2,NULL),(1695,107,68,2,NULL),(1696,75,69,2,NULL),(1697,105,69,2,NULL),(1698,106,69,2,NULL),(1699,107,69,2,NULL),(1700,75,70,2,NULL),(1701,105,70,2,NULL),(1702,106,70,2,NULL),(1703,107,70,2,NULL),(1704,75,71,2,NULL),(1705,105,71,2,NULL),(1706,106,71,2,NULL),(1707,107,71,2,NULL),(1708,18,63,2,NULL),(1709,20,63,2,NULL),(1710,21,63,2,NULL),(1711,23,63,2,NULL),(1712,24,63,2,NULL),(1713,27,63,2,NULL),(1714,48,63,2,NULL),(1715,49,63,2,NULL),(1716,120,2,2,NULL),(1717,120,11,2,NULL),(1718,120,62,2,NULL),(1719,18,64,2,NULL),(1720,20,64,2,NULL),(1721,21,64,2,NULL),(1722,23,64,2,NULL),(1723,24,64,2,NULL),(1724,27,64,2,NULL),(1725,48,64,2,NULL),(1726,49,64,2,NULL),(1727,18,65,2,NULL),(1728,20,65,2,NULL),(1729,21,65,2,NULL),(1730,23,65,2,NULL),(1731,24,65,2,NULL),(1732,27,65,2,NULL),(1733,48,65,2,NULL),(1734,49,65,2,NULL),(1735,18,66,2,NULL),(1736,20,66,2,NULL),(1737,21,66,2,NULL),(1738,23,66,2,NULL),(1739,24,66,2,NULL),(1740,27,66,2,NULL),(1741,48,66,2,NULL),(1742,49,66,2,NULL),(1743,18,67,2,NULL),(1744,20,67,2,NULL),(1745,21,67,2,NULL),(1746,23,67,2,NULL),(1747,24,67,2,NULL),(1748,27,67,2,NULL),(1749,48,67,2,NULL),(1750,49,67,2,NULL),(1751,18,68,2,NULL),(1752,20,68,2,NULL),(1753,21,68,2,NULL),(1754,23,68,2,NULL),(1755,24,68,2,NULL),(1756,27,68,2,NULL),(1757,48,68,2,NULL),(1758,49,68,2,NULL),(1759,18,69,2,NULL),(1760,20,69,2,NULL),(1761,21,69,2,NULL),(1762,23,69,2,NULL),(1763,24,69,2,NULL),(1764,27,69,2,NULL),(1765,48,69,2,NULL),(1766,49,69,2,NULL),(1767,18,70,2,NULL),(1768,20,70,2,NULL),(1769,21,70,2,NULL),(1770,23,70,2,NULL),(1771,24,70,2,NULL),(1772,27,70,2,NULL),(1773,48,70,2,NULL),(1774,49,70,2,NULL),(1775,18,71,2,NULL),(1776,20,71,2,NULL),(1777,21,71,2,NULL),(1778,23,71,2,NULL),(1779,24,71,2,NULL),(1780,27,71,2,NULL),(1781,48,71,2,NULL),(1782,49,71,2,NULL),(1783,16,42,2,NULL),(1784,38,44,2,NULL),(1785,40,41,2,NULL),(1786,18,39,2,NULL),(1787,20,39,2,NULL),(1788,21,39,2,NULL),(1789,23,39,2,NULL),(1790,24,39,2,NULL),(1791,27,39,2,NULL),(1792,48,39,2,NULL),(1793,49,39,2,NULL),(1794,46,39,2,NULL),(1795,18,46,2,NULL),(1796,20,46,2,NULL),(1797,21,46,2,NULL),(1798,23,46,2,NULL),(1799,24,46,2,NULL),(1800,27,46,2,NULL),(1801,48,46,2,NULL),(1802,49,46,2,NULL),(1803,18,47,2,NULL),(1804,20,47,2,NULL),(1805,21,47,2,NULL),(1806,23,47,2,NULL),(1807,24,47,2,NULL),(1808,27,47,2,NULL),(1809,48,47,2,NULL),(1810,49,47,2,NULL),(1811,18,49,2,NULL),(1812,20,49,2,NULL),(1813,21,49,2,NULL),(1814,23,49,2,NULL),(1815,24,49,2,NULL),(1816,27,49,2,NULL),(1817,48,49,2,NULL),(1818,49,49,2,NULL),(1819,35,25,2,NULL),(1820,35,36,2,NULL),(1821,35,45,2,NULL);
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

-- Dump completed on 2015-10-12  3:31:49
