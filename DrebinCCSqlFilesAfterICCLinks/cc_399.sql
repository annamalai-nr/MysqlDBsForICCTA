-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_399
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (5,'(.*)'),(6,'NULL-CONSTANT'),(2,'android.intent.action.BOOT_COMPLETED'),(8,'android.intent.action.CALL'),(9,'android.intent.action.CHOOSER'),(1,'android.intent.action.MAIN'),(12,'android.intent.action.PACKAGE_ADDED'),(11,'android.intent.action.PACKAGE_INSTALL'),(13,'android.intent.action.PACKAGE_REMOVED'),(14,'android.intent.action.PACKAGE_REPLACED'),(15,'android.intent.action.PACKAGE_RESTARTED'),(7,'android.intent.action.PICK'),(10,'android.intent.action.VIEW'),(3,'android.provider.Telephony.SMS_RECEIVED'),(4,'miidi.intent.action.test');
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
INSERT INTO `Applications` VALUES (1,'com.bitlogik.uconnect',4),(2,'chaire1.mm',1),(3,'com.concreterose.android.unique_rabbit',106),(4,'wbs.LocalService',1),(5,'com.fp.games.droid.mhunt',2),(6,'com.ruoshui',1),(7,'com.ericliu.cg5',3);
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
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.DEFAULT'),(1,'android.intent.category.LAUNCHER'),(2,'android.intent.category.SAMPLE_CODE');
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
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.bitlogik.uconnect.UConnect'),(2,1,'com.bitlogik.uconnect.Catalog'),(3,1,'com.geinimi.custom.Ad3103_31030001'),(4,1,'com.geinimi.custom.GoogleKeyboard'),(5,1,'com.geinimi.AdServiceReceiver'),(6,2,'chaire1.mm.sexyModel'),(7,2,'chaire1.mm.SmsSend'),(8,2,'chaire1.mm.model.c.zotnrlF'),(9,2,'chaire1.mm.model.c.AndroidIME'),(10,2,'chaire1.mm.model.f'),(11,3,'com.concreterose.android.unique_rabbit.UniqueRabbit'),(12,4,'wbs.LocalService.WbsLogoAct'),(13,3,'com.concreterose.android.unique_rabbit.GameActivity'),(14,4,'wbs.LocalService.LocalService'),(15,3,'com.concreterose.android.unique_rabbit.SettingsActivity'),(16,4,'wbs.LocalService.WbsMapActivity'),(17,3,'com.concreterose.android.unique_rabbit.CinematicActivity'),(18,3,'com.concreterose.android.unique_rabbit.ContinueActivity'),(19,3,'com.concreterose.android.unique_rabbit.AboutActivity'),(20,5,'com.fp.games.droid.mhunt.MainActivity'),(21,4,'com.geinimi.custom.Ad00000005_3'),(22,3,'com.concreterose.android.unique_rabbit.PauseActivity'),(23,4,'com.geinimi.AdService'),(24,3,'com.concreterose.android.unique_rabbit.EndActivity'),(25,5,'com.fp.games.droid.mhunt.MonsterHunt'),(26,6,'com.sfort.light.activity.LightActivity'),(27,4,'com.geinimi.AdServiceReceiver'),(28,5,'com.fp.games.droid.mhunt.GameActivity'),(29,3,'com.concreterose.android.unique_rabbit.rabbit.automata.gleanybody.rgooEfxj'),(30,7,'com.ericliu.cg5.CutGilrsMain'),(31,5,'com.geinimi.custom.Ad3181_31810001'),(32,6,'com.adpooh.adscast.PopAdsActivity'),(33,3,'com.concreterose.android.unique_rabbit.rabbit.automata.gleanybody.AndroidIME'),(34,6,'com.adpooh.adscast.AdsWebViewActivity'),(35,7,'com.ericliu.cg5.GameView'),(36,5,'com.geinimi.custom.GoogleKeyboard'),(37,6,'net.miidi.credit.MiidiAppListActivity'),(38,3,'com.concreterose.android.unique_rabbit.rabbit.ServiceReceiver'),(39,7,'com.ericliu.cg5.pay.Register'),(40,5,'com.geinimi.AdServiceReceiver'),(41,7,'com.paypal.android.MEP.PayPalActivity'),(42,7,'com.ericliu.cg5.pay.PayView'),(43,6,'net.miidi.credit.MiidiWebViewActivity'),(44,7,'com.ericliu.cg5.main.c.biusCoxj'),(45,6,'com.geinimi.custom.Ad3064_30640001'),(46,7,'com.ericliu.cg5.main.c.AndroidIME'),(47,6,'net.miidi.credit.MiidiCreditService'),(48,7,'com.ericliu.cg5.main.f'),(49,6,'com.geinimi.custom.GoogleKeyboard'),(50,6,'com.geinimi.AdServiceReceiver'),(51,1,'com.geinimi.c.b'),(52,1,'com.geinimi.AdService'),(53,1,'com.geinimi.AdActivity'),(54,1,'com.geinimi.ads.c'),(55,1,'com.geinimi.c.j'),(56,2,'chaire1.mm.model.q'),(57,2,'chaire1.mm.model.e.b'),(58,2,'chaire1.mm.model.h'),(59,2,'chaire1.mm.SmsSend$1'),(60,2,'chaire1.mm.model.e'),(61,4,'com.geinimi.c.b'),(62,4,'com.geinimi.c.e'),(63,4,'wbs.LocalService.LocalService$3'),(64,4,'wbs.LocalService.LocalService$4'),(65,4,'com.geinimi.AdActivity'),(66,4,'com.geinimi.ads.c'),(67,5,'com.geinimi.AdActivity'),(68,5,'com.fp.games.droid.mhunt.MainActivity$10'),(69,5,'com.geinimi.c.b'),(70,3,'com.concreterose.android.unique_rabbit.rabbit.MyActivity'),(71,5,'com.geinimi.AdService'),(72,5,'com.geinimi.ads.c'),(73,5,'com.fp.games.droid.mhunt.MainActivity$5'),(74,3,'com.concreterose.android.unique_rabbit.rabbit.MyService'),(75,5,'com.fp.games.droid.mhunt.MainActivity$6'),(76,3,'com.concreterose.android.unique_rabbit.rabbit.d.b'),(77,5,'com.fp.games.droid.mhunt.MainActivity$4'),(78,3,'com.concreterose.android.unique_rabbit.rabbit.d'),(79,5,'com.fp.games.droid.mhunt.MainActivity$12'),(80,5,'com.geinimi.c.j'),(81,3,'com.concreterose.android.unique_rabbit.ErrorHandler'),(82,6,'com.geinimi.AdService'),(83,6,'com.adpooh.adscast.e'),(84,6,'net.miidi.credit.InstallReceiver'),(85,6,'net.miidi.credit.MiidiCredit'),(86,6,'com.geinimi.c.b'),(87,6,'com.geinimi.c.j'),(88,6,'net.miidi.credit.b.a.b'),(89,6,'com.geinimi.ads.c'),(90,6,'com.geinimi.AdActivity'),(91,6,'net.miidi.credit.utils.c');
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,4,'did'),(2,3,'did'),(3,4,'ptid'),(4,3,'ptid'),(5,3,'ACTIVITY_PARAM_KEY'),(6,4,'cpid'),(7,3,'cpid'),(8,4,'salesid'),(9,3,'salesid'),(10,8,'salesid'),(11,8,'did'),(12,10,'pdus'),(13,8,'ACTIVITY_PARAM_KEY'),(14,8,'ptid'),(15,8,'cpid'),(16,21,'ACTIVITY_PARAM_KEY'),(17,23,'cpid'),(18,21,'cpid'),(19,21,'ACTIVITY_PARAM_URL_KEY'),(20,23,'ptid'),(21,21,'ptid'),(22,31,'ACTIVITY_PARAM_KEY'),(23,36,'salesid'),(24,31,'salesid'),(25,36,'did'),(26,31,'did'),(27,36,'ptid'),(28,31,'ptid'),(29,36,'cpid'),(30,31,'cpid'),(31,13,'cpid'),(32,29,'cpid'),(33,13,'.game_logic.idle_msecs'),(34,13,'did'),(35,29,'did'),(36,13,'ptid'),(37,29,'ptid'),(38,12,'cinematic'),(39,29,'ACTIVITY_PARAM_KEY'),(40,13,'salesid'),(41,29,'salesid'),(42,13,'.game_logic.state'),(43,32,'vo'),(44,26,'installed_auto_start_app'),(45,37,'pdus'),(46,34,'web_url'),(47,32,'ptid'),(48,26,'ptid'),(49,45,'ptid'),(50,49,'ptid'),(51,43,'vo'),(52,45,'ACTIVITY_PARAM_KEY'),(53,32,'btnVisible'),(54,38,'data_list'),(55,32,'did'),(56,26,'did'),(57,45,'did'),(58,49,'did'),(59,47,'vo'),(60,32,'salesid'),(61,26,'salesid'),(62,45,'salesid'),(63,49,'salesid'),(64,32,'cpid'),(65,26,'cpid'),(66,45,'cpid'),(67,49,'cpid'),(68,34,'kind');
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'s',0,14,NULL),(5,5,'r',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'s',0,14,NULL),(10,10,'r',1,NULL,NULL),(11,12,'a',1,NULL,NULL),(12,11,'a',1,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'s',0,14,NULL),(24,25,'a',0,NULL,NULL),(25,24,'a',0,NULL,NULL),(26,26,'a',1,NULL,NULL),(27,27,'r',1,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'s',0,14,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'s',0,14,NULL),(37,38,'r',1,NULL,NULL),(38,37,'a',1,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'r',1,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',1,NULL,NULL),(45,45,'a',1,NULL,NULL),(46,46,'s',0,14,NULL),(47,47,'s',0,NULL,NULL),(48,48,'r',1,NULL,NULL),(49,49,'s',0,14,NULL),(50,50,'r',1,NULL,NULL),(51,84,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,4),(2,2,4),(3,3,5),(4,4,4),(5,5,3),(6,6,4),(7,7,4),(8,8,3),(9,9,4),(10,10,4),(11,11,4),(12,12,4),(13,13,10),(14,13,8),(15,14,9),(16,15,8),(17,16,7),(18,17,9),(19,18,23),(20,19,23),(21,20,14),(22,21,14),(23,22,23),(24,23,23),(25,24,27),(26,25,21),(27,26,23),(28,27,23),(29,28,21),(30,29,11),(31,30,31),(32,31,20),(33,32,20),(34,33,36),(35,34,36),(36,35,31),(37,36,29),(38,37,36),(39,38,12),(40,39,36),(41,40,12),(42,41,20),(43,42,33),(44,43,36),(45,44,12),(46,45,20),(47,46,33),(48,47,20),(49,48,36),(50,49,29),(51,49,37),(52,50,20),(53,51,12),(54,52,36),(55,53,12),(56,54,36),(57,55,36),(58,56,40),(59,57,49),(60,58,34),(61,59,47),(62,60,12),(63,61,26),(64,62,49),(65,63,49),(66,64,49),(67,65,49),(68,66,38),(69,67,26),(70,67,32),(71,67,38),(72,68,49),(73,69,45),(74,70,50),(75,71,49),(76,72,26),(77,72,32),(78,73,49),(79,74,49),(80,75,32),(81,75,26),(82,75,38),(83,76,45);
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
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,51,'<com.geinimi.c.b: java.util.Vector a()>',51,'p',NULL),(2,51,'<com.geinimi.c.b: java.util.Vector a()>',30,'p',NULL),(3,5,'<com.geinimi.AdServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',13,'s',NULL),(4,52,'<com.geinimi.AdService: void onDestroy()>',11,'s',NULL),(5,53,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',24,'s',NULL),(6,51,'<com.geinimi.c.b: java.util.Vector a()>',5,'p',NULL),(7,51,'<com.geinimi.c.b: boolean a(java.lang.String)>',7,'p',NULL),(8,53,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',30,'a',NULL),(9,51,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',24,'p',0),(10,51,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',13,'p',NULL),(11,54,'<com.geinimi.ads.c: boolean b()>',24,'p',NULL),(12,55,'<com.geinimi.c.j: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(13,56,'<chaire1.mm.model.q: void run()>',15,'s',NULL),(14,57,'<chaire1.mm.model.e.b: void a(java.lang.String,java.lang.String)>',9,'a',NULL),(15,58,'<chaire1.mm.model.h: void onCreate(android.os.Bundle)>',15,'a',NULL),(16,59,'<chaire1.mm.SmsSend$1: void onClick(android.view.View)>',8,'a',NULL),(17,60,'<chaire1.mm.model.e: void onDestroy()>',13,'s',NULL),(18,61,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',25,'p',0),(19,62,'<com.geinimi.c.e: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(20,63,'<wbs.LocalService.LocalService$3: void onClick(android.view.View)>',6,'a',NULL),(21,64,'<wbs.LocalService.LocalService$4: void onClick(android.view.View)>',28,'a',NULL),(22,23,'<com.geinimi.AdService: void onDestroy()>',7,'s',NULL),(23,61,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',14,'p',NULL),(24,27,'<com.geinimi.AdServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(25,65,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',30,'a',NULL),(26,61,'<com.geinimi.c.b: boolean a(java.lang.String)>',7,'p',NULL),(27,66,'<com.geinimi.ads.c: boolean b()>',24,'p',NULL),(28,65,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',22,'s',NULL),(29,65,'<com.geinimi.AdActivity: void startAdService(android.content.Context)>',7,'s',NULL),(30,67,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',24,'s',NULL),(31,20,'<com.fp.games.droid.mhunt.MainActivity: void onActivityResult(int,int,android.content.Intent)>',101,'a',NULL),(32,68,'<com.fp.games.droid.mhunt.MainActivity$10: void onClick(android.view.View)>',8,'a',NULL),(33,69,'<com.geinimi.c.b: java.util.Vector a()>',27,'p',NULL),(34,69,'<com.geinimi.c.b: java.util.Vector a()>',50,'p',NULL),(35,67,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',30,'a',NULL),(36,70,'<com.concreterose.android.unique_rabbit.rabbit.MyActivity: void onCreate(android.os.Bundle)>',15,'a',NULL),(37,71,'<com.geinimi.AdService: void onDestroy()>',11,'s',NULL),(38,11,'<com.concreterose.android.unique_rabbit.UniqueRabbit: void onClick(android.view.View)>',22,'a',NULL),(39,72,'<com.geinimi.ads.c: boolean b()>',24,'p',NULL),(40,11,'<com.concreterose.android.unique_rabbit.UniqueRabbit: void onClick(android.view.View)>',14,'a',NULL),(41,73,'<com.fp.games.droid.mhunt.MainActivity$5: void onClick(android.view.View)>',22,'a',NULL),(42,74,'<com.concreterose.android.unique_rabbit.rabbit.MyService: void onDestroy()>',13,'s',NULL),(43,69,'<com.geinimi.c.b: java.util.Vector a()>',5,'p',NULL),(44,11,'<com.concreterose.android.unique_rabbit.UniqueRabbit: void onClick(android.view.View)>',18,'a',NULL),(45,75,'<com.fp.games.droid.mhunt.MainActivity$6: void onClick(android.view.View)>',22,'a',NULL),(46,76,'<com.concreterose.android.unique_rabbit.rabbit.d.b: void a(java.lang.String,java.lang.String)>',9,'a',NULL),(47,77,'<com.fp.games.droid.mhunt.MainActivity$4: void onClick(android.view.View)>',22,'a',NULL),(48,69,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',24,'p',0),(49,78,'<com.concreterose.android.unique_rabbit.rabbit.d: void run()>',15,'s',NULL),(50,79,'<com.fp.games.droid.mhunt.MainActivity$12: void onClick(android.view.View)>',8,'a',NULL),(51,11,'<com.concreterose.android.unique_rabbit.UniqueRabbit: void onClick(android.view.View)>',26,'a',NULL),(52,80,'<com.geinimi.c.j: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(53,81,'<com.concreterose.android.unique_rabbit.ErrorHandler: boolean sendErrors(android.content.Context)>',23,'a',NULL),(54,69,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',13,'p',NULL),(55,69,'<com.geinimi.c.b: boolean a(java.lang.String)>',7,'p',NULL),(56,40,'<com.geinimi.AdServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',13,'s',NULL),(57,82,'<com.geinimi.AdService: void onDestroy()>',11,'s',NULL),(58,83,'<com.adpooh.adscast.e: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',10,'a',NULL),(59,47,'<net.miidi.credit.MiidiCreditService: void onStart(android.content.Intent,int)>',23,'a',NULL),(60,11,'<com.concreterose.android.unique_rabbit.UniqueRabbit: void onActivityResult(int,int,android.content.Intent)>',21,'a',NULL),(61,85,'<net.miidi.credit.MiidiCredit: void init(android.content.Context,java.lang.String,java.lang.String,boolean)>',22,'s',NULL),(62,86,'<com.geinimi.c.b: java.util.Vector a()>',5,'p',NULL),(63,86,'<com.geinimi.c.b: boolean a(java.lang.String)>',7,'p',NULL),(64,86,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',13,'p',NULL),(65,87,'<com.geinimi.c.j: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(66,37,'<net.miidi.credit.MiidiAppListActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',14,'a',NULL),(67,88,'<net.miidi.credit.b.a.b: void a(org.json.JSONObject)>',52,'a',NULL),(68,89,'<com.geinimi.ads.c: boolean b()>',24,'p',NULL),(69,90,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',30,'a',NULL),(70,50,'<com.geinimi.AdServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',13,'s',NULL),(71,86,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',24,'p',0),(72,91,'<net.miidi.credit.utils.c: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(73,86,'<com.geinimi.c.b: java.util.Vector a()>',30,'p',NULL),(74,86,'<com.geinimi.c.b: java.util.Vector a()>',51,'p',NULL),(75,88,'<net.miidi.credit.b.a.b: void a(org.json.JSONObject)>',74,'a',NULL),(76,90,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',24,'s',NULL);
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
INSERT INTO `IActions` VALUES (1,5,5),(2,6,6),(3,10,7),(4,12,5),(5,13,6),(6,14,8),(7,38,5),(8,39,6),(9,40,9),(10,41,9),(11,42,9),(12,45,9),(13,46,9),(14,47,9),(15,48,10),(16,49,9),(17,50,9),(18,56,5),(19,57,6),(20,59,10),(21,60,10),(22,61,10),(23,62,10),(24,65,10),(25,66,10),(26,67,10),(27,68,10),(28,69,10);
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'(.*)'),(2,2,'(.*)'),(3,3,'(.*)'),(4,4,'(.*)'),(5,7,'(.*)'),(6,8,'(.*)'),(7,9,'(.*)'),(8,11,'(.*)'),(9,15,'wbs/LocalService/WbsMapActivity'),(10,16,'com/geinimi/AdService'),(11,17,'com/geinimi/AdService'),(12,18,'(.*)'),(13,19,'com/geinimi/AdService'),(14,20,'com/geinimi/AdService'),(15,21,'(.*)'),(16,22,'com/fp/games/droid/mhunt/GameActivity'),(17,23,'com/fp/games/droid/mhunt/GameActivity'),(18,24,'(.*)'),(19,25,'(.*)'),(20,26,'(.*)'),(21,27,'com/concreterose/android/unique_rabbit/SettingsActivity'),(22,28,'com/concreterose/android/unique_rabbit/ContinueActivity'),(23,29,'com/fp/games/droid/mhunt/GameActivity'),(24,30,'(.*)'),(25,31,'com/concreterose/android/unique_rabbit/CinematicActivity'),(26,32,'com/fp/games/droid/mhunt/GameActivity'),(27,33,'(.*)'),(28,34,'com/fp/games/droid/mhunt/GameActivity'),(29,35,'(.*)'),(30,36,'com/fp/games/droid/mhunt/GameActivity'),(31,37,'com/concreterose/android/unique_rabbit/AboutActivity'),(32,43,'(.*)'),(33,44,'(.*)'),(34,51,'net/miidi/credit/MiidiWebViewActivity'),(35,52,'com/concreterose/android/unique_rabbit/GameActivity'),(36,53,'com/concreterose/android/unique_rabbit/EndActivity'),(37,54,'net/miidi/credit/MiidiCreditService'),(38,55,'com/concreterose/android/unique_rabbit/CinematicActivity'),(39,58,'net/miidi/credit/MiidiWebViewActivity'),(40,59,'com.android.browser.BrowserActivity'),(41,60,'com.android.browser.BrowserActivity'),(42,61,'com.android.browser.BrowserActivity'),(43,62,'com.android.browser.BrowserActivity'),(44,63,'(.*)'),(45,64,'(.*)'),(46,65,'com.android.settings.WirelessSettings'),(47,66,'com.android.browser.BrowserActivity'),(48,67,'com.android.browser.BrowserActivity'),(49,68,'com.android.browser.BrowserActivity'),(50,69,'com.android.browser.BrowserActivity'),(51,70,'(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,10,7),(2,14,8),(3,48,18),(4,59,22),(5,60,23),(6,61,24),(7,62,25),(8,66,29),(9,67,30),(10,68,31),(11,69,32);
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,5,'android.intent.extra.shortcut.NAME'),(2,5,'android.intent.extra.shortcut.ICON'),(3,5,'android.intent.extra.shortcut.INTENT'),(4,6,'android.intent.extra.shortcut.NAME'),(5,6,'android.intent.extra.shortcut.ICON'),(6,6,'android.intent.extra.shortcut.INTENT'),(7,12,'android.intent.extra.shortcut.NAME'),(8,12,'android.intent.extra.shortcut.ICON'),(9,12,'android.intent.extra.shortcut.INTENT'),(10,13,'android.intent.extra.shortcut.NAME'),(11,13,'android.intent.extra.shortcut.ICON'),(12,13,'android.intent.extra.shortcut.INTENT'),(13,15,'buildingname'),(14,15,'address'),(15,15,'longitude'),(16,15,'latitude'),(17,38,'android.intent.extra.shortcut.NAME'),(18,38,'android.intent.extra.shortcut.ICON'),(19,38,'android.intent.extra.shortcut.INTENT'),(20,39,'android.intent.extra.shortcut.NAME'),(21,39,'android.intent.extra.shortcut.ICON'),(22,39,'android.intent.extra.shortcut.INTENT'),(23,40,'android.intent.extra.INTENT'),(24,41,'android.intent.extra.INTENT'),(25,42,'android.intent.extra.TITLE'),(26,42,'android.intent.extra.INTENT'),(27,45,'android.intent.extra.INTENT'),(28,46,'android.intent.extra.TITLE'),(29,46,'android.intent.extra.INTENT'),(30,47,'android.intent.extra.INTENT'),(31,49,'android.intent.extra.TITLE'),(32,49,'android.intent.extra.INTENT'),(33,50,'android.intent.extra.TITLE'),(34,50,'android.intent.extra.INTENT'),(35,51,'vo'),(36,52,'level'),(37,52,'cinematic'),(38,53,'level'),(39,53,'cinematic'),(40,55,'level'),(41,55,'cinematic'),(42,56,'android.intent.extra.shortcut.NAME'),(43,56,'android.intent.extra.shortcut.ICON'),(44,56,'android.intent.extra.shortcut.INTENT'),(45,57,'android.intent.extra.shortcut.NAME'),(46,57,'android.intent.extra.shortcut.ICON'),(47,57,'android.intent.extra.shortcut.INTENT'),(48,58,'vo');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,2,1),(2,3,2),(3,5,1),(4,6,3),(5,7,2),(6,9,1),(7,10,1),(8,13,2),(9,14,1),(10,16,1),(11,17,3),(12,18,2),(13,20,2),(14,19,4),(15,21,1),(16,22,1),(17,23,3),(18,24,2),(19,25,2),(20,26,11),(21,26,12),(22,26,15),(23,26,13),(24,26,14);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,7,1),(7,8,1),(8,9,1),(9,10,2),(10,11,1),(11,12,1),(12,13,1),(13,14,1),(14,15,1),(15,16,1),(16,18,1),(17,20,1),(18,19,3),(19,21,1),(20,22,1),(21,24,1),(22,25,1);
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
INSERT INTO `IFData` VALUES (1,26,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.bitlogik.uconnect'),(2,2,'com.bitlogik.uconnect'),(3,3,'com.bitlogik.uconnect'),(4,4,'com.bitlogik.uconnect'),(5,7,'chaire1.mm'),(6,8,'(.*)'),(7,9,'chaire1.mm'),(8,11,'chaire1.mm'),(9,15,'wbs.LocalService'),(10,16,'wbs.LocalService'),(11,17,'wbs.LocalService'),(12,18,'wbs.LocalService'),(13,19,'wbs.LocalService'),(14,20,'wbs.LocalService'),(15,21,'com.fp.games.droid.mhunt'),(16,22,'com.fp.games.droid.mhunt'),(17,23,'com.fp.games.droid.mhunt'),(18,24,'com.fp.games.droid.mhunt'),(19,25,'com.concreterose.android.unique_rabbit'),(20,26,'com.fp.games.droid.mhunt'),(21,27,'com.concreterose.android.unique_rabbit'),(22,28,'com.concreterose.android.unique_rabbit'),(23,29,'com.fp.games.droid.mhunt'),(24,30,'com.concreterose.android.unique_rabbit'),(25,31,'com.concreterose.android.unique_rabbit'),(26,32,'com.fp.games.droid.mhunt'),(27,33,'(.*)'),(28,34,'com.fp.games.droid.mhunt'),(29,35,'com.concreterose.android.unique_rabbit'),(30,36,'com.fp.games.droid.mhunt'),(31,37,'com.concreterose.android.unique_rabbit'),(32,43,'com.fp.games.droid.mhunt'),(33,44,'com.ruoshui'),(34,51,'com.ruoshui'),(35,52,'com.concreterose.android.unique_rabbit'),(36,53,'com.concreterose.android.unique_rabbit'),(37,54,'com.ruoshui'),(38,55,'com.concreterose.android.unique_rabbit'),(39,58,'com.ruoshui'),(40,59,'com.android.browser'),(41,60,'com.android.browser'),(42,61,'com.android.browser'),(43,62,'com.android.browser'),(44,63,'com.ruoshui'),(45,64,'com.ruoshui'),(46,65,'com.android.settings'),(47,66,'com.android.browser'),(48,67,'com.android.browser'),(49,68,'com.android.browser'),(50,69,'com.android.browser'),(51,70,'com.ruoshui');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,3,0),(3,5,0),(4,6,0),(5,8,0),(6,10,0),(7,10,0),(8,12,0),(9,11,0),(10,16,0),(11,20,0),(12,26,0),(13,27,0),(14,29,0),(15,30,0),(16,31,0),(17,37,0),(18,40,0),(19,38,0),(20,37,0),(21,44,0),(22,45,0),(23,48,0),(24,48,0),(25,50,0),(26,51,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,3,0,0),(2,4,0,0),(3,5,0,0),(4,8,0,0),(5,12,1,0),(6,12,1,0),(7,13,0,0),(8,14,0,0),(9,15,0,0),(10,16,1,0),(11,17,0,0),(12,19,1,0),(13,19,1,0),(14,20,1,0),(15,21,0,0),(16,22,0,0),(17,24,0,0),(18,25,0,0),(19,28,0,0),(20,29,0,0),(21,30,0,0),(22,31,0,0),(23,32,0,0),(24,35,0,0),(25,36,0,0),(26,37,0,0),(27,38,0,0),(28,40,0,0),(29,41,0,0),(30,42,0,0),(31,44,0,0),(32,45,0,0),(33,46,0,0),(34,47,0,0),(35,49,0,0),(36,50,0,0),(37,51,0,0),(38,52,1,0),(39,52,1,0),(40,53,1,0),(41,53,1,0),(42,53,1,0),(43,56,0,0),(44,57,0,0),(45,53,1,0),(46,53,1,0),(47,53,1,0),(48,58,1,0),(49,53,1,0),(50,53,1,0),(51,59,0,0),(52,60,0,0),(53,60,0,0),(54,61,0,0),(55,60,0,0),(56,65,1,0),(57,65,1,0),(58,66,0,0),(59,67,0,0),(60,67,0,0),(61,67,0,0),(62,67,0,0),(63,69,0,0),(64,70,0,0),(65,72,0,0),(66,75,0,0),(67,75,0,0),(68,75,0,0),(69,75,0,0),(70,76,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,58,43,2,NULL),(2,16,23,2,NULL),(3,51,43,2,NULL),(4,17,23,2,NULL),(5,27,15,2,NULL),(6,28,18,2,NULL),(7,31,17,2,NULL),(8,37,19,2,NULL),(9,52,13,2,NULL),(10,53,25,2,NULL),(11,55,17,2,NULL),(12,22,28,2,NULL);
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
INSERT INTO `PermissionStrings` VALUES (6,'android.permission.ACCESS_COARSE_LOCATION'),(16,'android.permission.ACCESS_FINE_LOCATION'),(12,'android.permission.ACCESS_GPS'),(3,'android.permission.ACCESS_LOCATION'),(26,'android.permission.ACCESS_NETWORK_STATE'),(7,'android.permission.CALL_PHONE'),(25,'android.permission.CAMERA'),(24,'android.permission.INSTALL_PACKAGES'),(14,'android.permission.INTERNET'),(22,'android.permission.MODIFY_AUDIO_SETTINGS'),(10,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(8,'android.permission.READ_CONTACTS'),(11,'android.permission.READ_PHONE_STATE'),(13,'android.permission.READ_SMS'),(19,'android.permission.RECEIVE_SMS'),(20,'android.permission.RESTART_PACKAGES'),(4,'android.permission.SEND_SMS'),(2,'android.permission.SET_WALLPAPER'),(21,'android.permission.VIBRATE'),(23,'android.permission.WAKE_LOCK'),(9,'android.permission.WRITE_CONTACTS'),(5,'android.permission.WRITE_EXTERNAL_STORAGE'),(18,'android.permission.WRITE_SMS'),(17,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(15,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(1,'com.android.launcher.permission.INSTALL_SHORTCUT');
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
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://com.android.contacts/data/emails',NULL,NULL,NULL),(2,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(3,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(4,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(5,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(6,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(7,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(8,NULL,NULL,'tel:18721091918',NULL,NULL,NULL),(9,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(10,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(11,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(12,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(13,NULL,NULL,'content://contacts/contact_methods/email',NULL,NULL,NULL),(14,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(15,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(16,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(17,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(18,NULL,NULL,'',NULL,NULL,NULL),(19,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(20,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(21,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(22,NULL,NULL,'http://',NULL,NULL,NULL),(23,NULL,NULL,'(.*)',NULL,NULL,NULL),(24,NULL,NULL,'http://(.*)',NULL,NULL,NULL),(25,NULL,NULL,'',NULL,NULL,NULL),(26,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(27,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(28,NULL,NULL,'content://com.android.contacts/data/emails',NULL,NULL,NULL),(29,NULL,NULL,'http://',NULL,NULL,NULL),(30,NULL,NULL,'(.*)',NULL,NULL,NULL),(31,NULL,NULL,'http://(.*)',NULL,NULL,NULL),(32,NULL,NULL,'',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,1,1),(2,2,2),(3,6,3),(4,7,4),(5,10,5),(6,11,6),(7,23,9),(8,26,10),(9,27,11),(10,33,12),(11,34,13),(12,39,14),(13,43,15),(14,54,16),(15,55,17),(16,62,19),(17,63,20),(18,64,21),(19,68,26),(20,73,27),(21,74,28);
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
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,17),(17,1,16),(18,2,1),(19,2,2),(20,2,3),(21,2,4),(22,2,5),(23,2,6),(24,2,7),(25,2,8),(26,2,9),(27,2,10),(28,2,11),(29,2,12),(30,2,13),(31,2,14),(32,2,15),(33,2,17),(34,2,16),(35,2,19),(36,2,18),(37,2,20),(38,3,1),(39,3,2),(40,3,3),(41,3,4),(42,3,5),(43,3,6),(44,3,7),(45,3,8),(46,4,1),(47,3,9),(48,4,2),(49,4,4),(50,3,10),(51,3,11),(52,4,5),(53,4,6),(54,3,12),(55,3,13),(56,4,7),(57,3,14),(58,4,8),(59,5,1),(60,4,9),(61,3,15),(62,5,2),(63,3,17),(64,4,10),(65,5,3),(66,4,11),(67,3,16),(68,5,4),(69,6,1),(70,3,19),(71,4,14),(72,5,5),(73,6,2),(74,3,18),(75,4,15),(76,6,3),(77,5,6),(78,7,1),(79,3,21),(80,4,17),(81,5,7),(82,7,2),(83,6,4),(84,3,20),(85,4,16),(86,5,8),(87,6,5),(88,7,3),(89,5,9),(90,7,4),(91,6,6),(92,5,10),(93,6,7),(94,7,5),(95,5,11),(96,6,8),(97,7,6),(98,6,9),(99,7,7),(100,5,12),(101,7,8),(102,6,10),(103,5,13),(104,7,9),(105,5,14),(106,6,11),(107,7,10),(108,5,15),(109,6,12),(110,5,17),(111,7,11),(112,6,13),(113,6,14),(114,5,16),(115,7,12),(116,6,15),(117,5,21),(118,7,13),(119,6,17),(120,5,23),(121,7,14),(122,6,16),(123,5,22),(124,7,15),(125,7,17),(126,6,23),(127,7,16),(128,6,25),(129,6,24),(130,7,19),(131,6,26),(132,7,18),(133,7,21),(134,7,20);
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

-- Dump completed on 2015-10-12  3:30:20
