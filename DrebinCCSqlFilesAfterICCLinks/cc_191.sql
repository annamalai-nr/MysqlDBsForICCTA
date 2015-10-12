-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_191
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (9,'android.appwidget.action.APPWIDGET_UPDATE'),(4,'android.intent.action.BOOT_COMPLETED'),(16,'android.intent.action.CHOOSER'),(15,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(14,'android.intent.action.PACKAGE_ADDED'),(20,'android.intent.action.PACKAGE_REMOVED'),(6,'android.intent.action.PHONE_STATE'),(23,'android.intent.action.SCREEN_OFF'),(22,'android.intent.action.SCREEN_ON'),(2,'android.intent.action.VIEW'),(18,'android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(13,'android.settings.APPLICATION_SETTINGS'),(5,'com.airpush.android.PushServiceStart16315'),(3,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(17,'com.igamepower.appmaster.GameBootReceiver'),(19,'com.igamepower.appmaster.Myhall'),(21,'com.igamepower.appmaster.Web'),(12,'com.zft.task.result'),(7,'itfunz.app.left_down'),(8,'itfunz.app.left_up'),(11,'itfunz.app.right_down'),(10,'itfunz.app.right_up');
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
INSERT INTO `Applications` VALUES (1,'com.igamepower.appmaster',1004),(2,'com.itfunz.itfunzsupertools',925),(3,'com.holentech',2),(4,'cn.gw.systemtool.fastuninstall',12),(5,'com.zft',4),(6,'com.zft',5);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(3,'android.intent.category.HOME'),(6,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(4,'android.intent.category.SAMPLE_CODE'),(5,'android.intent.categroy.DEFUAULT');
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
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.igamepower.appmaster.Myhall'),(2,1,'com.igamepower.appmaster.Web'),(3,1,'com.igamepower.appmaster.HomeActivity'),(4,2,'com.itfunz.itfunzsupertools.MainActivity'),(5,1,'com.igamepower.appmaster.SortActivity1'),(6,1,'com.igamepower.appmaster.SortActivity2'),(7,2,'com.itfunz.itfunzsupertools.Tools'),(8,1,'com.igamepower.appmaster.SearchActivity'),(9,2,'com.itfunz.itfunzsupertools.AutoPowerDown'),(10,2,'com.itfunz.itfunzsupertools.AutoPowerDownExec'),(11,1,'com.igamepower.appmaster.ManagerActivity'),(12,2,'com.itfunz.itfunzsupertools.simple.AboutProgram'),(13,2,'com.itfunz.itfunzsupertools.ThemeManager'),(14,1,'com.igamepower.appmaster.GameInfo'),(15,2,'com.itfunz.itfunzsupertools.ItfunzFileDialog'),(16,1,'com.igamepower.appmaster.TableClass'),(17,3,'net.youmi.android.AdActivity'),(18,2,'com.itfunz.itfunzsupertools.ItfunzTextReader'),(19,3,'com.holentech.z4root'),(20,1,'com.igamepower.appmaster.GameAlertDialog'),(21,1,'com.igamepower.appmaster.TestView'),(22,3,'com.holentech.Phase1'),(23,2,'com.itfunz.itfunzsupertools.DiskSpace'),(24,4,'cn.gw.systemtool.fastuninstall.FastUninstall'),(25,1,'com.igamepower.appmaster.DevelopmentSettings'),(26,3,'com.holentech.Phase2'),(27,2,'com.itfunz.itfunzsupertools.ItfunzPowerManager'),(28,3,'com.holentech.PhaseRemove'),(29,4,'cn.gw.systemtool.fastuninstall.ActiveActivity'),(30,3,'com.holentech.restore'),(31,1,'com.igamepower.appmaster.GameService'),(32,2,'com.itfunz.itfunzsupertools.OneKeyLockScreen'),(33,4,'com.airpush.android.PushAds'),(34,3,'com.admob.android.ads.AdMobActivity'),(35,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(36,3,'com.holentech.AlarmReceiver'),(37,4,'com.mt.airad.MultiAD'),(38,1,'com.igamepower.appmaster.GameBootReceiver'),(39,2,'com.itfunz.itfunzsupertools.simple.GuideProgram'),(40,4,'com.waps.OffersWebView'),(41,2,'com.itfunz.itfunzsupertools.ItfunzFileDialogConfig'),(42,4,'com.mobclick.android.UmengFeedback'),(43,2,'com.itfunz.itfunzsupertools.OtherFunction'),(44,4,'cn.gw.systemtool.fastuninstall.ProtectService'),(45,2,'com.itfunz.itfunzsupertools.ScreenCheckLayout'),(46,4,'com.airpush.android.PushService'),(47,2,'com.itfunz.itfunzsupertools.SimplifyProgram'),(48,2,'com.itfunz.itfunzsupertools.DataMvApp'),(49,4,'com.airpush.android.UserDetailsReceiver'),(50,2,'com.itfunz.itfunzsupertools.CpuControl'),(51,4,'com.airpush.android.MessageReceiver'),(52,2,'com.itfunz.itfunzsupertools.ItfunzSuperToolsSettings'),(53,4,'com.airpush.android.DeliveryReceiver'),(54,2,'com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetIconsDisplay'),(55,4,'cn.gw.systemtool.fastuninstall.BootReceiver'),(56,2,'com.itfunz.itfunzsupertools.ItfunzSuperToolsService'),(57,2,'com.itfunz.itfunzsupertools.CallledService'),(58,2,'com.itfunz.itfunzsupertools.HoldScreenLightService'),(59,2,'com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetService'),(60,2,'com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetServiceMid'),(61,2,'com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetServiceBig'),(62,2,'com.itfunz.itfunzsupertools.CallReceiver'),(63,2,'com.itfunz.itfunzsupertools.ItfunzSuperToolsBroadcast'),(64,2,'com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidget'),(65,2,'com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetMid'),(66,2,'com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetBig'),(67,5,'com.zft.QLogoPage'),(68,5,'com.zft.setting_.QAideTools'),(69,5,'com.zft.setting_.QUserDefineZF'),(70,5,'com.zft.setting_.QCallSetting'),(71,5,'com.zft.setting_.QGracePeriod'),(72,5,'com.zft.setting_.QHFWarnning'),(73,6,'com.zft.QLogoPage'),(74,6,'com.zft.QLogoPage_'),(75,5,'com.zft.setting_.QIPSetting_'),(76,5,'com.zft.setting_.QPresentCall'),(77,6,'com.zft.setting_.QAideTools'),(78,5,'com.zft.setting_.QRomaSetting'),(79,6,'com.zft.setting_.QUserDefineZF'),(80,5,'com.zft.setting_.QTHFCalc'),(81,6,'com.zft.setting_.QCallSetting'),(82,6,'com.zft.setting_.QGracePeriod'),(83,5,'com.zft.setting_.QSpecialNumber'),(84,6,'com.zft.setting_.QHFWarnning'),(85,5,'com.zft.setting_.QTrafficSetting'),(86,6,'com.zft.setting_.QIPSetting_'),(87,5,'com.zft.setting_.QSMSSetting_'),(88,6,'com.zft.setting_.QPresentCall'),(89,5,'com.zft.setting_.QCallInfoShowPosition'),(90,6,'com.zft.setting_.QRomaSetting'),(91,6,'com.zft.setting_.QTHFCalc'),(92,5,'com.zft.setting_.QHelpAndSupport'),(93,6,'com.zft.setting_.QSpecialNumber'),(94,5,'com.zft.QDescriptionPage'),(95,6,'com.zft.setting_.QTrafficSetting'),(96,5,'com.zft.subpage.QSmsSubPage'),(97,5,'com.zft.QDefinningTc'),(98,6,'com.zft.setting_.QSMSSetting_'),(99,5,'com.zft.QChangeTC'),(100,5,'com.zft.QLocationPage'),(101,5,'com.zft.QMainPage'),(102,6,'com.zft.setting_.QCallInfoShowPosition'),(103,6,'com.zft.setting_.QHelpAndSupport'),(104,5,'com.zft.QRegistPage'),(105,5,'com.zft.QSelectTC'),(106,6,'com.zft.information.QInformation'),(107,5,'com.zft.QSelectMainTc'),(108,6,'com.zft.information.QInformation_info'),(109,6,'com.zft.QDescriptionPage'),(110,5,'com.zft.QSelectNetTc'),(111,6,'com.zft.subpage.QSmsSubPage'),(112,6,'com.zft.QDefinningTc'),(113,5,'com.zft.QDetailMainTc'),(114,6,'com.zft.QChangeTC'),(115,6,'com.zft.QLocationPage'),(116,5,'com.zft.QFeatruePage'),(117,6,'com.zft.QMainPage'),(118,6,'com.zft.QMainPage'),(119,5,'com.zft.QTcInfo'),(120,5,'com.zft.QChangeTC_'),(121,6,'com.zft.QRegistPage'),(122,6,'com.zft.QSelectTC'),(123,5,'com.zft.subpage.QTrafficSubPage'),(124,6,'com.zft.QSelectMainTc'),(125,6,'com.zft.QSelectNetTc'),(126,6,'com.zft.QSelectNetTc'),(127,5,'com.zft.subpage.QSmdrPage'),(128,6,'com.zft.QDetailMainTc'),(129,6,'com.zft.QFeatruePage'),(130,5,'com.zft.subpage.QChargePage'),(131,6,'com.zft.QTcInfo'),(132,6,'com.zft.QChangeTC_'),(133,5,'com.zft.subpage.QFeedBackPage'),(134,6,'com.zft.subpage.QTrafficSubPage'),(135,3,'net.youmi.android.bh'),(136,6,'com.zft.subpage.QSmdrPage'),(137,5,'com.zft.subpage.QFriendsPage'),(138,6,'com.zft.subpage.QChargePage'),(139,6,'com.zft.subpage.QFeedBackPage'),(140,5,'com.core.components.QSubList'),(141,6,'com.zft.subpage.QFriendsPage'),(142,6,'com.core.components.QSubList'),(143,5,'com.zft.happysms.MainActivity'),(144,6,'com.zft.happysms.MainActivity'),(145,6,'com.zft.QCallReport'),(146,5,'com.zft.QCallReport'),(147,6,'com.zft.subpage.QPieSubPage'),(148,6,'com.zft.subpage.QBarChartSubPage'),(149,5,'com.zft.subpage.QPieSubPage'),(150,6,'com.zft.subpage.QSmsduSubPage'),(151,6,'com.service.ZftService'),(152,5,'com.zft.subpage.QBarChartSubPage'),(153,6,'com.service.BootBroadcastReceiver'),(154,1,'com.igamepower.appmaster.bu'),(155,5,'com.zft.subpage.QSmsduSubPage'),(156,6,'com.zft.CheckChargeReceiver'),(157,5,'com.service.ZftService'),(158,5,'com.service.BootBroadcastReceiver'),(159,6,'com.service.callLogs.LogsContentProvider'),(160,5,'com.zft.CheckChargeReceiver'),(161,6,'com.provider.Variable'),(162,6,'com.service.netraffic.TrafficProvider'),(163,5,'com.service.callLogs.LogsContentProvider'),(164,5,'com.provider.Variable'),(165,1,'com.igamepower.appmaster.bp'),(166,3,'com.holentech.Phase1$4'),(167,3,'com.holentech.z4root$4'),(168,1,'com.igamepower.appmaster.aq'),(169,3,'net.youmi.android.v'),(170,1,'com.igamepower.appmaster.aa'),(171,1,'com.igamepower.appmaster.ai'),(172,1,'com.igamepower.appmaster.bl'),(173,1,'com.igamepower.appmaster.bj'),(174,1,'com.igamepower.appmaster.bk'),(175,1,'com.igamepower.appmaster.cl'),(176,2,'com.itfunz.itfunzsupertools.ItfunzFileDialog$27'),(177,2,'com.itfunz.itfunzsupertools.ItfunzSuperToolsSettings$6'),(178,2,'com.itfunz.itfunzsupertools.ItfunzFileDialog$26'),(179,2,'com.itfunz.itfunzsupertools.OtherFunction$3'),(180,2,'com.itfunz.itfunzsupertools.Tools$25'),(181,2,'com.itfunz.itfunzsupertools.Tools$29$1'),(182,2,'com.itfunz.itfunzsupertools.ItfunzFileDialog$13'),(183,2,'com.itfunz.itfunzsupertools.Tools$17'),(184,2,'com.itfunz.itfunzsupertools.Tools$23'),(185,2,'com.itfunz.itfunzsupertools.Tools$31$1'),(186,2,'com.itfunz.itfunzsupertools.ItfunzFileDialog$12'),(187,2,'com.itfunz.itfunzsupertools.Tools$26'),(188,2,'com.itfunz.itfunzsupertools.ItfunzFileDialog$14'),(189,2,'com.itfunz.itfunzsupertools.HoldScreenLightService$1'),(190,2,'com.itfunz.itfunzsupertools.Tools$14'),(191,2,'com.itfunz.itfunzsupertools.ItfunzFileDialog$7'),(192,2,'com.itfunz.itfunzsupertools.Tools$27'),(193,2,'com.itfunz.itfunzsupertools.Tools$40'),(194,2,'com.itfunz.itfunzsupertools.ItfunzSuperToolsSettings$3$7'),(195,2,'com.itfunz.itfunzsupertools.Tools$32'),(196,2,'com.itfunz.itfunzsupertools.ItfunzSuperToolsSettings$2'),(197,2,'com.itfunz.itfunzsupertools.Tools$22'),(198,2,'com.itfunz.itfunzsupertools.Tools$20'),(199,2,'com.itfunz.itfunzsupertools.Tools$21'),(200,2,'com.itfunz.itfunzsupertools.ItfunzFileDialog$4'),(201,2,'com.itfunz.itfunzsupertools.OtherFunction$1'),(202,2,'com.itfunz.itfunzsupertools.Tools$28'),(203,2,'com.itfunz.itfunzsupertools.ItfunzFileDialog$25'),(204,2,'com.itfunz.itfunzsupertools.Tools$31'),(205,2,'com.itfunz.itfunzsupertools.ItfunzFileDialog$28');
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,17,'D50EF1926ADD471892E72BCE6D7E032C'),(2,11,'url'),(3,8,'package_name'),(4,11,'package_name'),(5,17,'172C94EDC717477aBF600D7898A64A8E'),(6,11,'app_name'),(7,17,'EB80F3291A8E469c962CA133BDC549D7'),(8,14,'title'),(9,11,'status'),(10,11,'total'),(11,6,'status'),(12,17,'D780FBF4215247bcBB1AC0AD33C474FE'),(13,6,'nextclassid'),(14,11,'soft_id'),(15,8,'status'),(16,11,'filepath'),(17,11,'completed'),(18,1,'nextclassid'),(19,11,'icon'),(20,20,'title'),(21,20,'url'),(22,20,'content'),(23,14,'from_table'),(24,6,'package_name'),(25,14,'status'),(26,14,'filepath'),(27,8,'version_code'),(28,20,'btn_txt'),(29,62,'state');
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
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',0,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',1,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'s',1,NULL,NULL),(32,32,'a',1,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'r',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'r',1,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'s',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'s',1,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'r',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'r',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'r',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'r',1,NULL,NULL),(56,56,'s',0,NULL,NULL),(57,57,'s',0,NULL,NULL),(58,58,'s',0,NULL,NULL),(59,59,'s',0,NULL,NULL),(60,60,'s',0,NULL,NULL),(61,61,'s',0,NULL,NULL),(62,62,'r',1,NULL,NULL),(63,63,'r',1,NULL,NULL),(64,64,'r',1,NULL,NULL),(65,65,'r',1,NULL,NULL),(66,66,'r',1,NULL,NULL),(67,67,'a',1,NULL,NULL),(68,68,'a',1,NULL,NULL),(69,69,'a',1,NULL,NULL),(70,70,'a',1,NULL,NULL),(71,71,'a',1,NULL,NULL),(72,72,'a',1,NULL,NULL),(73,73,'a',1,NULL,NULL),(74,74,'a',1,NULL,NULL),(75,75,'a',1,NULL,NULL),(76,76,'a',1,NULL,NULL),(77,77,'a',1,NULL,NULL),(78,78,'a',1,NULL,NULL),(79,79,'a',1,NULL,NULL),(80,81,'a',1,NULL,NULL),(81,80,'a',1,NULL,NULL),(82,82,'a',1,NULL,NULL),(83,83,'a',1,NULL,NULL),(84,84,'a',1,NULL,NULL),(85,85,'a',1,NULL,NULL),(86,86,'a',1,NULL,NULL),(87,87,'a',1,NULL,NULL),(88,88,'a',1,NULL,NULL),(89,90,'a',1,NULL,NULL),(90,89,'a',1,NULL,NULL),(91,91,'a',1,NULL,NULL),(92,92,'a',1,NULL,NULL),(93,93,'a',1,NULL,NULL),(94,94,'a',0,NULL,NULL),(95,95,'a',1,NULL,NULL),(96,96,'a',0,NULL,NULL),(97,97,'a',0,NULL,NULL),(98,98,'a',1,NULL,NULL),(99,99,'a',0,NULL,NULL),(100,100,'a',0,NULL,NULL),(101,102,'a',1,NULL,NULL),(102,101,'a',1,NULL,NULL),(103,103,'a',1,NULL,NULL),(104,104,'a',0,NULL,NULL),(105,105,'a',0,NULL,NULL),(106,106,'a',0,NULL,NULL),(107,108,'a',0,NULL,NULL),(108,107,'a',0,NULL,NULL),(109,109,'a',0,NULL,NULL),(110,111,'a',0,NULL,NULL),(111,110,'a',0,NULL,NULL),(112,112,'a',0,NULL,NULL),(113,114,'a',0,NULL,NULL),(114,113,'a',0,NULL,NULL),(115,115,'a',0,NULL,NULL),(116,116,'a',0,NULL,NULL),(117,117,'a',1,NULL,NULL),(118,118,'a',1,NULL,NULL),(119,119,'a',0,NULL,NULL),(120,121,'a',0,NULL,NULL),(121,120,'a',0,NULL,NULL),(122,122,'a',0,NULL,NULL),(123,124,'a',0,NULL,NULL),(124,123,'a',0,NULL,NULL),(125,125,'a',0,NULL,NULL),(126,126,'a',0,NULL,NULL),(127,127,'a',0,NULL,NULL),(128,128,'a',0,NULL,NULL),(129,129,'a',0,NULL,NULL),(130,130,'a',0,NULL,NULL),(131,131,'a',0,NULL,NULL),(132,132,'a',0,NULL,NULL),(133,133,'a',0,NULL,NULL),(134,134,'a',0,NULL,NULL),(135,136,'a',0,NULL,NULL),(136,137,'a',0,NULL,NULL),(137,138,'a',0,NULL,NULL),(138,139,'a',0,NULL,NULL),(139,140,'a',0,NULL,NULL),(140,141,'a',0,NULL,NULL),(141,142,'a',0,NULL,NULL),(142,143,'a',0,NULL,NULL),(143,144,'a',0,NULL,NULL),(144,145,'a',1,NULL,NULL),(145,146,'a',1,NULL,NULL),(146,147,'a',0,NULL,NULL),(147,148,'a',0,NULL,NULL),(148,149,'a',0,NULL,NULL),(149,150,'a',0,NULL,NULL),(150,151,'s',0,NULL,NULL),(151,152,'a',0,NULL,NULL),(152,153,'r',1,NULL,NULL),(153,155,'a',0,NULL,NULL),(154,156,'r',1,NULL,NULL),(155,157,'s',0,NULL,NULL),(156,158,'r',1,NULL,NULL),(157,159,'p',0,NULL,NULL),(158,161,'p',0,NULL,NULL),(159,160,'r',1,NULL,NULL),(160,162,'p',0,NULL,NULL),(161,163,'p',0,NULL,NULL),(162,164,'p',0,NULL,NULL),(163,189,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,17),(2,2,3),(3,3,38),(4,4,3),(5,5,3),(6,6,2),(7,7,19),(8,8,14),(9,9,19),(10,10,20),(11,11,22),(12,12,3),(13,13,36),(14,14,19),(15,15,14),(16,16,19),(17,17,19),(18,18,17),(19,19,11),(20,20,38),(21,21,38),(22,22,6),(23,23,19),(24,24,22),(25,25,2),(26,26,1),(27,27,1),(28,28,11),(29,29,1),(30,30,6),(31,31,3),(32,32,6),(33,33,11),(34,34,20),(35,35,6),(36,36,20),(37,37,8),(38,38,20),(39,39,6),(40,40,8),(41,41,16),(42,42,1),(43,43,16),(44,44,1),(45,45,14),(46,46,2),(47,47,31),(48,48,14),(49,49,6),(50,50,3),(51,51,1),(52,52,1),(53,53,14),(54,54,21),(55,55,64),(56,56,66),(57,57,66),(58,58,15),(59,59,64),(60,60,66),(61,61,52),(62,62,65),(63,63,15),(64,64,56),(65,65,43),(66,66,7),(67,67,65),(68,68,7),(69,69,65),(70,70,64),(71,71,66),(72,72,65),(73,73,15),(74,74,64),(75,75,64),(76,76,65),(77,77,65),(78,78,15),(79,79,7),(80,80,13),(81,81,66),(82,82,57),(83,83,65),(84,84,64),(85,85,65),(86,86,7),(87,87,65),(88,88,7),(89,89,15),(90,90,66),(91,91,15),(92,92,7),(93,93,64),(94,94,15),(95,95,66),(96,96,7),(97,97,15),(98,98,64),(99,99,7),(100,100,64),(101,101,65),(102,102,7),(103,103,52),(104,104,66),(105,105,7),(106,106,52),(107,107,64),(108,108,65),(109,109,7),(110,110,66),(111,111,15),(112,112,7),(113,113,7),(114,114,66),(115,115,64),(116,116,63),(117,117,66),(118,118,64),(119,119,15),(120,120,66),(121,121,65),(122,122,64),(123,123,66),(124,124,15),(125,125,65),(126,126,56),(127,127,43),(128,128,7),(129,129,15),(130,130,7),(131,131,15),(132,132,9),(133,133,15),(134,134,7),(135,135,15);
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
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,135,'<net.youmi.android.bh: void a(android.content.Context,java.lang.String)>',7,'a',NULL),(2,154,'<com.igamepower.appmaster.bu: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(3,38,'<com.igamepower.appmaster.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',15,'s',NULL),(4,3,'<com.igamepower.appmaster.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',47,'a',NULL),(5,154,'<com.igamepower.appmaster.bu: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(6,165,'<com.igamepower.appmaster.bp: void onClick(android.content.DialogInterface,int)>',29,'a',NULL),(7,19,'<com.holentech.z4root: void z4rootb(android.view.View)>',12,'a',NULL),(8,14,'<com.igamepower.appmaster.GameInfo: void onCreate(android.os.Bundle)>',85,'a',NULL),(9,19,'<com.holentech.z4root: void unroot(android.view.View)>',14,'a',NULL),(10,20,'<com.igamepower.appmaster.GameAlertDialog: void onClick(android.view.View)>',61,'a',NULL),(11,166,'<com.holentech.Phase1$4: void onClick(android.content.DialogInterface,int)>',15,'a',NULL),(12,154,'<com.igamepower.appmaster.bu: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(13,36,'<com.holentech.AlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',6,'a',NULL),(14,167,'<com.holentech.z4root$4: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',37,'a',NULL),(15,168,'<com.igamepower.appmaster.aq: void onClick(android.view.View)>',216,'a',NULL),(16,19,'<com.holentech.z4root: boolean onOptionsItemSelected(android.view.MenuItem)>',25,'a',NULL),(17,19,'<com.holentech.z4root: void restore(android.view.View)>',4,'a',NULL),(18,169,'<net.youmi.android.v: void onClick(android.view.View)>',48,'a',NULL),(19,11,'<com.igamepower.appmaster.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(20,38,'<com.igamepower.appmaster.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',31,'s',NULL),(21,38,'<com.igamepower.appmaster.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',52,'s',NULL),(22,6,'<com.igamepower.appmaster.SortActivity2: void onCreate(android.os.Bundle)>',11,'s',NULL),(23,19,'<com.holentech.z4root: void temproot(android.view.View)>',12,'a',NULL),(24,166,'<com.holentech.Phase1$4: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(25,2,'<com.igamepower.appmaster.Web: void onCreate(android.os.Bundle)>',49,'s',NULL),(26,170,'<com.igamepower.appmaster.aa: void onCheckedChanged(android.widget.RadioGroup,int)>',54,'a',NULL),(27,171,'<com.igamepower.appmaster.ai: void onClick(android.content.DialogInterface,int)>',29,'a',NULL),(28,172,'<com.igamepower.appmaster.bl: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(29,1,'<com.igamepower.appmaster.Myhall: void onCreate(android.os.Bundle)>',38,'s',NULL),(30,6,'<com.igamepower.appmaster.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',23,'a',NULL),(31,3,'<com.igamepower.appmaster.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',38,'a',NULL),(32,173,'<com.igamepower.appmaster.bj: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(33,172,'<com.igamepower.appmaster.bl: void onClick(android.content.DialogInterface,int)>',68,'a',NULL),(34,20,'<com.igamepower.appmaster.GameAlertDialog: void onClick(android.view.View)>',29,'a',NULL),(35,173,'<com.igamepower.appmaster.bj: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(36,20,'<com.igamepower.appmaster.GameAlertDialog: void onClick(android.view.View)>',52,'a',NULL),(37,8,'<com.igamepower.appmaster.SearchActivity: void onCreate(android.os.Bundle)>',12,'s',NULL),(38,20,'<com.igamepower.appmaster.GameAlertDialog: void onClick(android.view.View)>',43,'a',NULL),(39,174,'<com.igamepower.appmaster.bk: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(40,8,'<com.igamepower.appmaster.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(41,16,'<com.igamepower.appmaster.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',20,'a',NULL),(42,1,'<com.igamepower.appmaster.Myhall: void onCreate(android.os.Bundle)>',33,'s',NULL),(43,16,'<com.igamepower.appmaster.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(44,170,'<com.igamepower.appmaster.aa: void onCheckedChanged(android.widget.RadioGroup,int)>',20,'a',NULL),(45,14,'<com.igamepower.appmaster.GameInfo: boolean onKeyDown(int,android.view.KeyEvent)>',10,'a',NULL),(46,2,'<com.igamepower.appmaster.Web: void onCreate(android.os.Bundle)>',45,'s',NULL),(47,175,'<com.igamepower.appmaster.cl: void run()>',55,'a',NULL),(48,14,'<com.igamepower.appmaster.GameInfo: void onCreate(android.os.Bundle)>',11,'s',NULL),(49,173,'<com.igamepower.appmaster.bj: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(50,3,'<com.igamepower.appmaster.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',28,'a',NULL),(51,170,'<com.igamepower.appmaster.aa: void onCheckedChanged(android.widget.RadioGroup,int)>',34,'a',NULL),(52,170,'<com.igamepower.appmaster.aa: void onCheckedChanged(android.widget.RadioGroup,int)>',44,'a',NULL),(53,168,'<com.igamepower.appmaster.aq: void onClick(android.view.View)>',198,'a',NULL),(54,21,'<com.igamepower.appmaster.TestView: void onCreate(android.os.Bundle)>',26,'s',NULL),(55,64,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidget: void onReceive(android.content.Context,android.content.Intent)>',202,'a',NULL),(56,66,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetBig: void onReceive(android.content.Context,android.content.Intent)>',506,'a',NULL),(57,66,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetBig: void onReceive(android.content.Context,android.content.Intent)>',564,'a',NULL),(58,176,'<com.itfunz.itfunzsupertools.ItfunzFileDialog$27: void onClick(android.content.DialogInterface,int)>',29,'p',NULL),(59,64,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidget: void onReceive(android.content.Context,android.content.Intent)>',478,'a',NULL),(60,66,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetBig: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',7,'s',NULL),(61,177,'<com.itfunz.itfunzsupertools.ItfunzSuperToolsSettings$6: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(62,65,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetMid: void onReceive(android.content.Context,android.content.Intent)>',445,'a',NULL),(63,178,'<com.itfunz.itfunzsupertools.ItfunzFileDialog$26: void onClick(android.content.DialogInterface,int)>',29,'p',NULL),(64,56,'<com.itfunz.itfunzsupertools.ItfunzSuperToolsService: void onCreate()>',103,'s',NULL),(65,179,'<com.itfunz.itfunzsupertools.OtherFunction$3: void onClick(android.view.View)>',12,'p',NULL),(66,180,'<com.itfunz.itfunzsupertools.Tools$25: boolean onPreferenceClick(android.preference.Preference)>',6,'a',NULL),(67,65,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetMid: void onReceive(android.content.Context,android.content.Intent)>',362,'a',NULL),(68,181,'<com.itfunz.itfunzsupertools.Tools$29$1: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(69,65,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetMid: void onReceive(android.content.Context,android.content.Intent)>',616,'a',NULL),(70,64,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidget: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',7,'s',NULL),(71,66,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetBig: void onReceive(android.content.Context,android.content.Intent)>',163,'a',NULL),(72,65,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetMid: void onReceive(android.content.Context,android.content.Intent)>',116,'a',NULL),(73,182,'<com.itfunz.itfunzsupertools.ItfunzFileDialog$13: void onClick(android.content.DialogInterface,int)>',37,'a',NULL),(74,64,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidget: void onReceive(android.content.Context,android.content.Intent)>',275,'a',NULL),(75,64,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidget: void onReceive(android.content.Context,android.content.Intent)>',158,'a',NULL),(76,65,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetMid: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',7,'s',NULL),(77,65,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetMid: void onReceive(android.content.Context,android.content.Intent)>',308,'a',NULL),(78,15,'<com.itfunz.itfunzsupertools.ItfunzFileDialog: boolean onOptionsItemSelected(android.view.MenuItem)>',48,'a',NULL),(79,183,'<com.itfunz.itfunzsupertools.Tools$17: boolean onPreferenceClick(android.preference.Preference)>',7,'a',NULL),(80,13,'<com.itfunz.itfunzsupertools.ThemeManager: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(81,66,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetBig: void onReceive(android.content.Context,android.content.Intent)>',337,'a',NULL),(82,57,'<com.itfunz.itfunzsupertools.CallledService: void onCreate()>',10,'p',NULL),(83,65,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetMid: void onReceive(android.content.Context,android.content.Intent)>',281,'a',NULL),(84,64,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidget: void onReceive(android.content.Context,android.content.Intent)>',578,'a',NULL),(85,65,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetMid: void onReceive(android.content.Context,android.content.Intent)>',335,'a',NULL),(86,184,'<com.itfunz.itfunzsupertools.Tools$23: boolean onPreferenceClick(android.preference.Preference)>',6,'a',NULL),(87,65,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetMid: void onReceive(android.content.Context,android.content.Intent)>',206,'a',NULL),(88,185,'<com.itfunz.itfunzsupertools.Tools$31$1: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(89,186,'<com.itfunz.itfunzsupertools.ItfunzFileDialog$12: void onClick(android.content.DialogInterface,int)>',13,'a',NULL),(90,66,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetBig: void onReceive(android.content.Context,android.content.Intent)>',364,'a',NULL),(91,182,'<com.itfunz.itfunzsupertools.ItfunzFileDialog$13: void onClick(android.content.DialogInterface,int)>',45,'a',NULL),(92,187,'<com.itfunz.itfunzsupertools.Tools$26: boolean onPreferenceClick(android.preference.Preference)>',8,'a',NULL),(93,64,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidget: void onReceive(android.content.Context,android.content.Intent)>',327,'a',NULL),(94,188,'<com.itfunz.itfunzsupertools.ItfunzFileDialog$14: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(95,66,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetBig: void onReceive(android.content.Context,android.content.Intent)>',283,'a',NULL),(96,190,'<com.itfunz.itfunzsupertools.Tools$14: boolean onPreferenceClick(android.preference.Preference)>',6,'a',NULL),(97,191,'<com.itfunz.itfunzsupertools.ItfunzFileDialog$7: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',199,'a',NULL),(98,64,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidget: void onReceive(android.content.Context,android.content.Intent)>',528,'a',NULL),(99,192,'<com.itfunz.itfunzsupertools.Tools$27: boolean onPreferenceClick(android.preference.Preference)>',6,'a',NULL),(100,64,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidget: void onReceive(android.content.Context,android.content.Intent)>',353,'a',NULL),(101,65,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetMid: void onReceive(android.content.Context,android.content.Intent)>',161,'a',NULL),(102,193,'<com.itfunz.itfunzsupertools.Tools$40: void onClick(android.content.DialogInterface,int)>',26,'s',NULL),(103,194,'<com.itfunz.itfunzsupertools.ItfunzSuperToolsSettings$3$7: boolean onPreferenceClick(android.preference.Preference)>',9,'a',NULL),(104,66,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetBig: void onReceive(android.content.Context,android.content.Intent)>',448,'a',NULL),(105,195,'<com.itfunz.itfunzsupertools.Tools$32: boolean onPreferenceClick(android.preference.Preference)>',6,'a',NULL),(106,196,'<com.itfunz.itfunzsupertools.ItfunzSuperToolsSettings$2: boolean onKey(android.content.DialogInterface,int,android.view.KeyEvent)>',9,'a',NULL),(107,64,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidget: void onReceive(android.content.Context,android.content.Intent)>',428,'a',NULL),(108,65,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetMid: void onReceive(android.content.Context,android.content.Intent)>',502,'a',NULL),(109,197,'<com.itfunz.itfunzsupertools.Tools$22: boolean onPreferenceClick(android.preference.Preference)>',6,'a',NULL),(110,66,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetBig: void onReceive(android.content.Context,android.content.Intent)>',208,'a',NULL),(111,182,'<com.itfunz.itfunzsupertools.ItfunzFileDialog$13: void onClick(android.content.DialogInterface,int)>',13,'a',NULL),(112,198,'<com.itfunz.itfunzsupertools.Tools$20: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',16,'s',NULL),(113,199,'<com.itfunz.itfunzsupertools.Tools$21: boolean onPreferenceClick(android.preference.Preference)>',8,'a',NULL),(114,66,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetBig: void onReceive(android.content.Context,android.content.Intent)>',622,'a',NULL),(115,64,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidget: void onReceive(android.content.Context,android.content.Intent)>',70,'a',NULL),(116,63,'<com.itfunz.itfunzsupertools.ItfunzSuperToolsBroadcast: void onReceive(android.content.Context,android.content.Intent)>',6,'s',NULL),(117,66,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetBig: void onReceive(android.content.Context,android.content.Intent)>',73,'a',NULL),(118,64,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidget: void onReceive(android.content.Context,android.content.Intent)>',114,'a',NULL),(119,182,'<com.itfunz.itfunzsupertools.ItfunzFileDialog$13: void onClick(android.content.DialogInterface,int)>',29,'a',NULL),(120,66,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetBig: void onReceive(android.content.Context,android.content.Intent)>',118,'a',NULL),(121,65,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetMid: void onReceive(android.content.Context,android.content.Intent)>',71,'a',NULL),(122,64,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidget: void onReceive(android.content.Context,android.content.Intent)>',301,'a',NULL),(123,66,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetBig: void onReceive(android.content.Context,android.content.Intent)>',310,'a',NULL),(124,200,'<com.itfunz.itfunzsupertools.ItfunzFileDialog$4: boolean onKey(android.content.DialogInterface,int,android.view.KeyEvent)>',9,'a',NULL),(125,65,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetMid: void onReceive(android.content.Context,android.content.Intent)>',559,'a',NULL),(126,56,'<com.itfunz.itfunzsupertools.ItfunzSuperToolsService: void onCreate()>',79,'s',NULL),(127,201,'<com.itfunz.itfunzsupertools.OtherFunction$1: void onClick(android.view.View)>',6,'a',NULL),(128,202,'<com.itfunz.itfunzsupertools.Tools$28: boolean onPreferenceClick(android.preference.Preference)>',6,'a',NULL),(129,203,'<com.itfunz.itfunzsupertools.ItfunzFileDialog$25: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',156,'a',NULL),(130,204,'<com.itfunz.itfunzsupertools.Tools$31: boolean onPreferenceClick(android.preference.Preference)>',21,'a',NULL),(131,205,'<com.itfunz.itfunzsupertools.ItfunzFileDialog$28: void onClick(android.content.DialogInterface,int)>',29,'p',NULL),(132,9,'<com.itfunz.itfunzsupertools.AutoPowerDown: void RestartService()>',4,'s',0),(133,186,'<com.itfunz.itfunzsupertools.ItfunzFileDialog$12: void onClick(android.content.DialogInterface,int)>',55,'a',NULL),(134,7,'<com.itfunz.itfunzsupertools.Tools: void onCreate(android.os.Bundle)>',6,'s',NULL),(135,182,'<com.itfunz.itfunzsupertools.ItfunzFileDialog$13: void onClick(android.content.DialogInterface,int)>',21,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,2),(2,2,2),(3,3,2),(4,5,2),(5,6,2),(6,8,2),(7,9,2),(8,10,2),(9,12,2),(10,13,2),(11,14,2),(12,20,13),(13,21,2),(14,23,15),(15,24,1),(16,26,1),(17,28,1),(18,29,16),(19,30,1),(20,31,16),(21,32,16),(22,34,16),(23,35,17),(24,36,16),(25,37,16),(26,38,17),(27,39,16),(28,40,16),(29,44,18),(30,46,2),(31,47,1),(32,48,1),(33,53,15),(34,55,2),(35,56,3),(36,58,2),(37,59,2),(38,63,19),(39,64,1),(40,65,1),(41,68,21),(42,75,2),(43,76,2),(44,78,1),(45,79,1),(46,80,1),(47,81,1),(48,83,1),(49,84,1),(50,87,1),(51,89,1),(52,91,1),(53,92,1),(54,93,2),(55,94,1),(56,95,1),(57,97,1),(58,101,1),(59,102,1),(60,103,1),(61,104,1),(62,106,1),(63,109,1),(64,110,2),(65,111,1),(66,112,1),(67,113,2),(68,114,1),(69,116,2),(70,117,1),(71,119,1),(72,120,1),(73,122,1),(74,123,1),(75,126,1),(76,127,1),(77,129,1),(78,130,2),(79,132,1),(80,133,1),(81,134,1),(82,136,1),(83,137,1),(84,138,2),(85,139,1),(86,140,1),(87,141,1),(88,142,1),(89,144,1),(90,148,2),(91,150,2),(92,152,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,24,1),(2,26,6),(3,28,1),(4,30,6),(5,47,1),(6,48,6),(7,64,1),(8,65,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,4,'com/igamepower/appmaster/GameInfo'),(2,7,'com/igamepower/appmaster/GameService'),(3,11,'com/igamepower/appmaster/Myhall'),(4,15,'com/holentech/Phase1'),(5,16,'com/igamepower/appmaster/Myhall'),(6,17,'com/holentech/Phase1'),(7,18,'com/holentech/PhaseRemove'),(8,19,'com/igamepower/appmaster/GameAlertDialog'),(9,22,'com/holentech/Phase2'),(10,25,'com/holentech/z4root'),(11,27,'com/holentech/restore'),(12,33,'com/igamepower/appmaster/GameService'),(13,35,'com/igamepower/appmaster/GameService'),(14,38,'com/igamepower/appmaster/GameService'),(15,41,'com/igamepower/appmaster/GameService'),(16,42,'com/holentech/Phase1'),(17,43,'com/igamepower/appmaster/GameService'),(18,45,'com/igamepower/appmaster/Myhall'),(19,49,'com/igamepower/appmaster/GameService'),(20,50,'com/igamepower/appmaster/GameInfo'),(21,51,'com/igamepower/appmaster/Myhall'),(22,52,'com/igamepower/appmaster/GameInfo'),(23,54,'com/igamepower/appmaster/GameInfo'),(24,57,'com/igamepower/appmaster/GameService'),(25,60,'com/igamepower/appmaster/Myhall'),(26,61,'com/igamepower/appmaster/GameInfo'),(27,62,'com/igamepower/appmaster/GameInfo'),(28,63,'com/igamepower/appmaster/GameService'),(29,66,'com/igamepower/appmaster/Myhall'),(30,67,'com/igamepower/appmaster/Myhall'),(31,68,'com/igamepower/appmaster/GameService'),(32,69,'com/igamepower/appmaster/GameAlertDialog'),(33,70,'com/igamepower/appmaster/GameService'),(34,71,'com/igamepower/appmaster/Myhall'),(35,72,'com/igamepower/appmaster/GameInfo'),(36,73,'com/igamepower/appmaster/Myhall'),(37,74,'com/igamepower/appmaster/Myhall'),(38,77,'com/igamepower/appmaster/GameService'),(39,78,'(.*)'),(40,79,'(.*)'),(41,80,'(.*)'),(42,81,'(.*)'),(43,82,'com/itfunz/itfunzsupertools/widget/ItfunzSuperToolsWidgetServiceBig'),(44,83,'com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetIconsDisplay'),(45,84,'(.*)'),(46,85,'com/itfunz/itfunzsupertools/CallledService'),(47,86,'com/itfunz/itfunzsupertools/OneKeyLockScreen'),(48,87,'(.*)'),(49,88,'com/itfunz/itfunzsupertools/DataMvApp'),(50,89,'(.*)'),(51,90,'com/itfunz/itfunzsupertools/widget/ItfunzSuperToolsWidgetService'),(52,91,'(.*)'),(53,92,'(.*)'),(54,94,'(.*)'),(55,95,'(.*)'),(56,96,'com/itfunz/itfunzsupertools/widget/ItfunzSuperToolsWidgetServiceMid'),(57,97,'(.*)'),(58,98,'com/itfunz/itfunzsupertools/ItfunzFileDialogConfig'),(59,99,'com/itfunz/itfunzsupertools/AutoPowerDown'),(60,100,'com/itfunz/itfunzsupertools/ItfunzFileDialog'),(61,101,'(.*)'),(62,102,'(.*)'),(63,103,'(.*)'),(64,104,'(.*)'),(65,105,'com/itfunz/itfunzsupertools/ItfunzFileDialog'),(66,106,'(.*)'),(67,107,'com/itfunz/itfunzsupertools/CpuControl'),(68,108,'com/itfunz/itfunzsupertools/DiskSpace'),(69,109,'(.*)'),(70,111,'com.itfunz.itfunzsupertools.simple.GuideProgram'),(71,112,'(.*)'),(72,114,'(.*)'),(73,115,'com/itfunz/itfunzsupertools/ItfunzPowerManager'),(74,117,'(.*)'),(75,118,'com/itfunz/itfunzsupertools/OtherFunction'),(76,119,'(.*)'),(77,120,'(.*)'),(78,121,'com/itfunz/itfunzsupertools/HoldScreenLightService'),(79,122,'com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetIconsDisplay'),(80,123,'(.*)'),(81,124,'com/itfunz/itfunzsupertools/ItfunzSuperToolsSettings'),(82,125,'com/itfunz/itfunzsupertools/Tools'),(83,126,'(.*)'),(84,127,'(.*)'),(85,128,'com/itfunz/itfunzsupertools/ThemeManager'),(86,129,'(.*)'),(87,131,'com/itfunz/itfunzsupertools/CallledService'),(88,132,'com.itfunz.itfunzsupertools.simple.AboutProgram'),(89,133,'(.*)'),(90,134,'(.*)'),(91,135,'com/itfunz/itfunzsupertools/ItfunzSuperToolsService'),(92,136,'(.*)'),(93,137,'(.*)'),(94,139,'(.*)'),(95,140,'(.*)'),(96,141,'(.*)'),(97,142,'(.*)'),(98,143,'com/itfunz/itfunzsupertools/Tools'),(99,144,'(.*)'),(100,145,'com/itfunz/itfunzsupertools/HoldScreenLightService'),(101,146,'com/itfunz/itfunzsupertools/ScreenCheckLayout'),(102,147,'com/itfunz/itfunzsupertools/SimplifyProgram'),(103,149,'com/itfunz/itfunzsupertools/CpuControl'),(104,151,'com/itfunz/itfunzsupertools/ItfunzSuperToolsService');
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,1),(2,2,2),(3,3,3),(4,5,4),(5,6,5),(6,8,6),(7,9,7),(8,10,8),(9,12,9),(10,13,10),(11,14,11),(12,21,12),(13,23,13),(14,46,14),(15,53,15),(16,55,16),(17,58,17),(18,59,18),(19,75,19),(20,76,20),(21,93,24),(22,110,26),(23,113,27),(24,116,28),(25,130,29),(26,138,30),(27,148,31),(28,150,33),(29,152,34);
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,4,'title'),(2,11,'title'),(3,11,'nextclassid'),(4,11,'clicked'),(5,19,'title'),(6,19,'btn_txt'),(7,19,'need_adb_flag'),(8,19,'cont'),(9,19,'close_flag'),(10,29,'android.intent.extra.INTENT'),(11,31,'android.intent.extra.INTENT'),(12,32,'android.intent.extra.TITLE'),(13,32,'android.intent.extra.INTENT'),(14,34,'android.intent.extra.INTENT'),(15,36,'android.intent.extra.TITLE'),(16,36,'android.intent.extra.INTENT'),(17,37,'android.intent.extra.INTENT'),(18,39,'android.intent.extra.TITLE'),(19,39,'android.intent.extra.INTENT'),(20,40,'android.intent.extra.TITLE'),(21,40,'android.intent.extra.INTENT'),(22,45,'clicked'),(23,50,'title'),(24,51,'nextclassid'),(25,51,'clicked'),(26,52,'title'),(27,54,'id'),(28,54,'from_table'),(29,54,'detail_flag'),(30,60,'title'),(31,60,'nextclassid'),(32,60,'clicked'),(33,66,'clicked'),(34,69,'title'),(35,69,'btn_txt'),(36,69,'need_adb_flag'),(37,69,'cont'),(38,69,'close_flag'),(39,71,'title'),(40,71,'nextclassid'),(41,71,'clicked'),(42,73,'clicked'),(43,74,'clicked');
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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,1),(9,9,2),(10,10,1),(11,11,1),(12,12,1),(13,13,1),(14,14,3),(15,15,1),(16,16,1),(17,17,4),(18,18,5),(19,19,4),(20,20,6),(21,21,4),(22,22,8),(23,22,7),(24,22,11),(25,22,10),(26,22,9),(27,23,10),(28,23,11),(29,23,7),(30,23,8),(31,23,9),(32,24,11),(33,24,9),(34,24,10),(35,24,7),(36,24,8),(37,25,1),(38,26,1),(39,27,1),(40,28,1),(41,29,1),(42,30,1),(43,31,1),(44,32,1),(45,33,1),(46,34,1),(47,35,1),(48,36,1),(49,37,1),(50,38,1),(51,39,1),(52,40,1),(53,41,1),(54,42,1),(55,43,1),(56,44,1),(57,45,1),(58,46,1),(59,47,1),(60,48,1),(61,49,1),(62,50,1),(63,51,1),(64,52,1),(65,53,1),(66,54,1),(67,55,1),(68,56,1),(69,57,1),(70,58,1),(71,59,1),(72,60,1),(73,61,1),(74,62,1),(75,63,1),(76,64,1),(77,65,1),(78,66,1),(79,67,1),(80,68,1),(81,69,1),(82,70,1),(83,71,1),(84,72,1),(85,73,1),(86,74,1),(87,75,2),(88,76,2),(89,77,2),(90,78,4),(91,79,4),(92,80,12),(93,81,12),(94,82,4),(95,83,12),(96,84,14),(97,85,20),(98,86,22),(99,87,23);
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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,2,2),(4,7,1),(5,9,2),(6,10,1),(7,12,1),(8,13,1),(9,15,1),(10,16,1),(11,19,3),(12,21,3),(13,25,1),(14,26,4),(15,27,4),(16,28,4),(17,29,4),(18,30,4),(19,31,1),(20,32,1),(21,33,4),(22,34,4),(23,35,4),(24,36,4),(25,37,4),(26,38,4),(27,39,4),(28,40,4),(29,41,4),(30,42,4),(31,43,4),(32,44,4),(33,45,4),(34,46,4),(35,47,4),(36,48,4),(37,49,4),(38,50,4),(39,51,4),(40,52,4),(41,53,4),(42,54,4),(43,55,4),(44,56,4),(45,57,4),(46,58,4),(47,59,4),(48,60,4),(49,61,4),(50,62,4),(51,63,4),(52,64,4),(53,65,4),(54,66,4),(55,67,4),(56,68,4),(57,69,4),(58,70,2),(59,71,4),(60,72,4),(61,74,2),(62,73,2),(63,75,2),(64,76,2),(65,77,2),(66,84,5),(67,85,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,9,NULL,NULL,NULL,NULL,'text','*'),(2,84,'package',NULL,NULL,NULL,NULL,NULL),(3,85,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,1,'application','vnd.android.package-archive'),(2,2,'application','vnd.android.package-archive'),(3,3,'application','vnd.android.package-archive'),(4,5,'application','vnd.android.package-archive'),(5,6,'application','vnd.android.package-archive'),(6,8,'application','vnd.android.package-archive'),(7,10,'application','vnd.android.package-archive'),(8,12,'application','vnd.android.package-archive'),(9,13,'application','vnd.android.package-archive'),(10,14,'application','vnd.android.package-archive'),(11,46,'application','vnd.android.package-archive'),(12,75,'application','vnd.android.package-archive'),(13,76,'application','vnd.android.package-archive'),(14,93,'text','*'),(15,110,'application','*'),(16,113,'text','plain'),(17,116,'(.*)','(.*)'),(18,130,'audio','*'),(19,138,'image','*'),(20,148,'(.*)','(.*)'),(21,150,'application','vnd.android.package-archive'),(22,152,'video','*');
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
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,4,'com.igamepower.appmaster'),(2,7,'com.igamepower.appmaster'),(3,11,'com.igamepower.appmaster'),(4,15,'com.holentech'),(5,16,'com.igamepower.appmaster'),(6,17,'com.holentech'),(7,18,'com.holentech'),(8,19,'com.igamepower.appmaster'),(9,22,'com.holentech'),(10,25,'com.holentech'),(11,24,'(.*)'),(12,27,'com.holentech'),(13,26,''),(14,28,''),(15,30,'(.*)'),(16,33,'com.igamepower.appmaster'),(17,35,'com.igamepower.appmaster'),(18,38,'com.igamepower.appmaster'),(19,41,'com.igamepower.appmaster'),(20,42,'com.holentech'),(21,43,'com.igamepower.appmaster'),(22,45,'com.igamepower.appmaster'),(23,47,'NULL-CONSTANT'),(24,48,'NULL-CONSTANT'),(25,49,'com.igamepower.appmaster'),(26,50,'com.igamepower.appmaster'),(27,51,'com.igamepower.appmaster'),(28,52,'com.igamepower.appmaster'),(29,54,'com.igamepower.appmaster'),(30,57,'com.igamepower.appmaster'),(31,60,'com.igamepower.appmaster'),(32,61,'com.igamepower.appmaster'),(33,62,'com.igamepower.appmaster'),(34,63,'com.igamepower.appmaster'),(35,64,'(.*)'),(36,65,'(.*)'),(37,66,'com.igamepower.appmaster'),(38,67,'com.igamepower.appmaster'),(39,68,'com.igamepower.appmaster'),(40,69,'com.igamepower.appmaster'),(41,70,'com.igamepower.appmaster'),(42,71,'com.igamepower.appmaster'),(43,72,'com.igamepower.appmaster'),(44,73,'com.igamepower.appmaster'),(45,74,'com.igamepower.appmaster'),(46,77,'com.igamepower.appmaster'),(47,78,'(.*)'),(48,79,'(.*)'),(49,80,'(.*)'),(50,81,'(.*)'),(51,82,'com.itfunz.itfunzsupertools'),(52,83,'com.itfunz.itfunzsupertools'),(53,84,'(.*)'),(54,85,'com.itfunz.itfunzsupertools'),(55,86,'com.itfunz.itfunzsupertools'),(56,87,'(.*)'),(57,88,'com.itfunz.itfunzsupertools'),(58,89,'(.*)'),(59,90,'com.itfunz.itfunzsupertools'),(60,91,'(.*)'),(61,92,'(.*)'),(62,94,'(.*)'),(63,95,'(.*)'),(64,96,'com.itfunz.itfunzsupertools'),(65,97,'(.*)'),(66,98,'com.itfunz.itfunzsupertools'),(67,99,'com.itfunz.itfunzsupertools'),(68,100,'com.itfunz.itfunzsupertools'),(69,101,'(.*)'),(70,102,'(.*)'),(71,103,'(.*)'),(72,104,'(.*)'),(73,105,'com.itfunz.itfunzsupertools'),(74,106,'(.*)'),(75,107,'com.itfunz.itfunzsupertools'),(76,108,'com.itfunz.itfunzsupertools'),(77,109,'(.*)'),(78,111,'com.itfunz.itfunzsupertools'),(79,112,'(.*)'),(80,114,'(.*)'),(81,115,'com.itfunz.itfunzsupertools'),(82,117,'(.*)'),(83,118,'com.itfunz.itfunzsupertools'),(84,119,'(.*)'),(85,120,'(.*)'),(86,121,'com.itfunz.itfunzsupertools'),(87,122,'com.itfunz.itfunzsupertools'),(88,123,'(.*)'),(89,124,'com.itfunz.itfunzsupertools'),(90,125,'com.itfunz.itfunzsupertools'),(91,126,'(.*)'),(92,127,'(.*)'),(93,128,'com.itfunz.itfunzsupertools'),(94,129,'(.*)'),(95,131,'com.itfunz.itfunzsupertools'),(96,132,'com.itfunz.itfunzsupertools'),(97,133,'(.*)'),(98,134,'(.*)'),(99,135,'com.itfunz.itfunzsupertools'),(100,136,'(.*)'),(101,137,'(.*)'),(102,139,'(.*)'),(103,140,'(.*)'),(104,141,'(.*)'),(105,142,'(.*)'),(106,143,'com.itfunz.itfunzsupertools'),(107,144,'(.*)'),(108,145,'com.itfunz.itfunzsupertools'),(109,146,'com.itfunz.itfunzsupertools'),(110,147,'com.itfunz.itfunzsupertools'),(111,149,'com.itfunz.itfunzsupertools'),(112,151,'com.itfunz.itfunzsupertools');
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
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,2,0),(2,4,0),(3,6,0),(4,8,0),(5,11,0),(6,14,0),(7,15,0),(8,16,0),(9,18,0),(10,19,0),(11,21,0),(12,24,0),(13,27,0),(14,25,0),(15,31,0),(16,32,0),(17,38,0),(18,46,0),(19,55,0),(20,62,0),(21,63,0),(22,64,0),(23,65,0),(24,66,0),(25,67,0),(26,68,0),(27,69,0),(28,70,0),(29,71,0),(30,72,0),(31,73,0),(32,74,0),(33,75,0),(34,74,0),(35,73,0),(36,76,0),(37,77,0),(38,77,0),(39,78,0),(40,79,0),(41,79,0),(42,80,0),(43,80,0),(44,81,0),(45,82,0),(46,82,0),(47,83,0),(48,84,0),(49,84,0),(50,85,0),(51,86,0),(52,86,0),(53,87,0),(54,88,0),(55,88,0),(56,89,0),(57,89,0),(58,90,0),(59,91,0),(60,91,0),(61,92,0),(62,93,0),(63,93,0),(64,95,0),(65,95,0),(66,98,0),(67,98,0),(68,101,0),(69,101,0),(70,102,0),(71,103,0),(72,103,0),(73,117,0),(74,118,0),(75,144,0),(76,144,0),(77,145,0),(78,152,0),(79,152,0),(80,154,0),(81,154,0),(82,156,0),(83,159,0),(84,38,0),(85,38,0),(86,163,0),(87,163,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,1,1,0),(3,1,1,0),(4,2,0,0),(5,1,1,0),(6,1,1,0),(7,3,0,0),(8,1,1,0),(9,4,1,0),(10,1,1,0),(11,5,0,0),(12,1,1,0),(13,1,1,0),(14,6,1,0),(15,7,0,0),(16,8,0,0),(17,9,0,0),(18,9,0,0),(19,10,0,0),(20,11,1,0),(21,12,1,0),(22,13,0,0),(23,14,1,0),(24,15,1,0),(25,16,0,0),(26,15,1,0),(27,17,0,0),(28,15,1,0),(29,18,1,0),(30,15,1,0),(31,18,1,0),(32,18,1,0),(33,19,0,0),(34,18,1,0),(35,20,0,0),(36,18,1,0),(37,18,1,0),(38,21,0,0),(39,18,1,0),(40,18,1,0),(41,22,0,0),(42,23,0,0),(43,25,0,0),(44,24,1,0),(45,26,0,0),(46,27,1,0),(47,28,1,0),(48,28,1,0),(49,29,0,0),(50,30,0,0),(51,31,0,0),(52,32,0,0),(53,33,1,0),(54,34,0,0),(55,35,1,0),(56,36,1,0),(57,37,0,0),(58,38,1,0),(59,38,1,0),(60,39,0,0),(61,40,0,0),(62,41,0,0),(63,42,0,0),(64,43,1,0),(65,43,1,0),(66,44,0,0),(67,45,0,0),(68,46,0,0),(69,47,0,0),(70,48,0,0),(71,49,0,0),(72,50,0,0),(73,51,0,0),(74,52,0,0),(75,53,1,0),(76,53,1,0),(77,54,0,0),(78,55,0,0),(79,56,0,0),(80,57,0,0),(81,59,0,0),(82,60,0,0),(83,61,0,0),(84,62,0,0),(85,64,0,0),(86,66,0,0),(87,67,0,0),(88,68,0,0),(89,69,0,0),(90,70,0,0),(91,71,0,0),(92,72,0,0),(93,73,1,0),(94,74,0,0),(95,75,0,0),(96,76,0,0),(97,77,0,0),(98,78,0,0),(99,79,0,0),(100,80,0,0),(101,81,0,0),(102,83,0,0),(103,84,0,0),(104,85,0,0),(105,86,0,0),(106,87,0,0),(107,88,0,0),(108,89,0,0),(109,90,0,0),(110,91,1,0),(111,92,0,0),(112,93,0,0),(113,94,1,0),(114,95,0,0),(115,96,0,0),(116,97,1,0),(117,98,0,0),(118,99,0,0),(119,100,0,0),(120,101,0,0),(121,102,0,0),(122,103,0,0),(123,104,0,0),(124,105,0,0),(125,106,0,0),(126,107,0,0),(127,108,0,0),(128,109,0,0),(129,110,0,0),(130,111,1,0),(131,112,0,0),(132,113,0,0),(133,114,0,0),(134,115,0,0),(135,116,0,0),(136,117,0,0),(137,118,0,0),(138,119,1,0),(139,120,0,0),(140,121,0,0),(141,122,0,0),(142,123,0,0),(143,124,0,0),(144,125,0,0),(145,126,0,0),(146,127,0,0),(147,128,0,0),(148,129,1,0),(149,130,0,0),(150,133,1,0),(151,134,0,0),(152,135,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=420 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,9,67,2,NULL),(2,64,67,2,NULL),(3,65,67,2,NULL),(4,56,67,2,NULL),(5,58,67,2,NULL),(6,59,67,2,NULL),(7,9,68,2,NULL),(8,64,68,2,NULL),(9,65,68,2,NULL),(10,56,68,2,NULL),(11,58,68,2,NULL),(12,59,68,2,NULL),(13,9,69,2,NULL),(14,64,69,2,NULL),(15,65,69,2,NULL),(16,56,69,2,NULL),(17,58,69,2,NULL),(18,59,69,2,NULL),(19,9,70,2,NULL),(20,64,70,2,NULL),(21,65,70,2,NULL),(22,56,70,2,NULL),(23,58,70,2,NULL),(24,59,70,2,NULL),(25,9,71,2,NULL),(26,64,71,2,NULL),(27,65,71,2,NULL),(28,56,71,2,NULL),(29,58,71,2,NULL),(30,59,71,2,NULL),(31,9,72,2,NULL),(32,64,72,2,NULL),(33,65,72,2,NULL),(34,56,72,2,NULL),(35,58,72,2,NULL),(36,59,72,2,NULL),(37,9,75,2,NULL),(38,64,75,2,NULL),(39,65,75,2,NULL),(40,56,75,2,NULL),(41,58,75,2,NULL),(42,59,75,2,NULL),(43,9,76,2,NULL),(44,64,76,2,NULL),(45,65,76,2,NULL),(46,56,76,2,NULL),(47,58,76,2,NULL),(48,59,76,2,NULL),(49,9,78,2,NULL),(50,64,78,2,NULL),(51,65,78,2,NULL),(52,56,78,2,NULL),(53,58,78,2,NULL),(54,59,78,2,NULL),(55,9,81,2,NULL),(56,64,81,2,NULL),(57,65,81,2,NULL),(58,56,81,2,NULL),(59,58,81,2,NULL),(60,59,81,2,NULL),(61,9,83,2,NULL),(62,64,83,2,NULL),(63,65,83,2,NULL),(64,56,83,2,NULL),(65,58,83,2,NULL),(66,59,83,2,NULL),(67,9,85,2,NULL),(68,64,85,2,NULL),(69,65,85,2,NULL),(70,56,85,2,NULL),(71,58,85,2,NULL),(72,59,85,2,NULL),(73,9,87,2,NULL),(74,64,87,2,NULL),(75,65,87,2,NULL),(76,56,87,2,NULL),(77,58,87,2,NULL),(78,59,87,2,NULL),(79,9,90,2,NULL),(80,64,90,2,NULL),(81,65,90,2,NULL),(82,56,90,2,NULL),(83,58,90,2,NULL),(84,59,90,2,NULL),(85,9,92,2,NULL),(86,64,92,2,NULL),(87,65,92,2,NULL),(88,56,92,2,NULL),(89,58,92,2,NULL),(90,59,92,2,NULL),(91,9,102,2,NULL),(92,64,102,2,NULL),(93,65,102,2,NULL),(94,56,102,2,NULL),(95,58,102,2,NULL),(96,59,102,2,NULL),(97,9,145,2,NULL),(98,64,145,2,NULL),(99,65,145,2,NULL),(100,56,145,2,NULL),(101,58,145,2,NULL),(102,59,145,2,NULL),(103,9,156,2,NULL),(104,64,156,2,NULL),(105,65,156,2,NULL),(106,56,156,2,NULL),(107,58,156,2,NULL),(108,59,156,2,NULL),(109,9,159,2,NULL),(110,64,159,2,NULL),(111,65,159,2,NULL),(112,56,159,2,NULL),(113,58,159,2,NULL),(114,59,159,2,NULL),(115,9,73,2,NULL),(116,64,73,2,NULL),(117,65,73,2,NULL),(118,56,73,2,NULL),(119,58,73,2,NULL),(120,59,73,2,NULL),(121,9,74,2,NULL),(122,64,74,2,NULL),(123,65,74,2,NULL),(124,56,74,2,NULL),(125,58,74,2,NULL),(126,59,74,2,NULL),(127,9,77,2,NULL),(128,64,77,2,NULL),(129,65,77,2,NULL),(130,56,77,2,NULL),(131,58,77,2,NULL),(132,59,77,2,NULL),(133,9,79,2,NULL),(134,64,79,2,NULL),(135,65,79,2,NULL),(136,56,79,2,NULL),(137,58,79,2,NULL),(138,59,79,2,NULL),(139,9,80,2,NULL),(140,64,80,2,NULL),(141,65,80,2,NULL),(142,56,80,2,NULL),(143,58,80,2,NULL),(144,59,80,2,NULL),(145,9,82,2,NULL),(146,64,82,2,NULL),(147,65,82,2,NULL),(148,56,82,2,NULL),(149,58,82,2,NULL),(150,59,82,2,NULL),(151,9,84,2,NULL),(152,64,84,2,NULL),(153,65,84,2,NULL),(154,56,84,2,NULL),(155,58,84,2,NULL),(156,59,84,2,NULL),(157,9,86,2,NULL),(158,64,86,2,NULL),(159,65,86,2,NULL),(160,56,86,2,NULL),(161,58,86,2,NULL),(162,59,86,2,NULL),(163,9,88,2,NULL),(164,64,88,2,NULL),(165,65,88,2,NULL),(166,56,88,2,NULL),(167,58,88,2,NULL),(168,59,88,2,NULL),(169,9,89,2,NULL),(170,64,89,2,NULL),(171,65,89,2,NULL),(172,56,89,2,NULL),(173,58,89,2,NULL),(174,59,89,2,NULL),(175,9,91,2,NULL),(176,64,91,2,NULL),(177,65,91,2,NULL),(178,56,91,2,NULL),(179,58,91,2,NULL),(180,59,91,2,NULL),(181,9,93,2,NULL),(182,64,93,2,NULL),(183,65,93,2,NULL),(184,56,93,2,NULL),(185,58,93,2,NULL),(186,59,93,2,NULL),(187,9,95,2,NULL),(188,64,95,2,NULL),(189,65,95,2,NULL),(190,56,95,2,NULL),(191,58,95,2,NULL),(192,59,95,2,NULL),(193,9,98,2,NULL),(194,64,98,2,NULL),(195,65,98,2,NULL),(196,56,98,2,NULL),(197,58,98,2,NULL),(198,59,98,2,NULL),(199,9,101,2,NULL),(200,64,101,2,NULL),(201,65,101,2,NULL),(202,56,101,2,NULL),(203,58,101,2,NULL),(204,59,101,2,NULL),(205,9,103,2,NULL),(206,64,103,2,NULL),(207,65,103,2,NULL),(208,56,103,2,NULL),(209,58,103,2,NULL),(210,59,103,2,NULL),(211,9,117,2,NULL),(212,64,117,2,NULL),(213,65,117,2,NULL),(214,56,117,2,NULL),(215,58,117,2,NULL),(216,59,117,2,NULL),(217,9,118,2,NULL),(218,64,118,2,NULL),(219,65,118,2,NULL),(220,56,118,2,NULL),(221,58,118,2,NULL),(222,59,118,2,NULL),(223,9,144,2,NULL),(224,64,144,2,NULL),(225,65,144,2,NULL),(226,56,144,2,NULL),(227,58,144,2,NULL),(228,59,144,2,NULL),(229,9,152,2,NULL),(230,64,152,2,NULL),(231,65,152,2,NULL),(232,56,152,2,NULL),(233,58,152,2,NULL),(234,59,152,2,NULL),(235,9,154,2,NULL),(236,64,154,2,NULL),(237,65,154,2,NULL),(238,56,154,2,NULL),(239,58,154,2,NULL),(240,59,154,2,NULL),(241,9,24,2,NULL),(242,64,24,2,NULL),(243,65,24,2,NULL),(244,56,24,2,NULL),(245,58,24,2,NULL),(246,59,24,2,NULL),(247,9,46,2,NULL),(248,64,46,2,NULL),(249,65,46,2,NULL),(250,56,46,2,NULL),(251,58,46,2,NULL),(252,59,46,2,NULL),(253,9,55,2,NULL),(254,64,55,2,NULL),(255,65,55,2,NULL),(256,56,55,2,NULL),(257,58,55,2,NULL),(258,59,55,2,NULL),(259,9,4,2,NULL),(260,64,4,2,NULL),(261,65,4,2,NULL),(262,56,4,2,NULL),(263,58,4,2,NULL),(264,59,4,2,NULL),(265,151,56,2,NULL),(266,100,15,2,NULL),(267,98,41,2,NULL),(268,9,15,2,NULL),(269,64,15,2,NULL),(270,65,15,2,NULL),(271,56,15,2,NULL),(272,58,15,2,NULL),(273,59,15,2,NULL),(274,9,27,2,NULL),(275,64,27,2,NULL),(276,65,27,2,NULL),(277,56,27,2,NULL),(278,58,27,2,NULL),(279,59,27,2,NULL),(280,9,32,2,NULL),(281,64,32,2,NULL),(282,65,32,2,NULL),(283,56,32,2,NULL),(284,58,32,2,NULL),(285,59,32,2,NULL),(286,85,57,2,NULL),(287,145,58,2,NULL),(288,9,62,2,NULL),(289,64,62,2,NULL),(290,65,62,2,NULL),(291,56,62,2,NULL),(292,58,62,2,NULL),(293,59,62,2,NULL),(294,135,56,2,NULL),(295,9,63,2,NULL),(296,64,63,2,NULL),(297,65,63,2,NULL),(298,56,63,2,NULL),(299,58,63,2,NULL),(300,59,63,2,NULL),(301,90,59,2,NULL),(302,9,64,2,NULL),(303,64,64,2,NULL),(304,65,64,2,NULL),(305,56,64,2,NULL),(306,58,64,2,NULL),(307,59,64,2,NULL),(308,96,60,2,NULL),(309,9,65,2,NULL),(310,64,65,2,NULL),(311,65,65,2,NULL),(312,56,65,2,NULL),(313,58,65,2,NULL),(314,59,65,2,NULL),(315,82,61,2,NULL),(316,9,66,2,NULL),(317,64,66,2,NULL),(318,65,66,2,NULL),(319,56,66,2,NULL),(320,58,66,2,NULL),(321,59,66,2,NULL),(322,9,163,2,NULL),(323,64,163,2,NULL),(324,65,163,2,NULL),(325,56,163,2,NULL),(326,58,163,2,NULL),(327,59,163,2,NULL),(328,15,22,2,NULL),(329,17,22,2,NULL),(330,18,28,2,NULL),(331,25,19,2,NULL),(332,27,30,2,NULL),(333,42,22,2,NULL),(334,9,19,2,NULL),(335,64,19,2,NULL),(336,65,19,2,NULL),(337,56,19,2,NULL),(338,58,19,2,NULL),(339,59,19,2,NULL),(340,22,26,2,NULL),(341,49,31,2,NULL),(342,63,31,2,NULL),(343,43,31,2,NULL),(344,68,31,2,NULL),(345,9,2,2,NULL),(346,64,2,2,NULL),(347,65,2,2,NULL),(348,56,2,2,NULL),(349,58,2,2,NULL),(350,59,2,2,NULL),(351,51,1,2,NULL),(352,72,14,2,NULL),(353,9,6,2,NULL),(354,9,8,2,NULL),(355,9,11,2,NULL),(356,9,14,2,NULL),(357,9,16,2,NULL),(358,9,21,2,NULL),(359,9,25,2,NULL),(360,9,31,2,NULL),(361,9,38,2,NULL),(362,41,31,2,NULL),(363,50,14,2,NULL),(364,64,6,2,NULL),(365,65,6,2,NULL),(366,56,6,2,NULL),(367,58,6,2,NULL),(368,59,6,2,NULL),(369,57,31,2,NULL),(370,61,14,2,NULL),(371,64,8,2,NULL),(372,65,8,2,NULL),(373,56,8,2,NULL),(374,58,8,2,NULL),(375,59,8,2,NULL),(376,33,31,2,NULL),(377,64,11,2,NULL),(378,65,11,2,NULL),(379,56,11,2,NULL),(380,58,11,2,NULL),(381,59,11,2,NULL),(382,16,1,2,NULL),(383,67,1,2,NULL),(384,70,31,2,NULL),(385,64,14,2,NULL),(386,65,14,2,NULL),(387,56,14,2,NULL),(388,58,14,2,NULL),(389,59,14,2,NULL),(390,62,14,2,NULL),(391,56,16,2,NULL),(392,58,16,2,NULL),(393,59,16,2,NULL),(394,64,21,2,NULL),(395,65,21,2,NULL),(396,64,25,2,NULL),(397,65,25,2,NULL),(398,64,31,2,NULL),(399,65,31,2,NULL),(400,64,38,2,NULL),(401,65,38,2,NULL),(402,19,20,2,NULL),(403,54,14,2,NULL),(404,56,21,2,NULL),(405,58,21,2,NULL),(406,59,21,2,NULL),(407,56,25,2,NULL),(408,58,25,2,NULL),(409,59,25,2,NULL),(410,56,31,2,NULL),(411,58,31,2,NULL),(412,59,31,2,NULL),(413,56,38,2,NULL),(414,58,38,2,NULL),(415,59,38,2,NULL),(416,77,31,2,NULL),(417,7,31,2,NULL),(418,35,31,2,NULL),(419,38,31,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAuthorities`
--

LOCK TABLES `PAuthorities` WRITE;
/*!40000 ALTER TABLE `PAuthorities` DISABLE KEYS */;
INSERT INTO `PAuthorities` VALUES (1,1,'com.service.callLogs.LogsContentProvider'),(2,2,'com.service.callLogs.LogsContentProvider'),(3,3,'com.provider.Variable'),(4,4,'com.provider.Variable'),(5,5,'com.service.net.TrafficContentProvider'),(6,6,'com.service.net.TrafficContentProvider'),(7,7,'com.service.callLogs.LogsContentProvider'),(8,8,'com.provider.Variable');
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (2,'android.permission.ACCESS_CACHE_FILESYSTEM'),(28,'android.permission.ACCESS_COARSE_LOCATION'),(31,'android.permission.ACCESS_FINE_LOCATION'),(16,'android.permission.ACCESS_NETWORK_STATE'),(17,'android.permission.ACCESS_WIFI_STATE'),(34,'android.permission.ADD_SYSTEM_SERVICE'),(41,'android.permission.CALL_PHONE'),(45,'android.permission.CHANGE_NETWORK_STATE'),(23,'android.permission.CHANGE_WIFI_STATE'),(29,'android.permission.CLEAR_APP_CACHE'),(5,'android.permission.DELETE_CACHE_FILES'),(27,'android.permission.DELETE_PACKAGES'),(25,'android.permission.DEVICE_POWER'),(22,'android.permission.DISABLE_KEYGUARD'),(21,'android.permission.FACTORY_TEST'),(32,'android.permission.GET_PACKAGE_SIZE'),(35,'android.permission.GET_TASKS'),(18,'android.permission.HARDWARE_TEST'),(15,'android.permission.INTERNET'),(42,'android.permission.MODIFY_AUDIO_SETTINGS'),(44,'android.permission.MODIFY_PHONE_STATE'),(10,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(38,'android.permission.PROCESS_OUTGOING_CALLS'),(19,'android.permission.READ_CONTACTS'),(4,'android.permission.READ_LOGS'),(14,'android.permission.READ_OWNER_DATA'),(11,'android.permission.READ_PHONE_STATE'),(43,'android.permission.READ_SMS'),(12,'android.permission.RECEIVE_BOOT_COMPLETED'),(40,'android.permission.RECEIVE_SMS'),(8,'android.permission.RESTART_PACKAGES'),(36,'android.permission.SEND_SMS'),(24,'android.permission.VIBRATE'),(26,'android.permission.WAKE_LOCK'),(37,'android.permission.WRITE_APN_SETTINGS'),(20,'android.permission.WRITE_CONTACTS'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(6,'android.permission.WRITE_OWNER_DATA'),(7,'android.permission.WRITE_SECURE_SETTINGS'),(13,'android.permission.WRITE_SETTINGS'),(39,'android.permission.WRITE_SMS'),(33,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(30,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(1,'com.android.launcher.permission.INSTALL_SHORTCUT'),(9,'com.android.launcher.permission.UNINSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Providers`
--

LOCK TABLES `Providers` WRITE;
/*!40000 ALTER TABLE `Providers` DISABLE KEYS */;
INSERT INTO `Providers` VALUES (1,157,0,NULL,NULL),(2,157,0,NULL,NULL),(3,158,0,NULL,NULL),(4,158,0,NULL,NULL),(5,160,0,NULL,NULL),(6,160,0,NULL,NULL),(7,161,0,NULL,NULL),(8,162,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(2,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(4,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(6,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL),(9,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(10,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(11,NULL,NULL,'file://',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'package:(.*)',NULL,NULL,NULL),(14,NULL,NULL,'file://',NULL,NULL,NULL),(15,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'',NULL,NULL,NULL),(19,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(20,NULL,NULL,'file://',NULL,NULL,NULL),(21,NULL,NULL,'content://media/internal/audio/media',NULL,NULL,NULL),(22,NULL,NULL,'content://media/internal/audio/media',NULL,NULL,NULL),(23,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(24,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(25,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(26,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(27,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(28,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(29,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(30,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(31,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(32,NULL,NULL,'content://media/internal/audio/media',NULL,NULL,NULL),(33,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(34,NULL,NULL,'file://(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,58,21),(2,63,22),(3,65,23),(4,82,25),(5,131,32);
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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,2,3),(12,1,11),(13,2,11),(14,1,12),(15,2,12),(16,1,13),(17,2,13),(18,1,14),(19,2,15),(20,1,15),(21,2,17),(22,1,16),(23,2,16),(24,2,19),(25,2,18),(26,2,21),(27,2,20),(28,2,23),(29,2,22),(30,2,25),(31,2,24),(32,2,26),(33,3,16),(34,4,1),(35,3,3),(36,4,32),(37,3,27),(38,4,33),(39,3,26),(40,4,3),(41,3,11),(42,4,4),(43,3,28),(44,4,11),(45,3,15),(46,4,12),(47,4,15),(48,4,16),(49,4,24),(50,4,29),(51,4,28),(52,4,31),(53,4,30),(54,5,34),(55,5,1),(56,5,35),(57,5,38),(58,5,39),(59,5,36),(60,5,37),(61,5,42),(62,5,43),(63,5,9),(64,5,40),(65,5,41),(66,5,11),(67,5,12),(68,5,44),(69,5,45),(70,5,15),(71,5,17),(72,5,16),(73,5,19),(74,5,23),(75,5,26),(76,6,1),(77,6,9),(78,6,11),(79,6,12),(80,6,15),(81,6,17),(82,6,16),(83,6,19),(84,6,23),(85,6,26),(86,6,30),(87,6,34),(88,6,35),(89,6,33),(90,6,38),(91,6,39),(92,6,36),(93,6,37),(94,6,42),(95,6,43),(96,6,40),(97,6,41),(98,6,44),(99,6,45);
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

-- Dump completed on 2015-10-12  3:29:37
