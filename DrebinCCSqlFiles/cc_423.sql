-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_423
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (19,'(.*)'),(10,'.ImageTestActivity'),(23,'.Myhall'),(18,'.Web'),(5,'android.appwidget.action.APPWIDGET_UPDATE'),(26,'android.intent.action.BATTERY_CHANGED'),(3,'android.intent.action.BOOT_COMPLETED'),(25,'android.intent.action.CHOOSER'),(9,'android.intent.action.DELETE'),(27,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(7,'android.intent.action.PACKAGE_ADDED'),(14,'android.intent.action.PACKAGE_REMOVED'),(15,'android.intent.action.SCREEN_OFF'),(29,'android.intent.action.SCREEN_ON'),(30,'android.intent.action.SENDTO'),(4,'android.intent.action.USER_PRESENT'),(6,'android.intent.action.VIEW'),(28,'android.media.action.IMAGE_CAPTURE'),(2,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(8,'com.m_hmypshx.GameBootReceiver'),(16,'com.m_hmypshx.ImageTestActivity'),(24,'com.m_hmypshx.Myhall'),(20,'com.m_hmypshx.Web'),(21,'com.midnightkinds.GameBootReceiver'),(12,'com.midnightkinds.ImageTestActivity'),(22,'com.midnightkinds.Myhall'),(17,'com.midnightkinds.Web'),(13,'pl.ngdddl'),(11,'pl.ngdddl(.*)');
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
INSERT INTO `Applications` VALUES (1,'com.midnightkinds',10017),(2,'com.m_hmypshx',10020),(3,'pl.ngdddl',10031),(4,'baltorogames.ieqjkdfuf',10021),(5,'com.rwsnksttv.ureg',10038),(6,'com.jpg.ahck.lbmvo',10033);
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
INSERT INTO `CategoryStrings` VALUES (4,'android.intent.category.HOME'),(2,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(3,'android.intent.categroy.DEFUAULT');
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
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.midnightkinds.Myhall'),(2,1,'com.midnightkinds.Web'),(3,1,'com.midnightkinds.HomeActivity'),(4,1,'com.midnightkinds.SortActivity1'),(5,1,'com.midnightkinds.SortActivity2'),(6,2,'com.m_hmypshx.Myhall'),(7,2,'com.m_hmypshx.Web'),(8,1,'com.midnightkinds.SearchActivity'),(9,2,'com.m_hmypshx.HomeActivity'),(10,2,'com.m_hmypshx.SortActivity1'),(11,1,'com.midnightkinds.ManagerActivity'),(12,2,'com.m_hmypshx.SortActivity2'),(13,1,'com.midnightkinds.GameInfo'),(14,2,'com.m_hmypshx.SearchActivity'),(15,1,'com.midnightkinds.TableClass'),(16,3,'pl.ngdddl.activity.LoadActivity'),(17,2,'com.m_hmypshx.ManagerActivity'),(18,1,'com.midnightkinds.GameAlertDialog'),(19,3,'pl.ngdddl.FiCodeShooter'),(20,2,'com.m_hmypshx.GameInfo'),(21,1,'com.midnightkinds.DevelopmentSettings'),(22,3,'pl.ngdddl.activity.AboutActivity'),(23,3,'pl.ngdddl.activity.TotalScoreActivity'),(24,2,'com.m_hmypshx.TableClass'),(25,3,'pl.ngdddl.activity.AchievementsActivity'),(26,1,'com.midnightkinds.qimg.ImageTestActivity'),(27,3,'com.google.ads.AdActivity'),(28,2,'com.m_hmypshx.GameAlertDialog'),(29,3,'com.KnERI.baHLOeFpUsdKp'),(30,2,'com.m_hmypshx.DevelopmentSettings'),(31,4,'baltorogames.ieqjkdfuf.Kartmania3D'),(32,1,'com.midnightkinds.qimg.ADactivity'),(33,3,'com.KnERI.JstjejhCtcUBN'),(34,1,'com.midnightkinds.GameService'),(35,2,'com.m_hmypshx.image.ImageTestActivity'),(36,4,'com.uqqqqTw.AkfUcwshMQDdQ'),(37,3,'com.KnERI.MyAppInfo'),(38,4,'com.uqqqqTw.vEphGedQWhKRkQ'),(39,1,'com.midnightkinds.GameBootReceiver'),(40,2,'com.m_hmypshx.image.ADactivity'),(41,3,'com.KnERI.ttPFEsAk'),(42,2,'com.m_hmypshx.GameService'),(43,3,'com.KnERI.LDLKcAoDpab'),(44,2,'com.m_hmypshx.GameBootReceiver'),(45,3,'com.KnERI.MyAppAlertDialog'),(46,3,'com.KnERI.aLGpMhJSBD'),(47,3,'com.KnERI.MyAppService'),(48,5,'com.gamevisa8.fish.MainActivity'),(49,3,'com.KnERI.BootReceiverService'),(50,5,'com.gamevisa8.fish.Ranking'),(51,5,'com.rwsnksttv.ureg.EditProfile'),(52,5,'com.mobclix.android.sdk.MobclixBrowserActivity'),(53,5,'com.google.ads.AdActivity'),(54,5,'com.IcLAWP.TacUDekenMNC'),(55,5,'com.IcLAWP.EfhCdluTkvoEsa'),(56,5,'com.IcLAWP.QGaMmrUhd'),(57,5,'com.IcLAWP.BDoWuFdqIfmVo'),(58,5,'com.IcLAWP.tSppnJTqPh'),(59,5,'com.gamevisa8.fish.Widget'),(60,5,'com.IcLAWP.GUwsUhEcKB'),(61,5,'com.IcLAWP.userPermissionReceiver'),(62,6,'i.l.l.ooooooooo'),(63,6,'com.admob.android.ads.AdMobActivity'),(64,6,'com.snAFjkj.qsnCfjkBru'),(65,6,'com.snAFjkj.akqlsUJkseCiE'),(66,6,'com.snAFjkj.ntpDurIhbwNACpL'),(67,6,'com.snAFjkj.phDWdatTa'),(68,6,'com.snAFjkj.MsVNDlkAlpwabB'),(69,6,'com.snAFjkj.QBgCWkoDesFPUg'),(70,6,'com.snAFjkj.userPermissionReceiver'),(71,2,'do'),(72,2,'ap'),(73,2,'at'),(74,2,'l'),(75,1,'ah'),(76,1,'dn'),(77,3,'com.KnERI.bn'),(78,1,'t'),(79,2,'bd'),(80,1,'bu'),(81,1,'dg'),(82,3,'com.KnERI.ab'),(83,3,'com.KnERI.bk'),(84,1,'cr'),(85,6,'com.snAFjkj.ab'),(86,1,'cq'),(87,2,'an'),(88,3,'com.google.ads.util.AdUtil$UserActivityReceiver'),(89,6,'com.admob.android.ads.q'),(90,3,'com.KnERI.ae'),(91,6,'com.snAFjkj.ad'),(92,2,'cr'),(93,3,'com.KnERI.aa'),(94,1,'db'),(95,2,'as'),(96,6,'com.snAFjkj.j'),(97,2,'h'),(98,3,'com.KnERI.ah'),(99,2,'u'),(100,1,'ao'),(101,2,'df'),(102,3,'com.KnERI.bl'),(103,3,'com.KnERI.ak'),(104,1,'dv'),(105,5,'com.mobclix.android.sdk.MobclixCreative$Action'),(106,1,'ag'),(107,5,'com.gamevisa8.fish.MainActivity$5'),(108,5,'com.IcLAWP.ad'),(109,5,'com.mobclix.android.sdk.Mobclix$2'),(110,5,'com.mobclix.android.sdk.MobclixBrowserActivity$ScreenReceiver'),(111,5,'com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener'),(112,5,'com.gamevisa8.fish.MainActivity$7'),(113,5,'com.IcLAWP.ah'),(114,5,'com.gamevisa8.fish.Ranking$2'),(115,5,'com.gamevisa8.fish.MainActivity$9'),(116,5,'com.IcLAWP.ae'),(117,5,'com.google.ads.util.AdUtil$UserActivityReceiver');
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
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,17,'total'),(2,17,'filepath'),(3,17,'icon'),(4,17,'completed'),(5,17,'package_name'),(6,12,'package_name'),(7,17,'app_name'),(8,11,'status'),(9,17,'status'),(10,33,'service_channel'),(11,11,'total'),(12,28,'package_name'),(13,2,'service_channel'),(14,11,'package_name'),(15,11,'app_name'),(16,46,'au'),(17,17,'url'),(18,43,'from'),(19,13,'title'),(20,18,'title'),(21,42,'service_channel'),(22,17,'soft_id'),(23,45,'tt'),(24,37,'st'),(25,29,'si'),(26,27,'com.google.ads.AdOpener'),(27,45,''),(28,45,'(.*)'),(29,27,'params'),(30,45,'ctt'),(31,20,'title'),(32,43,''),(33,14,'package_name'),(34,63,'oi'),(35,43,'(.*)'),(36,62,'ADMOB_PUBLISHER_ID'),(37,28,'title'),(38,62,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(39,67,'np_app_key'),(40,69,'np_app_key'),(41,66,'np_app_key'),(42,64,'np_app_key'),(43,65,'np_app_key'),(44,63,'b'),(45,66,'apkURL'),(46,12,'nextclassid'),(47,63,'s'),(48,20,'from_alert'),(49,13,'from_alert'),(50,37,'tt'),(51,6,'nextclassid'),(52,36,'service_channel'),(53,6,'service_channel'),(54,7,'service_channel'),(55,63,'$'),(56,63,'sd'),(57,63,'skd'),(58,20,'fromtype'),(59,11,'completed'),(60,13,'status'),(61,20,'filepath'),(62,8,'status'),(63,11,'icon'),(64,28,'url'),(65,66,'apkSize'),(66,63,'p'),(67,63,'u'),(68,63,'rd'),(69,63,'au'),(70,63,'su'),(71,37,''),(72,37,'(.*)'),(73,63,'json'),(74,63,'t'),(75,46,'ctt'),(76,63,'mi'),(77,37,'fa'),(78,34,'popurl'),(79,34,'TEST_APP_ID'),(80,29,'TEST_APP_ID'),(81,37,'ft'),(82,43,'isDirectFromTable'),(83,11,'url'),(84,5,'package_name'),(85,8,'version_code'),(86,5,'nextclassid'),(87,66,'apkVersion'),(88,69,'fileURL'),(89,63,'tr'),(90,28,'apk_url'),(91,26,'service_channel'),(92,63,'ad'),(93,63,'sc'),(94,68,'packageName'),(95,66,'packageName'),(96,63,'cbo'),(97,66,'apkInfo'),(98,63,'o'),(99,46,'pn'),(100,63,'ru'),(101,63,'a'),(102,63,'c'),(103,63,'sku'),(104,63,'nosk'),(105,66,'apkTitle'),(106,20,'game'),(107,62,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(108,63,'ap'),(109,63,'or'),(110,63,'cs'),(111,8,'package_name'),(112,37,'fp'),(113,18,'btn_txt'),(114,46,'tt'),(115,34,'poptitle'),(116,1,'nextclassid'),(117,63,'int'),(118,18,'content'),(119,66,'detailFlag'),(120,11,'filepath'),(121,66,'apkSoftID'),(122,69,'fileName'),(123,66,'imageURL'),(124,66,'iconURL'),(125,63,'si'),(126,63,'msm'),(127,45,'ftb'),(128,63,'sin'),(129,68,'fileURL'),(130,45,'bt'),(131,28,'content'),(132,20,'from_table'),(133,13,'filepath'),(134,47,'TEST_APP_ID'),(135,11,'soft_id'),(136,20,'status'),(137,56,'np_app_key'),(138,55,'np_app_key'),(139,54,'np_app_key'),(140,60,'np_app_key'),(141,1,'service_channel'),(142,57,'np_app_key'),(143,52,'com.rwsnksttv.ureg.type'),(144,48,'UMENG_APPKEY'),(145,50,'UMENG_APPKEY'),(146,28,'version_code'),(147,14,'version_code'),(148,13,'from_table'),(149,52,'imageUri'),(150,14,'status'),(151,12,'status'),(152,48,'com.mobclix.APPLICATION_ID'),(153,52,'com.mobclix.APPLICATION_ID'),(154,50,'com.mobclix.APPLICATION_ID'),(155,28,'btn_txt'),(156,53,'com.google.ads.AdOpener'),(157,45,'ul'),(158,27,'action'),(159,29,''),(160,53,'params'),(161,29,'(.*)'),(162,60,'fileName'),(163,5,'status'),(164,18,'url'),(165,56,'packageName'),(166,50,'mGameID'),(167,52,'com.rwsnksttv.ureg.data'),(168,56,'apkVersion'),(169,56,'detailFlag'),(170,56,'apkSize'),(171,56,'imageURL'),(172,56,'apkInfo'),(173,58,'fileURL'),(174,48,'UMENG_CHANNEL'),(175,50,'UMENG_CHANNEL'),(176,56,'iconURL'),(177,60,'fileURL'),(178,58,'packageName'),(179,56,'apkURL'),(180,56,'apkTitle'),(181,50,'mThisGameHighScore'),(182,48,'com.mobclix.LOG_LEVEL'),(183,52,'com.mobclix.LOG_LEVEL'),(184,50,'com.mobclix.LOG_LEVEL'),(185,48,'ADMOB_PUBLISHER_ID'),(186,52,'ADMOB_PUBLISHER_ID'),(187,50,'ADMOB_PUBLISHER_ID'),(188,53,'action'),(189,56,'apkSoftID');
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
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',0,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',1,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,34,'s',1,NULL,NULL),(34,33,'a',0,NULL,NULL),(35,36,'a',0,NULL,NULL),(36,35,'a',1,NULL,NULL),(37,37,'a',1,NULL,NULL),(38,38,'a',1,NULL,NULL),(39,39,'r',1,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',1,NULL,NULL),(42,42,'s',1,NULL,NULL),(43,43,'a',1,NULL,NULL),(44,44,'r',1,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'s',1,NULL,NULL),(48,48,'a',1,NULL,NULL),(49,49,'r',1,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',1,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'s',0,NULL,NULL),(58,58,'s',0,NULL,NULL),(59,59,'r',1,NULL,NULL),(60,60,'r',0,NULL,NULL),(61,61,'r',1,NULL,NULL),(62,62,'a',1,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',1,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'s',0,NULL,NULL),(68,68,'s',0,NULL,NULL),(69,69,'r',0,NULL,NULL),(70,70,'r',1,NULL,NULL),(71,88,'r',1,NULL,NULL),(72,98,'r',1,NULL,NULL),(73,103,'r',1,NULL,NULL),(74,109,'r',1,NULL,NULL),(75,110,'r',1,NULL,NULL),(76,117,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,35),(2,2,35),(3,3,20),(4,4,9),(5,5,36),(6,6,20),(7,7,6),(8,8,12),(9,9,40),(10,10,20),(11,11,15),(12,12,37),(13,13,5),(14,14,28),(15,15,37),(16,16,3),(17,17,44),(18,18,29),(19,19,15),(20,19,18),(21,20,17),(22,21,32),(23,22,28),(24,23,26),(25,24,37),(26,25,3),(27,26,24),(28,27,26),(29,28,26),(30,29,49),(31,30,40),(32,32,9),(33,31,66),(34,33,18),(35,34,46),(36,35,20),(37,37,8),(38,36,29),(39,38,65),(40,38,66),(41,39,41),(42,40,14),(43,41,1),(44,43,14),(45,42,64),(46,44,1),(47,45,49),(48,46,6),(49,47,15),(50,48,65),(51,49,7),(52,50,64),(53,51,37),(54,52,6),(55,53,69),(56,54,32),(57,55,28),(58,56,28),(59,58,13),(60,57,29),(61,59,45),(62,60,65),(63,61,18),(64,62,12),(65,63,65),(66,64,37),(67,65,70),(68,66,17),(69,67,13),(70,68,9),(71,69,64),(72,70,18),(73,71,9),(74,72,37),(75,73,13),(76,74,9),(77,75,64),(78,76,20),(79,77,68),(80,78,11),(81,80,8),(82,79,12),(83,81,65),(84,82,41),(85,83,2),(86,84,36),(87,85,65),(88,86,5),(89,87,66),(90,87,65),(91,88,49),(92,89,2),(93,90,28),(94,90,24),(95,91,44),(96,92,40),(97,93,39),(98,94,43),(99,94,41),(100,94,45),(101,95,15),(102,95,18),(103,96,7),(104,97,3),(105,98,9),(106,99,11),(107,100,27),(108,101,12),(109,102,1),(110,104,1),(111,103,36),(112,105,34),(113,106,32),(114,107,7),(115,108,45),(116,109,3),(117,110,29),(118,111,39),(119,112,6),(120,113,37),(121,114,13),(122,115,12),(123,116,3),(124,117,6),(125,118,1),(126,119,17),(127,120,41),(128,120,45),(129,120,43),(130,121,3),(131,122,46),(132,124,5),(133,123,6),(134,125,37),(135,126,28),(136,126,24),(137,127,1),(138,128,44),(139,129,55),(140,130,60),(141,132,5),(142,131,6),(143,133,37),(144,134,2),(145,135,56),(146,136,12),(147,137,13),(148,138,24),(149,139,52),(150,140,19),(151,141,52),(152,142,29),(153,143,5),(154,144,54),(155,145,22),(156,146,52),(157,147,1),(158,148,5),(159,149,13),(160,150,11),(161,151,39),(162,152,54),(163,153,18),(164,154,52),(165,155,48),(166,156,52),(167,157,54),(168,158,52),(169,159,52),(170,160,55),(171,161,53),(172,162,56),(173,162,55),(174,163,52),(175,164,52),(176,165,52),(177,165,55),(178,166,52),(179,167,48),(180,168,61),(181,169,50),(182,170,52),(183,171,55),(184,172,55),(185,172,50),(186,173,58),(187,174,48),(188,175,48),(189,176,55),(190,177,55),(191,177,56),(192,178,48),(193,179,54);
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
INSERT INTO `ExitPoints` VALUES (1,36,'<com.uqqqqTw.AkfUcwshMQDdQ: void a()>',3,'a',NULL),(2,36,'<com.uqqqqTw.AkfUcwshMQDdQ: void a(java.lang.String)>',10,'a',NULL),(3,71,'<do: void onClick(android.view.View)>',239,'a',NULL),(4,9,'<com.m_hmypshx.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',33,'a',NULL),(5,35,'<com.m_hmypshx.image.ImageTestActivity: void onCreate(android.os.Bundle)>',54,'s',NULL),(6,20,'<com.m_hmypshx.GameInfo: void onCreate(android.os.Bundle)>',25,'s',NULL),(7,72,'<ap: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(8,73,'<at: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(9,74,'<l: void onClick(android.view.View)>',6,'a',NULL),(10,71,'<do: void onClick(android.view.View)>',218,'a',NULL),(11,15,'<com.midnightkinds.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',72,'a',NULL),(12,37,'<com.KnERI.MyAppInfo: void onCreate(android.os.Bundle)>',44,'s',NULL),(13,75,'<ah: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(14,28,'<com.m_hmypshx.GameAlertDialog: void onClick(android.view.View)>',46,'a',NULL),(15,37,'<com.KnERI.MyAppInfo: void onCreate(android.os.Bundle)>',11,'a',NULL),(16,76,'<dn: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(17,44,'<com.m_hmypshx.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(18,77,'<com.KnERI.bn: void onClick(android.view.View)>',101,'a',NULL),(19,78,'<t: void a(int,boolean)>',29,'a',NULL),(20,79,'<bd: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(21,80,'<bu: void onClick(android.view.View)>',6,'a',NULL),(22,28,'<com.m_hmypshx.GameAlertDialog: void onClick(android.view.View)>',59,'a',NULL),(23,81,'<dg: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(24,82,'<com.KnERI.ab: void onClick(android.view.View)>',200,'a',NULL),(25,3,'<com.midnightkinds.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',39,'a',NULL),(26,24,'<com.m_hmypshx.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(27,26,'<com.midnightkinds.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',54,'s',NULL),(28,26,'<com.midnightkinds.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(29,49,'<com.KnERI.BootReceiverService: void onReceive(android.content.Context,android.content.Intent)>',37,'s',NULL),(30,40,'<com.m_hmypshx.image.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',26,'a',NULL),(31,66,'<com.snAFjkj.ntpDurIhbwNACpL: void onCreate(android.os.Bundle)>',74,'a',NULL),(32,9,'<com.m_hmypshx.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',52,'a',NULL),(33,18,'<com.midnightkinds.GameAlertDialog: void onClick(android.view.View)>',71,'a',NULL),(34,46,'<com.KnERI.aLGpMhJSBD: void onClick(android.view.View)>',26,'a',NULL),(35,20,'<com.m_hmypshx.GameInfo: void onCreate(android.os.Bundle)>',113,'a',NULL),(36,83,'<com.KnERI.bk: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(37,8,'<com.midnightkinds.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(38,66,'<com.snAFjkj.ntpDurIhbwNACpL: void a(com.snAFjkj.ntpDurIhbwNACpL,android.content.Context,java.lang.String)>',5,'a',NULL),(39,41,'<com.KnERI.ttPFEsAk: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(40,14,'<com.m_hmypshx.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(41,84,'<cr: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(42,85,'<com.snAFjkj.ab: void run()>',8,'s',NULL),(43,14,'<com.m_hmypshx.SearchActivity: void onCreate(android.os.Bundle)>',14,'s',NULL),(44,86,'<cq: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(45,49,'<com.KnERI.BootReceiverService: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(46,87,'<an: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(47,15,'<com.midnightkinds.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(48,65,'<com.snAFjkj.akqlsUJkseCiE: void onBackPressed()>',5,'a',NULL),(49,7,'<com.m_hmypshx.Web: void onCreate(android.os.Bundle)>',25,'s',NULL),(50,64,'<com.snAFjkj.qsnCfjkBru: void onCreate(android.os.Bundle)>',28,'a',0),(51,37,'<com.KnERI.MyAppInfo: void onCreate(android.os.Bundle)>',94,'s',NULL),(52,6,'<com.m_hmypshx.Myhall: void onCreate(android.os.Bundle)>',103,'s',NULL),(53,69,'<com.snAFjkj.QBgCWkoDesFPUg: void a(android.content.Context)>',76,'a',NULL),(54,32,'<com.midnightkinds.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',34,'a',NULL),(55,28,'<com.m_hmypshx.GameAlertDialog: void onClick(android.view.View)>',68,'a',NULL),(56,28,'<com.m_hmypshx.GameAlertDialog: void onClick(android.view.View)>',77,'a',NULL),(57,29,'<com.KnERI.baHLOeFpUsdKp: void onCreate(android.os.Bundle)>',61,'s',NULL),(58,13,'<com.midnightkinds.GameInfo: void onCreate(android.os.Bundle)>',11,'s',NULL),(59,45,'<com.KnERI.MyAppAlertDialog: void onClick(android.view.View)>',61,'a',NULL),(60,65,'<com.snAFjkj.akqlsUJkseCiE: void a()>',3,'a',NULL),(61,18,'<com.midnightkinds.GameAlertDialog: void onClick(android.view.View)>',53,'a',NULL),(62,73,'<at: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(63,89,'<com.admob.android.ads.q: void a(android.content.Context)>',11,'a',0),(64,90,'<com.KnERI.ae: void onClick(android.view.View)>',197,'a',NULL),(65,91,'<com.snAFjkj.ad: void run()>',25,'s',NULL),(66,17,'<com.m_hmypshx.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(67,13,'<com.midnightkinds.GameInfo: boolean onKeyDown(int,android.view.KeyEvent)>',10,'a',NULL),(68,92,'<cr: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(69,64,'<com.snAFjkj.qsnCfjkBru: void onCreate(android.os.Bundle)>',33,'a',NULL),(70,18,'<com.midnightkinds.GameAlertDialog: void onClick(android.view.View)>',40,'a',NULL),(71,9,'<com.m_hmypshx.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',43,'a',NULL),(72,93,'<com.KnERI.aa: void onClick(android.view.View)>',197,'a',NULL),(73,94,'<db: void onClick(android.view.View)>',205,'a',NULL),(74,92,'<cr: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(75,64,'<com.snAFjkj.qsnCfjkBru: void onCreate(android.os.Bundle)>',18,'a',NULL),(76,20,'<com.m_hmypshx.GameInfo: void onCreate(android.os.Bundle)>',108,'a',NULL),(77,68,'<com.snAFjkj.MsVNDlkAlpwabB: void a(java.lang.String)>',10,'a',NULL),(78,11,'<com.midnightkinds.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(79,95,'<as: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(80,8,'<com.midnightkinds.SearchActivity: void onCreate(android.os.Bundle)>',12,'s',NULL),(81,65,'<com.snAFjkj.akqlsUJkseCiE: void b()>',45,'a',NULL),(82,41,'<com.KnERI.ttPFEsAk: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',72,'a',NULL),(83,2,'<com.midnightkinds.Web: void onCreate(android.os.Bundle)>',23,'s',NULL),(84,35,'<com.m_hmypshx.image.ImageTestActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(85,65,'<com.snAFjkj.akqlsUJkseCiE: void b()>',55,'a',NULL),(86,5,'<com.midnightkinds.SortActivity2: void onCreate(android.os.Bundle)>',11,'s',NULL),(87,96,'<com.snAFjkj.j: void f(android.content.Context,java.lang.String)>',10,'a',NULL),(88,49,'<com.KnERI.BootReceiverService: void onReceive(android.content.Context,android.content.Intent)>',64,'s',NULL),(89,2,'<com.midnightkinds.Web: void onCreate(android.os.Bundle)>',19,'s',NULL),(90,97,'<h: void a(int,boolean)>',57,'a',NULL),(91,44,'<com.m_hmypshx.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(92,40,'<com.m_hmypshx.image.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',38,'a',NULL),(93,39,'<com.midnightkinds.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(94,43,'<com.KnERI.LDLKcAoDpab: void a(int,boolean)>',42,'a',NULL),(95,78,'<t: void a(int,boolean)>',10,'s',NULL),(96,99,'<u: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(97,3,'<com.midnightkinds.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',29,'a',NULL),(98,92,'<cr: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(99,100,'<ao: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(100,27,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(101,12,'<com.m_hmypshx.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',28,'a',NULL),(102,86,'<cq: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(103,101,'<df: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(104,86,'<cq: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(105,33,'<com.KnERI.JstjejhCtcUBN: boolean onKeyDown(int,android.view.KeyEvent)>',5,'a',NULL),(106,32,'<com.midnightkinds.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',22,'a',NULL),(107,7,'<com.m_hmypshx.Web: void onCreate(android.os.Bundle)>',21,'s',NULL),(108,45,'<com.KnERI.MyAppAlertDialog: void onClick(android.view.View)>',48,'a',NULL),(109,3,'<com.midnightkinds.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',48,'a',NULL),(110,102,'<com.KnERI.bl: boolean onKey(android.content.DialogInterface,int,android.view.KeyEvent)>',16,'a',NULL),(111,39,'<com.midnightkinds.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(112,87,'<an: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(113,90,'<com.KnERI.ae: void onClick(android.view.View)>',182,'a',NULL),(114,13,'<com.midnightkinds.GameInfo: void onCreate(android.os.Bundle)>',99,'a',NULL),(115,12,'<com.m_hmypshx.SortActivity2: void onCreate(android.os.Bundle)>',13,'s',NULL),(116,76,'<dn: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(117,87,'<an: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(118,86,'<cq: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(119,79,'<bd: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(120,43,'<com.KnERI.LDLKcAoDpab: void a(int,boolean)>',10,'s',NULL),(121,76,'<dn: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(122,46,'<com.KnERI.aLGpMhJSBD: void onCreate(android.os.Bundle)>',13,'s',NULL),(123,87,'<an: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(124,75,'<ah: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(125,93,'<com.KnERI.aa: void onClick(android.view.View)>',182,'a',NULL),(126,97,'<h: void a(int,boolean)>',10,'s',NULL),(127,1,'<com.midnightkinds.Myhall: void onCreate(android.os.Bundle)>',96,'s',NULL),(128,44,'<com.m_hmypshx.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(129,55,'<com.IcLAWP.EfhCdluTkvoEsa: void b()>',55,'a',NULL),(130,60,'<com.IcLAWP.GUwsUhEcKB: void c(android.content.Context)>',74,'a',NULL),(131,6,'<com.m_hmypshx.Myhall: void onCreate(android.os.Bundle)>',98,'s',NULL),(132,5,'<com.midnightkinds.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',24,'a',NULL),(133,82,'<com.KnERI.ab: void onClick(android.view.View)>',185,'a',NULL),(134,104,'<dv: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(135,56,'<com.IcLAWP.QGaMmrUhd: void onCreate(android.os.Bundle)>',67,'a',NULL),(136,73,'<at: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(137,94,'<db: void onClick(android.view.View)>',224,'a',NULL),(138,24,'<com.m_hmypshx.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(139,105,'<com.mobclix.android.sdk.MobclixCreative$Action: boolean c()>',69,'a',NULL),(140,19,'<pl.ngdddl.FiCodeShooter: void onPause()>',12,'a',NULL),(141,105,'<com.mobclix.android.sdk.MobclixCreative$Action: void d()>',133,'a',NULL),(142,29,'<com.KnERI.baHLOeFpUsdKp: void onCreate(android.os.Bundle)>',57,'s',NULL),(143,106,'<ag: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(144,54,'<com.IcLAWP.TacUDekenMNC: void onCreate(android.os.Bundle)>',31,'a',0),(145,22,'<pl.ngdddl.activity.AboutActivity: void onClick(android.view.View)>',5,'a',NULL),(146,52,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',57,'a',NULL),(147,1,'<com.midnightkinds.Myhall: void onCreate(android.os.Bundle)>',101,'s',NULL),(148,75,'<ah: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(149,13,'<com.midnightkinds.GameInfo: void onCreate(android.os.Bundle)>',94,'a',NULL),(150,100,'<ao: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(151,39,'<com.midnightkinds.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(152,54,'<com.IcLAWP.TacUDekenMNC: void onCreate(android.os.Bundle)>',36,'a',NULL),(153,18,'<com.midnightkinds.GameAlertDialog: void onClick(android.view.View)>',62,'a',NULL),(154,52,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',48,'a',NULL),(155,107,'<com.gamevisa8.fish.MainActivity$5: void onClick(android.content.DialogInterface,int)>',5,'a',NULL),(156,105,'<com.mobclix.android.sdk.MobclixCreative$Action: void d()>',81,'a',NULL),(157,108,'<com.IcLAWP.ad: void run()>',8,'s',NULL),(158,52,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',39,'a',NULL),(159,105,'<com.mobclix.android.sdk.MobclixCreative$Action: void d()>',101,'a',NULL),(160,55,'<com.IcLAWP.EfhCdluTkvoEsa: void a()>',3,'a',NULL),(161,53,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(162,56,'<com.IcLAWP.QGaMmrUhd: void a(com.IcLAWP.QGaMmrUhd,android.content.Context,java.lang.String)>',5,'a',NULL),(163,105,'<com.mobclix.android.sdk.MobclixCreative$Action: void d()>',93,'a',NULL),(164,52,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',64,'a',0),(165,111,'<com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener: void onClick(android.view.View)>',7,'a',NULL),(166,52,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',68,'a',NULL),(167,112,'<com.gamevisa8.fish.MainActivity$7: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(168,113,'<com.IcLAWP.ah: void run()>',25,'s',NULL),(169,50,'<com.gamevisa8.fish.Ranking: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(170,52,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onCreate(android.os.Bundle)>',133,'p',NULL),(171,55,'<com.IcLAWP.EfhCdluTkvoEsa: void b()>',45,'a',NULL),(172,114,'<com.gamevisa8.fish.Ranking$2: void onClick(android.view.View)>',13,'a',NULL),(173,58,'<com.IcLAWP.tSppnJTqPh: void a(java.lang.String)>',10,'a',NULL),(174,48,'<com.gamevisa8.fish.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',32,'a',NULL),(175,115,'<com.gamevisa8.fish.MainActivity$9: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(176,55,'<com.IcLAWP.EfhCdluTkvoEsa: void onBackPressed()>',5,'a',NULL),(177,116,'<com.IcLAWP.ae: void f(android.content.Context,java.lang.String)>',10,'a',NULL),(178,48,'<com.gamevisa8.fish.MainActivity: void j()>',10,'a',NULL),(179,54,'<com.IcLAWP.TacUDekenMNC: void onCreate(android.os.Bundle)>',21,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,6),(2,3,1),(3,4,1),(4,5,1),(5,6,1),(6,10,6),(7,11,6),(8,13,6),(9,15,6),(10,19,1),(11,21,1),(12,22,8),(13,25,9),(14,27,6),(15,28,6),(16,29,1),(17,30,6),(18,31,1),(19,33,1),(20,34,1),(21,36,1),(22,37,1),(23,38,10),(24,40,11),(25,41,12),(26,42,13),(27,44,1),(28,43,6),(29,46,1),(30,47,1),(31,51,1),(32,52,1),(33,54,1),(34,55,6),(35,56,1),(36,63,1),(37,65,1),(38,69,6),(39,70,2),(40,74,6),(41,76,6),(42,78,6),(43,79,6),(44,80,1),(45,84,1),(46,86,1),(47,85,6),(48,89,1),(49,91,1),(50,93,6),(51,94,1),(52,96,6),(53,97,1),(54,99,1),(55,100,6),(56,108,10),(57,112,16),(58,113,6),(59,114,11),(60,115,17),(61,117,13),(62,118,18),(63,120,6),(64,122,1),(65,124,1),(66,125,6),(67,127,1),(68,128,1),(69,130,1),(70,131,6),(71,132,1),(72,133,19),(73,136,19),(74,138,6),(75,142,20),(76,143,18),(77,144,6),(78,147,21),(79,148,6),(80,150,6),(81,152,6),(82,155,6),(83,157,1),(84,160,1),(85,159,6),(86,164,6),(87,165,6),(88,167,22),(89,168,6),(90,170,8),(91,171,23),(92,172,6),(93,175,24),(94,176,23),(95,177,6),(96,178,6),(97,179,6),(98,180,1),(99,182,6),(100,183,1),(101,184,1),(102,185,1),(103,186,6),(104,188,1),(105,191,1),(106,195,6),(107,197,25),(108,198,25),(109,199,6),(110,200,25),(111,201,25),(112,203,25),(113,204,25),(114,205,9),(115,206,25),(116,207,25),(117,208,21),(118,210,2),(119,211,25),(120,212,25),(121,213,25),(122,214,25),(123,215,25),(124,216,25),(125,217,25),(126,218,25),(127,223,27),(128,224,28),(129,225,28),(130,226,28),(131,228,28),(132,229,6),(133,230,6),(134,232,6),(135,233,19),(136,234,19),(137,235,1),(138,236,1),(139,237,6),(140,238,6),(141,239,6),(142,240,6),(143,242,27),(144,243,28),(145,244,28),(146,245,28),(147,247,28),(148,248,6),(149,253,6),(150,254,30),(151,255,6),(152,257,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,3,1),(2,4,2),(3,5,1),(4,6,2),(5,19,1),(6,21,2),(7,29,1),(8,31,2),(9,33,1),(10,34,1),(11,36,2),(12,37,2),(13,44,1),(14,46,2),(15,47,4),(16,51,1),(17,52,1),(18,54,2),(19,56,2),(20,63,1),(21,65,2),(22,80,1),(23,84,2),(24,86,1),(25,89,2),(26,91,1),(27,94,2),(28,97,1),(29,99,2),(30,122,1),(31,124,2),(32,127,1),(33,128,2),(34,130,1),(35,132,2),(36,157,1),(37,160,2),(38,180,1),(39,183,1),(40,184,2),(41,185,2),(42,188,1),(43,191,2),(44,235,1),(45,236,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'baltorogames/ieqjkdfuf/Kartmania3D'),(2,7,'com/m_hmypshx/GameInfo'),(3,8,'com/m_hmypshx/GameService'),(4,9,'com/m_hmypshx/GameService'),(5,12,'com/m_hmypshx/image/ImageTestActivity'),(6,14,'com/midnightkinds/GameInfo'),(7,16,'com/KnERI/MyAppService'),(8,17,'com/midnightkinds/Myhall'),(9,18,'com/m_hmypshx/GameInfo'),(10,20,'com/midnightkinds/GameInfo'),(11,22,'com/m_hmypshx/GameService'),(12,24,'com/midnightkinds/Myhall'),(13,23,'com/KnERI/JstjejhCtcUBN'),(14,26,'com/midnightkinds/qimg/ImageTestActivity'),(15,32,'com/midnightkinds/Myhall'),(16,35,'com/midnightkinds/GameService'),(17,38,'com/midnightkinds/GameService'),(18,40,'com/KnERI/MyAppService'),(19,39,'com/m_hmypshx/GameInfo'),(20,41,'com/midnightkinds/GameService'),(21,42,'com/KnERI/MyAppService'),(22,45,'com/midnightkinds/GameAlertDialog'),(23,48,'com/m_hmypshx/Myhall'),(24,50,'com/midnightkinds/GameInfo'),(25,49,'pl/ngdddl/activity/LoadActivity'),(26,53,'com/m_hmypshx/GameInfo'),(27,58,'com/m_hmypshx/GameService'),(28,57,'com/snAFjkj/phDWdatTa'),(29,59,'com/midnightkinds/Myhall'),(30,60,'com/KnERI/MyAppService'),(31,61,'com/m_hmypshx/Myhall'),(32,62,'i/l/l/ooooooooo'),(33,64,'com/m_hmypshx/GameService'),(34,66,'com/KnERI/MyAppService'),(35,67,'com/m_hmypshx/GameService'),(36,72,'com/KnERI/MyAppService'),(37,73,'com/midnightkinds/GameService'),(38,68,'com/snAFjkj/ntpDurIhbwNACpL'),(39,71,'com/m_hmypshx/GameAlertDialog'),(40,75,'i/l/l/ooooooooo'),(41,77,'com/m_hmypshx/GameInfo'),(42,81,'com/snAFjkj/phDWdatTa'),(43,82,'com/m_hmypshx/GameService'),(44,83,'com/midnightkinds/Myhall'),(45,87,'com/snAFjkj/akqlsUJkseCiE'),(46,88,'com/midnightkinds/GameInfo'),(47,90,'com/m_hmypshx/Myhall'),(48,92,'com/m_hmypshx/GameInfo'),(49,95,'com/snAFjkj/akqlsUJkseCiE'),(50,98,'com/m_hmypshx/Myhall'),(51,101,'com/midnightkinds/GameService'),(52,103,'com/midnightkinds/GameService'),(53,104,'i/l/l/ooooooooo'),(54,105,'com/KnERI/MyAppInfo'),(55,102,'com/m_hmypshx/Myhall'),(56,106,'com/KnERI/MyAppInfo'),(57,107,'com/midnightkinds/GameService'),(58,109,'i/l/l/ooooooooo'),(59,108,'com/m_hmypshx/GameService'),(60,110,'com/KnERI/MyAppInfo'),(61,111,'com/midnightkinds/GameService'),(62,112,'com/m_hmypshx/GameService'),(63,114,'com/KnERI/MyAppService'),(64,115,'com/midnightkinds/GameService'),(65,116,'com/m_hmypshx/image/ImageTestActivity'),(66,117,'com/KnERI/MyAppService'),(67,118,'com/midnightkinds/GameService'),(68,119,'com/m_hmypshx/GameService'),(69,121,'com/midnightkinds/GameService'),(70,123,'com/midnightkinds/GameService'),(71,126,'com/midnightkinds/GameInfo'),(72,129,'com/m_hmypshx/Myhall'),(73,134,'com/m_hmypshx/GameInfo'),(74,135,'com/midnightkinds/Myhall'),(75,137,'com/midnightkinds/Myhall'),(76,139,'pl/ngdddl/activity/LoadActivity'),(77,140,'com/midnightkinds/GameInfo'),(78,142,'com/m_hmypshx/GameService'),(79,141,'com/KnERI/MyAppInfo'),(80,143,'com/m_hmypshx/GameService'),(81,145,'pl/ngdddl/activity/LoadActivity'),(82,147,'com/midnightkinds/GameService'),(83,146,'com/m_hmypshx/Myhall'),(84,149,'com/midnightkinds/Myhall'),(85,151,'com/m_hmypshx/GameService'),(86,153,'com/midnightkinds/Myhall'),(87,154,'com/m_hmypshx/Myhall'),(88,156,'com/midnightkinds/Myhall'),(89,158,'com/KnERI/MyAppService'),(90,161,'com/KnERI/MyAppService'),(91,162,'com/midnightkinds/GameInfo'),(92,163,'com/m_hmypshx/Myhall'),(93,166,'com/m_hmypshx/GameService'),(94,167,'com/midnightkinds/GameService'),(95,169,'com/gamevisa8/fish/MainActivity'),(96,170,'com/m_hmypshx/GameService'),(97,171,'com/midnightkinds/GameService'),(98,174,'com/midnightkinds/GameInfo'),(99,175,'com/m_hmypshx/GameService'),(100,176,'com/m_hmypshx/GameService'),(101,173,'com/IcLAWP/QGaMmrUhd'),(102,181,'com/m_hmypshx/Myhall'),(103,187,'com/m_hmypshx/GameInfo'),(104,189,'com/mobclix/android/sdk/MobclixBrowserActivity'),(105,190,'pl/ngdddl/activity/TotalScoreActivity'),(106,192,'com/mobclix/android/sdk/MobclixBrowserActivity'),(107,193,'com/KnERI/MyAppService'),(108,194,'com/midnightkinds/Myhall'),(109,196,'com/midnightkinds/GameService'),(110,202,'com/midnightkinds/Myhall'),(111,208,'com/midnightkinds/GameService'),(112,209,'com/IcLAWP/EfhCdluTkvoEsa'),(113,220,'com/mobclix/android/sdk/MobclixBrowserActivity'),(114,221,'com/IcLAWP/BDoWuFdqIfmVo'),(115,231,'com/gamevisa8/fish/MainActivity'),(116,249,'com/IcLAWP/BDoWuFdqIfmVo'),(117,250,'com/gamevisa8/fish/EditProfile'),(118,251,'com/gamevisa8/fish/MainActivity'),(119,252,'com/gamevisa8/fish/EditProfile'),(120,256,'com/gamevisa8/fish/MainActivity'),(121,258,'com/gamevisa8/fish/Ranking'),(122,259,'com/IcLAWP/EfhCdluTkvoEsa');
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,2,1),(2,10,2),(3,11,3),(4,13,4),(5,15,5),(6,25,6),(7,27,7),(8,28,8),(9,30,9),(10,43,10),(11,55,11),(12,69,12),(13,74,13),(14,76,14),(15,78,15),(16,79,16),(17,85,17),(18,93,18),(19,96,19),(20,100,20),(21,113,21),(22,120,22),(23,125,23),(24,131,24),(25,133,25),(26,136,26),(27,138,27),(28,144,28),(29,148,29),(30,150,30),(31,152,31),(32,155,32),(33,159,33),(34,164,34),(35,165,35),(36,168,36),(37,172,37),(38,177,38),(39,178,39),(40,179,40),(41,182,41),(42,186,42),(43,195,43),(44,199,44),(45,205,45),(46,229,46),(47,230,47),(48,232,48),(49,233,49),(50,234,50),(51,237,51),(52,238,52),(53,239,53),(54,240,54),(55,248,55),(56,253,57),(57,254,58),(58,255,59),(59,257,60);
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
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,7,'game'),(2,7,'fromtype'),(3,17,'title'),(4,17,'nextclassid'),(5,17,'clicked'),(6,18,'id'),(7,18,'from_alert'),(8,18,'detail_flag'),(9,20,'title'),(10,23,'popurl'),(11,23,'poptitle'),(12,32,'nextclassid'),(13,32,'clicked'),(14,39,'game'),(15,39,'fromtype'),(16,45,'title'),(17,45,'btn_txt'),(18,45,'need_adb_flag'),(19,45,'cont'),(20,45,'close_flag'),(21,53,'game'),(22,53,'fromtype'),(23,59,'clicked'),(24,61,'clicked'),(25,68,'apkVersion'),(26,68,'apkURL'),(27,68,'apkInfo'),(28,68,'packageName'),(29,68,'apkSoftID'),(30,68,'apkTitle'),(31,68,'iconURL'),(32,68,'apkSize'),(33,71,'title'),(34,68,'imageURL'),(35,71,'btn_txt'),(36,71,'need_adb_flag'),(37,71,'cont'),(38,71,'close_flag'),(39,77,'title'),(40,77,'game'),(41,77,'fromtype'),(42,88,'id'),(43,88,'from_alert'),(44,88,'detail_flag'),(45,90,'nextclassid'),(46,90,'clicked'),(47,92,'title'),(48,92,'game'),(49,92,'fromtype'),(50,102,'title'),(51,105,''),(52,102,'nextclassid'),(53,102,'clicked'),(54,106,''),(55,106,'(.*)'),(56,110,'(.*)'),(57,129,'title'),(58,129,'nextclassid'),(59,129,'clicked'),(60,134,'title'),(61,134,'game'),(62,134,'fromtype'),(63,135,'clicked'),(64,137,'clicked'),(65,141,'id'),(66,141,'df'),(67,141,'fa'),(68,146,'clicked'),(69,153,'title'),(70,153,'nextclassid'),(71,153,'clicked'),(72,154,'clicked'),(73,156,'clicked'),(74,163,'clicked'),(75,162,'title'),(76,173,'apkVersion'),(77,173,'apkURL'),(78,173,'apkInfo'),(79,174,'title'),(80,173,'packageName'),(81,173,'apkSoftID'),(82,173,'apkTitle'),(83,173,'iconURL'),(84,173,'apkSize'),(85,173,'imageURL'),(86,181,'title'),(87,181,'nextclassid'),(88,181,'clicked'),(89,187,'game'),(90,187,'fromtype'),(91,194,'title'),(92,194,'nextclassid'),(93,194,'clicked'),(94,197,'android.intent.extra.INTENT'),(95,198,'android.intent.extra.INTENT'),(96,200,'android.intent.extra.TITLE'),(97,200,'android.intent.extra.INTENT'),(98,201,'android.intent.extra.INTENT'),(99,203,'android.intent.extra.TITLE'),(100,203,'android.intent.extra.INTENT'),(101,204,'android.intent.extra.INTENT'),(102,206,'android.intent.extra.TITLE'),(103,206,'android.intent.extra.INTENT'),(104,207,'android.intent.extra.TITLE'),(105,207,'android.intent.extra.INTENT'),(106,211,'android.intent.extra.INTENT'),(107,212,'android.intent.extra.INTENT'),(108,213,'android.intent.extra.TITLE'),(109,213,'android.intent.extra.INTENT'),(110,214,'android.intent.extra.INTENT'),(111,215,'android.intent.extra.TITLE'),(112,215,'android.intent.extra.INTENT'),(113,216,'android.intent.extra.INTENT'),(114,217,'android.intent.extra.TITLE'),(115,217,'android.intent.extra.INTENT'),(116,218,'android.intent.extra.TITLE'),(117,218,'android.intent.extra.INTENT'),(118,224,'output'),(119,225,'output'),(120,225,'android.intent.extra.videoQuality'),(121,243,'output'),(122,244,'output'),(123,244,'android.intent.extra.videoQuality'),(124,250,'mGameID'),(125,250,'nick'),(126,252,'mGameID'),(127,252,'nick'),(128,254,'android.intent.extra.SUBJECT'),(129,258,'mGameID'),(130,258,'mThisGameHighScore');
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,9,1),(9,10,1),(10,11,2),(11,12,1),(12,13,1),(13,14,1),(14,15,2),(15,17,1),(16,18,1),(17,19,1),(18,20,1),(19,21,3),(20,22,1),(21,23,1),(22,24,1),(23,25,3),(24,26,1),(25,28,4),(26,29,1),(27,30,5),(28,31,4),(29,33,1),(30,34,4),(31,35,7),(32,36,14),(33,37,4),(34,37,15),(35,38,14),(36,39,14),(37,40,15),(38,41,7),(39,42,4),(40,43,26),(41,44,29),(42,44,15),(43,45,15),(44,45,29),(45,46,4),(46,46,15);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,13,1),(2,14,1),(3,17,1),(4,18,1),(5,20,1),(6,23,1),(7,26,1),(8,29,1),(9,33,1),(10,35,3),(11,36,3),(12,38,3),(13,39,3),(14,41,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,35,'package',NULL,NULL,NULL,NULL,NULL),(2,36,'package',NULL,NULL,NULL,NULL,NULL),(3,38,'package',NULL,NULL,NULL,NULL,NULL),(4,39,'package',NULL,NULL,NULL,NULL,NULL),(5,41,'package',NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `IMimeTypes` VALUES (1,2,'application','vnd.android.package-archive'),(2,10,'application','vnd.android.package-archive'),(3,13,'application','vnd.android.package-archive'),(4,15,'application','vnd.android.package-archive'),(5,28,'application','vnd.android.package-archive'),(6,55,'application','vnd.android.package-archive'),(7,93,'application','vnd.android.package-archive'),(8,96,'application','vnd.android.package-archive'),(9,100,'application','vnd.android.package-archive'),(10,113,'application','vnd.android.package-archive'),(11,125,'application','vnd.android.package-archive'),(12,133,'(.*)','(.*)'),(13,138,'application','vnd.android.package-archive'),(14,152,'(.*)','(.*)'),(15,155,'(.*)','(.*)'),(16,168,'(.*)','(.*)'),(17,172,'(.*)','(.*)'),(18,178,'application','vnd.android.package-archive'),(19,182,'(.*)','(.*)'),(20,186,'(.*)','(.*)'),(21,223,'image','*'),(22,227,'image','*'),(23,228,'image','*'),(24,233,'(.*)','(.*)'),(25,242,'image','*'),(26,246,'image','*'),(27,247,'image','*'),(28,253,'application','vnd.android.package-archive'),(29,257,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'baltorogames.ieqjkdfuf'),(2,3,'(.*)'),(3,4,''),(4,5,''),(5,6,'(.*)'),(6,7,'com.m_hmypshx'),(7,8,'com.m_hmypshx'),(8,9,'com.m_hmypshx'),(9,12,'com.m_hmypshx'),(10,14,'com.midnightkinds'),(11,16,'pl.ngdddl'),(12,17,'com.midnightkinds'),(13,19,'(.*)'),(14,18,'com.m_hmypshx'),(15,21,'(.*)'),(16,20,'com.midnightkinds'),(17,22,'com.m_hmypshx'),(18,24,'com.midnightkinds'),(19,23,'pl.ngdddl'),(20,26,'com.midnightkinds'),(21,29,'(.*)'),(22,31,''),(23,32,'com.midnightkinds'),(24,33,''),(25,34,'(.*)'),(26,35,'com.midnightkinds'),(27,36,'(.*)'),(28,37,'(.*)'),(29,38,'com.midnightkinds'),(30,40,'pl.ngdddl'),(31,39,'com.m_hmypshx'),(32,41,'com.midnightkinds'),(33,42,'pl.ngdddl'),(34,44,'(.*)'),(35,46,'(.*)'),(36,45,'com.midnightkinds'),(37,48,'com.m_hmypshx'),(38,50,'com.midnightkinds'),(39,49,'pl.ngdddl'),(40,51,'(.*)'),(41,52,'(.*)'),(42,54,'(.*)'),(43,53,'com.m_hmypshx'),(44,56,'(.*)'),(45,58,'com.m_hmypshx'),(46,57,'com.jpg.ahck.lbmvo'),(47,59,'com.midnightkinds'),(48,60,'pl.ngdddl'),(49,61,'com.m_hmypshx'),(50,62,'com.jpg.ahck.lbmvo'),(51,63,'(.*)'),(52,64,'com.m_hmypshx'),(53,65,'(.*)'),(54,66,'pl.ngdddl'),(55,67,'com.m_hmypshx'),(56,72,'pl.ngdddl'),(57,73,'com.midnightkinds'),(58,68,'com.jpg.ahck.lbmvo'),(59,71,'com.m_hmypshx'),(60,75,'com.jpg.ahck.lbmvo'),(61,77,'com.m_hmypshx'),(62,80,'(.*)'),(63,81,'com.jpg.ahck.lbmvo'),(64,82,'com.m_hmypshx'),(65,83,'com.midnightkinds'),(66,84,''),(67,86,''),(68,87,'com.jpg.ahck.lbmvo'),(69,89,'(.*)'),(70,88,'com.midnightkinds'),(71,90,'com.m_hmypshx'),(72,91,'(.*)'),(73,92,'com.m_hmypshx'),(74,95,'com.jpg.ahck.lbmvo'),(75,94,''),(76,97,''),(77,98,'com.m_hmypshx'),(78,99,'(.*)'),(79,101,'com.midnightkinds'),(80,103,'com.midnightkinds'),(81,104,'com.jpg.ahck.lbmvo'),(82,105,'pl.ngdddl'),(83,102,'com.m_hmypshx'),(84,106,'pl.ngdddl'),(85,107,'com.midnightkinds'),(86,109,'com.jpg.ahck.lbmvo'),(87,108,'com.m_hmypshx'),(88,110,'pl.ngdddl'),(89,111,'com.midnightkinds'),(90,112,'com.m_hmypshx'),(91,114,'pl.ngdddl'),(92,115,'com.midnightkinds'),(93,116,'com.m_hmypshx'),(94,117,'pl.ngdddl'),(95,119,'com.m_hmypshx'),(96,118,'com.midnightkinds'),(97,121,'com.midnightkinds'),(98,122,'(.*)'),(99,123,'com.midnightkinds'),(100,124,''),(101,126,'com.midnightkinds'),(102,127,''),(103,128,'(.*)'),(104,130,'NULL-CONSTANT'),(105,129,'com.m_hmypshx'),(106,132,'NULL-CONSTANT'),(107,135,'com.midnightkinds'),(108,134,'com.m_hmypshx'),(109,137,'com.midnightkinds'),(110,139,'pl.ngdddl'),(111,140,'com.midnightkinds'),(112,142,'com.m_hmypshx'),(113,141,'pl.ngdddl'),(114,143,'com.m_hmypshx'),(115,145,'pl.ngdddl'),(116,146,'com.m_hmypshx'),(117,147,'com.midnightkinds'),(118,149,'com.midnightkinds'),(119,151,'com.m_hmypshx'),(120,153,'com.midnightkinds'),(121,154,'com.m_hmypshx'),(122,156,'com.midnightkinds'),(123,157,'NULL-CONSTANT'),(124,158,'pl.ngdddl'),(125,160,'NULL-CONSTANT'),(126,161,'pl.ngdddl'),(127,163,'com.m_hmypshx'),(128,162,'com.midnightkinds'),(129,166,'com.m_hmypshx'),(130,167,'com.midnightkinds'),(131,169,'com.rwsnksttv.ureg'),(132,170,'com.m_hmypshx'),(133,171,'com.midnightkinds'),(134,174,'com.midnightkinds'),(135,175,'com.m_hmypshx'),(136,176,'com.m_hmypshx'),(137,173,'com.rwsnksttv.ureg'),(138,180,'(.*)'),(139,183,'(.*)'),(140,181,'com.m_hmypshx'),(141,184,'(.*)'),(142,185,''),(143,187,'com.m_hmypshx'),(144,188,''),(145,189,'com.rwsnksttv.ureg'),(146,190,'pl.ngdddl'),(147,191,'(.*)'),(148,192,'com.rwsnksttv.ureg'),(149,193,'pl.ngdddl'),(150,194,'com.midnightkinds'),(151,196,'com.midnightkinds'),(152,202,'com.midnightkinds'),(153,208,'com.midnightkinds'),(154,209,'com.rwsnksttv.ureg'),(155,220,'com.rwsnksttv.ureg'),(156,221,'com.rwsnksttv.ureg'),(157,231,'com.rwsnksttv.ureg'),(158,235,'(.*)'),(159,236,'(.*)'),(160,249,'com.rwsnksttv.ureg'),(161,250,'com.rwsnksttv.ureg'),(162,251,'com.rwsnksttv.ureg'),(163,252,'com.rwsnksttv.ureg'),(164,256,'com.rwsnksttv.ureg'),(165,258,'com.rwsnksttv.ureg'),(166,259,'com.rwsnksttv.ureg');
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,5,0),(2,8,0),(3,11,0),(4,12,0),(5,13,0),(6,14,0),(7,15,0),(8,16,0),(9,17,0),(10,20,0),(11,21,0),(12,24,0),(13,26,0),(14,29,0),(15,30,0),(16,31,0),(17,33,0),(18,36,0),(19,37,0),(20,38,0),(21,39,0),(22,41,0),(23,42,0),(24,43,0),(25,44,0),(26,47,0),(27,48,0),(28,49,0),(29,54,0),(30,59,0),(31,61,0),(32,62,0),(33,64,0),(34,70,0),(35,39,0),(36,49,0),(37,71,0),(38,39,0),(39,44,0),(40,72,0),(41,44,0),(42,73,0),(43,74,0),(44,75,0),(45,75,0),(46,76,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=260 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,3,1,0),(4,3,1,0),(5,3,1,0),(6,3,1,0),(7,4,0,0),(8,5,0,0),(9,6,0,0),(10,7,1,0),(11,8,1,0),(12,9,0,0),(13,10,1,0),(14,11,0,0),(15,10,1,0),(16,12,0,0),(17,13,0,0),(18,14,0,0),(19,15,1,0),(20,16,0,0),(21,15,1,0),(22,17,0,0),(23,18,0,0),(24,19,0,0),(25,20,1,0),(26,21,0,0),(27,22,1,0),(28,23,1,0),(29,24,1,0),(30,22,1,0),(31,24,1,0),(32,25,0,0),(33,24,1,0),(34,26,1,0),(35,27,0,0),(36,24,1,0),(37,26,1,0),(38,28,0,0),(39,30,0,0),(40,29,0,0),(41,28,0,0),(42,29,0,0),(43,32,1,0),(44,31,1,0),(45,33,0,0),(46,31,1,0),(47,34,1,0),(48,35,0,0),(49,36,0,0),(50,37,0,0),(51,38,1,0),(52,39,1,0),(53,40,0,0),(54,38,1,0),(55,41,1,0),(56,39,1,0),(57,42,0,0),(58,43,0,0),(59,44,0,0),(60,45,0,0),(61,46,0,0),(62,48,0,0),(63,47,1,0),(64,49,0,0),(65,47,1,0),(66,51,0,0),(67,52,0,0),(68,53,0,0),(69,54,1,0),(70,55,1,0),(71,56,0,0),(72,57,0,0),(73,58,0,0),(74,59,1,0),(75,60,0,0),(76,61,1,0),(77,62,0,0),(78,59,1,0),(79,61,1,0),(80,64,1,0),(81,65,0,0),(82,66,0,0),(83,67,0,0),(84,64,1,0),(85,68,1,0),(86,64,1,0),(87,69,0,0),(88,70,0,0),(89,64,1,0),(90,71,0,0),(91,72,1,0),(92,74,0,0),(93,73,1,0),(94,72,1,0),(95,75,0,0),(96,73,1,0),(97,72,1,0),(98,76,0,0),(99,72,1,0),(100,77,1,0),(101,78,0,0),(102,79,0,0),(103,80,0,0),(104,81,0,0),(105,82,0,0),(106,82,0,0),(107,83,0,0),(108,84,0,0),(109,85,0,0),(110,82,0,0),(111,86,0,0),(112,84,0,0),(113,87,1,0),(114,88,0,0),(115,89,0,0),(116,90,0,0),(117,88,0,0),(118,89,0,0),(119,91,0,0),(120,92,1,0),(121,93,0,0),(122,94,1,0),(123,95,0,0),(124,94,1,0),(125,96,1,0),(126,97,0,0),(127,94,1,0),(128,94,1,0),(129,98,0,0),(130,99,1,0),(131,100,1,0),(132,99,1,0),(133,100,1,0),(134,101,0,0),(135,102,0,0),(136,100,1,0),(137,104,0,0),(138,103,1,0),(139,105,0,0),(140,106,0,0),(141,108,0,0),(142,107,0,0),(143,107,0,0),(144,109,1,0),(145,110,0,0),(146,112,0,0),(147,111,0,0),(148,113,1,0),(149,114,0,0),(150,113,1,0),(151,115,0,0),(152,113,1,0),(153,116,0,0),(154,117,0,0),(155,113,1,0),(156,118,0,0),(157,119,1,0),(158,120,0,0),(159,121,1,0),(160,119,1,0),(161,122,0,0),(162,124,0,0),(163,123,0,0),(164,125,1,0),(165,125,1,0),(166,126,0,0),(167,127,0,0),(168,125,1,0),(169,129,0,0),(170,128,0,0),(171,127,0,0),(172,125,1,0),(173,130,0,0),(174,132,0,0),(175,131,0,0),(176,131,0,0),(177,133,1,0),(178,134,1,0),(179,133,1,0),(180,135,1,0),(181,136,0,0),(182,133,1,0),(183,137,1,0),(184,135,1,0),(185,137,1,0),(186,133,1,0),(187,138,0,0),(188,137,1,0),(189,139,0,0),(190,140,0,0),(191,137,1,0),(192,141,0,0),(193,142,0,0),(194,143,0,0),(195,145,1,0),(196,147,0,0),(197,146,1,0),(198,146,1,0),(199,148,1,0),(200,146,1,0),(201,146,1,0),(202,149,0,0),(203,146,1,0),(204,146,1,0),(205,150,1,0),(206,146,1,0),(207,146,1,0),(208,151,0,0),(209,152,0,0),(210,153,1,0),(211,154,1,0),(212,154,1,0),(213,154,1,0),(214,154,1,0),(215,154,1,0),(216,154,1,0),(217,154,1,0),(218,154,1,0),(219,155,1,0),(220,156,0,0),(221,157,0,0),(222,158,1,0),(223,158,1,0),(224,158,1,0),(225,158,1,0),(226,158,1,0),(227,158,1,0),(228,158,1,0),(229,159,1,0),(230,159,1,0),(231,160,0,0),(232,161,1,0),(233,161,1,0),(234,161,1,0),(235,162,1,0),(236,162,1,0),(237,163,1,0),(238,163,1,0),(239,165,1,0),(240,165,1,0),(241,166,1,0),(242,166,1,0),(243,166,1,0),(244,166,1,0),(245,166,1,0),(246,166,1,0),(247,166,1,0),(248,167,1,0),(249,168,0,0),(250,169,0,0),(251,171,0,0),(252,172,0,0),(253,173,1,0),(254,174,1,0),(255,175,1,0),(256,176,0,0),(257,177,1,0),(258,178,0,0),(259,179,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (5,'android.permission.ACCESS_CACHE_FILESYSTEM'),(10,'android.permission.ACCESS_NETWORK_STATE'),(13,'android.permission.ACCESS_WIFI_STATE'),(14,'android.permission.BLUETOOTH'),(16,'android.permission.BLUETOOTH_ADMIN'),(9,'android.permission.DELETE_CACHE_FILES'),(12,'android.permission.GET_TASKS'),(6,'android.permission.INTERNET'),(8,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(4,'android.permission.RECEIVE_BOOT_COMPLETED'),(3,'android.permission.SET_WALLPAPER'),(17,'android.permission.SYSTEM_ALERT_WINDOW'),(15,'android.permission.VIBRATE'),(18,'android.permission.WAKE_LOCK'),(7,'android.permission.WRITE_EXTERNAL_STORAGE'),(2,'com.android.launcher.permission.INSTALL_SHORTCUT'),(11,'com.android.launcher.permission.UNINSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'file://',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(5,NULL,NULL,'file://',NULL,NULL,NULL),(6,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'file://',NULL,NULL,NULL),(9,NULL,NULL,'',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'file://',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'',NULL,NULL,NULL),(16,NULL,NULL,'',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(19,NULL,NULL,'file://',NULL,NULL,NULL),(20,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(21,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'file://',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'file://',NULL,NULL,NULL),(28,NULL,NULL,'(.*)',NULL,NULL,NULL),(29,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(30,NULL,NULL,'file://',NULL,NULL,NULL),(31,NULL,NULL,'file://',NULL,NULL,NULL),(32,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(33,NULL,NULL,'(.*)',NULL,NULL,NULL),(34,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(35,NULL,NULL,'file://',NULL,NULL,NULL),(36,NULL,NULL,'file://',NULL,NULL,NULL),(37,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(38,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(39,NULL,NULL,'file://',NULL,NULL,NULL),(40,NULL,NULL,'file://',NULL,NULL,NULL),(41,NULL,NULL,'file://',NULL,NULL,NULL),(42,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(43,NULL,NULL,'https://market.android.com/details?id=pl.ficode',NULL,NULL,NULL),(44,NULL,NULL,'(.*)',NULL,NULL,NULL),(45,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(46,NULL,NULL,'(.*)',NULL,NULL,NULL),(47,NULL,NULL,'',NULL,NULL,NULL),(48,NULL,NULL,'(.*)',NULL,NULL,NULL),(49,NULL,NULL,'(.*)',NULL,NULL,NULL),(50,NULL,NULL,'(.*)',NULL,NULL,NULL),(51,NULL,NULL,'(.*)',NULL,NULL,NULL),(52,NULL,NULL,'',NULL,NULL,NULL),(53,NULL,NULL,'(.*)',NULL,NULL,NULL),(54,NULL,NULL,'',NULL,NULL,NULL),(55,NULL,NULL,'market://search?q=pname:com.gamevisa8.fishpro1',NULL,NULL,NULL),(56,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(57,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(58,NULL,NULL,'mailto:androidmj002@gmail.com',NULL,NULL,NULL),(59,NULL,NULL,'market://search?q=pname:',NULL,NULL,NULL),(60,NULL,NULL,'file://(.*)',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,170,56);
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,2,1),(13,2,2),(14,2,3),(15,2,4),(16,2,5),(17,2,6),(18,2,7),(19,2,8),(20,2,9),(21,2,10),(22,2,11),(23,3,1),(24,3,2),(25,3,6),(26,3,7),(27,3,10),(28,3,11),(29,3,12),(30,3,13),(31,4,16),(32,4,1),(33,4,6),(34,4,7),(35,4,10),(36,4,13),(37,4,14),(38,4,15),(39,5,17),(40,5,1),(41,5,2),(42,5,18),(43,5,6),(44,5,7),(45,5,10),(46,5,12),(47,5,13),(48,6,17),(49,6,1),(50,6,2),(51,6,6),(52,6,7),(53,6,12),(54,6,15);
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

-- Dump completed on 2015-10-09  0:39:37
