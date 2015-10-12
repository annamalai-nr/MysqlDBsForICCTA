-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_75
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (20,'(.*)'),(14,'android.intent.action.BATTERY_CHANGED'),(4,'android.intent.action.BOOT_COMPLETED'),(12,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(6,'android.intent.action.NEW_OUTGOING_CALL'),(7,'android.intent.action.PHONE_STATE'),(11,'android.intent.action.SENDTO'),(13,'android.intent.action.VIEW'),(3,'android.provider.Telephony.SMS_RECEIVED'),(9,'arui.alarm.action'),(10,'com.airpush.android.PushServiceStart38834'),(5,'com.cooshare.www.httpconn.core'),(2,'cooshare.zeno.tinygame.lovetrap.core'),(16,'millennialmedia.action.ACTION_FETCH_FAILED'),(18,'millennialmedia.action.ACTION_FETCH_FINISHED_CACHING'),(19,'millennialmedia.action.ACTION_FETCH_STARTED_CACHING'),(15,'millennialmedia.action.ACTION_GETAD_FAILED'),(17,'millennialmedia.action.ACTION_INTENT_STARTED'),(8,'net.mujee.www.core');
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
INSERT INTO `Applications` VALUES (1,'cooshare.zeno.tinygame.lovetrap',1),(2,'com.cooshare.www.httpconn',7),(3,'net.mujee.www',9),(4,'com.anxin360.www',20),(5,'com.edu.farmanimals',1),(6,'com.nova.sm',3);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.HOME'),(1,'android.intent.category.LAUNCHER'),(3,'millennialmedia.category.CATEGORY_SDK');
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
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'cooshare.zeno.tinygame.lovetrap.welcome'),(2,1,'cooshare.zeno.tinygame.lovetrap.ZChess'),(3,1,'cooshare.zeno.tinygame.lovetrap.core'),(4,1,'cooshare.zeno.tinygame.lovetrap.SMSSrv'),(5,1,'cooshare.zeno.tinygame.lovetrap.AutoSrv'),(6,2,'com.cooshare.www.httpconn.Home'),(7,2,'com.cooshare.www.httpconn.HomeLogin'),(8,2,'com.cooshare.www.httpconn.BoundPhone'),(9,2,'com.cooshare.www.httpconn.Index'),(10,2,'com.cooshare.www.httpconn.MyLocation'),(11,2,'com.cooshare.www.httpconn.SendSMS'),(12,2,'com.cooshare.www.httpconn.ClickableListItemActivity'),(13,2,'com.cooshare.www.httpconn.LifeSearch'),(14,2,'com.cooshare.www.httpconn.Map'),(15,3,'net.mujee.www.Home'),(16,2,'com.cooshare.www.httpconn.LifeSearchN'),(17,2,'com.cooshare.www.httpconn.ClickableListItemActivityN'),(18,3,'net.mujee.www.HomeLogin'),(19,2,'com.cooshare.www.httpconn.Help'),(20,3,'net.mujee.www.BoundPhone'),(21,2,'com.cooshare.www.httpconn.AddFriend'),(22,3,'net.mujee.www.Index'),(23,2,'com.cooshare.www.httpconn.ClickableListItemActivityF'),(24,3,'net.mujee.www.MyLocation'),(25,2,'com.cooshare.www.httpconn.ClickableListItemActivityP'),(26,3,'net.mujee.www.SendSMS'),(27,2,'com.cooshare.www.httpconn.PSettings'),(28,3,'net.mujee.www.ClickableListItemActivity'),(29,2,'com.cooshare.www.httpconn.ACDetail'),(30,3,'net.mujee.www.LifeSearch'),(31,2,'com.cooshare.www.httpconn.SNDetail'),(32,3,'net.mujee.www.Map'),(33,2,'com.cooshare.www.httpconn.PSMFavorite'),(34,3,'net.mujee.www.LifeSearchN'),(35,2,'com.cooshare.www.httpconn.NotifyBox'),(36,3,'net.mujee.www.ClickableListItemActivityN'),(37,2,'com.cooshare.www.httpconn.ShopDetails'),(38,3,'net.mujee.www.Help'),(39,2,'com.cooshare.www.httpconn.ClickableListItemActivityChecked'),(40,3,'net.mujee.www.AddFriend'),(41,2,'com.cooshare.www.httpconn.ClickableListItemActivityNews'),(42,3,'net.mujee.www.ClickableListItemActivityF'),(43,2,'com.cooshare.www.httpconn.ClickableListItemActivityTalk'),(44,3,'net.mujee.www.ClickableListItemActivityP'),(45,2,'com.cooshare.www.httpconn.ClickableListItemActivityXBox'),(46,3,'net.mujee.www.PSettings'),(47,2,'com.cooshare.www.httpconn.CreateTalk'),(48,3,'net.mujee.www.ACDetail'),(49,2,'com.cooshare.www.httpconn.NewsDetails'),(50,3,'net.mujee.www.SNDetail'),(51,2,'com.cooshare.www.httpconn.TalkDetail'),(52,3,'net.mujee.www.PSMFavorite'),(53,4,'com.anxin360.www.HomeLogin'),(54,2,'com.cooshare.www.httpconn.XpBoxTip'),(55,3,'net.mujee.www.NotifyBox'),(56,2,'com.cooshare.www.httpconn.NetworkTS'),(57,3,'net.mujee.www.ShopDetails'),(58,2,'com.cooshare.www.httpconn.ClickableListItemActivityFBN'),(59,4,'com.anxin360.www.Home'),(60,3,'net.mujee.www.ClickableListItemActivityChecked'),(61,2,'com.cooshare.www.httpconn.FindUserByName'),(62,4,'com.anxin360.www.BoundPhone'),(63,3,'net.mujee.www.ClickableListItemActivityNews'),(64,2,'com.cooshare.www.httpconn.core'),(65,4,'com.anxin360.www.Index'),(66,3,'net.mujee.www.ClickableListItemActivityTalk'),(67,4,'com.anxin360.www.MyLocation'),(68,3,'net.mujee.www.ClickableListItemActivityXBox'),(69,4,'com.anxin360.www.SendSMS'),(70,2,'com.cooshare.www.httpconn.SMSSrv'),(71,3,'net.mujee.www.CreateTalk'),(72,4,'com.anxin360.www.ClickableListItemActivity'),(73,3,'net.mujee.www.NewsDetails'),(74,4,'com.anxin360.www.LifeSearch'),(75,2,'com.cooshare.www.httpconn.TeleSrv'),(76,3,'net.mujee.www.TalkDetail'),(77,4,'com.anxin360.www.Map'),(78,3,'net.mujee.www.XpBoxTip'),(79,4,'com.anxin360.www.LifeSearchN'),(80,3,'net.mujee.www.NetworkTS'),(81,2,'com.cooshare.www.httpconn.AutoSrv'),(82,4,'com.anxin360.www.ClickableListItemActivityN'),(83,3,'net.mujee.www.ClickableListItemActivityFBN'),(84,4,'com.anxin360.www.Help'),(85,3,'net.mujee.www.FindUserByName'),(86,4,'com.anxin360.www.AddFriend'),(87,3,'net.mujee.www.core'),(88,4,'com.anxin360.www.ClickableListItemActivityF'),(89,4,'com.anxin360.www.ClickableListItemActivityP'),(90,3,'net.mujee.www.SMSSrv'),(91,4,'com.anxin360.www.PSettings'),(92,4,'com.anxin360.www.ACDetail'),(93,3,'net.mujee.www.TeleSrv'),(94,4,'com.anxin360.www.SNDetail'),(95,4,'com.anxin360.www.PSMFavorite'),(96,3,'net.mujee.www.AutoSrv'),(97,4,'com.anxin360.www.NotifyBox'),(98,4,'com.anxin360.www.ShopDetails'),(99,4,'com.anxin360.www.ClickableListItemActivityChecked'),(100,4,'com.anxin360.www.ClickableListItemActivityNews'),(101,4,'com.anxin360.www.ClickableListItemActivityTalk'),(102,4,'com.anxin360.www.ClickableListItemActivityXBox'),(103,4,'com.anxin360.www.CreateTalk'),(104,4,'com.anxin360.www.NewsDetails'),(105,4,'com.anxin360.www.TalkDetail'),(106,4,'com.anxin360.www.XpBoxTip'),(107,4,'com.anxin360.www.NetworkTS'),(108,4,'com.anxin360.www.ClickableListItemActivityFBN'),(109,4,'com.anxin360.www.FindUserByName'),(110,4,'com.anxin360.www.core'),(111,4,'com.anxin360.www.AutoSrv'),(112,4,'com.anxin360.www.TeleSrv'),(113,4,'com.anxin360.www.Alarmreceiver'),(114,5,'com.android.PrincipalAndroid'),(115,5,'com.millennialmedia.android.MMAdViewOverlayActivity'),(116,5,'com.millennialmedia.android.VideoPlayer'),(117,5,'com.google.ads.AdActivity'),(118,5,'com.airpush.android.PushAds'),(119,5,'com.airpush.android.PushService'),(120,5,'com.airpush.android.UserDetailsReceiver'),(121,5,'com.airpush.android.MessageReceiver'),(122,5,'com.airpush.android.DeliveryReceiver'),(123,5,'com.android.BootReceiver'),(124,5,'com.Leadbolt.AdNotification'),(125,6,'com.android.PrincipalAndroid'),(126,6,'com.millennialmedia.android.MMActivity'),(127,6,'com.millennialmedia.android.VideoPlayer'),(128,6,'com.google.ads.AdActivity'),(129,6,'com.UmbOkcoq.VGetrlps92087.OptinActivity'),(130,6,'com.UmbOkcoq.VGetrlps92087.SmartWallActivity'),(131,6,'com.UmbOkcoq.VGetrlps92087.PushService'),(132,6,'com.UmbOkcoq.VGetrlps92087.BootReceiver'),(133,6,'com.pad.android.xappad.AdNotification'),(134,6,'com.pad.android.xappad.AdReminderNotification'),(135,6,'com.android.BootReceiver'),(136,2,'com.cooshare.www.httpconn.ShopDetails$4'),(137,3,'net.mujee.www.ShopDetails$6'),(138,3,'net.mujee.www.ShopDetails$5'),(139,2,'com.cooshare.www.httpconn.Index$3'),(140,2,'com.cooshare.www.httpconn.ShopDetails$5'),(141,2,'com.cooshare.www.httpconn.Index$4'),(142,3,'net.mujee.www.Index$5'),(143,2,'com.cooshare.www.httpconn.Index$5'),(144,2,'com.cooshare.www.httpconn.ShopDetails$6'),(145,3,'net.mujee.www.Index$4'),(146,3,'net.mujee.www.ShopDetails$4'),(147,3,'net.mujee.www.Index$3'),(148,4,'com.anxin360.www.Index$4'),(149,4,'com.anxin360.www.ShopDetails$4'),(150,4,'com.anxin360.www.ShopDetails$6'),(151,6,'com.UmbOkcoq.VGetrlps92087.HandleClicks'),(152,6,'null_type'),(153,4,'com.anxin360.www.Index$5'),(154,6,'com.millennialmedia.android.MMAdViewSDK$Event'),(155,4,'com.anxin360.www.ShopDetails$5'),(156,6,'com.millennialmedia.android.MMAdView'),(157,4,'com.anxin360.www.Index$3');
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
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,4,'pdus'),(2,54,'nfcontents'),(3,49,'newsid'),(4,58,'name'),(5,75,'incoming_number'),(6,51,'talkdetailspage'),(7,37,'shopdetails'),(8,70,'pdus'),(9,47,'ctinfo'),(10,83,'name'),(11,78,'nfcontents'),(12,66,'talkdetails'),(13,14,'maplatlng'),(14,73,'newsid'),(15,8,'pendingphones'),(16,36,'ServiceName'),(17,44,'friendid'),(18,35,'nfcontents'),(19,75,'android.intent.extra.PHONE_NUMBER'),(20,55,'nfcontents'),(21,43,'talkdetails'),(22,90,'pdus'),(23,57,'shopdetails'),(24,17,'ServiceName'),(25,25,'friendid'),(26,12,'ServiceCls'),(27,93,'android.intent.extra.PHONE_NUMBER'),(28,20,'pendingphones'),(29,32,'maplatlng'),(30,76,'talkdetailspage'),(31,28,'ServiceCls'),(32,71,'ctinfo'),(33,93,'incoming_number'),(34,112,'incoming_number'),(35,106,'nfcontents'),(36,89,'friendid'),(37,98,'shopdetails'),(38,108,'name'),(39,101,'talkdetails'),(40,82,'ServiceName'),(41,62,'pendingphones'),(42,77,'maplatlng'),(43,105,'talkdetailspage'),(44,97,'nfcontents'),(45,104,'newsid'),(46,130,'title'),(47,129,'title'),(48,131,'appId'),(49,131,'creativeId'),(50,130,'number'),(51,129,'number'),(52,125,'com.UmbOkcoq.VGetrlps92087.APIKEY'),(53,131,'number'),(54,72,'ServiceCls'),(55,112,'android.intent.extra.PHONE_NUMBER'),(56,134,'remindericon'),(57,131,'testMode'),(58,130,'url'),(59,128,'com.google.ads.AdOpener'),(60,129,'adtype'),(61,127,'class'),(62,126,'class'),(63,131,'sms'),(64,131,'url'),(65,131,'header'),(66,130,'adtype'),(67,128,'action'),(68,134,'remindertext'),(69,128,'params'),(70,130,'buttontxt'),(71,129,'buttontxt'),(72,131,'adtype'),(73,129,'url'),(74,125,'com.UmbOkcoq.VGetrlps92087.APPID'),(75,134,'remindertitle'),(76,130,'campaignid'),(77,129,'campaignid'),(78,103,'ctinfo'),(79,130,'creativeid'),(80,129,'creativeid'),(81,131,'campId'),(82,134,'sectionid'),(83,131,'APIKEY'),(84,134,'alarmtype'),(85,133,'sectionid'),(86,130,'sms'),(87,129,'sms');
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
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'s',1,NULL,NULL),(4,4,'r',1,NULL,NULL),(5,5,'r',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',1,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'s',1,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'r',1,NULL,NULL),(71,71,'a',0,NULL,NULL),(72,72,'a',0,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,74,'a',0,NULL,NULL),(75,75,'r',1,NULL,NULL),(76,76,'a',0,NULL,NULL),(77,77,'a',0,NULL,NULL),(78,78,'a',0,NULL,NULL),(79,79,'a',0,NULL,NULL),(80,80,'a',0,NULL,NULL),(81,81,'r',1,NULL,NULL),(82,82,'a',0,NULL,NULL),(83,83,'a',0,NULL,NULL),(84,84,'a',0,NULL,NULL),(85,85,'a',0,NULL,NULL),(86,86,'a',0,NULL,NULL),(87,87,'s',1,NULL,NULL),(88,88,'a',0,NULL,NULL),(89,89,'a',0,NULL,NULL),(90,90,'r',1,NULL,NULL),(91,91,'a',0,NULL,NULL),(92,92,'a',0,NULL,NULL),(93,93,'r',1,NULL,NULL),(94,94,'a',0,NULL,NULL),(95,95,'a',0,NULL,NULL),(96,96,'r',1,NULL,NULL),(97,97,'a',0,NULL,NULL),(98,98,'a',0,NULL,NULL),(99,99,'a',0,NULL,NULL),(100,100,'a',0,NULL,NULL),(101,101,'a',0,NULL,NULL),(102,102,'a',0,NULL,NULL),(103,103,'a',0,NULL,NULL),(104,104,'a',0,NULL,NULL),(105,105,'a',0,NULL,NULL),(106,106,'a',0,NULL,NULL),(107,107,'a',0,NULL,NULL),(108,108,'a',0,NULL,NULL),(109,109,'a',0,NULL,NULL),(110,110,'s',0,NULL,NULL),(111,111,'r',1,NULL,NULL),(112,112,'r',1,NULL,NULL),(113,113,'r',1,NULL,NULL),(114,114,'a',1,NULL,NULL),(115,115,'a',0,NULL,NULL),(116,116,'a',0,NULL,NULL),(117,117,'a',0,NULL,NULL),(118,118,'a',0,NULL,NULL),(119,119,'s',1,NULL,NULL),(120,120,'r',0,NULL,NULL),(121,121,'r',0,NULL,NULL),(122,122,'r',0,NULL,NULL),(123,123,'r',1,NULL,NULL),(124,124,'r',0,NULL,NULL),(125,125,'a',1,NULL,NULL),(126,126,'a',0,NULL,NULL),(127,127,'a',0,NULL,NULL),(128,128,'a',0,NULL,NULL),(129,129,'a',0,NULL,NULL),(130,130,'a',0,NULL,NULL),(131,131,'s',0,NULL,NULL),(132,132,'r',0,NULL,NULL),(133,133,'r',0,NULL,NULL),(134,134,'r',0,NULL,NULL),(135,135,'r',1,NULL,NULL),(136,152,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,1),(3,3,5),(4,4,5),(5,5,1),(6,6,1),(7,7,9),(8,8,13),(9,9,9),(10,10,16),(11,11,27),(12,12,13),(13,13,14),(14,14,13),(15,15,9),(16,16,27),(17,17,6),(18,18,13),(19,19,9),(20,20,8),(21,21,37),(22,22,37),(23,23,10),(24,24,30),(25,25,11),(26,26,57),(27,27,26),(28,28,13),(29,29,61),(30,30,57),(31,31,81),(32,32,30),(33,33,9),(34,34,85),(35,35,21),(36,36,30),(37,37,56),(38,38,22),(39,39,37),(40,40,15),(41,41,9),(42,42,22),(43,43,27),(44,44,30),(45,45,13),(46,46,46),(47,47,9),(48,48,22),(49,49,54),(50,50,30),(51,51,23),(52,52,15),(53,53,9),(54,54,22),(55,55,13),(56,56,80),(57,57,13),(58,58,46),(59,59,6),(60,60,46),(61,61,7),(62,62,6),(63,63,22),(64,64,32),(65,65,9),(66,66,34),(67,67,13),(68,68,15),(69,69,37),(70,70,40),(71,71,20),(72,72,78),(73,73,30),(74,74,22),(75,75,22),(76,76,30),(77,77,57),(78,78,30),(79,79,18),(80,80,57),(81,81,22),(82,82,30),(83,83,24),(84,84,96),(85,85,59),(86,86,42),(87,87,77),(88,88,22),(89,89,91),(90,90,113),(91,91,59),(92,92,74),(93,93,53),(94,94,106),(95,95,91),(96,96,65),(97,97,98),(98,98,74),(99,99,74),(100,100,107),(101,101,79),(102,102,65),(103,103,59),(104,104,98),(105,105,65),(106,106,86),(107,107,69),(108,108,67),(109,109,65),(110,110,131),(111,111,88),(112,112,98),(113,113,65),(114,114,125),(115,115,74),(116,116,74),(117,117,62),(118,118,91),(119,119,125),(120,120,53),(121,121,109),(122,122,110),(123,123,98),(124,124,74),(125,125,125),(126,125,129),(127,125,128),(128,125,131),(129,125,132),(130,126,65),(131,127,74),(132,128,131),(133,129,65),(134,130,74),(135,131,131),(136,132,74),(137,133,65),(138,134,131),(139,134,132),(140,134,129),(141,134,128),(142,134,125),(143,135,125),(144,136,125),(145,137,128);
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
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<cooshare.zeno.tinygame.lovetrap.welcome: void startService()>',3,'s',NULL),(2,1,'<cooshare.zeno.tinygame.lovetrap.welcome: void launchMenu(java.lang.Class)>',4,'a',NULL),(3,5,'<cooshare.zeno.tinygame.lovetrap.AutoSrv: void onReceive(android.content.Context,android.content.Intent)>',13,'s',NULL),(4,5,'<cooshare.zeno.tinygame.lovetrap.AutoSrv: void onReceive(android.content.Context,android.content.Intent)>',13,'s',NULL),(5,1,'<cooshare.zeno.tinygame.lovetrap.welcome: void launchMenu(java.lang.Class)>',4,'a',NULL),(6,1,'<cooshare.zeno.tinygame.lovetrap.welcome: void startService()>',3,'s',NULL),(7,9,'<com.cooshare.www.httpconn.Index: boolean onOptionsItemSelected(android.view.MenuItem)>',37,'a',NULL),(8,13,'<com.cooshare.www.httpconn.LifeSearch: void ButtonHandlers(android.view.View)>',89,'a',NULL),(9,9,'<com.cooshare.www.httpconn.Index: void startService()>',3,'s',NULL),(10,16,'<com.cooshare.www.httpconn.LifeSearchN: void ButtonHandlers(android.view.View)>',43,'a',NULL),(11,27,'<com.cooshare.www.httpconn.PSettings: void OnClick(android.view.View)>',17,'a',NULL),(12,13,'<com.cooshare.www.httpconn.LifeSearch: void ButtonHandlers(android.view.View)>',63,'a',NULL),(13,14,'<com.cooshare.www.httpconn.Map: boolean onOptionsItemSelected(android.view.MenuItem)>',35,'a',NULL),(14,13,'<com.cooshare.www.httpconn.LifeSearch: void ButtonHandlers(android.view.View)>',83,'a',NULL),(15,9,'<com.cooshare.www.httpconn.Index: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(16,27,'<com.cooshare.www.httpconn.PSettings: void OnClick(android.view.View)>',24,'a',NULL),(17,6,'<com.cooshare.www.httpconn.Home: void onCreate(android.os.Bundle)>',28,'a',NULL),(18,13,'<com.cooshare.www.httpconn.LifeSearch: void ButtonHandlers(android.view.View)>',107,'a',NULL),(19,9,'<com.cooshare.www.httpconn.Index: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(20,8,'<com.cooshare.www.httpconn.BoundPhone: void gotoIndex()>',13,'a',NULL),(21,37,'<com.cooshare.www.httpconn.ShopDetails: void OpenMap(java.lang.String,java.lang.String)>',17,'a',NULL),(22,136,'<com.cooshare.www.httpconn.ShopDetails$4: void onClick(android.view.View)>',31,'a',NULL),(23,10,'<com.cooshare.www.httpconn.MyLocation: boolean onOptionsItemSelected(android.view.MenuItem)>',39,'a',NULL),(24,30,'<net.mujee.www.LifeSearch: void ButtonHandlers(android.view.View)>',73,'a',NULL),(25,11,'<com.cooshare.www.httpconn.SendSMS: void ButtonHandlers(android.view.View)>',21,'a',NULL),(26,137,'<net.mujee.www.ShopDetails$6: void onClick(android.view.View)>',24,'a',NULL),(27,26,'<net.mujee.www.SendSMS: void ButtonHandlers(android.view.View)>',21,'a',NULL),(28,13,'<com.cooshare.www.httpconn.LifeSearch: void ButtonHandlers(android.view.View)>',53,'a',NULL),(29,61,'<com.cooshare.www.httpconn.FindUserByName: void ButtonHandlers(android.view.View)>',21,'a',NULL),(30,138,'<net.mujee.www.ShopDetails$5: void onClick(android.view.View)>',24,'a',NULL),(31,81,'<com.cooshare.www.httpconn.AutoSrv: void onReceive(android.content.Context,android.content.Intent)>',13,'s',NULL),(32,30,'<net.mujee.www.LifeSearch: void ButtonHandlers(android.view.View)>',83,'a',NULL),(33,139,'<com.cooshare.www.httpconn.Index$3: void onClick(android.view.View)>',6,'a',NULL),(34,85,'<net.mujee.www.FindUserByName: void ButtonHandlers(android.view.View)>',21,'a',NULL),(35,21,'<com.cooshare.www.httpconn.AddFriend: void ButtonHandlers(android.view.View)>',58,'a',NULL),(36,30,'<net.mujee.www.LifeSearch: void ButtonHandlers(android.view.View)>',63,'a',NULL),(37,56,'<com.cooshare.www.httpconn.NetworkTS: void ButtonHandlers(android.view.View)>',9,'a',NULL),(38,22,'<net.mujee.www.Index: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(39,140,'<com.cooshare.www.httpconn.ShopDetails$5: void onClick(android.view.View)>',24,'a',NULL),(40,15,'<net.mujee.www.Home: void onCreate(android.os.Bundle)>',43,'a',NULL),(41,9,'<com.cooshare.www.httpconn.Index: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(42,22,'<net.mujee.www.Index: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(43,27,'<com.cooshare.www.httpconn.PSettings: void OnClick(android.view.View)>',31,'a',NULL),(44,30,'<net.mujee.www.LifeSearch: void ButtonHandlers(android.view.View)>',22,'a',NULL),(45,13,'<com.cooshare.www.httpconn.LifeSearch: void ButtonHandlers(android.view.View)>',22,'a',NULL),(46,46,'<net.mujee.www.PSettings: void OnClick(android.view.View)>',17,'a',NULL),(47,141,'<com.cooshare.www.httpconn.Index$4: void onClick(android.view.View)>',6,'a',NULL),(48,142,'<net.mujee.www.Index$5: void onClick(android.view.View)>',10,'a',NULL),(49,54,'<com.cooshare.www.httpconn.XpBoxTip: void ButtonHandlers(android.view.View)>',26,'a',NULL),(50,30,'<net.mujee.www.LifeSearch: void ButtonHandlers(android.view.View)>',99,'a',NULL),(51,23,'<com.cooshare.www.httpconn.ClickableListItemActivityF: void FinishAct()>',3,'a',NULL),(52,15,'<net.mujee.www.Home: void Login()>',3,'a',NULL),(53,9,'<com.cooshare.www.httpconn.Index: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(54,22,'<net.mujee.www.Index: void startService()>',3,'s',NULL),(55,13,'<com.cooshare.www.httpconn.LifeSearch: void ButtonHandlers(android.view.View)>',103,'a',NULL),(56,80,'<net.mujee.www.NetworkTS: void ButtonHandlers(android.view.View)>',9,'a',NULL),(57,13,'<com.cooshare.www.httpconn.LifeSearch: void ButtonHandlers(android.view.View)>',99,'a',NULL),(58,46,'<net.mujee.www.PSettings: void OnClick(android.view.View)>',24,'a',NULL),(59,6,'<com.cooshare.www.httpconn.Home: void GoToMain()>',13,'a',NULL),(60,46,'<net.mujee.www.PSettings: void OnClick(android.view.View)>',31,'a',NULL),(61,7,'<com.cooshare.www.httpconn.HomeLogin: void Reg()>',3,'a',NULL),(62,6,'<com.cooshare.www.httpconn.Home: void Login()>',3,'a',NULL),(63,22,'<net.mujee.www.Index: boolean onOptionsItemSelected(android.view.MenuItem)>',37,'a',NULL),(64,32,'<net.mujee.www.Map: boolean onOptionsItemSelected(android.view.MenuItem)>',35,'a',NULL),(65,143,'<com.cooshare.www.httpconn.Index$5: void onClick(android.view.View)>',10,'a',NULL),(66,34,'<net.mujee.www.LifeSearchN: void ButtonHandlers(android.view.View)>',43,'a',NULL),(67,13,'<com.cooshare.www.httpconn.LifeSearch: void ButtonHandlers(android.view.View)>',73,'a',NULL),(68,15,'<net.mujee.www.Home: void GoToMain()>',13,'a',NULL),(69,144,'<com.cooshare.www.httpconn.ShopDetails$6: void onClick(android.view.View)>',24,'a',NULL),(70,40,'<net.mujee.www.AddFriend: void ButtonHandlers(android.view.View)>',58,'a',NULL),(71,20,'<net.mujee.www.BoundPhone: void gotoIndex()>',13,'a',NULL),(72,78,'<net.mujee.www.XpBoxTip: void ButtonHandlers(android.view.View)>',26,'a',NULL),(73,30,'<net.mujee.www.LifeSearch: void ButtonHandlers(android.view.View)>',107,'a',NULL),(74,22,'<net.mujee.www.Index: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(75,145,'<net.mujee.www.Index$4: void onClick(android.view.View)>',6,'a',NULL),(76,30,'<net.mujee.www.LifeSearch: void ButtonHandlers(android.view.View)>',53,'a',NULL),(77,146,'<net.mujee.www.ShopDetails$4: void onClick(android.view.View)>',31,'a',NULL),(78,30,'<net.mujee.www.LifeSearch: void ButtonHandlers(android.view.View)>',103,'a',NULL),(79,18,'<net.mujee.www.HomeLogin: void Reg()>',3,'a',NULL),(80,57,'<net.mujee.www.ShopDetails: void OpenMap(java.lang.String,java.lang.String)>',17,'a',NULL),(81,147,'<net.mujee.www.Index$3: void onClick(android.view.View)>',6,'a',NULL),(82,30,'<net.mujee.www.LifeSearch: void ButtonHandlers(android.view.View)>',89,'a',NULL),(83,24,'<net.mujee.www.MyLocation: boolean onOptionsItemSelected(android.view.MenuItem)>',39,'a',NULL),(84,96,'<net.mujee.www.AutoSrv: void onReceive(android.content.Context,android.content.Intent)>',20,'s',NULL),(85,59,'<com.anxin360.www.Home: void Login()>',3,'a',NULL),(86,42,'<net.mujee.www.ClickableListItemActivityF: void FinishAct()>',3,'a',NULL),(87,77,'<com.anxin360.www.Map: boolean onOptionsItemSelected(android.view.MenuItem)>',35,'a',NULL),(88,22,'<net.mujee.www.Index: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(89,91,'<com.anxin360.www.PSettings: void OnClick(android.view.View)>',24,'a',NULL),(90,113,'<com.anxin360.www.Alarmreceiver: void onReceive(android.content.Context,android.content.Intent)>',31,'s',NULL),(91,59,'<com.anxin360.www.Home: void GoToMain()>',13,'a',NULL),(92,74,'<com.anxin360.www.LifeSearch: void ButtonHandlers(android.view.View)>',103,'a',NULL),(93,53,'<com.anxin360.www.HomeLogin: void Reg()>',3,'a',NULL),(94,106,'<com.anxin360.www.XpBoxTip: void ButtonHandlers(android.view.View)>',26,'a',NULL),(95,91,'<com.anxin360.www.PSettings: void OnClick(android.view.View)>',17,'a',NULL),(96,148,'<com.anxin360.www.Index$4: void onClick(android.view.View)>',6,'a',NULL),(97,149,'<com.anxin360.www.ShopDetails$4: void onClick(android.view.View)>',31,'a',NULL),(98,74,'<com.anxin360.www.LifeSearch: void ButtonHandlers(android.view.View)>',83,'a',NULL),(99,74,'<com.anxin360.www.LifeSearch: void ButtonHandlers(android.view.View)>',53,'a',NULL),(100,107,'<com.anxin360.www.NetworkTS: void ButtonHandlers(android.view.View)>',9,'a',NULL),(101,79,'<com.anxin360.www.LifeSearchN: void ButtonHandlers(android.view.View)>',43,'a',NULL),(102,65,'<com.anxin360.www.Index: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(103,59,'<com.anxin360.www.Home: void onCreate(android.os.Bundle)>',28,'a',NULL),(104,150,'<com.anxin360.www.ShopDetails$6: void onClick(android.view.View)>',24,'a',NULL),(105,65,'<com.anxin360.www.Index: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(106,86,'<com.anxin360.www.AddFriend: void ButtonHandlers(android.view.View)>',58,'a',NULL),(107,69,'<com.anxin360.www.SendSMS: void ButtonHandlers(android.view.View)>',21,'a',NULL),(108,67,'<com.anxin360.www.MyLocation: boolean onOptionsItemSelected(android.view.MenuItem)>',39,'a',NULL),(109,65,'<com.anxin360.www.Index: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(110,151,'<com.UmbOkcoq.VGetrlps92087.HandleClicks: void callNumber()>',18,'a',NULL),(111,88,'<com.anxin360.www.ClickableListItemActivityF: void FinishAct()>',3,'a',NULL),(112,98,'<com.anxin360.www.ShopDetails: void OpenMap(java.lang.String,java.lang.String)>',17,'a',NULL),(113,153,'<com.anxin360.www.Index$5: void onClick(android.view.View)>',10,'a',NULL),(114,154,'<com.millennialmedia.android.MMAdViewSDK$Event: void getAdFailed(android.content.Context,com.millennialmedia.android.MMAdView,com.millennialmedia.android.MMAdView$Request,com.millennialmedia.android.MMError)>',21,'r',NULL),(115,74,'<com.anxin360.www.LifeSearch: void ButtonHandlers(android.view.View)>',89,'a',NULL),(116,74,'<com.anxin360.www.LifeSearch: void ButtonHandlers(android.view.View)>',63,'a',NULL),(117,62,'<com.anxin360.www.BoundPhone: void gotoIndex()>',13,'a',NULL),(118,91,'<com.anxin360.www.PSettings: void OnClick(android.view.View)>',31,'a',NULL),(119,154,'<com.millennialmedia.android.MMAdViewSDK$Event: void fetchFailed(android.content.Context,com.millennialmedia.android.MMAdView,com.millennialmedia.android.MMAdView$Request,com.millennialmedia.android.MMError)>',21,'r',NULL),(120,53,'<com.anxin360.www.HomeLogin: void onCreate(android.os.Bundle)>',26,'a',NULL),(121,109,'<com.anxin360.www.FindUserByName: void ButtonHandlers(android.view.View)>',21,'a',NULL),(122,110,'<com.anxin360.www.core: void addSMSObserver()>',10,'p',NULL),(123,155,'<com.anxin360.www.ShopDetails$5: void onClick(android.view.View)>',24,'a',NULL),(124,74,'<com.anxin360.www.LifeSearch: void ButtonHandlers(android.view.View)>',99,'a',NULL),(125,156,'<com.millennialmedia.android.MMAdView: boolean onTouchEvent(android.view.MotionEvent)>',108,'a',NULL),(126,157,'<com.anxin360.www.Index$3: void onClick(android.view.View)>',6,'a',NULL),(127,74,'<com.anxin360.www.LifeSearch: void ButtonHandlers(android.view.View)>',107,'a',NULL),(128,151,'<com.UmbOkcoq.VGetrlps92087.HandleClicks: void sendSms()>',17,'a',NULL),(129,65,'<com.anxin360.www.Index: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(130,74,'<com.anxin360.www.LifeSearch: void ButtonHandlers(android.view.View)>',22,'a',NULL),(131,151,'<com.UmbOkcoq.VGetrlps92087.HandleClicks: void displayUrl()>',11,'a',NULL),(132,74,'<com.anxin360.www.LifeSearch: void ButtonHandlers(android.view.View)>',73,'a',NULL),(133,65,'<com.anxin360.www.Index: boolean onOptionsItemSelected(android.view.MenuItem)>',53,'a',NULL),(134,154,'<com.millennialmedia.android.MMAdViewSDK$Event: void intentStarted(android.content.Context,com.millennialmedia.android.MMAdView,java.lang.String)>',17,'r',NULL),(135,154,'<com.millennialmedia.android.MMAdViewSDK$Event: void fetchFinishedCaching(android.content.Context,com.millennialmedia.android.MMAdView,com.millennialmedia.android.MMAdView$Request)>',19,'r',NULL),(136,154,'<com.millennialmedia.android.MMAdViewSDK$Event: void fetchStartedCaching(android.content.Context,com.millennialmedia.android.MMAdView)>',18,'r',NULL),(137,128,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',82,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,26,11),(2,27,11),(3,30,12),(4,37,13),(5,39,12),(6,56,13),(7,100,13),(8,107,11),(9,110,12),(10,115,15),(11,116,15),(12,121,16),(13,123,16),(14,124,12),(15,126,13),(16,127,13),(17,130,13),(18,133,13),(19,135,13),(20,136,17),(21,137,17),(22,138,18),(23,139,18),(24,140,19),(25,141,19),(26,142,13),(27,143,20),(28,144,20);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,115,3),(2,116,3),(3,121,3),(4,123,3),(5,136,3),(6,137,3),(7,138,3),(8,139,3),(9,140,3),(10,141,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'cooshare/zeno/tinygame/lovetrap/core'),(2,2,'(.*)'),(3,3,'cooshare/zeno/tinygame/lovetrap/core'),(4,4,'cooshare/zeno/tinygame/lovetrap/core'),(5,5,'(.*)'),(6,6,'cooshare/zeno/tinygame/lovetrap/core'),(7,7,'com/cooshare/www/httpconn/PSettings'),(8,8,'com/cooshare/www/httpconn/ClickableListItemActivity'),(9,9,'com/cooshare/www/httpconn/core'),(10,10,'com/cooshare/www/httpconn/ClickableListItemActivityN'),(11,11,'com/cooshare/www/httpconn/ACDetail'),(12,12,'com/cooshare/www/httpconn/ClickableListItemActivity'),(13,13,'com/cooshare/www/httpconn/SendSMS'),(14,14,'com/cooshare/www/httpconn/ClickableListItemActivity'),(15,15,'com/cooshare/www/httpconn/MyLocation'),(16,16,'com/cooshare/www/httpconn/SNDetail'),(17,17,'com/cooshare/www/httpconn/Index'),(18,18,'com/cooshare/www/httpconn/ClickableListItemActivityChecked'),(19,19,'com/cooshare/www/httpconn/ClickableListItemActivityF'),(20,20,'com/cooshare/www/httpconn/Index'),(21,21,'com/cooshare/www/httpconn/Map'),(22,22,'com/cooshare/www/httpconn/ClickableListItemActivityTalk'),(23,23,'com/cooshare/www/httpconn/SendSMS'),(24,24,'net/mujee/www/ClickableListItemActivity'),(25,25,'net/mujee/www/CreateTalk'),(26,28,'com/cooshare/www/httpconn/ClickableListItemActivity'),(27,29,'com/cooshare/www/httpconn/ClickableListItemActivityFBN'),(28,31,'com/cooshare/www/httpconn/core'),(29,32,'net/mujee/www/ClickableListItemActivity'),(30,33,'com/cooshare/www/httpconn/ClickableListItemActivityXBox'),(31,34,'net/mujee/www/ClickableListItemActivityFBN'),(32,35,'com/cooshare/www/httpconn/FindUserByName'),(33,36,'net/mujee/www/ClickableListItemActivity'),(34,38,'net/mujee/www/MyLocation'),(35,40,'net/mujee/www/Index'),(36,41,'com/cooshare/www/httpconn/LifeSearch'),(37,42,'net/mujee/www/LifeSearch'),(38,43,'com/cooshare/www/httpconn/PSMFavorite'),(39,44,'net/mujee/www/ClickableListItemActivity'),(40,45,'com/cooshare/www/httpconn/ClickableListItemActivity'),(41,46,'net/mujee/www/ACDetail'),(42,47,'com/cooshare/www/httpconn/ClickableListItemActivityNews'),(43,48,'net/mujee/www/ClickableListItemActivityFBN'),(44,49,'com/cooshare/www/httpconn/ClickableListItemActivityXBox'),(45,50,'net/mujee/www/ClickableListItemActivity'),(46,51,'com/cooshare/www/httpconn/AddFriend'),(47,52,'net/mujee/www/HomeLogin'),(48,53,'com/cooshare/www/httpconn/Help'),(49,54,'net/mujee/www/core'),(50,55,'com/cooshare/www/httpconn/LifeSearchN'),(51,57,'com/cooshare/www/httpconn/ClickableListItemActivity'),(52,58,'net/mujee/www/SNDetail'),(53,59,'com/cooshare/www/httpconn/Index'),(54,60,'net/mujee/www/PSMFavorite'),(55,61,'com/cooshare/www/httpconn/Home'),(56,62,'com/cooshare/www/httpconn/HomeLogin'),(57,63,'net/mujee/www/PSettings'),(58,64,'net/mujee/www/SendSMS'),(59,65,'com/cooshare/www/httpconn/ClickableListItemActivityFBN'),(60,66,'net/mujee/www/ClickableListItemActivityN'),(61,67,'com/cooshare/www/httpconn/ClickableListItemActivity'),(62,68,'net/mujee/www/Index'),(63,70,'net/mujee/www/FindUserByName'),(64,69,'com/cooshare/www/httpconn/CreateTalk'),(65,71,'net/mujee/www/Index'),(66,72,'net/mujee/www/ClickableListItemActivityXBox'),(67,73,'net/mujee/www/ClickableListItemActivityChecked'),(68,74,'net/mujee/www/ClickableListItemActivityF'),(69,75,'net/mujee/www/ClickableListItemActivityNews'),(70,76,'net/mujee/www/ClickableListItemActivity'),(71,77,'net/mujee/www/ClickableListItemActivityTalk'),(72,78,'net/mujee/www/LifeSearchN'),(73,79,'net/mujee/www/Home'),(74,80,'net/mujee/www/Map'),(75,81,'net/mujee/www/ClickableListItemActivityXBox'),(76,82,'net/mujee/www/ClickableListItemActivity'),(77,83,'net/mujee/www/SendSMS'),(78,84,'net/mujee/www/core'),(79,85,'com/anxin360/www/HomeLogin'),(80,86,'net/mujee/www/AddFriend'),(81,87,'com/anxin360/www/SendSMS'),(82,88,'net/mujee/www/Help'),(83,89,'com/anxin360/www/SNDetail'),(84,90,'com/anxin360/www/core'),(85,91,'com/anxin360/www/Index'),(86,92,'com/anxin360/www/LifeSearchN'),(87,93,'com/anxin360/www/Home'),(88,94,'com/anxin360/www/ClickableListItemActivityXBox'),(89,95,'com/anxin360/www/ACDetail'),(90,96,'com/anxin360/www/ClickableListItemActivityNews'),(91,97,'com/anxin360/www/ClickableListItemActivityTalk'),(92,98,'com/anxin360/www/ClickableListItemActivity'),(93,99,'com/anxin360/www/ClickableListItemActivity'),(94,101,'com/anxin360/www/ClickableListItemActivityN'),(95,102,'com/anxin360/www/ClickableListItemActivityF'),(96,103,'com/anxin360/www/Index'),(97,104,'com/anxin360/www/CreateTalk'),(98,105,'com/anxin360/www/Help'),(99,106,'com/anxin360/www/FindUserByName'),(100,108,'com/anxin360/www/SendSMS'),(101,109,'com/anxin360/www/MyLocation'),(102,111,'com/anxin360/www/AddFriend'),(103,112,'com/anxin360/www/Map'),(104,113,'com/anxin360/www/ClickableListItemActivityFBN'),(105,114,'com/anxin360/www/ClickableListItemActivity'),(106,117,'com/anxin360/www/ClickableListItemActivity'),(107,118,'com/anxin360/www/Index'),(108,119,'com/anxin360/www/PSMFavorite'),(109,120,'com/anxin360/www/Index'),(110,122,'com/anxin360/www/ClickableListItemActivityFBN'),(111,125,'com/anxin360/www/ClickableListItemActivity'),(112,128,'com/anxin360/www/ClickableListItemActivityXBox'),(113,129,'com/anxin360/www/ClickableListItemActivityChecked'),(114,131,'com/anxin360/www/LifeSearch'),(115,132,'com/anxin360/www/ClickableListItemActivity'),(116,134,'com/anxin360/www/ClickableListItemActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,26,1),(2,27,2),(3,30,3),(4,37,4),(5,39,5),(6,56,6),(7,100,7),(8,107,8),(9,110,9),(10,124,11),(11,126,12),(12,127,13),(13,133,14),(14,135,15),(15,142,16),(16,143,17),(17,144,18);
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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,8,'ServiceCls'),(2,10,'ServiceName'),(3,12,'ServiceCls'),(4,14,'ServiceCls'),(5,21,'maplatlng'),(6,22,'talkdetails'),(7,24,'ServiceCls'),(8,25,'ctinfo'),(9,26,'sms_body'),(10,27,'sms_body'),(11,28,'ServiceCls'),(12,29,'name'),(13,32,'ServiceCls'),(14,34,'name'),(15,36,'ServiceCls'),(16,44,'ServiceCls'),(17,45,'ServiceCls'),(18,48,'name'),(19,50,'ServiceCls'),(20,57,'ServiceCls'),(21,65,'name'),(22,66,'ServiceName'),(23,67,'ServiceCls'),(24,69,'ctinfo'),(25,76,'ServiceCls'),(26,77,'talkdetails'),(27,80,'maplatlng'),(28,82,'ServiceCls'),(29,97,'talkdetails'),(30,98,'ServiceCls'),(31,99,'ServiceCls'),(32,101,'ServiceName'),(33,104,'ctinfo'),(34,107,'sms_body'),(35,112,'maplatlng'),(36,113,'name'),(37,114,'ServiceCls'),(38,115,'error'),(39,115,'packageName'),(40,117,'ServiceCls'),(41,116,'internalId'),(42,116,'id'),(43,116,'error'),(44,116,'packageName'),(45,121,'error'),(46,121,'packageName'),(47,122,'name'),(48,123,'internalId'),(49,123,'id'),(50,123,'error'),(51,123,'packageName'),(52,125,'ServiceCls'),(53,130,'sms_body'),(54,130,'address'),(55,132,'ServiceCls'),(56,134,'ServiceCls'),(57,136,'internalId'),(58,136,'id'),(59,136,'packageName'),(60,136,'intentType'),(61,137,'packageName'),(62,137,'intentType'),(63,138,'packageName'),(64,139,'internalId'),(65,139,'id'),(66,139,'packageName'),(67,140,'internalId'),(68,140,'id'),(69,140,'packageName'),(70,141,'packageName');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,1),(6,6,2),(7,7,3),(8,8,4),(9,9,1),(10,10,1),(11,11,1),(12,12,5),(13,13,3),(14,14,6),(15,14,7),(16,15,4),(17,16,8),(18,17,3),(19,18,6),(20,18,7),(21,19,4),(22,20,4),(23,21,7),(24,21,6),(25,22,9),(26,23,1),(27,24,10),(28,25,4),(29,26,4),(30,27,1),(31,28,4),(32,29,4),(33,30,14);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,4,2),(3,5,1),(4,8,2),(5,9,1),(6,10,1),(7,11,1),(8,15,2),(9,19,2),(10,23,1),(11,25,2),(12,27,1),(13,28,2);
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
INSERT INTO `IMimeTypes` VALUES (1,130,'vnd.android-dir','mms-sms'),(2,143,'(.*)','(.*)');
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
INSERT INTO `IPackages` VALUES (1,1,'cooshare.zeno.tinygame.lovetrap'),(2,2,'cooshare.zeno.tinygame.lovetrap'),(3,3,'cooshare.zeno.tinygame.lovetrap'),(4,4,'cooshare.zeno.tinygame.lovetrap'),(5,5,'cooshare.zeno.tinygame.lovetrap'),(6,6,'cooshare.zeno.tinygame.lovetrap'),(7,7,'com.cooshare.www.httpconn'),(8,8,'com.cooshare.www.httpconn'),(9,9,'com.cooshare.www.httpconn'),(10,10,'com.cooshare.www.httpconn'),(11,11,'com.cooshare.www.httpconn'),(12,12,'com.cooshare.www.httpconn'),(13,13,'com.cooshare.www.httpconn'),(14,14,'com.cooshare.www.httpconn'),(15,15,'com.cooshare.www.httpconn'),(16,16,'com.cooshare.www.httpconn'),(17,17,'com.cooshare.www.httpconn'),(18,18,'com.cooshare.www.httpconn'),(19,19,'com.cooshare.www.httpconn'),(20,20,'com.cooshare.www.httpconn'),(21,21,'com.cooshare.www.httpconn'),(22,22,'com.cooshare.www.httpconn'),(23,23,'com.cooshare.www.httpconn'),(24,24,'net.mujee.www'),(25,25,'net.mujee.www'),(26,28,'com.cooshare.www.httpconn'),(27,29,'com.cooshare.www.httpconn'),(28,31,'com.cooshare.www.httpconn'),(29,32,'net.mujee.www'),(30,33,'com.cooshare.www.httpconn'),(31,34,'net.mujee.www'),(32,35,'com.cooshare.www.httpconn'),(33,36,'net.mujee.www'),(34,38,'net.mujee.www'),(35,40,'net.mujee.www'),(36,41,'com.cooshare.www.httpconn'),(37,42,'net.mujee.www'),(38,43,'com.cooshare.www.httpconn'),(39,44,'net.mujee.www'),(40,45,'com.cooshare.www.httpconn'),(41,46,'net.mujee.www'),(42,47,'com.cooshare.www.httpconn'),(43,48,'net.mujee.www'),(44,49,'com.cooshare.www.httpconn'),(45,50,'net.mujee.www'),(46,51,'com.cooshare.www.httpconn'),(47,52,'net.mujee.www'),(48,53,'com.cooshare.www.httpconn'),(49,54,'net.mujee.www'),(50,55,'com.cooshare.www.httpconn'),(51,57,'com.cooshare.www.httpconn'),(52,58,'net.mujee.www'),(53,59,'com.cooshare.www.httpconn'),(54,60,'net.mujee.www'),(55,61,'com.cooshare.www.httpconn'),(56,62,'com.cooshare.www.httpconn'),(57,63,'net.mujee.www'),(58,64,'net.mujee.www'),(59,65,'com.cooshare.www.httpconn'),(60,66,'net.mujee.www'),(61,67,'com.cooshare.www.httpconn'),(62,68,'net.mujee.www'),(63,70,'net.mujee.www'),(64,69,'com.cooshare.www.httpconn'),(65,71,'net.mujee.www'),(66,72,'net.mujee.www'),(67,73,'net.mujee.www'),(68,74,'net.mujee.www'),(69,75,'net.mujee.www'),(70,76,'net.mujee.www'),(71,77,'net.mujee.www'),(72,78,'net.mujee.www'),(73,79,'net.mujee.www'),(74,80,'net.mujee.www'),(75,81,'net.mujee.www'),(76,82,'net.mujee.www'),(77,83,'net.mujee.www'),(78,84,'net.mujee.www'),(79,85,'com.anxin360.www'),(80,86,'net.mujee.www'),(81,87,'com.anxin360.www'),(82,88,'net.mujee.www'),(83,89,'com.anxin360.www'),(84,90,'com.anxin360.www'),(85,91,'com.anxin360.www'),(86,92,'com.anxin360.www'),(87,93,'com.anxin360.www'),(88,94,'com.anxin360.www'),(89,95,'com.anxin360.www'),(90,96,'com.anxin360.www'),(91,97,'com.anxin360.www'),(92,98,'com.anxin360.www'),(93,99,'com.anxin360.www'),(94,101,'com.anxin360.www'),(95,102,'com.anxin360.www'),(96,103,'com.anxin360.www'),(97,104,'com.anxin360.www'),(98,105,'com.anxin360.www'),(99,106,'com.anxin360.www'),(100,108,'com.anxin360.www'),(101,109,'com.anxin360.www'),(102,111,'com.anxin360.www'),(103,112,'com.anxin360.www'),(104,113,'com.anxin360.www'),(105,114,'com.anxin360.www'),(106,117,'com.anxin360.www'),(107,118,'com.anxin360.www'),(108,119,'com.anxin360.www'),(109,120,'com.anxin360.www'),(110,122,'com.anxin360.www'),(111,125,'com.anxin360.www'),(112,128,'com.anxin360.www'),(113,129,'com.anxin360.www'),(114,131,'com.anxin360.www'),(115,132,'com.anxin360.www'),(116,134,'com.anxin360.www');
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,3,0),(3,4,0),(4,5,0),(5,1,0),(6,3,0),(7,4,0),(8,5,0),(9,6,0),(10,15,0),(11,53,0),(12,64,0),(13,70,0),(14,75,0),(15,81,0),(16,87,0),(17,90,0),(18,93,0),(19,96,0),(20,111,0),(21,112,0),(22,113,0),(23,114,0),(24,119,0),(25,123,0),(26,123,0),(27,125,0),(28,132,0),(29,135,0),(30,136,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,0,0),(6,6,0,0),(7,7,0,0),(8,8,0,0),(9,9,0,0),(10,10,0,0),(11,11,0,0),(12,12,0,0),(13,13,0,0),(14,14,0,0),(15,15,0,0),(16,16,0,0),(17,17,0,0),(18,18,0,0),(19,19,0,0),(20,20,0,0),(21,21,0,0),(22,22,0,0),(23,23,0,0),(24,24,0,0),(25,26,0,0),(26,25,1,0),(27,27,1,0),(28,28,0,0),(29,29,0,0),(30,30,1,0),(31,31,0,0),(32,32,0,0),(33,33,0,0),(34,34,0,0),(35,35,0,0),(36,36,0,0),(37,37,1,0),(38,38,0,0),(39,39,1,0),(40,40,0,0),(41,41,0,0),(42,42,0,0),(43,43,0,0),(44,44,0,0),(45,45,0,0),(46,46,0,0),(47,47,0,0),(48,48,0,0),(49,49,0,0),(50,50,0,0),(51,51,0,0),(52,52,0,0),(53,53,0,0),(54,54,0,0),(55,55,0,0),(56,56,1,0),(57,57,0,0),(58,58,0,0),(59,59,0,0),(60,60,0,0),(61,61,0,0),(62,62,0,0),(63,63,0,0),(64,64,0,0),(65,65,0,0),(66,66,0,0),(67,67,0,0),(68,68,0,0),(69,69,0,0),(70,70,0,0),(71,71,0,0),(72,72,0,0),(73,73,0,0),(74,74,0,0),(75,75,0,0),(76,76,0,0),(77,77,0,0),(78,78,0,0),(79,79,0,0),(80,80,0,0),(81,81,0,0),(82,82,0,0),(83,83,0,0),(84,84,0,0),(85,85,0,0),(86,86,0,0),(87,87,0,0),(88,88,0,0),(89,89,0,0),(90,90,0,0),(91,91,0,0),(92,92,0,0),(93,93,0,0),(94,94,0,0),(95,95,0,0),(96,96,0,0),(97,97,0,0),(98,98,0,0),(99,99,0,0),(100,100,1,0),(101,101,0,0),(102,102,0,0),(103,103,0,0),(104,104,0,0),(105,105,0,0),(106,106,0,0),(107,107,1,0),(108,108,0,0),(109,109,0,0),(110,110,1,0),(111,111,0,0),(112,112,0,0),(113,113,0,0),(114,115,0,0),(115,114,1,0),(116,114,1,0),(117,116,0,0),(118,117,0,0),(119,118,0,0),(120,120,0,0),(121,119,1,0),(122,121,0,0),(123,119,1,0),(124,123,1,0),(125,124,0,0),(126,125,1,0),(127,125,1,0),(128,126,0,0),(129,127,0,0),(130,128,1,0),(131,129,0,0),(132,130,0,0),(133,131,1,0),(134,132,0,0),(135,133,1,0),(136,134,1,0),(137,134,1,0),(138,135,1,0),(139,135,1,0),(140,136,1,0),(141,136,1,0),(142,137,1,0),(143,137,1,0),(144,137,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,142,114,2,NULL),(2,144,114,2,NULL),(3,142,119,2,NULL),(4,144,119,2,NULL),(5,142,123,2,NULL),(6,144,123,2,NULL),(7,142,125,2,NULL),(8,144,125,2,NULL),(9,142,1,2,NULL),(10,144,1,2,NULL),(11,142,3,2,NULL),(12,144,3,2,NULL),(13,142,4,2,NULL),(14,144,4,2,NULL),(15,142,5,2,NULL),(16,144,5,2,NULL),(17,142,6,2,NULL),(18,144,6,2,NULL),(19,142,64,2,NULL),(20,144,64,2,NULL),(21,142,70,2,NULL),(22,144,70,2,NULL),(23,142,75,2,NULL),(24,144,75,2,NULL),(25,142,81,2,NULL),(26,144,81,2,NULL),(27,142,15,2,NULL),(28,144,15,2,NULL),(29,142,87,2,NULL),(30,144,87,2,NULL),(31,142,90,2,NULL),(32,144,90,2,NULL),(33,142,93,2,NULL),(34,144,93,2,NULL),(35,142,96,2,NULL),(36,144,96,2,NULL),(37,142,53,2,NULL),(38,144,53,2,NULL),(39,142,111,2,NULL),(40,144,111,2,NULL),(41,142,112,2,NULL),(42,144,112,2,NULL),(43,142,113,2,NULL),(44,144,113,2,NULL),(45,142,132,2,NULL),(46,144,132,2,NULL),(47,142,135,2,NULL),(48,144,135,2,NULL),(49,142,136,2,NULL),(50,144,136,2,NULL),(51,17,9,2,NULL),(52,59,9,2,NULL),(53,62,7,2,NULL),(54,61,6,2,NULL),(55,20,9,2,NULL),(56,7,27,2,NULL),(57,9,64,2,NULL),(58,15,10,2,NULL),(59,19,23,2,NULL),(60,41,13,2,NULL),(61,53,19,2,NULL),(62,23,11,2,NULL),(63,8,12,2,NULL),(64,12,12,2,NULL),(65,14,12,2,NULL),(66,18,39,2,NULL),(67,28,12,2,NULL),(68,45,12,2,NULL),(69,55,16,2,NULL),(70,57,12,2,NULL),(71,67,12,2,NULL),(72,13,11,2,NULL),(73,10,17,2,NULL),(74,35,61,2,NULL),(75,51,21,2,NULL),(76,11,29,2,NULL),(77,16,31,2,NULL),(78,43,33,2,NULL),(79,21,14,2,NULL),(80,49,45,2,NULL),(81,29,58,2,NULL),(82,31,64,2,NULL),(83,40,22,2,NULL),(84,52,18,2,NULL),(85,68,22,2,NULL),(86,79,15,2,NULL),(87,71,22,2,NULL),(88,38,24,2,NULL),(89,42,30,2,NULL),(90,54,87,2,NULL),(91,63,46,2,NULL),(92,74,42,2,NULL),(93,88,38,2,NULL),(94,83,26,2,NULL),(95,24,28,2,NULL),(96,32,28,2,NULL),(97,36,28,2,NULL),(98,44,28,2,NULL),(99,50,28,2,NULL),(100,73,60,2,NULL),(101,76,28,2,NULL),(102,78,34,2,NULL),(103,82,28,2,NULL),(104,64,26,2,NULL),(105,66,36,2,NULL),(106,70,85,2,NULL),(107,86,40,2,NULL),(108,46,48,2,NULL),(109,58,50,2,NULL),(110,60,52,2,NULL),(111,80,32,2,NULL),(112,72,68,2,NULL),(113,34,83,2,NULL),(114,84,87,2,NULL),(115,93,59,2,NULL),(116,1,3,2,NULL),(117,120,65,2,NULL),(118,6,3,2,NULL),(119,85,53,2,NULL),(120,3,3,2,NULL),(121,91,65,2,NULL),(122,4,3,2,NULL),(123,103,65,2,NULL),(124,118,65,2,NULL),(125,102,88,2,NULL),(126,105,84,2,NULL),(127,109,67,2,NULL),(128,131,74,2,NULL),(129,108,69,2,NULL),(130,92,79,2,NULL),(131,98,72,2,NULL),(132,99,72,2,NULL),(133,114,72,2,NULL),(134,117,72,2,NULL),(135,125,72,2,NULL),(136,129,99,2,NULL),(137,132,72,2,NULL),(138,134,72,2,NULL),(139,87,69,2,NULL),(140,101,82,2,NULL),(141,106,109,2,NULL),(142,111,86,2,NULL),(143,89,94,2,NULL),(144,95,92,2,NULL),(145,119,95,2,NULL),(146,112,77,2,NULL),(147,94,102,2,NULL),(148,122,108,2,NULL),(149,90,110,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (18,'android.permission.ACCESS_COARSE_LOCATION'),(8,'android.permission.ACCESS_FINE_LOCATION'),(21,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(6,'android.permission.ACCESS_NETWORK_STATE'),(9,'android.permission.ACCESS_WIFI_STATE'),(14,'android.permission.CHANGE_NETWORK_STATE'),(19,'android.permission.GET_ACCOUNTS'),(4,'android.permission.INTERNET'),(12,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(7,'android.permission.PROCESS_OUTGOING_CALLS'),(1,'android.permission.READ_PHONE_STATE'),(13,'android.permission.READ_SMS'),(2,'android.permission.RECEIVE_BOOT_COMPLETED'),(5,'android.permission.RECEIVE_SMS'),(15,'android.permission.RECORD_AUDIO'),(3,'android.permission.SEND_SMS'),(17,'android.permission.SET_WALLPAPER'),(22,'android.permission.WAKE_LOCK'),(10,'android.permission.WRITE_EXTERNAL_STORAGE'),(11,'android.permission.WRITE_SMS'),(23,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(20,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(16,'com.android.launcher.permission.INSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'smsto://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'smsto://(.*)',NULL,NULL,NULL),(3,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(4,NULL,NULL,'http://www.anxin360.com/m',NULL,NULL,NULL),(5,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(6,NULL,NULL,'http://www.anxin360.com/m',NULL,NULL,NULL),(7,NULL,NULL,'http://www.anxin360.com/m',NULL,NULL,NULL),(8,NULL,NULL,'smsto://(.*)',NULL,NULL,NULL),(9,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(10,NULL,NULL,'content://sms',NULL,NULL,NULL),(11,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(12,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'http://p.anxin360.com/?v=20',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,122,10);
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,2,1),(8,2,2),(9,2,4),(10,2,5),(11,2,6),(12,2,7),(13,2,8),(14,2,9),(15,3,1),(16,3,2),(17,3,3),(18,3,4),(19,3,5),(20,3,6),(21,3,7),(22,3,8),(23,3,9),(24,4,1),(25,4,2),(26,4,4),(27,4,5),(28,4,6),(29,4,7),(30,4,8),(31,4,9),(32,4,10),(33,4,11),(34,4,12),(35,4,13),(36,4,14),(37,4,15),(38,5,1),(39,5,2),(40,5,4),(41,5,6),(42,5,8),(43,5,10),(44,5,17),(45,5,16),(46,5,19),(47,5,18),(48,5,21),(49,5,20),(50,5,23),(51,5,22),(52,6,1),(53,6,2),(54,6,4),(55,6,6),(56,6,8),(57,6,10),(58,6,17),(59,6,16),(60,6,19),(61,6,18),(62,6,21),(63,6,22);
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

-- Dump completed on 2015-10-12  3:31:38
