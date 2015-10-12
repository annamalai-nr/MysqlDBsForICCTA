-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_74
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (4,'android.intent.action.BOOT_COMPLETED'),(1,'android.intent.action.MAIN'),(6,'android.intent.action.NEW_OUTGOING_CALL'),(7,'android.intent.action.PHONE_STATE'),(5,'com.airpush.android.PushServiceStart40484'),(8,'com.airpush.android.PushServiceStart43230'),(3,'com.airpush.android.PushServiceStart43990'),(2,'paulscode.android.mupen64plus.MyService');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applications`
--

LOCK TABLES `Applications` WRITE;
/*!40000 ALTER TABLE `Applications` DISABLE KEYS */;
INSERT INTO `Applications` VALUES (1,'com.n64.mario.kart2',19),(2,'com.n64.pro.emulator',15),(3,'ultimate.racing.gaming1',19),(4,'mario.kart.alpha6',19),(5,'nario.kart.racing',24);
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
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'paulscode.android.mupen64plus.MainActivity'),(2,1,'paulscode.android.mupen64plus.MenuActivity'),(3,1,'paulscode.android.mupen64plus.MenuSettingsActivity'),(4,1,'paulscode.android.mupen64plus.MenuSettingsVideoActivity'),(5,1,'paulscode.android.mupen64plus.MenuSettingsVideoChangeActivity'),(6,1,'paulscode.android.mupen64plus.MenuSettingsVideoConfigureActivity'),(7,1,'paulscode.android.mupen64plus.MenuSettingsAudioActivity'),(8,1,'paulscode.android.mupen64plus.MenuSettingsAudioChangeActivity'),(9,1,'paulscode.android.mupen64plus.MenuSettingsInputActivity'),(10,1,'paulscode.android.mupen64plus.MenuSettingsInputChangeActivity'),(11,1,'paulscode.android.mupen64plus.MenuSettingsInputConfigureActivity'),(12,1,'paulscode.android.mupen64plus.MenuSettingsInputConfigureButtonsActivity'),(13,1,'paulscode.android.mupen64plus.MenuSettingsRSPActivity'),(14,1,'paulscode.android.mupen64plus.MenuSettingsRSPChangeActivity'),(15,1,'paulscode.android.mupen64plus.MenuSettingsCoreActivity'),(16,1,'paulscode.android.mupen64plus.MenuSettingsCoreChangeActivity'),(17,1,'paulscode.android.mupen64plus.MenuSettingsCoreConfigureActivity'),(18,1,'paulscode.android.mupen64plus.MenuSkinsActivity'),(19,1,'paulscode.android.mupen64plus.MenuSkinsGamepadActivity'),(20,1,'paulscode.android.mupen64plus.MenuSkinsGamepadChangeActivity'),(21,1,'paulscode.android.mupen64plus.FileChooserActivity'),(22,1,'paulscode.android.mupen64plus.MenuHelp'),(23,1,'paulscode.android.mupen64plus.MyActivity'),(24,1,'paulscode.android.mupen64plus.SDLActivity'),(25,1,'com.mobfox.sdk.InAppWebView'),(26,1,'com.airpush.android.PushAds'),(27,1,'paulscode.android.mupen64plus.MyService'),(28,1,'com.airpush.android.PushService'),(29,1,'paulscode.android.mupen64plus.Receiver'),(30,1,'paulscode.android.mupen64plus.MyReceiver'),(31,1,'com.Leadbolt.AdNotification'),(32,1,'com.airpush.android.UserDetailsReceiver'),(33,1,'com.airpush.android.MessageReceiver'),(34,1,'com.airpush.android.DeliveryReceiver'),(35,2,'paulscode.android.mupen64plus.MainActivity'),(36,2,'paulscode.android.mupen64plus.MenuActivity'),(37,2,'paulscode.android.mupen64plus.MenuSettingsActivity'),(38,2,'paulscode.android.mupen64plus.MenuSettingsVideoActivity'),(39,2,'paulscode.android.mupen64plus.MenuSettingsVideoChangeActivity'),(40,2,'paulscode.android.mupen64plus.MenuSettingsVideoConfigureActivity'),(41,2,'paulscode.android.mupen64plus.MenuSettingsAudioActivity'),(42,2,'paulscode.android.mupen64plus.MenuSettingsAudioChangeActivity'),(43,2,'paulscode.android.mupen64plus.MenuSettingsInputActivity'),(44,2,'paulscode.android.mupen64plus.MenuSettingsInputChangeActivity'),(45,2,'paulscode.android.mupen64plus.MenuSettingsInputConfigureActivity'),(46,2,'paulscode.android.mupen64plus.MenuSettingsInputConfigureButtonsActivity'),(47,2,'paulscode.android.mupen64plus.MenuSettingsRSPActivity'),(48,2,'paulscode.android.mupen64plus.MenuSettingsRSPChangeActivity'),(49,2,'paulscode.android.mupen64plus.MenuSettingsCoreActivity'),(50,2,'paulscode.android.mupen64plus.MenuSettingsCoreChangeActivity'),(51,2,'paulscode.android.mupen64plus.MenuSettingsCoreConfigureActivity'),(52,2,'paulscode.android.mupen64plus.MenuSkinsActivity'),(53,2,'paulscode.android.mupen64plus.MenuSkinsGamepadActivity'),(54,2,'paulscode.android.mupen64plus.MenuSkinsGamepadChangeActivity'),(55,2,'paulscode.android.mupen64plus.FileChooserActivity'),(56,2,'paulscode.android.mupen64plus.MenuHelp'),(57,2,'paulscode.android.mupen64plus.MyActivity'),(58,2,'paulscode.android.mupen64plus.SDLActivity'),(59,2,'com.mobfox.sdk.InAppWebView'),(60,2,'com.airpush.android.PushAds'),(61,2,'paulscode.android.mupen64plus.MyService'),(62,3,'paulscode.android.mupen64plus.MainActivity'),(63,2,'com.airpush.android.PushService'),(64,3,'paulscode.android.mupen64plus.MenuActivity'),(65,2,'paulscode.android.mupen64plus.Receiver'),(66,3,'paulscode.android.mupen64plus.MenuSettingsActivity'),(67,4,'paulscode.android.mupen64plus.MainActivity'),(68,3,'paulscode.android.mupen64plus.MenuSettingsVideoActivity'),(69,3,'paulscode.android.mupen64plus.MenuSettingsVideoChangeActivity'),(70,2,'paulscode.android.mupen64plus.MyReceiver'),(71,3,'paulscode.android.mupen64plus.MenuSettingsVideoConfigureActivity'),(72,4,'paulscode.android.mupen64plus.MenuActivity'),(73,3,'paulscode.android.mupen64plus.MenuSettingsAudioActivity'),(74,2,'com.Leadbolt.AdNotification'),(75,4,'paulscode.android.mupen64plus.MenuSettingsActivity'),(76,3,'paulscode.android.mupen64plus.MenuSettingsAudioChangeActivity'),(77,4,'paulscode.android.mupen64plus.MenuSettingsVideoActivity'),(78,2,'com.airpush.android.UserDetailsReceiver'),(79,3,'paulscode.android.mupen64plus.MenuSettingsInputActivity'),(80,2,'com.airpush.android.MessageReceiver'),(81,4,'paulscode.android.mupen64plus.MenuSettingsVideoChangeActivity'),(82,3,'paulscode.android.mupen64plus.MenuSettingsInputChangeActivity'),(83,4,'paulscode.android.mupen64plus.MenuSettingsVideoConfigureActivity'),(84,2,'com.airpush.android.DeliveryReceiver'),(85,3,'paulscode.android.mupen64plus.MenuSettingsInputConfigureActivity'),(86,4,'paulscode.android.mupen64plus.MenuSettingsAudioActivity'),(87,3,'paulscode.android.mupen64plus.MenuSettingsInputConfigureButtonsActivity'),(88,4,'paulscode.android.mupen64plus.MenuSettingsAudioChangeActivity'),(89,3,'paulscode.android.mupen64plus.MenuSettingsRSPActivity'),(90,4,'paulscode.android.mupen64plus.MenuSettingsInputActivity'),(91,3,'paulscode.android.mupen64plus.MenuSettingsRSPChangeActivity'),(92,4,'paulscode.android.mupen64plus.MenuSettingsInputChangeActivity'),(93,3,'paulscode.android.mupen64plus.MenuSettingsCoreActivity'),(94,4,'paulscode.android.mupen64plus.MenuSettingsInputConfigureActivity'),(95,3,'paulscode.android.mupen64plus.MenuSettingsCoreChangeActivity'),(96,4,'paulscode.android.mupen64plus.MenuSettingsInputConfigureButtonsActivity'),(97,3,'paulscode.android.mupen64plus.MenuSettingsCoreConfigureActivity'),(98,4,'paulscode.android.mupen64plus.MenuSettingsRSPActivity'),(99,3,'paulscode.android.mupen64plus.MenuSkinsActivity'),(100,4,'paulscode.android.mupen64plus.MenuSettingsRSPChangeActivity'),(101,3,'paulscode.android.mupen64plus.MenuSkinsGamepadActivity'),(102,4,'paulscode.android.mupen64plus.MenuSettingsCoreActivity'),(103,3,'paulscode.android.mupen64plus.MenuSkinsGamepadChangeActivity'),(104,4,'paulscode.android.mupen64plus.MenuSettingsCoreChangeActivity'),(105,3,'paulscode.android.mupen64plus.FileChooserActivity'),(106,4,'paulscode.android.mupen64plus.MenuSettingsCoreConfigureActivity'),(107,3,'paulscode.android.mupen64plus.MenuHelp'),(108,4,'paulscode.android.mupen64plus.MenuSkinsActivity'),(109,3,'paulscode.android.mupen64plus.MyActivity'),(110,4,'paulscode.android.mupen64plus.MenuSkinsGamepadActivity'),(111,3,'paulscode.android.mupen64plus.SDLActivity'),(112,4,'paulscode.android.mupen64plus.MenuSkinsGamepadChangeActivity'),(113,3,'com.mobfox.sdk.InAppWebView'),(114,4,'paulscode.android.mupen64plus.FileChooserActivity'),(115,3,'com.airpush.android.PushAds'),(116,4,'paulscode.android.mupen64plus.MenuHelp'),(117,3,'com.mopub.mobileads.MoPubActivity'),(118,4,'paulscode.android.mupen64plus.MyActivity'),(119,3,'com.sellaring.sdk.PostCallScreenActivity'),(120,4,'paulscode.android.mupen64plus.SDLActivity'),(121,3,'paulscode.android.mupen64plus.MyService'),(122,4,'com.mobfox.sdk.InAppWebView'),(123,4,'com.airpush.android.PushAds'),(124,3,'com.airpush.android.PushService'),(125,4,'com.sellaring.sdk.PostCallScreenActivity'),(126,4,'paulscode.android.mupen64plus.MyService'),(127,3,'paulscode.android.mupen64plus.Receiver'),(128,4,'com.airpush.android.PushService'),(129,3,'paulscode.android.mupen64plus.MyReceiver'),(130,4,'paulscode.android.mupen64plus.Receiver'),(131,3,'com.Leadbolt.AdNotification'),(132,3,'com.airpush.android.UserDetailsReceiver'),(133,4,'paulscode.android.mupen64plus.MyReceiver'),(134,3,'com.airpush.android.MessageReceiver'),(135,3,'com.airpush.android.DeliveryReceiver'),(136,4,'com.Leadbolt.AdNotification'),(137,3,'com.sellaring.sdk.AlarmReceiver'),(138,4,'com.airpush.android.UserDetailsReceiver'),(139,3,'com.sellaring.sdk.RestartAlarmServiceReceiver'),(140,4,'com.airpush.android.MessageReceiver'),(141,4,'com.airpush.android.DeliveryReceiver'),(142,3,'com.sellaring.sdk.PhoneStateReceiver'),(143,4,'com.sellaring.sdk.AlarmReceiver'),(144,4,'com.sellaring.sdk.RestartAlarmServiceReceiver'),(145,4,'com.sellaring.sdk.PhoneStateReceiver'),(146,5,'paulscode.android.mupen64plus.MainActivity'),(147,5,'paulscode.android.mupen64plus.Leadbolt_CaptureForm'),(148,5,'paulscode.android.mupen64plus.MenuActivity'),(149,5,'paulscode.android.mupen64plus.MenuSettingsActivity'),(150,5,'paulscode.android.mupen64plus.MenuSettingsVideoActivity'),(151,5,'paulscode.android.mupen64plus.MenuSettingsVideoChangeActivity'),(152,5,'paulscode.android.mupen64plus.MenuSettingsVideoConfigureActivity'),(153,5,'paulscode.android.mupen64plus.MenuSettingsAudioActivity'),(154,5,'paulscode.android.mupen64plus.MenuSettingsAudioChangeActivity'),(155,5,'paulscode.android.mupen64plus.MenuSettingsInputActivity'),(156,5,'paulscode.android.mupen64plus.MenuSettingsInputChangeActivity'),(157,5,'paulscode.android.mupen64plus.MenuSettingsInputConfigureActivity'),(158,5,'paulscode.android.mupen64plus.MenuSettingsInputConfigureButtonsActivity'),(159,5,'paulscode.android.mupen64plus.MenuSettingsRSPActivity'),(160,5,'paulscode.android.mupen64plus.MenuSettingsRSPChangeActivity'),(161,5,'paulscode.android.mupen64plus.MenuSettingsCoreActivity'),(162,5,'paulscode.android.mupen64plus.MenuSettingsCoreChangeActivity'),(163,5,'paulscode.android.mupen64plus.MenuSettingsCoreConfigureActivity'),(164,5,'paulscode.android.mupen64plus.MenuSkinsActivity'),(165,5,'paulscode.android.mupen64plus.MenuSkinsGamepadActivity'),(166,5,'paulscode.android.mupen64plus.MenuSkinsGamepadChangeActivity'),(167,5,'paulscode.android.mupen64plus.FileChooserActivity'),(168,5,'paulscode.android.mupen64plus.MenuHelp'),(169,5,'paulscode.android.mupen64plus.MyActivity'),(170,5,'paulscode.android.mupen64plus.SDLActivity'),(171,5,'com.mobfox.sdk.InAppWebView'),(172,5,'com.airpush.android.PushAds'),(173,5,'com.mopub.mobileads.MoPubActivity'),(174,5,'com.sellaring.sdk.PostCallScreenActivity'),(175,5,'com.apperhand.device.android.AndroidSDKProvider'),(176,5,'paulscode.android.mupen64plus.MyService'),(177,5,'com.airpush.android.PushService'),(178,5,'paulscode.android.mupen64plus.Receiver'),(179,5,'paulscode.android.mupen64plus.MyReceiver'),(180,5,'com.Leadbolt.AdNotification'),(181,5,'com.airpush.android.UserDetailsReceiver'),(182,5,'com.airpush.android.MessageReceiver'),(183,5,'com.airpush.android.DeliveryReceiver'),(184,5,'com.sellaring.sdk.AlarmReceiver'),(185,5,'com.sellaring.sdk.RestartAlarmServiceReceiver'),(186,5,'com.sellaring.sdk.PhoneStateReceiver');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'s',1,NULL,NULL),(28,28,'s',1,NULL,NULL),(29,29,'r',1,NULL,NULL),(30,30,'r',1,NULL,NULL),(31,31,'r',0,NULL,NULL),(32,32,'r',0,NULL,NULL),(33,33,'r',0,NULL,NULL),(34,34,'r',0,NULL,NULL),(35,35,'a',1,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'s',1,NULL,NULL),(62,62,'a',1,NULL,NULL),(63,63,'s',1,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'r',1,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'a',1,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'r',1,NULL,NULL),(71,71,'a',0,NULL,NULL),(72,72,'a',0,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,74,'r',0,NULL,NULL),(75,75,'a',0,NULL,NULL),(76,76,'a',0,NULL,NULL),(77,78,'r',0,NULL,NULL),(78,77,'a',0,NULL,NULL),(79,79,'a',0,NULL,NULL),(80,81,'a',0,NULL,NULL),(81,80,'r',0,NULL,NULL),(82,82,'a',0,NULL,NULL),(83,84,'r',0,NULL,NULL),(84,83,'a',0,NULL,NULL),(85,85,'a',0,NULL,NULL),(86,86,'a',0,NULL,NULL),(87,87,'a',0,NULL,NULL),(88,88,'a',0,NULL,NULL),(89,89,'a',0,NULL,NULL),(90,90,'a',0,NULL,NULL),(91,91,'a',0,NULL,NULL),(92,92,'a',0,NULL,NULL),(93,93,'a',0,NULL,NULL),(94,94,'a',0,NULL,NULL),(95,95,'a',0,NULL,NULL),(96,96,'a',0,NULL,NULL),(97,97,'a',0,NULL,NULL),(98,98,'a',0,NULL,NULL),(99,99,'a',0,NULL,NULL),(100,100,'a',0,NULL,NULL),(101,101,'a',0,NULL,NULL),(102,102,'a',0,NULL,NULL),(103,103,'a',0,NULL,NULL),(104,104,'a',0,NULL,NULL),(105,105,'a',0,NULL,NULL),(106,106,'a',0,NULL,NULL),(107,107,'a',0,NULL,NULL),(108,108,'a',0,NULL,NULL),(109,109,'a',0,NULL,NULL),(110,110,'a',0,NULL,NULL),(111,111,'a',0,NULL,NULL),(112,112,'a',0,NULL,NULL),(113,113,'a',0,NULL,NULL),(114,114,'a',0,NULL,NULL),(115,115,'a',0,NULL,NULL),(116,116,'a',0,NULL,NULL),(117,117,'a',0,NULL,NULL),(118,118,'a',0,NULL,NULL),(119,119,'a',0,NULL,NULL),(120,120,'a',0,NULL,NULL),(121,121,'s',1,NULL,NULL),(122,122,'a',0,NULL,NULL),(123,123,'a',0,NULL,NULL),(124,124,'s',1,NULL,NULL),(125,125,'a',0,NULL,NULL),(126,126,'s',1,NULL,NULL),(127,127,'r',1,NULL,NULL),(128,128,'s',1,NULL,NULL),(129,129,'r',1,NULL,NULL),(130,130,'r',1,NULL,NULL),(131,131,'r',0,NULL,NULL),(132,132,'r',0,NULL,NULL),(133,133,'r',1,NULL,NULL),(134,134,'r',0,NULL,NULL),(135,135,'r',0,NULL,NULL),(136,136,'r',0,NULL,NULL),(137,137,'r',0,NULL,NULL),(138,138,'r',0,NULL,NULL),(139,139,'r',1,NULL,NULL),(140,140,'r',0,NULL,NULL),(141,141,'r',0,NULL,NULL),(142,142,'r',1,NULL,NULL),(143,143,'r',0,NULL,NULL),(144,144,'r',1,NULL,NULL),(145,145,'r',1,NULL,NULL),(146,146,'a',0,NULL,NULL),(147,147,'a',1,NULL,NULL),(148,148,'a',0,NULL,NULL),(149,149,'a',0,NULL,NULL),(150,150,'a',0,NULL,NULL),(151,151,'a',0,NULL,NULL),(152,152,'a',0,NULL,NULL),(153,153,'a',0,NULL,NULL),(154,154,'a',0,NULL,NULL),(155,155,'a',0,NULL,NULL),(156,156,'a',0,NULL,NULL),(157,157,'a',0,NULL,NULL),(158,158,'a',0,NULL,NULL),(159,159,'a',0,NULL,NULL),(160,160,'a',0,NULL,NULL),(161,161,'a',0,NULL,NULL),(162,162,'a',0,NULL,NULL),(163,163,'a',0,NULL,NULL),(164,164,'a',0,NULL,NULL),(165,165,'a',0,NULL,NULL),(166,166,'a',0,NULL,NULL),(167,167,'a',0,NULL,NULL),(168,168,'a',0,NULL,NULL),(169,169,'a',0,NULL,NULL),(170,170,'a',0,NULL,NULL),(171,171,'a',0,NULL,NULL),(172,172,'a',0,NULL,NULL),(173,173,'a',0,NULL,NULL),(174,174,'a',0,NULL,NULL),(175,175,'s',0,NULL,NULL),(176,176,'s',1,NULL,NULL),(177,177,'s',1,NULL,NULL),(178,178,'r',1,NULL,NULL),(179,179,'r',1,NULL,NULL),(180,180,'r',0,NULL,NULL),(181,181,'r',0,NULL,NULL),(182,182,'r',0,NULL,NULL),(183,183,'r',0,NULL,NULL),(184,184,'r',0,NULL,NULL),(185,185,'r',1,NULL,NULL),(186,186,'r',1,NULL,NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,2),(6,6,1),(7,7,2),(8,8,1),(9,9,5),(10,10,4),(11,11,1),(12,12,2),(13,13,2),(14,14,3),(15,15,2),(16,16,4),(17,17,3),(18,18,2),(19,19,4),(20,20,2),(21,21,4),(22,22,7),(23,22,6),(24,23,4),(25,24,7),(26,24,6),(27,25,1),(28,26,2),(29,27,8),(30,28,4),(31,29,2),(32,30,4),(33,31,7),(34,31,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,4,2),(3,6,1),(4,8,1),(5,10,2),(6,11,1),(7,16,2),(8,19,2),(9,25,1),(10,28,2);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,27,0),(3,28,0),(4,29,0),(5,30,0),(6,35,0),(7,61,0),(8,62,0),(9,63,0),(10,65,0),(11,67,0),(12,70,0),(13,121,0),(14,124,0),(15,126,0),(16,127,0),(17,128,0),(18,129,0),(19,130,0),(20,133,0),(21,139,0),(22,142,0),(23,144,0),(24,145,0),(25,147,0),(26,176,0),(27,177,0),(28,178,0),(29,179,0),(30,185,0),(31,186,0);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (3,'android.permission.ACCESS_COARSE_LOCATION'),(8,'android.permission.ACCESS_FINE_LOCATION'),(9,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(11,'android.permission.ACCESS_NETWORK_STATE'),(19,'android.permission.ACCESS_WIFI_STATE'),(15,'android.permission.CALL_PHONE'),(20,'android.permission.GET_ACCOUNTS'),(6,'android.permission.INTERNET'),(14,'android.permission.PROCESS_OUTGOING_CALLS'),(4,'android.permission.READ_PHONE_STATE'),(5,'android.permission.RECEIVE_BOOT_COMPLETED'),(10,'android.permission.VIBRATE'),(12,'android.permission.WAKE_LOCK'),(2,'android.permission.WRITE_EXTERNAL_STORAGE'),(13,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(7,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(1,'com.android.launcher.permission.INSTALL_SHORTCUT'),(27,'com.android.launcher.permission.READ_SETTINGS'),(24,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(25,'com.fede.launcher.permission.READ_SETTINGS'),(23,'com.htc.launcher.permission.READ_SETTINGS'),(16,'com.lge.launcher.permission.INSTALL_SHORTCUT'),(21,'com.lge.launcher.permission.READ_SETTINGS'),(17,'com.motorola.dlauncher.permission.INSTALL_SHORTCUT'),(18,'com.motorola.dlauncher.permission.READ_SETTINGS'),(22,'com.motorola.launcher.permission.INSTALL_SHORTCUT'),(28,'com.motorola.launcher.permission.READ_SETTINGS'),(26,'org.adw.launcher.permission.READ_SETTINGS');
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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,2,1),(15,2,2),(16,2,3),(17,2,4),(18,2,5),(19,2,6),(20,2,7),(21,2,8),(22,2,9),(23,2,10),(24,2,11),(25,2,12),(26,2,13),(27,3,1),(28,3,2),(29,3,3),(30,3,4),(31,3,5),(32,3,6),(33,3,7),(34,3,8),(35,3,9),(36,4,1),(37,3,10),(38,4,2),(39,3,11),(40,4,3),(41,3,12),(42,4,4),(43,3,13),(44,4,5),(45,3,14),(46,4,6),(47,3,15),(48,4,7),(49,4,8),(50,4,9),(51,4,10),(52,4,11),(53,4,12),(54,4,13),(55,4,14),(56,4,15),(57,5,1),(58,5,2),(59,5,3),(60,5,4),(61,5,5),(62,5,6),(63,5,7),(64,5,8),(65,5,9),(66,5,10),(67,5,11),(68,5,12),(69,5,13),(70,5,17),(71,5,16),(72,5,19),(73,5,18),(74,5,21),(75,5,20),(76,5,23),(77,5,22),(78,5,25),(79,5,24),(80,5,27),(81,5,26),(82,5,28);
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

-- Dump completed on 2015-10-09  0:41:02
