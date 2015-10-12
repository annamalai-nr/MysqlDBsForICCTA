-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_415
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (23,'(.*)'),(8,'.FQsLHWHd14'),(12,'.NKKbhAJlM17'),(21,'.UDltLfLtT0'),(14,'.UDltLfLtT1'),(16,'.UDltLfLtT14'),(6,'RWs.UWiGDjvl.FQsLHWHd12'),(10,'RWs.UWiGDjvl.FQsLHWHd14'),(22,'Tga.mjDUjgpJA.UDltLfLtT0'),(15,'Tga.mjDUjgpJA.UDltLfLtT1'),(24,'Tga.mjDUjgpJA.UDltLfLtT12'),(17,'Tga.mjDUjgpJA.UDltLfLtT14'),(3,'android.intent.action.BOOT_COMPLETED'),(19,'android.intent.action.DELETE'),(26,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(9,'android.intent.action.PACKAGE_ADDED'),(7,'android.intent.action.PACKAGE_REMOVED'),(20,'android.intent.action.SCREEN_OFF'),(5,'android.intent.action.USER_PRESENT'),(2,'android.intent.action.VIEW'),(25,'com.android.music.musicservicecommand'),(4,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(13,'com.android_qhsdanb.NKKbhAJlM12'),(11,'com.android_qhsdanb.NKKbhAJlM17'),(18,'sms.ipkkuur.wcvb.dqvssqvmlht.BootReceiver');
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
INSERT INTO `Applications` VALUES (1,'com.rgupfmssjimrnwhh.owkshtketp',10024),(2,'com.android_qhsdanb',20009),(3,'RWs.UWiGDjvl',1100),(4,'Tga.mjDUjgpJA',10025),(5,'sms.ipkkuur.wcvb.dqvssqvmlht',10024),(6,'com.cq.nivnt.fgwoklpskbkqha',10037),(7,'com.uqssedtmct.qqwmrcsdhgmkj',10025);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.BROWSABLE'),(2,'android.intent.category.DEFAULT'),(6,'android.intent.category.HOME'),(4,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(5,'android.intent.categroy.DEFUAULT');
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
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.batteryacidgames.streetball.StreetballActivity'),(2,1,'com.DEGrGHfAQ.FSvRapJCKBg'),(3,1,'com.DEGrGHfAQ.smfkwaiaGvvaENH'),(4,2,'com.android_qhsdanb.NKKbhAJlM17'),(5,2,'com.android_qhsdanb.NKKbhAJlM8'),(6,2,'com.android_qhsdanb.NKKbhAJlM9'),(7,2,'com.android_qhsdanb.NKKbhAJlM2'),(8,3,'RWs.UWiGDjvl.image.FQsLHWHd19'),(9,2,'com.android_qhsdanb.NKKbhAJlM10'),(10,2,'com.android_qhsdanb.NKKbhAJlM11'),(11,3,'RWs.UWiGDjvl.image.FQsLHWHd18'),(12,3,'RWs.UWiGDjvl.FQsLHWHd8'),(13,2,'com.android_qhsdanb.NKKbhAJlM12'),(14,3,'RWs.UWiGDjvl.FQsLHWHd9'),(15,3,'RWs.UWiGDjvl.FQsLHWHd2'),(16,3,'RWs.UWiGDjvl.FQsLHWHd10'),(17,4,'Tga.mjDUjgpJA.UDltLfLtT0'),(18,3,'RWs.UWiGDjvl.FQsLHWHd11'),(19,4,'Tga.mjDUjgpJA.UDltLfLtT1'),(20,4,'Tga.mjDUjgpJA.UDltLfLtT2'),(21,3,'RWs.UWiGDjvl.FQsLHWHd12'),(22,4,'Tga.mjDUjgpJA.UDltLfLtT3'),(23,4,'Tga.mjDUjgpJA.UDltLfLtT4'),(24,4,'Tga.mjDUjgpJA.UDltLfLtT5'),(25,4,'Tga.mjDUjgpJA.UDltLfLtT6'),(26,4,'Tga.mjDUjgpJA.UDltLfLtT7'),(27,4,'Tga.mjDUjgpJA.UDltLfLtT8'),(28,4,'Tga.mjDUjgpJA.UDltLfLtT9'),(29,4,'Tga.mjDUjgpJA.UDltLfLtT10'),(30,4,'Tga.mjDUjgpJA.UDltLfLtT13'),(31,4,'Tga.mjDUjgpJA.image.UDltLfLtT14'),(32,4,'Tga.mjDUjgpJA.image.UDltLfLtT15'),(33,4,'Tga.mjDUjgpJA.image.UDltLfLtT16'),(34,4,'Tga.mjDUjgpJA.UDltLfLtT11'),(35,4,'Tga.mjDUjgpJA.UDltLfLtT12'),(36,5,'sms.ipkkuur.wcvb.dqvssqvmlht.StartActivity'),(37,5,'sms.ipkkuur.wcvb.dqvssqvmlht.ToiletpaperActivity'),(38,5,'sms.ipkkuur.wcvb.dqvssqvmlht.InputNameActivity'),(39,5,'com.eutopia.game.moreapp.activity.MoreActivity'),(40,5,'com.scoreloop.android.coreui.HighscoresActivity'),(41,5,'com.patRQsCtV.PGlvKJiwGWPK'),(42,5,'com.patRQsCtV.NRorLrbWGUsQQpo'),(43,5,'com.patRQsCtV.MyAppInfo'),(44,5,'com.patRQsCtV.WalmUAkfNjmTKdg'),(45,5,'com.patRQsCtV.AKUjSKLQKFdNN'),(46,5,'com.patRQsCtV.MyAppAlertDialog'),(47,5,'com.patRQsCtV.kiNrwKavdGufS'),(48,5,'com.patRQsCtV.MyAppService'),(49,5,'com.patRQsCtV.BootReceiverService'),(50,6,'com.k2.games.bubblesclassic.GameScreen'),(51,6,'com.google.ads.AdActivity'),(52,6,'com.k2.games.bubblesclassic.StartScreen'),(53,6,'com.k2.games.bubblesclassic.GamePreferences'),(54,6,'com.k2.games.bubblesclassic.Statistic'),(55,6,'com.k2.games.bubblesclassic.About'),(56,6,'com.k2.games.bubblesclassic.EndGameActivity'),(57,6,'com.k2.games.bubblesclassic.TwitterActivity'),(58,6,'com.egEhl.rmOpbJBlnCdg'),(59,6,'com.egEhl.fPssjlnU'),(60,6,'com.egEhl.OdQPUGkPEJvgUal'),(61,6,'com.egEhl.mbwriEecLIQTii'),(62,6,'com.egEhl.astfMtFaOBRT'),(63,6,'com.egEhl.MDVPJLIVPCm'),(64,6,'com.egEhl.userPermissionReceiver'),(65,3,'be'),(66,2,'l'),(67,2,'g'),(68,3,'bj'),(69,2,'j'),(70,4,'di'),(71,4,'dj'),(72,3,'bf'),(73,5,'com.patRQsCtV.ai'),(74,4,'av'),(75,6,'com.k2.games.bubblesclassic.TwitterClient'),(76,5,'com.patRQsCtV.ac'),(77,4,'bi'),(78,6,'com.k2.games.bubblesclassic.GameScreen$1'),(79,4,'cq'),(80,4,'cf'),(81,5,'com.patRQsCtV.af'),(82,5,'com.patRQsCtV.z'),(83,6,'com.google.ads.util.AdUtil$UserActivityReceiver'),(84,5,'sms.ipkkuur.wcvb.dqvssqvmlht.StartActivity$3'),(85,5,'sms.ipkkuur.wcvb.dqvssqvmlht.StartActivity$1'),(86,6,'com.egEhl.af'),(87,4,'bg'),(88,6,'com.egEhl.p'),(89,4,'bm'),(90,6,'com.egEhl.ah'),(91,4,'ar'),(92,5,'com.patRQsCtV.y'),(93,5,'sms.ipkkuur.wcvb.dqvssqvmlht.InputNameActivity$1'),(94,5,'com.eutopia.game.moreapp.activity.MoreHelper'),(95,4,'cm'),(96,5,'com.patRQsCtV.be'),(97,5,'com.patRQsCtV.bf'),(98,5,'com.patRQsCtV.bp'),(99,7,'com.uqssedtmct.qqwmrcsdhgmkj.AppActivity'),(100,7,'com.google.ads.AdActivity'),(101,7,'net.youmi.android.AdActivity'),(102,7,'com.millennialmedia.android.MMAdViewOverlayActivity'),(103,7,'com.millennialmedia.android.VideoPlayer'),(104,7,'com.guohead.sdk.GuoheAdActivity'),(105,7,'com.vJqkk.MgrDKMpbq'),(106,7,'com.vJqkk.VkTObNuMpK'),(107,7,'com.nd.dianjin.activity.OfferAppActivity'),(108,7,'com.nd.dianjin.broadcastreceiver.PackagedChangedBroadcastReceiver'),(109,7,'com.millennialmedia.android.MillennialMediaView'),(110,7,'com.nd.dianjin.DianJinPlatform');
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
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,12,'from_alert'),(2,9,'package_name'),(3,9,'title'),(4,10,'service_channel'),(5,5,'title'),(6,12,'fromtype'),(7,12,'status'),(8,12,'game'),(9,12,'title'),(10,8,'stylebox'),(11,15,'from'),(12,12,'from_table'),(13,16,'package_name'),(14,18,'stylebox'),(15,9,'apk_url'),(16,5,'fromtype'),(17,5,'from_table'),(18,5,'game'),(19,16,'apk_url'),(20,12,'filepath'),(21,5,'status'),(22,16,'fromtable'),(23,7,'isDirectFromTable'),(24,5,'filepath'),(25,4,'service_channel'),(26,7,'from'),(27,31,'service_channel'),(28,9,'url'),(29,9,'content'),(30,16,'content'),(31,15,'isDirectFromTable'),(32,26,'filepath'),(33,26,'completed'),(34,27,'from_table'),(35,29,'content'),(36,26,'app_name'),(37,9,'btn_txt'),(38,17,'service_channel'),(39,26,'icon'),(40,26,'package_name'),(41,16,'title'),(42,29,'version_code'),(43,24,'nextclassid'),(44,27,'status'),(45,27,'game'),(46,20,'from'),(47,33,'poptitle'),(48,26,'total'),(49,16,'url'),(50,60,'detailFlag'),(51,17,'nextclassid'),(52,5,'from_alert'),(53,16,'version_code'),(54,16,'btn_txt'),(55,27,'title'),(56,9,'fromtable'),(57,25,'status'),(58,9,'version_code'),(59,46,'url'),(60,47,'apkurl'),(61,26,'soft_id'),(62,41,'version_code'),(63,43,'from_alert'),(64,27,'fromtype'),(65,62,'packageName'),(66,26,'url'),(67,60,'packageName'),(68,26,'status'),(69,33,'popurl'),(70,60,'apkURL'),(71,43,'package_name'),(72,60,'iconURL'),(73,51,'params'),(74,20,'isDirectFromTable'),(75,60,'apkTitle'),(76,43,'from_table'),(77,29,'fromtable'),(78,45,'isDirectFromTable'),(79,34,'service_channel'),(80,25,'package_name'),(81,46,'version_code'),(82,60,'imageURL'),(83,59,'np_app_key'),(84,24,'status'),(85,61,'np_app_key'),(86,29,'title'),(87,58,'np_app_key'),(88,29,'package_name'),(89,42,'poptitle'),(90,60,'np_app_key'),(91,25,'version_code'),(92,63,'np_app_key'),(93,27,'filepath'),(94,24,'package_name'),(95,60,'apkVersion'),(96,47,'content'),(97,51,'com.google.ads.AdOpener'),(98,37,'LeftOvalRect'),(99,47,'packagename'),(100,39,'ad'),(101,41,'soft_id'),(102,46,'apk_url'),(103,45,'from'),(104,46,'title'),(105,62,'fileURL'),(106,60,'apkInfo'),(107,29,'btn_txt'),(108,29,'url'),(109,63,'fileURL'),(110,46,'btn_txt'),(111,47,'title'),(112,37,'savedscoretime'),(113,63,'fileName'),(114,43,'game'),(115,60,'apkSize'),(116,37,'isGameOver'),(117,42,'popurl'),(118,60,'apkSoftID'),(119,51,'action'),(120,37,'SmallOvalRect'),(121,19,'service_channel'),(122,43,'status'),(123,41,'NEW_APP_ID'),(124,46,'fromtable'),(125,38,'issavename'),(126,37,'MiddleRect'),(127,37,'lasthistory'),(128,29,'apk_url'),(129,27,'from_alert'),(130,46,'content'),(131,43,'title'),(132,43,'filepath'),(133,37,'RightOvalRect'),(134,37,'RollingRect'),(135,43,'fromtype'),(136,37,'isInputtingName'),(137,48,'NEW_APP_ID'),(138,45,'package_name'),(139,42,'NEW_APP_ID'),(140,46,'package_name'),(141,37,'LastUpdateTime'),(142,71,'shouldShowTitlebar'),(143,71,'overlayTransition'),(144,71,'shouldEnableBottomBar'),(145,72,'videoCompleted'),(146,72,'adName'),(147,71,'shouldResizeOverlay'),(148,71,'cachedAdView'),(149,71,'overlayTitle'),(150,71,'shouldMakeOverlayTransparent'),(151,72,'videoPosition'),(152,71,'shouldShowBottomBar'),(153,72,'logSet'),(154,71,'canAccelerate'),(155,72,'videoAd'),(156,72,'isCachedAd'),(157,72,'cached'),(158,72,'shouldShowBottomBar'),(159,69,'com.google.ads.AdOpener'),(160,70,'A7D1721B9508405D8271AB82AC6D9B3C'),(161,69,'action'),(162,73,'link'),(163,69,'params'),(164,71,'transitionTime');
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
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'s',1,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'r',1,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'s',1,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'r',1,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'a',1,NULL,NULL),(27,27,'a',1,NULL,NULL),(28,28,'a',1,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'s',1,NULL,NULL),(35,35,'r',1,NULL,NULL),(36,36,'a',1,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',1,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',1,NULL,NULL),(44,44,'a',1,NULL,NULL),(45,45,'a',1,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'s',1,NULL,NULL),(49,49,'r',1,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',1,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',1,NULL,NULL),(58,58,'a',1,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'s',0,NULL,NULL),(62,62,'s',0,NULL,NULL),(63,63,'r',0,NULL,NULL),(64,64,'r',1,NULL,NULL),(65,73,'r',1,NULL,NULL),(66,81,'r',1,NULL,NULL),(67,83,'r',1,NULL,NULL),(68,99,'a',1,NULL,NULL),(69,100,'a',0,NULL,NULL),(70,101,'a',0,NULL,NULL),(71,102,'a',0,NULL,NULL),(72,103,'a',0,NULL,NULL),(73,104,'a',0,NULL,NULL),(74,105,'a',0,NULL,NULL),(75,106,'a',1,NULL,NULL),(76,107,'a',0,NULL,NULL),(77,108,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=209 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,2),(3,3,21),(4,4,12),(5,5,9),(6,6,16),(7,7,6),(8,8,8),(9,9,14),(10,10,13),(11,11,21),(12,12,5),(13,13,12),(14,14,5),(15,15,5),(16,16,16),(17,17,5),(18,18,6),(19,18,7),(20,18,9),(21,19,21),(22,20,6),(23,21,8),(24,22,5),(25,23,12),(26,24,4),(27,25,16),(28,26,8),(29,27,5),(30,28,16),(31,28,15),(32,28,14),(33,29,12),(34,30,12),(35,31,12),(36,32,13),(37,33,9),(38,34,14),(39,35,9),(40,36,19),(41,37,9),(42,38,16),(43,39,5),(44,40,12),(45,41,31),(46,42,5),(47,43,12),(48,44,5),(49,45,12),(50,46,17),(51,47,17),(52,48,14),(53,48,16),(54,48,15),(55,49,4),(56,50,12),(57,51,13),(58,52,29),(59,53,9),(60,53,7),(61,53,6),(62,54,5),(63,55,41),(64,56,12),(65,58,12),(66,57,27),(67,59,46),(68,61,52),(69,60,5),(70,62,22),(71,63,59),(72,63,56),(73,63,52),(74,64,43),(75,65,28),(76,66,58),(77,67,5),(78,68,59),(79,69,24),(80,70,50),(81,70,59),(82,72,40),(83,71,56),(84,71,59),(85,73,29),(86,74,49),(87,75,28),(88,75,29),(89,75,20),(90,76,50),(91,77,41),(92,78,59),(93,78,52),(94,79,31),(95,80,43),(96,81,52),(97,81,59),(98,82,26),(99,83,52),(100,84,59),(101,85,22),(102,86,54),(103,86,59),(104,87,17),(105,88,43),(106,89,52),(107,90,43),(108,91,58),(109,92,20),(110,92,29),(111,92,28),(112,93,59),(113,94,25),(114,95,52),(115,96,24),(116,97,47),(117,98,63),(118,99,17),(119,100,36),(120,101,32),(121,102,42),(122,103,36),(123,104,51),(124,105,32),(125,106,45),(126,106,46),(127,106,44),(128,107,22),(129,108,35),(130,109,52),(131,109,59),(132,110,27),(133,111,52),(134,112,44),(135,112,45),(136,112,46),(137,113,31),(138,114,59),(139,115,22),(140,116,49),(141,117,58),(142,118,22),(143,119,43),(144,120,62),(145,121,24),(146,122,60),(147,123,19),(148,124,24),(149,125,60),(150,125,59),(151,126,29),(152,127,43),(153,128,58),(154,129,59),(155,129,56),(156,130,22),(157,131,57),(158,132,60),(159,132,59),(160,133,44),(161,134,24),(162,135,59),(163,135,56),(164,136,44),(165,137,19),(166,138,64),(167,139,35),(168,140,27),(169,141,43),(170,142,43),(171,143,25),(172,144,29),(173,145,40),(174,146,37),(175,147,24),(176,148,46),(177,149,17),(178,150,38),(179,150,40),(180,151,17),(181,152,36),(182,153,32),(183,154,47),(184,155,26),(185,156,41),(186,157,28),(187,158,41),(188,159,35),(189,160,49),(190,161,27),(191,162,26),(192,163,41),(193,164,17),(194,165,43),(195,166,27),(196,167,72),(197,168,72),(198,169,69),(199,170,74),(200,171,72),(201,172,75),(202,173,74),(203,174,72),(204,175,75),(205,176,72),(206,177,72),(207,178,72),(208,179,72);
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
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,2,'<com.DEGrGHfAQ.FSvRapJCKBg: void a()>',3,'a',NULL),(2,2,'<com.DEGrGHfAQ.FSvRapJCKBg: void a(java.lang.String)>',10,'a',NULL),(3,21,'<RWs.UWiGDjvl.FQsLHWHd12: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(4,65,'<be: void onClick(android.view.View)>',221,'a',NULL),(5,9,'<com.android_qhsdanb.NKKbhAJlM10: void onClick(android.view.View)>',66,'a',NULL),(6,16,'<RWs.UWiGDjvl.FQsLHWHd10: void onClick(android.view.View)>',66,'a',NULL),(7,6,'<com.android_qhsdanb.NKKbhAJlM9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(8,8,'<RWs.UWiGDjvl.image.FQsLHWHd19: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',12,'a',NULL),(9,14,'<RWs.UWiGDjvl.FQsLHWHd9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(10,13,'<com.android_qhsdanb.NKKbhAJlM12: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(11,21,'<RWs.UWiGDjvl.FQsLHWHd12: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(12,66,'<l: void onClick(android.view.View)>',239,'a',NULL),(13,12,'<RWs.UWiGDjvl.FQsLHWHd8: void onCreate(android.os.Bundle)>',76,'a',NULL),(14,5,'<com.android_qhsdanb.NKKbhAJlM8: void onCreate(android.os.Bundle)>',90,'s',NULL),(15,5,'<com.android_qhsdanb.NKKbhAJlM8: void onCreate(android.os.Bundle)>',81,'a',NULL),(16,16,'<RWs.UWiGDjvl.FQsLHWHd10: void onClick(android.view.View)>',84,'a',NULL),(17,5,'<com.android_qhsdanb.NKKbhAJlM8: void onCreate(android.os.Bundle)>',177,'a',NULL),(18,7,'<com.android_qhsdanb.NKKbhAJlM2: void a(int,boolean)>',63,'a',NULL),(19,21,'<RWs.UWiGDjvl.FQsLHWHd12: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(20,6,'<com.android_qhsdanb.NKKbhAJlM9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(21,8,'<RWs.UWiGDjvl.image.FQsLHWHd19: void onCreate(android.os.Bundle)>',124,'s',NULL),(22,67,'<g: void onClick(android.view.View)>',221,'a',NULL),(23,68,'<bj: void onClick(android.view.View)>',218,'a',NULL),(24,4,'<com.android_qhsdanb.NKKbhAJlM17: void onCreate(android.os.Bundle)>',82,'s',NULL),(25,16,'<RWs.UWiGDjvl.FQsLHWHd10: void onClick(android.view.View)>',75,'a',NULL),(26,8,'<RWs.UWiGDjvl.image.FQsLHWHd19: void onCreate(android.os.Bundle)>',128,'s',NULL),(27,67,'<g: void onClick(android.view.View)>',242,'a',NULL),(28,15,'<RWs.UWiGDjvl.FQsLHWHd2: void a(int,boolean)>',63,'a',NULL),(29,12,'<RWs.UWiGDjvl.FQsLHWHd8: void onCreate(android.os.Bundle)>',90,'s',NULL),(30,12,'<RWs.UWiGDjvl.FQsLHWHd8: void onCreate(android.os.Bundle)>',81,'a',NULL),(31,65,'<be: void onClick(android.view.View)>',242,'a',NULL),(32,13,'<com.android_qhsdanb.NKKbhAJlM12: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(33,9,'<com.android_qhsdanb.NKKbhAJlM10: void onClick(android.view.View)>',84,'a',NULL),(34,14,'<RWs.UWiGDjvl.FQsLHWHd9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(35,9,'<com.android_qhsdanb.NKKbhAJlM10: void onClick(android.view.View)>',53,'a',NULL),(36,19,'<Tga.mjDUjgpJA.UDltLfLtT1: void onCreate(android.os.Bundle)>',21,'s',NULL),(37,9,'<com.android_qhsdanb.NKKbhAJlM10: void onClick(android.view.View)>',75,'a',NULL),(38,16,'<RWs.UWiGDjvl.FQsLHWHd10: void onClick(android.view.View)>',53,'a',NULL),(39,5,'<com.android_qhsdanb.NKKbhAJlM8: void onCreate(android.os.Bundle)>',33,'s',NULL),(40,12,'<RWs.UWiGDjvl.FQsLHWHd8: void onCreate(android.os.Bundle)>',172,'a',NULL),(41,31,'<Tga.mjDUjgpJA.image.UDltLfLtT14: void onCreate(android.os.Bundle)>',52,'s',NULL),(42,5,'<com.android_qhsdanb.NKKbhAJlM8: void onCreate(android.os.Bundle)>',172,'a',NULL),(43,12,'<RWs.UWiGDjvl.FQsLHWHd8: void onCreate(android.os.Bundle)>',33,'s',NULL),(44,69,'<j: void onClick(android.view.View)>',239,'a',NULL),(45,68,'<bj: void onClick(android.view.View)>',239,'a',NULL),(46,70,'<di: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(47,71,'<dj: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(48,15,'<RWs.UWiGDjvl.FQsLHWHd2: void a(int,boolean)>',10,'s',NULL),(49,4,'<com.android_qhsdanb.NKKbhAJlM17: void onCreate(android.os.Bundle)>',86,'s',NULL),(50,72,'<bf: void onClick(android.view.View)>',218,'a',NULL),(51,13,'<com.android_qhsdanb.NKKbhAJlM12: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(52,29,'<Tga.mjDUjgpJA.UDltLfLtT10: void onClick(android.view.View)>',53,'a',NULL),(53,7,'<com.android_qhsdanb.NKKbhAJlM2: void a(int,boolean)>',10,'s',NULL),(54,69,'<j: void onClick(android.view.View)>',218,'a',NULL),(55,41,'<com.patRQsCtV.PGlvKJiwGWPK: void onCreate(android.os.Bundle)>',61,'s',NULL),(56,12,'<RWs.UWiGDjvl.FQsLHWHd8: void onCreate(android.os.Bundle)>',177,'a',NULL),(57,27,'<Tga.mjDUjgpJA.UDltLfLtT8: void onCreate(android.os.Bundle)>',25,'s',NULL),(58,72,'<bf: void onClick(android.view.View)>',239,'a',NULL),(59,46,'<com.patRQsCtV.MyAppAlertDialog: void onClick(android.view.View)>',48,'a',NULL),(60,66,'<l: void onClick(android.view.View)>',218,'a',NULL),(61,52,'<com.k2.games.bubblesclassic.StartScreen: boolean onOptionsItemSelected(android.view.MenuItem)>',46,'a',NULL),(62,74,'<av: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(63,75,'<com.k2.games.bubblesclassic.TwitterClient: boolean Auth()>',8,'a',NULL),(64,76,'<com.patRQsCtV.ac: void onClick(android.view.View)>',182,'a',NULL),(65,28,'<Tga.mjDUjgpJA.UDltLfLtT9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(66,58,'<com.egEhl.rmOpbJBlnCdg: void onCreate(android.os.Bundle)>',36,'a',NULL),(67,5,'<com.android_qhsdanb.NKKbhAJlM8: void onCreate(android.os.Bundle)>',76,'a',NULL),(68,59,'<com.egEhl.fPssjlnU: void b()>',45,'a',NULL),(69,77,'<bi: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(70,78,'<com.k2.games.bubblesclassic.GameScreen$1: void onClick(android.view.View)>',7,'a',NULL),(71,56,'<com.k2.games.bubblesclassic.EndGameActivity: void onClick(android.view.View)>',30,'a',NULL),(72,40,'<com.scoreloop.android.coreui.HighscoresActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',0),(73,29,'<Tga.mjDUjgpJA.UDltLfLtT10: void onClick(android.view.View)>',75,'a',NULL),(74,49,'<com.patRQsCtV.BootReceiverService: void onReceive(android.content.Context,android.content.Intent)>',33,'s',NULL),(75,20,'<Tga.mjDUjgpJA.UDltLfLtT2: void a(int,boolean)>',63,'a',NULL),(76,50,'<com.k2.games.bubblesclassic.GameScreen: boolean onKeyDown(int,android.view.KeyEvent)>',15,'a',NULL),(77,41,'<com.patRQsCtV.PGlvKJiwGWPK: void onCreate(android.os.Bundle)>',57,'s',NULL),(78,52,'<com.k2.games.bubblesclassic.StartScreen: void onClick(android.view.View)>',32,'a',NULL),(79,79,'<cq: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(80,76,'<com.patRQsCtV.ac: void onClick(android.view.View)>',197,'a',NULL),(81,52,'<com.k2.games.bubblesclassic.StartScreen: void onClick(android.view.View)>',17,'a',NULL),(82,80,'<cf: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(83,52,'<com.k2.games.bubblesclassic.StartScreen: boolean onOptionsItemSelected(android.view.MenuItem)>',41,'a',NULL),(84,59,'<com.egEhl.fPssjlnU: void b()>',55,'a',NULL),(85,74,'<av: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(86,54,'<com.k2.games.bubblesclassic.Statistic: void onClick(android.view.View)>',28,'a',NULL),(87,17,'<Tga.mjDUjgpJA.UDltLfLtT0: void onCreate(android.os.Bundle)>',98,'s',NULL),(88,43,'<com.patRQsCtV.MyAppInfo: void onCreate(android.os.Bundle)>',91,'s',NULL),(89,52,'<com.k2.games.bubblesclassic.StartScreen: boolean onOptionsItemSelected(android.view.MenuItem)>',27,'a',NULL),(90,82,'<com.patRQsCtV.z: void onClick(android.view.View)>',200,'a',NULL),(91,58,'<com.egEhl.rmOpbJBlnCdg: void onCreate(android.os.Bundle)>',21,'a',NULL),(92,20,'<Tga.mjDUjgpJA.UDltLfLtT2: void a(int,boolean)>',10,'s',NULL),(93,59,'<com.egEhl.fPssjlnU: void a()>',3,'a',NULL),(94,25,'<Tga.mjDUjgpJA.UDltLfLtT6: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(95,52,'<com.k2.games.bubblesclassic.StartScreen: boolean onOptionsItemSelected(android.view.MenuItem)>',16,'a',NULL),(96,77,'<bi: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(97,47,'<com.patRQsCtV.kiNrwKavdGufS: void onCreate(android.os.Bundle)>',13,'s',NULL),(98,63,'<com.egEhl.MDVPJLIVPCm: void c(android.content.Context)>',74,'a',NULL),(99,17,'<Tga.mjDUjgpJA.UDltLfLtT0: void onCreate(android.os.Bundle)>',103,'s',NULL),(100,84,'<sms.ipkkuur.wcvb.dqvssqvmlht.StartActivity$3: void onClick(android.view.View)>',6,'a',NULL),(101,32,'<Tga.mjDUjgpJA.image.UDltLfLtT15: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',38,'a',NULL),(102,42,'<com.patRQsCtV.NRorLrbWGUsQQpo: boolean onKeyDown(int,android.view.KeyEvent)>',5,'a',NULL),(103,85,'<sms.ipkkuur.wcvb.dqvssqvmlht.StartActivity$1: void onClick(android.view.View)>',6,'a',NULL),(104,51,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',82,'a',NULL),(105,32,'<Tga.mjDUjgpJA.image.UDltLfLtT15: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',26,'a',NULL),(106,45,'<com.patRQsCtV.AKUjSKLQKFdNN: void a(int,boolean)>',42,'a',NULL),(107,74,'<av: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(108,35,'<Tga.mjDUjgpJA.UDltLfLtT12: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(109,52,'<com.k2.games.bubblesclassic.StartScreen: void onClick(android.view.View)>',26,'a',NULL),(110,27,'<Tga.mjDUjgpJA.UDltLfLtT8: void onCreate(android.os.Bundle)>',108,'a',NULL),(111,52,'<com.k2.games.bubblesclassic.StartScreen: boolean onOptionsItemSelected(android.view.MenuItem)>',20,'a',NULL),(112,45,'<com.patRQsCtV.AKUjSKLQKFdNN: void a(int,boolean)>',10,'s',NULL),(113,31,'<Tga.mjDUjgpJA.image.UDltLfLtT14: void onCreate(android.os.Bundle)>',56,'s',NULL),(114,59,'<com.egEhl.fPssjlnU: void onBackPressed()>',5,'a',NULL),(115,22,'<Tga.mjDUjgpJA.UDltLfLtT3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',52,'a',NULL),(116,49,'<com.patRQsCtV.BootReceiverService: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(117,86,'<com.egEhl.af: void run()>',8,'s',NULL),(118,22,'<Tga.mjDUjgpJA.UDltLfLtT3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',33,'a',NULL),(119,82,'<com.patRQsCtV.z: void onClick(android.view.View)>',185,'a',NULL),(120,62,'<com.egEhl.astfMtFaOBRT: void a(java.lang.String)>',10,'a',NULL),(121,24,'<Tga.mjDUjgpJA.UDltLfLtT5: void onCreate(android.os.Bundle)>',13,'s',NULL),(122,60,'<com.egEhl.OdQPUGkPEJvgUal: void onCreate(android.os.Bundle)>',67,'a',NULL),(123,19,'<Tga.mjDUjgpJA.UDltLfLtT1: void onCreate(android.os.Bundle)>',25,'s',NULL),(124,87,'<bg: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(125,88,'<com.egEhl.p: void f(android.content.Context,java.lang.String)>',10,'a',NULL),(126,29,'<Tga.mjDUjgpJA.UDltLfLtT10: void onClick(android.view.View)>',66,'a',NULL),(127,43,'<com.patRQsCtV.MyAppInfo: void onCreate(android.os.Bundle)>',10,'a',NULL),(128,58,'<com.egEhl.rmOpbJBlnCdg: void onCreate(android.os.Bundle)>',31,'a',0),(129,56,'<com.k2.games.bubblesclassic.EndGameActivity: boolean onKeyDown(int,android.view.KeyEvent)>',9,'a',NULL),(130,22,'<Tga.mjDUjgpJA.UDltLfLtT3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',43,'a',NULL),(131,57,'<com.k2.games.bubblesclassic.TwitterActivity: void onCreate(android.os.Bundle)>',20,'a',0),(132,60,'<com.egEhl.OdQPUGkPEJvgUal: void a(com.egEhl.OdQPUGkPEJvgUal,android.content.Context,java.lang.String)>',5,'a',NULL),(133,44,'<com.patRQsCtV.WalmUAkfNjmTKdg: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(134,24,'<Tga.mjDUjgpJA.UDltLfLtT5: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',28,'a',NULL),(135,56,'<com.k2.games.bubblesclassic.EndGameActivity: void onClick(android.view.View)>',23,'a',NULL),(136,44,'<com.patRQsCtV.WalmUAkfNjmTKdg: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',70,'a',NULL),(137,89,'<bm: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(138,90,'<com.egEhl.ah: void run()>',25,'s',NULL),(139,35,'<Tga.mjDUjgpJA.UDltLfLtT12: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(140,91,'<ar: void onClick(android.view.View)>',239,'a',NULL),(141,43,'<com.patRQsCtV.MyAppInfo: void onCreate(android.os.Bundle)>',41,'s',NULL),(142,92,'<com.patRQsCtV.y: void onClick(android.view.View)>',197,'a',NULL),(143,25,'<Tga.mjDUjgpJA.UDltLfLtT6: void onCreate(android.os.Bundle)>',14,'s',NULL),(144,29,'<Tga.mjDUjgpJA.UDltLfLtT10: void onClick(android.view.View)>',84,'a',NULL),(145,40,'<com.scoreloop.android.coreui.HighscoresActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',0),(146,37,'<sms.ipkkuur.wcvb.dqvssqvmlht.ToiletpaperActivity: void SaveScore(int)>',22,'a',NULL),(147,77,'<bi: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(148,46,'<com.patRQsCtV.MyAppAlertDialog: void onClick(android.view.View)>',61,'a',NULL),(149,71,'<dj: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(150,93,'<sms.ipkkuur.wcvb.dqvssqvmlht.InputNameActivity$1: void requestControllerDidReceiveResponse(com.scoreloop.client.android.core.controller.RequestController)>',13,'a',NULL),(151,71,'<dj: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(152,94,'<com.eutopia.game.moreapp.activity.MoreHelper: void showMoreGames(android.content.Context,com.eutopia.game.moreapp.Ad)>',5,'a',NULL),(153,95,'<cm: void onClick(android.view.View)>',6,'a',NULL),(154,47,'<com.patRQsCtV.kiNrwKavdGufS: void onClick(android.view.View)>',26,'a',NULL),(155,80,'<cf: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(156,96,'<com.patRQsCtV.be: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(157,28,'<Tga.mjDUjgpJA.UDltLfLtT9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(158,97,'<com.patRQsCtV.bf: boolean onKey(android.content.DialogInterface,int,android.view.KeyEvent)>',16,'a',NULL),(159,35,'<Tga.mjDUjgpJA.UDltLfLtT12: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(160,49,'<com.patRQsCtV.BootReceiverService: void onReceive(android.content.Context,android.content.Intent)>',59,'s',NULL),(161,27,'<Tga.mjDUjgpJA.UDltLfLtT8: void onCreate(android.os.Bundle)>',113,'a',NULL),(162,26,'<Tga.mjDUjgpJA.UDltLfLtT7: void onCreate(android.os.Bundle)>',50,'s',NULL),(163,98,'<com.patRQsCtV.bp: void onClick(android.view.View)>',106,'a',NULL),(164,71,'<dj: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(165,92,'<com.patRQsCtV.y: void onClick(android.view.View)>',182,'a',NULL),(166,91,'<ar: void onClick(android.view.View)>',218,'a',NULL),(167,109,'<com.millennialmedia.android.MillennialMediaView: void openVideo()>',10,'r',NULL),(168,103,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',180,'a',NULL),(169,100,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(170,105,'<com.vJqkk.MgrDKMpbq: void a(java.lang.String)>',10,'a',NULL),(171,103,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',228,'a',NULL),(172,106,'<com.vJqkk.VkTObNuMpK: void a()>',3,'a',NULL),(173,105,'<com.vJqkk.MgrDKMpbq: void a()>',3,'a',NULL),(174,103,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',208,'a',NULL),(175,110,'<com.nd.dianjin.DianJinPlatform: void showOfferWall(android.content.Context,com.nd.dianjin.DianJinPlatform$Oriention)>',7,'a',NULL),(176,103,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',188,'a',NULL),(177,103,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',217,'a',NULL),(178,103,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',236,'a',NULL),(179,103,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',159,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,2),(2,4,2),(3,5,2),(4,6,2),(5,7,2),(6,8,2),(7,9,2),(8,10,1),(9,12,1),(10,15,1),(11,16,6),(12,17,1),(13,18,1),(14,19,1),(15,26,6),(16,28,8),(17,29,10),(18,30,2),(19,31,2),(20,32,2),(21,33,2),(22,34,11),(23,35,4),(24,36,12),(25,38,1),(26,40,1),(27,42,1),(28,43,1),(29,45,1),(30,46,13),(31,47,1),(32,48,1),(33,50,1),(34,51,1),(35,53,1),(36,54,14),(37,55,4),(38,57,15),(39,60,16),(40,63,17),(41,64,1),(42,65,1),(43,66,1),(44,67,2),(45,68,1),(46,69,1),(47,70,1),(48,71,1),(49,72,1),(50,76,2),(51,77,13),(52,79,2),(53,81,2),(54,84,2),(55,86,1),(56,88,1),(57,90,2),(58,92,1),(59,93,2),(60,95,2),(61,96,1),(62,98,2),(63,101,2),(64,103,2),(65,105,2),(66,107,4),(67,110,18),(68,112,2),(69,113,2),(70,114,1),(71,116,1),(72,117,19),(73,119,1),(74,121,1),(75,124,21),(76,127,22),(77,129,1),(78,131,1),(79,133,1),(80,136,1),(81,137,2),(82,142,2),(83,145,2),(84,148,1),(85,147,23),(86,149,2),(87,150,1),(88,151,23),(89,152,1),(90,153,24),(91,154,2),(92,155,1),(93,161,2),(94,165,2),(95,166,2),(96,168,2),(97,169,2),(98,170,1),(99,172,1),(100,173,2),(101,175,2),(102,176,2),(103,177,1),(104,178,2),(105,180,1),(106,182,1),(107,183,1),(108,184,1),(109,186,1),(110,189,2),(111,191,24),(112,192,1),(113,194,1),(114,195,1),(115,196,1),(116,197,1),(117,198,1),(118,199,1),(119,201,1),(120,205,2),(121,206,2),(122,212,1),(123,213,1),(124,214,1),(125,216,1),(126,217,1),(127,220,18),(128,225,2),(129,226,2),(130,227,2),(131,228,2),(132,229,2),(133,230,2),(134,231,25),(135,233,2),(136,234,23),(137,235,23),(138,236,2),(139,237,2),(140,240,26),(141,242,2),(142,244,2),(143,245,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,10,1),(2,12,4),(3,15,1),(4,17,4),(5,18,1),(6,19,4),(7,38,1),(8,40,4),(9,42,1),(10,43,4),(11,45,1),(12,47,4),(13,48,1),(14,50,4),(15,51,1),(16,53,4),(17,64,1),(18,65,1),(19,66,4),(20,68,4),(21,69,1),(22,70,1),(23,71,4),(24,72,4),(25,86,1),(26,88,4),(27,92,1),(28,96,4),(29,114,1),(30,116,4),(31,119,1),(32,121,4),(33,129,1),(34,131,4),(35,133,1),(36,136,4),(37,148,1),(38,150,4),(39,152,1),(40,155,4),(41,170,1),(42,172,4),(43,177,1),(44,180,4),(45,182,1),(46,183,1),(47,184,4),(48,186,4),(49,192,1),(50,194,4),(51,195,1),(52,196,1),(53,197,4),(54,198,4),(55,199,1),(56,201,4),(57,212,6),(58,213,1),(59,214,4),(60,216,1),(61,217,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/batteryacidgames/streetball/StreetballActivity'),(2,3,'RWs/UWiGDjvl/FQsLHWHd11'),(3,11,'RWs/UWiGDjvl/image/FQsLHWHd18'),(4,14,'com/android_qhsdanb/NKKbhAJlM11'),(5,13,'RWs/UWiGDjvl/FQsLHWHd8'),(6,16,'RWs/UWiGDjvl/FQsLHWHd11'),(7,20,'RWs/UWiGDjvl/image/FQsLHWHd19'),(8,21,'com/android_qhsdanb/NKKbhAJlM11'),(9,22,'com/android_qhsdanb/NKKbhAJlM17'),(10,24,'com/android_qhsdanb/NKKbhAJlM17'),(11,23,'RWs/UWiGDjvl/FQsLHWHd10'),(12,25,'com/android_qhsdanb/NKKbhAJlM17'),(13,26,'RWs/UWiGDjvl/FQsLHWHd11'),(14,27,'com/android_qhsdanb/NKKbhAJlM8'),(15,28,'RWs/UWiGDjvl/FQsLHWHd11'),(16,29,'RWs/UWiGDjvl/FQsLHWHd11'),(17,34,'com/android_qhsdanb/NKKbhAJlM11'),(18,36,'com/android_qhsdanb/NKKbhAJlM11'),(19,37,'RWs/UWiGDjvl/FQsLHWHd11'),(20,39,'RWs/UWiGDjvl/image/FQsLHWHd19'),(21,41,'RWs/UWiGDjvl/FQsLHWHd11'),(22,44,'RWs/UWiGDjvl/image/FQsLHWHd19'),(23,46,'com/android_qhsdanb/NKKbhAJlM11'),(24,49,'com/android_qhsdanb/NKKbhAJlM10'),(25,52,'com/android_qhsdanb/NKKbhAJlM8'),(26,54,'Tga/mjDUjgpJA/UDltLfLtT11'),(27,57,'Tga/mjDUjgpJA/UDltLfLtT11'),(28,56,'RWs/UWiGDjvl/FQsLHWHd8'),(29,58,'com/android_qhsdanb/NKKbhAJlM11'),(30,59,'RWs/UWiGDjvl/image/FQsLHWHd19'),(31,61,'com/android_qhsdanb/NKKbhAJlM17'),(32,60,'Tga/mjDUjgpJA/UDltLfLtT11'),(33,62,'RWs/UWiGDjvl/FQsLHWHd11'),(34,63,'Tga/mjDUjgpJA/UDltLfLtT11'),(35,73,'Tga/mjDUjgpJA/UDltLfLtT0'),(36,74,'RWs/UWiGDjvl/FQsLHWHd11'),(37,75,'com/android_qhsdanb/NKKbhAJlM11'),(38,77,'com/android_qhsdanb/NKKbhAJlM11'),(39,78,'Tga/mjDUjgpJA/UDltLfLtT8'),(40,80,'com/android_qhsdanb/NKKbhAJlM11'),(41,82,'com/patRQsCtV/MyAppService'),(42,83,'RWs/UWiGDjvl/image/FQsLHWHd19'),(43,85,'Tga/mjDUjgpJA/UDltLfLtT11'),(44,89,'com/k2/games/bubblesclassic/Statistic'),(45,87,'com/patRQsCtV/MyAppInfo'),(46,91,'Tga/mjDUjgpJA/UDltLfLtT8'),(47,94,'com/k2/games/bubblesclassic/TwitterActivity'),(48,99,'com/egEhl/fPssjlnU'),(49,97,'Tga/mjDUjgpJA/UDltLfLtT8'),(50,100,'com/android_qhsdanb/NKKbhAJlM17'),(51,102,'com/k2/games/bubblesclassic/GameScreen'),(52,104,'Tga/mjDUjgpJA/UDltLfLtT8'),(53,106,'com/k2/games/bubblesclassic/StartScreen'),(54,108,'Tga/mjDUjgpJA/image/UDltLfLtT14'),(55,109,'com/k2/games/bubblesclassic/StartScreen'),(56,110,'com/patRQsCtV/MyAppService'),(57,111,'com/patRQsCtV/MyAppService'),(58,115,'com/k2/games/bubblesclassic/GameScreen'),(59,118,'com/k2/games/bubblesclassic/GameScreen'),(60,120,'com/k2/games/bubblesclassic/GameScreen'),(61,122,'Tga/mjDUjgpJA/UDltLfLtT0'),(62,123,'com/k2/games/bubblesclassic/Statistic'),(63,125,'com/patRQsCtV/MyAppService'),(64,126,'com/k2/games/bubblesclassic/GamePreferences'),(65,124,'Tga/mjDUjgpJA/UDltLfLtT11'),(66,127,'Tga/mjDUjgpJA/UDltLfLtT11'),(67,128,'com/egEhl/fPssjlnU'),(68,130,'Tga/mjDUjgpJA/UDltLfLtT11'),(69,132,'com/k2/games/bubblesclassic/GameScreen'),(70,134,'Tga/mjDUjgpJA/UDltLfLtT8'),(71,135,'com/k2/games/bubblesclassic/GameScreen'),(72,138,'com/patRQsCtV/MyAppService'),(73,140,'Tga/mjDUjgpJA/UDltLfLtT11'),(74,141,'com/scoreloop/android/coreui/HighscoresActivity'),(75,139,'com/egEhl/OdQPUGkPEJvgUal'),(76,143,'sms/ipkkuur/wcvb/dqvssqvmlht/StartActivity'),(77,144,'sms/ipkkuur/wcvb/dqvssqvmlht/ToiletpaperActivity'),(78,146,'Tga/mjDUjgpJA/UDltLfLtT8'),(79,153,'Tga/mjDUjgpJA/UDltLfLtT11'),(80,156,'Tga/mjDUjgpJA/UDltLfLtT0'),(81,157,'com/k2/games/bubblesclassic/About'),(82,158,'com/patRQsCtV/MyAppService'),(83,159,'Tga/mjDUjgpJA/UDltLfLtT11'),(84,160,'com/k2/games/bubblesclassic/GameScreen'),(85,162,'com/patRQsCtV/MyAppService'),(86,163,'com/egEhl/mbwriEecLIQTii'),(87,164,'Tga/mjDUjgpJA/UDltLfLtT8'),(88,167,'Tga/mjDUjgpJA/UDltLfLtT11'),(89,171,'Tga/mjDUjgpJA/UDltLfLtT11'),(90,174,'Tga/mjDUjgpJA/UDltLfLtT0'),(91,179,'com/k2/games/bubblesclassic/StartScreen'),(92,181,'Tga/mjDUjgpJA/UDltLfLtT0'),(93,185,'Tga/mjDUjgpJA/UDltLfLtT8'),(94,187,'com/k2/games/bubblesclassic/GameScreen'),(95,188,'com/patRQsCtV/MyAppInfo'),(96,190,'com/egEhl/mbwriEecLIQTii'),(97,191,'Tga/mjDUjgpJA/UDltLfLtT11'),(98,193,'com/patRQsCtV/MyAppService'),(99,200,'Tga/mjDUjgpJA/UDltLfLtT11'),(100,202,'Tga/mjDUjgpJA/UDltLfLtT10'),(101,203,'sms/ipkkuur/wcvb/dqvssqvmlht/InputNameActivity'),(102,204,'Tga/mjDUjgpJA/UDltLfLtT0'),(103,207,'Tga/mjDUjgpJA/UDltLfLtT0'),(104,208,'com/scoreloop/android/coreui/HighscoresActivity'),(105,209,'Tga/mjDUjgpJA/UDltLfLtT0'),(106,210,'com/eutopia/game/moreapp/activity/MoreActivity'),(107,211,'Tga/mjDUjgpJA/image/UDltLfLtT14'),(108,215,'sms/ipkkuur/wcvb/dqvssqvmlht/StartActivity'),(109,218,'sms/ipkkuur/wcvb/dqvssqvmlht/StartActivity'),(110,219,'Tga/mjDUjgpJA/UDltLfLtT11'),(111,220,'com/patRQsCtV/MyAppService'),(112,221,'Tga/mjDUjgpJA/UDltLfLtT0'),(113,222,'Tga/mjDUjgpJA/UDltLfLtT11'),(114,223,'com/patRQsCtV/NRorLrbWGUsQQpo'),(115,224,'Tga/mjDUjgpJA/UDltLfLtT0'),(116,232,'com/millennialmedia/android/MMAdViewOverlayActivity'),(117,238,'com/uqssedtmct/qqwmrcsdhgmkj/AppActivity'),(118,239,'com/uqssedtmct/qqwmrcsdhgmkj/AppActivity'),(119,241,'com/nd/dianjin/activity/OfferAppActivity'),(120,243,'com/millennialmedia/android/MMAdViewOverlayActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,2,1),(2,4,2),(3,6,3),(4,5,4),(5,7,5),(6,8,6),(7,9,7),(8,30,8),(9,31,9),(10,32,10),(11,33,11),(12,67,12),(13,76,13),(14,79,14),(15,81,15),(16,84,16),(17,90,17),(18,93,18),(19,95,19),(20,98,20),(21,101,21),(22,103,22),(23,105,23),(24,112,24),(25,113,25),(26,117,26),(27,137,27),(28,142,28),(29,145,29),(30,147,30),(31,149,31),(32,151,32),(33,154,33),(34,161,34),(35,165,35),(36,166,36),(37,168,37),(38,169,38),(39,173,39),(40,175,40),(41,176,41),(42,178,42),(43,189,43),(44,205,44),(45,206,45),(46,225,46),(47,227,47),(48,226,48),(49,228,49),(50,229,50),(51,230,51),(52,232,52),(53,233,53),(54,234,54),(55,235,55),(56,236,56),(57,237,57),(58,240,58),(59,242,59),(60,243,60),(61,244,61),(62,245,62);
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
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,11,'startid'),(2,11,'position'),(3,13,'game'),(4,13,'fromtype'),(5,23,'title'),(6,23,'btn_txt'),(7,23,'need_adb_flag'),(8,23,'cont'),(9,23,'close_flag'),(10,27,'game'),(11,27,'fromtype'),(12,49,'title'),(13,49,'btn_txt'),(14,49,'need_adb_flag'),(15,49,'cont'),(16,49,'close_flag'),(17,52,'id'),(18,52,'from_alert'),(19,52,'detail_flag'),(20,56,'id'),(21,56,'from_alert'),(22,56,'detail_flag'),(23,73,'clicked'),(24,78,'id'),(25,78,'from_alert'),(26,78,'detail_flag'),(27,87,'id'),(28,87,'from_alert'),(29,87,'detail_flag'),(30,91,'title'),(31,91,'game'),(32,91,'fromtype'),(33,97,'game'),(34,97,'fromtype'),(35,104,'title'),(36,104,'game'),(37,104,'fromtype'),(38,122,'title'),(39,122,'nextclassid'),(40,122,'clicked'),(41,134,'game'),(42,134,'fromtype'),(43,139,'apkVersion'),(44,139,'apkURL'),(45,139,'apkInfo'),(46,139,'packageName'),(47,139,'apkSoftID'),(48,139,'apkTitle'),(49,139,'iconURL'),(50,139,'apkSize'),(51,139,'imageURL'),(52,146,'game'),(53,146,'fromtype'),(54,164,'game'),(55,164,'fromtype'),(56,174,'title'),(57,174,'nextclassid'),(58,174,'clicked'),(59,181,'nextclassid'),(60,181,'clicked'),(61,185,'title'),(62,185,'game'),(63,185,'fromtype'),(64,188,'game'),(65,188,'fromtype'),(66,202,'title'),(67,202,'btn_txt'),(68,202,'need_adb_flag'),(69,202,'cont'),(70,202,'close_flag'),(71,203,'level'),(72,203,'lasthistory'),(73,203,'issavename'),(74,203,'savescoretime'),(75,204,'title'),(76,204,'nextclassid'),(77,204,'clicked'),(78,207,'clicked'),(79,209,'clicked'),(80,210,'ad'),(81,223,'popurl'),(82,223,'poptitle'),(83,224,'clicked'),(84,231,'command'),(85,232,'cachedAdView'),(86,241,'oriention'),(87,243,'cachedAdView');
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,2,1),(2,3,1),(3,4,1),(4,5,1),(5,6,1),(6,7,1),(7,8,1),(8,9,1),(9,10,3),(10,11,1),(11,12,1),(12,13,1),(13,14,1),(14,15,3),(15,16,1),(16,17,1),(17,18,1),(18,19,1),(19,20,1),(20,21,1),(21,22,4),(22,23,1),(23,24,1),(24,25,3),(25,27,1),(26,28,1),(27,29,1),(28,30,1),(29,31,1),(30,32,3),(31,32,5),(32,34,2),(33,35,1),(34,36,5),(35,37,7),(36,38,9),(37,39,9),(38,40,7),(39,41,9),(40,42,5),(41,43,20),(42,44,20),(43,44,5),(44,45,9),(45,46,7),(46,47,7),(47,49,1),(48,50,9);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,2,1),(2,3,1),(3,3,2),(4,7,1),(5,7,2),(6,8,1),(7,13,1),(8,23,1),(9,24,1),(10,27,1),(11,31,1),(12,34,2),(13,34,3),(14,35,1),(15,37,5),(16,38,5),(17,39,5),(18,40,5),(19,41,5),(20,45,5),(21,46,5),(22,47,5),(23,49,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,34,'x-oauthflow-twitter','callback',NULL,NULL,NULL,NULL),(2,37,'package',NULL,NULL,NULL,NULL,NULL),(3,38,'package',NULL,NULL,NULL,NULL,NULL),(4,39,'package',NULL,NULL,NULL,NULL,NULL),(5,40,'package',NULL,NULL,NULL,NULL,NULL),(6,41,'package',NULL,NULL,NULL,NULL,NULL),(7,45,'package',NULL,NULL,NULL,NULL,NULL),(8,46,'package',NULL,NULL,NULL,NULL,NULL),(9,47,'package',NULL,NULL,NULL,NULL,NULL),(10,50,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,2,'application','vnd.android.package-archive'),(2,4,'application','vnd.android.package-archive'),(3,5,'application','vnd.android.package-archive'),(4,30,'application','vnd.android.package-archive'),(5,31,'application','vnd.android.package-archive'),(6,32,'application','vnd.android.package-archive'),(7,33,'application','vnd.android.package-archive'),(8,67,'application','vnd.android.package-archive'),(9,76,'application','vnd.android.package-archive'),(10,79,'application','vnd.android.package-archive'),(11,81,'application','vnd.android.package-archive'),(12,84,'application','vnd.android.package-archive'),(13,90,'application','vnd.android.package-archive'),(14,93,'application','vnd.android.package-archive'),(15,101,'(.*)','(.*)'),(16,103,'(.*)','(.*)'),(17,113,'application','vnd.android.package-archive'),(18,147,'(.*)','(.*)'),(19,166,'application','vnd.android.package-archive'),(20,169,'(.*)','(.*)'),(21,173,'(.*)','(.*)'),(22,175,'application','vnd.android.package-archive'),(23,189,'application','vnd.android.package-archive'),(24,226,'application','vnd.android.package-archive'),(25,228,'(.*)','(.*)'),(26,229,'application','vnd.android.package-archive'),(27,230,'(.*)','(.*)'),(28,234,'(.*)','(.*)'),(29,236,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.rgupfmssjimrnwhh.owkshtketp'),(2,3,'RWs.UWiGDjvl'),(3,10,'(.*)'),(4,11,'RWs.UWiGDjvl'),(5,12,'(.*)'),(6,14,'com.android_qhsdanb'),(7,13,'RWs.UWiGDjvl'),(8,15,'(.*)'),(9,16,'RWs.UWiGDjvl'),(10,17,''),(11,18,''),(12,19,'(.*)'),(13,20,'RWs.UWiGDjvl'),(14,21,'com.android_qhsdanb'),(15,22,'com.android_qhsdanb'),(16,24,'com.android_qhsdanb'),(17,23,'RWs.UWiGDjvl'),(18,25,'com.android_qhsdanb'),(19,26,'RWs.UWiGDjvl'),(20,27,'com.android_qhsdanb'),(21,28,'RWs.UWiGDjvl'),(22,29,'RWs.UWiGDjvl'),(23,34,'com.android_qhsdanb'),(24,36,'com.android_qhsdanb'),(25,37,'RWs.UWiGDjvl'),(26,38,'(.*)'),(27,39,'RWs.UWiGDjvl'),(28,40,''),(29,41,'RWs.UWiGDjvl'),(30,42,''),(31,43,'(.*)'),(32,44,'RWs.UWiGDjvl'),(33,45,'(.*)'),(34,46,'com.android_qhsdanb'),(35,47,''),(36,48,''),(37,50,'(.*)'),(38,49,'com.android_qhsdanb'),(39,51,'(.*)'),(40,52,'com.android_qhsdanb'),(41,53,'(.*)'),(42,54,'Tga.mjDUjgpJA'),(43,56,'RWs.UWiGDjvl'),(44,57,'Tga.mjDUjgpJA'),(45,58,'com.android_qhsdanb'),(46,59,'RWs.UWiGDjvl'),(47,61,'com.android_qhsdanb'),(48,60,'Tga.mjDUjgpJA'),(49,62,'RWs.UWiGDjvl'),(50,63,'Tga.mjDUjgpJA'),(51,64,'(.*)'),(52,65,'(.*)'),(53,66,''),(54,68,''),(55,69,''),(56,70,''),(57,71,'(.*)'),(58,72,'(.*)'),(59,73,'Tga.mjDUjgpJA'),(60,74,'RWs.UWiGDjvl'),(61,75,'com.android_qhsdanb'),(62,77,'com.android_qhsdanb'),(63,78,'Tga.mjDUjgpJA'),(64,80,'com.android_qhsdanb'),(65,82,'sms.ipkkuur.wcvb.dqvssqvmlht'),(66,83,'RWs.UWiGDjvl'),(67,85,'Tga.mjDUjgpJA'),(68,86,'(.*)'),(69,89,'com.cq.nivnt.fgwoklpskbkqha'),(70,88,''),(71,87,'sms.ipkkuur.wcvb.dqvssqvmlht'),(72,92,''),(73,91,'Tga.mjDUjgpJA'),(74,94,'com.cq.nivnt.fgwoklpskbkqha'),(75,96,'(.*)'),(76,99,'com.cq.nivnt.fgwoklpskbkqha'),(77,97,'Tga.mjDUjgpJA'),(78,100,'com.android_qhsdanb'),(79,102,'com.cq.nivnt.fgwoklpskbkqha'),(80,104,'Tga.mjDUjgpJA'),(81,106,'com.cq.nivnt.fgwoklpskbkqha'),(82,108,'Tga.mjDUjgpJA'),(83,109,'com.cq.nivnt.fgwoklpskbkqha'),(84,110,'sms.ipkkuur.wcvb.dqvssqvmlht'),(85,111,'sms.ipkkuur.wcvb.dqvssqvmlht'),(86,114,'(.*)'),(87,115,'com.cq.nivnt.fgwoklpskbkqha'),(88,116,''),(89,118,'com.cq.nivnt.fgwoklpskbkqha'),(90,119,''),(91,120,'com.cq.nivnt.fgwoklpskbkqha'),(92,121,'(.*)'),(93,122,'Tga.mjDUjgpJA'),(94,123,'com.cq.nivnt.fgwoklpskbkqha'),(95,125,'sms.ipkkuur.wcvb.dqvssqvmlht'),(96,126,'com.cq.nivnt.fgwoklpskbkqha'),(97,124,'Tga.mjDUjgpJA'),(98,127,'Tga.mjDUjgpJA'),(99,128,'com.cq.nivnt.fgwoklpskbkqha'),(100,129,'(.*)'),(101,130,'Tga.mjDUjgpJA'),(102,132,'com.cq.nivnt.fgwoklpskbkqha'),(103,131,''),(104,133,''),(105,134,'Tga.mjDUjgpJA'),(106,135,'com.cq.nivnt.fgwoklpskbkqha'),(107,136,'(.*)'),(108,138,'sms.ipkkuur.wcvb.dqvssqvmlht'),(109,140,'Tga.mjDUjgpJA'),(110,141,'sms.ipkkuur.wcvb.dqvssqvmlht'),(111,139,'com.cq.nivnt.fgwoklpskbkqha'),(112,143,'sms.ipkkuur.wcvb.dqvssqvmlht'),(113,144,'sms.ipkkuur.wcvb.dqvssqvmlht'),(114,146,'Tga.mjDUjgpJA'),(115,148,'(.*)'),(116,150,''),(117,152,''),(118,153,'Tga.mjDUjgpJA'),(119,155,'(.*)'),(120,156,'Tga.mjDUjgpJA'),(121,157,'com.cq.nivnt.fgwoklpskbkqha'),(122,158,'sms.ipkkuur.wcvb.dqvssqvmlht'),(123,159,'Tga.mjDUjgpJA'),(124,160,'com.cq.nivnt.fgwoklpskbkqha'),(125,162,'sms.ipkkuur.wcvb.dqvssqvmlht'),(126,163,'com.cq.nivnt.fgwoklpskbkqha'),(127,164,'Tga.mjDUjgpJA'),(128,167,'Tga.mjDUjgpJA'),(129,170,'(.*)'),(130,171,'Tga.mjDUjgpJA'),(131,172,'(.*)'),(132,174,'Tga.mjDUjgpJA'),(133,177,'(.*)'),(134,179,'com.cq.nivnt.fgwoklpskbkqha'),(135,180,'(.*)'),(136,181,'Tga.mjDUjgpJA'),(137,182,'(.*)'),(138,183,'(.*)'),(139,184,'(.*)'),(140,186,'(.*)'),(141,185,'Tga.mjDUjgpJA'),(142,187,'com.cq.nivnt.fgwoklpskbkqha'),(143,188,'sms.ipkkuur.wcvb.dqvssqvmlht'),(144,190,'com.cq.nivnt.fgwoklpskbkqha'),(145,191,'Tga.mjDUjgpJA'),(146,192,'(.*)'),(147,193,'sms.ipkkuur.wcvb.dqvssqvmlht'),(148,194,''),(149,195,'(.*)'),(150,196,''),(151,197,''),(152,198,'(.*)'),(153,199,''),(154,200,'Tga.mjDUjgpJA'),(155,201,'(.*)'),(156,202,'Tga.mjDUjgpJA'),(157,203,'sms.ipkkuur.wcvb.dqvssqvmlht'),(158,204,'Tga.mjDUjgpJA'),(159,207,'Tga.mjDUjgpJA'),(160,208,'sms.ipkkuur.wcvb.dqvssqvmlht'),(161,209,'Tga.mjDUjgpJA'),(162,210,'sms.ipkkuur.wcvb.dqvssqvmlht'),(163,211,'Tga.mjDUjgpJA'),(164,213,'NULL-CONSTANT'),(165,214,'NULL-CONSTANT'),(166,215,'sms.ipkkuur.wcvb.dqvssqvmlht'),(167,216,'(.*)'),(168,217,'(.*)'),(169,218,'sms.ipkkuur.wcvb.dqvssqvmlht'),(170,219,'Tga.mjDUjgpJA'),(171,220,'sms.ipkkuur.wcvb.dqvssqvmlht'),(172,221,'Tga.mjDUjgpJA'),(173,222,'Tga.mjDUjgpJA'),(174,223,'sms.ipkkuur.wcvb.dqvssqvmlht'),(175,224,'Tga.mjDUjgpJA'),(176,232,'com.uqssedtmct.qqwmrcsdhgmkj'),(177,238,'com.uqssedtmct.qqwmrcsdhgmkj'),(178,239,'com.uqssedtmct.qqwmrcsdhgmkj'),(179,241,'com.uqssedtmct.qqwmrcsdhgmkj'),(180,243,'com.uqssedtmct.qqwmrcsdhgmkj');
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,3,0),(3,4,0),(4,5,0),(5,6,0),(6,7,0),(7,8,0),(8,10,0),(9,12,0),(10,13,0),(11,14,0),(12,15,0),(13,18,0),(14,20,0),(15,21,0),(16,24,0),(17,25,0),(18,26,0),(19,27,0),(20,28,0),(21,29,0),(22,30,0),(23,31,0),(24,34,0),(25,35,0),(26,36,0),(27,41,0),(28,43,0),(29,44,0),(30,45,0),(31,48,0),(32,49,0),(33,52,0),(34,57,0),(35,58,0),(36,64,0),(37,21,0),(38,13,0),(39,21,0),(40,13,0),(41,35,0),(42,65,0),(43,66,0),(44,67,0),(45,49,0),(46,49,0),(47,35,0),(48,68,0),(49,75,0),(50,77,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=246 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,3,0,0),(4,4,1,0),(5,4,1,0),(6,5,1,0),(7,5,1,0),(8,6,1,0),(9,6,1,0),(10,7,1,0),(11,8,0,0),(12,7,1,0),(13,9,0,0),(14,10,0,0),(15,12,1,0),(16,11,0,0),(17,12,1,0),(18,12,1,0),(19,12,1,0),(20,13,0,0),(21,14,0,0),(22,15,0,0),(23,16,0,0),(24,17,0,0),(25,18,0,0),(26,19,0,0),(27,20,0,0),(28,21,0,0),(29,21,0,0),(30,22,1,0),(31,23,1,0),(32,22,1,0),(33,23,1,0),(34,24,0,0),(35,25,1,0),(36,24,0,0),(37,26,0,0),(38,27,1,0),(39,28,0,0),(40,27,1,0),(41,29,0,0),(42,27,1,0),(43,27,1,0),(44,30,0,0),(45,31,1,0),(46,32,0,0),(47,31,1,0),(48,31,1,0),(49,33,0,0),(50,31,1,0),(51,34,1,0),(52,35,0,0),(53,34,1,0),(54,36,0,0),(55,37,1,0),(56,38,0,0),(57,36,0,0),(58,39,0,0),(59,40,0,0),(60,41,0,0),(61,42,0,0),(62,43,0,0),(63,41,0,0),(64,44,1,0),(65,45,1,0),(66,44,1,0),(67,46,1,0),(68,45,1,0),(69,44,1,0),(70,45,1,0),(71,44,1,0),(72,45,1,0),(73,47,0,0),(74,48,0,0),(75,49,0,0),(76,50,1,0),(77,51,0,0),(78,52,0,0),(79,50,1,0),(80,53,0,0),(81,54,1,0),(82,55,0,0),(83,56,0,0),(84,54,1,0),(85,57,0,0),(86,58,1,0),(87,59,0,0),(88,58,1,0),(89,61,0,0),(90,60,1,0),(91,62,0,0),(92,58,1,0),(93,60,1,0),(94,63,0,0),(95,64,1,0),(96,58,1,0),(97,65,0,0),(98,64,1,0),(99,66,0,0),(100,67,0,0),(101,64,1,0),(102,68,0,0),(103,64,1,0),(104,69,0,0),(105,70,1,0),(106,71,0,0),(107,73,1,0),(108,75,0,0),(109,76,0,0),(110,74,0,0),(111,77,0,0),(112,78,1,0),(113,79,1,0),(114,80,1,0),(115,81,0,0),(116,80,1,0),(117,82,1,0),(118,83,0,0),(119,80,1,0),(120,84,0,0),(121,80,1,0),(122,85,0,0),(123,86,0,0),(124,87,0,0),(125,88,0,0),(126,89,0,0),(127,87,0,0),(128,91,0,0),(129,90,1,0),(130,92,0,0),(131,90,1,0),(132,93,0,0),(133,90,1,0),(134,94,0,0),(135,95,0,0),(136,90,1,0),(137,96,1,0),(138,97,0,0),(139,98,0,0),(140,99,0,0),(141,100,0,0),(142,101,1,0),(143,102,0,0),(144,103,0,0),(145,104,1,0),(146,105,0,0),(147,104,1,0),(148,106,1,0),(149,107,1,0),(150,106,1,0),(151,104,1,0),(152,106,1,0),(153,108,0,0),(154,109,1,0),(155,106,1,0),(156,110,0,0),(157,111,0,0),(158,112,0,0),(159,113,0,0),(160,114,0,0),(161,115,1,0),(162,116,0,0),(163,117,0,0),(164,118,0,0),(165,119,1,0),(166,120,1,0),(167,121,0,0),(168,119,1,0),(169,119,1,0),(170,122,1,0),(171,123,0,0),(172,122,1,0),(173,119,1,0),(174,124,0,0),(175,125,1,0),(176,126,1,0),(177,127,1,0),(178,126,1,0),(179,129,0,0),(180,127,1,0),(181,130,0,0),(182,132,1,0),(183,133,1,0),(184,132,1,0),(185,134,0,0),(186,133,1,0),(187,135,0,0),(188,136,0,0),(189,137,1,0),(190,138,0,0),(191,139,0,0),(192,140,1,0),(193,141,0,0),(194,140,1,0),(195,142,1,0),(196,140,1,0),(197,142,1,0),(198,140,1,0),(199,142,1,0),(200,143,0,0),(201,142,1,0),(202,144,0,0),(203,146,0,0),(204,147,0,0),(205,148,1,0),(206,148,1,0),(207,149,0,0),(208,150,0,0),(209,151,0,0),(210,152,0,0),(211,153,0,0),(212,154,1,0),(213,155,1,0),(214,155,1,0),(215,156,0,0),(216,157,1,0),(217,157,1,0),(218,158,0,0),(219,159,0,0),(220,160,0,0),(221,161,0,0),(222,162,0,0),(223,163,0,0),(224,164,0,0),(225,165,1,0),(226,166,1,0),(227,165,1,0),(228,165,1,0),(229,166,1,0),(230,165,1,0),(231,167,1,0),(232,168,0,0),(233,169,1,0),(234,169,1,0),(235,169,1,0),(236,170,1,0),(237,171,1,0),(238,172,0,0),(239,173,0,0),(240,174,1,0),(241,175,0,0),(242,176,1,0),(243,177,0,0),(244,178,1,0),(245,179,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=1723 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,10,36,2,NULL),(2,12,36,2,NULL),(3,6,36,2,NULL),(4,7,36,2,NULL),(5,55,36,2,NULL),(6,51,36,2,NULL),(7,53,36,2,NULL),(8,8,36,2,NULL),(9,9,36,2,NULL),(10,35,36,2,NULL),(11,161,36,2,NULL),(12,216,36,2,NULL),(13,217,36,2,NULL),(14,107,36,2,NULL),(15,176,36,2,NULL),(16,178,36,2,NULL),(17,142,36,2,NULL),(18,177,36,2,NULL),(19,180,36,2,NULL),(20,183,36,2,NULL),(21,186,36,2,NULL),(22,148,36,2,NULL),(23,150,36,2,NULL),(24,152,36,2,NULL),(25,155,36,2,NULL),(26,205,36,2,NULL),(27,206,36,2,NULL),(28,212,36,2,NULL),(29,145,36,2,NULL),(30,151,36,2,NULL),(31,170,36,2,NULL),(32,172,36,2,NULL),(33,182,36,2,NULL),(34,184,36,2,NULL),(35,233,36,2,NULL),(36,235,36,2,NULL),(37,237,36,2,NULL),(38,240,36,2,NULL),(39,242,36,2,NULL),(40,244,36,2,NULL),(41,245,36,2,NULL),(42,203,38,2,NULL),(43,82,48,2,NULL),(44,111,48,2,NULL),(45,10,41,2,NULL),(46,12,41,2,NULL),(47,6,41,2,NULL),(48,7,41,2,NULL),(49,55,41,2,NULL),(50,51,41,2,NULL),(51,53,41,2,NULL),(52,8,41,2,NULL),(53,9,41,2,NULL),(54,35,41,2,NULL),(55,161,41,2,NULL),(56,216,41,2,NULL),(57,217,41,2,NULL),(58,107,41,2,NULL),(59,176,41,2,NULL),(60,178,41,2,NULL),(61,142,41,2,NULL),(62,177,41,2,NULL),(63,180,41,2,NULL),(64,183,41,2,NULL),(65,186,41,2,NULL),(66,148,41,2,NULL),(67,150,41,2,NULL),(68,152,41,2,NULL),(69,155,41,2,NULL),(70,205,41,2,NULL),(71,206,41,2,NULL),(72,212,41,2,NULL),(73,145,41,2,NULL),(74,151,41,2,NULL),(75,170,41,2,NULL),(76,172,41,2,NULL),(77,182,41,2,NULL),(78,184,41,2,NULL),(79,233,41,2,NULL),(80,235,41,2,NULL),(81,237,41,2,NULL),(82,240,41,2,NULL),(83,242,41,2,NULL),(84,244,41,2,NULL),(85,245,41,2,NULL),(86,143,36,2,NULL),(87,125,48,2,NULL),(88,193,48,2,NULL),(89,177,1,2,NULL),(90,180,1,2,NULL),(91,177,3,2,NULL),(92,180,3,2,NULL),(93,177,4,2,NULL),(94,180,4,2,NULL),(95,177,5,2,NULL),(96,180,5,2,NULL),(97,177,6,2,NULL),(98,180,6,2,NULL),(99,10,43,2,NULL),(100,12,43,2,NULL),(101,177,7,2,NULL),(102,180,7,2,NULL),(103,6,43,2,NULL),(104,7,43,2,NULL),(105,55,43,2,NULL),(106,177,10,2,NULL),(107,180,10,2,NULL),(108,177,13,2,NULL),(109,180,13,2,NULL),(110,177,8,2,NULL),(111,180,8,2,NULL),(112,177,12,2,NULL),(113,180,12,2,NULL),(114,177,14,2,NULL),(115,180,14,2,NULL),(116,51,43,2,NULL),(117,53,43,2,NULL),(118,177,15,2,NULL),(119,180,15,2,NULL),(120,8,43,2,NULL),(121,9,43,2,NULL),(122,35,43,2,NULL),(123,177,18,2,NULL),(124,180,18,2,NULL),(125,177,21,2,NULL),(126,180,21,2,NULL),(127,177,20,2,NULL),(128,180,20,2,NULL),(129,161,43,2,NULL),(130,177,24,2,NULL),(131,180,24,2,NULL),(132,177,25,2,NULL),(133,180,25,2,NULL),(134,177,26,2,NULL),(135,180,26,2,NULL),(136,177,27,2,NULL),(137,180,27,2,NULL),(138,177,28,2,NULL),(139,180,28,2,NULL),(140,216,43,2,NULL),(141,217,43,2,NULL),(142,177,29,2,NULL),(143,180,29,2,NULL),(144,107,43,2,NULL),(145,176,43,2,NULL),(146,178,43,2,NULL),(147,177,30,2,NULL),(148,180,30,2,NULL),(149,177,31,2,NULL),(150,180,31,2,NULL),(151,142,43,2,NULL),(152,177,34,2,NULL),(153,180,34,2,NULL),(154,177,35,2,NULL),(155,180,35,2,NULL),(156,177,44,2,NULL),(157,180,44,2,NULL),(158,183,43,2,NULL),(159,186,43,2,NULL),(160,177,45,2,NULL),(161,180,45,2,NULL),(162,148,43,2,NULL),(163,150,43,2,NULL),(164,152,43,2,NULL),(165,155,43,2,NULL),(166,205,43,2,NULL),(167,206,43,2,NULL),(168,212,43,2,NULL),(169,177,48,2,NULL),(170,180,48,2,NULL),(171,177,49,2,NULL),(172,180,49,2,NULL),(173,177,65,2,NULL),(174,180,65,2,NULL),(175,177,66,2,NULL),(176,180,66,2,NULL),(177,145,43,2,NULL),(178,151,43,2,NULL),(179,177,52,2,NULL),(180,180,52,2,NULL),(181,177,58,2,NULL),(182,180,58,2,NULL),(183,170,43,2,NULL),(184,172,43,2,NULL),(185,182,43,2,NULL),(186,184,43,2,NULL),(187,177,64,2,NULL),(188,180,64,2,NULL),(189,177,67,2,NULL),(190,180,67,2,NULL),(191,177,68,2,NULL),(192,180,68,2,NULL),(193,233,43,2,NULL),(194,235,43,2,NULL),(195,237,43,2,NULL),(196,240,43,2,NULL),(197,242,43,2,NULL),(198,244,43,2,NULL),(199,245,43,2,NULL),(200,177,75,2,NULL),(201,180,75,2,NULL),(202,188,43,2,NULL),(203,183,1,2,NULL),(204,186,1,2,NULL),(205,183,3,2,NULL),(206,186,3,2,NULL),(207,183,4,2,NULL),(208,186,4,2,NULL),(209,183,5,2,NULL),(210,186,5,2,NULL),(211,183,6,2,NULL),(212,186,6,2,NULL),(213,10,44,2,NULL),(214,12,44,2,NULL),(215,183,7,2,NULL),(216,186,7,2,NULL),(217,6,44,2,NULL),(218,7,44,2,NULL),(219,55,44,2,NULL),(220,183,10,2,NULL),(221,186,10,2,NULL),(222,183,13,2,NULL),(223,186,13,2,NULL),(224,183,8,2,NULL),(225,186,8,2,NULL),(226,183,12,2,NULL),(227,186,12,2,NULL),(228,183,14,2,NULL),(229,186,14,2,NULL),(230,51,44,2,NULL),(231,53,44,2,NULL),(232,183,15,2,NULL),(233,186,15,2,NULL),(234,8,44,2,NULL),(235,9,44,2,NULL),(236,35,44,2,NULL),(237,183,18,2,NULL),(238,186,18,2,NULL),(239,183,21,2,NULL),(240,186,21,2,NULL),(241,183,20,2,NULL),(242,186,20,2,NULL),(243,161,44,2,NULL),(244,183,24,2,NULL),(245,186,24,2,NULL),(246,183,25,2,NULL),(247,186,25,2,NULL),(248,183,26,2,NULL),(249,186,26,2,NULL),(250,183,27,2,NULL),(251,186,27,2,NULL),(252,183,28,2,NULL),(253,186,28,2,NULL),(254,216,44,2,NULL),(255,217,44,2,NULL),(256,183,29,2,NULL),(257,186,29,2,NULL),(258,107,44,2,NULL),(259,176,44,2,NULL),(260,178,44,2,NULL),(261,183,30,2,NULL),(262,186,30,2,NULL),(263,183,31,2,NULL),(264,186,31,2,NULL),(265,142,44,2,NULL),(266,183,34,2,NULL),(267,186,34,2,NULL),(268,183,35,2,NULL),(269,186,35,2,NULL),(270,183,45,2,NULL),(271,186,45,2,NULL),(272,148,44,2,NULL),(273,150,44,2,NULL),(274,152,44,2,NULL),(275,155,44,2,NULL),(276,205,44,2,NULL),(277,206,44,2,NULL),(278,212,44,2,NULL),(279,183,48,2,NULL),(280,186,48,2,NULL),(281,183,49,2,NULL),(282,186,49,2,NULL),(283,183,65,2,NULL),(284,186,65,2,NULL),(285,183,66,2,NULL),(286,186,66,2,NULL),(287,145,44,2,NULL),(288,151,44,2,NULL),(289,183,52,2,NULL),(290,186,52,2,NULL),(291,183,58,2,NULL),(292,186,58,2,NULL),(293,170,44,2,NULL),(294,172,44,2,NULL),(295,182,44,2,NULL),(296,184,44,2,NULL),(297,183,64,2,NULL),(298,186,64,2,NULL),(299,183,67,2,NULL),(300,186,67,2,NULL),(301,183,68,2,NULL),(302,186,68,2,NULL),(303,233,44,2,NULL),(304,235,44,2,NULL),(305,237,44,2,NULL),(306,240,44,2,NULL),(307,242,44,2,NULL),(308,244,44,2,NULL),(309,245,44,2,NULL),(310,183,75,2,NULL),(311,186,75,2,NULL),(312,158,48,2,NULL),(313,148,1,2,NULL),(314,150,1,2,NULL),(315,152,1,2,NULL),(316,155,1,2,NULL),(317,148,3,2,NULL),(318,150,3,2,NULL),(319,152,3,2,NULL),(320,155,3,2,NULL),(321,148,4,2,NULL),(322,150,4,2,NULL),(323,152,4,2,NULL),(324,155,4,2,NULL),(325,148,5,2,NULL),(326,150,5,2,NULL),(327,152,5,2,NULL),(328,155,5,2,NULL),(329,148,6,2,NULL),(330,150,6,2,NULL),(331,152,6,2,NULL),(332,155,6,2,NULL),(333,10,45,2,NULL),(334,12,45,2,NULL),(335,148,7,2,NULL),(336,150,7,2,NULL),(337,152,7,2,NULL),(338,155,7,2,NULL),(339,6,45,2,NULL),(340,7,45,2,NULL),(341,55,45,2,NULL),(342,148,10,2,NULL),(343,150,10,2,NULL),(344,152,10,2,NULL),(345,155,10,2,NULL),(346,148,13,2,NULL),(347,150,13,2,NULL),(348,152,13,2,NULL),(349,155,13,2,NULL),(350,148,8,2,NULL),(351,150,8,2,NULL),(352,152,8,2,NULL),(353,155,8,2,NULL),(354,148,12,2,NULL),(355,150,12,2,NULL),(356,152,12,2,NULL),(357,155,12,2,NULL),(358,148,14,2,NULL),(359,150,14,2,NULL),(360,152,14,2,NULL),(361,155,14,2,NULL),(362,51,45,2,NULL),(363,53,45,2,NULL),(364,148,15,2,NULL),(365,150,15,2,NULL),(366,152,15,2,NULL),(367,155,15,2,NULL),(368,8,45,2,NULL),(369,9,45,2,NULL),(370,35,45,2,NULL),(371,148,18,2,NULL),(372,150,18,2,NULL),(373,152,18,2,NULL),(374,155,18,2,NULL),(375,148,21,2,NULL),(376,150,21,2,NULL),(377,152,21,2,NULL),(378,155,21,2,NULL),(379,148,20,2,NULL),(380,150,20,2,NULL),(381,152,20,2,NULL),(382,155,20,2,NULL),(383,161,45,2,NULL),(384,148,24,2,NULL),(385,150,24,2,NULL),(386,152,24,2,NULL),(387,155,24,2,NULL),(388,148,25,2,NULL),(389,150,25,2,NULL),(390,152,25,2,NULL),(391,155,25,2,NULL),(392,148,26,2,NULL),(393,150,26,2,NULL),(394,152,26,2,NULL),(395,155,26,2,NULL),(396,148,27,2,NULL),(397,150,27,2,NULL),(398,152,27,2,NULL),(399,155,27,2,NULL),(400,148,28,2,NULL),(401,150,28,2,NULL),(402,152,28,2,NULL),(403,155,28,2,NULL),(404,216,45,2,NULL),(405,217,45,2,NULL),(406,148,29,2,NULL),(407,150,29,2,NULL),(408,152,29,2,NULL),(409,155,29,2,NULL),(410,107,45,2,NULL),(411,176,45,2,NULL),(412,178,45,2,NULL),(413,148,30,2,NULL),(414,150,30,2,NULL),(415,152,30,2,NULL),(416,155,30,2,NULL),(417,148,31,2,NULL),(418,150,31,2,NULL),(419,152,31,2,NULL),(420,155,31,2,NULL),(421,142,45,2,NULL),(422,148,34,2,NULL),(423,150,34,2,NULL),(424,152,34,2,NULL),(425,155,34,2,NULL),(426,148,35,2,NULL),(427,150,35,2,NULL),(428,152,35,2,NULL),(429,155,35,2,NULL),(430,205,45,2,NULL),(431,206,45,2,NULL),(432,212,45,2,NULL),(433,148,48,2,NULL),(434,150,48,2,NULL),(435,152,48,2,NULL),(436,155,48,2,NULL),(437,148,49,2,NULL),(438,150,49,2,NULL),(439,152,49,2,NULL),(440,155,49,2,NULL),(441,148,65,2,NULL),(442,150,65,2,NULL),(443,152,65,2,NULL),(444,155,65,2,NULL),(445,148,66,2,NULL),(446,150,66,2,NULL),(447,152,66,2,NULL),(448,155,66,2,NULL),(449,145,45,2,NULL),(450,151,45,2,NULL),(451,148,52,2,NULL),(452,150,52,2,NULL),(453,152,52,2,NULL),(454,155,52,2,NULL),(455,148,58,2,NULL),(456,150,58,2,NULL),(457,152,58,2,NULL),(458,155,58,2,NULL),(459,170,45,2,NULL),(460,172,45,2,NULL),(461,182,45,2,NULL),(462,184,45,2,NULL),(463,148,64,2,NULL),(464,150,64,2,NULL),(465,152,64,2,NULL),(466,155,64,2,NULL),(467,148,67,2,NULL),(468,150,67,2,NULL),(469,152,67,2,NULL),(470,155,67,2,NULL),(471,148,68,2,NULL),(472,150,68,2,NULL),(473,152,68,2,NULL),(474,155,68,2,NULL),(475,233,45,2,NULL),(476,235,45,2,NULL),(477,237,45,2,NULL),(478,240,45,2,NULL),(479,242,45,2,NULL),(480,244,45,2,NULL),(481,245,45,2,NULL),(482,148,75,2,NULL),(483,150,75,2,NULL),(484,152,75,2,NULL),(485,155,75,2,NULL),(486,87,43,2,NULL),(487,205,1,2,NULL),(488,206,1,2,NULL),(489,205,3,2,NULL),(490,206,3,2,NULL),(491,205,4,2,NULL),(492,206,4,2,NULL),(493,205,5,2,NULL),(494,206,5,2,NULL),(495,205,6,2,NULL),(496,206,6,2,NULL),(497,205,7,2,NULL),(498,206,7,2,NULL),(499,205,10,2,NULL),(500,206,10,2,NULL),(501,205,13,2,NULL),(502,206,13,2,NULL),(503,205,8,2,NULL),(504,206,8,2,NULL),(505,205,12,2,NULL),(506,206,12,2,NULL),(507,205,14,2,NULL),(508,206,14,2,NULL),(509,205,15,2,NULL),(510,206,15,2,NULL),(511,205,18,2,NULL),(512,206,18,2,NULL),(513,205,21,2,NULL),(514,206,21,2,NULL),(515,205,20,2,NULL),(516,206,20,2,NULL),(517,205,24,2,NULL),(518,206,24,2,NULL),(519,205,25,2,NULL),(520,206,25,2,NULL),(521,205,26,2,NULL),(522,206,26,2,NULL),(523,205,27,2,NULL),(524,206,27,2,NULL),(525,205,28,2,NULL),(526,206,28,2,NULL),(527,205,29,2,NULL),(528,34,10,2,NULL),(529,206,29,2,NULL),(530,36,10,2,NULL),(531,205,30,2,NULL),(532,75,10,2,NULL),(533,206,30,2,NULL),(534,10,4,2,NULL),(535,205,31,2,NULL),(536,12,4,2,NULL),(537,206,31,2,NULL),(538,6,4,2,NULL),(539,205,34,2,NULL),(540,7,4,2,NULL),(541,206,34,2,NULL),(542,55,4,2,NULL),(543,205,35,2,NULL),(544,51,4,2,NULL),(545,206,35,2,NULL),(546,53,4,2,NULL),(547,205,48,2,NULL),(548,8,4,2,NULL),(549,206,48,2,NULL),(550,9,4,2,NULL),(551,205,49,2,NULL),(552,35,4,2,NULL),(553,206,49,2,NULL),(554,161,4,2,NULL),(555,205,65,2,NULL),(556,216,4,2,NULL),(557,206,65,2,NULL),(558,217,4,2,NULL),(559,205,66,2,NULL),(560,107,4,2,NULL),(561,206,66,2,NULL),(562,176,4,2,NULL),(563,205,52,2,NULL),(564,178,4,2,NULL),(565,206,52,2,NULL),(566,142,4,2,NULL),(567,205,58,2,NULL),(568,212,4,2,NULL),(569,206,58,2,NULL),(570,145,4,2,NULL),(571,205,64,2,NULL),(572,151,4,2,NULL),(573,206,64,2,NULL),(574,170,4,2,NULL),(575,205,67,2,NULL),(576,172,4,2,NULL),(577,206,67,2,NULL),(578,182,4,2,NULL),(579,205,68,2,NULL),(580,184,4,2,NULL),(581,206,68,2,NULL),(582,233,4,2,NULL),(583,205,75,2,NULL),(584,235,4,2,NULL),(585,206,75,2,NULL),(586,237,4,2,NULL),(587,138,48,2,NULL),(588,240,4,2,NULL),(589,212,1,2,NULL),(590,242,4,2,NULL),(591,212,3,2,NULL),(592,244,4,2,NULL),(593,212,5,2,NULL),(594,245,4,2,NULL),(595,212,6,2,NULL),(596,21,10,2,NULL),(597,212,7,2,NULL),(598,22,4,2,NULL),(599,212,10,2,NULL),(600,24,4,2,NULL),(601,212,13,2,NULL),(602,58,10,2,NULL),(603,212,8,2,NULL),(604,61,4,2,NULL),(605,212,12,2,NULL),(606,100,4,2,NULL),(607,212,14,2,NULL),(608,10,5,2,NULL),(609,212,15,2,NULL),(610,12,5,2,NULL),(611,212,18,2,NULL),(612,6,5,2,NULL),(613,212,21,2,NULL),(614,7,5,2,NULL),(615,212,20,2,NULL),(616,55,5,2,NULL),(617,212,24,2,NULL),(618,51,5,2,NULL),(619,212,25,2,NULL),(620,53,5,2,NULL),(621,212,26,2,NULL),(622,8,5,2,NULL),(623,212,27,2,NULL),(624,9,5,2,NULL),(625,212,28,2,NULL),(626,35,5,2,NULL),(627,212,29,2,NULL),(628,161,5,2,NULL),(629,212,30,2,NULL),(630,216,5,2,NULL),(631,212,31,2,NULL),(632,217,5,2,NULL),(633,212,34,2,NULL),(634,107,5,2,NULL),(635,212,35,2,NULL),(636,176,5,2,NULL),(637,212,48,2,NULL),(638,178,5,2,NULL),(639,212,49,2,NULL),(640,142,5,2,NULL),(641,212,65,2,NULL),(642,145,5,2,NULL),(643,212,66,2,NULL),(644,151,5,2,NULL),(645,212,52,2,NULL),(646,170,5,2,NULL),(647,212,58,2,NULL),(648,172,5,2,NULL),(649,212,64,2,NULL),(650,182,5,2,NULL),(651,212,67,2,NULL),(652,184,5,2,NULL),(653,212,68,2,NULL),(654,233,5,2,NULL),(655,212,75,2,NULL),(656,235,5,2,NULL),(657,10,48,2,NULL),(658,237,5,2,NULL),(659,12,48,2,NULL),(660,240,5,2,NULL),(661,6,48,2,NULL),(662,242,5,2,NULL),(663,7,48,2,NULL),(664,244,5,2,NULL),(665,55,48,2,NULL),(666,245,5,2,NULL),(667,51,48,2,NULL),(668,27,5,2,NULL),(669,53,48,2,NULL),(670,10,1,2,NULL),(671,8,48,2,NULL),(672,12,1,2,NULL),(673,9,48,2,NULL),(674,10,3,2,NULL),(675,35,48,2,NULL),(676,12,3,2,NULL),(677,161,48,2,NULL),(678,10,7,2,NULL),(679,216,48,2,NULL),(680,12,7,2,NULL),(681,217,48,2,NULL),(682,6,6,2,NULL),(683,107,48,2,NULL),(684,7,6,2,NULL),(685,176,48,2,NULL),(686,55,6,2,NULL),(687,178,48,2,NULL),(688,10,10,2,NULL),(689,142,48,2,NULL),(690,12,10,2,NULL),(691,145,48,2,NULL),(692,10,13,2,NULL),(693,151,48,2,NULL),(694,12,13,2,NULL),(695,170,48,2,NULL),(696,10,8,2,NULL),(697,172,48,2,NULL),(698,12,8,2,NULL),(699,182,48,2,NULL),(700,10,12,2,NULL),(701,184,48,2,NULL),(702,12,12,2,NULL),(703,233,48,2,NULL),(704,10,14,2,NULL),(705,235,48,2,NULL),(706,12,14,2,NULL),(707,237,48,2,NULL),(708,51,6,2,NULL),(709,240,48,2,NULL),(710,53,6,2,NULL),(711,242,48,2,NULL),(712,10,15,2,NULL),(713,244,48,2,NULL),(714,12,15,2,NULL),(715,245,48,2,NULL),(716,8,6,2,NULL),(717,110,48,2,NULL),(718,9,6,2,NULL),(719,162,48,2,NULL),(720,35,6,2,NULL),(721,220,48,2,NULL),(722,10,18,2,NULL),(723,10,49,2,NULL),(724,12,18,2,NULL),(725,12,49,2,NULL),(726,10,21,2,NULL),(727,6,49,2,NULL),(728,12,21,2,NULL),(729,7,49,2,NULL),(730,10,20,2,NULL),(731,55,49,2,NULL),(732,12,20,2,NULL),(733,51,49,2,NULL),(734,161,6,2,NULL),(735,53,49,2,NULL),(736,10,24,2,NULL),(737,8,49,2,NULL),(738,12,24,2,NULL),(739,9,49,2,NULL),(740,10,25,2,NULL),(741,35,49,2,NULL),(742,12,25,2,NULL),(743,161,49,2,NULL),(744,10,26,2,NULL),(745,216,49,2,NULL),(746,12,26,2,NULL),(747,217,49,2,NULL),(748,10,27,2,NULL),(749,107,49,2,NULL),(750,12,27,2,NULL),(751,176,49,2,NULL),(752,10,28,2,NULL),(753,178,49,2,NULL),(754,12,28,2,NULL),(755,142,49,2,NULL),(756,216,6,2,NULL),(757,145,49,2,NULL),(758,217,6,2,NULL),(759,151,49,2,NULL),(760,10,29,2,NULL),(761,170,49,2,NULL),(762,12,29,2,NULL),(763,172,49,2,NULL),(764,107,6,2,NULL),(765,182,49,2,NULL),(766,176,6,2,NULL),(767,184,49,2,NULL),(768,178,6,2,NULL),(769,233,49,2,NULL),(770,10,30,2,NULL),(771,235,49,2,NULL),(772,12,30,2,NULL),(773,237,49,2,NULL),(774,10,31,2,NULL),(775,240,49,2,NULL),(776,12,31,2,NULL),(777,242,49,2,NULL),(778,142,6,2,NULL),(779,244,49,2,NULL),(780,10,34,2,NULL),(781,245,49,2,NULL),(782,12,34,2,NULL),(783,10,65,2,NULL),(784,10,35,2,NULL),(785,12,65,2,NULL),(786,12,35,2,NULL),(787,6,65,2,NULL),(788,10,66,2,NULL),(789,7,65,2,NULL),(790,12,66,2,NULL),(791,55,65,2,NULL),(792,145,6,2,NULL),(793,51,65,2,NULL),(794,151,6,2,NULL),(795,53,65,2,NULL),(796,10,52,2,NULL),(797,8,65,2,NULL),(798,12,52,2,NULL),(799,9,65,2,NULL),(800,10,58,2,NULL),(801,35,65,2,NULL),(802,12,58,2,NULL),(803,161,65,2,NULL),(804,170,6,2,NULL),(805,216,65,2,NULL),(806,172,6,2,NULL),(807,217,65,2,NULL),(808,182,6,2,NULL),(809,107,65,2,NULL),(810,184,6,2,NULL),(811,176,65,2,NULL),(812,10,64,2,NULL),(813,178,65,2,NULL),(814,12,64,2,NULL),(815,142,65,2,NULL),(816,10,67,2,NULL),(817,145,65,2,NULL),(818,12,67,2,NULL),(819,151,65,2,NULL),(820,10,68,2,NULL),(821,170,65,2,NULL),(822,12,68,2,NULL),(823,172,65,2,NULL),(824,233,6,2,NULL),(825,182,65,2,NULL),(826,235,6,2,NULL),(827,184,65,2,NULL),(828,237,6,2,NULL),(829,233,65,2,NULL),(830,240,6,2,NULL),(831,235,65,2,NULL),(832,242,6,2,NULL),(833,237,65,2,NULL),(834,244,6,2,NULL),(835,240,65,2,NULL),(836,245,6,2,NULL),(837,242,65,2,NULL),(838,10,75,2,NULL),(839,244,65,2,NULL),(840,12,75,2,NULL),(841,245,65,2,NULL),(842,25,4,2,NULL),(843,6,66,2,NULL),(844,80,10,2,NULL),(845,7,66,2,NULL),(846,6,7,2,NULL),(847,55,66,2,NULL),(848,7,7,2,NULL),(849,51,66,2,NULL),(850,55,7,2,NULL),(851,53,66,2,NULL),(852,51,7,2,NULL),(853,8,66,2,NULL),(854,53,7,2,NULL),(855,9,66,2,NULL),(856,8,7,2,NULL),(857,35,66,2,NULL),(858,9,7,2,NULL),(859,161,66,2,NULL),(860,35,7,2,NULL),(861,216,66,2,NULL),(862,161,7,2,NULL),(863,217,66,2,NULL),(864,216,7,2,NULL),(865,107,66,2,NULL),(866,217,7,2,NULL),(867,176,66,2,NULL),(868,107,7,2,NULL),(869,178,66,2,NULL),(870,176,7,2,NULL),(871,142,66,2,NULL),(872,178,7,2,NULL),(873,145,66,2,NULL),(874,142,7,2,NULL),(875,151,66,2,NULL),(876,145,7,2,NULL),(877,170,66,2,NULL),(878,151,7,2,NULL),(879,172,66,2,NULL),(880,170,7,2,NULL),(881,182,66,2,NULL),(882,172,7,2,NULL),(883,184,66,2,NULL),(884,182,7,2,NULL),(885,233,66,2,NULL),(886,184,7,2,NULL),(887,235,66,2,NULL),(888,233,7,2,NULL),(889,237,66,2,NULL),(890,235,7,2,NULL),(891,240,66,2,NULL),(892,237,7,2,NULL),(893,242,66,2,NULL),(894,240,7,2,NULL),(895,244,66,2,NULL),(896,242,7,2,NULL),(897,245,66,2,NULL),(898,244,7,2,NULL),(899,245,7,2,NULL),(900,49,9,2,NULL),(901,52,5,2,NULL),(902,6,1,2,NULL),(903,7,1,2,NULL),(904,55,1,2,NULL),(905,6,3,2,NULL),(906,7,3,2,NULL),(907,55,3,2,NULL),(908,6,10,2,NULL),(909,7,10,2,NULL),(910,55,10,2,NULL),(911,6,13,2,NULL),(912,7,13,2,NULL),(913,55,13,2,NULL),(914,6,8,2,NULL),(915,7,8,2,NULL),(916,55,8,2,NULL),(917,6,12,2,NULL),(918,7,12,2,NULL),(919,55,12,2,NULL),(920,6,14,2,NULL),(921,7,14,2,NULL),(922,55,14,2,NULL),(923,6,15,2,NULL),(924,7,15,2,NULL),(925,55,15,2,NULL),(926,6,18,2,NULL),(927,7,18,2,NULL),(928,55,18,2,NULL),(929,6,21,2,NULL),(930,7,21,2,NULL),(931,55,21,2,NULL),(932,6,20,2,NULL),(933,7,20,2,NULL),(934,55,20,2,NULL),(935,6,24,2,NULL),(936,7,24,2,NULL),(937,55,24,2,NULL),(938,6,25,2,NULL),(939,7,25,2,NULL),(940,55,25,2,NULL),(941,6,26,2,NULL),(942,7,26,2,NULL),(943,55,26,2,NULL),(944,6,27,2,NULL),(945,7,27,2,NULL),(946,55,27,2,NULL),(947,6,28,2,NULL),(948,7,28,2,NULL),(949,55,28,2,NULL),(950,6,29,2,NULL),(951,7,29,2,NULL),(952,55,29,2,NULL),(953,6,30,2,NULL),(954,7,30,2,NULL),(955,55,30,2,NULL),(956,6,31,2,NULL),(957,7,31,2,NULL),(958,55,31,2,NULL),(959,6,34,2,NULL),(960,7,34,2,NULL),(961,55,34,2,NULL),(962,6,35,2,NULL),(963,7,35,2,NULL),(964,55,35,2,NULL),(965,6,52,2,NULL),(966,7,52,2,NULL),(967,55,52,2,NULL),(968,6,58,2,NULL),(969,7,58,2,NULL),(970,55,58,2,NULL),(971,6,64,2,NULL),(972,7,64,2,NULL),(973,55,64,2,NULL),(974,6,67,2,NULL),(975,7,67,2,NULL),(976,55,67,2,NULL),(977,6,68,2,NULL),(978,7,68,2,NULL),(979,55,68,2,NULL),(980,6,75,2,NULL),(981,7,75,2,NULL),(982,55,75,2,NULL),(983,51,10,2,NULL),(984,53,10,2,NULL),(985,8,10,2,NULL),(986,9,10,2,NULL),(987,35,10,2,NULL),(988,161,10,2,NULL),(989,216,10,2,NULL),(990,217,10,2,NULL),(991,107,10,2,NULL),(992,176,10,2,NULL),(993,178,10,2,NULL),(994,142,10,2,NULL),(995,145,10,2,NULL),(996,151,10,2,NULL),(997,170,10,2,NULL),(998,172,10,2,NULL),(999,182,10,2,NULL),(1000,184,10,2,NULL),(1001,233,10,2,NULL),(1002,235,10,2,NULL),(1003,237,10,2,NULL),(1004,240,10,2,NULL),(1005,242,10,2,NULL),(1006,244,10,2,NULL),(1007,245,10,2,NULL),(1008,14,10,2,NULL),(1009,46,10,2,NULL),(1010,77,10,2,NULL),(1011,51,13,2,NULL),(1012,53,13,2,NULL),(1013,8,13,2,NULL),(1014,9,13,2,NULL),(1015,35,13,2,NULL),(1016,161,13,2,NULL),(1017,216,13,2,NULL),(1018,217,13,2,NULL),(1019,107,13,2,NULL),(1020,176,13,2,NULL),(1021,178,13,2,NULL),(1022,142,13,2,NULL),(1023,145,13,2,NULL),(1024,151,13,2,NULL),(1025,170,13,2,NULL),(1026,172,13,2,NULL),(1027,182,13,2,NULL),(1028,184,13,2,NULL),(1029,233,13,2,NULL),(1030,235,13,2,NULL),(1031,237,13,2,NULL),(1032,240,13,2,NULL),(1033,242,13,2,NULL),(1034,244,13,2,NULL),(1035,245,13,2,NULL),(1036,109,52,2,NULL),(1037,145,1,2,NULL),(1038,151,1,2,NULL),(1039,145,3,2,NULL),(1040,151,3,2,NULL),(1041,145,8,2,NULL),(1042,151,8,2,NULL),(1043,145,12,2,NULL),(1044,151,12,2,NULL),(1045,145,14,2,NULL),(1046,151,14,2,NULL),(1047,145,15,2,NULL),(1048,151,15,2,NULL),(1049,145,18,2,NULL),(1050,151,18,2,NULL),(1051,145,21,2,NULL),(1052,151,21,2,NULL),(1053,145,20,2,NULL),(1054,151,20,2,NULL),(1055,145,24,2,NULL),(1056,151,24,2,NULL),(1057,145,25,2,NULL),(1058,151,25,2,NULL),(1059,145,26,2,NULL),(1060,151,26,2,NULL),(1061,145,27,2,NULL),(1062,151,27,2,NULL),(1063,145,28,2,NULL),(1064,151,28,2,NULL),(1065,145,29,2,NULL),(1066,151,29,2,NULL),(1067,145,30,2,NULL),(1068,151,30,2,NULL),(1069,145,31,2,NULL),(1070,151,31,2,NULL),(1071,145,34,2,NULL),(1072,151,34,2,NULL),(1073,145,35,2,NULL),(1074,151,35,2,NULL),(1075,145,52,2,NULL),(1076,151,52,2,NULL),(1077,145,58,2,NULL),(1078,151,58,2,NULL),(1079,145,64,2,NULL),(1080,151,64,2,NULL),(1081,145,67,2,NULL),(1082,151,67,2,NULL),(1083,145,68,2,NULL),(1084,151,68,2,NULL),(1085,145,75,2,NULL),(1086,151,75,2,NULL),(1087,89,54,2,NULL),(1088,115,50,2,NULL),(1089,118,50,2,NULL),(1090,126,53,2,NULL),(1091,135,50,2,NULL),(1092,157,55,2,NULL),(1093,51,52,2,NULL),(1094,53,52,2,NULL),(1095,8,52,2,NULL),(1096,9,52,2,NULL),(1097,35,52,2,NULL),(1098,161,52,2,NULL),(1099,216,52,2,NULL),(1100,217,52,2,NULL),(1101,107,52,2,NULL),(1102,176,52,2,NULL),(1103,178,52,2,NULL),(1104,142,52,2,NULL),(1105,170,52,2,NULL),(1106,172,52,2,NULL),(1107,182,52,2,NULL),(1108,184,52,2,NULL),(1109,233,52,2,NULL),(1110,235,52,2,NULL),(1111,237,52,2,NULL),(1112,240,52,2,NULL),(1113,242,52,2,NULL),(1114,244,52,2,NULL),(1115,245,52,2,NULL),(1116,123,54,2,NULL),(1117,106,52,2,NULL),(1118,179,52,2,NULL),(1119,187,50,2,NULL),(1120,99,59,2,NULL),(1121,128,59,2,NULL),(1122,51,58,2,NULL),(1123,53,58,2,NULL),(1124,8,58,2,NULL),(1125,9,58,2,NULL),(1126,35,58,2,NULL),(1127,161,58,2,NULL),(1128,216,58,2,NULL),(1129,217,58,2,NULL),(1130,107,58,2,NULL),(1131,176,58,2,NULL),(1132,178,58,2,NULL),(1133,142,58,2,NULL),(1134,170,58,2,NULL),(1135,172,58,2,NULL),(1136,182,58,2,NULL),(1137,184,58,2,NULL),(1138,233,58,2,NULL),(1139,235,58,2,NULL),(1140,237,58,2,NULL),(1141,240,58,2,NULL),(1142,242,58,2,NULL),(1143,244,58,2,NULL),(1144,245,58,2,NULL),(1145,102,50,2,NULL),(1146,120,50,2,NULL),(1147,132,50,2,NULL),(1148,160,50,2,NULL),(1149,170,1,2,NULL),(1150,172,1,2,NULL),(1151,182,1,2,NULL),(1152,184,1,2,NULL),(1153,170,3,2,NULL),(1154,172,3,2,NULL),(1155,182,3,2,NULL),(1156,184,3,2,NULL),(1157,170,8,2,NULL),(1158,172,8,2,NULL),(1159,182,8,2,NULL),(1160,184,8,2,NULL),(1161,170,12,2,NULL),(1162,172,12,2,NULL),(1163,182,12,2,NULL),(1164,184,12,2,NULL),(1165,170,14,2,NULL),(1166,172,14,2,NULL),(1167,182,14,2,NULL),(1168,184,14,2,NULL),(1169,170,15,2,NULL),(1170,172,15,2,NULL),(1171,182,15,2,NULL),(1172,184,15,2,NULL),(1173,170,18,2,NULL),(1174,172,18,2,NULL),(1175,182,18,2,NULL),(1176,184,18,2,NULL),(1177,170,21,2,NULL),(1178,172,21,2,NULL),(1179,182,21,2,NULL),(1180,184,21,2,NULL),(1181,170,20,2,NULL),(1182,172,20,2,NULL),(1183,182,20,2,NULL),(1184,184,20,2,NULL),(1185,170,24,2,NULL),(1186,172,24,2,NULL),(1187,182,24,2,NULL),(1188,184,24,2,NULL),(1189,170,25,2,NULL),(1190,172,25,2,NULL),(1191,182,25,2,NULL),(1192,184,25,2,NULL),(1193,170,26,2,NULL),(1194,172,26,2,NULL),(1195,182,26,2,NULL),(1196,184,26,2,NULL),(1197,170,27,2,NULL),(1198,172,27,2,NULL),(1199,182,27,2,NULL),(1200,184,27,2,NULL),(1201,170,28,2,NULL),(1202,172,28,2,NULL),(1203,182,28,2,NULL),(1204,184,28,2,NULL),(1205,170,29,2,NULL),(1206,172,29,2,NULL),(1207,182,29,2,NULL),(1208,184,29,2,NULL),(1209,170,30,2,NULL),(1210,172,30,2,NULL),(1211,182,30,2,NULL),(1212,184,30,2,NULL),(1213,170,31,2,NULL),(1214,172,31,2,NULL),(1215,182,31,2,NULL),(1216,184,31,2,NULL),(1217,170,34,2,NULL),(1218,172,34,2,NULL),(1219,182,34,2,NULL),(1220,184,34,2,NULL),(1221,170,35,2,NULL),(1222,172,35,2,NULL),(1223,182,35,2,NULL),(1224,184,35,2,NULL),(1225,170,64,2,NULL),(1226,172,64,2,NULL),(1227,182,64,2,NULL),(1228,184,64,2,NULL),(1229,170,67,2,NULL),(1230,172,67,2,NULL),(1231,182,67,2,NULL),(1232,184,67,2,NULL),(1233,170,68,2,NULL),(1234,172,68,2,NULL),(1235,182,68,2,NULL),(1236,184,68,2,NULL),(1237,170,75,2,NULL),(1238,172,75,2,NULL),(1239,182,75,2,NULL),(1240,184,75,2,NULL),(1241,139,60,2,NULL),(1242,51,64,2,NULL),(1243,53,64,2,NULL),(1244,8,64,2,NULL),(1245,9,64,2,NULL),(1246,35,64,2,NULL),(1247,161,64,2,NULL),(1248,216,64,2,NULL),(1249,217,64,2,NULL),(1250,107,64,2,NULL),(1251,176,64,2,NULL),(1252,178,64,2,NULL),(1253,142,64,2,NULL),(1254,233,64,2,NULL),(1255,235,64,2,NULL),(1256,237,64,2,NULL),(1257,240,64,2,NULL),(1258,242,64,2,NULL),(1259,244,64,2,NULL),(1260,245,64,2,NULL),(1261,51,67,2,NULL),(1262,53,67,2,NULL),(1263,8,67,2,NULL),(1264,9,67,2,NULL),(1265,35,67,2,NULL),(1266,161,67,2,NULL),(1267,216,67,2,NULL),(1268,217,67,2,NULL),(1269,107,67,2,NULL),(1270,176,67,2,NULL),(1271,178,67,2,NULL),(1272,142,67,2,NULL),(1273,233,67,2,NULL),(1274,235,67,2,NULL),(1275,237,67,2,NULL),(1276,240,67,2,NULL),(1277,242,67,2,NULL),(1278,244,67,2,NULL),(1279,245,67,2,NULL),(1280,124,34,2,NULL),(1281,127,34,2,NULL),(1282,140,34,2,NULL),(1283,54,34,2,NULL),(1284,57,34,2,NULL),(1285,171,34,2,NULL),(1286,108,31,2,NULL),(1287,130,34,2,NULL),(1288,51,20,2,NULL),(1289,53,20,2,NULL),(1290,8,20,2,NULL),(1291,9,20,2,NULL),(1292,35,20,2,NULL),(1293,161,20,2,NULL),(1294,216,20,2,NULL),(1295,217,20,2,NULL),(1296,107,20,2,NULL),(1297,176,20,2,NULL),(1298,178,20,2,NULL),(1299,142,20,2,NULL),(1300,233,20,2,NULL),(1301,235,20,2,NULL),(1302,237,20,2,NULL),(1303,240,20,2,NULL),(1304,242,20,2,NULL),(1305,244,20,2,NULL),(1306,245,20,2,NULL),(1307,164,27,2,NULL),(1308,181,17,2,NULL),(1309,161,1,2,NULL),(1310,161,3,2,NULL),(1311,161,8,2,NULL),(1312,161,12,2,NULL),(1313,161,14,2,NULL),(1314,161,15,2,NULL),(1315,161,18,2,NULL),(1316,161,21,2,NULL),(1317,161,24,2,NULL),(1318,161,25,2,NULL),(1319,161,26,2,NULL),(1320,161,27,2,NULL),(1321,161,28,2,NULL),(1322,161,29,2,NULL),(1323,161,30,2,NULL),(1324,161,31,2,NULL),(1325,161,34,2,NULL),(1326,161,35,2,NULL),(1327,161,68,2,NULL),(1328,161,75,2,NULL),(1329,167,34,2,NULL),(1330,185,27,2,NULL),(1331,51,24,2,NULL),(1332,53,24,2,NULL),(1333,8,24,2,NULL),(1334,9,24,2,NULL),(1335,35,24,2,NULL),(1336,216,24,2,NULL),(1337,217,24,2,NULL),(1338,107,24,2,NULL),(1339,176,24,2,NULL),(1340,178,24,2,NULL),(1341,142,24,2,NULL),(1342,233,24,2,NULL),(1343,235,24,2,NULL),(1344,237,24,2,NULL),(1345,240,24,2,NULL),(1346,242,24,2,NULL),(1347,244,24,2,NULL),(1348,245,24,2,NULL),(1349,134,27,2,NULL),(1350,200,34,2,NULL),(1351,51,25,2,NULL),(1352,53,25,2,NULL),(1353,8,25,2,NULL),(1354,9,25,2,NULL),(1355,35,25,2,NULL),(1356,216,25,2,NULL),(1357,217,25,2,NULL),(1358,107,25,2,NULL),(1359,176,25,2,NULL),(1360,178,25,2,NULL),(1361,142,25,2,NULL),(1362,233,25,2,NULL),(1363,235,25,2,NULL),(1364,237,25,2,NULL),(1365,240,25,2,NULL),(1366,242,25,2,NULL),(1367,244,25,2,NULL),(1368,245,25,2,NULL),(1369,222,34,2,NULL),(1370,51,26,2,NULL),(1371,53,26,2,NULL),(1372,8,26,2,NULL),(1373,9,26,2,NULL),(1374,35,26,2,NULL),(1375,216,26,2,NULL),(1376,217,26,2,NULL),(1377,107,26,2,NULL),(1378,176,26,2,NULL),(1379,178,26,2,NULL),(1380,142,26,2,NULL),(1381,233,26,2,NULL),(1382,235,26,2,NULL),(1383,237,26,2,NULL),(1384,240,26,2,NULL),(1385,242,26,2,NULL),(1386,244,26,2,NULL),(1387,245,26,2,NULL),(1388,85,34,2,NULL),(1389,156,17,2,NULL),(1390,221,17,2,NULL),(1391,51,27,2,NULL),(1392,53,27,2,NULL),(1393,8,27,2,NULL),(1394,9,27,2,NULL),(1395,35,27,2,NULL),(1396,216,27,2,NULL),(1397,217,27,2,NULL),(1398,107,27,2,NULL),(1399,176,27,2,NULL),(1400,178,27,2,NULL),(1401,142,27,2,NULL),(1402,233,27,2,NULL),(1403,235,27,2,NULL),(1404,237,27,2,NULL),(1405,240,27,2,NULL),(1406,242,27,2,NULL),(1407,244,27,2,NULL),(1408,245,27,2,NULL),(1409,97,27,2,NULL),(1410,216,1,2,NULL),(1411,217,1,2,NULL),(1412,216,3,2,NULL),(1413,217,3,2,NULL),(1414,216,8,2,NULL),(1415,217,8,2,NULL),(1416,216,12,2,NULL),(1417,217,12,2,NULL),(1418,216,14,2,NULL),(1419,217,14,2,NULL),(1420,51,28,2,NULL),(1421,53,28,2,NULL),(1422,216,15,2,NULL),(1423,217,15,2,NULL),(1424,8,28,2,NULL),(1425,9,28,2,NULL),(1426,35,28,2,NULL),(1427,216,18,2,NULL),(1428,217,18,2,NULL),(1429,216,21,2,NULL),(1430,217,21,2,NULL),(1431,216,29,2,NULL),(1432,217,29,2,NULL),(1433,107,28,2,NULL),(1434,176,28,2,NULL),(1435,178,28,2,NULL),(1436,216,30,2,NULL),(1437,217,30,2,NULL),(1438,216,31,2,NULL),(1439,217,31,2,NULL),(1440,142,28,2,NULL),(1441,216,34,2,NULL),(1442,217,34,2,NULL),(1443,216,35,2,NULL),(1444,217,35,2,NULL),(1445,216,68,2,NULL),(1446,217,68,2,NULL),(1447,233,28,2,NULL),(1448,235,28,2,NULL),(1449,237,28,2,NULL),(1450,240,28,2,NULL),(1451,242,28,2,NULL),(1452,244,28,2,NULL),(1453,245,28,2,NULL),(1454,216,75,2,NULL),(1455,217,75,2,NULL),(1456,78,27,2,NULL),(1457,202,29,2,NULL),(1458,107,1,2,NULL),(1459,176,1,2,NULL),(1460,178,1,2,NULL),(1461,107,3,2,NULL),(1462,176,3,2,NULL),(1463,178,3,2,NULL),(1464,107,8,2,NULL),(1465,176,8,2,NULL),(1466,178,8,2,NULL),(1467,107,12,2,NULL),(1468,176,12,2,NULL),(1469,178,12,2,NULL),(1470,107,14,2,NULL),(1471,176,14,2,NULL),(1472,178,14,2,NULL),(1473,51,29,2,NULL),(1474,53,29,2,NULL),(1475,107,15,2,NULL),(1476,176,15,2,NULL),(1477,178,15,2,NULL),(1478,8,29,2,NULL),(1479,9,29,2,NULL),(1480,35,29,2,NULL),(1481,107,18,2,NULL),(1482,176,18,2,NULL),(1483,178,18,2,NULL),(1484,107,21,2,NULL),(1485,176,21,2,NULL),(1486,178,21,2,NULL),(1487,107,30,2,NULL),(1488,176,30,2,NULL),(1489,178,30,2,NULL),(1490,107,31,2,NULL),(1491,176,31,2,NULL),(1492,178,31,2,NULL),(1493,142,29,2,NULL),(1494,107,34,2,NULL),(1495,176,34,2,NULL),(1496,178,34,2,NULL),(1497,107,35,2,NULL),(1498,176,35,2,NULL),(1499,178,35,2,NULL),(1500,107,68,2,NULL),(1501,176,68,2,NULL),(1502,178,68,2,NULL),(1503,233,29,2,NULL),(1504,235,29,2,NULL),(1505,237,29,2,NULL),(1506,240,29,2,NULL),(1507,242,29,2,NULL),(1508,244,29,2,NULL),(1509,245,29,2,NULL),(1510,107,75,2,NULL),(1511,176,75,2,NULL),(1512,178,75,2,NULL),(1513,51,30,2,NULL),(1514,53,30,2,NULL),(1515,8,30,2,NULL),(1516,9,30,2,NULL),(1517,35,30,2,NULL),(1518,142,30,2,NULL),(1519,233,30,2,NULL),(1520,235,30,2,NULL),(1521,237,30,2,NULL),(1522,240,30,2,NULL),(1523,242,30,2,NULL),(1524,244,30,2,NULL),(1525,245,30,2,NULL),(1526,60,34,2,NULL),(1527,63,34,2,NULL),(1528,159,34,2,NULL),(1529,51,31,2,NULL),(1530,53,31,2,NULL),(1531,8,31,2,NULL),(1532,9,31,2,NULL),(1533,35,31,2,NULL),(1534,142,31,2,NULL),(1535,233,31,2,NULL),(1536,235,31,2,NULL),(1537,237,31,2,NULL),(1538,240,31,2,NULL),(1539,242,31,2,NULL),(1540,244,31,2,NULL),(1541,245,31,2,NULL),(1542,146,27,2,NULL),(1543,142,1,2,NULL),(1544,142,3,2,NULL),(1545,142,8,2,NULL),(1546,142,12,2,NULL),(1547,142,14,2,NULL),(1548,142,15,2,NULL),(1549,142,18,2,NULL),(1550,142,21,2,NULL),(1551,142,34,2,NULL),(1552,142,35,2,NULL),(1553,142,68,2,NULL),(1554,142,75,2,NULL),(1555,51,34,2,NULL),(1556,53,34,2,NULL),(1557,8,34,2,NULL),(1558,9,34,2,NULL),(1559,35,34,2,NULL),(1560,233,34,2,NULL),(1561,235,34,2,NULL),(1562,237,34,2,NULL),(1563,240,34,2,NULL),(1564,242,34,2,NULL),(1565,244,34,2,NULL),(1566,245,34,2,NULL),(1567,153,34,2,NULL),(1568,191,34,2,NULL),(1569,219,34,2,NULL),(1570,51,35,2,NULL),(1571,53,35,2,NULL),(1572,8,35,2,NULL),(1573,9,35,2,NULL),(1574,35,35,2,NULL),(1575,233,35,2,NULL),(1576,235,35,2,NULL),(1577,237,35,2,NULL),(1578,240,35,2,NULL),(1579,242,35,2,NULL),(1580,244,35,2,NULL),(1581,245,35,2,NULL),(1582,51,68,2,NULL),(1583,53,68,2,NULL),(1584,8,68,2,NULL),(1585,9,68,2,NULL),(1586,35,68,2,NULL),(1587,233,68,2,NULL),(1588,235,68,2,NULL),(1589,237,68,2,NULL),(1590,240,68,2,NULL),(1591,242,68,2,NULL),(1592,244,68,2,NULL),(1593,245,68,2,NULL),(1594,233,1,2,NULL),(1595,235,1,2,NULL),(1596,233,3,2,NULL),(1597,235,3,2,NULL),(1598,233,8,2,NULL),(1599,235,8,2,NULL),(1600,233,12,2,NULL),(1601,235,12,2,NULL),(1602,233,14,2,NULL),(1603,235,14,2,NULL),(1604,233,15,2,NULL),(1605,235,15,2,NULL),(1606,233,18,2,NULL),(1607,235,18,2,NULL),(1608,233,21,2,NULL),(1609,235,21,2,NULL),(1610,233,75,2,NULL),(1611,235,75,2,NULL),(1612,232,71,2,NULL),(1613,243,71,2,NULL),(1614,237,1,2,NULL),(1615,240,1,2,NULL),(1616,242,1,2,NULL),(1617,244,1,2,NULL),(1618,245,1,2,NULL),(1619,237,3,2,NULL),(1620,240,3,2,NULL),(1621,242,3,2,NULL),(1622,244,3,2,NULL),(1623,245,3,2,NULL),(1624,237,8,2,NULL),(1625,240,8,2,NULL),(1626,242,8,2,NULL),(1627,244,8,2,NULL),(1628,245,8,2,NULL),(1629,237,12,2,NULL),(1630,240,12,2,NULL),(1631,242,12,2,NULL),(1632,244,12,2,NULL),(1633,245,12,2,NULL),(1634,237,14,2,NULL),(1635,240,14,2,NULL),(1636,242,14,2,NULL),(1637,244,14,2,NULL),(1638,245,14,2,NULL),(1639,237,15,2,NULL),(1640,240,15,2,NULL),(1641,242,15,2,NULL),(1642,244,15,2,NULL),(1643,245,15,2,NULL),(1644,237,18,2,NULL),(1645,240,18,2,NULL),(1646,242,18,2,NULL),(1647,244,18,2,NULL),(1648,245,18,2,NULL),(1649,237,21,2,NULL),(1650,240,21,2,NULL),(1651,242,21,2,NULL),(1652,244,21,2,NULL),(1653,245,21,2,NULL),(1654,237,75,2,NULL),(1655,240,75,2,NULL),(1656,242,75,2,NULL),(1657,244,75,2,NULL),(1658,245,75,2,NULL),(1659,239,68,2,NULL),(1660,238,68,2,NULL),(1661,51,75,2,NULL),(1662,53,75,2,NULL),(1663,8,75,2,NULL),(1664,9,75,2,NULL),(1665,35,75,2,NULL),(1666,51,1,2,NULL),(1667,53,1,2,NULL),(1668,8,1,2,NULL),(1669,9,1,2,NULL),(1670,35,1,2,NULL),(1671,1,1,2,NULL),(1672,51,3,2,NULL),(1673,53,3,2,NULL),(1674,8,3,2,NULL),(1675,9,3,2,NULL),(1676,35,3,2,NULL),(1677,11,11,2,NULL),(1678,28,18,2,NULL),(1679,29,18,2,NULL),(1680,37,18,2,NULL),(1681,51,8,2,NULL),(1682,53,8,2,NULL),(1683,8,8,2,NULL),(1684,9,8,2,NULL),(1685,35,8,2,NULL),(1686,20,8,2,NULL),(1687,41,18,2,NULL),(1688,44,8,2,NULL),(1689,59,8,2,NULL),(1690,62,18,2,NULL),(1691,83,8,2,NULL),(1692,51,12,2,NULL),(1693,53,12,2,NULL),(1694,8,12,2,NULL),(1695,9,12,2,NULL),(1696,35,12,2,NULL),(1697,13,12,2,NULL),(1698,51,15,2,NULL),(1699,53,15,2,NULL),(1700,8,14,2,NULL),(1701,9,14,2,NULL),(1702,35,14,2,NULL),(1703,51,18,2,NULL),(1704,53,18,2,NULL),(1705,51,21,2,NULL),(1706,53,21,2,NULL),(1707,39,8,2,NULL),(1708,74,18,2,NULL),(1709,8,15,2,NULL),(1710,9,15,2,NULL),(1711,35,15,2,NULL),(1712,23,16,2,NULL),(1713,56,12,2,NULL),(1714,8,18,2,NULL),(1715,9,18,2,NULL),(1716,35,18,2,NULL),(1717,8,21,2,NULL),(1718,9,21,2,NULL),(1719,35,21,2,NULL),(1720,3,18,2,NULL),(1721,16,18,2,NULL),(1722,26,18,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (17,'android.permission.ACCESS_COARSE_LOCATION'),(13,'android.permission.ACCESS_FINE_LOCATION'),(5,'android.permission.ACCESS_NETWORK_STATE'),(4,'android.permission.ACCESS_WIFI_STATE'),(10,'android.permission.GET_TASKS'),(2,'android.permission.INTERNET'),(14,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(7,'android.permission.RECEIVE_BOOT_COMPLETED'),(9,'android.permission.SET_WALLPAPER'),(12,'android.permission.SYSTEM_ALERT_WINDOW'),(16,'android.permission.VIBRATE'),(11,'android.permission.WAKE_LOCK'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(6,'com.android.launcher.permission.INSTALL_SHORTCUT'),(8,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(15,'rockchip.permission.FULL_SCREEN');
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'file://',NULL,NULL,NULL),(5,NULL,NULL,'',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'',NULL,NULL,NULL),(8,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(9,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(10,NULL,NULL,'file://',NULL,NULL,NULL),(11,NULL,NULL,'file://',NULL,NULL,NULL),(12,NULL,NULL,'file://',NULL,NULL,NULL),(13,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(14,NULL,NULL,'file://',NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(16,NULL,NULL,'file://',NULL,NULL,NULL),(17,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(18,NULL,NULL,'file://',NULL,NULL,NULL),(19,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(20,NULL,NULL,'file://',NULL,NULL,NULL),(21,NULL,NULL,'file://',NULL,NULL,NULL),(22,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(23,NULL,NULL,'http://k2softwareteam.appspot.com/',NULL,NULL,NULL),(24,NULL,NULL,'http://k2-software.appspot.com/',NULL,NULL,NULL),(25,NULL,NULL,'file://',NULL,NULL,NULL),(26,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(27,NULL,NULL,'(.*)',NULL,NULL,NULL),(28,NULL,NULL,'(.*)',NULL,NULL,NULL),(29,NULL,NULL,'(.*)',NULL,NULL,NULL),(30,NULL,NULL,'(.*)',NULL,NULL,NULL),(31,NULL,NULL,'(.*)',NULL,NULL,NULL),(32,NULL,NULL,'(.*)',NULL,NULL,NULL),(33,NULL,NULL,'market://search?q=Igor Karun',NULL,NULL,NULL),(34,NULL,NULL,'(.*)',NULL,NULL,NULL),(35,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(36,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(37,NULL,NULL,'file://',NULL,NULL,NULL),(38,NULL,NULL,'file://',NULL,NULL,NULL),(39,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(40,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(41,NULL,NULL,'(.*)',NULL,NULL,NULL),(42,NULL,NULL,'',NULL,NULL,NULL),(43,NULL,NULL,'file://',NULL,NULL,NULL),(44,NULL,NULL,'(.*)',NULL,NULL,NULL),(45,NULL,NULL,'',NULL,NULL,NULL),(46,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(47,NULL,NULL,'file://',NULL,NULL,NULL),(48,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(49,NULL,NULL,'file://',NULL,NULL,NULL),(50,NULL,NULL,'file://',NULL,NULL,NULL),(51,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(52,NULL,NULL,'(.*)',NULL,NULL,NULL),(53,NULL,NULL,'(.*)',NULL,NULL,NULL),(54,NULL,NULL,'(.*)',NULL,NULL,NULL),(55,NULL,NULL,'(.*)',NULL,NULL,NULL),(56,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(57,NULL,NULL,'(.*)',NULL,NULL,NULL),(58,NULL,NULL,'(.*)',NULL,NULL,NULL),(59,NULL,NULL,'(.*)',NULL,NULL,NULL),(60,NULL,NULL,'(.*)',NULL,NULL,NULL),(61,NULL,NULL,'(.*)',NULL,NULL,NULL),(62,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,2,1),(7,2,2),(8,2,3),(9,2,5),(10,2,6),(11,2,7),(12,2,8),(13,3,1),(14,3,2),(15,3,3),(16,3,5),(17,3,6),(18,3,7),(19,3,8),(20,3,9),(21,4,1),(22,4,2),(23,4,3),(24,4,5),(25,4,6),(26,4,7),(27,4,8),(28,4,9),(29,5,1),(30,5,2),(31,5,3),(32,5,4),(33,5,5),(34,5,6),(35,5,7),(36,5,8),(37,5,10),(38,5,11),(39,6,1),(40,6,2),(41,6,3),(42,6,5),(43,6,6),(44,6,10),(45,6,12),(46,7,17),(47,7,16),(48,7,1),(49,7,2),(50,7,3),(51,7,4),(52,7,5),(53,7,11),(54,7,13),(55,7,14),(56,7,15);
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

-- Dump completed on 2015-10-12  3:30:24
