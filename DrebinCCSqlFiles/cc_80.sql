-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_80
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (25,'(.*)'),(16,'.Rabies'),(17,'android.appwidget.action.APPWIDGET_UPDATE'),(3,'android.intent.action.BOOT_COMPLETED'),(21,'android.intent.action.DELETE'),(28,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(14,'android.intent.action.NEW_OUTGOING_CALL'),(11,'android.intent.action.PACKAGE_ADDED'),(12,'android.intent.action.PACKAGE_REMOVED'),(13,'android.intent.action.PACKAGE_REPLACED'),(15,'android.intent.action.PHONE_STATE'),(26,'android.intent.action.SCREEN_OFF'),(29,'android.intent.action.SENDTO'),(6,'android.intent.action.SET_WALLPAPER'),(27,'android.intent.action.USER_PRESENT'),(19,'android.intent.action.VIEW'),(10,'android.net.conn.CONNECTIVITY_CHANGE'),(2,'android.provider.Telephony.SMS_RECEIVED'),(5,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(24,'com.airpush.android.PushServiceStart40484'),(7,'com.android.action_ACTIVITY3'),(9,'com.android.apple.APPLESERVICE'),(22,'cooguo.intent.action.(.*)'),(4,'cooguo.intent.action.MARKET'),(8,'cooguo.intent.action.WALLPAPER_SETTING'),(23,'paulscode.android.mupen64plus.MyService'),(20,'wallpapermarket.intent.action.LIVEWALLPAPERPREVIEW'),(18,'wallpapermarket.intent.action.SETLIVEWALLPAPER');
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
INSERT INTO `Applications` VALUES (1,'jp.ninkiapplidouga',1),(2,'com.cooshare.www.httpconn',1),(3,'csllc.CellShark',48),(4,'com.cooshare.www.httpconn',13),(5,'com.cooguo.market',5),(6,'kagegames.apps.DWBeta',18),(7,'com.n64.emulator',14);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(3,'android.intent.category.HOME'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'jp.ninkiapplidouga.MainActivity'),(2,1,'jp.ninkiapplidouga.MovieActivity'),(3,2,'com.cooshare.www.httpconn.Home'),(4,2,'com.cooshare.www.httpconn.HomeLogin'),(5,2,'com.cooshare.www.httpconn.BoundPhone'),(6,2,'com.cooshare.www.httpconn.Index'),(7,2,'com.cooshare.www.httpconn.MyLocation'),(8,2,'com.cooshare.www.httpconn.SendSMS'),(9,2,'com.cooshare.www.httpconn.ClickableListItemActivity'),(10,4,'com.cooshare.www.httpconn.Home'),(11,2,'com.cooshare.www.httpconn.LifeSearch'),(12,3,'csllc.CellShark.activities.CellSharkActivity'),(13,2,'com.cooshare.www.httpconn.Map'),(14,2,'com.cooshare.www.httpconn.LifeSearchN'),(15,4,'com.cooshare.www.httpconn.HomeLogin'),(16,2,'com.cooshare.www.httpconn.ClickableListItemActivityN'),(17,3,'csllc.CellShark.activities.CreateAccountActivity'),(18,4,'com.cooshare.www.httpconn.BoundPhone'),(19,2,'com.cooshare.www.httpconn.Help'),(20,3,'csllc.CellShark.activities.AuthenticationActivity'),(21,4,'com.cooshare.www.httpconn.Index'),(22,2,'com.cooshare.www.httpconn.AddFriend'),(23,3,'csllc.CellShark.activities.InfoActivity'),(24,4,'com.cooshare.www.httpconn.MyLocation'),(25,2,'com.cooshare.www.httpconn.ClickableListItemActivityF'),(26,3,'csllc.CellShark.activities.HomeActivity'),(27,4,'com.cooshare.www.httpconn.SendSMS'),(28,2,'com.cooshare.www.httpconn.ClickableListItemActivityP'),(29,3,'csllc.CellShark.activities.AgreementActivity'),(30,4,'com.cooshare.www.httpconn.ClickableListItemActivity'),(31,2,'com.cooshare.www.httpconn.PSettings'),(32,3,'com.google.ads.AdActivity'),(33,4,'com.cooshare.www.httpconn.LifeSearch'),(34,2,'com.cooshare.www.httpconn.ACDetail'),(35,3,'csllc.CellShark.services.PhoneManagerService'),(36,4,'com.cooshare.www.httpconn.Map'),(37,2,'com.cooshare.www.httpconn.SNDetail'),(38,3,'csllc.CellShark.receivers.SmsReceiver'),(39,4,'com.cooshare.www.httpconn.LifeSearchN'),(40,2,'com.cooshare.www.httpconn.PSMFavorite'),(41,4,'com.cooshare.www.httpconn.ClickableListItemActivityN'),(42,2,'com.cooshare.www.httpconn.NotifyBox'),(43,4,'com.cooshare.www.httpconn.Help'),(44,3,'csllc.CellShark.receivers.BootCompletedReceiver'),(45,2,'com.cooshare.www.httpconn.ShopDetails'),(46,4,'com.cooshare.www.httpconn.AddFriend'),(47,2,'com.cooshare.www.httpconn.ClickableListItemActivityChecked'),(48,4,'com.cooshare.www.httpconn.ClickableListItemActivityF'),(49,2,'com.cooshare.www.httpconn.ClickableListItemActivityNews'),(50,4,'com.cooshare.www.httpconn.ClickableListItemActivityP'),(51,5,'com.cooguo.market.MarketActivity'),(52,2,'com.cooshare.www.httpconn.ClickableListItemActivityTalk'),(53,4,'com.cooshare.www.httpconn.PSettings'),(54,2,'com.cooshare.www.httpconn.ClickableListItemActivityXBox'),(55,4,'com.cooshare.www.httpconn.ACDetail'),(56,2,'com.cooshare.www.httpconn.CreateTalk'),(57,4,'com.cooshare.www.httpconn.SNDetail'),(58,2,'com.cooshare.www.httpconn.NewsDetails'),(59,4,'com.cooshare.www.httpconn.PSMFavorite'),(60,2,'com.cooshare.www.httpconn.TalkDetail'),(61,4,'com.cooshare.www.httpconn.NotifyBox'),(62,5,'com.cooguo.market.JumpToActivity'),(63,6,'kagegames.apps.DWBeta.DogWars'),(64,2,'com.cooshare.www.httpconn.XpBoxTip'),(65,4,'com.cooshare.www.httpconn.ShopDetails'),(66,2,'com.cooshare.www.httpconn.NetworkTS'),(67,4,'com.cooshare.www.httpconn.ClickableListItemActivityChecked'),(68,6,'kagegames.apps.DWBeta.SystemMsgModalActivity'),(69,2,'com.cooshare.www.httpconn.ClickableListItemActivityFBN'),(70,4,'com.cooshare.www.httpconn.ClickableListItemActivityNews'),(71,5,'com.cooguo.market.LiveWallpaperPreview'),(72,6,'kagegames.apps.DWBeta.IntroStoryActivity'),(73,2,'com.cooshare.www.httpconn.FindUserByName'),(74,4,'com.cooshare.www.httpconn.ClickableListItemActivityTalk'),(75,5,'com.cooguo.market.MarketStartingActivity'),(76,6,'kagegames.apps.DWBeta.SelectPlayerActivity'),(77,2,'com.cooshare.www.httpconn.core'),(78,4,'com.cooshare.www.httpconn.ClickableListItemActivityXBox'),(79,5,'com.android.apple.TestActivity'),(80,6,'kagegames.apps.DWBeta.SelectDogTypeActivity'),(81,4,'com.cooshare.www.httpconn.CreateTalk'),(82,5,'com.android.cgos.Activity1'),(83,6,'kagegames.apps.DWBeta.NameOwnerDogActivity'),(84,4,'com.cooshare.www.httpconn.NewsDetails'),(85,5,'com.android.cgos.Activity2'),(86,6,'kagegames.apps.DWBeta.UploadPicActivity'),(87,4,'com.cooshare.www.httpconn.TalkDetail'),(88,5,'com.android.cgos.Activity3'),(89,6,'kagegames.apps.DWBeta.ImageFileSelectActivity'),(90,4,'com.cooshare.www.httpconn.XpBoxTip'),(91,6,'kagegames.apps.DWBeta.DWMainActivity'),(92,4,'com.cooshare.www.httpconn.NetworkTS'),(93,6,'kagegames.apps.DWBeta.StoreActivity'),(94,4,'com.cooshare.www.httpconn.ClickableListItemActivityFBN'),(95,5,'com.cooguo.wallpaper.service.WPSService'),(96,6,'kagegames.apps.DWBeta.TrainListActivity'),(97,4,'com.cooshare.www.httpconn.FindUserByName'),(98,6,'kagegames.apps.DWBeta.FightMainActivity'),(99,4,'com.cooshare.www.httpconn.core'),(100,5,'com.android.apple.AppleService'),(101,6,'kagegames.apps.DWBeta.FightActivity'),(102,4,'com.cooshare.www.httpconn.AutoSrv'),(103,6,'kagegames.apps.DWBeta.FightListActivity'),(104,6,'kagegames.apps.DWBeta.ScoreboardListActivity'),(105,5,'com.android.cgos.GosService'),(106,6,'kagegames.apps.DWBeta.ScoreboardWebActivity'),(107,4,'com.cooshare.www.httpconn.SMSSrv'),(108,5,'com.cooguo.market.MarketReceiver'),(109,6,'kagegames.apps.DWBeta.ShoutboxActivity'),(110,6,'kagegames.apps.DWBeta.BuildCredActivity'),(111,4,'com.cooshare.www.httpconn.TeleSrv'),(112,6,'kagegames.apps.DWBeta.FightChallengeActivity'),(113,6,'kagegames.apps.DWBeta.FeedActivity'),(114,5,'com.android.apple.AppleReceiver'),(115,6,'kagegames.apps.DWBeta.TrainRunning'),(116,6,'kagegames.apps.DWBeta.TrainDragging'),(117,5,'com.android.cgos.AlarmReceiver'),(118,6,'kagegames.apps.DWBeta.TrainBiting'),(119,5,'com.android.cgos.GosReceiver'),(120,6,'kagegames.apps.DWBeta.OptionsActivity'),(121,6,'com.dogbite.Rabies'),(122,6,'kagegames.apps.DWBeta.PuppyLoveWidgetProvider'),(123,6,'com.dogbite.Doghouse'),(124,5,'com.cooguo.market.y'),(125,5,'com.cooguo.market.d.a.r'),(126,5,'com.android.cgos.h'),(127,5,'com.cooguo.market.d.s'),(128,7,'paulscode.android.mupen64plus.MainActivity'),(129,7,'paulscode.android.mupen64plus.MenuActivity'),(130,7,'paulscode.android.mupen64plus.MenuSettingsActivity'),(131,7,'paulscode.android.mupen64plus.MenuSettingsVideoActivity'),(132,7,'paulscode.android.mupen64plus.MenuSettingsVideoChangeActivity'),(133,7,'paulscode.android.mupen64plus.MenuSettingsVideoConfigureActivity'),(134,7,'paulscode.android.mupen64plus.MenuSettingsAudioActivity'),(135,7,'paulscode.android.mupen64plus.MenuSettingsAudioChangeActivity'),(136,7,'paulscode.android.mupen64plus.MenuSettingsInputActivity'),(137,7,'paulscode.android.mupen64plus.MenuSettingsInputChangeActivity'),(138,7,'paulscode.android.mupen64plus.MenuSettingsInputConfigureActivity'),(139,7,'paulscode.android.mupen64plus.MenuSettingsInputConfigureButtonsActivity'),(140,7,'paulscode.android.mupen64plus.MenuSettingsRSPActivity'),(141,7,'paulscode.android.mupen64plus.MenuSettingsRSPChangeActivity'),(142,7,'paulscode.android.mupen64plus.MenuSettingsCoreActivity'),(143,7,'paulscode.android.mupen64plus.MenuSettingsCoreChangeActivity'),(144,7,'paulscode.android.mupen64plus.MenuSettingsCoreConfigureActivity'),(145,7,'paulscode.android.mupen64plus.MenuSkinsActivity'),(146,7,'paulscode.android.mupen64plus.MenuSkinsGamepadActivity'),(147,7,'paulscode.android.mupen64plus.MenuSkinsGamepadChangeActivity'),(148,7,'paulscode.android.mupen64plus.FileChooserActivity'),(149,7,'paulscode.android.mupen64plus.MenuHelp'),(150,7,'paulscode.android.mupen64plus.A_AndroidSupermarketActivity'),(151,7,'paulscode.android.mupen64plus.SDLActivity'),(152,7,'com.mobfox.sdk.InAppWebView'),(153,7,'com.airpush.android.PushAds'),(154,7,'paulscode.android.mupen64plus.MyService'),(155,7,'com.airpush.android.PushService'),(156,5,'com.android.cgos.GosUtil'),(157,7,'paulscode.android.mupen64plus.Receiver'),(158,7,'paulscode.android.mupen64plus.MyReceiver'),(159,7,'com.Leadbolt.AdNotification'),(160,7,'com.airpush.android.UserDetailsReceiver'),(161,7,'com.airpush.android.MessageReceiver'),(162,7,'com.airpush.android.DeliveryReceiver'),(163,3,'csllc.CellShark.observers.CallLogObserver'),(164,3,'csllc.CellShark.activities.HomeActivity$4'),(165,3,'csllc.CellShark.observers.ContactsObserver'),(166,3,'csllc.CellShark.activities.HomeActivity$2'),(167,3,'csllc.CellShark.activities.HomeActivity$3'),(168,3,'csllc.CellShark.commwrapper.Synchronize'),(169,3,'csllc.CellShark.activities.CellSharkActivity$2'),(170,3,'csllc.CellShark.activities.AgreementActivity$1'),(171,3,'csllc.CellShark.observers.SmsObserver'),(172,3,'csllc.CellShark.activities.CellSharkActivity$1'),(173,3,'com.google.ads.util.AdUtil$UserActivityReceiver'),(174,2,'com.cooshare.www.httpconn.ShopDetails$5'),(175,2,'com.cooshare.www.httpconn.Index$4'),(176,2,'com.cooshare.www.httpconn.ShopDetails$4'),(177,2,'com.cooshare.www.httpconn.Index$3'),(178,2,'com.cooshare.www.httpconn.Index$5'),(179,2,'com.cooshare.www.httpconn.ShopDetails$6'),(180,6,'kagegames.apps.DWBeta.DWMainActivity$BtnOptions_ClickListener'),(181,6,'kagegames.apps.DWBeta._DWActivity'),(182,6,'kagegames.apps.DWBeta.DWMainActivity$BtnScoreboard_ClickListener'),(183,6,'kagegames.apps.DWBeta.DWMainActivity$BtnCred_ClickListener'),(184,6,'kagegames.apps.DWBeta.DogWars$BtnStart_ClickListener'),(185,6,'kagegames.apps.DWBeta.FightMainActivity$BtnPickFight_ClickListener'),(186,6,'kagegames.apps.DWBeta.DWMainActivity$BtnFight_ClickListener'),(187,6,'kagegames.apps.DWBeta.DWMainActivity$BtnFeed_ClickListener'),(188,6,'kagegames.apps.DWBeta.DWMainActivity$BtnTrain_ClickListener'),(189,6,'kagegames.apps.DWBeta.DWMainActivity$BtnBuyStuff_ClickListener'),(190,4,'com.cooshare.www.httpconn.ShopDetails$6'),(191,6,'kagegames.apps.DWBeta.DWMainActivity$BtnShoutbox_ClickListener'),(192,4,'com.cooshare.www.httpconn.Index$3'),(193,4,'com.cooshare.www.httpconn.ShopDetails$5'),(194,4,'com.cooshare.www.httpconn.Index$5'),(195,4,'com.cooshare.www.httpconn.Index$4'),(196,4,'com.cooshare.www.httpconn.ShopDetails$4');
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,71,'com.cooguo.market.live_wallpaper.description'),(2,51,'update'),(3,88,'apkPackage'),(4,71,'com.cooguo.market.live_wallpaper.icon'),(5,88,'apkName'),(6,71,'com.cooguo.market.live_wallpaper.app_name'),(7,88,'url'),(8,88,'body'),(9,82,'message'),(10,71,'com.cooguo.market.live_wallpaper.service'),(11,71,'com.cooguo.market.live_wallpaper.size'),(12,71,'com.cooguo.market.live_wallpaper.rating'),(13,71,'com.cooguo.market.live_wallpaper.versionname'),(14,71,'com.cooguo.market.live_wallpaper.package'),(15,71,'com.cooguo.market.live_wallpaper.settings'),(16,71,'com.cooguo.market.live_wallpaper.intent'),(17,71,'com.cooguo.market.live_wallpaper.state'),(18,71,'com.cooguo.market.live_wallpaper.id'),(19,88,'address'),(20,85,'message'),(21,32,'com.google.ads.AdOpener'),(22,17,'CSDBCreatFN'),(23,32,'params'),(24,17,'CSDBCreatPw'),(25,17,'CSDBCreatEm'),(26,38,'pdus'),(27,17,'CSDBCreatUn'),(28,17,'CSDBCreatLN'),(29,32,'action'),(30,64,'nfcontents'),(31,42,'nfcontents'),(32,5,'pendingphones'),(33,28,'friendid'),(34,45,'shopdetails'),(35,16,'ServiceName'),(36,60,'talkdetailspage'),(37,56,'ctinfo'),(38,58,'newsid'),(39,13,'maplatlng'),(40,52,'talkdetails'),(41,122,'appWidgetIds'),(42,69,'name'),(43,9,'ServiceCls'),(44,122,'appWidgetId'),(45,90,'nfcontents'),(46,30,'ServiceCls'),(47,65,'shopdetails'),(48,61,'nfcontents'),(49,84,'newsid'),(50,81,'ctinfo'),(51,50,'friendid'),(52,111,'incoming_number'),(53,36,'maplatlng'),(54,111,'android.intent.extra.PHONE_NUMBER'),(55,94,'name'),(56,74,'talkdetails'),(57,18,'pendingphones'),(58,87,'talkdetailspage'),(59,107,'pdus'),(60,41,'ServiceName');
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
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'s',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'r',1,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'r',1,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',1,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',1,NULL,NULL),(63,63,'a',1,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,71,'a',0,NULL,NULL),(72,72,'a',0,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,74,'a',0,NULL,NULL),(75,75,'a',0,NULL,NULL),(76,76,'a',0,NULL,NULL),(77,77,'s',0,NULL,NULL),(78,78,'a',0,NULL,NULL),(79,79,'a',0,NULL,NULL),(80,80,'a',0,NULL,NULL),(81,81,'a',0,NULL,NULL),(82,82,'a',0,NULL,NULL),(83,83,'a',0,NULL,NULL),(84,84,'a',0,NULL,NULL),(85,85,'a',0,NULL,NULL),(86,86,'a',0,NULL,NULL),(87,87,'a',0,NULL,NULL),(88,88,'a',1,NULL,NULL),(89,89,'a',0,NULL,NULL),(90,90,'a',0,NULL,NULL),(91,91,'a',0,NULL,NULL),(92,92,'a',0,NULL,NULL),(93,93,'a',0,NULL,NULL),(94,94,'a',0,NULL,NULL),(95,95,'s',1,NULL,NULL),(96,96,'a',0,NULL,NULL),(97,97,'a',0,NULL,NULL),(98,98,'a',0,NULL,NULL),(99,99,'s',0,NULL,NULL),(100,100,'s',1,NULL,NULL),(101,101,'a',0,NULL,NULL),(102,102,'r',1,NULL,NULL),(103,103,'a',0,NULL,NULL),(104,104,'a',0,NULL,NULL),(105,105,'s',0,NULL,NULL),(106,106,'a',0,NULL,NULL),(107,107,'r',1,NULL,NULL),(108,108,'r',1,NULL,NULL),(109,109,'a',0,NULL,NULL),(110,110,'a',0,NULL,NULL),(111,111,'r',1,NULL,NULL),(112,112,'a',0,NULL,NULL),(113,113,'a',0,NULL,NULL),(114,114,'r',1,NULL,NULL),(115,115,'a',0,NULL,NULL),(116,116,'a',0,NULL,NULL),(117,117,'r',0,NULL,NULL),(118,118,'a',0,NULL,NULL),(119,119,'r',1,NULL,NULL),(120,120,'a',0,NULL,NULL),(121,121,'s',1,NULL,NULL),(122,122,'r',1,NULL,NULL),(123,123,'r',1,NULL,NULL),(124,128,'a',1,NULL,NULL),(125,129,'a',0,NULL,NULL),(126,130,'a',0,NULL,NULL),(127,131,'a',0,NULL,NULL),(128,132,'a',0,NULL,NULL),(129,133,'a',0,NULL,NULL),(130,134,'a',0,NULL,NULL),(131,135,'a',0,NULL,NULL),(132,136,'a',0,NULL,NULL),(133,137,'a',0,NULL,NULL),(134,138,'a',0,NULL,NULL),(135,139,'a',0,NULL,NULL),(136,140,'a',0,NULL,NULL),(137,141,'a',0,NULL,NULL),(138,142,'a',0,NULL,NULL),(139,143,'a',0,NULL,NULL),(140,144,'a',0,NULL,NULL),(141,145,'a',0,NULL,NULL),(142,146,'a',0,NULL,NULL),(143,147,'a',0,NULL,NULL),(144,148,'a',0,NULL,NULL),(145,149,'a',0,NULL,NULL),(146,150,'a',0,NULL,NULL),(147,151,'a',0,NULL,NULL),(148,152,'a',0,NULL,NULL),(149,153,'a',0,NULL,NULL),(150,154,'s',1,NULL,NULL),(151,155,'s',1,NULL,NULL),(152,157,'r',1,NULL,NULL),(153,158,'r',1,NULL,NULL),(154,159,'r',0,NULL,NULL),(155,160,'r',0,NULL,NULL),(156,161,'r',0,NULL,NULL),(157,162,'r',0,NULL,NULL),(158,173,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,71),(2,2,108),(3,2,51),(4,3,88),(5,3,85),(6,4,51),(7,5,119),(8,5,51),(9,6,108),(10,6,51),(11,7,51),(12,7,108),(13,8,71),(14,9,108),(15,10,71),(16,11,71),(17,12,51),(18,12,114),(19,13,62),(20,14,51),(21,15,82),(22,16,108),(23,17,108),(24,17,51),(25,18,85),(26,18,88),(27,19,35),(28,20,26),(29,21,35),(30,22,26),(31,23,12),(32,24,26),(33,25,35),(34,26,12),(35,27,12),(36,28,35),(37,29,29),(38,30,35),(39,31,32),(40,32,20),(41,33,12),(42,34,12),(43,35,35),(44,36,12),(45,37,12),(46,38,12),(47,39,44),(48,40,12),(49,41,12),(50,42,6),(51,43,66),(52,44,45),(53,45,6),(54,46,5),(55,47,6),(56,48,11),(57,49,3),(58,50,11),(59,51,73),(60,52,6),(61,53,22),(62,54,13),(63,55,11),(64,56,11),(65,57,11),(66,58,4),(67,59,8),(68,60,14),(69,61,45),(70,62,45),(71,63,31),(72,64,6),(73,65,3),(74,66,64),(75,67,6),(76,68,45),(77,69,7),(78,70,31),(79,71,121),(80,72,25),(81,73,110),(82,74,6),(83,75,91),(84,76,6),(85,77,6),(86,78,112),(87,78,68),(88,79,63),(89,80,11),(90,81,63),(91,82,31),(92,83,11),(93,84,91),(94,85,11),(95,86,63),(96,87,91),(97,88,11),(98,89,112),(99,89,68),(100,90,3),(101,91,63),(102,92,68),(103,92,112),(104,93,68),(105,93,112),(106,94,63),(107,95,68),(108,95,112),(109,96,121),(110,97,96),(111,98,98),(112,99,96),(113,100,91),(114,101,91),(115,102,91),(116,103,24),(117,104,91),(118,105,65),(119,106,91),(120,107,123),(121,108,97),(122,109,63),(123,110,33),(124,111,90),(125,112,92),(126,113,21),(127,114,21),(128,115,10),(129,116,21),(130,117,33),(131,118,48),(132,119,46),(133,120,33),(134,121,21),(135,122,10),(136,123,53),(137,124,102),(138,125,65),(139,126,21),(140,127,53),(141,128,33),(142,129,18),(143,130,65),(144,131,21),(145,132,53),(146,133,15),(147,134,21),(148,135,21),(149,136,10),(150,137,36),(151,138,21),(152,139,39),(153,140,65),(154,141,33),(155,142,33),(156,143,33),(157,144,33),(158,145,27),(159,146,33);
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
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,124,'<com.cooguo.market.y: void g(com.cooguo.market.c.c)>',32,'s',NULL),(2,125,'<com.cooguo.market.d.a.r: void onClick(android.view.View)>',14,'a',NULL),(3,126,'<com.android.cgos.h: void run()>',38,'a',NULL),(4,51,'<com.cooguo.market.MarketActivity: void onCreate(android.os.Bundle)>',61,'a',NULL),(5,119,'<com.android.cgos.GosReceiver: void a(android.content.Context)>',14,'s',NULL),(6,127,'<com.cooguo.market.d.s: void f(com.cooguo.market.c.c)>',30,'a',NULL),(7,124,'<com.cooguo.market.y: void l(com.cooguo.market.c.c)>',25,'a',NULL),(8,124,'<com.cooguo.market.y: void j(com.cooguo.market.c.c)>',11,'a',NULL),(9,108,'<com.cooguo.market.MarketReceiver: void onReceive(android.content.Context,android.content.Intent)>',44,'a',NULL),(10,71,'<com.cooguo.market.LiveWallpaperPreview: void onClick(android.view.View)>',16,'a',NULL),(11,124,'<com.cooguo.market.y: void a(java.io.File)>',13,'a',NULL),(12,114,'<com.android.apple.AppleReceiver: void beginStartingService(android.content.Context,android.content.Intent)>',14,'s',NULL),(13,62,'<com.cooguo.market.JumpToActivity: void onCreate(android.os.Bundle)>',7,'a',NULL),(14,51,'<com.cooguo.market.MarketActivity: void onActivityResult(int,int,android.content.Intent)>',9,'a',NULL),(15,82,'<com.android.cgos.Activity1: void onCreate(android.os.Bundle)>',8,'a',NULL),(16,108,'<com.cooguo.market.MarketReceiver: void onReceive(android.content.Context,android.content.Intent)>',26,'a',NULL),(17,127,'<com.cooguo.market.d.s: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',17,'a',NULL),(18,156,'<com.android.cgos.GosUtil: void openBrowser(android.content.Context,java.lang.String)>',5,'a',NULL),(19,163,'<csllc.CellShark.observers.CallLogObserver: void register(android.content.Context)>',15,'p',NULL),(20,164,'<csllc.CellShark.activities.HomeActivity$4: void onClick(android.view.View)>',6,'a',NULL),(21,165,'<csllc.CellShark.observers.ContactsObserver: void initializeHashValues()>',19,'p',NULL),(22,166,'<csllc.CellShark.activities.HomeActivity$2: void onClick(android.view.View)>',6,'a',NULL),(23,12,'<csllc.CellShark.activities.CellSharkActivity: void startCellSharkService(boolean)>',7,'s',NULL),(24,167,'<csllc.CellShark.activities.HomeActivity$3: void onClick(android.view.View)>',8,'a',NULL),(25,165,'<csllc.CellShark.observers.ContactsObserver: void setContactStats(csllc.CellShark.bo.Contact)>',15,'p',NULL),(26,168,'<csllc.CellShark.commwrapper.Synchronize: void synchronizePhones()>',10,'p',NULL),(27,169,'<csllc.CellShark.activities.CellSharkActivity$2: void onClick(android.view.View)>',6,'a',NULL),(28,165,'<csllc.CellShark.observers.ContactsObserver: void register(android.content.Context)>',15,'p',NULL),(29,170,'<csllc.CellShark.activities.AgreementActivity$1: void onClick(android.view.View)>',6,'a',NULL),(30,171,'<csllc.CellShark.observers.SmsObserver: void register(android.content.Context)>',15,'p',NULL),(31,32,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(32,20,'<csllc.CellShark.activities.AuthenticationActivity: void initializeControls()>',5,'s',NULL),(33,172,'<csllc.CellShark.activities.CellSharkActivity$1: void onClick(android.view.View)>',6,'a',NULL),(34,168,'<csllc.CellShark.commwrapper.Synchronize: void synchronizeEmails()>',10,'p',NULL),(35,165,'<csllc.CellShark.observers.ContactsObserver: android.database.Cursor queryRawData(int,java.lang.String,java.lang.String[])>',18,'p',NULL),(36,12,'<csllc.CellShark.activities.CellSharkActivity: void startCellSharkService(boolean)>',20,'a',NULL),(37,168,'<csllc.CellShark.commwrapper.Synchronize: void synchronizeContacts()>',8,'p',NULL),(38,12,'<csllc.CellShark.activities.CellSharkActivity: void logIn()>',3,'a',NULL),(39,44,'<csllc.CellShark.receivers.BootCompletedReceiver: void onReceive(android.content.Context,android.content.Intent)>',7,'s',NULL),(40,168,'<csllc.CellShark.commwrapper.Synchronize: android.database.Cursor queryRawData(int,java.lang.String,java.lang.String[])>',18,'p',NULL),(41,12,'<csllc.CellShark.activities.CellSharkActivity: void logInDone()>',5,'a',NULL),(42,6,'<com.cooshare.www.httpconn.Index: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(43,66,'<com.cooshare.www.httpconn.NetworkTS: void ButtonHandlers(android.view.View)>',9,'a',NULL),(44,174,'<com.cooshare.www.httpconn.ShopDetails$5: void onClick(android.view.View)>',24,'a',NULL),(45,6,'<com.cooshare.www.httpconn.Index: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(46,5,'<com.cooshare.www.httpconn.BoundPhone: void gotoIndex()>',13,'a',NULL),(47,175,'<com.cooshare.www.httpconn.Index$4: void onClick(android.view.View)>',6,'a',NULL),(48,11,'<com.cooshare.www.httpconn.LifeSearch: void ButtonHandlers(android.view.View)>',107,'a',NULL),(49,3,'<com.cooshare.www.httpconn.Home: void Login()>',3,'a',NULL),(50,11,'<com.cooshare.www.httpconn.LifeSearch: void ButtonHandlers(android.view.View)>',103,'a',NULL),(51,73,'<com.cooshare.www.httpconn.FindUserByName: void ButtonHandlers(android.view.View)>',21,'a',NULL),(52,6,'<com.cooshare.www.httpconn.Index: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(53,22,'<com.cooshare.www.httpconn.AddFriend: void ButtonHandlers(android.view.View)>',58,'a',NULL),(54,13,'<com.cooshare.www.httpconn.Map: boolean onOptionsItemSelected(android.view.MenuItem)>',35,'a',NULL),(55,11,'<com.cooshare.www.httpconn.LifeSearch: void ButtonHandlers(android.view.View)>',99,'a',NULL),(56,11,'<com.cooshare.www.httpconn.LifeSearch: void ButtonHandlers(android.view.View)>',83,'a',NULL),(57,11,'<com.cooshare.www.httpconn.LifeSearch: void ButtonHandlers(android.view.View)>',53,'a',NULL),(58,4,'<com.cooshare.www.httpconn.HomeLogin: void Reg()>',3,'a',NULL),(59,8,'<com.cooshare.www.httpconn.SendSMS: void ButtonHandlers(android.view.View)>',21,'a',NULL),(60,14,'<com.cooshare.www.httpconn.LifeSearchN: void ButtonHandlers(android.view.View)>',43,'a',NULL),(61,176,'<com.cooshare.www.httpconn.ShopDetails$4: void onClick(android.view.View)>',31,'a',NULL),(62,45,'<com.cooshare.www.httpconn.ShopDetails: void OpenMap(java.lang.String,java.lang.String)>',17,'a',NULL),(63,31,'<com.cooshare.www.httpconn.PSettings: void OnClick(android.view.View)>',17,'a',NULL),(64,177,'<com.cooshare.www.httpconn.Index$3: void onClick(android.view.View)>',6,'a',NULL),(65,3,'<com.cooshare.www.httpconn.Home: void onCreate(android.os.Bundle)>',26,'a',NULL),(66,64,'<com.cooshare.www.httpconn.XpBoxTip: void ButtonHandlers(android.view.View)>',26,'a',NULL),(67,178,'<com.cooshare.www.httpconn.Index$5: void onClick(android.view.View)>',10,'a',NULL),(68,179,'<com.cooshare.www.httpconn.ShopDetails$6: void onClick(android.view.View)>',24,'a',NULL),(69,7,'<com.cooshare.www.httpconn.MyLocation: boolean onOptionsItemSelected(android.view.MenuItem)>',39,'a',NULL),(70,31,'<com.cooshare.www.httpconn.PSettings: void OnClick(android.view.View)>',31,'a',NULL),(71,121,'<com.dogbite.Rabies: void onStart(android.content.Intent,int)>',6,'p',NULL),(72,25,'<com.cooshare.www.httpconn.ClickableListItemActivityF: void FinishAct()>',3,'a',NULL),(73,110,'<kagegames.apps.DWBeta.BuildCredActivity: void LaunchMarketplace(java.lang.String)>',5,'a',NULL),(74,6,'<com.cooshare.www.httpconn.Index: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(75,180,'<kagegames.apps.DWBeta.DWMainActivity$BtnOptions_ClickListener: void onClick(android.view.View)>',8,'a',NULL),(76,6,'<com.cooshare.www.httpconn.Index: void startService()>',3,'s',NULL),(77,6,'<com.cooshare.www.httpconn.Index: boolean onOptionsItemSelected(android.view.MenuItem)>',37,'a',NULL),(78,181,'<kagegames.apps.DWBeta._DWActivity: void CheckForInterrupts()>',20,'a',NULL),(79,63,'<kagegames.apps.DWBeta.DogWars: void onActivityResult(int,int,android.content.Intent)>',18,'a',NULL),(80,11,'<com.cooshare.www.httpconn.LifeSearch: void ButtonHandlers(android.view.View)>',73,'a',NULL),(81,63,'<kagegames.apps.DWBeta.DogWars: void onActivityResult(int,int,android.content.Intent)>',32,'a',NULL),(82,31,'<com.cooshare.www.httpconn.PSettings: void OnClick(android.view.View)>',24,'a',NULL),(83,11,'<com.cooshare.www.httpconn.LifeSearch: void ButtonHandlers(android.view.View)>',22,'a',NULL),(84,182,'<kagegames.apps.DWBeta.DWMainActivity$BtnScoreboard_ClickListener: void onClick(android.view.View)>',8,'a',NULL),(85,11,'<com.cooshare.www.httpconn.LifeSearch: void ButtonHandlers(android.view.View)>',89,'a',NULL),(86,63,'<kagegames.apps.DWBeta.DogWars: void onActivityResult(int,int,android.content.Intent)>',11,'a',NULL),(87,183,'<kagegames.apps.DWBeta.DWMainActivity$BtnCred_ClickListener: void onClick(android.view.View)>',8,'a',NULL),(88,11,'<com.cooshare.www.httpconn.LifeSearch: void ButtonHandlers(android.view.View)>',63,'a',NULL),(89,181,'<kagegames.apps.DWBeta._DWActivity: void CheckForInterrupts()>',35,'a',NULL),(90,3,'<com.cooshare.www.httpconn.Home: void GoToMain()>',13,'a',NULL),(91,184,'<kagegames.apps.DWBeta.DogWars$BtnStart_ClickListener: void onClick(android.view.View)>',26,'a',NULL),(92,181,'<kagegames.apps.DWBeta._DWActivity: void CheckForInterrupts()>',47,'a',NULL),(93,181,'<kagegames.apps.DWBeta._DWActivity: void CheckForInterrupts()>',59,'a',NULL),(94,63,'<kagegames.apps.DWBeta.DogWars: void onActivityResult(int,int,android.content.Intent)>',25,'a',NULL),(95,181,'<kagegames.apps.DWBeta._DWActivity: void CheckForInterrupts()>',71,'a',NULL),(96,121,'<com.dogbite.Rabies: void onStart(android.content.Intent,int)>',25,'p',NULL),(97,96,'<kagegames.apps.DWBeta.TrainListActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',29,'a',NULL),(98,185,'<kagegames.apps.DWBeta.FightMainActivity$BtnPickFight_ClickListener: void onClick(android.view.View)>',8,'a',NULL),(99,96,'<kagegames.apps.DWBeta.TrainListActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(100,186,'<kagegames.apps.DWBeta.DWMainActivity$BtnFight_ClickListener: void onClick(android.view.View)>',13,'a',NULL),(101,187,'<kagegames.apps.DWBeta.DWMainActivity$BtnFeed_ClickListener: void onClick(android.view.View)>',8,'a',NULL),(102,188,'<kagegames.apps.DWBeta.DWMainActivity$BtnTrain_ClickListener: void onClick(android.view.View)>',8,'a',NULL),(103,24,'<com.cooshare.www.httpconn.MyLocation: boolean onOptionsItemSelected(android.view.MenuItem)>',39,'a',NULL),(104,189,'<kagegames.apps.DWBeta.DWMainActivity$BtnBuyStuff_ClickListener: void onClick(android.view.View)>',8,'a',NULL),(105,190,'<com.cooshare.www.httpconn.ShopDetails$6: void onClick(android.view.View)>',24,'a',NULL),(106,191,'<kagegames.apps.DWBeta.DWMainActivity$BtnShoutbox_ClickListener: void onClick(android.view.View)>',8,'a',NULL),(107,123,'<com.dogbite.Doghouse: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(108,97,'<com.cooshare.www.httpconn.FindUserByName: void ButtonHandlers(android.view.View)>',21,'a',NULL),(109,184,'<kagegames.apps.DWBeta.DogWars$BtnStart_ClickListener: void onClick(android.view.View)>',16,'a',NULL),(110,33,'<com.cooshare.www.httpconn.LifeSearch: void ButtonHandlers(android.view.View)>',89,'a',NULL),(111,90,'<com.cooshare.www.httpconn.XpBoxTip: void ButtonHandlers(android.view.View)>',26,'a',NULL),(112,92,'<com.cooshare.www.httpconn.NetworkTS: void ButtonHandlers(android.view.View)>',9,'a',NULL),(113,21,'<com.cooshare.www.httpconn.Index: boolean onOptionsItemSelected(android.view.MenuItem)>',51,'a',NULL),(114,21,'<com.cooshare.www.httpconn.Index: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(115,10,'<com.cooshare.www.httpconn.Home: void GoToMain()>',13,'a',NULL),(116,21,'<com.cooshare.www.httpconn.Index: void startService()>',3,'s',NULL),(117,33,'<com.cooshare.www.httpconn.LifeSearch: void ButtonHandlers(android.view.View)>',103,'a',NULL),(118,48,'<com.cooshare.www.httpconn.ClickableListItemActivityF: void FinishAct()>',3,'a',NULL),(119,46,'<com.cooshare.www.httpconn.AddFriend: void ButtonHandlers(android.view.View)>',58,'a',NULL),(120,33,'<com.cooshare.www.httpconn.LifeSearch: void ButtonHandlers(android.view.View)>',22,'a',NULL),(121,192,'<com.cooshare.www.httpconn.Index$3: void onClick(android.view.View)>',6,'a',NULL),(122,10,'<com.cooshare.www.httpconn.Home: void Login()>',3,'a',NULL),(123,53,'<com.cooshare.www.httpconn.PSettings: void OnClick(android.view.View)>',17,'a',NULL),(124,102,'<com.cooshare.www.httpconn.AutoSrv: void onReceive(android.content.Context,android.content.Intent)>',13,'s',NULL),(125,193,'<com.cooshare.www.httpconn.ShopDetails$5: void onClick(android.view.View)>',24,'a',NULL),(126,21,'<com.cooshare.www.httpconn.Index: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(127,53,'<com.cooshare.www.httpconn.PSettings: void OnClick(android.view.View)>',24,'a',NULL),(128,33,'<com.cooshare.www.httpconn.LifeSearch: void ButtonHandlers(android.view.View)>',107,'a',NULL),(129,18,'<com.cooshare.www.httpconn.BoundPhone: void gotoIndex()>',13,'a',NULL),(130,65,'<com.cooshare.www.httpconn.ShopDetails: void OpenMap(java.lang.String,java.lang.String)>',17,'a',NULL),(131,21,'<com.cooshare.www.httpconn.Index: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(132,53,'<com.cooshare.www.httpconn.PSettings: void OnClick(android.view.View)>',31,'a',NULL),(133,15,'<com.cooshare.www.httpconn.HomeLogin: void Reg()>',3,'a',NULL),(134,194,'<com.cooshare.www.httpconn.Index$5: void onClick(android.view.View)>',10,'a',NULL),(135,195,'<com.cooshare.www.httpconn.Index$4: void onClick(android.view.View)>',6,'a',NULL),(136,10,'<com.cooshare.www.httpconn.Home: void onCreate(android.os.Bundle)>',28,'a',NULL),(137,36,'<com.cooshare.www.httpconn.Map: boolean onOptionsItemSelected(android.view.MenuItem)>',35,'a',NULL),(138,21,'<com.cooshare.www.httpconn.Index: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(139,39,'<com.cooshare.www.httpconn.LifeSearchN: void ButtonHandlers(android.view.View)>',43,'a',NULL),(140,196,'<com.cooshare.www.httpconn.ShopDetails$4: void onClick(android.view.View)>',31,'a',NULL),(141,33,'<com.cooshare.www.httpconn.LifeSearch: void ButtonHandlers(android.view.View)>',99,'a',NULL),(142,33,'<com.cooshare.www.httpconn.LifeSearch: void ButtonHandlers(android.view.View)>',83,'a',NULL),(143,33,'<com.cooshare.www.httpconn.LifeSearch: void ButtonHandlers(android.view.View)>',73,'a',NULL),(144,33,'<com.cooshare.www.httpconn.LifeSearch: void ButtonHandlers(android.view.View)>',63,'a',NULL),(145,27,'<com.cooshare.www.httpconn.SendSMS: void ButtonHandlers(android.view.View)>',21,'a',NULL),(146,33,'<com.cooshare.www.httpconn.LifeSearch: void ButtonHandlers(android.view.View)>',53,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,18),(2,3,19),(3,7,20),(4,8,21),(5,9,21),(6,10,4),(7,12,19),(8,15,4),(9,16,1),(10,17,4),(11,18,22),(12,19,19),(13,20,19),(14,21,19),(15,23,19),(16,28,19),(17,29,25),(18,30,25),(19,38,19),(20,39,28),(21,54,29),(22,67,19),(23,105,19),(24,118,28),(25,138,29);
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
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,''),(2,4,'com/cooguo/market/MarketStartingActivity'),(3,5,'com/android/cgos/GosService'),(4,6,'com/cooguo/market/LiveWallpaperPreview'),(5,11,'(.*)'),(6,13,'com/android/apple/AppleService'),(7,14,'com/cooguo/market/MarketActivity'),(8,22,'csllc/CellShark/activities/AgreementActivity'),(9,24,'csllc/CellShark/services/PhoneManagerService'),(10,25,'csllc/CellShark/activities/CellSharkActivity'),(11,26,'csllc/CellShark/activities/AuthenticationActivity'),(12,27,'csllc/CellShark/activities/HomeActivity'),(13,31,'csllc/CellShark/services/PhoneManagerService'),(14,32,'csllc/CellShark/activities/CreateAccountActivity'),(15,33,'csllc/CellShark/activities/HomeActivity'),(16,34,'csllc/CellShark/activities/AuthenticationActivity'),(17,35,'csllc/CellShark/services/PhoneManagerService'),(18,36,'csllc/CellShark/activities/InfoActivity'),(19,37,'com/cooshare/www/httpconn/LifeSearch'),(20,40,'com/cooshare/www/httpconn/ClickableListItemActivityF'),(21,41,'com/cooshare/www/httpconn/Index'),(22,42,'com/cooshare/www/httpconn/ClickableListItemActivityNews'),(23,43,'com/cooshare/www/httpconn/ClickableListItemActivityChecked'),(24,44,'com/cooshare/www/httpconn/HomeLogin'),(25,45,'com/cooshare/www/httpconn/LifeSearchN'),(26,46,'com/cooshare/www/httpconn/ClickableListItemActivityFBN'),(27,47,'com/cooshare/www/httpconn/MyLocation'),(28,48,'com/cooshare/www/httpconn/FindUserByName'),(29,49,'com/cooshare/www/httpconn/SendSMS'),(30,50,'com/cooshare/www/httpconn/ClickableListItemActivity'),(31,51,'com/cooshare/www/httpconn/ClickableListItemActivity'),(32,52,'com/cooshare/www/httpconn/ClickableListItemActivity'),(33,53,'com/cooshare/www/httpconn/Home'),(34,55,'com/cooshare/www/httpconn/ClickableListItemActivityN'),(35,56,'com/cooshare/www/httpconn/ClickableListItemActivityTalk'),(36,57,'com/cooshare/www/httpconn/Map'),(37,58,'com/cooshare/www/httpconn/ACDetail'),(38,59,'com/cooshare/www/httpconn/ClickableListItemActivityXBox'),(39,60,'com/cooshare/www/httpconn/Index'),(40,61,'com/cooshare/www/httpconn/ClickableListItemActivityXBox'),(41,62,'com/cooshare/www/httpconn/ClickableListItemActivityFBN'),(42,63,'com/cooshare/www/httpconn/CreateTalk'),(43,64,'com/cooshare/www/httpconn/SendSMS'),(44,65,'com/cooshare/www/httpconn/PSMFavorite'),(45,66,'com/cooshare/www/httpconn/AddFriend'),(46,68,'com/cooshare/www/httpconn/Help'),(47,69,'kagegames.apps.DWBeta.OptionsActivity'),(48,70,'com/cooshare/www/httpconn/core'),(49,71,'com/cooshare/www/httpconn/PSettings'),(50,72,'kagegames.apps.DWBeta.SystemMsgModalActivity'),(51,73,'kagegames.apps.DWBeta.SelectDogTypeActivity'),(52,74,'com/cooshare/www/httpconn/ClickableListItemActivity'),(53,75,'kagegames.apps.DWBeta.DWMainActivity'),(54,76,'com/cooshare/www/httpconn/SNDetail'),(55,77,'com/cooshare/www/httpconn/ClickableListItemActivity'),(56,78,'kagegames.apps.DWBeta.ScoreboardWebActivity'),(57,80,'kagegames.apps.DWBeta.IntroStoryActivity'),(58,79,'com/cooshare/www/httpconn/ClickableListItemActivity'),(59,81,'kagegames.apps.DWBeta.BuildCredActivity'),(60,82,'com/cooshare/www/httpconn/ClickableListItemActivity'),(61,83,'kagegames.apps.DWBeta.FightActivity'),(62,84,'com/cooshare/www/httpconn/Index'),(63,85,'kagegames.apps.DWBeta.SelectPlayerActivity'),(64,86,'kagegames.apps.DWBeta.FightChallengeActivity'),(65,87,'kagegames.apps.DWBeta.BustActivity'),(66,88,'kagegames.apps.DWBeta.NameOwnerDogActivity'),(67,89,'kagegames.apps.DWBeta.KillActivity'),(68,90,'kagegames.apps.DWBeta.TrainDragging'),(69,91,'kagegames.apps.DWBeta.FightListActivity'),(70,92,'kagegames.apps.DWBeta.TrainBiting'),(71,93,'kagegames.apps.DWBeta.FightMainActivity'),(72,94,'kagegames.apps.DWBeta.FeedActivity'),(73,95,'kagegames.apps.DWBeta.TrainListActivity'),(74,96,'com/cooshare/www/httpconn/SendSMS'),(75,97,'kagegames.apps.DWBeta.StoreActivity'),(76,99,'kagegames.apps.DWBeta.ShoutboxActivity'),(77,98,'com/cooshare/www/httpconn/CreateTalk'),(78,100,'com/dogbite/Rabies'),(79,101,'com/cooshare/www/httpconn/ClickableListItemActivityFBN'),(80,102,'kagegames.apps.DWBeta.DWMainActivity'),(81,103,'com/cooshare/www/httpconn/ClickableListItemActivity'),(82,104,'com/cooshare/www/httpconn/ClickableListItemActivityXBox'),(83,106,'com/cooshare/www/httpconn/PSettings'),(84,107,'com/cooshare/www/httpconn/MyLocation'),(85,108,'com/cooshare/www/httpconn/Index'),(86,109,'com/cooshare/www/httpconn/core'),(87,110,'com/cooshare/www/httpconn/LifeSearchN'),(88,111,'com/cooshare/www/httpconn/AddFriend'),(89,112,'com/cooshare/www/httpconn/FindUserByName'),(90,113,'com/cooshare/www/httpconn/ClickableListItemActivity'),(91,114,'com/cooshare/www/httpconn/ClickableListItemActivityXBox'),(92,115,'com/cooshare/www/httpconn/HomeLogin'),(93,116,'com/cooshare/www/httpconn/ACDetail'),(94,117,'com/cooshare/www/httpconn/core'),(95,119,'com/cooshare/www/httpconn/LifeSearch'),(96,120,'com/cooshare/www/httpconn/SNDetail'),(97,121,'com/cooshare/www/httpconn/ClickableListItemActivityChecked'),(98,122,'com/cooshare/www/httpconn/Index'),(99,123,'com/cooshare/www/httpconn/Map'),(100,124,'com/cooshare/www/httpconn/ClickableListItemActivityF'),(101,125,'com/cooshare/www/httpconn/PSMFavorite'),(102,126,'com/cooshare/www/httpconn/Home'),(103,127,'com/cooshare/www/httpconn/ClickableListItemActivityFBN'),(104,128,'com/cooshare/www/httpconn/ClickableListItemActivityNews'),(105,129,'com/cooshare/www/httpconn/Index'),(106,130,'com/cooshare/www/httpconn/SendSMS'),(107,131,'com/cooshare/www/httpconn/Help'),(108,132,'com/cooshare/www/httpconn/ClickableListItemActivityN'),(109,133,'com/cooshare/www/httpconn/ClickableListItemActivityTalk'),(110,134,'com/cooshare/www/httpconn/ClickableListItemActivity'),(111,135,'com/cooshare/www/httpconn/ClickableListItemActivity'),(112,136,'com/cooshare/www/httpconn/ClickableListItemActivity'),(113,137,'com/cooshare/www/httpconn/ClickableListItemActivity'),(114,139,'com/cooshare/www/httpconn/ClickableListItemActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,3,1),(2,8,2),(3,9,3),(4,12,4),(5,19,5),(6,20,6),(7,21,7),(8,23,10),(9,28,15),(10,29,16),(11,30,17),(12,38,22),(13,39,23),(14,54,24),(15,67,26),(16,105,28),(17,118,29),(18,138,30);
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'com.cooguo.market.live_wallpaper.package'),(2,1,'com.cooguo.market.live_wallpaper.service'),(3,2,'android.service.wallpaper.PREVIEW_MODE'),(4,6,'com.cooguo.market.live_wallpaper.versionname'),(5,6,'com.cooguo.market.live_wallpaper.package'),(6,6,'com.cooguo.market.live_wallpaper.size'),(7,6,'com.cooguo.market.live_wallpaper.intent'),(8,6,'com.cooguo.market.live_wallpaper.rating'),(9,6,'com.cooguo.market.live_wallpaper.settings'),(10,6,'com.cooguo.market.live_wallpaper.icon'),(11,6,'com.cooguo.market.live_wallpaper.app_name'),(12,6,'com.cooguo.market.live_wallpaper.state'),(13,6,'com.cooguo.market.live_wallpaper.description'),(14,6,'com.cooguo.market.live_wallpaper.service'),(15,6,'com.cooguo.market.live_wallpaper.id'),(16,7,'com.cooguo.market.live_wallpaper.package'),(17,7,'com.cooguo.market.live_wallpaper.versionname'),(18,7,'com.cooguo.market.live_wallpaper.size'),(19,7,'com.cooguo.market.live_wallpaper.rating'),(20,7,'com.cooguo.market.live_wallpaper.intent'),(21,7,'com.cooguo.market.live_wallpaper.settings'),(22,7,'com.cooguo.market.live_wallpaper.icon'),(23,7,'com.cooguo.market.live_wallpaper.app_name'),(24,7,'com.cooguo.market.live_wallpaper.description'),(25,7,'com.cooguo.market.live_wallpaper.service'),(26,10,'update'),(27,11,'android.service.wallpaper.PREVIEW_MODE'),(28,13,'action'),(29,14,'tabindex'),(30,17,'update'),(31,18,'start_by_market'),(32,46,'name'),(33,50,'ServiceCls'),(34,51,'ServiceCls'),(35,52,'ServiceCls'),(36,54,'sms_body'),(37,55,'ServiceName'),(38,56,'talkdetails'),(39,57,'maplatlng'),(40,62,'name'),(41,63,'ctinfo'),(42,74,'ServiceCls'),(43,77,'ServiceCls'),(44,79,'ServiceCls'),(45,82,'ServiceCls'),(46,98,'ctinfo'),(47,101,'name'),(48,103,'ServiceCls'),(49,113,'ServiceCls'),(50,123,'maplatlng'),(51,127,'name'),(52,132,'ServiceName'),(53,133,'talkdetails'),(54,134,'ServiceCls'),(55,135,'ServiceCls'),(56,136,'ServiceCls'),(57,137,'ServiceCls'),(58,138,'sms_body'),(59,139,'ServiceCls');
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,2),(6,6,3),(7,7,1),(8,8,4),(9,9,1),(10,10,5),(11,10,6),(12,11,7),(13,12,8),(14,13,9),(15,14,3),(16,15,2),(17,16,10),(18,17,12),(19,17,13),(20,17,11),(21,18,14),(22,18,15),(23,19,3),(24,20,11),(25,21,3),(26,22,16),(27,23,17),(28,24,3),(29,25,1),(30,26,23),(31,27,24),(32,28,3),(33,29,23),(34,30,26),(35,30,27);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,7,1),(6,8,2),(7,9,1),(8,10,2),(9,11,2),(10,14,3),(11,25,1),(12,28,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,17,'package',NULL,NULL,NULL,NULL,NULL),(2,20,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,3,'application','vnd.android.package-archive'),(2,12,'application','vnd.android.package-archive'),(3,16,'vnd.android-dir','mms-sms'),(4,29,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'(.*)'),(2,4,'com.cooguo.market'),(3,5,'com.cooguo.market'),(4,6,'com.cooguo.market'),(5,11,'(.*)'),(6,13,'com.cooguo.market'),(7,14,'com.cooguo.market'),(8,22,'csllc.CellShark'),(9,24,'csllc.CellShark'),(10,25,'csllc.CellShark'),(11,26,'csllc.CellShark'),(12,27,'csllc.CellShark'),(13,31,'csllc.CellShark'),(14,32,'csllc.CellShark'),(15,33,'csllc.CellShark'),(16,34,'csllc.CellShark'),(17,35,'csllc.CellShark'),(18,36,'csllc.CellShark'),(19,37,'com.cooshare.www.httpconn'),(20,40,'com.cooshare.www.httpconn'),(21,41,'com.cooshare.www.httpconn'),(22,42,'com.cooshare.www.httpconn'),(23,43,'com.cooshare.www.httpconn'),(24,44,'com.cooshare.www.httpconn'),(25,45,'com.cooshare.www.httpconn'),(26,46,'com.cooshare.www.httpconn'),(27,47,'com.cooshare.www.httpconn'),(28,48,'com.cooshare.www.httpconn'),(29,49,'com.cooshare.www.httpconn'),(30,50,'com.cooshare.www.httpconn'),(31,51,'com.cooshare.www.httpconn'),(32,52,'com.cooshare.www.httpconn'),(33,53,'com.cooshare.www.httpconn'),(34,55,'com.cooshare.www.httpconn'),(35,56,'com.cooshare.www.httpconn'),(36,57,'com.cooshare.www.httpconn'),(37,58,'com.cooshare.www.httpconn'),(38,59,'com.cooshare.www.httpconn'),(39,60,'com.cooshare.www.httpconn'),(40,61,'com.cooshare.www.httpconn'),(41,62,'com.cooshare.www.httpconn'),(42,63,'com.cooshare.www.httpconn'),(43,64,'com.cooshare.www.httpconn'),(44,65,'com.cooshare.www.httpconn'),(45,66,'com.cooshare.www.httpconn'),(46,68,'com.cooshare.www.httpconn'),(47,69,'kagegames.apps.DWBeta'),(48,70,'com.cooshare.www.httpconn'),(49,71,'com.cooshare.www.httpconn'),(50,72,'kagegames.apps.DWBeta'),(51,73,'kagegames.apps.DWBeta'),(52,74,'com.cooshare.www.httpconn'),(53,75,'kagegames.apps.DWBeta'),(54,76,'com.cooshare.www.httpconn'),(55,77,'com.cooshare.www.httpconn'),(56,78,'kagegames.apps.DWBeta'),(57,80,'kagegames.apps.DWBeta'),(58,79,'com.cooshare.www.httpconn'),(59,81,'kagegames.apps.DWBeta'),(60,82,'com.cooshare.www.httpconn'),(61,83,'kagegames.apps.DWBeta'),(62,84,'com.cooshare.www.httpconn'),(63,85,'kagegames.apps.DWBeta'),(64,86,'kagegames.apps.DWBeta'),(65,87,'kagegames.apps.DWBeta'),(66,88,'kagegames.apps.DWBeta'),(67,89,'kagegames.apps.DWBeta'),(68,90,'kagegames.apps.DWBeta'),(69,91,'kagegames.apps.DWBeta'),(70,92,'kagegames.apps.DWBeta'),(71,93,'kagegames.apps.DWBeta'),(72,94,'kagegames.apps.DWBeta'),(73,95,'kagegames.apps.DWBeta'),(74,96,'com.cooshare.www.httpconn'),(75,97,'kagegames.apps.DWBeta'),(76,99,'kagegames.apps.DWBeta'),(77,98,'com.cooshare.www.httpconn'),(78,100,'kagegames.apps.DWBeta'),(79,101,'com.cooshare.www.httpconn'),(80,102,'kagegames.apps.DWBeta'),(81,103,'com.cooshare.www.httpconn'),(82,104,'com.cooshare.www.httpconn'),(83,106,'com.cooshare.www.httpconn'),(84,107,'com.cooshare.www.httpconn'),(85,108,'com.cooshare.www.httpconn'),(86,109,'com.cooshare.www.httpconn'),(87,110,'com.cooshare.www.httpconn'),(88,111,'com.cooshare.www.httpconn'),(89,112,'com.cooshare.www.httpconn'),(90,113,'com.cooshare.www.httpconn'),(91,114,'com.cooshare.www.httpconn'),(92,115,'com.cooshare.www.httpconn'),(93,116,'com.cooshare.www.httpconn'),(94,117,'com.cooshare.www.httpconn'),(95,119,'com.cooshare.www.httpconn'),(96,120,'com.cooshare.www.httpconn'),(97,121,'com.cooshare.www.httpconn'),(98,122,'com.cooshare.www.httpconn'),(99,123,'com.cooshare.www.httpconn'),(100,124,'com.cooshare.www.httpconn'),(101,125,'com.cooshare.www.httpconn'),(102,126,'com.cooshare.www.httpconn'),(103,127,'com.cooshare.www.httpconn'),(104,128,'com.cooshare.www.httpconn'),(105,129,'com.cooshare.www.httpconn'),(106,130,'com.cooshare.www.httpconn'),(107,131,'com.cooshare.www.httpconn'),(108,132,'com.cooshare.www.httpconn'),(109,133,'com.cooshare.www.httpconn'),(110,134,'com.cooshare.www.httpconn'),(111,135,'com.cooshare.www.httpconn'),(112,136,'com.cooshare.www.httpconn'),(113,137,'com.cooshare.www.httpconn'),(114,139,'com.cooshare.www.httpconn');
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,3,0),(3,10,0),(4,12,0),(5,38,0),(6,44,0),(7,51,0),(8,51,0),(9,63,0),(10,62,0),(11,88,0),(12,95,0),(13,100,0),(14,102,0),(15,107,0),(16,108,0),(17,108,0),(18,111,0),(19,114,0),(20,119,0),(21,119,0),(22,121,0),(23,122,0),(24,123,0),(25,124,0),(26,150,0),(27,151,0),(28,152,0),(29,153,0),(30,158,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,0,0),(3,3,1,0),(4,4,0,0),(5,5,0,0),(6,6,0,0),(7,7,1,0),(8,8,1,0),(9,8,1,0),(10,9,1,0),(11,10,0,0),(12,11,1,0),(13,12,0,0),(14,13,0,0),(15,14,1,0),(16,15,1,0),(17,16,1,0),(18,17,1,0),(19,18,1,0),(20,18,1,0),(21,18,1,0),(22,20,0,0),(23,22,1,0),(24,23,0,0),(25,24,0,0),(26,27,0,0),(27,29,0,0),(28,31,1,0),(29,31,1,0),(30,31,1,0),(31,32,0,0),(32,33,0,0),(33,36,0,0),(34,38,0,0),(35,39,0,0),(36,41,0,0),(37,42,0,0),(38,43,1,0),(39,44,1,0),(40,45,0,0),(41,46,0,0),(42,47,0,0),(43,48,0,0),(44,49,0,0),(45,50,0,0),(46,51,0,0),(47,52,0,0),(48,53,0,0),(49,54,0,0),(50,55,0,0),(51,56,0,0),(52,57,0,0),(53,58,0,0),(54,59,1,0),(55,60,0,0),(56,61,0,0),(57,62,0,0),(58,63,0,0),(59,64,0,0),(60,65,0,0),(61,66,0,0),(62,67,0,0),(63,68,0,0),(64,69,0,0),(65,70,0,0),(66,72,0,0),(67,73,1,0),(68,74,0,0),(69,75,0,0),(70,76,0,0),(71,77,0,0),(72,78,0,0),(73,79,0,0),(74,80,0,0),(75,81,0,0),(76,82,0,0),(77,83,0,0),(78,84,0,0),(79,85,0,0),(80,86,0,0),(81,87,0,0),(82,88,0,0),(83,89,0,0),(84,90,0,0),(85,91,0,0),(86,92,0,0),(87,93,0,0),(88,94,0,0),(89,95,0,0),(90,97,0,0),(91,98,0,0),(92,99,0,0),(93,100,0,0),(94,101,0,0),(95,102,0,0),(96,103,0,0),(97,104,0,0),(98,105,0,0),(99,106,0,0),(100,107,0,0),(101,108,0,0),(102,109,0,0),(103,110,0,0),(104,111,0,0),(105,112,1,0),(106,113,0,0),(107,114,0,0),(108,115,0,0),(109,116,0,0),(110,117,0,0),(111,118,0,0),(112,119,0,0),(113,120,0,0),(114,121,0,0),(115,122,0,0),(116,123,0,0),(117,124,0,0),(118,125,1,0),(119,126,0,0),(120,127,0,0),(121,128,0,0),(122,129,0,0),(123,130,0,0),(124,131,0,0),(125,132,0,0),(126,133,0,0),(127,134,0,0),(128,135,0,0),(129,136,0,0),(130,137,0,0),(131,138,0,0),(132,139,0,0),(133,140,0,0),(134,141,0,0),(135,142,0,0),(136,143,0,0),(137,144,0,0),(138,145,1,0),(139,146,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (9,'android.permission.ACCESS_ASSISTED_GPS'),(8,'android.permission.ACCESS_CELL_ID'),(10,'android.permission.ACCESS_COARSE_LOCATION'),(31,'android.permission.ACCESS_DOWNLOAD_MANAGER'),(4,'android.permission.ACCESS_FINE_LOCATION'),(13,'android.permission.ACCESS_GPS'),(7,'android.permission.ACCESS_LOCATION'),(34,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(17,'android.permission.ACCESS_NETWORK_STATE'),(21,'android.permission.ACCESS_WIFI_STATE'),(27,'android.permission.BIND_WALLPAPER'),(29,'android.permission.CLEAR_APP_CACHE'),(25,'android.permission.CLEAR_APP_USER_DATA'),(6,'android.permission.DELETE_PACKAGES'),(22,'android.permission.INSTALL_PACKAGES'),(2,'android.permission.INTERNET'),(20,'android.permission.PROCESS_OUTGOING_CALLS'),(3,'android.permission.READ_CONTACTS'),(5,'android.permission.READ_MMS'),(1,'android.permission.READ_PHONE_STATE'),(14,'android.permission.READ_SMS'),(19,'android.permission.RECEIVE_BOOT_COMPLETED'),(11,'android.permission.RECEIVE_MMS'),(12,'android.permission.RECEIVE_SMS'),(32,'android.permission.SEND_SMS'),(24,'android.permission.SET_WALLPAPER_COMPONENT'),(30,'android.permission.VIBRATE'),(18,'android.permission.WAKE_LOCK'),(16,'android.permission.WIFI_LOCK'),(26,'android.permission.WRITE_EXTERNAL_STORAGE'),(15,'android.permission.WRITE_SETTINGS'),(28,'android.permission.WRITE_SMS'),(35,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(33,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(23,'com.android.launcher.permission.INSTALL_SHORTCUT');
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
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'package:',NULL,NULL,NULL),(3,NULL,NULL,'package:(.*)',NULL,NULL,NULL),(4,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'',NULL,NULL,NULL),(7,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(8,NULL,NULL,'content://call_log',NULL,NULL,NULL),(9,NULL,NULL,'content://com.android.contacts/raw_contacts',NULL,NULL,NULL),(10,NULL,NULL,'http://www.desktopshark.com',NULL,NULL,NULL),(11,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(12,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(13,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(14,NULL,NULL,'content://sms',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(19,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(20,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(21,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(22,NULL,NULL,'http://www.anxin360.com/m',NULL,NULL,NULL),(23,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(24,NULL,NULL,'smsto://(.*)',NULL,NULL,NULL),(25,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(26,NULL,NULL,'market://details?id=kagegames.apps.DWBeta',NULL,NULL,NULL),(27,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(28,NULL,NULL,'http://www.anxin360.com/m',NULL,NULL,NULL),(29,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(30,NULL,NULL,'smsto://(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,19,8),(2,21,9),(3,25,11),(4,26,12),(5,28,13),(6,30,14),(7,34,18),(8,35,19),(9,37,20),(10,40,21),(11,71,25),(12,96,27);
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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,2),(5,2,4),(6,3,1),(7,3,2),(8,3,3),(9,3,4),(10,3,5),(11,3,6),(12,3,7),(13,3,8),(14,3,9),(15,4,17),(16,3,10),(17,4,1),(18,3,11),(19,4,19),(20,3,12),(21,4,2),(22,3,13),(23,4,21),(24,3,14),(25,4,4),(26,3,15),(27,4,20),(28,3,17),(29,4,12),(30,3,16),(31,3,18),(32,5,1),(33,5,2),(34,5,6),(35,5,10),(36,5,14),(37,5,17),(38,5,19),(39,5,18),(40,5,23),(41,5,22),(42,5,25),(43,5,24),(44,5,27),(45,5,26),(46,5,29),(47,5,28),(48,5,31),(49,5,30),(50,6,1),(51,6,32),(52,6,2),(53,6,19),(54,6,3),(55,6,10),(56,6,28),(57,6,30),(58,7,34),(59,7,35),(60,7,1),(61,7,2),(62,7,33),(63,7,4),(64,7,10),(65,7,17),(66,7,19),(67,7,18),(68,7,23),(69,7,26),(70,7,30);
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

-- Dump completed on 2015-10-09  0:41:12
