-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_745
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (3,'android.appwidget.action.APPWIDGET_CONFIGURE'),(10,'android.appwidget.action.APPWIDGET_UPDATE'),(12,'android.intent.action.CALL'),(14,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(13,'android.intent.action.VIEW'),(2,'android.provider.Telephony.SMS_RECEIVED'),(5,'com.talkweb.kaiyund.service.lightmusic'),(4,'com.talkweb.kaiyund.service.startmusic'),(11,'widget.update'),(9,'widget.update.date.changed'),(6,'widget.update.time.changed'),(8,'widget.update.time.tick'),(7,'widget.update.timezone.changed');
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
INSERT INTO `Applications` VALUES (1,'com.go108.lic',2),(2,'com.KaiYunD',1),(3,'com.talkweb.imoney',2),(4,'com.heroit.tzuwei.lite',15),(5,'com.talkweb.imoney',3),(6,'com.go108.lic.free',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(1,'android.intent.category.LAUNCHER'),(3,'android.intent.category.default');
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
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.go108.lic.StartupActivity'),(2,1,'com.go108.lic.InputActivity'),(3,1,'com.go108.lic.MainActivity'),(4,1,'com.go108.lic.PersonModifyActivity'),(5,1,'com.go108.lic.SingleInputActivity'),(6,1,'com.go108.lic.SingleResultActivity'),(7,1,'com.go108.lic.LovingInputActivity'),(8,1,'com.go108.lic.LovingResultActivity'),(9,1,'com.go108.lic.FavoritesReviewActivity'),(10,1,'com.go108.lic.menu.FeedbackActivity'),(11,1,'com.go108.lic.menu.ShareActivity'),(12,1,'com.go108.lic.menu.FavoritesListActivity'),(13,1,'com.go108.lic.menu.AboutActivity'),(14,1,'com.go108.lic.menu.HelpActivity'),(15,1,'com.go108.lic.menu.SiteDescActivity'),(16,1,'com.go108.lic.QuitActivity'),(17,1,'com.go108.lic.util.DownloadFileService'),(18,1,'com.go108.lic.util.SmsReceiver'),(19,2,'com.talkweb.kaiyund.KaiYunD'),(20,2,'com.talkweb.kaiyund.light.start.StartActivity'),(21,2,'com.talkweb.kaiyund.light.start.UserInfoInputActivity'),(22,2,'com.talkweb.kaiyund.light.start.WishActivity'),(23,2,'com.talkweb.kaiyund.light.YyActivity'),(24,2,'com.talkweb.kaiyund.light.ScActivity'),(25,2,'com.talkweb.kaiyund.light.SyActivity'),(26,2,'com.talkweb.kaiyund.light.ZcActivity'),(27,2,'com.talkweb.kaiyund.light.menu.ModifyUserinfoActivity'),(28,2,'com.talkweb.kaiyund.light.menu.FeedbackActivity'),(29,2,'com.talkweb.kaiyund.light.menu.AboutActivity'),(30,2,'com.talkweb.kaiyund.light.menu.ManageWishActivity'),(31,2,'com.talkweb.kaiyund.cs.mzzd.TDMSActivity'),(32,2,'com.talkweb.kaiyund.cs.mzzd.XMXXActivity'),(33,2,'com.talkweb.kaiyund.cs.mzzd.XAGDActivity'),(34,2,'com.talkweb.kaiyund.cs.mzzd.CCTRActivity'),(35,2,'com.talkweb.kaiyund.cs.mzzd.ContactActivity'),(36,2,'com.talkweb.kaiyund.cs.csActivity'),(37,2,'com.talkweb.kaiyund.cs.mzzd.MZZDTabActivity'),(38,2,'com.talkweb.kaiyund.cs.xzys.XZYSTabActivity'),(39,2,'com.talkweb.kaiyund.cs.xzys.DayActivity'),(40,2,'com.talkweb.kaiyund.cs.xzys.WeekActivity'),(41,2,'com.talkweb.kaiyund.cs.xzys.MonthActivity'),(42,2,'com.talkweb.kaiyund.cs.xzys.CCTRActivity'),(43,2,'com.talkweb.kaiyund.cs.wtxd.WTXDSelectActivity'),(44,2,'com.talkweb.kaiyund.cs.wtxd.WTXDTabActivity'),(45,2,'com.talkweb.kaiyund.cs.wtxd.XZPDActivity'),(46,2,'com.talkweb.kaiyund.cs.wtxd.WDZXActivity'),(47,2,'com.talkweb.kaiyund.cs.wtxd.JGLYActivity'),(48,2,'com.talkweb.kaiyund.cs.wtxd.CCTRActivity'),(49,2,'com.talkweb.kaiyund.cs.ygzb.YgzbIndexActivity'),(50,2,'com.talkweb.kaiyund.cs.ygzb.YgzbInputActivity'),(51,2,'com.talkweb.kaiyund.cs.ygzb.YgzbBuguaActivity'),(52,2,'com.talkweb.kaiyund.cs.ygzb.YgzbResultActivity'),(53,2,'com.talkweb.kaiyund.cs.yhlq.YHLQ_FActivity'),(54,2,'com.talkweb.kaiyund.cs.yhlq.YHLQ_SActivity'),(55,2,'com.talkweb.kaiyund.cs.yhlq.YHLQ_TActivity'),(56,2,'com.talkweb.kaiyund.cs.yhlq.YHLQ_ResultActivity'),(57,2,'com.talkweb.kaiyund.cs.yhlq.YHLQ_DActivity'),(58,2,'com.talkweb.kaiyund.intro.IntroduceActivity'),(59,2,'com.talkweb.kaiyund.widget.WidgetConfig'),(60,2,'com.talkweb.kaiyund.light.service.StartMusicService'),(61,2,'com.talkweb.kaiyund.light.service.LightMusicService'),(62,2,'com.talkweb.kaiyund.light.service.LightOnMediaService'),(63,2,'com.talkweb.kaiyund.widget.WidgetServiceUpdateByDate'),(64,2,'com.talkweb.kaiyund.widget.WidgetProvider'),(65,2,'com.talkweb.kaiyund.widget.ServiceReceiver'),(66,1,'com.go108.lic.StartupActivity$2'),(67,1,'com.go108.lic.dialog.ReadContacts2Utils'),(68,1,'com.go108.lic.menu.AboutActivity$1'),(69,1,'com.go108.lic.util.SmsReceiver$1'),(70,1,'com.go108.lic.util.APNOpera'),(71,1,'com.go108.lic.dialog.PopupShow$15'),(72,1,'com.go108.lic.dialog.PopupShow'),(73,3,'com.talkweb.imoney.LoadMain'),(74,3,'com.talkweb.imoney.almanac.AlmanacActivity'),(75,3,'com.talkweb.imoney.almanac.QueryAlmanacActivity'),(76,3,'com.talkweb.imoney.almanac.TodayAlmanacActivity'),(77,3,'com.talkweb.imoney.guagua.GuaGuaActivity'),(78,3,'com.talkweb.imoney.util.BirthdayInputActivity'),(79,3,'com.talkweb.imoney.ball.BallActivity'),(80,3,'com.talkweb.imoney.ball.ResultShowActivity'),(81,3,'com.talkweb.imoney.ball.SimulateBuyActivity'),(82,3,'com.talkweb.imoney.ball.BallChooseActivity'),(83,3,'com.talkweb.imoney.god.GodMainActivity'),(84,3,'com.talkweb.comm.MoreExctingActivity'),(85,4,'com.heroit.tzuwei.lite.StartupActivity'),(86,4,'com.heroit.tzuwei.lite.InputActivity'),(87,4,'com.heroit.tzuwei.lite.MasterActivity'),(88,4,'com.heroit.tzuwei.lite.MainActivity'),(89,4,'com.heroit.tzuwei.lite.TodayActivity'),(90,4,'com.heroit.tzuwei.lite.ImportantActivity'),(91,4,'com.heroit.tzuwei.lite.ReminderListActivity'),(92,4,'com.heroit.tzuwei.lite.MessageActivity'),(93,4,'com.heroit.tzuwei.lite.RelationActivity'),(94,4,'com.heroit.tzuwei.lite.AddFriendActivity'),(95,4,'com.heroit.tzuwei.lite.FriendListActivity'),(96,4,'com.heroit.tzuwei.lite.EmotionActivity'),(97,4,'com.heroit.tzuwei.lite.HobbyActivity'),(98,4,'com.heroit.tzuwei.lite.MasterListActivity'),(99,4,'com.heroit.tzuwei.lite.LearnActivity'),(100,4,'com.heroit.tzuwei.lite.MoreExctingActivity'),(101,4,'com.heroit.tzuwei.lite.AboutActivity'),(102,3,'com.talkweb.imoney.god.b'),(103,3,'com.talkweb.imoney.almanac.b'),(104,3,'com.talkweb.imoney.god.c'),(105,3,'com.talkweb.imoney.god.e'),(106,5,'com.talkweb.imoney.LoadMain'),(107,5,'com.talkweb.imoney.almanac.AlmanacActivity'),(108,5,'com.talkweb.imoney.almanac.QueryAlmanacActivity'),(109,5,'com.talkweb.imoney.almanac.TodayAlmanacActivity'),(110,5,'com.talkweb.imoney.guagua.GuaGuaActivity'),(111,5,'com.talkweb.imoney.util.BirthdayInputActivity'),(112,5,'com.talkweb.imoney.ball.BallActivity'),(113,5,'com.talkweb.imoney.ball.ResultShowActivity'),(114,5,'com.talkweb.imoney.ball.SimulateBuyActivity'),(115,5,'com.talkweb.imoney.ball.BallChooseActivity'),(116,5,'com.talkweb.imoney.god.GodMainActivity'),(117,5,'com.talkweb.comm.MoreExctingActivity'),(118,6,'com.go108.lic.free.StartupActivity'),(119,6,'com.go108.lic.free.InputActivity'),(120,6,'com.go108.lic.free.MainActivity'),(121,6,'com.go108.lic.free.PersonModifyActivity'),(122,6,'com.go108.lic.free.MoreExctingActivity'),(123,6,'com.go108.lic.free.menu.FeedbackActivity'),(124,6,'com.go108.lic.free.menu.AboutActivity'),(125,6,'com.go108.lic.free.menu.HelpActivity'),(126,6,'com.go108.lic.free.menu.SiteDescActivity'),(127,6,'com.go108.lic.free.util.DownloadFileService'),(128,4,'com.heroit.tzuwei.lite.ao'),(129,4,'com.heroit.tzuwei.lite.af'),(130,4,'com.heroit.tzuwei.lite.bh'),(131,4,'com.heroit.tzuwei.lite.aq'),(132,4,'com.heroit.tzuwei.lite.u'),(133,4,'com.heroit.tzuwei.lite.be'),(134,4,'com.heroit.tzuwei.lite.ab'),(135,5,'com.talkweb.imoney.god.c'),(136,4,'com.heroit.tzuwei.lite.ac'),(137,5,'com.talkweb.imoney.god.s'),(138,4,'com.heroit.tzuwei.lite.at'),(139,5,'com.talkweb.imoney.almanac.b'),(140,5,'com.talkweb.imoney.god.b'),(141,4,'com.heroit.tzuwei.lite.ae'),(142,4,'com.heroit.tzuwei.lite.v'),(143,5,'com.talkweb.imoney.god.e'),(144,4,'com.heroit.tzuwei.lite.ax'),(145,4,'com.heroit.tzuwei.lite.ay'),(146,4,'com.heroit.tzuwei.lite.aa'),(147,6,'com.go108.lic.free.StartupActivity$2'),(148,6,'com.go108.lic.free.util.APNOpera'),(149,4,'com.heroit.tzuwei.lite.ad'),(150,6,'com.go108.lic.free.MainActivity$2'),(151,4,'com.heroit.tzuwei.lite.i'),(152,6,'com.go108.lic.free.menu.AboutActivity$1');
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
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,5,'feeinfo_feeNumber'),(2,3,'APP_CHANNEL'),(3,7,'APP_CHANNEL'),(4,5,'APP_CHANNEL'),(5,14,'APP_CHANNEL'),(6,8,'monthChoice'),(7,5,'feeinfo_feeCode'),(8,18,'pdus'),(9,8,'APP_NAME'),(10,9,'APP_NAME'),(11,3,'APP_NAME'),(12,6,'APP_NAME'),(13,9,'productId'),(14,7,'taDay'),(15,4,'taYear'),(16,6,'singleName'),(17,4,'taId'),(18,4,'taGender'),(19,8,'gender_2'),(20,4,'taName'),(21,5,'feeinfo_feeInfo'),(22,4,'myId'),(23,8,'birthday_1'),(24,4,'myName'),(25,17,'productName'),(26,7,'myGender'),(27,6,'singleGender'),(28,4,'myTime'),(29,4,'myDay'),(30,7,'taYear'),(31,8,'birthday_2'),(32,7,'taGender'),(33,7,'feeinfo_feeInfo'),(34,7,'myMonth'),(35,4,'myGender'),(36,7,'feeinfo_feeValue'),(37,7,'taMonth'),(38,7,'myYear'),(39,3,'readFlag'),(40,4,'myYear'),(41,4,'taMonth'),(42,7,'feeinfo_feeNumber'),(43,4,'taTime'),(44,7,'myDay'),(45,4,'loveState'),(46,17,'path'),(47,7,'feeinfo_feeCode'),(48,1,'APP_NAME'),(49,2,'APP_NAME'),(50,7,'APP_NAME'),(51,5,'APP_NAME'),(52,8,'gender_1'),(53,8,'APP_CHANNEL'),(54,9,'APP_CHANNEL'),(55,6,'APP_CHANNEL'),(56,4,'myMonth'),(57,7,'feeinfo_issFee'),(58,4,'taDay'),(59,5,'feeinfo_issFee'),(60,4,'modifyFlag'),(61,5,'feeinfo_feeValue'),(62,1,'APP_CHANNEL'),(63,2,'APP_CHANNEL'),(64,10,'APP_NAME'),(65,14,'APP_NAME'),(66,67,'APP_NAME'),(67,73,'APP_NAME'),(68,72,'APP_NAME'),(69,68,'APP_NAME'),(70,74,'APP_NAME'),(71,76,'APP_NAME'),(72,68,'currentDay'),(73,67,'month'),(74,67,'year'),(75,74,'BallBeanChoice'),(76,71,'isqd'),(77,67,'APP_CHANNEL'),(78,73,'APP_CHANNEL'),(79,72,'APP_CHANNEL'),(80,68,'APP_CHANNEL'),(81,74,'APP_CHANNEL'),(82,76,'APP_CHANNEL'),(83,68,'currentMonth'),(84,67,'day'),(85,68,'currentYear'),(86,67,'AUTO_CHOOSE_NUMBERS'),(87,68,'AUTO_CHOOSE_NUMBERS'),(88,74,'AUTO_CHOOSE_NUMBERS'),(89,87,'birthday'),(90,89,'name'),(91,82,'loveStar'),(92,87,'relation'),(93,86,'birthday'),(94,94,'birthday'),(95,83,'gender'),(96,80,'birthday'),(97,86,'gender'),(98,94,'gender'),(99,90,'APP_CHANNEL'),(100,89,'APP_CHANNEL'),(101,81,'APP_CHANNEL'),(102,83,'APP_CHANNEL'),(103,89,'master'),(104,105,'APP_NAME'),(105,96,'APP_NAME'),(106,102,'APP_NAME'),(107,101,'APP_NAME'),(108,97,'APP_NAME'),(109,103,'APP_NAME'),(110,82,'loveContent'),(111,96,'APP_CHANNEL'),(112,102,'APP_CHANNEL'),(113,101,'APP_CHANNEL'),(114,96,'year'),(115,105,'APP_CHANNEL'),(116,97,'currentYear'),(117,97,'APP_CHANNEL'),(118,103,'APP_CHANNEL'),(119,87,'picture'),(120,97,'currentDay'),(121,88,'pid'),(122,79,'gender'),(123,92,'position'),(124,90,'APP_NAME'),(125,89,'APP_NAME'),(126,81,'APP_NAME'),(127,96,'day'),(128,83,'APP_NAME'),(129,103,'BallBeanChoice'),(130,89,'picture'),(131,96,'AUTO_CHOOSE_NUMBERS'),(132,79,'pid'),(133,105,'AUTO_CHOOSE_NUMBERS'),(134,87,'gender'),(135,97,'AUTO_CHOOSE_NUMBERS'),(136,81,'pid'),(137,103,'AUTO_CHOOSE_NUMBERS'),(138,89,'gender'),(139,97,'currentMonth'),(140,96,'month'),(141,100,'isqd'),(142,90,'gender'),(143,80,'gender'),(144,81,'birthday'),(145,83,'birthday'),(146,110,'myDay'),(147,110,'taMonth'),(148,109,'readFlag'),(149,110,'taTime'),(150,110,'myGender'),(151,116,'path'),(152,110,'taId'),(153,82,'careerStar'),(154,110,'myId'),(155,89,'birthday'),(156,110,'myTime'),(157,87,'pid'),(158,79,'birthday'),(159,90,'birthday'),(160,82,'moneyStar'),(161,110,'modifyFlag'),(162,109,'APP_NAME'),(163,112,'APP_NAME'),(164,107,'APP_CHANNEL'),(165,108,'APP_CHANNEL'),(166,109,'APP_CHANNEL'),(167,81,'gender'),(168,110,'taYear'),(169,110,'myName'),(170,87,'tel'),(171,110,'taName'),(172,88,'birthday'),(173,110,'myMonth'),(174,82,'careerContent'),(175,110,'myYear'),(176,110,'taGender'),(177,80,'relation'),(178,87,'type'),(179,87,'name'),(180,85,'tel'),(181,88,'gender'),(182,81,'dataType'),(183,82,'moneyContent'),(184,116,'productName'),(185,87,'notes'),(186,88,'relation'),(187,107,'APP_NAME'),(188,108,'APP_NAME'),(189,110,'taDay'),(190,110,'loveState');
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
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'s',0,NULL,NULL),(18,18,'r',1,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',1,NULL,NULL),(60,60,'s',1,NULL,NULL),(61,61,'s',1,NULL,NULL),(62,62,'s',0,NULL,NULL),(63,63,'s',0,NULL,NULL),(64,64,'r',1,NULL,NULL),(65,65,'r',1,NULL,NULL),(66,73,'a',1,NULL,NULL),(67,74,'a',0,NULL,NULL),(68,75,'a',0,NULL,NULL),(69,76,'a',0,NULL,NULL),(70,77,'a',0,NULL,NULL),(71,78,'a',0,NULL,NULL),(72,79,'a',0,NULL,NULL),(73,80,'a',0,NULL,NULL),(74,81,'a',0,NULL,NULL),(75,82,'a',0,NULL,NULL),(76,83,'a',0,NULL,NULL),(77,84,'a',0,NULL,NULL),(78,85,'a',1,NULL,NULL),(79,86,'a',0,NULL,NULL),(80,87,'a',0,NULL,NULL),(81,88,'a',0,NULL,NULL),(82,89,'a',0,NULL,NULL),(83,90,'a',0,NULL,NULL),(84,91,'a',0,NULL,NULL),(85,92,'a',0,NULL,NULL),(86,93,'a',0,NULL,NULL),(87,94,'a',0,NULL,NULL),(88,95,'a',0,NULL,NULL),(89,96,'a',0,NULL,NULL),(90,97,'a',0,NULL,NULL),(91,98,'a',0,NULL,NULL),(92,99,'a',0,NULL,NULL),(93,100,'a',0,NULL,NULL),(94,101,'a',0,NULL,NULL),(95,106,'a',1,NULL,NULL),(96,107,'a',0,NULL,NULL),(97,108,'a',0,NULL,NULL),(98,109,'a',0,NULL,NULL),(99,110,'a',0,NULL,NULL),(100,111,'a',0,NULL,NULL),(101,112,'a',0,NULL,NULL),(102,113,'a',0,NULL,NULL),(103,114,'a',0,NULL,NULL),(104,115,'a',0,NULL,NULL),(105,116,'a',0,NULL,NULL),(106,117,'a',0,NULL,NULL),(107,118,'a',1,NULL,NULL),(108,119,'a',0,NULL,NULL),(109,120,'a',0,NULL,NULL),(110,121,'a',0,NULL,NULL),(111,122,'a',0,NULL,NULL),(112,123,'a',0,NULL,NULL),(113,124,'a',0,NULL,NULL),(114,125,'a',0,NULL,NULL),(115,126,'a',0,NULL,NULL),(116,127,'s',0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,3),(3,3,11),(4,4,3),(5,5,13),(6,6,18),(7,7,9),(8,7,8),(9,7,6),(10,7,10),(11,7,14),(12,7,3),(13,8,18),(14,9,2),(15,10,7),(16,11,3),(17,12,3),(18,13,3),(19,14,3),(20,15,12),(21,16,3),(22,16,6),(23,16,8),(24,16,9),(25,16,10),(26,16,14),(27,17,3),(28,18,5),(29,19,11),(30,20,11),(31,21,3),(32,22,11),(33,23,76),(34,23,67),(35,23,68),(36,24,68),(37,24,67),(38,25,68),(39,25,67),(40,25,76),(41,26,67),(42,26,68),(43,26,76),(44,27,68),(45,27,67),(46,27,76),(47,28,67),(48,28,68),(49,28,72),(50,29,76),(51,30,68),(52,30,67),(53,30,72),(54,31,68),(55,31,67),(56,31,76),(57,32,77),(58,33,67),(59,33,68),(60,33,74),(61,34,81),(62,35,94),(63,35,81),(64,36,80),(65,37,89),(66,38,91),(67,39,86),(68,40,90),(69,41,105),(70,41,97),(71,41,96),(72,42,94),(73,42,81),(74,43,97),(75,43,96),(76,43,105),(77,44,93),(78,45,105),(79,45,96),(80,45,97),(81,46,101),(82,46,105),(83,46,96),(84,46,97),(85,47,81),(86,48,105),(87,48,101),(88,48,96),(89,48,97),(90,49,81),(91,49,94),(92,50,97),(93,50,96),(94,50,105),(95,51,105),(96,51,96),(97,51,97),(98,52,84),(99,53,97),(100,53,96),(101,53,105),(102,54,97),(103,54,96),(104,54,105),(105,55,84),(106,56,97),(107,56,96),(108,56,105),(109,57,105),(110,57,96),(111,57,97),(112,58,96),(113,58,105),(114,58,97),(115,59,96),(116,59,97),(117,59,101),(118,59,105),(119,60,94),(120,60,81),(121,61,105),(122,61,103),(123,61,97),(124,61,96),(125,62,86),(126,63,105),(127,63,97),(128,63,96),(129,64,105),(130,64,96),(131,64,97),(132,65,106),(133,66,105),(134,67,97),(135,67,96),(136,67,103),(137,67,105),(138,68,96),(139,68,97),(140,68,105),(141,68,101),(142,69,80),(143,70,106),(144,71,88),(145,71,94),(146,73,105),(147,73,96),(148,73,97),(149,72,105),(150,72,96),(151,72,97),(152,74,105),(153,75,88),(154,76,78),(155,77,89),(156,78,78),(157,79,94),(158,79,81),(159,80,107),(160,81,79),(161,81,94),(162,82,109),(163,82,112),(164,83,109),(165,83,108),(166,84,81),(167,85,109),(168,86,88),(169,87,109),(170,87,112),(171,88,109),(172,89,94),(173,89,82),(174,90,109),(175,91,87),(176,91,94),(177,92,109),(178,93,86),(179,93,94),(180,94,109),(181,95,109),(182,96,90),(183,97,81),(184,98,88),(185,99,109),(186,99,111),(187,100,109),(188,101,81),(189,102,86),(190,102,94),(191,103,81),(192,104,113),(193,104,109),(194,105,88);
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
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,66,'<com.go108.lic.StartupActivity$2: void run()>',5,'a',0),(2,3,'<com.go108.lic.MainActivity: void onClick(android.view.View)>',101,'a',NULL),(3,67,'<com.go108.lic.dialog.ReadContacts2Utils: java.util.ArrayList readContactst(android.app.Activity)>',26,'p',NULL),(4,3,'<com.go108.lic.MainActivity: void onClick(android.view.View)>',72,'a',NULL),(5,68,'<com.go108.lic.menu.AboutActivity$1: void onClick(android.content.DialogInterface,int)>',13,'a',NULL),(6,69,'<com.go108.lic.util.SmsReceiver$1: void run()>',11,'p',NULL),(7,70,'<com.go108.lic.util.APNOpera: long getPreferredApnId()>',5,'p',NULL),(8,18,'<com.go108.lic.util.SmsReceiver: long getThreadId()>',17,'p',NULL),(9,2,'<com.go108.lic.InputActivity: void save()>',37,'a',NULL),(10,7,'<com.go108.lic.LovingInputActivity: void pay()>',46,'a',NULL),(11,3,'<com.go108.lic.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(12,3,'<com.go108.lic.MainActivity: void readInfo()>',24,'a',NULL),(13,3,'<com.go108.lic.MainActivity: void onClick(android.view.View)>',20,'a',NULL),(14,3,'<com.go108.lic.MainActivity: void onClick(android.view.View)>',12,'a',NULL),(15,71,'<com.go108.lic.dialog.PopupShow$15: void onClick(android.view.View)>',30,'a',NULL),(16,70,'<com.go108.lic.util.APNOpera: java.lang.String readCurrentAPN()>',10,'p',NULL),(17,3,'<com.go108.lic.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',24,'a',NULL),(18,5,'<com.go108.lic.SingleInputActivity: void pay()>',19,'a',NULL),(19,72,'<com.go108.lic.dialog.PopupShow: void readContactst_1()>',4,'p',NULL),(20,67,'<com.go108.lic.dialog.ReadContacts2Utils: java.util.ArrayList readContactst(android.app.Activity)>',3,'p',NULL),(21,3,'<com.go108.lic.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(22,72,'<com.go108.lic.dialog.PopupShow: void readContactst_1()>',22,'p',NULL),(23,102,'<com.talkweb.imoney.god.b: void onClick(android.view.View)>',11,'a',NULL),(24,103,'<com.talkweb.imoney.almanac.b: void onClick(android.view.View)>',28,'a',NULL),(25,83,'<com.talkweb.imoney.god.GodMainActivity: void b()>',10,'a',NULL),(26,104,'<com.talkweb.imoney.god.c: void onClick(android.view.View)>',11,'a',NULL),(27,105,'<com.talkweb.imoney.god.e: void onClick(android.view.View)>',11,'a',NULL),(28,79,'<com.talkweb.imoney.ball.BallActivity: void onClick(android.view.View)>',10,'a',NULL),(29,83,'<com.talkweb.imoney.god.GodMainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(30,79,'<com.talkweb.imoney.ball.BallActivity: void onClick(android.view.View)>',51,'a',NULL),(31,83,'<com.talkweb.imoney.god.GodMainActivity: void c()>',8,'a',NULL),(32,84,'<com.talkweb.comm.MoreExctingActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',25,'a',NULL),(33,81,'<com.talkweb.imoney.ball.SimulateBuyActivity: void onClick(android.view.View)>',108,'a',NULL),(34,128,'<com.heroit.tzuwei.lite.ao: void onClick(android.content.DialogInterface,int)>',55,'a',NULL),(35,129,'<com.heroit.tzuwei.lite.af: void onClick(android.view.View)>',40,'a',NULL),(36,130,'<com.heroit.tzuwei.lite.bh: void onClick(android.content.DialogInterface,int)>',22,'a',NULL),(37,131,'<com.heroit.tzuwei.lite.aq: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(38,98,'<com.heroit.tzuwei.lite.MasterListActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',13,'a',NULL),(39,132,'<com.heroit.tzuwei.lite.u: void onClick(android.content.DialogInterface,int)>',26,'a',NULL),(40,133,'<com.heroit.tzuwei.lite.be: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(41,116,'<com.talkweb.imoney.god.GodMainActivity: void b()>',10,'a',NULL),(42,134,'<com.heroit.tzuwei.lite.ab: void onClick(android.view.View)>',19,'a',NULL),(43,135,'<com.talkweb.imoney.god.c: void onClick(android.view.View)>',11,'a',NULL),(44,100,'<com.heroit.tzuwei.lite.MoreExctingActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',25,'a',NULL),(45,116,'<com.talkweb.imoney.god.GodMainActivity: void c()>',8,'a',NULL),(46,112,'<com.talkweb.imoney.ball.BallActivity: void onClick(android.view.View)>',10,'a',NULL),(47,128,'<com.heroit.tzuwei.lite.ao: void onClick(android.content.DialogInterface,int)>',77,'a',NULL),(48,112,'<com.talkweb.imoney.ball.BallActivity: void onClick(android.view.View)>',10,'a',NULL),(49,136,'<com.heroit.tzuwei.lite.ac: void onClick(android.view.View)>',10,'a',NULL),(50,116,'<com.talkweb.imoney.god.GodMainActivity: void b()>',10,'a',NULL),(51,137,'<com.talkweb.imoney.god.s: void onClick(android.view.View)>',7,'a',NULL),(52,138,'<com.heroit.tzuwei.lite.at: void onClick(android.content.DialogInterface,int)>',17,'a',NULL),(53,139,'<com.talkweb.imoney.almanac.b: void onClick(android.view.View)>',28,'a',NULL),(54,116,'<com.talkweb.imoney.god.GodMainActivity: void c()>',8,'a',NULL),(55,138,'<com.heroit.tzuwei.lite.at: void onClick(android.content.DialogInterface,int)>',36,'a',NULL),(56,140,'<com.talkweb.imoney.god.b: void onClick(android.view.View)>',11,'a',NULL),(57,140,'<com.talkweb.imoney.god.b: void onClick(android.view.View)>',11,'a',NULL),(58,139,'<com.talkweb.imoney.almanac.b: void onClick(android.view.View)>',28,'a',NULL),(59,112,'<com.talkweb.imoney.ball.BallActivity: void onClick(android.view.View)>',51,'a',NULL),(60,141,'<com.heroit.tzuwei.lite.ae: void onClick(android.view.View)>',19,'a',NULL),(61,114,'<com.talkweb.imoney.ball.SimulateBuyActivity: void onClick(android.view.View)>',108,'a',NULL),(62,142,'<com.heroit.tzuwei.lite.v: void onClick(android.content.DialogInterface,int)>',26,'a',NULL),(63,143,'<com.talkweb.imoney.god.e: void onClick(android.view.View)>',11,'a',NULL),(64,135,'<com.talkweb.imoney.god.c: void onClick(android.view.View)>',11,'a',NULL),(65,117,'<com.talkweb.comm.MoreExctingActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',25,'a',NULL),(66,116,'<com.talkweb.imoney.god.GodMainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(67,114,'<com.talkweb.imoney.ball.SimulateBuyActivity: void onClick(android.view.View)>',108,'a',NULL),(68,112,'<com.talkweb.imoney.ball.BallActivity: void onClick(android.view.View)>',51,'a',NULL),(69,130,'<com.heroit.tzuwei.lite.bh: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(70,117,'<com.talkweb.comm.MoreExctingActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',25,'a',NULL),(71,144,'<com.heroit.tzuwei.lite.ax: void onClick(android.view.View)>',21,'a',NULL),(72,143,'<com.talkweb.imoney.god.e: void onClick(android.view.View)>',11,'a',NULL),(73,137,'<com.talkweb.imoney.god.s: void onClick(android.view.View)>',7,'a',NULL),(74,116,'<com.talkweb.imoney.god.GodMainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(75,145,'<com.heroit.tzuwei.lite.ay: void onClick(android.content.DialogInterface,int)>',105,'a',NULL),(76,85,'<com.heroit.tzuwei.lite.StartupActivity: void onCreate(android.os.Bundle)>',62,'a',NULL),(77,131,'<com.heroit.tzuwei.lite.aq: void onClick(android.content.DialogInterface,int)>',22,'a',NULL),(78,85,'<com.heroit.tzuwei.lite.StartupActivity: void onCreate(android.os.Bundle)>',22,'a',NULL),(79,146,'<com.heroit.tzuwei.lite.aa: void onClick(android.view.View)>',7,'a',NULL),(80,147,'<com.go108.lic.free.StartupActivity$2: void run()>',5,'a',0),(81,86,'<com.heroit.tzuwei.lite.InputActivity: void e(com.heroit.tzuwei.lite.InputActivity)>',125,'a',NULL),(82,148,'<com.go108.lic.free.util.APNOpera: long getPreferredApnId()>',5,'p',NULL),(83,119,'<com.go108.lic.free.InputActivity: void save()>',37,'a',NULL),(84,88,'<com.heroit.tzuwei.lite.MainActivity: void onActivityResult(int,int,android.content.Intent)>',9,'a',NULL),(85,120,'<com.go108.lic.free.MainActivity: void doSMS()>',5,'a',NULL),(86,145,'<com.heroit.tzuwei.lite.ay: void onClick(android.content.DialogInterface,int)>',72,'a',NULL),(87,148,'<com.go108.lic.free.util.APNOpera: java.lang.String readCurrentAPN()>',10,'p',NULL),(88,120,'<com.go108.lic.free.MainActivity: void readInfo()>',24,'a',NULL),(89,149,'<com.heroit.tzuwei.lite.ad: void onClick(android.view.View)>',7,'a',NULL),(90,150,'<com.go108.lic.free.MainActivity$2: void onClick(android.view.View)>',7,'a',NULL),(91,151,'<com.heroit.tzuwei.lite.i: void onClick(android.view.View)>',7,'a',NULL),(92,120,'<com.go108.lic.free.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(93,93,'<com.heroit.tzuwei.lite.RelationActivity: void b(com.heroit.tzuwei.lite.RelationActivity)>',16,'a',NULL),(94,120,'<com.go108.lic.free.MainActivity: void onClick(android.view.View)>',24,'a',NULL),(95,120,'<com.go108.lic.free.MainActivity: void onClick(android.view.View)>',12,'a',NULL),(96,133,'<com.heroit.tzuwei.lite.be: void onClick(android.content.DialogInterface,int)>',22,'a',NULL),(97,128,'<com.heroit.tzuwei.lite.ao: void onClick(android.content.DialogInterface,int)>',26,'a',NULL),(98,145,'<com.heroit.tzuwei.lite.ay: void onClick(android.content.DialogInterface,int)>',123,'a',NULL),(99,122,'<com.go108.lic.free.MoreExctingActivity: void linkSite(com.go108.lic.free.ExctingProductBean)>',14,'a',NULL),(100,120,'<com.go108.lic.free.MainActivity: void onClick(android.view.View)>',20,'a',NULL),(101,128,'<com.heroit.tzuwei.lite.ao: void onClick(android.content.DialogInterface,int)>',48,'a',NULL),(102,93,'<com.heroit.tzuwei.lite.RelationActivity: void a(com.heroit.tzuwei.lite.RelationActivity)>',16,'a',NULL),(103,128,'<com.heroit.tzuwei.lite.ao: void onClick(android.content.DialogInterface,int)>',63,'a',NULL),(104,152,'<com.go108.lic.free.menu.AboutActivity$1: void onClick(android.content.DialogInterface,int)>',13,'a',NULL),(105,145,'<com.heroit.tzuwei.lite.ay: void onClick(android.content.DialogInterface,int)>',94,'a',NULL);
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
INSERT INTO `IActions` VALUES (1,5,12),(2,33,13),(3,35,13),(4,46,13),(5,56,12),(6,71,13),(7,79,13),(8,92,13),(9,98,14),(10,106,13),(11,107,13),(12,112,12);
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
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/go108/lic/SingleInputActivity'),(2,2,'com/go108/lic/SingleInputActivity'),(3,3,'com/go108/lic/LovingInputActivity'),(4,4,'com/go108/lic/LovingInputActivity'),(5,6,'com/go108/lic/MainActivity'),(6,7,'com/go108/lic/LovingResultActivity'),(7,9,'com/go108/lic/menu/ShareActivity'),(8,10,'com/go108/lic/InputActivity'),(9,11,'com/go108/lic/PersonModifyActivity'),(10,12,'com/go108/lic/PersonModifyActivity'),(11,13,'com/go108/lic/PersonModifyActivity'),(12,14,'com/go108/lic/PersonModifyActivity'),(13,15,'com/go108/lic/FavoritesReviewActivity'),(14,17,'com/go108/lic/menu/FavoritesListActivity'),(15,18,'com/go108/lic/SingleResultActivity'),(16,20,'com/go108/lic/menu/FeedbackActivity'),(17,21,'com/talkweb/imoney/almanac/AlmanacActivity'),(18,22,'com/talkweb/imoney/almanac/QueryAlmanacActivity'),(19,23,'com/talkweb/imoney/util/BirthdayInputActivity'),(20,24,'com/talkweb/imoney/guagua/GuaGuaActivity'),(21,25,'com/talkweb/imoney/ball/BallActivity'),(22,26,'com/talkweb/imoney/ball/ResultShowActivity'),(23,27,'com/talkweb/imoney/ball/ResultShowActivity'),(24,28,'com/talkweb/comm/MoreExctingActivity'),(25,30,'com/talkweb/imoney/ball/ResultShowActivity'),(26,31,'com/talkweb/imoney/ball/SimulateBuyActivity'),(27,32,'com/talkweb/imoney/util/BirthdayInputActivity'),(28,34,'com/talkweb/imoney/ball/BallChooseActivity'),(29,36,'com/heroit/tzuwei/lite/TodayActivity'),(30,37,'com/heroit/tzuwei/lite/HobbyActivity'),(31,38,'com/heroit/tzuwei/lite/HobbyActivity'),(32,39,'com/heroit/tzuwei/lite/LearnActivity'),(33,40,'com/heroit/tzuwei/lite/AddFriendActivity'),(34,41,'com/heroit/tzuwei/lite/FriendListActivity'),(35,42,'com/heroit/tzuwei/lite/EmotionActivity'),(36,43,'com/talkweb/imoney/util/BirthdayInputActivity'),(37,44,'com/heroit/tzuwei/lite/RelationActivity'),(38,45,'com/talkweb/imoney/guagua/GuaGuaActivity'),(39,47,'com/talkweb/imoney/util/BirthdayInputActivity'),(40,48,'com/talkweb/imoney/ball/ResultShowActivity'),(41,49,'com/heroit/tzuwei/lite/AboutActivity'),(42,50,'com/talkweb/imoney/ball/ResultShowActivity'),(43,51,'com/talkweb/imoney/ball/ResultShowActivity'),(44,52,'com/talkweb/imoney/ball/ResultShowActivity'),(45,53,'com/heroit/tzuwei/lite/ReminderListActivity'),(46,54,'com/talkweb/imoney/util/BirthdayInputActivity'),(47,55,'com/talkweb/comm/MoreExctingActivity'),(48,58,'com/talkweb/imoney/util/BirthdayInputActivity'),(49,59,'com/heroit/tzuwei/lite/MessageActivity'),(50,57,'com/talkweb/imoney/almanac/QueryAlmanacActivity'),(51,60,'com/talkweb/imoney/almanac/AlmanacActivity'),(52,61,'com/talkweb/imoney/almanac/AlmanacActivity'),(53,62,'com/talkweb/imoney/almanac/QueryAlmanacActivity'),(54,64,'com/heroit/tzuwei/lite/ImportantActivity'),(55,65,'com/talkweb/imoney/ball/ResultShowActivity'),(56,66,'com/talkweb/imoney/ball/BallChooseActivity'),(57,67,'com/talkweb/imoney/ball/SimulateBuyActivity'),(58,69,'com/talkweb/imoney/ball/BallActivity'),(59,70,'com/talkweb/imoney/guagua/GuaGuaActivity'),(60,68,'com/heroit/tzuwei/lite/AddFriendActivity'),(61,73,'com/talkweb/comm/MoreExctingActivity'),(62,72,'com/heroit/tzuwei/lite/FriendListActivity'),(63,74,'com/talkweb/imoney/ball/BallChooseActivity'),(64,76,'com/talkweb/imoney/ball/ResultShowActivity'),(65,77,'com/heroit/tzuwei/lite/EmotionActivity'),(66,78,'com/talkweb/imoney/ball/SimulateBuyActivity'),(67,81,'com/talkweb/comm/MoreExctingActivity'),(68,82,'com/talkweb/imoney/ball/BallActivity'),(69,80,'com/heroit/tzuwei/lite/AddFriendActivity'),(70,83,'com/talkweb/comm/MoreExctingActivity'),(71,84,'com/heroit/tzuwei/lite/AddFriendActivity'),(72,85,'com/heroit/tzuwei/lite/MainActivity'),(73,86,'com/heroit/tzuwei/lite/MasterActivity'),(74,87,'com/heroit/tzuwei/lite/InputActivity'),(75,88,'com/heroit/tzuwei/lite/MasterListActivity'),(76,89,'com/heroit/tzuwei/lite/MainActivity'),(77,90,'com/go108/lic/free/MainActivity'),(78,91,'com/heroit/tzuwei/lite/StartupActivity'),(79,93,'com/heroit/tzuwei/lite/EmotionActivity'),(80,94,'com/go108/lic/free/InputActivity'),(81,95,'com/heroit/tzuwei/lite/MoreExctingActivity'),(82,96,'com/go108/lic/free/MoreExctingActivity'),(83,99,'com/go108/lic/free/menu/FeedbackActivity'),(84,101,'com/go108/lic/free/MoreExctingActivity'),(85,100,'com/heroit/tzuwei/lite/FriendListActivity'),(86,103,'com/heroit/tzuwei/lite/MasterActivity'),(87,104,'com/heroit/tzuwei/lite/InputActivity'),(88,102,'com/go108/lic/free/PersonModifyActivity'),(89,105,'com/heroit/tzuwei/lite/MasterActivity'),(90,109,'com/heroit/tzuwei/lite/MasterActivity'),(91,110,'com/heroit/tzuwei/lite/FriendListActivity'),(92,108,'com/go108/lic/free/PersonModifyActivity'),(93,111,'com/heroit/tzuwei/lite/MoreExctingActivity'),(94,113,'com/heroit/tzuwei/lite/HobbyActivity');
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
INSERT INTO `IData` VALUES (1,5,2),(2,33,10),(3,35,11),(4,46,12),(5,56,13),(6,71,14),(7,79,15),(8,106,18),(9,107,19),(10,112,20);
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
) ENGINE=InnoDB AUTO_INCREMENT=369 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'loveState'),(2,1,'taMonth'),(3,1,'myTime'),(4,1,'taGender'),(5,1,'feeinfo_feeValue'),(6,1,'feeinfo_feeCode'),(7,1,'myGender'),(8,1,'myGenderStr'),(9,1,'myYear'),(10,1,'myMonth'),(11,1,'feeinfo_issFee'),(12,1,'taTime'),(13,1,'myId'),(14,1,'taDay'),(15,1,'taGenderStr'),(16,1,'loveStateStr'),(17,1,'myDay'),(18,1,'taName'),(19,1,'feeinfo_feeNumber'),(20,1,'myName'),(21,1,'feeinfo_feeInfo'),(22,1,'taYear'),(23,1,'taId'),(24,2,'loveState'),(25,2,'taMonth'),(26,2,'myTime'),(27,2,'taGender'),(28,2,'feeinfo_feeValue'),(29,2,'feeinfo_feeCode'),(30,2,'myGender'),(31,2,'myYear'),(32,2,'myGenderStr'),(33,2,'myMonth'),(34,2,'feeinfo_issFee'),(35,2,'taTime'),(36,2,'myId'),(37,2,'taGenderStr'),(38,2,'taDay'),(39,2,'loveStateStr'),(40,2,'myDay'),(41,2,'taName'),(42,2,'feeinfo_feeNumber'),(43,2,'modifyFlag'),(44,2,'myName'),(45,2,'feeinfo_feeInfo'),(46,2,'taId'),(47,2,'taYear'),(48,3,'loveState'),(49,3,'taMonth'),(50,3,'myTime'),(51,3,'taGender'),(52,3,'feeinfo_feeValue'),(53,3,'feeinfo_feeCode'),(54,3,'myGender'),(55,3,'myYear'),(56,3,'myGenderStr'),(57,3,'myMonth'),(58,3,'feeinfo_issFee'),(59,3,'taTime'),(60,3,'myId'),(61,3,'taGenderStr'),(62,3,'taDay'),(63,3,'loveStateStr'),(64,3,'myDay'),(65,3,'taName'),(66,3,'feeinfo_feeNumber'),(67,3,'modifyFlag'),(68,3,'myName'),(69,3,'feeinfo_feeInfo'),(70,3,'taId'),(71,3,'taYear'),(72,4,'loveState'),(73,4,'taMonth'),(74,4,'myTime'),(75,4,'taGender'),(76,4,'feeinfo_feeValue'),(77,4,'feeinfo_feeCode'),(78,4,'myGender'),(79,4,'myGenderStr'),(80,4,'myYear'),(81,4,'myMonth'),(82,4,'feeinfo_issFee'),(83,4,'taTime'),(84,4,'myId'),(85,4,'taDay'),(86,4,'taGenderStr'),(87,4,'loveStateStr'),(88,4,'myDay'),(89,4,'taName'),(90,4,'feeinfo_feeNumber'),(91,4,'myName'),(92,4,'feeinfo_feeInfo'),(93,4,'taYear'),(94,4,'taId'),(95,6,'readFlag'),(96,7,'monthChoice'),(97,7,'gender_2'),(98,7,'gender_1'),(99,7,'birthday_2'),(100,7,'birthday_1'),(101,11,'loveState'),(102,11,'taMonth'),(103,11,'myTime'),(104,11,'taGender'),(105,11,'myGender'),(106,11,'myGenderStr'),(107,11,'myYear'),(108,11,'myMonth'),(109,11,'taTime'),(110,11,'myId'),(111,11,'taGenderStr'),(112,11,'taDay'),(113,11,'loveStateStr'),(114,11,'myDay'),(115,11,'taName'),(116,11,'modifyFlag'),(117,11,'myName'),(118,11,'taYear'),(119,11,'taId'),(120,12,'loveState'),(121,12,'taMonth'),(122,12,'myTime'),(123,12,'taGender'),(124,12,'feeinfo_feeValue'),(125,12,'feeinfo_feeCode'),(126,12,'myGender'),(127,12,'myYear'),(128,12,'myGenderStr'),(129,12,'myMonth'),(130,12,'feeinfo_issFee'),(131,12,'taTime'),(132,12,'myId'),(133,12,'taGenderStr'),(134,12,'taDay'),(135,12,'loveStateStr'),(136,12,'myDay'),(137,12,'taName'),(138,12,'feeinfo_feeNumber'),(139,12,'modifyFlag'),(140,12,'myName'),(141,12,'feeinfo_feeInfo'),(142,12,'taId'),(143,12,'taYear'),(144,13,'loveState'),(145,13,'taMonth'),(146,13,'myTime'),(147,13,'taGender'),(148,13,'myGender'),(149,13,'myGenderStr'),(150,13,'myYear'),(151,13,'myMonth'),(152,13,'taTime'),(153,13,'myId'),(154,13,'taGenderStr'),(155,13,'taDay'),(156,13,'loveStateStr'),(157,13,'myDay'),(158,13,'taName'),(159,13,'modifyFlag'),(160,13,'myName'),(161,13,'taYear'),(162,13,'taId'),(163,14,'loveState'),(164,14,'taMonth'),(165,14,'myTime'),(166,14,'taGender'),(167,14,'feeinfo_feeValue'),(168,14,'feeinfo_feeCode'),(169,14,'myGender'),(170,14,'myYear'),(171,14,'myGenderStr'),(172,14,'myMonth'),(173,14,'feeinfo_issFee'),(174,14,'taTime'),(175,14,'myId'),(176,14,'taGenderStr'),(177,14,'taDay'),(178,14,'loveStateStr'),(179,14,'myDay'),(180,14,'taName'),(181,14,'feeinfo_feeNumber'),(182,14,'modifyFlag'),(183,14,'myName'),(184,14,'feeinfo_feeInfo'),(185,14,'taId'),(186,14,'taYear'),(187,15,'productId'),(188,18,'singleGender'),(189,18,'singleName'),(190,22,'currentDay'),(191,22,'currentYear'),(192,22,'currentMonth'),(193,23,'isqd'),(194,27,'AUTO_CHOOSE_NUMBERS'),(195,29,'AUTO_CHOOSE_NUMBERS'),(196,30,'AUTO_CHOOSE_NUMBERS'),(197,31,'AUTO_CHOOSE_NUMBERS'),(198,32,'isqd'),(199,36,'careerStar'),(200,36,'moneyStar'),(201,36,'moneyContent'),(202,36,'careerContent'),(203,36,'loveContent'),(204,36,'loveStar'),(205,37,'(.*)'),(206,38,'(.*)'),(207,39,'position'),(208,40,'birthday'),(209,40,'relation'),(210,40,'gender'),(211,40,'pid'),(212,41,'birthday'),(213,41,'relation'),(214,41,'gender'),(215,41,'pid'),(216,42,'(.*)'),(217,43,'isqd'),(218,44,'birthday'),(219,44,'gender'),(220,47,'isqd'),(221,51,'AUTO_CHOOSE_NUMBERS'),(222,52,'AUTO_CHOOSE_NUMBERS'),(223,54,'isqd'),(224,57,'currentDay'),(225,57,'currentYear'),(226,58,'isqd'),(227,59,'tel'),(228,57,'currentMonth'),(229,62,'currentDay'),(230,62,'currentYear'),(231,62,'currentMonth'),(232,63,'AUTO_CHOOSE_NUMBERS'),(233,64,'birthday'),(234,64,'gender'),(235,65,'AUTO_CHOOSE_NUMBERS'),(236,67,'AUTO_CHOOSE_NUMBERS'),(237,68,'birthday'),(238,68,'relation'),(239,68,'gender'),(240,68,'pid'),(241,72,'birthday'),(242,72,'relation'),(243,72,'gender'),(244,72,'pid'),(245,75,'AUTO_CHOOSE_NUMBERS'),(246,76,'AUTO_CHOOSE_NUMBERS'),(247,77,'(.*)'),(248,78,'AUTO_CHOOSE_NUMBERS'),(249,80,'birthday'),(250,80,'relation'),(251,80,'gender'),(252,80,'pid'),(253,84,'birthday'),(254,84,'sureCount'),(255,84,'mygender'),(256,84,'tel'),(257,84,'relation'),(258,84,'pid'),(259,84,'type'),(260,84,'master'),(261,84,'picture'),(262,84,'mybirth'),(263,84,'name'),(264,84,'gender'),(265,84,'notes'),(266,85,'birthday'),(267,85,'dataType'),(268,85,'sureCount'),(269,85,'gender'),(270,85,'pid'),(271,86,'(.*)'),(272,87,'pid'),(273,89,'birthday'),(274,89,'gender'),(275,90,'readFlag'),(276,92,'sms_body'),(277,93,'birthday'),(278,93,'sureCount'),(279,93,'mygender'),(280,93,'tel'),(281,93,'relation'),(282,93,'pid'),(283,93,'type'),(284,93,'master'),(285,93,'picture'),(286,93,'mybirth'),(287,93,'name'),(288,93,'gender'),(289,93,'notes'),(290,100,'birthday'),(291,100,'relation'),(292,100,'gender'),(293,100,'pid'),(294,102,'loveState'),(295,102,'taMonth'),(296,102,'myTime'),(297,102,'taGender'),(298,103,'(.*)'),(299,102,'myGender'),(300,102,'myGenderStr'),(301,102,'myYear'),(302,102,'myMonth'),(303,102,'taTime'),(304,102,'myId'),(305,102,'taGenderStr'),(306,104,'birthday'),(307,102,'taDay'),(308,104,'gender'),(309,102,'loveStateStr'),(310,104,'pid'),(311,102,'myDay'),(312,102,'taName'),(313,102,'modifyFlag'),(314,102,'myName'),(315,102,'taYear'),(316,102,'taId'),(317,105,'birthday'),(318,105,'sureCount'),(319,105,'mygender'),(320,105,'tel'),(321,105,'relation'),(322,105,'pid'),(323,105,'type'),(324,105,'master'),(325,105,'picture'),(326,105,'mybirth'),(327,105,'name'),(328,105,'gender'),(329,105,'notes'),(330,108,'loveState'),(331,109,'birthday'),(332,108,'taMonth'),(333,109,'relation'),(334,108,'myTime'),(335,109,'gender'),(336,108,'taGender'),(337,108,'myGender'),(338,108,'myGenderStr'),(339,108,'myYear'),(340,108,'myMonth'),(341,108,'taTime'),(342,108,'myId'),(343,108,'taGenderStr'),(344,108,'taDay'),(345,108,'loveStateStr'),(346,108,'myDay'),(347,110,'birthday'),(348,108,'taName'),(349,110,'relation'),(350,108,'modifyFlag'),(351,110,'gender'),(352,108,'myName'),(353,110,'pid'),(354,108,'taYear'),(355,108,'taId'),(356,113,'birthday'),(357,113,'sureCount'),(358,113,'mygender'),(359,113,'tel'),(360,113,'relation'),(361,113,'pid'),(362,113,'type'),(363,113,'master'),(364,113,'picture'),(365,113,'mybirth'),(366,113,'name'),(367,113,'gender'),(368,113,'notes');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,3),(5,5,4),(6,6,5),(7,7,9),(8,7,8),(9,7,7),(10,7,6),(11,7,11),(12,7,10),(13,9,1),(14,10,1),(15,11,1),(16,12,1),(17,13,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,2),(3,3,1),(4,5,3),(5,6,3),(6,9,1),(7,10,1),(8,11,1),(9,12,1),(10,13,1);
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
INSERT INTO `IMimeTypes` VALUES (1,92,'vnd.android-dir','mms-sms'),(2,98,'image','*');
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
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.go108.lic'),(2,2,'com.go108.lic'),(3,3,'com.go108.lic'),(4,4,'com.go108.lic'),(5,6,'com.go108.lic'),(6,7,'com.go108.lic'),(7,9,'com.go108.lic'),(8,10,'com.go108.lic'),(9,11,'com.go108.lic'),(10,12,'com.go108.lic'),(11,13,'com.go108.lic'),(12,14,'com.go108.lic'),(13,15,'com.go108.lic'),(14,17,'com.go108.lic'),(15,18,'com.go108.lic'),(16,20,'com.go108.lic'),(17,21,'com.talkweb.imoney'),(18,22,'com.talkweb.imoney'),(19,23,'com.talkweb.imoney'),(20,24,'com.talkweb.imoney'),(21,25,'com.talkweb.imoney'),(22,26,'com.talkweb.imoney'),(23,27,'com.talkweb.imoney'),(24,28,'com.talkweb.imoney'),(25,30,'com.talkweb.imoney'),(26,31,'com.talkweb.imoney'),(27,32,'com.talkweb.imoney'),(28,34,'com.talkweb.imoney'),(29,36,'com.heroit.tzuwei.lite'),(30,37,'com.heroit.tzuwei.lite'),(31,38,'com.heroit.tzuwei.lite'),(32,39,'com.heroit.tzuwei.lite'),(33,40,'com.heroit.tzuwei.lite'),(34,41,'com.heroit.tzuwei.lite'),(35,42,'com.heroit.tzuwei.lite'),(36,43,'com.talkweb.imoney'),(37,44,'com.heroit.tzuwei.lite'),(38,45,'com.talkweb.imoney'),(39,47,'com.talkweb.imoney'),(40,48,'com.talkweb.imoney'),(41,49,'com.heroit.tzuwei.lite'),(42,50,'com.talkweb.imoney'),(43,51,'com.talkweb.imoney'),(44,52,'com.talkweb.imoney'),(45,53,'com.heroit.tzuwei.lite'),(46,54,'com.talkweb.imoney'),(47,55,'com.talkweb.imoney'),(48,58,'com.talkweb.imoney'),(49,59,'com.heroit.tzuwei.lite'),(50,57,'com.talkweb.imoney'),(51,60,'com.talkweb.imoney'),(52,61,'com.talkweb.imoney'),(53,62,'com.talkweb.imoney'),(54,64,'com.heroit.tzuwei.lite'),(55,65,'com.talkweb.imoney'),(56,66,'com.talkweb.imoney'),(57,67,'com.talkweb.imoney'),(58,69,'com.talkweb.imoney'),(59,70,'com.talkweb.imoney'),(60,68,'com.heroit.tzuwei.lite'),(61,73,'com.talkweb.imoney'),(62,72,'com.heroit.tzuwei.lite'),(63,74,'com.talkweb.imoney'),(64,76,'com.talkweb.imoney'),(65,77,'com.heroit.tzuwei.lite'),(66,78,'com.talkweb.imoney'),(67,81,'com.talkweb.imoney'),(68,82,'com.talkweb.imoney'),(69,80,'com.heroit.tzuwei.lite'),(70,83,'com.talkweb.imoney'),(71,84,'com.heroit.tzuwei.lite'),(72,85,'com.heroit.tzuwei.lite'),(73,86,'com.heroit.tzuwei.lite'),(74,87,'com.heroit.tzuwei.lite'),(75,88,'com.heroit.tzuwei.lite'),(76,89,'com.heroit.tzuwei.lite'),(77,90,'com.go108.lic.free'),(78,91,'com.heroit.tzuwei.lite'),(79,93,'com.heroit.tzuwei.lite'),(80,94,'com.go108.lic.free'),(81,95,'com.heroit.tzuwei.lite'),(82,96,'com.go108.lic.free'),(83,99,'com.go108.lic.free'),(84,101,'com.go108.lic.free'),(85,100,'com.heroit.tzuwei.lite'),(86,103,'com.heroit.tzuwei.lite'),(87,104,'com.heroit.tzuwei.lite'),(88,102,'com.go108.lic.free'),(89,105,'com.heroit.tzuwei.lite'),(90,109,'com.heroit.tzuwei.lite'),(91,110,'com.heroit.tzuwei.lite'),(92,108,'com.go108.lic.free'),(93,111,'com.heroit.tzuwei.lite'),(94,113,'com.heroit.tzuwei.lite');
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,18,0),(3,19,0),(4,59,0),(5,60,0),(6,61,0),(7,64,0),(8,65,0),(9,66,0),(10,78,0),(11,95,0),(12,95,0),(13,107,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,2,0,0),(2,2,0,0),(3,4,0,0),(4,4,0,0),(5,5,1,0),(6,9,0,0),(7,10,0,0),(8,11,1,0),(9,11,0,0),(10,12,0,0),(11,13,0,0),(12,13,0,0),(13,14,0,0),(14,14,0,0),(15,15,0,0),(16,17,1,0),(17,17,0,0),(18,18,0,0),(19,21,1,0),(20,21,0,0),(21,23,0,0),(22,24,0,0),(23,25,0,0),(24,26,0,0),(25,27,0,0),(26,28,0,0),(27,28,0,0),(28,29,0,0),(29,30,1,0),(30,30,0,0),(31,30,0,0),(32,31,0,0),(33,32,1,0),(34,33,0,0),(35,34,1,0),(36,35,0,0),(37,36,0,0),(38,37,0,0),(39,38,0,0),(40,39,0,0),(41,39,0,0),(42,40,0,0),(43,41,0,0),(44,42,0,0),(45,43,0,0),(46,44,1,0),(47,45,0,0),(48,46,0,0),(49,47,0,0),(50,48,0,0),(51,46,0,0),(52,48,0,0),(53,49,0,0),(54,50,0,0),(55,51,0,0),(56,52,1,0),(57,53,0,0),(58,54,0,0),(59,55,0,0),(60,56,0,0),(61,57,0,0),(62,58,0,0),(63,59,1,0),(64,60,0,0),(65,59,0,0),(66,61,0,0),(67,59,0,0),(68,62,0,0),(69,63,0,0),(70,64,0,0),(71,65,1,0),(72,62,0,0),(73,66,0,0),(74,67,0,0),(75,68,1,0),(76,68,0,0),(77,69,0,0),(78,68,0,0),(79,70,1,0),(80,71,0,0),(81,73,0,0),(82,72,0,0),(83,74,0,0),(84,75,0,0),(85,76,0,0),(86,77,0,0),(87,78,0,0),(88,79,0,0),(89,81,0,0),(90,83,0,0),(91,84,0,0),(92,85,1,0),(93,86,0,0),(94,88,0,0),(95,89,0,0),(96,90,0,0),(97,92,1,0),(98,91,1,0),(99,92,0,0),(100,93,0,0),(101,94,0,0),(102,95,0,0),(103,96,0,0),(104,97,0,0),(105,98,0,0),(106,99,1,0),(107,99,1,0),(108,100,0,0),(109,101,0,0),(110,102,0,0),(111,103,0,0),(112,104,1,0),(113,105,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(2,NULL,NULL,'tel:073184285152',NULL,NULL,NULL),(3,NULL,NULL,'content://sms/conversations/(.*)',NULL,NULL,NULL),(4,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(5,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(6,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(7,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(8,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(9,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'http://wap.go108.cn/astro/cin.jsp?c=zwmd',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(17,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(18,NULL,NULL,'http://www.go108.com.cn/mobile/Client/apk/lic.apk',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'tel:073184285152',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,3,1),(2,6,3),(3,7,4),(4,8,5),(5,16,6),(6,19,7),(7,20,8),(8,22,9),(9,82,16),(10,87,17);
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
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,2,2),(15,2,6),(16,2,9),(17,2,11),(18,2,12),(19,2,13),(20,2,14),(21,3,2),(22,3,9),(23,3,11),(24,3,12),(25,3,13),(26,3,14),(27,4,2),(28,4,9),(29,4,11),(30,4,13),(31,4,14),(32,5,2),(33,5,9),(34,5,11),(35,5,12),(36,5,13),(37,5,14),(38,6,2),(39,6,7),(40,6,8),(41,6,9),(42,6,11),(43,6,12),(44,6,13),(45,6,14);
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
