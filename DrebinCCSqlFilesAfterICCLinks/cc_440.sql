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
) ENGINE=InnoDB AUTO_INCREMENT=1471 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,16,41,2,NULL),(2,17,41,2,NULL),(3,14,41,2,NULL),(4,35,41,2,NULL),(5,36,41,2,NULL),(6,41,41,2,NULL),(7,43,41,2,NULL),(8,21,41,2,NULL),(9,22,41,2,NULL),(10,23,41,2,NULL),(11,109,41,2,NULL),(12,38,41,2,NULL),(13,40,41,2,NULL),(14,83,41,2,NULL),(15,84,41,2,NULL),(16,110,41,2,NULL),(17,66,41,2,NULL),(18,16,42,2,NULL),(19,17,42,2,NULL),(20,14,42,2,NULL),(21,35,42,2,NULL),(22,36,42,2,NULL),(23,41,42,2,NULL),(24,43,42,2,NULL),(25,21,42,2,NULL),(26,22,42,2,NULL),(27,23,42,2,NULL),(28,109,42,2,NULL),(29,38,42,2,NULL),(30,40,42,2,NULL),(31,83,42,2,NULL),(32,62,36,2,NULL),(33,84,42,2,NULL),(34,104,36,2,NULL),(35,110,42,2,NULL),(36,105,36,2,NULL),(37,66,42,2,NULL),(38,87,36,2,NULL),(39,16,43,2,NULL),(40,88,36,2,NULL),(41,17,43,2,NULL),(42,103,36,2,NULL),(43,14,43,2,NULL),(44,89,23,2,NULL),(45,35,43,2,NULL),(46,121,30,2,NULL),(47,36,43,2,NULL),(48,109,1,2,NULL),(49,41,43,2,NULL),(50,109,5,2,NULL),(51,43,43,2,NULL),(52,109,6,2,NULL),(53,21,43,2,NULL),(54,109,8,2,NULL),(55,22,43,2,NULL),(56,109,38,2,NULL),(57,23,43,2,NULL),(58,109,39,2,NULL),(59,109,43,2,NULL),(60,109,9,2,NULL),(61,38,43,2,NULL),(62,109,11,2,NULL),(63,40,43,2,NULL),(64,109,12,2,NULL),(65,83,43,2,NULL),(66,109,13,2,NULL),(67,84,43,2,NULL),(68,109,15,2,NULL),(69,110,43,2,NULL),(70,109,17,2,NULL),(71,31,10,2,NULL),(72,66,43,2,NULL),(73,109,16,2,NULL),(74,61,15,2,NULL),(75,16,44,2,NULL),(76,109,22,2,NULL),(77,63,15,2,NULL),(78,109,40,2,NULL),(79,17,44,2,NULL),(80,75,15,2,NULL),(81,14,44,2,NULL),(82,109,51,2,NULL),(83,16,9,2,NULL),(84,35,44,2,NULL),(85,109,54,2,NULL),(86,17,9,2,NULL),(87,36,44,2,NULL),(88,109,27,2,NULL),(89,14,9,2,NULL),(90,41,44,2,NULL),(91,109,28,2,NULL),(92,35,9,2,NULL),(93,43,44,2,NULL),(94,109,29,2,NULL),(95,36,9,2,NULL),(96,21,44,2,NULL),(97,109,30,2,NULL),(98,41,9,2,NULL),(99,22,44,2,NULL),(100,109,31,2,NULL),(101,43,9,2,NULL),(102,23,44,2,NULL),(103,109,33,2,NULL),(104,21,9,2,NULL),(105,109,44,2,NULL),(106,22,9,2,NULL),(107,109,34,2,NULL),(108,38,44,2,NULL),(109,23,9,2,NULL),(110,109,36,2,NULL),(111,40,44,2,NULL),(112,109,37,2,NULL),(113,38,9,2,NULL),(114,83,44,2,NULL),(115,109,45,2,NULL),(116,40,9,2,NULL),(117,84,44,2,NULL),(118,83,9,2,NULL),(119,109,46,2,NULL),(120,110,44,2,NULL),(121,109,47,2,NULL),(122,84,9,2,NULL),(123,66,44,2,NULL),(124,109,48,2,NULL),(125,110,9,2,NULL),(126,16,45,2,NULL),(127,109,49,2,NULL),(128,66,9,2,NULL),(129,17,45,2,NULL),(130,109,50,2,NULL),(131,11,9,2,NULL),(132,14,45,2,NULL),(133,109,52,2,NULL),(134,35,45,2,NULL),(135,12,9,2,NULL),(136,109,53,2,NULL),(137,36,45,2,NULL),(138,29,9,2,NULL),(139,109,55,2,NULL),(140,41,45,2,NULL),(141,32,15,2,NULL),(142,109,57,2,NULL),(143,43,45,2,NULL),(144,47,15,2,NULL),(145,109,58,2,NULL),(146,21,45,2,NULL),(147,67,9,2,NULL),(148,109,59,2,NULL),(149,22,45,2,NULL),(150,16,11,2,NULL),(151,109,60,2,NULL),(152,23,45,2,NULL),(153,17,11,2,NULL),(154,109,62,2,NULL),(155,38,45,2,NULL),(156,14,11,2,NULL),(157,109,64,2,NULL),(158,40,45,2,NULL),(159,35,11,2,NULL),(160,109,69,2,NULL),(161,36,11,2,NULL),(162,83,45,2,NULL),(163,109,72,2,NULL),(164,84,45,2,NULL),(165,41,11,2,NULL),(166,109,76,2,NULL),(167,43,11,2,NULL),(168,110,45,2,NULL),(169,109,78,2,NULL),(170,66,45,2,NULL),(171,21,11,2,NULL),(172,109,80,2,NULL),(173,16,46,2,NULL),(174,22,11,2,NULL),(175,109,83,2,NULL),(176,17,46,2,NULL),(177,23,11,2,NULL),(178,109,87,2,NULL),(179,14,46,2,NULL),(180,38,11,2,NULL),(181,109,88,2,NULL),(182,40,11,2,NULL),(183,35,46,2,NULL),(184,109,89,2,NULL),(185,36,46,2,NULL),(186,83,11,2,NULL),(187,109,90,2,NULL),(188,41,46,2,NULL),(189,84,11,2,NULL),(190,109,91,2,NULL),(191,110,11,2,NULL),(192,43,46,2,NULL),(193,109,92,2,NULL),(194,21,46,2,NULL),(195,66,11,2,NULL),(196,109,93,2,NULL),(197,20,11,2,NULL),(198,22,46,2,NULL),(199,109,94,2,NULL),(200,16,1,2,NULL),(201,23,46,2,NULL),(202,109,95,2,NULL),(203,38,46,2,NULL),(204,17,1,2,NULL),(205,109,96,2,NULL),(206,16,5,2,NULL),(207,40,46,2,NULL),(208,109,97,2,NULL),(209,83,46,2,NULL),(210,17,5,2,NULL),(211,109,98,2,NULL),(212,16,6,2,NULL),(213,84,46,2,NULL),(214,109,99,2,NULL),(215,110,46,2,NULL),(216,17,6,2,NULL),(217,109,100,2,NULL),(218,66,46,2,NULL),(219,16,8,2,NULL),(220,109,101,2,NULL),(221,17,8,2,NULL),(222,16,47,2,NULL),(223,109,102,2,NULL),(224,17,47,2,NULL),(225,16,38,2,NULL),(226,109,105,2,NULL),(227,17,38,2,NULL),(228,14,47,2,NULL),(229,109,106,2,NULL),(230,16,39,2,NULL),(231,35,47,2,NULL),(232,109,107,2,NULL),(233,17,39,2,NULL),(234,36,47,2,NULL),(235,109,108,2,NULL),(236,16,13,2,NULL),(237,41,47,2,NULL),(238,109,110,2,NULL),(239,43,47,2,NULL),(240,17,13,2,NULL),(241,109,111,2,NULL),(242,14,12,2,NULL),(243,21,47,2,NULL),(244,109,112,2,NULL),(245,35,12,2,NULL),(246,22,47,2,NULL),(247,109,117,2,NULL),(248,23,47,2,NULL),(249,36,12,2,NULL),(250,109,118,2,NULL),(251,38,47,2,NULL),(252,16,15,2,NULL),(253,109,119,2,NULL),(254,40,47,2,NULL),(255,17,15,2,NULL),(256,109,61,2,NULL),(257,16,17,2,NULL),(258,83,47,2,NULL),(259,109,75,2,NULL),(260,17,17,2,NULL),(261,84,47,2,NULL),(262,109,77,2,NULL),(263,110,47,2,NULL),(264,16,16,2,NULL),(265,109,79,2,NULL),(266,66,47,2,NULL),(267,17,16,2,NULL),(268,109,81,2,NULL),(269,16,48,2,NULL),(270,41,12,2,NULL),(271,109,120,2,NULL),(272,43,12,2,NULL),(273,17,48,2,NULL),(274,109,121,2,NULL),(275,21,12,2,NULL),(276,14,48,2,NULL),(277,90,36,2,NULL),(278,35,48,2,NULL),(279,22,12,2,NULL),(280,117,30,2,NULL),(281,36,48,2,NULL),(282,23,12,2,NULL),(283,16,27,2,NULL),(284,41,48,2,NULL),(285,16,22,2,NULL),(286,17,27,2,NULL),(287,43,48,2,NULL),(288,17,22,2,NULL),(289,14,27,2,NULL),(290,21,48,2,NULL),(291,16,40,2,NULL),(292,35,27,2,NULL),(293,22,48,2,NULL),(294,17,40,2,NULL),(295,36,27,2,NULL),(296,23,48,2,NULL),(297,16,51,2,NULL),(298,41,27,2,NULL),(299,38,48,2,NULL),(300,17,51,2,NULL),(301,43,27,2,NULL),(302,40,48,2,NULL),(303,16,54,2,NULL),(304,21,27,2,NULL),(305,83,48,2,NULL),(306,17,54,2,NULL),(307,22,27,2,NULL),(308,84,48,2,NULL),(309,16,28,2,NULL),(310,23,27,2,NULL),(311,110,48,2,NULL),(312,17,28,2,NULL),(313,38,27,2,NULL),(314,66,48,2,NULL),(315,16,29,2,NULL),(316,40,27,2,NULL),(317,16,49,2,NULL),(318,17,29,2,NULL),(319,83,27,2,NULL),(320,17,49,2,NULL),(321,16,30,2,NULL),(322,84,27,2,NULL),(323,14,49,2,NULL),(324,17,30,2,NULL),(325,110,27,2,NULL),(326,35,49,2,NULL),(327,16,31,2,NULL),(328,66,27,2,NULL),(329,36,49,2,NULL),(330,17,31,2,NULL),(331,54,36,2,NULL),(332,41,49,2,NULL),(333,38,12,2,NULL),(334,76,30,2,NULL),(335,43,49,2,NULL),(336,40,12,2,NULL),(337,14,28,2,NULL),(338,21,49,2,NULL),(339,83,12,2,NULL),(340,35,28,2,NULL),(341,22,49,2,NULL),(342,84,12,2,NULL),(343,36,28,2,NULL),(344,23,49,2,NULL),(345,110,12,2,NULL),(346,41,28,2,NULL),(347,38,49,2,NULL),(348,16,33,2,NULL),(349,43,28,2,NULL),(350,40,49,2,NULL),(351,17,33,2,NULL),(352,21,28,2,NULL),(353,83,49,2,NULL),(354,16,34,2,NULL),(355,22,28,2,NULL),(356,84,49,2,NULL),(357,17,34,2,NULL),(358,23,28,2,NULL),(359,110,49,2,NULL),(360,66,12,2,NULL),(361,38,28,2,NULL),(362,66,49,2,NULL),(363,16,36,2,NULL),(364,40,28,2,NULL),(365,16,50,2,NULL),(366,17,36,2,NULL),(367,83,28,2,NULL),(368,17,50,2,NULL),(369,16,37,2,NULL),(370,84,28,2,NULL),(371,14,50,2,NULL),(372,17,37,2,NULL),(373,110,28,2,NULL),(374,35,50,2,NULL),(375,16,52,2,NULL),(376,66,28,2,NULL),(377,36,50,2,NULL),(378,17,52,2,NULL),(379,49,36,2,NULL),(380,41,50,2,NULL),(381,16,53,2,NULL),(382,14,29,2,NULL),(383,43,50,2,NULL),(384,17,53,2,NULL),(385,35,29,2,NULL),(386,21,50,2,NULL),(387,16,55,2,NULL),(388,36,29,2,NULL),(389,22,50,2,NULL),(390,17,55,2,NULL),(391,41,29,2,NULL),(392,23,50,2,NULL),(393,16,57,2,NULL),(394,43,29,2,NULL),(395,38,50,2,NULL),(396,17,57,2,NULL),(397,21,29,2,NULL),(398,40,50,2,NULL),(399,16,58,2,NULL),(400,22,29,2,NULL),(401,83,50,2,NULL),(402,17,58,2,NULL),(403,23,29,2,NULL),(404,84,50,2,NULL),(405,16,59,2,NULL),(406,38,29,2,NULL),(407,110,50,2,NULL),(408,17,59,2,NULL),(409,40,29,2,NULL),(410,66,50,2,NULL),(411,16,60,2,NULL),(412,83,29,2,NULL),(413,17,60,2,NULL),(414,14,52,2,NULL),(415,84,29,2,NULL),(416,35,52,2,NULL),(417,16,62,2,NULL),(418,110,29,2,NULL),(419,36,52,2,NULL),(420,17,62,2,NULL),(421,66,29,2,NULL),(422,16,64,2,NULL),(423,41,52,2,NULL),(424,93,23,2,NULL),(425,17,64,2,NULL),(426,43,52,2,NULL),(427,106,23,2,NULL),(428,21,52,2,NULL),(429,16,69,2,NULL),(430,112,36,2,NULL),(431,22,52,2,NULL),(432,17,69,2,NULL),(433,113,23,2,NULL),(434,23,52,2,NULL),(435,16,72,2,NULL),(436,14,30,2,NULL),(437,17,72,2,NULL),(438,38,52,2,NULL),(439,35,30,2,NULL),(440,16,76,2,NULL),(441,40,52,2,NULL),(442,36,30,2,NULL),(443,83,52,2,NULL),(444,17,76,2,NULL),(445,41,30,2,NULL),(446,84,52,2,NULL),(447,16,78,2,NULL),(448,43,30,2,NULL),(449,110,52,2,NULL),(450,17,78,2,NULL),(451,21,30,2,NULL),(452,16,80,2,NULL),(453,66,52,2,NULL),(454,22,30,2,NULL),(455,17,80,2,NULL),(456,14,53,2,NULL),(457,23,30,2,NULL),(458,35,53,2,NULL),(459,16,83,2,NULL),(460,38,30,2,NULL),(461,36,53,2,NULL),(462,17,83,2,NULL),(463,40,30,2,NULL),(464,41,53,2,NULL),(465,16,87,2,NULL),(466,83,30,2,NULL),(467,43,53,2,NULL),(468,17,87,2,NULL),(469,84,30,2,NULL),(470,21,53,2,NULL),(471,16,88,2,NULL),(472,110,30,2,NULL),(473,22,53,2,NULL),(474,17,88,2,NULL),(475,66,30,2,NULL),(476,23,53,2,NULL),(477,16,89,2,NULL),(478,34,30,2,NULL),(479,38,53,2,NULL),(480,17,89,2,NULL),(481,38,1,2,NULL),(482,40,53,2,NULL),(483,16,90,2,NULL),(484,40,1,2,NULL),(485,83,53,2,NULL),(486,17,90,2,NULL),(487,38,5,2,NULL),(488,84,53,2,NULL),(489,16,91,2,NULL),(490,40,5,2,NULL),(491,110,53,2,NULL),(492,17,91,2,NULL),(493,38,6,2,NULL),(494,66,53,2,NULL),(495,16,92,2,NULL),(496,40,6,2,NULL),(497,17,92,2,NULL),(498,14,55,2,NULL),(499,38,8,2,NULL),(500,16,93,2,NULL),(501,35,55,2,NULL),(502,17,93,2,NULL),(503,40,8,2,NULL),(504,36,55,2,NULL),(505,16,94,2,NULL),(506,38,38,2,NULL),(507,41,55,2,NULL),(508,40,38,2,NULL),(509,17,94,2,NULL),(510,43,55,2,NULL),(511,38,39,2,NULL),(512,16,95,2,NULL),(513,21,55,2,NULL),(514,40,39,2,NULL),(515,17,95,2,NULL),(516,22,55,2,NULL),(517,16,96,2,NULL),(518,38,13,2,NULL),(519,23,55,2,NULL),(520,40,13,2,NULL),(521,17,96,2,NULL),(522,38,55,2,NULL),(523,14,31,2,NULL),(524,16,97,2,NULL),(525,40,55,2,NULL),(526,35,31,2,NULL),(527,17,97,2,NULL),(528,83,55,2,NULL),(529,36,31,2,NULL),(530,16,98,2,NULL),(531,84,55,2,NULL),(532,38,15,2,NULL),(533,17,98,2,NULL),(534,110,55,2,NULL),(535,40,15,2,NULL),(536,16,99,2,NULL),(537,66,55,2,NULL),(538,38,17,2,NULL),(539,17,99,2,NULL),(540,14,57,2,NULL),(541,40,17,2,NULL),(542,16,100,2,NULL),(543,35,57,2,NULL),(544,17,100,2,NULL),(545,38,16,2,NULL),(546,36,57,2,NULL),(547,40,16,2,NULL),(548,16,101,2,NULL),(549,41,57,2,NULL),(550,41,31,2,NULL),(551,17,101,2,NULL),(552,43,57,2,NULL),(553,43,31,2,NULL),(554,16,102,2,NULL),(555,21,57,2,NULL),(556,21,31,2,NULL),(557,17,102,2,NULL),(558,22,57,2,NULL),(559,22,31,2,NULL),(560,16,105,2,NULL),(561,23,57,2,NULL),(562,23,31,2,NULL),(563,17,105,2,NULL),(564,38,57,2,NULL),(565,38,22,2,NULL),(566,16,106,2,NULL),(567,40,57,2,NULL),(568,40,22,2,NULL),(569,17,106,2,NULL),(570,83,57,2,NULL),(571,38,40,2,NULL),(572,16,107,2,NULL),(573,84,57,2,NULL),(574,17,107,2,NULL),(575,40,40,2,NULL),(576,110,57,2,NULL),(577,38,51,2,NULL),(578,16,108,2,NULL),(579,66,57,2,NULL),(580,17,108,2,NULL),(581,40,51,2,NULL),(582,14,58,2,NULL),(583,38,54,2,NULL),(584,16,110,2,NULL),(585,35,58,2,NULL),(586,40,54,2,NULL),(587,17,110,2,NULL),(588,36,58,2,NULL),(589,16,111,2,NULL),(590,83,31,2,NULL),(591,41,58,2,NULL),(592,84,31,2,NULL),(593,17,111,2,NULL),(594,43,58,2,NULL),(595,110,31,2,NULL),(596,16,112,2,NULL),(597,21,58,2,NULL),(598,38,33,2,NULL),(599,17,112,2,NULL),(600,22,58,2,NULL),(601,40,33,2,NULL),(602,16,117,2,NULL),(603,23,58,2,NULL),(604,38,34,2,NULL),(605,17,117,2,NULL),(606,38,58,2,NULL),(607,40,34,2,NULL),(608,16,118,2,NULL),(609,40,58,2,NULL),(610,66,31,2,NULL),(611,17,118,2,NULL),(612,83,58,2,NULL),(613,38,36,2,NULL),(614,16,119,2,NULL),(615,84,58,2,NULL),(616,40,36,2,NULL),(617,17,119,2,NULL),(618,110,58,2,NULL),(619,16,61,2,NULL),(620,38,37,2,NULL),(621,66,58,2,NULL),(622,17,61,2,NULL),(623,40,37,2,NULL),(624,14,59,2,NULL),(625,16,75,2,NULL),(626,38,59,2,NULL),(627,35,59,2,NULL),(628,40,59,2,NULL),(629,17,75,2,NULL),(630,36,59,2,NULL),(631,38,60,2,NULL),(632,16,77,2,NULL),(633,41,59,2,NULL),(634,40,60,2,NULL),(635,17,77,2,NULL),(636,43,59,2,NULL),(637,38,62,2,NULL),(638,16,79,2,NULL),(639,21,59,2,NULL),(640,40,62,2,NULL),(641,17,79,2,NULL),(642,22,59,2,NULL),(643,38,64,2,NULL),(644,16,81,2,NULL),(645,23,59,2,NULL),(646,40,64,2,NULL),(647,17,81,2,NULL),(648,83,59,2,NULL),(649,38,69,2,NULL),(650,16,120,2,NULL),(651,84,59,2,NULL),(652,40,69,2,NULL),(653,17,120,2,NULL),(654,110,59,2,NULL),(655,38,72,2,NULL),(656,16,121,2,NULL),(657,66,59,2,NULL),(658,40,72,2,NULL),(659,17,121,2,NULL),(660,14,60,2,NULL),(661,38,76,2,NULL),(662,13,9,2,NULL),(663,35,60,2,NULL),(664,40,76,2,NULL),(665,50,15,2,NULL),(666,36,60,2,NULL),(667,38,78,2,NULL),(668,14,13,2,NULL),(669,41,60,2,NULL),(670,35,13,2,NULL),(671,40,78,2,NULL),(672,43,60,2,NULL),(673,38,80,2,NULL),(674,36,13,2,NULL),(675,21,60,2,NULL),(676,41,13,2,NULL),(677,40,80,2,NULL),(678,22,60,2,NULL),(679,38,83,2,NULL),(680,43,13,2,NULL),(681,23,60,2,NULL),(682,40,83,2,NULL),(683,21,13,2,NULL),(684,83,60,2,NULL),(685,38,87,2,NULL),(686,22,13,2,NULL),(687,84,60,2,NULL),(688,40,87,2,NULL),(689,110,60,2,NULL),(690,23,13,2,NULL),(691,38,88,2,NULL),(692,66,60,2,NULL),(693,83,13,2,NULL),(694,40,88,2,NULL),(695,84,13,2,NULL),(696,14,62,2,NULL),(697,38,89,2,NULL),(698,35,62,2,NULL),(699,110,13,2,NULL),(700,40,89,2,NULL),(701,36,62,2,NULL),(702,66,13,2,NULL),(703,38,90,2,NULL),(704,41,62,2,NULL),(705,19,14,2,NULL),(706,40,90,2,NULL),(707,43,62,2,NULL),(708,39,11,2,NULL),(709,38,91,2,NULL),(710,14,1,2,NULL),(711,21,62,2,NULL),(712,40,91,2,NULL),(713,22,62,2,NULL),(714,35,1,2,NULL),(715,38,92,2,NULL),(716,23,62,2,NULL),(717,36,1,2,NULL),(718,40,92,2,NULL),(719,14,5,2,NULL),(720,83,62,2,NULL),(721,38,93,2,NULL),(722,84,62,2,NULL),(723,35,5,2,NULL),(724,40,93,2,NULL),(725,110,62,2,NULL),(726,36,5,2,NULL),(727,38,94,2,NULL),(728,66,62,2,NULL),(729,14,6,2,NULL),(730,40,94,2,NULL),(731,35,6,2,NULL),(732,14,64,2,NULL),(733,38,95,2,NULL),(734,35,64,2,NULL),(735,36,6,2,NULL),(736,40,95,2,NULL),(737,36,64,2,NULL),(738,14,8,2,NULL),(739,38,96,2,NULL),(740,41,64,2,NULL),(741,35,8,2,NULL),(742,40,96,2,NULL),(743,43,64,2,NULL),(744,36,8,2,NULL),(745,38,97,2,NULL),(746,21,64,2,NULL),(747,14,38,2,NULL),(748,40,97,2,NULL),(749,22,64,2,NULL),(750,35,38,2,NULL),(751,38,98,2,NULL),(752,23,64,2,NULL),(753,36,38,2,NULL),(754,40,98,2,NULL),(755,14,39,2,NULL),(756,83,64,2,NULL),(757,38,99,2,NULL),(758,84,64,2,NULL),(759,35,39,2,NULL),(760,40,99,2,NULL),(761,110,64,2,NULL),(762,36,39,2,NULL),(763,38,100,2,NULL),(764,66,64,2,NULL),(765,14,15,2,NULL),(766,40,100,2,NULL),(767,35,15,2,NULL),(768,14,69,2,NULL),(769,38,101,2,NULL),(770,35,69,2,NULL),(771,36,15,2,NULL),(772,40,101,2,NULL),(773,36,69,2,NULL),(774,14,17,2,NULL),(775,38,102,2,NULL),(776,41,69,2,NULL),(777,35,17,2,NULL),(778,40,102,2,NULL),(779,43,69,2,NULL),(780,36,17,2,NULL),(781,38,105,2,NULL),(782,14,16,2,NULL),(783,21,69,2,NULL),(784,40,105,2,NULL),(785,35,16,2,NULL),(786,22,69,2,NULL),(787,38,106,2,NULL),(788,23,69,2,NULL),(789,36,16,2,NULL),(790,40,106,2,NULL),(791,14,22,2,NULL),(792,38,107,2,NULL),(793,83,69,2,NULL),(794,35,22,2,NULL),(795,84,69,2,NULL),(796,40,107,2,NULL),(797,36,22,2,NULL),(798,110,69,2,NULL),(799,38,108,2,NULL),(800,14,40,2,NULL),(801,66,69,2,NULL),(802,40,108,2,NULL),(803,35,40,2,NULL),(804,14,72,2,NULL),(805,38,110,2,NULL),(806,36,40,2,NULL),(807,35,72,2,NULL),(808,40,110,2,NULL),(809,14,51,2,NULL),(810,36,72,2,NULL),(811,38,111,2,NULL),(812,35,51,2,NULL),(813,41,72,2,NULL),(814,40,111,2,NULL),(815,36,51,2,NULL),(816,43,72,2,NULL),(817,38,112,2,NULL),(818,14,54,2,NULL),(819,21,72,2,NULL),(820,40,112,2,NULL),(821,35,54,2,NULL),(822,22,72,2,NULL),(823,38,117,2,NULL),(824,36,54,2,NULL),(825,23,72,2,NULL),(826,40,117,2,NULL),(827,14,33,2,NULL),(828,83,72,2,NULL),(829,35,33,2,NULL),(830,38,118,2,NULL),(831,84,72,2,NULL),(832,36,33,2,NULL),(833,40,118,2,NULL),(834,110,72,2,NULL),(835,14,34,2,NULL),(836,38,119,2,NULL),(837,66,72,2,NULL),(838,40,119,2,NULL),(839,35,34,2,NULL),(840,14,76,2,NULL),(841,38,61,2,NULL),(842,36,34,2,NULL),(843,35,76,2,NULL),(844,40,61,2,NULL),(845,14,36,2,NULL),(846,36,76,2,NULL),(847,38,75,2,NULL),(848,35,36,2,NULL),(849,41,76,2,NULL),(850,40,75,2,NULL),(851,36,36,2,NULL),(852,43,76,2,NULL),(853,38,77,2,NULL),(854,14,37,2,NULL),(855,21,76,2,NULL),(856,40,77,2,NULL),(857,35,37,2,NULL),(858,22,76,2,NULL),(859,36,37,2,NULL),(860,38,79,2,NULL),(861,23,76,2,NULL),(862,40,79,2,NULL),(863,83,76,2,NULL),(864,14,78,2,NULL),(865,38,81,2,NULL),(866,84,76,2,NULL),(867,35,78,2,NULL),(868,40,81,2,NULL),(869,110,76,2,NULL),(870,36,78,2,NULL),(871,38,120,2,NULL),(872,66,76,2,NULL),(873,14,80,2,NULL),(874,40,120,2,NULL),(875,35,80,2,NULL),(876,41,78,2,NULL),(877,38,121,2,NULL),(878,43,78,2,NULL),(879,36,80,2,NULL),(880,40,121,2,NULL),(881,21,78,2,NULL),(882,14,83,2,NULL),(883,45,30,2,NULL),(884,22,78,2,NULL),(885,35,83,2,NULL),(886,102,32,2,NULL),(887,36,83,2,NULL),(888,23,78,2,NULL),(889,83,1,2,NULL),(890,14,87,2,NULL),(891,83,78,2,NULL),(892,84,1,2,NULL),(893,84,78,2,NULL),(894,35,87,2,NULL),(895,110,1,2,NULL),(896,110,78,2,NULL),(897,36,87,2,NULL),(898,83,5,2,NULL),(899,66,78,2,NULL),(900,14,88,2,NULL),(901,84,5,2,NULL),(902,35,88,2,NULL),(903,41,80,2,NULL),(904,110,5,2,NULL),(905,43,80,2,NULL),(906,36,88,2,NULL),(907,83,6,2,NULL),(908,21,80,2,NULL),(909,14,89,2,NULL),(910,84,6,2,NULL),(911,22,80,2,NULL),(912,35,89,2,NULL),(913,110,6,2,NULL),(914,23,80,2,NULL),(915,36,89,2,NULL),(916,83,8,2,NULL),(917,14,90,2,NULL),(918,83,80,2,NULL),(919,84,8,2,NULL),(920,84,80,2,NULL),(921,35,90,2,NULL),(922,110,8,2,NULL),(923,110,80,2,NULL),(924,36,90,2,NULL),(925,83,38,2,NULL),(926,66,80,2,NULL),(927,14,91,2,NULL),(928,84,38,2,NULL),(929,35,91,2,NULL),(930,41,83,2,NULL),(931,110,38,2,NULL),(932,43,83,2,NULL),(933,36,91,2,NULL),(934,83,39,2,NULL),(935,21,83,2,NULL),(936,14,92,2,NULL),(937,84,39,2,NULL),(938,22,83,2,NULL),(939,35,92,2,NULL),(940,110,39,2,NULL),(941,23,83,2,NULL),(942,36,92,2,NULL),(943,83,15,2,NULL),(944,14,93,2,NULL),(945,83,83,2,NULL),(946,84,15,2,NULL),(947,84,83,2,NULL),(948,35,93,2,NULL),(949,110,15,2,NULL),(950,110,83,2,NULL),(951,36,93,2,NULL),(952,83,17,2,NULL),(953,66,83,2,NULL),(954,14,94,2,NULL),(955,84,17,2,NULL),(956,35,94,2,NULL),(957,41,87,2,NULL),(958,110,17,2,NULL),(959,43,87,2,NULL),(960,36,94,2,NULL),(961,83,16,2,NULL),(962,21,87,2,NULL),(963,14,95,2,NULL),(964,84,16,2,NULL),(965,22,87,2,NULL),(966,35,95,2,NULL),(967,110,16,2,NULL),(968,23,87,2,NULL),(969,36,95,2,NULL),(970,83,22,2,NULL),(971,14,96,2,NULL),(972,83,87,2,NULL),(973,84,22,2,NULL),(974,84,87,2,NULL),(975,35,96,2,NULL),(976,110,22,2,NULL),(977,110,87,2,NULL),(978,36,96,2,NULL),(979,83,40,2,NULL),(980,66,87,2,NULL),(981,14,97,2,NULL),(982,84,40,2,NULL),(983,35,97,2,NULL),(984,41,88,2,NULL),(985,110,40,2,NULL),(986,43,88,2,NULL),(987,36,97,2,NULL),(988,83,51,2,NULL),(989,21,88,2,NULL),(990,14,98,2,NULL),(991,84,51,2,NULL),(992,22,88,2,NULL),(993,35,98,2,NULL),(994,110,51,2,NULL),(995,23,88,2,NULL),(996,36,98,2,NULL),(997,83,54,2,NULL),(998,14,99,2,NULL),(999,83,88,2,NULL),(1000,84,54,2,NULL),(1001,84,88,2,NULL),(1002,35,99,2,NULL),(1003,110,54,2,NULL),(1004,110,88,2,NULL),(1005,36,99,2,NULL),(1006,83,33,2,NULL),(1007,66,88,2,NULL),(1008,14,100,2,NULL),(1009,84,33,2,NULL),(1010,35,100,2,NULL),(1011,41,89,2,NULL),(1012,110,33,2,NULL),(1013,43,89,2,NULL),(1014,36,100,2,NULL),(1015,83,34,2,NULL),(1016,21,89,2,NULL),(1017,14,101,2,NULL),(1018,84,34,2,NULL),(1019,22,89,2,NULL),(1020,35,101,2,NULL),(1021,110,34,2,NULL),(1022,23,89,2,NULL),(1023,36,101,2,NULL),(1024,83,36,2,NULL),(1025,14,102,2,NULL),(1026,83,89,2,NULL),(1027,84,36,2,NULL),(1028,84,89,2,NULL),(1029,35,102,2,NULL),(1030,110,36,2,NULL),(1031,110,89,2,NULL),(1032,36,102,2,NULL),(1033,83,37,2,NULL),(1034,66,89,2,NULL),(1035,14,105,2,NULL),(1036,84,37,2,NULL),(1037,35,105,2,NULL),(1038,41,90,2,NULL),(1039,110,37,2,NULL),(1040,43,90,2,NULL),(1041,36,105,2,NULL),(1042,21,90,2,NULL),(1043,83,90,2,NULL),(1044,14,106,2,NULL),(1045,22,90,2,NULL),(1046,84,90,2,NULL),(1047,35,106,2,NULL),(1048,23,90,2,NULL),(1049,36,106,2,NULL),(1050,110,90,2,NULL),(1051,66,90,2,NULL),(1052,83,91,2,NULL),(1053,14,107,2,NULL),(1054,41,91,2,NULL),(1055,84,91,2,NULL),(1056,35,107,2,NULL),(1057,43,91,2,NULL),(1058,36,107,2,NULL),(1059,110,91,2,NULL),(1060,21,91,2,NULL),(1061,14,108,2,NULL),(1062,83,92,2,NULL),(1063,22,91,2,NULL),(1064,84,92,2,NULL),(1065,35,108,2,NULL),(1066,23,91,2,NULL),(1067,36,108,2,NULL),(1068,110,92,2,NULL),(1069,66,91,2,NULL),(1070,83,93,2,NULL),(1071,14,110,2,NULL),(1072,41,92,2,NULL),(1073,84,93,2,NULL),(1074,35,110,2,NULL),(1075,43,92,2,NULL),(1076,110,93,2,NULL),(1077,36,110,2,NULL),(1078,21,92,2,NULL),(1079,14,111,2,NULL),(1080,83,94,2,NULL),(1081,22,92,2,NULL),(1082,84,94,2,NULL),(1083,35,111,2,NULL),(1084,23,92,2,NULL),(1085,110,94,2,NULL),(1086,36,111,2,NULL),(1087,66,92,2,NULL),(1088,14,112,2,NULL),(1089,83,95,2,NULL),(1090,41,93,2,NULL),(1091,35,112,2,NULL),(1092,43,93,2,NULL),(1093,84,95,2,NULL),(1094,36,112,2,NULL),(1095,21,93,2,NULL),(1096,14,117,2,NULL),(1097,110,95,2,NULL),(1098,22,93,2,NULL),(1099,83,96,2,NULL),(1100,35,117,2,NULL),(1101,23,93,2,NULL),(1102,36,117,2,NULL),(1103,84,96,2,NULL),(1104,66,93,2,NULL),(1105,110,96,2,NULL),(1106,14,118,2,NULL),(1107,41,94,2,NULL),(1108,83,97,2,NULL),(1109,35,118,2,NULL),(1110,43,94,2,NULL),(1111,84,97,2,NULL),(1112,36,118,2,NULL),(1113,21,94,2,NULL),(1114,110,97,2,NULL),(1115,14,119,2,NULL),(1116,22,94,2,NULL),(1117,83,98,2,NULL),(1118,35,119,2,NULL),(1119,23,94,2,NULL),(1120,36,119,2,NULL),(1121,84,98,2,NULL),(1122,66,94,2,NULL),(1123,110,98,2,NULL),(1124,14,61,2,NULL),(1125,41,95,2,NULL),(1126,35,61,2,NULL),(1127,83,99,2,NULL),(1128,43,95,2,NULL),(1129,84,99,2,NULL),(1130,36,61,2,NULL),(1131,21,95,2,NULL),(1132,110,99,2,NULL),(1133,14,75,2,NULL),(1134,22,95,2,NULL),(1135,35,75,2,NULL),(1136,83,100,2,NULL),(1137,23,95,2,NULL),(1138,84,100,2,NULL),(1139,36,75,2,NULL),(1140,66,95,2,NULL),(1141,14,77,2,NULL),(1142,110,100,2,NULL),(1143,41,96,2,NULL),(1144,83,101,2,NULL),(1145,35,77,2,NULL),(1146,43,96,2,NULL),(1147,84,101,2,NULL),(1148,36,77,2,NULL),(1149,21,96,2,NULL),(1150,110,101,2,NULL),(1151,14,79,2,NULL),(1152,22,96,2,NULL),(1153,83,102,2,NULL),(1154,35,79,2,NULL),(1155,23,96,2,NULL),(1156,84,102,2,NULL),(1157,36,79,2,NULL),(1158,66,96,2,NULL),(1159,14,81,2,NULL),(1160,110,102,2,NULL),(1161,41,97,2,NULL),(1162,83,105,2,NULL),(1163,35,81,2,NULL),(1164,43,97,2,NULL),(1165,84,105,2,NULL),(1166,36,81,2,NULL),(1167,21,97,2,NULL),(1168,110,105,2,NULL),(1169,14,120,2,NULL),(1170,22,97,2,NULL),(1171,83,106,2,NULL),(1172,35,120,2,NULL),(1173,23,97,2,NULL),(1174,36,120,2,NULL),(1175,84,106,2,NULL),(1176,66,97,2,NULL),(1177,14,121,2,NULL),(1178,110,106,2,NULL),(1179,41,98,2,NULL),(1180,35,121,2,NULL),(1181,83,107,2,NULL),(1182,43,98,2,NULL),(1183,36,121,2,NULL),(1184,84,107,2,NULL),(1185,21,98,2,NULL),(1186,110,107,2,NULL),(1187,41,15,2,NULL),(1188,22,98,2,NULL),(1189,43,15,2,NULL),(1190,83,108,2,NULL),(1191,23,98,2,NULL),(1192,21,15,2,NULL),(1193,84,108,2,NULL),(1194,66,98,2,NULL),(1195,110,108,2,NULL),(1196,22,15,2,NULL),(1197,41,99,2,NULL),(1198,83,110,2,NULL),(1199,23,15,2,NULL),(1200,43,99,2,NULL),(1201,84,110,2,NULL),(1202,66,15,2,NULL),(1203,21,99,2,NULL),(1204,24,15,2,NULL),(1205,110,110,2,NULL),(1206,22,99,2,NULL),(1207,53,15,2,NULL),(1208,83,111,2,NULL),(1209,23,99,2,NULL),(1210,65,15,2,NULL),(1211,84,111,2,NULL),(1212,66,99,2,NULL),(1213,110,111,2,NULL),(1214,41,17,2,NULL),(1215,41,100,2,NULL),(1216,43,17,2,NULL),(1217,83,112,2,NULL),(1218,43,100,2,NULL),(1219,21,17,2,NULL),(1220,84,112,2,NULL),(1221,21,100,2,NULL),(1222,22,17,2,NULL),(1223,110,112,2,NULL),(1224,22,100,2,NULL),(1225,83,117,2,NULL),(1226,23,17,2,NULL),(1227,23,100,2,NULL),(1228,84,117,2,NULL),(1229,66,17,2,NULL),(1230,66,100,2,NULL),(1231,110,117,2,NULL),(1232,41,101,2,NULL),(1233,83,118,2,NULL),(1234,43,101,2,NULL),(1235,84,118,2,NULL),(1236,21,101,2,NULL),(1237,110,118,2,NULL),(1238,22,101,2,NULL),(1239,83,119,2,NULL),(1240,23,101,2,NULL),(1241,84,119,2,NULL),(1242,66,101,2,NULL),(1243,110,119,2,NULL),(1244,41,102,2,NULL),(1245,83,61,2,NULL),(1246,43,102,2,NULL),(1247,21,102,2,NULL),(1248,84,61,2,NULL),(1249,22,102,2,NULL),(1250,110,61,2,NULL),(1251,23,102,2,NULL),(1252,83,75,2,NULL),(1253,66,102,2,NULL),(1254,84,75,2,NULL),(1255,41,105,2,NULL),(1256,110,75,2,NULL),(1257,43,105,2,NULL),(1258,83,77,2,NULL),(1259,21,105,2,NULL),(1260,84,77,2,NULL),(1261,22,105,2,NULL),(1262,110,77,2,NULL),(1263,23,105,2,NULL),(1264,83,79,2,NULL),(1265,66,105,2,NULL),(1266,84,79,2,NULL),(1267,41,106,2,NULL),(1268,110,79,2,NULL),(1269,43,106,2,NULL),(1270,83,81,2,NULL),(1271,21,106,2,NULL),(1272,84,81,2,NULL),(1273,22,106,2,NULL),(1274,110,81,2,NULL),(1275,23,106,2,NULL),(1276,83,120,2,NULL),(1277,66,106,2,NULL),(1278,84,120,2,NULL),(1279,41,107,2,NULL),(1280,110,120,2,NULL),(1281,43,107,2,NULL),(1282,83,121,2,NULL),(1283,21,107,2,NULL),(1284,84,121,2,NULL),(1285,22,107,2,NULL),(1286,110,121,2,NULL),(1287,23,107,2,NULL),(1288,41,33,2,NULL),(1289,66,107,2,NULL),(1290,43,33,2,NULL),(1291,41,108,2,NULL),(1292,21,33,2,NULL),(1293,43,108,2,NULL),(1294,22,33,2,NULL),(1295,21,108,2,NULL),(1296,23,33,2,NULL),(1297,22,108,2,NULL),(1298,66,33,2,NULL),(1299,23,108,2,NULL),(1300,55,36,2,NULL),(1301,66,108,2,NULL),(1302,57,36,2,NULL),(1303,41,110,2,NULL),(1304,71,36,2,NULL),(1305,43,110,2,NULL),(1306,41,34,2,NULL),(1307,21,110,2,NULL),(1308,43,34,2,NULL),(1309,22,110,2,NULL),(1310,21,34,2,NULL),(1311,23,110,2,NULL),(1312,22,34,2,NULL),(1313,66,110,2,NULL),(1314,23,34,2,NULL),(1315,41,111,2,NULL),(1316,66,34,2,NULL),(1317,43,111,2,NULL),(1318,66,1,2,NULL),(1319,21,111,2,NULL),(1320,66,5,2,NULL),(1321,22,111,2,NULL),(1322,66,6,2,NULL),(1323,23,111,2,NULL),(1324,66,8,2,NULL),(1325,66,111,2,NULL),(1326,66,38,2,NULL),(1327,41,112,2,NULL),(1328,66,39,2,NULL),(1329,43,112,2,NULL),(1330,66,16,2,NULL),(1331,21,112,2,NULL),(1332,66,22,2,NULL),(1333,22,112,2,NULL),(1334,66,40,2,NULL),(1335,23,112,2,NULL),(1336,66,51,2,NULL),(1337,66,112,2,NULL),(1338,66,54,2,NULL),(1339,41,117,2,NULL),(1340,66,36,2,NULL),(1341,43,117,2,NULL),(1342,66,37,2,NULL),(1343,21,117,2,NULL),(1344,22,117,2,NULL),(1345,66,117,2,NULL),(1346,23,117,2,NULL),(1347,66,118,2,NULL),(1348,41,118,2,NULL),(1349,66,119,2,NULL),(1350,43,118,2,NULL),(1351,66,61,2,NULL),(1352,21,118,2,NULL),(1353,66,75,2,NULL),(1354,22,118,2,NULL),(1355,66,77,2,NULL),(1356,23,118,2,NULL),(1357,66,79,2,NULL),(1358,41,119,2,NULL),(1359,66,81,2,NULL),(1360,43,119,2,NULL),(1361,66,120,2,NULL),(1362,21,119,2,NULL),(1363,66,121,2,NULL),(1364,22,119,2,NULL),(1365,2,2,2,NULL),(1366,23,119,2,NULL),(1367,41,36,2,NULL),(1368,6,3,2,NULL),(1369,43,36,2,NULL),(1370,41,1,2,NULL),(1371,21,36,2,NULL),(1372,43,1,2,NULL),(1373,22,36,2,NULL),(1374,21,1,2,NULL),(1375,23,36,2,NULL),(1376,22,1,2,NULL),(1377,42,36,2,NULL),(1378,23,1,2,NULL),(1379,91,36,2,NULL),(1380,41,5,2,NULL),(1381,107,36,2,NULL),(1382,43,5,2,NULL),(1383,41,37,2,NULL),(1384,21,5,2,NULL),(1385,43,37,2,NULL),(1386,22,5,2,NULL),(1387,21,37,2,NULL),(1388,23,5,2,NULL),(1389,22,37,2,NULL),(1390,23,37,2,NULL),(1391,41,6,2,NULL),(1392,43,6,2,NULL),(1393,21,6,2,NULL),(1394,22,6,2,NULL),(1395,23,6,2,NULL),(1396,41,8,2,NULL),(1397,43,8,2,NULL),(1398,21,8,2,NULL),(1399,22,8,2,NULL),(1400,23,8,2,NULL),(1401,41,38,2,NULL),(1402,43,38,2,NULL),(1403,21,38,2,NULL),(1404,22,38,2,NULL),(1405,23,38,2,NULL),(1406,41,39,2,NULL),(1407,43,39,2,NULL),(1408,21,39,2,NULL),(1409,22,39,2,NULL),(1410,23,39,2,NULL),(1411,41,61,2,NULL),(1412,41,120,2,NULL),(1413,43,61,2,NULL),(1414,43,120,2,NULL),(1415,21,61,2,NULL),(1416,21,120,2,NULL),(1417,22,61,2,NULL),(1418,22,120,2,NULL),(1419,23,61,2,NULL),(1420,23,120,2,NULL),(1421,41,75,2,NULL),(1422,41,121,2,NULL),(1423,43,75,2,NULL),(1424,43,121,2,NULL),(1425,21,75,2,NULL),(1426,21,121,2,NULL),(1427,22,75,2,NULL),(1428,22,121,2,NULL),(1429,23,75,2,NULL),(1430,23,121,2,NULL),(1431,41,77,2,NULL),(1432,43,77,2,NULL),(1433,21,77,2,NULL),(1434,22,77,2,NULL),(1435,23,77,2,NULL),(1436,41,79,2,NULL),(1437,43,79,2,NULL),(1438,21,79,2,NULL),(1439,22,79,2,NULL),(1440,23,79,2,NULL),(1441,41,81,2,NULL),(1442,43,81,2,NULL),(1443,21,81,2,NULL),(1444,22,81,2,NULL),(1445,23,81,2,NULL),(1446,41,16,2,NULL),(1447,43,16,2,NULL),(1448,21,16,2,NULL),(1449,22,16,2,NULL),(1450,23,16,2,NULL),(1451,41,22,2,NULL),(1452,43,22,2,NULL),(1453,41,40,2,NULL),(1454,43,40,2,NULL),(1455,41,51,2,NULL),(1456,43,51,2,NULL),(1457,41,54,2,NULL),(1458,43,54,2,NULL),(1459,21,22,2,NULL),(1460,22,22,2,NULL),(1461,23,22,2,NULL),(1462,21,40,2,NULL),(1463,22,40,2,NULL),(1464,23,40,2,NULL),(1465,21,51,2,NULL),(1466,22,51,2,NULL),(1467,23,51,2,NULL),(1468,21,54,2,NULL),(1469,22,54,2,NULL),(1470,23,54,2,NULL);
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

-- Dump completed on 2015-10-12  3:30:30
