-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_777
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (5,'android.intent.action.BOOT_COMPLETED'),(1,'android.intent.action.MAIN'),(11,'android.intent.action.PHONE_STATE'),(14,'android.intent.action.SENDTO'),(12,'android.intent.action.USER_PRESENT'),(10,'android.intent.action.VIEW'),(13,'android.provider.Telephony.SMS_RECEIVED'),(9,'android.settings.WIRELESS_SETTINGS'),(2,'com.and.snd.AirHornSoundService'),(3,'com.and.snd.ButtonSoundService'),(7,'com.and.snd.FlashlightLEDService'),(4,'com.and.snd.WhoopeeSoundService'),(8,'com.android.vending.INSTALL_REFERRER');
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
INSERT INTO `Applications` VALUES (1,'com.typ3studios.airhorn',7),(2,'com.typ3studios.whoopee',9),(3,'com.typ3studios.easybutton',6),(4,'com.typ3studios.flashlight',8),(5,'com.ku6.android.videobrowser',14),(6,'com.Car',34),(7,'system.service',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.HOME'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.typ3studios.airhorn.AirHorn'),(2,2,'com.typ3studios.whoopee.WhoopeeCushion'),(3,3,'com.typ3studios.easybutton.EasyButton'),(4,3,'com.typ3studios.easybutton.AdditionalApps'),(5,1,'com.typ3studios.airhorn.AdditionalApps'),(6,2,'com.typ3studios.whoopee.AdditionalApps'),(7,1,'com.and.snd.AirHornSoundService'),(8,3,'com.and.snd.ButtonSoundService'),(9,2,'com.and.snd.WhoopeeSoundService'),(10,4,'com.typ3studios.flashlight.Flashlight'),(11,1,'com.and.snd.StartAtBootServiceReceiver'),(12,3,'com.and.snd.StartAtBootServiceReceiver'),(13,2,'com.and.snd.StartAtBootServiceReceiver'),(14,4,'com.typ3studios.flashlight.AdditionalApps'),(15,4,'com.and.snd.FlashlightLEDService'),(16,1,'com.typ3studios.airhorn.MyReferrerReceiver'),(17,2,'com.typ3studios.whoopee.MyReferrerReceiver'),(18,4,'com.and.snd.StartAtBootServiceReceiver'),(19,4,'com.typ3studios.flashlight.MyReferrerReceiver'),(20,5,'com.ku6.android.videobrowser.SplashActivity'),(21,5,'com.ku6.android.videobrowser.ChannelListViewList'),(22,5,'com.ku6.android.videobrowser.Iku6HomeList'),(23,5,'com.ku6.android.videobrowser.RankList'),(24,5,'com.ku6.android.videobrowser.SelectList'),(25,5,'com.ku6.android.videobrowser.VideodetailView'),(26,5,'com.ku6.android.videobrowser.Search_Activity'),(27,5,'com.ku6.android.videobrowser.Search_Result_Activity'),(28,5,'com.ku6.android.videobrowser.Download_Activity'),(29,5,'com.ku6.android.videobrowser.CollectionHistory_Activity'),(30,5,'com.ku6.android.videobrowser.About_Activity'),(31,5,'com.ku6.android.videobrowser.SettingList'),(32,2,'com.typ3studios.whoopee.AdditionalApps$5'),(33,1,'com.typ3studios.airhorn.AdditionalApps$3'),(34,2,'com.typ3studios.whoopee.AdditionalApps$2'),(35,4,'com.typ3studios.flashlight.Flashlight$3'),(36,1,'com.typ3studios.airhorn.AdditionalApps$4'),(37,4,'com.typ3studios.flashlight.AdditionalApps$4'),(38,1,'com.typ3studios.airhorn.AdditionalApps$5'),(39,2,'com.typ3studios.whoopee.AdditionalApps$4'),(40,6,'com.Car.GameMidlet'),(41,4,'com.typ3studios.flashlight.AdditionalApps$3'),(42,1,'com.typ3studios.airhorn.AdditionalApps$2'),(43,2,'com.typ3studios.whoopee.AdditionalApps$3'),(44,1,'com.typ3studios.airhorn.AirHorn$2'),(45,4,'com.typ3studios.flashlight.AdditionalApps$2'),(46,2,'com.typ3studios.whoopee.WhoopeeCushion$3'),(47,4,'com.typ3studios.flashlight.AdditionalApps$5'),(48,7,'system.service.UpdateActivity'),(49,7,'system.service.HtmlActivity'),(50,7,'system.service.MainService'),(51,7,'system.service.AlarmReceiver'),(52,7,'system.service.AutorunReceiver'),(53,7,'system.service.SmsReciver'),(54,5,'com.ku6.android.videobrowser.VideodetailView$6'),(55,6,'b'),(56,5,'com.ku6.android.videobrowser.RankList$5'),(57,5,'com.ku6.android.videobrowser.SelectList$3'),(58,5,'com.ku6.android.videobrowser.Iku6HomeList$2'),(59,5,'com.ku6.android.videobrowser.Search_Activity$5'),(60,7,'system.service.MainApplication'),(61,5,'com.ku6.android.videobrowser.About_Activity$1'),(62,5,'com.ku6.android.videobrowser.Base_Activity'),(63,5,'com.ku6.android.videobrowser.Base_Activity$7'),(64,5,'com.ku6.android.videobrowser.ChannelListViewList$3'),(65,5,'com.ku6.android.videobrowser.CollectionHistory_Activity$1'),(66,5,'com.ku6.android.videobrowser.Iku6HomeList$1'),(67,5,'com.ku6.android.videobrowser.SplashActivity$1'),(68,5,'com.ku6.android.videobrowser.Search_Result_Activity$4'),(69,5,'com.ku6.android.videobrowser.Base_Activity$6'),(70,5,'com.ku6.android.videobrowser.Base_Activity$9'),(71,5,'com.ku6.android.videobrowser.RankList$6'),(72,5,'com.ku6.android.videobrowser.VideodetailView$2'),(73,5,'com.ku6.android.videobrowser.Base_Activity$8'),(74,5,'com.ku6.android.videobrowser.Download_Activity$1'),(75,5,'com.ku6.android.videobrowser.Search_Result_Activity$3'),(76,5,'com.ku6.android.videobrowser.Base_Activity$5'),(77,5,'com.ku6.android.videobrowser.ChannelListViewList$2'),(78,5,'com.ku6.android.videobrowser.VideodetailView$8'),(79,5,'com.ku6.android.videobrowser.CollectionHistory_Activity$6');
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,7,'notifID'),(2,19,'referrer'),(3,15,'notifID'),(4,10,'BackLightValue'),(5,9,'notifID'),(6,17,'referrer'),(7,16,'referrer'),(8,25,'relatedurl'),(9,25,'Pic'),(10,35,'text'),(11,35,'number'),(12,34,'html'),(13,35,'key'),(14,25,'Name'),(15,35,'id'),(16,38,'pdus'),(17,27,'keyword'),(18,25,'Playerurl'),(19,25,'Count'),(20,24,'categoryid'),(21,25,'Length'),(22,25,'descriptionurl'),(23,29,'type'),(24,27,'searchtype'),(25,25,'videoid'),(26,25,'ChannelName');
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,5,'a',0,NULL,NULL),(5,4,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'s',1,NULL,NULL),(8,8,'s',1,NULL,NULL),(9,9,'s',1,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'r',1,NULL,NULL),(12,12,'r',1,NULL,NULL),(13,13,'r',1,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'s',1,NULL,NULL),(16,16,'r',1,NULL,NULL),(17,17,'r',1,NULL,NULL),(18,18,'r',1,NULL,NULL),(19,19,'r',1,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,40,'a',1,NULL,NULL),(33,48,'a',1,NULL,NULL),(34,49,'a',0,NULL,NULL),(35,50,'s',0,NULL,NULL),(36,51,'r',0,NULL,NULL),(37,52,'r',1,NULL,NULL),(38,53,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,11),(2,2,6),(3,3,4),(4,4,10),(5,5,1),(6,6,6),(7,7,10),(8,8,4),(9,9,2),(10,10,14),(11,11,4),(12,12,6),(13,13,14),(14,14,4),(15,15,6),(16,16,18),(17,17,13),(18,18,1),(19,19,14),(20,20,2),(21,21,14),(22,22,26),(23,23,23),(24,24,25),(25,25,32),(26,26,23),(27,27,32),(28,28,24),(29,29,32),(30,30,32),(31,31,32),(32,32,32),(33,33,22),(34,34,38),(35,35,26),(36,36,33),(37,37,30),(38,38,36),(39,39,30),(40,39,24),(41,39,25),(42,40,22),(43,40,21),(44,40,25),(45,40,26),(46,40,23),(47,40,24),(48,40,29),(49,40,30),(50,40,27),(51,40,28),(52,41,21),(53,42,22),(54,43,29),(55,44,22),(56,45,20),(57,46,28),(58,47,25),(59,47,24),(60,47,30),(61,48,27),(62,49,31),(63,50,21),(64,51,22),(65,51,23),(66,51,24),(67,51,25),(68,51,21),(69,51,30),(70,51,26),(71,51,27),(72,51,28),(73,51,29),(74,52,30),(75,53,21),(76,53,22),(77,53,23),(78,53,24),(79,53,25),(80,53,26),(81,53,27),(82,53,28),(83,53,29),(84,53,30),(85,54,23),(86,55,25),(87,56,21),(88,56,22),(89,56,30),(90,56,29),(91,56,28),(92,56,27),(93,56,26),(94,56,25),(95,56,24),(96,56,23),(97,57,25),(98,57,24),(99,57,30),(100,58,28),(101,59,27),(102,60,21),(103,61,30),(104,61,28),(105,61,29),(106,61,25),(107,61,24),(108,61,27),(109,61,26),(110,61,21),(111,61,23),(112,61,22),(113,62,27),(114,63,20),(115,64,21),(116,65,29),(117,66,25),(118,67,27),(119,68,26),(120,69,20),(121,70,30),(122,70,25),(123,70,24),(124,71,29),(125,72,25),(126,73,24),(127,73,25),(128,73,30);
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
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,11,'<com.and.snd.StartAtBootServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(2,32,'<com.typ3studios.whoopee.AdditionalApps$5: void onClick(android.view.View)>',6,'a',NULL),(3,33,'<com.typ3studios.airhorn.AdditionalApps$3: void onClick(android.view.View)>',6,'a',NULL),(4,10,'<com.typ3studios.flashlight.Flashlight: void onCreate(android.os.Bundle)>',6,'s',NULL),(5,1,'<com.typ3studios.airhorn.AirHorn: void onCreate(android.os.Bundle)>',6,'s',NULL),(6,34,'<com.typ3studios.whoopee.AdditionalApps$2: void onClick(android.view.View)>',6,'a',NULL),(7,35,'<com.typ3studios.flashlight.Flashlight$3: void onClick(android.view.View)>',6,'a',NULL),(8,36,'<com.typ3studios.airhorn.AdditionalApps$4: void onClick(android.view.View)>',6,'a',NULL),(9,2,'<com.typ3studios.whoopee.WhoopeeCushion: void onCreate(android.os.Bundle)>',6,'s',NULL),(10,37,'<com.typ3studios.flashlight.AdditionalApps$4: void onClick(android.view.View)>',6,'a',NULL),(11,38,'<com.typ3studios.airhorn.AdditionalApps$5: void onClick(android.view.View)>',6,'a',NULL),(12,39,'<com.typ3studios.whoopee.AdditionalApps$4: void onClick(android.view.View)>',6,'a',NULL),(13,41,'<com.typ3studios.flashlight.AdditionalApps$3: void onClick(android.view.View)>',6,'a',NULL),(14,42,'<com.typ3studios.airhorn.AdditionalApps$2: void onClick(android.view.View)>',6,'a',NULL),(15,43,'<com.typ3studios.whoopee.AdditionalApps$3: void onClick(android.view.View)>',6,'a',NULL),(16,18,'<com.and.snd.StartAtBootServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(17,13,'<com.and.snd.StartAtBootServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(18,44,'<com.typ3studios.airhorn.AirHorn$2: void onClick(android.view.View)>',6,'a',NULL),(19,45,'<com.typ3studios.flashlight.AdditionalApps$2: void onClick(android.view.View)>',6,'a',NULL),(20,46,'<com.typ3studios.whoopee.WhoopeeCushion$3: void onClick(android.view.View)>',6,'a',NULL),(21,47,'<com.typ3studios.flashlight.AdditionalApps$5: void onClick(android.view.View)>',6,'a',NULL),(22,26,'<com.ku6.android.videobrowser.Search_Activity: boolean onKeyDown(int,android.view.KeyEvent)>',8,'a',NULL),(23,23,'<com.ku6.android.videobrowser.RankList: boolean onKeyDown(int,android.view.KeyEvent)>',8,'a',NULL),(24,54,'<com.ku6.android.videobrowser.VideodetailView$6: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',72,'a',NULL),(25,55,'<b: a d(android.content.Context)>',3,'p',NULL),(26,56,'<com.ku6.android.videobrowser.RankList$5: void onClick(android.view.View)>',8,'a',NULL),(27,55,'<b: boolean a(android.content.Context,java.lang.String)>',131,'p',NULL),(28,57,'<com.ku6.android.videobrowser.SelectList$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',63,'a',NULL),(29,55,'<b: java.util.List e(android.content.Context)>',3,'p',NULL),(30,55,'<b: boolean a(android.content.Context,java.lang.String)>',134,'p',0),(31,55,'<b: void a(android.content.Context,a)>',31,'p',NULL),(32,55,'<b: java.util.List f(android.content.Context)>',5,'p',NULL),(33,58,'<com.ku6.android.videobrowser.Iku6HomeList$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(34,50,'<system.service.MainService: void start(android.content.Context,android.content.Intent,java.lang.String,java.lang.String,java.lang.String,long)>',16,'s',NULL),(35,59,'<com.ku6.android.videobrowser.Search_Activity$5: void onClick(android.view.View)>',8,'a',NULL),(36,60,'<system.service.MainApplication: void installApk(android.content.Context,java.lang.String)>',8,'a',NULL),(37,61,'<com.ku6.android.videobrowser.About_Activity$1: void onClick(android.view.View)>',9,'a',NULL),(38,50,'<system.service.MainService: void start(android.content.Context,android.content.Intent,java.lang.String)>',9,'s',NULL),(39,62,'<com.ku6.android.videobrowser.Base_Activity: void backActivity()>',17,'a',NULL),(40,63,'<com.ku6.android.videobrowser.Base_Activity$7: void onClick(android.view.View)>',11,'a',NULL),(41,64,'<com.ku6.android.videobrowser.ChannelListViewList$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',102,'a',NULL),(42,22,'<com.ku6.android.videobrowser.Iku6HomeList: boolean onKeyDown(int,android.view.KeyEvent)>',8,'a',NULL),(43,65,'<com.ku6.android.videobrowser.CollectionHistory_Activity$1: void onClick(android.view.View)>',6,'a',NULL),(44,66,'<com.ku6.android.videobrowser.Iku6HomeList$1: void onClick(android.view.View)>',8,'a',NULL),(45,67,'<com.ku6.android.videobrowser.SplashActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(46,28,'<com.ku6.android.videobrowser.Download_Activity: boolean onKeyDown(int,android.view.KeyEvent)>',6,'a',NULL),(47,62,'<com.ku6.android.videobrowser.Base_Activity: void backActivity()>',7,'a',NULL),(48,68,'<com.ku6.android.videobrowser.Search_Result_Activity$4: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',60,'a',NULL),(49,31,'<com.ku6.android.videobrowser.SettingList: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',12,'a',NULL),(50,21,'<com.ku6.android.videobrowser.ChannelListViewList: boolean onKeyDown(int,android.view.KeyEvent)>',8,'a',NULL),(51,69,'<com.ku6.android.videobrowser.Base_Activity$6: void onClick(android.view.View)>',9,'a',NULL),(52,30,'<com.ku6.android.videobrowser.About_Activity: boolean onKeyDown(int,android.view.KeyEvent)>',8,'a',NULL),(53,70,'<com.ku6.android.videobrowser.Base_Activity$9: void onClick(android.view.View)>',11,'a',NULL),(54,71,'<com.ku6.android.videobrowser.RankList$6: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',60,'a',NULL),(55,72,'<com.ku6.android.videobrowser.VideodetailView$2: void onClick(android.view.View)>',10,'a',NULL),(56,73,'<com.ku6.android.videobrowser.Base_Activity$8: void onClick(android.view.View)>',11,'a',NULL),(57,62,'<com.ku6.android.videobrowser.Base_Activity: void backActivity()>',25,'a',NULL),(58,74,'<com.ku6.android.videobrowser.Download_Activity$1: void onClick(android.view.View)>',6,'a',NULL),(59,75,'<com.ku6.android.videobrowser.Search_Result_Activity$3: void onClick(android.view.View)>',6,'a',NULL),(60,64,'<com.ku6.android.videobrowser.ChannelListViewList$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',25,'a',NULL),(61,76,'<com.ku6.android.videobrowser.Base_Activity$5: void onClick(android.view.View)>',11,'a',NULL),(62,27,'<com.ku6.android.videobrowser.Search_Result_Activity: boolean onKeyDown(int,android.view.KeyEvent)>',6,'a',NULL),(63,20,'<com.ku6.android.videobrowser.SplashActivity: void onResume()>',9,'a',NULL),(64,77,'<com.ku6.android.videobrowser.ChannelListViewList$2: void onClick(android.view.View)>',8,'a',NULL),(65,29,'<com.ku6.android.videobrowser.CollectionHistory_Activity: boolean onKeyDown(int,android.view.KeyEvent)>',6,'a',NULL),(66,78,'<com.ku6.android.videobrowser.VideodetailView$8: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(67,27,'<com.ku6.android.videobrowser.Search_Result_Activity: void setSearchKeyword(java.lang.String)>',26,'a',NULL),(68,26,'<com.ku6.android.videobrowser.Search_Activity: void search(java.lang.String)>',10,'a',NULL),(69,20,'<com.ku6.android.videobrowser.SplashActivity: void openFile(java.io.File)>',8,'a',NULL),(70,62,'<com.ku6.android.videobrowser.Base_Activity: void backActivity()>',13,'a',NULL),(71,79,'<com.ku6.android.videobrowser.CollectionHistory_Activity$6: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',60,'a',NULL),(72,78,'<com.ku6.android.videobrowser.VideodetailView$8: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(73,62,'<com.ku6.android.videobrowser.Base_Activity: void backActivity()>',21,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,2),(2,2,10),(3,3,10),(4,6,10),(5,8,10),(6,10,10),(7,11,10),(8,12,10),(9,13,10),(10,14,10),(11,15,10),(12,16,7),(13,17,4),(14,19,10),(15,21,10),(16,24,10),(17,26,10),(18,27,10),(19,29,10),(20,31,10),(21,32,10),(22,34,10),(23,40,10),(24,47,10),(25,48,9),(26,53,10),(27,54,10),(28,59,10),(29,65,14),(30,66,10),(31,67,10),(32,68,10),(33,70,10),(34,71,10);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,4,'com/and/snd/FlashlightLEDService'),(2,5,'com/and/snd/AirHornSoundService'),(3,7,'com/typ3studios/flashlight/AdditionalApps'),(4,9,'com/and/snd/WhoopeeSoundService'),(5,18,'com/typ3studios/airhorn/AdditionalApps'),(6,20,'com/typ3studios/whoopee/AdditionalApps'),(7,22,'com/ku6/android/videobrowser/SelectList'),(8,23,'com/ku6/android/videobrowser/SelectList'),(9,24,'com/ku6/android/videobrowser/VideodetailView'),(10,25,'com/ku6/android/videobrowser/SelectList'),(11,26,'com/ku6/android/videobrowser/VideodetailView'),(12,27,'com/ku6/android/videobrowser/About_Activity'),(13,28,'system/service/MainService'),(14,31,'com/ku6/android/videobrowser/Download_Activity'),(15,30,'system/service/MainService'),(16,32,'com/ku6/android/videobrowser/CollectionHistory_Activity'),(17,33,'com/ku6/android/videobrowser/SelectList'),(18,35,'com/ku6/android/videobrowser/Search_Activity'),(19,36,'system/service/MainService'),(20,38,'com/ku6/android/videobrowser/RankList'),(21,37,'system/service/MainService'),(22,39,'com/ku6/android/videobrowser/RankList'),(23,40,'com/ku6/android/videobrowser/VideodetailView'),(24,41,'com/ku6/android/videobrowser/SelectList'),(25,42,'com/ku6/android/videobrowser/Iku6HomeList'),(26,43,'com/ku6/android/videobrowser/SelectList'),(27,44,'com/ku6/android/videobrowser/SelectList'),(28,45,'com/ku6/android/videobrowser/Iku6HomeList'),(29,46,'com/ku6/android/videobrowser/SelectList'),(30,47,'com/ku6/android/videobrowser/VideodetailView'),(31,49,'com/ku6/android/videobrowser/SelectList'),(32,50,'com/ku6/android/videobrowser/ChannelListViewList'),(33,51,'com/ku6/android/videobrowser/Search_Activity'),(34,52,'com/ku6/android/videobrowser/Iku6HomeList'),(35,53,'com/ku6/android/videobrowser/VideodetailView'),(36,55,'com/ku6/android/videobrowser/Search_Activity'),(37,56,'com/ku6/android/videobrowser/Iku6HomeList'),(38,57,'com/ku6/android/videobrowser/Iku6HomeList'),(39,58,'com/ku6/android/videobrowser/Search_Activity'),(40,59,'com/ku6/android/videobrowser/SelectList'),(41,60,'com/ku6/android/videobrowser/SelectList'),(42,61,'com/ku6/android/videobrowser/Search_Activity'),(43,62,'com/ku6/android/videobrowser/SelectList'),(44,63,'com/ku6/android/videobrowser/SelectList'),(45,64,'com/ku6/android/videobrowser/Iku6HomeList'),(46,66,'com/ku6/android/videobrowser/Search_Result_Activity'),(47,67,'com/ku6/android/videobrowser/Search_Result_Activity'),(48,69,'com/ku6/android/videobrowser/ChannelListViewList'),(49,70,'com/ku6/android/videobrowser/VideodetailView'),(50,72,'com/ku6/android/videobrowser/Search_Result_Activity');
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
INSERT INTO `IData` VALUES (1,2,1),(2,3,2),(3,6,3),(4,8,4),(5,10,5),(6,11,6),(7,12,7),(8,13,8),(9,14,9),(10,15,10),(11,19,11),(12,21,12),(13,34,18),(14,54,19),(15,65,20),(16,68,21);
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
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,24,'Name'),(2,24,'descriptionurl'),(3,24,'Count'),(4,24,'Length'),(5,24,'relatedurl'),(6,24,'ChannelName'),(7,24,'type'),(8,24,'Pic'),(9,24,'videoid'),(10,24,'Playerurl'),(11,26,'Name'),(12,26,'descriptionurl'),(13,26,'Count'),(14,26,'Length'),(15,26,'relatedurl'),(16,26,'ChannelName'),(17,26,'type'),(18,26,'Pic'),(19,26,'videoid'),(20,26,'Playerurl'),(21,28,'id'),(22,27,'type'),(23,28,'text'),(24,27,'activity_type'),(25,28,'number'),(26,28,'key'),(27,30,'id'),(28,30,'text'),(29,30,'(.*)'),(30,30,'number'),(31,30,'key'),(32,32,'type'),(33,36,'(.*)'),(34,36,'key'),(35,37,'key'),(36,40,'Name'),(37,40,'descriptionurl'),(38,40,'Count'),(39,40,'Length'),(40,40,'relatedurl'),(41,40,'ChannelName'),(42,40,'type'),(43,40,'Pic'),(44,40,'videoid'),(45,40,'Playerurl'),(46,47,'Name'),(47,47,'descriptionurl'),(48,47,'Count'),(49,47,'Length'),(50,47,'relatedurl'),(51,47,'ChannelName'),(52,47,'type'),(53,47,'Pic'),(54,47,'videoid'),(55,47,'Playerurl'),(56,53,'Name'),(57,53,'descriptionurl'),(58,53,'Count'),(59,53,'Length'),(60,53,'relatedurl'),(61,53,'ChannelName'),(62,53,'type'),(63,53,'Pic'),(64,53,'videoid'),(65,53,'Playerurl'),(66,59,'categoryid'),(67,59,'type'),(68,65,'android.intent.extra.TEXT'),(69,66,'searchtype'),(70,66,'keyword'),(71,66,'type'),(72,67,'searchtype'),(73,67,'keyword'),(74,67,'type'),(75,70,'Name'),(76,70,'descriptionurl'),(77,70,'Count'),(78,70,'Length'),(79,70,'relatedurl'),(80,70,'ChannelName'),(81,70,'type'),(82,70,'Pic'),(83,70,'videoid'),(84,70,'Playerurl'),(85,71,'sms_body');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,2),(5,5,3),(6,6,1),(7,7,4),(8,8,5),(9,9,5),(10,10,7),(11,11,8),(12,12,8),(13,13,5),(14,14,8),(15,15,1),(16,16,9),(17,17,1),(18,19,11),(19,19,12),(20,19,5),(21,20,13);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,6,1),(5,8,2),(6,9,2),(7,13,2),(8,15,1),(9,17,1),(10,18,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,34,'application','vnd.android.package-archive'),(2,54,'video','3gp'),(3,68,'application','vnd.android.package-archive'),(4,71,'vnd.android-dir','mms-sms');
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,4,'com.typ3studios.flashlight'),(2,5,'com.typ3studios.airhorn'),(3,7,'com.typ3studios.flashlight'),(4,9,'com.typ3studios.whoopee'),(5,18,'com.typ3studios.airhorn'),(6,20,'com.typ3studios.whoopee'),(7,22,'com.ku6.android.videobrowser'),(8,23,'com.ku6.android.videobrowser'),(9,24,'com.ku6.android.videobrowser'),(10,25,'com.ku6.android.videobrowser'),(11,26,'com.ku6.android.videobrowser'),(12,27,'com.ku6.android.videobrowser'),(13,28,'system.service'),(14,31,'com.ku6.android.videobrowser'),(15,30,'system.service'),(16,32,'com.ku6.android.videobrowser'),(17,33,'com.ku6.android.videobrowser'),(18,35,'com.ku6.android.videobrowser'),(19,36,'system.service'),(20,38,'com.ku6.android.videobrowser'),(21,37,'system.service'),(22,39,'com.ku6.android.videobrowser'),(23,40,'com.ku6.android.videobrowser'),(24,41,'com.ku6.android.videobrowser'),(25,42,'com.ku6.android.videobrowser'),(26,43,'com.ku6.android.videobrowser'),(27,44,'com.ku6.android.videobrowser'),(28,45,'com.ku6.android.videobrowser'),(29,46,'com.ku6.android.videobrowser'),(30,47,'com.ku6.android.videobrowser'),(31,49,'com.ku6.android.videobrowser'),(32,50,'com.ku6.android.videobrowser'),(33,51,'com.ku6.android.videobrowser'),(34,52,'com.ku6.android.videobrowser'),(35,53,'com.ku6.android.videobrowser'),(36,55,'com.ku6.android.videobrowser'),(37,56,'com.ku6.android.videobrowser'),(38,57,'com.ku6.android.videobrowser'),(39,58,'com.ku6.android.videobrowser'),(40,59,'com.ku6.android.videobrowser'),(41,60,'com.ku6.android.videobrowser'),(42,61,'com.ku6.android.videobrowser'),(43,62,'com.ku6.android.videobrowser'),(44,63,'com.ku6.android.videobrowser'),(45,64,'com.ku6.android.videobrowser'),(46,66,'com.ku6.android.videobrowser'),(47,67,'com.ku6.android.videobrowser'),(48,69,'com.ku6.android.videobrowser'),(49,70,'com.ku6.android.videobrowser'),(50,72,'com.ku6.android.videobrowser');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,3,0),(3,2,0),(4,7,0),(5,8,0),(6,10,0),(7,9,0),(8,11,0),(9,13,0),(10,15,0),(11,17,0),(12,16,0),(13,18,0),(14,19,0),(15,20,0),(16,31,0),(17,32,0),(18,33,0),(19,37,0),(20,38,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,1,0),(3,3,1,0),(4,4,0,0),(5,5,0,0),(6,6,1,0),(7,7,0,0),(8,8,1,0),(9,9,0,0),(10,10,1,0),(11,11,1,0),(12,12,1,0),(13,13,1,0),(14,14,1,0),(15,15,1,0),(16,16,1,0),(17,17,1,0),(18,18,0,0),(19,19,1,0),(20,20,0,0),(21,21,1,0),(22,22,0,0),(23,23,0,0),(24,24,0,0),(25,26,0,0),(26,28,0,0),(27,33,0,0),(28,34,0,0),(29,33,1,0),(30,34,0,0),(31,33,0,0),(32,33,0,0),(33,35,0,0),(34,36,1,0),(35,37,0,0),(36,38,0,0),(37,38,0,0),(38,39,0,0),(39,40,0,0),(40,41,0,0),(41,42,0,0),(42,43,0,0),(43,44,0,0),(44,45,0,0),(45,46,0,0),(46,47,0,0),(47,48,0,0),(48,49,1,0),(49,50,0,0),(50,51,0,0),(51,52,0,0),(52,53,0,0),(53,54,0,0),(54,55,1,0),(55,56,0,0),(56,57,0,0),(57,58,0,0),(58,59,0,0),(59,60,0,0),(60,61,0,0),(61,62,0,0),(62,63,0,0),(63,64,0,0),(64,65,0,0),(65,66,1,0),(66,67,0,0),(67,68,0,0),(68,69,1,0),(69,70,0,0),(70,71,0,0),(71,72,1,0),(72,73,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,1,32,2,NULL),(2,62,24,2,NULL),(3,1,33,2,NULL),(4,17,32,2,NULL),(5,1,20,2,NULL),(6,17,33,2,NULL),(7,16,32,2,NULL),(8,16,33,2,NULL),(9,17,20,2,NULL),(10,48,32,2,NULL),(11,48,33,2,NULL),(12,16,20,2,NULL),(13,48,20,2,NULL),(14,28,35,2,NULL),(15,49,24,2,NULL),(16,30,35,2,NULL),(17,41,24,2,NULL),(18,36,35,2,NULL),(19,23,24,2,NULL),(20,37,35,2,NULL),(21,22,24,2,NULL),(22,1,37,2,NULL),(23,67,27,2,NULL),(24,17,37,2,NULL),(25,61,26,2,NULL),(26,16,37,2,NULL),(27,66,27,2,NULL),(28,48,37,2,NULL),(29,45,22,2,NULL),(30,1,38,2,NULL),(31,64,22,2,NULL),(32,17,38,2,NULL),(33,51,26,2,NULL),(34,16,38,2,NULL),(35,48,1,2,NULL),(36,48,38,2,NULL),(37,48,7,2,NULL),(38,48,11,2,NULL),(39,1,31,2,NULL),(40,48,16,2,NULL),(41,48,2,2,NULL),(42,48,9,2,NULL),(43,48,13,2,NULL),(44,17,31,2,NULL),(45,48,17,2,NULL),(46,48,3,2,NULL),(47,48,8,2,NULL),(48,48,10,2,NULL),(49,48,15,2,NULL),(50,48,18,2,NULL),(51,16,31,2,NULL),(52,48,19,2,NULL),(53,9,9,2,NULL),(54,1,2,2,NULL),(55,17,2,2,NULL),(56,16,2,2,NULL),(57,1,9,2,NULL),(58,17,9,2,NULL),(59,16,9,2,NULL),(60,17,1,2,NULL),(61,17,7,2,NULL),(62,17,11,2,NULL),(63,1,13,2,NULL),(64,17,16,2,NULL),(65,17,17,2,NULL),(66,17,3,2,NULL),(67,17,8,2,NULL),(68,17,10,2,NULL),(69,17,15,2,NULL),(70,17,18,2,NULL),(71,16,13,2,NULL),(72,17,19,2,NULL),(73,1,17,2,NULL),(74,16,17,2,NULL),(75,1,3,2,NULL),(76,16,3,2,NULL),(77,1,8,2,NULL),(78,16,8,2,NULL),(79,5,7,2,NULL),(80,4,15,2,NULL),(81,1,1,2,NULL),(82,1,10,2,NULL),(83,16,1,2,NULL),(84,16,10,2,NULL),(85,1,7,2,NULL),(86,1,15,2,NULL),(87,16,7,2,NULL),(88,16,15,2,NULL),(89,1,16,2,NULL),(90,16,11,2,NULL),(91,1,18,2,NULL),(92,16,16,2,NULL),(93,1,19,2,NULL),(94,16,19,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (13,'android.permission.ACCESS_COARSE_LOCATION'),(8,'android.permission.ACCESS_NETWORK_STATE'),(12,'android.permission.ACCESS_WIFI_STATE'),(5,'android.permission.CAMERA'),(16,'android.permission.CHANGE_NETWORK_STATE'),(19,'android.permission.DELETE_PACKAGES'),(7,'android.permission.FLASHLIGHT'),(4,'android.permission.GET_ACCOUNTS'),(18,'android.permission.INSTALL_PACKAGES'),(3,'android.permission.INTERNET'),(14,'android.permission.PERMISSION_NAME'),(21,'android.permission.READ_CONTACTS'),(1,'android.permission.READ_PHONE_STATE'),(2,'android.permission.RECEIVE_BOOT_COMPLETED'),(20,'android.permission.RECEIVE_SMS'),(9,'android.permission.SEND_SMS'),(15,'android.permission.VIBRATE'),(17,'android.permission.WAKE_LOCK'),(11,'android.permission.WRITE_APN_SETTINGS'),(10,'android.permission.WRITE_EXTERNAL_STORAGE'),(6,'android.permission.WRITE_SETTINGS');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'http://www.pixeltrack66.com/mt/w264y234c4z2y2/&subid1=inapp',NULL,NULL,NULL),(2,NULL,NULL,'http://www.pixeltrack66.com/mt/w264y234f4z2y2/&subid1=inapp',NULL,NULL,NULL),(3,NULL,NULL,'http://www.pixeltrack66.com/mt/w264y234e4z2y2/&subid1=inapp',NULL,NULL,NULL),(4,NULL,NULL,'http://www.pixeltrack66.com/mt/w264y234c4z2y2/&subid1=inapp',NULL,NULL,NULL),(5,NULL,NULL,'http://www.pixeltrack66.com/mt/w264y234c4z2y2/&subid1=inapp',NULL,NULL,NULL),(6,NULL,NULL,'http://www.pixeltrack66.com/mt/w264y234d4z2y2/&subid1=inapp',NULL,NULL,NULL),(7,NULL,NULL,'http://www.pixeltrack66.com/mt/w264x2c484z2y2/&subid1=inapp',NULL,NULL,NULL),(8,NULL,NULL,'http://www.pixeltrack66.com/mt/w264x2c484z2y2/&subid1=inapp',NULL,NULL,NULL),(9,NULL,NULL,'http://www.pixeltrack66.com/mt/w264y234e4z2y2/&subid1=inapp',NULL,NULL,NULL),(10,NULL,NULL,'http://www.pixeltrack66.com/mt/w264y234f4z2y2/&subid1=inapp',NULL,NULL,NULL),(11,NULL,NULL,'http://www.pixeltrack66.com/mt/w264y234e4z2y2/&subid1=inapp',NULL,NULL,NULL),(12,NULL,NULL,'http://www.pixeltrack66.com/mt/w264y234d4z2y2/&subid1=inapp',NULL,NULL,NULL),(13,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(14,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(15,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(16,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(17,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'mailto:',NULL,NULL,NULL),(21,NULL,NULL,'file://(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,25,13),(2,27,14),(3,29,15),(4,31,16),(5,32,17);
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,2,1),(3,1,2),(4,3,1),(5,2,2),(6,1,3),(7,3,2),(8,2,3),(9,1,4),(10,3,3),(11,2,4),(12,3,4),(13,4,1),(14,4,2),(15,4,3),(16,4,4),(17,4,5),(18,4,6),(19,4,7),(20,5,3),(21,5,8),(22,6,17),(23,6,16),(24,6,1),(25,6,3),(26,6,8),(27,6,9),(28,6,10),(29,6,11),(30,6,12),(31,6,13),(32,6,14),(33,6,15),(34,7,1),(35,7,19),(36,7,2),(37,7,18),(38,7,3),(39,7,21),(40,7,20),(41,7,8),(42,7,9),(43,7,10);
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

-- Dump completed on 2015-10-12  3:31:43
