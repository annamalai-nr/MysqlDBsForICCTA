-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_31
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
INSERT INTO `ActionStrings` VALUES (18,'(.*)'),(17,'NULL-CONSTANT'),(3,'android.intent.action.ACTION_POWER_CONNECTED'),(9,'android.intent.action.BATTERY_LOW'),(2,'android.intent.action.BATTERY_OKAY'),(6,'android.intent.action.BOOT_COMPLETED'),(11,'android.intent.action.INPUT_METHOD_CHANGED'),(1,'android.intent.action.MAIN'),(19,'android.intent.action.SENDTO'),(16,'android.intent.action.UMS_CONNECTED'),(14,'android.intent.action.UMS_DISCONNECTED'),(10,'android.intent.action.USER_PRESENT'),(20,'android.intent.action.VIEW'),(8,'android.net.conn.CONNECTIVITY_CHANGE'),(13,'android.net.conn.MEDIA_NOFS'),(15,'android.net.wifi.PICK_WIFI_WORK'),(5,'android.provider.Telephony.SIM_FULL'),(4,'android.provider.Telephony.SMS_RECEIVED'),(7,'android.provider.Telephony.WAP_PUSH_RECEIVED'),(12,'com.nd.commplatform.activity.SNSControlCenterActivity');
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
INSERT INTO `Applications` VALUES (1,'com.android.battery',24),(2,'com.zhangling.anTest3',5),(3,'com.keji.danti1031',32),(4,'com.keji.danti1041',32),(5,'com.keji.danti721',32),(6,'com.keji.danti681',32),(7,'com.keji.danti601',32);
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
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,2,'com.zhangling.anTest3.Main'),(2,1,'com.android.battery.BalckActivity2'),(3,1,'com.android.battery.BalckActivity'),(4,1,'com.android.battery.KillThreeSixZero'),(5,1,'com.android.battery.BridgeProvider'),(6,2,'com.zhangling.anTest3.Background'),(7,2,'com.zhangling.anTest3.Test'),(8,1,'com.android.battery.AdSmsService'),(9,2,'com.zhangling.anTest3.Booking'),(10,1,'com.android.battery.PhoneService'),(11,2,'com.zhangling.anTest3.Lists'),(12,1,'com.android.battery.BaseBroadcastReceiver'),(13,2,'com.zhangling.anTest3.Query'),(14,2,'com.zhangling.anTest3.History'),(15,2,'com.zhangling.anTest3.TextDetail'),(16,2,'com.zhangling.anTest3.List1'),(17,2,'com.zhangling.anTest3.Setting'),(18,3,'com.keji.danti.MainA'),(19,2,'com.zhangling.anTest3.TestPay'),(20,4,'com.keji.danti.MainA'),(21,2,'com.zhangling.anTest3.TestPay2'),(22,3,'com.keji.danti.Boutique'),(23,2,'com.nd.commplatform.activity.SNSControlCenterActivity'),(24,5,'com.keji.danti.MainA'),(25,4,'com.keji.danti.Boutique'),(26,3,'com.keji.danti.Background'),(27,4,'com.keji.danti.Background'),(28,3,'com.keji.danti.Lists'),(29,5,'com.keji.danti.Boutique'),(30,4,'com.keji.danti.Lists'),(31,6,'com.keji.danti.MainA'),(32,3,'com.keji.danti.History'),(33,4,'com.keji.danti.History'),(34,5,'com.keji.danti.Background'),(35,3,'com.keji.danti.TextDetail'),(36,4,'com.keji.danti.TextDetail'),(37,5,'com.keji.danti.Lists'),(38,3,'com.keji.danti.Setting'),(39,6,'com.keji.danti.Boutique'),(40,4,'com.keji.danti.Setting'),(41,5,'com.keji.danti.History'),(42,3,'com.android.view.custom.BaseAActivity'),(43,6,'com.keji.danti.Background'),(44,7,'com.keji.danti.MainA'),(45,4,'com.android.view.custom.BaseAActivity'),(46,5,'com.keji.danti.TextDetail'),(47,3,'com.android.view.custom.FirstAActivity'),(48,6,'com.keji.danti.Lists'),(49,5,'com.keji.danti.Setting'),(50,4,'com.android.view.custom.FirstAActivity'),(51,3,'com.android.view.custom.SecondAActivity'),(52,6,'com.keji.danti.History'),(53,7,'com.keji.danti.Boutique'),(54,5,'com.android.view.custom.BaseAActivity'),(55,4,'com.android.view.custom.SecondAActivity'),(56,3,'com.android.view.custom.ThirdAActivity'),(57,6,'com.keji.danti.TextDetail'),(58,7,'com.keji.danti.Background'),(59,4,'com.android.view.custom.ThirdAActivity'),(60,5,'com.android.view.custom.FirstAActivity'),(61,3,'com.android.view.custom.FourthAActivity'),(62,6,'com.keji.danti.Setting'),(63,5,'com.android.view.custom.SecondAActivity'),(64,7,'com.keji.danti.Lists'),(65,4,'com.android.view.custom.FourthAActivity'),(66,3,'com.android.view.custom.FirstAService'),(67,6,'com.android.view.custom.BaseAActivity'),(68,4,'com.android.view.custom.FirstAService'),(69,5,'com.android.view.custom.ThirdAActivity'),(70,7,'com.keji.danti.History'),(71,3,'com.android.view.custom.SecondAService'),(72,6,'com.android.view.custom.FirstAActivity'),(73,5,'com.android.view.custom.FourthAActivity'),(74,7,'com.keji.danti.TextDetail'),(75,4,'com.android.view.custom.SecondAService'),(76,3,'com.android.view.custom.ThirdAService'),(77,6,'com.android.view.custom.SecondAActivity'),(78,4,'com.android.view.custom.ThirdAService'),(79,7,'com.keji.danti.Setting'),(80,5,'com.android.view.custom.FirstAService'),(81,3,'com.android.view.custom.FourthAService'),(82,6,'com.android.view.custom.ThirdAActivity'),(83,4,'com.android.view.custom.FourthAService'),(84,5,'com.android.view.custom.SecondAService'),(85,7,'com.android.view.custom.BaseAActivity'),(86,3,'com.android.view.custom.BaseABroadcastReceiver'),(87,6,'com.android.view.custom.FourthAActivity'),(88,5,'com.android.view.custom.ThirdAService'),(89,7,'com.android.view.custom.FirstAActivity'),(90,4,'com.android.view.custom.BaseABroadcastReceiver'),(91,6,'com.android.view.custom.FirstAService'),(92,7,'com.android.view.custom.SecondAActivity'),(93,5,'com.android.view.custom.FourthAService'),(94,6,'com.android.view.custom.SecondAService'),(95,7,'com.android.view.custom.ThirdAActivity'),(96,5,'com.android.view.custom.BaseABroadcastReceiver'),(97,6,'com.android.view.custom.ThirdAService'),(98,7,'com.android.view.custom.FourthAActivity'),(99,6,'com.android.view.custom.FourthAService'),(100,7,'com.android.view.custom.FirstAService'),(101,6,'com.android.view.custom.BaseABroadcastReceiver'),(102,7,'com.android.view.custom.SecondAService'),(103,7,'com.android.view.custom.ThirdAService'),(104,7,'com.android.view.custom.FourthAService'),(105,7,'com.android.view.custom.BaseABroadcastReceiver'),(106,1,'c'),(107,2,'com.zhangling.anTest3.BaseAActivity'),(108,2,'com.zhangling.anTest3.BaseActivity$4'),(109,2,'com.zhangling.anTest3.Setting$3'),(110,2,'com.zhangling.anTest3.Booking$1'),(111,2,'com.zhangling.anTest3.Lists$3'),(112,3,'com.keji.danti.a.ar'),(113,4,'com.keji.danti.a.ao'),(114,5,'com.sec.android.providers.drm.Onion'),(115,4,'com.keji.danti.ph'),(116,5,'com.keji.danti.ph'),(117,3,'com.sec.android.providers.drm.Onion'),(118,7,'com.keji.danti.a.ao'),(119,5,'com.keji.danti.a.ar'),(120,6,'com.keji.danti.a.ao'),(121,3,'com.keji.danti.ph'),(122,4,'com.keji.danti.a.ar'),(123,3,'com.keji.danti.a.sv'),(124,6,'com.keji.danti.a.ar'),(125,7,'com.keji.danti.a.sv'),(126,5,'com.keji.danti.a.ao'),(127,3,'com.keji.danti.a.ao'),(128,7,'com.sec.android.providers.drm.Onion'),(129,6,'com.keji.danti.a.sy'),(130,4,'com.sec.android.providers.drm.Onion'),(131,3,'com.keji.danti.a.sy'),(132,4,'com.keji.danti.a.sy'),(133,7,'com.keji.danti.ph'),(134,6,'com.keji.danti.ph'),(135,5,'com.keji.danti.a.sy'),(136,7,'com.keji.danti.a.ar'),(137,6,'com.keji.danti.a.sv'),(138,5,'com.keji.danti.a.sv'),(139,4,'com.keji.danti.a.sv'),(140,6,'com.sec.android.providers.drm.Onion'),(141,7,'com.keji.danti.a.sy');
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,12,'pdus'),(2,15,'index'),(3,1,'beNotInstaled'),(4,15,'notSaveDate'),(5,86,'PID'),(6,27,'data'),(7,46,'index'),(8,35,'index'),(9,101,'PID'),(10,88,'PID'),(11,33,'data'),(12,35,'notSaveDate'),(13,26,'data'),(14,74,'index'),(15,36,'index'),(16,57,'notSaveDate'),(17,105,'PID'),(18,36,'notSaveDate'),(19,43,'data'),(20,96,'PID'),(21,29,'appsec'),(22,59,'data'),(23,28,'appsec'),(24,46,'notSaveDate'),(25,57,'index'),(26,37,'appsec'),(27,48,'appsec'),(28,64,'appsec'),(29,74,'notSaveDate');
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
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'s',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'s',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'s',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'r',1,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,30,'a',0,NULL,NULL),(30,29,'a',0,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,34,'a',0,NULL,NULL),(34,33,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',1,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,50,'a',0,NULL,NULL),(50,49,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,55,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,53,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,60,'a',0,NULL,NULL),(59,58,'a',0,NULL,NULL),(60,59,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'s',0,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'s',0,NULL,NULL),(69,70,'a',0,NULL,NULL),(70,69,'a',0,NULL,NULL),(71,71,'s',0,NULL,NULL),(72,72,'a',0,NULL,NULL),(73,75,'s',0,NULL,NULL),(74,74,'a',0,NULL,NULL),(75,73,'a',0,NULL,NULL),(76,76,'s',0,NULL,NULL),(77,77,'a',0,NULL,NULL),(78,78,'s',0,NULL,NULL),(79,79,'a',0,NULL,NULL),(80,80,'s',0,NULL,NULL),(81,81,'s',0,NULL,NULL),(82,82,'a',0,NULL,NULL),(83,84,'s',0,NULL,NULL),(84,83,'s',0,NULL,NULL),(85,85,'a',0,NULL,NULL),(86,86,'r',1,NULL,NULL),(87,87,'a',0,NULL,NULL),(88,90,'r',1,NULL,NULL),(89,89,'a',0,NULL,NULL),(90,88,'s',0,NULL,NULL),(91,91,'s',0,NULL,NULL),(92,92,'a',0,NULL,NULL),(93,93,'s',0,NULL,NULL),(94,94,'s',0,NULL,NULL),(95,95,'a',0,NULL,NULL),(96,96,'r',1,NULL,NULL),(97,97,'s',0,NULL,NULL),(98,98,'a',0,NULL,NULL),(99,99,'s',0,NULL,NULL),(100,100,'s',0,NULL,NULL),(101,101,'r',1,NULL,NULL),(102,102,'s',0,NULL,NULL),(103,103,'s',0,NULL,NULL),(104,104,'s',0,NULL,NULL),(105,105,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,12),(2,2,3),(3,3,12),(4,4,2),(5,5,12),(6,6,12),(7,7,1),(8,8,11),(9,9,17),(10,10,9),(11,11,15),(12,12,11),(13,13,42),(14,14,35),(15,15,20),(16,16,35),(17,17,96),(18,18,29),(19,19,67),(20,20,37),(21,21,86),(22,22,55),(23,23,25),(24,24,46),(25,25,39),(26,26,28),(27,27,44),(28,28,36),(29,29,46),(30,30,28),(31,32,57),(32,31,64),(33,33,36),(34,34,30),(35,35,22),(36,36,105),(37,37,62),(38,38,88),(39,39,24),(40,41,18),(41,40,85),(42,42,57),(43,43,54),(44,44,38),(45,45,40),(46,46,31),(47,47,64),(48,48,45),(49,49,48),(50,50,50),(51,51,74),(52,52,48),(53,53,37),(54,54,29),(55,55,74),(56,56,101),(57,57,79);
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,106,'<c: boolean a(android.content.Context,android.content.Intent)>',26,'a',NULL),(2,3,'<com.android.battery.BalckActivity: void a()>',19,'a',NULL),(3,106,'<c: boolean a(android.content.Context,android.content.Intent)>',44,'s',NULL),(4,2,'<com.android.battery.BalckActivity2: void a()>',19,'a',NULL),(5,106,'<c: boolean a(android.content.Context,android.content.Intent)>',41,'s',NULL),(6,106,'<c: boolean a(android.content.Context,android.content.Intent)>',38,'s',NULL),(7,107,'<com.zhangling.anTest3.BaseAActivity: void startBridge()>',6,'s',NULL),(8,108,'<com.zhangling.anTest3.BaseActivity$4: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(9,109,'<com.zhangling.anTest3.Setting$3: boolean onPreferenceClick(android.preference.Preference)>',9,'a',NULL),(10,110,'<com.zhangling.anTest3.Booking$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',17,'a',NULL),(11,15,'<com.zhangling.anTest3.TextDetail: boolean onOptionsItemSelected(android.view.MenuItem)>',28,'a',NULL),(12,111,'<com.zhangling.anTest3.Lists$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',22,'a',NULL),(13,42,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(14,112,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(15,113,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(16,112,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(17,114,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(18,115,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(19,67,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(20,116,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(21,117,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(22,118,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(23,113,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(24,119,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(25,120,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(26,121,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(27,118,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(28,122,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(29,119,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(30,123,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(31,125,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(32,124,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(33,122,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(34,126,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(35,127,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(36,128,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(37,129,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(38,130,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(39,126,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(40,85,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(41,127,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(42,124,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(43,54,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(44,131,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(45,132,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(46,120,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(47,133,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(48,45,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(49,134,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(50,135,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(51,136,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(52,137,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(53,138,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(54,139,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(55,136,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(56,140,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(57,141,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,1),(2,4,1),(3,13,17),(4,14,18),(5,15,19),(6,18,18),(7,19,17),(8,21,17),(9,23,18),(10,26,18),(11,24,20),(12,25,17),(13,27,20),(14,29,20),(15,32,19),(16,33,19),(17,38,20),(18,39,20),(19,40,18),(20,42,17),(21,44,18),(22,46,17),(23,47,19),(24,48,17),(25,49,18),(26,50,17),(27,54,18),(28,56,17),(29,59,18),(30,64,19),(31,65,18),(32,66,17);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,2,2),(2,4,2);
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
INSERT INTO `IClasses` VALUES (1,1,'com/android/battery/KillThreeSixZero'),(2,3,'com/android/battery/AdSmsService'),(3,5,'com/android/battery/BridgeProvider'),(4,6,'com/android/battery/PhoneService'),(5,7,'com.sec.android.bridge.BridgeProvider'),(6,8,'com/zhangling/anTest3/TextDetail'),(7,9,'com/zhangling/anTest3/Background'),(8,10,'com/zhangling/anTest3/TextDetail'),(9,11,'com/zhangling/anTest3/Setting'),(10,12,'com/zhangling/anTest3/TextDetail'),(11,16,'com.android.settings.WirelessSettings'),(12,17,'com/keji/danti/Setting'),(13,20,'com/keji/danti/TextDetail'),(14,22,'com/keji/danti/TextDetail'),(15,31,'com.android.settings.WirelessSettings'),(16,28,'com/keji/danti/Setting'),(17,30,'com/keji/danti/TextDetail'),(18,34,'com/keji/danti/TextDetail'),(19,36,'com/keji/danti/TextDetail'),(20,35,'com/keji/danti/Setting'),(21,37,'com/keji/danti/Setting'),(22,41,'com/keji/danti/Background'),(23,43,'com.android.settings.WirelessSettings'),(24,45,'com.android.settings.WirelessSettings'),(25,51,'com/keji/danti/Background'),(26,52,'com/keji/danti/Background'),(27,53,'com.android.settings.WirelessSettings'),(28,55,'com/keji/danti/TextDetail'),(29,57,'com/keji/danti/TextDetail'),(30,58,'com/keji/danti/Background'),(31,60,'com/keji/danti/Setting'),(32,61,'com/keji/danti/TextDetail'),(33,62,'com/keji/danti/TextDetail'),(34,63,'com/keji/danti/TextDetail'),(35,67,'com/keji/danti/Background');
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
INSERT INTO `IData` VALUES (1,11,1),(2,15,2),(3,17,3),(4,24,4),(5,27,5),(6,28,6),(7,29,7),(8,32,8),(9,35,9),(10,33,10),(11,37,11),(12,38,12),(13,39,13),(14,47,14),(15,60,15),(16,64,16);
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
INSERT INTO `IExtras` VALUES (1,8,'index'),(2,10,'index'),(3,10,'notSaveDate'),(4,12,'index'),(5,13,'packageName'),(6,14,'packageName'),(7,15,'sms_body'),(8,20,'index'),(9,22,'index'),(10,21,'packageName'),(11,26,'packageName'),(12,30,'index'),(13,32,'sms_body'),(14,33,'sms_body'),(15,34,'index'),(16,36,'index'),(17,46,'packageName'),(18,47,'sms_body'),(19,49,'packageName'),(20,50,'packageName'),(21,54,'packageName'),(22,55,'index'),(23,56,'packageName'),(24,57,'index'),(25,59,'packageName'),(26,61,'index'),(27,62,'index'),(28,63,'index'),(29,64,'sms_body');
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,10),(4,3,11),(5,3,4),(6,3,5),(7,3,2),(8,3,3),(9,3,8),(10,3,9),(11,3,6),(12,3,7),(13,4,1),(14,5,1),(15,6,1),(16,7,12),(17,8,1),(18,9,1),(19,10,11),(20,10,8),(21,10,10),(22,10,6),(23,10,15),(24,10,3),(25,10,4),(26,10,16),(27,10,13),(28,10,14),(29,11,4),(30,11,3),(31,11,8),(32,11,6),(33,11,10),(34,11,11),(35,11,13),(36,11,14),(37,11,15),(38,11,16),(39,12,4),(40,12,3),(41,12,6),(42,12,8),(43,12,10),(44,12,15),(45,12,16),(46,12,13),(47,12,14),(48,12,11),(49,13,11),(50,13,10),(51,13,8),(52,13,6),(53,13,4),(54,13,3),(55,13,16),(56,13,13),(57,13,14),(58,13,15),(59,14,10),(60,14,16),(61,14,15),(62,14,14),(63,14,13),(64,14,11),(65,14,6),(66,14,8),(67,14,4),(68,14,3);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,4,1),(3,5,1),(4,6,1),(5,8,1),(6,9,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.android.battery'),(2,3,'com.android.battery'),(3,5,'com.android.battery'),(4,6,'com.android.battery'),(5,7,'com.sec.android.bridge'),(6,8,'com.zhangling.anTest3'),(7,9,'com.zhangling.anTest3'),(8,10,'com.zhangling.anTest3'),(9,11,'com.zhangling.anTest3'),(10,12,'com.zhangling.anTest3'),(11,16,'com.android.settings'),(12,17,'com.keji.danti1031'),(13,20,'com.keji.danti1041'),(14,22,'com.keji.danti721'),(15,31,'com.android.settings'),(16,28,'com.keji.danti721'),(17,30,'com.keji.danti1031'),(18,34,'com.keji.danti1031'),(19,36,'com.keji.danti601'),(20,35,'com.keji.danti681'),(21,37,'com.keji.danti1041'),(22,41,'com.keji.danti681'),(23,43,'com.android.settings'),(24,45,'com.android.settings'),(25,51,'com.keji.danti1031'),(26,52,'com.keji.danti1041'),(27,53,'com.android.settings'),(28,55,'com.keji.danti601'),(29,57,'com.keji.danti681'),(30,58,'com.keji.danti721'),(31,60,'com.keji.danti601'),(32,61,'com.keji.danti681'),(33,63,'com.keji.danti1041'),(34,62,'com.keji.danti721'),(35,67,'com.keji.danti601');
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,5,0),(3,12,0),(4,18,0),(5,20,0),(6,24,0),(7,23,0),(8,31,0),(9,44,0),(10,86,0),(11,88,0),(12,96,0),(13,101,0),(14,105,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,3,0,0),(4,4,1,0),(5,5,0,0),(6,6,0,0),(7,7,0,0),(8,8,0,0),(9,9,0,0),(10,10,0,0),(11,11,0,0),(12,12,0,0),(13,13,1,0),(14,13,1,0),(15,14,1,0),(16,15,0,0),(17,16,0,0),(18,17,1,0),(19,17,1,0),(20,18,0,0),(21,19,1,0),(22,20,0,0),(23,21,1,0),(24,22,1,0),(25,21,1,0),(26,19,1,0),(27,23,1,0),(28,24,0,0),(29,25,1,0),(30,26,0,0),(31,27,0,0),(32,28,1,0),(33,29,1,0),(34,30,0,0),(35,32,0,0),(36,31,0,0),(37,33,0,0),(38,34,1,0),(39,35,1,0),(40,36,1,0),(41,37,0,0),(42,36,1,0),(43,39,0,0),(44,38,1,0),(45,41,0,0),(46,40,1,0),(47,42,1,0),(48,38,1,0),(49,40,1,0),(50,43,1,0),(51,44,0,0),(52,45,0,0),(53,46,0,0),(54,43,1,0),(55,47,0,0),(56,48,1,0),(57,49,0,0),(58,50,0,0),(59,48,1,0),(60,51,0,0),(61,52,0,0),(62,53,0,0),(63,54,0,0),(64,55,1,0),(65,56,1,0),(66,56,1,0),(67,57,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,4,44,2,NULL),(2,4,18,2,NULL),(3,2,44,2,NULL),(4,2,18,2,NULL),(5,13,44,2,NULL),(6,13,18,2,NULL),(7,14,44,2,NULL),(8,14,18,2,NULL),(9,56,44,2,NULL),(10,56,18,2,NULL),(11,59,44,2,NULL),(12,59,18,2,NULL),(13,50,44,2,NULL),(14,50,18,2,NULL),(15,54,44,2,NULL),(16,54,18,2,NULL),(17,21,44,2,NULL),(18,21,18,2,NULL),(19,26,44,2,NULL),(20,26,18,2,NULL),(21,46,44,2,NULL),(22,46,18,2,NULL),(23,49,44,2,NULL),(24,49,18,2,NULL),(25,46,5,2,NULL),(26,13,5,2,NULL),(27,49,5,2,NULL),(28,14,5,2,NULL),(29,46,12,2,NULL),(30,13,12,2,NULL),(31,49,12,2,NULL),(32,14,12,2,NULL),(33,46,1,2,NULL),(34,13,1,2,NULL),(35,49,1,2,NULL),(36,14,1,2,NULL),(37,46,23,2,NULL),(38,13,23,2,NULL),(39,49,23,2,NULL),(40,14,23,2,NULL),(41,46,86,2,NULL),(42,13,86,2,NULL),(43,49,86,2,NULL),(44,14,86,2,NULL),(45,46,20,2,NULL),(46,13,20,2,NULL),(47,49,20,2,NULL),(48,14,20,2,NULL),(49,46,88,2,NULL),(50,13,88,2,NULL),(51,49,88,2,NULL),(52,14,88,2,NULL),(53,46,24,2,NULL),(54,13,24,2,NULL),(55,49,24,2,NULL),(56,14,24,2,NULL),(57,46,96,2,NULL),(58,13,96,2,NULL),(59,49,96,2,NULL),(60,14,96,2,NULL),(61,46,31,2,NULL),(62,13,31,2,NULL),(63,49,31,2,NULL),(64,14,31,2,NULL),(65,46,101,2,NULL),(66,13,101,2,NULL),(67,49,101,2,NULL),(68,14,101,2,NULL),(69,46,105,2,NULL),(70,13,105,2,NULL),(71,49,105,2,NULL),(72,14,105,2,NULL),(73,4,105,2,NULL),(74,4,86,2,NULL),(75,2,105,2,NULL),(76,2,86,2,NULL),(77,56,105,2,NULL),(78,56,86,2,NULL),(79,59,105,2,NULL),(80,59,86,2,NULL),(81,50,105,2,NULL),(82,50,86,2,NULL),(83,54,105,2,NULL),(84,54,86,2,NULL),(85,21,105,2,NULL),(86,21,86,2,NULL),(87,26,105,2,NULL),(88,26,86,2,NULL),(89,4,24,2,NULL),(90,2,24,2,NULL),(91,56,24,2,NULL),(92,59,24,2,NULL),(93,50,24,2,NULL),(94,54,24,2,NULL),(95,21,24,2,NULL),(96,26,24,2,NULL),(97,50,5,2,NULL),(98,54,5,2,NULL),(99,50,12,2,NULL),(100,54,12,2,NULL),(101,50,1,2,NULL),(102,54,1,2,NULL),(103,50,23,2,NULL),(104,54,23,2,NULL),(105,50,20,2,NULL),(106,54,20,2,NULL),(107,50,88,2,NULL),(108,54,88,2,NULL),(109,50,96,2,NULL),(110,54,96,2,NULL),(111,50,31,2,NULL),(112,54,31,2,NULL),(113,50,101,2,NULL),(114,54,101,2,NULL),(115,4,96,2,NULL),(116,2,96,2,NULL),(117,56,96,2,NULL),(118,59,96,2,NULL),(119,21,96,2,NULL),(120,26,96,2,NULL),(121,4,5,2,NULL),(122,4,31,2,NULL),(123,4,12,2,NULL),(124,2,31,2,NULL),(125,4,1,2,NULL),(126,56,31,2,NULL),(127,4,23,2,NULL),(128,59,31,2,NULL),(129,4,20,2,NULL),(130,21,31,2,NULL),(131,4,88,2,NULL),(132,26,31,2,NULL),(133,4,101,2,NULL),(134,21,5,2,NULL),(135,2,5,2,NULL),(136,26,5,2,NULL),(137,2,12,2,NULL),(138,21,12,2,NULL),(139,2,1,2,NULL),(140,26,12,2,NULL),(141,2,23,2,NULL),(142,21,1,2,NULL),(143,2,20,2,NULL),(144,26,1,2,NULL),(145,2,88,2,NULL),(146,21,23,2,NULL),(147,2,101,2,NULL),(148,26,23,2,NULL),(149,56,5,2,NULL),(150,21,20,2,NULL),(151,59,5,2,NULL),(152,26,20,2,NULL),(153,56,12,2,NULL),(154,21,88,2,NULL),(155,59,12,2,NULL),(156,26,88,2,NULL),(157,21,101,2,NULL),(158,26,101,2,NULL),(159,56,101,2,NULL),(160,59,101,2,NULL),(161,56,20,2,NULL),(162,59,20,2,NULL),(163,56,1,2,NULL),(164,59,1,2,NULL),(165,56,23,2,NULL),(166,59,23,2,NULL),(167,56,88,2,NULL),(168,59,88,2,NULL),(169,11,17,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (15,'android.permission.ACCESS_NETWORK_STATE'),(19,'android.permission.ACCESS_WIFI_STATE'),(6,'android.permission.CALL_PHONE'),(9,'android.permission.DISABLE_KEYGUARD'),(17,'android.permission.INSTALL_PACKAGES'),(13,'android.permission.INTERNET'),(5,'android.permission.READ_CONTACTS'),(18,'android.permission.READ_LOGS'),(10,'android.permission.READ_PHONE_STATE'),(11,'android.permission.READ_SMS'),(12,'android.permission.RECEIVE_BOOT_COMPLETED'),(4,'android.permission.RECEIVE_SMS'),(8,'android.permission.RESTART_PACKAGES'),(1,'android.permission.SEND_SMS'),(14,'android.permission.VIBRATE'),(16,'android.permission.WAKE_LOCK'),(2,'android.permission.WRITE_APN_SETTINGS'),(7,'android.permission.WRITE_CONTACTS'),(3,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'one',NULL,NULL,NULL),(2,NULL,NULL,'smsto:',NULL,NULL,NULL),(3,NULL,NULL,'one',NULL,NULL,NULL),(4,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(5,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(6,NULL,NULL,'one',NULL,NULL,NULL),(7,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(8,NULL,NULL,'smsto:',NULL,NULL,NULL),(9,NULL,NULL,'one',NULL,NULL,NULL),(10,NULL,NULL,'smsto:',NULL,NULL,NULL),(11,NULL,NULL,'one',NULL,NULL,NULL),(12,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'smsto:',NULL,NULL,NULL),(15,NULL,NULL,'one',NULL,NULL,NULL),(16,NULL,NULL,'smsto:',NULL,NULL,NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,2,17),(17,1,16),(18,3,1),(19,3,2),(20,4,1),(21,3,3),(22,4,2),(23,3,4),(24,4,3),(25,3,5),(26,5,1),(27,4,4),(28,3,6),(29,5,2),(30,4,5),(31,3,7),(32,5,3),(33,4,6),(34,3,8),(35,5,4),(36,4,7),(37,3,9),(38,4,8),(39,5,5),(40,3,10),(41,4,9),(42,5,6),(43,6,1),(44,3,11),(45,4,10),(46,5,7),(47,6,2),(48,3,12),(49,4,11),(50,5,8),(51,6,3),(52,3,13),(53,5,9),(54,4,12),(55,6,4),(56,3,14),(57,5,10),(58,6,5),(59,4,13),(60,3,15),(61,5,11),(62,4,14),(63,6,6),(64,3,16),(65,4,15),(66,6,7),(67,5,12),(68,3,18),(69,6,8),(70,4,16),(71,5,13),(72,7,1),(73,5,14),(74,4,18),(75,6,9),(76,7,2),(77,6,10),(78,5,15),(79,7,3),(80,7,4),(81,6,11),(82,5,16),(83,5,19),(84,7,5),(85,6,12),(86,5,18),(87,6,13),(88,7,6),(89,7,7),(90,6,14),(91,6,15),(92,7,8),(93,6,16),(94,7,9),(95,7,10),(96,6,19),(97,6,18),(98,7,11),(99,7,12),(100,7,13),(101,7,14),(102,7,15),(103,7,16),(104,7,19),(105,7,18);
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

-- Dump completed on 2015-10-12  3:30:02
