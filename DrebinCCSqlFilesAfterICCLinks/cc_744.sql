-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_744
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (4,'android.intent.action.CALL'),(5,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(3,'android.intent.action.VIEW'),(2,'android.provider.Telephony.SMS_RECEIVED');
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
INSERT INTO `Applications` VALUES (1,'com.talkweb.ycya',2),(2,'com.talkweb.imoney',1),(3,'com.talkweb.imoney',2),(4,'com.go108.lovecome',5),(5,'com.heroit.tzuwei.lite',16),(6,'com.talkweb.imoney',5),(7,'com.talkweb.ycya.free',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.talkweb.ycya.LoginActivity'),(2,1,'com.talkweb.main.MainActivity'),(3,1,'com.talkweb.mzzd.MzzdActivity'),(4,1,'com.talkweb.mzzd.MzzdFreeResultActivity'),(5,1,'com.talkweb.mzzd.MzzdChargeResultActivity'),(6,1,'com.talkweb.xzpd.XzpdActivity'),(7,1,'com.talkweb.xzpd.XzpdXzxzActivity'),(8,1,'com.talkweb.xzpd.XzpdFreeResultActivity'),(9,1,'com.talkweb.xzpd.XzpdChargeResultActivity'),(10,1,'com.talkweb.xzpd.XzpdForbiddenParadiseActivity'),(11,1,'com.talkweb.xzpd.XzpdPersueSecretsActivity'),(12,1,'com.talkweb.yhlq.YhlqActivity'),(13,1,'com.talkweb.qrmj.QrmjActivity'),(14,1,'com.talkweb.qrmj.QrmjResultActivity'),(15,1,'com.talkweb.mzzd.ContactActivity'),(16,1,'com.talkweb.menu.MenuActivity'),(17,1,'com.talkweb.menu.FavoriteListActivity'),(18,1,'com.talkweb.menu.FavoriteRequestActivity'),(19,1,'com.talkweb.menu.HelpActivity'),(20,1,'com.talkweb.menu.UpdateActivity'),(21,1,'com.talkweb.menu.CompanyIntroActivity'),(22,1,'com.talkweb.menu.WebIntroActivity'),(23,1,'com.talkweb.menu.WapIntroActivity'),(24,1,'com.talkweb.mzzd.MzzdQueryResultActivity'),(25,1,'com.talkweb.yhlq.YaoQianActivity'),(26,1,'com.talkweb.yhlq.CqProcessActivity'),(27,1,'com.talkweb.yhlq.ZhiJiaoActivity'),(28,1,'com.talkweb.yhlq.QianResultActivity'),(29,1,'com.talkweb.xzpd.XzpdRequestChargeResultActivity'),(30,1,'com.talkweb.xzpd.XzpdRequestPersueSecretsActivity'),(31,1,'com.talkweb.xzpd.XzpdRequestForbiddenParadiseActivity'),(32,1,'com.talkweb.comm.SmsReceiver'),(33,2,'com.talkweb.imoney.LoadMain'),(34,2,'com.talkweb.imoney.almanac.AlmanacActivity'),(35,2,'com.talkweb.imoney.almanac.QueryAlmanacActivity'),(36,2,'com.talkweb.imoney.almanac.TodayAlmanacActivity'),(37,3,'com.talkweb.imoney.LoadMain'),(38,2,'com.talkweb.imoney.guagua.GuaGuaActivity'),(39,2,'com.talkweb.imoney.util.BirthdayInputActivity'),(40,3,'com.talkweb.imoney.almanac.AlmanacActivity'),(41,2,'com.talkweb.imoney.ball.BallActivity'),(42,3,'com.talkweb.imoney.almanac.QueryAlmanacActivity'),(43,2,'com.talkweb.imoney.ball.ResultShowActivity'),(44,3,'com.talkweb.imoney.almanac.TodayAlmanacActivity'),(45,2,'com.talkweb.imoney.ball.SimulateBuyActivity'),(46,3,'com.talkweb.imoney.guagua.GuaGuaActivity'),(47,2,'com.talkweb.imoney.ball.BallChooseActivity'),(48,3,'com.talkweb.imoney.util.BirthdayInputActivity'),(49,2,'com.talkweb.imoney.god.GodMainActivity'),(50,3,'com.talkweb.imoney.ball.BallActivity'),(51,2,'com.talkweb.comm.MoreExctingActivity'),(52,3,'com.talkweb.imoney.ball.ResultShowActivity'),(53,3,'com.talkweb.imoney.ball.SimulateBuyActivity'),(54,3,'com.talkweb.imoney.ball.BallChooseActivity'),(55,3,'com.talkweb.imoney.god.GodMainActivity'),(56,3,'com.talkweb.comm.MoreExctingActivity'),(57,4,'com.go108.lovecome.StartupActivity'),(58,4,'com.go108.lovecome.InputActivity'),(59,4,'com.go108.lovecome.MainActivity'),(60,4,'com.go108.lovecome.PersonModifyActivity'),(61,4,'com.go108.lovecome.SingleInputActivity'),(62,4,'com.go108.lovecome.SingleResultActivity'),(63,4,'com.go108.lovecome.LovingInputActivity'),(64,4,'com.go108.lovecome.LovingResultActivity'),(65,4,'com.go108.lovecome.FavoritesReviewActivity'),(66,4,'com.go108.lovecome.menu.FeedbackActivity'),(67,4,'com.go108.lovecome.menu.ShareActivity'),(68,4,'com.go108.lovecome.menu.FavoritesListActivity'),(69,4,'com.go108.lovecome.menu.AboutActivity'),(70,4,'com.go108.lovecome.menu.HelpActivity'),(71,4,'com.go108.lovecome.menu.SiteDescActivity'),(72,4,'com.go108.lovecome.QuitActivity'),(73,4,'com.go108.lovecome.MoreExctingActivity'),(74,4,'com.go108.lovecome.util.DownloadFileService'),(75,5,'com.heroit.tzuwei.lite.StartupActivity'),(76,5,'com.heroit.tzuwei.lite.InputActivity'),(77,5,'com.heroit.tzuwei.lite.MasterActivity'),(78,5,'com.heroit.tzuwei.lite.MainActivity'),(79,5,'com.heroit.tzuwei.lite.TodayActivity'),(80,5,'com.heroit.tzuwei.lite.ImportantActivity'),(81,5,'com.heroit.tzuwei.lite.ReminderListActivity'),(82,5,'com.heroit.tzuwei.lite.MessageActivity'),(83,3,'com.talkweb.imoney.almanac.b'),(84,5,'com.heroit.tzuwei.lite.RelationActivity'),(85,5,'com.heroit.tzuwei.lite.AddFriendActivity'),(86,5,'com.heroit.tzuwei.lite.FriendListActivity'),(87,5,'com.heroit.tzuwei.lite.EmotionActivity'),(88,5,'com.heroit.tzuwei.lite.HobbyActivity'),(89,3,'com.talkweb.imoney.god.b'),(90,5,'com.heroit.tzuwei.lite.MasterListActivity'),(91,5,'com.heroit.tzuwei.lite.LearnActivity'),(92,5,'com.heroit.tzuwei.lite.MoreExctingActivity'),(93,5,'com.heroit.tzuwei.lite.AboutActivity'),(94,3,'com.talkweb.imoney.god.e'),(95,2,'com.talkweb.imoney.god.g'),(96,2,'com.talkweb.imoney.almanac.b'),(97,2,'com.talkweb.imoney.god.a'),(98,2,'com.talkweb.imoney.god.b'),(99,3,'com.talkweb.imoney.god.c'),(100,6,'com.talkweb.imoney.LoadMain'),(101,6,'com.talkweb.imoney.almanac.AlmanacActivity'),(102,6,'com.talkweb.imoney.almanac.QueryAlmanacActivity'),(103,6,'com.talkweb.imoney.almanac.TodayAlmanacActivity'),(104,6,'com.talkweb.imoney.guagua.GuaGuaActivity'),(105,6,'com.talkweb.imoney.util.BirthdayInputActivity'),(106,6,'com.talkweb.imoney.ball.BallActivity'),(107,6,'com.talkweb.imoney.ball.ResultShowActivity'),(108,6,'com.talkweb.imoney.ball.SimulateBuyActivity'),(109,6,'com.talkweb.imoney.ball.BallChooseActivity'),(110,6,'com.talkweb.imoney.god.GodMainActivity'),(111,6,'com.talkweb.comm.MoreExctingActivity'),(112,7,'com.talkweb.ycya.LoginActivity'),(113,7,'com.talkweb.main.MainActivity'),(114,7,'com.talkweb.mzzd.MzzdActivity'),(115,7,'com.talkweb.mzzd.MzzdFreeResultActivity'),(116,7,'com.talkweb.comm.MoreExctingActivity'),(117,7,'com.talkweb.mzzd.MzzdChargeResultActivity'),(118,7,'com.talkweb.xzpd.XzpdActivity'),(119,7,'com.talkweb.xzpd.XzpdXzxzActivity'),(120,7,'com.talkweb.xzpd.XzpdFreeResultActivity'),(121,7,'com.talkweb.xzpd.XzpdChargeResultActivity'),(122,7,'com.talkweb.xzpd.XzpdForbiddenParadiseActivity'),(123,7,'com.talkweb.xzpd.XzpdPersueSecretsActivity'),(124,7,'com.talkweb.yhlq.YhlqActivity'),(125,7,'com.talkweb.qrmj.QrmjActivity'),(126,7,'com.talkweb.qrmj.QrmjResultActivity'),(127,7,'com.talkweb.mzzd.ContactActivity'),(128,7,'com.talkweb.menu.MenuActivity'),(129,7,'com.talkweb.menu.FavoriteListActivity'),(130,7,'com.talkweb.menu.FavoriteRequestActivity'),(131,7,'com.talkweb.menu.HelpActivity'),(132,7,'com.talkweb.menu.UpdateActivity'),(133,7,'com.talkweb.menu.CompanyIntroActivity'),(134,7,'com.talkweb.menu.WebIntroActivity'),(135,7,'com.talkweb.menu.WapIntroActivity'),(136,7,'com.talkweb.mzzd.MzzdQueryResultActivity'),(137,7,'com.talkweb.yhlq.YaoQianActivity'),(138,7,'com.talkweb.yhlq.CqProcessActivity'),(139,7,'com.talkweb.yhlq.ZhiJiaoActivity'),(140,7,'com.talkweb.yhlq.QianResultActivity'),(141,7,'com.talkweb.xzpd.XzpdRequestChargeResultActivity'),(142,7,'com.talkweb.xzpd.XzpdRequestPersueSecretsActivity'),(143,7,'com.talkweb.xzpd.XzpdRequestForbiddenParadiseActivity'),(144,4,'com.go108.lovecome.util.n'),(145,4,'com.go108.lovecome.a.a'),(146,5,'com.heroit.tzuwei.lite.aq'),(147,5,'com.heroit.tzuwei.lite.ab'),(148,5,'com.heroit.tzuwei.lite.ae'),(149,4,'com.go108.lovecome.a.s'),(150,5,'com.heroit.tzuwei.lite.ad'),(151,6,'com.talkweb.imoney.ball.g'),(152,5,'com.heroit.tzuwei.lite.u'),(153,6,'com.talkweb.imoney.god.s'),(154,6,'com.talkweb.imoney.god.e'),(155,5,'com.heroit.tzuwei.lite.ao'),(156,6,'com.talkweb.imoney.god.c'),(157,5,'com.heroit.tzuwei.lite.ax'),(158,6,'com.talkweb.imoney.ball.h'),(159,4,'com.go108.lovecome.e'),(160,5,'com.heroit.tzuwei.lite.at'),(161,4,'com.go108.lovecome.menu.f'),(162,6,'com.talkweb.imoney.god.b'),(163,5,'com.heroit.tzuwei.lite.be'),(164,6,'com.talkweb.imoney.almanac.b'),(165,5,'com.heroit.tzuwei.lite.ay'),(166,5,'com.heroit.tzuwei.lite.i'),(167,5,'com.heroit.tzuwei.lite.bh'),(168,5,'com.heroit.tzuwei.lite.aa'),(169,5,'com.heroit.tzuwei.lite.ac'),(170,5,'com.heroit.tzuwei.lite.af'),(171,5,'com.heroit.tzuwei.lite.v'),(172,7,'com.talkweb.ycya.LoginActivity$MyThread'),(173,7,'com.talkweb.main.MainActivity$2'),(174,7,'com.talkweb.xzpd.XzpdFreeResultActivity$1'),(175,7,'com.talkweb.net.APNOpera'),(176,7,'cn.com.go108.feecontrol.APNOpera'),(177,7,'com.talkweb.main.MainActivity$7'),(178,7,'com.talkweb.yhlq.QianResultActivity$1'),(179,7,'com.talkweb.yhlq.QianResultActivity$2'),(180,7,'com.talkweb.mzzd.MzzdActivity$2'),(181,7,'com.talkweb.mzzd.MzzdFreeResultActivity$1'),(182,7,'com.talkweb.qrmj.QrmjResultActivity$1'),(183,7,'com.talkweb.yhlq.YhlqActivity$1'),(184,7,'com.talkweb.yhlq.YaoQianActivity$1$1'),(185,7,'com.talkweb.qrmj.QrmjActivity$3$1'),(186,7,'com.talkweb.yhlq.CqProcessActivity$1$1'),(187,7,'com.talkweb.comm.Utils'),(188,7,'com.talkweb.xzpd.XzpdActivity$1'),(189,7,'com.talkweb.xzpd.XzpdActivity$2'),(190,7,'com.talkweb.yhlq.YaoQianActivity$3');
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
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,34,'month'),(2,39,'isqd'),(3,48,'isqd'),(4,40,'AUTO_CHOOSE_NUMBERS'),(5,42,'AUTO_CHOOSE_NUMBERS'),(6,53,'AUTO_CHOOSE_NUMBERS'),(7,34,'day'),(8,40,'day'),(9,34,'APP_CHANNEL'),(10,43,'APP_CHANNEL'),(11,41,'APP_CHANNEL'),(12,35,'APP_CHANNEL'),(13,45,'APP_CHANNEL'),(14,35,'currentDay'),(15,49,'APP_CHANNEL'),(16,42,'currentMonth'),(17,42,'currentDay'),(18,40,'APP_CHANNEL'),(19,52,'APP_CHANNEL'),(20,34,'APP_NAME'),(21,50,'APP_CHANNEL'),(22,43,'APP_NAME'),(23,42,'APP_CHANNEL'),(24,41,'APP_NAME'),(25,53,'APP_CHANNEL'),(26,35,'APP_NAME'),(27,45,'APP_NAME'),(28,40,'month'),(29,35,'currentMonth'),(30,55,'APP_CHANNEL'),(31,53,'BallBeanChoice'),(32,34,'AUTO_CHOOSE_NUMBERS'),(33,55,'APP_NAME'),(34,35,'AUTO_CHOOSE_NUMBERS'),(35,45,'AUTO_CHOOSE_NUMBERS'),(36,35,'currentYear'),(37,42,'currentYear'),(38,40,'APP_NAME'),(39,52,'APP_NAME'),(40,34,'year'),(41,50,'APP_NAME'),(42,45,'BallBeanChoice'),(43,42,'APP_NAME'),(44,49,'APP_NAME'),(45,53,'APP_NAME'),(46,40,'year'),(47,60,'taTime'),(48,58,'APP_CHANNEL'),(49,57,'APP_CHANNEL'),(50,59,'APP_CHANNEL'),(51,60,'taGender'),(52,60,'taDay'),(53,79,'moneyContent'),(54,63,'myMonth'),(55,60,'taName'),(56,86,'gender'),(57,82,'tel'),(58,83,'birthday'),(59,91,'birthday'),(60,65,'APP_CHANNEL'),(61,62,'APP_CHANNEL'),(62,64,'APP_CHANNEL'),(63,85,'gender'),(64,83,'gender'),(65,64,'gender_1'),(66,84,'picture'),(67,63,'taMonth'),(68,63,'myDay'),(69,79,'loveStar'),(70,60,'myMonth'),(71,64,'monthChoice'),(72,78,'APP_NAME'),(73,100,'BallBeanChoice'),(74,93,'month'),(75,93,'year'),(76,65,'APP_NAME'),(77,62,'APP_NAME'),(78,64,'APP_NAME'),(79,102,'APP_NAME'),(80,59,'APP_NAME'),(81,60,'taYear'),(82,60,'myGender'),(83,63,'myYear'),(84,60,'taMonth'),(85,63,'myGender'),(86,60,'myDay'),(87,60,'modifyFlag'),(88,93,'APP_NAME'),(89,60,'myYear'),(90,99,'APP_NAME'),(91,74,'productName'),(92,98,'APP_NAME'),(93,60,'taId'),(94,94,'APP_NAME'),(95,65,'productId'),(96,100,'APP_NAME'),(97,62,'singleName'),(98,87,'APP_NAME'),(99,64,'birthday_2'),(100,86,'APP_NAME'),(101,60,'myTime'),(102,80,'APP_NAME'),(103,59,'readFlag'),(104,97,'isqd'),(105,63,'taYear'),(106,93,'day'),(107,78,'dataType'),(108,60,'myId'),(109,85,'pid'),(110,102,'APP_CHANNEL'),(111,64,'gender_2'),(112,60,'myName'),(113,60,'loveState'),(114,84,'tel'),(115,77,'birthday'),(116,79,'loveContent'),(117,77,'gender'),(118,94,'currentMonth'),(119,94,'currentDay'),(120,85,'birthday'),(121,62,'singleGender'),(122,93,'AUTO_CHOOSE_NUMBERS'),(123,66,'APP_NAME'),(124,102,'AUTO_CHOOSE_NUMBERS'),(125,64,'birthday_1'),(126,94,'AUTO_CHOOSE_NUMBERS'),(127,100,'AUTO_CHOOSE_NUMBERS'),(128,87,'gender'),(129,86,'picture'),(130,93,'APP_CHANNEL'),(131,99,'APP_CHANNEL'),(132,98,'APP_CHANNEL'),(133,94,'APP_CHANNEL'),(134,76,'gender'),(135,100,'APP_CHANNEL'),(136,84,'pid'),(137,94,'currentYear'),(138,84,'birthday'),(139,77,'relation'),(140,78,'APP_CHANNEL'),(141,91,'gender'),(142,58,'APP_NAME'),(143,57,'APP_NAME'),(144,63,'taGender'),(145,86,'name'),(146,63,'taDay'),(147,78,'birthday'),(148,74,'path'),(149,79,'moneyStar'),(150,84,'name'),(151,78,'gender'),(152,84,'gender'),(153,84,'notes'),(154,79,'careerContent'),(155,87,'birthday'),(156,87,'APP_CHANNEL'),(157,86,'APP_CHANNEL'),(158,80,'APP_CHANNEL'),(159,84,'relation'),(160,86,'birthday'),(161,78,'pid'),(162,89,'position'),(163,85,'relation'),(164,79,'careerStar'),(165,76,'pid'),(166,76,'birthday'),(167,80,'birthday'),(168,80,'gender'),(169,86,'master'),(170,84,'type'),(171,112,'female_xzID'),(172,116,'APP_CHANNEL'),(173,107,'APP_CHANNEL'),(174,110,'APP_CHANNEL'),(175,118,'APP_CHANNEL'),(176,132,'APP_CHANNEL'),(177,112,'APP_CHANNEL'),(178,117,'APP_CHANNEL'),(179,105,'APP_CHANNEL'),(180,106,'APP_CHANNEL'),(181,130,'APP_CHANNEL'),(182,116,'APP_NAME'),(183,107,'APP_NAME'),(184,110,'APP_NAME'),(185,118,'APP_NAME'),(186,132,'APP_NAME'),(187,112,'APP_NAME'),(188,117,'APP_NAME'),(189,105,'APP_NAME'),(190,106,'APP_NAME'),(191,130,'APP_NAME'),(192,112,'strArray'),(193,107,'gender'),(194,105,'phone'),(195,110,'xzName'),(196,110,'starID'),(197,132,'str'),(198,123,'APP_NAME'),(199,105,'appload'),(200,107,'nameStr'),(201,107,'isreturn'),(202,107,'strArray'),(203,132,'strArray'),(204,112,'half_gender'),(205,112,'gender'),(206,123,'APP_CHANNEL'),(207,106,'nameStr'),(208,112,'male_xzID'),(209,131,'time'),(210,117,'loverInfoArray'),(211,130,'time'),(212,118,'strArray');
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
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'r',1,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',1,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',1,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,71,'a',0,NULL,NULL),(72,72,'a',0,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,74,'s',0,NULL,NULL),(75,75,'a',1,NULL,NULL),(76,76,'a',0,NULL,NULL),(77,77,'a',0,NULL,NULL),(78,78,'a',0,NULL,NULL),(79,79,'a',0,NULL,NULL),(80,80,'a',0,NULL,NULL),(81,81,'a',0,NULL,NULL),(82,82,'a',0,NULL,NULL),(83,84,'a',0,NULL,NULL),(84,85,'a',0,NULL,NULL),(85,86,'a',0,NULL,NULL),(86,87,'a',0,NULL,NULL),(87,88,'a',0,NULL,NULL),(88,90,'a',0,NULL,NULL),(89,91,'a',0,NULL,NULL),(90,92,'a',0,NULL,NULL),(91,93,'a',0,NULL,NULL),(92,100,'a',1,NULL,NULL),(93,101,'a',0,NULL,NULL),(94,102,'a',0,NULL,NULL),(95,103,'a',0,NULL,NULL),(96,104,'a',0,NULL,NULL),(97,105,'a',0,NULL,NULL),(98,106,'a',0,NULL,NULL),(99,107,'a',0,NULL,NULL),(100,108,'a',0,NULL,NULL),(101,109,'a',0,NULL,NULL),(102,110,'a',0,NULL,NULL),(103,111,'a',0,NULL,NULL),(104,112,'a',1,NULL,NULL),(105,113,'a',0,NULL,NULL),(106,114,'a',0,NULL,NULL),(107,115,'a',0,NULL,NULL),(108,116,'a',0,NULL,NULL),(109,117,'a',0,NULL,NULL),(110,118,'a',0,NULL,NULL),(111,119,'a',0,NULL,NULL),(112,120,'a',0,NULL,NULL),(113,121,'a',0,NULL,NULL),(114,122,'a',0,NULL,NULL),(115,123,'a',0,NULL,NULL),(116,124,'a',0,NULL,NULL),(117,125,'a',0,NULL,NULL),(118,126,'a',0,NULL,NULL),(119,127,'a',0,NULL,NULL),(120,128,'a',0,NULL,NULL),(121,129,'a',0,NULL,NULL),(122,130,'a',0,NULL,NULL),(123,131,'a',0,NULL,NULL),(124,132,'a',0,NULL,NULL),(125,133,'a',0,NULL,NULL),(126,134,'a',0,NULL,NULL),(127,135,'a',0,NULL,NULL),(128,136,'a',0,NULL,NULL),(129,137,'a',0,NULL,NULL),(130,138,'a',0,NULL,NULL),(131,139,'a',0,NULL,NULL),(132,140,'a',0,NULL,NULL),(133,141,'a',0,NULL,NULL),(134,142,'a',0,NULL,NULL),(135,143,'a',0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=361 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,41),(2,1,34),(3,1,35),(4,2,41),(5,2,35),(6,2,34),(7,3,55),(8,4,49),(9,5,55),(10,5,40),(11,5,42),(12,6,51),(13,7,42),(14,7,40),(15,8,49),(16,9,55),(17,9,42),(18,9,40),(19,10,49),(20,10,35),(21,10,34),(22,11,55),(23,11,40),(24,11,42),(25,12,35),(26,12,34),(27,12,49),(28,13,40),(29,13,42),(30,13,50),(31,14,35),(32,14,34),(33,15,53),(34,15,40),(35,15,42),(36,16,35),(37,16,34),(38,16,45),(39,17,56),(40,18,34),(41,18,49),(42,18,35),(43,19,42),(44,19,50),(45,19,40),(46,20,34),(47,20,49),(48,20,35),(49,21,55),(50,21,42),(51,21,40),(52,22,42),(53,22,55),(54,22,40),(55,23,59),(56,23,62),(57,23,65),(58,23,64),(59,23,66),(60,24,67),(61,25,59),(62,26,59),(63,27,86),(64,28,83),(65,28,91),(66,29,59),(67,30,59),(68,31,78),(69,31,91),(70,32,67),(71,33,75),(72,34,73),(73,35,66),(74,35,59),(75,35,65),(76,35,64),(77,35,62),(78,36,78),(79,36,91),(80,37,59),(81,38,76),(82,38,91),(83,39,63),(84,40,75),(85,41,68),(86,42,94),(87,42,93),(88,42,100),(89,42,102),(90,43,79),(91,43,91),(92,44,59),(93,45,102),(94,45,100),(95,45,94),(96,45,93),(97,46,83),(98,47,58),(99,48,94),(100,48,93),(101,48,100),(102,48,102),(103,49,59),(104,50,102),(105,50,100),(106,50,93),(107,50,94),(108,51,100),(109,51,102),(110,51,93),(111,51,94),(112,52,78),(113,53,67),(114,54,100),(115,54,94),(116,54,93),(117,54,102),(118,55,85),(119,55,91),(120,56,102),(121,56,100),(122,56,94),(123,56,93),(124,57,57),(125,58,103),(126,59,81),(127,60,69),(128,61,102),(129,61,100),(130,61,94),(131,61,93),(132,62,67),(133,64,87),(134,63,93),(135,63,102),(136,63,94),(137,63,100),(138,65,59),(139,66,94),(140,66,93),(141,66,100),(142,66,102),(143,67,85),(144,68,98),(145,68,94),(146,68,93),(147,68,102),(148,68,100),(149,69,102),(150,70,91),(151,70,84),(152,71,59),(153,72,93),(154,72,94),(155,72,100),(156,72,102),(157,72,98),(158,73,78),(159,74,90),(160,75,86),(161,76,85),(162,77,59),(163,78,81),(164,79,78),(165,80,61),(166,81,77),(167,82,91),(168,82,78),(169,83,85),(170,84,87),(171,85,78),(172,85,91),(173,86,85),(174,87,78),(175,88,78),(176,88,91),(177,89,83),(178,90,77),(179,91,88),(180,92,78),(181,93,91),(182,93,83),(183,94,104),(184,95,105),(185,96,112),(186,96,132),(187,96,117),(188,96,118),(189,96,110),(190,96,107),(191,97,112),(192,97,132),(193,97,117),(194,97,118),(195,97,105),(196,97,107),(197,97,108),(198,97,110),(199,98,105),(200,99,116),(201,99,117),(202,99,105),(203,99,118),(204,99,132),(205,99,107),(206,99,112),(207,99,110),(208,100,106),(209,100,105),(210,100,116),(211,100,132),(212,100,117),(213,100,118),(214,100,112),(215,100,130),(216,100,123),(217,100,107),(218,100,110),(219,101,107),(220,101,105),(221,101,118),(222,101,116),(223,101,117),(224,101,132),(225,101,112),(226,101,110),(227,102,110),(228,102,112),(229,102,132),(230,102,116),(231,102,118),(232,102,117),(233,102,105),(234,102,107),(235,103,105),(236,104,132),(237,104,116),(238,104,117),(239,104,118),(240,104,112),(241,104,107),(242,104,110),(243,104,105),(244,105,118),(245,105,132),(246,105,117),(247,105,112),(248,105,110),(249,105,107),(250,106,107),(251,106,105),(252,106,112),(253,106,110),(254,106,116),(255,106,132),(256,106,118),(257,106,117),(258,107,107),(259,107,110),(260,107,112),(261,107,132),(262,107,117),(263,107,118),(264,108,112),(265,108,110),(266,108,107),(267,108,118),(268,108,117),(269,108,132),(270,108,106),(271,109,112),(272,109,130),(273,109,110),(274,109,106),(275,109,107),(276,109,123),(277,109,105),(278,109,132),(279,109,117),(280,109,116),(281,109,118),(282,110,117),(283,110,118),(284,110,112),(285,110,107),(286,110,110),(287,110,132),(288,111,105),(289,112,132),(290,113,119),(291,114,110),(292,114,118),(293,114,117),(294,114,112),(295,114,107),(296,114,132),(297,115,118),(298,115,132),(299,115,117),(300,115,116),(301,115,110),(302,115,112),(303,115,107),(304,116,132),(305,116,118),(306,116,117),(307,116,112),(308,116,110),(309,116,107),(310,116,129),(311,117,118),(312,117,132),(313,117,117),(314,117,107),(315,117,110),(316,117,112),(317,118,132),(318,118,107),(319,118,105),(320,118,112),(321,118,110),(322,118,117),(323,118,116),(324,118,118),(325,119,132),(326,119,117),(327,119,130),(328,119,110),(329,119,112),(330,119,107),(331,119,118),(332,120,119),(333,121,112),(334,121,117),(335,121,132),(336,121,118),(337,121,107),(338,121,110),(339,122,116),(340,122,118),(341,122,117),(342,122,107),(343,122,132),(344,122,112),(345,122,110),(346,123,112),(347,123,110),(348,123,107),(349,123,118),(350,123,117),(351,123,132),(352,124,112),(353,124,107),(354,124,129),(355,124,110),(356,124,132),(357,124,117),(358,124,118),(359,125,119),(360,126,105);
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
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,41,'<com.talkweb.imoney.ball.BallActivity: void onClick(android.view.View)>',10,'a',NULL),(2,41,'<com.talkweb.imoney.ball.BallActivity: void onClick(android.view.View)>',51,'a',NULL),(3,55,'<com.talkweb.imoney.god.GodMainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(4,49,'<com.talkweb.imoney.god.GodMainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(5,55,'<com.talkweb.imoney.god.GodMainActivity: void b()>',10,'a',NULL),(6,51,'<com.talkweb.comm.MoreExctingActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',25,'a',NULL),(7,83,'<com.talkweb.imoney.almanac.b: void onClick(android.view.View)>',28,'a',NULL),(8,49,'<com.talkweb.imoney.god.GodMainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',21,'a',NULL),(9,89,'<com.talkweb.imoney.god.b: void onClick(android.view.View)>',11,'a',NULL),(10,49,'<com.talkweb.imoney.god.GodMainActivity: void b()>',10,'a',NULL),(11,94,'<com.talkweb.imoney.god.e: void onClick(android.view.View)>',11,'a',NULL),(12,95,'<com.talkweb.imoney.god.g: void onClick(android.view.View)>',11,'a',NULL),(13,50,'<com.talkweb.imoney.ball.BallActivity: void onClick(android.view.View)>',10,'a',NULL),(14,96,'<com.talkweb.imoney.almanac.b: void onClick(android.view.View)>',28,'a',NULL),(15,53,'<com.talkweb.imoney.ball.SimulateBuyActivity: void onClick(android.view.View)>',108,'a',NULL),(16,45,'<com.talkweb.imoney.ball.SimulateBuyActivity: void onClick(android.view.View)>',108,'a',NULL),(17,56,'<com.talkweb.comm.MoreExctingActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',25,'a',NULL),(18,97,'<com.talkweb.imoney.god.a: void onClick(android.view.View)>',11,'a',NULL),(19,50,'<com.talkweb.imoney.ball.BallActivity: void onClick(android.view.View)>',51,'a',NULL),(20,98,'<com.talkweb.imoney.god.b: void onClick(android.view.View)>',11,'a',NULL),(21,99,'<com.talkweb.imoney.god.c: void onClick(android.view.View)>',11,'a',NULL),(22,55,'<com.talkweb.imoney.god.GodMainActivity: void c()>',8,'a',NULL),(23,144,'<com.go108.lovecome.util.n: java.lang.String a()>',18,'p',NULL),(24,145,'<com.go108.lovecome.a.a: void h()>',23,'p',NULL),(25,59,'<com.go108.lovecome.MainActivity: void onClick(android.view.View)>',12,'a',NULL),(26,59,'<com.go108.lovecome.MainActivity: void onClick(android.view.View)>',47,'a',NULL),(27,146,'<com.heroit.tzuwei.lite.aq: void onClick(android.content.DialogInterface,int)>',22,'a',NULL),(28,84,'<com.heroit.tzuwei.lite.RelationActivity: void a(com.heroit.tzuwei.lite.RelationActivity)>',16,'a',NULL),(29,59,'<com.go108.lovecome.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',25,'a',NULL),(30,59,'<com.go108.lovecome.MainActivity: void onClick(android.view.View)>',33,'a',NULL),(31,147,'<com.heroit.tzuwei.lite.ab: void onClick(android.view.View)>',19,'a',NULL),(32,145,'<com.go108.lovecome.a.a: void h()>',4,'p',NULL),(33,75,'<com.heroit.tzuwei.lite.StartupActivity: void onCreate(android.os.Bundle)>',22,'a',NULL),(34,73,'<com.go108.lovecome.MoreExctingActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',25,'a',NULL),(35,144,'<com.go108.lovecome.util.n: java.lang.String a()>',5,'p',NULL),(36,148,'<com.heroit.tzuwei.lite.ae: void onClick(android.view.View)>',19,'a',NULL),(37,59,'<com.go108.lovecome.MainActivity: void b()>',24,'a',NULL),(38,76,'<com.heroit.tzuwei.lite.InputActivity: void e(com.heroit.tzuwei.lite.InputActivity)>',125,'a',NULL),(39,63,'<com.go108.lovecome.LovingInputActivity: void onClick(android.view.View)>',51,'a',NULL),(40,75,'<com.heroit.tzuwei.lite.StartupActivity: void onCreate(android.os.Bundle)>',62,'a',NULL),(41,149,'<com.go108.lovecome.a.s: void onClick(android.view.View)>',30,'a',NULL),(42,110,'<com.talkweb.imoney.god.GodMainActivity: void c()>',8,'a',NULL),(43,150,'<com.heroit.tzuwei.lite.ad: void onClick(android.view.View)>',7,'a',NULL),(44,59,'<com.go108.lovecome.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',20,'a',NULL),(45,151,'<com.talkweb.imoney.ball.g: void onClick(android.view.View)>',11,'a',0),(46,152,'<com.heroit.tzuwei.lite.u: void onClick(android.content.DialogInterface,int)>',26,'a',NULL),(47,58,'<com.go108.lovecome.InputActivity: void onClick(android.view.View)>',48,'a',NULL),(48,108,'<com.talkweb.imoney.ball.SimulateBuyActivity: void onClick(android.view.View)>',108,'a',NULL),(49,59,'<com.go108.lovecome.MainActivity: void onClick(android.view.View)>',26,'a',NULL),(50,153,'<com.talkweb.imoney.god.s: void onClick(android.view.View)>',7,'a',NULL),(51,154,'<com.talkweb.imoney.god.e: void onClick(android.view.View)>',11,'a',NULL),(52,155,'<com.heroit.tzuwei.lite.ao: void onClick(android.content.DialogInterface,int)>',48,'a',NULL),(53,145,'<com.go108.lovecome.a.a: void c()>',30,'p',NULL),(54,156,'<com.talkweb.imoney.god.c: void onClick(android.view.View)>',11,'a',NULL),(55,157,'<com.heroit.tzuwei.lite.ax: void onClick(android.view.View)>',21,'a',NULL),(56,158,'<com.talkweb.imoney.ball.h: void onClick(android.view.View)>',9,'a',0),(57,159,'<com.go108.lovecome.e: void run()>',5,'a',0),(58,111,'<com.talkweb.comm.MoreExctingActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',25,'a',NULL),(59,160,'<com.heroit.tzuwei.lite.at: void onClick(android.content.DialogInterface,int)>',17,'a',NULL),(60,161,'<com.go108.lovecome.menu.f: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(61,162,'<com.talkweb.imoney.god.b: void onClick(android.view.View)>',11,'a',NULL),(62,145,'<com.go108.lovecome.a.a: void c()>',8,'p',NULL),(63,164,'<com.talkweb.imoney.almanac.b: void onClick(android.view.View)>',28,'a',NULL),(64,163,'<com.heroit.tzuwei.lite.be: void onClick(android.content.DialogInterface,int)>',22,'a',NULL),(65,59,'<com.go108.lovecome.MainActivity: void onClick(android.view.View)>',20,'a',NULL),(66,110,'<com.talkweb.imoney.god.GodMainActivity: void b()>',10,'a',NULL),(67,165,'<com.heroit.tzuwei.lite.ay: void onClick(android.content.DialogInterface,int)>',123,'a',NULL),(68,106,'<com.talkweb.imoney.ball.BallActivity: void onClick(android.view.View)>',10,'a',NULL),(69,110,'<com.talkweb.imoney.god.GodMainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(70,166,'<com.heroit.tzuwei.lite.i: void onClick(android.view.View)>',7,'a',NULL),(71,59,'<com.go108.lovecome.MainActivity: void onClick(android.view.View)>',42,'a',NULL),(72,106,'<com.talkweb.imoney.ball.BallActivity: void onClick(android.view.View)>',51,'a',NULL),(73,155,'<com.heroit.tzuwei.lite.ao: void onClick(android.content.DialogInterface,int)>',56,'a',NULL),(74,92,'<com.heroit.tzuwei.lite.MoreExctingActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',25,'a',NULL),(75,146,'<com.heroit.tzuwei.lite.aq: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(76,165,'<com.heroit.tzuwei.lite.ay: void onClick(android.content.DialogInterface,int)>',105,'a',NULL),(77,59,'<com.go108.lovecome.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(78,160,'<com.heroit.tzuwei.lite.at: void onClick(android.content.DialogInterface,int)>',36,'a',NULL),(79,78,'<com.heroit.tzuwei.lite.MainActivity: void onActivityResult(int,int,android.content.Intent)>',9,'a',NULL),(80,61,'<com.go108.lovecome.SingleInputActivity: void onClick(android.view.View)>',35,'a',NULL),(81,167,'<com.heroit.tzuwei.lite.bh: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(82,168,'<com.heroit.tzuwei.lite.aa: void onClick(android.view.View)>',7,'a',NULL),(83,165,'<com.heroit.tzuwei.lite.ay: void onClick(android.content.DialogInterface,int)>',72,'a',NULL),(84,163,'<com.heroit.tzuwei.lite.be: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(85,169,'<com.heroit.tzuwei.lite.ac: void onClick(android.view.View)>',10,'a',NULL),(86,165,'<com.heroit.tzuwei.lite.ay: void onClick(android.content.DialogInterface,int)>',94,'a',NULL),(87,155,'<com.heroit.tzuwei.lite.ao: void onClick(android.content.DialogInterface,int)>',26,'a',NULL),(88,170,'<com.heroit.tzuwei.lite.af: void onClick(android.view.View)>',40,'a',NULL),(89,171,'<com.heroit.tzuwei.lite.v: void onClick(android.content.DialogInterface,int)>',26,'a',NULL),(90,167,'<com.heroit.tzuwei.lite.bh: void onClick(android.content.DialogInterface,int)>',22,'a',NULL),(91,90,'<com.heroit.tzuwei.lite.MasterListActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',13,'a',NULL),(92,155,'<com.heroit.tzuwei.lite.ao: void onClick(android.content.DialogInterface,int)>',70,'a',NULL),(93,84,'<com.heroit.tzuwei.lite.RelationActivity: void b(com.heroit.tzuwei.lite.RelationActivity)>',16,'a',NULL),(94,172,'<com.talkweb.ycya.LoginActivity$MyThread: void run()>',11,'a',NULL),(95,173,'<com.talkweb.main.MainActivity$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',12,'a',NULL),(96,174,'<com.talkweb.xzpd.XzpdFreeResultActivity$1: void onClick(android.view.View)>',7,'a',NULL),(97,116,'<com.talkweb.comm.MoreExctingActivity: void linkSite(com.talkweb.comm.ExctingProductBean)>',14,'a',NULL),(98,173,'<com.talkweb.main.MainActivity$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',48,'a',NULL),(99,175,'<com.talkweb.net.APNOpera: long getPreferredApnId()>',5,'p',NULL),(100,176,'<cn.com.go108.feecontrol.APNOpera: java.lang.String readCurrentAPN()>',10,'p',NULL),(101,177,'<com.talkweb.main.MainActivity$7: void onClick(android.content.DialogInterface,int)>',29,'a',NULL),(102,175,'<com.talkweb.net.APNOpera: java.lang.String readCurrentAPN()>',10,'p',NULL),(103,173,'<com.talkweb.main.MainActivity$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(104,177,'<com.talkweb.main.MainActivity$7: void onClick(android.content.DialogInterface,int)>',36,'a',NULL),(105,178,'<com.talkweb.yhlq.QianResultActivity$1: void onClick(android.view.View)>',7,'a',NULL),(106,177,'<com.talkweb.main.MainActivity$7: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(107,179,'<com.talkweb.yhlq.QianResultActivity$2: void onClick(android.view.View)>',9,'a',NULL),(108,180,'<com.talkweb.mzzd.MzzdActivity$2: void onClick(android.view.View)>',7,'a',NULL),(109,176,'<cn.com.go108.feecontrol.APNOpera: long getPreferredApnId()>',5,'p',NULL),(110,181,'<com.talkweb.mzzd.MzzdFreeResultActivity$1: void onClick(android.view.View)>',7,'a',NULL),(111,113,'<com.talkweb.main.MainActivity: void showRecommedDialog()>',5,'a',NULL),(112,140,'<com.talkweb.yhlq.QianResultActivity: boolean onKeyDown(int,android.view.KeyEvent)>',8,'a',NULL),(113,127,'<com.talkweb.mzzd.ContactActivity: void readContactst1(java.util.ArrayList)>',4,'p',NULL),(114,182,'<com.talkweb.qrmj.QrmjResultActivity$1: void onClick(android.view.View)>',7,'a',NULL),(115,183,'<com.talkweb.yhlq.YhlqActivity$1: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(116,184,'<com.talkweb.yhlq.YaoQianActivity$1$1: void run()>',29,'a',NULL),(117,185,'<com.talkweb.qrmj.QrmjActivity$3$1: void run()>',78,'a',NULL),(118,177,'<com.talkweb.main.MainActivity$7: void onClick(android.content.DialogInterface,int)>',22,'a',NULL),(119,186,'<com.talkweb.yhlq.CqProcessActivity$1$1: void run()>',65,'a',NULL),(120,187,'<com.talkweb.comm.Utils: void readContactst2(java.util.ArrayList,android.content.ContentResolver,android.os.Handler)>',4,'p',NULL),(121,188,'<com.talkweb.xzpd.XzpdActivity$1: void onClick(android.view.View)>',7,'a',NULL),(122,124,'<com.talkweb.yhlq.YhlqActivity: void startYaoQianActivity()>',4,'a',NULL),(123,189,'<com.talkweb.xzpd.XzpdActivity$2: void onClick(android.view.View)>',7,'a',NULL),(124,190,'<com.talkweb.yhlq.YaoQianActivity$3: void run()>',15,'a',NULL),(125,187,'<com.talkweb.comm.Utils: void readContactst2(java.util.ArrayList,android.content.ContentResolver,android.os.Handler)>',25,'p',NULL),(126,173,'<com.talkweb.main.MainActivity$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',26,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,9,3),(2,21,3),(3,39,3),(4,48,3),(5,59,3),(6,60,4),(7,62,4),(8,71,5),(9,77,3),(10,103,3),(11,104,3),(12,114,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/talkweb/imoney/ball/ResultShowActivity'),(2,2,'com/talkweb/imoney/ball/ResultShowActivity'),(3,4,'com/talkweb/imoney/ball/ResultShowActivity'),(4,5,'com/talkweb/imoney/ball/SimulateBuyActivity'),(5,6,'com/talkweb/comm/MoreExctingActivity'),(6,7,'com/talkweb/imoney/util/BirthdayInputActivity'),(7,8,'com/talkweb/imoney/util/BirthdayInputActivity'),(8,10,'com/talkweb/imoney/almanac/QueryAlmanacActivity'),(9,11,'com/talkweb/comm/MoreExctingActivity'),(10,12,'com/talkweb/imoney/almanac/AlmanacActivity'),(11,13,'com/talkweb/imoney/util/BirthdayInputActivity'),(12,14,'com/talkweb/imoney/ball/BallActivity'),(13,15,'com/talkweb/imoney/guagua/GuaGuaActivity'),(14,16,'com/talkweb/imoney/ball/ResultShowActivity'),(15,18,'com/talkweb/imoney/ball/ResultShowActivity'),(16,17,'com/talkweb/imoney/almanac/QueryAlmanacActivity'),(17,19,'com/talkweb/imoney/ball/BallChooseActivity'),(18,20,'com/talkweb/imoney/ball/BallChooseActivity'),(19,22,'com/talkweb/imoney/ball/BallActivity'),(20,24,'com/talkweb/imoney/almanac/AlmanacActivity'),(21,25,'com/talkweb/imoney/ball/ResultShowActivity'),(22,26,'com/talkweb/imoney/ball/SimulateBuyActivity'),(23,27,'com/talkweb/imoney/guagua/GuaGuaActivity'),(24,28,'com/talkweb/imoney/util/BirthdayInputActivity'),(25,29,'com/go108/lovecome/PersonModifyActivity'),(26,30,'com/go108/lovecome/SingleInputActivity'),(27,32,'com/heroit/tzuwei/lite/MasterActivity'),(28,31,'com/go108/lovecome/SingleInputActivity'),(29,35,'com/go108/lovecome/menu/FavoritesListActivity'),(30,33,'com/heroit/tzuwei/lite/FriendListActivity'),(31,36,'com/go108/lovecome/MoreExctingActivity'),(32,37,'com/heroit/tzuwei/lite/RelationActivity'),(33,38,'com/heroit/tzuwei/lite/InputActivity'),(34,40,'com/heroit/tzuwei/lite/ImportantActivity'),(35,41,'com/go108/lovecome/InputActivity'),(36,42,'com/heroit/tzuwei/lite/MainActivity'),(37,43,'com/go108/lovecome/LovingResultActivity'),(38,44,'com/heroit/tzuwei/lite/MainActivity'),(39,45,'com/go108/lovecome/FavoritesReviewActivity'),(40,46,'com/talkweb/imoney/util/BirthdayInputActivity'),(41,47,'com/heroit/tzuwei/lite/MoreExctingActivity'),(42,50,'com/go108/lovecome/MainActivity'),(43,51,'com/talkweb/imoney/ball/BallChooseActivity'),(44,49,'com/heroit/tzuwei/lite/AddFriendActivity'),(45,52,'com/go108/lovecome/MoreExctingActivity'),(46,54,'com/talkweb/comm/MoreExctingActivity'),(47,53,'com/heroit/tzuwei/lite/FriendListActivity'),(48,55,'com/talkweb/imoney/ball/BallActivity'),(49,56,'com/heroit/tzuwei/lite/MasterActivity'),(50,57,'com/talkweb/imoney/guagua/GuaGuaActivity'),(51,58,'com/heroit/tzuwei/lite/AddFriendActivity'),(52,61,'com/talkweb/imoney/almanac/AlmanacActivity'),(53,63,'com/heroit/tzuwei/lite/MasterActivity'),(54,64,'com/talkweb/imoney/almanac/QueryAlmanacActivity'),(55,66,'com/talkweb/imoney/util/BirthdayInputActivity'),(56,68,'com/talkweb/imoney/ball/ResultShowActivity'),(57,69,'com/talkweb/imoney/ball/ResultShowActivity'),(58,67,'com/heroit/tzuwei/lite/MasterActivity'),(59,65,'com/go108/lovecome/PersonModifyActivity'),(60,70,'com/talkweb/comm/MoreExctingActivity'),(61,74,'com/talkweb/imoney/ball/ResultShowActivity'),(62,75,'com/heroit/tzuwei/lite/MoreExctingActivity'),(63,76,'com/talkweb/imoney/ball/SimulateBuyActivity'),(64,72,'com/go108/lovecome/LovingInputActivity'),(65,79,'com/heroit/tzuwei/lite/HobbyActivity'),(66,78,'com/go108/lovecome/LovingInputActivity'),(67,80,'com/heroit/tzuwei/lite/AddFriendActivity'),(68,83,'com/go108/lovecome/menu/FeedbackActivity'),(69,82,'com/heroit/tzuwei/lite/MessageActivity'),(70,84,'com/heroit/tzuwei/lite/StartupActivity'),(71,85,'com/go108/lovecome/SingleResultActivity'),(72,86,'com/heroit/tzuwei/lite/EmotionActivity'),(73,87,'com/heroit/tzuwei/lite/MasterListActivity'),(74,88,'com/heroit/tzuwei/lite/EmotionActivity'),(75,89,'com/heroit/tzuwei/lite/EmotionActivity'),(76,90,'com/heroit/tzuwei/lite/ReminderListActivity'),(77,91,'com/heroit/tzuwei/lite/HobbyActivity'),(78,92,'com/heroit/tzuwei/lite/InputActivity'),(79,93,'com/heroit/tzuwei/lite/TodayActivity'),(80,94,'com/heroit/tzuwei/lite/AddFriendActivity'),(81,95,'com/heroit/tzuwei/lite/FriendListActivity'),(82,96,'com/heroit/tzuwei/lite/HobbyActivity'),(83,97,'com/heroit/tzuwei/lite/LearnActivity'),(84,98,'com/heroit/tzuwei/lite/AboutActivity'),(85,99,'com/heroit/tzuwei/lite/FriendListActivity'),(86,100,'com/talkweb/main/MainActivity'),(87,101,'com/talkweb/mzzd/MzzdActivity'),(88,102,'com/talkweb/comm/MoreExctingActivity'),(89,105,'com/talkweb/qrmj/QrmjActivity'),(90,106,'com/talkweb/menu/WebIntroActivity'),(91,107,'com/talkweb/xzpd/XzpdActivity'),(92,108,'com/talkweb/comm/MoreExctingActivity'),(93,109,'com/talkweb/comm/MoreExctingActivity'),(94,110,'com/talkweb/menu/HelpActivity'),(95,111,'com/talkweb/main/MainActivity'),(96,112,'com/talkweb/mzzd/ContactActivity'),(97,113,'com/talkweb/comm/MoreExctingActivity'),(98,115,'com/talkweb/main/MainActivity'),(99,116,'com/talkweb/comm/MoreExctingActivity'),(100,117,'com/talkweb/yhlq/QianResultActivity'),(101,118,'com/talkweb/yhlq/ZhiJiaoActivity'),(102,119,'com/talkweb/qrmj/QrmjResultActivity'),(103,120,'com/talkweb/menu/CompanyIntroActivity'),(104,121,'com/talkweb/yhlq/QianResultActivity'),(105,122,'com/talkweb/xzpd/XzpdXzxzActivity'),(106,123,'com/talkweb/yhlq/YaoQianActivity'),(107,124,'com/talkweb/xzpd/XzpdXzxzActivity'),(108,125,'com/talkweb/yhlq/ZhiJiaoActivity'),(109,126,'com/talkweb/yhlq/YhlqActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,9,1),(2,21,2),(3,39,6),(4,59,9),(5,60,10),(6,62,11),(7,77,13),(8,103,14),(9,104,15);
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
) ENGINE=InnoDB AUTO_INCREMENT=272 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,2,'AUTO_CHOOSE_NUMBERS'),(2,3,'AUTO_CHOOSE_NUMBERS'),(3,4,'AUTO_CHOOSE_NUMBERS'),(4,5,'AUTO_CHOOSE_NUMBERS'),(5,7,'isqd'),(6,8,'isqd'),(7,10,'currentDay'),(8,10,'currentYear'),(9,10,'currentMonth'),(10,13,'isqd'),(11,17,'currentDay'),(12,18,'AUTO_CHOOSE_NUMBERS'),(13,17,'currentYear'),(14,17,'currentMonth'),(15,23,'AUTO_CHOOSE_NUMBERS'),(16,25,'AUTO_CHOOSE_NUMBERS'),(17,26,'AUTO_CHOOSE_NUMBERS'),(18,28,'isqd'),(19,29,'loveState'),(20,29,'taMonth'),(21,29,'myTime'),(22,29,'taGender'),(23,29,'myGender'),(24,29,'myGenderStr'),(25,29,'myYear'),(26,29,'myMonth'),(27,29,'taTime'),(28,29,'myId'),(29,29,'taGenderStr'),(30,29,'taDay'),(31,29,'loveStateStr'),(32,29,'myDay'),(33,29,'taName'),(34,29,'modifyFlag'),(35,29,'myName'),(36,29,'taYear'),(37,29,'taId'),(38,30,'loveState'),(39,30,'taMonth'),(40,30,'myTime'),(41,30,'taGender'),(42,30,'myGender'),(43,30,'myYear'),(44,30,'myGenderStr'),(45,30,'myMonth'),(46,30,'taTime'),(47,30,'myId'),(48,30,'taDay'),(49,30,'taGenderStr'),(50,30,'loveStateStr'),(51,30,'myDay'),(52,30,'taName'),(53,30,'myName'),(54,30,'taId'),(55,30,'taYear'),(56,31,'loveState'),(57,31,'taMonth'),(58,31,'myTime'),(59,31,'taGender'),(60,31,'myGender'),(61,31,'myGenderStr'),(62,31,'myYear'),(63,31,'myMonth'),(64,31,'taTime'),(65,31,'myId'),(66,31,'taGenderStr'),(67,31,'taDay'),(68,31,'loveStateStr'),(69,31,'myDay'),(70,31,'taName'),(71,31,'modifyFlag'),(72,32,'(.*)'),(73,31,'myName'),(74,31,'taYear'),(75,31,'taId'),(76,33,'birthday'),(77,33,'relation'),(78,33,'gender'),(79,33,'pid'),(80,37,'birthday'),(81,37,'gender'),(82,38,'pid'),(83,40,'birthday'),(84,40,'gender'),(85,42,'birthday'),(86,42,'gender'),(87,43,'monthChoice'),(88,43,'gender_2'),(89,43,'gender_1'),(90,43,'birthday_2'),(91,43,'birthday_1'),(92,44,'birthday'),(93,44,'dataType'),(94,44,'sureCount'),(95,44,'gender'),(96,44,'pid'),(97,45,'productId'),(98,46,'isqd'),(99,48,'sms_body'),(100,49,'birthday'),(101,50,'readFlag'),(102,49,'relation'),(103,49,'gender'),(104,49,'pid'),(105,53,'birthday'),(106,53,'relation'),(107,53,'gender'),(108,53,'pid'),(109,56,'birthday'),(110,56,'relation'),(111,56,'gender'),(112,58,'birthday'),(113,58,'relation'),(114,58,'gender'),(115,58,'pid'),(116,63,'(.*)'),(117,64,'currentDay'),(118,64,'currentYear'),(119,64,'currentMonth'),(120,65,'loveState'),(121,65,'taMonth'),(122,65,'myTime'),(123,66,'isqd'),(124,65,'taGender'),(125,65,'myGender'),(126,65,'myGenderStr'),(127,67,'birthday'),(128,65,'myYear'),(129,67,'sureCount'),(130,65,'myMonth'),(131,67,'mygender'),(132,65,'taTime'),(133,67,'tel'),(134,65,'myId'),(135,67,'relation'),(136,65,'taGenderStr'),(137,67,'pid'),(138,65,'taDay'),(139,67,'type'),(140,65,'loveStateStr'),(141,67,'master'),(142,69,'AUTO_CHOOSE_NUMBERS'),(143,65,'myDay'),(144,67,'picture'),(145,65,'taName'),(146,67,'mybirth'),(147,65,'modifyFlag'),(148,67,'name'),(149,65,'myName'),(150,67,'gender'),(151,65,'taYear'),(152,67,'notes'),(153,65,'taId'),(154,72,'loveState'),(155,72,'taMonth'),(156,73,'AUTO_CHOOSE_NUMBERS'),(157,72,'myTime'),(158,72,'taGender'),(159,74,'AUTO_CHOOSE_NUMBERS'),(160,72,'myGender'),(161,72,'myYear'),(162,72,'myGenderStr'),(163,72,'myMonth'),(164,76,'AUTO_CHOOSE_NUMBERS'),(165,72,'taTime'),(166,72,'myId'),(167,72,'taDay'),(168,72,'taGenderStr'),(169,72,'loveStateStr'),(170,72,'myDay'),(171,72,'taName'),(172,72,'myName'),(173,72,'taId'),(174,72,'taYear'),(175,78,'loveState'),(176,78,'taMonth'),(177,79,'(.*)'),(178,78,'myTime'),(179,78,'taGender'),(180,78,'myGender'),(181,78,'myGenderStr'),(182,78,'myYear'),(183,78,'myMonth'),(184,78,'taTime'),(185,80,'birthday'),(186,78,'myId'),(187,80,'sureCount'),(188,78,'taGenderStr'),(189,80,'mygender'),(190,78,'taDay'),(191,80,'tel'),(192,78,'loveStateStr'),(193,80,'relation'),(194,78,'myDay'),(195,80,'pid'),(196,78,'taName'),(197,80,'type'),(198,78,'modifyFlag'),(199,80,'master'),(200,78,'myName'),(201,80,'picture'),(202,78,'taYear'),(203,80,'mybirth'),(204,78,'taId'),(205,80,'name'),(206,80,'gender'),(207,80,'notes'),(208,82,'tel'),(209,85,'singleGender'),(210,85,'singleName'),(211,86,'(.*)'),(212,88,'birthday'),(213,88,'sureCount'),(214,88,'mygender'),(215,88,'tel'),(216,88,'relation'),(217,88,'pid'),(218,88,'type'),(219,88,'master'),(220,88,'picture'),(221,88,'mybirth'),(222,88,'name'),(223,88,'gender'),(224,88,'notes'),(225,89,'(.*)'),(226,91,'birthday'),(227,91,'sureCount'),(228,91,'mygender'),(229,91,'tel'),(230,91,'relation'),(231,91,'pid'),(232,91,'type'),(233,91,'master'),(234,91,'picture'),(235,91,'mybirth'),(236,91,'name'),(237,91,'gender'),(238,91,'notes'),(239,92,'birthday'),(240,92,'gender'),(241,92,'pid'),(242,93,'careerStar'),(243,93,'moneyStar'),(244,93,'moneyContent'),(245,93,'careerContent'),(246,93,'loveContent'),(247,93,'loveStar'),(248,94,'birthday'),(249,94,'relation'),(250,94,'gender'),(251,94,'pid'),(252,95,'birthday'),(253,95,'relation'),(254,95,'gender'),(255,95,'pid'),(256,96,'(.*)'),(257,97,'position'),(258,99,'birthday'),(259,99,'relation'),(260,99,'gender'),(261,99,'pid'),(262,100,'appload'),(263,105,'loverInfoArray'),(264,114,'sms_body'),(265,117,'strArray'),(266,117,'str'),(267,118,'time'),(268,119,'strArray'),(269,121,'strArray'),(270,121,'str'),(271,125,'time');
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
INSERT INTO `IMimeTypes` VALUES (1,48,'vnd.android-dir','mms-sms'),(2,71,'image','*'),(3,114,'vnd.android-dir','mms-sms');
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
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.talkweb.imoney'),(2,2,'com.talkweb.imoney'),(3,4,'com.talkweb.imoney'),(4,5,'com.talkweb.imoney'),(5,6,'com.talkweb.imoney'),(6,7,'com.talkweb.imoney'),(7,8,'com.talkweb.imoney'),(8,10,'com.talkweb.imoney'),(9,11,'com.talkweb.imoney'),(10,12,'com.talkweb.imoney'),(11,13,'com.talkweb.imoney'),(12,14,'com.talkweb.imoney'),(13,15,'com.talkweb.imoney'),(14,16,'com.talkweb.imoney'),(15,18,'com.talkweb.imoney'),(16,17,'com.talkweb.imoney'),(17,19,'com.talkweb.imoney'),(18,20,'com.talkweb.imoney'),(19,22,'com.talkweb.imoney'),(20,24,'com.talkweb.imoney'),(21,25,'com.talkweb.imoney'),(22,26,'com.talkweb.imoney'),(23,27,'com.talkweb.imoney'),(24,28,'com.talkweb.imoney'),(25,29,'com.go108.lovecome'),(26,30,'com.go108.lovecome'),(27,32,'com.heroit.tzuwei.lite'),(28,31,'com.go108.lovecome'),(29,35,'com.go108.lovecome'),(30,33,'com.heroit.tzuwei.lite'),(31,36,'com.go108.lovecome'),(32,37,'com.heroit.tzuwei.lite'),(33,38,'com.heroit.tzuwei.lite'),(34,40,'com.heroit.tzuwei.lite'),(35,41,'com.go108.lovecome'),(36,42,'com.heroit.tzuwei.lite'),(37,43,'com.go108.lovecome'),(38,44,'com.heroit.tzuwei.lite'),(39,45,'com.go108.lovecome'),(40,46,'com.talkweb.imoney'),(41,47,'com.heroit.tzuwei.lite'),(42,50,'com.go108.lovecome'),(43,51,'com.talkweb.imoney'),(44,49,'com.heroit.tzuwei.lite'),(45,52,'com.go108.lovecome'),(46,54,'com.talkweb.imoney'),(47,53,'com.heroit.tzuwei.lite'),(48,55,'com.talkweb.imoney'),(49,56,'com.heroit.tzuwei.lite'),(50,57,'com.talkweb.imoney'),(51,58,'com.heroit.tzuwei.lite'),(52,61,'com.talkweb.imoney'),(53,63,'com.heroit.tzuwei.lite'),(54,64,'com.talkweb.imoney'),(55,66,'com.talkweb.imoney'),(56,68,'com.talkweb.imoney'),(57,69,'com.talkweb.imoney'),(58,67,'com.heroit.tzuwei.lite'),(59,65,'com.go108.lovecome'),(60,70,'com.talkweb.imoney'),(61,74,'com.talkweb.imoney'),(62,75,'com.heroit.tzuwei.lite'),(63,76,'com.talkweb.imoney'),(64,72,'com.go108.lovecome'),(65,79,'com.heroit.tzuwei.lite'),(66,78,'com.go108.lovecome'),(67,80,'com.heroit.tzuwei.lite'),(68,83,'com.go108.lovecome'),(69,82,'com.heroit.tzuwei.lite'),(70,84,'com.heroit.tzuwei.lite'),(71,85,'com.go108.lovecome'),(72,86,'com.heroit.tzuwei.lite'),(73,87,'com.heroit.tzuwei.lite'),(74,88,'com.heroit.tzuwei.lite'),(75,89,'com.heroit.tzuwei.lite'),(76,90,'com.heroit.tzuwei.lite'),(77,91,'com.heroit.tzuwei.lite'),(78,92,'com.heroit.tzuwei.lite'),(79,93,'com.heroit.tzuwei.lite'),(80,94,'com.heroit.tzuwei.lite'),(81,95,'com.heroit.tzuwei.lite'),(82,96,'com.heroit.tzuwei.lite'),(83,97,'com.heroit.tzuwei.lite'),(84,98,'com.heroit.tzuwei.lite'),(85,99,'com.heroit.tzuwei.lite'),(86,100,'com.talkweb.ycya.free'),(87,101,'com.talkweb.ycya.free'),(88,102,'com.talkweb.ycya.free'),(89,105,'com.talkweb.ycya.free'),(90,106,'com.talkweb.ycya.free'),(91,107,'com.talkweb.ycya.free'),(92,108,'com.talkweb.ycya.free'),(93,109,'com.talkweb.ycya.free'),(94,110,'com.talkweb.ycya.free'),(95,111,'com.talkweb.ycya.free'),(96,112,'com.talkweb.ycya.free'),(97,113,'com.talkweb.ycya.free'),(98,115,'com.talkweb.ycya.free'),(99,116,'com.talkweb.ycya.free'),(100,117,'com.talkweb.ycya.free'),(101,118,'com.talkweb.ycya.free'),(102,119,'com.talkweb.ycya.free'),(103,120,'com.talkweb.ycya.free'),(104,121,'com.talkweb.ycya.free'),(105,122,'com.talkweb.ycya.free'),(106,123,'com.talkweb.ycya.free'),(107,124,'com.talkweb.ycya.free'),(108,125,'com.talkweb.ycya.free'),(109,126,'com.talkweb.ycya.free');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,32,0),(3,33,0),(4,37,0),(5,57,0),(6,75,0),(7,92,0),(8,104,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,1,0,0),(3,2,1,0),(4,2,0,0),(5,2,0,0),(6,3,0,0),(7,4,0,0),(8,5,0,0),(9,6,1,0),(10,7,0,0),(11,8,0,0),(12,9,0,0),(13,10,0,0),(14,11,0,0),(15,12,0,0),(16,13,0,0),(17,14,0,0),(18,13,0,0),(19,15,0,0),(20,16,0,0),(21,17,1,0),(22,18,0,0),(23,19,1,0),(24,20,0,0),(25,19,0,0),(26,19,0,0),(27,21,0,0),(28,22,0,0),(29,25,0,0),(30,26,0,0),(31,26,0,0),(32,27,0,0),(33,28,0,0),(34,29,1,0),(35,29,0,0),(36,30,0,0),(37,31,0,0),(38,33,0,0),(39,34,1,0),(40,36,0,0),(41,37,0,0),(42,38,0,0),(43,39,0,0),(44,40,0,0),(45,41,0,0),(46,42,0,0),(47,43,0,0),(48,44,1,0),(49,46,0,0),(50,47,0,0),(51,48,0,0),(52,49,0,0),(53,46,0,0),(54,50,0,0),(55,51,0,0),(56,52,0,0),(57,54,0,0),(58,55,0,0),(59,58,1,0),(60,60,1,0),(61,61,0,0),(62,59,1,0),(63,64,0,0),(64,63,0,0),(65,65,0,0),(66,66,0,0),(67,67,0,0),(68,68,0,0),(69,68,0,0),(70,69,0,0),(71,70,1,0),(72,71,0,0),(73,72,1,0),(74,72,0,0),(75,73,0,0),(76,72,0,0),(77,74,1,0),(78,71,0,0),(79,75,0,0),(80,76,0,0),(81,77,1,0),(82,78,0,0),(83,77,0,0),(84,79,0,0),(85,80,0,0),(86,81,0,0),(87,82,0,0),(88,83,0,0),(89,84,0,0),(90,85,0,0),(91,86,0,0),(92,87,0,0),(93,88,0,0),(94,89,0,0),(95,89,0,0),(96,90,0,0),(97,91,0,0),(98,92,0,0),(99,93,0,0),(100,94,0,0),(101,95,0,0),(102,96,0,0),(103,97,1,0),(104,97,1,0),(105,98,0,0),(106,101,0,0),(107,103,0,0),(108,104,0,0),(109,105,0,0),(110,106,0,0),(111,107,0,0),(112,108,0,0),(113,110,0,0),(114,111,1,0),(115,112,0,0),(116,114,0,0),(117,115,0,0),(118,116,0,0),(119,117,0,0),(120,118,0,0),(121,119,0,0),(122,121,0,0),(123,122,0,0),(124,123,0,0),(125,124,0,0),(126,126,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,3,1,2,NULL),(2,9,1,2,NULL),(3,23,1,2,NULL),(4,21,1,2,NULL),(5,34,1,2,NULL),(6,81,1,2,NULL),(7,39,1,2,NULL),(8,77,1,2,NULL),(9,73,1,2,NULL),(10,59,1,2,NULL),(11,103,1,2,NULL),(12,3,32,2,NULL),(13,9,32,2,NULL),(14,23,32,2,NULL),(15,21,32,2,NULL),(16,34,32,2,NULL),(17,81,32,2,NULL),(18,39,32,2,NULL),(19,77,32,2,NULL),(20,73,32,2,NULL),(21,59,32,2,NULL),(22,103,32,2,NULL),(23,3,33,2,NULL),(24,9,33,2,NULL),(25,23,33,2,NULL),(26,21,33,2,NULL),(27,34,33,2,NULL),(28,81,33,2,NULL),(29,39,33,2,NULL),(30,77,33,2,NULL),(31,73,33,2,NULL),(32,59,33,2,NULL),(33,103,33,2,NULL),(34,1,43,2,NULL),(35,1,52,2,NULL),(36,1,99,2,NULL),(37,2,43,2,NULL),(38,2,52,2,NULL),(39,2,99,2,NULL),(40,4,43,2,NULL),(41,4,52,2,NULL),(42,4,99,2,NULL),(43,5,45,2,NULL),(44,5,53,2,NULL),(45,5,100,2,NULL),(46,3,37,2,NULL),(47,3,57,2,NULL),(48,3,75,2,NULL),(49,3,92,2,NULL),(50,3,104,2,NULL),(51,20,47,2,NULL),(52,20,54,2,NULL),(53,20,101,2,NULL),(54,7,39,2,NULL),(55,7,48,2,NULL),(56,7,97,2,NULL),(57,11,51,2,NULL),(58,11,56,2,NULL),(59,11,103,2,NULL),(60,11,108,2,NULL),(61,13,39,2,NULL),(62,13,48,2,NULL),(63,13,97,2,NULL),(64,9,37,2,NULL),(65,9,57,2,NULL),(66,9,75,2,NULL),(67,9,92,2,NULL),(68,9,104,2,NULL),(69,23,37,2,NULL),(70,21,37,2,NULL),(71,34,37,2,NULL),(72,81,37,2,NULL),(73,39,37,2,NULL),(74,77,37,2,NULL),(75,73,37,2,NULL),(76,59,37,2,NULL),(77,103,37,2,NULL),(78,16,43,2,NULL),(79,16,52,2,NULL),(80,16,99,2,NULL),(81,18,43,2,NULL),(82,18,52,2,NULL),(83,18,99,2,NULL),(84,25,43,2,NULL),(85,25,52,2,NULL),(86,25,99,2,NULL),(87,26,45,2,NULL),(88,26,53,2,NULL),(89,26,100,2,NULL),(90,23,57,2,NULL),(91,23,75,2,NULL),(92,23,92,2,NULL),(93,23,104,2,NULL),(94,19,47,2,NULL),(95,19,54,2,NULL),(96,19,101,2,NULL),(97,6,51,2,NULL),(98,6,56,2,NULL),(99,6,103,2,NULL),(100,6,108,2,NULL),(101,8,39,2,NULL),(102,8,48,2,NULL),(103,8,97,2,NULL),(104,28,39,2,NULL),(105,28,48,2,NULL),(106,28,97,2,NULL),(107,21,57,2,NULL),(108,21,75,2,NULL),(109,21,92,2,NULL),(110,21,104,2,NULL),(111,34,92,2,NULL),(112,81,92,2,NULL),(113,39,92,2,NULL),(114,77,92,2,NULL),(115,73,92,2,NULL),(116,59,92,2,NULL),(117,103,92,2,NULL),(118,68,43,2,NULL),(119,68,52,2,NULL),(120,68,99,2,NULL),(121,69,43,2,NULL),(122,69,52,2,NULL),(123,69,99,2,NULL),(124,74,43,2,NULL),(125,74,52,2,NULL),(126,74,99,2,NULL),(127,76,45,2,NULL),(128,76,53,2,NULL),(129,76,100,2,NULL),(130,73,57,2,NULL),(131,73,75,2,NULL),(132,73,104,2,NULL),(133,51,47,2,NULL),(134,51,54,2,NULL),(135,51,101,2,NULL),(136,46,39,2,NULL),(137,46,48,2,NULL),(138,46,97,2,NULL),(139,66,39,2,NULL),(140,66,48,2,NULL),(141,66,97,2,NULL),(142,70,51,2,NULL),(143,70,56,2,NULL),(144,70,103,2,NULL),(145,70,108,2,NULL),(146,59,57,2,NULL),(147,59,75,2,NULL),(148,59,104,2,NULL),(149,38,76,2,NULL),(150,44,78,2,NULL),(151,34,75,2,NULL),(152,81,75,2,NULL),(153,39,75,2,NULL),(154,77,75,2,NULL),(155,103,75,2,NULL),(156,42,78,2,NULL),(157,84,75,2,NULL),(158,33,85,2,NULL),(159,99,85,2,NULL),(160,97,89,2,NULL),(161,77,57,2,NULL),(162,77,104,2,NULL),(163,34,104,2,NULL),(164,81,104,2,NULL),(165,39,104,2,NULL),(166,103,104,2,NULL),(167,103,57,2,NULL),(168,123,25,2,NULL),(169,123,129,2,NULL),(170,115,2,2,NULL),(171,115,105,2,NULL),(172,34,57,2,NULL),(173,81,57,2,NULL),(174,39,57,2,NULL),(175,50,59,2,NULL),(176,29,60,2,NULL),(177,30,61,2,NULL),(178,31,61,2,NULL),(179,35,68,2,NULL),(180,36,73,2,NULL),(181,41,58,2,NULL),(182,52,73,2,NULL),(183,65,60,2,NULL),(184,72,63,2,NULL),(185,78,63,2,NULL),(186,83,66,2,NULL),(187,85,62,2,NULL),(188,43,64,2,NULL);
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
INSERT INTO `PermissionStrings` VALUES (10,'android.permission.ACCESS_NETWORK_STATE'),(12,'android.permission.ACCESS_WIFI_STATE'),(4,'android.permission.INTERNET'),(13,'android.permission.KILL_BACKGROUND_PROCESSES'),(8,'android.permission.READ_CONTACTS'),(1,'android.permission.READ_PHONE_STATE'),(2,'android.permission.READ_SMS'),(7,'android.permission.RECEIVE_SMS'),(9,'android.permission.RESTART_PACKAGES'),(3,'android.permission.SEND_SMS'),(11,'android.permission.VIBRATE'),(5,'android.permission.WRITE_EXTERNAL_STORAGE'),(6,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(4,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(5,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(8,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(9,NULL,NULL,'(.*)',NULL,NULL,NULL),(10,NULL,NULL,'tel:073184285152',NULL,NULL,NULL),(11,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(12,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'http://www.go108.com.cn/mobile/Client/apk/ycya.apk',NULL,NULL,NULL),(16,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(17,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(18,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(19,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(20,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(21,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(22,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,23,3),(2,24,4),(3,32,5),(4,35,7),(5,53,8),(6,62,12),(7,99,16),(8,100,17),(9,102,18),(10,109,19),(11,113,20),(12,120,21),(13,125,22);
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,2,1),(12,2,4),(13,2,5),(14,2,10),(15,2,11),(16,2,12),(17,3,1),(18,3,4),(19,3,5),(20,3,10),(21,3,11),(22,3,12),(23,4,1),(24,4,4),(25,4,5),(26,4,9),(27,4,10),(28,4,11),(29,4,12),(30,4,13),(31,5,1),(32,5,4),(33,5,5),(34,5,10),(35,5,12),(36,6,1),(37,6,4),(38,6,5),(39,6,10),(40,6,11),(41,6,12),(42,7,1),(43,7,4),(44,7,5),(45,7,8),(46,7,10),(47,7,12);
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
