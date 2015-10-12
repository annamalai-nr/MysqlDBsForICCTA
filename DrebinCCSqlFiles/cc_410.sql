-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_410
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (19,'(.*)'),(20,'.ImageTestActivity'),(13,'.Myhall'),(7,'.PintuActivity'),(15,'.Web'),(3,'android.intent.action.BOOT_COMPLETED'),(25,'android.intent.action.DELETE'),(27,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(10,'android.intent.action.PACKAGE_ADDED'),(8,'android.intent.action.PACKAGE_REMOVED'),(22,'android.intent.action.SCREEN_OFF'),(2,'android.intent.action.USER_PRESENT'),(5,'android.intent.action.VIEW'),(28,'com.android.music.musicservicecommand'),(4,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(9,'com.android_isogxyxhji.NGwwTWuQ1'),(6,'com.android_isogxyxhji.PintuActivity'),(11,'com.bjordkpw.fhebfpiph'),(12,'com.bjordkpw.fhebfpiph(.*)'),(24,'com.m_mxhldbp.GameBootReceiver'),(23,'com.m_mxhldbp.ImageTestActivity'),(18,'com.m_mxhldbp.Myhall'),(26,'com.m_mxhldbp.Web'),(17,'com.m_twmnpshx.GameBootReceiver'),(21,'com.m_twmnpshx.ImageTestActivity'),(14,'com.m_twmnpshx.Myhall'),(16,'com.m_twmnpshx.Web');
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
INSERT INTO `Applications` VALUES (1,'swt.ngmfpjkqjwist.cpmsswdf',10033),(2,'com.android_isogxyxhji',20009),(3,'com.m_mxhldbp',10019),(4,'com.m_twmnpshx',10020),(5,'com.bjordkpw.fhebfpiph',10027),(6,'qju.dqbsjsnhavt.dhve.ncbpcmiu',10033),(7,'com.kvnriucmer',10038);
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
INSERT INTO `CategoryStrings` VALUES (6,'android.intent.category.BROWSABLE'),(2,'android.intent.category.DEFAULT'),(5,'android.intent.category.HOME'),(3,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(4,'android.intent.categroy.DEFUAULT');
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
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.unity3d.player.UnityPlayerActivity'),(2,1,'com.unity3d.player.UnitySoftInputActivity'),(3,1,'com.unity3d.player.UnityVideoPlayerActivity'),(4,1,'com.DAgeB.qsnCfjkBru'),(5,1,'com.DAgeB.akqlsUJkseCiE'),(6,1,'com.DAgeB.ntpDurIhbwNACpL'),(7,1,'com.DAgeB.phDWdatTa'),(8,1,'com.DAgeB.MsVNDlkAlpwabB'),(9,1,'com.DAgeB.QBgCWkoDesFPUg'),(10,1,'com.DAgeB.userPermissionReceiver'),(11,2,'com.android_isogxyxhji.PintuActivity'),(12,2,'com.android_isogxyxhji.NGwwTWuQ8'),(13,2,'com.android_isogxyxhji.NGwwTWuQ5'),(14,2,'com.android_isogxyxhji.NGwwTWuQ13'),(15,2,'com.android_isogxyxhji.NGwwTWuQ12'),(16,2,'com.android_isogxyxhji.NGwwTWuQ2'),(17,2,'com.android_isogxyxhji.NGwwTWuQ1'),(18,3,'com.m_mxhldbp.Myhall'),(19,5,'com.bjordkpw.fhebfpiph.Drummermt'),(20,3,'com.m_mxhldbp.Web'),(21,4,'com.m_twmnpshx.Myhall'),(22,3,'com.m_mxhldbp.HomeActivity'),(23,4,'com.m_twmnpshx.Web'),(24,6,'qju.dqbsjsnhavt.dhve.ncbpcmiu.MenuActivity'),(25,5,'com.cdQEB.wDcdTEsV'),(26,4,'com.m_twmnpshx.HomeActivity'),(27,3,'com.m_mxhldbp.SortActivity1'),(28,6,'qju.dqbsjsnhavt.dhve.ncbpcmiu.AdSplash'),(29,3,'com.m_mxhldbp.SortActivity2'),(30,4,'com.m_twmnpshx.SortActivity1'),(31,5,'com.cdQEB.sIHKcQcwVjF'),(32,6,'com.google.ads.AdActivity'),(33,4,'com.m_twmnpshx.SortActivity2'),(34,6,'qju.dqbsjsnhavt.dhve.ncbpcmiu.MainActivity'),(35,5,'com.cdQEB.MyAppInfo'),(36,3,'com.m_mxhldbp.SearchActivity'),(37,6,'qju.dqbsjsnhavt.dhve.ncbpcmiu.GameIntro'),(38,4,'com.m_twmnpshx.SearchActivity'),(39,5,'com.cdQEB.UJiDnIFIJS'),(40,6,'com.scoreloop.android.coreui.HighscoresActivity'),(41,3,'com.m_mxhldbp.ManagerActivity'),(42,6,'com.scoreloop.android.coreui.ProfileActivity'),(43,4,'com.m_twmnpshx.ManagerActivity'),(44,5,'com.cdQEB.HoVoqcapJR'),(45,6,'qju.dqbsjsnhavt.dhve.ncbpcmiu.Prefs'),(46,3,'com.m_mxhldbp.GameInfo'),(47,6,'qju.dqbsjsnhavt.dhve.ncbpcmiu.GameOver'),(48,4,'com.m_twmnpshx.GameInfo'),(49,5,'com.cdQEB.MyAppAlertDialog'),(50,6,'com.ptmtmKSR.qsnCfjkBru'),(51,3,'com.m_mxhldbp.TableClass'),(52,5,'com.cdQEB.KdlOUSfDBLQK'),(53,4,'com.m_twmnpshx.TableClass'),(54,5,'com.cdQEB.MyAppService'),(55,3,'com.m_mxhldbp.GameAlertDialog'),(56,6,'com.ptmtmKSR.akqlsUJkseCiE'),(57,4,'com.m_twmnpshx.GameAlertDialog'),(58,3,'com.m_mxhldbp.DevelopmentSettings'),(59,6,'com.ptmtmKSR.ntpDurIhbwNACpL'),(60,4,'com.m_twmnpshx.DevelopmentSettings'),(61,6,'com.ptmtmKSR.phDWdatTa'),(62,5,'com.cdQEB.BootReceiverService'),(63,6,'com.ptmtmKSR.MsVNDlkAlpwabB'),(64,3,'com.m_mxhldbp.image.ImageTestActivity'),(65,4,'com.m_twmnpshx.image.ImageTestActivity'),(66,6,'com.ptmtmKSR.QBgCWkoDesFPUg'),(67,6,'com.ptmtmKSR.userPermissionReceiver'),(68,3,'com.m_mxhldbp.image.ADactivity'),(69,4,'com.m_twmnpshx.image.ADactivity'),(70,3,'com.m_mxhldbp.GameService'),(71,4,'com.m_twmnpshx.GameService'),(72,3,'com.m_mxhldbp.GameBootReceiver'),(73,4,'com.m_twmnpshx.GameBootReceiver'),(74,1,'com.DAgeB.ad'),(75,1,'com.DAgeB.j'),(76,1,'com.DAgeB.ab'),(77,2,'t'),(78,2,'o'),(79,5,'com.cdQEB.ab'),(80,5,'com.cdQEB.ae'),(81,4,'dj'),(82,3,'cs'),(83,4,'dh'),(84,3,'ci'),(85,4,'j'),(86,3,'y'),(87,2,'s'),(88,3,'dw'),(89,3,'du'),(90,6,'qju.dqbsjsnhavt.dhve.ncbpcmiu.k'),(91,4,'ca'),(92,3,'bb'),(93,5,'com.cdQEB.ak'),(94,3,'bk'),(95,4,'bq'),(96,5,'com.cdQEB.by'),(97,6,'qju.dqbsjsnhavt.dhve.ncbpcmiu.g'),(98,5,'com.cdQEB.bx'),(99,3,'dd'),(100,6,'com.ptmtmKSR.ad'),(101,3,'dv'),(102,4,'o'),(103,5,'com.cdQEB.aa'),(104,3,'cv'),(105,6,'qju.dqbsjsnhavt.dhve.ncbpcmiu.h'),(106,6,'com.ptmtmKSR.ab'),(107,5,'com.cdQEB.bh'),(108,3,'ab'),(109,4,'dg'),(110,5,'com.cdQEB.ah'),(111,6,'com.ptmtmKSR.j'),(112,4,'af'),(113,4,'bo'),(114,4,'ai'),(115,4,'t'),(116,7,'com.kvnriucmer.LocalImage'),(117,7,'net.youmi.android.AdActivity'),(118,7,'cn.domob.android.ads.DomobActivity'),(119,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(120,7,'com.vpon.adon.android.WebInApp'),(121,7,'com.google.ads.AdActivity'),(122,7,'com.adchina.android.ads.views.AdBrowserView'),(123,7,'com.greystripe.android.sdk.AdView'),(124,7,'com.mdotm.android.ads.MdotmLandingPage'),(125,7,'com.millennialmedia.android.MMAdViewOverlayActivity'),(126,7,'com.millennialmedia.android.VideoPlayer'),(127,7,'com.gObGNP.TacUDekenMNC'),(128,7,'com.gObGNP.EfhCdluTkvoEsa'),(129,7,'com.gObGNP.QGaMmrUhd'),(130,7,'com.gObGNP.BDoWuFdqIfmVo'),(131,7,'com.gObGNP.tSppnJTqPh'),(132,7,'com.gObGNP.GUwsUhEcKB'),(133,7,'com.gObGNP.userPermissionReceiver'),(134,7,'com.greystripe.android.sdk.AdContentProvider'),(135,7,'cn.domob.android.ads.DomobAdManager'),(136,7,'com.gObGNP.ad'),(137,7,'cn.domob.android.ads.i$6'),(138,7,'cn.domob.android.ads.DomobAdEngine$2'),(139,7,'com.gObGNP.ae'),(140,7,'com.millennialmedia.android.MillennialMediaView'),(141,7,'cn.domob.android.ads.i'),(142,7,'cn.domob.android.ads.DomobActionReceiver'),(143,7,'com.gObGNP.ah');
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
) ENGINE=InnoDB AUTO_INCREMENT=242 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,3,'fileName'),(2,3,'scalingMode'),(3,3,'backgroundColor'),(4,6,'detailFlag'),(5,6,'apkInfo'),(6,6,'apkSize'),(7,9,'fileName'),(8,2,'initialText'),(9,6,'apkTitle'),(10,3,'screenOrientation'),(11,6,'apkSoftID'),(12,8,'packageName'),(13,6,'iconURL'),(14,9,'fileURL'),(15,8,'fileURL'),(16,3,'controlMode'),(17,3,'isURL'),(18,4,'np_app_key'),(19,6,'np_app_key'),(20,9,'np_app_key'),(21,5,'np_app_key'),(22,7,'np_app_key'),(23,6,'packageName'),(24,6,'apkURL'),(25,6,'imageURL'),(26,6,'apkVersion'),(27,15,'content'),(28,16,'service_channel'),(29,15,'fromtable'),(30,12,'from_table'),(31,12,'from_alert'),(32,15,'apk_url'),(33,15,'btn_txt'),(34,15,'url'),(35,52,'au'),(36,45,'isDirectFromTable'),(37,52,'ctt'),(38,14,'isDirectFromTable'),(39,12,'fromtype'),(40,35,'ft'),(41,12,'title'),(42,35,'tt'),(43,12,'status'),(44,46,'title'),(45,14,'from'),(46,41,'icon'),(47,46,'fromtype'),(48,41,'completed'),(49,43,'icon'),(50,49,'tt'),(51,41,'soft_id'),(52,41,'app_name'),(53,57,'apk_url'),(54,43,'completed'),(55,41,'package_name'),(56,18,'service_channel'),(57,15,'version_code'),(58,20,'service_channel'),(59,64,'service_channel'),(60,43,'soft_id'),(61,41,'total'),(62,49,'ftb'),(63,55,'package_name'),(64,57,'title'),(65,43,'status'),(66,65,'service_channel'),(67,21,'service_channel'),(68,22,'service_channel'),(69,35,'st'),(70,33,'nextclassid'),(71,54,'TEST_APP_ID'),(72,43,'total'),(73,35,''),(74,48,'title'),(75,46,'from_alert'),(76,35,'(.*)'),(77,52,'tt'),(78,24,'TEST_APP_ID'),(79,11,'service_channel'),(80,12,'filepath'),(81,49,'bt'),(82,15,'title'),(83,15,'package_name'),(84,46,'from_table'),(85,31,'action'),(86,56,'np_app_key'),(87,61,'np_app_key'),(88,59,'np_app_key'),(89,66,'np_app_key'),(90,50,'np_app_key'),(91,12,'game'),(92,71,'service_channel'),(93,70,'service_channel'),(94,45,''),(95,45,'(.*)'),(96,35,'fa'),(97,24,''),(98,24,'(.*)'),(99,49,''),(100,49,'(.*)'),(101,55,'title'),(102,55,'btn_txt'),(103,41,'status'),(104,43,'package_name'),(105,29,'nextclassid'),(106,59,'apkInfo'),(107,43,'url'),(108,31,'params'),(109,18,'nextclassid'),(110,49,'ctt'),(111,57,'content'),(112,48,'filepath'),(113,57,'btn_txt'),(114,41,'filepath'),(115,29,'status'),(116,43,'filepath'),(117,43,'app_name'),(118,24,'si'),(119,49,'ul'),(120,29,'package_name'),(121,35,'fp'),(122,59,'iconURL'),(123,57,'url'),(124,47,'score'),(125,59,'imageURL'),(126,66,'fileName'),(127,59,'packageName'),(128,31,'com.google.ads.AdOpener'),(129,59,'apkSoftID'),(130,66,'fileURL'),(131,59,'detailFlag'),(132,41,'url'),(133,55,'apk_url'),(134,55,'content'),(135,36,'status'),(136,36,'package_name'),(137,45,'from'),(138,38,'package_name'),(139,32,'TEST_APP_ID'),(140,59,'apkTitle'),(141,59,'apkSize'),(142,46,'filepath'),(143,48,'game'),(144,59,'apkVersion'),(145,32,'poptitle'),(146,21,'nextclassid'),(147,52,'pn'),(148,63,'packageName'),(149,47,'killnum'),(150,59,'apkURL'),(151,38,'version_code'),(152,63,'fileURL'),(153,32,'popurl'),(154,57,'package_name'),(155,46,'status'),(156,55,'url'),(157,55,'version_code'),(158,36,'version_code'),(159,48,'from_table'),(160,33,'status'),(161,48,'from_alert'),(162,57,'version_code'),(163,48,'status'),(164,33,'package_name'),(165,38,'status'),(166,46,'game'),(167,48,'fromtype'),(168,85,'overlayTitle'),(169,89,'apkSize'),(170,83,'stdActions'),(171,84,'bStrLandingPage'),(172,88,'DOMOB_TEST_MODE'),(173,86,'DOMOB_TEST_MODE'),(174,85,'DOMOB_TEST_MODE'),(175,79,'DOMOB_TEST_MODE'),(176,77,'DOMOB_TEST_MODE'),(177,79,'shouldEnableBottomBar'),(178,85,'shouldMakeOverlayTransparent'),(179,85,'canAccelerate'),(180,79,'overlayTransition'),(181,85,'shouldResizeOverlay'),(182,78,'appName'),(183,92,'fileURL'),(184,79,'overlayTitle'),(185,78,'appId'),(186,85,'transitionTime'),(187,85,'overlayTransition'),(188,88,'DOMOB_ALLOW_LOCATION'),(189,86,'DOMOB_ALLOW_LOCATION'),(190,85,'DOMOB_ALLOW_LOCATION'),(191,79,'DOMOB_ALLOW_LOCATION'),(192,77,'DOMOB_ALLOW_LOCATION'),(193,91,'packageName'),(194,81,'com.google.ads.AdOpener'),(195,85,'shouldEnableBottomBar'),(196,85,'shouldShowBottomBar'),(197,79,'shouldResizeOverlay'),(198,89,'detailFlag'),(199,81,'params'),(200,86,'videoCompleted'),(201,92,'fileName'),(202,89,'apkVersion'),(203,78,'actType'),(204,81,'action'),(205,79,'url'),(206,88,'np_app_key'),(207,89,'np_app_key'),(208,92,'np_app_key'),(209,87,'np_app_key'),(210,90,'np_app_key'),(211,79,'shouldShowBottomBar'),(212,86,'shouldShowBottomBar'),(213,86,'videoAd'),(214,79,'transitionTime'),(215,89,'iconURL'),(216,86,'logSet'),(217,86,'isCachedAd'),(218,79,'shouldMakeOverlayTransparent'),(219,91,'fileURL'),(220,86,'videoPosition'),(221,86,'cached'),(222,85,'shouldShowTitlebar'),(223,80,'adWidth'),(224,82,'browserurl'),(225,89,'apkInfo'),(226,89,'imageURL'),(227,83,'spinnerMsg'),(228,80,'url'),(229,89,'apkTitle'),(230,86,'adName'),(231,89,'apkSoftID'),(232,79,'shouldShowTitlebar'),(233,88,'DOMOB_PID'),(234,86,'DOMOB_PID'),(235,85,'DOMOB_PID'),(236,79,'DOMOB_PID'),(237,77,'DOMOB_PID'),(238,89,'apkURL'),(239,89,'packageName'),(240,77,'A7D1721B9508405D8271AB82AC6D9B3C'),(241,85,'cachedAdView');
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
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'s',0,NULL,NULL),(8,8,'s',0,NULL,NULL),(9,9,'r',0,NULL,NULL),(10,10,'r',1,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'s',1,NULL,NULL),(17,17,'r',1,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,23,'a',0,NULL,NULL),(23,22,'a',0,NULL,NULL),(24,25,'a',1,NULL,NULL),(25,24,'a',1,NULL,NULL),(26,27,'a',0,NULL,NULL),(27,26,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,32,'a',0,NULL,NULL),(32,31,'a',0,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',1,NULL,NULL),(36,36,'a',1,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',1,NULL,NULL),(39,40,'a',0,NULL,NULL),(40,39,'a',1,NULL,NULL),(41,41,'a',1,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',1,NULL,NULL),(44,45,'a',0,NULL,NULL),(45,44,'a',1,NULL,NULL),(46,46,'a',1,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',1,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',1,NULL,NULL),(51,51,'a',1,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',1,NULL,NULL),(54,54,'s',1,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',1,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',1,NULL,NULL),(61,61,'s',0,NULL,NULL),(62,62,'r',1,NULL,NULL),(63,63,'s',0,NULL,NULL),(64,64,'a',1,NULL,NULL),(65,65,'a',1,NULL,NULL),(66,66,'r',0,NULL,NULL),(67,67,'r',1,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'s',1,NULL,NULL),(71,71,'s',1,NULL,NULL),(72,72,'r',1,NULL,NULL),(73,73,'r',1,NULL,NULL),(74,93,'r',1,NULL,NULL),(75,110,'r',1,NULL,NULL),(76,116,'a',1,NULL,NULL),(77,117,'a',0,NULL,NULL),(78,118,'a',0,NULL,NULL),(79,119,'a',0,NULL,NULL),(80,120,'a',0,NULL,NULL),(81,121,'a',0,NULL,NULL),(82,122,'a',0,NULL,NULL),(83,123,'a',1,NULL,NULL),(84,124,'a',1,NULL,NULL),(85,125,'a',0,NULL,NULL),(86,126,'a',0,NULL,NULL),(87,127,'a',1,NULL,NULL),(88,128,'a',0,NULL,NULL),(89,129,'a',0,NULL,NULL),(90,130,'s',0,NULL,NULL),(91,131,'s',0,NULL,NULL),(92,132,'r',0,NULL,NULL),(93,133,'r',1,NULL,NULL),(94,134,'p',0,NULL,NULL),(95,142,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=270 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,10),(2,2,4),(3,3,5),(4,3,6),(5,4,5),(6,4,6),(7,5,5),(8,6,4),(9,7,4),(10,8,5),(11,9,4),(12,10,5),(13,11,5),(14,12,6),(15,13,12),(16,14,9),(17,15,11),(18,16,8),(19,17,12),(20,18,12),(21,19,15),(22,20,17),(23,21,11),(24,22,12),(25,23,15),(26,24,17),(27,25,12),(28,26,12),(29,27,35),(30,28,12),(31,29,52),(32,30,32),(33,31,35),(34,32,55),(35,33,15),(36,34,35),(37,35,33),(38,36,15),(39,37,23),(40,38,57),(41,39,13),(42,40,36),(43,41,33),(44,42,35),(45,43,12),(46,44,46),(47,45,69),(48,46,17),(49,47,55),(50,47,51),(51,48,57),(52,48,53),(53,49,13),(54,50,62),(55,52,53),(56,52,57),(57,51,18),(58,53,18),(59,54,12),(60,55,24),(61,56,65),(62,57,20),(63,58,27),(64,59,41),(65,60,24),(66,61,33),(67,62,15),(68,62,14),(69,62,13),(70,63,52),(71,64,29),(72,65,12),(73,66,35),(74,67,21),(75,68,28),(76,68,56),(77,69,12),(78,70,55),(79,71,29),(80,72,22),(81,73,25),(82,73,56),(83,74,12),(84,75,68),(85,76,38),(86,77,13),(87,77,14),(88,77,15),(89,78,51),(90,79,33),(91,80,35),(92,81,59),(93,82,22),(94,83,64),(95,84,66),(96,85,29),(97,86,21),(98,87,49),(99,88,23),(100,89,56),(101,89,39),(102,90,21),(103,91,24),(104,92,56),(105,92,28),(106,93,73),(107,94,18),(108,95,24),(109,96,73),(110,97,62),(111,98,31),(112,99,23),(113,100,49),(114,101,53),(115,102,20),(116,103,45),(117,103,40),(118,103,49),(119,104,67),(120,105,33),(121,106,64),(122,107,40),(123,108,50),(124,109,29),(125,110,27),(126,111,59),(127,111,56),(128,112,35),(129,113,46),(130,114,22),(131,115,50),(132,116,33),(133,117,56),(134,117,37),(135,118,48),(136,119,62),(137,120,56),(138,121,27),(139,122,46),(140,123,56),(141,123,28),(142,124,35),(143,125,57),(144,126,35),(145,127,73),(146,128,56),(147,129,55),(148,130,27),(149,131,25),(150,131,56),(151,132,38),(152,133,50),(153,134,29),(154,135,24),(155,136,25),(156,136,56),(157,137,21),(158,138,23),(159,139,49),(160,139,45),(161,139,40),(162,140,65),(163,141,56),(164,141,47),(165,142,18),(166,143,63),(167,144,48),(168,145,68),(169,146,56),(170,146,59),(171,147,41),(172,148,40),(173,149,18),(174,150,56),(175,151,53),(176,152,18),(177,153,56),(178,154,64),(179,155,27),(180,156,50),(181,157,42),(182,158,43),(183,159,72),(184,160,69),(185,161,72),(186,162,41),(187,163,57),(188,164,46),(189,165,43),(190,166,68),(191,167,43),(192,168,23),(193,169,48),(194,170,23),(195,171,21),(196,172,55),(197,172,51),(198,173,57),(199,174,18),(200,175,29),(201,176,48),(202,177,72),(203,178,36),(204,179,51),(205,180,48),(206,181,21),(207,182,20),(208,183,27),(209,184,46),(210,185,21),(211,186,55),(212,187,65),(213,188,69),(214,189,86),(215,189,85),(216,189,88),(217,189,79),(218,189,77),(219,190,94),(220,191,86),(221,191,88),(222,192,82),(223,193,87),(224,194,79),(225,194,77),(226,194,86),(227,194,85),(228,195,81),(229,196,77),(230,196,79),(231,196,86),(232,196,85),(233,196,88),(234,197,88),(235,198,86),(236,198,88),(237,199,88),(238,199,89),(239,200,94),(240,201,91),(241,202,86),(242,202,88),(243,203,87),(244,204,88),(245,204,86),(246,205,88),(247,206,88),(248,206,86),(249,207,88),(250,208,92),(251,209,79),(252,209,77),(253,209,88),(254,209,85),(255,209,86),(256,210,87),(257,211,86),(258,211,88),(259,212,89),(260,212,88),(261,213,93),(262,214,94),(263,215,88),(264,216,86),(265,216,88),(266,217,86),(267,217,88),(268,218,89),(269,219,87);
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
) ENGINE=InnoDB AUTO_INCREMENT=220 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,74,'<com.DAgeB.ad: void run()>',25,'s',NULL),(2,4,'<com.DAgeB.qsnCfjkBru: void onCreate(android.os.Bundle)>',18,'a',NULL),(3,6,'<com.DAgeB.ntpDurIhbwNACpL: void a(com.DAgeB.ntpDurIhbwNACpL,android.content.Context,java.lang.String)>',5,'a',NULL),(4,75,'<com.DAgeB.j: void f(android.content.Context,java.lang.String)>',10,'a',NULL),(5,5,'<com.DAgeB.akqlsUJkseCiE: void a()>',3,'a',NULL),(6,76,'<com.DAgeB.ab: void run()>',8,'s',NULL),(7,4,'<com.DAgeB.qsnCfjkBru: void onCreate(android.os.Bundle)>',28,'a',0),(8,5,'<com.DAgeB.akqlsUJkseCiE: void onBackPressed()>',5,'a',NULL),(9,4,'<com.DAgeB.qsnCfjkBru: void onCreate(android.os.Bundle)>',33,'a',NULL),(10,5,'<com.DAgeB.akqlsUJkseCiE: void b()>',55,'a',NULL),(11,5,'<com.DAgeB.akqlsUJkseCiE: void b()>',45,'a',NULL),(12,6,'<com.DAgeB.ntpDurIhbwNACpL: void onCreate(android.os.Bundle)>',74,'a',NULL),(13,77,'<t: void onClick(android.view.View)>',242,'a',NULL),(14,9,'<com.DAgeB.QBgCWkoDesFPUg: void a(android.content.Context)>',76,'a',NULL),(15,11,'<com.android_isogxyxhji.PintuActivity: void onCreate(android.os.Bundle)>',82,'s',NULL),(16,8,'<com.DAgeB.MsVNDlkAlpwabB: void a(java.lang.String)>',10,'a',NULL),(17,12,'<com.android_isogxyxhji.NGwwTWuQ8: void onCreate(android.os.Bundle)>',172,'a',NULL),(18,78,'<o: void onClick(android.view.View)>',218,'a',NULL),(19,15,'<com.android_isogxyxhji.NGwwTWuQ12: void onClick(android.view.View)>',84,'a',NULL),(20,17,'<com.android_isogxyxhji.NGwwTWuQ1: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(21,11,'<com.android_isogxyxhji.PintuActivity: void onCreate(android.os.Bundle)>',86,'s',NULL),(22,12,'<com.android_isogxyxhji.NGwwTWuQ8: void onCreate(android.os.Bundle)>',33,'s',NULL),(23,15,'<com.android_isogxyxhji.NGwwTWuQ12: void onClick(android.view.View)>',75,'a',NULL),(24,17,'<com.android_isogxyxhji.NGwwTWuQ1: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(25,12,'<com.android_isogxyxhji.NGwwTWuQ8: void onCreate(android.os.Bundle)>',90,'s',NULL),(26,77,'<t: void onClick(android.view.View)>',221,'a',NULL),(27,79,'<com.cdQEB.ab: void onClick(android.view.View)>',200,'a',NULL),(28,78,'<o: void onClick(android.view.View)>',239,'a',NULL),(29,52,'<com.cdQEB.KdlOUSfDBLQK: void onCreate(android.os.Bundle)>',13,'s',NULL),(30,31,'<com.cdQEB.sIHKcQcwVjF: boolean onKeyDown(int,android.view.KeyEvent)>',5,'a',NULL),(31,35,'<com.cdQEB.MyAppInfo: void onCreate(android.os.Bundle)>',94,'s',NULL),(32,55,'<com.m_mxhldbp.GameAlertDialog: void onClick(android.view.View)>',77,'a',NULL),(33,15,'<com.android_isogxyxhji.NGwwTWuQ12: void onClick(android.view.View)>',53,'a',NULL),(34,80,'<com.cdQEB.ae: void onClick(android.view.View)>',197,'a',NULL),(35,81,'<dj: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(36,15,'<com.android_isogxyxhji.NGwwTWuQ12: void onClick(android.view.View)>',66,'a',NULL),(37,82,'<cs: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(38,57,'<com.m_twmnpshx.GameAlertDialog: void onClick(android.view.View)>',59,'a',NULL),(39,13,'<com.android_isogxyxhji.NGwwTWuQ5: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(40,36,'<com.m_mxhldbp.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(41,83,'<dh: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(42,79,'<com.cdQEB.ab: void onClick(android.view.View)>',185,'a',NULL),(43,12,'<com.android_isogxyxhji.NGwwTWuQ8: void onCreate(android.os.Bundle)>',76,'a',NULL),(44,46,'<com.m_mxhldbp.GameInfo: void onCreate(android.os.Bundle)>',108,'a',NULL),(45,69,'<com.m_twmnpshx.image.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',38,'a',NULL),(46,17,'<com.android_isogxyxhji.NGwwTWuQ1: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(47,84,'<ci: void a(int,boolean)>',10,'s',NULL),(48,85,'<j: void a(int,boolean)>',10,'s',NULL),(49,13,'<com.android_isogxyxhji.NGwwTWuQ5: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(50,62,'<com.cdQEB.BootReceiverService: void onReceive(android.content.Context,android.content.Intent)>',37,'s',NULL),(51,86,'<y: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(52,85,'<j: void a(int,boolean)>',57,'a',NULL),(53,86,'<y: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(54,87,'<s: void onClick(android.view.View)>',239,'a',NULL),(55,25,'<com.cdQEB.wDcdTEsV: void onCreate(android.os.Bundle)>',61,'s',NULL),(56,65,'<com.m_twmnpshx.image.ImageTestActivity: void onCreate(android.os.Bundle)>',54,'s',NULL),(57,20,'<com.m_mxhldbp.Web: void onCreate(android.os.Bundle)>',25,'s',NULL),(58,26,'<com.m_twmnpshx.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',33,'a',NULL),(59,88,'<dw: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(60,25,'<com.cdQEB.wDcdTEsV: void onCreate(android.os.Bundle)>',57,'s',NULL),(61,81,'<dj: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(62,14,'<com.android_isogxyxhji.NGwwTWuQ13: void a(int,boolean)>',63,'a',NULL),(63,52,'<com.cdQEB.KdlOUSfDBLQK: void onClick(android.view.View)>',26,'a',NULL),(64,89,'<du: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(65,12,'<com.android_isogxyxhji.NGwwTWuQ8: void onCreate(android.os.Bundle)>',177,'a',NULL),(66,80,'<com.cdQEB.ae: void onClick(android.view.View)>',182,'a',NULL),(67,21,'<com.m_twmnpshx.Myhall: void onCreate(android.os.Bundle)>',98,'s',NULL),(68,90,'<qju.dqbsjsnhavt.dhve.ncbpcmiu.k: void onClick(android.view.View)>',9,'a',NULL),(69,87,'<s: void onClick(android.view.View)>',218,'a',NULL),(70,55,'<com.m_mxhldbp.GameAlertDialog: void onClick(android.view.View)>',68,'a',NULL),(71,29,'<com.m_mxhldbp.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',28,'a',NULL),(72,91,'<ca: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(73,24,'<qju.dqbsjsnhavt.dhve.ncbpcmiu.MenuActivity: boolean onKeyDown(int,android.view.KeyEvent)>',6,'a',NULL),(74,12,'<com.android_isogxyxhji.NGwwTWuQ8: void onCreate(android.os.Bundle)>',81,'a',NULL),(75,92,'<bb: void onClick(android.view.View)>',6,'a',NULL),(76,38,'<com.m_twmnpshx.SearchActivity: void onCreate(android.os.Bundle)>',14,'s',NULL),(77,14,'<com.android_isogxyxhji.NGwwTWuQ13: void a(int,boolean)>',10,'s',NULL),(78,51,'<com.m_mxhldbp.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(79,33,'<com.m_twmnpshx.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',28,'a',NULL),(80,35,'<com.cdQEB.MyAppInfo: void onCreate(android.os.Bundle)>',11,'a',NULL),(81,59,'<com.ptmtmKSR.ntpDurIhbwNACpL: void onCreate(android.os.Bundle)>',74,'a',NULL),(82,23,'<com.m_twmnpshx.Web: void onCreate(android.os.Bundle)>',21,'s',NULL),(83,94,'<bk: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(84,66,'<com.ptmtmKSR.QBgCWkoDesFPUg: void a(android.content.Context)>',76,'a',NULL),(85,29,'<com.m_mxhldbp.SortActivity2: void onCreate(android.os.Bundle)>',13,'s',NULL),(86,21,'<com.m_twmnpshx.Myhall: void onCreate(android.os.Bundle)>',103,'s',NULL),(87,49,'<com.cdQEB.MyAppAlertDialog: void onClick(android.view.View)>',61,'a',NULL),(88,22,'<com.m_mxhldbp.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',33,'a',NULL),(89,40,'<com.scoreloop.android.coreui.HighscoresActivity: void a()>',3,'a',NULL),(90,95,'<bq: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(91,96,'<com.cdQEB.by: boolean onKey(android.content.DialogInterface,int,android.view.KeyEvent)>',16,'a',NULL),(92,97,'<qju.dqbsjsnhavt.dhve.ncbpcmiu.g: void onClick(android.view.View)>',8,'a',NULL),(93,73,'<com.m_twmnpshx.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(94,18,'<com.m_mxhldbp.Myhall: void onCreate(android.os.Bundle)>',98,'s',NULL),(95,98,'<com.cdQEB.bx: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(96,73,'<com.m_twmnpshx.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(97,62,'<com.cdQEB.BootReceiverService: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(98,32,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',82,'a',NULL),(99,82,'<cs: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(100,49,'<com.cdQEB.MyAppAlertDialog: void onClick(android.view.View)>',48,'a',NULL),(101,53,'<com.m_twmnpshx.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(102,99,'<dd: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(103,44,'<com.cdQEB.HoVoqcapJR: void a(int,boolean)>',10,'s',NULL),(104,100,'<com.ptmtmKSR.ad: void run()>',25,'s',NULL),(105,81,'<dj: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(106,64,'<com.m_mxhldbp.image.ImageTestActivity: void onCreate(android.os.Bundle)>',54,'s',NULL),(107,39,'<com.cdQEB.UJiDnIFIJS: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(108,50,'<com.ptmtmKSR.qsnCfjkBru: void onCreate(android.os.Bundle)>',33,'a',NULL),(109,101,'<dv: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(110,102,'<o: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(111,59,'<com.ptmtmKSR.ntpDurIhbwNACpL: void a(com.ptmtmKSR.ntpDurIhbwNACpL,android.content.Context,java.lang.String)>',5,'a',NULL),(112,103,'<com.cdQEB.aa: void onClick(android.view.View)>',197,'a',NULL),(113,104,'<cv: void onClick(android.view.View)>',218,'a',NULL),(114,23,'<com.m_twmnpshx.Web: void onCreate(android.os.Bundle)>',25,'s',NULL),(115,50,'<com.ptmtmKSR.qsnCfjkBru: void onCreate(android.os.Bundle)>',28,'a',0),(116,33,'<com.m_twmnpshx.SortActivity2: void onCreate(android.os.Bundle)>',13,'s',NULL),(117,37,'<qju.dqbsjsnhavt.dhve.ncbpcmiu.GameIntro: void onClick(android.view.View)>',11,'a',NULL),(118,48,'<com.m_twmnpshx.GameInfo: void onCreate(android.os.Bundle)>',108,'a',NULL),(119,62,'<com.cdQEB.BootReceiverService: void onReceive(android.content.Context,android.content.Intent)>',64,'s',NULL),(120,56,'<com.ptmtmKSR.akqlsUJkseCiE: void onBackPressed()>',5,'a',NULL),(121,26,'<com.m_twmnpshx.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',52,'a',NULL),(122,104,'<cv: void onClick(android.view.View)>',239,'a',NULL),(123,105,'<qju.dqbsjsnhavt.dhve.ncbpcmiu.h: void onClick(android.view.View)>',13,'a',NULL),(124,35,'<com.cdQEB.MyAppInfo: void onCreate(android.os.Bundle)>',44,'s',NULL),(125,57,'<com.m_twmnpshx.GameAlertDialog: void onClick(android.view.View)>',68,'a',NULL),(126,103,'<com.cdQEB.aa: void onClick(android.view.View)>',182,'a',NULL),(127,73,'<com.m_twmnpshx.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(128,56,'<com.ptmtmKSR.akqlsUJkseCiE: void b()>',45,'a',NULL),(129,55,'<com.m_mxhldbp.GameAlertDialog: void onClick(android.view.View)>',46,'a',NULL),(130,102,'<o: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(131,24,'<qju.dqbsjsnhavt.dhve.ncbpcmiu.MenuActivity: void onClick(android.view.View)>',28,'a',NULL),(132,38,'<com.m_twmnpshx.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(133,106,'<com.ptmtmKSR.ab: void run()>',8,'s',NULL),(134,101,'<dv: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(135,107,'<com.cdQEB.bh: void onClick(android.view.View)>',101,'a',NULL),(136,24,'<qju.dqbsjsnhavt.dhve.ncbpcmiu.MenuActivity: void onClick(android.view.View)>',6,'a',NULL),(137,95,'<bq: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(138,82,'<cs: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(139,44,'<com.cdQEB.HoVoqcapJR: void a(int,boolean)>',42,'a',NULL),(140,65,'<com.m_twmnpshx.image.ImageTestActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(141,47,'<qju.dqbsjsnhavt.dhve.ncbpcmiu.GameOver: void onClick(android.view.View)>',11,'a',NULL),(142,108,'<ab: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(143,63,'<com.ptmtmKSR.MsVNDlkAlpwabB: void a(java.lang.String)>',10,'a',NULL),(144,109,'<dg: void onClick(android.view.View)>',239,'a',NULL),(145,68,'<com.m_mxhldbp.image.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',26,'a',NULL),(146,111,'<com.ptmtmKSR.j: void f(android.content.Context,java.lang.String)>',10,'a',NULL),(147,41,'<com.m_mxhldbp.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(148,39,'<com.cdQEB.UJiDnIFIJS: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',72,'a',NULL),(149,86,'<y: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(150,56,'<com.ptmtmKSR.akqlsUJkseCiE: void b()>',55,'a',NULL),(151,53,'<com.m_twmnpshx.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(152,86,'<y: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(153,56,'<com.ptmtmKSR.akqlsUJkseCiE: void a()>',3,'a',NULL),(154,64,'<com.m_mxhldbp.image.ImageTestActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(155,102,'<o: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(156,50,'<com.ptmtmKSR.qsnCfjkBru: void onCreate(android.os.Bundle)>',18,'a',NULL),(157,42,'<com.scoreloop.android.coreui.ProfileActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',4,'a',NULL),(158,112,'<af: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(159,72,'<com.m_mxhldbp.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(160,69,'<com.m_twmnpshx.image.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',26,'a',NULL),(161,72,'<com.m_mxhldbp.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(162,88,'<dw: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(163,57,'<com.m_twmnpshx.GameAlertDialog: void onClick(android.view.View)>',77,'a',NULL),(164,46,'<com.m_mxhldbp.GameInfo: void onCreate(android.os.Bundle)>',113,'a',NULL),(165,112,'<af: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(166,68,'<com.m_mxhldbp.image.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',38,'a',NULL),(167,43,'<com.m_twmnpshx.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(168,22,'<com.m_mxhldbp.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',52,'a',NULL),(169,48,'<com.m_twmnpshx.GameInfo: void onCreate(android.os.Bundle)>',113,'a',NULL),(170,22,'<com.m_mxhldbp.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',43,'a',NULL),(171,95,'<bq: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(172,84,'<ci: void a(int,boolean)>',57,'a',NULL),(173,57,'<com.m_twmnpshx.GameAlertDialog: void onClick(android.view.View)>',46,'a',NULL),(174,18,'<com.m_mxhldbp.Myhall: void onCreate(android.os.Bundle)>',103,'s',NULL),(175,101,'<dv: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(176,109,'<dg: void onClick(android.view.View)>',218,'a',NULL),(177,72,'<com.m_mxhldbp.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(178,36,'<com.m_mxhldbp.SearchActivity: void onCreate(android.os.Bundle)>',14,'s',NULL),(179,51,'<com.m_mxhldbp.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(180,48,'<com.m_twmnpshx.GameInfo: void onCreate(android.os.Bundle)>',25,'s',NULL),(181,95,'<bq: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(182,20,'<com.m_mxhldbp.Web: void onCreate(android.os.Bundle)>',21,'s',NULL),(183,26,'<com.m_twmnpshx.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',43,'a',NULL),(184,46,'<com.m_mxhldbp.GameInfo: void onCreate(android.os.Bundle)>',25,'s',NULL),(185,113,'<bo: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(186,55,'<com.m_mxhldbp.GameAlertDialog: void onClick(android.view.View)>',59,'a',NULL),(187,114,'<ai: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(188,115,'<t: void onClick(android.view.View)>',6,'a',NULL),(189,135,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(190,134,'<com.greystripe.android.sdk.AdContentProvider: int update(android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',21,'p',0),(191,126,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',158,'a',NULL),(192,122,'<com.adchina.android.ads.views.AdBrowserView: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',12,'a',NULL),(193,136,'<com.gObGNP.ad: void run()>',8,'s',NULL),(194,137,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(195,121,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(196,138,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(197,128,'<com.gObGNP.EfhCdluTkvoEsa: void b()>',55,'a',NULL),(198,126,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',237,'a',NULL),(199,139,'<com.gObGNP.ae: void f(android.content.Context,java.lang.String)>',10,'a',NULL),(200,134,'<com.greystripe.android.sdk.AdContentProvider: android.net.Uri insert(android.net.Uri,android.content.ContentValues)>',18,'p',0),(201,131,'<com.gObGNP.tSppnJTqPh: void a(java.lang.String)>',10,'a',NULL),(202,126,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',209,'a',NULL),(203,127,'<com.gObGNP.TacUDekenMNC: void onCreate(android.os.Bundle)>',21,'a',NULL),(204,140,'<com.millennialmedia.android.MillennialMediaView: void openVideo()>',10,'r',NULL),(205,128,'<com.gObGNP.EfhCdluTkvoEsa: void b()>',45,'a',NULL),(206,126,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',229,'a',NULL),(207,128,'<com.gObGNP.EfhCdluTkvoEsa: void a()>',3,'a',NULL),(208,132,'<com.gObGNP.GUwsUhEcKB: void c(android.content.Context)>',74,'a',NULL),(209,141,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(210,127,'<com.gObGNP.TacUDekenMNC: void onCreate(android.os.Bundle)>',31,'a',0),(211,126,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',189,'a',NULL),(212,129,'<com.gObGNP.QGaMmrUhd: void a(com.gObGNP.QGaMmrUhd,android.content.Context,java.lang.String)>',5,'a',NULL),(213,143,'<com.gObGNP.ah: void run()>',25,'s',NULL),(214,134,'<com.greystripe.android.sdk.AdContentProvider: int delete(android.net.Uri,java.lang.String,java.lang.String[])>',20,'p',0),(215,128,'<com.gObGNP.EfhCdluTkvoEsa: void onBackPressed()>',5,'a',NULL),(216,126,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',218,'a',NULL),(217,126,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',181,'a',NULL),(218,129,'<com.gObGNP.QGaMmrUhd: void onCreate(android.os.Bundle)>',67,'a',NULL),(219,127,'<com.gObGNP.TacUDekenMNC: void onCreate(android.os.Bundle)>',36,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,3,1),(2,4,1),(3,5,5),(4,12,1),(5,13,1),(6,14,1),(7,15,1),(8,16,1),(9,18,1),(10,19,6),(11,20,5),(12,21,7),(13,23,5),(14,24,5),(15,26,9),(16,29,4),(17,32,5),(18,33,1),(19,34,5),(20,35,1),(21,36,1),(22,37,1),(23,38,1),(24,39,1),(25,41,1),(26,42,1),(27,47,1),(28,48,5),(29,49,5),(30,50,1),(31,51,5),(32,52,5),(33,53,5),(34,54,1),(35,55,5),(36,56,1),(37,60,5),(38,62,5),(39,64,5),(40,65,5),(41,66,9),(42,67,5),(43,70,1),(44,71,11),(45,72,1),(46,75,12),(47,77,1),(48,78,1),(49,82,1),(50,84,1),(51,85,1),(52,87,1),(53,90,1),(54,93,5),(55,94,13),(56,95,5),(57,96,5),(58,97,5),(59,98,14),(60,99,4),(61,100,5),(62,102,5),(63,103,5),(64,104,5),(65,105,5),(66,111,1),(67,113,1),(68,114,1),(69,115,1),(70,116,1),(71,117,1),(72,118,15),(73,119,5),(74,121,16),(75,124,5),(76,125,5),(77,130,5),(78,131,17),(79,132,18),(80,133,5),(81,135,13),(82,138,5),(83,141,19),(84,142,1),(85,143,1),(86,144,19),(87,145,5),(88,150,1),(89,152,1),(90,155,1),(91,156,1),(92,157,1),(93,158,5),(94,159,1),(95,161,1),(96,162,5),(97,163,1),(98,167,11),(99,169,12),(100,170,5),(101,171,1),(102,172,5),(103,173,1),(104,175,5),(105,176,1),(106,177,4),(107,178,5),(108,179,1),(109,180,17),(110,181,5),(111,183,5),(112,185,5),(113,187,5),(114,198,1),(115,199,20),(116,200,1),(117,202,21),(118,203,1),(119,204,5),(120,206,1),(121,205,5),(122,207,1),(123,209,1),(124,210,5),(125,211,1),(126,214,1),(127,222,20),(128,225,23),(129,227,1),(130,228,24),(131,229,1),(132,232,25),(133,235,25),(134,236,5),(135,238,5),(136,245,5),(137,246,5),(138,247,24),(139,248,5),(140,253,26),(141,255,15),(142,257,5),(143,258,5),(144,259,5),(145,260,5),(146,262,5),(147,263,5),(148,264,5),(149,266,5),(150,268,5),(151,269,5),(152,270,5),(153,271,5),(154,272,5),(155,273,19),(156,274,19),(157,276,5),(158,277,5),(159,278,5),(160,279,27),(161,281,28),(162,283,5),(163,286,5),(164,287,5),(165,288,1),(166,289,1),(167,294,1),(168,295,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,3,1),(2,4,3),(3,12,1),(4,13,1),(5,14,3),(6,15,3),(7,16,1),(8,18,3),(9,33,1),(10,35,3),(11,36,1),(12,37,1),(13,38,3),(14,39,3),(15,41,1),(16,42,3),(17,47,1),(18,50,3),(19,54,1),(20,56,3),(21,70,1),(22,72,3),(23,77,1),(24,78,3),(25,82,1),(26,84,3),(27,85,1),(28,87,3),(29,90,5),(30,111,1),(31,113,1),(32,114,1),(33,115,3),(34,116,3),(35,117,3),(36,142,1),(37,143,3),(38,150,1),(39,152,3),(40,155,1),(41,156,1),(42,157,3),(43,159,3),(44,161,1),(45,163,3),(46,171,1),(47,173,3),(48,176,1),(49,179,3),(50,198,1),(51,200,3),(52,203,1),(53,206,3),(54,207,1),(55,209,3),(56,211,1),(57,214,3),(58,227,1),(59,229,3),(60,288,1),(61,289,3),(62,294,1),(63,295,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/DAgeB/phDWdatTa'),(2,2,'com/DAgeB/akqlsUJkseCiE'),(3,6,'com/unity3d/player/UnityPlayerActivity'),(4,7,'com/DAgeB/phDWdatTa'),(5,8,'com/unity3d/player/UnityPlayerActivity'),(6,9,'com/DAgeB/akqlsUJkseCiE'),(7,10,'com/unity3d/player/UnityPlayerActivity'),(8,11,'com/unity3d/player/UnityPlayerActivity'),(9,17,'com/DAgeB/ntpDurIhbwNACpL'),(10,19,'com/android_isogxyxhji/NGwwTWuQ2'),(11,21,'com/android_isogxyxhji/NGwwTWuQ2'),(12,22,'com/android_isogxyxhji/PintuActivity'),(13,25,'com/android_isogxyxhji/NGwwTWuQ12'),(14,26,'com/android_isogxyxhji/NGwwTWuQ2'),(15,27,'com/android_isogxyxhji/NGwwTWuQ2'),(16,28,'com/android_isogxyxhji/NGwwTWuQ2'),(17,30,'com/android_isogxyxhji/NGwwTWuQ2'),(18,31,'com/android_isogxyxhji/NGwwTWuQ2'),(19,40,'com/cdQEB/MyAppService'),(20,43,'com/bjordkpw/fhebfpiph/Drummermt'),(21,44,'com/cdQEB/MyAppService'),(22,46,'com/android_isogxyxhji/NGwwTWuQ8'),(23,45,'com/m_mxhldbp/GameAlertDialog'),(24,57,'com/android_isogxyxhji/NGwwTWuQ8'),(25,58,'com/m_mxhldbp/GameInfo'),(26,61,'com/android_isogxyxhji/PintuActivity'),(27,59,'com/m_twmnpshx/Myhall'),(28,63,'com/m_mxhldbp/Myhall'),(29,66,'com/android_isogxyxhji/NGwwTWuQ2'),(30,68,'com/m_mxhldbp/GameService'),(31,69,'com/m_twmnpshx/GameService'),(32,71,'com/cdQEB/MyAppService'),(33,74,'com/m_twmnpshx/image/ImageTestActivity'),(34,73,'com/m_mxhldbp/Myhall'),(35,75,'com/cdQEB/MyAppService'),(36,76,'com/m_mxhldbp/Myhall'),(37,79,'com/cdQEB/MyAppService'),(38,80,'com/m_twmnpshx/GameService'),(39,81,'com/m_mxhldbp/GameService'),(40,83,'com/m_twmnpshx/GameInfo'),(41,86,'com/cdQEB/MyAppService'),(42,89,'com/android_isogxyxhji/PintuActivity'),(43,88,'com/m_twmnpshx/Myhall'),(44,92,'com/android_isogxyxhji/PintuActivity'),(45,91,'com/m_mxhldbp/Myhall'),(46,94,'com/m_twmnpshx/GameService'),(47,98,'com/m_twmnpshx/GameService'),(48,101,'com/m_mxhldbp/GameInfo'),(49,106,'qju/dqbsjsnhavt/dhve/ncbpcmiu/AdSplash'),(50,107,'com/android_isogxyxhji/PintuActivity'),(51,108,'com/m_mxhldbp/image/ImageTestActivity'),(52,109,'com/m_twmnpshx/GameService'),(53,110,'com/android_isogxyxhji/NGwwTWuQ2'),(54,112,'com/m_twmnpshx/GameInfo'),(55,118,'com/m_twmnpshx/GameService'),(56,121,'com/m_twmnpshx/GameService'),(57,122,'com/m_mxhldbp/GameService'),(58,123,'com/m_twmnpshx/GameService'),(59,120,'com/ptmtmKSR/ntpDurIhbwNACpL'),(60,127,'com/scoreloop/android/coreui/ProfileActivity'),(61,126,'com/m_mxhldbp/GameInfo'),(62,128,'com/m_twmnpshx/Myhall'),(63,129,'com/bjordkpw/fhebfpiph/Drummermt'),(64,131,'com/m_twmnpshx/GameService'),(65,132,'com/m_mxhldbp/GameService'),(66,134,'com/bjordkpw/fhebfpiph/Drummermt'),(67,135,'com/m_mxhldbp/GameService'),(68,136,'com/m_twmnpshx/GameService'),(69,137,'com/cdQEB/MyAppService'),(70,139,'com/m_mxhldbp/Myhall'),(71,140,'com/cdQEB/MyAppInfo'),(72,146,'com/cdQEB/MyAppService'),(73,147,'com/ptmtmKSR/phDWdatTa'),(74,148,'com/m_twmnpshx/GameInfo'),(75,149,'com/m_mxhldbp/GameService'),(76,151,'com/ptmtmKSR/akqlsUJkseCiE'),(77,153,'com/m_mxhldbp/GameInfo'),(78,154,'com/m_twmnpshx/Myhall'),(79,160,'com/m_twmnpshx/GameService'),(80,164,'com/m_twmnpshx/GameService'),(81,165,'qju/dqbsjsnhavt/dhve/ncbpcmiu/MainActivity'),(82,166,'com/m_twmnpshx/Myhall'),(83,167,'com/cdQEB/MyAppService'),(84,168,'qju/dqbsjsnhavt/dhve/ncbpcmiu/MenuActivity'),(85,169,'com/cdQEB/MyAppService'),(86,174,'com/cdQEB/MyAppService'),(87,180,'com/m_twmnpshx/GameService'),(88,182,'qju/dqbsjsnhavt/dhve/ncbpcmiu/MenuActivity'),(89,186,'qju/dqbsjsnhavt/dhve/ncbpcmiu/AdSplash'),(90,184,'com/m_mxhldbp/GameInfo'),(91,189,'com/ptmtmKSR/phDWdatTa'),(92,188,'com/m_twmnpshx/GameInfo'),(93,190,'com/m_mxhldbp/Myhall'),(94,191,'com/cdQEB/sIHKcQcwVjF'),(95,194,'com/scoreloop/android/coreui/HighscoresActivity'),(96,193,'com/m_twmnpshx/Myhall'),(97,196,'qju/dqbsjsnhavt/dhve/ncbpcmiu/Prefs'),(98,195,'com/m_mxhldbp/GameInfo'),(99,197,'qju/dqbsjsnhavt/dhve/ncbpcmiu/GameIntro'),(100,199,'com/m_twmnpshx/GameService'),(101,201,'qju/dqbsjsnhavt/dhve/ncbpcmiu/GameIntro'),(102,202,'com/m_twmnpshx/GameService'),(103,208,'com/m_mxhldbp/GameInfo'),(104,212,'com/m_mxhldbp/GameService'),(105,213,'com/cdQEB/MyAppInfo'),(106,216,'com/m_mxhldbp/Myhall'),(107,215,'com/cdQEB/MyAppInfo'),(108,217,'qju/dqbsjsnhavt/dhve/ncbpcmiu/MenuActivity'),(109,218,'com/cdQEB/MyAppInfo'),(110,220,'com/m_mxhldbp/Myhall'),(111,219,'com/m_twmnpshx/GameInfo'),(112,221,'qju/dqbsjsnhavt/dhve/ncbpcmiu/MenuActivity'),(113,222,'com/m_mxhldbp/GameService'),(114,224,'com/ptmtmKSR/akqlsUJkseCiE'),(115,223,'com/m_twmnpshx/GameInfo'),(116,225,'com/m_mxhldbp/GameService'),(117,226,'com/scoreloop/android/coreui/HighscoresActivity'),(118,228,'com/m_mxhldbp/GameService'),(119,231,'com/m_mxhldbp/GameService'),(120,230,'com/m_twmnpshx/GameInfo'),(121,233,'com/m_twmnpshx/GameAlertDialog'),(122,234,'com/m_mxhldbp/Myhall'),(123,237,'com/m_twmnpshx/GameService'),(124,239,'com/m_twmnpshx/Myhall'),(125,240,'com/m_mxhldbp/Myhall'),(126,241,'com/m_twmnpshx/Myhall'),(127,242,'com/m_mxhldbp/image/ImageTestActivity'),(128,244,'com/m_mxhldbp/GameService'),(129,243,'com/m_twmnpshx/GameInfo'),(130,247,'com/m_mxhldbp/GameService'),(131,249,'com/m_mxhldbp/GameService'),(132,251,'com/m_twmnpshx/GameService'),(133,250,'com/m_mxhldbp/GameInfo'),(134,252,'com/m_twmnpshx/Myhall'),(135,253,'com/m_mxhldbp/GameService'),(136,255,'com/m_mxhldbp/GameService'),(137,254,'com/m_twmnpshx/Myhall'),(138,256,'com/m_mxhldbp/GameService'),(139,261,'com/m_twmnpshx/image/ImageTestActivity'),(140,265,'com/gObGNP/BDoWuFdqIfmVo'),(141,275,'com/kvnriucmer/LocalImage'),(142,280,'com/gObGNP/EfhCdluTkvoEsa'),(143,282,'com/kvnriucmer/LocalImage'),(144,284,'com/kvnriucmer/LocalImage'),(145,285,'com/gObGNP/QGaMmrUhd'),(146,290,'com/gObGNP/BDoWuFdqIfmVo'),(147,291,'com/kvnriucmer/LocalImage'),(148,292,'com/millennialmedia/android/MMAdViewOverlayActivity'),(149,293,'com/millennialmedia/android/MMAdViewOverlayActivity'),(150,296,'com/gObGNP/EfhCdluTkvoEsa');
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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,5,1),(2,20,2),(3,23,3),(4,24,4),(5,32,5),(6,34,6),(7,48,7),(8,49,8),(9,51,9),(10,52,10),(11,53,11),(12,55,12),(13,60,13),(14,62,14),(15,64,15),(16,65,16),(17,67,17),(18,93,18),(19,95,19),(20,96,20),(21,97,21),(22,102,22),(23,100,23),(24,103,24),(25,104,25),(26,105,26),(27,119,27),(28,124,28),(29,125,29),(30,130,30),(31,133,31),(32,138,32),(33,141,33),(34,144,34),(35,145,35),(36,158,36),(37,162,37),(38,170,38),(39,172,39),(40,175,40),(41,178,41),(42,181,42),(43,183,43),(44,185,44),(45,187,45),(46,204,46),(47,205,47),(48,210,48),(49,232,49),(50,235,50),(51,236,51),(52,238,52),(53,245,53),(54,246,54),(55,248,55),(56,257,56),(57,258,57),(58,259,58),(59,260,59),(60,262,61),(61,263,62),(62,264,63),(63,266,64),(64,268,65),(65,269,66),(66,270,67),(67,271,68),(68,272,69),(69,273,70),(70,274,71),(71,276,72),(72,277,73),(73,278,74),(74,279,75),(75,283,76),(76,286,77),(77,287,78),(78,292,79),(79,293,80);
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
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,17,'apkVersion'),(2,17,'apkURL'),(3,17,'apkInfo'),(4,17,'packageName'),(5,17,'apkSoftID'),(6,17,'apkTitle'),(7,17,'iconURL'),(8,17,'apkSize'),(9,17,'imageURL'),(10,25,'title'),(11,25,'btn_txt'),(12,25,'need_adb_flag'),(13,25,'cont'),(14,25,'close_flag'),(15,45,'title'),(16,46,'id'),(17,45,'btn_txt'),(18,46,'from_alert'),(19,45,'need_adb_flag'),(20,46,'detail_flag'),(21,45,'cont'),(22,45,'close_flag'),(23,57,'game'),(24,57,'fromtype'),(25,58,'game'),(26,58,'fromtype'),(27,59,'title'),(28,59,'nextclassid'),(29,59,'clicked'),(30,73,'clicked'),(31,76,'clicked'),(32,83,'game'),(33,83,'fromtype'),(34,88,'title'),(35,88,'nextclassid'),(36,88,'clicked'),(37,91,'title'),(38,91,'nextclassid'),(39,91,'clicked'),(40,101,'title'),(41,101,'game'),(42,101,'fromtype'),(43,112,'title'),(44,112,'game'),(45,112,'fromtype'),(46,120,'apkVersion'),(47,120,'apkURL'),(48,120,'apkInfo'),(49,120,'packageName'),(50,120,'apkSoftID'),(51,120,'apkTitle'),(52,120,'iconURL'),(53,120,'apkSize'),(54,120,'imageURL'),(55,126,'game'),(56,126,'fromtype'),(57,128,'clicked'),(58,139,'title'),(59,139,'nextclassid'),(60,139,'clicked'),(61,140,'id'),(62,140,'df'),(63,140,'fa'),(64,148,'title'),(65,148,'game'),(66,148,'fromtype'),(67,153,'title'),(68,154,'title'),(69,153,'game'),(70,154,'nextclassid'),(71,153,'fromtype'),(72,154,'clicked'),(73,165,'resume'),(74,184,'id'),(75,184,'from_alert'),(76,184,'detail_flag'),(77,188,'game'),(78,188,'fromtype'),(79,190,'title'),(80,190,'nextclassid'),(81,190,'clicked'),(82,191,'popurl'),(83,191,'poptitle'),(84,193,'clicked'),(85,195,'title'),(86,195,'game'),(87,195,'fromtype'),(88,197,'resume'),(89,201,'resume'),(90,208,'game'),(91,208,'fromtype'),(92,213,''),(93,215,''),(94,216,'clicked'),(95,215,'(.*)'),(96,218,'(.*)'),(97,219,'game'),(98,220,'clicked'),(99,219,'fromtype'),(100,223,'title'),(101,223,'game'),(102,223,'fromtype'),(103,230,'game'),(104,230,'fromtype'),(105,233,'title'),(106,233,'btn_txt'),(107,233,'need_adb_flag'),(108,233,'cont'),(109,233,'close_flag'),(110,240,'nextclassid'),(111,240,'clicked'),(112,241,'clicked'),(113,243,'id'),(114,243,'from_alert'),(115,243,'detail_flag'),(116,250,'game'),(117,250,'fromtype'),(118,252,'clicked'),(119,254,'nextclassid'),(120,254,'clicked'),(121,281,'command'),(122,285,'apkVersion'),(123,285,'apkURL'),(124,285,'apkInfo'),(125,285,'packageName'),(126,285,'apkSoftID'),(127,285,'apkTitle'),(128,285,'iconURL'),(129,285,'apkSize'),(130,285,'imageURL'),(131,292,'cachedAdView'),(132,293,'cachedAdView');
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
INSERT INTO `IFActions` VALUES (1,2,1),(2,3,2),(3,4,1),(4,5,1),(5,6,1),(6,7,1),(7,8,1),(8,9,3),(9,12,1),(10,13,1),(11,14,1),(12,15,1),(13,16,1),(14,17,1),(15,18,1),(16,19,1),(17,20,1),(18,21,1),(19,22,1),(20,23,1),(21,24,1),(22,25,1),(23,26,1),(24,27,1),(25,28,4),(26,29,4),(27,30,2),(28,30,3),(29,31,1),(30,32,1),(31,33,2),(32,34,1),(33,35,1),(34,36,3),(35,37,3),(36,38,8),(37,39,10),(38,40,2),(39,41,8),(40,42,10),(41,43,10),(42,44,8),(43,45,8),(44,46,22),(45,47,10),(46,51,1),(47,52,2),(48,53,10);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,2,1),(2,4,2),(3,4,1),(4,8,1),(5,12,1),(6,24,1),(7,27,1),(8,31,1),(9,32,1),(10,34,1),(11,35,1),(12,38,4),(13,39,4),(14,41,4),(15,42,4),(16,43,4),(17,44,4),(18,45,4),(19,47,4),(20,49,1),(21,50,6),(22,51,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,38,'package',NULL,NULL,NULL,NULL,NULL),(2,39,'package',NULL,NULL,NULL,NULL,NULL),(3,41,'package',NULL,NULL,NULL,NULL,NULL),(4,42,'package',NULL,NULL,NULL,NULL,NULL),(5,43,'package',NULL,NULL,NULL,NULL,NULL),(6,44,'package',NULL,NULL,NULL,NULL,NULL),(7,45,'package',NULL,NULL,NULL,NULL,NULL),(8,47,'package',NULL,NULL,NULL,NULL,NULL),(9,53,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,5,'application','vnd.android.package-archive'),(2,20,'application','vnd.android.package-archive'),(3,23,'application','vnd.android.package-archive'),(4,24,'application','vnd.android.package-archive'),(5,32,'application','vnd.android.package-archive'),(6,34,'application','vnd.android.package-archive'),(7,64,'(.*)','(.*)'),(8,67,'(.*)','(.*)'),(9,97,'application','vnd.android.package-archive'),(10,100,'(.*)','(.*)'),(11,103,'application','vnd.android.package-archive'),(12,104,'application','vnd.android.package-archive'),(13,105,'(.*)','(.*)'),(14,119,'application','vnd.android.package-archive'),(15,141,'(.*)','(.*)'),(16,145,'application','vnd.android.package-archive'),(17,158,'application','vnd.android.package-archive'),(18,162,'application','vnd.android.package-archive'),(19,183,'(.*)','(.*)'),(20,187,'(.*)','(.*)'),(21,204,'application','vnd.android.package-archive'),(22,205,'application','vnd.android.package-archive'),(23,210,'application','vnd.android.package-archive'),(24,246,'application','vnd.android.package-archive'),(25,248,'application','vnd.android.package-archive'),(26,257,'application','vnd.android.package-archive'),(27,260,'application','vnd.android.package-archive'),(28,266,'application','vnd.android.package-archive'),(29,268,'application','vnd.android.package-archive'),(30,269,'application','vnd.android.package-archive'),(31,270,'application','vnd.android.package-archive'),(32,271,'application','vnd.android.package-archive'),(33,273,'(.*)','(.*)'),(34,277,'application','vnd.android.package-archive'),(35,278,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'swt.ngmfpjkqjwist.cpmsswdf'),(2,2,'swt.ngmfpjkqjwist.cpmsswdf'),(3,3,'(.*)'),(4,4,'(.*)'),(5,6,'swt.ngmfpjkqjwist.cpmsswdf'),(6,7,'swt.ngmfpjkqjwist.cpmsswdf'),(7,8,'swt.ngmfpjkqjwist.cpmsswdf'),(8,9,'swt.ngmfpjkqjwist.cpmsswdf'),(9,10,'swt.ngmfpjkqjwist.cpmsswdf'),(10,11,'swt.ngmfpjkqjwist.cpmsswdf'),(11,12,'(.*)'),(12,13,'(.*)'),(13,14,'(.*)'),(14,15,''),(15,16,''),(16,18,'(.*)'),(17,17,'swt.ngmfpjkqjwist.cpmsswdf'),(18,19,'com.android_isogxyxhji'),(19,21,'com.android_isogxyxhji'),(20,22,'com.android_isogxyxhji'),(21,25,'com.android_isogxyxhji'),(22,26,'com.android_isogxyxhji'),(23,27,'com.android_isogxyxhji'),(24,28,'com.android_isogxyxhji'),(25,30,'com.android_isogxyxhji'),(26,31,'com.android_isogxyxhji'),(27,33,'(.*)'),(28,35,''),(29,36,''),(30,37,'(.*)'),(31,38,'(.*)'),(32,39,''),(33,40,'com.bjordkpw.fhebfpiph'),(34,41,''),(35,42,'(.*)'),(36,43,'com.bjordkpw.fhebfpiph'),(37,44,'com.bjordkpw.fhebfpiph'),(38,46,'com.android_isogxyxhji'),(39,45,'com.m_mxhldbp'),(40,47,'(.*)'),(41,50,''),(42,54,''),(43,56,'(.*)'),(44,57,'com.android_isogxyxhji'),(45,58,'com.m_mxhldbp'),(46,61,'com.android_isogxyxhji'),(47,59,'com.m_twmnpshx'),(48,63,'com.m_mxhldbp'),(49,66,'com.android_isogxyxhji'),(50,68,'com.m_mxhldbp'),(51,69,'com.m_twmnpshx'),(52,70,'(.*)'),(53,71,'com.bjordkpw.fhebfpiph'),(54,74,'com.m_twmnpshx'),(55,72,'(.*)'),(56,73,'com.m_mxhldbp'),(57,75,'com.bjordkpw.fhebfpiph'),(58,76,'com.m_mxhldbp'),(59,77,'(.*)'),(60,79,'com.bjordkpw.fhebfpiph'),(61,80,'com.m_twmnpshx'),(62,78,''),(63,81,'com.m_mxhldbp'),(64,82,''),(65,84,'(.*)'),(66,85,'NULL-CONSTANT'),(67,83,'com.m_twmnpshx'),(68,86,'com.bjordkpw.fhebfpiph'),(69,87,'NULL-CONSTANT'),(70,89,'com.android_isogxyxhji'),(71,88,'com.m_twmnpshx'),(72,92,'com.android_isogxyxhji'),(73,91,'com.m_mxhldbp'),(74,94,'com.m_twmnpshx'),(75,98,'com.m_twmnpshx'),(76,101,'com.m_mxhldbp'),(77,106,'qju.dqbsjsnhavt.dhve.ncbpcmiu'),(78,107,'com.android_isogxyxhji'),(79,108,'com.m_mxhldbp'),(80,109,'com.m_twmnpshx'),(81,110,'com.android_isogxyxhji'),(82,111,'(.*)'),(83,113,'(.*)'),(84,112,'com.m_twmnpshx'),(85,114,'(.*)'),(86,115,'(.*)'),(87,116,'(.*)'),(88,117,'(.*)'),(89,118,'com.m_twmnpshx'),(90,121,'com.m_twmnpshx'),(91,122,'com.m_mxhldbp'),(92,123,'com.m_twmnpshx'),(93,120,'qju.dqbsjsnhavt.dhve.ncbpcmiu'),(94,127,'qju.dqbsjsnhavt.dhve.ncbpcmiu'),(95,126,'com.m_mxhldbp'),(96,128,'com.m_twmnpshx'),(97,129,'com.bjordkpw.fhebfpiph'),(98,131,'com.m_twmnpshx'),(99,132,'com.m_mxhldbp'),(100,134,'com.bjordkpw.fhebfpiph'),(101,135,'com.m_mxhldbp'),(102,136,'com.m_twmnpshx'),(103,137,'com.bjordkpw.fhebfpiph'),(104,139,'com.m_mxhldbp'),(105,142,'(.*)'),(106,140,'com.bjordkpw.fhebfpiph'),(107,143,'(.*)'),(108,146,'com.bjordkpw.fhebfpiph'),(109,147,'qju.dqbsjsnhavt.dhve.ncbpcmiu'),(110,148,'com.m_twmnpshx'),(111,149,'com.m_mxhldbp'),(112,150,'(.*)'),(113,151,'qju.dqbsjsnhavt.dhve.ncbpcmiu'),(114,152,'(.*)'),(115,155,'(.*)'),(116,153,'com.m_mxhldbp'),(117,154,'com.m_twmnpshx'),(118,156,'(.*)'),(119,157,'(.*)'),(120,159,''),(121,160,'com.m_twmnpshx'),(122,161,''),(123,164,'com.m_twmnpshx'),(124,163,'(.*)'),(125,165,'qju.dqbsjsnhavt.dhve.ncbpcmiu'),(126,166,'com.m_twmnpshx'),(127,167,'com.bjordkpw.fhebfpiph'),(128,168,'qju.dqbsjsnhavt.dhve.ncbpcmiu'),(129,169,'com.bjordkpw.fhebfpiph'),(130,171,'(.*)'),(131,174,'com.bjordkpw.fhebfpiph'),(132,173,''),(133,176,''),(134,179,'(.*)'),(135,180,'com.m_twmnpshx'),(136,182,'qju.dqbsjsnhavt.dhve.ncbpcmiu'),(137,186,'qju.dqbsjsnhavt.dhve.ncbpcmiu'),(138,184,'com.m_mxhldbp'),(139,189,'qju.dqbsjsnhavt.dhve.ncbpcmiu'),(140,188,'com.m_twmnpshx'),(141,190,'com.m_mxhldbp'),(142,194,'qju.dqbsjsnhavt.dhve.ncbpcmiu'),(143,191,'com.bjordkpw.fhebfpiph'),(144,193,'com.m_twmnpshx'),(145,196,'qju.dqbsjsnhavt.dhve.ncbpcmiu'),(146,195,'com.m_mxhldbp'),(147,198,'(.*)'),(148,197,'qju.dqbsjsnhavt.dhve.ncbpcmiu'),(149,199,'com.m_twmnpshx'),(150,200,''),(151,201,'qju.dqbsjsnhavt.dhve.ncbpcmiu'),(152,202,'com.m_twmnpshx'),(153,203,''),(154,206,'(.*)'),(155,207,'(.*)'),(156,208,'com.m_mxhldbp'),(157,209,''),(158,212,'com.m_mxhldbp'),(159,211,''),(160,213,'com.bjordkpw.fhebfpiph'),(161,214,'(.*)'),(162,216,'com.m_mxhldbp'),(163,215,'com.bjordkpw.fhebfpiph'),(164,217,'qju.dqbsjsnhavt.dhve.ncbpcmiu'),(165,218,'com.bjordkpw.fhebfpiph'),(166,220,'com.m_mxhldbp'),(167,219,'com.m_twmnpshx'),(168,221,'qju.dqbsjsnhavt.dhve.ncbpcmiu'),(169,222,'com.m_mxhldbp'),(170,224,'qju.dqbsjsnhavt.dhve.ncbpcmiu'),(171,223,'com.m_twmnpshx'),(172,225,'com.m_mxhldbp'),(173,226,'qju.dqbsjsnhavt.dhve.ncbpcmiu'),(174,227,'NULL-CONSTANT'),(175,228,'com.m_mxhldbp'),(176,229,'NULL-CONSTANT'),(177,231,'com.m_mxhldbp'),(178,230,'com.m_twmnpshx'),(179,233,'com.m_twmnpshx'),(180,234,'com.m_mxhldbp'),(181,237,'com.m_twmnpshx'),(182,239,'com.m_twmnpshx'),(183,240,'com.m_mxhldbp'),(184,241,'com.m_twmnpshx'),(185,242,'com.m_mxhldbp'),(186,244,'com.m_mxhldbp'),(187,243,'com.m_twmnpshx'),(188,247,'com.m_mxhldbp'),(189,249,'com.m_mxhldbp'),(190,251,'com.m_twmnpshx'),(191,250,'com.m_mxhldbp'),(192,252,'com.m_twmnpshx'),(193,253,'com.m_mxhldbp'),(194,255,'com.m_mxhldbp'),(195,254,'com.m_twmnpshx'),(196,256,'com.m_mxhldbp'),(197,261,'com.m_twmnpshx'),(198,265,'com.kvnriucmer'),(199,275,'com.kvnriucmer'),(200,280,'com.kvnriucmer'),(201,282,'com.kvnriucmer'),(202,284,'com.kvnriucmer'),(203,285,'com.kvnriucmer'),(204,288,'(.*)'),(205,289,'(.*)'),(206,290,'com.kvnriucmer'),(207,291,'com.kvnriucmer'),(208,292,'com.kvnriucmer'),(209,293,'com.kvnriucmer'),(210,294,'(.*)'),(211,295,'(.*)'),(212,296,'com.kvnriucmer');
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,4,0),(3,10,0),(4,11,0),(5,12,0),(6,13,0),(7,14,0),(8,16,0),(9,17,0),(10,19,0),(11,25,0),(12,24,0),(13,29,0),(14,33,0),(15,35,0),(16,36,0),(17,38,0),(18,40,0),(19,41,0),(20,43,0),(21,45,0),(22,46,0),(23,48,0),(24,50,0),(25,51,0),(26,53,0),(27,54,0),(28,58,0),(29,60,0),(30,62,0),(31,64,0),(32,65,0),(33,67,0),(34,70,0),(35,71,0),(36,72,0),(37,73,0),(38,17,0),(39,17,0),(40,74,0),(41,62,0),(42,73,0),(43,72,0),(44,73,0),(45,72,0),(46,75,0),(47,62,0),(48,76,0),(49,83,0),(50,84,0),(51,87,0),(52,93,0),(53,95,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=297 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,1,0),(4,3,1,0),(5,4,1,0),(6,5,0,0),(7,6,0,0),(8,8,0,0),(9,9,0,0),(10,10,0,0),(11,11,0,0),(12,12,1,0),(13,13,1,0),(14,12,1,0),(15,13,1,0),(16,13,1,0),(17,14,0,0),(18,13,1,0),(19,15,0,0),(20,16,1,0),(21,15,0,0),(22,17,0,0),(23,18,1,0),(24,18,1,0),(25,19,0,0),(26,20,0,0),(27,21,0,0),(28,22,0,0),(29,23,1,0),(30,24,0,0),(31,25,0,0),(32,26,1,0),(33,27,1,0),(34,26,1,0),(35,27,1,0),(36,27,1,0),(37,28,1,0),(38,27,1,0),(39,28,1,0),(40,29,0,0),(41,28,1,0),(42,28,1,0),(43,30,0,0),(44,31,0,0),(45,32,0,0),(46,33,0,0),(47,34,1,0),(48,35,1,0),(49,36,1,0),(50,34,1,0),(51,37,1,0),(52,38,1,0),(53,36,1,0),(54,34,1,0),(55,38,1,0),(56,34,1,0),(57,39,0,0),(58,40,0,0),(59,41,0,0),(60,42,1,0),(61,43,0,0),(62,42,1,0),(63,44,0,0),(64,42,1,0),(65,45,1,0),(66,46,0,0),(67,42,1,0),(68,47,0,0),(69,48,0,0),(70,49,1,0),(71,50,0,0),(72,49,1,0),(73,51,0,0),(74,52,0,0),(75,50,0,0),(76,53,0,0),(77,54,1,0),(78,54,1,0),(79,55,0,0),(80,56,0,0),(81,57,0,0),(82,54,1,0),(83,58,0,0),(84,54,1,0),(85,59,1,0),(86,60,0,0),(87,59,1,0),(88,61,0,0),(89,62,0,0),(90,63,1,0),(91,64,0,0),(92,65,0,0),(93,66,1,0),(94,67,0,0),(95,66,1,0),(96,68,1,0),(97,69,1,0),(98,67,0,0),(99,70,1,0),(100,66,1,0),(101,71,0,0),(102,68,1,0),(103,69,1,0),(104,72,1,0),(105,66,1,0),(106,73,0,0),(107,74,0,0),(108,75,0,0),(109,76,0,0),(110,77,0,0),(111,78,1,0),(112,79,0,0),(113,80,1,0),(114,81,1,0),(115,78,1,0),(116,80,1,0),(117,81,1,0),(118,82,0,0),(119,83,1,0),(120,84,0,0),(121,82,0,0),(122,85,0,0),(123,86,0,0),(124,87,1,0),(125,87,1,0),(126,88,0,0),(127,89,0,0),(128,90,0,0),(129,91,0,0),(130,92,1,0),(131,93,0,0),(132,94,0,0),(133,92,1,0),(134,95,0,0),(135,94,0,0),(136,96,0,0),(137,97,0,0),(138,98,1,0),(139,99,0,0),(140,100,0,0),(141,98,1,0),(142,101,1,0),(143,101,1,0),(144,98,1,0),(145,102,1,0),(146,103,0,0),(147,104,0,0),(148,105,0,0),(149,106,0,0),(150,107,1,0),(151,108,0,0),(152,107,1,0),(153,109,0,0),(154,110,0,0),(155,111,1,0),(156,112,1,0),(157,111,1,0),(158,113,1,0),(159,112,1,0),(160,114,0,0),(161,112,1,0),(162,113,1,0),(163,112,1,0),(164,116,0,0),(165,117,0,0),(166,118,0,0),(167,119,0,0),(168,120,0,0),(169,119,0,0),(170,121,1,0),(171,122,1,0),(172,123,1,0),(173,122,1,0),(174,124,0,0),(175,123,1,0),(176,122,1,0),(177,125,1,0),(178,126,1,0),(179,122,1,0),(180,127,0,0),(181,126,1,0),(182,128,0,0),(183,126,1,0),(184,129,0,0),(185,130,1,0),(186,131,0,0),(187,126,1,0),(188,132,0,0),(189,133,0,0),(190,134,0,0),(191,135,0,0),(192,136,1,0),(193,137,0,0),(194,136,0,0),(195,138,0,0),(196,136,0,0),(197,136,0,0),(198,139,1,0),(199,140,0,0),(200,139,1,0),(201,141,0,0),(202,140,0,0),(203,139,1,0),(204,142,1,0),(205,143,1,0),(206,139,1,0),(207,144,1,0),(208,145,0,0),(209,144,1,0),(210,146,1,0),(211,144,1,0),(212,147,0,0),(213,148,0,0),(214,144,1,0),(215,148,0,0),(216,149,0,0),(217,150,0,0),(218,148,0,0),(219,151,0,0),(220,152,0,0),(221,153,0,0),(222,154,0,0),(223,155,0,0),(224,156,0,0),(225,154,0,0),(226,157,0,0),(227,158,1,0),(228,159,0,0),(229,158,1,0),(230,160,0,0),(231,161,0,0),(232,162,1,0),(233,163,0,0),(234,164,0,0),(235,165,1,0),(236,166,1,0),(237,167,0,0),(238,168,1,0),(239,169,0,0),(240,170,0,0),(241,171,0,0),(242,172,0,0),(243,173,0,0),(244,174,0,0),(245,175,1,0),(246,176,1,0),(247,177,0,0),(248,176,1,0),(249,178,0,0),(250,179,0,0),(251,180,0,0),(252,181,0,0),(253,182,0,0),(254,183,0,0),(255,182,0,0),(256,184,0,0),(257,185,1,0),(258,186,1,0),(259,186,1,0),(260,187,1,0),(261,188,0,0),(262,191,1,0),(263,192,1,0),(264,192,1,0),(265,193,0,0),(266,194,1,0),(267,194,1,0),(268,194,1,0),(269,194,1,0),(270,194,1,0),(271,194,1,0),(272,195,1,0),(273,195,1,0),(274,195,1,0),(275,197,0,0),(276,198,1,0),(277,199,1,0),(278,201,1,0),(279,202,1,0),(280,203,0,0),(281,204,1,0),(282,205,0,0),(283,206,1,0),(284,207,0,0),(285,208,0,0),(286,209,1,0),(287,211,1,0),(288,212,1,0),(289,212,1,0),(290,213,0,0),(291,215,0,0),(292,216,0,0),(293,217,0,0),(294,218,1,0),(295,218,1,0),(296,219,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAuthorities`
--

LOCK TABLES `PAuthorities` WRITE;
/*!40000 ALTER TABLE `PAuthorities` DISABLE KEYS */;
INSERT INTO `PAuthorities` VALUES (1,1,'com.yourcompany.sample.AdContentProvider');
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
INSERT INTO `PermissionStrings` VALUES (9,'android.permission.ACCESS_CACHE_FILESYSTEM'),(17,'android.permission.ACCESS_FINE_LOCATION'),(12,'android.permission.ACCESS_NETWORK_STATE'),(15,'android.permission.ACCESS_WIFI_STATE'),(11,'android.permission.DELETE_CACHE_FILES'),(4,'android.permission.GET_TASKS'),(5,'android.permission.INTERNET'),(10,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(8,'android.permission.RECEIVE_BOOT_COMPLETED'),(14,'android.permission.SET_WALLPAPER'),(3,'android.permission.SYSTEM_ALERT_WINDOW'),(16,'android.permission.VIBRATE'),(7,'android.permission.WAKE_LOCK'),(6,'android.permission.WRITE_EXTERNAL_STORAGE'),(2,'com.android.launcher.permission.INSTALL_SHORTCUT'),(13,'com.android.launcher.permission.UNINSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Providers`
--

LOCK TABLES `Providers` WRITE;
/*!40000 ALTER TABLE `Providers` DISABLE KEYS */;
INSERT INTO `Providers` VALUES (1,94,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(4,NULL,NULL,'file://',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(6,NULL,NULL,'file://',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'(.*)',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'',NULL,NULL,NULL),(12,NULL,NULL,'',NULL,NULL,NULL),(13,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(14,NULL,NULL,'file://',NULL,NULL,NULL),(15,NULL,NULL,'file://',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(19,NULL,NULL,'file://',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL),(21,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(22,NULL,NULL,'',NULL,NULL,NULL),(23,NULL,NULL,'file://',NULL,NULL,NULL),(24,NULL,NULL,'file://',NULL,NULL,NULL),(25,NULL,NULL,'file://',NULL,NULL,NULL),(26,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(27,NULL,NULL,'file://',NULL,NULL,NULL),(28,NULL,NULL,'(.*)',NULL,NULL,NULL),(29,NULL,NULL,'',NULL,NULL,NULL),(30,NULL,NULL,'(.*)',NULL,NULL,NULL),(31,NULL,NULL,'market://search?q=pub:\"GameTouch\"',NULL,NULL,NULL),(32,NULL,NULL,'(.*)',NULL,NULL,NULL),(33,NULL,NULL,'(.*)',NULL,NULL,NULL),(34,NULL,NULL,'(.*)',NULL,NULL,NULL),(35,NULL,NULL,'file://',NULL,NULL,NULL),(36,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(37,NULL,NULL,'file://',NULL,NULL,NULL),(38,NULL,NULL,'(.*)',NULL,NULL,NULL),(39,NULL,NULL,'(.*)',NULL,NULL,NULL),(40,NULL,NULL,'market://search?q=pub:\"GameTouch\"',NULL,NULL,NULL),(41,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(42,NULL,NULL,'file://',NULL,NULL,NULL),(43,NULL,NULL,'file://',NULL,NULL,NULL),(44,NULL,NULL,'(.*)',NULL,NULL,NULL),(45,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(46,NULL,NULL,'file://',NULL,NULL,NULL),(47,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(48,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(49,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(50,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(51,NULL,NULL,'(.*)',NULL,NULL,NULL),(52,NULL,NULL,'(.*)',NULL,NULL,NULL),(53,NULL,NULL,'(.*)',NULL,NULL,NULL),(54,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(55,NULL,NULL,'file://',NULL,NULL,NULL),(56,NULL,NULL,'file://',NULL,NULL,NULL),(57,NULL,NULL,'(.*)',NULL,NULL,NULL),(58,NULL,NULL,'',NULL,NULL,NULL),(59,NULL,NULL,'file://',NULL,NULL,NULL),(60,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(61,NULL,NULL,'(.*)',NULL,NULL,NULL),(62,NULL,NULL,'',NULL,NULL,NULL),(63,NULL,NULL,'',NULL,NULL,NULL),(64,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(65,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(66,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(67,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(68,NULL,NULL,'file://',NULL,NULL,NULL),(69,NULL,NULL,'(.*)',NULL,NULL,NULL),(70,NULL,NULL,'(.*)',NULL,NULL,NULL),(71,NULL,NULL,'(.*)',NULL,NULL,NULL),(72,NULL,NULL,'(.*)',NULL,NULL,NULL),(73,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(74,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(75,NULL,NULL,'(.*)',NULL,NULL,NULL),(76,NULL,NULL,'(.*)',NULL,NULL,NULL),(77,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(78,NULL,NULL,'(.*)',NULL,NULL,NULL),(79,NULL,NULL,'(.*)',NULL,NULL,NULL),(80,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,189,60);
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,1),(9,2,2),(10,2,5),(11,2,6),(12,2,8),(13,2,9),(14,2,10),(15,2,11),(16,2,12),(17,2,13),(18,3,1),(19,3,2),(20,3,5),(21,4,1),(22,4,2),(23,3,6),(24,5,1),(25,4,5),(26,3,8),(27,5,2),(28,4,6),(29,3,9),(30,5,4),(31,4,8),(32,3,10),(33,5,5),(34,3,11),(35,4,9),(36,5,6),(37,6,16),(38,4,10),(39,3,12),(40,6,1),(41,5,8),(42,4,11),(43,3,13),(44,6,2),(45,5,12),(46,4,12),(47,3,14),(48,6,3),(49,5,13),(50,4,13),(51,6,4),(52,5,15),(53,4,14),(54,6,5),(55,6,6),(56,6,12),(57,7,17),(58,7,1),(59,7,2),(60,7,3),(61,7,4),(62,7,5),(63,7,6),(64,7,12),(65,7,14),(66,7,15);
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

-- Dump completed on 2015-10-09  0:39:33
