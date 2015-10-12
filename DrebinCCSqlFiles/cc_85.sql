-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_85
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (6,'(.*)'),(12,'android.intent.action.BATTERY_CHANGED'),(11,'android.intent.action.BATTERY_LOW'),(7,'android.intent.action.BATTERY_OKAY'),(5,'android.intent.action.BOOT_COMPLETED'),(14,'android.intent.action.CALL'),(2,'android.intent.action.CALL_BUTTON'),(13,'android.intent.action.CHOOSER'),(16,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(4,'android.intent.action.NEW_OUTGOING_CALL'),(3,'android.intent.action.PHONE_STATE'),(10,'android.intent.action.POWER_USAGE_SUMMARY'),(18,'android.intent.action.SENDTO'),(8,'android.intent.action.VIEW'),(9,'android.settings.DISPLAY_SETTINGS'),(17,'com.sqt001.ipcall.phone.resolve'),(15,'com.szt001.ipcall.xml.resolve');
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
INSERT INTO `Applications` VALUES (1,'com.szt001.ipcall',1),(2,'com.call.about',1),(3,'com.screen.battery',3),(4,'com.manager.appinstaller',1),(5,'com.brightness.phone',2),(6,'com.brightness.phone',4),(7,'com.backup.copysms',4);
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
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.BROWSABLE'),(2,'android.intent.category.DEFAULT'),(1,'android.intent.category.LAUNCHER');
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
INSERT INTO `Classes` VALUES (1,1,'com.szt001.ipcall.activity.WelcomeActivity'),(2,1,'com.szt001.ipcall.activity.TwelveKeyDialer'),(3,1,'com.szt001.ipcall.activity.RecentCallsListActivity'),(4,1,'com.szt001.ipcall.activity.ContactsListActivity'),(5,1,'com.szt001.ipcall.activity.ChargeActivity'),(6,1,'com.szt001.ipcall.activity.CallScreenActivity'),(7,1,'com.szt001.ipcall.activity.QuickCallsListActivity'),(8,1,'com.szt001.ipcall.activity.LogActivity'),(9,1,'com.szt001.ipcall.activity.DialtactsActivity'),(10,1,'com.szt001.ipcall.activity.LoginActivity'),(11,1,'com.szt001.ipcall.activity.ModifyAccountPwdActivity'),(12,1,'com.szt001.ipcall.activity.ForgetPwdActivity'),(13,1,'com.szt001.ipcall.activity.RegisterActivity'),(14,1,'com.szt001.ipcall.activity.CustomActivity'),(15,1,'com.szt001.ipcall.activity.ChooseChargeActivity'),(16,1,'com.szt001.ipcall.activity.MoreActivity'),(17,1,'com.szt001.ipcall.service.MsgDlgActivity'),(18,1,'com.szt001.ipcall.service.StartService'),(19,1,'com.szt001.ipcall.config.MyAppService'),(20,3,'com.screen.battery.main'),(21,2,'com.call.about.main'),(22,1,'com.szt001.ipcall.service.StartReceiver'),(23,3,'com.screen.battery.Settings'),(24,2,'com.google.ads.AdActivity'),(25,2,'com.call.about.sysapp.BackgroundService'),(26,3,'com.google.ads.AdActivity'),(27,1,'com.szt001.ipcall.config.BootReceiver'),(28,2,'com.call.about.sysapp.BootReceiver'),(29,3,'com.screen.battery.MonitorService'),(30,4,'com.manager.appinstaller.main'),(31,3,'com.screen.battery.protact.DreamerService'),(32,3,'com.screen.battery.BatteryReceiver'),(33,5,'com.brightness.phone.ScreenSetting'),(34,4,'com.google.ads.AdActivity'),(35,3,'com.screen.battery.protact.BeerReceiver'),(36,4,'com.manager.appinstaller.use.AppUseService'),(37,5,'com.google.ads.AdActivity'),(38,6,'com.brightness.phone.ScreenSetting'),(39,4,'com.manager.appinstaller.use.Receiver'),(40,5,'com.brightness.phone.Setting'),(41,5,'com.brightness.phone.protact.DreamerService'),(42,6,'com.google.ads.AdActivity'),(43,5,'com.brightness.phone.Receiver'),(44,6,'com.brightness.phone.Setting'),(45,6,'com.brightness.phone.strategy.service.CelebrateService'),(46,5,'com.brightness.phone.protact.BeerReceiver'),(47,6,'com.brightness.phone.Receiver'),(48,6,'com.brightness.phone.strategy.core.RebirthReceiver'),(49,7,'com.backup.copysms.main'),(50,7,'com.backup.contacts.main'),(51,7,'com.backup.sms.main'),(52,7,'com.backup.sms.Conver'),(53,7,'com.backup.sms.MessagesActivity'),(54,7,'com.google.ads.AdActivity'),(55,7,'com.backup.copysms.strategy.service.CelebrateService'),(56,7,'com.backup.copysms.strategy.core.RebirthReceiver'),(57,2,'com.call.about.sysapp.Tools'),(58,3,'com.screen.battery.protact.Tools'),(59,4,'com.killer.Utils'),(60,6,'com.brightness.phone.strategy.service.Tools'),(61,5,'com.brightness.phone.protact.Tools'),(62,7,'com.backup.sms.SmsHandler'),(63,7,'com.backup.contacts.SmsHandler'),(64,7,'com.vcard.VCardComposer'),(65,1,'com.szt001.ipcall.activity.g'),(66,1,'com.szt001.ipcall.activity.bw'),(67,7,'com.backup.copysms.strategy.service.Tools'),(68,1,'com.szt001.ipcall.activity.ae'),(69,1,'com.szt001.ipcall.d.h'),(70,7,'com.backup.sms.main$12'),(71,1,'com.szt001.ipcall.activity.bz'),(72,7,'com.backup.sms.TaskHandler'),(73,1,'com.szt001.ipcall.activity.bf'),(74,1,'com.szt001.ipcall.service.c'),(75,1,'com.szt001.ipcall.activity.a'),(76,7,'com.backup.contacts.main$12'),(77,1,'com.szt001.ipcall.activity.aq'),(78,1,'com.szt001.ipcall.activity.ah'),(79,1,'com.szt001.ipcall.activity.bs'),(80,1,'com.szt001.ipcall.activity.br'),(81,1,'com.szt001.ipcall.service.a'),(82,1,'com.szt001.ipcall.activity.at'),(83,1,'com.szt001.ipcall.activity.cg'),(84,1,'com.szt001.ipcall.config.f'),(85,1,'com.szt001.ipcall.activity.ap'),(86,7,'com.backup.contacts.TaskHandler'),(87,7,'com.backup.sms.main$16'),(88,1,'com.szt001.ipcall.activity.x'),(89,1,'com.szt001.ipcall.activity.af'),(90,1,'com.szt001.ipcall.a.h'),(91,1,'com.szt001.ipcall.a.g'),(92,1,'com.szt001.ipcall.a.m'),(93,1,'com.szt001.ipcall.a.n'),(94,1,'com.szt001.ipcall.activity.o'),(95,1,'com.szt001.ipcall.activity.au'),(96,1,'com.szt001.ipcall.activity.y'),(97,1,'com.szt001.ipcall.activity.ar'),(98,1,'com.szt001.ipcall.activity.ch'),(99,1,'com.szt001.ipcall.activity.ag'),(100,1,'com.szt001.ipcall.a.b'),(101,1,'com.szt001.ipcall.a.t'),(102,1,'com.szt001.ipcall.a.s'),(103,1,'com.szt001.ipcall.activity.w');
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,24,'params'),(2,45,'PackageName4'),(3,36,'Description4'),(4,36,'url4'),(5,31,'Pa2ckageName3'),(6,31,'url1'),(7,25,'Pa2ckageName6'),(8,45,'Title4'),(9,24,'action'),(10,25,'De2scription9'),(11,45,'Description4'),(12,43,'params'),(13,26,'action'),(14,45,'url4'),(15,43,'com.google.ads.AdOpener'),(16,45,'filename4'),(17,25,'T6itle3'),(18,25,'filename3'),(19,24,'com.google.ads.AdOpener'),(20,25,'url5'),(21,34,'params'),(22,36,'Title4'),(23,43,'action'),(24,41,'De8scription4'),(25,41,'Pa2ckageName3'),(26,41,'url1'),(27,26,'params'),(28,41,'T7itle5'),(29,26,'com.google.ads.AdOpener'),(30,41,'filename8'),(31,37,'action'),(32,37,'params'),(33,37,'com.google.ads.AdOpener'),(34,31,'T7itle5'),(35,31,'filename8'),(36,31,'De8scription4'),(37,34,'action'),(38,36,'filename4'),(39,34,'com.google.ads.AdOpener'),(40,55,'PackageName4'),(41,55,'url4'),(42,14,'number'),(43,55,'filename4'),(44,54,'com.google.ads.AdOpener'),(45,55,'Title4'),(46,55,'Description4'),(47,54,'action'),(48,19,'filename1'),(49,6,'called_name'),(50,19,'url1'),(51,6,'called_num'),(52,53,'number'),(53,52,'filename'),(54,54,'params'),(55,53,'name'),(56,14,'id'),(57,19,'Description1'),(58,9,'number'),(59,4,'activity'),(60,14,'password'),(61,16,'number'),(62,5,'number'),(63,17,'number'),(64,2,'number'),(65,19,'PackageName1'),(66,19,'Title1');
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'s',0,NULL,NULL),(19,19,'s',0,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'r',1,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'s',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'r',1,NULL,NULL),(28,28,'r',1,NULL,NULL),(29,29,'s',0,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'s',0,NULL,NULL),(32,32,'r',1,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'r',1,NULL,NULL),(36,36,'s',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',1,NULL,NULL),(39,39,'r',1,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'s',0,NULL,NULL),(42,43,'r',1,NULL,NULL),(43,42,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'s',0,NULL,NULL),(46,46,'r',1,NULL,NULL),(47,47,'r',1,NULL,NULL),(48,48,'r',1,NULL,NULL),(49,49,'a',1,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'s',0,NULL,NULL),(56,56,'r',1,NULL,NULL),(57,65,'r',1,NULL,NULL),(58,66,'r',1,NULL,NULL),(59,68,'r',1,NULL,NULL),(60,69,'r',1,NULL,NULL),(61,71,'r',1,NULL,NULL),(62,73,'r',1,NULL,NULL),(63,74,'r',1,NULL,NULL),(64,75,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,25),(2,2,43),(3,3,24),(4,4,34),(5,5,20),(6,6,32),(7,7,20),(8,8,38),(9,9,28),(10,11,31),(11,10,30),(12,12,38),(13,13,21),(14,15,30),(15,14,21),(16,16,26),(17,17,45),(18,18,39),(19,19,48),(20,20,30),(21,21,38),(22,22,46),(23,23,33),(24,24,35),(25,25,20),(26,26,37),(27,27,20),(28,28,33),(29,29,33),(30,30,41),(31,31,51),(32,32,52),(33,33,51),(34,34,51),(35,35,50),(36,36,50),(37,37,53),(38,38,51),(39,39,56),(40,40,51),(41,41,55),(42,42,51),(43,43,51),(44,44,51),(45,45,50),(46,46,16),(47,47,10),(48,48,13),(49,49,13),(50,50,53),(51,50,52),(52,51,16),(53,51,17),(54,51,5),(55,52,53),(56,53,16),(57,54,27),(58,55,54),(59,56,5),(60,57,5),(61,57,2),(62,57,16),(63,58,51),(64,59,49),(65,60,19),(66,61,51),(67,62,16),(68,63,50),(69,64,52),(70,64,53),(71,65,16),(72,66,50),(73,67,8),(74,68,51),(75,69,16),(76,69,3),(77,69,5),(78,70,2),(79,71,14),(80,72,10),(81,73,17),(82,73,16),(83,73,5),(84,74,4),(85,75,4),(86,76,2),(87,76,14),(88,77,14),(89,77,2),(90,78,14),(91,79,15),(92,80,16),(93,81,14),(94,82,2),(95,83,2),(96,84,7),(97,85,14),(98,86,16),(99,87,4),(100,88,2),(101,89,10),(102,90,14),(103,91,11),(104,91,14),(105,91,16),(106,91,3),(107,91,2),(108,91,5),(109,91,7),(110,91,6),(111,92,4),(112,93,15),(113,94,4),(114,95,22),(115,96,14);
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,57,'<com.call.about.sysapp.Tools: android.database.Cursor getCurrentApn(android.content.Context)>',3,'p',NULL),(2,42,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(3,24,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(4,34,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(5,20,'<com.screen.battery.main: void onClick(android.view.View)>',12,'a',NULL),(6,32,'<com.screen.battery.BatteryReceiver: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(7,20,'<com.screen.battery.main: void onCreate(android.os.Bundle)>',7,'s',NULL),(8,38,'<com.brightness.phone.ScreenSetting: void onClick(android.view.View)>',64,'a',NULL),(9,28,'<com.call.about.sysapp.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(10,59,'<com.killer.Utils: void installApk(android.content.Context,java.lang.String)>',10,'a',NULL),(11,58,'<com.screen.battery.protact.Tools: android.database.Cursor getCurrentApn(android.content.Context)>',3,'p',NULL),(12,38,'<com.brightness.phone.ScreenSetting: void onCreate(android.os.Bundle)>',9,'s',NULL),(13,21,'<com.call.about.main: void onClick(android.view.View)>',10,'a',NULL),(14,21,'<com.call.about.main: void onCreate(android.os.Bundle)>',7,'s',NULL),(15,30,'<com.manager.appinstaller.main: void onCreate(android.os.Bundle)>',6,'s',NULL),(16,26,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(17,60,'<com.brightness.phone.strategy.service.Tools: android.database.Cursor getCurrentApn(android.content.Context)>',3,'p',NULL),(18,39,'<com.manager.appinstaller.use.Receiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',NULL),(19,48,'<com.brightness.phone.strategy.core.RebirthReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(20,30,'<com.manager.appinstaller.main: boolean onContextItemSelected(android.view.MenuItem)>',64,'a',NULL),(21,38,'<com.brightness.phone.ScreenSetting: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(22,46,'<com.brightness.phone.protact.BeerReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(23,33,'<com.brightness.phone.ScreenSetting: void onClick(android.view.View)>',64,'a',NULL),(24,35,'<com.screen.battery.protact.BeerReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(25,20,'<com.screen.battery.main: void onCreate(android.os.Bundle)>',17,'s',NULL),(26,37,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(27,20,'<com.screen.battery.main: void onClick(android.view.View)>',6,'a',NULL),(28,33,'<com.brightness.phone.ScreenSetting: void onCreate(android.os.Bundle)>',10,'s',NULL),(29,33,'<com.brightness.phone.ScreenSetting: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(30,61,'<com.brightness.phone.protact.Tools: android.database.Cursor getCurrentApn(android.content.Context)>',3,'p',NULL),(31,62,'<com.backup.sms.SmsHandler: int querySmsByDateAndAddress(long,java.lang.String)>',16,'p',NULL),(32,52,'<com.backup.sms.Conver: boolean onContextItemSelected(android.view.MenuItem)>',20,'a',NULL),(33,62,'<com.backup.sms.SmsHandler: void updateThread(java.lang.String,long)>',27,'p',0),(34,62,'<com.backup.sms.SmsHandler: int getSmsCount()>',4,'p',NULL),(35,63,'<com.backup.contacts.SmsHandler: int getContactsCount()>',6,'p',NULL),(36,64,'<com.vcard.VCardComposer: boolean init(java.lang.String,java.lang.String[])>',16,'p',NULL),(37,53,'<com.backup.sms.MessagesActivity: boolean onContextItemSelected(android.view.MenuItem)>',34,'a',NULL),(38,62,'<com.backup.sms.SmsHandler: long creatSMStoPhone(com.backup.sms.SmsHandler$SMS)>',38,'p',0),(39,56,'<com.backup.copysms.strategy.core.RebirthReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(40,62,'<com.backup.sms.SmsHandler: void updateThread(java.lang.String,long)>',24,'p',NULL),(41,67,'<com.backup.copysms.strategy.service.Tools: android.database.Cursor getCurrentApn(android.content.Context)>',3,'p',NULL),(42,70,'<com.backup.sms.main$12: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(43,72,'<com.backup.sms.TaskHandler: int deleteAllSms()>',4,'p',NULL),(44,62,'<com.backup.sms.SmsHandler: long creatSMStoPhone(com.backup.sms.SmsHandler$SMS)>',33,'p',NULL),(45,76,'<com.backup.contacts.main$12: void onClick(android.content.DialogInterface,int)>',32,'a',NULL),(46,77,'<com.szt001.ipcall.activity.aq: void onClick(android.view.View)>',6,'a',NULL),(47,78,'<com.szt001.ipcall.activity.ah: void onClick(android.view.View)>',6,'a',NULL),(48,79,'<com.szt001.ipcall.activity.bs: void onClick(android.view.View)>',6,'a',NULL),(49,80,'<com.szt001.ipcall.activity.br: void onClick(android.view.View)>',6,'a',NULL),(50,52,'<com.backup.sms.Conver: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',14,'a',NULL),(51,81,'<com.szt001.ipcall.service.a: void onClick(android.content.DialogInterface,int)>',13,'a',NULL),(52,53,'<com.backup.sms.MessagesActivity: boolean onContextItemSelected(android.view.MenuItem)>',19,'a',NULL),(53,82,'<com.szt001.ipcall.activity.at: void onClick(android.view.View)>',14,'a',NULL),(54,27,'<com.szt001.ipcall.config.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(55,54,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(56,5,'<com.szt001.ipcall.activity.ChargeActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',76,'a',NULL),(57,83,'<com.szt001.ipcall.activity.cg: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(58,62,'<com.backup.sms.SmsHandler: android.database.Cursor getAllSms()>',4,'p',NULL),(59,49,'<com.backup.copysms.main: void onCreate(android.os.Bundle)>',7,'s',NULL),(60,84,'<com.szt001.ipcall.config.f: java.net.HttpURLConnection d()>',40,'p',NULL),(61,72,'<com.backup.sms.TaskHandler: int deleteAllSms()>',8,'p',NULL),(62,16,'<com.szt001.ipcall.activity.MoreActivity: void e(com.szt001.ipcall.activity.MoreActivity)>',12,'a',NULL),(63,64,'<com.vcard.VCardComposer: java.lang.String createOneEntryInternal(java.lang.String)>',10,'p',NULL),(64,62,'<com.backup.sms.SmsHandler: java.lang.String getContactsNameByPhone(java.lang.String)>',13,'p',NULL),(65,85,'<com.szt001.ipcall.activity.ap: void onClick(android.view.View)>',6,'a',NULL),(66,86,'<com.backup.contacts.TaskHandler: int deleteAllContacts()>',3,'p',NULL),(67,8,'<com.szt001.ipcall.activity.LogActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',16,'a',NULL),(68,87,'<com.backup.sms.main$16: void onClick(android.content.DialogInterface,int)>',32,'a',NULL),(69,3,'<com.szt001.ipcall.activity.RecentCallsListActivity: void a(com.szt001.ipcall.activity.RecentCallsListActivity,int,int)>',36,'a',NULL),(70,2,'<com.szt001.ipcall.activity.TwelveKeyDialer: void a()>',29,'a',NULL),(71,88,'<com.szt001.ipcall.activity.x: void onClick(android.view.View)>',8,'a',NULL),(72,89,'<com.szt001.ipcall.activity.af: void onClick(android.view.View)>',6,'a',NULL),(73,81,'<com.szt001.ipcall.service.a: void onClick(android.content.DialogInterface,int)>',26,'a',NULL),(74,90,'<com.szt001.ipcall.a.h: android.database.Cursor b()>',4,'p',0),(75,91,'<com.szt001.ipcall.a.g: android.database.Cursor b()>',4,'p',0),(76,92,'<com.szt001.ipcall.a.m: java.lang.String a(android.content.Context,java.lang.String)>',9,'p',NULL),(77,93,'<com.szt001.ipcall.a.n: java.lang.String a(android.content.Context,java.lang.String)>',10,'p',NULL),(78,14,'<com.szt001.ipcall.activity.CustomActivity: void a(java.lang.String)>',38,'a',NULL),(79,94,'<com.szt001.ipcall.activity.o: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',22,'a',NULL),(80,95,'<com.szt001.ipcall.activity.au: void onClick(android.view.View)>',6,'a',NULL),(81,14,'<com.szt001.ipcall.activity.CustomActivity: boolean onKeyDown(int,android.view.KeyEvent)>',9,'a',NULL),(82,2,'<com.szt001.ipcall.activity.TwelveKeyDialer: void a()>',43,'a',NULL),(83,2,'<com.szt001.ipcall.activity.TwelveKeyDialer: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(84,7,'<com.szt001.ipcall.activity.QuickCallsListActivity: void a(int)>',39,'a',NULL),(85,96,'<com.szt001.ipcall.activity.y: void onClick(android.view.View)>',7,'a',NULL),(86,97,'<com.szt001.ipcall.activity.ar: void onClick(android.view.View)>',13,'a',NULL),(87,4,'<com.szt001.ipcall.activity.ContactsListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(88,98,'<com.szt001.ipcall.activity.ch: void onClick(android.view.View)>',7,'a',NULL),(89,99,'<com.szt001.ipcall.activity.ag: void onClick(android.view.View)>',6,'a',NULL),(90,14,'<com.szt001.ipcall.activity.CustomActivity: void a()>',4,'r',NULL),(91,100,'<com.szt001.ipcall.a.b: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(92,101,'<com.szt001.ipcall.a.t: java.lang.String a(int)>',14,'p',NULL),(93,94,'<com.szt001.ipcall.activity.o: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(94,102,'<com.szt001.ipcall.a.s: void c()>',16,'p',NULL),(95,22,'<com.szt001.ipcall.service.StartReceiver: void onReceive(android.content.Context,android.content.Intent)>',25,'r',NULL),(96,103,'<com.szt001.ipcall.activity.w: void onClick(android.view.View)>',18,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,6),(2,2,6),(3,4,6),(4,3,8),(5,5,8),(6,7,6),(7,8,8),(8,9,6),(9,11,6),(10,13,9),(11,15,8),(12,17,10),(13,20,6),(14,23,8),(15,24,13),(16,26,6),(17,28,13),(18,29,13),(19,30,9),(20,32,13),(21,33,13),(22,35,13),(23,36,6),(24,37,13),(25,38,10),(26,39,13),(27,40,8),(28,41,6),(29,44,14),(30,45,14),(31,46,14),(32,47,14),(33,50,13),(34,51,13),(35,53,13),(36,54,13),(37,56,13),(38,57,13),(39,59,13),(40,60,13),(41,64,13),(42,65,8),(43,66,13),(44,67,13),(45,68,13),(46,69,13),(47,70,13),(48,71,13),(49,72,13),(50,74,6),(51,75,8),(52,76,8),(53,77,8),(54,78,6),(55,79,16),(56,81,14),(57,83,13),(58,84,13),(59,85,13),(60,86,13),(61,87,13),(62,88,13),(63,89,13),(64,90,13),(65,91,13),(66,92,13),(67,93,13),(68,94,13),(69,95,13),(70,96,13),(71,97,13),(72,98,13),(73,104,14),(74,106,8),(75,114,18),(76,118,15),(77,121,17);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,1,3),(2,2,3),(3,3,3),(4,4,3),(5,5,3),(6,8,3),(7,7,3),(8,9,3),(9,11,3),(10,20,3),(11,23,3),(12,26,3),(13,36,3),(14,40,3),(15,41,3),(16,74,3),(17,76,3),(18,78,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,6,'com/screen/battery/Settings'),(2,10,'com/screen/battery/MonitorService'),(3,12,'com/screen/battery/protact/DreamerService'),(4,14,'com/call/about/sysapp/BackgroundService'),(5,16,'com/brightness/phone/strategy/service/CelebrateService'),(6,18,'com/call/about/sysapp/BackgroundService'),(7,19,'com/manager/appinstaller/use/AppUseService'),(8,21,'com/manager/appinstaller/use/AppUseService'),(9,22,'com/brightness/phone/strategy/service/CelebrateService'),(10,25,'com/brightness/phone/Setting'),(11,27,'com/brightness/phone/protact/DreamerService'),(12,31,'com/screen/battery/protact/DreamerService'),(13,34,'com/screen/battery/MonitorService'),(14,42,'com/brightness/phone/protact/DreamerService'),(15,43,'com/brightness/phone/Setting'),(16,48,'com/backup/copysms/strategy/service/CelebrateService'),(17,49,'com/backup/sms/Conver'),(18,52,'com/szt001/ipcall/activity/ForgetPwdActivity'),(19,55,'com/szt001/ipcall/activity/ForgetPwdActivity'),(20,58,'com/szt001/ipcall/activity/DialtactsActivity'),(21,61,'com/szt001/ipcall/activity/LoginActivity'),(22,63,'com/szt001/ipcall/activity/CallScreenActivity'),(23,62,'com/backup/sms/MessagesActivity'),(24,73,'com/szt001/ipcall/config/MyAppService'),(25,80,'com/backup/copysms/strategy/service/CelebrateService'),(26,82,'com/szt001/ipcall/activity/ModifyAccountPwdActivity'),(27,99,'com/szt001/ipcall/activity/CallScreenActivity'),(28,100,'com/szt001/ipcall/activity/CallScreenActivity'),(29,101,'com/szt001/ipcall/activity/LogActivity'),(30,102,'com/szt001/ipcall/activity/DialtactsActivity'),(31,103,'com/szt001/ipcall/activity/RegisterActivity'),(32,105,'com/szt001/ipcall/activity/CallScreenActivity'),(33,107,'com/szt001/ipcall/activity/LoginActivity'),(34,108,'com/szt001/ipcall/activity/DialtactsActivity'),(35,109,'com/szt001/ipcall/activity/CallScreenActivity'),(36,110,'com/szt001/ipcall/activity/LogActivity'),(37,111,'com/szt001/ipcall/activity/CallScreenActivity'),(38,112,'com/szt001/ipcall/activity/CallScreenActivity'),(39,113,'com/szt001/ipcall/activity/ContactsListActivity'),(40,115,'com/szt001/ipcall/activity/QuickCallsListActivity'),(41,116,'com/szt001/ipcall/activity/ContactsListActivity'),(42,117,'com/szt001/ipcall/activity/DialtactsActivity'),(43,119,'com/szt001/ipcall/activity/LoginActivity'),(44,120,'com/szt001/ipcall/activity/ChargeActivity'),(45,122,'com/szt001/ipcall/activity/DialtactsActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,2),(2,2,3),(3,3,4),(4,4,5),(5,5,6),(6,8,7),(7,7,8),(8,9,9),(9,11,10),(10,15,12),(11,20,14),(12,23,15),(13,26,16),(14,36,17),(15,40,18),(16,41,19),(17,44,22),(18,45,23),(19,46,27),(20,47,28),(21,65,33),(22,74,34),(23,75,35),(24,76,36),(25,77,37),(26,78,38),(27,79,40),(28,81,44),(29,104,47),(30,106,50),(31,114,51);
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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,24,'android.intent.extra.INTENT'),(2,28,'android.intent.extra.INTENT'),(3,29,'android.intent.extra.TITLE'),(4,29,'android.intent.extra.INTENT'),(5,32,'android.intent.extra.INTENT'),(6,33,'android.intent.extra.TITLE'),(7,33,'android.intent.extra.INTENT'),(8,35,'android.intent.extra.INTENT'),(9,37,'android.intent.extra.TITLE'),(10,37,'android.intent.extra.INTENT'),(11,39,'android.intent.extra.TITLE'),(12,39,'android.intent.extra.INTENT'),(13,49,'filename'),(14,50,'android.intent.extra.INTENT'),(15,51,'android.intent.extra.INTENT'),(16,53,'android.intent.extra.TITLE'),(17,53,'android.intent.extra.INTENT'),(18,54,'android.intent.extra.INTENT'),(19,56,'android.intent.extra.TITLE'),(20,56,'android.intent.extra.INTENT'),(21,57,'android.intent.extra.INTENT'),(22,59,'android.intent.extra.TITLE'),(23,59,'android.intent.extra.INTENT'),(24,60,'android.intent.extra.TITLE'),(25,60,'android.intent.extra.INTENT'),(26,62,'name'),(27,63,'called_num'),(28,62,'number'),(29,64,'android.intent.extra.INTENT'),(30,66,'android.intent.extra.INTENT'),(31,67,'android.intent.extra.TITLE'),(32,67,'android.intent.extra.INTENT'),(33,68,'android.intent.extra.INTENT'),(34,69,'android.intent.extra.TITLE'),(35,69,'android.intent.extra.INTENT'),(36,70,'android.intent.extra.INTENT'),(37,71,'android.intent.extra.TITLE'),(38,71,'android.intent.extra.INTENT'),(39,72,'android.intent.extra.TITLE'),(40,72,'android.intent.extra.INTENT'),(41,83,'android.intent.extra.INTENT'),(42,84,'android.intent.extra.INTENT'),(43,85,'android.intent.extra.INTENT'),(44,86,'android.intent.extra.TITLE'),(45,86,'android.intent.extra.INTENT'),(46,87,'android.intent.extra.INTENT'),(47,88,'android.intent.extra.INTENT'),(48,89,'android.intent.extra.TITLE'),(49,89,'android.intent.extra.INTENT'),(50,90,'android.intent.extra.TITLE'),(51,90,'android.intent.extra.INTENT'),(52,91,'android.intent.extra.INTENT'),(53,92,'android.intent.extra.INTENT'),(54,93,'android.intent.extra.TITLE'),(55,93,'android.intent.extra.INTENT'),(56,94,'android.intent.extra.TITLE'),(57,94,'android.intent.extra.INTENT'),(58,95,'android.intent.extra.INTENT'),(59,96,'android.intent.extra.TITLE'),(60,97,'android.intent.extra.TITLE'),(61,96,'android.intent.extra.INTENT'),(62,97,'android.intent.extra.INTENT'),(63,98,'android.intent.extra.TITLE'),(64,99,'called_num'),(65,98,'android.intent.extra.INTENT'),(66,99,'called_name'),(67,100,'called_num'),(68,105,'called_num'),(69,105,'called_name'),(70,109,'called_num'),(71,109,'called_name'),(72,111,'called_num'),(73,111,'called_name'),(74,112,'called_num'),(75,113,'activity'),(76,114,'sms_body'),(77,116,'activity'),(78,118,'msg'),(79,120,'chargeType'),(80,121,'number'),(81,121,'msg');
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
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,1),(5,5,3),(6,6,4),(7,7,3),(8,7,5),(9,8,5),(10,8,3),(11,9,1),(12,10,5),(13,11,1),(14,12,3),(15,12,5),(16,13,1),(17,14,3),(18,15,5),(19,16,3),(20,16,5),(21,17,5),(22,18,5),(23,18,3),(24,19,1),(25,20,5),(26,20,3),(27,21,7),(28,22,11),(29,23,12),(30,24,15),(31,25,15),(32,26,15),(33,27,15),(34,28,15),(35,29,15),(36,30,15),(37,31,15),(38,32,15),(39,33,15),(40,34,15),(41,35,15),(42,36,15),(43,37,15),(44,38,15),(45,39,15),(46,40,15),(47,41,15),(48,42,15),(49,43,15),(50,44,15),(51,45,15),(52,46,15),(53,47,15),(54,48,15),(55,49,15),(56,50,15),(57,51,15),(58,52,15),(59,53,15),(60,54,15),(61,55,15),(62,56,15),(63,57,15),(64,58,15),(65,59,15),(66,60,15),(67,61,15),(68,62,15),(69,63,15),(70,64,15),(71,65,15),(72,66,15),(73,67,15),(74,68,15),(75,69,15),(76,70,15),(77,71,15),(78,72,15),(79,73,15),(80,74,15),(81,75,15),(82,76,15),(83,77,15),(84,78,15),(85,79,15),(86,80,15),(87,81,15),(88,82,15),(89,83,15),(90,84,15),(91,85,15),(92,86,15),(93,87,15),(94,88,15),(95,89,15),(96,90,15),(97,91,15),(98,92,15),(99,93,15),(100,94,3),(101,95,17),(102,96,15),(103,97,15),(104,98,15),(105,99,15),(106,100,15),(107,101,15),(108,102,15),(109,103,15),(110,104,15),(111,105,15),(112,106,15),(113,107,15),(114,108,15),(115,109,15),(116,110,15),(117,111,15),(118,112,15),(119,113,15),(120,114,15),(121,115,15);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,1),(5,7,2),(6,8,2),(7,9,1),(8,11,1),(9,12,2),(10,13,1),(11,14,2),(12,16,2),(13,18,2),(14,19,1),(15,20,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,7,'(.*)','(.*)'),(2,9,'(.*)','(.*)'),(3,11,'(.*)','(.*)'),(4,15,'application','vnd.android.package-archive'),(5,26,'(.*)','(.*)'),(6,41,'(.*)','(.*)'),(7,78,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,6,'com.screen.battery'),(2,10,'com.screen.battery'),(3,12,'com.screen.battery'),(4,14,'com.call.about'),(5,16,'com.brightness.phone'),(6,18,'com.call.about'),(7,19,'com.manager.appinstaller'),(8,21,'com.manager.appinstaller'),(9,22,'com.brightness.phone'),(10,25,'com.brightness.phone'),(11,27,'com.brightness.phone'),(12,31,'com.screen.battery'),(13,34,'com.screen.battery'),(14,42,'com.brightness.phone'),(15,43,'com.brightness.phone'),(16,48,'com.backup.copysms'),(17,49,'com.backup.copysms'),(18,52,'com.szt001.ipcall'),(19,55,'com.szt001.ipcall'),(20,58,'com.szt001.ipcall'),(21,61,'com.szt001.ipcall'),(22,63,'com.szt001.ipcall'),(23,62,'com.backup.copysms'),(24,73,'com.szt001.ipcall'),(25,80,'com.backup.copysms'),(26,82,'com.szt001.ipcall'),(27,99,'com.szt001.ipcall'),(28,100,'com.szt001.ipcall'),(29,101,'com.szt001.ipcall'),(30,102,'com.szt001.ipcall'),(31,103,'com.szt001.ipcall'),(32,105,'com.szt001.ipcall'),(33,107,'com.szt001.ipcall'),(34,108,'com.szt001.ipcall'),(35,109,'com.szt001.ipcall'),(36,110,'com.szt001.ipcall'),(37,111,'com.szt001.ipcall'),(38,112,'com.szt001.ipcall'),(39,113,'com.szt001.ipcall'),(40,115,'com.szt001.ipcall'),(41,116,'com.szt001.ipcall'),(42,117,'com.szt001.ipcall'),(43,119,'com.szt001.ipcall'),(44,120,'com.szt001.ipcall'),(45,122,'com.szt001.ipcall');
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
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,1,0),(3,20,0),(4,21,0),(5,22,0),(6,22,0),(7,28,0),(8,27,0),(9,30,0),(10,32,0),(11,33,0),(12,35,0),(13,38,0),(14,39,0),(15,42,0),(16,46,0),(17,47,0),(18,48,0),(19,49,0),(20,56,0),(21,32,0),(22,32,0),(23,32,0),(24,57,0),(25,27,0),(26,58,0),(27,59,0),(28,60,0),(29,61,0),(30,62,0),(31,63,0),(32,64,0),(33,22,0),(34,57,0),(35,27,0),(36,58,0),(37,59,0),(38,60,0),(39,61,0),(40,62,0),(41,63,0),(42,64,0),(43,22,0),(44,57,0),(45,27,0),(46,58,0),(47,59,0),(48,60,0),(49,61,0),(50,62,0),(51,63,0),(52,64,0),(53,22,0),(54,57,0),(55,27,0),(56,58,0),(57,59,0),(58,60,0),(59,61,0),(60,62,0),(61,63,0),(62,64,0),(63,22,0),(64,57,0),(65,27,0),(66,58,0),(67,59,0),(68,60,0),(69,61,0),(70,62,0),(71,63,0),(72,64,0),(73,22,0),(74,57,0),(75,27,0),(76,58,0),(77,59,0),(78,60,0),(79,61,0),(80,62,0),(81,63,0),(82,64,0),(83,22,0),(84,57,0),(85,27,0),(86,58,0),(87,59,0),(88,60,0),(89,61,0),(90,62,0),(91,63,0),(92,64,0),(93,22,0),(94,60,0),(95,63,0),(96,57,0),(97,27,0),(98,58,0),(99,59,0),(100,60,0),(101,61,0),(102,62,0),(103,63,0),(104,64,0),(105,22,0),(106,57,0),(107,27,0),(108,58,0),(109,59,0),(110,60,0),(111,61,0),(112,62,0),(113,63,0),(114,64,0),(115,22,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,2,1,0),(2,3,1,0),(3,3,1,0),(4,4,1,0),(5,2,1,0),(6,5,0,0),(7,3,1,0),(8,4,1,0),(9,2,1,0),(10,6,0,0),(11,4,1,0),(12,7,0,0),(13,8,1,0),(14,9,0,0),(15,10,1,0),(16,12,0,0),(17,13,1,0),(18,14,0,0),(19,15,0,0),(20,16,1,0),(21,18,0,0),(22,19,0,0),(23,16,1,0),(24,20,1,0),(25,21,0,0),(26,16,1,0),(27,22,0,0),(28,20,1,0),(29,20,1,0),(30,23,1,0),(31,24,0,0),(32,20,1,0),(33,20,1,0),(34,25,0,0),(35,20,1,0),(36,26,1,0),(37,20,1,0),(38,27,1,0),(39,20,1,0),(40,26,1,0),(41,26,1,0),(42,28,0,0),(43,29,0,0),(44,32,1,0),(45,32,1,0),(46,37,1,0),(47,37,1,0),(48,39,0,0),(49,42,0,0),(50,45,1,0),(51,45,1,0),(52,46,0,0),(53,45,1,0),(54,45,1,0),(55,47,0,0),(56,45,1,0),(57,45,1,0),(58,48,0,0),(59,45,1,0),(60,45,1,0),(61,49,0,0),(62,50,0,0),(63,51,0,0),(64,52,1,0),(65,53,1,0),(66,52,1,0),(67,52,1,0),(68,52,1,0),(69,52,1,0),(70,52,1,0),(71,52,1,0),(72,52,1,0),(73,54,0,0),(74,55,1,0),(75,56,1,0),(76,55,1,0),(77,56,1,0),(78,55,1,0),(79,57,1,0),(80,59,0,0),(81,62,1,0),(82,65,0,0),(83,67,1,0),(84,67,1,0),(85,68,1,0),(86,67,1,0),(87,68,1,0),(88,67,1,0),(89,68,1,0),(90,67,1,0),(91,68,1,0),(92,67,1,0),(93,68,1,0),(94,67,1,0),(95,68,1,0),(96,67,1,0),(97,68,1,0),(98,68,1,0),(99,69,0,0),(100,69,0,0),(101,70,0,0),(102,71,0,0),(103,72,0,0),(104,73,1,0),(105,78,0,0),(106,79,1,0),(107,80,0,0),(108,81,0,0),(109,82,0,0),(110,83,0,0),(111,84,0,0),(112,84,0,0),(113,85,0,0),(114,86,1,0),(115,87,0,0),(116,88,0,0),(117,89,0,0),(118,90,1,0),(119,91,0,0),(120,93,0,0),(121,95,1,0),(122,96,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (12,'android.permission.ACCESS_NETWORK_STATE'),(3,'android.permission.ACCESS_WIFI_STATE'),(5,'android.permission.CALL_PHONE'),(13,'android.permission.CHANGE_CONFIGURATION'),(15,'android.permission.DELETE_CACHE_FILES'),(20,'android.permission.GET_ACCOUNTS'),(14,'android.permission.GET_TASKS'),(10,'android.permission.INTERNET'),(17,'android.permission.KILL_BACKGROUND_PROCESSES'),(9,'android.permission.MODIFY_PHONE_STATE'),(7,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(2,'android.permission.PROCESS_OUTGOING_CALLS'),(4,'android.permission.READ_CONTACTS'),(6,'android.permission.READ_PHONE_STATE'),(19,'android.permission.READ_SMS'),(8,'android.permission.RECEIVE_BOOT_COMPLETED'),(16,'android.permission.RESTART_PACKAGES'),(11,'android.permission.VIBRATE'),(23,'android.permission.WAKE_LOCK'),(22,'android.permission.WRITE_CONTACTS'),(1,'android.permission.WRITE_EXTERNAL_STORAGE'),(18,'android.permission.WRITE_SETTINGS'),(21,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'(.*)',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(12,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(13,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(21,NULL,NULL,'content://sms',NULL,NULL,NULL),(22,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(23,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(24,NULL,NULL,'content://sms',NULL,NULL,NULL),(25,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(26,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(27,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(28,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(29,NULL,NULL,'content://sms',NULL,NULL,NULL),(30,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(31,NULL,NULL,'content://mms',NULL,NULL,NULL),(32,NULL,NULL,'content://sms',NULL,NULL,NULL),(33,NULL,NULL,'http://pay.sztone.com/billing/billing.aspx?uid=(.*)&pwd=(.*)',NULL,NULL,NULL),(34,NULL,NULL,'(.*)',NULL,NULL,NULL),(35,NULL,NULL,'http://pay.sztone.com/czwap/r.aspx?userid=',NULL,NULL,NULL),(36,NULL,NULL,'(.*)',NULL,NULL,NULL),(37,NULL,NULL,'http://pay.sztone.com/czwap/r.aspx?userid=(.*)',NULL,NULL,NULL),(38,NULL,NULL,'(.*)',NULL,NULL,NULL),(39,NULL,NULL,'content://sms',NULL,NULL,NULL),(40,NULL,NULL,'package:com.newding.ipcall',NULL,NULL,NULL),(41,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(42,NULL,NULL,'content://sms',NULL,NULL,NULL),(43,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(44,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(45,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(46,NULL,NULL,'content://com.android.contacts/raw_contacts',NULL,NULL,NULL),(47,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(48,NULL,NULL,'content://com.android.contacts/phone_lookup',NULL,NULL,NULL),(49,NULL,NULL,'content://contacts/phones/filter',NULL,NULL,NULL),(50,NULL,NULL,'http://pay.sztone.com/czwap/r.aspx?userid=(.*)',NULL,NULL,NULL),(51,NULL,NULL,'smsto:',NULL,NULL,NULL),(52,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(53,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,1,1),(2,11,11),(3,17,13),(4,30,20),(5,31,21),(6,34,24),(7,35,25),(8,36,26),(9,40,29),(10,41,30),(11,43,31),(12,44,32),(13,58,39),(14,60,41),(15,61,42),(16,63,43),(17,64,45),(18,66,46),(19,76,48),(20,77,49),(21,92,52),(22,94,53);
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,2,17),(15,2,16),(16,2,6),(17,2,8),(18,3,6),(19,3,8),(20,2,10),(21,3,10),(22,2,12),(23,3,11),(24,2,14),(25,3,12),(26,2,15),(27,4,1),(28,4,6),(29,5,18),(30,4,10),(31,5,6),(32,4,12),(33,5,8),(34,5,10),(35,6,19),(36,5,12),(37,6,18),(38,6,4),(39,6,20),(40,6,6),(41,6,8),(42,6,10),(43,6,12),(44,7,1),(45,7,19),(46,7,21),(47,7,4),(48,7,5),(49,7,20),(50,7,23),(51,7,6),(52,7,22),(53,7,8),(54,7,10),(55,7,12);
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

-- Dump completed on 2015-10-09  0:41:13
