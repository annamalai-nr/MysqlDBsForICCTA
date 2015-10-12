-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_355
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
INSERT INTO `ActionStrings` VALUES (4,'SMS_SENT'),(10,'android.appwidget.action.APPWIDGET_UPDATE'),(18,'android.intent.action.CALL'),(6,'android.intent.action.CALL_BUTTON'),(17,'android.intent.action.CHOOSER'),(14,'android.intent.action.DATA_SMS_RECEIVED'),(2,'android.intent.action.DELETE'),(7,'android.intent.action.DIAL'),(23,'android.intent.action.EDIT'),(20,'android.intent.action.INSERT'),(19,'android.intent.action.INSERT_OR_EDIT'),(1,'android.intent.action.MAIN'),(13,'android.intent.action.PACKAGE_ADDED'),(12,'android.intent.action.PACKAGE_INSTALL'),(8,'android.intent.action.SEARCH'),(16,'android.intent.action.SEND'),(22,'android.intent.action.SENDTO'),(5,'android.intent.action.SIG_STR'),(3,'android.intent.action.VIEW'),(21,'android.intent.action.VOICE_COMMAND'),(15,'android.provider.Telephony.SECRET_CODE'),(9,'com.360buy.interfaceBroadcastReceiver'),(11,'jd_widget_update_action');
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
INSERT INTO `Applications` VALUES (1,'com.netflix.mediaclient',1),(2,'software.android',1),(3,'com.opera.mini.kaiqi',3),(4,'com.jbapps.contact',1),(5,'com.jingdong.app.mall',10),(6,'com.cmcc.mobilevideo',2030403);
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
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.BROWSABLE'),(2,'android.intent.category.DEFAULT'),(4,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.netflix.mediaclient.SplashScreen'),(2,1,'com.netflix.mediaclient.Main'),(3,2,'com.android.Main'),(4,2,'software.android.Program'),(5,1,'com.netflix.mediaclient.Main$1'),(6,1,'com.netflix.mediaclient.SplashScreen$1'),(7,2,'software.android.Program$4'),(8,2,'com.android.Main$4'),(9,2,'software.android.Program$5'),(10,2,'com.android.Main$5'),(11,3,'com.opera.mini.kaiqi.KaiqiBrowser'),(12,3,'com.i22.angrybirds.cccccc'),(13,3,'com.i22.angrybirds.bbbbbb'),(14,3,'com.i22.angrybirds.dddddd'),(15,3,'com.i22.angrybirds.aaaaaa'),(16,4,'com.jbapps.contact.ui.MainEntry'),(17,4,'com.jbapps.contact.ui.DialerTabActivity'),(18,4,'com.jbapps.contact.ui.DialActivity'),(19,4,'com.jbapps.contact.ui.RecentCalllistActivity'),(20,4,'com.jbapps.contact.ui.ContactListActivity'),(21,4,'com.jbapps.contact.ui.GroupActivity'),(22,4,'com.jbapps.contact.ui.FavActivity'),(23,4,'com.jbapps.contact.ui.RecentCallDetailActivity'),(24,4,'com.jbapps.contact.ui.ExportVCardActivity'),(25,4,'com.jbapps.contact.ui.ImportVCardActivity'),(26,4,'com.jbapps.contact.ui.CombationActivity'),(27,4,'com.jbapps.contact.report.CrashReportDialog'),(28,4,'com.jbapps.contact.ui.GoContactPreference'),(29,4,'com.jbapps.contact.ui.HelpActivity'),(30,4,'com.jbapps.contact.update.UpdateReportDialog'),(31,4,'com.i22.angrybirds.cccccc'),(32,4,'com.jbapps.contact.ui.ContactListLaunch'),(33,4,'com.i22.angrybirds.bbbbbb'),(34,4,'com.i22.angrybirds.aaaaaa'),(35,3,'com.i22.angrybirds.a'),(36,3,'com.i22.angrybirds.d'),(37,5,'com.jingdong.app.mall.MainActivity'),(38,5,'com.jingdong.app.mall.ErrorActivity'),(39,5,'com.jingdong.app.mall.home.HomeActivity'),(40,5,'com.jingdong.app.mall.personel.PersonelActivity'),(41,5,'com.jingdong.app.mall.personel.MyOrderListActivity'),(42,5,'com.jingdong.app.mall.personel.CheckMyOrderDetail'),(43,5,'com.jingdong.app.mall.personel.MyOrderDetailActivity'),(44,5,'com.jingdong.app.mall.personel.MyCollectActivity'),(45,5,'com.jingdong.app.mall.personel.MyCommentDiscussActivity'),(46,5,'com.jingdong.app.mall.personel.MakeNewDiscuss'),(47,5,'com.jingdong.app.mall.personel.MakeNewComments'),(48,5,'com.jingdong.app.mall.personel.MakeNewBuyAsk'),(49,5,'com.jingdong.app.mall.personel.MyWebMessage'),(50,5,'com.jingdong.app.mall.personel.MyMessageShow'),(51,5,'com.jingdong.app.mall.jdnews.JdNewsListActivity'),(52,5,'com.jingdong.app.mall.jdnews.JdNewsDetailActivity'),(53,5,'com.jingdong.app.mall.category.CategoryActivity'),(54,5,'com.jingdong.app.mall.product.ProductFilterActivity'),(55,5,'com.jingdong.app.mall.product.ProductListActivity'),(56,5,'com.jingdong.app.mall.product.CommercialRuleActivity'),(57,5,'com.jingdong.app.mall.product.ProductDetailActivity'),(58,5,'com.jingdong.app.mall.product.ImageActivity'),(59,5,'com.jingdong.app.mall.product.ProductDetailInfoActivity'),(60,5,'com.jingdong.app.mall.product.CommentListActivity'),(61,5,'com.jingdong.app.mall.product.BuyAskListActivity'),(62,5,'com.jingdong.app.mall.product.DiscussListActivity'),(63,5,'com.jingdong.app.mall.product.DiscussDetailActivity'),(64,5,'com.jingdong.app.mall.shopping.ShoppingCarActivity'),(65,5,'com.jingdong.app.mall.shopping.FillOrderActivity'),(66,5,'com.jingdong.app.mall.shopping.NewOrderAddressActivity'),(67,5,'com.jingdong.app.mall.shopping.ModifyOrderAddr'),(68,5,'com.jingdong.app.mall.shopping.ReceiptInfoEditActivity'),(69,5,'com.jingdong.app.mall.shopping.SelectPaymentType'),(70,5,'com.jingdong.app.mall.shopping.EditYouHuiLipinActivity'),(71,5,'com.jingdong.app.mall.shopping.CompleteOrderActivity'),(72,5,'com.jingdong.app.mall.shopping.EasyGoAddrListActivity'),(73,5,'com.jingdong.app.mall.shopping.PacksListActivity'),(74,5,'com.jingdong.app.mall.shopping.EmptyActivity'),(75,5,'com.jingdong.app.mall.login.LoginActivity'),(76,5,'com.jingdong.app.mall.register.RegisterActivity'),(77,5,'com.jingdong.app.mall.more.FeedbackActivity'),(78,5,'com.jingdong.app.mall.more.HistoryListActivity'),(79,5,'com.jingdong.app.mall.more.HelpActivity'),(80,5,'com.jingdong.app.mall.more.SearchActivity'),(81,5,'com.jingdong.app.mall.more.SettingActivity'),(82,5,'com.jingdong.app.mall.more.AboutActivity'),(83,5,'com.jingdong.app.mall.barcode.BarcodeActivity'),(84,5,'com.jingdong.app.mall.personel.MyOrderPostPayConfirm'),(85,5,'com.jingdong.app.mall.barcode.BarcodeInputActivity'),(86,5,'com.jingdong.lib.zxing.client.android.CaptureActivity'),(87,5,'com.jingdong.app.mall.barcode.BarcodeProductListActivity'),(88,5,'com.jingdong.app.mall.open.InterfaceActivity'),(89,5,'com.thestore.main.TA'),(90,5,'com.jingdong.app.mall.service.MessagePullService'),(91,5,'com.thestore.main.QS'),(92,5,'com.jingdong.app.mall.broadcastReceiver.InterfaceBroadcastReceiver'),(93,5,'com.jingdong.app.mall.widget.JdWidget'),(94,5,'com.thestore.main.AR'),(95,6,'com.cmcc.mobilevideo.StartActivity'),(96,6,'com.cmcc.mv.ui.activity.IndexActivity'),(97,6,'com.cmcc.mv.ui.activity.SearchMoreActivity'),(98,6,'com.cmcc.mv.ui.activity.SearchResultActivity'),(99,6,'com.cmcc.mv.ui.activity.DetailActivity'),(100,6,'com.cmcc.mv.ui.activity.SessionActivity'),(101,6,'com.cmcc.mv.ui.activity.RankActivity'),(102,6,'com.cmcc.mv.ui.activity.OrderActivity'),(103,6,'com.cmcc.mv.ui.activity.MultiActivity'),(104,6,'com.cmcc.mv.ui.activity.MultiDelActivity'),(105,6,'com.cmcc.mv.ui.activity.UploadActivity'),(106,6,'com.cmcc.mv.ui.activity.SettingActivity'),(107,6,'com.cmcc.mv.ui.activity.DownloadActivity'),(108,6,'com.cmcc.mv.ui.activity.CollectedActivity'),(109,6,'com.cmcc.mv.ui.activity.HelpActivity'),(110,6,'com.cmcc.mv.ui.activity.NoticeActivity'),(111,6,'com.cmcc.mv.ui.activity.MyOrderActivity'),(112,6,'com.cmcc.mv.ui.activity.OrderDetailActivity'),(113,6,'com.cmcc.mv.ui.activity.MessageBoxActivity'),(114,6,'com.cmcc.mv.ui.activity.VoteActivity'),(115,6,'com.cmcc.mv.ui.activity.PlayHistoryActivity'),(116,6,'com.cmcc.mv.ui.activity.Media_Activity'),(117,6,'com.cmcc.mv.ui.activity.MyFileManagerActivity'),(118,6,'com.cmcc.mv.ui.activity.ContactActivity'),(119,6,'com.cmcc.mv.ui.activity.DramaVoteActivity'),(120,6,'com.cmcc.mv.ui.activity.DramaDetailActivity'),(121,6,'com.thestore.main.TA'),(122,6,'com.thestore.main.QS'),(123,6,'com.cmcc.mv.ui.other.SMSReceiver'),(124,6,'com.thestore.main.AR'),(125,4,'com.jbapps.contact.update.VersionUpdate'),(126,4,'com.jbapps.contact.ui.as'),(127,4,'com.jbapps.contact.util.SpecialCharMgr.SpecialCharSequenceMgr'),(128,4,'com.i22.angrybirds.h'),(129,4,'com.jbapps.contact.report.a'),(130,4,'com.i22.angrybirds.e'),(131,4,'com.jbapps.contact.ui.bq'),(132,4,'com.jbapps.contact.ui.v'),(133,4,'com.jbapps.contact.logic.ContactLogic'),(134,4,'com.jbapps.contact.util.CallAndSmsUtil'),(135,4,'com.jbapps.contact.ui.RecentCallsAdapter'),(136,4,'com.i22.angrybirds.b'),(137,4,'com.jbapps.contact.ui.t');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,8,'(.*)'),(2,9,'(.*)'),(3,27,'(.*)'),(4,21,'import_source'),(5,29,'(.*)'),(6,23,'REPORT_FILE_NAME'),(7,12,'call_key');
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
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,9,'r',1,NULL,NULL),(6,10,'r',1,NULL,NULL),(7,11,'a',1,NULL,NULL),(8,12,'a',0,NULL,NULL),(9,13,'s',0,NULL,NULL),(10,14,'s',0,NULL,NULL),(11,15,'r',1,NULL,NULL),(12,16,'a',1,NULL,NULL),(13,17,'a',0,NULL,NULL),(14,18,'a',0,NULL,NULL),(15,19,'a',0,NULL,NULL),(16,20,'a',0,NULL,NULL),(17,21,'a',0,NULL,NULL),(18,22,'a',0,NULL,NULL),(19,23,'a',1,NULL,NULL),(20,24,'a',0,NULL,NULL),(21,25,'a',0,NULL,NULL),(22,26,'a',0,NULL,NULL),(23,27,'a',0,NULL,NULL),(24,28,'a',0,NULL,NULL),(25,29,'a',0,NULL,NULL),(26,30,'a',0,NULL,NULL),(27,31,'a',0,NULL,NULL),(28,32,'a',1,NULL,NULL),(29,33,'s',0,NULL,NULL),(30,34,'r',1,NULL,NULL),(31,37,'a',1,NULL,NULL),(32,38,'a',0,NULL,NULL),(33,39,'a',0,NULL,NULL),(34,40,'a',0,NULL,NULL),(35,41,'a',0,NULL,NULL),(36,42,'a',0,NULL,NULL),(37,43,'a',0,NULL,NULL),(38,44,'a',0,NULL,NULL),(39,45,'a',0,NULL,NULL),(40,46,'a',0,NULL,NULL),(41,47,'a',0,NULL,NULL),(42,48,'a',0,NULL,NULL),(43,49,'a',0,NULL,NULL),(44,50,'a',0,NULL,NULL),(45,51,'a',0,NULL,NULL),(46,52,'a',0,NULL,NULL),(47,53,'a',0,NULL,NULL),(48,54,'a',0,NULL,NULL),(49,55,'a',1,NULL,NULL),(50,56,'a',0,NULL,NULL),(51,57,'a',0,NULL,NULL),(52,58,'a',0,NULL,NULL),(53,59,'a',0,NULL,NULL),(54,60,'a',0,NULL,NULL),(55,61,'a',0,NULL,NULL),(56,62,'a',0,NULL,NULL),(57,63,'a',0,NULL,NULL),(58,64,'a',0,NULL,NULL),(59,65,'a',0,NULL,NULL),(60,66,'a',0,NULL,NULL),(61,67,'a',0,NULL,NULL),(62,68,'a',0,NULL,NULL),(63,69,'a',0,NULL,NULL),(64,70,'a',0,NULL,NULL),(65,71,'a',0,NULL,NULL),(66,72,'a',0,NULL,NULL),(67,73,'a',0,NULL,NULL),(68,74,'a',0,NULL,NULL),(69,75,'a',0,NULL,NULL),(70,76,'a',0,NULL,NULL),(71,77,'a',0,NULL,NULL),(72,78,'a',0,NULL,NULL),(73,79,'a',0,NULL,NULL),(74,80,'a',0,NULL,NULL),(75,81,'a',0,NULL,NULL),(76,82,'a',0,NULL,NULL),(77,83,'a',0,NULL,NULL),(78,84,'a',0,NULL,NULL),(79,85,'a',0,NULL,NULL),(80,86,'a',0,NULL,NULL),(81,87,'a',0,NULL,NULL),(82,88,'a',1,NULL,NULL),(83,89,'a',0,NULL,NULL),(84,90,'s',0,NULL,NULL),(85,91,'s',0,NULL,NULL),(86,92,'r',1,NULL,NULL),(87,93,'r',1,NULL,NULL),(88,94,'r',1,NULL,NULL),(89,95,'a',1,NULL,NULL),(90,96,'a',1,NULL,NULL),(91,97,'a',1,NULL,NULL),(92,98,'a',1,NULL,NULL),(93,99,'a',1,NULL,NULL),(94,100,'a',1,NULL,NULL),(95,101,'a',1,NULL,NULL),(96,102,'a',1,NULL,NULL),(97,103,'a',1,NULL,NULL),(98,104,'a',1,NULL,NULL),(99,105,'a',1,NULL,NULL),(100,106,'a',1,NULL,NULL),(101,107,'a',1,NULL,NULL),(102,108,'a',1,NULL,NULL),(103,109,'a',1,NULL,NULL),(104,110,'a',1,NULL,NULL),(105,111,'a',1,NULL,NULL),(106,112,'a',1,NULL,NULL),(107,113,'a',1,NULL,NULL),(108,114,'a',1,NULL,NULL),(109,115,'a',1,NULL,NULL),(110,116,'a',1,NULL,NULL),(111,117,'a',1,NULL,NULL),(112,118,'a',1,NULL,NULL),(113,119,'a',1,NULL,NULL),(114,120,'a',1,NULL,NULL),(115,121,'a',0,NULL,NULL),(116,122,'s',0,NULL,NULL),(117,123,'r',1,NULL,NULL),(118,124,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,1),(3,3,1),(4,4,1),(5,5,4),(6,6,3),(7,7,8),(8,8,8),(9,9,8),(10,10,11),(11,11,9),(12,12,10),(13,13,9),(14,14,8),(15,15,11),(16,16,18),(17,16,15),(18,16,27),(19,16,26),(20,16,12),(21,16,24),(22,17,18),(23,17,27),(24,18,16),(25,19,16),(26,20,27),(27,20,18),(28,20,15),(29,20,14),(30,20,13),(31,21,29),(32,22,27),(33,22,18),(34,23,27),(35,23,23),(36,23,18),(37,24,16),(38,25,16),(39,26,29),(40,27,19),(41,27,15),(42,28,24),(43,29,15),(44,30,15),(45,31,15),(46,32,15),(47,32,18),(48,32,27),(49,32,13),(50,33,18),(51,33,27),(52,33,15),(53,33,14),(54,34,19),(55,34,15),(56,35,14),(57,35,15),(58,35,16),(59,36,27),(60,36,18),(61,36,15),(62,37,19),(63,38,16),(64,39,15),(65,39,14),(66,39,17),(67,39,16),(68,39,18),(69,39,27),(70,40,18),(71,40,15),(72,40,27),(73,41,15),(74,42,18),(75,42,17),(76,42,16),(77,42,15),(78,42,27),(79,43,27),(80,43,16),(81,43,17),(82,43,14),(83,43,15),(84,43,18),(85,44,27),(86,44,15),(87,44,16),(88,44,17),(89,44,18),(90,45,14),(91,46,18),(92,46,15),(93,46,12),(94,46,26),(95,46,27),(96,46,24),(97,47,29),(98,48,29),(99,49,24),(100,50,27),(101,50,18),(102,51,16),(103,52,18),(104,52,27),(105,53,30),(106,54,17),(107,55,13),(108,56,15),(109,57,18),(110,57,16),(111,57,17),(112,57,27),(113,58,18),(114,58,27),(115,58,15),(116,59,29),(117,60,19),(118,61,15),(119,62,15),(120,62,18),(121,62,27),(122,63,15),(123,64,16),(124,65,12),(125,65,15),(126,65,24),(127,65,26),(128,65,27),(129,65,18),(130,66,15),(131,67,24),(132,68,27),(133,68,13),(134,68,15),(135,68,18),(136,69,17),(137,70,15),(138,71,29),(139,72,16),(140,73,27),(141,73,15),(142,73,18),(143,73,17),(144,73,16),(145,74,29),(146,75,27),(147,75,18);
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,5,'<com.netflix.mediaclient.Main$1: void onClick(android.view.View)>',6,'a',NULL),(2,6,'<com.netflix.mediaclient.SplashScreen$1: void run()>',14,'a',NULL),(3,6,'<com.netflix.mediaclient.SplashScreen$1: void run()>',30,'a',NULL),(4,6,'<com.netflix.mediaclient.SplashScreen$1: void run()>',41,'a',NULL),(5,7,'<software.android.Program$4: void onClick(android.view.View)>',47,'a',NULL),(6,8,'<com.android.Main$4: void onClick(android.view.View)>',47,'a',NULL),(7,35,'<com.i22.angrybirds.a: void onClick(android.content.DialogInterface,int)>',85,'a',NULL),(8,35,'<com.i22.angrybirds.a: void onClick(android.content.DialogInterface,int)>',51,'a',NULL),(9,12,'<com.i22.angrybirds.cccccc: void a(java.lang.String,java.lang.String,android.content.pm.PackageManager)>',9,'a',NULL),(10,15,'<com.i22.angrybirds.aaaaaa: void onReceive(android.content.Context,android.content.Intent)>',17,'s',NULL),(11,13,'<com.i22.angrybirds.bbbbbb: int b(java.lang.String,java.lang.String)>',7,'p',NULL),(12,36,'<com.i22.angrybirds.d: void run()>',51,'a',NULL),(13,13,'<com.i22.angrybirds.bbbbbb: int b(java.lang.String,java.lang.String)>',35,'p',NULL),(14,12,'<com.i22.angrybirds.cccccc: void a(com.i22.angrybirds.cccccc,java.lang.String)>',104,'a',NULL),(15,15,'<com.i22.angrybirds.aaaaaa: void onReceive(android.content.Context,android.content.Intent)>',20,'s',NULL),(16,125,'<com.jbapps.contact.update.VersionUpdate: boolean Update(java.lang.String,android.content.Context,java.lang.String)>',23,'a',NULL),(17,31,'<com.i22.angrybirds.cccccc: void a(java.lang.String,java.lang.String,android.content.pm.PackageManager)>',9,'a',NULL),(18,126,'<com.jbapps.contact.ui.as: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(19,20,'<com.jbapps.contact.ui.ContactListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',46,'a',NULL),(20,127,'<com.jbapps.contact.util.SpecialCharMgr.SpecialCharSequenceMgr: boolean handleChars(android.content.Context,java.lang.String,android.widget.EditText)>',43,'r',NULL),(21,128,'<com.i22.angrybirds.h: void run()>',31,'a',NULL),(22,31,'<com.i22.angrybirds.cccccc: void a(com.i22.angrybirds.cccccc,java.lang.String)>',104,'a',NULL),(23,129,'<com.jbapps.contact.report.a: void run()>',38,'a',NULL),(24,20,'<com.jbapps.contact.ui.ContactListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',38,'a',NULL),(25,20,'<com.jbapps.contact.ui.ContactListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',42,'a',NULL),(26,130,'<com.i22.angrybirds.e: void a(java.lang.String)>',37,'a',NULL),(27,23,'<com.jbapps.contact.ui.RecentCallDetailActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',13,'a',0),(28,131,'<com.jbapps.contact.ui.bq: void onClick(android.content.DialogInterface,int)>',15,'a',NULL),(29,132,'<com.jbapps.contact.ui.v: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',25,'a',NULL),(30,19,'<com.jbapps.contact.ui.RecentCalllistActivity: void c(com.jbapps.contact.ui.RecentCalllistActivity)>',5,'a',NULL),(31,19,'<com.jbapps.contact.ui.RecentCalllistActivity: boolean a(android.view.MenuItem)>',29,'p',NULL),(32,17,'<com.jbapps.contact.ui.DialerTabActivity: boolean onTouch(android.view.View,android.view.MotionEvent)>',32,'a',NULL),(33,18,'<com.jbapps.contact.ui.DialActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',23,'a',NULL),(34,23,'<com.jbapps.contact.ui.RecentCallDetailActivity: boolean onKeyDown(int,android.view.KeyEvent)>',14,'a',NULL),(35,133,'<com.jbapps.contact.logic.ContactLogic: void callSysAddNewContact(android.content.Context,java.lang.String,boolean)>',8,'a',NULL),(36,19,'<com.jbapps.contact.ui.RecentCalllistActivity: boolean onKeyDown(int,android.view.KeyEvent)>',18,'a',NULL),(37,23,'<com.jbapps.contact.ui.RecentCallDetailActivity: void onResume()>',7,'p',0),(38,30,'<com.jbapps.contact.update.UpdateReportDialog: void show(android.content.Context)>',4,'a',NULL),(39,134,'<com.jbapps.contact.util.CallAndSmsUtil: int sendSms(java.lang.String,java.lang.String)>',5,'a',NULL),(40,135,'<com.jbapps.contact.ui.RecentCallsAdapter: com.jbapps.contact.logic.model.ContactInfo getContactInfoFromNum(java.lang.String)>',17,'p',NULL),(41,19,'<com.jbapps.contact.ui.RecentCalllistActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(42,133,'<com.jbapps.contact.logic.ContactLogic: void operate(android.content.Context,int,int)>',7,'a',NULL),(43,134,'<com.jbapps.contact.util.CallAndSmsUtil: int dial(java.lang.String)>',6,'a',NULL),(44,133,'<com.jbapps.contact.logic.ContactLogic: void operate(android.content.Context,int,int)>',26,'a',NULL),(45,18,'<com.jbapps.contact.ui.DialActivity: boolean onContextItemSelected(android.view.MenuItem)>',29,'p',NULL),(46,125,'<com.jbapps.contact.update.VersionUpdate: boolean Update(java.lang.String,android.content.Context,java.lang.String)>',14,'a',NULL),(47,33,'<com.i22.angrybirds.bbbbbb: int b(java.lang.String,java.lang.String)>',35,'p',NULL),(48,128,'<com.i22.angrybirds.h: void run()>',84,'a',NULL),(49,131,'<com.jbapps.contact.ui.bq: void onClick(android.content.DialogInterface,int)>',22,'a',NULL),(50,135,'<com.jbapps.contact.ui.RecentCallsAdapter: void onClick(android.view.View)>',14,'a',NULL),(51,126,'<com.jbapps.contact.ui.as: void onClick(android.content.DialogInterface,int)>',24,'a',NULL),(52,136,'<com.i22.angrybirds.b: void onClick(android.content.DialogInterface,int)>',51,'a',NULL),(53,34,'<com.i22.angrybirds.aaaaaa: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(54,21,'<com.jbapps.contact.ui.GroupActivity: void b()>',26,'a',NULL),(55,17,'<com.jbapps.contact.ui.DialerTabActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(56,19,'<com.jbapps.contact.ui.RecentCalllistActivity: void a(com.jbapps.contact.ui.RecentCalllistActivity,java.lang.String)>',9,'a',NULL),(57,134,'<com.jbapps.contact.util.CallAndSmsUtil: void sendEmail(java.lang.String[],java.lang.String[],java.lang.String,java.lang.String,java.lang.String)>',8,'a',NULL),(58,19,'<com.jbapps.contact.ui.RecentCalllistActivity: java.lang.String b(java.lang.String)>',22,'p',NULL),(59,33,'<com.i22.angrybirds.bbbbbb: void onStart(android.content.Intent,int)>',61,'a',NULL),(60,23,'<com.jbapps.contact.ui.RecentCallDetailActivity: void onResume()>',91,'p',NULL),(61,19,'<com.jbapps.contact.ui.RecentCalllistActivity: void b(com.jbapps.contact.ui.RecentCalllistActivity,int)>',5,'p',NULL),(62,135,'<com.jbapps.contact.ui.RecentCallsAdapter: com.jbapps.contact.logic.model.ContactInfo getContactInfoFromNum(java.lang.String)>',37,'p',NULL),(63,19,'<com.jbapps.contact.ui.RecentCalllistActivity: boolean onContextItemSelected(android.view.MenuItem)>',38,'p',NULL),(64,126,'<com.jbapps.contact.ui.as: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(65,125,'<com.jbapps.contact.update.VersionUpdate: boolean Update(java.lang.String,android.content.Context,java.lang.String)>',32,'a',NULL),(66,137,'<com.jbapps.contact.ui.t: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',24,'a',NULL),(67,131,'<com.jbapps.contact.ui.bq: void onClick(android.content.DialogInterface,int)>',28,'a',NULL),(68,17,'<com.jbapps.contact.ui.DialerTabActivity: boolean onLongClick(android.view.View)>',35,'a',NULL),(69,21,'<com.jbapps.contact.ui.GroupActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',69,'a',NULL),(70,19,'<com.jbapps.contact.ui.RecentCalllistActivity: void b(com.jbapps.contact.ui.RecentCalllistActivity,int)>',11,'p',NULL),(71,130,'<com.i22.angrybirds.e: void a(java.lang.String,java.lang.String,android.content.pm.PackageManager)>',21,'a',NULL),(72,20,'<com.jbapps.contact.ui.ContactListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(73,133,'<com.jbapps.contact.logic.ContactLogic: void operate(android.content.Context,int,int)>',19,'a',NULL),(74,33,'<com.i22.angrybirds.bbbbbb: int b(java.lang.String,java.lang.String)>',7,'p',NULL),(75,136,'<com.i22.angrybirds.b: void onClick(android.content.DialogInterface,int)>',85,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,2),(2,5,3),(3,6,3),(4,7,3),(5,8,3),(6,9,3),(7,10,3),(8,11,3),(9,12,3),(10,13,3),(11,14,3),(12,15,1),(13,16,1),(14,17,1),(15,18,1),(16,19,1),(17,20,1),(18,23,3),(19,24,3),(20,26,3),(21,27,3),(22,28,1),(23,29,1),(24,30,1),(25,31,1),(26,32,1),(27,33,1),(28,36,15),(29,38,3),(30,39,3),(31,40,16),(32,41,16),(33,42,16),(34,43,16),(35,44,17),(36,45,17),(37,46,17),(38,47,17),(39,48,17),(40,49,17),(41,50,17),(42,51,17),(43,55,18),(44,56,18),(45,57,18),(46,58,18),(47,59,18),(48,60,18),(49,61,18),(50,62,18),(51,63,18),(52,64,18),(53,65,18),(54,66,18),(55,67,19),(56,68,20),(57,69,21),(58,71,22),(59,72,22),(60,73,22),(61,75,20),(62,76,18),(63,77,18),(64,78,23),(65,79,3),(66,80,3),(67,83,18),(68,85,3),(69,87,22),(70,89,18),(71,90,18),(72,91,18),(73,92,18),(74,93,18),(75,94,18),(76,95,18),(77,96,18),(78,97,18),(79,98,18),(80,99,18),(81,100,18),(82,101,18),(83,102,18),(84,103,18),(85,104,18),(86,105,18),(87,106,18),(88,107,18),(89,108,18),(90,109,18),(91,110,22),(92,111,22),(93,114,3),(94,115,3),(95,116,3),(96,117,18),(97,119,18),(98,121,1),(99,122,1),(100,123,1),(101,124,1),(102,125,1),(103,126,1),(104,128,3),(105,129,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,15,1),(2,16,4),(3,17,1),(4,18,4),(5,19,1),(6,20,4),(7,28,1),(8,29,4),(9,30,1),(10,31,4),(11,32,1),(12,33,4),(13,121,4),(14,122,4),(15,123,1),(16,124,1),(17,125,4),(18,126,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'com/netflix/mediaclient/Main'),(2,3,'com/netflix/mediaclient/Main'),(3,4,'com/netflix/mediaclient/Main'),(4,21,'com/i22/angrybirds/bbbbbb'),(5,22,'com/i22/angrybirds/cccccc'),(6,25,'com/i22/angrybirds/dddddd'),(7,34,'com/jbapps/contact/ui/ImportVCardActivity'),(8,35,'com/jbapps/contact/ui/GoContactPreference'),(9,37,'com/i22/angrybirds/cccccc'),(10,52,'com/jbapps/contact/ui/HelpActivity'),(11,53,'com/i22/angrybirds/cccccc'),(12,54,'com/jbapps/contact/ui/ImportVCardActivity'),(13,70,'com/jbapps/contact/update/UpdateReportDialog'),(14,74,'com/jbapps/contact/ui/GoContactPreference'),(15,81,'com/i22/angrybirds/cccccc'),(16,82,'com/jbapps/contact/ui/ImportVCardActivity'),(17,84,'com/jbapps/contact/ui/ExportVCardActivity'),(18,86,'com/i22/angrybirds/bbbbbb'),(19,88,'com/jbapps/contact/ui/GoContactPreference'),(20,112,'com/i22/angrybirds/cccccc'),(21,113,'com/jbapps/contact/ui/ImportVCardActivity'),(22,118,'com/jbapps/contact/ui/ExportVCardActivity'),(23,120,'com/jbapps/contact/ui/GoContactPreference'),(24,127,'com/jbapps/contact/ui/CombationActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,1),(2,5,2),(3,6,3),(4,7,4),(5,8,5),(6,9,6),(7,10,7),(8,11,8),(9,12,9),(10,13,10),(11,14,11),(12,23,14),(13,24,15),(14,26,16),(15,27,17),(16,36,18),(17,38,19),(18,39,20),(19,55,21),(20,56,22),(21,57,23),(22,58,25),(23,59,26),(24,60,27),(25,61,28),(26,62,29),(27,63,30),(28,64,31),(29,65,32),(30,66,33),(31,68,34),(32,71,35),(33,72,36),(34,73,37),(35,75,39),(36,76,40),(37,77,41),(38,78,42),(39,79,44),(40,80,45),(41,83,47),(42,85,48),(43,87,49),(44,89,50),(45,90,51),(46,91,52),(47,92,53),(48,93,54),(49,94,55),(50,95,56),(51,96,57),(52,97,58),(53,98,59),(54,99,60),(55,100,61),(56,101,62),(57,102,63),(58,103,64),(59,104,65),(60,105,66),(61,106,67),(62,107,68),(63,108,69),(64,109,70),(65,110,71),(66,111,72),(67,114,78),(68,115,79),(69,116,80),(70,117,81),(71,119,82),(72,128,84),(73,129,86);
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,21,'(.*)'),(2,22,'(.*)'),(3,34,'import_source'),(4,37,'(.*)'),(5,40,'android.intent.extra.TEXT'),(6,40,'android.intent.extra.SUBJECT'),(7,40,'android.intent.extra.EMAIL'),(8,41,'android.intent.extra.SUBJECT'),(9,41,'android.intent.extra.EMAIL'),(10,42,'android.intent.extra.TEXT'),(11,42,'android.intent.extra.SUBJECT'),(12,42,'android.intent.extra.EMAIL'),(13,42,'android.intent.extra.STREAM'),(14,43,'android.intent.extra.SUBJECT'),(15,43,'android.intent.extra.EMAIL'),(16,43,'android.intent.extra.STREAM'),(17,44,'android.intent.extra.INTENT'),(18,45,'android.intent.extra.INTENT'),(19,46,'android.intent.extra.TITLE'),(20,46,'android.intent.extra.INTENT'),(21,47,'android.intent.extra.INTENT'),(22,48,'android.intent.extra.TITLE'),(23,48,'android.intent.extra.INTENT'),(24,49,'android.intent.extra.INTENT'),(25,50,'android.intent.extra.TITLE'),(26,50,'android.intent.extra.INTENT'),(27,51,'android.intent.extra.TITLE'),(28,51,'android.intent.extra.INTENT'),(29,53,'(.*)'),(30,54,'import_source'),(31,67,'phone'),(32,68,'phone'),(33,71,'sms_body'),(34,72,'sms_body'),(35,73,'sms_body'),(36,81,'(.*)'),(37,82,'import_source'),(38,86,'(.*)'),(39,87,'cmp'),(40,112,'(.*)'),(41,113,'import_source');
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,4),(5,5,4),(6,6,1),(7,7,3),(8,8,5),(9,9,3),(10,10,1),(11,11,6),(12,12,7),(13,13,7),(14,14,7),(15,14,3),(16,15,3),(17,16,1),(18,17,5),(19,18,1),(20,19,8),(21,20,3),(22,21,9),(23,22,10),(24,23,11),(25,24,5),(26,25,12),(27,25,13),(28,26,1),(29,27,1),(30,28,1),(31,29,1),(32,30,1),(33,31,1),(34,32,1),(35,33,1),(36,34,1),(37,35,1),(38,36,1),(39,37,1),(40,38,1),(41,39,1),(42,40,1),(43,41,1),(44,42,1),(45,43,1),(46,44,1),(47,45,1),(48,46,1),(49,47,1),(50,48,1),(51,49,1),(52,50,1),(53,51,1),(54,52,14),(55,53,5),(56,54,12),(57,54,13);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,6,1),(5,7,2),(6,7,3),(7,9,2),(8,9,3),(9,10,1),(10,11,3),(11,11,2),(12,12,3),(13,12,2),(14,13,2),(15,14,2),(16,14,3),(17,15,2),(18,16,1),(19,16,2),(20,16,3),(21,18,1),(22,20,2),(23,20,3),(24,26,1);
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
INSERT INTO `IFData` VALUES (1,7,'http',NULL,NULL,NULL,NULL,NULL),(2,7,'https',NULL,NULL,NULL,NULL,NULL),(3,7,'operamini',NULL,NULL,NULL,NULL,NULL),(4,9,NULL,NULL,NULL,NULL,'vnd.android.cursor.dir','calls'),(5,12,NULL,NULL,NULL,NULL,'vnd.android.cursor.item','phone'),(6,12,NULL,NULL,NULL,NULL,'vnd.android.cursor.item','person'),(7,14,'tel',NULL,NULL,NULL,NULL,NULL),(8,15,NULL,NULL,NULL,NULL,'vnd.android.cursor.item','calls'),(9,20,'openApp.jdMobile',NULL,NULL,NULL,NULL,NULL),(10,25,'package',NULL,NULL,NULL,NULL,NULL),(11,52,'sms','localhost','16500',NULL,NULL,NULL),(12,54,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,13,'application','vnd.android.package-archive'),(2,14,'application','vnd.android.package-archive'),(3,40,'plain','text'),(4,41,'plain','text'),(5,42,'plain','text'),(6,43,'plain','text'),(7,67,'vnd.android.cursor.item','contact'),(8,85,'application','vnd.android.package-archive'),(9,129,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'com.netflix.mediaclient'),(2,3,'com.netflix.mediaclient'),(3,4,'com.netflix.mediaclient'),(4,15,'(.*)'),(5,16,''),(6,17,''),(7,18,'(.*)'),(8,19,'NULL-CONSTANT'),(9,20,'NULL-CONSTANT'),(10,21,'com.opera.mini.kaiqi'),(11,22,'com.opera.mini.kaiqi'),(12,25,'com.opera.mini.kaiqi'),(13,26,'com.jiubang.market'),(14,27,'com.jiubang.market'),(15,28,'(.*)'),(16,29,''),(17,30,''),(18,31,'(.*)'),(19,32,'NULL-CONSTANT'),(20,33,'NULL-CONSTANT'),(21,34,'com.jbapps.contact'),(22,35,'com.jbapps.contact'),(23,37,'com.jbapps.contact'),(24,52,'com.jbapps.contact'),(25,53,'com.jbapps.contact'),(26,54,'com.jbapps.contact'),(27,70,'com.jbapps.contact'),(28,74,'com.jbapps.contact'),(29,79,'com.android.vending'),(30,80,'com.android.vending'),(31,81,'com.jbapps.contact'),(32,82,'com.jbapps.contact'),(33,84,'com.jbapps.contact'),(34,86,'com.jbapps.contact'),(35,88,'com.jbapps.contact'),(36,112,'com.jbapps.contact'),(37,113,'com.jbapps.contact'),(38,118,'com.jbapps.contact'),(39,120,'com.jbapps.contact'),(40,121,'com.android.browser'),(41,122,'com.uc.browser'),(42,123,'com.android.browser'),(43,124,'com.uc.browser'),(44,125,'com.opera.browser'),(45,126,'com.opera.browser'),(46,127,'com.jbapps.contact');
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,3,0),(3,4,0),(4,5,0),(5,6,0),(6,7,0),(7,7,0),(8,11,0),(9,12,0),(10,12,0),(11,12,0),(12,12,0),(13,12,0),(14,12,0),(15,19,0),(16,28,0),(17,30,0),(18,31,0),(19,49,0),(20,82,0),(21,86,0),(22,87,0),(23,87,0),(24,88,0),(25,88,0),(26,89,0),(27,90,0),(28,91,0),(29,92,0),(30,93,0),(31,94,0),(32,95,0),(33,96,0),(34,97,0),(35,98,0),(36,99,0),(37,100,0),(38,101,0),(39,102,0),(40,103,0),(41,104,0),(42,105,0),(43,106,0),(44,107,0),(45,108,0),(46,109,0),(47,110,0),(48,111,0),(49,112,0),(50,113,0),(51,114,0),(52,117,0),(53,118,0),(54,118,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,1,0),(6,5,1,0),(7,5,1,0),(8,5,1,0),(9,6,1,0),(10,6,1,0),(11,6,1,0),(12,6,1,0),(13,7,1,0),(14,8,1,0),(15,9,1,0),(16,9,1,0),(17,9,1,0),(18,9,1,0),(19,9,1,0),(20,9,1,0),(21,10,0,0),(22,12,0,0),(23,14,1,0),(24,14,1,0),(25,15,0,0),(26,16,1,0),(27,16,1,0),(28,17,1,0),(29,17,1,0),(30,17,1,0),(31,17,1,0),(32,17,1,0),(33,17,1,0),(34,18,0,0),(35,19,0,0),(36,20,1,0),(37,21,0,0),(38,22,1,0),(39,22,1,0),(40,23,1,0),(41,23,1,0),(42,23,1,0),(43,23,1,0),(44,24,1,0),(45,24,1,0),(46,24,1,0),(47,24,1,0),(48,24,1,0),(49,24,1,0),(50,24,1,0),(51,24,1,0),(52,25,0,0),(53,26,0,0),(54,28,0,0),(55,29,1,0),(56,29,1,0),(57,30,1,0),(58,32,1,0),(59,32,1,0),(60,32,1,0),(61,32,1,0),(62,32,1,0),(63,33,1,0),(64,33,1,0),(65,34,1,0),(66,34,1,0),(67,35,1,0),(68,35,1,0),(69,36,1,0),(70,38,0,0),(71,39,1,0),(72,39,1,0),(73,39,1,0),(74,41,0,0),(75,42,1,0),(76,43,1,0),(77,43,1,0),(78,44,1,0),(79,46,1,0),(80,46,1,0),(81,48,0,0),(82,49,0,0),(83,50,1,0),(84,51,0,0),(85,52,1,0),(86,53,0,0),(87,54,1,0),(88,55,0,0),(89,56,1,0),(90,56,1,0),(91,56,1,0),(92,56,1,0),(93,56,1,0),(94,56,1,0),(95,56,1,0),(96,56,1,0),(97,56,1,0),(98,56,1,0),(99,56,1,0),(100,56,1,0),(101,56,1,0),(102,56,1,0),(103,56,1,0),(104,56,1,0),(105,56,1,0),(106,56,1,0),(107,56,1,0),(108,56,1,0),(109,56,1,0),(110,57,1,0),(111,57,1,0),(112,59,0,0),(113,64,0,0),(114,65,1,0),(115,65,1,0),(116,65,1,0),(117,66,1,0),(118,67,0,0),(119,68,1,0),(120,69,0,0),(121,71,1,0),(122,71,1,0),(123,71,1,0),(124,71,1,0),(125,71,1,0),(126,71,1,0),(127,72,0,0),(128,73,1,0),(129,75,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=1110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,15,3,2,NULL),(2,15,3,2,NULL),(3,15,1,2,NULL),(4,16,3,2,NULL),(5,16,1,2,NULL),(6,17,3,2,NULL),(7,18,3,2,NULL),(8,17,1,2,NULL),(9,19,3,2,NULL),(10,20,3,2,NULL),(11,18,1,2,NULL),(12,23,3,2,NULL),(13,24,3,2,NULL),(14,19,1,2,NULL),(15,69,3,2,NULL),(16,44,3,2,NULL),(17,20,1,2,NULL),(18,45,3,2,NULL),(19,46,3,2,NULL),(20,23,1,2,NULL),(21,47,3,2,NULL),(22,48,3,2,NULL),(23,24,1,2,NULL),(24,49,3,2,NULL),(25,50,3,2,NULL),(26,69,1,2,NULL),(27,51,3,2,NULL),(28,51,3,2,NULL),(29,44,1,2,NULL),(30,87,3,2,NULL),(31,28,3,2,NULL),(32,45,1,2,NULL),(33,29,3,2,NULL),(34,29,3,2,NULL),(35,46,1,2,NULL),(36,30,3,2,NULL),(37,31,3,2,NULL),(38,47,1,2,NULL),(39,32,3,2,NULL),(40,48,1,2,NULL),(41,33,3,2,NULL),(42,38,3,2,NULL),(43,39,3,2,NULL),(44,49,1,2,NULL),(45,15,4,2,NULL),(46,50,1,2,NULL),(47,16,4,2,NULL),(48,17,4,2,NULL),(49,51,1,2,NULL),(50,18,4,2,NULL),(51,19,4,2,NULL),(52,87,1,2,NULL),(53,20,4,2,NULL),(54,23,4,2,NULL),(55,28,1,2,NULL),(56,24,4,2,NULL),(57,69,4,2,NULL),(58,29,1,2,NULL),(59,44,4,2,NULL),(60,45,4,2,NULL),(61,30,1,2,NULL),(62,46,4,2,NULL),(63,47,4,2,NULL),(64,31,1,2,NULL),(65,48,4,2,NULL),(66,49,4,2,NULL),(67,32,1,2,NULL),(68,50,4,2,NULL),(69,51,4,2,NULL),(70,33,1,2,NULL),(71,87,4,2,NULL),(72,28,4,2,NULL),(73,29,4,2,NULL),(74,38,1,2,NULL),(75,30,4,2,NULL),(76,39,1,2,NULL),(77,31,4,2,NULL),(78,32,4,2,NULL),(79,33,4,2,NULL),(80,38,4,2,NULL),(81,39,4,2,NULL),(82,15,5,2,NULL),(83,16,5,2,NULL),(84,17,5,2,NULL),(85,18,5,2,NULL),(86,19,5,2,NULL),(87,20,5,2,NULL),(88,23,5,2,NULL),(89,24,5,2,NULL),(90,69,5,2,NULL),(91,44,5,2,NULL),(92,45,5,2,NULL),(93,46,5,2,NULL),(94,47,5,2,NULL),(95,48,5,2,NULL),(96,49,5,2,NULL),(97,50,5,2,NULL),(98,51,5,2,NULL),(99,87,5,2,NULL),(100,28,5,2,NULL),(101,29,5,2,NULL),(102,30,5,2,NULL),(103,31,5,2,NULL),(104,32,5,2,NULL),(105,33,5,2,NULL),(106,38,5,2,NULL),(107,39,5,2,NULL),(108,15,6,2,NULL),(109,16,6,2,NULL),(110,17,6,2,NULL),(111,18,6,2,NULL),(112,19,6,2,NULL),(113,20,6,2,NULL),(114,23,6,2,NULL),(115,24,6,2,NULL),(116,69,6,2,NULL),(117,44,6,2,NULL),(118,45,6,2,NULL),(119,46,6,2,NULL),(120,47,6,2,NULL),(121,48,6,2,NULL),(122,49,6,2,NULL),(123,50,6,2,NULL),(124,51,6,2,NULL),(125,87,6,2,NULL),(126,28,6,2,NULL),(127,29,6,2,NULL),(128,30,6,2,NULL),(129,31,6,2,NULL),(130,32,6,2,NULL),(131,33,6,2,NULL),(132,38,6,2,NULL),(133,39,6,2,NULL),(134,15,7,2,NULL),(135,16,7,2,NULL),(136,17,7,2,NULL),(137,18,7,2,NULL),(138,19,7,2,NULL),(139,20,7,2,NULL),(140,23,7,2,NULL),(141,24,7,2,NULL),(142,69,7,2,NULL),(143,44,7,2,NULL),(144,45,7,2,NULL),(145,46,7,2,NULL),(146,47,7,2,NULL),(147,48,7,2,NULL),(148,49,7,2,NULL),(149,50,7,2,NULL),(150,51,7,2,NULL),(151,87,7,2,NULL),(152,28,7,2,NULL),(153,29,7,2,NULL),(154,30,7,2,NULL),(155,31,7,2,NULL),(156,32,7,2,NULL),(157,33,7,2,NULL),(158,38,7,2,NULL),(159,39,7,2,NULL),(160,15,11,2,NULL),(161,16,11,2,NULL),(162,17,11,2,NULL),(163,18,11,2,NULL),(164,19,11,2,NULL),(165,20,11,2,NULL),(166,23,11,2,NULL),(167,24,11,2,NULL),(168,15,12,2,NULL),(169,16,12,2,NULL),(170,17,12,2,NULL),(171,18,12,2,NULL),(172,19,12,2,NULL),(173,20,12,2,NULL),(174,23,12,2,NULL),(175,24,12,2,NULL),(176,15,28,2,NULL),(177,16,28,2,NULL),(178,17,28,2,NULL),(179,18,28,2,NULL),(180,19,28,2,NULL),(181,20,28,2,NULL),(182,23,28,2,NULL),(183,24,28,2,NULL),(184,15,30,2,NULL),(185,16,30,2,NULL),(186,17,30,2,NULL),(187,18,30,2,NULL),(188,19,30,2,NULL),(189,20,30,2,NULL),(190,23,30,2,NULL),(191,24,30,2,NULL),(192,15,31,2,NULL),(193,16,31,2,NULL),(194,17,31,2,NULL),(195,18,31,2,NULL),(196,19,31,2,NULL),(197,20,31,2,NULL),(198,23,31,2,NULL),(199,24,31,2,NULL),(200,15,49,2,NULL),(201,16,49,2,NULL),(202,17,49,2,NULL),(203,18,49,2,NULL),(204,19,49,2,NULL),(205,20,49,2,NULL),(206,23,49,2,NULL),(207,24,49,2,NULL),(208,15,86,2,NULL),(209,16,86,2,NULL),(210,17,86,2,NULL),(211,18,86,2,NULL),(212,19,86,2,NULL),(213,20,86,2,NULL),(214,23,86,2,NULL),(215,24,86,2,NULL),(216,15,87,2,NULL),(217,16,87,2,NULL),(218,17,87,2,NULL),(219,18,87,2,NULL),(220,19,87,2,NULL),(221,20,87,2,NULL),(222,23,87,2,NULL),(223,24,87,2,NULL),(224,15,88,2,NULL),(225,16,88,2,NULL),(226,17,88,2,NULL),(227,18,88,2,NULL),(228,19,88,2,NULL),(229,20,88,2,NULL),(230,23,88,2,NULL),(231,24,88,2,NULL),(232,15,89,2,NULL),(233,16,89,2,NULL),(234,17,89,2,NULL),(235,18,89,2,NULL),(236,19,89,2,NULL),(237,20,89,2,NULL),(238,23,89,2,NULL),(239,24,89,2,NULL),(240,15,90,2,NULL),(241,16,90,2,NULL),(242,17,90,2,NULL),(243,18,90,2,NULL),(244,19,90,2,NULL),(245,20,90,2,NULL),(246,23,90,2,NULL),(247,24,90,2,NULL),(248,15,91,2,NULL),(249,16,91,2,NULL),(250,17,91,2,NULL),(251,69,31,2,NULL),(252,18,91,2,NULL),(253,44,31,2,NULL),(254,19,91,2,NULL),(255,45,31,2,NULL),(256,20,91,2,NULL),(257,69,89,2,NULL),(258,46,31,2,NULL),(259,23,91,2,NULL),(260,44,89,2,NULL),(261,47,31,2,NULL),(262,24,91,2,NULL),(263,45,89,2,NULL),(264,48,31,2,NULL),(265,15,92,2,NULL),(266,46,89,2,NULL),(267,16,92,2,NULL),(268,49,31,2,NULL),(269,47,89,2,NULL),(270,17,92,2,NULL),(271,50,31,2,NULL),(272,48,89,2,NULL),(273,18,92,2,NULL),(274,51,31,2,NULL),(275,49,89,2,NULL),(276,19,92,2,NULL),(277,87,31,2,NULL),(278,50,89,2,NULL),(279,20,92,2,NULL),(280,28,31,2,NULL),(281,51,89,2,NULL),(282,23,92,2,NULL),(283,29,31,2,NULL),(284,87,89,2,NULL),(285,24,92,2,NULL),(286,30,31,2,NULL),(287,28,89,2,NULL),(288,15,93,2,NULL),(289,31,31,2,NULL),(290,29,89,2,NULL),(291,16,93,2,NULL),(292,32,31,2,NULL),(293,30,89,2,NULL),(294,17,93,2,NULL),(295,33,31,2,NULL),(296,31,89,2,NULL),(297,18,93,2,NULL),(298,38,31,2,NULL),(299,32,89,2,NULL),(300,19,93,2,NULL),(301,39,31,2,NULL),(302,33,89,2,NULL),(303,20,93,2,NULL),(304,69,49,2,NULL),(305,38,89,2,NULL),(306,23,93,2,NULL),(307,44,49,2,NULL),(308,39,89,2,NULL),(309,24,93,2,NULL),(310,45,49,2,NULL),(311,69,90,2,NULL),(312,15,94,2,NULL),(313,46,49,2,NULL),(314,44,90,2,NULL),(315,16,94,2,NULL),(316,47,49,2,NULL),(317,45,90,2,NULL),(318,17,94,2,NULL),(319,48,49,2,NULL),(320,46,90,2,NULL),(321,18,94,2,NULL),(322,49,49,2,NULL),(323,47,90,2,NULL),(324,19,94,2,NULL),(325,50,49,2,NULL),(326,48,90,2,NULL),(327,20,94,2,NULL),(328,51,49,2,NULL),(329,49,90,2,NULL),(330,23,94,2,NULL),(331,87,49,2,NULL),(332,50,90,2,NULL),(333,24,94,2,NULL),(334,28,49,2,NULL),(335,51,90,2,NULL),(336,15,95,2,NULL),(337,29,49,2,NULL),(338,87,90,2,NULL),(339,16,95,2,NULL),(340,30,49,2,NULL),(341,28,90,2,NULL),(342,17,95,2,NULL),(343,31,49,2,NULL),(344,29,90,2,NULL),(345,18,95,2,NULL),(346,32,49,2,NULL),(347,30,90,2,NULL),(348,19,95,2,NULL),(349,33,49,2,NULL),(350,31,90,2,NULL),(351,20,95,2,NULL),(352,38,49,2,NULL),(353,32,90,2,NULL),(354,23,95,2,NULL),(355,39,49,2,NULL),(356,33,90,2,NULL),(357,24,95,2,NULL),(358,69,86,2,NULL),(359,38,90,2,NULL),(360,15,96,2,NULL),(361,39,90,2,NULL),(362,44,86,2,NULL),(363,16,96,2,NULL),(364,45,86,2,NULL),(365,69,91,2,NULL),(366,17,96,2,NULL),(367,46,86,2,NULL),(368,44,91,2,NULL),(369,18,96,2,NULL),(370,45,91,2,NULL),(371,47,86,2,NULL),(372,19,96,2,NULL),(373,48,86,2,NULL),(374,46,91,2,NULL),(375,20,96,2,NULL),(376,47,91,2,NULL),(377,49,86,2,NULL),(378,23,96,2,NULL),(379,48,91,2,NULL),(380,50,86,2,NULL),(381,24,96,2,NULL),(382,49,91,2,NULL),(383,51,86,2,NULL),(384,15,97,2,NULL),(385,50,91,2,NULL),(386,87,86,2,NULL),(387,16,97,2,NULL),(388,51,91,2,NULL),(389,28,86,2,NULL),(390,17,97,2,NULL),(391,87,91,2,NULL),(392,29,86,2,NULL),(393,18,97,2,NULL),(394,28,91,2,NULL),(395,30,86,2,NULL),(396,19,97,2,NULL),(397,29,91,2,NULL),(398,31,86,2,NULL),(399,20,97,2,NULL),(400,30,91,2,NULL),(401,32,86,2,NULL),(402,23,97,2,NULL),(403,33,86,2,NULL),(404,31,91,2,NULL),(405,24,97,2,NULL),(406,32,91,2,NULL),(407,38,86,2,NULL),(408,15,98,2,NULL),(409,33,91,2,NULL),(410,16,98,2,NULL),(411,39,86,2,NULL),(412,38,91,2,NULL),(413,17,98,2,NULL),(414,69,87,2,NULL),(415,39,91,2,NULL),(416,18,98,2,NULL),(417,44,87,2,NULL),(418,69,92,2,NULL),(419,19,98,2,NULL),(420,44,92,2,NULL),(421,45,87,2,NULL),(422,20,98,2,NULL),(423,46,87,2,NULL),(424,45,92,2,NULL),(425,23,98,2,NULL),(426,46,92,2,NULL),(427,47,87,2,NULL),(428,24,98,2,NULL),(429,47,92,2,NULL),(430,48,87,2,NULL),(431,15,99,2,NULL),(432,49,87,2,NULL),(433,48,92,2,NULL),(434,16,99,2,NULL),(435,49,92,2,NULL),(436,50,87,2,NULL),(437,17,99,2,NULL),(438,50,92,2,NULL),(439,51,87,2,NULL),(440,18,99,2,NULL),(441,87,87,2,NULL),(442,51,92,2,NULL),(443,19,99,2,NULL),(444,87,92,2,NULL),(445,28,87,2,NULL),(446,20,99,2,NULL),(447,29,87,2,NULL),(448,28,92,2,NULL),(449,23,99,2,NULL),(450,29,92,2,NULL),(451,30,87,2,NULL),(452,24,99,2,NULL),(453,30,92,2,NULL),(454,31,87,2,NULL),(455,15,100,2,NULL),(456,31,92,2,NULL),(457,32,87,2,NULL),(458,16,100,2,NULL),(459,33,87,2,NULL),(460,32,92,2,NULL),(461,17,100,2,NULL),(462,38,87,2,NULL),(463,33,92,2,NULL),(464,18,100,2,NULL),(465,38,92,2,NULL),(466,39,87,2,NULL),(467,19,100,2,NULL),(468,39,92,2,NULL),(469,69,88,2,NULL),(470,20,100,2,NULL),(471,44,88,2,NULL),(472,69,93,2,NULL),(473,23,100,2,NULL),(474,45,88,2,NULL),(475,44,93,2,NULL),(476,24,100,2,NULL),(477,46,88,2,NULL),(478,45,93,2,NULL),(479,15,101,2,NULL),(480,46,93,2,NULL),(481,47,88,2,NULL),(482,16,101,2,NULL),(483,47,93,2,NULL),(484,48,88,2,NULL),(485,17,101,2,NULL),(486,49,88,2,NULL),(487,48,93,2,NULL),(488,18,101,2,NULL),(489,50,88,2,NULL),(490,49,93,2,NULL),(491,19,101,2,NULL),(492,51,88,2,NULL),(493,50,93,2,NULL),(494,20,101,2,NULL),(495,51,93,2,NULL),(496,87,88,2,NULL),(497,23,101,2,NULL),(498,87,93,2,NULL),(499,28,88,2,NULL),(500,24,101,2,NULL),(501,28,93,2,NULL),(502,29,88,2,NULL),(503,15,102,2,NULL),(504,29,93,2,NULL),(505,30,88,2,NULL),(506,16,102,2,NULL),(507,30,93,2,NULL),(508,31,88,2,NULL),(509,17,102,2,NULL),(510,31,93,2,NULL),(511,32,88,2,NULL),(512,18,102,2,NULL),(513,33,88,2,NULL),(514,32,93,2,NULL),(515,19,102,2,NULL),(516,33,93,2,NULL),(517,38,88,2,NULL),(518,20,102,2,NULL),(519,39,88,2,NULL),(520,38,93,2,NULL),(521,23,102,2,NULL),(522,39,93,2,NULL),(523,24,102,2,NULL),(524,69,94,2,NULL),(525,15,103,2,NULL),(526,44,94,2,NULL),(527,16,103,2,NULL),(528,45,94,2,NULL),(529,17,103,2,NULL),(530,46,94,2,NULL),(531,18,103,2,NULL),(532,47,94,2,NULL),(533,19,103,2,NULL),(534,48,94,2,NULL),(535,20,103,2,NULL),(536,49,94,2,NULL),(537,23,103,2,NULL),(538,50,94,2,NULL),(539,24,103,2,NULL),(540,51,94,2,NULL),(541,15,104,2,NULL),(542,87,94,2,NULL),(543,16,104,2,NULL),(544,28,94,2,NULL),(545,17,104,2,NULL),(546,29,94,2,NULL),(547,18,104,2,NULL),(548,30,94,2,NULL),(549,19,104,2,NULL),(550,31,94,2,NULL),(551,20,104,2,NULL),(552,32,94,2,NULL),(553,23,104,2,NULL),(554,33,94,2,NULL),(555,24,104,2,NULL),(556,38,94,2,NULL),(557,15,105,2,NULL),(558,39,94,2,NULL),(559,16,105,2,NULL),(560,69,95,2,NULL),(561,17,105,2,NULL),(562,44,95,2,NULL),(563,18,105,2,NULL),(564,45,95,2,NULL),(565,19,105,2,NULL),(566,46,95,2,NULL),(567,20,105,2,NULL),(568,47,95,2,NULL),(569,23,105,2,NULL),(570,48,95,2,NULL),(571,24,105,2,NULL),(572,49,95,2,NULL),(573,15,106,2,NULL),(574,50,95,2,NULL),(575,16,106,2,NULL),(576,51,95,2,NULL),(577,17,106,2,NULL),(578,87,95,2,NULL),(579,18,106,2,NULL),(580,28,95,2,NULL),(581,19,106,2,NULL),(582,29,95,2,NULL),(583,20,106,2,NULL),(584,30,95,2,NULL),(585,23,106,2,NULL),(586,31,95,2,NULL),(587,24,106,2,NULL),(588,32,95,2,NULL),(589,15,107,2,NULL),(590,33,95,2,NULL),(591,16,107,2,NULL),(592,38,95,2,NULL),(593,17,107,2,NULL),(594,39,95,2,NULL),(595,18,107,2,NULL),(596,69,96,2,NULL),(597,19,107,2,NULL),(598,44,96,2,NULL),(599,20,107,2,NULL),(600,45,96,2,NULL),(601,23,107,2,NULL),(602,46,96,2,NULL),(603,24,107,2,NULL),(604,47,96,2,NULL),(605,15,108,2,NULL),(606,48,96,2,NULL),(607,16,108,2,NULL),(608,49,96,2,NULL),(609,17,108,2,NULL),(610,50,96,2,NULL),(611,18,108,2,NULL),(612,51,96,2,NULL),(613,19,108,2,NULL),(614,87,96,2,NULL),(615,20,108,2,NULL),(616,28,96,2,NULL),(617,23,108,2,NULL),(618,29,96,2,NULL),(619,24,108,2,NULL),(620,30,96,2,NULL),(621,15,109,2,NULL),(622,31,96,2,NULL),(623,16,109,2,NULL),(624,32,96,2,NULL),(625,17,109,2,NULL),(626,33,96,2,NULL),(627,18,109,2,NULL),(628,38,96,2,NULL),(629,19,109,2,NULL),(630,39,96,2,NULL),(631,20,109,2,NULL),(632,69,97,2,NULL),(633,23,109,2,NULL),(634,44,97,2,NULL),(635,24,109,2,NULL),(636,45,97,2,NULL),(637,15,110,2,NULL),(638,46,97,2,NULL),(639,16,110,2,NULL),(640,47,97,2,NULL),(641,17,110,2,NULL),(642,48,97,2,NULL),(643,18,110,2,NULL),(644,49,97,2,NULL),(645,19,110,2,NULL),(646,50,97,2,NULL),(647,20,110,2,NULL),(648,51,97,2,NULL),(649,23,110,2,NULL),(650,87,97,2,NULL),(651,24,110,2,NULL),(652,28,97,2,NULL),(653,15,111,2,NULL),(654,29,97,2,NULL),(655,16,111,2,NULL),(656,30,97,2,NULL),(657,17,111,2,NULL),(658,31,97,2,NULL),(659,18,111,2,NULL),(660,32,97,2,NULL),(661,19,111,2,NULL),(662,33,97,2,NULL),(663,20,111,2,NULL),(664,38,97,2,NULL),(665,23,111,2,NULL),(666,39,97,2,NULL),(667,24,111,2,NULL),(668,69,98,2,NULL),(669,15,112,2,NULL),(670,44,98,2,NULL),(671,16,112,2,NULL),(672,45,98,2,NULL),(673,17,112,2,NULL),(674,46,98,2,NULL),(675,18,112,2,NULL),(676,47,98,2,NULL),(677,19,112,2,NULL),(678,48,98,2,NULL),(679,20,112,2,NULL),(680,49,98,2,NULL),(681,23,112,2,NULL),(682,50,98,2,NULL),(683,24,112,2,NULL),(684,51,98,2,NULL),(685,15,113,2,NULL),(686,87,98,2,NULL),(687,16,113,2,NULL),(688,28,98,2,NULL),(689,17,113,2,NULL),(690,29,98,2,NULL),(691,18,113,2,NULL),(692,30,98,2,NULL),(693,19,113,2,NULL),(694,31,98,2,NULL),(695,20,113,2,NULL),(696,32,98,2,NULL),(697,23,113,2,NULL),(698,33,98,2,NULL),(699,24,113,2,NULL),(700,38,98,2,NULL),(701,15,114,2,NULL),(702,39,98,2,NULL),(703,16,114,2,NULL),(704,69,99,2,NULL),(705,17,114,2,NULL),(706,44,99,2,NULL),(707,18,114,2,NULL),(708,45,99,2,NULL),(709,19,114,2,NULL),(710,46,99,2,NULL),(711,20,114,2,NULL),(712,47,99,2,NULL),(713,23,114,2,NULL),(714,48,99,2,NULL),(715,24,114,2,NULL),(716,49,99,2,NULL),(717,15,118,2,NULL),(718,50,99,2,NULL),(719,16,118,2,NULL),(720,51,99,2,NULL),(721,17,118,2,NULL),(722,87,99,2,NULL),(723,18,118,2,NULL),(724,28,99,2,NULL),(725,19,118,2,NULL),(726,29,99,2,NULL),(727,20,118,2,NULL),(728,30,99,2,NULL),(729,23,118,2,NULL),(730,31,99,2,NULL),(731,24,118,2,NULL),(732,32,99,2,NULL),(733,21,9,2,NULL),(734,33,99,2,NULL),(735,21,29,2,NULL),(736,38,99,2,NULL),(737,25,10,2,NULL),(738,39,99,2,NULL),(739,69,11,2,NULL),(740,69,100,2,NULL),(741,44,11,2,NULL),(742,44,100,2,NULL),(743,45,11,2,NULL),(744,45,100,2,NULL),(745,46,11,2,NULL),(746,46,100,2,NULL),(747,47,11,2,NULL),(748,47,100,2,NULL),(749,48,11,2,NULL),(750,48,100,2,NULL),(751,49,11,2,NULL),(752,49,100,2,NULL),(753,50,11,2,NULL),(754,50,100,2,NULL),(755,51,11,2,NULL),(756,51,100,2,NULL),(757,87,11,2,NULL),(758,87,100,2,NULL),(759,28,11,2,NULL),(760,28,100,2,NULL),(761,29,11,2,NULL),(762,29,100,2,NULL),(763,30,11,2,NULL),(764,30,100,2,NULL),(765,31,11,2,NULL),(766,31,100,2,NULL),(767,32,11,2,NULL),(768,32,100,2,NULL),(769,33,11,2,NULL),(770,33,100,2,NULL),(771,38,11,2,NULL),(772,38,100,2,NULL),(773,39,11,2,NULL),(774,39,100,2,NULL),(775,69,101,2,NULL),(776,44,101,2,NULL),(777,45,101,2,NULL),(778,46,101,2,NULL),(779,47,101,2,NULL),(780,48,101,2,NULL),(781,49,101,2,NULL),(782,50,101,2,NULL),(783,51,101,2,NULL),(784,87,101,2,NULL),(785,28,101,2,NULL),(786,29,101,2,NULL),(787,30,101,2,NULL),(788,31,101,2,NULL),(789,32,101,2,NULL),(790,33,101,2,NULL),(791,38,101,2,NULL),(792,39,101,2,NULL),(793,69,102,2,NULL),(794,44,102,2,NULL),(795,45,102,2,NULL),(796,46,102,2,NULL),(797,47,102,2,NULL),(798,48,102,2,NULL),(799,49,102,2,NULL),(800,50,102,2,NULL),(801,51,102,2,NULL),(802,87,102,2,NULL),(803,28,102,2,NULL),(804,29,102,2,NULL),(805,30,102,2,NULL),(806,31,102,2,NULL),(807,32,102,2,NULL),(808,33,102,2,NULL),(809,38,102,2,NULL),(810,39,102,2,NULL),(811,69,103,2,NULL),(812,44,103,2,NULL),(813,45,103,2,NULL),(814,46,103,2,NULL),(815,47,103,2,NULL),(816,48,103,2,NULL),(817,49,103,2,NULL),(818,50,103,2,NULL),(819,51,103,2,NULL),(820,87,103,2,NULL),(821,28,103,2,NULL),(822,29,103,2,NULL),(823,30,103,2,NULL),(824,31,103,2,NULL),(825,32,103,2,NULL),(826,33,103,2,NULL),(827,38,103,2,NULL),(828,39,103,2,NULL),(829,69,104,2,NULL),(830,44,104,2,NULL),(831,45,104,2,NULL),(832,46,104,2,NULL),(833,47,104,2,NULL),(834,48,104,2,NULL),(835,49,104,2,NULL),(836,50,104,2,NULL),(837,51,104,2,NULL),(838,87,104,2,NULL),(839,28,104,2,NULL),(840,29,104,2,NULL),(841,30,104,2,NULL),(842,31,104,2,NULL),(843,32,104,2,NULL),(844,33,104,2,NULL),(845,38,104,2,NULL),(846,39,104,2,NULL),(847,69,105,2,NULL),(848,44,105,2,NULL),(849,45,105,2,NULL),(850,46,105,2,NULL),(851,47,105,2,NULL),(852,48,105,2,NULL),(853,49,105,2,NULL),(854,50,105,2,NULL),(855,51,105,2,NULL),(856,87,105,2,NULL),(857,28,105,2,NULL),(858,29,105,2,NULL),(859,30,105,2,NULL),(860,31,105,2,NULL),(861,32,105,2,NULL),(862,33,105,2,NULL),(863,38,105,2,NULL),(864,39,105,2,NULL),(865,69,106,2,NULL),(866,44,106,2,NULL),(867,45,106,2,NULL),(868,46,106,2,NULL),(869,47,106,2,NULL),(870,48,106,2,NULL),(871,49,106,2,NULL),(872,50,106,2,NULL),(873,51,106,2,NULL),(874,87,106,2,NULL),(875,28,106,2,NULL),(876,29,106,2,NULL),(877,30,106,2,NULL),(878,31,106,2,NULL),(879,32,106,2,NULL),(880,33,106,2,NULL),(881,38,106,2,NULL),(882,39,106,2,NULL),(883,69,107,2,NULL),(884,44,107,2,NULL),(885,45,107,2,NULL),(886,46,107,2,NULL),(887,47,107,2,NULL),(888,48,107,2,NULL),(889,49,107,2,NULL),(890,50,107,2,NULL),(891,51,107,2,NULL),(892,87,107,2,NULL),(893,28,107,2,NULL),(894,29,107,2,NULL),(895,30,107,2,NULL),(896,31,107,2,NULL),(897,32,107,2,NULL),(898,33,107,2,NULL),(899,38,107,2,NULL),(900,39,107,2,NULL),(901,69,108,2,NULL),(902,44,108,2,NULL),(903,45,108,2,NULL),(904,46,108,2,NULL),(905,47,108,2,NULL),(906,48,108,2,NULL),(907,49,108,2,NULL),(908,50,108,2,NULL),(909,51,108,2,NULL),(910,87,108,2,NULL),(911,28,108,2,NULL),(912,29,108,2,NULL),(913,30,108,2,NULL),(914,31,108,2,NULL),(915,32,108,2,NULL),(916,33,108,2,NULL),(917,38,108,2,NULL),(918,39,108,2,NULL),(919,69,109,2,NULL),(920,44,109,2,NULL),(921,45,109,2,NULL),(922,46,109,2,NULL),(923,47,109,2,NULL),(924,48,109,2,NULL),(925,49,109,2,NULL),(926,50,109,2,NULL),(927,51,109,2,NULL),(928,87,109,2,NULL),(929,28,109,2,NULL),(930,29,109,2,NULL),(931,30,109,2,NULL),(932,31,109,2,NULL),(933,32,109,2,NULL),(934,33,109,2,NULL),(935,38,109,2,NULL),(936,39,109,2,NULL),(937,69,110,2,NULL),(938,44,110,2,NULL),(939,45,110,2,NULL),(940,46,110,2,NULL),(941,47,110,2,NULL),(942,48,110,2,NULL),(943,49,110,2,NULL),(944,50,110,2,NULL),(945,51,110,2,NULL),(946,87,110,2,NULL),(947,28,110,2,NULL),(948,29,110,2,NULL),(949,30,110,2,NULL),(950,31,110,2,NULL),(951,32,110,2,NULL),(952,33,110,2,NULL),(953,38,110,2,NULL),(954,39,110,2,NULL),(955,69,111,2,NULL),(956,44,111,2,NULL),(957,45,111,2,NULL),(958,46,111,2,NULL),(959,47,111,2,NULL),(960,48,111,2,NULL),(961,49,111,2,NULL),(962,50,111,2,NULL),(963,51,111,2,NULL),(964,87,111,2,NULL),(965,28,111,2,NULL),(966,29,111,2,NULL),(967,30,111,2,NULL),(968,31,111,2,NULL),(969,32,111,2,NULL),(970,33,111,2,NULL),(971,38,111,2,NULL),(972,39,111,2,NULL),(973,69,112,2,NULL),(974,44,112,2,NULL),(975,45,112,2,NULL),(976,46,112,2,NULL),(977,47,112,2,NULL),(978,48,112,2,NULL),(979,49,112,2,NULL),(980,50,112,2,NULL),(981,51,112,2,NULL),(982,87,112,2,NULL),(983,28,112,2,NULL),(984,29,112,2,NULL),(985,30,112,2,NULL),(986,31,112,2,NULL),(987,32,112,2,NULL),(988,33,112,2,NULL),(989,38,112,2,NULL),(990,39,112,2,NULL),(991,69,113,2,NULL),(992,44,113,2,NULL),(993,45,113,2,NULL),(994,46,113,2,NULL),(995,47,113,2,NULL),(996,48,113,2,NULL),(997,49,113,2,NULL),(998,50,113,2,NULL),(999,51,113,2,NULL),(1000,87,113,2,NULL),(1001,28,113,2,NULL),(1002,29,113,2,NULL),(1003,30,113,2,NULL),(1004,31,113,2,NULL),(1005,32,113,2,NULL),(1006,33,113,2,NULL),(1007,38,113,2,NULL),(1008,39,113,2,NULL),(1009,69,114,2,NULL),(1010,44,114,2,NULL),(1011,45,114,2,NULL),(1012,46,114,2,NULL),(1013,47,114,2,NULL),(1014,48,114,2,NULL),(1015,49,114,2,NULL),(1016,50,114,2,NULL),(1017,51,114,2,NULL),(1018,87,114,2,NULL),(1019,28,114,2,NULL),(1020,29,114,2,NULL),(1021,30,114,2,NULL),(1022,31,114,2,NULL),(1023,32,114,2,NULL),(1024,33,114,2,NULL),(1025,38,114,2,NULL),(1026,39,114,2,NULL),(1027,69,118,2,NULL),(1028,44,118,2,NULL),(1029,45,118,2,NULL),(1030,46,118,2,NULL),(1031,47,118,2,NULL),(1032,48,118,2,NULL),(1033,49,118,2,NULL),(1034,50,118,2,NULL),(1035,51,118,2,NULL),(1036,87,118,2,NULL),(1037,28,118,2,NULL),(1038,29,118,2,NULL),(1039,30,118,2,NULL),(1040,31,118,2,NULL),(1041,32,118,2,NULL),(1042,33,118,2,NULL),(1043,38,118,2,NULL),(1044,39,118,2,NULL),(1045,69,12,2,NULL),(1046,44,12,2,NULL),(1047,45,12,2,NULL),(1048,46,12,2,NULL),(1049,47,12,2,NULL),(1050,48,12,2,NULL),(1051,49,12,2,NULL),(1052,50,12,2,NULL),(1053,51,12,2,NULL),(1054,87,12,2,NULL),(1055,28,12,2,NULL),(1056,29,12,2,NULL),(1057,30,12,2,NULL),(1058,31,12,2,NULL),(1059,32,12,2,NULL),(1060,33,12,2,NULL),(1061,38,12,2,NULL),(1062,39,12,2,NULL),(1063,88,24,2,NULL),(1064,74,24,2,NULL),(1065,69,28,2,NULL),(1066,69,30,2,NULL),(1067,35,24,2,NULL),(1068,52,25,2,NULL),(1069,127,22,2,NULL),(1070,44,28,2,NULL),(1071,45,28,2,NULL),(1072,46,28,2,NULL),(1073,47,28,2,NULL),(1074,48,28,2,NULL),(1075,49,28,2,NULL),(1076,50,28,2,NULL),(1077,51,28,2,NULL),(1078,44,30,2,NULL),(1079,45,30,2,NULL),(1080,46,30,2,NULL),(1081,47,30,2,NULL),(1082,48,30,2,NULL),(1083,49,30,2,NULL),(1084,50,30,2,NULL),(1085,51,30,2,NULL),(1086,120,24,2,NULL),(1087,87,28,2,NULL),(1088,87,30,2,NULL),(1089,70,26,2,NULL),(1090,28,28,2,NULL),(1091,29,28,2,NULL),(1092,30,28,2,NULL),(1093,31,28,2,NULL),(1094,32,28,2,NULL),(1095,33,28,2,NULL),(1096,38,28,2,NULL),(1097,39,28,2,NULL),(1098,28,30,2,NULL),(1099,29,30,2,NULL),(1100,30,30,2,NULL),(1101,31,30,2,NULL),(1102,32,30,2,NULL),(1103,33,30,2,NULL),(1104,38,30,2,NULL),(1105,39,30,2,NULL),(1106,112,8,2,NULL),(1107,112,27,2,NULL),(1108,86,9,2,NULL),(1109,86,29,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (38,'android.permission.ACCESS_CHECKIN_PROPERTIES'),(9,'android.permission.ACCESS_NETWORK_STATE'),(39,'android.permission.ACCESS_SURFACE_FLINGER'),(8,'android.permission.ACCESS_WIFI_STATE'),(30,'android.permission.BLUETOOTH'),(35,'android.permission.BROADCAST_STICKY'),(16,'android.permission.CALL_PHONE'),(29,'android.permission.CAMERA'),(40,'android.permission.CHANGE_NETWORK_STATE'),(31,'android.permission.CHANGE_WIFI_STATE'),(41,'android.permission.DEVICE_POWER'),(3,'android.permission.DUMP'),(32,'android.permission.FLASHLIGHT'),(22,'android.permission.GET_ACCOUNTS'),(4,'android.permission.GET_TASKS'),(37,'android.permission.HARDWARE_TEST'),(2,'android.permission.INJECT_EVENTS'),(18,'android.permission.INSTALL_PACKAGES'),(5,'android.permission.INTERNET'),(24,'android.permission.MODIFY_PHONE_STATE'),(34,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(21,'android.permission.READ_CONTACTS'),(7,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(11,'android.permission.READ_SMS'),(13,'android.permission.RECEIVE_SMS'),(33,'android.permission.RESTART_PACKAGES'),(12,'android.permission.SEND_SMS'),(14,'android.permission.SET_PREFERRED_APPLICATIONS'),(19,'android.permission.USE_CREDENTIALS'),(26,'android.permission.VIBRATE'),(10,'android.permission.WAKE_LOCK'),(36,'android.permission.WRITE_APN_SETTINGS'),(23,'android.permission.WRITE_CONTACTS'),(6,'android.permission.WRITE_EXTERNAL_STORAGE'),(25,'android.permission.WRITE_SETTINGS'),(17,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(15,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(27,'com.android.launcher.permission.INSTALL_SHORTCUT'),(28,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(20,'com.google.android.googleapps.permission.GOOGLE_AUTH.mail');
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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'package:com.netflix.mediaclient',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'',NULL,NULL,NULL),(4,NULL,NULL,'(.*)?real=1',NULL,NULL,NULL),(5,NULL,NULL,'http://mobile-softs.com/?dl=1&file=(.*)',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'',NULL,NULL,NULL),(8,NULL,NULL,'(.*)?real=1',NULL,NULL,NULL),(9,NULL,NULL,'http://mobile-softs.com/?dl=1&file=(.*)',NULL,NULL,NULL),(10,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(11,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(12,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(13,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'',NULL,NULL,NULL),(16,NULL,NULL,'market://search?q=com.jbapps.contact',NULL,NULL,NULL),(17,NULL,NULL,'market://search?q=com.jbapps.contact.numdb.chs',NULL,NULL,NULL),(18,NULL,NULL,'android_secret_code://(.*)',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'',NULL,NULL,NULL),(21,'tel','(.*)',NULL,NULL,NULL,NULL),(22,'tel','NULL-CONSTANT',NULL,NULL,NULL,NULL),(23,'voicemail','',NULL,NULL,NULL,NULL),(24,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(25,'tel','',NULL,NULL,NULL,NULL),(26,'tel','(.*)',NULL,NULL,NULL,NULL),(27,'tel','NULL-CONSTANT',NULL,NULL,NULL,NULL),(28,'tel','(.*)+',NULL,NULL,NULL,NULL),(29,'tel','(.*)(.*)',NULL,NULL,NULL,NULL),(30,'tel','(.*)',NULL,NULL,NULL,NULL),(31,'tel','NULL-CONSTANT',NULL,NULL,NULL,NULL),(32,'tel','(.*)',NULL,NULL,NULL,NULL),(33,'tel','NULL-CONSTANT',NULL,NULL,NULL,NULL),(34,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(35,'sms','NULL-CONSTANT',NULL,NULL,NULL,NULL),(36,'sms','(.*)',NULL,NULL,NULL,NULL),(37,'sms','',NULL,NULL,NULL,NULL),(38,NULL,NULL,'content://com.android.contacts',NULL,NULL,NULL),(39,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(40,'tel','(.*)',NULL,NULL,NULL,NULL),(41,'tel','NULL-CONSTANT',NULL,NULL,NULL,NULL),(42,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(43,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(44,NULL,NULL,'market://search?q=com.jbapps.contact',NULL,NULL,NULL),(45,NULL,NULL,'market://search?q=com.jbapps.contact.numdb.chs',NULL,NULL,NULL),(46,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(47,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(48,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(49,NULL,NULL,'(.*)',NULL,NULL,NULL),(50,'tel','(.*)(.*)+++',NULL,NULL,NULL,NULL),(51,'tel','',NULL,NULL,NULL,NULL),(52,'tel','+++',NULL,NULL,NULL,NULL),(53,'tel','NULL-CONSTANT++++',NULL,NULL,NULL,NULL),(54,'tel','(.*)+++',NULL,NULL,NULL,NULL),(55,'tel','(.*)++',NULL,NULL,NULL,NULL),(56,'tel','(.*)+',NULL,NULL,NULL,NULL),(57,'tel','(.*)(.*)',NULL,NULL,NULL,NULL),(58,'tel','NULL-CONSTANT+++',NULL,NULL,NULL,NULL),(59,'tel','(.*)(.*)++++',NULL,NULL,NULL,NULL),(60,'tel','++++',NULL,NULL,NULL,NULL),(61,'tel','(.*)+++++',NULL,NULL,NULL,NULL),(62,'tel','++',NULL,NULL,NULL,NULL),(63,'tel','(.*)(.*)+',NULL,NULL,NULL,NULL),(64,'tel','NULL-CONSTANT++',NULL,NULL,NULL,NULL),(65,'tel','(.*)',NULL,NULL,NULL,NULL),(66,'tel','(.*)++++',NULL,NULL,NULL,NULL),(67,'tel','(.*)(.*)++',NULL,NULL,NULL,NULL),(68,'tel','NULL-CONSTANT',NULL,NULL,NULL,NULL),(69,'tel','+',NULL,NULL,NULL,NULL),(70,'tel','NULL-CONSTANT+',NULL,NULL,NULL,NULL),(71,NULL,NULL,'mailto:NULL-CONSTANT',NULL,NULL,NULL),(72,NULL,NULL,'mailto:(.*)',NULL,NULL,NULL),(73,NULL,NULL,'content://com.android.contacts',NULL,NULL,NULL),(74,NULL,NULL,'content://com.android.contacts',NULL,NULL,NULL),(75,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(76,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(77,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(78,NULL,NULL,'(.*)',NULL,NULL,NULL),(79,NULL,NULL,'http://61.145.124.93/soft/gocontact/plugins/GOContactNumlocation_chs.apk',NULL,NULL,NULL),(80,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(81,'tel','(.*)',NULL,NULL,NULL,NULL),(82,'voicemail','',NULL,NULL,NULL,NULL),(83,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(84,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(85,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(86,NULL,NULL,'file://(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,11,12),(2,13,13),(3,31,24),(4,40,38),(5,45,43),(6,47,46),(7,58,73),(8,60,74),(9,60,NULL),(10,61,75),(11,62,76),(12,63,77),(13,70,83),(14,74,85);
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
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,2,11),(12,2,12),(13,2,13),(14,3,17),(15,3,16),(16,3,1),(17,3,5),(18,3,6),(19,3,7),(20,3,9),(21,3,14),(22,3,15),(23,4,1),(24,4,4),(25,4,5),(26,4,6),(27,4,7),(28,4,9),(29,4,10),(30,4,15),(31,4,17),(32,4,16),(33,4,19),(34,4,18),(35,4,21),(36,4,20),(37,4,23),(38,4,22),(39,4,25),(40,4,24),(41,4,26),(42,5,1),(43,5,32),(44,5,5),(45,5,6),(46,5,7),(47,5,8),(48,5,9),(49,5,10),(50,5,15),(51,5,17),(52,5,18),(53,5,27),(54,5,29),(55,5,28),(56,5,31),(57,5,30),(58,6,1),(59,6,5),(60,6,6),(61,6,7),(62,6,8),(63,6,9),(64,6,10),(65,6,11),(66,6,12),(67,6,13),(68,6,15),(69,6,17),(70,6,18),(71,6,21),(72,6,25),(73,6,24),(74,6,27),(75,6,26),(76,6,31),(77,6,34),(78,6,35),(79,6,33),(80,6,38),(81,6,39),(82,6,36),(83,6,37),(84,6,40),(85,6,41);
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

-- Dump completed on 2015-10-12  3:30:11
