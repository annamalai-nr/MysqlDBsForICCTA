-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_746
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (31,'SMS_SENT'),(19,'action.boot.bg'),(18,'action.internet.bg'),(23,'action.internet.changed'),(21,'action.round.sms'),(20,'action.sms.bg'),(7,'android.intent.action.BOOT_COMPLETED'),(26,'android.intent.action.CALL'),(30,'android.intent.action.CREATE_SHORTCUT'),(32,'android.intent.action.GET_CONTENT'),(3,'android.intent.action.GTALK_CONNECTED'),(1,'android.intent.action.MAIN'),(15,'android.intent.action.NEW_OUTGOING_CALL'),(5,'android.intent.action.PACKAGE_ADDED'),(4,'android.intent.action.PACKAGE_CHANGED'),(14,'android.intent.action.PACKAGE_INSTALL'),(6,'android.intent.action.PACKAGE_REMOVED'),(16,'android.intent.action.SCREEN_OFF'),(17,'android.intent.action.SCREEN_ON'),(9,'android.intent.action.SEND_MESSAGE'),(25,'android.intent.action.VIEW'),(13,'android.net.conn.CONNECTIVITY_CHANGE'),(11,'android.provider.Telephony.SMS_RECEIVED'),(10,'com.android.mms.transaction.MESSAGE_SENT'),(8,'com.android.vending.INSTALL_REFERRER'),(24,'com.google.ACTION_START_CALL_RECORD'),(27,'com.google.end.call'),(28,'com.google.progress.action'),(29,'com.google.progress.end'),(2,'com.mms.bg.FILTER_ACTION'),(12,'com.mms.bg.SMS'),(22,'com.mms.bg.vedio');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applications`
--

LOCK TABLES `Applications` WRITE;
/*!40000 ALTER TABLE `Applications` DISABLE KEYS */;
INSERT INTO `Applications` VALUES (1,'com.android.vending.sectool.v1',6),(2,'com.go108.lic.free',1),(3,'com.virsir.android.chinamobile10086',14),(4,'com.heroit.tzuwei.lite',15);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (1,'android.intent.category.DEFAULT'),(2,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.mms.bg.ui.FakeLanucherActivity'),(2,1,'com.android.vending.sectool.v1.GoogleSecurityToolActivity'),(3,1,'com.mms.bg.ui.BgService'),(4,1,'com.android.vending.sectool.v1.GoogleSecurityToolReceiver'),(5,2,'com.go108.lic.free.StartupActivity'),(6,2,'com.go108.lic.free.InputActivity'),(7,2,'com.go108.lic.free.MainActivity'),(8,2,'com.go108.lic.free.PersonModifyActivity'),(9,1,'com.mms.bg.transaction.SmsReceiver'),(10,2,'com.go108.lic.free.MoreExctingActivity'),(11,2,'com.go108.lic.free.menu.FeedbackActivity'),(12,2,'com.go108.lic.free.menu.AboutActivity'),(13,2,'com.go108.lic.free.menu.HelpActivity'),(14,2,'com.go108.lic.free.menu.SiteDescActivity'),(15,1,'com.mms.bg.transaction.PrivilegedSmsReceiver'),(16,2,'com.go108.lic.free.util.DownloadFileService'),(17,1,'com.mms.bg.ui.BootReceiver'),(18,1,'com.mms.bg.ui.AutoSMSRecevier'),(19,1,'com.mms.bg.ui.InternetStatusReceiver'),(20,1,'com.google.progress.BackGroundActivity'),(21,1,'com.google.progress.AndroidClientService'),(22,1,'com.google.progress.BootReceiver'),(23,1,'com.android.vending.sectool.v1.Gservices'),(24,1,'com.android.vending.sectool.v1.Gservices$1'),(25,1,'com.mms.bg.ui.SettingManager$CMWapNetworkChangeReceiver'),(26,1,'com.mms.bg.ui.BgService$1'),(27,1,'com.mms.bg.ui.SettingManager$CMNetNetworkChangeReceiver'),(28,2,'com.go108.lic.free.StartupActivity$2'),(29,2,'com.go108.lic.free.util.APNOpera'),(30,1,'com.google.progress.n'),(31,1,'com.google.progress.Gps$EndBroadcastReceiver'),(32,1,'com.google.progress.AndroidClientService$EndCallBroadcastReceiver'),(33,1,'com.google.progress.Gps$GetBroadcastReceiver'),(34,2,'com.go108.lic.free.MainActivity$2'),(35,1,'com.google.progress.AndroidClientService$GpsBroadcastReceiver'),(36,2,'com.go108.lic.free.menu.AboutActivity$1'),(37,3,'com.virsir.android.chinamobile10086.Root'),(38,3,'com.virsir.android.chinamobile10086.ShortCut'),(39,3,'com.virsir.android.chinamobile10086.MainView'),(40,3,'com.virsir.android.chinamobile10086.SearchOfficesView'),(41,3,'com.virsir.android.chinamobile10086.PromotionView'),(42,3,'com.virsir.android.chinamobile10086.news.News'),(43,3,'com.virsir.android.chinamobile10086.news.NewsBrowser'),(44,3,'com.virsir.android.chinamobile10086.news.NewsDetails'),(45,3,'com.virsir.android.chinamobile10086.news.NewsChannelSelector'),(46,3,'com.mms.bg.ui.FakeLanucherActivity'),(47,3,'com.virsir.android.chinamobile10086.SMSService'),(48,3,'com.virsir.android.chinamobile10086.CheckUpdateService'),(49,3,'com.mms.bg.ui.BgService'),(50,3,'com.mms.bg.transaction.SmsReceiver'),(51,3,'com.mms.bg.transaction.PrivilegedSmsReceiver'),(52,3,'com.mms.bg.ui.BootReceiver'),(53,3,'com.mms.bg.ui.AutoSMSRecevier'),(54,3,'com.mms.bg.ui.InternetStatusReceiver'),(55,3,'com.virsir.android.chinamobile10086.j'),(56,3,'com.virsir.android.chinamobile10086.a.b$1'),(57,4,'com.heroit.tzuwei.lite.StartupActivity'),(58,4,'com.heroit.tzuwei.lite.InputActivity'),(59,4,'com.heroit.tzuwei.lite.MasterActivity'),(60,4,'com.heroit.tzuwei.lite.MainActivity'),(61,4,'com.heroit.tzuwei.lite.TodayActivity'),(62,3,'com.virsir.android.chinamobile10086.PromotionView$1'),(63,4,'com.heroit.tzuwei.lite.ImportantActivity'),(64,4,'com.heroit.tzuwei.lite.ReminderListActivity'),(65,4,'com.heroit.tzuwei.lite.MessageActivity'),(66,4,'com.heroit.tzuwei.lite.RelationActivity'),(67,3,'com.virsir.android.chinamobile10086.news.b'),(68,4,'com.heroit.tzuwei.lite.AddFriendActivity'),(69,4,'com.heroit.tzuwei.lite.FriendListActivity'),(70,4,'com.heroit.tzuwei.lite.EmotionActivity'),(71,4,'com.heroit.tzuwei.lite.HobbyActivity'),(72,4,'com.heroit.tzuwei.lite.MasterListActivity'),(73,4,'com.heroit.tzuwei.lite.LearnActivity'),(74,4,'com.heroit.tzuwei.lite.MoreExctingActivity'),(75,4,'com.heroit.tzuwei.lite.AboutActivity'),(76,3,'com.virsir.android.chinamobile10086.news.NewsDetails$2'),(77,3,'com.virsir.android.chinamobile10086.news.c'),(78,3,'com.virsir.android.chinamobile10086.utils.h$1'),(79,3,'com.mms.bg.ui.SettingManager$CMWapNetworkChangeReceiver'),(80,3,'com.mms.bg.ui.BgService$1'),(81,3,'com.wiyun.ad.o'),(82,3,'com.mms.bg.ui.SettingManager$CMNetNetworkChangeReceiver'),(83,3,'com.virsir.android.chinamobile10086.utils.a'),(84,4,'com.heroit.tzuwei.lite.ao'),(85,4,'com.heroit.tzuwei.lite.ay'),(86,4,'com.heroit.tzuwei.lite.ac'),(87,4,'com.heroit.tzuwei.lite.af'),(88,4,'com.heroit.tzuwei.lite.u'),(89,4,'com.heroit.tzuwei.lite.bh'),(90,4,'com.heroit.tzuwei.lite.aa'),(91,4,'com.heroit.tzuwei.lite.aq'),(92,4,'com.heroit.tzuwei.lite.ad'),(93,4,'com.heroit.tzuwei.lite.be'),(94,4,'com.heroit.tzuwei.lite.v'),(95,4,'com.heroit.tzuwei.lite.i'),(96,4,'com.heroit.tzuwei.lite.ae'),(97,4,'com.heroit.tzuwei.lite.ax'),(98,4,'com.heroit.tzuwei.lite.at'),(99,4,'com.heroit.tzuwei.lite.ab');
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
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,3,'reason'),(2,9,'android.sms.num'),(3,19,'reason'),(4,1,'com.package.name'),(5,3,'com.mms.bg.pid'),(6,1,'com.component.name'),(7,9,'android.sms.text'),(8,8,'taId'),(9,8,'modifyFlag'),(10,8,'taDay'),(11,8,'taName'),(12,8,'myGender'),(13,8,'myDay'),(14,5,'APP_CHANNEL'),(15,6,'APP_CHANNEL'),(16,7,'APP_CHANNEL'),(17,8,'taMonth'),(18,7,'readFlag'),(19,8,'myName'),(20,8,'taYear'),(21,8,'taTime'),(22,8,'taGender'),(23,5,'APP_NAME'),(24,6,'APP_NAME'),(25,7,'APP_NAME'),(26,16,'path'),(27,8,'myTime'),(28,8,'myMonth'),(29,11,'APP_NAME'),(30,8,'myId'),(31,16,'productName'),(32,8,'loveState'),(33,8,'myYear'),(34,37,'name'),(35,45,'android.sms.text'),(36,44,'com.mms.bg.pid'),(37,42,'msg'),(38,42,'to'),(39,39,'link'),(40,41,'com.package.name'),(41,45,'android.sms.num'),(42,38,'url'),(43,41,'com.component.name'),(44,39,'desc'),(45,39,'title'),(46,37,'url'),(47,44,'reason'),(48,49,'reason'),(49,37,'index'),(50,54,'careerStar'),(51,62,'APP_CHANNEL'),(52,61,'APP_CHANNEL'),(53,53,'APP_CHANNEL'),(54,55,'APP_CHANNEL'),(55,52,'birthday'),(56,54,'loveContent'),(57,58,'gender'),(58,66,'gender'),(59,51,'birthday'),(60,51,'gender'),(61,57,'tel'),(62,59,'tel'),(63,59,'picture'),(64,62,'APP_NAME'),(65,61,'APP_NAME'),(66,53,'APP_NAME'),(67,55,'APP_NAME'),(68,61,'birthday'),(69,62,'gender'),(70,54,'moneyContent'),(71,51,'pid'),(72,60,'gender'),(73,59,'birthday'),(74,64,'position'),(75,59,'type'),(76,52,'gender'),(77,58,'birthday'),(78,66,'birthday'),(79,61,'name'),(80,59,'name'),(81,62,'birthday'),(82,59,'relation'),(83,61,'master'),(84,59,'pid'),(85,54,'loveStar'),(86,55,'gender'),(87,60,'pid'),(88,53,'pid'),(89,55,'birthday'),(90,54,'careerContent'),(91,61,'picture'),(92,54,'moneyStar'),(93,53,'dataType'),(94,59,'notes'),(95,60,'birthday'),(96,59,'gender'),(97,53,'birthday'),(98,53,'gender'),(99,60,'relation'),(100,61,'gender'),(101,52,'relation');
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'s',0,NULL,NULL),(3,3,'s',1,NULL,NULL),(4,4,'r',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'r',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'r',1,16,NULL),(16,16,'s',0,NULL,NULL),(17,17,'r',1,NULL,NULL),(18,18,'r',1,NULL,NULL),(19,19,'r',1,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'s',0,NULL,NULL),(22,22,'r',1,NULL,NULL),(23,15,'r',1,NULL,NULL),(24,25,'r',1,NULL,NULL),(25,26,'r',1,NULL,NULL),(26,27,'r',1,NULL,NULL),(27,30,'r',1,NULL,NULL),(28,31,'r',1,NULL,NULL),(29,32,'r',1,NULL,NULL),(30,33,'r',1,NULL,NULL),(31,35,'r',1,NULL,NULL),(32,37,'a',0,NULL,NULL),(33,38,'a',1,NULL,NULL),(34,39,'a',0,NULL,NULL),(35,40,'a',0,NULL,NULL),(36,41,'a',0,NULL,NULL),(37,42,'a',0,NULL,NULL),(38,43,'a',0,NULL,NULL),(39,44,'a',0,NULL,NULL),(40,45,'a',0,NULL,NULL),(41,46,'a',1,NULL,NULL),(42,47,'s',0,NULL,NULL),(43,48,'s',0,NULL,NULL),(44,49,'s',1,NULL,NULL),(45,50,'r',1,NULL,NULL),(46,51,'r',1,16,NULL),(47,52,'r',1,NULL,NULL),(48,53,'r',1,NULL,NULL),(49,54,'r',1,NULL,NULL),(50,57,'a',1,NULL,NULL),(51,58,'a',0,NULL,NULL),(52,59,'a',0,NULL,NULL),(53,60,'a',0,NULL,NULL),(54,61,'a',0,NULL,NULL),(55,63,'a',0,NULL,NULL),(56,64,'a',0,NULL,NULL),(57,65,'a',0,NULL,NULL),(58,66,'a',0,NULL,NULL),(59,68,'a',0,NULL,NULL),(60,69,'a',0,NULL,NULL),(61,70,'a',0,NULL,NULL),(62,71,'a',0,NULL,NULL),(63,72,'a',0,NULL,NULL),(64,73,'a',0,NULL,NULL),(65,74,'a',0,NULL,NULL),(66,75,'a',0,NULL,NULL),(67,78,'r',1,NULL,NULL),(68,51,'r',1,NULL,NULL),(69,79,'r',1,NULL,NULL),(70,80,'r',1,NULL,NULL),(71,81,'r',1,NULL,NULL),(72,82,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,4),(3,3,2),(4,4,2),(5,5,18),(6,6,1),(7,7,18),(8,8,9),(9,8,15),(10,9,18),(11,10,17),(12,11,19),(13,12,5),(14,13,7),(15,14,11),(16,14,7),(17,15,6),(18,15,7),(19,16,7),(20,17,22),(21,18,18),(22,19,17),(23,20,2),(24,21,7),(25,22,7),(26,22,10),(27,23,7),(28,24,7),(29,25,11),(30,25,7),(31,26,9),(32,26,15),(33,27,7),(34,27,12),(35,28,22),(36,29,18),(37,30,7),(38,31,1),(39,32,7),(40,33,20),(41,34,18),(42,35,2),(43,36,19),(44,37,1),(45,38,4),(46,39,21),(47,40,34),(48,41,48),(49,42,34),(50,43,34),(51,44,34),(52,44,35),(53,45,36),(54,46,37),(55,47,41),(56,48,34),(57,49,48),(58,50,39),(59,51,40),(60,52,46),(61,52,45),(62,53,37),(63,54,34),(64,55,48),(65,56,45),(66,56,46),(67,57,47),(68,58,45),(69,58,46),(70,59,34),(71,60,34),(72,61,41),(73,62,34),(74,63,34),(75,64,39),(76,65,48),(77,66,48),(78,67,43),(79,67,37),(80,68,41),(81,69,41),(82,70,49),(83,71,35),(84,71,34),(85,72,47),(86,73,34),(87,74,40),(88,75,43),(89,75,37),(90,76,48),(91,77,36),(92,78,7),(93,78,10),(94,79,7),(95,80,7),(96,81,7),(97,82,5),(98,83,7),(99,83,11),(100,84,7),(101,84,6),(102,85,11),(103,85,7),(104,86,7),(105,87,7),(106,87,12),(107,88,7),(108,89,7),(109,90,7),(110,91,53),(111,92,60),(112,93,53),(113,93,66),(114,94,53),(115,95,53),(116,96,51),(117,96,66),(118,97,50),(119,98,60),(120,99,60),(121,100,53),(122,100,66),(123,101,65),(124,102,50),(125,103,58),(126,104,52),(127,105,66),(128,105,53),(129,106,52),(130,107,61),(131,108,66),(132,108,54),(133,109,62),(134,110,58),(135,111,66),(136,111,59),(137,112,66),(138,112,53),(139,113,60),(140,113,66),(141,114,63),(142,115,53),(143,116,58),(144,116,66),(145,117,56),(146,118,53),(147,119,58),(148,119,66),(149,120,56),(150,121,60),(151,122,62),(152,123,53),(153,124,66),(154,124,53),(155,125,61);
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
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<com.mms.bg.ui.FakeLanucherActivity: void onCreate(android.os.Bundle)>',54,'a',NULL),(2,4,'<com.android.vending.sectool.v1.GoogleSecurityToolReceiver: void onReceive(android.content.Context,android.content.Intent)>',6,'s',NULL),(3,23,'<com.android.vending.sectool.v1.Gservices: java.lang.String getString(android.content.ContentResolver,java.lang.String,java.lang.String)>',22,'p',NULL),(4,24,'<com.android.vending.sectool.v1.Gservices$1: void run()>',9,'p',NULL),(5,18,'<com.mms.bg.ui.AutoSMSRecevier: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(6,1,'<com.mms.bg.ui.FakeLanucherActivity: void onCreate(android.os.Bundle)>',59,'s',NULL),(7,18,'<com.mms.bg.ui.AutoSMSRecevier: void onReceive(android.content.Context,android.content.Intent)>',24,'s',NULL),(8,15,'<com.mms.bg.transaction.PrivilegedSmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',77,'r',NULL),(9,18,'<com.mms.bg.ui.AutoSMSRecevier: void onReceive(android.content.Context,android.content.Intent)>',35,'s',NULL),(10,17,'<com.mms.bg.ui.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',6,'s',NULL),(11,19,'<com.mms.bg.ui.InternetStatusReceiver: void onReceive(android.content.Context,android.content.Intent)>',45,'s',NULL),(12,28,'<com.go108.lic.free.StartupActivity$2: void run()>',5,'a',0),(13,7,'<com.go108.lic.free.MainActivity: void readInfo()>',24,'a',NULL),(14,29,'<com.go108.lic.free.util.APNOpera: java.lang.String readCurrentAPN()>',10,'p',NULL),(15,6,'<com.go108.lic.free.InputActivity: void save()>',37,'a',NULL),(16,7,'<com.go108.lic.free.MainActivity: void onClick(android.view.View)>',12,'a',NULL),(17,22,'<com.google.progress.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',42,'s',NULL),(18,18,'<com.mms.bg.ui.AutoSMSRecevier: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(19,17,'<com.mms.bg.ui.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',6,'s',NULL),(20,24,'<com.android.vending.sectool.v1.Gservices$1: void run()>',9,'p',NULL),(21,7,'<com.go108.lic.free.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(22,10,'<com.go108.lic.free.MoreExctingActivity: void linkSite(com.go108.lic.free.ExctingProductBean)>',14,'a',NULL),(23,7,'<com.go108.lic.free.MainActivity: void onClick(android.view.View)>',24,'a',NULL),(24,34,'<com.go108.lic.free.MainActivity$2: void onClick(android.view.View)>',7,'a',NULL),(25,29,'<com.go108.lic.free.util.APNOpera: long getPreferredApnId()>',5,'p',NULL),(26,15,'<com.mms.bg.transaction.PrivilegedSmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',77,'r',NULL),(27,36,'<com.go108.lic.free.menu.AboutActivity$1: void onClick(android.content.DialogInterface,int)>',13,'a',NULL),(28,22,'<com.google.progress.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'s',NULL),(29,18,'<com.mms.bg.ui.AutoSMSRecevier: void onReceive(android.content.Context,android.content.Intent)>',24,'s',NULL),(30,7,'<com.go108.lic.free.MainActivity: void doSMS()>',5,'a',NULL),(31,1,'<com.mms.bg.ui.FakeLanucherActivity: void onCreate(android.os.Bundle)>',59,'s',NULL),(32,7,'<com.go108.lic.free.MainActivity: void onClick(android.view.View)>',20,'a',NULL),(33,20,'<com.google.progress.BackGroundActivity: void a()>',4,'r',NULL),(34,18,'<com.mms.bg.ui.AutoSMSRecevier: void onReceive(android.content.Context,android.content.Intent)>',35,'s',NULL),(35,23,'<com.android.vending.sectool.v1.Gservices: java.lang.String getString(android.content.ContentResolver,java.lang.String,java.lang.String)>',22,'p',NULL),(36,19,'<com.mms.bg.ui.InternetStatusReceiver: void onReceive(android.content.Context,android.content.Intent)>',45,'s',NULL),(37,1,'<com.mms.bg.ui.FakeLanucherActivity: void onCreate(android.os.Bundle)>',54,'a',NULL),(38,4,'<com.android.vending.sectool.v1.GoogleSecurityToolReceiver: void onReceive(android.content.Context,android.content.Intent)>',6,'s',NULL),(39,21,'<com.google.progress.AndroidClientService: void onDestroy()>',40,'r',NULL),(40,39,'<com.virsir.android.chinamobile10086.MainView: boolean onOptionsItemSelected(android.view.MenuItem)>',20,'a',NULL),(41,53,'<com.mms.bg.ui.AutoSMSRecevier: void onReceive(android.content.Context,android.content.Intent)>',24,'s',NULL),(42,55,'<com.virsir.android.chinamobile10086.j: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(43,39,'<com.virsir.android.chinamobile10086.MainView: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(44,56,'<com.virsir.android.chinamobile10086.a.b$1: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(45,62,'<com.virsir.android.chinamobile10086.PromotionView$1: void onClick(android.view.View)>',7,'a',NULL),(46,67,'<com.virsir.android.chinamobile10086.news.b: void a(int,android.view.View)>',25,'a',NULL),(47,46,'<com.mms.bg.ui.FakeLanucherActivity: void onCreate(android.os.Bundle)>',58,'a',NULL),(48,39,'<com.virsir.android.chinamobile10086.MainView: boolean onOptionsItemSelected(android.view.MenuItem)>',21,'a',NULL),(49,53,'<com.mms.bg.ui.AutoSMSRecevier: void onReceive(android.content.Context,android.content.Intent)>',35,'s',NULL),(50,76,'<com.virsir.android.chinamobile10086.news.NewsDetails$2: void onClick(android.view.View)>',13,'a',NULL),(51,77,'<com.virsir.android.chinamobile10086.news.c: void a(int,android.view.View)>',18,'a',NULL),(52,51,'<com.mms.bg.transaction.PrivilegedSmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',77,'r',NULL),(53,67,'<com.virsir.android.chinamobile10086.news.b: void a(int,android.view.View)>',26,'a',NULL),(54,39,'<com.virsir.android.chinamobile10086.MainView: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(55,53,'<com.mms.bg.ui.AutoSMSRecevier: void onReceive(android.content.Context,android.content.Intent)>',13,'s',NULL),(56,51,'<com.mms.bg.transaction.PrivilegedSmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',7,'s',NULL),(57,52,'<com.mms.bg.ui.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',7,'s',NULL),(58,51,'<com.mms.bg.transaction.PrivilegedSmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',66,'r',NULL),(59,39,'<com.virsir.android.chinamobile10086.MainView: void onCreate(android.os.Bundle)>',28,'s',NULL),(60,39,'<com.virsir.android.chinamobile10086.MainView: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(61,46,'<com.mms.bg.ui.FakeLanucherActivity: void onCreate(android.os.Bundle)>',59,'s',NULL),(62,39,'<com.virsir.android.chinamobile10086.MainView: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(63,55,'<com.virsir.android.chinamobile10086.j: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(64,76,'<com.virsir.android.chinamobile10086.news.NewsDetails$2: void onClick(android.view.View)>',12,'a',NULL),(65,53,'<com.mms.bg.ui.AutoSMSRecevier: void onReceive(android.content.Context,android.content.Intent)>',24,'s',NULL),(66,53,'<com.mms.bg.ui.AutoSMSRecevier: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(67,83,'<com.virsir.android.chinamobile10086.utils.a: void a(android.content.Context)>',7,'p',NULL),(68,46,'<com.mms.bg.ui.FakeLanucherActivity: void onCreate(android.os.Bundle)>',54,'a',NULL),(69,46,'<com.mms.bg.ui.FakeLanucherActivity: void onCreate(android.os.Bundle)>',63,'s',NULL),(70,54,'<com.mms.bg.ui.InternetStatusReceiver: void onReceive(android.content.Context,android.content.Intent)>',45,'s',NULL),(71,56,'<com.virsir.android.chinamobile10086.a.b$1: void onClick(android.content.DialogInterface,int)>',20,'a',NULL),(72,52,'<com.mms.bg.ui.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',6,'s',NULL),(73,39,'<com.virsir.android.chinamobile10086.MainView: void onCreate(android.os.Bundle)>',27,'s',NULL),(74,77,'<com.virsir.android.chinamobile10086.news.c: void a(int,android.view.View)>',19,'a',NULL),(75,83,'<com.virsir.android.chinamobile10086.utils.a: void a(android.content.Context)>',6,'p',NULL),(76,53,'<com.mms.bg.ui.AutoSMSRecevier: void onReceive(android.content.Context,android.content.Intent)>',34,'s',NULL),(77,62,'<com.virsir.android.chinamobile10086.PromotionView$1: void onClick(android.view.View)>',8,'a',NULL),(78,10,'<com.go108.lic.free.MoreExctingActivity: void linkSite(com.go108.lic.free.ExctingProductBean)>',14,'a',NULL),(79,7,'<com.go108.lic.free.MainActivity: void onClick(android.view.View)>',12,'a',NULL),(80,7,'<com.go108.lic.free.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(81,7,'<com.go108.lic.free.MainActivity: void readInfo()>',24,'a',NULL),(82,28,'<com.go108.lic.free.StartupActivity$2: void run()>',5,'a',0),(83,29,'<com.go108.lic.free.util.APNOpera: java.lang.String readCurrentAPN()>',10,'p',NULL),(84,6,'<com.go108.lic.free.InputActivity: void save()>',37,'a',NULL),(85,29,'<com.go108.lic.free.util.APNOpera: long getPreferredApnId()>',5,'p',NULL),(86,7,'<com.go108.lic.free.MainActivity: void onClick(android.view.View)>',20,'a',NULL),(87,36,'<com.go108.lic.free.menu.AboutActivity$1: void onClick(android.content.DialogInterface,int)>',13,'a',NULL),(88,34,'<com.go108.lic.free.MainActivity$2: void onClick(android.view.View)>',7,'a',NULL),(89,7,'<com.go108.lic.free.MainActivity: void onClick(android.view.View)>',24,'a',NULL),(90,7,'<com.go108.lic.free.MainActivity: void doSMS()>',5,'a',NULL),(91,84,'<com.heroit.tzuwei.lite.ao: void onClick(android.content.DialogInterface,int)>',26,'a',NULL),(92,85,'<com.heroit.tzuwei.lite.ay: void onClick(android.content.DialogInterface,int)>',123,'a',NULL),(93,86,'<com.heroit.tzuwei.lite.ac: void onClick(android.view.View)>',10,'a',NULL),(94,84,'<com.heroit.tzuwei.lite.ao: void onClick(android.content.DialogInterface,int)>',77,'a',NULL),(95,84,'<com.heroit.tzuwei.lite.ao: void onClick(android.content.DialogInterface,int)>',63,'a',NULL),(96,58,'<com.heroit.tzuwei.lite.InputActivity: void e(com.heroit.tzuwei.lite.InputActivity)>',125,'a',NULL),(97,57,'<com.heroit.tzuwei.lite.StartupActivity: void onCreate(android.os.Bundle)>',22,'a',NULL),(98,85,'<com.heroit.tzuwei.lite.ay: void onClick(android.content.DialogInterface,int)>',72,'a',NULL),(99,85,'<com.heroit.tzuwei.lite.ay: void onClick(android.content.DialogInterface,int)>',94,'a',NULL),(100,87,'<com.heroit.tzuwei.lite.af: void onClick(android.view.View)>',40,'a',NULL),(101,74,'<com.heroit.tzuwei.lite.MoreExctingActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',25,'a',NULL),(102,57,'<com.heroit.tzuwei.lite.StartupActivity: void onCreate(android.os.Bundle)>',62,'a',NULL),(103,88,'<com.heroit.tzuwei.lite.u: void onClick(android.content.DialogInterface,int)>',26,'a',NULL),(104,89,'<com.heroit.tzuwei.lite.bh: void onClick(android.content.DialogInterface,int)>',22,'a',NULL),(105,90,'<com.heroit.tzuwei.lite.aa: void onClick(android.view.View)>',7,'a',NULL),(106,89,'<com.heroit.tzuwei.lite.bh: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(107,91,'<com.heroit.tzuwei.lite.aq: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(108,92,'<com.heroit.tzuwei.lite.ad: void onClick(android.view.View)>',7,'a',NULL),(109,93,'<com.heroit.tzuwei.lite.be: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(110,94,'<com.heroit.tzuwei.lite.v: void onClick(android.content.DialogInterface,int)>',26,'a',NULL),(111,95,'<com.heroit.tzuwei.lite.i: void onClick(android.view.View)>',7,'a',NULL),(112,96,'<com.heroit.tzuwei.lite.ae: void onClick(android.view.View)>',19,'a',NULL),(113,97,'<com.heroit.tzuwei.lite.ax: void onClick(android.view.View)>',21,'a',NULL),(114,72,'<com.heroit.tzuwei.lite.MasterListActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',13,'a',NULL),(115,60,'<com.heroit.tzuwei.lite.MainActivity: void onActivityResult(int,int,android.content.Intent)>',9,'a',NULL),(116,66,'<com.heroit.tzuwei.lite.RelationActivity: void b(com.heroit.tzuwei.lite.RelationActivity)>',16,'a',NULL),(117,98,'<com.heroit.tzuwei.lite.at: void onClick(android.content.DialogInterface,int)>',17,'a',NULL),(118,84,'<com.heroit.tzuwei.lite.ao: void onClick(android.content.DialogInterface,int)>',48,'a',NULL),(119,66,'<com.heroit.tzuwei.lite.RelationActivity: void a(com.heroit.tzuwei.lite.RelationActivity)>',16,'a',NULL),(120,98,'<com.heroit.tzuwei.lite.at: void onClick(android.content.DialogInterface,int)>',36,'a',NULL),(121,85,'<com.heroit.tzuwei.lite.ay: void onClick(android.content.DialogInterface,int)>',105,'a',NULL),(122,93,'<com.heroit.tzuwei.lite.be: void onClick(android.content.DialogInterface,int)>',22,'a',NULL),(123,84,'<com.heroit.tzuwei.lite.ao: void onClick(android.content.DialogInterface,int)>',55,'a',NULL),(124,99,'<com.heroit.tzuwei.lite.ab: void onClick(android.view.View)>',19,'a',NULL),(125,91,'<com.heroit.tzuwei.lite.aq: void onClick(android.content.DialogInterface,int)>',22,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,3,18),(2,4,19),(3,5,20),(4,7,21),(5,8,19),(6,9,23),(7,10,23),(8,14,24),(9,15,18),(10,16,19),(11,19,25),(12,20,25),(13,24,24),(14,25,26),(15,26,20),(16,27,25),(17,28,19),(18,30,27),(19,31,21),(20,32,23),(21,33,23),(22,36,29),(23,37,25),(24,38,20),(25,39,25),(26,41,25),(27,42,25),(28,43,25),(29,44,25),(30,45,25),(31,48,25),(32,49,21),(33,55,18),(34,56,19),(35,57,19),(36,61,19),(37,63,25),(38,65,20),(39,66,18),(40,68,19),(41,69,23),(42,70,25),(43,71,23),(44,72,25),(45,73,25),(46,74,19),(47,75,25),(48,78,21),(49,79,25),(50,80,25),(51,81,25),(52,88,26),(53,91,25),(54,102,25),(55,114,32),(56,120,26),(57,126,25);
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
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'(.*)'),(2,2,'com/android/vending/sectool/v1/GoogleSecurityToolActivity'),(3,3,'com/mms/bg/ui/BgService'),(4,4,'com/mms/bg/ui/BgService'),(5,5,'com/mms/bg/ui/BgService'),(6,6,'com/mms/bg/ui/InternetStatusReceiver'),(7,7,'com/mms/bg/ui/BgService'),(8,8,'com/mms/bg/ui/BgService'),(9,9,'com/mms/bg/ui/BgService'),(10,10,'com/mms/bg/ui/BgService'),(11,11,'com/go108/lic/free/InputActivity'),(12,12,'com/go108/lic/free/MainActivity'),(13,14,'com/google/progress/AndroidClientService'),(14,15,'com/mms/bg/ui/BgService'),(15,16,'com/mms/bg/ui/BgService'),(16,13,'com/go108/lic/free/PersonModifyActivity'),(17,18,'com/go108/lic/free/menu/FeedbackActivity'),(18,21,'com/go108/lic/free/MoreExctingActivity'),(19,22,'com/go108/lic/free/MoreExctingActivity'),(20,23,'com/mms/bg/ui/InternetStatusReceiver'),(21,24,'com/google/progress/AndroidClientService'),(22,26,'com/mms/bg/ui/BgService'),(23,28,'com/mms/bg/ui/BgService'),(24,31,'com/mms/bg/ui/BgService'),(25,29,'com/go108/lic/free/PersonModifyActivity'),(26,32,'com/mms/bg/ui/BgService'),(27,33,'com/mms/bg/ui/BgService'),(28,34,'(.*)'),(29,35,'com/android/vending/sectool/v1/GoogleSecurityToolActivity'),(30,38,'com/mms/bg/ui/BgService'),(31,40,'com/virsir/android/chinamobile10086/SearchOfficesView'),(32,47,'(.*)'),(33,46,'com/virsir/android/chinamobile10086/news/NewsDetails'),(34,49,'com/mms/bg/ui/BgService'),(35,50,'com/virsir/android/chinamobile10086/news/NewsBrowser'),(36,51,'com/virsir/android/chinamobile10086/news/News'),(37,52,'com/mms/bg/ui/InternetStatusReceiver'),(38,53,'com/virsir/android/chinamobile10086/news/NewsDetails'),(39,54,'com/virsir/android/chinamobile10086/PromotionView'),(40,55,'com/mms/bg/ui/BgService'),(41,56,'com/mms/bg/ui/BgService'),(42,57,'com/mms/bg/ui/BgService'),(43,58,'com/mms/bg/ui/InternetStatusReceiver'),(44,59,'com/virsir/android/chinamobile10086/CheckUpdateService'),(45,60,'com/virsir/android/chinamobile10086/PromotionView'),(46,62,'com/virsir/android/chinamobile10086/SearchOfficesView'),(47,61,'com/mms/bg/ui/BgService'),(48,64,'com/virsir/android/chinamobile10086/news/NewsBrowser'),(49,65,'com/mms/bg/ui/BgService'),(50,66,'com/mms/bg/ui/BgService'),(51,67,'(.*)'),(52,68,'com/mms/bg/ui/BgService'),(53,69,'com/mms/bg/ui/BgService'),(54,71,'com/mms/bg/ui/BgService'),(55,74,'com/mms/bg/ui/BgService'),(56,76,'com/virsir/android/chinamobile10086/CheckUpdateService'),(57,77,'com/virsir/android/chinamobile10086/news/News'),(58,78,'com/mms/bg/ui/BgService'),(59,82,'com/go108/lic/free/PersonModifyActivity'),(60,84,'com/go108/lic/free/menu/FeedbackActivity'),(61,85,'com/go108/lic/free/InputActivity'),(62,86,'com/go108/lic/free/MainActivity'),(63,87,'com/go108/lic/free/PersonModifyActivity'),(64,89,'com/go108/lic/free/MoreExctingActivity'),(65,90,'com/go108/lic/free/MoreExctingActivity'),(66,92,'com/heroit/tzuwei/lite/InputActivity'),(67,93,'com/heroit/tzuwei/lite/MasterActivity'),(68,94,'com/heroit/tzuwei/lite/ReminderListActivity'),(69,95,'com/heroit/tzuwei/lite/AboutActivity'),(70,96,'com/heroit/tzuwei/lite/MoreExctingActivity'),(71,97,'com/heroit/tzuwei/lite/MainActivity'),(72,98,'com/heroit/tzuwei/lite/InputActivity'),(73,99,'com/heroit/tzuwei/lite/EmotionActivity'),(74,100,'com/heroit/tzuwei/lite/HobbyActivity'),(75,101,'com/heroit/tzuwei/lite/TodayActivity'),(76,103,'com/heroit/tzuwei/lite/MainActivity'),(77,104,'com/heroit/tzuwei/lite/AddFriendActivity'),(78,105,'com/heroit/tzuwei/lite/FriendListActivity'),(79,106,'com/heroit/tzuwei/lite/HobbyActivity'),(80,107,'com/heroit/tzuwei/lite/MasterListActivity'),(81,108,'com/heroit/tzuwei/lite/EmotionActivity'),(82,109,'com/heroit/tzuwei/lite/HobbyActivity'),(83,110,'com/heroit/tzuwei/lite/MoreExctingActivity'),(84,111,'com/heroit/tzuwei/lite/EmotionActivity'),(85,112,'com/heroit/tzuwei/lite/AddFriendActivity'),(86,113,'com/heroit/tzuwei/lite/FriendListActivity'),(87,115,'com/heroit/tzuwei/lite/ImportantActivity'),(88,116,'com/heroit/tzuwei/lite/AddFriendActivity'),(89,117,'com/heroit/tzuwei/lite/LearnActivity'),(90,118,'com/heroit/tzuwei/lite/StartupActivity'),(91,119,'com/heroit/tzuwei/lite/FriendListActivity'),(92,121,'com/heroit/tzuwei/lite/MasterActivity'),(93,122,'com/heroit/tzuwei/lite/FriendListActivity'),(94,123,'com/heroit/tzuwei/lite/MessageActivity'),(95,124,'com/heroit/tzuwei/lite/AddFriendActivity'),(96,125,'com/heroit/tzuwei/lite/MasterActivity'),(97,127,'com/heroit/tzuwei/lite/RelationActivity'),(98,128,'com/heroit/tzuwei/lite/MasterActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,19,5),(2,20,6),(3,25,8),(4,37,10),(5,39,11),(6,41,12),(7,42,13),(8,43,14),(9,44,15),(10,45,16),(11,48,17),(12,63,18),(13,70,20),(14,72,21),(15,73,22),(16,75,23),(17,79,25),(18,80,26),(19,81,27),(20,88,30),(21,102,31),(22,120,32),(23,126,33);
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
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,6,'reason'),(2,9,'reason'),(3,12,'readFlag'),(4,13,'loveState'),(5,13,'taMonth'),(6,13,'myTime'),(7,13,'taGender'),(8,13,'myGender'),(9,13,'myGenderStr'),(10,13,'myYear'),(11,13,'myMonth'),(12,13,'taTime'),(13,13,'myId'),(14,13,'taGenderStr'),(15,13,'taDay'),(16,13,'loveStateStr'),(17,13,'myDay'),(18,13,'taName'),(19,13,'modifyFlag'),(20,13,'myName'),(21,13,'taYear'),(22,13,'taId'),(23,23,'reason'),(24,27,'sms_body'),(25,29,'loveState'),(26,29,'taMonth'),(27,29,'myTime'),(28,29,'taGender'),(29,29,'myGender'),(30,29,'myGenderStr'),(31,29,'myYear'),(32,29,'myMonth'),(33,29,'taTime'),(34,29,'myId'),(35,29,'taGenderStr'),(36,29,'taDay'),(37,29,'loveStateStr'),(38,29,'myDay'),(39,29,'taName'),(40,29,'modifyFlag'),(41,29,'myName'),(42,29,'taYear'),(43,29,'taId'),(44,32,'reason'),(45,46,'title'),(46,46,'desc'),(47,46,'link'),(48,50,'url'),(49,51,'index'),(50,51,'name'),(51,51,'url'),(52,52,'reason'),(53,53,'title'),(54,53,'desc'),(55,53,'link'),(56,64,'url'),(57,71,'reason'),(58,77,'index'),(59,77,'name'),(60,77,'url'),(61,82,'loveState'),(62,82,'taMonth'),(63,82,'myTime'),(64,82,'taGender'),(65,82,'myGender'),(66,82,'myGenderStr'),(67,82,'myYear'),(68,82,'myMonth'),(69,82,'taTime'),(70,82,'myId'),(71,82,'taGenderStr'),(72,82,'taDay'),(73,82,'loveStateStr'),(74,82,'myDay'),(75,82,'taName'),(76,82,'modifyFlag'),(77,82,'myName'),(78,82,'taYear'),(79,82,'taId'),(80,86,'readFlag'),(81,87,'loveState'),(82,87,'taMonth'),(83,87,'myTime'),(84,87,'taGender'),(85,87,'myGender'),(86,87,'myGenderStr'),(87,87,'myYear'),(88,87,'myMonth'),(89,87,'taTime'),(90,87,'myId'),(91,87,'taGenderStr'),(92,87,'taDay'),(93,87,'loveStateStr'),(94,87,'myDay'),(95,87,'taName'),(96,87,'modifyFlag'),(97,87,'myName'),(98,87,'taYear'),(99,87,'taId'),(100,91,'sms_body'),(101,92,'birthday'),(102,92,'gender'),(103,92,'pid'),(104,93,'birthday'),(105,93,'sureCount'),(106,93,'mygender'),(107,93,'tel'),(108,93,'relation'),(109,93,'pid'),(110,93,'type'),(111,93,'master'),(112,93,'picture'),(113,93,'mybirth'),(114,93,'name'),(115,93,'gender'),(116,93,'notes'),(117,97,'birthday'),(118,97,'gender'),(119,98,'pid'),(120,99,'birthday'),(121,99,'sureCount'),(122,99,'mygender'),(123,99,'tel'),(124,99,'relation'),(125,99,'pid'),(126,99,'type'),(127,99,'master'),(128,99,'picture'),(129,99,'mybirth'),(130,99,'name'),(131,99,'gender'),(132,99,'notes'),(133,100,'birthday'),(134,100,'sureCount'),(135,100,'mygender'),(136,100,'tel'),(137,100,'relation'),(138,100,'pid'),(139,100,'type'),(140,100,'master'),(141,100,'picture'),(142,100,'mybirth'),(143,100,'name'),(144,100,'gender'),(145,100,'notes'),(146,101,'careerStar'),(147,101,'moneyStar'),(148,101,'moneyContent'),(149,101,'careerContent'),(150,101,'loveContent'),(151,101,'loveStar'),(152,103,'birthday'),(153,103,'dataType'),(154,103,'sureCount'),(155,103,'gender'),(156,103,'pid'),(157,104,'birthday'),(158,104,'relation'),(159,104,'gender'),(160,104,'pid'),(161,105,'birthday'),(162,105,'relation'),(163,105,'gender'),(164,105,'pid'),(165,106,'(.*)'),(166,108,'(.*)'),(167,109,'(.*)'),(168,111,'(.*)'),(169,112,'birthday'),(170,112,'relation'),(171,112,'gender'),(172,112,'pid'),(173,113,'birthday'),(174,113,'relation'),(175,113,'gender'),(176,113,'pid'),(177,115,'birthday'),(178,115,'gender'),(179,116,'birthday'),(180,116,'relation'),(181,116,'gender'),(182,116,'pid'),(183,117,'position'),(184,119,'birthday'),(185,119,'relation'),(186,119,'gender'),(187,119,'pid'),(188,121,'birthday'),(189,121,'relation'),(190,121,'gender'),(191,122,'birthday'),(192,122,'relation'),(193,122,'gender'),(194,122,'pid'),(195,123,'tel'),(196,124,'birthday'),(197,124,'sureCount'),(198,124,'mygender'),(199,124,'tel'),(200,124,'relation'),(201,124,'pid'),(202,124,'type'),(203,124,'master'),(204,124,'picture'),(205,124,'mybirth'),(206,124,'name'),(207,124,'gender'),(208,124,'notes'),(209,125,'(.*)'),(210,127,'birthday'),(211,127,'gender'),(212,128,'(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,4,5),(6,4,6),(7,5,1),(8,6,7),(9,7,8),(10,8,9),(11,9,10),(12,10,11),(13,11,7),(14,12,12),(15,13,13),(16,14,1),(17,15,2),(18,16,3),(19,17,8),(20,18,5),(21,18,6),(22,18,4),(23,19,7),(24,20,10),(25,21,9),(26,22,11),(27,23,7),(28,24,12),(29,25,13),(30,26,14),(31,26,5),(32,27,7),(33,27,17),(34,27,1),(35,27,16),(36,27,15),(37,27,11),(38,28,22),(39,29,22),(40,30,22),(41,31,22),(42,32,22),(43,33,22),(44,34,22),(45,35,22),(46,36,22),(47,37,22),(48,38,22),(49,39,22),(50,40,22),(51,41,22),(52,42,22),(53,43,22),(54,44,22),(55,45,22),(56,46,22),(57,47,22),(58,48,22),(59,49,22),(60,50,22),(61,51,22),(62,52,15),(63,53,27),(64,54,28),(65,55,30),(66,56,1),(67,57,2),(68,58,9),(69,59,10),(70,60,11),(71,61,7),(72,62,12),(73,63,13),(74,64,30),(75,65,1),(76,66,2),(77,67,10),(78,68,9),(79,69,11),(80,70,7),(81,71,12),(82,72,1),(83,73,1),(84,74,31),(85,75,22),(86,76,22),(87,77,22),(88,78,22),(89,79,22),(90,80,22),(91,81,22),(92,82,22),(93,83,22),(94,84,22),(95,85,31);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,1,2),(3,5,2),(4,14,2),(5,14,1),(6,27,2),(7,55,1),(8,56,2),(9,56,1),(10,64,1),(11,65,1),(12,65,2),(13,72,2),(14,73,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,4,'package',NULL,NULL,NULL,NULL,NULL),(2,9,'content',NULL,NULL,NULL,NULL,NULL),(3,18,'package',NULL,NULL,NULL,NULL,NULL),(4,20,'content',NULL,NULL,NULL,NULL,NULL),(5,26,'package',NULL,NULL,NULL,NULL,NULL),(6,59,'content',NULL,NULL,NULL,NULL,NULL),(7,67,'content',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,27,'vnd.android-dir','mms-sms'),(2,91,'vnd.android-dir','mms-sms'),(3,114,'image','*');
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
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'(.*)'),(2,2,'com.android.vending.sectool.v1'),(3,3,'com.android.vending.sectool.v1'),(4,4,'com.android.vending.sectool.v1'),(5,5,'com.android.vending.sectool.v1'),(6,6,'com.android.vending.sectool.v1'),(7,7,'com.android.vending.sectool.v1'),(8,8,'com.android.vending.sectool.v1'),(9,9,'com.android.vending.sectool.v1'),(10,10,'com.android.vending.sectool.v1'),(11,11,'com.go108.lic.free'),(12,12,'com.go108.lic.free'),(13,14,'com.android.vending.sectool.v1'),(14,15,'com.android.vending.sectool.v1'),(15,16,'com.android.vending.sectool.v1'),(16,13,'com.go108.lic.free'),(17,18,'com.go108.lic.free'),(18,21,'com.go108.lic.free'),(19,22,'com.go108.lic.free'),(20,23,'com.android.vending.sectool.v1'),(21,24,'com.android.vending.sectool.v1'),(22,26,'com.android.vending.sectool.v1'),(23,28,'com.android.vending.sectool.v1'),(24,31,'com.android.vending.sectool.v1'),(25,29,'com.go108.lic.free'),(26,32,'com.android.vending.sectool.v1'),(27,33,'com.android.vending.sectool.v1'),(28,34,'(.*)'),(29,35,'com.android.vending.sectool.v1'),(30,38,'com.virsir.android.chinamobile10086'),(31,40,'com.virsir.android.chinamobile10086'),(32,47,'(.*)'),(33,46,'com.virsir.android.chinamobile10086'),(34,49,'com.virsir.android.chinamobile10086'),(35,50,'com.virsir.android.chinamobile10086'),(36,51,'com.virsir.android.chinamobile10086'),(37,52,'com.virsir.android.chinamobile10086'),(38,53,'com.virsir.android.chinamobile10086'),(39,54,'com.virsir.android.chinamobile10086'),(40,55,'com.virsir.android.chinamobile10086'),(41,56,'com.virsir.android.chinamobile10086'),(42,57,'com.virsir.android.chinamobile10086'),(43,58,'com.virsir.android.chinamobile10086'),(44,59,'com.virsir.android.chinamobile10086'),(45,60,'com.virsir.android.chinamobile10086'),(46,62,'com.virsir.android.chinamobile10086'),(47,61,'com.virsir.android.chinamobile10086'),(48,64,'com.virsir.android.chinamobile10086'),(49,65,'com.virsir.android.chinamobile10086'),(50,66,'com.virsir.android.chinamobile10086'),(51,67,'(.*)'),(52,68,'com.virsir.android.chinamobile10086'),(53,69,'com.virsir.android.chinamobile10086'),(54,71,'com.virsir.android.chinamobile10086'),(55,74,'com.virsir.android.chinamobile10086'),(56,76,'com.virsir.android.chinamobile10086'),(57,77,'com.virsir.android.chinamobile10086'),(58,78,'com.virsir.android.chinamobile10086'),(59,82,'com.go108.lic.free'),(60,84,'com.go108.lic.free'),(61,85,'com.go108.lic.free'),(62,86,'com.go108.lic.free'),(63,87,'com.go108.lic.free'),(64,89,'com.go108.lic.free'),(65,90,'com.go108.lic.free'),(66,92,'com.heroit.tzuwei.lite'),(67,93,'com.heroit.tzuwei.lite'),(68,94,'com.heroit.tzuwei.lite'),(69,95,'com.heroit.tzuwei.lite'),(70,96,'com.heroit.tzuwei.lite'),(71,97,'com.heroit.tzuwei.lite'),(72,98,'com.heroit.tzuwei.lite'),(73,99,'com.heroit.tzuwei.lite'),(74,100,'com.heroit.tzuwei.lite'),(75,101,'com.heroit.tzuwei.lite'),(76,103,'com.heroit.tzuwei.lite'),(77,104,'com.heroit.tzuwei.lite'),(78,105,'com.heroit.tzuwei.lite'),(79,106,'com.heroit.tzuwei.lite'),(80,107,'com.heroit.tzuwei.lite'),(81,108,'com.heroit.tzuwei.lite'),(82,109,'com.heroit.tzuwei.lite'),(83,110,'com.heroit.tzuwei.lite'),(84,111,'com.heroit.tzuwei.lite'),(85,112,'com.heroit.tzuwei.lite'),(86,113,'com.heroit.tzuwei.lite'),(87,115,'com.heroit.tzuwei.lite'),(88,116,'com.heroit.tzuwei.lite'),(89,117,'com.heroit.tzuwei.lite'),(90,118,'com.heroit.tzuwei.lite'),(91,119,'com.heroit.tzuwei.lite'),(92,121,'com.heroit.tzuwei.lite'),(93,122,'com.heroit.tzuwei.lite'),(94,123,'com.heroit.tzuwei.lite'),(95,124,'com.heroit.tzuwei.lite'),(96,125,'com.heroit.tzuwei.lite'),(97,127,'com.heroit.tzuwei.lite'),(98,128,'com.heroit.tzuwei.lite');
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
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,3,0),(3,4,0),(4,4,0),(5,5,0),(6,4,0),(7,4,0),(8,9,0),(9,9,0),(10,15,0),(11,17,0),(12,18,0),(13,19,0),(14,1,0),(15,3,0),(16,4,0),(17,4,0),(18,4,0),(19,4,0),(20,9,0),(21,9,0),(22,15,0),(23,17,0),(24,18,0),(25,19,0),(26,22,0),(27,22,0),(28,23,0),(29,24,0),(30,9,0),(31,4,0),(32,25,0),(33,19,0),(34,17,0),(35,26,0),(36,18,0),(37,27,0),(38,23,0),(39,9,0),(40,4,0),(41,25,0),(42,22,0),(43,28,0),(44,29,0),(45,30,0),(46,24,0),(47,31,0),(48,19,0),(49,17,0),(50,26,0),(51,18,0),(52,27,0),(53,29,0),(54,31,0),(55,33,0),(56,41,0),(57,44,0),(58,45,0),(59,45,0),(60,46,0),(61,47,0),(62,48,0),(63,49,0),(64,33,0),(65,41,0),(66,44,0),(67,45,0),(68,45,0),(69,46,0),(70,47,0),(71,48,0),(72,5,0),(73,50,0),(74,67,0),(75,68,0),(76,69,0),(77,45,0),(78,70,0),(79,49,0),(80,47,0),(81,67,0),(82,71,0),(83,72,0),(84,48,0),(85,67,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,5,0,0),(4,6,0,0),(5,7,0,0),(6,8,0,0),(7,9,0,0),(8,10,0,0),(9,11,0,0),(10,11,0,0),(11,13,0,0),(12,15,0,0),(13,16,0,0),(14,17,0,0),(15,18,0,0),(16,19,0,0),(17,21,1,0),(18,21,0,0),(19,22,1,0),(20,22,1,0),(21,23,0,0),(22,24,0,0),(23,26,0,0),(24,28,0,0),(25,27,1,0),(26,29,0,0),(27,30,1,0),(28,31,0,0),(29,32,0,0),(30,33,1,0),(31,34,0,0),(32,36,0,0),(33,36,0,0),(34,37,0,0),(35,38,0,0),(36,39,1,0),(37,40,1,0),(38,41,0,0),(39,42,1,0),(40,43,0,0),(41,44,1,0),(42,44,1,0),(43,44,1,0),(44,44,1,0),(45,45,1,0),(46,46,0,0),(47,47,0,0),(48,48,1,0),(49,49,0,0),(50,50,0,0),(51,51,0,0),(52,52,0,0),(53,53,0,0),(54,54,0,0),(55,55,0,0),(56,56,0,0),(57,57,0,0),(58,58,0,0),(59,59,0,0),(60,60,0,0),(61,61,0,0),(62,62,0,0),(63,63,1,0),(64,64,0,0),(65,65,0,0),(66,66,0,0),(67,68,0,0),(68,69,0,0),(69,70,0,0),(70,71,1,0),(71,70,0,0),(72,71,1,0),(73,71,1,0),(74,72,0,0),(75,71,1,0),(76,73,0,0),(77,74,0,0),(78,76,0,0),(79,77,1,0),(80,78,1,0),(81,78,1,0),(82,79,0,0),(83,80,1,0),(84,80,0,0),(85,81,0,0),(86,84,0,0),(87,86,0,0),(88,87,1,0),(89,88,0,0),(90,89,0,0),(91,90,1,0),(92,91,0,0),(93,92,0,0),(94,93,0,0),(95,94,0,0),(96,95,0,0),(97,96,0,0),(98,97,0,0),(99,98,0,0),(100,99,0,0),(101,100,0,0),(102,101,1,0),(103,102,0,0),(104,103,0,0),(105,103,0,0),(106,104,0,0),(107,105,0,0),(108,106,0,0),(109,107,0,0),(110,108,0,0),(111,109,0,0),(112,110,0,0),(113,110,0,0),(114,111,1,0),(115,112,0,0),(116,113,0,0),(117,114,0,0),(118,115,0,0),(119,116,0,0),(120,117,1,0),(121,118,0,0),(122,119,0,0),(123,120,0,0),(124,121,0,0),(125,122,0,0),(126,123,1,0),(127,124,0,0),(128,125,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=330 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,30,5,2,NULL),(2,36,5,2,NULL),(3,17,5,2,NULL),(4,83,5,2,NULL),(5,20,5,2,NULL),(6,81,5,2,NULL),(7,102,5,2,NULL),(8,12,7,2,NULL),(9,86,7,2,NULL),(10,11,6,2,NULL),(11,13,8,2,NULL),(12,18,11,2,NULL),(13,21,10,2,NULL),(14,29,8,2,NULL),(15,82,8,2,NULL),(16,84,11,2,NULL),(17,85,6,2,NULL),(18,87,8,2,NULL),(19,90,10,2,NULL),(20,17,1,2,NULL),(21,83,1,2,NULL),(22,17,3,2,NULL),(23,83,3,2,NULL),(24,17,4,2,NULL),(25,83,4,2,NULL),(26,17,9,2,NULL),(27,83,9,2,NULL),(28,17,15,2,NULL),(29,83,15,2,NULL),(30,17,23,2,NULL),(31,83,23,2,NULL),(32,17,17,2,NULL),(33,83,17,2,NULL),(34,17,18,2,NULL),(35,83,18,2,NULL),(36,17,19,2,NULL),(37,83,19,2,NULL),(38,17,22,2,NULL),(39,83,22,2,NULL),(40,17,24,2,NULL),(41,83,24,2,NULL),(42,17,25,2,NULL),(43,83,25,2,NULL),(44,17,26,2,NULL),(45,83,26,2,NULL),(46,17,27,2,NULL),(47,83,27,2,NULL),(48,17,28,2,NULL),(49,83,28,2,NULL),(50,17,29,2,NULL),(51,83,29,2,NULL),(52,17,30,2,NULL),(53,83,30,2,NULL),(54,17,31,2,NULL),(55,83,31,2,NULL),(56,17,33,2,NULL),(57,83,33,2,NULL),(58,17,41,2,NULL),(59,83,41,2,NULL),(60,17,44,2,NULL),(61,83,44,2,NULL),(62,17,45,2,NULL),(63,83,45,2,NULL),(64,17,46,2,NULL),(65,83,46,2,NULL),(66,17,68,2,NULL),(67,83,68,2,NULL),(68,17,47,2,NULL),(69,83,47,2,NULL),(70,17,48,2,NULL),(71,83,48,2,NULL),(72,17,49,2,NULL),(73,83,49,2,NULL),(74,17,67,2,NULL),(75,83,67,2,NULL),(76,17,69,2,NULL),(77,83,69,2,NULL),(78,17,70,2,NULL),(79,83,70,2,NULL),(80,17,71,2,NULL),(81,83,71,2,NULL),(82,17,72,2,NULL),(83,83,72,2,NULL),(84,17,50,2,NULL),(85,83,50,2,NULL),(86,20,1,2,NULL),(87,81,1,2,NULL),(88,20,3,2,NULL),(89,81,3,2,NULL),(90,20,4,2,NULL),(91,81,4,2,NULL),(92,20,9,2,NULL),(93,81,9,2,NULL),(94,20,15,2,NULL),(95,81,15,2,NULL),(96,20,23,2,NULL),(97,81,23,2,NULL),(98,20,17,2,NULL),(99,81,17,2,NULL),(100,20,18,2,NULL),(101,81,18,2,NULL),(102,20,19,2,NULL),(103,81,19,2,NULL),(104,20,22,2,NULL),(105,81,22,2,NULL),(106,20,24,2,NULL),(107,81,24,2,NULL),(108,20,25,2,NULL),(109,81,25,2,NULL),(110,20,26,2,NULL),(111,81,26,2,NULL),(112,20,27,2,NULL),(113,81,27,2,NULL),(114,20,28,2,NULL),(115,81,28,2,NULL),(116,20,29,2,NULL),(117,81,29,2,NULL),(118,20,30,2,NULL),(119,81,30,2,NULL),(120,20,31,2,NULL),(121,81,31,2,NULL),(122,20,33,2,NULL),(123,81,33,2,NULL),(124,20,41,2,NULL),(125,81,41,2,NULL),(126,20,44,2,NULL),(127,81,44,2,NULL),(128,20,45,2,NULL),(129,81,45,2,NULL),(130,20,46,2,NULL),(131,81,46,2,NULL),(132,20,68,2,NULL),(133,81,68,2,NULL),(134,20,47,2,NULL),(135,81,47,2,NULL),(136,20,48,2,NULL),(137,81,48,2,NULL),(138,20,49,2,NULL),(139,81,49,2,NULL),(140,20,67,2,NULL),(141,81,67,2,NULL),(142,20,69,2,NULL),(143,81,69,2,NULL),(144,20,70,2,NULL),(145,81,70,2,NULL),(146,20,71,2,NULL),(147,81,71,2,NULL),(148,20,72,2,NULL),(149,81,72,2,NULL),(150,20,50,2,NULL),(151,81,50,2,NULL),(152,98,51,2,NULL),(153,103,53,2,NULL),(154,30,50,2,NULL),(155,36,50,2,NULL),(156,102,50,2,NULL),(157,97,53,2,NULL),(158,118,50,2,NULL),(159,119,60,2,NULL),(160,122,60,2,NULL),(161,117,64,2,NULL),(162,102,1,2,NULL),(163,102,3,2,NULL),(164,102,4,2,NULL),(165,102,9,2,NULL),(166,102,15,2,NULL),(167,102,23,2,NULL),(168,102,17,2,NULL),(169,102,18,2,NULL),(170,102,19,2,NULL),(171,102,22,2,NULL),(172,102,24,2,NULL),(173,102,25,2,NULL),(174,102,26,2,NULL),(175,102,27,2,NULL),(176,102,28,2,NULL),(177,102,29,2,NULL),(178,102,30,2,NULL),(179,102,31,2,NULL),(180,102,33,2,NULL),(181,102,41,2,NULL),(182,102,44,2,NULL),(183,102,45,2,NULL),(184,102,46,2,NULL),(185,102,68,2,NULL),(186,102,47,2,NULL),(187,102,48,2,NULL),(188,102,49,2,NULL),(189,102,67,2,NULL),(190,102,69,2,NULL),(191,102,70,2,NULL),(192,102,71,2,NULL),(193,102,72,2,NULL),(194,30,33,2,NULL),(195,36,33,2,NULL),(196,40,35,2,NULL),(197,54,36,2,NULL),(198,59,43,2,NULL),(199,60,36,2,NULL),(200,62,35,2,NULL),(201,76,43,2,NULL),(202,61,3,2,NULL),(203,61,44,2,NULL),(204,68,3,2,NULL),(205,68,44,2,NULL),(206,30,41,2,NULL),(207,36,41,2,NULL),(208,30,44,2,NULL),(209,36,44,2,NULL),(210,30,45,2,NULL),(211,36,45,2,NULL),(212,52,19,2,NULL),(213,52,49,2,NULL),(214,56,3,2,NULL),(215,56,44,2,NULL),(216,58,19,2,NULL),(217,58,49,2,NULL),(218,30,46,2,NULL),(219,36,46,2,NULL),(220,30,68,2,NULL),(221,36,68,2,NULL),(222,57,3,2,NULL),(223,57,44,2,NULL),(224,74,3,2,NULL),(225,74,44,2,NULL),(226,30,47,2,NULL),(227,36,47,2,NULL),(228,38,3,2,NULL),(229,38,44,2,NULL),(230,49,3,2,NULL),(231,49,44,2,NULL),(232,55,3,2,NULL),(233,55,44,2,NULL),(234,65,3,2,NULL),(235,65,44,2,NULL),(236,66,3,2,NULL),(237,66,44,2,NULL),(238,78,3,2,NULL),(239,78,44,2,NULL),(240,30,48,2,NULL),(241,36,48,2,NULL),(242,69,3,2,NULL),(243,69,44,2,NULL),(244,71,3,2,NULL),(245,71,44,2,NULL),(246,30,49,2,NULL),(247,36,49,2,NULL),(248,30,67,2,NULL),(249,36,67,2,NULL),(250,30,69,2,NULL),(251,36,69,2,NULL),(252,30,70,2,NULL),(253,36,70,2,NULL),(254,30,71,2,NULL),(255,36,71,2,NULL),(256,30,72,2,NULL),(257,36,72,2,NULL),(258,4,3,2,NULL),(259,4,44,2,NULL),(260,28,3,2,NULL),(261,28,44,2,NULL),(262,30,1,2,NULL),(263,36,1,2,NULL),(264,30,3,2,NULL),(265,36,3,2,NULL),(266,2,2,2,NULL),(267,35,2,2,NULL),(268,30,4,2,NULL),(269,36,4,2,NULL),(270,30,9,2,NULL),(271,36,9,2,NULL),(272,6,19,2,NULL),(273,6,49,2,NULL),(274,23,19,2,NULL),(275,23,49,2,NULL),(276,30,15,2,NULL),(277,36,15,2,NULL),(278,30,23,2,NULL),(279,36,23,2,NULL),(280,8,3,2,NULL),(281,8,44,2,NULL),(282,16,3,2,NULL),(283,16,44,2,NULL),(284,30,17,2,NULL),(285,36,17,2,NULL),(286,3,3,2,NULL),(287,3,44,2,NULL),(288,5,3,2,NULL),(289,5,44,2,NULL),(290,7,3,2,NULL),(291,7,44,2,NULL),(292,15,3,2,NULL),(293,15,44,2,NULL),(294,26,3,2,NULL),(295,26,44,2,NULL),(296,31,3,2,NULL),(297,31,44,2,NULL),(298,30,18,2,NULL),(299,36,18,2,NULL),(300,9,3,2,NULL),(301,9,44,2,NULL),(302,10,3,2,NULL),(303,10,44,2,NULL),(304,32,3,2,NULL),(305,32,44,2,NULL),(306,33,3,2,NULL),(307,33,44,2,NULL),(308,30,19,2,NULL),(309,36,19,2,NULL),(310,30,22,2,NULL),(311,30,24,2,NULL),(312,30,25,2,NULL),(313,30,26,2,NULL),(314,30,27,2,NULL),(315,30,28,2,NULL),(316,30,29,2,NULL),(317,30,30,2,NULL),(318,30,31,2,NULL),(319,36,22,2,NULL),(320,36,24,2,NULL),(321,36,25,2,NULL),(322,36,26,2,NULL),(323,36,27,2,NULL),(324,36,28,2,NULL),(325,36,29,2,NULL),(326,36,30,2,NULL),(327,36,31,2,NULL),(328,14,21,2,NULL),(329,24,21,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (7,'android.permission.ACCESS_COARSE_LOCATION'),(6,'android.permission.ACCESS_FINE_LOCATION'),(10,'android.permission.ACCESS_NETWORK_STATE'),(12,'android.permission.ACCESS_WIFI_STATE'),(26,'android.permission.BROADCAST_PACKAGE_REMOVED'),(16,'android.permission.BROADCAST_SMS'),(21,'android.permission.CALL_PHONE'),(9,'android.permission.CHANGE_NETWORK_STATE'),(30,'android.permission.CHANGE_WIFI_STATE'),(28,'android.permission.DISABLE_KEYGUARD'),(5,'android.permission.INTERNET'),(15,'android.permission.KILL_BACKGROUND_PROCESSES'),(27,'android.permission.MODIFY_AUDIO_SETTINGS'),(29,'android.permission.MODIFY_PHONE_STATE'),(18,'android.permission.PROCESS_OUTGOING_CALLS'),(20,'android.permission.READ_CONTACTS'),(17,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(23,'android.permission.READ_SMS'),(2,'android.permission.RECEIVE_BOOT_COMPLETED'),(8,'android.permission.RECEIVE_SMS'),(24,'android.permission.RECORD_AUDIO'),(14,'android.permission.RESTART_PACKAGES'),(3,'android.permission.SEND_SMS'),(13,'android.permission.VIBRATE'),(11,'android.permission.WAKE_LOCK'),(25,'android.permission.WRITE_APN_SETTINGS'),(22,'android.permission.WRITE_CONTACTS'),(4,'android.permission.WRITE_EXTERNAL_STORAGE'),(19,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://com.google.android.gsf.gservices',NULL,NULL,NULL),(2,NULL,NULL,'content://com.google.android.gsf.gservices',NULL,NULL,NULL),(3,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(4,NULL,NULL,'content://com.google.android.gsf.gservices',NULL,NULL,NULL),(5,NULL,NULL,'http://www.go108.com.cn/mobile/Client/apk/lic.apk',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(8,NULL,NULL,'tel:073184285152',NULL,NULL,NULL),(9,NULL,NULL,'content://com.google.android.gsf.gservices',NULL,NULL,NULL),(10,NULL,NULL,'market://search?q=pub:virsir.com',NULL,NULL,NULL),(11,NULL,NULL,'market://search?q=pub:virsir.com',NULL,NULL,NULL),(12,NULL,NULL,'geo:,',NULL,NULL,NULL),(13,NULL,NULL,'geo:(.*),(.*)',NULL,NULL,NULL),(14,NULL,NULL,'geo:(.*),',NULL,NULL,NULL),(15,NULL,NULL,'geo:,(.*)',NULL,NULL,NULL),(16,NULL,NULL,'http://apps.virsir.com/10010.html',NULL,NULL,NULL),(17,NULL,NULL,'market://search?q=pub:virsir.com',NULL,NULL,NULL),(18,NULL,NULL,'market://search?q=pub:virsir.com',NULL,NULL,NULL),(19,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(20,NULL,NULL,'geo:,',NULL,NULL,NULL),(21,NULL,NULL,'geo:(.*),(.*)',NULL,NULL,NULL),(22,NULL,NULL,'geo:(.*),',NULL,NULL,NULL),(23,NULL,NULL,'geo:,(.*)',NULL,NULL,NULL),(24,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(25,NULL,NULL,'http://apps.virsir.com/10010.html',NULL,NULL,NULL),(26,NULL,NULL,'http://www.go108.com.cn/mobile/Client/apk/lic.apk',NULL,NULL,NULL),(27,NULL,NULL,'(.*)',NULL,NULL,NULL),(28,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(29,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(30,NULL,NULL,'tel:073184285152',NULL,NULL,NULL),(31,NULL,NULL,'(.*)',NULL,NULL,NULL),(32,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(33,NULL,NULL,'http://wap.go108.cn/astro/cin.jsp?c=zwmd',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,3,1),(2,4,2),(3,14,3),(4,20,4),(5,25,7),(6,35,9),(7,67,19),(8,75,24),(9,83,28),(10,85,29);
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,2,1),(13,2,4),(14,2,5),(15,2,10),(16,2,12),(17,2,13),(18,2,14),(19,2,15),(20,1,12),(21,1,17),(22,1,19),(23,1,18),(24,1,21),(25,1,20),(26,1,23),(27,1,22),(28,1,25),(29,1,24),(30,1,27),(31,1,26),(32,1,29),(33,1,28),(34,1,30),(35,3,1),(36,3,2),(37,3,3),(38,3,4),(39,3,5),(40,3,6),(41,3,7),(42,3,8),(43,3,9),(44,3,10),(45,3,11),(46,3,12),(47,4,1),(48,4,4),(49,4,5),(50,4,10),(51,4,12);
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

-- Dump completed on 2015-10-12  3:31:37
