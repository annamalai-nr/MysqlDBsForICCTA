-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_38
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (19,'(.*)'),(20,'NULL-CONSTANT'),(3,'android.intent.action.ACTION_POWER_CONNECTED'),(15,'android.intent.action.BATTERY_LOW'),(12,'android.intent.action.BATTERY_OKAY'),(5,'android.intent.action.BOOT_COMPLETED'),(9,'android.intent.action.INPUT_METHOD_CHANGED'),(11,'android.intent.action.MAIN'),(17,'android.intent.action.SENDTO'),(10,'android.intent.action.UMS_CONNECTED'),(2,'android.intent.action.UMS_DISCONNECTED'),(8,'android.intent.action.USER_PRESENT'),(18,'android.intent.action.VIEW'),(7,'android.net.conn.CONNECTIVITY_CHANGE'),(1,'android.net.conn.MEDIA_NOFS'),(6,'android.net.wifi.PICK_WIFI_WORK'),(13,'android.provider.Telephony.SIM_FULL'),(4,'android.provider.Telephony.SMS_RECEIVED'),(14,'android.provider.Telephony.WAP_PUSH_RECEIVED'),(21,'com.android.sms.ndsns.MESSAGE_SENT'),(16,'com.nd.commplatform.activity.SNSControlCenterActivity');
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
INSERT INTO `Applications` VALUES (1,'com.sec.android.touchScreen.server',4),(2,'com.zhangling.danti285',22),(3,'com.keji.danti664',32),(4,'com.keji.danti564',32),(5,'com.keji.danti425',27),(6,'com.keji.danti423',25),(7,'com.keji.danti207',15);
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
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.sec.android.touchScreen.server.BaseAActivity'),(2,1,'com.sec.android.touchScreen.server.FirstAActivity'),(3,1,'com.sec.android.touchScreen.server.SecondAActivity'),(4,1,'com.sec.android.touchScreen.server.ThirdAActivity'),(5,1,'com.sec.android.touchScreen.server.FourthAActivity'),(6,1,'com.sec.android.touchScreen.server.FirstAService'),(7,1,'com.sec.android.touchScreen.server.SecondAService'),(8,1,'com.sec.android.touchScreen.server.ThirdAService'),(9,1,'com.sec.android.touchScreen.server.FourthAService'),(10,1,'com.sec.android.touchScreen.server.BaseABroadcastReceiver'),(11,2,'com.zhangling.danti285.MainA'),(12,2,'com.zhangling.danti285.Boutique'),(13,2,'com.zhangling.danti285.Background'),(14,2,'com.zhangling.danti285.Lists'),(15,2,'com.zhangling.danti285.History'),(16,2,'com.zhangling.danti285.TextDetail'),(17,2,'com.zhangling.danti285.Setting'),(18,2,'com.zhangling.danti285.AdSmsService'),(19,2,'com.zhangling.danti285.BaseBroadcastReceiver'),(20,6,'com.keji.danti.MainA'),(21,3,'com.keji.danti.MainA'),(22,6,'com.keji.danti.Boutique'),(23,3,'com.keji.danti.Boutique'),(24,6,'com.keji.danti.Background'),(25,4,'com.keji.danti.MainA'),(26,5,'com.keji.danti.MainA'),(27,3,'com.keji.danti.Background'),(28,6,'com.keji.danti.Lists'),(29,3,'com.keji.danti.Lists'),(30,6,'com.keji.danti.History'),(31,3,'com.keji.danti.History'),(32,4,'com.keji.danti.Boutique'),(33,5,'com.keji.danti.Boutique'),(34,6,'com.keji.danti.TextDetail'),(35,3,'com.keji.danti.TextDetail'),(36,4,'com.keji.danti.Background'),(37,5,'com.keji.danti.Background'),(38,6,'com.keji.danti.Setting'),(39,3,'com.keji.danti.Setting'),(40,4,'com.keji.danti.Lists'),(41,5,'com.keji.danti.Lists'),(42,6,'com.keji.danti.AdSmsService'),(43,3,'com.android.view.custom.BaseAActivity'),(44,4,'com.keji.danti.History'),(45,5,'com.keji.danti.History'),(46,6,'com.android.adomb.AdSmsService'),(47,3,'com.android.view.custom.FirstAActivity'),(48,4,'com.keji.danti.TextDetail'),(49,5,'com.keji.danti.TextDetail'),(50,6,'com.android.adomb.SystemPlus'),(51,3,'com.android.view.custom.SecondAActivity'),(52,5,'com.keji.danti.Setting'),(53,4,'com.keji.danti.Setting'),(54,6,'com.android.adomb.MainRun'),(55,3,'com.android.view.custom.ThirdAActivity'),(56,5,'com.android.battery.BalckActivity2'),(57,4,'com.android.view.custom.BaseAActivity'),(58,6,'com.keji.danti.BaseBroadcastReceiver'),(59,3,'com.android.view.custom.FourthAActivity'),(60,5,'com.android.battery.BalckActivity'),(61,4,'com.android.view.custom.FirstAActivity'),(62,3,'com.android.view.custom.FirstAService'),(63,5,'com.android.battery.KillThreeSixZero'),(64,4,'com.android.view.custom.SecondAActivity'),(65,6,'com.android.adomb.ForAlarm'),(66,3,'com.android.view.custom.SecondAService'),(67,5,'com.android.battery.BridgeProvider'),(68,4,'com.android.view.custom.ThirdAActivity'),(69,3,'com.android.view.custom.ThirdAService'),(70,4,'com.android.view.custom.FourthAActivity'),(71,3,'com.android.view.custom.FourthAService'),(72,4,'com.android.view.custom.FirstAService'),(73,5,'com.android.battery.AdSmsService'),(74,3,'com.android.view.custom.BaseABroadcastReceiver'),(75,4,'com.android.view.custom.SecondAService'),(76,5,'com.android.battery.PhoneService'),(77,4,'com.android.view.custom.ThirdAService'),(78,5,'com.android.battery.BaseBroadcastReceiver'),(79,4,'com.android.view.custom.FourthAService'),(80,4,'com.android.view.custom.BaseABroadcastReceiver'),(81,7,'com.keji.danti207.MainA'),(82,7,'com.keji.danti207.Boutique'),(83,7,'com.keji.danti207.Background'),(84,7,'com.keji.danti207.Lists'),(85,7,'com.keji.danti207.History'),(86,7,'com.keji.danti207.TextDetail'),(87,7,'com.keji.danti207.Setting'),(88,7,'com.nd.commplatform.activity.SNSControlCenterActivity'),(89,2,'bz'),(90,2,'v'),(91,2,'k'),(92,2,'b'),(93,2,'y'),(94,2,'ca'),(95,6,'com.keji.danti.a.ao'),(96,6,'com.keji.danti.a.a'),(97,6,'com.madhouse.android.ads._'),(98,6,'com.keji.danti.pf'),(99,6,'com.keji.danti.a.st'),(100,3,'com.keji.danti.a.ar'),(101,6,'com.keji.danti.c.pa'),(102,3,'com.keji.danti.a.sy'),(103,4,'com.sec.android.providers.drm.Onion'),(104,6,'com.keji.danti.a.ar'),(105,3,'com.keji.danti.ph'),(106,5,'com.keji.danti.a.a'),(107,3,'com.sec.android.providers.drm.Onion'),(108,4,'com.keji.danti.a.ao'),(109,3,'com.keji.danti.a.ao'),(110,5,'com.keji.danti.a.ao'),(111,4,'com.keji.danti.ph'),(112,3,'com.keji.danti.a.sv'),(113,5,'com.keji.danti.pf'),(114,5,'com.android.battery.b.pa'),(115,4,'com.keji.danti.a.sv'),(116,4,'com.keji.danti.a.sy'),(117,5,'com.keji.danti.a.st'),(118,4,'com.keji.danti.a.ar'),(119,5,'com.keji.danti.a.ar'),(120,7,'ae'),(121,7,'com.nd.commplatform.D.I'),(122,7,'an'),(123,7,'w'),(124,7,'com.nd.commplatform.D.A'),(125,7,'bb'),(126,7,'com.nd.commplatform.L.K$1'),(127,7,'au'),(128,7,'com.nd.commplatform.B.B.B$1');
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,16,'index'),(2,16,'notSaveDate'),(3,13,'data'),(4,24,'data'),(5,74,'PID'),(6,27,'data'),(7,29,'appsec'),(8,35,'index'),(9,34,'notSaveDate'),(10,34,'index'),(11,78,'pdus'),(12,80,'PID'),(13,40,'appsec'),(14,48,'index'),(15,49,'index'),(16,36,'data'),(17,37,'data'),(18,35,'notSaveDate'),(19,48,'notSaveDate'),(20,78,'APP_UID'),(21,49,'notSaveDate'),(22,88,'productInfo'),(23,88,'ND2Bean91ManageView_smsValueParam'),(24,48,'appsec'),(25,41,'appsec'),(26,83,'data'),(27,88,'SNSSMSRechargeResultView_value'),(28,88,'com/nd/commplatform/L/R_getPreAccount'),(29,86,'index'),(30,88,'SNSConsumDetailView_detail'),(31,88,'SNSRechargeDetailView_detail'),(32,88,'SNSRechargeHelpView_showFlag'),(33,88,'SNSRechargeCardHelpView_flag'),(34,86,'notSaveDate');
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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',0,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'s',0,NULL,NULL),(7,7,'s',0,NULL,NULL),(8,8,'s',0,NULL,NULL),(9,9,'s',0,NULL,NULL),(10,10,'r',1,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'s',0,NULL,NULL),(19,19,'r',1,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'a',1,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'s',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'s',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,49,'a',0,NULL,NULL),(49,48,'a',0,NULL,NULL),(50,50,'s',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'s',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'r',1,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'s',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'r',0,NULL,NULL),(66,66,'s',0,NULL,NULL),(67,68,'a',0,NULL,NULL),(68,67,'s',1,NULL,NULL),(69,69,'s',0,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,71,'s',0,NULL,NULL),(72,72,'s',0,NULL,NULL),(73,73,'s',0,NULL,NULL),(74,74,'r',1,NULL,NULL),(75,75,'s',0,NULL,NULL),(76,76,'s',0,NULL,NULL),(77,77,'s',0,NULL,NULL),(78,78,'r',1,NULL,NULL),(79,79,'s',0,NULL,NULL),(80,80,'r',1,NULL,NULL),(81,81,'a',1,NULL,NULL),(82,82,'a',0,NULL,NULL),(83,83,'a',0,NULL,NULL),(84,84,'a',0,NULL,NULL),(85,85,'a',0,NULL,NULL),(86,86,'a',0,NULL,NULL),(87,87,'a',0,NULL,NULL),(88,88,'a',1,NULL,NULL),(89,124,'r',1,NULL,NULL),(90,126,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,16),(2,2,19),(3,3,11),(4,4,14),(5,5,14),(6,6,12),(7,7,16),(8,8,17),(9,9,34),(10,10,22),(11,11,28),(12,12,20),(13,13,54),(14,14,20),(15,15,28),(16,16,20),(17,17,28),(18,18,34),(19,19,35),(20,20,65),(21,21,35),(22,22,58),(23,23,39),(24,24,80),(25,25,38),(26,26,29),(27,27,26),(28,28,57),(29,29,26),(30,30,74),(31,31,25),(32,32,21),(33,33,48),(34,34,40),(35,35,29),(36,36,41),(37,37,23),(38,38,32),(39,39,78),(40,40,43),(41,41,40),(42,42,78),(43,43,53),(44,44,41),(45,45,49),(46,46,78),(47,47,49),(48,48,78),(49,49,52),(50,50,86),(51,51,48),(52,52,86),(53,53,33),(54,54,88),(55,55,84),(56,56,82),(57,57,84),(58,58,87),(59,59,82),(60,60,88);
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,89,'<bz: void b(java.lang.String)>',18,'a',NULL),(2,90,'<v: boolean a(android.content.Context,android.content.Intent)>',9,'s',NULL),(3,91,'<k: void c()>',7,'a',NULL),(4,92,'<b: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(5,93,'<y: void onClick(android.view.View)>',11,'a',NULL),(6,91,'<k: void a(java.lang.String)>',6,'a',NULL),(7,89,'<bz: boolean a(android.view.MenuItem)>',19,'a',NULL),(8,94,'<ca: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(9,95,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(10,96,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(11,97,'<com.madhouse.android.ads._: com.madhouse.android.ads.l _(android.content.Context)>',11,'p',NULL),(12,20,'<com.keji.danti.MainA: void d()>',4,'s',NULL),(13,54,'<com.android.adomb.MainRun: void b()>',4,'s',NULL),(14,96,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(15,98,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(16,20,'<com.keji.danti.MainA: void b()>',21,'s',NULL),(17,99,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(18,95,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(19,100,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(20,65,'<com.android.adomb.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(21,100,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(22,101,'<com.keji.danti.c.pa: void a(android.content.Context)>',8,'s',NULL),(23,102,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(24,103,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(25,104,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(26,105,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(27,106,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(28,57,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(29,26,'<com.keji.danti.MainA: void f()>',12,'a',NULL),(30,107,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(31,108,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(32,109,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(33,110,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(34,111,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(35,112,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(36,113,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(37,109,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(38,108,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(39,114,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',36,'s',NULL),(40,43,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(41,115,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(42,114,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',55,'a',NULL),(43,116,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(44,117,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(45,118,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(46,114,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',39,'s',NULL),(47,118,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(48,114,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',33,'s',NULL),(49,119,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(50,120,'<ae: void b(java.lang.String)>',20,'a',NULL),(51,110,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(52,120,'<ae: boolean a(android.view.MenuItem)>',19,'a',NULL),(53,106,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(54,121,'<com.nd.commplatform.D.I: void A(int,android.content.Context,android.content.Intent)>',15,'a',NULL),(55,122,'<an: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(56,123,'<w: void b()>',7,'a',NULL),(57,125,'<bb: void onClick(android.view.View)>',11,'a',NULL),(58,127,'<au: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(59,123,'<w: void a(java.lang.String)>',6,'a',NULL),(60,128,'<com.nd.commplatform.B.B.B$1: void onClick(android.view.View)>',14,'a',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,17),(2,6,18),(3,9,17),(4,10,18),(5,20,17),(6,23,19),(7,25,20),(8,28,20),(9,29,19),(10,30,18),(11,31,19),(12,32,20),(13,39,18),(14,40,18),(15,42,20),(16,44,19),(17,50,17),(18,53,17),(19,54,17),(20,56,18),(21,62,18);
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'com/zhangling/danti285/AdSmsService'),(2,3,'com.android.settings.WirelessSettings'),(3,4,'com/zhangling/danti285/TextDetail'),(4,5,'com/zhangling/danti285/TextDetail'),(5,7,'com/zhangling/danti285/Setting'),(6,8,'com/zhangling/danti285/Background'),(7,11,'com.android.battery.BridgeProvider'),(8,12,'com.android.battery.BridgeProvider'),(9,13,'com.android.settings.WirelessSettings'),(10,14,'com/keji/danti/TextDetail'),(11,15,'com/android/adomb/SystemPlus'),(12,16,'com/keji/danti/TextDetail'),(13,17,'com/keji/danti/Setting'),(14,18,'com/keji/danti/Setting'),(15,19,'com/android/adomb/MainRun'),(16,21,'com/keji/danti/AdSmsService'),(17,22,'com/keji/danti/Background'),(18,24,'com/keji/danti/Background'),(19,27,'com.android.settings.WirelessSettings'),(20,26,'com/keji/danti/TextDetail'),(21,30,'com.android.packageinstaller.PackageInstallerActivity'),(22,33,'com.android.settings.WirelessSettings'),(23,34,'com.android.settings.WirelessSettings'),(24,35,'com/keji/danti/Setting'),(25,36,'com/keji/danti/TextDetail'),(26,37,'com/keji/danti/TextDetail'),(27,38,'com/keji/danti/TextDetail'),(28,41,'com/android/battery/PhoneService'),(29,43,'com/keji/danti/TextDetail'),(30,45,'com/android/battery/KillThreeSixZero'),(31,46,'com/keji/danti/Background'),(32,47,'com/keji/danti/TextDetail'),(33,48,'com/keji/danti/Setting'),(34,49,'com/android/battery/AdSmsService'),(35,51,'com/android/battery/BridgeProvider'),(36,52,'com/keji/danti/Background'),(37,55,'com/keji/danti207/Setting'),(38,57,'com/nd/commplatform/activity/SNSControlCenterActivity'),(39,58,'com/keji/danti207/TextDetail'),(40,59,'com.android.settings.WirelessSettings'),(41,60,'com/keji/danti207/TextDetail'),(42,61,'com/keji/danti207/Background');
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,1),(2,6,2),(3,7,3),(4,9,4),(5,10,5),(6,17,7),(7,18,8),(8,20,9),(9,30,10),(10,35,11),(11,39,12),(12,40,13),(13,48,14),(14,50,15),(15,53,16),(16,54,17),(17,55,18),(18,56,19),(19,62,20);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'sms_body'),(2,4,'index'),(3,5,'index'),(4,9,'sms_body'),(5,14,'index'),(6,16,'index'),(7,20,'sms_body'),(8,26,'index'),(9,28,'packageName'),(10,29,'packageName'),(11,36,'index'),(12,37,'index'),(13,38,'index'),(14,42,'packageName'),(15,43,'index'),(16,44,'packageName'),(17,47,'index'),(18,50,'sms_body'),(19,53,'sms_body'),(20,54,'sms_body'),(21,58,'index'),(22,60,'index');
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,9),(2,1,8),(3,1,10),(4,1,1),(5,1,3),(6,1,2),(7,1,5),(8,1,4),(9,1,7),(10,1,6),(11,2,11),(12,3,5),(13,3,3),(14,3,8),(15,3,9),(16,3,7),(17,4,11),(18,5,11),(19,7,11),(20,6,11),(21,8,8),(22,8,7),(23,8,9),(24,8,5),(25,8,3),(26,9,11),(27,10,7),(28,10,8),(29,10,9),(30,10,5),(31,10,10),(32,10,6),(33,10,3),(34,10,4),(35,10,1),(36,10,2),(37,11,5),(38,11,4),(39,11,3),(40,11,9),(41,11,8),(42,11,7),(43,11,12),(44,11,13),(45,11,14),(46,11,15),(47,12,4),(48,12,3),(49,12,6),(50,12,5),(51,12,8),(52,12,7),(53,12,10),(54,12,9),(55,12,2),(56,12,1),(57,13,11),(58,14,16),(59,15,4),(60,16,21),(61,17,21);
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
INSERT INTO `IFCategories` VALUES (1,2,1),(2,4,1),(3,5,1),(4,7,1),(5,6,1),(6,13,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'com.zhangling.danti285'),(2,3,'com.android.settings'),(3,4,'com.zhangling.danti285'),(4,5,'com.zhangling.danti285'),(5,7,'com.zhangling.danti285'),(6,8,'com.zhangling.danti285'),(7,11,'com.android.battery'),(8,12,'com.android.battery'),(9,13,'com.android.settings'),(10,14,'com.keji.danti423'),(11,15,'com.keji.danti423'),(12,16,'com.keji.danti423'),(13,17,'com.keji.danti423'),(14,18,'com.keji.danti664'),(15,19,'com.keji.danti423'),(16,21,'com.keji.danti423'),(17,22,'com.keji.danti664'),(18,24,'com.keji.danti423'),(19,27,'com.android.settings'),(20,26,'com.keji.danti664'),(21,30,'com.android.packageinstaller'),(22,33,'com.android.settings'),(23,34,'com.android.settings'),(24,35,'com.keji.danti425'),(25,36,'com.keji.danti564'),(26,37,'com.keji.danti664'),(27,38,'com.keji.danti425'),(28,41,'com.keji.danti425'),(29,43,'com.keji.danti564'),(30,45,'com.keji.danti425'),(31,46,'com.keji.danti564'),(32,47,'com.keji.danti425'),(33,48,'com.keji.danti564'),(34,49,'com.keji.danti425'),(35,51,'com.keji.danti425'),(36,52,'com.keji.danti425'),(37,55,'com.keji.danti207'),(38,57,'com.keji.danti207'),(39,58,'com.keji.danti207'),(40,59,'com.android.settings'),(41,60,'com.keji.danti207'),(42,61,'com.keji.danti207');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,10,0),(2,11,0),(3,19,0),(4,20,0),(5,21,0),(6,26,0),(7,25,0),(8,58,0),(9,68,0),(10,74,0),(11,78,0),(12,80,0),(13,81,0),(14,88,0),(15,89,0),(16,89,0),(17,90,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,0,0),(6,6,1,0),(7,7,0,0),(8,8,0,0),(9,9,1,0),(10,10,1,0),(11,12,0,0),(12,13,0,0),(13,14,0,0),(14,15,0,0),(15,16,0,0),(16,17,0,0),(17,18,0,0),(18,19,0,0),(19,20,0,0),(20,21,1,0),(21,22,0,0),(22,23,0,0),(23,24,1,0),(24,25,0,0),(25,24,1,0),(26,26,0,0),(27,27,0,0),(28,28,1,0),(29,28,1,0),(30,29,0,0),(31,30,1,0),(32,30,1,0),(33,31,0,0),(34,32,0,0),(35,33,0,0),(36,34,0,0),(37,35,0,0),(38,36,0,0),(39,37,1,0),(40,38,1,0),(41,39,0,0),(42,40,1,0),(43,41,0,0),(44,40,1,0),(45,42,0,0),(46,43,0,0),(47,44,0,0),(48,45,0,0),(49,46,0,0),(50,47,1,0),(51,48,0,0),(52,49,0,0),(53,50,1,0),(54,51,1,0),(55,52,0,0),(56,53,1,0),(57,54,0,0),(58,55,0,0),(59,56,0,0),(60,57,0,0),(61,58,0,0),(62,59,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (16,'android.permission.ACCESS_NETWORK_STATE'),(19,'android.permission.ACCESS_WIFI_STATE'),(7,'android.permission.CALL_PHONE'),(11,'android.permission.DISABLE_KEYGUARD'),(14,'android.permission.INTERNET'),(6,'android.permission.READ_CONTACTS'),(3,'android.permission.READ_LOGS'),(10,'android.permission.READ_PHONE_STATE'),(12,'android.permission.READ_SMS'),(13,'android.permission.RECEIVE_BOOT_COMPLETED'),(5,'android.permission.RECEIVE_SMS'),(9,'android.permission.RESTART_PACKAGES'),(1,'android.permission.SEND_SMS'),(15,'android.permission.VIBRATE'),(17,'android.permission.WAKE_LOCK'),(2,'android.permission.WRITE_APN_SETTINGS'),(8,'android.permission.WRITE_CONTACTS'),(18,'android.permission.WRITE_EXTERNAL_STORAGE'),(4,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'smsto:',NULL,NULL,NULL),(2,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(3,NULL,NULL,'one',NULL,NULL,NULL),(4,NULL,NULL,'smsto:',NULL,NULL,NULL),(5,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'one',NULL,NULL,NULL),(8,NULL,NULL,'one',NULL,NULL,NULL),(9,NULL,NULL,'smsto:',NULL,NULL,NULL),(10,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(11,NULL,NULL,'one',NULL,NULL,NULL),(12,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'one',NULL,NULL,NULL),(15,NULL,NULL,'smsto:',NULL,NULL,NULL),(16,NULL,NULL,'smsto:',NULL,NULL,NULL),(17,NULL,NULL,'smsto:',NULL,NULL,NULL),(18,NULL,NULL,'one',NULL,NULL,NULL),(19,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,11,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,17),(17,1,16),(18,2,16),(19,2,19),(20,2,18),(21,2,4),(22,2,12),(23,2,14),(24,3,1),(25,3,2),(26,3,3),(27,3,4),(28,3,5),(29,3,6),(30,3,7),(31,4,1),(32,3,8),(33,4,2),(34,5,1),(35,3,9),(36,6,16),(37,4,3),(38,5,2),(39,6,19),(40,3,10),(41,4,4),(42,5,4),(43,6,18),(44,3,11),(45,5,5),(46,4,5),(47,6,4),(48,3,12),(49,5,7),(50,4,6),(51,6,8),(52,3,13),(53,4,7),(54,5,8),(55,3,14),(56,6,10),(57,4,8),(58,5,9),(59,6,12),(60,3,15),(61,5,10),(62,4,9),(63,6,14),(64,3,17),(65,4,10),(66,5,11),(67,6,15),(68,3,16),(69,4,11),(70,5,12),(71,3,19),(72,4,12),(73,5,13),(74,4,13),(75,5,14),(76,4,14),(77,5,15),(78,5,17),(79,4,15),(80,4,17),(81,5,16),(82,4,16),(83,5,19),(84,4,19),(85,5,18),(86,7,16),(87,7,1),(88,7,19),(89,7,18),(90,7,4),(91,7,5),(92,7,6),(93,7,8),(94,7,10),(95,7,12),(96,7,14);
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

-- Dump completed on 2015-10-09  0:39:24
