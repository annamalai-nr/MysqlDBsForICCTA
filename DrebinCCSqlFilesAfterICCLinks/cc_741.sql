-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_741
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (3,'android.intent.action.CALL'),(1,'android.intent.action.MAIN'),(4,'android.intent.action.VIEW'),(2,'android.provider.Telephony.SMS_RECEIVED');
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
INSERT INTO `Applications` VALUES (1,'com.go108.lic',2),(2,'com.talkweb.ycya.free',1),(3,'com.go108.lic.free',1),(4,'com.heroit.iching.lite',10),(5,'com.talkweb.imoney',1),(6,'com.talkweb.imoney',6),(7,'com.talkweb.imoney',5);
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
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.go108.lic.StartupActivity'),(2,1,'com.go108.lic.InputActivity'),(3,1,'com.go108.lic.MainActivity'),(4,1,'com.go108.lic.PersonModifyActivity'),(5,1,'com.go108.lic.SingleInputActivity'),(6,1,'com.go108.lic.SingleResultActivity'),(7,1,'com.go108.lic.LovingInputActivity'),(8,1,'com.go108.lic.LovingResultActivity'),(9,1,'com.go108.lic.FavoritesReviewActivity'),(10,1,'com.go108.lic.menu.FeedbackActivity'),(11,1,'com.go108.lic.menu.ShareActivity'),(12,1,'com.go108.lic.menu.FavoritesListActivity'),(13,1,'com.go108.lic.menu.AboutActivity'),(14,1,'com.go108.lic.menu.HelpActivity'),(15,1,'com.go108.lic.menu.SiteDescActivity'),(16,1,'com.go108.lic.QuitActivity'),(17,1,'com.go108.lic.util.DownloadFileService'),(18,1,'com.go108.lic.util.SmsReceiver'),(19,1,'com.go108.lic.menu.AboutActivity$1'),(20,1,'com.go108.lic.dialog.PopupShow'),(21,1,'com.go108.lic.dialog.PopupShow$15'),(22,1,'com.go108.lic.util.APNOpera'),(23,1,'com.go108.lic.util.SmsReceiver$1'),(24,1,'com.go108.lic.dialog.ReadContacts2Utils'),(25,1,'com.go108.lic.StartupActivity$2'),(26,2,'com.talkweb.ycya.LoginActivity'),(27,2,'com.talkweb.main.MainActivity'),(28,2,'com.talkweb.mzzd.MzzdActivity'),(29,2,'com.talkweb.mzzd.MzzdFreeResultActivity'),(30,2,'com.talkweb.comm.MoreExctingActivity'),(31,2,'com.talkweb.mzzd.MzzdChargeResultActivity'),(32,2,'com.talkweb.xzpd.XzpdActivity'),(33,2,'com.talkweb.xzpd.XzpdXzxzActivity'),(34,2,'com.talkweb.xzpd.XzpdFreeResultActivity'),(35,2,'com.talkweb.xzpd.XzpdChargeResultActivity'),(36,2,'com.talkweb.xzpd.XzpdForbiddenParadiseActivity'),(37,2,'com.talkweb.xzpd.XzpdPersueSecretsActivity'),(38,2,'com.talkweb.yhlq.YhlqActivity'),(39,2,'com.talkweb.qrmj.QrmjActivity'),(40,2,'com.talkweb.qrmj.QrmjResultActivity'),(41,2,'com.talkweb.mzzd.ContactActivity'),(42,2,'com.talkweb.menu.MenuActivity'),(43,2,'com.talkweb.menu.FavoriteListActivity'),(44,2,'com.talkweb.menu.FavoriteRequestActivity'),(45,2,'com.talkweb.menu.HelpActivity'),(46,2,'com.talkweb.menu.UpdateActivity'),(47,2,'com.talkweb.menu.CompanyIntroActivity'),(48,2,'com.talkweb.menu.WebIntroActivity'),(49,2,'com.talkweb.menu.WapIntroActivity'),(50,2,'com.talkweb.mzzd.MzzdQueryResultActivity'),(51,2,'com.talkweb.yhlq.YaoQianActivity'),(52,2,'com.talkweb.yhlq.CqProcessActivity'),(53,2,'com.talkweb.yhlq.ZhiJiaoActivity'),(54,2,'com.talkweb.yhlq.QianResultActivity'),(55,2,'com.talkweb.xzpd.XzpdRequestChargeResultActivity'),(56,2,'com.talkweb.xzpd.XzpdRequestPersueSecretsActivity'),(57,2,'com.talkweb.xzpd.XzpdRequestForbiddenParadiseActivity'),(58,3,'com.go108.lic.free.StartupActivity'),(59,3,'com.go108.lic.free.InputActivity'),(60,3,'com.go108.lic.free.MainActivity'),(61,3,'com.go108.lic.free.PersonModifyActivity'),(62,3,'com.go108.lic.free.MoreExctingActivity'),(63,3,'com.go108.lic.free.menu.FeedbackActivity'),(64,3,'com.go108.lic.free.menu.AboutActivity'),(65,3,'com.go108.lic.free.menu.HelpActivity'),(66,3,'com.go108.lic.free.menu.SiteDescActivity'),(67,3,'com.go108.lic.free.util.DownloadFileService'),(68,4,'com.talkweb.easy.LoginActivity'),(69,4,'com.heroit.iching.lite.MainActivity'),(70,4,'com.heroit.iching.lite.InputActivity'),(71,4,'com.heroit.iching.lite.ShakeActivity'),(72,4,'com.heroit.iching.lite.ResultActivity'),(73,4,'com.heroit.iching.lite.MasterActivity'),(74,4,'com.heroit.iching.lite.SchoolActivity'),(75,4,'com.heroit.iching.lite.HistoryListActivity'),(76,4,'com.heroit.iching.lite.BulletinListActivity'),(77,4,'com.talkweb.easy.MoreExctingActivity'),(78,4,'com.talkweb.easy.MenuInfoActivity'),(79,4,'com.talkweb.easy.VersionInfoActivity'),(80,5,'com.talkweb.imoney.LoadMain'),(81,5,'com.talkweb.imoney.almanac.AlmanacActivity'),(82,5,'com.talkweb.imoney.almanac.QueryAlmanacActivity'),(83,5,'com.talkweb.imoney.almanac.TodayAlmanacActivity'),(84,5,'com.talkweb.imoney.guagua.GuaGuaActivity'),(85,5,'com.talkweb.imoney.util.BirthdayInputActivity'),(86,5,'com.talkweb.imoney.ball.BallActivity'),(87,5,'com.talkweb.imoney.ball.ResultShowActivity'),(88,5,'com.talkweb.imoney.ball.SimulateBuyActivity'),(89,5,'com.talkweb.imoney.ball.BallChooseActivity'),(90,5,'com.talkweb.imoney.god.GodMainActivity'),(91,5,'com.talkweb.comm.MoreExctingActivity'),(92,3,'com.go108.lic.free.util.APNOpera'),(93,3,'com.go108.lic.free.MainActivity$2'),(94,3,'com.go108.lic.free.menu.AboutActivity$1'),(95,3,'com.go108.lic.free.StartupActivity$2'),(96,4,'com.talkweb.easy.a'),(97,4,'a.a.a.a.a'),(98,4,'com.heroit.iching.lite.an'),(99,4,'com.heroit.iching.lite.ah'),(100,6,'com.talkweb.imoney.LoadMain'),(101,6,'com.talkweb.imoney.almanac.AlmanacActivity'),(102,7,'com.talkweb.imoney.LoadMain'),(103,6,'com.talkweb.imoney.almanac.QueryAlmanacActivity'),(104,6,'com.talkweb.imoney.almanac.TodayAlmanacActivity'),(105,7,'com.talkweb.imoney.almanac.AlmanacActivity'),(106,6,'com.talkweb.imoney.guagua.GuaGuaActivity'),(107,7,'com.talkweb.imoney.almanac.QueryAlmanacActivity'),(108,6,'com.talkweb.imoney.util.BirthdayInputActivity'),(109,4,'com.heroit.iching.lite.r'),(110,7,'com.talkweb.imoney.almanac.TodayAlmanacActivity'),(111,6,'com.talkweb.imoney.ball.BallActivity'),(112,7,'com.talkweb.imoney.guagua.GuaGuaActivity'),(113,6,'com.talkweb.imoney.ball.ResultShowActivity'),(114,6,'com.talkweb.imoney.ball.SimulateBuyActivity'),(115,7,'com.talkweb.imoney.util.BirthdayInputActivity'),(116,7,'com.talkweb.imoney.ball.BallActivity'),(117,6,'com.talkweb.imoney.ball.BallChooseActivity'),(118,7,'com.talkweb.imoney.ball.ResultShowActivity'),(119,6,'com.talkweb.imoney.god.GodMainActivity'),(120,7,'com.talkweb.imoney.ball.SimulateBuyActivity'),(121,6,'com.talkweb.comm.MoreExctingActivity'),(122,7,'com.talkweb.imoney.ball.BallChooseActivity'),(123,4,'com.heroit.iching.lite.ao'),(124,7,'com.talkweb.imoney.god.GodMainActivity'),(125,7,'com.talkweb.comm.MoreExctingActivity'),(126,5,'com.talkweb.imoney.god.g'),(127,4,'com.heroit.iching.lite.al'),(128,5,'com.talkweb.imoney.god.a'),(129,4,'com.heroit.iching.lite.n'),(130,5,'com.talkweb.imoney.almanac.b'),(131,5,'com.talkweb.imoney.god.b'),(132,6,'com.talkweb.imoney.god.s'),(133,6,'com.talkweb.imoney.ball.h'),(134,6,'com.talkweb.imoney.god.b'),(135,7,'com.talkweb.imoney.almanac.b'),(136,6,'com.talkweb.imoney.ball.g'),(137,6,'com.talkweb.imoney.almanac.b'),(138,7,'com.talkweb.imoney.god.e'),(139,7,'com.talkweb.imoney.god.c'),(140,6,'com.talkweb.imoney.god.c'),(141,7,'com.talkweb.imoney.god.s'),(142,7,'com.talkweb.imoney.ball.g'),(143,6,'com.talkweb.imoney.god.e'),(144,7,'com.talkweb.imoney.god.b'),(145,7,'com.talkweb.imoney.ball.h'),(146,2,'com.talkweb.qrmj.QrmjResultActivity$1'),(147,2,'com.talkweb.xzpd.XzpdActivity$1'),(148,2,'com.talkweb.main.MainActivity$7'),(149,2,'com.talkweb.yhlq.QianResultActivity$2'),(150,2,'com.talkweb.main.MainActivity$2'),(151,2,'com.talkweb.net.APNOpera'),(152,2,'com.talkweb.yhlq.YaoQianActivity$1$1'),(153,2,'com.talkweb.yhlq.QianResultActivity$1'),(154,2,'com.talkweb.comm.Utils'),(155,2,'com.talkweb.xzpd.XzpdActivity$2'),(156,2,'com.talkweb.qrmj.QrmjActivity$3$1'),(157,2,'com.talkweb.mzzd.MzzdActivity$2'),(158,2,'com.talkweb.xzpd.XzpdFreeResultActivity$1'),(159,2,'com.talkweb.yhlq.CqProcessActivity$1$1'),(160,2,'com.talkweb.mzzd.MzzdFreeResultActivity$1'),(161,2,'com.talkweb.yhlq.YhlqActivity$1'),(162,2,'cn.com.go108.feecontrol.APNOpera'),(163,2,'com.talkweb.yhlq.YaoQianActivity$3'),(164,2,'com.talkweb.ycya.LoginActivity$MyThread');
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
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,7,'feeinfo_feeValue'),(2,4,'taYear'),(3,4,'taTime'),(4,3,'APP_CHANNEL'),(5,7,'APP_CHANNEL'),(6,5,'APP_CHANNEL'),(7,14,'APP_CHANNEL'),(8,17,'productName'),(9,7,'feeinfo_feeNumber'),(10,4,'loveState'),(11,7,'myMonth'),(12,4,'myTime'),(13,4,'myName'),(14,18,'pdus'),(15,7,'taGender'),(16,4,'taMonth'),(17,8,'gender_2'),(18,7,'taYear'),(19,5,'feeinfo_feeValue'),(20,5,'feeinfo_feeInfo'),(21,7,'myDay'),(22,9,'productId'),(23,8,'APP_CHANNEL'),(24,9,'APP_CHANNEL'),(25,6,'APP_CHANNEL'),(26,6,'singleName'),(27,5,'feeinfo_feeCode'),(28,8,'birthday_1'),(29,4,'modifyFlag'),(30,7,'myYear'),(31,3,'APP_NAME'),(32,10,'APP_NAME'),(33,14,'APP_NAME'),(34,5,'feeinfo_issFee'),(35,4,'myYear'),(36,4,'taName'),(37,3,'readFlag'),(38,7,'taDay'),(39,5,'feeinfo_feeNumber'),(40,1,'APP_CHANNEL'),(41,2,'APP_CHANNEL'),(42,7,'feeinfo_issFee'),(43,8,'gender_1'),(44,4,'myId'),(45,4,'taId'),(46,7,'taMonth'),(47,4,'myMonth'),(48,7,'myGender'),(49,4,'taGender'),(50,7,'feeinfo_feeInfo'),(51,4,'taDay'),(52,1,'APP_NAME'),(53,2,'APP_NAME'),(54,7,'APP_NAME'),(55,5,'APP_NAME'),(56,8,'monthChoice'),(57,4,'myDay'),(58,4,'myGender'),(59,8,'APP_NAME'),(60,9,'APP_NAME'),(61,6,'APP_NAME'),(62,8,'birthday_2'),(63,17,'path'),(64,6,'singleGender'),(65,7,'feeinfo_feeCode'),(66,56,'APP_NAME'),(67,53,'APP_NAME'),(68,54,'taYear'),(69,54,'taDay'),(70,53,'readFlag'),(71,54,'taTime'),(72,54,'myTime'),(73,60,'path'),(74,54,'modifyFlag'),(75,54,'taId'),(76,54,'taGender'),(77,53,'APP_CHANNEL'),(78,54,'taMonth'),(79,54,'loveState'),(80,54,'taName'),(81,60,'productName'),(82,54,'myId'),(83,54,'myDay'),(84,54,'myMonth'),(85,54,'myGender'),(86,54,'myYear'),(87,51,'APP_NAME'),(88,52,'APP_NAME'),(89,51,'APP_CHANNEL'),(90,52,'APP_CHANNEL'),(91,54,'myName'),(92,69,'url'),(93,69,'content'),(94,65,'save'),(95,65,'hex'),(96,68,'type'),(97,66,'relation'),(98,65,'isPaid'),(99,65,'name'),(100,69,'title'),(101,64,'isAuto'),(102,66,'birthday'),(103,65,'birthday'),(104,66,'gender'),(105,65,'time'),(106,62,'APP_CHANNEL'),(107,69,'date'),(108,65,'APP_NAME'),(109,65,'APP_CHANNEL'),(110,62,'appload'),(111,62,'APP_NAME'),(112,74,'day'),(113,74,'APP_CHANNEL'),(114,80,'APP_CHANNEL'),(115,79,'APP_CHANNEL'),(116,75,'APP_CHANNEL'),(117,81,'APP_CHANNEL'),(118,75,'currentMonth'),(119,75,'currentYear'),(120,65,'sex'),(121,65,'type'),(122,74,'year'),(123,78,'isqd'),(124,81,'BallBeanChoice'),(125,83,'APP_NAME'),(126,74,'AUTO_CHOOSE_NUMBERS'),(127,75,'AUTO_CHOOSE_NUMBERS'),(128,81,'AUTO_CHOOSE_NUMBERS'),(129,75,'currentDay'),(130,74,'APP_NAME'),(131,80,'APP_NAME'),(132,79,'APP_NAME'),(133,75,'APP_NAME'),(134,81,'APP_NAME'),(135,83,'APP_CHANNEL'),(136,74,'month'),(137,88,'currentYear'),(138,99,'BallBeanChoice'),(139,86,'day'),(140,103,'APP_CHANNEL'),(141,88,'currentDay'),(142,86,'AUTO_CHOOSE_NUMBERS'),(143,103,'AUTO_CHOOSE_NUMBERS'),(144,88,'AUTO_CHOOSE_NUMBERS'),(145,99,'AUTO_CHOOSE_NUMBERS'),(146,91,'APP_CHANNEL'),(147,102,'APP_CHANNEL'),(148,100,'APP_CHANNEL'),(149,107,'APP_CHANNEL'),(150,92,'APP_CHANNEL'),(151,104,'APP_CHANNEL'),(152,86,'APP_NAME'),(153,96,'APP_NAME'),(154,94,'APP_NAME'),(155,103,'APP_NAME'),(156,88,'APP_NAME'),(157,99,'APP_NAME'),(158,86,'year'),(159,91,'APP_NAME'),(160,102,'APP_NAME'),(161,100,'APP_NAME'),(162,107,'APP_NAME'),(163,92,'APP_NAME'),(164,104,'APP_NAME'),(165,91,'day'),(166,104,'BallBeanChoice'),(167,91,'year'),(168,86,'month'),(169,93,'isqd'),(170,86,'APP_CHANNEL'),(171,96,'APP_CHANNEL'),(172,94,'APP_CHANNEL'),(173,88,'APP_CHANNEL'),(174,99,'APP_CHANNEL'),(175,88,'currentMonth'),(176,92,'currentYear'),(177,92,'currentMonth'),(178,92,'currentDay'),(179,91,'month'),(180,91,'AUTO_CHOOSE_NUMBERS'),(181,107,'AUTO_CHOOSE_NUMBERS'),(182,92,'AUTO_CHOOSE_NUMBERS'),(183,104,'AUTO_CHOOSE_NUMBERS'),(184,98,'isqd'),(185,31,'APP_NAME'),(186,22,'APP_NAME'),(187,25,'APP_NAME'),(188,33,'APP_NAME'),(189,47,'APP_NAME'),(190,27,'APP_NAME'),(191,38,'APP_NAME'),(192,32,'APP_NAME'),(193,20,'APP_NAME'),(194,27,'male_xzID'),(195,32,'loverInfoArray'),(196,20,'appload'),(197,33,'strArray'),(198,27,'gender'),(199,27,'female_xzID'),(200,47,'strArray'),(201,45,'time'),(202,27,'half_gender'),(203,47,'str'),(204,22,'gender'),(205,31,'APP_CHANNEL'),(206,22,'APP_CHANNEL'),(207,25,'APP_CHANNEL'),(208,33,'APP_CHANNEL'),(209,47,'APP_CHANNEL'),(210,27,'APP_CHANNEL'),(211,32,'APP_CHANNEL'),(212,20,'APP_CHANNEL'),(213,21,'APP_CHANNEL'),(214,45,'APP_CHANNEL'),(215,25,'starID'),(216,38,'APP_CHANNEL'),(217,27,'strArray'),(218,25,'xzName'),(219,22,'strArray'),(220,22,'isreturn'),(221,21,'APP_NAME'),(222,45,'APP_NAME'),(223,46,'time'),(224,20,'phone'),(225,22,'nameStr'),(226,21,'nameStr');
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
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'s',0,NULL,NULL),(18,18,'r',1,NULL,NULL),(19,26,'a',1,NULL,NULL),(20,27,'a',0,NULL,NULL),(21,28,'a',0,NULL,NULL),(22,29,'a',0,NULL,NULL),(23,30,'a',0,NULL,NULL),(24,31,'a',0,NULL,NULL),(25,32,'a',0,NULL,NULL),(26,33,'a',0,NULL,NULL),(27,34,'a',0,NULL,NULL),(28,35,'a',0,NULL,NULL),(29,36,'a',0,NULL,NULL),(30,37,'a',0,NULL,NULL),(31,38,'a',0,NULL,NULL),(32,39,'a',0,NULL,NULL),(33,40,'a',0,NULL,NULL),(34,41,'a',0,NULL,NULL),(35,42,'a',0,NULL,NULL),(36,43,'a',0,NULL,NULL),(37,44,'a',0,NULL,NULL),(38,45,'a',0,NULL,NULL),(39,46,'a',0,NULL,NULL),(40,47,'a',0,NULL,NULL),(41,48,'a',0,NULL,NULL),(42,49,'a',0,NULL,NULL),(43,50,'a',0,NULL,NULL),(44,51,'a',0,NULL,NULL),(45,52,'a',0,NULL,NULL),(46,53,'a',0,NULL,NULL),(47,54,'a',0,NULL,NULL),(48,55,'a',0,NULL,NULL),(49,56,'a',0,NULL,NULL),(50,57,'a',0,NULL,NULL),(51,58,'a',1,NULL,NULL),(52,59,'a',0,NULL,NULL),(53,60,'a',0,NULL,NULL),(54,61,'a',0,NULL,NULL),(55,62,'a',0,NULL,NULL),(56,63,'a',0,NULL,NULL),(57,64,'a',0,NULL,NULL),(58,65,'a',0,NULL,NULL),(59,66,'a',0,NULL,NULL),(60,67,'s',0,NULL,NULL),(61,68,'a',1,NULL,NULL),(62,69,'a',0,NULL,NULL),(63,70,'a',0,NULL,NULL),(64,71,'a',0,NULL,NULL),(65,72,'a',0,NULL,NULL),(66,73,'a',0,NULL,NULL),(67,74,'a',0,NULL,NULL),(68,75,'a',0,NULL,NULL),(69,76,'a',0,NULL,NULL),(70,77,'a',0,NULL,NULL),(71,78,'a',0,NULL,NULL),(72,79,'a',0,NULL,NULL),(73,80,'a',1,NULL,NULL),(74,81,'a',0,NULL,NULL),(75,82,'a',0,NULL,NULL),(76,83,'a',0,NULL,NULL),(77,84,'a',0,NULL,NULL),(78,85,'a',0,NULL,NULL),(79,86,'a',0,NULL,NULL),(80,87,'a',0,NULL,NULL),(81,88,'a',0,NULL,NULL),(82,89,'a',0,NULL,NULL),(83,90,'a',0,NULL,NULL),(84,91,'a',0,NULL,NULL),(85,100,'a',1,NULL,NULL),(86,101,'a',0,NULL,NULL),(87,102,'a',1,NULL,NULL),(88,103,'a',0,NULL,NULL),(89,104,'a',0,NULL,NULL),(90,106,'a',0,NULL,NULL),(91,105,'a',0,NULL,NULL),(92,107,'a',0,NULL,NULL),(93,108,'a',0,NULL,NULL),(94,111,'a',0,NULL,NULL),(95,110,'a',0,NULL,NULL),(96,113,'a',0,NULL,NULL),(97,112,'a',0,NULL,NULL),(98,115,'a',0,NULL,NULL),(99,114,'a',0,NULL,NULL),(100,116,'a',0,NULL,NULL),(101,117,'a',0,NULL,NULL),(102,118,'a',0,NULL,NULL),(103,119,'a',0,NULL,NULL),(104,120,'a',0,NULL,NULL),(105,121,'a',0,NULL,NULL),(106,122,'a',0,NULL,NULL),(107,124,'a',0,NULL,NULL),(108,125,'a',0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=399 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,18),(2,2,3),(3,3,3),(4,4,13),(5,5,11),(6,6,12),(7,7,3),(8,8,14),(9,8,8),(10,8,10),(11,8,9),(12,8,6),(13,8,3),(14,9,3),(15,10,18),(16,11,11),(17,12,7),(18,13,3),(19,14,10),(20,14,9),(21,14,14),(22,14,6),(23,14,8),(24,14,3),(25,15,5),(26,16,11),(27,17,3),(28,18,1),(29,19,3),(30,20,2),(31,21,3),(32,22,11),(33,23,53),(34,24,53),(35,25,56),(36,25,53),(37,26,53),(38,27,53),(39,28,53),(40,28,57),(41,29,53),(42,30,53),(43,31,51),(44,32,53),(45,33,53),(46,33,55),(47,34,52),(48,34,53),(49,35,53),(50,35,56),(51,36,61),(52,37,62),(53,38,62),(54,39,62),(55,40,63),(56,40,64),(57,40,65),(58,40,66),(59,41,66),(60,41,64),(61,41,65),(62,41,63),(63,42,62),(64,43,68),(65,44,66),(66,44,65),(67,44,64),(68,44,63),(69,44,62),(70,45,65),(71,45,64),(72,45,66),(73,45,63),(74,46,63),(75,46,64),(76,46,65),(77,46,66),(78,47,62),(79,48,62),(80,49,70),(81,49,67),(82,50,66),(83,50,65),(84,50,63),(85,50,64),(86,51,83),(87,51,75),(88,51,74),(89,52,83),(90,52,74),(91,52,75),(92,53,63),(93,53,66),(94,53,64),(95,53,65),(96,54,83),(97,54,74),(98,54,75),(99,55,69),(100,56,84),(101,57,83),(102,58,75),(103,58,74),(104,59,79),(105,59,75),(106,59,74),(107,60,75),(108,60,81),(109,60,74),(110,61,83),(111,61,74),(112,61,75),(113,62,75),(114,62,74),(115,62,79),(116,63,83),(117,64,103),(118,64,88),(119,64,86),(120,64,99),(121,65,88),(122,65,99),(123,65,86),(124,65,103),(125,66,99),(126,66,86),(127,66,103),(128,66,88),(129,67,94),(130,67,103),(131,67,88),(132,67,99),(133,67,86),(134,68,88),(135,68,103),(136,68,86),(137,68,99),(138,69,104),(139,69,107),(140,69,92),(141,69,91),(142,70,86),(143,70,103),(144,70,88),(145,70,99),(146,71,88),(147,71,86),(148,71,103),(149,71,99),(150,72,91),(151,72,92),(152,72,107),(153,72,104),(154,73,105),(155,74,100),(156,74,104),(157,74,92),(158,74,91),(159,74,107),(160,75,99),(161,75,86),(162,75,103),(163,75,88),(164,76,104),(165,76,107),(166,76,92),(167,76,91),(168,77,104),(169,77,107),(170,77,91),(171,77,92),(172,78,103),(173,79,99),(174,79,86),(175,79,103),(176,79,88),(177,80,86),(178,80,99),(179,80,103),(180,80,88),(181,81,92),(182,81,104),(183,81,91),(184,81,107),(185,82,94),(186,82,86),(187,82,103),(188,82,88),(189,82,99),(190,83,92),(191,83,107),(192,83,91),(193,83,104),(194,84,91),(195,84,107),(196,84,92),(197,84,104),(198,85,92),(199,85,107),(200,85,91),(201,85,104),(202,86,86),(203,86,103),(204,86,88),(205,86,99),(206,87,107),(207,88,104),(208,88,107),(209,88,92),(210,88,91),(211,89,91),(212,89,107),(213,89,104),(214,89,92),(215,89,100),(216,90,108),(217,91,104),(218,91,107),(219,91,91),(220,91,92),(221,92,33),(222,92,22),(223,92,47),(224,92,32),(225,92,25),(226,92,27),(227,93,27),(228,93,25),(229,93,22),(230,93,32),(231,93,33),(232,93,47),(233,94,25),(234,94,27),(235,94,22),(236,94,31),(237,94,47),(238,94,32),(239,94,20),(240,94,33),(241,95,25),(242,95,22),(243,95,27),(244,95,47),(245,95,32),(246,95,33),(247,96,34),(248,97,20),(249,98,22),(250,98,33),(251,98,31),(252,98,32),(253,98,25),(254,98,47),(255,98,27),(256,99,20),(257,99,25),(258,99,22),(259,99,27),(260,99,47),(261,99,32),(262,99,33),(263,99,31),(264,100,22),(265,100,25),(266,100,44),(267,100,27),(268,100,47),(269,100,32),(270,100,33),(271,101,22),(272,101,25),(273,101,27),(274,101,47),(275,101,32),(276,101,33),(277,102,34),(278,103,20),(279,104,47),(280,104,27),(281,104,25),(282,104,22),(283,104,33),(284,104,32),(285,105,33),(286,105,32),(287,105,20),(288,105,22),(289,105,25),(290,105,27),(291,105,47),(292,105,31),(293,106,20),(294,107,22),(295,107,25),(296,107,33),(297,107,47),(298,107,32),(299,107,27),(300,108,25),(301,108,21),(302,108,22),(303,108,47),(304,108,33),(305,108,32),(306,108,27),(307,109,20),(308,110,32),(309,110,33),(310,110,47),(311,110,20),(312,110,22),(313,110,23),(314,110,25),(315,110,27),(316,111,34),(317,112,20),(318,112,22),(319,112,31),(320,112,32),(321,112,33),(322,112,27),(323,112,47),(324,112,25),(325,113,27),(326,113,25),(327,113,47),(328,113,31),(329,113,33),(330,113,32),(331,113,22),(332,113,20),(333,114,25),(334,114,27),(335,114,47),(336,114,32),(337,114,33),(338,114,22),(339,115,32),(340,115,33),(341,115,47),(342,115,45),(343,115,27),(344,115,25),(345,115,22),(346,116,47),(347,116,32),(348,116,33),(349,116,27),(350,116,25),(351,116,22),(352,117,25),(353,117,27),(354,117,22),(355,117,33),(356,117,32),(357,117,31),(358,117,47),(359,118,27),(360,118,25),(361,118,22),(362,118,33),(363,118,20),(364,118,47),(365,118,32),(366,118,31),(367,119,47),(368,120,25),(369,120,45),(370,120,27),(371,120,33),(372,120,47),(373,120,32),(374,120,31),(375,120,38),(376,120,20),(377,120,21),(378,120,22),(379,121,38),(380,121,32),(381,121,33),(382,121,45),(383,121,47),(384,121,31),(385,121,22),(386,121,25),(387,121,20),(388,121,27),(389,121,21),(390,122,22),(391,122,33),(392,122,47),(393,122,32),(394,122,44),(395,122,27),(396,122,25),(397,123,19),(398,124,20);
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
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,18,'<com.go108.lic.util.SmsReceiver: long getThreadId()>',17,'p',NULL),(2,3,'<com.go108.lic.MainActivity: void onClick(android.view.View)>',101,'a',NULL),(3,3,'<com.go108.lic.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(4,19,'<com.go108.lic.menu.AboutActivity$1: void onClick(android.content.DialogInterface,int)>',13,'a',NULL),(5,20,'<com.go108.lic.dialog.PopupShow: void readContactst_1()>',22,'p',NULL),(6,21,'<com.go108.lic.dialog.PopupShow$15: void onClick(android.view.View)>',30,'a',NULL),(7,3,'<com.go108.lic.MainActivity: void readInfo()>',24,'a',NULL),(8,22,'<com.go108.lic.util.APNOpera: java.lang.String readCurrentAPN()>',10,'p',NULL),(9,3,'<com.go108.lic.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(10,23,'<com.go108.lic.util.SmsReceiver$1: void run()>',11,'p',NULL),(11,20,'<com.go108.lic.dialog.PopupShow: void readContactst_1()>',4,'p',NULL),(12,7,'<com.go108.lic.LovingInputActivity: void pay()>',46,'a',NULL),(13,3,'<com.go108.lic.MainActivity: void onClick(android.view.View)>',12,'a',NULL),(14,22,'<com.go108.lic.util.APNOpera: long getPreferredApnId()>',5,'p',NULL),(15,5,'<com.go108.lic.SingleInputActivity: void pay()>',19,'a',NULL),(16,24,'<com.go108.lic.dialog.ReadContacts2Utils: java.util.ArrayList readContactst(android.app.Activity)>',26,'p',NULL),(17,3,'<com.go108.lic.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',24,'a',NULL),(18,25,'<com.go108.lic.StartupActivity$2: void run()>',5,'a',0),(19,3,'<com.go108.lic.MainActivity: void onClick(android.view.View)>',20,'a',NULL),(20,2,'<com.go108.lic.InputActivity: void save()>',37,'a',NULL),(21,3,'<com.go108.lic.MainActivity: void onClick(android.view.View)>',72,'a',NULL),(22,24,'<com.go108.lic.dialog.ReadContacts2Utils: java.util.ArrayList readContactst(android.app.Activity)>',3,'p',NULL),(23,60,'<com.go108.lic.free.MainActivity: void onClick(android.view.View)>',20,'a',NULL),(24,60,'<com.go108.lic.free.MainActivity: void onClick(android.view.View)>',24,'a',NULL),(25,92,'<com.go108.lic.free.util.APNOpera: long getPreferredApnId()>',5,'p',NULL),(26,60,'<com.go108.lic.free.MainActivity: void onClick(android.view.View)>',12,'a',NULL),(27,93,'<com.go108.lic.free.MainActivity$2: void onClick(android.view.View)>',7,'a',NULL),(28,94,'<com.go108.lic.free.menu.AboutActivity$1: void onClick(android.content.DialogInterface,int)>',13,'a',NULL),(29,60,'<com.go108.lic.free.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(30,60,'<com.go108.lic.free.MainActivity: void doSMS()>',5,'a',NULL),(31,95,'<com.go108.lic.free.StartupActivity$2: void run()>',5,'a',0),(32,60,'<com.go108.lic.free.MainActivity: void readInfo()>',24,'a',NULL),(33,62,'<com.go108.lic.free.MoreExctingActivity: void linkSite(com.go108.lic.free.ExctingProductBean)>',14,'a',NULL),(34,59,'<com.go108.lic.free.InputActivity: void save()>',37,'a',NULL),(35,92,'<com.go108.lic.free.util.APNOpera: java.lang.String readCurrentAPN()>',10,'p',NULL),(36,96,'<com.talkweb.easy.a: void run()>',11,'a',NULL),(37,69,'<com.heroit.iching.lite.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(38,97,'<a.a.a.a.a: java.lang.String a()>',18,'p',NULL),(39,69,'<com.heroit.iching.lite.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(40,98,'<com.heroit.iching.lite.an: void onClick(android.view.View)>',7,'a',NULL),(41,99,'<com.heroit.iching.lite.ah: void onClick(android.view.View)>',7,'a',NULL),(42,69,'<com.heroit.iching.lite.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',76,'a',NULL),(43,75,'<com.heroit.iching.lite.HistoryListActivity: void d()>',7,'a',NULL),(44,109,'<com.heroit.iching.lite.r: void onClick(android.view.View)>',7,'a',NULL),(45,71,'<com.heroit.iching.lite.ShakeActivity: void f(com.heroit.iching.lite.ShakeActivity)>',50,'a',NULL),(46,123,'<com.heroit.iching.lite.ao: void onClick(android.view.View)>',17,'a',NULL),(47,97,'<a.a.a.a.a: java.lang.String a()>',5,'p',NULL),(48,69,'<com.heroit.iching.lite.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',73,'a',NULL),(49,77,'<com.talkweb.easy.MoreExctingActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',25,'a',NULL),(50,70,'<com.heroit.iching.lite.InputActivity: void a(com.heroit.iching.lite.InputActivity,java.lang.Boolean)>',72,'a',NULL),(51,90,'<com.talkweb.imoney.god.GodMainActivity: void b()>',10,'a',NULL),(52,126,'<com.talkweb.imoney.god.g: void onClick(android.view.View)>',11,'a',NULL),(53,127,'<com.heroit.iching.lite.al: void onClick(android.view.View)>',7,'a',NULL),(54,128,'<com.talkweb.imoney.god.a: void onClick(android.view.View)>',11,'a',NULL),(55,129,'<com.heroit.iching.lite.n: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(56,91,'<com.talkweb.comm.MoreExctingActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',25,'a',NULL),(57,90,'<com.talkweb.imoney.god.GodMainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',21,'a',NULL),(58,130,'<com.talkweb.imoney.almanac.b: void onClick(android.view.View)>',28,'a',NULL),(59,86,'<com.talkweb.imoney.ball.BallActivity: void onClick(android.view.View)>',10,'a',NULL),(60,88,'<com.talkweb.imoney.ball.SimulateBuyActivity: void onClick(android.view.View)>',108,'a',NULL),(61,131,'<com.talkweb.imoney.god.b: void onClick(android.view.View)>',11,'a',NULL),(62,86,'<com.talkweb.imoney.ball.BallActivity: void onClick(android.view.View)>',51,'a',NULL),(63,90,'<com.talkweb.imoney.god.GodMainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(64,119,'<com.talkweb.imoney.god.GodMainActivity: void c()>',8,'a',NULL),(65,132,'<com.talkweb.imoney.god.s: void onClick(android.view.View)>',7,'a',NULL),(66,133,'<com.talkweb.imoney.ball.h: void onClick(android.view.View)>',9,'a',0),(67,111,'<com.talkweb.imoney.ball.BallActivity: void onClick(android.view.View)>',51,'a',NULL),(68,134,'<com.talkweb.imoney.god.b: void onClick(android.view.View)>',11,'a',NULL),(69,135,'<com.talkweb.imoney.almanac.b: void onClick(android.view.View)>',28,'a',NULL),(70,114,'<com.talkweb.imoney.ball.SimulateBuyActivity: void onClick(android.view.View)>',108,'a',NULL),(71,136,'<com.talkweb.imoney.ball.g: void onClick(android.view.View)>',11,'a',0),(72,124,'<com.talkweb.imoney.god.GodMainActivity: void b()>',10,'a',NULL),(73,121,'<com.talkweb.comm.MoreExctingActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',25,'a',NULL),(74,116,'<com.talkweb.imoney.ball.BallActivity: void onClick(android.view.View)>',10,'a',NULL),(75,137,'<com.talkweb.imoney.almanac.b: void onClick(android.view.View)>',28,'a',NULL),(76,138,'<com.talkweb.imoney.god.e: void onClick(android.view.View)>',11,'a',NULL),(77,139,'<com.talkweb.imoney.god.c: void onClick(android.view.View)>',11,'a',NULL),(78,119,'<com.talkweb.imoney.god.GodMainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(79,119,'<com.talkweb.imoney.god.GodMainActivity: void b()>',10,'a',NULL),(80,140,'<com.talkweb.imoney.god.c: void onClick(android.view.View)>',11,'a',NULL),(81,141,'<com.talkweb.imoney.god.s: void onClick(android.view.View)>',7,'a',NULL),(82,111,'<com.talkweb.imoney.ball.BallActivity: void onClick(android.view.View)>',10,'a',NULL),(83,124,'<com.talkweb.imoney.god.GodMainActivity: void c()>',8,'a',NULL),(84,142,'<com.talkweb.imoney.ball.g: void onClick(android.view.View)>',11,'a',0),(85,120,'<com.talkweb.imoney.ball.SimulateBuyActivity: void onClick(android.view.View)>',108,'a',NULL),(86,143,'<com.talkweb.imoney.god.e: void onClick(android.view.View)>',11,'a',NULL),(87,124,'<com.talkweb.imoney.god.GodMainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(88,144,'<com.talkweb.imoney.god.b: void onClick(android.view.View)>',11,'a',NULL),(89,116,'<com.talkweb.imoney.ball.BallActivity: void onClick(android.view.View)>',51,'a',NULL),(90,125,'<com.talkweb.comm.MoreExctingActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',25,'a',NULL),(91,145,'<com.talkweb.imoney.ball.h: void onClick(android.view.View)>',9,'a',0),(92,146,'<com.talkweb.qrmj.QrmjResultActivity$1: void onClick(android.view.View)>',7,'a',NULL),(93,147,'<com.talkweb.xzpd.XzpdActivity$1: void onClick(android.view.View)>',7,'a',NULL),(94,148,'<com.talkweb.main.MainActivity$7: void onClick(android.content.DialogInterface,int)>',29,'a',NULL),(95,149,'<com.talkweb.yhlq.QianResultActivity$2: void onClick(android.view.View)>',9,'a',NULL),(96,41,'<com.talkweb.mzzd.ContactActivity: void readContactst1(java.util.ArrayList)>',4,'p',NULL),(97,150,'<com.talkweb.main.MainActivity$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',48,'a',NULL),(98,38,'<com.talkweb.yhlq.YhlqActivity: void startYaoQianActivity()>',4,'a',NULL),(99,151,'<com.talkweb.net.APNOpera: java.lang.String readCurrentAPN()>',10,'p',NULL),(100,152,'<com.talkweb.yhlq.YaoQianActivity$1$1: void run()>',29,'a',NULL),(101,153,'<com.talkweb.yhlq.QianResultActivity$1: void onClick(android.view.View)>',7,'a',NULL),(102,154,'<com.talkweb.comm.Utils: void readContactst2(java.util.ArrayList,android.content.ContentResolver,android.os.Handler)>',4,'p',NULL),(103,150,'<com.talkweb.main.MainActivity$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',26,'a',NULL),(104,155,'<com.talkweb.xzpd.XzpdActivity$2: void onClick(android.view.View)>',7,'a',NULL),(105,148,'<com.talkweb.main.MainActivity$7: void onClick(android.content.DialogInterface,int)>',36,'a',NULL),(106,150,'<com.talkweb.main.MainActivity$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(107,156,'<com.talkweb.qrmj.QrmjActivity$3$1: void run()>',78,'a',NULL),(108,157,'<com.talkweb.mzzd.MzzdActivity$2: void onClick(android.view.View)>',7,'a',NULL),(109,27,'<com.talkweb.main.MainActivity: void showRecommedDialog()>',5,'a',NULL),(110,30,'<com.talkweb.comm.MoreExctingActivity: void linkSite(com.talkweb.comm.ExctingProductBean)>',14,'a',NULL),(111,154,'<com.talkweb.comm.Utils: void readContactst2(java.util.ArrayList,android.content.ContentResolver,android.os.Handler)>',25,'p',NULL),(112,148,'<com.talkweb.main.MainActivity$7: void onClick(android.content.DialogInterface,int)>',22,'a',NULL),(113,151,'<com.talkweb.net.APNOpera: long getPreferredApnId()>',5,'p',NULL),(114,158,'<com.talkweb.xzpd.XzpdFreeResultActivity$1: void onClick(android.view.View)>',7,'a',NULL),(115,159,'<com.talkweb.yhlq.CqProcessActivity$1$1: void run()>',65,'a',NULL),(116,160,'<com.talkweb.mzzd.MzzdFreeResultActivity$1: void onClick(android.view.View)>',7,'a',NULL),(117,161,'<com.talkweb.yhlq.YhlqActivity$1: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(118,148,'<com.talkweb.main.MainActivity$7: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(119,54,'<com.talkweb.yhlq.QianResultActivity: boolean onKeyDown(int,android.view.KeyEvent)>',8,'a',NULL),(120,162,'<cn.com.go108.feecontrol.APNOpera: long getPreferredApnId()>',5,'p',NULL),(121,162,'<cn.com.go108.feecontrol.APNOpera: java.lang.String readCurrentAPN()>',10,'p',NULL),(122,163,'<com.talkweb.yhlq.YaoQianActivity$3: void run()>',15,'a',NULL),(123,164,'<com.talkweb.ycya.LoginActivity$MyThread: void run()>',11,'a',NULL),(124,150,'<com.talkweb.main.MainActivity$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',12,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,5,3),(2,25,3),(3,28,4),(4,30,4),(5,31,4),(6,35,4),(7,45,4),(8,51,4),(9,52,4),(10,72,4),(11,92,4),(12,107,4),(13,108,4),(14,109,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/go108/lic/SingleInputActivity'),(2,2,'com/go108/lic/SingleInputActivity'),(3,4,'com/go108/lic/menu/ShareActivity'),(4,6,'com/go108/lic/FavoritesReviewActivity'),(5,7,'com/go108/lic/InputActivity'),(6,9,'com/go108/lic/menu/FeedbackActivity'),(7,10,'com/go108/lic/LovingResultActivity'),(8,11,'com/go108/lic/PersonModifyActivity'),(9,12,'com/go108/lic/PersonModifyActivity'),(10,13,'com/go108/lic/SingleResultActivity'),(11,15,'com/go108/lic/menu/FavoritesListActivity'),(12,16,'com/go108/lic/PersonModifyActivity'),(13,17,'com/go108/lic/PersonModifyActivity'),(14,18,'com/go108/lic/MainActivity'),(15,19,'com/go108/lic/LovingInputActivity'),(16,20,'com/go108/lic/LovingInputActivity'),(17,21,'com/go108/lic/free/PersonModifyActivity'),(18,22,'com/go108/lic/free/MoreExctingActivity'),(19,23,'com/go108/lic/free/PersonModifyActivity'),(20,24,'com/go108/lic/free/MoreExctingActivity'),(21,27,'com/go108/lic/free/menu/FeedbackActivity'),(22,29,'com/go108/lic/free/InputActivity'),(23,32,'com/go108/lic/free/MainActivity'),(24,33,'com/heroit/iching/lite/MainActivity'),(25,34,'com/talkweb/easy/MoreExctingActivity'),(26,36,'com/heroit/iching/lite/InputActivity'),(27,37,'com/heroit/iching/lite/SchoolActivity'),(28,38,'com/talkweb/easy/MenuInfoActivity'),(29,40,'com/heroit/iching/lite/ResultActivity'),(30,41,'com/heroit/iching/lite/InputActivity'),(31,42,'com/heroit/iching/lite/ResultActivity'),(32,43,'com/heroit/iching/lite/MasterActivity'),(33,44,'com/talkweb/easy/VersionInfoActivity'),(34,47,'com/talkweb/imoney/util/BirthdayInputActivity'),(35,46,'com/heroit/iching/lite/ShakeActivity'),(36,48,'com/talkweb/imoney/guagua/GuaGuaActivity'),(37,49,'com/talkweb/easy/MoreExctingActivity'),(38,50,'com/talkweb/imoney/ball/BallActivity'),(39,53,'com/talkweb/comm/MoreExctingActivity'),(40,54,'com/talkweb/imoney/almanac/QueryAlmanacActivity'),(41,55,'com/talkweb/imoney/ball/ResultShowActivity'),(42,56,'com/talkweb/imoney/ball/ResultShowActivity'),(43,57,'com/talkweb/imoney/ball/BallChooseActivity'),(44,58,'com/talkweb/imoney/almanac/AlmanacActivity'),(45,60,'com/talkweb/imoney/ball/ResultShowActivity'),(46,61,'com/talkweb/imoney/ball/SimulateBuyActivity'),(47,62,'com/talkweb/imoney/util/BirthdayInputActivity'),(48,63,'com/talkweb/imoney/util/BirthdayInputActivity'),(49,64,'com/talkweb/comm/MoreExctingActivity'),(50,66,'com/talkweb/imoney/ball/ResultShowActivity'),(51,67,'com/talkweb/imoney/ball/SimulateBuyActivity'),(52,68,'com/talkweb/imoney/almanac/AlmanacActivity'),(53,70,'com/talkweb/imoney/ball/BallChooseActivity'),(54,69,'com/talkweb/imoney/almanac/QueryAlmanacActivity'),(55,71,'com/talkweb/imoney/util/BirthdayInputActivity'),(56,73,'com/talkweb/imoney/ball/ResultShowActivity'),(57,74,'com/talkweb/imoney/ball/ResultShowActivity'),(58,75,'com/talkweb/imoney/almanac/QueryAlmanacActivity'),(59,76,'com/talkweb/imoney/ball/BallActivity'),(60,77,'com/talkweb/imoney/guagua/GuaGuaActivity'),(61,78,'com/talkweb/comm/MoreExctingActivity'),(62,79,'com/talkweb/imoney/util/BirthdayInputActivity'),(63,80,'com/talkweb/imoney/guagua/GuaGuaActivity'),(64,81,'com/talkweb/comm/MoreExctingActivity'),(65,82,'com/talkweb/imoney/ball/ResultShowActivity'),(66,83,'com/talkweb/imoney/util/BirthdayInputActivity'),(67,84,'com/talkweb/imoney/ball/ResultShowActivity'),(68,85,'com/talkweb/imoney/ball/BallChooseActivity'),(69,86,'com/talkweb/imoney/ball/BallActivity'),(70,87,'com/talkweb/comm/MoreExctingActivity'),(71,88,'com/talkweb/imoney/almanac/AlmanacActivity'),(72,90,'com/talkweb/imoney/ball/ResultShowActivity'),(73,91,'com/talkweb/imoney/ball/SimulateBuyActivity'),(74,93,'com/talkweb/comm/MoreExctingActivity'),(75,94,'com/talkweb/xzpd/XzpdXzxzActivity'),(76,95,'com/talkweb/menu/WebIntroActivity'),(77,96,'com/talkweb/main/MainActivity'),(78,97,'com/talkweb/qrmj/QrmjActivity'),(79,98,'com/talkweb/yhlq/YaoQianActivity'),(80,99,'com/talkweb/yhlq/ZhiJiaoActivity'),(81,100,'com/talkweb/comm/MoreExctingActivity'),(82,101,'com/talkweb/yhlq/YhlqActivity'),(83,102,'com/talkweb/xzpd/XzpdXzxzActivity'),(84,103,'com/talkweb/comm/MoreExctingActivity'),(85,104,'com/talkweb/xzpd/XzpdActivity'),(86,105,'com/talkweb/qrmj/QrmjResultActivity'),(87,106,'com/talkweb/mzzd/ContactActivity'),(88,110,'com/talkweb/menu/CompanyIntroActivity'),(89,111,'com/talkweb/comm/MoreExctingActivity'),(90,112,'com/talkweb/yhlq/QianResultActivity'),(91,113,'com/talkweb/comm/MoreExctingActivity'),(92,114,'com/talkweb/yhlq/QianResultActivity'),(93,115,'com/talkweb/menu/HelpActivity'),(94,116,'com/talkweb/main/MainActivity'),(95,117,'com/talkweb/yhlq/ZhiJiaoActivity'),(96,118,'com/talkweb/main/MainActivity'),(97,119,'com/talkweb/mzzd/MzzdActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,5,2),(2,25,11),(3,30,12),(4,31,13),(5,45,17),(6,51,18),(7,52,19),(8,72,20),(9,92,21),(10,108,25),(11,109,26);
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
) ENGINE=InnoDB AUTO_INCREMENT=294 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'loveState'),(2,1,'taMonth'),(3,1,'myTime'),(4,1,'taGender'),(5,1,'feeinfo_feeValue'),(6,1,'feeinfo_feeCode'),(7,1,'myGender'),(8,1,'myGenderStr'),(9,1,'myYear'),(10,1,'myMonth'),(11,1,'feeinfo_issFee'),(12,1,'taTime'),(13,1,'myId'),(14,1,'taDay'),(15,1,'taGenderStr'),(16,1,'loveStateStr'),(17,1,'myDay'),(18,1,'taName'),(19,1,'feeinfo_feeNumber'),(20,1,'myName'),(21,1,'feeinfo_feeInfo'),(22,1,'taYear'),(23,1,'taId'),(24,2,'loveState'),(25,2,'taMonth'),(26,2,'myTime'),(27,2,'taGender'),(28,2,'feeinfo_feeValue'),(29,2,'feeinfo_feeCode'),(30,2,'myGender'),(31,2,'myYear'),(32,2,'myGenderStr'),(33,2,'myMonth'),(34,2,'feeinfo_issFee'),(35,2,'taTime'),(36,2,'myId'),(37,2,'taGenderStr'),(38,2,'taDay'),(39,2,'loveStateStr'),(40,2,'myDay'),(41,2,'taName'),(42,2,'feeinfo_feeNumber'),(43,2,'modifyFlag'),(44,2,'myName'),(45,2,'feeinfo_feeInfo'),(46,2,'taId'),(47,2,'taYear'),(48,6,'productId'),(49,10,'monthChoice'),(50,10,'gender_2'),(51,10,'gender_1'),(52,10,'birthday_2'),(53,10,'birthday_1'),(54,11,'loveState'),(55,11,'taMonth'),(56,11,'myTime'),(57,11,'taGender'),(58,11,'myGender'),(59,11,'myGenderStr'),(60,11,'myYear'),(61,11,'myMonth'),(62,11,'taTime'),(63,11,'myId'),(64,11,'taGenderStr'),(65,11,'taDay'),(66,11,'loveStateStr'),(67,11,'myDay'),(68,11,'taName'),(69,11,'modifyFlag'),(70,11,'myName'),(71,11,'taYear'),(72,11,'taId'),(73,12,'loveState'),(74,12,'taMonth'),(75,12,'myTime'),(76,12,'taGender'),(77,12,'feeinfo_feeValue'),(78,12,'feeinfo_feeCode'),(79,12,'myGender'),(80,12,'myYear'),(81,12,'myGenderStr'),(82,12,'myMonth'),(83,12,'feeinfo_issFee'),(84,12,'taTime'),(85,12,'myId'),(86,12,'taGenderStr'),(87,12,'taDay'),(88,12,'loveStateStr'),(89,12,'myDay'),(90,12,'taName'),(91,12,'feeinfo_feeNumber'),(92,12,'modifyFlag'),(93,12,'myName'),(94,12,'feeinfo_feeInfo'),(95,12,'taId'),(96,12,'taYear'),(97,13,'singleGender'),(98,13,'singleName'),(99,16,'loveState'),(100,16,'taMonth'),(101,16,'myTime'),(102,16,'taGender'),(103,16,'myGender'),(104,16,'myGenderStr'),(105,16,'myYear'),(106,16,'myMonth'),(107,16,'taTime'),(108,16,'myId'),(109,16,'taGenderStr'),(110,16,'taDay'),(111,16,'loveStateStr'),(112,16,'myDay'),(113,16,'taName'),(114,16,'modifyFlag'),(115,16,'myName'),(116,16,'taYear'),(117,16,'taId'),(118,17,'loveState'),(119,17,'taMonth'),(120,17,'myTime'),(121,17,'taGender'),(122,17,'feeinfo_feeValue'),(123,17,'feeinfo_feeCode'),(124,17,'myGender'),(125,17,'myYear'),(126,17,'myGenderStr'),(127,17,'myMonth'),(128,17,'feeinfo_issFee'),(129,17,'taTime'),(130,17,'myId'),(131,17,'taGenderStr'),(132,17,'taDay'),(133,17,'loveStateStr'),(134,17,'myDay'),(135,17,'taName'),(136,17,'feeinfo_feeNumber'),(137,17,'modifyFlag'),(138,17,'myName'),(139,17,'feeinfo_feeInfo'),(140,17,'taId'),(141,17,'taYear'),(142,18,'readFlag'),(143,19,'loveState'),(144,19,'taMonth'),(145,19,'myTime'),(146,19,'taGender'),(147,19,'feeinfo_feeValue'),(148,19,'feeinfo_feeCode'),(149,19,'myGender'),(150,19,'myYear'),(151,19,'myGenderStr'),(152,19,'myMonth'),(153,19,'feeinfo_issFee'),(154,19,'taTime'),(155,19,'myId'),(156,19,'taGenderStr'),(157,19,'taDay'),(158,19,'loveStateStr'),(159,19,'myDay'),(160,19,'taName'),(161,19,'feeinfo_feeNumber'),(162,19,'modifyFlag'),(163,19,'myName'),(164,19,'feeinfo_feeInfo'),(165,19,'taId'),(166,19,'taYear'),(167,20,'loveState'),(168,20,'taMonth'),(169,20,'myTime'),(170,20,'taGender'),(171,20,'feeinfo_feeValue'),(172,20,'feeinfo_feeCode'),(173,20,'myGender'),(174,20,'myGenderStr'),(175,20,'myYear'),(176,20,'myMonth'),(177,20,'feeinfo_issFee'),(178,20,'taTime'),(179,20,'myId'),(180,20,'taDay'),(181,20,'taGenderStr'),(182,20,'loveStateStr'),(183,20,'myDay'),(184,20,'taName'),(185,20,'feeinfo_feeNumber'),(186,20,'myName'),(187,20,'feeinfo_feeInfo'),(188,20,'taYear'),(189,20,'taId'),(190,21,'loveState'),(191,21,'taMonth'),(192,21,'myTime'),(193,21,'taGender'),(194,21,'myGender'),(195,21,'myGenderStr'),(196,21,'myYear'),(197,21,'myMonth'),(198,21,'taTime'),(199,21,'myId'),(200,21,'taGenderStr'),(201,21,'taDay'),(202,21,'loveStateStr'),(203,21,'myDay'),(204,21,'taName'),(205,21,'modifyFlag'),(206,21,'myName'),(207,21,'taYear'),(208,21,'taId'),(209,23,'loveState'),(210,23,'taMonth'),(211,23,'myTime'),(212,23,'taGender'),(213,23,'myGender'),(214,23,'myGenderStr'),(215,23,'myYear'),(216,23,'myMonth'),(217,23,'taTime'),(218,23,'myId'),(219,23,'taGenderStr'),(220,23,'taDay'),(221,23,'loveStateStr'),(222,23,'myDay'),(223,23,'taName'),(224,23,'modifyFlag'),(225,23,'myName'),(226,23,'taYear'),(227,23,'taId'),(228,28,'sms_body'),(229,32,'readFlag'),(230,33,'appload'),(231,35,'sms_body'),(232,39,'birthday'),(233,39,'time'),(234,39,'sex'),(235,39,'hex'),(236,39,'save'),(237,39,'name'),(238,39,'type'),(239,39,'isPaid'),(240,40,'birthday'),(241,40,'time'),(242,40,'sex'),(243,40,'hex'),(244,40,'save'),(245,40,'name'),(246,40,'type'),(247,40,'isPaid'),(248,42,'(.*)'),(249,43,'birthday'),(250,43,'relation'),(251,43,'gender'),(252,46,'birthday'),(253,46,'sex'),(254,47,'isqd'),(255,46,'name'),(256,46,'type'),(257,46,'isAuto'),(258,54,'currentDay'),(259,54,'currentYear'),(260,54,'currentMonth'),(261,56,'AUTO_CHOOSE_NUMBERS'),(262,59,'AUTO_CHOOSE_NUMBERS'),(263,60,'AUTO_CHOOSE_NUMBERS'),(264,61,'AUTO_CHOOSE_NUMBERS'),(265,62,'isqd'),(266,63,'isqd'),(267,65,'AUTO_CHOOSE_NUMBERS'),(268,66,'AUTO_CHOOSE_NUMBERS'),(269,67,'AUTO_CHOOSE_NUMBERS'),(270,69,'currentDay'),(271,69,'currentYear'),(272,69,'currentMonth'),(273,71,'isqd'),(274,74,'AUTO_CHOOSE_NUMBERS'),(275,75,'currentDay'),(276,75,'currentYear'),(277,75,'currentMonth'),(278,79,'isqd'),(279,83,'isqd'),(280,84,'AUTO_CHOOSE_NUMBERS'),(281,89,'AUTO_CHOOSE_NUMBERS'),(282,90,'AUTO_CHOOSE_NUMBERS'),(283,91,'AUTO_CHOOSE_NUMBERS'),(284,97,'loverInfoArray'),(285,99,'time'),(286,105,'strArray'),(287,107,'sms_body'),(288,112,'strArray'),(289,112,'str'),(290,114,'strArray'),(291,114,'str'),(292,117,'time'),(293,118,'appload');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,28,'vnd.android-dir','mms-sms'),(2,35,'vnd.android-dir','mms-sms'),(3,107,'vnd.android-dir','mms-sms');
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
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.go108.lic'),(2,2,'com.go108.lic'),(3,4,'com.go108.lic'),(4,6,'com.go108.lic'),(5,7,'com.go108.lic'),(6,9,'com.go108.lic'),(7,10,'com.go108.lic'),(8,11,'com.go108.lic'),(9,12,'com.go108.lic'),(10,13,'com.go108.lic'),(11,15,'com.go108.lic'),(12,16,'com.go108.lic'),(13,17,'com.go108.lic'),(14,18,'com.go108.lic'),(15,19,'com.go108.lic'),(16,20,'com.go108.lic'),(17,21,'com.go108.lic.free'),(18,22,'com.go108.lic.free'),(19,23,'com.go108.lic.free'),(20,24,'com.go108.lic.free'),(21,27,'com.go108.lic.free'),(22,29,'com.go108.lic.free'),(23,32,'com.go108.lic.free'),(24,33,'com.heroit.iching.lite'),(25,34,'com.heroit.iching.lite'),(26,36,'com.heroit.iching.lite'),(27,37,'com.heroit.iching.lite'),(28,38,'com.heroit.iching.lite'),(29,40,'com.heroit.iching.lite'),(30,41,'com.heroit.iching.lite'),(31,42,'com.heroit.iching.lite'),(32,43,'com.heroit.iching.lite'),(33,44,'com.heroit.iching.lite'),(34,47,'com.talkweb.imoney'),(35,46,'com.heroit.iching.lite'),(36,48,'com.talkweb.imoney'),(37,49,'com.heroit.iching.lite'),(38,50,'com.talkweb.imoney'),(39,53,'com.talkweb.imoney'),(40,54,'com.talkweb.imoney'),(41,55,'com.talkweb.imoney'),(42,56,'com.talkweb.imoney'),(43,57,'com.talkweb.imoney'),(44,58,'com.talkweb.imoney'),(45,60,'com.talkweb.imoney'),(46,61,'com.talkweb.imoney'),(47,62,'com.talkweb.imoney'),(48,63,'com.talkweb.imoney'),(49,64,'com.talkweb.imoney'),(50,66,'com.talkweb.imoney'),(51,67,'com.talkweb.imoney'),(52,68,'com.talkweb.imoney'),(53,70,'com.talkweb.imoney'),(54,69,'com.talkweb.imoney'),(55,71,'com.talkweb.imoney'),(56,73,'com.talkweb.imoney'),(57,74,'com.talkweb.imoney'),(58,75,'com.talkweb.imoney'),(59,76,'com.talkweb.imoney'),(60,77,'com.talkweb.imoney'),(61,78,'com.talkweb.imoney'),(62,79,'com.talkweb.imoney'),(63,80,'com.talkweb.imoney'),(64,81,'com.talkweb.imoney'),(65,82,'com.talkweb.imoney'),(66,83,'com.talkweb.imoney'),(67,84,'com.talkweb.imoney'),(68,85,'com.talkweb.imoney'),(69,86,'com.talkweb.imoney'),(70,87,'com.talkweb.imoney'),(71,88,'com.talkweb.imoney'),(72,90,'com.talkweb.imoney'),(73,91,'com.talkweb.imoney'),(74,93,'com.talkweb.ycya.free'),(75,94,'com.talkweb.ycya.free'),(76,95,'com.talkweb.ycya.free'),(77,96,'com.talkweb.ycya.free'),(78,97,'com.talkweb.ycya.free'),(79,98,'com.talkweb.ycya.free'),(80,99,'com.talkweb.ycya.free'),(81,100,'com.talkweb.ycya.free'),(82,101,'com.talkweb.ycya.free'),(83,102,'com.talkweb.ycya.free'),(84,103,'com.talkweb.ycya.free'),(85,104,'com.talkweb.ycya.free'),(86,105,'com.talkweb.ycya.free'),(87,106,'com.talkweb.ycya.free'),(88,110,'com.talkweb.ycya.free'),(89,111,'com.talkweb.ycya.free'),(90,112,'com.talkweb.ycya.free'),(91,113,'com.talkweb.ycya.free'),(92,114,'com.talkweb.ycya.free'),(93,115,'com.talkweb.ycya.free'),(94,116,'com.talkweb.ycya.free'),(95,117,'com.talkweb.ycya.free'),(96,118,'com.talkweb.ycya.free'),(97,119,'com.talkweb.ycya.free');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,18,0),(3,19,0),(4,51,0),(5,61,0),(6,73,0),(7,85,0),(8,87,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,2,0,0),(2,2,0,0),(3,3,1,0),(4,3,0,0),(5,4,1,0),(6,6,0,0),(7,7,0,0),(8,9,1,0),(9,9,0,0),(10,12,0,0),(11,13,0,0),(12,13,0,0),(13,15,0,0),(14,17,1,0),(15,17,0,0),(16,19,0,0),(17,19,0,0),(18,20,0,0),(19,21,0,0),(20,21,0,0),(21,23,0,0),(22,24,0,0),(23,26,0,0),(24,27,0,0),(25,28,1,0),(26,29,1,0),(27,29,0,0),(28,30,1,0),(29,32,0,0),(30,33,1,0),(31,33,1,0),(32,34,0,0),(33,36,0,0),(34,37,0,0),(35,39,1,0),(36,40,0,0),(37,41,0,0),(38,42,0,0),(39,43,1,0),(40,43,0,0),(41,44,0,0),(42,45,0,0),(43,46,0,0),(44,48,0,0),(45,49,1,0),(46,50,0,0),(47,51,0,0),(48,52,0,0),(49,53,0,0),(50,54,0,0),(51,55,1,0),(52,56,1,0),(53,57,0,0),(54,58,0,0),(55,59,0,0),(56,59,0,0),(57,60,0,0),(58,61,0,0),(59,62,1,0),(60,62,0,0),(61,62,0,0),(62,63,0,0),(63,64,0,0),(64,65,0,0),(65,67,1,0),(66,67,0,0),(67,67,0,0),(68,68,0,0),(69,69,0,0),(70,70,0,0),(71,72,0,0),(72,73,1,0),(73,74,0,0),(74,74,0,0),(75,75,0,0),(76,76,0,0),(77,77,0,0),(78,78,0,0),(79,79,0,0),(80,80,0,0),(81,81,0,0),(82,82,0,0),(83,83,0,0),(84,82,0,0),(85,85,0,0),(86,86,0,0),(87,87,0,0),(88,88,0,0),(89,89,1,0),(90,89,0,0),(91,89,0,0),(92,90,1,0),(93,92,0,0),(94,93,0,0),(95,94,0,0),(96,95,0,0),(97,97,0,0),(98,98,0,0),(99,100,0,0),(100,101,0,0),(101,103,0,0),(102,104,0,0),(103,105,0,0),(104,106,0,0),(105,107,0,0),(106,108,0,0),(107,109,1,0),(108,110,1,0),(109,110,1,0),(110,112,0,0),(111,114,0,0),(112,115,0,0),(113,116,0,0),(114,117,0,0),(115,118,0,0),(116,119,0,0),(117,122,0,0),(118,123,0,0),(119,124,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,3,61,2,NULL),(2,8,61,2,NULL),(3,14,61,2,NULL),(4,108,61,2,NULL),(5,26,61,2,NULL),(6,31,61,2,NULL),(7,39,61,2,NULL),(8,45,61,2,NULL),(9,59,61,2,NULL),(10,52,61,2,NULL),(11,65,61,2,NULL),(12,72,61,2,NULL),(13,89,61,2,NULL),(14,92,61,2,NULL),(15,34,70,2,NULL),(16,38,71,2,NULL),(17,44,72,2,NULL),(18,46,64,2,NULL),(19,42,65,2,NULL),(20,40,65,2,NULL),(21,39,1,2,NULL),(22,39,18,2,NULL),(23,39,19,2,NULL),(24,39,51,2,NULL),(25,39,73,2,NULL),(26,39,85,2,NULL),(27,39,87,2,NULL),(28,45,1,2,NULL),(29,45,18,2,NULL),(30,45,19,2,NULL),(31,45,51,2,NULL),(32,45,73,2,NULL),(33,45,85,2,NULL),(34,45,87,2,NULL),(35,3,19,2,NULL),(36,8,19,2,NULL),(37,14,19,2,NULL),(38,108,19,2,NULL),(39,26,19,2,NULL),(40,31,19,2,NULL),(41,59,19,2,NULL),(42,52,19,2,NULL),(43,65,19,2,NULL),(44,72,19,2,NULL),(45,89,19,2,NULL),(46,92,19,2,NULL),(47,108,1,2,NULL),(48,108,18,2,NULL),(49,108,51,2,NULL),(50,108,73,2,NULL),(51,108,85,2,NULL),(52,108,87,2,NULL),(53,98,44,2,NULL),(54,116,20,2,NULL),(55,3,73,2,NULL),(56,8,73,2,NULL),(57,14,73,2,NULL),(58,26,73,2,NULL),(59,31,73,2,NULL),(60,59,73,2,NULL),(61,52,73,2,NULL),(62,65,73,2,NULL),(63,72,73,2,NULL),(64,89,73,2,NULL),(65,92,73,2,NULL),(66,55,80,2,NULL),(67,55,96,2,NULL),(68,55,102,2,NULL),(69,56,80,2,NULL),(70,56,96,2,NULL),(71,56,102,2,NULL),(72,60,80,2,NULL),(73,60,96,2,NULL),(74,60,102,2,NULL),(75,61,81,2,NULL),(76,61,99,2,NULL),(77,61,104,2,NULL),(78,59,1,2,NULL),(79,59,18,2,NULL),(80,59,51,2,NULL),(81,59,85,2,NULL),(82,59,87,2,NULL),(83,57,82,2,NULL),(84,57,101,2,NULL),(85,57,106,2,NULL),(86,47,78,2,NULL),(87,47,93,2,NULL),(88,47,98,2,NULL),(89,53,23,2,NULL),(90,53,84,2,NULL),(91,53,105,2,NULL),(92,53,108,2,NULL),(93,62,78,2,NULL),(94,62,93,2,NULL),(95,62,98,2,NULL),(96,52,1,2,NULL),(97,52,18,2,NULL),(98,52,51,2,NULL),(99,52,85,2,NULL),(100,52,87,2,NULL),(101,3,85,2,NULL),(102,8,85,2,NULL),(103,14,85,2,NULL),(104,26,85,2,NULL),(105,31,85,2,NULL),(106,65,85,2,NULL),(107,72,85,2,NULL),(108,89,85,2,NULL),(109,92,85,2,NULL),(110,66,80,2,NULL),(111,66,96,2,NULL),(112,66,102,2,NULL),(113,67,81,2,NULL),(114,67,99,2,NULL),(115,67,104,2,NULL),(116,82,80,2,NULL),(117,82,96,2,NULL),(118,82,102,2,NULL),(119,84,80,2,NULL),(120,84,96,2,NULL),(121,84,102,2,NULL),(122,65,1,2,NULL),(123,65,18,2,NULL),(124,65,51,2,NULL),(125,65,87,2,NULL),(126,70,82,2,NULL),(127,70,101,2,NULL),(128,70,106,2,NULL),(129,63,78,2,NULL),(130,63,93,2,NULL),(131,63,98,2,NULL),(132,78,23,2,NULL),(133,78,84,2,NULL),(134,78,105,2,NULL),(135,78,108,2,NULL),(136,79,78,2,NULL),(137,79,93,2,NULL),(138,79,98,2,NULL),(139,72,1,2,NULL),(140,72,18,2,NULL),(141,72,51,2,NULL),(142,72,87,2,NULL),(143,3,87,2,NULL),(144,8,87,2,NULL),(145,14,87,2,NULL),(146,26,87,2,NULL),(147,31,87,2,NULL),(148,89,87,2,NULL),(149,92,87,2,NULL),(150,73,80,2,NULL),(151,73,96,2,NULL),(152,73,102,2,NULL),(153,74,80,2,NULL),(154,74,96,2,NULL),(155,74,102,2,NULL),(156,90,80,2,NULL),(157,90,96,2,NULL),(158,90,102,2,NULL),(159,91,81,2,NULL),(160,91,99,2,NULL),(161,91,104,2,NULL),(162,89,1,2,NULL),(163,89,18,2,NULL),(164,89,51,2,NULL),(165,85,82,2,NULL),(166,85,101,2,NULL),(167,85,106,2,NULL),(168,71,78,2,NULL),(169,71,93,2,NULL),(170,71,98,2,NULL),(171,83,78,2,NULL),(172,83,93,2,NULL),(173,83,98,2,NULL),(174,87,23,2,NULL),(175,87,84,2,NULL),(176,87,105,2,NULL),(177,87,108,2,NULL),(178,92,1,2,NULL),(179,92,18,2,NULL),(180,92,51,2,NULL),(181,3,1,2,NULL),(182,8,1,2,NULL),(183,14,1,2,NULL),(184,26,1,2,NULL),(185,31,1,2,NULL),(186,18,3,2,NULL),(187,1,5,2,NULL),(188,2,5,2,NULL),(189,4,11,2,NULL),(190,7,2,2,NULL),(191,9,10,2,NULL),(192,11,4,2,NULL),(193,12,4,2,NULL),(194,15,12,2,NULL),(195,16,4,2,NULL),(196,17,4,2,NULL),(197,19,7,2,NULL),(198,20,7,2,NULL),(199,3,18,2,NULL),(200,8,18,2,NULL),(201,14,18,2,NULL),(202,3,51,2,NULL),(203,8,51,2,NULL),(204,14,51,2,NULL),(205,13,6,2,NULL),(206,10,8,2,NULL),(207,26,18,2,NULL),(208,31,18,2,NULL),(209,26,51,2,NULL),(210,31,51,2,NULL),(211,32,53,2,NULL),(212,21,54,2,NULL),(213,22,55,2,NULL),(214,23,54,2,NULL),(215,27,56,2,NULL),(216,29,52,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (13,'android.permission.ACCESS_NETWORK_STATE'),(14,'android.permission.ACCESS_WIFI_STATE'),(5,'android.permission.CALL_PHONE'),(11,'android.permission.INTERNET'),(8,'android.permission.KILL_BACKGROUND_PROCESSES'),(6,'android.permission.READ_CONTACTS'),(9,'android.permission.READ_PHONE_STATE'),(10,'android.permission.READ_SMS'),(4,'android.permission.RECEIVE_SMS'),(7,'android.permission.RESTART_PACKAGES'),(1,'android.permission.SEND_SMS'),(12,'android.permission.VIBRATE'),(2,'android.permission.WRITE_EXTERNAL_STORAGE'),(3,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(2,NULL,NULL,'tel:073184285152',NULL,NULL,NULL),(3,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(4,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(5,NULL,NULL,'content://sms/conversations/(.*)',NULL,NULL,NULL),(6,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(7,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(8,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(9,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(10,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(11,NULL,NULL,'tel:073184285152',NULL,NULL,NULL),(12,NULL,NULL,'http://www.go108.com.cn/mobile/Client/apk/lic.apk',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(15,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(16,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(23,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(24,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'http://www.go108.com.cn/mobile/Client/apk/ycya.apk',NULL,NULL,NULL),(27,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(28,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(29,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(30,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,1,1),(2,5,3),(3,8,4),(4,10,5),(5,11,6),(6,14,7),(7,16,8),(8,22,9),(9,25,10),(10,35,14),(11,38,15),(12,47,16),(13,96,22),(14,99,23),(15,102,24),(16,111,27),(17,113,28),(18,120,29),(19,121,30);
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
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,2,2),(15,2,6),(16,2,9),(17,2,11),(18,2,13),(19,2,14),(20,3,2),(21,3,7),(22,3,8),(23,3,9),(24,3,11),(25,3,12),(26,3,13),(27,3,14),(28,4,2),(29,4,9),(30,4,11),(31,4,12),(32,4,13),(33,4,14),(34,5,2),(35,5,9),(36,5,11),(37,5,12),(38,5,13),(39,5,14),(40,6,2),(41,6,9),(42,6,11),(43,6,12),(44,6,13),(45,6,14),(46,7,2),(47,7,9),(48,7,11),(49,7,12),(50,7,13),(51,7,14);
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

-- Dump completed on 2015-10-12  3:31:36
