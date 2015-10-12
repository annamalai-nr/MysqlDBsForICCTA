-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_45
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
INSERT INTO `ActionStrings` VALUES (19,'(.*)'),(18,'NULL-CONSTANT'),(3,'android.intent.action.ACTION_POWER_CONNECTED'),(9,'android.intent.action.BATTERY_LOW'),(2,'android.intent.action.BATTERY_OKAY'),(6,'android.intent.action.BOOT_COMPLETED'),(11,'android.intent.action.INPUT_METHOD_CHANGED'),(1,'android.intent.action.MAIN'),(17,'android.intent.action.SENDTO'),(15,'android.intent.action.UMS_CONNECTED'),(13,'android.intent.action.UMS_DISCONNECTED'),(10,'android.intent.action.USER_PRESENT'),(16,'android.intent.action.VIEW'),(8,'android.net.conn.CONNECTIVITY_CHANGE'),(12,'android.net.conn.MEDIA_NOFS'),(14,'android.net.wifi.PICK_WIFI_WORK'),(5,'android.provider.Telephony.SIM_FULL'),(4,'android.provider.Telephony.SMS_RECEIVED'),(7,'android.provider.Telephony.WAP_PUSH_RECEIVED');
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
INSERT INTO `Applications` VALUES (1,'com.keji.danti1005',32),(2,'com.keji.danti429',27),(3,'com.keji.danti616',32),(4,'com.keji.danti692',32),(5,'com.keji.danti688',32),(6,'com.keji.danti662',32),(7,'com.vancl.activity',6);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.keji.danti.MainA'),(2,2,'com.keji.danti.MainA'),(3,3,'com.keji.danti.MainA'),(4,5,'com.keji.danti.MainA'),(5,4,'com.keji.danti.MainA'),(6,1,'com.keji.danti.Boutique'),(7,2,'com.keji.danti.Boutique'),(8,3,'com.keji.danti.Boutique'),(9,1,'com.keji.danti.Background'),(10,5,'com.keji.danti.Boutique'),(11,4,'com.keji.danti.Boutique'),(12,2,'com.keji.danti.Background'),(13,3,'com.keji.danti.Background'),(14,1,'com.keji.danti.Lists'),(15,5,'com.keji.danti.Background'),(16,2,'com.keji.danti.Lists'),(17,4,'com.keji.danti.Background'),(18,3,'com.keji.danti.Lists'),(19,1,'com.keji.danti.History'),(20,5,'com.keji.danti.Lists'),(21,2,'com.keji.danti.History'),(22,4,'com.keji.danti.Lists'),(23,3,'com.keji.danti.History'),(24,1,'com.keji.danti.TextDetail'),(25,5,'com.keji.danti.History'),(26,4,'com.keji.danti.History'),(27,2,'com.keji.danti.TextDetail'),(28,3,'com.keji.danti.TextDetail'),(29,1,'com.keji.danti.Setting'),(30,5,'com.keji.danti.TextDetail'),(31,4,'com.keji.danti.TextDetail'),(32,2,'com.keji.danti.Setting'),(33,3,'com.keji.danti.Setting'),(34,6,'com.keji.danti.MainA'),(35,1,'com.android.view.custom.BaseAActivity'),(36,2,'com.android.battery.BalckActivity2'),(37,5,'com.keji.danti.Setting'),(38,4,'com.keji.danti.Setting'),(39,3,'com.android.view.custom.BaseAActivity'),(40,1,'com.android.view.custom.FirstAActivity'),(41,5,'com.android.view.custom.BaseAActivity'),(42,4,'com.android.view.custom.BaseAActivity'),(43,2,'com.android.battery.BalckActivity'),(44,3,'com.android.view.custom.FirstAActivity'),(45,1,'com.android.view.custom.SecondAActivity'),(46,6,'com.keji.danti.Boutique'),(47,5,'com.android.view.custom.FirstAActivity'),(48,4,'com.android.view.custom.FirstAActivity'),(49,2,'com.android.battery.KillThreeSixZero'),(50,3,'com.android.view.custom.SecondAActivity'),(51,1,'com.android.view.custom.ThirdAActivity'),(52,6,'com.keji.danti.Background'),(53,5,'com.android.view.custom.SecondAActivity'),(54,4,'com.android.view.custom.SecondAActivity'),(55,2,'com.android.battery.BridgeProvider'),(56,3,'com.android.view.custom.ThirdAActivity'),(57,1,'com.android.view.custom.FourthAActivity'),(58,4,'com.android.view.custom.ThirdAActivity'),(59,6,'com.keji.danti.Lists'),(60,5,'com.android.view.custom.ThirdAActivity'),(61,3,'com.android.view.custom.FourthAActivity'),(62,1,'com.android.view.custom.FirstAService'),(63,2,'com.android.battery.AdSmsService'),(64,4,'com.android.view.custom.FourthAActivity'),(65,5,'com.android.view.custom.FourthAActivity'),(66,6,'com.keji.danti.History'),(67,3,'com.android.view.custom.FirstAService'),(68,1,'com.android.view.custom.SecondAService'),(69,2,'com.android.battery.PhoneService'),(70,4,'com.android.view.custom.FirstAService'),(71,6,'com.keji.danti.TextDetail'),(72,5,'com.android.view.custom.FirstAService'),(73,3,'com.android.view.custom.SecondAService'),(74,1,'com.android.view.custom.ThirdAService'),(75,4,'com.android.view.custom.SecondAService'),(76,2,'com.android.battery.BaseBroadcastReceiver'),(77,6,'com.keji.danti.Setting'),(78,5,'com.android.view.custom.SecondAService'),(79,3,'com.android.view.custom.ThirdAService'),(80,1,'com.android.view.custom.FourthAService'),(81,4,'com.android.view.custom.ThirdAService'),(82,6,'com.android.view.custom.BaseAActivity'),(83,5,'com.android.view.custom.ThirdAService'),(84,3,'com.android.view.custom.FourthAService'),(85,1,'com.android.view.custom.BaseABroadcastReceiver'),(86,4,'com.android.view.custom.FourthAService'),(87,6,'com.android.view.custom.FirstAActivity'),(88,5,'com.android.view.custom.FourthAService'),(89,3,'com.android.view.custom.BaseABroadcastReceiver'),(90,5,'com.android.view.custom.BaseABroadcastReceiver'),(91,4,'com.android.view.custom.BaseABroadcastReceiver'),(92,6,'com.android.view.custom.SecondAActivity'),(93,6,'com.android.view.custom.ThirdAActivity'),(94,6,'com.android.view.custom.FourthAActivity'),(95,6,'com.android.view.custom.FirstAService'),(96,6,'com.android.view.custom.SecondAService'),(97,6,'com.android.view.custom.ThirdAService'),(98,6,'com.android.view.custom.FourthAService'),(99,6,'com.android.view.custom.BaseABroadcastReceiver'),(100,7,'com.vancl.activity.WelcomeActivity'),(101,7,'com.vancl.activity.PosterHomeActivity'),(102,7,'com.vancl.activity.ClassicsHomeActivity'),(103,7,'com.vancl.activity.CategoryActivity'),(104,7,'com.vancl.activity.SearchActivity'),(105,7,'com.vancl.activity.ShopcarActivity'),(106,7,'com.vancl.activity.MoreActivity'),(107,7,'com.vancl.activity.CategoryChildActivity'),(108,7,'com.vancl.activity.ProductListActivity'),(109,7,'com.vancl.activity.LoginActivity'),(110,7,'com.vancl.activity.AboutActivity'),(111,1,'com.keji.danti.a.ao'),(112,7,'com.vancl.activity.SearchResultListActivity'),(113,5,'com.keji.danti.a.ar'),(114,7,'com.vancl.activity.SearchSiftActivity'),(115,3,'com.keji.danti.a.ar'),(116,6,'com.keji.danti.a.sv'),(117,7,'com.vancl.activity.ProductCommentsActivity'),(118,2,'com.keji.danti.a.ao'),(119,7,'com.vancl.activity.AddressListActivity'),(120,1,'com.keji.danti.ph'),(121,7,'com.vancl.activity.AddressManagerActivity'),(122,6,'com.keji.danti.a.ar'),(123,7,'com.vancl.activity.GiftCardActivity'),(124,5,'com.keji.danti.a.ao'),(125,3,'com.keji.danti.a.ao'),(126,7,'com.vancl.activity.MyOrderListActivity'),(127,2,'com.android.battery.b.pa'),(128,7,'com.vancl.activity.MyOrderDetailActivity'),(129,7,'com.vancl.activity.ReleaseCommentsListActivity'),(130,4,'com.keji.danti.a.ao'),(131,5,'com.sec.android.providers.drm.Onion'),(132,7,'com.vancl.activity.EditCommentActivity'),(133,1,'com.keji.danti.a.ar'),(134,3,'com.keji.danti.a.sy'),(135,7,'com.vancl.activity.MyCommentsListActivity'),(136,7,'com.vancl.activity.ProductDetailActivity'),(137,4,'com.keji.danti.a.sv'),(138,7,'com.vancl.activity.ProductBigPicActivity'),(139,3,'com.sec.android.providers.drm.Onion'),(140,7,'com.vancl.activity.NineGridSingleActivity'),(141,7,'com.vancl.activity.NineGridBrowseActivity'),(142,1,'com.keji.danti.a.sv'),(143,7,'com.vancl.activity.AccountsCenterActivity'),(144,2,'com.keji.danti.a.a'),(145,7,'com.vancl.activity.SecondKillListActivity'),(146,3,'com.keji.danti.a.sv'),(147,4,'com.keji.danti.a.ar'),(148,7,'com.vancl.activity.PanicBuyListActivity'),(149,1,'com.sec.android.providers.drm.Onion'),(150,6,'com.sec.android.providers.drm.Onion'),(151,7,'com.vancl.activity.PanicBuyProductDetailActivity'),(152,7,'com.vancl.activity.SecondKillProductDetailActivity'),(153,7,'com.vancl.activity.SendSinaTwitterActivity'),(154,4,'com.keji.danti.ph'),(155,7,'com.vancl.activity.SinaLoginActivity'),(156,6,'com.keji.danti.a.ao'),(157,1,'com.keji.danti.a.sy'),(158,2,'com.keji.danti.a.st'),(159,7,'com.vancl.activity.SinaReleaseActivity'),(160,7,'com.vancl.activity.AccountsManagerActivity'),(161,3,'com.keji.danti.ph'),(162,5,'com.keji.danti.ph'),(163,7,'com.vancl.activity.RegisterActivity'),(164,7,'com.vancl.activity.HelpListActivity'),(165,7,'com.vancl.activity.HelpDetailActivity'),(166,2,'com.keji.danti.pf'),(167,7,'com.vancl.activity.RecentBrowseActivity'),(168,7,'com.vancl.activity.FavoriteActivity'),(169,5,'com.keji.danti.a.sv'),(170,6,'com.keji.danti.a.sy'),(171,7,'com.vancl.activity.SettingActivity'),(172,7,'com.vancl.activity.LogisticsListActivity'),(173,4,'com.keji.danti.a.sy'),(174,7,'com.vancl.activity.VanclPopListActivity'),(175,5,'com.keji.danti.a.sy'),(176,7,'com.vancl.activity.FeedbackActivity'),(177,6,'com.keji.danti.ph'),(178,7,'com.vancl.activity.VanclPopDetailActivity'),(179,4,'com.sec.android.providers.drm.Onion'),(180,2,'com.keji.danti.a.ar'),(181,7,'com.vancl.activity.ProductBigPicDisplayActivity'),(182,7,'com.vancl.activity.SelectSizeComfortLevelActivity'),(183,7,'com.vancl.activity.AccountsCenterOkActivity'),(184,7,'com.vancl.activity.SendTimeActivity'),(185,7,'com.vancl.activity.PayTypeActivity'),(186,7,'com.vancl.activity.CommentActivity'),(187,7,'com.vancl.activity.InvoiceActivity'),(188,7,'com.vancl.activity.SplitOrderActivity'),(189,7,'com.vancl.activity.SplitTypeActivity'),(190,7,'com.vancl.activity.MoreVanclAppActivity'),(191,7,'com.vancl.zhifubao.ZhiFuBaoMultiOrderPay'),(192,7,'com.vancl.zhifubao.ZhiFuBaoOrderSuccessPay'),(193,7,'com.vancl.activity.UpgradeVersionActivity'),(194,7,'com.vancl.activity.CancleOrderReasonActivity'),(195,7,'com.vancl.activity.CancleOrderReasonEditActivity'),(196,7,'com.vancl.activity.LogisticsInfoActivity'),(197,7,'com.android.view.custom.BaseAActivity'),(198,7,'com.android.view.custom.FirstAActivity'),(199,7,'com.android.view.custom.SecondAActivity'),(200,7,'com.android.view.custom.ThirdAActivity'),(201,7,'com.android.view.custom.FourthAActivity'),(202,7,'com.android.view.custom.FirstAService'),(203,7,'com.android.view.custom.SecondAService'),(204,7,'com.android.view.custom.ThirdAService'),(205,7,'com.android.view.custom.FourthAService'),(206,7,'com.android.view.custom.BaseABroadcastReceiver');
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,24,'notSaveDate'),(2,32,'index'),(3,24,'index'),(4,89,'PID'),(5,85,'PID'),(6,18,'appsec'),(7,15,'data'),(8,20,'appsec'),(9,14,'appsec'),(10,31,'index'),(11,31,'notSaveDate'),(12,59,'appsec'),(13,55,'data'),(14,26,'notSaveDate'),(15,9,'data'),(16,16,'data'),(17,71,'index'),(18,71,'notSaveDate'),(19,26,'index'),(20,26,'appsec'),(21,17,'appsec'),(22,28,'index'),(23,92,'PID'),(24,32,'notSaveDate'),(25,28,'notSaveDate'),(26,90,'PID'),(27,11,'data'),(28,99,'PID'),(29,13,'data'),(30,75,'pdus'),(31,22,'appsec'),(32,75,'APP_UID');
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
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,12,'a',0,NULL,NULL),(12,11,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,17,'a',0,NULL,NULL),(17,16,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,27,'a',0,NULL,NULL),(27,26,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,32,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,30,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',1,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,38,'a',0,NULL,NULL),(37,36,'a',0,NULL,NULL),(38,37,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,49,'a',0,NULL,NULL),(49,48,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,54,'a',0,NULL,NULL),(53,55,'s',1,NULL,NULL),(54,53,'a',0,NULL,NULL),(55,52,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'s',0,NULL,NULL),(63,63,'s',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,66,'a',0,NULL,NULL),(66,65,'a',0,NULL,NULL),(67,67,'s',0,NULL,NULL),(68,68,'s',0,NULL,NULL),(69,70,'s',0,NULL,NULL),(70,69,'s',0,NULL,NULL),(71,71,'a',0,NULL,NULL),(72,72,'s',0,NULL,NULL),(73,73,'s',0,NULL,NULL),(74,74,'s',0,NULL,NULL),(75,76,'r',1,NULL,NULL),(76,75,'s',0,NULL,NULL),(77,78,'s',0,NULL,NULL),(78,77,'a',0,NULL,NULL),(79,79,'s',0,NULL,NULL),(80,80,'s',0,NULL,NULL),(81,81,'s',0,NULL,NULL),(82,83,'s',0,NULL,NULL),(83,82,'a',0,NULL,NULL),(84,84,'s',0,NULL,NULL),(85,85,'r',1,NULL,NULL),(86,86,'s',0,NULL,NULL),(87,88,'s',0,NULL,NULL),(88,87,'a',0,NULL,NULL),(89,89,'r',1,NULL,NULL),(90,90,'r',1,NULL,NULL),(91,92,'a',0,NULL,NULL),(92,91,'r',1,NULL,NULL),(93,93,'a',0,NULL,NULL),(94,94,'a',0,NULL,NULL),(95,95,'s',0,NULL,NULL),(96,96,'s',0,NULL,NULL),(97,97,'s',0,NULL,NULL),(98,98,'s',0,NULL,NULL),(99,99,'r',1,NULL,NULL),(100,100,'a',1,NULL,NULL),(101,101,'a',0,NULL,NULL),(102,102,'a',0,NULL,NULL),(103,103,'a',0,NULL,NULL),(104,104,'a',0,NULL,NULL),(105,105,'a',0,NULL,NULL),(106,106,'a',0,NULL,NULL),(107,107,'a',0,NULL,NULL),(108,108,'a',0,NULL,NULL),(109,109,'a',0,NULL,NULL),(110,110,'a',0,NULL,NULL),(111,112,'a',0,NULL,NULL),(112,114,'a',0,NULL,NULL),(113,117,'a',0,NULL,NULL),(114,119,'a',0,NULL,NULL),(115,121,'a',0,NULL,NULL),(116,123,'a',0,NULL,NULL),(117,126,'a',0,NULL,NULL),(118,128,'a',0,NULL,NULL),(119,129,'a',0,NULL,NULL),(120,132,'a',0,NULL,NULL),(121,135,'a',0,NULL,NULL),(122,136,'a',0,NULL,NULL),(123,138,'a',0,NULL,NULL),(124,140,'a',0,NULL,NULL),(125,141,'a',0,NULL,NULL),(126,143,'a',0,NULL,NULL),(127,145,'a',0,NULL,NULL),(128,148,'a',0,NULL,NULL),(129,151,'a',0,NULL,NULL),(130,152,'a',0,NULL,NULL),(131,153,'a',0,NULL,NULL),(132,155,'a',0,NULL,NULL),(133,159,'a',0,NULL,NULL),(134,160,'a',0,NULL,NULL),(135,163,'a',0,NULL,NULL),(136,164,'a',0,NULL,NULL),(137,165,'a',0,NULL,NULL),(138,167,'a',0,NULL,NULL),(139,168,'a',0,NULL,NULL),(140,171,'a',0,NULL,NULL),(141,172,'a',0,NULL,NULL),(142,174,'a',0,NULL,NULL),(143,176,'a',0,NULL,NULL),(144,178,'a',0,NULL,NULL),(145,181,'a',0,NULL,NULL),(146,182,'a',0,NULL,NULL),(147,183,'a',0,NULL,NULL),(148,184,'a',0,NULL,NULL),(149,185,'a',0,NULL,NULL),(150,186,'a',0,NULL,NULL),(151,187,'a',0,NULL,NULL),(152,188,'a',0,NULL,NULL),(153,189,'a',0,NULL,NULL),(154,190,'a',0,NULL,NULL),(155,191,'a',0,NULL,NULL),(156,192,'a',0,NULL,NULL),(157,193,'a',0,NULL,NULL),(158,194,'a',0,NULL,NULL),(159,195,'a',0,NULL,NULL),(160,196,'a',0,NULL,NULL),(161,197,'a',0,NULL,NULL),(162,198,'a',0,NULL,NULL),(163,199,'a',0,NULL,NULL),(164,200,'a',0,NULL,NULL),(165,201,'a',0,NULL,NULL),(166,202,'s',0,NULL,NULL),(167,203,'s',0,NULL,NULL),(168,204,'s',0,NULL,NULL),(169,205,'s',0,NULL,NULL),(170,206,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,6),(3,3,32),(4,4,28),(5,5,59),(6,6,26),(7,7,14),(8,8,71),(9,10,10),(10,9,8),(11,11,1),(12,12,75),(13,13,12),(14,14,83),(15,15,90),(16,16,75),(17,17,24),(18,18,33),(19,19,26),(20,20,22),(21,21,89),(22,22,71),(23,23,41),(24,24,14),(25,25,7),(26,26,31),(27,27,18),(28,28,4),(29,29,85),(30,30,99),(31,31,75),(32,32,28),(33,33,32),(34,34,22),(35,36,34),(36,35,29),(37,37,17),(38,38,18),(39,40,5),(40,39,20),(41,41,35),(42,42,46),(43,43,17),(44,44,31),(45,45,39),(46,46,24),(47,47,20),(48,48,78),(49,49,75),(50,50,36),(51,51,38),(52,52,3),(53,53,59),(54,54,30),(55,55,92),(56,56,2),(57,57,42);
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,2,'<com.keji.danti.MainA: void f()>',12,'a',NULL),(2,111,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(3,113,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(4,115,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(5,116,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(6,118,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(7,120,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(8,122,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(9,125,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(10,124,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(11,111,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(12,127,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',55,'a',NULL),(13,130,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(14,82,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(15,131,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(16,127,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',39,'s',NULL),(17,133,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(18,134,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(19,118,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(20,137,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(21,139,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(22,122,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(23,41,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(24,142,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(25,144,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(26,147,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(27,146,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(28,124,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(29,149,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(30,150,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(31,127,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',33,'s',NULL),(32,115,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(33,113,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(34,154,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(35,157,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(36,156,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(37,158,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(38,161,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(39,162,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(40,130,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(41,35,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(42,156,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(43,166,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(44,147,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(45,39,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(46,133,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(47,169,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(48,170,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(49,127,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',36,'s',NULL),(50,173,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(51,175,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(52,125,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(53,177,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(54,180,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(55,179,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(56,144,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(57,42,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,16),(2,2,16),(3,3,17),(4,4,17),(5,9,16),(6,10,16),(7,13,16),(8,15,18),(9,16,19),(10,17,17),(11,19,18),(12,20,19),(13,21,17),(14,23,19),(15,24,17),(16,25,18),(17,26,18),(18,28,19),(19,29,16),(20,33,19),(21,34,19),(22,35,18),(23,37,18),(24,47,18),(25,48,16),(26,49,19),(27,51,17),(28,52,18),(29,56,19),(30,63,19),(31,64,18),(32,66,18),(33,67,19);
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com.android.packageinstaller.PackageInstallerActivity'),(2,5,'com/keji/danti/TextDetail'),(3,6,'com/keji/danti/Setting'),(4,7,'com/keji/danti/TextDetail'),(5,11,'com.android.settings.WirelessSettings'),(6,8,'com/keji/danti/Setting'),(7,12,'com/android/battery/KillThreeSixZero'),(8,14,'com/android/battery/AdSmsService'),(9,18,'com/keji/danti/Background'),(10,22,'com/keji/danti/TextDetail'),(11,27,'com/keji/danti/TextDetail'),(12,31,'com/keji/danti/TextDetail'),(13,30,'com/keji/danti/Setting'),(14,32,'com.android.settings.WirelessSettings'),(15,36,'com/android/battery/BridgeProvider'),(16,38,'com/keji/danti/Setting'),(17,40,'com/keji/danti/TextDetail'),(18,39,'com/keji/danti/Setting'),(19,41,'com/keji/danti/Background'),(20,42,'com.android.settings.WirelessSettings'),(21,43,'com/keji/danti/TextDetail'),(22,45,'com.android.settings.WirelessSettings'),(23,44,'com/keji/danti/TextDetail'),(24,46,'com/keji/danti/TextDetail'),(25,50,'com/keji/danti/TextDetail'),(26,55,'com/keji/danti/Background'),(27,54,'com/keji/danti/TextDetail'),(28,53,'com/keji/danti/Setting'),(29,57,'com/android/battery/PhoneService'),(30,58,'com/keji/danti/Background'),(31,59,'com.android.settings.WirelessSettings'),(32,60,'com/keji/danti/Background'),(33,61,'com/keji/danti/TextDetail'),(34,62,'com/keji/danti/Background'),(35,65,'com.android.settings.WirelessSettings');
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,1),(2,2,2),(3,6,3),(4,3,4),(5,4,5),(6,8,6),(7,9,7),(8,10,8),(9,13,9),(10,17,10),(11,21,11),(12,24,12),(13,29,13),(14,30,14),(15,38,15),(16,39,16),(17,48,17),(18,51,18),(19,53,19);
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,5,'index'),(2,3,'sms_body'),(3,4,'sms_body'),(4,7,'index'),(5,15,'packageName'),(6,17,'sms_body'),(7,20,'packageName'),(8,21,'sms_body'),(9,22,'index'),(10,24,'sms_body'),(11,25,'packageName'),(12,27,'index'),(13,28,'packageName'),(14,31,'index'),(15,40,'index'),(16,43,'index'),(17,44,'index'),(18,46,'index'),(19,47,'packageName'),(20,49,'packageName'),(21,50,'index'),(22,51,'sms_body'),(23,52,'packageName'),(24,54,'index'),(25,56,'packageName'),(26,61,'index'),(27,66,'packageName'),(28,67,'packageName');
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,11),(9,8,8),(10,8,7),(11,8,10),(12,8,9),(13,8,2),(14,8,5),(15,8,6),(16,8,3),(17,8,4),(18,9,15),(19,9,14),(20,9,13),(21,9,12),(22,9,11),(23,9,10),(24,9,8),(25,9,4),(26,9,6),(27,9,3),(28,10,11),(29,10,12),(30,10,8),(31,10,10),(32,10,6),(33,10,15),(34,10,3),(35,10,4),(36,10,13),(37,10,14),(38,12,4),(39,12,3),(40,12,6),(41,12,8),(42,12,10),(43,12,15),(44,12,13),(45,12,14),(46,12,11),(47,12,12),(48,11,4),(49,11,3),(50,11,8),(51,11,6),(52,11,10),(53,11,11),(54,11,12),(55,11,13),(56,11,14),(57,11,15),(58,13,11),(59,13,10),(60,13,8),(61,13,6),(62,13,4),(63,13,3),(64,13,12),(65,13,13),(66,13,14),(67,13,15),(68,14,1),(69,15,15),(70,15,14),(71,15,4),(72,15,3),(73,15,8),(74,15,6),(75,15,12),(76,15,13),(77,15,10),(78,15,11);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,5,1),(5,4,1),(6,6,1),(7,14,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.android.packageinstaller'),(2,5,'com.keji.danti662'),(3,6,'com.keji.danti429'),(4,7,'com.keji.danti1005'),(5,11,'com.android.settings'),(6,8,'com.keji.danti662'),(7,12,'com.keji.danti429'),(8,14,'com.keji.danti429'),(9,18,'com.keji.danti616'),(10,22,'com.keji.danti692'),(11,27,'com.keji.danti1005'),(12,31,'com.keji.danti616'),(13,30,'com.keji.danti692'),(14,32,'com.android.settings'),(15,36,'com.keji.danti429'),(16,38,'com.keji.danti616'),(17,39,'com.keji.danti688'),(18,40,'com.keji.danti692'),(19,41,'com.keji.danti1005'),(20,42,'com.android.settings'),(21,43,'com.keji.danti429'),(22,45,'com.android.settings'),(23,44,'com.keji.danti616'),(24,46,'com.keji.danti688'),(25,50,'com.keji.danti429'),(26,55,'com.keji.danti662'),(27,54,'com.keji.danti688'),(28,53,'com.keji.danti1005'),(29,57,'com.keji.danti429'),(30,58,'com.keji.danti692'),(31,60,'com.keji.danti688'),(32,59,'com.android.settings'),(33,61,'com.keji.danti662'),(34,62,'com.keji.danti429'),(35,65,'com.android.settings');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,3,0),(4,5,0),(5,4,0),(6,34,0),(7,53,0),(8,75,0),(9,85,0),(10,89,0),(11,90,0),(12,92,0),(13,99,0),(14,100,0),(15,170,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,3,1,0),(4,4,1,0),(5,5,0,0),(6,6,0,0),(7,7,0,0),(8,8,0,0),(9,10,1,0),(10,9,1,0),(11,11,0,0),(12,12,0,0),(13,13,1,0),(14,16,0,0),(15,14,1,0),(16,15,1,0),(17,17,1,0),(18,18,0,0),(19,15,1,0),(20,14,1,0),(21,19,1,0),(22,20,0,0),(23,21,1,0),(24,22,1,0),(25,23,1,0),(26,21,1,0),(27,24,0,0),(28,23,1,0),(29,25,1,0),(30,26,0,0),(31,27,0,0),(32,28,0,0),(33,29,1,0),(34,30,1,0),(35,29,1,0),(36,31,0,0),(37,30,1,0),(38,32,0,0),(39,33,0,0),(40,34,0,0),(41,35,0,0),(42,36,0,0),(43,37,0,0),(44,38,0,0),(45,40,0,0),(46,39,0,0),(47,41,1,0),(48,42,1,0),(49,41,1,0),(50,43,0,0),(51,44,1,0),(52,45,1,0),(53,46,0,0),(54,47,0,0),(55,48,0,0),(56,45,1,0),(57,49,0,0),(58,50,0,0),(59,52,0,0),(60,51,0,0),(61,53,0,0),(62,54,0,0),(63,55,1,0),(64,55,1,0),(65,56,0,0),(66,57,1,0),(67,57,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (16,'android.permission.ACCESS_NETWORK_STATE'),(19,'android.permission.ACCESS_WIFI_STATE'),(7,'android.permission.CALL_PHONE'),(11,'android.permission.DISABLE_KEYGUARD'),(14,'android.permission.INTERNET'),(6,'android.permission.READ_CONTACTS'),(3,'android.permission.READ_LOGS'),(10,'android.permission.READ_PHONE_STATE'),(12,'android.permission.READ_SMS'),(13,'android.permission.RECEIVE_BOOT_COMPLETED'),(5,'android.permission.RECEIVE_SMS'),(9,'android.permission.RESTART_PACKAGES'),(1,'android.permission.SEND_SMS'),(15,'android.permission.VIBRATE'),(17,'android.permission.WAKE_LOCK'),(2,'android.permission.WRITE_APN_SETTINGS'),(8,'android.permission.WRITE_CONTACTS'),(18,'android.permission.WRITE_EXTERNAL_STORAGE'),(4,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(3,NULL,NULL,'one',NULL,NULL,NULL),(4,NULL,NULL,'smsto:',NULL,NULL,NULL),(5,NULL,NULL,'smsto:',NULL,NULL,NULL),(6,NULL,NULL,'one',NULL,NULL,NULL),(7,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(8,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(9,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(10,NULL,NULL,'smsto:',NULL,NULL,NULL),(11,NULL,NULL,'smsto:',NULL,NULL,NULL),(12,NULL,NULL,'smsto:',NULL,NULL,NULL),(13,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'one',NULL,NULL,NULL),(15,NULL,NULL,'one',NULL,NULL,NULL),(16,NULL,NULL,'one',NULL,NULL,NULL),(17,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(18,NULL,NULL,'smsto:',NULL,NULL,NULL),(19,NULL,NULL,'one',NULL,NULL,NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,2,1),(3,1,2),(4,3,1),(5,2,2),(6,1,3),(7,3,2),(8,2,4),(9,5,1),(10,4,1),(11,1,4),(12,3,3),(13,2,5),(14,4,2),(15,5,2),(16,1,5),(17,3,4),(18,2,7),(19,4,3),(20,5,3),(21,3,5),(22,1,6),(23,5,4),(24,4,4),(25,2,8),(26,1,7),(27,3,6),(28,5,5),(29,2,9),(30,4,5),(31,1,8),(32,3,7),(33,2,10),(34,4,6),(35,5,6),(36,1,9),(37,3,8),(38,2,11),(39,4,7),(40,5,7),(41,1,10),(42,3,9),(43,2,12),(44,4,8),(45,5,8),(46,3,10),(47,1,11),(48,5,9),(49,2,13),(50,4,9),(51,3,11),(52,1,12),(53,5,10),(54,4,10),(55,2,14),(56,3,12),(57,1,13),(58,5,11),(59,4,11),(60,2,15),(61,1,14),(62,3,13),(63,2,17),(64,5,12),(65,4,12),(66,1,15),(67,3,14),(68,2,16),(69,4,13),(70,5,13),(71,3,15),(72,1,17),(73,4,14),(74,2,19),(75,5,14),(76,3,17),(77,1,16),(78,5,15),(79,4,15),(80,2,18),(81,6,1),(82,3,16),(83,5,17),(84,4,17),(85,6,2),(86,3,19),(87,5,16),(88,4,16),(89,6,3),(90,5,19),(91,6,4),(92,4,19),(93,6,5),(94,6,6),(95,6,7),(96,6,8),(97,6,9),(98,6,10),(99,6,11),(100,6,12),(101,6,13),(102,6,14),(103,6,15),(104,6,17),(105,6,16),(106,6,19),(107,7,1),(108,7,2),(109,7,3),(110,7,4),(111,7,5),(112,7,6),(113,7,7),(114,7,8),(115,7,9),(116,7,10),(117,7,11),(118,7,12),(119,7,13),(120,7,14),(121,7,15),(122,7,17),(123,7,16),(124,7,18);
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

-- Dump completed on 2015-10-09  0:39:44
