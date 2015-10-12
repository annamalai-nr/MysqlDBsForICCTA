-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_199
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
INSERT INTO `ActionStrings` VALUES (11,'(.*)'),(15,'RetrieveReplyBroadcast'),(8,'android.appwidget.action.APPWIDGET_UPDATE'),(5,'android.intent.action.BOOT_COMPLETED'),(17,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(14,'android.intent.action.PACKAGE_ADDED'),(4,'android.intent.action.PHONE_STATE'),(12,'android.intent.action.SCREEN_OFF'),(18,'android.intent.action.SCREEN_ON'),(13,'android.intent.action.USER_PRESENT'),(3,'android.intent.action.VIEW'),(6,'itfunz.app.left_down'),(7,'itfunz.app.left_up'),(10,'itfunz.app.right_down'),(9,'itfunz.app.right_up'),(2,'net.ponury.faceniff'),(16,'postFeedbackFinished');
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
INSERT INTO `Applications` VALUES (1,'grippin.gra.in.faceniffgen',1),(2,'com.corner23.android.universalandroot',11),(3,'net.ponury.faceniff',2),(4,'net.ponury.faceniff',21),(5,'com.itfunz.itfunzsupertools',923),(6,'com.xl.gw.systemappuninstall',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'grippin.gra.in.faceniffgen.FaceNiffGenActivity'),(2,2,'com.corner23.android.universalandroot.UniversalAndroot'),(3,3,'net.ponury.faceniff.faceniff'),(4,3,'net.ponury.faceniff.ProfileList'),(5,3,'net.ponury.faceniff.bgservice'),(6,4,'net.ponury.faceniff.faceniff'),(7,4,'net.ponury.faceniff.FNPreferences'),(8,4,'com.google.ads.AdActivity'),(9,4,'net.ponury.faceniff.FNService'),(10,6,'com.xl.gw.systemappuninstall.SystemAppUninstall'),(11,6,'com.xl.gw.systemappuninstall.ActiveActivity'),(12,5,'com.itfunz.itfunzsupertools.MainActivity'),(13,6,'com.mt.airad.MultiAD'),(14,6,'com.waps.OffersWebView'),(15,6,'com.feedback.ui.SendFeedback'),(16,5,'com.itfunz.itfunzsupertools.Tools'),(17,6,'com.feedback.ui.FeedbackConversations'),(18,5,'com.itfunz.itfunzsupertools.AutoPowerDown'),(19,6,'com.feedback.ui.FeedbackConversation'),(20,5,'com.itfunz.itfunzsupertools.AutoPowerDownExec'),(21,6,'com.xl.gw.systemappuninstall.ProtectService'),(22,5,'com.itfunz.itfunzsupertools.simple.AboutProgram'),(23,5,'com.itfunz.itfunzsupertools.ThemeManager'),(24,5,'com.itfunz.itfunzsupertools.ItfunzFileDialog'),(25,5,'com.itfunz.itfunzsupertools.ItfunzTextReader'),(26,5,'com.itfunz.itfunzsupertools.DiskSpace'),(27,5,'com.itfunz.itfunzsupertools.ItfunzPowerManager'),(28,5,'com.itfunz.itfunzsupertools.OneKeyLockScreen'),(29,5,'com.itfunz.itfunzsupertools.simple.GuideProgram'),(30,5,'com.itfunz.itfunzsupertools.ItfunzFileDialogConfig'),(31,5,'com.itfunz.itfunzsupertools.OtherFunction'),(32,5,'com.itfunz.itfunzsupertools.ScreenCheckLayout'),(33,5,'com.itfunz.itfunzsupertools.SimplifyProgram'),(34,5,'com.itfunz.itfunzsupertools.DataMvApp'),(35,3,'net.ponury.faceniff.faceniff$6'),(36,5,'com.itfunz.itfunzsupertools.CpuControl'),(37,5,'com.itfunz.itfunzsupertools.ItfunzSuperToolsSettings'),(38,5,'com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetIconsDisplay'),(39,5,'com.itfunz.itfunzsupertools.ItfunzSuperToolsService'),(40,5,'com.itfunz.itfunzsupertools.CallledService'),(41,5,'com.itfunz.itfunzsupertools.HoldScreenLightService'),(42,5,'com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetService'),(43,5,'com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetServiceMid'),(44,5,'com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetServiceBig'),(45,5,'com.itfunz.itfunzsupertools.CallReceiver'),(46,3,'net.ponury.faceniff.BuyMe$2'),(47,5,'com.itfunz.itfunzsupertools.ItfunzSuperToolsBroadcast'),(48,5,'com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidget'),(49,5,'com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetMid'),(50,5,'com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetBig'),(51,4,'net.ponury.faceniff.BuyMe$3'),(52,4,'com.google.ads.util.AdUtil$UserActivityReceiver'),(53,4,'net.ponury.faceniff.faceniff$9'),(54,6,'com.xl.gw.systemappuninstall.SystemAppUninstall$7'),(55,6,'com.waps.x'),(56,6,'com.mt.airad.IIIIlllIlllIIIII'),(57,6,'com.feedback.ui.j'),(58,6,'com.waps.s'),(59,6,'com.waps.q'),(60,6,'com.feedback.b.a'),(61,6,'com.waps.y'),(62,6,'com.feedback.ui.b'),(63,6,'com.feedback.ui.f'),(64,6,'com.feedback.c.a'),(65,6,'com.xl.gw.systemappuninstall.SystemAppUninstall$6'),(66,6,'com.waps.aa'),(67,6,'com.feedback.c.b'),(68,6,'com.waps.AppConnect'),(69,6,'com.waps.o'),(70,6,'com.xl.gw.systemappuninstall.SystemAppUninstall$9'),(71,5,'com.itfunz.itfunzsupertools.ItfunzFileDialog$25'),(72,5,'com.itfunz.itfunzsupertools.Tools$14'),(73,5,'com.itfunz.itfunzsupertools.Tools$17'),(74,5,'com.itfunz.itfunzsupertools.OtherFunction$3'),(75,5,'com.itfunz.itfunzsupertools.ItfunzFileDialog$13'),(76,5,'com.itfunz.itfunzsupertools.ItfunzSuperToolsSettings$2'),(77,5,'com.itfunz.itfunzsupertools.ItfunzSuperToolsSettings$3$7'),(78,5,'com.itfunz.itfunzsupertools.Tools$27'),(79,5,'com.itfunz.itfunzsupertools.Tools$29$1'),(80,5,'com.itfunz.itfunzsupertools.Tools$20'),(81,5,'com.itfunz.itfunzsupertools.HoldScreenLightService$1'),(82,5,'com.itfunz.itfunzsupertools.ItfunzFileDialog$4'),(83,5,'com.itfunz.itfunzsupertools.ItfunzFileDialog$7'),(84,5,'com.itfunz.itfunzsupertools.Tools$28'),(85,5,'com.itfunz.itfunzsupertools.Tools$31$1'),(86,5,'com.itfunz.itfunzsupertools.ItfunzFileDialog$12'),(87,5,'com.itfunz.itfunzsupertools.Tools$31'),(88,5,'com.itfunz.itfunzsupertools.Tools$40'),(89,5,'com.itfunz.itfunzsupertools.ItfunzFileDialog$27'),(90,5,'com.itfunz.itfunzsupertools.ItfunzFileDialog$26'),(91,5,'com.itfunz.itfunzsupertools.Tools$32'),(92,5,'com.itfunz.itfunzsupertools.Tools$23'),(93,5,'com.itfunz.itfunzsupertools.ItfunzSuperToolsSettings$6'),(94,5,'com.itfunz.itfunzsupertools.Tools$26'),(95,5,'com.itfunz.itfunzsupertools.Tools$21'),(96,5,'com.itfunz.itfunzsupertools.Tools$25'),(97,5,'com.itfunz.itfunzsupertools.OtherFunction$1'),(98,5,'com.itfunz.itfunzsupertools.ItfunzFileDialog$14'),(99,5,'com.itfunz.itfunzsupertools.Tools$22'),(100,5,'com.itfunz.itfunzsupertools.ItfunzFileDialog$28');
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,5,'receiver'),(2,8,'action'),(3,8,'params'),(4,8,'com.google.ads.AdOpener'),(5,14,'USER_ID'),(6,14,'SHWO_FLAG'),(7,14,'Notify_Url_Params'),(8,14,'UrlPath'),(9,17,'UMENG_APPKEY'),(10,11,'UMENG_APPKEY'),(11,15,'UMENG_APPKEY'),(12,19,'UMENG_APPKEY'),(13,10,'UMENG_APPKEY'),(14,13,'adID'),(15,11,'UMENG_CHANNEL'),(16,15,'UMENG_CHANNEL'),(17,10,'UMENG_CHANNEL'),(18,14,'isFinshClose'),(19,14,'URL'),(20,14,'CLIENT_PACKAGE'),(21,15,'feedback_id'),(22,14,'URL_PARAMS'),(23,14,'ACTIVITY_FLAG'),(24,14,'APP_ID'),(25,11,'APP_ID'),(26,10,'APP_ID'),(27,21,'APP_ID'),(28,14,'WAPS_PID'),(29,11,'WAPS_PID'),(30,10,'WAPS_PID'),(31,21,'WAPS_PID'),(32,14,'WAPS_ID'),(33,11,'WAPS_ID'),(34,10,'WAPS_ID'),(35,21,'WAPS_ID'),(36,14,'Offers_URL'),(37,14,'DEVICE_ID'),(38,11,'DEVICE_ID'),(39,10,'DEVICE_ID'),(40,21,'DEVICE_ID'),(41,11,'CLIENT_PACKAGE'),(42,14,'offers_webview_tag'),(43,10,'CLIENT_PACKAGE'),(44,21,'CLIENT_PACKAGE'),(45,13,'adURL'),(46,14,'Notify_Id'),(47,19,'feedback_id'),(48,44,'state');
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'s',1,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'s',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',1,NULL,NULL),(28,28,'a',1,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,36,'a',0,NULL,NULL),(36,37,'a',0,NULL,NULL),(37,38,'a',0,NULL,NULL),(38,39,'s',0,NULL,NULL),(39,40,'s',0,NULL,NULL),(40,41,'s',0,NULL,NULL),(41,42,'s',0,NULL,NULL),(42,43,'s',0,NULL,NULL),(43,44,'s',0,NULL,NULL),(44,45,'r',1,NULL,NULL),(45,47,'r',1,NULL,NULL),(46,48,'r',1,NULL,NULL),(47,49,'r',1,NULL,NULL),(48,50,'r',1,NULL,NULL),(49,52,'r',1,NULL,NULL),(50,59,'r',1,NULL,NULL),(51,62,'r',1,NULL,NULL),(52,63,'r',1,NULL,NULL),(53,81,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,3),(2,2,3),(3,3,4),(4,4,3),(5,5,3),(6,6,3),(7,7,3),(8,7,4),(9,8,6),(10,9,6),(11,10,6),(12,11,6),(13,12,8),(14,13,6),(15,14,6),(16,15,6),(17,16,6),(18,17,8),(19,18,6),(20,19,6),(21,20,6),(22,21,6),(23,22,10),(24,23,14),(25,24,13),(26,25,10),(27,26,15),(28,27,11),(29,28,19),(30,28,17),(31,29,14),(32,30,15),(33,31,10),(34,32,17),(35,33,14),(36,34,14),(37,35,17),(38,36,11),(39,37,11),(40,38,10),(41,39,15),(42,39,19),(43,40,10),(44,41,10),(45,42,14),(46,43,14),(47,44,10),(48,45,10),(49,46,17),(50,46,10),(51,47,10),(52,48,14),(53,49,46),(54,50,24),(55,51,47),(56,52,47),(57,53,16),(58,54,46),(59,55,46),(60,56,48),(61,57,48),(62,58,48),(63,59,16),(64,60,31),(65,61,47),(66,62,46),(67,63,24),(68,64,36),(69,65,36),(70,66,48),(71,67,16),(72,68,38),(73,69,24),(74,70,48),(75,71,16),(76,72,16),(77,73,24),(78,74,46),(79,75,47),(80,76,47),(81,77,18),(82,78,46),(83,79,16),(84,80,24),(85,81,24),(86,82,46),(87,83,45),(88,84,48),(89,85,24),(90,86,48),(91,87,16),(92,88,46),(93,89,48),(94,90,47),(95,91,46),(96,92,47),(97,93,24),(98,94,16),(99,95,47),(100,96,46),(101,97,39),(102,98,48),(103,99,24),(104,100,47),(105,101,47),(106,102,16),(107,103,16),(108,104,24),(109,105,46),(110,106,47),(111,107,48),(112,108,24),(113,109,16),(114,110,16),(115,111,36),(116,112,16),(117,113,47),(118,114,16),(119,115,38),(120,116,47),(121,117,16),(122,118,46),(123,119,46),(124,120,48),(125,121,24),(126,122,48),(127,123,48),(128,124,31),(129,125,24),(130,126,24),(131,127,16),(132,128,23),(133,129,24);
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
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,3,'<net.ponury.faceniff.faceniff: boolean bootup()>',66,'a',NULL),(2,3,'<net.ponury.faceniff.faceniff: void onStart()>',3,'s',NULL),(3,4,'<net.ponury.faceniff.ProfileList: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(4,35,'<net.ponury.faceniff.faceniff$6: void onClick(android.view.View)>',10,'a',NULL),(5,3,'<net.ponury.faceniff.faceniff: boolean onOptionsItemSelected(android.view.MenuItem)>',20,'a',NULL),(6,3,'<net.ponury.faceniff.faceniff: void onStart()>',10,'s',NULL),(7,46,'<net.ponury.faceniff.BuyMe$2: void onClick(android.view.View)>',13,'a',NULL),(8,6,'<net.ponury.faceniff.faceniff: void bindService()>',6,'s',NULL),(9,6,'<net.ponury.faceniff.faceniff: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(10,51,'<net.ponury.faceniff.BuyMe$3: void onClick(android.view.View)>',13,'a',NULL),(11,6,'<net.ponury.faceniff.faceniff: boolean onOptionsItemSelected(android.view.MenuItem)>',25,'a',NULL),(12,8,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',82,'a',NULL),(13,6,'<net.ponury.faceniff.faceniff: void bindService()>',4,'s',NULL),(14,6,'<net.ponury.faceniff.faceniff: void bindService()>',6,'s',NULL),(15,51,'<net.ponury.faceniff.BuyMe$3: void onClick(android.view.View)>',13,'a',NULL),(16,6,'<net.ponury.faceniff.faceniff: boolean onOptionsItemSelected(android.view.MenuItem)>',25,'a',NULL),(17,8,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',82,'a',NULL),(18,6,'<net.ponury.faceniff.faceniff: void bindService()>',4,'s',NULL),(19,53,'<net.ponury.faceniff.faceniff$9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',43,'a',NULL),(20,6,'<net.ponury.faceniff.faceniff: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(21,53,'<net.ponury.faceniff.faceniff$9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',43,'a',NULL),(22,54,'<com.xl.gw.systemappuninstall.SystemAppUninstall$7: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(23,55,'<com.waps.x: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(24,56,'<com.mt.airad.IIIIlllIlllIIIII: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',10,'a',NULL),(25,10,'<com.xl.gw.systemappuninstall.SystemAppUninstall: boolean onOptionsItemSelected(android.view.MenuItem)>',16,'a',NULL),(26,57,'<com.feedback.ui.j: void onClick(android.view.View)>',67,'a',0),(27,58,'<com.waps.s: void onClick(android.view.View)>',98,'a',NULL),(28,60,'<com.feedback.b.a: void a(android.content.Context,com.feedback.a.d)>',11,'a',NULL),(29,61,'<com.waps.y: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(30,64,'<com.feedback.c.a: void run()>',30,'r',0),(31,65,'<com.xl.gw.systemappuninstall.SystemAppUninstall$6: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(32,60,'<com.feedback.b.a: void b(android.content.Context,com.feedback.a.d)>',8,'a',NULL),(33,66,'<com.waps.aa: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(34,14,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',356,'a',NULL),(35,67,'<com.feedback.c.b: void run()>',98,'r',NULL),(36,68,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(37,58,'<com.waps.s: void onClick(android.view.View)>',35,'a',NULL),(38,10,'<com.xl.gw.systemappuninstall.SystemAppUninstall: boolean onContextItemSelected(android.view.MenuItem)>',31,'a',NULL),(39,60,'<com.feedback.b.a: void b(android.content.Context)>',4,'a',NULL),(40,10,'<com.xl.gw.systemappuninstall.SystemAppUninstall: void onDestroy()>',5,'s',NULL),(41,10,'<com.xl.gw.systemappuninstall.SystemAppUninstall: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(42,69,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(43,14,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(44,70,'<com.xl.gw.systemappuninstall.SystemAppUninstall$9: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(45,10,'<com.xl.gw.systemappuninstall.SystemAppUninstall: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(46,60,'<com.feedback.b.a: void a(android.content.Context)>',4,'a',NULL),(47,10,'<com.xl.gw.systemappuninstall.SystemAppUninstall: boolean onContextItemSelected(android.view.MenuItem)>',20,'a',NULL),(48,14,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',41,'a',NULL),(49,48,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidget: void onReceive(android.content.Context,android.content.Intent)>',528,'a',NULL),(50,71,'<com.itfunz.itfunzsupertools.ItfunzFileDialog$25: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',156,'a',NULL),(51,49,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetMid: void onReceive(android.content.Context,android.content.Intent)>',71,'a',NULL),(52,49,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetMid: void onReceive(android.content.Context,android.content.Intent)>',281,'a',NULL),(53,72,'<com.itfunz.itfunzsupertools.Tools$14: boolean onPreferenceClick(android.preference.Preference)>',6,'a',NULL),(54,48,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidget: void onReceive(android.content.Context,android.content.Intent)>',158,'a',NULL),(55,48,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidget: void onReceive(android.content.Context,android.content.Intent)>',114,'a',NULL),(56,50,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetBig: void onReceive(android.content.Context,android.content.Intent)>',448,'a',NULL),(57,50,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetBig: void onReceive(android.content.Context,android.content.Intent)>',622,'a',NULL),(58,50,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetBig: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',7,'s',NULL),(59,73,'<com.itfunz.itfunzsupertools.Tools$17: boolean onPreferenceClick(android.preference.Preference)>',7,'a',NULL),(60,74,'<com.itfunz.itfunzsupertools.OtherFunction$3: void onClick(android.view.View)>',12,'p',NULL),(61,49,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetMid: void onReceive(android.content.Context,android.content.Intent)>',116,'a',NULL),(62,48,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidget: void onReceive(android.content.Context,android.content.Intent)>',578,'a',NULL),(63,75,'<com.itfunz.itfunzsupertools.ItfunzFileDialog$13: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(64,76,'<com.itfunz.itfunzsupertools.ItfunzSuperToolsSettings$2: boolean onKey(android.content.DialogInterface,int,android.view.KeyEvent)>',9,'a',NULL),(65,77,'<com.itfunz.itfunzsupertools.ItfunzSuperToolsSettings$3$7: boolean onPreferenceClick(android.preference.Preference)>',9,'a',NULL),(66,50,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetBig: void onReceive(android.content.Context,android.content.Intent)>',564,'a',NULL),(67,78,'<com.itfunz.itfunzsupertools.Tools$27: boolean onPreferenceClick(android.preference.Preference)>',6,'a',NULL),(68,39,'<com.itfunz.itfunzsupertools.ItfunzSuperToolsService: void onCreate()>',79,'s',NULL),(69,75,'<com.itfunz.itfunzsupertools.ItfunzFileDialog$13: void onClick(android.content.DialogInterface,int)>',45,'a',NULL),(70,50,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetBig: void onReceive(android.content.Context,android.content.Intent)>',118,'a',NULL),(71,79,'<com.itfunz.itfunzsupertools.Tools$29$1: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(72,16,'<com.itfunz.itfunzsupertools.Tools: void onCreate(android.os.Bundle)>',6,'s',NULL),(73,24,'<com.itfunz.itfunzsupertools.ItfunzFileDialog: boolean onOptionsItemSelected(android.view.MenuItem)>',48,'a',NULL),(74,48,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidget: void onReceive(android.content.Context,android.content.Intent)>',202,'a',NULL),(75,49,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetMid: void onReceive(android.content.Context,android.content.Intent)>',445,'a',NULL),(76,49,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetMid: void onReceive(android.content.Context,android.content.Intent)>',559,'a',NULL),(77,18,'<com.itfunz.itfunzsupertools.AutoPowerDown: void RestartService()>',4,'s',0),(78,48,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidget: void onReceive(android.content.Context,android.content.Intent)>',70,'a',NULL),(79,80,'<com.itfunz.itfunzsupertools.Tools$20: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',16,'s',NULL),(80,82,'<com.itfunz.itfunzsupertools.ItfunzFileDialog$4: boolean onKey(android.content.DialogInterface,int,android.view.KeyEvent)>',9,'a',NULL),(81,83,'<com.itfunz.itfunzsupertools.ItfunzFileDialog$7: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',199,'a',NULL),(82,48,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidget: void onReceive(android.content.Context,android.content.Intent)>',478,'a',NULL),(83,47,'<com.itfunz.itfunzsupertools.ItfunzSuperToolsBroadcast: void onReceive(android.content.Context,android.content.Intent)>',6,'s',NULL),(84,50,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetBig: void onReceive(android.content.Context,android.content.Intent)>',163,'a',NULL),(85,75,'<com.itfunz.itfunzsupertools.ItfunzFileDialog$13: void onClick(android.content.DialogInterface,int)>',13,'a',NULL),(86,50,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetBig: void onReceive(android.content.Context,android.content.Intent)>',364,'a',NULL),(87,84,'<com.itfunz.itfunzsupertools.Tools$28: boolean onPreferenceClick(android.preference.Preference)>',6,'a',NULL),(88,48,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidget: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',7,'s',NULL),(89,50,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetBig: void onReceive(android.content.Context,android.content.Intent)>',283,'a',NULL),(90,49,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetMid: void onReceive(android.content.Context,android.content.Intent)>',502,'a',NULL),(91,48,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidget: void onReceive(android.content.Context,android.content.Intent)>',301,'a',NULL),(92,49,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetMid: void onReceive(android.content.Context,android.content.Intent)>',308,'a',NULL),(93,75,'<com.itfunz.itfunzsupertools.ItfunzFileDialog$13: void onClick(android.content.DialogInterface,int)>',37,'a',NULL),(94,85,'<com.itfunz.itfunzsupertools.Tools$31$1: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(95,49,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetMid: void onReceive(android.content.Context,android.content.Intent)>',335,'a',NULL),(96,48,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidget: void onReceive(android.content.Context,android.content.Intent)>',428,'a',NULL),(97,40,'<com.itfunz.itfunzsupertools.CallledService: void onCreate()>',10,'p',NULL),(98,50,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetBig: void onReceive(android.content.Context,android.content.Intent)>',506,'a',NULL),(99,86,'<com.itfunz.itfunzsupertools.ItfunzFileDialog$12: void onClick(android.content.DialogInterface,int)>',13,'a',NULL),(100,49,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetMid: void onReceive(android.content.Context,android.content.Intent)>',616,'a',NULL),(101,49,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetMid: void onReceive(android.content.Context,android.content.Intent)>',362,'a',NULL),(102,87,'<com.itfunz.itfunzsupertools.Tools$31: boolean onPreferenceClick(android.preference.Preference)>',21,'a',NULL),(103,88,'<com.itfunz.itfunzsupertools.Tools$40: void onClick(android.content.DialogInterface,int)>',26,'s',NULL),(104,89,'<com.itfunz.itfunzsupertools.ItfunzFileDialog$27: void onClick(android.content.DialogInterface,int)>',29,'p',NULL),(105,48,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidget: void onReceive(android.content.Context,android.content.Intent)>',327,'a',NULL),(106,49,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetMid: void onReceive(android.content.Context,android.content.Intent)>',206,'a',NULL),(107,50,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetBig: void onReceive(android.content.Context,android.content.Intent)>',73,'a',NULL),(108,90,'<com.itfunz.itfunzsupertools.ItfunzFileDialog$26: void onClick(android.content.DialogInterface,int)>',29,'p',NULL),(109,91,'<com.itfunz.itfunzsupertools.Tools$32: boolean onPreferenceClick(android.preference.Preference)>',6,'a',NULL),(110,92,'<com.itfunz.itfunzsupertools.Tools$23: boolean onPreferenceClick(android.preference.Preference)>',6,'a',NULL),(111,93,'<com.itfunz.itfunzsupertools.ItfunzSuperToolsSettings$6: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(112,94,'<com.itfunz.itfunzsupertools.Tools$26: boolean onPreferenceClick(android.preference.Preference)>',8,'a',NULL),(113,49,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetMid: void onReceive(android.content.Context,android.content.Intent)>',161,'a',NULL),(114,95,'<com.itfunz.itfunzsupertools.Tools$21: boolean onPreferenceClick(android.preference.Preference)>',8,'a',NULL),(115,39,'<com.itfunz.itfunzsupertools.ItfunzSuperToolsService: void onCreate()>',103,'s',NULL),(116,49,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetMid: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',7,'s',NULL),(117,96,'<com.itfunz.itfunzsupertools.Tools$25: boolean onPreferenceClick(android.preference.Preference)>',6,'a',NULL),(118,48,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidget: void onReceive(android.content.Context,android.content.Intent)>',275,'a',NULL),(119,48,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidget: void onReceive(android.content.Context,android.content.Intent)>',353,'a',NULL),(120,50,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetBig: void onReceive(android.content.Context,android.content.Intent)>',208,'a',NULL),(121,75,'<com.itfunz.itfunzsupertools.ItfunzFileDialog$13: void onClick(android.content.DialogInterface,int)>',29,'a',NULL),(122,50,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetBig: void onReceive(android.content.Context,android.content.Intent)>',310,'a',NULL),(123,50,'<com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetBig: void onReceive(android.content.Context,android.content.Intent)>',337,'a',NULL),(124,97,'<com.itfunz.itfunzsupertools.OtherFunction$1: void onClick(android.view.View)>',6,'a',NULL),(125,86,'<com.itfunz.itfunzsupertools.ItfunzFileDialog$12: void onClick(android.content.DialogInterface,int)>',55,'a',NULL),(126,98,'<com.itfunz.itfunzsupertools.ItfunzFileDialog$14: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(127,99,'<com.itfunz.itfunzsupertools.Tools$22: boolean onPreferenceClick(android.preference.Preference)>',6,'a',NULL),(128,23,'<com.itfunz.itfunzsupertools.ThemeManager: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(129,100,'<com.itfunz.itfunzsupertools.ItfunzFileDialog$28: void onClick(android.content.DialogInterface,int)>',29,'p',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,4,3),(2,6,3),(3,9,3),(4,12,3),(5,13,3),(6,14,3),(7,15,3),(8,17,11),(9,19,11),(10,20,3),(11,21,3),(12,22,3),(13,23,3),(14,24,11),(15,26,11),(16,27,3),(17,29,3),(18,31,3),(19,32,3),(20,33,3),(21,44,15),(22,47,1),(23,48,1),(24,49,1),(25,50,1),(26,51,1),(27,52,1),(28,56,3),(29,58,1),(30,59,1),(31,60,3),(32,61,17),(33,63,17),(34,64,1),(35,65,1),(36,66,1),(37,67,3),(38,68,1),(39,69,1),(40,71,1),(41,72,1),(42,73,1),(43,74,1),(44,77,1),(45,78,1),(46,79,3),(47,81,1),(48,82,1),(49,85,3),(50,86,1),(51,90,1),(52,91,1),(53,92,1),(54,93,1),(55,96,3),(56,97,1),(57,99,1),(58,100,3),(59,101,1),(60,104,1),(61,105,1),(62,106,1),(63,107,1),(64,108,3),(65,110,1),(66,111,1),(67,112,1),(68,114,1),(69,115,1),(70,118,1),(71,119,1),(72,120,1),(73,123,1),(74,124,1),(75,125,1),(76,126,1),(77,130,1),(78,131,1),(79,132,1),(80,133,3),(81,134,1),(82,135,1),(83,137,3),(84,138,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,47,1),(2,48,4),(3,49,1),(4,50,4),(5,51,1),(6,52,4),(7,58,1),(8,59,4),(9,64,1),(10,65,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'net/ponury/faceniff/ProfileList'),(2,3,'net/ponury/faceniff/bgservice'),(3,5,'net/ponury/faceniff/ProfileList'),(4,8,'net/ponury/faceniff/bgservice'),(5,10,'net/ponury/faceniff/FNService'),(6,11,'net/ponury/faceniff/FNPreferences'),(7,16,'net/ponury/faceniff/FNService'),(8,18,'net/ponury/faceniff/FNService'),(9,25,'net/ponury/faceniff/FNService'),(10,28,'net/ponury/faceniff/FNPreferences'),(11,30,'com/xl/gw/systemappuninstall/ActiveActivity'),(12,34,'com/waps/OffersWebView'),(13,35,'com/waps/OffersWebView'),(14,36,'com/feedback/ui/SendFeedback'),(15,37,'com/feedback/ui/SendFeedback'),(16,38,'com/waps/OffersWebView'),(17,39,'com/waps/OffersWebView'),(18,40,'com/xl/gw/systemappuninstall/ActiveActivity'),(19,41,'com/feedback/ui/FeedbackConversation'),(20,42,'NULL-CONSTANT'),(21,43,'(.*)'),(22,45,'com/waps/OffersWebView'),(23,53,'com/feedback/ui/FeedbackConversations'),(24,54,'com/xl/gw/systemappuninstall/ProtectService'),(25,55,'com/xl/gw/systemappuninstall/ActiveActivity'),(26,62,'com/feedback/ui/SendFeedback'),(27,66,'(.*)'),(28,68,'(.*)'),(29,69,'(.*)'),(30,70,'com/itfunz/itfunzsupertools/ItfunzPowerManager'),(31,71,'(.*)'),(32,72,'(.*)'),(33,73,'(.*)'),(34,74,'(.*)'),(35,75,'com/itfunz/itfunzsupertools/widget/ItfunzSuperToolsWidgetServiceBig'),(36,76,'com/itfunz/itfunzsupertools/AutoPowerDown'),(37,77,'(.*)'),(38,78,'(.*)'),(39,80,'com/itfunz/itfunzsupertools/Tools'),(40,81,'com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetIconsDisplay'),(41,82,'(.*)'),(42,83,'com/itfunz/itfunzsupertools/OtherFunction'),(43,84,'com/itfunz/itfunzsupertools/HoldScreenLightService'),(44,86,'(.*)'),(45,87,'com/itfunz/itfunzsupertools/DataMvApp'),(46,88,'com/itfunz/itfunzsupertools/ItfunzSuperToolsService'),(47,89,'com/itfunz/itfunzsupertools/ItfunzFileDialogConfig'),(48,90,'(.*)'),(49,91,'(.*)'),(50,92,'(.*)'),(51,93,'(.*)'),(52,94,'com/itfunz/itfunzsupertools/CallledService'),(53,95,'com/itfunz/itfunzsupertools/Tools'),(54,97,'(.*)'),(55,98,'com/itfunz/itfunzsupertools/ItfunzSuperToolsService'),(56,99,'(.*)'),(57,101,'(.*)'),(58,102,'com/itfunz/itfunzsupertools/SimplifyProgram'),(59,103,'com/itfunz/itfunzsupertools/widget/ItfunzSuperToolsWidgetService'),(60,104,'(.*)'),(61,105,'(.*)'),(62,106,'(.*)'),(63,107,'(.*)'),(64,109,'com/itfunz/itfunzsupertools/CpuControl'),(65,110,'(.*)'),(66,111,'(.*)'),(67,112,'(.*)'),(68,113,'com/itfunz/itfunzsupertools/DiskSpace'),(69,114,'(.*)'),(70,115,'(.*)'),(71,116,'com/itfunz/itfunzsupertools/CpuControl'),(72,117,'com/itfunz/itfunzsupertools/HoldScreenLightService'),(73,118,'(.*)'),(74,119,'(.*)'),(75,120,'(.*)'),(76,121,'com/itfunz/itfunzsupertools/ItfunzSuperToolsSettings'),(77,122,'com/itfunz/itfunzsupertools/ItfunzFileDialog'),(78,123,'com.itfunz.itfunzsupertools.widget.ItfunzSuperToolsWidgetIconsDisplay'),(79,124,'com.itfunz.itfunzsupertools.simple.GuideProgram'),(80,125,'(.*)'),(81,126,'com.itfunz.itfunzsupertools.simple.AboutProgram'),(82,127,'com/itfunz/itfunzsupertools/CallledService'),(83,128,'com/itfunz/itfunzsupertools/widget/ItfunzSuperToolsWidgetServiceMid'),(84,129,'com/itfunz/itfunzsupertools/OneKeyLockScreen'),(85,130,'(.*)'),(86,131,'(.*)'),(87,132,'(.*)'),(88,134,'(.*)'),(89,135,'(.*)'),(90,136,'com/itfunz/itfunzsupertools/ScreenCheckLayout'),(91,139,'com/itfunz/itfunzsupertools/ThemeManager'),(92,140,'com/itfunz/itfunzsupertools/ItfunzFileDialog');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,4,1),(2,6,2),(3,9,3),(4,12,4),(5,13,5),(6,14,6),(7,15,7),(8,17,8),(9,19,9),(10,20,10),(11,21,11),(12,22,12),(13,23,13),(14,24,14),(15,26,15),(16,27,16),(17,29,17),(18,31,18),(19,32,19),(20,33,20),(21,56,21),(22,60,22),(23,61,23),(24,63,24),(25,67,25),(26,79,27),(27,85,28),(28,96,29),(29,100,30),(30,108,31),(31,133,35),(32,137,36),(33,138,37);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,3,'receiver'),(2,8,'receiver'),(3,30,'flag'),(4,34,'CLIENT_PACKAGE'),(5,34,'URL'),(6,34,'offers_webview_tag'),(7,35,'CLIENT_PACKAGE'),(8,35,'URL'),(9,35,'isFinshClose'),(10,35,'offers_webview_tag'),(11,37,'feedback_id'),(12,38,'UrlPath'),(13,38,'ACTIVITY_FLAG'),(14,38,'isFinshClose'),(15,38,'offers_webview_tag'),(16,39,'Notify_Url_Params'),(17,39,'UrlPath'),(18,39,'ACTIVITY_FLAG'),(19,39,'isFinshClose'),(20,39,'offers_webview_tag'),(21,40,'flag'),(22,41,'feedback_id'),(23,44,'RetrieveReplyBroadcast'),(24,45,'USER_ID'),(25,45,'CLIENT_PACKAGE'),(26,45,'Offers_URL'),(27,45,'offers_webview_tag'),(28,45,'URL_PARAMS'),(29,55,'flag');
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,2),(7,7,2),(8,8,1),(9,9,1),(10,10,1),(11,11,3),(12,12,1),(13,13,1),(14,14,4),(15,15,5),(16,16,6),(17,16,7),(18,16,8),(19,16,9),(20,16,10),(21,17,6),(22,17,7),(23,17,10),(24,17,8),(25,17,9),(26,18,6),(27,18,7),(28,18,8),(29,18,9),(30,18,10),(31,19,13),(32,19,12),(33,20,13),(34,20,12),(35,21,14),(36,22,16),(37,22,15),(38,23,15),(39,23,16),(40,24,12),(41,25,18);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,8,1),(7,9,1),(8,9,2),(9,10,1),(10,11,2),(11,12,1),(12,13,1),(13,15,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,11,NULL,NULL,NULL,NULL,'text','*'),(2,21,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,17,'(.*)','(.*)'),(2,24,'(.*)','(.*)'),(3,31,'application','vnd.android.package-archive'),(4,56,'application','vnd.android.package-archive'),(5,67,'(.*)','(.*)'),(6,79,'video','*'),(7,85,'application','*'),(8,96,'(.*)','(.*)'),(9,100,'audio','*'),(10,108,'text','*'),(11,133,'image','*'),(12,137,'application','vnd.android.package-archive'),(13,138,'text','plain');
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
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'net.ponury.faceniff'),(2,3,'net.ponury.faceniff'),(3,5,'net.ponury.faceniff'),(4,8,'net.ponury.faceniff'),(5,10,'net.ponury.faceniff'),(6,11,'net.ponury.faceniff'),(7,16,'net.ponury.faceniff'),(8,18,'net.ponury.faceniff'),(9,25,'net.ponury.faceniff'),(10,28,'net.ponury.faceniff'),(11,30,'com.xl.gw.systemappuninstall'),(12,34,'com.xl.gw.systemappuninstall'),(13,35,'com.xl.gw.systemappuninstall'),(14,36,'com.xl.gw.systemappuninstall'),(15,37,'com.xl.gw.systemappuninstall'),(16,38,'com.xl.gw.systemappuninstall'),(17,39,'com.xl.gw.systemappuninstall'),(18,40,'com.xl.gw.systemappuninstall'),(19,41,'com.xl.gw.systemappuninstall'),(20,42,'NULL-CONSTANT'),(21,43,'(.*)'),(22,45,'com.xl.gw.systemappuninstall'),(23,47,'(.*)'),(24,48,'(.*)'),(25,49,'NULL-CONSTANT'),(26,50,'NULL-CONSTANT'),(27,51,'NULL-CONSTANT'),(28,52,'NULL-CONSTANT'),(29,53,'com.xl.gw.systemappuninstall'),(30,54,'com.xl.gw.systemappuninstall'),(31,55,'com.xl.gw.systemappuninstall'),(32,58,'(.*)'),(33,59,'(.*)'),(34,62,'com.xl.gw.systemappuninstall'),(35,64,'(.*)'),(36,65,'(.*)'),(37,66,'(.*)'),(38,68,'(.*)'),(39,69,'(.*)'),(40,70,'com.itfunz.itfunzsupertools'),(41,71,'(.*)'),(42,72,'(.*)'),(43,73,'(.*)'),(44,74,'(.*)'),(45,75,'com.itfunz.itfunzsupertools'),(46,76,'com.itfunz.itfunzsupertools'),(47,77,'(.*)'),(48,78,'(.*)'),(49,80,'com.itfunz.itfunzsupertools'),(50,81,'com.itfunz.itfunzsupertools'),(51,82,'(.*)'),(52,83,'com.itfunz.itfunzsupertools'),(53,84,'com.itfunz.itfunzsupertools'),(54,86,'(.*)'),(55,87,'com.itfunz.itfunzsupertools'),(56,88,'com.itfunz.itfunzsupertools'),(57,89,'com.itfunz.itfunzsupertools'),(58,90,'(.*)'),(59,91,'(.*)'),(60,92,'(.*)'),(61,93,'(.*)'),(62,94,'com.itfunz.itfunzsupertools'),(63,95,'com.itfunz.itfunzsupertools'),(64,97,'(.*)'),(65,98,'com.itfunz.itfunzsupertools'),(66,99,'(.*)'),(67,101,'(.*)'),(68,102,'com.itfunz.itfunzsupertools'),(69,103,'com.itfunz.itfunzsupertools'),(70,104,'(.*)'),(71,105,'(.*)'),(72,106,'(.*)'),(73,107,'(.*)'),(74,109,'com.itfunz.itfunzsupertools'),(75,110,'(.*)'),(76,111,'(.*)'),(77,112,'(.*)'),(78,113,'com.itfunz.itfunzsupertools'),(79,114,'(.*)'),(80,115,'(.*)'),(81,116,'com.itfunz.itfunzsupertools'),(82,117,'com.itfunz.itfunzsupertools'),(83,118,'(.*)'),(84,119,'(.*)'),(85,120,'(.*)'),(86,121,'com.itfunz.itfunzsupertools'),(87,122,'com.itfunz.itfunzsupertools'),(88,123,'com.itfunz.itfunzsupertools'),(89,124,'com.itfunz.itfunzsupertools'),(90,125,'(.*)'),(91,126,'com.itfunz.itfunzsupertools'),(92,127,'com.itfunz.itfunzsupertools'),(93,128,'com.itfunz.itfunzsupertools'),(94,129,'com.itfunz.itfunzsupertools'),(95,130,'(.*)'),(96,131,'(.*)'),(97,132,'(.*)'),(98,134,'(.*)'),(99,135,'(.*)'),(100,136,'com.itfunz.itfunzsupertools'),(101,139,'com.itfunz.itfunzsupertools'),(102,140,'com.itfunz.itfunzsupertools');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,3,0),(4,6,0),(5,6,0),(6,9,0),(7,9,0),(8,10,0),(9,12,0),(10,24,0),(11,25,0),(12,27,0),(13,28,0),(14,44,0),(15,45,0),(16,46,0),(17,47,0),(18,48,0),(19,49,0),(20,49,0),(21,50,0),(22,51,0),(23,52,0),(24,53,0),(25,53,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,2,0,0),(4,3,1,0),(5,4,0,0),(6,5,1,0),(7,6,1,0),(8,6,0,0),(9,7,1,0),(10,8,0,0),(11,9,0,0),(12,10,1,0),(13,11,1,0),(14,10,1,0),(15,12,1,0),(16,13,0,0),(17,12,1,0),(18,14,0,0),(19,12,1,0),(20,15,1,0),(21,15,1,0),(22,16,1,0),(23,17,1,0),(24,17,1,0),(25,18,0,0),(26,17,1,0),(27,19,1,0),(28,20,0,0),(29,21,1,0),(30,22,0,0),(31,23,1,0),(32,24,1,0),(33,25,1,0),(34,27,0,0),(35,27,0,0),(36,28,0,0),(37,28,0,0),(38,29,0,0),(39,29,0,0),(40,31,0,0),(41,32,0,0),(42,33,0,0),(43,34,0,0),(44,35,1,0),(45,36,0,0),(46,37,1,0),(47,37,1,0),(48,37,1,0),(49,37,1,0),(50,37,1,0),(51,38,1,0),(52,38,1,0),(53,39,0,0),(54,40,0,0),(55,41,0,0),(56,42,1,0),(57,43,1,0),(58,43,1,0),(59,43,1,0),(60,44,1,0),(61,45,1,0),(62,46,0,0),(63,47,1,0),(64,48,1,0),(65,48,1,0),(66,49,0,0),(67,50,1,0),(68,51,0,0),(69,52,0,0),(70,53,0,0),(71,54,0,0),(72,55,0,0),(73,56,0,0),(74,57,0,0),(75,58,0,0),(76,59,0,0),(77,61,0,0),(78,62,0,0),(79,63,1,0),(80,64,0,0),(81,65,0,0),(82,66,0,0),(83,67,0,0),(84,68,0,0),(85,69,1,0),(86,70,0,0),(87,71,0,0),(88,72,0,0),(89,73,0,0),(90,74,0,0),(91,75,0,0),(92,76,0,0),(93,78,0,0),(94,79,0,0),(95,80,0,0),(96,81,1,0),(97,82,0,0),(98,83,0,0),(99,84,0,0),(100,85,1,0),(101,86,0,0),(102,87,0,0),(103,88,0,0),(104,89,0,0),(105,90,0,0),(106,91,0,0),(107,92,0,0),(108,93,1,0),(109,94,0,0),(110,95,0,0),(111,96,0,0),(112,98,0,0),(113,99,0,0),(114,100,0,0),(115,101,0,0),(116,102,0,0),(117,103,0,0),(118,105,0,0),(119,106,0,0),(120,107,0,0),(121,109,0,0),(122,110,0,0),(123,111,0,0),(124,112,0,0),(125,113,0,0),(126,114,0,0),(127,115,0,0),(128,116,0,0),(129,117,0,0),(130,118,0,0),(131,119,0,0),(132,120,0,0),(133,121,1,0),(134,122,0,0),(135,123,0,0),(136,124,0,0),(137,125,1,0),(138,126,1,0),(139,127,0,0),(140,128,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (21,'android.permission.ACCESS_FINE_LOCATION'),(10,'android.permission.ACCESS_NETWORK_STATE'),(2,'android.permission.ACCESS_WIFI_STATE'),(9,'android.permission.BROADCAST_STICKY'),(1,'android.permission.CHANGE_WIFI_STATE'),(18,'android.permission.DEVICE_POWER'),(15,'android.permission.DISABLE_KEYGUARD'),(14,'android.permission.FACTORY_TEST'),(20,'android.permission.GET_TASKS'),(11,'android.permission.HARDWARE_TEST'),(7,'android.permission.INTERNET'),(12,'android.permission.READ_CONTACTS'),(5,'android.permission.READ_EXTERNAL_STORAGE'),(22,'android.permission.READ_LOGS'),(6,'android.permission.READ_PHONE_STATE'),(16,'android.permission.RECEIVE_BOOT_COMPLETED'),(8,'android.permission.VIBRATE'),(4,'android.permission.WAKE_LOCK'),(13,'android.permission.WRITE_CONTACTS'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(17,'android.permission.WRITE_SETTINGS'),(19,'com.android.launcher.permission.INSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'http://NULL-CONSTANT:1337/NULL-CONSTANT',NULL,NULL,NULL),(2,NULL,NULL,'http://faceniff.ponury.net',NULL,NULL,NULL),(3,NULL,NULL,'http://faceniff.ponury.net/buy.php?id=(.*)',NULL,NULL,NULL),(4,NULL,NULL,'http://faceniff.ponury.net/buy2.php?id=',NULL,NULL,NULL),(5,NULL,NULL,'http://faceniff.ponury.net/',NULL,NULL,NULL),(6,NULL,NULL,'http://faceniff.ponury.net/buy2.php?id=(.*)',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'(.*)',NULL,NULL,NULL),(10,NULL,NULL,'http://faceniff.ponury.net/buy2.php?id=',NULL,NULL,NULL),(11,NULL,NULL,'http://faceniff.ponury.net/buy2.php?id=(.*)',NULL,NULL,NULL),(12,NULL,NULL,'http://faceniff.ponury.net/',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'http://(.*):8080/(.*)@(.*)',NULL,NULL,NULL),(17,NULL,NULL,'http://(.*):8080/(.*)@(.*)',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(19,NULL,NULL,'',NULL,NULL,NULL),(20,NULL,NULL,'http://m.sc.hiapk.com/himarket?srcCode=80031&clientType=81002',NULL,NULL,NULL),(21,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(22,NULL,NULL,'http://www.google.com.hk/search?q=root NULL-CONSTANT',NULL,NULL,NULL),(23,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(24,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(25,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(26,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(27,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(28,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(29,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(30,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(31,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(32,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(33,NULL,NULL,'content://media/internal/audio/media',NULL,NULL,NULL),(34,NULL,NULL,'content://media/internal/audio/media',NULL,NULL,NULL),(35,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(36,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(37,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(38,NULL,NULL,'content://media/internal/audio/media',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,60,26),(2,97,32),(3,104,33),(4,108,34),(5,129,38);
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,2,1),(4,2,2),(5,2,3),(6,2,4),(7,3,2),(8,3,3),(9,3,4),(10,3,5),(11,3,6),(12,3,7),(13,3,8),(14,3,9),(15,4,2),(16,4,3),(17,4,4),(18,4,6),(19,4,7),(20,4,8),(21,4,9),(22,4,10),(23,5,1),(24,5,2),(25,6,19),(26,5,3),(27,6,2),(28,5,4),(29,6,3),(30,5,6),(31,6,21),(32,5,7),(33,6,20),(34,5,8),(35,6,6),(36,5,10),(37,6,22),(38,5,11),(39,6,7),(40,5,12),(41,6,10),(42,5,13),(43,5,14),(44,5,15),(45,5,17),(46,5,16),(47,5,18);
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

-- Dump completed on 2015-10-09  0:38:32
