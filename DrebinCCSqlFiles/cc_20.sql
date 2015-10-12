-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_20
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
INSERT INTO `ActionStrings` VALUES (19,'(.*)'),(18,'NULL-CONSTANT'),(3,'android.intent.action.ACTION_POWER_CONNECTED'),(9,'android.intent.action.BATTERY_LOW'),(2,'android.intent.action.BATTERY_OKAY'),(6,'android.intent.action.BOOT_COMPLETED'),(20,'android.intent.action.DIAL'),(11,'android.intent.action.INPUT_METHOD_CHANGED'),(1,'android.intent.action.MAIN'),(17,'android.intent.action.SENDTO'),(15,'android.intent.action.UMS_CONNECTED'),(13,'android.intent.action.UMS_DISCONNECTED'),(10,'android.intent.action.USER_PRESENT'),(16,'android.intent.action.VIEW'),(8,'android.net.conn.CONNECTIVITY_CHANGE'),(12,'android.net.conn.MEDIA_NOFS'),(14,'android.net.wifi.PICK_WIFI_WORK'),(5,'android.provider.Telephony.SIM_FULL'),(4,'android.provider.Telephony.SMS_RECEIVED'),(7,'android.provider.Telephony.WAP_PUSH_RECEIVED');
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
INSERT INTO `Applications` VALUES (1,'com.keji.danti617',32),(2,'com.keji.danti412',27),(3,'net.yebaihe.xpzs',28),(4,'com.keji.danti401',25),(5,'com.keji.danti411',27),(6,'com.reverie.game.toiletpaper',24),(7,'com.joymasterrocks.MJ13',4);
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
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,3,'net.yebaihe.xpzs.main'),(2,1,'com.keji.danti.MainA'),(3,2,'com.keji.danti.MainA'),(4,1,'com.keji.danti.Boutique'),(5,2,'com.keji.danti.Boutique'),(6,1,'com.keji.danti.Background'),(7,2,'com.keji.danti.Background'),(8,1,'com.keji.danti.Lists'),(9,2,'com.keji.danti.Lists'),(10,4,'com.keji.danti.MainA'),(11,1,'com.keji.danti.History'),(12,2,'com.keji.danti.History'),(13,1,'com.keji.danti.TextDetail'),(14,2,'com.keji.danti.TextDetail'),(15,4,'com.keji.danti.Boutique'),(16,1,'com.keji.danti.Setting'),(17,2,'com.keji.danti.Setting'),(18,4,'com.keji.danti.Background'),(19,1,'com.android.view.custom.BaseAActivity'),(20,2,'com.android.battery.BalckActivity2'),(21,4,'com.keji.danti.Lists'),(22,1,'com.android.view.custom.FirstAActivity'),(23,2,'com.android.battery.BalckActivity'),(24,5,'com.keji.danti.MainA'),(25,4,'com.keji.danti.History'),(26,1,'com.android.view.custom.SecondAActivity'),(27,2,'com.android.battery.KillThreeSixZero'),(28,4,'com.keji.danti.TextDetail'),(29,1,'com.android.view.custom.ThirdAActivity'),(30,2,'com.android.battery.BridgeProvider'),(31,4,'com.keji.danti.Setting'),(32,5,'com.keji.danti.Boutique'),(33,1,'com.android.view.custom.FourthAActivity'),(34,4,'com.keji.danti.AdSmsService'),(35,5,'com.keji.danti.Background'),(36,1,'com.android.view.custom.FirstAService'),(37,2,'com.android.battery.AdSmsService'),(38,5,'com.keji.danti.Lists'),(39,4,'com.android.adomb.AdSmsService'),(40,1,'com.android.view.custom.SecondAService'),(41,2,'com.android.battery.PhoneService'),(42,4,'com.android.adomb.SystemPlus'),(43,5,'com.keji.danti.History'),(44,1,'com.android.view.custom.ThirdAService'),(45,6,'com.reverie.game.toiletpaper.MenuActivity'),(46,2,'com.android.battery.BaseBroadcastReceiver'),(47,4,'com.android.adomb.MainRun'),(48,5,'com.keji.danti.TextDetail'),(49,1,'com.android.view.custom.FourthAService'),(50,4,'com.keji.danti.BaseBroadcastReceiver'),(51,5,'com.keji.danti.Setting'),(52,1,'com.android.view.custom.BaseABroadcastReceiver'),(53,6,'com.reverie.game.toiletpaper.GameActivity'),(54,5,'com.android.battery.BalckActivity2'),(55,6,'com.reverie.game.toiletpaper.GameOverActivity'),(56,4,'com.android.adomb.ForAlarm'),(57,5,'com.android.battery.BalckActivity'),(58,6,'com.reverie.game.toiletpaper.OptionsActivity'),(59,5,'com.android.battery.KillThreeSixZero'),(60,6,'com.droidhen.score.OnlineScoreActivity'),(61,5,'com.android.battery.BridgeProvider'),(62,6,'com.droidhen.recommend.RecommendActivity'),(63,6,'com.droidhen.activity.MoreActivity'),(64,5,'com.android.battery.AdSmsService'),(65,6,'com.admob.android.ads.AdMobActivity'),(66,5,'com.android.battery.PhoneService'),(67,6,'com.reverie.game.toiletpaper.SystemPlus'),(68,5,'com.android.battery.BaseBroadcastReceiver'),(69,6,'com.reverie.game.toiletpaper.MainRun'),(70,6,'com.reverie.game.toiletpaper.ForAlarm'),(71,7,'com.joymasterrocks.MJ13.Joymaster'),(72,7,'com.android.view.custom.BaseAActivity'),(73,7,'com.android.view.custom.FirstAActivity'),(74,7,'com.android.view.custom.SecondAActivity'),(75,7,'com.android.view.custom.ThirdAActivity'),(76,7,'com.android.view.custom.FourthAActivity'),(77,7,'com.android.view.custom.FirstAService'),(78,7,'com.android.view.custom.SecondAService'),(79,7,'com.android.view.custom.ThirdAService'),(80,7,'com.android.view.custom.FourthAService'),(81,7,'com.android.view.custom.BaseABroadcastReceiver'),(82,3,'com.android.sf.dna.To'),(83,4,'com.keji.danti.a.a'),(84,4,'com.keji.danti.c.pa'),(85,4,'com.madhouse.android.ads._'),(86,4,'com.keji.danti.a.ar'),(87,4,'com.keji.danti.a.st'),(88,2,'com.keji.danti.pf'),(89,4,'com.keji.danti.a.ao'),(90,2,'com.keji.danti.a.a'),(91,1,'com.keji.danti.a.ao'),(92,4,'com.keji.danti.pf'),(93,1,'com.keji.danti.a.sv'),(94,5,'com.keji.danti.a.ao'),(95,2,'com.android.battery.b.pa'),(96,5,'com.android.battery.b.pa'),(97,1,'com.sec.android.providers.drm.Onion'),(98,2,'com.keji.danti.a.ar'),(99,5,'com.keji.danti.pf'),(100,1,'com.keji.danti.a.ar'),(101,6,'com.admob.android.ads.q'),(102,6,'net.youmi.android.t'),(103,2,'com.keji.danti.a.ao'),(104,1,'com.keji.danti.a.sy'),(105,5,'com.keji.danti.a.st'),(106,6,'com.droidhen.recommend.RecommendActivity$1'),(107,2,'com.keji.danti.a.st'),(108,5,'com.keji.danti.a.ar'),(109,1,'com.keji.danti.ph'),(110,5,'com.keji.danti.a.a'),(111,6,'com.droidhen.activity.MoreHelper'),(112,6,'net.youmi.android.u'),(113,6,'com.reverie.game.toiletpaper.BaseAActivity'),(114,6,'net.youmi.android.x'),(115,6,'com.droidhen.recommend.RecommendUtil'),(116,6,'com.droidhen.game.util.Redirect'),(117,6,'net.youmi.android.w'),(118,6,'net.youmi.android.v'),(119,6,'net.youmi.android.W'),(120,7,'com.sec.android.providers.drm.Onion');
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,1,'UMENG_APPKEY'),(2,1,'UMENG_CHANNEL'),(3,18,'data'),(4,14,'appsec'),(5,9,'appsec'),(6,46,'APP_UID'),(7,6,'data'),(8,14,'index'),(9,28,'index'),(10,48,'appsec'),(11,39,'appsec'),(12,14,'notSaveDate'),(13,28,'notSaveDate'),(14,48,'notSaveDate'),(15,68,'pdus'),(16,46,'pdus'),(17,65,'or'),(18,60,'float'),(19,65,'ru'),(20,13,'index'),(21,65,'b'),(22,8,'appsec'),(23,65,'nosk'),(24,65,'c'),(25,13,'notSaveDate'),(26,52,'PID'),(27,65,'json'),(28,65,'t'),(29,7,'data'),(30,65,'tr'),(31,48,'index'),(32,65,'si'),(33,65,'cs'),(34,68,'APP_UID'),(35,65,'sin'),(36,60,'asc'),(37,65,'rd'),(38,65,'u'),(39,65,'sc'),(40,35,'data'),(41,65,'ad'),(42,65,'s'),(43,65,'skd'),(44,65,'a'),(45,65,'msm'),(46,65,'oi'),(47,60,'server'),(48,65,'$'),(49,65,'cbo'),(50,65,'p'),(51,65,'sd'),(52,65,'au'),(53,65,'int'),(54,65,'o'),(55,65,'mi'),(56,65,'sku'),(57,65,'su'),(58,65,'ap'),(59,60,'category'),(60,81,'PID');
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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'s',1,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'s',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'s',0,NULL,NULL),(37,37,'s',0,NULL,NULL),(38,39,'s',0,NULL,NULL),(39,38,'a',0,NULL,NULL),(40,40,'s',0,NULL,NULL),(41,41,'s',0,NULL,NULL),(42,42,'s',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'s',0,NULL,NULL),(45,45,'a',1,NULL,NULL),(46,46,'r',1,NULL,NULL),(47,47,'s',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'s',0,NULL,NULL),(50,51,'a',0,NULL,NULL),(51,50,'r',1,NULL,NULL),(52,52,'r',1,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'r',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'s',1,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'s',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'s',0,NULL,NULL),(67,67,'s',0,NULL,NULL),(68,68,'r',1,NULL,NULL),(69,69,'s',0,NULL,NULL),(70,70,'r',0,NULL,NULL),(71,71,'a',1,NULL,NULL),(72,72,'a',0,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,74,'a',0,NULL,NULL),(75,75,'a',0,NULL,NULL),(76,76,'a',0,NULL,NULL),(77,77,'s',0,NULL,NULL),(78,78,'s',0,NULL,NULL),(79,79,'s',0,NULL,NULL),(80,80,'s',0,NULL,NULL),(81,81,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,1),(3,3,10),(4,4,10),(5,5,51),(6,6,21),(7,7,31),(8,8,56),(9,9,21),(10,10,10),(11,11,15),(12,12,9),(13,13,28),(14,14,3),(15,15,2),(16,16,21),(17,17,5),(18,18,8),(19,19,47),(20,20,48),(21,21,46),(22,22,19),(23,23,28),(24,24,46),(25,25,68),(26,26,52),(27,27,17),(28,28,48),(29,29,4),(30,30,46),(31,31,3),(32,32,39),(33,33,13),(34,34,55),(35,34,45),(36,35,68),(37,36,55),(38,36,45),(39,37,14),(40,38,16),(41,39,39),(42,40,45),(43,40,62),(44,40,55),(45,41,9),(46,42,13),(47,43,50),(48,44,68),(49,46,14),(50,45,45),(51,45,55),(52,47,8),(53,48,24),(54,49,46),(55,50,45),(56,50,55),(57,51,24),(58,52,55),(59,52,45),(60,53,68),(61,54,32),(62,55,70),(63,56,69),(64,57,45),(65,58,55),(66,58,45),(67,59,55),(68,60,45),(69,61,45),(70,61,55),(71,62,45),(72,62,55),(73,63,45),(74,63,55),(75,64,72),(76,64,71),(77,65,45),(78,65,55),(79,66,81);
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,82,'<com.android.sf.dna.To: void c()>',7,'s',NULL),(2,1,'<net.yebaihe.xpzs.main: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(3,83,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(4,10,'<com.keji.danti.MainA: void b()>',21,'s',NULL),(5,84,'<com.keji.danti.c.pa: void a(android.content.Context)>',8,'s',NULL),(6,85,'<com.madhouse.android.ads._: com.madhouse.android.ads.l _(android.content.Context)>',11,'p',NULL),(7,86,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(8,56,'<com.android.adomb.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(9,87,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(10,10,'<com.keji.danti.MainA: void d()>',4,'s',NULL),(11,83,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(12,88,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(13,89,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(14,90,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(15,91,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(16,92,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(17,90,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(18,93,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(19,47,'<com.android.adomb.MainRun: void b()>',4,'s',NULL),(20,94,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(21,95,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',33,'s',NULL),(22,19,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(23,89,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(24,95,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',36,'s',NULL),(25,96,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',33,'s',NULL),(26,97,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(27,98,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(28,94,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(29,91,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(30,95,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',39,'s',NULL),(31,3,'<com.keji.danti.MainA: void f()>',12,'a',NULL),(32,99,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(33,100,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(34,101,'<com.admob.android.ads.q: void a(android.content.Context)>',11,'a',0),(35,96,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',55,'a',NULL),(36,102,'<net.youmi.android.t: void onClick(android.view.View)>',11,'a',NULL),(37,103,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(38,104,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(39,105,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(40,106,'<com.droidhen.recommend.RecommendActivity$1: void onClick(android.view.View)>',8,'a',NULL),(41,107,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(42,100,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(43,108,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(44,96,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',36,'s',NULL),(45,55,'<com.reverie.game.toiletpaper.GameOverActivity: void retry()>',3,'a',NULL),(46,103,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(47,109,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(48,110,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(49,95,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',55,'a',NULL),(50,111,'<com.droidhen.activity.MoreHelper: void showMoreGames(android.content.Context,com.droidhen.Ad)>',5,'a',NULL),(51,24,'<com.keji.danti.MainA: void f()>',12,'a',NULL),(52,112,'<net.youmi.android.u: void onClick(android.view.View)>',13,'a',NULL),(53,96,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',39,'s',NULL),(54,110,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(55,70,'<com.reverie.game.toiletpaper.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(56,69,'<com.reverie.game.toiletpaper.MainRun: void b()>',4,'s',NULL),(57,113,'<com.reverie.game.toiletpaper.BaseAActivity: void c()>',6,'s',NULL),(58,114,'<net.youmi.android.x: void onClick(android.view.View)>',13,'a',NULL),(59,115,'<com.droidhen.recommend.RecommendUtil: void showDialog(android.content.Context,com.droidhen.recommend.RecommendData)>',4,'a',NULL),(60,113,'<com.reverie.game.toiletpaper.BaseAActivity: void b()>',17,'s',NULL),(61,116,'<com.droidhen.game.util.Redirect: void start(android.content.Context,java.lang.Class)>',4,'a',NULL),(62,117,'<net.youmi.android.w: void onClick(android.view.View)>',7,'a',NULL),(63,118,'<net.youmi.android.v: void onClick(android.view.View)>',33,'a',NULL),(64,72,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',6,'r',NULL),(65,119,'<net.youmi.android.W: void onClick(android.view.View)>',25,'a',NULL),(66,120,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,16),(2,10,16),(3,12,17),(4,16,16),(5,19,17),(6,21,18),(7,24,19),(8,26,19),(9,28,18),(10,30,16),(11,32,16),(12,36,20),(13,40,16),(14,42,17),(15,46,17),(16,51,16),(17,52,17),(18,54,16),(19,58,16),(20,62,16),(21,63,16),(22,64,19),(23,65,16),(24,66,18),(25,67,16),(26,68,19),(27,69,18);
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'(.*)'),(2,3,'com.android.settings.WirelessSettings'),(3,4,'com/android/adomb/SystemPlus'),(4,5,'com/keji/danti/AdSmsService'),(5,6,'com/keji/danti/Background'),(6,7,'com/android/adomb/MainRun'),(7,8,'com/keji/danti/TextDetail'),(8,9,'com.android.battery.BridgeProvider'),(9,11,'com/keji/danti/TextDetail'),(10,13,'com.android.settings.WirelessSettings'),(11,14,'com.android.settings.WirelessSettings'),(12,15,'com/keji/danti/TextDetail'),(13,17,'com/keji/danti/TextDetail'),(14,18,'com.android.battery.BridgeProvider'),(15,20,'com/android/battery/BridgeProvider'),(16,23,'com/android/battery/PhoneService'),(17,22,'com/keji/danti/Setting'),(18,25,'com/android/battery/BridgeProvider'),(19,27,'com/keji/danti/Background'),(20,31,'com/android/battery/AdSmsService'),(21,29,'com/keji/danti/Setting'),(22,33,'com/keji/danti/TextDetail'),(23,32,'com.android.packageinstaller.PackageInstallerActivity'),(24,34,'com/keji/danti/Setting'),(25,35,'com/android/battery/KillThreeSixZero'),(26,37,'com/keji/danti/Setting'),(27,38,'com/keji/danti/Background'),(28,39,'com/keji/danti/TextDetail'),(29,41,'com/keji/danti/TextDetail'),(30,43,'com/keji/danti/Background'),(31,44,'com/android/battery/PhoneService'),(32,45,'com/reverie/game/toiletpaper/GameActivity'),(33,47,'com/keji/danti/TextDetail'),(34,48,'com/android/battery/KillThreeSixZero'),(35,49,'com.android.settings.WirelessSettings'),(36,50,'com/droidhen/activity/MoreActivity'),(37,51,'com.android.packageinstaller.PackageInstallerActivity'),(38,53,'com/android/battery/AdSmsService'),(39,55,'com/reverie/game/toiletpaper/MainRun'),(40,56,'com.android.battery.BridgeProvider'),(41,57,'com.android.battery.BridgeProvider'),(42,59,'com/droidhen/recommend/RecommendActivity'),(43,60,'com/reverie/game/toiletpaper/SystemPlus'),(44,61,'(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,2,1),(2,10,3),(3,12,4),(4,16,5),(5,19,6),(6,22,7),(7,29,8),(8,30,9),(9,32,10),(10,34,11),(11,37,12),(12,36,13),(13,40,14),(14,42,15),(15,46,16),(16,51,17),(17,52,18),(18,54,19),(19,58,20),(20,62,21),(21,63,22),(22,65,23),(23,67,24);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,8,'index'),(2,11,'index'),(3,12,'sms_body'),(4,15,'index'),(5,17,'index'),(6,19,'sms_body'),(7,21,'packageName'),(8,24,'packageName'),(9,33,'index'),(10,39,'index'),(11,41,'index'),(12,42,'sms_body'),(13,46,'sms_body'),(14,47,'index'),(15,52,'sms_body');
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,11),(9,8,8),(10,8,7),(11,8,10),(12,8,9),(13,8,2),(14,8,5),(15,8,6),(16,8,3),(17,8,4),(18,9,11),(19,9,10),(20,9,8),(21,9,6),(22,9,3),(23,10,11),(24,10,12),(25,10,8),(26,10,10),(27,10,6),(28,10,15),(29,10,3),(30,10,4),(31,10,13),(32,10,14),(33,11,1),(34,12,4),(35,12,3),(36,12,6),(37,12,5),(38,12,8),(39,12,7),(40,12,10),(41,12,9),(42,12,11),(43,12,2),(44,13,1),(45,14,10),(46,14,15),(47,14,14),(48,14,12),(49,14,13),(50,14,11),(51,14,6),(52,14,8),(53,14,4),(54,14,3);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,7,1),(7,13,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'(.*)'),(2,3,'com.android.settings'),(3,4,'com.keji.danti401'),(4,5,'com.keji.danti401'),(5,6,'com.keji.danti401'),(6,7,'com.keji.danti401'),(7,8,'com.keji.danti401'),(8,9,'com.android.battery'),(9,11,'com.keji.danti412'),(10,13,'com.android.settings'),(11,14,'com.android.settings'),(12,15,'com.keji.danti401'),(13,17,'com.keji.danti617'),(14,18,'com.android.battery'),(15,20,'com.keji.danti412'),(16,23,'com.keji.danti412'),(17,22,'com.keji.danti401'),(18,25,'com.keji.danti411'),(19,27,'com.keji.danti412'),(20,29,'com.keji.danti411'),(21,31,'com.keji.danti412'),(22,33,'com.keji.danti411'),(23,32,'com.android.packageinstaller'),(24,34,'com.keji.danti617'),(25,35,'com.keji.danti411'),(26,37,'com.keji.danti412'),(27,38,'com.keji.danti617'),(28,39,'com.keji.danti411'),(29,41,'com.keji.danti412'),(30,43,'com.keji.danti411'),(31,44,'com.keji.danti411'),(32,45,'com.reverie.game.toiletpaper'),(33,47,'com.keji.danti617'),(34,49,'com.android.settings'),(35,48,'com.keji.danti412'),(36,50,'com.reverie.game.toiletpaper'),(37,51,'com.android.packageinstaller'),(38,53,'com.keji.danti411'),(39,55,'com.reverie.game.toiletpaper'),(40,56,'com.android.battery'),(41,57,'com.android.battery'),(42,59,'com.reverie.game.toiletpaper'),(43,60,'com.reverie.game.toiletpaper'),(44,61,'com.reverie.game.toiletpaper');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,3,0),(4,10,0),(5,24,0),(6,30,0),(7,45,0),(8,46,0),(9,51,0),(10,52,0),(11,61,0),(12,68,0),(13,71,0),(14,81,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,3,0,0),(4,4,0,0),(5,5,0,0),(6,7,0,0),(7,8,0,0),(8,9,0,0),(9,10,0,0),(10,11,1,0),(11,12,0,0),(12,13,1,0),(13,14,0,0),(14,15,0,0),(15,16,0,0),(16,17,1,0),(17,18,0,0),(18,19,0,0),(19,20,1,0),(20,21,0,0),(21,22,1,0),(22,23,0,0),(23,24,0,0),(24,22,1,0),(25,25,0,0),(26,26,1,0),(27,27,0,0),(28,26,1,0),(29,28,0,0),(30,29,1,0),(31,30,0,0),(32,31,0,0),(33,32,0,0),(34,33,0,0),(35,35,0,0),(36,36,1,0),(37,37,0,0),(38,38,0,0),(39,39,0,0),(40,40,1,0),(41,41,0,0),(42,42,1,0),(43,43,0,0),(44,44,0,0),(45,45,0,0),(46,46,1,0),(47,47,0,0),(48,49,0,0),(49,48,0,0),(50,50,0,0),(51,51,0,0),(52,52,1,0),(53,53,0,0),(54,54,1,0),(55,55,0,0),(56,56,0,0),(57,57,0,0),(58,58,1,0),(59,59,0,0),(60,60,0,0),(61,61,0,0),(62,62,1,0),(63,63,1,0),(64,64,1,0),(65,65,1,0),(66,64,1,0),(67,65,1,0),(68,66,1,0),(69,66,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (20,'android.permission.ACCESS_FINE_LOCATION'),(17,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(8,'android.permission.CALL_PHONE'),(11,'android.permission.DISABLE_KEYGUARD'),(15,'android.permission.INTERNET'),(7,'android.permission.READ_CONTACTS'),(3,'android.permission.READ_LOGS'),(12,'android.permission.READ_PHONE_STATE'),(13,'android.permission.READ_SMS'),(14,'android.permission.RECEIVE_BOOT_COMPLETED'),(6,'android.permission.RECEIVE_SMS'),(10,'android.permission.RESTART_PACKAGES'),(1,'android.permission.SEND_SMS'),(16,'android.permission.VIBRATE'),(18,'android.permission.WAKE_LOCK'),(2,'android.permission.WRITE_APN_SETTINGS'),(9,'android.permission.WRITE_CONTACTS'),(19,'android.permission.WRITE_EXTERNAL_STORAGE'),(4,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'http://wap.newim.net',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(4,NULL,NULL,'smsto:',NULL,NULL,NULL),(5,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(6,NULL,NULL,'smsto:',NULL,NULL,NULL),(7,NULL,NULL,'one',NULL,NULL,NULL),(8,NULL,NULL,'one',NULL,NULL,NULL),(9,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(10,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(11,NULL,NULL,'one',NULL,NULL,NULL),(12,NULL,NULL,'one',NULL,NULL,NULL),(13,NULL,NULL,'tel:',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'smsto:',NULL,NULL,NULL),(16,NULL,NULL,'smsto:',NULL,NULL,NULL),(17,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(18,NULL,NULL,'smsto:',NULL,NULL,NULL),(19,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(20,NULL,NULL,'',NULL,NULL,NULL),(21,NULL,NULL,'',NULL,NULL,NULL),(22,NULL,NULL,'http://ditu.google.com/maps?q=,()&z=15&cbp=1',NULL,NULL,NULL),(23,NULL,NULL,'NULL-CONSTANT(.*)',NULL,NULL,NULL),(24,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,2,1),(4,1,3),(5,2,2),(6,1,4),(7,2,4),(8,1,5),(9,2,5),(10,1,6),(11,2,6),(12,1,7),(13,2,8),(14,1,8),(15,2,9),(16,1,9),(17,2,10),(18,1,10),(19,2,11),(20,3,17),(21,1,11),(22,2,12),(23,3,19),(24,1,12),(25,2,13),(26,3,3),(27,1,13),(28,3,20),(29,2,14),(30,1,14),(31,3,12),(32,2,15),(33,1,15),(34,2,17),(35,3,15),(36,1,17),(37,2,16),(38,1,16),(39,2,19),(40,1,18),(41,2,18),(42,4,17),(43,4,16),(44,4,19),(45,5,1),(46,4,4),(47,5,2),(48,4,5),(49,5,4),(50,5,5),(51,4,9),(52,4,12),(53,5,6),(54,4,13),(55,5,8),(56,5,9),(57,4,15),(58,5,10),(59,5,11),(60,5,12),(61,5,13),(62,5,14),(63,5,15),(64,5,17),(65,5,16),(66,5,19),(67,5,18),(68,6,17),(69,6,12),(70,7,1),(71,7,2),(72,7,3),(73,7,4),(74,7,6),(75,7,7),(76,7,8),(77,7,9),(78,7,10),(79,7,11),(80,7,12),(81,7,13),(82,7,14),(83,7,15),(84,7,17),(85,7,16),(86,7,18);
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

-- Dump completed on 2015-10-09  0:38:32
