-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_39
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (16,'(.*)'),(15,'NULL-CONSTANT'),(4,'android.intent.action.ACTION_POWER_CONNECTED'),(6,'android.intent.action.BOOT_COMPLETED'),(10,'android.intent.action.INPUT_METHOD_CHANGED'),(1,'android.intent.action.MAIN'),(13,'android.intent.action.PACKAGE_ADDED'),(14,'android.intent.action.SENDTO'),(11,'android.intent.action.UMS_CONNECTED'),(3,'android.intent.action.UMS_DISCONNECTED'),(9,'android.intent.action.USER_PRESENT'),(12,'android.intent.action.VIEW'),(8,'android.net.conn.CONNECTIVITY_CHANGE'),(2,'android.net.conn.MEDIA_NOFS'),(7,'android.net.wifi.PICK_WIFI_WORK'),(5,'android.provider.Telephony.SMS_RECEIVED');
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
INSERT INTO `Applications` VALUES (1,'identity.android.dbCounter',2),(2,'com.keji.danti1020',32),(3,'com.lusa',29),(4,'com.keji.danti728',32),(5,'com.keji.danti394',25),(6,'com.keji.danti421',25),(7,'com.wuzla.game.ScooterHero_Paid',22);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'identity.android.dbCounter.MainActivity'),(2,1,'identity.android.dbCounter.SystemPlus'),(3,1,'identity.android.dbCounter.MainRun'),(4,1,'identity.android.dbCounter.ForAlarm'),(5,1,'identity.android.dbCounter.BaseAActivity'),(6,2,'com.keji.danti.MainA'),(7,3,'com.lusa.a6'),(8,2,'com.keji.danti.Boutique'),(9,3,'com.waps.OffersWebView'),(10,2,'com.keji.danti.Background'),(11,3,'com.lusa.a4'),(12,2,'com.keji.danti.Lists'),(13,2,'com.keji.danti.History'),(14,2,'com.keji.danti.TextDetail'),(15,2,'com.keji.danti.Setting'),(16,5,'com.keji.danti.MainA'),(17,2,'com.android.view.custom.BaseAActivity'),(18,7,'com.wuzla.game.ScooterHero_Paid.ScooterHero_Paid'),(19,2,'com.android.view.custom.FirstAActivity'),(20,2,'com.android.view.custom.SecondAActivity'),(21,6,'com.keji.danti.MainA'),(22,5,'com.keji.danti.Boutique'),(23,7,'com.wuzla.game.ScooterHero_Paid.SystemPlus'),(24,2,'com.android.view.custom.ThirdAActivity'),(25,5,'com.keji.danti.Background'),(26,7,'com.wuzla.game.ScooterHero_Paid.MainRun'),(27,2,'com.android.view.custom.FourthAActivity'),(28,4,'com.keji.danti.MainA'),(29,5,'com.keji.danti.Lists'),(30,6,'com.keji.danti.Boutique'),(31,7,'com.wuzla.game.ScooterHero_Paid.ForAlarm'),(32,2,'com.android.view.custom.FirstAService'),(33,5,'com.keji.danti.History'),(34,6,'com.keji.danti.Background'),(35,2,'com.android.view.custom.SecondAService'),(36,5,'com.keji.danti.TextDetail'),(37,6,'com.keji.danti.Lists'),(38,4,'com.keji.danti.Boutique'),(39,2,'com.android.view.custom.ThirdAService'),(40,5,'com.keji.danti.Setting'),(41,4,'com.keji.danti.Background'),(42,6,'com.keji.danti.History'),(43,2,'com.android.view.custom.FourthAService'),(44,5,'com.keji.danti.AdSmsService'),(45,6,'com.keji.danti.TextDetail'),(46,4,'com.keji.danti.Lists'),(47,2,'com.android.view.custom.BaseABroadcastReceiver'),(48,5,'com.android.adomb.AdSmsService'),(49,6,'com.keji.danti.Setting'),(50,4,'com.keji.danti.History'),(51,5,'com.android.adomb.SystemPlus'),(52,6,'com.keji.danti.AdSmsService'),(53,4,'com.keji.danti.TextDetail'),(54,5,'com.android.adomb.MainRun'),(55,6,'com.android.adomb.AdSmsService'),(56,4,'com.keji.danti.Setting'),(57,5,'com.keji.danti.BaseBroadcastReceiver'),(58,6,'com.android.adomb.SystemPlus'),(59,4,'com.android.view.custom.BaseAActivity'),(60,4,'com.android.view.custom.FirstAActivity'),(61,6,'com.android.adomb.MainRun'),(62,5,'com.android.adomb.ForAlarm'),(63,4,'com.android.view.custom.SecondAActivity'),(64,6,'com.keji.danti.BaseBroadcastReceiver'),(65,4,'com.android.view.custom.ThirdAActivity'),(66,4,'com.android.view.custom.FourthAActivity'),(67,6,'com.android.adomb.ForAlarm'),(68,4,'com.android.view.custom.FirstAService'),(69,4,'com.android.view.custom.SecondAService'),(70,4,'com.android.view.custom.ThirdAService'),(71,4,'com.android.view.custom.FourthAService'),(72,4,'com.android.view.custom.BaseABroadcastReceiver'),(73,3,'com.android.sf.dna.To'),(74,3,'com.waps.AppConnect'),(75,3,'com.waps.k'),(76,3,'com.waps.m'),(77,5,'com.keji.danti.a.ar'),(78,5,'com.keji.danti.a.ao'),(79,5,'com.keji.danti.c.pa'),(80,5,'com.keji.danti.a.st'),(81,7,'com.wuzla.game.ScooterHero_Paid.BaseAActivity'),(82,6,'com.keji.danti.pf'),(83,2,'com.keji.danti.a.ao'),(84,5,'com.keji.danti.pf'),(85,6,'com.keji.danti.a.a'),(86,2,'com.keji.danti.a.ar'),(87,5,'com.keji.danti.a.a'),(88,6,'com.keji.danti.a.ao'),(89,5,'com.madhouse.android.ads._'),(90,6,'com.keji.danti.c.pa'),(91,2,'com.keji.danti.ph'),(92,4,'com.sec.android.providers.drm.Onion'),(93,2,'com.keji.danti.a.sy'),(94,2,'com.sec.android.providers.drm.Onion'),(95,4,'com.keji.danti.a.ao'),(96,6,'com.madhouse.android.ads._'),(97,4,'com.keji.danti.a.ar'),(98,6,'com.keji.danti.a.ar'),(99,2,'com.keji.danti.a.sv'),(100,4,'com.keji.danti.a.sv'),(101,4,'com.keji.danti.ph'),(102,6,'com.keji.danti.a.st'),(103,4,'com.keji.danti.a.sy');
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,6,'WAPS_ID'),(2,8,'URL'),(3,8,'Offers_URL'),(4,8,'isFinshClose'),(5,6,'APP_ID'),(6,8,'URL_PARAMS'),(7,6,'DEVICE_ID'),(8,8,'USER_ID'),(9,8,'CLIENT_PACKAGE'),(10,6,'WAPS_PID'),(11,6,'CLIENT_PACKAGE'),(12,35,'notSaveDate'),(13,9,'data'),(14,33,'data'),(15,24,'data'),(16,35,'index'),(17,46,'PID'),(18,71,'PID'),(19,13,'index'),(20,52,'notSaveDate'),(21,41,'data'),(22,11,'appsec'),(23,45,'appsec'),(24,13,'notSaveDate'),(25,44,'notSaveDate'),(26,44,'index'),(27,52,'index');
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'s',0,NULL,NULL),(3,3,'s',0,NULL,NULL),(4,4,'r',0,NULL,NULL),(5,6,'a',1,NULL,NULL),(6,7,'a',1,NULL,NULL),(7,8,'a',0,NULL,NULL),(8,9,'a',0,NULL,NULL),(9,10,'a',0,NULL,NULL),(10,11,'s',0,NULL,NULL),(11,12,'a',0,NULL,NULL),(12,13,'a',0,NULL,NULL),(13,14,'a',0,NULL,NULL),(14,15,'a',0,NULL,NULL),(15,16,'a',1,NULL,NULL),(16,17,'a',0,NULL,NULL),(17,18,'a',1,NULL,NULL),(18,19,'a',0,NULL,NULL),(19,20,'a',0,NULL,NULL),(20,21,'a',1,NULL,NULL),(21,22,'a',0,NULL,NULL),(22,23,'s',0,NULL,NULL),(23,24,'a',0,NULL,NULL),(24,25,'a',0,NULL,NULL),(25,26,'s',0,NULL,NULL),(26,27,'a',0,NULL,NULL),(27,28,'a',1,NULL,NULL),(28,29,'a',0,NULL,NULL),(29,30,'a',0,NULL,NULL),(30,31,'r',0,NULL,NULL),(31,32,'s',0,NULL,NULL),(32,33,'a',0,NULL,NULL),(33,34,'a',0,NULL,NULL),(34,35,'s',0,NULL,NULL),(35,36,'a',0,NULL,NULL),(36,38,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,39,'s',0,NULL,NULL),(39,40,'a',0,NULL,NULL),(40,42,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,43,'s',0,NULL,NULL),(43,44,'s',0,NULL,NULL),(44,45,'a',0,NULL,NULL),(45,46,'a',0,NULL,NULL),(46,47,'r',1,NULL,NULL),(47,48,'s',0,NULL,NULL),(48,49,'a',0,NULL,NULL),(49,50,'a',0,NULL,NULL),(50,51,'s',0,NULL,NULL),(51,52,'s',0,NULL,NULL),(52,53,'a',0,NULL,NULL),(53,54,'s',0,NULL,NULL),(54,55,'s',0,NULL,NULL),(55,56,'a',0,NULL,NULL),(56,57,'r',1,NULL,NULL),(57,59,'a',0,NULL,NULL),(58,58,'s',0,NULL,NULL),(59,60,'a',0,NULL,NULL),(60,61,'s',0,NULL,NULL),(61,62,'r',0,NULL,NULL),(62,63,'a',0,NULL,NULL),(63,64,'r',1,NULL,NULL),(64,65,'a',0,NULL,NULL),(65,66,'a',0,NULL,NULL),(66,67,'r',0,NULL,NULL),(67,68,'s',0,NULL,NULL),(68,69,'s',0,NULL,NULL),(69,70,'s',0,NULL,NULL),(70,71,'s',0,NULL,NULL),(71,72,'r',1,NULL,NULL),(72,76,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,4),(3,3,1),(4,4,6),(5,5,6),(6,6,6),(7,7,8),(8,8,39),(9,9,53),(10,10,61),(11,11,35),(12,12,56),(13,13,28),(14,14,17),(15,15,35),(16,16,25),(17,17,37),(18,18,7),(19,19,30),(20,20,28),(21,22,17),(22,21,29),(23,23,13),(24,24,21),(25,25,44),(26,26,16),(27,27,28),(28,28,63),(29,29,15),(30,30,11),(31,31,71),(32,32,15),(33,33,20),(34,34,14),(35,35,15),(36,36,57),(37,37,20),(38,38,46),(39,39,66),(40,40,27),(41,41,13),(42,42,37),(43,43,52),(44,44,48),(45,45,11),(46,46,60),(47,47,36),(48,48,5),(49,49,44),(50,50,45),(51,51,20),(52,52,45),(53,53,37),(54,54,55),(55,55,52);
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,5,'<identity.android.dbCounter.BaseAActivity: void c()>',6,'s',NULL),(2,4,'<identity.android.dbCounter.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(3,5,'<identity.android.dbCounter.BaseAActivity: void b()>',17,'s',NULL),(4,73,'<com.android.sf.dna.To: void c()>',7,'s',NULL),(5,7,'<com.lusa.a6: void startFtpServer()>',6,'s',NULL),(6,74,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(7,75,'<com.waps.k: java.lang.String a(java.lang.String[])>',77,'a',NULL),(8,77,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(9,54,'<com.android.adomb.MainRun: void b()>',4,'s',NULL),(10,62,'<com.android.adomb.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(11,78,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(12,79,'<com.keji.danti.c.pa: void a(android.content.Context)>',8,'s',NULL),(13,80,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(14,81,'<com.wuzla.game.ScooterHero_Paid.BaseAActivity: void c()>',6,'s',NULL),(15,78,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(16,26,'<com.wuzla.game.ScooterHero_Paid.MainRun: void b()>',4,'s',NULL),(17,82,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(18,83,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(19,31,'<com.wuzla.game.ScooterHero_Paid.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(20,84,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(21,85,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(22,81,'<com.wuzla.game.ScooterHero_Paid.BaseAActivity: void b()>',17,'s',NULL),(23,86,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(24,87,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(25,88,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(26,17,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(27,89,'<com.madhouse.android.ads._: com.madhouse.android.ads.l _(android.content.Context)>',11,'p',NULL),(28,90,'<com.keji.danti.c.pa: void a(android.content.Context)>',8,'s',NULL),(29,16,'<com.keji.danti.MainA: void b()>',21,'s',NULL),(30,91,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(31,92,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(32,16,'<com.keji.danti.MainA: void d()>',4,'s',NULL),(33,21,'<com.keji.danti.MainA: void d()>',4,'s',NULL),(34,93,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(35,87,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(36,59,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(37,85,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(38,94,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(39,67,'<com.android.adomb.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(40,95,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(41,86,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(42,96,'<com.madhouse.android.ads._: com.madhouse.android.ads.l _(android.content.Context)>',11,'p',NULL),(43,97,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(44,98,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(45,99,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(46,61,'<com.android.adomb.MainRun: void b()>',4,'s',NULL),(47,95,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(48,83,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(49,88,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(50,100,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(51,21,'<com.keji.danti.MainA: void b()>',21,'s',NULL),(52,101,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(53,102,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(54,103,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(55,97,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,7,12),(2,11,14),(3,18,12),(4,22,12),(5,24,12),(6,26,15),(7,27,16),(8,31,16),(9,34,15),(10,38,15),(11,39,16),(12,40,16),(13,42,15),(14,44,14),(15,49,12),(16,51,14),(17,57,14);
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
INSERT INTO `IClasses` VALUES (1,1,'com.android.battery.BridgeProvider'),(2,2,'identity/android/dbCounter/MainRun'),(3,3,'identity/android/dbCounter/SystemPlus'),(4,4,'(.*)'),(5,5,'com/lusa/a4'),(6,6,'com/waps/OffersWebView'),(7,8,'com/keji/danti/Background'),(8,9,'com.android.battery.BridgeProvider'),(9,10,'com/android/adomb/MainRun'),(10,12,'com/keji/danti/AdSmsService'),(11,13,'com/keji/danti/TextDetail'),(12,14,'com.android.battery.BridgeProvider'),(13,15,'com/keji/danti/Setting'),(14,16,'com.android.battery.BridgeProvider'),(15,17,'com/keji/danti/TextDetail'),(16,19,'com/wuzla/game/ScooterHero_Paid/MainRun'),(17,20,'com/keji/danti/TextDetail'),(18,21,'com/wuzla/game/ScooterHero_Paid/SystemPlus'),(19,23,'com/keji/danti/Setting'),(20,25,'com/keji/danti/Setting'),(21,28,'com/keji/danti/AdSmsService'),(22,29,'com/android/adomb/SystemPlus'),(23,30,'com/keji/danti/TextDetail'),(24,32,'com.android.battery.BridgeProvider'),(25,33,'com.android.battery.BridgeProvider'),(26,35,'com/keji/danti/Background'),(27,36,'com.android.settings.WirelessSettings'),(28,37,'com.android.settings.WirelessSettings'),(29,41,'com/android/adomb/MainRun'),(30,43,'com.android.settings.WirelessSettings'),(31,46,'com/keji/danti/Background'),(32,45,'com/keji/danti/Setting'),(33,47,'com/keji/danti/TextDetail'),(34,48,'com.android.battery.BridgeProvider'),(35,50,'com.android.settings.WirelessSettings'),(36,52,'com/keji/danti/TextDetail'),(37,53,'com/android/adomb/SystemPlus'),(38,54,'com/keji/danti/TextDetail'),(39,55,'com/keji/danti/TextDetail'),(40,56,'com/keji/danti/Background');
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
INSERT INTO `IData` VALUES (1,7,1),(2,11,2),(3,15,3),(4,18,4),(5,23,5),(6,22,6),(7,24,7),(8,25,8),(9,44,11),(10,45,12),(11,49,13),(12,51,14),(13,57,15);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,6,'USER_ID'),(2,6,'CLIENT_PACKAGE'),(3,6,'Offers_URL'),(4,6,'URL_PARAMS'),(5,11,'sms_body'),(6,13,'index'),(7,17,'index'),(8,20,'index'),(9,26,'packageName'),(10,27,'packageName'),(11,30,'index'),(12,38,'packageName'),(13,39,'packageName'),(14,44,'sms_body'),(15,47,'index'),(16,51,'sms_body'),(17,52,'index'),(18,54,'index'),(19,55,'index'),(20,57,'sms_body');
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,11),(9,8,8),(10,8,7),(11,8,10),(12,8,9),(13,8,2),(14,8,5),(15,8,6),(16,8,3),(17,8,4),(18,9,10),(19,9,9),(20,9,8),(21,9,4),(22,9,6),(23,10,8),(24,10,9),(25,10,10),(26,10,6),(27,10,4),(28,11,5),(29,11,4),(30,11,3),(31,11,2),(32,11,9),(33,11,8),(34,11,7),(35,11,6),(36,11,10),(37,11,11),(38,12,13);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,12,'package',NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `IMimeTypes` VALUES (1,7,'application','vnd.android.package-archive');
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
INSERT INTO `IPackages` VALUES (1,1,'com.android.battery'),(2,2,'identity.android.dbCounter'),(3,3,'identity.android.dbCounter'),(4,4,'(.*)'),(5,5,'com.lusa'),(6,6,'com.lusa'),(7,8,'com.keji.danti394'),(8,9,'com.android.battery'),(9,10,'com.keji.danti394'),(10,12,'com.keji.danti394'),(11,13,'com.keji.danti394'),(12,14,'com.android.battery'),(13,15,'com.keji.danti394'),(14,16,'com.android.battery'),(15,17,'com.keji.danti421'),(16,19,'com.wuzla.game.ScooterHero_Paid'),(17,20,'com.keji.danti394'),(18,21,'com.wuzla.game.ScooterHero_Paid'),(19,23,'com.keji.danti1020'),(20,25,'com.keji.danti421'),(21,29,'com.keji.danti394'),(22,28,'com.keji.danti421'),(23,30,'com.keji.danti1020'),(24,32,'com.android.battery'),(25,33,'com.android.battery'),(26,35,'com.keji.danti1020'),(27,36,'com.android.settings'),(28,37,'com.android.settings'),(29,41,'com.keji.danti421'),(30,43,'com.android.settings'),(31,46,'com.keji.danti421'),(32,45,'com.keji.danti728'),(33,47,'com.keji.danti1020'),(34,48,'com.android.battery'),(35,50,'com.android.settings'),(36,52,'com.keji.danti728'),(37,53,'com.keji.danti421'),(38,54,'com.keji.danti728'),(39,55,'com.keji.danti421'),(40,56,'com.keji.danti728');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,5,0),(3,6,0),(4,15,0),(5,17,0),(6,20,0),(7,27,0),(8,46,0),(9,56,0),(10,63,0),(11,71,0),(12,72,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,0,0),(6,6,0,0),(7,7,1,0),(8,8,0,0),(9,9,0,0),(10,10,0,0),(11,11,1,0),(12,12,0,0),(13,13,0,0),(14,14,0,0),(15,15,0,0),(16,16,0,0),(17,17,0,0),(18,18,1,0),(19,19,0,0),(20,20,0,0),(21,22,0,0),(22,21,1,0),(23,23,0,0),(24,24,1,0),(25,25,0,0),(26,26,1,0),(27,26,1,0),(28,28,0,0),(29,29,0,0),(30,30,0,0),(31,31,1,0),(32,32,0,0),(33,33,0,0),(34,31,1,0),(35,34,0,0),(36,35,0,0),(37,37,0,0),(38,36,1,0),(39,36,1,0),(40,38,1,0),(41,39,0,0),(42,38,1,0),(43,40,0,0),(44,41,1,0),(45,43,0,0),(46,44,0,0),(47,45,0,0),(48,46,0,0),(49,47,1,0),(50,48,0,0),(51,49,1,0),(52,50,0,0),(53,51,0,0),(54,52,0,0),(55,53,0,0),(56,54,0,0),(57,55,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (2,'android.permission.ACCESS_COARSE_LOCATION'),(4,'android.permission.ACCESS_NETWORK_STATE'),(22,'android.permission.ACCESS_WIFI_STATE'),(11,'android.permission.CALL_PHONE'),(15,'android.permission.DISABLE_KEYGUARD'),(20,'android.permission.GET_TASKS'),(1,'android.permission.INTERNET'),(10,'android.permission.READ_CONTACTS'),(7,'android.permission.READ_LOGS'),(14,'android.permission.READ_PHONE_STATE'),(16,'android.permission.READ_SMS'),(17,'android.permission.RECEIVE_BOOT_COMPLETED'),(9,'android.permission.RECEIVE_SMS'),(3,'android.permission.RECORD_AUDIO'),(13,'android.permission.RESTART_PACKAGES'),(5,'android.permission.SEND_SMS'),(18,'android.permission.VIBRATE'),(19,'android.permission.WAKE_LOCK'),(6,'android.permission.WRITE_APN_SETTINGS'),(12,'android.permission.WRITE_CONTACTS'),(21,'android.permission.WRITE_EXTERNAL_STORAGE'),(8,'android.permission.WRITE_SMS');
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
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'smsto:',NULL,NULL,NULL),(3,NULL,NULL,'one',NULL,NULL,NULL),(4,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(5,NULL,NULL,'one',NULL,NULL,NULL),(6,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(7,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(8,NULL,NULL,'one',NULL,NULL,NULL),(9,NULL,NULL,'(.*)',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'smsto:',NULL,NULL,NULL),(12,NULL,NULL,'one',NULL,NULL,NULL),(13,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'smsto:',NULL,NULL,NULL),(15,NULL,NULL,'smsto:',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,27,9),(2,42,10);
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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,2,1),(6,2,4),(7,2,5),(8,2,6),(9,2,7),(10,2,8),(11,2,9),(12,2,10),(13,2,11),(14,2,12),(15,2,13),(16,2,14),(17,3,1),(18,2,15),(19,3,21),(20,2,17),(21,3,4),(22,2,16),(23,3,20),(24,2,19),(25,3,22),(26,2,18),(27,3,7),(28,3,14),(29,4,1),(30,5,1),(31,4,4),(32,5,16),(33,4,5),(34,5,18),(35,4,6),(36,5,4),(37,4,7),(38,5,21),(39,4,8),(40,6,1),(41,5,22),(42,6,16),(43,4,9),(44,5,8),(45,6,18),(46,4,10),(47,5,12),(48,6,4),(49,4,11),(50,5,14),(51,6,21),(52,4,12),(53,7,21),(54,4,13),(55,6,22),(56,4,14),(57,6,8),(58,4,15),(59,6,12),(60,4,17),(61,6,14),(62,4,16),(63,4,19),(64,4,18),(65,4,22);
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

-- Dump completed on 2015-10-09  0:39:27
