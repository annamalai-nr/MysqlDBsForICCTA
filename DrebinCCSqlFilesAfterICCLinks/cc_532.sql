-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_532
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (5,'android.intent.action.BOOT_COMPLETED'),(6,'android.intent.action.CHOOSER'),(9,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(10,'android.intent.action.NEW_OUTGOING_CALL'),(7,'android.intent.action.VIEW'),(2,'android.provider.Telephony.SMS_RECEIVED'),(4,'com.google.android.c2dm.intent.RECEIVE'),(8,'com.google.android.c2dm.intent.REGISTER'),(3,'com.google.android.c2dm.intent.REGISTRATION'),(11,'lab.sodino.sms.delivery'),(12,'lab.sodino.sms.send');
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
INSERT INTO `Applications` VALUES (1,'org.baole.app.blacklistpro',61),(2,'fa.lin.ero',1),(3,'com.dreamstep.wMobileSpySoftware',1308981617),(4,'com.tx.fate',1),(5,'com.tx.site',1),(6,'com.rxs21a.android',2),(7,'com.android.lemon.radio',1);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(4,'android.intent.category.HOME'),(1,'android.intent.category.LAUNCHER'),(3,'com.dreamstep.wMobileSpySoftware');
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'org.baole.app.blacklistpro.BlackListProActivity'),(2,1,'org.baole.app.blacklistpro.machination.Machine'),(3,2,'fa.lin.ero.StartActivity'),(4,2,'fa.lin.ero.ViewActivity'),(5,2,'fa.lin.ero.MovieActivity'),(6,3,'com.dreamstep.wMobileSpySoftware.MainNavigationActivity'),(7,3,'com.dreamstep.wMobileSpySoftware.MessageViewer'),(8,3,'com.dreamstep.wMobileSpySoftware.Server.C2DMClientReceiver'),(9,3,'com.google.android.c2dm.C2DMBroadcastReceiver'),(10,2,'fa.lin.ero.ViewActivity$1'),(11,2,'fa.lin.ero.StartActivity$1'),(12,5,'com.tx.site.activity.SplashActivity'),(13,4,'com.tx.fate.activity.SplashActivity'),(14,5,'com.tx.site.activity.TxActivity'),(15,4,'com.tx.fate.activity.TxActivity'),(16,5,'com.tx.site.activity.TxHallWebActivity'),(17,4,'com.tx.fate.activity.TxHallWebActivity'),(18,5,'com.tx.site.activity.MenuLayout'),(19,4,'com.tx.fate.activity.MenuLayout'),(20,5,'com.tx.site.service.login.LoginService'),(21,4,'com.tx.fate.service.login.LoginService'),(22,6,'com.rxs21a.android.MainActivity'),(23,6,'com.rxs21a.android.LoginActivity'),(24,6,'com.rxs21a.android.ChangePinActivity'),(25,6,'com.rxs21a.android.About'),(26,6,'com.rxs21a.android.AntiTheftActivity'),(27,6,'com.rxs21a.android.LocationActivity'),(28,6,'com.rxs21a.android.LoggingActivity'),(29,6,'com.rxs21a.android.SearchContactList'),(30,6,'com.rxs21a.android.FriendList'),(31,6,'com.rxs21a.android.HelpActivity'),(32,6,'com.rxs21a.android.LockScreen'),(33,6,'com.rxs21a.android.ServiceUsed'),(34,6,'com.rxs21a.android.UploadPreviousData'),(35,6,'com.rxs21a.android.Receiver'),(36,6,'com.rxs21a.android.GPSHandler'),(37,7,'com.android.lemon.radio.activity.InitActivity'),(38,7,'com.android.lemon.radio.activity.LocalActivity'),(39,7,'com.android.lemon.radio.activity.LocalAddAudiosActivity'),(40,7,'com.android.lemon.radio.activity.OnlineActivity'),(41,7,'com.android.lemon.radio.activity.MediaPlayerActivity'),(42,7,'com.android.lemon.radio.activity.DownloadManager'),(43,7,'com.android.lemon.radio.activity.DownloadManagerActivity'),(44,7,'com.adpooh.adscast.PopAdsActivity'),(45,7,'com.adpooh.adscast.AdsWebViewActivity'),(46,7,'com.android.lemon.radio.service.MusicControlService'),(47,7,'com.android.lemon.common.sms.SmsReceived'),(48,5,'com.tx.site.activity.TxActivity$2'),(49,4,'com.tx.fate.activity.TxActivity$2'),(50,3,'com.dreamstep.wMobileSpySoftware.Utils.BrowserDownloadListener'),(51,3,'com.google.android.c2dm.C2DMessaging'),(52,6,'com.rxs21a.android.SavePreviousData'),(53,6,'com.rxs21a.android.LoginActivity$5'),(54,6,'com.rxs21a.android.ServiceUsed$2'),(55,6,'com.rxs21a.android.SmsReceiver'),(56,7,'com.android.lemon.radio.data.dao.PlaylistDao'),(57,7,'com.android.lemon.radio.data.dao.AudioDao'),(58,7,'com.android.lemon.common.http.CheckVersion$5'),(59,7,'com.android.lemon.radio.data.dao.ArtistDao');
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
INSERT INTO `ComponentExtras` VALUES (1,2,'pdus'),(2,5,'TAG'),(3,9,'error'),(4,19,'imsi'),(5,7,'url'),(6,9,'registration_id'),(7,7,'title'),(8,18,'imsi'),(9,9,'message'),(10,9,'title'),(11,9,'url'),(12,9,'unregistered'),(13,21,'DEFAULTTEXT'),(14,28,'CONTACT'),(15,45,'pdus'),(16,43,'kind'),(17,42,'btnVisible'),(18,43,'web_url'),(19,42,'vo'),(20,38,'isOnline'),(21,39,'isOnline'),(22,42,'isOnline'),(23,36,'isOnline'),(24,41,'isOnline'),(25,45,'ConfirmNumber');
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
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'r',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'s',0,NULL,NULL),(9,9,'r',1,20,NULL),(10,12,'a',1,NULL,NULL),(11,13,'a',1,NULL,NULL),(12,14,'a',0,NULL,NULL),(13,15,'a',0,NULL,NULL),(14,16,'a',0,NULL,NULL),(15,17,'a',0,NULL,NULL),(16,18,'a',0,NULL,NULL),(17,19,'a',0,NULL,NULL),(18,20,'s',0,NULL,NULL),(19,21,'s',0,NULL,NULL),(20,22,'a',0,NULL,NULL),(21,23,'a',0,NULL,NULL),(22,24,'a',0,NULL,NULL),(23,25,'a',0,NULL,NULL),(24,26,'a',0,NULL,NULL),(25,27,'a',0,NULL,NULL),(26,28,'a',0,NULL,NULL),(27,29,'a',0,NULL,NULL),(28,30,'a',0,NULL,NULL),(29,31,'a',0,NULL,NULL),(30,32,'a',0,NULL,NULL),(31,33,'s',0,NULL,NULL),(32,34,'s',0,NULL,NULL),(33,35,'r',1,NULL,NULL),(34,36,'r',0,NULL,NULL),(35,37,'a',1,NULL,NULL),(36,38,'a',0,NULL,NULL),(37,39,'a',0,NULL,NULL),(38,40,'a',0,NULL,NULL),(39,41,'a',0,NULL,NULL),(40,42,'a',0,NULL,NULL),(41,43,'a',0,NULL,NULL),(42,44,'a',0,NULL,NULL),(43,45,'a',0,NULL,NULL),(44,46,'s',0,NULL,NULL),(45,47,'r',1,NULL,NULL),(46,54,'r',1,NULL,NULL),(47,36,'r',1,NULL,NULL),(48,55,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,4),(2,2,3),(3,3,6),(4,4,12),(5,5,13),(6,6,15),(7,7,10),(8,8,11),(9,9,14),(10,10,6),(11,11,6),(12,12,6),(13,12,9),(14,13,32),(15,13,31),(16,14,20),(17,15,31),(18,15,32),(19,16,20),(20,17,20),(21,18,33),(22,19,31),(23,20,31),(24,20,32),(25,21,31),(26,22,20),(27,23,32),(28,23,31),(29,24,31),(30,25,31),(31,26,31),(32,26,32),(33,27,31),(34,28,31),(35,29,28),(36,30,20),(37,31,21),(38,32,20),(39,33,31),(40,34,20),(41,35,31),(42,35,32),(43,36,20),(44,37,24),(45,38,32),(46,38,31),(47,39,21),(48,40,41),(49,41,36),(50,41,38),(51,41,39),(52,41,42),(53,41,41),(54,42,39),(55,42,41),(56,42,38),(57,42,42),(58,42,36),(59,43,42),(60,43,36),(61,43,41),(62,43,39),(63,43,38),(64,44,36),(65,44,38),(66,44,39),(67,44,42),(68,44,41),(69,45,42),(70,45,41),(71,45,39),(72,45,38),(73,45,36),(74,46,36),(75,46,42),(76,46,41),(77,46,38),(78,46,39),(79,47,41),(80,47,38),(81,47,39),(82,47,42),(83,47,36),(84,48,39),(85,48,41),(86,48,42),(87,48,36),(88,48,38),(89,49,42),(90,49,41),(91,49,38),(92,49,39),(93,49,36),(94,50,41),(95,50,42),(96,50,38),(97,50,39),(98,50,36),(99,51,39),(100,51,38),(101,51,41),(102,51,36),(103,51,42),(104,52,42),(105,52,41),(106,52,39),(107,52,38),(108,52,36),(109,53,36),(110,53,39),(111,53,38),(112,53,41),(113,53,42),(114,54,39),(115,55,36),(116,55,42),(117,55,38),(118,55,39),(119,55,41),(120,56,38),(121,56,36),(122,56,41),(123,56,42),(124,56,39),(125,57,36),(126,57,39),(127,57,38),(128,57,41),(129,57,42),(130,58,38),(131,59,42),(132,59,38),(133,59,36),(134,60,39),(135,60,41),(136,60,42),(137,60,36),(138,60,38),(139,61,36),(140,62,36),(141,62,38),(142,62,39),(143,62,41),(144,62,42),(145,63,36),(146,64,39),(147,64,42),(148,64,41),(149,64,36),(150,64,38),(151,65,42),(152,65,41),(153,65,39),(154,65,38),(155,65,36);
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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,10,'<fa.lin.ero.ViewActivity$1: void onClick(android.view.View)>',10,'a',NULL),(2,11,'<fa.lin.ero.StartActivity$1: void onClick(android.view.View)>',7,'a',NULL),(3,6,'<com.dreamstep.wMobileSpySoftware.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',36,'a',NULL),(4,48,'<com.tx.site.activity.TxActivity$2: void onClick(android.view.View)>',19,'a',NULL),(5,49,'<com.tx.fate.activity.TxActivity$2: void onClick(android.view.View)>',19,'a',NULL),(6,17,'<com.tx.fate.activity.TxHallWebActivity: boolean onKeyDown(int,android.view.KeyEvent)>',16,'a',NULL),(7,12,'<com.tx.site.activity.SplashActivity: void checkUser(java.lang.String)>',8,'s',NULL),(8,13,'<com.tx.fate.activity.SplashActivity: void checkUser(java.lang.String)>',8,'s',NULL),(9,16,'<com.tx.site.activity.TxHallWebActivity: boolean onKeyDown(int,android.view.KeyEvent)>',16,'a',NULL),(10,50,'<com.dreamstep.wMobileSpySoftware.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',21,'a',NULL),(11,50,'<com.dreamstep.wMobileSpySoftware.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',15,'a',NULL),(12,51,'<com.google.android.c2dm.C2DMessaging: void register(android.content.Context,java.lang.String)>',9,'s',NULL),(13,52,'<com.rxs21a.android.SavePreviousData: void getContactDetails()>',4,'p',NULL),(14,22,'<com.rxs21a.android.MainActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',18,'a',NULL),(15,52,'<com.rxs21a.android.SavePreviousData: void getCalenderDetails()>',15,'p',NULL),(16,22,'<com.rxs21a.android.MainActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',13,'a',NULL),(17,22,'<com.rxs21a.android.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(18,35,'<com.rxs21a.android.Receiver: void onReceive(android.content.Context,android.content.Intent)>',6,'s',NULL),(19,33,'<com.rxs21a.android.ServiceUsed: void onLowMemory()>',4,'s',NULL),(20,52,'<com.rxs21a.android.SavePreviousData: void getContactDetails()>',29,'p',NULL),(21,33,'<com.rxs21a.android.ServiceUsed: void registerReceivers()>',36,'p',NULL),(22,22,'<com.rxs21a.android.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',39,'a',NULL),(23,52,'<com.rxs21a.android.SavePreviousData: void getURLDetails()>',5,'p',NULL),(24,33,'<com.rxs21a.android.ServiceUsed: void onDestroy()>',4,'s',NULL),(25,33,'<com.rxs21a.android.ServiceUsed: void registerReceivers()>',69,'p',NULL),(26,52,'<com.rxs21a.android.SavePreviousData: void readEmail(java.lang.String,java.lang.String,java.util.Vector)>',16,'p',NULL),(27,33,'<com.rxs21a.android.ServiceUsed: void registerReceivers()>',62,'p',NULL),(28,33,'<com.rxs21a.android.ServiceUsed: void registerReceivers()>',48,'p',NULL),(29,30,'<com.rxs21a.android.FriendList: boolean onOptionsItemSelected(android.view.MenuItem)>',21,'a',NULL),(30,22,'<com.rxs21a.android.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(31,53,'<com.rxs21a.android.LoginActivity$5: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(32,22,'<com.rxs21a.android.MainActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',8,'a',NULL),(33,33,'<com.rxs21a.android.ServiceUsed: void registerReceivers()>',55,'p',NULL),(34,22,'<com.rxs21a.android.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',43,'a',NULL),(35,52,'<com.rxs21a.android.SavePreviousData: void getSmsDetails(android.content.Context,java.lang.String,int)>',13,'p',NULL),(36,22,'<com.rxs21a.android.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(37,26,'<com.rxs21a.android.AntiTheftActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',45,'a',NULL),(38,52,'<com.rxs21a.android.SavePreviousData: void readEmail(java.lang.String,java.lang.String,java.util.Vector)>',31,'p',NULL),(39,23,'<com.rxs21a.android.LoginActivity: void onCreate(android.os.Bundle)>',18,'a',NULL),(40,43,'<com.android.lemon.radio.activity.DownloadManagerActivity: void onCreate(android.os.Bundle)>',9,'s',NULL),(41,40,'<com.android.lemon.radio.activity.OnlineActivity: void intoDownloadManager()>',7,'a',NULL),(42,56,'<com.android.lemon.radio.data.dao.PlaylistDao: java.util.List findOtherPlaylistById(long)>',14,'p',NULL),(43,56,'<com.android.lemon.radio.data.dao.PlaylistDao: void delPlaylist(long)>',12,'p',NULL),(44,57,'<com.android.lemon.radio.data.dao.AudioDao: java.util.List findAll()>',13,'p',NULL),(45,43,'<com.android.lemon.radio.activity.DownloadManagerActivity: void intoMediaPlayer(int)>',8,'a',NULL),(46,56,'<com.android.lemon.radio.data.dao.PlaylistDao: void updatePlaylist(com.android.lemon.radio.data.bean.PlaylistBean)>',14,'p',NULL),(47,57,'<com.android.lemon.radio.data.dao.AudioDao: void delAudio(long)>',12,'p',NULL),(48,56,'<com.android.lemon.radio.data.dao.PlaylistDao: java.util.List findAll()>',5,'p',NULL),(49,57,'<com.android.lemon.radio.data.dao.AudioDao: java.util.List findAudiosByArtistId(long)>',19,'p',NULL),(50,40,'<com.android.lemon.radio.activity.OnlineActivity: void intoMediaPlayer(int)>',8,'a',NULL),(51,43,'<com.android.lemon.radio.activity.DownloadManagerActivity: void intoOnlineMusic()>',9,'a',NULL),(52,57,'<com.android.lemon.radio.data.dao.AudioDao: com.android.lemon.radio.data.bean.AudioBean findAudioById(long)>',13,'p',NULL),(53,56,'<com.android.lemon.radio.data.dao.PlaylistDao: void addPlaylist(java.lang.String)>',13,'p',NULL),(54,41,'<com.android.lemon.radio.activity.MediaPlayerActivity: void onCreate(android.os.Bundle)>',15,'s',NULL),(55,38,'<com.android.lemon.radio.activity.LocalActivity: void intoDownloadManager()>',7,'a',NULL),(56,38,'<com.android.lemon.radio.activity.LocalActivity: void intoOnlineMusic()>',3,'a',NULL),(57,56,'<com.android.lemon.radio.data.dao.PlaylistDao: com.android.lemon.radio.data.bean.PlaylistBean findPlaylistByName(java.lang.String)>',12,'p',NULL),(58,40,'<com.android.lemon.radio.activity.OnlineActivity: void onCreate(android.os.Bundle)>',13,'s',NULL),(59,58,'<com.android.lemon.common.http.CheckVersion$5: void run()>',16,'a',NULL),(60,38,'<com.android.lemon.radio.activity.LocalActivity: void intoAddAudios(com.android.lemon.radio.data.bean.PlaylistBean)>',10,'a',NULL),(61,38,'<com.android.lemon.radio.activity.LocalActivity: void goBack()>',6,'a',NULL),(62,38,'<com.android.lemon.radio.activity.LocalActivity: void intoMediaPlayer(int)>',8,'a',NULL),(63,38,'<com.android.lemon.radio.activity.LocalActivity: void onCreate(android.os.Bundle)>',9,'s',NULL),(64,57,'<com.android.lemon.radio.data.dao.AudioDao: void updateAudio(com.android.lemon.radio.data.bean.AudioBean)>',14,'p',NULL),(65,59,'<com.android.lemon.radio.data.dao.ArtistDao: java.util.List findAll()>',5,'p',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,3,6),(2,4,6),(3,5,6),(4,6,6),(5,7,6),(6,8,6),(7,9,7),(8,10,7),(9,11,6),(10,12,6),(11,17,7),(12,18,7),(13,19,8),(14,22,9),(15,44,7),(16,45,7),(17,46,7),(18,47,7),(19,48,7),(20,51,1);
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
INSERT INTO `ICategories` VALUES (1,44,2),(2,45,2),(3,46,2),(4,47,2),(5,48,2),(6,51,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'fa/lin/ero/MovieActivity'),(2,2,'fa/lin/ero/ViewActivity'),(3,9,'com.android.browser.BrowserActivity'),(4,10,'com.android.browser.BrowserActivity'),(5,13,'com/tx/fate/activity/TxActivity'),(6,14,'com/tx/site/service/login/LoginService'),(7,15,'com/tx/fate/service/login/LoginService'),(8,16,'com/tx/site/activity/TxActivity'),(9,20,'com/rxs21a/android/LocationActivity'),(10,21,'com/rxs21a/android/AntiTheftActivity'),(11,23,'com/rxs21a/android/ServiceUsed'),(12,24,'com/rxs21a/android/ServiceUsed'),(13,25,'com/rxs21a/android/LoginActivity'),(14,26,'com/rxs21a/android/ServiceUsed'),(15,27,'com/rxs21a/android/SearchContactList'),(16,28,'com/rxs21a/android/HelpActivity'),(17,29,'com/rxs21a/android/MainActivity'),(18,30,'com/rxs21a/android/LoggingActivity'),(19,31,'com/rxs21a/android/ChangePinActivity'),(20,32,'com/rxs21a/android/About'),(21,33,'com/rxs21a/android/FriendList'),(22,34,'com/rxs21a/android/MainActivity'),(23,35,'com/android/lemon/radio/service/MusicControlService'),(24,36,'com/android/lemon/radio/activity/DownloadManagerActivity'),(25,37,'com/android/lemon/radio/activity/MediaPlayerActivity'),(26,38,'com/android/lemon/radio/activity/MediaPlayerActivity'),(27,39,'com/android/lemon/radio/activity/OnlineActivity'),(28,40,'com/android/lemon/radio/service/MusicControlService'),(29,41,'com/android/lemon/radio/activity/DownloadManagerActivity'),(30,42,'com/android/lemon/radio/activity/OnlineActivity'),(31,43,'com/android/lemon/radio/service/MusicControlService'),(32,49,'com/android/lemon/radio/activity/LocalAddAudiosActivity'),(33,50,'com/android/lemon/radio/activity/LocalAddAudiosActivity'),(34,52,'com/android/lemon/radio/activity/MediaPlayerActivity'),(35,53,'com/android/lemon/radio/service/MusicControlService');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,9,1),(2,10,2),(3,17,3),(4,18,4),(5,22,7),(6,44,28),(7,45,29),(8,46,30),(9,47,31),(10,48,32);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'TAG'),(2,3,'android.intent.extra.INTENT'),(3,4,'android.intent.extra.INTENT'),(4,5,'android.intent.extra.TITLE'),(5,5,'android.intent.extra.INTENT'),(6,6,'android.intent.extra.INTENT'),(7,7,'android.intent.extra.TITLE'),(8,7,'android.intent.extra.INTENT'),(9,8,'android.intent.extra.INTENT'),(10,11,'android.intent.extra.TITLE'),(11,11,'android.intent.extra.INTENT'),(12,12,'android.intent.extra.TITLE'),(13,12,'android.intent.extra.INTENT'),(14,14,'imsi'),(15,15,'imsi'),(16,19,'sender'),(17,19,'app'),(18,25,'DEFAULTTEXT'),(19,36,'isOnline'),(20,37,'Position'),(21,38,'Position'),(22,41,'isOnline'),(23,50,'ID'),(24,52,'Position');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,1),(5,5,3),(6,6,4),(7,7,1),(8,8,1),(9,9,5),(10,10,1),(11,11,2),(12,12,10),(13,13,10),(14,14,10),(15,15,10),(16,16,2),(17,17,11),(18,18,12);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,4,2),(4,4,1),(5,5,3),(6,6,3),(7,7,1),(8,8,1),(9,10,1);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,46,'audio','mpeg'),(2,47,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'fa.lin.ero'),(2,2,'fa.lin.ero'),(3,9,'com.android.browser'),(4,10,'com.android.browser'),(5,13,'com.tx.fate'),(6,14,'com.tx.site'),(7,15,'com.tx.fate'),(8,16,'com.tx.site'),(9,20,'com.rxs21a.android'),(10,21,'com.rxs21a.android'),(11,23,'com.rxs21a.android'),(12,24,'com.rxs21a.android'),(13,25,'com.rxs21a.android'),(14,26,'com.rxs21a.android'),(15,27,'com.rxs21a.android'),(16,28,'com.rxs21a.android'),(17,29,'com.rxs21a.android'),(18,30,'com.rxs21a.android'),(19,31,'com.rxs21a.android'),(20,32,'com.rxs21a.android'),(21,33,'com.rxs21a.android'),(22,34,'com.rxs21a.android'),(23,35,'com.android.lemon.radio'),(24,36,'com.android.lemon.radio'),(25,37,'com.android.lemon.radio'),(26,38,'com.android.lemon.radio'),(27,39,'com.android.lemon.radio'),(28,40,'com.android.lemon.radio'),(29,41,'com.android.lemon.radio'),(30,42,'com.android.lemon.radio'),(31,43,'com.android.lemon.radio'),(32,49,'com.android.lemon.radio'),(33,50,'com.android.lemon.radio'),(34,52,'com.android.lemon.radio'),(35,53,'com.android.lemon.radio');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,3,0),(4,6,0),(5,9,0),(6,9,0),(7,10,0),(8,11,0),(9,33,0),(10,35,0),(11,45,0),(12,46,0),(13,47,0),(14,33,0),(15,48,0),(16,48,0),(17,45,0),(18,45,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,1,0),(4,3,1,0),(5,3,1,0),(6,3,1,0),(7,3,1,0),(8,3,1,0),(9,5,0,0),(10,4,0,0),(11,3,1,0),(12,3,1,0),(13,6,0,0),(14,7,0,0),(15,8,0,0),(16,9,0,0),(17,10,1,0),(18,11,1,0),(19,12,1,0),(20,14,0,0),(21,16,0,0),(22,17,1,0),(23,18,0,0),(24,19,0,0),(25,22,0,0),(26,24,0,0),(27,29,0,0),(28,30,0,0),(29,31,0,0),(30,32,0,0),(31,34,0,0),(32,36,0,0),(33,37,0,0),(34,39,0,0),(35,40,0,0),(36,41,0,0),(37,45,0,0),(38,50,0,0),(39,51,0,0),(40,54,0,0),(41,55,0,0),(42,56,0,0),(43,58,0,0),(44,59,1,0),(45,59,1,0),(46,59,1,0),(47,59,1,0),(48,59,1,0),(49,60,0,0),(50,60,0,0),(51,61,1,0),(52,62,0,0),(53,63,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,3,35,2,NULL),(2,4,35,2,NULL),(3,5,35,2,NULL),(4,6,35,2,NULL),(5,7,35,2,NULL),(6,8,35,2,NULL),(7,11,35,2,NULL),(8,12,35,2,NULL),(9,22,35,2,NULL),(10,51,35,2,NULL),(11,41,41,2,NULL),(12,42,38,2,NULL),(13,49,37,2,NULL),(14,50,37,2,NULL),(15,52,39,2,NULL),(16,53,44,2,NULL),(17,51,1,2,NULL),(18,51,2,2,NULL),(19,51,3,2,NULL),(20,51,6,2,NULL),(21,51,9,2,NULL),(22,51,11,2,NULL),(23,51,10,2,NULL),(24,51,33,2,NULL),(25,51,47,2,NULL),(26,51,46,2,NULL),(27,51,48,2,NULL),(28,51,45,2,NULL),(29,36,41,2,NULL),(30,38,39,2,NULL),(31,43,44,2,NULL),(32,40,44,2,NULL),(33,35,44,2,NULL),(34,37,39,2,NULL),(35,39,38,2,NULL),(36,3,45,2,NULL),(37,4,45,2,NULL),(38,5,45,2,NULL),(39,6,45,2,NULL),(40,7,45,2,NULL),(41,8,45,2,NULL),(42,11,45,2,NULL),(43,12,45,2,NULL),(44,22,45,2,NULL),(45,3,3,2,NULL),(46,4,3,2,NULL),(47,5,3,2,NULL),(48,6,3,2,NULL),(49,7,3,2,NULL),(50,8,3,2,NULL),(51,11,3,2,NULL),(52,12,3,2,NULL),(53,22,3,2,NULL),(54,3,1,2,NULL),(55,4,1,2,NULL),(56,5,1,2,NULL),(57,6,1,2,NULL),(58,7,1,2,NULL),(59,8,1,2,NULL),(60,11,1,2,NULL),(61,12,1,2,NULL),(62,22,1,2,NULL),(63,3,2,2,NULL),(64,4,2,2,NULL),(65,5,2,2,NULL),(66,6,2,2,NULL),(67,7,2,2,NULL),(68,8,2,2,NULL),(69,11,2,2,NULL),(70,12,2,2,NULL),(71,22,2,2,NULL),(72,20,25,2,NULL),(73,21,24,2,NULL),(74,25,21,2,NULL),(75,28,29,2,NULL),(76,30,26,2,NULL),(77,31,22,2,NULL),(78,32,23,2,NULL),(79,22,6,2,NULL),(80,22,9,2,NULL),(81,22,11,2,NULL),(82,22,10,2,NULL),(83,22,33,2,NULL),(84,22,47,2,NULL),(85,22,46,2,NULL),(86,22,48,2,NULL),(87,34,20,2,NULL),(88,33,28,2,NULL),(89,27,27,2,NULL),(90,24,31,2,NULL),(91,26,31,2,NULL),(92,23,31,2,NULL),(93,3,33,2,NULL),(94,4,33,2,NULL),(95,5,33,2,NULL),(96,6,33,2,NULL),(97,7,33,2,NULL),(98,8,33,2,NULL),(99,11,33,2,NULL),(100,12,33,2,NULL),(101,3,47,2,NULL),(102,4,47,2,NULL),(103,5,47,2,NULL),(104,6,47,2,NULL),(105,7,47,2,NULL),(106,8,47,2,NULL),(107,11,47,2,NULL),(108,12,47,2,NULL),(109,3,46,2,NULL),(110,4,46,2,NULL),(111,5,46,2,NULL),(112,6,46,2,NULL),(113,7,46,2,NULL),(114,8,46,2,NULL),(115,11,46,2,NULL),(116,12,46,2,NULL),(117,3,48,2,NULL),(118,4,48,2,NULL),(119,5,48,2,NULL),(120,6,48,2,NULL),(121,7,48,2,NULL),(122,8,48,2,NULL),(123,11,48,2,NULL),(124,12,48,2,NULL),(125,3,9,2,NULL),(126,4,9,2,NULL),(127,5,9,2,NULL),(128,6,9,2,NULL),(129,7,9,2,NULL),(130,8,9,2,NULL),(131,11,9,2,NULL),(132,12,9,2,NULL),(133,3,11,2,NULL),(134,4,11,2,NULL),(135,5,11,2,NULL),(136,6,11,2,NULL),(137,7,11,2,NULL),(138,8,11,2,NULL),(139,11,11,2,NULL),(140,12,11,2,NULL),(141,3,10,2,NULL),(142,4,10,2,NULL),(143,5,10,2,NULL),(144,6,10,2,NULL),(145,7,10,2,NULL),(146,8,10,2,NULL),(147,11,10,2,NULL),(148,12,10,2,NULL),(149,15,19,2,NULL),(150,13,13,2,NULL),(151,14,18,2,NULL),(152,16,12,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (26,'android.permission.ACCESS_COARSE_LOCATION'),(29,'android.permission.ACCESS_FINE_LOCATION'),(16,'android.permission.ACCESS_NETWORK_STATE'),(25,'android.permission.ACCESS_WIFI_STATE'),(6,'android.permission.CALL_PHONE'),(37,'android.permission.CHANGE_NETWORK_STATE'),(36,'android.permission.CHANGE_WIFI_STATE'),(31,'android.permission.DELETE_CACHE_FILES'),(34,'android.permission.DISABLE_KEYGUARD'),(30,'android.permission.INJECT_EVENTS'),(21,'android.permission.INSTALL_PACKAGES'),(15,'android.permission.INTERNET'),(9,'android.permission.MODIFY_AUDIO_SETTINGS'),(13,'android.permission.MODIFY_PHONE_STATE'),(14,'android.permission.PROCESS_CALL'),(23,'android.permission.PROCESS_OUTGOING_CALLS'),(27,'android.permission.READ_CALENDAR'),(7,'android.permission.READ_CONTACTS'),(24,'android.permission.READ_LOGS'),(10,'android.permission.READ_PHONE_STATE'),(11,'android.permission.READ_SMS'),(12,'android.permission.RECEIVE_BOOT_COMPLETED'),(4,'android.permission.RECEIVE_MMS'),(5,'android.permission.RECEIVE_SMS'),(22,'android.permission.RESTART_PACKAGES'),(1,'android.permission.SEND_SMS'),(39,'android.permission.SET_WALLPAPER'),(40,'android.permission.WAKE_LOCK'),(33,'android.permission.WRITE_CALENDAR'),(8,'android.permission.WRITE_CONTACTS'),(2,'android.permission.WRITE_EXTERNAL_STORAGE'),(32,'android.permission.WRITE_SECURE_SETTINGS'),(35,'android.permission.WRITE_SETTINGS'),(3,'android.permission.WRITE_SMS'),(17,'android.webkit.permission.PLUGIN'),(38,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(28,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(18,'com.dreamstep.wMobileSpySoftware.permission.C2D_MESSAGE'),(19,'com.google.android.c2dm.permission.RECEIVE'),(20,'com.google.android.c2dm.permission.SEND');
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
INSERT INTO `Permissions` VALUES (18,'s');
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(2,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(3,NULL,NULL,'',NULL,NULL,NULL),(4,NULL,NULL,'',NULL,NULL,NULL),(5,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(6,NULL,NULL,'content://calendar/events',NULL,NULL,NULL),(7,NULL,NULL,'package:com.rxs21a.android',NULL,NULL,NULL),(8,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(9,NULL,NULL,'content://sms/',NULL,NULL,NULL),(10,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(11,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(12,NULL,NULL,'content://com.android.contacts/data/emails',NULL,NULL,NULL),(13,NULL,NULL,'content://calendar/events',NULL,NULL,NULL),(14,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(15,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(16,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(17,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(18,NULL,NULL,'content://media/external/audio/playlists',NULL,NULL,NULL),(19,NULL,NULL,'content://media/external/audio/playlists',NULL,NULL,NULL),(20,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(21,NULL,NULL,'content://media/external/audio/playlists',NULL,NULL,NULL),(22,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(23,NULL,NULL,'content://media/external/audio/playlists',NULL,NULL,NULL),(24,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(25,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(26,NULL,NULL,'content://media/external/audio/playlists',NULL,NULL,NULL),(27,NULL,NULL,'content://media/external/audio/playlists',NULL,NULL,NULL),(28,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(29,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(30,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(31,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(32,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(33,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(34,NULL,NULL,'content://media/external/audio/artists',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,13,5),(2,15,6),(3,20,8),(4,21,9),(5,23,10),(6,25,11),(7,26,12),(8,27,13),(9,28,14),(10,33,15),(11,35,16),(12,38,17),(13,42,18),(14,43,19),(15,44,20),(16,46,21),(17,47,22),(18,48,23),(19,49,24),(20,52,25),(21,53,26),(22,57,27),(23,64,33),(24,65,34);
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,2,16),(16,2,6),(17,2,7),(18,2,10),(19,2,15),(20,3,17),(21,3,16),(22,3,19),(23,3,18),(24,3,15),(25,4,1),(26,5,1),(27,4,2),(28,5,2),(29,4,21),(30,5,21),(31,4,5),(32,5,5),(33,5,22),(34,4,22),(35,5,10),(36,4,10),(37,5,11),(38,4,11),(39,6,1),(40,5,15),(41,4,15),(42,6,2),(43,6,3),(44,6,5),(45,6,7),(46,6,8),(47,6,9),(48,6,10),(49,6,11),(50,6,12),(51,6,15),(52,6,16),(53,6,23),(54,6,25),(55,6,24),(56,6,27),(57,6,26),(58,6,29),(59,6,28),(60,6,31),(61,6,30),(62,6,34),(63,6,35),(64,6,32),(65,6,33),(66,6,38),(67,6,36),(68,6,37),(69,7,16),(70,7,35),(71,7,1),(72,7,2),(73,7,39),(74,7,5),(75,7,40),(76,7,10),(77,7,29),(78,7,15);
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

-- Dump completed on 2015-10-12  3:30:49
