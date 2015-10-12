-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_145
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (15,'(.*)'),(10,'Speedup.intent.action.refreshservice'),(14,'Speedup.intent.action.temp'),(7,'Speedup.intent.action.updatewidget'),(5,'android.appwidget.action.APPWIDGET_CONFIGURE'),(6,'android.appwidget.action.APPWIDGET_UPDATE'),(11,'android.intent.action.BATTERY_CHANGED'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(16,'android.intent.action.CHOOSER'),(1,'android.intent.action.MAIN'),(17,'android.intent.action.PACKAGE_ADDED'),(12,'android.intent.action.SCREEN_OFF'),(13,'android.intent.action.SCREEN_ON'),(2,'android.intent.action.SIG_STR'),(9,'android.intent.action.VIEW'),(8,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS');
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
INSERT INTO `Applications` VALUES (1,'sunkay.QQBook',1),(2,'com.tutusw.phonespeedup',14),(3,'com.ps.llk',12),(4,'com.ps.ddp',11),(5,'org.zhou.cash.yy',1),(6,'com.mogo.threesameline',3),(7,'com.gp.geekadoo',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.BROWSABLE'),(2,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'sunkay.QQBook.QQBook'),(2,1,'com.google.update.Dialog'),(3,1,'com.google.update.UpdateService'),(4,1,'com.google.update.Receiver'),(5,2,'com.tutusw.phonespeedup.IntroActivity'),(6,2,'com.tutusw.phonespeedup.InfoActivity'),(7,2,'com.google.ssearch.Dialog'),(8,2,'com.tutusw.phonespeedup.Home'),(9,2,'com.tutusw.phonespeedup.PerflockActivity'),(10,2,'com.tutusw.phonespeedup.ProfilesActivity'),(11,2,'com.tutusw.phonespeedup.ProfileEditActivity'),(12,2,'com.tutusw.phonespeedup.AdvancedActivity'),(13,2,'com.tutusw.phonespeedup.AboutActivity'),(14,2,'com.tutusw.phonespeedup.StresstestActivity'),(15,2,'com.tutusw.phonespeedup.Setcpu'),(16,2,'com.tutusw.phonespeedup.WidgetConfigActivity'),(17,2,'com.google.ssearch.SearchService'),(18,2,'com.tutusw.phonespeedup.StartupService'),(19,2,'com.tutusw.phonespeedup.ProfilesService'),(20,2,'com.tutusw.phonespeedup.WidgetService'),(21,2,'com.google.ssearch.Receiver'),(22,2,'com.tutusw.phonespeedup.StartupReceiver'),(23,2,'com.tutusw.phonespeedup.Widget'),(24,3,'com.ps.llk.MainActivity'),(25,4,'com.ps.ddp.MainActivity'),(26,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(27,3,'com.google.update.Dialog'),(28,5,'org.zhou.cash.yy.MainActivity'),(29,3,'com.google.update.UpdateService'),(30,4,'com.ps.ddp.DemoApp'),(31,3,'com.google.update.Receiver'),(32,4,'com.ps.ddp.GameActivity'),(33,5,'org.zhou.cash.yy.ref.PreferencesFromCode'),(34,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(35,4,'com.google.update.Dialog'),(36,5,'org.zhou.cash.yy.ref.PreferencesFromXml'),(37,4,'com.waps.OffersWebView'),(38,5,'org.zhou.cash.yy.About'),(39,4,'com.google.update.UpdateService'),(40,5,'net.youmi.android.AdActivity'),(41,4,'com.google.update.Receiver'),(42,5,'com.google.update.Dialog'),(43,5,'com.google.update.UpdateService'),(44,5,'com.google.update.Receiver'),(45,6,'com.mogo.threesameline.GameActivity'),(46,6,'com.google.ssearch.Dialog'),(47,6,'com.google.ads.AdActivity'),(48,6,'com.google.ssearch.SearchService'),(49,6,'com.google.ssearch.Receiver'),(50,7,'com.gp.geekadoo.ui.MainScreen'),(51,7,'com.gp.geekadoo.ui.Yaniv'),(52,7,'com.google.update.Dialog'),(53,7,'cn.domob.android.ads.DomobActivity'),(54,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(55,7,'com.google.update.UpdateService'),(56,7,'com.google.update.Receiver'),(57,1,'com.google.update.Dialog$2'),(58,1,'com.google.update.UpdateService$MyThread'),(59,1,'com.ju6.a'),(60,1,'com.google.update.Dialog$1'),(61,3,'com.google.update.Dialog$1'),(62,3,'com.google.update.Dialog$2'),(63,3,'com.google.update.UpdateService$AA'),(64,6,'com.google.ssearch.SearchService$MyThread'),(65,5,'com.google.update.UpdateService$AA'),(66,2,'com.google.ssearch.Dialog$1'),(67,4,'com.waps.z'),(68,2,'com.tutusw.phonespeedup.ProfilesActivity$Clicker'),(69,6,'com.google.ssearch.Dialog$1'),(70,2,'com.tutusw.phonespeedup.WidgetService$1'),(71,2,'com.tutusw.phonespeedup.ProfilesService$1'),(72,2,'android.appwidget.AppWidgetProvider'),(73,5,'net.youmi.android.be'),(74,4,'com.google.update.Dialog$1'),(75,4,'com.waps.aa'),(76,4,'com.waps.s'),(77,5,'com.google.update.Dialog$1'),(78,7,'cn.domob.android.ads.i$6'),(79,4,'com.waps.o'),(80,5,'com.google.update.Dialog$2'),(81,5,'net.youmi.android.t'),(82,7,'com.gp.geekadoo.ui.MainScreen$3'),(83,2,'com.google.ssearch.SearchService$MyThread'),(84,4,'com.google.update.UpdateService$AA'),(85,7,'com.ju6.a'),(86,4,'com.waps.q'),(87,2,'com.tutusw.phonespeedup.Home$clicker'),(88,7,'com.google.update.UpdateService$MyThread'),(89,4,'com.waps.AppConnect'),(90,7,'com.gp.geekadoo.ui.MainScreen$5'),(91,7,'cn.domob.android.ads.DomobAdManager'),(92,4,'com.google.update.Dialog$2'),(93,7,'cn.domob.android.ads.DomobActionReceiver'),(94,7,'cn.domob.android.ads.i'),(95,4,'com.waps.ac'),(96,7,'com.google.update.Dialog$1'),(97,7,'com.google.update.Dialog$2'),(98,7,'cn.domob.android.ads.DomobAdEngine$2');
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
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,3,'ST_MY_PID'),(2,2,'TYPEdsada'),(3,2,'MSG'),(4,3,'ST_START_DELAY'),(5,1,'UMENG_APPKEY'),(6,1,'UMENG_CHANNEL'),(7,27,'TYPEdsada'),(8,26,'shouldMakeOverlayTransparent'),(9,26,'shouldShowBottomBar'),(10,29,'ST_START_DELAY'),(11,29,'ST_MY_PID'),(12,26,'transitionTime'),(13,26,'overlayTransition'),(14,26,'shouldResizeOverlay'),(15,26,'overlayTitle'),(16,26,'url'),(17,27,'MSG'),(18,26,'shouldShowTitlebar'),(19,26,'shouldEnableBottomBar'),(20,47,'com.google.ads.AdOpener'),(21,37,'URL'),(22,34,'shouldShowBottomBar'),(23,35,'TYPEdsada'),(24,34,'shouldResizeOverlay'),(25,40,'D50EF1926ADD471892E72BCE6D7E032C'),(26,46,'MSG'),(27,43,'ST_MY_PID'),(28,25,'CLIENT_PACKAGE'),(29,37,'CLIENT_PACKAGE'),(30,39,'CLIENT_PACKAGE'),(31,30,'CLIENT_PACKAGE'),(32,34,'CLIENT_PACKAGE'),(33,34,'shouldEnableBottomBar'),(34,25,'APP_ID'),(35,37,'APP_ID'),(36,39,'APP_ID'),(37,47,'params'),(38,30,'APP_ID'),(39,42,'MSG'),(40,46,'TYPEdsada'),(41,34,'APP_ID'),(42,34,'shouldMakeOverlayTransparent'),(43,42,'TYPEdsada'),(44,40,'D780FBF4215247bcBB1AC0AD33C474FE'),(45,40,'172C94EDC717477aBF600D7898A64A8E'),(46,37,'Offers_URL'),(47,37,'Notify_Url_Params'),(48,16,'appWidgetId'),(49,25,'DEVICE_ID'),(50,11,'row_id'),(51,37,'DEVICE_ID'),(52,7,'MSG'),(53,39,'DEVICE_ID'),(54,30,'DEVICE_ID'),(55,34,'DEVICE_ID'),(56,39,'ST_START_DELAY'),(57,34,'transitionTime'),(58,34,'overlayTitle'),(59,25,'WAPS_ID'),(60,37,'WAPS_ID'),(61,39,'WAPS_ID'),(62,47,'action'),(63,30,'WAPS_ID'),(64,34,'WAPS_ID'),(65,37,'USER_ID'),(66,55,'DOMOB_ALLOW_LOCATION'),(67,54,'DOMOB_ALLOW_LOCATION'),(68,54,'overlayTransition'),(69,54,'shouldEnableBottomBar'),(70,7,'TYPEdsada'),(71,40,'EB80F3291A8E469c962CA133BDC549D7'),(72,37,'UrlPath'),(73,34,'url'),(74,35,'MSG'),(75,39,'ST_MY_PID'),(76,37,'offers_webview_tag'),(77,37,'ACTIVITY_FLAG'),(78,37,'isFinshClose'),(79,53,'appName'),(80,55,'DOMOB_TEST_MODE'),(81,54,'DOMOB_TEST_MODE'),(82,51,'gamedata'),(83,55,'DOMOB_PID'),(84,54,'DOMOB_PID'),(85,54,'shouldShowTitlebar'),(86,51,'state'),(87,34,'shouldShowTitlebar'),(88,43,'ST_START_DELAY'),(89,54,'shouldResizeOverlay'),(90,55,'ST_MY_PID'),(91,52,'TYPEdsada'),(92,53,'appId'),(93,55,'ST_START_DELAY'),(94,25,'WAPS_PID'),(95,37,'WAPS_PID'),(96,39,'WAPS_PID'),(97,30,'WAPS_PID'),(98,52,'MSG'),(99,34,'WAPS_PID'),(100,54,'overlayTitle'),(101,54,'shouldMakeOverlayTransparent'),(102,54,'transitionTime'),(103,37,'SHWO_FLAG'),(104,37,'Notify_Id'),(105,34,'overlayTransition'),(106,37,'URL_PARAMS'),(107,54,'shouldShowBottomBar'),(108,54,'url'),(109,53,'actType');
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'s',0,NULL,NULL),(4,4,'r',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'s',0,NULL,NULL),(18,18,'s',0,NULL,NULL),(19,19,'s',0,NULL,NULL),(20,20,'s',0,NULL,NULL),(21,21,'r',1,NULL,NULL),(22,22,'r',0,9,NULL),(23,23,'r',1,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',1,NULL,NULL),(29,29,'s',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'r',1,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'s',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'r',1,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'s',0,NULL,NULL),(44,44,'r',1,NULL,NULL),(45,45,'a',1,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'s',0,NULL,NULL),(49,49,'r',1,NULL,NULL),(50,50,'a',1,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'s',0,NULL,NULL),(56,56,'r',1,NULL,NULL),(57,70,'r',1,NULL,NULL),(58,71,'r',1,NULL,NULL),(59,72,'r',1,NULL,NULL),(60,22,'r',1,NULL,NULL),(61,86,'r',1,NULL,NULL),(62,93,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,3),(3,3,4),(4,4,3),(5,5,3),(6,6,3),(7,7,2),(8,8,27),(9,9,27),(10,10,29),(11,11,31),(12,12,29),(13,13,29),(14,14,48),(15,15,48),(16,16,17),(17,17,43),(18,18,25),(19,19,48),(20,20,7),(21,21,37),(22,22,44),(23,23,10),(24,24,49),(25,25,43),(26,26,46),(27,27,28),(28,28,47),(29,29,25),(30,30,40),(31,31,8),(32,32,5),(33,33,8),(34,34,35),(35,35,10),(36,36,37),(37,37,8),(38,38,10),(39,39,13),(40,40,6),(41,41,39),(42,41,34),(43,41,30),(44,42,42),(45,43,8),(46,44,55),(47,45,43),(48,46,55),(49,46,54),(50,47,37),(51,48,18),(52,49,21),(53,50,42),(54,51,25),(55,53,16),(56,52,28),(57,54,10),(58,55,40),(59,56,37),(60,57,34),(61,57,39),(62,57,30),(63,58,50),(64,59,22),(65,60,17),(66,61,39),(67,62,55),(68,63,18),(69,64,56),(70,65,8),(71,66,55),(72,67,39),(73,68,23),(74,69,5),(75,70,50),(76,71,30),(77,72,10),(78,73,50),(79,74,8),(80,75,37),(81,76,17),(82,77,41),(83,78,10),(84,79,25),(85,80,25),(86,81,55),(87,81,54),(88,82,35),(89,83,39),(90,83,34),(91,83,30),(92,84,55),(93,85,39),(94,86,55),(95,86,54),(96,87,37),(97,88,52),(98,89,30),(99,90,52),(100,91,50),(101,92,55),(102,92,54);
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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,57,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(2,58,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(3,4,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(4,3,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(5,3,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(6,59,'<com.ju6.a: boolean b()>',178,'p',NULL),(7,60,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(8,61,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(9,62,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(10,63,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(11,31,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(12,29,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(13,29,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(14,48,'<com.google.ssearch.SearchService: int setUsbEnabled()>',34,'a',NULL),(15,64,'<com.google.ssearch.SearchService$MyThread: void run()>',39,'a',NULL),(16,17,'<com.google.ssearch.SearchService: void getPermission2()>',79,'a',NULL),(17,65,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(18,25,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',36,'a',NULL),(19,48,'<com.google.ssearch.SearchService: void getPermission2()>',79,'a',NULL),(20,66,'<com.google.ssearch.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(21,67,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(22,44,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(23,68,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',31,'r',NULL),(24,49,'<com.google.ssearch.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(25,43,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(26,69,'<com.google.ssearch.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(27,28,'<org.zhou.cash.yy.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(28,47,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(29,25,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',40,'a',NULL),(30,73,'<net.youmi.android.be: void a(android.content.Context,java.lang.String)>',6,'a',NULL),(31,8,'<com.tutusw.phonespeedup.Home: void onCreate(android.os.Bundle)>',216,'s',NULL),(32,5,'<com.tutusw.phonespeedup.IntroActivity: void launchMarket()>',4,'a',NULL),(33,8,'<com.tutusw.phonespeedup.Home: void launchClass(java.lang.Class)>',4,'a',NULL),(34,74,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(35,68,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',48,'r',NULL),(36,75,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(37,8,'<com.tutusw.phonespeedup.Home: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(38,68,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',79,'a',NULL),(39,13,'<com.tutusw.phonespeedup.AboutActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(40,6,'<com.tutusw.phonespeedup.InfoActivity: void launchClass(java.lang.Class)>',4,'a',NULL),(41,76,'<com.waps.s: void onClick(android.view.View)>',35,'a',NULL),(42,77,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(43,8,'<com.tutusw.phonespeedup.Home: void updateWidget()>',3,'r',NULL),(44,55,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(45,43,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(46,78,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(47,79,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(48,18,'<com.tutusw.phonespeedup.StartupService: void updateWidget(int,int)>',5,'r',NULL),(49,21,'<com.google.ssearch.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(50,80,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(51,25,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',15,'a',NULL),(52,28,'<org.zhou.cash.yy.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(53,16,'<com.tutusw.phonespeedup.WidgetConfigActivity: void apply()>',39,'s',NULL),(54,68,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',67,'r',NULL),(55,81,'<net.youmi.android.t: void onClick(android.view.View)>',48,'a',NULL),(56,37,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(57,76,'<com.waps.s: void onClick(android.view.View)>',59,'a',NULL),(58,82,'<com.gp.geekadoo.ui.MainScreen$3: void onClick(android.view.View)>',6,'a',NULL),(59,22,'<com.tutusw.phonespeedup.StartupReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',0),(60,83,'<com.google.ssearch.SearchService$MyThread: void run()>',39,'a',NULL),(61,84,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(62,85,'<com.ju6.a: boolean b()>',178,'p',NULL),(63,18,'<com.tutusw.phonespeedup.StartupService: void onDestroy()>',79,'s',NULL),(64,56,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(65,87,'<com.tutusw.phonespeedup.Home$clicker: void onClick(android.view.View)>',97,'a',NULL),(66,88,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(67,39,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(68,23,'<com.tutusw.phonespeedup.Widget: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',15,'s',NULL),(69,5,'<com.tutusw.phonespeedup.IntroActivity: void launchCupcake()>',3,'a',NULL),(70,50,'<com.gp.geekadoo.ui.MainScreen: void resumeYanivHandler()>',5,'a',NULL),(71,89,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(72,10,'<com.tutusw.phonespeedup.ProfilesActivity: void update()>',9,'r',NULL),(73,90,'<com.gp.geekadoo.ui.MainScreen$5: void onClick(android.view.View)>',52,'a',NULL),(74,8,'<com.tutusw.phonespeedup.Home: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(75,37,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(76,17,'<com.google.ssearch.SearchService: int setUsbEnabled()>',34,'a',NULL),(77,41,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(78,68,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',44,'s',NULL),(79,25,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',22,'a',NULL),(80,25,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',29,'a',NULL),(81,91,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(82,92,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(83,76,'<com.waps.s: void onClick(android.view.View)>',85,'a',NULL),(84,55,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(85,39,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(86,94,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(87,95,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(88,96,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(89,89,'<com.waps.AppConnect: void showMore(android.content.Context,java.lang.String)>',13,'a',NULL),(90,97,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(91,50,'<com.gp.geekadoo.ui.MainScreen: void startYanivHandler()>',5,'a',NULL),(92,98,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0);
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
INSERT INTO `IActions` VALUES (1,1,8),(2,2,1),(3,3,1),(4,9,1),(5,10,1),(6,11,1),(7,12,1),(8,13,8),(9,14,1),(10,15,1),(11,23,1),(12,25,1),(13,27,1),(14,29,1),(15,31,8),(16,34,9),(17,35,10),(18,39,8),(19,41,15),(20,43,9),(21,44,9),(22,46,15),(23,47,9),(24,48,9),(25,49,9),(26,51,9),(27,52,1),(28,54,1),(29,56,9),(30,57,9),(31,58,10),(32,61,9),(33,64,9),(34,66,9),(35,69,1),(36,70,1),(37,71,7),(38,72,1),(39,74,1),(40,75,1),(41,77,1),(42,80,9),(43,81,9),(44,82,7),(45,84,9),(46,86,8),(47,88,9),(48,91,9),(49,92,10),(50,94,16),(51,95,9),(52,96,16),(53,97,16),(54,98,9),(55,99,16),(56,100,9),(57,101,9),(58,102,16),(59,104,1),(60,103,16),(61,105,1),(62,106,16),(63,107,1),(64,108,1),(65,109,16),(66,112,9),(67,113,1),(68,115,1),(69,121,10),(70,122,16),(71,124,16),(72,127,1),(73,128,16),(74,130,1),(75,131,16),(76,132,16),(77,135,16),(78,136,16),(79,138,16),(80,140,8),(81,146,9),(82,148,1),(83,150,1),(84,151,8);
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,2,2),(2,3,1),(3,9,1),(4,10,2),(5,11,1),(6,12,2),(7,14,1),(8,15,2),(9,23,1),(10,25,2),(11,27,2),(12,29,1),(13,41,3),(14,43,3),(15,46,3),(16,52,1),(17,54,2),(18,69,1),(19,70,1),(20,72,2),(21,74,2),(22,75,1),(23,77,2),(24,104,1),(25,105,2),(26,107,2),(27,108,1),(28,113,1),(29,115,2),(30,127,1),(31,130,2),(32,148,1),(33,150,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,4,'com/google/update/UpdateService'),(2,5,'com/google/update/Dialog'),(3,6,'com/google/update/Dialog'),(4,7,'com/google/update/Dialog'),(5,8,'com/google/update/Dialog'),(6,16,'com/google/update/UpdateService'),(7,17,'com/google/update/Dialog'),(8,18,'com/google/update/Dialog'),(9,19,'com/google/update/Dialog'),(10,20,'com/google/update/Dialog'),(11,21,'com/google/ssearch/Dialog'),(12,22,'com/google/ssearch/Dialog'),(13,24,'com/google/ssearch/Dialog'),(14,26,'com/google/ssearch/Dialog'),(15,28,'com/ps/ddp/GameActivity'),(16,30,'com/google/ssearch/Dialog'),(17,32,'com/google/ssearch/Dialog'),(18,33,'com/google/update/UpdateService'),(19,36,'com/google/ssearch/SearchService'),(20,37,'com/google/update/Dialog'),(21,38,'com/google/update/Dialog'),(22,40,'org/zhou/cash/yy/ref/PreferencesFromXml'),(23,42,'com/ps/ddp/DemoApp'),(24,45,'com/tutusw/phonespeedup/ProfilesService'),(25,50,'com/tutusw/phonespeedup/AdvancedActivity'),(26,53,'com/tutusw/phonespeedup/InfoActivity'),(27,55,'com/tutusw/phonespeedup/AboutActivity'),(28,60,'com/tutusw/phonespeedup/PerflockActivity'),(29,59,'com/waps/OffersWebView'),(30,63,'com/tutusw/phonespeedup/ProfileEditActivity'),(31,62,'com/waps/OffersWebView'),(32,65,'com/tutusw/phonespeedup/IntroActivity'),(33,67,'com/tutusw/phonespeedup/StresstestActivity'),(34,73,'com/google/update/Dialog'),(35,76,'com/google/update/Dialog'),(36,78,'com/google/update/Dialog'),(37,79,'com/google/update/Dialog'),(38,85,'com/google/ssearch/SearchService'),(39,87,'com/ps/ddp/GameActivity'),(40,89,'com/tutusw/phonespeedup/WidgetService'),(41,90,'org/zhou/cash/yy/About'),(42,93,'(.*)'),(43,110,'com/tutusw/phonespeedup/ProfilesService'),(44,111,'com/google/update/UpdateService'),(45,114,'com/google/update/Dialog'),(46,116,'com/tutusw/phonespeedup/WidgetService'),(47,117,'com/google/update/Dialog'),(48,118,'com/tutusw/phonespeedup/Setcpu'),(49,119,'com/gp/geekadoo/ui/Yaniv'),(50,120,'com/waps/OffersWebView'),(51,123,'com/tutusw/phonespeedup/IntroActivity'),(52,126,'com/google/ssearch/Dialog'),(53,129,'com/google/ssearch/Dialog'),(54,133,'com/google/update/UpdateService'),(55,134,'com/tutusw/phonespeedup/ProfilesService'),(56,137,'com/ps/ddp/GameActivity'),(57,139,'com/ps/ddp/GameActivity'),(58,142,'com/google/update/Dialog'),(59,141,'com/waps/OffersWebView'),(60,143,'com/google/update/Dialog'),(61,144,'com/google/update/Dialog'),(62,145,'com/google/update/Dialog'),(63,147,'NULL-CONSTANT'),(64,149,'com/waps/OffersWebView'),(65,152,'com/gp/geekadoo/ui/Yaniv');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,34,2),(2,41,3),(3,43,4),(4,44,5),(5,46,6),(6,47,7),(7,48,8),(8,49,9),(9,51,10),(10,56,11),(11,57,12),(12,61,13),(13,64,14),(14,66,15),(15,80,16),(16,81,17),(17,84,18),(18,88,19),(19,91,20),(20,95,21),(21,98,22),(22,100,23),(23,101,24),(24,112,26),(25,146,28);
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
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,5,'TYPEdsada'),(2,6,'MSG'),(3,6,'TYPEdsada'),(4,7,'TYPEdsada'),(5,8,'MSG'),(6,8,'TYPEdsada'),(7,17,'TYPEdsada'),(8,18,'MSG'),(9,18,'TYPEdsada'),(10,19,'TYPEdsada'),(11,20,'MSG'),(12,20,'TYPEdsada'),(13,21,'TYPEdsada'),(14,22,'MSG'),(15,22,'TYPEdsada'),(16,24,'TYPEdsada'),(17,26,'MSG'),(18,26,'TYPEdsada'),(19,28,'type'),(20,30,'TYPEdsada'),(21,32,'MSG'),(22,32,'TYPEdsada'),(23,37,'MSG'),(24,37,'TYPEdsada'),(25,38,'TYPEdsada'),(26,59,'UrlPath'),(27,59,'ACTIVITY_FLAG'),(28,59,'isFinshClose'),(29,59,'offers_webview_tag'),(30,62,'Notify_Url_Params'),(31,62,'UrlPath'),(32,62,'ACTIVITY_FLAG'),(33,62,'isFinshClose'),(34,62,'offers_webview_tag'),(35,73,'MSG'),(36,73,'TYPEdsada'),(37,76,'TYPEdsada'),(38,78,'MSG'),(39,78,'TYPEdsada'),(40,79,'TYPEdsada'),(41,87,'type'),(42,94,'android.intent.extra.INTENT'),(43,96,'android.intent.extra.INTENT'),(44,97,'android.intent.extra.TITLE'),(45,97,'android.intent.extra.INTENT'),(46,99,'android.intent.extra.INTENT'),(47,102,'android.intent.extra.TITLE'),(48,102,'android.intent.extra.INTENT'),(49,103,'android.intent.extra.INTENT'),(50,106,'android.intent.extra.TITLE'),(51,106,'android.intent.extra.INTENT'),(52,109,'android.intent.extra.TITLE'),(53,109,'android.intent.extra.INTENT'),(54,114,'TYPEdsada'),(55,117,'MSG'),(56,117,'TYPEdsada'),(57,119,'state'),(58,120,'USER_ID'),(59,120,'CLIENT_PACKAGE'),(60,120,'Offers_URL'),(61,120,'offers_webview_tag'),(62,120,'URL_PARAMS'),(63,122,'android.intent.extra.INTENT'),(64,124,'android.intent.extra.INTENT'),(65,126,'TYPEdsada'),(66,128,'android.intent.extra.TITLE'),(67,128,'android.intent.extra.INTENT'),(68,129,'MSG'),(69,129,'TYPEdsada'),(70,131,'android.intent.extra.INTENT'),(71,132,'android.intent.extra.TITLE'),(72,132,'android.intent.extra.INTENT'),(73,135,'android.intent.extra.INTENT'),(74,137,'type'),(75,136,'android.intent.extra.TITLE'),(76,136,'android.intent.extra.INTENT'),(77,138,'android.intent.extra.TITLE'),(78,138,'android.intent.extra.INTENT'),(79,139,'type'),(80,141,'CLIENT_PACKAGE'),(81,141,'URL'),(82,142,'MSG'),(83,141,'isFinshClose'),(84,142,'TYPEdsada'),(85,141,'offers_webview_tag'),(86,143,'TYPEdsada'),(87,144,'TYPEdsada'),(88,145,'MSG'),(89,145,'TYPEdsada'),(90,149,'USER_ID'),(91,149,'CLIENT_PACKAGE'),(92,149,'Offers_URL'),(93,149,'offers_webview_tag'),(94,149,'URL_PARAMS'),(95,152,'state');
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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(5,3,1),(6,4,5),(7,5,3),(8,5,2),(9,5,4),(10,6,3),(11,7,7),(12,7,6),(13,8,1),(14,9,1),(15,10,1),(16,11,4),(17,11,3),(18,11,2),(19,12,4),(20,12,3),(21,12,2),(22,13,4),(23,13,3),(24,13,2),(25,14,1),(26,15,4),(27,15,2),(28,15,3),(29,16,1),(30,17,4),(31,17,2),(32,17,3),(33,18,13),(34,18,14),(35,18,10),(36,18,11),(37,18,12),(38,19,14),(39,19,11),(40,19,10),(41,19,13),(42,19,12),(43,20,14),(44,20,13),(45,20,12),(46,20,11),(47,20,10),(48,21,13),(49,21,12),(50,21,14),(51,21,11),(52,21,10),(53,22,14),(54,22,13),(55,22,12),(56,22,11),(57,22,10),(58,23,10),(59,23,11),(60,23,12),(61,23,13),(62,23,14),(63,24,13),(64,24,12),(65,24,7),(66,25,12),(67,25,13),(68,25,7),(69,26,12),(70,26,13),(71,26,7),(72,27,7),(73,27,13),(74,27,12),(75,28,7),(76,28,12),(77,28,13),(78,29,7),(79,29,13),(80,29,12),(81,30,7),(82,30,12),(83,30,13),(84,31,13),(85,31,12),(86,31,7),(87,32,12),(88,32,13),(89,32,7),(90,33,7),(91,33,13),(92,33,12),(93,34,7),(94,34,12),(95,34,13),(96,35,7),(97,35,12),(98,35,13),(99,36,17),(100,37,17);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,8,1),(4,9,1),(5,10,1),(6,14,1),(7,16,1);
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
INSERT INTO `IFData` VALUES (1,36,'package',NULL,NULL,NULL,NULL,NULL),(2,37,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,34,'application','vnd.android.package-archive'),(2,44,'application','vnd.android.package-archive'),(3,46,'(.*)','(.*)'),(4,47,'application','vnd.android.package-archive'),(5,49,'application','vnd.android.package-archive'),(6,51,'application','vnd.android.package-archive'),(7,56,'application','vnd.android.package-archive'),(8,57,'application','vnd.android.package-archive'),(9,61,'application','vnd.android.package-archive'),(10,64,'application','vnd.android.package-archive'),(11,66,'application','vnd.android.package-archive'),(12,80,'application','vnd.android.package-archive'),(13,81,'application','vnd.android.package-archive'),(14,84,'application','vnd.android.package-archive'),(15,88,'application','vnd.android.package-archive'),(16,91,'application','vnd.android.package-archive'),(17,95,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'sunkay.QQBook'),(2,3,'sunkay.QQBook'),(3,4,'sunkay.QQBook'),(4,5,'sunkay.QQBook'),(5,6,'sunkay.QQBook'),(6,7,'sunkay.QQBook'),(7,8,'sunkay.QQBook'),(8,9,'com.noshufou.android.su'),(9,10,'com.noshufou.android.su'),(10,11,'com.noshufou.android.su'),(11,12,'com.noshufou.android.su'),(12,14,'com.ps.llk'),(13,15,'com.ps.llk'),(14,16,'com.ps.llk'),(15,17,'com.ps.llk'),(16,18,'com.ps.llk'),(17,19,'com.ps.llk'),(18,20,'com.ps.llk'),(19,21,'com.mogo.threesameline'),(20,22,'com.mogo.threesameline'),(21,23,'com.mogo.threesameline'),(22,24,'com.tutusw.phonespeedup'),(23,25,'com.mogo.threesameline'),(24,27,'org.zhou.cash.yy'),(25,26,'com.tutusw.phonespeedup'),(26,28,'com.ps.ddp'),(27,29,'org.zhou.cash.yy'),(28,30,'com.mogo.threesameline'),(29,32,'com.mogo.threesameline'),(30,33,'org.zhou.cash.yy'),(31,36,'com.mogo.threesameline'),(32,37,'org.zhou.cash.yy'),(33,38,'org.zhou.cash.yy'),(34,40,'org.zhou.cash.yy'),(35,42,'com.ps.ddp'),(36,45,'com.tutusw.phonespeedup'),(37,50,'com.tutusw.phonespeedup'),(38,52,'com.noshufou.android.su'),(39,53,'com.tutusw.phonespeedup'),(40,55,'com.tutusw.phonespeedup'),(41,54,'com.noshufou.android.su'),(42,60,'com.tutusw.phonespeedup'),(43,59,'com.ps.ddp'),(44,63,'com.tutusw.phonespeedup'),(45,62,'com.ps.ddp'),(46,65,'com.tutusw.phonespeedup'),(47,67,'com.tutusw.phonespeedup'),(48,69,'(.*)'),(49,70,'com.noshufou.android.su'),(50,72,'(.*)'),(51,74,'com.noshufou.android.su'),(52,73,'com.gp.geekadoo'),(53,75,'NULL-CONSTANT'),(54,76,'com.gp.geekadoo'),(55,77,'NULL-CONSTANT'),(56,78,'org.zhou.cash.yy'),(57,79,'org.zhou.cash.yy'),(58,85,'com.tutusw.phonespeedup'),(59,87,'com.ps.ddp'),(60,89,'com.tutusw.phonespeedup'),(61,90,'org.zhou.cash.yy'),(62,93,'(.*)'),(63,104,'com.tutusw.phonespeedup'),(64,105,'com.ps.ddp'),(65,107,'com.tutusw.phonespeedup'),(66,108,'com.ps.ddp'),(67,110,'com.tutusw.phonespeedup'),(68,111,'com.gp.geekadoo'),(69,113,'com.gp.geekadoo'),(70,114,'com.ps.ddp'),(71,116,'com.tutusw.phonespeedup'),(72,115,'com.gp.geekadoo'),(73,117,'com.ps.ddp'),(74,118,'com.tutusw.phonespeedup'),(75,119,'com.gp.geekadoo'),(76,120,'com.ps.ddp'),(77,123,'com.tutusw.phonespeedup'),(78,127,'(.*)'),(79,126,'com.tutusw.phonespeedup'),(80,130,'(.*)'),(81,129,'com.tutusw.phonespeedup'),(82,133,'com.ps.ddp'),(83,134,'com.tutusw.phonespeedup'),(84,137,'com.ps.ddp'),(85,139,'com.ps.ddp'),(86,142,'com.gp.geekadoo'),(87,141,'com.ps.ddp'),(88,143,'com.gp.geekadoo'),(89,144,'com.ps.ddp'),(90,145,'com.ps.ddp'),(91,147,'NULL-CONSTANT'),(92,148,'com.noshufou.android.su'),(93,150,'com.noshufou.android.su'),(94,149,'com.ps.ddp'),(95,152,'com.gp.geekadoo');
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,4,0),(3,5,0),(4,16,0),(5,21,0),(6,22,0),(7,23,0),(8,24,0),(9,25,0),(10,28,0),(11,31,0),(12,41,0),(13,44,0),(14,45,0),(15,49,0),(16,50,0),(17,56,0),(18,23,0),(19,21,0),(20,57,0),(21,58,0),(22,59,0),(23,60,0),(24,23,0),(25,21,0),(26,57,0),(27,58,0),(28,59,0),(29,60,0),(30,23,0),(31,21,0),(32,57,0),(33,58,0),(34,59,0),(35,60,0),(36,61,0),(37,62,0);
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
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,1,0),(3,2,1,0),(4,3,0,0),(5,4,0,0),(6,4,0,0),(7,5,0,0),(8,5,0,0),(9,7,1,0),(10,7,1,0),(11,8,1,0),(12,8,1,0),(13,9,1,0),(14,10,1,0),(15,10,1,0),(16,11,0,0),(17,12,0,0),(18,12,0,0),(19,13,0,0),(20,13,0,0),(21,14,0,0),(22,14,0,0),(23,15,1,0),(24,16,0,0),(25,15,1,0),(26,16,0,0),(27,17,1,0),(28,18,0,0),(29,17,1,0),(30,19,0,0),(31,20,1,0),(32,19,0,0),(33,22,0,0),(34,21,1,0),(35,23,1,0),(36,24,0,0),(37,25,0,0),(38,25,0,0),(39,26,1,0),(40,27,0,0),(41,28,1,0),(42,29,0,0),(43,28,1,0),(44,30,1,0),(45,31,0,0),(46,28,1,0),(47,30,1,0),(48,32,1,0),(49,30,1,0),(50,33,0,0),(51,30,1,0),(52,34,1,0),(53,33,0,0),(54,34,1,0),(55,33,0,0),(56,30,1,0),(57,30,1,0),(58,35,1,0),(59,36,0,0),(60,37,0,0),(61,30,1,0),(62,36,0,0),(63,38,0,0),(64,30,1,0),(65,39,0,0),(66,30,1,0),(67,40,0,0),(68,41,1,0),(69,41,1,0),(70,42,1,0),(71,43,1,0),(72,41,1,0),(73,44,0,0),(74,42,1,0),(75,41,1,0),(76,44,0,0),(77,41,1,0),(78,45,0,0),(79,45,0,0),(80,46,1,0),(81,47,1,0),(82,48,1,0),(83,46,1,0),(84,46,1,0),(85,49,0,0),(86,50,1,0),(87,51,0,0),(88,46,1,0),(89,53,0,0),(90,52,0,0),(91,46,1,0),(92,54,1,0),(93,56,0,0),(94,55,1,0),(95,46,1,0),(96,55,1,0),(97,55,1,0),(98,57,1,0),(99,55,1,0),(100,58,1,0),(101,57,1,0),(102,55,1,0),(103,55,1,0),(104,60,1,0),(105,61,1,0),(106,55,1,0),(107,60,1,0),(108,61,1,0),(109,55,1,0),(110,63,0,0),(111,64,0,0),(112,65,1,0),(113,66,1,0),(114,67,0,0),(115,66,1,0),(116,68,0,0),(117,67,0,0),(118,69,0,0),(119,70,0,0),(120,71,0,0),(121,72,1,0),(122,73,1,0),(123,74,0,0),(124,73,1,0),(125,75,1,0),(126,76,0,0),(127,75,1,0),(128,73,1,0),(129,76,0,0),(130,75,1,0),(131,73,1,0),(132,73,1,0),(133,77,0,0),(134,78,0,0),(135,73,1,0),(136,73,1,0),(137,79,0,0),(138,73,1,0),(139,80,0,0),(140,82,1,0),(141,83,0,0),(142,84,0,0),(143,84,0,0),(144,85,0,0),(145,85,0,0),(146,86,1,0),(147,87,0,0),(148,88,1,0),(149,89,0,0),(150,88,1,0),(151,90,1,0),(152,91,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (6,'android.permission.ACCESS_COARSE_LOCATION'),(16,'android.permission.ACCESS_FINE_LOCATION'),(17,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(12,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(11,'android.permission.CHANGE_WIFI_STATE'),(1,'android.permission.INSTALL_PACKAGES'),(10,'android.permission.INTERNET'),(15,'android.permission.READ_EXTERNAL_STORAGE'),(3,'android.permission.READ_LOGS'),(7,'android.permission.READ_PHONE_STATE'),(8,'android.permission.READ_SMS'),(9,'android.permission.RECEIVE_BOOT_COMPLETED'),(13,'android.permission.VIBRATE'),(14,'android.permission.WAKE_LOCK'),(2,'android.permission.WRITE_EXTERNAL_STORAGE'),(4,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(2,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(8,NULL,NULL,'market://search?q=pname:com.mhuang.overclocking',NULL,NULL,NULL),(9,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(10,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(11,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(12,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL),(16,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(17,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(18,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(19,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(20,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(21,NULL,NULL,'file://',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'http://www.youtube.com/watch?v=V4XuZRbbs6M',NULL,NULL,NULL),(24,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(25,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(26,NULL,NULL,'market://search?q=pname:com.mhuang.overclocking',NULL,NULL,NULL),(27,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(28,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,6,1),(2,62,25),(3,81,27);
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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,2,2),(14,2,5),(15,2,7),(16,2,9),(17,2,10),(18,2,11),(19,2,12),(20,2,13),(21,2,14),(22,3,2),(23,3,5),(24,3,7),(25,3,9),(26,3,10),(27,4,2),(28,3,11),(29,4,5),(30,3,12),(31,4,7),(32,4,9),(33,5,2),(34,4,10),(35,5,5),(36,5,6),(37,4,11),(38,5,7),(39,4,12),(40,5,9),(41,5,10),(42,5,11),(43,5,12),(44,6,17),(45,6,16),(46,6,1),(47,6,2),(48,6,6),(49,6,7),(50,6,10),(51,6,11),(52,6,12),(53,6,15),(54,7,1),(55,7,2),(56,7,4),(57,7,5),(58,7,6),(59,7,7),(60,7,8),(61,7,9),(62,7,10),(63,7,11),(64,7,12),(65,7,15),(66,7,17),(67,7,16);
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

-- Dump completed on 2015-10-09  0:38:17
