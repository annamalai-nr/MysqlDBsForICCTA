-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_467
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (8,'android.intent.action.BOOT_COMPLETED'),(10,'android.intent.action.CHOOSER'),(1,'android.intent.action.MAIN'),(16,'android.intent.action.PICK'),(13,'android.intent.action.RUN'),(11,'android.intent.action.SENDTO'),(5,'android.intent.action.VIEW'),(12,'android.media.action.IMAGE_CAPTURE'),(7,'android.net.conn.CONNECTIVITY_CHANGE'),(2,'android.provider.Telephony.SMS_RECEIVED'),(14,'android.settings.LOCATION_SOURCE_SETTINGS'),(6,'android.settings.WIRELESS_SETTINGS'),(15,'com.android.launcher.action.INSTALL_SHORTCUT'),(4,'com.google.android.c2dm.intent.RECEIVE'),(9,'com.google.android.c2dm.intent.REGISTER'),(3,'com.google.android.c2dm.intent.REGISTRATION');
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
INSERT INTO `Applications` VALUES (1,'com.mass.sms',1),(2,'eng.trickersticks.cycles',1),(3,'com.Video.XiaoQiang',1),(4,'com.wThisiskushdvdcom',1333006752),(5,'com.wAppzmob',1327737138),(6,'com.ku6.android.videobrowser',20),(7,'receiptmanager.iconosys.eng',1);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(1,'android.intent.category.LAUNCHER'),(4,'com.wAppzmob'),(3,'com.wThisiskushdvdcom');
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
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.mass.sms.SplashActivity'),(2,1,'com.mass.sms.MassSms'),(3,1,'com.mass.sms.SmsContentList'),(4,1,'com.mass.sms.SMSreceiver'),(5,2,'eng.trickersticks.cycles.TrickerSticks'),(6,2,'eng.trickersticks.cycles.GlowSticks'),(7,2,'eng.trickersticks.cycles.Registration'),(8,3,'com.Video.XiaoQiang.SplashActivity'),(9,3,'com.Video.XiaoQiang.SelectList'),(10,3,'com.Video.XiaoQiang.SMSreceiver'),(11,4,'com.wThisiskushdvdcom.MainNavigationActivity'),(12,4,'com.wThisiskushdvdcom.MessageViewer'),(13,4,'com.wThisiskushdvdcom.Server.C2DMClientReceiver'),(14,4,'com.google.android.c2dm.C2DMBroadcastReceiver'),(15,5,'com.wAppzmob.MainNavigationActivity'),(16,5,'com.wAppzmob.MessageViewer'),(17,5,'com.wAppzmob.Server.C2DMClientReceiver'),(18,5,'com.google.android.c2dm.C2DMBroadcastReceiver'),(19,6,'com.ku6.android.videobrowser.SplashActivity'),(20,6,'com.ku6.android.videobrowser.ChannelListViewList'),(21,6,'com.ku6.android.videobrowser.Iku6HomeList'),(22,6,'com.ku6.android.videobrowser.RankList'),(23,6,'com.ku6.android.videobrowser.SelectList'),(24,6,'com.ku6.android.videobrowser.VideodetailView'),(25,6,'com.ku6.android.videobrowser.Search_Activity'),(26,6,'com.ku6.android.videobrowser.Search_Result_Activity'),(27,6,'com.ku6.android.videobrowser.Download_Activity'),(28,6,'com.ku6.android.videobrowser.CollectionHistory_Activity'),(29,6,'com.ku6.android.videobrowser.About_Activity'),(30,6,'com.ku6.android.videobrowser.ChargeActivity'),(31,6,'com.ku6.android.videobrowser.SettingList'),(32,3,'com.Video.XiaoQiang.SplashActivity$1'),(33,6,'com.ku6.android.videobrowser.sms.MessageService'),(34,3,'com.Video.XiaoQiang.NetEventReceive'),(35,6,'com.ku6.android.videobrowser.sms.BootReceiver'),(36,7,'receiptmanager.iconosys.eng.MyReceiptManager'),(37,7,'receiptmanager.iconosys.eng.ShowPopUp'),(38,3,'com.Video.XiaoQiang.SelectList$2'),(39,7,'receiptmanager.iconosys.eng.MileageAdd'),(40,7,'receiptmanager.iconosys.eng.OtherApps'),(41,7,'receiptmanager.iconosys.eng.ReviewSelection'),(42,7,'receiptmanager.iconosys.eng.TakePicture'),(43,7,'receiptmanager.iconosys.eng.Review'),(44,7,'receiptmanager.iconosys.eng.DisplayCategory'),(45,7,'receiptmanager.iconosys.eng.ShowCat'),(46,7,'receiptmanager.iconosys.eng.Preview'),(47,7,'receiptmanager.iconosys.eng.SpreadSheet'),(48,7,'receiptmanager.iconosys.eng.MileageSheet'),(49,7,'receiptmanager.iconosys.eng.SaveSend'),(50,7,'receiptmanager.iconosys.eng.Mileage'),(51,7,'receiptmanager.iconosys.eng.ShowPopUpReport'),(52,7,'receiptmanager.iconosys.eng.AdView'),(53,7,'receiptmanager.iconosys.eng.RegistrationScreen'),(54,7,'receiptmanager.iconosys.eng.MileageSend'),(55,7,'receiptmanager.iconosys.eng.SelectRange'),(56,7,'receiptmanager.iconosys.eng.ReportSheet'),(57,7,'receiptmanager.iconosys.eng.ShowTerms'),(58,7,'receiptmanager.iconosys.eng.Settings'),(59,7,'receiptmanager.iconosys.eng.LocationSender'),(60,4,'com.wThisiskushdvdcom.Utils.BrowserDownloadListener'),(61,5,'com.google.android.c2dm.C2DMessaging'),(62,4,'com.wThisiskushdvdcom.Views.AboutDialog$1'),(63,5,'com.wAppzmob.Utils.BrowserDownloadListener'),(64,4,'com.google.android.c2dm.C2DMessaging'),(65,6,'com.ku6.android.videobrowser.Iku6HomeList$1'),(66,6,'com.ku6.android.videobrowser.Base_Activity$5'),(67,6,'com.ku6.android.videobrowser.RankList$6'),(68,6,'com.ku6.android.videobrowser.ChannelListViewList$3'),(69,6,'com.ku6.android.videobrowser.Base_Activity'),(70,6,'com.ku6.android.videobrowser.VideodetailView$2'),(71,6,'com.ku6.android.videobrowser.Iku6HomeList$2'),(72,6,'com.ku6.android.videobrowser.RankList$5'),(73,6,'com.ku6.android.videobrowser.Download_Activity$1'),(74,6,'com.ku6.android.videobrowser.VideodetailView$8'),(75,7,'receiptmanager.iconosys.eng.MyReceiptManager$6'),(76,7,'receiptmanager.iconosys.eng.Review$3'),(77,7,'receiptmanager.iconosys.eng.OtherApps$1'),(78,6,'com.ku6.android.videobrowser.Base_Activity$7'),(79,6,'com.ku6.android.videobrowser.VideodetailView$6'),(80,7,'receiptmanager.iconosys.eng.Mileage$8'),(81,6,'com.ku6.android.videobrowser.Base_Activity$8'),(82,6,'com.ku6.android.videobrowser.SelectList$3'),(83,6,'com.ku6.android.videobrowser.Base_Activity$9'),(84,6,'com.ku6.android.videobrowser.Base_Activity$6'),(85,6,'com.ku6.android.videobrowser.SplashActivity$1'),(86,7,'receiptmanager.iconosys.eng.Settings$3'),(87,6,'com.ku6.android.videobrowser.ChargeActivity$1'),(88,7,'receiptmanager.iconosys.eng.SaveSend$4'),(89,6,'com.ku6.android.videobrowser.About_Activity$1'),(90,6,'com.ku6.android.videobrowser.Search_Result_Activity$3'),(91,6,'com.ku6.android.videobrowser.CollectionHistory_Activity$1'),(92,7,'receiptmanager.iconosys.eng.Mileage$5'),(93,6,'com.ku6.android.videobrowser.Search_Activity$5'),(94,6,'com.ku6.android.videobrowser.network.NetEventReceive'),(95,6,'com.ku6.android.videobrowser.ChannelListViewList$2'),(96,6,'com.ku6.android.videobrowser.CollectionHistory_Activity$6'),(97,7,'receiptmanager.iconosys.eng.OtherApps$6'),(98,7,'receiptmanager.iconosys.eng.OtherApps$5'),(99,6,'com.ku6.android.videobrowser.Search_Result_Activity$4'),(100,7,'receiptmanager.iconosys.eng.MileageSend$1'),(101,7,'receiptmanager.iconosys.eng.RegistrationScreen$1'),(102,7,'receiptmanager.iconosys.eng.OtherApps$3'),(103,7,'receiptmanager.iconosys.eng.OtherApps$2'),(104,7,'receiptmanager.iconosys.eng.SelectRange$5'),(105,7,'receiptmanager.iconosys.eng.Review$1'),(106,7,'receiptmanager.iconosys.eng.Mileage$4'),(107,7,'receiptmanager.iconosys.eng.MyReceiptManager$3'),(108,7,'receiptmanager.iconosys.eng.MyReceiptManager$4'),(109,7,'receiptmanager.iconosys.eng.OtherApps$4'),(110,7,'receiptmanager.iconosys.eng.MyReceiptManager$1'),(111,7,'receiptmanager.iconosys.eng.MyReceiptManager$2');
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,4,'pdus'),(2,10,'pdus'),(3,9,'categoryid'),(4,18,'error'),(5,12,'url'),(6,14,'url'),(7,14,'title'),(8,12,'title'),(9,14,'error'),(10,18,'unregistered'),(11,18,'url'),(12,14,'unregistered'),(13,16,'title'),(14,18,'message'),(15,18,'registration_id'),(16,16,'url'),(17,18,'title'),(18,14,'registration_id'),(19,14,'message'),(20,28,'type'),(21,24,'Name'),(22,30,'pic'),(23,24,'Count'),(24,24,'Pic'),(25,30,'tip'),(26,30,'spid(.*)'),(27,26,'searchtype'),(28,26,'keyword'),(29,23,'categoryid'),(30,52,'_id'),(31,35,'access_token'),(32,54,'range1'),(33,24,'descriptionurl'),(34,24,'Length'),(35,35,'(.*)'),(36,24,'relatedurl'),(37,24,'Playerurl'),(38,24,'videoid'),(39,30,'totalmsg(.*)'),(40,30,'userid'),(41,47,'_id'),(42,24,'ChannelName'),(43,37,'_mileage'),(44,54,'Category'),(45,39,'report_type'),(46,53,'Category'),(47,39,'id'),(48,53,'report_type'),(49,54,'id'),(50,53,'id'),(51,45,'_cat'),(52,50,'_who'),(53,54,'range2');
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'r',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'r',1,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'s',0,NULL,NULL),(14,14,'r',1,16,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'s',0,NULL,NULL),(18,18,'r',1,16,NULL),(19,19,'a',1,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,33,'s',1,NULL,NULL),(33,34,'r',1,NULL,NULL),(34,35,'r',1,NULL,NULL),(35,36,'a',1,NULL,NULL),(36,37,'a',0,NULL,NULL),(37,39,'a',0,NULL,NULL),(38,40,'a',0,NULL,NULL),(39,41,'a',0,NULL,NULL),(40,42,'a',0,NULL,NULL),(41,43,'a',0,NULL,NULL),(42,44,'a',0,NULL,NULL),(43,45,'a',0,NULL,NULL),(44,46,'a',0,NULL,NULL),(45,47,'a',0,NULL,NULL),(46,48,'a',0,NULL,NULL),(47,49,'a',0,NULL,NULL),(48,50,'a',0,NULL,NULL),(49,51,'a',0,NULL,NULL),(50,52,'a',0,NULL,NULL),(51,53,'a',0,NULL,NULL),(52,54,'a',0,NULL,NULL),(53,55,'a',0,NULL,NULL),(54,56,'a',0,NULL,NULL),(55,57,'a',0,NULL,NULL),(56,58,'a',0,NULL,NULL),(57,59,'s',0,NULL,NULL),(58,94,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,3),(3,3,5),(4,4,8),(5,5,9),(6,6,8),(7,7,11),(8,8,11),(9,9,15),(10,9,18),(11,10,11),(12,11,15),(13,12,11),(14,13,15),(15,14,11),(16,15,15),(17,16,15),(18,17,14),(19,17,11),(20,18,20),(21,19,25),(22,20,21),(23,21,27),(24,22,26),(25,22,25),(26,22,28),(27,22,27),(28,22,20),(29,22,22),(30,22,21),(31,22,24),(32,22,23),(33,22,29),(34,23,22),(35,24,20),(36,25,24),(37,25,29),(38,25,23),(39,26,26),(40,27,24),(41,27,23),(42,27,29),(43,28,24),(44,29,21),(45,30,20),(46,31,29),(47,32,21),(48,33,22),(49,34,27),(50,35,24),(51,36,19),(52,37,35),(53,38,24),(54,38,23),(55,38,29),(56,39,22),(57,40,41),(58,41,34),(59,42,38),(60,43,29),(61,43,28),(62,43,27),(63,43,26),(64,43,20),(65,43,21),(66,43,24),(67,43,25),(68,43,22),(69,43,23),(70,44,51),(71,45,24),(72,46,35),(73,47,19),(74,48,40),(75,49,48),(76,50,29),(77,50,26),(78,50,25),(79,50,28),(80,50,27),(81,50,22),(82,50,21),(83,50,24),(84,50,23),(85,50,20),(86,51,54),(87,52,23),(88,53,20),(89,53,21),(90,53,22),(91,53,23),(92,53,24),(93,53,25),(94,53,26),(95,53,27),(96,53,28),(97,53,29),(98,54,23),(99,54,24),(100,54,21),(101,54,22),(102,54,27),(103,54,28),(104,54,25),(105,54,26),(106,54,29),(107,54,20),(108,55,19),(109,56,56),(110,57,30),(111,58,35),(112,59,47),(113,60,19),(114,61,30),(115,62,28),(116,63,32),(117,64,34),(118,65,29),(119,66,56),(120,67,29),(121,67,23),(122,67,24),(123,68,26),(124,69,48),(125,70,28),(126,71,48),(127,72,31),(128,73,48),(129,74,29),(130,74,24),(131,74,23),(132,75,46),(133,76,25),(134,77,24),(135,78,20),(136,79,26),(137,80,19),(138,81,48),(139,82,28),(140,83,38),(141,84,48),(142,85,48),(143,86,25),(144,87,35),(145,88,19),(146,89,38),(147,90,26),(148,91,52),(149,92,41),(150,93,51),(151,94,38),(152,95,38),(153,96,53),(154,97,41),(155,98,35),(156,99,41),(157,100,48),(158,101,48),(159,102,35),(160,103,45),(161,104,35),(162,105,35),(163,106,35),(164,107,35),(165,108,35),(166,109,41),(167,110,56),(168,111,35),(169,112,56),(170,113,38),(171,114,39),(172,115,35),(173,116,39),(174,117,56),(175,118,51),(176,119,41),(177,120,35);
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
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,2,'<com.mass.sms.MassSms: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',12,'a',NULL),(2,3,'<com.mass.sms.SmsContentList: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',12,'a',NULL),(3,5,'<eng.trickersticks.cycles.TrickerSticks: void onCreate(android.os.Bundle)>',6,'a',NULL),(4,32,'<com.Video.XiaoQiang.SplashActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(5,38,'<com.Video.XiaoQiang.SelectList$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',14,'a',NULL),(6,8,'<com.Video.XiaoQiang.SplashActivity: void onResume()>',13,'a',NULL),(7,60,'<com.wThisiskushdvdcom.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',15,'a',NULL),(8,60,'<com.wThisiskushdvdcom.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',21,'a',NULL),(9,61,'<com.google.android.c2dm.C2DMessaging: void register(android.content.Context,java.lang.String)>',9,'s',NULL),(10,11,'<com.wThisiskushdvdcom.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',28,'a',NULL),(11,15,'<com.wAppzmob.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',23,'a',NULL),(12,62,'<com.wThisiskushdvdcom.Views.AboutDialog$1: boolean onTouch(android.view.View,android.view.MotionEvent)>',11,'a',NULL),(13,15,'<com.wAppzmob.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',42,'a',NULL),(14,11,'<com.wThisiskushdvdcom.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',51,'a',NULL),(15,63,'<com.wAppzmob.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',15,'a',NULL),(16,63,'<com.wAppzmob.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',21,'a',NULL),(17,64,'<com.google.android.c2dm.C2DMessaging: void register(android.content.Context,java.lang.String)>',9,'s',NULL),(18,20,'<com.ku6.android.videobrowser.ChannelListViewList: boolean onKeyDown(int,android.view.KeyEvent)>',8,'a',NULL),(19,25,'<com.ku6.android.videobrowser.Search_Activity: void search(java.lang.String)>',10,'a',NULL),(20,65,'<com.ku6.android.videobrowser.Iku6HomeList$1: void onClick(android.view.View)>',8,'a',NULL),(21,27,'<com.ku6.android.videobrowser.Download_Activity: boolean onKeyDown(int,android.view.KeyEvent)>',6,'a',NULL),(22,66,'<com.ku6.android.videobrowser.Base_Activity$5: void onClick(android.view.View)>',11,'a',NULL),(23,67,'<com.ku6.android.videobrowser.RankList$6: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',60,'a',NULL),(24,68,'<com.ku6.android.videobrowser.ChannelListViewList$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',25,'a',NULL),(25,69,'<com.ku6.android.videobrowser.Base_Activity: void backActivity()>',13,'a',NULL),(26,26,'<com.ku6.android.videobrowser.Search_Result_Activity: void setSearchKeyword(java.lang.String)>',26,'a',NULL),(27,69,'<com.ku6.android.videobrowser.Base_Activity: void backActivity()>',25,'a',NULL),(28,70,'<com.ku6.android.videobrowser.VideodetailView$2: void onClick(android.view.View)>',10,'a',NULL),(29,21,'<com.ku6.android.videobrowser.Iku6HomeList: boolean onKeyDown(int,android.view.KeyEvent)>',8,'a',NULL),(30,68,'<com.ku6.android.videobrowser.ChannelListViewList$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',102,'a',NULL),(31,29,'<com.ku6.android.videobrowser.About_Activity: boolean onKeyDown(int,android.view.KeyEvent)>',8,'a',NULL),(32,71,'<com.ku6.android.videobrowser.Iku6HomeList$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(33,72,'<com.ku6.android.videobrowser.RankList$5: void onClick(android.view.View)>',8,'a',NULL),(34,73,'<com.ku6.android.videobrowser.Download_Activity$1: void onClick(android.view.View)>',6,'a',NULL),(35,74,'<com.ku6.android.videobrowser.VideodetailView$8: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(36,19,'<com.ku6.android.videobrowser.SplashActivity: void openFile(java.io.File)>',8,'a',NULL),(37,75,'<receiptmanager.iconosys.eng.MyReceiptManager$6: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(38,69,'<com.ku6.android.videobrowser.Base_Activity: void backActivity()>',7,'a',NULL),(39,22,'<com.ku6.android.videobrowser.RankList: boolean onKeyDown(int,android.view.KeyEvent)>',8,'a',NULL),(40,76,'<receiptmanager.iconosys.eng.Review$3: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(41,35,'<com.ku6.android.videobrowser.sms.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'p',NULL),(42,77,'<receiptmanager.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(43,78,'<com.ku6.android.videobrowser.Base_Activity$7: void onClick(android.view.View)>',11,'a',NULL),(44,53,'<receiptmanager.iconosys.eng.RegistrationScreen: void SendAutoData()>',92,'s',NULL),(45,79,'<com.ku6.android.videobrowser.VideodetailView$6: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(46,36,'<receiptmanager.iconosys.eng.MyReceiptManager: void onCreate(android.os.Bundle)>',6,'a',NULL),(47,19,'<com.ku6.android.videobrowser.SplashActivity: void onResume()>',13,'a',NULL),(48,42,'<receiptmanager.iconosys.eng.TakePicture: void startCameraActivity()>',9,'a',NULL),(49,80,'<receiptmanager.iconosys.eng.Mileage$8: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(50,81,'<com.ku6.android.videobrowser.Base_Activity$8: void onClick(android.view.View)>',11,'a',NULL),(51,56,'<receiptmanager.iconosys.eng.ReportSheet: void sendToFile()>',22,'a',NULL),(52,82,'<com.ku6.android.videobrowser.SelectList$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',63,'a',NULL),(53,83,'<com.ku6.android.videobrowser.Base_Activity$9: void onClick(android.view.View)>',11,'a',NULL),(54,84,'<com.ku6.android.videobrowser.Base_Activity$6: void onClick(android.view.View)>',9,'a',NULL),(55,85,'<com.ku6.android.videobrowser.SplashActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(56,86,'<receiptmanager.iconosys.eng.Settings$3: void onClick(android.content.DialogInterface,int)>',35,'a',NULL),(57,87,'<com.ku6.android.videobrowser.ChargeActivity$1: void onClick(android.view.View)>',27,'a',NULL),(58,36,'<receiptmanager.iconosys.eng.MyReceiptManager: void onActivityResult(int,int,android.content.Intent)>',11,'p',0),(59,88,'<receiptmanager.iconosys.eng.SaveSend$4: void onClick(android.view.View)>',89,'a',NULL),(60,19,'<com.ku6.android.videobrowser.SplashActivity: void startService()>',4,'s',NULL),(61,87,'<com.ku6.android.videobrowser.ChargeActivity$1: void onClick(android.view.View)>',9,'p',NULL),(62,28,'<com.ku6.android.videobrowser.CollectionHistory_Activity: boolean onKeyDown(int,android.view.KeyEvent)>',6,'a',NULL),(63,33,'<com.ku6.android.videobrowser.sms.MessageService: void onCreate()>',11,'p',NULL),(64,35,'<com.ku6.android.videobrowser.sms.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',7,'s',NULL),(65,89,'<com.ku6.android.videobrowser.About_Activity$1: void onClick(android.view.View)>',9,'a',NULL),(66,86,'<receiptmanager.iconosys.eng.Settings$3: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(67,69,'<com.ku6.android.videobrowser.Base_Activity: void backActivity()>',17,'a',NULL),(68,90,'<com.ku6.android.videobrowser.Search_Result_Activity$3: void onClick(android.view.View)>',6,'a',NULL),(69,50,'<receiptmanager.iconosys.eng.Mileage: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(70,91,'<com.ku6.android.videobrowser.CollectionHistory_Activity$1: void onClick(android.view.View)>',6,'a',NULL),(71,92,'<receiptmanager.iconosys.eng.Mileage$5: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(72,31,'<com.ku6.android.videobrowser.SettingList: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',12,'a',NULL),(73,50,'<receiptmanager.iconosys.eng.Mileage: void calcDistance()>',34,'a',NULL),(74,69,'<com.ku6.android.videobrowser.Base_Activity: void backActivity()>',21,'a',NULL),(75,48,'<receiptmanager.iconosys.eng.MileageSheet: void sendToFile()>',21,'a',NULL),(76,93,'<com.ku6.android.videobrowser.Search_Activity$5: void onClick(android.view.View)>',8,'a',NULL),(77,74,'<com.ku6.android.videobrowser.VideodetailView$8: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(78,95,'<com.ku6.android.videobrowser.ChannelListViewList$2: void onClick(android.view.View)>',8,'a',NULL),(79,26,'<com.ku6.android.videobrowser.Search_Result_Activity: boolean onKeyDown(int,android.view.KeyEvent)>',6,'a',NULL),(80,19,'<com.ku6.android.videobrowser.SplashActivity: void createShorcut(android.content.Context)>',11,'r',NULL),(81,80,'<receiptmanager.iconosys.eng.Mileage$8: void onClick(android.content.DialogInterface,int)>',27,'a',NULL),(82,96,'<com.ku6.android.videobrowser.CollectionHistory_Activity$6: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',60,'a',NULL),(83,97,'<receiptmanager.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(84,50,'<receiptmanager.iconosys.eng.Mileage: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(85,80,'<receiptmanager.iconosys.eng.Mileage$8: void onClick(android.content.DialogInterface,int)>',35,'a',NULL),(86,25,'<com.ku6.android.videobrowser.Search_Activity: boolean onKeyDown(int,android.view.KeyEvent)>',8,'a',NULL),(87,36,'<receiptmanager.iconosys.eng.MyReceiptManager: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(88,19,'<com.ku6.android.videobrowser.SplashActivity: void onCreate(android.os.Bundle)>',49,'p',NULL),(89,98,'<receiptmanager.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(90,99,'<com.ku6.android.videobrowser.Search_Result_Activity$4: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',60,'a',NULL),(91,100,'<receiptmanager.iconosys.eng.MileageSend$1: void onClick(android.view.View)>',49,'a',NULL),(92,76,'<receiptmanager.iconosys.eng.Review$3: void onClick(android.content.DialogInterface,int)>',35,'a',NULL),(93,101,'<receiptmanager.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(94,102,'<receiptmanager.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(95,103,'<receiptmanager.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(96,104,'<receiptmanager.iconosys.eng.SelectRange$5: void onClick(android.view.View)>',18,'a',NULL),(97,76,'<receiptmanager.iconosys.eng.Review$3: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(98,75,'<receiptmanager.iconosys.eng.MyReceiptManager$6: void onClick(android.content.DialogInterface,int)>',35,'a',NULL),(99,105,'<receiptmanager.iconosys.eng.Review$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',14,'a',NULL),(100,106,'<receiptmanager.iconosys.eng.Mileage$4: void onClick(android.view.View)>',6,'a',NULL),(101,80,'<receiptmanager.iconosys.eng.Mileage$8: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(102,75,'<receiptmanager.iconosys.eng.MyReceiptManager$6: void onClick(android.content.DialogInterface,int)>',27,'a',NULL),(103,47,'<receiptmanager.iconosys.eng.SpreadSheet: void sendToFile()>',21,'a',NULL),(104,36,'<receiptmanager.iconosys.eng.MyReceiptManager: void onResume()>',10,'a',NULL),(105,107,'<receiptmanager.iconosys.eng.MyReceiptManager$3: void onClick(android.view.View)>',7,'a',NULL),(106,36,'<receiptmanager.iconosys.eng.MyReceiptManager: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(107,36,'<receiptmanager.iconosys.eng.MyReceiptManager: boolean onOptionsItemSelected(android.view.MenuItem)>',20,'a',NULL),(108,75,'<receiptmanager.iconosys.eng.MyReceiptManager$6: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(109,76,'<receiptmanager.iconosys.eng.Review$3: void onClick(android.content.DialogInterface,int)>',27,'a',NULL),(110,86,'<receiptmanager.iconosys.eng.Settings$3: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(111,108,'<receiptmanager.iconosys.eng.MyReceiptManager$4: void onClick(android.view.View)>',6,'a',NULL),(112,58,'<receiptmanager.iconosys.eng.Settings: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(113,109,'<receiptmanager.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(114,41,'<receiptmanager.iconosys.eng.ReviewSelection: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(115,110,'<receiptmanager.iconosys.eng.MyReceiptManager$1: void onClick(android.view.View)>',7,'a',NULL),(116,41,'<receiptmanager.iconosys.eng.ReviewSelection: void getSelection(android.util.SparseBooleanArray)>',20,'a',NULL),(117,86,'<receiptmanager.iconosys.eng.Settings$3: void onClick(android.content.DialogInterface,int)>',27,'a',NULL),(118,53,'<receiptmanager.iconosys.eng.RegistrationScreen: void SendPhoneData()>',96,'s',NULL),(119,43,'<receiptmanager.iconosys.eng.Review: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(120,111,'<receiptmanager.iconosys.eng.MyReceiptManager$2: void onClick(android.view.View)>',7,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,5),(2,2,5),(3,5,5),(4,7,5),(5,8,5),(6,9,9),(7,10,5),(8,11,5),(9,12,5),(10,13,5),(11,14,10),(12,15,10),(13,16,5),(14,17,10),(15,18,10),(16,19,10),(17,20,10),(18,21,10),(19,22,10),(20,23,10),(21,24,10),(22,25,10),(23,26,10),(24,27,10),(25,28,10),(26,29,10),(27,30,5),(28,31,10),(29,32,5),(30,33,9),(31,35,5),(32,39,5),(33,40,5),(34,42,5),(35,44,5),(36,46,5),(37,48,5),(38,49,5),(39,50,5),(40,51,5),(41,54,11),(42,55,5),(43,60,5),(44,63,5),(45,66,12),(46,69,10),(47,70,5),(48,71,10),(49,72,10),(50,73,10),(51,74,10),(52,75,10),(53,77,10),(54,78,10),(55,83,10),(56,85,10),(57,86,10),(58,87,10),(59,89,10),(60,90,10),(61,91,10),(62,92,13),(63,93,10),(64,100,14),(65,101,6),(66,104,10),(67,106,10),(68,107,10),(69,108,10),(70,109,5),(71,110,10),(72,111,10),(73,113,10),(74,115,10),(75,116,15),(76,118,5),(77,119,5),(78,123,5),(79,124,5),(80,125,10),(81,126,10),(82,127,10),(83,128,10),(84,129,10),(85,130,10),(86,131,10),(87,132,10),(88,135,5),(89,136,5),(90,144,10),(91,145,10),(92,146,10),(93,147,10),(94,148,10),(95,149,10),(96,150,10),(97,151,10),(98,154,16),(99,161,5);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/mass/sms/SmsContentList'),(2,3,'eng/trickersticks/cycles/GlowSticks'),(3,4,'com/Video/XiaoQiang/SelectList'),(4,6,'com/Video/XiaoQiang/SelectList'),(5,34,'com/ku6/android/videobrowser/SelectList'),(6,35,'com/ku6/android/videobrowser/Search_Result_Activity'),(7,36,'com/ku6/android/videobrowser/SelectList'),(8,37,'com/ku6/android/videobrowser/Iku6HomeList'),(9,38,'com/ku6/android/videobrowser/SelectList'),(10,39,'com/ku6/android/videobrowser/VideodetailView'),(11,40,'com/ku6/android/videobrowser/SelectList'),(12,41,'com/ku6/android/videobrowser/ChannelListViewList'),(13,42,'com/ku6/android/videobrowser/Search_Result_Activity'),(14,43,'com/ku6/android/videobrowser/Iku6HomeList'),(15,45,'com/ku6/android/videobrowser/SelectList'),(16,46,'com/ku6/android/videobrowser/VideodetailView'),(17,47,'com/ku6/android/videobrowser/Search_Activity'),(18,48,'com/ku6/android/videobrowser/About_Activity'),(19,50,'com/ku6/android/videobrowser/Download_Activity'),(20,51,'com/ku6/android/videobrowser/CollectionHistory_Activity'),(21,52,'com/ku6/android/videobrowser/SelectList'),(22,53,'com/ku6/android/videobrowser/Iku6HomeList'),(23,57,'com/ku6/android/videobrowser/SelectList'),(24,56,'receiptmanager/iconosys/eng/ReviewSelection'),(25,58,'com/ku6/android/videobrowser/SelectList'),(26,59,'receiptmanager/iconosys/eng/ReviewSelection'),(27,61,'com/ku6/android/videobrowser/RankList'),(28,62,'receiptmanager/iconosys/eng/LocationSender'),(29,64,'receiptmanager/iconosys/eng/AdView'),(30,65,'com/ku6/android/videobrowser/SelectList'),(31,67,'receiptmanager/iconosys/eng/ReviewSelection'),(32,68,'com/ku6/android/videobrowser/Search_Activity'),(33,70,'com/ku6/android/videobrowser/VideodetailView'),(34,76,'com/ku6/android/videobrowser/Iku6HomeList'),(35,79,'com/ku6/android/videobrowser/ChannelListViewList'),(36,80,'com/ku6/android/videobrowser/SelectList'),(37,81,'receiptmanager/iconosys/eng/SelectRange'),(38,82,'com/ku6/android/videobrowser/SelectList'),(39,84,'com/ku6/android/videobrowser/sms/MessageService'),(40,88,'com/ku6/android/videobrowser/Iku6HomeList'),(41,92,'com/ku6/android/videobrowser/sms/MessageService'),(42,94,'com/ku6/android/videobrowser/Search_Activity'),(43,95,'receiptmanager/iconosys/eng/ReviewSelection'),(44,96,'com/ku6/android/videobrowser/RankList'),(45,97,'com/ku6/android/videobrowser/Search_Activity'),(46,98,'receiptmanager/iconosys/eng/OtherApps'),(47,99,'com/ku6/android/videobrowser/Iku6HomeList'),(48,102,'receiptmanager/iconosys/eng/MileageAdd'),(49,103,'com/ku6/android/videobrowser/Search_Result_Activity'),(50,105,'com/ku6/android/videobrowser/SelectList'),(51,112,'com/ku6/android/videobrowser/SelectList'),(52,114,'com/ku6/android/videobrowser/Search_Activity'),(53,117,'receiptmanager/iconosys/eng/ReviewSelection'),(54,120,'receiptmanager/iconosys/eng/MileageSheet'),(55,118,'com/ku6/android/videobrowser/VideodetailView'),(56,121,'receiptmanager/iconosys/eng/SelectRange'),(57,122,'com/ku6/android/videobrowser/SelectList'),(58,124,'com/ku6/android/videobrowser/VideodetailView'),(59,133,'receiptmanager/iconosys/eng/SelectRange'),(60,134,'receiptmanager/iconosys/eng/ShowTerms'),(61,137,'receiptmanager/iconosys/eng/ReportSheet'),(62,138,'receiptmanager/iconosys/eng/ReviewSelection'),(63,139,'receiptmanager/iconosys/eng/SelectRange'),(64,140,'receiptmanager/iconosys/eng/SelectRange'),(65,141,'receiptmanager/iconosys/eng/MileageSheet'),(66,142,'receiptmanager/iconosys/eng/ReviewSelection'),(67,143,'receiptmanager/iconosys/eng/ReviewSelection'),(68,152,'receiptmanager/iconosys/eng/RegistrationScreen'),(69,153,'receiptmanager/iconosys/eng/Mileage'),(70,155,'receiptmanager/iconosys/eng/OtherApps'),(71,156,'receiptmanager/iconosys/eng/ReviewSelection'),(72,157,'receiptmanager/iconosys/eng/ReviewSelection'),(73,158,'receiptmanager/iconosys/eng/ReviewSelection'),(74,159,'receiptmanager/iconosys/eng/Settings'),(75,160,'receiptmanager/iconosys/eng/OtherApps'),(76,162,'receiptmanager/iconosys/eng/OtherApps'),(77,163,'receiptmanager/iconosys/eng/TakePicture'),(78,164,'receiptmanager/iconosys/eng/SelectRange'),(79,165,'receiptmanager/iconosys/eng/ReviewSelection'),(80,166,'receiptmanager/iconosys/eng/LocationSender'),(81,167,'receiptmanager/iconosys/eng/OtherApps'),(82,168,'receiptmanager/iconosys/eng/Review');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,5,1),(2,7,2),(3,8,3),(4,10,4),(5,11,5),(6,12,6),(7,13,7),(8,16,8),(9,30,9),(10,32,10),(11,44,11),(12,54,12),(13,55,13),(14,60,15),(15,63,16),(16,119,19),(17,123,22),(18,135,23),(19,136,24),(20,154,25),(21,161,26);
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
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'id'),(2,2,'sms_body'),(3,9,'sender'),(4,9,'app'),(5,14,'android.intent.extra.INTENT'),(6,15,'android.intent.extra.INTENT'),(7,17,'android.intent.extra.TITLE'),(8,17,'android.intent.extra.INTENT'),(9,18,'android.intent.extra.INTENT'),(10,19,'android.intent.extra.INTENT'),(11,20,'android.intent.extra.INTENT'),(12,21,'android.intent.extra.TITLE'),(13,21,'android.intent.extra.INTENT'),(14,22,'android.intent.extra.TITLE'),(15,22,'android.intent.extra.INTENT'),(16,23,'android.intent.extra.INTENT'),(17,24,'android.intent.extra.INTENT'),(18,25,'android.intent.extra.TITLE'),(19,25,'android.intent.extra.INTENT'),(20,26,'android.intent.extra.TITLE'),(21,26,'android.intent.extra.INTENT'),(22,27,'android.intent.extra.TITLE'),(23,27,'android.intent.extra.INTENT'),(24,28,'android.intent.extra.INTENT'),(25,29,'android.intent.extra.TITLE'),(26,29,'android.intent.extra.INTENT'),(27,31,'android.intent.extra.TITLE'),(28,31,'android.intent.extra.INTENT'),(29,33,'sender'),(30,33,'app'),(31,35,'searchtype'),(32,35,'keyword'),(33,35,'type'),(34,39,'Name'),(35,39,'descriptionurl'),(36,39,'Count'),(37,39,'Length'),(38,39,'relatedurl'),(39,39,'ChannelName'),(40,39,'type'),(41,39,'Pic'),(42,39,'videoid'),(43,39,'Playerurl'),(44,40,'categoryid'),(45,40,'type'),(46,42,'searchtype'),(47,42,'keyword'),(48,42,'type'),(49,46,'Name'),(50,46,'descriptionurl'),(51,46,'Count'),(52,46,'Length'),(53,46,'relatedurl'),(54,46,'ChannelName'),(55,46,'type'),(56,46,'Pic'),(57,46,'videoid'),(58,46,'Playerurl'),(59,48,'type'),(60,48,'activity_type'),(61,51,'type'),(62,54,'android.intent.extra.TEXT'),(63,56,'id'),(64,56,'report_type'),(65,59,'id'),(66,59,'report_type'),(67,66,'output'),(68,67,'id'),(69,67,'report_type'),(70,69,'android.intent.extra.INTENT'),(71,70,'Name'),(72,70,'descriptionurl'),(73,71,'android.intent.extra.INTENT'),(74,70,'Count'),(75,70,'Length'),(76,70,'relatedurl'),(77,72,'android.intent.extra.TITLE'),(78,70,'ChannelName'),(79,72,'android.intent.extra.INTENT'),(80,70,'type'),(81,70,'Pic'),(82,70,'videoid'),(83,73,'android.intent.extra.INTENT'),(84,70,'Playerurl'),(85,74,'android.intent.extra.TITLE'),(86,74,'android.intent.extra.INTENT'),(87,75,'android.intent.extra.INTENT'),(88,77,'android.intent.extra.TITLE'),(89,77,'android.intent.extra.INTENT'),(90,78,'android.intent.extra.TITLE'),(91,78,'android.intent.extra.INTENT'),(92,81,'id'),(93,81,'report_type'),(94,82,'type'),(95,83,'android.intent.extra.INTENT'),(96,85,'android.intent.extra.INTENT'),(97,86,'android.intent.extra.TITLE'),(98,86,'android.intent.extra.INTENT'),(99,87,'android.intent.extra.INTENT'),(100,89,'android.intent.extra.TITLE'),(101,89,'android.intent.extra.INTENT'),(102,90,'android.intent.extra.INTENT'),(103,91,'android.intent.extra.TITLE'),(104,91,'android.intent.extra.INTENT'),(105,93,'android.intent.extra.TITLE'),(106,93,'android.intent.extra.INTENT'),(107,95,'id'),(108,95,'report_type'),(109,102,'_mileage'),(110,104,'android.intent.extra.INTENT'),(111,106,'android.intent.extra.INTENT'),(112,107,'android.intent.extra.TITLE'),(113,107,'android.intent.extra.INTENT'),(114,108,'android.intent.extra.INTENT'),(115,109,'sms_body'),(116,110,'android.intent.extra.TITLE'),(117,110,'android.intent.extra.INTENT'),(118,111,'android.intent.extra.INTENT'),(119,113,'android.intent.extra.TITLE'),(120,113,'android.intent.extra.INTENT'),(121,115,'android.intent.extra.TITLE'),(122,115,'android.intent.extra.INTENT'),(123,117,'id'),(124,116,'android.intent.extra.shortcut.NAME'),(125,117,'report_type'),(126,116,'android.intent.extra.shortcut.ICON_RESOURCE'),(127,116,'android.intent.extra.shortcut.INTENT'),(128,118,'Name'),(129,118,'descriptionurl'),(130,118,'Count'),(131,118,'Length'),(132,118,'relatedurl'),(133,118,'ChannelName'),(134,118,'type'),(135,118,'Pic'),(136,118,'videoid'),(137,118,'Playerurl'),(138,121,'id'),(139,121,'report_type'),(140,124,'Name'),(141,124,'descriptionurl'),(142,124,'Count'),(143,124,'Length'),(144,125,'android.intent.extra.INTENT'),(145,124,'relatedurl'),(146,124,'ChannelName'),(147,124,'type'),(148,126,'android.intent.extra.INTENT'),(149,124,'Pic'),(150,124,'videoid'),(151,124,'Playerurl'),(152,127,'android.intent.extra.TITLE'),(153,127,'android.intent.extra.INTENT'),(154,128,'android.intent.extra.INTENT'),(155,129,'android.intent.extra.TITLE'),(156,129,'android.intent.extra.INTENT'),(157,130,'android.intent.extra.INTENT'),(158,131,'android.intent.extra.TITLE'),(159,131,'android.intent.extra.INTENT'),(160,132,'android.intent.extra.TITLE'),(161,132,'android.intent.extra.INTENT'),(162,133,'id'),(163,133,'report_type'),(164,137,'id'),(165,137,'Category'),(166,137,'range1'),(167,137,'range2'),(168,138,'id'),(169,138,'report_type'),(170,139,'id'),(171,139,'report_type'),(172,140,'id'),(173,140,'report_type'),(174,142,'id'),(175,142,'report_type'),(176,143,'id'),(177,143,'report_type'),(178,144,'android.intent.extra.INTENT'),(179,145,'android.intent.extra.INTENT'),(180,146,'android.intent.extra.TITLE'),(181,146,'android.intent.extra.INTENT'),(182,147,'android.intent.extra.INTENT'),(183,148,'android.intent.extra.TITLE'),(184,148,'android.intent.extra.INTENT'),(185,149,'android.intent.extra.INTENT'),(186,150,'android.intent.extra.TITLE'),(187,150,'android.intent.extra.INTENT'),(188,151,'android.intent.extra.TITLE'),(189,151,'android.intent.extra.INTENT'),(190,156,'id'),(191,156,'report_type'),(192,157,'id'),(193,157,'report_type'),(194,158,'id'),(195,158,'report_type'),(196,164,'id'),(197,164,'Category'),(198,164,'report_type'),(199,165,'id'),(200,165,'report_type');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,1),(5,5,2),(6,6,1),(7,7,3),(8,8,4),(9,9,1),(10,10,3),(11,11,4),(12,12,1),(13,13,6),(14,14,7),(15,15,1),(16,16,8),(17,17,7);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,4,1),(4,6,2),(5,6,1),(6,7,3),(7,8,3),(8,9,1),(9,9,2),(10,10,4),(11,11,4),(12,12,1),(13,15,1);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,2,'vnd.android-dir','mms-sms'),(2,5,'video','3gp'),(3,44,'video','3gp'),(4,55,'application','vnd.android.package-archive'),(5,63,'video','3gp'),(6,109,'vnd.android-dir','mms-sms');
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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.mass.sms'),(2,3,'eng.trickersticks.cycles'),(3,4,'com.Video.XiaoQiang'),(4,6,'com.Video.XiaoQiang'),(5,34,'com.ku6.android.videobrowser'),(6,35,'com.ku6.android.videobrowser'),(7,36,'com.ku6.android.videobrowser'),(8,37,'com.ku6.android.videobrowser'),(9,38,'com.ku6.android.videobrowser'),(10,39,'com.ku6.android.videobrowser'),(11,40,'com.ku6.android.videobrowser'),(12,41,'com.ku6.android.videobrowser'),(13,42,'com.ku6.android.videobrowser'),(14,43,'com.ku6.android.videobrowser'),(15,45,'com.ku6.android.videobrowser'),(16,46,'com.ku6.android.videobrowser'),(17,47,'com.ku6.android.videobrowser'),(18,48,'com.ku6.android.videobrowser'),(19,50,'com.ku6.android.videobrowser'),(20,51,'com.ku6.android.videobrowser'),(21,52,'com.ku6.android.videobrowser'),(22,53,'com.ku6.android.videobrowser'),(23,57,'com.ku6.android.videobrowser'),(24,56,'receiptmanager.iconosys.eng'),(25,58,'com.ku6.android.videobrowser'),(26,59,'receiptmanager.iconosys.eng'),(27,61,'com.ku6.android.videobrowser'),(28,62,'receiptmanager.iconosys.eng'),(29,64,'receiptmanager.iconosys.eng'),(30,65,'com.ku6.android.videobrowser'),(31,67,'receiptmanager.iconosys.eng'),(32,68,'com.ku6.android.videobrowser'),(33,70,'com.ku6.android.videobrowser'),(34,76,'com.ku6.android.videobrowser'),(35,79,'com.ku6.android.videobrowser'),(36,80,'com.ku6.android.videobrowser'),(37,81,'receiptmanager.iconosys.eng'),(38,82,'com.ku6.android.videobrowser'),(39,84,'com.ku6.android.videobrowser'),(40,88,'com.ku6.android.videobrowser'),(41,92,'com.ku6.android.videobrowser'),(42,94,'com.ku6.android.videobrowser'),(43,95,'receiptmanager.iconosys.eng'),(44,96,'com.ku6.android.videobrowser'),(45,97,'com.ku6.android.videobrowser'),(46,98,'receiptmanager.iconosys.eng'),(47,99,'com.ku6.android.videobrowser'),(48,102,'receiptmanager.iconosys.eng'),(49,103,'com.ku6.android.videobrowser'),(50,105,'com.ku6.android.videobrowser'),(51,112,'com.ku6.android.videobrowser'),(52,114,'com.ku6.android.videobrowser'),(53,117,'receiptmanager.iconosys.eng'),(54,120,'receiptmanager.iconosys.eng'),(55,118,'com.ku6.android.videobrowser'),(56,121,'receiptmanager.iconosys.eng'),(57,122,'com.ku6.android.videobrowser'),(58,124,'com.ku6.android.videobrowser'),(59,133,'receiptmanager.iconosys.eng'),(60,134,'receiptmanager.iconosys.eng'),(61,137,'receiptmanager.iconosys.eng'),(62,138,'receiptmanager.iconosys.eng'),(63,139,'receiptmanager.iconosys.eng'),(64,140,'receiptmanager.iconosys.eng'),(65,141,'receiptmanager.iconosys.eng'),(66,142,'receiptmanager.iconosys.eng'),(67,143,'receiptmanager.iconosys.eng'),(68,152,'receiptmanager.iconosys.eng'),(69,153,'receiptmanager.iconosys.eng'),(70,155,'receiptmanager.iconosys.eng'),(71,156,'receiptmanager.iconosys.eng'),(72,157,'receiptmanager.iconosys.eng'),(73,158,'receiptmanager.iconosys.eng'),(74,159,'receiptmanager.iconosys.eng'),(75,160,'receiptmanager.iconosys.eng'),(76,162,'receiptmanager.iconosys.eng'),(77,163,'receiptmanager.iconosys.eng'),(78,164,'receiptmanager.iconosys.eng'),(79,165,'receiptmanager.iconosys.eng'),(80,166,'receiptmanager.iconosys.eng'),(81,167,'receiptmanager.iconosys.eng'),(82,168,'receiptmanager.iconosys.eng');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,4,0),(3,5,0),(4,8,0),(5,10,0),(6,11,0),(7,14,0),(8,14,0),(9,15,0),(10,18,0),(11,18,0),(12,19,0),(13,31,0),(14,33,0),(15,35,0),(16,34,0),(17,58,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,3,0,0),(4,4,0,0),(5,5,1,0),(6,6,0,0),(7,7,1,0),(8,8,1,0),(9,9,1,0),(10,10,1,0),(11,11,1,0),(12,12,1,0),(13,12,1,0),(14,13,1,0),(15,13,1,0),(16,12,1,0),(17,13,1,0),(18,14,1,0),(19,13,1,0),(20,14,1,0),(21,13,1,0),(22,14,1,0),(23,13,1,0),(24,14,1,0),(25,13,1,0),(26,14,1,0),(27,13,1,0),(28,14,1,0),(29,14,1,0),(30,15,1,0),(31,14,1,0),(32,16,1,0),(33,17,1,0),(34,18,0,0),(35,19,0,0),(36,20,0,0),(37,21,0,0),(38,22,0,0),(39,23,0,0),(40,24,0,0),(41,25,0,0),(42,26,0,0),(43,27,0,0),(44,28,1,0),(45,29,0,0),(46,30,0,0),(47,31,0,0),(48,32,0,0),(49,32,1,0),(50,32,0,0),(51,32,0,0),(52,33,0,0),(53,34,0,0),(54,35,1,0),(55,36,1,0),(56,37,0,0),(57,38,0,0),(58,39,0,0),(59,40,0,0),(60,42,1,0),(61,43,0,0),(62,44,0,0),(63,45,1,0),(64,46,0,0),(65,47,0,0),(66,48,1,0),(67,49,0,0),(68,50,0,0),(69,51,1,0),(70,52,0,0),(71,51,1,0),(72,51,1,0),(73,51,1,0),(74,51,1,0),(75,51,1,0),(76,53,0,0),(77,51,1,0),(78,51,1,0),(79,54,0,0),(80,55,0,0),(81,56,0,0),(82,57,0,0),(83,59,1,0),(84,60,0,0),(85,59,1,0),(86,59,1,0),(87,59,1,0),(88,62,0,0),(89,59,1,0),(90,59,1,0),(91,59,1,0),(92,64,0,0),(93,59,1,0),(94,65,0,0),(95,66,0,0),(96,67,0,0),(97,68,0,0),(98,69,0,0),(99,70,0,0),(100,71,1,0),(101,72,1,0),(102,73,0,0),(103,74,0,0),(104,75,1,0),(105,76,0,0),(106,75,1,0),(107,75,1,0),(108,75,1,0),(109,77,1,0),(110,75,1,0),(111,75,1,0),(112,78,0,0),(113,75,1,0),(114,79,0,0),(115,75,1,0),(116,80,1,0),(117,81,0,0),(118,82,0,0),(119,83,1,0),(120,84,0,0),(121,85,0,0),(122,86,0,0),(123,89,1,0),(124,90,0,0),(125,91,1,0),(126,91,1,0),(127,91,1,0),(128,91,1,0),(129,91,1,0),(130,91,1,0),(131,91,1,0),(132,91,1,0),(133,92,0,0),(134,93,0,0),(135,94,1,0),(136,95,1,0),(137,96,0,0),(138,97,0,0),(139,98,0,0),(140,99,0,0),(141,100,0,0),(142,101,0,0),(143,102,0,0),(144,103,1,0),(145,103,1,0),(146,103,1,0),(147,103,1,0),(148,103,1,0),(149,103,1,0),(150,103,1,0),(151,103,1,0),(152,104,0,0),(153,105,0,0),(154,106,1,0),(155,107,0,0),(156,108,0,0),(157,109,0,0),(158,110,0,0),(159,111,0,0),(160,112,0,0),(161,113,1,0),(162,114,0,0),(163,115,0,0),(164,116,0,0),(165,117,0,0),(166,118,0,0),(167,119,0,0),(168,120,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=656 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,18,1,2,NULL),(2,20,1,2,NULL),(3,22,1,2,NULL),(4,24,1,2,NULL),(5,26,1,2,NULL),(6,28,1,2,NULL),(7,29,1,2,NULL),(8,31,1,2,NULL),(9,18,4,2,NULL),(10,20,4,2,NULL),(11,22,4,2,NULL),(12,24,4,2,NULL),(13,26,4,2,NULL),(14,28,4,2,NULL),(15,29,4,2,NULL),(16,31,4,2,NULL),(17,18,5,2,NULL),(18,20,5,2,NULL),(19,22,5,2,NULL),(20,24,5,2,NULL),(21,26,5,2,NULL),(22,28,5,2,NULL),(23,29,5,2,NULL),(24,31,5,2,NULL),(25,18,8,2,NULL),(26,20,8,2,NULL),(27,22,8,2,NULL),(28,24,8,2,NULL),(29,26,8,2,NULL),(30,28,8,2,NULL),(31,29,8,2,NULL),(32,31,8,2,NULL),(33,18,10,2,NULL),(34,20,10,2,NULL),(35,22,10,2,NULL),(36,24,10,2,NULL),(37,26,10,2,NULL),(38,28,10,2,NULL),(39,29,10,2,NULL),(40,31,10,2,NULL),(41,18,33,2,NULL),(42,20,33,2,NULL),(43,22,33,2,NULL),(44,24,33,2,NULL),(45,26,33,2,NULL),(46,28,33,2,NULL),(47,29,33,2,NULL),(48,31,33,2,NULL),(49,18,14,2,NULL),(50,20,14,2,NULL),(51,22,14,2,NULL),(52,24,14,2,NULL),(53,26,14,2,NULL),(54,28,14,2,NULL),(55,29,14,2,NULL),(56,31,14,2,NULL),(57,18,15,2,NULL),(58,20,15,2,NULL),(59,22,15,2,NULL),(60,24,15,2,NULL),(61,26,15,2,NULL),(62,28,15,2,NULL),(63,29,15,2,NULL),(64,31,15,2,NULL),(65,14,11,2,NULL),(66,15,11,2,NULL),(67,17,11,2,NULL),(68,19,11,2,NULL),(69,21,11,2,NULL),(70,23,11,2,NULL),(71,25,11,2,NULL),(72,27,11,2,NULL),(73,18,18,2,NULL),(74,20,18,2,NULL),(75,22,18,2,NULL),(76,24,18,2,NULL),(77,26,18,2,NULL),(78,28,18,2,NULL),(79,29,18,2,NULL),(80,31,18,2,NULL),(81,18,19,2,NULL),(82,20,19,2,NULL),(83,22,19,2,NULL),(84,24,19,2,NULL),(85,26,19,2,NULL),(86,28,19,2,NULL),(87,29,19,2,NULL),(88,31,19,2,NULL),(89,116,11,2,NULL),(90,18,31,2,NULL),(91,20,31,2,NULL),(92,22,31,2,NULL),(93,24,31,2,NULL),(94,26,31,2,NULL),(95,28,31,2,NULL),(96,29,31,2,NULL),(97,31,31,2,NULL),(98,101,11,2,NULL),(99,18,34,2,NULL),(100,20,34,2,NULL),(101,22,34,2,NULL),(102,24,34,2,NULL),(103,26,34,2,NULL),(104,28,34,2,NULL),(105,29,34,2,NULL),(106,31,34,2,NULL),(107,18,58,2,NULL),(108,20,58,2,NULL),(109,22,58,2,NULL),(110,24,58,2,NULL),(111,26,58,2,NULL),(112,28,58,2,NULL),(113,29,58,2,NULL),(114,31,58,2,NULL),(115,18,35,2,NULL),(116,20,35,2,NULL),(117,22,35,2,NULL),(118,24,35,2,NULL),(119,26,35,2,NULL),(120,28,35,2,NULL),(121,29,35,2,NULL),(122,31,35,2,NULL),(123,66,11,2,NULL),(124,144,11,2,NULL),(125,145,11,2,NULL),(126,146,11,2,NULL),(127,147,11,2,NULL),(128,148,11,2,NULL),(129,149,11,2,NULL),(130,150,11,2,NULL),(131,151,11,2,NULL),(132,104,11,2,NULL),(133,106,11,2,NULL),(134,107,11,2,NULL),(135,108,11,2,NULL),(136,110,11,2,NULL),(137,111,11,2,NULL),(138,113,11,2,NULL),(139,115,11,2,NULL),(140,69,11,2,NULL),(141,71,11,2,NULL),(142,72,11,2,NULL),(143,73,11,2,NULL),(144,74,11,2,NULL),(145,75,11,2,NULL),(146,77,11,2,NULL),(147,78,11,2,NULL),(148,14,14,2,NULL),(149,15,14,2,NULL),(150,17,14,2,NULL),(151,19,14,2,NULL),(152,21,14,2,NULL),(153,23,14,2,NULL),(154,25,14,2,NULL),(155,27,14,2,NULL),(156,116,14,2,NULL),(157,101,14,2,NULL),(158,66,14,2,NULL),(159,144,14,2,NULL),(160,145,14,2,NULL),(161,146,14,2,NULL),(162,147,14,2,NULL),(163,148,14,2,NULL),(164,149,14,2,NULL),(165,150,14,2,NULL),(166,151,14,2,NULL),(167,104,14,2,NULL),(168,106,14,2,NULL),(169,107,14,2,NULL),(170,108,14,2,NULL),(171,110,14,2,NULL),(172,111,14,2,NULL),(173,113,14,2,NULL),(174,115,14,2,NULL),(175,69,14,2,NULL),(176,71,14,2,NULL),(177,72,14,2,NULL),(178,73,14,2,NULL),(179,74,14,2,NULL),(180,75,14,2,NULL),(181,77,14,2,NULL),(182,78,14,2,NULL),(183,14,1,2,NULL),(184,15,1,2,NULL),(185,17,1,2,NULL),(186,19,1,2,NULL),(187,21,1,2,NULL),(188,23,1,2,NULL),(189,25,1,2,NULL),(190,27,1,2,NULL),(191,14,4,2,NULL),(192,15,4,2,NULL),(193,17,4,2,NULL),(194,19,4,2,NULL),(195,21,4,2,NULL),(196,23,4,2,NULL),(197,25,4,2,NULL),(198,27,4,2,NULL),(199,14,5,2,NULL),(200,15,5,2,NULL),(201,17,5,2,NULL),(202,19,5,2,NULL),(203,21,5,2,NULL),(204,23,5,2,NULL),(205,25,5,2,NULL),(206,27,5,2,NULL),(207,14,8,2,NULL),(208,15,8,2,NULL),(209,17,8,2,NULL),(210,19,8,2,NULL),(211,21,8,2,NULL),(212,23,8,2,NULL),(213,25,8,2,NULL),(214,27,8,2,NULL),(215,14,10,2,NULL),(216,15,10,2,NULL),(217,17,10,2,NULL),(218,19,10,2,NULL),(219,21,10,2,NULL),(220,23,10,2,NULL),(221,25,10,2,NULL),(222,27,10,2,NULL),(223,14,33,2,NULL),(224,15,33,2,NULL),(225,17,33,2,NULL),(226,19,33,2,NULL),(227,21,33,2,NULL),(228,23,33,2,NULL),(229,25,33,2,NULL),(230,27,33,2,NULL),(231,14,18,2,NULL),(232,15,18,2,NULL),(233,17,18,2,NULL),(234,19,18,2,NULL),(235,21,18,2,NULL),(236,23,18,2,NULL),(237,25,18,2,NULL),(238,27,18,2,NULL),(239,14,19,2,NULL),(240,15,19,2,NULL),(241,17,19,2,NULL),(242,19,19,2,NULL),(243,21,19,2,NULL),(244,23,19,2,NULL),(245,25,19,2,NULL),(246,27,19,2,NULL),(247,116,15,2,NULL),(248,14,31,2,NULL),(249,15,31,2,NULL),(250,17,31,2,NULL),(251,19,31,2,NULL),(252,21,31,2,NULL),(253,23,31,2,NULL),(254,25,31,2,NULL),(255,27,31,2,NULL),(256,101,15,2,NULL),(257,14,34,2,NULL),(258,15,34,2,NULL),(259,17,34,2,NULL),(260,19,34,2,NULL),(261,21,34,2,NULL),(262,23,34,2,NULL),(263,25,34,2,NULL),(264,27,34,2,NULL),(265,14,58,2,NULL),(266,15,58,2,NULL),(267,17,58,2,NULL),(268,19,58,2,NULL),(269,21,58,2,NULL),(270,23,58,2,NULL),(271,25,58,2,NULL),(272,27,58,2,NULL),(273,14,35,2,NULL),(274,15,35,2,NULL),(275,17,35,2,NULL),(276,19,35,2,NULL),(277,21,35,2,NULL),(278,23,35,2,NULL),(279,25,35,2,NULL),(280,27,35,2,NULL),(281,66,15,2,NULL),(282,144,15,2,NULL),(283,116,1,2,NULL),(284,145,15,2,NULL),(285,101,1,2,NULL),(286,146,15,2,NULL),(287,66,1,2,NULL),(288,147,15,2,NULL),(289,144,1,2,NULL),(290,148,15,2,NULL),(291,145,1,2,NULL),(292,149,15,2,NULL),(293,146,1,2,NULL),(294,150,15,2,NULL),(295,147,1,2,NULL),(296,151,15,2,NULL),(297,148,1,2,NULL),(298,104,15,2,NULL),(299,149,1,2,NULL),(300,106,15,2,NULL),(301,150,1,2,NULL),(302,107,15,2,NULL),(303,151,1,2,NULL),(304,108,15,2,NULL),(305,104,1,2,NULL),(306,110,15,2,NULL),(307,106,1,2,NULL),(308,111,15,2,NULL),(309,107,1,2,NULL),(310,113,15,2,NULL),(311,108,1,2,NULL),(312,115,15,2,NULL),(313,65,23,2,NULL),(314,110,1,2,NULL),(315,69,15,2,NULL),(316,111,1,2,NULL),(317,84,32,2,NULL),(318,71,15,2,NULL),(319,113,1,2,NULL),(320,116,4,2,NULL),(321,72,15,2,NULL),(322,115,1,2,NULL),(323,116,5,2,NULL),(324,73,15,2,NULL),(325,69,1,2,NULL),(326,116,8,2,NULL),(327,74,15,2,NULL),(328,71,1,2,NULL),(329,116,10,2,NULL),(330,75,15,2,NULL),(331,72,1,2,NULL),(332,116,33,2,NULL),(333,77,15,2,NULL),(334,78,15,2,NULL),(335,73,1,2,NULL),(336,116,18,2,NULL),(337,101,18,2,NULL),(338,74,1,2,NULL),(339,116,31,2,NULL),(340,66,18,2,NULL),(341,75,1,2,NULL),(342,101,19,2,NULL),(343,144,18,2,NULL),(344,77,1,2,NULL),(345,116,34,2,NULL),(346,145,18,2,NULL),(347,78,1,2,NULL),(348,116,58,2,NULL),(349,146,18,2,NULL),(350,116,35,2,NULL),(351,1,3,2,NULL),(352,147,18,2,NULL),(353,66,19,2,NULL),(354,101,4,2,NULL),(355,148,18,2,NULL),(356,66,4,2,NULL),(357,144,19,2,NULL),(358,149,18,2,NULL),(359,144,4,2,NULL),(360,145,19,2,NULL),(361,150,18,2,NULL),(362,145,4,2,NULL),(363,146,19,2,NULL),(364,151,18,2,NULL),(365,147,19,2,NULL),(366,146,4,2,NULL),(367,104,18,2,NULL),(368,148,19,2,NULL),(369,147,4,2,NULL),(370,106,18,2,NULL),(371,148,4,2,NULL),(372,149,19,2,NULL),(373,107,18,2,NULL),(374,149,4,2,NULL),(375,150,19,2,NULL),(376,108,18,2,NULL),(377,150,4,2,NULL),(378,151,19,2,NULL),(379,110,18,2,NULL),(380,104,19,2,NULL),(381,151,4,2,NULL),(382,111,18,2,NULL),(383,106,19,2,NULL),(384,104,4,2,NULL),(385,113,18,2,NULL),(386,106,4,2,NULL),(387,107,19,2,NULL),(388,115,18,2,NULL),(389,107,4,2,NULL),(390,108,19,2,NULL),(391,69,18,2,NULL),(392,108,4,2,NULL),(393,110,19,2,NULL),(394,71,18,2,NULL),(395,111,19,2,NULL),(396,110,4,2,NULL),(397,72,18,2,NULL),(398,111,4,2,NULL),(399,113,19,2,NULL),(400,73,18,2,NULL),(401,113,4,2,NULL),(402,115,19,2,NULL),(403,74,18,2,NULL),(404,115,4,2,NULL),(405,69,19,2,NULL),(406,75,18,2,NULL),(407,69,4,2,NULL),(408,71,19,2,NULL),(409,77,18,2,NULL),(410,71,4,2,NULL),(411,72,19,2,NULL),(412,78,18,2,NULL),(413,73,19,2,NULL),(414,72,4,2,NULL),(415,73,4,2,NULL),(416,74,19,2,NULL),(417,74,4,2,NULL),(418,75,19,2,NULL),(419,75,4,2,NULL),(420,77,19,2,NULL),(421,77,4,2,NULL),(422,78,19,2,NULL),(423,78,4,2,NULL),(424,34,23,2,NULL),(425,45,23,2,NULL),(426,58,23,2,NULL),(427,35,26,2,NULL),(428,122,23,2,NULL),(429,42,26,2,NULL),(430,114,25,2,NULL),(431,37,21,2,NULL),(432,88,21,2,NULL),(433,47,25,2,NULL),(434,101,5,2,NULL),(435,101,8,2,NULL),(436,101,10,2,NULL),(437,101,33,2,NULL),(438,101,34,2,NULL),(439,101,58,2,NULL),(440,101,35,2,NULL),(441,66,31,2,NULL),(442,144,31,2,NULL),(443,145,31,2,NULL),(444,146,31,2,NULL),(445,147,31,2,NULL),(446,148,31,2,NULL),(447,149,31,2,NULL),(448,150,31,2,NULL),(449,151,31,2,NULL),(450,104,31,2,NULL),(451,106,31,2,NULL),(452,107,31,2,NULL),(453,108,31,2,NULL),(454,110,31,2,NULL),(455,111,31,2,NULL),(456,113,31,2,NULL),(457,115,31,2,NULL),(458,69,31,2,NULL),(459,71,31,2,NULL),(460,72,31,2,NULL),(461,73,31,2,NULL),(462,74,31,2,NULL),(463,75,31,2,NULL),(464,77,31,2,NULL),(465,78,31,2,NULL),(466,92,32,2,NULL),(467,66,34,2,NULL),(468,144,34,2,NULL),(469,145,34,2,NULL),(470,146,34,2,NULL),(471,147,34,2,NULL),(472,148,34,2,NULL),(473,149,34,2,NULL),(474,150,34,2,NULL),(475,151,34,2,NULL),(476,104,34,2,NULL),(477,106,34,2,NULL),(478,107,34,2,NULL),(479,108,34,2,NULL),(480,110,34,2,NULL),(481,111,34,2,NULL),(482,113,34,2,NULL),(483,115,34,2,NULL),(484,69,34,2,NULL),(485,71,34,2,NULL),(486,72,34,2,NULL),(487,73,34,2,NULL),(488,74,34,2,NULL),(489,75,34,2,NULL),(490,77,34,2,NULL),(491,78,34,2,NULL),(492,66,58,2,NULL),(493,144,58,2,NULL),(494,145,58,2,NULL),(495,146,58,2,NULL),(496,147,58,2,NULL),(497,148,58,2,NULL),(498,149,58,2,NULL),(499,150,58,2,NULL),(500,151,58,2,NULL),(501,104,58,2,NULL),(502,106,58,2,NULL),(503,107,58,2,NULL),(504,108,58,2,NULL),(505,110,58,2,NULL),(506,111,58,2,NULL),(507,113,58,2,NULL),(508,115,58,2,NULL),(509,69,58,2,NULL),(510,71,58,2,NULL),(511,72,58,2,NULL),(512,73,58,2,NULL),(513,74,58,2,NULL),(514,75,58,2,NULL),(515,77,58,2,NULL),(516,78,58,2,NULL),(517,6,9,2,NULL),(518,66,8,2,NULL),(519,144,8,2,NULL),(520,145,8,2,NULL),(521,146,8,2,NULL),(522,147,8,2,NULL),(523,148,8,2,NULL),(524,149,8,2,NULL),(525,150,8,2,NULL),(526,151,8,2,NULL),(527,104,8,2,NULL),(528,106,8,2,NULL),(529,107,8,2,NULL),(530,108,8,2,NULL),(531,110,8,2,NULL),(532,111,8,2,NULL),(533,113,8,2,NULL),(534,115,8,2,NULL),(535,69,8,2,NULL),(536,71,8,2,NULL),(537,72,8,2,NULL),(538,73,8,2,NULL),(539,74,8,2,NULL),(540,75,8,2,NULL),(541,77,8,2,NULL),(542,78,8,2,NULL),(543,66,10,2,NULL),(544,144,10,2,NULL),(545,145,10,2,NULL),(546,146,10,2,NULL),(547,147,10,2,NULL),(548,148,10,2,NULL),(549,149,10,2,NULL),(550,150,10,2,NULL),(551,151,10,2,NULL),(552,104,10,2,NULL),(553,106,10,2,NULL),(554,107,10,2,NULL),(555,108,10,2,NULL),(556,110,10,2,NULL),(557,111,10,2,NULL),(558,113,10,2,NULL),(559,115,10,2,NULL),(560,69,10,2,NULL),(561,71,10,2,NULL),(562,72,10,2,NULL),(563,73,10,2,NULL),(564,74,10,2,NULL),(565,75,10,2,NULL),(566,77,10,2,NULL),(567,78,10,2,NULL),(568,66,33,2,NULL),(569,144,33,2,NULL),(570,145,33,2,NULL),(571,146,33,2,NULL),(572,147,33,2,NULL),(573,148,33,2,NULL),(574,149,33,2,NULL),(575,150,33,2,NULL),(576,151,33,2,NULL),(577,104,33,2,NULL),(578,106,33,2,NULL),(579,107,33,2,NULL),(580,108,33,2,NULL),(581,110,33,2,NULL),(582,111,33,2,NULL),(583,113,33,2,NULL),(584,115,33,2,NULL),(585,69,33,2,NULL),(586,71,33,2,NULL),(587,72,33,2,NULL),(588,73,33,2,NULL),(589,74,33,2,NULL),(590,75,33,2,NULL),(591,77,33,2,NULL),(592,78,33,2,NULL),(593,3,6,2,NULL),(594,66,5,2,NULL),(595,144,5,2,NULL),(596,145,5,2,NULL),(597,146,5,2,NULL),(598,147,5,2,NULL),(599,148,5,2,NULL),(600,149,5,2,NULL),(601,150,5,2,NULL),(602,151,5,2,NULL),(603,104,5,2,NULL),(604,106,5,2,NULL),(605,107,5,2,NULL),(606,108,5,2,NULL),(607,110,5,2,NULL),(608,111,5,2,NULL),(609,113,5,2,NULL),(610,115,5,2,NULL),(611,69,5,2,NULL),(612,71,5,2,NULL),(613,72,5,2,NULL),(614,73,5,2,NULL),(615,74,5,2,NULL),(616,75,5,2,NULL),(617,77,5,2,NULL),(618,78,5,2,NULL),(619,64,50,2,NULL),(620,152,51,2,NULL),(621,155,38,2,NULL),(622,66,35,2,NULL),(623,144,35,2,NULL),(624,145,35,2,NULL),(625,146,35,2,NULL),(626,147,35,2,NULL),(627,148,35,2,NULL),(628,149,35,2,NULL),(629,150,35,2,NULL),(630,151,35,2,NULL),(631,104,35,2,NULL),(632,106,35,2,NULL),(633,107,35,2,NULL),(634,108,35,2,NULL),(635,110,35,2,NULL),(636,111,35,2,NULL),(637,113,35,2,NULL),(638,115,35,2,NULL),(639,69,35,2,NULL),(640,71,35,2,NULL),(641,72,35,2,NULL),(642,73,35,2,NULL),(643,74,35,2,NULL),(644,75,35,2,NULL),(645,77,35,2,NULL),(646,78,35,2,NULL),(647,162,38,2,NULL),(648,164,53,2,NULL),(649,167,38,2,NULL),(650,98,38,2,NULL),(651,102,37,2,NULL),(652,120,46,2,NULL),(653,62,57,2,NULL),(654,166,57,2,NULL),(655,160,38,2,NULL);
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
INSERT INTO `PermissionStrings` VALUES (18,'android.permission.ACCESS_COARSE_LOCATION'),(21,'android.permission.ACCESS_FINE_LOCATION'),(11,'android.permission.ACCESS_NETWORK_STATE'),(20,'android.permission.CAMERA'),(19,'android.permission.GET_ACCOUNTS'),(6,'android.permission.INTERNET'),(1,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(10,'android.permission.READ_CONTACTS'),(12,'android.permission.READ_PHONE_STATE'),(3,'android.permission.READ_SMS'),(4,'android.permission.RECEIVE_BOOT_COMPLETED'),(9,'android.permission.RECEIVE_SMS'),(5,'android.permission.SEND_SMS'),(22,'android.permission.WAKE_LOCK'),(7,'android.permission.WRITE_EXTERNAL_STORAGE'),(8,'android.permission.WRITE_SMS'),(13,'android.webkit.permission.PLUGIN'),(2,'com.android.launcher.permission.INSTALL_SHORTCUT'),(15,'com.google.android.c2dm.permission.RECEIVE'),(16,'com.google.android.c2dm.permission.SEND'),(17,'com.wAppzmob.permission.C2D_MESSAGE'),(14,'com.wThisiskushdvdcom.permission.C2D_MESSAGE');
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
INSERT INTO `Permissions` VALUES (14,'s'),(17,'s');
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'',NULL,NULL,NULL),(3,NULL,NULL,'',NULL,NULL,NULL),(4,NULL,NULL,'market://details?id=com.wThisiskushdvdcom',NULL,NULL,NULL),(5,NULL,NULL,'market://details?id=com.wAppzmob',NULL,NULL,NULL),(6,NULL,NULL,'http://www.appsgeyser.com',NULL,NULL,NULL),(7,NULL,NULL,'',NULL,NULL,NULL),(8,NULL,NULL,'http://www.appsgeyser.com?(.*)',NULL,NULL,NULL),(9,NULL,NULL,'',NULL,NULL,NULL),(10,NULL,NULL,'',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'mailto:',NULL,NULL,NULL),(13,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(14,NULL,NULL,'content://sms',NULL,NULL,NULL),(15,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'content://sms',NULL,NULL,NULL),(18,NULL,NULL,'content://sms',NULL,NULL,NULL),(19,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(20,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(21,NULL,NULL,'content://sms',NULL,NULL,NULL),(22,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(23,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(24,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(25,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(26,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,41,14),(2,61,17),(3,63,18),(4,87,20),(5,88,21);
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
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,2,5),(13,2,6),(14,2,12),(15,3,1),(16,3,2),(17,3,3),(18,3,4),(19,3,5),(20,3,6),(21,3,7),(22,3,8),(23,3,9),(24,3,11),(25,4,6),(26,4,11),(27,4,13),(28,4,14),(29,4,15),(30,5,17),(31,5,6),(32,5,11),(33,5,13),(34,5,15),(35,6,1),(36,6,2),(37,6,3),(38,6,4),(39,6,5),(40,6,6),(41,6,7),(42,6,8),(43,6,9),(44,6,11),(45,7,19),(46,7,18),(47,7,3),(48,7,21),(49,7,20),(50,7,5),(51,7,6),(52,7,22),(53,7,7),(54,7,8),(55,7,10),(56,7,12);
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

-- Dump completed on 2015-10-12  3:30:35
