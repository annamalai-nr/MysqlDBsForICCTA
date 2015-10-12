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
) ENGINE=InnoDB AUTO_INCREMENT=2554 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,144,62,2,NULL),(2,63,62,2,NULL),(3,65,62,2,NULL),(4,76,62,2,NULL),(5,79,62,2,NULL),(6,210,62,2,NULL),(7,69,62,2,NULL),(8,43,62,2,NULL),(9,34,62,2,NULL),(10,37,62,2,NULL),(11,27,62,2,NULL),(12,30,62,2,NULL),(13,70,62,2,NULL),(14,120,62,2,NULL),(15,131,62,2,NULL),(16,136,62,2,NULL),(17,19,62,2,NULL),(18,21,62,2,NULL),(19,52,62,2,NULL),(20,56,62,2,NULL),(21,122,62,2,NULL),(22,124,62,2,NULL),(23,127,62,2,NULL),(24,128,62,2,NULL),(25,74,62,2,NULL),(26,78,62,2,NULL),(27,47,62,2,NULL),(28,254,62,2,NULL),(29,197,62,2,NULL),(30,198,62,2,NULL),(31,200,62,2,NULL),(32,201,62,2,NULL),(33,203,62,2,NULL),(34,204,62,2,NULL),(35,206,62,2,NULL),(36,207,62,2,NULL),(37,211,62,2,NULL),(38,212,62,2,NULL),(39,213,62,2,NULL),(40,214,62,2,NULL),(41,215,62,2,NULL),(42,216,62,2,NULL),(43,217,62,2,NULL),(44,218,62,2,NULL),(45,222,62,2,NULL),(46,224,62,2,NULL),(47,225,62,2,NULL),(48,226,62,2,NULL),(49,241,62,2,NULL),(50,243,62,2,NULL),(51,244,62,2,NULL),(52,245,62,2,NULL),(53,232,62,2,NULL),(54,234,62,2,NULL),(55,180,62,2,NULL),(56,184,62,2,NULL),(57,235,62,2,NULL),(58,236,62,2,NULL),(59,44,62,2,NULL),(60,46,62,2,NULL),(61,51,62,2,NULL),(62,54,62,2,NULL),(63,87,65,2,NULL),(64,95,65,2,NULL),(65,144,64,2,NULL),(66,63,64,2,NULL),(67,65,64,2,NULL),(68,76,64,2,NULL),(69,79,64,2,NULL),(70,210,64,2,NULL),(71,69,64,2,NULL),(72,43,64,2,NULL),(73,34,64,2,NULL),(74,37,64,2,NULL),(75,27,64,2,NULL),(76,30,64,2,NULL),(77,70,64,2,NULL),(78,120,64,2,NULL),(79,131,64,2,NULL),(80,136,64,2,NULL),(81,19,64,2,NULL),(82,21,64,2,NULL),(83,52,64,2,NULL),(84,56,64,2,NULL),(85,122,64,2,NULL),(86,124,64,2,NULL),(87,127,64,2,NULL),(88,128,64,2,NULL),(89,74,64,2,NULL),(90,78,64,2,NULL),(91,47,64,2,NULL),(92,254,64,2,NULL),(93,197,64,2,NULL),(94,198,64,2,NULL),(95,200,64,2,NULL),(96,201,64,2,NULL),(97,203,64,2,NULL),(98,204,64,2,NULL),(99,206,64,2,NULL),(100,207,64,2,NULL),(101,211,64,2,NULL),(102,212,64,2,NULL),(103,213,64,2,NULL),(104,214,64,2,NULL),(105,215,64,2,NULL),(106,216,64,2,NULL),(107,217,64,2,NULL),(108,218,64,2,NULL),(109,222,64,2,NULL),(110,224,64,2,NULL),(111,225,64,2,NULL),(112,226,64,2,NULL),(113,241,64,2,NULL),(114,243,64,2,NULL),(115,244,64,2,NULL),(116,245,64,2,NULL),(117,232,64,2,NULL),(118,234,64,2,NULL),(119,180,64,2,NULL),(120,184,64,2,NULL),(121,235,64,2,NULL),(122,236,64,2,NULL),(123,44,64,2,NULL),(124,46,64,2,NULL),(125,51,64,2,NULL),(126,54,64,2,NULL),(127,62,62,2,NULL),(128,75,62,2,NULL),(129,104,62,2,NULL),(130,109,62,2,NULL),(131,44,5,2,NULL),(132,46,5,2,NULL),(133,51,5,2,NULL),(134,54,5,2,NULL),(135,44,8,2,NULL),(136,46,8,2,NULL),(137,51,8,2,NULL),(138,54,8,2,NULL),(139,44,11,2,NULL),(140,46,11,2,NULL),(141,51,11,2,NULL),(142,54,11,2,NULL),(143,44,13,2,NULL),(144,46,13,2,NULL),(145,51,13,2,NULL),(146,54,13,2,NULL),(147,44,15,2,NULL),(148,46,15,2,NULL),(149,51,15,2,NULL),(150,54,15,2,NULL),(151,44,21,2,NULL),(152,46,21,2,NULL),(153,51,21,2,NULL),(154,54,21,2,NULL),(155,44,26,2,NULL),(156,46,26,2,NULL),(157,51,26,2,NULL),(158,54,26,2,NULL),(159,44,33,2,NULL),(160,46,33,2,NULL),(161,51,33,2,NULL),(162,54,33,2,NULL),(163,44,39,2,NULL),(164,46,39,2,NULL),(165,51,39,2,NULL),(166,54,39,2,NULL),(167,44,12,2,NULL),(168,46,12,2,NULL),(169,51,12,2,NULL),(170,54,12,2,NULL),(171,44,14,2,NULL),(172,46,14,2,NULL),(173,51,14,2,NULL),(174,54,14,2,NULL),(175,44,17,2,NULL),(176,46,17,2,NULL),(177,51,17,2,NULL),(178,54,17,2,NULL),(179,44,20,2,NULL),(180,46,20,2,NULL),(181,51,20,2,NULL),(182,54,20,2,NULL),(183,44,24,2,NULL),(184,46,24,2,NULL),(185,51,24,2,NULL),(186,54,24,2,NULL),(187,44,30,2,NULL),(188,46,30,2,NULL),(189,51,30,2,NULL),(190,54,30,2,NULL),(191,44,36,2,NULL),(192,46,36,2,NULL),(193,51,36,2,NULL),(194,54,36,2,NULL),(195,44,42,2,NULL),(196,46,42,2,NULL),(197,51,42,2,NULL),(198,54,42,2,NULL),(199,44,44,2,NULL),(200,46,44,2,NULL),(201,51,44,2,NULL),(202,54,44,2,NULL),(203,44,16,2,NULL),(204,46,16,2,NULL),(205,51,16,2,NULL),(206,54,16,2,NULL),(207,44,29,2,NULL),(208,46,29,2,NULL),(209,51,29,2,NULL),(210,54,29,2,NULL),(211,44,37,2,NULL),(212,46,37,2,NULL),(213,51,37,2,NULL),(214,54,37,2,NULL),(215,44,41,2,NULL),(216,46,41,2,NULL),(217,51,41,2,NULL),(218,54,41,2,NULL),(219,44,43,2,NULL),(220,46,43,2,NULL),(221,51,43,2,NULL),(222,54,43,2,NULL),(223,44,47,2,NULL),(224,46,47,2,NULL),(225,51,47,2,NULL),(226,54,47,2,NULL),(227,44,49,2,NULL),(228,46,49,2,NULL),(229,51,49,2,NULL),(230,54,49,2,NULL),(231,44,71,2,NULL),(232,46,71,2,NULL),(233,51,71,2,NULL),(234,54,71,2,NULL),(235,44,72,2,NULL),(236,46,72,2,NULL),(237,51,72,2,NULL),(238,54,72,2,NULL),(239,44,73,2,NULL),(240,46,73,2,NULL),(241,51,73,2,NULL),(242,54,73,2,NULL),(243,44,31,2,NULL),(244,46,31,2,NULL),(245,51,31,2,NULL),(246,54,31,2,NULL),(247,44,38,2,NULL),(248,46,38,2,NULL),(249,51,38,2,NULL),(250,54,38,2,NULL),(251,44,48,2,NULL),(252,46,48,2,NULL),(253,51,48,2,NULL),(254,54,48,2,NULL),(255,44,54,2,NULL),(256,46,54,2,NULL),(257,51,54,2,NULL),(258,54,54,2,NULL),(259,44,59,2,NULL),(260,46,59,2,NULL),(261,51,59,2,NULL),(262,54,59,2,NULL),(263,44,61,2,NULL),(264,46,61,2,NULL),(265,51,61,2,NULL),(266,54,61,2,NULL),(267,44,74,2,NULL),(268,46,74,2,NULL),(269,51,74,2,NULL),(270,54,74,2,NULL),(271,44,75,2,NULL),(272,46,75,2,NULL),(273,51,75,2,NULL),(274,54,75,2,NULL),(275,44,76,2,NULL),(276,46,76,2,NULL),(277,51,76,2,NULL),(278,54,76,2,NULL),(279,44,70,2,NULL),(280,46,70,2,NULL),(281,51,70,2,NULL),(282,54,70,2,NULL),(283,68,66,2,NULL),(284,144,70,2,NULL),(285,63,70,2,NULL),(286,65,70,2,NULL),(287,76,70,2,NULL),(288,79,70,2,NULL),(289,210,70,2,NULL),(290,69,70,2,NULL),(291,43,70,2,NULL),(292,34,70,2,NULL),(293,37,70,2,NULL),(294,27,70,2,NULL),(295,30,70,2,NULL),(296,70,70,2,NULL),(297,120,70,2,NULL),(298,131,70,2,NULL),(299,136,70,2,NULL),(300,19,70,2,NULL),(301,21,70,2,NULL),(302,52,70,2,NULL),(303,56,70,2,NULL),(304,122,70,2,NULL),(305,124,70,2,NULL),(306,127,70,2,NULL),(307,128,70,2,NULL),(308,74,70,2,NULL),(309,78,70,2,NULL),(310,47,70,2,NULL),(311,254,70,2,NULL),(312,197,70,2,NULL),(313,198,70,2,NULL),(314,200,70,2,NULL),(315,201,70,2,NULL),(316,203,70,2,NULL),(317,204,70,2,NULL),(318,206,70,2,NULL),(319,207,70,2,NULL),(320,211,70,2,NULL),(321,212,70,2,NULL),(322,213,70,2,NULL),(323,214,70,2,NULL),(324,215,70,2,NULL),(325,216,70,2,NULL),(326,217,70,2,NULL),(327,218,70,2,NULL),(328,222,70,2,NULL),(329,224,70,2,NULL),(330,225,70,2,NULL),(331,226,70,2,NULL),(332,241,70,2,NULL),(333,243,70,2,NULL),(334,244,70,2,NULL),(335,245,70,2,NULL),(336,232,70,2,NULL),(337,234,70,2,NULL),(338,180,70,2,NULL),(339,184,70,2,NULL),(340,235,70,2,NULL),(341,236,70,2,NULL),(342,144,31,2,NULL),(343,63,31,2,NULL),(344,65,31,2,NULL),(345,76,31,2,NULL),(346,79,31,2,NULL),(347,210,31,2,NULL),(348,69,31,2,NULL),(349,43,31,2,NULL),(350,34,31,2,NULL),(351,37,31,2,NULL),(352,27,31,2,NULL),(353,30,31,2,NULL),(354,70,31,2,NULL),(355,120,31,2,NULL),(356,131,31,2,NULL),(357,136,31,2,NULL),(358,19,31,2,NULL),(359,21,31,2,NULL),(360,52,31,2,NULL),(361,56,31,2,NULL),(362,122,31,2,NULL),(363,124,31,2,NULL),(364,127,31,2,NULL),(365,128,31,2,NULL),(366,74,31,2,NULL),(367,78,31,2,NULL),(368,47,31,2,NULL),(369,254,31,2,NULL),(370,197,31,2,NULL),(371,198,31,2,NULL),(372,200,31,2,NULL),(373,201,31,2,NULL),(374,203,31,2,NULL),(375,204,31,2,NULL),(376,206,31,2,NULL),(377,207,31,2,NULL),(378,211,31,2,NULL),(379,212,31,2,NULL),(380,213,31,2,NULL),(381,214,31,2,NULL),(382,215,31,2,NULL),(383,216,31,2,NULL),(384,217,31,2,NULL),(385,218,31,2,NULL),(386,222,31,2,NULL),(387,224,31,2,NULL),(388,225,31,2,NULL),(389,226,31,2,NULL),(390,241,31,2,NULL),(391,243,31,2,NULL),(392,244,31,2,NULL),(393,245,31,2,NULL),(394,232,31,2,NULL),(395,234,31,2,NULL),(396,180,31,2,NULL),(397,184,31,2,NULL),(398,235,31,2,NULL),(399,236,31,2,NULL),(400,1,31,2,NULL),(401,144,38,2,NULL),(402,63,38,2,NULL),(403,65,38,2,NULL),(404,76,38,2,NULL),(405,79,38,2,NULL),(406,210,38,2,NULL),(407,69,38,2,NULL),(408,43,38,2,NULL),(409,34,38,2,NULL),(410,37,38,2,NULL),(411,27,38,2,NULL),(412,30,38,2,NULL),(413,70,38,2,NULL),(414,120,38,2,NULL),(415,131,38,2,NULL),(416,136,38,2,NULL),(417,19,38,2,NULL),(418,21,38,2,NULL),(419,52,38,2,NULL),(420,56,38,2,NULL),(421,122,38,2,NULL),(422,124,38,2,NULL),(423,127,38,2,NULL),(424,128,38,2,NULL),(425,74,38,2,NULL),(426,78,38,2,NULL),(427,47,38,2,NULL),(428,254,38,2,NULL),(429,197,38,2,NULL),(430,198,38,2,NULL),(431,200,38,2,NULL),(432,201,38,2,NULL),(433,203,38,2,NULL),(434,204,38,2,NULL),(435,206,38,2,NULL),(436,207,38,2,NULL),(437,211,38,2,NULL),(438,212,38,2,NULL),(439,213,38,2,NULL),(440,214,38,2,NULL),(441,215,38,2,NULL),(442,216,38,2,NULL),(443,217,38,2,NULL),(444,218,38,2,NULL),(445,222,38,2,NULL),(446,224,38,2,NULL),(447,225,38,2,NULL),(448,226,38,2,NULL),(449,241,38,2,NULL),(450,243,38,2,NULL),(451,244,38,2,NULL),(452,245,38,2,NULL),(453,232,38,2,NULL),(454,234,38,2,NULL),(455,180,38,2,NULL),(456,184,38,2,NULL),(457,235,38,2,NULL),(458,258,50,2,NULL),(459,236,38,2,NULL),(460,144,48,2,NULL),(461,254,5,2,NULL),(462,254,8,2,NULL),(463,254,11,2,NULL),(464,254,13,2,NULL),(465,254,15,2,NULL),(466,63,48,2,NULL),(467,65,48,2,NULL),(468,76,48,2,NULL),(469,79,48,2,NULL),(470,210,48,2,NULL),(471,254,21,2,NULL),(472,254,26,2,NULL),(473,69,48,2,NULL),(474,254,33,2,NULL),(475,254,39,2,NULL),(476,43,48,2,NULL),(477,254,12,2,NULL),(478,254,14,2,NULL),(479,254,17,2,NULL),(480,254,20,2,NULL),(481,254,24,2,NULL),(482,34,48,2,NULL),(483,37,48,2,NULL),(484,27,48,2,NULL),(485,30,48,2,NULL),(486,70,48,2,NULL),(487,254,30,2,NULL),(488,254,36,2,NULL),(489,120,48,2,NULL),(490,254,42,2,NULL),(491,254,44,2,NULL),(492,254,16,2,NULL),(493,131,48,2,NULL),(494,136,48,2,NULL),(495,254,29,2,NULL),(496,254,37,2,NULL),(497,19,48,2,NULL),(498,21,48,2,NULL),(499,254,41,2,NULL),(500,52,48,2,NULL),(501,56,48,2,NULL),(502,254,43,2,NULL),(503,122,48,2,NULL),(504,124,48,2,NULL),(505,127,48,2,NULL),(506,128,48,2,NULL),(507,74,48,2,NULL),(508,78,48,2,NULL),(509,47,48,2,NULL),(510,254,47,2,NULL),(511,254,49,2,NULL),(512,254,71,2,NULL),(513,254,72,2,NULL),(514,254,73,2,NULL),(515,197,48,2,NULL),(516,198,48,2,NULL),(517,200,48,2,NULL),(518,201,48,2,NULL),(519,203,48,2,NULL),(520,204,48,2,NULL),(521,206,48,2,NULL),(522,207,48,2,NULL),(523,211,48,2,NULL),(524,212,48,2,NULL),(525,213,48,2,NULL),(526,214,48,2,NULL),(527,215,48,2,NULL),(528,216,48,2,NULL),(529,217,48,2,NULL),(530,218,48,2,NULL),(531,222,48,2,NULL),(532,224,48,2,NULL),(533,225,48,2,NULL),(534,226,48,2,NULL),(535,241,48,2,NULL),(536,243,48,2,NULL),(537,244,48,2,NULL),(538,245,48,2,NULL),(539,232,48,2,NULL),(540,234,48,2,NULL),(541,254,54,2,NULL),(542,180,48,2,NULL),(543,184,48,2,NULL),(544,235,48,2,NULL),(545,236,48,2,NULL),(546,254,59,2,NULL),(547,254,61,2,NULL),(548,254,74,2,NULL),(549,254,75,2,NULL),(550,254,76,2,NULL),(551,197,5,2,NULL),(552,198,5,2,NULL),(553,200,5,2,NULL),(554,201,5,2,NULL),(555,203,5,2,NULL),(556,204,5,2,NULL),(557,206,5,2,NULL),(558,207,5,2,NULL),(559,211,5,2,NULL),(560,212,5,2,NULL),(561,213,5,2,NULL),(562,214,5,2,NULL),(563,215,5,2,NULL),(564,216,5,2,NULL),(565,217,5,2,NULL),(566,218,5,2,NULL),(567,222,5,2,NULL),(568,224,5,2,NULL),(569,225,5,2,NULL),(570,226,5,2,NULL),(571,241,5,2,NULL),(572,243,5,2,NULL),(573,244,5,2,NULL),(574,245,5,2,NULL),(575,197,8,2,NULL),(576,198,8,2,NULL),(577,200,8,2,NULL),(578,201,8,2,NULL),(579,203,8,2,NULL),(580,204,8,2,NULL),(581,206,8,2,NULL),(582,207,8,2,NULL),(583,211,8,2,NULL),(584,212,8,2,NULL),(585,213,8,2,NULL),(586,214,8,2,NULL),(587,215,8,2,NULL),(588,216,8,2,NULL),(589,217,8,2,NULL),(590,218,8,2,NULL),(591,222,8,2,NULL),(592,224,8,2,NULL),(593,225,8,2,NULL),(594,226,8,2,NULL),(595,241,8,2,NULL),(596,243,8,2,NULL),(597,244,8,2,NULL),(598,245,8,2,NULL),(599,197,11,2,NULL),(600,198,11,2,NULL),(601,200,11,2,NULL),(602,201,11,2,NULL),(603,203,11,2,NULL),(604,204,11,2,NULL),(605,206,11,2,NULL),(606,207,11,2,NULL),(607,211,11,2,NULL),(608,212,11,2,NULL),(609,213,11,2,NULL),(610,214,11,2,NULL),(611,215,11,2,NULL),(612,216,11,2,NULL),(613,217,11,2,NULL),(614,218,11,2,NULL),(615,222,11,2,NULL),(616,224,11,2,NULL),(617,225,11,2,NULL),(618,226,11,2,NULL),(619,241,11,2,NULL),(620,243,11,2,NULL),(621,244,11,2,NULL),(622,245,11,2,NULL),(623,197,13,2,NULL),(624,198,13,2,NULL),(625,200,13,2,NULL),(626,201,13,2,NULL),(627,203,13,2,NULL),(628,204,13,2,NULL),(629,206,13,2,NULL),(630,207,13,2,NULL),(631,211,13,2,NULL),(632,212,13,2,NULL),(633,213,13,2,NULL),(634,214,13,2,NULL),(635,215,13,2,NULL),(636,216,13,2,NULL),(637,217,13,2,NULL),(638,218,13,2,NULL),(639,222,13,2,NULL),(640,224,13,2,NULL),(641,225,13,2,NULL),(642,226,13,2,NULL),(643,241,13,2,NULL),(644,243,13,2,NULL),(645,244,13,2,NULL),(646,245,13,2,NULL),(647,197,15,2,NULL),(648,198,15,2,NULL),(649,200,15,2,NULL),(650,201,15,2,NULL),(651,203,15,2,NULL),(652,204,15,2,NULL),(653,206,15,2,NULL),(654,207,15,2,NULL),(655,211,15,2,NULL),(656,212,15,2,NULL),(657,213,15,2,NULL),(658,214,15,2,NULL),(659,215,15,2,NULL),(660,216,15,2,NULL),(661,217,15,2,NULL),(662,218,15,2,NULL),(663,222,15,2,NULL),(664,224,15,2,NULL),(665,225,15,2,NULL),(666,226,15,2,NULL),(667,241,15,2,NULL),(668,243,15,2,NULL),(669,244,15,2,NULL),(670,245,15,2,NULL),(671,197,21,2,NULL),(672,198,21,2,NULL),(673,200,21,2,NULL),(674,201,21,2,NULL),(675,203,21,2,NULL),(676,204,21,2,NULL),(677,206,21,2,NULL),(678,207,21,2,NULL),(679,211,21,2,NULL),(680,212,21,2,NULL),(681,213,21,2,NULL),(682,214,21,2,NULL),(683,215,21,2,NULL),(684,216,21,2,NULL),(685,217,21,2,NULL),(686,218,21,2,NULL),(687,222,21,2,NULL),(688,224,21,2,NULL),(689,225,21,2,NULL),(690,226,21,2,NULL),(691,241,21,2,NULL),(692,243,21,2,NULL),(693,244,21,2,NULL),(694,245,21,2,NULL),(695,197,26,2,NULL),(696,198,26,2,NULL),(697,200,26,2,NULL),(698,201,26,2,NULL),(699,203,26,2,NULL),(700,204,26,2,NULL),(701,206,26,2,NULL),(702,207,26,2,NULL),(703,211,26,2,NULL),(704,212,26,2,NULL),(705,213,26,2,NULL),(706,214,26,2,NULL),(707,215,26,2,NULL),(708,216,26,2,NULL),(709,217,26,2,NULL),(710,218,26,2,NULL),(711,222,26,2,NULL),(712,224,26,2,NULL),(713,225,26,2,NULL),(714,226,26,2,NULL),(715,241,26,2,NULL),(716,243,26,2,NULL),(717,244,26,2,NULL),(718,245,26,2,NULL),(719,197,33,2,NULL),(720,198,33,2,NULL),(721,200,33,2,NULL),(722,201,33,2,NULL),(723,203,33,2,NULL),(724,204,33,2,NULL),(725,206,33,2,NULL),(726,207,33,2,NULL),(727,211,33,2,NULL),(728,212,33,2,NULL),(729,213,33,2,NULL),(730,214,33,2,NULL),(731,215,33,2,NULL),(732,216,33,2,NULL),(733,217,33,2,NULL),(734,218,33,2,NULL),(735,222,33,2,NULL),(736,224,33,2,NULL),(737,225,33,2,NULL),(738,226,33,2,NULL),(739,241,33,2,NULL),(740,243,33,2,NULL),(741,244,33,2,NULL),(742,245,33,2,NULL),(743,197,39,2,NULL),(744,198,39,2,NULL),(745,200,39,2,NULL),(746,201,39,2,NULL),(747,203,39,2,NULL),(748,204,39,2,NULL),(749,206,39,2,NULL),(750,207,39,2,NULL),(751,211,39,2,NULL),(752,212,39,2,NULL),(753,213,39,2,NULL),(754,214,39,2,NULL),(755,215,39,2,NULL),(756,216,39,2,NULL),(757,217,39,2,NULL),(758,218,39,2,NULL),(759,222,39,2,NULL),(760,224,39,2,NULL),(761,225,39,2,NULL),(762,226,39,2,NULL),(763,241,39,2,NULL),(764,243,39,2,NULL),(765,244,39,2,NULL),(766,245,39,2,NULL),(767,197,12,2,NULL),(768,198,12,2,NULL),(769,200,12,2,NULL),(770,201,12,2,NULL),(771,203,12,2,NULL),(772,204,12,2,NULL),(773,206,12,2,NULL),(774,207,12,2,NULL),(775,211,12,2,NULL),(776,212,12,2,NULL),(777,213,12,2,NULL),(778,214,12,2,NULL),(779,215,12,2,NULL),(780,216,12,2,NULL),(781,217,12,2,NULL),(782,218,12,2,NULL),(783,222,12,2,NULL),(784,224,12,2,NULL),(785,225,12,2,NULL),(786,226,12,2,NULL),(787,241,12,2,NULL),(788,243,12,2,NULL),(789,244,12,2,NULL),(790,245,12,2,NULL),(791,197,14,2,NULL),(792,198,14,2,NULL),(793,200,14,2,NULL),(794,201,14,2,NULL),(795,203,14,2,NULL),(796,204,14,2,NULL),(797,206,14,2,NULL),(798,207,14,2,NULL),(799,211,14,2,NULL),(800,212,14,2,NULL),(801,213,14,2,NULL),(802,214,14,2,NULL),(803,215,14,2,NULL),(804,216,14,2,NULL),(805,217,14,2,NULL),(806,218,14,2,NULL),(807,222,14,2,NULL),(808,224,14,2,NULL),(809,225,14,2,NULL),(810,226,14,2,NULL),(811,241,14,2,NULL),(812,243,14,2,NULL),(813,244,14,2,NULL),(814,245,14,2,NULL),(815,197,17,2,NULL),(816,198,17,2,NULL),(817,200,17,2,NULL),(818,201,17,2,NULL),(819,203,17,2,NULL),(820,204,17,2,NULL),(821,206,17,2,NULL),(822,207,17,2,NULL),(823,211,17,2,NULL),(824,212,17,2,NULL),(825,213,17,2,NULL),(826,214,17,2,NULL),(827,215,17,2,NULL),(828,216,17,2,NULL),(829,217,17,2,NULL),(830,218,17,2,NULL),(831,222,17,2,NULL),(832,224,17,2,NULL),(833,225,17,2,NULL),(834,226,17,2,NULL),(835,241,17,2,NULL),(836,243,17,2,NULL),(837,244,17,2,NULL),(838,245,17,2,NULL),(839,197,20,2,NULL),(840,198,20,2,NULL),(841,200,20,2,NULL),(842,201,20,2,NULL),(843,203,20,2,NULL),(844,204,20,2,NULL),(845,206,20,2,NULL),(846,207,20,2,NULL),(847,211,20,2,NULL),(848,212,20,2,NULL),(849,213,20,2,NULL),(850,214,20,2,NULL),(851,215,20,2,NULL),(852,216,20,2,NULL),(853,217,20,2,NULL),(854,218,20,2,NULL),(855,222,20,2,NULL),(856,224,20,2,NULL),(857,225,20,2,NULL),(858,226,20,2,NULL),(859,241,20,2,NULL),(860,243,20,2,NULL),(861,244,20,2,NULL),(862,245,20,2,NULL),(863,197,24,2,NULL),(864,198,24,2,NULL),(865,200,24,2,NULL),(866,201,24,2,NULL),(867,203,24,2,NULL),(868,204,24,2,NULL),(869,206,24,2,NULL),(870,207,24,2,NULL),(871,211,24,2,NULL),(872,212,24,2,NULL),(873,213,24,2,NULL),(874,214,24,2,NULL),(875,215,24,2,NULL),(876,216,24,2,NULL),(877,217,24,2,NULL),(878,218,24,2,NULL),(879,222,24,2,NULL),(880,224,24,2,NULL),(881,225,24,2,NULL),(882,226,24,2,NULL),(883,241,24,2,NULL),(884,243,24,2,NULL),(885,244,24,2,NULL),(886,245,24,2,NULL),(887,197,30,2,NULL),(888,198,30,2,NULL),(889,200,30,2,NULL),(890,201,30,2,NULL),(891,203,30,2,NULL),(892,204,30,2,NULL),(893,206,30,2,NULL),(894,144,16,2,NULL),(895,207,30,2,NULL),(896,63,16,2,NULL),(897,211,30,2,NULL),(898,65,16,2,NULL),(899,212,30,2,NULL),(900,76,16,2,NULL),(901,213,30,2,NULL),(902,79,16,2,NULL),(903,214,30,2,NULL),(904,210,16,2,NULL),(905,215,30,2,NULL),(906,69,16,2,NULL),(907,216,30,2,NULL),(908,43,16,2,NULL),(909,217,30,2,NULL),(910,34,16,2,NULL),(911,218,30,2,NULL),(912,37,16,2,NULL),(913,222,30,2,NULL),(914,27,16,2,NULL),(915,224,30,2,NULL),(916,30,16,2,NULL),(917,225,30,2,NULL),(918,70,16,2,NULL),(919,226,30,2,NULL),(920,120,16,2,NULL),(921,241,30,2,NULL),(922,131,16,2,NULL),(923,243,30,2,NULL),(924,136,16,2,NULL),(925,244,30,2,NULL),(926,19,16,2,NULL),(927,245,30,2,NULL),(928,21,16,2,NULL),(929,197,36,2,NULL),(930,52,16,2,NULL),(931,198,36,2,NULL),(932,56,16,2,NULL),(933,200,36,2,NULL),(934,122,16,2,NULL),(935,201,36,2,NULL),(936,124,16,2,NULL),(937,203,36,2,NULL),(938,127,16,2,NULL),(939,204,36,2,NULL),(940,128,16,2,NULL),(941,206,36,2,NULL),(942,74,16,2,NULL),(943,207,36,2,NULL),(944,78,16,2,NULL),(945,211,36,2,NULL),(946,47,16,2,NULL),(947,212,36,2,NULL),(948,197,16,2,NULL),(949,213,36,2,NULL),(950,198,16,2,NULL),(951,214,36,2,NULL),(952,200,16,2,NULL),(953,215,36,2,NULL),(954,201,16,2,NULL),(955,216,36,2,NULL),(956,203,16,2,NULL),(957,217,36,2,NULL),(958,204,16,2,NULL),(959,218,36,2,NULL),(960,206,16,2,NULL),(961,222,36,2,NULL),(962,207,16,2,NULL),(963,224,36,2,NULL),(964,211,16,2,NULL),(965,225,36,2,NULL),(966,212,16,2,NULL),(967,226,36,2,NULL),(968,213,16,2,NULL),(969,241,36,2,NULL),(970,214,16,2,NULL),(971,243,36,2,NULL),(972,215,16,2,NULL),(973,244,36,2,NULL),(974,216,16,2,NULL),(975,245,36,2,NULL),(976,217,16,2,NULL),(977,197,42,2,NULL),(978,218,16,2,NULL),(979,198,42,2,NULL),(980,222,16,2,NULL),(981,200,42,2,NULL),(982,224,16,2,NULL),(983,201,42,2,NULL),(984,225,16,2,NULL),(985,203,42,2,NULL),(986,226,16,2,NULL),(987,204,42,2,NULL),(988,241,16,2,NULL),(989,206,42,2,NULL),(990,243,16,2,NULL),(991,207,42,2,NULL),(992,244,16,2,NULL),(993,211,42,2,NULL),(994,245,16,2,NULL),(995,212,42,2,NULL),(996,232,16,2,NULL),(997,213,42,2,NULL),(998,234,16,2,NULL),(999,214,42,2,NULL),(1000,180,16,2,NULL),(1001,215,42,2,NULL),(1002,184,16,2,NULL),(1003,216,42,2,NULL),(1004,235,16,2,NULL),(1005,217,42,2,NULL),(1006,236,16,2,NULL),(1007,218,42,2,NULL),(1008,190,23,2,NULL),(1009,222,42,2,NULL),(1010,131,5,2,NULL),(1011,224,42,2,NULL),(1012,136,5,2,NULL),(1013,225,42,2,NULL),(1014,131,8,2,NULL),(1015,226,42,2,NULL),(1016,136,8,2,NULL),(1017,241,42,2,NULL),(1018,131,11,2,NULL),(1019,243,42,2,NULL),(1020,136,11,2,NULL),(1021,244,42,2,NULL),(1022,131,13,2,NULL),(1023,245,42,2,NULL),(1024,136,13,2,NULL),(1025,197,44,2,NULL),(1026,131,15,2,NULL),(1027,198,44,2,NULL),(1028,136,15,2,NULL),(1029,200,44,2,NULL),(1030,131,21,2,NULL),(1031,201,44,2,NULL),(1032,136,21,2,NULL),(1033,203,44,2,NULL),(1034,131,26,2,NULL),(1035,204,44,2,NULL),(1036,136,26,2,NULL),(1037,206,44,2,NULL),(1038,131,33,2,NULL),(1039,207,44,2,NULL),(1040,136,33,2,NULL),(1041,211,44,2,NULL),(1042,131,39,2,NULL),(1043,212,44,2,NULL),(1044,136,39,2,NULL),(1045,213,44,2,NULL),(1046,131,12,2,NULL),(1047,214,44,2,NULL),(1048,136,12,2,NULL),(1049,215,44,2,NULL),(1050,131,14,2,NULL),(1051,216,44,2,NULL),(1052,136,14,2,NULL),(1053,217,44,2,NULL),(1054,131,17,2,NULL),(1055,218,44,2,NULL),(1056,136,17,2,NULL),(1057,222,44,2,NULL),(1058,131,20,2,NULL),(1059,224,44,2,NULL),(1060,136,20,2,NULL),(1061,225,44,2,NULL),(1062,131,24,2,NULL),(1063,226,44,2,NULL),(1064,136,24,2,NULL),(1065,241,44,2,NULL),(1066,131,30,2,NULL),(1067,243,44,2,NULL),(1068,136,30,2,NULL),(1069,244,44,2,NULL),(1070,131,36,2,NULL),(1071,245,44,2,NULL),(1072,136,36,2,NULL),(1073,197,29,2,NULL),(1074,131,42,2,NULL),(1075,198,29,2,NULL),(1076,136,42,2,NULL),(1077,200,29,2,NULL),(1078,131,44,2,NULL),(1079,201,29,2,NULL),(1080,136,44,2,NULL),(1081,203,29,2,NULL),(1082,131,29,2,NULL),(1083,204,29,2,NULL),(1084,136,29,2,NULL),(1085,206,29,2,NULL),(1086,131,37,2,NULL),(1087,207,29,2,NULL),(1088,136,37,2,NULL),(1089,211,29,2,NULL),(1090,131,41,2,NULL),(1091,212,29,2,NULL),(1092,136,41,2,NULL),(1093,213,29,2,NULL),(1094,131,43,2,NULL),(1095,214,29,2,NULL),(1096,136,43,2,NULL),(1097,215,29,2,NULL),(1098,131,47,2,NULL),(1099,216,29,2,NULL),(1100,136,47,2,NULL),(1101,217,29,2,NULL),(1102,131,49,2,NULL),(1103,218,29,2,NULL),(1104,136,49,2,NULL),(1105,222,29,2,NULL),(1106,131,71,2,NULL),(1107,224,29,2,NULL),(1108,136,71,2,NULL),(1109,225,29,2,NULL),(1110,131,72,2,NULL),(1111,226,29,2,NULL),(1112,136,72,2,NULL),(1113,241,29,2,NULL),(1114,131,73,2,NULL),(1115,243,29,2,NULL),(1116,136,73,2,NULL),(1117,244,29,2,NULL),(1118,131,54,2,NULL),(1119,245,29,2,NULL),(1120,136,54,2,NULL),(1121,197,37,2,NULL),(1122,131,59,2,NULL),(1123,198,37,2,NULL),(1124,136,59,2,NULL),(1125,200,37,2,NULL),(1126,131,61,2,NULL),(1127,201,37,2,NULL),(1128,136,61,2,NULL),(1129,203,37,2,NULL),(1130,131,74,2,NULL),(1131,204,37,2,NULL),(1132,136,74,2,NULL),(1133,206,37,2,NULL),(1134,131,75,2,NULL),(1135,207,37,2,NULL),(1136,136,75,2,NULL),(1137,211,37,2,NULL),(1138,131,76,2,NULL),(1139,212,37,2,NULL),(1140,136,76,2,NULL),(1141,213,37,2,NULL),(1142,72,47,2,NULL),(1143,214,37,2,NULL),(1144,193,47,2,NULL),(1145,215,37,2,NULL),(1146,144,29,2,NULL),(1147,216,37,2,NULL),(1148,63,29,2,NULL),(1149,217,37,2,NULL),(1150,65,29,2,NULL),(1151,218,37,2,NULL),(1152,76,29,2,NULL),(1153,222,37,2,NULL),(1154,79,29,2,NULL),(1155,224,37,2,NULL),(1156,210,29,2,NULL),(1157,225,37,2,NULL),(1158,69,29,2,NULL),(1159,226,37,2,NULL),(1160,43,29,2,NULL),(1161,241,37,2,NULL),(1162,34,29,2,NULL),(1163,243,37,2,NULL),(1164,37,29,2,NULL),(1165,244,37,2,NULL),(1166,27,29,2,NULL),(1167,245,37,2,NULL),(1168,30,29,2,NULL),(1169,197,41,2,NULL),(1170,70,29,2,NULL),(1171,198,41,2,NULL),(1172,120,29,2,NULL),(1173,200,41,2,NULL),(1174,19,29,2,NULL),(1175,201,41,2,NULL),(1176,21,29,2,NULL),(1177,203,41,2,NULL),(1178,52,29,2,NULL),(1179,204,41,2,NULL),(1180,56,29,2,NULL),(1181,206,41,2,NULL),(1182,122,29,2,NULL),(1183,207,41,2,NULL),(1184,124,29,2,NULL),(1185,211,41,2,NULL),(1186,127,29,2,NULL),(1187,212,41,2,NULL),(1188,128,29,2,NULL),(1189,213,41,2,NULL),(1190,74,29,2,NULL),(1191,214,41,2,NULL),(1192,78,29,2,NULL),(1193,215,41,2,NULL),(1194,47,29,2,NULL),(1195,67,42,2,NULL),(1196,216,41,2,NULL),(1197,217,41,2,NULL),(1198,175,42,2,NULL),(1199,232,29,2,NULL),(1200,218,41,2,NULL),(1201,234,29,2,NULL),(1202,176,42,2,NULL),(1203,222,41,2,NULL),(1204,180,29,2,NULL),(1205,224,41,2,NULL),(1206,64,42,2,NULL),(1207,184,29,2,NULL),(1208,225,41,2,NULL),(1209,235,29,2,NULL),(1210,142,42,2,NULL),(1211,226,41,2,NULL),(1212,236,29,2,NULL),(1213,241,41,2,NULL),(1214,143,42,2,NULL),(1215,139,16,2,NULL),(1216,243,41,2,NULL),(1217,16,47,2,NULL),(1218,7,20,2,NULL),(1219,244,41,2,NULL),(1220,66,47,2,NULL),(1221,245,41,2,NULL),(1222,90,6,2,NULL),(1223,144,37,2,NULL),(1224,197,43,2,NULL),(1225,19,5,2,NULL),(1226,198,43,2,NULL),(1227,43,5,2,NULL),(1228,21,5,2,NULL),(1229,200,43,2,NULL),(1230,43,8,2,NULL),(1231,19,8,2,NULL),(1232,201,43,2,NULL),(1233,21,8,2,NULL),(1234,43,11,2,NULL),(1235,203,43,2,NULL),(1236,19,11,2,NULL),(1237,204,43,2,NULL),(1238,43,13,2,NULL),(1239,21,11,2,NULL),(1240,206,43,2,NULL),(1241,19,13,2,NULL),(1242,43,15,2,NULL),(1243,207,43,2,NULL),(1244,21,13,2,NULL),(1245,211,43,2,NULL),(1246,19,15,2,NULL),(1247,43,21,2,NULL),(1248,212,43,2,NULL),(1249,21,15,2,NULL),(1250,43,26,2,NULL),(1251,213,43,2,NULL),(1252,63,37,2,NULL),(1253,214,43,2,NULL),(1254,43,33,2,NULL),(1255,65,37,2,NULL),(1256,215,43,2,NULL),(1257,76,37,2,NULL),(1258,43,39,2,NULL),(1259,216,43,2,NULL),(1260,79,37,2,NULL),(1261,217,43,2,NULL),(1262,43,12,2,NULL),(1263,210,37,2,NULL),(1264,218,43,2,NULL),(1265,19,21,2,NULL),(1266,43,14,2,NULL),(1267,222,43,2,NULL),(1268,21,21,2,NULL),(1269,224,43,2,NULL),(1270,43,17,2,NULL),(1271,19,26,2,NULL),(1272,225,43,2,NULL),(1273,21,26,2,NULL),(1274,43,20,2,NULL),(1275,226,43,2,NULL),(1276,69,37,2,NULL),(1277,241,43,2,NULL),(1278,43,24,2,NULL),(1279,19,33,2,NULL),(1280,243,43,2,NULL),(1281,21,33,2,NULL),(1282,43,30,2,NULL),(1283,244,43,2,NULL),(1284,19,39,2,NULL),(1285,245,43,2,NULL),(1286,43,36,2,NULL),(1287,21,39,2,NULL),(1288,197,47,2,NULL),(1289,43,37,2,NULL),(1290,43,42,2,NULL),(1291,198,47,2,NULL),(1292,19,12,2,NULL),(1293,200,47,2,NULL),(1294,43,44,2,NULL),(1295,21,12,2,NULL),(1296,201,47,2,NULL),(1297,43,41,2,NULL),(1298,19,14,2,NULL),(1299,203,47,2,NULL),(1300,21,14,2,NULL),(1301,43,43,2,NULL),(1302,204,47,2,NULL),(1303,19,17,2,NULL),(1304,206,47,2,NULL),(1305,43,47,2,NULL),(1306,21,17,2,NULL),(1307,207,47,2,NULL),(1308,43,49,2,NULL),(1309,19,20,2,NULL),(1310,211,47,2,NULL),(1311,21,20,2,NULL),(1312,43,71,2,NULL),(1313,212,47,2,NULL),(1314,19,24,2,NULL),(1315,43,72,2,NULL),(1316,213,47,2,NULL),(1317,21,24,2,NULL),(1318,43,73,2,NULL),(1319,214,47,2,NULL),(1320,34,37,2,NULL),(1321,43,54,2,NULL),(1322,215,47,2,NULL),(1323,37,37,2,NULL),(1324,216,47,2,NULL),(1325,43,59,2,NULL),(1326,27,37,2,NULL),(1327,217,47,2,NULL),(1328,43,61,2,NULL),(1329,30,37,2,NULL),(1330,218,47,2,NULL),(1331,43,74,2,NULL),(1332,70,37,2,NULL),(1333,222,47,2,NULL),(1334,43,75,2,NULL),(1335,19,30,2,NULL),(1336,224,47,2,NULL),(1337,43,76,2,NULL),(1338,21,30,2,NULL),(1339,225,47,2,NULL),(1340,134,20,2,NULL),(1341,19,36,2,NULL),(1342,226,47,2,NULL),(1343,151,42,2,NULL),(1344,21,36,2,NULL),(1345,241,47,2,NULL),(1346,144,12,2,NULL),(1347,120,37,2,NULL),(1348,243,47,2,NULL),(1349,63,12,2,NULL),(1350,19,42,2,NULL),(1351,244,47,2,NULL),(1352,65,12,2,NULL),(1353,21,42,2,NULL),(1354,245,47,2,NULL),(1355,76,12,2,NULL),(1356,19,44,2,NULL),(1357,197,49,2,NULL),(1358,79,12,2,NULL),(1359,21,44,2,NULL),(1360,198,49,2,NULL),(1361,210,12,2,NULL),(1362,19,41,2,NULL),(1363,200,49,2,NULL),(1364,69,12,2,NULL),(1365,21,41,2,NULL),(1366,201,49,2,NULL),(1367,34,12,2,NULL),(1368,52,37,2,NULL),(1369,203,49,2,NULL),(1370,37,12,2,NULL),(1371,56,37,2,NULL),(1372,204,49,2,NULL),(1373,27,12,2,NULL),(1374,19,43,2,NULL),(1375,206,49,2,NULL),(1376,30,12,2,NULL),(1377,21,43,2,NULL),(1378,207,49,2,NULL),(1379,70,12,2,NULL),(1380,122,37,2,NULL),(1381,211,49,2,NULL),(1382,120,12,2,NULL),(1383,124,37,2,NULL),(1384,212,49,2,NULL),(1385,52,12,2,NULL),(1386,127,37,2,NULL),(1387,213,49,2,NULL),(1388,56,12,2,NULL),(1389,128,37,2,NULL),(1390,214,49,2,NULL),(1391,122,12,2,NULL),(1392,74,37,2,NULL),(1393,215,49,2,NULL),(1394,124,12,2,NULL),(1395,78,37,2,NULL),(1396,216,49,2,NULL),(1397,127,12,2,NULL),(1398,47,37,2,NULL),(1399,217,49,2,NULL),(1400,128,12,2,NULL),(1401,19,47,2,NULL),(1402,218,49,2,NULL),(1403,74,12,2,NULL),(1404,21,47,2,NULL),(1405,222,49,2,NULL),(1406,78,12,2,NULL),(1407,19,49,2,NULL),(1408,224,49,2,NULL),(1409,47,12,2,NULL),(1410,21,49,2,NULL),(1411,225,49,2,NULL),(1412,19,71,2,NULL),(1413,226,49,2,NULL),(1414,232,12,2,NULL),(1415,21,71,2,NULL),(1416,241,49,2,NULL),(1417,234,12,2,NULL),(1418,19,72,2,NULL),(1419,243,49,2,NULL),(1420,180,12,2,NULL),(1421,21,72,2,NULL),(1422,244,49,2,NULL),(1423,184,12,2,NULL),(1424,19,73,2,NULL),(1425,245,49,2,NULL),(1426,235,12,2,NULL),(1427,21,73,2,NULL),(1428,197,71,2,NULL),(1429,236,12,2,NULL),(1430,232,37,2,NULL),(1431,198,71,2,NULL),(1432,53,20,2,NULL),(1433,234,37,2,NULL),(1434,200,71,2,NULL),(1435,58,42,2,NULL),(1436,19,54,2,NULL),(1437,201,71,2,NULL),(1438,144,14,2,NULL),(1439,21,54,2,NULL),(1440,203,71,2,NULL),(1441,180,37,2,NULL),(1442,63,14,2,NULL),(1443,204,71,2,NULL),(1444,184,37,2,NULL),(1445,65,14,2,NULL),(1446,206,71,2,NULL),(1447,235,37,2,NULL),(1448,76,14,2,NULL),(1449,207,71,2,NULL),(1450,236,37,2,NULL),(1451,79,14,2,NULL),(1452,211,71,2,NULL),(1453,19,59,2,NULL),(1454,210,14,2,NULL),(1455,212,71,2,NULL),(1456,21,59,2,NULL),(1457,69,14,2,NULL),(1458,213,71,2,NULL),(1459,19,61,2,NULL),(1460,34,14,2,NULL),(1461,214,71,2,NULL),(1462,21,61,2,NULL),(1463,37,14,2,NULL),(1464,215,71,2,NULL),(1465,19,74,2,NULL),(1466,27,14,2,NULL),(1467,216,71,2,NULL),(1468,21,74,2,NULL),(1469,30,14,2,NULL),(1470,217,71,2,NULL),(1471,19,75,2,NULL),(1472,70,14,2,NULL),(1473,218,71,2,NULL),(1474,21,75,2,NULL),(1475,120,14,2,NULL),(1476,222,71,2,NULL),(1477,19,76,2,NULL),(1478,52,14,2,NULL),(1479,224,71,2,NULL),(1480,21,76,2,NULL),(1481,56,14,2,NULL),(1482,225,71,2,NULL),(1483,122,14,2,NULL),(1484,105,37,2,NULL),(1485,226,71,2,NULL),(1486,124,14,2,NULL),(1487,241,71,2,NULL),(1488,106,37,2,NULL),(1489,127,14,2,NULL),(1490,243,71,2,NULL),(1491,110,37,2,NULL),(1492,128,14,2,NULL),(1493,244,71,2,NULL),(1494,144,41,2,NULL),(1495,74,14,2,NULL),(1496,245,71,2,NULL),(1497,52,5,2,NULL),(1498,78,14,2,NULL),(1499,197,72,2,NULL),(1500,56,5,2,NULL),(1501,47,14,2,NULL),(1502,198,72,2,NULL),(1503,52,8,2,NULL),(1504,232,14,2,NULL),(1505,200,72,2,NULL),(1506,56,8,2,NULL),(1507,234,14,2,NULL),(1508,201,72,2,NULL),(1509,52,11,2,NULL),(1510,180,14,2,NULL),(1511,203,72,2,NULL),(1512,56,11,2,NULL),(1513,184,14,2,NULL),(1514,204,72,2,NULL),(1515,52,13,2,NULL),(1516,235,14,2,NULL),(1517,206,72,2,NULL),(1518,56,13,2,NULL),(1519,236,14,2,NULL),(1520,207,72,2,NULL),(1521,52,15,2,NULL),(1522,82,42,2,NULL),(1523,211,72,2,NULL),(1524,56,15,2,NULL),(1525,144,17,2,NULL),(1526,212,72,2,NULL),(1527,63,41,2,NULL),(1528,63,17,2,NULL),(1529,213,72,2,NULL),(1530,65,41,2,NULL),(1531,65,17,2,NULL),(1532,214,72,2,NULL),(1533,76,41,2,NULL),(1534,76,17,2,NULL),(1535,215,72,2,NULL),(1536,79,41,2,NULL),(1537,79,17,2,NULL),(1538,216,72,2,NULL),(1539,210,41,2,NULL),(1540,210,17,2,NULL),(1541,217,72,2,NULL),(1542,52,21,2,NULL),(1543,69,17,2,NULL),(1544,218,72,2,NULL),(1545,56,21,2,NULL),(1546,34,17,2,NULL),(1547,222,72,2,NULL),(1548,52,26,2,NULL),(1549,37,17,2,NULL),(1550,224,72,2,NULL),(1551,56,26,2,NULL),(1552,27,17,2,NULL),(1553,225,72,2,NULL),(1554,69,41,2,NULL),(1555,30,17,2,NULL),(1556,226,72,2,NULL),(1557,52,33,2,NULL),(1558,70,17,2,NULL),(1559,241,72,2,NULL),(1560,56,33,2,NULL),(1561,243,72,2,NULL),(1562,120,17,2,NULL),(1563,52,39,2,NULL),(1564,244,72,2,NULL),(1565,56,39,2,NULL),(1566,245,72,2,NULL),(1567,52,17,2,NULL),(1568,56,17,2,NULL),(1569,197,73,2,NULL),(1570,122,17,2,NULL),(1571,52,20,2,NULL),(1572,198,73,2,NULL),(1573,124,17,2,NULL),(1574,200,73,2,NULL),(1575,56,20,2,NULL),(1576,127,17,2,NULL),(1577,201,73,2,NULL),(1578,52,24,2,NULL),(1579,128,17,2,NULL),(1580,203,73,2,NULL),(1581,56,24,2,NULL),(1582,74,17,2,NULL),(1583,34,41,2,NULL),(1584,78,17,2,NULL),(1585,204,73,2,NULL),(1586,37,41,2,NULL),(1587,206,73,2,NULL),(1588,47,17,2,NULL),(1589,27,41,2,NULL),(1590,207,73,2,NULL),(1591,30,41,2,NULL),(1592,211,73,2,NULL),(1593,232,17,2,NULL),(1594,70,41,2,NULL),(1595,212,73,2,NULL),(1596,234,17,2,NULL),(1597,52,30,2,NULL),(1598,180,17,2,NULL),(1599,213,73,2,NULL),(1600,56,30,2,NULL),(1601,184,17,2,NULL),(1602,214,73,2,NULL),(1603,52,36,2,NULL),(1604,235,17,2,NULL),(1605,215,73,2,NULL),(1606,56,36,2,NULL),(1607,236,17,2,NULL),(1608,216,73,2,NULL),(1609,120,41,2,NULL),(1610,9,42,2,NULL),(1611,217,73,2,NULL),(1612,52,42,2,NULL),(1613,48,6,2,NULL),(1614,218,73,2,NULL),(1615,56,42,2,NULL),(1616,98,6,2,NULL),(1617,222,73,2,NULL),(1618,52,44,2,NULL),(1619,144,20,2,NULL),(1620,224,73,2,NULL),(1621,56,44,2,NULL),(1622,63,20,2,NULL),(1623,225,73,2,NULL),(1624,52,43,2,NULL),(1625,226,73,2,NULL),(1626,65,20,2,NULL),(1627,56,43,2,NULL),(1628,241,73,2,NULL),(1629,76,20,2,NULL),(1630,122,41,2,NULL),(1631,243,73,2,NULL),(1632,79,20,2,NULL),(1633,124,41,2,NULL),(1634,244,73,2,NULL),(1635,210,20,2,NULL),(1636,127,41,2,NULL),(1637,69,20,2,NULL),(1638,245,73,2,NULL),(1639,128,41,2,NULL),(1640,34,20,2,NULL),(1641,74,41,2,NULL),(1642,37,20,2,NULL),(1643,78,41,2,NULL),(1644,197,54,2,NULL),(1645,27,20,2,NULL),(1646,47,41,2,NULL),(1647,198,54,2,NULL),(1648,30,20,2,NULL),(1649,52,47,2,NULL),(1650,200,54,2,NULL),(1651,70,20,2,NULL),(1652,56,47,2,NULL),(1653,201,54,2,NULL),(1654,120,20,2,NULL),(1655,52,49,2,NULL),(1656,203,54,2,NULL),(1657,122,20,2,NULL),(1658,56,49,2,NULL),(1659,124,20,2,NULL),(1660,204,54,2,NULL),(1661,52,71,2,NULL),(1662,206,54,2,NULL),(1663,127,20,2,NULL),(1664,56,71,2,NULL),(1665,207,54,2,NULL),(1666,128,20,2,NULL),(1667,52,72,2,NULL),(1668,74,20,2,NULL),(1669,211,54,2,NULL),(1670,56,72,2,NULL),(1671,212,54,2,NULL),(1672,78,20,2,NULL),(1673,52,73,2,NULL),(1674,213,54,2,NULL),(1675,47,20,2,NULL),(1676,56,73,2,NULL),(1677,214,54,2,NULL),(1678,232,20,2,NULL),(1679,215,54,2,NULL),(1680,234,20,2,NULL),(1681,232,41,2,NULL),(1682,216,54,2,NULL),(1683,180,20,2,NULL),(1684,217,54,2,NULL),(1685,234,41,2,NULL),(1686,184,20,2,NULL),(1687,218,54,2,NULL),(1688,52,54,2,NULL),(1689,235,20,2,NULL),(1690,222,54,2,NULL),(1691,56,54,2,NULL),(1692,236,20,2,NULL),(1693,180,41,2,NULL),(1694,224,54,2,NULL),(1695,187,20,2,NULL),(1696,225,54,2,NULL),(1697,184,41,2,NULL),(1698,144,24,2,NULL),(1699,226,54,2,NULL),(1700,235,41,2,NULL),(1701,34,5,2,NULL),(1702,236,41,2,NULL),(1703,241,54,2,NULL),(1704,37,5,2,NULL),(1705,52,59,2,NULL),(1706,243,54,2,NULL),(1707,34,8,2,NULL),(1708,56,59,2,NULL),(1709,244,54,2,NULL),(1710,37,8,2,NULL),(1711,52,61,2,NULL),(1712,245,54,2,NULL),(1713,34,11,2,NULL),(1714,56,61,2,NULL),(1715,197,59,2,NULL),(1716,37,11,2,NULL),(1717,198,59,2,NULL),(1718,52,74,2,NULL),(1719,34,13,2,NULL),(1720,200,59,2,NULL),(1721,56,74,2,NULL),(1722,37,13,2,NULL),(1723,201,59,2,NULL),(1724,52,75,2,NULL),(1725,34,15,2,NULL),(1726,203,59,2,NULL),(1727,56,75,2,NULL),(1728,37,15,2,NULL),(1729,204,59,2,NULL),(1730,52,76,2,NULL),(1731,63,24,2,NULL),(1732,206,59,2,NULL),(1733,56,76,2,NULL),(1734,65,24,2,NULL),(1735,207,59,2,NULL),(1736,158,47,2,NULL),(1737,76,24,2,NULL),(1738,211,59,2,NULL),(1739,144,43,2,NULL),(1740,79,24,2,NULL),(1741,212,59,2,NULL),(1742,122,5,2,NULL),(1743,210,24,2,NULL),(1744,124,5,2,NULL),(1745,213,59,2,NULL),(1746,34,21,2,NULL),(1747,127,5,2,NULL),(1748,214,59,2,NULL),(1749,37,21,2,NULL),(1750,215,59,2,NULL),(1751,128,5,2,NULL),(1752,34,26,2,NULL),(1753,216,59,2,NULL),(1754,122,8,2,NULL),(1755,37,26,2,NULL),(1756,217,59,2,NULL),(1757,124,8,2,NULL),(1758,69,24,2,NULL),(1759,127,8,2,NULL),(1760,218,59,2,NULL),(1761,34,33,2,NULL),(1762,128,8,2,NULL),(1763,222,59,2,NULL),(1764,37,33,2,NULL),(1765,224,59,2,NULL),(1766,122,11,2,NULL),(1767,34,39,2,NULL),(1768,225,59,2,NULL),(1769,124,11,2,NULL),(1770,37,39,2,NULL),(1771,226,59,2,NULL),(1772,127,11,2,NULL),(1773,27,24,2,NULL),(1774,241,59,2,NULL),(1775,128,11,2,NULL),(1776,30,24,2,NULL),(1777,243,59,2,NULL),(1778,122,13,2,NULL),(1779,70,24,2,NULL),(1780,124,13,2,NULL),(1781,244,59,2,NULL),(1782,34,30,2,NULL),(1783,245,59,2,NULL),(1784,127,13,2,NULL),(1785,37,30,2,NULL),(1786,128,13,2,NULL),(1787,197,61,2,NULL),(1788,34,36,2,NULL),(1789,122,15,2,NULL),(1790,198,61,2,NULL),(1791,37,36,2,NULL),(1792,200,61,2,NULL),(1793,124,15,2,NULL),(1794,120,24,2,NULL),(1795,201,61,2,NULL),(1796,127,15,2,NULL),(1797,34,42,2,NULL),(1798,128,15,2,NULL),(1799,203,61,2,NULL),(1800,37,42,2,NULL),(1801,204,61,2,NULL),(1802,63,43,2,NULL),(1803,34,44,2,NULL),(1804,206,61,2,NULL),(1805,65,43,2,NULL),(1806,37,44,2,NULL),(1807,207,61,2,NULL),(1808,76,43,2,NULL),(1809,34,43,2,NULL),(1810,211,61,2,NULL),(1811,79,43,2,NULL),(1812,37,43,2,NULL),(1813,212,61,2,NULL),(1814,210,43,2,NULL),(1815,122,24,2,NULL),(1816,213,61,2,NULL),(1817,122,21,2,NULL),(1818,124,24,2,NULL),(1819,214,61,2,NULL),(1820,124,21,2,NULL),(1821,127,24,2,NULL),(1822,215,61,2,NULL),(1823,127,21,2,NULL),(1824,128,24,2,NULL),(1825,216,61,2,NULL),(1826,128,21,2,NULL),(1827,74,24,2,NULL),(1828,122,26,2,NULL),(1829,217,61,2,NULL),(1830,78,24,2,NULL),(1831,218,61,2,NULL),(1832,124,26,2,NULL),(1833,47,24,2,NULL),(1834,222,61,2,NULL),(1835,127,26,2,NULL),(1836,34,47,2,NULL),(1837,224,61,2,NULL),(1838,128,26,2,NULL),(1839,37,47,2,NULL),(1840,225,61,2,NULL),(1841,69,43,2,NULL),(1842,34,49,2,NULL),(1843,226,61,2,NULL),(1844,122,33,2,NULL),(1845,37,49,2,NULL),(1846,241,61,2,NULL),(1847,124,33,2,NULL),(1848,34,71,2,NULL),(1849,243,61,2,NULL),(1850,127,33,2,NULL),(1851,37,71,2,NULL),(1852,244,61,2,NULL),(1853,128,33,2,NULL),(1854,34,72,2,NULL),(1855,245,61,2,NULL),(1856,122,39,2,NULL),(1857,37,72,2,NULL),(1858,124,39,2,NULL),(1859,197,74,2,NULL),(1860,34,73,2,NULL),(1861,198,74,2,NULL),(1862,127,39,2,NULL),(1863,37,73,2,NULL),(1864,128,39,2,NULL),(1865,200,74,2,NULL),(1866,201,74,2,NULL),(1867,232,24,2,NULL),(1868,27,43,2,NULL),(1869,203,74,2,NULL),(1870,234,24,2,NULL),(1871,204,74,2,NULL),(1872,30,43,2,NULL),(1873,34,54,2,NULL),(1874,206,74,2,NULL),(1875,70,43,2,NULL),(1876,37,54,2,NULL),(1877,207,74,2,NULL),(1878,122,30,2,NULL),(1879,180,24,2,NULL),(1880,211,74,2,NULL),(1881,124,30,2,NULL),(1882,184,24,2,NULL),(1883,212,74,2,NULL),(1884,127,30,2,NULL),(1885,235,24,2,NULL),(1886,213,74,2,NULL),(1887,128,30,2,NULL),(1888,236,24,2,NULL),(1889,214,74,2,NULL),(1890,122,36,2,NULL),(1891,34,59,2,NULL),(1892,215,74,2,NULL),(1893,124,36,2,NULL),(1894,37,59,2,NULL),(1895,216,74,2,NULL),(1896,127,36,2,NULL),(1897,34,61,2,NULL),(1898,128,36,2,NULL),(1899,217,74,2,NULL),(1900,37,61,2,NULL),(1901,218,74,2,NULL),(1902,120,43,2,NULL),(1903,34,74,2,NULL),(1904,222,74,2,NULL),(1905,122,42,2,NULL),(1906,37,74,2,NULL),(1907,224,74,2,NULL),(1908,124,42,2,NULL),(1909,34,75,2,NULL),(1910,225,74,2,NULL),(1911,127,42,2,NULL),(1912,37,75,2,NULL),(1913,226,74,2,NULL),(1914,128,42,2,NULL),(1915,34,76,2,NULL),(1916,241,74,2,NULL),(1917,122,44,2,NULL),(1918,37,76,2,NULL),(1919,243,74,2,NULL),(1920,124,44,2,NULL),(1921,18,20,2,NULL),(1922,244,74,2,NULL),(1923,127,44,2,NULL),(1924,71,28,2,NULL),(1925,128,44,2,NULL),(1926,245,74,2,NULL),(1927,27,5,2,NULL),(1928,197,75,2,NULL),(1929,30,5,2,NULL),(1930,74,43,2,NULL),(1931,198,75,2,NULL),(1932,70,5,2,NULL),(1933,78,43,2,NULL),(1934,200,75,2,NULL),(1935,27,8,2,NULL),(1936,47,43,2,NULL),(1937,201,75,2,NULL),(1938,122,47,2,NULL),(1939,30,8,2,NULL),(1940,203,75,2,NULL),(1941,124,47,2,NULL),(1942,70,8,2,NULL),(1943,204,75,2,NULL),(1944,127,47,2,NULL),(1945,27,11,2,NULL),(1946,206,75,2,NULL),(1947,30,11,2,NULL),(1948,128,47,2,NULL),(1949,207,75,2,NULL),(1950,70,11,2,NULL),(1951,122,49,2,NULL),(1952,211,75,2,NULL),(1953,124,49,2,NULL),(1954,27,13,2,NULL),(1955,212,75,2,NULL),(1956,127,49,2,NULL),(1957,30,13,2,NULL),(1958,213,75,2,NULL),(1959,128,49,2,NULL),(1960,70,13,2,NULL),(1961,214,75,2,NULL),(1962,122,71,2,NULL),(1963,27,15,2,NULL),(1964,215,75,2,NULL),(1965,30,15,2,NULL),(1966,216,75,2,NULL),(1967,70,15,2,NULL),(1968,124,71,2,NULL),(1969,217,75,2,NULL),(1970,27,21,2,NULL),(1971,127,71,2,NULL),(1972,218,75,2,NULL),(1973,128,71,2,NULL),(1974,30,21,2,NULL),(1975,222,75,2,NULL),(1976,70,21,2,NULL),(1977,122,72,2,NULL),(1978,224,75,2,NULL),(1979,27,26,2,NULL),(1980,124,72,2,NULL),(1981,225,75,2,NULL),(1982,127,72,2,NULL),(1983,30,26,2,NULL),(1984,226,75,2,NULL),(1985,128,72,2,NULL),(1986,70,26,2,NULL),(1987,241,75,2,NULL),(1988,122,73,2,NULL),(1989,27,33,2,NULL),(1990,243,75,2,NULL),(1991,30,33,2,NULL),(1992,124,73,2,NULL),(1993,244,75,2,NULL),(1994,127,73,2,NULL),(1995,70,33,2,NULL),(1996,245,75,2,NULL),(1997,128,73,2,NULL),(1998,27,39,2,NULL),(1999,197,76,2,NULL),(2000,30,39,2,NULL),(2001,198,76,2,NULL),(2002,70,39,2,NULL),(2003,232,43,2,NULL),(2004,200,76,2,NULL),(2005,27,30,2,NULL),(2006,234,43,2,NULL),(2007,201,76,2,NULL),(2008,30,30,2,NULL),(2009,203,76,2,NULL),(2010,122,54,2,NULL),(2011,70,30,2,NULL),(2012,204,76,2,NULL),(2013,124,54,2,NULL),(2014,27,36,2,NULL),(2015,206,76,2,NULL),(2016,127,54,2,NULL),(2017,30,36,2,NULL),(2018,207,76,2,NULL),(2019,128,54,2,NULL),(2020,70,36,2,NULL),(2021,211,76,2,NULL),(2022,180,43,2,NULL),(2023,27,42,2,NULL),(2024,184,43,2,NULL),(2025,212,76,2,NULL),(2026,30,42,2,NULL),(2027,235,43,2,NULL),(2028,213,76,2,NULL),(2029,70,42,2,NULL),(2030,214,76,2,NULL),(2031,236,43,2,NULL),(2032,27,44,2,NULL),(2033,215,76,2,NULL),(2034,122,59,2,NULL),(2035,30,44,2,NULL),(2036,124,59,2,NULL),(2037,216,76,2,NULL),(2038,70,44,2,NULL),(2039,127,59,2,NULL),(2040,217,76,2,NULL),(2041,128,59,2,NULL),(2042,218,76,2,NULL),(2043,27,47,2,NULL),(2044,122,61,2,NULL),(2045,30,47,2,NULL),(2046,222,76,2,NULL),(2047,124,61,2,NULL),(2048,70,47,2,NULL),(2049,224,76,2,NULL),(2050,127,61,2,NULL),(2051,225,76,2,NULL),(2052,27,49,2,NULL),(2053,128,61,2,NULL),(2054,226,76,2,NULL),(2055,30,49,2,NULL),(2056,122,74,2,NULL),(2057,70,49,2,NULL),(2058,241,76,2,NULL),(2059,124,74,2,NULL),(2060,243,76,2,NULL),(2061,27,71,2,NULL),(2062,127,74,2,NULL),(2063,244,76,2,NULL),(2064,30,71,2,NULL),(2065,128,74,2,NULL),(2066,70,71,2,NULL),(2067,245,76,2,NULL),(2068,122,75,2,NULL),(2069,27,72,2,NULL),(2070,124,75,2,NULL),(2071,30,72,2,NULL),(2072,127,75,2,NULL),(2073,70,72,2,NULL),(2074,232,5,2,NULL),(2075,128,75,2,NULL),(2076,27,73,2,NULL),(2077,234,5,2,NULL),(2078,122,76,2,NULL),(2079,30,73,2,NULL),(2080,124,76,2,NULL),(2081,232,8,2,NULL),(2082,70,73,2,NULL),(2083,127,76,2,NULL),(2084,234,8,2,NULL),(2085,27,54,2,NULL),(2086,128,76,2,NULL),(2087,232,11,2,NULL),(2088,30,54,2,NULL),(2089,234,11,2,NULL),(2090,141,37,2,NULL),(2091,70,54,2,NULL),(2092,232,13,2,NULL),(2093,27,59,2,NULL),(2094,74,5,2,NULL),(2095,234,13,2,NULL),(2096,30,59,2,NULL),(2097,78,5,2,NULL),(2098,232,15,2,NULL),(2099,74,8,2,NULL),(2100,70,59,2,NULL),(2101,234,15,2,NULL),(2102,27,61,2,NULL),(2103,78,8,2,NULL),(2104,232,21,2,NULL),(2105,30,61,2,NULL),(2106,74,11,2,NULL),(2107,234,21,2,NULL),(2108,78,11,2,NULL),(2109,70,61,2,NULL),(2110,232,26,2,NULL),(2111,74,13,2,NULL),(2112,27,74,2,NULL),(2113,234,26,2,NULL),(2114,30,74,2,NULL),(2115,78,13,2,NULL),(2116,232,33,2,NULL),(2117,70,74,2,NULL),(2118,74,15,2,NULL),(2119,234,33,2,NULL),(2120,27,75,2,NULL),(2121,78,15,2,NULL),(2122,232,39,2,NULL),(2123,30,75,2,NULL),(2124,74,21,2,NULL),(2125,234,39,2,NULL),(2126,78,21,2,NULL),(2127,70,75,2,NULL),(2128,232,30,2,NULL),(2129,74,26,2,NULL),(2130,27,76,2,NULL),(2131,234,30,2,NULL),(2132,78,26,2,NULL),(2133,30,76,2,NULL),(2134,232,36,2,NULL),(2135,74,33,2,NULL),(2136,70,76,2,NULL),(2137,78,33,2,NULL),(2138,144,30,2,NULL),(2139,74,39,2,NULL),(2140,234,36,2,NULL),(2141,63,30,2,NULL),(2142,78,39,2,NULL),(2143,65,30,2,NULL),(2144,232,42,2,NULL),(2145,74,30,2,NULL),(2146,234,42,2,NULL),(2147,76,30,2,NULL),(2148,78,30,2,NULL),(2149,232,44,2,NULL),(2150,79,30,2,NULL),(2151,74,36,2,NULL),(2152,234,44,2,NULL),(2153,210,30,2,NULL),(2154,78,36,2,NULL),(2155,69,30,2,NULL),(2156,232,47,2,NULL),(2157,74,42,2,NULL),(2158,234,47,2,NULL),(2159,120,30,2,NULL),(2160,78,42,2,NULL),(2161,232,49,2,NULL),(2162,74,44,2,NULL),(2163,47,30,2,NULL),(2164,234,49,2,NULL),(2165,78,44,2,NULL),(2166,232,71,2,NULL),(2167,180,30,2,NULL),(2168,74,47,2,NULL),(2169,234,71,2,NULL),(2170,184,30,2,NULL),(2171,78,47,2,NULL),(2172,232,72,2,NULL),(2173,235,30,2,NULL),(2174,74,49,2,NULL),(2175,234,72,2,NULL),(2176,236,30,2,NULL),(2177,78,49,2,NULL),(2178,232,73,2,NULL),(2179,8,42,2,NULL),(2180,74,71,2,NULL),(2181,234,73,2,NULL),(2182,108,42,2,NULL),(2183,78,71,2,NULL),(2184,112,42,2,NULL),(2185,232,54,2,NULL),(2186,74,72,2,NULL),(2187,234,54,2,NULL),(2188,144,36,2,NULL),(2189,78,72,2,NULL),(2190,63,36,2,NULL),(2191,232,59,2,NULL),(2192,74,73,2,NULL),(2193,234,59,2,NULL),(2194,65,36,2,NULL),(2195,78,73,2,NULL),(2196,232,61,2,NULL),(2197,76,36,2,NULL),(2198,74,54,2,NULL),(2199,234,61,2,NULL),(2200,79,36,2,NULL),(2201,78,54,2,NULL),(2202,232,74,2,NULL),(2203,210,36,2,NULL),(2204,74,59,2,NULL),(2205,69,36,2,NULL),(2206,234,74,2,NULL),(2207,78,59,2,NULL),(2208,232,75,2,NULL),(2209,120,36,2,NULL),(2210,74,61,2,NULL),(2211,234,75,2,NULL),(2212,78,61,2,NULL),(2213,232,76,2,NULL),(2214,47,36,2,NULL),(2215,74,74,2,NULL),(2216,234,76,2,NULL),(2217,78,74,2,NULL),(2218,180,36,2,NULL),(2219,209,55,2,NULL),(2220,74,75,2,NULL),(2221,184,36,2,NULL),(2222,259,55,2,NULL),(2223,78,75,2,NULL),(2224,235,36,2,NULL),(2225,144,54,2,NULL),(2226,74,76,2,NULL),(2227,63,54,2,NULL),(2228,236,36,2,NULL),(2229,78,76,2,NULL),(2230,65,54,2,NULL),(2231,39,20,2,NULL),(2232,161,47,2,NULL),(2233,76,54,2,NULL),(2234,120,5,2,NULL),(2235,47,5,2,NULL),(2236,120,8,2,NULL),(2237,79,54,2,NULL),(2238,47,8,2,NULL),(2239,210,54,2,NULL),(2240,120,11,2,NULL),(2241,47,11,2,NULL),(2242,69,54,2,NULL),(2243,120,13,2,NULL),(2244,47,13,2,NULL),(2245,120,15,2,NULL),(2246,120,54,2,NULL),(2247,47,15,2,NULL),(2248,120,21,2,NULL),(2249,47,54,2,NULL),(2250,47,21,2,NULL),(2251,120,26,2,NULL),(2252,180,54,2,NULL),(2253,47,26,2,NULL),(2254,120,33,2,NULL),(2255,184,54,2,NULL),(2256,47,33,2,NULL),(2257,120,39,2,NULL),(2258,235,54,2,NULL),(2259,47,39,2,NULL),(2260,236,54,2,NULL),(2261,120,42,2,NULL),(2262,47,42,2,NULL),(2263,120,44,2,NULL),(2264,169,48,2,NULL),(2265,47,44,2,NULL),(2266,231,48,2,NULL),(2267,120,47,2,NULL),(2268,47,47,2,NULL),(2269,120,49,2,NULL),(2270,251,48,2,NULL),(2271,47,49,2,NULL),(2272,256,48,2,NULL),(2273,120,71,2,NULL),(2274,47,71,2,NULL),(2275,180,5,2,NULL),(2276,120,72,2,NULL),(2277,47,72,2,NULL),(2278,184,5,2,NULL),(2279,120,73,2,NULL),(2280,47,73,2,NULL),(2281,235,5,2,NULL),(2282,120,59,2,NULL),(2283,47,59,2,NULL),(2284,120,61,2,NULL),(2285,236,5,2,NULL),(2286,47,61,2,NULL),(2287,180,8,2,NULL),(2288,120,74,2,NULL),(2289,47,74,2,NULL),(2290,184,8,2,NULL),(2291,120,75,2,NULL),(2292,47,75,2,NULL),(2293,235,8,2,NULL),(2294,120,76,2,NULL),(2295,47,76,2,NULL),(2296,236,8,2,NULL),(2297,144,42,2,NULL),(2298,144,47,2,NULL),(2299,63,42,2,NULL),(2300,180,11,2,NULL),(2301,63,47,2,NULL),(2302,65,42,2,NULL),(2303,184,11,2,NULL),(2304,65,47,2,NULL),(2305,235,11,2,NULL),(2306,76,42,2,NULL),(2307,76,47,2,NULL),(2308,236,11,2,NULL),(2309,79,42,2,NULL),(2310,79,47,2,NULL),(2311,180,13,2,NULL),(2312,210,42,2,NULL),(2313,210,47,2,NULL),(2314,184,13,2,NULL),(2315,69,42,2,NULL),(2316,69,47,2,NULL),(2317,235,13,2,NULL),(2318,180,42,2,NULL),(2319,180,47,2,NULL),(2320,236,13,2,NULL),(2321,184,47,2,NULL),(2322,184,42,2,NULL),(2323,180,15,2,NULL),(2324,235,47,2,NULL),(2325,235,42,2,NULL),(2326,184,15,2,NULL),(2327,236,42,2,NULL),(2328,236,47,2,NULL),(2329,235,15,2,NULL),(2330,22,42,2,NULL),(2331,40,47,2,NULL),(2332,236,15,2,NULL),(2333,42,47,2,NULL),(2334,119,42,2,NULL),(2335,180,21,2,NULL),(2336,60,47,2,NULL),(2337,170,42,2,NULL),(2338,184,21,2,NULL),(2339,114,47,2,NULL),(2340,144,44,2,NULL),(2341,235,21,2,NULL),(2342,63,44,2,NULL),(2343,117,47,2,NULL),(2344,236,21,2,NULL),(2345,65,44,2,NULL),(2346,144,49,2,NULL),(2347,180,26,2,NULL),(2348,63,49,2,NULL),(2349,76,44,2,NULL),(2350,184,26,2,NULL),(2351,65,49,2,NULL),(2352,79,44,2,NULL),(2353,235,26,2,NULL),(2354,76,49,2,NULL),(2355,210,44,2,NULL),(2356,236,26,2,NULL),(2357,69,44,2,NULL),(2358,79,49,2,NULL),(2359,180,33,2,NULL),(2360,210,49,2,NULL),(2361,184,33,2,NULL),(2362,180,44,2,NULL),(2363,69,49,2,NULL),(2364,235,33,2,NULL),(2365,184,44,2,NULL),(2366,236,33,2,NULL),(2367,235,44,2,NULL),(2368,180,49,2,NULL),(2369,180,39,2,NULL),(2370,184,49,2,NULL),(2371,236,44,2,NULL),(2372,184,39,2,NULL),(2373,235,49,2,NULL),(2374,235,39,2,NULL),(2375,236,49,2,NULL),(2376,236,39,2,NULL),(2377,144,71,2,NULL),(2378,63,71,2,NULL),(2379,180,71,2,NULL),(2380,65,71,2,NULL),(2381,184,71,2,NULL),(2382,76,71,2,NULL),(2383,235,71,2,NULL),(2384,79,71,2,NULL),(2385,236,71,2,NULL),(2386,210,71,2,NULL),(2387,180,72,2,NULL),(2388,69,71,2,NULL),(2389,184,72,2,NULL),(2390,235,72,2,NULL),(2391,144,72,2,NULL),(2392,236,72,2,NULL),(2393,63,72,2,NULL),(2394,180,73,2,NULL),(2395,65,72,2,NULL),(2396,184,73,2,NULL),(2397,76,72,2,NULL),(2398,235,73,2,NULL),(2399,79,72,2,NULL),(2400,236,73,2,NULL),(2401,210,72,2,NULL),(2402,180,59,2,NULL),(2403,69,72,2,NULL),(2404,184,59,2,NULL),(2405,235,59,2,NULL),(2406,144,73,2,NULL),(2407,236,59,2,NULL),(2408,63,73,2,NULL),(2409,180,61,2,NULL),(2410,65,73,2,NULL),(2411,184,61,2,NULL),(2412,76,73,2,NULL),(2413,235,61,2,NULL),(2414,79,73,2,NULL),(2415,236,61,2,NULL),(2416,210,73,2,NULL),(2417,180,74,2,NULL),(2418,69,73,2,NULL),(2419,184,74,2,NULL),(2420,235,74,2,NULL),(2421,236,74,2,NULL),(2422,180,75,2,NULL),(2423,184,75,2,NULL),(2424,235,75,2,NULL),(2425,236,75,2,NULL),(2426,180,76,2,NULL),(2427,184,76,2,NULL),(2428,235,76,2,NULL),(2429,236,76,2,NULL),(2430,144,59,2,NULL),(2431,63,59,2,NULL),(2432,65,59,2,NULL),(2433,76,59,2,NULL),(2434,79,59,2,NULL),(2435,210,59,2,NULL),(2436,69,59,2,NULL),(2437,173,56,2,NULL),(2438,144,61,2,NULL),(2439,63,61,2,NULL),(2440,65,61,2,NULL),(2441,76,61,2,NULL),(2442,79,61,2,NULL),(2443,210,61,2,NULL),(2444,69,61,2,NULL),(2445,144,74,2,NULL),(2446,63,74,2,NULL),(2447,65,74,2,NULL),(2448,76,74,2,NULL),(2449,79,74,2,NULL),(2450,210,74,2,NULL),(2451,69,74,2,NULL),(2452,144,75,2,NULL),(2453,63,75,2,NULL),(2454,65,75,2,NULL),(2455,76,75,2,NULL),(2456,79,75,2,NULL),(2457,210,75,2,NULL),(2458,69,75,2,NULL),(2459,144,76,2,NULL),(2460,63,76,2,NULL),(2461,65,76,2,NULL),(2462,76,76,2,NULL),(2463,79,76,2,NULL),(2464,210,76,2,NULL),(2465,69,76,2,NULL),(2466,167,33,2,NULL),(2467,171,33,2,NULL),(2468,196,33,2,NULL),(2469,107,33,2,NULL),(2470,115,33,2,NULL),(2471,118,33,2,NULL),(2472,32,1,2,NULL),(2473,126,13,2,NULL),(2474,144,5,2,NULL),(2475,144,8,2,NULL),(2476,144,11,2,NULL),(2477,144,13,2,NULL),(2478,144,15,2,NULL),(2479,144,21,2,NULL),(2480,144,26,2,NULL),(2481,144,33,2,NULL),(2482,144,39,2,NULL),(2483,111,33,2,NULL),(2484,174,13,2,NULL),(2485,63,5,2,NULL),(2486,65,5,2,NULL),(2487,76,5,2,NULL),(2488,79,5,2,NULL),(2489,210,5,2,NULL),(2490,69,5,2,NULL),(2491,50,13,2,NULL),(2492,103,33,2,NULL),(2493,63,8,2,NULL),(2494,65,8,2,NULL),(2495,76,8,2,NULL),(2496,79,8,2,NULL),(2497,210,8,2,NULL),(2498,69,8,2,NULL),(2499,101,33,2,NULL),(2500,63,11,2,NULL),(2501,65,11,2,NULL),(2502,76,11,2,NULL),(2503,79,11,2,NULL),(2504,210,11,2,NULL),(2505,69,11,2,NULL),(2506,73,33,2,NULL),(2507,83,1,2,NULL),(2508,149,1,2,NULL),(2509,202,1,2,NULL),(2510,63,13,2,NULL),(2511,65,13,2,NULL),(2512,76,13,2,NULL),(2513,79,13,2,NULL),(2514,210,13,2,NULL),(2515,69,13,2,NULL),(2516,14,13,2,NULL),(2517,76,15,2,NULL),(2518,79,15,2,NULL),(2519,210,15,2,NULL),(2520,63,21,2,NULL),(2521,65,21,2,NULL),(2522,63,26,2,NULL),(2523,65,26,2,NULL),(2524,69,15,2,NULL),(2525,63,33,2,NULL),(2526,65,33,2,NULL),(2527,63,39,2,NULL),(2528,65,39,2,NULL),(2529,45,18,2,NULL),(2530,88,13,2,NULL),(2531,76,21,2,NULL),(2532,79,21,2,NULL),(2533,210,21,2,NULL),(2534,76,26,2,NULL),(2535,79,26,2,NULL),(2536,210,26,2,NULL),(2537,76,33,2,NULL),(2538,79,33,2,NULL),(2539,210,33,2,NULL),(2540,76,39,2,NULL),(2541,79,39,2,NULL),(2542,210,39,2,NULL),(2543,69,21,2,NULL),(2544,35,33,2,NULL),(2545,38,33,2,NULL),(2546,41,33,2,NULL),(2547,69,26,2,NULL),(2548,140,13,2,NULL),(2549,69,33,2,NULL),(2550,69,39,2,NULL),(2551,121,33,2,NULL),(2552,147,33,2,NULL),(2553,208,33,2,NULL);
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

-- Dump completed on 2015-10-12  3:30:26
