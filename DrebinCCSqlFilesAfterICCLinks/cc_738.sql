-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_738
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (1,'android.intent.action.MAIN'),(3,'android.intent.action.VIEW'),(2,'android.provider.Telephony.SMS_RECEIVED');
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
INSERT INTO `Applications` VALUES (1,'com.go108.lic',3),(2,'com.talkweb.ycya',2),(3,'com.talkweb.imoney',4),(4,'com.talkweb.ycya',4),(5,'com.talkweb.ycya',5),(6,'com.talkweb.ycya.free',1),(7,'com.talkweb.imoney',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.go108.lic.StartupActivity'),(2,1,'com.go108.lic.InputActivity'),(3,1,'com.go108.lic.MainActivity'),(4,1,'com.go108.lic.PersonModifyActivity'),(5,1,'com.go108.lic.SingleInputActivity'),(6,1,'com.go108.lic.SingleResultActivity'),(7,1,'com.go108.lic.LovingInputActivity'),(8,1,'com.go108.lic.LovingResultActivity'),(9,1,'com.go108.lic.FavoritesReviewActivity'),(10,1,'com.go108.lic.menu.FeedbackActivity'),(11,1,'com.go108.lic.menu.ShareActivity'),(12,1,'com.go108.lic.menu.FavoritesListActivity'),(13,1,'com.go108.lic.menu.AboutActivity'),(14,1,'com.go108.lic.menu.HelpActivity'),(15,1,'com.go108.lic.menu.SiteDescActivity'),(16,1,'com.go108.lic.QuitActivity'),(17,1,'com.go108.lic.util.DownloadFileService'),(18,1,'com.go108.lic.util.SmsReceiver'),(19,2,'com.talkweb.ycya.LoginActivity'),(20,2,'com.talkweb.main.MainActivity'),(21,2,'com.talkweb.mzzd.MzzdActivity'),(22,2,'com.talkweb.mzzd.MzzdFreeResultActivity'),(23,2,'com.talkweb.mzzd.MzzdChargeResultActivity'),(24,2,'com.talkweb.xzpd.XzpdActivity'),(25,2,'com.talkweb.xzpd.XzpdXzxzActivity'),(26,2,'com.talkweb.xzpd.XzpdFreeResultActivity'),(27,2,'com.talkweb.xzpd.XzpdChargeResultActivity'),(28,2,'com.talkweb.xzpd.XzpdForbiddenParadiseActivity'),(29,2,'com.talkweb.xzpd.XzpdPersueSecretsActivity'),(30,2,'com.talkweb.yhlq.YhlqActivity'),(31,2,'com.talkweb.qrmj.QrmjActivity'),(32,2,'com.talkweb.qrmj.QrmjResultActivity'),(33,2,'com.talkweb.mzzd.ContactActivity'),(34,2,'com.talkweb.menu.MenuActivity'),(35,2,'com.talkweb.menu.FavoriteListActivity'),(36,2,'com.talkweb.menu.FavoriteRequestActivity'),(37,2,'com.talkweb.menu.HelpActivity'),(38,2,'com.talkweb.menu.UpdateActivity'),(39,2,'com.talkweb.menu.CompanyIntroActivity'),(40,2,'com.talkweb.menu.WebIntroActivity'),(41,2,'com.talkweb.menu.WapIntroActivity'),(42,2,'com.talkweb.mzzd.MzzdQueryResultActivity'),(43,2,'com.talkweb.yhlq.YaoQianActivity'),(44,2,'com.talkweb.yhlq.CqProcessActivity'),(45,2,'com.talkweb.yhlq.ZhiJiaoActivity'),(46,2,'com.talkweb.yhlq.QianResultActivity'),(47,2,'com.talkweb.xzpd.XzpdRequestChargeResultActivity'),(48,2,'com.talkweb.xzpd.XzpdRequestPersueSecretsActivity'),(49,2,'com.talkweb.xzpd.XzpdRequestForbiddenParadiseActivity'),(50,2,'com.talkweb.comm.SmsReceiver'),(51,3,'com.talkweb.imoney.LoadMain'),(52,3,'com.talkweb.imoney.almanac.AlmanacActivity'),(53,3,'com.talkweb.imoney.almanac.QueryAlmanacActivity'),(54,3,'com.talkweb.imoney.almanac.TodayAlmanacActivity'),(55,3,'com.talkweb.imoney.guagua.GuaGuaActivity'),(56,3,'com.talkweb.imoney.util.BirthdayInputActivity'),(57,3,'com.talkweb.imoney.ball.BallActivity'),(58,3,'com.talkweb.imoney.ball.ResultShowActivity'),(59,3,'com.talkweb.imoney.ball.SimulateBuyActivity'),(60,3,'com.talkweb.imoney.ball.BallChooseActivity'),(61,3,'com.talkweb.imoney.god.GodMainActivity'),(62,3,'com.talkweb.comm.MoreExctingActivity'),(63,3,'com.talkweb.imoney.god.s'),(64,3,'com.talkweb.imoney.almanac.b'),(65,3,'com.talkweb.imoney.ball.g'),(66,3,'com.talkweb.imoney.ball.h'),(67,3,'com.talkweb.imoney.god.c'),(68,3,'com.talkweb.imoney.god.e'),(69,3,'com.talkweb.imoney.god.b'),(70,4,'com.talkweb.ycya.LoginActivity'),(71,4,'com.talkweb.main.MainActivity'),(72,4,'com.talkweb.mzzd.MzzdActivity'),(73,4,'com.talkweb.mzzd.MzzdFreeResultActivity'),(74,4,'com.talkweb.mzzd.MzzdChargeResultActivity'),(75,4,'com.talkweb.xzpd.XzpdActivity'),(76,4,'com.talkweb.xzpd.XzpdXzxzActivity'),(77,4,'com.talkweb.xzpd.XzpdFreeResultActivity'),(78,4,'com.talkweb.xzpd.XzpdChargeResultActivity'),(79,4,'com.talkweb.xzpd.XzpdForbiddenParadiseActivity'),(80,4,'com.talkweb.xzpd.XzpdPersueSecretsActivity'),(81,4,'com.talkweb.yhlq.YhlqActivity'),(82,4,'com.talkweb.qrmj.QrmjActivity'),(83,4,'com.talkweb.qrmj.QrmjResultActivity'),(84,4,'com.talkweb.mzzd.ContactActivity'),(85,4,'com.talkweb.menu.MenuActivity'),(86,4,'com.talkweb.menu.FavoriteListActivity'),(87,4,'com.talkweb.menu.FavoriteRequestActivity'),(88,4,'com.talkweb.menu.HelpActivity'),(89,4,'com.talkweb.menu.UpdateActivity'),(90,4,'com.talkweb.menu.CompanyIntroActivity'),(91,4,'com.talkweb.menu.WebIntroActivity'),(92,4,'com.talkweb.menu.WapIntroActivity'),(93,4,'com.talkweb.mzzd.MzzdQueryResultActivity'),(94,4,'com.talkweb.yhlq.YaoQianActivity'),(95,4,'com.talkweb.yhlq.CqProcessActivity'),(96,4,'com.talkweb.yhlq.ZhiJiaoActivity'),(97,4,'com.talkweb.yhlq.QianResultActivity'),(98,4,'com.talkweb.xzpd.XzpdRequestChargeResultActivity'),(99,4,'com.talkweb.xzpd.XzpdRequestPersueSecretsActivity'),(100,4,'com.talkweb.xzpd.XzpdRequestForbiddenParadiseActivity'),(101,4,'com.heroit.tzuwei.lite.MoreExctingActivity'),(102,5,'com.talkweb.ycya.LoginActivity'),(103,5,'com.talkweb.main.MainActivity'),(104,5,'com.talkweb.mzzd.MzzdActivity'),(105,5,'com.talkweb.mzzd.MzzdFreeResultActivity'),(106,5,'com.talkweb.mzzd.MzzdChargeResultActivity'),(107,5,'com.talkweb.xzpd.XzpdActivity'),(108,5,'com.talkweb.xzpd.XzpdXzxzActivity'),(109,5,'com.talkweb.xzpd.XzpdFreeResultActivity'),(110,5,'com.talkweb.xzpd.XzpdChargeResultActivity'),(111,5,'com.talkweb.xzpd.XzpdForbiddenParadiseActivity'),(112,5,'com.talkweb.xzpd.XzpdPersueSecretsActivity'),(113,5,'com.talkweb.yhlq.YhlqActivity'),(114,5,'com.talkweb.qrmj.QrmjActivity'),(115,5,'com.talkweb.qrmj.QrmjResultActivity'),(116,5,'com.talkweb.mzzd.ContactActivity'),(117,5,'com.talkweb.menu.MenuActivity'),(118,5,'com.talkweb.menu.FavoriteListActivity'),(119,5,'com.talkweb.menu.FavoriteRequestActivity'),(120,5,'com.talkweb.menu.HelpActivity'),(121,5,'com.talkweb.menu.UpdateActivity'),(122,5,'com.talkweb.menu.CompanyIntroActivity'),(123,5,'com.talkweb.menu.WebIntroActivity'),(124,5,'com.talkweb.menu.WapIntroActivity'),(125,5,'com.talkweb.mzzd.MzzdQueryResultActivity'),(126,5,'com.talkweb.yhlq.YaoQianActivity'),(127,5,'com.talkweb.yhlq.CqProcessActivity'),(128,5,'com.talkweb.yhlq.ZhiJiaoActivity'),(129,5,'com.talkweb.yhlq.QianResultActivity'),(130,5,'com.talkweb.xzpd.XzpdRequestChargeResultActivity'),(131,5,'com.talkweb.xzpd.XzpdRequestPersueSecretsActivity'),(132,5,'com.talkweb.xzpd.XzpdRequestForbiddenParadiseActivity'),(133,5,'com.heroit.tzuwei.lite.MoreExctingActivity'),(134,6,'com.talkweb.ycya.LoginActivity'),(135,6,'com.talkweb.main.MainActivity'),(136,6,'com.talkweb.mzzd.MzzdActivity'),(137,6,'com.talkweb.mzzd.MzzdFreeResultActivity'),(138,6,'com.talkweb.comm.MoreExctingActivity'),(139,6,'com.talkweb.mzzd.MzzdChargeResultActivity'),(140,6,'com.talkweb.xzpd.XzpdActivity'),(141,6,'com.talkweb.xzpd.XzpdXzxzActivity'),(142,6,'com.talkweb.xzpd.XzpdFreeResultActivity'),(143,6,'com.talkweb.xzpd.XzpdChargeResultActivity'),(144,6,'com.talkweb.xzpd.XzpdForbiddenParadiseActivity'),(145,6,'com.talkweb.xzpd.XzpdPersueSecretsActivity'),(146,6,'com.talkweb.yhlq.YhlqActivity'),(147,6,'com.talkweb.qrmj.QrmjActivity'),(148,6,'com.talkweb.qrmj.QrmjResultActivity'),(149,6,'com.talkweb.mzzd.ContactActivity'),(150,6,'com.talkweb.menu.MenuActivity'),(151,6,'com.talkweb.menu.FavoriteListActivity'),(152,6,'com.talkweb.menu.FavoriteRequestActivity'),(153,6,'com.talkweb.menu.HelpActivity'),(154,6,'com.talkweb.menu.UpdateActivity'),(155,6,'com.talkweb.menu.CompanyIntroActivity'),(156,6,'com.talkweb.menu.WebIntroActivity'),(157,6,'com.talkweb.menu.WapIntroActivity'),(158,6,'com.talkweb.mzzd.MzzdQueryResultActivity'),(159,6,'com.talkweb.yhlq.YaoQianActivity'),(160,6,'com.talkweb.yhlq.CqProcessActivity'),(161,6,'com.talkweb.yhlq.ZhiJiaoActivity'),(162,6,'com.talkweb.yhlq.QianResultActivity'),(163,6,'com.talkweb.xzpd.XzpdRequestChargeResultActivity'),(164,6,'com.talkweb.xzpd.XzpdRequestPersueSecretsActivity'),(165,6,'com.talkweb.xzpd.XzpdRequestForbiddenParadiseActivity'),(166,7,'com.talkweb.imoney.LoadMain'),(167,7,'com.talkweb.imoney.almanac.AlmanacActivity'),(168,7,'com.talkweb.imoney.almanac.QueryAlmanacActivity'),(169,7,'com.talkweb.imoney.almanac.TodayAlmanacActivity'),(170,7,'com.talkweb.imoney.guagua.GuaGuaActivity'),(171,7,'com.talkweb.imoney.util.BirthdayInputActivity'),(172,7,'com.talkweb.imoney.ball.BallActivity'),(173,7,'com.talkweb.imoney.ball.ResultShowActivity'),(174,7,'com.talkweb.imoney.ball.SimulateBuyActivity'),(175,7,'com.talkweb.imoney.ball.BallChooseActivity'),(176,7,'com.talkweb.imoney.god.GodMainActivity'),(177,7,'com.talkweb.comm.MoreExctingActivity'),(178,7,'com.talkweb.imoney.god.g'),(179,7,'com.talkweb.imoney.god.a'),(180,7,'com.talkweb.imoney.god.b'),(181,7,'com.talkweb.imoney.almanac.b'),(182,6,'com.talkweb.main.MainActivity$7'),(183,6,'com.talkweb.comm.Utils'),(184,6,'com.talkweb.qrmj.QrmjResultActivity$1'),(185,6,'com.talkweb.mzzd.MzzdFreeResultActivity$1'),(186,6,'com.talkweb.qrmj.QrmjActivity$3$1'),(187,6,'com.talkweb.yhlq.YhlqActivity$1'),(188,6,'com.talkweb.yhlq.YaoQianActivity$3'),(189,6,'com.talkweb.net.APNOpera'),(190,6,'com.talkweb.ycya.LoginActivity$MyThread'),(191,6,'com.talkweb.main.MainActivity$2'),(192,6,'com.talkweb.yhlq.CqProcessActivity$1$1'),(193,6,'com.talkweb.yhlq.QianResultActivity$2'),(194,6,'cn.com.go108.feecontrol.APNOpera'),(195,6,'com.talkweb.mzzd.MzzdActivity$2'),(196,6,'com.talkweb.xzpd.XzpdActivity$2'),(197,6,'com.talkweb.yhlq.QianResultActivity$1'),(198,6,'com.talkweb.yhlq.YaoQianActivity$1$1'),(199,6,'com.talkweb.xzpd.XzpdActivity$1'),(200,6,'com.talkweb.xzpd.XzpdFreeResultActivity$1');
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
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,53,'currentYear'),(2,52,'AUTO_CHOOSE_NUMBERS'),(3,61,'AUTO_CHOOSE_NUMBERS'),(4,53,'AUTO_CHOOSE_NUMBERS'),(5,59,'AUTO_CHOOSE_NUMBERS'),(6,56,'isqd'),(7,59,'BallBeanChoice'),(8,61,'APP_CHANNEL'),(9,52,'year'),(10,52,'APP_CHANNEL'),(11,58,'APP_CHANNEL'),(12,57,'APP_CHANNEL'),(13,53,'APP_CHANNEL'),(14,59,'APP_CHANNEL'),(15,52,'day'),(16,53,'currentDay'),(17,61,'APP_NAME'),(18,52,'month'),(19,53,'currentMonth'),(20,52,'APP_NAME'),(21,58,'APP_NAME'),(22,57,'APP_NAME'),(23,53,'APP_NAME'),(24,59,'APP_NAME'),(25,160,'day'),(26,164,'isqd'),(27,161,'currentYear'),(28,161,'currentDay'),(29,167,'BallBeanChoice'),(30,160,'year'),(31,161,'currentMonth'),(32,160,'AUTO_CHOOSE_NUMBERS'),(33,161,'AUTO_CHOOSE_NUMBERS'),(34,167,'AUTO_CHOOSE_NUMBERS'),(35,160,'month'),(36,169,'APP_CHANNEL'),(37,160,'APP_NAME'),(38,166,'APP_NAME'),(39,165,'APP_NAME'),(40,161,'APP_NAME'),(41,167,'APP_NAME'),(42,160,'APP_CHANNEL'),(43,166,'APP_CHANNEL'),(44,165,'APP_CHANNEL'),(45,161,'APP_CHANNEL'),(46,167,'APP_CHANNEL'),(47,169,'APP_NAME'),(48,130,'gender'),(49,135,'half_gender'),(50,141,'strArray'),(51,155,'str'),(52,130,'isreturn'),(53,135,'strArray'),(54,139,'APP_NAME'),(55,130,'APP_NAME'),(56,133,'APP_NAME'),(57,141,'APP_NAME'),(58,155,'APP_NAME'),(59,135,'APP_NAME'),(60,146,'APP_NAME'),(61,140,'APP_NAME'),(62,128,'APP_NAME'),(63,140,'loverInfoArray'),(64,129,'APP_NAME'),(65,153,'APP_NAME'),(66,155,'strArray'),(67,139,'APP_CHANNEL'),(68,130,'APP_CHANNEL'),(69,133,'APP_CHANNEL'),(70,141,'APP_CHANNEL'),(71,155,'APP_CHANNEL'),(72,135,'APP_CHANNEL'),(73,140,'APP_CHANNEL'),(74,128,'APP_CHANNEL'),(75,129,'APP_CHANNEL'),(76,153,'APP_CHANNEL'),(77,130,'nameStr'),(78,133,'starID'),(79,135,'male_xzID'),(80,128,'appload'),(81,133,'xzName'),(82,130,'strArray'),(83,153,'time'),(84,135,'female_xzID'),(85,128,'phone'),(86,154,'time'),(87,135,'gender'),(88,129,'nameStr'),(89,146,'APP_CHANNEL');
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
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'s',0,NULL,NULL),(18,18,'r',1,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'r',1,NULL,NULL),(51,51,'a',1,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,70,'a',1,NULL,NULL),(64,71,'a',0,NULL,NULL),(65,72,'a',0,NULL,NULL),(66,73,'a',0,NULL,NULL),(67,74,'a',0,NULL,NULL),(68,75,'a',0,NULL,NULL),(69,76,'a',0,NULL,NULL),(70,77,'a',0,NULL,NULL),(71,78,'a',0,NULL,NULL),(72,79,'a',0,NULL,NULL),(73,80,'a',0,NULL,NULL),(74,81,'a',0,NULL,NULL),(75,82,'a',0,NULL,NULL),(76,83,'a',0,NULL,NULL),(77,84,'a',0,NULL,NULL),(78,85,'a',0,NULL,NULL),(79,86,'a',0,NULL,NULL),(80,87,'a',0,NULL,NULL),(81,88,'a',0,NULL,NULL),(82,89,'a',0,NULL,NULL),(83,90,'a',0,NULL,NULL),(84,91,'a',0,NULL,NULL),(85,92,'a',0,NULL,NULL),(86,93,'a',0,NULL,NULL),(87,94,'a',0,NULL,NULL),(88,95,'a',0,NULL,NULL),(89,96,'a',0,NULL,NULL),(90,97,'a',0,NULL,NULL),(91,98,'a',0,NULL,NULL),(92,99,'a',0,NULL,NULL),(93,100,'a',0,NULL,NULL),(94,101,'a',0,NULL,NULL),(95,102,'a',1,NULL,NULL),(96,103,'a',0,NULL,NULL),(97,104,'a',0,NULL,NULL),(98,105,'a',0,NULL,NULL),(99,106,'a',0,NULL,NULL),(100,107,'a',0,NULL,NULL),(101,108,'a',0,NULL,NULL),(102,109,'a',0,NULL,NULL),(103,110,'a',0,NULL,NULL),(104,111,'a',0,NULL,NULL),(105,112,'a',0,NULL,NULL),(106,113,'a',0,NULL,NULL),(107,114,'a',0,NULL,NULL),(108,115,'a',0,NULL,NULL),(109,116,'a',0,NULL,NULL),(110,117,'a',0,NULL,NULL),(111,118,'a',0,NULL,NULL),(112,119,'a',0,NULL,NULL),(113,120,'a',0,NULL,NULL),(114,121,'a',0,NULL,NULL),(115,122,'a',0,NULL,NULL),(116,123,'a',0,NULL,NULL),(117,124,'a',0,NULL,NULL),(118,125,'a',0,NULL,NULL),(119,126,'a',0,NULL,NULL),(120,127,'a',0,NULL,NULL),(121,128,'a',0,NULL,NULL),(122,129,'a',0,NULL,NULL),(123,130,'a',0,NULL,NULL),(124,131,'a',0,NULL,NULL),(125,132,'a',0,NULL,NULL),(126,133,'a',0,NULL,NULL),(127,134,'a',1,NULL,NULL),(128,135,'a',0,NULL,NULL),(129,136,'a',0,NULL,NULL),(130,137,'a',0,NULL,NULL),(131,138,'a',0,NULL,NULL),(132,139,'a',0,NULL,NULL),(133,140,'a',0,NULL,NULL),(134,141,'a',0,NULL,NULL),(135,142,'a',0,NULL,NULL),(136,143,'a',0,NULL,NULL),(137,144,'a',0,NULL,NULL),(138,145,'a',0,NULL,NULL),(139,146,'a',0,NULL,NULL),(140,147,'a',0,NULL,NULL),(141,148,'a',0,NULL,NULL),(142,149,'a',0,NULL,NULL),(143,150,'a',0,NULL,NULL),(144,151,'a',0,NULL,NULL),(145,152,'a',0,NULL,NULL),(146,153,'a',0,NULL,NULL),(147,154,'a',0,NULL,NULL),(148,155,'a',0,NULL,NULL),(149,156,'a',0,NULL,NULL),(150,157,'a',0,NULL,NULL),(151,158,'a',0,NULL,NULL),(152,159,'a',0,NULL,NULL),(153,160,'a',0,NULL,NULL),(154,161,'a',0,NULL,NULL),(155,162,'a',0,NULL,NULL),(156,163,'a',0,NULL,NULL),(157,164,'a',0,NULL,NULL),(158,165,'a',0,NULL,NULL),(159,166,'a',1,NULL,NULL),(160,167,'a',0,NULL,NULL),(161,168,'a',0,NULL,NULL),(162,169,'a',0,NULL,NULL),(163,170,'a',0,NULL,NULL),(164,171,'a',0,NULL,NULL),(165,172,'a',0,NULL,NULL),(166,173,'a',0,NULL,NULL),(167,174,'a',0,NULL,NULL),(168,175,'a',0,NULL,NULL),(169,176,'a',0,NULL,NULL),(170,177,'a',0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=257 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,59),(2,1,61),(3,1,53),(4,1,52),(5,2,59),(6,2,61),(7,2,52),(8,2,53),(9,3,59),(10,3,61),(11,3,53),(12,3,52),(13,4,61),(14,4,59),(15,4,53),(16,4,52),(17,5,52),(18,5,53),(19,5,57),(20,5,59),(21,5,61),(22,6,53),(23,6,59),(24,6,61),(25,6,52),(26,7,59),(27,7,61),(28,7,53),(29,7,52),(30,8,61),(31,8,59),(32,8,53),(33,8,52),(34,9,61),(35,10,52),(36,10,53),(37,10,59),(38,10,61),(39,11,52),(40,11,53),(41,11,61),(42,11,59),(43,12,57),(44,12,52),(45,12,53),(46,12,59),(47,12,61),(48,13,61),(49,13,53),(50,13,52),(51,13,59),(52,14,62),(53,15,169),(54,15,161),(55,15,160),(56,16,167),(57,16,160),(58,16,161),(59,17,161),(60,17,160),(61,17,165),(62,18,165),(63,18,161),(64,18,160),(65,19,169),(66,19,161),(67,19,160),(68,20,169),(69,21,169),(70,21,161),(71,21,160),(72,22,170),(73,23,160),(74,23,161),(75,23,169),(76,24,161),(77,24,160),(78,25,169),(79,26,130),(80,26,133),(81,26,155),(82,26,135),(83,26,140),(84,26,139),(85,26,141),(86,26,128),(87,27,142),(88,28,155),(89,29,140),(90,29,141),(91,29,130),(92,29,135),(93,29,133),(94,29,155),(95,30,141),(96,30,130),(97,30,133),(98,30,135),(99,30,155),(100,30,140),(101,31,130),(102,31,133),(103,31,135),(104,31,155),(105,31,140),(106,31,141),(107,32,130),(108,32,133),(109,32,135),(110,32,141),(111,32,139),(112,32,155),(113,32,140),(114,33,133),(115,33,135),(116,33,130),(117,33,140),(118,33,141),(119,33,152),(120,33,155),(121,34,135),(122,34,133),(123,34,130),(124,34,141),(125,34,128),(126,34,139),(127,34,155),(128,34,140),(129,35,128),(130,36,127),(131,37,128),(132,38,130),(133,38,141),(134,38,155),(135,38,140),(136,38,139),(137,38,135),(138,38,133),(139,39,133),(140,39,130),(141,39,131),(142,39,135),(143,39,140),(144,39,128),(145,39,141),(146,39,155),(147,40,135),(148,40,153),(149,40,155),(150,40,140),(151,40,141),(152,40,130),(153,40,133),(154,41,140),(155,41,141),(156,41,155),(157,41,130),(158,41,133),(159,41,135),(160,42,141),(161,42,128),(162,42,153),(163,42,139),(164,42,155),(165,42,140),(166,42,135),(167,42,133),(168,42,146),(169,42,130),(170,42,129),(171,43,128),(172,43,141),(173,43,135),(174,43,140),(175,43,139),(176,43,155),(177,43,130),(178,43,133),(179,44,133),(180,44,135),(181,44,155),(182,44,140),(183,44,141),(184,44,129),(185,44,130),(186,45,142),(187,46,142),(188,47,139),(189,47,140),(190,47,141),(191,47,135),(192,47,130),(193,47,155),(194,47,133),(195,47,128),(196,48,128),(197,49,135),(198,49,133),(199,49,130),(200,49,141),(201,49,155),(202,49,140),(203,50,130),(204,50,133),(205,50,135),(206,50,155),(207,50,140),(208,50,139),(209,50,141),(210,50,128),(211,51,133),(212,51,130),(213,51,155),(214,51,135),(215,51,141),(216,51,140),(217,51,139),(218,51,128),(219,52,128),(220,53,146),(221,53,130),(222,53,129),(223,53,128),(224,53,140),(225,53,141),(226,53,139),(227,53,153),(228,53,135),(229,53,155),(230,53,133),(231,54,141),(232,54,130),(233,54,133),(234,54,135),(235,54,155),(236,54,140),(237,55,128),(238,56,155),(239,56,141),(240,56,140),(241,56,152),(242,56,135),(243,56,133),(244,56,130),(245,57,141),(246,57,155),(247,57,140),(248,57,133),(249,57,135),(250,57,130),(251,58,140),(252,58,155),(253,58,141),(254,58,130),(255,58,135),(256,58,133);
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,59,'<com.talkweb.imoney.ball.SimulateBuyActivity: void onClick(android.view.View)>',108,'a',NULL),(2,63,'<com.talkweb.imoney.god.s: void onClick(android.view.View)>',7,'a',NULL),(3,61,'<com.talkweb.imoney.god.GodMainActivity: void b()>',10,'a',NULL),(4,64,'<com.talkweb.imoney.almanac.b: void onClick(android.view.View)>',28,'a',NULL),(5,57,'<com.talkweb.imoney.ball.BallActivity: void onClick(android.view.View)>',51,'a',NULL),(6,65,'<com.talkweb.imoney.ball.g: void onClick(android.view.View)>',11,'a',0),(7,66,'<com.talkweb.imoney.ball.h: void onClick(android.view.View)>',9,'a',0),(8,67,'<com.talkweb.imoney.god.c: void onClick(android.view.View)>',11,'a',NULL),(9,61,'<com.talkweb.imoney.god.GodMainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(10,68,'<com.talkweb.imoney.god.e: void onClick(android.view.View)>',11,'a',NULL),(11,69,'<com.talkweb.imoney.god.b: void onClick(android.view.View)>',11,'a',NULL),(12,57,'<com.talkweb.imoney.ball.BallActivity: void onClick(android.view.View)>',10,'a',NULL),(13,61,'<com.talkweb.imoney.god.GodMainActivity: void c()>',8,'a',NULL),(14,62,'<com.talkweb.comm.MoreExctingActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',25,'a',NULL),(15,178,'<com.talkweb.imoney.god.g: void onClick(android.view.View)>',11,'a',NULL),(16,174,'<com.talkweb.imoney.ball.SimulateBuyActivity: void onClick(android.view.View)>',108,'a',NULL),(17,172,'<com.talkweb.imoney.ball.BallActivity: void onClick(android.view.View)>',10,'a',NULL),(18,172,'<com.talkweb.imoney.ball.BallActivity: void onClick(android.view.View)>',51,'a',NULL),(19,176,'<com.talkweb.imoney.god.GodMainActivity: void b()>',10,'a',NULL),(20,176,'<com.talkweb.imoney.god.GodMainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',21,'a',NULL),(21,179,'<com.talkweb.imoney.god.a: void onClick(android.view.View)>',11,'a',NULL),(22,177,'<com.talkweb.comm.MoreExctingActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',25,'a',NULL),(23,180,'<com.talkweb.imoney.god.b: void onClick(android.view.View)>',11,'a',NULL),(24,181,'<com.talkweb.imoney.almanac.b: void onClick(android.view.View)>',28,'a',NULL),(25,176,'<com.talkweb.imoney.god.GodMainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(26,182,'<com.talkweb.main.MainActivity$7: void onClick(android.content.DialogInterface,int)>',36,'a',NULL),(27,183,'<com.talkweb.comm.Utils: void readContactst2(java.util.ArrayList,android.content.ContentResolver,android.os.Handler)>',25,'p',NULL),(28,162,'<com.talkweb.yhlq.QianResultActivity: boolean onKeyDown(int,android.view.KeyEvent)>',8,'a',NULL),(29,184,'<com.talkweb.qrmj.QrmjResultActivity$1: void onClick(android.view.View)>',7,'a',NULL),(30,185,'<com.talkweb.mzzd.MzzdFreeResultActivity$1: void onClick(android.view.View)>',7,'a',NULL),(31,186,'<com.talkweb.qrmj.QrmjActivity$3$1: void run()>',78,'a',NULL),(32,187,'<com.talkweb.yhlq.YhlqActivity$1: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(33,188,'<com.talkweb.yhlq.YaoQianActivity$3: void run()>',15,'a',NULL),(34,189,'<com.talkweb.net.APNOpera: long getPreferredApnId()>',5,'p',NULL),(35,135,'<com.talkweb.main.MainActivity: void showRecommedDialog()>',5,'a',NULL),(36,190,'<com.talkweb.ycya.LoginActivity$MyThread: void run()>',11,'a',NULL),(37,191,'<com.talkweb.main.MainActivity$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',26,'a',NULL),(38,146,'<com.talkweb.yhlq.YhlqActivity: void startYaoQianActivity()>',4,'a',NULL),(39,138,'<com.talkweb.comm.MoreExctingActivity: void linkSite(com.talkweb.comm.ExctingProductBean)>',14,'a',NULL),(40,192,'<com.talkweb.yhlq.CqProcessActivity$1$1: void run()>',65,'a',NULL),(41,193,'<com.talkweb.yhlq.QianResultActivity$2: void onClick(android.view.View)>',9,'a',NULL),(42,194,'<cn.com.go108.feecontrol.APNOpera: long getPreferredApnId()>',5,'p',NULL),(43,182,'<com.talkweb.main.MainActivity$7: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(44,195,'<com.talkweb.mzzd.MzzdActivity$2: void onClick(android.view.View)>',7,'a',NULL),(45,183,'<com.talkweb.comm.Utils: void readContactst2(java.util.ArrayList,android.content.ContentResolver,android.os.Handler)>',4,'p',NULL),(46,149,'<com.talkweb.mzzd.ContactActivity: void readContactst1(java.util.ArrayList)>',4,'p',NULL),(47,182,'<com.talkweb.main.MainActivity$7: void onClick(android.content.DialogInterface,int)>',22,'a',NULL),(48,191,'<com.talkweb.main.MainActivity$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(49,196,'<com.talkweb.xzpd.XzpdActivity$2: void onClick(android.view.View)>',7,'a',NULL),(50,182,'<com.talkweb.main.MainActivity$7: void onClick(android.content.DialogInterface,int)>',29,'a',NULL),(51,189,'<com.talkweb.net.APNOpera: java.lang.String readCurrentAPN()>',10,'p',NULL),(52,191,'<com.talkweb.main.MainActivity$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',48,'a',NULL),(53,194,'<cn.com.go108.feecontrol.APNOpera: java.lang.String readCurrentAPN()>',10,'p',NULL),(54,197,'<com.talkweb.yhlq.QianResultActivity$1: void onClick(android.view.View)>',7,'a',NULL),(55,191,'<com.talkweb.main.MainActivity$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',12,'a',NULL),(56,198,'<com.talkweb.yhlq.YaoQianActivity$1$1: void run()>',29,'a',NULL),(57,199,'<com.talkweb.xzpd.XzpdActivity$1: void onClick(android.view.View)>',7,'a',NULL),(58,200,'<com.talkweb.xzpd.XzpdFreeResultActivity$1: void onClick(android.view.View)>',7,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,15,3),(2,26,3),(3,37,3),(4,41,3),(5,42,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/talkweb/imoney/ball/BallChooseActivity'),(2,2,'com/talkweb/comm/MoreExctingActivity'),(3,3,'com/talkweb/imoney/util/BirthdayInputActivity'),(4,4,'com/talkweb/imoney/almanac/QueryAlmanacActivity'),(5,6,'com/talkweb/imoney/ball/ResultShowActivity'),(6,7,'com/talkweb/imoney/ball/SimulateBuyActivity'),(7,8,'com/talkweb/imoney/guagua/GuaGuaActivity'),(8,9,'com/talkweb/comm/MoreExctingActivity'),(9,10,'com/talkweb/imoney/ball/BallActivity'),(10,11,'com/talkweb/imoney/almanac/AlmanacActivity'),(11,12,'com/talkweb/imoney/ball/ResultShowActivity'),(12,13,'com/talkweb/imoney/ball/ResultShowActivity'),(13,14,'com/talkweb/imoney/util/BirthdayInputActivity'),(14,16,'com/talkweb/imoney/guagua/GuaGuaActivity'),(15,17,'com/talkweb/imoney/ball/BallChooseActivity'),(16,18,'com/talkweb/imoney/ball/ResultShowActivity'),(17,19,'com/talkweb/imoney/ball/ResultShowActivity'),(18,21,'com/talkweb/imoney/ball/ResultShowActivity'),(19,22,'com/talkweb/imoney/ball/SimulateBuyActivity'),(20,23,'com/talkweb/imoney/util/BirthdayInputActivity'),(21,24,'com/talkweb/comm/MoreExctingActivity'),(22,25,'com/talkweb/imoney/ball/BallActivity'),(23,27,'com/talkweb/imoney/almanac/AlmanacActivity'),(24,28,'com/talkweb/imoney/almanac/QueryAlmanacActivity'),(25,29,'com/talkweb/imoney/util/BirthdayInputActivity'),(26,30,'com/talkweb/comm/MoreExctingActivity'),(27,31,'com/talkweb/main/MainActivity'),(28,32,'com/talkweb/comm/MoreExctingActivity'),(29,33,'com/talkweb/comm/MoreExctingActivity'),(30,34,'com/talkweb/qrmj/QrmjResultActivity'),(31,35,'com/talkweb/yhlq/QianResultActivity'),(32,36,'com/talkweb/yhlq/ZhiJiaoActivity'),(33,38,'com/talkweb/main/MainActivity'),(34,39,'com/talkweb/yhlq/YhlqActivity'),(35,40,'com/talkweb/yhlq/YaoQianActivity'),(36,43,'com/talkweb/yhlq/QianResultActivity'),(37,44,'com/talkweb/main/MainActivity'),(38,45,'com/talkweb/menu/HelpActivity'),(39,46,'com/talkweb/mzzd/ContactActivity'),(40,47,'com/talkweb/menu/CompanyIntroActivity'),(41,48,'com/talkweb/xzpd/XzpdActivity'),(42,49,'com/talkweb/xzpd/XzpdXzxzActivity'),(43,50,'com/talkweb/menu/WebIntroActivity'),(44,51,'com/talkweb/qrmj/QrmjActivity'),(45,52,'com/talkweb/comm/MoreExctingActivity'),(46,53,'com/talkweb/mzzd/MzzdActivity'),(47,54,'com/talkweb/yhlq/ZhiJiaoActivity'),(48,55,'com/talkweb/xzpd/XzpdXzxzActivity'),(49,56,'com/talkweb/comm/MoreExctingActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,15,1),(2,26,2),(3,41,5),(4,42,6);
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
INSERT INTO `IExtras` VALUES (1,3,'isqd'),(2,4,'currentDay'),(3,4,'currentYear'),(4,4,'currentMonth'),(5,5,'AUTO_CHOOSE_NUMBERS'),(6,6,'AUTO_CHOOSE_NUMBERS'),(7,7,'AUTO_CHOOSE_NUMBERS'),(8,13,'AUTO_CHOOSE_NUMBERS'),(9,14,'isqd'),(10,19,'AUTO_CHOOSE_NUMBERS'),(11,20,'AUTO_CHOOSE_NUMBERS'),(12,21,'AUTO_CHOOSE_NUMBERS'),(13,22,'AUTO_CHOOSE_NUMBERS'),(14,23,'isqd'),(15,28,'currentDay'),(16,28,'currentYear'),(17,28,'currentMonth'),(18,29,'isqd'),(19,34,'strArray'),(20,35,'strArray'),(21,35,'str'),(22,36,'time'),(23,37,'sms_body'),(24,38,'appload'),(25,43,'strArray'),(26,43,'str'),(27,51,'loverInfoArray'),(28,54,'time');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,2),(5,5,1),(6,6,1),(7,7,1),(8,8,1),(9,9,1);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,2),(5,5,1),(6,6,1),(7,7,1),(8,8,1),(9,9,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,37,'vnd.android-dir','mms-sms');
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.talkweb.imoney'),(2,2,'com.talkweb.imoney'),(3,3,'com.talkweb.imoney'),(4,4,'com.talkweb.imoney'),(5,6,'com.talkweb.imoney'),(6,7,'com.talkweb.imoney'),(7,8,'com.talkweb.imoney'),(8,9,'com.talkweb.imoney'),(9,10,'com.talkweb.imoney'),(10,11,'com.talkweb.imoney'),(11,12,'com.talkweb.imoney'),(12,13,'com.talkweb.imoney'),(13,14,'com.talkweb.imoney'),(14,16,'com.talkweb.imoney'),(15,17,'com.talkweb.imoney'),(16,18,'com.talkweb.imoney'),(17,19,'com.talkweb.imoney'),(18,21,'com.talkweb.imoney'),(19,22,'com.talkweb.imoney'),(20,23,'com.talkweb.imoney'),(21,24,'com.talkweb.imoney'),(22,25,'com.talkweb.imoney'),(23,27,'com.talkweb.imoney'),(24,28,'com.talkweb.imoney'),(25,29,'com.talkweb.imoney'),(26,30,'com.talkweb.ycya.free'),(27,31,'com.talkweb.ycya.free'),(28,32,'com.talkweb.ycya.free'),(29,33,'com.talkweb.ycya.free'),(30,34,'com.talkweb.ycya.free'),(31,35,'com.talkweb.ycya.free'),(32,36,'com.talkweb.ycya.free'),(33,38,'com.talkweb.ycya.free'),(34,39,'com.talkweb.ycya.free'),(35,40,'com.talkweb.ycya.free'),(36,43,'com.talkweb.ycya.free'),(37,44,'com.talkweb.ycya.free'),(38,45,'com.talkweb.ycya.free'),(39,46,'com.talkweb.ycya.free'),(40,47,'com.talkweb.ycya.free'),(41,48,'com.talkweb.ycya.free'),(42,49,'com.talkweb.ycya.free'),(43,50,'com.talkweb.ycya.free'),(44,51,'com.talkweb.ycya.free'),(45,52,'com.talkweb.ycya.free'),(46,53,'com.talkweb.ycya.free'),(47,54,'com.talkweb.ycya.free'),(48,55,'com.talkweb.ycya.free'),(49,56,'com.talkweb.ycya.free');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,18,0),(3,19,0),(4,50,0),(5,51,0),(6,63,0),(7,95,0),(8,127,0),(9,159,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,1,0),(6,5,0,0),(7,5,0,0),(8,8,0,0),(9,9,0,0),(10,10,0,0),(11,11,0,0),(12,12,0,0),(13,12,0,0),(14,13,0,0),(15,14,1,0),(16,15,0,0),(17,16,0,0),(18,17,0,0),(19,17,0,0),(20,18,1,0),(21,18,0,0),(22,18,0,0),(23,19,0,0),(24,20,0,0),(25,21,0,0),(26,22,1,0),(27,23,0,0),(28,24,0,0),(29,25,0,0),(30,26,0,0),(31,28,0,0),(32,29,0,0),(33,30,0,0),(34,31,0,0),(35,32,0,0),(36,33,0,0),(37,35,1,0),(38,36,0,0),(39,37,0,0),(40,38,0,0),(41,39,1,0),(42,39,1,0),(43,40,0,0),(44,41,0,0),(45,43,0,0),(46,44,0,0),(47,47,0,0),(48,48,0,0),(49,49,0,0),(50,50,0,0),(51,52,0,0),(52,54,0,0),(53,55,0,0),(54,56,0,0),(55,57,0,0),(56,58,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,5,19,2,NULL),(2,15,19,2,NULL),(3,41,19,2,NULL),(4,20,19,2,NULL),(5,26,19,2,NULL),(6,5,50,2,NULL),(7,15,50,2,NULL),(8,41,50,2,NULL),(9,20,50,2,NULL),(10,26,50,2,NULL),(11,5,63,2,NULL),(12,15,63,2,NULL),(13,41,63,2,NULL),(14,20,63,2,NULL),(15,26,63,2,NULL),(16,5,95,2,NULL),(17,15,95,2,NULL),(18,41,95,2,NULL),(19,20,95,2,NULL),(20,26,95,2,NULL),(21,5,127,2,NULL),(22,15,127,2,NULL),(23,41,127,2,NULL),(24,20,127,2,NULL),(25,26,127,2,NULL),(26,41,1,2,NULL),(27,41,18,2,NULL),(28,41,51,2,NULL),(29,41,159,2,NULL),(30,40,43,2,NULL),(31,40,87,2,NULL),(32,40,119,2,NULL),(33,40,152,2,NULL),(34,31,20,2,NULL),(35,31,64,2,NULL),(36,31,96,2,NULL),(37,31,128,2,NULL),(38,5,51,2,NULL),(39,15,51,2,NULL),(40,20,51,2,NULL),(41,26,51,2,NULL),(42,6,58,2,NULL),(43,6,166,2,NULL),(44,7,59,2,NULL),(45,7,167,2,NULL),(46,12,58,2,NULL),(47,12,166,2,NULL),(48,13,58,2,NULL),(49,13,166,2,NULL),(50,5,1,2,NULL),(51,5,18,2,NULL),(52,5,159,2,NULL),(53,1,60,2,NULL),(54,1,168,2,NULL),(55,3,56,2,NULL),(56,3,164,2,NULL),(57,9,62,2,NULL),(58,9,131,2,NULL),(59,9,170,2,NULL),(60,14,56,2,NULL),(61,14,164,2,NULL),(62,15,1,2,NULL),(63,15,18,2,NULL),(64,15,159,2,NULL),(65,20,159,2,NULL),(66,26,159,2,NULL),(67,18,58,2,NULL),(68,18,166,2,NULL),(69,19,58,2,NULL),(70,19,166,2,NULL),(71,21,58,2,NULL),(72,21,166,2,NULL),(73,22,59,2,NULL),(74,22,167,2,NULL),(75,20,1,2,NULL),(76,20,18,2,NULL),(77,17,60,2,NULL),(78,17,168,2,NULL),(79,23,56,2,NULL),(80,23,164,2,NULL),(81,24,62,2,NULL),(82,24,131,2,NULL),(83,24,170,2,NULL),(84,29,56,2,NULL),(85,29,164,2,NULL),(86,26,1,2,NULL),(87,26,18,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(4,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'http://www.go108.com.cn/mobile/Client/apk/ycya.apk',NULL,NULL,NULL),(7,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(8,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(9,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(10,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(11,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,27,3),(2,34,4),(3,42,7),(4,45,8),(5,46,9),(6,51,10),(7,53,11);
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,2,1),(15,2,2),(16,2,3),(17,2,4),(18,2,6),(19,2,7),(20,2,9),(21,2,10),(22,2,11),(23,2,13),(24,3,2),(25,3,9),(26,3,11),(27,3,12),(28,3,13),(29,3,14),(30,4,2),(31,4,6),(32,4,9),(33,4,11),(34,4,13),(35,4,14),(36,5,2),(37,5,6),(38,5,9),(39,5,11),(40,5,13),(41,5,14),(42,6,2),(43,6,6),(44,6,9),(45,6,11),(46,6,13),(47,6,14),(48,7,2),(49,7,9),(50,7,11),(51,7,12),(52,7,13),(53,7,14);
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

-- Dump completed on 2015-10-12  3:31:35
