-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_10
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
INSERT INTO `ActionStrings` VALUES (12,'android.appwidget.action.APPWIDGET_UPDATE'),(2,'android.intent.action.BOOT_COMPLETED'),(16,'android.intent.action.CHOOSER'),(18,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(17,'android.intent.action.MEDIA_SCANNER_FINISHED'),(8,'android.intent.action.PHONE_STATE'),(13,'android.intent.action.PICK'),(19,'android.intent.action.SEND'),(9,'android.intent.action.SIG_STR'),(11,'android.intent.action.VIEW'),(7,'android.net.conn.CONNECTIVITY_CHANGE'),(10,'android.provider.Telephony.SMS_RECEIVED'),(4,'android.service.wallpaper.WallpaperService'),(3,'com.lz.myservicestart'),(6,'com.smoothiefactory.djlive.LAUNCH_INSTRUCTIONS'),(5,'com.smoothiefactory.djlive.LAUNCH_SETTINGS'),(15,'com.test.sms.delivery'),(14,'com.test.sms.send');
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
INSERT INTO `Applications` VALUES (1,'com.tt.yy',1),(2,'com.joko.lightgrid',4),(3,'com.smoothiefactory.djlive',23),(4,'fishnoodle.silhouette',9),(5,'com.apk.op',2),(6,'com.comiccc',1),(7,'com.olivephone.cu',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(5,'android.intent.category.HOME'),(3,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(4,'android.intent.category.OPENABLE');
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
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.tt.yy.loginActivity'),(2,1,'com.tt.yy.ViewActivity'),(3,1,'com.xxx.yyy.MyService'),(4,1,'com.xxx.yyy.MyBoolService'),(5,1,'com.xxx.yyy.MyAlarmReceiver'),(6,2,'com.joko.lightgrid.SettingsActivity'),(7,2,'com.joko.lightgrid.ResetActivity'),(8,2,'com.joko.lightgrid.LightGrid'),(9,2,'com.xxx.yyy.MyService'),(10,3,'com.smoothiefactory.djlive.Settings'),(11,2,'com.xxx.yyy.MyBoolService'),(12,2,'com.xxx.yyy.MyAlarmReceiver'),(13,4,'fishnoodle.silhouette.WallpaperSettings'),(14,3,'com.smoothiefactory.djlive.InstructionsActivity'),(15,4,'fishnoodle.silhouette.WallpaperService'),(16,2,'com.xxx.yyy.NetWorkReceiver'),(17,4,'com.xxx.yyy.MyService'),(18,3,'com.smoothiefactory.djlive.DJWallpaper'),(19,2,'com.xxx.yyy.CustomBroadcastReceiver'),(20,4,'com.xxx.yyy.MyBoolService'),(21,3,'com.xxx.yyy.MyService'),(22,4,'com.xxx.yyy.MyAlarmReceiver'),(23,3,'com.xxx.yyy.MyBoolService'),(24,6,'com.comiccc.SplashActivity'),(25,5,'com.apk.op.Applause'),(26,4,'com.xxx.yyy.NetWorkReceiver'),(27,3,'com.xxx.yyy.MyAlarmReceiver'),(28,6,'com.comiccc.MainActivity'),(29,5,'com.apk.op.OptionActivity'),(30,4,'com.xxx.yyy.CustomBroadcastReceiver'),(31,6,'com.comiccc.ManageActivity'),(32,3,'com.xxx.yyy.NetWorkReceiver'),(33,5,'com.android.main.TANCActivity'),(34,6,'com.comiccc.ViewActivity'),(35,5,'com.android.main.MainService'),(36,6,'com.comiccc.AddComicActivity'),(37,3,'com.xxx.yyy.CustomBroadcastReceiver'),(38,5,'com.android.main.ActionReceiver'),(39,6,'com.comiccc.XxtFileBrowser'),(40,6,'com.comiccc.ManageCategory'),(41,5,'com.android.main.SmsReceiver'),(42,6,'com.comiccc.AboutActivity'),(43,6,'com.android.main.TANCActivity'),(44,6,'com.android.main.MainService'),(45,6,'com.android.main.ActionReceiver'),(46,6,'com.android.main.SmsReceiver'),(47,7,'com.olivephone.cu.XinHuaLaunch'),(48,7,'com.olivephone.cu.SearchActivity'),(49,7,'com.olivephone.cu.TextNewsActivity'),(50,7,'com.olivephone.cu.VideoNewsActivity'),(51,7,'com.olivephone.cu.SettingActivity'),(52,7,'com.olivephone.cu.ImageNewsActivity'),(53,7,'com.olivephone.cu.EnshrineActivity'),(54,7,'com.olivephone.cu.RSSNewsActivity'),(55,7,'com.olivephone.cu.DownLoadActivity'),(56,7,'com.olivephone.cu.SearchedNewsActivity'),(57,7,'com.olivephone.cu.ShowImageActivity'),(58,7,'com.olivephone.cu.EnshrineDetailActivity'),(59,7,'com.olivephone.cu.ShowVideoActivity'),(60,7,'com.olivephone.cu.VideoActivity'),(61,7,'com.olivephone.cu.ImportNewsActivity'),(62,7,'com.olivephone.cu.XHNewsActivity'),(63,7,'com.olivephone.cu.ImageDetailActivity'),(64,7,'com.olivephone.cu.EnshrineImageDetail'),(65,7,'com.olivephone.cu.EnshrineVideoDetail'),(66,7,'com.olivephone.cu.SearchedTextNewsActivity'),(67,7,'com.olivephone.cu.SearchedPicNewsActivity'),(68,7,'com.xxx.yyy.MyService'),(69,7,'com.olivephone.cu.LoadChannelService'),(70,7,'com.olivephone.cu.DeskWidget$UpdateService'),(71,7,'com.olivephone.cu.NewsNotifyService'),(72,7,'com.olivephone.cu.BootBroadcastReceiver'),(73,7,'com.xxx.yyy.MyBoolService'),(74,7,'com.xxx.yyy.MyAlarmReceiver'),(75,7,'com.xxx.yyy.NetWorkReceiver'),(76,7,'com.xxx.yyy.CustomBroadcastReceiver'),(77,7,'com.olivephone.cu.DeskWidget'),(78,5,'com.android.main.MainService$SMSReceiver'),(79,3,'com.smoothiefactory.djlive.AppUtils'),(80,6,'com.comiccc.ManageActivity$1'),(81,3,'com.smoothiefactory.djlive.DJWallpaper$DJEngine$1'),(82,6,'com.comiccc.MainActivity$2$2'),(83,6,'com.comiccc.AddComicActivity$3'),(84,6,'com.comiccc.AddComicActivity$4'),(85,6,'com.android.main.MainService$SMSReceiver'),(86,6,'com.comiccc.MainActivity$7'),(87,6,'com.comiccc.ManageActivity$2'),(88,6,'com.comiccc.MainActivity$6'),(89,7,'com.olivephone.cu.EnshrineActivity$6'),(90,7,'com.olivephone.cu.TextNewsActivity$26$1'),(91,7,'com.olivephone.cu.SettingActivity$1'),(92,7,'com.olivephone.cu.VideoNewsActivity$14'),(93,7,'com.olivephone.cu.VideoNewsActivity$2'),(94,7,'com.olivephone.cu.SettingActivity$22'),(95,7,'com.olivephone.cu.ImageNewsActivity$2'),(96,7,'com.olivephone.cu.SettingActivity$21'),(97,7,'com.olivephone.cu.TextNewsActivity$4'),(98,7,'com.olivephone.cu.DeskWidget$1'),(99,7,'com.olivephone.cu.ImageNewsActivity$19'),(100,7,'com.olivephone.cu.TextNewsActivity$5'),(101,7,'com.olivephone.cu.VideoNewsActivity$4'),(102,7,'com.olivephone.cu.TextNewsActivity$10$1'),(103,7,'com.olivephone.cu.VideoNewsActivity$9'),(104,7,'com.olivephone.cu.DownLoadActivity$10'),(105,7,'com.olivephone.cu.EnshrineActivity$3'),(106,7,'com.olivephone.cu.TextNewsActivity$24'),(107,7,'com.olivephone.cu.DownLoadActivity$1'),(108,7,'com.olivephone.cu.DownLoadActivity$15'),(109,7,'com.olivephone.cu.ImageNewsActivity$5'),(110,7,'com.olivephone.cu.RSSNewsActivity$7$1'),(111,7,'com.olivephone.cu.SettingActivity$4'),(112,7,'com.olivephone.cu.ImageDetailActivity$2$1$1'),(113,7,'com.olivephone.cu.SearchedNewsActivity$1'),(114,7,'com.olivephone.cu.SearchActivity$9'),(115,7,'com.olivephone.cu.TextNewsActivity$2'),(116,7,'com.olivephone.cu.SettingActivity$20'),(117,7,'com.olivephone.cu.EnshrineActivity$1'),(118,7,'com.olivephone.cu.ImageNewsActivity$16'),(119,7,'com.olivephone.cu.SearchActivity$1'),(120,7,'com.olivephone.cu.RSSNewsActivity$2'),(121,7,'com.olivephone.cu.SearchActivity$2'),(122,7,'com.olivephone.cu.SearchActivity$7'),(123,7,'com.olivephone.cu.DownLoadActivity$3'),(124,7,'com.olivephone.cu.SettingActivity$3'),(125,7,'com.olivephone.cu.EnshrineActivity$10'),(126,7,'com.olivephone.cu.ImportNewsActivity$1'),(127,7,'com.olivephone.cu.RSSNewsActivity$3'),(128,7,'com.olivephone.cu.DownLoadActivity$4'),(129,7,'com.olivephone.cu.VideoNewsActivity$3'),(130,7,'com.olivephone.cu.ImageNewsActivity$4'),(131,7,'com.olivephone.cu.ImageNewsActivity$17'),(132,7,'com.olivephone.cu.TextNewsActivity$25'),(133,7,'com.olivephone.cu.DownLoadActivity$14'),(134,7,'com.olivephone.cu.TextNewsActivity$15'),(135,7,'com.olivephone.cu.RSSNewsActivity$14'),(136,7,'com.olivephone.cu.EnshrineActivity$4'),(137,7,'com.olivephone.cu.VideoNewsActivity$5'),(138,7,'com.olivephone.cu.SearchActivity$6'),(139,7,'com.olivephone.cu.SettingActivity$2'),(140,7,'com.olivephone.cu.ImageNewsActivity$3'),(141,7,'com.olivephone.cu.TextNewsActivity$17'),(142,7,'com.olivephone.cu.SearchActivity$4'),(143,7,'com.olivephone.cu.EnshrineActivity$9'),(144,7,'com.olivephone.cu.TextNewsActivity$3'),(145,7,'com.olivephone.cu.ImageNewsActivity$15'),(146,7,'com.olivephone.cu.SearchActivity$8'),(147,7,'com.olivephone.cu.EnshrineActivity$11'),(148,7,'com.olivephone.cu.TextNewsActivity$23'),(149,7,'com.olivephone.cu.SettingActivity$6'),(150,7,'com.olivephone.cu.ImageNewsActivity$18$1'),(151,7,'com.olivephone.cu.VideoNewsActivity$18'),(152,7,'com.olivephone.cu.VideoNewsActivity$17'),(153,7,'com.olivephone.cu.VideoNewsActivity$19'),(154,7,'com.olivephone.cu.RSSNewsActivity$4'),(155,7,'com.olivephone.cu.DownLoadActivity$16'),(156,7,'com.olivephone.cu.DownLoadActivity$2'),(157,7,'com.olivephone.cu.SearchActivity$3'),(158,7,'com.olivephone.cu.EnshrineActivity$2');
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,2,'SID'),(2,25,'MatchSound'),(3,33,'url'),(4,29,'MatchSound'),(5,25,'Vibrate'),(6,29,'ChangeTheme'),(7,25,'GameMusic'),(8,29,'GameMusic'),(9,29,'Vibrate'),(10,33,'header'),(11,41,'pdus'),(12,33,'message'),(13,25,'ChangeTheme'),(14,43,'message'),(15,34,'last_path'),(16,28,'last_book'),(17,34,'last_book'),(18,43,'header'),(19,34,'show_mark'),(20,28,'last_path'),(21,28,'last_id'),(22,34,'last_file'),(23,46,'pdus'),(24,28,'last_file'),(25,43,'url'),(26,63,'img_url'),(27,58,'uri'),(28,62,'url'),(29,66,'newsurl'),(30,65,'videourl'),(31,57,'file_name'),(32,63,'img_title'),(33,60,'bigtitle'),(34,59,'file_name'),(35,64,'img_url'),(36,60,'videourl'),(37,62,'id'),(38,56,'keyword');
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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'s',0,NULL,NULL),(4,4,'r',1,NULL,NULL),(5,5,'r',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'s',1,12,NULL),(9,9,'s',0,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'r',1,NULL,NULL),(12,12,'r',1,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'s',1,12,NULL),(16,16,'r',1,NULL,NULL),(17,17,'s',0,NULL,NULL),(18,18,'s',1,12,NULL),(19,19,'r',1,NULL,NULL),(20,20,'r',1,NULL,NULL),(21,21,'s',0,NULL,NULL),(22,22,'r',1,NULL,NULL),(23,23,'r',1,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'r',1,NULL,NULL),(27,27,'r',1,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'r',1,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'r',1,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'s',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,38,'r',1,NULL,NULL),(38,37,'r',1,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'r',1,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'s',0,NULL,NULL),(45,45,'r',1,NULL,NULL),(46,46,'r',1,NULL,NULL),(47,47,'a',1,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'s',0,NULL,NULL),(69,69,'s',0,NULL,NULL),(70,70,'s',0,NULL,NULL),(71,71,'s',0,NULL,NULL),(72,72,'r',1,NULL,NULL),(73,73,'r',1,NULL,NULL),(74,74,'r',1,NULL,NULL),(75,75,'r',1,NULL,NULL),(76,76,'r',1,NULL,NULL),(77,77,'r',1,NULL,NULL),(78,78,'r',1,NULL,NULL),(79,81,'r',1,NULL,NULL),(80,85,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,3),(3,3,5),(4,4,1),(5,5,12),(6,6,16),(7,7,33),(8,8,35),(9,9,37),(10,10,33),(11,11,18),(12,11,10),(13,12,22),(14,13,32),(15,14,26),(16,15,10),(17,16,27),(18,17,35),(19,18,10),(20,19,25),(21,20,25),(22,21,31),(23,21,28),(24,22,28),(25,23,28),(26,24,10),(27,25,44),(28,26,43),(29,27,39),(30,27,28),(31,28,36),(32,28,28),(33,29,44),(34,30,36),(35,30,28),(36,31,34),(37,31,28),(38,32,28),(39,33,28),(40,34,45),(41,35,43),(42,36,28),(43,37,28),(44,37,31),(45,38,28),(46,39,62),(47,40,53),(48,41,49),(49,42,62),(50,43,51),(51,44,50),(52,45,50),(53,46,51),(54,47,52),(55,48,62),(56,49,51),(57,50,49),(58,51,77),(59,52,49),(60,53,74),(61,54,52),(62,55,49),(63,56,50),(64,57,49),(65,58,50),(66,59,55),(67,60,53),(68,61,49),(69,62,62),(70,63,55),(71,64,55),(72,65,52),(73,66,52),(74,67,54),(75,68,51),(76,69,63),(77,70,56),(78,71,53),(79,72,56),(80,73,48),(81,74,49),(82,75,72),(83,76,51),(84,77,53),(85,78,52),(86,79,48),(87,80,54),(88,81,48),(89,82,48),(90,83,55),(91,84,51),(92,85,53),(93,86,61),(94,87,54),(95,88,55),(96,89,50),(97,90,52),(98,91,52),(99,92,49),(100,93,53),(101,94,55),(102,95,47),(103,96,49),(104,97,55),(105,98,75),(106,99,54),(107,100,53),(108,101,56),(109,102,50),(110,103,77),(111,104,48),(112,105,50),(113,106,51),(114,107,52),(115,108,49),(116,109,48),(117,110,53),(118,111,49),(119,112,61),(120,113,52),(121,114,48),(122,115,53),(123,116,49),(124,117,55),(125,118,51),(126,119,52),(127,120,50),(128,121,61),(129,122,50),(130,123,50),(131,124,50),(132,125,47),(133,126,54),(134,127,55),(135,128,47),(136,129,55),(137,130,48),(138,131,53);
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
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<com.tt.yy.loginActivity: void onCreate(android.os.Bundle)>',8,'s',NULL),(2,3,'<com.xxx.yyy.MyService: void onCreate()>',33,'p',NULL),(3,5,'<com.xxx.yyy.MyAlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(4,1,'<com.tt.yy.loginActivity: void StartInstall()>',10,'a',NULL),(5,12,'<com.xxx.yyy.MyAlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(6,16,'<com.xxx.yyy.NetWorkReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',NULL),(7,33,'<com.android.main.TANCActivity: void doDefault(java.lang.String)>',5,'a',NULL),(8,35,'<com.android.main.MainService: int insertAndroidBookmark(java.lang.String,java.lang.String)>',7,'p',NULL),(9,38,'<com.android.main.ActionReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(10,33,'<com.android.main.TANCActivity: void gotoUrl(java.lang.String,java.lang.String,android.content.pm.PackageManager)>',9,'a',NULL),(11,79,'<com.smoothiefactory.djlive.AppUtils: com.smoothiefactory.djlive.SongData getSongDataFromUri(android.content.Context,android.net.Uri)>',7,'p',NULL),(12,22,'<com.xxx.yyy.MyAlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(13,32,'<com.xxx.yyy.NetWorkReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',NULL),(14,26,'<com.xxx.yyy.NetWorkReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',NULL),(15,10,'<com.smoothiefactory.djlive.Settings: void pickSong2()>',6,'a',NULL),(16,27,'<com.xxx.yyy.MyAlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(17,35,'<com.android.main.MainService: int insertAndroidBookmark(java.lang.String,java.lang.String)>',34,'p',NULL),(18,10,'<com.smoothiefactory.djlive.Settings: boolean onPreferenceClick(android.preference.Preference)>',20,'a',NULL),(19,25,'<com.apk.op.Applause: void showOptionDlg()>',12,'a',NULL),(20,25,'<com.apk.op.Applause: void showMoreApp(int)>',8,'a',NULL),(21,80,'<com.comiccc.ManageActivity$1: void onClick(android.view.View)>',6,'a',NULL),(22,28,'<com.comiccc.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(23,31,'<com.comiccc.ManageActivity: void changeComicCover()>',12,'a',NULL),(24,10,'<com.smoothiefactory.djlive.Settings: void pickSong1()>',6,'a',NULL),(25,44,'<com.android.main.MainService: int insertAndroidBookmark(java.lang.String,java.lang.String)>',34,'p',NULL),(26,43,'<com.android.main.TANCActivity: void doDefault(java.lang.String)>',5,'a',NULL),(27,82,'<com.comiccc.MainActivity$2$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',47,'a',NULL),(28,83,'<com.comiccc.AddComicActivity$3: void onClick(android.view.View)>',12,'a',NULL),(29,44,'<com.android.main.MainService: int insertAndroidBookmark(java.lang.String,java.lang.String)>',7,'p',NULL),(30,84,'<com.comiccc.AddComicActivity$4: void onClick(android.view.View)>',12,'a',NULL),(31,28,'<com.comiccc.MainActivity: void openSelectedComic()>',18,'a',NULL),(32,28,'<com.comiccc.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(33,31,'<com.comiccc.ManageActivity: void changeComicPath()>',12,'a',NULL),(34,45,'<com.android.main.ActionReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',NULL),(35,43,'<com.android.main.TANCActivity: void gotoUrl(java.lang.String,java.lang.String,android.content.pm.PackageManager)>',9,'a',NULL),(36,86,'<com.comiccc.MainActivity$7: void onClick(android.view.View)>',27,'a',NULL),(37,87,'<com.comiccc.ManageActivity$2: void onClick(android.view.View)>',6,'a',NULL),(38,88,'<com.comiccc.MainActivity$6: void onClick(android.view.View)>',7,'a',NULL),(39,62,'<com.olivephone.cu.XHNewsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(40,89,'<com.olivephone.cu.EnshrineActivity$6: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',22,'a',NULL),(41,90,'<com.olivephone.cu.TextNewsActivity$26$1: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(42,62,'<com.olivephone.cu.XHNewsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',24,'a',NULL),(43,91,'<com.olivephone.cu.SettingActivity$1: boolean onTouch(android.view.View,android.view.MotionEvent)>',11,'a',NULL),(44,92,'<com.olivephone.cu.VideoNewsActivity$14: void onClick(android.content.DialogInterface,int)>',7,'s',NULL),(45,93,'<com.olivephone.cu.VideoNewsActivity$2: boolean onTouch(android.view.View,android.view.MotionEvent)>',9,'a',NULL),(46,94,'<com.olivephone.cu.SettingActivity$22: boolean onTouch(android.view.View,android.view.MotionEvent)>',10,'a',NULL),(47,95,'<com.olivephone.cu.ImageNewsActivity$2: boolean onTouch(android.view.View,android.view.MotionEvent)>',9,'a',NULL),(48,62,'<com.olivephone.cu.XHNewsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(49,96,'<com.olivephone.cu.SettingActivity$21: boolean onTouch(android.view.View,android.view.MotionEvent)>',10,'a',NULL),(50,97,'<com.olivephone.cu.TextNewsActivity$4: boolean onTouch(android.view.View,android.view.MotionEvent)>',9,'a',NULL),(51,98,'<com.olivephone.cu.DeskWidget$1: void run()>',6,'s',NULL),(52,49,'<com.olivephone.cu.TextNewsActivity: void onActivityResult(int,int,android.content.Intent)>',9,'p',0),(53,74,'<com.xxx.yyy.MyAlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(54,99,'<com.olivephone.cu.ImageNewsActivity$19: void onClick(android.content.DialogInterface,int)>',7,'s',NULL),(55,100,'<com.olivephone.cu.TextNewsActivity$5: boolean onTouch(android.view.View,android.view.MotionEvent)>',9,'a',NULL),(56,101,'<com.olivephone.cu.VideoNewsActivity$4: boolean onTouch(android.view.View,android.view.MotionEvent)>',9,'a',NULL),(57,102,'<com.olivephone.cu.TextNewsActivity$10$1: void onClick(android.view.View)>',76,'a',NULL),(58,103,'<com.olivephone.cu.VideoNewsActivity$9: boolean onTouch(android.view.View,android.view.MotionEvent)>',17,'a',NULL),(59,104,'<com.olivephone.cu.DownLoadActivity$10: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',25,'a',NULL),(60,105,'<com.olivephone.cu.EnshrineActivity$3: boolean onTouch(android.view.View,android.view.MotionEvent)>',9,'a',NULL),(61,106,'<com.olivephone.cu.TextNewsActivity$24: boolean onTouch(android.view.View,android.view.MotionEvent)>',10,'a',NULL),(62,62,'<com.olivephone.cu.XHNewsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(63,107,'<com.olivephone.cu.DownLoadActivity$1: boolean onTouch(android.view.View,android.view.MotionEvent)>',9,'a',NULL),(64,108,'<com.olivephone.cu.DownLoadActivity$15: boolean onTouch(android.view.View,android.view.MotionEvent)>',10,'a',NULL),(65,99,'<com.olivephone.cu.ImageNewsActivity$19: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(66,109,'<com.olivephone.cu.ImageNewsActivity$5: boolean onTouch(android.view.View,android.view.MotionEvent)>',7,'a',NULL),(67,110,'<com.olivephone.cu.RSSNewsActivity$7$1: void onClick(android.view.View)>',53,'a',NULL),(68,111,'<com.olivephone.cu.SettingActivity$4: boolean onTouch(android.view.View,android.view.MotionEvent)>',11,'a',NULL),(69,112,'<com.olivephone.cu.ImageDetailActivity$2$1$1: void run()>',52,'a',NULL),(70,113,'<com.olivephone.cu.SearchedNewsActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',38,'a',NULL),(71,89,'<com.olivephone.cu.EnshrineActivity$6: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',34,'a',NULL),(72,113,'<com.olivephone.cu.SearchedNewsActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',58,'a',NULL),(73,114,'<com.olivephone.cu.SearchActivity$9: boolean onTouch(android.view.View,android.view.MotionEvent)>',10,'a',NULL),(74,115,'<com.olivephone.cu.TextNewsActivity$2: boolean onTouch(android.view.View,android.view.MotionEvent)>',9,'a',NULL),(75,72,'<com.olivephone.cu.BootBroadcastReceiver: void onReceive(android.content.Context,android.content.Intent)>',13,'a',NULL),(76,116,'<com.olivephone.cu.SettingActivity$20: boolean onTouch(android.view.View,android.view.MotionEvent)>',10,'a',NULL),(77,117,'<com.olivephone.cu.EnshrineActivity$1: boolean onTouch(android.view.View,android.view.MotionEvent)>',9,'a',NULL),(78,118,'<com.olivephone.cu.ImageNewsActivity$16: boolean onTouch(android.view.View,android.view.MotionEvent)>',10,'a',NULL),(79,119,'<com.olivephone.cu.SearchActivity$1: boolean onTouch(android.view.View,android.view.MotionEvent)>',9,'a',NULL),(80,120,'<com.olivephone.cu.RSSNewsActivity$2: boolean onTouch(android.view.View,android.view.MotionEvent)>',24,'a',NULL),(81,121,'<com.olivephone.cu.SearchActivity$2: boolean onTouch(android.view.View,android.view.MotionEvent)>',9,'a',NULL),(82,122,'<com.olivephone.cu.SearchActivity$7: boolean onTouch(android.view.View,android.view.MotionEvent)>',10,'a',NULL),(83,123,'<com.olivephone.cu.DownLoadActivity$3: boolean onTouch(android.view.View,android.view.MotionEvent)>',9,'a',NULL),(84,124,'<com.olivephone.cu.SettingActivity$3: boolean onTouch(android.view.View,android.view.MotionEvent)>',11,'a',NULL),(85,125,'<com.olivephone.cu.EnshrineActivity$10: boolean onTouch(android.view.View,android.view.MotionEvent)>',10,'a',NULL),(86,126,'<com.olivephone.cu.ImportNewsActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',25,'a',NULL),(87,127,'<com.olivephone.cu.RSSNewsActivity$3: boolean onTouch(android.view.View,android.view.MotionEvent)>',7,'a',NULL),(88,128,'<com.olivephone.cu.DownLoadActivity$4: boolean onTouch(android.view.View,android.view.MotionEvent)>',9,'a',NULL),(89,129,'<com.olivephone.cu.VideoNewsActivity$3: boolean onTouch(android.view.View,android.view.MotionEvent)>',9,'a',NULL),(90,130,'<com.olivephone.cu.ImageNewsActivity$4: boolean onTouch(android.view.View,android.view.MotionEvent)>',9,'a',NULL),(91,131,'<com.olivephone.cu.ImageNewsActivity$17: boolean onTouch(android.view.View,android.view.MotionEvent)>',10,'a',NULL),(92,132,'<com.olivephone.cu.TextNewsActivity$25: boolean onTouch(android.view.View,android.view.MotionEvent)>',10,'a',NULL),(93,89,'<com.olivephone.cu.EnshrineActivity$6: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',41,'a',NULL),(94,133,'<com.olivephone.cu.DownLoadActivity$14: boolean onTouch(android.view.View,android.view.MotionEvent)>',10,'a',NULL),(95,47,'<com.olivephone.cu.XinHuaLaunch: void onCreate(android.os.Bundle)>',23,'s',NULL),(96,134,'<com.olivephone.cu.TextNewsActivity$15: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(97,104,'<com.olivephone.cu.DownLoadActivity$10: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(98,75,'<com.xxx.yyy.NetWorkReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',NULL),(99,135,'<com.olivephone.cu.RSSNewsActivity$14: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(100,136,'<com.olivephone.cu.EnshrineActivity$4: boolean onTouch(android.view.View,android.view.MotionEvent)>',9,'a',NULL),(101,113,'<com.olivephone.cu.SearchedNewsActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(102,137,'<com.olivephone.cu.VideoNewsActivity$5: boolean onTouch(android.view.View,android.view.MotionEvent)>',9,'a',NULL),(103,77,'<com.olivephone.cu.DeskWidget: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',6,'s',NULL),(104,138,'<com.olivephone.cu.SearchActivity$6: boolean onTouch(android.view.View,android.view.MotionEvent)>',20,'a',NULL),(105,92,'<com.olivephone.cu.VideoNewsActivity$14: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(106,139,'<com.olivephone.cu.SettingActivity$2: boolean onTouch(android.view.View,android.view.MotionEvent)>',11,'a',NULL),(107,140,'<com.olivephone.cu.ImageNewsActivity$3: boolean onTouch(android.view.View,android.view.MotionEvent)>',9,'a',NULL),(108,141,'<com.olivephone.cu.TextNewsActivity$17: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(109,142,'<com.olivephone.cu.SearchActivity$4: boolean onTouch(android.view.View,android.view.MotionEvent)>',9,'a',NULL),(110,143,'<com.olivephone.cu.EnshrineActivity$9: boolean onTouch(android.view.View,android.view.MotionEvent)>',10,'a',NULL),(111,144,'<com.olivephone.cu.TextNewsActivity$3: boolean onTouch(android.view.View,android.view.MotionEvent)>',9,'a',NULL),(112,126,'<com.olivephone.cu.ImportNewsActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',34,'a',NULL),(113,145,'<com.olivephone.cu.ImageNewsActivity$15: boolean onTouch(android.view.View,android.view.MotionEvent)>',10,'a',NULL),(114,146,'<com.olivephone.cu.SearchActivity$8: boolean onTouch(android.view.View,android.view.MotionEvent)>',10,'a',NULL),(115,147,'<com.olivephone.cu.EnshrineActivity$11: boolean onTouch(android.view.View,android.view.MotionEvent)>',10,'a',NULL),(116,148,'<com.olivephone.cu.TextNewsActivity$23: boolean onTouch(android.view.View,android.view.MotionEvent)>',10,'a',NULL),(117,104,'<com.olivephone.cu.DownLoadActivity$10: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',16,'a',NULL),(118,149,'<com.olivephone.cu.SettingActivity$6: boolean onTouch(android.view.View,android.view.MotionEvent)>',24,'a',NULL),(119,150,'<com.olivephone.cu.ImageNewsActivity$18$1: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(120,50,'<com.olivephone.cu.VideoNewsActivity: void onActivityResult(int,int,android.content.Intent)>',11,'p',0),(121,126,'<com.olivephone.cu.ImportNewsActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',41,'a',NULL),(122,151,'<com.olivephone.cu.VideoNewsActivity$18: boolean onTouch(android.view.View,android.view.MotionEvent)>',10,'a',NULL),(123,152,'<com.olivephone.cu.VideoNewsActivity$17: boolean onTouch(android.view.View,android.view.MotionEvent)>',10,'a',NULL),(124,153,'<com.olivephone.cu.VideoNewsActivity$19: boolean onTouch(android.view.View,android.view.MotionEvent)>',10,'a',NULL),(125,47,'<com.olivephone.cu.XinHuaLaunch: void onCreate(android.os.Bundle)>',31,'s',NULL),(126,154,'<com.olivephone.cu.RSSNewsActivity$4: void onClick(android.view.View)>',6,'a',NULL),(127,155,'<com.olivephone.cu.DownLoadActivity$16: boolean onTouch(android.view.View,android.view.MotionEvent)>',10,'a',NULL),(128,47,'<com.olivephone.cu.XinHuaLaunch: void onCreate(android.os.Bundle)>',26,'s',NULL),(129,156,'<com.olivephone.cu.DownLoadActivity$2: boolean onTouch(android.view.View,android.view.MotionEvent)>',9,'a',NULL),(130,157,'<com.olivephone.cu.SearchActivity$3: boolean onTouch(android.view.View,android.view.MotionEvent)>',9,'a',NULL),(131,158,'<com.olivephone.cu.EnshrineActivity$2: boolean onTouch(android.view.View,android.view.MotionEvent)>',9,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,3,11),(2,6,11),(3,7,11),(4,9,1),(5,10,1),(6,12,1),(7,15,1),(8,16,13),(9,18,16),(10,19,16),(11,21,16),(12,22,16),(13,23,16),(14,24,11),(15,25,16),(16,26,16),(17,27,16),(18,31,13),(19,32,11),(20,33,11),(21,41,1),(22,42,1),(23,43,1),(24,44,1),(25,50,1),(26,65,18),(27,75,18),(28,77,19),(29,105,11),(30,127,1);
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
INSERT INTO `ICategories` VALUES (1,9,3),(2,10,1),(3,12,1),(4,15,3),(5,16,4),(6,31,4),(7,41,3),(8,42,1),(9,43,1),(10,44,3),(11,50,5),(12,127,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/xxx/yyy/MyService'),(2,2,'com/xxx/yyy/MyService'),(3,4,'com/xxx/yyy/MyService'),(4,5,'com/xxx/yyy/MyService'),(5,8,'com/android/main/MainService'),(6,11,'com/xxx/yyy/MyService'),(7,13,'com/xxx/yyy/MyService'),(8,14,'com/xxx/yyy/MyService'),(9,17,'com/xxx/yyy/MyService'),(10,20,'com/apk/op/OptionActivity'),(11,28,'com/comiccc/ManageCategory'),(12,29,'com/comiccc/ManageActivity'),(13,30,'com/comiccc/XxtFileBrowser'),(14,34,'com/comiccc/ViewActivity'),(15,35,'com/comiccc/XxtFileBrowser'),(16,36,'com/comiccc/XxtFileBrowser'),(17,37,'com/comiccc/ViewActivity'),(18,38,'com/comiccc/AboutActivity'),(19,39,'com/comiccc/XxtFileBrowser'),(20,40,'com/android/main/MainService'),(21,45,'com/comiccc/ViewActivity'),(22,46,'com/comiccc/AddComicActivity'),(23,47,'com/comiccc/AddComicActivity'),(24,48,'com/olivephone/cu/TextNewsActivity'),(25,49,'com/olivephone/cu/EnshrineImageDetail'),(26,51,'com/olivephone/cu/SettingActivity'),(27,52,'com/olivephone/cu/TextNewsActivity'),(28,53,'com/olivephone/cu/LoadChannelService'),(29,54,'com/olivephone/cu/TextNewsActivity'),(30,55,'com/olivephone/cu/SearchActivity'),(31,56,'com/olivephone/cu/TextNewsActivity'),(32,57,'com/olivephone/cu/VideoNewsActivity'),(33,58,'com/olivephone/cu/EnshrineActivity'),(34,59,'com/olivephone/cu/VideoNewsActivity'),(35,60,'com/olivephone/cu/DeskWidget$UpdateService'),(36,61,'com/xxx/yyy/MyService'),(37,62,'com/olivephone/cu/LoadChannelService'),(38,63,'com/olivephone/cu/SettingActivity'),(39,64,'com/olivephone/cu/VideoNewsActivity'),(40,66,'com/olivephone/cu/VideoActivity'),(41,67,'com/olivephone/cu/ShowVideoActivity'),(42,68,'com/olivephone/cu/VideoNewsActivity'),(43,69,'com/olivephone/cu/EnshrineActivity'),(44,70,'com/olivephone/cu/ImageNewsActivity'),(45,71,'com/olivephone/cu/TextNewsActivity'),(46,72,'com/olivephone/cu/EnshrineActivity'),(47,73,'com/olivephone/cu/SettingActivity'),(48,74,'com/olivephone/cu/SettingActivity'),(49,76,'com/olivephone/cu/SettingActivity'),(50,78,'com/olivephone/cu/VideoActivity'),(51,79,'com/olivephone/cu/EnshrineVideoDetail'),(52,80,'com/olivephone/cu/SearchedPicNewsActivity'),(53,81,'com/olivephone/cu/SearchActivity'),(54,82,'com/olivephone/cu/TextNewsActivity'),(55,83,'com/olivephone/cu/XinHuaLaunch'),(56,84,'com/olivephone/cu/DownLoadActivity'),(57,85,'com/olivephone/cu/TextNewsActivity'),(58,86,'com/olivephone/cu/EnshrineActivity'),(59,87,'com/olivephone/cu/TextNewsActivity'),(60,88,'com/olivephone/cu/SearchedNewsActivity'),(61,89,'com/olivephone/cu/ImageNewsActivity'),(62,90,'com/olivephone/cu/DownLoadActivity'),(63,91,'com/olivephone/cu/VideoNewsActivity'),(64,92,'com/olivephone/cu/VideoNewsActivity'),(65,93,'com/olivephone/cu/EnshrineActivity'),(66,94,'com/olivephone/cu/VideoActivity'),(67,95,'com/olivephone/cu/RSSNewsActivity'),(68,96,'com/olivephone/cu/SettingActivity'),(69,97,'com/olivephone/cu/ImageNewsActivity'),(70,98,'com/olivephone/cu/VideoNewsActivity'),(71,99,'com/olivephone/cu/SearchActivity'),(72,100,'com/olivephone/cu/SearchActivity'),(73,101,'com/olivephone/cu/EnshrineDetailActivity'),(74,102,'com/olivephone/cu/DownLoadActivity'),(75,103,'com/olivephone/cu/NewsNotifyService'),(76,104,'com/olivephone/cu/SettingActivity'),(77,106,'com/xxx/yyy/MyService'),(78,107,'com/olivephone/cu/SettingActivity'),(79,108,'com/olivephone/cu/SettingActivity'),(80,109,'com/olivephone/cu/SearchedTextNewsActivity'),(81,110,'com/olivephone/cu/SettingActivity'),(82,111,'com/olivephone/cu/DeskWidget$UpdateService'),(83,112,'com/olivephone/cu/SearchedNewsActivity'),(84,113,'com/olivephone/cu/SettingActivity'),(85,114,'com/olivephone/cu/ImageNewsActivity'),(86,115,'com/olivephone/cu/ImageNewsActivity'),(87,116,'com/olivephone/cu/XinHuaLaunch'),(88,117,'com/olivephone/cu/SettingActivity'),(89,118,'com/olivephone/cu/DownLoadActivity'),(90,119,'com/olivephone/cu/ImageNewsActivity'),(91,120,'com/olivephone/cu/SearchedTextNewsActivity'),(92,121,'com/olivephone/cu/DownLoadActivity'),(93,122,'com/olivephone/cu/EnshrineActivity'),(94,123,'com/olivephone/cu/SearchActivity'),(95,124,'com/olivephone/cu/DownLoadActivity'),(96,125,'com/olivephone/cu/ShowImageActivity'),(97,126,'com/olivephone/cu/SearchedNewsActivity'),(98,128,'com/olivephone/cu/SearchedPicNewsActivity'),(99,129,'com/olivephone/cu/EnshrineActivity'),(100,130,'com/olivephone/cu/DownLoadActivity'),(101,131,'com/olivephone/cu/SearchActivity'),(102,132,'com/xxx/yyy/MyService'),(103,133,'com/olivephone/cu/DownLoadActivity'),(104,134,'com/olivephone/cu/SearchActivity'),(105,135,'com/olivephone/cu/LoadChannelService'),(106,136,'com/olivephone/cu/ImageNewsActivity'),(107,137,'com/olivephone/cu/VideoNewsActivity'),(108,138,'com/olivephone/cu/ImageNewsActivity');
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
INSERT INTO `IData` VALUES (1,3,2),(2,6,3),(3,7,4),(4,16,7),(5,24,9),(6,31,11),(7,32,12),(8,33,13),(9,105,15);
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,18,'android.intent.extra.INTENT'),(2,20,'MatchSound'),(3,19,'android.intent.extra.INTENT'),(4,20,'GameMusic'),(5,20,'ChangeTheme'),(6,20,'Vibrate'),(7,21,'android.intent.extra.TITLE'),(8,21,'android.intent.extra.INTENT'),(9,22,'android.intent.extra.INTENT'),(10,23,'android.intent.extra.TITLE'),(11,23,'android.intent.extra.INTENT'),(12,25,'android.intent.extra.INTENT'),(13,26,'android.intent.extra.TITLE'),(14,26,'android.intent.extra.INTENT'),(15,27,'android.intent.extra.TITLE'),(16,27,'android.intent.extra.INTENT'),(17,34,'last_path'),(18,34,'last_file'),(19,34,'last_book'),(20,34,'show_mark'),(21,37,'last_path'),(22,37,'last_book'),(23,37,'show_mark'),(24,45,'last_path'),(25,45,'last_file'),(26,45,'last_book'),(27,45,'show_mark'),(28,49,'img_url'),(29,66,'videourl'),(30,66,'bigtitle'),(31,67,'file_name'),(32,77,'sms_body'),(33,77,'android.intent.extra.STREAM'),(34,78,'videourl'),(35,79,'videourl'),(36,88,'keyword'),(37,94,'videourl'),(38,101,'uri'),(39,103,'keyword'),(40,103,'tips_type'),(41,109,'newsurl'),(42,112,'keyword'),(43,120,'newsurl'),(44,125,'file_name'),(45,126,'keyword');
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,1),(5,5,4),(6,6,2),(7,7,5),(8,8,3),(9,9,4),(10,10,6),(11,11,7),(12,12,4),(13,13,2),(14,14,8),(15,15,3),(16,16,2),(17,17,1),(18,18,1),(19,19,7),(20,20,3),(21,21,8),(22,22,7),(23,23,8),(24,24,9),(25,25,10),(26,26,9),(27,27,10),(28,28,1),(29,29,2),(30,30,2),(31,31,3),(32,32,7),(33,33,8),(34,34,12),(35,35,10),(36,36,14),(37,37,15),(38,38,17),(39,39,17),(40,40,17),(41,41,17),(42,42,17),(43,43,14),(44,44,15),(45,45,10);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,7,2),(3,10,2),(4,17,1),(5,18,1),(6,28,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,38,'file',NULL,NULL,NULL,NULL,NULL),(2,39,'file',NULL,NULL,NULL,NULL,NULL),(3,40,'file',NULL,NULL,NULL,NULL,NULL),(4,41,'file',NULL,NULL,NULL,NULL,NULL),(5,42,'file',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,3,'application','vnd.android.package-archive'),(2,16,'vnd.android.cursor.dir','audio'),(3,31,'vnd.android.cursor.dir','audio'),(4,65,'vnd.android.cursor.item','phone'),(5,75,'vnd.android.cursor.item','phone'),(6,77,'image','png'),(7,105,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.tt.yy'),(2,2,'com.tt.yy'),(3,4,'com.joko.lightgrid'),(4,5,'com.joko.lightgrid'),(5,8,'com.apk.op'),(6,9,''),(7,10,''),(8,11,'fishnoodle.silhouette'),(9,13,'com.smoothiefactory.djlive'),(10,12,'NULL-CONSTANT'),(11,14,'fishnoodle.silhouette'),(12,15,'NULL-CONSTANT'),(13,17,'com.smoothiefactory.djlive'),(14,20,'com.apk.op'),(15,28,'com.comiccc'),(16,29,'com.comiccc'),(17,30,'com.comiccc'),(18,34,'com.comiccc'),(19,35,'com.comiccc'),(20,36,'com.comiccc'),(21,37,'com.comiccc'),(22,38,'com.comiccc'),(23,39,'com.comiccc'),(24,40,'com.comiccc'),(25,41,''),(26,42,''),(27,43,'NULL-CONSTANT'),(28,44,'NULL-CONSTANT'),(29,45,'com.comiccc'),(30,46,'com.comiccc'),(31,47,'com.comiccc'),(32,48,'com.olivephone.cu'),(33,49,'com.olivephone.cu'),(34,51,'com.olivephone.cu'),(35,52,'com.olivephone.cu'),(36,53,'com.olivephone.cu'),(37,54,'com.olivephone.cu'),(38,55,'com.olivephone.cu'),(39,56,'com.olivephone.cu'),(40,57,'com.olivephone.cu'),(41,58,'com.olivephone.cu'),(42,59,'com.olivephone.cu'),(43,60,'com.olivephone.cu'),(44,61,'com.olivephone.cu'),(45,62,'com.olivephone.cu'),(46,63,'com.olivephone.cu'),(47,64,'com.olivephone.cu'),(48,66,'com.olivephone.cu'),(49,67,'com.olivephone.cu'),(50,68,'com.olivephone.cu'),(51,69,'com.olivephone.cu'),(52,70,'com.olivephone.cu'),(53,71,'com.olivephone.cu'),(54,72,'com.olivephone.cu'),(55,73,'com.olivephone.cu'),(56,74,'com.olivephone.cu'),(57,76,'com.olivephone.cu'),(58,78,'com.olivephone.cu'),(59,79,'com.olivephone.cu'),(60,80,'com.olivephone.cu'),(61,81,'com.olivephone.cu'),(62,82,'com.olivephone.cu'),(63,83,'com.olivephone.cu'),(64,84,'com.olivephone.cu'),(65,85,'com.olivephone.cu'),(66,86,'com.olivephone.cu'),(67,87,'com.olivephone.cu'),(68,88,'com.olivephone.cu'),(69,89,'com.olivephone.cu'),(70,90,'com.olivephone.cu'),(71,91,'com.olivephone.cu'),(72,92,'com.olivephone.cu'),(73,93,'com.olivephone.cu'),(74,94,'com.olivephone.cu'),(75,95,'com.olivephone.cu'),(76,96,'com.olivephone.cu'),(77,97,'com.olivephone.cu'),(78,98,'com.olivephone.cu'),(79,99,'com.olivephone.cu'),(80,100,'com.olivephone.cu'),(81,101,'com.olivephone.cu'),(82,102,'com.olivephone.cu'),(83,103,'com.olivephone.cu'),(84,104,'com.olivephone.cu'),(85,106,'com.olivephone.cu'),(86,107,'com.olivephone.cu'),(87,108,'com.olivephone.cu'),(88,109,'com.olivephone.cu'),(89,110,'com.olivephone.cu'),(90,111,'com.olivephone.cu'),(91,112,'com.olivephone.cu'),(92,113,'com.olivephone.cu'),(93,114,'com.olivephone.cu'),(94,115,'com.olivephone.cu'),(95,116,'com.olivephone.cu'),(96,117,'com.olivephone.cu'),(97,118,'com.olivephone.cu'),(98,119,'com.olivephone.cu'),(99,120,'com.olivephone.cu'),(100,121,'com.olivephone.cu'),(101,122,'com.olivephone.cu'),(102,123,'com.olivephone.cu'),(103,124,'com.olivephone.cu'),(104,125,'com.olivephone.cu'),(105,126,'com.olivephone.cu'),(106,128,'com.olivephone.cu'),(107,129,'com.olivephone.cu'),(108,130,'com.olivephone.cu'),(109,131,'com.olivephone.cu'),(110,132,'com.olivephone.cu'),(111,133,'com.olivephone.cu'),(112,134,'com.olivephone.cu'),(113,135,'com.olivephone.cu'),(114,136,'com.olivephone.cu'),(115,137,'com.olivephone.cu'),(116,138,'com.olivephone.cu');
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,4,0),(3,5,0),(4,7,0),(5,8,0),(6,11,0),(7,10,0),(8,12,0),(9,15,0),(10,14,0),(11,16,0),(12,18,0),(13,20,0),(14,19,0),(15,22,0),(16,23,0),(17,24,0),(18,25,0),(19,26,0),(20,27,0),(21,30,0),(22,32,0),(23,38,0),(24,37,0),(25,41,0),(26,45,0),(27,46,0),(28,47,0),(29,72,0),(30,73,0),(31,74,0),(32,75,0),(33,76,0),(34,77,0),(35,78,0),(36,78,0),(37,78,0),(38,27,0),(39,38,0),(40,79,0),(41,23,0),(42,32,0),(43,80,0),(44,80,0),(45,80,0);
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
INSERT INTO `Intents` VALUES (1,1,0,0),(2,3,0,0),(3,4,1,0),(4,5,0,0),(5,6,0,0),(6,7,1,0),(7,7,1,0),(8,9,0,0),(9,10,1,0),(10,10,1,0),(11,12,0,0),(12,10,1,0),(13,13,0,0),(14,14,0,0),(15,10,1,0),(16,15,1,0),(17,16,0,0),(18,18,1,0),(19,18,1,0),(20,19,0,0),(21,18,1,0),(22,18,1,0),(23,18,1,0),(24,20,1,0),(25,18,1,0),(26,18,1,0),(27,18,1,0),(28,21,0,0),(29,22,0,0),(30,23,0,0),(31,24,1,0),(32,26,1,0),(33,26,1,0),(34,27,0,0),(35,28,0,0),(36,30,0,0),(37,31,0,0),(38,32,0,0),(39,33,0,0),(40,34,0,0),(41,35,1,0),(42,35,1,0),(43,35,1,0),(44,35,1,0),(45,36,0,0),(46,37,0,0),(47,38,0,0),(48,39,0,0),(49,40,0,0),(50,41,1,0),(51,42,0,0),(52,43,0,0),(53,44,0,0),(54,45,0,0),(55,46,0,0),(56,47,0,0),(57,48,0,0),(58,49,0,0),(59,50,0,0),(60,51,0,0),(61,53,0,0),(62,54,0,0),(63,55,0,0),(64,56,0,0),(65,57,1,0),(66,58,0,0),(67,59,0,0),(68,60,0,0),(69,61,0,0),(70,62,0,0),(71,63,0,0),(72,64,0,0),(73,65,0,0),(74,66,0,0),(75,67,1,0),(76,68,0,0),(77,69,1,0),(78,70,0,0),(79,71,0,0),(80,72,0,0),(81,73,0,0),(82,74,0,0),(83,75,0,0),(84,76,0,0),(85,77,0,0),(86,78,0,0),(87,79,0,0),(88,80,0,0),(89,81,0,0),(90,82,0,0),(91,83,0,0),(92,84,0,0),(93,85,0,0),(94,86,0,0),(95,87,0,0),(96,88,0,0),(97,89,0,0),(98,90,0,0),(99,91,0,0),(100,92,0,0),(101,93,0,0),(102,94,0,0),(103,95,0,0),(104,96,0,0),(105,97,1,0),(106,98,0,0),(107,99,0,0),(108,100,0,0),(109,101,0,0),(110,102,0,0),(111,103,0,0),(112,104,0,0),(113,105,0,0),(114,106,0,0),(115,107,0,0),(116,108,0,0),(117,109,0,0),(118,110,0,0),(119,111,0,0),(120,112,0,0),(121,113,0,0),(122,114,0,0),(123,115,0,0),(124,116,0,0),(125,117,0,0),(126,118,0,0),(127,119,1,0),(128,121,0,0),(129,122,0,0),(130,123,0,0),(131,124,0,0),(132,125,0,0),(133,126,0,0),(134,127,0,0),(135,128,0,0),(136,129,0,0),(137,130,0,0),(138,131,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=786 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,1,3,2,NULL),(2,1,9,2,NULL),(3,1,17,2,NULL),(4,1,21,2,NULL),(5,1,68,2,NULL),(6,18,1,2,NULL),(7,19,1,2,NULL),(8,21,1,2,NULL),(9,22,1,2,NULL),(10,23,1,2,NULL),(11,25,1,2,NULL),(12,26,1,2,NULL),(13,27,1,2,NULL),(14,6,1,2,NULL),(15,7,1,2,NULL),(16,9,1,2,NULL),(17,10,1,2,NULL),(18,12,1,2,NULL),(19,15,1,2,NULL),(20,32,1,2,NULL),(21,33,1,2,NULL),(22,41,1,2,NULL),(23,42,1,2,NULL),(24,43,1,2,NULL),(25,44,1,2,NULL),(26,18,4,2,NULL),(27,19,4,2,NULL),(28,21,4,2,NULL),(29,22,4,2,NULL),(30,23,4,2,NULL),(31,25,4,2,NULL),(32,26,4,2,NULL),(33,27,4,2,NULL),(34,6,4,2,NULL),(35,7,4,2,NULL),(36,9,4,2,NULL),(37,10,4,2,NULL),(38,12,4,2,NULL),(39,15,4,2,NULL),(40,32,4,2,NULL),(41,33,4,2,NULL),(42,41,4,2,NULL),(43,42,4,2,NULL),(44,43,4,2,NULL),(45,44,4,2,NULL),(46,2,3,2,NULL),(47,2,9,2,NULL),(48,2,17,2,NULL),(49,2,21,2,NULL),(50,2,68,2,NULL),(51,18,5,2,NULL),(52,19,5,2,NULL),(53,21,5,2,NULL),(54,22,5,2,NULL),(55,23,5,2,NULL),(56,25,5,2,NULL),(57,26,5,2,NULL),(58,27,5,2,NULL),(59,6,5,2,NULL),(60,7,5,2,NULL),(61,9,5,2,NULL),(62,10,5,2,NULL),(63,12,5,2,NULL),(64,15,5,2,NULL),(65,32,5,2,NULL),(66,33,5,2,NULL),(67,41,5,2,NULL),(68,42,5,2,NULL),(69,43,5,2,NULL),(70,44,5,2,NULL),(71,18,7,2,NULL),(72,19,7,2,NULL),(73,21,7,2,NULL),(74,22,7,2,NULL),(75,23,7,2,NULL),(76,25,7,2,NULL),(77,26,7,2,NULL),(78,27,7,2,NULL),(79,6,7,2,NULL),(80,7,7,2,NULL),(81,9,7,2,NULL),(82,10,7,2,NULL),(83,12,7,2,NULL),(84,15,7,2,NULL),(85,32,7,2,NULL),(86,33,7,2,NULL),(87,41,7,2,NULL),(88,42,7,2,NULL),(89,43,7,2,NULL),(90,44,7,2,NULL),(91,18,8,2,NULL),(92,19,8,2,NULL),(93,21,8,2,NULL),(94,22,8,2,NULL),(95,23,8,2,NULL),(96,25,8,2,NULL),(97,26,8,2,NULL),(98,27,8,2,NULL),(99,6,8,2,NULL),(100,7,8,2,NULL),(101,9,8,2,NULL),(102,10,8,2,NULL),(103,12,8,2,NULL),(104,15,8,2,NULL),(105,32,8,2,NULL),(106,33,8,2,NULL),(107,41,8,2,NULL),(108,42,8,2,NULL),(109,43,8,2,NULL),(110,44,8,2,NULL),(111,18,11,2,NULL),(112,19,11,2,NULL),(113,21,11,2,NULL),(114,22,11,2,NULL),(115,23,11,2,NULL),(116,25,11,2,NULL),(117,26,11,2,NULL),(118,27,11,2,NULL),(119,6,11,2,NULL),(120,7,11,2,NULL),(121,9,11,2,NULL),(122,10,11,2,NULL),(123,12,11,2,NULL),(124,15,11,2,NULL),(125,32,11,2,NULL),(126,33,11,2,NULL),(127,41,11,2,NULL),(128,42,11,2,NULL),(129,43,11,2,NULL),(130,44,11,2,NULL),(131,4,3,2,NULL),(132,4,9,2,NULL),(133,4,17,2,NULL),(134,4,21,2,NULL),(135,4,68,2,NULL),(136,18,12,2,NULL),(137,19,12,2,NULL),(138,21,12,2,NULL),(139,22,12,2,NULL),(140,23,12,2,NULL),(141,25,12,2,NULL),(142,26,12,2,NULL),(143,27,12,2,NULL),(144,6,12,2,NULL),(145,7,12,2,NULL),(146,9,12,2,NULL),(147,10,12,2,NULL),(148,12,12,2,NULL),(149,15,12,2,NULL),(150,32,12,2,NULL),(151,33,12,2,NULL),(152,41,12,2,NULL),(153,42,12,2,NULL),(154,43,12,2,NULL),(155,44,12,2,NULL),(156,5,3,2,NULL),(157,5,9,2,NULL),(158,5,17,2,NULL),(159,5,21,2,NULL),(160,5,68,2,NULL),(161,18,16,2,NULL),(162,19,16,2,NULL),(163,21,16,2,NULL),(164,22,16,2,NULL),(165,23,16,2,NULL),(166,25,16,2,NULL),(167,26,16,2,NULL),(168,27,16,2,NULL),(169,6,16,2,NULL),(170,7,16,2,NULL),(171,9,16,2,NULL),(172,10,16,2,NULL),(173,12,16,2,NULL),(174,15,16,2,NULL),(175,32,16,2,NULL),(176,33,16,2,NULL),(177,41,16,2,NULL),(178,42,16,2,NULL),(179,43,16,2,NULL),(180,44,16,2,NULL),(181,18,19,2,NULL),(182,19,19,2,NULL),(183,21,19,2,NULL),(184,22,19,2,NULL),(185,23,19,2,NULL),(186,25,19,2,NULL),(187,26,19,2,NULL),(188,103,71,2,NULL),(189,27,19,2,NULL),(190,132,3,2,NULL),(191,6,19,2,NULL),(192,132,9,2,NULL),(193,7,19,2,NULL),(194,132,17,2,NULL),(195,9,19,2,NULL),(196,132,21,2,NULL),(197,10,19,2,NULL),(198,132,68,2,NULL),(199,12,19,2,NULL),(200,135,69,2,NULL),(201,15,19,2,NULL),(202,18,47,2,NULL),(203,32,19,2,NULL),(204,19,47,2,NULL),(205,33,19,2,NULL),(206,21,47,2,NULL),(207,41,19,2,NULL),(208,22,47,2,NULL),(209,42,19,2,NULL),(210,23,47,2,NULL),(211,43,19,2,NULL),(212,25,47,2,NULL),(213,44,19,2,NULL),(214,26,47,2,NULL),(215,27,47,2,NULL),(216,6,47,2,NULL),(217,7,47,2,NULL),(218,9,47,2,NULL),(219,10,47,2,NULL),(220,12,47,2,NULL),(221,15,47,2,NULL),(222,32,47,2,NULL),(223,33,47,2,NULL),(224,41,47,2,NULL),(225,42,47,2,NULL),(226,43,47,2,NULL),(227,44,47,2,NULL),(228,48,49,2,NULL),(229,51,51,2,NULL),(230,57,50,2,NULL),(231,70,52,2,NULL),(232,83,47,2,NULL),(233,18,72,2,NULL),(234,19,72,2,NULL),(235,21,72,2,NULL),(236,22,72,2,NULL),(237,23,72,2,NULL),(238,25,72,2,NULL),(239,26,72,2,NULL),(240,27,72,2,NULL),(241,6,72,2,NULL),(242,7,72,2,NULL),(243,9,72,2,NULL),(244,10,72,2,NULL),(245,12,72,2,NULL),(246,15,72,2,NULL),(247,32,72,2,NULL),(248,33,72,2,NULL),(249,41,72,2,NULL),(250,42,72,2,NULL),(251,43,72,2,NULL),(252,44,72,2,NULL),(253,18,73,2,NULL),(254,19,73,2,NULL),(255,21,73,2,NULL),(256,22,73,2,NULL),(257,23,73,2,NULL),(258,25,73,2,NULL),(259,26,73,2,NULL),(260,27,73,2,NULL),(261,6,73,2,NULL),(262,7,73,2,NULL),(263,9,73,2,NULL),(264,10,73,2,NULL),(265,12,73,2,NULL),(266,15,73,2,NULL),(267,32,73,2,NULL),(268,33,73,2,NULL),(269,41,73,2,NULL),(270,42,73,2,NULL),(271,43,73,2,NULL),(272,44,73,2,NULL),(273,61,3,2,NULL),(274,61,9,2,NULL),(275,61,17,2,NULL),(276,61,21,2,NULL),(277,61,68,2,NULL),(278,18,74,2,NULL),(279,19,74,2,NULL),(280,21,74,2,NULL),(281,22,74,2,NULL),(282,23,74,2,NULL),(283,25,74,2,NULL),(284,26,74,2,NULL),(285,27,74,2,NULL),(286,6,74,2,NULL),(287,7,74,2,NULL),(288,9,74,2,NULL),(289,10,74,2,NULL),(290,12,74,2,NULL),(291,15,74,2,NULL),(292,32,74,2,NULL),(293,33,74,2,NULL),(294,41,74,2,NULL),(295,42,74,2,NULL),(296,43,74,2,NULL),(297,44,74,2,NULL),(298,106,3,2,NULL),(299,106,9,2,NULL),(300,106,17,2,NULL),(301,106,21,2,NULL),(302,106,68,2,NULL),(303,18,75,2,NULL),(304,19,75,2,NULL),(305,21,75,2,NULL),(306,22,75,2,NULL),(307,23,75,2,NULL),(308,25,75,2,NULL),(309,26,75,2,NULL),(310,27,75,2,NULL),(311,6,75,2,NULL),(312,7,75,2,NULL),(313,9,75,2,NULL),(314,10,75,2,NULL),(315,12,75,2,NULL),(316,15,75,2,NULL),(317,32,75,2,NULL),(318,33,75,2,NULL),(319,41,75,2,NULL),(320,42,75,2,NULL),(321,43,75,2,NULL),(322,44,75,2,NULL),(323,18,76,2,NULL),(324,19,76,2,NULL),(325,21,76,2,NULL),(326,22,76,2,NULL),(327,23,76,2,NULL),(328,25,76,2,NULL),(329,26,76,2,NULL),(330,27,76,2,NULL),(331,6,76,2,NULL),(332,7,76,2,NULL),(333,9,76,2,NULL),(334,10,76,2,NULL),(335,12,76,2,NULL),(336,15,76,2,NULL),(337,32,76,2,NULL),(338,33,76,2,NULL),(339,41,76,2,NULL),(340,42,76,2,NULL),(341,43,76,2,NULL),(342,44,76,2,NULL),(343,111,70,2,NULL),(344,18,77,2,NULL),(345,19,77,2,NULL),(346,21,77,2,NULL),(347,22,77,2,NULL),(348,23,77,2,NULL),(349,25,77,2,NULL),(350,26,77,2,NULL),(351,27,77,2,NULL),(352,6,77,2,NULL),(353,7,77,2,NULL),(354,9,77,2,NULL),(355,10,77,2,NULL),(356,12,77,2,NULL),(357,15,77,2,NULL),(358,32,77,2,NULL),(359,33,77,2,NULL),(360,41,77,2,NULL),(361,42,77,2,NULL),(362,43,77,2,NULL),(363,44,77,2,NULL),(364,18,15,2,NULL),(365,19,15,2,NULL),(366,21,15,2,NULL),(367,22,15,2,NULL),(368,23,15,2,NULL),(369,25,15,2,NULL),(370,26,15,2,NULL),(371,27,15,2,NULL),(372,6,15,2,NULL),(373,7,15,2,NULL),(374,9,15,2,NULL),(375,10,15,2,NULL),(376,12,15,2,NULL),(377,15,15,2,NULL),(378,32,15,2,NULL),(379,33,15,2,NULL),(380,41,15,2,NULL),(381,42,15,2,NULL),(382,43,15,2,NULL),(383,44,15,2,NULL),(384,18,20,2,NULL),(385,19,20,2,NULL),(386,21,20,2,NULL),(387,22,20,2,NULL),(388,23,20,2,NULL),(389,25,20,2,NULL),(390,26,20,2,NULL),(391,27,20,2,NULL),(392,6,20,2,NULL),(393,7,20,2,NULL),(394,9,20,2,NULL),(395,10,20,2,NULL),(396,12,20,2,NULL),(397,15,20,2,NULL),(398,32,20,2,NULL),(399,33,20,2,NULL),(400,41,20,2,NULL),(401,42,20,2,NULL),(402,43,20,2,NULL),(403,44,20,2,NULL),(404,11,3,2,NULL),(405,11,9,2,NULL),(406,11,17,2,NULL),(407,11,21,2,NULL),(408,11,68,2,NULL),(409,18,22,2,NULL),(410,19,22,2,NULL),(411,21,22,2,NULL),(412,22,22,2,NULL),(413,23,22,2,NULL),(414,25,22,2,NULL),(415,26,22,2,NULL),(416,27,22,2,NULL),(417,6,22,2,NULL),(418,7,22,2,NULL),(419,9,22,2,NULL),(420,10,22,2,NULL),(421,12,22,2,NULL),(422,15,22,2,NULL),(423,32,22,2,NULL),(424,33,22,2,NULL),(425,41,22,2,NULL),(426,42,22,2,NULL),(427,43,22,2,NULL),(428,44,22,2,NULL),(429,14,3,2,NULL),(430,14,9,2,NULL),(431,14,17,2,NULL),(432,14,21,2,NULL),(433,14,68,2,NULL),(434,18,26,2,NULL),(435,19,26,2,NULL),(436,21,26,2,NULL),(437,22,26,2,NULL),(438,23,26,2,NULL),(439,25,26,2,NULL),(440,26,26,2,NULL),(441,27,26,2,NULL),(442,6,26,2,NULL),(443,7,26,2,NULL),(444,9,26,2,NULL),(445,10,26,2,NULL),(446,12,26,2,NULL),(447,15,26,2,NULL),(448,32,26,2,NULL),(449,33,26,2,NULL),(450,41,26,2,NULL),(451,42,26,2,NULL),(452,43,26,2,NULL),(453,44,26,2,NULL),(454,18,30,2,NULL),(455,19,30,2,NULL),(456,21,30,2,NULL),(457,22,30,2,NULL),(458,23,30,2,NULL),(459,25,30,2,NULL),(460,26,30,2,NULL),(461,27,30,2,NULL),(462,6,30,2,NULL),(463,7,30,2,NULL),(464,9,30,2,NULL),(465,10,30,2,NULL),(466,12,30,2,NULL),(467,15,30,2,NULL),(468,32,30,2,NULL),(469,33,30,2,NULL),(470,41,30,2,NULL),(471,42,30,2,NULL),(472,43,30,2,NULL),(473,44,30,2,NULL),(474,18,24,2,NULL),(475,19,24,2,NULL),(476,21,24,2,NULL),(477,22,24,2,NULL),(478,23,24,2,NULL),(479,25,24,2,NULL),(480,26,24,2,NULL),(481,27,24,2,NULL),(482,6,24,2,NULL),(483,7,24,2,NULL),(484,9,24,2,NULL),(485,10,24,2,NULL),(486,12,24,2,NULL),(487,15,24,2,NULL),(488,32,24,2,NULL),(489,33,24,2,NULL),(490,41,24,2,NULL),(491,42,24,2,NULL),(492,43,24,2,NULL),(493,44,24,2,NULL),(494,29,31,2,NULL),(495,37,34,2,NULL),(496,38,42,2,NULL),(497,30,39,2,NULL),(498,39,39,2,NULL),(499,32,10,2,NULL),(500,33,10,2,NULL),(501,41,10,2,NULL),(502,42,10,2,NULL),(503,43,10,2,NULL),(504,44,10,2,NULL),(505,32,14,2,NULL),(506,33,14,2,NULL),(507,41,14,2,NULL),(508,42,14,2,NULL),(509,43,14,2,NULL),(510,44,14,2,NULL),(511,32,18,2,NULL),(512,33,18,2,NULL),(513,41,18,2,NULL),(514,42,18,2,NULL),(515,43,18,2,NULL),(516,44,18,2,NULL),(517,32,23,2,NULL),(518,33,23,2,NULL),(519,41,23,2,NULL),(520,42,23,2,NULL),(521,43,23,2,NULL),(522,44,23,2,NULL),(523,32,27,2,NULL),(524,33,27,2,NULL),(525,41,27,2,NULL),(526,42,27,2,NULL),(527,43,27,2,NULL),(528,44,27,2,NULL),(529,32,32,2,NULL),(530,33,32,2,NULL),(531,41,32,2,NULL),(532,42,32,2,NULL),(533,43,32,2,NULL),(534,44,32,2,NULL),(535,32,38,2,NULL),(536,33,38,2,NULL),(537,41,38,2,NULL),(538,42,38,2,NULL),(539,43,38,2,NULL),(540,44,38,2,NULL),(541,32,25,2,NULL),(542,33,25,2,NULL),(543,41,25,2,NULL),(544,42,25,2,NULL),(545,43,25,2,NULL),(546,44,25,2,NULL),(547,32,37,2,NULL),(548,33,37,2,NULL),(549,41,37,2,NULL),(550,42,37,2,NULL),(551,43,37,2,NULL),(552,44,37,2,NULL),(553,32,41,2,NULL),(554,33,41,2,NULL),(555,41,41,2,NULL),(556,42,41,2,NULL),(557,43,41,2,NULL),(558,44,41,2,NULL),(559,32,78,2,NULL),(560,33,78,2,NULL),(561,41,78,2,NULL),(562,42,78,2,NULL),(563,43,78,2,NULL),(564,44,78,2,NULL),(565,32,45,2,NULL),(566,33,45,2,NULL),(567,41,45,2,NULL),(568,42,45,2,NULL),(569,43,45,2,NULL),(570,44,45,2,NULL),(571,32,46,2,NULL),(572,33,46,2,NULL),(573,41,46,2,NULL),(574,42,46,2,NULL),(575,43,46,2,NULL),(576,44,46,2,NULL),(577,32,80,2,NULL),(578,33,80,2,NULL),(579,41,80,2,NULL),(580,42,80,2,NULL),(581,43,80,2,NULL),(582,44,80,2,NULL),(583,40,35,2,NULL),(584,40,44,2,NULL),(585,18,45,2,NULL),(586,19,45,2,NULL),(587,21,45,2,NULL),(588,22,45,2,NULL),(589,23,45,2,NULL),(590,25,45,2,NULL),(591,26,45,2,NULL),(592,27,45,2,NULL),(593,6,45,2,NULL),(594,7,45,2,NULL),(595,9,45,2,NULL),(596,10,45,2,NULL),(597,12,45,2,NULL),(598,15,45,2,NULL),(599,18,46,2,NULL),(600,19,46,2,NULL),(601,21,46,2,NULL),(602,22,46,2,NULL),(603,23,46,2,NULL),(604,25,46,2,NULL),(605,26,46,2,NULL),(606,27,46,2,NULL),(607,6,46,2,NULL),(608,7,46,2,NULL),(609,9,46,2,NULL),(610,10,46,2,NULL),(611,12,46,2,NULL),(612,15,46,2,NULL),(613,18,80,2,NULL),(614,19,80,2,NULL),(615,21,80,2,NULL),(616,22,80,2,NULL),(617,23,80,2,NULL),(618,25,80,2,NULL),(619,26,80,2,NULL),(620,27,80,2,NULL),(621,6,80,2,NULL),(622,7,80,2,NULL),(623,9,80,2,NULL),(624,10,80,2,NULL),(625,12,80,2,NULL),(626,15,80,2,NULL),(627,20,29,2,NULL),(628,18,25,2,NULL),(629,19,25,2,NULL),(630,21,25,2,NULL),(631,22,25,2,NULL),(632,23,25,2,NULL),(633,25,25,2,NULL),(634,26,25,2,NULL),(635,27,25,2,NULL),(636,6,25,2,NULL),(637,7,25,2,NULL),(638,9,25,2,NULL),(639,10,25,2,NULL),(640,12,25,2,NULL),(641,15,25,2,NULL),(642,6,10,2,NULL),(643,7,10,2,NULL),(644,9,10,2,NULL),(645,10,10,2,NULL),(646,12,10,2,NULL),(647,15,10,2,NULL),(648,6,14,2,NULL),(649,7,14,2,NULL),(650,9,14,2,NULL),(651,10,14,2,NULL),(652,12,14,2,NULL),(653,15,14,2,NULL),(654,6,18,2,NULL),(655,7,18,2,NULL),(656,9,18,2,NULL),(657,10,18,2,NULL),(658,12,18,2,NULL),(659,15,18,2,NULL),(660,6,23,2,NULL),(661,7,23,2,NULL),(662,9,23,2,NULL),(663,10,23,2,NULL),(664,12,23,2,NULL),(665,15,23,2,NULL),(666,6,27,2,NULL),(667,7,27,2,NULL),(668,9,27,2,NULL),(669,10,27,2,NULL),(670,12,27,2,NULL),(671,15,27,2,NULL),(672,6,32,2,NULL),(673,7,32,2,NULL),(674,9,32,2,NULL),(675,10,32,2,NULL),(676,12,32,2,NULL),(677,15,32,2,NULL),(678,6,38,2,NULL),(679,7,38,2,NULL),(680,9,38,2,NULL),(681,10,38,2,NULL),(682,12,38,2,NULL),(683,15,38,2,NULL),(684,6,37,2,NULL),(685,7,37,2,NULL),(686,9,37,2,NULL),(687,10,37,2,NULL),(688,12,37,2,NULL),(689,15,37,2,NULL),(690,6,41,2,NULL),(691,7,41,2,NULL),(692,9,41,2,NULL),(693,10,41,2,NULL),(694,12,41,2,NULL),(695,15,41,2,NULL),(696,6,78,2,NULL),(697,7,78,2,NULL),(698,9,78,2,NULL),(699,10,78,2,NULL),(700,12,78,2,NULL),(701,15,78,2,NULL),(702,8,35,2,NULL),(703,8,44,2,NULL),(704,18,37,2,NULL),(705,19,37,2,NULL),(706,21,37,2,NULL),(707,22,37,2,NULL),(708,23,37,2,NULL),(709,25,37,2,NULL),(710,26,37,2,NULL),(711,27,37,2,NULL),(712,18,41,2,NULL),(713,19,41,2,NULL),(714,21,41,2,NULL),(715,22,41,2,NULL),(716,23,41,2,NULL),(717,25,41,2,NULL),(718,26,41,2,NULL),(719,27,41,2,NULL),(720,18,78,2,NULL),(721,19,78,2,NULL),(722,21,78,2,NULL),(723,22,78,2,NULL),(724,23,78,2,NULL),(725,25,78,2,NULL),(726,26,78,2,NULL),(727,27,78,2,NULL),(728,18,14,2,NULL),(729,19,14,2,NULL),(730,21,14,2,NULL),(731,22,14,2,NULL),(732,23,14,2,NULL),(733,25,14,2,NULL),(734,26,14,2,NULL),(735,27,14,2,NULL),(736,18,18,2,NULL),(737,19,18,2,NULL),(738,21,18,2,NULL),(739,22,18,2,NULL),(740,23,18,2,NULL),(741,25,18,2,NULL),(742,26,18,2,NULL),(743,27,18,2,NULL),(744,18,23,2,NULL),(745,19,23,2,NULL),(746,21,23,2,NULL),(747,22,23,2,NULL),(748,23,23,2,NULL),(749,25,23,2,NULL),(750,26,23,2,NULL),(751,27,23,2,NULL),(752,18,27,2,NULL),(753,19,27,2,NULL),(754,21,27,2,NULL),(755,22,27,2,NULL),(756,23,27,2,NULL),(757,25,27,2,NULL),(758,26,27,2,NULL),(759,27,27,2,NULL),(760,18,32,2,NULL),(761,19,32,2,NULL),(762,21,32,2,NULL),(763,22,32,2,NULL),(764,23,32,2,NULL),(765,25,32,2,NULL),(766,26,32,2,NULL),(767,27,32,2,NULL),(768,18,38,2,NULL),(769,19,38,2,NULL),(770,21,38,2,NULL),(771,22,38,2,NULL),(772,23,38,2,NULL),(773,25,38,2,NULL),(774,26,38,2,NULL),(775,27,38,2,NULL),(776,17,3,2,NULL),(777,17,9,2,NULL),(778,17,17,2,NULL),(779,17,21,2,NULL),(780,17,68,2,NULL),(781,13,3,2,NULL),(782,13,9,2,NULL),(783,13,17,2,NULL),(784,13,21,2,NULL),(785,13,68,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (16,'android.permission.ACCESS_COARSE_LOCATION'),(15,'android.permission.ACCESS_FINE_LOCATION'),(25,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(8,'android.permission.ACCESS_NETWORK_STATE'),(12,'android.permission.BIND_WALLPAPER'),(23,'android.permission.CAMERA'),(13,'android.permission.INSTALL_PACKAGES'),(5,'android.permission.INTERNET'),(9,'android.permission.MODIFY_PHONE_STATE'),(22,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(19,'android.permission.READ_CONTACTS'),(24,'android.permission.READ_OWNER_DATA'),(1,'android.permission.READ_PHONE_STATE'),(2,'android.permission.READ_SMS'),(3,'android.permission.RECEIVE_BOOT_COMPLETED'),(7,'android.permission.RECEIVE_SMS'),(21,'android.permission.RESTART_PACKAGES'),(4,'android.permission.SEND_SMS'),(18,'android.permission.SET_WALLPAPER'),(26,'android.permission.VIBRATE'),(27,'android.permission.WAKE_LOCK'),(10,'android.permission.WRITE_APN_SETTINGS'),(11,'android.permission.WRITE_EXTERNAL_STORAGE'),(20,'android.permission.WRITE_OWNER_DATA'),(6,'android.permission.WRITE_SMS'),(17,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(14,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://sms/',NULL,NULL,NULL),(2,NULL,NULL,'file:///sdcard/uc/myupdate.apk',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'',NULL,NULL,NULL),(5,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(8,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(9,NULL,NULL,'http://www.10086apk.com',NULL,NULL,NULL),(10,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(11,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'',NULL,NULL,NULL),(14,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,2,1),(2,8,5),(3,11,6),(4,17,8),(5,25,10),(6,29,14);
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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,2,1),(10,2,3),(11,2,5),(12,2,8),(13,2,9),(14,2,10),(15,2,11),(16,3,1),(17,3,3),(18,3,5),(19,3,8),(20,3,9),(21,3,10),(22,4,1),(23,3,11),(24,4,3),(25,4,5),(26,4,8),(27,4,9),(28,4,10),(29,4,11),(30,5,17),(31,6,17),(32,5,16),(33,6,1),(34,5,1),(35,6,3),(36,5,4),(37,6,4),(38,5,5),(39,6,5),(40,5,7),(41,6,7),(42,5,11),(43,6,11),(44,5,13),(45,6,13),(46,5,14),(47,6,14),(48,5,15),(49,7,1),(50,7,3),(51,7,5),(52,7,8),(53,7,9),(54,7,10),(55,7,11),(56,7,15),(57,7,16),(58,7,19),(59,7,18),(60,7,21),(61,7,20),(62,7,23),(63,7,22),(64,7,25),(65,7,24),(66,7,27),(67,7,26);
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

-- Dump completed on 2015-10-12  3:29:16
