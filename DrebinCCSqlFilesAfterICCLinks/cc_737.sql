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
) ENGINE=InnoDB AUTO_INCREMENT=2992 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,10,115,2,NULL),(2,18,115,2,NULL),(3,24,115,2,NULL),(4,5,115,2,NULL),(5,32,115,2,NULL),(6,60,115,2,NULL),(7,65,115,2,NULL),(8,71,115,2,NULL),(9,29,115,2,NULL),(10,48,115,2,NULL),(11,51,115,2,NULL),(12,54,115,2,NULL),(13,55,115,2,NULL),(14,69,115,2,NULL),(15,72,115,2,NULL),(16,50,115,2,NULL),(17,53,115,2,NULL),(18,66,115,2,NULL),(19,67,115,2,NULL),(20,37,115,2,NULL),(21,42,115,2,NULL),(22,44,115,2,NULL),(23,62,115,2,NULL),(24,30,115,2,NULL),(25,52,115,2,NULL),(26,41,115,2,NULL),(27,70,115,2,NULL),(28,43,115,2,NULL),(29,61,115,2,NULL),(30,47,115,2,NULL),(31,31,115,2,NULL),(32,64,115,2,NULL),(33,39,115,2,NULL),(34,28,115,2,NULL),(35,77,115,2,NULL),(36,46,115,2,NULL),(37,57,115,2,NULL),(38,75,115,2,NULL),(39,58,115,2,NULL),(40,10,117,2,NULL),(41,18,117,2,NULL),(42,24,117,2,NULL),(43,5,117,2,NULL),(44,32,117,2,NULL),(45,60,117,2,NULL),(46,65,117,2,NULL),(47,71,117,2,NULL),(48,29,117,2,NULL),(49,48,117,2,NULL),(50,51,117,2,NULL),(51,54,117,2,NULL),(52,55,117,2,NULL),(53,69,117,2,NULL),(54,72,117,2,NULL),(55,50,117,2,NULL),(56,53,117,2,NULL),(57,66,117,2,NULL),(58,67,117,2,NULL),(59,37,117,2,NULL),(60,42,117,2,NULL),(61,44,117,2,NULL),(62,62,117,2,NULL),(63,30,117,2,NULL),(64,52,117,2,NULL),(65,41,117,2,NULL),(66,70,117,2,NULL),(67,43,117,2,NULL),(68,10,25,2,NULL),(69,61,117,2,NULL),(70,18,25,2,NULL),(71,47,117,2,NULL),(72,24,25,2,NULL),(73,31,117,2,NULL),(74,5,25,2,NULL),(75,64,117,2,NULL),(76,32,25,2,NULL),(77,39,117,2,NULL),(78,60,25,2,NULL),(79,28,117,2,NULL),(80,65,25,2,NULL),(81,77,117,2,NULL),(82,71,25,2,NULL),(83,46,117,2,NULL),(84,29,25,2,NULL),(85,57,117,2,NULL),(86,48,25,2,NULL),(87,75,117,2,NULL),(88,51,25,2,NULL),(89,58,117,2,NULL),(90,54,25,2,NULL),(91,26,133,2,NULL),(92,55,25,2,NULL),(93,10,118,2,NULL),(94,69,25,2,NULL),(95,18,118,2,NULL),(96,72,25,2,NULL),(97,24,118,2,NULL),(98,50,25,2,NULL),(99,5,118,2,NULL),(100,53,25,2,NULL),(101,32,118,2,NULL),(102,66,25,2,NULL),(103,60,118,2,NULL),(104,65,118,2,NULL),(105,67,25,2,NULL),(106,71,118,2,NULL),(107,37,25,2,NULL),(108,29,118,2,NULL),(109,42,25,2,NULL),(110,48,118,2,NULL),(111,44,25,2,NULL),(112,51,118,2,NULL),(113,62,25,2,NULL),(114,54,118,2,NULL),(115,30,25,2,NULL),(116,55,118,2,NULL),(117,52,25,2,NULL),(118,69,118,2,NULL),(119,41,25,2,NULL),(120,72,118,2,NULL),(121,70,25,2,NULL),(122,50,118,2,NULL),(123,43,25,2,NULL),(124,53,118,2,NULL),(125,61,25,2,NULL),(126,66,118,2,NULL),(127,47,25,2,NULL),(128,67,118,2,NULL),(129,31,25,2,NULL),(130,37,118,2,NULL),(131,64,25,2,NULL),(132,42,118,2,NULL),(133,39,25,2,NULL),(134,44,118,2,NULL),(135,28,25,2,NULL),(136,62,118,2,NULL),(137,77,25,2,NULL),(138,30,118,2,NULL),(139,46,25,2,NULL),(140,52,118,2,NULL),(141,57,25,2,NULL),(142,41,118,2,NULL),(143,70,118,2,NULL),(144,75,25,2,NULL),(145,43,118,2,NULL),(146,58,25,2,NULL),(147,61,118,2,NULL),(148,10,29,2,NULL),(149,47,118,2,NULL),(150,18,29,2,NULL),(151,31,118,2,NULL),(152,24,29,2,NULL),(153,64,118,2,NULL),(154,5,29,2,NULL),(155,39,118,2,NULL),(156,32,29,2,NULL),(157,28,118,2,NULL),(158,60,29,2,NULL),(159,77,118,2,NULL),(160,65,29,2,NULL),(161,46,118,2,NULL),(162,71,29,2,NULL),(163,57,118,2,NULL),(164,29,29,2,NULL),(165,75,118,2,NULL),(166,48,29,2,NULL),(167,58,118,2,NULL),(168,51,29,2,NULL),(169,32,1,2,NULL),(170,54,29,2,NULL),(171,60,1,2,NULL),(172,55,29,2,NULL),(173,65,1,2,NULL),(174,69,29,2,NULL),(175,71,1,2,NULL),(176,72,29,2,NULL),(177,10,119,2,NULL),(178,50,29,2,NULL),(179,18,119,2,NULL),(180,53,29,2,NULL),(181,24,119,2,NULL),(182,66,29,2,NULL),(183,32,23,2,NULL),(184,67,29,2,NULL),(185,60,23,2,NULL),(186,37,29,2,NULL),(187,65,23,2,NULL),(188,42,29,2,NULL),(189,71,23,2,NULL),(190,44,29,2,NULL),(191,32,12,2,NULL),(192,62,29,2,NULL),(193,60,12,2,NULL),(194,30,29,2,NULL),(195,65,12,2,NULL),(196,52,29,2,NULL),(197,71,12,2,NULL),(198,10,32,2,NULL),(199,41,29,2,NULL),(200,5,119,2,NULL),(201,18,32,2,NULL),(202,70,29,2,NULL),(203,32,28,2,NULL),(204,24,32,2,NULL),(205,43,29,2,NULL),(206,60,28,2,NULL),(207,5,32,2,NULL),(208,61,29,2,NULL),(209,65,28,2,NULL),(210,32,32,2,NULL),(211,47,29,2,NULL),(212,71,28,2,NULL),(213,60,32,2,NULL),(214,31,29,2,NULL),(215,32,33,2,NULL),(216,65,32,2,NULL),(217,64,29,2,NULL),(218,60,33,2,NULL),(219,71,32,2,NULL),(220,39,29,2,NULL),(221,65,33,2,NULL),(222,29,32,2,NULL),(223,28,29,2,NULL),(224,71,33,2,NULL),(225,48,32,2,NULL),(226,77,29,2,NULL),(227,32,82,2,NULL),(228,51,32,2,NULL),(229,46,29,2,NULL),(230,60,82,2,NULL),(231,54,32,2,NULL),(232,57,29,2,NULL),(233,65,82,2,NULL),(234,55,32,2,NULL),(235,75,29,2,NULL),(236,71,82,2,NULL),(237,69,32,2,NULL),(238,58,29,2,NULL),(239,32,31,2,NULL),(240,72,32,2,NULL),(241,10,31,2,NULL),(242,60,31,2,NULL),(243,50,32,2,NULL),(244,18,31,2,NULL),(245,65,31,2,NULL),(246,53,32,2,NULL),(247,24,31,2,NULL),(248,71,31,2,NULL),(249,66,32,2,NULL),(250,5,31,2,NULL),(251,32,35,2,NULL),(252,67,32,2,NULL),(253,29,31,2,NULL),(254,60,35,2,NULL),(255,37,32,2,NULL),(256,48,31,2,NULL),(257,65,35,2,NULL),(258,42,32,2,NULL),(259,51,31,2,NULL),(260,71,35,2,NULL),(261,44,32,2,NULL),(262,54,31,2,NULL),(263,32,38,2,NULL),(264,62,32,2,NULL),(265,55,31,2,NULL),(266,60,38,2,NULL),(267,30,32,2,NULL),(268,69,31,2,NULL),(269,65,38,2,NULL),(270,52,32,2,NULL),(271,72,31,2,NULL),(272,71,38,2,NULL),(273,41,32,2,NULL),(274,50,31,2,NULL),(275,32,41,2,NULL),(276,70,32,2,NULL),(277,53,31,2,NULL),(278,60,41,2,NULL),(279,43,32,2,NULL),(280,66,31,2,NULL),(281,65,41,2,NULL),(282,61,32,2,NULL),(283,67,31,2,NULL),(284,71,41,2,NULL),(285,47,32,2,NULL),(286,37,31,2,NULL),(287,32,44,2,NULL),(288,31,32,2,NULL),(289,42,31,2,NULL),(290,60,44,2,NULL),(291,64,32,2,NULL),(292,44,31,2,NULL),(293,65,44,2,NULL),(294,39,32,2,NULL),(295,62,31,2,NULL),(296,71,44,2,NULL),(297,28,32,2,NULL),(298,30,31,2,NULL),(299,32,47,2,NULL),(300,77,32,2,NULL),(301,52,31,2,NULL),(302,60,47,2,NULL),(303,46,32,2,NULL),(304,41,31,2,NULL),(305,65,47,2,NULL),(306,57,32,2,NULL),(307,70,31,2,NULL),(308,71,47,2,NULL),(309,75,32,2,NULL),(310,43,31,2,NULL),(311,32,50,2,NULL),(312,58,32,2,NULL),(313,61,31,2,NULL),(314,60,50,2,NULL),(315,10,37,2,NULL),(316,47,31,2,NULL),(317,65,50,2,NULL),(318,18,37,2,NULL),(319,31,31,2,NULL),(320,71,50,2,NULL),(321,24,37,2,NULL),(322,64,31,2,NULL),(323,32,53,2,NULL),(324,5,37,2,NULL),(325,39,31,2,NULL),(326,60,53,2,NULL),(327,32,37,2,NULL),(328,28,31,2,NULL),(329,65,53,2,NULL),(330,60,37,2,NULL),(331,77,31,2,NULL),(332,71,53,2,NULL),(333,65,37,2,NULL),(334,46,31,2,NULL),(335,32,56,2,NULL),(336,71,37,2,NULL),(337,57,31,2,NULL),(338,60,56,2,NULL),(339,29,37,2,NULL),(340,75,31,2,NULL),(341,65,56,2,NULL),(342,48,37,2,NULL),(343,58,31,2,NULL),(344,71,56,2,NULL),(345,51,37,2,NULL),(346,10,35,2,NULL),(347,32,59,2,NULL),(348,54,37,2,NULL),(349,18,35,2,NULL),(350,60,59,2,NULL),(351,55,37,2,NULL),(352,24,35,2,NULL),(353,65,59,2,NULL),(354,69,37,2,NULL),(355,5,35,2,NULL),(356,71,59,2,NULL),(357,72,37,2,NULL),(358,29,35,2,NULL),(359,32,62,2,NULL),(360,50,37,2,NULL),(361,48,35,2,NULL),(362,60,62,2,NULL),(363,53,37,2,NULL),(364,51,35,2,NULL),(365,65,62,2,NULL),(366,66,37,2,NULL),(367,54,35,2,NULL),(368,71,62,2,NULL),(369,67,37,2,NULL),(370,55,35,2,NULL),(371,32,65,2,NULL),(372,37,37,2,NULL),(373,69,35,2,NULL),(374,10,27,2,NULL),(375,60,65,2,NULL),(376,42,37,2,NULL),(377,72,35,2,NULL),(378,18,27,2,NULL),(379,65,65,2,NULL),(380,44,37,2,NULL),(381,50,35,2,NULL),(382,24,27,2,NULL),(383,71,65,2,NULL),(384,62,37,2,NULL),(385,53,35,2,NULL),(386,5,27,2,NULL),(387,30,37,2,NULL),(388,32,68,2,NULL),(389,66,35,2,NULL),(390,32,27,2,NULL),(391,52,37,2,NULL),(392,60,68,2,NULL),(393,67,35,2,NULL),(394,41,37,2,NULL),(395,60,27,2,NULL),(396,65,68,2,NULL),(397,70,37,2,NULL),(398,37,35,2,NULL),(399,65,27,2,NULL),(400,71,68,2,NULL),(401,43,37,2,NULL),(402,42,35,2,NULL),(403,71,27,2,NULL),(404,32,71,2,NULL),(405,61,37,2,NULL),(406,44,35,2,NULL),(407,29,27,2,NULL),(408,60,71,2,NULL),(409,47,37,2,NULL),(410,62,35,2,NULL),(411,48,27,2,NULL),(412,65,71,2,NULL),(413,31,37,2,NULL),(414,51,27,2,NULL),(415,30,35,2,NULL),(416,71,71,2,NULL),(417,64,37,2,NULL),(418,52,35,2,NULL),(419,54,27,2,NULL),(420,32,74,2,NULL),(421,41,35,2,NULL),(422,39,37,2,NULL),(423,55,27,2,NULL),(424,60,74,2,NULL),(425,28,37,2,NULL),(426,70,35,2,NULL),(427,69,27,2,NULL),(428,65,74,2,NULL),(429,77,37,2,NULL),(430,43,35,2,NULL),(431,72,27,2,NULL),(432,71,74,2,NULL),(433,61,35,2,NULL),(434,46,37,2,NULL),(435,50,27,2,NULL),(436,32,30,2,NULL),(437,57,37,2,NULL),(438,47,35,2,NULL),(439,53,27,2,NULL),(440,60,30,2,NULL),(441,31,35,2,NULL),(442,75,37,2,NULL),(443,66,27,2,NULL),(444,65,30,2,NULL),(445,58,37,2,NULL),(446,64,35,2,NULL),(447,67,27,2,NULL),(448,71,30,2,NULL),(449,39,35,2,NULL),(450,10,39,2,NULL),(451,37,27,2,NULL),(452,32,34,2,NULL),(453,28,35,2,NULL),(454,18,39,2,NULL),(455,42,27,2,NULL),(456,60,34,2,NULL),(457,77,35,2,NULL),(458,24,39,2,NULL),(459,44,27,2,NULL),(460,65,34,2,NULL),(461,46,35,2,NULL),(462,5,39,2,NULL),(463,62,27,2,NULL),(464,71,34,2,NULL),(465,57,35,2,NULL),(466,32,39,2,NULL),(467,30,27,2,NULL),(468,32,36,2,NULL),(469,60,39,2,NULL),(470,75,35,2,NULL),(471,52,27,2,NULL),(472,60,36,2,NULL),(473,58,35,2,NULL),(474,65,39,2,NULL),(475,41,27,2,NULL),(476,65,36,2,NULL),(477,71,39,2,NULL),(478,10,38,2,NULL),(479,70,27,2,NULL),(480,71,36,2,NULL),(481,29,39,2,NULL),(482,18,38,2,NULL),(483,43,27,2,NULL),(484,32,40,2,NULL),(485,48,39,2,NULL),(486,24,38,2,NULL),(487,61,27,2,NULL),(488,60,40,2,NULL),(489,51,39,2,NULL),(490,5,38,2,NULL),(491,47,27,2,NULL),(492,65,40,2,NULL),(493,54,39,2,NULL),(494,29,38,2,NULL),(495,31,27,2,NULL),(496,71,40,2,NULL),(497,55,39,2,NULL),(498,48,38,2,NULL),(499,64,27,2,NULL),(500,32,43,2,NULL),(501,69,39,2,NULL),(502,51,38,2,NULL),(503,39,27,2,NULL),(504,60,43,2,NULL),(505,54,38,2,NULL),(506,72,39,2,NULL),(507,28,27,2,NULL),(508,65,43,2,NULL),(509,55,38,2,NULL),(510,50,39,2,NULL),(511,77,27,2,NULL),(512,71,43,2,NULL),(513,53,39,2,NULL),(514,69,38,2,NULL),(515,46,27,2,NULL),(516,32,45,2,NULL),(517,72,38,2,NULL),(518,66,39,2,NULL),(519,57,27,2,NULL),(520,60,45,2,NULL),(521,50,38,2,NULL),(522,67,39,2,NULL),(523,75,27,2,NULL),(524,65,45,2,NULL),(525,53,38,2,NULL),(526,37,39,2,NULL),(527,58,27,2,NULL),(528,71,45,2,NULL),(529,66,38,2,NULL),(530,42,39,2,NULL),(531,10,30,2,NULL),(532,32,48,2,NULL),(533,67,38,2,NULL),(534,44,39,2,NULL),(535,18,30,2,NULL),(536,60,48,2,NULL),(537,37,38,2,NULL),(538,62,39,2,NULL),(539,24,30,2,NULL),(540,65,48,2,NULL),(541,30,39,2,NULL),(542,42,38,2,NULL),(543,5,30,2,NULL),(544,71,48,2,NULL),(545,52,39,2,NULL),(546,44,38,2,NULL),(547,29,30,2,NULL),(548,32,52,2,NULL),(549,62,38,2,NULL),(550,41,39,2,NULL),(551,48,30,2,NULL),(552,60,52,2,NULL),(553,70,39,2,NULL),(554,30,38,2,NULL),(555,51,30,2,NULL),(556,65,52,2,NULL),(557,43,39,2,NULL),(558,52,38,2,NULL),(559,54,30,2,NULL),(560,71,52,2,NULL),(561,41,38,2,NULL),(562,61,39,2,NULL),(563,55,30,2,NULL),(564,32,55,2,NULL),(565,47,39,2,NULL),(566,70,38,2,NULL),(567,69,30,2,NULL),(568,60,55,2,NULL),(569,31,39,2,NULL),(570,72,30,2,NULL),(571,43,38,2,NULL),(572,65,55,2,NULL),(573,61,38,2,NULL),(574,64,39,2,NULL),(575,50,30,2,NULL),(576,71,55,2,NULL),(577,39,39,2,NULL),(578,47,38,2,NULL),(579,53,30,2,NULL),(580,32,58,2,NULL),(581,28,39,2,NULL),(582,31,38,2,NULL),(583,66,30,2,NULL),(584,60,58,2,NULL),(585,64,38,2,NULL),(586,67,30,2,NULL),(587,77,39,2,NULL),(588,65,58,2,NULL),(589,46,39,2,NULL),(590,39,38,2,NULL),(591,37,30,2,NULL),(592,71,58,2,NULL),(593,28,38,2,NULL),(594,57,39,2,NULL),(595,42,30,2,NULL),(596,32,60,2,NULL),(597,75,39,2,NULL),(598,77,38,2,NULL),(599,44,30,2,NULL),(600,60,60,2,NULL),(601,58,39,2,NULL),(602,62,30,2,NULL),(603,46,38,2,NULL),(604,65,60,2,NULL),(605,57,38,2,NULL),(606,10,42,2,NULL),(607,30,30,2,NULL),(608,71,60,2,NULL),(609,75,38,2,NULL),(610,18,42,2,NULL),(611,52,30,2,NULL),(612,32,63,2,NULL),(613,24,42,2,NULL),(614,58,38,2,NULL),(615,41,30,2,NULL),(616,60,63,2,NULL),(617,10,41,2,NULL),(618,5,42,2,NULL),(619,70,30,2,NULL),(620,65,63,2,NULL),(621,18,41,2,NULL),(622,32,42,2,NULL),(623,43,30,2,NULL),(624,71,63,2,NULL),(625,24,41,2,NULL),(626,60,42,2,NULL),(627,61,30,2,NULL),(628,32,66,2,NULL),(629,65,42,2,NULL),(630,5,41,2,NULL),(631,47,30,2,NULL),(632,60,66,2,NULL),(633,71,42,2,NULL),(634,31,30,2,NULL),(635,29,41,2,NULL),(636,65,66,2,NULL),(637,48,41,2,NULL),(638,64,30,2,NULL),(639,29,42,2,NULL),(640,71,66,2,NULL),(641,51,41,2,NULL),(642,48,42,2,NULL),(643,39,30,2,NULL),(644,32,69,2,NULL),(645,54,41,2,NULL),(646,51,42,2,NULL),(647,28,30,2,NULL),(648,60,69,2,NULL),(649,77,30,2,NULL),(650,55,41,2,NULL),(651,54,42,2,NULL),(652,65,69,2,NULL),(653,69,41,2,NULL),(654,55,42,2,NULL),(655,46,30,2,NULL),(656,71,69,2,NULL),(657,72,41,2,NULL),(658,69,42,2,NULL),(659,57,30,2,NULL),(660,32,72,2,NULL),(661,50,41,2,NULL),(662,72,42,2,NULL),(663,75,30,2,NULL),(664,60,72,2,NULL),(665,53,41,2,NULL),(666,50,42,2,NULL),(667,58,30,2,NULL),(668,65,72,2,NULL),(669,66,41,2,NULL),(670,10,34,2,NULL),(671,53,42,2,NULL),(672,71,72,2,NULL),(673,67,41,2,NULL),(674,66,42,2,NULL),(675,18,34,2,NULL),(676,32,75,2,NULL),(677,67,42,2,NULL),(678,37,41,2,NULL),(679,24,34,2,NULL),(680,60,75,2,NULL),(681,42,41,2,NULL),(682,37,42,2,NULL),(683,5,34,2,NULL),(684,65,75,2,NULL),(685,42,42,2,NULL),(686,44,41,2,NULL),(687,29,34,2,NULL),(688,71,75,2,NULL),(689,44,42,2,NULL),(690,62,41,2,NULL),(691,48,34,2,NULL),(692,32,46,2,NULL),(693,62,42,2,NULL),(694,30,41,2,NULL),(695,51,34,2,NULL),(696,60,46,2,NULL),(697,52,41,2,NULL),(698,30,42,2,NULL),(699,54,34,2,NULL),(700,65,46,2,NULL),(701,52,42,2,NULL),(702,41,41,2,NULL),(703,55,34,2,NULL),(704,71,46,2,NULL),(705,70,41,2,NULL),(706,41,42,2,NULL),(707,69,34,2,NULL),(708,32,49,2,NULL),(709,70,42,2,NULL),(710,43,41,2,NULL),(711,72,34,2,NULL),(712,60,49,2,NULL),(713,61,41,2,NULL),(714,43,42,2,NULL),(715,50,34,2,NULL),(716,65,49,2,NULL),(717,61,42,2,NULL),(718,47,41,2,NULL),(719,53,34,2,NULL),(720,71,49,2,NULL),(721,31,41,2,NULL),(722,47,42,2,NULL),(723,66,34,2,NULL),(724,32,51,2,NULL),(725,64,41,2,NULL),(726,31,42,2,NULL),(727,67,34,2,NULL),(728,60,51,2,NULL),(729,39,41,2,NULL),(730,37,34,2,NULL),(731,64,42,2,NULL),(732,65,51,2,NULL),(733,39,42,2,NULL),(734,28,41,2,NULL),(735,42,34,2,NULL),(736,71,51,2,NULL),(737,77,41,2,NULL),(738,28,42,2,NULL),(739,44,34,2,NULL),(740,32,54,2,NULL),(741,77,42,2,NULL),(742,46,41,2,NULL),(743,62,34,2,NULL),(744,60,54,2,NULL),(745,57,41,2,NULL),(746,46,42,2,NULL),(747,30,34,2,NULL),(748,65,54,2,NULL),(749,52,34,2,NULL),(750,75,41,2,NULL),(751,57,42,2,NULL),(752,71,54,2,NULL),(753,58,41,2,NULL),(754,41,34,2,NULL),(755,75,42,2,NULL),(756,32,57,2,NULL),(757,58,42,2,NULL),(758,10,44,2,NULL),(759,70,34,2,NULL),(760,60,57,2,NULL),(761,18,44,2,NULL),(762,10,46,2,NULL),(763,43,34,2,NULL),(764,65,57,2,NULL),(765,18,46,2,NULL),(766,24,44,2,NULL),(767,61,34,2,NULL),(768,71,57,2,NULL),(769,5,44,2,NULL),(770,24,46,2,NULL),(771,47,34,2,NULL),(772,32,61,2,NULL),(773,5,46,2,NULL),(774,31,34,2,NULL),(775,29,44,2,NULL),(776,60,61,2,NULL),(777,48,44,2,NULL),(778,64,34,2,NULL),(779,29,46,2,NULL),(780,65,61,2,NULL),(781,39,34,2,NULL),(782,51,44,2,NULL),(783,48,46,2,NULL),(784,71,61,2,NULL),(785,54,44,2,NULL),(786,51,46,2,NULL),(787,28,34,2,NULL),(788,32,64,2,NULL),(789,54,46,2,NULL),(790,55,44,2,NULL),(791,77,34,2,NULL),(792,60,64,2,NULL),(793,69,44,2,NULL),(794,55,46,2,NULL),(795,46,34,2,NULL),(796,65,64,2,NULL),(797,69,46,2,NULL),(798,57,34,2,NULL),(799,72,44,2,NULL),(800,71,64,2,NULL),(801,50,44,2,NULL),(802,72,46,2,NULL),(803,75,34,2,NULL),(804,32,67,2,NULL),(805,53,44,2,NULL),(806,50,46,2,NULL),(807,58,34,2,NULL),(808,60,67,2,NULL),(809,66,44,2,NULL),(810,53,46,2,NULL),(811,10,36,2,NULL),(812,65,67,2,NULL),(813,67,44,2,NULL),(814,66,46,2,NULL),(815,18,36,2,NULL),(816,71,67,2,NULL),(817,37,44,2,NULL),(818,67,46,2,NULL),(819,24,36,2,NULL),(820,32,70,2,NULL),(821,5,36,2,NULL),(822,42,44,2,NULL),(823,37,46,2,NULL),(824,60,70,2,NULL),(825,42,46,2,NULL),(826,44,44,2,NULL),(827,29,36,2,NULL),(828,65,70,2,NULL),(829,62,44,2,NULL),(830,44,46,2,NULL),(831,48,36,2,NULL),(832,71,70,2,NULL),(833,62,46,2,NULL),(834,30,44,2,NULL),(835,51,36,2,NULL),(836,32,73,2,NULL),(837,52,44,2,NULL),(838,30,46,2,NULL),(839,54,36,2,NULL),(840,60,73,2,NULL),(841,52,46,2,NULL),(842,41,44,2,NULL),(843,55,36,2,NULL),(844,65,73,2,NULL),(845,70,44,2,NULL),(846,41,46,2,NULL),(847,69,36,2,NULL),(848,71,73,2,NULL),(849,70,46,2,NULL),(850,43,44,2,NULL),(851,72,36,2,NULL),(852,32,76,2,NULL),(853,43,46,2,NULL),(854,50,36,2,NULL),(855,61,44,2,NULL),(856,60,76,2,NULL),(857,53,36,2,NULL),(858,47,44,2,NULL),(859,61,46,2,NULL),(860,65,76,2,NULL),(861,66,36,2,NULL),(862,47,46,2,NULL),(863,31,44,2,NULL),(864,71,76,2,NULL),(865,67,36,2,NULL),(866,64,44,2,NULL),(867,31,46,2,NULL),(868,32,77,2,NULL),(869,39,44,2,NULL),(870,37,36,2,NULL),(871,64,46,2,NULL),(872,60,77,2,NULL),(873,39,46,2,NULL),(874,28,44,2,NULL),(875,42,36,2,NULL),(876,65,77,2,NULL),(877,28,46,2,NULL),(878,77,44,2,NULL),(879,44,36,2,NULL),(880,71,77,2,NULL),(881,77,46,2,NULL),(882,62,36,2,NULL),(883,46,44,2,NULL),(884,32,78,2,NULL),(885,46,46,2,NULL),(886,57,44,2,NULL),(887,30,36,2,NULL),(888,60,78,2,NULL),(889,75,44,2,NULL),(890,57,46,2,NULL),(891,52,36,2,NULL),(892,65,78,2,NULL),(893,58,44,2,NULL),(894,75,46,2,NULL),(895,41,36,2,NULL),(896,71,78,2,NULL),(897,10,47,2,NULL),(898,58,46,2,NULL),(899,70,36,2,NULL),(900,32,83,2,NULL),(901,10,49,2,NULL),(902,43,36,2,NULL),(903,18,47,2,NULL),(904,60,83,2,NULL),(905,18,49,2,NULL),(906,24,47,2,NULL),(907,61,36,2,NULL),(908,65,83,2,NULL),(909,24,49,2,NULL),(910,5,47,2,NULL),(911,47,36,2,NULL),(912,71,83,2,NULL),(913,5,49,2,NULL),(914,31,36,2,NULL),(915,29,47,2,NULL),(916,32,120,2,NULL),(917,48,47,2,NULL),(918,64,36,2,NULL),(919,29,49,2,NULL),(920,60,120,2,NULL),(921,51,47,2,NULL),(922,48,49,2,NULL),(923,39,36,2,NULL),(924,65,120,2,NULL),(925,54,47,2,NULL),(926,51,49,2,NULL),(927,28,36,2,NULL),(928,71,120,2,NULL),(929,55,47,2,NULL),(930,54,49,2,NULL),(931,77,36,2,NULL),(932,29,119,2,NULL),(933,55,49,2,NULL),(934,46,36,2,NULL),(935,69,47,2,NULL),(936,48,119,2,NULL),(937,72,47,2,NULL),(938,69,49,2,NULL),(939,57,36,2,NULL),(940,51,119,2,NULL),(941,50,47,2,NULL),(942,72,49,2,NULL),(943,75,36,2,NULL),(944,54,119,2,NULL),(945,53,47,2,NULL),(946,50,49,2,NULL),(947,58,36,2,NULL),(948,55,119,2,NULL),(949,53,49,2,NULL),(950,66,47,2,NULL),(951,10,40,2,NULL),(952,69,119,2,NULL),(953,67,47,2,NULL),(954,18,40,2,NULL),(955,66,49,2,NULL),(956,72,119,2,NULL),(957,37,47,2,NULL),(958,67,49,2,NULL),(959,24,40,2,NULL),(960,32,121,2,NULL),(961,42,47,2,NULL),(962,5,40,2,NULL),(963,37,49,2,NULL),(964,60,121,2,NULL),(965,44,47,2,NULL),(966,42,49,2,NULL),(967,29,40,2,NULL),(968,65,121,2,NULL),(969,44,49,2,NULL),(970,62,47,2,NULL),(971,48,40,2,NULL),(972,71,121,2,NULL),(973,62,49,2,NULL),(974,30,47,2,NULL),(975,51,40,2,NULL),(976,50,119,2,NULL),(977,30,49,2,NULL),(978,52,47,2,NULL),(979,54,40,2,NULL),(980,53,119,2,NULL),(981,41,47,2,NULL),(982,55,40,2,NULL),(983,52,49,2,NULL),(984,66,119,2,NULL),(985,70,47,2,NULL),(986,41,49,2,NULL),(987,69,40,2,NULL),(988,67,119,2,NULL),(989,70,49,2,NULL),(990,43,47,2,NULL),(991,72,40,2,NULL),(992,32,122,2,NULL),(993,50,40,2,NULL),(994,61,47,2,NULL),(995,43,49,2,NULL),(996,60,122,2,NULL),(997,47,47,2,NULL),(998,61,49,2,NULL),(999,53,40,2,NULL),(1000,65,122,2,NULL),(1001,31,47,2,NULL),(1002,47,49,2,NULL),(1003,66,40,2,NULL),(1004,71,122,2,NULL),(1005,31,49,2,NULL),(1006,67,40,2,NULL),(1007,64,47,2,NULL),(1008,37,119,2,NULL),(1009,64,49,2,NULL),(1010,39,47,2,NULL),(1011,37,40,2,NULL),(1012,42,119,2,NULL),(1013,28,47,2,NULL),(1014,42,40,2,NULL),(1015,39,49,2,NULL),(1016,44,119,2,NULL),(1017,28,49,2,NULL),(1018,77,47,2,NULL),(1019,44,40,2,NULL),(1020,62,119,2,NULL),(1021,62,40,2,NULL),(1022,46,47,2,NULL),(1023,77,49,2,NULL),(1024,32,123,2,NULL),(1025,57,47,2,NULL),(1026,46,49,2,NULL),(1027,30,40,2,NULL),(1028,60,123,2,NULL),(1029,75,47,2,NULL),(1030,57,49,2,NULL),(1031,52,40,2,NULL),(1032,65,123,2,NULL),(1033,58,47,2,NULL),(1034,75,49,2,NULL),(1035,41,40,2,NULL),(1036,71,123,2,NULL),(1037,58,49,2,NULL),(1038,10,50,2,NULL),(1039,70,40,2,NULL),(1040,30,119,2,NULL),(1041,43,40,2,NULL),(1042,18,50,2,NULL),(1043,10,51,2,NULL),(1044,52,119,2,NULL),(1045,24,50,2,NULL),(1046,18,51,2,NULL),(1047,61,40,2,NULL),(1048,32,124,2,NULL),(1049,24,51,2,NULL),(1050,5,50,2,NULL),(1051,47,40,2,NULL),(1052,60,124,2,NULL),(1053,31,40,2,NULL),(1054,5,51,2,NULL),(1055,29,50,2,NULL),(1056,65,124,2,NULL),(1057,48,50,2,NULL),(1058,64,40,2,NULL),(1059,29,51,2,NULL),(1060,71,124,2,NULL),(1061,51,50,2,NULL),(1062,39,40,2,NULL),(1063,48,51,2,NULL),(1064,41,119,2,NULL),(1065,54,50,2,NULL),(1066,51,51,2,NULL),(1067,28,40,2,NULL),(1068,32,125,2,NULL),(1069,55,50,2,NULL),(1070,54,51,2,NULL),(1071,77,40,2,NULL),(1072,60,125,2,NULL),(1073,55,51,2,NULL),(1074,46,40,2,NULL),(1075,69,50,2,NULL),(1076,65,125,2,NULL),(1077,72,50,2,NULL),(1078,69,51,2,NULL),(1079,57,40,2,NULL),(1080,71,125,2,NULL),(1081,75,40,2,NULL),(1082,72,51,2,NULL),(1083,50,50,2,NULL),(1084,70,119,2,NULL),(1085,58,40,2,NULL),(1086,32,126,2,NULL),(1087,53,50,2,NULL),(1088,50,51,2,NULL),(1089,10,43,2,NULL),(1090,60,126,2,NULL),(1091,66,50,2,NULL),(1092,53,51,2,NULL),(1093,18,43,2,NULL),(1094,67,50,2,NULL),(1095,65,126,2,NULL),(1096,66,51,2,NULL),(1097,24,43,2,NULL),(1098,71,126,2,NULL),(1099,37,50,2,NULL),(1100,67,51,2,NULL),(1101,5,43,2,NULL),(1102,43,119,2,NULL),(1103,42,50,2,NULL),(1104,37,51,2,NULL),(1105,29,43,2,NULL),(1106,61,119,2,NULL),(1107,44,50,2,NULL),(1108,42,51,2,NULL),(1109,48,43,2,NULL),(1110,32,127,2,NULL),(1111,62,50,2,NULL),(1112,44,51,2,NULL),(1113,51,43,2,NULL),(1114,60,127,2,NULL),(1115,30,50,2,NULL),(1116,62,51,2,NULL),(1117,54,43,2,NULL),(1118,65,127,2,NULL),(1119,30,51,2,NULL),(1120,52,50,2,NULL),(1121,55,43,2,NULL),(1122,71,127,2,NULL),(1123,41,50,2,NULL),(1124,52,51,2,NULL),(1125,69,43,2,NULL),(1126,47,119,2,NULL),(1127,72,43,2,NULL),(1128,41,51,2,NULL),(1129,70,50,2,NULL),(1130,32,128,2,NULL),(1131,70,51,2,NULL),(1132,43,50,2,NULL),(1133,50,43,2,NULL),(1134,60,128,2,NULL),(1135,43,51,2,NULL),(1136,53,43,2,NULL),(1137,61,50,2,NULL),(1138,65,128,2,NULL),(1139,66,43,2,NULL),(1140,61,51,2,NULL),(1141,47,50,2,NULL),(1142,71,128,2,NULL),(1143,31,50,2,NULL),(1144,67,43,2,NULL),(1145,47,51,2,NULL),(1146,31,119,2,NULL),(1147,37,43,2,NULL),(1148,31,51,2,NULL),(1149,64,50,2,NULL),(1150,64,119,2,NULL),(1151,64,51,2,NULL),(1152,39,50,2,NULL),(1153,42,43,2,NULL),(1154,39,119,2,NULL),(1155,28,50,2,NULL),(1156,44,43,2,NULL),(1157,39,51,2,NULL),(1158,28,119,2,NULL),(1159,28,51,2,NULL),(1160,62,43,2,NULL),(1161,77,50,2,NULL),(1162,77,119,2,NULL),(1163,46,50,2,NULL),(1164,77,51,2,NULL),(1165,30,43,2,NULL),(1166,32,134,2,NULL),(1167,57,50,2,NULL),(1168,46,51,2,NULL),(1169,52,43,2,NULL),(1170,60,134,2,NULL),(1171,75,50,2,NULL),(1172,41,43,2,NULL),(1173,57,51,2,NULL),(1174,65,134,2,NULL),(1175,75,51,2,NULL),(1176,58,50,2,NULL),(1177,70,43,2,NULL),(1178,71,134,2,NULL),(1179,58,51,2,NULL),(1180,10,53,2,NULL),(1181,43,43,2,NULL),(1182,46,119,2,NULL),(1183,18,53,2,NULL),(1184,61,43,2,NULL),(1185,10,54,2,NULL),(1186,57,119,2,NULL),(1187,18,54,2,NULL),(1188,24,53,2,NULL),(1189,47,43,2,NULL),(1190,75,119,2,NULL),(1191,5,53,2,NULL),(1192,24,54,2,NULL),(1193,31,43,2,NULL),(1194,32,135,2,NULL),(1195,64,43,2,NULL),(1196,5,54,2,NULL),(1197,29,53,2,NULL),(1198,60,135,2,NULL),(1199,39,43,2,NULL),(1200,48,53,2,NULL),(1201,29,54,2,NULL),(1202,65,135,2,NULL),(1203,51,53,2,NULL),(1204,28,43,2,NULL),(1205,48,54,2,NULL),(1206,71,135,2,NULL),(1207,54,53,2,NULL),(1208,77,43,2,NULL),(1209,51,54,2,NULL),(1210,58,119,2,NULL),(1211,55,53,2,NULL),(1212,54,54,2,NULL),(1213,46,43,2,NULL),(1214,32,136,2,NULL),(1215,57,43,2,NULL),(1216,55,54,2,NULL),(1217,69,53,2,NULL),(1218,60,136,2,NULL),(1219,72,53,2,NULL),(1220,69,54,2,NULL),(1221,75,43,2,NULL),(1222,65,136,2,NULL),(1223,50,53,2,NULL),(1224,72,54,2,NULL),(1225,58,43,2,NULL),(1226,71,136,2,NULL),(1227,50,54,2,NULL),(1228,53,53,2,NULL),(1229,10,45,2,NULL),(1230,32,137,2,NULL),(1231,53,54,2,NULL),(1232,66,53,2,NULL),(1233,18,45,2,NULL),(1234,60,137,2,NULL),(1235,66,54,2,NULL),(1236,67,53,2,NULL),(1237,24,45,2,NULL),(1238,65,137,2,NULL),(1239,5,1,2,NULL),(1240,67,54,2,NULL),(1241,5,45,2,NULL),(1242,37,53,2,NULL),(1243,71,137,2,NULL),(1244,10,12,2,NULL),(1245,42,53,2,NULL),(1246,37,54,2,NULL),(1247,29,45,2,NULL),(1248,32,138,2,NULL),(1249,18,12,2,NULL),(1250,42,54,2,NULL),(1251,44,53,2,NULL),(1252,48,45,2,NULL),(1253,10,1,2,NULL),(1254,24,12,2,NULL),(1255,44,54,2,NULL),(1256,62,53,2,NULL),(1257,51,45,2,NULL),(1258,5,23,2,NULL),(1259,18,1,2,NULL),(1260,30,53,2,NULL),(1261,62,54,2,NULL),(1262,54,45,2,NULL),(1263,60,138,2,NULL),(1264,5,28,2,NULL),(1265,24,1,2,NULL),(1266,52,53,2,NULL),(1267,30,54,2,NULL),(1268,65,138,2,NULL),(1269,55,45,2,NULL),(1270,5,33,2,NULL),(1271,29,1,2,NULL),(1272,71,138,2,NULL),(1273,41,53,2,NULL),(1274,52,54,2,NULL),(1275,69,45,2,NULL),(1276,5,82,2,NULL),(1277,48,1,2,NULL),(1278,32,139,2,NULL),(1279,72,45,2,NULL),(1280,70,53,2,NULL),(1281,41,54,2,NULL),(1282,51,1,2,NULL),(1283,5,56,2,NULL),(1284,60,139,2,NULL),(1285,43,53,2,NULL),(1286,70,54,2,NULL),(1287,50,45,2,NULL),(1288,5,59,2,NULL),(1289,54,1,2,NULL),(1290,65,139,2,NULL),(1291,43,54,2,NULL),(1292,53,45,2,NULL),(1293,61,53,2,NULL),(1294,5,62,2,NULL),(1295,55,1,2,NULL),(1296,71,139,2,NULL),(1297,47,53,2,NULL),(1298,61,54,2,NULL),(1299,66,45,2,NULL),(1300,5,65,2,NULL),(1301,69,1,2,NULL),(1302,31,53,2,NULL),(1303,67,45,2,NULL),(1304,47,54,2,NULL),(1305,72,1,2,NULL),(1306,5,68,2,NULL),(1307,50,1,2,NULL),(1308,10,120,2,NULL),(1309,64,53,2,NULL),(1310,31,54,2,NULL),(1311,37,45,2,NULL),(1312,53,1,2,NULL),(1313,5,71,2,NULL),(1314,18,120,2,NULL),(1315,39,53,2,NULL),(1316,64,54,2,NULL),(1317,42,45,2,NULL),(1318,5,74,2,NULL),(1319,66,1,2,NULL),(1320,24,120,2,NULL),(1321,44,45,2,NULL),(1322,28,53,2,NULL),(1323,39,54,2,NULL),(1324,67,1,2,NULL),(1325,5,48,2,NULL),(1326,29,23,2,NULL),(1327,62,45,2,NULL),(1328,77,53,2,NULL),(1329,28,54,2,NULL),(1330,5,52,2,NULL),(1331,37,1,2,NULL),(1332,48,23,2,NULL),(1333,46,53,2,NULL),(1334,77,54,2,NULL),(1335,30,45,2,NULL),(1336,5,55,2,NULL),(1337,42,1,2,NULL),(1338,51,23,2,NULL),(1339,57,53,2,NULL),(1340,46,54,2,NULL),(1341,52,45,2,NULL),(1342,5,58,2,NULL),(1343,44,1,2,NULL),(1344,54,23,2,NULL),(1345,41,45,2,NULL),(1346,57,54,2,NULL),(1347,75,53,2,NULL),(1348,62,1,2,NULL),(1349,5,60,2,NULL),(1350,75,54,2,NULL),(1351,55,23,2,NULL),(1352,58,53,2,NULL),(1353,70,45,2,NULL),(1354,5,63,2,NULL),(1355,30,1,2,NULL),(1356,69,23,2,NULL),(1357,10,56,2,NULL),(1358,58,54,2,NULL),(1359,43,45,2,NULL),(1360,52,1,2,NULL),(1361,5,66,2,NULL),(1362,72,23,2,NULL),(1363,18,56,2,NULL),(1364,10,57,2,NULL),(1365,61,45,2,NULL),(1366,5,69,2,NULL),(1367,41,1,2,NULL),(1368,47,45,2,NULL),(1369,29,12,2,NULL),(1370,18,57,2,NULL),(1371,24,56,2,NULL),(1372,5,72,2,NULL),(1373,70,1,2,NULL),(1374,48,12,2,NULL),(1375,24,57,2,NULL),(1376,31,45,2,NULL),(1377,29,56,2,NULL),(1378,43,1,2,NULL),(1379,5,75,2,NULL),(1380,51,12,2,NULL),(1381,48,56,2,NULL),(1382,64,45,2,NULL),(1383,5,57,2,NULL),(1384,61,1,2,NULL),(1385,5,61,2,NULL),(1386,54,12,2,NULL),(1387,51,56,2,NULL),(1388,39,45,2,NULL),(1389,29,57,2,NULL),(1390,47,1,2,NULL),(1391,5,64,2,NULL),(1392,55,12,2,NULL),(1393,54,56,2,NULL),(1394,48,57,2,NULL),(1395,28,45,2,NULL),(1396,5,67,2,NULL),(1397,31,1,2,NULL),(1398,69,12,2,NULL),(1399,77,45,2,NULL),(1400,55,56,2,NULL),(1401,51,57,2,NULL),(1402,5,70,2,NULL),(1403,64,1,2,NULL),(1404,72,12,2,NULL),(1405,46,45,2,NULL),(1406,69,56,2,NULL),(1407,54,57,2,NULL),(1408,5,73,2,NULL),(1409,39,1,2,NULL),(1410,5,120,2,NULL),(1411,55,57,2,NULL),(1412,72,56,2,NULL),(1413,57,45,2,NULL),(1414,5,76,2,NULL),(1415,28,1,2,NULL),(1416,29,28,2,NULL),(1417,75,45,2,NULL),(1418,50,56,2,NULL),(1419,69,57,2,NULL),(1420,5,77,2,NULL),(1421,77,1,2,NULL),(1422,53,56,2,NULL),(1423,48,28,2,NULL),(1424,72,57,2,NULL),(1425,58,45,2,NULL),(1426,5,78,2,NULL),(1427,46,1,2,NULL),(1428,66,56,2,NULL),(1429,51,28,2,NULL),(1430,50,57,2,NULL),(1431,10,48,2,NULL),(1432,57,1,2,NULL),(1433,5,83,2,NULL),(1434,67,56,2,NULL),(1435,54,28,2,NULL),(1436,53,57,2,NULL),(1437,18,48,2,NULL),(1438,75,1,2,NULL),(1439,5,121,2,NULL),(1440,55,28,2,NULL),(1441,24,48,2,NULL),(1442,37,56,2,NULL),(1443,66,57,2,NULL),(1444,50,12,2,NULL),(1445,58,1,2,NULL),(1446,42,56,2,NULL),(1447,69,28,2,NULL),(1448,67,57,2,NULL),(1449,29,48,2,NULL),(1450,53,12,2,NULL),(1451,21,3,2,NULL),(1452,44,56,2,NULL),(1453,72,28,2,NULL),(1454,37,57,2,NULL),(1455,48,48,2,NULL),(1456,66,12,2,NULL),(1457,7,2,2,NULL),(1458,42,57,2,NULL),(1459,29,33,2,NULL),(1460,62,56,2,NULL),(1461,51,48,2,NULL),(1462,67,12,2,NULL),(1463,8,4,2,NULL),(1464,54,48,2,NULL),(1465,48,33,2,NULL),(1466,30,56,2,NULL),(1467,44,57,2,NULL),(1468,5,122,2,NULL),(1469,9,4,2,NULL),(1470,51,33,2,NULL),(1471,62,57,2,NULL),(1472,52,56,2,NULL),(1473,55,48,2,NULL),(1474,37,12,2,NULL),(1475,11,10,2,NULL),(1476,69,48,2,NULL),(1477,30,57,2,NULL),(1478,54,33,2,NULL),(1479,41,56,2,NULL),(1480,42,12,2,NULL),(1481,12,5,2,NULL),(1482,55,33,2,NULL),(1483,70,56,2,NULL),(1484,72,48,2,NULL),(1485,52,57,2,NULL),(1486,44,12,2,NULL),(1487,13,5,2,NULL),(1488,69,33,2,NULL),(1489,43,56,2,NULL),(1490,41,57,2,NULL),(1491,50,48,2,NULL),(1492,62,12,2,NULL),(1493,15,7,2,NULL),(1494,72,33,2,NULL),(1495,61,56,2,NULL),(1496,70,57,2,NULL),(1497,53,48,2,NULL),(1498,5,123,2,NULL),(1499,16,7,2,NULL),(1500,47,56,2,NULL),(1501,43,57,2,NULL),(1502,29,82,2,NULL),(1503,66,48,2,NULL),(1504,19,11,2,NULL),(1505,30,12,2,NULL),(1506,48,82,2,NULL),(1507,67,48,2,NULL),(1508,31,56,2,NULL),(1509,61,57,2,NULL),(1510,52,12,2,NULL),(1511,22,4,2,NULL),(1512,51,82,2,NULL),(1513,64,56,2,NULL),(1514,37,48,2,NULL),(1515,47,57,2,NULL),(1516,5,124,2,NULL),(1517,23,4,2,NULL),(1518,54,82,2,NULL),(1519,39,56,2,NULL),(1520,31,57,2,NULL),(1521,42,48,2,NULL),(1522,25,13,2,NULL),(1523,41,12,2,NULL),(1524,55,82,2,NULL),(1525,64,57,2,NULL),(1526,28,56,2,NULL),(1527,44,48,2,NULL),(1528,5,125,2,NULL),(1529,10,23,2,NULL),(1530,69,82,2,NULL),(1531,39,57,2,NULL),(1532,77,56,2,NULL),(1533,62,48,2,NULL),(1534,70,12,2,NULL),(1535,18,23,2,NULL),(1536,46,56,2,NULL),(1537,30,48,2,NULL),(1538,72,82,2,NULL),(1539,28,57,2,NULL),(1540,24,23,2,NULL),(1541,5,126,2,NULL),(1542,57,56,2,NULL),(1543,77,57,2,NULL),(1544,52,48,2,NULL),(1545,43,12,2,NULL),(1546,10,28,2,NULL),(1547,29,59,2,NULL),(1548,75,56,2,NULL),(1549,46,57,2,NULL),(1550,41,48,2,NULL),(1551,18,28,2,NULL),(1552,61,12,2,NULL),(1553,48,59,2,NULL),(1554,58,56,2,NULL),(1555,70,48,2,NULL),(1556,57,57,2,NULL),(1557,5,127,2,NULL),(1558,24,28,2,NULL),(1559,51,59,2,NULL),(1560,75,57,2,NULL),(1561,10,59,2,NULL),(1562,43,48,2,NULL),(1563,47,12,2,NULL),(1564,10,33,2,NULL),(1565,54,59,2,NULL),(1566,58,57,2,NULL),(1567,61,48,2,NULL),(1568,18,59,2,NULL),(1569,5,128,2,NULL),(1570,18,33,2,NULL),(1571,55,59,2,NULL),(1572,24,59,2,NULL),(1573,10,61,2,NULL),(1574,47,48,2,NULL),(1575,24,33,2,NULL),(1576,31,12,2,NULL),(1577,69,59,2,NULL),(1578,18,61,2,NULL),(1579,31,48,2,NULL),(1580,72,59,2,NULL),(1581,64,12,2,NULL),(1582,10,82,2,NULL),(1583,29,62,2,NULL),(1584,50,59,2,NULL),(1585,24,61,2,NULL),(1586,64,48,2,NULL),(1587,39,12,2,NULL),(1588,18,82,2,NULL),(1589,48,62,2,NULL),(1590,53,59,2,NULL),(1591,39,48,2,NULL),(1592,29,61,2,NULL),(1593,24,82,2,NULL),(1594,28,12,2,NULL),(1595,51,62,2,NULL),(1596,48,61,2,NULL),(1597,66,59,2,NULL),(1598,28,48,2,NULL),(1599,77,12,2,NULL),(1600,10,62,2,NULL),(1601,54,62,2,NULL),(1602,51,61,2,NULL),(1603,67,59,2,NULL),(1604,77,48,2,NULL),(1605,5,134,2,NULL),(1606,18,62,2,NULL),(1607,55,62,2,NULL),(1608,37,59,2,NULL),(1609,54,61,2,NULL),(1610,46,48,2,NULL),(1611,24,62,2,NULL),(1612,46,12,2,NULL),(1613,69,62,2,NULL),(1614,57,48,2,NULL),(1615,42,59,2,NULL),(1616,55,61,2,NULL),(1617,10,65,2,NULL),(1618,57,12,2,NULL),(1619,72,62,2,NULL),(1620,75,48,2,NULL),(1621,69,61,2,NULL),(1622,44,59,2,NULL),(1623,18,65,2,NULL),(1624,75,12,2,NULL),(1625,29,65,2,NULL),(1626,62,59,2,NULL),(1627,72,61,2,NULL),(1628,58,48,2,NULL),(1629,5,135,2,NULL),(1630,24,65,2,NULL),(1631,48,65,2,NULL),(1632,50,61,2,NULL),(1633,30,59,2,NULL),(1634,10,52,2,NULL),(1635,10,68,2,NULL),(1636,58,12,2,NULL),(1637,51,65,2,NULL),(1638,53,61,2,NULL),(1639,52,59,2,NULL),(1640,18,52,2,NULL),(1641,18,68,2,NULL),(1642,5,136,2,NULL),(1643,54,65,2,NULL),(1644,41,59,2,NULL),(1645,66,61,2,NULL),(1646,24,52,2,NULL),(1647,5,137,2,NULL),(1648,24,68,2,NULL),(1649,55,65,2,NULL),(1650,70,59,2,NULL),(1651,67,61,2,NULL),(1652,29,52,2,NULL),(1653,5,138,2,NULL),(1654,10,71,2,NULL),(1655,69,65,2,NULL),(1656,43,59,2,NULL),(1657,37,61,2,NULL),(1658,48,52,2,NULL),(1659,18,71,2,NULL),(1660,5,139,2,NULL),(1661,72,65,2,NULL),(1662,42,61,2,NULL),(1663,61,59,2,NULL),(1664,51,52,2,NULL),(1665,24,71,2,NULL),(1666,1,20,2,NULL),(1667,29,68,2,NULL),(1668,47,59,2,NULL),(1669,44,61,2,NULL),(1670,54,52,2,NULL),(1671,10,74,2,NULL),(1672,4,24,2,NULL),(1673,48,68,2,NULL),(1674,62,61,2,NULL),(1675,31,59,2,NULL),(1676,55,52,2,NULL),(1677,18,74,2,NULL),(1678,50,28,2,NULL),(1679,51,68,2,NULL),(1680,30,61,2,NULL),(1681,64,59,2,NULL),(1682,69,52,2,NULL),(1683,53,28,2,NULL),(1684,24,74,2,NULL),(1685,54,68,2,NULL),(1686,72,52,2,NULL),(1687,52,61,2,NULL),(1688,39,59,2,NULL),(1689,66,28,2,NULL),(1690,10,55,2,NULL),(1691,55,68,2,NULL),(1692,50,52,2,NULL),(1693,41,61,2,NULL),(1694,67,28,2,NULL),(1695,69,68,2,NULL),(1696,70,61,2,NULL),(1697,53,52,2,NULL),(1698,18,55,2,NULL),(1699,37,28,2,NULL),(1700,72,68,2,NULL),(1701,43,61,2,NULL),(1702,24,55,2,NULL),(1703,66,52,2,NULL),(1704,28,59,2,NULL),(1705,42,28,2,NULL),(1706,29,71,2,NULL),(1707,61,61,2,NULL),(1708,77,59,2,NULL),(1709,67,52,2,NULL),(1710,10,58,2,NULL),(1711,44,28,2,NULL),(1712,48,71,2,NULL),(1713,46,59,2,NULL),(1714,47,61,2,NULL),(1715,18,58,2,NULL),(1716,37,52,2,NULL),(1717,62,28,2,NULL),(1718,51,71,2,NULL),(1719,31,61,2,NULL),(1720,57,59,2,NULL),(1721,24,58,2,NULL),(1722,42,52,2,NULL),(1723,30,28,2,NULL),(1724,54,71,2,NULL),(1725,64,61,2,NULL),(1726,75,59,2,NULL),(1727,10,60,2,NULL),(1728,44,52,2,NULL),(1729,52,28,2,NULL),(1730,55,71,2,NULL),(1731,39,61,2,NULL),(1732,58,59,2,NULL),(1733,62,52,2,NULL),(1734,18,60,2,NULL),(1735,41,28,2,NULL),(1736,69,71,2,NULL),(1737,28,61,2,NULL),(1738,30,52,2,NULL),(1739,24,60,2,NULL),(1740,50,62,2,NULL),(1741,70,28,2,NULL),(1742,72,71,2,NULL),(1743,77,61,2,NULL),(1744,53,62,2,NULL),(1745,52,52,2,NULL),(1746,10,63,2,NULL),(1747,43,28,2,NULL),(1748,29,74,2,NULL),(1749,46,61,2,NULL),(1750,41,52,2,NULL),(1751,66,62,2,NULL),(1752,18,63,2,NULL),(1753,61,28,2,NULL),(1754,67,62,2,NULL),(1755,70,52,2,NULL),(1756,57,61,2,NULL),(1757,24,63,2,NULL),(1758,48,74,2,NULL),(1759,47,28,2,NULL),(1760,10,66,2,NULL),(1761,75,61,2,NULL),(1762,51,74,2,NULL),(1763,37,62,2,NULL),(1764,43,52,2,NULL),(1765,31,28,2,NULL),(1766,61,52,2,NULL),(1767,58,61,2,NULL),(1768,54,74,2,NULL),(1769,42,62,2,NULL),(1770,18,66,2,NULL),(1771,64,28,2,NULL),(1772,47,52,2,NULL),(1773,24,66,2,NULL),(1774,10,64,2,NULL),(1775,55,74,2,NULL),(1776,44,62,2,NULL),(1777,39,28,2,NULL),(1778,18,64,2,NULL),(1779,62,62,2,NULL),(1780,31,52,2,NULL),(1781,69,74,2,NULL),(1782,10,69,2,NULL),(1783,28,28,2,NULL),(1784,24,64,2,NULL),(1785,72,74,2,NULL),(1786,30,62,2,NULL),(1787,64,52,2,NULL),(1788,18,69,2,NULL),(1789,77,28,2,NULL),(1790,52,62,2,NULL),(1791,39,52,2,NULL),(1792,24,69,2,NULL),(1793,29,64,2,NULL),(1794,46,28,2,NULL),(1795,29,55,2,NULL),(1796,48,64,2,NULL),(1797,41,62,2,NULL),(1798,28,52,2,NULL),(1799,10,72,2,NULL),(1800,48,55,2,NULL),(1801,57,28,2,NULL),(1802,51,64,2,NULL),(1803,70,62,2,NULL),(1804,77,52,2,NULL),(1805,18,72,2,NULL),(1806,51,55,2,NULL),(1807,75,28,2,NULL),(1808,54,64,2,NULL),(1809,43,62,2,NULL),(1810,46,52,2,NULL),(1811,24,72,2,NULL),(1812,54,55,2,NULL),(1813,58,28,2,NULL),(1814,61,62,2,NULL),(1815,10,75,2,NULL),(1816,55,64,2,NULL),(1817,57,52,2,NULL),(1818,55,55,2,NULL),(1819,2,26,2,NULL),(1820,47,62,2,NULL),(1821,69,64,2,NULL),(1822,75,52,2,NULL),(1823,18,75,2,NULL),(1824,69,55,2,NULL),(1825,50,33,2,NULL),(1826,31,62,2,NULL),(1827,72,64,2,NULL),(1828,58,52,2,NULL),(1829,24,75,2,NULL),(1830,72,55,2,NULL),(1831,53,33,2,NULL),(1832,64,62,2,NULL),(1833,50,64,2,NULL),(1834,50,55,2,NULL),(1835,29,58,2,NULL),(1836,66,33,2,NULL),(1837,10,67,2,NULL),(1838,39,62,2,NULL),(1839,48,58,2,NULL),(1840,53,55,2,NULL),(1841,67,33,2,NULL),(1842,18,67,2,NULL),(1843,53,64,2,NULL),(1844,28,62,2,NULL),(1845,51,58,2,NULL),(1846,66,64,2,NULL),(1847,24,67,2,NULL),(1848,37,33,2,NULL),(1849,66,55,2,NULL),(1850,77,62,2,NULL),(1851,54,58,2,NULL),(1852,10,70,2,NULL),(1853,42,33,2,NULL),(1854,67,64,2,NULL),(1855,67,55,2,NULL),(1856,46,62,2,NULL),(1857,55,58,2,NULL),(1858,37,64,2,NULL),(1859,57,62,2,NULL),(1860,44,33,2,NULL),(1861,18,70,2,NULL),(1862,37,55,2,NULL),(1863,69,58,2,NULL),(1864,75,62,2,NULL),(1865,42,64,2,NULL),(1866,42,55,2,NULL),(1867,24,70,2,NULL),(1868,62,33,2,NULL),(1869,72,58,2,NULL),(1870,44,64,2,NULL),(1871,10,73,2,NULL),(1872,58,62,2,NULL),(1873,44,55,2,NULL),(1874,30,33,2,NULL),(1875,29,60,2,NULL),(1876,62,64,2,NULL),(1877,62,55,2,NULL),(1878,18,73,2,NULL),(1879,52,33,2,NULL),(1880,50,65,2,NULL),(1881,48,60,2,NULL),(1882,30,64,2,NULL),(1883,53,65,2,NULL),(1884,41,33,2,NULL),(1885,30,55,2,NULL),(1886,24,73,2,NULL),(1887,51,60,2,NULL),(1888,52,64,2,NULL),(1889,70,33,2,NULL),(1890,52,55,2,NULL),(1891,66,65,2,NULL),(1892,10,76,2,NULL),(1893,54,60,2,NULL),(1894,41,55,2,NULL),(1895,67,65,2,NULL),(1896,43,33,2,NULL),(1897,41,64,2,NULL),(1898,18,76,2,NULL),(1899,55,60,2,NULL),(1900,37,65,2,NULL),(1901,70,55,2,NULL),(1902,70,64,2,NULL),(1903,24,76,2,NULL),(1904,61,33,2,NULL),(1905,69,60,2,NULL),(1906,43,64,2,NULL),(1907,43,55,2,NULL),(1908,42,65,2,NULL),(1909,47,33,2,NULL),(1910,10,77,2,NULL),(1911,72,60,2,NULL),(1912,44,65,2,NULL),(1913,61,64,2,NULL),(1914,61,55,2,NULL),(1915,18,77,2,NULL),(1916,31,33,2,NULL),(1917,29,63,2,NULL),(1918,47,64,2,NULL),(1919,62,65,2,NULL),(1920,24,77,2,NULL),(1921,47,55,2,NULL),(1922,64,33,2,NULL),(1923,48,63,2,NULL),(1924,31,64,2,NULL),(1925,30,65,2,NULL),(1926,10,78,2,NULL),(1927,31,55,2,NULL),(1928,39,33,2,NULL),(1929,51,63,2,NULL),(1930,52,65,2,NULL),(1931,64,64,2,NULL),(1932,64,55,2,NULL),(1933,28,33,2,NULL),(1934,18,78,2,NULL),(1935,54,63,2,NULL),(1936,41,65,2,NULL),(1937,39,55,2,NULL),(1938,77,33,2,NULL),(1939,39,64,2,NULL),(1940,24,78,2,NULL),(1941,55,63,2,NULL),(1942,28,64,2,NULL),(1943,70,65,2,NULL),(1944,28,55,2,NULL),(1945,46,33,2,NULL),(1946,10,83,2,NULL),(1947,69,63,2,NULL),(1948,77,64,2,NULL),(1949,18,83,2,NULL),(1950,57,33,2,NULL),(1951,43,65,2,NULL),(1952,77,55,2,NULL),(1953,72,63,2,NULL),(1954,61,65,2,NULL),(1955,75,33,2,NULL),(1956,46,55,2,NULL),(1957,46,64,2,NULL),(1958,24,83,2,NULL),(1959,29,66,2,NULL),(1960,57,55,2,NULL),(1961,57,64,2,NULL),(1962,47,65,2,NULL),(1963,58,33,2,NULL),(1964,10,121,2,NULL),(1965,48,66,2,NULL),(1966,75,55,2,NULL),(1967,31,65,2,NULL),(1968,75,64,2,NULL),(1969,18,121,2,NULL),(1970,50,82,2,NULL),(1971,51,66,2,NULL),(1972,58,64,2,NULL),(1973,24,121,2,NULL),(1974,58,55,2,NULL),(1975,64,65,2,NULL),(1976,53,82,2,NULL),(1977,54,66,2,NULL),(1978,10,122,2,NULL),(1979,66,82,2,NULL),(1980,39,65,2,NULL),(1981,29,67,2,NULL),(1982,50,58,2,NULL),(1983,55,66,2,NULL),(1984,53,58,2,NULL),(1985,48,67,2,NULL),(1986,28,65,2,NULL),(1987,18,122,2,NULL),(1988,67,82,2,NULL),(1989,69,66,2,NULL),(1990,51,67,2,NULL),(1991,66,58,2,NULL),(1992,77,65,2,NULL),(1993,24,122,2,NULL),(1994,37,82,2,NULL),(1995,72,66,2,NULL),(1996,54,67,2,NULL),(1997,67,58,2,NULL),(1998,46,65,2,NULL),(1999,10,123,2,NULL),(2000,42,82,2,NULL),(2001,29,69,2,NULL),(2002,57,65,2,NULL),(2003,55,67,2,NULL),(2004,18,123,2,NULL),(2005,37,58,2,NULL),(2006,44,82,2,NULL),(2007,48,69,2,NULL),(2008,42,58,2,NULL),(2009,75,65,2,NULL),(2010,69,67,2,NULL),(2011,24,123,2,NULL),(2012,62,82,2,NULL),(2013,51,69,2,NULL),(2014,72,67,2,NULL),(2015,58,65,2,NULL),(2016,44,58,2,NULL),(2017,10,124,2,NULL),(2018,30,82,2,NULL),(2019,54,69,2,NULL),(2020,62,58,2,NULL),(2021,18,124,2,NULL),(2022,52,82,2,NULL),(2023,50,67,2,NULL),(2024,50,68,2,NULL),(2025,55,69,2,NULL),(2026,53,68,2,NULL),(2027,53,67,2,NULL),(2028,30,58,2,NULL),(2029,24,124,2,NULL),(2030,41,82,2,NULL),(2031,69,69,2,NULL),(2032,66,67,2,NULL),(2033,70,82,2,NULL),(2034,66,68,2,NULL),(2035,52,58,2,NULL),(2036,10,125,2,NULL),(2037,72,69,2,NULL),(2038,67,68,2,NULL),(2039,67,67,2,NULL),(2040,41,58,2,NULL),(2041,43,82,2,NULL),(2042,18,125,2,NULL),(2043,29,72,2,NULL),(2044,70,58,2,NULL),(2045,37,68,2,NULL),(2046,37,67,2,NULL),(2047,24,125,2,NULL),(2048,61,82,2,NULL),(2049,48,72,2,NULL),(2050,42,68,2,NULL),(2051,10,126,2,NULL),(2052,47,82,2,NULL),(2053,43,58,2,NULL),(2054,42,67,2,NULL),(2055,51,72,2,NULL),(2056,61,58,2,NULL),(2057,44,67,2,NULL),(2058,44,68,2,NULL),(2059,18,126,2,NULL),(2060,31,82,2,NULL),(2061,54,72,2,NULL),(2062,47,58,2,NULL),(2063,62,68,2,NULL),(2064,24,126,2,NULL),(2065,64,82,2,NULL),(2066,62,67,2,NULL),(2067,55,72,2,NULL),(2068,31,58,2,NULL),(2069,30,68,2,NULL),(2070,10,127,2,NULL),(2071,39,82,2,NULL),(2072,69,72,2,NULL),(2073,52,68,2,NULL),(2074,64,58,2,NULL),(2075,18,127,2,NULL),(2076,28,82,2,NULL),(2077,72,72,2,NULL),(2078,41,68,2,NULL),(2079,39,58,2,NULL),(2080,24,127,2,NULL),(2081,77,82,2,NULL),(2082,30,67,2,NULL),(2083,29,75,2,NULL),(2084,28,58,2,NULL),(2085,10,128,2,NULL),(2086,46,82,2,NULL),(2087,52,67,2,NULL),(2088,70,68,2,NULL),(2089,48,75,2,NULL),(2090,77,58,2,NULL),(2091,41,67,2,NULL),(2092,18,128,2,NULL),(2093,57,82,2,NULL),(2094,43,68,2,NULL),(2095,51,75,2,NULL),(2096,46,58,2,NULL),(2097,70,67,2,NULL),(2098,61,68,2,NULL),(2099,24,128,2,NULL),(2100,75,82,2,NULL),(2101,54,75,2,NULL),(2102,47,68,2,NULL),(2103,57,58,2,NULL),(2104,10,134,2,NULL),(2105,43,67,2,NULL),(2106,58,82,2,NULL),(2107,55,75,2,NULL),(2108,75,58,2,NULL),(2109,61,67,2,NULL),(2110,31,68,2,NULL),(2111,18,134,2,NULL),(2112,69,75,2,NULL),(2113,58,58,2,NULL),(2114,47,67,2,NULL),(2115,24,134,2,NULL),(2116,64,68,2,NULL),(2117,72,75,2,NULL),(2118,39,68,2,NULL),(2119,31,67,2,NULL),(2120,10,135,2,NULL),(2121,50,60,2,NULL),(2122,53,60,2,NULL),(2123,28,68,2,NULL),(2124,64,67,2,NULL),(2125,18,135,2,NULL),(2126,66,60,2,NULL),(2127,39,67,2,NULL),(2128,24,135,2,NULL),(2129,77,68,2,NULL),(2130,67,60,2,NULL),(2131,29,70,2,NULL),(2132,28,67,2,NULL),(2133,46,68,2,NULL),(2134,10,136,2,NULL),(2135,37,60,2,NULL),(2136,48,70,2,NULL),(2137,57,68,2,NULL),(2138,18,136,2,NULL),(2139,77,67,2,NULL),(2140,42,60,2,NULL),(2141,51,70,2,NULL),(2142,75,68,2,NULL),(2143,24,136,2,NULL),(2144,46,67,2,NULL),(2145,54,70,2,NULL),(2146,44,60,2,NULL),(2147,58,68,2,NULL),(2148,57,67,2,NULL),(2149,10,137,2,NULL),(2150,55,70,2,NULL),(2151,62,60,2,NULL),(2152,75,67,2,NULL),(2153,18,137,2,NULL),(2154,50,71,2,NULL),(2155,69,70,2,NULL),(2156,30,60,2,NULL),(2157,24,137,2,NULL),(2158,53,71,2,NULL),(2159,58,67,2,NULL),(2160,72,70,2,NULL),(2161,52,60,2,NULL),(2162,10,138,2,NULL),(2163,66,71,2,NULL),(2164,29,73,2,NULL),(2165,41,60,2,NULL),(2166,50,70,2,NULL),(2167,67,71,2,NULL),(2168,18,138,2,NULL),(2169,48,73,2,NULL),(2170,70,60,2,NULL),(2171,53,70,2,NULL),(2172,37,71,2,NULL),(2173,24,138,2,NULL),(2174,43,60,2,NULL),(2175,51,73,2,NULL),(2176,66,70,2,NULL),(2177,42,71,2,NULL),(2178,10,139,2,NULL),(2179,67,70,2,NULL),(2180,54,73,2,NULL),(2181,61,60,2,NULL),(2182,44,71,2,NULL),(2183,18,139,2,NULL),(2184,37,70,2,NULL),(2185,55,73,2,NULL),(2186,47,60,2,NULL),(2187,62,71,2,NULL),(2188,24,139,2,NULL),(2189,69,73,2,NULL),(2190,42,70,2,NULL),(2191,31,60,2,NULL),(2192,30,71,2,NULL),(2193,14,6,2,NULL),(2194,72,73,2,NULL),(2195,44,70,2,NULL),(2196,64,60,2,NULL),(2197,52,71,2,NULL),(2198,20,8,2,NULL),(2199,29,76,2,NULL),(2200,39,60,2,NULL),(2201,62,70,2,NULL),(2202,41,71,2,NULL),(2203,50,23,2,NULL),(2204,48,76,2,NULL),(2205,28,60,2,NULL),(2206,30,70,2,NULL),(2207,70,71,2,NULL),(2208,53,23,2,NULL),(2209,52,70,2,NULL),(2210,77,60,2,NULL),(2211,51,76,2,NULL),(2212,43,71,2,NULL),(2213,66,23,2,NULL),(2214,46,60,2,NULL),(2215,41,70,2,NULL),(2216,54,76,2,NULL),(2217,61,71,2,NULL),(2218,67,23,2,NULL),(2219,70,70,2,NULL),(2220,57,60,2,NULL),(2221,55,76,2,NULL),(2222,47,71,2,NULL),(2223,37,23,2,NULL),(2224,69,76,2,NULL),(2225,75,60,2,NULL),(2226,43,70,2,NULL),(2227,31,71,2,NULL),(2228,42,23,2,NULL),(2229,72,76,2,NULL),(2230,58,60,2,NULL),(2231,61,70,2,NULL),(2232,64,71,2,NULL),(2233,44,23,2,NULL),(2234,29,77,2,NULL),(2235,47,70,2,NULL),(2236,50,63,2,NULL),(2237,39,71,2,NULL),(2238,62,23,2,NULL),(2239,48,77,2,NULL),(2240,53,63,2,NULL),(2241,31,70,2,NULL),(2242,28,71,2,NULL),(2243,30,23,2,NULL),(2244,66,63,2,NULL),(2245,64,70,2,NULL),(2246,51,77,2,NULL),(2247,77,71,2,NULL),(2248,52,23,2,NULL),(2249,67,63,2,NULL),(2250,39,70,2,NULL),(2251,54,77,2,NULL),(2252,46,71,2,NULL),(2253,41,23,2,NULL),(2254,55,77,2,NULL),(2255,37,63,2,NULL),(2256,28,70,2,NULL),(2257,57,71,2,NULL),(2258,70,23,2,NULL),(2259,69,77,2,NULL),(2260,42,63,2,NULL),(2261,77,70,2,NULL),(2262,75,71,2,NULL),(2263,43,23,2,NULL),(2264,72,77,2,NULL),(2265,46,70,2,NULL),(2266,44,63,2,NULL),(2267,58,71,2,NULL),(2268,61,23,2,NULL),(2269,29,78,2,NULL),(2270,57,70,2,NULL),(2271,62,63,2,NULL),(2272,47,23,2,NULL),(2273,30,63,2,NULL),(2274,75,70,2,NULL),(2275,50,74,2,NULL),(2276,48,78,2,NULL),(2277,31,23,2,NULL),(2278,51,78,2,NULL),(2279,58,70,2,NULL),(2280,52,63,2,NULL),(2281,53,74,2,NULL),(2282,64,23,2,NULL),(2283,54,78,2,NULL),(2284,66,74,2,NULL),(2285,41,63,2,NULL),(2286,50,73,2,NULL),(2287,39,23,2,NULL),(2288,53,73,2,NULL),(2289,70,63,2,NULL),(2290,55,78,2,NULL),(2291,67,74,2,NULL),(2292,28,23,2,NULL),(2293,66,73,2,NULL),(2294,43,63,2,NULL),(2295,69,78,2,NULL),(2296,37,74,2,NULL),(2297,77,23,2,NULL),(2298,67,73,2,NULL),(2299,72,78,2,NULL),(2300,61,63,2,NULL),(2301,42,74,2,NULL),(2302,46,23,2,NULL),(2303,37,73,2,NULL),(2304,47,63,2,NULL),(2305,29,83,2,NULL),(2306,44,74,2,NULL),(2307,57,23,2,NULL),(2308,42,73,2,NULL),(2309,31,63,2,NULL),(2310,48,83,2,NULL),(2311,62,74,2,NULL),(2312,75,23,2,NULL),(2313,51,83,2,NULL),(2314,44,73,2,NULL),(2315,30,74,2,NULL),(2316,64,63,2,NULL),(2317,58,23,2,NULL),(2318,54,83,2,NULL),(2319,39,63,2,NULL),(2320,62,73,2,NULL),(2321,52,74,2,NULL),(2322,55,83,2,NULL),(2323,30,73,2,NULL),(2324,28,63,2,NULL),(2325,41,74,2,NULL),(2326,69,83,2,NULL),(2327,52,73,2,NULL),(2328,77,63,2,NULL),(2329,70,74,2,NULL),(2330,72,83,2,NULL),(2331,41,73,2,NULL),(2332,46,63,2,NULL),(2333,43,74,2,NULL),(2334,29,121,2,NULL),(2335,70,73,2,NULL),(2336,57,63,2,NULL),(2337,61,74,2,NULL),(2338,48,121,2,NULL),(2339,43,73,2,NULL),(2340,75,63,2,NULL),(2341,47,74,2,NULL),(2342,51,121,2,NULL),(2343,58,63,2,NULL),(2344,61,73,2,NULL),(2345,31,74,2,NULL),(2346,54,121,2,NULL),(2347,47,73,2,NULL),(2348,64,74,2,NULL),(2349,55,121,2,NULL),(2350,31,73,2,NULL),(2351,39,74,2,NULL),(2352,50,66,2,NULL),(2353,69,121,2,NULL),(2354,64,73,2,NULL),(2355,53,66,2,NULL),(2356,28,74,2,NULL),(2357,72,121,2,NULL),(2358,39,73,2,NULL),(2359,66,66,2,NULL),(2360,77,74,2,NULL),(2361,50,120,2,NULL),(2362,46,74,2,NULL),(2363,28,73,2,NULL),(2364,67,66,2,NULL),(2365,53,120,2,NULL),(2366,37,66,2,NULL),(2367,77,73,2,NULL),(2368,57,74,2,NULL),(2369,66,120,2,NULL),(2370,42,66,2,NULL),(2371,46,73,2,NULL),(2372,75,74,2,NULL),(2373,67,120,2,NULL),(2374,57,73,2,NULL),(2375,44,66,2,NULL),(2376,58,74,2,NULL),(2377,29,122,2,NULL),(2378,75,73,2,NULL),(2379,62,66,2,NULL),(2380,48,122,2,NULL),(2381,30,66,2,NULL),(2382,58,73,2,NULL),(2383,51,122,2,NULL),(2384,52,66,2,NULL),(2385,50,76,2,NULL),(2386,54,122,2,NULL),(2387,53,76,2,NULL),(2388,41,66,2,NULL),(2389,55,122,2,NULL),(2390,70,66,2,NULL),(2391,66,76,2,NULL),(2392,69,122,2,NULL),(2393,67,76,2,NULL),(2394,43,66,2,NULL),(2395,72,122,2,NULL),(2396,61,66,2,NULL),(2397,37,76,2,NULL),(2398,37,120,2,NULL),(2399,47,66,2,NULL),(2400,42,76,2,NULL),(2401,42,120,2,NULL),(2402,31,66,2,NULL),(2403,44,76,2,NULL),(2404,44,120,2,NULL),(2405,64,66,2,NULL),(2406,62,76,2,NULL),(2407,62,120,2,NULL),(2408,30,76,2,NULL),(2409,39,66,2,NULL),(2410,29,123,2,NULL),(2411,28,66,2,NULL),(2412,52,76,2,NULL),(2413,48,123,2,NULL),(2414,41,76,2,NULL),(2415,77,66,2,NULL),(2416,51,123,2,NULL),(2417,70,76,2,NULL),(2418,46,66,2,NULL),(2419,54,123,2,NULL),(2420,43,76,2,NULL),(2421,57,66,2,NULL),(2422,55,123,2,NULL),(2423,61,76,2,NULL),(2424,75,66,2,NULL),(2425,69,123,2,NULL),(2426,58,66,2,NULL),(2427,47,76,2,NULL),(2428,72,123,2,NULL),(2429,31,76,2,NULL),(2430,50,69,2,NULL),(2431,30,120,2,NULL),(2432,64,76,2,NULL),(2433,53,69,2,NULL),(2434,52,120,2,NULL),(2435,66,69,2,NULL),(2436,39,76,2,NULL),(2437,29,124,2,NULL),(2438,67,69,2,NULL),(2439,28,76,2,NULL),(2440,48,124,2,NULL),(2441,77,76,2,NULL),(2442,37,69,2,NULL),(2443,51,124,2,NULL),(2444,46,76,2,NULL),(2445,42,69,2,NULL),(2446,54,124,2,NULL),(2447,57,76,2,NULL),(2448,44,69,2,NULL),(2449,55,124,2,NULL),(2450,75,76,2,NULL),(2451,62,69,2,NULL),(2452,69,124,2,NULL),(2453,58,76,2,NULL),(2454,30,69,2,NULL),(2455,72,124,2,NULL),(2456,52,69,2,NULL),(2457,50,77,2,NULL),(2458,41,120,2,NULL),(2459,41,69,2,NULL),(2460,53,77,2,NULL),(2461,29,125,2,NULL),(2462,66,77,2,NULL),(2463,70,69,2,NULL),(2464,48,125,2,NULL),(2465,67,77,2,NULL),(2466,43,69,2,NULL),(2467,51,125,2,NULL),(2468,61,69,2,NULL),(2469,37,77,2,NULL),(2470,54,125,2,NULL),(2471,47,69,2,NULL),(2472,42,77,2,NULL),(2473,55,125,2,NULL),(2474,44,77,2,NULL),(2475,31,69,2,NULL),(2476,69,125,2,NULL),(2477,62,77,2,NULL),(2478,64,69,2,NULL),(2479,72,125,2,NULL),(2480,30,77,2,NULL),(2481,39,69,2,NULL),(2482,70,120,2,NULL),(2483,52,77,2,NULL),(2484,28,69,2,NULL),(2485,29,126,2,NULL),(2486,41,77,2,NULL),(2487,77,69,2,NULL),(2488,48,126,2,NULL),(2489,70,77,2,NULL),(2490,46,69,2,NULL),(2491,51,126,2,NULL),(2492,43,77,2,NULL),(2493,54,126,2,NULL),(2494,57,69,2,NULL),(2495,61,77,2,NULL),(2496,55,126,2,NULL),(2497,75,69,2,NULL),(2498,47,77,2,NULL),(2499,69,126,2,NULL),(2500,58,69,2,NULL),(2501,31,77,2,NULL),(2502,72,126,2,NULL),(2503,50,72,2,NULL),(2504,64,77,2,NULL),(2505,43,120,2,NULL),(2506,53,72,2,NULL),(2507,39,77,2,NULL),(2508,61,120,2,NULL),(2509,66,72,2,NULL),(2510,28,77,2,NULL),(2511,29,127,2,NULL),(2512,67,72,2,NULL),(2513,77,77,2,NULL),(2514,48,127,2,NULL),(2515,37,72,2,NULL),(2516,46,77,2,NULL),(2517,51,127,2,NULL),(2518,42,72,2,NULL),(2519,57,77,2,NULL),(2520,54,127,2,NULL),(2521,44,72,2,NULL),(2522,75,77,2,NULL),(2523,62,72,2,NULL),(2524,55,127,2,NULL),(2525,58,77,2,NULL),(2526,30,72,2,NULL),(2527,69,127,2,NULL),(2528,52,72,2,NULL),(2529,72,127,2,NULL),(2530,50,78,2,NULL),(2531,41,72,2,NULL),(2532,47,120,2,NULL),(2533,53,78,2,NULL),(2534,70,72,2,NULL),(2535,29,128,2,NULL),(2536,66,78,2,NULL),(2537,43,72,2,NULL),(2538,48,128,2,NULL),(2539,67,78,2,NULL),(2540,61,72,2,NULL),(2541,51,128,2,NULL),(2542,37,78,2,NULL),(2543,47,72,2,NULL),(2544,54,128,2,NULL),(2545,42,78,2,NULL),(2546,31,72,2,NULL),(2547,55,128,2,NULL),(2548,44,78,2,NULL),(2549,64,72,2,NULL),(2550,69,128,2,NULL),(2551,62,78,2,NULL),(2552,39,72,2,NULL),(2553,72,128,2,NULL),(2554,30,78,2,NULL),(2555,28,72,2,NULL),(2556,31,120,2,NULL),(2557,52,78,2,NULL),(2558,77,72,2,NULL),(2559,64,120,2,NULL),(2560,41,78,2,NULL),(2561,46,72,2,NULL),(2562,39,120,2,NULL),(2563,70,78,2,NULL),(2564,57,72,2,NULL),(2565,28,120,2,NULL),(2566,43,78,2,NULL),(2567,75,72,2,NULL),(2568,77,120,2,NULL),(2569,61,78,2,NULL),(2570,58,72,2,NULL),(2571,29,134,2,NULL),(2572,47,78,2,NULL),(2573,48,134,2,NULL),(2574,31,78,2,NULL),(2575,50,75,2,NULL),(2576,51,134,2,NULL),(2577,53,75,2,NULL),(2578,64,78,2,NULL),(2579,54,134,2,NULL),(2580,66,75,2,NULL),(2581,39,78,2,NULL),(2582,55,134,2,NULL),(2583,28,78,2,NULL),(2584,67,75,2,NULL),(2585,69,134,2,NULL),(2586,37,75,2,NULL),(2587,77,78,2,NULL),(2588,72,134,2,NULL),(2589,42,75,2,NULL),(2590,46,78,2,NULL),(2591,46,120,2,NULL),(2592,57,78,2,NULL),(2593,44,75,2,NULL),(2594,57,120,2,NULL),(2595,62,75,2,NULL),(2596,75,78,2,NULL),(2597,75,120,2,NULL),(2598,30,75,2,NULL),(2599,58,78,2,NULL),(2600,29,135,2,NULL),(2601,52,75,2,NULL),(2602,48,135,2,NULL),(2603,41,75,2,NULL),(2604,51,135,2,NULL),(2605,70,75,2,NULL),(2606,54,135,2,NULL),(2607,43,75,2,NULL),(2608,55,135,2,NULL),(2609,61,75,2,NULL),(2610,69,135,2,NULL),(2611,47,75,2,NULL),(2612,72,135,2,NULL),(2613,31,75,2,NULL),(2614,58,120,2,NULL),(2615,64,75,2,NULL),(2616,29,136,2,NULL),(2617,39,75,2,NULL),(2618,48,136,2,NULL),(2619,28,75,2,NULL),(2620,51,136,2,NULL),(2621,77,75,2,NULL),(2622,54,136,2,NULL),(2623,46,75,2,NULL),(2624,55,136,2,NULL),(2625,57,75,2,NULL),(2626,69,136,2,NULL),(2627,75,75,2,NULL),(2628,72,136,2,NULL),(2629,58,75,2,NULL),(2630,29,137,2,NULL),(2631,48,137,2,NULL),(2632,51,137,2,NULL),(2633,54,137,2,NULL),(2634,55,137,2,NULL),(2635,69,137,2,NULL),(2636,72,137,2,NULL),(2637,29,138,2,NULL),(2638,48,138,2,NULL),(2639,51,138,2,NULL),(2640,54,138,2,NULL),(2641,55,138,2,NULL),(2642,69,138,2,NULL),(2643,72,138,2,NULL),(2644,29,139,2,NULL),(2645,48,139,2,NULL),(2646,51,139,2,NULL),(2647,54,139,2,NULL),(2648,55,139,2,NULL),(2649,69,139,2,NULL),(2650,72,139,2,NULL),(2651,50,83,2,NULL),(2652,53,83,2,NULL),(2653,66,83,2,NULL),(2654,67,83,2,NULL),(2655,50,122,2,NULL),(2656,53,122,2,NULL),(2657,66,122,2,NULL),(2658,67,122,2,NULL),(2659,37,121,2,NULL),(2660,42,121,2,NULL),(2661,44,121,2,NULL),(2662,62,121,2,NULL),(2663,50,123,2,NULL),(2664,53,123,2,NULL),(2665,66,123,2,NULL),(2666,67,123,2,NULL),(2667,30,121,2,NULL),(2668,52,121,2,NULL),(2669,50,124,2,NULL),(2670,53,124,2,NULL),(2671,66,124,2,NULL),(2672,67,124,2,NULL),(2673,41,121,2,NULL),(2674,50,125,2,NULL),(2675,53,125,2,NULL),(2676,66,125,2,NULL),(2677,67,125,2,NULL),(2678,70,121,2,NULL),(2679,50,126,2,NULL),(2680,53,126,2,NULL),(2681,66,126,2,NULL),(2682,67,126,2,NULL),(2683,43,121,2,NULL),(2684,61,121,2,NULL),(2685,50,127,2,NULL),(2686,53,127,2,NULL),(2687,66,127,2,NULL),(2688,67,127,2,NULL),(2689,47,121,2,NULL),(2690,50,128,2,NULL),(2691,53,128,2,NULL),(2692,66,128,2,NULL),(2693,67,128,2,NULL),(2694,31,121,2,NULL),(2695,64,121,2,NULL),(2696,39,121,2,NULL),(2697,28,121,2,NULL),(2698,77,121,2,NULL),(2699,50,134,2,NULL),(2700,53,134,2,NULL),(2701,66,134,2,NULL),(2702,67,134,2,NULL),(2703,46,121,2,NULL),(2704,57,121,2,NULL),(2705,75,121,2,NULL),(2706,50,135,2,NULL),(2707,53,135,2,NULL),(2708,66,135,2,NULL),(2709,67,135,2,NULL),(2710,58,121,2,NULL),(2711,50,136,2,NULL),(2712,53,136,2,NULL),(2713,66,136,2,NULL),(2714,67,136,2,NULL),(2715,50,137,2,NULL),(2716,53,137,2,NULL),(2717,66,137,2,NULL),(2718,67,137,2,NULL),(2719,50,138,2,NULL),(2720,53,138,2,NULL),(2721,66,138,2,NULL),(2722,67,138,2,NULL),(2723,50,139,2,NULL),(2724,53,139,2,NULL),(2725,66,139,2,NULL),(2726,67,139,2,NULL),(2727,37,83,2,NULL),(2728,42,83,2,NULL),(2729,44,83,2,NULL),(2730,62,83,2,NULL),(2731,37,123,2,NULL),(2732,42,123,2,NULL),(2733,44,123,2,NULL),(2734,62,123,2,NULL),(2735,30,122,2,NULL),(2736,52,122,2,NULL),(2737,37,124,2,NULL),(2738,42,124,2,NULL),(2739,44,124,2,NULL),(2740,62,124,2,NULL),(2741,41,122,2,NULL),(2742,37,125,2,NULL),(2743,42,125,2,NULL),(2744,44,125,2,NULL),(2745,30,83,2,NULL),(2746,62,125,2,NULL),(2747,52,83,2,NULL),(2748,70,122,2,NULL),(2749,41,83,2,NULL),(2750,37,126,2,NULL),(2751,70,83,2,NULL),(2752,42,126,2,NULL),(2753,43,83,2,NULL),(2754,44,126,2,NULL),(2755,61,83,2,NULL),(2756,62,126,2,NULL),(2757,47,83,2,NULL),(2758,43,122,2,NULL),(2759,31,83,2,NULL),(2760,61,122,2,NULL),(2761,64,83,2,NULL),(2762,37,127,2,NULL),(2763,39,83,2,NULL),(2764,42,127,2,NULL),(2765,28,83,2,NULL),(2766,44,127,2,NULL),(2767,77,83,2,NULL),(2768,62,127,2,NULL),(2769,46,83,2,NULL),(2770,47,122,2,NULL),(2771,57,83,2,NULL),(2772,37,128,2,NULL),(2773,75,83,2,NULL),(2774,42,128,2,NULL),(2775,58,83,2,NULL),(2776,44,128,2,NULL),(2777,62,128,2,NULL),(2778,31,122,2,NULL),(2779,64,122,2,NULL),(2780,39,122,2,NULL),(2781,28,122,2,NULL),(2782,77,122,2,NULL),(2783,37,134,2,NULL),(2784,42,134,2,NULL),(2785,44,134,2,NULL),(2786,62,134,2,NULL),(2787,46,122,2,NULL),(2788,57,122,2,NULL),(2789,75,122,2,NULL),(2790,37,135,2,NULL),(2791,42,135,2,NULL),(2792,44,135,2,NULL),(2793,62,135,2,NULL),(2794,58,122,2,NULL),(2795,37,136,2,NULL),(2796,42,136,2,NULL),(2797,44,136,2,NULL),(2798,62,136,2,NULL),(2799,37,137,2,NULL),(2800,42,137,2,NULL),(2801,44,137,2,NULL),(2802,62,137,2,NULL),(2803,37,138,2,NULL),(2804,42,138,2,NULL),(2805,44,138,2,NULL),(2806,62,138,2,NULL),(2807,37,139,2,NULL),(2808,42,139,2,NULL),(2809,44,139,2,NULL),(2810,62,139,2,NULL),(2811,30,124,2,NULL),(2812,52,124,2,NULL),(2813,41,123,2,NULL),(2814,30,125,2,NULL),(2815,52,125,2,NULL),(2816,70,123,2,NULL),(2817,30,126,2,NULL),(2818,52,126,2,NULL),(2819,43,123,2,NULL),(2820,61,123,2,NULL),(2821,30,127,2,NULL),(2822,52,127,2,NULL),(2823,47,123,2,NULL),(2824,30,128,2,NULL),(2825,52,128,2,NULL),(2826,31,123,2,NULL),(2827,64,123,2,NULL),(2828,39,123,2,NULL),(2829,28,123,2,NULL),(2830,77,123,2,NULL),(2831,30,134,2,NULL),(2832,52,134,2,NULL),(2833,46,123,2,NULL),(2834,57,123,2,NULL),(2835,75,123,2,NULL),(2836,30,135,2,NULL),(2837,52,135,2,NULL),(2838,58,123,2,NULL),(2839,30,136,2,NULL),(2840,52,136,2,NULL),(2841,30,137,2,NULL),(2842,52,137,2,NULL),(2843,30,138,2,NULL),(2844,52,138,2,NULL),(2845,30,139,2,NULL),(2846,52,139,2,NULL),(2847,41,125,2,NULL),(2848,70,124,2,NULL),(2849,41,126,2,NULL),(2850,43,124,2,NULL),(2851,61,124,2,NULL),(2852,41,127,2,NULL),(2853,47,124,2,NULL),(2854,41,128,2,NULL),(2855,31,124,2,NULL),(2856,64,124,2,NULL),(2857,39,124,2,NULL),(2858,28,124,2,NULL),(2859,77,124,2,NULL),(2860,41,134,2,NULL),(2861,46,124,2,NULL),(2862,57,124,2,NULL),(2863,75,124,2,NULL),(2864,41,135,2,NULL),(2865,58,124,2,NULL),(2866,41,136,2,NULL),(2867,41,137,2,NULL),(2868,41,138,2,NULL),(2869,41,139,2,NULL),(2870,70,126,2,NULL),(2871,43,125,2,NULL),(2872,61,125,2,NULL),(2873,70,127,2,NULL),(2874,47,125,2,NULL),(2875,70,128,2,NULL),(2876,31,125,2,NULL),(2877,64,125,2,NULL),(2878,39,125,2,NULL),(2879,28,125,2,NULL),(2880,77,125,2,NULL),(2881,70,134,2,NULL),(2882,46,125,2,NULL),(2883,57,125,2,NULL),(2884,75,125,2,NULL),(2885,70,135,2,NULL),(2886,58,125,2,NULL),(2887,70,136,2,NULL),(2888,70,137,2,NULL),(2889,70,138,2,NULL),(2890,70,139,2,NULL),(2891,43,127,2,NULL),(2892,61,127,2,NULL),(2893,47,126,2,NULL),(2894,43,128,2,NULL),(2895,61,128,2,NULL),(2896,31,126,2,NULL),(2897,64,126,2,NULL),(2898,39,126,2,NULL),(2899,28,126,2,NULL),(2900,77,126,2,NULL),(2901,43,134,2,NULL),(2902,61,134,2,NULL),(2903,46,126,2,NULL),(2904,57,126,2,NULL),(2905,75,126,2,NULL),(2906,43,135,2,NULL),(2907,61,135,2,NULL),(2908,58,126,2,NULL),(2909,43,136,2,NULL),(2910,61,136,2,NULL),(2911,43,137,2,NULL),(2912,61,137,2,NULL),(2913,43,138,2,NULL),(2914,61,138,2,NULL),(2915,43,139,2,NULL),(2916,61,139,2,NULL),(2917,47,128,2,NULL),(2918,31,127,2,NULL),(2919,64,127,2,NULL),(2920,39,127,2,NULL),(2921,28,127,2,NULL),(2922,77,127,2,NULL),(2923,47,134,2,NULL),(2924,46,127,2,NULL),(2925,57,127,2,NULL),(2926,75,127,2,NULL),(2927,47,135,2,NULL),(2928,58,127,2,NULL),(2929,47,136,2,NULL),(2930,47,137,2,NULL),(2931,47,138,2,NULL),(2932,47,139,2,NULL),(2933,31,128,2,NULL),(2934,64,128,2,NULL),(2935,39,128,2,NULL),(2936,28,128,2,NULL),(2937,77,128,2,NULL),(2938,46,128,2,NULL),(2939,57,128,2,NULL),(2940,75,128,2,NULL),(2941,58,128,2,NULL),(2942,31,134,2,NULL),(2943,31,135,2,NULL),(2944,31,136,2,NULL),(2945,31,137,2,NULL),(2946,31,138,2,NULL),(2947,31,139,2,NULL),(2948,64,134,2,NULL),(2949,64,135,2,NULL),(2950,64,136,2,NULL),(2951,64,137,2,NULL),(2952,64,138,2,NULL),(2953,64,139,2,NULL),(2954,39,134,2,NULL),(2955,39,135,2,NULL),(2956,39,136,2,NULL),(2957,39,137,2,NULL),(2958,39,138,2,NULL),(2959,39,139,2,NULL),(2960,28,134,2,NULL),(2961,77,134,2,NULL),(2962,28,135,2,NULL),(2963,77,135,2,NULL),(2964,28,136,2,NULL),(2965,77,136,2,NULL),(2966,28,137,2,NULL),(2967,77,137,2,NULL),(2968,28,138,2,NULL),(2969,77,138,2,NULL),(2970,28,139,2,NULL),(2971,77,139,2,NULL),(2972,46,135,2,NULL),(2973,57,135,2,NULL),(2974,75,135,2,NULL),(2975,58,134,2,NULL),(2976,46,136,2,NULL),(2977,57,136,2,NULL),(2978,75,136,2,NULL),(2979,46,137,2,NULL),(2980,57,137,2,NULL),(2981,75,137,2,NULL),(2982,46,138,2,NULL),(2983,57,138,2,NULL),(2984,75,138,2,NULL),(2985,46,139,2,NULL),(2986,57,139,2,NULL),(2987,75,139,2,NULL),(2988,58,136,2,NULL),(2989,58,137,2,NULL),(2990,58,138,2,NULL),(2991,58,139,2,NULL);
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

-- Dump completed on 2015-10-12  3:31:35
