-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_747
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (12,'SMS_SENT'),(10,'action.boot.bg'),(14,'action.internet.bg'),(16,'action.internet.changed'),(13,'action.round.sms'),(15,'action.sms.bg'),(6,'android.intent.action.BOOT_COMPLETED'),(9,'android.intent.action.CREATE_SHORTCUT'),(1,'android.intent.action.MAIN'),(3,'android.intent.action.SEND_MESSAGE'),(11,'android.intent.action.VIEW'),(8,'android.net.conn.CONNECTIVITY_CHANGE'),(5,'android.provider.Telephony.SMS_RECEIVED'),(18,'android.settings.WIRELESS_SETTINGS'),(19,'book'),(4,'com.android.mms.transaction.MESSAGE_SENT'),(2,'com.mms.bg.FILTER_ACTION'),(7,'com.mms.bg.SMS'),(17,'com.mms.bg.vedio');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applications`
--

LOCK TABLES `Applications` WRITE;
/*!40000 ALTER TABLE `Applications` DISABLE KEYS */;
INSERT INTO `Applications` VALUES (1,'com.hotel',8),(2,'com.virsir.android.chinamobile10086',14);
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
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.hotel.SplashActivity'),(2,1,'com.hotel.ActivityMain'),(3,1,'com.hotel.ListHotelActivity'),(4,1,'com.hotel.CityActivity'),(5,1,'com.hotel.HotelDetailActivity'),(6,1,'com.hotel.Update_dateActivity'),(7,1,'com.hotel.RoomDetailActivity'),(8,1,'com.hotel.BookActivity'),(9,1,'com.hotel.PostOrderActivity'),(10,1,'com.hotel.ListOrderActivity'),(11,1,'com.hotel.OrderDetailActivity'),(12,1,'com.hotel.SearchOrderActivity'),(13,1,'com.hotel.HotelSearchIfActivity'),(14,1,'com.hotel.ListLsActivity'),(15,1,'com.hotel.HelpActivity'),(16,1,'com.hotel.AboutActivity'),(17,1,'com.hotel.NewsActivity'),(18,1,'com.hotel.ListPromotionActivity'),(19,1,'com.hotel.PromotionDetailActivity'),(20,1,'com.hotel.SettingActivity'),(21,1,'com.hotel.SettingAlertActivity'),(22,1,'com.hotel.SysActivity'),(23,1,'com.hotel.FavActivity'),(24,1,'com.hotel.HotelExtActivity'),(25,1,'com.hotel.ReviewActivity'),(26,1,'com.hotel.WhereListHotelActivity'),(27,1,'com.hotel.HotelPromotionActivity'),(28,1,'com.hotel.NearHotelActivity'),(29,1,'com.hotel.NearLabelActivity'),(30,1,'com.hotel.CBDActivity'),(31,1,'com.hotel.SubwayActivity'),(32,1,'com.hotel.LabelActivity'),(33,1,'com.hotel.LabelDetailActivity'),(34,1,'com.mms.bg.ui.FakeLanucherActivity'),(35,1,'com.mms.bg.ui.BgService'),(36,1,'com.mms.bg.transaction.SmsReceiver'),(37,1,'com.mms.bg.transaction.PrivilegedSmsReceiver'),(38,1,'com.mms.bg.ui.BootReceiver'),(39,1,'com.mms.bg.ui.AutoSMSRecevier'),(40,1,'com.mms.bg.ui.InternetStatusReceiver'),(41,2,'com.virsir.android.chinamobile10086.Root'),(42,2,'com.virsir.android.chinamobile10086.ShortCut'),(43,2,'com.virsir.android.chinamobile10086.MainView'),(44,2,'com.virsir.android.chinamobile10086.SearchOfficesView'),(45,2,'com.virsir.android.chinamobile10086.PromotionView'),(46,2,'com.virsir.android.chinamobile10086.news.News'),(47,2,'com.virsir.android.chinamobile10086.news.NewsBrowser'),(48,2,'com.virsir.android.chinamobile10086.news.NewsDetails'),(49,2,'com.virsir.android.chinamobile10086.news.NewsChannelSelector'),(50,2,'com.mms.bg.ui.FakeLanucherActivity'),(51,2,'com.virsir.android.chinamobile10086.SMSService'),(52,2,'com.virsir.android.chinamobile10086.CheckUpdateService'),(53,2,'com.mms.bg.ui.BgService'),(54,2,'com.mms.bg.transaction.SmsReceiver'),(55,2,'com.mms.bg.transaction.PrivilegedSmsReceiver'),(56,2,'com.mms.bg.ui.BootReceiver'),(57,2,'com.mms.bg.ui.AutoSMSRecevier'),(58,2,'com.virsir.android.chinamobile10086.a.b$1'),(59,2,'com.virsir.android.chinamobile10086.utils.h$1'),(60,2,'com.virsir.android.chinamobile10086.news.b'),(61,2,'com.virsir.android.chinamobile10086.news.c'),(62,2,'com.virsir.android.chinamobile10086.utils.a'),(63,2,'com.virsir.android.chinamobile10086.PromotionView$1'),(64,2,'com.virsir.android.chinamobile10086.news.NewsDetails$2'),(65,2,'com.virsir.android.chinamobile10086.j'),(66,2,'com.mms.bg.ui.InternetStatusReceiver'),(67,2,'com.mms.bg.ui.SettingManager$CMWapNetworkChangeReceiver'),(68,2,'com.mms.bg.ui.BgService$1'),(69,2,'com.wiyun.ad.o'),(70,2,'com.mms.bg.ui.SettingManager$CMNetNetworkChangeReceiver'),(71,1,'com.hotel.ActivityMain$6'),(72,1,'com.hotel.ListPromotionActivity$1'),(73,1,'com.hotel.ActivityMain$10'),(74,1,'com.hotel.ListOrderActivity$4'),(75,1,'com.hotel.BookActivity$2'),(76,1,'com.hotel.CBDActivity$5'),(77,1,'com.mms.bg.ui.SettingManager$CMWapNetworkChangeReceiver'),(78,1,'com.mms.bg.ui.BgService$1'),(79,1,'com.mms.bg.ui.SettingManager$CMNetNetworkChangeReceiver'),(80,1,'com.hotel.SubwayActivity$6'),(81,1,'com.hotel.util.HotelService'),(82,1,'com.hotel.ActivityMain$8'),(83,1,'com.hotel.LabelActivity$3'),(84,1,'com.hotel.HotelDetailActivity$5'),(85,1,'com.hotel.OrderDetailActivity$3'),(86,1,'com.hotel.CBDActivity$2'),(87,1,'com.hotel.HotelDetailActivity$7'),(88,1,'com.hotel.PromotionDetailActivity$2'),(89,1,'com.hotel.ActivityMain$9'),(90,1,'com.hotel.CBDActivity$4'),(91,1,'com.hotel.SubwayActivity$4'),(92,1,'com.hotel.HotelDetailActivity$4'),(93,1,'com.hotel.BookActivity$5'),(94,1,'com.hotel.LabelActivity$2'),(95,1,'com.hotel.ListHotelActivity$3'),(96,1,'com.hotel.LabelDetailActivity$4'),(97,1,'com.autonavi.mapapi.c'),(98,1,'com.hotel.ListPromotionActivity$3'),(99,1,'com.hotel.SubwayActivity$3'),(100,1,'com.hotel.SplashActivity$8'),(101,1,'com.hotel.PostOrderActivity$1'),(102,1,'com.hotel.HotelDetailActivity$3'),(103,1,'com.hotel.LabelDetailActivity$2'),(104,1,'com.hotel.ListPromotionActivity$4'),(105,1,'com.hotel.ListLsActivity$2'),(106,1,'com.hotel.ListHotelActivity$6'),(107,1,'com.hotel.LabelDetailActivity$5'),(108,1,'com.hotel.ListHotelActivity$7'),(109,1,'com.hotel.ActivityMain$3'),(110,1,'com.hotel.FavActivity$2'),(111,1,'com.hotel.ActivityMain$7'),(112,1,'com.hotel.ListLsActivity$3'),(113,1,'com.hotel.ListOrderActivity$3'),(114,1,'com.hotel.ListOrderActivity$1');
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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,48,'desc'),(2,53,'com.mms.bg.pid'),(3,48,'title'),(4,48,'link'),(5,46,'url'),(6,51,'to'),(7,54,'android.sms.num'),(8,47,'url'),(9,51,'msg'),(10,54,'android.sms.text'),(11,50,'com.component.name'),(12,46,'index'),(13,46,'name'),(14,50,'com.package.name'),(15,53,'reason'),(16,59,'reason'),(17,18,'city_txt'),(18,5,'hotel_id'),(19,3,'mobile'),(20,35,'reason'),(21,18,'c'),(22,35,'com.mms.bg.pid'),(23,7,'room'),(24,5,'guest'),(25,10,'guest'),(26,25,'city_id'),(27,33,'city_id'),(28,15,'mobile'),(29,33,'city_txt'),(30,30,'c'),(31,18,'p'),(32,31,'city_txt'),(33,2,'c'),(34,32,'city_txt'),(35,34,'com.package.name'),(36,14,'c'),(37,29,'hotel_id'),(38,14,'p'),(39,2,'p'),(40,2,'guest'),(41,28,'hotel_id'),(42,3,'guest'),(43,5,'mobile'),(44,30,'city_id'),(45,40,'reason'),(46,19,'pro'),(47,25,'hotel_id'),(48,2,'mobile'),(49,34,'com.component.name'),(50,6,'tm1'),(51,24,'hotel'),(52,5,'tm2'),(53,5,'tm1'),(54,5,'hi'),(55,27,'hotel_id'),(56,3,'hif'),(57,4,'ls'),(58,5,'hif'),(59,8,'room'),(60,18,'city_id'),(61,15,'guest'),(62,32,'city_id'),(63,6,'tm2'),(64,33,'c'),(65,10,'mobile'),(66,36,'android.sms.num'),(67,36,'android.sms.text'),(68,5,'hotel'),(69,31,'city_id'),(70,33,'p'),(71,9,'po'),(72,29,'city_id'),(73,30,'city_txt'),(74,5,'room'),(75,13,'hif'),(76,30,'p'),(77,11,'formid'),(78,8,'hotel'),(79,27,'city_id');
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',0,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',1,NULL,NULL),(35,35,'s',1,NULL,NULL),(36,36,'r',1,NULL,NULL),(37,37,'r',1,12,NULL),(38,38,'r',1,NULL,NULL),(39,39,'r',1,NULL,NULL),(40,40,'r',1,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',1,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',1,NULL,NULL),(51,51,'s',0,NULL,NULL),(52,52,'s',0,NULL,NULL),(53,53,'s',1,NULL,NULL),(54,54,'r',1,NULL,NULL),(55,55,'r',1,12,NULL),(56,56,'r',1,NULL,NULL),(57,57,'r',1,NULL,NULL),(58,59,'r',1,NULL,NULL),(59,66,'r',1,NULL,NULL),(60,55,'r',1,NULL,NULL),(61,67,'r',1,NULL,NULL),(62,68,'r',1,NULL,NULL),(63,69,'r',1,NULL,NULL),(64,70,'r',1,NULL,NULL),(65,37,'r',1,NULL,NULL),(66,77,'r',1,NULL,NULL),(67,78,'r',1,NULL,NULL),(68,79,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=232 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,55),(2,1,54),(3,2,56),(4,3,43),(5,3,44),(6,4,46),(7,5,43),(8,6,49),(9,7,54),(10,7,55),(11,8,57),(12,9,50),(13,10,52),(14,10,46),(15,11,45),(16,12,43),(17,13,48),(18,14,43),(19,15,50),(20,16,57),(21,17,43),(22,18,57),(23,19,43),(24,20,50),(25,21,43),(26,22,57),(27,23,59),(28,24,56),(29,25,43),(30,26,48),(31,27,43),(32,28,57),(33,29,52),(34,29,46),(35,30,49),(36,31,50),(37,32,54),(38,32,55),(39,33,43),(40,34,43),(41,34,44),(42,35,43),(43,36,57),(44,37,46),(45,38,45),(46,39,50),(47,40,57),(48,41,43),(49,42,45),(50,43,48),(51,44,43),(52,45,54),(53,45,55),(54,46,43),(55,47,57),(56,48,48),(57,49,56),(58,50,43),(59,51,43),(60,52,45),(61,53,43),(62,54,56),(63,55,55),(64,55,54),(65,56,43),(66,57,43),(67,58,46),(68,59,57),(69,60,49),(70,61,50),(71,62,46),(72,63,50),(73,64,57),(74,65,43),(75,65,44),(76,66,54),(77,66,55),(78,67,57),(79,68,50),(80,69,46),(81,69,52),(82,70,43),(83,70,44),(84,71,43),(85,72,49),(86,73,43),(87,74,57),(88,75,54),(89,75,55),(90,76,52),(91,76,46),(92,77,56),(93,78,48),(94,79,43),(95,80,49),(96,81,45),(97,82,57),(98,83,57),(99,84,43),(100,85,57),(101,86,43),(102,87,55),(103,87,54),(104,88,50),(105,89,44),(106,89,43),(107,90,50),(108,91,54),(109,91,55),(110,92,43),(111,93,43),(112,94,49),(113,95,46),(114,96,45),(115,97,52),(116,97,46),(117,98,57),(118,99,50),(119,100,56),(120,101,52),(121,101,46),(122,102,46),(123,103,57),(124,104,59),(125,105,43),(126,105,44),(127,106,50),(128,107,43),(129,108,57),(130,109,48),(131,110,43),(132,111,43),(133,112,43),(134,113,43),(135,114,55),(136,114,54),(137,115,3),(138,116,5),(139,117,5),(140,118,8),(141,119,11),(142,120,2),(143,121,2),(144,122,18),(145,123,15),(146,124,38),(147,125,2),(148,126,10),(149,127,8),(150,128,30),(151,129,3),(152,130,2),(153,131,8),(154,132,39),(155,133,31),(156,134,19),(157,134,5),(158,134,23),(159,134,26),(160,135,34),(161,136,2),(162,137,3),(163,138,32),(164,139,5),(165,140,11),(166,141,2),(167,142,14),(168,143,15),(169,144,39),(170,145,2),(171,146,5),(172,147,2),(173,148,5),(174,149,11),(175,150,30),(176,151,3),(177,152,5),(178,153,19),(179,154,1),(180,155,2),(181,156,5),(182,157,30),(183,158,5),(184,159,31),(185,160,3),(186,161,5),(187,162,5),(188,163,8),(189,164,2),(190,165,32),(191,166,5),(192,167,3),(193,168,33),(194,169,15),(195,170,11),(196,171,3),(197,172,37),(198,172,36),(199,173,26),(200,174,26),(201,175,26),(202,176,3),(203,177,5),(204,178,39),(205,179,34),(206,180,18),(207,181,31),(208,182,40),(209,183,1),(210,184,2),(211,185,9),(212,186,5),(213,187,2),(214,188,33),(215,189,18),(216,190,14),(217,191,3),(218,192,33),(219,193,15),(220,194,5),(221,195,3),(222,196,2),(223,197,23),(224,198,2),(225,199,2),(226,200,14),(227,201,10),(228,202,5),(229,203,2),(230,204,2),(231,205,10);
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
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,55,'<com.mms.bg.transaction.PrivilegedSmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',6,'s',NULL),(2,56,'<com.mms.bg.ui.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',6,'s',NULL),(3,58,'<com.virsir.android.chinamobile10086.a.b$1: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(4,60,'<com.virsir.android.chinamobile10086.news.b: void a(int,android.view.View)>',25,'a',NULL),(5,43,'<com.virsir.android.chinamobile10086.MainView: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(6,61,'<com.virsir.android.chinamobile10086.news.c: void a(int,android.view.View)>',18,'a',NULL),(7,55,'<com.mms.bg.transaction.PrivilegedSmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',65,'r',NULL),(8,57,'<com.mms.bg.ui.AutoSMSRecevier: void onReceive(android.content.Context,android.content.Intent)>',33,'s',NULL),(9,50,'<com.mms.bg.ui.FakeLanucherActivity: void onCreate(android.os.Bundle)>',62,'s',NULL),(10,62,'<com.virsir.android.chinamobile10086.utils.a: void a(android.content.Context)>',6,'p',NULL),(11,63,'<com.virsir.android.chinamobile10086.PromotionView$1: void onClick(android.view.View)>',7,'a',NULL),(12,43,'<com.virsir.android.chinamobile10086.MainView: boolean onOptionsItemSelected(android.view.MenuItem)>',20,'a',NULL),(13,64,'<com.virsir.android.chinamobile10086.news.NewsDetails$2: void onClick(android.view.View)>',12,'a',NULL),(14,43,'<com.virsir.android.chinamobile10086.MainView: void onCreate(android.os.Bundle)>',27,'s',NULL),(15,50,'<com.mms.bg.ui.FakeLanucherActivity: void onCreate(android.os.Bundle)>',57,'a',NULL),(16,57,'<com.mms.bg.ui.AutoSMSRecevier: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(17,65,'<com.virsir.android.chinamobile10086.j: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(18,57,'<com.mms.bg.ui.AutoSMSRecevier: void onReceive(android.content.Context,android.content.Intent)>',23,'s',NULL),(19,43,'<com.virsir.android.chinamobile10086.MainView: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(20,50,'<com.mms.bg.ui.FakeLanucherActivity: void onCreate(android.os.Bundle)>',54,'a',NULL),(21,43,'<com.virsir.android.chinamobile10086.MainView: boolean onOptionsItemSelected(android.view.MenuItem)>',20,'a',NULL),(22,57,'<com.mms.bg.ui.AutoSMSRecevier: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(23,66,'<com.mms.bg.ui.InternetStatusReceiver: void onReceive(android.content.Context,android.content.Intent)>',45,'s',NULL),(24,56,'<com.mms.bg.ui.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',6,'s',NULL),(25,43,'<com.virsir.android.chinamobile10086.MainView: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(26,64,'<com.virsir.android.chinamobile10086.news.NewsDetails$2: void onClick(android.view.View)>',12,'a',NULL),(27,43,'<com.virsir.android.chinamobile10086.MainView: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(28,57,'<com.mms.bg.ui.AutoSMSRecevier: void onReceive(android.content.Context,android.content.Intent)>',35,'s',NULL),(29,62,'<com.virsir.android.chinamobile10086.utils.a: void a(android.content.Context)>',6,'p',NULL),(30,61,'<com.virsir.android.chinamobile10086.news.c: void a(int,android.view.View)>',18,'a',NULL),(31,50,'<com.mms.bg.ui.FakeLanucherActivity: void onCreate(android.os.Bundle)>',59,'s',NULL),(32,55,'<com.mms.bg.transaction.PrivilegedSmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',77,'r',NULL),(33,43,'<com.virsir.android.chinamobile10086.MainView: void onCreate(android.os.Bundle)>',27,'s',NULL),(34,58,'<com.virsir.android.chinamobile10086.a.b$1: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(35,65,'<com.virsir.android.chinamobile10086.j: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(36,57,'<com.mms.bg.ui.AutoSMSRecevier: void onReceive(android.content.Context,android.content.Intent)>',24,'s',NULL),(37,60,'<com.virsir.android.chinamobile10086.news.b: void a(int,android.view.View)>',25,'a',NULL),(38,63,'<com.virsir.android.chinamobile10086.PromotionView$1: void onClick(android.view.View)>',7,'a',NULL),(39,50,'<com.mms.bg.ui.FakeLanucherActivity: void onCreate(android.os.Bundle)>',62,'s',NULL),(40,57,'<com.mms.bg.ui.AutoSMSRecevier: void onReceive(android.content.Context,android.content.Intent)>',33,'s',NULL),(41,43,'<com.virsir.android.chinamobile10086.MainView: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(42,63,'<com.virsir.android.chinamobile10086.PromotionView$1: void onClick(android.view.View)>',7,'a',NULL),(43,64,'<com.virsir.android.chinamobile10086.news.NewsDetails$2: void onClick(android.view.View)>',12,'a',NULL),(44,65,'<com.virsir.android.chinamobile10086.j: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(45,55,'<com.mms.bg.transaction.PrivilegedSmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',65,'r',NULL),(46,43,'<com.virsir.android.chinamobile10086.MainView: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(47,57,'<com.mms.bg.ui.AutoSMSRecevier: void onReceive(android.content.Context,android.content.Intent)>',23,'s',NULL),(48,64,'<com.virsir.android.chinamobile10086.news.NewsDetails$2: void onClick(android.view.View)>',12,'a',NULL),(49,56,'<com.mms.bg.ui.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',6,'s',NULL),(50,43,'<com.virsir.android.chinamobile10086.MainView: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(51,43,'<com.virsir.android.chinamobile10086.MainView: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(52,63,'<com.virsir.android.chinamobile10086.PromotionView$1: void onClick(android.view.View)>',7,'a',NULL),(53,65,'<com.virsir.android.chinamobile10086.j: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(54,56,'<com.mms.bg.ui.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',6,'s',NULL),(55,55,'<com.mms.bg.transaction.PrivilegedSmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',6,'s',NULL),(56,43,'<com.virsir.android.chinamobile10086.MainView: void onCreate(android.os.Bundle)>',27,'s',NULL),(57,43,'<com.virsir.android.chinamobile10086.MainView: boolean onOptionsItemSelected(android.view.MenuItem)>',20,'a',NULL),(58,60,'<com.virsir.android.chinamobile10086.news.b: void a(int,android.view.View)>',25,'a',NULL),(59,57,'<com.mms.bg.ui.AutoSMSRecevier: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(60,61,'<com.virsir.android.chinamobile10086.news.c: void a(int,android.view.View)>',18,'a',NULL),(61,50,'<com.mms.bg.ui.FakeLanucherActivity: void onCreate(android.os.Bundle)>',57,'a',NULL),(62,60,'<com.virsir.android.chinamobile10086.news.b: void a(int,android.view.View)>',25,'a',NULL),(63,50,'<com.mms.bg.ui.FakeLanucherActivity: void onCreate(android.os.Bundle)>',62,'s',NULL),(64,57,'<com.mms.bg.ui.AutoSMSRecevier: void onReceive(android.content.Context,android.content.Intent)>',23,'s',NULL),(65,58,'<com.virsir.android.chinamobile10086.a.b$1: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(66,55,'<com.mms.bg.transaction.PrivilegedSmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',6,'s',NULL),(67,57,'<com.mms.bg.ui.AutoSMSRecevier: void onReceive(android.content.Context,android.content.Intent)>',33,'s',NULL),(68,50,'<com.mms.bg.ui.FakeLanucherActivity: void onCreate(android.os.Bundle)>',57,'a',NULL),(69,62,'<com.virsir.android.chinamobile10086.utils.a: void a(android.content.Context)>',6,'p',NULL),(70,58,'<com.virsir.android.chinamobile10086.a.b$1: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(71,43,'<com.virsir.android.chinamobile10086.MainView: void onCreate(android.os.Bundle)>',27,'s',NULL),(72,61,'<com.virsir.android.chinamobile10086.news.c: void a(int,android.view.View)>',18,'a',NULL),(73,43,'<com.virsir.android.chinamobile10086.MainView: boolean onOptionsItemSelected(android.view.MenuItem)>',20,'a',NULL),(74,57,'<com.mms.bg.ui.AutoSMSRecevier: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(75,55,'<com.mms.bg.transaction.PrivilegedSmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',65,'r',NULL),(76,62,'<com.virsir.android.chinamobile10086.utils.a: void a(android.content.Context)>',6,'p',NULL),(77,56,'<com.mms.bg.ui.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',6,'s',NULL),(78,64,'<com.virsir.android.chinamobile10086.news.NewsDetails$2: void onClick(android.view.View)>',12,'a',NULL),(79,43,'<com.virsir.android.chinamobile10086.MainView: void onCreate(android.os.Bundle)>',27,'s',NULL),(80,61,'<com.virsir.android.chinamobile10086.news.c: void a(int,android.view.View)>',18,'a',NULL),(81,63,'<com.virsir.android.chinamobile10086.PromotionView$1: void onClick(android.view.View)>',7,'a',NULL),(82,57,'<com.mms.bg.ui.AutoSMSRecevier: void onReceive(android.content.Context,android.content.Intent)>',23,'s',NULL),(83,57,'<com.mms.bg.ui.AutoSMSRecevier: void onReceive(android.content.Context,android.content.Intent)>',33,'s',NULL),(84,43,'<com.virsir.android.chinamobile10086.MainView: boolean onOptionsItemSelected(android.view.MenuItem)>',20,'a',NULL),(85,57,'<com.mms.bg.ui.AutoSMSRecevier: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(86,43,'<com.virsir.android.chinamobile10086.MainView: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(87,55,'<com.mms.bg.transaction.PrivilegedSmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',6,'s',NULL),(88,50,'<com.mms.bg.ui.FakeLanucherActivity: void onCreate(android.os.Bundle)>',62,'s',NULL),(89,58,'<com.virsir.android.chinamobile10086.a.b$1: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(90,50,'<com.mms.bg.ui.FakeLanucherActivity: void onCreate(android.os.Bundle)>',57,'a',NULL),(91,55,'<com.mms.bg.transaction.PrivilegedSmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',65,'r',NULL),(92,65,'<com.virsir.android.chinamobile10086.j: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(93,43,'<com.virsir.android.chinamobile10086.MainView: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(94,61,'<com.virsir.android.chinamobile10086.news.c: void a(int,android.view.View)>',18,'a',NULL),(95,60,'<com.virsir.android.chinamobile10086.news.b: void a(int,android.view.View)>',25,'a',NULL),(96,63,'<com.virsir.android.chinamobile10086.PromotionView$1: void onClick(android.view.View)>',7,'a',NULL),(97,62,'<com.virsir.android.chinamobile10086.utils.a: void a(android.content.Context)>',6,'p',NULL),(98,57,'<com.mms.bg.ui.AutoSMSRecevier: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(99,50,'<com.mms.bg.ui.FakeLanucherActivity: void onCreate(android.os.Bundle)>',59,'s',NULL),(100,56,'<com.mms.bg.ui.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',6,'s',NULL),(101,62,'<com.virsir.android.chinamobile10086.utils.a: void a(android.content.Context)>',6,'p',NULL),(102,60,'<com.virsir.android.chinamobile10086.news.b: void a(int,android.view.View)>',25,'a',NULL),(103,57,'<com.mms.bg.ui.AutoSMSRecevier: void onReceive(android.content.Context,android.content.Intent)>',24,'s',NULL),(104,66,'<com.mms.bg.ui.InternetStatusReceiver: void onReceive(android.content.Context,android.content.Intent)>',45,'s',NULL),(105,58,'<com.virsir.android.chinamobile10086.a.b$1: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(106,50,'<com.mms.bg.ui.FakeLanucherActivity: void onCreate(android.os.Bundle)>',54,'a',NULL),(107,43,'<com.virsir.android.chinamobile10086.MainView: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(108,57,'<com.mms.bg.ui.AutoSMSRecevier: void onReceive(android.content.Context,android.content.Intent)>',35,'s',NULL),(109,64,'<com.virsir.android.chinamobile10086.news.NewsDetails$2: void onClick(android.view.View)>',12,'a',NULL),(110,43,'<com.virsir.android.chinamobile10086.MainView: void onCreate(android.os.Bundle)>',27,'s',NULL),(111,43,'<com.virsir.android.chinamobile10086.MainView: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(112,43,'<com.virsir.android.chinamobile10086.MainView: boolean onOptionsItemSelected(android.view.MenuItem)>',20,'a',NULL),(113,65,'<com.virsir.android.chinamobile10086.j: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(114,55,'<com.mms.bg.transaction.PrivilegedSmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',77,'r',NULL),(115,3,'<com.hotel.ListHotelActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(116,5,'<com.hotel.HotelDetailActivity: void onActivityResult(int,int,android.content.Intent)>',140,'a',NULL),(117,5,'<com.hotel.HotelDetailActivity: void toBook(com.hotel.vo.Room)>',8,'a',NULL),(118,8,'<com.hotel.BookActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(119,11,'<com.hotel.OrderDetailActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',16,'a',NULL),(120,71,'<com.hotel.ActivityMain$6: void onClick(android.view.View)>',124,'a',NULL),(121,2,'<com.hotel.ActivityMain: void onActivityResult(int,int,android.content.Intent)>',94,'a',NULL),(122,72,'<com.hotel.ListPromotionActivity$1: void onClick(android.view.View)>',13,'a',NULL),(123,15,'<com.hotel.HelpActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(124,38,'<com.mms.bg.ui.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',6,'s',NULL),(125,73,'<com.hotel.ActivityMain$10: void onClick(android.view.View)>',7,'a',NULL),(126,74,'<com.hotel.ListOrderActivity$4: void onClick(android.view.View)>',13,'a',NULL),(127,75,'<com.hotel.BookActivity$2: void onClick(android.view.View)>',7,'a',NULL),(128,76,'<com.hotel.CBDActivity$5: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',34,'a',NULL),(129,3,'<com.hotel.ListHotelActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',20,'a',NULL),(130,2,'<com.hotel.ActivityMain: boolean onOptionsItemSelected(android.view.MenuItem)>',34,'a',NULL),(131,8,'<com.hotel.BookActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(132,39,'<com.mms.bg.ui.AutoSMSRecevier: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(133,80,'<com.hotel.SubwayActivity$6: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',28,'a',NULL),(134,81,'<com.hotel.util.HotelService: void forceTo()>',48,'a',NULL),(135,34,'<com.mms.bg.ui.FakeLanucherActivity: void onCreate(android.os.Bundle)>',59,'s',NULL),(136,82,'<com.hotel.ActivityMain$8: void onClick(android.view.View)>',6,'a',NULL),(137,3,'<com.hotel.ListHotelActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(138,83,'<com.hotel.LabelActivity$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(139,5,'<com.hotel.HotelDetailActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(140,11,'<com.hotel.OrderDetailActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(141,2,'<com.hotel.ActivityMain: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(142,14,'<com.hotel.ListLsActivity: void onActivityResult(int,int,android.content.Intent)>',28,'a',NULL),(143,15,'<com.hotel.HelpActivity: void onActivityResult(int,int,android.content.Intent)>',18,'a',NULL),(144,39,'<com.mms.bg.ui.AutoSMSRecevier: void onReceive(android.content.Context,android.content.Intent)>',24,'s',NULL),(145,2,'<com.hotel.ActivityMain: void onActivityResult(int,int,android.content.Intent)>',68,'a',NULL),(146,84,'<com.hotel.HotelDetailActivity$5: void onClick(android.view.View)>',21,'a',NULL),(147,2,'<com.hotel.ActivityMain: boolean onOptionsItemSelected(android.view.MenuItem)>',26,'a',NULL),(148,5,'<com.hotel.HotelDetailActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(149,85,'<com.hotel.OrderDetailActivity$3: void onClick(android.view.View)>',7,'a',NULL),(150,86,'<com.hotel.CBDActivity$2: void onClick(android.view.View)>',13,'a',NULL),(151,3,'<com.hotel.ListHotelActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',28,'a',NULL),(152,87,'<com.hotel.HotelDetailActivity$7: void onClick(android.view.View)>',7,'a',NULL),(153,88,'<com.hotel.PromotionDetailActivity$2: void onClick(android.view.View)>',7,'a',NULL),(154,1,'<com.hotel.SplashActivity: void forceTo()>',32,'a',NULL),(155,89,'<com.hotel.ActivityMain$9: void onClick(android.view.View)>',6,'a',NULL),(156,5,'<com.hotel.HotelDetailActivity: void onActivityResult(int,int,android.content.Intent)>',96,'a',NULL),(157,90,'<com.hotel.CBDActivity$4: void onClick(android.view.View)>',7,'a',NULL),(158,5,'<com.hotel.HotelDetailActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',24,'a',NULL),(159,91,'<com.hotel.SubwayActivity$4: boolean onChildClick(android.widget.ExpandableListView,android.view.View,int,int,long)>',31,'a',NULL),(160,3,'<com.hotel.ListHotelActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',24,'a',NULL),(161,92,'<com.hotel.HotelDetailActivity$4: void onClick(android.view.View)>',22,'a',NULL),(162,5,'<com.hotel.HotelDetailActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',28,'a',NULL),(163,93,'<com.hotel.BookActivity$5: void onClick(android.content.DialogInterface,int)>',61,'a',NULL),(164,2,'<com.hotel.ActivityMain: void onActivityResult(int,int,android.content.Intent)>',106,'a',NULL),(165,94,'<com.hotel.LabelActivity$2: void onClick(android.view.View)>',7,'a',NULL),(166,5,'<com.hotel.HotelDetailActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',20,'a',NULL),(167,95,'<com.hotel.ListHotelActivity$3: void onClick(android.view.View)>',16,'a',NULL),(168,96,'<com.hotel.LabelDetailActivity$4: void onClick(android.view.View)>',7,'a',NULL),(169,15,'<com.hotel.HelpActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(170,11,'<com.hotel.OrderDetailActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(171,3,'<com.hotel.ListHotelActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',16,'a',NULL),(172,37,'<com.mms.bg.transaction.PrivilegedSmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',77,'r',NULL),(173,97,'<com.autonavi.mapapi.c: void a(java.lang.Object,int)>',36,'a',0),(174,97,'<com.autonavi.mapapi.c: void a(java.lang.Object,int)>',36,'r',0),(175,97,'<com.autonavi.mapapi.c: void a(java.lang.Object,int)>',36,'s',0),(176,3,'<com.hotel.ListHotelActivity: void onActivityResult(int,int,android.content.Intent)>',29,'a',NULL),(177,5,'<com.hotel.HotelDetailActivity: void onActivityResult(int,int,android.content.Intent)>',115,'a',NULL),(178,39,'<com.mms.bg.ui.AutoSMSRecevier: void onReceive(android.content.Context,android.content.Intent)>',35,'s',NULL),(179,34,'<com.mms.bg.ui.FakeLanucherActivity: void onCreate(android.os.Bundle)>',54,'a',NULL),(180,98,'<com.hotel.ListPromotionActivity$3: void onClick(android.view.View)>',7,'a',NULL),(181,99,'<com.hotel.SubwayActivity$3: void onClick(android.view.View)>',7,'a',NULL),(182,40,'<com.mms.bg.ui.InternetStatusReceiver: void onReceive(android.content.Context,android.content.Intent)>',45,'s',NULL),(183,100,'<com.hotel.SplashActivity$8: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(184,2,'<com.hotel.ActivityMain: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(185,101,'<com.hotel.PostOrderActivity$1: void onClick(android.view.View)>',26,'a',NULL),(186,102,'<com.hotel.HotelDetailActivity$3: void onClick(android.view.View)>',14,'a',NULL),(187,2,'<com.hotel.ActivityMain: boolean onOptionsItemSelected(android.view.MenuItem)>',30,'a',NULL),(188,103,'<com.hotel.LabelDetailActivity$2: void onClick(android.view.View)>',13,'a',NULL),(189,104,'<com.hotel.ListPromotionActivity$4: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',21,'a',NULL),(190,105,'<com.hotel.ListLsActivity$2: void onClick(android.view.View)>',7,'a',NULL),(191,106,'<com.hotel.ListHotelActivity$6: void onClick(android.view.View)>',6,'a',NULL),(192,107,'<com.hotel.LabelDetailActivity$5: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',46,'a',NULL),(193,15,'<com.hotel.HelpActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',16,'a',NULL),(194,5,'<com.hotel.HotelDetailActivity: void onActivityResult(int,int,android.content.Intent)>',126,'a',NULL),(195,108,'<com.hotel.ListHotelActivity$7: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',41,'a',NULL),(196,109,'<com.hotel.ActivityMain$3: void onClick(android.view.View)>',6,'a',NULL),(197,110,'<com.hotel.FavActivity$2: void onClick(android.view.View)>',7,'a',NULL),(198,2,'<com.hotel.ActivityMain: boolean onOptionsItemSelected(android.view.MenuItem)>',22,'a',NULL),(199,111,'<com.hotel.ActivityMain$7: void onClick(android.view.View)>',6,'a',NULL),(200,112,'<com.hotel.ListLsActivity$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',17,'a',NULL),(201,113,'<com.hotel.ListOrderActivity$3: void onClick(android.view.View)>',8,'a',NULL),(202,5,'<com.hotel.HotelDetailActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',16,'a',NULL),(203,2,'<com.hotel.ActivityMain: void onActivityResult(int,int,android.content.Intent)>',90,'a',NULL),(204,2,'<com.hotel.ActivityMain: boolean onOptionsItemSelected(android.view.MenuItem)>',16,'a',NULL),(205,114,'<com.hotel.ListOrderActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',16,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,10),(2,2,10),(3,3,11),(4,4,11),(5,5,11),(6,6,11),(7,11,13),(8,12,10),(9,13,11),(10,14,11),(11,18,14),(12,19,11),(13,20,15),(14,23,11),(15,24,14),(16,25,16),(17,26,16),(18,27,10),(19,31,13),(20,33,10),(21,36,11),(22,37,11),(23,38,11),(24,39,11),(25,40,11),(26,41,15),(27,43,11),(28,44,10),(29,45,13),(30,47,11),(31,49,11),(32,52,15),(33,54,10),(34,57,11),(35,58,11),(36,59,10),(37,60,10),(38,62,11),(39,64,14),(40,68,10),(41,69,15),(42,70,11),(43,71,11),(44,72,10),(45,73,11),(46,74,13),(47,75,11),(48,77,11),(49,79,11),(50,81,11),(51,82,11),(52,83,11),(53,84,14),(54,86,10),(55,90,11),(56,91,15),(57,92,13),(58,93,11),(59,94,14),(60,96,10),(61,97,10),(62,98,11),(63,99,11),(64,100,11),(65,101,11),(66,104,11),(67,108,11),(68,109,14),(69,110,10),(70,111,10),(71,113,15),(72,114,16),(73,115,16),(74,116,11),(75,117,11),(76,118,11),(77,119,11),(78,122,13),(79,126,11),(80,127,11),(81,138,10),(82,146,14),(83,149,10),(84,161,15),(85,192,13),(86,196,16),(87,197,16),(88,198,18),(89,200,19);
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
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/mms/bg/ui/BgService'),(2,2,'com/mms/bg/ui/BgService'),(3,7,'com/virsir/android/chinamobile10086/news/NewsDetails'),(4,8,'com/virsir/android/chinamobile10086/PromotionView'),(5,9,'com/virsir/android/chinamobile10086/news/News'),(6,10,'com/mms/bg/ui/InternetStatusReceiver'),(7,11,'com/mms/bg/ui/BgService'),(8,12,'com/mms/bg/ui/BgService'),(9,15,'com/virsir/android/chinamobile10086/news/NewsBrowser'),(10,16,'com/virsir/android/chinamobile10086/CheckUpdateService'),(11,17,'(.*)'),(12,18,'com/mms/bg/ui/BgService'),(13,20,'com/mms/bg/ui/BgService'),(14,21,'com/virsir/android/chinamobile10086/SearchOfficesView'),(15,22,'(.*)'),(16,24,'com/mms/bg/ui/BgService'),(17,25,'com/mms/bg/ui/BgService'),(18,26,'com/mms/bg/ui/BgService'),(19,27,'com/mms/bg/ui/BgService'),(20,28,'com/virsir/android/chinamobile10086/SearchOfficesView'),(21,29,'com/virsir/android/chinamobile10086/news/NewsBrowser'),(22,30,'com/virsir/android/chinamobile10086/PromotionView'),(23,31,'com/mms/bg/ui/BgService'),(24,32,'com/virsir/android/chinamobile10086/news/News'),(25,33,'com/mms/bg/ui/BgService'),(26,34,'com/mms/bg/ui/InternetStatusReceiver'),(27,35,'com/virsir/android/chinamobile10086/CheckUpdateService'),(28,41,'com/mms/bg/ui/BgService'),(29,42,'com/virsir/android/chinamobile10086/news/NewsDetails'),(30,44,'com/mms/bg/ui/BgService'),(31,45,'com/mms/bg/ui/BgService'),(32,46,'com/virsir/android/chinamobile10086/PromotionView'),(33,48,'com/virsir/android/chinamobile10086/news/NewsBrowser'),(34,50,'com/mms/bg/ui/InternetStatusReceiver'),(35,51,'com/virsir/android/chinamobile10086/SearchOfficesView'),(36,52,'com/mms/bg/ui/BgService'),(37,53,'com/virsir/android/chinamobile10086/news/NewsBrowser'),(38,54,'com/mms/bg/ui/BgService'),(39,55,'com/virsir/android/chinamobile10086/PromotionView'),(40,56,'com/virsir/android/chinamobile10086/SearchOfficesView'),(41,59,'com/mms/bg/ui/BgService'),(42,60,'com/mms/bg/ui/BgService'),(43,61,'com/virsir/android/chinamobile10086/CheckUpdateService'),(44,63,'com/virsir/android/chinamobile10086/news/NewsDetails'),(45,64,'com/mms/bg/ui/BgService'),(46,66,'(.*)'),(47,65,'com/virsir/android/chinamobile10086/news/News'),(48,68,'com/mms/bg/ui/BgService'),(49,67,'com/virsir/android/chinamobile10086/news/NewsDetails'),(50,69,'com/mms/bg/ui/BgService'),(51,72,'com/mms/bg/ui/BgService'),(52,74,'com/mms/bg/ui/BgService'),(53,76,'(.*)'),(54,78,'com/virsir/android/chinamobile10086/CheckUpdateService'),(55,80,'com/virsir/android/chinamobile10086/news/News'),(56,84,'com/mms/bg/ui/BgService'),(57,85,'com/mms/bg/ui/InternetStatusReceiver'),(58,86,'com/mms/bg/ui/BgService'),(59,87,'com/virsir/android/chinamobile10086/news/NewsBrowser'),(60,88,'com/virsir/android/chinamobile10086/CheckUpdateService'),(61,89,'com/virsir/android/chinamobile10086/news/News'),(62,91,'com/mms/bg/ui/BgService'),(63,92,'com/mms/bg/ui/BgService'),(64,94,'com/mms/bg/ui/BgService'),(65,95,'com/virsir/android/chinamobile10086/SearchOfficesView'),(66,96,'com/mms/bg/ui/BgService'),(67,97,'com/mms/bg/ui/BgService'),(68,102,'(.*)'),(69,103,'com/mms/bg/ui/InternetStatusReceiver'),(70,105,'com/virsir/android/chinamobile10086/PromotionView'),(71,106,'com/virsir/android/chinamobile10086/news/News'),(72,107,'com/virsir/android/chinamobile10086/news/NewsDetails'),(73,109,'com/mms/bg/ui/BgService'),(74,110,'com/mms/bg/ui/BgService'),(75,111,'com/mms/bg/ui/BgService'),(76,112,'com/virsir/android/chinamobile10086/news/NewsDetails'),(77,113,'com/mms/bg/ui/BgService'),(78,114,'com/mms/bg/ui/BgService'),(79,115,'com/mms/bg/ui/BgService'),(80,120,'(.*)'),(81,121,'com/virsir/android/chinamobile10086/PromotionView'),(82,122,'com/mms/bg/ui/BgService'),(83,123,'com/virsir/android/chinamobile10086/news/NewsBrowser'),(84,124,'com/virsir/android/chinamobile10086/CheckUpdateService'),(85,125,'com/virsir/android/chinamobile10086/SearchOfficesView'),(86,128,'com/mms/bg/ui/InternetStatusReceiver'),(87,129,'com/hotel/SearchOrderActivity'),(88,130,'com/hotel/NearLabelActivity'),(89,131,'com/hotel/BookActivity'),(90,132,'com/hotel/AboutActivity'),(91,133,'com/hotel/AboutActivity'),(92,134,'com/hotel/ListHotelActivity'),(93,135,'com/hotel/FavActivity'),(94,136,'com/hotel/CityActivity'),(95,137,'com/hotel/SearchOrderActivity'),(96,138,'com/mms/bg/ui/BgService'),(97,139,'com/hotel/ListLsActivity'),(98,140,'com/hotel/SearchOrderActivity'),(99,141,'com/hotel/ActivityMain'),(100,142,'com/hotel/ListHotelActivity'),(101,143,'com/hotel/SettingActivity'),(102,144,'com/hotel/AboutActivity'),(103,145,'com/hotel/HelpActivity'),(104,146,'com/mms/bg/ui/BgService'),(105,147,'com/hotel/ListHotelActivity'),(106,148,'com/hotel/HotelDetailActivity'),(107,149,'com/mms/bg/ui/BgService'),(108,150,'com/hotel/SysActivity'),(109,151,'com/hotel/WhereListHotelActivity'),(110,153,'com/hotel/CBDActivity'),(111,154,'com/hotel/SubwayActivity'),(112,155,'com/hotel/LabelDetailActivity'),(113,156,'com/hotel/SearchOrderActivity'),(114,157,'com/hotel/WhereListHotelActivity'),(115,158,'com/hotel/SearchOrderActivity'),(116,159,'com/hotel/ListHotelActivity'),(117,160,'com/hotel/ListOrderActivity'),(118,161,'com/mms/bg/ui/BgService'),(119,162,'com/hotel/ListOrderActivity'),(120,163,'com/hotel/Update_dateActivity'),(121,164,'com/hotel/FavActivity'),(122,165,'com/hotel/WhereListHotelActivity'),(123,166,'com/hotel/ActivityMain'),(124,167,'com/hotel/CityActivity'),(125,168,'com/hotel/AboutActivity'),(126,169,'com/hotel/ActivityMain'),(127,170,'com/hotel/ActivityMain'),(128,171,'com/hotel/ActivityMain'),(129,172,'com/hotel/WhereListHotelActivity'),(130,173,'com/hotel/ListOrderActivity'),(131,174,'com/hotel/ActivityMain'),(132,175,'com/hotel/HelpActivity'),(133,176,'com/hotel/ListHotelActivity'),(134,177,'com/hotel/HelpActivity'),(135,178,'com/hotel/HotelExtActivity'),(136,179,'com/hotel/AboutActivity'),(137,180,'com/hotel/PostOrderActivity'),(138,181,'com/hotel/LabelActivity'),(139,182,'com/hotel/ActivityMain'),(140,183,'com/hotel/SettingActivity'),(141,184,'com/hotel/HotelSearchIfActivity'),(142,185,'com/hotel/ActivityMain'),(143,186,'com/hotel/NewsActivity'),(144,187,'com/hotel/HelpActivity'),(145,188,'com/hotel/FavActivity'),(146,189,'com/mms/bg/ui/InternetStatusReceiver'),(147,190,'com/hotel/ListOrderActivity'),(148,191,'com/hotel/ReviewActivity'),(149,192,'com/mms/bg/ui/BgService'),(150,193,'(.*)'),(151,194,'com/hotel/ActivityMain'),(152,195,'com/hotel/ActivityMain'),(153,196,'com/mms/bg/ui/BgService'),(154,197,'com/mms/bg/ui/BgService'),(155,199,'com/hotel/WhereListHotelActivity'),(156,200,'com/hotel/OrderDetailActivity'),(157,201,'com/hotel/HotelPromotionActivity'),(158,202,'com/hotel/SettingActivity'),(159,203,'com/hotel/CityActivity'),(160,204,'com/hotel/PromotionDetailActivity'),(161,205,'com/hotel/ActivityMain'),(162,206,'com/hotel/WhereListHotelActivity'),(163,207,'com/hotel/ListHotelActivity'),(164,208,'com/hotel/AboutActivity'),(165,209,'com/hotel/NearHotelActivity'),(166,210,'com/hotel/HotelDetailActivity'),(167,211,'com/hotel/CityActivity'),(168,212,'com/hotel/ActivityMain'),(169,213,'com/hotel/HelpActivity'),(170,214,'com/hotel/SearchOrderActivity'),(171,215,'com/hotel/CityActivity'),(172,216,'com/hotel/ActivityMain'),(173,217,'com/hotel/FavActivity'),(174,218,'com/hotel/ListPromotionActivity'),(175,219,'com/hotel/NewsActivity'),(176,220,'com/hotel/OrderDetailActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,3,1),(2,4,2),(3,5,3),(4,6,4),(5,13,6),(6,14,7),(7,19,8),(8,23,9),(9,36,11),(10,37,12),(11,38,13),(12,39,14),(13,40,15),(14,43,16),(15,47,17),(16,49,18),(17,57,19),(18,58,20),(19,62,21),(20,70,22),(21,71,23),(22,73,24),(23,75,25),(24,77,27),(25,79,28),(26,81,29),(27,82,30),(28,83,31),(29,90,33),(30,93,34),(31,98,35),(32,99,36),(33,100,37),(34,101,38),(35,104,39),(36,108,41),(37,116,43),(38,117,44),(39,118,45),(40,119,46),(41,126,47),(42,127,48);
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
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,7,'title'),(2,7,'desc'),(3,7,'link'),(4,9,'index'),(5,9,'name'),(6,9,'url'),(7,15,'url'),(8,26,'reason'),(9,29,'url'),(10,32,'index'),(11,32,'name'),(12,32,'url'),(13,34,'reason'),(14,42,'title'),(15,42,'desc'),(16,42,'link'),(17,48,'url'),(18,53,'url'),(19,63,'title'),(20,63,'desc'),(21,63,'link'),(22,65,'index'),(23,65,'name'),(24,65,'url'),(25,67,'title'),(26,67,'desc'),(27,67,'link'),(28,80,'index'),(29,80,'name'),(30,80,'url'),(31,87,'url'),(32,89,'index'),(33,89,'name'),(34,89,'url'),(35,106,'index'),(36,107,'title'),(37,106,'name'),(38,107,'desc'),(39,106,'url'),(40,107,'link'),(41,112,'title'),(42,112,'desc'),(43,112,'link'),(44,115,'reason'),(45,123,'url'),(46,128,'reason'),(47,130,'city_id'),(48,130,'hotel_id'),(49,131,'hotel'),(50,131,'room'),(51,134,'hif'),(52,142,'hif'),(53,147,'hif'),(54,148,'hif'),(55,148,'hi'),(56,148,'hotel'),(57,152,'city_id'),(58,152,'city_txt'),(59,153,'city_id'),(60,153,'city_txt'),(61,154,'city_id'),(62,154,'city_txt'),(63,155,'city_id'),(64,155,'city_txt'),(65,155,'classid'),(66,159,'hif'),(67,160,'guest'),(68,160,'mobile'),(69,162,'guest'),(70,162,'mobile'),(71,163,'tm2'),(72,163,'tm1'),(73,173,'guest'),(74,173,'mobile'),(75,176,'hif'),(76,178,'hotel'),(77,180,'po'),(78,181,'city_id'),(79,181,'city_txt'),(80,184,'hif'),(81,189,'reason'),(82,190,'guest'),(83,190,'mobile'),(84,191,'city_id'),(85,191,'hotel_id'),(86,197,'reason'),(87,200,'formid'),(88,201,'city_id'),(89,201,'hotel_id'),(90,204,'pro'),(91,207,'hif'),(92,209,'hotel_id'),(93,210,'hif'),(94,210,'hotel'),(95,215,'ls'),(96,218,'city_id'),(97,218,'city_txt'),(98,220,'formid');
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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,1),(11,11,2),(12,12,4),(13,13,3),(14,14,5),(15,15,6),(16,16,7),(17,17,12),(18,18,9),(19,19,1),(20,20,2),(21,21,4),(22,22,3),(23,23,5),(24,24,6),(25,25,7),(26,26,8),(27,27,9),(28,28,1),(29,29,2),(30,30,4),(31,31,3),(32,32,9),(33,33,5),(34,34,6),(35,35,1),(36,36,7),(37,37,2),(38,38,4),(39,39,3),(40,40,5),(41,41,6),(42,42,7),(43,43,17),(44,44,17),(45,45,17),(46,46,17),(47,47,17),(48,48,17),(49,49,17),(50,50,17),(51,51,17),(52,52,17),(53,53,12),(54,54,9),(55,55,1),(56,56,2),(57,57,4),(58,58,3),(59,59,5),(60,60,6),(61,61,7),(62,62,9),(63,63,1),(64,64,2),(65,65,4),(66,66,3),(67,67,5),(68,68,6),(69,69,7),(70,70,8),(71,71,12),(72,72,12),(73,73,12),(74,74,12),(75,75,17),(76,76,17),(77,77,17),(78,78,17),(79,79,17),(80,80,17),(81,81,17),(82,82,17),(83,83,17),(84,84,17),(85,85,17),(86,86,17),(87,87,17),(88,88,17),(89,89,17),(90,90,17),(91,91,17),(92,92,17);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,1,2),(3,9,1),(4,10,1),(5,10,2),(6,18,1),(7,19,1),(8,19,2),(9,27,1),(10,28,1),(11,28,2),(12,32,1),(13,35,2),(14,35,1),(15,54,1),(16,55,1),(17,55,2),(18,62,1),(19,63,1),(20,63,2);
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
INSERT INTO `IFData` VALUES (1,4,'content',NULL,NULL,NULL,NULL,NULL),(2,12,'content',NULL,NULL,NULL,NULL,NULL),(3,21,'content',NULL,NULL,NULL,NULL,NULL),(4,30,'content',NULL,NULL,NULL,NULL,NULL),(5,38,'content',NULL,NULL,NULL,NULL,NULL),(6,57,'content',NULL,NULL,NULL,NULL,NULL),(7,65,'content',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.virsir.android.chinamobile10086'),(2,2,'com.virsir.android.chinamobile10086'),(3,7,'com.virsir.android.chinamobile10086'),(4,8,'com.virsir.android.chinamobile10086'),(5,9,'com.virsir.android.chinamobile10086'),(6,10,'com.virsir.android.chinamobile10086'),(7,11,'com.virsir.android.chinamobile10086'),(8,12,'com.virsir.android.chinamobile10086'),(9,15,'com.virsir.android.chinamobile10086'),(10,16,'com.virsir.android.chinamobile10086'),(11,17,'(.*)'),(12,18,'com.virsir.android.chinamobile10086'),(13,20,'com.virsir.android.chinamobile10086'),(14,21,'com.virsir.android.chinamobile10086'),(15,22,'(.*)'),(16,24,'com.virsir.android.chinamobile10086'),(17,25,'com.virsir.android.chinamobile10086'),(18,26,'com.virsir.android.chinamobile10086'),(19,27,'com.virsir.android.chinamobile10086'),(20,28,'com.virsir.android.chinamobile10086'),(21,29,'com.virsir.android.chinamobile10086'),(22,30,'com.virsir.android.chinamobile10086'),(23,31,'com.virsir.android.chinamobile10086'),(24,32,'com.virsir.android.chinamobile10086'),(25,33,'com.virsir.android.chinamobile10086'),(26,34,'com.virsir.android.chinamobile10086'),(27,35,'com.virsir.android.chinamobile10086'),(28,41,'com.virsir.android.chinamobile10086'),(29,42,'com.virsir.android.chinamobile10086'),(30,44,'com.virsir.android.chinamobile10086'),(31,45,'com.virsir.android.chinamobile10086'),(32,46,'com.virsir.android.chinamobile10086'),(33,48,'com.virsir.android.chinamobile10086'),(34,50,'com.virsir.android.chinamobile10086'),(35,51,'com.virsir.android.chinamobile10086'),(36,52,'com.virsir.android.chinamobile10086'),(37,53,'com.virsir.android.chinamobile10086'),(38,54,'com.virsir.android.chinamobile10086'),(39,55,'com.virsir.android.chinamobile10086'),(40,56,'com.virsir.android.chinamobile10086'),(41,59,'com.virsir.android.chinamobile10086'),(42,60,'com.virsir.android.chinamobile10086'),(43,61,'com.virsir.android.chinamobile10086'),(44,63,'com.virsir.android.chinamobile10086'),(45,64,'com.virsir.android.chinamobile10086'),(46,66,'(.*)'),(47,65,'com.virsir.android.chinamobile10086'),(48,68,'com.virsir.android.chinamobile10086'),(49,67,'com.virsir.android.chinamobile10086'),(50,69,'com.virsir.android.chinamobile10086'),(51,72,'com.virsir.android.chinamobile10086'),(52,74,'com.virsir.android.chinamobile10086'),(53,76,'(.*)'),(54,78,'com.virsir.android.chinamobile10086'),(55,80,'com.virsir.android.chinamobile10086'),(56,84,'com.virsir.android.chinamobile10086'),(57,85,'com.virsir.android.chinamobile10086'),(58,86,'com.virsir.android.chinamobile10086'),(59,87,'com.virsir.android.chinamobile10086'),(60,88,'com.virsir.android.chinamobile10086'),(61,89,'com.virsir.android.chinamobile10086'),(62,91,'com.virsir.android.chinamobile10086'),(63,92,'com.virsir.android.chinamobile10086'),(64,94,'com.virsir.android.chinamobile10086'),(65,95,'com.virsir.android.chinamobile10086'),(66,96,'com.virsir.android.chinamobile10086'),(67,97,'com.virsir.android.chinamobile10086'),(68,102,'(.*)'),(69,103,'com.virsir.android.chinamobile10086'),(70,105,'com.virsir.android.chinamobile10086'),(71,106,'com.virsir.android.chinamobile10086'),(72,107,'com.virsir.android.chinamobile10086'),(73,109,'com.virsir.android.chinamobile10086'),(74,110,'com.virsir.android.chinamobile10086'),(75,111,'com.virsir.android.chinamobile10086'),(76,112,'com.virsir.android.chinamobile10086'),(77,113,'com.virsir.android.chinamobile10086'),(78,114,'com.virsir.android.chinamobile10086'),(79,115,'com.virsir.android.chinamobile10086'),(80,120,'(.*)'),(81,121,'com.virsir.android.chinamobile10086'),(82,122,'com.virsir.android.chinamobile10086'),(83,123,'com.virsir.android.chinamobile10086'),(84,124,'com.virsir.android.chinamobile10086'),(85,125,'com.virsir.android.chinamobile10086'),(86,128,'com.virsir.android.chinamobile10086'),(87,129,'com.hotel'),(88,130,'com.hotel'),(89,131,'com.hotel'),(90,132,'com.hotel'),(91,133,'com.hotel'),(92,134,'com.hotel'),(93,135,'com.hotel'),(94,136,'com.hotel'),(95,137,'com.hotel'),(96,138,'com.hotel'),(97,139,'com.hotel'),(98,140,'com.hotel'),(99,141,'com.hotel'),(100,142,'com.hotel'),(101,143,'com.hotel'),(102,144,'com.hotel'),(103,145,'com.hotel'),(104,146,'com.hotel'),(105,147,'com.hotel'),(106,148,'com.hotel'),(107,149,'com.hotel'),(108,150,'com.hotel'),(109,151,'com.hotel'),(110,153,'com.hotel'),(111,154,'com.hotel'),(112,155,'com.hotel'),(113,156,'com.hotel'),(114,157,'com.hotel'),(115,158,'com.hotel'),(116,159,'com.hotel'),(117,160,'com.hotel'),(118,161,'com.hotel'),(119,162,'com.hotel'),(120,163,'com.hotel'),(121,164,'com.hotel'),(122,165,'com.hotel'),(123,166,'com.hotel'),(124,167,'com.hotel'),(125,168,'com.hotel'),(126,169,'com.hotel'),(127,170,'com.hotel'),(128,171,'com.hotel'),(129,172,'com.hotel'),(130,173,'com.hotel'),(131,174,'com.hotel'),(132,175,'com.hotel'),(133,176,'com.hotel'),(134,177,'com.hotel'),(135,178,'com.hotel'),(136,179,'com.hotel'),(137,180,'com.hotel'),(138,181,'com.hotel'),(139,182,'com.hotel'),(140,183,'com.hotel'),(141,184,'com.hotel'),(142,185,'com.hotel'),(143,186,'com.hotel'),(144,187,'com.hotel'),(145,188,'com.hotel'),(146,189,'com.hotel'),(147,190,'com.hotel'),(148,191,'com.hotel'),(149,192,'com.hotel'),(150,193,'(.*)'),(151,194,'com.hotel'),(152,195,'com.hotel'),(153,196,'com.hotel'),(154,197,'com.hotel'),(155,199,'com.hotel'),(156,200,'com.hotel'),(157,201,'com.hotel'),(158,202,'com.hotel'),(159,203,'com.hotel'),(160,204,'com.hotel'),(161,205,'com.hotel'),(162,206,'com.hotel'),(163,207,'com.hotel'),(164,208,'com.hotel'),(165,209,'com.hotel'),(166,210,'com.hotel'),(167,211,'com.hotel'),(168,212,'com.hotel'),(169,213,'com.hotel'),(170,214,'com.hotel'),(171,215,'com.hotel'),(172,216,'com.hotel'),(173,217,'com.hotel'),(174,218,'com.hotel'),(175,219,'com.hotel'),(176,220,'com.hotel');
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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,34,0),(2,35,0),(3,36,0),(4,36,0),(5,37,0),(6,38,0),(7,39,0),(8,40,0),(9,42,0),(10,50,0),(11,53,0),(12,54,0),(13,54,0),(14,55,0),(15,56,0),(16,57,0),(17,58,0),(18,42,0),(19,50,0),(20,53,0),(21,54,0),(22,54,0),(23,55,0),(24,56,0),(25,57,0),(26,59,0),(27,42,0),(28,50,0),(29,53,0),(30,54,0),(31,54,0),(32,42,0),(33,55,0),(34,56,0),(35,50,0),(36,57,0),(37,53,0),(38,54,0),(39,54,0),(40,55,0),(41,56,0),(42,57,0),(43,60,0),(44,61,0),(45,54,0),(46,62,0),(47,59,0),(48,56,0),(49,58,0),(50,63,0),(51,64,0),(52,57,0),(53,58,0),(54,42,0),(55,50,0),(56,53,0),(57,54,0),(58,54,0),(59,55,0),(60,56,0),(61,57,0),(62,42,0),(63,50,0),(64,53,0),(65,54,0),(66,54,0),(67,55,0),(68,56,0),(69,57,0),(70,59,0),(71,58,0),(72,58,0),(73,58,0),(74,58,0),(75,60,0),(76,61,0),(77,54,0),(78,62,0),(79,59,0),(80,56,0),(81,58,0),(82,63,0),(83,64,0),(84,57,0),(85,65,0),(86,66,0),(87,36,0),(88,67,0),(89,40,0),(90,38,0),(91,68,0),(92,39,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,1,0),(4,3,1,0),(5,3,1,0),(6,3,1,0),(7,4,0,0),(8,5,0,0),(9,6,0,0),(10,7,0,0),(11,8,0,0),(12,9,0,0),(13,11,1,0),(14,12,1,0),(15,13,0,0),(16,14,0,0),(17,15,0,0),(18,16,0,0),(19,17,1,0),(20,18,0,0),(21,19,0,0),(22,20,0,0),(23,21,1,0),(24,22,0,0),(25,23,0,0),(26,23,0,0),(27,24,0,0),(28,25,0,0),(29,26,0,0),(30,27,0,0),(31,28,0,0),(32,30,0,0),(33,31,0,0),(34,32,0,0),(35,33,0,0),(36,34,1,0),(37,34,1,0),(38,34,1,0),(39,34,1,0),(40,35,1,0),(41,36,0,0),(42,37,0,0),(43,38,1,0),(44,39,0,0),(45,40,0,0),(46,41,0,0),(47,42,1,0),(48,43,0,0),(49,44,1,0),(50,45,0,0),(51,46,0,0),(52,47,0,0),(53,48,0,0),(54,49,0,0),(55,50,0,0),(56,51,0,0),(57,52,1,0),(58,53,1,0),(59,54,0,0),(60,55,0,0),(61,56,0,0),(62,57,1,0),(63,58,0,0),(64,59,0,0),(65,60,0,0),(66,61,0,0),(67,62,0,0),(68,63,0,0),(69,64,0,0),(70,65,1,0),(71,65,1,0),(72,66,0,0),(73,65,1,0),(74,67,0,0),(75,65,1,0),(76,68,0,0),(77,70,1,0),(78,71,0,0),(79,70,1,0),(80,72,0,0),(81,70,1,0),(82,70,1,0),(83,73,1,0),(84,74,0,0),(85,75,0,0),(86,77,0,0),(87,78,0,0),(88,79,0,0),(89,80,0,0),(90,81,1,0),(91,82,0,0),(92,83,0,0),(93,84,1,0),(94,85,0,0),(95,86,0,0),(96,87,0,0),(97,88,0,0),(98,89,1,0),(99,89,1,0),(100,89,1,0),(101,89,1,0),(102,90,0,0),(103,91,0,0),(104,92,1,0),(105,93,0,0),(106,94,0,0),(107,95,0,0),(108,96,1,0),(109,98,0,0),(110,99,0,0),(111,100,0,0),(112,102,0,0),(113,103,0,0),(114,104,0,0),(115,104,0,0),(116,105,1,0),(117,105,1,0),(118,105,1,0),(119,105,1,0),(120,106,0,0),(121,107,0,0),(122,108,0,0),(123,109,0,0),(124,110,0,0),(125,111,0,0),(126,112,1,0),(127,113,1,0),(128,114,0,0),(129,115,0,0),(130,116,0,0),(131,117,0,0),(132,118,0,0),(133,119,0,0),(134,120,0,0),(135,121,0,0),(136,122,0,0),(137,123,0,0),(138,124,0,0),(139,125,0,0),(140,126,0,0),(141,127,0,0),(142,128,0,0),(143,129,0,0),(144,130,0,0),(145,131,0,0),(146,132,0,0),(147,133,0,0),(148,134,0,0),(149,135,0,0),(150,136,0,0),(151,137,0,0),(152,138,1,0),(153,138,0,0),(154,138,0,0),(155,138,0,0),(156,139,0,0),(157,140,0,0),(158,141,0,0),(159,142,0,0),(160,143,0,0),(161,144,0,0),(162,145,0,0),(163,146,0,0),(164,147,0,0),(165,148,0,0),(166,149,0,0),(167,150,0,0),(168,151,0,0),(169,152,0,0),(170,153,0,0),(171,154,0,0),(172,155,0,0),(173,156,0,0),(174,157,0,0),(175,158,0,0),(176,159,0,0),(177,160,0,0),(178,161,0,0),(179,162,0,0),(180,163,0,0),(181,164,0,0),(182,165,0,0),(183,166,0,0),(184,167,0,0),(185,168,0,0),(186,169,0,0),(187,170,0,0),(188,171,0,0),(189,172,0,0),(190,176,0,0),(191,177,0,0),(192,178,0,0),(193,179,0,0),(194,180,0,0),(195,181,0,0),(196,182,0,0),(197,182,0,0),(198,183,1,0),(199,184,0,0),(200,185,0,0),(201,186,0,0),(202,187,0,0),(203,188,0,0),(204,189,0,0),(205,190,0,0),(206,191,0,0),(207,192,0,0),(208,193,0,0),(209,194,0,0),(210,195,0,0),(211,196,0,0),(212,197,0,0),(213,198,0,0),(214,199,0,0),(215,200,0,0),(216,201,0,0),(217,202,0,0),(218,203,0,0),(219,204,0,0),(220,205,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (7,'android.permission.ACCESS_COARSE_LOCATION'),(6,'android.permission.ACCESS_FINE_LOCATION'),(10,'android.permission.ACCESS_NETWORK_STATE'),(13,'android.permission.ACCESS_WIFI_STATE'),(12,'android.permission.BROADCAST_SMS'),(9,'android.permission.CHANGE_NETWORK_STATE'),(4,'android.permission.INTERNET'),(1,'android.permission.READ_PHONE_STATE'),(2,'android.permission.RECEIVE_BOOT_COMPLETED'),(8,'android.permission.RECEIVE_SMS'),(3,'android.permission.SEND_SMS'),(11,'android.permission.WAKE_LOCK'),(5,'android.permission.WRITE_EXTERNAL_STORAGE');
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'geo:,',NULL,NULL,NULL),(2,NULL,NULL,'geo:(.*),(.*)',NULL,NULL,NULL),(3,NULL,NULL,'geo:(.*),',NULL,NULL,NULL),(4,NULL,NULL,'geo:,(.*)',NULL,NULL,NULL),(5,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(6,NULL,NULL,'http://apps.virsir.com/10010.html',NULL,NULL,NULL),(7,NULL,NULL,'market://search?q=pub:virsir.com',NULL,NULL,NULL),(8,NULL,NULL,'market://search?q=pub:virsir.com',NULL,NULL,NULL),(9,NULL,NULL,'market://search?q=pub:virsir.com',NULL,NULL,NULL),(10,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(11,NULL,NULL,'geo:,',NULL,NULL,NULL),(12,NULL,NULL,'geo:(.*),(.*)',NULL,NULL,NULL),(13,NULL,NULL,'geo:(.*),',NULL,NULL,NULL),(14,NULL,NULL,'geo:,(.*)',NULL,NULL,NULL),(15,NULL,NULL,'market://search?q=pub:virsir.com',NULL,NULL,NULL),(16,NULL,NULL,'http://apps.virsir.com/10010.html',NULL,NULL,NULL),(17,NULL,NULL,'http://apps.virsir.com/10010.html',NULL,NULL,NULL),(18,NULL,NULL,'market://search?q=pub:virsir.com',NULL,NULL,NULL),(19,NULL,NULL,'http://apps.virsir.com/10010.html',NULL,NULL,NULL),(20,NULL,NULL,'market://search?q=pub:virsir.com',NULL,NULL,NULL),(21,NULL,NULL,'market://search?q=pub:virsir.com',NULL,NULL,NULL),(22,NULL,NULL,'geo:,',NULL,NULL,NULL),(23,NULL,NULL,'geo:(.*),(.*)',NULL,NULL,NULL),(24,NULL,NULL,'geo:(.*),',NULL,NULL,NULL),(25,NULL,NULL,'geo:,(.*)',NULL,NULL,NULL),(26,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(27,NULL,NULL,'geo:,',NULL,NULL,NULL),(28,NULL,NULL,'geo:(.*),(.*)',NULL,NULL,NULL),(29,NULL,NULL,'geo:(.*),',NULL,NULL,NULL),(30,NULL,NULL,'geo:,(.*)',NULL,NULL,NULL),(31,NULL,NULL,'market://search?q=pub:virsir.com',NULL,NULL,NULL),(32,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(33,NULL,NULL,'http://apps.virsir.com/10010.html',NULL,NULL,NULL),(34,NULL,NULL,'market://search?q=pub:virsir.com',NULL,NULL,NULL),(35,NULL,NULL,'geo:,',NULL,NULL,NULL),(36,NULL,NULL,'geo:(.*),(.*)',NULL,NULL,NULL),(37,NULL,NULL,'geo:(.*),',NULL,NULL,NULL),(38,NULL,NULL,'geo:,(.*)',NULL,NULL,NULL),(39,NULL,NULL,'market://search?q=pub:virsir.com',NULL,NULL,NULL),(40,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(41,NULL,NULL,'http://apps.virsir.com/10010.html',NULL,NULL,NULL),(42,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(43,NULL,NULL,'geo:,',NULL,NULL,NULL),(44,NULL,NULL,'geo:(.*),(.*)',NULL,NULL,NULL),(45,NULL,NULL,'geo:(.*),',NULL,NULL,NULL),(46,NULL,NULL,'geo:,(.*)',NULL,NULL,NULL),(47,NULL,NULL,'market://search?q=pub:virsir.com',NULL,NULL,NULL),(48,NULL,NULL,'market://search?q=pub:virsir.com',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,10,5),(2,29,10),(3,69,26),(4,76,32),(5,97,40),(6,101,42);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,2,1),(13,2,2),(14,2,3),(15,2,4),(16,2,5),(17,2,6),(18,2,7),(19,2,8),(20,2,9),(21,2,10),(22,2,11),(23,2,13);
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

-- Dump completed on 2015-10-09  0:41:04
