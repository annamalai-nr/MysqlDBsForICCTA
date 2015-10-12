-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_58
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (15,'(.*)'),(16,'NULL-CONSTANT'),(3,'android.intent.action.ACTION_POWER_CONNECTED'),(4,'android.intent.action.BOOT_COMPLETED'),(7,'android.intent.action.INPUT_METHOD_CHANGED'),(1,'android.intent.action.MAIN'),(2,'android.intent.action.PHONE_STATE'),(14,'android.intent.action.SENDTO'),(13,'android.intent.action.UMS_CONNECTED'),(10,'android.intent.action.UMS_DISCONNECTED'),(6,'android.intent.action.USER_PRESENT'),(8,'android.intent.action.VIEW'),(5,'android.net.conn.CONNECTIVITY_CHANGE'),(9,'android.net.conn.MEDIA_NOFS'),(12,'android.net.wifi.PICK_WIFI_WORK'),(11,'android.provider.Telephony.SMS_RECEIVED');
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
INSERT INTO `Applications` VALUES (1,'com.hot.Girl',1),(2,'com.keji.danti1040',32),(3,'com.keji.danti611',32),(4,'com.keji.danti432',25),(5,'com.keji.danti730',32),(6,'com.keji.danti1012',32),(7,'com.test',203);
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
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.hot.Girl.SexyImages'),(2,1,'com.hot.Girl.ShowImage'),(3,1,'com.passionteam.lightdd.CoreService'),(4,1,'com.passionteam.lightdd.Receiver'),(5,2,'com.keji.danti.MainA'),(6,2,'com.keji.danti.Boutique'),(7,4,'com.keji.danti.MainA'),(8,2,'com.keji.danti.Background'),(9,2,'com.keji.danti.Lists'),(10,4,'com.keji.danti.Boutique'),(11,3,'com.keji.danti.MainA'),(12,2,'com.keji.danti.History'),(13,4,'com.keji.danti.Background'),(14,2,'com.keji.danti.TextDetail'),(15,4,'com.keji.danti.Lists'),(16,2,'com.keji.danti.Setting'),(17,3,'com.keji.danti.Boutique'),(18,4,'com.keji.danti.History'),(19,2,'com.android.view.custom.BaseAActivity'),(20,3,'com.keji.danti.Background'),(21,4,'com.keji.danti.TextDetail'),(22,5,'com.keji.danti.MainA'),(23,2,'com.android.view.custom.FirstAActivity'),(24,3,'com.keji.danti.Lists'),(25,4,'com.keji.danti.Setting'),(26,2,'com.android.view.custom.SecondAActivity'),(27,3,'com.keji.danti.History'),(28,4,'com.keji.danti.AdSmsService'),(29,6,'com.keji.danti.MainA'),(30,5,'com.keji.danti.Boutique'),(31,2,'com.android.view.custom.ThirdAActivity'),(32,3,'com.keji.danti.TextDetail'),(33,4,'com.android.adomb.AdSmsService'),(34,5,'com.keji.danti.Background'),(35,2,'com.android.view.custom.FourthAActivity'),(36,3,'com.keji.danti.Setting'),(37,4,'com.android.adomb.SystemPlus'),(38,2,'com.android.view.custom.FirstAService'),(39,5,'com.keji.danti.Lists'),(40,6,'com.keji.danti.Boutique'),(41,3,'com.android.view.custom.BaseAActivity'),(42,4,'com.android.adomb.MainRun'),(43,5,'com.keji.danti.History'),(44,2,'com.android.view.custom.SecondAService'),(45,6,'com.keji.danti.Background'),(46,3,'com.android.view.custom.FirstAActivity'),(47,1,'com.hot.Girl.SexyImages$2'),(48,4,'com.keji.danti.BaseBroadcastReceiver'),(49,5,'com.keji.danti.TextDetail'),(50,2,'com.android.view.custom.ThirdAService'),(51,3,'com.android.view.custom.SecondAActivity'),(52,6,'com.keji.danti.Lists'),(53,2,'com.android.view.custom.FourthAService'),(54,5,'com.keji.danti.Setting'),(55,6,'com.keji.danti.History'),(56,3,'com.android.view.custom.ThirdAActivity'),(57,2,'com.android.view.custom.BaseABroadcastReceiver'),(58,4,'com.android.adomb.ForAlarm'),(59,5,'com.android.view.custom.BaseAActivity'),(60,3,'com.android.view.custom.FourthAActivity'),(61,6,'com.keji.danti.TextDetail'),(62,5,'com.android.view.custom.FirstAActivity'),(63,6,'com.keji.danti.Setting'),(64,3,'com.android.view.custom.FirstAService'),(65,5,'com.android.view.custom.SecondAActivity'),(66,6,'com.android.view.custom.BaseAActivity'),(67,3,'com.android.view.custom.SecondAService'),(68,5,'com.android.view.custom.ThirdAActivity'),(69,6,'com.android.view.custom.FirstAActivity'),(70,3,'com.android.view.custom.ThirdAService'),(71,5,'com.android.view.custom.FourthAActivity'),(72,3,'com.android.view.custom.FourthAService'),(73,6,'com.android.view.custom.SecondAActivity'),(74,5,'com.android.view.custom.FirstAService'),(75,3,'com.android.view.custom.BaseABroadcastReceiver'),(76,6,'com.android.view.custom.ThirdAActivity'),(77,5,'com.android.view.custom.SecondAService'),(78,6,'com.android.view.custom.FourthAActivity'),(79,5,'com.android.view.custom.ThirdAService'),(80,6,'com.android.view.custom.FirstAService'),(81,5,'com.android.view.custom.FourthAService'),(82,6,'com.android.view.custom.SecondAService'),(83,5,'com.android.view.custom.BaseABroadcastReceiver'),(84,6,'com.android.view.custom.ThirdAService'),(85,6,'com.android.view.custom.FourthAService'),(86,6,'com.android.view.custom.BaseABroadcastReceiver'),(87,7,'com.test.Main'),(88,7,'com.android.view.custom.BaseAActivity'),(89,7,'com.android.view.custom.FirstAActivity'),(90,7,'com.android.view.custom.SecondAActivity'),(91,7,'com.android.view.custom.ThirdAActivity'),(92,7,'com.android.view.custom.FourthAActivity'),(93,7,'com.android.view.custom.FirstAService'),(94,7,'com.android.view.custom.SecondAService'),(95,7,'com.android.view.custom.ThirdAService'),(96,7,'com.android.view.custom.FourthAService'),(97,7,'com.android.view.custom.BaseABroadcastReceiver'),(98,4,'com.madhouse.android.ads._'),(99,4,'com.keji.danti.a.ao'),(100,4,'com.keji.danti.a.st'),(101,4,'com.keji.danti.a.a'),(102,4,'com.keji.danti.c.pa'),(103,2,'com.keji.danti.ph'),(104,2,'com.keji.danti.a.sv'),(105,4,'com.keji.danti.pf'),(106,5,'com.keji.danti.ph'),(107,2,'com.keji.danti.a.ao'),(108,3,'com.keji.danti.a.ar'),(109,2,'com.sec.android.providers.drm.Onion'),(110,4,'com.keji.danti.a.ar'),(111,5,'com.sec.android.providers.drm.Onion'),(112,6,'com.keji.danti.a.ao'),(113,3,'com.keji.danti.a.ao'),(114,5,'com.keji.danti.a.ar'),(115,3,'com.sec.android.providers.drm.Onion'),(116,5,'com.keji.danti.a.ao'),(117,3,'com.keji.danti.ph'),(118,6,'com.keji.danti.ph'),(119,3,'com.keji.danti.a.sy'),(120,6,'com.keji.danti.a.ar'),(121,5,'com.keji.danti.a.sy'),(122,6,'com.sec.android.providers.drm.Onion'),(123,3,'com.keji.danti.a.sv'),(124,5,'com.keji.danti.a.sv'),(125,6,'com.keji.danti.a.sy'),(126,6,'com.keji.danti.a.sv');
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
INSERT INTO `ComponentExtras` VALUES (1,3,'filename2'),(2,3,'url2'),(3,3,'PackageName2'),(4,3,'Description2'),(5,3,'Title2'),(6,13,'data'),(7,21,'notSaveDate'),(8,14,'notSaveDate'),(9,82,'PID'),(10,8,'data'),(11,21,'index'),(12,49,'index'),(13,24,'appsec'),(14,46,'data'),(15,85,'PID'),(16,35,'data'),(17,39,'appsec'),(18,49,'notSaveDate'),(19,59,'notSaveDate'),(20,32,'index'),(21,20,'data'),(22,74,'PID'),(23,50,'appsec'),(24,32,'notSaveDate'),(25,59,'index');
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'s',0,NULL,NULL),(4,4,'r',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',1,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'s',0,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'s',0,NULL,NULL),(34,35,'a',0,NULL,NULL),(35,34,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'s',0,NULL,NULL),(38,38,'s',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,41,'a',0,NULL,NULL),(41,40,'a',0,NULL,NULL),(42,42,'s',0,NULL,NULL),(43,44,'s',0,NULL,NULL),(44,43,'a',0,NULL,NULL),(45,46,'a',0,NULL,NULL),(46,45,'a',0,NULL,NULL),(47,48,'r',1,NULL,NULL),(48,50,'s',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,52,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,53,'s',0,NULL,NULL),(53,54,'a',0,NULL,NULL),(54,55,'a',0,NULL,NULL),(55,56,'a',0,NULL,NULL),(56,57,'r',1,NULL,NULL),(57,58,'r',0,NULL,NULL),(58,59,'a',0,NULL,NULL),(59,61,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,62,'a',0,NULL,NULL),(62,64,'s',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,65,'a',0,NULL,NULL),(65,67,'s',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,68,'a',0,NULL,NULL),(68,70,'s',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,71,'a',0,NULL,NULL),(71,72,'s',0,NULL,NULL),(72,73,'a',0,NULL,NULL),(73,74,'s',0,NULL,NULL),(74,75,'r',1,NULL,NULL),(75,76,'a',0,NULL,NULL),(76,77,'s',0,NULL,NULL),(77,78,'a',0,NULL,NULL),(78,79,'s',0,NULL,NULL),(79,80,'s',0,NULL,NULL),(80,81,'s',0,NULL,NULL),(81,82,'s',0,NULL,NULL),(82,83,'r',1,NULL,NULL),(83,84,'s',0,NULL,NULL),(84,85,'s',0,NULL,NULL),(85,86,'r',1,NULL,NULL),(86,87,'a',1,NULL,NULL),(87,88,'a',0,NULL,NULL),(88,89,'a',0,NULL,NULL),(89,90,'a',0,NULL,NULL),(90,91,'a',0,NULL,NULL),(91,92,'a',0,NULL,NULL),(92,93,'s',0,NULL,NULL),(93,94,'s',0,NULL,NULL),(94,95,'s',0,NULL,NULL),(95,96,'s',0,NULL,NULL),(96,97,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,4),(5,5,1),(6,6,15),(7,7,21),(8,8,15),(9,9,21),(10,10,42),(11,11,7),(12,12,7),(13,13,7),(14,14,47),(15,15,9),(16,16,57),(17,17,9),(18,18,15),(19,19,39),(20,20,10),(21,21,5),(22,22,32),(23,23,56),(24,24,25),(25,25,82),(26,26,29),(27,27,17),(28,28,66),(29,29,49),(30,30,74),(31,31,41),(32,32,30),(33,33,24),(34,34,50),(35,35,36),(36,36,58),(37,37,59),(38,38,40),(39,39,53),(40,40,85),(41,41,24),(42,42,39),(43,43,63),(44,44,22),(45,45,32),(46,46,49),(47,47,59),(48,48,11),(49,49,50);
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<com.hot.Girl.SexyImages: void showImage(int)>',5,'a',NULL),(2,2,'<com.hot.Girl.ShowImage: boolean onMenuItemSelected(int,android.view.MenuItem)>',9,'a',NULL),(3,1,'<com.hot.Girl.SexyImages: void onCreate(android.os.Bundle)>',5,'s',NULL),(4,4,'<com.passionteam.lightdd.Receiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',NULL),(5,47,'<com.hot.Girl.SexyImages$2: void onClick(android.view.View)>',6,'a',NULL),(6,98,'<com.madhouse.android.ads._: com.madhouse.android.ads.l _(android.content.Context)>',11,'p',NULL),(7,99,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(8,100,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(9,99,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(10,42,'<com.android.adomb.MainRun: void b()>',4,'s',NULL),(11,7,'<com.keji.danti.MainA: void b()>',21,'s',NULL),(12,101,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(13,7,'<com.keji.danti.MainA: void d()>',4,'s',NULL),(14,102,'<com.keji.danti.c.pa: void a(android.content.Context)>',8,'s',NULL),(15,103,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(16,58,'<com.android.adomb.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(17,104,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(18,105,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(19,106,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(20,101,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(21,107,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(22,108,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(23,109,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(24,110,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(25,111,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(26,112,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(27,113,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(28,66,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(29,114,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(30,115,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(31,112,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(32,116,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(33,117,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(34,118,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(35,119,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(36,59,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(37,120,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(38,41,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(39,121,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(40,122,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(41,123,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(42,124,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(43,125,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(44,116,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(45,108,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(46,114,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(47,120,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(48,113,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(49,126,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,5,8),(2,8,14),(3,19,8),(4,21,14),(5,23,15),(6,25,15),(7,26,16),(8,27,8),(9,28,16),(10,30,15),(11,31,15),(12,32,16),(13,33,8),(14,34,8),(15,38,16),(16,39,15),(17,40,16),(18,41,14),(19,42,15),(20,44,15),(21,47,16),(22,51,14);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/hot/Girl/ShowImage'),(2,2,'com/hot/Girl/SexyImages'),(3,3,'com/passionteam/lightdd/CoreService'),(4,4,'com/passionteam/lightdd/CoreService'),(5,6,'com/keji/danti/Setting'),(6,7,'com/keji/danti/TextDetail'),(7,9,'com.android.battery.BridgeProvider'),(8,10,'com/android/adomb/SystemPlus'),(9,11,'com.android.settings.WirelessSettings'),(10,12,'com.android.battery.BridgeProvider'),(11,13,'com/keji/danti/AdSmsService'),(12,14,'com/keji/danti/TextDetail'),(13,15,'com/android/adomb/MainRun'),(14,16,'com/keji/danti/TextDetail'),(15,17,'com/keji/danti/TextDetail'),(16,20,'com.android.settings.WirelessSettings'),(17,18,'com/keji/danti/TextDetail'),(18,22,'com/keji/danti/Background'),(19,24,'com.android.settings.WirelessSettings'),(20,29,'com/keji/danti/Setting'),(21,35,'com/keji/danti/TextDetail'),(22,36,'com/keji/danti/TextDetail'),(23,37,'com/keji/danti/Background'),(24,43,'com/keji/danti/Background'),(25,45,'com/keji/danti/TextDetail'),(26,46,'com/keji/danti/TextDetail'),(27,48,'com/keji/danti/Background'),(28,49,'com.android.settings.WirelessSettings'),(29,50,'com/keji/danti/Setting'),(30,53,'com.android.settings.WirelessSettings'),(31,52,'com/keji/danti/Setting'),(32,54,'com/keji/danti/TextDetail');
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,5,1),(2,6,3),(3,8,4),(4,19,5),(5,21,6),(6,27,7),(7,29,8),(8,33,9),(9,34,10),(10,41,11),(11,50,12),(12,52,13),(13,51,14);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'ImageId'),(2,7,'index'),(3,8,'sms_body'),(4,14,'index'),(5,16,'index'),(6,17,'index'),(7,18,'index'),(8,21,'sms_body'),(9,28,'packageName'),(10,30,'packageName'),(11,35,'index'),(12,36,'index'),(13,38,'packageName'),(14,39,'packageName'),(15,40,'packageName'),(16,41,'sms_body'),(17,42,'packageName'),(18,45,'index'),(19,46,'index'),(20,51,'sms_body'),(21,54,'index');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,1),(9,9,4),(10,9,5),(11,9,6),(12,9,7),(13,9,3),(14,10,11),(15,10,7),(16,10,12),(17,10,9),(18,10,5),(19,10,10),(20,10,6),(21,10,3),(22,10,4),(23,10,13),(24,11,5),(25,11,4),(26,11,3),(27,11,9),(28,11,7),(29,11,6),(30,11,10),(31,11,11),(32,11,12),(33,11,13),(34,12,4),(35,12,3),(36,12,6),(37,12,5),(38,12,7),(39,12,10),(40,12,9),(41,12,13),(42,12,11),(43,12,12),(44,13,11),(45,13,10),(46,13,9),(47,13,7),(48,13,6),(49,13,5),(50,13,4),(51,13,3),(52,13,12),(53,13,13),(54,14,1),(55,15,4),(56,15,5),(57,15,3),(58,15,9),(59,15,6),(60,15,7),(61,15,12),(62,15,13),(63,15,10),(64,15,11);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,2),(3,4,1),(4,5,1),(5,6,1),(6,7,1),(7,8,1),(8,14,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.hot.Girl'),(2,2,'com.hot.Girl'),(3,3,'com.hot.Girl'),(4,4,'com.hot.Girl'),(5,6,'com.keji.danti432'),(6,7,'com.keji.danti432'),(7,9,'com.android.battery'),(8,10,'com.keji.danti432'),(9,11,'com.android.settings'),(10,12,'com.android.battery'),(11,13,'com.keji.danti432'),(12,14,'com.keji.danti1040'),(13,15,'com.keji.danti432'),(14,16,'com.keji.danti1040'),(15,17,'com.keji.danti432'),(16,20,'com.android.settings'),(17,18,'com.keji.danti730'),(18,22,'com.keji.danti432'),(19,24,'com.android.settings'),(20,29,'com.keji.danti730'),(21,35,'com.keji.danti611'),(22,36,'com.keji.danti1012'),(23,37,'com.keji.danti611'),(24,43,'com.keji.danti730'),(25,45,'com.keji.danti611'),(26,46,'com.keji.danti730'),(27,48,'com.keji.danti1012'),(28,49,'com.android.settings'),(29,50,'com.keji.danti611'),(30,52,'com.keji.danti1012'),(31,53,'com.android.settings'),(32,54,'com.keji.danti1012');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,4,0),(4,5,0),(5,7,0),(6,11,0),(7,22,0),(8,29,0),(9,47,0),(10,56,0),(11,74,0),(12,82,0),(13,85,0),(14,86,0),(15,96,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,1,0),(6,7,0,0),(7,8,0,0),(8,9,1,0),(9,10,0,0),(10,11,0,0),(11,12,0,0),(12,13,0,0),(13,14,0,0),(14,15,0,0),(15,16,0,0),(16,17,0,0),(17,18,0,0),(18,19,0,0),(19,20,1,0),(20,21,0,0),(21,22,1,0),(22,24,0,0),(23,23,1,0),(24,26,0,0),(25,25,1,0),(26,25,1,0),(27,27,1,0),(28,28,1,0),(29,29,0,0),(30,28,1,0),(31,30,1,0),(32,30,1,0),(33,31,1,0),(34,32,1,0),(35,33,0,0),(36,34,0,0),(37,35,0,0),(38,36,1,0),(39,36,1,0),(40,38,1,0),(41,37,1,0),(42,38,1,0),(43,39,0,0),(44,40,1,0),(45,41,0,0),(46,42,0,0),(47,40,1,0),(48,43,0,0),(49,44,0,0),(50,45,0,0),(51,46,1,0),(52,47,0,0),(53,48,0,0),(54,49,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,1,2,2,NULL),(2,3,3,2,NULL),(3,40,1,2,NULL),(4,42,1,2,NULL),(5,38,1,2,NULL),(6,39,1,2,NULL),(7,28,1,2,NULL),(8,30,1,2,NULL),(9,2,1,2,NULL),(10,40,2,2,NULL),(11,42,2,2,NULL),(12,38,2,2,NULL),(13,39,2,2,NULL),(14,28,2,2,NULL),(15,30,2,2,NULL),(16,4,3,2,NULL),(17,40,4,2,NULL),(18,42,4,2,NULL),(19,38,4,2,NULL),(20,39,4,2,NULL),(21,28,4,2,NULL),(22,30,4,2,NULL),(23,40,11,2,NULL),(24,42,11,2,NULL),(25,38,11,2,NULL),(26,39,11,2,NULL),(27,28,11,2,NULL),(28,30,11,2,NULL),(29,40,5,2,NULL),(30,42,5,2,NULL),(31,40,56,2,NULL),(32,42,56,2,NULL),(33,40,74,2,NULL),(34,42,74,2,NULL),(35,40,7,2,NULL),(36,42,7,2,NULL),(37,40,47,2,NULL),(38,42,47,2,NULL),(39,40,22,2,NULL),(40,42,22,2,NULL),(41,40,82,2,NULL),(42,42,82,2,NULL),(43,40,29,2,NULL),(44,42,29,2,NULL),(45,40,85,2,NULL),(46,42,85,2,NULL),(47,40,86,2,NULL),(48,42,86,2,NULL),(49,40,96,2,NULL),(50,42,96,2,NULL),(51,38,74,2,NULL),(52,39,74,2,NULL),(53,28,74,2,NULL),(54,30,74,2,NULL),(55,38,22,2,NULL),(56,39,22,2,NULL),(57,28,22,2,NULL),(58,30,22,2,NULL),(59,38,5,2,NULL),(60,39,5,2,NULL),(61,38,56,2,NULL),(62,39,56,2,NULL),(63,38,7,2,NULL),(64,39,7,2,NULL),(65,38,47,2,NULL),(66,39,47,2,NULL),(67,38,82,2,NULL),(68,39,82,2,NULL),(69,38,29,2,NULL),(70,39,29,2,NULL),(71,38,85,2,NULL),(72,39,85,2,NULL),(73,38,86,2,NULL),(74,39,86,2,NULL),(75,38,96,2,NULL),(76,39,96,2,NULL),(77,28,82,2,NULL),(78,30,82,2,NULL),(79,28,86,2,NULL),(80,30,86,2,NULL),(81,28,96,2,NULL),(82,30,96,2,NULL),(83,28,29,2,NULL),(84,30,29,2,NULL),(85,28,5,2,NULL),(86,30,5,2,NULL),(87,28,56,2,NULL),(88,30,56,2,NULL),(89,28,7,2,NULL),(90,30,7,2,NULL),(91,28,47,2,NULL),(92,30,47,2,NULL),(93,28,85,2,NULL),(94,30,85,2,NULL),(95,10,37,2,NULL),(96,15,42,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (17,'android.permission.ACCESS_NETWORK_STATE'),(19,'android.permission.ACCESS_WIFI_STATE'),(10,'android.permission.CALL_PHONE'),(13,'android.permission.DISABLE_KEYGUARD'),(3,'android.permission.INTERNET'),(9,'android.permission.READ_CONTACTS'),(6,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(14,'android.permission.READ_SMS'),(15,'android.permission.RECEIVE_BOOT_COMPLETED'),(8,'android.permission.RECEIVE_SMS'),(12,'android.permission.RESTART_PACKAGES'),(4,'android.permission.SEND_SMS'),(2,'android.permission.SET_WALLPAPER'),(16,'android.permission.VIBRATE'),(18,'android.permission.WAKE_LOCK'),(5,'android.permission.WRITE_APN_SETTINGS'),(11,'android.permission.WRITE_CONTACTS'),(20,'android.permission.WRITE_EXTERNAL_STORAGE'),(7,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'http://www.google.com.hk/m/search?site=images&source=mog&hl=zh-CN&gl=cn&q=sexy',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'one',NULL,NULL,NULL),(4,NULL,NULL,'smsto:',NULL,NULL,NULL),(5,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(6,NULL,NULL,'smsto:',NULL,NULL,NULL),(7,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(8,NULL,NULL,'one',NULL,NULL,NULL),(9,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(10,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(11,NULL,NULL,'smsto:',NULL,NULL,NULL),(12,NULL,NULL,'one',NULL,NULL,NULL),(13,NULL,NULL,'one',NULL,NULL,NULL),(14,NULL,NULL,'smsto:',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,6,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,1),(5,2,3),(6,2,4),(7,2,5),(8,2,6),(9,2,7),(10,2,8),(11,2,9),(12,2,10),(13,2,11),(14,3,1),(15,2,12),(16,3,3),(17,2,13),(18,3,4),(19,2,14),(20,3,5),(21,4,17),(22,2,15),(23,3,6),(24,2,17),(25,4,16),(26,3,7),(27,2,16),(28,4,1),(29,3,8),(30,2,18),(31,4,19),(32,3,9),(33,4,3),(34,5,1),(35,3,10),(36,5,3),(37,4,20),(38,3,11),(39,4,7),(40,5,4),(41,3,12),(42,4,11),(43,5,5),(44,3,13),(45,5,6),(46,4,14),(47,3,14),(48,5,7),(49,3,15),(50,6,1),(51,5,8),(52,3,17),(53,6,3),(54,5,9),(55,3,16),(56,6,4),(57,5,10),(58,3,19),(59,6,5),(60,5,11),(61,6,6),(62,3,18),(63,5,12),(64,6,7),(65,5,13),(66,6,8),(67,5,14),(68,6,9),(69,5,15),(70,6,10),(71,5,17),(72,6,11),(73,5,16),(74,6,12),(75,5,19),(76,6,13),(77,5,18),(78,6,14),(79,6,15),(80,6,17),(81,6,16),(82,6,18),(83,7,1),(84,7,3),(85,7,4),(86,7,5),(87,7,6),(88,7,7),(89,7,8),(90,7,9),(91,7,10),(92,7,11),(93,7,12),(94,7,13),(95,7,14),(96,7,15),(97,7,17),(98,7,16),(99,7,18);
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

-- Dump completed on 2015-10-12  3:30:59
