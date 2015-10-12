-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_742
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (2,'android.appwidget.action.APPWIDGET_CONFIGURE'),(9,'android.appwidget.action.APPWIDGET_UPDATE'),(12,'android.intent.action.CALL'),(1,'android.intent.action.MAIN'),(11,'android.intent.action.VIEW'),(4,'com.talkweb.kaiyund.service.lightmusic'),(3,'com.talkweb.kaiyund.service.startmusic'),(10,'widget.update'),(8,'widget.update.date.changed'),(5,'widget.update.time.changed'),(7,'widget.update.time.tick'),(6,'widget.update.timezone.changed');
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
INSERT INTO `Applications` VALUES (1,'com.talkweb.imoney',5),(2,'com.KaiYunD',1),(3,'com.talkweb.ycya',8),(4,'com.go108.lic.free',1),(5,'com.talkweb.ycya.free',1),(6,'com.go108.lovecome',5);
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
INSERT INTO `CategoryStrings` VALUES (1,'android.intent.category.LAUNCHER'),(2,'android.intent.category.default');
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
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.talkweb.imoney.LoadMain'),(2,1,'com.talkweb.imoney.almanac.AlmanacActivity'),(3,1,'com.talkweb.imoney.almanac.QueryAlmanacActivity'),(4,1,'com.talkweb.imoney.almanac.TodayAlmanacActivity'),(5,1,'com.talkweb.imoney.guagua.GuaGuaActivity'),(6,1,'com.talkweb.imoney.util.BirthdayInputActivity'),(7,1,'com.talkweb.imoney.ball.BallActivity'),(8,1,'com.talkweb.imoney.ball.ResultShowActivity'),(9,1,'com.talkweb.imoney.ball.SimulateBuyActivity'),(10,1,'com.talkweb.imoney.ball.BallChooseActivity'),(11,1,'com.talkweb.imoney.god.GodMainActivity'),(12,1,'com.talkweb.comm.MoreExctingActivity'),(13,2,'com.talkweb.kaiyund.KaiYunD'),(14,2,'com.talkweb.kaiyund.light.start.StartActivity'),(15,2,'com.talkweb.kaiyund.light.start.UserInfoInputActivity'),(16,2,'com.talkweb.kaiyund.light.start.WishActivity'),(17,2,'com.talkweb.kaiyund.light.YyActivity'),(18,2,'com.talkweb.kaiyund.light.ScActivity'),(19,2,'com.talkweb.kaiyund.light.SyActivity'),(20,2,'com.talkweb.kaiyund.light.ZcActivity'),(21,2,'com.talkweb.kaiyund.light.menu.ModifyUserinfoActivity'),(22,2,'com.talkweb.kaiyund.light.menu.FeedbackActivity'),(23,2,'com.talkweb.kaiyund.light.menu.AboutActivity'),(24,2,'com.talkweb.kaiyund.light.menu.ManageWishActivity'),(25,2,'com.talkweb.kaiyund.cs.mzzd.TDMSActivity'),(26,2,'com.talkweb.kaiyund.cs.mzzd.XMXXActivity'),(27,2,'com.talkweb.kaiyund.cs.mzzd.XAGDActivity'),(28,2,'com.talkweb.kaiyund.cs.mzzd.CCTRActivity'),(29,2,'com.talkweb.kaiyund.cs.mzzd.ContactActivity'),(30,2,'com.talkweb.kaiyund.cs.csActivity'),(31,2,'com.talkweb.kaiyund.cs.mzzd.MZZDTabActivity'),(32,2,'com.talkweb.kaiyund.cs.xzys.XZYSTabActivity'),(33,2,'com.talkweb.kaiyund.cs.xzys.DayActivity'),(34,2,'com.talkweb.kaiyund.cs.xzys.WeekActivity'),(35,2,'com.talkweb.kaiyund.cs.xzys.MonthActivity'),(36,2,'com.talkweb.kaiyund.cs.xzys.CCTRActivity'),(37,2,'com.talkweb.kaiyund.cs.wtxd.WTXDSelectActivity'),(38,2,'com.talkweb.kaiyund.cs.wtxd.WTXDTabActivity'),(39,2,'com.talkweb.kaiyund.cs.wtxd.XZPDActivity'),(40,2,'com.talkweb.kaiyund.cs.wtxd.WDZXActivity'),(41,2,'com.talkweb.kaiyund.cs.wtxd.JGLYActivity'),(42,2,'com.talkweb.kaiyund.cs.wtxd.CCTRActivity'),(43,2,'com.talkweb.kaiyund.cs.ygzb.YgzbIndexActivity'),(44,2,'com.talkweb.kaiyund.cs.ygzb.YgzbInputActivity'),(45,2,'com.talkweb.kaiyund.cs.ygzb.YgzbBuguaActivity'),(46,2,'com.talkweb.kaiyund.cs.ygzb.YgzbResultActivity'),(47,2,'com.talkweb.kaiyund.cs.yhlq.YHLQ_FActivity'),(48,2,'com.talkweb.kaiyund.cs.yhlq.YHLQ_SActivity'),(49,2,'com.talkweb.kaiyund.cs.yhlq.YHLQ_TActivity'),(50,2,'com.talkweb.kaiyund.cs.yhlq.YHLQ_ResultActivity'),(51,2,'com.talkweb.kaiyund.cs.yhlq.YHLQ_DActivity'),(52,2,'com.talkweb.kaiyund.intro.IntroduceActivity'),(53,2,'com.talkweb.kaiyund.widget.WidgetConfig'),(54,2,'com.talkweb.kaiyund.light.service.StartMusicService'),(55,2,'com.talkweb.kaiyund.light.service.LightMusicService'),(56,2,'com.talkweb.kaiyund.light.service.LightOnMediaService'),(57,2,'com.talkweb.kaiyund.widget.WidgetServiceUpdateByDate'),(58,2,'com.talkweb.kaiyund.widget.WidgetProvider'),(59,2,'com.talkweb.kaiyund.widget.ServiceReceiver'),(60,1,'com.talkweb.imoney.ball.g'),(61,1,'com.talkweb.imoney.god.b'),(62,1,'com.talkweb.imoney.god.c'),(63,1,'com.talkweb.imoney.almanac.b'),(64,1,'com.talkweb.imoney.god.s'),(65,1,'com.talkweb.imoney.ball.h'),(66,1,'com.talkweb.imoney.god.e'),(67,3,'com.talkweb.ycya.LoginActivity'),(68,3,'com.talkweb.main.MainActivity'),(69,3,'com.talkweb.mzzd.MzzdActivity'),(70,3,'com.talkweb.mzzd.MzzdFreeResultActivity'),(71,3,'com.talkweb.mzzd.MzzdChargeResultActivity'),(72,3,'com.talkweb.xzpd.XzpdActivity'),(73,3,'com.talkweb.xzpd.XzpdXzxzActivity'),(74,3,'com.talkweb.xzpd.XzpdFreeResultActivity'),(75,3,'com.talkweb.xzpd.XzpdChargeResultActivity'),(76,3,'com.talkweb.xzpd.XzpdForbiddenParadiseActivity'),(77,3,'com.talkweb.xzpd.XzpdPersueSecretsActivity'),(78,3,'com.talkweb.yhlq.YhlqActivity'),(79,3,'com.talkweb.yhlq.InputActivity'),(80,3,'com.talkweb.qrmj.QrmjActivity'),(81,3,'com.talkweb.qrmj.QrmjResultActivity'),(82,3,'com.talkweb.mzzd.ContactActivity'),(83,3,'com.talkweb.menu.MenuActivity'),(84,3,'com.talkweb.menu.FavoriteListActivity'),(85,3,'com.talkweb.menu.FavoriteRequestActivity'),(86,3,'com.talkweb.menu.HelpActivity'),(87,3,'com.talkweb.menu.UpdateActivity'),(88,3,'com.talkweb.menu.CompanyIntroActivity'),(89,3,'com.talkweb.menu.WebIntroActivity'),(90,3,'com.talkweb.menu.WapIntroActivity'),(91,3,'com.talkweb.mzzd.MzzdQueryResultActivity'),(92,3,'com.talkweb.yhlq.YaoQianActivity'),(93,3,'com.talkweb.yhlq.CqProcessActivity'),(94,3,'com.talkweb.yhlq.ZhiJiaoActivity'),(95,3,'com.talkweb.yhlq.QianResultActivity'),(96,3,'com.talkweb.xzpd.XzpdRequestChargeResultActivity'),(97,3,'com.talkweb.xzpd.XzpdRequestPersueSecretsActivity'),(98,3,'com.talkweb.xzpd.XzpdRequestForbiddenParadiseActivity'),(99,3,'com.heroit.tzuwei.lite.MoreExctingActivity'),(100,3,'com.talkweb.xqys.XqysInputActivity'),(101,3,'com.talkweb.xqys.XqysResultActivity'),(102,3,'com.talkweb.xqys.XqysMoreResultActivity'),(103,4,'com.go108.lic.free.StartupActivity'),(104,4,'com.go108.lic.free.InputActivity'),(105,4,'com.go108.lic.free.MainActivity'),(106,4,'com.go108.lic.free.PersonModifyActivity'),(107,4,'com.go108.lic.free.MoreExctingActivity'),(108,4,'com.go108.lic.free.menu.FeedbackActivity'),(109,4,'com.go108.lic.free.menu.AboutActivity'),(110,4,'com.go108.lic.free.menu.HelpActivity'),(111,4,'com.go108.lic.free.menu.SiteDescActivity'),(112,4,'com.go108.lic.free.util.DownloadFileService'),(113,5,'com.talkweb.ycya.LoginActivity'),(114,5,'com.talkweb.main.MainActivity'),(115,5,'com.talkweb.mzzd.MzzdActivity'),(116,5,'com.talkweb.mzzd.MzzdFreeResultActivity'),(117,5,'com.talkweb.comm.MoreExctingActivity'),(118,5,'com.talkweb.mzzd.MzzdChargeResultActivity'),(119,5,'com.talkweb.xzpd.XzpdActivity'),(120,5,'com.talkweb.xzpd.XzpdXzxzActivity'),(121,5,'com.talkweb.xzpd.XzpdFreeResultActivity'),(122,5,'com.talkweb.xzpd.XzpdChargeResultActivity'),(123,5,'com.talkweb.xzpd.XzpdForbiddenParadiseActivity'),(124,5,'com.talkweb.xzpd.XzpdPersueSecretsActivity'),(125,5,'com.talkweb.yhlq.YhlqActivity'),(126,5,'com.talkweb.qrmj.QrmjActivity'),(127,5,'com.talkweb.qrmj.QrmjResultActivity'),(128,5,'com.talkweb.mzzd.ContactActivity'),(129,5,'com.talkweb.menu.MenuActivity'),(130,5,'com.talkweb.menu.FavoriteListActivity'),(131,5,'com.talkweb.menu.FavoriteRequestActivity'),(132,5,'com.talkweb.menu.HelpActivity'),(133,5,'com.talkweb.menu.UpdateActivity'),(134,5,'com.talkweb.menu.CompanyIntroActivity'),(135,5,'com.talkweb.menu.WebIntroActivity'),(136,5,'com.talkweb.menu.WapIntroActivity'),(137,5,'com.talkweb.mzzd.MzzdQueryResultActivity'),(138,5,'com.talkweb.yhlq.YaoQianActivity'),(139,5,'com.talkweb.yhlq.CqProcessActivity'),(140,5,'com.talkweb.yhlq.ZhiJiaoActivity'),(141,5,'com.talkweb.yhlq.QianResultActivity'),(142,5,'com.talkweb.xzpd.XzpdRequestChargeResultActivity'),(143,5,'com.talkweb.xzpd.XzpdRequestPersueSecretsActivity'),(144,5,'com.talkweb.xzpd.XzpdRequestForbiddenParadiseActivity'),(145,5,'com.talkweb.comm.WebViewActivity'),(146,4,'com.go108.lic.free.StartupActivity$2'),(147,4,'com.go108.lic.free.util.APNOpera'),(148,6,'com.go108.lovecome.StartupActivity'),(149,6,'com.go108.lovecome.InputActivity'),(150,6,'com.go108.lovecome.MainActivity'),(151,6,'com.go108.lovecome.PersonModifyActivity'),(152,6,'com.go108.lovecome.SingleInputActivity'),(153,6,'com.go108.lovecome.SingleResultActivity'),(154,6,'com.go108.lovecome.LovingInputActivity'),(155,6,'com.go108.lovecome.LovingResultActivity'),(156,6,'com.go108.lovecome.FavoritesReviewActivity'),(157,6,'com.go108.lovecome.menu.FeedbackActivity'),(158,6,'com.go108.lovecome.menu.ShareActivity'),(159,6,'com.go108.lovecome.menu.FavoritesListActivity'),(160,6,'com.go108.lovecome.menu.AboutActivity'),(161,6,'com.go108.lovecome.menu.HelpActivity'),(162,6,'com.go108.lovecome.menu.SiteDescActivity'),(163,4,'com.go108.lic.free.menu.AboutActivity$1'),(164,6,'com.go108.lovecome.QuitActivity'),(165,6,'com.go108.lovecome.MoreExctingActivity'),(166,6,'com.go108.lovecome.util.DownloadFileService'),(167,4,'com.go108.lic.free.MainActivity$2'),(168,6,'com.go108.lovecome.util.n'),(169,6,'com.go108.lovecome.a.s'),(170,6,'com.go108.lovecome.e'),(171,6,'com.go108.lovecome.a.a'),(172,6,'com.go108.lovecome.menu.f'),(173,5,'com.talkweb.ycya.LoginActivity$MyThread'),(174,5,'com.talkweb.yhlq.CqProcessActivity$1$1'),(175,5,'cn.com.go108.feecontrol.APNOpera'),(176,5,'com.talkweb.main.MainActivity$2'),(177,5,'com.talkweb.qrmj.QrmjResultActivity$1'),(178,5,'com.talkweb.net.APNOpera'),(179,5,'com.talkweb.xzpd.XzpdActivity$1'),(180,5,'com.talkweb.yhlq.YaoQianActivity$1$1'),(181,5,'com.talkweb.main.MainActivity$7'),(182,5,'com.talkweb.yhlq.YaoQianActivity$3'),(183,5,'com.talkweb.yhlq.YhlqActivity$1');
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
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,2,'APP_CHANNEL'),(2,8,'APP_CHANNEL'),(3,7,'APP_CHANNEL'),(4,11,'APP_CHANNEL'),(5,3,'APP_CHANNEL'),(6,9,'APP_CHANNEL'),(7,2,'year'),(8,9,'BallBeanChoice'),(9,3,'currentDay'),(10,11,'APP_NAME'),(11,2,'day'),(12,3,'currentYear'),(13,3,'currentMonth'),(14,2,'month'),(15,2,'AUTO_CHOOSE_NUMBERS'),(16,11,'AUTO_CHOOSE_NUMBERS'),(17,3,'AUTO_CHOOSE_NUMBERS'),(18,9,'AUTO_CHOOSE_NUMBERS'),(19,2,'APP_NAME'),(20,8,'APP_NAME'),(21,7,'APP_NAME'),(22,3,'APP_NAME'),(23,9,'APP_NAME'),(24,6,'isqd'),(25,96,'APP_CHANNEL'),(26,97,'APP_CHANNEL'),(27,98,'APP_CHANNEL'),(28,96,'APP_NAME'),(29,97,'APP_NAME'),(30,98,'APP_NAME'),(31,98,'readFlag'),(32,105,'path'),(33,99,'taId'),(34,99,'taTime'),(35,99,'myYear'),(36,101,'APP_NAME'),(37,99,'taName'),(38,99,'myTime'),(39,99,'myName'),(40,99,'taYear'),(41,99,'loveState'),(42,99,'myMonth'),(43,99,'modifyFlag'),(44,99,'taDay'),(45,99,'taGender'),(46,99,'myId'),(47,105,'productName'),(48,99,'myDay'),(49,99,'taMonth'),(50,99,'myGender'),(51,144,'singleName'),(52,146,'gender_2'),(53,142,'myGender'),(54,145,'myDay'),(55,142,'myId'),(56,142,'myName'),(57,142,'taMonth'),(58,146,'monthChoice'),(59,145,'taDay'),(60,142,'taDay'),(61,141,'APP_CHANNEL'),(62,146,'birthday_2'),(63,142,'myYear'),(64,142,'taName'),(65,145,'taYear'),(66,140,'APP_NAME'),(67,139,'APP_NAME'),(68,141,'APP_NAME'),(69,142,'taTime'),(70,145,'myYear'),(71,145,'myMonth'),(72,156,'productName'),(73,142,'loveState'),(74,144,'singleGender'),(75,156,'path'),(76,142,'myMonth'),(77,145,'myGender'),(78,148,'APP_NAME'),(79,147,'APP_NAME'),(80,144,'APP_NAME'),(81,146,'APP_NAME'),(82,142,'taGender'),(83,142,'myDay'),(84,145,'taGender'),(85,141,'readFlag'),(86,146,'gender_1'),(87,145,'taMonth'),(88,142,'taYear'),(89,146,'birthday_1'),(90,142,'myTime'),(91,147,'APP_CHANNEL'),(92,144,'APP_CHANNEL'),(93,146,'APP_CHANNEL'),(94,140,'APP_CHANNEL'),(95,139,'APP_CHANNEL'),(96,142,'taId'),(97,147,'productId'),(98,142,'modifyFlag'),(99,112,'starID'),(100,109,'isreturn'),(101,114,'male_xzID'),(102,118,'APP_CHANNEL'),(103,109,'APP_CHANNEL'),(104,112,'APP_CHANNEL'),(105,120,'APP_CHANNEL'),(106,134,'APP_CHANNEL'),(107,114,'APP_CHANNEL'),(108,119,'APP_CHANNEL'),(109,107,'APP_CHANNEL'),(110,108,'APP_CHANNEL'),(111,132,'APP_CHANNEL'),(112,134,'strArray'),(113,134,'str'),(114,114,'strArray');
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
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',1,NULL,NULL),(54,54,'s',1,NULL,NULL),(55,55,'s',1,NULL,NULL),(56,56,'s',0,NULL,NULL),(57,57,'s',0,NULL,NULL),(58,58,'r',1,NULL,NULL),(59,59,'r',1,NULL,NULL),(60,67,'a',1,NULL,NULL),(61,68,'a',0,NULL,NULL),(62,69,'a',0,NULL,NULL),(63,70,'a',0,NULL,NULL),(64,71,'a',0,NULL,NULL),(65,72,'a',0,NULL,NULL),(66,73,'a',0,NULL,NULL),(67,74,'a',0,NULL,NULL),(68,75,'a',0,NULL,NULL),(69,76,'a',0,NULL,NULL),(70,77,'a',0,NULL,NULL),(71,78,'a',0,NULL,NULL),(72,79,'a',0,NULL,NULL),(73,80,'a',0,NULL,NULL),(74,81,'a',0,NULL,NULL),(75,82,'a',0,NULL,NULL),(76,83,'a',0,NULL,NULL),(77,84,'a',0,NULL,NULL),(78,85,'a',0,NULL,NULL),(79,86,'a',0,NULL,NULL),(80,87,'a',0,NULL,NULL),(81,88,'a',0,NULL,NULL),(82,89,'a',0,NULL,NULL),(83,90,'a',0,NULL,NULL),(84,91,'a',0,NULL,NULL),(85,92,'a',0,NULL,NULL),(86,93,'a',0,NULL,NULL),(87,94,'a',0,NULL,NULL),(88,95,'a',0,NULL,NULL),(89,96,'a',0,NULL,NULL),(90,97,'a',0,NULL,NULL),(91,98,'a',0,NULL,NULL),(92,99,'a',0,NULL,NULL),(93,100,'a',0,NULL,NULL),(94,101,'a',0,NULL,NULL),(95,102,'a',0,NULL,NULL),(96,103,'a',1,NULL,NULL),(97,104,'a',0,NULL,NULL),(98,105,'a',0,NULL,NULL),(99,106,'a',0,NULL,NULL),(100,107,'a',0,NULL,NULL),(101,108,'a',0,NULL,NULL),(102,109,'a',0,NULL,NULL),(103,110,'a',0,NULL,NULL),(104,111,'a',0,NULL,NULL),(105,112,'s',0,NULL,NULL),(106,113,'a',1,NULL,NULL),(107,114,'a',0,NULL,NULL),(108,115,'a',0,NULL,NULL),(109,116,'a',0,NULL,NULL),(110,117,'a',0,NULL,NULL),(111,118,'a',0,NULL,NULL),(112,119,'a',0,NULL,NULL),(113,120,'a',0,NULL,NULL),(114,121,'a',0,NULL,NULL),(115,122,'a',0,NULL,NULL),(116,123,'a',0,NULL,NULL),(117,124,'a',0,NULL,NULL),(118,125,'a',0,NULL,NULL),(119,126,'a',0,NULL,NULL),(120,127,'a',0,NULL,NULL),(121,128,'a',0,NULL,NULL),(122,129,'a',0,NULL,NULL),(123,130,'a',0,NULL,NULL),(124,131,'a',0,NULL,NULL),(125,132,'a',0,NULL,NULL),(126,133,'a',0,NULL,NULL),(127,134,'a',0,NULL,NULL),(128,135,'a',0,NULL,NULL),(129,136,'a',0,NULL,NULL),(130,137,'a',0,NULL,NULL),(131,138,'a',0,NULL,NULL),(132,139,'a',0,NULL,NULL),(133,140,'a',0,NULL,NULL),(134,141,'a',0,NULL,NULL),(135,142,'a',0,NULL,NULL),(136,143,'a',0,NULL,NULL),(137,144,'a',0,NULL,NULL),(138,145,'a',0,NULL,NULL),(139,148,'a',1,NULL,NULL),(140,149,'a',0,NULL,NULL),(141,150,'a',0,NULL,NULL),(142,151,'a',0,NULL,NULL),(143,152,'a',0,NULL,NULL),(144,153,'a',0,NULL,NULL),(145,154,'a',0,NULL,NULL),(146,155,'a',0,NULL,NULL),(147,156,'a',0,NULL,NULL),(148,157,'a',0,NULL,NULL),(149,158,'a',0,NULL,NULL),(150,159,'a',0,NULL,NULL),(151,160,'a',0,NULL,NULL),(152,161,'a',0,NULL,NULL),(153,162,'a',0,NULL,NULL),(154,164,'a',0,NULL,NULL),(155,165,'a',0,NULL,NULL),(156,166,'s',0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=242 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,9),(2,1,11),(3,1,3),(4,1,2),(5,2,9),(6,2,11),(7,2,2),(8,2,3),(9,3,11),(10,3,2),(11,3,3),(12,3,9),(13,4,2),(14,4,11),(15,4,7),(16,4,9),(17,4,3),(18,5,12),(19,6,3),(20,6,2),(21,6,9),(22,6,11),(23,7,9),(24,7,7),(25,7,11),(26,7,2),(27,7,3),(28,8,11),(29,8,9),(30,8,2),(31,8,3),(32,9,11),(33,10,11),(34,10,9),(35,10,3),(36,10,2),(37,11,3),(38,11,2),(39,11,9),(40,11,11),(41,12,3),(42,12,9),(43,12,2),(44,12,11),(45,13,11),(46,13,9),(47,13,3),(48,13,2),(49,14,9),(50,14,11),(51,14,2),(52,14,3),(53,15,98),(54,15,97),(55,16,96),(56,17,101),(57,17,98),(58,18,98),(59,19,98),(60,20,98),(61,21,101),(62,21,98),(63,22,98),(64,23,98),(65,24,100),(66,24,98),(67,25,102),(68,25,98),(69,26,98),(70,27,98),(71,28,9),(72,28,3),(73,28,2),(74,28,11),(75,29,11),(76,29,9),(77,29,2),(78,29,3),(79,30,9),(80,30,11),(81,30,2),(82,30,3),(83,31,3),(84,31,2),(85,31,11),(86,31,9),(87,32,3),(88,32,2),(89,32,11),(90,32,9),(91,33,3),(92,33,2),(93,33,7),(94,33,11),(95,33,9),(96,34,2),(97,34,3),(98,34,9),(99,34,11),(100,35,11),(101,36,3),(102,36,9),(103,36,11),(104,36,2),(105,37,9),(106,37,11),(107,37,3),(108,37,2),(109,38,11),(110,38,9),(111,38,7),(112,38,2),(113,38,3),(114,39,12),(115,40,2),(116,40,3),(117,40,9),(118,40,11),(119,41,2),(120,41,3),(121,41,9),(122,41,11),(123,42,141),(124,42,144),(125,42,146),(126,42,147),(127,42,148),(128,43,141),(129,44,148),(130,44,147),(131,44,141),(132,44,144),(133,44,146),(134,45,150),(135,46,139),(136,47,155),(137,48,141),(138,49,140),(139,50,149),(140,51,141),(141,52,141),(142,53,141),(143,54,141),(144,55,141),(145,56,143),(146,57,149),(147,58,151),(148,59,141),(149,60,149),(150,61,149),(151,62,141),(152,63,141),(153,64,145),(154,65,106),(155,66,112),(156,66,109),(157,66,134),(158,66,114),(159,66,120),(160,66,119),(161,66,132),(162,67,112),(163,67,107),(164,67,125),(165,67,108),(166,67,109),(167,67,119),(168,67,118),(169,67,134),(170,67,120),(171,67,132),(172,67,114),(173,68,132),(174,68,114),(175,68,134),(176,68,112),(177,68,109),(178,68,125),(179,68,107),(180,68,108),(181,68,120),(182,68,119),(183,68,118),(184,69,107),(185,70,119),(186,70,120),(187,70,134),(188,70,112),(189,70,109),(190,70,114),(191,71,107),(192,71,109),(193,71,118),(194,71,119),(195,71,120),(196,71,134),(197,71,114),(198,71,112),(199,72,109),(200,72,107),(201,72,119),(202,72,120),(203,72,118),(204,72,134),(205,72,114),(206,72,112),(207,73,114),(208,73,112),(209,73,134),(210,73,119),(211,73,120),(212,73,109),(213,74,114),(214,74,131),(215,74,134),(216,74,119),(217,74,120),(218,74,109),(219,74,112),(220,75,120),(221,75,118),(222,75,134),(223,75,119),(224,75,114),(225,75,112),(226,75,109),(227,75,107),(228,76,119),(229,76,120),(230,76,131),(231,76,134),(232,76,112),(233,76,114),(234,76,109),(235,77,109),(236,77,114),(237,77,112),(238,77,134),(239,77,119),(240,77,118),(241,77,120);
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
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,60,'<com.talkweb.imoney.ball.g: void onClick(android.view.View)>',11,'a',0),(2,61,'<com.talkweb.imoney.god.b: void onClick(android.view.View)>',11,'a',NULL),(3,62,'<com.talkweb.imoney.god.c: void onClick(android.view.View)>',11,'a',NULL),(4,7,'<com.talkweb.imoney.ball.BallActivity: void onClick(android.view.View)>',10,'a',NULL),(5,12,'<com.talkweb.comm.MoreExctingActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',25,'a',NULL),(6,63,'<com.talkweb.imoney.almanac.b: void onClick(android.view.View)>',28,'a',NULL),(7,7,'<com.talkweb.imoney.ball.BallActivity: void onClick(android.view.View)>',51,'a',NULL),(8,64,'<com.talkweb.imoney.god.s: void onClick(android.view.View)>',7,'a',NULL),(9,11,'<com.talkweb.imoney.god.GodMainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(10,9,'<com.talkweb.imoney.ball.SimulateBuyActivity: void onClick(android.view.View)>',108,'a',NULL),(11,65,'<com.talkweb.imoney.ball.h: void onClick(android.view.View)>',9,'a',0),(12,11,'<com.talkweb.imoney.god.GodMainActivity: void b()>',10,'a',NULL),(13,11,'<com.talkweb.imoney.god.GodMainActivity: void c()>',8,'a',NULL),(14,66,'<com.talkweb.imoney.god.e: void onClick(android.view.View)>',11,'a',NULL),(15,104,'<com.go108.lic.free.InputActivity: void save()>',37,'a',NULL),(16,146,'<com.go108.lic.free.StartupActivity$2: void run()>',5,'a',0),(17,147,'<com.go108.lic.free.util.APNOpera: long getPreferredApnId()>',5,'p',NULL),(18,105,'<com.go108.lic.free.MainActivity: void onClick(android.view.View)>',12,'a',NULL),(19,105,'<com.go108.lic.free.MainActivity: void onClick(android.view.View)>',24,'a',NULL),(20,105,'<com.go108.lic.free.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(21,147,'<com.go108.lic.free.util.APNOpera: java.lang.String readCurrentAPN()>',10,'p',NULL),(22,105,'<com.go108.lic.free.MainActivity: void readInfo()>',24,'a',NULL),(23,105,'<com.go108.lic.free.MainActivity: void onClick(android.view.View)>',20,'a',NULL),(24,107,'<com.go108.lic.free.MoreExctingActivity: void linkSite(com.go108.lic.free.ExctingProductBean)>',14,'a',NULL),(25,163,'<com.go108.lic.free.menu.AboutActivity$1: void onClick(android.content.DialogInterface,int)>',13,'a',NULL),(26,167,'<com.go108.lic.free.MainActivity$2: void onClick(android.view.View)>',7,'a',NULL),(27,105,'<com.go108.lic.free.MainActivity: void doSMS()>',5,'a',NULL),(28,65,'<com.talkweb.imoney.ball.h: void onClick(android.view.View)>',9,'a',0),(29,60,'<com.talkweb.imoney.ball.g: void onClick(android.view.View)>',11,'a',0),(30,11,'<com.talkweb.imoney.god.GodMainActivity: void c()>',8,'a',NULL),(31,63,'<com.talkweb.imoney.almanac.b: void onClick(android.view.View)>',28,'a',NULL),(32,62,'<com.talkweb.imoney.god.c: void onClick(android.view.View)>',11,'a',NULL),(33,7,'<com.talkweb.imoney.ball.BallActivity: void onClick(android.view.View)>',51,'a',NULL),(34,64,'<com.talkweb.imoney.god.s: void onClick(android.view.View)>',7,'a',NULL),(35,11,'<com.talkweb.imoney.god.GodMainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(36,11,'<com.talkweb.imoney.god.GodMainActivity: void b()>',10,'a',NULL),(37,61,'<com.talkweb.imoney.god.b: void onClick(android.view.View)>',11,'a',NULL),(38,7,'<com.talkweb.imoney.ball.BallActivity: void onClick(android.view.View)>',10,'a',NULL),(39,12,'<com.talkweb.comm.MoreExctingActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',25,'a',NULL),(40,9,'<com.talkweb.imoney.ball.SimulateBuyActivity: void onClick(android.view.View)>',108,'a',NULL),(41,66,'<com.talkweb.imoney.god.e: void onClick(android.view.View)>',11,'a',NULL),(42,168,'<com.go108.lovecome.util.n: java.lang.String a()>',18,'p',NULL),(43,150,'<com.go108.lovecome.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(44,168,'<com.go108.lovecome.util.n: java.lang.String a()>',5,'p',NULL),(45,169,'<com.go108.lovecome.a.s: void onClick(android.view.View)>',30,'a',NULL),(46,170,'<com.go108.lovecome.e: void run()>',5,'a',0),(47,165,'<com.go108.lovecome.MoreExctingActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',25,'a',NULL),(48,150,'<com.go108.lovecome.MainActivity: void onClick(android.view.View)>',26,'a',NULL),(49,149,'<com.go108.lovecome.InputActivity: void onClick(android.view.View)>',48,'a',NULL),(50,171,'<com.go108.lovecome.a.a: void h()>',23,'p',NULL),(51,150,'<com.go108.lovecome.MainActivity: void onClick(android.view.View)>',47,'a',NULL),(52,150,'<com.go108.lovecome.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',20,'a',NULL),(53,150,'<com.go108.lovecome.MainActivity: void b()>',24,'a',NULL),(54,150,'<com.go108.lovecome.MainActivity: void onClick(android.view.View)>',20,'a',NULL),(55,150,'<com.go108.lovecome.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',25,'a',NULL),(56,152,'<com.go108.lovecome.SingleInputActivity: void onClick(android.view.View)>',35,'a',NULL),(57,171,'<com.go108.lovecome.a.a: void c()>',30,'p',NULL),(58,172,'<com.go108.lovecome.menu.f: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(59,150,'<com.go108.lovecome.MainActivity: void onClick(android.view.View)>',42,'a',NULL),(60,171,'<com.go108.lovecome.a.a: void h()>',4,'p',NULL),(61,171,'<com.go108.lovecome.a.a: void c()>',8,'p',NULL),(62,150,'<com.go108.lovecome.MainActivity: void onClick(android.view.View)>',33,'a',NULL),(63,150,'<com.go108.lovecome.MainActivity: void onClick(android.view.View)>',12,'a',NULL),(64,154,'<com.go108.lovecome.LovingInputActivity: void onClick(android.view.View)>',51,'a',NULL),(65,173,'<com.talkweb.ycya.LoginActivity$MyThread: void run()>',11,'a',NULL),(66,174,'<com.talkweb.yhlq.CqProcessActivity$1$1: void run()>',65,'a',NULL),(67,175,'<cn.com.go108.feecontrol.APNOpera: java.lang.String readCurrentAPN()>',10,'p',NULL),(68,175,'<cn.com.go108.feecontrol.APNOpera: long getPreferredApnId()>',5,'p',NULL),(69,176,'<com.talkweb.main.MainActivity$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(70,177,'<com.talkweb.qrmj.QrmjResultActivity$1: void onClick(android.view.View)>',7,'a',NULL),(71,178,'<com.talkweb.net.APNOpera: long getPreferredApnId()>',5,'p',NULL),(72,178,'<com.talkweb.net.APNOpera: java.lang.String readCurrentAPN()>',10,'p',NULL),(73,179,'<com.talkweb.xzpd.XzpdActivity$1: void onClick(android.view.View)>',7,'a',NULL),(74,180,'<com.talkweb.yhlq.YaoQianActivity$1$1: void run()>',29,'a',NULL),(75,181,'<com.talkweb.main.MainActivity$7: void onClick(android.content.DialogInterface,int)>',29,'a',NULL),(76,182,'<com.talkweb.yhlq.YaoQianActivity$3: void run()>',15,'a',NULL),(77,183,'<com.talkweb.yhlq.YhlqActivity$1: void onClick(android.content.DialogInterface,int)>',19,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,5,11),(2,23,11),(3,24,11),(4,25,12),(5,27,11),(6,40,11),(7,46,11),(8,51,11),(9,57,12);
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/talkweb/imoney/almanac/AlmanacActivity'),(2,2,'com/talkweb/imoney/guagua/GuaGuaActivity'),(3,3,'com/talkweb/imoney/ball/ResultShowActivity'),(4,4,'com/talkweb/imoney/ball/ResultShowActivity'),(5,6,'com/talkweb/imoney/almanac/QueryAlmanacActivity'),(6,8,'com/talkweb/imoney/ball/ResultShowActivity'),(7,9,'com/talkweb/imoney/ball/SimulateBuyActivity'),(8,10,'com/talkweb/comm/MoreExctingActivity'),(9,11,'com/talkweb/comm/MoreExctingActivity'),(10,12,'com/talkweb/imoney/ball/BallChooseActivity'),(11,13,'com/talkweb/imoney/util/BirthdayInputActivity'),(12,14,'com/talkweb/imoney/util/BirthdayInputActivity'),(13,15,'com/talkweb/imoney/ball/BallActivity'),(14,16,'com/go108/lic/free/MainActivity'),(15,17,'com/go108/lic/free/PersonModifyActivity'),(16,18,'com/go108/lic/free/MoreExctingActivity'),(17,20,'com/go108/lic/free/menu/FeedbackActivity'),(18,21,'com/go108/lic/free/InputActivity'),(19,22,'com/go108/lic/free/PersonModifyActivity'),(20,26,'com/go108/lic/free/MoreExctingActivity'),(21,28,'com/talkweb/imoney/util/BirthdayInputActivity'),(22,29,'com/talkweb/imoney/almanac/QueryAlmanacActivity'),(23,30,'com/talkweb/imoney/guagua/GuaGuaActivity'),(24,32,'com/talkweb/imoney/ball/ResultShowActivity'),(25,33,'com/talkweb/imoney/ball/SimulateBuyActivity'),(26,34,'com/talkweb/comm/MoreExctingActivity'),(27,35,'com/talkweb/comm/MoreExctingActivity'),(28,36,'com/talkweb/imoney/util/BirthdayInputActivity'),(29,37,'com/talkweb/imoney/almanac/AlmanacActivity'),(30,38,'com/talkweb/imoney/ball/ResultShowActivity'),(31,39,'com/talkweb/imoney/ball/ResultShowActivity'),(32,41,'com/talkweb/imoney/ball/BallChooseActivity'),(33,42,'com/talkweb/imoney/ball/BallActivity'),(34,44,'com/go108/lovecome/menu/FeedbackActivity'),(35,45,'com/go108/lovecome/FavoritesReviewActivity'),(36,47,'com/go108/lovecome/MoreExctingActivity'),(37,48,'com/go108/lovecome/MainActivity'),(38,49,'com/go108/lovecome/SingleInputActivity'),(39,50,'com/go108/lovecome/SingleInputActivity'),(40,52,'com/go108/lovecome/InputActivity'),(41,53,'com/go108/lovecome/PersonModifyActivity'),(42,55,'com/go108/lovecome/menu/FavoritesListActivity'),(43,56,'com/go108/lovecome/SingleResultActivity'),(44,58,'com/go108/lovecome/LovingInputActivity'),(45,59,'com/go108/lovecome/LovingInputActivity'),(46,60,'com/go108/lovecome/MoreExctingActivity'),(47,61,'com/go108/lovecome/PersonModifyActivity'),(48,62,'com/go108/lovecome/LovingResultActivity'),(49,63,'com/talkweb/main/MainActivity'),(50,64,'com/talkweb/yhlq/QianResultActivity'),(51,65,'com/talkweb/xzpd/XzpdActivity'),(52,66,'com/talkweb/comm/MoreExctingActivity'),(53,67,'com/talkweb/xzpd/XzpdXzxzActivity'),(54,68,'com/talkweb/yhlq/ZhiJiaoActivity'),(55,69,'com/talkweb/menu/WebIntroActivity'),(56,70,'com/talkweb/yhlq/ZhiJiaoActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,5,1),(2,23,4),(3,24,5),(4,25,6),(5,40,7),(6,46,10),(7,57,13);
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
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,4,'AUTO_CHOOSE_NUMBERS'),(2,6,'currentDay'),(3,6,'currentYear'),(4,6,'currentMonth'),(5,7,'AUTO_CHOOSE_NUMBERS'),(6,8,'AUTO_CHOOSE_NUMBERS'),(7,9,'AUTO_CHOOSE_NUMBERS'),(8,13,'isqd'),(9,14,'isqd'),(10,16,'readFlag'),(11,17,'loveState'),(12,17,'taMonth'),(13,17,'myTime'),(14,17,'taGender'),(15,17,'myGender'),(16,17,'myGenderStr'),(17,17,'myYear'),(18,17,'myMonth'),(19,17,'taTime'),(20,17,'myId'),(21,17,'taGenderStr'),(22,17,'taDay'),(23,17,'loveStateStr'),(24,17,'myDay'),(25,17,'taName'),(26,17,'modifyFlag'),(27,17,'myName'),(28,17,'taYear'),(29,17,'taId'),(30,22,'loveState'),(31,22,'taMonth'),(32,22,'myTime'),(33,22,'taGender'),(34,22,'myGender'),(35,22,'myGenderStr'),(36,22,'myYear'),(37,22,'myMonth'),(38,22,'taTime'),(39,22,'myId'),(40,22,'taGenderStr'),(41,22,'taDay'),(42,22,'loveStateStr'),(43,22,'myDay'),(44,22,'taName'),(45,22,'modifyFlag'),(46,22,'myName'),(47,22,'taYear'),(48,22,'taId'),(49,27,'sms_body'),(50,28,'isqd'),(51,29,'currentDay'),(52,29,'currentYear'),(53,29,'currentMonth'),(54,31,'AUTO_CHOOSE_NUMBERS'),(55,32,'AUTO_CHOOSE_NUMBERS'),(56,33,'AUTO_CHOOSE_NUMBERS'),(57,36,'isqd'),(58,39,'AUTO_CHOOSE_NUMBERS'),(59,45,'productId'),(60,48,'readFlag'),(61,49,'loveState'),(62,49,'taMonth'),(63,49,'myTime'),(64,49,'taGender'),(65,49,'myGender'),(66,49,'myYear'),(67,49,'myGenderStr'),(68,49,'myMonth'),(69,49,'taTime'),(70,49,'myId'),(71,49,'taDay'),(72,49,'taGenderStr'),(73,49,'loveStateStr'),(74,49,'myDay'),(75,49,'taName'),(76,49,'myName'),(77,49,'taId'),(78,49,'taYear'),(79,50,'loveState'),(80,50,'taMonth'),(81,50,'myTime'),(82,50,'taGender'),(83,50,'myGender'),(84,50,'myGenderStr'),(85,50,'myYear'),(86,50,'myMonth'),(87,50,'taTime'),(88,50,'myId'),(89,50,'taGenderStr'),(90,50,'taDay'),(91,50,'loveStateStr'),(92,50,'myDay'),(93,50,'taName'),(94,50,'modifyFlag'),(95,50,'myName'),(96,50,'taYear'),(97,50,'taId'),(98,51,'sms_body'),(99,53,'loveState'),(100,53,'taMonth'),(101,53,'myTime'),(102,53,'taGender'),(103,53,'myGender'),(104,53,'myGenderStr'),(105,53,'myYear'),(106,53,'myMonth'),(107,53,'taTime'),(108,53,'myId'),(109,53,'taGenderStr'),(110,53,'taDay'),(111,53,'loveStateStr'),(112,53,'myDay'),(113,53,'taName'),(114,53,'modifyFlag'),(115,53,'myName'),(116,53,'taYear'),(117,53,'taId'),(118,56,'singleGender'),(119,56,'singleName'),(120,58,'loveState'),(121,58,'taMonth'),(122,58,'myTime'),(123,58,'taGender'),(124,58,'myGender'),(125,58,'myYear'),(126,58,'myGenderStr'),(127,58,'myMonth'),(128,58,'taTime'),(129,58,'myId'),(130,58,'taDay'),(131,58,'taGenderStr'),(132,58,'loveStateStr'),(133,58,'myDay'),(134,58,'taName'),(135,58,'myName'),(136,58,'taId'),(137,58,'taYear'),(138,59,'loveState'),(139,59,'taMonth'),(140,59,'myTime'),(141,59,'taGender'),(142,59,'myGender'),(143,59,'myGenderStr'),(144,59,'myYear'),(145,59,'myMonth'),(146,59,'taTime'),(147,59,'myId'),(148,59,'taGenderStr'),(149,59,'taDay'),(150,59,'loveStateStr'),(151,59,'myDay'),(152,59,'taName'),(153,59,'modifyFlag'),(154,59,'myName'),(155,59,'taYear'),(156,59,'taId'),(157,61,'loveState'),(158,61,'taMonth'),(159,61,'myTime'),(160,61,'taGender'),(161,61,'myGender'),(162,61,'myGenderStr'),(163,61,'myYear'),(164,61,'myMonth'),(165,61,'taTime'),(166,61,'myId'),(167,61,'taGenderStr'),(168,61,'taDay'),(169,61,'loveStateStr'),(170,61,'myDay'),(171,61,'taName'),(172,61,'modifyFlag'),(173,61,'myName'),(174,61,'taYear'),(175,61,'taId'),(176,62,'monthChoice'),(177,62,'gender_2'),(178,62,'gender_1'),(179,62,'birthday_2'),(180,62,'birthday_1'),(181,63,'appload'),(182,64,'strArray'),(183,64,'str'),(184,68,'time'),(185,70,'time');
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,3),(5,5,4),(6,6,6),(7,6,5),(8,6,8),(9,6,7),(10,6,10),(11,6,9),(12,8,1),(13,9,1),(14,10,1),(15,11,1),(16,12,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,4,2),(4,5,2),(5,8,1),(6,9,1),(7,10,1),(8,11,1),(9,12,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,27,'vnd.android-dir','mms-sms'),(2,51,'vnd.android-dir','mms-sms');
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.talkweb.imoney'),(2,2,'com.talkweb.imoney'),(3,3,'com.talkweb.imoney'),(4,4,'com.talkweb.imoney'),(5,6,'com.talkweb.imoney'),(6,8,'com.talkweb.imoney'),(7,9,'com.talkweb.imoney'),(8,10,'com.talkweb.imoney'),(9,11,'com.talkweb.imoney'),(10,12,'com.talkweb.imoney'),(11,13,'com.talkweb.imoney'),(12,14,'com.talkweb.imoney'),(13,15,'com.talkweb.imoney'),(14,16,'com.go108.lic.free'),(15,17,'com.go108.lic.free'),(16,18,'com.go108.lic.free'),(17,20,'com.go108.lic.free'),(18,21,'com.go108.lic.free'),(19,22,'com.go108.lic.free'),(20,26,'com.go108.lic.free'),(21,28,'com.talkweb.imoney'),(22,29,'com.talkweb.imoney'),(23,30,'com.talkweb.imoney'),(24,32,'com.talkweb.imoney'),(25,33,'com.talkweb.imoney'),(26,34,'com.talkweb.imoney'),(27,35,'com.talkweb.imoney'),(28,36,'com.talkweb.imoney'),(29,37,'com.talkweb.imoney'),(30,38,'com.talkweb.imoney'),(31,39,'com.talkweb.imoney'),(32,41,'com.talkweb.imoney'),(33,42,'com.talkweb.imoney'),(34,44,'com.go108.lovecome'),(35,45,'com.go108.lovecome'),(36,47,'com.go108.lovecome'),(37,48,'com.go108.lovecome'),(38,49,'com.go108.lovecome'),(39,50,'com.go108.lovecome'),(40,52,'com.go108.lovecome'),(41,53,'com.go108.lovecome'),(42,55,'com.go108.lovecome'),(43,56,'com.go108.lovecome'),(44,58,'com.go108.lovecome'),(45,59,'com.go108.lovecome'),(46,60,'com.go108.lovecome'),(47,61,'com.go108.lovecome'),(48,62,'com.go108.lovecome'),(49,63,'com.talkweb.ycya.free'),(50,64,'com.talkweb.ycya.free'),(51,65,'com.talkweb.ycya.free'),(52,66,'com.talkweb.ycya.free'),(53,67,'com.talkweb.ycya.free'),(54,68,'com.talkweb.ycya.free'),(55,69,'com.talkweb.ycya.free'),(56,70,'com.talkweb.ycya.free');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,13,0),(3,53,0),(4,54,0),(5,55,0),(6,58,0),(7,59,0),(8,60,0),(9,96,0),(10,106,0),(11,1,0),(12,139,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,2,0,0),(2,3,0,0),(3,4,0,0),(4,4,0,0),(5,5,1,0),(6,6,0,0),(7,7,1,0),(8,7,0,0),(9,7,0,0),(10,8,0,0),(11,9,0,0),(12,10,0,0),(13,12,0,0),(14,13,0,0),(15,14,0,0),(16,15,0,0),(17,18,0,0),(18,19,0,0),(19,20,1,0),(20,20,0,0),(21,22,0,0),(22,23,0,0),(23,24,1,0),(24,24,1,0),(25,25,1,0),(26,26,0,0),(27,27,1,0),(28,30,0,0),(29,31,0,0),(30,32,0,0),(31,33,1,0),(32,33,0,0),(33,33,0,0),(34,34,0,0),(35,35,0,0),(36,36,0,0),(37,37,0,0),(38,38,0,0),(39,38,0,0),(40,39,1,0),(41,40,0,0),(42,41,0,0),(43,43,1,0),(44,43,0,0),(45,45,0,0),(46,47,1,0),(47,48,0,0),(48,49,0,0),(49,51,0,0),(50,51,0,0),(51,52,1,0),(52,53,0,0),(53,54,0,0),(54,55,1,0),(55,55,0,0),(56,56,0,0),(57,58,1,0),(58,59,0,0),(59,59,0,0),(60,62,0,0),(61,63,0,0),(62,64,0,0),(63,65,0,0),(64,66,0,0),(65,69,0,0),(66,70,0,0),(67,73,0,0),(68,74,0,0),(69,75,0,0),(70,76,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (6,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(2,'android.permission.INTERNET'),(9,'android.permission.KILL_BACKGROUND_PROCESSES'),(7,'android.permission.READ_CONTACTS'),(1,'android.permission.READ_PHONE_STATE'),(8,'android.permission.RESTART_PACKAGES'),(4,'android.permission.VIBRATE'),(3,'android.permission.WRITE_EXTERNAL_STORAGE');
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
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(3,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(4,NULL,NULL,'http://www.go108.com.cn/mobile/Client/apk/lic.apk',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'tel:073184285152',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(9,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(12,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(13,NULL,NULL,'tel:073184285152',NULL,NULL,NULL),(14,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(15,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(16,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(17,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(18,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(19,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,17,2),(2,21,3),(3,42,8),(4,44,9),(5,50,11),(6,57,12),(7,60,14),(8,61,15),(9,67,16),(10,68,17),(11,71,18),(12,72,19);
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,2,1),(8,2,2),(9,2,3),(10,2,4),(11,2,5),(12,2,6),(13,2,7),(14,3,1),(15,3,2),(16,3,3),(17,3,5),(18,3,6),(19,3,7),(20,4,1),(21,4,2),(22,4,3),(23,4,4),(24,4,5),(25,4,6),(26,4,8),(27,4,9),(28,5,1),(29,5,2),(30,5,3),(31,5,5),(32,5,6),(33,5,7),(34,6,1),(35,6,2),(36,6,3),(37,6,4),(38,6,5),(39,6,6),(40,6,8),(41,6,9);
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

-- Dump completed on 2015-10-09  0:41:03
