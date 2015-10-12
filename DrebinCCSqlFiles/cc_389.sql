-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_389
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (9,'(.*)'),(10,'NULL-CONSTANT'),(6,'android.appwidget.action.APPWIDGET_UPDATE'),(3,'android.intent.action.BOOT_COMPLETED'),(1,'android.intent.action.MAIN'),(4,'android.intent.action.VIEW'),(2,'android.provider.Telephony.SMS_RECEIVED'),(5,'com.android.UPDATE_WIDGET'),(7,'com.rili.android.client.UPDATE_WIDGET_LAST_MONTH'),(8,'com.rili.android.client.UPDATE_WIDGET_NEXT_MONTH');
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
INSERT INTO `Applications` VALUES (1,'com.xlabtech.MonsterTruckRally',3),(2,'com.dseffects.MonkeyJump2',4),(3,'jp.co.kaku.spi.fs1006.Paid',4),(4,'com.rili.android.client15',15),(5,'com.miniarmy.engine',1),(6,'com.sumsharp.monster',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.xlabtech.MonsterTruckRally.MonsterTruckRally'),(2,1,'com.xlabtech.MonsterTruckRally.rally.c.bDhjknvj'),(3,1,'com.xlabtech.MonsterTruckRally.rally.c.AndroidIME'),(4,1,'com.xlabtech.MonsterTruckRally.rally.f'),(5,2,'com.dseffects.MonkeyJump2.MonkeyJump2'),(6,2,'com.dseffects.MonkeyJump2.jump2.c.rufCuAtj'),(7,2,'com.dseffects.MonkeyJump2.jump2.c.AndroidIME'),(8,2,'com.dseffects.MonkeyJump2.jump2.f'),(9,3,'jp.co.kaku.spi.fs1006.Paid.FS1006Activity'),(10,3,'jp.co.kaku.spi.fs1006.com.EntryScoreViewActivity'),(11,3,'jp.co.kaku.spi.fs1006.mobclix.MobclixAdvertisingView'),(12,3,'com.mobclix.android.sdk.MobclixBrowserActivity'),(13,3,'jp.co.kaku.spi.fs1006.Paid.activity.c.rFrfhCvj'),(14,3,'jp.co.kaku.spi.fs1006.Paid.activity.c.AndroidIME'),(15,3,'jp.co.kaku.spi.fs1006.Paid.activity.f'),(16,4,'com.rili.android.client15.CalendarStartPage'),(17,4,'com.rili.android.client15.CalendarMain'),(18,4,'com.rili.android.client15.CalendarMonth'),(19,4,'com.rili.android.client15.CalendarDay'),(20,4,'com.rili.android.client15.ScheduleEdit'),(21,4,'com.rili.android.client15.CalendarIndex'),(22,5,'com.miniarmy.engine.Startup'),(23,4,'com.rili.android.client15.AlmanacQuery'),(24,4,'com.rili.android.client15.CalendarQueryHuangli'),(25,5,'com.openfeint.internal.ui.IntroFlow'),(26,4,'com.rili.android.client15.CalendarQueryJiri'),(27,5,'com.openfeint.api.ui.Dashboard'),(28,4,'com.rili.android.client15.CalendarSetup'),(29,5,'com.openfeint.internal.ui.Settings'),(30,4,'com.rili.android.client15.CalendarNoteBook'),(31,5,'com.geinimi.custom.Ad3084_30840001'),(32,4,'com.rili.android.client15.CalendarNoteItem'),(33,4,'com.rili.android.client15.CalendarNoteDetail'),(34,5,'com.geinimi.custom.GoogleKeyboard'),(35,4,'com.rili.android.client15.CalendarNoteAllContents'),(36,5,'com.geinimi.AdServiceReceiver'),(37,4,'com.myanimal.automata.gleanybody.rkAEycajaaaaa'),(38,4,'com.myanimal.automata.gleanybody.AndroidIME'),(39,4,'com.rili.android.client15.widgets.ScheduleList2x2'),(40,4,'com.rili.android.client15.widgets.ScheduleList4x4'),(41,4,'com.rili.android.client15.widgets.MonthView4x3'),(42,4,'com.myanimal.ServiceReceiver'),(43,1,'com.xlabtech.MonsterTruckRally.rally.q'),(44,1,'com.xlabtech.MonsterTruckRally.rally.e.b'),(45,1,'com.xlabtech.MonsterTruckRally.rally.e'),(46,1,'com.xlabtech.MonsterTruckRally.rally.h'),(47,6,'com.sumsharp.monster.MonsterMIDlet'),(48,6,'com.sumsharp.android.ui.ChatUI'),(49,6,'com.sumsharp.android.ui.Input'),(50,6,'com.geinimi.custom.Ad3040_30410001'),(51,6,'com.geinimi.custom.GoogleKeyboard'),(52,6,'com.geinimi.AdServiceReceiver'),(53,2,'com.dseffects.MonkeyJump2.jump2.h'),(54,2,'com.dseffects.MonkeyJump2.jump2.q'),(55,2,'com.dseffects.MonkeyJump2.jump2.e.b'),(56,2,'com.dseffects.MonkeyJump2.jump2.e'),(57,3,'jp.co.kaku.spi.fs1006.Paid.activity.q'),(58,3,'com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener'),(59,3,'jp.co.kaku.spi.fs1006.Paid.activity.h'),(60,3,'jp.co.kaku.spi.fs1006.Paid.activity.e.b'),(61,3,'jp.co.kaku.spi.fs1006.Paid.activity.e'),(62,5,'com.geinimi.ads.c'),(63,5,'com.geinimi.c.b'),(64,5,'com.geinimi.c.j'),(65,5,'com.geinimi.AdService'),(66,5,'com.geinimi.AdActivity'),(67,6,'com.geinimi.AdActivity'),(68,6,'com.geinimi.c.b'),(69,6,'com.geinimi.AdService'),(70,6,'com.geinimi.ads.c'),(71,6,'com.geinimi.c.j'),(72,4,'com.myanimal.MyActivity'),(73,4,'com.rili.android.client15.CalendarDay$1'),(74,4,'com.myanimal.d.c'),(75,4,'com.myanimal.MyService'),(76,4,'com.rili.android.client15.CalendarQueryJiri$6$1'),(77,4,'com.rili.android.client15.CalendarMonth$5'),(78,4,'com.myanimal.a.c'),(79,4,'com.myanimal.d.j'),(80,4,'com.rili.android.client15.control.CalendarCorrespond$5'),(81,4,'com.rili.android.client15.CalendarDay$7'),(82,4,'com.rili.android.client15.CalendarIndex$3'),(83,4,'com.rili.android.client15.AlmanacQuery$2'),(84,4,'com.myanimal.a.i'),(85,4,'com.rili.android.client15.CalendarSetup$1$1');
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
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,4,'pdus'),(2,2,'cpid'),(3,2,'ACTIVITY_PARAM_KEY'),(4,2,'did'),(5,2,'salesid'),(6,2,'ptid'),(7,6,'salesid'),(8,8,'pdus'),(9,6,'(.*)'),(10,6,'ptid'),(11,8,'(.*)'),(12,6,'ACTIVITY_PARAM_KEY'),(13,6,'cpid'),(14,6,'did'),(15,12,'jp.co.kaku.spi.fs1006.Paid.currency'),(16,12,'jp.co.kaku.spi.fs1006.Paid.type'),(17,11,'cpid'),(18,12,'cpid'),(19,9,'cpid'),(20,13,'cpid'),(21,12,'jp.co.kaku.spi.fs1006.Paid.data'),(22,15,'pdus'),(23,13,'ACTIVITY_PARAM_KEY'),(24,11,'salesid'),(25,12,'salesid'),(26,9,'salesid'),(27,13,'salesid'),(28,11,'did'),(29,12,'did'),(30,9,'did'),(31,13,'did'),(32,11,'ptid'),(33,12,'ptid'),(34,9,'ptid'),(35,13,'ptid'),(36,31,'did'),(37,22,'did'),(38,34,'did'),(39,31,'cpid'),(40,22,'cpid'),(41,34,'cpid'),(42,29,'content_name'),(43,27,'content_name'),(44,25,'content_name'),(45,31,'ACTIVITY_PARAM_KEY'),(46,31,'ptid'),(47,22,'ptid'),(48,34,'ptid'),(49,31,'salesid'),(50,22,'salesid'),(51,34,'salesid'),(52,29,'screenName'),(53,27,'screenName'),(54,25,'screenName'),(55,46,'ACTIVITY_PARAM_KEY'),(56,43,'salesid'),(57,46,'salesid'),(58,47,'salesid'),(59,43,'cpid'),(60,46,'cpid'),(61,47,'cpid'),(62,43,'ptid'),(63,46,'ptid'),(64,47,'ptid'),(65,43,'did'),(66,46,'did'),(67,47,'did'),(68,37,'ACTIVITY_PARAM_KEY'),(69,30,'did'),(70,21,'did'),(71,33,'did'),(72,37,'did'),(73,32,'did'),(74,23,'did'),(75,26,'did'),(76,18,'did'),(77,19,'did'),(78,20,'did'),(79,24,'did'),(80,38,'did'),(81,30,'cpid'),(82,21,'cpid'),(83,33,'cpid'),(84,37,'cpid'),(85,32,'cpid'),(86,23,'cpid'),(87,26,'cpid'),(88,18,'cpid'),(89,19,'cpid'),(90,20,'cpid'),(91,24,'cpid'),(92,38,'cpid'),(93,30,'salesid'),(94,21,'salesid'),(95,33,'salesid'),(96,37,'salesid'),(97,32,'salesid'),(98,23,'salesid'),(99,26,'salesid'),(100,18,'salesid'),(101,19,'salesid'),(102,20,'salesid'),(103,24,'salesid'),(104,38,'salesid'),(105,17,'UMENG_CHANNEL'),(106,30,'UMENG_APPKEY'),(107,21,'UMENG_APPKEY'),(108,33,'UMENG_APPKEY'),(109,32,'UMENG_APPKEY'),(110,23,'UMENG_APPKEY'),(111,26,'UMENG_APPKEY'),(112,18,'UMENG_APPKEY'),(113,19,'UMENG_APPKEY'),(114,20,'UMENG_APPKEY'),(115,24,'UMENG_APPKEY'),(116,17,'UMENG_APPKEY'),(117,20,'id'),(118,30,'ptid'),(119,21,'ptid'),(120,33,'ptid'),(121,37,'ptid'),(122,32,'ptid'),(123,23,'ptid'),(124,26,'ptid'),(125,18,'ptid'),(126,19,'ptid'),(127,20,'ptid'),(128,24,'ptid'),(129,38,'ptid');
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
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'s',0,17,NULL),(4,4,'r',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'s',0,17,NULL),(8,8,'r',1,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'s',0,17,NULL),(15,15,'r',1,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',1,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'s',0,17,NULL),(35,35,'a',0,NULL,NULL),(36,36,'r',1,NULL,NULL),(37,37,'a',1,NULL,NULL),(38,38,'s',0,17,NULL),(39,39,'r',1,NULL,NULL),(40,40,'r',1,NULL,NULL),(41,41,'r',1,NULL,NULL),(42,42,'r',1,NULL,NULL),(43,47,'a',1,NULL,NULL),(44,48,'a',0,NULL,NULL),(45,49,'a',0,NULL,NULL),(46,50,'a',1,NULL,NULL),(47,51,'s',0,17,NULL),(48,52,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,1,4),(3,2,3),(4,3,3),(5,4,2),(6,5,6),(7,6,6),(8,6,8),(9,7,6),(10,8,7),(11,9,7),(12,10,7),(13,11,7),(14,12,6),(15,12,8),(16,13,13),(17,13,15),(18,14,12),(19,15,13),(20,16,14),(21,17,14),(22,18,34),(23,19,36),(24,20,34),(25,21,34),(26,22,34),(27,23,34),(28,24,34),(29,25,34),(30,26,31),(31,27,31),(32,28,34),(33,29,34),(34,30,46),(35,31,48),(36,32,47),(37,33,47),(38,34,47),(39,35,47),(40,36,46),(41,37,47),(42,38,47),(43,39,47),(44,40,47),(45,41,47),(46,42,37),(47,43,28),(48,43,26),(49,43,33),(50,43,32),(51,43,30),(52,43,20),(53,43,21),(54,43,18),(55,43,19),(56,43,24),(57,43,23),(58,44,38),(59,45,21),(60,46,38),(61,47,24),(62,47,23),(63,47,28),(64,47,26),(65,47,32),(66,47,33),(67,47,30),(68,47,21),(69,47,20),(70,47,19),(71,47,18),(72,48,24),(73,48,23),(74,48,26),(75,48,30),(76,48,32),(77,48,33),(78,48,18),(79,48,20),(80,48,19),(81,48,21),(82,49,17),(83,50,38),(84,51,23),(85,52,38),(86,53,38),(87,54,23),(88,54,24),(89,54,21),(90,54,28),(91,54,26),(92,54,32),(93,54,30),(94,54,18),(95,54,33),(96,54,20),(97,54,19),(98,55,28),(99,56,19),(100,56,20),(101,56,21),(102,56,33),(103,56,32),(104,56,18),(105,56,30),(106,56,26),(107,56,24),(108,56,23),(109,57,33),(110,57,32),(111,57,23),(112,57,20),(113,57,21),(114,57,18),(115,57,19),(116,57,24),(117,57,26),(118,57,30),(119,58,19),(120,59,38),(121,60,38),(122,61,16),(123,62,18),(124,63,19),(125,63,18),(126,63,21),(127,63,20),(128,63,23),(129,63,24),(130,63,33),(131,63,32),(132,63,26),(133,63,30),(134,64,38),(135,65,38),(136,66,37),(137,67,38),(138,68,42),(139,69,30),(140,69,28),(141,69,18),(142,69,19),(143,69,33),(144,69,32),(145,69,23),(146,69,21),(147,69,20),(148,69,26),(149,69,24);
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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,43,'<com.xlabtech.MonsterTruckRally.rally.q: void run()>',15,'s',NULL),(2,44,'<com.xlabtech.MonsterTruckRally.rally.e.b: void a(java.lang.String,java.lang.String)>',9,'a',NULL),(3,45,'<com.xlabtech.MonsterTruckRally.rally.e: void onDestroy()>',13,'s',NULL),(4,46,'<com.xlabtech.MonsterTruckRally.rally.h: void onCreate(android.os.Bundle)>',15,'a',NULL),(5,53,'<com.dseffects.MonkeyJump2.jump2.h: void onCreate(android.os.Bundle)>',15,'a',NULL),(6,54,'<com.dseffects.MonkeyJump2.jump2.q: void run()>',15,'s',NULL),(7,53,'<com.dseffects.MonkeyJump2.jump2.h: void onCreate(android.os.Bundle)>',17,'a',NULL),(8,55,'<com.dseffects.MonkeyJump2.jump2.e.b: void a(java.lang.String,java.lang.String)>',9,'a',NULL),(9,55,'<com.dseffects.MonkeyJump2.jump2.e.b: void a(java.lang.String,java.lang.String)>',9,'a',NULL),(10,56,'<com.dseffects.MonkeyJump2.jump2.e: void onDestroy()>',13,'s',NULL),(11,56,'<com.dseffects.MonkeyJump2.jump2.e: void onDestroy()>',13,'s',NULL),(12,54,'<com.dseffects.MonkeyJump2.jump2.q: void run()>',15,'s',NULL),(13,57,'<jp.co.kaku.spi.fs1006.Paid.activity.q: void run()>',15,'s',NULL),(14,58,'<com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener: void onClick(android.view.View)>',7,'a',NULL),(15,59,'<jp.co.kaku.spi.fs1006.Paid.activity.h: void onCreate(android.os.Bundle)>',15,'a',NULL),(16,60,'<jp.co.kaku.spi.fs1006.Paid.activity.e.b: void a(java.lang.String,java.lang.String)>',9,'a',NULL),(17,61,'<jp.co.kaku.spi.fs1006.Paid.activity.e: void onDestroy()>',13,'s',NULL),(18,62,'<com.geinimi.ads.c: boolean b()>',24,'p',NULL),(19,36,'<com.geinimi.AdServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',13,'s',NULL),(20,63,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',24,'p',0),(21,64,'<com.geinimi.c.j: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(22,63,'<com.geinimi.c.b: java.util.Vector a()>',27,'p',NULL),(23,63,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',13,'p',NULL),(24,63,'<com.geinimi.c.b: boolean a(java.lang.String)>',7,'p',NULL),(25,65,'<com.geinimi.AdService: void onDestroy()>',11,'s',NULL),(26,66,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',30,'a',NULL),(27,66,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',24,'s',NULL),(28,63,'<com.geinimi.c.b: java.util.Vector a()>',5,'p',NULL),(29,63,'<com.geinimi.c.b: java.util.Vector a()>',50,'p',NULL),(30,67,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',30,'a',NULL),(31,52,'<com.geinimi.AdServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',13,'s',NULL),(32,68,'<com.geinimi.c.b: java.util.Vector a()>',50,'p',NULL),(33,68,'<com.geinimi.c.b: boolean a(java.lang.String)>',7,'p',NULL),(34,68,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',13,'p',NULL),(35,69,'<com.geinimi.AdService: void onDestroy()>',11,'s',NULL),(36,67,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',24,'s',NULL),(37,70,'<com.geinimi.ads.c: boolean b()>',24,'p',NULL),(38,68,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',24,'p',0),(39,68,'<com.geinimi.c.b: java.util.Vector a()>',5,'p',NULL),(40,68,'<com.geinimi.c.b: java.util.Vector a()>',27,'p',NULL),(41,71,'<com.geinimi.c.j: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(42,72,'<com.myanimal.MyActivity: void onCreate(android.os.Bundle)>',24,'s',NULL),(43,73,'<com.rili.android.client15.CalendarDay$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(44,74,'<com.myanimal.d.c: boolean a(java.lang.String)>',7,'p',NULL),(45,21,'<com.rili.android.client15.CalendarIndex: boolean onMenuItemSelected(int,android.view.MenuItem)>',10,'a',NULL),(46,75,'<com.myanimal.MyService: void onDestroy()>',11,'s',NULL),(47,76,'<com.rili.android.client15.CalendarQueryJiri$6$1: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(48,77,'<com.rili.android.client15.CalendarMonth$5: void onClick(android.view.View)>',13,'a',NULL),(49,17,'<com.rili.android.client15.CalendarMain: void onStop()>',4,'r',NULL),(50,78,'<com.myanimal.a.c: boolean c()>',24,'p',NULL),(51,23,'<com.rili.android.client15.AlmanacQuery: boolean onMenuItemSelected(int,android.view.MenuItem)>',10,'a',NULL),(52,74,'<com.myanimal.d.c: java.util.Vector a()>',30,'p',NULL),(53,79,'<com.myanimal.d.j: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(54,80,'<com.rili.android.client15.control.CalendarCorrespond$5: void onClick(android.view.View)>',7,'a',NULL),(55,28,'<com.rili.android.client15.CalendarSetup: boolean onMenuItemSelected(int,android.view.MenuItem)>',10,'a',NULL),(56,81,'<com.rili.android.client15.CalendarDay$7: void onClick(android.view.View)>',13,'a',NULL),(57,82,'<com.rili.android.client15.CalendarIndex$3: void onClick(android.view.View)>',7,'a',NULL),(58,19,'<com.rili.android.client15.CalendarDay: boolean onMenuItemSelected(int,android.view.MenuItem)>',10,'a',NULL),(59,74,'<com.myanimal.d.c: boolean a(java.lang.String,java.lang.String)>',13,'p',NULL),(60,74,'<com.myanimal.d.c: java.util.Vector a()>',5,'p',NULL),(61,16,'<com.rili.android.client15.CalendarStartPage: void onCreate(android.os.Bundle)>',9,'a',NULL),(62,18,'<com.rili.android.client15.CalendarMonth: boolean onMenuItemSelected(int,android.view.MenuItem)>',10,'a',NULL),(63,83,'<com.rili.android.client15.AlmanacQuery$2: void onClick(android.view.View)>',7,'a',NULL),(64,84,'<com.myanimal.a.i: void a(java.lang.String)>',18,'a',NULL),(65,74,'<com.myanimal.d.c: boolean a(java.lang.String,java.lang.String)>',24,'p',0),(66,72,'<com.myanimal.MyActivity: void onCreate(android.os.Bundle)>',30,'a',NULL),(67,74,'<com.myanimal.d.c: java.util.Vector a()>',51,'p',NULL),(68,42,'<com.myanimal.ServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',13,'s',NULL),(69,85,'<com.rili.android.client15.CalendarSetup$1$1: void onClick(android.content.DialogInterface,int)>',11,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,14,4),(2,15,4),(3,20,9),(4,21,10),(5,29,9),(6,30,10),(7,37,5),(8,39,9),(9,40,10),(10,41,4),(11,49,4),(12,52,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'(.*)'),(2,2,'(.*)'),(3,3,'(.*)'),(4,4,'(.*)'),(5,5,'(.*)'),(6,6,'(.*)'),(7,7,'(.*)'),(8,8,'(.*)'),(9,9,'(.*)'),(10,10,'(.*)'),(11,11,'(.*)'),(12,12,'(.*)'),(13,13,'(.*)'),(14,16,'(.*)'),(15,17,'(.*)'),(16,18,'(.*)'),(17,19,'(.*)'),(18,22,'(.*)'),(19,23,'(.*)'),(20,24,'(.*)'),(21,25,'(.*)'),(22,26,'(.*)'),(23,27,'(.*)'),(24,28,'(.*)'),(25,31,'(.*)'),(26,32,'com/rili/android/client15/ScheduleEdit'),(27,33,'com/rili/android/client15/ScheduleEdit'),(28,34,'(.*)'),(29,35,'com/rili/android/client15/ScheduleEdit'),(30,36,'com/rili/android/client15/ScheduleEdit'),(31,38,'com/rili/android/client15/ScheduleEdit'),(32,42,'com/rili/android/client15/ScheduleEdit'),(33,43,'com/rili/android/client15/ScheduleEdit'),(34,44,'com/rili/android/client15/ScheduleEdit'),(35,45,'com/rili/android/client15/ScheduleEdit'),(36,46,'com/rili/android/client15/CalendarMain'),(37,47,'com/rili/android/client15/ScheduleEdit'),(38,48,'com/rili/android/client15/ScheduleEdit'),(39,50,'(.*)'),(40,51,'(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,14,1),(2,15,2),(3,41,18),(4,49,21),(5,52,23);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,20,'android.intent.extra.shortcut.NAME'),(2,20,'android.intent.extra.shortcut.ICON'),(3,20,'android.intent.extra.shortcut.INTENT'),(4,21,'android.intent.extra.shortcut.NAME'),(5,21,'android.intent.extra.shortcut.ICON'),(6,21,'android.intent.extra.shortcut.INTENT'),(7,29,'android.intent.extra.shortcut.NAME'),(8,29,'android.intent.extra.shortcut.ICON'),(9,29,'android.intent.extra.shortcut.INTENT'),(10,30,'android.intent.extra.shortcut.NAME'),(11,30,'android.intent.extra.shortcut.ICON'),(12,30,'android.intent.extra.shortcut.INTENT'),(13,32,'id'),(14,33,'id'),(15,35,'id'),(16,36,'id'),(17,38,'id'),(18,39,'android.intent.extra.shortcut.NAME'),(19,39,'android.intent.extra.shortcut.ICON'),(20,39,'android.intent.extra.shortcut.INTENT'),(21,40,'android.intent.extra.shortcut.NAME'),(22,40,'android.intent.extra.shortcut.ICON'),(23,40,'android.intent.extra.shortcut.INTENT'),(24,42,'id'),(25,43,'id'),(26,44,'id'),(27,45,'id'),(28,47,'id'),(29,48,'id');
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,2,1),(2,3,2),(3,4,3),(4,7,1),(5,8,1),(6,9,2),(7,10,2),(8,11,3),(9,12,3),(10,14,4),(11,15,4),(12,16,1),(13,17,3),(14,18,2),(15,21,1),(16,22,3),(17,23,1),(18,24,6),(19,24,5),(20,25,5),(21,25,6),(22,26,8),(23,26,7),(24,26,6),(25,26,5),(26,27,3),(27,29,1),(28,30,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,4,1),(4,5,1),(5,6,1),(6,7,1),(7,8,1),(8,11,1),(9,12,1),(10,13,1),(11,14,2),(12,15,2),(13,16,1),(14,17,1),(15,19,1),(16,20,1),(17,21,1),(18,22,1),(19,23,1),(20,27,1),(21,28,1),(22,29,1),(23,30,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,49,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.xlabtech.MonsterTruckRally'),(2,2,'(.*)'),(3,3,'com.xlabtech.MonsterTruckRally'),(4,4,'com.xlabtech.MonsterTruckRally'),(5,5,'com.dseffects.MonkeyJump2'),(6,6,'com.dseffects.MonkeyJump2'),(7,7,'com.dseffects.MonkeyJump2'),(8,8,'(.*)'),(9,9,'(.*)'),(10,10,'com.dseffects.MonkeyJump2'),(11,11,'com.dseffects.MonkeyJump2'),(12,12,'com.dseffects.MonkeyJump2'),(13,13,'jp.co.kaku.spi.fs1006.Paid'),(14,16,'jp.co.kaku.spi.fs1006.Paid'),(15,17,'(.*)'),(16,18,'jp.co.kaku.spi.fs1006.Paid'),(17,19,'com.miniarmy.engine'),(18,22,'com.miniarmy.engine'),(19,23,'com.miniarmy.engine'),(20,24,'com.miniarmy.engine'),(21,25,'com.sumsharp.monster'),(22,26,'com.sumsharp.monster'),(23,27,'com.sumsharp.monster'),(24,28,'com.sumsharp.monster'),(25,31,'com.rili.android.client15'),(26,32,'com.rili.android.client15'),(27,33,'com.rili.android.client15'),(28,34,'com.rili.android.client15'),(29,35,'com.rili.android.client15'),(30,36,'com.rili.android.client15'),(31,38,'com.rili.android.client15'),(32,42,'com.rili.android.client15'),(33,43,'com.rili.android.client15'),(34,44,'com.rili.android.client15'),(35,45,'com.rili.android.client15'),(36,46,'com.rili.android.client15'),(37,47,'com.rili.android.client15'),(38,48,'com.rili.android.client15'),(39,50,'com.rili.android.client15'),(40,51,'com.rili.android.client15');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,4,0),(4,4,0),(5,5,0),(6,5,0),(7,6,0),(8,6,0),(9,8,0),(10,8,0),(11,8,0),(12,8,0),(13,9,0),(14,10,0),(15,11,0),(16,13,0),(17,15,0),(18,15,0),(19,16,0),(20,22,0),(21,31,0),(22,36,0),(23,37,0),(24,39,0),(25,40,0),(26,41,0),(27,42,0),(28,43,0),(29,46,0),(30,48,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,0,0),(6,6,0,0),(7,7,0,0),(8,8,0,0),(9,9,0,0),(10,10,0,0),(11,11,0,0),(12,12,0,0),(13,13,0,0),(14,14,1,0),(15,14,1,0),(16,15,0,0),(17,16,0,0),(18,17,0,0),(19,19,0,0),(20,21,1,0),(21,21,1,0),(22,25,0,0),(23,26,0,0),(24,27,0,0),(25,30,0,0),(26,31,0,0),(27,35,0,0),(28,36,0,0),(29,41,1,0),(30,41,1,0),(31,42,0,0),(32,43,0,0),(33,45,0,0),(34,46,0,0),(35,47,0,0),(36,48,0,0),(37,49,1,0),(38,51,0,0),(39,53,1,0),(40,53,1,0),(41,54,1,0),(42,55,0,0),(43,56,0,0),(44,57,0,0),(45,58,0,0),(46,61,0,0),(47,62,0,0),(48,63,0,0),(49,64,1,0),(50,66,0,0),(51,68,0,0),(52,69,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (7,'android.permission.ACCESS_COARSE_LOCATION'),(19,'android.permission.ACCESS_FINE_LOCATION'),(15,'android.permission.ACCESS_GPS'),(3,'android.permission.ACCESS_LOCATION'),(20,'android.permission.ACCESS_NETWORK_STATE'),(23,'android.permission.ACCESS_WIFI_STATE'),(10,'android.permission.CALL_PHONE'),(24,'android.permission.CHANGE_WIFI_STATE'),(17,'android.permission.INTERNET'),(14,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(9,'android.permission.READ_CONTACTS'),(13,'android.permission.READ_PHONE_STATE'),(16,'android.permission.READ_SMS'),(8,'android.permission.RECEIVE_SMS'),(12,'android.permission.RESTART_PACKAGES'),(4,'android.permission.SEND_SMS'),(2,'android.permission.SET_WALLPAPER'),(22,'android.permission.VIBRATE'),(25,'android.permission.WAKE_LOCK'),(11,'android.permission.WRITE_CONTACTS'),(5,'android.permission.WRITE_EXTERNAL_STORAGE'),(6,'android.permission.WRITE_SMS'),(21,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(18,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(1,'com.android.launcher.permission.INSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'',NULL,NULL,NULL),(3,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(4,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(5,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(6,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(7,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(8,NULL,NULL,'content://contacts/contact_methods/email',NULL,NULL,NULL),(9,NULL,NULL,'content://contacts/contact_methods/email',NULL,NULL,NULL),(10,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(11,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(12,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(13,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(14,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(15,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(16,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(17,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(18,NULL,NULL,'http://www.365rili.com/rili_reg.jsp',NULL,NULL,NULL),(19,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(20,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(21,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(22,NULL,NULL,'content://com.android.contacts/data/emails',NULL,NULL,NULL),(23,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,18,3),(2,22,4),(3,23,5),(4,24,6),(5,28,7),(6,29,8),(7,32,9),(8,33,10),(9,34,11),(10,37,12),(11,39,13),(12,40,14),(13,44,15),(14,50,16),(15,52,17),(16,59,19),(17,60,20),(18,67,22);
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
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,17),(17,1,16),(18,1,19),(19,1,18),(20,1,21),(21,1,20),(22,2,1),(23,2,2),(24,2,3),(25,2,4),(26,2,5),(27,2,6),(28,2,7),(29,2,8),(30,2,9),(31,2,10),(32,2,11),(33,2,12),(34,2,13),(35,2,14),(36,2,15),(37,2,17),(38,2,16),(39,2,19),(40,2,18),(41,2,21),(42,2,22),(43,3,1),(44,3,2),(45,3,3),(46,3,4),(47,3,5),(48,3,6),(49,3,7),(50,3,8),(51,3,9),(52,3,10),(53,3,11),(54,3,12),(55,3,13),(56,3,14),(57,3,15),(58,3,17),(59,3,16),(60,3,19),(61,3,18),(62,3,21),(63,3,22),(64,4,1),(65,4,2),(66,4,3),(67,4,4),(68,4,5),(69,4,7),(70,4,9),(71,4,10),(72,4,11),(73,4,13),(74,4,14),(75,4,15),(76,4,17),(77,5,1),(78,4,16),(79,5,2),(80,4,19),(81,5,3),(82,4,18),(83,5,4),(84,5,5),(85,4,21),(86,5,7),(87,5,9),(88,5,10),(89,5,11),(90,5,13),(91,5,14),(92,5,15),(93,5,17),(94,5,16),(95,5,19),(96,5,18),(97,5,21),(98,5,20),(99,6,1),(100,6,2),(101,6,3),(102,6,4),(103,6,5),(104,6,7),(105,6,9),(106,6,10),(107,6,11),(108,6,13),(109,6,14),(110,6,15),(111,6,17),(112,6,16),(113,6,19),(114,6,18),(115,6,21),(116,6,23),(117,6,25),(118,6,24);
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

-- Dump completed on 2015-10-09  0:39:26
