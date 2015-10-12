-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_400
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (5,'(.*)'),(6,'NULL-CONSTANT'),(2,'android.intent.action.BOOT_COMPLETED'),(9,'android.intent.action.CALL'),(10,'android.intent.action.CHOOSER'),(1,'android.intent.action.MAIN'),(7,'android.intent.action.PICK'),(8,'android.intent.action.VIEW'),(11,'android.media.action.IMAGE_CAPTURE'),(4,'android.provider.Telephony.SMS_RECEIVED'),(3,'wbs.sexy.sexyModel');
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
INSERT INTO `Applications` VALUES (1,'com.wbs',1),(2,'com.moonbeam.android.magicshop',2),(3,'sex.sexy',1),(4,'smskb.com',1),(5,'com.dseffects.MonkeyJump2',4),(6,'redrabbit.CityDefense',4),(7,'com.rdwl.qwkj.malaup.android.action',2);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.wbs.MagicVoiceActivity'),(2,1,'com.geinimi.custom.Ad0000_00000006'),(3,1,'com.geinimi.custom.GoogleKeyboard'),(4,1,'com.geinimi.AdServiceReceiver'),(5,2,'com.moonbeam.android.magicshop.magicshop'),(6,2,'com.geinimi.custom.Ad3180_31800001'),(7,2,'com.geinimi.custom.GoogleKeyboard'),(8,2,'com.geinimi.AdServiceReceiver'),(9,4,'smskb.com.smskb'),(10,4,'smskb.com.PreRun'),(11,3,'sex.sexy.sexyModel'),(12,4,'smskb.com.sDesk'),(13,4,'smskb.com.SCR_CCCX'),(14,4,'smskb.com.SCR_CZCX'),(15,4,'com.geinimi.custom.Ad3071_30710001'),(16,3,'sex.sexy.SmsSend'),(17,3,'sex.sexy.model13.c.c'),(18,4,'com.geinimi.custom.GoogleKeyboard'),(19,4,'com.geinimi.AdServiceReceiver'),(20,3,'sex.sexy.model13.c.AndroidIME'),(21,3,'sex.sexy.model13.f'),(22,5,'com.dseffects.MonkeyJump2.MonkeyJump2'),(23,5,'com.dseffects.MonkeyJump2.jump2.c.rufCuAtj'),(24,5,'com.dseffects.MonkeyJump2.jump2.c.AndroidIME'),(25,5,'com.dseffects.MonkeyJump2.jump2.f'),(26,6,'redrabbit.CityDefense.mainApplication'),(27,6,'redrabbit.CityDefense.application.c.rtbewutj'),(28,6,'redrabbit.CityDefense.application.c.AndroidIME'),(29,6,'redrabbit.CityDefense.application.f'),(30,7,'com.rdwl.qwkj.malaup.android.action.Welcome'),(31,7,'com.rdwl.qwkj.malaup.android.action.NavigateActivity'),(32,7,'com.rdwl.qwkj.malaup.android.action.UpPicActivity'),(33,7,'com.rdwl.qwkj.malaup.android.action.LoginActivity'),(34,7,'com.rdwl.qwkj.malaup.android.action.AlbumActivity'),(35,7,'com.rdwl.qwkj.malaup.android.action.MsgActivity'),(36,7,'com.rdwl.qwkj.malaup.android.action.MainActivity'),(37,7,'com.rdwl.qwkj.malaup.android.action.SendSMSActivity'),(38,7,'com.rdwl.qwkj.malaup.android.action.NewBarActivity'),(39,7,'com.rdwl.qwkj.malaup.android.action.BarInfoActivity'),(40,7,'com.rdwl.qwkj.malaup.android.action.PublishBlogActivity'),(41,7,'com.rdwl.qwkj.malaup.android.action.EventPositionActivity'),(42,7,'com.rdwl.qwkj.malaup.android.action.NotiActivity'),(43,7,'com.rdwl.qwkj.malaup.android.action.ReplyHotPhotoActivity'),(44,7,'com.rdwl.qwkj.malaup.android.action.RegistActivity'),(45,7,'com.rdwl.qwkj.malaup.android.action.DetailedUserSearchActivity'),(46,7,'com.rdwl.qwkj.malaup.android.action.welcome.automata.gleanybody.rmgFwjyj'),(47,7,'com.rdwl.qwkj.malaup.android.action.welcome.automata.gleanybody.AndroidIME'),(48,7,'com.rdwl.qwkj.malaup.android.action.welcome.ServiceReceiver'),(49,1,'com.geinimi.c.b'),(50,1,'com.geinimi.ads.c'),(51,1,'com.geinimi.AdActivity'),(52,1,'com.geinimi.c.j'),(53,1,'com.geinimi.AdService'),(54,3,'sex.sexy.model13.e.b'),(55,3,'sex.sexy.model13.e'),(56,3,'sex.sexy.model13.q'),(57,2,'com.geinimi.c.b'),(58,3,'sex.sexy.model13.h'),(59,3,'sex.sexy.SmsSend$1'),(60,2,'com.geinimi.AdActivity'),(61,2,'com.geinimi.c.j'),(62,5,'com.dseffects.MonkeyJump2.jump2.h'),(63,5,'com.dseffects.MonkeyJump2.jump2.e.b'),(64,5,'com.dseffects.MonkeyJump2.jump2.q'),(65,2,'com.geinimi.ads.c'),(66,5,'com.dseffects.MonkeyJump2.jump2.e'),(67,2,'com.geinimi.AdService'),(68,4,'smskb.com.sDesk$3$1'),(69,4,'com.geinimi.AdService'),(70,4,'com.geinimi.c.b'),(71,4,'smskb.com.smskb$3$1'),(72,4,'com.geinimi.ads.c'),(73,4,'com.geinimi.c.j'),(74,4,'com.geinimi.AdActivity'),(75,4,'smskb.com.smskb$2$1'),(76,4,'smskb.com.PreRun$1'),(77,4,'smskb.com.smskb$4$1'),(78,6,'redrabbit.CityDefense.application.q'),(79,6,'redrabbit.CityDefense.application.e'),(80,6,'redrabbit.CityDefense.application.e.b'),(81,6,'redrabbit.CityDefense.application.h'),(82,7,'com.rdwl.qwkj.malaup.android.service.HotUserService$7$1'),(83,7,'com.rdwl.qwkj.malaup.android.action.AlbumActivity$1'),(84,7,'com.rdwl.qwkj.malaup.android.customadapter.BlogInfoAdapter$1'),(85,7,'com.rdwl.qwkj.malaup.android.action.LoginActivity$2'),(86,7,'com.rdwl.qwkj.malaup.android.action.NavigateActivity$5'),(87,7,'com.rdwl.qwkj.malaup.android.action.welcome.MyActivity'),(88,7,'com.rdwl.qwkj.malaup.android.action.MsgActivity$1'),(89,7,'com.rdwl.qwkj.malaup.android.customadapter.TempBaseArrayAdapter$1'),(90,7,'com.rdwl.qwkj.malaup.android.service.HotMsgService$5'),(91,7,'com.rdwl.qwkj.malaup.android.action.NavigateActivity$4'),(92,7,'com.rdwl.qwkj.malaup.android.service.HotBarService'),(93,7,'com.rdwl.qwkj.malaup.android.action.welcome.d.b'),(94,7,'com.rdwl.qwkj.malaup.android.action.welcome.d'),(95,7,'com.rdwl.qwkj.malaup.android.action.NavigateActivity$2'),(96,7,'com.rdwl.qwkj.malaup.android.customadapter.ReplyPhotoAdapter$1'),(97,7,'com.rdwl.qwkj.malaup.android.customadapter.ReplyBlogAdapter$1'),(98,7,'com.rdwl.qwkj.malaup.android.action.welcome.MyService');
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,2,'ACTIVITY_PARAM_KEY'),(2,3,'cpid'),(3,2,'cpid'),(4,1,'selectIndex'),(5,3,'ptid'),(6,2,'ptid'),(7,3,'salesid'),(8,2,'salesid'),(9,3,'did'),(10,2,'did'),(11,6,'salesid'),(12,5,'salesid'),(13,7,'salesid'),(14,17,'cpid'),(15,17,'ptid'),(16,17,'ACTIVITY_PARAM_KEY'),(17,6,'ACTIVITY_PARAM_KEY'),(18,6,'cpid'),(19,5,'cpid'),(20,7,'cpid'),(21,21,'pdus'),(22,17,'salesid'),(23,17,'did'),(24,6,'did'),(25,5,'did'),(26,7,'did'),(27,23,'ptid'),(28,23,'salesid'),(29,25,'pdus'),(30,23,'cpid'),(31,23,'did'),(32,6,'ptid'),(33,5,'ptid'),(34,7,'ptid'),(35,23,'ACTIVITY_PARAM_KEY'),(36,9,'ptid'),(37,12,'ptid'),(38,10,'ptid'),(39,15,'ptid'),(40,18,'ptid'),(41,15,'ACTIVITY_PARAM_KEY'),(42,9,'did'),(43,12,'did'),(44,10,'did'),(45,15,'did'),(46,18,'did'),(47,9,'cpid'),(48,12,'cpid'),(49,10,'cpid'),(50,15,'cpid'),(51,18,'cpid'),(52,9,'salesid'),(53,12,'salesid'),(54,10,'salesid'),(55,15,'salesid'),(56,18,'salesid'),(57,27,'cpid'),(58,27,'salesid'),(59,27,'did'),(60,29,'pdus'),(61,27,'ACTIVITY_PARAM_KEY'),(62,27,'ptid'),(63,41,'location'),(64,37,'content'),(65,41,'address'),(66,36,'date'),(67,48,'pdus'),(68,46,'salesid'),(69,36,'finish'),(70,46,'cpid'),(71,32,'data'),(72,46,'ACTIVITY_PARAM_KEY'),(73,37,'recivUid'),(74,40,'data'),(75,36,'pageType'),(76,37,'pageType'),(77,46,'did'),(78,46,'ptid');
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
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'s',0,14,NULL),(4,4,'r',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'s',0,14,NULL),(8,8,'r',1,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'s',0,14,NULL),(19,19,'r',1,NULL,NULL),(20,20,'s',0,14,NULL),(21,21,'r',1,NULL,NULL),(22,22,'a',1,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'s',0,14,NULL),(25,25,'r',1,NULL,NULL),(26,26,'a',1,NULL,NULL),(27,27,'a',1,NULL,NULL),(28,28,'s',0,14,NULL),(29,29,'r',1,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',1,NULL,NULL),(47,47,'s',0,14,NULL),(48,48,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=398 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,3),(2,2,4),(3,3,3),(4,4,3),(5,5,3),(6,6,2),(7,7,3),(8,8,3),(9,9,3),(10,10,2),(11,11,3),(12,12,3),(13,13,20),(14,14,20),(15,15,17),(16,15,21),(17,16,7),(18,17,17),(19,18,7),(20,19,7),(21,20,16),(22,21,7),(23,22,16),(24,23,6),(25,24,7),(26,25,23),(27,26,6),(28,27,24),(29,28,5),(30,29,23),(31,29,25),(32,30,7),(33,31,24),(34,32,7),(35,33,12),(36,34,7),(37,35,7),(38,36,8),(39,37,19),(40,38,18),(41,39,18),(42,40,9),(43,41,18),(44,42,18),(45,43,18),(46,44,18),(47,45,9),(48,46,15),(49,47,18),(50,48,18),(51,49,15),(52,50,9),(53,51,10),(54,52,9),(55,53,27),(56,53,29),(57,54,18),(58,55,28),(59,56,28),(60,57,27),(61,58,36),(62,58,35),(63,58,34),(64,58,39),(65,58,37),(66,58,31),(67,59,31),(68,59,39),(69,59,36),(70,59,37),(71,59,34),(72,59,35),(73,60,31),(74,60,32),(75,60,33),(76,60,34),(77,60,39),(78,60,40),(79,60,41),(80,60,35),(81,60,36),(82,60,37),(83,60,38),(84,60,44),(85,60,43),(86,60,45),(87,61,31),(88,61,34),(89,61,35),(90,61,32),(91,61,33),(92,61,38),(93,61,39),(94,61,36),(95,61,37),(96,61,43),(97,61,40),(98,61,41),(99,61,45),(100,61,44),(101,62,31),(102,62,32),(103,62,33),(104,62,34),(105,62,35),(106,62,36),(107,62,37),(108,62,38),(109,62,39),(110,62,40),(111,62,41),(112,62,43),(113,62,44),(114,62,45),(115,63,45),(116,63,44),(117,63,43),(118,63,41),(119,63,40),(120,63,39),(121,63,38),(122,63,37),(123,63,36),(124,63,35),(125,63,34),(126,63,33),(127,63,32),(128,63,31),(129,64,44),(130,64,43),(131,64,45),(132,64,40),(133,64,39),(134,64,41),(135,64,36),(136,64,35),(137,64,38),(138,64,37),(139,64,32),(140,64,31),(141,64,34),(142,64,33),(143,65,43),(144,65,41),(145,65,40),(146,65,45),(147,65,44),(148,65,35),(149,65,34),(150,65,33),(151,65,32),(152,65,39),(153,65,38),(154,65,37),(155,65,36),(156,65,31),(157,66,41),(158,66,44),(159,66,43),(160,66,45),(161,66,34),(162,66,33),(163,66,36),(164,66,35),(165,66,38),(166,66,37),(167,66,40),(168,66,39),(169,66,31),(170,66,32),(171,67,31),(172,67,34),(173,67,35),(174,67,36),(175,67,37),(176,67,39),(177,68,42),(178,69,46),(179,70,34),(180,70,33),(181,70,36),(182,70,35),(183,70,32),(184,70,31),(185,70,45),(186,70,43),(187,70,44),(188,70,41),(189,70,39),(190,70,40),(191,70,37),(192,70,38),(193,71,37),(194,71,36),(195,71,35),(196,71,34),(197,71,33),(198,71,32),(199,71,31),(200,71,39),(201,71,38),(202,71,41),(203,71,40),(204,71,43),(205,71,45),(206,71,44),(207,72,40),(208,73,31),(209,73,34),(210,73,35),(211,73,32),(212,73,33),(213,73,38),(214,73,39),(215,73,36),(216,73,37),(217,73,45),(218,73,44),(219,73,41),(220,73,40),(221,73,43),(222,74,31),(223,74,32),(224,74,37),(225,74,38),(226,74,39),(227,74,40),(228,74,33),(229,74,34),(230,74,35),(231,74,36),(232,74,45),(233,74,44),(234,74,43),(235,74,41),(236,75,31),(237,75,39),(238,75,36),(239,75,37),(240,75,34),(241,75,35),(242,76,43),(243,76,44),(244,76,45),(245,76,38),(246,76,37),(247,76,36),(248,76,35),(249,76,41),(250,76,40),(251,76,39),(252,76,34),(253,76,33),(254,76,32),(255,76,31),(256,77,31),(257,78,40),(258,79,43),(259,79,45),(260,79,44),(261,79,39),(262,79,38),(263,79,41),(264,79,40),(265,79,35),(266,79,34),(267,79,37),(268,79,36),(269,79,31),(270,79,33),(271,79,32),(272,80,33),(273,80,34),(274,80,31),(275,80,32),(276,80,37),(277,80,38),(278,80,35),(279,80,36),(280,80,41),(281,80,39),(282,80,40),(283,80,45),(284,80,43),(285,80,44),(286,81,34),(287,81,35),(288,81,36),(289,81,37),(290,81,39),(291,81,31),(292,82,47),(293,83,31),(294,83,33),(295,83,32),(296,83,38),(297,83,39),(298,83,40),(299,83,41),(300,83,34),(301,83,35),(302,83,36),(303,83,37),(304,83,43),(305,83,44),(306,83,45),(307,84,44),(308,84,43),(309,84,45),(310,84,40),(311,84,39),(312,84,41),(313,84,36),(314,84,35),(315,84,38),(316,84,37),(317,84,31),(318,84,32),(319,84,33),(320,84,34),(321,85,48),(322,85,46),(323,86,45),(324,86,38),(325,86,37),(326,86,40),(327,86,39),(328,86,41),(329,86,44),(330,86,43),(331,86,31),(332,86,32),(333,86,33),(334,86,34),(335,86,35),(336,86,36),(337,87,41),(338,87,40),(339,87,39),(340,87,38),(341,87,45),(342,87,44),(343,87,43),(344,87,32),(345,87,33),(346,87,31),(347,87,36),(348,87,37),(349,87,34),(350,87,35),(351,88,39),(352,88,36),(353,88,35),(354,88,37),(355,88,31),(356,88,34),(357,89,44),(358,89,45),(359,89,43),(360,89,40),(361,89,41),(362,89,31),(363,89,39),(364,89,38),(365,89,37),(366,89,36),(367,89,35),(368,89,34),(369,89,33),(370,89,32),(371,90,47),(372,91,44),(373,91,45),(374,91,43),(375,91,33),(376,91,32),(377,91,31),(378,91,37),(379,91,36),(380,91,35),(381,91,34),(382,91,41),(383,91,40),(384,91,39),(385,91,38),(386,92,39),(387,92,37),(388,92,35),(389,92,36),(390,92,34),(391,92,31),(392,93,36),(393,93,37),(394,93,39),(395,93,34),(396,93,35),(397,93,31);
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
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,49,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',13,'p',NULL),(2,4,'<com.geinimi.AdServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',13,'s',NULL),(3,50,'<com.geinimi.ads.c: boolean b()>',24,'p',NULL),(4,49,'<com.geinimi.c.b: java.util.Vector a()>',5,'p',NULL),(5,49,'<com.geinimi.c.b: boolean a(java.lang.String)>',7,'p',NULL),(6,51,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',30,'a',NULL),(7,49,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',24,'p',0),(8,52,'<com.geinimi.c.j: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(9,49,'<com.geinimi.c.b: java.util.Vector a()>',51,'p',NULL),(10,51,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',24,'s',NULL),(11,49,'<com.geinimi.c.b: java.util.Vector a()>',30,'p',NULL),(12,53,'<com.geinimi.AdService: void onDestroy()>',11,'s',NULL),(13,54,'<sex.sexy.model13.e.b: void a(java.lang.String,java.lang.String)>',9,'a',NULL),(14,55,'<sex.sexy.model13.e: void onDestroy()>',13,'s',NULL),(15,56,'<sex.sexy.model13.q: void run()>',15,'s',NULL),(16,57,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',13,'p',NULL),(17,58,'<sex.sexy.model13.h: void onCreate(android.os.Bundle)>',15,'a',NULL),(18,57,'<com.geinimi.c.b: java.util.Vector a()>',50,'p',NULL),(19,57,'<com.geinimi.c.b: java.util.Vector a()>',5,'p',NULL),(20,59,'<sex.sexy.SmsSend$1: void onClick(android.view.View)>',8,'a',NULL),(21,57,'<com.geinimi.c.b: boolean a(java.lang.String)>',7,'p',NULL),(22,16,'<sex.sexy.SmsSend: void onActivityResult(int,int,android.content.Intent)>',19,'p',NULL),(23,60,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',30,'a',NULL),(24,61,'<com.geinimi.c.j: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(25,62,'<com.dseffects.MonkeyJump2.jump2.h: void onCreate(android.os.Bundle)>',15,'a',NULL),(26,60,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',24,'s',NULL),(27,63,'<com.dseffects.MonkeyJump2.jump2.e.b: void a(java.lang.String,java.lang.String)>',9,'a',NULL),(28,5,'<com.moonbeam.android.magicshop.magicshop: void moonbeam()>',4,'a',NULL),(29,64,'<com.dseffects.MonkeyJump2.jump2.q: void run()>',15,'s',NULL),(30,65,'<com.geinimi.ads.c: boolean b()>',24,'p',NULL),(31,66,'<com.dseffects.MonkeyJump2.jump2.e: void onDestroy()>',13,'s',NULL),(32,67,'<com.geinimi.AdService: void onDestroy()>',11,'s',NULL),(33,68,'<smskb.com.sDesk$3$1: void onClick(android.content.DialogInterface,int)>',13,'a',NULL),(34,57,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',24,'p',0),(35,57,'<com.geinimi.c.b: java.util.Vector a()>',27,'p',NULL),(36,8,'<com.geinimi.AdServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',13,'s',NULL),(37,19,'<com.geinimi.AdServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',13,'s',NULL),(38,69,'<com.geinimi.AdService: void onDestroy()>',11,'s',NULL),(39,70,'<com.geinimi.c.b: java.util.Vector a()>',51,'p',NULL),(40,71,'<smskb.com.smskb$3$1: void run()>',45,'a',NULL),(41,70,'<com.geinimi.c.b: java.util.Vector a()>',30,'p',NULL),(42,70,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',13,'p',NULL),(43,72,'<com.geinimi.ads.c: boolean b()>',24,'p',NULL),(44,73,'<com.geinimi.c.j: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(45,9,'<smskb.com.smskb: void openUrl(java.lang.String)>',5,'a',NULL),(46,74,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',30,'a',NULL),(47,70,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',24,'p',0),(48,70,'<com.geinimi.c.b: boolean a(java.lang.String)>',7,'p',NULL),(49,74,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',24,'s',NULL),(50,75,'<smskb.com.smskb$2$1: void run()>',59,'a',NULL),(51,76,'<smskb.com.PreRun$1: void run()>',10,'a',NULL),(52,77,'<smskb.com.smskb$4$1: void run()>',45,'a',NULL),(53,78,'<redrabbit.CityDefense.application.q: void run()>',15,'s',NULL),(54,70,'<com.geinimi.c.b: java.util.Vector a()>',5,'p',NULL),(55,79,'<redrabbit.CityDefense.application.e: void onDestroy()>',13,'s',NULL),(56,80,'<redrabbit.CityDefense.application.e.b: void a(java.lang.String,java.lang.String)>',9,'a',NULL),(57,81,'<redrabbit.CityDefense.application.h: void onCreate(android.os.Bundle)>',15,'a',NULL),(58,36,'<com.rdwl.qwkj.malaup.android.action.MainActivity: void doListViewItemOnclick(int,int)>',23,'a',NULL),(59,31,'<com.rdwl.qwkj.malaup.android.action.NavigateActivity: void startGUI(int)>',36,'a',NULL),(60,32,'<com.rdwl.qwkj.malaup.android.action.UpPicActivity: void openPhoto()>',7,'a',NULL),(61,32,'<com.rdwl.qwkj.malaup.android.action.UpPicActivity: void openCamera()>',24,'a',NULL),(62,82,'<com.rdwl.qwkj.malaup.android.service.HotUserService$7$1: void onClick(android.view.View)>',72,'a',NULL),(63,36,'<com.rdwl.qwkj.malaup.android.action.MainActivity: void doTopRightOnclick()>',20,'a',NULL),(64,83,'<com.rdwl.qwkj.malaup.android.action.AlbumActivity$1: void onClick(android.view.View)>',24,'a',NULL),(65,84,'<com.rdwl.qwkj.malaup.android.customadapter.BlogInfoAdapter$1: void onClick(android.view.View)>',20,'a',NULL),(66,85,'<com.rdwl.qwkj.malaup.android.action.LoginActivity$2: void onClick(android.view.View)>',14,'a',NULL),(67,86,'<com.rdwl.qwkj.malaup.android.action.NavigateActivity$5: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(68,42,'<com.rdwl.qwkj.malaup.android.action.NotiActivity: void onCreate(android.os.Bundle)>',12,'a',NULL),(69,87,'<com.rdwl.qwkj.malaup.android.action.welcome.MyActivity: void onCreate(android.os.Bundle)>',15,'a',NULL),(70,88,'<com.rdwl.qwkj.malaup.android.action.MsgActivity$1: void onClick(android.view.View)>',12,'a',NULL),(71,89,'<com.rdwl.qwkj.malaup.android.customadapter.TempBaseArrayAdapter$1: void onClick(android.view.View)>',42,'a',NULL),(72,40,'<com.rdwl.qwkj.malaup.android.action.PublishBlogActivity: void openCamera()>',24,'a',NULL),(73,36,'<com.rdwl.qwkj.malaup.android.action.MainActivity: void webPhotoPage(int)>',6,'a',NULL),(74,90,'<com.rdwl.qwkj.malaup.android.service.HotMsgService$5: void onClick(android.view.View)>',16,'a',NULL),(75,31,'<com.rdwl.qwkj.malaup.android.action.NavigateActivity: void startGUI(int)>',19,'a',NULL),(76,36,'<com.rdwl.qwkj.malaup.android.action.MainActivity: void doTopRightOnclick()>',55,'a',NULL),(77,91,'<com.rdwl.qwkj.malaup.android.action.NavigateActivity$4: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(78,40,'<com.rdwl.qwkj.malaup.android.action.PublishBlogActivity: void openPhoto()>',7,'a',NULL),(79,36,'<com.rdwl.qwkj.malaup.android.action.MainActivity: void doTopRightOnclick()>',46,'a',NULL),(80,36,'<com.rdwl.qwkj.malaup.android.action.MainActivity: void doTopRightOnclick()>',37,'a',NULL),(81,92,'<com.rdwl.qwkj.malaup.android.service.HotBarService: void showUserIndexPage(int,com.rdwl.qwkj.malaup.android.action.TempActivity)>',12,'a',NULL),(82,93,'<com.rdwl.qwkj.malaup.android.action.welcome.d.b: void a(java.lang.String,java.lang.String)>',9,'a',NULL),(83,89,'<com.rdwl.qwkj.malaup.android.customadapter.TempBaseArrayAdapter$1: void onClick(android.view.View)>',96,'a',NULL),(84,89,'<com.rdwl.qwkj.malaup.android.customadapter.TempBaseArrayAdapter$1: void onClick(android.view.View)>',81,'a',NULL),(85,94,'<com.rdwl.qwkj.malaup.android.action.welcome.d: void run()>',15,'s',NULL),(86,95,'<com.rdwl.qwkj.malaup.android.action.NavigateActivity$2: void onClick(android.view.View)>',7,'a',NULL),(87,96,'<com.rdwl.qwkj.malaup.android.customadapter.ReplyPhotoAdapter$1: void onClick(android.view.View)>',22,'a',NULL),(88,31,'<com.rdwl.qwkj.malaup.android.action.NavigateActivity: void startGUI(int)>',58,'a',NULL),(89,97,'<com.rdwl.qwkj.malaup.android.customadapter.ReplyBlogAdapter$1: void onClick(android.view.View)>',23,'a',NULL),(90,98,'<com.rdwl.qwkj.malaup.android.action.welcome.MyService: void onDestroy()>',13,'s',NULL),(91,36,'<com.rdwl.qwkj.malaup.android.action.MainActivity: void doTopRightOnclick()>',65,'a',NULL),(92,31,'<com.rdwl.qwkj.malaup.android.action.NavigateActivity: void startGUI(int)>',77,'a',NULL),(93,31,'<com.rdwl.qwkj.malaup.android.action.NavigateActivity: void startGUI(int)>',24,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,3,5),(2,4,6),(3,11,7),(4,13,5),(5,14,6),(6,18,8),(7,22,9),(8,23,9),(9,28,5),(10,29,6),(11,30,8),(12,42,10),(13,43,10),(14,44,10),(15,45,10),(16,46,10),(17,47,10),(18,48,10),(19,49,10),(20,50,11),(21,62,8),(22,63,11),(23,66,8),(24,68,8),(25,69,8),(26,70,10),(27,71,10),(28,72,10),(29,73,10),(30,74,10),(31,75,10),(32,76,10),(33,77,10),(34,83,8),(35,87,8),(36,91,8);
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'(.*)'),(2,2,'(.*)'),(3,5,'(.*)'),(4,6,'(.*)'),(5,7,'(.*)'),(6,8,'(.*)'),(7,9,'(.*)'),(8,10,'(.*)'),(9,12,'(.*)'),(10,15,'(.*)'),(11,16,'(.*)'),(12,17,'(.*)'),(13,19,'(.*)'),(14,20,'(.*)'),(15,21,'(.*)'),(16,24,'(.*)'),(17,25,'(.*)'),(18,26,'(.*)'),(19,27,'smskb/com/SCR_CCCX'),(20,31,'(.*)'),(21,32,'(.*)'),(22,33,'smskb/com/sDesk'),(23,34,'smskb/com/smskb'),(24,35,'smskb/com/SCR_CZCX'),(25,36,'(.*)'),(26,37,'(.*)'),(27,38,'(.*)'),(28,39,'(.*)'),(29,40,'com/rdwl/qwkj/malaup/android/action/MainActivity'),(30,41,'com/rdwl/qwkj/malaup/android/action/PublishBlogActivity'),(31,51,'com/rdwl/qwkj/malaup/android/action/MainActivity'),(32,52,'com/rdwl/qwkj/malaup/android/action/PublishBlogActivity'),(33,53,'com/rdwl/qwkj/malaup/android/action/PublishBlogActivity'),(34,54,'com/rdwl/qwkj/malaup/android/action/UpPicActivity'),(35,55,'com/rdwl/qwkj/malaup/android/action/ReplyHotPhotoActivity'),(36,56,'com/rdwl/qwkj/malaup/android/action/MainActivity'),(37,57,'com/rdwl/qwkj/malaup/android/action/RegistActivity'),(38,58,'com/rdwl/qwkj/malaup/android/action/UpPicActivity'),(39,59,'com/rdwl/qwkj/malaup/android/action/Welcome'),(40,60,'(.*)'),(41,61,'com/rdwl/qwkj/malaup/android/action/SendSMSActivity'),(42,64,'com/rdwl/qwkj/malaup/android/action/AlbumActivity'),(43,65,'com/rdwl/qwkj/malaup/android/action/MainActivity'),(44,67,'com/rdwl/qwkj/malaup/android/action/PublishBlogActivity'),(45,78,'com/rdwl/qwkj/malaup/android/action/SendSMSActivity'),(46,79,'com/rdwl/qwkj/malaup/android/action/NewBarActivity'),(47,80,'com/rdwl/qwkj/malaup/android/action/MainActivity'),(48,81,'(.*)'),(49,82,'com/rdwl/qwkj/malaup/android/action/UpPicActivity'),(50,84,'(.*)'),(51,85,'com/rdwl/qwkj/malaup/android/action/LoginActivity'),(52,86,'com/rdwl/qwkj/malaup/android/action/MainActivity'),(53,88,'com/rdwl/qwkj/malaup/android/action/MainActivity'),(54,89,'(.*)'),(55,90,'com/rdwl/qwkj/malaup/android/action/PublishBlogActivity'),(56,92,'com/rdwl/qwkj/malaup/android/action/MainActivity');
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
INSERT INTO `IData` VALUES (1,11,10),(2,18,13),(3,22,15),(4,23,17),(5,30,22),(6,62,25),(7,66,26),(8,68,27),(9,69,28),(10,83,29),(11,87,30),(12,91,31);
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,3,'android.intent.extra.shortcut.NAME'),(2,3,'android.intent.extra.shortcut.ICON'),(3,3,'android.intent.extra.shortcut.INTENT'),(4,4,'android.intent.extra.shortcut.NAME'),(5,4,'android.intent.extra.shortcut.ICON'),(6,4,'android.intent.extra.shortcut.INTENT'),(7,13,'android.intent.extra.shortcut.NAME'),(8,13,'android.intent.extra.shortcut.ICON'),(9,13,'android.intent.extra.shortcut.INTENT'),(10,14,'android.intent.extra.shortcut.NAME'),(11,14,'android.intent.extra.shortcut.ICON'),(12,14,'android.intent.extra.shortcut.INTENT'),(13,28,'android.intent.extra.shortcut.NAME'),(14,28,'android.intent.extra.shortcut.ICON'),(15,28,'android.intent.extra.shortcut.INTENT'),(16,29,'android.intent.extra.shortcut.NAME'),(17,29,'android.intent.extra.shortcut.ICON'),(18,29,'android.intent.extra.shortcut.INTENT'),(19,40,'uid'),(20,40,'pageType'),(21,41,'pageType'),(22,42,'android.intent.extra.INTENT'),(23,43,'android.intent.extra.INTENT'),(24,44,'android.intent.extra.TITLE'),(25,44,'android.intent.extra.INTENT'),(26,45,'android.intent.extra.INTENT'),(27,46,'android.intent.extra.TITLE'),(28,46,'android.intent.extra.INTENT'),(29,47,'android.intent.extra.INTENT'),(30,48,'android.intent.extra.TITLE'),(31,48,'android.intent.extra.INTENT'),(32,49,'android.intent.extra.TITLE'),(33,49,'android.intent.extra.INTENT'),(34,50,'return-data'),(35,50,'output'),(36,51,'uid'),(37,51,'pageType'),(38,52,'pageType'),(39,53,'uid'),(40,53,'pageType'),(41,54,'uid'),(42,54,'albumId'),(43,55,'pid'),(44,56,'uid'),(45,56,'pageType'),(46,58,'pageType'),(47,63,'return-data'),(48,63,'output'),(49,64,'uid'),(50,65,'uid'),(51,65,'pageType'),(52,67,'pageType'),(53,70,'android.intent.extra.INTENT'),(54,71,'android.intent.extra.INTENT'),(55,72,'android.intent.extra.TITLE'),(56,72,'android.intent.extra.INTENT'),(57,73,'android.intent.extra.INTENT'),(58,74,'android.intent.extra.TITLE'),(59,74,'android.intent.extra.INTENT'),(60,75,'android.intent.extra.INTENT'),(61,76,'android.intent.extra.TITLE'),(62,76,'android.intent.extra.INTENT'),(63,77,'android.intent.extra.TITLE'),(64,77,'android.intent.extra.INTENT'),(65,78,'pageType'),(66,80,'uid'),(67,80,'pageType'),(68,82,'pageType'),(69,86,'uid'),(70,86,'pageType'),(71,88,'uid'),(72,88,'pageType'),(73,90,'pageType'),(74,90,'id'),(75,92,'pageType');
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,2,1),(2,3,2),(3,5,1),(4,6,2),(5,9,3),(6,10,1),(7,11,1),(8,12,2),(9,13,4),(10,14,2),(11,16,1),(12,17,4),(13,18,2),(14,20,1),(15,21,2),(16,22,4),(17,24,1),(18,25,4),(19,26,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,1),(9,9,2),(10,10,1),(11,11,1),(12,12,1),(13,14,1),(14,15,1),(15,16,1),(16,18,1),(17,19,1),(18,20,1),(19,21,1),(20,23,1),(21,24,1),(22,26,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.wbs'),(2,2,'com.wbs'),(3,5,'com.wbs'),(4,6,'com.wbs'),(5,7,'(.*)'),(6,8,'sex.sexy'),(7,9,'sex.sexy'),(8,10,'sex.sexy'),(9,12,'com.moonbeam.android.magicshop'),(10,15,'com.dseffects.MonkeyJump2'),(11,16,'com.moonbeam.android.magicshop'),(12,17,'(.*)'),(13,19,'com.dseffects.MonkeyJump2'),(14,20,'com.dseffects.MonkeyJump2'),(15,21,'com.moonbeam.android.magicshop'),(16,24,'com.moonbeam.android.magicshop'),(17,25,'smskb.com'),(18,26,'smskb.com'),(19,27,'smskb.com'),(20,31,'smskb.com'),(21,32,'smskb.com'),(22,33,'smskb.com'),(23,34,'smskb.com'),(24,35,'smskb.com'),(25,36,'redrabbit.CityDefense'),(26,37,'redrabbit.CityDefense'),(27,38,'(.*)'),(28,39,'redrabbit.CityDefense'),(29,40,'com.rdwl.qwkj.malaup.android.action'),(30,41,'com.rdwl.qwkj.malaup.android.action'),(31,51,'com.rdwl.qwkj.malaup.android.action'),(32,52,'com.rdwl.qwkj.malaup.android.action'),(33,53,'com.rdwl.qwkj.malaup.android.action'),(34,54,'com.rdwl.qwkj.malaup.android.action'),(35,55,'com.rdwl.qwkj.malaup.android.action'),(36,56,'com.rdwl.qwkj.malaup.android.action'),(37,57,'com.rdwl.qwkj.malaup.android.action'),(38,58,'com.rdwl.qwkj.malaup.android.action'),(39,59,'com.rdwl.qwkj.malaup.android.action'),(40,60,'com.rdwl.qwkj.malaup.android.action'),(41,61,'com.rdwl.qwkj.malaup.android.action'),(42,64,'com.rdwl.qwkj.malaup.android.action'),(43,65,'com.rdwl.qwkj.malaup.android.action'),(44,67,'com.rdwl.qwkj.malaup.android.action'),(45,78,'com.rdwl.qwkj.malaup.android.action'),(46,79,'com.rdwl.qwkj.malaup.android.action'),(47,80,'com.rdwl.qwkj.malaup.android.action'),(48,81,'(.*)'),(49,82,'com.rdwl.qwkj.malaup.android.action'),(50,84,'com.rdwl.qwkj.malaup.android.action'),(51,85,'com.rdwl.qwkj.malaup.android.action'),(52,86,'com.rdwl.qwkj.malaup.android.action'),(53,88,'com.rdwl.qwkj.malaup.android.action'),(54,89,'com.rdwl.qwkj.malaup.android.action'),(55,90,'com.rdwl.qwkj.malaup.android.action'),(56,92,'com.rdwl.qwkj.malaup.android.action');
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,4,0),(4,5,0),(5,6,0),(6,8,0),(7,10,0),(8,11,0),(9,11,0),(10,15,0),(11,17,0),(12,19,0),(13,21,0),(14,21,0),(15,22,0),(16,23,0),(17,25,0),(18,25,0),(19,26,0),(20,27,0),(21,29,0),(22,29,0),(23,30,0),(24,46,0),(25,48,0),(26,48,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,2,0,0),(2,6,0,0),(3,8,1,0),(4,8,1,0),(5,10,0,0),(6,12,0,0),(7,13,0,0),(8,14,0,0),(9,15,0,0),(10,17,0,0),(11,20,1,0),(12,23,0,0),(13,24,1,0),(14,24,1,0),(15,25,0,0),(16,26,0,0),(17,27,0,0),(18,28,1,0),(19,29,0,0),(20,31,0,0),(21,32,0,0),(22,33,1,0),(23,33,1,0),(24,36,0,0),(25,37,0,0),(26,38,0,0),(27,40,0,0),(28,44,1,0),(29,44,1,0),(30,45,1,0),(31,46,0,0),(32,49,0,0),(33,50,0,0),(34,51,0,0),(35,52,0,0),(36,53,0,0),(37,55,0,0),(38,56,0,0),(39,57,0,0),(40,58,0,0),(41,59,0,0),(42,60,1,0),(43,60,1,0),(44,60,1,0),(45,60,1,0),(46,60,1,0),(47,60,1,0),(48,60,1,0),(49,60,1,0),(50,61,1,0),(51,62,0,0),(52,63,0,0),(53,63,0,0),(54,64,0,0),(55,64,0,0),(56,65,0,0),(57,66,0,0),(58,67,0,0),(59,68,0,0),(60,69,0,0),(61,70,0,0),(62,71,1,0),(63,72,1,0),(64,73,0,0),(65,74,0,0),(66,75,1,0),(67,76,0,0),(68,77,1,0),(69,77,1,0),(70,78,1,0),(71,78,1,0),(72,78,1,0),(73,78,1,0),(74,78,1,0),(75,78,1,0),(76,78,1,0),(77,78,1,0),(78,79,0,0),(79,80,0,0),(80,81,0,0),(81,82,0,0),(82,83,0,0),(83,84,1,0),(84,85,0,0),(85,86,0,0),(86,87,0,0),(87,88,1,0),(88,89,0,0),(89,90,0,0),(90,91,0,0),(91,92,1,0),(92,93,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=453 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,66,26,2,NULL),(2,87,26,2,NULL),(3,91,26,2,NULL),(4,42,26,2,NULL),(5,43,26,2,NULL),(6,44,26,2,NULL),(7,45,26,2,NULL),(8,46,26,2,NULL),(9,47,26,2,NULL),(10,48,26,2,NULL),(11,49,26,2,NULL),(12,50,26,2,NULL),(13,63,26,2,NULL),(14,70,26,2,NULL),(15,71,26,2,NULL),(16,72,26,2,NULL),(17,73,26,2,NULL),(18,74,26,2,NULL),(19,75,26,2,NULL),(20,76,26,2,NULL),(21,77,26,2,NULL),(22,66,27,2,NULL),(23,87,27,2,NULL),(24,91,27,2,NULL),(25,42,27,2,NULL),(26,43,27,2,NULL),(27,44,27,2,NULL),(28,45,27,2,NULL),(29,46,27,2,NULL),(30,47,27,2,NULL),(31,48,27,2,NULL),(32,49,27,2,NULL),(33,50,27,2,NULL),(34,63,27,2,NULL),(35,70,27,2,NULL),(36,71,27,2,NULL),(37,72,27,2,NULL),(38,73,27,2,NULL),(39,74,27,2,NULL),(40,75,27,2,NULL),(41,76,27,2,NULL),(42,77,27,2,NULL),(43,66,29,2,NULL),(44,87,29,2,NULL),(45,91,29,2,NULL),(46,42,29,2,NULL),(47,43,29,2,NULL),(48,44,29,2,NULL),(49,45,29,2,NULL),(50,46,29,2,NULL),(51,47,29,2,NULL),(52,48,29,2,NULL),(53,49,29,2,NULL),(54,50,29,2,NULL),(55,63,29,2,NULL),(56,70,29,2,NULL),(57,71,29,2,NULL),(58,72,29,2,NULL),(59,73,29,2,NULL),(60,74,29,2,NULL),(61,75,29,2,NULL),(62,76,29,2,NULL),(63,77,29,2,NULL),(64,66,30,2,NULL),(65,87,30,2,NULL),(66,91,30,2,NULL),(67,42,30,2,NULL),(68,43,30,2,NULL),(69,44,30,2,NULL),(70,45,30,2,NULL),(71,46,30,2,NULL),(72,47,30,2,NULL),(73,48,30,2,NULL),(74,49,30,2,NULL),(75,50,30,2,NULL),(76,63,30,2,NULL),(77,70,30,2,NULL),(78,71,30,2,NULL),(79,72,30,2,NULL),(80,73,30,2,NULL),(81,74,30,2,NULL),(82,75,30,2,NULL),(83,76,30,2,NULL),(84,77,30,2,NULL),(85,41,40,2,NULL),(86,92,36,2,NULL),(87,66,1,2,NULL),(88,87,1,2,NULL),(89,91,1,2,NULL),(90,66,2,2,NULL),(91,87,2,2,NULL),(92,91,2,2,NULL),(93,66,4,2,NULL),(94,87,4,2,NULL),(95,91,4,2,NULL),(96,66,5,2,NULL),(97,87,5,2,NULL),(98,91,5,2,NULL),(99,66,6,2,NULL),(100,87,6,2,NULL),(101,91,6,2,NULL),(102,66,8,2,NULL),(103,87,8,2,NULL),(104,91,8,2,NULL),(105,66,11,2,NULL),(106,87,11,2,NULL),(107,91,11,2,NULL),(108,66,17,2,NULL),(109,87,17,2,NULL),(110,91,17,2,NULL),(111,66,21,2,NULL),(112,87,21,2,NULL),(113,91,21,2,NULL),(114,66,10,2,NULL),(115,87,10,2,NULL),(116,91,10,2,NULL),(117,66,15,2,NULL),(118,87,15,2,NULL),(119,91,15,2,NULL),(120,66,19,2,NULL),(121,87,19,2,NULL),(122,91,19,2,NULL),(123,66,22,2,NULL),(124,87,22,2,NULL),(125,91,22,2,NULL),(126,66,23,2,NULL),(127,87,23,2,NULL),(128,91,23,2,NULL),(129,66,25,2,NULL),(130,87,25,2,NULL),(131,91,25,2,NULL),(132,66,46,2,NULL),(133,87,46,2,NULL),(134,91,46,2,NULL),(135,66,48,2,NULL),(136,87,48,2,NULL),(137,91,48,2,NULL),(138,42,1,2,NULL),(139,43,1,2,NULL),(140,44,1,2,NULL),(141,45,1,2,NULL),(142,46,1,2,NULL),(143,47,1,2,NULL),(144,48,1,2,NULL),(145,49,1,2,NULL),(146,50,1,2,NULL),(147,42,2,2,NULL),(148,43,2,2,NULL),(149,44,2,2,NULL),(150,45,2,2,NULL),(151,46,2,2,NULL),(152,47,2,2,NULL),(153,48,2,2,NULL),(154,49,2,2,NULL),(155,50,2,2,NULL),(156,42,4,2,NULL),(157,43,4,2,NULL),(158,44,4,2,NULL),(159,45,4,2,NULL),(160,46,4,2,NULL),(161,47,4,2,NULL),(162,48,4,2,NULL),(163,49,4,2,NULL),(164,50,4,2,NULL),(165,42,5,2,NULL),(166,43,5,2,NULL),(167,44,5,2,NULL),(168,45,5,2,NULL),(169,46,5,2,NULL),(170,47,5,2,NULL),(171,48,5,2,NULL),(172,49,5,2,NULL),(173,50,5,2,NULL),(174,42,6,2,NULL),(175,43,6,2,NULL),(176,44,6,2,NULL),(177,45,6,2,NULL),(178,46,6,2,NULL),(179,47,6,2,NULL),(180,48,6,2,NULL),(181,49,6,2,NULL),(182,50,6,2,NULL),(183,42,8,2,NULL),(184,43,8,2,NULL),(185,44,8,2,NULL),(186,45,8,2,NULL),(187,46,8,2,NULL),(188,47,8,2,NULL),(189,48,8,2,NULL),(190,49,8,2,NULL),(191,50,8,2,NULL),(192,42,11,2,NULL),(193,43,11,2,NULL),(194,44,11,2,NULL),(195,45,11,2,NULL),(196,46,11,2,NULL),(197,47,11,2,NULL),(198,48,11,2,NULL),(199,49,11,2,NULL),(200,50,11,2,NULL),(201,42,17,2,NULL),(202,43,17,2,NULL),(203,44,17,2,NULL),(204,45,17,2,NULL),(205,46,17,2,NULL),(206,47,17,2,NULL),(207,48,17,2,NULL),(208,49,17,2,NULL),(209,50,17,2,NULL),(210,42,21,2,NULL),(211,43,21,2,NULL),(212,44,21,2,NULL),(213,45,21,2,NULL),(214,46,21,2,NULL),(215,47,21,2,NULL),(216,48,21,2,NULL),(217,49,21,2,NULL),(218,50,21,2,NULL),(219,42,10,2,NULL),(220,43,10,2,NULL),(221,44,10,2,NULL),(222,45,10,2,NULL),(223,46,10,2,NULL),(224,47,10,2,NULL),(225,48,10,2,NULL),(226,49,10,2,NULL),(227,50,10,2,NULL),(228,42,15,2,NULL),(229,43,15,2,NULL),(230,44,15,2,NULL),(231,45,15,2,NULL),(232,46,15,2,NULL),(233,47,15,2,NULL),(234,48,15,2,NULL),(235,49,15,2,NULL),(236,50,15,2,NULL),(237,42,19,2,NULL),(238,43,19,2,NULL),(239,44,19,2,NULL),(240,45,19,2,NULL),(241,46,19,2,NULL),(242,47,19,2,NULL),(243,48,19,2,NULL),(244,49,19,2,NULL),(245,50,19,2,NULL),(246,42,22,2,NULL),(247,43,22,2,NULL),(248,44,22,2,NULL),(249,45,22,2,NULL),(250,46,22,2,NULL),(251,47,22,2,NULL),(252,48,22,2,NULL),(253,49,22,2,NULL),(254,50,22,2,NULL),(255,42,23,2,NULL),(256,43,23,2,NULL),(257,44,23,2,NULL),(258,45,23,2,NULL),(259,46,23,2,NULL),(260,47,23,2,NULL),(261,48,23,2,NULL),(262,49,23,2,NULL),(263,50,23,2,NULL),(264,42,25,2,NULL),(265,43,25,2,NULL),(266,44,25,2,NULL),(267,45,25,2,NULL),(268,46,25,2,NULL),(269,47,25,2,NULL),(270,48,25,2,NULL),(271,49,25,2,NULL),(272,50,25,2,NULL),(273,42,46,2,NULL),(274,43,46,2,NULL),(275,44,46,2,NULL),(276,45,46,2,NULL),(277,46,46,2,NULL),(278,47,46,2,NULL),(279,48,46,2,NULL),(280,49,46,2,NULL),(281,50,46,2,NULL),(282,42,48,2,NULL),(283,43,48,2,NULL),(284,44,48,2,NULL),(285,45,48,2,NULL),(286,46,48,2,NULL),(287,47,48,2,NULL),(288,48,48,2,NULL),(289,49,48,2,NULL),(290,50,48,2,NULL),(291,40,36,2,NULL),(292,52,40,2,NULL),(293,53,40,2,NULL),(294,64,34,2,NULL),(295,67,40,2,NULL),(296,78,37,2,NULL),(297,79,38,2,NULL),(298,90,40,2,NULL),(299,63,1,2,NULL),(300,70,1,2,NULL),(301,71,1,2,NULL),(302,72,1,2,NULL),(303,73,1,2,NULL),(304,74,1,2,NULL),(305,75,1,2,NULL),(306,76,1,2,NULL),(307,77,1,2,NULL),(308,63,2,2,NULL),(309,70,2,2,NULL),(310,71,2,2,NULL),(311,72,2,2,NULL),(312,73,2,2,NULL),(313,74,2,2,NULL),(314,75,2,2,NULL),(315,76,2,2,NULL),(316,77,2,2,NULL),(317,63,4,2,NULL),(318,70,4,2,NULL),(319,71,4,2,NULL),(320,72,4,2,NULL),(321,73,4,2,NULL),(322,74,4,2,NULL),(323,75,4,2,NULL),(324,76,4,2,NULL),(325,77,4,2,NULL),(326,63,5,2,NULL),(327,70,5,2,NULL),(328,71,5,2,NULL),(329,72,5,2,NULL),(330,73,5,2,NULL),(331,74,5,2,NULL),(332,75,5,2,NULL),(333,76,5,2,NULL),(334,77,5,2,NULL),(335,63,6,2,NULL),(336,70,6,2,NULL),(337,71,6,2,NULL),(338,72,6,2,NULL),(339,73,6,2,NULL),(340,74,6,2,NULL),(341,75,6,2,NULL),(342,76,6,2,NULL),(343,77,6,2,NULL),(344,63,8,2,NULL),(345,70,8,2,NULL),(346,71,8,2,NULL),(347,72,8,2,NULL),(348,73,8,2,NULL),(349,74,8,2,NULL),(350,75,8,2,NULL),(351,76,8,2,NULL),(352,77,8,2,NULL),(353,63,11,2,NULL),(354,70,11,2,NULL),(355,71,11,2,NULL),(356,72,11,2,NULL),(357,73,11,2,NULL),(358,74,11,2,NULL),(359,75,11,2,NULL),(360,76,11,2,NULL),(361,77,11,2,NULL),(362,63,17,2,NULL),(363,70,17,2,NULL),(364,71,17,2,NULL),(365,72,17,2,NULL),(366,73,17,2,NULL),(367,74,17,2,NULL),(368,75,17,2,NULL),(369,76,17,2,NULL),(370,77,17,2,NULL),(371,63,21,2,NULL),(372,70,21,2,NULL),(373,71,21,2,NULL),(374,72,21,2,NULL),(375,73,21,2,NULL),(376,74,21,2,NULL),(377,75,21,2,NULL),(378,76,21,2,NULL),(379,77,21,2,NULL),(380,63,10,2,NULL),(381,70,10,2,NULL),(382,71,10,2,NULL),(383,72,10,2,NULL),(384,73,10,2,NULL),(385,74,10,2,NULL),(386,75,10,2,NULL),(387,76,10,2,NULL),(388,77,10,2,NULL),(389,63,15,2,NULL),(390,70,15,2,NULL),(391,71,15,2,NULL),(392,72,15,2,NULL),(393,73,15,2,NULL),(394,74,15,2,NULL),(395,75,15,2,NULL),(396,76,15,2,NULL),(397,77,15,2,NULL),(398,63,19,2,NULL),(399,70,19,2,NULL),(400,71,19,2,NULL),(401,72,19,2,NULL),(402,73,19,2,NULL),(403,74,19,2,NULL),(404,75,19,2,NULL),(405,76,19,2,NULL),(406,77,19,2,NULL),(407,63,22,2,NULL),(408,70,22,2,NULL),(409,71,22,2,NULL),(410,72,22,2,NULL),(411,73,22,2,NULL),(412,74,22,2,NULL),(413,75,22,2,NULL),(414,76,22,2,NULL),(415,77,22,2,NULL),(416,63,23,2,NULL),(417,70,23,2,NULL),(418,71,23,2,NULL),(419,72,23,2,NULL),(420,73,23,2,NULL),(421,74,23,2,NULL),(422,75,23,2,NULL),(423,76,23,2,NULL),(424,77,23,2,NULL),(425,63,25,2,NULL),(426,70,25,2,NULL),(427,71,25,2,NULL),(428,72,25,2,NULL),(429,73,25,2,NULL),(430,74,25,2,NULL),(431,75,25,2,NULL),(432,76,25,2,NULL),(433,77,25,2,NULL),(434,63,46,2,NULL),(435,70,46,2,NULL),(436,71,46,2,NULL),(437,72,46,2,NULL),(438,73,46,2,NULL),(439,74,46,2,NULL),(440,75,46,2,NULL),(441,76,46,2,NULL),(442,77,46,2,NULL),(443,63,48,2,NULL),(444,70,48,2,NULL),(445,71,48,2,NULL),(446,72,48,2,NULL),(447,73,48,2,NULL),(448,74,48,2,NULL),(449,75,48,2,NULL),(450,76,48,2,NULL),(451,77,48,2,NULL),(452,59,30,2,NULL);
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
INSERT INTO `PermissionStrings` VALUES (6,'android.permission.ACCESS_COARSE_LOCATION'),(16,'android.permission.ACCESS_FINE_LOCATION'),(12,'android.permission.ACCESS_GPS'),(3,'android.permission.ACCESS_LOCATION'),(24,'android.permission.ACCESS_NETWORK_STATE'),(7,'android.permission.CALL_PHONE'),(23,'android.permission.CAMERA'),(14,'android.permission.INTERNET'),(10,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(8,'android.permission.READ_CONTACTS'),(11,'android.permission.READ_PHONE_STATE'),(13,'android.permission.READ_SMS'),(19,'android.permission.RECEIVE_SMS'),(20,'android.permission.RESTART_PACKAGES'),(4,'android.permission.SEND_SMS'),(2,'android.permission.SET_WALLPAPER'),(21,'android.permission.VIBRATE'),(22,'android.permission.WAKE_LOCK'),(9,'android.permission.WRITE_CONTACTS'),(5,'android.permission.WRITE_EXTERNAL_STORAGE'),(18,'android.permission.WRITE_SMS'),(17,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(15,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(1,'com.android.launcher.permission.INSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(2,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(3,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(4,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(5,NULL,NULL,'content://com.android.contacts/data/emails',NULL,NULL,NULL),(6,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(7,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(8,NULL,NULL,'content://contacts/contact_methods/email',NULL,NULL,NULL),(9,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(10,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(11,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(12,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(13,NULL,NULL,'http://market.android.com/search?q=pub:\"MoonBeam Development\"',NULL,NULL,NULL),(14,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(15,NULL,NULL,'tel:',NULL,NULL,NULL),(16,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(17,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(18,NULL,NULL,'content://com.android.contacts/data/emails',NULL,NULL,NULL),(19,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(20,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(21,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(22,NULL,NULL,'http://wap.smskb.com',NULL,NULL,NULL),(23,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(24,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(25,NULL,NULL,'(.*)/checkuser.aspx?name=(.*)&code=(.*)&url=/user/manage.aspx',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'(.*)(.*)',NULL,NULL,NULL),(28,NULL,NULL,'',NULL,NULL,NULL),(29,NULL,NULL,'(.*)/checkuser.aspx?name=(.*)&code=(.*)&url=/user/',NULL,NULL,NULL),(30,NULL,NULL,'(.*)/checkuser.aspx?name=(.*)&code=(.*)&url=/chat/',NULL,NULL,NULL),(31,NULL,NULL,'(.*)/checkuser.aspx?name=(.*)&code=(.*)&url=/',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,1,1),(2,3,2),(3,4,3),(4,5,4),(5,9,5),(6,11,6),(7,16,7),(8,18,8),(9,19,9),(10,21,11),(11,22,12),(12,30,14),(13,35,16),(14,39,18),(15,41,19),(16,42,20),(17,43,21),(18,48,23),(19,54,24);
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
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,17),(17,1,16),(18,2,1),(19,2,2),(20,2,3),(21,2,4),(22,2,5),(23,2,6),(24,2,7),(25,2,8),(26,2,9),(27,2,10),(28,2,11),(29,2,12),(30,2,13),(31,2,14),(32,2,15),(33,2,17),(34,2,16),(35,3,1),(36,4,1),(37,4,2),(38,3,2),(39,3,3),(40,4,3),(41,3,4),(42,4,4),(43,4,5),(44,3,5),(45,3,6),(46,4,6),(47,4,7),(48,3,7),(49,4,8),(50,3,8),(51,4,9),(52,3,9),(53,4,10),(54,3,10),(55,4,11),(56,3,11),(57,4,12),(58,3,12),(59,3,13),(60,4,13),(61,4,14),(62,3,14),(63,3,15),(64,4,15),(65,4,17),(66,3,17),(67,4,16),(68,3,16),(69,3,19),(70,3,18),(71,3,20),(72,5,1),(73,5,2),(74,5,3),(75,5,4),(76,5,5),(77,5,6),(78,5,7),(79,5,8),(80,5,9),(81,5,10),(82,5,11),(83,5,12),(84,5,13),(85,5,14),(86,5,15),(87,5,17),(88,5,16),(89,5,19),(90,6,1),(91,5,18),(92,6,2),(93,5,21),(94,6,3),(95,5,20),(96,6,4),(97,6,5),(98,6,6),(99,6,7),(100,6,8),(101,6,9),(102,6,10),(103,6,11),(104,6,12),(105,6,13),(106,6,14),(107,7,1),(108,7,2),(109,6,15),(110,6,17),(111,7,3),(112,6,16),(113,7,4),(114,7,5),(115,6,19),(116,6,18),(117,7,6),(118,6,20),(119,7,7),(120,6,22),(121,7,8),(122,7,9),(123,7,10),(124,7,11),(125,7,12),(126,7,13),(127,7,14),(128,7,15),(129,7,17),(130,7,16),(131,7,19),(132,7,18),(133,7,20),(134,7,23),(135,7,24);
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

-- Dump completed on 2015-10-12  3:30:21
