-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_440
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (32,'.ImageTestActivity'),(74,'.Myhall'),(39,'.QLIwLdiDO14'),(57,'.Web'),(20,'NULL-CONSTANT'),(11,'SENDED'),(9,'SENDING_OK'),(14,'Shi.wkCjdlqME.QLIwLdiDO12'),(37,'Shi.wkCjdlqME.QLIwLdiDO14'),(69,'android.intent.action.ADDS_DIALOG'),(30,'android.intent.action.BANK'),(2,'android.intent.action.BOOT_COMPLETED'),(67,'android.intent.action.CREATE_ARMY'),(60,'android.intent.action.CUSTOM_DIALOG'),(54,'android.intent.action.DAILY_GIFT_SCHEME'),(16,'android.intent.action.DASHBOARD'),(4,'android.intent.action.DATA_SMS_RECEIVED'),(36,'android.intent.action.DELETE'),(25,'android.intent.action.DOCTOR'),(56,'android.intent.action.FACEBOOK_DIALOG'),(72,'android.intent.action.FEATURED_APP_WEB_VIEW'),(28,'android.intent.action.FIGHT'),(47,'android.intent.action.FIGHTACTION'),(42,'android.intent.action.FIGHT_RESULT'),(55,'android.intent.action.GANGNAME_DIALOG'),(24,'android.intent.action.GANG_PROFILE'),(33,'android.intent.action.GODFATHER'),(61,'android.intent.action.HALOWEEN_LEADER_BOARD'),(35,'android.intent.action.HITIST'),(40,'android.intent.action.INVITATIONS'),(22,'android.intent.action.ITEM_DIALOG'),(18,'android.intent.action.JOBS'),(63,'android.intent.action.JOIN_ARMY'),(45,'android.intent.action.LEADER_BOARD'),(62,'android.intent.action.LIST_ARMY'),(1,'android.intent.action.MAIN'),(50,'android.intent.action.MYWALL'),(23,'android.intent.action.MY_GANG'),(38,'android.intent.action.NEWS'),(51,'android.intent.action.OFFERS'),(43,'android.intent.action.OPTIONS'),(29,'android.intent.action.PACKAGE_ADDED'),(26,'android.intent.action.PACKAGE_REMOVED'),(49,'android.intent.action.POSTMESSAGE'),(66,'android.intent.action.POSTSHOUTOUT_ARMY'),(27,'android.intent.action.PROPERTIES'),(41,'android.intent.action.RECRUIT'),(15,'android.intent.action.REGISTRATION'),(70,'android.intent.action.REPORT_ERR'),(31,'android.intent.action.SCREEN_OFF'),(13,'android.intent.action.SCREEN_ON'),(52,'android.intent.action.SHOUTOUT'),(65,'android.intent.action.SHOUTOUT_ARMY'),(53,'android.intent.action.SHOUTOUT_MESSAGE'),(71,'android.intent.action.TJFAPP_NOTIFIER_DISPLAY'),(68,'android.intent.action.TRANSFERPOINT_ARMY'),(58,'android.intent.action.TWITTER_DIALOG'),(44,'android.intent.action.UPGRADE_SKILL_POINTS'),(75,'android.intent.action.USER_PRESENT'),(10,'android.intent.action.VIEW'),(21,'android.intent.action.WEAPONS'),(17,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(7,'android.service.wallpaper.WallpaperService'),(19,'cn.com.xiaol.livewallpaper.jpqcmn.showAdFinish'),(48,'com.airpush.android.PushServiceStart33948'),(8,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(64,'com.beautifulphoto1.GameBootReceiver'),(34,'com.beautifulphoto1.ImageTestActivity'),(73,'com.beautifulphoto1.Myhall'),(59,'com.beautifulphoto1.Web'),(46,'com.brianrileyar.library.MyService'),(5,'com.google.android.c2dm.intent.RECEIVE'),(12,'com.google.android.c2dm.intent.REGISTER'),(6,'com.google.android.c2dm.intent.REGISTRATION'),(3,'com.software.CHECKER');
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
INSERT INTO `Applications` VALUES (1,'com.software.application',1),(2,'Shi.wkCjdlqME',1100),(3,'cn.com.xiaol.livewallpaper.jpqcmn',2),(4,'com.beautifulphoto1',1012),(5,'tiq.iup.wjlliku.pmhj',10027),(6,'com.brianrileyar.weedfarmer',3),(7,'appinventor.ai_rathiisarun.jamster',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (4,'android.intent.category.DEFAULT'),(2,'android.intent.category.HOME'),(5,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(6,'android.intent.categroy.DEFUAULT'),(3,'com.software.application'),(7,'tiq.iup.wjlliku.pmhj');
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
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.software.application.Main'),(2,1,'com.software.application.OffertActivity'),(3,1,'com.software.application.ShowLink'),(4,1,'com.software.application.C2DMReceiver'),(5,1,'com.software.application.Notificator'),(6,1,'com.software.application.Checker'),(7,1,'com.software.application.SmsReceiver'),(8,1,'com.google.android.c2dm.C2DMBroadcastReceiver'),(9,2,'Shi.wkCjdlqME.image.QLIwLdiDO19'),(10,2,'Shi.wkCjdlqME.image.QLIwLdiDO18'),(11,2,'Shi.wkCjdlqME.QLIwLdiDO8'),(12,2,'Shi.wkCjdlqME.QLIwLdiDO9'),(13,2,'Shi.wkCjdlqME.QLIwLdiDO2'),(14,2,'Shi.wkCjdlqME.QLIwLdiDO10'),(15,2,'Shi.wkCjdlqME.QLIwLdiDO11'),(16,3,'cn.com.xiaol.livewallpaper.jpqcmn.MainActivity'),(17,2,'Shi.wkCjdlqME.QLIwLdiDO12'),(18,3,'cn.com.xiaol.livewallpaper.jpqcmn.SettingsActivity'),(19,3,'com.mt.airad.MultiAD'),(20,3,'com.waps.OffersWebView'),(21,3,'com.mobclick.android.UmengFeedback'),(22,3,'cn.com.xiaol.livewallpaper.jpqcmn.YDMNliveWallpaper'),(23,4,'com.beautifulphoto1.Myhall'),(24,4,'com.beautifulphoto1.Web'),(25,4,'com.beautifulphoto1.HomeActivity'),(26,4,'com.beautifulphoto1.SortActivity1'),(27,4,'com.beautifulphoto1.SortActivity2'),(28,4,'com.beautifulphoto1.SearchActivity'),(29,4,'com.beautifulphoto1.ManagerActivity'),(30,4,'com.beautifulphoto1.GameInfo'),(31,4,'com.beautifulphoto1.TableClass'),(32,4,'com.beautifulphoto1.GameAlertDialog'),(33,4,'com.beautifulphoto1.DevelopmentSettings'),(34,4,'com.beautifulphoto1.qimg.ImageTestActivity'),(35,4,'com.beautifulphoto1.qimg.ADactivity'),(36,4,'com.beautifulphoto1.GameService'),(37,4,'com.beautifulphoto1.GameBootReceiver'),(38,1,'com.software.application.Main$4'),(39,1,'com.software.application.ShowLink$1'),(40,1,'com.software.application.Actor$1'),(41,1,'com.google.android.c2dm.C2DMBaseReceiver'),(42,1,'com.google.android.c2dm.C2DMessaging'),(43,1,'com.software.application.Actor'),(44,2,'be'),(45,3,'com.mobclick.android.MobclickAgent'),(46,3,'cn.com.xiaol.livewallpaper.jpqcmn.MainActivity$3'),(47,3,'com.mt.airad.IlllllIlIlllIIll'),(48,3,'com.waps.AppConnect'),(49,2,'bg'),(50,3,'com.waps.ac'),(51,3,'com.waps.o'),(52,5,'com.tgb.vampire.activities.StartGame'),(53,3,'com.waps.z'),(54,5,'com.tgb.vampire.activities.Registration'),(55,3,'cn.com.xiaol.livewallpaper.jpqcmn.MainActivity$2'),(56,5,'com.tgb.vampire.activities.DashBoard'),(57,5,'com.tgb.vampire.activities.Jobs'),(58,5,'com.tgb.vampire.activities.Weapons'),(59,2,'ba'),(60,5,'com.tgb.vampire.activities.ItemDialog'),(61,5,'com.tgb.vampire.activities.MyGang'),(62,3,'com.waps.aa'),(63,5,'com.tgb.vampire.activities.GangInfoDialog'),(64,5,'com.tgb.vampire.activities.Doctor'),(65,4,'dr'),(66,5,'com.tgb.vampire.activities.Properties'),(67,3,'com.mt.airad.IIlIIIIlIIlIIlII'),(68,5,'com.tgb.vampire.activities.Fight'),(69,5,'com.tgb.vampire.activities.Bank'),(70,3,'com.mt.airad.lIIIIIIIlIlIIIIl'),(71,5,'com.tgb.vampire.activities.Godfather'),(72,3,'com.waps.q'),(73,5,'com.tgb.vampire.activities.Hitlist'),(74,4,'cb'),(75,5,'com.tgb.vampire.activities.News'),(76,5,'com.tgb.vampire.activities.Invitations'),(77,4,'ay'),(78,5,'com.tgb.vampire.activities.Recruit'),(79,6,'com.brianrileyar.library.A_LaunchActivity'),(80,5,'com.tgb.vampire.activities.FightResult'),(81,4,'dt'),(82,6,'com.brianrileyar.library.A_LoadingActivity'),(83,5,'com.tgb.vampire.activities.Options'),(84,6,'com.brianrileyar.library.A_TabWidgetActivity'),(85,6,'com.brianrileyar.library.A_TwitterActivity'),(86,6,'com.brianrileyar.library.A_YouTubeGuidesActivity'),(87,5,'com.tgb.vampire.activities.UpgradeSP'),(88,6,'com.brianrileyar.library.A_YouTubeCheatsActivity'),(89,6,'com.brianrileyar.library.A_CountdownActivity'),(90,6,'com.brianrileyar.library.MyActivity'),(91,4,'cl'),(92,5,'com.tgb.vampire.activities.LeaderBoard'),(93,6,'com.mobfox.sdk.InAppWebView'),(94,6,'com.airpush.android.PushAds'),(95,6,'com.brianrileyar.library.MyService'),(96,5,'com.tgb.vampire.activities.FightActions'),(97,6,'com.airpush.android.PushService'),(98,5,'com.tgb.vampire.activities.PostMessage'),(99,6,'com.brianrileyar.library.Receiver'),(100,5,'com.tgb.vampire.activities.MyWall'),(101,6,'com.brianrileyar.library.MyReceiver'),(102,6,'com.Leadbolt.AdNotification'),(103,5,'com.tgb.vampire.activities.Offers'),(104,6,'com.airpush.android.UserDetailsReceiver'),(105,6,'com.airpush.android.MessageReceiver'),(106,6,'com.airpush.android.DeliveryReceiver'),(107,5,'com.tgb.vampire.activities.ShoutOut'),(108,5,'com.tgb.vampire.activities.PostShoutOut'),(109,5,'com.tgb.vampire.activities.DailyGift'),(110,4,'ba'),(111,5,'com.tgb.vampire.activities.GangNameDialog'),(112,4,'cr'),(113,5,'com.tgb.vampire.activities.FacebookDialog'),(114,5,'com.tgb.vampire.activities.TwitterDialog'),(115,5,'com.tgb.vampire.activities.CustomDialog'),(116,5,'com.tgb.vampire.activities.HaloweenLeaderBoard'),(117,5,'com.tgb.vampire.activities.ArmiesList'),(118,5,'com.tgb.vampire.activities.JoinArmy'),(119,5,'com.tgb.vampire.activities.ArmyShoutOut'),(120,4,'ck'),(121,5,'com.tgb.vampire.activities.PostShoutOutArmy'),(122,5,'com.tgb.vampire.activities.CreateArmy'),(123,4,'bq'),(124,5,'com.tgb.vampire.activities.TransferRespectPoints'),(125,5,'com.tgb.vampire.activities.AddsDialog'),(126,5,'com.tgb.vampire.activities.ReportErr'),(127,5,'com.codecarpet.fbconnect.FBLoginActivity'),(128,5,'com.codecarpet.fbconnect.FBFeedActivity'),(129,5,'com.tgb.vampire.activities.TJFAppNotifierDisplay'),(130,4,'cp'),(131,5,'com.tgb.vampire.activities.FeaturedAppWebView'),(132,5,'com.google.android.c2dm.OpenWebPage'),(133,5,'com.nmoHDua.wDcdTEsV'),(134,5,'com.nmoHDua.sIHKcQcwVjF'),(135,5,'com.nmoHDua.MyAppInfo'),(136,5,'com.nmoHDua.UJiDnIFIJS'),(137,5,'com.nmoHDua.HoVoqcapJR'),(138,5,'com.nmoHDua.MyAppAlertDialog'),(139,5,'com.nmoHDua.KdlOUSfDBLQK'),(140,5,'com.tgb.vampire.services.updateTimer'),(141,5,'com.google.android.c2dm.C2DMReceiver'),(142,5,'com.nmoHDua.MyAppService'),(143,5,'com.google.android.c2dm.C2DMBroadcastReceiver'),(144,5,'com.nmoHDua.BootReceiverService'),(145,4,'dl'),(146,7,'appinventor.ai_rathiisarun.jamster.Screen1'),(147,7,'com.google.devtools.simple.runtime.components.android.WebViewActivity'),(148,7,'com.google.devtools.simple.runtime.components.android.ListPickerActivity'),(149,7,'com.google.devtools.simple.runtime.components.android.Form');
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
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,3,'URL'),(2,13,'from'),(3,11,'title'),(4,14,'fromtable'),(5,11,'from_table'),(6,14,'url'),(7,11,'from_alert'),(8,16,'APP_ID'),(9,9,'stylebox'),(10,20,'APP_ID'),(11,13,'isDirectFromTable'),(12,18,'APP_ID'),(13,14,'title'),(14,20,'URL'),(15,19,'adID'),(16,20,'isFinshClose'),(17,20,'Notify_Url_Params'),(18,16,'UMENG_APPKEY'),(19,18,'UMENG_APPKEY'),(20,20,'CLIENT_PACKAGE'),(21,20,'Notify_Id'),(22,14,'content'),(23,19,'adURL'),(24,11,'fromtype'),(25,14,'apk_url'),(26,16,'DEVICE_ID'),(27,20,'DEVICE_ID'),(28,18,'DEVICE_ID'),(29,30,'filepath'),(30,23,'nextclassid'),(31,20,'offers_webview_tag'),(32,20,'URL_PARAMS'),(33,16,'WAPS_ID'),(34,20,'WAPS_ID'),(35,18,'WAPS_ID'),(36,16,'UMENG_CHANNEL'),(37,18,'UMENG_CHANNEL'),(38,16,'WAPS_PID'),(39,20,'WAPS_PID'),(40,30,'title'),(41,18,'WAPS_PID'),(42,28,'status'),(43,20,'Offers_URL'),(44,29,'icon'),(45,32,'url'),(46,29,'completed'),(47,28,'version_code'),(48,29,'package_name'),(49,27,'status'),(50,28,'package_name'),(51,29,'app_name'),(52,11,'filepath'),(53,36,'service_channel'),(54,29,'filepath'),(55,16,'CLIENT_PACKAGE'),(56,18,'CLIENT_PACKAGE'),(57,29,'soft_id'),(58,29,'total'),(59,20,'UrlPath'),(60,20,'USER_ID'),(61,14,'btn_txt'),(62,15,'stylebox'),(63,11,'game'),(64,20,'ACTIVITY_FLAG'),(65,20,'SHWO_FLAG'),(66,14,'version_code'),(67,27,'nextclassid'),(68,27,'package_name'),(69,11,'status'),(70,23,'service_channel'),(71,29,'status'),(72,29,'url'),(73,14,'package_name'),(74,30,'from_table'),(75,30,'status'),(76,34,'service_channel'),(77,24,'service_channel'),(78,32,'content'),(79,32,'title'),(80,30,'from_alert'),(81,32,'btn_txt'),(82,122,'com/google/devtools/simple/runtime/components/android/ListPickerActivity.list'),(83,120,'APP_INVENTOR_START');
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
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'s',0,NULL,NULL),(5,5,'r',1,NULL,NULL),(6,6,'r',1,NULL,NULL),(7,7,'r',1,NULL,NULL),(8,8,'r',1,10,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'s',1,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'r',1,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'s',1,22,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',1,NULL,NULL),(28,28,'a',1,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'a',1,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'s',1,NULL,NULL),(37,37,'r',1,NULL,NULL),(38,38,'r',1,NULL,NULL),(39,40,'r',1,NULL,NULL),(40,47,'r',1,NULL,NULL),(41,52,'a',1,NULL,NULL),(42,54,'a',1,NULL,NULL),(43,56,'a',1,NULL,NULL),(44,57,'a',1,NULL,NULL),(45,58,'a',1,NULL,NULL),(46,60,'a',1,NULL,NULL),(47,61,'a',1,NULL,NULL),(48,63,'a',1,NULL,NULL),(49,64,'a',1,NULL,NULL),(50,66,'a',1,NULL,NULL),(51,67,'r',1,NULL,NULL),(52,68,'a',1,NULL,NULL),(53,69,'a',1,NULL,NULL),(54,70,'r',1,NULL,NULL),(55,71,'a',1,NULL,NULL),(56,72,'r',1,NULL,NULL),(57,73,'a',1,NULL,NULL),(58,75,'a',1,NULL,NULL),(59,76,'a',1,NULL,NULL),(60,78,'a',1,NULL,NULL),(61,79,'a',1,NULL,NULL),(62,80,'a',1,NULL,NULL),(63,82,'a',0,NULL,NULL),(64,83,'a',1,NULL,NULL),(65,84,'a',0,NULL,NULL),(66,85,'a',0,NULL,NULL),(67,86,'a',0,NULL,NULL),(68,88,'a',0,NULL,NULL),(69,87,'a',1,NULL,NULL),(70,89,'a',0,NULL,NULL),(71,90,'a',0,NULL,NULL),(72,92,'a',1,NULL,NULL),(73,93,'a',0,NULL,NULL),(74,94,'a',0,NULL,NULL),(75,95,'s',1,NULL,NULL),(76,96,'a',1,NULL,NULL),(77,97,'s',1,NULL,NULL),(78,98,'a',1,NULL,NULL),(79,99,'r',1,NULL,NULL),(80,100,'a',1,NULL,NULL),(81,101,'r',1,NULL,NULL),(82,102,'r',0,NULL,NULL),(83,103,'a',1,NULL,NULL),(84,104,'r',0,NULL,NULL),(85,105,'r',0,NULL,NULL),(86,106,'r',0,NULL,NULL),(87,107,'a',1,NULL,NULL),(88,108,'a',1,NULL,NULL),(89,109,'a',1,NULL,NULL),(90,111,'a',1,NULL,NULL),(91,113,'a',1,NULL,NULL),(92,114,'a',1,NULL,NULL),(93,115,'a',1,NULL,NULL),(94,116,'a',1,NULL,NULL),(95,117,'a',1,NULL,NULL),(96,118,'a',1,NULL,NULL),(97,119,'a',1,NULL,NULL),(98,121,'a',1,NULL,NULL),(99,122,'a',1,NULL,NULL),(100,124,'a',1,NULL,NULL),(101,125,'a',1,NULL,NULL),(102,126,'a',1,NULL,NULL),(103,127,'a',0,NULL,NULL),(104,128,'a',0,NULL,NULL),(105,129,'a',1,NULL,NULL),(106,131,'a',1,NULL,NULL),(107,132,'a',1,NULL,NULL),(108,133,'a',1,NULL,NULL),(109,134,'a',0,NULL,NULL),(110,135,'a',1,NULL,NULL),(111,136,'a',1,NULL,NULL),(112,137,'a',1,NULL,NULL),(113,138,'a',0,NULL,NULL),(114,139,'a',0,NULL,NULL),(115,140,'s',0,NULL,NULL),(116,141,'s',0,NULL,NULL),(117,142,'s',1,NULL,NULL),(118,143,'r',1,10,NULL),(119,144,'r',1,NULL,NULL),(120,146,'a',1,NULL,NULL),(121,147,'a',1,NULL,NULL),(122,148,'a',0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,3),(2,2,1),(3,3,8),(4,4,1),(5,5,1),(6,6,1),(7,7,11),(8,8,11),(9,9,11),(10,10,12),(11,10,13),(12,10,14),(13,11,14),(14,12,16),(15,13,12),(16,14,16),(17,15,14),(18,16,12),(19,17,20),(20,18,17),(21,19,18),(22,20,11),(23,21,20),(24,22,11),(25,23,20),(26,24,9),(27,25,11),(28,26,20),(29,27,14),(30,28,31),(31,29,16),(32,30,31),(33,31,14),(34,32,19),(35,33,37),(36,34,11),(37,35,32),(38,37,11),(39,36,20),(40,38,29),(41,39,14),(42,39,13),(43,39,12),(44,40,23),(45,41,17),(46,42,28),(47,43,34),(48,44,11),(49,45,20),(50,46,29),(51,47,9),(52,48,23),(53,49,31),(54,49,35),(55,50,17),(56,51,35),(57,52,11),(58,54,11),(59,53,23),(60,55,34),(61,56,27),(62,57,9),(63,58,28),(64,59,11),(65,60,27),(66,61,23),(67,62,32),(68,63,25),(69,64,24),(70,65,24),(71,66,25),(72,67,27),(73,68,37),(74,69,27),(75,70,30),(76,71,30),(77,72,29),(78,73,35),(79,74,23),(80,75,32),(81,76,24),(82,77,23),(83,78,30),(84,79,37),(85,80,31),(86,80,35),(87,81,25),(88,82,32),(89,83,25),(90,84,30),(91,85,30),(92,86,25),(93,87,34),(94,88,27),(95,89,27),(96,90,30),(97,91,23),(98,92,25),(99,93,120);
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
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,39,'<com.software.application.ShowLink$1: void onClick(android.view.View)>',8,'a',NULL),(2,1,'<com.software.application.Main: void showRules()>',3,'a',NULL),(3,41,'<com.google.android.c2dm.C2DMBaseReceiver: void runIntentInService(android.content.Context,android.content.Intent)>',17,'s',NULL),(4,42,'<com.google.android.c2dm.C2DMessaging: boolean register(android.content.Context,java.lang.String)>',10,'s',NULL),(5,43,'<com.software.application.Actor: void report(int,android.app.PendingIntent)>',4,'r',NULL),(6,1,'<com.software.application.Main: void showURL()>',6,'a',NULL),(7,44,'<be: void onClick(android.view.View)>',242,'a',NULL),(8,11,'<Shi.wkCjdlqME.QLIwLdiDO8: void onCreate(android.os.Bundle)>',81,'a',NULL),(9,11,'<Shi.wkCjdlqME.QLIwLdiDO8: void onCreate(android.os.Bundle)>',177,'a',NULL),(10,13,'<Shi.wkCjdlqME.QLIwLdiDO2: void a(int,boolean)>',63,'a',NULL),(11,14,'<Shi.wkCjdlqME.QLIwLdiDO10: void onClick(android.view.View)>',75,'a',NULL),(12,45,'<com.mobclick.android.MobclickAgent: void openFeedbackActivity(android.content.Context)>',6,'a',NULL),(13,12,'<Shi.wkCjdlqME.QLIwLdiDO9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(14,46,'<cn.com.xiaol.livewallpaper.jpqcmn.MainActivity$3: void onClick(android.view.View)>',6,'a',NULL),(15,14,'<Shi.wkCjdlqME.QLIwLdiDO10: void onClick(android.view.View)>',84,'a',NULL),(16,12,'<Shi.wkCjdlqME.QLIwLdiDO9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(17,20,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(18,17,'<Shi.wkCjdlqME.QLIwLdiDO12: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(19,48,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(20,49,'<bg: void onClick(android.view.View)>',218,'a',NULL),(21,50,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(22,11,'<Shi.wkCjdlqME.QLIwLdiDO8: void onCreate(android.os.Bundle)>',76,'a',NULL),(23,51,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(24,9,'<Shi.wkCjdlqME.image.QLIwLdiDO19: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',12,'a',NULL),(25,11,'<Shi.wkCjdlqME.QLIwLdiDO8: void onCreate(android.os.Bundle)>',33,'s',NULL),(26,53,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(27,14,'<Shi.wkCjdlqME.QLIwLdiDO10: void onClick(android.view.View)>',66,'a',NULL),(28,31,'<com.beautifulphoto1.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',72,'a',NULL),(29,55,'<cn.com.xiaol.livewallpaper.jpqcmn.MainActivity$2: void onClick(android.view.View)>',5,'a',NULL),(30,31,'<com.beautifulphoto1.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(31,14,'<Shi.wkCjdlqME.QLIwLdiDO10: void onClick(android.view.View)>',53,'a',NULL),(32,19,'<com.mt.airad.MultiAD: void _$2()>',7,'r',NULL),(33,37,'<com.beautifulphoto1.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(34,59,'<ba: void onClick(android.view.View)>',218,'a',NULL),(35,32,'<com.beautifulphoto1.GameAlertDialog: void onClick(android.view.View)>',30,'a',NULL),(36,62,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(37,11,'<Shi.wkCjdlqME.QLIwLdiDO8: void onCreate(android.os.Bundle)>',90,'s',NULL),(38,29,'<com.beautifulphoto1.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(39,13,'<Shi.wkCjdlqME.QLIwLdiDO2: void a(int,boolean)>',10,'s',NULL),(40,65,'<dr: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(41,17,'<Shi.wkCjdlqME.QLIwLdiDO12: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(42,28,'<com.beautifulphoto1.SearchActivity: void onCreate(android.os.Bundle)>',12,'s',NULL),(43,34,'<com.beautifulphoto1.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(44,44,'<be: void onClick(android.view.View)>',221,'a',NULL),(45,20,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',322,'a',NULL),(46,74,'<cb: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(47,9,'<Shi.wkCjdlqME.image.QLIwLdiDO19: void onCreate(android.os.Bundle)>',124,'s',NULL),(48,23,'<com.beautifulphoto1.Myhall: void onCreate(android.os.Bundle)>',101,'s',NULL),(49,77,'<ay: void a(int,boolean)>',10,'s',NULL),(50,17,'<Shi.wkCjdlqME.QLIwLdiDO12: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(51,35,'<com.beautifulphoto1.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',68,'a',NULL),(52,11,'<Shi.wkCjdlqME.QLIwLdiDO8: void onCreate(android.os.Bundle)>',172,'a',NULL),(53,81,'<dt: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(54,49,'<bg: void onClick(android.view.View)>',239,'a',NULL),(55,34,'<com.beautifulphoto1.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',54,'s',NULL),(56,91,'<cl: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(57,9,'<Shi.wkCjdlqME.image.QLIwLdiDO19: void onCreate(android.os.Bundle)>',128,'s',NULL),(58,28,'<com.beautifulphoto1.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(59,59,'<ba: void onClick(android.view.View)>',239,'a',NULL),(60,91,'<cl: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(61,65,'<dr: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(62,32,'<com.beautifulphoto1.GameAlertDialog: void onClick(android.view.View)>',44,'a',NULL),(63,110,'<ba: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(64,112,'<cr: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(65,24,'<com.beautifulphoto1.Web: void onCreate(android.os.Bundle)>',19,'s',NULL),(66,25,'<com.beautifulphoto1.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',39,'a',NULL),(67,27,'<com.beautifulphoto1.SortActivity2: void onCreate(android.os.Bundle)>',11,'s',NULL),(68,37,'<com.beautifulphoto1.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(69,120,'<ck: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(70,30,'<com.beautifulphoto1.GameInfo: boolean onKeyDown(int,android.view.KeyEvent)>',10,'a',NULL),(71,123,'<bq: void onClick(android.view.View)>',224,'a',NULL),(72,74,'<cb: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(73,130,'<cp: void onClick(android.view.View)>',6,'a',NULL),(74,65,'<dr: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(75,32,'<com.beautifulphoto1.GameAlertDialog: void onClick(android.view.View)>',62,'a',NULL),(76,24,'<com.beautifulphoto1.Web: void onCreate(android.os.Bundle)>',23,'s',NULL),(77,23,'<com.beautifulphoto1.Myhall: void onCreate(android.os.Bundle)>',96,'s',NULL),(78,30,'<com.beautifulphoto1.GameInfo: void onCreate(android.os.Bundle)>',94,'a',NULL),(79,37,'<com.beautifulphoto1.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(80,77,'<ay: void a(int,boolean)>',29,'a',NULL),(81,25,'<com.beautifulphoto1.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',48,'a',NULL),(82,32,'<com.beautifulphoto1.GameAlertDialog: void onClick(android.view.View)>',53,'a',NULL),(83,110,'<ba: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(84,30,'<com.beautifulphoto1.GameInfo: void onCreate(android.os.Bundle)>',11,'s',NULL),(85,30,'<com.beautifulphoto1.GameInfo: void onCreate(android.os.Bundle)>',99,'a',NULL),(86,110,'<ba: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(87,145,'<dl: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(88,91,'<cl: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(89,27,'<com.beautifulphoto1.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',24,'a',NULL),(90,123,'<bq: void onClick(android.view.View)>',205,'a',NULL),(91,65,'<dr: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(92,25,'<com.beautifulphoto1.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',29,'a',NULL),(93,149,'<com.google.devtools.simple.runtime.components.android.Form: void startNewForm(java.lang.String,java.lang.String)>',16,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,10),(2,4,12),(3,5,9),(4,7,1),(5,8,1),(6,9,1),(7,10,1),(8,14,8),(9,16,1),(10,17,1),(11,22,1),(12,23,1),(13,24,14),(14,26,10),(15,27,10),(16,30,10),(17,33,10),(18,35,10),(19,36,10),(20,37,17),(21,38,1),(22,40,1),(23,41,19),(24,43,20),(25,44,10),(26,46,10),(27,53,14),(28,55,32),(29,56,10),(30,57,34),(31,58,10),(32,60,36),(33,61,37),(34,63,39),(35,66,10),(36,68,1),(37,69,10),(38,70,1),(39,72,1),(40,73,1),(41,77,1),(42,78,1),(43,79,10),(44,80,1),(45,82,1),(46,83,10),(47,84,10),(48,86,10),(49,87,57),(50,88,59),(51,91,64),(52,94,1),(53,95,1),(54,96,1),(55,97,1),(56,98,1),(57,99,1),(58,104,73),(59,105,74),(60,107,64),(61,109,10),(62,110,8),(63,111,10),(64,115,10),(65,118,10),(66,119,10);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,7,1),(2,8,5),(3,9,1),(4,10,5),(5,16,1),(6,17,5),(7,22,1),(8,23,5),(9,38,1),(10,40,5),(11,68,1),(12,70,5),(13,72,1),(14,73,5),(15,77,1),(16,78,5),(17,80,1),(18,82,5),(19,94,1),(20,95,5),(21,96,1),(22,97,5),(23,98,1),(24,99,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'com/software/application/OffertActivity'),(2,3,'com.software.application.C2DMReceiver'),(3,6,'com/software/application/ShowLink'),(4,11,'Shi/wkCjdlqME/image/QLIwLdiDO19'),(5,12,'Shi/wkCjdlqME/image/QLIwLdiDO19'),(6,13,'Shi/wkCjdlqME/image/QLIwLdiDO19'),(7,15,'com/mobclick/android/UmengFeedback'),(8,18,'cn/com/xiaol/livewallpaper/jpqcmn/SettingsActivity'),(9,19,'Shi/wkCjdlqME/QLIwLdiDO10'),(10,20,'Shi/wkCjdlqME/QLIwLdiDO8'),(11,24,'Shi/wkCjdlqME/QLIwLdiDO11'),(12,25,'com/waps/OffersWebView'),(13,28,'NULL-CONSTANT'),(14,29,'Shi/wkCjdlqME/image/QLIwLdiDO19'),(15,31,'Shi/wkCjdlqME/image/QLIwLdiDO18'),(16,32,'Shi/wkCjdlqME/QLIwLdiDO11'),(17,34,'com/beautifulphoto1/GameInfo'),(18,39,'Shi/wkCjdlqME/QLIwLdiDO8'),(19,42,'com/beautifulphoto1/GameService'),(20,45,'com/beautifulphoto1/GameInfo'),(21,47,'Shi/wkCjdlqME/QLIwLdiDO11'),(22,48,'com/waps/OffersWebView'),(23,49,'com/beautifulphoto1/GameService'),(24,50,'Shi/wkCjdlqME/QLIwLdiDO11'),(25,51,'com/waps/OffersWebView'),(26,52,'com/beautifulphoto1/Myhall'),(27,53,'Shi/wkCjdlqME/QLIwLdiDO11'),(28,54,'com/beautifulphoto1/GameService'),(29,55,'com/beautifulphoto1/GameService'),(30,57,'com/beautifulphoto1/GameService'),(31,59,'(.*)'),(32,61,'Shi/wkCjdlqME/QLIwLdiDO11'),(33,62,'com/beautifulphoto1/GameService'),(34,63,'Shi/wkCjdlqME/QLIwLdiDO11'),(35,64,'com/beautifulphoto1/GameService'),(36,65,'Shi/wkCjdlqME/QLIwLdiDO11'),(37,67,'Shi/wkCjdlqME/image/QLIwLdiDO19'),(38,71,'com/beautifulphoto1/GameService'),(39,74,'com/beautifulphoto1/GameInfo'),(40,75,'Shi/wkCjdlqME/QLIwLdiDO11'),(41,76,'com/beautifulphoto1/GameInfo'),(42,81,'com/beautifulphoto1/Myhall'),(43,85,'com/beautifulphoto1/GameInfo'),(44,87,'com/beautifulphoto1/GameService'),(45,88,'com/beautifulphoto1/GameService'),(46,89,'com/beautifulphoto1/Myhall'),(47,90,'com/beautifulphoto1/GameService'),(48,91,'com/beautifulphoto1/GameService'),(49,92,'com/beautifulphoto1/Myhall'),(50,93,'com/beautifulphoto1/Myhall'),(51,100,'com/beautifulphoto1/qimg/ImageTestActivity'),(52,101,'com/beautifulphoto1/Myhall'),(53,102,'com/beautifulphoto1/GameAlertDialog'),(54,103,'com/beautifulphoto1/GameService'),(55,104,'com/beautifulphoto1/GameService'),(56,105,'com/beautifulphoto1/GameService'),(57,106,'com/beautifulphoto1/Myhall'),(58,107,'com/beautifulphoto1/GameService'),(59,108,'com/beautifulphoto1/Myhall'),(60,112,'com/beautifulphoto1/GameService'),(61,113,'com/beautifulphoto1/Myhall'),(62,114,'com/beautifulphoto1/Myhall'),(63,116,'com/beautifulphoto1/Myhall'),(64,117,'com/beautifulphoto1/GameInfo'),(65,120,'com/beautifulphoto1/Myhall'),(66,121,'com/beautifulphoto1/GameInfo');
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,1),(2,26,2),(3,27,3),(4,30,4),(5,33,5),(6,35,6),(7,36,7),(8,44,8),(9,46,9),(10,56,10),(11,58,11),(12,60,12),(13,66,13),(14,69,14),(15,79,15),(16,83,16),(17,84,17),(18,86,18),(19,109,19),(20,111,20),(21,115,21),(22,118,22),(23,119,23);
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,4,'sender'),(2,4,'app'),(3,6,'URL'),(4,19,'title'),(5,19,'btn_txt'),(6,19,'need_adb_flag'),(7,19,'cont'),(8,19,'close_flag'),(9,20,'game'),(10,20,'fromtype'),(11,25,'USER_ID'),(12,25,'CLIENT_PACKAGE'),(13,25,'Offers_URL'),(14,25,'offers_webview_tag'),(15,25,'URL_PARAMS'),(16,31,'startid'),(17,31,'position'),(18,39,'id'),(19,39,'from_alert'),(20,39,'detail_flag'),(21,41,'adViewLeaveParameter'),(22,43,'adViewLeaveParameter'),(23,45,'id'),(24,45,'from_table'),(25,45,'detail_flag'),(26,48,'UrlPath'),(27,48,'ACTIVITY_FLAG'),(28,48,'isFinshClose'),(29,48,'offers_webview_tag'),(30,51,'Notify_Url_Params'),(31,51,'UrlPath'),(32,51,'ACTIVITY_FLAG'),(33,51,'isFinshClose'),(34,51,'offers_webview_tag'),(35,52,'clicked'),(36,74,'title'),(37,81,'clicked'),(38,85,'title'),(39,89,'nextclassid'),(40,89,'clicked'),(41,92,'title'),(42,92,'nextclassid'),(43,92,'clicked'),(44,101,'clicked'),(45,102,'title'),(46,102,'btn_txt'),(47,102,'need_adb_flag'),(48,102,'cont'),(49,102,'close_flag'),(50,114,'title'),(51,114,'nextclassid'),(52,114,'clicked'),(53,116,'title'),(54,116,'nextclassid'),(55,116,'clicked'),(56,117,'title'),(57,120,'clicked'),(58,123,'APP_INVENTOR_START');
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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,1),(8,8,1),(9,9,1),(10,10,1),(11,11,1),(12,12,1),(13,13,2),(14,14,7),(15,15,1),(16,16,1),(17,17,1),(18,18,1),(19,19,1),(20,20,8),(21,21,1),(22,22,1),(23,23,2),(24,24,9),(25,25,11),(26,26,13),(27,28,15),(28,29,16),(29,30,18),(30,31,21),(31,32,22),(32,33,23),(33,34,24),(34,35,25),(35,36,26),(36,37,27),(37,38,20),(38,40,19),(39,39,28),(40,41,29),(41,42,30),(42,43,31),(43,44,33),(44,45,29),(45,46,35),(46,47,38),(47,48,40),(48,49,41),(49,50,1),(50,51,42),(51,52,43),(52,53,44),(53,54,45),(54,55,46),(55,56,47),(56,57,48),(57,58,49),(58,59,2),(59,60,50),(60,61,46),(61,62,51),(62,63,29),(63,64,52),(64,65,53),(65,66,54),(66,67,55),(67,68,56),(68,69,58),(69,70,60),(70,71,61),(71,72,62),(72,73,63),(73,74,65),(74,75,66),(75,76,67),(76,77,68),(77,78,69),(78,79,70),(79,80,71),(80,81,72),(81,83,1),(82,84,1),(83,85,1),(84,86,1),(85,87,26),(86,88,1),(87,89,6),(88,90,5),(89,91,2),(90,91,75),(91,92,1),(92,93,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,2),(3,3,2),(4,5,3),(5,6,3),(6,7,1),(7,7,4),(8,11,1),(9,12,1),(10,21,1),(11,22,1),(12,28,1),(13,29,1),(14,30,1),(15,31,1),(16,32,1),(17,33,1),(18,34,1),(19,35,1),(20,36,6),(21,37,1),(22,39,1),(23,41,6),(24,42,1),(25,44,1),(26,46,1),(27,47,1),(28,48,1),(29,49,1),(30,50,1),(31,51,1),(32,52,1),(33,53,1),(34,54,1),(35,56,1),(36,58,1),(37,59,2),(38,60,1),(39,62,1),(40,63,6),(41,64,1),(42,65,1),(43,66,1),(44,67,1),(45,68,1),(46,69,1),(47,70,1),(48,71,1),(49,72,1),(50,73,1),(51,74,1),(52,75,1),(53,76,1),(54,77,1),(55,78,1),(56,79,1),(57,80,1),(58,81,1),(59,82,1),(60,83,1),(61,87,6),(62,88,1),(63,89,7),(64,90,7),(65,92,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,4,'sms',NULL,NULL,NULL,NULL,NULL),(2,4,NULL,NULL,'8901',NULL,NULL,NULL),(3,36,'package',NULL,NULL,NULL,NULL,NULL),(4,41,'package',NULL,NULL,NULL,NULL,NULL),(5,45,'package',NULL,NULL,NULL,NULL,NULL),(6,63,'package',NULL,NULL,NULL,NULL,NULL),(7,87,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,26,'application','vnd.android.package-archive'),(2,27,'application','vnd.android.package-archive'),(3,30,'application','vnd.android.package-archive'),(4,33,'application','vnd.android.package-archive'),(5,44,'application','vnd.android.package-archive'),(6,46,'application','vnd.android.package-archive'),(7,56,'application','vnd.android.package-archive'),(8,58,'application','vnd.android.package-archive'),(9,69,'application','vnd.android.package-archive'),(10,86,'application','vnd.android.package-archive'),(11,115,'application','vnd.android.package-archive'),(12,118,'application','vnd.android.package-archive'),(13,119,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'com.software.application'),(2,3,'com.software.application'),(3,4,'com.google.android.gsf'),(4,6,'com.software.application'),(5,7,'(.*)'),(6,8,''),(7,9,''),(8,10,'(.*)'),(9,11,'Shi.wkCjdlqME'),(10,12,'Shi.wkCjdlqME'),(11,13,'Shi.wkCjdlqME'),(12,15,'cn.com.xiaol.livewallpaper.jpqcmn'),(13,16,'(.*)'),(14,18,'cn.com.xiaol.livewallpaper.jpqcmn'),(15,17,'(.*)'),(16,19,'Shi.wkCjdlqME'),(17,20,'Shi.wkCjdlqME'),(18,22,'(.*)'),(19,23,'(.*)'),(20,24,'Shi.wkCjdlqME'),(21,25,'cn.com.xiaol.livewallpaper.jpqcmn'),(22,28,'NULL-CONSTANT'),(23,29,'Shi.wkCjdlqME'),(24,31,'Shi.wkCjdlqME'),(25,32,'Shi.wkCjdlqME'),(26,34,'com.beautifulphoto1'),(27,38,'(.*)'),(28,40,'(.*)'),(29,39,'Shi.wkCjdlqME'),(30,42,'com.beautifulphoto1'),(31,45,'com.beautifulphoto1'),(32,47,'Shi.wkCjdlqME'),(33,48,'cn.com.xiaol.livewallpaper.jpqcmn'),(34,49,'com.beautifulphoto1'),(35,50,'Shi.wkCjdlqME'),(36,51,'cn.com.xiaol.livewallpaper.jpqcmn'),(37,52,'com.beautifulphoto1'),(38,53,'Shi.wkCjdlqME'),(39,54,'com.beautifulphoto1'),(40,55,'com.beautifulphoto1'),(41,57,'com.beautifulphoto1'),(42,59,'(.*)'),(43,61,'Shi.wkCjdlqME'),(44,62,'com.beautifulphoto1'),(45,63,'Shi.wkCjdlqME'),(46,64,'com.beautifulphoto1'),(47,65,'Shi.wkCjdlqME'),(48,67,'Shi.wkCjdlqME'),(49,68,'(.*)'),(50,70,''),(51,71,'com.beautifulphoto1'),(52,72,''),(53,73,'(.*)'),(54,74,'com.beautifulphoto1'),(55,75,'Shi.wkCjdlqME'),(56,76,'com.beautifulphoto1'),(57,77,'(.*)'),(58,78,''),(59,80,''),(60,82,'(.*)'),(61,81,'com.beautifulphoto1'),(62,85,'com.beautifulphoto1'),(63,87,'com.beautifulphoto1'),(64,88,'com.beautifulphoto1'),(65,89,'com.beautifulphoto1'),(66,90,'com.beautifulphoto1'),(67,91,'com.beautifulphoto1'),(68,92,'com.beautifulphoto1'),(69,93,'com.beautifulphoto1'),(70,94,'(.*)'),(71,95,''),(72,96,''),(73,97,'(.*)'),(74,98,'NULL-CONSTANT'),(75,99,'NULL-CONSTANT'),(76,100,'com.beautifulphoto1'),(77,101,'com.beautifulphoto1'),(78,102,'com.beautifulphoto1'),(79,103,'com.beautifulphoto1'),(80,104,'com.beautifulphoto1'),(81,105,'com.beautifulphoto1'),(82,106,'com.beautifulphoto1'),(83,107,'com.beautifulphoto1'),(84,108,'com.beautifulphoto1'),(85,112,'com.beautifulphoto1'),(86,113,'com.beautifulphoto1'),(87,114,'com.beautifulphoto1'),(88,116,'com.beautifulphoto1'),(89,117,'com.beautifulphoto1'),(90,120,'com.beautifulphoto1'),(91,121,'com.beautifulphoto1');
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
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,5,0),(3,6,0),(4,7,0),(5,8,0),(6,8,0),(7,9,0),(8,11,0),(9,12,0),(10,13,0),(11,15,0),(12,16,0),(13,17,0),(14,22,0),(15,27,0),(16,28,0),(17,29,0),(18,30,0),(19,31,0),(20,33,0),(21,34,0),(22,36,0),(23,37,0),(24,38,0),(25,39,0),(26,40,0),(27,41,0),(28,42,0),(29,43,0),(30,44,0),(31,45,0),(32,46,0),(33,47,0),(34,48,0),(35,49,0),(36,17,0),(37,50,0),(38,51,0),(39,52,0),(40,51,0),(41,17,0),(42,53,0),(43,54,0),(44,55,0),(45,56,0),(46,57,0),(47,58,0),(48,59,0),(49,60,0),(50,61,0),(51,62,0),(52,64,0),(53,69,0),(54,72,0),(55,75,0),(56,76,0),(57,77,0),(58,78,0),(59,79,0),(60,80,0),(61,81,0),(62,83,0),(63,37,0),(64,87,0),(65,88,0),(66,89,0),(67,90,0),(68,91,0),(69,92,0),(70,93,0),(71,94,0),(72,95,0),(73,96,0),(74,97,0),(75,98,0),(76,99,0),(77,100,0),(78,101,0),(79,102,0),(80,105,0),(81,106,0),(82,107,0),(83,108,0),(84,110,0),(85,111,0),(86,112,0),(87,37,0),(88,117,0),(89,118,0),(90,118,0),(91,119,0),(92,120,0),(93,121,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,0,0),(3,3,0,0),(4,4,1,0),(5,5,1,0),(6,6,0,0),(7,7,1,0),(8,7,1,0),(9,7,1,0),(10,7,1,0),(11,8,0,0),(12,9,0,0),(13,10,0,0),(14,11,1,0),(15,12,0,0),(16,13,1,0),(17,13,1,0),(18,14,0,0),(19,15,0,0),(20,16,0,0),(21,17,1,0),(22,17,1,0),(23,17,1,0),(24,18,0,0),(25,19,0,0),(26,20,1,0),(27,20,1,0),(28,21,0,0),(29,22,0,0),(30,23,1,0),(31,24,0,0),(32,25,0,0),(33,26,1,0),(34,28,0,0),(35,27,1,0),(36,27,1,0),(37,29,1,0),(38,30,1,0),(39,31,0,0),(40,30,1,0),(41,32,1,0),(42,33,0,0),(43,32,1,0),(44,34,1,0),(45,35,0,0),(46,34,1,0),(47,37,0,0),(48,36,0,0),(49,38,0,0),(50,39,0,0),(51,36,0,0),(52,40,0,0),(53,41,0,0),(54,42,0,0),(55,43,0,0),(56,44,1,0),(57,43,0,0),(58,44,1,0),(59,45,0,0),(60,46,1,0),(61,47,0,0),(62,48,0,0),(63,47,0,0),(64,49,0,0),(65,50,0,0),(66,51,1,0),(67,52,0,0),(68,54,1,0),(69,53,1,0),(70,54,1,0),(71,55,0,0),(72,54,1,0),(73,54,1,0),(74,56,0,0),(75,57,0,0),(76,58,0,0),(77,59,1,0),(78,59,1,0),(79,60,1,0),(80,59,1,0),(81,61,0,0),(82,59,1,0),(83,62,1,0),(84,62,1,0),(85,63,0,0),(86,64,1,0),(87,65,0,0),(88,65,0,0),(89,66,0,0),(90,67,0,0),(91,68,0,0),(92,69,0,0),(93,70,0,0),(94,71,1,0),(95,71,1,0),(96,71,1,0),(97,71,1,0),(98,72,1,0),(99,72,1,0),(100,73,0,0),(101,74,0,0),(102,75,0,0),(103,76,0,0),(104,77,0,0),(105,77,0,0),(106,78,0,0),(107,79,0,0),(108,80,0,0),(109,81,1,0),(110,82,1,0),(111,83,1,0),(112,84,0,0),(113,85,0,0),(114,86,0,0),(115,87,1,0),(116,88,0,0),(117,89,0,0),(118,90,1,0),(119,90,1,0),(120,91,0,0),(121,92,0,0),(122,93,1,0),(123,93,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (20,'android.permission.ACCESS_CACHE_FILESYSTEM'),(23,'android.permission.ACCESS_COARSE_LOCATION'),(17,'android.permission.ACCESS_FINE_LOCATION'),(27,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(14,'android.permission.ACCESS_NETWORK_STATE'),(19,'android.permission.ACCESS_WIFI_STATE'),(22,'android.permission.BIND_WALLPAPER'),(21,'android.permission.DELETE_CACHE_FILES'),(16,'android.permission.GET_TASKS'),(5,'android.permission.INTERNET'),(18,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(2,'android.permission.READ_SMS'),(13,'android.permission.RECEIVE_BOOT_COMPLETED'),(7,'android.permission.RECEIVE_SMS'),(3,'android.permission.SEND_SMS'),(12,'android.permission.SET_WALLPAPER'),(25,'android.permission.VIBRATE'),(8,'android.permission.WAKE_LOCK'),(4,'android.permission.WRITE_EXTERNAL_STORAGE'),(28,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(26,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(11,'com.android.launcher.permission.INSTALL_SHORTCUT'),(15,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(9,'com.google.android.c2dm.permission.RECEIVE'),(10,'com.google.android.c2dm.permission.SEND'),(6,'com.software.application.permission.C2D_MESSAGE'),(24,'tiq.iup.wjlliku.pmhj.permission.C2D_MESSAGE');
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
INSERT INTO `Permissions` VALUES (6,'s'),(24,'s');
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(3,NULL,NULL,'file://',NULL,NULL,NULL),(4,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'',NULL,NULL,NULL),(8,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(9,NULL,NULL,'file://',NULL,NULL,NULL),(10,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(11,NULL,NULL,'file://',NULL,NULL,NULL),(12,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'file://',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'',NULL,NULL,NULL),(18,NULL,NULL,'file://',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL),(21,NULL,NULL,'file://',NULL,NULL,NULL),(22,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(23,NULL,NULL,'file://',NULL,NULL,NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,2,1),(11,2,4),(12,2,5),(13,2,11),(14,2,12),(15,2,13),(16,2,14),(17,2,15),(18,3,17),(19,3,16),(20,3,1),(21,3,19),(22,3,18),(23,3,4),(24,3,5),(25,3,14),(26,4,1),(27,4,18),(28,4,21),(29,4,4),(30,4,20),(31,4,5),(32,4,11),(33,4,12),(34,4,13),(35,4,14),(36,4,15),(37,5,1),(38,5,4),(39,5,5),(40,5,8),(41,5,9),(42,5,11),(43,5,13),(44,5,14),(45,5,15),(46,5,17),(47,5,16),(48,5,19),(49,5,23),(50,5,25),(51,5,24),(52,6,1),(53,6,4),(54,6,5),(55,6,8),(56,6,11),(57,6,13),(58,6,14),(59,6,17),(60,6,23),(61,6,25),(62,6,27),(63,6,26),(64,6,28),(65,7,5);
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

-- Dump completed on 2015-10-09  0:39:41
