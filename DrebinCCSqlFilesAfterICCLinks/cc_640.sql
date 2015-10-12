-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_640
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (4,'android.intent.action.BOOT_COMPLETED'),(1,'android.intent.action.MAIN'),(8,'android.net.conn.CONNECTIVITY_CHANGE'),(3,'android.provider.Telephony.SMS_RECEIVED'),(7,'com.jing.tools.BootBroadcastService'),(6,'com.kituri.tools.BootBroadcastService'),(9,'com.kituri.tools.dn.BootBroadcastService'),(2,'com.tencent.tools.BootS'),(5,'com.zs.terence.service.av.BootBroadcastService');
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
INSERT INTO `Applications` VALUES (1,'com.zs.terence.divination',34),(2,'com.zs.terence.divination',43),(3,'com.zs.terence.activityforav',1),(4,'com.zs.terence.activity',21),(5,'com.jing.sp_pay',1),(6,'com.jing.sp_pay',6),(7,'com.zs.terence.martial.dn',2);
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
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.DEFAULT'),(1,'android.intent.category.LAUNCHER'),(2,'android.intent.category.default');
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.zs.terence.divination.AcpActivity'),(2,1,'com.zs.terence.divination.BallotActivity'),(3,1,'com.zs.terence.divination.MainActivity'),(4,1,'com.zs.terence.divination.SignActivity'),(5,5,'com.jing.sp_pay.AcpActivity'),(6,1,'com.zs.terence.divination.ViewActivity'),(7,3,'com.zs.terence.activityforav.ViewActivity'),(8,4,'com.zs.terence.activity.ViewActivity'),(9,2,'com.zs.terence.divination.AcpActivity'),(10,1,'com.tencent.tools.BootS'),(11,3,'com.zs.terence.activityforav.SetActivity'),(12,4,'com.zs.terence.activity.SetActivity'),(13,3,'com.zs.terence.activityforav.CategoriesActivity'),(14,5,'com.zs.terence.constellate.LoadActivity'),(15,4,'com.zs.terence.activity.CategoriesActivity'),(16,6,'com.jing.sp_pay.AcpActivity'),(17,3,'com.zs.terence.activityforav.AcpActivity'),(18,2,'com.zs.terence.divination.BallotActivity'),(19,5,'com.zs.terence.constellate.MainActivity'),(20,4,'com.zs.terence.activity.AcpActivity'),(21,2,'com.zs.terence.divination.MainActivity'),(22,5,'com.zs.terence.constellate.ViewActivity'),(23,1,'com.tencent.tools.messageR'),(24,6,'com.jing.sp_pay.LoadActivity'),(25,2,'com.zs.terence.divination.SignActivity'),(26,5,'com.kituri.tools.messageReceiver'),(27,3,'com.zs.terence.service.av.BootBroadcastService'),(28,4,'com.kituri.tools.BootBroadcastService'),(29,6,'com.jing.sp_pay.MainActivity'),(30,2,'com.zs.terence.divination.ViewActivity'),(31,7,'com.zs.terence.martial.dn.AcpActivity'),(32,6,'com.jing.sp_pay.ViewActivity'),(33,2,'com.jing.tools.BootBroadcastService'),(34,5,'com.kituri.tools.BootBroadcastReceiver'),(35,6,'com.tencent.tools.BootS'),(36,1,'com.tencent.tools.BootR'),(37,3,'com.zs.terence.service.av.ScreenStateService'),(38,4,'com.zs.terence.service.ScreenStateService'),(39,7,'com.zs.terence.martial.dn.LoadActivity'),(40,3,'com.zs.terence.service.av.messageReceiver'),(41,4,'com.kituri.tools.messageReceiver'),(42,7,'com.zs.terence.martial.dn.MainActivity'),(43,2,'com.jing.tools.messageReceiver'),(44,6,'com.tencent.tools.messageR'),(45,1,'com.tencent.tools.NetCheckReceiver'),(46,7,'com.zs.terence.martial.dn.SetActivity'),(47,3,'com.zs.terence.service.av.BootBroadcastReceiver'),(48,7,'com.zs.terence.martial.dn.SetTextColorActivity'),(49,4,'com.kituri.tools.BootBroadcastReceiver'),(50,2,'com.jing.tools.BootBroadcastReceiver'),(51,6,'com.tencent.tools.BootR'),(52,7,'com.zs.terence.martial.dn.SetBgPicActivity'),(53,7,'com.zs.terence.martial.dn.ReadActivity'),(54,4,'com.zs.terence.service.BootBroadcastReceiver'),(55,2,'com.jing.tools.NetCheckReceiver'),(56,7,'com.zs.terence.martial.dn.ResetSystem'),(57,6,'com.tencent.tools.NetCheckReceiver'),(58,7,'com.zs.terence.martial.dn.ListBookActivity'),(59,7,'com.kituri.tools.dn.BootBroadcastService'),(60,7,'com.kituri.tools.dn.messageReceiver'),(61,7,'com.kituri.tools.dn.BootBroadcastReceiver'),(62,1,'com.zs.terence.divination.MainActivity$1'),(63,2,'com.zs.terence.divination.MainActivity$1'),(64,5,'com.zs.terence.constellate.MainActivity$MyThread'),(65,6,'com.jing.sp_pay.MainActivity$MyThread'),(66,7,'com.zs.terence.martial.dn.LoadActivity$1');
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,40,'pdus'),(2,7,'imageViews'),(3,4,'sign'),(4,45,'noConnectivity'),(5,55,'noConnectivity'),(6,6,'viewsign'),(7,22,'logo_id'),(8,57,'noConnectivity'),(9,22,'bg_id'),(10,53,'bookname'),(11,23,'pdus'),(12,60,'pdus'),(13,43,'pdus'),(14,32,'bg_id'),(15,30,'viewsign'),(16,32,'logo_id'),(17,22,'star'),(18,26,'pdus'),(19,41,'pdus'),(20,8,'imageViews'),(21,25,'sign'),(22,32,'star'),(23,44,'pdus'),(24,58,'filepath'),(25,53,'ch_name'),(26,58,'ch_name');
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'s',1,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'r',1,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'r',1,NULL,NULL),(27,27,'s',1,NULL,NULL),(28,28,'s',1,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'s',1,NULL,NULL),(34,34,'r',1,NULL,NULL),(35,35,'s',1,NULL,NULL),(36,36,'r',1,NULL,NULL),(37,37,'s',0,NULL,NULL),(38,38,'s',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'r',1,NULL,NULL),(41,41,'r',1,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,44,'r',1,NULL,NULL),(44,43,'r',1,NULL,NULL),(45,45,'r',1,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'r',1,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'r',1,NULL,NULL),(50,51,'r',1,NULL,NULL),(51,50,'r',1,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'r',1,NULL,NULL),(55,55,'r',1,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'r',1,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'s',1,NULL,NULL),(60,60,'r',1,NULL,NULL),(61,61,'r',1,NULL,NULL);
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
INSERT INTO `ExitPointComponents` VALUES (1,1,47),(2,2,17),(3,3,7),(4,4,1),(5,5,17),(6,6,3),(7,7,13),(8,8,3),(9,9,17),(10,10,36),(11,11,21),(12,12,20),(13,13,47),(14,14,6),(15,15,21),(16,16,16),(17,17,8),(18,18,11),(19,19,3),(20,20,51),(21,21,16),(22,22,12),(23,23,1),(24,24,19),(25,25,25),(26,26,49),(27,27,29),(28,28,4),(29,29,54),(30,30,30),(31,31,39),(32,32,1),(33,33,22),(34,34,16),(35,35,15),(36,36,30),(37,37,5),(38,38,6),(39,39,53),(40,40,9),(41,41,32),(42,42,22),(43,44,20),(44,43,4),(45,45,31),(46,46,21),(47,47,32),(48,48,31),(49,49,20),(50,50,9),(51,51,50),(52,52,58),(53,53,9),(54,54,25),(55,55,58),(56,56,39),(57,57,61),(58,58,31),(59,59,53),(60,60,39);
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
INSERT INTO `ExitPoints` VALUES (1,47,'<com.zs.terence.service.av.BootBroadcastReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(2,17,'<com.zs.terence.activityforav.AcpActivity: void onClick(android.view.View)>',18,'s',NULL),(3,7,'<com.zs.terence.activityforav.ViewActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',6,'a',NULL),(4,1,'<com.zs.terence.divination.AcpActivity: void GAME_LOGO(boolean)>',10,'a',NULL),(5,17,'<com.zs.terence.activityforav.AcpActivity: void GAME_LOGO(boolean)>',10,'a',NULL),(6,62,'<com.zs.terence.divination.MainActivity$1: void run()>',32,'a',NULL),(7,13,'<com.zs.terence.activityforav.CategoriesActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',13,'a',NULL),(8,62,'<com.zs.terence.divination.MainActivity$1: void run()>',14,'a',NULL),(9,17,'<com.zs.terence.activityforav.AcpActivity: void onCreate(android.os.Bundle)>',70,'s',NULL),(10,36,'<com.tencent.tools.BootR: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(11,63,'<com.zs.terence.divination.MainActivity$1: void run()>',14,'a',NULL),(12,20,'<com.zs.terence.activity.AcpActivity: void GAME_LOGO(boolean)>',10,'a',NULL),(13,47,'<com.zs.terence.service.av.BootBroadcastReceiver: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(14,6,'<com.zs.terence.divination.ViewActivity: void onClick(android.view.View)>',6,'a',NULL),(15,63,'<com.zs.terence.divination.MainActivity$1: void run()>',32,'a',NULL),(16,16,'<com.jing.sp_pay.AcpActivity: void onClick(android.view.View)>',18,'s',NULL),(17,8,'<com.zs.terence.activity.ViewActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',6,'a',NULL),(18,11,'<com.zs.terence.activityforav.SetActivity: void onDestroy()>',18,'s',NULL),(19,62,'<com.zs.terence.divination.MainActivity$1: void run()>',43,'a',NULL),(20,50,'<com.jing.tools.BootBroadcastReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(21,16,'<com.jing.sp_pay.AcpActivity: void GAME_LOGO(boolean)>',10,'a',NULL),(22,12,'<com.zs.terence.activity.SetActivity: void onDestroy()>',12,'s',NULL),(23,1,'<com.zs.terence.divination.AcpActivity: void onCreate(android.os.Bundle)>',87,'s',NULL),(24,64,'<com.zs.terence.constellate.MainActivity$MyThread: void run()>',38,'a',NULL),(25,25,'<com.zs.terence.divination.SignActivity: void onClick(android.view.View)>',8,'a',NULL),(26,49,'<com.kituri.tools.BootBroadcastReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(27,65,'<com.jing.sp_pay.MainActivity$MyThread: void run()>',44,'a',NULL),(28,4,'<com.zs.terence.divination.SignActivity: boolean onKeyDown(int,android.view.KeyEvent)>',6,'a',NULL),(29,54,'<com.zs.terence.service.BootBroadcastReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(30,30,'<com.zs.terence.divination.ViewActivity: boolean onKeyDown(int,android.view.KeyEvent)>',6,'a',NULL),(31,66,'<com.zs.terence.martial.dn.LoadActivity$1: void run()>',14,'a',NULL),(32,1,'<com.zs.terence.divination.AcpActivity: void onClick(android.view.View)>',18,'s',NULL),(33,22,'<com.zs.terence.constellate.ViewActivity: void onClick(android.view.View)>',4,'a',NULL),(34,16,'<com.jing.sp_pay.AcpActivity: void onCreate(android.os.Bundle)>',87,'s',NULL),(35,15,'<com.zs.terence.activity.CategoriesActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',8,'a',NULL),(36,30,'<com.zs.terence.divination.ViewActivity: void onClick(android.view.View)>',6,'a',NULL),(37,5,'<com.jing.sp_pay.AcpActivity: void GAME_LOGO(boolean)>',11,'a',NULL),(38,6,'<com.zs.terence.divination.ViewActivity: boolean onKeyDown(int,android.view.KeyEvent)>',6,'a',NULL),(39,53,'<com.zs.terence.martial.dn.ReadActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',66,'a',NULL),(40,9,'<com.zs.terence.divination.AcpActivity: void onClick(android.view.View)>',18,'s',NULL),(41,32,'<com.jing.sp_pay.ViewActivity: void onClick(android.view.View)>',4,'a',NULL),(42,22,'<com.zs.terence.constellate.ViewActivity: boolean onKeyDown(int,android.view.KeyEvent)>',6,'a',NULL),(43,4,'<com.zs.terence.divination.SignActivity: void onClick(android.view.View)>',8,'a',NULL),(44,20,'<com.zs.terence.activity.AcpActivity: void onClick(android.view.View)>',18,'s',NULL),(45,31,'<com.zs.terence.martial.dn.AcpActivity: void onClick(android.view.View)>',18,'s',NULL),(46,63,'<com.zs.terence.divination.MainActivity$1: void run()>',43,'a',NULL),(47,32,'<com.jing.sp_pay.ViewActivity: boolean onKeyDown(int,android.view.KeyEvent)>',6,'a',NULL),(48,31,'<com.zs.terence.martial.dn.AcpActivity: void GAME_LOGO(boolean)>',10,'a',NULL),(49,20,'<com.zs.terence.activity.AcpActivity: void onCreate(android.os.Bundle)>',75,'s',NULL),(50,9,'<com.zs.terence.divination.AcpActivity: void onCreate(android.os.Bundle)>',87,'s',NULL),(51,51,'<com.tencent.tools.BootR: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(52,58,'<com.zs.terence.martial.dn.ListBookActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',14,'a',NULL),(53,9,'<com.zs.terence.divination.AcpActivity: void GAME_LOGO(boolean)>',10,'a',NULL),(54,25,'<com.zs.terence.divination.SignActivity: boolean onKeyDown(int,android.view.KeyEvent)>',6,'a',NULL),(55,58,'<com.zs.terence.martial.dn.ListBookActivity: boolean onKeyDown(int,android.view.KeyEvent)>',7,'a',NULL),(56,66,'<com.zs.terence.martial.dn.LoadActivity$1: void run()>',39,'a',NULL),(57,61,'<com.kituri.tools.dn.BootBroadcastReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(58,31,'<com.zs.terence.martial.dn.AcpActivity: void onCreate(android.os.Bundle)>',75,'s',NULL),(59,53,'<com.zs.terence.martial.dn.ReadActivity: boolean onLongClick(android.view.View)>',6,'a',NULL),(60,66,'<com.zs.terence.martial.dn.LoadActivity$1: void run()>',30,'a',NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/zs/terence/service/av/ScreenStateService'),(2,2,'com/zs/terence/service/av/BootBroadcastService'),(3,3,'com/zs/terence/activityforav/SetActivity'),(4,4,'com/zs/terence/divination/MainActivity'),(5,5,'com/zs/terence/activityforav/CategoriesActivity'),(6,6,'com/zs/terence/divination/BallotActivity'),(7,7,'com/zs/terence/activityforav/ViewActivity'),(8,8,'com/zs/terence/activityforav/ViewActivity'),(9,9,'com/zs/terence/divination/BallotActivity'),(10,10,'com/zs/terence/service/av/BootBroadcastService'),(11,11,'com/tencent/tools/BootS'),(12,12,'com/zs/terence/divination/BallotActivity'),(13,13,'com/zs/terence/activity/CategoriesActivity'),(14,14,'com/zs/terence/service/av/BootBroadcastService'),(15,15,'com/zs/terence/divination/BallotActivity'),(16,16,'com/zs/terence/divination/BallotActivity'),(17,17,'com/tencent/tools/BootS'),(18,18,'com/zs/terence/activity/SetActivity'),(19,19,'com/zs/terence/service/av/ScreenStateService'),(20,20,'com/zs/terence/divination/BallotActivity'),(21,22,'com/jing/sp_pay/LoadActivity'),(22,21,'com/jing/tools/BootBroadcastService'),(23,23,'com/zs/terence/service/ScreenStateService'),(24,24,'com/tencent/tools/BootS'),(25,27,'com/kituri/tools/BootBroadcastService'),(26,26,'com/zs/terence/divination/ViewActivity'),(27,25,'com/zs/terence/constellate/ViewActivity'),(28,29,'com/zs/terence/divination/BallotActivity'),(29,28,'com/jing/sp_pay/ViewActivity'),(30,30,'com/zs/terence/service/ScreenStateService'),(31,31,'com/zs/terence/divination/BallotActivity'),(32,32,'com/zs/terence/martial/dn/MainActivity'),(33,34,'com/zs/terence/constellate/MainActivity'),(34,33,'com/tencent/tools/BootS'),(35,35,'com/tencent/tools/BootS'),(36,36,'com/zs/terence/activity/ViewActivity'),(37,37,'com/zs/terence/divination/BallotActivity'),(38,38,'com/zs/terence/constellate/LoadActivity'),(39,40,'com/zs/terence/divination/BallotActivity'),(40,39,'com/zs/terence/activity/ViewActivity'),(41,41,'com/zs/terence/martial/dn/SetActivity'),(42,42,'com/jing/tools/BootBroadcastService'),(43,43,'com/jing/sp_pay/MainActivity'),(44,44,'com/zs/terence/constellate/MainActivity'),(45,45,'com/kituri/tools/BootBroadcastService'),(46,47,'com/kituri/tools/dn/BootBroadcastService'),(47,46,'com/zs/terence/divination/ViewActivity'),(48,48,'com/zs/terence/divination/BallotActivity'),(49,49,'com/jing/sp_pay/MainActivity'),(50,50,'com/zs/terence/martial/dn/LoadActivity'),(51,51,'com/kituri/tools/BootBroadcastService'),(52,52,'com/jing/tools/BootBroadcastService'),(53,53,'com/tencent/tools/BootS'),(54,55,'com/zs/terence/divination/MainActivity'),(55,54,'com/zs/terence/martial/dn/ReadActivity'),(56,56,'com/zs/terence/divination/BallotActivity'),(57,57,'com/zs/terence/martial/dn/MainActivity'),(58,58,'com/zs/terence/martial/dn/MainActivity'),(59,59,'com/kituri/tools/dn/BootBroadcastService'),(60,60,'com/kituri/tools/dn/BootBroadcastService'),(61,61,'com/zs/terence/martial/dn/SetActivity'),(62,62,'com/zs/terence/martial/dn/MainActivity');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,8,'imageViews'),(2,25,'star'),(3,26,'viewsign'),(4,25,'bg_id'),(5,25,'logo_id'),(6,28,'star'),(7,28,'bg_id'),(8,28,'logo_id'),(9,39,'imageViews'),(10,46,'viewsign'),(11,54,'position'),(12,54,'total'),(13,54,'bookname'),(14,54,'ch_name');
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,2),(5,5,1),(6,6,1),(7,7,1),(8,8,3),(9,8,4),(10,9,4),(11,9,3),(12,10,5),(13,11,6),(14,12,1),(15,13,4),(16,14,7),(17,15,2),(18,16,4),(19,17,4),(20,17,3),(21,18,3),(22,18,4),(23,19,3),(24,19,4),(25,20,4),(26,20,3),(27,21,4),(28,21,8),(29,22,4),(30,23,4),(31,25,4),(32,24,4),(33,26,4),(34,27,8),(35,27,4),(36,28,8),(37,28,4),(38,29,9),(39,30,3),(40,30,4),(41,31,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,2),(5,5,1),(6,6,1),(7,7,1),(8,8,3),(9,9,3),(10,10,2),(11,11,2),(12,12,1),(13,14,2),(14,15,2),(15,16,1),(16,17,3),(17,18,3),(18,20,3),(19,19,3),(20,21,3),(21,25,1),(22,27,3),(23,28,3),(24,29,2),(25,30,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.zs.terence.activityforav'),(2,2,'com.zs.terence.activityforav'),(3,3,'com.zs.terence.activityforav'),(4,4,'com.zs.terence.divination'),(5,5,'com.zs.terence.activityforav'),(6,6,'com.zs.terence.divination'),(7,7,'com.zs.terence.activityforav'),(8,8,'com.zs.terence.activityforav'),(9,9,'com.zs.terence.divination'),(10,10,'com.zs.terence.activityforav'),(11,11,'com.zs.terence.divination'),(12,12,'com.zs.terence.divination'),(13,13,'com.zs.terence.activity'),(14,14,'com.zs.terence.activityforav'),(15,15,'com.zs.terence.divination'),(16,16,'com.zs.terence.divination'),(17,17,'com.jing.sp_pay'),(18,18,'com.zs.terence.activity'),(19,19,'com.zs.terence.activityforav'),(20,20,'com.zs.terence.divination'),(21,22,'com.jing.sp_pay'),(22,21,'com.zs.terence.divination'),(23,23,'com.zs.terence.activity'),(24,24,'com.zs.terence.divination'),(25,27,'com.zs.terence.activity'),(26,26,'com.zs.terence.divination'),(27,25,'com.jing.sp_pay'),(28,29,'com.zs.terence.divination'),(29,28,'com.jing.sp_pay'),(30,30,'com.zs.terence.activity'),(31,31,'com.zs.terence.divination'),(32,32,'com.zs.terence.martial.dn'),(33,33,'com.zs.terence.divination'),(34,34,'com.jing.sp_pay'),(35,35,'com.jing.sp_pay'),(36,36,'com.zs.terence.activity'),(37,37,'com.zs.terence.divination'),(38,38,'com.jing.sp_pay'),(39,40,'com.zs.terence.divination'),(40,39,'com.zs.terence.activity'),(41,41,'com.zs.terence.martial.dn'),(42,43,'com.jing.sp_pay'),(43,42,'com.zs.terence.divination'),(44,44,'com.jing.sp_pay'),(45,45,'com.zs.terence.activity'),(46,47,'com.zs.terence.martial.dn'),(47,46,'com.zs.terence.divination'),(48,48,'com.zs.terence.divination'),(49,49,'com.jing.sp_pay'),(50,50,'com.zs.terence.martial.dn'),(51,51,'com.zs.terence.activity'),(52,52,'com.zs.terence.divination'),(53,53,'com.jing.sp_pay'),(54,55,'com.zs.terence.divination'),(55,54,'com.zs.terence.martial.dn'),(56,56,'com.zs.terence.divination'),(57,57,'com.zs.terence.martial.dn'),(58,58,'com.zs.terence.martial.dn'),(59,59,'com.zs.terence.martial.dn'),(60,60,'com.zs.terence.martial.dn'),(61,61,'com.zs.terence.martial.dn'),(62,62,'com.zs.terence.martial.dn');
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,5,0),(3,9,0),(4,10,0),(5,16,0),(6,17,0),(7,20,0),(8,26,0),(9,23,0),(10,27,0),(11,28,0),(12,31,0),(13,34,0),(14,33,0),(15,35,0),(16,36,0),(17,40,0),(18,41,0),(19,43,0),(20,44,0),(21,45,0),(22,47,0),(23,49,0),(24,51,0),(25,50,0),(26,54,0),(27,55,0),(28,57,0),(29,59,0),(30,60,0),(31,61,0);
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
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,0,0),(6,6,0,0),(7,7,0,0),(8,7,0,0),(9,8,0,0),(10,9,0,0),(11,10,0,0),(12,11,0,0),(13,12,0,0),(14,13,0,0),(15,14,0,0),(16,15,0,0),(17,16,0,0),(18,17,0,0),(19,18,0,0),(20,19,0,0),(21,20,0,0),(22,21,0,0),(23,22,0,0),(24,23,0,0),(25,24,0,0),(26,25,0,0),(27,26,0,0),(28,27,0,0),(29,28,0,0),(30,29,0,0),(31,30,0,0),(32,31,0,0),(33,32,0,0),(34,33,0,0),(35,34,0,0),(36,35,0,0),(37,36,0,0),(38,37,0,0),(39,35,0,0),(40,38,0,0),(41,39,0,0),(42,40,0,0),(43,41,0,0),(44,42,0,0),(45,44,0,0),(46,43,0,0),(47,45,0,0),(48,46,0,0),(49,47,0,0),(50,48,0,0),(51,49,0,0),(52,50,0,0),(53,51,0,0),(54,52,0,0),(55,53,0,0),(56,54,0,0),(57,55,0,0),(58,56,0,0),(59,57,0,0),(60,58,0,0),(61,59,0,0),(62,60,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,38,14,2,NULL),(2,34,19,2,NULL),(3,44,19,2,NULL),(4,4,3,2,NULL),(5,17,10,2,NULL),(6,4,21,2,NULL),(7,17,35,2,NULL),(8,24,10,2,NULL),(9,22,24,2,NULL),(10,24,35,2,NULL),(11,35,10,2,NULL),(12,33,10,2,NULL),(13,35,35,2,NULL),(14,33,35,2,NULL),(15,43,29,2,NULL),(16,29,2,2,NULL),(17,49,29,2,NULL),(18,29,18,2,NULL),(19,53,10,2,NULL),(20,46,6,2,NULL),(21,53,35,2,NULL),(22,46,30,2,NULL),(23,15,2,2,NULL),(24,15,18,2,NULL),(25,40,2,2,NULL),(26,40,18,2,NULL),(27,11,10,2,NULL),(28,11,35,2,NULL),(29,42,33,2,NULL),(30,52,33,2,NULL),(31,55,3,2,NULL),(32,55,21,2,NULL),(33,26,6,2,NULL),(34,26,30,2,NULL),(35,56,2,2,NULL),(36,56,18,2,NULL),(37,31,2,2,NULL),(38,31,18,2,NULL),(39,37,2,2,NULL),(40,37,2,2,NULL),(41,37,18,2,NULL),(42,21,33,2,NULL),(43,47,59,2,NULL),(44,50,39,2,NULL),(45,60,59,2,NULL),(46,41,46,2,NULL),(47,61,46,2,NULL),(48,54,53,2,NULL),(49,57,42,2,NULL),(50,59,59,2,NULL),(51,18,12,2,NULL),(52,23,38,2,NULL),(53,36,8,2,NULL),(54,39,8,2,NULL),(55,13,15,2,NULL),(56,45,28,2,NULL),(57,51,28,2,NULL),(58,27,28,2,NULL),(59,30,38,2,NULL),(60,3,11,2,NULL),(61,19,37,2,NULL),(62,7,7,2,NULL),(63,8,7,2,NULL),(64,2,27,2,NULL),(65,5,13,2,NULL),(66,10,27,2,NULL),(67,1,37,2,NULL),(68,14,27,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (17,'android.permission.ACCESS_NETWORK_STATE'),(6,'android.permission.ACCESS_WIFI_STATE'),(15,'android.permission.CHANGE_NETWORK_STATE'),(14,'android.permission.CHANGE_WIFI_STATE'),(18,'android.permission.DELETE_CACHE_FILES'),(13,'android.permission.INTERNET'),(8,'android.permission.READ_CONTACTS'),(4,'android.permission.READ_LOGS'),(10,'android.permission.READ_PHONE_STATE'),(11,'android.permission.READ_SMS'),(12,'android.permission.RECEIVE_BOOT_COMPLETED'),(7,'android.permission.RECEIVE_SMS'),(19,'android.permission.RECORD_AUDIO'),(21,'android.permission.RESTART_PACKAGES'),(1,'android.permission.SEND_SMS'),(20,'android.permission.SET_WALLPAPER'),(16,'android.permission.WAKE_LOCK'),(3,'android.permission.WRITE_APN_SETTINGS'),(9,'android.permission.WRITE_CONTACTS'),(2,'android.permission.WRITE_EXTERNAL_STORAGE'),(5,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,2,1),(15,4,1),(16,3,1),(17,1,14),(18,2,2),(19,4,2),(20,1,15),(21,3,2),(22,2,3),(23,4,3),(24,5,1),(25,1,17),(26,3,3),(27,4,4),(28,2,4),(29,5,2),(30,1,16),(31,3,6),(32,4,5),(33,5,3),(34,2,5),(35,3,7),(36,5,6),(37,2,6),(38,4,6),(39,6,1),(40,3,8),(41,5,7),(42,2,7),(43,4,7),(44,6,2),(45,3,9),(46,2,8),(47,4,8),(48,6,3),(49,5,8),(50,3,10),(51,2,9),(52,5,9),(53,4,9),(54,6,4),(55,3,11),(56,2,10),(57,5,10),(58,4,10),(59,6,5),(60,3,12),(61,2,11),(62,5,11),(63,4,11),(64,6,6),(65,3,13),(66,5,12),(67,6,7),(68,4,12),(69,2,12),(70,3,14),(71,5,13),(72,2,13),(73,6,8),(74,4,13),(75,3,15),(76,5,14),(77,2,14),(78,6,9),(79,4,14),(80,3,17),(81,7,1),(82,2,15),(83,6,10),(84,4,15),(85,5,15),(86,3,16),(87,7,2),(88,2,17),(89,6,11),(90,4,17),(91,5,17),(92,3,21),(93,7,3),(94,2,16),(95,4,16),(96,6,12),(97,5,16),(98,7,4),(99,3,20),(100,2,19),(101,4,20),(102,6,13),(103,7,5),(104,2,18),(105,6,14),(106,7,6),(107,6,15),(108,7,7),(109,6,17),(110,7,8),(111,6,16),(112,7,9),(113,7,10),(114,7,11),(115,7,12),(116,7,13),(117,7,14),(118,7,15),(119,7,17),(120,7,16);
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

-- Dump completed on 2015-10-12  3:31:12
