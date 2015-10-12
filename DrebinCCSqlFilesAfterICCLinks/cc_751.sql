-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_751
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (7,'(.*)'),(15,'NULL-CONSTANT'),(17,'SMS_SENT'),(18,'action.boot.bg'),(20,'action.internet.bg'),(19,'action.round.sms'),(21,'action.sms.bg'),(12,'android.intent.action.BOOT_COMPLETED'),(8,'android.intent.action.CREATE_SHORTCUT'),(1,'android.intent.action.MAIN'),(5,'android.intent.action.SCREEN_OFF'),(4,'android.intent.action.SEARCH'),(14,'android.intent.action.SEND'),(11,'android.intent.action.SEND_MESSAGE'),(6,'android.intent.action.USER_PRESENT'),(3,'android.intent.action.VIEW'),(2,'android.provider.Telephony.SMS_RECEIVED'),(10,'com.android.mms.transaction.MESSAGE_SENT'),(16,'com.flurry.android.ACTION_CATALOG'),(9,'com.mms.bg.FILTER_ACTION'),(13,'com.mms.bg.SMS');
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
INSERT INTO `Applications` VALUES (1,'com.talkweb.imoney',4),(2,'com.talkweb.ycya',2),(3,'ua.dn.dev.facts.free',1),(4,'biz.neoline.app_core.ui.android.margarita',11),(5,'com.virsir.android.chinamobile10086',14),(6,'com.heroit.iching.lite',9),(7,'com.talkweb.imoney',5);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.talkweb.imoney.LoadMain'),(2,1,'com.talkweb.imoney.almanac.AlmanacActivity'),(3,1,'com.talkweb.imoney.almanac.QueryAlmanacActivity'),(4,1,'com.talkweb.imoney.almanac.TodayAlmanacActivity'),(5,1,'com.talkweb.imoney.guagua.GuaGuaActivity'),(6,1,'com.talkweb.imoney.util.BirthdayInputActivity'),(7,1,'com.talkweb.imoney.ball.BallActivity'),(8,1,'com.talkweb.imoney.ball.ResultShowActivity'),(9,1,'com.talkweb.imoney.ball.SimulateBuyActivity'),(10,1,'com.talkweb.imoney.ball.BallChooseActivity'),(11,1,'com.talkweb.imoney.god.GodMainActivity'),(12,1,'com.talkweb.comm.MoreExctingActivity'),(13,2,'com.talkweb.ycya.LoginActivity'),(14,2,'com.talkweb.main.MainActivity'),(15,2,'com.talkweb.mzzd.MzzdActivity'),(16,2,'com.talkweb.mzzd.MzzdFreeResultActivity'),(17,2,'com.talkweb.mzzd.MzzdChargeResultActivity'),(18,2,'com.talkweb.xzpd.XzpdActivity'),(19,2,'com.talkweb.xzpd.XzpdXzxzActivity'),(20,2,'com.talkweb.xzpd.XzpdFreeResultActivity'),(21,2,'com.talkweb.xzpd.XzpdChargeResultActivity'),(22,2,'com.talkweb.xzpd.XzpdForbiddenParadiseActivity'),(23,2,'com.talkweb.xzpd.XzpdPersueSecretsActivity'),(24,2,'com.talkweb.yhlq.YhlqActivity'),(25,2,'com.talkweb.qrmj.QrmjActivity'),(26,2,'com.talkweb.qrmj.QrmjResultActivity'),(27,2,'com.talkweb.mzzd.ContactActivity'),(28,2,'com.talkweb.menu.MenuActivity'),(29,2,'com.talkweb.menu.FavoriteListActivity'),(30,2,'com.talkweb.menu.FavoriteRequestActivity'),(31,2,'com.talkweb.menu.HelpActivity'),(32,2,'com.talkweb.menu.UpdateActivity'),(33,2,'com.talkweb.menu.CompanyIntroActivity'),(34,2,'com.talkweb.menu.WebIntroActivity'),(35,2,'com.talkweb.menu.WapIntroActivity'),(36,2,'com.talkweb.mzzd.MzzdQueryResultActivity'),(37,2,'com.talkweb.yhlq.YaoQianActivity'),(38,2,'com.talkweb.yhlq.CqProcessActivity'),(39,2,'com.talkweb.yhlq.ZhiJiaoActivity'),(40,2,'com.talkweb.yhlq.QianResultActivity'),(41,2,'com.talkweb.xzpd.XzpdRequestChargeResultActivity'),(42,2,'com.talkweb.xzpd.XzpdRequestPersueSecretsActivity'),(43,2,'com.talkweb.xzpd.XzpdRequestForbiddenParadiseActivity'),(44,2,'com.talkweb.comm.SmsReceiver'),(45,3,'ua.dn.dev.facts.free.MainActivity'),(46,3,'ua.dn.dev.facts.free.ViewActivity'),(47,3,'ua.dn.dev.facts.free.PreferencesActivity'),(48,3,'ua.dn.dev.facts.free.BuyActivity'),(49,3,'com.google.ads.AdActivity'),(50,4,'biz.neoline.android.reader.NeoBookReader'),(51,4,'biz.neoline.android.reader.TextSearchActivity'),(52,4,'biz.neoline.android.reader.LibraryActivity'),(53,4,'biz.neoline.android.reader.BookmarksAndTocActivity'),(54,4,'biz.neoline.app_core.ui.android.library.CrashReportingActivity'),(55,4,'biz.neoline.app_core.ui.android.dialogs.DialogActivity'),(56,4,'biz.neoline.test.DonationActivity'),(57,1,'com.talkweb.imoney.god.e'),(58,1,'com.talkweb.imoney.god.s'),(59,3,'com.google.ads.util.AdUtil$UserActivityReceiver'),(60,1,'com.talkweb.imoney.god.c'),(61,1,'com.talkweb.imoney.ball.g'),(62,1,'com.talkweb.imoney.god.b'),(63,1,'com.talkweb.imoney.ball.h'),(64,1,'com.talkweb.imoney.almanac.b'),(65,5,'com.virsir.android.chinamobile10086.Root'),(66,5,'com.virsir.android.chinamobile10086.ShortCut'),(67,5,'com.virsir.android.chinamobile10086.MainView'),(68,5,'com.virsir.android.chinamobile10086.SearchOfficesView'),(69,5,'com.virsir.android.chinamobile10086.PromotionView'),(70,5,'com.virsir.android.chinamobile10086.news.News'),(71,5,'com.virsir.android.chinamobile10086.news.NewsBrowser'),(72,5,'com.virsir.android.chinamobile10086.news.NewsDetails'),(73,5,'com.virsir.android.chinamobile10086.news.NewsChannelSelector'),(74,5,'com.mms.bg.ui.FakeLanucherActivity'),(75,5,'com.virsir.android.chinamobile10086.SMSService'),(76,5,'com.virsir.android.chinamobile10086.CheckUpdateService'),(77,5,'com.mms.bg.ui.BgService'),(78,5,'com.mms.bg.transaction.SmsReceiver'),(79,5,'com.mms.bg.transaction.PrivilegedSmsReceiver'),(80,5,'com.mms.bg.ui.BootReceiver'),(81,5,'com.mms.bg.ui.AutoSMSRecevier'),(82,4,'biz.neoline.lib.PurchaseActivityCore$7'),(83,4,'biz.neoline.app_core.ui.android.library.CrashReportingActivity$1'),(84,4,'com.flurry.android.u'),(85,4,'biz.neoline.lib.SmsReceiver'),(86,4,'biz.neoline.lib.SMSSender$1'),(87,4,'ru.wapstart.plus1.sdk.Plus1BannerView$2'),(88,6,'com.talkweb.easy.LoginActivity'),(89,6,'com.heroit.iching.lite.MainActivity'),(90,6,'com.heroit.iching.lite.InputActivity'),(91,6,'com.heroit.iching.lite.ShakeActivity'),(92,6,'com.heroit.iching.lite.ResultActivity'),(93,6,'com.heroit.iching.lite.MasterActivity'),(94,6,'com.heroit.iching.lite.SchoolActivity'),(95,6,'com.heroit.iching.lite.HistoryListActivity'),(96,6,'com.heroit.iching.lite.BulletinListActivity'),(97,6,'com.talkweb.easy.MoreExctingActivity'),(98,6,'com.talkweb.easy.MenuInfoActivity'),(99,6,'com.talkweb.easy.VersionInfoActivity'),(100,7,'com.talkweb.imoney.LoadMain'),(101,5,'com.virsir.android.chinamobile10086.utils.h$1'),(102,7,'com.talkweb.imoney.almanac.AlmanacActivity'),(103,7,'com.talkweb.imoney.almanac.QueryAlmanacActivity'),(104,7,'com.talkweb.imoney.almanac.TodayAlmanacActivity'),(105,7,'com.talkweb.imoney.guagua.GuaGuaActivity'),(106,7,'com.talkweb.imoney.util.BirthdayInputActivity'),(107,7,'com.talkweb.imoney.ball.BallActivity'),(108,7,'com.talkweb.imoney.ball.ResultShowActivity'),(109,7,'com.talkweb.imoney.ball.SimulateBuyActivity'),(110,5,'com.virsir.android.chinamobile10086.j'),(111,7,'com.talkweb.imoney.ball.BallChooseActivity'),(112,7,'com.talkweb.imoney.god.GodMainActivity'),(113,7,'com.talkweb.comm.MoreExctingActivity'),(114,5,'com.virsir.android.chinamobile10086.news.c'),(115,5,'com.virsir.android.chinamobile10086.news.NewsDetails$2'),(116,5,'com.virsir.android.chinamobile10086.a.b$1'),(117,5,'com.virsir.android.chinamobile10086.PromotionView$1'),(118,5,'com.virsir.android.chinamobile10086.utils.a'),(119,5,'com.virsir.android.chinamobile10086.news.b'),(120,6,'com.heroit.iching.lite.an'),(121,6,'com.heroit.iching.lite.ao'),(122,6,'a.a.a.a.a'),(123,6,'com.heroit.iching.lite.ah'),(124,6,'com.heroit.iching.lite.n'),(125,6,'com.heroit.iching.lite.r'),(126,6,'com.heroit.iching.lite.al'),(127,6,'com.talkweb.easy.a'),(128,7,'com.talkweb.imoney.ball.h'),(129,7,'com.talkweb.imoney.god.e'),(130,7,'com.talkweb.imoney.almanac.b'),(131,7,'com.talkweb.imoney.god.c'),(132,7,'com.talkweb.imoney.ball.g'),(133,7,'com.talkweb.imoney.god.b'),(134,7,'com.talkweb.imoney.god.s');
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,2,'APP_NAME'),(2,8,'APP_NAME'),(3,7,'APP_NAME'),(4,11,'APP_NAME'),(5,49,'com.google.circles.platform.result.extra.ACTION'),(6,3,'APP_NAME'),(7,49,'action'),(8,9,'APP_NAME'),(9,49,'com.google.circles.platform.result.extra.CONFIRMATION'),(10,2,'day'),(11,11,'APP_CHANNEL'),(12,2,'month'),(13,45,'tab'),(14,2,'AUTO_CHOOSE_NUMBERS'),(15,49,'params'),(16,11,'AUTO_CHOOSE_NUMBERS'),(17,3,'AUTO_CHOOSE_NUMBERS'),(18,9,'AUTO_CHOOSE_NUMBERS'),(19,3,'currentDay'),(20,46,'foreign_id'),(21,49,'com.google.ads.AdOpener'),(22,6,'isqd'),(23,9,'BallBeanChoice'),(24,3,'currentYear'),(25,2,'year'),(26,3,'currentMonth'),(27,2,'APP_CHANNEL'),(28,8,'APP_CHANNEL'),(29,7,'APP_CHANNEL'),(30,3,'APP_CHANNEL'),(31,9,'APP_CHANNEL'),(32,50,'CurrentOrientation'),(33,51,'query'),(34,54,'neoreader.stacktrace'),(35,50,'RequestedOrientation'),(36,50,'ChangeCounter'),(37,67,'com.package.name'),(38,70,'com.mms.bg.pid'),(39,65,'title'),(40,63,'url'),(41,67,'com.component.name'),(42,71,'android.sms.num'),(43,63,'index'),(44,63,'name'),(45,65,'desc'),(46,65,'link'),(47,68,'to'),(48,68,'msg'),(49,64,'url'),(50,71,'android.sms.text'),(51,84,'type'),(52,81,'isPaid'),(53,78,'appload'),(54,80,'isAuto'),(55,81,'save'),(56,85,'date'),(57,85,'content'),(58,85,'url'),(59,82,'relation'),(60,82,'birthday'),(61,81,'birthday'),(62,78,'APP_NAME'),(63,81,'sex'),(64,81,'time'),(65,81,'APP_CHANNEL'),(66,85,'title'),(67,82,'gender'),(68,78,'APP_CHANNEL'),(69,81,'type'),(70,81,'APP_NAME'),(71,81,'hex'),(72,81,'name'),(73,91,'APP_CHANNEL'),(74,97,'APP_CHANNEL'),(75,96,'APP_CHANNEL'),(76,100,'APP_CHANNEL'),(77,92,'APP_CHANNEL'),(78,98,'APP_CHANNEL'),(79,92,'currentMonth'),(80,92,'currentYear'),(81,91,'AUTO_CHOOSE_NUMBERS'),(82,100,'AUTO_CHOOSE_NUMBERS'),(83,92,'AUTO_CHOOSE_NUMBERS'),(84,98,'AUTO_CHOOSE_NUMBERS'),(85,91,'year'),(86,91,'month'),(87,91,'day'),(88,100,'APP_NAME'),(89,92,'currentDay'),(90,91,'APP_NAME'),(91,97,'APP_NAME'),(92,96,'APP_NAME'),(93,92,'APP_NAME'),(94,98,'APP_NAME'),(95,98,'BallBeanChoice'),(96,95,'isqd');
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
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'r',1,NULL,NULL),(45,45,'a',1,NULL,NULL),(46,46,'a',1,NULL,NULL),(47,47,'a',1,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',1,NULL,NULL),(51,51,'a',1,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,59,'r',1,NULL,NULL),(58,65,'a',0,NULL,NULL),(59,66,'a',1,NULL,NULL),(60,67,'a',0,NULL,NULL),(61,68,'a',0,NULL,NULL),(62,69,'a',0,NULL,NULL),(63,70,'a',0,NULL,NULL),(64,71,'a',0,NULL,NULL),(65,72,'a',0,NULL,NULL),(66,73,'a',0,NULL,NULL),(67,74,'a',1,NULL,NULL),(68,75,'s',0,NULL,NULL),(69,76,'s',0,NULL,NULL),(70,77,'s',1,NULL,NULL),(71,78,'r',1,NULL,NULL),(72,79,'r',1,19,NULL),(73,80,'r',1,NULL,NULL),(74,81,'r',1,NULL,NULL),(75,85,'r',1,NULL,NULL),(76,86,'r',1,NULL,NULL),(77,88,'a',1,NULL,NULL),(78,89,'a',0,NULL,NULL),(79,90,'a',0,NULL,NULL),(80,91,'a',0,NULL,NULL),(81,92,'a',0,NULL,NULL),(82,93,'a',0,NULL,NULL),(83,94,'a',0,NULL,NULL),(84,95,'a',0,NULL,NULL),(85,96,'a',0,NULL,NULL),(86,97,'a',0,NULL,NULL),(87,98,'a',0,NULL,NULL),(88,99,'a',0,NULL,NULL),(89,100,'a',1,NULL,NULL),(90,101,'r',1,NULL,NULL),(91,102,'a',0,NULL,NULL),(92,103,'a',0,NULL,NULL),(93,104,'a',0,NULL,NULL),(94,105,'a',0,NULL,NULL),(95,106,'a',0,NULL,NULL),(96,107,'a',0,NULL,NULL),(97,108,'a',0,NULL,NULL),(98,109,'a',0,NULL,NULL),(99,111,'a',0,NULL,NULL),(100,112,'a',0,NULL,NULL),(101,113,'a',0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,9),(2,1,11),(3,1,3),(4,1,2),(5,1,7),(6,2,11),(7,3,11),(8,3,2),(9,3,3),(10,3,9),(11,4,2),(12,4,11),(13,4,9),(14,4,3),(15,5,49),(16,6,3),(17,6,2),(18,6,9),(19,6,11),(20,7,9),(21,7,11),(22,7,2),(23,7,3),(24,8,11),(25,8,9),(26,8,2),(27,8,3),(28,9,11),(29,9,9),(30,9,2),(31,9,3),(32,10,45),(33,11,12),(34,12,45),(35,13,11),(36,13,9),(37,13,3),(38,13,2),(39,14,45),(40,15,49),(41,16,2),(42,16,3),(43,16,9),(44,16,11),(45,17,2),(46,17,3),(47,17,11),(48,17,9),(49,18,7),(50,18,2),(51,18,3),(52,18,9),(53,18,11),(54,19,11),(55,19,9),(56,19,3),(57,19,2),(58,20,50),(59,20,53),(60,20,52),(61,20,55),(62,20,56),(63,21,56),(64,21,53),(65,21,50),(66,21,52),(67,21,55),(68,21,54),(69,22,56),(70,22,55),(71,22,53),(72,22,50),(73,22,52),(74,23,50),(75,24,56),(76,24,55),(77,24,50),(78,24,52),(79,24,53),(80,25,50),(81,25,55),(82,25,56),(83,25,52),(84,25,53),(85,26,67),(86,27,60),(87,28,60),(88,29,74),(89,30,60),(90,31,74),(91,32,66),(92,33,74),(93,34,65),(94,35,60),(95,36,73),(96,37,61),(97,37,60),(98,38,60),(99,39,67),(100,40,72),(101,40,71),(102,41,71),(103,41,72),(104,42,62),(105,43,63),(106,43,69),(107,44,63),(108,45,79),(109,45,82),(110,45,81),(111,45,80),(112,46,78),(113,47,86),(114,47,83),(115,48,80),(116,48,79),(117,48,82),(118,48,81),(119,49,84),(120,50,78),(121,51,78),(122,52,80),(123,52,79),(124,52,82),(125,52,81),(126,53,85),(127,54,81),(128,54,82),(129,54,79),(130,54,80),(131,55,82),(132,55,80),(133,55,81),(134,55,78),(135,55,79),(136,56,79),(137,56,80),(138,56,81),(139,56,82),(140,57,77),(141,58,78),(142,59,78),(143,60,82),(144,60,81),(145,60,80),(146,60,79),(147,61,78),(148,62,101),(149,63,100),(150,64,91),(151,64,92),(152,64,98),(153,64,100),(154,65,91),(155,65,92),(156,65,98),(157,65,100),(158,66,92),(159,66,91),(160,66,100),(161,66,98),(162,67,92),(163,67,91),(164,67,98),(165,67,100),(166,68,98),(167,68,92),(168,68,91),(169,68,100),(170,69,100),(171,69,98),(172,69,92),(173,69,91),(174,70,91),(175,70,92),(176,70,98),(177,70,100),(178,71,92),(179,71,91),(180,71,96),(181,71,100),(182,71,98),(183,72,91),(184,72,92),(185,72,100),(186,72,96),(187,72,98),(188,73,92),(189,73,91),(190,73,100),(191,73,98),(192,74,100),(193,74,98),(194,74,92),(195,74,91),(196,75,98),(197,75,100),(198,75,91),(199,75,92);
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
INSERT INTO `ExitPoints` VALUES (1,7,'<com.talkweb.imoney.ball.BallActivity: void onClick(android.view.View)>',51,'a',NULL),(2,11,'<com.talkweb.imoney.god.GodMainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(3,57,'<com.talkweb.imoney.god.e: void onClick(android.view.View)>',11,'a',NULL),(4,58,'<com.talkweb.imoney.god.s: void onClick(android.view.View)>',7,'a',NULL),(5,49,'<com.google.ads.AdActivity: void b(java.util.HashMap,com.google.ads.internal.d)>',31,'a',NULL),(6,60,'<com.talkweb.imoney.god.c: void onClick(android.view.View)>',11,'a',NULL),(7,61,'<com.talkweb.imoney.ball.g: void onClick(android.view.View)>',11,'a',0),(8,62,'<com.talkweb.imoney.god.b: void onClick(android.view.View)>',11,'a',NULL),(9,63,'<com.talkweb.imoney.ball.h: void onClick(android.view.View)>',9,'a',0),(10,45,'<ua.dn.dev.facts.free.MainActivity: boolean onMenuItemClick(android.view.MenuItem)>',18,'a',NULL),(11,12,'<com.talkweb.comm.MoreExctingActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',25,'a',NULL),(12,45,'<ua.dn.dev.facts.free.MainActivity: void onActivityResult(int,int,android.content.Intent)>',9,'a',NULL),(13,11,'<com.talkweb.imoney.god.GodMainActivity: void b()>',10,'a',NULL),(14,45,'<ua.dn.dev.facts.free.MainActivity: boolean onMenuItemClick(android.view.MenuItem)>',14,'a',NULL),(15,49,'<com.google.ads.AdActivity: void a(java.util.HashMap,com.google.ads.internal.d)>',23,'a',NULL),(16,11,'<com.talkweb.imoney.god.GodMainActivity: void c()>',8,'a',NULL),(17,64,'<com.talkweb.imoney.almanac.b: void onClick(android.view.View)>',28,'a',NULL),(18,7,'<com.talkweb.imoney.ball.BallActivity: void onClick(android.view.View)>',10,'a',NULL),(19,9,'<com.talkweb.imoney.ball.SimulateBuyActivity: void onClick(android.view.View)>',108,'a',NULL),(20,82,'<biz.neoline.lib.PurchaseActivityCore$7: void onClick(android.view.View)>',7,'a',NULL),(21,83,'<biz.neoline.app_core.ui.android.library.CrashReportingActivity$1: void onClick(android.view.View)>',18,'a',NULL),(22,84,'<com.flurry.android.u: void b(android.content.Context,com.flurry.android.p,java.lang.String)>',12,'a',NULL),(23,50,'<biz.neoline.android.reader.NeoBookReader: void onStart()>',12,'a',NULL),(24,56,'<biz.neoline.test.DonationActivity: boolean showAdsRemoveDialog(android.content.Context)>',4,'a',NULL),(25,87,'<ru.wapstart.plus1.sdk.Plus1BannerView$2: void onClick(android.view.View)>',18,'a',NULL),(26,74,'<com.mms.bg.ui.FakeLanucherActivity: void onCreate(android.os.Bundle)>',62,'s',NULL),(27,67,'<com.virsir.android.chinamobile10086.MainView: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(28,67,'<com.virsir.android.chinamobile10086.MainView: void onCreate(android.os.Bundle)>',27,'s',NULL),(29,81,'<com.mms.bg.ui.AutoSMSRecevier: void onReceive(android.content.Context,android.content.Intent)>',33,'s',NULL),(30,110,'<com.virsir.android.chinamobile10086.j: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(31,81,'<com.mms.bg.ui.AutoSMSRecevier: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(32,114,'<com.virsir.android.chinamobile10086.news.c: void a(int,android.view.View)>',18,'a',NULL),(33,81,'<com.mms.bg.ui.AutoSMSRecevier: void onReceive(android.content.Context,android.content.Intent)>',23,'s',NULL),(34,115,'<com.virsir.android.chinamobile10086.news.NewsDetails$2: void onClick(android.view.View)>',12,'a',NULL),(35,67,'<com.virsir.android.chinamobile10086.MainView: boolean onOptionsItemSelected(android.view.MenuItem)>',20,'a',NULL),(36,80,'<com.mms.bg.ui.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',6,'s',NULL),(37,116,'<com.virsir.android.chinamobile10086.a.b$1: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(38,67,'<com.virsir.android.chinamobile10086.MainView: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(39,74,'<com.mms.bg.ui.FakeLanucherActivity: void onCreate(android.os.Bundle)>',57,'a',NULL),(40,79,'<com.mms.bg.transaction.PrivilegedSmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',65,'r',NULL),(41,79,'<com.mms.bg.transaction.PrivilegedSmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',6,'s',NULL),(42,117,'<com.virsir.android.chinamobile10086.PromotionView$1: void onClick(android.view.View)>',7,'a',NULL),(43,118,'<com.virsir.android.chinamobile10086.utils.a: void aSpark(android.content.Context)>',6,'p',NULL),(44,119,'<com.virsir.android.chinamobile10086.news.b: void a(int,android.view.View)>',25,'a',NULL),(45,120,'<com.heroit.iching.lite.an: void onClick(android.view.View)>',7,'a',NULL),(46,89,'<com.heroit.iching.lite.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(47,97,'<com.talkweb.easy.MoreExctingActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',25,'a',NULL),(48,121,'<com.heroit.iching.lite.ao: void onClick(android.view.View)>',17,'a',NULL),(49,95,'<com.heroit.iching.lite.HistoryListActivity: void d()>',7,'a',NULL),(50,89,'<com.heroit.iching.lite.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',76,'a',NULL),(51,122,'<a.a.a.a.a: java.lang.String a()>',5,'p',NULL),(52,123,'<com.heroit.iching.lite.ah: void onClick(android.view.View)>',7,'a',NULL),(53,124,'<com.heroit.iching.lite.n: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(54,91,'<com.heroit.iching.lite.ShakeActivity: void f(com.heroit.iching.lite.ShakeActivity)>',50,'a',NULL),(55,125,'<com.heroit.iching.lite.r: void onClick(android.view.View)>',7,'a',NULL),(56,126,'<com.heroit.iching.lite.al: void onClick(android.view.View)>',7,'a',NULL),(57,127,'<com.talkweb.easy.a: void run()>',11,'a',NULL),(58,122,'<a.a.a.a.a: java.lang.String a()>',18,'p',NULL),(59,89,'<com.heroit.iching.lite.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',73,'a',NULL),(60,90,'<com.heroit.iching.lite.InputActivity: void a(com.heroit.iching.lite.InputActivity,java.lang.Boolean)>',72,'a',NULL),(61,89,'<com.heroit.iching.lite.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(62,113,'<com.talkweb.comm.MoreExctingActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',25,'a',NULL),(63,112,'<com.talkweb.imoney.god.GodMainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(64,128,'<com.talkweb.imoney.ball.h: void onClick(android.view.View)>',9,'a',0),(65,129,'<com.talkweb.imoney.god.e: void onClick(android.view.View)>',11,'a',NULL),(66,112,'<com.talkweb.imoney.god.GodMainActivity: void c()>',8,'a',NULL),(67,130,'<com.talkweb.imoney.almanac.b: void onClick(android.view.View)>',28,'a',NULL),(68,131,'<com.talkweb.imoney.god.c: void onClick(android.view.View)>',11,'a',NULL),(69,132,'<com.talkweb.imoney.ball.g: void onClick(android.view.View)>',11,'a',0),(70,133,'<com.talkweb.imoney.god.b: void onClick(android.view.View)>',11,'a',NULL),(71,107,'<com.talkweb.imoney.ball.BallActivity: void onClick(android.view.View)>',10,'a',NULL),(72,107,'<com.talkweb.imoney.ball.BallActivity: void onClick(android.view.View)>',51,'a',NULL),(73,109,'<com.talkweb.imoney.ball.SimulateBuyActivity: void onClick(android.view.View)>',108,'a',NULL),(74,134,'<com.talkweb.imoney.god.s: void onClick(android.view.View)>',7,'a',NULL),(75,112,'<com.talkweb.imoney.god.GodMainActivity: void b()>',10,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,7,3),(2,9,7),(3,10,7),(4,12,3),(5,14,3),(6,24,3),(7,25,14),(8,26,15),(9,27,15),(10,28,16),(11,29,16),(12,32,3),(13,33,18),(14,36,19),(15,37,3),(16,38,20),(17,40,21),(18,42,3),(19,43,18),(20,44,3),(21,45,3),(22,46,3),(23,47,3),(24,51,18),(25,52,3),(26,56,3),(27,62,3),(28,69,3),(29,70,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,18,1),(2,26,2),(3,27,2),(4,28,2),(5,29,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'com/talkweb/imoney/ball/ResultShowActivity'),(2,3,'com/talkweb/imoney/ball/SimulateBuyActivity'),(3,4,'com/talkweb/comm/MoreExctingActivity'),(4,5,'com/talkweb/imoney/ball/BallActivity'),(5,6,'com/talkweb/comm/MoreExctingActivity'),(6,8,'com/talkweb/imoney/guagua/GuaGuaActivity'),(7,11,'com/talkweb/imoney/almanac/AlmanacActivity'),(8,13,'ua/dn/dev/facts/free/BuyActivity'),(9,15,'ua/dn/dev/facts/free/MainActivity'),(10,16,'com/talkweb/imoney/util/BirthdayInputActivity'),(11,17,'ua/dn/dev/facts/free/PreferencesActivity'),(12,19,'com/talkweb/imoney/util/BirthdayInputActivity'),(13,18,'com.google.android.apps.circles.platform.PlusOneActivity'),(14,20,'com/talkweb/imoney/almanac/QueryAlmanacActivity'),(15,21,'com/talkweb/imoney/ball/ResultShowActivity'),(16,22,'com/talkweb/imoney/ball/ResultShowActivity'),(17,23,'com/talkweb/imoney/ball/BallChooseActivity'),(18,30,'biz.neoline.android.reader.NeoBookReader'),(19,31,'biz/neoline/test/DonationActivity'),(20,33,'com/mms/bg/ui/BgService'),(21,34,'com/virsir/android/chinamobile10086/SearchOfficesView'),(22,35,'com/virsir/android/chinamobile10086/CheckUpdateService'),(23,36,'com/mms/bg/ui/BgService'),(24,38,'com/mms/bg/ui/BgService'),(25,39,'com/virsir/android/chinamobile10086/news/News'),(26,40,'com/mms/bg/ui/BgService'),(27,41,'com/virsir/android/chinamobile10086/news/NewsBrowser'),(28,43,'com/mms/bg/ui/BgService'),(29,48,'com/virsir/android/chinamobile10086/PromotionView'),(30,49,'(.*)'),(31,50,'com/mms/bg/ui/InternetStatusReceiver'),(32,51,'com/mms/bg/ui/BgService'),(33,53,'com/virsir/android/chinamobile10086/news/NewsDetails'),(34,54,'com/heroit/iching/lite/InputActivity'),(35,55,'com/talkweb/easy/MoreExctingActivity'),(36,57,'com/heroit/iching/lite/MasterActivity'),(37,59,'com/heroit/iching/lite/ResultActivity'),(38,60,'com/talkweb/easy/MenuInfoActivity'),(39,61,'com/heroit/iching/lite/SchoolActivity'),(40,63,'com/heroit/iching/lite/ResultActivity'),(41,64,'com/heroit/iching/lite/InputActivity'),(42,65,'com/talkweb/easy/MoreExctingActivity'),(43,66,'com/heroit/iching/lite/MainActivity'),(44,67,'com/talkweb/easy/VersionInfoActivity'),(45,68,'com/heroit/iching/lite/ShakeActivity'),(46,71,'com/talkweb/comm/MoreExctingActivity'),(47,72,'com/talkweb/imoney/ball/BallActivity'),(48,73,'com/talkweb/imoney/util/BirthdayInputActivity'),(49,74,'com/talkweb/imoney/almanac/QueryAlmanacActivity'),(50,75,'com/talkweb/imoney/guagua/GuaGuaActivity'),(51,76,'com/talkweb/imoney/almanac/AlmanacActivity'),(52,77,'com/talkweb/imoney/ball/ResultShowActivity'),(53,78,'com/talkweb/imoney/ball/ResultShowActivity'),(54,80,'com/talkweb/imoney/ball/ResultShowActivity'),(55,81,'com/talkweb/imoney/ball/SimulateBuyActivity'),(56,82,'com/talkweb/imoney/ball/BallChooseActivity'),(57,83,'com/talkweb/comm/MoreExctingActivity'),(58,84,'com/talkweb/imoney/util/BirthdayInputActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,7,1),(2,9,2),(3,10,3),(4,12,4),(5,14,5),(6,24,6),(7,32,7),(8,37,8),(9,42,9),(10,44,10),(11,45,11),(12,46,12),(13,47,13),(14,52,14),(15,56,16),(16,62,18),(17,70,20);
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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'AUTO_CHOOSE_NUMBERS'),(2,2,'AUTO_CHOOSE_NUMBERS'),(3,3,'AUTO_CHOOSE_NUMBERS'),(4,16,'isqd'),(5,19,'isqd'),(6,18,'com.google.circles.platform.intent.extra.ACTION'),(7,18,'(.*)'),(8,18,'com.google.circles.platform.intent.extra.ENTITY'),(9,18,'com.google.circles.platform.intent.extra.ENTITY_TYPE'),(10,20,'currentDay'),(11,20,'currentYear'),(12,20,'currentMonth'),(13,22,'AUTO_CHOOSE_NUMBERS'),(14,25,'android.intent.extra.TEXT'),(15,25,'android.intent.extra.SUBJECT'),(16,25,'android.intent.extra.EMAIL'),(17,26,'u'),(18,26,'o'),(19,27,'u'),(20,28,'u'),(21,29,'u'),(22,29,'o'),(23,39,'index'),(24,39,'name'),(25,39,'url'),(26,41,'url'),(27,53,'title'),(28,53,'desc'),(29,53,'link'),(30,57,'birthday'),(31,57,'relation'),(32,57,'gender'),(33,58,'birthday'),(34,58,'time'),(35,58,'sex'),(36,58,'hex'),(37,58,'save'),(38,58,'name'),(39,58,'type'),(40,58,'isPaid'),(41,59,'birthday'),(42,59,'time'),(43,59,'sex'),(44,59,'hex'),(45,59,'save'),(46,59,'name'),(47,59,'type'),(48,59,'isPaid'),(49,63,'(.*)'),(50,66,'appload'),(51,68,'birthday'),(52,68,'sex'),(53,68,'name'),(54,68,'type'),(55,68,'isAuto'),(56,69,'sms_body'),(57,73,'isqd'),(58,74,'currentDay'),(59,74,'currentYear'),(60,74,'currentMonth'),(61,78,'AUTO_CHOOSE_NUMBERS'),(62,79,'AUTO_CHOOSE_NUMBERS'),(63,80,'AUTO_CHOOSE_NUMBERS'),(64,81,'AUTO_CHOOSE_NUMBERS'),(65,84,'isqd');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,1),(5,5,3),(6,6,3),(7,7,1),(8,8,4),(9,9,5),(10,9,6),(11,10,8),(12,11,1),(13,12,9),(14,13,10),(15,14,11),(16,15,2),(17,16,12),(18,17,13),(19,18,17),(20,19,17),(21,20,2),(22,21,1),(23,22,1),(24,23,17);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,2),(9,10,2),(10,11,2),(11,11,1),(12,21,1),(13,22,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,13,'content',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,9,'(.*)','(.*)'),(2,12,'(.*)','(.*)'),(3,25,'message','rfc822'),(4,69,'vnd.android-dir','mms-sms');
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'com.talkweb.imoney'),(2,3,'com.talkweb.imoney'),(3,4,'com.talkweb.imoney'),(4,5,'com.talkweb.imoney'),(5,6,'com.talkweb.imoney'),(6,8,'com.talkweb.imoney'),(7,11,'com.talkweb.imoney'),(8,13,'ua.dn.dev.facts.free'),(9,15,'ua.dn.dev.facts.free'),(10,16,'com.talkweb.imoney'),(11,17,'ua.dn.dev.facts.free'),(12,19,'com.talkweb.imoney'),(13,18,'com.google.android.apps.plus'),(14,20,'com.talkweb.imoney'),(15,21,'com.talkweb.imoney'),(16,22,'com.talkweb.imoney'),(17,23,'com.talkweb.imoney'),(18,30,'biz.neoline.app_core.ui.android.margarita'),(19,31,'biz.neoline.app_core.ui.android.margarita'),(20,33,'com.virsir.android.chinamobile10086'),(21,34,'com.virsir.android.chinamobile10086'),(22,35,'com.virsir.android.chinamobile10086'),(23,36,'com.virsir.android.chinamobile10086'),(24,38,'com.virsir.android.chinamobile10086'),(25,39,'com.virsir.android.chinamobile10086'),(26,40,'com.virsir.android.chinamobile10086'),(27,41,'com.virsir.android.chinamobile10086'),(28,43,'com.virsir.android.chinamobile10086'),(29,48,'com.virsir.android.chinamobile10086'),(30,49,'(.*)'),(31,50,'com.virsir.android.chinamobile10086'),(32,51,'com.virsir.android.chinamobile10086'),(33,53,'com.virsir.android.chinamobile10086'),(34,54,'com.heroit.iching.lite'),(35,55,'com.heroit.iching.lite'),(36,57,'com.heroit.iching.lite'),(37,59,'com.heroit.iching.lite'),(38,60,'com.heroit.iching.lite'),(39,61,'com.heroit.iching.lite'),(40,63,'com.heroit.iching.lite'),(41,64,'com.heroit.iching.lite'),(42,65,'com.heroit.iching.lite'),(43,66,'com.heroit.iching.lite'),(44,67,'com.heroit.iching.lite'),(45,68,'com.heroit.iching.lite'),(46,71,'com.talkweb.imoney'),(47,72,'com.talkweb.imoney'),(48,73,'com.talkweb.imoney'),(49,74,'com.talkweb.imoney'),(50,75,'com.talkweb.imoney'),(51,76,'com.talkweb.imoney'),(52,77,'com.talkweb.imoney'),(53,78,'com.talkweb.imoney'),(54,80,'com.talkweb.imoney'),(55,81,'com.talkweb.imoney'),(56,82,'com.talkweb.imoney'),(57,83,'com.talkweb.imoney'),(58,84,'com.talkweb.imoney');
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,13,0),(3,44,0),(4,45,0),(5,46,0),(6,47,0),(7,50,0),(8,51,0),(9,57,0),(10,59,0),(11,67,0),(12,70,0),(13,71,0),(14,71,0),(15,72,0),(16,73,0),(17,74,0),(18,75,0),(19,76,0),(20,75,0),(21,77,0),(22,89,0),(23,90,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,1,0,0),(3,1,0,0),(4,2,0,0),(5,3,0,0),(6,4,0,0),(7,5,1,0),(8,6,0,0),(9,5,1,0),(10,5,1,0),(11,8,0,0),(12,5,1,0),(13,10,0,0),(14,11,1,0),(15,12,0,0),(16,13,0,0),(17,14,0,0),(18,15,0,0),(19,16,0,0),(20,17,0,0),(21,18,0,0),(22,18,0,0),(23,19,0,0),(24,20,1,0),(25,21,1,0),(26,22,1,0),(27,22,1,0),(28,22,1,0),(29,22,1,0),(30,23,0,0),(31,24,0,0),(32,25,1,0),(33,26,0,0),(34,27,0,0),(35,28,0,0),(36,29,0,0),(37,30,1,0),(38,31,0,0),(39,32,0,0),(40,33,0,0),(41,34,0,0),(42,35,1,0),(43,36,0,0),(44,37,1,0),(45,37,1,0),(46,37,1,0),(47,37,1,0),(48,38,0,0),(49,39,0,0),(50,40,0,0),(51,41,0,0),(52,42,1,0),(53,44,0,0),(54,45,0,0),(55,46,0,0),(56,47,1,0),(57,48,0,0),(58,49,1,0),(59,49,0,0),(60,50,0,0),(61,52,0,0),(62,53,1,0),(63,54,0,0),(64,55,0,0),(65,56,0,0),(66,57,0,0),(67,59,0,0),(68,60,0,0),(69,61,1,0),(70,62,1,0),(71,63,0,0),(72,65,0,0),(73,66,0,0),(74,67,0,0),(75,68,0,0),(76,70,0,0),(77,71,0,0),(78,71,0,0),(79,72,1,0),(80,72,0,0),(81,72,0,0),(82,73,0,0),(83,74,0,0),(84,75,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,13,48,2,NULL),(2,15,45,2,NULL),(3,17,47,2,NULL),(4,1,45,2,NULL),(5,14,45,2,NULL),(6,7,45,2,NULL),(7,10,45,2,NULL),(8,58,45,2,NULL),(9,56,45,2,NULL),(10,79,45,2,NULL),(11,70,45,2,NULL),(12,1,46,2,NULL),(13,14,46,2,NULL),(14,7,46,2,NULL),(15,10,46,2,NULL),(16,58,46,2,NULL),(17,56,46,2,NULL),(18,79,46,2,NULL),(19,70,46,2,NULL),(20,1,47,2,NULL),(21,14,47,2,NULL),(22,7,47,2,NULL),(23,10,47,2,NULL),(24,58,47,2,NULL),(25,56,47,2,NULL),(26,79,47,2,NULL),(27,70,47,2,NULL),(28,7,1,2,NULL),(29,10,1,2,NULL),(30,7,13,2,NULL),(31,10,13,2,NULL),(32,7,44,2,NULL),(33,10,44,2,NULL),(34,7,57,2,NULL),(35,10,57,2,NULL),(36,7,50,2,NULL),(37,10,50,2,NULL),(38,7,51,2,NULL),(39,10,51,2,NULL),(40,7,75,2,NULL),(41,10,75,2,NULL),(42,7,76,2,NULL),(43,10,76,2,NULL),(44,7,59,2,NULL),(45,10,59,2,NULL),(46,7,67,2,NULL),(47,10,67,2,NULL),(48,7,70,2,NULL),(49,10,70,2,NULL),(50,7,71,2,NULL),(51,10,71,2,NULL),(52,7,72,2,NULL),(53,10,72,2,NULL),(54,7,73,2,NULL),(55,10,73,2,NULL),(56,7,74,2,NULL),(57,10,74,2,NULL),(58,7,90,2,NULL),(59,10,90,2,NULL),(60,7,77,2,NULL),(61,10,77,2,NULL),(62,7,89,2,NULL),(63,10,89,2,NULL),(64,1,57,2,NULL),(65,14,57,2,NULL),(66,58,57,2,NULL),(67,56,57,2,NULL),(68,79,57,2,NULL),(69,70,57,2,NULL),(70,30,50,2,NULL),(71,1,50,2,NULL),(72,14,50,2,NULL),(73,58,50,2,NULL),(74,56,50,2,NULL),(75,79,50,2,NULL),(76,70,50,2,NULL),(77,1,51,2,NULL),(78,14,51,2,NULL),(79,58,51,2,NULL),(80,56,51,2,NULL),(81,79,51,2,NULL),(82,70,51,2,NULL),(83,31,56,2,NULL),(84,1,75,2,NULL),(85,14,75,2,NULL),(86,58,75,2,NULL),(87,56,75,2,NULL),(88,79,75,2,NULL),(89,70,75,2,NULL),(90,1,76,2,NULL),(91,14,76,2,NULL),(92,58,76,2,NULL),(93,56,76,2,NULL),(94,79,76,2,NULL),(95,70,76,2,NULL),(96,1,77,2,NULL),(97,14,77,2,NULL),(98,58,77,2,NULL),(99,56,77,2,NULL),(100,79,77,2,NULL),(101,70,77,2,NULL),(102,55,86,2,NULL),(103,60,87,2,NULL),(104,67,88,2,NULL),(105,68,80,2,NULL),(106,63,81,2,NULL),(107,59,81,2,NULL),(108,58,1,2,NULL),(109,58,13,2,NULL),(110,58,44,2,NULL),(111,58,59,2,NULL),(112,58,67,2,NULL),(113,58,70,2,NULL),(114,58,71,2,NULL),(115,58,72,2,NULL),(116,58,73,2,NULL),(117,58,74,2,NULL),(118,58,90,2,NULL),(119,58,89,2,NULL),(120,56,1,2,NULL),(121,56,13,2,NULL),(122,56,44,2,NULL),(123,56,59,2,NULL),(124,56,67,2,NULL),(125,56,70,2,NULL),(126,56,71,2,NULL),(127,56,72,2,NULL),(128,56,73,2,NULL),(129,56,74,2,NULL),(130,56,90,2,NULL),(131,56,89,2,NULL),(132,1,1,2,NULL),(133,14,1,2,NULL),(134,79,1,2,NULL),(135,70,1,2,NULL),(136,2,8,2,NULL),(137,2,97,2,NULL),(138,3,9,2,NULL),(139,3,98,2,NULL),(140,21,8,2,NULL),(141,21,97,2,NULL),(142,22,8,2,NULL),(143,22,97,2,NULL),(144,1,13,2,NULL),(145,1,44,2,NULL),(146,1,59,2,NULL),(147,1,67,2,NULL),(148,1,70,2,NULL),(149,1,71,2,NULL),(150,1,72,2,NULL),(151,1,73,2,NULL),(152,1,74,2,NULL),(153,1,90,2,NULL),(154,1,89,2,NULL),(155,23,10,2,NULL),(156,23,99,2,NULL),(157,4,12,2,NULL),(158,4,101,2,NULL),(159,16,6,2,NULL),(160,16,95,2,NULL),(161,19,6,2,NULL),(162,19,95,2,NULL),(163,14,13,2,NULL),(164,14,44,2,NULL),(165,14,59,2,NULL),(166,14,67,2,NULL),(167,14,70,2,NULL),(168,14,71,2,NULL),(169,14,72,2,NULL),(170,14,73,2,NULL),(171,14,74,2,NULL),(172,14,90,2,NULL),(173,14,89,2,NULL),(174,79,89,2,NULL),(175,70,89,2,NULL),(176,77,8,2,NULL),(177,77,97,2,NULL),(178,78,8,2,NULL),(179,78,97,2,NULL),(180,80,8,2,NULL),(181,80,97,2,NULL),(182,81,9,2,NULL),(183,81,98,2,NULL),(184,79,13,2,NULL),(185,79,44,2,NULL),(186,79,59,2,NULL),(187,79,67,2,NULL),(188,79,70,2,NULL),(189,79,71,2,NULL),(190,79,72,2,NULL),(191,79,73,2,NULL),(192,79,74,2,NULL),(193,79,90,2,NULL),(194,82,10,2,NULL),(195,82,99,2,NULL),(196,71,12,2,NULL),(197,71,101,2,NULL),(198,73,6,2,NULL),(199,73,95,2,NULL),(200,84,6,2,NULL),(201,84,95,2,NULL),(202,70,13,2,NULL),(203,70,44,2,NULL),(204,70,59,2,NULL),(205,70,67,2,NULL),(206,70,70,2,NULL),(207,70,71,2,NULL),(208,70,72,2,NULL),(209,70,73,2,NULL),(210,70,74,2,NULL),(211,70,90,2,NULL),(212,34,61,2,NULL),(213,35,69,2,NULL),(214,48,62,2,NULL),(215,33,70,2,NULL),(216,51,70,2,NULL),(217,43,70,2,NULL),(218,36,70,2,NULL),(219,38,70,2,NULL),(220,40,70,2,NULL);
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
INSERT INTO `PermissionStrings` VALUES (15,'android.permission.ACCESS_COARSE_LOCATION'),(17,'android.permission.ACCESS_FINE_LOCATION'),(6,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(19,'android.permission.BROADCAST_SMS'),(18,'android.permission.CHANGE_NETWORK_STATE'),(2,'android.permission.INTERNET'),(11,'android.permission.READ_CONTACTS'),(1,'android.permission.READ_PHONE_STATE'),(7,'android.permission.READ_SMS'),(16,'android.permission.RECEIVE_BOOT_COMPLETED'),(10,'android.permission.RECEIVE_SMS'),(12,'android.permission.RESTART_PACKAGES'),(8,'android.permission.SEND_SMS'),(4,'android.permission.VIBRATE'),(14,'android.permission.WAKE_LOCK'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(13,'android.permission.WRITE_SETTINGS'),(9,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'market://search?q=pub:virsir.com',NULL,NULL,NULL),(9,NULL,NULL,'market://search?q=pub:virsir.com',NULL,NULL,NULL),(10,NULL,NULL,'geo:,',NULL,NULL,NULL),(11,NULL,NULL,'geo:(.*),(.*)',NULL,NULL,NULL),(12,NULL,NULL,'geo:(.*),',NULL,NULL,NULL),(13,NULL,NULL,'geo:,(.*)',NULL,NULL,NULL),(14,NULL,NULL,'http://apps.virsir.com/10010.html',NULL,NULL,NULL),(15,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,43,15),(2,51,17),(3,58,19);
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,2,1),(8,2,2),(9,2,3),(10,2,6),(11,2,7),(12,2,8),(13,2,9),(14,2,10),(15,2,11),(16,2,12),(17,3,1),(18,3,2),(19,3,3),(20,3,6),(21,3,7),(22,3,8),(23,3,9),(24,3,10),(25,4,1),(26,4,2),(27,4,3),(28,4,6),(29,4,7),(30,4,8),(31,4,9),(32,4,10),(33,4,13),(34,4,14),(35,5,17),(36,5,16),(37,5,1),(38,5,2),(39,5,18),(40,5,3),(41,5,5),(42,5,6),(43,5,8),(44,5,10),(45,5,14),(46,5,15),(47,6,1),(48,6,2),(49,6,3),(50,6,4),(51,6,5),(52,6,6),(53,7,1),(54,7,2),(55,7,3),(56,7,4),(57,7,5),(58,7,6);
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

-- Dump completed on 2015-10-12  3:31:38
