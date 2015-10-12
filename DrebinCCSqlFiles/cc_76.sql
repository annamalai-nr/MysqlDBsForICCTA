-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_76
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
INSERT INTO `ActionStrings` VALUES (5,'SMS_SENT'),(4,'android.intent.action.BOOT_COMPLETED'),(12,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(8,'android.intent.action.NEW_OUTGOING_CALL'),(9,'android.intent.action.PHONE_STATE'),(11,'android.intent.action.SENDTO'),(10,'android.intent.action.VIEW'),(3,'android.provider.Telephony.SMS_RECEIVED'),(6,'com.android.vending.INSTALL_REFERRER'),(2,'cooshare.zeno.tinygame.lovetrap.core'),(7,'net.mujee.www.core');
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
INSERT INTO `Applications` VALUES (1,'cooshare.zeno.tinygame.lovetrap',1),(2,'com.flashp',1),(3,'net.mujee.www',8),(4,'com.cooshare.www.httpconn',15),(5,'com.cooshare.www.httpconn',1),(6,'dapp.text.bomber',9);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(3,'android.intent.category.HOME'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'cooshare.zeno.tinygame.lovetrap.welcome'),(2,1,'cooshare.zeno.tinygame.lovetrap.ZChess'),(3,1,'cooshare.zeno.tinygame.lovetrap.core'),(4,2,'com.flashp.StartActivity'),(5,2,'com.flashp.StartActivity'),(6,1,'cooshare.zeno.tinygame.lovetrap.SMSSrv'),(7,2,'com.flashp.FlashService'),(8,2,'com.flashp.FlashService'),(9,2,'com.flashp.FlashReceiver'),(10,2,'com.flashp.SMSReceiver'),(11,5,'com.cooshare.www.httpconn.Home'),(12,3,'net.mujee.www.Home'),(13,5,'com.cooshare.www.httpconn.HomeLogin'),(14,4,'com.cooshare.www.httpconn.HomeLogin'),(15,5,'com.cooshare.www.httpconn.BoundPhone'),(16,3,'net.mujee.www.HomeLogin'),(17,5,'com.cooshare.www.httpconn.Index'),(18,4,'com.cooshare.www.httpconn.Home'),(19,3,'net.mujee.www.BoundPhone'),(20,5,'com.cooshare.www.httpconn.MyLocation'),(21,4,'com.cooshare.www.httpconn.BoundPhone'),(22,3,'net.mujee.www.Index'),(23,5,'com.cooshare.www.httpconn.SendSMS'),(24,6,'com.admob.android.ads.AdMobActivity'),(25,4,'com.cooshare.www.httpconn.Index'),(26,3,'net.mujee.www.MyLocation'),(27,5,'com.cooshare.www.httpconn.ClickableListItemActivity'),(28,6,'dapp.text.bomber.TextBomber'),(29,4,'com.cooshare.www.httpconn.MyLocation'),(30,3,'net.mujee.www.SendSMS'),(31,5,'com.cooshare.www.httpconn.LifeSearch'),(32,4,'com.cooshare.www.httpconn.SendSMS'),(33,3,'net.mujee.www.ClickableListItemActivity'),(34,5,'com.cooshare.www.httpconn.Map'),(35,2,'com.flashp.FlashService$2'),(36,6,'dapp.text.bomber.HistoryActivity'),(37,4,'com.cooshare.www.httpconn.ClickableListItemActivity'),(38,3,'net.mujee.www.LifeSearch'),(39,5,'com.cooshare.www.httpconn.LifeSearchN'),(40,6,'com.admob.android.ads.analytics.InstallReceiver'),(41,4,'com.cooshare.www.httpconn.LifeSearch'),(42,3,'net.mujee.www.Map'),(43,5,'com.cooshare.www.httpconn.ClickableListItemActivityN'),(44,4,'com.cooshare.www.httpconn.Map'),(45,3,'net.mujee.www.LifeSearchN'),(46,5,'com.cooshare.www.httpconn.Help'),(47,4,'com.cooshare.www.httpconn.LifeSearchN'),(48,3,'net.mujee.www.ClickableListItemActivityN'),(49,5,'com.cooshare.www.httpconn.AddFriend'),(50,6,'dapp.text.bomber.TranslateProvider'),(51,4,'com.cooshare.www.httpconn.ClickableListItemActivityN'),(52,3,'net.mujee.www.Help'),(53,5,'com.cooshare.www.httpconn.ClickableListItemActivityF'),(54,4,'com.cooshare.www.httpconn.Help'),(55,3,'net.mujee.www.AddFriend'),(56,5,'com.cooshare.www.httpconn.ClickableListItemActivityP'),(57,4,'com.cooshare.www.httpconn.AddFriend'),(58,3,'net.mujee.www.ClickableListItemActivityF'),(59,5,'com.cooshare.www.httpconn.PSettings'),(60,4,'com.cooshare.www.httpconn.ClickableListItemActivityF'),(61,3,'net.mujee.www.ClickableListItemActivityP'),(62,5,'com.cooshare.www.httpconn.ACDetail'),(63,4,'com.cooshare.www.httpconn.ClickableListItemActivityP'),(64,3,'net.mujee.www.PSettings'),(65,5,'com.cooshare.www.httpconn.SNDetail'),(66,4,'com.cooshare.www.httpconn.PSettings'),(67,3,'net.mujee.www.ACDetail'),(68,5,'com.cooshare.www.httpconn.PSMFavorite'),(69,4,'com.cooshare.www.httpconn.ACDetail'),(70,3,'net.mujee.www.SNDetail'),(71,5,'com.cooshare.www.httpconn.NotifyBox'),(72,4,'com.cooshare.www.httpconn.SNDetail'),(73,3,'net.mujee.www.PSMFavorite'),(74,5,'com.cooshare.www.httpconn.ShopDetails'),(75,4,'com.cooshare.www.httpconn.PSMFavorite'),(76,3,'net.mujee.www.NotifyBox'),(77,5,'com.cooshare.www.httpconn.ClickableListItemActivityChecked'),(78,4,'com.cooshare.www.httpconn.NotifyBox'),(79,3,'net.mujee.www.ShopDetails'),(80,5,'com.cooshare.www.httpconn.ClickableListItemActivityNews'),(81,4,'com.cooshare.www.httpconn.ShopDetails'),(82,3,'net.mujee.www.ClickableListItemActivityChecked'),(83,5,'com.cooshare.www.httpconn.ClickableListItemActivityTalk'),(84,4,'com.cooshare.www.httpconn.ClickableListItemActivityChecked'),(85,3,'net.mujee.www.ClickableListItemActivityNews'),(86,5,'com.cooshare.www.httpconn.ClickableListItemActivityXBox'),(87,4,'com.cooshare.www.httpconn.ClickableListItemActivityNews'),(88,3,'net.mujee.www.ClickableListItemActivityTalk'),(89,5,'com.cooshare.www.httpconn.CreateTalk'),(90,4,'com.cooshare.www.httpconn.ClickableListItemActivityTalk'),(91,3,'net.mujee.www.ClickableListItemActivityXBox'),(92,5,'com.cooshare.www.httpconn.NewsDetails'),(93,4,'com.cooshare.www.httpconn.ClickableListItemActivityXBox'),(94,3,'net.mujee.www.CreateTalk'),(95,5,'com.cooshare.www.httpconn.TalkDetail'),(96,4,'com.cooshare.www.httpconn.CreateTalk'),(97,3,'net.mujee.www.NewsDetails'),(98,5,'com.cooshare.www.httpconn.XpBoxTip'),(99,4,'com.cooshare.www.httpconn.NewsDetails'),(100,3,'net.mujee.www.TalkDetail'),(101,5,'com.cooshare.www.httpconn.NetworkTS'),(102,4,'com.cooshare.www.httpconn.TalkDetail'),(103,3,'net.mujee.www.XpBoxTip'),(104,5,'com.cooshare.www.httpconn.ClickableListItemActivityFBN'),(105,4,'com.cooshare.www.httpconn.XpBoxTip'),(106,3,'net.mujee.www.NetworkTS'),(107,5,'com.cooshare.www.httpconn.FindUserByName'),(108,4,'com.cooshare.www.httpconn.NetworkTS'),(109,3,'net.mujee.www.ClickableListItemActivityFBN'),(110,5,'com.cooshare.www.httpconn.core'),(111,4,'com.cooshare.www.httpconn.ClickableListItemActivityFBN'),(112,3,'net.mujee.www.FindUserByName'),(113,4,'com.cooshare.www.httpconn.FindUserByName'),(114,3,'net.mujee.www.core'),(115,4,'com.cooshare.www.httpconn.core'),(116,4,'com.cooshare.www.httpconn.AutoSrv'),(117,3,'net.mujee.www.SMSSrv'),(118,3,'net.mujee.www.TeleSrv'),(119,4,'com.cooshare.www.httpconn.SMSSrv'),(120,4,'com.cooshare.www.httpconn.TeleSrv'),(121,3,'net.mujee.www.AutoSrv'),(122,6,'dapp.text.bomber.HistoryHelper'),(123,5,'com.cooshare.www.httpconn.Index$3'),(124,5,'com.cooshare.www.httpconn.ShopDetails$5'),(125,5,'com.cooshare.www.httpconn.Index$4'),(126,5,'com.cooshare.www.httpconn.Index$5'),(127,5,'com.cooshare.www.httpconn.ShopDetails$4'),(128,5,'com.cooshare.www.httpconn.ShopDetails$6'),(129,3,'net.mujee.www.Index$5'),(130,3,'net.mujee.www.Index$4'),(131,4,'com.cooshare.www.httpconn.Index$3'),(132,3,'net.mujee.www.Index$3'),(133,4,'com.cooshare.www.httpconn.ShopDetails$6'),(134,4,'com.cooshare.www.httpconn.Index$5'),(135,4,'com.cooshare.www.httpconn.ShopDetails$4'),(136,3,'net.mujee.www.ShopDetails$6'),(137,3,'net.mujee.www.ShopDetails$5'),(138,3,'net.mujee.www.ShopDetails$4'),(139,4,'com.cooshare.www.httpconn.ShopDetails$5'),(140,4,'com.cooshare.www.httpconn.Index$4');
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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,6,'pdus'),(2,10,'pdus'),(3,24,'p'),(4,24,'t'),(5,24,'c'),(6,24,'ad'),(7,24,'a'),(8,24,'si'),(9,24,'su'),(10,24,'mi'),(11,24,'sin'),(12,24,'rd'),(13,24,'ru'),(14,24,'json'),(15,24,'oi'),(16,28,'numbers'),(17,24,'tr'),(18,28,'contact'),(19,24,'int'),(20,24,'u'),(21,28,'message'),(22,40,'ADMOB_PUBLISHER_ID'),(23,40,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(24,24,'msm'),(25,24,'cs'),(26,24,'or'),(27,24,'nosk'),(28,24,'$'),(29,24,'s'),(30,24,'sku'),(31,40,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(32,24,'cbo'),(33,24,'au'),(34,24,'o'),(35,24,'sc'),(36,24,'skd'),(37,40,'referrer'),(38,24,'sd'),(39,40,'(.*)'),(40,24,'b'),(41,24,'ap'),(42,95,'talkdetailspage'),(43,74,'shopdetails'),(44,83,'talkdetails'),(45,43,'ServiceName'),(46,71,'nfcontents'),(47,27,'ServiceCls'),(48,98,'nfcontents'),(49,56,'friendid'),(50,15,'pendingphones'),(51,92,'newsid'),(52,89,'ctinfo'),(53,35,'maplatlng'),(54,104,'name'),(55,42,'maplatlng'),(56,118,'android.intent.extra.PHONE_NUMBER'),(57,100,'talkdetailspage'),(58,19,'pendingphones'),(59,103,'nfcontents'),(60,61,'friendid'),(61,76,'nfcontents'),(62,33,'ServiceCls'),(63,97,'newsid'),(64,109,'name'),(65,48,'ServiceName'),(66,90,'talkdetails'),(67,105,'nfcontents'),(68,96,'ctinfo'),(69,88,'talkdetails'),(70,111,'name'),(71,94,'ctinfo'),(72,79,'shopdetails'),(73,118,'incoming_number'),(74,78,'nfcontents'),(75,44,'maplatlng'),(76,102,'talkdetailspage'),(77,21,'pendingphones'),(78,120,'incoming_number'),(79,117,'pdus'),(80,81,'shopdetails'),(81,51,'ServiceName'),(82,63,'friendid'),(83,37,'ServiceCls'),(84,120,'android.intent.extra.PHONE_NUMBER'),(85,99,'newsid'),(86,119,'pdus');
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
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'s',1,NULL,NULL),(4,5,'a',1,NULL,NULL),(5,4,'a',1,NULL,NULL),(6,6,'r',1,NULL,NULL),(7,7,'s',0,NULL,NULL),(8,8,'s',0,NULL,NULL),(9,9,'r',1,8,NULL),(10,10,'r',1,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',1,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,35,'r',1,NULL,NULL),(35,34,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'r',1,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,50,'p',0,NULL,NULL),(50,49,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,71,'a',0,NULL,NULL),(72,72,'a',0,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,74,'a',0,NULL,NULL),(75,75,'a',0,NULL,NULL),(76,76,'a',0,NULL,NULL),(77,77,'a',0,NULL,NULL),(78,78,'a',0,NULL,NULL),(79,79,'a',0,NULL,NULL),(80,80,'a',0,NULL,NULL),(81,81,'a',0,NULL,NULL),(82,82,'a',0,NULL,NULL),(83,83,'a',0,NULL,NULL),(84,84,'a',0,NULL,NULL),(85,85,'a',0,NULL,NULL),(86,86,'a',0,NULL,NULL),(87,87,'a',0,NULL,NULL),(88,88,'a',0,NULL,NULL),(89,89,'a',0,NULL,NULL),(90,90,'a',0,NULL,NULL),(91,91,'a',0,NULL,NULL),(92,92,'a',0,NULL,NULL),(93,93,'a',0,NULL,NULL),(94,94,'a',0,NULL,NULL),(95,95,'a',0,NULL,NULL),(96,96,'a',0,NULL,NULL),(97,97,'a',0,NULL,NULL),(98,98,'a',0,NULL,NULL),(99,99,'a',0,NULL,NULL),(100,100,'a',0,NULL,NULL),(101,101,'a',0,NULL,NULL),(102,102,'a',0,NULL,NULL),(103,103,'a',0,NULL,NULL),(104,104,'a',0,NULL,NULL),(105,105,'a',0,NULL,NULL),(106,106,'a',0,NULL,NULL),(107,107,'a',0,NULL,NULL),(108,108,'a',0,NULL,NULL),(109,109,'a',0,NULL,NULL),(110,110,'s',0,NULL,NULL),(111,111,'a',0,NULL,NULL),(112,112,'a',0,NULL,NULL),(113,113,'a',0,NULL,NULL),(114,114,'s',1,NULL,NULL),(115,115,'s',0,NULL,NULL),(116,116,'r',1,NULL,NULL),(117,117,'r',1,NULL,NULL),(118,118,'r',1,NULL,NULL),(119,119,'r',1,NULL,NULL),(120,120,'r',1,NULL,NULL),(121,121,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,1),(3,3,9),(4,4,5),(5,5,4),(6,6,9),(7,7,49),(8,8,49),(9,9,49),(10,10,28),(11,11,28),(12,12,36),(13,13,98),(14,14,23),(15,15,31),(16,16,17),(17,17,74),(18,18,17),(19,19,31),(20,20,31),(21,21,59),(22,22,59),(23,23,39),(24,24,31),(25,25,13),(26,26,17),(27,27,17),(28,28,11),(29,29,74),(30,30,11),(31,31,11),(32,32,20),(33,33,35),(34,34,101),(35,35,15),(36,36,31),(37,37,17),(38,38,17),(39,39,59),(40,40,31),(41,41,17),(42,42,107),(43,43,31),(44,44,17),(45,45,50),(46,46,17),(47,47,74),(48,48,31),(49,49,53),(50,50,74),(51,51,31),(52,52,79),(53,53,38),(54,54,106),(55,55,22),(56,56,16),(57,57,22),(58,58,64),(59,59,22),(60,60,22),(61,61,12),(62,62,22),(63,63,58),(64,64,112),(65,65,81),(66,66,38),(67,67,41),(68,68,19),(69,69,108),(70,70,64),(71,71,105),(72,72,22),(73,73,47),(74,74,30),(75,75,18),(76,76,38),(77,77,25),(78,78,12),(79,79,113),(80,80,22),(81,81,41),(82,82,26),(83,83,25),(84,84,103),(85,85,41),(86,86,22),(87,87,22),(88,88,81),(89,89,116),(90,90,38),(91,91,32),(92,92,42),(93,93,38),(94,94,25),(95,95,38),(96,96,25),(97,97,55),(98,98,38),(99,99,18),(100,100,121),(101,101,41),(102,102,38),(103,103,21),(104,104,38),(105,105,44),(106,106,64),(107,107,60),(108,108,12),(109,109,81),(110,110,79),(111,111,14),(112,112,79),(113,113,14),(114,114,79),(115,115,41),(116,116,41),(117,117,45),(118,118,57),(119,119,66),(120,120,25),(121,121,81),(122,122,66),(123,123,25),(124,124,18),(125,125,29),(126,126,41),(127,127,25),(128,128,25),(129,129,66),(130,130,41),(131,131,25),(132,132,41);
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
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<cooshare.zeno.tinygame.lovetrap.welcome: void launchMenu(java.lang.Class)>',4,'a',NULL),(2,1,'<cooshare.zeno.tinygame.lovetrap.welcome: void startService()>',3,'s',NULL),(3,9,'<com.flashp.FlashReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(4,4,'<com.flashp.StartActivity: void onResume()>',7,'s',NULL),(5,4,'<com.flashp.StartActivity: void onResume()>',7,'s',NULL),(6,9,'<com.flashp.FlashReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(7,50,'<dapp.text.bomber.TranslateProvider: int delete(android.net.Uri,java.lang.String,java.lang.String[])>',19,'p',0),(8,50,'<dapp.text.bomber.TranslateProvider: android.net.Uri insertTemplate(android.net.Uri,android.content.ContentValues)>',20,'p',NULL),(9,50,'<dapp.text.bomber.TranslateProvider: int update(android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',20,'p',0),(10,28,'<dapp.text.bomber.TextBomber: boolean onOptionsItemSelected(android.view.MenuItem)>',16,'a',NULL),(11,28,'<dapp.text.bomber.TextBomber: boolean onOptionsItemSelected(android.view.MenuItem)>',26,'a',NULL),(12,122,'<dapp.text.bomber.HistoryHelper: void deleteHistory(android.content.Context,java.lang.String)>',8,'p',NULL),(13,98,'<com.cooshare.www.httpconn.XpBoxTip: void ButtonHandlers(android.view.View)>',26,'a',NULL),(14,23,'<com.cooshare.www.httpconn.SendSMS: void ButtonHandlers(android.view.View)>',21,'a',NULL),(15,31,'<com.cooshare.www.httpconn.LifeSearch: void ButtonHandlers(android.view.View)>',73,'a',NULL),(16,123,'<com.cooshare.www.httpconn.Index$3: void onClick(android.view.View)>',6,'a',NULL),(17,74,'<com.cooshare.www.httpconn.ShopDetails: void OpenMap(java.lang.String,java.lang.String)>',17,'a',NULL),(18,17,'<com.cooshare.www.httpconn.Index: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(19,31,'<com.cooshare.www.httpconn.LifeSearch: void ButtonHandlers(android.view.View)>',89,'a',NULL),(20,31,'<com.cooshare.www.httpconn.LifeSearch: void ButtonHandlers(android.view.View)>',103,'a',NULL),(21,59,'<com.cooshare.www.httpconn.PSettings: void OnClick(android.view.View)>',17,'a',NULL),(22,59,'<com.cooshare.www.httpconn.PSettings: void OnClick(android.view.View)>',31,'a',NULL),(23,39,'<com.cooshare.www.httpconn.LifeSearchN: void ButtonHandlers(android.view.View)>',43,'a',NULL),(24,31,'<com.cooshare.www.httpconn.LifeSearch: void ButtonHandlers(android.view.View)>',99,'a',NULL),(25,13,'<com.cooshare.www.httpconn.HomeLogin: void Reg()>',3,'a',NULL),(26,17,'<com.cooshare.www.httpconn.Index: void startService()>',3,'s',NULL),(27,17,'<com.cooshare.www.httpconn.Index: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(28,11,'<com.cooshare.www.httpconn.Home: void GoToMain()>',13,'a',NULL),(29,124,'<com.cooshare.www.httpconn.ShopDetails$5: void onClick(android.view.View)>',24,'a',NULL),(30,11,'<com.cooshare.www.httpconn.Home: void onCreate(android.os.Bundle)>',26,'a',NULL),(31,11,'<com.cooshare.www.httpconn.Home: void Login()>',3,'a',NULL),(32,20,'<com.cooshare.www.httpconn.MyLocation: boolean onOptionsItemSelected(android.view.MenuItem)>',39,'a',NULL),(33,34,'<com.cooshare.www.httpconn.Map: boolean onOptionsItemSelected(android.view.MenuItem)>',35,'a',NULL),(34,101,'<com.cooshare.www.httpconn.NetworkTS: void ButtonHandlers(android.view.View)>',9,'a',NULL),(35,15,'<com.cooshare.www.httpconn.BoundPhone: void gotoIndex()>',13,'a',NULL),(36,31,'<com.cooshare.www.httpconn.LifeSearch: void ButtonHandlers(android.view.View)>',83,'a',NULL),(37,125,'<com.cooshare.www.httpconn.Index$4: void onClick(android.view.View)>',6,'a',NULL),(38,17,'<com.cooshare.www.httpconn.Index: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(39,59,'<com.cooshare.www.httpconn.PSettings: void OnClick(android.view.View)>',24,'a',NULL),(40,31,'<com.cooshare.www.httpconn.LifeSearch: void ButtonHandlers(android.view.View)>',22,'a',NULL),(41,17,'<com.cooshare.www.httpconn.Index: boolean onOptionsItemSelected(android.view.MenuItem)>',37,'a',NULL),(42,107,'<com.cooshare.www.httpconn.FindUserByName: void ButtonHandlers(android.view.View)>',21,'a',NULL),(43,31,'<com.cooshare.www.httpconn.LifeSearch: void ButtonHandlers(android.view.View)>',107,'a',NULL),(44,126,'<com.cooshare.www.httpconn.Index$5: void onClick(android.view.View)>',10,'a',NULL),(45,49,'<com.cooshare.www.httpconn.AddFriend: void ButtonHandlers(android.view.View)>',58,'a',NULL),(46,17,'<com.cooshare.www.httpconn.Index: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(47,127,'<com.cooshare.www.httpconn.ShopDetails$4: void onClick(android.view.View)>',31,'a',NULL),(48,31,'<com.cooshare.www.httpconn.LifeSearch: void ButtonHandlers(android.view.View)>',63,'a',NULL),(49,53,'<com.cooshare.www.httpconn.ClickableListItemActivityF: void FinishAct()>',3,'a',NULL),(50,128,'<com.cooshare.www.httpconn.ShopDetails$6: void onClick(android.view.View)>',24,'a',NULL),(51,31,'<com.cooshare.www.httpconn.LifeSearch: void ButtonHandlers(android.view.View)>',53,'a',NULL),(52,79,'<net.mujee.www.ShopDetails: void OpenMap(java.lang.String,java.lang.String)>',17,'a',NULL),(53,38,'<net.mujee.www.LifeSearch: void ButtonHandlers(android.view.View)>',63,'a',NULL),(54,106,'<net.mujee.www.NetworkTS: void ButtonHandlers(android.view.View)>',9,'a',NULL),(55,22,'<net.mujee.www.Index: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(56,16,'<net.mujee.www.HomeLogin: void Reg()>',3,'a',NULL),(57,22,'<net.mujee.www.Index: boolean onOptionsItemSelected(android.view.MenuItem)>',37,'a',NULL),(58,64,'<net.mujee.www.PSettings: void OnClick(android.view.View)>',17,'a',NULL),(59,129,'<net.mujee.www.Index$5: void onClick(android.view.View)>',10,'a',NULL),(60,130,'<net.mujee.www.Index$4: void onClick(android.view.View)>',6,'a',NULL),(61,12,'<net.mujee.www.Home: void GoToMain()>',13,'a',NULL),(62,22,'<net.mujee.www.Index: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(63,58,'<net.mujee.www.ClickableListItemActivityF: void FinishAct()>',3,'a',NULL),(64,112,'<net.mujee.www.FindUserByName: void ButtonHandlers(android.view.View)>',21,'a',NULL),(65,81,'<com.cooshare.www.httpconn.ShopDetails: void OpenMap(java.lang.String,java.lang.String)>',17,'a',NULL),(66,38,'<net.mujee.www.LifeSearch: void ButtonHandlers(android.view.View)>',89,'a',NULL),(67,41,'<com.cooshare.www.httpconn.LifeSearch: void ButtonHandlers(android.view.View)>',53,'a',NULL),(68,19,'<net.mujee.www.BoundPhone: void gotoIndex()>',13,'a',NULL),(69,108,'<com.cooshare.www.httpconn.NetworkTS: void ButtonHandlers(android.view.View)>',9,'a',NULL),(70,64,'<net.mujee.www.PSettings: void OnClick(android.view.View)>',31,'a',NULL),(71,105,'<com.cooshare.www.httpconn.XpBoxTip: void ButtonHandlers(android.view.View)>',26,'a',NULL),(72,22,'<net.mujee.www.Index: void startService()>',3,'s',NULL),(73,47,'<com.cooshare.www.httpconn.LifeSearchN: void ButtonHandlers(android.view.View)>',43,'a',NULL),(74,30,'<net.mujee.www.SendSMS: void ButtonHandlers(android.view.View)>',21,'a',NULL),(75,18,'<com.cooshare.www.httpconn.Home: void Login()>',3,'a',NULL),(76,38,'<net.mujee.www.LifeSearch: void ButtonHandlers(android.view.View)>',99,'a',NULL),(77,131,'<com.cooshare.www.httpconn.Index$3: void onClick(android.view.View)>',6,'a',NULL),(78,12,'<net.mujee.www.Home: void onCreate(android.os.Bundle)>',43,'a',NULL),(79,113,'<com.cooshare.www.httpconn.FindUserByName: void ButtonHandlers(android.view.View)>',21,'a',NULL),(80,132,'<net.mujee.www.Index$3: void onClick(android.view.View)>',6,'a',NULL),(81,41,'<com.cooshare.www.httpconn.LifeSearch: void ButtonHandlers(android.view.View)>',83,'a',NULL),(82,26,'<net.mujee.www.MyLocation: boolean onOptionsItemSelected(android.view.MenuItem)>',39,'a',NULL),(83,25,'<com.cooshare.www.httpconn.Index: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(84,103,'<net.mujee.www.XpBoxTip: void ButtonHandlers(android.view.View)>',26,'a',NULL),(85,41,'<com.cooshare.www.httpconn.LifeSearch: void ButtonHandlers(android.view.View)>',103,'a',NULL),(86,22,'<net.mujee.www.Index: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(87,22,'<net.mujee.www.Index: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(88,133,'<com.cooshare.www.httpconn.ShopDetails$6: void onClick(android.view.View)>',24,'a',NULL),(89,116,'<com.cooshare.www.httpconn.AutoSrv: void onReceive(android.content.Context,android.content.Intent)>',13,'s',NULL),(90,38,'<net.mujee.www.LifeSearch: void ButtonHandlers(android.view.View)>',53,'a',NULL),(91,32,'<com.cooshare.www.httpconn.SendSMS: void ButtonHandlers(android.view.View)>',21,'a',NULL),(92,42,'<net.mujee.www.Map: boolean onOptionsItemSelected(android.view.MenuItem)>',35,'a',NULL),(93,38,'<net.mujee.www.LifeSearch: void ButtonHandlers(android.view.View)>',22,'a',NULL),(94,25,'<com.cooshare.www.httpconn.Index: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(95,38,'<net.mujee.www.LifeSearch: void ButtonHandlers(android.view.View)>',83,'a',NULL),(96,134,'<com.cooshare.www.httpconn.Index$5: void onClick(android.view.View)>',10,'a',NULL),(97,55,'<net.mujee.www.AddFriend: void ButtonHandlers(android.view.View)>',58,'a',NULL),(98,38,'<net.mujee.www.LifeSearch: void ButtonHandlers(android.view.View)>',73,'a',NULL),(99,18,'<com.cooshare.www.httpconn.Home: void onCreate(android.os.Bundle)>',28,'a',NULL),(100,121,'<net.mujee.www.AutoSrv: void onReceive(android.content.Context,android.content.Intent)>',20,'s',NULL),(101,41,'<com.cooshare.www.httpconn.LifeSearch: void ButtonHandlers(android.view.View)>',89,'a',NULL),(102,38,'<net.mujee.www.LifeSearch: void ButtonHandlers(android.view.View)>',107,'a',NULL),(103,21,'<com.cooshare.www.httpconn.BoundPhone: void gotoIndex()>',13,'a',NULL),(104,38,'<net.mujee.www.LifeSearch: void ButtonHandlers(android.view.View)>',103,'a',NULL),(105,44,'<com.cooshare.www.httpconn.Map: boolean onOptionsItemSelected(android.view.MenuItem)>',35,'a',NULL),(106,64,'<net.mujee.www.PSettings: void OnClick(android.view.View)>',24,'a',NULL),(107,60,'<com.cooshare.www.httpconn.ClickableListItemActivityF: void FinishAct()>',3,'a',NULL),(108,12,'<net.mujee.www.Home: void Login()>',3,'a',NULL),(109,135,'<com.cooshare.www.httpconn.ShopDetails$4: void onClick(android.view.View)>',31,'a',NULL),(110,136,'<net.mujee.www.ShopDetails$6: void onClick(android.view.View)>',24,'a',NULL),(111,14,'<com.cooshare.www.httpconn.HomeLogin: void Reg()>',3,'a',NULL),(112,137,'<net.mujee.www.ShopDetails$5: void onClick(android.view.View)>',24,'a',NULL),(113,14,'<com.cooshare.www.httpconn.HomeLogin: void onCreate(android.os.Bundle)>',26,'a',NULL),(114,138,'<net.mujee.www.ShopDetails$4: void onClick(android.view.View)>',31,'a',NULL),(115,41,'<com.cooshare.www.httpconn.LifeSearch: void ButtonHandlers(android.view.View)>',107,'a',NULL),(116,41,'<com.cooshare.www.httpconn.LifeSearch: void ButtonHandlers(android.view.View)>',63,'a',NULL),(117,45,'<net.mujee.www.LifeSearchN: void ButtonHandlers(android.view.View)>',43,'a',NULL),(118,57,'<com.cooshare.www.httpconn.AddFriend: void ButtonHandlers(android.view.View)>',58,'a',NULL),(119,66,'<com.cooshare.www.httpconn.PSettings: void OnClick(android.view.View)>',31,'a',NULL),(120,25,'<com.cooshare.www.httpconn.Index: void startService()>',3,'s',NULL),(121,139,'<com.cooshare.www.httpconn.ShopDetails$5: void onClick(android.view.View)>',24,'a',NULL),(122,66,'<com.cooshare.www.httpconn.PSettings: void OnClick(android.view.View)>',17,'a',NULL),(123,25,'<com.cooshare.www.httpconn.Index: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(124,18,'<com.cooshare.www.httpconn.Home: void GoToMain()>',13,'a',NULL),(125,29,'<com.cooshare.www.httpconn.MyLocation: boolean onOptionsItemSelected(android.view.MenuItem)>',39,'a',NULL),(126,41,'<com.cooshare.www.httpconn.LifeSearch: void ButtonHandlers(android.view.View)>',73,'a',NULL),(127,140,'<com.cooshare.www.httpconn.Index$4: void onClick(android.view.View)>',6,'a',NULL),(128,25,'<com.cooshare.www.httpconn.Index: boolean onOptionsItemSelected(android.view.MenuItem)>',51,'a',NULL),(129,66,'<com.cooshare.www.httpconn.PSettings: void OnClick(android.view.View)>',24,'a',NULL),(130,41,'<com.cooshare.www.httpconn.LifeSearch: void ButtonHandlers(android.view.View)>',99,'a',NULL),(131,25,'<com.cooshare.www.httpconn.Index: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(132,41,'<com.cooshare.www.httpconn.LifeSearch: void ButtonHandlers(android.view.View)>',22,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,7,10),(2,10,11),(3,25,12),(4,30,10),(5,50,10),(6,65,10),(7,70,11),(8,87,11),(9,108,12),(10,117,12);
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
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'(.*)'),(2,2,'cooshare/zeno/tinygame/lovetrap/core'),(3,3,'com/flashp/FlashService'),(4,4,'com/flashp/FlashService'),(5,5,'com/flashp/FlashService'),(6,6,'com/flashp/FlashService'),(7,8,'dapp/text/bomber/HistoryActivity'),(8,9,'com/cooshare/www/httpconn/ClickableListItemActivityXBox'),(9,11,'com/cooshare/www/httpconn/ClickableListItemActivity'),(10,12,'com/cooshare/www/httpconn/ClickableListItemActivityXBox'),(11,13,'com/cooshare/www/httpconn/Map'),(12,14,'com/cooshare/www/httpconn/ClickableListItemActivityF'),(13,15,'com/cooshare/www/httpconn/ClickableListItemActivity'),(14,16,'com/cooshare/www/httpconn/LifeSearchN'),(15,17,'com/cooshare/www/httpconn/ACDetail'),(16,18,'com/cooshare/www/httpconn/PSMFavorite'),(17,19,'com/cooshare/www/httpconn/ClickableListItemActivityN'),(18,20,'com/cooshare/www/httpconn/ClickableListItemActivity'),(19,21,'com/cooshare/www/httpconn/Home'),(20,22,'com/cooshare/www/httpconn/core'),(21,23,'com/cooshare/www/httpconn/LifeSearch'),(22,24,'com/cooshare/www/httpconn/Index'),(23,26,'com/cooshare/www/httpconn/Index'),(24,27,'com/cooshare/www/httpconn/HomeLogin'),(25,28,'com/cooshare/www/httpconn/SendSMS'),(26,29,'com/cooshare/www/httpconn/SendSMS'),(27,31,'com/cooshare/www/httpconn/Index'),(28,32,'com/cooshare/www/httpconn/ClickableListItemActivity'),(29,33,'com/cooshare/www/httpconn/ClickableListItemActivityNews'),(30,34,'com/cooshare/www/httpconn/MyLocation'),(31,35,'com/cooshare/www/httpconn/SNDetail'),(32,36,'com/cooshare/www/httpconn/ClickableListItemActivity'),(33,37,'com/cooshare/www/httpconn/PSettings'),(34,38,'com/cooshare/www/httpconn/ClickableListItemActivityFBN'),(35,39,'com/cooshare/www/httpconn/ClickableListItemActivityChecked'),(36,40,'com/cooshare/www/httpconn/ClickableListItemActivityFBN'),(37,41,'com/cooshare/www/httpconn/FindUserByName'),(38,42,'com/cooshare/www/httpconn/Help'),(39,43,'com/cooshare/www/httpconn/ClickableListItemActivityTalk'),(40,44,'com/cooshare/www/httpconn/ClickableListItemActivity'),(41,45,'com/cooshare/www/httpconn/AddFriend'),(42,46,'com/cooshare/www/httpconn/CreateTalk'),(43,47,'com/cooshare/www/httpconn/ClickableListItemActivity'),(44,48,'net/mujee/www/Map'),(45,49,'net/mujee/www/ClickableListItemActivity'),(46,51,'net/mujee/www/ClickableListItemActivityF'),(47,52,'net/mujee/www/Home'),(48,53,'net/mujee/www/PSettings'),(49,54,'net/mujee/www/ACDetail'),(50,55,'net/mujee/www/ClickableListItemActivityFBN'),(51,56,'net/mujee/www/ClickableListItemActivityNews'),(52,57,'net/mujee/www/Index'),(53,58,'net/mujee/www/Help'),(54,59,'net/mujee/www/AddFriend'),(55,60,'net/mujee/www/ClickableListItemActivityFBN'),(56,61,'com/cooshare/www/httpconn/Map'),(57,62,'net/mujee/www/ClickableListItemActivity'),(58,63,'com/cooshare/www/httpconn/ClickableListItemActivity'),(59,64,'net/mujee/www/Index'),(60,66,'net/mujee/www/PSMFavorite'),(61,67,'com/cooshare/www/httpconn/ClickableListItemActivityXBox'),(62,68,'net/mujee/www/core'),(63,69,'com/cooshare/www/httpconn/ClickableListItemActivityN'),(64,71,'com/cooshare/www/httpconn/HomeLogin'),(65,72,'net/mujee/www/ClickableListItemActivity'),(66,73,'com/cooshare/www/httpconn/ClickableListItemActivityXBox'),(67,74,'net/mujee/www/Index'),(68,75,'com/cooshare/www/httpconn/ClickableListItemActivityFBN'),(69,76,'net/mujee/www/ClickableListItemActivityXBox'),(70,77,'com/cooshare/www/httpconn/ClickableListItemActivity'),(71,78,'net/mujee/www/SendSMS'),(72,79,'com/cooshare/www/httpconn/MyLocation'),(73,80,'net/mujee/www/ClickableListItemActivityXBox'),(74,81,'com/cooshare/www/httpconn/LifeSearchN'),(75,82,'net/mujee/www/MyLocation'),(76,83,'net/mujee/www/LifeSearch'),(77,84,'com/cooshare/www/httpconn/CreateTalk'),(78,85,'com/cooshare/www/httpconn/core'),(79,86,'net/mujee/www/ClickableListItemActivity'),(80,88,'net/mujee/www/SendSMS'),(81,90,'com/cooshare/www/httpconn/ClickableListItemActivityF'),(82,89,'net/mujee/www/ClickableListItemActivity'),(83,91,'net/mujee/www/ClickableListItemActivity'),(84,93,'net/mujee/www/FindUserByName'),(85,92,'com/cooshare/www/httpconn/ClickableListItemActivityFBN'),(86,94,'net/mujee/www/ClickableListItemActivity'),(87,95,'com/cooshare/www/httpconn/Index'),(88,96,'net/mujee/www/core'),(89,97,'com/cooshare/www/httpconn/ClickableListItemActivity'),(90,98,'net/mujee/www/ClickableListItemActivityChecked'),(91,99,'com/cooshare/www/httpconn/Index'),(92,100,'net/mujee/www/LifeSearchN'),(93,101,'com/cooshare/www/httpconn/SendSMS'),(94,102,'net/mujee/www/SNDetail'),(95,103,'com/cooshare/www/httpconn/AddFriend'),(96,104,'net/mujee/www/HomeLogin'),(97,105,'com/cooshare/www/httpconn/ClickableListItemActivityTalk'),(98,106,'net/mujee/www/CreateTalk'),(99,107,'com/cooshare/www/httpconn/Home'),(100,109,'com/cooshare/www/httpconn/Index'),(101,111,'com/cooshare/www/httpconn/ClickableListItemActivityChecked'),(102,110,'net/mujee/www/ClickableListItemActivityTalk'),(103,112,'com/cooshare/www/httpconn/ClickableListItemActivity'),(104,113,'net/mujee/www/ClickableListItemActivityN'),(105,114,'com/cooshare/www/httpconn/FindUserByName'),(106,115,'com/cooshare/www/httpconn/PSMFavorite'),(107,116,'com/cooshare/www/httpconn/core'),(108,118,'com/cooshare/www/httpconn/ACDetail'),(109,119,'com/cooshare/www/httpconn/LifeSearch'),(110,120,'com/cooshare/www/httpconn/Index'),(111,121,'com/cooshare/www/httpconn/SendSMS'),(112,122,'com/cooshare/www/httpconn/ClickableListItemActivity'),(113,123,'com/cooshare/www/httpconn/ClickableListItemActivityNews'),(114,124,'com/cooshare/www/httpconn/PSettings'),(115,125,'com/cooshare/www/httpconn/SNDetail'),(116,126,'com/cooshare/www/httpconn/ClickableListItemActivity'),(117,127,'com/cooshare/www/httpconn/Help'),(118,128,'com/cooshare/www/httpconn/ClickableListItemActivity');
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
INSERT INTO `IData` VALUES (1,7,2),(2,10,4),(3,25,5),(4,30,6),(5,50,7),(6,65,8),(7,70,9),(8,87,10),(9,108,11),(10,117,12);
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,10,'sms_body'),(2,11,'ServiceCls'),(3,13,'maplatlng'),(4,15,'ServiceCls'),(5,19,'ServiceName'),(6,20,'ServiceCls'),(7,32,'ServiceCls'),(8,36,'ServiceCls'),(9,38,'name'),(10,40,'name'),(11,43,'talkdetails'),(12,44,'ServiceCls'),(13,46,'ctinfo'),(14,47,'ServiceCls'),(15,48,'maplatlng'),(16,49,'ServiceCls'),(17,55,'name'),(18,60,'name'),(19,61,'maplatlng'),(20,62,'ServiceCls'),(21,63,'ServiceCls'),(22,69,'ServiceName'),(23,70,'sms_body'),(24,72,'ServiceCls'),(25,75,'name'),(26,77,'ServiceCls'),(27,84,'ctinfo'),(28,86,'ServiceCls'),(29,87,'sms_body'),(30,89,'ServiceCls'),(31,91,'ServiceCls'),(32,92,'name'),(33,94,'ServiceCls'),(34,97,'ServiceCls'),(35,105,'talkdetails'),(36,106,'ctinfo'),(37,110,'talkdetails'),(38,112,'ServiceCls'),(39,113,'ServiceName'),(40,122,'ServiceCls'),(41,126,'ServiceCls'),(42,128,'ServiceCls');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,1),(5,5,3),(6,6,4),(7,7,4),(8,8,3),(9,9,3),(10,10,1),(11,11,1),(12,12,1),(13,13,1),(14,14,5),(15,15,6),(16,16,5),(17,17,7),(18,18,4),(19,19,3),(20,20,3),(21,21,9),(22,21,8),(23,22,8),(24,22,9),(25,23,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,4,1),(3,3,1),(4,6,2),(5,7,2),(6,10,1),(7,11,1),(8,12,1),(9,13,1),(10,18,3),(11,23,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'cooshare.zeno.tinygame.lovetrap'),(2,2,'cooshare.zeno.tinygame.lovetrap'),(3,3,'com.flashp'),(4,4,'com.flashp'),(5,5,'com.flashp'),(6,6,'com.flashp'),(7,8,'dapp.text.bomber'),(8,9,'com.cooshare.www.httpconn'),(9,11,'com.cooshare.www.httpconn'),(10,12,'com.cooshare.www.httpconn'),(11,13,'com.cooshare.www.httpconn'),(12,14,'com.cooshare.www.httpconn'),(13,15,'com.cooshare.www.httpconn'),(14,16,'com.cooshare.www.httpconn'),(15,17,'com.cooshare.www.httpconn'),(16,18,'com.cooshare.www.httpconn'),(17,19,'com.cooshare.www.httpconn'),(18,20,'com.cooshare.www.httpconn'),(19,21,'com.cooshare.www.httpconn'),(20,22,'com.cooshare.www.httpconn'),(21,23,'com.cooshare.www.httpconn'),(22,24,'com.cooshare.www.httpconn'),(23,26,'com.cooshare.www.httpconn'),(24,27,'com.cooshare.www.httpconn'),(25,28,'com.cooshare.www.httpconn'),(26,29,'com.cooshare.www.httpconn'),(27,31,'com.cooshare.www.httpconn'),(28,32,'com.cooshare.www.httpconn'),(29,33,'com.cooshare.www.httpconn'),(30,34,'com.cooshare.www.httpconn'),(31,35,'com.cooshare.www.httpconn'),(32,36,'com.cooshare.www.httpconn'),(33,37,'com.cooshare.www.httpconn'),(34,38,'com.cooshare.www.httpconn'),(35,39,'com.cooshare.www.httpconn'),(36,40,'com.cooshare.www.httpconn'),(37,41,'com.cooshare.www.httpconn'),(38,42,'com.cooshare.www.httpconn'),(39,43,'com.cooshare.www.httpconn'),(40,44,'com.cooshare.www.httpconn'),(41,45,'com.cooshare.www.httpconn'),(42,46,'com.cooshare.www.httpconn'),(43,47,'com.cooshare.www.httpconn'),(44,48,'net.mujee.www'),(45,49,'net.mujee.www'),(46,51,'net.mujee.www'),(47,52,'net.mujee.www'),(48,53,'net.mujee.www'),(49,54,'net.mujee.www'),(50,55,'net.mujee.www'),(51,56,'net.mujee.www'),(52,57,'net.mujee.www'),(53,58,'net.mujee.www'),(54,59,'net.mujee.www'),(55,60,'net.mujee.www'),(56,61,'com.cooshare.www.httpconn'),(57,62,'net.mujee.www'),(58,63,'com.cooshare.www.httpconn'),(59,64,'net.mujee.www'),(60,66,'net.mujee.www'),(61,67,'com.cooshare.www.httpconn'),(62,68,'net.mujee.www'),(63,69,'com.cooshare.www.httpconn'),(64,71,'com.cooshare.www.httpconn'),(65,72,'net.mujee.www'),(66,73,'com.cooshare.www.httpconn'),(67,74,'net.mujee.www'),(68,75,'com.cooshare.www.httpconn'),(69,76,'net.mujee.www'),(70,77,'com.cooshare.www.httpconn'),(71,78,'net.mujee.www'),(72,79,'com.cooshare.www.httpconn'),(73,80,'net.mujee.www'),(74,81,'com.cooshare.www.httpconn'),(75,82,'net.mujee.www'),(76,83,'net.mujee.www'),(77,84,'com.cooshare.www.httpconn'),(78,85,'com.cooshare.www.httpconn'),(79,86,'net.mujee.www'),(80,88,'net.mujee.www'),(81,90,'com.cooshare.www.httpconn'),(82,89,'net.mujee.www'),(83,91,'net.mujee.www'),(84,93,'net.mujee.www'),(85,92,'com.cooshare.www.httpconn'),(86,94,'net.mujee.www'),(87,95,'com.cooshare.www.httpconn'),(88,96,'net.mujee.www'),(89,97,'com.cooshare.www.httpconn'),(90,98,'net.mujee.www'),(91,99,'com.cooshare.www.httpconn'),(92,100,'net.mujee.www'),(93,101,'com.cooshare.www.httpconn'),(94,102,'net.mujee.www'),(95,103,'com.cooshare.www.httpconn'),(96,104,'net.mujee.www'),(97,105,'com.cooshare.www.httpconn'),(98,106,'net.mujee.www'),(99,107,'com.cooshare.www.httpconn'),(100,109,'com.cooshare.www.httpconn'),(101,111,'com.cooshare.www.httpconn'),(102,110,'net.mujee.www'),(103,112,'com.cooshare.www.httpconn'),(104,113,'net.mujee.www'),(105,114,'com.cooshare.www.httpconn'),(106,115,'com.cooshare.www.httpconn'),(107,116,'com.cooshare.www.httpconn'),(108,118,'com.cooshare.www.httpconn'),(109,119,'com.cooshare.www.httpconn'),(110,120,'com.cooshare.www.httpconn'),(111,121,'com.cooshare.www.httpconn'),(112,122,'com.cooshare.www.httpconn'),(113,123,'com.cooshare.www.httpconn'),(114,124,'com.cooshare.www.httpconn'),(115,125,'com.cooshare.www.httpconn'),(116,126,'com.cooshare.www.httpconn'),(117,127,'com.cooshare.www.httpconn'),(118,128,'com.cooshare.www.httpconn');
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,3,0),(3,5,0),(4,4,0),(5,6,0),(6,9,0),(7,9,0),(8,10,0),(9,10,0),(10,11,0),(11,12,0),(12,14,0),(13,28,0),(14,34,0),(15,40,0),(16,34,0),(17,114,0),(18,116,0),(19,117,0),(20,119,0),(21,118,0),(22,120,0),(23,121,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,0,0),(6,6,0,0),(7,10,1,0),(8,11,0,0),(9,13,0,0),(10,14,1,0),(11,15,0,0),(12,16,0,0),(13,17,0,0),(14,18,0,0),(15,19,0,0),(16,20,0,0),(17,21,0,0),(18,22,0,0),(19,23,0,0),(20,24,0,0),(21,25,0,0),(22,26,0,0),(23,27,0,0),(24,28,0,0),(25,29,1,0),(26,30,0,0),(27,31,0,0),(28,32,0,0),(29,33,0,0),(30,34,1,0),(31,35,0,0),(32,36,0,0),(33,37,0,0),(34,38,0,0),(35,39,0,0),(36,40,0,0),(37,41,0,0),(38,42,0,0),(39,43,0,0),(40,44,0,0),(41,45,0,0),(42,46,0,0),(43,47,0,0),(44,48,0,0),(45,49,0,0),(46,50,0,0),(47,51,0,0),(48,52,0,0),(49,53,0,0),(50,54,1,0),(51,55,0,0),(52,56,0,0),(53,57,0,0),(54,58,0,0),(55,59,0,0),(56,60,0,0),(57,61,0,0),(58,62,0,0),(59,63,0,0),(60,64,0,0),(61,65,0,0),(62,66,0,0),(63,67,0,0),(64,68,0,0),(65,69,1,0),(66,70,0,0),(67,71,0,0),(68,72,0,0),(69,73,0,0),(70,74,1,0),(71,75,0,0),(72,76,0,0),(73,77,0,0),(74,78,0,0),(75,79,0,0),(76,80,0,0),(77,81,0,0),(78,82,0,0),(79,83,0,0),(80,84,0,0),(81,85,0,0),(82,86,0,0),(83,87,0,0),(84,88,0,0),(85,89,0,0),(86,90,0,0),(87,91,1,0),(88,92,0,0),(89,93,0,0),(90,94,0,0),(91,95,0,0),(92,96,0,0),(93,97,0,0),(94,98,0,0),(95,99,0,0),(96,100,0,0),(97,101,0,0),(98,102,0,0),(99,103,0,0),(100,104,0,0),(101,105,0,0),(102,106,0,0),(103,107,0,0),(104,108,0,0),(105,109,0,0),(106,110,0,0),(107,111,0,0),(108,112,1,0),(109,113,0,0),(110,114,0,0),(111,115,0,0),(112,116,0,0),(113,117,0,0),(114,118,0,0),(115,119,0,0),(116,120,0,0),(117,121,1,0),(118,122,0,0),(119,123,0,0),(120,124,0,0),(121,125,0,0),(122,126,0,0),(123,127,0,0),(124,128,0,0),(125,129,0,0),(126,130,0,0),(127,131,0,0),(128,132,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAuthorities`
--

LOCK TABLES `PAuthorities` WRITE;
/*!40000 ALTER TABLE `PAuthorities` DISABLE KEYS */;
INSERT INTO `PAuthorities` VALUES (1,1,'dapp.text.bomber.Historys');
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (10,'android.permission.ACCESS_FINE_LOCATION'),(5,'android.permission.ACCESS_NETWORK_STATE'),(11,'android.permission.ACCESS_WIFI_STATE'),(3,'android.permission.INTERNET'),(9,'android.permission.PROCESS_OUTGOING_CALLS'),(13,'android.permission.READ_CONTACTS'),(1,'android.permission.READ_PHONE_STATE'),(6,'android.permission.READ_SMS'),(8,'android.permission.RECEIVE_BOOT_COMPLETED'),(4,'android.permission.RECEIVE_SMS'),(2,'android.permission.SEND_SMS'),(12,'android.permission.WRITE_EXTERNAL_STORAGE'),(7,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Providers`
--

LOCK TABLES `Providers` WRITE;
/*!40000 ALTER TABLE `Providers` DISABLE KEYS */;
INSERT INTO `Providers` VALUES (1,49,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://dapp.text.bomber.Historys/historys',NULL,NULL,NULL),(2,NULL,NULL,'market://details?id=org.baole.antibomber',NULL,NULL,NULL),(3,NULL,NULL,'content://dapp.text.bomber.Historys/historys',NULL,NULL,NULL),(4,NULL,NULL,'smsto://(.*)',NULL,NULL,NULL),(5,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(6,NULL,NULL,'http://www.anxin360.com/m',NULL,NULL,NULL),(7,NULL,NULL,'http://www.anxin360.com/m',NULL,NULL,NULL),(8,NULL,NULL,'http://www.anxin360.com/m',NULL,NULL,NULL),(9,NULL,NULL,'smsto://(.*)',NULL,NULL,NULL),(10,NULL,NULL,'smsto://(.*)',NULL,NULL,NULL),(11,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(12,NULL,NULL,'tel:(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,8,1),(2,12,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,2,1),(7,2,2),(8,2,3),(9,2,4),(10,2,4),(11,2,6),(12,2,6),(13,2,7),(14,2,7),(15,3,1),(16,3,2),(17,3,3),(18,4,1),(19,3,4),(20,4,3),(21,5,3),(22,3,5),(23,5,10),(24,4,4),(25,3,8),(26,4,5),(27,3,9),(28,4,8),(29,3,10),(30,4,9),(31,3,11),(32,4,10),(33,4,11),(34,6,2),(35,6,3),(36,6,6),(37,6,7),(38,6,12),(39,6,13);
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

-- Dump completed on 2015-10-09  0:41:06
