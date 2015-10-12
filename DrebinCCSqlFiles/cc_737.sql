-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_737
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (21,'ChangeContent'),(7,'DELIVER'),(6,'SEND'),(3,'SEND_INFOR'),(4,'android.appwidget.action.APPWIDGET_UPDATE'),(24,'android.intent.action.ALARM_CHANGED'),(16,'android.intent.action.BOOT_COMPLETED'),(11,'android.intent.action.CALL'),(15,'android.intent.action.DATE_CHANGED'),(1,'android.intent.action.MAIN'),(5,'android.intent.action.PHONE_STATE'),(10,'android.intent.action.SENDTO'),(12,'android.intent.action.TIME_TICK'),(9,'android.intent.action.VIEW'),(2,'android.provider.Telephony.SMS_RECEIVED'),(18,'cn.com.picvision.dolphinradio.nextchannel'),(19,'cn.com.picvision.dolphinradio.perchannel'),(17,'cn.com.picvision.dolphinradio.play_pause'),(20,'cn.com.picvision.dolphinradio.startmain'),(13,'com.android.alarmclock.ALARM_ALERT'),(14,'com.android.alarmclock.ALARM_ALERT_STOP'),(22,'com.android.alarmclock.ALARM_ALERT_STOP_MUSIC'),(23,'com.android.launcher.action.INSTALL_SHORTCUT'),(8,'updateSpPics');
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
INSERT INTO `Applications` VALUES (1,'com.go108.lic',2),(2,'com.picvision.seaweedweather',1),(3,'com.picthink.SeaShell.lijiang',1),(4,'com.picvision.SeaShell.activity',2),(5,'com.picvision.SeaShell.XiAn',1),(6,'com.talkweb.ycya',5),(7,'cn.com.picvision.dolphinradio',6);
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
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.BROWSABLE'),(2,'android.intent.category.DEFAULT'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.go108.lic.StartupActivity'),(2,1,'com.go108.lic.InputActivity'),(3,1,'com.go108.lic.MainActivity'),(4,1,'com.go108.lic.PersonModifyActivity'),(5,1,'com.go108.lic.SingleInputActivity'),(6,1,'com.go108.lic.SingleResultActivity'),(7,1,'com.go108.lic.LovingInputActivity'),(8,1,'com.go108.lic.LovingResultActivity'),(9,1,'com.go108.lic.FavoritesReviewActivity'),(10,1,'com.go108.lic.menu.FeedbackActivity'),(11,1,'com.go108.lic.menu.ShareActivity'),(12,2,'com.picvision.seaweedweather.main'),(13,1,'com.go108.lic.menu.FavoritesListActivity'),(14,1,'com.go108.lic.menu.AboutActivity'),(15,1,'com.go108.lic.menu.HelpActivity'),(16,2,'com.picvision.seaweedweather.ShowImageActivity'),(17,1,'com.go108.lic.menu.SiteDescActivity'),(18,2,'com.picvision.seaweedweather.SpActivity'),(19,1,'com.go108.lic.QuitActivity'),(20,2,'com.picvision.seaweedweather.addWidgetCity'),(21,1,'com.go108.lic.util.DownloadFileService'),(22,2,'com.picvision.seaweedweather.setCityInWidget'),(23,1,'com.go108.lic.util.SmsReceiver'),(24,2,'com.picvision.seaweedweather.widgetThemeSelector'),(25,3,'com.picthink.SeaShell.activity.StartAdActivity'),(26,2,'com.picvision.seaweedweather.service.ForecastTimeService'),(27,4,'com.picvision.SeaShell.activity.StartAdActivity'),(28,2,'com.picvision.seaweedweather.utils.SMSReceiver'),(29,3,'com.picthink.SeaShell.activity.MainActivity'),(30,4,'com.picvision.SeaShell.activity.MainActivity'),(31,3,'com.picthink.SeaShell.activity.FavoritesActivity'),(32,5,'com.picvision.SeaShell.activity.StartAdActivity'),(33,2,'com.picvision.seaweedweather.WeatherWidget'),(34,4,'com.picvision.SeaShell.activity.FavoritesActivity'),(35,3,'com.picthink.SeaShell.activity.ProvinceListActivity'),(36,4,'com.picvision.SeaShell.activity.ProvinceListActivity'),(37,5,'com.picvision.SeaShell.activity.MainActivity'),(38,3,'com.picthink.SeaShell.activity.PlaceListActivity'),(39,5,'com.picvision.SeaShell.activity.FavoritesActivity'),(40,4,'com.picvision.SeaShell.activity.PlaceListActivity'),(41,3,'com.picthink.SeaShell.activity.ItemListActivity'),(42,4,'com.picvision.SeaShell.activity.ItemListActivity'),(43,5,'com.picvision.SeaShell.activity.ProvinceListActivity'),(44,3,'com.picthink.SeaShell.activity.ItemActivity'),(45,4,'com.picvision.SeaShell.activity.ItemActivity'),(46,5,'com.picvision.SeaShell.activity.PlaceListActivity'),(47,3,'com.picthink.SeaShell.activity.VideoActivity'),(48,4,'com.picvision.SeaShell.activity.VideoActivity'),(49,5,'com.picvision.SeaShell.activity.ItemListActivity'),(50,3,'com.picthink.SeaShell.activity.ActivityMap'),(51,5,'com.picvision.SeaShell.activity.ItemActivity'),(52,4,'com.picvision.SeaShell.activity.ActivityMap'),(53,3,'com.picthink.SeaShell.activity.ActivityMap1'),(54,4,'com.picvision.SeaShell.activity.ActivityMap1'),(55,5,'com.picvision.SeaShell.activity.VideoActivity'),(56,3,'com.picthink.SeaShell.activity.SceneListActivity'),(57,5,'com.picvision.SeaShell.activity.ActivityMap'),(58,4,'com.picvision.SeaShell.activity.SceneListActivity'),(59,3,'com.picthink.SeaShell.activity.SentenceActivity'),(60,4,'com.picvision.SeaShell.activity.SentenceActivity'),(61,5,'com.picvision.SeaShell.activity.ActivityMap1'),(62,3,'com.picthink.SeaShell.activity.DetailsActivity'),(63,4,'com.picvision.SeaShell.activity.DetailsActivity'),(64,5,'com.picvision.SeaShell.activity.SceneListActivity'),(65,3,'com.picthink.SeaShell.activity.ShowImageActivity'),(66,4,'com.picvision.SeaShell.activity.ShowImageActivity'),(67,5,'com.picvision.SeaShell.activity.SentenceActivity'),(68,3,'com.picthink.SeaShell.activity.our.AboutActivity'),(69,4,'com.picvision.SeaShell.activity.our.AboutActivity'),(70,5,'com.picvision.SeaShell.activity.DetailsActivity'),(71,3,'com.picthink.SeaShell.activity.our.HelpActivity'),(72,4,'com.picvision.SeaShell.activity.our.HelpActivity'),(73,5,'com.picvision.SeaShell.activity.ShowImageActivity'),(74,3,'com.picthink.SeaShell.activity.ServiceReceiver'),(75,4,'com.picvision.SeaShell.activity.ServiceReceiver'),(76,5,'com.picvision.SeaShell.activity.our.AboutActivity'),(77,5,'com.picvision.SeaShell.activity.our.HelpActivity'),(78,5,'com.picvision.SeaShell.activity.ServiceReceiver'),(79,3,'com.picthink.SeaShell.sqlite.LocationProvider'),(80,4,'com.picvision.SeaShell.sqlite.LocationProvider'),(81,5,'com.picvision.SeaShell.sqlite.LocationProvider'),(82,2,'com.picvision.seaweedweather.SpActivity$MyReceiver'),(83,2,'com.picvision.seaweedweather.main$10'),(84,1,'com.go108.lic.dialog.PopupShow$15'),(85,1,'com.go108.lic.dialog.PopupShow'),(86,1,'com.go108.lic.dialog.ReadContacts2Utils'),(87,1,'com.go108.lic.util.APNOpera'),(88,1,'com.go108.lic.util.SmsReceiver$1'),(89,1,'com.go108.lic.menu.AboutActivity$1'),(90,1,'com.go108.lic.StartupActivity$2'),(91,6,'com.talkweb.ycya.LoginActivity'),(92,6,'com.talkweb.main.MainActivity'),(93,6,'com.talkweb.mzzd.MzzdActivity'),(94,6,'com.talkweb.mzzd.MzzdFreeResultActivity'),(95,6,'com.talkweb.mzzd.MzzdChargeResultActivity'),(96,6,'com.talkweb.xzpd.XzpdActivity'),(97,6,'com.talkweb.xzpd.XzpdXzxzActivity'),(98,6,'com.talkweb.xzpd.XzpdFreeResultActivity'),(99,6,'com.talkweb.xzpd.XzpdChargeResultActivity'),(100,6,'com.talkweb.xzpd.XzpdForbiddenParadiseActivity'),(101,6,'com.talkweb.xzpd.XzpdPersueSecretsActivity'),(102,6,'com.talkweb.yhlq.YhlqActivity'),(103,6,'com.talkweb.qrmj.QrmjActivity'),(104,6,'com.talkweb.qrmj.QrmjResultActivity'),(105,6,'com.talkweb.mzzd.ContactActivity'),(106,6,'com.talkweb.menu.MenuActivity'),(107,6,'com.talkweb.menu.FavoriteListActivity'),(108,6,'com.talkweb.menu.FavoriteRequestActivity'),(109,6,'com.talkweb.menu.HelpActivity'),(110,6,'com.talkweb.menu.UpdateActivity'),(111,6,'com.talkweb.menu.CompanyIntroActivity'),(112,6,'com.talkweb.menu.WebIntroActivity'),(113,6,'com.talkweb.menu.WapIntroActivity'),(114,6,'com.talkweb.mzzd.MzzdQueryResultActivity'),(115,6,'com.talkweb.yhlq.YaoQianActivity'),(116,6,'com.talkweb.yhlq.CqProcessActivity'),(117,6,'com.talkweb.yhlq.ZhiJiaoActivity'),(118,6,'com.talkweb.yhlq.QianResultActivity'),(119,6,'com.talkweb.xzpd.XzpdRequestChargeResultActivity'),(120,6,'com.talkweb.xzpd.XzpdRequestPersueSecretsActivity'),(121,6,'com.talkweb.xzpd.XzpdRequestForbiddenParadiseActivity'),(122,6,'com.heroit.tzuwei.lite.MoreExctingActivity'),(123,7,'cn.com.picvision.dolphinradio.MovieActivity'),(124,7,'cn.com.picvision.dolphinradio.StartAdActivity'),(125,7,'cn.com.picvision.dolphinradio.Boot'),(126,7,'cn.com.picvision.dolphinradio.Main'),(127,7,'cn.com.picvision.dolphinradio.Home'),(128,7,'cn.com.picvision.dolphinradio.Music'),(129,7,'cn.com.picvision.dolphinradio.Player'),(130,7,'cn.com.picvision.dolphinradio.Player1'),(131,7,'cn.com.picvision.dolphinradio.SetMain'),(132,7,'cn.com.picvision.dolphinradio.Clocking'),(133,7,'cn.com.picvision.dolphinradio.ClockSet1'),(134,7,'cn.com.picvision.dolphinradio.TimeLine'),(135,7,'cn.com.picvision.dolphinradio.SendMsg'),(136,7,'cn.com.picvision.dolphinradio.WebViewActivity'),(137,7,'cn.com.picvision.dolphinradio.Login'),(138,7,'cn.com.picvision.dolphinradio.About'),(139,7,'cn.com.picvision.dolphinradio.Help'),(140,7,'cn.com.picvision.dolphinradio.Skin'),(141,7,'cn.com.picvision.dolphinradio.service.WfiService'),(142,7,'cn.com.picvision.dolphinradio.Broadcast.BootReceiver'),(143,7,'cn.com.picvision.dolphinradio.Broadcast.SMSReceiver'),(144,7,'cn.com.picvision.dolphinradio.widget.RadioWidget'),(145,7,'cn.com.picvision.dolphinradio.Home$2'),(146,7,'cn.com.picvision.dolphinradio.Main$ChangeContent'),(147,7,'cn.com.picvision.dolphinradio.Player1$Player_Status_Change'),(148,7,'cn.com.picvision.dolphinradio.Player$8'),(149,7,'cn.com.picvision.dolphinradio.Login$2'),(150,7,'cn.com.picvision.dolphinradio.Player$Player_Status_Change'),(151,7,'cn.com.picvision.dolphinradio.Player$MyReceiver'),(152,7,'cn.com.picvision.dolphinradio.Player1$MyReceiver'),(153,7,'cn.com.picvision.dolphinradio.ClockSet1$7'),(154,7,'cn.com.picvision.dolphinradio.util.SmallTools'),(155,7,'cn.com.picvision.dolphinradio.Login$1'),(156,7,'cn.com.picvision.dolphinradio.TimeLine$4'),(157,7,'cn.com.picvision.dolphinradio.Player1$8');
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
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,16,'img_url'),(2,16,'Text'),(3,28,'pdus'),(4,18,'spList'),(5,20,'PVMobAd_App_Key'),(6,4,'myYear'),(7,5,'feeinfo_feeNumber'),(8,21,'path'),(9,4,'myId'),(10,8,'APP_CHANNEL'),(11,9,'APP_CHANNEL'),(12,3,'APP_CHANNEL'),(13,6,'APP_CHANNEL'),(14,7,'myDay'),(15,4,'myGender'),(16,7,'taDay'),(17,7,'feeinfo_issFee'),(18,5,'feeinfo_issFee'),(19,8,'birthday_2'),(20,7,'APP_CHANNEL'),(21,5,'APP_CHANNEL'),(22,15,'APP_CHANNEL'),(23,4,'taYear'),(24,8,'monthChoice'),(25,7,'taGender'),(26,5,'feeinfo_feeCode'),(27,1,'APP_NAME'),(28,3,'APP_NAME'),(29,2,'APP_NAME'),(30,7,'APP_NAME'),(31,5,'APP_NAME'),(32,4,'taId'),(33,3,'readFlag'),(34,7,'myGender'),(35,7,'feeinfo_feeValue'),(36,8,'gender_2'),(37,7,'feeinfo_feeNumber'),(38,7,'taYear'),(39,4,'loveState'),(40,4,'taDay'),(41,4,'myDay'),(42,6,'singleName'),(43,8,'APP_NAME'),(44,9,'APP_NAME'),(45,6,'APP_NAME'),(46,4,'taGender'),(47,10,'APP_NAME'),(48,15,'APP_NAME'),(49,7,'myYear'),(50,7,'feeinfo_feeInfo'),(51,4,'taTime'),(52,4,'taName'),(53,9,'productId'),(54,4,'modifyFlag'),(55,1,'APP_CHANNEL'),(56,2,'APP_CHANNEL'),(57,4,'myTime'),(58,8,'birthday_1'),(59,4,'myMonth'),(60,23,'pdus'),(61,7,'myMonth'),(62,7,'feeinfo_feeCode'),(63,8,'gender_1'),(64,21,'productName'),(65,6,'singleGender'),(66,7,'taMonth'),(67,5,'feeinfo_feeInfo'),(68,4,'myName'),(69,5,'feeinfo_feeValue'),(70,4,'taMonth'),(71,121,'channels'),(72,121,'sina_attention'),(73,120,'channelList'),(74,121,'channelInfo'),(75,134,'channleID'),(76,123,'position'),(77,122,'channel'),(78,135,'pdus'),(79,122,'sina_attention'),(80,118,'channel'),(81,126,'position'),(82,116,'SWITCH'),(83,128,'url'),(84,122,'clockPlay'),(85,121,'tencent_attention'),(86,121,'channel'),(87,122,'channelInfo'),(88,122,'channels'),(89,135,'ChannelID'),(90,125,'channel'),(91,125,'position'),(92,122,'tencent_attention'),(93,121,'clockPlay'),(94,120,'channelName');
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
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'s',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'r',1,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'s',0,NULL,NULL),(27,27,'a',1,NULL,NULL),(28,28,'r',1,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'a',1,NULL,NULL),(33,33,'r',1,NULL,NULL),(34,34,'a',1,NULL,NULL),(35,35,'a',1,NULL,NULL),(36,36,'a',1,NULL,NULL),(37,37,'a',1,NULL,NULL),(38,38,'a',1,NULL,NULL),(39,39,'a',1,NULL,NULL),(40,40,'a',1,NULL,NULL),(41,41,'a',1,NULL,NULL),(42,43,'a',1,NULL,NULL),(43,42,'a',1,NULL,NULL),(44,44,'a',1,NULL,NULL),(45,45,'a',1,NULL,NULL),(46,46,'a',1,NULL,NULL),(47,47,'a',1,NULL,NULL),(48,48,'a',1,NULL,NULL),(49,49,'a',1,NULL,NULL),(50,50,'a',1,NULL,NULL),(51,51,'a',1,NULL,NULL),(52,52,'a',1,NULL,NULL),(53,53,'a',1,NULL,NULL),(54,55,'a',1,NULL,NULL),(55,54,'a',1,NULL,NULL),(56,56,'a',1,NULL,NULL),(57,57,'a',1,NULL,NULL),(58,58,'a',1,NULL,NULL),(59,59,'a',1,NULL,NULL),(60,60,'a',1,NULL,NULL),(61,61,'a',1,NULL,NULL),(62,62,'a',1,NULL,NULL),(63,63,'a',1,NULL,NULL),(64,64,'a',1,NULL,NULL),(65,65,'a',1,NULL,NULL),(66,66,'a',1,NULL,NULL),(67,67,'a',1,NULL,NULL),(68,68,'a',1,NULL,NULL),(69,69,'a',1,NULL,NULL),(70,70,'a',1,NULL,NULL),(71,71,'a',1,NULL,NULL),(72,72,'a',1,NULL,NULL),(73,73,'a',1,NULL,NULL),(74,74,'r',1,NULL,NULL),(75,75,'r',1,NULL,NULL),(76,76,'a',1,NULL,NULL),(77,77,'a',1,NULL,NULL),(78,78,'r',1,NULL,NULL),(79,79,'p',0,NULL,NULL),(80,80,'p',0,NULL,NULL),(81,81,'p',0,NULL,NULL),(82,82,'r',1,NULL,NULL),(83,91,'a',1,NULL,NULL),(84,92,'a',0,NULL,NULL),(85,93,'a',0,NULL,NULL),(86,94,'a',0,NULL,NULL),(87,95,'a',0,NULL,NULL),(88,96,'a',0,NULL,NULL),(89,97,'a',0,NULL,NULL),(90,98,'a',0,NULL,NULL),(91,99,'a',0,NULL,NULL),(92,100,'a',0,NULL,NULL),(93,101,'a',0,NULL,NULL),(94,102,'a',0,NULL,NULL),(95,103,'a',0,NULL,NULL),(96,104,'a',0,NULL,NULL),(97,105,'a',0,NULL,NULL),(98,106,'a',0,NULL,NULL),(99,107,'a',0,NULL,NULL),(100,108,'a',0,NULL,NULL),(101,109,'a',0,NULL,NULL),(102,110,'a',0,NULL,NULL),(103,111,'a',0,NULL,NULL),(104,112,'a',0,NULL,NULL),(105,113,'a',0,NULL,NULL),(106,114,'a',0,NULL,NULL),(107,115,'a',0,NULL,NULL),(108,116,'a',0,NULL,NULL),(109,117,'a',0,NULL,NULL),(110,118,'a',0,NULL,NULL),(111,119,'a',0,NULL,NULL),(112,120,'a',0,NULL,NULL),(113,121,'a',0,NULL,NULL),(114,122,'a',0,NULL,NULL),(115,123,'a',1,NULL,NULL),(116,124,'a',0,NULL,NULL),(117,125,'a',1,NULL,NULL),(118,126,'a',1,NULL,NULL),(119,127,'a',1,NULL,NULL),(120,128,'a',1,NULL,NULL),(121,129,'a',1,NULL,NULL),(122,130,'a',1,NULL,NULL),(123,131,'a',1,NULL,NULL),(124,132,'a',1,NULL,NULL),(125,133,'a',1,NULL,NULL),(126,134,'a',1,NULL,NULL),(127,135,'a',1,NULL,NULL),(128,136,'a',1,NULL,NULL),(129,137,'a',1,NULL,NULL),(130,138,'a',0,NULL,NULL),(131,139,'a',0,NULL,NULL),(132,140,'a',0,NULL,NULL),(133,141,'s',0,NULL,NULL),(134,142,'r',1,NULL,NULL),(135,143,'r',1,NULL,NULL),(136,144,'r',1,NULL,NULL),(137,146,'r',1,NULL,NULL),(138,151,'r',1,NULL,NULL),(139,152,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,22),(2,2,26),(3,2,22),(4,2,24),(5,3,33),(6,4,12),(7,5,22),(8,6,12),(9,7,13),(10,8,3),(11,9,3),(12,10,11),(13,11,3),(14,12,11),(15,13,3),(16,14,10),(17,14,9),(18,14,15),(19,14,6),(20,14,8),(21,14,3),(22,15,5),(23,16,3),(24,17,23),(25,18,23),(26,19,14),(27,20,3),(28,21,15),(29,21,3),(30,21,6),(31,21,9),(32,21,8),(33,21,10),(34,22,1),(35,23,11),(36,24,11),(37,25,7),(38,26,2),(39,27,3),(40,28,3),(41,29,118),(42,30,119),(43,31,132),(44,32,120),(45,33,123),(46,34,129),(47,35,119),(48,36,122),(49,37,121),(50,38,129),(51,39,121),(52,40,122),(53,41,119),(54,42,131),(55,43,122),(56,44,124),(57,45,122),(58,46,126),(59,47,122),(60,48,119),(61,49,134),(62,50,127),(63,51,120),(64,52,121),(65,53,121),(66,54,120),(67,55,123),(68,56,121),(69,57,120),(70,58,120),(71,59,119),(72,60,134),(73,61,135),(74,62,125),(75,63,119),(76,64,126),(77,65,122),(78,66,115),(79,67,130),(80,68,119),(81,69,121),(82,70,121),(83,71,129),(84,72,120),(85,73,125),(86,74,119),(87,75,120),(88,76,126),(89,77,125),(90,78,134),(91,79,119),(92,80,132),(93,81,122);
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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,22,'<com.picvision.seaweedweather.setCityInWidget: void onClick(android.view.View)>',7,'a',NULL),(2,33,'<com.picvision.seaweedweather.WeatherWidget: void getEnventFromCalendar()>',3,'p',NULL),(3,33,'<com.picvision.seaweedweather.WeatherWidget: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',16,'s',NULL),(4,83,'<com.picvision.seaweedweather.main$10: void onClick(android.content.DialogInterface,int)>',68,'a',NULL),(5,22,'<com.picvision.seaweedweather.setCityInWidget: void onClick(android.view.View)>',31,'a',NULL),(6,12,'<com.picvision.seaweedweather.main: boolean onOptionsItemSelected(android.view.MenuItem)>',82,'a',NULL),(7,84,'<com.go108.lic.dialog.PopupShow$15: void onClick(android.view.View)>',30,'a',NULL),(8,3,'<com.go108.lic.MainActivity: void readInfo()>',24,'a',NULL),(9,3,'<com.go108.lic.MainActivity: void onClick(android.view.View)>',20,'a',NULL),(10,85,'<com.go108.lic.dialog.PopupShow: void readContactst_1()>',22,'p',NULL),(11,3,'<com.go108.lic.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(12,86,'<com.go108.lic.dialog.ReadContacts2Utils: java.util.ArrayList readContactst(android.app.Activity)>',3,'p',NULL),(13,3,'<com.go108.lic.MainActivity: void onClick(android.view.View)>',101,'a',NULL),(14,87,'<com.go108.lic.util.APNOpera: long getPreferredApnId()>',5,'p',NULL),(15,5,'<com.go108.lic.SingleInputActivity: void pay()>',19,'a',NULL),(16,3,'<com.go108.lic.MainActivity: void onClick(android.view.View)>',72,'a',NULL),(17,23,'<com.go108.lic.util.SmsReceiver: long getThreadId()>',17,'p',NULL),(18,88,'<com.go108.lic.util.SmsReceiver$1: void run()>',11,'p',NULL),(19,89,'<com.go108.lic.menu.AboutActivity$1: void onClick(android.content.DialogInterface,int)>',13,'a',NULL),(20,3,'<com.go108.lic.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(21,87,'<com.go108.lic.util.APNOpera: java.lang.String readCurrentAPN()>',10,'p',NULL),(22,90,'<com.go108.lic.StartupActivity$2: void run()>',5,'a',0),(23,85,'<com.go108.lic.dialog.PopupShow: void readContactst_1()>',4,'p',NULL),(24,86,'<com.go108.lic.dialog.ReadContacts2Utils: java.util.ArrayList readContactst(android.app.Activity)>',26,'p',NULL),(25,7,'<com.go108.lic.LovingInputActivity: void pay()>',46,'a',NULL),(26,2,'<com.go108.lic.InputActivity: void save()>',37,'a',NULL),(27,3,'<com.go108.lic.MainActivity: void onClick(android.view.View)>',12,'a',NULL),(28,3,'<com.go108.lic.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',24,'a',NULL),(29,126,'<cn.com.picvision.dolphinradio.Main: void onCreate(android.os.Bundle)>',21,'s',NULL),(30,145,'<cn.com.picvision.dolphinradio.Home$2: void onClick(android.content.DialogInterface,int)>',24,'r',NULL),(31,140,'<cn.com.picvision.dolphinradio.Skin: boolean onKeyDown(int,android.view.KeyEvent)>',8,'r',NULL),(32,128,'<cn.com.picvision.dolphinradio.Music: boolean onOptionsItemSelected(android.view.MenuItem)>',72,'r',NULL),(33,131,'<cn.com.picvision.dolphinradio.SetMain: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',15,'r',NULL),(34,137,'<cn.com.picvision.dolphinradio.Login: boolean onKeyDown(int,android.view.KeyEvent)>',9,'r',NULL),(35,127,'<cn.com.picvision.dolphinradio.Home: boolean onOptionsItemSelected(android.view.MenuItem)>',50,'r',NULL),(36,147,'<cn.com.picvision.dolphinradio.Player1$Player_Status_Change: boolean onTouch(android.view.View,android.view.MotionEvent)>',226,'r',NULL),(37,148,'<cn.com.picvision.dolphinradio.Player$8: void onClick(android.content.DialogInterface,int)>',58,'a',NULL),(38,149,'<cn.com.picvision.dolphinradio.Login$2: boolean onTouch(android.view.View,android.view.MotionEvent)>',28,'a',NULL),(39,150,'<cn.com.picvision.dolphinradio.Player$Player_Status_Change: boolean onTouch(android.view.View,android.view.MotionEvent)>',632,'r',NULL),(40,130,'<cn.com.picvision.dolphinradio.Player1: boolean onKeyDown(int,android.view.KeyEvent)>',8,'r',NULL),(41,145,'<cn.com.picvision.dolphinradio.Home$2: void onClick(android.content.DialogInterface,int)>',31,'r',NULL),(42,139,'<cn.com.picvision.dolphinradio.Help: boolean onKeyDown(int,android.view.KeyEvent)>',8,'r',NULL),(43,147,'<cn.com.picvision.dolphinradio.Player1$Player_Status_Change: boolean onTouch(android.view.View,android.view.MotionEvent)>',132,'r',NULL),(44,132,'<cn.com.picvision.dolphinradio.Clocking: boolean onKeyDown(int,android.view.KeyEvent)>',8,'r',NULL),(45,130,'<cn.com.picvision.dolphinradio.Player1: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'r',NULL),(46,134,'<cn.com.picvision.dolphinradio.TimeLine: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'r',NULL),(47,130,'<cn.com.picvision.dolphinradio.Player1: boolean onOptionsItemSelected(android.view.MenuItem)>',16,'r',NULL),(48,145,'<cn.com.picvision.dolphinradio.Home$2: void onClick(android.content.DialogInterface,int)>',10,'r',NULL),(49,142,'<cn.com.picvision.dolphinradio.Broadcast.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',306,'r',NULL),(50,135,'<cn.com.picvision.dolphinradio.SendMsg: boolean onKeyDown(int,android.view.KeyEvent)>',8,'r',NULL),(51,128,'<cn.com.picvision.dolphinradio.Music: boolean onOptionsItemSelected(android.view.MenuItem)>',22,'r',NULL),(52,150,'<cn.com.picvision.dolphinradio.Player$Player_Status_Change: boolean onTouch(android.view.View,android.view.MotionEvent)>',538,'r',NULL),(53,129,'<cn.com.picvision.dolphinradio.Player: boolean onKeyDown(int,android.view.KeyEvent)>',8,'r',NULL),(54,128,'<cn.com.picvision.dolphinradio.Music: boolean onOptionsItemSelected(android.view.MenuItem)>',60,'r',NULL),(55,131,'<cn.com.picvision.dolphinradio.SetMain: boolean onKeyDown(int,android.view.KeyEvent)>',10,'r',NULL),(56,129,'<cn.com.picvision.dolphinradio.Player: boolean onOptionsItemSelected(android.view.MenuItem)>',16,'r',NULL),(57,128,'<cn.com.picvision.dolphinradio.Music: boolean onKeyDown(int,android.view.KeyEvent)>',8,'r',NULL),(58,128,'<cn.com.picvision.dolphinradio.Music: boolean onOptionsItemSelected(android.view.MenuItem)>',66,'r',NULL),(59,127,'<cn.com.picvision.dolphinradio.Home: boolean onOptionsItemSelected(android.view.MenuItem)>',29,'a',NULL),(60,142,'<cn.com.picvision.dolphinradio.Broadcast.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',147,'r',NULL),(61,143,'<cn.com.picvision.dolphinradio.Broadcast.SMSReceiver: void onReceive(android.content.Context,android.content.Intent)>',24,'r',NULL),(62,153,'<cn.com.picvision.dolphinradio.ClockSet1$7: void onClick(android.view.View)>',149,'r',NULL),(63,127,'<cn.com.picvision.dolphinradio.Home: boolean onOptionsItemSelected(android.view.MenuItem)>',44,'r',NULL),(64,134,'<cn.com.picvision.dolphinradio.TimeLine: boolean onOptionsItemSelected(android.view.MenuItem)>',23,'r',NULL),(65,130,'<cn.com.picvision.dolphinradio.Player1: boolean onOptionsItemSelected(android.view.MenuItem)>',24,'r',NULL),(66,154,'<cn.com.picvision.dolphinradio.util.SmallTools: void addShortcut(android.content.Context,android.os.Parcelable,java.lang.String,java.lang.String,java.lang.String)>',23,'r',NULL),(67,138,'<cn.com.picvision.dolphinradio.About: boolean onKeyDown(int,android.view.KeyEvent)>',8,'r',NULL),(68,127,'<cn.com.picvision.dolphinradio.Home: boolean onKeyDown(int,android.view.KeyEvent)>',8,'r',NULL),(69,129,'<cn.com.picvision.dolphinradio.Player: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'r',NULL),(70,129,'<cn.com.picvision.dolphinradio.Player: boolean onOptionsItemSelected(android.view.MenuItem)>',24,'r',NULL),(71,155,'<cn.com.picvision.dolphinradio.Login$1: boolean onTouch(android.view.View,android.view.MotionEvent)>',34,'r',NULL),(72,128,'<cn.com.picvision.dolphinradio.Music: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'r',NULL),(73,133,'<cn.com.picvision.dolphinradio.ClockSet1: void back()>',7,'r',NULL),(74,127,'<cn.com.picvision.dolphinradio.Home: boolean onOptionsItemSelected(android.view.MenuItem)>',56,'r',NULL),(75,128,'<cn.com.picvision.dolphinradio.Music: boolean onOptionsItemSelected(android.view.MenuItem)>',16,'r',NULL),(76,156,'<cn.com.picvision.dolphinradio.TimeLine$4: void onClick(android.view.View)>',52,'r',NULL),(77,153,'<cn.com.picvision.dolphinradio.ClockSet1$7: void onClick(android.view.View)>',163,'r',NULL),(78,142,'<cn.com.picvision.dolphinradio.Broadcast.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',49,'r',NULL),(79,145,'<cn.com.picvision.dolphinradio.Home$2: void onClick(android.content.DialogInterface,int)>',17,'r',NULL),(80,140,'<cn.com.picvision.dolphinradio.Skin: void goBack()>',5,'r',NULL),(81,157,'<cn.com.picvision.dolphinradio.Player1$8: void onClick(android.content.DialogInterface,int)>',58,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,3,9),(2,5,10),(3,17,11),(4,27,21),(5,28,21),(6,29,21),(7,30,21),(8,31,21),(9,32,21),(10,33,21),(11,36,21),(12,37,21),(13,38,21),(14,39,21),(15,40,21),(16,41,21),(17,42,21),(18,43,21),(19,44,21),(20,45,21),(21,46,22),(22,47,21),(23,48,21),(24,49,21),(25,50,21),(26,51,21),(27,52,21),(28,53,21),(29,54,21),(30,55,21),(31,56,9),(32,57,21),(33,58,21),(34,59,21),(35,60,21),(36,61,21),(37,62,21),(38,63,23),(39,64,21),(40,65,21),(41,66,21),(42,67,21),(43,68,21),(44,69,21),(45,70,21),(46,71,21),(47,72,21),(48,73,21),(49,74,24),(50,75,24),(51,76,21),(52,77,21);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/picvision/seaweedweather/addWidgetCity'),(2,2,'com/picvision/seaweedweather/service/ForecastTimeService'),(3,4,'com/picvision/seaweedweather/widgetThemeSelector'),(4,6,'com/go108/lic/FavoritesReviewActivity'),(5,7,'com/go108/lic/InputActivity'),(6,8,'com/go108/lic/PersonModifyActivity'),(7,9,'com/go108/lic/PersonModifyActivity'),(8,11,'com/go108/lic/menu/FeedbackActivity'),(9,12,'com/go108/lic/SingleInputActivity'),(10,13,'com/go108/lic/SingleInputActivity'),(11,14,'com/go108/lic/SingleResultActivity'),(12,15,'com/go108/lic/LovingInputActivity'),(13,16,'com/go108/lic/LovingInputActivity'),(14,19,'com/go108/lic/menu/ShareActivity'),(15,20,'com/go108/lic/LovingResultActivity'),(16,21,'com/go108/lic/MainActivity'),(17,22,'com/go108/lic/PersonModifyActivity'),(18,23,'com/go108/lic/PersonModifyActivity'),(19,25,'com/go108/lic/menu/FavoritesListActivity'),(20,26,'cn/com/picvision/dolphinradio/service/WfiService'),(21,34,'cn/com/picvision/dolphinradio/WebViewActivity'),(22,35,'cn/com/picvision/dolphinradio/WebViewActivity'),(23,56,'com.android.browser.BrowserActivity'),(24,78,'cn/com/picvision/dolphinradio/WebViewActivity');
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
INSERT INTO `IData` VALUES (1,3,4),(2,5,5),(3,17,11),(4,56,15);
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
) ENGINE=InnoDB AUTO_INCREMENT=257 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,5,'sms_body'),(2,6,'productId'),(3,8,'loveState'),(4,8,'taMonth'),(5,8,'myTime'),(6,8,'taGender'),(7,8,'myGender'),(8,8,'myGenderStr'),(9,8,'myYear'),(10,8,'myMonth'),(11,8,'taTime'),(12,8,'myId'),(13,8,'taGenderStr'),(14,8,'taDay'),(15,8,'loveStateStr'),(16,8,'myDay'),(17,8,'taName'),(18,8,'modifyFlag'),(19,8,'myName'),(20,8,'taYear'),(21,8,'taId'),(22,9,'loveState'),(23,9,'taMonth'),(24,9,'myTime'),(25,9,'taGender'),(26,9,'feeinfo_feeValue'),(27,9,'feeinfo_feeCode'),(28,9,'myGender'),(29,9,'myYear'),(30,9,'myGenderStr'),(31,9,'myMonth'),(32,9,'feeinfo_issFee'),(33,9,'taTime'),(34,9,'myId'),(35,9,'taGenderStr'),(36,9,'taDay'),(37,9,'loveStateStr'),(38,9,'myDay'),(39,9,'taName'),(40,9,'feeinfo_feeNumber'),(41,9,'modifyFlag'),(42,9,'myName'),(43,9,'feeinfo_feeInfo'),(44,9,'taId'),(45,9,'taYear'),(46,12,'loveState'),(47,12,'taMonth'),(48,12,'myTime'),(49,12,'taGender'),(50,12,'feeinfo_feeValue'),(51,12,'feeinfo_feeCode'),(52,12,'myGender'),(53,12,'myGenderStr'),(54,12,'myYear'),(55,12,'myMonth'),(56,12,'feeinfo_issFee'),(57,12,'taTime'),(58,12,'myId'),(59,12,'taDay'),(60,12,'taGenderStr'),(61,12,'loveStateStr'),(62,12,'myDay'),(63,12,'taName'),(64,12,'feeinfo_feeNumber'),(65,12,'myName'),(66,12,'feeinfo_feeInfo'),(67,12,'taYear'),(68,12,'taId'),(69,13,'loveState'),(70,13,'taMonth'),(71,13,'myTime'),(72,13,'taGender'),(73,13,'feeinfo_feeValue'),(74,13,'feeinfo_feeCode'),(75,13,'myGender'),(76,13,'myYear'),(77,13,'myGenderStr'),(78,13,'myMonth'),(79,13,'feeinfo_issFee'),(80,13,'taTime'),(81,13,'myId'),(82,13,'taGenderStr'),(83,13,'taDay'),(84,13,'loveStateStr'),(85,13,'myDay'),(86,13,'taName'),(87,13,'feeinfo_feeNumber'),(88,13,'modifyFlag'),(89,13,'myName'),(90,13,'feeinfo_feeInfo'),(91,13,'taId'),(92,13,'taYear'),(93,14,'singleGender'),(94,14,'singleName'),(95,15,'loveState'),(96,15,'taMonth'),(97,15,'myTime'),(98,15,'taGender'),(99,15,'feeinfo_feeValue'),(100,15,'feeinfo_feeCode'),(101,15,'myGender'),(102,15,'myYear'),(103,15,'myGenderStr'),(104,15,'myMonth'),(105,15,'feeinfo_issFee'),(106,15,'taTime'),(107,15,'myId'),(108,15,'taGenderStr'),(109,15,'taDay'),(110,15,'loveStateStr'),(111,15,'myDay'),(112,15,'taName'),(113,15,'feeinfo_feeNumber'),(114,15,'modifyFlag'),(115,15,'myName'),(116,15,'feeinfo_feeInfo'),(117,15,'taId'),(118,15,'taYear'),(119,16,'loveState'),(120,16,'taMonth'),(121,16,'myTime'),(122,16,'taGender'),(123,16,'feeinfo_feeValue'),(124,16,'feeinfo_feeCode'),(125,16,'myGender'),(126,16,'myGenderStr'),(127,16,'myYear'),(128,16,'myMonth'),(129,16,'feeinfo_issFee'),(130,16,'taTime'),(131,16,'myId'),(132,16,'taDay'),(133,16,'taGenderStr'),(134,16,'loveStateStr'),(135,16,'myDay'),(136,16,'taName'),(137,16,'feeinfo_feeNumber'),(138,16,'myName'),(139,16,'feeinfo_feeInfo'),(140,16,'taYear'),(141,16,'taId'),(142,20,'monthChoice'),(143,20,'gender_2'),(144,20,'gender_1'),(145,20,'birthday_2'),(146,20,'birthday_1'),(147,21,'readFlag'),(148,22,'loveState'),(149,22,'taMonth'),(150,22,'myTime'),(151,22,'taGender'),(152,22,'myGender'),(153,22,'myGenderStr'),(154,22,'myYear'),(155,22,'myMonth'),(156,22,'taTime'),(157,22,'myId'),(158,22,'taGenderStr'),(159,22,'taDay'),(160,22,'loveStateStr'),(161,22,'myDay'),(162,22,'taName'),(163,22,'modifyFlag'),(164,22,'myName'),(165,22,'taYear'),(166,22,'taId'),(167,23,'loveState'),(168,23,'taMonth'),(169,23,'myTime'),(170,23,'taGender'),(171,23,'feeinfo_feeValue'),(172,23,'feeinfo_feeCode'),(173,23,'myGender'),(174,23,'myYear'),(175,23,'myGenderStr'),(176,23,'myMonth'),(177,23,'feeinfo_issFee'),(178,23,'taTime'),(179,23,'myId'),(180,23,'taGenderStr'),(181,23,'taDay'),(182,23,'loveStateStr'),(183,23,'myDay'),(184,23,'taName'),(185,23,'feeinfo_feeNumber'),(186,23,'modifyFlag'),(187,23,'myName'),(188,23,'feeinfo_feeInfo'),(189,23,'taId'),(190,23,'taYear'),(191,27,'content'),(192,28,'content'),(193,29,'content'),(194,30,'position'),(195,30,'content'),(196,31,'content'),(197,32,'content'),(198,33,'content'),(199,33,'position'),(200,33,'channel'),(201,34,'url'),(202,35,'url'),(203,36,'content'),(204,36,'position'),(205,36,'channel'),(206,37,'content'),(207,38,'content'),(208,39,'content'),(209,40,'content'),(210,41,'content'),(211,42,'content'),(212,43,'content'),(213,44,'content'),(214,45,'content'),(215,46,'channelID'),(216,47,'content'),(217,48,'content'),(218,49,'content'),(219,50,'content'),(220,51,'content'),(221,52,'position'),(222,52,'content'),(223,53,'content'),(224,54,'content'),(225,55,'content'),(226,57,'content'),(227,58,'content'),(228,58,'ChannelID'),(229,59,'position'),(230,59,'content'),(231,60,'content'),(232,61,'content'),(233,62,'position'),(234,62,'content'),(235,63,'duplicate'),(236,63,'android.intent.extra.shortcut.NAME'),(237,63,'android.intent.extra.shortcut.ICON_RESOURCE'),(238,63,'android.intent.extra.shortcut.INTENT'),(239,64,'content'),(240,65,'content'),(241,66,'content'),(242,67,'position'),(243,67,'content'),(244,68,'position'),(245,68,'content'),(246,69,'content'),(247,70,'position'),(248,70,'content'),(249,71,'content'),(250,72,'content'),(251,73,'content'),(252,74,'alarmSet'),(253,75,'alarmSet'),(254,76,'content'),(255,77,'content'),(256,78,'url');
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,2),(5,5,1),(6,6,2),(7,8,3),(8,11,1),(9,13,4),(10,53,3),(11,54,3),(12,56,2),(13,57,2),(14,58,5),(15,60,5),(16,61,6),(17,62,3),(18,63,6),(19,64,7),(20,65,2),(21,66,7),(22,67,5),(23,68,6),(24,69,7),(25,70,8),(26,71,1),(27,72,1),(28,85,9),(29,86,5),(30,87,12),(31,88,13),(32,89,14),(33,90,15),(34,91,16),(35,92,3),(36,93,2),(37,94,6),(38,95,7),(39,96,18),(40,96,17),(41,96,20),(42,96,4),(43,96,19),(44,97,21),(45,98,22),(46,99,22);
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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,2),(5,5,1),(6,7,2),(7,9,1),(8,10,2),(9,12,2),(10,11,1),(11,14,2),(12,15,2),(13,16,2),(14,17,2),(15,18,2),(16,19,2),(17,20,2),(18,22,2),(19,21,2),(20,23,2),(21,24,2),(22,25,2),(23,26,2),(24,28,2),(25,27,2),(26,29,2),(27,31,2),(28,30,2),(29,32,2),(30,33,2),(31,34,2),(32,35,2),(33,36,2),(34,37,2),(35,38,2),(36,39,2),(37,40,2),(38,41,2),(39,42,2),(40,43,2),(41,44,2),(42,45,2),(43,46,2),(44,47,2),(45,48,2),(46,49,2),(47,50,2),(48,51,2),(49,52,2),(50,55,2),(51,59,2),(52,71,1),(53,72,1),(54,73,1),(55,74,2),(56,75,2),(57,76,2),(58,77,2),(59,78,2),(60,79,2),(61,80,2),(62,81,2),(63,82,2),(64,83,2),(65,84,2),(66,85,2),(67,85,3);
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
INSERT INTO `IFData` VALUES (1,85,'dolphinradio','Login',NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.picvision.seaweedweather'),(2,2,'com.picvision.seaweedweather'),(3,4,'com.picvision.seaweedweather'),(4,6,'com.go108.lic'),(5,7,'com.go108.lic'),(6,8,'com.go108.lic'),(7,9,'com.go108.lic'),(8,11,'com.go108.lic'),(9,12,'com.go108.lic'),(10,13,'com.go108.lic'),(11,14,'com.go108.lic'),(12,15,'com.go108.lic'),(13,16,'com.go108.lic'),(14,19,'com.go108.lic'),(15,20,'com.go108.lic'),(16,21,'com.go108.lic'),(17,22,'com.go108.lic'),(18,23,'com.go108.lic'),(19,25,'com.go108.lic'),(20,26,'cn.com.picvision.dolphinradio'),(21,34,'cn.com.picvision.dolphinradio'),(22,35,'cn.com.picvision.dolphinradio'),(23,56,'com.android.browser'),(24,78,'cn.com.picvision.dolphinradio');
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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,12,0),(3,25,0),(4,23,0),(5,27,0),(6,28,0),(7,29,0),(8,28,0),(9,30,0),(10,31,0),(11,32,0),(12,34,0),(13,33,0),(14,35,0),(15,36,0),(16,37,0),(17,38,0),(18,40,0),(19,39,0),(20,41,0),(21,42,0),(22,43,0),(23,44,0),(24,45,0),(25,46,0),(26,47,0),(27,49,0),(28,48,0),(29,50,0),(30,52,0),(31,51,0),(32,53,0),(33,55,0),(34,54,0),(35,56,0),(36,58,0),(37,57,0),(38,59,0),(39,60,0),(40,61,0),(41,62,0),(42,63,0),(43,64,0),(44,65,0),(45,66,0),(46,67,0),(47,68,0),(48,70,0),(49,69,0),(50,71,0),(51,72,0),(52,73,0),(53,74,0),(54,75,0),(55,76,0),(56,74,0),(57,75,0),(58,74,0),(59,77,0),(60,75,0),(61,74,0),(62,78,0),(63,75,0),(64,74,0),(65,78,0),(66,75,0),(67,78,0),(68,78,0),(69,78,0),(70,82,0),(71,83,0),(72,115,0),(73,117,0),(74,118,0),(75,119,0),(76,120,0),(77,121,0),(78,122,0),(79,123,0),(80,124,0),(81,125,0),(82,126,0),(83,127,0),(84,128,0),(85,129,0),(86,134,0),(87,134,0),(88,134,0),(89,134,0),(90,134,0),(91,134,0),(92,135,0),(93,135,0),(94,135,0),(95,135,0),(96,136,0),(97,137,0),(98,138,0),(99,139,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,3,0,0),(3,4,1,0),(4,5,0,0),(5,6,1,0),(6,7,0,0),(7,8,0,0),(8,9,0,0),(9,9,0,0),(10,11,1,0),(11,11,0,0),(12,13,0,0),(13,13,0,0),(14,15,0,0),(15,16,0,0),(16,16,0,0),(17,19,1,0),(18,20,1,0),(19,20,0,0),(20,25,0,0),(21,26,0,0),(22,27,0,0),(23,27,0,0),(24,28,1,0),(25,28,0,0),(26,29,0,0),(27,30,1,0),(28,31,1,0),(29,32,1,0),(30,33,1,0),(31,34,1,0),(32,35,1,0),(33,36,1,0),(34,37,0,0),(35,38,0,0),(36,39,1,0),(37,40,1,0),(38,41,1,0),(39,42,1,0),(40,43,1,0),(41,44,1,0),(42,45,1,0),(43,46,1,0),(44,47,1,0),(45,48,1,0),(46,49,1,0),(47,50,1,0),(48,51,1,0),(49,52,1,0),(50,53,1,0),(51,54,1,0),(52,55,1,0),(53,56,1,0),(54,57,1,0),(55,58,1,0),(56,59,0,0),(57,60,1,0),(58,61,1,0),(59,62,1,0),(60,63,1,0),(61,64,1,0),(62,65,1,0),(63,66,1,0),(64,67,1,0),(65,68,1,0),(66,69,1,0),(67,70,1,0),(68,71,1,0),(69,72,1,0),(70,73,1,0),(71,74,1,0),(72,75,1,0),(73,76,1,0),(74,77,1,0),(75,78,1,0),(76,79,1,0),(77,80,1,0),(78,81,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAuthorities`
--

LOCK TABLES `PAuthorities` WRITE;
/*!40000 ALTER TABLE `PAuthorities` DISABLE KEYS */;
INSERT INTO `PAuthorities` VALUES (1,1,'com.picthink.SeaShell.lijiang'),(2,2,'com.picvision.SeaShell.activity'),(3,3,'com.picvision.SeaShell.XiAn');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (18,'android.permission.ACCESS_COARSE_LOCATION'),(17,'android.permission.ACCESS_FINE_LOCATION'),(13,'android.permission.ACCESS_NETWORK_STATE'),(19,'android.permission.ACCESS_WIFI_STATE'),(5,'android.permission.CALL_PHONE'),(24,'android.permission.CHANGE_NETWORK_STATE'),(23,'android.permission.CHANGE_WIFI_STATE'),(21,'android.permission.DISABLE_KEYGUARD'),(11,'android.permission.INTERNET'),(8,'android.permission.KILL_BACKGROUND_PROCESSES'),(14,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(16,'android.permission.READ_CALENDAR'),(6,'android.permission.READ_CONTACTS'),(9,'android.permission.READ_PHONE_STATE'),(10,'android.permission.READ_SMS'),(22,'android.permission.RECEIVE_BOOT_COMPLETED'),(4,'android.permission.RECEIVE_SMS'),(7,'android.permission.RESTART_PACKAGES'),(1,'android.permission.SEND_SMS'),(12,'android.permission.VIBRATE'),(25,'android.permission.WAKE_LOCK'),(15,'android.permission.WRITE_CALENDAR'),(2,'android.permission.WRITE_EXTERNAL_STORAGE'),(3,'android.permission.WRITE_SMS'),(20,'com.android.launcher.permission.INSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Providers`
--

LOCK TABLES `Providers` WRITE;
/*!40000 ALTER TABLE `Providers` DISABLE KEYS */;
INSERT INTO `Providers` VALUES (1,79,0,NULL,NULL),(2,80,0,NULL,NULL),(3,81,0,NULL,NULL);
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
INSERT INTO `UriData` VALUES (1,NULL,NULL,'',NULL,NULL,NULL),(2,NULL,NULL,'content://calendar/events',NULL,NULL,NULL),(3,NULL,NULL,'content://com.android.calendar/events',NULL,NULL,NULL),(4,NULL,NULL,'http://211.95.79.112/wapforum/index.jsp?imsi=(.*)&software=SeaweedWeatherV1.0.0_FREE_AD1.5_AllSizes',NULL,NULL,NULL),(5,NULL,NULL,'smsto:',NULL,NULL,NULL),(6,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(7,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(8,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(9,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(10,NULL,NULL,'content://sms/conversations/(.*)',NULL,NULL,NULL),(11,NULL,NULL,'tel:073184285152',NULL,NULL,NULL),(12,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(13,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(14,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,2,1),(2,2,2),(3,2,3),(4,10,6),(5,12,7),(6,14,8),(7,17,9),(8,18,10),(9,21,12),(10,23,13),(11,24,14);
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,2,16),(15,2,1),(16,2,2),(17,2,4),(18,2,9),(19,2,11),(20,2,14),(21,2,15),(22,3,17),(23,3,1),(24,3,18),(25,3,4),(26,4,17),(27,3,6),(28,4,18),(29,3,7),(30,4,6),(31,3,9),(32,4,7),(33,3,11),(34,4,9),(35,4,11),(36,5,17),(37,5,1),(38,5,18),(39,5,4),(40,5,6),(41,5,7),(42,5,9),(43,5,11),(44,6,19),(45,6,2),(46,6,6),(47,6,9),(48,6,11),(49,6,13),(50,7,1),(51,7,2),(52,7,4),(53,7,7),(54,7,9),(55,7,11),(56,7,13),(57,7,19),(58,7,21),(59,7,20),(60,7,23),(61,7,22),(62,7,25),(63,7,24);
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

-- Dump completed on 2015-10-09  0:41:02
