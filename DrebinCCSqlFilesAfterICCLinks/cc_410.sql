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
) ENGINE=InnoDB AUTO_INCREMENT=2479 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,3,1,2,NULL),(2,4,1,2,NULL),(3,12,1,2,NULL),(4,14,1,2,NULL),(5,70,1,2,NULL),(6,72,1,2,NULL),(7,29,1,2,NULL),(8,49,1,2,NULL),(9,53,1,2,NULL),(10,238,1,2,NULL),(11,111,1,2,NULL),(12,115,1,2,NULL),(13,99,1,2,NULL),(14,258,1,2,NULL),(15,259,1,2,NULL),(16,236,1,2,NULL),(17,170,1,2,NULL),(18,142,1,2,NULL),(19,143,1,2,NULL),(20,52,1,2,NULL),(21,55,1,2,NULL),(22,177,1,2,NULL),(23,65,1,2,NULL),(24,113,1,2,NULL),(25,116,1,2,NULL),(26,150,1,2,NULL),(27,152,1,2,NULL),(28,198,1,2,NULL),(29,200,1,2,NULL),(30,203,1,2,NULL),(31,206,1,2,NULL),(32,124,1,2,NULL),(33,125,1,2,NULL),(34,90,1,2,NULL),(35,192,1,2,NULL),(36,138,1,2,NULL),(37,144,1,2,NULL),(38,114,1,2,NULL),(39,117,1,2,NULL),(40,155,1,2,NULL),(41,157,1,2,NULL),(42,272,1,2,NULL),(43,274,1,2,NULL),(44,263,1,2,NULL),(45,264,1,2,NULL),(46,262,1,2,NULL),(47,276,1,2,NULL),(48,279,1,2,NULL),(49,283,1,2,NULL),(50,287,1,2,NULL),(51,288,1,2,NULL),(52,289,1,2,NULL),(53,294,1,2,NULL),(54,295,1,2,NULL),(55,2,5,2,NULL),(56,9,5,2,NULL),(57,3,4,2,NULL),(58,4,4,2,NULL),(59,12,4,2,NULL),(60,14,4,2,NULL),(61,70,4,2,NULL),(62,72,4,2,NULL),(63,29,4,2,NULL),(64,49,4,2,NULL),(65,53,4,2,NULL),(66,238,4,2,NULL),(67,111,4,2,NULL),(68,115,4,2,NULL),(69,99,4,2,NULL),(70,258,4,2,NULL),(71,259,4,2,NULL),(72,236,4,2,NULL),(73,170,4,2,NULL),(74,142,4,2,NULL),(75,143,4,2,NULL),(76,52,4,2,NULL),(77,55,4,2,NULL),(78,177,4,2,NULL),(79,65,4,2,NULL),(80,113,4,2,NULL),(81,116,4,2,NULL),(82,150,4,2,NULL),(83,152,4,2,NULL),(84,198,4,2,NULL),(85,200,4,2,NULL),(86,203,4,2,NULL),(87,206,4,2,NULL),(88,124,4,2,NULL),(89,125,4,2,NULL),(90,90,4,2,NULL),(91,192,4,2,NULL),(92,138,4,2,NULL),(93,144,4,2,NULL),(94,114,4,2,NULL),(95,117,4,2,NULL),(96,155,4,2,NULL),(97,157,4,2,NULL),(98,272,4,2,NULL),(99,274,4,2,NULL),(100,263,4,2,NULL),(101,264,4,2,NULL),(102,262,4,2,NULL),(103,276,4,2,NULL),(104,279,4,2,NULL),(105,283,4,2,NULL),(106,287,4,2,NULL),(107,288,4,2,NULL),(108,289,4,2,NULL),(109,294,4,2,NULL),(110,295,4,2,NULL),(111,6,1,2,NULL),(112,8,1,2,NULL),(113,10,1,2,NULL),(114,11,1,2,NULL),(115,3,10,2,NULL),(116,4,10,2,NULL),(117,12,10,2,NULL),(118,14,10,2,NULL),(119,3,11,2,NULL),(120,4,11,2,NULL),(121,12,11,2,NULL),(122,14,11,2,NULL),(123,3,12,2,NULL),(124,4,12,2,NULL),(125,12,12,2,NULL),(126,14,12,2,NULL),(127,3,13,2,NULL),(128,4,13,2,NULL),(129,12,13,2,NULL),(130,14,13,2,NULL),(131,3,14,2,NULL),(132,4,14,2,NULL),(133,12,14,2,NULL),(134,14,14,2,NULL),(135,3,16,2,NULL),(136,4,16,2,NULL),(137,12,16,2,NULL),(138,14,16,2,NULL),(139,3,17,2,NULL),(140,4,17,2,NULL),(141,12,17,2,NULL),(142,14,17,2,NULL),(143,3,29,2,NULL),(144,4,29,2,NULL),(145,12,29,2,NULL),(146,14,29,2,NULL),(147,3,36,2,NULL),(148,4,36,2,NULL),(149,12,36,2,NULL),(150,14,36,2,NULL),(151,3,41,2,NULL),(152,4,41,2,NULL),(153,12,41,2,NULL),(154,14,41,2,NULL),(155,3,46,2,NULL),(156,4,46,2,NULL),(157,12,46,2,NULL),(158,14,46,2,NULL),(159,3,51,2,NULL),(160,4,51,2,NULL),(161,12,51,2,NULL),(162,14,51,2,NULL),(163,3,58,2,NULL),(164,4,58,2,NULL),(165,12,58,2,NULL),(166,14,58,2,NULL),(167,3,64,2,NULL),(168,4,64,2,NULL),(169,12,64,2,NULL),(170,14,64,2,NULL),(171,3,70,2,NULL),(172,4,70,2,NULL),(173,12,70,2,NULL),(174,14,70,2,NULL),(175,3,72,2,NULL),(176,4,72,2,NULL),(177,12,72,2,NULL),(178,14,72,2,NULL),(179,3,33,2,NULL),(180,4,33,2,NULL),(181,12,33,2,NULL),(182,14,33,2,NULL),(183,3,38,2,NULL),(184,4,38,2,NULL),(185,12,38,2,NULL),(186,14,38,2,NULL),(187,3,43,2,NULL),(188,4,43,2,NULL),(189,12,43,2,NULL),(190,14,43,2,NULL),(191,3,48,2,NULL),(192,4,48,2,NULL),(193,12,48,2,NULL),(194,14,48,2,NULL),(195,3,53,2,NULL),(196,4,53,2,NULL),(197,12,53,2,NULL),(198,14,53,2,NULL),(199,3,60,2,NULL),(200,4,60,2,NULL),(201,12,60,2,NULL),(202,14,60,2,NULL),(203,3,65,2,NULL),(204,4,65,2,NULL),(205,12,65,2,NULL),(206,14,65,2,NULL),(207,3,71,2,NULL),(208,4,71,2,NULL),(209,12,71,2,NULL),(210,14,71,2,NULL),(211,3,73,2,NULL),(212,4,73,2,NULL),(213,12,73,2,NULL),(214,14,73,2,NULL),(215,3,19,2,NULL),(216,4,19,2,NULL),(217,12,19,2,NULL),(218,14,19,2,NULL),(219,3,24,2,NULL),(220,4,24,2,NULL),(221,12,24,2,NULL),(222,14,24,2,NULL),(223,3,35,2,NULL),(224,4,35,2,NULL),(225,12,35,2,NULL),(226,14,35,2,NULL),(227,3,40,2,NULL),(228,4,40,2,NULL),(229,12,40,2,NULL),(230,14,40,2,NULL),(231,3,45,2,NULL),(232,4,45,2,NULL),(233,12,45,2,NULL),(234,14,45,2,NULL),(235,3,54,2,NULL),(236,4,54,2,NULL),(237,12,54,2,NULL),(238,14,54,2,NULL),(239,3,62,2,NULL),(240,4,62,2,NULL),(241,12,62,2,NULL),(242,14,62,2,NULL),(243,3,74,2,NULL),(244,4,74,2,NULL),(245,12,74,2,NULL),(246,14,74,2,NULL),(247,3,75,2,NULL),(248,4,75,2,NULL),(249,12,75,2,NULL),(250,14,75,2,NULL),(251,3,25,2,NULL),(252,4,25,2,NULL),(253,12,25,2,NULL),(254,14,25,2,NULL),(255,3,50,2,NULL),(256,4,50,2,NULL),(257,12,50,2,NULL),(258,14,50,2,NULL),(259,3,67,2,NULL),(260,4,67,2,NULL),(261,12,67,2,NULL),(262,14,67,2,NULL),(263,3,76,2,NULL),(264,4,76,2,NULL),(265,12,76,2,NULL),(266,14,76,2,NULL),(267,3,83,2,NULL),(268,4,83,2,NULL),(269,12,83,2,NULL),(270,14,83,2,NULL),(271,3,84,2,NULL),(272,4,84,2,NULL),(273,12,84,2,NULL),(274,14,84,2,NULL),(275,3,87,2,NULL),(276,4,87,2,NULL),(277,12,87,2,NULL),(278,14,87,2,NULL),(279,3,93,2,NULL),(280,4,93,2,NULL),(281,12,93,2,NULL),(282,14,93,2,NULL),(283,17,6,2,NULL),(284,70,10,2,NULL),(285,72,10,2,NULL),(286,29,10,2,NULL),(287,49,10,2,NULL),(288,53,10,2,NULL),(289,238,10,2,NULL),(290,111,10,2,NULL),(291,115,10,2,NULL),(292,99,10,2,NULL),(293,258,10,2,NULL),(294,259,10,2,NULL),(295,236,10,2,NULL),(296,170,10,2,NULL),(297,142,10,2,NULL),(298,143,10,2,NULL),(299,52,10,2,NULL),(300,55,10,2,NULL),(301,177,10,2,NULL),(302,65,10,2,NULL),(303,113,10,2,NULL),(304,116,10,2,NULL),(305,150,10,2,NULL),(306,152,10,2,NULL),(307,198,10,2,NULL),(308,200,10,2,NULL),(309,203,10,2,NULL),(310,206,10,2,NULL),(311,124,10,2,NULL),(312,125,10,2,NULL),(313,90,10,2,NULL),(314,192,10,2,NULL),(315,138,10,2,NULL),(316,144,10,2,NULL),(317,114,10,2,NULL),(318,117,10,2,NULL),(319,155,10,2,NULL),(320,157,10,2,NULL),(321,272,10,2,NULL),(322,274,10,2,NULL),(323,263,10,2,NULL),(324,264,10,2,NULL),(325,262,10,2,NULL),(326,276,10,2,NULL),(327,279,10,2,NULL),(328,283,10,2,NULL),(329,287,10,2,NULL),(330,288,10,2,NULL),(331,289,10,2,NULL),(332,294,10,2,NULL),(333,295,10,2,NULL),(334,19,16,2,NULL),(335,21,16,2,NULL),(336,27,16,2,NULL),(337,70,11,2,NULL),(338,72,11,2,NULL),(339,29,11,2,NULL),(340,49,11,2,NULL),(341,53,11,2,NULL),(342,238,11,2,NULL),(343,111,11,2,NULL),(344,115,11,2,NULL),(345,99,11,2,NULL),(346,258,11,2,NULL),(347,259,11,2,NULL),(348,236,11,2,NULL),(349,170,11,2,NULL),(350,142,11,2,NULL),(351,143,11,2,NULL),(352,52,11,2,NULL),(353,55,11,2,NULL),(354,177,11,2,NULL),(355,65,11,2,NULL),(356,113,11,2,NULL),(357,116,11,2,NULL),(358,150,11,2,NULL),(359,152,11,2,NULL),(360,198,11,2,NULL),(361,200,11,2,NULL),(362,203,11,2,NULL),(363,206,11,2,NULL),(364,124,11,2,NULL),(365,125,11,2,NULL),(366,90,11,2,NULL),(367,192,11,2,NULL),(368,138,11,2,NULL),(369,144,11,2,NULL),(370,114,11,2,NULL),(371,117,11,2,NULL),(372,155,11,2,NULL),(373,157,11,2,NULL),(374,272,11,2,NULL),(375,274,11,2,NULL),(376,263,11,2,NULL),(377,264,11,2,NULL),(378,262,11,2,NULL),(379,276,11,2,NULL),(380,279,11,2,NULL),(381,283,11,2,NULL),(382,287,11,2,NULL),(383,288,11,2,NULL),(384,289,11,2,NULL),(385,294,11,2,NULL),(386,295,11,2,NULL),(387,22,11,2,NULL),(388,28,16,2,NULL),(389,31,16,2,NULL),(390,61,11,2,NULL),(391,92,11,2,NULL),(392,107,11,2,NULL),(393,70,12,2,NULL),(394,72,12,2,NULL),(395,29,12,2,NULL),(396,49,12,2,NULL),(397,53,12,2,NULL),(398,238,12,2,NULL),(399,111,12,2,NULL),(400,115,12,2,NULL),(401,99,12,2,NULL),(402,258,12,2,NULL),(403,259,12,2,NULL),(404,236,12,2,NULL),(405,170,12,2,NULL),(406,142,12,2,NULL),(407,143,12,2,NULL),(408,52,12,2,NULL),(409,55,12,2,NULL),(410,177,12,2,NULL),(411,65,12,2,NULL),(412,113,12,2,NULL),(413,116,12,2,NULL),(414,150,12,2,NULL),(415,152,12,2,NULL),(416,198,12,2,NULL),(417,200,12,2,NULL),(418,203,12,2,NULL),(419,206,12,2,NULL),(420,124,12,2,NULL),(421,125,12,2,NULL),(422,90,12,2,NULL),(423,192,12,2,NULL),(424,138,12,2,NULL),(425,144,12,2,NULL),(426,114,12,2,NULL),(427,117,12,2,NULL),(428,155,12,2,NULL),(429,157,12,2,NULL),(430,272,12,2,NULL),(431,274,12,2,NULL),(432,263,12,2,NULL),(433,264,12,2,NULL),(434,262,12,2,NULL),(435,276,12,2,NULL),(436,279,12,2,NULL),(437,283,12,2,NULL),(438,287,12,2,NULL),(439,288,12,2,NULL),(440,289,12,2,NULL),(441,294,12,2,NULL),(442,295,12,2,NULL),(443,57,12,2,NULL),(444,70,14,2,NULL),(445,72,14,2,NULL),(446,29,13,2,NULL),(447,49,13,2,NULL),(448,53,13,2,NULL),(449,70,16,2,NULL),(450,72,16,2,NULL),(451,70,17,2,NULL),(452,72,17,2,NULL),(453,238,13,2,NULL),(454,70,29,2,NULL),(455,72,29,2,NULL),(456,70,36,2,NULL),(457,72,36,2,NULL),(458,70,41,2,NULL),(459,72,41,2,NULL),(460,70,46,2,NULL),(461,72,46,2,NULL),(462,70,51,2,NULL),(463,72,51,2,NULL),(464,111,13,2,NULL),(465,115,13,2,NULL),(466,99,13,2,NULL),(467,258,13,2,NULL),(468,259,13,2,NULL),(469,70,58,2,NULL),(470,72,58,2,NULL),(471,70,64,2,NULL),(472,72,64,2,NULL),(473,236,13,2,NULL),(474,70,70,2,NULL),(475,72,70,2,NULL),(476,70,72,2,NULL),(477,72,72,2,NULL),(478,170,13,2,NULL),(479,70,33,2,NULL),(480,72,33,2,NULL),(481,70,38,2,NULL),(482,72,38,2,NULL),(483,70,43,2,NULL),(484,72,43,2,NULL),(485,70,48,2,NULL),(486,72,48,2,NULL),(487,70,53,2,NULL),(488,72,53,2,NULL),(489,142,13,2,NULL),(490,143,13,2,NULL),(491,52,13,2,NULL),(492,55,13,2,NULL),(493,177,13,2,NULL),(494,70,60,2,NULL),(495,72,60,2,NULL),(496,70,65,2,NULL),(497,72,65,2,NULL),(498,65,13,2,NULL),(499,70,71,2,NULL),(500,72,71,2,NULL),(501,70,73,2,NULL),(502,72,73,2,NULL),(503,70,19,2,NULL),(504,72,19,2,NULL),(505,70,24,2,NULL),(506,72,24,2,NULL),(507,70,35,2,NULL),(508,72,35,2,NULL),(509,113,13,2,NULL),(510,116,13,2,NULL),(511,70,40,2,NULL),(512,72,40,2,NULL),(513,150,13,2,NULL),(514,152,13,2,NULL),(515,70,45,2,NULL),(516,72,45,2,NULL),(517,198,13,2,NULL),(518,200,13,2,NULL),(519,203,13,2,NULL),(520,206,13,2,NULL),(521,124,13,2,NULL),(522,125,13,2,NULL),(523,90,13,2,NULL),(524,70,54,2,NULL),(525,72,54,2,NULL),(526,70,62,2,NULL),(527,72,62,2,NULL),(528,70,74,2,NULL),(529,72,74,2,NULL),(530,70,75,2,NULL),(531,72,75,2,NULL),(532,70,25,2,NULL),(533,72,25,2,NULL),(534,192,13,2,NULL),(535,138,13,2,NULL),(536,144,13,2,NULL),(537,70,50,2,NULL),(538,72,50,2,NULL),(539,114,13,2,NULL),(540,117,13,2,NULL),(541,155,13,2,NULL),(542,157,13,2,NULL),(543,70,67,2,NULL),(544,72,67,2,NULL),(545,70,76,2,NULL),(546,72,76,2,NULL),(547,272,13,2,NULL),(548,274,13,2,NULL),(549,263,13,2,NULL),(550,264,13,2,NULL),(551,70,83,2,NULL),(552,72,83,2,NULL),(553,70,84,2,NULL),(554,72,84,2,NULL),(555,262,13,2,NULL),(556,276,13,2,NULL),(557,279,13,2,NULL),(558,283,13,2,NULL),(559,287,13,2,NULL),(560,70,87,2,NULL),(561,72,87,2,NULL),(562,288,13,2,NULL),(563,289,13,2,NULL),(564,294,13,2,NULL),(565,295,13,2,NULL),(566,70,93,2,NULL),(567,72,93,2,NULL),(568,89,11,2,NULL),(569,110,16,2,NULL),(570,29,14,2,NULL),(571,49,14,2,NULL),(572,53,14,2,NULL),(573,238,14,2,NULL),(574,111,14,2,NULL),(575,115,14,2,NULL),(576,99,14,2,NULL),(577,258,14,2,NULL),(578,259,14,2,NULL),(579,236,14,2,NULL),(580,170,14,2,NULL),(581,142,14,2,NULL),(582,143,14,2,NULL),(583,52,14,2,NULL),(584,55,14,2,NULL),(585,177,14,2,NULL),(586,65,14,2,NULL),(587,113,14,2,NULL),(588,116,14,2,NULL),(589,150,14,2,NULL),(590,152,14,2,NULL),(591,198,14,2,NULL),(592,200,14,2,NULL),(593,203,14,2,NULL),(594,206,14,2,NULL),(595,124,14,2,NULL),(596,125,14,2,NULL),(597,90,14,2,NULL),(598,192,14,2,NULL),(599,138,14,2,NULL),(600,144,14,2,NULL),(601,114,14,2,NULL),(602,117,14,2,NULL),(603,155,14,2,NULL),(604,157,14,2,NULL),(605,272,14,2,NULL),(606,274,14,2,NULL),(607,263,14,2,NULL),(608,264,14,2,NULL),(609,262,14,2,NULL),(610,276,14,2,NULL),(611,279,14,2,NULL),(612,283,14,2,NULL),(613,287,14,2,NULL),(614,288,14,2,NULL),(615,289,14,2,NULL),(616,294,14,2,NULL),(617,295,14,2,NULL),(618,25,15,2,NULL),(619,46,12,2,NULL),(620,29,16,2,NULL),(621,49,16,2,NULL),(622,53,16,2,NULL),(623,29,17,2,NULL),(624,49,17,2,NULL),(625,53,17,2,NULL),(626,29,29,2,NULL),(627,49,29,2,NULL),(628,53,29,2,NULL),(629,29,36,2,NULL),(630,49,36,2,NULL),(631,53,36,2,NULL),(632,29,41,2,NULL),(633,49,41,2,NULL),(634,53,41,2,NULL),(635,29,46,2,NULL),(636,49,46,2,NULL),(637,53,46,2,NULL),(638,29,51,2,NULL),(639,49,51,2,NULL),(640,53,51,2,NULL),(641,29,58,2,NULL),(642,49,58,2,NULL),(643,53,58,2,NULL),(644,29,64,2,NULL),(645,49,64,2,NULL),(646,53,64,2,NULL),(647,29,70,2,NULL),(648,49,70,2,NULL),(649,53,70,2,NULL),(650,29,72,2,NULL),(651,49,72,2,NULL),(652,53,72,2,NULL),(653,29,33,2,NULL),(654,49,33,2,NULL),(655,53,33,2,NULL),(656,29,38,2,NULL),(657,49,38,2,NULL),(658,53,38,2,NULL),(659,29,43,2,NULL),(660,49,43,2,NULL),(661,53,43,2,NULL),(662,29,48,2,NULL),(663,49,48,2,NULL),(664,53,48,2,NULL),(665,29,53,2,NULL),(666,49,53,2,NULL),(667,53,53,2,NULL),(668,29,60,2,NULL),(669,49,60,2,NULL),(670,53,60,2,NULL),(671,29,65,2,NULL),(672,49,65,2,NULL),(673,53,65,2,NULL),(674,29,71,2,NULL),(675,49,71,2,NULL),(676,53,71,2,NULL),(677,29,73,2,NULL),(678,49,73,2,NULL),(679,53,73,2,NULL),(680,29,19,2,NULL),(681,49,19,2,NULL),(682,53,19,2,NULL),(683,29,24,2,NULL),(684,49,24,2,NULL),(685,53,24,2,NULL),(686,29,35,2,NULL),(687,49,35,2,NULL),(688,53,35,2,NULL),(689,29,40,2,NULL),(690,49,40,2,NULL),(691,53,40,2,NULL),(692,29,45,2,NULL),(693,49,45,2,NULL),(694,53,45,2,NULL),(695,29,54,2,NULL),(696,49,54,2,NULL),(697,53,54,2,NULL),(698,29,62,2,NULL),(699,49,62,2,NULL),(700,53,62,2,NULL),(701,29,74,2,NULL),(702,49,74,2,NULL),(703,53,74,2,NULL),(704,29,75,2,NULL),(705,49,75,2,NULL),(706,53,75,2,NULL),(707,29,25,2,NULL),(708,49,25,2,NULL),(709,53,25,2,NULL),(710,29,50,2,NULL),(711,49,50,2,NULL),(712,53,50,2,NULL),(713,29,67,2,NULL),(714,49,67,2,NULL),(715,53,67,2,NULL),(716,29,76,2,NULL),(717,49,76,2,NULL),(718,53,76,2,NULL),(719,29,83,2,NULL),(720,49,83,2,NULL),(721,53,83,2,NULL),(722,29,84,2,NULL),(723,49,84,2,NULL),(724,53,84,2,NULL),(725,29,87,2,NULL),(726,49,87,2,NULL),(727,53,87,2,NULL),(728,29,93,2,NULL),(729,49,93,2,NULL),(730,53,93,2,NULL),(731,238,16,2,NULL),(732,111,16,2,NULL),(733,115,16,2,NULL),(734,99,16,2,NULL),(735,258,16,2,NULL),(736,259,16,2,NULL),(737,236,16,2,NULL),(738,170,16,2,NULL),(739,142,16,2,NULL),(740,143,16,2,NULL),(741,52,16,2,NULL),(742,55,16,2,NULL),(743,177,16,2,NULL),(744,65,16,2,NULL),(745,113,16,2,NULL),(746,116,16,2,NULL),(747,150,16,2,NULL),(748,152,16,2,NULL),(749,198,16,2,NULL),(750,200,16,2,NULL),(751,203,16,2,NULL),(752,206,16,2,NULL),(753,124,16,2,NULL),(754,125,16,2,NULL),(755,90,16,2,NULL),(756,192,16,2,NULL),(757,138,16,2,NULL),(758,144,16,2,NULL),(759,114,16,2,NULL),(760,117,16,2,NULL),(761,155,16,2,NULL),(762,157,16,2,NULL),(763,272,16,2,NULL),(764,274,16,2,NULL),(765,263,16,2,NULL),(766,264,16,2,NULL),(767,262,16,2,NULL),(768,276,16,2,NULL),(769,279,16,2,NULL),(770,283,16,2,NULL),(771,287,16,2,NULL),(772,288,16,2,NULL),(773,289,16,2,NULL),(774,294,16,2,NULL),(775,295,16,2,NULL),(776,26,16,2,NULL),(777,30,16,2,NULL),(778,66,16,2,NULL),(779,238,17,2,NULL),(780,111,17,2,NULL),(781,115,17,2,NULL),(782,99,17,2,NULL),(783,258,17,2,NULL),(784,259,17,2,NULL),(785,236,17,2,NULL),(786,170,17,2,NULL),(787,142,17,2,NULL),(788,143,17,2,NULL),(789,52,17,2,NULL),(790,55,17,2,NULL),(791,177,17,2,NULL),(792,65,17,2,NULL),(793,113,17,2,NULL),(794,116,17,2,NULL),(795,150,17,2,NULL),(796,152,17,2,NULL),(797,198,17,2,NULL),(798,200,17,2,NULL),(799,203,17,2,NULL),(800,206,17,2,NULL),(801,124,17,2,NULL),(802,125,17,2,NULL),(803,90,17,2,NULL),(804,192,17,2,NULL),(805,138,17,2,NULL),(806,144,17,2,NULL),(807,114,17,2,NULL),(808,117,17,2,NULL),(809,155,17,2,NULL),(810,157,17,2,NULL),(811,272,17,2,NULL),(812,274,17,2,NULL),(813,263,17,2,NULL),(814,264,17,2,NULL),(815,262,17,2,NULL),(816,276,17,2,NULL),(817,279,17,2,NULL),(818,283,17,2,NULL),(819,287,17,2,NULL),(820,288,17,2,NULL),(821,289,17,2,NULL),(822,294,17,2,NULL),(823,295,17,2,NULL),(824,106,28,2,NULL),(825,186,28,2,NULL),(826,194,39,2,NULL),(827,196,44,2,NULL),(828,197,37,2,NULL),(829,238,25,2,NULL),(830,192,29,2,NULL),(831,192,36,2,NULL),(832,192,41,2,NULL),(833,192,46,2,NULL),(834,192,51,2,NULL),(835,111,25,2,NULL),(836,115,25,2,NULL),(837,99,25,2,NULL),(838,258,25,2,NULL),(839,259,25,2,NULL),(840,192,58,2,NULL),(841,192,64,2,NULL),(842,236,25,2,NULL),(843,192,70,2,NULL),(844,192,72,2,NULL),(845,170,25,2,NULL),(846,192,33,2,NULL),(847,192,38,2,NULL),(848,192,43,2,NULL),(849,192,48,2,NULL),(850,192,53,2,NULL),(851,142,25,2,NULL),(852,143,25,2,NULL),(853,52,25,2,NULL),(854,55,25,2,NULL),(855,177,25,2,NULL),(856,192,60,2,NULL),(857,192,65,2,NULL),(858,65,25,2,NULL),(859,192,71,2,NULL),(860,192,73,2,NULL),(861,192,19,2,NULL),(862,192,24,2,NULL),(863,192,35,2,NULL),(864,113,25,2,NULL),(865,116,25,2,NULL),(866,192,40,2,NULL),(867,150,25,2,NULL),(868,152,25,2,NULL),(869,192,45,2,NULL),(870,198,25,2,NULL),(871,200,25,2,NULL),(872,203,25,2,NULL),(873,206,25,2,NULL),(874,124,25,2,NULL),(875,125,25,2,NULL),(876,90,25,2,NULL),(877,192,54,2,NULL),(878,192,62,2,NULL),(879,192,74,2,NULL),(880,192,75,2,NULL),(881,138,25,2,NULL),(882,144,25,2,NULL),(883,192,50,2,NULL),(884,114,25,2,NULL),(885,117,25,2,NULL),(886,155,25,2,NULL),(887,157,25,2,NULL),(888,192,67,2,NULL),(889,192,76,2,NULL),(890,272,25,2,NULL),(891,274,25,2,NULL),(892,263,25,2,NULL),(893,264,25,2,NULL),(894,192,83,2,NULL),(895,192,84,2,NULL),(896,262,25,2,NULL),(897,276,25,2,NULL),(898,279,25,2,NULL),(899,283,25,2,NULL),(900,287,25,2,NULL),(901,192,87,2,NULL),(902,288,25,2,NULL),(903,289,25,2,NULL),(904,294,25,2,NULL),(905,295,25,2,NULL),(906,192,93,2,NULL),(907,138,29,2,NULL),(908,144,29,2,NULL),(909,138,36,2,NULL),(910,144,36,2,NULL),(911,138,41,2,NULL),(912,144,41,2,NULL),(913,138,46,2,NULL),(914,144,46,2,NULL),(915,138,51,2,NULL),(916,144,51,2,NULL),(917,138,58,2,NULL),(918,144,58,2,NULL),(919,138,64,2,NULL),(920,144,64,2,NULL),(921,138,70,2,NULL),(922,144,70,2,NULL),(923,138,72,2,NULL),(924,144,72,2,NULL),(925,138,33,2,NULL),(926,144,33,2,NULL),(927,138,38,2,NULL),(928,144,38,2,NULL),(929,138,43,2,NULL),(930,144,43,2,NULL),(931,138,48,2,NULL),(932,144,48,2,NULL),(933,138,53,2,NULL),(934,144,53,2,NULL),(935,138,60,2,NULL),(936,144,60,2,NULL),(937,138,65,2,NULL),(938,144,65,2,NULL),(939,138,71,2,NULL),(940,144,71,2,NULL),(941,138,73,2,NULL),(942,144,73,2,NULL),(943,138,19,2,NULL),(944,144,19,2,NULL),(945,138,24,2,NULL),(946,144,24,2,NULL),(947,138,35,2,NULL),(948,144,35,2,NULL),(949,138,40,2,NULL),(950,144,40,2,NULL),(951,138,45,2,NULL),(952,144,45,2,NULL),(953,138,54,2,NULL),(954,144,54,2,NULL),(955,138,62,2,NULL),(956,144,62,2,NULL),(957,138,74,2,NULL),(958,144,74,2,NULL),(959,138,75,2,NULL),(960,144,75,2,NULL),(961,138,50,2,NULL),(962,144,50,2,NULL),(963,138,67,2,NULL),(964,144,67,2,NULL),(965,138,76,2,NULL),(966,144,76,2,NULL),(967,138,83,2,NULL),(968,144,83,2,NULL),(969,138,84,2,NULL),(970,144,84,2,NULL),(971,138,87,2,NULL),(972,144,87,2,NULL),(973,138,93,2,NULL),(974,144,93,2,NULL),(975,165,34,2,NULL),(976,127,42,2,NULL),(977,226,39,2,NULL),(978,201,37,2,NULL),(979,151,56,2,NULL),(980,224,56,2,NULL),(981,238,50,2,NULL),(982,111,50,2,NULL),(983,115,50,2,NULL),(984,99,50,2,NULL),(985,258,50,2,NULL),(986,259,50,2,NULL),(987,236,50,2,NULL),(988,170,50,2,NULL),(989,142,50,2,NULL),(990,143,50,2,NULL),(991,52,50,2,NULL),(992,55,50,2,NULL),(993,177,50,2,NULL),(994,65,50,2,NULL),(995,113,50,2,NULL),(996,116,50,2,NULL),(997,150,50,2,NULL),(998,152,50,2,NULL),(999,198,50,2,NULL),(1000,200,50,2,NULL),(1001,203,50,2,NULL),(1002,206,50,2,NULL),(1003,124,50,2,NULL),(1004,125,50,2,NULL),(1005,90,50,2,NULL),(1006,114,50,2,NULL),(1007,117,50,2,NULL),(1008,155,50,2,NULL),(1009,157,50,2,NULL),(1010,272,50,2,NULL),(1011,274,50,2,NULL),(1012,263,50,2,NULL),(1013,264,50,2,NULL),(1014,262,50,2,NULL),(1015,276,50,2,NULL),(1016,279,50,2,NULL),(1017,283,50,2,NULL),(1018,287,50,2,NULL),(1019,288,50,2,NULL),(1020,289,50,2,NULL),(1021,294,50,2,NULL),(1022,295,50,2,NULL),(1023,168,25,2,NULL),(1024,182,25,2,NULL),(1025,217,25,2,NULL),(1026,221,25,2,NULL),(1027,114,29,2,NULL),(1028,117,29,2,NULL),(1029,155,29,2,NULL),(1030,157,29,2,NULL),(1031,114,36,2,NULL),(1032,117,36,2,NULL),(1033,155,36,2,NULL),(1034,157,36,2,NULL),(1035,114,41,2,NULL),(1036,117,41,2,NULL),(1037,155,41,2,NULL),(1038,157,41,2,NULL),(1039,114,46,2,NULL),(1040,117,46,2,NULL),(1041,155,46,2,NULL),(1042,157,46,2,NULL),(1043,114,51,2,NULL),(1044,117,51,2,NULL),(1045,155,51,2,NULL),(1046,157,51,2,NULL),(1047,114,58,2,NULL),(1048,117,58,2,NULL),(1049,155,58,2,NULL),(1050,157,58,2,NULL),(1051,114,64,2,NULL),(1052,117,64,2,NULL),(1053,155,64,2,NULL),(1054,157,64,2,NULL),(1055,114,70,2,NULL),(1056,117,70,2,NULL),(1057,155,70,2,NULL),(1058,157,70,2,NULL),(1059,114,72,2,NULL),(1060,117,72,2,NULL),(1061,155,72,2,NULL),(1062,157,72,2,NULL),(1063,114,33,2,NULL),(1064,117,33,2,NULL),(1065,155,33,2,NULL),(1066,157,33,2,NULL),(1067,114,38,2,NULL),(1068,117,38,2,NULL),(1069,155,38,2,NULL),(1070,157,38,2,NULL),(1071,114,43,2,NULL),(1072,117,43,2,NULL),(1073,155,43,2,NULL),(1074,157,43,2,NULL),(1075,114,48,2,NULL),(1076,117,48,2,NULL),(1077,155,48,2,NULL),(1078,157,48,2,NULL),(1079,114,53,2,NULL),(1080,117,53,2,NULL),(1081,155,53,2,NULL),(1082,157,53,2,NULL),(1083,114,60,2,NULL),(1084,117,60,2,NULL),(1085,155,60,2,NULL),(1086,157,60,2,NULL),(1087,114,65,2,NULL),(1088,117,65,2,NULL),(1089,155,65,2,NULL),(1090,157,65,2,NULL),(1091,114,71,2,NULL),(1092,117,71,2,NULL),(1093,155,71,2,NULL),(1094,157,71,2,NULL),(1095,114,73,2,NULL),(1096,117,73,2,NULL),(1097,155,73,2,NULL),(1098,157,73,2,NULL),(1099,114,19,2,NULL),(1100,117,19,2,NULL),(1101,155,19,2,NULL),(1102,157,19,2,NULL),(1103,114,24,2,NULL),(1104,117,24,2,NULL),(1105,155,24,2,NULL),(1106,157,24,2,NULL),(1107,114,35,2,NULL),(1108,117,35,2,NULL),(1109,155,35,2,NULL),(1110,157,35,2,NULL),(1111,114,40,2,NULL),(1112,117,40,2,NULL),(1113,155,40,2,NULL),(1114,157,40,2,NULL),(1115,114,45,2,NULL),(1116,117,45,2,NULL),(1117,155,45,2,NULL),(1118,157,45,2,NULL),(1119,114,54,2,NULL),(1120,117,54,2,NULL),(1121,155,54,2,NULL),(1122,157,54,2,NULL),(1123,114,62,2,NULL),(1124,117,62,2,NULL),(1125,155,62,2,NULL),(1126,157,62,2,NULL),(1127,114,74,2,NULL),(1128,117,74,2,NULL),(1129,155,74,2,NULL),(1130,157,74,2,NULL),(1131,114,75,2,NULL),(1132,117,75,2,NULL),(1133,155,75,2,NULL),(1134,157,75,2,NULL),(1135,114,67,2,NULL),(1136,117,67,2,NULL),(1137,155,67,2,NULL),(1138,157,67,2,NULL),(1139,114,76,2,NULL),(1140,117,76,2,NULL),(1141,155,76,2,NULL),(1142,157,76,2,NULL),(1143,114,83,2,NULL),(1144,117,83,2,NULL),(1145,155,83,2,NULL),(1146,157,83,2,NULL),(1147,114,84,2,NULL),(1148,117,84,2,NULL),(1149,155,84,2,NULL),(1150,157,84,2,NULL),(1151,114,87,2,NULL),(1152,117,87,2,NULL),(1153,155,87,2,NULL),(1154,157,87,2,NULL),(1155,114,93,2,NULL),(1156,117,93,2,NULL),(1157,155,93,2,NULL),(1158,157,93,2,NULL),(1159,120,59,2,NULL),(1160,238,67,2,NULL),(1161,111,67,2,NULL),(1162,115,67,2,NULL),(1163,99,67,2,NULL),(1164,258,67,2,NULL),(1165,259,67,2,NULL),(1166,236,67,2,NULL),(1167,170,67,2,NULL),(1168,142,67,2,NULL),(1169,143,67,2,NULL),(1170,52,67,2,NULL),(1171,55,67,2,NULL),(1172,177,67,2,NULL),(1173,65,67,2,NULL),(1174,113,67,2,NULL),(1175,116,67,2,NULL),(1176,150,67,2,NULL),(1177,152,67,2,NULL),(1178,198,67,2,NULL),(1179,200,67,2,NULL),(1180,203,67,2,NULL),(1181,206,67,2,NULL),(1182,124,67,2,NULL),(1183,125,67,2,NULL),(1184,90,67,2,NULL),(1185,272,67,2,NULL),(1186,274,67,2,NULL),(1187,263,67,2,NULL),(1188,264,67,2,NULL),(1189,262,67,2,NULL),(1190,276,67,2,NULL),(1191,279,67,2,NULL),(1192,283,67,2,NULL),(1193,287,67,2,NULL),(1194,288,67,2,NULL),(1195,289,67,2,NULL),(1196,294,67,2,NULL),(1197,295,67,2,NULL),(1198,132,70,2,NULL),(1199,135,70,2,NULL),(1200,244,70,2,NULL),(1201,81,70,2,NULL),(1202,253,70,2,NULL),(1203,255,70,2,NULL),(1204,126,46,2,NULL),(1205,240,18,2,NULL),(1206,238,29,2,NULL),(1207,238,36,2,NULL),(1208,238,41,2,NULL),(1209,238,46,2,NULL),(1210,238,51,2,NULL),(1211,238,58,2,NULL),(1212,238,64,2,NULL),(1213,238,70,2,NULL),(1214,238,72,2,NULL),(1215,238,33,2,NULL),(1216,238,38,2,NULL),(1217,238,43,2,NULL),(1218,238,48,2,NULL),(1219,238,53,2,NULL),(1220,238,60,2,NULL),(1221,238,65,2,NULL),(1222,238,71,2,NULL),(1223,238,73,2,NULL),(1224,238,19,2,NULL),(1225,238,24,2,NULL),(1226,238,35,2,NULL),(1227,238,40,2,NULL),(1228,238,45,2,NULL),(1229,238,54,2,NULL),(1230,238,62,2,NULL),(1231,238,74,2,NULL),(1232,238,75,2,NULL),(1233,238,76,2,NULL),(1234,238,83,2,NULL),(1235,238,84,2,NULL),(1236,238,87,2,NULL),(1237,238,93,2,NULL),(1238,101,46,2,NULL),(1239,122,70,2,NULL),(1240,111,29,2,NULL),(1241,115,29,2,NULL),(1242,99,29,2,NULL),(1243,258,29,2,NULL),(1244,259,29,2,NULL),(1245,236,29,2,NULL),(1246,170,29,2,NULL),(1247,142,29,2,NULL),(1248,143,29,2,NULL),(1249,52,29,2,NULL),(1250,55,29,2,NULL),(1251,177,29,2,NULL),(1252,65,29,2,NULL),(1253,113,29,2,NULL),(1254,116,29,2,NULL),(1255,150,29,2,NULL),(1256,152,29,2,NULL),(1257,198,29,2,NULL),(1258,200,29,2,NULL),(1259,203,29,2,NULL),(1260,206,29,2,NULL),(1261,124,29,2,NULL),(1262,125,29,2,NULL),(1263,90,29,2,NULL),(1264,272,29,2,NULL),(1265,274,29,2,NULL),(1266,263,29,2,NULL),(1267,264,29,2,NULL),(1268,262,29,2,NULL),(1269,276,29,2,NULL),(1270,279,29,2,NULL),(1271,283,29,2,NULL),(1272,287,29,2,NULL),(1273,288,29,2,NULL),(1274,289,29,2,NULL),(1275,294,29,2,NULL),(1276,295,29,2,NULL),(1277,58,46,2,NULL),(1278,249,70,2,NULL),(1279,111,36,2,NULL),(1280,115,36,2,NULL),(1281,99,36,2,NULL),(1282,258,36,2,NULL),(1283,259,36,2,NULL),(1284,236,36,2,NULL),(1285,170,36,2,NULL),(1286,142,36,2,NULL),(1287,143,36,2,NULL),(1288,52,36,2,NULL),(1289,55,36,2,NULL),(1290,177,36,2,NULL),(1291,65,36,2,NULL),(1292,113,36,2,NULL),(1293,116,36,2,NULL),(1294,150,36,2,NULL),(1295,152,36,2,NULL),(1296,198,36,2,NULL),(1297,200,36,2,NULL),(1298,203,36,2,NULL),(1299,206,36,2,NULL),(1300,124,36,2,NULL),(1301,125,36,2,NULL),(1302,90,36,2,NULL),(1303,272,36,2,NULL),(1304,274,36,2,NULL),(1305,263,36,2,NULL),(1306,264,36,2,NULL),(1307,262,36,2,NULL),(1308,276,36,2,NULL),(1309,279,36,2,NULL),(1310,283,36,2,NULL),(1311,287,36,2,NULL),(1312,288,36,2,NULL),(1313,289,36,2,NULL),(1314,294,36,2,NULL),(1315,295,36,2,NULL),(1316,212,70,2,NULL),(1317,111,41,2,NULL),(1318,115,41,2,NULL),(1319,99,41,2,NULL),(1320,258,41,2,NULL),(1321,259,41,2,NULL),(1322,236,41,2,NULL),(1323,170,41,2,NULL),(1324,142,41,2,NULL),(1325,143,41,2,NULL),(1326,52,41,2,NULL),(1327,55,41,2,NULL),(1328,177,41,2,NULL),(1329,65,41,2,NULL),(1330,113,41,2,NULL),(1331,116,41,2,NULL),(1332,150,41,2,NULL),(1333,152,41,2,NULL),(1334,198,41,2,NULL),(1335,200,41,2,NULL),(1336,203,41,2,NULL),(1337,206,41,2,NULL),(1338,124,41,2,NULL),(1339,125,41,2,NULL),(1340,90,41,2,NULL),(1341,272,41,2,NULL),(1342,274,41,2,NULL),(1343,263,41,2,NULL),(1344,264,41,2,NULL),(1345,262,41,2,NULL),(1346,276,41,2,NULL),(1347,279,41,2,NULL),(1348,283,41,2,NULL),(1349,287,41,2,NULL),(1350,288,41,2,NULL),(1351,289,41,2,NULL),(1352,294,41,2,NULL),(1353,295,41,2,NULL),(1354,63,18,2,NULL),(1355,234,18,2,NULL),(1356,256,70,2,NULL),(1357,111,46,2,NULL),(1358,115,46,2,NULL),(1359,99,46,2,NULL),(1360,258,46,2,NULL),(1361,259,46,2,NULL),(1362,236,46,2,NULL),(1363,170,46,2,NULL),(1364,142,46,2,NULL),(1365,143,46,2,NULL),(1366,52,46,2,NULL),(1367,55,46,2,NULL),(1368,177,46,2,NULL),(1369,65,46,2,NULL),(1370,113,46,2,NULL),(1371,116,46,2,NULL),(1372,150,46,2,NULL),(1373,152,46,2,NULL),(1374,198,46,2,NULL),(1375,200,46,2,NULL),(1376,203,46,2,NULL),(1377,206,46,2,NULL),(1378,124,46,2,NULL),(1379,125,46,2,NULL),(1380,90,46,2,NULL),(1381,272,46,2,NULL),(1382,274,46,2,NULL),(1383,263,46,2,NULL),(1384,264,46,2,NULL),(1385,262,46,2,NULL),(1386,276,46,2,NULL),(1387,279,46,2,NULL),(1388,283,46,2,NULL),(1389,287,46,2,NULL),(1390,288,46,2,NULL),(1391,289,46,2,NULL),(1392,294,46,2,NULL),(1393,295,46,2,NULL),(1394,250,46,2,NULL),(1395,99,51,2,NULL),(1396,258,51,2,NULL),(1397,259,51,2,NULL),(1398,111,58,2,NULL),(1399,115,58,2,NULL),(1400,111,64,2,NULL),(1401,115,64,2,NULL),(1402,236,51,2,NULL),(1403,111,70,2,NULL),(1404,115,70,2,NULL),(1405,111,72,2,NULL),(1406,115,72,2,NULL),(1407,170,51,2,NULL),(1408,111,33,2,NULL),(1409,115,33,2,NULL),(1410,111,38,2,NULL),(1411,115,38,2,NULL),(1412,111,43,2,NULL),(1413,115,43,2,NULL),(1414,111,48,2,NULL),(1415,115,48,2,NULL),(1416,111,53,2,NULL),(1417,115,53,2,NULL),(1418,142,51,2,NULL),(1419,143,51,2,NULL),(1420,52,51,2,NULL),(1421,55,51,2,NULL),(1422,177,51,2,NULL),(1423,111,60,2,NULL),(1424,115,60,2,NULL),(1425,111,65,2,NULL),(1426,115,65,2,NULL),(1427,65,51,2,NULL),(1428,111,71,2,NULL),(1429,115,71,2,NULL),(1430,111,73,2,NULL),(1431,115,73,2,NULL),(1432,111,19,2,NULL),(1433,115,19,2,NULL),(1434,111,24,2,NULL),(1435,115,24,2,NULL),(1436,111,35,2,NULL),(1437,115,35,2,NULL),(1438,113,51,2,NULL),(1439,116,51,2,NULL),(1440,111,40,2,NULL),(1441,115,40,2,NULL),(1442,150,51,2,NULL),(1443,152,51,2,NULL),(1444,111,45,2,NULL),(1445,115,45,2,NULL),(1446,198,51,2,NULL),(1447,200,51,2,NULL),(1448,203,51,2,NULL),(1449,206,51,2,NULL),(1450,124,51,2,NULL),(1451,125,51,2,NULL),(1452,90,51,2,NULL),(1453,111,54,2,NULL),(1454,115,54,2,NULL),(1455,111,62,2,NULL),(1456,115,62,2,NULL),(1457,111,74,2,NULL),(1458,115,74,2,NULL),(1459,111,75,2,NULL),(1460,115,75,2,NULL),(1461,111,76,2,NULL),(1462,115,76,2,NULL),(1463,272,51,2,NULL),(1464,274,51,2,NULL),(1465,263,51,2,NULL),(1466,264,51,2,NULL),(1467,111,83,2,NULL),(1468,115,83,2,NULL),(1469,111,84,2,NULL),(1470,115,84,2,NULL),(1471,262,51,2,NULL),(1472,276,51,2,NULL),(1473,279,51,2,NULL),(1474,283,51,2,NULL),(1475,287,51,2,NULL),(1476,111,87,2,NULL),(1477,115,87,2,NULL),(1478,288,51,2,NULL),(1479,289,51,2,NULL),(1480,294,51,2,NULL),(1481,295,51,2,NULL),(1482,111,93,2,NULL),(1483,115,93,2,NULL),(1484,45,55,2,NULL),(1485,184,46,2,NULL),(1486,99,58,2,NULL),(1487,258,58,2,NULL),(1488,259,58,2,NULL),(1489,99,64,2,NULL),(1490,258,64,2,NULL),(1491,259,64,2,NULL),(1492,99,70,2,NULL),(1493,258,70,2,NULL),(1494,259,70,2,NULL),(1495,99,72,2,NULL),(1496,258,72,2,NULL),(1497,259,72,2,NULL),(1498,99,33,2,NULL),(1499,258,33,2,NULL),(1500,259,33,2,NULL),(1501,99,38,2,NULL),(1502,258,38,2,NULL),(1503,259,38,2,NULL),(1504,99,43,2,NULL),(1505,258,43,2,NULL),(1506,259,43,2,NULL),(1507,99,48,2,NULL),(1508,258,48,2,NULL),(1509,259,48,2,NULL),(1510,99,53,2,NULL),(1511,258,53,2,NULL),(1512,259,53,2,NULL),(1513,99,60,2,NULL),(1514,258,60,2,NULL),(1515,259,60,2,NULL),(1516,99,65,2,NULL),(1517,258,65,2,NULL),(1518,259,65,2,NULL),(1519,99,71,2,NULL),(1520,258,71,2,NULL),(1521,259,71,2,NULL),(1522,99,73,2,NULL),(1523,258,73,2,NULL),(1524,259,73,2,NULL),(1525,99,19,2,NULL),(1526,258,19,2,NULL),(1527,259,19,2,NULL),(1528,99,24,2,NULL),(1529,258,24,2,NULL),(1530,259,24,2,NULL),(1531,99,35,2,NULL),(1532,258,35,2,NULL),(1533,259,35,2,NULL),(1534,99,40,2,NULL),(1535,258,40,2,NULL),(1536,259,40,2,NULL),(1537,99,45,2,NULL),(1538,258,45,2,NULL),(1539,259,45,2,NULL),(1540,99,54,2,NULL),(1541,258,54,2,NULL),(1542,259,54,2,NULL),(1543,99,62,2,NULL),(1544,258,62,2,NULL),(1545,259,62,2,NULL),(1546,99,74,2,NULL),(1547,258,74,2,NULL),(1548,259,74,2,NULL),(1549,99,75,2,NULL),(1550,258,75,2,NULL),(1551,259,75,2,NULL),(1552,99,76,2,NULL),(1553,258,76,2,NULL),(1554,259,76,2,NULL),(1555,99,83,2,NULL),(1556,258,83,2,NULL),(1557,259,83,2,NULL),(1558,99,84,2,NULL),(1559,258,84,2,NULL),(1560,259,84,2,NULL),(1561,99,87,2,NULL),(1562,258,87,2,NULL),(1563,259,87,2,NULL),(1564,99,93,2,NULL),(1565,258,93,2,NULL),(1566,259,93,2,NULL),(1567,236,58,2,NULL),(1568,170,58,2,NULL),(1569,142,58,2,NULL),(1570,143,58,2,NULL),(1571,52,58,2,NULL),(1572,55,58,2,NULL),(1573,177,58,2,NULL),(1574,65,58,2,NULL),(1575,113,58,2,NULL),(1576,116,58,2,NULL),(1577,150,58,2,NULL),(1578,152,58,2,NULL),(1579,198,58,2,NULL),(1580,200,58,2,NULL),(1581,203,58,2,NULL),(1582,206,58,2,NULL),(1583,124,58,2,NULL),(1584,125,58,2,NULL),(1585,90,58,2,NULL),(1586,272,58,2,NULL),(1587,274,58,2,NULL),(1588,263,58,2,NULL),(1589,264,58,2,NULL),(1590,262,58,2,NULL),(1591,276,58,2,NULL),(1592,279,58,2,NULL),(1593,283,58,2,NULL),(1594,287,58,2,NULL),(1595,288,58,2,NULL),(1596,289,58,2,NULL),(1597,294,58,2,NULL),(1598,295,58,2,NULL),(1599,149,70,2,NULL),(1600,222,70,2,NULL),(1601,225,70,2,NULL),(1602,236,64,2,NULL),(1603,170,64,2,NULL),(1604,142,64,2,NULL),(1605,143,64,2,NULL),(1606,52,64,2,NULL),(1607,55,64,2,NULL),(1608,177,64,2,NULL),(1609,65,64,2,NULL),(1610,113,64,2,NULL),(1611,116,64,2,NULL),(1612,150,64,2,NULL),(1613,152,64,2,NULL),(1614,198,64,2,NULL),(1615,200,64,2,NULL),(1616,203,64,2,NULL),(1617,206,64,2,NULL),(1618,124,64,2,NULL),(1619,125,64,2,NULL),(1620,90,64,2,NULL),(1621,272,64,2,NULL),(1622,274,64,2,NULL),(1623,263,64,2,NULL),(1624,264,64,2,NULL),(1625,262,64,2,NULL),(1626,276,64,2,NULL),(1627,279,64,2,NULL),(1628,283,64,2,NULL),(1629,287,64,2,NULL),(1630,288,64,2,NULL),(1631,289,64,2,NULL),(1632,294,64,2,NULL),(1633,295,64,2,NULL),(1634,208,46,2,NULL),(1635,236,70,2,NULL),(1636,236,72,2,NULL),(1637,236,33,2,NULL),(1638,236,38,2,NULL),(1639,236,43,2,NULL),(1640,236,48,2,NULL),(1641,236,53,2,NULL),(1642,236,60,2,NULL),(1643,236,65,2,NULL),(1644,236,71,2,NULL),(1645,236,73,2,NULL),(1646,236,19,2,NULL),(1647,236,24,2,NULL),(1648,236,35,2,NULL),(1649,236,40,2,NULL),(1650,236,45,2,NULL),(1651,236,54,2,NULL),(1652,236,62,2,NULL),(1653,236,74,2,NULL),(1654,236,75,2,NULL),(1655,236,76,2,NULL),(1656,236,83,2,NULL),(1657,236,84,2,NULL),(1658,236,87,2,NULL),(1659,236,93,2,NULL),(1660,170,70,2,NULL),(1661,142,70,2,NULL),(1662,143,70,2,NULL),(1663,52,70,2,NULL),(1664,55,70,2,NULL),(1665,177,70,2,NULL),(1666,65,70,2,NULL),(1667,113,70,2,NULL),(1668,116,70,2,NULL),(1669,150,70,2,NULL),(1670,152,70,2,NULL),(1671,198,70,2,NULL),(1672,200,70,2,NULL),(1673,203,70,2,NULL),(1674,206,70,2,NULL),(1675,124,70,2,NULL),(1676,125,70,2,NULL),(1677,90,70,2,NULL),(1678,272,70,2,NULL),(1679,274,70,2,NULL),(1680,263,70,2,NULL),(1681,264,70,2,NULL),(1682,262,70,2,NULL),(1683,276,70,2,NULL),(1684,279,70,2,NULL),(1685,283,70,2,NULL),(1686,287,70,2,NULL),(1687,288,70,2,NULL),(1688,289,70,2,NULL),(1689,294,70,2,NULL),(1690,295,70,2,NULL),(1691,228,70,2,NULL),(1692,231,70,2,NULL),(1693,247,70,2,NULL),(1694,170,72,2,NULL),(1695,142,72,2,NULL),(1696,143,72,2,NULL),(1697,52,72,2,NULL),(1698,55,72,2,NULL),(1699,177,72,2,NULL),(1700,65,72,2,NULL),(1701,113,72,2,NULL),(1702,116,72,2,NULL),(1703,150,72,2,NULL),(1704,152,72,2,NULL),(1705,198,72,2,NULL),(1706,200,72,2,NULL),(1707,203,72,2,NULL),(1708,206,72,2,NULL),(1709,124,72,2,NULL),(1710,125,72,2,NULL),(1711,90,72,2,NULL),(1712,272,72,2,NULL),(1713,274,72,2,NULL),(1714,263,72,2,NULL),(1715,264,72,2,NULL),(1716,262,72,2,NULL),(1717,276,72,2,NULL),(1718,279,72,2,NULL),(1719,283,72,2,NULL),(1720,287,72,2,NULL),(1721,288,72,2,NULL),(1722,289,72,2,NULL),(1723,294,72,2,NULL),(1724,295,72,2,NULL),(1725,94,71,2,NULL),(1726,98,71,2,NULL),(1727,123,71,2,NULL),(1728,118,71,2,NULL),(1729,121,71,2,NULL),(1730,160,71,2,NULL),(1731,83,48,2,NULL),(1732,254,21,2,NULL),(1733,170,33,2,NULL),(1734,170,38,2,NULL),(1735,170,43,2,NULL),(1736,170,48,2,NULL),(1737,170,53,2,NULL),(1738,170,60,2,NULL),(1739,170,65,2,NULL),(1740,170,71,2,NULL),(1741,170,73,2,NULL),(1742,170,19,2,NULL),(1743,170,24,2,NULL),(1744,170,35,2,NULL),(1745,170,40,2,NULL),(1746,170,45,2,NULL),(1747,170,54,2,NULL),(1748,170,62,2,NULL),(1749,170,74,2,NULL),(1750,170,75,2,NULL),(1751,170,76,2,NULL),(1752,170,83,2,NULL),(1753,170,84,2,NULL),(1754,170,87,2,NULL),(1755,170,93,2,NULL),(1756,112,48,2,NULL),(1757,164,71,2,NULL),(1758,142,33,2,NULL),(1759,143,33,2,NULL),(1760,52,33,2,NULL),(1761,55,33,2,NULL),(1762,177,33,2,NULL),(1763,65,33,2,NULL),(1764,113,33,2,NULL),(1765,116,33,2,NULL),(1766,150,33,2,NULL),(1767,152,33,2,NULL),(1768,198,33,2,NULL),(1769,200,33,2,NULL),(1770,203,33,2,NULL),(1771,206,33,2,NULL),(1772,124,33,2,NULL),(1773,125,33,2,NULL),(1774,90,33,2,NULL),(1775,272,33,2,NULL),(1776,274,33,2,NULL),(1777,263,33,2,NULL),(1778,264,33,2,NULL),(1779,262,33,2,NULL),(1780,276,33,2,NULL),(1781,279,33,2,NULL),(1782,283,33,2,NULL),(1783,287,33,2,NULL),(1784,288,33,2,NULL),(1785,289,33,2,NULL),(1786,294,33,2,NULL),(1787,295,33,2,NULL),(1788,109,71,2,NULL),(1789,188,48,2,NULL),(1790,142,38,2,NULL),(1791,143,38,2,NULL),(1792,52,38,2,NULL),(1793,55,38,2,NULL),(1794,177,38,2,NULL),(1795,65,38,2,NULL),(1796,113,38,2,NULL),(1797,116,38,2,NULL),(1798,150,38,2,NULL),(1799,152,38,2,NULL),(1800,198,38,2,NULL),(1801,200,38,2,NULL),(1802,203,38,2,NULL),(1803,206,38,2,NULL),(1804,124,38,2,NULL),(1805,125,38,2,NULL),(1806,90,38,2,NULL),(1807,272,38,2,NULL),(1808,274,38,2,NULL),(1809,263,38,2,NULL),(1810,264,38,2,NULL),(1811,262,38,2,NULL),(1812,276,38,2,NULL),(1813,279,38,2,NULL),(1814,283,38,2,NULL),(1815,287,38,2,NULL),(1816,288,38,2,NULL),(1817,289,38,2,NULL),(1818,294,38,2,NULL),(1819,295,38,2,NULL),(1820,237,71,2,NULL),(1821,142,43,2,NULL),(1822,143,43,2,NULL),(1823,52,43,2,NULL),(1824,55,43,2,NULL),(1825,177,43,2,NULL),(1826,65,43,2,NULL),(1827,113,43,2,NULL),(1828,116,43,2,NULL),(1829,150,43,2,NULL),(1830,152,43,2,NULL),(1831,198,43,2,NULL),(1832,200,43,2,NULL),(1833,203,43,2,NULL),(1834,206,43,2,NULL),(1835,124,43,2,NULL),(1836,125,43,2,NULL),(1837,90,43,2,NULL),(1838,272,43,2,NULL),(1839,274,43,2,NULL),(1840,263,43,2,NULL),(1841,264,43,2,NULL),(1842,262,43,2,NULL),(1843,276,43,2,NULL),(1844,279,43,2,NULL),(1845,283,43,2,NULL),(1846,287,43,2,NULL),(1847,288,43,2,NULL),(1848,289,43,2,NULL),(1849,294,43,2,NULL),(1850,295,43,2,NULL),(1851,166,21,2,NULL),(1852,239,21,2,NULL),(1853,251,71,2,NULL),(1854,142,48,2,NULL),(1855,143,48,2,NULL),(1856,52,48,2,NULL),(1857,55,48,2,NULL),(1858,177,48,2,NULL),(1859,65,48,2,NULL),(1860,113,48,2,NULL),(1861,116,48,2,NULL),(1862,150,48,2,NULL),(1863,152,48,2,NULL),(1864,198,48,2,NULL),(1865,200,48,2,NULL),(1866,203,48,2,NULL),(1867,206,48,2,NULL),(1868,124,48,2,NULL),(1869,125,48,2,NULL),(1870,90,48,2,NULL),(1871,272,48,2,NULL),(1872,274,48,2,NULL),(1873,263,48,2,NULL),(1874,264,48,2,NULL),(1875,262,48,2,NULL),(1876,276,48,2,NULL),(1877,279,48,2,NULL),(1878,283,48,2,NULL),(1879,287,48,2,NULL),(1880,288,48,2,NULL),(1881,289,48,2,NULL),(1882,294,48,2,NULL),(1883,295,48,2,NULL),(1884,219,48,2,NULL),(1885,52,53,2,NULL),(1886,55,53,2,NULL),(1887,177,53,2,NULL),(1888,142,60,2,NULL),(1889,143,60,2,NULL),(1890,142,65,2,NULL),(1891,143,65,2,NULL),(1892,65,53,2,NULL),(1893,142,71,2,NULL),(1894,143,71,2,NULL),(1895,142,73,2,NULL),(1896,143,73,2,NULL),(1897,142,19,2,NULL),(1898,143,19,2,NULL),(1899,142,24,2,NULL),(1900,143,24,2,NULL),(1901,142,35,2,NULL),(1902,143,35,2,NULL),(1903,113,53,2,NULL),(1904,116,53,2,NULL),(1905,142,40,2,NULL),(1906,143,40,2,NULL),(1907,150,53,2,NULL),(1908,152,53,2,NULL),(1909,142,45,2,NULL),(1910,143,45,2,NULL),(1911,198,53,2,NULL),(1912,200,53,2,NULL),(1913,203,53,2,NULL),(1914,206,53,2,NULL),(1915,124,53,2,NULL),(1916,125,53,2,NULL),(1917,90,53,2,NULL),(1918,142,54,2,NULL),(1919,143,54,2,NULL),(1920,142,62,2,NULL),(1921,143,62,2,NULL),(1922,142,74,2,NULL),(1923,143,74,2,NULL),(1924,142,75,2,NULL),(1925,143,75,2,NULL),(1926,142,76,2,NULL),(1927,143,76,2,NULL),(1928,272,53,2,NULL),(1929,274,53,2,NULL),(1930,263,53,2,NULL),(1931,264,53,2,NULL),(1932,142,83,2,NULL),(1933,143,83,2,NULL),(1934,142,84,2,NULL),(1935,143,84,2,NULL),(1936,262,53,2,NULL),(1937,276,53,2,NULL),(1938,279,53,2,NULL),(1939,283,53,2,NULL),(1940,287,53,2,NULL),(1941,142,87,2,NULL),(1942,143,87,2,NULL),(1943,288,53,2,NULL),(1944,289,53,2,NULL),(1945,294,53,2,NULL),(1946,295,53,2,NULL),(1947,142,93,2,NULL),(1948,143,93,2,NULL),(1949,233,57,2,NULL),(1950,243,48,2,NULL),(1951,52,60,2,NULL),(1952,55,60,2,NULL),(1953,177,60,2,NULL),(1954,52,65,2,NULL),(1955,55,65,2,NULL),(1956,177,65,2,NULL),(1957,52,71,2,NULL),(1958,55,71,2,NULL),(1959,177,71,2,NULL),(1960,52,73,2,NULL),(1961,55,73,2,NULL),(1962,177,73,2,NULL),(1963,52,19,2,NULL),(1964,55,19,2,NULL),(1965,177,19,2,NULL),(1966,52,24,2,NULL),(1967,55,24,2,NULL),(1968,177,24,2,NULL),(1969,52,35,2,NULL),(1970,55,35,2,NULL),(1971,177,35,2,NULL),(1972,52,40,2,NULL),(1973,55,40,2,NULL),(1974,177,40,2,NULL),(1975,52,45,2,NULL),(1976,55,45,2,NULL),(1977,177,45,2,NULL),(1978,52,54,2,NULL),(1979,55,54,2,NULL),(1980,177,54,2,NULL),(1981,52,62,2,NULL),(1982,55,62,2,NULL),(1983,177,62,2,NULL),(1984,52,74,2,NULL),(1985,55,74,2,NULL),(1986,177,74,2,NULL),(1987,52,75,2,NULL),(1988,55,75,2,NULL),(1989,177,75,2,NULL),(1990,52,76,2,NULL),(1991,55,76,2,NULL),(1992,177,76,2,NULL),(1993,52,83,2,NULL),(1994,55,83,2,NULL),(1995,177,83,2,NULL),(1996,52,84,2,NULL),(1997,55,84,2,NULL),(1998,177,84,2,NULL),(1999,52,87,2,NULL),(2000,55,87,2,NULL),(2001,177,87,2,NULL),(2002,52,93,2,NULL),(2003,55,93,2,NULL),(2004,177,93,2,NULL),(2005,65,60,2,NULL),(2006,113,60,2,NULL),(2007,116,60,2,NULL),(2008,150,60,2,NULL),(2009,152,60,2,NULL),(2010,198,60,2,NULL),(2011,200,60,2,NULL),(2012,203,60,2,NULL),(2013,206,60,2,NULL),(2014,124,60,2,NULL),(2015,125,60,2,NULL),(2016,90,60,2,NULL),(2017,272,60,2,NULL),(2018,274,60,2,NULL),(2019,263,60,2,NULL),(2020,264,60,2,NULL),(2021,262,60,2,NULL),(2022,276,60,2,NULL),(2023,279,60,2,NULL),(2024,283,60,2,NULL),(2025,287,60,2,NULL),(2026,288,60,2,NULL),(2027,289,60,2,NULL),(2028,294,60,2,NULL),(2029,295,60,2,NULL),(2030,80,71,2,NULL),(2031,199,71,2,NULL),(2032,202,71,2,NULL),(2033,65,65,2,NULL),(2034,113,65,2,NULL),(2035,116,65,2,NULL),(2036,150,65,2,NULL),(2037,152,65,2,NULL),(2038,198,65,2,NULL),(2039,200,65,2,NULL),(2040,203,65,2,NULL),(2041,206,65,2,NULL),(2042,124,65,2,NULL),(2043,125,65,2,NULL),(2044,90,65,2,NULL),(2045,272,65,2,NULL),(2046,274,65,2,NULL),(2047,263,65,2,NULL),(2048,264,65,2,NULL),(2049,262,65,2,NULL),(2050,276,65,2,NULL),(2051,279,65,2,NULL),(2052,283,65,2,NULL),(2053,287,65,2,NULL),(2054,288,65,2,NULL),(2055,289,65,2,NULL),(2056,294,65,2,NULL),(2057,295,65,2,NULL),(2058,230,48,2,NULL),(2059,65,71,2,NULL),(2060,65,73,2,NULL),(2061,65,19,2,NULL),(2062,65,24,2,NULL),(2063,65,35,2,NULL),(2064,65,40,2,NULL),(2065,65,45,2,NULL),(2066,65,54,2,NULL),(2067,65,62,2,NULL),(2068,65,74,2,NULL),(2069,65,75,2,NULL),(2070,65,76,2,NULL),(2071,65,83,2,NULL),(2072,65,84,2,NULL),(2073,65,87,2,NULL),(2074,65,93,2,NULL),(2075,113,71,2,NULL),(2076,116,71,2,NULL),(2077,150,71,2,NULL),(2078,152,71,2,NULL),(2079,198,71,2,NULL),(2080,200,71,2,NULL),(2081,203,71,2,NULL),(2082,206,71,2,NULL),(2083,124,71,2,NULL),(2084,125,71,2,NULL),(2085,90,71,2,NULL),(2086,272,71,2,NULL),(2087,274,71,2,NULL),(2088,263,71,2,NULL),(2089,264,71,2,NULL),(2090,262,71,2,NULL),(2091,276,71,2,NULL),(2092,279,71,2,NULL),(2093,283,71,2,NULL),(2094,113,76,2,NULL),(2095,287,71,2,NULL),(2096,116,76,2,NULL),(2097,288,71,2,NULL),(2098,150,76,2,NULL),(2099,289,71,2,NULL),(2100,152,76,2,NULL),(2101,294,71,2,NULL),(2102,198,76,2,NULL),(2103,295,71,2,NULL),(2104,200,76,2,NULL),(2105,131,71,2,NULL),(2106,203,76,2,NULL),(2107,136,71,2,NULL),(2108,206,76,2,NULL),(2109,180,71,2,NULL),(2110,124,76,2,NULL),(2111,113,73,2,NULL),(2112,125,76,2,NULL),(2113,116,73,2,NULL),(2114,90,76,2,NULL),(2115,150,73,2,NULL),(2116,272,76,2,NULL),(2117,152,73,2,NULL),(2118,274,76,2,NULL),(2119,198,73,2,NULL),(2120,263,76,2,NULL),(2121,200,73,2,NULL),(2122,264,76,2,NULL),(2123,203,73,2,NULL),(2124,262,76,2,NULL),(2125,206,73,2,NULL),(2126,276,76,2,NULL),(2127,124,73,2,NULL),(2128,279,76,2,NULL),(2129,125,73,2,NULL),(2130,283,76,2,NULL),(2131,90,73,2,NULL),(2132,287,76,2,NULL),(2133,272,73,2,NULL),(2134,288,76,2,NULL),(2135,274,73,2,NULL),(2136,289,76,2,NULL),(2137,263,73,2,NULL),(2138,294,76,2,NULL),(2139,264,73,2,NULL),(2140,295,76,2,NULL),(2141,262,73,2,NULL),(2142,276,73,2,NULL),(2143,272,19,2,NULL),(2144,279,73,2,NULL),(2145,274,19,2,NULL),(2146,283,73,2,NULL),(2147,272,24,2,NULL),(2148,287,73,2,NULL),(2149,274,24,2,NULL),(2150,288,73,2,NULL),(2151,272,35,2,NULL),(2152,289,73,2,NULL),(2153,274,35,2,NULL),(2154,294,73,2,NULL),(2155,272,40,2,NULL),(2156,295,73,2,NULL),(2157,274,40,2,NULL),(2158,272,45,2,NULL),(2159,274,45,2,NULL),(2160,272,54,2,NULL),(2161,274,54,2,NULL),(2162,272,62,2,NULL),(2163,274,62,2,NULL),(2164,272,74,2,NULL),(2165,274,74,2,NULL),(2166,272,75,2,NULL),(2167,274,75,2,NULL),(2168,272,83,2,NULL),(2169,274,83,2,NULL),(2170,272,84,2,NULL),(2171,274,84,2,NULL),(2172,272,87,2,NULL),(2173,274,87,2,NULL),(2174,272,93,2,NULL),(2175,274,93,2,NULL),(2176,263,19,2,NULL),(2177,264,19,2,NULL),(2178,263,24,2,NULL),(2179,264,24,2,NULL),(2180,263,35,2,NULL),(2181,264,35,2,NULL),(2182,263,40,2,NULL),(2183,264,40,2,NULL),(2184,263,45,2,NULL),(2185,264,45,2,NULL),(2186,263,54,2,NULL),(2187,264,54,2,NULL),(2188,263,62,2,NULL),(2189,264,62,2,NULL),(2190,263,74,2,NULL),(2191,264,74,2,NULL),(2192,263,75,2,NULL),(2193,264,75,2,NULL),(2194,263,83,2,NULL),(2195,264,83,2,NULL),(2196,263,84,2,NULL),(2197,264,84,2,NULL),(2198,263,87,2,NULL),(2199,264,87,2,NULL),(2200,263,93,2,NULL),(2201,264,93,2,NULL),(2202,113,83,2,NULL),(2203,116,83,2,NULL),(2204,150,83,2,NULL),(2205,152,83,2,NULL),(2206,198,83,2,NULL),(2207,200,83,2,NULL),(2208,203,83,2,NULL),(2209,206,83,2,NULL),(2210,124,83,2,NULL),(2211,125,83,2,NULL),(2212,90,83,2,NULL),(2213,262,83,2,NULL),(2214,276,83,2,NULL),(2215,279,83,2,NULL),(2216,283,83,2,NULL),(2217,287,83,2,NULL),(2218,288,83,2,NULL),(2219,289,83,2,NULL),(2220,294,83,2,NULL),(2221,295,83,2,NULL),(2222,113,84,2,NULL),(2223,116,84,2,NULL),(2224,150,84,2,NULL),(2225,152,84,2,NULL),(2226,198,84,2,NULL),(2227,200,84,2,NULL),(2228,203,84,2,NULL),(2229,206,84,2,NULL),(2230,124,84,2,NULL),(2231,125,84,2,NULL),(2232,90,84,2,NULL),(2233,262,84,2,NULL),(2234,276,84,2,NULL),(2235,279,84,2,NULL),(2236,283,84,2,NULL),(2237,287,84,2,NULL),(2238,288,84,2,NULL),(2239,289,84,2,NULL),(2240,294,84,2,NULL),(2241,295,84,2,NULL),(2242,292,85,2,NULL),(2243,293,85,2,NULL),(2244,262,19,2,NULL),(2245,276,19,2,NULL),(2246,279,19,2,NULL),(2247,283,19,2,NULL),(2248,287,19,2,NULL),(2249,262,24,2,NULL),(2250,276,24,2,NULL),(2251,279,24,2,NULL),(2252,283,24,2,NULL),(2253,287,24,2,NULL),(2254,262,35,2,NULL),(2255,276,35,2,NULL),(2256,279,35,2,NULL),(2257,283,35,2,NULL),(2258,287,35,2,NULL),(2259,262,40,2,NULL),(2260,276,40,2,NULL),(2261,279,40,2,NULL),(2262,283,40,2,NULL),(2263,287,40,2,NULL),(2264,262,45,2,NULL),(2265,276,45,2,NULL),(2266,279,45,2,NULL),(2267,283,45,2,NULL),(2268,287,45,2,NULL),(2269,262,54,2,NULL),(2270,276,54,2,NULL),(2271,279,54,2,NULL),(2272,283,54,2,NULL),(2273,287,54,2,NULL),(2274,262,62,2,NULL),(2275,276,62,2,NULL),(2276,279,62,2,NULL),(2277,283,62,2,NULL),(2278,287,62,2,NULL),(2279,262,74,2,NULL),(2280,276,74,2,NULL),(2281,279,74,2,NULL),(2282,283,74,2,NULL),(2283,287,74,2,NULL),(2284,262,75,2,NULL),(2285,276,75,2,NULL),(2286,279,75,2,NULL),(2287,283,75,2,NULL),(2288,287,75,2,NULL),(2289,262,87,2,NULL),(2290,276,87,2,NULL),(2291,279,87,2,NULL),(2292,283,87,2,NULL),(2293,287,87,2,NULL),(2294,113,19,2,NULL),(2295,262,93,2,NULL),(2296,116,19,2,NULL),(2297,276,93,2,NULL),(2298,150,19,2,NULL),(2299,279,93,2,NULL),(2300,152,19,2,NULL),(2301,283,93,2,NULL),(2302,198,19,2,NULL),(2303,287,93,2,NULL),(2304,200,19,2,NULL),(2305,280,88,2,NULL),(2306,203,19,2,NULL),(2307,296,88,2,NULL),(2308,206,19,2,NULL),(2309,113,87,2,NULL),(2310,124,19,2,NULL),(2311,116,87,2,NULL),(2312,125,19,2,NULL),(2313,150,87,2,NULL),(2314,90,19,2,NULL),(2315,152,87,2,NULL),(2316,288,19,2,NULL),(2317,198,87,2,NULL),(2318,289,19,2,NULL),(2319,200,87,2,NULL),(2320,294,19,2,NULL),(2321,203,87,2,NULL),(2322,295,19,2,NULL),(2323,206,87,2,NULL),(2324,79,54,2,NULL),(2325,124,87,2,NULL),(2326,86,54,2,NULL),(2327,125,87,2,NULL),(2328,113,24,2,NULL),(2329,90,87,2,NULL),(2330,116,24,2,NULL),(2331,288,87,2,NULL),(2332,150,24,2,NULL),(2333,289,87,2,NULL),(2334,152,24,2,NULL),(2335,294,87,2,NULL),(2336,198,24,2,NULL),(2337,295,87,2,NULL),(2338,200,24,2,NULL),(2339,275,76,2,NULL),(2340,203,24,2,NULL),(2341,282,76,2,NULL),(2342,206,24,2,NULL),(2343,284,76,2,NULL),(2344,124,24,2,NULL),(2345,291,76,2,NULL),(2346,125,24,2,NULL),(2347,90,24,2,NULL),(2348,288,24,2,NULL),(2349,289,24,2,NULL),(2350,294,24,2,NULL),(2351,295,24,2,NULL),(2352,288,35,2,NULL),(2353,43,19,2,NULL),(2354,289,35,2,NULL),(2355,44,54,2,NULL),(2356,294,35,2,NULL),(2357,174,54,2,NULL),(2358,295,35,2,NULL),(2359,288,40,2,NULL),(2360,289,40,2,NULL),(2361,113,40,2,NULL),(2362,294,40,2,NULL),(2363,116,40,2,NULL),(2364,295,40,2,NULL),(2365,150,35,2,NULL),(2366,288,45,2,NULL),(2367,152,35,2,NULL),(2368,289,45,2,NULL),(2369,113,45,2,NULL),(2370,294,45,2,NULL),(2371,116,45,2,NULL),(2372,295,45,2,NULL),(2373,198,35,2,NULL),(2374,288,54,2,NULL),(2375,200,35,2,NULL),(2376,289,54,2,NULL),(2377,203,35,2,NULL),(2378,294,54,2,NULL),(2379,206,35,2,NULL),(2380,295,54,2,NULL),(2381,124,35,2,NULL),(2382,288,62,2,NULL),(2383,125,35,2,NULL),(2384,289,62,2,NULL),(2385,90,35,2,NULL),(2386,294,62,2,NULL),(2387,113,54,2,NULL),(2388,295,62,2,NULL),(2389,116,54,2,NULL),(2390,288,74,2,NULL),(2391,113,62,2,NULL),(2392,289,74,2,NULL),(2393,116,62,2,NULL),(2394,294,74,2,NULL),(2395,113,74,2,NULL),(2396,295,74,2,NULL),(2397,116,74,2,NULL),(2398,288,75,2,NULL),(2399,113,75,2,NULL),(2400,289,75,2,NULL),(2401,116,75,2,NULL),(2402,294,75,2,NULL),(2403,113,93,2,NULL),(2404,295,75,2,NULL),(2405,116,93,2,NULL),(2406,288,93,2,NULL),(2407,213,35,2,NULL),(2408,289,93,2,NULL),(2409,215,35,2,NULL),(2410,294,93,2,NULL),(2411,218,35,2,NULL),(2412,295,93,2,NULL),(2413,285,89,2,NULL),(2414,150,45,2,NULL),(2415,150,93,2,NULL),(2416,152,45,2,NULL),(2417,152,93,2,NULL),(2418,198,40,2,NULL),(2419,198,93,2,NULL),(2420,200,40,2,NULL),(2421,200,93,2,NULL),(2422,203,40,2,NULL),(2423,203,93,2,NULL),(2424,206,40,2,NULL),(2425,206,93,2,NULL),(2426,124,40,2,NULL),(2427,124,93,2,NULL),(2428,125,40,2,NULL),(2429,125,93,2,NULL),(2430,90,40,2,NULL),(2431,90,93,2,NULL),(2432,150,54,2,NULL),(2433,152,54,2,NULL),(2434,150,62,2,NULL),(2435,152,62,2,NULL),(2436,150,74,2,NULL),(2437,152,74,2,NULL),(2438,150,75,2,NULL),(2439,152,75,2,NULL),(2440,146,54,2,NULL),(2441,124,45,2,NULL),(2442,125,45,2,NULL),(2443,90,45,2,NULL),(2444,198,54,2,NULL),(2445,200,54,2,NULL),(2446,203,54,2,NULL),(2447,206,54,2,NULL),(2448,198,62,2,NULL),(2449,200,62,2,NULL),(2450,203,62,2,NULL),(2451,206,62,2,NULL),(2452,198,74,2,NULL),(2453,200,74,2,NULL),(2454,203,74,2,NULL),(2455,206,74,2,NULL),(2456,198,75,2,NULL),(2457,200,75,2,NULL),(2458,203,75,2,NULL),(2459,206,75,2,NULL),(2460,140,35,2,NULL),(2461,124,54,2,NULL),(2462,125,54,2,NULL),(2463,124,62,2,NULL),(2464,125,62,2,NULL),(2465,124,74,2,NULL),(2466,125,74,2,NULL),(2467,124,75,2,NULL),(2468,125,75,2,NULL),(2469,40,54,2,NULL),(2470,90,54,2,NULL),(2471,90,62,2,NULL),(2472,90,74,2,NULL),(2473,90,75,2,NULL),(2474,71,54,2,NULL),(2475,75,54,2,NULL),(2476,137,54,2,NULL),(2477,167,54,2,NULL),(2478,169,54,2,NULL);
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

-- Dump completed on 2015-10-12  3:30:23
