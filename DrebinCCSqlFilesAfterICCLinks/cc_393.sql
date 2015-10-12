-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_393
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (10,'(.*)'),(11,'NULL-CONSTANT'),(2,'android.intent.action.BOOT_COMPLETED'),(12,'android.intent.action.CHOOSER'),(7,'android.intent.action.CREATE_SHORTCUT'),(1,'android.intent.action.MAIN'),(8,'android.intent.action.PACKAGE_ADDED'),(9,'android.intent.action.SENDTO'),(5,'android.intent.action.VIEW'),(4,'android.provider.Telephony.SMS_RECEIVED'),(6,'android.service.wallpaper.WallpaperService'),(3,'com.androidemu.gba.action.SPECIFY_BIOS'),(13,'com.bingo.rom_gripper.action.ROM_LIST');
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
INSERT INTO `Applications` VALUES (1,'com.han.hxw1',1),(2,'com.ttmobilegame.android.constellation',3),(3,'com.androidemu.harvefyzj',203),(4,'com.dseffects.MonkeyJump2',4),(5,'com.electricsheep.dj',17),(6,'com.finker.wolfgirl',21);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(3,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.han.hxw1.Main'),(2,1,'com.waps.OffersWebView'),(3,1,'com.han.hxw1.AppShow'),(4,1,'com.han.hxw1.News'),(5,1,'com.han.hxw1.App'),(6,2,'com.ttmobilegame.android.constellation.Logo'),(7,2,'com.ttmobilegame.android.constellation.tiaozhuan'),(8,2,'com.ttmobilegame.android.constellation.test'),(9,2,'com.ttmobilegame.android.constellation.affection'),(10,2,'com.ttmobilegame.android.constellation.source'),(11,2,'com.myanimal.automata.gleanybody.rjwgACFiaaaaa'),(12,2,'com.myanimal.automata.gleanybody.AndroidIME'),(13,2,'com.myanimal.ServiceReceiver'),(14,3,'com.waps.OffersWebView'),(15,3,'com.androidemu.harvefyzj.MainActivity'),(16,3,'com.androidemu.harvefyzj.FileChooser'),(17,3,'com.androidemu.harvefyzj.StateSlotsActivity'),(18,3,'com.androidemu.harvefyzj.KeyProfilesActivity'),(19,3,'com.androidemu.harvefyzj.HelpActivity'),(20,4,'com.dseffects.MonkeyJump2.MonkeyJump2'),(21,3,'com.androidemu.harvefyzj.CheatsActivity'),(22,3,'com.androidemu.harvefyzj.EmulatorSettings'),(23,4,'com.dseffects.MonkeyJump2.jump2.c.rufCuAtj'),(24,5,'com.electricsheep.dj.DroidJumpActivity'),(25,4,'com.dseffects.MonkeyJump2.jump2.c.AndroidIME'),(26,5,'com.electricsheep.dj.SettingsActivity'),(27,4,'com.dseffects.MonkeyJump2.jump2.f'),(28,5,'com.electricsheep.dj.GameActivity'),(29,3,'com.androidemu.harvefyzj.EmulatorActivity'),(30,6,'com.finker.wolfgirl.SettingActivity'),(31,5,'com.geinimi.custom.Ad1020_102001'),(32,6,'com.waps.OffersWebView'),(33,6,'com.finker.wolfgirl.WiEngineLiveWallpaperService'),(34,5,'com.geinimi.AdService'),(35,5,'com.geinimi.AdServiceReceiver'),(36,3,'com.vpon.adon.android.WebInApp'),(37,6,'com.finker.wolfgirl.OnTimeup'),(38,3,'com.androidemu.harvefyzj.CreateShortcuts'),(39,6,'com.finker.wolfgirl.OnBoot'),(40,3,'com.androidemu.harvefyzj.EmulatorService'),(41,1,'com.waps.q'),(42,1,'com.waps.z'),(43,1,'com.waps.aa'),(44,1,'com.han.hxw1.AppShow$1'),(45,1,'com.waps.s'),(46,1,'com.han.hxw1.News$1$2'),(47,1,'com.han.hxw1.News$1$1'),(48,1,'com.han.hxw1.App$1'),(49,1,'com.waps.o'),(50,1,'com.waps.AppConnect'),(51,1,'com.waps.ac'),(52,4,'com.dseffects.MonkeyJump2.jump2.e.b'),(53,4,'com.dseffects.MonkeyJump2.jump2.e'),(54,4,'com.dseffects.MonkeyJump2.jump2.h'),(55,4,'com.dseffects.MonkeyJump2.jump2.q'),(56,2,'com.myanimal.d.c'),(57,2,'com.myanimal.a.i'),(58,2,'com.myanimal.MyActivity'),(59,2,'com.myanimal.d.j'),(60,6,'com.waps.z'),(61,5,'com.geinimi.AdActivity'),(62,5,'com.geinimi.c.b'),(63,2,'com.ttmobilegame.android.constellation.tiaozhuan$4'),(64,5,'com.electricsheep.dj.DroidJumpActivity$6'),(65,6,'com.waps.o'),(66,5,'com.electricsheep.dj.DroidJumpActivity$1'),(67,2,'com.myanimal.MyService'),(68,5,'com.electricsheep.dj.DroidJumpActivity$5'),(69,6,'com.waps.aa'),(70,2,'com.myanimal.a.c'),(71,6,'com.waps.q'),(72,2,'com.ttmobilegame.android.constellation.tiaozhuan$5'),(73,6,'com.waps.AppConnect'),(74,5,'com.electricsheep.dj.ErrorReporter'),(75,2,'com.ttmobilegame.android.constellation.tiaozhuan$3'),(76,6,'com.waps.ac'),(77,5,'com.geinimi.ads.c'),(78,5,'com.electricsheep.dj.DroidJumpActivity$4'),(79,5,'com.electricsheep.dj.DroidJumpActivity$2'),(80,5,'com.geinimi.c.e'),(81,3,'com.waps.ac'),(82,3,'com.waps.z'),(83,3,'com.waps.aa'),(84,3,'com.waps.AppConnect'),(85,3,'com.waps.o'),(86,3,'com.waps.q'),(87,3,'com.waps.s');
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
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,2,'Offers_URL'),(2,2,'offers_webview_tag'),(3,3,'CLIENT_PACKAGE'),(4,5,'CLIENT_PACKAGE'),(5,2,'CLIENT_PACKAGE'),(6,4,'CLIENT_PACKAGE'),(7,2,'ACTIVITY_FLAG'),(8,2,'URL'),(9,2,'UrlPath'),(10,3,'APP_ID'),(11,5,'APP_ID'),(12,2,'APP_ID'),(13,4,'APP_ID'),(14,3,'WAPS_ID'),(15,5,'WAPS_ID'),(16,2,'WAPS_ID'),(17,4,'WAPS_ID'),(18,2,'SHWO_FLAG'),(19,3,'result'),(20,2,'USER_ID'),(21,2,'isFinshClose'),(22,2,'Notify_Url_Params'),(23,3,'WAPS_PID'),(24,5,'WAPS_PID'),(25,2,'WAPS_PID'),(26,4,'WAPS_PID'),(27,3,'DEVICE_ID'),(28,5,'DEVICE_ID'),(29,2,'DEVICE_ID'),(30,4,'DEVICE_ID'),(31,2,'URL_PARAMS'),(32,2,'Notify_Id'),(33,23,'did'),(34,26,'pdus'),(35,23,'ACTIVITY_PARAM_KEY'),(36,23,'ptid'),(37,23,'cpid'),(38,6,'salesid'),(39,12,'salesid'),(40,11,'salesid'),(41,23,'salesid'),(42,6,'did'),(43,12,'did'),(44,11,'did'),(45,32,'CLIENT_PACKAGE'),(46,37,'CLIENT_PACKAGE'),(47,30,'CLIENT_PACKAGE'),(48,31,'ACTIVITY_PARAM_URL_KEY'),(49,6,'ptid'),(50,12,'ptid'),(51,32,'UrlPath'),(52,11,'ptid'),(53,32,'Notify_Id'),(54,32,'Offers_URL'),(55,32,'Notify_Url_Params'),(56,6,'cpid'),(57,32,'ACTIVITY_FLAG'),(58,12,'cpid'),(59,32,'offers_webview_tag'),(60,31,'cpid'),(61,11,'cpid'),(62,32,'DEVICE_ID'),(63,34,'cpid'),(64,37,'DEVICE_ID'),(65,30,'DEVICE_ID'),(66,32,'APP_ID'),(67,37,'APP_ID'),(68,30,'APP_ID'),(69,30,'UMENG_APPKEY'),(70,31,'ACTIVITY_PARAM_KEY'),(71,32,'URL'),(72,32,'USER_ID'),(73,32,'URL_PARAMS'),(74,11,'ACTIVITY_PARAM_KEY'),(75,32,'isFinshClose'),(76,32,'SHWO_FLAG'),(77,30,'UMENG_CHANNEL'),(78,32,'WAPS_ID'),(79,37,'WAPS_ID'),(80,30,'WAPS_ID'),(81,32,'WAPS_PID'),(82,37,'WAPS_PID'),(83,30,'WAPS_PID'),(84,31,'ptid'),(85,34,'ptid'),(86,14,'URL'),(87,14,'ACTIVITY_FLAG'),(88,14,'URL_PARAMS'),(89,16,'title'),(90,15,'title'),(91,14,'Notify_Id'),(92,14,'offers_webview_tag'),(93,17,'saveMode'),(94,14,'Notify_Url_Params'),(95,14,'WAPS_PID'),(96,16,'WAPS_PID'),(97,29,'WAPS_PID'),(98,15,'WAPS_PID'),(99,14,'UrlPath'),(100,16,'CLIENT_PACKAGE'),(101,29,'CLIENT_PACKAGE'),(102,15,'CLIENT_PACKAGE'),(103,16,'filters'),(104,15,'filters'),(105,14,'Offers_URL'),(106,14,'WAPS_ID'),(107,16,'WAPS_ID'),(108,29,'WAPS_ID'),(109,15,'WAPS_ID'),(110,14,'USER_ID'),(111,14,'CLIENT_PACKAGE'),(112,18,'title'),(113,16,'currentDir'),(114,15,'currentDir'),(115,14,'APP_ID'),(116,16,'APP_ID'),(117,29,'APP_ID'),(118,15,'APP_ID'),(119,14,'DEVICE_ID'),(120,16,'DEVICE_ID'),(121,29,'DEVICE_ID'),(122,15,'DEVICE_ID'),(123,14,'isFinshClose'),(124,14,'SHWO_FLAG');
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'s',0,3,NULL),(13,13,'r',1,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',1,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'s',0,3,NULL),(26,27,'r',1,NULL,NULL),(27,26,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'s',1,29,NULL),(34,34,'s',0,3,NULL),(35,35,'r',1,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'r',0,NULL,NULL),(38,38,'a',1,NULL,NULL),(39,39,'r',1,NULL,NULL),(40,40,'s',0,NULL,NULL),(41,41,'r',1,NULL,NULL),(42,71,'r',1,NULL,NULL),(43,86,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,2),(3,3,2),(4,4,2),(5,5,3),(6,6,3),(7,6,5),(8,7,4),(9,8,4),(10,9,5),(11,10,5),(12,10,3),(13,11,2),(14,12,3),(15,12,5),(16,13,2),(17,14,5),(18,14,3),(19,15,25),(20,16,25),(21,17,23),(22,18,26),(23,18,23),(24,20,25),(25,19,12),(26,21,23),(27,22,12),(28,23,25),(29,24,23),(30,24,26),(31,25,12),(32,26,32),(33,27,11),(34,28,28),(35,29,12),(36,30,32),(37,31,31),(38,32,34),(39,33,32),(40,34,34),(41,35,7),(42,36,24),(43,37,13),(44,38,32),(45,39,34),(46,40,12),(47,41,24),(48,42,12),(49,43,24),(50,44,32),(51,45,12),(52,46,31),(53,47,12),(54,48,35),(55,49,11),(56,50,28),(57,51,12),(58,52,7),(59,53,34),(60,54,30),(61,56,12),(62,55,28),(63,57,7),(64,58,32),(65,59,34),(66,60,24),(67,61,24),(68,62,34),(69,63,22),(70,64,22),(71,65,14),(72,66,29),(73,67,15),(74,67,16),(75,68,14),(76,69,14),(77,70,14),(78,71,29),(79,72,29),(80,72,16),(81,72,15),(82,73,29),(83,74,14),(84,75,29),(85,76,15),(86,76,16),(87,77,15),(88,77,16),(89,78,15),(90,78,16),(91,79,15),(92,79,16),(93,80,16),(94,80,15),(95,80,29),(96,81,29),(97,82,29),(98,82,15),(99,82,16),(100,83,22),(101,84,14),(102,85,16),(103,85,15),(104,85,29);
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
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,2,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',318,'a',NULL),(2,42,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(3,2,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',293,'a',NULL),(4,43,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(5,44,'<com.han.hxw1.AppShow$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(6,45,'<com.waps.s: void onClick(android.view.View)>',35,'a',NULL),(7,46,'<com.han.hxw1.News$1$2: void onClick(android.content.DialogInterface,int)>',15,'a',NULL),(8,47,'<com.han.hxw1.News$1$1: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(9,48,'<com.han.hxw1.App$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',26,'a',NULL),(10,45,'<com.waps.s: void onClick(android.view.View)>',59,'a',NULL),(11,49,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(12,50,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(13,51,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(14,45,'<com.waps.s: void onClick(android.view.View)>',85,'a',NULL),(15,52,'<com.dseffects.MonkeyJump2.jump2.e.b: void a(java.lang.String,java.lang.String)>',9,'a',NULL),(16,53,'<com.dseffects.MonkeyJump2.jump2.e: void onDestroy()>',13,'s',NULL),(17,54,'<com.dseffects.MonkeyJump2.jump2.h: void onCreate(android.os.Bundle)>',15,'a',NULL),(18,55,'<com.dseffects.MonkeyJump2.jump2.q: void run()>',15,'s',NULL),(19,56,'<com.myanimal.d.c: java.util.Vector a()>',30,'p',NULL),(20,52,'<com.dseffects.MonkeyJump2.jump2.e.b: void a(java.lang.String,java.lang.String)>',9,'a',NULL),(21,54,'<com.dseffects.MonkeyJump2.jump2.h: void onCreate(android.os.Bundle)>',15,'a',NULL),(22,56,'<com.myanimal.d.c: boolean a(java.lang.String)>',7,'p',NULL),(23,53,'<com.dseffects.MonkeyJump2.jump2.e: void onDestroy()>',13,'s',NULL),(24,55,'<com.dseffects.MonkeyJump2.jump2.q: void run()>',15,'s',NULL),(25,57,'<com.myanimal.a.i: void a(java.lang.String)>',18,'a',NULL),(26,32,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(27,58,'<com.myanimal.MyActivity: void onCreate(android.os.Bundle)>',24,'s',NULL),(28,28,'<com.electricsheep.dj.GameActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',46,'a',NULL),(29,59,'<com.myanimal.d.j: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(30,60,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(31,61,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',20,'s',NULL),(32,62,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',13,'p',NULL),(33,32,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(34,34,'<com.geinimi.AdService: void onDestroy()>',6,'s',NULL),(35,63,'<com.ttmobilegame.android.constellation.tiaozhuan$4: void onClick(android.view.View)>',7,'a',NULL),(36,64,'<com.electricsheep.dj.DroidJumpActivity$6: void onClick(android.view.View)>',7,'a',NULL),(37,13,'<com.myanimal.ServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',13,'s',NULL),(38,65,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(39,62,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',24,'p',0),(40,56,'<com.myanimal.d.c: java.util.Vector a()>',5,'p',NULL),(41,66,'<com.electricsheep.dj.DroidJumpActivity$1: void onClick(android.view.View)>',9,'a',NULL),(42,67,'<com.myanimal.MyService: void onDestroy()>',11,'s',NULL),(43,68,'<com.electricsheep.dj.DroidJumpActivity$5: void onClick(android.view.View)>',7,'a',NULL),(44,69,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(45,56,'<com.myanimal.d.c: java.util.Vector a()>',51,'p',NULL),(46,61,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',28,'a',NULL),(47,56,'<com.myanimal.d.c: boolean a(java.lang.String,java.lang.String)>',13,'p',NULL),(48,35,'<com.geinimi.AdServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(49,58,'<com.myanimal.MyActivity: void onCreate(android.os.Bundle)>',30,'a',NULL),(50,28,'<com.electricsheep.dj.GameActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',40,'a',NULL),(51,70,'<com.myanimal.a.c: boolean c()>',24,'p',NULL),(52,72,'<com.ttmobilegame.android.constellation.tiaozhuan$5: void onClick(android.view.View)>',7,'a',NULL),(53,62,'<com.geinimi.c.b: boolean a(java.lang.String)>',7,'p',NULL),(54,73,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(55,74,'<com.electricsheep.dj.ErrorReporter: void SendErrorMail(android.content.Context,java.lang.String)>',32,'a',NULL),(56,56,'<com.myanimal.d.c: boolean a(java.lang.String,java.lang.String)>',24,'p',0),(57,75,'<com.ttmobilegame.android.constellation.tiaozhuan$3: void onClick(android.view.View)>',7,'a',NULL),(58,76,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(59,77,'<com.geinimi.ads.c: boolean b()>',24,'p',NULL),(60,78,'<com.electricsheep.dj.DroidJumpActivity$4: void onClick(android.view.View)>',27,'a',NULL),(61,79,'<com.electricsheep.dj.DroidJumpActivity$2: void onClick(android.view.View)>',7,'a',NULL),(62,80,'<com.geinimi.c.e: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(63,22,'<com.androidemu.harvefyzj.EmulatorSettings: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)>',33,'a',NULL),(64,22,'<com.androidemu.harvefyzj.EmulatorSettings: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)>',42,'a',NULL),(65,81,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(66,29,'<com.androidemu.harvefyzj.EmulatorActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(67,16,'<com.androidemu.harvefyzj.FileChooser: void startROMGripper()>',12,'a',NULL),(68,82,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(69,83,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(70,14,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(71,29,'<com.androidemu.harvefyzj.EmulatorActivity: void onSaveState()>',7,'a',NULL),(72,84,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(73,29,'<com.androidemu.harvefyzj.EmulatorActivity: void onCreate(android.os.Bundle)>',89,'s',0),(74,85,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(75,29,'<com.androidemu.harvefyzj.EmulatorActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(76,15,'<com.androidemu.harvefyzj.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',0),(77,15,'<com.androidemu.harvefyzj.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',0),(78,16,'<com.androidemu.harvefyzj.FileChooser: void startROMGripper()>',5,'a',NULL),(79,15,'<com.androidemu.harvefyzj.MainActivity: void showSettings()>',3,'a',NULL),(80,87,'<com.waps.s: void onClick(android.view.View)>',85,'a',NULL),(81,29,'<com.androidemu.harvefyzj.EmulatorActivity: void onLoadState()>',6,'a',NULL),(82,87,'<com.waps.s: void onClick(android.view.View)>',59,'a',NULL),(83,22,'<com.androidemu.harvefyzj.EmulatorSettings: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)>',24,'a',NULL),(84,14,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',328,'a',NULL),(85,87,'<com.waps.s: void onClick(android.view.View)>',35,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,5),(2,4,1),(3,5,1),(4,10,1),(5,11,1),(6,12,1),(7,13,1),(8,14,9),(9,15,9),(10,16,9),(11,17,5),(12,18,5),(13,19,5),(14,31,5),(15,33,1),(16,34,1),(17,36,5),(18,37,5),(19,39,10),(20,40,11),(21,44,5),(22,46,5),(23,49,5),(24,55,5),(25,58,12),(26,60,12),(27,61,12),(28,62,12),(29,64,12),(30,65,12),(31,66,12),(32,67,12),(33,68,5),(34,70,10),(35,72,11),(36,76,5),(37,77,5),(38,81,1),(39,82,1),(40,85,5),(41,87,13),(42,91,5),(43,92,5),(44,96,1),(45,97,1),(46,98,1),(47,99,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,4,1),(2,5,3),(3,10,1),(4,11,3),(5,12,1),(6,13,3),(7,33,1),(8,34,3),(9,81,1),(10,82,3),(11,96,1),(12,97,3),(13,98,1),(14,99,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'(.*)'),(2,6,'com/waps/OffersWebView'),(3,7,'com/waps/OffersWebView'),(4,8,'com/han/hxw1/Main'),(5,20,'com/waps/OffersWebView'),(6,21,'NULL-CONSTANT'),(7,22,'com/waps/OffersWebView'),(8,23,'(.*)'),(9,24,'(.*)'),(10,25,'(.*)'),(11,26,'(.*)'),(12,27,'(.*)'),(13,28,'(.*)'),(14,29,'(.*)'),(15,30,'(.*)'),(16,35,'(.*)'),(17,38,'com/geinimi/AdService'),(18,41,'(.*)'),(19,42,'com/geinimi/AdService'),(20,43,'com/ttmobilegame/android/constellation/affection'),(21,45,'(.*)'),(22,47,'com/electricsheep/dj/GameActivity'),(23,48,'(.*)'),(24,50,'com/waps/OffersWebView'),(25,51,'(.*)'),(26,53,'com/geinimi/AdService'),(27,54,'(.*)'),(28,52,'com/waps/OffersWebView'),(29,56,'com/ttmobilegame/android/constellation/test'),(30,57,'com/waps/OffersWebView'),(31,59,'com/ttmobilegame/android/constellation/source'),(32,63,'NULL-CONSTANT'),(33,69,'com/electricsheep/dj/SettingsActivity'),(34,71,'com/androidemu/harvefyzj/KeyProfilesActivity'),(35,73,'com/androidemu/harvefyzj/KeyProfilesActivity'),(36,74,'NULL-CONSTANT'),(37,75,'com/androidemu/harvefyzj/EmulatorSettings'),(38,78,'com/waps/OffersWebView'),(39,79,'com/waps/OffersWebView'),(40,83,'com/androidemu/harvefyzj/StateSlotsActivity'),(41,84,'com/waps/OffersWebView'),(42,86,'com/androidemu/harvefyzj/CheatsActivity'),(43,88,'com/androidemu/harvefyzj/EmulatorSettings'),(44,89,'com/waps/OffersWebView'),(45,90,'com/androidemu/harvefyzj/StateSlotsActivity'),(46,93,'com/androidemu/harvefyzj/FileChooser'),(47,94,'(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,2,1),(2,14,2),(3,15,3),(4,16,4),(5,17,5),(6,18,6),(7,19,7),(8,31,10),(9,36,11),(10,37,12),(11,44,14),(12,46,15),(13,49,17),(14,55,21),(15,68,24),(16,76,25),(17,77,26),(18,83,27),(19,85,28),(20,90,29),(21,91,30),(22,92,31);
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
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,6,'Notify_Url_Params'),(2,6,'UrlPath'),(3,6,'ACTIVITY_FLAG'),(4,6,'isFinshClose'),(5,6,'offers_webview_tag'),(6,7,'UrlPath'),(7,7,'ACTIVITY_FLAG'),(8,7,'isFinshClose'),(9,7,'offers_webview_tag'),(10,14,'sms_body'),(11,15,'sms_body'),(12,16,'sms_body'),(13,20,'USER_ID'),(14,20,'CLIENT_PACKAGE'),(15,20,'Offers_URL'),(16,20,'offers_webview_tag'),(17,20,'URL_PARAMS'),(18,22,'CLIENT_PACKAGE'),(19,22,'URL'),(20,22,'isFinshClose'),(21,22,'offers_webview_tag'),(22,39,'android.intent.extra.shortcut.NAME'),(23,39,'android.intent.extra.shortcut.ICON'),(24,39,'android.intent.extra.shortcut.INTENT'),(25,40,'android.intent.extra.shortcut.NAME'),(26,40,'android.intent.extra.shortcut.ICON'),(27,40,'android.intent.extra.shortcut.INTENT'),(28,50,'Notify_Url_Params'),(29,50,'UrlPath'),(30,50,'ACTIVITY_FLAG'),(31,50,'isFinshClose'),(32,50,'offers_webview_tag'),(33,52,'UrlPath'),(34,52,'ACTIVITY_FLAG'),(35,52,'isFinshClose'),(36,52,'offers_webview_tag'),(37,55,'android.intent.extra.SUBJECT'),(38,57,'USER_ID'),(39,57,'CLIENT_PACKAGE'),(40,57,'Offers_URL'),(41,57,'offers_webview_tag'),(42,57,'URL_PARAMS'),(43,58,'android.intent.extra.INTENT'),(44,60,'android.intent.extra.INTENT'),(45,61,'android.intent.extra.TITLE'),(46,61,'android.intent.extra.INTENT'),(47,62,'android.intent.extra.INTENT'),(48,64,'android.intent.extra.TITLE'),(49,64,'android.intent.extra.INTENT'),(50,65,'android.intent.extra.INTENT'),(51,66,'android.intent.extra.TITLE'),(52,66,'android.intent.extra.INTENT'),(53,67,'android.intent.extra.TITLE'),(54,67,'android.intent.extra.INTENT'),(55,68,'android.intent.extra.SUBJECT'),(56,70,'android.intent.extra.shortcut.NAME'),(57,71,'title'),(58,70,'android.intent.extra.shortcut.ICON'),(59,70,'android.intent.extra.shortcut.INTENT'),(60,72,'android.intent.extra.shortcut.NAME'),(61,72,'android.intent.extra.shortcut.ICON'),(62,72,'android.intent.extra.shortcut.INTENT'),(63,73,'title'),(64,78,'UrlPath'),(65,78,'ACTIVITY_FLAG'),(66,78,'isFinshClose'),(67,78,'offers_webview_tag'),(68,79,'Notify_Url_Params'),(69,79,'UrlPath'),(70,79,'ACTIVITY_FLAG'),(71,79,'isFinshClose'),(72,79,'offers_webview_tag'),(73,83,'saveMode'),(74,84,'USER_ID'),(75,84,'CLIENT_PACKAGE'),(76,84,'Offers_URL'),(77,84,'offers_webview_tag'),(78,84,'URL_PARAMS'),(79,87,'romtype'),(80,89,'CLIENT_PACKAGE'),(81,89,'URL'),(82,89,'isFinshClose'),(83,89,'offers_webview_tag'),(84,93,'title'),(85,93,'filters');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,3,1),(3,4,2),(4,5,1),(5,8,1),(6,9,1),(7,10,3),(8,12,2),(9,13,2),(10,14,4),(11,15,4),(12,16,5),(13,17,1),(14,18,6),(15,19,2),(16,20,7),(17,21,2),(18,22,8),(19,23,8),(20,24,8);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,5,2),(7,6,1),(8,7,1),(9,8,1),(10,9,1),(11,11,1),(12,10,2),(13,12,1),(14,13,1),(15,16,2),(16,17,1),(17,19,1),(18,20,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,10,'file',NULL,NULL,NULL,NULL,NULL),(2,10,NULL,NULL,NULL,NULL,'application','x-gba-rom'),(3,16,'file',NULL,NULL,NULL,NULL,NULL),(4,16,NULL,NULL,NULL,NULL,'application','zip'),(5,16,NULL,NULL,NULL,NULL,'application','octet-stream'),(6,22,'package',NULL,NULL,NULL,NULL,NULL),(7,23,'package',NULL,NULL,NULL,NULL,NULL),(8,24,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,2,'application','vnd.android.package-archive'),(2,19,'application','vnd.android.package-archive'),(3,31,'application','vnd.android.package-archive'),(4,37,'application','vnd.android.package-archive'),(5,46,'application','vnd.android.package-archive'),(6,77,'application','vnd.android.package-archive'),(7,85,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'(.*)'),(2,4,'(.*)'),(3,5,'(.*)'),(4,6,'com.han.hxw1'),(5,7,'com.han.hxw1'),(6,8,'com.han.hxw1'),(7,10,'(.*)'),(8,11,'(.*)'),(9,12,'NULL-CONSTANT'),(10,13,'NULL-CONSTANT'),(11,20,'com.han.hxw1'),(12,21,'NULL-CONSTANT'),(13,22,'com.han.hxw1'),(14,23,'(.*)'),(15,24,'com.dseffects.MonkeyJump2'),(16,25,'com.dseffects.MonkeyJump2'),(17,26,'com.dseffects.MonkeyJump2'),(18,27,'(.*)'),(19,28,'com.dseffects.MonkeyJump2'),(20,29,'com.dseffects.MonkeyJump2'),(21,30,'com.dseffects.MonkeyJump2'),(22,33,'(.*)'),(23,35,'com.ttmobilegame.android.constellation'),(24,34,'(.*)'),(25,38,'com.electricsheep.dj'),(26,41,'(.*)'),(27,42,'com.electricsheep.dj'),(28,43,'com.ttmobilegame.android.constellation'),(29,45,'com.ttmobilegame.android.constellation'),(30,47,'com.electricsheep.dj'),(31,48,'com.ttmobilegame.android.constellation'),(32,50,'com.finker.wolfgirl'),(33,51,'com.electricsheep.dj'),(34,53,'com.electricsheep.dj'),(35,54,'com.ttmobilegame.android.constellation'),(36,52,'com.finker.wolfgirl'),(37,56,'com.ttmobilegame.android.constellation'),(38,57,'com.finker.wolfgirl'),(39,59,'com.ttmobilegame.android.constellation'),(40,63,'NULL-CONSTANT'),(41,69,'com.electricsheep.dj'),(42,71,'com.androidemu.harvefyzj'),(43,73,'com.androidemu.harvefyzj'),(44,74,'NULL-CONSTANT'),(45,75,'com.androidemu.harvefyzj'),(46,78,'com.androidemu.harvefyzj'),(47,79,'com.androidemu.harvefyzj'),(48,81,'(.*)'),(49,82,'(.*)'),(50,83,'com.androidemu.harvefyzj'),(51,84,'com.androidemu.harvefyzj'),(52,86,'com.androidemu.harvefyzj'),(53,88,'com.androidemu.harvefyzj'),(54,89,'com.androidemu.harvefyzj'),(55,90,'com.androidemu.harvefyzj'),(56,93,'com.androidemu.harvefyzj'),(57,94,'(.*)'),(58,96,'(.*)'),(59,97,'(.*)'),(60,98,'NULL-CONSTANT'),(61,99,'NULL-CONSTANT');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,6,0),(3,11,0),(4,13,0),(5,15,0),(6,20,0),(7,20,0),(8,23,0),(9,23,0),(10,22,0),(11,24,0),(12,26,0),(13,26,0),(14,26,0),(15,26,0),(16,29,0),(17,31,0),(18,33,0),(19,35,0),(20,38,0),(21,39,0),(22,41,0),(23,42,0),(24,43,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,3,1,0),(4,3,1,0),(5,3,1,0),(6,4,0,0),(7,4,0,0),(8,5,0,0),(9,6,1,0),(10,6,1,0),(11,6,1,0),(12,6,1,0),(13,6,1,0),(14,7,1,0),(15,8,1,0),(16,9,1,0),(17,10,1,0),(18,10,1,0),(19,11,1,0),(20,12,0,0),(21,13,0,0),(22,14,0,0),(23,15,0,0),(24,16,0,0),(25,17,0,0),(26,18,0,0),(27,20,0,0),(28,21,0,0),(29,23,0,0),(30,24,0,0),(31,25,1,0),(32,26,1,0),(33,26,1,0),(34,26,1,0),(35,27,0,0),(36,28,1,0),(37,30,1,0),(38,31,0,0),(39,29,1,0),(40,29,1,0),(41,33,0,0),(42,34,0,0),(43,35,0,0),(44,36,1,0),(45,37,0,0),(46,38,1,0),(47,41,0,0),(48,42,0,0),(49,43,1,0),(50,44,0,0),(51,46,0,0),(52,44,0,0),(53,48,0,0),(54,49,0,0),(55,50,1,0),(56,52,0,0),(57,54,0,0),(58,55,1,0),(59,57,0,0),(60,55,1,0),(61,55,1,0),(62,55,1,0),(63,58,0,0),(64,55,1,0),(65,55,1,0),(66,55,1,0),(67,55,1,0),(68,60,1,0),(69,61,0,0),(70,62,1,0),(71,63,0,0),(72,62,1,0),(73,64,0,0),(74,65,0,0),(75,66,0,0),(76,67,1,0),(77,68,1,0),(78,69,0,0),(79,69,0,0),(80,70,1,0),(81,70,1,0),(82,70,1,0),(83,71,0,0),(84,72,0,0),(85,74,1,0),(86,75,0,0),(87,78,1,0),(88,79,0,0),(89,80,0,0),(90,81,0,0),(91,82,1,0),(92,82,1,0),(93,83,0,0),(94,84,0,0),(95,85,1,0),(96,85,1,0),(97,85,1,0),(98,85,1,0),(99,85,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,3,20,2,NULL),(2,3,20,2,NULL),(3,4,20,2,NULL),(4,4,20,2,NULL),(5,5,20,2,NULL),(6,80,20,2,NULL),(7,81,20,2,NULL),(8,82,20,2,NULL),(9,87,20,2,NULL),(10,55,20,2,NULL),(11,32,20,2,NULL),(12,33,20,2,NULL),(13,34,20,2,NULL),(14,3,23,2,NULL),(15,4,23,2,NULL),(16,5,23,2,NULL),(17,80,23,2,NULL),(18,81,23,2,NULL),(19,82,23,2,NULL),(20,87,23,2,NULL),(21,55,23,2,NULL),(22,32,23,2,NULL),(23,33,23,2,NULL),(24,34,23,2,NULL),(25,3,26,2,NULL),(26,4,26,2,NULL),(27,5,26,2,NULL),(28,80,26,2,NULL),(29,81,26,2,NULL),(30,82,26,2,NULL),(31,87,26,2,NULL),(32,55,26,2,NULL),(33,32,26,2,NULL),(34,33,26,2,NULL),(35,34,26,2,NULL),(36,3,6,2,NULL),(37,4,6,2,NULL),(38,5,6,2,NULL),(39,80,6,2,NULL),(40,81,6,2,NULL),(41,82,6,2,NULL),(42,87,6,2,NULL),(43,55,6,2,NULL),(44,32,6,2,NULL),(45,33,6,2,NULL),(46,34,6,2,NULL),(47,3,11,2,NULL),(48,4,11,2,NULL),(49,5,11,2,NULL),(50,80,11,2,NULL),(51,81,11,2,NULL),(52,82,11,2,NULL),(53,87,11,2,NULL),(54,55,11,2,NULL),(55,32,11,2,NULL),(56,33,11,2,NULL),(57,34,11,2,NULL),(58,3,13,2,NULL),(59,4,13,2,NULL),(60,5,13,2,NULL),(61,80,13,2,NULL),(62,81,13,2,NULL),(63,82,13,2,NULL),(64,87,13,2,NULL),(65,55,13,2,NULL),(66,32,13,2,NULL),(67,33,13,2,NULL),(68,34,13,2,NULL),(69,3,24,2,NULL),(70,4,24,2,NULL),(71,5,24,2,NULL),(72,80,24,2,NULL),(73,81,24,2,NULL),(74,82,24,2,NULL),(75,87,24,2,NULL),(76,55,24,2,NULL),(77,32,24,2,NULL),(78,33,24,2,NULL),(79,34,24,2,NULL),(80,55,1,2,NULL),(81,55,15,2,NULL),(82,55,38,2,NULL),(83,55,31,2,NULL),(84,55,35,2,NULL),(85,55,33,2,NULL),(86,55,39,2,NULL),(87,3,31,2,NULL),(88,4,31,2,NULL),(89,5,31,2,NULL),(90,80,31,2,NULL),(91,81,31,2,NULL),(92,82,31,2,NULL),(93,87,31,2,NULL),(94,32,31,2,NULL),(95,33,31,2,NULL),(96,34,31,2,NULL),(97,42,34,2,NULL),(98,53,34,2,NULL),(99,3,35,2,NULL),(100,4,35,2,NULL),(101,5,35,2,NULL),(102,80,35,2,NULL),(103,81,35,2,NULL),(104,82,35,2,NULL),(105,87,35,2,NULL),(106,32,35,2,NULL),(107,33,35,2,NULL),(108,34,35,2,NULL),(109,32,1,2,NULL),(110,33,1,2,NULL),(111,34,1,2,NULL),(112,32,15,2,NULL),(113,33,15,2,NULL),(114,34,15,2,NULL),(115,32,38,2,NULL),(116,33,38,2,NULL),(117,34,38,2,NULL),(118,32,33,2,NULL),(119,33,33,2,NULL),(120,34,33,2,NULL),(121,32,39,2,NULL),(122,33,39,2,NULL),(123,34,39,2,NULL),(124,3,33,2,NULL),(125,4,33,2,NULL),(126,5,33,2,NULL),(127,80,33,2,NULL),(128,81,33,2,NULL),(129,82,33,2,NULL),(130,87,33,2,NULL),(131,3,39,2,NULL),(132,4,39,2,NULL),(133,5,39,2,NULL),(134,80,39,2,NULL),(135,81,39,2,NULL),(136,82,39,2,NULL),(137,87,39,2,NULL),(138,80,1,2,NULL),(139,81,1,2,NULL),(140,82,1,2,NULL),(141,80,15,2,NULL),(142,81,15,2,NULL),(143,82,15,2,NULL),(144,3,1,2,NULL),(145,80,38,2,NULL),(146,4,1,2,NULL),(147,81,38,2,NULL),(148,5,1,2,NULL),(149,82,38,2,NULL),(150,87,1,2,NULL),(151,88,22,2,NULL),(152,3,15,2,NULL),(153,4,15,2,NULL),(154,5,15,2,NULL),(155,87,15,2,NULL),(156,3,38,2,NULL),(157,87,38,2,NULL),(158,4,38,2,NULL),(159,71,18,2,NULL),(160,5,38,2,NULL),(161,73,18,2,NULL),(162,93,16,2,NULL),(163,75,22,2,NULL),(164,83,17,2,NULL),(165,86,21,2,NULL),(166,90,17,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (10,'android.permission.ACCESS_COARSE_LOCATION'),(18,'android.permission.ACCESS_FINE_LOCATION'),(15,'android.permission.ACCESS_GPS'),(8,'android.permission.ACCESS_LOCATION'),(5,'android.permission.ACCESS_NETWORK_STATE'),(21,'android.permission.ACCESS_WIFI_STATE'),(29,'android.permission.BIND_WALLPAPER'),(20,'android.permission.BLUETOOTH'),(23,'android.permission.BLUETOOTH_ADMIN'),(11,'android.permission.CALL_PHONE'),(2,'android.permission.GET_TASKS'),(3,'android.permission.INTERNET'),(14,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(12,'android.permission.READ_CONTACTS'),(28,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(16,'android.permission.READ_SMS'),(27,'android.permission.RECEIVE_BOOT_COMPLETED'),(25,'android.permission.RECEIVE_SMS'),(26,'android.permission.RESTART_PACKAGES'),(9,'android.permission.SEND_SMS'),(7,'android.permission.SET_WALLPAPER'),(22,'android.permission.VIBRATE'),(13,'android.permission.WRITE_CONTACTS'),(4,'android.permission.WRITE_EXTERNAL_STORAGE'),(24,'android.permission.WRITE_SMS'),(19,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(17,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(6,'com.android.launcher.permission.INSTALL_SHORTCUT');
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
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'smsto:',NULL,NULL,NULL),(3,NULL,NULL,'smsto:',NULL,NULL,NULL),(4,NULL,NULL,'smsto:',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(7,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(8,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(9,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(10,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(11,NULL,NULL,'market://search?q=pub:ElectricSheep',NULL,NULL,NULL),(12,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(13,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(14,NULL,NULL,'market://search?q=pub:ElectricSheep',NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(16,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(17,NULL,NULL,'http://wp.me/pP0KO-9',NULL,NULL,NULL),(18,NULL,NULL,'content://com.android.contacts/data/emails',NULL,NULL,NULL),(19,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(20,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(21,NULL,NULL,'mailto:3lectricsheep@gmail.com',NULL,NULL,NULL),(22,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(23,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(24,NULL,NULL,'mailto:3lectricsheep@gmail.com',NULL,NULL,NULL),(25,NULL,NULL,'http://market.android.com/details?id=com.bingo.rom_gripper',NULL,NULL,NULL),(26,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(27,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(28,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(29,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(30,NULL,NULL,'(.*)',NULL,NULL,NULL),(31,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,19,8),(2,22,9),(3,32,13),(4,40,16),(5,45,18),(6,47,19),(7,51,20),(8,53,22),(9,59,23);
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,2,1),(7,2,3),(8,2,4),(9,2,6),(10,2,7),(11,2,8),(12,2,9),(13,2,10),(14,2,11),(15,2,12),(16,2,13),(17,2,14),(18,2,15),(19,2,17),(20,2,16),(21,2,19),(22,2,18),(23,3,1),(24,3,2),(25,3,3),(26,4,1),(27,3,21),(28,4,3),(29,3,4),(30,4,4),(31,3,20),(32,4,6),(33,3,5),(34,4,7),(35,3,23),(36,4,8),(37,3,22),(38,4,9),(39,4,10),(40,4,11),(41,4,12),(42,5,1),(43,4,13),(44,5,3),(45,5,4),(46,4,14),(47,5,6),(48,4,15),(49,4,17),(50,5,7),(51,4,16),(52,5,8),(53,4,19),(54,5,9),(55,4,18),(56,5,10),(57,5,11),(58,4,22),(59,5,12),(60,4,25),(61,4,24),(62,5,13),(63,4,26),(64,5,14),(65,5,15),(66,5,17),(67,5,16),(68,5,19),(69,5,18),(70,6,1),(71,6,3),(72,6,4),(73,6,5),(74,6,27),(75,6,28);
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

-- Dump completed on 2015-10-12  3:30:19
