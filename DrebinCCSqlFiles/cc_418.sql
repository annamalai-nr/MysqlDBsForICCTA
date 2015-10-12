-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_418
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (20,'(.*)'),(12,'.ImageTestActivity'),(11,'.Myhall'),(17,'.Web'),(2,'android.intent.action.BOOT_COMPLETED'),(23,'android.intent.action.CHOOSER'),(21,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(9,'android.intent.action.PACKAGE_ADDED'),(13,'android.intent.action.PACKAGE_REMOVED'),(19,'android.intent.action.SCREEN_OFF'),(5,'android.intent.action.USER_PRESENT'),(6,'android.intent.action.VIEW'),(3,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(8,'com.atlasbeautiful.GameBootReceiver'),(16,'com.atlasbeautiful.ImageTestActivity'),(10,'com.atlasbeautiful.Myhall'),(18,'com.atlasbeautiful.Web'),(15,'com.petdog.GameBootReceiver'),(14,'com.petdog.ImageTestActivity'),(22,'com.petdog.Myhall'),(24,'com.petdog.Web'),(4,'com.simpleg.ragingthunder.action.timeup'),(7,'sut.kapcbdpah.AsVOPnvfA12');
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
INSERT INTO `Applications` VALUES (1,'com.petdog',10019),(2,'sut.kapcbdpah',10001),(3,'com.irjauelk.nrcsupidlodvl',10026),(4,'com.atlasbeautiful',10019),(5,'com.amilwne.weceu.krtwkhqq.nqkqwb',10021),(6,'com.mfviq.hvkiun',10038),(7,'com.qjaoh.tjdluh',10033);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.HOME'),(4,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(3,'android.intent.categroy.DEFUAULT');
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
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.petdog.Myhall'),(2,1,'com.petdog.Web'),(3,3,'com.polarbit.ragingthunder.ragingthunder'),(4,2,'sut.kapcbdpah.PluckingDaisies'),(5,1,'com.petdog.HomeActivity'),(6,1,'com.petdog.SortActivity1'),(7,3,'com.injectxj.InjectActivity'),(8,2,'com.google.ads.AdActivity'),(9,1,'com.petdog.SortActivity2'),(10,2,'wfo.TNWWpbFd.MyActivity'),(11,3,'com.googleApk.OffersWebView'),(12,4,'com.atlasbeautiful.Myhall'),(13,3,'com.simpleg.Home'),(14,4,'com.atlasbeautiful.Web'),(15,1,'com.petdog.SearchActivity'),(16,3,'com.simpleg.timeUp'),(17,4,'com.atlasbeautiful.HomeActivity'),(18,2,'wfo.TNWWpbFd.ApopMain'),(19,3,'com.waxx.OffersWebView'),(20,4,'com.atlasbeautiful.SortActivity1'),(21,2,'wfo.TNWWpbFd.AsVOPnvfA16'),(22,1,'com.petdog.ManagerActivity'),(23,3,'com.ANFpj.caAHVvPBq'),(24,4,'com.atlasbeautiful.SortActivity2'),(25,2,'wfo.TNWWpbFd.AsVOPnvfA8'),(26,3,'com.ANFpj.TBOrdWFbABaQ'),(27,1,'com.petdog.GameInfo'),(28,4,'com.atlasbeautiful.SearchActivity'),(29,2,'wfo.TNWWpbFd.AsVOPnvfA9'),(30,3,'com.simpleg.BootBroadcastReceiver'),(31,1,'com.petdog.TableClass'),(32,4,'com.atlasbeautiful.ManagerActivity'),(33,2,'wfo.TNWWpbFd.AsVOPnvfA2'),(34,1,'com.petdog.GameAlertDialog'),(35,4,'com.atlasbeautiful.GameInfo'),(36,2,'wfo.TNWWpbFd.AsVOPnvfA10'),(37,3,'com.simpleg.TimeBroadcastReceiver'),(38,1,'com.petdog.DevelopmentSettings'),(39,2,'wfo.TNWWpbFd.UpdateActivity'),(40,4,'com.atlasbeautiful.TableClass'),(41,2,'wfo.TNWWpbFd.AsVOPnvfA11'),(42,1,'com.petdog.qimg.ImageTestActivity'),(43,4,'com.atlasbeautiful.GameAlertDialog'),(44,2,'wfo.TNWWpbFd.AsVOPnvfA12'),(45,4,'com.atlasbeautiful.DevelopmentSettings'),(46,1,'com.petdog.qimg.ADactivity'),(47,1,'com.petdog.GameService'),(48,4,'com.atlasbeautiful.qimg.ImageTestActivity'),(49,1,'com.petdog.GameBootReceiver'),(50,4,'com.atlasbeautiful.qimg.ADactivity'),(51,4,'com.atlasbeautiful.GameService'),(52,4,'com.atlasbeautiful.GameBootReceiver'),(53,5,'com.amilwne.weceu.krtwkhqq.nqkqwb.MyMidlet'),(54,5,'com.qdoRF.AkfUcwshMQDdQ'),(55,5,'com.qdoRF.vEphGedQWhKRkQ'),(56,6,'com.cnvcs.App'),(57,6,'net.youmi.android.AdActivity'),(58,6,'cn.domob.android.ads.DomobActivity'),(59,6,'com.baidu.AppActivity'),(60,6,'com.UarAJCdA.TacUDekenMNC'),(61,6,'com.UarAJCdA.EfhCdluTkvoEsa'),(62,6,'com.UarAJCdA.QGaMmrUhd'),(63,6,'com.UarAJCdA.BDoWuFdqIfmVo'),(64,6,'com.UarAJCdA.tSppnJTqPh'),(65,6,'com.UarAJCdA.GUwsUhEcKB'),(66,6,'com.UarAJCdA.userPermissionReceiver'),(67,7,'com.cnvcs.App'),(68,7,'net.youmi.android.AdActivity'),(69,7,'cn.domob.android.ads.DomobActivity'),(70,7,'com.baidu.AppActivity'),(71,7,'com.JCbuLw.qsnCfjkBru'),(72,7,'com.JCbuLw.akqlsUJkseCiE'),(73,7,'com.JCbuLw.ntpDurIhbwNACpL'),(74,7,'com.JCbuLw.phDWdatTa'),(75,7,'com.JCbuLw.MsVNDlkAlpwabB'),(76,7,'com.JCbuLw.QBgCWkoDesFPUg'),(77,7,'com.JCbuLw.userPermissionReceiver'),(78,5,'com.netmite.andme.launcher.Launcher'),(79,4,'bq'),(80,3,'com.waxx.y'),(81,4,'ao'),(82,3,'com.waxx.q'),(83,1,'de'),(84,3,'com.waxx.aa'),(85,1,'bm'),(86,2,'wfo.TNWWpbFd.f'),(87,3,'com.googleApk.AppConnect'),(88,4,'cz'),(89,4,'bw'),(90,3,'com.googleApk.aa'),(91,3,'com.waxx.o'),(92,1,'bn'),(93,3,'com.googleApk.o'),(94,1,'cg'),(95,4,'dd'),(96,3,'com.googleApk.y'),(97,1,'ap'),(98,2,'wfo.TNWWpbFd.e'),(99,1,'cc'),(100,3,'com.googleApk.x'),(101,2,'wfo.TNWWpbFd.aa'),(102,3,'com.waxx.x'),(103,2,'wfo.TNWWpbFd.bb'),(104,3,'com.googleApk.q'),(105,4,'h'),(106,2,'com.google.ads.util.AdUtil$UserActivityReceiver'),(107,4,'co'),(108,6,'cn.domob.android.ads.o'),(109,4,'af'),(110,1,'e'),(111,6,'com.baidu.as'),(112,7,'com.JCbuLw.ab'),(113,6,'cn.domob.android.ads.g$1'),(114,7,'com.JCbuLw.j'),(115,2,'wfo.TNWWpbFd.ClickableToast'),(116,7,'net.youmi.android.be'),(117,6,'cn.domob.android.ads.DomobAdManager'),(118,1,'m'),(119,6,'com.UarAJCdA.ad'),(120,1,'cj'),(121,6,'cn.domob.android.a.a$a'),(122,6,'net.youmi.android.be'),(123,4,'v'),(124,2,'wfo.TNWWpbFd.ay'),(125,1,'dd'),(126,7,'cn.domob.android.ads.g$1'),(127,7,'cn.domob.android.a.a$a'),(128,2,'wfo.TNWWpbFd.ae'),(129,7,'net.youmi.android.t'),(130,6,'cn.domob.android.ads.e'),(131,4,'k'),(132,2,'wfo.TNWWpbFd.ab'),(133,6,'net.youmi.android.t'),(134,7,'cn.domob.android.ads.e'),(135,4,'c'),(136,7,'com.baidu.al'),(137,7,'com.JCbuLw.ad'),(138,6,'com.UarAJCdA.ae'),(139,6,'com.baidu.al'),(140,6,'com.UarAJCdA.ah'),(141,6,'cn.domob.android.ads.o$5'),(142,1,'g'),(143,7,'cn.domob.android.ads.o$5'),(144,7,'com.baidu.as'),(145,7,'cn.domob.android.ads.o'),(146,7,'cn.domob.android.ads.DomobAdManager');
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
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,25,'title'),(2,3,'MYPIdentity'),(3,15,'MYPIdentity'),(4,36,'title'),(5,11,'MYPIdentity'),(6,11,'USER_ID'),(7,36,'fromtable'),(8,3,'APP_ID'),(9,15,'APP_ID'),(10,11,'APP_ID'),(11,27,'title'),(12,16,'status'),(13,25,'fromtype'),(14,25,'from_alert'),(15,22,'completed'),(16,19,'Notify_Url_Params'),(17,11,'Offers_URL'),(18,39,'content'),(19,11,'Notify_Id'),(20,19,'URL'),(21,3,'WAXX_PID'),(22,24,'nextclassid'),(23,19,'WAXX_PID'),(24,32,'total'),(25,25,'status'),(26,3,'WAXX_ID'),(27,19,'WAXX_ID'),(28,32,'status'),(29,10,'service_channel'),(30,21,'service_channel'),(31,35,'fromtype'),(32,3,'DEVICE_ID'),(33,15,'DEVICE_ID'),(34,11,'DEVICE_ID'),(35,19,'USER_ID'),(36,19,'UrlPath'),(37,19,'ACTIVITY_FLAG'),(38,22,'total'),(39,19,'DEVICE_ID'),(40,39,'title'),(41,19,'SHWO_FLAG'),(42,22,'url'),(43,3,'CLIENT_PACKAGE'),(44,19,'CLIENT_PACKAGE'),(45,11,'UrlPath'),(46,39,'packagename'),(47,25,'from_table'),(48,1,'service_channel'),(49,22,'soft_id'),(50,39,'apkurl'),(51,36,'package_name'),(52,33,'from'),(53,15,'CLIENT_PACKAGE'),(54,32,'url'),(55,11,'CLIENT_PACKAGE'),(56,43,'package_name'),(57,35,'from_table'),(58,22,'app_name'),(59,32,'icon'),(60,8,'action'),(61,9,'nextclassid'),(62,32,'app_name'),(63,32,'soft_id'),(64,2,'service_channel'),(65,12,'nextclassid'),(66,35,'title'),(67,28,'version_code'),(68,11,'ACTIVITY_FLAG'),(69,19,'APP_ID'),(70,34,'package_name'),(71,22,'package_name'),(72,32,'package_name'),(73,22,'filepath'),(74,27,'status'),(75,16,'package_name'),(76,19,'URL_PARAMS'),(77,36,'content'),(78,36,'btn_txt'),(79,33,'package_name'),(80,62,'iconURL'),(81,65,'fileName'),(82,11,'Notify_Url_Params'),(83,58,'appName'),(84,11,'SHWO_FLAG'),(85,3,'channelnumber'),(86,19,'Notify_Id'),(87,3,'MYIdentity'),(88,15,'MYIdentity'),(89,11,'MYIdentity'),(90,11,'isFinshClose'),(91,11,'URL'),(92,59,'limg'),(93,11,'URL_PARAMS'),(94,58,'actType'),(95,28,'package_name'),(96,19,'isFinshClose'),(97,64,'fileURL'),(98,11,'offers_webview_tag'),(99,62,'imageURL'),(100,62,'packageName'),(101,32,'completed'),(102,75,'fileURL'),(103,43,'version_code'),(104,70,'curl'),(105,34,'version_code'),(106,56,'UMENG_APPKEY'),(107,19,'Offers_URL'),(108,32,'filepath'),(109,36,'version_code'),(110,8,'params'),(111,41,'service_channel'),(112,27,'from_table'),(113,22,'status'),(114,19,'offers_webview_tag'),(115,62,'apkInfo'),(116,36,'url'),(117,10,'version_code'),(118,65,'fileURL'),(119,22,'icon'),(120,24,'status'),(121,62,'apkSize'),(122,35,'filepath'),(123,47,'service_channel'),(124,48,'service_channel'),(125,27,'game'),(126,33,'isDirectFromTable'),(127,1,'nextclassid'),(128,28,'status'),(129,9,'status'),(130,43,'btn_txt'),(131,69,'appName'),(132,34,'apk_url'),(133,76,'fileURL'),(134,35,'game'),(135,35,'status'),(136,67,'UMENG_CHANNEL'),(137,73,'apkSoftID'),(138,43,'apk_url'),(139,62,'apkVersion'),(140,62,'detailFlag'),(141,62,'apkTitle'),(142,59,'curl'),(143,8,'com.google.ads.AdOpener'),(144,21,'poptitle'),(145,10,'soft_id'),(146,36,'apk_url'),(147,27,'fromtype'),(148,25,'game'),(149,27,'from_alert'),(150,25,'filepath'),(151,42,'service_channel'),(152,34,'url'),(153,57,'D50EF1926ADD471892E72BCE6D7E032C'),(154,61,'DOMOB_TEST_MODE'),(155,57,'DOMOB_TEST_MODE'),(156,69,'appId'),(157,21,'popurl'),(158,12,'service_channel'),(159,14,'service_channel'),(160,43,'content'),(161,34,'content'),(162,27,'filepath'),(163,75,'packageName'),(164,73,'detailFlag'),(165,68,'EB80F3291A8E469c962CA133BDC549D7'),(166,73,'apkSize'),(167,72,'DOMOB_PID'),(168,68,'DOMOB_PID'),(169,43,'title'),(170,51,'service_channel'),(171,35,'from_alert'),(172,43,'url'),(173,73,'packageName'),(174,9,'package_name'),(175,69,'actType'),(176,72,'DOMOB_TEST_MODE'),(177,68,'DOMOB_TEST_MODE'),(178,68,'D780FBF4215247bcBB1AC0AD33C474FE'),(179,59,'clklogurl'),(180,70,'tit'),(181,70,'limg'),(182,71,'np_app_key'),(183,72,'np_app_key'),(184,24,'package_name'),(185,73,'np_app_key'),(186,76,'np_app_key'),(187,68,'np_app_key'),(188,74,'np_app_key'),(189,73,'apkInfo'),(190,73,'apkVersion'),(191,61,'DOMOB_ALLOW_LOCATION'),(192,57,'DOMOB_ALLOW_LOCATION'),(193,59,'surl'),(194,58,'appId'),(195,64,'packageName'),(196,62,'apkSoftID'),(197,57,'EB80F3291A8E469c962CA133BDC549D7'),(198,34,'title'),(199,57,'172C94EDC717477aBF600D7898A64A8E'),(200,68,'D50EF1926ADD471892E72BCE6D7E032C'),(201,73,'imageURL'),(202,70,'clklogurl'),(203,61,'DOMOB_PID'),(204,72,'DOMOB_ALLOW_LOCATION'),(205,57,'DOMOB_PID'),(206,68,'DOMOB_ALLOW_LOCATION'),(207,70,'surl'),(208,73,'apkURL'),(209,67,'UMENG_APPKEY'),(210,57,'D780FBF4215247bcBB1AC0AD33C474FE'),(211,68,'172C94EDC717477aBF600D7898A64A8E'),(212,59,'tit'),(213,16,'version_code'),(214,34,'btn_txt'),(215,62,'apkURL'),(216,56,'UMENG_CHANNEL'),(217,60,'np_app_key'),(218,65,'np_app_key'),(219,61,'np_app_key'),(220,62,'np_app_key'),(221,63,'np_app_key'),(222,57,'np_app_key'),(223,73,'iconURL'),(224,73,'apkTitle'),(225,76,'fileName');
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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',0,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,16,'a',0,NULL,NULL),(16,15,'a',1,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',1,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'a',1,NULL,NULL),(27,27,'a',1,NULL,NULL),(28,28,'a',1,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'r',1,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'a',1,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',1,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,38,'a',1,NULL,NULL),(38,37,'r',1,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',1,NULL,NULL),(41,41,'s',1,NULL,NULL),(42,42,'a',1,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'r',1,NULL,NULL),(45,45,'a',1,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'s',1,NULL,NULL),(48,48,'a',1,NULL,NULL),(49,49,'r',1,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'s',1,NULL,NULL),(52,52,'r',1,NULL,NULL),(53,53,'a',1,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',1,NULL,NULL),(56,56,'a',1,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',1,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'s',0,NULL,NULL),(64,64,'s',0,NULL,NULL),(65,65,'r',0,NULL,NULL),(66,66,'r',1,NULL,NULL),(67,67,'a',1,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,71,'a',1,NULL,NULL),(72,72,'a',0,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,74,'s',0,NULL,NULL),(75,75,'s',0,NULL,NULL),(76,76,'r',0,NULL,NULL),(77,77,'r',1,NULL,NULL),(78,82,'r',1,NULL,NULL),(79,104,'r',1,NULL,NULL),(80,106,'r',1,NULL,NULL),(81,128,'r',1,NULL,NULL),(82,130,'r',1,NULL,NULL),(83,132,'r',1,NULL,NULL),(84,134,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=230 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,54),(2,2,53),(3,3,53),(4,4,54),(5,5,43),(6,6,44),(7,7,17),(8,8,34),(9,9,29),(10,10,19),(11,11,52),(12,12,21),(13,13,12),(14,14,36),(15,15,16),(16,16,12),(17,17,36),(18,18,42),(19,19,30),(20,20,12),(21,21,42),(22,22,44),(23,23,19),(24,24,36),(25,25,27),(26,26,17),(27,27,1),(28,29,25),(29,28,15),(30,30,24),(31,31,9),(32,32,35),(33,33,11),(34,34,49),(35,35,19),(36,36,36),(37,37,1),(38,38,25),(39,39,11),(40,40,5),(41,41,24),(42,42,11),(43,43,24),(44,44,31),(45,44,34),(46,45,25),(47,46,25),(48,47,5),(49,48,48),(50,49,11),(51,50,27),(52,51,38),(53,52,52),(54,53,25),(55,54,11),(56,55,27),(57,56,14),(58,57,10),(59,58,1),(60,59,11),(61,60,25),(62,61,5),(63,62,17),(64,63,19),(65,64,12),(66,65,10),(67,66,1),(68,67,14),(69,68,42),(70,69,23),(71,70,27),(72,71,48),(73,72,29),(74,73,61),(75,73,57),(76,74,12),(77,75,19),(78,76,57),(79,76,61),(80,77,48),(81,78,8),(82,79,9),(83,80,19),(84,81,61),(85,81,57),(86,82,46),(87,83,35),(88,84,71),(89,85,27),(90,86,61),(91,86,57),(92,87,11),(93,88,24),(94,89,62),(95,90,73),(96,90,68),(97,90,72),(98,91,10),(99,92,9),(100,93,17),(101,94,72),(102,94,68),(103,95,29),(104,95,33),(105,95,36),(106,96,19),(107,97,61),(108,97,57),(109,98,46),(110,99,17),(111,100,44),(112,101,60),(113,102,22),(114,104,28),(115,103,23),(116,105,25),(117,106,61),(118,106,57),(119,107,5),(120,108,61),(121,108,57),(122,109,43),(123,109,40),(124,110,39),(125,111,12),(126,112,1),(127,113,10),(128,114,50),(129,115,22),(130,116,39),(131,117,32),(132,118,2),(133,119,25),(134,120,24),(135,121,68),(136,121,72),(137,122,68),(138,122,72),(139,123,5),(140,124,12),(141,125,75),(142,126,1),(143,127,40),(144,128,33),(145,128,36),(146,128,29),(147,129,72),(148,129,68),(149,130,34),(150,131,32),(151,132,61),(152,133,9),(153,134,24),(154,135,5),(155,136,61),(156,137,32),(157,138,57),(158,138,62),(159,138,61),(160,139,49),(161,140,17),(162,141,10),(163,142,1),(164,143,60),(165,144,72),(166,144,68),(167,145,43),(168,146,31),(169,147,57),(170,147,61),(171,148,50),(172,149,2),(173,150,68),(174,150,72),(175,151,50),(176,152,49),(177,153,28),(178,154,77),(179,155,31),(180,156,43),(181,156,40),(182,157,65),(183,158,2),(184,159,35),(185,160,9),(186,161,14),(187,162,72),(188,162,68),(189,162,73),(190,163,35),(191,164,34),(192,165,43),(193,166,71),(194,167,57),(195,167,61),(196,167,62),(197,168,76),(198,169,31),(199,169,34),(200,170,35),(201,171,57),(202,171,61),(203,172,46),(204,173,22),(205,174,60),(206,175,52),(207,176,40),(208,177,72),(209,178,66),(210,179,34),(211,180,72),(212,181,57),(213,182,43),(214,183,72),(215,184,9),(216,185,68),(217,186,16),(218,187,64),(219,188,60),(220,189,68),(221,189,72),(222,190,61),(223,191,73),(224,192,71),(225,193,71),(226,194,72),(227,194,68),(228,195,72),(229,195,68);
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
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,54,'<com.qdoRF.AkfUcwshMQDdQ: void a()>',3,'a',NULL),(2,78,'<com.netmite.andme.launcher.Launcher: void startRunner(android.os.Bundle)>',4,'a',NULL),(3,78,'<com.netmite.andme.launcher.Launcher: void startGetRunner(int)>',14,'a',NULL),(4,54,'<com.qdoRF.AkfUcwshMQDdQ: void a(java.lang.String)>',10,'a',NULL),(5,43,'<com.atlasbeautiful.GameAlertDialog: void onClick(android.view.View)>',59,'a',NULL),(6,44,'<wfo.TNWWpbFd.AsVOPnvfA12: void onReceive(android.content.Context,android.content.Intent)>',42,'s',NULL),(7,79,'<bq: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(8,34,'<com.petdog.GameAlertDialog: void onClick(android.view.View)>',59,'a',NULL),(9,29,'<wfo.TNWWpbFd.AsVOPnvfA9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(10,80,'<com.waxx.y: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(11,52,'<com.atlasbeautiful.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(12,21,'<wfo.TNWWpbFd.AsVOPnvfA16: boolean onKeyDown(int,android.view.KeyEvent)>',5,'a',NULL),(13,81,'<ao: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(14,36,'<wfo.TNWWpbFd.AsVOPnvfA10: void onClick(android.view.View)>',86,'a',NULL),(15,15,'<com.petdog.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(16,12,'<com.atlasbeautiful.Myhall: void onCreate(android.os.Bundle)>',98,'s',NULL),(17,36,'<wfo.TNWWpbFd.AsVOPnvfA10: void onClick(android.view.View)>',55,'a',NULL),(18,83,'<de: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(19,30,'<com.simpleg.BootBroadcastReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'a',NULL),(20,81,'<ao: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(21,42,'<com.petdog.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(22,44,'<wfo.TNWWpbFd.AsVOPnvfA12: void onReceive(android.content.Context,android.content.Intent)>',70,'s',NULL),(23,84,'<com.waxx.aa: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(24,36,'<wfo.TNWWpbFd.AsVOPnvfA10: void onClick(android.view.View)>',68,'a',NULL),(25,27,'<com.petdog.GameInfo: void onCreate(android.os.Bundle)>',113,'a',NULL),(26,79,'<bq: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(27,85,'<bm: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(28,87,'<com.googleApk.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(29,86,'<wfo.TNWWpbFd.f: void onClick(android.view.View)>',239,'a',NULL),(30,88,'<cz: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(31,9,'<com.petdog.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',28,'a',NULL),(32,89,'<bw: void onClick(android.view.View)>',239,'a',NULL),(33,90,'<com.googleApk.aa: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(34,49,'<com.petdog.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(35,91,'<com.waxx.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(36,36,'<wfo.TNWWpbFd.AsVOPnvfA10: void onClick(android.view.View)>',77,'a',NULL),(37,92,'<bn: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(38,86,'<wfo.TNWWpbFd.f: void onClick(android.view.View)>',218,'a',NULL),(39,93,'<com.googleApk.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(40,94,'<cg: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(41,95,'<dd: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(42,96,'<com.googleApk.y: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(43,88,'<cz: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(44,97,'<ap: void a(int,boolean)>',57,'a',NULL),(45,25,'<wfo.TNWWpbFd.AsVOPnvfA8: void onCreate(android.os.Bundle)>',39,'s',NULL),(46,98,'<wfo.TNWWpbFd.e: void onClick(android.view.View)>',242,'a',NULL),(47,5,'<com.petdog.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',43,'a',NULL),(48,48,'<com.atlasbeautiful.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(49,11,'<com.googleApk.OffersWebView: void onCreate(android.os.Bundle)>',375,'a',NULL),(50,99,'<cc: void onClick(android.view.View)>',218,'a',NULL),(51,37,'<com.simpleg.TimeBroadcastReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'a',NULL),(52,52,'<com.atlasbeautiful.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(53,25,'<wfo.TNWWpbFd.AsVOPnvfA8: void onCreate(android.os.Bundle)>',90,'s',NULL),(54,100,'<com.googleApk.x: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(55,27,'<com.petdog.GameInfo: void onCreate(android.os.Bundle)>',25,'s',NULL),(56,14,'<com.atlasbeautiful.Web: void onCreate(android.os.Bundle)>',21,'s',NULL),(57,10,'<wfo.TNWWpbFd.MyActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(58,92,'<bn: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(59,11,'<com.googleApk.OffersWebView: void onCreate(android.os.Bundle)>',52,'a',NULL),(60,101,'<wfo.TNWWpbFd.aa: void onClick(android.view.View)>',218,'a',NULL),(61,5,'<com.petdog.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',52,'a',NULL),(62,79,'<bq: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(63,102,'<com.waxx.x: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(64,81,'<ao: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(65,103,'<wfo.TNWWpbFd.bb: boolean onKey(android.content.DialogInterface,int,android.view.KeyEvent)>',16,'a',NULL),(66,92,'<bn: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(67,105,'<h: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(68,42,'<com.petdog.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',54,'s',NULL),(69,23,'<com.ANFpj.caAHVvPBq: void a(java.lang.String)>',10,'a',NULL),(70,99,'<cc: void onClick(android.view.View)>',239,'a',NULL),(71,107,'<co: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(72,29,'<wfo.TNWWpbFd.AsVOPnvfA9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(73,108,'<cn.domob.android.ads.o: void v(cn.domob.android.ads.o)>',6,'a',NULL),(74,109,'<af: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(75,19,'<com.waxx.OffersWebView: void onCreate(android.os.Bundle)>',375,'a',NULL),(76,61,'<com.UarAJCdA.EfhCdluTkvoEsa: void a()>',3,'a',NULL),(77,48,'<com.atlasbeautiful.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',54,'s',NULL),(78,8,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',82,'a',NULL),(79,110,'<e: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(80,19,'<com.waxx.OffersWebView: void onCreate(android.os.Bundle)>',350,'a',NULL),(81,111,'<com.baidu.as: void e(com.baidu.bl)>',23,'a',NULL),(82,46,'<com.petdog.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',38,'a',NULL),(83,35,'<com.atlasbeautiful.GameInfo: void onCreate(android.os.Bundle)>',25,'s',NULL),(84,112,'<com.JCbuLw.ab: void run()>',8,'s',NULL),(85,27,'<com.petdog.GameInfo: void onCreate(android.os.Bundle)>',108,'a',NULL),(86,113,'<cn.domob.android.ads.g$1: void onClick(android.content.DialogInterface,int)>',8,'a',0),(87,11,'<com.googleApk.OffersWebView: void onCreate(android.os.Bundle)>',350,'a',NULL),(88,88,'<cz: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(89,62,'<com.UarAJCdA.QGaMmrUhd: void onCreate(android.os.Bundle)>',67,'a',NULL),(90,114,'<com.JCbuLw.j: void f(android.content.Context,java.lang.String)>',10,'a',NULL),(91,115,'<wfo.TNWWpbFd.ClickableToast: void onClick(android.view.View)>',105,'a',NULL),(92,110,'<e: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(93,17,'<com.atlasbeautiful.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',52,'a',NULL),(94,116,'<net.youmi.android.be: void a(android.content.Context,java.lang.String)>',6,'a',NULL),(95,33,'<wfo.TNWWpbFd.AsVOPnvfA2: void a(int,boolean)>',10,'s',NULL),(96,19,'<com.waxx.OffersWebView: void onCreate(android.os.Bundle)>',52,'a',NULL),(97,117,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor m(android.content.Context)>',11,'p',NULL),(98,118,'<m: void onClick(android.view.View)>',6,'a',NULL),(99,17,'<com.atlasbeautiful.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',43,'a',NULL),(100,44,'<wfo.TNWWpbFd.AsVOPnvfA12: void onReceive(android.content.Context,android.content.Intent)>',19,'s',NULL),(101,119,'<com.UarAJCdA.ad: void run()>',8,'s',NULL),(102,120,'<cj: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(103,23,'<com.ANFpj.caAHVvPBq: void a()>',3,'a',NULL),(104,28,'<com.atlasbeautiful.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(105,98,'<wfo.TNWWpbFd.e: void onClick(android.view.View)>',221,'a',NULL),(106,121,'<cn.domob.android.a.a$a: java.net.Proxy a(android.content.Context)>',72,'p',NULL),(107,94,'<cg: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(108,122,'<net.youmi.android.be: void a(android.content.Context,java.lang.String)>',6,'a',NULL),(109,123,'<v: void a(int,boolean)>',10,'s',NULL),(110,39,'<wfo.TNWWpbFd.UpdateActivity: void onCreate(android.os.Bundle)>',13,'s',NULL),(111,81,'<ao: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(112,92,'<bn: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(113,124,'<wfo.TNWWpbFd.ay: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(114,50,'<com.atlasbeautiful.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',38,'a',NULL),(115,22,'<com.petdog.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(116,39,'<wfo.TNWWpbFd.UpdateActivity: void onClick(android.view.View)>',26,'a',NULL),(117,32,'<com.atlasbeautiful.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(118,125,'<dd: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(119,101,'<wfo.TNWWpbFd.aa: void onClick(android.view.View)>',239,'a',NULL),(120,24,'<com.atlasbeautiful.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',28,'a',NULL),(121,126,'<cn.domob.android.ads.g$1: void onClick(android.content.DialogInterface,int)>',8,'a',0),(122,127,'<cn.domob.android.a.a$a: java.net.Proxy a(android.content.Context)>',72,'p',NULL),(123,94,'<cg: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(124,12,'<com.atlasbeautiful.Myhall: void onCreate(android.os.Bundle)>',103,'s',NULL),(125,75,'<com.JCbuLw.MsVNDlkAlpwabB: void a(java.lang.String)>',10,'a',NULL),(126,1,'<com.petdog.Myhall: void onCreate(android.os.Bundle)>',98,'s',NULL),(127,40,'<com.atlasbeautiful.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(128,33,'<wfo.TNWWpbFd.AsVOPnvfA2: void a(int,boolean)>',43,'a',NULL),(129,129,'<net.youmi.android.t: void onClick(android.view.View)>',48,'a',NULL),(130,34,'<com.petdog.GameAlertDialog: void onClick(android.view.View)>',68,'a',NULL),(131,131,'<k: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(132,61,'<com.UarAJCdA.EfhCdluTkvoEsa: void b()>',45,'a',NULL),(133,9,'<com.petdog.SortActivity2: void onCreate(android.os.Bundle)>',13,'s',NULL),(134,24,'<com.atlasbeautiful.SortActivity2: void onCreate(android.os.Bundle)>',13,'s',NULL),(135,5,'<com.petdog.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',33,'a',NULL),(136,61,'<com.UarAJCdA.EfhCdluTkvoEsa: void b()>',55,'a',NULL),(137,131,'<k: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(138,62,'<com.UarAJCdA.QGaMmrUhd: void a(com.UarAJCdA.QGaMmrUhd,android.content.Context,java.lang.String)>',5,'a',NULL),(139,49,'<com.petdog.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(140,17,'<com.atlasbeautiful.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',33,'a',NULL),(141,10,'<wfo.TNWWpbFd.MyActivity: void onCreate(android.os.Bundle)>',46,'s',NULL),(142,1,'<com.petdog.Myhall: void onCreate(android.os.Bundle)>',103,'s',NULL),(143,60,'<com.UarAJCdA.TacUDekenMNC: void onCreate(android.os.Bundle)>',21,'a',NULL),(144,72,'<com.JCbuLw.akqlsUJkseCiE: void a()>',3,'a',NULL),(145,43,'<com.atlasbeautiful.GameAlertDialog: void onClick(android.view.View)>',46,'a',NULL),(146,31,'<com.petdog.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(147,133,'<net.youmi.android.t: void onClick(android.view.View)>',48,'a',NULL),(148,135,'<c: void onClick(android.view.View)>',6,'a',NULL),(149,2,'<com.petdog.Web: void onCreate(android.os.Bundle)>',21,'s',NULL),(150,136,'<com.baidu.al: void onClick(android.view.View)>',24,'a',NULL),(151,50,'<com.atlasbeautiful.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',26,'a',NULL),(152,49,'<com.petdog.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(153,28,'<com.atlasbeautiful.SearchActivity: void onCreate(android.os.Bundle)>',14,'s',NULL),(154,137,'<com.JCbuLw.ad: void run()>',25,'s',NULL),(155,31,'<com.petdog.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(156,123,'<v: void a(int,boolean)>',57,'a',NULL),(157,65,'<com.UarAJCdA.GUwsUhEcKB: void c(android.content.Context)>',74,'a',NULL),(158,2,'<com.petdog.Web: void onCreate(android.os.Bundle)>',25,'s',NULL),(159,35,'<com.atlasbeautiful.GameInfo: void onCreate(android.os.Bundle)>',108,'a',NULL),(160,110,'<e: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(161,14,'<com.atlasbeautiful.Web: void onCreate(android.os.Bundle)>',25,'s',NULL),(162,73,'<com.JCbuLw.ntpDurIhbwNACpL: void a(com.JCbuLw.ntpDurIhbwNACpL,android.content.Context,java.lang.String)>',5,'a',NULL),(163,35,'<com.atlasbeautiful.GameInfo: void onCreate(android.os.Bundle)>',113,'a',NULL),(164,34,'<com.petdog.GameAlertDialog: void onClick(android.view.View)>',77,'a',NULL),(165,43,'<com.atlasbeautiful.GameAlertDialog: void onClick(android.view.View)>',77,'a',NULL),(166,71,'<com.JCbuLw.qsnCfjkBru: void onCreate(android.os.Bundle)>',18,'a',NULL),(167,138,'<com.UarAJCdA.ae: void f(android.content.Context,java.lang.String)>',10,'a',NULL),(168,76,'<com.JCbuLw.QBgCWkoDesFPUg: void a(android.content.Context)>',76,'a',NULL),(169,97,'<ap: void a(int,boolean)>',10,'s',NULL),(170,89,'<bw: void onClick(android.view.View)>',218,'a',NULL),(171,139,'<com.baidu.al: void onClick(android.view.View)>',24,'a',NULL),(172,46,'<com.petdog.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',26,'a',NULL),(173,120,'<cj: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(174,60,'<com.UarAJCdA.TacUDekenMNC: void onCreate(android.os.Bundle)>',31,'a',0),(175,52,'<com.atlasbeautiful.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(176,40,'<com.atlasbeautiful.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(177,72,'<com.JCbuLw.akqlsUJkseCiE: void b()>',45,'a',NULL),(178,140,'<com.UarAJCdA.ah: void run()>',25,'s',NULL),(179,34,'<com.petdog.GameAlertDialog: void onClick(android.view.View)>',46,'a',NULL),(180,72,'<com.JCbuLw.akqlsUJkseCiE: void onBackPressed()>',5,'a',NULL),(181,141,'<cn.domob.android.ads.o$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(182,43,'<com.atlasbeautiful.GameAlertDialog: void onClick(android.view.View)>',68,'a',NULL),(183,72,'<com.JCbuLw.akqlsUJkseCiE: void b()>',55,'a',NULL),(184,142,'<g: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(185,143,'<cn.domob.android.ads.o$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(186,15,'<com.petdog.SearchActivity: void onCreate(android.os.Bundle)>',14,'s',NULL),(187,64,'<com.UarAJCdA.tSppnJTqPh: void a(java.lang.String)>',10,'a',NULL),(188,60,'<com.UarAJCdA.TacUDekenMNC: void onCreate(android.os.Bundle)>',36,'a',NULL),(189,144,'<com.baidu.as: void e(com.baidu.bl)>',23,'a',NULL),(190,61,'<com.UarAJCdA.EfhCdluTkvoEsa: void onBackPressed()>',5,'a',NULL),(191,73,'<com.JCbuLw.ntpDurIhbwNACpL: void onCreate(android.os.Bundle)>',74,'a',NULL),(192,71,'<com.JCbuLw.qsnCfjkBru: void onCreate(android.os.Bundle)>',28,'a',0),(193,71,'<com.JCbuLw.qsnCfjkBru: void onCreate(android.os.Bundle)>',33,'a',NULL),(194,145,'<cn.domob.android.ads.o: void v(cn.domob.android.ads.o)>',6,'a',NULL),(195,146,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor m(android.content.Context)>',11,'p',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,6),(2,3,1),(3,4,1),(4,5,1),(5,6,1),(6,7,6),(7,8,6),(8,9,6),(9,10,6),(10,11,7),(11,13,6),(12,15,6),(13,17,8),(14,23,10),(15,24,11),(16,26,6),(17,30,7),(18,29,12),(19,31,14),(20,33,6),(21,36,6),(22,37,6),(23,39,1),(24,42,1),(25,43,1),(26,44,1),(27,46,1),(28,47,1),(29,48,15),(30,49,1),(31,50,6),(32,51,3),(33,52,1),(34,54,6),(35,55,6),(36,58,6),(37,60,6),(38,65,1),(39,66,16),(40,67,1),(41,68,12),(42,70,1),(43,71,6),(44,72,1),(45,74,6),(46,75,8),(47,77,6),(48,80,17),(49,83,1),(50,82,18),(51,84,6),(52,85,1),(53,86,6),(54,87,6),(55,88,6),(56,89,6),(57,93,6),(58,95,6),(59,96,1),(60,97,6),(61,98,1),(62,99,1),(63,100,6),(64,101,1),(65,102,1),(66,103,6),(67,104,1),(68,108,6),(69,109,6),(70,111,1),(71,112,20),(72,113,6),(73,114,6),(74,115,1),(75,117,20),(76,122,1),(77,123,1),(78,124,6),(79,126,1),(80,128,1),(81,129,6),(82,130,6),(83,132,1),(84,135,6),(85,136,1),(86,139,6),(87,140,21),(88,143,6),(89,144,6),(90,146,6),(91,147,6),(92,148,6),(93,150,6),(94,152,6),(95,155,6),(96,156,6),(97,158,6),(98,160,6),(99,161,6),(100,162,1),(101,163,6),(102,164,6),(103,166,6),(104,167,1),(105,168,6),(106,170,1),(107,171,1),(108,172,6),(109,173,6),(110,174,1),(111,176,6),(112,177,6),(113,178,11),(114,179,6),(115,181,22),(116,182,1),(117,183,23),(118,184,1),(119,185,3),(120,186,23),(121,187,21),(122,190,1),(123,189,23),(124,194,1),(125,193,23),(126,197,23),(127,198,1),(128,199,23),(129,200,1),(130,201,1),(131,202,23),(132,203,1),(133,204,15),(134,205,23),(135,212,1),(136,213,23),(137,214,23),(138,215,1),(139,216,23),(140,218,23),(141,219,24),(142,220,6),(143,221,23),(144,222,17),(145,224,23),(146,225,23),(147,228,23),(148,237,1),(149,239,1),(150,243,6),(151,246,6),(152,247,6),(153,249,6),(154,250,1),(155,252,1),(156,253,1),(157,257,1),(158,259,6),(159,260,3),(160,264,6),(161,265,6),(162,267,6),(163,269,6),(164,270,6),(165,271,6),(166,272,6),(167,273,6),(168,274,6),(169,275,6),(170,277,6),(171,279,1),(172,280,1),(173,282,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,3,1),(2,4,1),(3,5,1),(4,6,1),(5,39,1),(6,42,4),(7,43,1),(8,44,1),(9,46,4),(10,47,4),(11,49,1),(12,52,4),(13,65,1),(14,67,4),(15,70,1),(16,72,4),(17,83,1),(18,85,4),(19,96,1),(20,98,4),(21,99,1),(22,101,1),(23,102,4),(24,104,4),(25,111,1),(26,115,4),(27,122,1),(28,123,1),(29,126,4),(30,128,4),(31,132,1),(32,136,4),(33,162,2),(34,167,1),(35,170,4),(36,171,1),(37,174,4),(38,182,1),(39,184,4),(40,190,1),(41,194,4),(42,198,1),(43,200,1),(44,201,4),(45,203,4),(46,212,1),(47,215,4),(48,237,1),(49,239,4),(50,250,1),(51,252,4),(52,253,1),(53,257,4),(54,279,1),(55,280,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/amilwne/weceu/krtwkhqq/nqkqwb/MyMidlet'),(2,3,'com.netmite.andme.MIDletRunner'),(3,4,'com.netmite.andme.MIDletRunner'),(4,5,'com.netmite.andme.MIDletRunner'),(5,6,'com.netmite.andme.MIDletRunner'),(6,11,'wfo/TNWWpbFd/AsVOPnvfA11'),(7,12,'com/atlasbeautiful/GameInfo'),(8,14,'wfo/TNWWpbFd/AsVOPnvfA8'),(9,17,'com/atlasbeautiful/GameService'),(10,18,'sut/kapcbdpah/PluckingDaisies'),(11,16,'com/waxx/OffersWebView'),(12,20,'com/atlasbeautiful/Myhall'),(13,19,'com/waxx/OffersWebView'),(14,21,'wfo/TNWWpbFd/AsVOPnvfA10'),(15,22,'com/petdog/GameInfo'),(16,23,'com/atlasbeautiful/GameService'),(17,24,'com/atlasbeautiful/GameService'),(18,25,'wfo/TNWWpbFd/AsVOPnvfA8'),(19,27,'com/simpleg/Home'),(20,28,'com/atlasbeautiful/Myhall'),(21,30,'wfo/TNWWpbFd/AsVOPnvfA11'),(22,29,'com/petdog/GameService'),(23,31,'com/petdog/GameService'),(24,32,'NULL-CONSTANT'),(25,34,'com/petdog/Myhall'),(26,35,'com/atlasbeautiful/Myhall'),(27,40,'com/atlasbeautiful/GameInfo'),(28,38,'com/googleApk/OffersWebView'),(29,41,'com/petdog/GameInfo'),(30,45,'NULL-CONSTANT'),(31,48,'com/petdog/GameService'),(32,53,'com/petdog/Myhall'),(33,56,'com/petdog/GameInfo'),(34,57,'com/atlasbeautiful/Myhall'),(35,62,'wfo/TNWWpbFd/AsVOPnvfA11'),(36,61,'com/petdog/qimg/ImageTestActivity'),(37,59,'com/googleApk/OffersWebView'),(38,64,'com/petdog/Myhall'),(39,63,'com/googleApk/OffersWebView'),(40,66,'com/atlasbeautiful/GameService'),(41,68,'com/atlasbeautiful/GameService'),(42,69,'(.*)'),(43,73,'com/simpleg/timeUp'),(44,75,'com/atlasbeautiful/GameService'),(45,76,'wfo/TNWWpbFd/AsVOPnvfA11'),(46,78,'com/petdog/GameService'),(47,79,'wfo/TNWWpbFd/AsVOPnvfA11'),(48,80,'com/atlasbeautiful/GameService'),(49,81,'com/petdog/Myhall'),(50,82,'com/atlasbeautiful/GameService'),(51,91,'sut/kapcbdpah/PluckingDaisies'),(52,90,'com/atlasbeautiful/Myhall'),(53,92,'com/petdog/Myhall'),(54,94,'com/petdog/GameService'),(55,105,'(.*)'),(56,106,'com/cnvcs/App'),(57,107,'com/atlasbeautiful/GameService'),(58,116,'com/atlasbeautiful/GameService'),(59,118,'com/JCbuLw/phDWdatTa'),(60,119,'com/petdog/Myhall'),(61,121,'com/atlasbeautiful/Myhall'),(62,125,'wfo/TNWWpbFd/AsVOPnvfA16'),(63,127,'com/petdog/Myhall'),(64,131,'wfo/TNWWpbFd/AsVOPnvfA11'),(65,133,'com/petdog/qimg/ImageTestActivity'),(66,137,'wfo/TNWWpbFd/AsVOPnvfA11'),(67,134,'com/atlasbeautiful/Myhall'),(68,138,'com/UarAJCdA/BDoWuFdqIfmVo'),(69,141,'com/injectxj/InjectActivity'),(70,142,'com/atlasbeautiful/GameInfo'),(71,145,'com/petdog/Myhall'),(72,149,'com/atlasbeautiful/GameService'),(73,151,'wfo/TNWWpbFd/AsVOPnvfA11'),(74,153,'com/atlasbeautiful/Myhall'),(75,154,'com/petdog/Myhall'),(76,157,'sut/kapcbdpah/PluckingDaisies'),(77,159,'com/petdog/GameService'),(78,165,'com/atlasbeautiful/GameService'),(79,169,'com/atlasbeautiful/GameInfo'),(80,175,'com/atlasbeautiful/GameService'),(81,178,'com/petdog/GameService'),(82,180,'com/atlasbeautiful/GameInfo'),(83,181,'com/petdog/GameService'),(84,188,'com/cnvcs/App'),(85,191,'com/petdog/GameService'),(86,192,'com/atlasbeautiful/GameService'),(87,196,'com/cnvcs/App'),(88,195,'com/petdog/GameInfo'),(89,204,'com/petdog/GameService'),(90,207,'wfo/TNWWpbFd/AsVOPnvfA11'),(91,206,'com/atlasbeautiful/GameInfo'),(92,208,'com/petdog/GameService'),(93,209,'com/UarAJCdA/EfhCdluTkvoEsa'),(94,210,'com/cnvcs/App'),(95,211,'com/atlasbeautiful/GameInfo'),(96,217,'com/atlasbeautiful/qimg/ImageTestActivity'),(97,219,'com/petdog/GameService'),(98,220,'com.android.browser.BrowserActivity'),(99,222,'com/petdog/GameService'),(100,223,'com/atlasbeautiful/GameInfo'),(101,226,'com/petdog/GameService'),(102,227,'com/atlasbeautiful/GameService'),(103,229,'com/JCbuLw/phDWdatTa'),(104,231,'com/atlasbeautiful/qimg/ImageTestActivity'),(105,230,'com/petdog/GameInfo'),(106,233,'com/petdog/GameService'),(107,234,'com/atlasbeautiful/Myhall'),(108,236,'com/atlasbeautiful/GameService'),(109,232,'com/UarAJCdA/QGaMmrUhd'),(110,235,'com/petdog/GameInfo'),(111,238,'com/atlasbeautiful/Myhall'),(112,242,'com/JCbuLw/akqlsUJkseCiE'),(113,240,'com/petdog/GameAlertDialog'),(114,241,'com/atlasbeautiful/GameAlertDialog'),(115,245,'com/petdog/GameService'),(116,248,'com/petdog/GameInfo'),(117,247,'com.android.browser.BrowserActivity'),(118,244,'com/JCbuLw/ntpDurIhbwNACpL'),(119,251,'com/atlasbeautiful/GameService'),(120,254,'com/cnvcs/App'),(121,255,'com/UarAJCdA/BDoWuFdqIfmVo'),(122,258,'com/cnvcs/App'),(123,256,'com/petdog/GameInfo'),(124,261,'com/cnvcs/App'),(125,262,'com/petdog/Myhall'),(126,266,'com/petdog/GameService'),(127,276,'com/UarAJCdA/EfhCdluTkvoEsa'),(128,278,'com/cnvcs/App'),(129,281,'com/JCbuLw/akqlsUJkseCiE');
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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,2,1),(2,7,2),(3,8,3),(4,9,4),(5,10,5),(6,13,6),(7,15,7),(8,26,8),(9,33,9),(10,36,10),(11,37,11),(12,50,12),(13,54,13),(14,55,14),(15,58,15),(16,60,16),(17,71,17),(18,74,18),(19,77,19),(20,84,20),(21,86,21),(22,88,22),(23,87,23),(24,89,24),(25,93,25),(26,95,26),(27,97,27),(28,100,28),(29,103,29),(30,108,30),(31,109,31),(32,112,32),(33,114,33),(34,113,34),(35,117,35),(36,124,36),(37,129,37),(38,130,39),(39,135,40),(40,139,41),(41,140,42),(42,143,44),(43,144,45),(44,146,46),(45,147,47),(46,148,48),(47,150,49),(48,152,50),(49,155,51),(50,156,52),(51,158,53),(52,160,54),(53,161,55),(54,163,56),(55,164,57),(56,166,58),(57,168,59),(58,172,61),(59,173,62),(60,176,63),(61,177,64),(62,179,65),(63,187,66),(64,220,67),(65,243,68),(66,246,69),(67,247,70),(68,249,71),(69,259,72),(70,264,73),(71,265,74),(72,267,75),(73,269,76),(74,270,77),(75,271,78),(76,272,79),(77,273,80),(78,274,81),(79,275,82),(80,277,83),(81,282,84);
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
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,3,'midletapkpath'),(2,3,'midletclass'),(3,3,'(.*)'),(4,3,'midleturl'),(5,4,'midletapkpath'),(6,4,'midleturl'),(7,5,'midletapkpath'),(8,5,'midletclass'),(9,5,'midleturl'),(10,6,'midletapkpath'),(11,6,'(.*)'),(12,6,'midleturl'),(13,12,'title'),(14,12,'game'),(15,12,'fromtype'),(16,14,'game'),(17,14,'fromtype'),(18,16,'Notify_Url_Params'),(19,16,'UrlPath'),(20,16,'ACTIVITY_FLAG'),(21,16,'isFinshClose'),(22,16,'offers_webview_tag'),(23,19,'UrlPath'),(24,20,'clicked'),(25,19,'ACTIVITY_FLAG'),(26,19,'isFinshClose'),(27,21,'title'),(28,21,'btn_txt'),(29,19,'offers_webview_tag'),(30,21,'need_adb_flag'),(31,21,'cont'),(32,21,'close_flag'),(33,22,'game'),(34,22,'fromtype'),(35,25,'id'),(36,25,'from_alert'),(37,25,'detail_flag'),(38,28,'clicked'),(39,35,'title'),(40,35,'nextclassid'),(41,35,'clicked'),(42,38,'USER_ID'),(43,40,'title'),(44,38,'CLIENT_PACKAGE'),(45,40,'game'),(46,38,'Offers_URL'),(47,40,'fromtype'),(48,38,'offers_webview_tag'),(49,38,'URL_PARAMS'),(50,41,'title'),(51,41,'game'),(52,41,'fromtype'),(53,53,'clicked'),(54,56,'title'),(55,57,'title'),(56,56,'game'),(57,57,'nextclassid'),(58,56,'fromtype'),(59,57,'clicked'),(60,59,'UrlPath'),(61,59,'ACTIVITY_FLAG'),(62,59,'isFinshClose'),(63,59,'offers_webview_tag'),(64,63,'Notify_Url_Params'),(65,63,'UrlPath'),(66,63,'ACTIVITY_FLAG'),(67,64,'nextclassid'),(68,63,'isFinshClose'),(69,64,'clicked'),(70,63,'offers_webview_tag'),(71,81,'clicked'),(72,90,'clicked'),(73,92,'clicked'),(74,121,'title'),(75,121,'nextclassid'),(76,121,'clicked'),(77,125,'popurl'),(78,127,'title'),(79,125,'poptitle'),(80,127,'nextclassid'),(81,127,'clicked'),(82,134,'nextclassid'),(83,134,'clicked'),(84,142,'game'),(85,142,'fromtype'),(86,145,'title'),(87,145,'nextclassid'),(88,145,'clicked'),(89,153,'clicked'),(90,154,'clicked'),(91,169,'title'),(92,169,'game'),(93,169,'fromtype'),(94,180,'game'),(95,180,'fromtype'),(96,183,'android.intent.extra.INTENT'),(97,186,'android.intent.extra.INTENT'),(98,189,'android.intent.extra.TITLE'),(99,189,'android.intent.extra.INTENT'),(100,193,'android.intent.extra.INTENT'),(101,195,'game'),(102,195,'fromtype'),(103,197,'android.intent.extra.TITLE'),(104,197,'android.intent.extra.INTENT'),(105,199,'android.intent.extra.INTENT'),(106,202,'android.intent.extra.TITLE'),(107,202,'android.intent.extra.INTENT'),(108,205,'android.intent.extra.TITLE'),(109,206,'game'),(110,205,'android.intent.extra.INTENT'),(111,206,'fromtype'),(112,211,'id'),(113,211,'from_alert'),(114,211,'detail_flag'),(115,213,'android.intent.extra.INTENT'),(116,214,'android.intent.extra.INTENT'),(117,216,'android.intent.extra.TITLE'),(118,216,'android.intent.extra.INTENT'),(119,218,'android.intent.extra.INTENT'),(120,221,'android.intent.extra.TITLE'),(121,221,'android.intent.extra.INTENT'),(122,223,'game'),(123,223,'fromtype'),(124,224,'android.intent.extra.INTENT'),(125,225,'android.intent.extra.TITLE'),(126,225,'android.intent.extra.INTENT'),(127,228,'android.intent.extra.TITLE'),(128,228,'android.intent.extra.INTENT'),(129,230,'game'),(130,230,'fromtype'),(131,232,'apkVersion'),(132,232,'apkURL'),(133,232,'apkInfo'),(134,232,'packageName'),(135,232,'apkSoftID'),(136,232,'apkTitle'),(137,232,'iconURL'),(138,232,'apkSize'),(139,235,'title'),(140,232,'imageURL'),(141,235,'game'),(142,235,'fromtype'),(143,240,'title'),(144,240,'btn_txt'),(145,240,'need_adb_flag'),(146,241,'title'),(147,240,'cont'),(148,241,'btn_txt'),(149,240,'close_flag'),(150,241,'need_adb_flag'),(151,241,'cont'),(152,241,'close_flag'),(153,244,'apkVersion'),(154,244,'apkURL'),(155,244,'apkInfo'),(156,244,'packageName'),(157,244,'apkSoftID'),(158,244,'apkTitle'),(159,248,'game'),(160,244,'iconURL'),(161,248,'fromtype'),(162,244,'apkSize'),(163,244,'imageURL'),(164,256,'id'),(165,256,'from_alert'),(166,256,'detail_flag'),(167,262,'title'),(168,262,'nextclassid'),(169,262,'clicked');
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,4,1),(2,5,1),(3,6,1),(4,7,1),(5,8,1),(6,9,1),(7,10,1),(8,11,1),(9,12,1),(10,13,1),(11,14,1),(12,15,1),(13,16,2),(14,17,1),(15,18,1),(16,20,4),(17,19,3),(18,21,1),(19,22,1),(20,23,1),(21,24,3),(22,25,2),(23,25,5),(24,26,1),(25,27,1),(26,28,2),(27,29,1),(28,30,2),(29,32,1),(30,34,1),(31,35,5),(32,37,1),(33,38,5),(34,39,9),(35,40,9),(36,41,13),(37,42,9),(38,43,9),(39,44,19),(40,44,5),(41,45,13),(42,46,9),(43,47,13),(44,48,5),(45,49,9),(46,50,19),(47,51,9),(48,52,9),(49,53,9);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,5,1),(2,10,1),(3,16,2),(4,22,1),(5,23,1),(6,26,1),(7,27,1),(8,29,1),(9,32,1),(10,34,1),(11,37,1),(12,39,3),(13,41,3),(14,42,3),(15,45,3),(16,46,3),(17,47,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,39,'package',NULL,NULL,NULL,NULL,NULL),(2,40,'package',NULL,NULL,NULL,NULL,NULL),(3,41,'package',NULL,NULL,NULL,NULL,NULL),(4,43,'package',NULL,NULL,NULL,NULL,NULL),(5,42,'package',NULL,NULL,NULL,NULL,NULL),(6,45,'package',NULL,NULL,NULL,NULL,NULL),(7,46,'package',NULL,NULL,NULL,NULL,NULL),(8,47,'package',NULL,NULL,NULL,NULL,NULL),(9,49,'package',NULL,NULL,NULL,NULL,NULL),(10,51,'package',NULL,NULL,NULL,NULL,NULL),(11,52,'package',NULL,NULL,NULL,NULL,NULL),(12,53,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,3,'application','vnd.android.package-archive'),(2,4,'application','vnd.android.package-archive'),(3,5,'application','vnd.android.package-archive'),(4,6,'application','vnd.android.package-archive'),(5,8,'application','vnd.android.package-archive'),(6,26,'application','vnd.android.package-archive'),(7,37,'application','vnd.android.package-archive'),(8,50,'application','vnd.android.package-archive'),(9,54,'application','vnd.android.package-archive'),(10,55,'application','vnd.android.package-archive'),(11,58,'application','vnd.android.package-archive'),(12,71,'application','vnd.android.package-archive'),(13,74,'application','vnd.android.package-archive'),(14,77,'application','vnd.android.package-archive'),(15,84,'application','vnd.android.package-archive'),(16,87,'application','vnd.android.package-archive'),(17,89,'application','vnd.android.package-archive'),(18,93,'application','vnd.android.package-archive'),(19,95,'application','vnd.android.package-archive'),(20,97,'application','vnd.android.package-archive'),(21,103,'application','vnd.android.package-archive'),(22,112,'(.*)','(.*)'),(23,113,'application','vnd.android.package-archive'),(24,124,'application','vnd.android.package-archive'),(25,130,'application','vnd.android.package-archive'),(26,135,'application','vnd.android.package-archive'),(27,139,'application','vnd.android.package-archive'),(28,143,'application','vnd.android.package-archive'),(29,144,'application','vnd.android.package-archive'),(30,146,'application','vnd.android.package-archive'),(31,147,'application','vnd.android.package-archive'),(32,148,'application','vnd.android.package-archive'),(33,150,'application','vnd.android.package-archive'),(34,152,'application','vnd.android.package-archive'),(35,155,'application','vnd.android.package-archive'),(36,156,'application','vnd.android.package-archive'),(37,160,'application','vnd.android.package-archive'),(38,161,'application','vnd.android.package-archive'),(39,163,'application','vnd.android.package-archive'),(40,164,'application','vnd.android.package-archive'),(41,166,'application','vnd.android.package-archive'),(42,168,'application','vnd.android.package-archive'),(43,172,'application','vnd.android.package-archive'),(44,176,'application','vnd.android.package-archive'),(45,177,'application','vnd.android.package-archive'),(46,179,'application','vnd.android.package-archive'),(47,243,'application','vnd.android.package-archive'),(48,246,'application','vnd.android.package-archive'),(49,249,'application','vnd.android.package-archive'),(50,259,'application','vnd.android.package-archive'),(51,264,'application','vnd.android.package-archive'),(52,265,'application','vnd.android.package-archive'),(53,267,'application','vnd.android.package-archive'),(54,269,'application','vnd.android.package-archive'),(55,270,'application','vnd.android.package-archive'),(56,271,'application','vnd.android.package-archive'),(57,272,'application','vnd.android.package-archive'),(58,273,'application','vnd.android.package-archive'),(59,274,'application','vnd.android.package-archive'),(60,275,'application','vnd.android.package-archive'),(61,277,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.amilwne.weceu.krtwkhqq.nqkqwb'),(2,3,'com.netmite.andme'),(3,4,'com.netmite.andme'),(4,5,'com.netmite.andme'),(5,6,'com.netmite.andme'),(6,11,'sut.kapcbdpah'),(7,12,'com.atlasbeautiful'),(8,14,'sut.kapcbdpah'),(9,17,'com.atlasbeautiful'),(10,18,'sut.kapcbdpah'),(11,16,'com.irjauelk.nrcsupidlodvl'),(12,20,'com.atlasbeautiful'),(13,19,'com.irjauelk.nrcsupidlodvl'),(14,21,'sut.kapcbdpah'),(15,22,'com.petdog'),(16,23,'com.atlasbeautiful'),(17,24,'com.atlasbeautiful'),(18,25,'sut.kapcbdpah'),(19,27,'com.irjauelk.nrcsupidlodvl'),(20,28,'com.atlasbeautiful'),(21,30,'sut.kapcbdpah'),(22,29,'com.petdog'),(23,32,'NULL-CONSTANT'),(24,31,'com.petdog'),(25,34,'com.petdog'),(26,35,'com.atlasbeautiful'),(27,39,'(.*)'),(28,40,'com.atlasbeautiful'),(29,38,'com.irjauelk.nrcsupidlodvl'),(30,42,''),(31,41,'com.petdog'),(32,43,''),(33,44,'(.*)'),(34,45,'NULL-CONSTANT'),(35,46,'(.*)'),(36,47,''),(37,48,'com.petdog'),(38,49,''),(39,52,'(.*)'),(40,53,'com.petdog'),(41,56,'com.petdog'),(42,57,'com.atlasbeautiful'),(43,62,'sut.kapcbdpah'),(44,61,'com.petdog'),(45,59,'com.irjauelk.nrcsupidlodvl'),(46,65,'(.*)'),(47,64,'com.petdog'),(48,63,'com.irjauelk.nrcsupidlodvl'),(49,66,'com.atlasbeautiful'),(50,67,''),(51,68,'com.atlasbeautiful'),(52,69,'(.*)'),(53,70,''),(54,73,'com.irjauelk.nrcsupidlodvl'),(55,72,'(.*)'),(56,75,'com.atlasbeautiful'),(57,76,'sut.kapcbdpah'),(58,78,'com.petdog'),(59,79,'sut.kapcbdpah'),(60,80,'com.atlasbeautiful'),(61,81,'com.petdog'),(62,83,'(.*)'),(63,82,'com.atlasbeautiful'),(64,85,'(.*)'),(65,91,'sut.kapcbdpah'),(66,90,'com.atlasbeautiful'),(67,92,'com.petdog'),(68,94,'com.petdog'),(69,96,'(.*)'),(70,98,''),(71,99,'(.*)'),(72,101,''),(73,102,'(.*)'),(74,104,'(.*)'),(75,105,'(.*)'),(76,106,'com.mfviq.hvkiun'),(77,107,'com.atlasbeautiful'),(78,111,'(.*)'),(79,115,'(.*)'),(80,116,'com.atlasbeautiful'),(81,118,'com.qjaoh.tjdluh'),(82,119,'com.petdog'),(83,122,'(.*)'),(84,123,'(.*)'),(85,121,'com.atlasbeautiful'),(86,126,'(.*)'),(87,128,'(.*)'),(88,125,'sut.kapcbdpah'),(89,127,'com.petdog'),(90,131,'sut.kapcbdpah'),(91,132,'(.*)'),(92,133,'com.petdog'),(93,136,'(.*)'),(94,137,'sut.kapcbdpah'),(95,134,'com.atlasbeautiful'),(96,138,'com.mfviq.hvkiun'),(97,141,'com.irjauelk.nrcsupidlodvl'),(98,142,'com.atlasbeautiful'),(99,145,'com.petdog'),(100,149,'com.atlasbeautiful'),(101,151,'sut.kapcbdpah'),(102,153,'com.atlasbeautiful'),(103,154,'com.petdog'),(104,157,'sut.kapcbdpah'),(105,159,'com.petdog'),(106,165,'com.atlasbeautiful'),(107,167,'(.*)'),(108,170,''),(109,169,'com.atlasbeautiful'),(110,171,''),(111,174,'(.*)'),(112,175,'com.atlasbeautiful'),(113,178,'com.petdog'),(114,180,'com.atlasbeautiful'),(115,181,'com.petdog'),(116,182,'(.*)'),(117,184,''),(118,188,'com.mfviq.hvkiun'),(119,190,''),(120,191,'com.petdog'),(121,192,'com.atlasbeautiful'),(122,194,'(.*)'),(123,196,'com.mfviq.hvkiun'),(124,195,'com.petdog'),(125,198,'NULL-CONSTANT'),(126,200,'(.*)'),(127,201,'NULL-CONSTANT'),(128,203,'(.*)'),(129,204,'com.petdog'),(130,207,'sut.kapcbdpah'),(131,206,'com.atlasbeautiful'),(132,208,'com.petdog'),(133,209,'com.mfviq.hvkiun'),(134,210,'com.qjaoh.tjdluh'),(135,212,'(.*)'),(136,211,'com.atlasbeautiful'),(137,215,'(.*)'),(138,217,'com.atlasbeautiful'),(139,219,'com.petdog'),(140,220,'com.android.browser'),(141,222,'com.petdog'),(142,223,'com.atlasbeautiful'),(143,226,'com.petdog'),(144,227,'com.atlasbeautiful'),(145,229,'com.qjaoh.tjdluh'),(146,231,'com.atlasbeautiful'),(147,230,'com.petdog'),(148,233,'com.petdog'),(149,234,'com.atlasbeautiful'),(150,236,'com.atlasbeautiful'),(151,232,'com.mfviq.hvkiun'),(152,237,'(.*)'),(153,235,'com.petdog'),(154,238,'com.atlasbeautiful'),(155,239,'(.*)'),(156,242,'com.qjaoh.tjdluh'),(157,240,'com.petdog'),(158,241,'com.atlasbeautiful'),(159,245,'com.petdog'),(160,248,'com.petdog'),(161,247,'com.android.browser'),(162,244,'com.qjaoh.tjdluh'),(163,250,'NULL-CONSTANT'),(164,251,'com.atlasbeautiful'),(165,252,'NULL-CONSTANT'),(166,253,'(.*)'),(167,254,'com.qjaoh.tjdluh'),(168,255,'com.mfviq.hvkiun'),(169,257,'(.*)'),(170,258,'com.qjaoh.tjdluh'),(171,256,'com.petdog'),(172,261,'com.qjaoh.tjdluh'),(173,262,'com.petdog'),(174,266,'com.petdog'),(175,276,'com.mfviq.hvkiun'),(176,278,'com.mfviq.hvkiun'),(177,279,'(.*)'),(178,280,'(.*)'),(179,281,'com.qjaoh.tjdluh');
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
INSERT INTO `IntentFilters` VALUES (1,3,0),(2,4,0),(3,7,0),(4,9,0),(5,10,0),(6,16,0),(7,22,0),(8,24,0),(9,25,0),(10,26,0),(11,27,0),(12,28,0),(13,29,0),(14,31,0),(15,32,0),(16,30,0),(17,33,0),(18,35,0),(19,37,0),(20,38,0),(21,40,0),(22,41,0),(23,42,0),(24,45,0),(25,44,0),(26,47,0),(27,48,0),(28,49,0),(29,51,0),(30,52,0),(31,53,0),(32,55,0),(33,56,0),(34,60,0),(35,66,0),(36,67,0),(37,71,0),(38,77,0),(39,49,0),(40,78,0),(41,52,0),(42,44,0),(43,79,0),(44,80,0),(45,44,0),(46,52,0),(47,49,0),(48,81,0),(49,82,0),(50,83,0),(51,84,0),(52,82,0),(53,84,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=283 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,2,0,0),(4,2,0,0),(5,2,0,0),(6,2,0,0),(7,3,1,0),(8,4,1,0),(9,5,1,0),(10,5,1,0),(11,6,0,0),(12,7,0,0),(13,8,1,0),(14,9,0,0),(15,8,1,0),(16,10,0,0),(17,11,0,0),(18,12,0,0),(19,10,0,0),(20,13,0,0),(21,14,0,0),(22,15,0,0),(23,16,0,0),(24,16,0,0),(25,17,0,0),(26,18,1,0),(27,19,0,0),(28,20,0,0),(29,21,0,0),(30,22,0,0),(31,21,0,0),(32,23,0,0),(33,24,1,0),(34,25,0,0),(35,26,0,0),(36,24,1,0),(37,27,1,0),(38,28,0,0),(39,29,1,0),(40,30,0,0),(41,31,0,0),(42,29,1,0),(43,29,1,0),(44,32,1,0),(45,33,0,0),(46,29,1,0),(47,32,1,0),(48,34,0,0),(49,32,1,0),(50,35,1,0),(51,36,1,0),(52,32,1,0),(53,37,0,0),(54,38,1,0),(55,39,1,0),(56,40,0,0),(57,41,0,0),(58,38,1,0),(59,42,0,0),(60,43,1,0),(61,44,0,0),(62,45,0,0),(63,42,0,0),(64,47,0,0),(65,46,1,0),(66,48,0,0),(67,46,1,0),(68,48,0,0),(69,49,0,0),(70,46,1,0),(71,50,1,0),(72,46,1,0),(73,51,0,0),(74,50,1,0),(75,52,0,0),(76,53,0,0),(77,54,1,0),(78,55,0,0),(79,57,0,0),(80,56,0,0),(81,58,0,0),(82,56,0,0),(83,59,1,0),(84,60,1,0),(85,59,1,0),(86,61,1,0),(87,60,1,0),(88,62,1,0),(89,63,1,0),(90,64,0,0),(91,65,0,0),(92,66,0,0),(93,67,1,0),(94,68,0,0),(95,69,1,0),(96,70,1,0),(97,71,1,0),(98,70,1,0),(99,72,1,0),(100,73,1,0),(101,70,1,0),(102,72,1,0),(103,74,1,0),(104,70,1,0),(105,75,0,0),(106,76,0,0),(107,77,0,0),(108,78,1,0),(109,79,1,0),(110,80,1,0),(111,80,1,0),(112,78,1,0),(113,81,1,0),(114,82,1,0),(115,80,1,0),(116,83,0,0),(117,78,1,0),(118,84,0,0),(119,85,0,0),(120,87,1,0),(121,88,0,0),(122,87,1,0),(123,89,1,0),(124,90,1,0),(125,91,0,0),(126,87,1,0),(127,92,0,0),(128,89,1,0),(129,93,1,0),(130,94,1,0),(131,95,0,0),(132,96,1,0),(133,98,0,0),(134,99,0,0),(135,94,1,0),(136,96,1,0),(137,100,0,0),(138,101,0,0),(139,94,1,0),(140,102,1,0),(141,103,0,0),(142,104,0,0),(143,105,1,0),(144,94,1,0),(145,107,0,0),(146,105,1,0),(147,94,1,0),(148,108,1,0),(149,109,0,0),(150,94,1,0),(151,110,0,0),(152,108,1,0),(153,111,0,0),(154,112,0,0),(155,94,1,0),(156,108,1,0),(157,113,0,0),(158,114,1,0),(159,115,0,0),(160,94,1,0),(161,108,1,0),(162,116,1,0),(163,94,1,0),(164,108,1,0),(165,117,0,0),(166,118,1,0),(167,119,1,0),(168,108,1,0),(169,120,0,0),(170,119,1,0),(171,119,1,0),(172,108,1,0),(173,123,1,0),(174,119,1,0),(175,124,0,0),(176,108,1,0),(177,125,1,0),(178,126,0,0),(179,108,1,0),(180,127,0,0),(181,126,0,0),(182,128,1,0),(183,129,1,0),(184,128,1,0),(185,130,1,0),(186,129,1,0),(187,131,1,0),(188,132,0,0),(189,129,1,0),(190,128,1,0),(191,133,0,0),(192,134,0,0),(193,129,1,0),(194,128,1,0),(195,135,0,0),(196,136,0,0),(197,129,1,0),(198,137,1,0),(199,129,1,0),(200,138,1,0),(201,137,1,0),(202,129,1,0),(203,138,1,0),(204,139,0,0),(205,129,1,0),(206,140,0,0),(207,141,0,0),(208,142,0,0),(209,143,0,0),(210,144,0,0),(211,145,0,0),(212,146,1,0),(213,147,1,0),(214,147,1,0),(215,146,1,0),(216,147,1,0),(217,148,0,0),(218,147,1,0),(219,149,0,0),(220,150,0,0),(221,147,1,0),(222,149,0,0),(223,151,0,0),(224,147,1,0),(225,147,1,0),(226,152,0,0),(227,153,0,0),(228,147,1,0),(229,154,0,0),(230,155,0,0),(231,156,0,0),(232,157,0,0),(233,158,0,0),(234,159,0,0),(235,160,0,0),(236,161,0,0),(237,162,1,0),(238,163,0,0),(239,162,1,0),(240,164,0,0),(241,165,0,0),(242,166,0,0),(243,167,1,0),(244,168,0,0),(245,169,0,0),(246,170,1,0),(247,171,0,0),(248,172,0,0),(249,170,1,0),(250,173,1,0),(251,175,0,0),(252,173,1,0),(253,176,1,0),(254,177,0,0),(255,178,0,0),(256,179,0,0),(257,176,1,0),(258,180,0,0),(259,181,1,0),(260,182,1,0),(261,183,0,0),(262,184,0,0),(263,181,1,0),(264,181,1,0),(265,185,1,0),(266,186,0,0),(267,181,1,0),(268,185,1,0),(269,185,1,0),(270,181,1,0),(271,185,1,0),(272,181,1,0),(273,185,1,0),(274,187,1,0),(275,185,1,0),(276,188,0,0),(277,189,1,0),(278,190,0,0),(279,191,1,0),(280,191,1,0),(281,193,0,0),(282,194,1,0);
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
INSERT INTO `PermissionStrings` VALUES (5,'android.permission.ACCESS_CACHE_FILESYSTEM'),(13,'android.permission.ACCESS_COARSE_LOCATION'),(10,'android.permission.ACCESS_NETWORK_STATE'),(14,'android.permission.ACCESS_WIFI_STATE'),(9,'android.permission.DELETE_CACHE_FILES'),(12,'android.permission.GET_TASKS'),(6,'android.permission.INTERNET'),(8,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(4,'android.permission.RECEIVE_BOOT_COMPLETED'),(15,'android.permission.RESTART_PACKAGES'),(3,'android.permission.SET_WALLPAPER'),(16,'android.permission.SYSTEM_ALERT_WINDOW'),(7,'android.permission.WRITE_EXTERNAL_STORAGE'),(2,'com.android.launcher.permission.INSTALL_SHORTCUT'),(11,'com.android.launcher.permission.UNINSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'',NULL,NULL,NULL),(8,NULL,NULL,'file://',NULL,NULL,NULL),(9,NULL,NULL,'(.*)',NULL,NULL,NULL),(10,NULL,NULL,'',NULL,NULL,NULL),(11,NULL,NULL,'file://',NULL,NULL,NULL),(12,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(13,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(14,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(15,NULL,NULL,'file://',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(18,NULL,NULL,'file://',NULL,NULL,NULL),(19,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(20,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'file://',NULL,NULL,NULL),(24,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(25,NULL,NULL,'file://',NULL,NULL,NULL),(26,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(27,NULL,NULL,'file://',NULL,NULL,NULL),(28,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(29,NULL,NULL,'file://',NULL,NULL,NULL),(30,NULL,NULL,'(.*)',NULL,NULL,NULL),(31,NULL,NULL,'(.*)',NULL,NULL,NULL),(32,NULL,NULL,'(.*)',NULL,NULL,NULL),(33,NULL,NULL,'(.*)',NULL,NULL,NULL),(34,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(35,NULL,NULL,'(.*)',NULL,NULL,NULL),(36,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(37,NULL,NULL,'(.*)',NULL,NULL,NULL),(38,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(39,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(40,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(41,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(42,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(43,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(44,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(45,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(46,NULL,NULL,'file://',NULL,NULL,NULL),(47,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(48,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(49,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(50,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(51,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(52,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(53,NULL,NULL,'(.*)',NULL,NULL,NULL),(54,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(55,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(56,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL),(57,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(58,NULL,NULL,'file://',NULL,NULL,NULL),(59,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(60,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(61,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(62,NULL,NULL,'(.*)',NULL,NULL,NULL),(63,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(64,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(65,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL),(66,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(67,NULL,NULL,'(.*)',NULL,NULL,NULL),(68,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(69,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(70,NULL,NULL,'(.*)',NULL,NULL,NULL),(71,NULL,NULL,'file://',NULL,NULL,NULL),(72,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(73,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(74,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(75,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(76,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(77,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(78,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(79,NULL,NULL,'file://',NULL,NULL,NULL),(80,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(81,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(82,NULL,NULL,'file://',NULL,NULL,NULL),(83,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(84,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(85,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,97,38),(2,106,43),(3,122,60),(4,195,85);
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,2,1),(8,1,7),(9,2,2),(10,1,8),(11,3,1),(12,2,4),(13,1,9),(14,3,6),(15,2,6),(16,1,10),(17,3,7),(18,2,7),(19,4,1),(20,1,11),(21,3,10),(22,4,2),(23,2,10),(24,3,12),(25,4,3),(26,2,11),(27,3,14),(28,2,12),(29,4,4),(30,3,15),(31,2,13),(32,4,5),(33,4,6),(34,4,7),(35,4,8),(36,4,9),(37,4,10),(38,4,11),(39,5,1),(40,5,6),(41,5,7),(42,5,10),(43,5,14),(44,6,16),(45,6,1),(46,6,2),(47,6,6),(48,6,7),(49,6,10),(50,6,12),(51,6,13),(52,6,14),(53,7,16),(54,7,1),(55,7,2),(56,7,6),(57,7,7),(58,7,10),(59,7,12),(60,7,13),(61,7,14);
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

-- Dump completed on 2015-10-09  0:39:35
