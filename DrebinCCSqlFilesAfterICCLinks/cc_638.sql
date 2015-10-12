-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_638
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
INSERT INTO `ActionStrings` VALUES (19,'NULL-CONSTANT'),(6,'android.intent.action.BOOT_COMPLETED'),(14,'android.intent.action.CHOOSER'),(13,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(8,'android.intent.action.PACKAGE_ADDED'),(11,'android.intent.action.PACKAGE_REMOVED'),(17,'android.intent.action.SEND'),(15,'android.intent.action.SENDTO'),(12,'android.intent.action.VIEW'),(9,'android.net.conn.CONNECTIVITY_CHANGE'),(3,'android.net.wifi.SCAN_RESULTS'),(7,'android.net.wifi.WIFI_STATE_CHANGED'),(5,'com.airpush.android.PushServiceStart22236'),(4,'com.android.action_PUSHADSACTIVITY'),(2,'com.android.vending.INSTALL_REFERRER'),(10,'com.cczdt.whs.NS'),(18,'com.tencent.lbsapi.GPS_SINGLE'),(16,'com/cczdt/whs/NS'),(20,'net.crazymedia.iad.action_mtriggerPushAd');
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
INSERT INTO `Applications` VALUES (1,'org.underdev.penetratepro',36),(2,'org.underdev.penetratepro',24),(3,'org.underdev.penetrate',36),(4,'org.underdev.penetratepro',35),(5,'com.adroidzscpc.penetratezb',31),(6,'com.adroidzscpc.penetratezb',73),(7,'cn.playboy.fgdhfgnghmg',3);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(3,'android.intent.category.HOME'),(4,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
INSERT INTO `Classes` VALUES (1,1,'org.underdev.penetrate.Penetrate'),(2,1,'org.underdev.penetrate.Results'),(3,1,'org.underdev.penetrate.Preferences'),(4,2,'org.underdev.penetrate.Penetrate'),(5,3,'org.underdev.penetrate.Penetrate'),(6,2,'org.underdev.penetrate.Results'),(7,2,'org.underdev.penetrate.Preferences'),(8,3,'org.underdev.penetrate.Results'),(9,3,'org.underdev.penetrate.Preferences'),(10,3,'com.admob.android.ads.AdMobActivity'),(11,3,'com.admob.android.ads.analytics.InstallReceiver'),(12,4,'org.underdev.penetrate.Penetrate'),(13,4,'org.underdev.penetrate.Results'),(14,4,'org.underdev.penetrate.Preferences'),(15,2,'org.underdev.penetrate.lib.core.wifi.WifiReceiver'),(16,5,'org.underdev.penetrate.Penetrate'),(17,5,'org.underdev.penetrate.Results'),(18,5,'org.underdev.penetrate.Preferences'),(19,5,'com.adroidzscpc.penetratezb.MainA'),(20,5,'com.airpush.android.PushAds'),(21,5,'com.waps.OffersWebView'),(22,1,'org.underdev.penetrate.lib.core.wifi.WifiReceiver'),(23,5,'com.kuguo.openads.AdsOfferListActivity'),(24,5,'com.kuguo.pushads.PushAdsActivity'),(25,5,'com.airpush.android.PushService'),(26,6,'org.underdev.penetrate.Penetrate'),(27,6,'org.underdev.penetrate.Results'),(28,6,'org.underdev.penetrate.Preferences'),(29,5,'com.kuguo.pushads.AdsService'),(30,6,'com.adroidzscpc.penetratezb.MainA'),(31,5,'com.airpush.android.UserDetailsReceiver'),(32,5,'com.airpush.android.MessageReceiver'),(33,7,'org.underdev.penetrate.Penetrate'),(34,5,'com.airpush.android.DeliveryReceiver'),(35,6,'de.joergjahnke.mario.android.free.MobileMarioFree'),(36,5,'com.adroidzscpc.penetratezb.BootReceiver'),(37,6,'com.waps.OffersWebView'),(38,7,'org.underdev.penetrate.Results'),(39,6,'com.kuguo.ad.MainActivity'),(40,7,'org.underdev.penetrate.Preferences'),(41,6,'com.kuguo.ad.BoutiqueActivity'),(42,7,'com.kuguo.ad.MainActivity'),(43,5,'com.kuguo.pushads.AdsReceiver'),(44,7,'com.kuguo.ad.BoutiqueActivity'),(45,6,'com.kuguo.ad.MainService'),(46,7,'com.cczdt.whs.IA'),(47,7,'net.crazymedia.iad.AdPushActivity'),(48,6,'com.kuguo.ad.MainReceiver'),(49,7,'com.tencent.mobwin.MobinWINBrowserActivity'),(50,7,'com.kuguo.ad.MainService'),(51,7,'com.cczdt.whs.NS'),(52,4,'org.underdev.penetrate.lib.core.wifi.WifiReceiver'),(53,7,'net.crazymedia.iad.AdPushService'),(54,7,'com.kuguo.ad.MainReceiver'),(55,7,'com.cczdt.whs.Re'),(56,7,'net.crazymedia.iad.AdPushReceiver'),(57,3,'org.underdev.penetrate.Preferences$2'),(58,3,'org.underdev.penetrate.lib.gui.dialogs.AboutDialog$1'),(59,3,'org.underdev.penetrate.lib.core.wifi.WifiReceiver'),(60,3,'org.underdev.penetrate.lib.gui.dialogs.OpenDialog$1'),(61,6,'com.cooguo.advideo.VideoAdsView'),(62,6,'com.kuguo.ad.a'),(63,6,'com.waps.AppConnect'),(64,6,'com.waps.ab'),(65,6,'com.waps.x'),(66,6,'org.underdev.penetrate.lib.core.wifi.WifiReceiver'),(67,6,'com.waps.ap'),(68,6,'com.waps.y'),(69,6,'com.kuguo.ad.r'),(70,6,'com.cooguo.advideo.bb'),(71,6,'org.underdev.penetrate.lib.gui.activities.Results$2'),(72,7,'net.crazymedia.iad.d.i'),(73,7,'com.tencent.mobwin.core.k'),(74,7,'net.crazymedia.iad.d.b'),(75,7,'org.underdev.penetrate.lib.gui.activities.Penetrate'),(76,7,'org.underdev.penetrate.lib.gui.activities.Results$2'),(77,7,'com.cczdt.whs.af'),(78,7,'org.underdev.penetrate.lib.core.wifi.WifiReceiver'),(79,7,'com.cczdt.whs.z'),(80,7,'net.crazymedia.iad.b.g'),(81,7,'com.kuguo.ad.a'),(82,7,'org.underdev.penetrate.lib.gui.dialogs.OpenDialog$1'),(83,7,'com.kuguo.ad.c'),(84,7,'com.tencent.mobwin.core.w'),(85,7,'org.underdev.penetrate.lib.gui.dialogs.AboutDialog$1'),(86,7,'com.tencent.lbsapi.core.c'),(87,7,'com.tencent.lbsapi.core.a'),(88,7,'com.tencent.mobwin.utils.ApkInstalReceiver'),(89,7,'org.underdev.penetrate.lib.gui.activities.Penetrate$1'),(90,7,'com.kuguo.ad.r'),(91,7,'com.cczdt.whs.ServiceManager');
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
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,6,'results'),(2,2,'results'),(3,3,'download'),(4,13,'results'),(5,14,'download'),(6,11,'(.*)'),(7,10,'int'),(8,10,'t'),(9,10,'u'),(10,8,'results'),(11,10,'ru'),(12,11,'ADMOB_PUBLISHER_ID'),(13,11,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(14,10,'o'),(15,10,'nosk'),(16,10,'si'),(17,9,'download'),(18,10,'ap'),(19,10,'sc'),(20,10,'sku'),(21,10,'sd'),(22,10,'a'),(23,10,'sin'),(24,11,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(25,10,'su'),(26,10,'or'),(27,10,'au'),(28,10,'b'),(29,10,'cbo'),(30,10,'msm'),(31,10,'oi'),(32,10,'mi'),(33,10,'p'),(34,10,'c'),(35,10,'s'),(36,10,'ad'),(37,10,'cs'),(38,10,'json'),(39,10,'rd'),(40,10,'tr'),(41,11,'referrer'),(42,10,'$'),(43,10,'skd'),(44,37,'URL_PARAMS'),(45,37,'APP_ID'),(46,39,'APP_ID'),(47,30,'APP_ID'),(48,37,'UrlPath'),(49,37,'URL'),(50,27,'results'),(51,39,'cooId'),(52,30,'cooId'),(53,41,'channelId'),(54,45,'channelId'),(55,28,'download'),(56,37,'isFinshClose'),(57,30,'UMENG_APPKEY'),(58,37,'name'),(59,37,'CLIENT_PACKAGE'),(60,37,'WAPS_ID'),(61,39,'WAPS_ID'),(62,30,'WAPS_ID'),(63,37,'offers_webview_tag'),(64,37,'ACTIVITY_FLAG'),(65,30,'UMENG_CHANNEL'),(66,37,'Notify_Id'),(67,37,'ADVIEW'),(68,39,'ADVIEW'),(69,30,'ADVIEW'),(70,37,'WAPS_PID'),(71,39,'WAPS_PID'),(72,30,'WAPS_PID'),(73,41,'cooId'),(74,45,'cooId'),(75,39,'CLIENT_PACKAGE'),(76,30,'CLIENT_PACKAGE'),(77,37,'Offers_URL'),(78,39,'channelId'),(79,30,'channelId'),(80,39,'applist'),(81,37,'DEVICE_ID'),(82,39,'DEVICE_ID'),(83,30,'DEVICE_ID'),(84,37,'Notify_Url_Params'),(85,37,'SHWO_FLAG'),(86,39,'message'),(87,37,'APP_PID'),(88,39,'APP_PID'),(89,30,'APP_PID'),(90,47,'message'),(91,39,'shortcut'),(92,37,'USER_ID'),(93,47,'type'),(94,33,'startTime'),(95,48,'startTime'),(96,53,'startTime'),(97,56,'startTime'),(98,42,'shortcut'),(99,42,'applist'),(100,40,'download'),(101,33,'cooId'),(102,42,'cooId'),(103,44,'cooId'),(104,50,'cooId'),(105,49,'cooId'),(106,49,'URL'),(107,54,'type'),(108,46,'gid'),(109,48,'url'),(110,51,'checktype'),(111,33,'crazy_channelid'),(112,48,'crazy_channelid'),(113,53,'crazy_channelid'),(114,33,'channelId'),(115,44,'channelId'),(116,50,'channelId'),(117,55,'NOTIFICATION_GID'),(118,49,'EFFECTIVE_TYPE'),(119,38,'results'),(120,33,'endTime'),(121,48,'endTime'),(122,53,'endTime'),(123,56,'endTime'),(124,42,'message'),(125,55,'NOTIFICATION_PACKNAME'),(126,56,'startInstall'),(127,54,'message'),(128,56,'downAppidEncode'),(129,33,'apkey'),(130,51,'apkey'),(131,42,'APP_CHANNEL'),(132,56,'packageName'),(133,42,'APP_ID'),(134,56,'endInstall'),(135,33,'downAppIdEncode'),(136,48,'downAppIdEncode'),(137,53,'downAppIdEncode'),(138,56,'downAppIdEncode'),(139,56,'downAppId'),(140,33,'downAppId'),(141,48,'downAppId'),(142,53,'downAppId'),(143,53,'GetPushAdsMode');
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'r',1,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'r',1,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,22,'r',1,NULL,NULL),(22,21,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'s',1,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'s',0,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'r',0,NULL,NULL),(32,32,'r',0,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'r',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'r',1,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'r',1,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'s',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,48,'r',1,NULL,NULL),(48,47,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'s',0,NULL,NULL),(51,51,'s',1,NULL,NULL),(52,52,'r',1,NULL,NULL),(53,53,'s',0,NULL,NULL),(54,54,'r',1,NULL,NULL),(55,55,'r',1,NULL,NULL),(56,56,'r',1,NULL,NULL),(57,59,'r',1,NULL,NULL),(58,64,'r',1,NULL,NULL),(59,66,'r',1,NULL,NULL),(60,68,'r',1,NULL,NULL),(61,78,'r',1,NULL,NULL),(62,83,'r',1,NULL,NULL),(63,86,'r',1,NULL,NULL),(64,87,'r',1,NULL,NULL),(65,88,'r',1,NULL,NULL),(66,88,'r',1,NULL,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,9),(2,2,9),(3,3,9),(4,4,41),(5,5,39),(6,5,30),(7,6,39),(8,7,39),(9,7,30),(10,8,30),(11,8,39),(12,9,30),(13,9,39),(14,9,37),(15,10,39),(16,10,41),(17,10,45),(18,11,37),(19,12,39),(20,12,30),(21,13,47),(22,14,41),(23,15,39),(24,16,39),(25,17,39),(26,17,30),(27,18,39),(28,19,39),(29,20,37),(30,21,30),(31,21,39),(32,22,48),(33,23,56),(34,24,56),(35,25,42),(36,25,49),(37,26,49),(38,26,42),(39,27,48),(40,28,53),(41,28,33),(42,29,53),(43,29,33),(44,30,49),(45,30,42),(46,31,44),(47,32,55),(48,33,48),(49,34,44),(50,35,42),(51,35,49),(52,36,55),(53,37,56),(54,37,53),(55,37,33),(56,37,48),(57,38,55),(58,39,48),(59,40,49),(60,40,42),(61,41,49),(62,41,42),(63,42,33),(64,42,53),(65,43,42),(66,43,49),(67,44,49),(68,44,50),(69,44,33),(70,44,44),(71,44,42),(72,45,49),(73,45,42),(74,46,42),(75,46,49),(76,47,56),(77,48,48),(78,49,53),(79,49,33),(80,50,53),(81,50,48),(82,50,56),(83,50,33),(84,51,49),(85,51,42),(86,52,56),(87,53,49),(88,54,53),(89,54,33),(90,55,49),(91,55,42),(92,56,42),(93,57,33),(94,58,49),(95,58,42),(96,59,54),(97,60,51),(98,61,49),(99,61,42),(100,62,56);
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,57,'<org.underdev.penetrate.Preferences$2: boolean onPreferenceClick(android.preference.Preference)>',7,'a',0),(2,58,'<org.underdev.penetrate.lib.gui.dialogs.AboutDialog$1: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(3,60,'<org.underdev.penetrate.lib.gui.dialogs.OpenDialog$1: void onClick(android.content.DialogInterface,int)>',9,'a',0),(4,41,'<com.kuguo.ad.BoutiqueActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',55,'a',NULL),(5,61,'<com.cooguo.advideo.VideoAdsView: void processClickAction()>',60,'a',NULL),(6,62,'<com.kuguo.ad.a: boolean d(android.content.Context,java.lang.String)>',4,'a',NULL),(7,61,'<com.cooguo.advideo.VideoAdsView: void processClickAction()>',211,'a',NULL),(8,63,'<com.waps.AppConnect: void a(android.content.Context,java.lang.String,java.lang.String)>',14,'a',NULL),(9,65,'<com.waps.x: void a(org.apache.http.HttpResponse,java.lang.String,float,float,java.lang.String,int,java.io.InputStream,com.waps.z,boolean)>',257,'a',NULL),(10,62,'<com.kuguo.ad.a: void a(android.content.Context,java.lang.String,java.lang.String,int)>',16,'a',NULL),(11,67,'<com.waps.ap: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(12,61,'<com.cooguo.advideo.VideoAdsView: void processClickAction()>',125,'a',NULL),(13,48,'<com.kuguo.ad.MainReceiver: void a(android.content.Context,android.content.Intent)>',15,'s',NULL),(14,41,'<com.kuguo.ad.BoutiqueActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',29,'a',NULL),(15,69,'<com.kuguo.ad.r: void a(android.content.Context,java.lang.String)>',5,'a',NULL),(16,63,'<com.waps.AppConnect: void showMore(android.content.Context,java.lang.String)>',20,'a',NULL),(17,70,'<com.cooguo.advideo.bb: void a(com.cooguo.advideo.c.e,int)>',93,'a',NULL),(18,63,'<com.waps.AppConnect: void showFeedback()>',3,'a',NULL),(19,71,'<org.underdev.penetrate.lib.gui.activities.Results$2: void onClick(android.view.View)>',28,'a',NULL),(20,37,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',56,'a',NULL),(21,61,'<com.cooguo.advideo.VideoAdsView: void processClickAction()>',155,'a',NULL),(22,72,'<net.crazymedia.iad.d.i: int b(java.lang.String)>',43,'a',NULL),(23,56,'<net.crazymedia.iad.AdPushReceiver: void onReceive(android.content.Context,android.content.Intent)>',19,'s',NULL),(24,56,'<net.crazymedia.iad.AdPushReceiver: void onReceive(android.content.Context,android.content.Intent)>',187,'a',NULL),(25,73,'<com.tencent.mobwin.core.k: void onClick(android.view.View)>',104,'a',NULL),(26,73,'<com.tencent.mobwin.core.k: void onClick(android.view.View)>',163,'a',NULL),(27,72,'<net.crazymedia.iad.d.i: int b(java.lang.String)>',82,'p',NULL),(28,74,'<net.crazymedia.iad.d.b: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(29,75,'<org.underdev.penetrate.lib.gui.activities.Penetrate: void showResults(org.underdev.penetrate.lib.core.ApInfo,java.lang.String[])>',15,'a',NULL),(30,76,'<org.underdev.penetrate.lib.gui.activities.Results$2: void onClick(android.view.View)>',28,'a',NULL),(31,44,'<com.kuguo.ad.BoutiqueActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',55,'a',NULL),(32,77,'<com.cczdt.whs.af: void run()>',25,'a',NULL),(33,72,'<net.crazymedia.iad.d.i: int b(java.lang.String)>',25,'a',NULL),(34,44,'<com.kuguo.ad.BoutiqueActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',29,'a',NULL),(35,49,'<com.tencent.mobwin.MobinWINBrowserActivity: void c(java.lang.String,android.content.Context)>',9,'a',NULL),(36,79,'<com.cczdt.whs.z: void a(android.content.Context,android.content.Intent)>',25,'s',NULL),(37,80,'<net.crazymedia.iad.b.g: void b(org.json.JSONObject)>',59,'a',NULL),(38,79,'<com.cczdt.whs.z: void a(android.content.Context,android.content.Intent)>',65,'a',NULL),(39,72,'<net.crazymedia.iad.d.i: int b(java.lang.String)>',59,'a',NULL),(40,73,'<com.tencent.mobwin.core.k: void onClick(android.view.View)>',192,'a',NULL),(41,81,'<com.kuguo.ad.a: boolean d(android.content.Context,java.lang.String)>',4,'a',NULL),(42,82,'<org.underdev.penetrate.lib.gui.dialogs.OpenDialog$1: void onClick(android.content.DialogInterface,int)>',9,'a',0),(43,73,'<com.tencent.mobwin.core.k: void onClick(android.view.View)>',67,'a',NULL),(44,81,'<com.kuguo.ad.a: void a(android.content.Context,java.lang.String,java.lang.String,int)>',16,'a',NULL),(45,84,'<com.tencent.mobwin.core.w: void a(java.io.File,int)>',11,'a',NULL),(46,73,'<com.tencent.mobwin.core.k: void onClick(android.view.View)>',129,'a',NULL),(47,56,'<net.crazymedia.iad.AdPushReceiver: void onReceive(android.content.Context,android.content.Intent)>',108,'a',NULL),(48,72,'<net.crazymedia.iad.d.i: void a(android.content.Context,java.lang.String)>',5,'a',NULL),(49,85,'<org.underdev.penetrate.lib.gui.dialogs.AboutDialog$1: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(50,80,'<net.crazymedia.iad.b.g: void b(org.json.JSONObject)>',81,'a',NULL),(51,73,'<com.tencent.mobwin.core.k: void onClick(android.view.View)>',152,'a',NULL),(52,56,'<net.crazymedia.iad.AdPushReceiver: void onReceive(android.content.Context,android.content.Intent)>',210,'s',NULL),(53,49,'<com.tencent.mobwin.MobinWINBrowserActivity: void a(java.lang.String,android.content.Context)>',18,'a',NULL),(54,89,'<org.underdev.penetrate.lib.gui.activities.Penetrate$1: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(55,73,'<com.tencent.mobwin.core.k: void onClick(android.view.View)>',111,'p',NULL),(56,90,'<com.kuguo.ad.r: void a(android.content.Context,java.lang.String)>',5,'a',NULL),(57,91,'<com.cczdt.whs.ServiceManager: void startService()>',14,'s',NULL),(58,73,'<com.tencent.mobwin.core.k: void onClick(android.view.View)>',175,'a',NULL),(59,54,'<com.kuguo.ad.MainReceiver: void a(android.content.Context,android.content.Intent)>',15,'s',NULL),(60,51,'<com.cczdt.whs.NS: void onDestroy()>',10,'s',NULL),(61,73,'<com.tencent.mobwin.core.k: void onClick(android.view.View)>',90,'p',NULL),(62,56,'<net.crazymedia.iad.AdPushReceiver: void onReceive(android.content.Context,android.content.Intent)>',195,'s',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,12),(2,3,12),(3,4,12),(4,5,12),(5,6,12),(6,8,12),(7,10,12),(8,11,12),(9,12,12),(10,13,13),(11,18,12),(12,19,12),(13,20,12),(14,22,12),(15,24,14),(16,25,14),(17,26,14),(18,27,14),(19,28,14),(20,29,14),(21,30,14),(22,31,14),(23,32,1),(24,33,1),(25,34,15),(26,35,12),(27,36,6),(28,37,1),(29,38,1),(30,39,13),(31,40,12),(32,41,12),(33,42,12),(34,44,14),(35,45,14),(36,46,14),(37,47,14),(38,48,14),(39,49,14),(40,50,14),(41,51,14),(42,53,1),(43,54,1),(44,55,13),(45,59,14),(46,60,14),(47,61,14),(48,62,14),(49,63,14),(50,64,14),(51,65,14),(52,66,14),(53,67,16),(54,68,12),(55,69,12),(56,70,12),(57,71,12),(58,72,1),(59,73,1),(60,74,17),(61,78,12),(62,79,12),(63,80,15),(64,81,1),(65,82,1),(66,84,12),(67,85,12),(68,86,12),(69,87,12),(70,88,12),(71,89,12),(72,90,12),(73,91,12),(74,92,19),(75,93,12),(76,95,12),(77,96,12),(78,97,12),(79,98,16),(80,99,12),(81,100,12),(82,102,16),(83,103,20);
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
INSERT INTO `ICategories` VALUES (1,3,2),(2,4,2),(3,5,2),(4,6,2),(5,32,1),(6,33,4),(7,37,1),(8,38,4),(9,53,1),(10,54,4),(11,72,1),(12,73,4),(13,81,1),(14,82,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'com/kuguo/ad/MainActivity'),(2,7,'NULL-CONSTANT'),(3,9,'(.*)'),(4,14,'com/kuguo/ad/MainService'),(5,15,''),(6,16,''),(7,17,''),(8,21,'(.*)'),(9,23,'(.*)'),(10,36,'net/crazymedia/iad/AdPushService'),(11,41,'com.google.android.maps.MapsActivity'),(12,42,'com.android.settings.WirelessSettings'),(13,43,'org.underdev.penetrate.Results'),(14,52,'com/kuguo/ad/MainActivity'),(15,56,''),(16,57,''),(17,58,''),(18,68,'com.android.browser.BrowserActivity'),(19,69,'com.android.browser.BrowserActivity'),(20,70,'com.android.browser.BrowserActivity'),(21,71,'com.android.browser.BrowserActivity'),(22,75,'com/tencent/mobwin/MobinWINBrowserActivity'),(23,76,'NULL-CONSTANT'),(24,77,'com/tencent/mobwin/MobinWINBrowserActivity'),(25,83,'net/crazymedia/iad/AdPushActivity'),(26,85,'com.android.browser.BrowserActivity'),(27,86,'com.android.browser.BrowserActivity'),(28,87,'com.android.browser.BrowserActivity'),(29,88,'com.android.browser.BrowserActivity'),(30,90,'com.google.android.maps.MapsActivity'),(31,91,'com.android.browser.BrowserActivity'),(32,92,'net/crazymedia/iad/AdPushService'),(33,93,'com.android.browser.BrowserActivity'),(34,94,'org.underdev.penetrate.Preferences'),(35,100,'com.google.android.maps.MapsActivity'),(36,101,'com/kuguo/ad/MainService'),(37,103,'net/crazymedia/iad/AdPushService');
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,1),(2,3,2),(3,4,3),(4,5,4),(5,6,5),(6,8,6),(7,10,7),(8,11,8),(9,12,9),(10,13,10),(11,18,11),(12,19,12),(13,20,13),(14,22,14),(15,34,15),(16,39,16),(17,40,17),(18,41,18),(19,55,20),(20,68,21),(21,69,22),(22,70,23),(23,71,24),(24,78,25),(25,79,26),(26,80,27),(27,83,28),(28,84,29),(29,85,30),(30,86,31),(31,87,32),(32,88,33),(33,89,34),(34,90,35),(35,91,36),(36,93,37),(37,95,39),(38,96,40),(39,97,41),(40,99,42),(41,100,43);
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,2,'message'),(2,2,'sharedid'),(3,2,'applist'),(4,2,'shortcut'),(5,9,'USER_ID'),(6,9,'CLIENT_PACKAGE'),(7,9,'Offers_URL'),(8,9,'offers_webview_tag'),(9,9,'URL_PARAMS'),(10,21,'USER_ID'),(11,21,'CLIENT_PACKAGE'),(12,21,'Offers_URL'),(13,21,'offers_webview_tag'),(14,21,'URL_PARAMS'),(15,23,'UrlPath'),(16,23,'ACTIVITY_FLAG'),(17,23,'offers_webview_tag'),(18,23,'URL_PARAMS'),(19,24,'android.intent.extra.INTENT'),(20,25,'android.intent.extra.INTENT'),(21,26,'android.intent.extra.TITLE'),(22,26,'android.intent.extra.INTENT'),(23,27,'android.intent.extra.INTENT'),(24,28,'android.intent.extra.TITLE'),(25,28,'android.intent.extra.INTENT'),(26,29,'android.intent.extra.INTENT'),(27,30,'android.intent.extra.TITLE'),(28,30,'android.intent.extra.INTENT'),(29,31,'android.intent.extra.TITLE'),(30,31,'android.intent.extra.INTENT'),(31,34,'sms_body'),(32,35,'sms_body'),(33,35,'address'),(34,43,'results'),(35,44,'android.intent.extra.INTENT'),(36,45,'android.intent.extra.INTENT'),(37,46,'android.intent.extra.TITLE'),(38,46,'android.intent.extra.INTENT'),(39,47,'android.intent.extra.INTENT'),(40,48,'android.intent.extra.TITLE'),(41,48,'android.intent.extra.INTENT'),(42,49,'android.intent.extra.INTENT'),(43,50,'android.intent.extra.TITLE'),(44,50,'android.intent.extra.INTENT'),(45,51,'android.intent.extra.TITLE'),(46,51,'android.intent.extra.INTENT'),(47,52,'message'),(48,52,'sharedid'),(49,52,'applist'),(50,52,'shortcut'),(51,59,'android.intent.extra.INTENT'),(52,60,'android.intent.extra.INTENT'),(53,61,'android.intent.extra.TITLE'),(54,61,'android.intent.extra.INTENT'),(55,62,'android.intent.extra.INTENT'),(56,63,'android.intent.extra.TITLE'),(57,63,'android.intent.extra.INTENT'),(58,64,'android.intent.extra.INTENT'),(59,65,'android.intent.extra.TITLE'),(60,65,'android.intent.extra.INTENT'),(61,66,'android.intent.extra.TITLE'),(62,66,'android.intent.extra.INTENT'),(63,67,'checktype'),(64,74,'sms_body'),(65,74,'android.intent.extra.STREAM'),(66,75,'EFFECTIVE_TYPE'),(67,77,'URL'),(68,77,'EFFECTIVE_TYPE'),(69,80,'sms_body'),(70,83,'activity_triggertype'),(71,94,'download'),(72,98,'checktype');
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,2),(5,5,1),(6,6,3),(7,7,3),(8,8,1),(9,9,3),(10,10,3),(11,11,4),(12,12,1),(13,13,5),(14,14,1),(15,15,1),(16,16,6),(17,17,1),(18,18,7),(19,19,8),(20,20,8),(21,21,9),(22,22,10),(23,23,3),(24,24,9),(25,25,3),(26,26,8),(27,27,9),(28,28,8),(29,28,11),(30,29,6),(31,30,8),(32,31,9),(33,32,3),(34,33,3),(35,34,8),(36,35,3),(37,36,9),(38,37,3),(39,38,3),(40,39,8),(41,40,3),(42,41,18),(43,42,18),(44,43,18),(45,44,18),(46,45,18),(47,46,18),(48,47,18),(49,48,18),(50,49,3),(51,50,3),(52,51,3),(53,52,3),(54,53,3),(55,54,3),(56,55,3),(57,56,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,5,1),(5,8,1),(6,11,2),(7,12,1),(8,14,1),(9,15,1),(10,16,3),(11,17,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,19,'package',NULL,NULL,NULL,NULL,NULL),(2,20,'package',NULL,NULL,NULL,NULL,NULL),(3,26,'package',NULL,NULL,NULL,NULL,NULL),(4,28,'package',NULL,NULL,NULL,NULL,NULL),(5,30,'package',NULL,NULL,NULL,NULL,NULL),(6,34,'package',NULL,NULL,NULL,NULL,NULL),(7,39,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,10,'application','vnd.android.package-archive'),(2,11,'application','vnd.android.package-archive'),(3,12,'application','vnd.android.package-archive'),(4,22,'application','vnd.android.package-archive'),(5,35,'vnd.android-dir','mms-sms'),(6,74,'image','png'),(7,78,'application','vnd.android.package-archive'),(8,79,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'com.adroidzscpc.penetratezb'),(2,3,'com.android.browser'),(3,4,'com.android.browser'),(4,7,'com.qihoo360.mobilesafe'),(5,9,'com.adroidzscpc.penetratezb'),(6,14,'com.adroidzscpc.penetratezb'),(7,15,'(.*)'),(8,16,'NULL-CONSTANT'),(9,17,''),(10,21,'com.adroidzscpc.penetratezb'),(11,23,'com.adroidzscpc.penetratezb'),(12,32,'(.*)'),(13,33,'(.*)'),(14,36,'cn.playboy.fgdhfgnghmg'),(15,37,'(.*)'),(16,38,'(.*)'),(17,41,'com.google.android.apps.maps'),(18,42,'com.android.settings'),(19,43,'cn.playboy.fgdhfgnghmg'),(20,52,'cn.playboy.fgdhfgnghmg'),(21,53,'(.*)'),(22,54,'(.*)'),(23,56,'(.*)'),(24,57,'NULL-CONSTANT'),(25,58,''),(26,68,'com.android.browser'),(27,69,'com.android.browser'),(28,70,'com.android.browser'),(29,71,'com.android.browser'),(30,72,'(.*)'),(31,73,'(.*)'),(32,75,'cn.playboy.fgdhfgnghmg'),(33,76,'com.qihoo360.mobilesafe'),(34,77,'cn.playboy.fgdhfgnghmg'),(35,81,'(.*)'),(36,82,'(.*)'),(37,83,'cn.playboy.fgdhfgnghmg'),(38,85,'com.android.browser'),(39,86,'com.android.browser'),(40,87,'com.android.browser'),(41,88,'com.android.browser'),(42,90,'com.google.android.apps.maps'),(43,91,'com.android.browser'),(44,92,'cn.playboy.fgdhfgnghmg'),(45,93,'com.android.browser'),(46,94,'cn.playboy.fgdhfgnghmg'),(47,100,'com.google.android.apps.maps'),(48,101,'cn.playboy.fgdhfgnghmg'),(49,103,'cn.playboy.fgdhfgnghmg');
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,4,0),(3,5,0),(4,11,0),(5,12,0),(6,15,0),(7,15,0),(8,19,0),(9,21,0),(10,21,0),(11,24,0),(12,19,0),(13,25,0),(14,30,0),(15,33,0),(16,36,0),(17,30,0),(18,43,0),(19,43,0),(20,47,0),(21,47,0),(22,51,0),(23,52,0),(24,54,0),(25,52,0),(26,54,0),(27,55,0),(28,55,0),(29,56,0),(30,56,0),(31,56,0),(32,57,0),(33,57,0),(34,58,0),(35,59,0),(36,60,0),(37,59,0),(38,61,0),(39,62,0),(40,61,0),(41,54,0),(42,62,0),(43,56,0),(44,55,0),(45,63,0),(46,61,0),(47,64,0),(48,65,0),(49,54,0),(50,62,0),(51,56,0),(52,55,0),(53,63,0),(54,61,0),(55,64,0),(56,65,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,2,1,0),(2,4,0,0),(3,5,1,0),(4,5,1,0),(5,5,1,0),(6,5,1,0),(7,6,0,0),(8,7,1,0),(9,8,0,0),(10,9,1,0),(11,10,1,0),(12,11,1,0),(13,12,1,0),(14,13,0,0),(15,14,0,0),(16,14,0,0),(17,14,0,0),(18,15,1,0),(19,15,1,0),(20,15,1,0),(21,16,0,0),(22,17,1,0),(23,18,0,0),(24,19,1,0),(25,19,1,0),(26,19,1,0),(27,19,1,0),(28,19,1,0),(29,19,1,0),(30,19,1,0),(31,19,1,0),(32,20,1,0),(33,20,1,0),(34,21,1,0),(35,22,1,0),(36,23,0,0),(37,24,1,0),(38,24,1,0),(39,25,1,0),(40,26,1,0),(41,26,0,0),(42,28,0,0),(43,29,0,0),(44,30,1,0),(45,30,1,0),(46,30,1,0),(47,30,1,0),(48,30,1,0),(49,30,1,0),(50,30,1,0),(51,30,1,0),(52,31,0,0),(53,32,1,0),(54,32,1,0),(55,33,1,0),(56,34,0,0),(57,34,0,0),(58,34,0,0),(59,35,1,0),(60,35,1,0),(61,35,1,0),(62,35,1,0),(63,35,1,0),(64,35,1,0),(65,35,1,0),(66,35,1,0),(67,36,1,0),(68,37,0,0),(69,37,0,0),(70,37,0,0),(71,37,0,0),(72,38,1,0),(73,38,1,0),(74,39,1,0),(75,40,0,0),(76,41,0,0),(77,43,0,0),(78,44,1,0),(79,45,1,0),(80,46,1,0),(81,47,1,0),(82,47,1,0),(83,48,0,0),(84,49,1,0),(85,50,0,0),(86,50,0,0),(87,50,0,0),(88,50,0,0),(89,51,1,0),(90,51,0,0),(91,51,0,0),(92,52,0,0),(93,53,0,0),(94,54,0,0),(95,56,1,0),(96,56,1,0),(97,56,1,0),(98,57,1,0),(99,58,1,0),(100,58,0,0),(101,59,0,0),(102,60,1,0),(103,62,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=427 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,32,1,2,NULL),(2,33,1,2,NULL),(3,59,1,2,NULL),(4,60,1,2,NULL),(5,61,1,2,NULL),(6,62,1,2,NULL),(7,63,1,2,NULL),(8,64,1,2,NULL),(9,65,1,2,NULL),(10,66,1,2,NULL),(11,102,1,2,NULL),(12,37,1,2,NULL),(13,38,1,2,NULL),(14,81,1,2,NULL),(15,82,1,2,NULL),(16,32,21,2,NULL),(17,33,21,2,NULL),(18,59,21,2,NULL),(19,60,21,2,NULL),(20,61,21,2,NULL),(21,62,21,2,NULL),(22,63,21,2,NULL),(23,64,21,2,NULL),(24,65,21,2,NULL),(25,66,21,2,NULL),(26,102,21,2,NULL),(27,37,21,2,NULL),(28,38,21,2,NULL),(29,81,21,2,NULL),(30,82,21,2,NULL),(31,32,4,2,NULL),(32,33,4,2,NULL),(33,59,4,2,NULL),(34,60,4,2,NULL),(35,61,4,2,NULL),(36,62,4,2,NULL),(37,63,4,2,NULL),(38,64,4,2,NULL),(39,65,4,2,NULL),(40,66,4,2,NULL),(41,102,4,2,NULL),(42,37,4,2,NULL),(43,38,4,2,NULL),(44,81,4,2,NULL),(45,82,4,2,NULL),(46,32,15,2,NULL),(47,33,15,2,NULL),(48,59,15,2,NULL),(49,60,15,2,NULL),(50,61,15,2,NULL),(51,62,15,2,NULL),(52,63,15,2,NULL),(53,64,15,2,NULL),(54,65,15,2,NULL),(55,66,15,2,NULL),(56,102,15,2,NULL),(57,37,15,2,NULL),(58,38,15,2,NULL),(59,81,15,2,NULL),(60,82,15,2,NULL),(61,32,12,2,NULL),(62,33,12,2,NULL),(63,59,12,2,NULL),(64,60,12,2,NULL),(65,61,12,2,NULL),(66,62,12,2,NULL),(67,63,12,2,NULL),(68,64,12,2,NULL),(69,65,12,2,NULL),(70,66,12,2,NULL),(71,102,12,2,NULL),(72,37,12,2,NULL),(73,38,12,2,NULL),(74,81,12,2,NULL),(75,82,12,2,NULL),(76,32,52,2,NULL),(77,33,52,2,NULL),(78,59,52,2,NULL),(79,32,19,2,NULL),(80,60,52,2,NULL),(81,33,19,2,NULL),(82,61,52,2,NULL),(83,59,19,2,NULL),(84,62,52,2,NULL),(85,60,19,2,NULL),(86,63,52,2,NULL),(87,61,19,2,NULL),(88,64,52,2,NULL),(89,62,19,2,NULL),(90,65,52,2,NULL),(91,63,19,2,NULL),(92,66,52,2,NULL),(93,64,19,2,NULL),(94,102,52,2,NULL),(95,65,19,2,NULL),(96,37,52,2,NULL),(97,66,19,2,NULL),(98,38,52,2,NULL),(99,102,19,2,NULL),(100,81,52,2,NULL),(101,37,19,2,NULL),(102,82,52,2,NULL),(103,38,19,2,NULL),(104,81,19,2,NULL),(105,82,19,2,NULL),(106,32,24,2,NULL),(107,33,24,2,NULL),(108,59,24,2,NULL),(109,60,24,2,NULL),(110,61,24,2,NULL),(111,62,24,2,NULL),(112,63,24,2,NULL),(113,64,24,2,NULL),(114,65,24,2,NULL),(115,66,24,2,NULL),(116,102,24,2,NULL),(117,37,24,2,NULL),(118,38,24,2,NULL),(119,81,24,2,NULL),(120,82,24,2,NULL),(121,32,25,2,NULL),(122,33,25,2,NULL),(123,59,25,2,NULL),(124,60,25,2,NULL),(125,61,25,2,NULL),(126,62,25,2,NULL),(127,63,25,2,NULL),(128,64,25,2,NULL),(129,65,25,2,NULL),(130,66,25,2,NULL),(131,102,25,2,NULL),(132,37,25,2,NULL),(133,38,25,2,NULL),(134,81,25,2,NULL),(135,82,25,2,NULL),(136,32,36,2,NULL),(137,33,36,2,NULL),(138,59,36,2,NULL),(139,60,36,2,NULL),(140,61,36,2,NULL),(141,62,36,2,NULL),(142,63,36,2,NULL),(143,64,36,2,NULL),(144,65,36,2,NULL),(145,66,36,2,NULL),(146,102,36,2,NULL),(147,37,36,2,NULL),(148,38,36,2,NULL),(149,81,36,2,NULL),(150,82,36,2,NULL),(151,32,43,2,NULL),(152,33,43,2,NULL),(153,59,43,2,NULL),(154,60,43,2,NULL),(155,61,43,2,NULL),(156,62,43,2,NULL),(157,63,43,2,NULL),(158,64,43,2,NULL),(159,65,43,2,NULL),(160,66,43,2,NULL),(161,102,43,2,NULL),(162,37,43,2,NULL),(163,38,43,2,NULL),(164,81,43,2,NULL),(165,82,43,2,NULL),(166,32,30,2,NULL),(167,33,30,2,NULL),(168,59,30,2,NULL),(169,60,30,2,NULL),(170,61,30,2,NULL),(171,62,30,2,NULL),(172,63,30,2,NULL),(173,64,30,2,NULL),(174,65,30,2,NULL),(175,66,30,2,NULL),(176,102,30,2,NULL),(177,37,30,2,NULL),(178,38,30,2,NULL),(179,81,30,2,NULL),(180,82,30,2,NULL),(181,32,5,2,NULL),(182,33,5,2,NULL),(183,32,11,2,NULL),(184,33,11,2,NULL),(185,32,57,2,NULL),(186,33,57,2,NULL),(187,32,47,2,NULL),(188,33,47,2,NULL),(189,32,59,2,NULL),(190,33,59,2,NULL),(191,32,60,2,NULL),(192,33,60,2,NULL),(193,32,33,2,NULL),(194,33,33,2,NULL),(195,32,51,2,NULL),(196,33,51,2,NULL),(197,32,54,2,NULL),(198,33,54,2,NULL),(199,32,55,2,NULL),(200,33,55,2,NULL),(201,32,56,2,NULL),(202,33,56,2,NULL),(203,32,61,2,NULL),(204,33,61,2,NULL),(205,32,62,2,NULL),(206,33,62,2,NULL),(207,32,63,2,NULL),(208,33,63,2,NULL),(209,32,64,2,NULL),(210,33,64,2,NULL),(211,32,65,2,NULL),(212,33,65,2,NULL),(213,2,39,2,NULL),(214,2,42,2,NULL),(215,14,45,2,NULL),(216,14,50,2,NULL),(217,59,47,2,NULL),(218,60,47,2,NULL),(219,61,47,2,NULL),(220,62,47,2,NULL),(221,63,47,2,NULL),(222,64,47,2,NULL),(223,65,47,2,NULL),(224,66,47,2,NULL),(225,102,47,2,NULL),(226,37,47,2,NULL),(227,38,47,2,NULL),(228,81,47,2,NULL),(229,82,47,2,NULL),(230,59,59,2,NULL),(231,60,59,2,NULL),(232,61,59,2,NULL),(233,62,59,2,NULL),(234,63,59,2,NULL),(235,64,59,2,NULL),(236,65,59,2,NULL),(237,66,59,2,NULL),(238,102,59,2,NULL),(239,37,59,2,NULL),(240,38,59,2,NULL),(241,81,59,2,NULL),(242,82,59,2,NULL),(243,59,60,2,NULL),(244,60,60,2,NULL),(245,61,60,2,NULL),(246,62,60,2,NULL),(247,63,60,2,NULL),(248,64,60,2,NULL),(249,65,60,2,NULL),(250,66,60,2,NULL),(251,102,60,2,NULL),(252,37,60,2,NULL),(253,38,60,2,NULL),(254,81,60,2,NULL),(255,82,60,2,NULL),(256,59,5,2,NULL),(257,60,5,2,NULL),(258,61,5,2,NULL),(259,62,5,2,NULL),(260,63,5,2,NULL),(261,64,5,2,NULL),(262,65,5,2,NULL),(263,66,5,2,NULL),(264,102,5,2,NULL),(265,37,5,2,NULL),(266,38,5,2,NULL),(267,81,5,2,NULL),(268,82,5,2,NULL),(269,59,11,2,NULL),(270,60,11,2,NULL),(271,61,11,2,NULL),(272,62,11,2,NULL),(273,63,11,2,NULL),(274,64,11,2,NULL),(275,65,11,2,NULL),(276,66,11,2,NULL),(277,102,11,2,NULL),(278,37,11,2,NULL),(279,38,11,2,NULL),(280,81,11,2,NULL),(281,82,11,2,NULL),(282,59,57,2,NULL),(283,60,57,2,NULL),(284,61,57,2,NULL),(285,62,57,2,NULL),(286,63,57,2,NULL),(287,64,57,2,NULL),(288,65,57,2,NULL),(289,66,57,2,NULL),(290,102,57,2,NULL),(291,37,57,2,NULL),(292,38,57,2,NULL),(293,81,57,2,NULL),(294,82,57,2,NULL),(295,59,33,2,NULL),(296,60,33,2,NULL),(297,61,33,2,NULL),(298,62,33,2,NULL),(299,63,33,2,NULL),(300,64,33,2,NULL),(301,65,33,2,NULL),(302,66,33,2,NULL),(303,102,33,2,NULL),(304,37,33,2,NULL),(305,38,33,2,NULL),(306,81,33,2,NULL),(307,82,33,2,NULL),(308,52,39,2,NULL),(309,52,42,2,NULL),(310,59,51,2,NULL),(311,60,51,2,NULL),(312,61,51,2,NULL),(313,62,51,2,NULL),(314,63,51,2,NULL),(315,64,51,2,NULL),(316,65,51,2,NULL),(317,66,51,2,NULL),(318,59,54,2,NULL),(319,60,54,2,NULL),(320,61,54,2,NULL),(321,62,54,2,NULL),(322,63,54,2,NULL),(323,64,54,2,NULL),(324,65,54,2,NULL),(325,66,54,2,NULL),(326,59,55,2,NULL),(327,60,55,2,NULL),(328,61,55,2,NULL),(329,62,55,2,NULL),(330,63,55,2,NULL),(331,64,55,2,NULL),(332,65,55,2,NULL),(333,66,55,2,NULL),(334,59,56,2,NULL),(335,60,56,2,NULL),(336,61,56,2,NULL),(337,62,56,2,NULL),(338,63,56,2,NULL),(339,64,56,2,NULL),(340,65,56,2,NULL),(341,66,56,2,NULL),(342,59,61,2,NULL),(343,60,61,2,NULL),(344,61,61,2,NULL),(345,62,61,2,NULL),(346,63,61,2,NULL),(347,64,61,2,NULL),(348,65,61,2,NULL),(349,66,61,2,NULL),(350,59,62,2,NULL),(351,60,62,2,NULL),(352,61,62,2,NULL),(353,62,62,2,NULL),(354,63,62,2,NULL),(355,64,62,2,NULL),(356,65,62,2,NULL),(357,66,62,2,NULL),(358,59,63,2,NULL),(359,60,63,2,NULL),(360,61,63,2,NULL),(361,62,63,2,NULL),(362,63,63,2,NULL),(363,64,63,2,NULL),(364,65,63,2,NULL),(365,66,63,2,NULL),(366,59,64,2,NULL),(367,60,64,2,NULL),(368,61,64,2,NULL),(369,62,64,2,NULL),(370,63,64,2,NULL),(371,64,64,2,NULL),(372,65,64,2,NULL),(373,66,64,2,NULL),(374,59,65,2,NULL),(375,60,65,2,NULL),(376,61,65,2,NULL),(377,62,65,2,NULL),(378,63,65,2,NULL),(379,64,65,2,NULL),(380,65,65,2,NULL),(381,66,65,2,NULL),(382,102,54,2,NULL),(383,102,55,2,NULL),(384,102,56,2,NULL),(385,37,51,2,NULL),(386,38,51,2,NULL),(387,81,51,2,NULL),(388,82,51,2,NULL),(389,102,61,2,NULL),(390,102,62,2,NULL),(391,102,63,2,NULL),(392,102,64,2,NULL),(393,102,65,2,NULL),(394,101,45,2,NULL),(395,101,50,2,NULL),(396,37,54,2,NULL),(397,38,54,2,NULL),(398,81,54,2,NULL),(399,82,54,2,NULL),(400,37,55,2,NULL),(401,38,55,2,NULL),(402,81,55,2,NULL),(403,82,55,2,NULL),(404,36,53,2,NULL),(405,92,53,2,NULL),(406,103,53,2,NULL),(407,37,61,2,NULL),(408,38,61,2,NULL),(409,81,61,2,NULL),(410,82,61,2,NULL),(411,37,62,2,NULL),(412,38,62,2,NULL),(413,81,62,2,NULL),(414,82,62,2,NULL),(415,37,63,2,NULL),(416,38,63,2,NULL),(417,81,63,2,NULL),(418,82,63,2,NULL),(419,37,64,2,NULL),(420,38,64,2,NULL),(421,81,64,2,NULL),(422,82,64,2,NULL),(423,37,65,2,NULL),(424,38,65,2,NULL),(425,81,65,2,NULL),(426,82,65,2,NULL);
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
INSERT INTO `PermissionStrings` VALUES (8,'android.permission.ACCESS_COARSE_LOCATION'),(15,'android.permission.ACCESS_FINE_LOCATION'),(13,'android.permission.ACCESS_NETWORK_STATE'),(4,'android.permission.ACCESS_WIFI_STATE'),(3,'android.permission.CHANGE_WIFI_STATE'),(7,'android.permission.GET_TASKS'),(16,'android.permission.INSTALL_PACKAGES'),(1,'android.permission.INTERNET'),(9,'android.permission.READ_PHONE_STATE'),(10,'android.permission.RECEIVE_BOOT_COMPLETED'),(14,'android.permission.SYSTEM_ALERT_WINDOW'),(12,'android.permission.VIBRATE'),(5,'android.permission.WAKE_LOCK'),(2,'android.permission.WRITE_EXTERNAL_STORAGE'),(11,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(6,'com.android.launcher.permission.INSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'(.*)&imsi=(.*)',NULL,NULL,NULL),(3,NULL,NULL,'(.*)?imsi=(.*)',NULL,NULL,NULL),(4,NULL,NULL,'(.*)?imsi=(.*)',NULL,NULL,NULL),(5,NULL,NULL,'(.*)&imsi=(.*)',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(8,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(9,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(10,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'',NULL,NULL,NULL),(13,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(15,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(16,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(17,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(18,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(19,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(20,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(21,NULL,NULL,'http://',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'http://(.*)',NULL,NULL,NULL),(24,NULL,NULL,'',NULL,NULL,NULL),(25,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(26,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(27,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(28,NULL,NULL,'(.*)',NULL,NULL,NULL),(29,NULL,NULL,'(.*)',NULL,NULL,NULL),(30,NULL,NULL,'http://',NULL,NULL,NULL),(31,NULL,NULL,'(.*)',NULL,NULL,NULL),(32,NULL,NULL,'http://(.*)',NULL,NULL,NULL),(33,NULL,NULL,'',NULL,NULL,NULL),(34,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(35,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(36,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(37,NULL,NULL,'',NULL,NULL,NULL),(38,NULL,NULL,'content://sms',NULL,NULL,NULL),(39,NULL,NULL,'(.*)',NULL,NULL,NULL),(40,NULL,NULL,'',NULL,NULL,NULL),(41,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(42,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(43,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(44,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,27,19),(2,55,38),(3,61,44);
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
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,2,1),(7,2,3),(8,3,1),(9,2,4),(10,3,2),(11,3,3),(12,3,4),(13,3,5),(14,4,1),(15,4,2),(16,4,3),(17,4,4),(18,4,5),(19,5,1),(20,5,2),(21,5,3),(22,5,4),(23,5,5),(24,5,6),(25,5,7),(26,5,8),(27,5,9),(28,5,10),(29,5,11),(30,5,12),(31,5,13),(32,6,1),(33,6,2),(34,6,3),(35,6,4),(36,6,5),(37,6,6),(38,6,7),(39,6,8),(40,6,9),(41,6,11),(42,6,13),(43,7,16),(44,7,1),(45,6,14),(46,6,15),(47,7,2),(48,7,3),(49,7,4),(50,7,5),(51,7,8),(52,7,9),(53,7,10),(54,7,13),(55,7,14),(56,7,15);
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
