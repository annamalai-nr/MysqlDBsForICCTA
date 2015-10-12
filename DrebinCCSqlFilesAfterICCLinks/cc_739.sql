-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_739
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (3,'android.intent.action.BOOT_COMPLETED'),(5,'android.intent.action.CALL'),(6,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(4,'android.intent.action.VIEW'),(2,'android.provider.Telephony.SMS_RECEIVED');
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
INSERT INTO `Applications` VALUES (1,'com.sandman.prospero',1),(2,'com.talkweb.imoney',3),(3,'com.talkweb.ycya',2),(4,'com.heroit.tzuwei.lite',14),(5,'com.go108.lic.free',1),(6,'com.talkweb.ycya',6),(7,'com.heroit.tzuwei.lite',15);
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
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.sandman.prospero.ProSperoActivity'),(2,1,'com.sandman.prospero.ProSperoService'),(3,1,'com.sandman.prospero.GPS'),(4,1,'com.sandman.prospero.AlarmedService'),(5,1,'com.sandman.prospero.SmsBroadcastReceiver'),(6,1,'com.sandman.prospero.ResendData'),(7,1,'com.sandman.prospero.OutgoingSMS'),(8,1,'com.sandman.prospero.onBootReceiver'),(9,2,'com.talkweb.imoney.LoadMain'),(10,2,'com.talkweb.imoney.almanac.AlmanacActivity'),(11,2,'com.talkweb.imoney.almanac.QueryAlmanacActivity'),(12,2,'com.talkweb.imoney.almanac.TodayAlmanacActivity'),(13,2,'com.talkweb.imoney.guagua.GuaGuaActivity'),(14,2,'com.talkweb.imoney.util.BirthdayInputActivity'),(15,2,'com.talkweb.imoney.ball.BallActivity'),(16,2,'com.talkweb.imoney.ball.ResultShowActivity'),(17,2,'com.talkweb.imoney.ball.SimulateBuyActivity'),(18,2,'com.talkweb.imoney.ball.BallChooseActivity'),(19,2,'com.talkweb.imoney.god.GodMainActivity'),(20,2,'com.talkweb.comm.MoreExctingActivity'),(21,3,'com.talkweb.ycya.LoginActivity'),(22,3,'com.talkweb.main.MainActivity'),(23,3,'com.talkweb.mzzd.MzzdActivity'),(24,3,'com.talkweb.mzzd.MzzdFreeResultActivity'),(25,3,'com.talkweb.mzzd.MzzdChargeResultActivity'),(26,3,'com.talkweb.xzpd.XzpdActivity'),(27,3,'com.talkweb.xzpd.XzpdXzxzActivity'),(28,1,'com.sandman.prospero.Utils'),(29,3,'com.talkweb.xzpd.XzpdFreeResultActivity'),(30,3,'com.talkweb.xzpd.XzpdChargeResultActivity'),(31,3,'com.talkweb.xzpd.XzpdForbiddenParadiseActivity'),(32,3,'com.talkweb.xzpd.XzpdPersueSecretsActivity'),(33,3,'com.talkweb.yhlq.YhlqActivity'),(34,3,'com.talkweb.qrmj.QrmjActivity'),(35,3,'com.talkweb.qrmj.QrmjResultActivity'),(36,3,'com.talkweb.mzzd.ContactActivity'),(37,3,'com.talkweb.menu.MenuActivity'),(38,3,'com.talkweb.menu.FavoriteListActivity'),(39,3,'com.talkweb.menu.FavoriteRequestActivity'),(40,3,'com.talkweb.menu.HelpActivity'),(41,3,'com.talkweb.menu.UpdateActivity'),(42,3,'com.talkweb.menu.CompanyIntroActivity'),(43,3,'com.talkweb.menu.WebIntroActivity'),(44,3,'com.talkweb.menu.WapIntroActivity'),(45,3,'com.talkweb.mzzd.MzzdQueryResultActivity'),(46,3,'com.talkweb.yhlq.YaoQianActivity'),(47,3,'com.talkweb.yhlq.CqProcessActivity'),(48,3,'com.talkweb.yhlq.ZhiJiaoActivity'),(49,3,'com.talkweb.yhlq.QianResultActivity'),(50,3,'com.talkweb.xzpd.XzpdRequestChargeResultActivity'),(51,3,'com.talkweb.xzpd.XzpdRequestPersueSecretsActivity'),(52,3,'com.talkweb.xzpd.XzpdRequestForbiddenParadiseActivity'),(53,3,'com.talkweb.comm.SmsReceiver'),(54,2,'com.talkweb.imoney.almanac.b'),(55,2,'com.talkweb.imoney.god.e'),(56,2,'com.talkweb.imoney.god.c'),(57,2,'com.talkweb.imoney.god.s'),(58,2,'com.talkweb.imoney.god.b'),(59,4,'com.heroit.tzuwei.lite.StartupActivity'),(60,4,'com.heroit.tzuwei.lite.InputActivity'),(61,4,'com.heroit.tzuwei.lite.MasterActivity'),(62,4,'com.heroit.tzuwei.lite.MainActivity'),(63,4,'com.heroit.tzuwei.lite.TodayActivity'),(64,4,'com.heroit.tzuwei.lite.ImportantActivity'),(65,4,'com.heroit.tzuwei.lite.ReminderListActivity'),(66,4,'com.heroit.tzuwei.lite.MessageActivity'),(67,4,'com.heroit.tzuwei.lite.RelationActivity'),(68,4,'com.heroit.tzuwei.lite.AddFriendActivity'),(69,4,'com.heroit.tzuwei.lite.FriendListActivity'),(70,4,'com.heroit.tzuwei.lite.EmotionActivity'),(71,4,'com.heroit.tzuwei.lite.HobbyActivity'),(72,4,'com.heroit.tzuwei.lite.MasterListActivity'),(73,4,'com.heroit.tzuwei.lite.LearnActivity'),(74,4,'com.heroit.tzuwei.lite.MoreExctingActivity'),(75,4,'com.heroit.tzuwei.lite.AboutActivity'),(76,5,'com.go108.lic.free.StartupActivity'),(77,5,'com.go108.lic.free.InputActivity'),(78,5,'com.go108.lic.free.MainActivity'),(79,5,'com.go108.lic.free.PersonModifyActivity'),(80,5,'com.go108.lic.free.MoreExctingActivity'),(81,5,'com.go108.lic.free.menu.FeedbackActivity'),(82,5,'com.go108.lic.free.menu.AboutActivity'),(83,5,'com.go108.lic.free.menu.HelpActivity'),(84,5,'com.go108.lic.free.menu.SiteDescActivity'),(85,5,'com.go108.lic.free.util.DownloadFileService'),(86,6,'com.talkweb.ycya.LoginActivity'),(87,6,'com.talkweb.main.MainActivity'),(88,6,'com.talkweb.mzzd.MzzdActivity'),(89,6,'com.talkweb.mzzd.MzzdFreeResultActivity'),(90,6,'com.talkweb.mzzd.MzzdChargeResultActivity'),(91,6,'com.talkweb.xzpd.XzpdActivity'),(92,6,'com.talkweb.xzpd.XzpdXzxzActivity'),(93,6,'com.talkweb.xzpd.XzpdFreeResultActivity'),(94,6,'com.talkweb.xzpd.XzpdChargeResultActivity'),(95,6,'com.talkweb.xzpd.XzpdForbiddenParadiseActivity'),(96,6,'com.talkweb.xzpd.XzpdPersueSecretsActivity'),(97,6,'com.talkweb.yhlq.YhlqActivity'),(98,6,'com.talkweb.yhlq.InputActivity'),(99,6,'com.talkweb.qrmj.QrmjActivity'),(100,6,'com.talkweb.qrmj.QrmjResultActivity'),(101,6,'com.talkweb.mzzd.ContactActivity'),(102,6,'com.talkweb.menu.MenuActivity'),(103,6,'com.talkweb.menu.FavoriteListActivity'),(104,6,'com.talkweb.menu.FavoriteRequestActivity'),(105,6,'com.talkweb.menu.HelpActivity'),(106,6,'com.talkweb.menu.UpdateActivity'),(107,6,'com.talkweb.menu.CompanyIntroActivity'),(108,6,'com.talkweb.menu.WebIntroActivity'),(109,6,'com.talkweb.menu.WapIntroActivity'),(110,6,'com.talkweb.mzzd.MzzdQueryResultActivity'),(111,6,'com.talkweb.yhlq.YaoQianActivity'),(112,6,'com.talkweb.yhlq.CqProcessActivity'),(113,6,'com.talkweb.yhlq.ZhiJiaoActivity'),(114,6,'com.talkweb.yhlq.QianResultActivity'),(115,6,'com.talkweb.xzpd.XzpdRequestChargeResultActivity'),(116,6,'com.talkweb.xzpd.XzpdRequestPersueSecretsActivity'),(117,6,'com.talkweb.xzpd.XzpdRequestForbiddenParadiseActivity'),(118,6,'com.heroit.tzuwei.lite.MoreExctingActivity'),(119,7,'com.heroit.tzuwei.lite.StartupActivity'),(120,7,'com.heroit.tzuwei.lite.InputActivity'),(121,7,'com.heroit.tzuwei.lite.MasterActivity'),(122,7,'com.heroit.tzuwei.lite.MainActivity'),(123,7,'com.heroit.tzuwei.lite.TodayActivity'),(124,7,'com.heroit.tzuwei.lite.ImportantActivity'),(125,7,'com.heroit.tzuwei.lite.ReminderListActivity'),(126,7,'com.heroit.tzuwei.lite.MessageActivity'),(127,7,'com.heroit.tzuwei.lite.RelationActivity'),(128,7,'com.heroit.tzuwei.lite.AddFriendActivity'),(129,7,'com.heroit.tzuwei.lite.FriendListActivity'),(130,7,'com.heroit.tzuwei.lite.EmotionActivity'),(131,7,'com.heroit.tzuwei.lite.HobbyActivity'),(132,7,'com.heroit.tzuwei.lite.MasterListActivity'),(133,7,'com.heroit.tzuwei.lite.LearnActivity'),(134,7,'com.heroit.tzuwei.lite.MoreExctingActivity'),(135,7,'com.heroit.tzuwei.lite.AboutActivity'),(136,5,'com.go108.lic.free.MainActivity$2'),(137,5,'com.go108.lic.free.util.APNOpera'),(138,5,'com.go108.lic.free.menu.AboutActivity$1'),(139,5,'com.go108.lic.free.StartupActivity$2'),(140,4,'com.heroit.tzuwei.lite.ae'),(141,4,'com.heroit.tzuwei.lite.i'),(142,4,'com.heroit.tzuwei.lite.bf'),(143,4,'com.heroit.tzuwei.lite.aw'),(144,4,'com.heroit.tzuwei.lite.bc'),(145,4,'com.heroit.tzuwei.lite.ad'),(146,4,'com.heroit.tzuwei.lite.aa'),(147,4,'com.heroit.tzuwei.lite.ar'),(148,4,'com.heroit.tzuwei.lite.u'),(149,4,'com.heroit.tzuwei.lite.ac'),(150,4,'com.heroit.tzuwei.lite.af'),(151,4,'com.heroit.tzuwei.lite.y'),(152,4,'com.heroit.tzuwei.lite.ap'),(153,4,'com.heroit.tzuwei.lite.av'),(154,7,'com.heroit.tzuwei.lite.bh'),(155,7,'com.heroit.tzuwei.lite.ac'),(156,7,'com.heroit.tzuwei.lite.ay'),(157,4,'com.heroit.tzuwei.lite.ab'),(158,7,'com.heroit.tzuwei.lite.af'),(159,7,'com.heroit.tzuwei.lite.u'),(160,4,'com.heroit.tzuwei.lite.v'),(161,7,'com.heroit.tzuwei.lite.ao'),(162,7,'com.heroit.tzuwei.lite.ax'),(163,7,'com.heroit.tzuwei.lite.at'),(164,7,'com.heroit.tzuwei.lite.ab'),(165,7,'com.heroit.tzuwei.lite.aa'),(166,7,'com.heroit.tzuwei.lite.ae'),(167,7,'com.heroit.tzuwei.lite.v'),(168,7,'com.heroit.tzuwei.lite.aq'),(169,7,'com.heroit.tzuwei.lite.i'),(170,7,'com.heroit.tzuwei.lite.be'),(171,7,'com.heroit.tzuwei.lite.ad');
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
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,5,'pdus'),(2,11,'currentDay'),(3,19,'APP_NAME'),(4,10,'day'),(5,10,'APP_CHANNEL'),(6,16,'APP_CHANNEL'),(7,15,'APP_CHANNEL'),(8,19,'APP_CHANNEL'),(9,11,'APP_CHANNEL'),(10,17,'APP_CHANNEL'),(11,17,'BallBeanChoice'),(12,10,'APP_NAME'),(13,16,'APP_NAME'),(14,15,'APP_NAME'),(15,11,'APP_NAME'),(16,17,'APP_NAME'),(17,11,'currentMonth'),(18,10,'year'),(19,10,'AUTO_CHOOSE_NUMBERS'),(20,19,'AUTO_CHOOSE_NUMBERS'),(21,11,'AUTO_CHOOSE_NUMBERS'),(22,17,'AUTO_CHOOSE_NUMBERS'),(23,11,'currentYear'),(24,14,'isqd'),(25,10,'month'),(26,73,'myTime'),(27,73,'taMonth'),(28,73,'myGender'),(29,73,'taId'),(30,73,'loveState'),(31,73,'myYear'),(32,72,'readFlag'),(33,75,'APP_NAME'),(34,72,'APP_NAME'),(35,73,'taTime'),(36,79,'path'),(37,73,'taDay'),(38,54,'birthday'),(39,62,'notes'),(40,62,'relation'),(41,55,'gender'),(42,72,'APP_CHANNEL'),(43,57,'careerStar'),(44,65,'APP_NAME'),(45,64,'APP_NAME'),(46,56,'APP_NAME'),(47,58,'APP_NAME'),(48,70,'APP_CHANNEL'),(49,71,'APP_CHANNEL'),(50,79,'productName'),(51,73,'myMonth'),(52,73,'taGender'),(53,73,'myName'),(54,73,'modifyFlag'),(55,73,'myDay'),(56,73,'taYear'),(57,73,'myId'),(58,70,'APP_NAME'),(59,71,'APP_NAME'),(60,73,'taName'),(61,56,'birthday'),(62,62,'picture'),(63,61,'birthday'),(64,64,'picture'),(65,62,'pid'),(66,57,'moneyContent'),(67,60,'tel'),(68,58,'gender'),(69,63,'pid'),(70,61,'gender'),(71,69,'gender'),(72,55,'birthday'),(73,67,'position'),(74,56,'APP_CHANNEL'),(75,57,'careerContent'),(76,57,'loveContent'),(77,54,'pid'),(78,63,'relation'),(79,54,'gender'),(80,55,'relation'),(81,64,'name'),(82,62,'tel'),(83,64,'birthday'),(84,56,'gender'),(85,58,'birthday'),(86,57,'loveStar'),(87,56,'pid'),(88,65,'APP_CHANNEL'),(89,64,'APP_CHANNEL'),(90,58,'APP_CHANNEL'),(91,65,'gender'),(92,69,'birthday'),(93,56,'dataType'),(94,62,'birthday'),(95,121,'birthday'),(96,121,'gender'),(97,129,'gender'),(98,63,'birthday'),(99,122,'gender'),(100,64,'gender'),(101,116,'dataType'),(102,62,'gender'),(103,62,'name'),(104,63,'gender'),(105,62,'type'),(106,65,'birthday'),(107,57,'moneyStar'),(108,114,'birthday'),(109,123,'gender'),(110,124,'gender'),(111,114,'gender'),(112,124,'birthday'),(113,129,'birthday'),(114,117,'loveStar'),(115,64,'master'),(116,115,'birthday'),(117,123,'relation'),(118,116,'gender'),(119,125,'gender'),(120,124,'name'),(121,115,'gender'),(122,122,'notes'),(123,125,'APP_CHANNEL'),(124,124,'APP_CHANNEL'),(125,116,'APP_CHANNEL'),(126,118,'APP_CHANNEL'),(127,122,'relation'),(128,117,'moneyContent'),(129,122,'picture'),(130,122,'birthday'),(131,116,'APP_NAME'),(132,125,'APP_NAME'),(133,124,'APP_NAME'),(134,118,'APP_NAME'),(135,120,'tel'),(136,117,'careerStar'),(137,117,'loveContent'),(138,115,'relation'),(139,122,'tel'),(140,123,'birthday'),(141,123,'pid'),(142,118,'birthday'),(143,124,'picture'),(144,116,'birthday'),(145,122,'name'),(146,116,'pid'),(147,117,'careerContent'),(148,118,'gender'),(149,124,'master'),(150,127,'position'),(151,122,'pid'),(152,122,'type'),(153,117,'moneyStar'),(154,114,'pid'),(155,125,'birthday');
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
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'s',0,NULL,NULL),(3,3,'s',0,NULL,NULL),(4,4,'s',0,NULL,NULL),(5,5,'r',1,NULL,NULL),(6,6,'r',0,NULL,NULL),(7,7,'r',0,NULL,NULL),(8,8,'r',0,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,29,'a',0,NULL,NULL),(29,30,'a',0,NULL,NULL),(30,31,'a',0,NULL,NULL),(31,32,'a',0,NULL,NULL),(32,33,'a',0,NULL,NULL),(33,34,'a',0,NULL,NULL),(34,35,'a',0,NULL,NULL),(35,36,'a',0,NULL,NULL),(36,37,'a',0,NULL,NULL),(37,38,'a',0,NULL,NULL),(38,39,'a',0,NULL,NULL),(39,40,'a',0,NULL,NULL),(40,41,'a',0,NULL,NULL),(41,42,'a',0,NULL,NULL),(42,43,'a',0,NULL,NULL),(43,44,'a',0,NULL,NULL),(44,45,'a',0,NULL,NULL),(45,46,'a',0,NULL,NULL),(46,47,'a',0,NULL,NULL),(47,48,'a',0,NULL,NULL),(48,49,'a',0,NULL,NULL),(49,50,'a',0,NULL,NULL),(50,51,'a',0,NULL,NULL),(51,52,'a',0,NULL,NULL),(52,53,'r',1,NULL,NULL),(53,59,'a',1,NULL,NULL),(54,60,'a',0,NULL,NULL),(55,61,'a',0,NULL,NULL),(56,62,'a',0,NULL,NULL),(57,63,'a',0,NULL,NULL),(58,64,'a',0,NULL,NULL),(59,65,'a',0,NULL,NULL),(60,66,'a',0,NULL,NULL),(61,67,'a',0,NULL,NULL),(62,68,'a',0,NULL,NULL),(63,69,'a',0,NULL,NULL),(64,70,'a',0,NULL,NULL),(65,71,'a',0,NULL,NULL),(66,72,'a',0,NULL,NULL),(67,73,'a',0,NULL,NULL),(68,74,'a',0,NULL,NULL),(69,75,'a',0,NULL,NULL),(70,76,'a',1,NULL,NULL),(71,77,'a',0,NULL,NULL),(72,78,'a',0,NULL,NULL),(73,79,'a',0,NULL,NULL),(74,80,'a',0,NULL,NULL),(75,81,'a',0,NULL,NULL),(76,82,'a',0,NULL,NULL),(77,83,'a',0,NULL,NULL),(78,84,'a',0,NULL,NULL),(79,85,'s',0,NULL,NULL),(80,86,'a',1,NULL,NULL),(81,87,'a',0,NULL,NULL),(82,88,'a',0,NULL,NULL),(83,89,'a',0,NULL,NULL),(84,90,'a',0,NULL,NULL),(85,91,'a',0,NULL,NULL),(86,92,'a',0,NULL,NULL),(87,93,'a',0,NULL,NULL),(88,94,'a',0,NULL,NULL),(89,95,'a',0,NULL,NULL),(90,96,'a',0,NULL,NULL),(91,97,'a',0,NULL,NULL),(92,98,'a',0,NULL,NULL),(93,99,'a',0,NULL,NULL),(94,100,'a',0,NULL,NULL),(95,101,'a',0,NULL,NULL),(96,102,'a',0,NULL,NULL),(97,103,'a',0,NULL,NULL),(98,104,'a',0,NULL,NULL),(99,105,'a',0,NULL,NULL),(100,106,'a',0,NULL,NULL),(101,107,'a',0,NULL,NULL),(102,108,'a',0,NULL,NULL),(103,109,'a',0,NULL,NULL),(104,110,'a',0,NULL,NULL),(105,111,'a',0,NULL,NULL),(106,112,'a',0,NULL,NULL),(107,113,'a',0,NULL,NULL),(108,114,'a',0,NULL,NULL),(109,115,'a',0,NULL,NULL),(110,116,'a',0,NULL,NULL),(111,117,'a',0,NULL,NULL),(112,118,'a',0,NULL,NULL),(113,119,'a',1,NULL,NULL),(114,120,'a',0,NULL,NULL),(115,121,'a',0,NULL,NULL),(116,122,'a',0,NULL,NULL),(117,123,'a',0,NULL,NULL),(118,124,'a',0,NULL,NULL),(119,125,'a',0,NULL,NULL),(120,126,'a',0,NULL,NULL),(121,127,'a',0,NULL,NULL),(122,128,'a',0,NULL,NULL),(123,129,'a',0,NULL,NULL),(124,130,'a',0,NULL,NULL),(125,131,'a',0,NULL,NULL),(126,132,'a',0,NULL,NULL),(127,133,'a',0,NULL,NULL),(128,134,'a',0,NULL,NULL),(129,135,'a',0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,5),(3,3,2),(4,4,7),(5,5,2),(6,6,6),(7,6,2),(8,7,8),(9,8,19),(10,9,15),(11,9,11),(12,9,10),(13,9,19),(14,10,19),(15,10,11),(16,10,10),(17,11,19),(18,11,10),(19,11,11),(20,12,10),(21,12,19),(22,12,11),(23,13,11),(24,13,10),(25,13,17),(26,13,19),(27,14,10),(28,14,11),(29,14,19),(30,15,20),(31,16,19),(32,16,10),(33,16,11),(34,17,19),(35,17,15),(36,17,10),(37,17,11),(38,18,10),(39,18,19),(40,18,11),(41,19,11),(42,19,10),(43,19,19),(44,20,72),(45,21,72),(46,22,72),(47,23,72),(48,24,72),(49,24,75),(50,25,76),(51,25,72),(52,26,72),(53,27,72),(54,27,74),(55,28,70),(56,29,72),(57,30,69),(58,30,56),(59,31,62),(60,31,69),(61,32,55),(62,33,71),(63,33,72),(64,34,63),(65,35,72),(66,35,75),(67,36,72),(68,37,65),(69,38,53),(70,39,69),(71,39,61),(72,40,69),(73,40,57),(74,41,63),(75,42,56),(76,42,69),(77,43,59),(78,44,61),(79,44,69),(80,45,66),(81,46,61),(82,47,56),(83,47,69),(84,48,59),(85,49,56),(86,49,69),(87,50,68),(88,51,56),(89,52,55),(90,53,64),(91,54,56),(92,55,69),(93,55,63),(94,56,63),(95,57,56),(96,58,53),(97,59,115),(98,60,56),(99,61,116),(100,61,129),(101,62,69),(102,62,54),(103,63,128),(104,64,65),(105,65,123),(106,66,69),(107,66,56),(108,67,64),(109,68,129),(110,68,116),(111,69,63),(112,70,121),(113,71,61),(114,72,116),(115,73,56),(116,74,126),(117,75,121),(118,75,129),(119,76,129),(120,76,123),(121,77,119),(122,78,129),(123,78,116),(124,79,116),(125,79,129),(126,80,114),(127,80,129),(128,81,116),(129,82,116),(130,82,129),(131,83,113),(132,84,113),(133,85,119),(134,86,116),(135,87,123),(136,88,121),(137,89,123),(138,90,124),(139,91,122),(140,91,129),(141,92,115),(142,93,123),(143,94,124),(144,95,116),(145,96,116),(146,97,125),(147,98,129),(148,98,121),(149,99,125),(150,100,117),(151,100,129),(152,101,116);
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
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<com.sandman.prospero.ProSperoActivity: void onCreate(android.os.Bundle)>',13,'s',NULL),(2,5,'<com.sandman.prospero.SmsBroadcastReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(3,2,'<com.sandman.prospero.ProSperoService: void IncomingSMSBackup()>',24,'s',NULL),(4,28,'<com.sandman.prospero.Utils: android.database.Cursor GetSentSMS(android.content.Context,int)>',9,'p',NULL),(5,28,'<com.sandman.prospero.Utils: android.database.Cursor GetContacts(android.content.Context)>',4,'p',NULL),(6,28,'<com.sandman.prospero.Utils: java.lang.String GetContactName(android.content.Context,java.lang.String)>',10,'p',NULL),(7,8,'<com.sandman.prospero.onBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(8,19,'<com.talkweb.imoney.god.GodMainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(9,15,'<com.talkweb.imoney.ball.BallActivity: void onClick(android.view.View)>',51,'a',NULL),(10,19,'<com.talkweb.imoney.god.GodMainActivity: void b()>',10,'a',NULL),(11,54,'<com.talkweb.imoney.almanac.b: void onClick(android.view.View)>',28,'a',NULL),(12,19,'<com.talkweb.imoney.god.GodMainActivity: void c()>',8,'a',NULL),(13,17,'<com.talkweb.imoney.ball.SimulateBuyActivity: void onClick(android.view.View)>',108,'a',NULL),(14,55,'<com.talkweb.imoney.god.e: void onClick(android.view.View)>',11,'a',NULL),(15,20,'<com.talkweb.comm.MoreExctingActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',25,'a',NULL),(16,56,'<com.talkweb.imoney.god.c: void onClick(android.view.View)>',11,'a',NULL),(17,15,'<com.talkweb.imoney.ball.BallActivity: void onClick(android.view.View)>',10,'a',NULL),(18,57,'<com.talkweb.imoney.god.s: void onClick(android.view.View)>',7,'a',NULL),(19,58,'<com.talkweb.imoney.god.b: void onClick(android.view.View)>',11,'a',NULL),(20,136,'<com.go108.lic.free.MainActivity$2: void onClick(android.view.View)>',7,'a',NULL),(21,78,'<com.go108.lic.free.MainActivity: void doSMS()>',5,'a',NULL),(22,78,'<com.go108.lic.free.MainActivity: void onClick(android.view.View)>',24,'a',NULL),(23,78,'<com.go108.lic.free.MainActivity: void readInfo()>',24,'a',NULL),(24,137,'<com.go108.lic.free.util.APNOpera: java.lang.String readCurrentAPN()>',10,'p',NULL),(25,138,'<com.go108.lic.free.menu.AboutActivity$1: void onClick(android.content.DialogInterface,int)>',13,'a',NULL),(26,78,'<com.go108.lic.free.MainActivity: void onClick(android.view.View)>',12,'a',NULL),(27,80,'<com.go108.lic.free.MoreExctingActivity: void linkSite(com.go108.lic.free.ExctingProductBean)>',14,'a',NULL),(28,139,'<com.go108.lic.free.StartupActivity$2: void run()>',5,'a',0),(29,78,'<com.go108.lic.free.MainActivity: void onClick(android.view.View)>',20,'a',NULL),(30,140,'<com.heroit.tzuwei.lite.ae: void onClick(android.view.View)>',19,'a',NULL),(31,141,'<com.heroit.tzuwei.lite.i: void onClick(android.view.View)>',7,'a',NULL),(32,142,'<com.heroit.tzuwei.lite.bf: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(33,77,'<com.go108.lic.free.InputActivity: void save()>',37,'a',NULL),(34,143,'<com.heroit.tzuwei.lite.aw: void onClick(android.content.DialogInterface,int)>',105,'a',NULL),(35,137,'<com.go108.lic.free.util.APNOpera: long getPreferredApnId()>',5,'p',NULL),(36,78,'<com.go108.lic.free.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(37,144,'<com.heroit.tzuwei.lite.bc: void onClick(android.content.DialogInterface,int)>',22,'a',NULL),(38,59,'<com.heroit.tzuwei.lite.StartupActivity: void onCreate(android.os.Bundle)>',22,'a',NULL),(39,67,'<com.heroit.tzuwei.lite.RelationActivity: void a(com.heroit.tzuwei.lite.RelationActivity)>',16,'a',NULL),(40,145,'<com.heroit.tzuwei.lite.ad: void onClick(android.view.View)>',7,'a',NULL),(41,143,'<com.heroit.tzuwei.lite.aw: void onClick(android.content.DialogInterface,int)>',123,'a',NULL),(42,146,'<com.heroit.tzuwei.lite.aa: void onClick(android.view.View)>',7,'a',NULL),(43,147,'<com.heroit.tzuwei.lite.ar: void onClick(android.content.DialogInterface,int)>',17,'a',NULL),(44,67,'<com.heroit.tzuwei.lite.RelationActivity: void b(com.heroit.tzuwei.lite.RelationActivity)>',16,'a',NULL),(45,72,'<com.heroit.tzuwei.lite.MasterListActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',13,'a',NULL),(46,148,'<com.heroit.tzuwei.lite.u: void onClick(android.content.DialogInterface,int)>',26,'a',NULL),(47,149,'<com.heroit.tzuwei.lite.ac: void onClick(android.view.View)>',10,'a',NULL),(48,147,'<com.heroit.tzuwei.lite.ar: void onClick(android.content.DialogInterface,int)>',36,'a',NULL),(49,150,'<com.heroit.tzuwei.lite.af: void onClick(android.view.View)>',40,'a',NULL),(50,74,'<com.heroit.tzuwei.lite.MoreExctingActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',25,'a',NULL),(51,151,'<com.heroit.tzuwei.lite.y: void onClick(android.content.DialogInterface,int)>',26,'a',NULL),(52,142,'<com.heroit.tzuwei.lite.bf: void onClick(android.content.DialogInterface,int)>',22,'a',NULL),(53,152,'<com.heroit.tzuwei.lite.ap: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(54,151,'<com.heroit.tzuwei.lite.y: void onClick(android.content.DialogInterface,int)>',55,'a',NULL),(55,153,'<com.heroit.tzuwei.lite.av: void onClick(android.view.View)>',21,'a',NULL),(56,143,'<com.heroit.tzuwei.lite.aw: void onClick(android.content.DialogInterface,int)>',94,'a',NULL),(57,151,'<com.heroit.tzuwei.lite.y: void onClick(android.content.DialogInterface,int)>',48,'a',NULL),(58,59,'<com.heroit.tzuwei.lite.StartupActivity: void onCreate(android.os.Bundle)>',62,'a',NULL),(59,154,'<com.heroit.tzuwei.lite.bh: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(60,151,'<com.heroit.tzuwei.lite.y: void onClick(android.content.DialogInterface,int)>',77,'a',NULL),(61,155,'<com.heroit.tzuwei.lite.ac: void onClick(android.view.View)>',10,'a',NULL),(62,60,'<com.heroit.tzuwei.lite.InputActivity: void e(com.heroit.tzuwei.lite.InputActivity)>',125,'a',NULL),(63,134,'<com.heroit.tzuwei.lite.MoreExctingActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',25,'a',NULL),(64,144,'<com.heroit.tzuwei.lite.bc: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(65,156,'<com.heroit.tzuwei.lite.ay: void onClick(android.content.DialogInterface,int)>',94,'a',NULL),(66,157,'<com.heroit.tzuwei.lite.ab: void onClick(android.view.View)>',19,'a',NULL),(67,152,'<com.heroit.tzuwei.lite.ap: void onClick(android.content.DialogInterface,int)>',22,'a',NULL),(68,158,'<com.heroit.tzuwei.lite.af: void onClick(android.view.View)>',40,'a',NULL),(69,143,'<com.heroit.tzuwei.lite.aw: void onClick(android.content.DialogInterface,int)>',72,'a',NULL),(70,159,'<com.heroit.tzuwei.lite.u: void onClick(android.content.DialogInterface,int)>',26,'a',NULL),(71,160,'<com.heroit.tzuwei.lite.v: void onClick(android.content.DialogInterface,int)>',26,'a',NULL),(72,161,'<com.heroit.tzuwei.lite.ao: void onClick(android.content.DialogInterface,int)>',77,'a',NULL),(73,151,'<com.heroit.tzuwei.lite.y: void onClick(android.content.DialogInterface,int)>',63,'a',NULL),(74,132,'<com.heroit.tzuwei.lite.MasterListActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',13,'a',NULL),(75,127,'<com.heroit.tzuwei.lite.RelationActivity: void b(com.heroit.tzuwei.lite.RelationActivity)>',16,'a',NULL),(76,162,'<com.heroit.tzuwei.lite.ax: void onClick(android.view.View)>',21,'a',NULL),(77,163,'<com.heroit.tzuwei.lite.at: void onClick(android.content.DialogInterface,int)>',17,'a',NULL),(78,164,'<com.heroit.tzuwei.lite.ab: void onClick(android.view.View)>',19,'a',NULL),(79,165,'<com.heroit.tzuwei.lite.aa: void onClick(android.view.View)>',7,'a',NULL),(80,120,'<com.heroit.tzuwei.lite.InputActivity: void e(com.heroit.tzuwei.lite.InputActivity)>',125,'a',NULL),(81,161,'<com.heroit.tzuwei.lite.ao: void onClick(android.content.DialogInterface,int)>',26,'a',NULL),(82,166,'<com.heroit.tzuwei.lite.ae: void onClick(android.view.View)>',19,'a',NULL),(83,119,'<com.heroit.tzuwei.lite.StartupActivity: void onCreate(android.os.Bundle)>',22,'a',NULL),(84,119,'<com.heroit.tzuwei.lite.StartupActivity: void onCreate(android.os.Bundle)>',62,'a',NULL),(85,163,'<com.heroit.tzuwei.lite.at: void onClick(android.content.DialogInterface,int)>',36,'a',NULL),(86,161,'<com.heroit.tzuwei.lite.ao: void onClick(android.content.DialogInterface,int)>',55,'a',NULL),(87,156,'<com.heroit.tzuwei.lite.ay: void onClick(android.content.DialogInterface,int)>',123,'a',NULL),(88,167,'<com.heroit.tzuwei.lite.v: void onClick(android.content.DialogInterface,int)>',26,'a',NULL),(89,156,'<com.heroit.tzuwei.lite.ay: void onClick(android.content.DialogInterface,int)>',105,'a',NULL),(90,168,'<com.heroit.tzuwei.lite.aq: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(91,169,'<com.heroit.tzuwei.lite.i: void onClick(android.view.View)>',7,'a',NULL),(92,154,'<com.heroit.tzuwei.lite.bh: void onClick(android.content.DialogInterface,int)>',22,'a',NULL),(93,156,'<com.heroit.tzuwei.lite.ay: void onClick(android.content.DialogInterface,int)>',72,'a',NULL),(94,168,'<com.heroit.tzuwei.lite.aq: void onClick(android.content.DialogInterface,int)>',22,'a',NULL),(95,161,'<com.heroit.tzuwei.lite.ao: void onClick(android.content.DialogInterface,int)>',63,'a',NULL),(96,161,'<com.heroit.tzuwei.lite.ao: void onClick(android.content.DialogInterface,int)>',48,'a',NULL),(97,170,'<com.heroit.tzuwei.lite.be: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(98,127,'<com.heroit.tzuwei.lite.RelationActivity: void a(com.heroit.tzuwei.lite.RelationActivity)>',16,'a',NULL),(99,170,'<com.heroit.tzuwei.lite.be: void onClick(android.content.DialogInterface,int)>',22,'a',NULL),(100,171,'<com.heroit.tzuwei.lite.ad: void onClick(android.view.View)>',7,'a',NULL),(101,122,'<com.heroit.tzuwei.lite.MainActivity: void onActivityResult(int,int,android.content.Intent)>',9,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,14,4),(2,21,4),(3,24,5),(4,26,4),(5,27,4),(6,30,6),(7,42,5),(8,50,4),(9,54,4),(10,63,4),(11,79,5),(12,88,4),(13,94,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/sandman/prospero/AlarmedService'),(2,2,'com/sandman/prospero/ProSperoService'),(3,3,'com/sandman/prospero/GPS'),(4,4,'com/sandman/prospero/AlarmedService'),(5,5,'com/talkweb/comm/MoreExctingActivity'),(6,7,'com/talkweb/imoney/ball/ResultShowActivity'),(7,8,'com/talkweb/imoney/ball/SimulateBuyActivity'),(8,9,'com/talkweb/imoney/util/BirthdayInputActivity'),(9,10,'com/talkweb/imoney/almanac/QueryAlmanacActivity'),(10,11,'com/talkweb/imoney/util/BirthdayInputActivity'),(11,12,'com/talkweb/imoney/ball/BallChooseActivity'),(12,13,'com/talkweb/imoney/ball/BallActivity'),(13,15,'com/talkweb/imoney/guagua/GuaGuaActivity'),(14,16,'com/talkweb/imoney/ball/ResultShowActivity'),(15,17,'com/talkweb/imoney/ball/ResultShowActivity'),(16,18,'com/talkweb/comm/MoreExctingActivity'),(17,19,'com/talkweb/imoney/almanac/AlmanacActivity'),(18,20,'com/go108/lic/free/MoreExctingActivity'),(19,22,'com/go108/lic/free/MoreExctingActivity'),(20,23,'com/go108/lic/free/InputActivity'),(21,25,'com/go108/lic/free/PersonModifyActivity'),(22,29,'com/heroit/tzuwei/lite/ImportantActivity'),(23,28,'com/go108/lic/free/PersonModifyActivity'),(24,31,'com/heroit/tzuwei/lite/EmotionActivity'),(25,32,'com/go108/lic/free/MainActivity'),(26,33,'com/heroit/tzuwei/lite/AddFriendActivity'),(27,35,'com/go108/lic/free/menu/FeedbackActivity'),(28,36,'com/heroit/tzuwei/lite/MasterActivity'),(29,37,'com/heroit/tzuwei/lite/InputActivity'),(30,38,'com/heroit/tzuwei/lite/FriendListActivity'),(31,39,'com/heroit/tzuwei/lite/MoreExctingActivity'),(32,40,'com/heroit/tzuwei/lite/MasterActivity'),(33,41,'com/heroit/tzuwei/lite/MasterListActivity'),(34,43,'com/heroit/tzuwei/lite/FriendListActivity'),(35,44,'com/heroit/tzuwei/lite/LearnActivity'),(36,45,'com/heroit/tzuwei/lite/AddFriendActivity'),(37,46,'com/heroit/tzuwei/lite/FriendListActivity'),(38,47,'com/heroit/tzuwei/lite/ReminderListActivity'),(39,48,'com/heroit/tzuwei/lite/MessageActivity'),(40,49,'com/heroit/tzuwei/lite/TodayActivity'),(41,51,'com/heroit/tzuwei/lite/InputActivity'),(42,52,'com/heroit/tzuwei/lite/HobbyActivity'),(43,53,'com/heroit/tzuwei/lite/HobbyActivity'),(44,55,'com/heroit/tzuwei/lite/AddFriendActivity'),(45,56,'com/heroit/tzuwei/lite/HobbyActivity'),(46,57,'com/heroit/tzuwei/lite/MasterActivity'),(47,58,'com/heroit/tzuwei/lite/MainActivity'),(48,59,'com/heroit/tzuwei/lite/EmotionActivity'),(49,60,'com/heroit/tzuwei/lite/AboutActivity'),(50,61,'com/heroit/tzuwei/lite/ReminderListActivity'),(51,62,'com/heroit/tzuwei/lite/MainActivity'),(52,64,'com/heroit/tzuwei/lite/EmotionActivity'),(53,66,'com/heroit/tzuwei/lite/RelationActivity'),(54,67,'com/heroit/tzuwei/lite/MasterActivity'),(55,65,'com/heroit/tzuwei/lite/HobbyActivity'),(56,68,'com/heroit/tzuwei/lite/TodayActivity'),(57,69,'com/heroit/tzuwei/lite/EmotionActivity'),(58,70,'com/heroit/tzuwei/lite/AddFriendActivity'),(59,71,'com/heroit/tzuwei/lite/AddFriendActivity'),(60,72,'com/heroit/tzuwei/lite/FriendListActivity'),(61,73,'com/heroit/tzuwei/lite/FriendListActivity'),(62,74,'com/heroit/tzuwei/lite/AboutActivity'),(63,75,'com/heroit/tzuwei/lite/MoreExctingActivity'),(64,76,'com/heroit/tzuwei/lite/LearnActivity'),(65,77,'com/heroit/tzuwei/lite/FriendListActivity'),(66,78,'com/heroit/tzuwei/lite/AddFriendActivity'),(67,80,'com/heroit/tzuwei/lite/RelationActivity'),(68,81,'com/heroit/tzuwei/lite/MasterListActivity'),(69,82,'com/heroit/tzuwei/lite/MainActivity'),(70,83,'com/heroit/tzuwei/lite/InputActivity'),(71,84,'com/heroit/tzuwei/lite/ImportantActivity'),(72,85,'com/heroit/tzuwei/lite/InputActivity'),(73,86,'com/heroit/tzuwei/lite/MainActivity'),(74,87,'com/heroit/tzuwei/lite/MessageActivity'),(75,89,'com/heroit/tzuwei/lite/MasterActivity'),(76,90,'com/heroit/tzuwei/lite/AddFriendActivity'),(77,91,'com/heroit/tzuwei/lite/FriendListActivity'),(78,92,'com/heroit/tzuwei/lite/AddFriendActivity'),(79,93,'com/heroit/tzuwei/lite/HobbyActivity'),(80,95,'com/heroit/tzuwei/lite/HobbyActivity'),(81,96,'com/heroit/tzuwei/lite/EmotionActivity'),(82,97,'com/heroit/tzuwei/lite/MasterActivity'),(83,98,'com/heroit/tzuwei/lite/MoreExctingActivity'),(84,99,'com/heroit/tzuwei/lite/MasterActivity'),(85,100,'com/heroit/tzuwei/lite/EmotionActivity'),(86,101,'com/heroit/tzuwei/lite/FriendListActivity'),(87,102,'com/heroit/tzuwei/lite/MasterActivity'),(88,103,'com/heroit/tzuwei/lite/MoreExctingActivity'),(89,104,'com/heroit/tzuwei/lite/StartupActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,14,4),(2,24,6),(3,26,7),(4,27,8),(5,42,10),(6,50,11),(7,54,12),(8,63,13),(9,79,14),(10,88,15);
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
) ENGINE=InnoDB AUTO_INCREMENT=274 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,6,'AUTO_CHOOSE_NUMBERS'),(2,7,'AUTO_CHOOSE_NUMBERS'),(3,8,'AUTO_CHOOSE_NUMBERS'),(4,9,'isqd'),(5,10,'currentDay'),(6,10,'currentYear'),(7,10,'currentMonth'),(8,11,'isqd'),(9,17,'AUTO_CHOOSE_NUMBERS'),(10,21,'sms_body'),(11,25,'loveState'),(12,25,'taMonth'),(13,25,'myTime'),(14,25,'taGender'),(15,25,'myGender'),(16,25,'myGenderStr'),(17,25,'myYear'),(18,25,'myMonth'),(19,25,'taTime'),(20,25,'myId'),(21,25,'taGenderStr'),(22,25,'taDay'),(23,25,'loveStateStr'),(24,25,'myDay'),(25,25,'taName'),(26,25,'modifyFlag'),(27,25,'myName'),(28,25,'taYear'),(29,25,'taId'),(30,28,'loveState'),(31,28,'taMonth'),(32,29,'birthday'),(33,28,'myTime'),(34,29,'gender'),(35,28,'taGender'),(36,28,'myGender'),(37,28,'myGenderStr'),(38,28,'myYear'),(39,28,'myMonth'),(40,28,'taTime'),(41,28,'myId'),(42,28,'taGenderStr'),(43,28,'taDay'),(44,28,'loveStateStr'),(45,28,'myDay'),(46,28,'taName'),(47,28,'modifyFlag'),(48,28,'myName'),(49,28,'taYear'),(50,28,'taId'),(51,31,'(.*)'),(52,32,'readFlag'),(53,33,'birthday'),(54,33,'sureCount'),(55,33,'mygender'),(56,33,'tel'),(57,33,'relation'),(58,33,'pid'),(59,33,'type'),(60,33,'master'),(61,33,'picture'),(62,33,'mybirth'),(63,33,'name'),(64,33,'gender'),(65,33,'notes'),(66,36,'(.*)'),(67,37,'pid'),(68,38,'birthday'),(69,38,'relation'),(70,38,'gender'),(71,38,'pid'),(72,40,'birthday'),(73,40,'sureCount'),(74,40,'mygender'),(75,40,'tel'),(76,40,'relation'),(77,40,'pid'),(78,40,'type'),(79,40,'master'),(80,40,'picture'),(81,40,'mybirth'),(82,40,'name'),(83,40,'gender'),(84,40,'notes'),(85,43,'birthday'),(86,43,'relation'),(87,43,'gender'),(88,43,'pid'),(89,44,'position'),(90,45,'birthday'),(91,45,'relation'),(92,45,'gender'),(93,45,'pid'),(94,46,'birthday'),(95,46,'relation'),(96,46,'gender'),(97,46,'pid'),(98,48,'tel'),(99,49,'careerStar'),(100,49,'moneyStar'),(101,49,'moneyContent'),(102,49,'careerContent'),(103,49,'loveContent'),(104,49,'loveStar'),(105,51,'birthday'),(106,51,'gender'),(107,51,'pid'),(108,52,'(.*)'),(109,53,'(.*)'),(110,55,'birthday'),(111,55,'relation'),(112,55,'gender'),(113,55,'pid'),(114,56,'birthday'),(115,56,'sureCount'),(116,56,'mygender'),(117,56,'tel'),(118,56,'relation'),(119,56,'pid'),(120,56,'type'),(121,56,'master'),(122,56,'picture'),(123,56,'mybirth'),(124,56,'name'),(125,56,'gender'),(126,56,'notes'),(127,57,'birthday'),(128,57,'relation'),(129,57,'gender'),(130,58,'birthday'),(131,58,'dataType'),(132,58,'sureCount'),(133,58,'gender'),(134,58,'pid'),(135,59,'(.*)'),(136,62,'birthday'),(137,62,'gender'),(138,64,'(.*)'),(139,65,'birthday'),(140,65,'sureCount'),(141,65,'mygender'),(142,66,'birthday'),(143,65,'tel'),(144,66,'gender'),(145,65,'relation'),(146,65,'pid'),(147,65,'type'),(148,65,'master'),(149,65,'picture'),(150,65,'mybirth'),(151,67,'(.*)'),(152,65,'name'),(153,65,'gender'),(154,65,'notes'),(155,68,'careerStar'),(156,69,'birthday'),(157,68,'moneyStar'),(158,69,'sureCount'),(159,68,'moneyContent'),(160,69,'mygender'),(161,68,'careerContent'),(162,69,'tel'),(163,68,'loveContent'),(164,69,'relation'),(165,68,'loveStar'),(166,69,'pid'),(167,69,'type'),(168,69,'master'),(169,69,'picture'),(170,69,'mybirth'),(171,69,'name'),(172,69,'gender'),(173,69,'notes'),(174,70,'birthday'),(175,70,'relation'),(176,71,'birthday'),(177,70,'gender'),(178,71,'relation'),(179,70,'pid'),(180,71,'gender'),(181,71,'pid'),(182,72,'birthday'),(183,72,'relation'),(184,73,'birthday'),(185,72,'gender'),(186,73,'relation'),(187,72,'pid'),(188,73,'gender'),(189,73,'pid'),(190,76,'position'),(191,77,'birthday'),(192,77,'relation'),(193,77,'gender'),(194,77,'pid'),(195,78,'birthday'),(196,78,'relation'),(197,78,'gender'),(198,78,'pid'),(199,80,'birthday'),(200,80,'gender'),(201,82,'birthday'),(202,82,'gender'),(203,83,'birthday'),(204,83,'gender'),(205,83,'pid'),(206,84,'birthday'),(207,84,'gender'),(208,85,'pid'),(209,86,'birthday'),(210,86,'dataType'),(211,86,'sureCount'),(212,86,'gender'),(213,86,'pid'),(214,87,'tel'),(215,89,'birthday'),(216,89,'sureCount'),(217,89,'mygender'),(218,89,'tel'),(219,89,'relation'),(220,89,'pid'),(221,89,'type'),(222,89,'master'),(223,89,'picture'),(224,89,'mybirth'),(225,89,'name'),(226,89,'gender'),(227,89,'notes'),(228,90,'birthday'),(229,90,'relation'),(230,90,'gender'),(231,90,'pid'),(232,91,'birthday'),(233,91,'relation'),(234,91,'gender'),(235,91,'pid'),(236,92,'birthday'),(237,92,'sureCount'),(238,92,'mygender'),(239,92,'tel'),(240,92,'relation'),(241,92,'pid'),(242,92,'type'),(243,92,'master'),(244,92,'picture'),(245,92,'mybirth'),(246,92,'name'),(247,92,'gender'),(248,92,'notes'),(249,93,'(.*)'),(250,95,'(.*)'),(251,96,'birthday'),(252,96,'sureCount'),(253,96,'mygender'),(254,96,'tel'),(255,96,'relation'),(256,96,'pid'),(257,96,'type'),(258,96,'master'),(259,96,'picture'),(260,96,'mybirth'),(261,96,'name'),(262,96,'gender'),(263,96,'notes'),(264,97,'(.*)'),(265,99,'birthday'),(266,99,'relation'),(267,99,'gender'),(268,100,'(.*)'),(269,101,'birthday'),(270,101,'relation'),(271,101,'gender'),(272,101,'pid'),(273,102,'(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,1),(5,5,1),(6,6,2),(7,7,1),(8,8,1),(9,9,1),(10,10,1);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,4,1),(3,5,1),(4,6,2),(5,7,1),(6,8,1),(7,9,1),(8,10,1);
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
INSERT INTO `IMimeTypes` VALUES (1,21,'vnd.android-dir','mms-sms'),(2,30,'image','*'),(3,94,'image','*');
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
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.sandman.prospero'),(2,2,'com.sandman.prospero'),(3,3,'com.sandman.prospero'),(4,4,'com.sandman.prospero'),(5,5,'com.talkweb.imoney'),(6,7,'com.talkweb.imoney'),(7,8,'com.talkweb.imoney'),(8,9,'com.talkweb.imoney'),(9,10,'com.talkweb.imoney'),(10,11,'com.talkweb.imoney'),(11,12,'com.talkweb.imoney'),(12,13,'com.talkweb.imoney'),(13,15,'com.talkweb.imoney'),(14,16,'com.talkweb.imoney'),(15,17,'com.talkweb.imoney'),(16,18,'com.talkweb.imoney'),(17,19,'com.talkweb.imoney'),(18,20,'com.go108.lic.free'),(19,22,'com.go108.lic.free'),(20,23,'com.go108.lic.free'),(21,25,'com.go108.lic.free'),(22,29,'com.heroit.tzuwei.lite'),(23,28,'com.go108.lic.free'),(24,31,'com.heroit.tzuwei.lite'),(25,32,'com.go108.lic.free'),(26,33,'com.heroit.tzuwei.lite'),(27,35,'com.go108.lic.free'),(28,36,'com.heroit.tzuwei.lite'),(29,37,'com.heroit.tzuwei.lite'),(30,38,'com.heroit.tzuwei.lite'),(31,39,'com.heroit.tzuwei.lite'),(32,40,'com.heroit.tzuwei.lite'),(33,41,'com.heroit.tzuwei.lite'),(34,43,'com.heroit.tzuwei.lite'),(35,44,'com.heroit.tzuwei.lite'),(36,45,'com.heroit.tzuwei.lite'),(37,46,'com.heroit.tzuwei.lite'),(38,47,'com.heroit.tzuwei.lite'),(39,48,'com.heroit.tzuwei.lite'),(40,49,'com.heroit.tzuwei.lite'),(41,51,'com.heroit.tzuwei.lite'),(42,52,'com.heroit.tzuwei.lite'),(43,53,'com.heroit.tzuwei.lite'),(44,55,'com.heroit.tzuwei.lite'),(45,56,'com.heroit.tzuwei.lite'),(46,57,'com.heroit.tzuwei.lite'),(47,58,'com.heroit.tzuwei.lite'),(48,59,'com.heroit.tzuwei.lite'),(49,60,'com.heroit.tzuwei.lite'),(50,61,'com.heroit.tzuwei.lite'),(51,62,'com.heroit.tzuwei.lite'),(52,64,'com.heroit.tzuwei.lite'),(53,66,'com.heroit.tzuwei.lite'),(54,67,'com.heroit.tzuwei.lite'),(55,65,'com.heroit.tzuwei.lite'),(56,68,'com.heroit.tzuwei.lite'),(57,69,'com.heroit.tzuwei.lite'),(58,70,'com.heroit.tzuwei.lite'),(59,71,'com.heroit.tzuwei.lite'),(60,72,'com.heroit.tzuwei.lite'),(61,73,'com.heroit.tzuwei.lite'),(62,74,'com.heroit.tzuwei.lite'),(63,75,'com.heroit.tzuwei.lite'),(64,76,'com.heroit.tzuwei.lite'),(65,77,'com.heroit.tzuwei.lite'),(66,78,'com.heroit.tzuwei.lite'),(67,80,'com.heroit.tzuwei.lite'),(68,81,'com.heroit.tzuwei.lite'),(69,82,'com.heroit.tzuwei.lite'),(70,83,'com.heroit.tzuwei.lite'),(71,84,'com.heroit.tzuwei.lite'),(72,85,'com.heroit.tzuwei.lite'),(73,86,'com.heroit.tzuwei.lite'),(74,87,'com.heroit.tzuwei.lite'),(75,89,'com.heroit.tzuwei.lite'),(76,90,'com.heroit.tzuwei.lite'),(77,91,'com.heroit.tzuwei.lite'),(78,92,'com.heroit.tzuwei.lite'),(79,93,'com.heroit.tzuwei.lite'),(80,95,'com.heroit.tzuwei.lite'),(81,96,'com.heroit.tzuwei.lite'),(82,97,'com.heroit.tzuwei.lite'),(83,98,'com.heroit.tzuwei.lite'),(84,99,'com.heroit.tzuwei.lite'),(85,100,'com.heroit.tzuwei.lite'),(86,101,'com.heroit.tzuwei.lite'),(87,102,'com.heroit.tzuwei.lite'),(88,103,'com.heroit.tzuwei.lite'),(89,104,'com.heroit.tzuwei.lite');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,5,0),(3,8,0),(4,9,0),(5,21,0),(6,52,0),(7,53,0),(8,70,0),(9,80,0),(10,113,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,7,0,0),(5,8,0,0),(6,9,1,0),(7,9,0,0),(8,9,0,0),(9,10,0,0),(10,11,0,0),(11,12,0,0),(12,13,0,0),(13,14,0,0),(14,15,1,0),(15,16,0,0),(16,17,0,0),(17,17,0,0),(18,18,0,0),(19,19,0,0),(20,20,0,0),(21,21,1,0),(22,22,0,0),(23,23,0,0),(24,25,1,0),(25,26,0,0),(26,27,1,0),(27,27,1,0),(28,29,0,0),(29,30,0,0),(30,31,1,0),(31,32,0,0),(32,33,0,0),(33,34,0,0),(34,36,1,0),(35,36,0,0),(36,37,0,0),(37,38,0,0),(38,39,0,0),(39,40,0,0),(40,41,0,0),(41,42,0,0),(42,43,1,0),(43,44,0,0),(44,45,0,0),(45,46,0,0),(46,46,0,0),(47,47,0,0),(48,48,0,0),(49,49,0,0),(50,50,1,0),(51,51,0,0),(52,52,0,0),(53,53,0,0),(54,54,1,0),(55,55,0,0),(56,56,0,0),(57,57,0,0),(58,58,0,0),(59,59,0,0),(60,60,0,0),(61,61,0,0),(62,62,0,0),(63,63,1,0),(64,64,0,0),(65,65,0,0),(66,66,0,0),(67,67,0,0),(68,68,0,0),(69,69,0,0),(70,70,0,0),(71,71,0,0),(72,70,0,0),(73,71,0,0),(74,72,0,0),(75,73,0,0),(76,74,0,0),(77,75,0,0),(78,76,0,0),(79,77,1,0),(80,78,0,0),(81,79,0,0),(82,80,0,0),(83,81,0,0),(84,82,0,0),(85,83,0,0),(86,84,0,0),(87,85,0,0),(88,86,1,0),(89,87,0,0),(90,88,0,0),(91,88,0,0),(92,89,0,0),(93,90,0,0),(94,91,1,0),(95,92,0,0),(96,93,0,0),(97,94,0,0),(98,95,0,0),(99,96,0,0),(100,97,0,0),(101,98,0,0),(102,99,0,0),(103,100,0,0),(104,101,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,6,21,2,NULL),(2,14,21,2,NULL),(3,50,21,2,NULL),(4,34,21,2,NULL),(5,27,21,2,NULL),(6,63,21,2,NULL),(7,6,52,2,NULL),(8,14,52,2,NULL),(9,50,52,2,NULL),(10,34,52,2,NULL),(11,27,52,2,NULL),(12,63,52,2,NULL),(13,6,80,2,NULL),(14,14,80,2,NULL),(15,50,80,2,NULL),(16,34,80,2,NULL),(17,27,80,2,NULL),(18,63,80,2,NULL),(19,37,54,2,NULL),(20,37,114,2,NULL),(21,58,56,2,NULL),(22,58,116,2,NULL),(23,6,53,2,NULL),(24,14,53,2,NULL),(25,50,53,2,NULL),(26,34,53,2,NULL),(27,27,53,2,NULL),(28,63,53,2,NULL),(29,62,56,2,NULL),(30,62,116,2,NULL),(31,38,63,2,NULL),(32,38,123,2,NULL),(33,43,63,2,NULL),(34,43,123,2,NULL),(35,44,67,2,NULL),(36,44,127,2,NULL),(37,50,1,2,NULL),(38,50,5,2,NULL),(39,50,8,2,NULL),(40,50,9,2,NULL),(41,50,70,2,NULL),(42,50,113,2,NULL),(43,85,54,2,NULL),(44,85,114,2,NULL),(45,86,56,2,NULL),(46,86,116,2,NULL),(47,6,113,2,NULL),(48,14,113,2,NULL),(49,34,113,2,NULL),(50,27,113,2,NULL),(51,63,113,2,NULL),(52,82,56,2,NULL),(53,82,116,2,NULL),(54,104,53,2,NULL),(55,104,113,2,NULL),(56,77,63,2,NULL),(57,77,123,2,NULL),(58,101,63,2,NULL),(59,101,123,2,NULL),(60,76,67,2,NULL),(61,76,127,2,NULL),(62,63,1,2,NULL),(63,63,5,2,NULL),(64,63,8,2,NULL),(65,63,9,2,NULL),(66,63,70,2,NULL),(67,6,70,2,NULL),(68,14,70,2,NULL),(69,34,70,2,NULL),(70,27,70,2,NULL),(71,32,72,2,NULL),(72,22,74,2,NULL),(73,23,71,2,NULL),(74,25,73,2,NULL),(75,28,73,2,NULL),(76,35,75,2,NULL),(77,34,1,2,NULL),(78,34,5,2,NULL),(79,34,8,2,NULL),(80,34,9,2,NULL),(81,27,1,2,NULL),(82,27,5,2,NULL),(83,27,8,2,NULL),(84,27,9,2,NULL),(85,6,9,2,NULL),(86,14,9,2,NULL),(87,7,16,2,NULL),(88,8,17,2,NULL),(89,16,16,2,NULL),(90,17,16,2,NULL),(91,6,1,2,NULL),(92,6,5,2,NULL),(93,6,8,2,NULL),(94,12,18,2,NULL),(95,5,20,2,NULL),(96,9,14,2,NULL),(97,11,14,2,NULL),(98,14,1,2,NULL),(99,14,5,2,NULL),(100,14,8,2,NULL),(101,1,4,2,NULL),(102,3,3,2,NULL),(103,2,2,2,NULL),(104,4,4,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (5,'android.permission.ACCESS_FINE_LOCATION'),(13,'android.permission.ACCESS_NETWORK_STATE'),(12,'android.permission.ACCESS_WIFI_STATE'),(16,'android.permission.CALL_PHONE'),(4,'android.permission.INTERNET'),(17,'android.permission.KILL_BACKGROUND_PROCESSES'),(7,'android.permission.READ_CONTACTS'),(9,'android.permission.READ_PHONE_STATE'),(1,'android.permission.READ_SMS'),(2,'android.permission.RECEIVE_BOOT_COMPLETED'),(6,'android.permission.RECEIVE_SMS'),(15,'android.permission.RESTART_PACKAGES'),(3,'android.permission.SEND_SMS'),(11,'android.permission.VIBRATE'),(8,'android.permission.WAKE_LOCK'),(10,'android.permission.WRITE_EXTERNAL_STORAGE'),(14,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://sms/sent',NULL,NULL,NULL),(2,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(3,NULL,NULL,'content://contacts/phones/filter',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(6,NULL,NULL,'tel:073184285152',NULL,NULL,NULL),(7,NULL,NULL,'http://www.go108.com.cn/mobile/Client/apk/lic.apk',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(10,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'http://wap.go108.cn/astro/cin.jsp?c=zwmd',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(15,NULL,NULL,'http://wap.go108.cn/astro/cin.jsp?c=zwmd',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,4,1),(2,5,2),(3,6,3),(4,24,5),(5,35,9);
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,2,4),(10,2,9),(11,2,10),(12,2,11),(13,2,12),(14,2,13),(15,3,1),(16,3,3),(17,3,4),(18,3,6),(19,3,7),(20,3,9),(21,3,10),(22,3,13),(23,3,14),(24,3,15),(25,4,16),(26,4,3),(27,4,4),(28,4,9),(29,4,10),(30,4,12),(31,4,13),(32,5,17),(33,5,4),(34,5,9),(35,5,10),(36,5,11),(37,5,12),(38,5,13),(39,5,15),(40,6,4),(41,6,7),(42,6,9),(43,6,10),(44,6,12),(45,6,13),(46,7,4),(47,7,9),(48,7,10),(49,7,12),(50,7,13);
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
