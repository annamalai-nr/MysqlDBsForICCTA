-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_195
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (26,'Taskbar.QuickList.Added'),(45,'android.appwidget.action.APPWIDGET_CONFIGURE'),(41,'android.appwidget.action.APPWIDGET_PICK'),(43,'android.bluetooth.adapter.action.STATE_CHANGED'),(37,'android.intent.action.AIRPLANE_MODE'),(4,'android.intent.action.BOOT_COMPLETED'),(40,'android.intent.action.CHOOSER'),(17,'android.intent.action.DELETE'),(3,'android.intent.action.MAIN'),(14,'android.intent.action.MEDIA_MOUNTED'),(19,'android.intent.action.PACKAGE_ADDED'),(42,'android.intent.action.PACKAGE_CHANGED'),(15,'android.intent.action.PACKAGE_REMOVED'),(38,'android.intent.action.PICK_ACTIVITY'),(13,'android.intent.action.SEND'),(11,'android.intent.action.VIEW'),(44,'android.net.wifi.WIFI_STATE_CHANGED'),(1,'android.server.checkin.CHECKIN'),(39,'android.settings.BLUETOOTH_SETTINGS'),(18,'com.android.launcher.action.INSTALL_SHORTCUT'),(10,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(7,'com.athene.android.aac.ShortcutAction'),(16,'com.igamepower.appmaster.GameBootReceiver'),(21,'com.igamepower.appmaster.Myhall'),(20,'com.igamepower.appmaster.Web'),(5,'com.opda.startup.action.SHUTDOWN_AUTOKILL_SERVICE'),(6,'com.opda.startup.action.START_AUTOKILL_SERVICE'),(36,'com.smart.taskbar1.APP_ITEM_ADDED'),(31,'com.smart.taskbar1.Label.Added'),(23,'com.smart.taskbar1.Mask.Added'),(33,'com.smart.taskbar1.appdone'),(8,'com.smart.taskbar1.backup'),(30,'com.smart.taskbar1.btsetting.open'),(25,'com.smart.taskbar1.custom.added'),(32,'com.smart.taskbar1.dialogclosed'),(24,'com.smart.taskbar1.hide'),(34,'com.smart.taskbar1.labelReady'),(35,'com.smart.taskbar1.labelarray.done'),(9,'com.smart.taskbar1.restore'),(28,'com.smart.taskbar1.restored'),(27,'com.smart.taskbar1.show'),(29,'com.smart.taskbar1.taskKilled'),(22,'com.smart.taskbar1.widget.Added'),(12,'com.zft.task.result'),(2,'uk.co.neilandtheresa.InstantRoot2.ROOT_PHONE');
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
INSERT INTO `Applications` VALUES (1,'uk.co.neilandtheresa.InstantRoot2',104),(2,'cn.com.opda.android.cleanup1',1),(3,'com.droiddream.android.afdvancedfm',6),(4,'com.smart.taskbar1',49),(5,'com.igamepower.appmaster',1003),(6,'com.zft',1);
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
INSERT INTO `CategoryStrings` VALUES (1,'android.intent.category.DEFAULT'),(3,'android.intent.category.HOME'),(6,'android.intent.category.INFO'),(2,'android.intent.category.LAUNCHER'),(4,'android.intent.category.SAMPLE_CODE'),(5,'android.intent.categroy.DEFUAULT');
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
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'uk.co.neilandtheresa.InstantRoot2.InstantRootReceiver'),(2,2,'cn.com.opda.android.cleanup1.StartupActivity'),(3,2,'com.android.root.main'),(4,2,'cn.com.opda.android.cleanup1.BootstrapKillService'),(5,2,'com.android.root.Setting'),(6,2,'com.android.root.AlarmReceiver'),(7,2,'cn.com.opda.android.cleanup1.BootstrapReceiver'),(8,3,'com.adao.android.afm.CoverActivity'),(9,3,'com.adao.android.afm.FileListActivity'),(10,3,'com.adao.android.afm.AppListActivity'),(11,3,'com.adao.android.afm.PrefActivity'),(12,3,'com.adao.android.afm.BookmarkActivity'),(13,3,'com.adao.android.afm.ShortcutActivity'),(14,4,'com.smart.taskbar1.TaskbarActivity'),(15,4,'com.android.root.main'),(16,3,'com.android.root.main'),(17,4,'com.smart.taskbar1.quickList'),(18,3,'com.android.root.Setting'),(19,5,'com.igamepower.appmaster.Myhall'),(20,4,'com.smart.taskbar1.buildAction'),(21,3,'com.android.root.AlarmReceiver'),(22,4,'com.smart.taskbar1.ManageLabel'),(23,4,'com.smart.taskbar1.firstuse'),(24,5,'com.igamepower.appmaster.HomeActivity'),(25,4,'com.smart.taskbar1.Calibrate'),(26,5,'com.igamepower.appmaster.SortActivity1'),(27,4,'com.smart.taskbar1.widgetViewer'),(28,5,'com.igamepower.appmaster.SortActivity2'),(29,4,'com.smart.taskbar1.settings'),(30,4,'com.smart.taskbar1.sdcardReceiver'),(31,5,'com.igamepower.appmaster.SearchActivity'),(32,5,'com.igamepower.appmaster.ManagerActivity'),(33,4,'com.smart.taskbar1.FileBrowser'),(34,5,'com.igamepower.appmaster.GameInfo'),(35,4,'com.android.root.Setting'),(36,5,'com.igamepower.appmaster.TableClass'),(37,4,'com.android.root.AlarmReceiver'),(38,4,'com.smart.taskbar1.TaskbarService'),(39,5,'com.igamepower.appmaster.Web'),(40,4,'com.smart.taskbar1.TaskbarLauncher'),(41,5,'com.igamepower.appmaster.GameAlertDialog'),(42,5,'com.igamepower.appmaster.TestView'),(43,5,'com.igamepower.appmaster.DevelopmentSettings'),(44,5,'com.igamepower.appmaster.GameService'),(45,5,'com.igamepower.appmaster.GameBootReceiver'),(46,2,'cn.com.opda.android.cleanup1.core.About$2'),(47,6,'com.zft.QLogoPage'),(48,6,'com.zft.QLogoPage_'),(49,6,'com.zft.setting_.QAideTools'),(50,6,'com.zft.setting_.QUserDefineZF'),(51,6,'com.zft.setting_.QCallSetting'),(52,6,'com.zft.setting_.QGracePeriod'),(53,6,'com.zft.setting_.QHFWarnning'),(54,6,'com.zft.setting_.QIPSetting_'),(55,6,'com.zft.setting_.QPresentCall'),(56,6,'com.zft.setting_.QRomaSetting'),(57,6,'com.zft.setting_.QTHFCalc'),(58,6,'com.zft.setting_.QSpecialNumber'),(59,6,'com.zft.setting_.QTrafficSetting'),(60,6,'com.zft.setting_.QSMSSetting_'),(61,3,'com.adao.android.afm.CoverActivity$2'),(62,6,'com.zft.setting_.QCallInfoShowPosition'),(63,6,'com.zft.setting_.QHelpAndSupport'),(64,3,'com.adao.android.afm.CoverActivity$4'),(65,6,'com.zft.QDescriptionPage'),(66,6,'com.zft.subpage.QSmsSubPage'),(67,6,'com.zft.QDefinningTc'),(68,6,'com.zft.QChangeTC'),(69,6,'com.zft.QLocationPage'),(70,6,'com.zft.QMainPage'),(71,6,'com.zft.QRegistPage'),(72,6,'com.zft.QSelectTC'),(73,6,'com.zft.QSelectMainTc'),(74,6,'com.zft.QSelectNetTc'),(75,6,'com.zft.QDetailMainTc'),(76,6,'com.zft.QFeatruePage'),(77,6,'com.zft.QTcInfo'),(78,6,'com.zft.subpage.QTrafficSubPage'),(79,6,'com.zft.QChangeTC_'),(80,6,'com.zft.subpage.QSmdrPage'),(81,6,'com.zft.subpage.QChargePage'),(82,6,'com.zft.subpage.QFeedBackPage'),(83,6,'com.zft.subpage.QFriendsPage'),(84,6,'com.core.components.QSubList'),(85,6,'com.zft.QCallReport'),(86,6,'com.zft.subpage.QPieSubPage'),(87,6,'com.zft.subpage.QBarChartSubPage'),(88,6,'com.service.ZftService'),(89,6,'com.service.BootBroadcastReceiver'),(90,6,'com.zft.CheckChargeReceiver'),(91,6,'com.service.callLogs.LogsContentProvider'),(92,6,'com.provider.Variable'),(93,3,'com.adao.android.afm.FileListActivity$18'),(94,3,'com.adao.android.afm.CoverActivity$5'),(95,5,'com.igamepower.appmaster.cj'),(96,3,'com.adao.android.afm.CoverActivity$10'),(97,3,'com.adao.android.afm.CoverActivity$7'),(98,3,'com.adao.android.afm.FileListActivity$19'),(99,3,'com.adao.android.afm.CoverActivity$8'),(100,3,'com.adao.android.afm.CoverActivity$6'),(101,5,'com.igamepower.appmaster.bn'),(102,5,'com.igamepower.appmaster.ah'),(103,3,'com.adao.android.afm.BookmarkActivity$1'),(104,5,'com.igamepower.appmaster.bh'),(105,3,'com.adao.android.afm.FileListActivity$38'),(106,5,'com.igamepower.appmaster.bj'),(107,3,'com.adao.android.afm.FileListActivity$17'),(108,5,'com.igamepower.appmaster.z'),(109,3,'com.adao.android.afm.CoverActivity$3'),(110,5,'com.igamepower.appmaster.bs'),(111,3,'com.adao.android.afm.FileListActivity$10'),(112,3,'com.adao.android.afm.FileListActivity$37'),(113,5,'com.igamepower.appmaster.bi'),(114,5,'com.igamepower.appmaster.ao'),(115,4,'com.smart.taskbar1.Calibrate$readPoint'),(116,4,'com.smart.taskbar1.toggle_popup'),(117,4,'com.smart.taskbar1.TaskbarActivity$QuickListListener'),(118,4,'com.smart.taskbar1.appPopUp$handleClick'),(119,4,'com.smart.taskbar1.ManageLabel$cuatomPopUpListener$1'),(120,4,'com.smart.taskbar1.TaskbarService$ApplicationsIntentReceiver'),(121,4,'com.smart.taskbar1.TaskbarService$TaskBarIntentReceiver'),(122,4,'com.smart.taskbar1.TaskbarActivity$intentReciever'),(123,4,'com.smart.taskbar1.quickList$AppLoadDone'),(124,4,'com.smart.taskbar1.ManageLabel$intentReciever'),(125,4,'com.smart.taskbar1.toggle_popup$toggleListener'),(126,4,'com.smart.taskbar1.TaskbarActivity$buttonListener'),(127,4,'com.smart.taskbar1.TaskbarView$closeListener'),(128,4,'com.smart.taskbar1.ManageLabel$cuatomPopUpListener'),(129,4,'com.smart.taskbar1.TaskbarView$ApplicationLauncher'),(130,4,'com.smart.taskbar1.ManageLabel$onGearClicked$1'),(131,4,'com.smart.taskbar1.ManageLabel$onCreateBtn'),(132,4,'com.smart.taskbar1.TaskbarView$QuickListLauncher'),(133,4,'com.smart.taskbar1.ManageLabel$orderBtnClicker'),(134,4,'com.smart.taskbar1.toggle_popup$btnHandler'),(135,4,'com.smart.taskbar1.TaskbarView$tabListener'),(136,4,'com.smart.taskbar1.dialog.editAppDialog'),(137,4,'com.smart.taskbar1.AboutDialog'),(138,4,'com.smart.taskbar1.dialog.createLabelDialog'),(139,4,'com.smart.taskbar1.TaskbarView'),(140,4,'com.smart.taskbar1.TaskbarActivity$tabListener'),(141,4,'com.smart.taskbar1.widgetViewer$1'),(142,4,'com.smart.taskbar1.ManageLabel$widgetPopUpListener$1'),(143,4,'com.smart.taskbar1.dialog.editWidgetDialog'),(144,4,'com.smart.taskbar1.buildAction$btnHandle'),(145,4,'com.smart.taskbar1.ManageLabel$onGearClicked');
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,2,'UMENG_CHANNEL'),(2,2,'UMENG_APPKEY'),(3,32,'app_name'),(4,34,'title'),(5,31,'package_name'),(6,19,'nextclassid'),(7,41,'url'),(8,32,'total'),(9,32,'package_name'),(10,32,'url'),(11,9,'bundle_path'),(12,13,'bundle_path'),(13,41,'title'),(14,41,'btn_txt'),(15,34,'filepath'),(16,28,'version_code'),(17,28,'nextclassid'),(18,32,'status'),(19,32,'soft_id'),(20,28,'package_name'),(21,32,'filepath'),(22,32,'icon'),(23,32,'completed'),(24,28,'status'),(25,41,'content'),(26,31,'version_code'),(27,31,'status'),(28,34,'status'),(29,34,'from_table'),(30,20,'android.intent.extra.shortcut.NAME'),(31,20,'android.intent.extra.shortcut.ICON_RESOURCE'),(32,17,'isApp'),(33,20,'android.intent.extra.shortcut.INTENT'),(34,20,'isEdit'),(35,22,'custom_widget'),(36,27,'widgetID'),(37,20,'_id'),(38,20,'android.intent.extra.shortcut.ICON'),(39,22,'appWidgetId');
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
INSERT INTO `Components` VALUES (1,1,'r',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'s',0,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'s',0,NULL,NULL),(7,7,'r',1,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'s',0,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'s',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',1,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'r',1,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'a',1,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'a',1,NULL,NULL),(35,35,'s',0,NULL,NULL),(36,36,'a',1,NULL,NULL),(37,37,'s',0,NULL,NULL),(38,38,'s',1,NULL,NULL),(39,39,'a',1,NULL,NULL),(40,40,'r',1,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',1,NULL,NULL),(43,43,'a',1,NULL,NULL),(44,44,'s',1,NULL,NULL),(45,45,'r',1,NULL,NULL),(46,47,'a',1,NULL,NULL),(47,48,'a',1,NULL,NULL),(48,49,'a',1,NULL,NULL),(49,50,'a',1,NULL,NULL),(50,51,'a',1,NULL,NULL),(51,52,'a',1,NULL,NULL),(52,53,'a',1,NULL,NULL),(53,54,'a',1,NULL,NULL),(54,55,'a',1,NULL,NULL),(55,56,'a',1,NULL,NULL),(56,57,'a',1,NULL,NULL),(57,58,'a',1,NULL,NULL),(58,59,'a',1,NULL,NULL),(59,60,'a',1,NULL,NULL),(60,62,'a',1,NULL,NULL),(61,63,'a',1,NULL,NULL),(62,65,'a',0,NULL,NULL),(63,66,'a',0,NULL,NULL),(64,67,'a',0,NULL,NULL),(65,68,'a',0,NULL,NULL),(66,69,'a',0,NULL,NULL),(67,70,'a',1,NULL,NULL),(68,71,'a',0,NULL,NULL),(69,72,'a',0,NULL,NULL),(70,73,'a',0,NULL,NULL),(71,74,'a',0,NULL,NULL),(72,75,'a',0,NULL,NULL),(73,76,'a',0,NULL,NULL),(74,77,'a',0,NULL,NULL),(75,78,'a',0,NULL,NULL),(76,79,'a',0,NULL,NULL),(77,80,'a',0,NULL,NULL),(78,81,'a',0,NULL,NULL),(79,82,'a',0,NULL,NULL),(80,83,'a',0,NULL,NULL),(81,84,'a',0,NULL,NULL),(82,85,'a',1,NULL,NULL),(83,86,'a',0,NULL,NULL),(84,87,'a',0,NULL,NULL),(85,88,'s',0,NULL,NULL),(86,89,'r',1,NULL,NULL),(87,90,'r',1,NULL,NULL),(88,91,'p',0,NULL,NULL),(89,92,'p',0,NULL,NULL),(90,120,'r',1,NULL,NULL),(91,121,'r',1,NULL,NULL),(92,122,'r',1,NULL,NULL),(93,123,'r',1,NULL,NULL),(94,124,'r',1,NULL,NULL),(95,125,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=214 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,7),(3,3,3),(4,4,2),(5,5,3),(6,6,8),(7,7,8),(8,8,16),(9,9,9),(10,10,10),(11,11,9),(12,12,9),(13,13,8),(14,14,44),(15,15,9),(16,16,8),(17,17,42),(18,18,8),(19,19,24),(20,20,9),(21,21,31),(22,22,34),(23,23,45),(24,24,45),(25,25,8),(26,26,28),(27,27,8),(28,28,39),(29,29,10),(30,30,19),(31,31,12),(32,32,28),(33,33,9),(34,34,32),(35,35,9),(36,36,39),(37,37,19),(38,38,8),(39,39,13),(40,40,24),(41,41,9),(42,42,19),(43,43,9),(44,44,24),(45,45,9),(46,46,41),(47,47,16),(48,48,28),(49,49,36),(50,50,28),(51,51,41),(52,52,24),(53,53,32),(54,54,32),(55,55,24),(56,56,41),(57,57,36),(58,58,28),(59,59,31),(60,60,24),(61,61,39),(62,62,34),(63,63,19),(64,64,34),(65,65,45),(66,66,19),(67,67,34),(68,68,28),(69,69,34),(70,70,41),(71,71,19),(72,72,19),(73,73,25),(74,74,27),(75,75,38),(76,75,22),(77,76,38),(78,76,22),(79,76,17),(80,77,22),(81,77,38),(82,77,14),(83,78,38),(84,78,22),(85,79,38),(86,80,14),(87,80,22),(88,80,38),(89,81,38),(90,81,22),(91,82,22),(92,82,38),(93,83,38),(94,84,38),(95,85,15),(96,86,14),(97,86,38),(98,86,22),(99,87,22),(100,87,38),(101,88,22),(102,88,38),(103,89,38),(104,89,22),(105,90,22),(106,90,38),(107,91,22),(108,91,38),(109,92,14),(110,92,38),(111,92,22),(112,93,22),(113,93,38),(114,94,38),(115,94,22),(116,95,38),(117,95,22),(118,96,38),(119,96,22),(120,97,22),(121,97,38),(122,98,22),(123,98,38),(124,99,38),(125,99,22),(126,99,14),(127,100,38),(128,100,22),(129,101,22),(130,102,22),(131,103,22),(132,103,38),(133,104,14),(134,104,22),(135,104,38),(136,105,14),(137,106,22),(138,107,22),(139,107,38),(140,108,22),(141,109,38),(142,109,22),(143,110,14),(144,110,22),(145,110,38),(146,111,38),(147,111,22),(148,112,22),(149,112,38),(150,113,22),(151,113,38),(152,114,27),(153,114,38),(154,114,22),(155,115,38),(156,116,25),(157,117,22),(158,118,22),(159,118,38),(160,119,38),(161,119,22),(162,120,38),(163,120,22),(164,121,29),(165,122,15),(166,123,22),(167,123,38),(168,124,38),(169,124,22),(170,124,14),(171,125,20),(172,126,20),(173,126,38),(174,126,22),(175,127,38),(176,127,22),(177,128,14),(178,129,22),(179,129,38),(180,129,14),(181,130,38),(182,130,22),(183,131,22),(184,131,38),(185,132,22),(186,132,20),(187,132,38),(188,133,22),(189,134,40),(190,135,22),(191,135,38),(192,136,22),(193,136,38),(194,137,38),(195,137,22),(196,137,14),(197,138,38),(198,138,22),(199,139,17),(200,139,22),(201,139,38),(202,140,38),(203,140,22),(204,141,14),(205,141,22),(206,141,38),(207,142,22),(208,143,38),(209,143,22),(210,144,22),(211,144,38),(212,145,38),(213,145,22);
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
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<uk.co.neilandtheresa.InstantRoot2.InstantRootReceiver: void onReceive(android.content.Context,android.content.Intent)>',114,'r',NULL),(2,7,'<cn.com.opda.android.cleanup1.BootstrapReceiver: void startService(android.content.Context)>',6,'s',NULL),(3,3,'<com.android.root.main: void onCreate(android.os.Bundle)>',5,'s',NULL),(4,46,'<cn.com.opda.android.cleanup1.core.About$2: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(5,3,'<com.android.root.main: void onCreate(android.os.Bundle)>',12,'a',NULL),(6,61,'<com.adao.android.afm.CoverActivity$2: void onClick(android.view.View)>',11,'a',NULL),(7,64,'<com.adao.android.afm.CoverActivity$4: void onClick(android.view.View)>',11,'a',NULL),(8,16,'<com.android.root.main: void onCreate(android.os.Bundle)>',5,'s',NULL),(9,9,'<com.adao.android.afm.FileListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',26,'a',NULL),(10,10,'<com.adao.android.afm.AppListActivity: void install()>',30,'a',NULL),(11,9,'<com.adao.android.afm.FileListActivity: void openFile(java.io.File)>',8,'a',NULL),(12,93,'<com.adao.android.afm.FileListActivity$18: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',115,'a',NULL),(13,94,'<com.adao.android.afm.CoverActivity$5: void onClick(android.view.View)>',7,'a',NULL),(14,95,'<com.igamepower.appmaster.cj: void run()>',55,'a',NULL),(15,9,'<com.adao.android.afm.FileListActivity: void browseTo(java.io.File)>',60,'r',NULL),(16,96,'<com.adao.android.afm.CoverActivity$10: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(17,42,'<com.igamepower.appmaster.TestView: void onCreate(android.os.Bundle)>',26,'s',NULL),(18,97,'<com.adao.android.afm.CoverActivity$7: void onClick(android.view.View)>',6,'a',NULL),(19,24,'<com.igamepower.appmaster.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(20,98,'<com.adao.android.afm.FileListActivity$19: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',32,'a',NULL),(21,31,'<com.igamepower.appmaster.SearchActivity: void onCreate(android.os.Bundle)>',12,'s',NULL),(22,34,'<com.igamepower.appmaster.GameInfo: void onCreate(android.os.Bundle)>',92,'a',NULL),(23,45,'<com.igamepower.appmaster.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',31,'s',NULL),(24,45,'<com.igamepower.appmaster.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',15,'s',NULL),(25,99,'<com.adao.android.afm.CoverActivity$8: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(26,28,'<com.igamepower.appmaster.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',35,'a',NULL),(27,100,'<com.adao.android.afm.CoverActivity$6: void onClick(android.view.View)>',12,'a',NULL),(28,101,'<com.igamepower.appmaster.bn: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(29,10,'<com.adao.android.afm.AppListActivity: void uninstall()>',31,'a',NULL),(30,102,'<com.igamepower.appmaster.ah: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(31,103,'<com.adao.android.afm.BookmarkActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',17,'a',NULL),(32,104,'<com.igamepower.appmaster.bh: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(33,105,'<com.adao.android.afm.FileListActivity$38: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(34,106,'<com.igamepower.appmaster.bj: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(35,107,'<com.adao.android.afm.FileListActivity$17: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',150,'r',NULL),(36,39,'<com.igamepower.appmaster.Web: void onCreate(android.os.Bundle)>',41,'s',NULL),(37,108,'<com.igamepower.appmaster.z: void onCheckedChanged(android.widget.RadioGroup,int)>',44,'a',NULL),(38,109,'<com.adao.android.afm.CoverActivity$3: void onClick(android.view.View)>',11,'a',NULL),(39,13,'<com.adao.android.afm.ShortcutActivity: void onCreate(android.os.Bundle)>',11,'a',NULL),(40,110,'<com.igamepower.appmaster.bs: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(41,111,'<com.adao.android.afm.FileListActivity$10: void onClick(android.view.View)>',7,'a',NULL),(42,19,'<com.igamepower.appmaster.Myhall: void onCreate(android.os.Bundle)>',38,'s',NULL),(43,9,'<com.adao.android.afm.FileListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',32,'a',NULL),(44,110,'<com.igamepower.appmaster.bs: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(45,112,'<com.adao.android.afm.FileListActivity$37: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(46,41,'<com.igamepower.appmaster.GameAlertDialog: void onClick(android.view.View)>',36,'a',NULL),(47,16,'<com.android.root.main: void onCreate(android.os.Bundle)>',12,'a',NULL),(48,113,'<com.igamepower.appmaster.bi: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',26,'a',NULL),(49,36,'<com.igamepower.appmaster.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',32,'a',NULL),(50,104,'<com.igamepower.appmaster.bh: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(51,41,'<com.igamepower.appmaster.GameAlertDialog: void onClick(android.view.View)>',54,'a',NULL),(52,24,'<com.igamepower.appmaster.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',50,'a',NULL),(53,32,'<com.igamepower.appmaster.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(54,106,'<com.igamepower.appmaster.bj: void onClick(android.content.DialogInterface,int)>',68,'a',NULL),(55,24,'<com.igamepower.appmaster.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',59,'a',NULL),(56,41,'<com.igamepower.appmaster.GameAlertDialog: void onClick(android.view.View)>',27,'a',NULL),(57,36,'<com.igamepower.appmaster.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(58,28,'<com.igamepower.appmaster.SortActivity2: void onCreate(android.os.Bundle)>',11,'s',NULL),(59,31,'<com.igamepower.appmaster.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',29,'a',NULL),(60,110,'<com.igamepower.appmaster.bs: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(61,39,'<com.igamepower.appmaster.Web: void onCreate(android.os.Bundle)>',37,'s',NULL),(62,114,'<com.igamepower.appmaster.ao: void onClick(android.view.View)>',240,'a',NULL),(63,19,'<com.igamepower.appmaster.Myhall: void onCreate(android.os.Bundle)>',33,'s',NULL),(64,34,'<com.igamepower.appmaster.GameInfo: boolean onKeyDown(int,android.view.KeyEvent)>',10,'a',NULL),(65,45,'<com.igamepower.appmaster.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',52,'s',NULL),(66,108,'<com.igamepower.appmaster.z: void onCheckedChanged(android.widget.RadioGroup,int)>',20,'a',NULL),(67,114,'<com.igamepower.appmaster.ao: void onClick(android.view.View)>',221,'a',NULL),(68,104,'<com.igamepower.appmaster.bh: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(69,34,'<com.igamepower.appmaster.GameInfo: void onCreate(android.os.Bundle)>',11,'s',NULL),(70,41,'<com.igamepower.appmaster.GameAlertDialog: void onClick(android.view.View)>',45,'a',NULL),(71,108,'<com.igamepower.appmaster.z: void onCheckedChanged(android.widget.RadioGroup,int)>',34,'a',NULL),(72,108,'<com.igamepower.appmaster.z: void onCheckedChanged(android.widget.RadioGroup,int)>',54,'a',NULL),(73,115,'<com.smart.taskbar1.Calibrate$readPoint: boolean onTouch(android.view.View,android.view.MotionEvent)>',67,'s',NULL),(74,27,'<com.smart.taskbar1.widgetViewer: void completeAddAppWidget(android.content.Intent)>',14,'r',NULL),(75,116,'<com.smart.taskbar1.toggle_popup: java.util.List getAPNList()>',6,'p',0),(76,17,'<com.smart.taskbar1.quickList: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',29,'r',NULL),(77,117,'<com.smart.taskbar1.TaskbarActivity$QuickListListener: void onClick(android.view.View)>',60,'a',NULL),(78,118,'<com.smart.taskbar1.appPopUp$handleClick: void onClick(android.view.View)>',24,'r',NULL),(79,119,'<com.smart.taskbar1.ManageLabel$cuatomPopUpListener$1: void onClick(android.content.DialogInterface,int)>',45,'r',NULL),(80,126,'<com.smart.taskbar1.TaskbarActivity$buttonListener: void onClick(android.view.View)>',22,'a',NULL),(81,127,'<com.smart.taskbar1.TaskbarView$closeListener: void onClick(android.view.View)>',44,'a',NULL),(82,128,'<com.smart.taskbar1.ManageLabel$cuatomPopUpListener: void onClick(android.view.View)>',25,'a',NULL),(83,129,'<com.smart.taskbar1.TaskbarView$ApplicationLauncher: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',0),(84,130,'<com.smart.taskbar1.ManageLabel$onGearClicked$1: void onClick(android.content.DialogInterface,int)>',32,'r',NULL),(85,15,'<com.android.root.main: void onCreate(android.os.Bundle)>',12,'a',NULL),(86,117,'<com.smart.taskbar1.TaskbarActivity$QuickListListener: void onClick(android.view.View)>',36,'a',NULL),(87,118,'<com.smart.taskbar1.appPopUp$handleClick: void onClick(android.view.View)>',56,'a',NULL),(88,131,'<com.smart.taskbar1.ManageLabel$onCreateBtn: void onClick(android.view.View)>',21,'a',NULL),(89,132,'<com.smart.taskbar1.TaskbarView$QuickListLauncher: void onClick(android.view.View)>',90,'a',0),(90,133,'<com.smart.taskbar1.ManageLabel$orderBtnClicker: void onClick(android.view.View)>',80,'r',NULL),(91,127,'<com.smart.taskbar1.TaskbarView$closeListener: void onClick(android.view.View)>',100,'a',NULL),(92,117,'<com.smart.taskbar1.TaskbarActivity$QuickListListener: void onClick(android.view.View)>',48,'a',NULL),(93,127,'<com.smart.taskbar1.TaskbarView$closeListener: void onClick(android.view.View)>',72,'a',NULL),(94,127,'<com.smart.taskbar1.TaskbarView$closeListener: void onClick(android.view.View)>',58,'a',NULL),(95,118,'<com.smart.taskbar1.appPopUp$handleClick: void onClick(android.view.View)>',41,'r',NULL),(96,134,'<com.smart.taskbar1.toggle_popup$btnHandler: void onClick(android.view.View)>',83,'a',NULL),(97,135,'<com.smart.taskbar1.TaskbarView$tabListener: void onClick(android.view.View)>',23,'a',NULL),(98,134,'<com.smart.taskbar1.toggle_popup$btnHandler: void onClick(android.view.View)>',80,'r',NULL),(99,126,'<com.smart.taskbar1.TaskbarActivity$buttonListener: void onClick(android.view.View)>',42,'a',NULL),(100,132,'<com.smart.taskbar1.TaskbarView$QuickListLauncher: void onClick(android.view.View)>',44,'a',0),(101,136,'<com.smart.taskbar1.dialog.editAppDialog: void onClick(android.content.DialogInterface,int)>',23,'r',NULL),(102,136,'<com.smart.taskbar1.dialog.editAppDialog: void onClick(android.content.DialogInterface,int)>',27,'r',NULL),(103,127,'<com.smart.taskbar1.TaskbarView$closeListener: void onClick(android.view.View)>',120,'a',NULL),(104,117,'<com.smart.taskbar1.TaskbarActivity$QuickListListener: void onClick(android.view.View)>',12,'a',NULL),(105,137,'<com.smart.taskbar1.AboutDialog: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(106,138,'<com.smart.taskbar1.dialog.createLabelDialog: void onClick(android.content.DialogInterface,int)>',36,'r',NULL),(107,139,'<com.smart.taskbar1.TaskbarView: void showQuickListError(int)>',14,'a',NULL),(108,22,'<com.smart.taskbar1.ManageLabel: void completeAddAppWidget(android.content.Intent)>',11,'r',NULL),(109,127,'<com.smart.taskbar1.TaskbarView$closeListener: void onClick(android.view.View)>',86,'a',NULL),(110,140,'<com.smart.taskbar1.TaskbarActivity$tabListener: void onClick(android.view.View)>',9,'a',NULL),(111,132,'<com.smart.taskbar1.TaskbarView$QuickListLauncher: void onClick(android.view.View)>',113,'a',0),(112,134,'<com.smart.taskbar1.toggle_popup$btnHandler: void onClick(android.view.View)>',56,'r',NULL),(113,118,'<com.smart.taskbar1.appPopUp$handleClick: void onClick(android.view.View)>',18,'a',NULL),(114,141,'<com.smart.taskbar1.widgetViewer$1: void onClick(android.view.View)>',11,'r',NULL),(115,142,'<com.smart.taskbar1.ManageLabel$widgetPopUpListener$1: void onClick(android.content.DialogInterface,int)>',39,'r',NULL),(116,25,'<com.smart.taskbar1.Calibrate: void onPause()>',5,'s',NULL),(117,143,'<com.smart.taskbar1.dialog.editWidgetDialog: void onClick(android.content.DialogInterface,int)>',17,'r',NULL),(118,132,'<com.smart.taskbar1.TaskbarView$QuickListLauncher: void onClick(android.view.View)>',21,'a',0),(119,116,'<com.smart.taskbar1.toggle_popup: boolean checkAPNState()>',6,'p',NULL),(120,139,'<com.smart.taskbar1.TaskbarView: void setupCalPoint()>',9,'a',NULL),(121,29,'<com.smart.taskbar1.settings: void onSharedPreferenceChanged(android.content.SharedPreferences,java.lang.String)>',8,'s',NULL),(122,15,'<com.android.root.main: void onCreate(android.os.Bundle)>',5,'s',NULL),(123,116,'<com.smart.taskbar1.toggle_popup: void openAPN()>',35,'p',0),(124,126,'<com.smart.taskbar1.TaskbarActivity$buttonListener: void onClick(android.view.View)>',35,'a',NULL),(125,20,'<com.smart.taskbar1.buildAction: void processShortcut(android.content.Intent,int,int)>',15,'a',NULL),(126,20,'<com.smart.taskbar1.buildAction: void pickShortcut(int,int)>',23,'a',NULL),(127,116,'<com.smart.taskbar1.toggle_popup: void closeAPN()>',36,'p',0),(128,14,'<com.smart.taskbar1.TaskbarActivity: void onResume()>',33,'a',NULL),(129,126,'<com.smart.taskbar1.TaskbarActivity$buttonListener: void onClick(android.view.View)>',9,'a',NULL),(130,118,'<com.smart.taskbar1.appPopUp$handleClick: void onClick(android.view.View)>',81,'r',NULL),(131,134,'<com.smart.taskbar1.toggle_popup$btnHandler: void onClick(android.view.View)>',38,'a',NULL),(132,144,'<com.smart.taskbar1.buildAction$btnHandle: void onClick(android.view.View)>',13,'a',NULL),(133,138,'<com.smart.taskbar1.dialog.createLabelDialog: void onClick(android.content.DialogInterface,int)>',32,'r',NULL),(134,40,'<com.smart.taskbar1.TaskbarLauncher: void onReceive(android.content.Context,android.content.Intent)>',11,'s',NULL),(135,22,'<com.smart.taskbar1.ManageLabel: void pickWidget()>',28,'a',NULL),(136,118,'<com.smart.taskbar1.appPopUp$handleClick: void onClick(android.view.View)>',35,'a',NULL),(137,117,'<com.smart.taskbar1.TaskbarActivity$QuickListListener: void onClick(android.view.View)>',24,'a',NULL),(138,132,'<com.smart.taskbar1.TaskbarView$QuickListLauncher: void onClick(android.view.View)>',67,'a',0),(139,17,'<com.smart.taskbar1.quickList: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'r',NULL),(140,118,'<com.smart.taskbar1.appPopUp$handleClick: void onClick(android.view.View)>',62,'r',NULL),(141,126,'<com.smart.taskbar1.TaskbarActivity$buttonListener: void onClick(android.view.View)>',28,'a',NULL),(142,22,'<com.smart.taskbar1.ManageLabel: void addAppWidget(android.content.Intent)>',19,'a',NULL),(143,145,'<com.smart.taskbar1.ManageLabel$onGearClicked: void onClick(android.view.View)>',87,'a',NULL),(144,134,'<com.smart.taskbar1.toggle_popup$btnHandler: void onClick(android.view.View)>',35,'r',NULL),(145,133,'<com.smart.taskbar1.ManageLabel$orderBtnClicker: void onClick(android.view.View)>',40,'r',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,2),(2,4,11),(3,10,11),(4,11,11),(5,12,11),(6,13,11),(7,14,11),(8,15,11),(9,16,11),(10,17,13),(11,20,14),(12,21,11),(13,23,11),(14,25,11),(15,26,11),(16,28,11),(17,29,11),(18,31,11),(19,32,16),(20,36,3),(21,37,11),(22,38,3),(23,39,17),(24,40,11),(25,42,11),(26,43,11),(27,44,3),(28,45,3),(29,46,18),(30,51,11),(31,56,11),(32,57,11),(33,65,17),(34,66,11),(35,68,3),(36,69,3),(37,73,20),(38,74,3),(39,75,3),(40,76,3),(41,77,3),(42,78,21),(43,80,16),(44,82,11),(45,83,11),(46,86,10),(47,90,22),(48,91,23),(49,93,24),(50,94,25),(51,98,31),(52,101,17),(53,102,17),(54,103,17),(55,105,31),(56,110,24),(57,113,30),(58,114,11),(59,115,23),(60,116,32),(61,117,3),(62,119,11),(63,120,32),(64,122,22),(65,125,37),(66,126,11),(67,127,27),(68,128,22),(69,130,22),(70,136,38),(71,138,11),(72,139,29),(73,140,39),(74,141,40),(75,142,40),(76,143,40),(77,144,40),(78,145,40),(79,146,40),(80,147,40),(81,148,40),(82,149,31),(83,151,41),(84,152,11),(85,154,26),(86,155,24),(87,156,11),(88,157,45),(89,159,30),(90,160,31);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,36,2),(2,38,6),(3,44,2),(4,45,6),(5,68,2),(6,69,6),(7,74,2),(8,75,6),(9,76,2),(10,77,6),(11,117,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'cn/com/opda/android/cleanup1/BootstrapKillService'),(2,3,'com/android/root/Setting'),(3,5,'(.*)'),(4,6,'com/adao/android/afm/FileListActivity'),(5,7,'com/adao/android/afm/FileListActivity'),(6,8,'com/android/root/Setting'),(7,9,'com/adao/android/afm/BookmarkActivity'),(8,18,'com/adao/android/afm/AppListActivity'),(9,19,'com/igamepower/appmaster/GameAlertDialog'),(10,22,'com/igamepower/appmaster/GameService'),(11,24,'com/igamepower/appmaster/GameInfo'),(12,27,'com/igamepower/appmaster/GameService'),(13,30,'com/igamepower/appmaster/Myhall'),(14,32,'com/igamepower/appmaster/GameService'),(15,33,'com/igamepower/appmaster/GameService'),(16,34,'com/adao/android/afm/FileListActivity'),(17,35,'com/igamepower/appmaster/GameInfo'),(18,41,'com/adao/android/afm/FileListActivity'),(19,47,'com/igamepower/appmaster/GameService'),(20,48,'com/igamepower/appmaster/Myhall'),(21,49,'com/adao/android/afm/FileListActivity'),(22,50,'com/adao/android/afm/FileListActivity'),(23,52,'com/adao/android/afm/BookmarkActivity'),(24,53,'com/igamepower/appmaster/GameService'),(25,54,'com/adao/android/afm/PrefActivity'),(26,55,'com/igamepower/appmaster/Myhall'),(27,58,'(.*)'),(28,59,'com/igamepower/appmaster/Myhall'),(29,60,'com/igamepower/appmaster/GameInfo'),(30,61,'com/igamepower/appmaster/GameInfo'),(31,62,'com/igamepower/appmaster/GameAlertDialog'),(32,63,'com/igamepower/appmaster/Myhall'),(33,64,'com/igamepower/appmaster/GameService'),(34,67,'com/igamepower/appmaster/GameInfo'),(35,70,'com/igamepower/appmaster/GameService'),(36,71,'com/igamepower/appmaster/GameInfo'),(37,72,'com/igamepower/appmaster/GameInfo'),(38,73,'com/igamepower/appmaster/GameService'),(39,78,'com/igamepower/appmaster/GameService'),(40,79,'com/igamepower/appmaster/Myhall'),(41,80,'com/igamepower/appmaster/GameService'),(42,81,'com/igamepower/appmaster/Myhall'),(43,84,'com/igamepower/appmaster/Myhall'),(44,85,'com/igamepower/appmaster/GameService'),(45,87,'com/igamepower/appmaster/Myhall'),(46,88,'com/igamepower/appmaster/Myhall'),(47,89,'com/smart/taskbar1/TaskbarService'),(48,92,'com/smart/taskbar1/quickList'),(49,95,'com/smart/taskbar1/Calibrate'),(50,96,'com/smart/taskbar1/quickList'),(51,97,'com/smart/taskbar1/buildAction'),(52,99,'(.*)'),(53,100,'com/smart/taskbar1/quickList'),(54,104,'com/smart/taskbar1/buildAction'),(55,106,'com/smart/taskbar1/quickList'),(56,107,'com/smart/taskbar1/quickList'),(57,108,'com/smart/taskbar1/quickList'),(58,109,'com/smart/taskbar1/quickList'),(59,111,'com/smart/taskbar1/TaskbarActivity'),(60,112,'com/smart/taskbar1/ManageLabel'),(61,118,'com/smart/taskbar1/quickList'),(62,121,'com/smart/taskbar1/quickList'),(63,123,'com/smart/taskbar1/quickList'),(64,124,'com/smart/taskbar1/ManageLabel'),(65,126,'com.android.settings.InstalledAppDetails'),(66,129,'com/smart/taskbar1/TaskbarService'),(67,131,'com/smart/taskbar1/Calibrate'),(68,132,'com/smart/taskbar1/TaskbarService'),(69,133,'com/android/root/Setting'),(70,134,'com/smart/taskbar1/settings'),(71,137,'com/smart/taskbar1/firstuse'),(72,150,'com/smart/taskbar1/TaskbarService'),(73,152,'com.android.settings.InstalledAppDetails'),(74,153,'com/smart/taskbar1/quickList'),(75,157,'(.*)'),(76,158,'com/smart/taskbar1/quickList');
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,4,1),(2,10,2),(3,11,3),(4,12,4),(5,13,5),(6,14,6),(7,15,7),(8,16,8),(9,20,9),(10,21,10),(11,23,11),(12,26,12),(13,28,13),(14,29,14),(15,31,15),(16,37,16),(17,39,17),(18,40,18),(19,42,19),(20,43,20),(21,51,21),(22,56,22),(23,57,23),(24,65,24),(25,66,25),(26,82,26),(27,83,27),(28,101,28),(29,102,29),(30,103,30),(31,114,31),(32,119,32),(33,138,34),(34,156,35);
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
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,6,'bundle_path'),(2,7,'bundle_path'),(3,17,'android.intent.extra.STREAM'),(4,19,'title'),(5,19,'btn_txt'),(6,19,'need_adb_flag'),(7,19,'cont'),(8,19,'close_flag'),(9,34,'bundle_path'),(10,35,'title'),(11,41,'bundle_path'),(12,46,'android.intent.extra.shortcut.NAME'),(13,46,'android.intent.extra.shortcut.ICON_RESOURCE'),(14,46,'android.intent.extra.shortcut.INTENT'),(15,48,'clicked'),(16,49,'bundle_path'),(17,50,'bundle_path'),(18,55,'title'),(19,55,'nextclassid'),(20,55,'clicked'),(21,59,'title'),(22,59,'nextclassid'),(23,59,'clicked'),(24,61,'title'),(25,62,'title'),(26,62,'btn_txt'),(27,62,'need_adb_flag'),(28,62,'cont'),(29,62,'close_flag'),(30,63,'nextclassid'),(31,63,'clicked'),(32,67,'id'),(33,67,'from_table'),(34,67,'detail_flag'),(35,72,'title'),(36,81,'clicked'),(37,84,'title'),(38,84,'nextclassid'),(39,84,'clicked'),(40,87,'clicked'),(41,88,'clicked'),(42,92,'id'),(43,96,'id'),(44,97,'isEdit'),(45,97,'mid'),(46,100,'id'),(47,106,'id'),(48,107,'id'),(49,108,'id'),(50,109,'id'),(51,118,'id'),(52,121,'id'),(53,123,'id'),(54,125,'state'),(55,126,'com.android.settings.ApplicationPkgName'),(56,136,'android.intent.extra.TITLE'),(57,136,'android.intent.extra.shortcut.NAME'),(58,136,'android.intent.extra.INTENT'),(59,136,'android.intent.extra.shortcut.ICON_RESOURCE'),(60,141,'android.intent.extra.INTENT'),(61,142,'android.intent.extra.INTENT'),(62,143,'android.intent.extra.TITLE'),(63,143,'android.intent.extra.INTENT'),(64,144,'android.intent.extra.INTENT'),(65,145,'android.intent.extra.TITLE'),(66,145,'android.intent.extra.INTENT'),(67,146,'android.intent.extra.INTENT'),(68,147,'android.intent.extra.TITLE'),(69,147,'android.intent.extra.INTENT'),(70,148,'android.intent.extra.TITLE'),(71,148,'android.intent.extra.INTENT'),(72,151,'appWidgetId'),(73,152,'pkg'),(74,153,'id'),(75,157,'appWidgetId'),(76,158,'isApp'),(77,158,'mask');
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
) ENGINE=InnoDB AUTO_INCREMENT=220 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,4,5),(6,4,6),(7,5,7),(8,6,3),(9,7,3),(10,8,3),(11,9,3),(12,10,3),(13,11,8),(14,12,3),(15,13,9),(16,14,3),(17,15,3),(18,16,3),(19,17,4),(20,18,3),(21,19,10),(22,20,3),(23,21,4),(24,23,3),(25,24,3),(26,25,3),(27,26,3),(28,27,3),(29,28,3),(30,29,3),(31,30,3),(32,31,3),(33,32,3),(34,33,3),(35,34,3),(36,35,3),(37,36,3),(38,37,3),(39,38,3),(40,39,3),(41,40,3),(42,41,3),(43,42,3),(44,43,3),(45,44,3),(46,45,3),(47,46,3),(48,47,3),(49,48,3),(50,49,3),(51,50,3),(52,51,3),(53,52,3),(54,53,3),(55,54,3),(56,55,11),(57,56,11),(58,57,4),(59,58,4),(60,59,12),(61,60,12),(62,61,15),(63,62,19),(64,63,23),(65,63,22),(66,63,25),(67,63,24),(68,63,27),(69,63,26),(70,63,31),(71,63,29),(72,63,30),(73,63,28),(74,64,29),(75,64,30),(76,64,27),(77,64,28),(78,64,25),(79,64,26),(80,64,23),(81,64,24),(82,64,22),(83,64,31),(84,65,28),(85,65,29),(86,65,30),(87,65,31),(88,65,24),(89,65,25),(90,65,26),(91,65,27),(92,65,22),(93,65,23),(94,66,27),(95,66,28),(96,66,25),(97,66,26),(98,66,31),(99,66,29),(100,66,30),(101,66,23),(102,66,24),(103,66,22),(104,67,26),(105,67,27),(106,67,28),(107,67,29),(108,67,30),(109,67,31),(110,67,22),(111,67,23),(112,67,24),(113,67,25),(114,68,28),(115,68,27),(116,68,30),(117,68,29),(118,68,31),(119,68,22),(120,68,24),(121,68,23),(122,68,26),(123,68,25),(124,69,31),(125,69,30),(126,69,29),(127,69,28),(128,69,23),(129,69,22),(130,69,27),(131,69,26),(132,69,25),(133,69,24),(134,70,34),(135,70,33),(136,70,32),(137,71,34),(138,71,33),(139,71,32),(140,72,32),(141,72,33),(142,72,34),(143,73,34),(144,73,32),(145,73,33),(146,74,32),(147,74,33),(148,74,34),(149,75,32),(150,75,33),(151,75,34),(152,76,34),(153,76,33),(154,76,32),(155,77,33),(156,77,35),(157,78,36),(158,78,33),(159,79,36),(160,79,33),(161,80,33),(162,80,36),(163,81,33),(164,81,36),(165,82,36),(166,82,33),(167,83,36),(168,83,33),(169,84,33),(170,84,36),(171,85,19),(172,85,15),(173,85,26),(174,85,42),(175,86,19),(176,86,15),(177,86,42),(178,86,26),(179,87,15),(180,87,19),(181,87,26),(182,87,42),(183,88,15),(184,88,26),(185,88,42),(186,88,19),(187,89,15),(188,89,42),(189,89,26),(190,89,19),(191,90,15),(192,90,26),(193,90,42),(194,90,19),(195,91,42),(196,91,26),(197,91,15),(198,91,19),(199,92,37),(200,92,44),(201,92,43),(202,93,43),(203,93,37),(204,93,44),(205,94,37),(206,94,43),(207,94,44),(208,95,43),(209,95,44),(210,95,37),(211,96,37),(212,96,44),(213,96,43),(214,97,37),(215,97,44),(216,97,43),(217,98,37),(218,98,44),(219,98,43);
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,2,1),(2,3,2),(3,5,1),(4,6,2),(5,7,2),(6,8,1),(7,11,1),(8,13,1),(9,16,2),(10,17,3),(11,20,2),(12,22,2),(13,23,2),(14,24,2),(15,25,4),(16,26,4),(17,27,4),(18,28,4),(19,29,4),(20,30,4),(21,31,4),(22,32,4),(23,33,4),(24,34,4),(25,35,4),(26,36,4),(27,37,4),(28,38,4),(29,39,4),(30,40,4),(31,41,4),(32,42,4),(33,43,4),(34,44,4),(35,45,4),(36,46,4),(37,47,4),(38,48,4),(39,49,4),(40,50,4),(41,51,4),(42,52,4),(43,53,1),(44,54,1),(45,55,1),(46,56,1),(47,61,5),(48,62,5);
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
INSERT INTO `IFData` VALUES (1,61,'package',NULL,NULL,NULL,NULL,NULL),(2,62,'package',NULL,NULL,NULL,NULL,NULL),(3,85,'package',NULL,NULL,NULL,NULL,NULL),(4,86,'package',NULL,NULL,NULL,NULL,NULL),(5,87,'package',NULL,NULL,NULL,NULL,NULL),(6,88,'package',NULL,NULL,NULL,NULL,NULL),(7,89,'package',NULL,NULL,NULL,NULL,NULL),(8,90,'package',NULL,NULL,NULL,NULL,NULL),(9,91,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,10,'application','vnd.android.package-archive'),(2,11,'text','*'),(3,12,'image','*'),(4,13,'(.*)','(.*)'),(5,14,'audio','*'),(6,15,'video','*'),(7,16,'*','*'),(8,17,'*','*'),(9,26,'text','*'),(10,28,'image','*'),(11,29,'audio','*'),(12,31,'video','*'),(13,37,'application','vnd.android.package-archive'),(14,40,'application','vnd.android.package-archive'),(15,82,'application','vnd.android.package-archive'),(16,83,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'cn.com.opda.android.cleanup1'),(2,3,'cn.com.opda.android.cleanup1'),(3,5,'cn.com.opda.android.cleanup1'),(4,6,'com.droiddream.android.afdvancedfm'),(5,7,'com.droiddream.android.afdvancedfm'),(6,8,'com.droiddream.android.afdvancedfm'),(7,9,'com.droiddream.android.afdvancedfm'),(8,18,'com.droiddream.android.afdvancedfm'),(9,19,'com.igamepower.appmaster'),(10,22,'com.igamepower.appmaster'),(11,24,'com.igamepower.appmaster'),(12,27,'com.igamepower.appmaster'),(13,30,'com.igamepower.appmaster'),(14,32,'com.igamepower.appmaster'),(15,33,'com.igamepower.appmaster'),(16,34,'com.droiddream.android.afdvancedfm'),(17,35,'com.igamepower.appmaster'),(18,36,'(.*)'),(19,38,'(.*)'),(20,41,'com.droiddream.android.afdvancedfm'),(21,44,'NULL-CONSTANT'),(22,45,'NULL-CONSTANT'),(23,47,'com.igamepower.appmaster'),(24,48,'com.igamepower.appmaster'),(25,49,'com.droiddream.android.afdvancedfm'),(26,50,'com.droiddream.android.afdvancedfm'),(27,52,'com.droiddream.android.afdvancedfm'),(28,53,'com.igamepower.appmaster'),(29,54,'com.droiddream.android.afdvancedfm'),(30,55,'com.igamepower.appmaster'),(31,58,'com.droiddream.android.afdvancedfm'),(32,59,'com.igamepower.appmaster'),(33,60,'com.igamepower.appmaster'),(34,61,'com.igamepower.appmaster'),(35,62,'com.igamepower.appmaster'),(36,63,'com.igamepower.appmaster'),(37,64,'com.igamepower.appmaster'),(38,67,'com.igamepower.appmaster'),(39,68,'(.*)'),(40,69,'(.*)'),(41,70,'com.igamepower.appmaster'),(42,71,'com.igamepower.appmaster'),(43,72,'com.igamepower.appmaster'),(44,73,'com.igamepower.appmaster'),(45,74,'(.*)'),(46,75,''),(47,76,''),(48,77,'(.*)'),(49,78,'com.igamepower.appmaster'),(50,79,'com.igamepower.appmaster'),(51,80,'com.igamepower.appmaster'),(52,81,'com.igamepower.appmaster'),(53,84,'com.igamepower.appmaster'),(54,85,'com.igamepower.appmaster'),(55,87,'com.igamepower.appmaster'),(56,88,'com.igamepower.appmaster'),(57,89,'com.smart.taskbar1'),(58,92,'com.smart.taskbar1'),(59,95,'com.smart.taskbar1'),(60,96,'com.smart.taskbar1'),(61,97,'com.smart.taskbar1'),(62,99,'com.smart.taskbar1'),(63,100,'com.smart.taskbar1'),(64,104,'com.smart.taskbar1'),(65,106,'com.smart.taskbar1'),(66,107,'com.smart.taskbar1'),(67,108,'com.smart.taskbar1'),(68,109,'com.smart.taskbar1'),(69,111,'com.smart.taskbar1'),(70,112,'com.smart.taskbar1'),(71,118,'com.smart.taskbar1'),(72,121,'com.smart.taskbar1'),(73,123,'com.smart.taskbar1'),(74,124,'com.smart.taskbar1'),(75,126,'com.android.settings'),(76,129,'com.smart.taskbar1'),(77,131,'com.smart.taskbar1'),(78,132,'com.smart.taskbar1'),(79,133,'com.smart.taskbar1'),(80,134,'com.smart.taskbar1'),(81,137,'com.smart.taskbar1'),(82,150,'com.smart.taskbar1'),(83,152,'com.android.settings'),(84,153,'com.smart.taskbar1'),(85,157,'(.*)'),(86,158,'com.smart.taskbar1');
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
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,1,0),(3,3,0),(4,7,0),(5,13,0),(6,15,0),(7,16,0),(8,19,0),(9,28,0),(10,31,0),(11,30,0),(12,32,0),(13,33,0),(14,34,0),(15,36,0),(16,39,0),(17,40,0),(18,42,0),(19,43,0),(20,44,0),(21,45,0),(22,46,0),(23,46,0),(24,47,0),(25,48,0),(26,48,0),(27,49,0),(28,49,0),(29,50,0),(30,50,0),(31,51,0),(32,51,0),(33,52,0),(34,52,0),(35,53,0),(36,53,0),(37,54,0),(38,54,0),(39,55,0),(40,55,0),(41,56,0),(42,56,0),(43,57,0),(44,57,0),(45,58,0),(46,58,0),(47,59,0),(48,59,0),(49,60,0),(50,60,0),(51,61,0),(52,61,0),(53,67,0),(54,67,0),(55,82,0),(56,82,0),(57,86,0),(58,86,0),(59,87,0),(60,87,0),(61,45,0),(62,45,0),(63,90,0),(64,40,0),(65,91,0),(66,92,0),(67,93,0),(68,94,0),(69,95,0),(70,90,0),(71,40,0),(72,91,0),(73,92,0),(74,93,0),(75,94,0),(76,95,0),(77,92,0),(78,90,0),(79,40,0),(80,91,0),(81,92,0),(82,93,0),(83,94,0),(84,95,0),(85,90,0),(86,40,0),(87,91,0),(88,92,0),(89,93,0),(90,94,0),(91,95,0),(92,90,0),(93,40,0),(94,91,0),(95,92,0),(96,93,0),(97,94,0),(98,95,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,0,0),(3,3,0,0),(4,4,1,0),(5,5,0,0),(6,6,0,0),(7,7,0,0),(8,8,0,0),(9,9,0,0),(10,10,1,0),(11,11,1,0),(12,11,1,0),(13,11,1,0),(14,11,1,0),(15,11,1,0),(16,11,1,0),(17,12,1,0),(18,13,0,0),(19,14,0,0),(20,15,1,0),(21,16,1,0),(22,17,0,0),(23,18,1,0),(24,19,0,0),(25,20,1,0),(26,20,1,0),(27,21,0,0),(28,20,1,0),(29,20,1,0),(30,22,0,0),(31,20,1,0),(32,23,0,0),(33,24,0,0),(34,25,0,0),(35,26,0,0),(36,27,1,0),(37,28,1,0),(38,27,1,0),(39,29,1,0),(40,30,1,0),(41,31,0,0),(42,32,1,0),(43,33,1,0),(44,34,1,0),(45,34,1,0),(46,35,1,0),(47,36,0,0),(48,37,0,0),(49,38,0,0),(50,39,0,0),(51,40,1,0),(52,41,0,0),(53,42,0,0),(54,43,0,0),(55,44,0,0),(56,45,1,0),(57,46,1,0),(58,47,0,0),(59,48,0,0),(60,49,0,0),(61,50,0,0),(62,51,0,0),(63,52,0,0),(64,53,0,0),(65,54,1,0),(66,55,1,0),(67,56,0,0),(68,57,1,0),(69,57,1,0),(70,58,0,0),(71,59,0,0),(72,60,0,0),(73,61,0,0),(74,62,1,0),(75,62,1,0),(76,62,1,0),(77,62,1,0),(78,63,0,0),(79,64,0,0),(80,65,0,0),(81,66,0,0),(82,67,1,0),(83,67,1,0),(84,68,0,0),(85,69,0,0),(86,70,1,0),(87,71,0,0),(88,72,0,0),(89,73,0,0),(90,74,1,0),(91,76,1,0),(92,77,0,0),(93,78,1,0),(94,79,1,0),(95,80,0,0),(96,81,0,0),(97,82,0,0),(98,84,1,0),(99,85,0,0),(100,86,0,0),(101,87,1,0),(102,87,1,0),(103,87,1,0),(104,88,0,0),(105,90,1,0),(106,91,0,0),(107,92,0,0),(108,93,0,0),(109,94,0,0),(110,95,1,0),(111,96,0,0),(112,97,0,0),(113,98,1,0),(114,99,1,0),(115,101,1,0),(116,102,1,0),(117,103,1,0),(118,104,0,0),(119,105,1,0),(120,106,1,0),(121,107,0,0),(122,108,1,0),(123,109,0,0),(124,110,0,0),(125,112,1,0),(126,113,0,0),(127,114,1,0),(128,115,1,0),(129,116,0,0),(130,117,1,0),(131,120,0,0),(132,121,0,0),(133,122,0,0),(134,124,0,0),(135,125,1,0),(136,126,1,0),(137,128,0,0),(138,129,1,0),(139,130,1,0),(140,131,1,0),(141,132,1,0),(142,132,1,0),(143,132,1,0),(144,132,1,0),(145,132,1,0),(146,132,1,0),(147,132,1,0),(148,132,1,0),(149,133,1,0),(150,134,0,0),(151,135,1,0),(152,136,0,0),(153,137,0,0),(154,139,1,0),(155,140,1,0),(156,141,1,0),(157,142,0,0),(158,143,0,0),(159,144,1,0),(160,145,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=684 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,9,12,2,NULL),(2,54,11,2,NULL),(3,39,1,2,NULL),(4,39,3,2,NULL),(5,39,7,2,NULL),(6,39,13,2,NULL),(7,39,16,2,NULL),(8,39,15,2,NULL),(9,39,30,2,NULL),(10,39,33,2,NULL),(11,39,40,2,NULL),(12,39,90,2,NULL),(13,39,91,2,NULL),(14,39,92,2,NULL),(15,39,93,2,NULL),(16,39,94,2,NULL),(17,39,95,2,NULL),(18,39,19,2,NULL),(19,39,28,2,NULL),(20,39,31,2,NULL),(21,39,32,2,NULL),(22,39,34,2,NULL),(23,39,36,2,NULL),(24,39,39,2,NULL),(25,39,42,2,NULL),(26,39,43,2,NULL),(27,39,44,2,NULL),(28,39,45,2,NULL),(29,39,46,2,NULL),(30,39,47,2,NULL),(31,39,48,2,NULL),(32,39,49,2,NULL),(33,39,50,2,NULL),(34,39,51,2,NULL),(35,39,52,2,NULL),(36,39,53,2,NULL),(37,39,54,2,NULL),(38,39,55,2,NULL),(39,39,56,2,NULL),(40,39,57,2,NULL),(41,39,58,2,NULL),(42,39,59,2,NULL),(43,39,60,2,NULL),(44,39,61,2,NULL),(45,39,67,2,NULL),(46,39,82,2,NULL),(47,39,86,2,NULL),(48,39,87,2,NULL),(49,50,9,2,NULL),(50,1,13,2,NULL),(51,91,13,2,NULL),(52,154,13,2,NULL),(53,135,13,2,NULL),(54,136,13,2,NULL),(55,122,13,2,NULL),(56,151,13,2,NULL),(57,90,13,2,NULL),(58,66,13,2,NULL),(59,68,13,2,NULL),(60,69,13,2,NULL),(61,57,13,2,NULL),(62,86,13,2,NULL),(63,8,5,2,NULL),(64,8,18,2,NULL),(65,8,35,2,NULL),(66,1,16,2,NULL),(67,91,16,2,NULL),(68,154,16,2,NULL),(69,135,16,2,NULL),(70,136,16,2,NULL),(71,122,16,2,NULL),(72,151,16,2,NULL),(73,90,16,2,NULL),(74,66,16,2,NULL),(75,68,16,2,NULL),(76,69,16,2,NULL),(77,57,16,2,NULL),(78,86,16,2,NULL),(79,137,23,2,NULL),(80,133,5,2,NULL),(81,133,18,2,NULL),(82,133,35,2,NULL),(83,1,15,2,NULL),(84,91,15,2,NULL),(85,154,15,2,NULL),(86,135,15,2,NULL),(87,136,15,2,NULL),(88,122,15,2,NULL),(89,151,15,2,NULL),(90,90,15,2,NULL),(91,66,15,2,NULL),(92,68,15,2,NULL),(93,69,15,2,NULL),(94,57,15,2,NULL),(95,86,15,2,NULL),(96,91,1,2,NULL),(97,154,1,2,NULL),(98,91,3,2,NULL),(99,154,3,2,NULL),(100,91,7,2,NULL),(101,154,7,2,NULL),(102,91,30,2,NULL),(103,154,30,2,NULL),(104,91,33,2,NULL),(105,154,33,2,NULL),(106,91,40,2,NULL),(107,154,40,2,NULL),(108,91,90,2,NULL),(109,154,90,2,NULL),(110,91,91,2,NULL),(111,154,91,2,NULL),(112,91,92,2,NULL),(113,154,92,2,NULL),(114,91,93,2,NULL),(115,154,93,2,NULL),(116,91,94,2,NULL),(117,154,94,2,NULL),(118,91,95,2,NULL),(119,154,95,2,NULL),(120,91,19,2,NULL),(121,154,19,2,NULL),(122,91,28,2,NULL),(123,154,28,2,NULL),(124,91,31,2,NULL),(125,154,31,2,NULL),(126,91,32,2,NULL),(127,154,32,2,NULL),(128,91,34,2,NULL),(129,154,34,2,NULL),(130,91,36,2,NULL),(131,154,36,2,NULL),(132,91,39,2,NULL),(133,154,39,2,NULL),(134,91,42,2,NULL),(135,154,42,2,NULL),(136,91,43,2,NULL),(137,154,43,2,NULL),(138,91,44,2,NULL),(139,154,44,2,NULL),(140,91,45,2,NULL),(141,154,45,2,NULL),(142,91,46,2,NULL),(143,154,46,2,NULL),(144,91,47,2,NULL),(145,154,47,2,NULL),(146,91,48,2,NULL),(147,154,48,2,NULL),(148,91,49,2,NULL),(149,154,49,2,NULL),(150,91,50,2,NULL),(151,154,50,2,NULL),(152,91,51,2,NULL),(153,154,51,2,NULL),(154,91,52,2,NULL),(155,154,52,2,NULL),(156,91,53,2,NULL),(157,154,53,2,NULL),(158,91,54,2,NULL),(159,154,54,2,NULL),(160,91,55,2,NULL),(161,154,55,2,NULL),(162,91,56,2,NULL),(163,154,56,2,NULL),(164,91,57,2,NULL),(165,154,57,2,NULL),(166,91,58,2,NULL),(167,154,58,2,NULL),(168,91,59,2,NULL),(169,154,59,2,NULL),(170,91,60,2,NULL),(171,154,60,2,NULL),(172,91,61,2,NULL),(173,154,61,2,NULL),(174,91,67,2,NULL),(175,154,67,2,NULL),(176,91,82,2,NULL),(177,154,82,2,NULL),(178,91,86,2,NULL),(179,154,86,2,NULL),(180,91,87,2,NULL),(181,154,87,2,NULL),(182,135,1,2,NULL),(183,136,1,2,NULL),(184,135,3,2,NULL),(185,136,3,2,NULL),(186,135,7,2,NULL),(187,136,7,2,NULL),(188,135,30,2,NULL),(189,136,30,2,NULL),(190,135,33,2,NULL),(191,136,33,2,NULL),(192,135,40,2,NULL),(193,136,40,2,NULL),(194,135,90,2,NULL),(195,136,90,2,NULL),(196,135,91,2,NULL),(197,136,91,2,NULL),(198,135,92,2,NULL),(199,136,92,2,NULL),(200,135,93,2,NULL),(201,136,93,2,NULL),(202,135,94,2,NULL),(203,136,94,2,NULL),(204,135,95,2,NULL),(205,136,95,2,NULL),(206,135,19,2,NULL),(207,136,19,2,NULL),(208,135,28,2,NULL),(209,136,28,2,NULL),(210,135,31,2,NULL),(211,136,31,2,NULL),(212,135,32,2,NULL),(213,136,32,2,NULL),(214,135,34,2,NULL),(215,136,34,2,NULL),(216,135,36,2,NULL),(217,136,36,2,NULL),(218,135,39,2,NULL),(219,136,39,2,NULL),(220,135,42,2,NULL),(221,136,42,2,NULL),(222,135,43,2,NULL),(223,136,43,2,NULL),(224,135,44,2,NULL),(225,136,44,2,NULL),(226,135,45,2,NULL),(227,136,45,2,NULL),(228,135,46,2,NULL),(229,136,46,2,NULL),(230,135,47,2,NULL),(231,136,47,2,NULL),(232,135,48,2,NULL),(233,136,48,2,NULL),(234,135,49,2,NULL),(235,136,49,2,NULL),(236,135,50,2,NULL),(237,136,50,2,NULL),(238,135,51,2,NULL),(239,136,51,2,NULL),(240,135,52,2,NULL),(241,136,52,2,NULL),(242,135,53,2,NULL),(243,136,53,2,NULL),(244,135,54,2,NULL),(245,136,54,2,NULL),(246,135,55,2,NULL),(247,136,55,2,NULL),(248,135,56,2,NULL),(249,136,56,2,NULL),(250,135,57,2,NULL),(251,136,57,2,NULL),(252,135,58,2,NULL),(253,136,58,2,NULL),(254,135,59,2,NULL),(255,136,59,2,NULL),(256,135,60,2,NULL),(257,136,60,2,NULL),(258,135,61,2,NULL),(259,136,61,2,NULL),(260,135,67,2,NULL),(261,136,67,2,NULL),(262,135,82,2,NULL),(263,136,82,2,NULL),(264,135,86,2,NULL),(265,136,86,2,NULL),(266,135,87,2,NULL),(267,136,87,2,NULL),(268,122,1,2,NULL),(269,151,1,2,NULL),(270,122,3,2,NULL),(271,151,3,2,NULL),(272,122,7,2,NULL),(273,151,7,2,NULL),(274,122,30,2,NULL),(275,151,30,2,NULL),(276,122,33,2,NULL),(277,151,33,2,NULL),(278,122,40,2,NULL),(279,151,40,2,NULL),(280,122,90,2,NULL),(281,151,90,2,NULL),(282,122,91,2,NULL),(283,151,91,2,NULL),(284,122,92,2,NULL),(285,151,92,2,NULL),(286,122,93,2,NULL),(287,151,93,2,NULL),(288,122,94,2,NULL),(289,151,94,2,NULL),(290,122,95,2,NULL),(291,151,95,2,NULL),(292,122,19,2,NULL),(293,151,19,2,NULL),(294,122,28,2,NULL),(295,151,28,2,NULL),(296,122,31,2,NULL),(297,151,31,2,NULL),(298,122,32,2,NULL),(299,151,32,2,NULL),(300,122,34,2,NULL),(301,151,34,2,NULL),(302,122,36,2,NULL),(303,151,36,2,NULL),(304,122,39,2,NULL),(305,151,39,2,NULL),(306,122,42,2,NULL),(307,151,42,2,NULL),(308,122,43,2,NULL),(309,151,43,2,NULL),(310,122,44,2,NULL),(311,151,44,2,NULL),(312,122,45,2,NULL),(313,151,45,2,NULL),(314,122,46,2,NULL),(315,151,46,2,NULL),(316,122,47,2,NULL),(317,151,47,2,NULL),(318,122,48,2,NULL),(319,151,48,2,NULL),(320,122,49,2,NULL),(321,151,49,2,NULL),(322,122,50,2,NULL),(323,151,50,2,NULL),(324,122,51,2,NULL),(325,151,51,2,NULL),(326,53,44,2,NULL),(327,122,52,2,NULL),(328,78,44,2,NULL),(329,151,52,2,NULL),(330,1,19,2,NULL),(331,122,53,2,NULL),(332,90,19,2,NULL),(333,151,53,2,NULL),(334,66,19,2,NULL),(335,122,54,2,NULL),(336,68,19,2,NULL),(337,151,54,2,NULL),(338,69,19,2,NULL),(339,122,55,2,NULL),(340,57,19,2,NULL),(341,151,55,2,NULL),(342,86,19,2,NULL),(343,122,56,2,NULL),(344,24,34,2,NULL),(345,151,56,2,NULL),(346,63,19,2,NULL),(347,122,57,2,NULL),(348,66,1,2,NULL),(349,151,57,2,NULL),(350,66,3,2,NULL),(351,122,58,2,NULL),(352,66,7,2,NULL),(353,151,58,2,NULL),(354,66,30,2,NULL),(355,122,59,2,NULL),(356,66,33,2,NULL),(357,151,59,2,NULL),(358,66,40,2,NULL),(359,122,60,2,NULL),(360,66,90,2,NULL),(361,151,60,2,NULL),(362,66,91,2,NULL),(363,122,61,2,NULL),(364,66,92,2,NULL),(365,151,61,2,NULL),(366,66,93,2,NULL),(367,122,67,2,NULL),(368,66,94,2,NULL),(369,151,67,2,NULL),(370,66,95,2,NULL),(371,122,82,2,NULL),(372,66,28,2,NULL),(373,151,82,2,NULL),(374,66,31,2,NULL),(375,122,86,2,NULL),(376,66,32,2,NULL),(377,151,86,2,NULL),(378,66,34,2,NULL),(379,122,87,2,NULL),(380,66,36,2,NULL),(381,151,87,2,NULL),(382,66,39,2,NULL),(383,129,38,2,NULL),(384,66,42,2,NULL),(385,90,1,2,NULL),(386,66,43,2,NULL),(387,90,3,2,NULL),(388,66,44,2,NULL),(389,90,7,2,NULL),(390,66,45,2,NULL),(391,90,30,2,NULL),(392,66,46,2,NULL),(393,90,33,2,NULL),(394,66,47,2,NULL),(395,90,40,2,NULL),(396,66,48,2,NULL),(397,90,90,2,NULL),(398,66,49,2,NULL),(399,90,91,2,NULL),(400,66,50,2,NULL),(401,90,92,2,NULL),(402,66,51,2,NULL),(403,90,93,2,NULL),(404,66,52,2,NULL),(405,90,94,2,NULL),(406,66,53,2,NULL),(407,90,95,2,NULL),(408,66,54,2,NULL),(409,90,28,2,NULL),(410,66,55,2,NULL),(411,90,31,2,NULL),(412,66,56,2,NULL),(413,90,32,2,NULL),(414,66,57,2,NULL),(415,90,34,2,NULL),(416,66,58,2,NULL),(417,90,36,2,NULL),(418,66,59,2,NULL),(419,90,39,2,NULL),(420,66,60,2,NULL),(421,90,42,2,NULL),(422,66,61,2,NULL),(423,90,43,2,NULL),(424,66,67,2,NULL),(425,90,44,2,NULL),(426,66,82,2,NULL),(427,90,45,2,NULL),(428,66,86,2,NULL),(429,90,46,2,NULL),(430,66,87,2,NULL),(431,90,47,2,NULL),(432,35,34,2,NULL),(433,90,48,2,NULL),(434,70,44,2,NULL),(435,90,49,2,NULL),(436,1,28,2,NULL),(437,90,50,2,NULL),(438,68,28,2,NULL),(439,90,51,2,NULL),(440,69,28,2,NULL),(441,90,52,2,NULL),(442,57,28,2,NULL),(443,90,53,2,NULL),(444,86,28,2,NULL),(445,90,54,2,NULL),(446,27,44,2,NULL),(447,90,55,2,NULL),(448,71,34,2,NULL),(449,90,56,2,NULL),(450,1,31,2,NULL),(451,90,57,2,NULL),(452,68,31,2,NULL),(453,90,58,2,NULL),(454,69,31,2,NULL),(455,90,59,2,NULL),(456,57,31,2,NULL),(457,90,60,2,NULL),(458,86,31,2,NULL),(459,90,61,2,NULL),(460,64,44,2,NULL),(461,90,67,2,NULL),(462,1,32,2,NULL),(463,90,82,2,NULL),(464,68,32,2,NULL),(465,90,86,2,NULL),(466,69,32,2,NULL),(467,90,87,2,NULL),(468,57,32,2,NULL),(469,132,38,2,NULL),(470,86,32,2,NULL),(471,1,30,2,NULL),(472,30,19,2,NULL),(473,68,30,2,NULL),(474,79,19,2,NULL),(475,69,30,2,NULL),(476,85,44,2,NULL),(477,57,30,2,NULL),(478,1,34,2,NULL),(479,86,30,2,NULL),(480,68,34,2,NULL),(481,1,33,2,NULL),(482,69,34,2,NULL),(483,68,33,2,NULL),(484,57,34,2,NULL),(485,69,33,2,NULL),(486,86,34,2,NULL),(487,57,33,2,NULL),(488,60,34,2,NULL),(489,86,33,2,NULL),(490,68,1,2,NULL),(491,150,38,2,NULL),(492,69,1,2,NULL),(493,1,40,2,NULL),(494,1,36,2,NULL),(495,68,40,2,NULL),(496,68,3,2,NULL),(497,69,40,2,NULL),(498,69,3,2,NULL),(499,57,40,2,NULL),(500,68,7,2,NULL),(501,86,40,2,NULL),(502,69,7,2,NULL),(503,1,90,2,NULL),(504,68,90,2,NULL),(505,69,90,2,NULL),(506,68,91,2,NULL),(507,57,90,2,NULL),(508,69,91,2,NULL),(509,86,90,2,NULL),(510,68,92,2,NULL),(511,1,91,2,NULL),(512,69,92,2,NULL),(513,57,91,2,NULL),(514,68,93,2,NULL),(515,86,91,2,NULL),(516,69,93,2,NULL),(517,1,92,2,NULL),(518,68,94,2,NULL),(519,57,92,2,NULL),(520,69,94,2,NULL),(521,86,92,2,NULL),(522,68,95,2,NULL),(523,1,93,2,NULL),(524,69,95,2,NULL),(525,57,93,2,NULL),(526,68,39,2,NULL),(527,86,93,2,NULL),(528,69,39,2,NULL),(529,1,94,2,NULL),(530,57,36,2,NULL),(531,57,94,2,NULL),(532,86,36,2,NULL),(533,86,94,2,NULL),(534,68,42,2,NULL),(535,1,95,2,NULL),(536,69,42,2,NULL),(537,57,95,2,NULL),(538,68,43,2,NULL),(539,86,95,2,NULL),(540,69,43,2,NULL),(541,68,44,2,NULL),(542,69,44,2,NULL),(543,68,45,2,NULL),(544,69,45,2,NULL),(545,68,46,2,NULL),(546,69,46,2,NULL),(547,68,47,2,NULL),(548,69,47,2,NULL),(549,68,48,2,NULL),(550,69,48,2,NULL),(551,68,49,2,NULL),(552,69,49,2,NULL),(553,68,50,2,NULL),(554,69,50,2,NULL),(555,68,51,2,NULL),(556,69,51,2,NULL),(557,68,52,2,NULL),(558,69,52,2,NULL),(559,68,53,2,NULL),(560,69,53,2,NULL),(561,68,54,2,NULL),(562,69,54,2,NULL),(563,68,55,2,NULL),(564,69,55,2,NULL),(565,68,56,2,NULL),(566,69,56,2,NULL),(567,68,57,2,NULL),(568,69,57,2,NULL),(569,68,58,2,NULL),(570,69,58,2,NULL),(571,68,59,2,NULL),(572,69,59,2,NULL),(573,68,60,2,NULL),(574,69,60,2,NULL),(575,68,61,2,NULL),(576,69,61,2,NULL),(577,68,67,2,NULL),(578,69,67,2,NULL),(579,68,82,2,NULL),(580,69,82,2,NULL),(581,68,86,2,NULL),(582,69,86,2,NULL),(583,68,87,2,NULL),(584,69,87,2,NULL),(585,47,44,2,NULL),(586,73,44,2,NULL),(587,1,39,2,NULL),(588,1,46,2,NULL),(589,57,39,2,NULL),(590,86,39,2,NULL),(591,57,46,2,NULL),(592,62,41,2,NULL),(593,86,46,2,NULL),(594,67,34,2,NULL),(595,1,47,2,NULL),(596,57,1,2,NULL),(597,86,1,2,NULL),(598,57,47,2,NULL),(599,57,3,2,NULL),(600,86,47,2,NULL),(601,86,3,2,NULL),(602,1,48,2,NULL),(603,57,7,2,NULL),(604,86,7,2,NULL),(605,57,48,2,NULL),(606,86,48,2,NULL),(607,57,42,2,NULL),(608,1,49,2,NULL),(609,86,42,2,NULL),(610,57,43,2,NULL),(611,57,49,2,NULL),(612,86,43,2,NULL),(613,57,44,2,NULL),(614,86,49,2,NULL),(615,86,44,2,NULL),(616,1,50,2,NULL),(617,57,45,2,NULL),(618,86,45,2,NULL),(619,57,50,2,NULL),(620,86,50,2,NULL),(621,57,51,2,NULL),(622,1,51,2,NULL),(623,86,51,2,NULL),(624,1,52,2,NULL),(625,57,52,2,NULL),(626,86,52,2,NULL),(627,57,53,2,NULL),(628,1,53,2,NULL),(629,86,53,2,NULL),(630,1,54,2,NULL),(631,57,54,2,NULL),(632,86,54,2,NULL),(633,86,54,2,NULL),(634,86,54,2,NULL),(635,57,55,2,NULL),(636,1,55,2,NULL),(637,86,55,2,NULL),(638,57,56,2,NULL),(639,1,56,2,NULL),(640,86,56,2,NULL),(641,57,57,2,NULL),(642,1,57,2,NULL),(643,86,57,2,NULL),(644,1,58,2,NULL),(645,57,58,2,NULL),(646,86,58,2,NULL),(647,57,59,2,NULL),(648,1,59,2,NULL),(649,86,59,2,NULL),(650,1,60,2,NULL),(651,57,60,2,NULL),(652,86,60,2,NULL),(653,57,61,2,NULL),(654,1,61,2,NULL),(655,86,61,2,NULL),(656,1,67,2,NULL),(657,57,67,2,NULL),(658,86,67,2,NULL),(659,1,82,2,NULL),(660,57,82,2,NULL),(661,86,82,2,NULL),(662,86,82,2,NULL),(663,57,86,2,NULL),(664,1,86,2,NULL),(665,86,86,2,NULL),(666,86,86,2,NULL),(667,57,87,2,NULL),(668,1,87,2,NULL),(669,86,87,2,NULL),(670,22,44,2,NULL),(671,1,42,2,NULL),(672,1,43,2,NULL),(673,1,44,2,NULL),(674,32,44,2,NULL),(675,33,44,2,NULL),(676,80,44,2,NULL),(677,1,45,2,NULL),(678,3,5,2,NULL),(679,3,18,2,NULL),(680,3,35,2,NULL),(681,1,3,2,NULL),(682,2,4,2,NULL),(683,1,7,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAuthorities`
--

LOCK TABLES `PAuthorities` WRITE;
/*!40000 ALTER TABLE `PAuthorities` DISABLE KEYS */;
INSERT INTO `PAuthorities` VALUES (1,1,'com.service.callLogs.LogsContentProvider'),(2,2,'com.service.callLogs.LogsContentProvider'),(3,3,'com.provider.Variable'),(4,4,'com.provider.Variable');
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (20,'android.permission.ACCESS_CACHE_FILESYSTEM'),(11,'android.permission.ACCESS_NETWORK_STATE'),(9,'android.permission.ACCESS_WIFI_STATE'),(27,'android.permission.ADD_SYSTEM_SERVICE'),(1,'android.permission.BLUETOOTH'),(2,'android.permission.BLUETOOTH_ADMIN'),(16,'android.permission.CALL_PHONE'),(36,'android.permission.CHANGE_NETWORK_STATE'),(7,'android.permission.CHANGE_WIFI_STATE'),(21,'android.permission.DELETE_CACHE_FILES'),(14,'android.permission.GET_TASKS'),(5,'android.permission.INTERNET'),(12,'android.permission.KILL_BACKGROUND_PROCESSES'),(33,'android.permission.MODIFY_AUDIO_SETTINGS'),(35,'android.permission.MODIFY_PHONE_STATE'),(25,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(29,'android.permission.PROCESS_OUTGOING_CALLS'),(32,'android.permission.READ_CONTACTS'),(8,'android.permission.READ_LOGS'),(26,'android.permission.READ_OWNER_DATA'),(3,'android.permission.READ_PHONE_STATE'),(34,'android.permission.READ_SMS'),(4,'android.permission.RECEIVE_BOOT_COMPLETED'),(31,'android.permission.RECEIVE_SMS'),(10,'android.permission.RESTART_PACKAGES'),(28,'android.permission.SEND_SMS'),(17,'android.permission.SYSTEM_ALERT_WINDOW'),(19,'android.permission.VIBRATE'),(15,'android.permission.WRITE_APN_SETTINGS'),(6,'android.permission.WRITE_EXTERNAL_STORAGE'),(22,'android.permission.WRITE_OWNER_DATA'),(23,'android.permission.WRITE_SECURE_SETTINGS'),(18,'android.permission.WRITE_SETTINGS'),(30,'android.permission.WRITE_SMS'),(13,'com.android.launcher.permission.INSTALL_SHORTCUT'),(24,'com.android.launcher.permission.UNINSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Providers`
--

LOCK TABLES `Providers` WRITE;
/*!40000 ALTER TABLE `Providers` DISABLE KEYS */;
INSERT INTO `Providers` VALUES (1,88,0,NULL,NULL),(2,88,0,NULL,NULL),(3,89,0,NULL,NULL),(4,89,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'http://market.android.com/search?q=opda',NULL,NULL,NULL),(2,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(4,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(6,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(7,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(8,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(9,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(10,NULL,NULL,'market://search?q=pname:com.adao.android.atm',NULL,NULL,NULL),(11,NULL,NULL,'market://search?q=pname:com.droiddream.android.afdvancedfm',NULL,NULL,NULL),(12,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(13,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(14,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(16,NULL,NULL,'file://',NULL,NULL,NULL),(17,NULL,NULL,'package:(.*)',NULL,NULL,NULL),(18,NULL,NULL,'file://',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'market://search?q=pub:\"Adao Team\"',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'market://details?id=com.droiddream.android.afdvancedfm',NULL,NULL,NULL),(23,NULL,NULL,'(.*)',NULL,NULL,NULL),(24,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(27,NULL,NULL,'file://',NULL,NULL,NULL),(28,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(29,NULL,NULL,'package:',NULL,NULL,NULL),(30,NULL,NULL,'package:(.*)',NULL,NULL,NULL),(31,NULL,NULL,'market://search?q=pname:\"com.smart.taskbar1.key\"',NULL,NULL,NULL),(32,NULL,NULL,'market://search?q=kiumiu',NULL,NULL,NULL),(33,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(34,NULL,NULL,'http://www.kiumiu.com/taskbar/index.html',NULL,NULL,NULL),(35,NULL,NULL,'http://kiumiu.wordpress.com/category/release-note/',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,119,33);
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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,2,3),(4,2,4),(5,2,5),(6,2,6),(7,2,7),(8,2,8),(9,2,9),(10,2,10),(11,2,11),(12,2,12),(13,3,3),(14,3,5),(15,3,7),(16,3,9),(17,4,1),(18,3,10),(19,4,2),(20,3,12),(21,4,3),(22,3,13),(23,4,5),(24,4,6),(25,4,7),(26,4,9),(27,4,10),(28,4,11),(29,5,3),(30,4,12),(31,5,4),(32,4,14),(33,5,5),(34,4,15),(35,5,6),(36,4,17),(37,5,8),(38,4,16),(39,5,10),(40,4,19),(41,5,11),(42,4,18),(43,5,13),(44,5,18),(45,5,21),(46,5,20),(47,5,23),(48,5,22),(49,5,25),(50,5,24),(51,5,26),(52,6,34),(53,6,35),(54,6,32),(55,6,33),(56,6,3),(57,6,5),(58,6,36),(59,6,7),(60,6,9),(61,6,11),(62,6,13),(63,6,14),(64,6,15),(65,6,16),(66,6,24),(67,6,27),(68,6,29),(69,6,28),(70,6,31),(71,6,30);
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
