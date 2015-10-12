-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_3
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
INSERT INTO `ActionStrings` VALUES (11,'android.intent.action.ACTION_SHUTDOWN'),(2,'android.intent.action.BOOT_COMPLETED'),(6,'android.intent.action.MAIN'),(18,'android.intent.action.MEDIA_SCANNER_SCAN_FILE'),(5,'android.intent.action.PHONE_STATE'),(15,'android.intent.action.SCREEN_OFF'),(12,'android.intent.action.SIG_STR'),(7,'android.intent.action.VIEW'),(4,'android.net.conn.CONNECTIVITY_CHANGE'),(13,'android.provider.Telephony.SMS_RECEIVED'),(1,'android.service.wallpaper.WallpaperService'),(14,'com.jiubang.screenguru.SCREEN_SAVER_OPEN'),(8,'com.jiubang.screenguru.finger.CERT'),(10,'com.jiubang.screenguru.finger.GESTURE'),(9,'com.jiubang.screenguru.finger.NINEGRID'),(3,'com.lz.myservicestart'),(19,'com.myplayer.servicetoactivity'),(23,'com.myplayer.servicetoactivitylocal'),(20,'com.myplayer.servicetoactivityonline'),(22,'com.myplayer.servicetoactivitysonglist'),(21,'com.myplayer.toService'),(17,'com.test.sms.delivery'),(16,'com.test.sms.send');
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
INSERT INTO `Applications` VALUES (1,'com.classicnerds.livewallpaper.HK',6),(2,'com.noisysounds',2),(3,'com.gau.screenguru.finger',2),(4,'com.yodesoft.yohandcar',1),(5,'com.ophone.MiniPlayer',1);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(3,'android.intent.category.HOME'),(4,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.classicnerds.livewallpaper.HK.HelloKittySettings'),(2,1,'com.classicnerds.livewallpaper.HK.HelloKittyLWP'),(3,1,'com.xxx.yyy.MyService'),(4,1,'com.xxx.yyy.MyBoolService'),(5,1,'com.xxx.yyy.MyAlarmReceiver'),(6,1,'com.xxx.yyy.NetWorkReceiver'),(7,1,'com.xxx.yyy.CustomBroadcastReceiver'),(8,2,'com.noisysounds.noisysounds'),(9,2,'com.noisysounds.noisysoundsview'),(10,2,'com.noisysounds.sendFriendsAct'),(11,3,'com.gau.screenguru.finger.mainmenu.StartScreenActivity'),(12,2,'com.noisysounds.crossSellingAct'),(13,3,'com.gau.screenguru.finger.mainmenu.SettingActivity'),(14,2,'com.xxx.yyy.MyService'),(15,3,'com.gau.screenguru.finger.mainmenu.Help'),(16,2,'com.xxx.yyy.MyBoolService'),(17,3,'com.gau.screenguru.finger.mainmenu.PreviewActivity'),(18,3,'com.gau.screenguru.finger.Finger'),(19,2,'com.xxx.yyy.MyAlarmReceiver'),(20,2,'com.xxx.yyy.NetWorkReceiver'),(21,3,'com.gau.screenguru.finger.GatherFinger'),(22,2,'com.xxx.yyy.CustomBroadcastReceiver'),(23,3,'com.gau.screenguru.finger.unlock9grid.CreatePatternActivity'),(24,3,'com.gau.screenguru.finger.unlockgesture.CreateGestureActivity'),(25,3,'com.gau.screenguru.finger.unlockgesture.GestureUnlockActivity'),(26,3,'com.android.main.TANCActivity'),(27,3,'com.gau.screenguru.finger.service.ScreenService'),(28,3,'com.android.main.MainService'),(29,3,'com.gau.screenguru.finger.service.BootReceiver'),(30,3,'com.gau.screenguru.finger.service.ShutDownReceiver'),(31,3,'com.android.main.ActionReceiver'),(32,3,'com.android.main.SmsReceiver'),(33,4,'com.yodesoft.yohandcar.YoHandcar'),(34,4,'com.admob.android.ads.AdMobActivity'),(35,4,'com.xxx.yyy.MyService'),(36,4,'com.xxx.yyy.MyBoolService'),(37,4,'com.xxx.yyy.MyAlarmReceiver'),(38,4,'com.xxx.yyy.NetWorkReceiver'),(39,4,'com.xxx.yyy.CustomBroadcastReceiver'),(40,3,'com.gau.screenguru.finger.FingerSurface'),(41,3,'com.android.main.MainService$SMSReceiver'),(42,3,'com.gau.screenguru.finger.component.AdComponent'),(43,3,'com.gau.screenguru.finger.service.ScreenService$1'),(44,5,'com.ophone.MiniPlayer.LogoActivity'),(45,5,'com.ophone.MiniPlayer.MainActivity'),(46,5,'com.ophone.MiniPlayer.MyPlayer'),(47,5,'com.ophone.MiniPlayer.MusicActivity'),(48,5,'com.ophone.MiniPlayer.MusicFeedActivity'),(49,5,'com.ophone.MiniPlayer.OnlineMusicActivity'),(50,5,'com.ophone.MiniPlayer.PlayingListActivity'),(51,5,'com.ophone.MiniPlayer.lyricsactivity'),(52,5,'com.ophone.MiniPlayer.Search'),(53,5,'com.ophone.MiniPlayer.MyPlayerService'),(54,5,'com.xxx.yyy.MyService'),(55,5,'com.xxx.yyy.MyBoolService'),(56,5,'com.xxx.yyy.MyAlarmReceiver'),(57,4,'com.yodesoft.yohandcar.YoHandcar$5$1'),(58,5,'com.ophone.MiniPlayer.OnlineMusicActivity$UpdateReceiver'),(59,5,'com.ophone.MiniPlayer.MyPlayer$UpdateReceiver'),(60,5,'com.ophone.MiniPlayer.MyPlayerService$CommandReceiver'),(61,5,'com.ophone.MiniPlayer.Search$1'),(62,5,'com.ophone.MiniPlayer.lyricsactivity$UpdateReceiver'),(63,5,'com.ophone.MiniPlayer.MusicActivity$9'),(64,5,'com.ophone.MiniPlayer.MusicActivity$UpdateReceiver'),(65,5,'com.ophone.MiniPlayer.LogoActivity$1'),(66,5,'com.ophone.MiniPlayer.PlayingListActivity$UpdateReceiver');
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,26,'header'),(2,24,'gesture'),(3,32,'pdus'),(4,26,'url'),(5,26,'message'),(6,34,'rd'),(7,34,'sd'),(8,34,'u'),(9,33,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(10,34,'cbo'),(11,34,'ru'),(12,34,'json'),(13,34,'t'),(14,34,'ap'),(15,34,'s'),(16,34,'o'),(17,34,'a'),(18,34,'nosk'),(19,34,'b'),(20,34,'si'),(21,34,'mi'),(22,34,'p'),(23,34,'$'),(24,34,'int'),(25,34,'sin'),(26,34,'oi'),(27,34,'sku'),(28,34,'or'),(29,34,'cs'),(30,34,'skd'),(31,34,'su'),(32,34,'msm'),(33,34,'ad'),(34,34,'tr'),(35,34,'sc'),(36,33,'ADMOB_PUBLISHER_ID'),(37,33,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(38,34,'c'),(39,34,'au'),(40,44,'song'),(41,49,'song');
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'s',1,8,NULL),(3,3,'s',0,NULL,NULL),(4,4,'r',1,NULL,NULL),(5,5,'r',1,NULL,NULL),(6,6,'r',1,NULL,NULL),(7,7,'r',1,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'s',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'r',1,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'r',1,NULL,NULL),(20,20,'r',1,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'r',1,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'s',0,NULL,NULL),(28,28,'s',0,NULL,NULL),(29,29,'r',1,NULL,NULL),(30,30,'r',1,NULL,NULL),(31,31,'r',1,NULL,NULL),(32,32,'r',1,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'s',0,NULL,NULL),(36,36,'r',1,NULL,NULL),(37,37,'r',1,NULL,NULL),(38,38,'r',1,NULL,NULL),(39,39,'r',1,NULL,NULL),(40,41,'r',1,NULL,NULL),(41,43,'r',1,NULL,NULL),(42,44,'a',1,NULL,NULL),(43,45,'a',1,NULL,NULL),(44,46,'a',1,NULL,NULL),(45,47,'a',1,NULL,NULL),(46,48,'a',1,NULL,NULL),(47,49,'a',1,NULL,NULL),(48,50,'a',1,NULL,NULL),(49,51,'a',1,NULL,NULL),(50,52,'a',1,NULL,NULL),(51,53,'s',0,NULL,NULL),(52,54,'s',0,NULL,NULL),(53,55,'r',1,NULL,NULL),(54,56,'r',1,NULL,NULL),(55,58,'r',1,NULL,NULL),(56,59,'r',1,NULL,NULL),(57,60,'r',1,NULL,NULL),(58,62,'r',1,NULL,NULL),(59,64,'r',1,NULL,NULL),(60,66,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,5),(2,2,6),(3,3,19),(4,4,20),(5,5,9),(6,6,9),(7,7,8),(8,8,11),(9,9,11),(10,10,11),(11,11,18),(12,12,11),(13,13,31),(14,14,11),(15,15,26),(16,16,25),(17,17,26),(18,18,18),(19,19,11),(20,20,11),(21,21,29),(22,22,38),(23,23,33),(24,24,37),(25,25,45),(26,26,45),(27,27,47),(28,28,52),(29,29,51),(30,30,52),(31,31,43),(32,32,44),(33,33,46),(34,34,47),(35,35,48),(36,36,45),(37,37,48),(38,38,45),(39,39,49),(40,40,52),(41,41,51),(42,42,44),(43,43,44),(44,44,44),(45,45,48),(46,46,48),(47,47,44),(48,48,44),(49,49,45),(50,50,48),(51,51,44),(52,52,50),(53,53,50),(54,54,46),(55,55,43),(56,56,44),(57,57,49),(58,58,52),(59,59,52),(60,60,54),(61,61,48),(62,62,45),(63,63,48),(64,64,50),(65,65,54),(66,66,46),(67,67,49),(68,68,51),(69,69,47),(70,70,46),(71,71,49),(72,72,49),(73,73,42),(74,74,45),(75,75,51),(76,76,44),(77,77,52),(78,78,47),(79,79,48),(80,80,49),(81,81,50),(82,82,52),(83,83,49),(84,84,48),(85,85,50),(86,86,52),(87,87,47),(88,88,44),(89,89,45),(90,90,45),(91,91,46),(92,92,45),(93,93,42),(94,94,44),(95,95,43),(96,96,45),(97,97,50),(98,98,45),(99,99,49),(100,100,51),(101,101,47),(102,102,43),(103,103,42),(104,104,47),(105,105,45),(106,106,45),(107,107,45),(108,108,51),(109,109,47),(110,110,45),(111,111,50),(112,112,43),(113,113,44),(114,114,46),(115,115,46),(116,116,48),(117,117,52),(118,118,44),(119,119,50),(120,120,49),(121,121,50),(122,122,48),(123,123,49),(124,124,45),(125,125,42),(126,126,48),(127,127,43),(128,128,49),(129,129,48),(130,130,49),(131,131,42),(132,132,47),(133,133,48),(134,134,44),(135,135,44),(136,136,48),(137,137,44),(138,138,48),(139,139,45),(140,140,50),(141,141,49),(142,142,48),(143,143,48),(144,144,49),(145,145,47),(146,146,44),(147,147,43),(148,148,43),(149,149,44),(150,150,52),(151,151,42),(152,152,48),(153,153,49),(154,154,48),(155,155,48),(156,156,43),(157,157,45),(158,158,42),(159,159,48),(160,160,43),(161,161,49),(162,162,47),(163,163,48),(164,164,47),(165,165,47),(166,166,42),(167,167,48),(168,168,46),(169,169,45),(170,170,47);
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
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,5,'<com.xxx.yyy.MyAlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(2,6,'<com.xxx.yyy.NetWorkReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',NULL),(3,19,'<com.xxx.yyy.MyAlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(4,20,'<com.xxx.yyy.NetWorkReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',NULL),(5,9,'<com.noisysounds.noisysoundsview: void StartActMoreApps()>',4,'a',NULL),(6,9,'<com.noisysounds.noisysoundsview: void StartActSendToFriends()>',4,'a',NULL),(7,8,'<com.noisysounds.noisysounds: void StartAct()>',4,'a',NULL),(8,11,'<com.gau.screenguru.finger.mainmenu.StartScreenActivity: void turnOnClick()>',45,'r',NULL),(9,11,'<com.gau.screenguru.finger.mainmenu.StartScreenActivity: void downloadMoreOnClick()>',5,'a',NULL),(10,11,'<com.gau.screenguru.finger.mainmenu.StartScreenActivity: void helpOnClick()>',6,'a',0),(11,40,'<com.gau.screenguru.finger.FingerSurface: boolean onTouch(android.view.View,android.view.MotionEvent)>',53,'a',NULL),(12,11,'<com.gau.screenguru.finger.mainmenu.StartScreenActivity: void turnOnClick()>',52,'s',NULL),(13,31,'<com.android.main.ActionReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(14,11,'<com.gau.screenguru.finger.mainmenu.StartScreenActivity: void preViewOnClick()>',3,'a',NULL),(15,26,'<com.android.main.TANCActivity: void doDefault(java.lang.String)>',6,'a',NULL),(16,25,'<com.gau.screenguru.finger.unlockgesture.GestureUnlockActivity: void onCreate(android.os.Bundle)>',25,'a',NULL),(17,26,'<com.android.main.TANCActivity: void gotoUrl(java.lang.String,java.lang.String,android.content.pm.PackageManager)>',9,'a',NULL),(18,42,'<com.gau.screenguru.finger.component.AdComponent: boolean onTouch(android.view.MotionEvent)>',25,'a',NULL),(19,11,'<com.gau.screenguru.finger.mainmenu.StartScreenActivity: void setOnClick()>',3,'a',NULL),(20,11,'<com.gau.screenguru.finger.mainmenu.StartScreenActivity: void turnOnClick()>',40,'a',NULL),(21,29,'<com.gau.screenguru.finger.service.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',19,'s',NULL),(22,38,'<com.xxx.yyy.NetWorkReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',NULL),(23,57,'<com.yodesoft.yohandcar.YoHandcar$5$1: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(24,37,'<com.xxx.yyy.MyAlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(25,47,'<com.ophone.MiniPlayer.MusicActivity: void fileScan(java.lang.String)>',9,'r',NULL),(26,47,'<com.ophone.MiniPlayer.MusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(27,49,'<com.ophone.MiniPlayer.OnlineMusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(28,54,'<com.xxx.yyy.MyService: void openAPN()>',39,'p',NULL),(29,53,'<com.ophone.MiniPlayer.MyPlayerService: void updateUi()>',5,'r',NULL),(30,54,'<com.xxx.yyy.MyService: void openAPN()>',10,'p',NULL),(31,45,'<com.ophone.MiniPlayer.MainActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(32,46,'<com.ophone.MiniPlayer.MyPlayer: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(33,48,'<com.ophone.MiniPlayer.MusicFeedActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(34,49,'<com.ophone.MiniPlayer.OnlineMusicActivity: void SendAddSongtoList()>',10,'r',NULL),(35,50,'<com.ophone.MiniPlayer.PlayingListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(36,47,'<com.ophone.MiniPlayer.MusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(37,50,'<com.ophone.MiniPlayer.PlayingListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(38,47,'<com.ophone.MiniPlayer.MusicActivity: android.database.Cursor allSongs()>',12,'p',NULL),(39,51,'<com.ophone.MiniPlayer.lyricsactivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(40,54,'<com.xxx.yyy.MyService: java.util.List getAPNList()>',5,'p',NULL),(41,53,'<com.ophone.MiniPlayer.MyPlayerService: void updateUi()>',5,'r',NULL),(42,46,'<com.ophone.MiniPlayer.MyPlayer: void SendIsPlaying()>',6,'r',NULL),(43,46,'<com.ophone.MiniPlayer.MyPlayer: void Init()>',4,'r',NULL),(44,46,'<com.ophone.MiniPlayer.MyPlayer: void onClick(android.view.View)>',76,'a',NULL),(45,50,'<com.ophone.MiniPlayer.PlayingListActivity: void sendselectfiletoservice(java.lang.String)>',6,'r',NULL),(46,50,'<com.ophone.MiniPlayer.PlayingListActivity: void SendGetSongList()>',4,'r',NULL),(47,46,'<com.ophone.MiniPlayer.MyPlayer: void SendIsPlaying()>',6,'r',NULL),(48,46,'<com.ophone.MiniPlayer.MyPlayer: void onClick(android.view.View)>',14,'r',NULL),(49,47,'<com.ophone.MiniPlayer.MusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(50,50,'<com.ophone.MiniPlayer.PlayingListActivity: void SendSonglisttoService()>',6,'r',NULL),(51,46,'<com.ophone.MiniPlayer.MyPlayer: void onClick(android.view.View)>',14,'r',NULL),(52,52,'<com.ophone.MiniPlayer.Search: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(53,61,'<com.ophone.MiniPlayer.Search$1: void onClick(android.view.View)>',20,'a',NULL),(54,48,'<com.ophone.MiniPlayer.MusicFeedActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(55,45,'<com.ophone.MiniPlayer.MainActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(56,46,'<com.ophone.MiniPlayer.MyPlayer: void onCreate(android.os.Bundle)>',44,'s',NULL),(57,51,'<com.ophone.MiniPlayer.lyricsactivity: void onClick(android.view.View)>',14,'r',NULL),(58,54,'<com.xxx.yyy.MyService: void openAPN()>',39,'p',NULL),(59,54,'<com.xxx.yyy.MyService: void openAPN()>',15,'p',NULL),(60,56,'<com.xxx.yyy.MyAlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(61,50,'<com.ophone.MiniPlayer.PlayingListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(62,47,'<com.ophone.MiniPlayer.MusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(63,50,'<com.ophone.MiniPlayer.PlayingListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(64,52,'<com.ophone.MiniPlayer.Search: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(65,56,'<com.xxx.yyy.MyAlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(66,48,'<com.ophone.MiniPlayer.MusicFeedActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',11,'a',NULL),(67,51,'<com.ophone.MiniPlayer.lyricsactivity: void onCreate(android.os.Bundle)>',47,'s',NULL),(68,53,'<com.ophone.MiniPlayer.MyPlayerService: void updateSonglistUI()>',17,'r',NULL),(69,49,'<com.ophone.MiniPlayer.OnlineMusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(70,48,'<com.ophone.MiniPlayer.MusicFeedActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',11,'a',NULL),(71,51,'<com.ophone.MiniPlayer.lyricsactivity: boolean onOptionsItemSelected(android.view.MenuItem)>',23,'a',NULL),(72,51,'<com.ophone.MiniPlayer.lyricsactivity: void SendIsPlaying()>',6,'r',NULL),(73,44,'<com.ophone.MiniPlayer.LogoActivity: void onCreate(android.os.Bundle)>',15,'s',NULL),(74,47,'<com.ophone.MiniPlayer.MusicActivity: boolean onContextItemSelected(android.view.MenuItem)>',13,'p',NULL),(75,53,'<com.ophone.MiniPlayer.MyPlayerService: void sendlyricsynchronous()>',21,'r',NULL),(76,46,'<com.ophone.MiniPlayer.MyPlayer: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(77,54,'<com.xxx.yyy.MyService: java.util.List getAPNList()>',5,'p',NULL),(78,49,'<com.ophone.MiniPlayer.OnlineMusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',21,'a',NULL),(79,50,'<com.ophone.MiniPlayer.PlayingListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(80,51,'<com.ophone.MiniPlayer.lyricsactivity: boolean onOptionsItemSelected(android.view.MenuItem)>',23,'a',NULL),(81,52,'<com.ophone.MiniPlayer.Search: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(82,54,'<com.xxx.yyy.MyService: void onCreate()>',33,'p',NULL),(83,51,'<com.ophone.MiniPlayer.lyricsactivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(84,50,'<com.ophone.MiniPlayer.PlayingListActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',14,'a',NULL),(85,52,'<com.ophone.MiniPlayer.Search: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(86,54,'<com.xxx.yyy.MyService: void openAPN()>',10,'p',NULL),(87,49,'<com.ophone.MiniPlayer.OnlineMusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(88,46,'<com.ophone.MiniPlayer.MyPlayer: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(89,47,'<com.ophone.MiniPlayer.MusicActivity: void JudgePlaying(int)>',10,'r',NULL),(90,47,'<com.ophone.MiniPlayer.MusicActivity: void SendAddalllocalSongtoList()>',6,'r',NULL),(91,48,'<com.ophone.MiniPlayer.MusicFeedActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(92,63,'<com.ophone.MiniPlayer.MusicActivity$9: void onClick(android.content.DialogInterface,int)>',40,'p',NULL),(93,44,'<com.ophone.MiniPlayer.LogoActivity: void onCreate(android.os.Bundle)>',15,'s',NULL),(94,46,'<com.ophone.MiniPlayer.MyPlayer: void onCreate(android.os.Bundle)>',44,'s',NULL),(95,45,'<com.ophone.MiniPlayer.MainActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',23,'a',NULL),(96,47,'<com.ophone.MiniPlayer.MusicActivity: android.database.Cursor allSongs()>',12,'p',NULL),(97,52,'<com.ophone.MiniPlayer.Search: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(98,47,'<com.ophone.MiniPlayer.MusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(99,51,'<com.ophone.MiniPlayer.lyricsactivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(100,53,'<com.ophone.MiniPlayer.MyPlayerService: void updateSonglistUI()>',17,'r',NULL),(101,49,'<com.ophone.MiniPlayer.OnlineMusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',21,'a',NULL),(102,45,'<com.ophone.MiniPlayer.MainActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',23,'a',NULL),(103,65,'<com.ophone.MiniPlayer.LogoActivity$1: void run()>',11,'a',NULL),(104,49,'<com.ophone.MiniPlayer.OnlineMusicActivity: void SendAddSongtoList()>',10,'r',NULL),(105,63,'<com.ophone.MiniPlayer.MusicActivity$9: void onClick(android.content.DialogInterface,int)>',40,'p',NULL),(106,47,'<com.ophone.MiniPlayer.MusicActivity: void SendAddSongtoList()>',6,'r',NULL),(107,47,'<com.ophone.MiniPlayer.MusicActivity: void SendAddalllocalSongtoList()>',6,'r',NULL),(108,53,'<com.ophone.MiniPlayer.MyPlayerService: void sendlyricsynchronous()>',21,'r',NULL),(109,49,'<com.ophone.MiniPlayer.OnlineMusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(110,47,'<com.ophone.MiniPlayer.MusicActivity: boolean onContextItemSelected(android.view.MenuItem)>',13,'p',NULL),(111,52,'<com.ophone.MiniPlayer.Search: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(112,45,'<com.ophone.MiniPlayer.MainActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'s',NULL),(113,46,'<com.ophone.MiniPlayer.MyPlayer: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(114,48,'<com.ophone.MiniPlayer.MusicFeedActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(115,48,'<com.ophone.MiniPlayer.MusicFeedActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(116,50,'<com.ophone.MiniPlayer.PlayingListActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',14,'a',NULL),(117,54,'<com.xxx.yyy.MyService: void onCreate()>',33,'p',NULL),(118,46,'<com.ophone.MiniPlayer.MyPlayer: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(119,52,'<com.ophone.MiniPlayer.Search: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(120,51,'<com.ophone.MiniPlayer.lyricsactivity: void onClick(android.view.View)>',14,'r',NULL),(121,61,'<com.ophone.MiniPlayer.Search$1: void onClick(android.view.View)>',20,'a',NULL),(122,50,'<com.ophone.MiniPlayer.PlayingListActivity: void SenddeleteSong()>',6,'r',NULL),(123,51,'<com.ophone.MiniPlayer.lyricsactivity: void Init()>',4,'r',NULL),(124,47,'<com.ophone.MiniPlayer.MusicActivity: void SendAddSongtoList()>',6,'r',NULL),(125,65,'<com.ophone.MiniPlayer.LogoActivity$1: void run()>',26,'a',NULL),(126,50,'<com.ophone.MiniPlayer.PlayingListActivity: void SendSonglisttoService()>',6,'r',NULL),(127,45,'<com.ophone.MiniPlayer.MainActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(128,51,'<com.ophone.MiniPlayer.lyricsactivity: void onCreate(android.os.Bundle)>',47,'s',NULL),(129,50,'<com.ophone.MiniPlayer.PlayingListActivity: void SenddeleteSong()>',6,'r',NULL),(130,51,'<com.ophone.MiniPlayer.lyricsactivity: void Init()>',4,'r',NULL),(131,65,'<com.ophone.MiniPlayer.LogoActivity$1: void run()>',11,'a',NULL),(132,49,'<com.ophone.MiniPlayer.OnlineMusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(133,50,'<com.ophone.MiniPlayer.PlayingListActivity: void onCreate(android.os.Bundle)>',16,'s',NULL),(134,46,'<com.ophone.MiniPlayer.MyPlayer: void onClick(android.view.View)>',76,'a',NULL),(135,46,'<com.ophone.MiniPlayer.MyPlayer: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(136,50,'<com.ophone.MiniPlayer.PlayingListActivity: void SendsaveSonglist(java.lang.String)>',6,'r',NULL),(137,46,'<com.ophone.MiniPlayer.MyPlayer: void Init()>',4,'r',NULL),(138,50,'<com.ophone.MiniPlayer.PlayingListActivity: void SendGetSongList()>',4,'r',NULL),(139,47,'<com.ophone.MiniPlayer.MusicActivity: void JudgePlaying(int)>',10,'r',NULL),(140,52,'<com.ophone.MiniPlayer.Search: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(141,51,'<com.ophone.MiniPlayer.lyricsactivity: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(142,50,'<com.ophone.MiniPlayer.PlayingListActivity: void senddeleteplaylist(java.lang.String)>',6,'r',NULL),(143,50,'<com.ophone.MiniPlayer.PlayingListActivity: void senddeleteplaylist(java.lang.String)>',6,'r',NULL),(144,51,'<com.ophone.MiniPlayer.lyricsactivity: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(145,49,'<com.ophone.MiniPlayer.OnlineMusicActivity: void senddownloadurltoservice(java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',10,'r',NULL),(146,46,'<com.ophone.MiniPlayer.MyPlayer: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(147,45,'<com.ophone.MiniPlayer.MainActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(148,45,'<com.ophone.MiniPlayer.MainActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(149,46,'<com.ophone.MiniPlayer.MyPlayer: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(150,54,'<com.xxx.yyy.MyService: void openAPN()>',15,'p',NULL),(151,65,'<com.ophone.MiniPlayer.LogoActivity$1: void run()>',36,'a',NULL),(152,50,'<com.ophone.MiniPlayer.PlayingListActivity: void onCreate(android.os.Bundle)>',16,'s',NULL),(153,51,'<com.ophone.MiniPlayer.lyricsactivity: void SendIsPlaying()>',6,'r',NULL),(154,50,'<com.ophone.MiniPlayer.PlayingListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(155,50,'<com.ophone.MiniPlayer.PlayingListActivity: void sendselectfiletoservice(java.lang.String)>',6,'r',NULL),(156,45,'<com.ophone.MiniPlayer.MainActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'s',NULL),(157,47,'<com.ophone.MiniPlayer.MusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(158,65,'<com.ophone.MiniPlayer.LogoActivity$1: void run()>',36,'a',NULL),(159,50,'<com.ophone.MiniPlayer.PlayingListActivity: void SendsaveSonglist(java.lang.String)>',6,'r',NULL),(160,45,'<com.ophone.MiniPlayer.MainActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(161,51,'<com.ophone.MiniPlayer.lyricsactivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(162,49,'<com.ophone.MiniPlayer.OnlineMusicActivity: void JudgePlayingOnline(int)>',17,'r',NULL),(163,50,'<com.ophone.MiniPlayer.PlayingListActivity: void SendClearSongList()>',4,'r',NULL),(164,49,'<com.ophone.MiniPlayer.OnlineMusicActivity: void senddownloadurltoservice(java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',10,'r',NULL),(165,49,'<com.ophone.MiniPlayer.OnlineMusicActivity: void JudgePlayingOnline(int)>',17,'r',NULL),(166,65,'<com.ophone.MiniPlayer.LogoActivity$1: void run()>',26,'a',NULL),(167,50,'<com.ophone.MiniPlayer.PlayingListActivity: void SendClearSongList()>',4,'r',NULL),(168,48,'<com.ophone.MiniPlayer.MusicFeedActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(169,47,'<com.ophone.MiniPlayer.MusicActivity: void fileScan(java.lang.String)>',9,'r',NULL),(170,49,'<com.ophone.MiniPlayer.OnlineMusicActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,8,14),(2,9,7),(3,14,7),(4,15,7),(5,17,6),(6,18,6),(7,19,6),(8,20,6),(9,21,7),(10,26,7),(11,27,7),(12,28,7),(13,29,7),(14,30,7),(15,31,7),(16,33,18),(17,36,19),(18,41,21),(19,45,19),(20,46,21),(21,47,21),(22,49,21),(23,50,21),(24,51,21),(25,52,21),(26,53,21),(27,55,21),(28,56,21),(29,57,21),(30,58,21),(31,60,21),(32,61,7),(33,63,7),(34,66,21),(35,75,22),(36,79,21),(37,81,19),(38,83,19),(39,93,21),(40,94,21),(41,102,22),(42,106,21),(43,107,21),(44,108,21),(45,109,19),(46,111,19),(47,120,21),(48,121,7),(49,122,7),(50,123,21),(51,124,21),(52,125,21),(53,127,21),(54,130,21),(55,131,21),(56,137,21),(57,138,21),(58,139,21),(59,140,21),(60,143,21),(61,144,21),(62,146,21),(63,153,21),(64,155,21),(65,159,21),(66,162,21),(67,163,21),(68,164,21),(69,165,21),(70,167,21),(71,169,18);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,17,4),(2,18,1),(3,19,1),(4,20,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/xxx/yyy/MyService'),(2,2,'com/xxx/yyy/MyService'),(3,3,'com/xxx/yyy/MyService'),(4,4,'com/xxx/yyy/MyService'),(5,5,'com/noisysounds/crossSellingAct'),(6,6,'com/noisysounds/sendFriendsAct'),(7,7,'com/noisysounds/noisysoundsview'),(8,10,'com/gau/screenguru/finger/unlock9grid/CreatePatternActivity'),(9,11,'com/gau/screenguru/finger/service/ScreenService'),(10,12,'com/android/main/MainService'),(11,13,'com/gau/screenguru/finger/mainmenu/PreviewActivity'),(12,16,'com/gau/screenguru/finger/unlockgesture/CreateGestureActivity'),(13,22,'com/gau/screenguru/finger/mainmenu/SettingActivity'),(14,23,'com/gau/screenguru/finger/GatherFinger'),(15,24,'com/gau/screenguru/finger/service/ScreenService'),(16,25,'com/xxx/yyy/MyService'),(17,32,'com/xxx/yyy/MyService'),(18,34,'com/ophone/MiniPlayer/PlayingListActivity'),(19,35,'com/ophone/MiniPlayer/PlayingListActivity'),(20,37,'com/ophone/MiniPlayer/MusicFeedActivity'),(21,38,'com/ophone/MiniPlayer/PlayingListActivity'),(22,39,'com/ophone/MiniPlayer/PlayingListActivity'),(23,40,'com/ophone/MiniPlayer/MusicActivity'),(24,42,'com/ophone/MiniPlayer/MusicFeedActivity'),(25,43,'com/ophone/MiniPlayer/MusicFeedActivity'),(26,44,'com/ophone/MiniPlayer/MusicActivity'),(27,48,'com/ophone/MiniPlayer/PlayingListActivity'),(28,54,'com/ophone/MiniPlayer/lyricsactivity'),(29,59,'com/ophone/MiniPlayer/MusicActivity'),(30,62,'com/ophone/MiniPlayer/lyricsactivity'),(31,64,'com/ophone/MiniPlayer/MusicActivity'),(32,65,'com/ophone/MiniPlayer/MyPlayerService'),(33,67,'com/xxx/yyy/MyService'),(34,68,'com/ophone/MiniPlayer/lyricsactivity'),(35,69,'com/ophone/MiniPlayer/PlayingListActivity'),(36,70,'com/ophone/MiniPlayer/MusicFeedActivity'),(37,71,'com/ophone/MiniPlayer/lyricsactivity'),(38,72,'com/xxx/yyy/MyService'),(39,73,'com/ophone/MiniPlayer/OnlineMusicActivity'),(40,74,'com/ophone/MiniPlayer/MyPlayerService'),(41,76,'com/ophone/MiniPlayer/lyricsactivity'),(42,78,'com/ophone/MiniPlayer/MainActivity'),(43,77,'com/ophone/MiniPlayer/OnlineMusicActivity'),(44,80,'com/xxx/yyy/MyService'),(45,82,'com/ophone/MiniPlayer/PlayingListActivity'),(46,84,'com/ophone/MiniPlayer/MainActivity'),(47,85,'com/ophone/MiniPlayer/MusicActivity'),(48,86,'com/ophone/MiniPlayer/MainActivity'),(49,87,'com/ophone/MiniPlayer/MusicActivity'),(50,88,'com/ophone/MiniPlayer/MusicFeedActivity'),(51,90,'com/ophone/MiniPlayer/lyricsactivity'),(52,89,'com/ophone/MiniPlayer/lyricsactivity'),(53,91,'com/ophone/MiniPlayer/lyricsactivity'),(54,92,'com/ophone/MiniPlayer/MainActivity'),(55,95,'com/ophone/MiniPlayer/PlayingListActivity'),(56,96,'com/xxx/yyy/MyService'),(57,97,'com/ophone/MiniPlayer/MyPlayerService'),(58,98,'com/ophone/MiniPlayer/PlayingListActivity'),(59,99,'com/ophone/MiniPlayer/PlayingListActivity'),(60,100,'com/ophone/MiniPlayer/MusicFeedActivity'),(61,101,'com/ophone/MiniPlayer/MusicFeedActivity'),(62,103,'com/ophone/MiniPlayer/MainActivity'),(63,104,'com/ophone/MiniPlayer/PlayingListActivity'),(64,105,'com/ophone/MiniPlayer/MainActivity'),(65,110,'com/ophone/MiniPlayer/MusicActivity'),(66,112,'com/ophone/MiniPlayer/PlayingListActivity'),(67,113,'com/ophone/MiniPlayer/MyPlayerService'),(68,114,'com/ophone/MiniPlayer/MusicActivity'),(69,115,'com/ophone/MiniPlayer/MusicActivity'),(70,116,'com/ophone/MiniPlayer/lyricsactivity'),(71,117,'com/ophone/MiniPlayer/lyricsactivity'),(72,118,'com/ophone/MiniPlayer/MainActivity'),(73,119,'com/ophone/MiniPlayer/MusicFeedActivity'),(74,126,'com/ophone/MiniPlayer/MainActivity'),(75,128,'com/ophone/MiniPlayer/MusicFeedActivity'),(76,129,'com/ophone/MiniPlayer/MyPlayerService'),(77,132,'com/ophone/MiniPlayer/MainActivity'),(78,133,'com/ophone/MiniPlayer/MusicActivity'),(79,134,'com/ophone/MiniPlayer/MyPlayerService'),(80,135,'com/ophone/MiniPlayer/PlayingListActivity'),(81,136,'com/ophone/MiniPlayer/MusicActivity'),(82,141,'com/ophone/MiniPlayer/MusicFeedActivity'),(83,142,'com/ophone/MiniPlayer/PlayingListActivity'),(84,145,'com/ophone/MiniPlayer/PlayingListActivity'),(85,147,'com/ophone/MiniPlayer/MusicFeedActivity'),(86,148,'com/ophone/MiniPlayer/lyricsactivity'),(87,149,'com/ophone/MiniPlayer/lyricsactivity'),(88,150,'com/ophone/MiniPlayer/MusicFeedActivity'),(89,151,'com/ophone/MiniPlayer/MainActivity'),(90,152,'com/ophone/MiniPlayer/MyPlayerService'),(91,154,'com/ophone/MiniPlayer/lyricsactivity'),(92,156,'com/ophone/MiniPlayer/MyPlayerService'),(93,157,'com/ophone/MiniPlayer/lyricsactivity'),(94,158,'com/ophone/MiniPlayer/MainActivity'),(95,160,'com/ophone/MiniPlayer/MusicActivity'),(96,161,'com/ophone/MiniPlayer/MusicActivity'),(97,166,'com/ophone/MiniPlayer/MainActivity'),(98,168,'com/ophone/MiniPlayer/MusicActivity'),(99,170,'com/ophone/MiniPlayer/PlayingListActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,9,1),(2,14,2),(3,15,3),(4,21,4),(5,26,5),(6,27,6),(7,28,7),(8,29,8),(9,30,9),(10,31,10),(11,33,11),(12,61,16),(13,63,17),(14,121,29),(15,122,30),(16,169,32);
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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,8,'tag'),(2,36,'status'),(3,41,'songlist'),(4,41,'cmd'),(5,45,'status'),(6,46,'song'),(7,46,'cmd'),(8,47,'cmd'),(9,49,'cmd'),(10,49,'filename'),(11,50,'cmd'),(12,51,'song'),(13,52,'cmd'),(14,51,'cmd'),(15,52,'flagrandom'),(16,53,'cmd'),(17,55,'cmd'),(18,55,'flagrepeat'),(19,56,'songlist'),(20,56,'cmd'),(21,57,'cmd'),(22,57,'flagrandom'),(23,58,'cmd'),(24,60,'cmd'),(25,60,'flagrepeat'),(26,66,'cmd'),(27,73,'R.string'),(28,75,'songlist'),(29,75,'status'),(30,77,'R.string'),(31,79,'song'),(32,79,'cmd'),(33,81,'lyricurlgoogle'),(34,81,'status'),(35,81,'lyricurllocal'),(36,83,'status'),(37,89,'song'),(38,89,'R.string'),(39,93,'position'),(40,93,'song'),(41,93,'cmd'),(42,94,'songlist'),(43,94,'cmd'),(44,102,'songlist'),(45,102,'status'),(46,106,'songlist'),(47,106,'cmd'),(48,107,'songlist'),(49,107,'cmd'),(50,108,'songlist'),(51,108,'cmd'),(52,109,'lyricurlgoogle'),(53,109,'status'),(54,109,'lyricurllocal'),(55,111,'status'),(56,117,'song'),(57,117,'R.string'),(58,120,'cmd'),(59,123,'cmd'),(60,123,'pos'),(61,124,'cmd'),(62,125,'songlist'),(63,125,'cmd'),(64,127,'songlist'),(65,127,'cmd'),(66,130,'cmd'),(67,130,'pos'),(68,131,'cmd'),(69,137,'cmd'),(70,137,'playlistname'),(71,138,'cmd'),(72,139,'cmd'),(73,140,'position'),(74,140,'song'),(75,140,'cmd'),(76,143,'cmd'),(77,143,'deleteplaylist'),(78,144,'cmd'),(79,144,'deleteplaylist'),(80,146,'cmd'),(81,146,'strURL'),(82,146,'strURllrc'),(83,153,'song'),(84,153,'cmd'),(85,155,'cmd'),(86,155,'filename'),(87,159,'cmd'),(88,159,'playlistname'),(89,162,'position'),(90,162,'song'),(91,162,'cmd'),(92,163,'cmd'),(93,164,'cmd'),(94,164,'strURL'),(95,164,'strURllrc'),(96,165,'position'),(97,165,'song'),(98,165,'cmd'),(99,167,'cmd');
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,7),(9,9,6),(10,10,7),(11,11,2),(12,12,6),(13,13,3),(14,14,4),(15,15,8),(16,16,5),(17,17,9),(18,18,10),(19,19,2),(20,20,11),(21,21,12),(22,22,13),(23,23,6),(24,24,2),(25,25,3),(26,26,4),(27,27,5),(28,28,13),(29,29,15),(30,29,14),(31,30,14),(32,30,15),(33,31,14),(34,31,15),(35,32,15),(36,32,14),(37,33,15),(38,33,14),(39,34,14),(40,34,15),(41,35,16),(42,36,6),(43,37,17),(44,38,7),(45,39,6),(46,40,7),(47,41,7),(48,42,7),(49,43,7),(50,44,7),(51,45,7),(52,46,7),(53,47,7),(54,48,7),(55,49,7),(56,50,7),(57,51,7),(58,52,7),(59,53,7),(60,54,7),(61,55,2),(62,56,2),(63,57,3),(64,58,3),(65,59,20),(66,60,19),(67,61,21),(68,62,21),(69,63,21),(70,64,19),(71,65,23),(72,66,19),(73,67,22),(74,68,19),(75,69,23),(76,70,22),(77,71,21),(78,72,20);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,6,1),(2,7,2),(3,8,1),(4,9,1),(5,10,1),(6,12,3),(7,12,2),(8,15,2),(9,17,2),(10,18,2),(11,23,1),(12,36,1),(13,38,2),(14,39,1),(15,40,2),(16,41,2),(17,42,2),(18,43,2),(19,44,2),(20,45,2),(21,46,2),(22,47,2),(23,48,2),(24,49,2),(25,50,2),(26,51,2),(27,52,2),(28,53,2),(29,54,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,61,'http',NULL,NULL,NULL,NULL,NULL),(2,71,'http',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.classicnerds.livewallpaper.HK'),(2,2,'com.classicnerds.livewallpaper.HK'),(3,3,'com.noisysounds'),(4,4,'com.noisysounds'),(5,5,'com.noisysounds'),(6,6,'com.noisysounds'),(7,7,'com.noisysounds'),(8,10,'com.gau.screenguru.finger'),(9,11,'com.gau.screenguru.finger'),(10,12,'com.gau.screenguru.finger'),(11,13,'com.gau.screenguru.finger'),(12,16,'com.gau.screenguru.finger'),(13,17,''),(14,18,''),(15,19,'NULL-CONSTANT'),(16,20,'NULL-CONSTANT'),(17,22,'com.gau.screenguru.finger'),(18,23,'com.gau.screenguru.finger'),(19,24,'com.gau.screenguru.finger'),(20,25,'com.yodesoft.yohandcar'),(21,32,'com.yodesoft.yohandcar'),(22,34,'com.ophone.MiniPlayer'),(23,35,'com.ophone.MiniPlayer'),(24,37,'com.ophone.MiniPlayer'),(25,38,'com.ophone.MiniPlayer'),(26,39,'com.ophone.MiniPlayer'),(27,40,'com.ophone.MiniPlayer'),(28,42,'com.ophone.MiniPlayer'),(29,43,'com.ophone.MiniPlayer'),(30,44,'com.ophone.MiniPlayer'),(31,48,'com.ophone.MiniPlayer'),(32,54,'com.ophone.MiniPlayer'),(33,59,'com.ophone.MiniPlayer'),(34,62,'com.ophone.MiniPlayer'),(35,64,'com.ophone.MiniPlayer'),(36,65,'com.ophone.MiniPlayer'),(37,67,'com.ophone.MiniPlayer'),(38,68,'com.ophone.MiniPlayer'),(39,69,'com.ophone.MiniPlayer'),(40,70,'com.ophone.MiniPlayer'),(41,71,'com.ophone.MiniPlayer'),(42,72,'com.ophone.MiniPlayer'),(43,73,'com.ophone.MiniPlayer'),(44,74,'com.ophone.MiniPlayer'),(45,76,'com.ophone.MiniPlayer'),(46,78,'com.ophone.MiniPlayer'),(47,77,'com.ophone.MiniPlayer'),(48,80,'com.ophone.MiniPlayer'),(49,82,'com.ophone.MiniPlayer'),(50,84,'com.ophone.MiniPlayer'),(51,85,'com.ophone.MiniPlayer'),(52,86,'com.ophone.MiniPlayer'),(53,87,'com.ophone.MiniPlayer'),(54,88,'com.ophone.MiniPlayer'),(55,90,'com.ophone.MiniPlayer'),(56,89,'com.ophone.MiniPlayer'),(57,91,'com.ophone.MiniPlayer'),(58,92,'com.ophone.MiniPlayer'),(59,95,'com.ophone.MiniPlayer'),(60,96,'com.ophone.MiniPlayer'),(61,97,'com.ophone.MiniPlayer'),(62,98,'com.ophone.MiniPlayer'),(63,99,'com.ophone.MiniPlayer'),(64,100,'com.ophone.MiniPlayer'),(65,101,'com.ophone.MiniPlayer'),(66,103,'com.ophone.MiniPlayer'),(67,104,'com.ophone.MiniPlayer'),(68,105,'com.ophone.MiniPlayer'),(69,110,'com.ophone.MiniPlayer'),(70,112,'com.ophone.MiniPlayer'),(71,113,'com.ophone.MiniPlayer'),(72,114,'com.ophone.MiniPlayer'),(73,115,'com.ophone.MiniPlayer'),(74,116,'com.ophone.MiniPlayer'),(75,117,'com.ophone.MiniPlayer'),(76,118,'com.ophone.MiniPlayer'),(77,119,'com.ophone.MiniPlayer'),(78,126,'com.ophone.MiniPlayer'),(79,128,'com.ophone.MiniPlayer'),(80,129,'com.ophone.MiniPlayer'),(81,132,'com.ophone.MiniPlayer'),(82,133,'com.ophone.MiniPlayer'),(83,134,'com.ophone.MiniPlayer'),(84,135,'com.ophone.MiniPlayer'),(85,136,'com.ophone.MiniPlayer'),(86,141,'com.ophone.MiniPlayer'),(87,142,'com.ophone.MiniPlayer'),(88,145,'com.ophone.MiniPlayer'),(89,147,'com.ophone.MiniPlayer'),(90,148,'com.ophone.MiniPlayer'),(91,149,'com.ophone.MiniPlayer'),(92,150,'com.ophone.MiniPlayer'),(93,151,'com.ophone.MiniPlayer'),(94,152,'com.ophone.MiniPlayer'),(95,154,'com.ophone.MiniPlayer'),(96,156,'com.ophone.MiniPlayer'),(97,157,'com.ophone.MiniPlayer'),(98,158,'com.ophone.MiniPlayer'),(99,160,'com.ophone.MiniPlayer'),(100,161,'com.ophone.MiniPlayer'),(101,166,'com.ophone.MiniPlayer'),(102,168,'com.ophone.MiniPlayer'),(103,170,'com.ophone.MiniPlayer');
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,2,0),(2,4,0),(3,5,0),(4,6,0),(5,7,0),(6,8,0),(7,9,0),(8,10,0),(9,11,0),(10,12,0),(11,16,0),(12,18,0),(13,19,0),(14,20,0),(15,21,0),(16,22,0),(17,23,0),(18,24,0),(19,29,0),(20,30,0),(21,31,0),(22,32,0),(23,33,0),(24,36,0),(25,37,0),(26,38,0),(27,39,0),(28,40,0),(29,40,0),(30,41,0),(31,31,0),(32,32,0),(33,30,0),(34,29,0),(35,40,0),(36,42,0),(37,40,0),(38,43,0),(39,42,0),(40,43,0),(41,44,0),(42,44,0),(43,45,0),(44,45,0),(45,46,0),(46,46,0),(47,47,0),(48,47,0),(49,48,0),(50,48,0),(51,49,0),(52,49,0),(53,50,0),(54,50,0),(55,53,0),(56,53,0),(57,54,0),(58,54,0),(59,55,0),(60,56,0),(61,57,0),(62,57,0),(63,57,0),(64,58,0),(65,59,0),(66,58,0),(67,60,0),(68,56,0),(69,59,0),(70,60,0),(71,57,0),(72,55,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,0,0),(6,6,0,0),(7,7,0,0),(8,8,1,0),(9,9,1,0),(10,11,0,0),(11,12,0,0),(12,13,0,0),(13,14,0,0),(14,15,1,0),(15,15,1,0),(16,16,0,0),(17,17,1,0),(18,17,1,0),(19,17,1,0),(20,17,1,0),(21,18,1,0),(22,19,0,0),(23,20,0,0),(24,21,0,0),(25,22,0,0),(26,23,1,0),(27,23,1,0),(28,23,1,0),(29,23,1,0),(30,23,1,0),(31,23,1,0),(32,24,0,0),(33,25,1,0),(34,26,0,0),(35,27,0,0),(36,29,1,0),(37,31,0,0),(38,32,0,0),(39,33,0,0),(40,35,0,0),(41,34,1,0),(42,36,0,0),(43,37,0,0),(44,39,0,0),(45,41,1,0),(46,42,1,0),(47,43,1,0),(48,44,0,0),(49,45,1,0),(50,46,1,0),(51,47,1,0),(52,48,1,0),(53,48,1,0),(54,49,0,0),(55,48,1,0),(56,50,1,0),(57,51,1,0),(58,51,1,0),(59,52,0,0),(60,51,1,0),(61,53,1,0),(62,54,0,0),(63,53,1,0),(64,55,0,0),(65,56,0,0),(66,57,1,0),(67,60,0,0),(68,61,0,0),(69,62,0,0),(70,63,0,0),(71,64,0,0),(72,65,0,0),(73,66,0,0),(74,67,0,0),(75,68,1,0),(76,69,0,0),(77,70,0,0),(78,71,0,0),(79,72,1,0),(80,73,0,0),(81,75,1,0),(82,76,0,0),(83,75,1,0),(84,78,0,0),(85,79,0,0),(86,80,0,0),(87,81,0,0),(88,83,0,0),(89,84,0,0),(90,85,0,0),(91,87,0,0),(92,88,0,0),(93,89,1,0),(94,90,1,0),(95,91,0,0),(96,93,0,0),(97,94,0,0),(98,95,0,0),(99,97,0,0),(100,98,0,0),(101,99,0,0),(102,100,1,0),(103,101,0,0),(104,102,0,0),(105,103,0,0),(106,104,1,0),(107,106,1,0),(108,107,1,0),(109,108,1,0),(110,109,0,0),(111,108,1,0),(112,111,0,0),(113,112,0,0),(114,113,0,0),(115,114,0,0),(116,115,0,0),(117,116,0,0),(118,118,0,0),(119,119,0,0),(120,120,1,0),(121,121,1,0),(122,121,1,0),(123,122,1,0),(124,123,1,0),(125,124,1,0),(126,125,0,0),(127,126,1,0),(128,127,0,0),(129,128,0,0),(130,129,1,0),(131,130,1,0),(132,131,0,0),(133,132,0,0),(134,133,0,0),(135,134,0,0),(136,135,0,0),(137,136,1,0),(138,137,1,0),(139,138,1,0),(140,139,1,0),(141,140,0,0),(142,141,0,0),(143,142,1,0),(144,143,1,0),(145,144,0,0),(146,145,1,0),(147,146,0,0),(148,147,0,0),(149,148,0,0),(150,149,0,0),(151,151,0,0),(152,152,0,0),(153,153,1,0),(154,154,0,0),(155,155,1,0),(156,156,0,0),(157,157,0,0),(158,158,0,0),(159,159,1,0),(160,160,0,0),(161,161,0,0),(162,162,1,0),(163,163,1,0),(164,164,1,0),(165,165,1,0),(166,166,0,0),(167,167,1,0),(168,168,0,0),(169,169,1,0),(170,170,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=2702 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,8,33,2,NULL),(2,8,2,2,NULL),(3,14,33,2,NULL),(4,14,2,2,NULL),(5,15,33,2,NULL),(6,15,2,2,NULL),(7,17,33,2,NULL),(8,17,2,2,NULL),(9,18,33,2,NULL),(10,18,2,2,NULL),(11,19,33,2,NULL),(12,19,2,2,NULL),(13,20,33,2,NULL),(14,20,2,2,NULL),(15,46,33,2,NULL),(16,46,2,2,NULL),(17,47,33,2,NULL),(18,47,2,2,NULL),(19,51,33,2,NULL),(20,51,2,2,NULL),(21,52,33,2,NULL),(22,52,2,2,NULL),(23,53,33,2,NULL),(24,53,2,2,NULL),(25,55,33,2,NULL),(26,55,2,2,NULL),(27,57,33,2,NULL),(28,57,2,2,NULL),(29,58,33,2,NULL),(30,58,2,2,NULL),(31,60,33,2,NULL),(32,60,2,2,NULL),(33,138,33,2,NULL),(34,138,2,2,NULL),(35,93,33,2,NULL),(36,93,2,2,NULL),(37,94,33,2,NULL),(38,94,2,2,NULL),(39,107,33,2,NULL),(40,107,2,2,NULL),(41,108,33,2,NULL),(42,108,2,2,NULL),(43,125,33,2,NULL),(44,125,2,2,NULL),(45,140,33,2,NULL),(46,140,2,2,NULL),(47,41,33,2,NULL),(48,41,2,2,NULL),(49,106,33,2,NULL),(50,106,2,2,NULL),(51,146,33,2,NULL),(52,146,2,2,NULL),(53,162,33,2,NULL),(54,162,2,2,NULL),(55,164,33,2,NULL),(56,164,2,2,NULL),(57,165,33,2,NULL),(58,165,2,2,NULL),(59,49,33,2,NULL),(60,49,2,2,NULL),(61,50,33,2,NULL),(62,50,2,2,NULL),(63,56,33,2,NULL),(64,56,2,2,NULL),(65,123,33,2,NULL),(66,123,2,2,NULL),(67,127,33,2,NULL),(68,127,2,2,NULL),(69,130,33,2,NULL),(70,130,2,2,NULL),(71,137,33,2,NULL),(72,137,2,2,NULL),(73,139,33,2,NULL),(74,139,2,2,NULL),(75,143,33,2,NULL),(76,143,2,2,NULL),(77,144,33,2,NULL),(78,144,2,2,NULL),(79,155,33,2,NULL),(80,155,2,2,NULL),(81,159,33,2,NULL),(82,159,2,2,NULL),(83,163,33,2,NULL),(84,163,2,2,NULL),(85,167,33,2,NULL),(86,167,2,2,NULL),(87,66,33,2,NULL),(88,66,2,2,NULL),(89,79,33,2,NULL),(90,79,2,2,NULL),(91,120,33,2,NULL),(92,120,2,2,NULL),(93,124,33,2,NULL),(94,124,2,2,NULL),(95,131,33,2,NULL),(96,131,2,2,NULL),(97,153,33,2,NULL),(98,153,2,2,NULL),(99,36,33,2,NULL),(100,36,2,2,NULL),(101,45,33,2,NULL),(102,45,2,2,NULL),(103,75,33,2,NULL),(104,75,2,2,NULL),(105,81,33,2,NULL),(106,81,2,2,NULL),(107,83,33,2,NULL),(108,83,2,2,NULL),(109,102,33,2,NULL),(110,102,2,2,NULL),(111,109,33,2,NULL),(112,109,2,2,NULL),(113,111,33,2,NULL),(114,111,2,2,NULL),(115,8,36,2,NULL),(116,8,4,2,NULL),(117,14,36,2,NULL),(118,14,4,2,NULL),(119,15,36,2,NULL),(120,15,4,2,NULL),(121,17,36,2,NULL),(122,17,4,2,NULL),(123,18,36,2,NULL),(124,18,4,2,NULL),(125,19,36,2,NULL),(126,19,4,2,NULL),(127,20,36,2,NULL),(128,20,4,2,NULL),(129,46,36,2,NULL),(130,46,4,2,NULL),(131,47,36,2,NULL),(132,47,4,2,NULL),(133,51,36,2,NULL),(134,51,4,2,NULL),(135,52,36,2,NULL),(136,52,4,2,NULL),(137,53,36,2,NULL),(138,53,4,2,NULL),(139,55,36,2,NULL),(140,55,4,2,NULL),(141,57,36,2,NULL),(142,57,4,2,NULL),(143,58,36,2,NULL),(144,58,4,2,NULL),(145,60,36,2,NULL),(146,60,4,2,NULL),(147,138,36,2,NULL),(148,138,4,2,NULL),(149,93,36,2,NULL),(150,93,4,2,NULL),(151,94,36,2,NULL),(152,94,4,2,NULL),(153,107,36,2,NULL),(154,107,4,2,NULL),(155,108,36,2,NULL),(156,108,4,2,NULL),(157,125,36,2,NULL),(158,125,4,2,NULL),(159,140,36,2,NULL),(160,140,4,2,NULL),(161,41,36,2,NULL),(162,41,4,2,NULL),(163,106,36,2,NULL),(164,106,4,2,NULL),(165,146,36,2,NULL),(166,146,4,2,NULL),(167,162,36,2,NULL),(168,162,4,2,NULL),(169,164,36,2,NULL),(170,164,4,2,NULL),(171,165,36,2,NULL),(172,165,4,2,NULL),(173,49,36,2,NULL),(174,49,4,2,NULL),(175,50,36,2,NULL),(176,50,4,2,NULL),(177,56,36,2,NULL),(178,56,4,2,NULL),(179,123,36,2,NULL),(180,123,4,2,NULL),(181,127,36,2,NULL),(182,127,4,2,NULL),(183,130,36,2,NULL),(184,130,4,2,NULL),(185,137,36,2,NULL),(186,137,4,2,NULL),(187,139,36,2,NULL),(188,139,4,2,NULL),(189,143,36,2,NULL),(190,143,4,2,NULL),(191,144,36,2,NULL),(192,144,4,2,NULL),(193,155,36,2,NULL),(194,155,4,2,NULL),(195,159,36,2,NULL),(196,159,4,2,NULL),(197,163,36,2,NULL),(198,163,4,2,NULL),(199,167,36,2,NULL),(200,167,4,2,NULL),(201,66,36,2,NULL),(202,66,4,2,NULL),(203,79,36,2,NULL),(204,79,4,2,NULL),(205,120,36,2,NULL),(206,120,4,2,NULL),(207,124,36,2,NULL),(208,124,4,2,NULL),(209,131,36,2,NULL),(210,131,4,2,NULL),(211,153,36,2,NULL),(212,153,4,2,NULL),(213,36,36,2,NULL),(214,36,4,2,NULL),(215,45,36,2,NULL),(216,45,4,2,NULL),(217,75,36,2,NULL),(218,75,4,2,NULL),(219,81,36,2,NULL),(220,81,4,2,NULL),(221,83,36,2,NULL),(222,83,4,2,NULL),(223,102,36,2,NULL),(224,102,4,2,NULL),(225,109,36,2,NULL),(226,109,4,2,NULL),(227,111,36,2,NULL),(228,111,4,2,NULL),(229,32,3,2,NULL),(230,1,3,2,NULL),(231,32,14,2,NULL),(232,1,14,2,NULL),(233,32,35,2,NULL),(234,1,35,2,NULL),(235,32,52,2,NULL),(236,1,52,2,NULL),(237,8,37,2,NULL),(238,8,5,2,NULL),(239,14,37,2,NULL),(240,14,5,2,NULL),(241,15,37,2,NULL),(242,15,5,2,NULL),(243,17,37,2,NULL),(244,17,5,2,NULL),(245,18,37,2,NULL),(246,18,5,2,NULL),(247,19,37,2,NULL),(248,19,5,2,NULL),(249,20,37,2,NULL),(250,20,5,2,NULL),(251,46,37,2,NULL),(252,46,5,2,NULL),(253,47,37,2,NULL),(254,47,5,2,NULL),(255,51,37,2,NULL),(256,51,5,2,NULL),(257,52,37,2,NULL),(258,52,5,2,NULL),(259,53,37,2,NULL),(260,53,5,2,NULL),(261,55,37,2,NULL),(262,55,5,2,NULL),(263,57,37,2,NULL),(264,57,5,2,NULL),(265,58,37,2,NULL),(266,58,5,2,NULL),(267,60,37,2,NULL),(268,60,5,2,NULL),(269,138,37,2,NULL),(270,138,5,2,NULL),(271,93,37,2,NULL),(272,93,5,2,NULL),(273,94,37,2,NULL),(274,94,5,2,NULL),(275,107,37,2,NULL),(276,107,5,2,NULL),(277,108,37,2,NULL),(278,108,5,2,NULL),(279,125,37,2,NULL),(280,125,5,2,NULL),(281,140,37,2,NULL),(282,140,5,2,NULL),(283,41,37,2,NULL),(284,41,5,2,NULL),(285,106,37,2,NULL),(286,106,5,2,NULL),(287,146,37,2,NULL),(288,146,5,2,NULL),(289,162,37,2,NULL),(290,162,5,2,NULL),(291,164,37,2,NULL),(292,164,5,2,NULL),(293,165,37,2,NULL),(294,165,5,2,NULL),(295,49,37,2,NULL),(296,49,5,2,NULL),(297,50,37,2,NULL),(298,50,5,2,NULL),(299,56,37,2,NULL),(300,56,5,2,NULL),(301,123,37,2,NULL),(302,123,5,2,NULL),(303,127,37,2,NULL),(304,127,5,2,NULL),(305,130,37,2,NULL),(306,130,5,2,NULL),(307,137,37,2,NULL),(308,137,5,2,NULL),(309,139,37,2,NULL),(310,139,5,2,NULL),(311,143,37,2,NULL),(312,143,5,2,NULL),(313,144,37,2,NULL),(314,144,5,2,NULL),(315,155,37,2,NULL),(316,155,5,2,NULL),(317,159,37,2,NULL),(318,159,5,2,NULL),(319,163,37,2,NULL),(320,163,5,2,NULL),(321,167,5,2,NULL),(322,167,37,2,NULL),(323,66,5,2,NULL),(324,66,37,2,NULL),(325,79,5,2,NULL),(326,79,37,2,NULL),(327,120,5,2,NULL),(328,120,37,2,NULL),(329,124,37,2,NULL),(330,124,5,2,NULL),(331,131,37,2,NULL),(332,131,5,2,NULL),(333,153,37,2,NULL),(334,153,5,2,NULL),(335,36,37,2,NULL),(336,36,5,2,NULL),(337,45,5,2,NULL),(338,45,37,2,NULL),(339,75,5,2,NULL),(340,75,37,2,NULL),(341,81,5,2,NULL),(342,81,37,2,NULL),(343,83,5,2,NULL),(344,83,37,2,NULL),(345,102,5,2,NULL),(346,102,37,2,NULL),(347,109,37,2,NULL),(348,109,5,2,NULL),(349,111,5,2,NULL),(350,111,37,2,NULL),(351,25,3,2,NULL),(352,2,3,2,NULL),(353,2,14,2,NULL),(354,25,14,2,NULL),(355,25,35,2,NULL),(356,2,35,2,NULL),(357,25,52,2,NULL),(358,2,52,2,NULL),(359,8,6,2,NULL),(360,8,38,2,NULL),(361,14,38,2,NULL),(362,14,6,2,NULL),(363,15,38,2,NULL),(364,15,6,2,NULL),(365,17,38,2,NULL),(366,17,6,2,NULL),(367,18,6,2,NULL),(368,18,38,2,NULL),(369,19,38,2,NULL),(370,19,6,2,NULL),(371,20,38,2,NULL),(372,20,6,2,NULL),(373,46,38,2,NULL),(374,46,6,2,NULL),(375,47,38,2,NULL),(376,47,6,2,NULL),(377,51,6,2,NULL),(378,51,38,2,NULL),(379,52,6,2,NULL),(380,52,38,2,NULL),(381,53,38,2,NULL),(382,53,6,2,NULL),(383,55,38,2,NULL),(384,55,6,2,NULL),(385,57,6,2,NULL),(386,57,38,2,NULL),(387,58,6,2,NULL),(388,58,38,2,NULL),(389,60,38,2,NULL),(390,60,6,2,NULL),(391,138,6,2,NULL),(392,138,38,2,NULL),(393,93,38,2,NULL),(394,93,6,2,NULL),(395,94,38,2,NULL),(396,94,6,2,NULL),(397,107,38,2,NULL),(398,107,6,2,NULL),(399,108,38,2,NULL),(400,108,6,2,NULL),(401,125,6,2,NULL),(402,125,38,2,NULL),(403,140,38,2,NULL),(404,140,6,2,NULL),(405,41,6,2,NULL),(406,41,38,2,NULL),(407,106,6,2,NULL),(408,106,38,2,NULL),(409,146,6,2,NULL),(410,146,38,2,NULL),(411,162,6,2,NULL),(412,162,38,2,NULL),(413,164,6,2,NULL),(414,164,38,2,NULL),(415,165,6,2,NULL),(416,165,38,2,NULL),(417,49,6,2,NULL),(418,49,38,2,NULL),(419,50,38,2,NULL),(420,50,6,2,NULL),(421,56,38,2,NULL),(422,56,6,2,NULL),(423,123,6,2,NULL),(424,123,38,2,NULL),(425,127,38,2,NULL),(426,127,6,2,NULL),(427,130,6,2,NULL),(428,130,38,2,NULL),(429,137,38,2,NULL),(430,137,6,2,NULL),(431,139,38,2,NULL),(432,139,6,2,NULL),(433,143,38,2,NULL),(434,143,6,2,NULL),(435,144,38,2,NULL),(436,144,6,2,NULL),(437,155,38,2,NULL),(438,155,6,2,NULL),(439,159,38,2,NULL),(440,159,6,2,NULL),(441,163,6,2,NULL),(442,163,38,2,NULL),(443,167,38,2,NULL),(444,167,6,2,NULL),(445,66,38,2,NULL),(446,66,6,2,NULL),(447,79,6,2,NULL),(448,79,38,2,NULL),(449,120,6,2,NULL),(450,120,38,2,NULL),(451,124,6,2,NULL),(452,124,38,2,NULL),(453,131,38,2,NULL),(454,131,6,2,NULL),(455,153,38,2,NULL),(456,153,6,2,NULL),(457,36,38,2,NULL),(458,36,6,2,NULL),(459,45,6,2,NULL),(460,45,38,2,NULL),(461,75,38,2,NULL),(462,75,6,2,NULL),(463,81,38,2,NULL),(464,81,6,2,NULL),(465,83,6,2,NULL),(466,83,38,2,NULL),(467,102,38,2,NULL),(468,102,6,2,NULL),(469,109,38,2,NULL),(470,109,6,2,NULL),(471,111,6,2,NULL),(472,111,38,2,NULL),(473,8,39,2,NULL),(474,8,7,2,NULL),(475,14,39,2,NULL),(476,14,7,2,NULL),(477,15,7,2,NULL),(478,15,39,2,NULL),(479,17,7,2,NULL),(480,17,39,2,NULL),(481,18,7,2,NULL),(482,18,39,2,NULL),(483,19,7,2,NULL),(484,19,39,2,NULL),(485,20,7,2,NULL),(486,20,39,2,NULL),(487,46,7,2,NULL),(488,46,39,2,NULL),(489,47,7,2,NULL),(490,47,39,2,NULL),(491,51,7,2,NULL),(492,51,39,2,NULL),(493,52,7,2,NULL),(494,52,39,2,NULL),(495,53,7,2,NULL),(496,53,39,2,NULL),(497,55,7,2,NULL),(498,55,39,2,NULL),(499,57,39,2,NULL),(500,57,7,2,NULL),(501,58,7,2,NULL),(502,58,39,2,NULL),(503,60,7,2,NULL),(504,60,39,2,NULL),(505,138,39,2,NULL),(506,138,7,2,NULL),(507,93,7,2,NULL),(508,93,39,2,NULL),(509,94,7,2,NULL),(510,94,39,2,NULL),(511,107,7,2,NULL),(512,107,39,2,NULL),(513,108,39,2,NULL),(514,108,7,2,NULL),(515,125,7,2,NULL),(516,125,39,2,NULL),(517,140,39,2,NULL),(518,140,7,2,NULL),(519,41,7,2,NULL),(520,41,39,2,NULL),(521,106,7,2,NULL),(522,106,39,2,NULL),(523,146,39,2,NULL),(524,146,7,2,NULL),(525,162,7,2,NULL),(526,162,39,2,NULL),(527,164,7,2,NULL),(528,164,39,2,NULL),(529,165,7,2,NULL),(530,165,39,2,NULL),(531,49,7,2,NULL),(532,49,39,2,NULL),(533,50,7,2,NULL),(534,50,39,2,NULL),(535,56,7,2,NULL),(536,56,39,2,NULL),(537,123,7,2,NULL),(538,123,39,2,NULL),(539,127,7,2,NULL),(540,127,39,2,NULL),(541,130,7,2,NULL),(542,130,39,2,NULL),(543,137,7,2,NULL),(544,137,39,2,NULL),(545,139,7,2,NULL),(546,139,39,2,NULL),(547,143,7,2,NULL),(548,143,39,2,NULL),(549,144,7,2,NULL),(550,144,39,2,NULL),(551,155,7,2,NULL),(552,155,39,2,NULL),(553,159,7,2,NULL),(554,159,39,2,NULL),(555,163,7,2,NULL),(556,163,39,2,NULL),(557,167,7,2,NULL),(558,167,39,2,NULL),(559,66,7,2,NULL),(560,66,39,2,NULL),(561,79,7,2,NULL),(562,79,39,2,NULL),(563,120,7,2,NULL),(564,120,39,2,NULL),(565,124,7,2,NULL),(566,124,39,2,NULL),(567,131,39,2,NULL),(568,131,7,2,NULL),(569,153,7,2,NULL),(570,153,39,2,NULL),(571,36,7,2,NULL),(572,36,39,2,NULL),(573,45,7,2,NULL),(574,45,39,2,NULL),(575,75,7,2,NULL),(576,75,39,2,NULL),(577,81,7,2,NULL),(578,81,39,2,NULL),(579,83,7,2,NULL),(580,83,39,2,NULL),(581,102,7,2,NULL),(582,102,39,2,NULL),(583,109,7,2,NULL),(584,109,39,2,NULL),(585,111,7,2,NULL),(586,111,39,2,NULL),(587,80,3,2,NULL),(588,80,14,2,NULL),(589,80,35,2,NULL),(590,80,52,2,NULL),(591,96,3,2,NULL),(592,96,14,2,NULL),(593,96,35,2,NULL),(594,96,52,2,NULL),(595,8,42,2,NULL),(596,14,42,2,NULL),(597,15,42,2,NULL),(598,17,42,2,NULL),(599,18,42,2,NULL),(600,19,42,2,NULL),(601,20,42,2,NULL),(602,46,42,2,NULL),(603,47,42,2,NULL),(604,51,42,2,NULL),(605,52,42,2,NULL),(606,53,42,2,NULL),(607,55,42,2,NULL),(608,57,42,2,NULL),(609,58,42,2,NULL),(610,60,42,2,NULL),(611,138,42,2,NULL),(612,93,42,2,NULL),(613,94,42,2,NULL),(614,107,42,2,NULL),(615,108,42,2,NULL),(616,125,42,2,NULL),(617,140,42,2,NULL),(618,41,42,2,NULL),(619,106,42,2,NULL),(620,146,42,2,NULL),(621,162,42,2,NULL),(622,164,42,2,NULL),(623,165,42,2,NULL),(624,49,42,2,NULL),(625,50,42,2,NULL),(626,56,42,2,NULL),(627,123,42,2,NULL),(628,127,42,2,NULL),(629,130,42,2,NULL),(630,137,42,2,NULL),(631,139,42,2,NULL),(632,143,42,2,NULL),(633,144,42,2,NULL),(634,155,42,2,NULL),(635,159,42,2,NULL),(636,163,42,2,NULL),(637,167,42,2,NULL),(638,66,42,2,NULL),(639,79,42,2,NULL),(640,120,42,2,NULL),(641,124,42,2,NULL),(642,131,42,2,NULL),(643,153,42,2,NULL),(644,36,42,2,NULL),(645,45,42,2,NULL),(646,75,42,2,NULL),(647,81,42,2,NULL),(648,83,42,2,NULL),(649,102,42,2,NULL),(650,109,42,2,NULL),(651,111,42,2,NULL),(652,37,46,2,NULL),(653,64,45,2,NULL),(654,98,48,2,NULL),(655,104,48,2,NULL),(656,113,51,2,NULL),(657,128,46,2,NULL),(658,148,49,2,NULL),(659,149,49,2,NULL),(660,156,51,2,NULL),(661,160,45,2,NULL),(662,8,43,2,NULL),(663,14,43,2,NULL),(664,15,43,2,NULL),(665,17,43,2,NULL),(666,18,43,2,NULL),(667,19,43,2,NULL),(668,20,43,2,NULL),(669,46,43,2,NULL),(670,47,43,2,NULL),(671,51,43,2,NULL),(672,52,43,2,NULL),(673,53,43,2,NULL),(674,55,43,2,NULL),(675,57,43,2,NULL),(676,58,43,2,NULL),(677,60,43,2,NULL),(678,138,43,2,NULL),(679,93,43,2,NULL),(680,94,43,2,NULL),(681,107,43,2,NULL),(682,108,43,2,NULL),(683,125,43,2,NULL),(684,140,43,2,NULL),(685,41,43,2,NULL),(686,106,43,2,NULL),(687,146,43,2,NULL),(688,162,43,2,NULL),(689,164,43,2,NULL),(690,165,43,2,NULL),(691,49,43,2,NULL),(692,50,43,2,NULL),(693,56,43,2,NULL),(694,123,43,2,NULL),(695,127,43,2,NULL),(696,130,43,2,NULL),(697,137,43,2,NULL),(698,139,43,2,NULL),(699,143,43,2,NULL),(700,144,43,2,NULL),(701,155,43,2,NULL),(702,159,43,2,NULL),(703,163,43,2,NULL),(704,167,43,2,NULL),(705,66,43,2,NULL),(706,79,43,2,NULL),(707,120,43,2,NULL),(708,124,43,2,NULL),(709,131,43,2,NULL),(710,153,43,2,NULL),(711,36,43,2,NULL),(712,45,43,2,NULL),(713,75,43,2,NULL),(714,81,43,2,NULL),(715,83,43,2,NULL),(716,102,43,2,NULL),(717,109,43,2,NULL),(718,111,43,2,NULL),(719,38,48,2,NULL),(720,48,48,2,NULL),(721,65,51,2,NULL),(722,82,48,2,NULL),(723,92,43,2,NULL),(724,97,51,2,NULL),(725,114,45,2,NULL),(726,118,43,2,NULL),(727,135,48,2,NULL),(728,136,45,2,NULL),(729,147,46,2,NULL),(730,150,46,2,NULL),(731,46,8,2,NULL),(732,47,8,2,NULL),(733,51,8,2,NULL),(734,52,8,2,NULL),(735,53,8,2,NULL),(736,55,8,2,NULL),(737,57,8,2,NULL),(738,58,8,2,NULL),(739,60,8,2,NULL),(740,138,8,2,NULL),(741,46,9,2,NULL),(742,47,9,2,NULL),(743,51,9,2,NULL),(744,52,9,2,NULL),(745,53,9,2,NULL),(746,55,9,2,NULL),(747,57,9,2,NULL),(748,58,9,2,NULL),(749,60,9,2,NULL),(750,138,9,2,NULL),(751,46,10,2,NULL),(752,47,10,2,NULL),(753,51,10,2,NULL),(754,52,10,2,NULL),(755,53,10,2,NULL),(756,55,10,2,NULL),(757,57,10,2,NULL),(758,58,10,2,NULL),(759,60,10,2,NULL),(760,138,10,2,NULL),(761,46,12,2,NULL),(762,47,12,2,NULL),(763,51,12,2,NULL),(764,52,12,2,NULL),(765,53,12,2,NULL),(766,55,12,2,NULL),(767,57,12,2,NULL),(768,58,12,2,NULL),(769,60,12,2,NULL),(770,138,12,2,NULL),(771,46,16,2,NULL),(772,47,16,2,NULL),(773,51,16,2,NULL),(774,52,16,2,NULL),(775,53,16,2,NULL),(776,55,16,2,NULL),(777,57,16,2,NULL),(778,58,16,2,NULL),(779,60,16,2,NULL),(780,138,16,2,NULL),(781,46,19,2,NULL),(782,47,19,2,NULL),(783,51,19,2,NULL),(784,52,19,2,NULL),(785,53,19,2,NULL),(786,55,19,2,NULL),(787,57,19,2,NULL),(788,58,19,2,NULL),(789,60,19,2,NULL),(790,138,19,2,NULL),(791,46,20,2,NULL),(792,47,20,2,NULL),(793,51,20,2,NULL),(794,52,20,2,NULL),(795,53,20,2,NULL),(796,55,20,2,NULL),(797,57,20,2,NULL),(798,58,20,2,NULL),(799,60,20,2,NULL),(800,138,20,2,NULL),(801,46,22,2,NULL),(802,47,22,2,NULL),(803,51,22,2,NULL),(804,52,22,2,NULL),(805,53,22,2,NULL),(806,55,22,2,NULL),(807,57,22,2,NULL),(808,58,22,2,NULL),(809,60,22,2,NULL),(810,138,22,2,NULL),(811,46,11,2,NULL),(812,47,11,2,NULL),(813,51,11,2,NULL),(814,52,11,2,NULL),(815,53,11,2,NULL),(816,55,11,2,NULL),(817,57,11,2,NULL),(818,58,11,2,NULL),(819,60,11,2,NULL),(820,138,11,2,NULL),(821,8,44,2,NULL),(822,46,18,2,NULL),(823,47,18,2,NULL),(824,51,18,2,NULL),(825,52,18,2,NULL),(826,53,18,2,NULL),(827,55,18,2,NULL),(828,57,18,2,NULL),(829,58,18,2,NULL),(830,60,18,2,NULL),(831,138,18,2,NULL),(832,46,21,2,NULL),(833,47,21,2,NULL),(834,51,21,2,NULL),(835,52,21,2,NULL),(836,53,21,2,NULL),(837,55,21,2,NULL),(838,57,21,2,NULL),(839,58,21,2,NULL),(840,60,21,2,NULL),(841,138,21,2,NULL),(842,46,23,2,NULL),(843,47,23,2,NULL),(844,51,23,2,NULL),(845,52,23,2,NULL),(846,53,23,2,NULL),(847,55,23,2,NULL),(848,57,23,2,NULL),(849,58,23,2,NULL),(850,60,23,2,NULL),(851,138,23,2,NULL),(852,46,24,2,NULL),(853,47,24,2,NULL),(854,51,24,2,NULL),(855,52,24,2,NULL),(856,53,24,2,NULL),(857,55,24,2,NULL),(858,57,24,2,NULL),(859,58,24,2,NULL),(860,60,24,2,NULL),(861,138,24,2,NULL),(862,14,44,2,NULL),(863,15,44,2,NULL),(864,17,44,2,NULL),(865,18,44,2,NULL),(866,19,44,2,NULL),(867,20,44,2,NULL),(868,46,29,2,NULL),(869,47,29,2,NULL),(870,51,29,2,NULL),(871,52,29,2,NULL),(872,53,29,2,NULL),(873,55,29,2,NULL),(874,57,29,2,NULL),(875,58,29,2,NULL),(876,60,29,2,NULL),(877,138,29,2,NULL),(878,46,30,2,NULL),(879,47,30,2,NULL),(880,51,30,2,NULL),(881,52,30,2,NULL),(882,53,30,2,NULL),(883,55,30,2,NULL),(884,57,30,2,NULL),(885,58,30,2,NULL),(886,60,30,2,NULL),(887,138,30,2,NULL),(888,46,31,2,NULL),(889,47,31,2,NULL),(890,51,31,2,NULL),(891,52,31,2,NULL),(892,53,31,2,NULL),(893,55,31,2,NULL),(894,57,31,2,NULL),(895,58,31,2,NULL),(896,60,31,2,NULL),(897,138,31,2,NULL),(898,46,32,2,NULL),(899,47,32,2,NULL),(900,51,32,2,NULL),(901,52,32,2,NULL),(902,53,32,2,NULL),(903,55,32,2,NULL),(904,57,32,2,NULL),(905,58,32,2,NULL),(906,60,32,2,NULL),(907,138,32,2,NULL),(908,46,40,2,NULL),(909,47,40,2,NULL),(910,51,40,2,NULL),(911,52,40,2,NULL),(912,53,40,2,NULL),(913,55,40,2,NULL),(914,57,40,2,NULL),(915,58,40,2,NULL),(916,60,40,2,NULL),(917,138,40,2,NULL),(918,46,41,2,NULL),(919,47,41,2,NULL),(920,51,41,2,NULL),(921,52,41,2,NULL),(922,53,41,2,NULL),(923,55,41,2,NULL),(924,57,41,2,NULL),(925,58,41,2,NULL),(926,60,41,2,NULL),(927,138,41,2,NULL),(928,46,45,2,NULL),(929,47,45,2,NULL),(930,51,45,2,NULL),(931,52,45,2,NULL),(932,53,45,2,NULL),(933,55,45,2,NULL),(934,57,45,2,NULL),(935,58,45,2,NULL),(936,60,45,2,NULL),(937,138,45,2,NULL),(938,93,44,2,NULL),(939,94,44,2,NULL),(940,107,44,2,NULL),(941,108,44,2,NULL),(942,125,44,2,NULL),(943,140,44,2,NULL),(944,46,46,2,NULL),(945,47,46,2,NULL),(946,51,46,2,NULL),(947,52,46,2,NULL),(948,53,46,2,NULL),(949,55,46,2,NULL),(950,57,46,2,NULL),(951,58,46,2,NULL),(952,60,46,2,NULL),(953,138,46,2,NULL),(954,46,47,2,NULL),(955,47,47,2,NULL),(956,51,47,2,NULL),(957,52,47,2,NULL),(958,53,47,2,NULL),(959,55,47,2,NULL),(960,57,47,2,NULL),(961,58,47,2,NULL),(962,60,47,2,NULL),(963,138,47,2,NULL),(964,41,44,2,NULL),(965,106,44,2,NULL),(966,146,44,2,NULL),(967,162,44,2,NULL),(968,164,44,2,NULL),(969,165,44,2,NULL),(970,46,48,2,NULL),(971,47,48,2,NULL),(972,51,48,2,NULL),(973,52,48,2,NULL),(974,53,48,2,NULL),(975,55,48,2,NULL),(976,57,48,2,NULL),(977,58,48,2,NULL),(978,60,48,2,NULL),(979,138,48,2,NULL),(980,49,44,2,NULL),(981,50,44,2,NULL),(982,56,44,2,NULL),(983,123,44,2,NULL),(984,127,44,2,NULL),(985,130,44,2,NULL),(986,137,44,2,NULL),(987,139,44,2,NULL),(988,143,44,2,NULL),(989,144,44,2,NULL),(990,155,44,2,NULL),(991,159,44,2,NULL),(992,163,44,2,NULL),(993,167,44,2,NULL),(994,46,49,2,NULL),(995,47,49,2,NULL),(996,51,49,2,NULL),(997,52,49,2,NULL),(998,53,49,2,NULL),(999,55,49,2,NULL),(1000,57,49,2,NULL),(1001,58,49,2,NULL),(1002,60,49,2,NULL),(1003,138,49,2,NULL),(1004,66,44,2,NULL),(1005,79,44,2,NULL),(1006,120,44,2,NULL),(1007,124,44,2,NULL),(1008,131,44,2,NULL),(1009,153,44,2,NULL),(1010,46,50,2,NULL),(1011,47,50,2,NULL),(1012,51,50,2,NULL),(1013,52,50,2,NULL),(1014,53,50,2,NULL),(1015,55,50,2,NULL),(1016,57,50,2,NULL),(1017,58,50,2,NULL),(1018,60,50,2,NULL),(1019,138,50,2,NULL),(1020,36,44,2,NULL),(1021,45,44,2,NULL),(1022,75,44,2,NULL),(1023,81,44,2,NULL),(1024,83,44,2,NULL),(1025,102,44,2,NULL),(1026,109,44,2,NULL),(1027,111,44,2,NULL),(1028,46,53,2,NULL),(1029,47,53,2,NULL),(1030,51,53,2,NULL),(1031,52,53,2,NULL),(1032,53,53,2,NULL),(1033,55,53,2,NULL),(1034,57,53,2,NULL),(1035,58,53,2,NULL),(1036,60,53,2,NULL),(1037,138,53,2,NULL),(1038,46,54,2,NULL),(1039,47,54,2,NULL),(1040,51,54,2,NULL),(1041,52,54,2,NULL),(1042,53,54,2,NULL),(1043,55,54,2,NULL),(1044,57,54,2,NULL),(1045,58,54,2,NULL),(1046,60,54,2,NULL),(1047,138,54,2,NULL),(1048,46,55,2,NULL),(1049,47,55,2,NULL),(1050,51,55,2,NULL),(1051,52,55,2,NULL),(1052,53,55,2,NULL),(1053,55,55,2,NULL),(1054,57,55,2,NULL),(1055,58,55,2,NULL),(1056,60,55,2,NULL),(1057,138,55,2,NULL),(1058,46,56,2,NULL),(1059,47,56,2,NULL),(1060,51,56,2,NULL),(1061,52,56,2,NULL),(1062,53,56,2,NULL),(1063,55,56,2,NULL),(1064,57,56,2,NULL),(1065,58,56,2,NULL),(1066,60,56,2,NULL),(1067,138,56,2,NULL),(1068,46,57,2,NULL),(1069,47,57,2,NULL),(1070,51,57,2,NULL),(1071,52,57,2,NULL),(1072,53,57,2,NULL),(1073,55,57,2,NULL),(1074,57,57,2,NULL),(1075,58,57,2,NULL),(1076,60,57,2,NULL),(1077,138,57,2,NULL),(1078,46,58,2,NULL),(1079,47,58,2,NULL),(1080,51,58,2,NULL),(1081,52,58,2,NULL),(1082,53,58,2,NULL),(1083,55,58,2,NULL),(1084,57,58,2,NULL),(1085,58,58,2,NULL),(1086,60,58,2,NULL),(1087,138,58,2,NULL),(1088,46,59,2,NULL),(1089,47,59,2,NULL),(1090,51,59,2,NULL),(1091,52,59,2,NULL),(1092,53,59,2,NULL),(1093,55,59,2,NULL),(1094,57,59,2,NULL),(1095,58,59,2,NULL),(1096,60,59,2,NULL),(1097,138,59,2,NULL),(1098,46,60,2,NULL),(1099,47,60,2,NULL),(1100,51,60,2,NULL),(1101,52,60,2,NULL),(1102,53,60,2,NULL),(1103,55,60,2,NULL),(1104,57,60,2,NULL),(1105,58,60,2,NULL),(1106,60,60,2,NULL),(1107,138,60,2,NULL),(1108,34,48,2,NULL),(1109,42,46,2,NULL),(1110,54,49,2,NULL),(1111,69,48,2,NULL),(1112,100,46,2,NULL),(1113,157,49,2,NULL),(1114,93,8,2,NULL),(1115,94,8,2,NULL),(1116,107,8,2,NULL),(1117,108,8,2,NULL),(1118,125,8,2,NULL),(1119,140,8,2,NULL),(1120,93,9,2,NULL),(1121,94,9,2,NULL),(1122,107,9,2,NULL),(1123,108,9,2,NULL),(1124,125,9,2,NULL),(1125,140,9,2,NULL),(1126,93,10,2,NULL),(1127,94,10,2,NULL),(1128,107,10,2,NULL),(1129,108,10,2,NULL),(1130,125,10,2,NULL),(1131,140,10,2,NULL),(1132,93,12,2,NULL),(1133,94,12,2,NULL),(1134,107,12,2,NULL),(1135,108,12,2,NULL),(1136,125,12,2,NULL),(1137,140,12,2,NULL),(1138,93,16,2,NULL),(1139,94,16,2,NULL),(1140,107,16,2,NULL),(1141,108,16,2,NULL),(1142,125,16,2,NULL),(1143,140,16,2,NULL),(1144,93,19,2,NULL),(1145,94,19,2,NULL),(1146,107,19,2,NULL),(1147,108,19,2,NULL),(1148,125,19,2,NULL),(1149,140,19,2,NULL),(1150,93,20,2,NULL),(1151,94,20,2,NULL),(1152,107,20,2,NULL),(1153,108,20,2,NULL),(1154,125,20,2,NULL),(1155,140,20,2,NULL),(1156,93,22,2,NULL),(1157,94,22,2,NULL),(1158,107,22,2,NULL),(1159,108,22,2,NULL),(1160,125,22,2,NULL),(1161,140,22,2,NULL),(1162,93,11,2,NULL),(1163,94,11,2,NULL),(1164,107,11,2,NULL),(1165,108,11,2,NULL),(1166,125,11,2,NULL),(1167,140,11,2,NULL),(1168,8,45,2,NULL),(1169,93,18,2,NULL),(1170,94,18,2,NULL),(1171,107,18,2,NULL),(1172,108,18,2,NULL),(1173,125,18,2,NULL),(1174,140,18,2,NULL),(1175,93,21,2,NULL),(1176,94,21,2,NULL),(1177,107,21,2,NULL),(1178,108,21,2,NULL),(1179,125,21,2,NULL),(1180,140,21,2,NULL),(1181,93,23,2,NULL),(1182,94,23,2,NULL),(1183,107,23,2,NULL),(1184,108,23,2,NULL),(1185,125,23,2,NULL),(1186,140,23,2,NULL),(1187,93,24,2,NULL),(1188,94,24,2,NULL),(1189,107,24,2,NULL),(1190,108,24,2,NULL),(1191,125,24,2,NULL),(1192,140,24,2,NULL),(1193,14,45,2,NULL),(1194,15,45,2,NULL),(1195,17,45,2,NULL),(1196,18,45,2,NULL),(1197,19,45,2,NULL),(1198,20,45,2,NULL),(1199,93,29,2,NULL),(1200,94,29,2,NULL),(1201,107,29,2,NULL),(1202,108,29,2,NULL),(1203,125,29,2,NULL),(1204,140,29,2,NULL),(1205,93,30,2,NULL),(1206,94,30,2,NULL),(1207,107,30,2,NULL),(1208,108,30,2,NULL),(1209,125,30,2,NULL),(1210,140,30,2,NULL),(1211,93,31,2,NULL),(1212,94,31,2,NULL),(1213,107,31,2,NULL),(1214,108,31,2,NULL),(1215,125,31,2,NULL),(1216,140,31,2,NULL),(1217,93,32,2,NULL),(1218,94,32,2,NULL),(1219,107,32,2,NULL),(1220,108,32,2,NULL),(1221,125,32,2,NULL),(1222,140,32,2,NULL),(1223,93,40,2,NULL),(1224,94,40,2,NULL),(1225,107,40,2,NULL),(1226,108,40,2,NULL),(1227,125,40,2,NULL),(1228,140,40,2,NULL),(1229,93,41,2,NULL),(1230,94,41,2,NULL),(1231,107,41,2,NULL),(1232,108,41,2,NULL),(1233,125,41,2,NULL),(1234,140,41,2,NULL),(1235,93,46,2,NULL),(1236,94,46,2,NULL),(1237,107,46,2,NULL),(1238,108,46,2,NULL),(1239,125,46,2,NULL),(1240,140,46,2,NULL),(1241,93,47,2,NULL),(1242,94,47,2,NULL),(1243,107,47,2,NULL),(1244,108,47,2,NULL),(1245,125,47,2,NULL),(1246,140,47,2,NULL),(1247,41,45,2,NULL),(1248,106,45,2,NULL),(1249,146,45,2,NULL),(1250,162,45,2,NULL),(1251,164,45,2,NULL),(1252,165,45,2,NULL),(1253,93,48,2,NULL),(1254,94,48,2,NULL),(1255,107,48,2,NULL),(1256,108,48,2,NULL),(1257,125,48,2,NULL),(1258,140,48,2,NULL),(1259,49,45,2,NULL),(1260,50,45,2,NULL),(1261,56,45,2,NULL),(1262,123,45,2,NULL),(1263,127,45,2,NULL),(1264,130,45,2,NULL),(1265,137,45,2,NULL),(1266,139,45,2,NULL),(1267,143,45,2,NULL),(1268,144,45,2,NULL),(1269,155,45,2,NULL),(1270,159,45,2,NULL),(1271,163,45,2,NULL),(1272,167,45,2,NULL),(1273,93,49,2,NULL),(1274,94,49,2,NULL),(1275,107,49,2,NULL),(1276,108,49,2,NULL),(1277,125,49,2,NULL),(1278,140,49,2,NULL),(1279,66,45,2,NULL),(1280,79,45,2,NULL),(1281,120,45,2,NULL),(1282,124,45,2,NULL),(1283,131,45,2,NULL),(1284,153,45,2,NULL),(1285,93,50,2,NULL),(1286,94,50,2,NULL),(1287,107,50,2,NULL),(1288,108,50,2,NULL),(1289,125,50,2,NULL),(1290,140,50,2,NULL),(1291,36,45,2,NULL),(1292,45,45,2,NULL),(1293,75,45,2,NULL),(1294,81,45,2,NULL),(1295,83,45,2,NULL),(1296,102,45,2,NULL),(1297,109,45,2,NULL),(1298,111,45,2,NULL),(1299,93,53,2,NULL),(1300,94,53,2,NULL),(1301,107,53,2,NULL),(1302,108,53,2,NULL),(1303,125,53,2,NULL),(1304,140,53,2,NULL),(1305,93,54,2,NULL),(1306,94,54,2,NULL),(1307,107,54,2,NULL),(1308,108,54,2,NULL),(1309,125,54,2,NULL),(1310,140,54,2,NULL),(1311,93,55,2,NULL),(1312,94,55,2,NULL),(1313,107,55,2,NULL),(1314,108,55,2,NULL),(1315,125,55,2,NULL),(1316,140,55,2,NULL),(1317,93,56,2,NULL),(1318,94,56,2,NULL),(1319,107,56,2,NULL),(1320,108,56,2,NULL),(1321,125,56,2,NULL),(1322,140,56,2,NULL),(1323,93,57,2,NULL),(1324,94,57,2,NULL),(1325,107,57,2,NULL),(1326,108,57,2,NULL),(1327,125,57,2,NULL),(1328,140,57,2,NULL),(1329,93,58,2,NULL),(1330,94,58,2,NULL),(1331,107,58,2,NULL),(1332,108,58,2,NULL),(1333,125,58,2,NULL),(1334,140,58,2,NULL),(1335,93,59,2,NULL),(1336,94,59,2,NULL),(1337,107,59,2,NULL),(1338,108,59,2,NULL),(1339,125,59,2,NULL),(1340,140,59,2,NULL),(1341,93,60,2,NULL),(1342,94,60,2,NULL),(1343,107,60,2,NULL),(1344,108,60,2,NULL),(1345,125,60,2,NULL),(1346,140,60,2,NULL),(1347,39,48,2,NULL),(1348,62,49,2,NULL),(1349,73,47,2,NULL),(1350,77,47,2,NULL),(1351,95,48,2,NULL),(1352,115,45,2,NULL),(1353,116,49,2,NULL),(1354,168,45,2,NULL),(1355,8,46,2,NULL),(1356,14,46,2,NULL),(1357,15,46,2,NULL),(1358,17,46,2,NULL),(1359,18,46,2,NULL),(1360,19,46,2,NULL),(1361,20,46,2,NULL),(1362,41,46,2,NULL),(1363,106,46,2,NULL),(1364,146,46,2,NULL),(1365,162,46,2,NULL),(1366,164,46,2,NULL),(1367,165,46,2,NULL),(1368,49,46,2,NULL),(1369,50,46,2,NULL),(1370,56,46,2,NULL),(1371,123,46,2,NULL),(1372,127,46,2,NULL),(1373,130,46,2,NULL),(1374,137,46,2,NULL),(1375,139,46,2,NULL),(1376,143,46,2,NULL),(1377,144,46,2,NULL),(1378,155,46,2,NULL),(1379,159,46,2,NULL),(1380,163,46,2,NULL),(1381,167,46,2,NULL),(1382,66,46,2,NULL),(1383,79,46,2,NULL),(1384,120,46,2,NULL),(1385,124,46,2,NULL),(1386,131,46,2,NULL),(1387,153,46,2,NULL),(1388,36,46,2,NULL),(1389,45,46,2,NULL),(1390,75,46,2,NULL),(1391,81,46,2,NULL),(1392,83,46,2,NULL),(1393,102,46,2,NULL),(1394,109,46,2,NULL),(1395,111,46,2,NULL),(1396,35,48,2,NULL),(1397,76,49,2,NULL),(1398,84,43,2,NULL),(1399,91,49,2,NULL),(1400,103,43,2,NULL),(1401,110,45,2,NULL),(1402,133,45,2,NULL),(1403,170,48,2,NULL),(1404,41,8,2,NULL),(1405,106,8,2,NULL),(1406,146,8,2,NULL),(1407,162,8,2,NULL),(1408,164,8,2,NULL),(1409,165,8,2,NULL),(1410,41,9,2,NULL),(1411,106,9,2,NULL),(1412,146,9,2,NULL),(1413,162,9,2,NULL),(1414,164,9,2,NULL),(1415,165,9,2,NULL),(1416,41,10,2,NULL),(1417,106,10,2,NULL),(1418,146,10,2,NULL),(1419,162,10,2,NULL),(1420,164,10,2,NULL),(1421,165,10,2,NULL),(1422,41,12,2,NULL),(1423,106,12,2,NULL),(1424,146,12,2,NULL),(1425,162,12,2,NULL),(1426,164,12,2,NULL),(1427,165,12,2,NULL),(1428,41,16,2,NULL),(1429,106,16,2,NULL),(1430,146,16,2,NULL),(1431,162,16,2,NULL),(1432,164,16,2,NULL),(1433,165,16,2,NULL),(1434,41,19,2,NULL),(1435,106,19,2,NULL),(1436,146,19,2,NULL),(1437,162,19,2,NULL),(1438,164,19,2,NULL),(1439,165,19,2,NULL),(1440,41,20,2,NULL),(1441,106,20,2,NULL),(1442,146,20,2,NULL),(1443,162,20,2,NULL),(1444,164,20,2,NULL),(1445,165,20,2,NULL),(1446,41,22,2,NULL),(1447,106,22,2,NULL),(1448,146,22,2,NULL),(1449,162,22,2,NULL),(1450,164,22,2,NULL),(1451,165,22,2,NULL),(1452,41,11,2,NULL),(1453,106,11,2,NULL),(1454,146,11,2,NULL),(1455,162,11,2,NULL),(1456,164,11,2,NULL),(1457,165,11,2,NULL),(1458,8,47,2,NULL),(1459,41,18,2,NULL),(1460,106,18,2,NULL),(1461,146,18,2,NULL),(1462,162,18,2,NULL),(1463,164,18,2,NULL),(1464,165,18,2,NULL),(1465,41,21,2,NULL),(1466,106,21,2,NULL),(1467,146,21,2,NULL),(1468,162,21,2,NULL),(1469,164,21,2,NULL),(1470,165,21,2,NULL),(1471,41,23,2,NULL),(1472,106,23,2,NULL),(1473,146,23,2,NULL),(1474,162,23,2,NULL),(1475,164,23,2,NULL),(1476,165,23,2,NULL),(1477,41,24,2,NULL),(1478,106,24,2,NULL),(1479,146,24,2,NULL),(1480,162,24,2,NULL),(1481,164,24,2,NULL),(1482,165,24,2,NULL),(1483,14,47,2,NULL),(1484,15,47,2,NULL),(1485,17,47,2,NULL),(1486,18,47,2,NULL),(1487,19,47,2,NULL),(1488,20,47,2,NULL),(1489,41,29,2,NULL),(1490,106,29,2,NULL),(1491,146,29,2,NULL),(1492,162,29,2,NULL),(1493,164,29,2,NULL),(1494,165,29,2,NULL),(1495,41,30,2,NULL),(1496,106,30,2,NULL),(1497,146,30,2,NULL),(1498,162,30,2,NULL),(1499,164,30,2,NULL),(1500,165,30,2,NULL),(1501,41,31,2,NULL),(1502,106,31,2,NULL),(1503,146,31,2,NULL),(1504,162,31,2,NULL),(1505,164,31,2,NULL),(1506,165,31,2,NULL),(1507,41,32,2,NULL),(1508,106,32,2,NULL),(1509,146,32,2,NULL),(1510,162,32,2,NULL),(1511,164,32,2,NULL),(1512,165,32,2,NULL),(1513,41,40,2,NULL),(1514,106,40,2,NULL),(1515,146,40,2,NULL),(1516,162,40,2,NULL),(1517,164,40,2,NULL),(1518,165,40,2,NULL),(1519,41,41,2,NULL),(1520,106,41,2,NULL),(1521,146,41,2,NULL),(1522,162,41,2,NULL),(1523,164,41,2,NULL),(1524,165,41,2,NULL),(1525,41,48,2,NULL),(1526,106,48,2,NULL),(1527,146,48,2,NULL),(1528,162,48,2,NULL),(1529,164,48,2,NULL),(1530,165,48,2,NULL),(1531,49,47,2,NULL),(1532,50,47,2,NULL),(1533,56,47,2,NULL),(1534,123,47,2,NULL),(1535,127,47,2,NULL),(1536,130,47,2,NULL),(1537,137,47,2,NULL),(1538,139,47,2,NULL),(1539,143,47,2,NULL),(1540,144,47,2,NULL),(1541,155,47,2,NULL),(1542,159,47,2,NULL),(1543,163,47,2,NULL),(1544,167,47,2,NULL),(1545,41,49,2,NULL),(1546,106,49,2,NULL),(1547,146,49,2,NULL),(1548,162,49,2,NULL),(1549,164,49,2,NULL),(1550,165,49,2,NULL),(1551,66,47,2,NULL),(1552,79,47,2,NULL),(1553,120,47,2,NULL),(1554,124,47,2,NULL),(1555,131,47,2,NULL),(1556,153,47,2,NULL),(1557,41,50,2,NULL),(1558,106,50,2,NULL),(1559,146,50,2,NULL),(1560,162,50,2,NULL),(1561,164,50,2,NULL),(1562,165,50,2,NULL),(1563,36,47,2,NULL),(1564,45,47,2,NULL),(1565,75,47,2,NULL),(1566,81,47,2,NULL),(1567,83,47,2,NULL),(1568,102,47,2,NULL),(1569,109,47,2,NULL),(1570,111,47,2,NULL),(1571,41,53,2,NULL),(1572,106,53,2,NULL),(1573,146,53,2,NULL),(1574,162,53,2,NULL),(1575,164,53,2,NULL),(1576,165,53,2,NULL),(1577,41,54,2,NULL),(1578,106,54,2,NULL),(1579,146,54,2,NULL),(1580,162,54,2,NULL),(1581,164,54,2,NULL),(1582,165,54,2,NULL),(1583,41,55,2,NULL),(1584,106,55,2,NULL),(1585,146,55,2,NULL),(1586,162,55,2,NULL),(1587,164,55,2,NULL),(1588,165,55,2,NULL),(1589,41,56,2,NULL),(1590,106,56,2,NULL),(1591,146,56,2,NULL),(1592,162,56,2,NULL),(1593,164,56,2,NULL),(1594,165,56,2,NULL),(1595,41,57,2,NULL),(1596,106,57,2,NULL),(1597,146,57,2,NULL),(1598,162,57,2,NULL),(1599,164,57,2,NULL),(1600,165,57,2,NULL),(1601,41,58,2,NULL),(1602,106,58,2,NULL),(1603,146,58,2,NULL),(1604,162,58,2,NULL),(1605,164,58,2,NULL),(1606,165,58,2,NULL),(1607,41,59,2,NULL),(1608,106,59,2,NULL),(1609,146,59,2,NULL),(1610,162,59,2,NULL),(1611,164,59,2,NULL),(1612,165,59,2,NULL),(1613,41,60,2,NULL),(1614,106,60,2,NULL),(1615,146,60,2,NULL),(1616,162,60,2,NULL),(1617,164,60,2,NULL),(1618,165,60,2,NULL),(1619,40,45,2,NULL),(1620,43,46,2,NULL),(1621,68,49,2,NULL),(1622,70,46,2,NULL),(1623,85,45,2,NULL),(1624,89,49,2,NULL),(1625,117,49,2,NULL),(1626,134,51,2,NULL),(1627,152,51,2,NULL),(1628,154,49,2,NULL),(1629,49,8,2,NULL),(1630,50,8,2,NULL),(1631,56,8,2,NULL),(1632,123,8,2,NULL),(1633,127,8,2,NULL),(1634,130,8,2,NULL),(1635,137,8,2,NULL),(1636,139,8,2,NULL),(1637,143,8,2,NULL),(1638,144,8,2,NULL),(1639,155,8,2,NULL),(1640,159,8,2,NULL),(1641,163,8,2,NULL),(1642,167,8,2,NULL),(1643,49,9,2,NULL),(1644,50,9,2,NULL),(1645,56,9,2,NULL),(1646,123,9,2,NULL),(1647,127,9,2,NULL),(1648,130,9,2,NULL),(1649,137,9,2,NULL),(1650,139,9,2,NULL),(1651,143,9,2,NULL),(1652,144,9,2,NULL),(1653,155,9,2,NULL),(1654,159,9,2,NULL),(1655,163,9,2,NULL),(1656,167,9,2,NULL),(1657,49,10,2,NULL),(1658,50,10,2,NULL),(1659,56,10,2,NULL),(1660,123,10,2,NULL),(1661,127,10,2,NULL),(1662,130,10,2,NULL),(1663,137,10,2,NULL),(1664,139,10,2,NULL),(1665,143,10,2,NULL),(1666,144,10,2,NULL),(1667,155,10,2,NULL),(1668,159,10,2,NULL),(1669,163,10,2,NULL),(1670,167,10,2,NULL),(1671,49,12,2,NULL),(1672,50,12,2,NULL),(1673,56,12,2,NULL),(1674,123,12,2,NULL),(1675,127,12,2,NULL),(1676,130,12,2,NULL),(1677,137,12,2,NULL),(1678,139,12,2,NULL),(1679,143,12,2,NULL),(1680,144,12,2,NULL),(1681,155,12,2,NULL),(1682,159,12,2,NULL),(1683,163,12,2,NULL),(1684,167,12,2,NULL),(1685,49,16,2,NULL),(1686,50,16,2,NULL),(1687,56,16,2,NULL),(1688,123,16,2,NULL),(1689,127,16,2,NULL),(1690,130,16,2,NULL),(1691,137,16,2,NULL),(1692,139,16,2,NULL),(1693,143,16,2,NULL),(1694,144,16,2,NULL),(1695,155,16,2,NULL),(1696,159,16,2,NULL),(1697,163,16,2,NULL),(1698,167,16,2,NULL),(1699,49,19,2,NULL),(1700,50,19,2,NULL),(1701,56,19,2,NULL),(1702,123,19,2,NULL),(1703,127,19,2,NULL),(1704,130,19,2,NULL),(1705,137,19,2,NULL),(1706,139,19,2,NULL),(1707,143,19,2,NULL),(1708,144,19,2,NULL),(1709,155,19,2,NULL),(1710,159,19,2,NULL),(1711,163,19,2,NULL),(1712,167,19,2,NULL),(1713,49,20,2,NULL),(1714,50,20,2,NULL),(1715,56,20,2,NULL),(1716,123,20,2,NULL),(1717,127,20,2,NULL),(1718,130,20,2,NULL),(1719,137,20,2,NULL),(1720,139,20,2,NULL),(1721,143,20,2,NULL),(1722,144,20,2,NULL),(1723,155,20,2,NULL),(1724,159,20,2,NULL),(1725,163,20,2,NULL),(1726,167,20,2,NULL),(1727,49,22,2,NULL),(1728,50,22,2,NULL),(1729,56,22,2,NULL),(1730,123,22,2,NULL),(1731,127,22,2,NULL),(1732,130,22,2,NULL),(1733,137,22,2,NULL),(1734,139,22,2,NULL),(1735,143,22,2,NULL),(1736,144,22,2,NULL),(1737,155,22,2,NULL),(1738,159,22,2,NULL),(1739,163,22,2,NULL),(1740,167,22,2,NULL),(1741,49,11,2,NULL),(1742,50,11,2,NULL),(1743,56,11,2,NULL),(1744,123,11,2,NULL),(1745,127,11,2,NULL),(1746,130,11,2,NULL),(1747,137,11,2,NULL),(1748,139,11,2,NULL),(1749,143,11,2,NULL),(1750,144,11,2,NULL),(1751,155,11,2,NULL),(1752,159,11,2,NULL),(1753,163,11,2,NULL),(1754,167,11,2,NULL),(1755,8,48,2,NULL),(1756,49,18,2,NULL),(1757,50,18,2,NULL),(1758,56,18,2,NULL),(1759,123,18,2,NULL),(1760,127,18,2,NULL),(1761,130,18,2,NULL),(1762,137,18,2,NULL),(1763,139,18,2,NULL),(1764,143,18,2,NULL),(1765,144,18,2,NULL),(1766,155,18,2,NULL),(1767,159,18,2,NULL),(1768,163,18,2,NULL),(1769,167,18,2,NULL),(1770,49,21,2,NULL),(1771,50,21,2,NULL),(1772,56,21,2,NULL),(1773,123,21,2,NULL),(1774,127,21,2,NULL),(1775,130,21,2,NULL),(1776,137,21,2,NULL),(1777,139,21,2,NULL),(1778,143,21,2,NULL),(1779,144,21,2,NULL),(1780,155,21,2,NULL),(1781,159,21,2,NULL),(1782,163,21,2,NULL),(1783,167,21,2,NULL),(1784,49,23,2,NULL),(1785,50,23,2,NULL),(1786,56,23,2,NULL),(1787,123,23,2,NULL),(1788,127,23,2,NULL),(1789,130,23,2,NULL),(1790,137,23,2,NULL),(1791,139,23,2,NULL),(1792,143,23,2,NULL),(1793,144,23,2,NULL),(1794,155,23,2,NULL),(1795,159,23,2,NULL),(1796,163,23,2,NULL),(1797,167,23,2,NULL),(1798,49,24,2,NULL),(1799,50,24,2,NULL),(1800,56,24,2,NULL),(1801,123,24,2,NULL),(1802,127,24,2,NULL),(1803,130,24,2,NULL),(1804,137,24,2,NULL),(1805,139,24,2,NULL),(1806,143,24,2,NULL),(1807,144,24,2,NULL),(1808,155,24,2,NULL),(1809,159,24,2,NULL),(1810,163,24,2,NULL),(1811,167,24,2,NULL),(1812,14,48,2,NULL),(1813,15,48,2,NULL),(1814,17,48,2,NULL),(1815,18,48,2,NULL),(1816,19,48,2,NULL),(1817,20,48,2,NULL),(1818,49,29,2,NULL),(1819,50,29,2,NULL),(1820,56,29,2,NULL),(1821,123,29,2,NULL),(1822,127,29,2,NULL),(1823,130,29,2,NULL),(1824,137,29,2,NULL),(1825,139,29,2,NULL),(1826,143,29,2,NULL),(1827,144,29,2,NULL),(1828,155,29,2,NULL),(1829,159,29,2,NULL),(1830,163,29,2,NULL),(1831,167,29,2,NULL),(1832,49,30,2,NULL),(1833,50,30,2,NULL),(1834,56,30,2,NULL),(1835,123,30,2,NULL),(1836,127,30,2,NULL),(1837,130,30,2,NULL),(1838,137,30,2,NULL),(1839,139,30,2,NULL),(1840,143,30,2,NULL),(1841,144,30,2,NULL),(1842,155,30,2,NULL),(1843,159,30,2,NULL),(1844,163,30,2,NULL),(1845,167,30,2,NULL),(1846,49,31,2,NULL),(1847,50,31,2,NULL),(1848,56,31,2,NULL),(1849,123,31,2,NULL),(1850,127,31,2,NULL),(1851,130,31,2,NULL),(1852,137,31,2,NULL),(1853,139,31,2,NULL),(1854,143,31,2,NULL),(1855,144,31,2,NULL),(1856,155,31,2,NULL),(1857,159,31,2,NULL),(1858,163,31,2,NULL),(1859,167,31,2,NULL),(1860,49,32,2,NULL),(1861,50,32,2,NULL),(1862,56,32,2,NULL),(1863,123,32,2,NULL),(1864,127,32,2,NULL),(1865,130,32,2,NULL),(1866,137,32,2,NULL),(1867,139,32,2,NULL),(1868,143,32,2,NULL),(1869,144,32,2,NULL),(1870,155,32,2,NULL),(1871,159,32,2,NULL),(1872,163,32,2,NULL),(1873,167,32,2,NULL),(1874,49,40,2,NULL),(1875,50,40,2,NULL),(1876,56,40,2,NULL),(1877,123,40,2,NULL),(1878,127,40,2,NULL),(1879,130,40,2,NULL),(1880,137,40,2,NULL),(1881,139,40,2,NULL),(1882,143,40,2,NULL),(1883,144,40,2,NULL),(1884,155,40,2,NULL),(1885,159,40,2,NULL),(1886,163,40,2,NULL),(1887,167,40,2,NULL),(1888,49,41,2,NULL),(1889,50,41,2,NULL),(1890,56,41,2,NULL),(1891,123,41,2,NULL),(1892,127,41,2,NULL),(1893,130,41,2,NULL),(1894,137,41,2,NULL),(1895,139,41,2,NULL),(1896,143,41,2,NULL),(1897,144,41,2,NULL),(1898,155,41,2,NULL),(1899,159,41,2,NULL),(1900,163,41,2,NULL),(1901,167,41,2,NULL),(1902,49,49,2,NULL),(1903,50,49,2,NULL),(1904,56,49,2,NULL),(1905,123,49,2,NULL),(1906,127,49,2,NULL),(1907,130,49,2,NULL),(1908,137,49,2,NULL),(1909,139,49,2,NULL),(1910,143,49,2,NULL),(1911,144,49,2,NULL),(1912,155,49,2,NULL),(1913,159,49,2,NULL),(1914,163,49,2,NULL),(1915,167,49,2,NULL),(1916,66,48,2,NULL),(1917,79,48,2,NULL),(1918,120,48,2,NULL),(1919,124,48,2,NULL),(1920,131,48,2,NULL),(1921,153,48,2,NULL),(1922,49,50,2,NULL),(1923,50,50,2,NULL),(1924,56,50,2,NULL),(1925,123,50,2,NULL),(1926,127,50,2,NULL),(1927,130,50,2,NULL),(1928,137,50,2,NULL),(1929,139,50,2,NULL),(1930,143,50,2,NULL),(1931,144,50,2,NULL),(1932,155,50,2,NULL),(1933,159,50,2,NULL),(1934,163,50,2,NULL),(1935,167,50,2,NULL),(1936,36,48,2,NULL),(1937,45,48,2,NULL),(1938,75,48,2,NULL),(1939,81,48,2,NULL),(1940,83,48,2,NULL),(1941,102,48,2,NULL),(1942,109,48,2,NULL),(1943,111,48,2,NULL),(1944,49,53,2,NULL),(1945,50,53,2,NULL),(1946,56,53,2,NULL),(1947,123,53,2,NULL),(1948,127,53,2,NULL),(1949,130,53,2,NULL),(1950,137,53,2,NULL),(1951,139,53,2,NULL),(1952,143,53,2,NULL),(1953,144,53,2,NULL),(1954,155,53,2,NULL),(1955,159,53,2,NULL),(1956,163,53,2,NULL),(1957,167,53,2,NULL),(1958,49,54,2,NULL),(1959,50,54,2,NULL),(1960,56,54,2,NULL),(1961,123,54,2,NULL),(1962,127,54,2,NULL),(1963,130,54,2,NULL),(1964,137,54,2,NULL),(1965,139,54,2,NULL),(1966,143,54,2,NULL),(1967,144,54,2,NULL),(1968,155,54,2,NULL),(1969,159,54,2,NULL),(1970,163,54,2,NULL),(1971,167,54,2,NULL),(1972,49,55,2,NULL),(1973,50,55,2,NULL),(1974,56,55,2,NULL),(1975,123,55,2,NULL),(1976,127,55,2,NULL),(1977,130,55,2,NULL),(1978,137,55,2,NULL),(1979,139,55,2,NULL),(1980,143,55,2,NULL),(1981,144,55,2,NULL),(1982,155,55,2,NULL),(1983,159,55,2,NULL),(1984,163,55,2,NULL),(1985,167,55,2,NULL),(1986,49,56,2,NULL),(1987,50,56,2,NULL),(1988,56,56,2,NULL),(1989,123,56,2,NULL),(1990,127,56,2,NULL),(1991,130,56,2,NULL),(1992,137,56,2,NULL),(1993,139,56,2,NULL),(1994,143,56,2,NULL),(1995,144,56,2,NULL),(1996,155,56,2,NULL),(1997,159,56,2,NULL),(1998,163,56,2,NULL),(1999,167,56,2,NULL),(2000,49,57,2,NULL),(2001,50,57,2,NULL),(2002,56,57,2,NULL),(2003,123,57,2,NULL),(2004,127,57,2,NULL),(2005,130,57,2,NULL),(2006,137,57,2,NULL),(2007,139,57,2,NULL),(2008,143,57,2,NULL),(2009,144,57,2,NULL),(2010,155,57,2,NULL),(2011,159,57,2,NULL),(2012,163,57,2,NULL),(2013,167,57,2,NULL),(2014,49,58,2,NULL),(2015,50,58,2,NULL),(2016,56,58,2,NULL),(2017,123,58,2,NULL),(2018,127,58,2,NULL),(2019,130,58,2,NULL),(2020,137,58,2,NULL),(2021,139,58,2,NULL),(2022,143,58,2,NULL),(2023,144,58,2,NULL),(2024,155,58,2,NULL),(2025,159,58,2,NULL),(2026,163,58,2,NULL),(2027,167,58,2,NULL),(2028,49,59,2,NULL),(2029,50,59,2,NULL),(2030,56,59,2,NULL),(2031,123,59,2,NULL),(2032,127,59,2,NULL),(2033,130,59,2,NULL),(2034,137,59,2,NULL),(2035,139,59,2,NULL),(2036,143,59,2,NULL),(2037,144,59,2,NULL),(2038,155,59,2,NULL),(2039,159,59,2,NULL),(2040,163,59,2,NULL),(2041,167,59,2,NULL),(2042,49,60,2,NULL),(2043,50,60,2,NULL),(2044,56,60,2,NULL),(2045,123,60,2,NULL),(2046,127,60,2,NULL),(2047,130,60,2,NULL),(2048,137,60,2,NULL),(2049,139,60,2,NULL),(2050,143,60,2,NULL),(2051,144,60,2,NULL),(2052,155,60,2,NULL),(2053,159,60,2,NULL),(2054,163,60,2,NULL),(2055,167,60,2,NULL),(2056,44,45,2,NULL),(2057,74,51,2,NULL),(2058,78,43,2,NULL),(2059,86,43,2,NULL),(2060,88,46,2,NULL),(2061,101,46,2,NULL),(2062,129,51,2,NULL),(2063,142,48,2,NULL),(2064,145,48,2,NULL),(2065,161,45,2,NULL),(2066,66,8,2,NULL),(2067,79,8,2,NULL),(2068,120,8,2,NULL),(2069,124,8,2,NULL),(2070,131,8,2,NULL),(2071,153,8,2,NULL),(2072,66,9,2,NULL),(2073,79,9,2,NULL),(2074,120,9,2,NULL),(2075,124,9,2,NULL),(2076,131,9,2,NULL),(2077,153,9,2,NULL),(2078,66,10,2,NULL),(2079,79,10,2,NULL),(2080,120,10,2,NULL),(2081,124,10,2,NULL),(2082,131,10,2,NULL),(2083,153,10,2,NULL),(2084,66,12,2,NULL),(2085,79,12,2,NULL),(2086,120,12,2,NULL),(2087,124,12,2,NULL),(2088,131,12,2,NULL),(2089,153,12,2,NULL),(2090,66,16,2,NULL),(2091,79,16,2,NULL),(2092,120,16,2,NULL),(2093,124,16,2,NULL),(2094,131,16,2,NULL),(2095,153,16,2,NULL),(2096,66,19,2,NULL),(2097,79,19,2,NULL),(2098,120,19,2,NULL),(2099,124,19,2,NULL),(2100,131,19,2,NULL),(2101,153,19,2,NULL),(2102,66,20,2,NULL),(2103,79,20,2,NULL),(2104,120,20,2,NULL),(2105,124,20,2,NULL),(2106,131,20,2,NULL),(2107,153,20,2,NULL),(2108,66,22,2,NULL),(2109,79,22,2,NULL),(2110,120,22,2,NULL),(2111,124,22,2,NULL),(2112,131,22,2,NULL),(2113,153,22,2,NULL),(2114,66,11,2,NULL),(2115,79,11,2,NULL),(2116,120,11,2,NULL),(2117,124,11,2,NULL),(2118,131,11,2,NULL),(2119,153,11,2,NULL),(2120,8,49,2,NULL),(2121,66,18,2,NULL),(2122,79,18,2,NULL),(2123,120,18,2,NULL),(2124,124,18,2,NULL),(2125,131,18,2,NULL),(2126,153,18,2,NULL),(2127,66,21,2,NULL),(2128,79,21,2,NULL),(2129,120,21,2,NULL),(2130,124,21,2,NULL),(2131,131,21,2,NULL),(2132,153,21,2,NULL),(2133,66,23,2,NULL),(2134,79,23,2,NULL),(2135,120,23,2,NULL),(2136,124,23,2,NULL),(2137,131,23,2,NULL),(2138,153,23,2,NULL),(2139,66,24,2,NULL),(2140,79,24,2,NULL),(2141,120,24,2,NULL),(2142,124,24,2,NULL),(2143,131,24,2,NULL),(2144,153,24,2,NULL),(2145,14,49,2,NULL),(2146,15,49,2,NULL),(2147,17,49,2,NULL),(2148,18,49,2,NULL),(2149,19,49,2,NULL),(2150,20,49,2,NULL),(2151,66,29,2,NULL),(2152,79,29,2,NULL),(2153,120,29,2,NULL),(2154,124,29,2,NULL),(2155,131,29,2,NULL),(2156,153,29,2,NULL),(2157,66,30,2,NULL),(2158,79,30,2,NULL),(2159,120,30,2,NULL),(2160,124,30,2,NULL),(2161,131,30,2,NULL),(2162,153,30,2,NULL),(2163,66,31,2,NULL),(2164,79,31,2,NULL),(2165,120,31,2,NULL),(2166,124,31,2,NULL),(2167,131,31,2,NULL),(2168,153,31,2,NULL),(2169,66,32,2,NULL),(2170,79,32,2,NULL),(2171,120,32,2,NULL),(2172,124,32,2,NULL),(2173,131,32,2,NULL),(2174,153,32,2,NULL),(2175,66,40,2,NULL),(2176,79,40,2,NULL),(2177,120,40,2,NULL),(2178,124,40,2,NULL),(2179,131,40,2,NULL),(2180,153,40,2,NULL),(2181,66,41,2,NULL),(2182,79,41,2,NULL),(2183,120,41,2,NULL),(2184,124,41,2,NULL),(2185,131,41,2,NULL),(2186,153,41,2,NULL),(2187,66,50,2,NULL),(2188,79,50,2,NULL),(2189,120,50,2,NULL),(2190,124,50,2,NULL),(2191,131,50,2,NULL),(2192,153,50,2,NULL),(2193,36,49,2,NULL),(2194,45,49,2,NULL),(2195,75,49,2,NULL),(2196,81,49,2,NULL),(2197,83,49,2,NULL),(2198,102,49,2,NULL),(2199,109,49,2,NULL),(2200,111,49,2,NULL),(2201,66,53,2,NULL),(2202,79,53,2,NULL),(2203,120,53,2,NULL),(2204,124,53,2,NULL),(2205,131,53,2,NULL),(2206,153,53,2,NULL),(2207,66,54,2,NULL),(2208,79,54,2,NULL),(2209,120,54,2,NULL),(2210,124,54,2,NULL),(2211,131,54,2,NULL),(2212,153,54,2,NULL),(2213,66,55,2,NULL),(2214,79,55,2,NULL),(2215,120,55,2,NULL),(2216,124,55,2,NULL),(2217,131,55,2,NULL),(2218,153,55,2,NULL),(2219,66,56,2,NULL),(2220,79,56,2,NULL),(2221,120,56,2,NULL),(2222,124,56,2,NULL),(2223,131,56,2,NULL),(2224,153,56,2,NULL),(2225,66,57,2,NULL),(2226,79,57,2,NULL),(2227,120,57,2,NULL),(2228,124,57,2,NULL),(2229,131,57,2,NULL),(2230,153,57,2,NULL),(2231,66,58,2,NULL),(2232,79,58,2,NULL),(2233,120,58,2,NULL),(2234,124,58,2,NULL),(2235,131,58,2,NULL),(2236,153,58,2,NULL),(2237,66,59,2,NULL),(2238,79,59,2,NULL),(2239,120,59,2,NULL),(2240,124,59,2,NULL),(2241,131,59,2,NULL),(2242,153,59,2,NULL),(2243,66,60,2,NULL),(2244,79,60,2,NULL),(2245,120,60,2,NULL),(2246,124,60,2,NULL),(2247,131,60,2,NULL),(2248,153,60,2,NULL),(2249,59,45,2,NULL),(2250,71,49,2,NULL),(2251,87,45,2,NULL),(2252,90,49,2,NULL),(2253,99,48,2,NULL),(2254,112,48,2,NULL),(2255,119,46,2,NULL),(2256,141,46,2,NULL),(2257,8,50,2,NULL),(2258,14,50,2,NULL),(2259,15,50,2,NULL),(2260,17,50,2,NULL),(2261,18,50,2,NULL),(2262,19,50,2,NULL),(2263,20,50,2,NULL),(2264,36,50,2,NULL),(2265,45,50,2,NULL),(2266,75,50,2,NULL),(2267,81,50,2,NULL),(2268,83,50,2,NULL),(2269,102,50,2,NULL),(2270,109,50,2,NULL),(2271,111,50,2,NULL),(2272,36,8,2,NULL),(2273,45,8,2,NULL),(2274,75,8,2,NULL),(2275,81,8,2,NULL),(2276,83,8,2,NULL),(2277,102,8,2,NULL),(2278,109,8,2,NULL),(2279,111,8,2,NULL),(2280,36,9,2,NULL),(2281,45,9,2,NULL),(2282,75,9,2,NULL),(2283,81,9,2,NULL),(2284,83,9,2,NULL),(2285,102,9,2,NULL),(2286,109,9,2,NULL),(2287,111,9,2,NULL),(2288,36,10,2,NULL),(2289,45,10,2,NULL),(2290,75,10,2,NULL),(2291,81,10,2,NULL),(2292,83,10,2,NULL),(2293,102,10,2,NULL),(2294,109,10,2,NULL),(2295,111,10,2,NULL),(2296,36,12,2,NULL),(2297,45,12,2,NULL),(2298,75,12,2,NULL),(2299,81,12,2,NULL),(2300,83,12,2,NULL),(2301,102,12,2,NULL),(2302,109,12,2,NULL),(2303,111,12,2,NULL),(2304,36,16,2,NULL),(2305,45,16,2,NULL),(2306,75,16,2,NULL),(2307,81,16,2,NULL),(2308,83,16,2,NULL),(2309,102,16,2,NULL),(2310,109,16,2,NULL),(2311,111,16,2,NULL),(2312,36,19,2,NULL),(2313,45,19,2,NULL),(2314,75,19,2,NULL),(2315,81,19,2,NULL),(2316,83,19,2,NULL),(2317,102,19,2,NULL),(2318,109,19,2,NULL),(2319,111,19,2,NULL),(2320,36,20,2,NULL),(2321,45,20,2,NULL),(2322,75,20,2,NULL),(2323,81,20,2,NULL),(2324,83,20,2,NULL),(2325,102,20,2,NULL),(2326,109,20,2,NULL),(2327,111,20,2,NULL),(2328,36,22,2,NULL),(2329,45,22,2,NULL),(2330,75,22,2,NULL),(2331,81,22,2,NULL),(2332,83,22,2,NULL),(2333,102,22,2,NULL),(2334,109,22,2,NULL),(2335,111,22,2,NULL),(2336,36,11,2,NULL),(2337,45,11,2,NULL),(2338,75,11,2,NULL),(2339,81,11,2,NULL),(2340,83,11,2,NULL),(2341,102,11,2,NULL),(2342,109,11,2,NULL),(2343,111,11,2,NULL),(2344,36,18,2,NULL),(2345,45,18,2,NULL),(2346,75,18,2,NULL),(2347,81,18,2,NULL),(2348,83,18,2,NULL),(2349,102,18,2,NULL),(2350,109,18,2,NULL),(2351,111,18,2,NULL),(2352,36,21,2,NULL),(2353,45,21,2,NULL),(2354,75,21,2,NULL),(2355,81,21,2,NULL),(2356,83,21,2,NULL),(2357,102,21,2,NULL),(2358,109,21,2,NULL),(2359,111,21,2,NULL),(2360,36,23,2,NULL),(2361,45,23,2,NULL),(2362,75,23,2,NULL),(2363,81,23,2,NULL),(2364,83,23,2,NULL),(2365,102,23,2,NULL),(2366,109,23,2,NULL),(2367,111,23,2,NULL),(2368,36,24,2,NULL),(2369,45,24,2,NULL),(2370,75,24,2,NULL),(2371,81,24,2,NULL),(2372,83,24,2,NULL),(2373,102,24,2,NULL),(2374,109,24,2,NULL),(2375,111,24,2,NULL),(2376,36,29,2,NULL),(2377,45,29,2,NULL),(2378,75,29,2,NULL),(2379,81,29,2,NULL),(2380,83,29,2,NULL),(2381,102,29,2,NULL),(2382,109,29,2,NULL),(2383,111,29,2,NULL),(2384,36,30,2,NULL),(2385,45,30,2,NULL),(2386,75,30,2,NULL),(2387,81,30,2,NULL),(2388,83,30,2,NULL),(2389,102,30,2,NULL),(2390,109,30,2,NULL),(2391,111,30,2,NULL),(2392,36,31,2,NULL),(2393,45,31,2,NULL),(2394,75,31,2,NULL),(2395,81,31,2,NULL),(2396,83,31,2,NULL),(2397,102,31,2,NULL),(2398,109,31,2,NULL),(2399,111,31,2,NULL),(2400,36,32,2,NULL),(2401,45,32,2,NULL),(2402,75,32,2,NULL),(2403,81,32,2,NULL),(2404,83,32,2,NULL),(2405,102,32,2,NULL),(2406,109,32,2,NULL),(2407,111,32,2,NULL),(2408,36,40,2,NULL),(2409,45,40,2,NULL),(2410,75,40,2,NULL),(2411,81,40,2,NULL),(2412,83,40,2,NULL),(2413,102,40,2,NULL),(2414,109,40,2,NULL),(2415,111,40,2,NULL),(2416,36,41,2,NULL),(2417,45,41,2,NULL),(2418,75,41,2,NULL),(2419,81,41,2,NULL),(2420,83,41,2,NULL),(2421,102,41,2,NULL),(2422,109,41,2,NULL),(2423,111,41,2,NULL),(2424,36,53,2,NULL),(2425,45,53,2,NULL),(2426,75,53,2,NULL),(2427,81,53,2,NULL),(2428,83,53,2,NULL),(2429,102,53,2,NULL),(2430,109,53,2,NULL),(2431,111,53,2,NULL),(2432,36,54,2,NULL),(2433,45,54,2,NULL),(2434,75,54,2,NULL),(2435,81,54,2,NULL),(2436,83,54,2,NULL),(2437,102,54,2,NULL),(2438,109,54,2,NULL),(2439,111,54,2,NULL),(2440,36,55,2,NULL),(2441,45,55,2,NULL),(2442,75,55,2,NULL),(2443,81,55,2,NULL),(2444,83,55,2,NULL),(2445,102,55,2,NULL),(2446,109,55,2,NULL),(2447,111,55,2,NULL),(2448,36,56,2,NULL),(2449,45,56,2,NULL),(2450,75,56,2,NULL),(2451,81,56,2,NULL),(2452,83,56,2,NULL),(2453,102,56,2,NULL),(2454,109,56,2,NULL),(2455,111,56,2,NULL),(2456,36,57,2,NULL),(2457,45,57,2,NULL),(2458,75,57,2,NULL),(2459,81,57,2,NULL),(2460,83,57,2,NULL),(2461,102,57,2,NULL),(2462,109,57,2,NULL),(2463,111,57,2,NULL),(2464,36,58,2,NULL),(2465,45,58,2,NULL),(2466,75,58,2,NULL),(2467,81,58,2,NULL),(2468,83,58,2,NULL),(2469,102,58,2,NULL),(2470,109,58,2,NULL),(2471,111,58,2,NULL),(2472,36,59,2,NULL),(2473,45,59,2,NULL),(2474,75,59,2,NULL),(2475,81,59,2,NULL),(2476,83,59,2,NULL),(2477,102,59,2,NULL),(2478,109,59,2,NULL),(2479,111,59,2,NULL),(2480,36,60,2,NULL),(2481,45,60,2,NULL),(2482,75,60,2,NULL),(2483,81,60,2,NULL),(2484,83,60,2,NULL),(2485,102,60,2,NULL),(2486,109,60,2,NULL),(2487,111,60,2,NULL),(2488,8,53,2,NULL),(2489,14,53,2,NULL),(2490,15,53,2,NULL),(2491,17,53,2,NULL),(2492,18,53,2,NULL),(2493,19,53,2,NULL),(2494,20,53,2,NULL),(2495,67,3,2,NULL),(2496,67,14,2,NULL),(2497,67,35,2,NULL),(2498,67,52,2,NULL),(2499,72,3,2,NULL),(2500,72,14,2,NULL),(2501,72,35,2,NULL),(2502,72,52,2,NULL),(2503,8,54,2,NULL),(2504,14,54,2,NULL),(2505,15,54,2,NULL),(2506,17,54,2,NULL),(2507,18,54,2,NULL),(2508,19,54,2,NULL),(2509,20,54,2,NULL),(2510,8,55,2,NULL),(2511,14,55,2,NULL),(2512,15,55,2,NULL),(2513,17,55,2,NULL),(2514,18,55,2,NULL),(2515,19,55,2,NULL),(2516,20,55,2,NULL),(2517,8,56,2,NULL),(2518,14,56,2,NULL),(2519,15,56,2,NULL),(2520,17,56,2,NULL),(2521,18,56,2,NULL),(2522,19,56,2,NULL),(2523,20,56,2,NULL),(2524,8,57,2,NULL),(2525,14,57,2,NULL),(2526,15,57,2,NULL),(2527,17,57,2,NULL),(2528,18,57,2,NULL),(2529,19,57,2,NULL),(2530,20,57,2,NULL),(2531,8,58,2,NULL),(2532,14,58,2,NULL),(2533,15,58,2,NULL),(2534,17,58,2,NULL),(2535,18,58,2,NULL),(2536,19,58,2,NULL),(2537,20,58,2,NULL),(2538,8,59,2,NULL),(2539,14,59,2,NULL),(2540,15,59,2,NULL),(2541,17,59,2,NULL),(2542,18,59,2,NULL),(2543,19,59,2,NULL),(2544,20,59,2,NULL),(2545,8,60,2,NULL),(2546,14,60,2,NULL),(2547,15,60,2,NULL),(2548,17,60,2,NULL),(2549,18,60,2,NULL),(2550,19,60,2,NULL),(2551,20,60,2,NULL),(2552,7,9,2,NULL),(2553,8,8,2,NULL),(2554,14,8,2,NULL),(2555,15,8,2,NULL),(2556,17,8,2,NULL),(2557,18,8,2,NULL),(2558,19,8,2,NULL),(2559,20,8,2,NULL),(2560,5,12,2,NULL),(2561,6,10,2,NULL),(2562,8,9,2,NULL),(2563,14,9,2,NULL),(2564,15,9,2,NULL),(2565,17,9,2,NULL),(2566,18,9,2,NULL),(2567,19,9,2,NULL),(2568,20,9,2,NULL),(2569,8,10,2,NULL),(2570,14,10,2,NULL),(2571,15,10,2,NULL),(2572,17,10,2,NULL),(2573,18,10,2,NULL),(2574,19,10,2,NULL),(2575,20,10,2,NULL),(2576,8,12,2,NULL),(2577,14,12,2,NULL),(2578,15,12,2,NULL),(2579,17,12,2,NULL),(2580,18,12,2,NULL),(2581,19,12,2,NULL),(2582,20,12,2,NULL),(2583,8,16,2,NULL),(2584,14,16,2,NULL),(2585,15,16,2,NULL),(2586,17,16,2,NULL),(2587,18,16,2,NULL),(2588,19,16,2,NULL),(2589,20,16,2,NULL),(2590,3,3,2,NULL),(2591,3,14,2,NULL),(2592,3,35,2,NULL),(2593,3,52,2,NULL),(2594,8,19,2,NULL),(2595,14,19,2,NULL),(2596,15,19,2,NULL),(2597,17,19,2,NULL),(2598,18,19,2,NULL),(2599,19,19,2,NULL),(2600,20,19,2,NULL),(2601,4,3,2,NULL),(2602,4,14,2,NULL),(2603,4,35,2,NULL),(2604,4,52,2,NULL),(2605,8,20,2,NULL),(2606,14,20,2,NULL),(2607,15,20,2,NULL),(2608,17,20,2,NULL),(2609,18,20,2,NULL),(2610,19,20,2,NULL),(2611,20,20,2,NULL),(2612,8,22,2,NULL),(2613,14,22,2,NULL),(2614,15,22,2,NULL),(2615,17,22,2,NULL),(2616,18,22,2,NULL),(2617,19,22,2,NULL),(2618,20,22,2,NULL),(2619,11,27,2,NULL),(2620,13,17,2,NULL),(2621,22,13,2,NULL),(2622,23,21,2,NULL),(2623,8,18,2,NULL),(2624,8,21,2,NULL),(2625,8,23,2,NULL),(2626,8,24,2,NULL),(2627,14,11,2,NULL),(2628,15,11,2,NULL),(2629,17,11,2,NULL),(2630,18,11,2,NULL),(2631,19,11,2,NULL),(2632,20,11,2,NULL),(2633,8,29,2,NULL),(2634,8,30,2,NULL),(2635,8,31,2,NULL),(2636,8,32,2,NULL),(2637,8,40,2,NULL),(2638,8,41,2,NULL),(2639,14,18,2,NULL),(2640,15,18,2,NULL),(2641,17,18,2,NULL),(2642,18,18,2,NULL),(2643,19,18,2,NULL),(2644,20,18,2,NULL),(2645,14,21,2,NULL),(2646,15,21,2,NULL),(2647,17,21,2,NULL),(2648,18,21,2,NULL),(2649,19,21,2,NULL),(2650,20,21,2,NULL),(2651,14,23,2,NULL),(2652,15,23,2,NULL),(2653,17,23,2,NULL),(2654,18,23,2,NULL),(2655,19,23,2,NULL),(2656,20,23,2,NULL),(2657,14,24,2,NULL),(2658,15,24,2,NULL),(2659,17,24,2,NULL),(2660,18,24,2,NULL),(2661,19,24,2,NULL),(2662,20,24,2,NULL),(2663,16,24,2,NULL),(2664,14,29,2,NULL),(2665,15,29,2,NULL),(2666,17,29,2,NULL),(2667,18,29,2,NULL),(2668,19,29,2,NULL),(2669,20,29,2,NULL),(2670,14,30,2,NULL),(2671,15,30,2,NULL),(2672,17,30,2,NULL),(2673,18,30,2,NULL),(2674,19,30,2,NULL),(2675,20,30,2,NULL),(2676,14,31,2,NULL),(2677,15,31,2,NULL),(2678,17,31,2,NULL),(2679,18,31,2,NULL),(2680,19,31,2,NULL),(2681,20,31,2,NULL),(2682,14,32,2,NULL),(2683,15,32,2,NULL),(2684,17,32,2,NULL),(2685,18,32,2,NULL),(2686,19,32,2,NULL),(2687,20,32,2,NULL),(2688,14,40,2,NULL),(2689,15,40,2,NULL),(2690,17,40,2,NULL),(2691,18,40,2,NULL),(2692,19,40,2,NULL),(2693,20,40,2,NULL),(2694,14,41,2,NULL),(2695,15,41,2,NULL),(2696,17,41,2,NULL),(2697,18,41,2,NULL),(2698,19,41,2,NULL),(2699,20,41,2,NULL),(2700,24,27,2,NULL),(2701,12,28,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (10,'android.permission.ACCESS_COARSE_LOCATION'),(9,'android.permission.ACCESS_FINE_LOCATION'),(7,'android.permission.ACCESS_NETWORK_STATE'),(8,'android.permission.BIND_WALLPAPER'),(21,'android.permission.BROADCAST_PACKAGE_REMOVED'),(15,'android.permission.DISABLE_KEYGUARD'),(12,'android.permission.INSTALL_PACKAGES'),(6,'android.permission.INTERNET'),(3,'android.permission.MODIFY_PHONE_STATE'),(24,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(11,'android.permission.READ_CONTACTS'),(1,'android.permission.READ_PHONE_STATE'),(25,'android.permission.READ_SMS'),(2,'android.permission.RECEIVE_BOOT_COMPLETED'),(14,'android.permission.RECEIVE_SMS'),(23,'android.permission.RESTART_PACKAGES'),(13,'android.permission.SEND_SMS'),(16,'android.permission.SET_PREFERRED_APPLICATIONS'),(18,'android.permission.VIBRATE'),(20,'android.permission.WAKE_LOCK'),(4,'android.permission.WRITE_APN_SETTINGS'),(5,'android.permission.WRITE_EXTERNAL_STORAGE'),(26,'android.permission.WRITE_SETTINGS'),(22,'android.permission.WRITE_SMS'),(19,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(17,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS');
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'http://sskan.mobi/',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'market://details?id=com.yodesoft.game.YoBrainParty',NULL,NULL,NULL),(6,NULL,NULL,'market://search?q=pub:yodesoft',NULL,NULL,NULL),(7,NULL,NULL,'market://search?q=pub:yodesoft Yo Find It',NULL,NULL,NULL),(8,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(9,NULL,NULL,'market://search?q=pub:yodesoft Yo Jigsaw',NULL,NULL,NULL),(10,NULL,NULL,'market://search?q=pub:yodesoft Yo Link Up',NULL,NULL,NULL),(11,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(12,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL),(13,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(14,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(15,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL),(16,NULL,NULL,'http://mp3.baidu.com/m?f=ms&rf=idx&tn=baidump3&ct=134217728&lf=&rn=&lm=0&word=(.*)',NULL,NULL,NULL),(17,NULL,NULL,'NULL-CONSTANT(.*)',NULL,NULL,NULL),(18,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL),(19,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(20,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(21,NULL,NULL,'content://telephony/carriers/current',NULL,NULL,NULL),(22,NULL,NULL,'content://sms/',NULL,NULL,NULL),(23,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(24,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(25,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(26,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(27,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(28,NULL,NULL,'content://sms/',NULL,NULL,NULL),(29,NULL,NULL,'http://mp3.baidu.com/m?f=ms&rf=idx&tn=baidump3&ct=134217728&lf=&rn=&lm=0&word=(.*)',NULL,NULL,NULL),(30,NULL,NULL,'NULL-CONSTANT(.*)',NULL,NULL,NULL),(31,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(32,NULL,NULL,'file://(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,28,12),(2,30,13),(3,38,14),(4,40,15),(5,58,18),(6,59,19),(7,74,20),(8,77,21),(9,82,22),(10,86,23),(11,92,24),(12,96,25),(13,105,26),(14,110,27),(15,117,28),(16,150,31);
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,1),(9,2,2),(10,2,3),(11,2,4),(12,2,5),(13,2,6),(14,2,7),(15,2,9),(16,2,10),(17,2,11),(18,3,17),(19,3,16),(20,3,1),(21,3,19),(22,3,18),(23,3,5),(24,3,6),(25,3,7),(26,3,12),(27,3,13),(28,3,14),(29,3,15),(30,4,1),(31,4,2),(32,4,18),(33,4,3),(34,4,4),(35,4,20),(36,4,5),(37,4,6),(38,4,7),(39,5,1),(40,5,2),(41,5,3),(42,5,4),(43,5,5),(44,5,6),(45,5,7),(46,5,9),(47,5,10),(48,5,11),(49,5,12),(50,5,13),(51,5,14),(52,5,21),(53,5,23),(54,5,22),(55,5,25),(56,5,24),(57,5,26);
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

-- Dump completed on 2015-10-12  3:29:59
