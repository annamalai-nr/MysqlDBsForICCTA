-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_81
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
INSERT INTO `ActionStrings` VALUES (5,'(.*)'),(4,'android.appwidget.action.APPWIDGET_UPDATE'),(3,'android.intent.action.BOOT_COMPLETED'),(17,'android.intent.action.CALL'),(7,'android.intent.action.CHOOSER'),(10,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(2,'android.intent.action.PHONE_STATE'),(8,'android.intent.action.POWER_USAGE_SUMMARY'),(12,'android.intent.action.RINGTONE_PICKER'),(15,'android.intent.action.SCREEN_OFF'),(9,'android.intent.action.SCREEN_ON'),(18,'android.intent.action.SENDTO'),(6,'android.intent.action.VIEW'),(13,'android.media.RINGER_MODE_CHANGED'),(11,'android.settings.APPLICATION_DETAILS_SETTINGS'),(14,'android.settings.SOUND_SETTINGS'),(16,'android.view.InputMethod');
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
INSERT INTO `Applications` VALUES (1,'com.transform.converter',1),(2,'com.socialnmobile.super.flashlight',28),(3,'com.quick.task',1),(4,'com.getinfo.phone',1),(5,'com.sound.adjustment',2),(6,'com.file.phoneset',4),(7,'com.jinshou.jsinputmethod',13);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.BROWSABLE'),(2,'android.intent.category.DEFAULT'),(4,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.transform.converter.ConverterActivity'),(2,2,'com.socialnmobile.flashlight.Flashlight'),(3,1,'com.google.ads.AdActivity'),(4,1,'com.transform.converter.strategy.service.CelebrateService'),(5,2,'com.admob.android.ads.AdMobActivity'),(6,1,'com.transform.converter.strategy.core.RebirthReceiver'),(7,2,'com.passionteam.lightdd.CoreService'),(8,2,'com.passionteam.lightdd.Receiver'),(9,3,'com.quick.task.main'),(10,3,'com.quick.task.Settings'),(11,3,'com.google.ads.AdActivity'),(12,3,'com.quick.task.KillService'),(13,4,'com.getinfo.phone.main'),(14,3,'com.quick.task.protact.DreamerService'),(15,3,'com.quick.task.Receiver'),(16,5,'com.sound.adjustment.SoundSetting'),(17,4,'com.google.ads.AdActivity'),(18,3,'com.quick.task.ExampleAppWidgetProvider'),(19,4,'com.getinfo.phone.protact.DreamerService'),(20,5,'com.google.ads.AdActivity'),(21,4,'com.getinfo.phone.protact.BeerReceiver'),(22,5,'com.sound.adjustment.Setting'),(23,3,'com.quick.task.protact.BeerReceiver'),(24,5,'com.sound.adjustment.protact.DreamerService'),(25,6,'com.file.phoneset.main'),(26,5,'com.sound.adjustment.Receiver'),(27,5,'com.sound.adjustment.protact.BeerReceiver'),(28,6,'com.google.ads.AdActivity'),(29,6,'com.file.phoneset.strategy.service.CelebrateService'),(30,6,'com.file.phoneset.strategy.core.RebirthReceiver'),(31,1,'com.transform.converter.strategy.service.Tools'),(32,6,'com.file.phoneset.Utils'),(33,6,'com.file.phoneset.strategy.service.Tools'),(34,4,'com.getinfo.phone.protact.Tools'),(35,5,'com.sound.adjustment.NetworkStateReceiver'),(36,3,'com.quick.task.protact.Tools'),(37,2,'com.socialnmobile.lib.ui.AboutDialog$1'),(38,5,'com.sound.adjustment.protact.Tools'),(39,2,'com.socialnmobile.flashlight.Flashlight$13'),(40,2,'com.admob.android.ads.q'),(41,7,'com.jinshou.jsinputmethod.SettingsActivity'),(42,7,'com.jinshou.jsinputmethod.MyActivity'),(43,7,'com.jinshou.jsinputmethod.MyActivity4'),(44,7,'com.jinshou.jsinputmethod.MyActivity1'),(45,7,'com.jinshou.jsinputmethod.MyActivity2'),(46,7,'com.jinshou.jsinputmethod.MyActivity3'),(47,7,'com.jinshou.jsinputmethod.MyActivity6'),(48,7,'com.jinshou.jsinputmethod.MyActivity5'),(49,7,'com.jinshou.jsinputmethod.JSInputMethod'),(50,7,'com.strategy.service.CelebrateService'),(51,7,'com.strategy.core.RebirthReceiver'),(52,7,'com.jinshou.jsinputmethod.MyActivity3$9'),(53,7,'com.jinshou.jsinputmethod.MyActivity3$3'),(54,7,'com.strategy.b.a'),(55,7,'com.jinshou.jsinputmethod.MyActivity5$3'),(56,7,'com.jinshou.jsinputmethod.MyActivity6$4'),(57,7,'com.jinshou.jsinputmethod.MyActivity3$6'),(58,7,'com.jinshou.jsinputmethod.MyActivity$1'),(59,7,'com.jinshou.jsinputmethod.MyActivity$18'),(60,7,'com.jinshou.jsinputmethod.MyActivity5$1'),(61,7,'com.jinshou.jsinputmethod.HttpEngine');
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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,4,'PackageName4'),(2,4,'filename4'),(3,3,'params'),(4,3,'com.google.ads.AdOpener'),(5,4,'url4'),(6,4,'Title4'),(7,3,'action'),(8,4,'Description4'),(9,28,'params'),(10,29,'Title4'),(11,29,'url4'),(12,29,'filename4'),(13,17,'action'),(14,19,'De8scription4'),(15,19,'url1'),(16,17,'params'),(17,29,'PackageName4'),(18,17,'com.google.ads.AdOpener'),(19,19,'Pa2ckageName3'),(20,29,'Description4'),(21,19,'T7itle5'),(22,28,'com.google.ads.AdOpener'),(23,28,'action'),(24,19,'filename8'),(25,14,'Pa2ckageName3'),(26,11,'action'),(27,21,'params'),(28,24,'filename8'),(29,16,'android.intent.extra.ringtone.PICKED_URI'),(30,14,'url1'),(31,21,'com.google.ads.AdOpener'),(32,24,'T7itle5'),(33,5,'si'),(34,7,'filename2'),(35,5,'oi'),(36,5,'sku'),(37,11,'com.google.ads.AdOpener'),(38,5,'t'),(39,14,'T7itle5'),(40,7,'url2'),(41,14,'filename8'),(42,5,'cbo'),(43,5,'c'),(44,24,'Pa2ckageName3'),(45,5,'o'),(46,5,'u'),(47,5,'json'),(48,24,'url1'),(49,11,'params'),(50,24,'De8scription4'),(51,12,'screen'),(52,21,'action'),(53,2,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(54,7,'Title2'),(55,5,'skd'),(56,5,'msm'),(57,5,'rd'),(58,7,'PackageName2'),(59,7,'Description2'),(60,5,'cs'),(61,14,'De8scription4'),(62,5,'$'),(63,5,'au'),(64,5,'ru'),(65,5,'mi'),(66,5,'s'),(67,2,'ADMOB_PUBLISHER_ID'),(68,2,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(69,5,'a'),(70,5,'sc'),(71,5,'b'),(72,5,'ad'),(73,5,'nosk'),(74,5,'int'),(75,5,'ap'),(76,5,'p'),(77,5,'or'),(78,5,'tr'),(79,5,'su'),(80,5,'sd'),(81,5,'sin'),(82,41,'Title4'),(83,41,'filename4'),(84,41,'url4'),(85,41,'Description4'),(86,41,'PackageName4');
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'s',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'r',1,NULL,NULL),(7,7,'s',0,NULL,NULL),(8,8,'r',1,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'s',0,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'s',0,NULL,NULL),(15,15,'r',1,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'r',1,NULL,NULL),(19,19,'s',0,NULL,NULL),(20,21,'r',1,NULL,NULL),(21,20,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'r',1,NULL,NULL),(24,24,'s',0,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'r',1,NULL,NULL),(27,27,'r',1,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'s',0,NULL,NULL),(30,30,'r',1,NULL,NULL),(31,35,'r',1,NULL,NULL),(32,41,'a',0,NULL,NULL),(33,42,'a',1,NULL,NULL),(34,43,'a',1,NULL,NULL),(35,44,'a',0,NULL,NULL),(36,45,'a',0,NULL,NULL),(37,46,'a',0,NULL,NULL),(38,47,'a',0,NULL,NULL),(39,48,'a',0,NULL,NULL),(40,49,'s',1,16,NULL),(41,50,'s',0,NULL,NULL),(42,51,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,6),(3,3,4),(4,4,3),(5,5,25),(6,6,30),(7,7,25),(8,8,25),(9,9,28),(10,10,25),(11,11,13),(12,12,29),(13,13,9),(14,14,13),(15,15,23),(16,16,19),(17,17,9),(18,18,17),(19,19,9),(20,20,16),(21,21,15),(22,22,20),(23,23,15),(24,24,16),(25,25,14),(26,26,9),(27,27,21),(28,28,15),(29,29,9),(30,30,16),(31,31,2),(32,32,27),(33,33,15),(34,34,24),(35,35,2),(36,36,11),(37,37,16),(38,38,2),(39,39,2),(40,40,9),(41,41,9),(42,42,8),(43,43,40),(44,44,37),(45,45,37),(46,46,37),(47,47,33),(48,48,38),(49,49,40),(50,50,41),(51,51,33),(52,52,33),(53,53,42),(54,54,38),(55,55,33),(56,56,39),(57,57,38),(58,58,37),(59,59,33),(60,60,33),(61,61,37),(62,62,37),(63,63,33),(64,64,33),(65,65,34),(66,66,39),(67,67,33),(68,68,40),(69,69,40),(70,70,37),(71,71,33),(72,72,38),(73,73,34),(74,74,38),(75,74,40),(76,75,35),(77,76,33),(78,77,40);
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
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<com.transform.converter.ConverterActivity: void onCreate(android.os.Bundle)>',6,'s',NULL),(2,6,'<com.transform.converter.strategy.core.RebirthReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(3,31,'<com.transform.converter.strategy.service.Tools: android.database.Cursor getCurrentApn(android.content.Context)>',3,'p',NULL),(4,3,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(5,25,'<com.file.phoneset.main: void onCreate(android.os.Bundle)>',7,'s',NULL),(6,30,'<com.file.phoneset.strategy.core.RebirthReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(7,32,'<com.file.phoneset.Utils: void installApk(android.content.Context,java.io.File)>',8,'a',NULL),(8,25,'<com.file.phoneset.main: boolean onContextItemSelected(android.view.MenuItem)>',26,'a',NULL),(9,28,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(10,25,'<com.file.phoneset.main: void handlerFileClick(java.io.File)>',19,'a',NULL),(11,13,'<com.getinfo.phone.main: void onClick(android.view.View)>',10,'a',NULL),(12,33,'<com.file.phoneset.strategy.service.Tools: android.database.Cursor getCurrentApn(android.content.Context)>',3,'p',NULL),(13,9,'<com.quick.task.main: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(14,13,'<com.getinfo.phone.main: void onCreate(android.os.Bundle)>',7,'s',NULL),(15,23,'<com.quick.task.protact.BeerReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(16,34,'<com.getinfo.phone.protact.Tools: android.database.Cursor getCurrentApn(android.content.Context)>',3,'p',NULL),(17,9,'<com.quick.task.main: boolean onContextItemSelected(android.view.MenuItem)>',67,'a',NULL),(18,17,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(19,9,'<com.quick.task.main: boolean onContextItemSelected(android.view.MenuItem)>',31,'a',NULL),(20,16,'<com.sound.adjustment.SoundSetting: void doPickRingtone(int)>',12,'a',NULL),(21,15,'<com.quick.task.Receiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(22,21,'<com.getinfo.phone.protact.BeerReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(23,15,'<com.quick.task.Receiver: void onReceive(android.content.Context,android.content.Intent)>',23,'s',NULL),(24,16,'<com.sound.adjustment.SoundSetting: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(25,36,'<com.quick.task.protact.Tools: android.database.Cursor getCurrentApn(android.content.Context)>',3,'p',NULL),(26,9,'<com.quick.task.main: boolean onContextItemSelected(android.view.MenuItem)>',51,'a',NULL),(27,20,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(28,15,'<com.quick.task.Receiver: void onReceive(android.content.Context,android.content.Intent)>',40,'s',NULL),(29,9,'<com.quick.task.main: boolean onContextItemSelected(android.view.MenuItem)>',19,'a',NULL),(30,16,'<com.sound.adjustment.SoundSetting: void onClick(android.view.View)>',59,'a',NULL),(31,37,'<com.socialnmobile.lib.ui.AboutDialog$1: void onClick(android.view.View)>',17,'a',NULL),(32,27,'<com.sound.adjustment.protact.BeerReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(33,15,'<com.quick.task.Receiver: void onReceive(android.content.Context,android.content.Intent)>',32,'s',NULL),(34,38,'<com.sound.adjustment.protact.Tools: android.database.Cursor getCurrentApn(android.content.Context)>',3,'p',NULL),(35,39,'<com.socialnmobile.flashlight.Flashlight$13: void onClick(android.view.View)>',9,'a',NULL),(36,11,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(37,16,'<com.sound.adjustment.SoundSetting: void onCreate(android.os.Bundle)>',8,'s',NULL),(38,2,'<com.socialnmobile.flashlight.Flashlight: void onCreate(android.os.Bundle)>',5,'s',NULL),(39,40,'<com.admob.android.ads.q: void a(android.content.Context)>',11,'a',0),(40,9,'<com.quick.task.main: void onCreate(android.os.Bundle)>',11,'s',NULL),(41,9,'<com.quick.task.main: void onCreate(android.os.Bundle)>',6,'s',NULL),(42,8,'<com.passionteam.lightdd.Receiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',NULL),(43,49,'<com.jinshou.jsinputmethod.JSInputMethod: void ReadSendBox()>',11,'p',NULL),(44,52,'<com.jinshou.jsinputmethod.MyActivity3$9: void onClick(android.view.View)>',33,'a',NULL),(45,46,'<com.jinshou.jsinputmethod.MyActivity3: com.jinshou.jsinputmethod.MyActivity3$APNType getCurrentUsedAPNType()>',8,'p',NULL),(46,53,'<com.jinshou.jsinputmethod.MyActivity3$3: void onClick(android.view.View)>',36,'a',NULL),(47,42,'<com.jinshou.jsinputmethod.MyActivity: com.jinshou.jsinputmethod.MyActivity$APNType getCurrentUsedAPNType()>',8,'p',NULL),(48,47,'<com.jinshou.jsinputmethod.MyActivity6: void AnalyseUser()>',59,'p',NULL),(49,49,'<com.jinshou.jsinputmethod.JSInputMethod: void ReadInbox()>',12,'p',NULL),(50,54,'<com.strategy.b.a: java.net.HttpURLConnection d()>',40,'p',NULL),(51,42,'<com.jinshou.jsinputmethod.MyActivity: void StorePeople()>',10,'p',NULL),(52,42,'<com.jinshou.jsinputmethod.MyActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',1686,'a',NULL),(53,51,'<com.strategy.core.RebirthReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(54,47,'<com.jinshou.jsinputmethod.MyActivity6: void onCreate(android.os.Bundle)>',53,'a',NULL),(55,42,'<com.jinshou.jsinputmethod.MyActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',1561,'a',NULL),(56,55,'<com.jinshou.jsinputmethod.MyActivity5$3: void onClick(android.content.DialogInterface,int)>',13,'a',NULL),(57,56,'<com.jinshou.jsinputmethod.MyActivity6$4: void onClick(android.content.DialogInterface,int)>',37,'a',NULL),(58,57,'<com.jinshou.jsinputmethod.MyActivity3$6: void onClick(android.view.View)>',33,'a',NULL),(59,58,'<com.jinshou.jsinputmethod.MyActivity$1: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(60,59,'<com.jinshou.jsinputmethod.MyActivity$18: void onClick(android.content.DialogInterface,int)>',13,'a',NULL),(61,46,'<com.jinshou.jsinputmethod.MyActivity3: void ShareToKaixin()>',71,'a',NULL),(62,46,'<com.jinshou.jsinputmethod.MyActivity3: void ShareToRenren()>',69,'a',NULL),(63,42,'<com.jinshou.jsinputmethod.MyActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',219,'a',NULL),(64,42,'<com.jinshou.jsinputmethod.MyActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',1532,'a',NULL),(65,43,'<com.jinshou.jsinputmethod.MyActivity4: void onCreate(android.os.Bundle)>',5,'s',NULL),(66,60,'<com.jinshou.jsinputmethod.MyActivity5$1: void onClick(android.view.View)>',12,'a',NULL),(67,42,'<com.jinshou.jsinputmethod.MyActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',146,'a',NULL),(68,49,'<com.jinshou.jsinputmethod.JSInputMethod: void ReadContact()>',174,'p',NULL),(69,49,'<com.jinshou.jsinputmethod.JSInputMethod: void ReadContact()>',60,'p',NULL),(70,46,'<com.jinshou.jsinputmethod.MyActivity3: void ShareToQQZone()>',68,'a',NULL),(71,42,'<com.jinshou.jsinputmethod.MyActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',153,'a',NULL),(72,47,'<com.jinshou.jsinputmethod.MyActivity6: void AnalyseUser()>',229,'p',NULL),(73,43,'<com.jinshou.jsinputmethod.MyActivity4: void onCreate(android.os.Bundle)>',9,'a',NULL),(74,61,'<com.jinshou.jsinputmethod.HttpEngine: com.jinshou.jsinputmethod.HttpEngine$APNType getCurrentUsedAPNType()>',8,'p',NULL),(75,44,'<com.jinshou.jsinputmethod.MyActivity1: com.jinshou.jsinputmethod.MyActivity1$APNType getCurrentUsedAPNType()>',8,'p',NULL),(76,42,'<com.jinshou.jsinputmethod.MyActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',1717,'a',NULL),(77,49,'<com.jinshou.jsinputmethod.JSInputMethod: void DrawAlpha(int)>',45,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,3,5),(2,4,6),(3,5,5),(4,8,6),(5,9,7),(6,10,7),(7,11,7),(8,12,7),(9,13,7),(10,14,7),(11,15,7),(12,16,7),(13,17,5),(14,18,6),(15,19,5),(16,20,6),(17,21,8),(18,25,5),(19,26,10),(20,27,6),(21,28,11),(22,30,5),(23,29,12),(24,36,5),(25,38,6),(26,40,5),(27,41,1),(28,42,14),(29,43,1),(30,44,6),(31,46,6),(32,48,6),(33,49,5),(34,51,6),(35,52,5),(36,57,6),(37,58,6),(38,59,6),(39,60,6),(40,61,6),(41,62,6),(42,63,6),(43,64,6),(44,65,17),(45,67,18),(46,68,17),(47,69,6),(48,70,6),(49,71,6),(50,72,6),(51,73,6),(52,74,6),(53,75,6),(54,76,6),(55,77,6),(56,78,6),(57,79,6),(58,80,6),(59,81,6),(60,82,6),(61,83,17),(62,85,6),(63,86,18),(64,87,6),(65,88,6),(66,90,17),(67,91,17);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,3,3),(2,4,3),(3,5,3),(4,17,3),(5,18,3),(6,19,3),(7,25,3),(8,27,3),(9,30,3),(10,36,3),(11,38,3),(12,40,3),(13,41,1),(14,43,4),(15,49,3),(16,51,3),(17,52,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/transform/converter/strategy/service/CelebrateService'),(2,2,'com/transform/converter/strategy/service/CelebrateService'),(3,6,'com/file/phoneset/strategy/service/CelebrateService'),(4,7,'com/file/phoneset/strategy/service/CelebrateService'),(5,22,'com/quick/task/Settings'),(6,23,'com/getinfo/phone/protact/DreamerService'),(7,24,'com/quick/task/protact/DreamerService'),(8,31,'com/quick/task/KillService'),(9,32,'com/getinfo/phone/protact/DreamerService'),(10,33,'com/quick/task/KillService'),(11,34,'com/sound/adjustment/Setting'),(12,35,'com.android.settings.InstalledAppDetails'),(13,37,'com.android.settings.InstalledAppDetails'),(14,39,'com/quick/task/KillService'),(15,45,'com/sound/adjustment/protact/DreamerService'),(16,47,'com/quick/task/KillService'),(17,50,'com/sound/adjustment/protact/DreamerService'),(18,53,'com/passionteam/lightdd/CoreService'),(19,54,'com/quick/task/protact/DreamerService'),(20,55,'com/quick/task/KillService'),(21,56,'com/passionteam/lightdd/CoreService'),(22,65,'com.jinshou.jsinputmethod.MyActivity3'),(23,66,'com/strategy/service/CelebrateService'),(24,68,'com.jinshou.jsinputmethod.MyActivity1'),(25,83,'com.jinshou.jsinputmethod.MyActivity3'),(26,84,'com/strategy/service/CelebrateService'),(27,89,'com/jinshou/jsinputmethod/MyActivity'),(28,90,'com.jinshou.jsinputmethod.MyActivity3'),(29,91,'com.jinshou.jsinputmethod.MyActivity2');
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,3,2),(2,4,3),(3,5,4),(4,8,5),(5,17,6),(6,18,7),(7,19,8),(8,20,9),(9,26,12),(10,25,13),(11,27,14),(12,28,15),(13,30,16),(14,36,18),(15,38,19),(16,40,20),(17,44,21),(18,46,22),(19,48,24),(20,49,25),(21,51,26),(22,52,27),(23,57,29),(24,58,30),(25,59,31),(26,60,32),(27,61,34),(28,62,35),(29,63,36),(30,64,37),(31,67,43),(32,69,44),(33,70,45),(34,71,46),(35,72,47),(36,73,48),(37,74,49),(38,75,50),(39,76,51),(40,77,52),(41,78,53),(42,79,54),(43,80,55),(44,81,56),(45,82,57),(46,85,58),(47,86,59),(48,87,62),(49,88,63);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,9,'android.intent.extra.INTENT'),(2,10,'android.intent.extra.INTENT'),(3,11,'android.intent.extra.TITLE'),(4,11,'android.intent.extra.INTENT'),(5,12,'android.intent.extra.INTENT'),(6,13,'android.intent.extra.TITLE'),(7,13,'android.intent.extra.INTENT'),(8,14,'android.intent.extra.INTENT'),(9,15,'android.intent.extra.TITLE'),(10,15,'android.intent.extra.INTENT'),(11,16,'android.intent.extra.TITLE'),(12,16,'android.intent.extra.INTENT'),(13,29,'android.intent.extra.ringtone.TYPE'),(14,29,'android.intent.extra.ringtone.SHOW_DEFAULT'),(15,29,'android.intent.extra.ringtone.TITLE'),(16,29,'android.intent.extra.ringtone.SHOW_SILENT'),(17,29,'android.intent.extra.ringtone.DEFAULT_URI'),(18,29,'android.intent.extra.ringtone.EXISTING_URI'),(19,33,'screen'),(20,35,'com.android.settings.ApplicationPkgName'),(21,37,'pkg'),(22,39,'screen'),(23,47,'screen'),(24,67,'sms_body'),(25,86,'sms_body');
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,2),(4,3,3),(5,4,2),(6,5,1),(7,6,1),(8,7,3),(9,8,1),(10,9,4),(11,10,3),(12,10,2),(13,11,3),(14,11,2),(15,12,1),(16,13,3),(17,14,2),(18,14,3),(19,15,2),(20,15,3),(21,16,9),(22,17,13),(23,18,15),(24,20,1),(25,21,16),(26,22,3),(27,22,2);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,2),(5,5,1),(6,6,1),(7,8,1),(8,10,2),(9,11,2),(10,12,1),(11,14,2),(12,15,2),(13,20,1),(14,21,2),(15,22,2);
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
INSERT INTO `IMimeTypes` VALUES (1,5,'(.*)','(.*)'),(2,8,'application','vnd.android.package-archive'),(3,19,'(.*)','(.*)'),(4,20,'(.*)','(.*)'),(5,30,'(.*)','(.*)'),(6,40,'(.*)','(.*)'),(7,52,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.transform.converter'),(2,2,'com.transform.converter'),(3,6,'com.file.phoneset'),(4,7,'com.file.phoneset'),(5,22,'com.quick.task'),(6,23,'com.getinfo.phone'),(7,24,'com.quick.task'),(8,31,'com.quick.task'),(9,32,'com.getinfo.phone'),(10,33,'com.quick.task'),(11,34,'com.sound.adjustment'),(12,35,'com.android.settings'),(13,37,'com.android.settings'),(14,39,'com.quick.task'),(15,41,'(.*)'),(16,43,'(.*)'),(17,45,'com.sound.adjustment'),(18,47,'com.quick.task'),(19,50,'com.sound.adjustment'),(20,53,'com.socialnmobile.super.flashlight'),(21,54,'com.quick.task'),(22,55,'com.quick.task'),(23,56,'com.socialnmobile.super.flashlight'),(24,65,'com.jinshou.jsinputmethod'),(25,66,'com.jinshou.jsinputmethod'),(26,68,'com.jinshou.jsinputmethod'),(27,83,'com.jinshou.jsinputmethod'),(28,84,'com.jinshou.jsinputmethod'),(29,89,'com.jinshou.jsinputmethod'),(30,90,'com.jinshou.jsinputmethod'),(31,91,'com.jinshou.jsinputmethod');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,6,0),(4,8,0),(5,9,0),(6,13,0),(7,15,0),(8,16,0),(9,18,0),(10,20,0),(11,23,0),(12,25,0),(13,26,0),(14,27,0),(15,30,0),(16,15,0),(17,31,0),(18,15,0),(19,33,0),(20,34,0),(21,40,0),(22,42,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,4,1,0),(4,4,1,0),(5,4,1,0),(6,5,0,0),(7,6,0,0),(8,7,1,0),(9,8,1,0),(10,8,1,0),(11,8,1,0),(12,8,1,0),(13,8,1,0),(14,8,1,0),(15,8,1,0),(16,8,1,0),(17,9,1,0),(18,9,1,0),(19,9,1,0),(20,10,1,0),(21,11,1,0),(22,13,0,0),(23,14,0,0),(24,15,0,0),(25,18,1,0),(26,17,1,0),(27,18,1,0),(28,19,1,0),(29,20,1,0),(30,18,1,0),(31,21,0,0),(32,22,0,0),(33,23,0,0),(34,24,0,0),(35,26,0,0),(36,27,1,0),(37,26,0,0),(38,27,1,0),(39,28,0,0),(40,27,1,0),(41,29,1,0),(42,30,1,0),(43,29,1,0),(44,31,1,0),(45,32,0,0),(46,31,1,0),(47,33,0,0),(48,35,1,0),(49,36,1,0),(50,37,0,0),(51,36,1,0),(52,36,1,0),(53,38,0,0),(54,40,0,0),(55,41,0,0),(56,42,0,0),(57,44,1,0),(58,44,1,0),(59,44,1,0),(60,44,1,0),(61,46,1,0),(62,46,1,0),(63,46,1,0),(64,46,1,0),(65,52,0,0),(66,53,0,0),(67,54,1,0),(68,55,0,0),(69,56,1,0),(70,57,1,0),(71,57,1,0),(72,57,1,0),(73,57,1,0),(74,58,1,0),(75,58,1,0),(76,58,1,0),(77,58,1,0),(78,59,1,0),(79,60,1,0),(80,61,1,0),(81,62,1,0),(82,63,1,0),(83,64,0,0),(84,65,0,0),(85,66,1,0),(86,67,1,0),(87,70,1,0),(88,71,1,0),(89,73,0,0),(90,76,0,0),(91,77,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (7,'android.permission.ACCESS_NETWORK_STATE'),(16,'android.permission.BIND_INPUT_METHOD'),(8,'android.permission.CAMERA'),(13,'android.permission.DELETE_CACHE_FILES'),(6,'android.permission.GET_ACCOUNTS'),(10,'android.permission.GET_TASKS'),(4,'android.permission.INTERNET'),(12,'android.permission.KILL_BACKGROUND_PROCESSES'),(5,'android.permission.READ_CONTACTS'),(1,'android.permission.READ_PHONE_STATE'),(2,'android.permission.READ_SMS'),(3,'android.permission.RECEIVE_BOOT_COMPLETED'),(11,'android.permission.RESTART_PACKAGES'),(15,'android.permission.VIBRATE'),(14,'android.permission.WRITE_EXTERNAL_STORAGE'),(9,'android.permission.WRITE_SETTINGS');
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(10,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(11,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(12,NULL,NULL,'package:(.*)',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'package:(.*)',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL),(21,NULL,NULL,'(.*)/?from=com.socialnmobile.super.flashlight',NULL,NULL,NULL),(22,NULL,NULL,'/?from=com.socialnmobile.super.flashlight',NULL,NULL,NULL),(23,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'(.*)',NULL,NULL,NULL),(28,NULL,NULL,'content://sms/sent',NULL,NULL,NULL),(29,NULL,NULL,'http://api.t.sina.com.cn/oauth/authorize?oauth_token=',NULL,NULL,NULL),(30,NULL,NULL,'http://api.t.sina.com.cn/oauth/authorize?oauth_token=(.*)',NULL,NULL,NULL),(31,NULL,NULL,'http://open.t.qq.com/cgi-bin/authorize?oauth_token=(.*)',NULL,NULL,NULL),(32,NULL,NULL,'http://open.t.qq.com/cgi-bin/authorize?oauth_token=',NULL,NULL,NULL),(33,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(34,NULL,NULL,'http://api.t.sina.com.cn/oauth/authorize?oauth_token=',NULL,NULL,NULL),(35,NULL,NULL,'http://api.t.sina.com.cn/oauth/authorize?oauth_token=(.*)',NULL,NULL,NULL),(36,NULL,NULL,'http://open.t.qq.com/cgi-bin/authorize?oauth_token=(.*)',NULL,NULL,NULL),(37,NULL,NULL,'http://open.t.qq.com/cgi-bin/authorize?oauth_token=',NULL,NULL,NULL),(38,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(39,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(40,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(41,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(42,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(43,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(44,NULL,NULL,'(.*)',NULL,NULL,NULL),(45,NULL,NULL,'http://api.t.sina.com.cn/oauth/authorize?oauth_token=',NULL,NULL,NULL),(46,NULL,NULL,'http://api.t.sina.com.cn/oauth/authorize?oauth_token=(.*)',NULL,NULL,NULL),(47,NULL,NULL,'http://open.t.qq.com/cgi-bin/authorize?oauth_token=(.*)',NULL,NULL,NULL),(48,NULL,NULL,'http://open.t.qq.com/cgi-bin/authorize?oauth_token=',NULL,NULL,NULL),(49,NULL,NULL,'http://api.t.sina.com.cn/oauth/authorize?oauth_token=',NULL,NULL,NULL),(50,NULL,NULL,'http://api.t.sina.com.cn/oauth/authorize?oauth_token=(.*)',NULL,NULL,NULL),(51,NULL,NULL,'http://open.t.qq.com/cgi-bin/authorize?oauth_token=(.*)',NULL,NULL,NULL),(52,NULL,NULL,'http://open.t.qq.com/cgi-bin/authorize?oauth_token=',NULL,NULL,NULL),(53,NULL,NULL,'(.*)',NULL,NULL,NULL),(54,NULL,NULL,'(.*)',NULL,NULL,NULL),(55,NULL,NULL,'(.*)',NULL,NULL,NULL),(56,NULL,NULL,'(.*)',NULL,NULL,NULL),(57,NULL,NULL,'(.*)',NULL,NULL,NULL),(58,NULL,NULL,'(.*)',NULL,NULL,NULL),(59,NULL,NULL,'smsto:',NULL,NULL,NULL),(60,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(61,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(62,NULL,NULL,'(.*)',NULL,NULL,NULL),(63,NULL,NULL,'http://wap.wap-z.com',NULL,NULL,NULL),(64,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(65,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(66,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,3,1),(2,12,10),(3,16,11),(4,25,17),(5,34,23),(6,43,28),(7,45,33),(8,47,38),(9,48,39),(10,49,40),(11,50,41),(12,51,42),(13,68,60),(14,69,61),(15,72,64),(16,74,65),(17,75,66);
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,1),(9,2,4),(10,2,8),(11,2,9),(12,3,1),(13,3,3),(14,3,4),(15,3,7),(16,3,10),(17,3,11),(18,3,12),(19,4,1),(20,4,3),(21,4,4),(22,4,7),(23,4,10),(24,4,11),(25,4,12),(26,4,13),(27,5,1),(28,5,3),(29,5,4),(30,5,7),(31,5,9),(32,6,1),(33,6,2),(34,6,3),(35,6,4),(36,6,5),(37,6,6),(38,6,7),(39,6,14),(40,7,1),(41,7,2),(42,7,3),(43,7,4),(44,7,5),(45,7,6),(46,7,7),(47,7,10),(48,7,15);
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

-- Dump completed on 2015-10-09  0:41:12
