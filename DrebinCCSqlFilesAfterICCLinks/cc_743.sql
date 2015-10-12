-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_743
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applications`
--

LOCK TABLES `Applications` WRITE;
/*!40000 ALTER TABLE `Applications` DISABLE KEYS */;
INSERT INTO `Applications` VALUES (1,'com.KaiYunD',1),(2,'com.heroit.iching.lite',8),(3,'com.talkweb.ycya',5),(4,'com.talkweb.ycya',6),(5,'com.go108.lic.free',1),(6,'com.talkweb.imoney',1),(7,'com.talkweb.ycya.free',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.talkweb.kaiyund.KaiYunD'),(2,1,'com.talkweb.kaiyund.light.start.StartActivity'),(3,1,'com.talkweb.kaiyund.light.start.UserInfoInputActivity'),(4,1,'com.talkweb.kaiyund.light.start.WishActivity'),(5,1,'com.talkweb.kaiyund.light.YyActivity'),(6,1,'com.talkweb.kaiyund.light.ScActivity'),(7,1,'com.talkweb.kaiyund.light.SyActivity'),(8,1,'com.talkweb.kaiyund.light.ZcActivity'),(9,1,'com.talkweb.kaiyund.light.menu.ModifyUserinfoActivity'),(10,1,'com.talkweb.kaiyund.light.menu.FeedbackActivity'),(11,1,'com.talkweb.kaiyund.light.menu.AboutActivity'),(12,1,'com.talkweb.kaiyund.light.menu.ManageWishActivity'),(13,1,'com.talkweb.kaiyund.cs.mzzd.TDMSActivity'),(14,1,'com.talkweb.kaiyund.cs.mzzd.XMXXActivity'),(15,1,'com.talkweb.kaiyund.cs.mzzd.XAGDActivity'),(16,1,'com.talkweb.kaiyund.cs.mzzd.CCTRActivity'),(17,1,'com.talkweb.kaiyund.cs.mzzd.ContactActivity'),(18,1,'com.talkweb.kaiyund.cs.csActivity'),(19,1,'com.talkweb.kaiyund.cs.mzzd.MZZDTabActivity'),(20,1,'com.talkweb.kaiyund.cs.xzys.XZYSTabActivity'),(21,1,'com.talkweb.kaiyund.cs.xzys.DayActivity'),(22,1,'com.talkweb.kaiyund.cs.xzys.WeekActivity'),(23,1,'com.talkweb.kaiyund.cs.xzys.MonthActivity'),(24,1,'com.talkweb.kaiyund.cs.xzys.CCTRActivity'),(25,1,'com.talkweb.kaiyund.cs.wtxd.WTXDSelectActivity'),(26,1,'com.talkweb.kaiyund.cs.wtxd.WTXDTabActivity'),(27,1,'com.talkweb.kaiyund.cs.wtxd.XZPDActivity'),(28,1,'com.talkweb.kaiyund.cs.wtxd.WDZXActivity'),(29,1,'com.talkweb.kaiyund.cs.wtxd.JGLYActivity'),(30,1,'com.talkweb.kaiyund.cs.wtxd.CCTRActivity'),(31,1,'com.talkweb.kaiyund.cs.ygzb.YgzbIndexActivity'),(32,1,'com.talkweb.kaiyund.cs.ygzb.YgzbInputActivity'),(33,1,'com.talkweb.kaiyund.cs.ygzb.YgzbBuguaActivity'),(34,1,'com.talkweb.kaiyund.cs.ygzb.YgzbResultActivity'),(35,1,'com.talkweb.kaiyund.cs.yhlq.YHLQ_FActivity'),(36,1,'com.talkweb.kaiyund.cs.yhlq.YHLQ_SActivity'),(37,1,'com.talkweb.kaiyund.cs.yhlq.YHLQ_TActivity'),(38,1,'com.talkweb.kaiyund.cs.yhlq.YHLQ_ResultActivity'),(39,1,'com.talkweb.kaiyund.cs.yhlq.YHLQ_DActivity'),(40,1,'com.talkweb.kaiyund.intro.IntroduceActivity'),(41,1,'com.talkweb.kaiyund.widget.WidgetConfig'),(42,1,'com.talkweb.kaiyund.light.service.StartMusicService'),(43,1,'com.talkweb.kaiyund.light.service.LightMusicService'),(44,1,'com.talkweb.kaiyund.light.service.LightOnMediaService'),(45,1,'com.talkweb.kaiyund.widget.WidgetServiceUpdateByDate'),(46,1,'com.talkweb.kaiyund.widget.WidgetProvider'),(47,1,'com.talkweb.kaiyund.widget.ServiceReceiver'),(48,2,'com.talkweb.easy.LoginActivity'),(49,2,'com.heroit.iching.lite.MainActivity'),(50,2,'com.heroit.iching.lite.InputActivity'),(51,2,'com.heroit.iching.lite.ShakeActivity'),(52,2,'com.heroit.iching.lite.ResultActivity'),(53,2,'com.heroit.iching.lite.HistoryListActivity'),(54,2,'com.heroit.iching.lite.BulletinListActivity'),(55,2,'com.talkweb.easy.MoreExctingActivity'),(56,2,'com.talkweb.easy.MenuInfoActivity'),(57,2,'com.talkweb.easy.VersionInfoActivity'),(58,3,'com.talkweb.ycya.LoginActivity'),(59,3,'com.talkweb.main.MainActivity'),(60,3,'com.talkweb.mzzd.MzzdActivity'),(61,3,'com.talkweb.mzzd.MzzdFreeResultActivity'),(62,3,'com.talkweb.mzzd.MzzdChargeResultActivity'),(63,3,'com.talkweb.xzpd.XzpdActivity'),(64,3,'com.talkweb.xzpd.XzpdXzxzActivity'),(65,3,'com.talkweb.xzpd.XzpdFreeResultActivity'),(66,3,'com.talkweb.xzpd.XzpdChargeResultActivity'),(67,3,'com.talkweb.xzpd.XzpdForbiddenParadiseActivity'),(68,3,'com.talkweb.xzpd.XzpdPersueSecretsActivity'),(69,3,'com.talkweb.yhlq.YhlqActivity'),(70,3,'com.talkweb.qrmj.QrmjActivity'),(71,3,'com.talkweb.qrmj.QrmjResultActivity'),(72,3,'com.talkweb.mzzd.ContactActivity'),(73,3,'com.talkweb.menu.MenuActivity'),(74,3,'com.talkweb.menu.FavoriteListActivity'),(75,3,'com.talkweb.menu.FavoriteRequestActivity'),(76,4,'com.talkweb.ycya.LoginActivity'),(77,3,'com.talkweb.menu.HelpActivity'),(78,3,'com.talkweb.menu.UpdateActivity'),(79,3,'com.talkweb.menu.CompanyIntroActivity'),(80,4,'com.talkweb.main.MainActivity'),(81,3,'com.talkweb.menu.WebIntroActivity'),(82,4,'com.talkweb.mzzd.MzzdActivity'),(83,3,'com.talkweb.menu.WapIntroActivity'),(84,4,'com.talkweb.mzzd.MzzdFreeResultActivity'),(85,3,'com.talkweb.mzzd.MzzdQueryResultActivity'),(86,4,'com.talkweb.mzzd.MzzdChargeResultActivity'),(87,3,'com.talkweb.yhlq.YaoQianActivity'),(88,4,'com.talkweb.xzpd.XzpdActivity'),(89,3,'com.talkweb.yhlq.CqProcessActivity'),(90,4,'com.talkweb.xzpd.XzpdXzxzActivity'),(91,3,'com.talkweb.yhlq.ZhiJiaoActivity'),(92,5,'com.go108.lic.free.StartupActivity'),(93,4,'com.talkweb.xzpd.XzpdFreeResultActivity'),(94,3,'com.talkweb.yhlq.QianResultActivity'),(95,4,'com.talkweb.xzpd.XzpdChargeResultActivity'),(96,3,'com.talkweb.xzpd.XzpdRequestChargeResultActivity'),(97,4,'com.talkweb.xzpd.XzpdForbiddenParadiseActivity'),(98,5,'com.go108.lic.free.InputActivity'),(99,3,'com.talkweb.xzpd.XzpdRequestPersueSecretsActivity'),(100,4,'com.talkweb.xzpd.XzpdPersueSecretsActivity'),(101,5,'com.go108.lic.free.MainActivity'),(102,3,'com.talkweb.xzpd.XzpdRequestForbiddenParadiseActivity'),(103,4,'com.talkweb.yhlq.YhlqActivity'),(104,5,'com.go108.lic.free.PersonModifyActivity'),(105,3,'com.heroit.tzuwei.lite.MoreExctingActivity'),(106,4,'com.talkweb.yhlq.InputActivity'),(107,5,'com.go108.lic.free.MoreExctingActivity'),(108,4,'com.talkweb.qrmj.QrmjActivity'),(109,5,'com.go108.lic.free.menu.FeedbackActivity'),(110,4,'com.talkweb.qrmj.QrmjResultActivity'),(111,5,'com.go108.lic.free.menu.AboutActivity'),(112,4,'com.talkweb.mzzd.ContactActivity'),(113,5,'com.go108.lic.free.menu.HelpActivity'),(114,4,'com.talkweb.menu.MenuActivity'),(115,5,'com.go108.lic.free.menu.SiteDescActivity'),(116,4,'com.talkweb.menu.FavoriteListActivity'),(117,5,'com.go108.lic.free.util.DownloadFileService'),(118,4,'com.talkweb.menu.FavoriteRequestActivity'),(119,4,'com.talkweb.menu.HelpActivity'),(120,4,'com.talkweb.menu.UpdateActivity'),(121,4,'com.talkweb.menu.CompanyIntroActivity'),(122,4,'com.talkweb.menu.WebIntroActivity'),(123,4,'com.talkweb.menu.WapIntroActivity'),(124,4,'com.talkweb.mzzd.MzzdQueryResultActivity'),(125,4,'com.talkweb.yhlq.YaoQianActivity'),(126,4,'com.talkweb.yhlq.CqProcessActivity'),(127,4,'com.talkweb.yhlq.ZhiJiaoActivity'),(128,4,'com.talkweb.yhlq.QianResultActivity'),(129,2,'com.heroit.iching.lite.ag'),(130,4,'com.talkweb.xzpd.XzpdRequestChargeResultActivity'),(131,4,'com.talkweb.xzpd.XzpdRequestPersueSecretsActivity'),(132,4,'com.talkweb.xzpd.XzpdRequestForbiddenParadiseActivity'),(133,4,'com.heroit.tzuwei.lite.MoreExctingActivity'),(134,2,'com.heroit.iching.lite.l'),(135,2,'com.heroit.iching.lite.ai'),(136,2,'a.a.a.a.a'),(137,2,'com.talkweb.easy.a'),(138,2,'com.heroit.iching.lite.p'),(139,6,'com.talkweb.imoney.LoadMain'),(140,6,'com.talkweb.imoney.almanac.AlmanacActivity'),(141,6,'com.talkweb.imoney.almanac.QueryAlmanacActivity'),(142,6,'com.talkweb.imoney.almanac.TodayAlmanacActivity'),(143,6,'com.talkweb.imoney.guagua.GuaGuaActivity'),(144,6,'com.talkweb.imoney.util.BirthdayInputActivity'),(145,6,'com.talkweb.imoney.ball.BallActivity'),(146,6,'com.talkweb.imoney.ball.ResultShowActivity'),(147,6,'com.talkweb.imoney.ball.SimulateBuyActivity'),(148,6,'com.talkweb.imoney.ball.BallChooseActivity'),(149,6,'com.talkweb.imoney.god.GodMainActivity'),(150,6,'com.talkweb.comm.MoreExctingActivity'),(151,7,'com.talkweb.ycya.LoginActivity'),(152,7,'com.talkweb.main.MainActivity'),(153,7,'com.talkweb.mzzd.MzzdActivity'),(154,7,'com.talkweb.mzzd.MzzdFreeResultActivity'),(155,7,'com.talkweb.comm.MoreExctingActivity'),(156,7,'com.talkweb.mzzd.MzzdChargeResultActivity'),(157,7,'com.talkweb.xzpd.XzpdActivity'),(158,7,'com.talkweb.xzpd.XzpdXzxzActivity'),(159,7,'com.talkweb.xzpd.XzpdFreeResultActivity'),(160,7,'com.talkweb.xzpd.XzpdChargeResultActivity'),(161,7,'com.talkweb.xzpd.XzpdForbiddenParadiseActivity'),(162,7,'com.talkweb.xzpd.XzpdPersueSecretsActivity'),(163,7,'com.talkweb.yhlq.YhlqActivity'),(164,7,'com.talkweb.qrmj.QrmjActivity'),(165,7,'com.talkweb.qrmj.QrmjResultActivity'),(166,7,'com.talkweb.mzzd.ContactActivity'),(167,7,'com.talkweb.menu.MenuActivity'),(168,7,'com.talkweb.menu.FavoriteListActivity'),(169,7,'com.talkweb.menu.FavoriteRequestActivity'),(170,7,'com.talkweb.menu.HelpActivity'),(171,7,'com.talkweb.menu.UpdateActivity'),(172,7,'com.talkweb.menu.CompanyIntroActivity'),(173,7,'com.talkweb.menu.WebIntroActivity'),(174,7,'com.talkweb.menu.WapIntroActivity'),(175,7,'com.talkweb.mzzd.MzzdQueryResultActivity'),(176,7,'com.talkweb.yhlq.YaoQianActivity'),(177,7,'com.talkweb.yhlq.CqProcessActivity'),(178,7,'com.talkweb.yhlq.ZhiJiaoActivity'),(179,7,'com.talkweb.yhlq.QianResultActivity'),(180,7,'com.talkweb.xzpd.XzpdRequestChargeResultActivity'),(181,7,'com.talkweb.xzpd.XzpdRequestPersueSecretsActivity'),(182,7,'com.talkweb.xzpd.XzpdRequestForbiddenParadiseActivity'),(183,5,'com.go108.lic.free.util.APNOpera'),(184,5,'com.go108.lic.free.menu.AboutActivity$1'),(185,6,'com.talkweb.imoney.almanac.b'),(186,5,'com.go108.lic.free.StartupActivity$2'),(187,5,'com.go108.lic.free.MainActivity$2'),(188,6,'com.talkweb.imoney.god.a'),(189,6,'com.talkweb.imoney.god.b'),(190,6,'com.talkweb.imoney.god.g'),(191,7,'com.talkweb.yhlq.QianResultActivity$2'),(192,7,'com.talkweb.main.MainActivity$7'),(193,7,'com.talkweb.xzpd.XzpdActivity$1'),(194,7,'com.talkweb.yhlq.YaoQianActivity$3'),(195,7,'com.talkweb.main.MainActivity$2'),(196,7,'com.talkweb.net.APNOpera'),(197,7,'com.talkweb.yhlq.YhlqActivity$1'),(198,7,'com.talkweb.mzzd.MzzdActivity$2'),(199,7,'com.talkweb.xzpd.XzpdFreeResultActivity$1'),(200,7,'com.talkweb.ycya.LoginActivity$MyThread'),(201,7,'com.talkweb.qrmj.QrmjResultActivity$1'),(202,7,'com.talkweb.yhlq.QianResultActivity$1'),(203,7,'com.talkweb.comm.Utils'),(204,7,'com.talkweb.qrmj.QrmjActivity$3$1'),(205,7,'com.talkweb.yhlq.CqProcessActivity$1$1'),(206,7,'cn.com.go108.feecontrol.APNOpera'),(207,7,'com.talkweb.yhlq.YaoQianActivity$1$1'),(208,7,'com.talkweb.xzpd.XzpdActivity$2'),(209,7,'com.talkweb.mzzd.MzzdFreeResultActivity$1');
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
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,52,'birthday'),(2,49,'APP_CHANNEL'),(3,54,'date'),(4,52,'hex'),(5,52,'save'),(6,52,'name'),(7,49,'appload'),(8,52,'APP_CHANNEL'),(9,52,'time'),(10,54,'url'),(11,53,'type'),(12,52,'type'),(13,54,'title'),(14,49,'APP_NAME'),(15,52,'sex'),(16,52,'isPaid'),(17,54,'content'),(18,51,'isAuto'),(19,52,'APP_NAME'),(20,104,'taTime'),(21,104,'myDay'),(22,104,'myId'),(23,101,'APP_CHANNEL'),(24,104,'myTime'),(25,104,'taDay'),(26,104,'myMonth'),(27,92,'APP_NAME'),(28,98,'APP_NAME'),(29,101,'APP_NAME'),(30,92,'APP_CHANNEL'),(31,98,'APP_CHANNEL'),(32,104,'taYear'),(33,104,'modifyFlag'),(34,104,'myName'),(35,104,'taId'),(36,104,'myGender'),(37,117,'path'),(38,101,'readFlag'),(39,109,'APP_NAME'),(40,134,'day'),(41,104,'taGender'),(42,135,'currentMonth'),(43,104,'taName'),(44,117,'productName'),(45,104,'taMonth'),(46,135,'currentYear'),(47,134,'year'),(48,104,'loveState'),(49,104,'myYear'),(50,141,'BallBeanChoice'),(51,138,'isqd'),(52,143,'APP_NAME'),(53,134,'APP_NAME'),(54,140,'APP_NAME'),(55,139,'APP_NAME'),(56,135,'APP_NAME'),(57,141,'APP_NAME'),(58,134,'AUTO_CHOOSE_NUMBERS'),(59,135,'AUTO_CHOOSE_NUMBERS'),(60,141,'AUTO_CHOOSE_NUMBERS'),(61,135,'currentDay'),(62,143,'APP_CHANNEL'),(63,134,'month'),(64,134,'APP_CHANNEL'),(65,140,'APP_CHANNEL'),(66,139,'APP_CHANNEL'),(67,135,'APP_CHANNEL'),(68,141,'APP_CHANNEL'),(69,148,'nameStr'),(70,172,'time'),(71,151,'starID'),(72,146,'phone'),(73,148,'isreturn'),(74,151,'xzName'),(75,173,'strArray'),(76,159,'strArray'),(77,171,'time'),(78,153,'gender'),(79,173,'str'),(80,148,'gender'),(81,146,'appload'),(82,153,'male_xzID'),(83,153,'half_gender'),(84,153,'strArray'),(85,148,'strArray'),(86,153,'female_xzID'),(87,157,'APP_CHANNEL'),(88,148,'APP_CHANNEL'),(89,151,'APP_CHANNEL'),(90,159,'APP_CHANNEL'),(91,173,'APP_CHANNEL'),(92,153,'APP_CHANNEL'),(93,164,'APP_CHANNEL'),(94,158,'APP_CHANNEL'),(95,146,'APP_CHANNEL'),(96,147,'APP_CHANNEL'),(97,171,'APP_CHANNEL'),(98,158,'loverInfoArray'),(99,157,'APP_NAME'),(100,148,'APP_NAME'),(101,151,'APP_NAME'),(102,159,'APP_NAME'),(103,173,'APP_NAME'),(104,153,'APP_NAME'),(105,158,'APP_NAME'),(106,146,'APP_NAME'),(107,147,'APP_NAME'),(108,171,'APP_NAME'),(109,164,'APP_NAME'),(110,147,'nameStr');
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
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',1,NULL,NULL),(42,42,'s',1,NULL,NULL),(43,43,'s',1,NULL,NULL),(44,44,'s',0,NULL,NULL),(45,45,'s',0,NULL,NULL),(46,46,'r',1,NULL,NULL),(47,47,'r',1,NULL,NULL),(48,48,'a',1,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',1,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,71,'a',0,NULL,NULL),(72,72,'a',0,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,74,'a',0,NULL,NULL),(75,75,'a',0,NULL,NULL),(76,76,'a',1,NULL,NULL),(77,77,'a',0,NULL,NULL),(78,78,'a',0,NULL,NULL),(79,79,'a',0,NULL,NULL),(80,80,'a',0,NULL,NULL),(81,81,'a',0,NULL,NULL),(82,82,'a',0,NULL,NULL),(83,83,'a',0,NULL,NULL),(84,84,'a',0,NULL,NULL),(85,85,'a',0,NULL,NULL),(86,86,'a',0,NULL,NULL),(87,87,'a',0,NULL,NULL),(88,88,'a',0,NULL,NULL),(89,89,'a',0,NULL,NULL),(90,90,'a',0,NULL,NULL),(91,91,'a',0,NULL,NULL),(92,92,'a',1,NULL,NULL),(93,93,'a',0,NULL,NULL),(94,94,'a',0,NULL,NULL),(95,95,'a',0,NULL,NULL),(96,96,'a',0,NULL,NULL),(97,97,'a',0,NULL,NULL),(98,98,'a',0,NULL,NULL),(99,99,'a',0,NULL,NULL),(100,100,'a',0,NULL,NULL),(101,101,'a',0,NULL,NULL),(102,102,'a',0,NULL,NULL),(103,103,'a',0,NULL,NULL),(104,104,'a',0,NULL,NULL),(105,105,'a',0,NULL,NULL),(106,106,'a',0,NULL,NULL),(107,107,'a',0,NULL,NULL),(108,108,'a',0,NULL,NULL),(109,109,'a',0,NULL,NULL),(110,110,'a',0,NULL,NULL),(111,111,'a',0,NULL,NULL),(112,112,'a',0,NULL,NULL),(113,113,'a',0,NULL,NULL),(114,114,'a',0,NULL,NULL),(115,115,'a',0,NULL,NULL),(116,116,'a',0,NULL,NULL),(117,117,'s',0,NULL,NULL),(118,118,'a',0,NULL,NULL),(119,119,'a',0,NULL,NULL),(120,120,'a',0,NULL,NULL),(121,121,'a',0,NULL,NULL),(122,122,'a',0,NULL,NULL),(123,123,'a',0,NULL,NULL),(124,124,'a',0,NULL,NULL),(125,125,'a',0,NULL,NULL),(126,126,'a',0,NULL,NULL),(127,127,'a',0,NULL,NULL),(128,128,'a',0,NULL,NULL),(129,130,'a',0,NULL,NULL),(130,131,'a',0,NULL,NULL),(131,132,'a',0,NULL,NULL),(132,133,'a',0,NULL,NULL),(133,139,'a',1,NULL,NULL),(134,140,'a',0,NULL,NULL),(135,141,'a',0,NULL,NULL),(136,142,'a',0,NULL,NULL),(137,143,'a',0,NULL,NULL),(138,144,'a',0,NULL,NULL),(139,145,'a',0,NULL,NULL),(140,146,'a',0,NULL,NULL),(141,147,'a',0,NULL,NULL),(142,148,'a',0,NULL,NULL),(143,149,'a',0,NULL,NULL),(144,150,'a',0,NULL,NULL),(145,151,'a',1,NULL,NULL),(146,152,'a',0,NULL,NULL),(147,153,'a',0,NULL,NULL),(148,154,'a',0,NULL,NULL),(149,155,'a',0,NULL,NULL),(150,156,'a',0,NULL,NULL),(151,157,'a',0,NULL,NULL),(152,158,'a',0,NULL,NULL),(153,159,'a',0,NULL,NULL),(154,160,'a',0,NULL,NULL),(155,161,'a',0,NULL,NULL),(156,162,'a',0,NULL,NULL),(157,163,'a',0,NULL,NULL),(158,164,'a',0,NULL,NULL),(159,165,'a',0,NULL,NULL),(160,166,'a',0,NULL,NULL),(161,167,'a',0,NULL,NULL),(162,168,'a',0,NULL,NULL),(163,169,'a',0,NULL,NULL),(164,170,'a',0,NULL,NULL),(165,171,'a',0,NULL,NULL),(166,172,'a',0,NULL,NULL),(167,173,'a',0,NULL,NULL),(168,174,'a',0,NULL,NULL),(169,175,'a',0,NULL,NULL),(170,176,'a',0,NULL,NULL),(171,177,'a',0,NULL,NULL),(172,178,'a',0,NULL,NULL),(173,179,'a',0,NULL,NULL),(174,180,'a',0,NULL,NULL),(175,181,'a',0,NULL,NULL),(176,182,'a',0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=246 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,49),(2,2,55),(3,3,53),(4,4,50),(5,4,52),(6,4,51),(7,5,54),(8,6,52),(9,6,51),(10,6,50),(11,7,49),(12,8,49),(13,9,49),(14,10,48),(15,11,50),(16,11,51),(17,12,49),(18,13,49),(19,14,50),(20,14,49),(21,14,51),(22,15,51),(23,15,50),(24,16,109),(25,16,101),(26,17,101),(27,17,98),(28,18,111),(29,18,101),(30,19,101),(31,20,101),(32,21,107),(33,21,101),(34,22,101),(35,23,101),(36,24,134),(37,24,135),(38,25,134),(39,25,135),(40,25,143),(41,26,92),(42,27,139),(43,27,135),(44,27,134),(45,28,101),(46,29,101),(47,30,144),(48,31,101),(49,31,109),(50,32,143),(51,33,101),(52,34,135),(53,34,134),(54,34,141),(55,35,143),(56,35,135),(57,35,134),(58,36,143),(59,36,134),(60,36,135),(61,37,143),(62,38,139),(63,38,135),(64,38,134),(65,39,134),(66,39,135),(67,39,143),(68,40,173),(69,40,151),(70,40,153),(71,40,158),(72,40,159),(73,40,148),(74,41,173),(75,42,158),(76,42,157),(77,42,159),(78,42,153),(79,42,151),(80,42,146),(81,42,148),(82,42,173),(83,43,148),(84,43,153),(85,43,151),(86,43,173),(87,43,158),(88,43,159),(89,44,148),(90,44,151),(91,44,170),(92,44,153),(93,44,158),(94,44,159),(95,44,173),(96,45,146),(97,46,153),(98,46,173),(99,46,151),(100,46,146),(101,46,148),(102,46,157),(103,46,158),(104,46,159),(105,47,148),(106,47,159),(107,47,158),(108,47,173),(109,47,157),(110,47,151),(111,47,153),(112,48,147),(113,48,148),(114,48,159),(115,48,173),(116,48,158),(117,48,153),(118,48,151),(119,49,148),(120,49,151),(121,49,153),(122,49,173),(123,49,158),(124,49,159),(125,50,148),(126,50,146),(127,50,151),(128,50,153),(129,50,159),(130,50,157),(131,50,173),(132,50,158),(133,51,146),(134,52,145),(135,53,146),(136,54,159),(137,54,173),(138,54,158),(139,54,148),(140,54,151),(141,54,153),(142,55,146),(143,56,173),(144,56,158),(145,56,151),(146,56,153),(147,56,148),(148,56,159),(149,57,153),(150,57,158),(151,57,159),(152,57,173),(153,57,157),(154,57,148),(155,57,151),(156,57,146),(157,58,160),(158,59,159),(159,59,148),(160,59,158),(161,59,151),(162,59,173),(163,59,153),(164,60,153),(165,60,151),(166,60,148),(167,60,159),(168,60,171),(169,60,173),(170,60,158),(171,61,153),(172,61,164),(173,61,148),(174,61,171),(175,61,151),(176,61,159),(177,61,158),(178,61,157),(179,61,146),(180,61,173),(181,61,147),(182,62,151),(183,62,153),(184,62,173),(185,62,158),(186,62,157),(187,62,159),(188,62,148),(189,62,146),(190,63,160),(191,64,151),(192,64,153),(193,64,173),(194,64,158),(195,64,157),(196,64,159),(197,64,146),(198,64,148),(199,65,173),(200,65,153),(201,65,159),(202,65,158),(203,65,170),(204,65,151),(205,65,148),(206,66,158),(207,66,173),(208,66,159),(209,66,153),(210,66,151),(211,66,148),(212,67,146),(213,68,160),(214,69,151),(215,69,148),(216,69,171),(217,69,164),(218,69,153),(219,69,158),(220,69,159),(221,69,157),(222,69,173),(223,69,147),(224,69,146),(225,70,153),(226,70,151),(227,70,148),(228,70,158),(229,70,159),(230,70,173),(231,71,157),(232,71,153),(233,71,151),(234,71,148),(235,71,173),(236,71,158),(237,71,159),(238,72,146),(239,72,159),(240,72,149),(241,72,148),(242,72,153),(243,72,151),(244,72,158),(245,72,173);
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,49,'<com.heroit.iching.lite.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(2,55,'<com.talkweb.easy.MoreExctingActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',25,'a',NULL),(3,53,'<com.heroit.iching.lite.HistoryListActivity: void d()>',7,'a',NULL),(4,129,'<com.heroit.iching.lite.ag: void onClick(android.view.View)>',7,'a',NULL),(5,134,'<com.heroit.iching.lite.l: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(6,135,'<com.heroit.iching.lite.ai: void onClick(android.view.View)>',7,'a',NULL),(7,136,'<a.a.a.a.a: java.lang.String a()>',5,'p',NULL),(8,49,'<com.heroit.iching.lite.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(9,49,'<com.heroit.iching.lite.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',73,'a',NULL),(10,137,'<com.talkweb.easy.a: void run()>',11,'a',NULL),(11,50,'<com.heroit.iching.lite.InputActivity: void a(com.heroit.iching.lite.InputActivity,java.lang.Boolean)>',72,'a',NULL),(12,49,'<com.heroit.iching.lite.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',76,'a',NULL),(13,136,'<a.a.a.a.a: java.lang.String a()>',18,'p',NULL),(14,138,'<com.heroit.iching.lite.p: void onClick(android.view.View)>',7,'a',NULL),(15,51,'<com.heroit.iching.lite.ShakeActivity: void f(com.heroit.iching.lite.ShakeActivity)>',50,'a',NULL),(16,183,'<com.go108.lic.free.util.APNOpera: long getPreferredApnId()>',5,'p',NULL),(17,98,'<com.go108.lic.free.InputActivity: void save()>',37,'a',NULL),(18,184,'<com.go108.lic.free.menu.AboutActivity$1: void onClick(android.content.DialogInterface,int)>',13,'a',NULL),(19,101,'<com.go108.lic.free.MainActivity: void readInfo()>',24,'a',NULL),(20,101,'<com.go108.lic.free.MainActivity: void onClick(android.view.View)>',12,'a',NULL),(21,107,'<com.go108.lic.free.MoreExctingActivity: void linkSite(com.go108.lic.free.ExctingProductBean)>',14,'a',NULL),(22,101,'<com.go108.lic.free.MainActivity: void doSMS()>',5,'a',NULL),(23,101,'<com.go108.lic.free.MainActivity: void onClick(android.view.View)>',20,'a',NULL),(24,185,'<com.talkweb.imoney.almanac.b: void onClick(android.view.View)>',28,'a',NULL),(25,149,'<com.talkweb.imoney.god.GodMainActivity: void b()>',10,'a',NULL),(26,186,'<com.go108.lic.free.StartupActivity$2: void run()>',5,'a',0),(27,145,'<com.talkweb.imoney.ball.BallActivity: void onClick(android.view.View)>',51,'a',NULL),(28,101,'<com.go108.lic.free.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(29,101,'<com.go108.lic.free.MainActivity: void onClick(android.view.View)>',24,'a',NULL),(30,150,'<com.talkweb.comm.MoreExctingActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',25,'a',NULL),(31,183,'<com.go108.lic.free.util.APNOpera: java.lang.String readCurrentAPN()>',10,'p',NULL),(32,149,'<com.talkweb.imoney.god.GodMainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',21,'a',NULL),(33,187,'<com.go108.lic.free.MainActivity$2: void onClick(android.view.View)>',7,'a',NULL),(34,147,'<com.talkweb.imoney.ball.SimulateBuyActivity: void onClick(android.view.View)>',108,'a',NULL),(35,188,'<com.talkweb.imoney.god.a: void onClick(android.view.View)>',11,'a',NULL),(36,189,'<com.talkweb.imoney.god.b: void onClick(android.view.View)>',11,'a',NULL),(37,149,'<com.talkweb.imoney.god.GodMainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(38,145,'<com.talkweb.imoney.ball.BallActivity: void onClick(android.view.View)>',10,'a',NULL),(39,190,'<com.talkweb.imoney.god.g: void onClick(android.view.View)>',11,'a',NULL),(40,191,'<com.talkweb.yhlq.QianResultActivity$2: void onClick(android.view.View)>',9,'a',NULL),(41,179,'<com.talkweb.yhlq.QianResultActivity: boolean onKeyDown(int,android.view.KeyEvent)>',8,'a',NULL),(42,192,'<com.talkweb.main.MainActivity$7: void onClick(android.content.DialogInterface,int)>',29,'a',NULL),(43,193,'<com.talkweb.xzpd.XzpdActivity$1: void onClick(android.view.View)>',7,'a',NULL),(44,194,'<com.talkweb.yhlq.YaoQianActivity$3: void run()>',15,'a',NULL),(45,195,'<com.talkweb.main.MainActivity$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',26,'a',NULL),(46,196,'<com.talkweb.net.APNOpera: java.lang.String readCurrentAPN()>',10,'p',NULL),(47,197,'<com.talkweb.yhlq.YhlqActivity$1: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(48,198,'<com.talkweb.mzzd.MzzdActivity$2: void onClick(android.view.View)>',7,'a',NULL),(49,199,'<com.talkweb.xzpd.XzpdFreeResultActivity$1: void onClick(android.view.View)>',7,'a',NULL),(50,192,'<com.talkweb.main.MainActivity$7: void onClick(android.content.DialogInterface,int)>',36,'a',NULL),(51,152,'<com.talkweb.main.MainActivity: void showRecommedDialog()>',5,'a',NULL),(52,200,'<com.talkweb.ycya.LoginActivity$MyThread: void run()>',11,'a',NULL),(53,195,'<com.talkweb.main.MainActivity$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(54,201,'<com.talkweb.qrmj.QrmjResultActivity$1: void onClick(android.view.View)>',7,'a',NULL),(55,195,'<com.talkweb.main.MainActivity$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',12,'a',NULL),(56,202,'<com.talkweb.yhlq.QianResultActivity$1: void onClick(android.view.View)>',7,'a',NULL),(57,192,'<com.talkweb.main.MainActivity$7: void onClick(android.content.DialogInterface,int)>',22,'a',NULL),(58,203,'<com.talkweb.comm.Utils: void readContactst2(java.util.ArrayList,android.content.ContentResolver,android.os.Handler)>',4,'p',NULL),(59,204,'<com.talkweb.qrmj.QrmjActivity$3$1: void run()>',78,'a',NULL),(60,205,'<com.talkweb.yhlq.CqProcessActivity$1$1: void run()>',65,'a',NULL),(61,206,'<cn.com.go108.feecontrol.APNOpera: long getPreferredApnId()>',5,'p',NULL),(62,196,'<com.talkweb.net.APNOpera: long getPreferredApnId()>',5,'p',NULL),(63,166,'<com.talkweb.mzzd.ContactActivity: void readContactst1(java.util.ArrayList)>',4,'p',NULL),(64,192,'<com.talkweb.main.MainActivity$7: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(65,207,'<com.talkweb.yhlq.YaoQianActivity$1$1: void run()>',29,'a',NULL),(66,208,'<com.talkweb.xzpd.XzpdActivity$2: void onClick(android.view.View)>',7,'a',NULL),(67,195,'<com.talkweb.main.MainActivity$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',48,'a',NULL),(68,203,'<com.talkweb.comm.Utils: void readContactst2(java.util.ArrayList,android.content.ContentResolver,android.os.Handler)>',25,'p',NULL),(69,206,'<cn.com.go108.feecontrol.APNOpera: java.lang.String readCurrentAPN()>',10,'p',NULL),(70,209,'<com.talkweb.mzzd.MzzdFreeResultActivity$1: void onClick(android.view.View)>',7,'a',NULL),(71,163,'<com.talkweb.yhlq.YhlqActivity: void startYaoQianActivity()>',4,'a',NULL),(72,155,'<com.talkweb.comm.MoreExctingActivity: void linkSite(com.talkweb.comm.ExctingProductBean)>',14,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,11),(2,2,11),(3,6,11),(4,16,12),(5,19,11),(6,20,11),(7,21,11),(8,31,11),(9,51,11),(10,66,11),(11,67,11);
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,4,'com/heroit/iching/lite/ResultActivity'),(2,5,'com/talkweb/easy/MoreExctingActivity'),(3,7,'com/heroit/iching/lite/InputActivity'),(4,8,'com/talkweb/easy/MoreExctingActivity'),(5,9,'com/talkweb/easy/VersionInfoActivity'),(6,10,'com/heroit/iching/lite/MainActivity'),(7,11,'com/heroit/iching/lite/ShakeActivity'),(8,12,'com/talkweb/easy/MenuInfoActivity'),(9,13,'com/heroit/iching/lite/InputActivity'),(10,14,'com/heroit/iching/lite/ResultActivity'),(11,15,'com/go108/lic/free/MainActivity'),(12,17,'com/go108/lic/free/InputActivity'),(13,18,'com/go108/lic/free/PersonModifyActivity'),(14,23,'com/talkweb/imoney/almanac/QueryAlmanacActivity'),(15,22,'com/go108/lic/free/PersonModifyActivity'),(16,24,'com/talkweb/imoney/util/BirthdayInputActivity'),(17,26,'com/talkweb/imoney/ball/ResultShowActivity'),(18,28,'com/go108/lic/free/menu/FeedbackActivity'),(19,29,'com/talkweb/imoney/ball/SimulateBuyActivity'),(20,30,'com/go108/lic/free/MoreExctingActivity'),(21,32,'com/talkweb/comm/MoreExctingActivity'),(22,33,'com/go108/lic/free/MoreExctingActivity'),(23,34,'com/talkweb/imoney/ball/BallChooseActivity'),(24,35,'com/talkweb/imoney/ball/BallActivity'),(25,36,'com/talkweb/imoney/almanac/AlmanacActivity'),(26,37,'com/talkweb/imoney/util/BirthdayInputActivity'),(27,38,'com/talkweb/imoney/ball/ResultShowActivity'),(28,39,'com/talkweb/imoney/ball/ResultShowActivity'),(29,40,'com/talkweb/imoney/guagua/GuaGuaActivity'),(30,41,'com/talkweb/main/MainActivity'),(31,42,'com/talkweb/main/MainActivity'),(32,43,'com/talkweb/menu/WebIntroActivity'),(33,44,'com/talkweb/xzpd/XzpdXzxzActivity'),(34,45,'com/talkweb/yhlq/ZhiJiaoActivity'),(35,46,'com/talkweb/yhlq/YhlqActivity'),(36,47,'com/talkweb/yhlq/QianResultActivity'),(37,48,'com/talkweb/mzzd/ContactActivity'),(38,49,'com/talkweb/comm/MoreExctingActivity'),(39,50,'com/talkweb/comm/MoreExctingActivity'),(40,52,'com/talkweb/main/MainActivity'),(41,53,'com/talkweb/xzpd/XzpdActivity'),(42,54,'com/talkweb/comm/MoreExctingActivity'),(43,55,'com/talkweb/mzzd/MzzdActivity'),(44,56,'com/talkweb/comm/MoreExctingActivity'),(45,57,'com/talkweb/menu/CompanyIntroActivity'),(46,58,'com/talkweb/qrmj/QrmjResultActivity'),(47,59,'com/talkweb/yhlq/QianResultActivity'),(48,60,'com/talkweb/menu/HelpActivity'),(49,61,'com/talkweb/yhlq/ZhiJiaoActivity'),(50,62,'com/talkweb/xzpd/XzpdXzxzActivity'),(51,63,'com/talkweb/qrmj/QrmjActivity'),(52,64,'com/talkweb/comm/MoreExctingActivity'),(53,65,'com/talkweb/yhlq/YaoQianActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,2,1),(2,6,2),(3,16,6),(4,19,7),(5,20,8),(6,31,9),(7,66,18),(8,67,19);
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
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'sms_body'),(2,3,'birthday'),(3,3,'time'),(4,3,'sex'),(5,3,'hex'),(6,3,'save'),(7,3,'name'),(8,3,'type'),(9,3,'isPaid'),(10,4,'birthday'),(11,4,'time'),(12,4,'sex'),(13,4,'hex'),(14,4,'save'),(15,4,'name'),(16,4,'type'),(17,4,'isPaid'),(18,10,'appload'),(19,11,'birthday'),(20,11,'sex'),(21,11,'name'),(22,11,'type'),(23,11,'isAuto'),(24,14,'(.*)'),(25,15,'readFlag'),(26,18,'loveState'),(27,18,'taMonth'),(28,18,'myTime'),(29,18,'taGender'),(30,18,'myGender'),(31,18,'myGenderStr'),(32,18,'myYear'),(33,18,'myMonth'),(34,18,'taTime'),(35,18,'myId'),(36,18,'taGenderStr'),(37,18,'taDay'),(38,18,'loveStateStr'),(39,18,'myDay'),(40,18,'taName'),(41,18,'modifyFlag'),(42,18,'myName'),(43,18,'taYear'),(44,18,'taId'),(45,21,'sms_body'),(46,22,'loveState'),(47,22,'taMonth'),(48,22,'myTime'),(49,22,'taGender'),(50,22,'myGender'),(51,22,'myGenderStr'),(52,22,'myYear'),(53,22,'myMonth'),(54,22,'taTime'),(55,22,'myId'),(56,22,'taGenderStr'),(57,22,'taDay'),(58,23,'currentDay'),(59,22,'loveStateStr'),(60,23,'currentYear'),(61,22,'myDay'),(62,23,'currentMonth'),(63,22,'taName'),(64,22,'modifyFlag'),(65,22,'myName'),(66,22,'taYear'),(67,22,'taId'),(68,24,'isqd'),(69,25,'AUTO_CHOOSE_NUMBERS'),(70,26,'AUTO_CHOOSE_NUMBERS'),(71,29,'AUTO_CHOOSE_NUMBERS'),(72,37,'isqd'),(73,39,'AUTO_CHOOSE_NUMBERS'),(74,45,'time'),(75,47,'strArray'),(76,47,'str'),(77,51,'sms_body'),(78,52,'appload'),(79,58,'strArray'),(80,59,'strArray'),(81,59,'str'),(82,61,'time'),(83,63,'loverInfoArray');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,10),(6,5,8),(7,5,9),(8,5,6),(9,5,7),(10,5,5),(11,7,1),(12,8,1),(13,9,1),(14,10,1),(15,11,1),(16,12,1);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,2),(3,4,2),(4,7,1),(5,8,1),(6,9,1),(7,10,1),(8,11,1),(9,12,1);
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
INSERT INTO `IMimeTypes` VALUES (1,1,'vnd.android-dir','mms-sms'),(2,21,'vnd.android-dir','mms-sms'),(3,51,'vnd.android-dir','mms-sms');
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,4,'com.heroit.iching.lite'),(2,5,'com.heroit.iching.lite'),(3,7,'com.heroit.iching.lite'),(4,8,'com.heroit.iching.lite'),(5,9,'com.heroit.iching.lite'),(6,10,'com.heroit.iching.lite'),(7,11,'com.heroit.iching.lite'),(8,12,'com.heroit.iching.lite'),(9,13,'com.heroit.iching.lite'),(10,14,'com.heroit.iching.lite'),(11,15,'com.go108.lic.free'),(12,17,'com.go108.lic.free'),(13,18,'com.go108.lic.free'),(14,23,'com.talkweb.imoney'),(15,22,'com.go108.lic.free'),(16,24,'com.talkweb.imoney'),(17,26,'com.talkweb.imoney'),(18,28,'com.go108.lic.free'),(19,29,'com.talkweb.imoney'),(20,30,'com.go108.lic.free'),(21,32,'com.talkweb.imoney'),(22,33,'com.go108.lic.free'),(23,34,'com.talkweb.imoney'),(24,35,'com.talkweb.imoney'),(25,36,'com.talkweb.imoney'),(26,37,'com.talkweb.imoney'),(27,38,'com.talkweb.imoney'),(28,39,'com.talkweb.imoney'),(29,40,'com.talkweb.imoney'),(30,41,'com.talkweb.ycya.free'),(31,42,'com.talkweb.ycya.free'),(32,43,'com.talkweb.ycya.free'),(33,44,'com.talkweb.ycya.free'),(34,45,'com.talkweb.ycya.free'),(35,46,'com.talkweb.ycya.free'),(36,47,'com.talkweb.ycya.free'),(37,48,'com.talkweb.ycya.free'),(38,49,'com.talkweb.ycya.free'),(39,50,'com.talkweb.ycya.free'),(40,52,'com.talkweb.ycya.free'),(41,53,'com.talkweb.ycya.free'),(42,54,'com.talkweb.ycya.free'),(43,55,'com.talkweb.ycya.free'),(44,56,'com.talkweb.ycya.free'),(45,57,'com.talkweb.ycya.free'),(46,58,'com.talkweb.ycya.free'),(47,59,'com.talkweb.ycya.free'),(48,60,'com.talkweb.ycya.free'),(49,61,'com.talkweb.ycya.free'),(50,62,'com.talkweb.ycya.free'),(51,63,'com.talkweb.ycya.free'),(52,64,'com.talkweb.ycya.free'),(53,65,'com.talkweb.ycya.free');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,41,0),(3,42,0),(4,43,0),(5,46,0),(6,47,0),(7,48,0),(8,58,0),(9,76,0),(10,92,0),(11,133,0),(12,145,0);
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
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,1,0),(3,3,1,0),(4,3,0,0),(5,4,0,0),(6,5,1,0),(7,6,0,0),(8,8,0,0),(9,9,0,0),(10,10,0,0),(11,11,0,0),(12,12,0,0),(13,14,0,0),(14,15,0,0),(15,17,0,0),(16,18,1,0),(17,19,0,0),(18,20,0,0),(19,21,1,0),(20,21,1,0),(21,22,1,0),(22,23,0,0),(23,24,0,0),(24,25,0,0),(25,27,1,0),(26,27,0,0),(27,28,1,0),(28,28,0,0),(29,27,0,0),(30,29,0,0),(31,30,1,0),(32,32,0,0),(33,33,0,0),(34,34,0,0),(35,35,0,0),(36,36,0,0),(37,37,0,0),(38,38,0,0),(39,38,0,0),(40,39,0,0),(41,40,0,0),(42,41,0,0),(43,42,0,0),(44,43,0,0),(45,44,0,0),(46,45,0,0),(47,47,0,0),(48,48,0,0),(49,49,0,0),(50,50,0,0),(51,51,1,0),(52,52,0,0),(53,53,0,0),(54,54,0,0),(55,55,0,0),(56,56,0,0),(57,57,0,0),(58,59,0,0),(59,60,0,0),(60,64,0,0),(61,65,0,0),(62,66,0,0),(63,67,0,0),(64,70,0,0),(65,71,0,0),(66,72,1,0),(67,72,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,3,58,2,NULL),(2,2,58,2,NULL),(3,27,58,2,NULL),(4,20,58,2,NULL),(5,25,58,2,NULL),(6,31,58,2,NULL),(7,66,58,2,NULL),(8,3,76,2,NULL),(9,2,76,2,NULL),(10,27,76,2,NULL),(11,20,76,2,NULL),(12,25,76,2,NULL),(13,31,76,2,NULL),(14,66,76,2,NULL),(15,3,92,2,NULL),(16,2,92,2,NULL),(17,27,92,2,NULL),(18,20,92,2,NULL),(19,25,92,2,NULL),(20,31,92,2,NULL),(21,66,92,2,NULL),(22,15,101,2,NULL),(23,17,98,2,NULL),(24,18,104,2,NULL),(25,22,104,2,NULL),(26,28,109,2,NULL),(27,30,107,2,NULL),(28,27,1,2,NULL),(29,27,41,2,NULL),(30,27,42,2,NULL),(31,27,43,2,NULL),(32,27,46,2,NULL),(33,27,47,2,NULL),(34,27,48,2,NULL),(35,27,133,2,NULL),(36,27,145,2,NULL),(37,20,1,2,NULL),(38,20,41,2,NULL),(39,20,42,2,NULL),(40,20,43,2,NULL),(41,20,46,2,NULL),(42,20,47,2,NULL),(43,20,48,2,NULL),(44,20,133,2,NULL),(45,20,145,2,NULL),(46,3,1,2,NULL),(47,2,1,2,NULL),(48,25,1,2,NULL),(49,31,1,2,NULL),(50,66,1,2,NULL),(51,3,41,2,NULL),(52,2,41,2,NULL),(53,25,41,2,NULL),(54,31,41,2,NULL),(55,66,41,2,NULL),(56,3,42,2,NULL),(57,2,42,2,NULL),(58,25,42,2,NULL),(59,31,42,2,NULL),(60,66,42,2,NULL),(61,3,43,2,NULL),(62,2,43,2,NULL),(63,25,43,2,NULL),(64,31,43,2,NULL),(65,66,43,2,NULL),(66,3,46,2,NULL),(67,2,46,2,NULL),(68,25,46,2,NULL),(69,31,46,2,NULL),(70,66,46,2,NULL),(71,3,47,2,NULL),(72,2,47,2,NULL),(73,25,47,2,NULL),(74,31,47,2,NULL),(75,66,47,2,NULL),(76,3,48,2,NULL),(77,2,48,2,NULL),(78,25,48,2,NULL),(79,31,48,2,NULL),(80,66,48,2,NULL),(81,8,55,2,NULL),(82,9,57,2,NULL),(83,12,56,2,NULL),(84,11,51,2,NULL),(85,14,52,2,NULL),(86,4,52,2,NULL),(87,3,133,2,NULL),(88,3,145,2,NULL),(89,2,133,2,NULL),(90,2,145,2,NULL),(91,25,145,2,NULL),(92,31,145,2,NULL),(93,66,145,2,NULL),(94,66,133,2,NULL),(95,65,87,2,NULL),(96,65,125,2,NULL),(97,65,170,2,NULL),(98,42,59,2,NULL),(99,42,80,2,NULL),(100,42,146,2,NULL),(101,25,133,2,NULL),(102,31,133,2,NULL),(103,26,140,2,NULL),(104,29,141,2,NULL),(105,38,140,2,NULL),(106,39,140,2,NULL),(107,34,142,2,NULL),(108,24,138,2,NULL),(109,32,144,2,NULL),(110,32,149,2,NULL),(111,37,138,2,NULL);
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
INSERT INTO `PermissionStrings` VALUES (7,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(2,'android.permission.INTERNET'),(9,'android.permission.KILL_BACKGROUND_PROCESSES'),(6,'android.permission.READ_CONTACTS'),(1,'android.permission.READ_PHONE_STATE'),(8,'android.permission.RESTART_PACKAGES'),(4,'android.permission.VIBRATE'),(3,'android.permission.WRITE_EXTERNAL_STORAGE');
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
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(4,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(5,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(6,NULL,NULL,'tel:073184285152',NULL,NULL,NULL),(7,NULL,NULL,'http://www.go108.com.cn/mobile/Client/apk/lic.apk',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'(.*)',NULL,NULL,NULL),(10,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(11,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(12,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(13,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(14,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(15,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(16,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(17,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'http://www.go108.com.cn/mobile/Client/apk/ycya.apk',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,7,3),(2,13,4),(3,16,5),(4,31,10),(5,46,11),(6,58,12),(7,61,13),(8,62,14),(9,63,15),(10,68,16),(11,69,17);
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,1),(9,2,2),(10,2,3),(11,2,4),(12,2,5),(13,2,7),(14,3,1),(15,3,2),(16,3,3),(17,3,5),(18,3,6),(19,3,7),(20,4,1),(21,4,2),(22,4,3),(23,4,5),(24,4,6),(25,4,7),(26,5,1),(27,5,2),(28,5,3),(29,5,4),(30,5,5),(31,5,7),(32,5,8),(33,5,9),(34,6,1),(35,6,2),(36,6,3),(37,6,4),(38,6,5),(39,6,7),(40,7,1),(41,7,2),(42,7,3),(43,7,5),(44,7,6),(45,7,7);
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
