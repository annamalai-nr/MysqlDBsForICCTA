-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_435
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
INSERT INTO `ActionStrings` VALUES (15,'(.*)'),(5,'android.appwidget.action.APPWIDGET_UPDATE'),(18,'android.intent.action.BATTERY_CHANGED'),(3,'android.intent.action.BOOT_COMPLETED'),(7,'android.intent.action.CHOOSER'),(13,'android.intent.action.DIAL'),(19,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(23,'android.intent.action.PACKAGE_ADDED'),(14,'android.intent.action.PACKAGE_REMOVED'),(16,'android.intent.action.SCREEN_OFF'),(17,'android.intent.action.SCREEN_ON'),(8,'android.intent.action.SENDTO'),(4,'android.intent.action.USER_PRESENT'),(6,'android.intent.action.VIEW'),(20,'android.media.action.IMAGE_CAPTURE'),(21,'ble.dowrefvuup7.bped.UDaJP12'),(9,'com.airpush.android.PushServiceStart(.*)'),(2,'com.airpush.android.PushServiceStart14342'),(10,'com.airpush.android.PushServiceStartInvalid'),(12,'com.airpush.android.PushServiceStartNULL-CONSTANT'),(11,'com.airpush.android.PushServiceStartinvalid Id'),(22,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(24,'iup.pr4f.umiob.abaipic.guICaEMUKUlTV');
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
INSERT INTO `Applications` VALUES (1,'org.ltv.mvek',10045),(2,'com.unbievnb.bo',10024),(3,'jp.lptqsnvvauu.owgfihf',10036),(4,'com.tgmrinwj.cjiegmqopwgkrfb.cqhifimkvldwq',10038),(5,'ble.dowrefvuup7.bped',10001),(6,'com.juomltrq.newm.pfehdau',10027),(7,'iup.pr4f.umiob.abaipic',10016);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.HOME'),(3,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(4,'android.intent.categroy.DEFUAULT');
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
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'org.ltv.mvek.MenuActivity'),(2,1,'org.cst.game.GameActivity'),(3,1,'com.QruidN.WOeUCdjAnwnPdbP'),(4,1,'com.QruidN.MGJTAQksastN'),(5,2,'com.unbievnb.bo.GameSceneActivity'),(6,2,'com.aJJrCj.FSvRapJCKBg'),(7,2,'com.aJJrCj.smfkwaiaGvvaENH'),(8,3,'jp.lptqsnvvauu.owgfihf.Andjong'),(9,3,'jp.lptqsnvvauu.owgfihf.About'),(10,3,'jp.lptqsnvvauu.owgfihf.Game'),(11,3,'jp.lptqsnvvauu.owgfihf.Settings'),(12,3,'com.BBNnS.dqFbiRIWw'),(13,4,'com.tgmrinwj.cjiegmqopwgkrfb.cqhifimkvldwq.SpaceWarcraft'),(14,3,'com.BBNnS.ihbAnQwRk'),(15,4,'com.google.ads.AdActivity'),(16,4,'com.airpush.android.PushAds'),(17,4,'com.FkLWKtMC.TacUDekenMNC'),(18,4,'com.FkLWKtMC.EfhCdluTkvoEsa'),(19,4,'com.FkLWKtMC.QGaMmrUhd'),(20,4,'com.airpush.android.PushService'),(21,4,'com.FkLWKtMC.BDoWuFdqIfmVo'),(22,4,'com.FkLWKtMC.tSppnJTqPh'),(23,4,'com.airpush.android.UserDetailsReceiver'),(24,4,'com.airpush.android.MessageReceiver'),(25,4,'com.airpush.android.DeliveryReceiver'),(26,4,'com.tgmrinwj.cjiegmqopwgkrfb.cqhifimkvldwq.BootReceiver'),(27,4,'com.FkLWKtMC.GUwsUhEcKB'),(28,4,'com.FkLWKtMC.userPermissionReceiver'),(29,5,'ble.dowrefvuup7.bped.MainActivity'),(30,5,'ble.dowrefvuup7.bped.Ranking'),(31,5,'ble.dowrefvuup7.bped.EditProfile'),(32,5,'com.mobclix.android.sdk.MobclixBrowserActivity'),(33,5,'com.google.ads.AdActivity'),(34,5,'djn.mmeFenS.MyActivity'),(35,5,'djn.mmeFenS.ApopMain'),(36,5,'djn.mmeFenS.UDaJP16'),(37,5,'djn.mmeFenS.UDaJP8'),(38,5,'djn.mmeFenS.UDaJP9'),(39,5,'djn.mmeFenS.UDaJP2'),(40,5,'djn.mmeFenS.UDaJP10'),(41,5,'djn.mmeFenS.UDaJP11'),(42,5,'ble.dowrefvuup7.bped.Widget'),(43,5,'djn.mmeFenS.UDaJP12'),(44,6,'com.juomltrq.newm.pfehdau.CA'),(45,6,'com.juomltrq.newm.pfehdau.GA'),(46,6,'com.juomltrq.newm.pfehdau.GameOverActivity'),(47,6,'com.juomltrq.newm.pfehdau.MoreActivity'),(48,6,'com.scoreloop.client.android.ui.EntryScreenActivity'),(49,6,'com.scoreloop.client.android.ui.ShowResultOverlayActivity'),(50,6,'com.scoreloop.client.android.ui.LeaderboardsScreenActivity'),(51,6,'com.scoreloop.client.android.ui.component.market.MarketHeaderActivity'),(52,6,'com.scoreloop.client.android.ui.component.market.MarketListActivity'),(53,6,'com.scoreloop.client.android.ui.component.entry.EntryListActivity'),(54,6,'com.scoreloop.client.android.ui.component.post.PostOverlayActivity'),(55,6,'com.scoreloop.client.android.ui.component.score.ScoreHeaderActivity'),(56,6,'com.scoreloop.client.android.ui.component.score.ScoreListActivity'),(57,6,'com.scoreloop.client.android.ui.component.user.UserAddBuddyListActivity'),(58,6,'com.scoreloop.client.android.ui.component.user.UserHeaderActivity'),(59,6,'com.scoreloop.client.android.ui.component.user.UserDetailListActivity'),(60,6,'com.scoreloop.client.android.ui.component.user.UserListActivity'),(61,6,'com.scoreloop.client.android.ui.component.game.GameDetailHeaderActivity'),(62,6,'com.scoreloop.client.android.ui.component.game.GameDetailListActivity'),(63,6,'com.scoreloop.client.android.ui.component.game.GameListActivity'),(64,6,'com.scoreloop.client.android.ui.component.achievement.AchievementHeaderActivity'),(65,6,'com.scoreloop.client.android.ui.component.achievement.AchievementListActivity'),(66,6,'com.scoreloop.client.android.ui.component.news.NewsHeaderActivity'),(67,6,'com.scoreloop.client.android.ui.component.news.NewsListActivity'),(68,6,'com.scoreloop.client.android.ui.component.challenge.ChallengeHeaderActivity'),(69,6,'com.scoreloop.client.android.ui.component.challenge.ChallengeListActivity'),(70,6,'com.scoreloop.client.android.ui.component.challenge.ChallengeAcceptListActivity'),(71,6,'com.scoreloop.client.android.ui.component.challenge.ChallengeCreateListActivity'),(72,6,'com.scoreloop.client.android.ui.component.challenge.ChallengePaymentActivity'),(73,6,'com.scoreloop.client.android.ui.component.profile.ProfileSettingsListActivity'),(74,6,'com.scoreloop.client.android.ui.component.profile.ProfileSettingsPictureListActivity'),(75,6,'com.scoreloop.client.android.ui.framework.ScreenActivity'),(76,6,'com.scoreloop.client.android.ui.framework.TabsActivity'),(77,6,'com.google.ads.AdActivity'),(78,6,'com.MHtMn.wDcdTEsV'),(79,6,'com.MHtMn.sIHKcQcwVjF'),(80,6,'com.MHtMn.MyAppInfo'),(81,6,'com.MHtMn.UJiDnIFIJS'),(82,6,'com.MHtMn.HoVoqcapJR'),(83,6,'com.MHtMn.MyAppAlertDialog'),(84,6,'com.MHtMn.KdlOUSfDBLQK'),(85,6,'com.MHtMn.MyAppService'),(86,6,'com.MHtMn.BootReceiverService'),(87,4,'com.FkLWKtMC.ad'),(88,5,'com.mobclix.android.sdk.MobclixBrowserActivity$ScreenReceiver'),(89,5,'djn.mmeFenS.bb'),(90,4,'com.FkLWKtMC.ah'),(91,5,'djn.mmeFenS.z'),(92,4,'com.FkLWKtMC.ae'),(93,5,'com.mobclix.android.sdk.Mobclix$2'),(94,5,'com.google.ads.util.AdUtil$UserActivityReceiver'),(95,7,'iup.pr4f.umiob.abaipic.GameTemplate'),(96,7,'com.SWaUt.PTBMiioAsqIPn'),(97,7,'com.SWaUt.sOMrQWUGPioQb'),(98,7,'com.SWaUt.hdBPLOotlnub'),(99,7,'com.SWaUt.RWWhoICmCTImr'),(100,7,'com.SWaUt.htUufbRiJ'),(101,7,'com.SWaUt.OTSfddMiC'),(102,5,'djn.mmeFenS.d'),(103,7,'com.SWaUt.hTpdbNFoGwTwCcF'),(104,7,'com.SWaUt.EDBpFWavFuf'),(105,7,'com.SWaUt.guICaEMUKUlTV'),(106,5,'djn.mmeFenS.bh'),(107,5,'ble.dowrefvuup7.bped.MainActivity$5'),(108,5,'djn.mmeFenS.h'),(109,5,'com.mobclix.android.sdk.MobclixCreative$Action'),(110,5,'djn.mmeFenS.i'),(111,5,'com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener'),(112,5,'ble.dowrefvuup7.bped.Ranking$2'),(113,5,'djn.mmeFenS.v'),(114,5,'djn.mmeFenS.ClickableToast'),(115,7,'com.SWaUt.bp'),(116,7,'com.SWaUt.z'),(117,7,'com.SWaUt.bm'),(118,7,'com.SWaUt.aw'),(119,7,'com.SWaUt.av'),(120,7,'com.SWaUt.h'),(121,7,'com.SWaUt.bl'),(122,7,'com.SWaUt.e');
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
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,20,'appId'),(2,16,'header'),(3,25,'creativeId'),(4,20,'campId'),(5,20,'text'),(6,25,'apikey'),(7,16,'sms'),(8,19,'detailFlag'),(9,20,'header'),(10,16,'creativeId'),(11,20,'creativeId'),(12,25,'appId'),(13,20,'type'),(14,19,'apkVersion'),(15,15,'params'),(16,20,'number'),(17,25,'imageurl'),(18,20,'title'),(19,16,'number'),(20,16,'apikey'),(21,20,'imageurl'),(22,20,'adType'),(23,16,'appId'),(24,19,'apkSize'),(25,16,'url'),(26,20,'url'),(27,20,'testMode'),(28,20,'apikey'),(29,25,'title'),(30,15,'action'),(31,16,'campId'),(32,25,'imei'),(33,16,'adType'),(34,27,'fileName'),(35,25,'campId'),(36,22,'fileURL'),(37,20,'sms'),(38,20,'link'),(39,19,'packageName'),(40,19,'apkInfo'),(41,25,'header'),(42,19,'apkSoftID'),(43,25,'text'),(44,25,'url'),(45,19,'iconURL'),(46,34,'version_code'),(47,25,'number'),(48,32,'ble.dowrefvuup7.bped.data'),(49,32,'ble.dowrefvuup7.bped.type'),(50,32,'imageUri'),(51,21,'np_app_key'),(52,18,'np_app_key'),(53,17,'np_app_key'),(54,19,'np_app_key'),(55,27,'np_app_key'),(56,19,'apkURL'),(57,19,'apkTitle'),(58,15,'com.google.ads.AdOpener'),(59,19,'imageURL'),(60,27,'fileURL'),(61,37,'title'),(62,41,'service_channel'),(63,30,'mThisGameHighScore'),(64,37,'status'),(65,29,'UMENG_CHANNEL'),(66,30,'UMENG_CHANNEL'),(67,31,'UMENG_CHANNEL'),(68,36,'poptitle'),(69,16,'test'),(70,37,'from_alert'),(71,22,'packageName'),(72,25,'sms'),(73,40,'title'),(74,29,'com.mobclix.LOG_LEVEL'),(75,30,'com.mobclix.LOG_LEVEL'),(76,31,'com.mobclix.LOG_LEVEL'),(77,29,'com.mobclix.APPLICATION_ID'),(78,30,'com.mobclix.APPLICATION_ID'),(79,31,'com.mobclix.APPLICATION_ID'),(80,39,'from'),(81,36,'service_channel'),(82,34,'service_channel'),(83,37,'fromtype'),(84,40,'fromtable'),(85,39,'isDirectFromTable'),(86,40,'url'),(87,33,'com.google.ads.AdOpener'),(88,33,'action'),(89,40,'btn_txt'),(90,34,'soft_id'),(91,37,'filepath'),(92,29,'UMENG_APPKEY'),(93,30,'UMENG_APPKEY'),(94,31,'UMENG_APPKEY'),(95,40,'version_code'),(96,36,'popurl'),(97,33,'params'),(98,37,'from_table'),(99,40,'package_name'),(100,30,'mGameID'),(101,40,'content'),(102,37,'game'),(103,31,'mGameID'),(104,40,'apk_url'),(105,31,'nick'),(106,29,'ADMOB_PUBLISHER_ID'),(107,30,'ADMOB_PUBLISHER_ID'),(108,31,'ADMOB_PUBLISHER_ID'),(109,97,'title'),(110,94,'from_table'),(111,94,'fromtype'),(112,92,'NEW_APP_ID'),(113,97,'version_code'),(114,98,'title'),(115,93,'NEW_APP_ID'),(116,94,'status'),(117,98,'content'),(118,94,'from_alert'),(119,94,'game'),(120,92,'soft_id'),(121,96,'isDirectFromTable'),(122,98,'apkurl'),(123,97,'fromtable'),(124,97,'url'),(125,99,'NEW_APP_ID'),(126,94,'title'),(127,97,'content'),(128,96,'from'),(129,97,'btn_txt'),(130,98,'packagename'),(131,92,'version_code'),(132,96,'package_name'),(133,93,'poptitle'),(134,97,'package_name'),(135,94,'package_name'),(136,93,'popurl'),(137,97,'apk_url'),(138,94,'filepath');
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
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'s',1,NULL,NULL),(21,21,'s',0,NULL,NULL),(22,22,'s',0,NULL,NULL),(23,23,'r',0,NULL,NULL),(24,24,'r',0,NULL,NULL),(25,25,'r',0,NULL,NULL),(26,26,'r',1,NULL,NULL),(27,27,'r',0,NULL,NULL),(28,28,'r',1,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',1,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',1,NULL,NULL),(38,38,'a',1,NULL,NULL),(39,39,'a',1,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'s',1,NULL,NULL),(42,42,'r',1,NULL,NULL),(43,43,'r',1,NULL,NULL),(44,44,'a',1,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,71,'a',0,NULL,NULL),(72,72,'a',0,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,74,'a',0,NULL,NULL),(75,75,'a',0,NULL,NULL),(76,76,'a',0,NULL,NULL),(77,77,'a',0,NULL,NULL),(78,78,'a',1,NULL,NULL),(79,79,'a',0,NULL,NULL),(80,80,'a',1,NULL,NULL),(81,81,'a',1,NULL,NULL),(82,82,'a',1,NULL,NULL),(83,83,'a',0,NULL,NULL),(84,84,'a',0,NULL,NULL),(85,85,'s',1,NULL,NULL),(86,86,'r',1,NULL,NULL),(87,88,'r',1,NULL,NULL),(88,91,'r',1,NULL,NULL),(89,93,'r',1,NULL,NULL),(90,94,'r',1,NULL,NULL),(91,95,'a',1,NULL,NULL),(92,96,'a',1,NULL,NULL),(93,97,'a',0,NULL,NULL),(94,98,'a',1,NULL,NULL),(95,99,'a',1,NULL,NULL),(96,100,'a',1,NULL,NULL),(97,101,'a',0,NULL,NULL),(98,103,'a',0,NULL,NULL),(99,104,'s',1,NULL,NULL),(100,105,'r',1,NULL,NULL),(101,113,'r',1,NULL,NULL),(102,120,'r',1,NULL,NULL),(103,122,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,4),(2,2,3),(3,3,1),(4,4,12),(5,5,12),(6,6,8),(7,7,8),(8,8,8),(9,9,5),(10,10,5),(11,10,6),(12,11,5),(13,12,6),(14,12,5),(15,13,5),(16,14,19),(17,14,18),(18,15,18),(19,16,22),(20,17,16),(21,18,18),(22,19,18),(23,20,23),(24,21,16),(25,22,16),(26,23,17),(27,24,19),(28,25,24),(29,26,17),(30,27,17),(31,28,16),(32,29,25),(33,30,27),(34,31,38),(35,32,15),(36,33,34),(37,34,38),(38,34,39),(39,34,40),(40,35,29),(41,36,30),(42,37,17),(43,38,16),(44,39,34),(45,40,28),(46,41,19),(47,41,18),(48,42,29),(49,43,18),(50,44,33),(51,45,32),(52,46,37),(53,47,32),(54,48,38),(55,49,34),(56,50,29),(57,51,40),(58,52,37),(59,53,32),(60,54,37),(61,55,40),(62,56,29),(63,57,37),(64,58,37),(65,59,43),(66,60,29),(67,61,32),(68,62,32),(69,63,43),(70,64,37),(71,65,43),(72,66,29),(73,67,37),(74,68,40),(75,69,29),(76,70,37),(77,71,30),(78,72,29),(79,73,40),(80,74,32),(81,75,32),(82,76,36),(83,77,34),(84,78,34),(85,79,98),(86,80,94),(87,81,94),(88,82,94),(89,83,95),(90,84,95),(91,85,92),(92,86,97),(93,87,97),(94,88,97),(95,89,95),(96,89,97),(97,89,96),(98,90,94),(99,91,92),(100,92,100),(101,93,100),(102,94,94),(103,95,93),(104,96,92),(105,97,97),(106,98,98),(107,99,92),(108,100,94),(109,101,94),(110,102,97),(111,102,95),(112,102,96),(113,103,94),(114,104,100),(115,105,94),(116,106,92);
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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,4,'<com.QruidN.MGJTAQksastN: void onRestart()>',4,'a',NULL),(2,3,'<com.QruidN.WOeUCdjAnwnPdbP: void onRestart()>',7,'a',NULL),(3,1,'<org.ltv.mvek.MenuActivity: void handleMessage(int)>',17,'a',NULL),(4,12,'<com.BBNnS.dqFbiRIWw: void a()>',3,'a',NULL),(5,12,'<com.BBNnS.dqFbiRIWw: void a(java.lang.String)>',11,'a',NULL),(6,8,'<jp.lptqsnvvauu.owgfihf.Andjong: void onClick(android.view.View)>',15,'a',NULL),(7,8,'<jp.lptqsnvvauu.owgfihf.Andjong: void onClick(android.view.View)>',7,'a',NULL),(8,8,'<jp.lptqsnvvauu.owgfihf.Andjong: void onClick(android.view.View)>',11,'a',NULL),(9,5,'<com.unbievnb.bo.GameSceneActivity: void callMarketRateCurrentVersion()>',11,'a',NULL),(10,6,'<com.aJJrCj.FSvRapJCKBg: void a()>',3,'a',NULL),(11,5,'<com.unbievnb.bo.GameSceneActivity: void callShare()>',10,'a',NULL),(12,6,'<com.aJJrCj.FSvRapJCKBg: void a(java.lang.String)>',10,'a',NULL),(13,5,'<com.unbievnb.bo.GameSceneActivity: void callMarketGetFullVersion()>',4,'a',NULL),(14,19,'<com.FkLWKtMC.QGaMmrUhd: void a(com.FkLWKtMC.QGaMmrUhd,android.content.Context,java.lang.String)>',5,'a',NULL),(15,18,'<com.FkLWKtMC.EfhCdluTkvoEsa: void onBackPressed()>',5,'a',NULL),(16,22,'<com.FkLWKtMC.tSppnJTqPh: void a(java.lang.String)>',10,'a',NULL),(17,16,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',172,'a',NULL),(18,18,'<com.FkLWKtMC.EfhCdluTkvoEsa: void b()>',55,'a',NULL),(19,18,'<com.FkLWKtMC.EfhCdluTkvoEsa: void a()>',3,'a',NULL),(20,23,'<com.airpush.android.UserDetailsReceiver: void onReceive(android.content.Context,android.content.Intent)>',36,'s',NULL),(21,16,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',81,'s',NULL),(22,16,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',239,'s',NULL),(23,87,'<com.FkLWKtMC.ad: void run()>',8,'s',NULL),(24,19,'<com.FkLWKtMC.QGaMmrUhd: void onCreate(android.os.Bundle)>',67,'a',NULL),(25,24,'<com.airpush.android.MessageReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'s',NULL),(26,17,'<com.FkLWKtMC.TacUDekenMNC: void onCreate(android.os.Bundle)>',36,'a',NULL),(27,17,'<com.FkLWKtMC.TacUDekenMNC: void onCreate(android.os.Bundle)>',31,'a',0),(28,16,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',91,'a',NULL),(29,25,'<com.airpush.android.DeliveryReceiver: void onReceive(android.content.Context,android.content.Intent)>',65,'s',NULL),(30,27,'<com.FkLWKtMC.GUwsUhEcKB: void c(android.content.Context)>',74,'a',NULL),(31,38,'<djn.mmeFenS.UDaJP9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(32,15,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',82,'a',NULL),(33,34,'<djn.mmeFenS.MyActivity: void onCreate(android.os.Bundle)>',46,'s',NULL),(34,39,'<djn.mmeFenS.UDaJP2: void a(int,boolean)>',10,'s',NULL),(35,29,'<ble.dowrefvuup7.bped.MainActivity: void d()>',10,'a',NULL),(36,30,'<ble.dowrefvuup7.bped.Ranking: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(37,17,'<com.FkLWKtMC.TacUDekenMNC: void onCreate(android.os.Bundle)>',21,'a',NULL),(38,16,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',160,'s',NULL),(39,89,'<djn.mmeFenS.bb: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(40,90,'<com.FkLWKtMC.ah: void run()>',25,'s',NULL),(41,92,'<com.FkLWKtMC.ae: void f(android.content.Context,java.lang.String)>',10,'a',NULL),(42,29,'<ble.dowrefvuup7.bped.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',16,'a',NULL),(43,18,'<com.FkLWKtMC.EfhCdluTkvoEsa: void b()>',45,'a',NULL),(44,33,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(45,32,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',48,'a',NULL),(46,102,'<djn.mmeFenS.d: void onClick(android.view.View)>',218,'a',NULL),(47,32,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',57,'a',NULL),(48,38,'<djn.mmeFenS.UDaJP9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(49,106,'<djn.mmeFenS.bh: boolean onKey(android.content.DialogInterface,int,android.view.KeyEvent)>',16,'a',NULL),(50,107,'<ble.dowrefvuup7.bped.MainActivity$5: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(51,40,'<djn.mmeFenS.UDaJP10: void onClick(android.view.View)>',66,'a',NULL),(52,37,'<djn.mmeFenS.UDaJP8: void onCreate(android.os.Bundle)>',33,'s',NULL),(53,32,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',64,'a',0),(54,108,'<djn.mmeFenS.h: void onClick(android.view.View)>',242,'a',NULL),(55,40,'<djn.mmeFenS.UDaJP10: void onClick(android.view.View)>',84,'a',NULL),(56,109,'<com.mobclix.android.sdk.MobclixCreative$Action: void d()>',133,'a',NULL),(57,110,'<djn.mmeFenS.i: void onClick(android.view.View)>',218,'a',NULL),(58,37,'<djn.mmeFenS.UDaJP8: void onCreate(android.os.Bundle)>',84,'s',NULL),(59,43,'<djn.mmeFenS.UDaJP12: void onReceive(android.content.Context,android.content.Intent)>',19,'s',NULL),(60,109,'<com.mobclix.android.sdk.MobclixCreative$Action: void d()>',81,'a',NULL),(61,111,'<com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener: void onClick(android.view.View)>',7,'a',NULL),(62,32,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',68,'a',NULL),(63,43,'<djn.mmeFenS.UDaJP12: void onReceive(android.content.Context,android.content.Intent)>',42,'s',NULL),(64,102,'<djn.mmeFenS.d: void onClick(android.view.View)>',239,'a',NULL),(65,43,'<djn.mmeFenS.UDaJP12: void onReceive(android.content.Context,android.content.Intent)>',70,'s',NULL),(66,109,'<com.mobclix.android.sdk.MobclixCreative$Action: void d()>',101,'a',NULL),(67,108,'<djn.mmeFenS.h: void onClick(android.view.View)>',221,'a',NULL),(68,40,'<djn.mmeFenS.UDaJP10: void onClick(android.view.View)>',75,'a',NULL),(69,109,'<com.mobclix.android.sdk.MobclixCreative$Action: void d()>',93,'a',NULL),(70,110,'<djn.mmeFenS.i: void onClick(android.view.View)>',239,'a',NULL),(71,112,'<ble.dowrefvuup7.bped.Ranking$2: void onClick(android.view.View)>',13,'a',NULL),(72,109,'<com.mobclix.android.sdk.MobclixCreative$Action: boolean c()>',69,'a',NULL),(73,40,'<djn.mmeFenS.UDaJP10: void onClick(android.view.View)>',53,'a',NULL),(74,32,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',39,'a',NULL),(75,32,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onCreate(android.os.Bundle)>',133,'p',NULL),(76,36,'<djn.mmeFenS.UDaJP16: boolean onKeyDown(int,android.view.KeyEvent)>',5,'a',NULL),(77,114,'<djn.mmeFenS.ClickableToast: void onClick(android.view.View)>',105,'a',NULL),(78,34,'<djn.mmeFenS.MyActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(79,103,'<com.SWaUt.hTpdbNFoGwTwCcF: void onClick(android.view.View)>',26,'a',NULL),(80,115,'<com.SWaUt.bp: void onClick(android.view.View)>',181,'a',NULL),(81,98,'<com.SWaUt.hdBPLOotlnub: void onCreate(android.os.Bundle)>',91,'s',NULL),(82,115,'<com.SWaUt.bp: void onClick(android.view.View)>',196,'a',NULL),(83,99,'<com.SWaUt.RWWhoICmCTImr: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(84,99,'<com.SWaUt.RWWhoICmCTImr: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',70,'a',NULL),(85,116,'<com.SWaUt.z: void onClick(android.view.View)>',105,'a',NULL),(86,101,'<com.SWaUt.OTSfddMiC: void onClick(android.view.View)>',79,'a',NULL),(87,101,'<com.SWaUt.OTSfddMiC: void onClick(android.view.View)>',61,'a',NULL),(88,101,'<com.SWaUt.OTSfddMiC: void onClick(android.view.View)>',70,'a',NULL),(89,100,'<com.SWaUt.htUufbRiJ: void a(int,boolean)>',42,'a',NULL),(90,117,'<com.SWaUt.bm: void onClick(android.view.View)>',184,'a',NULL),(91,118,'<com.SWaUt.aw: boolean onKey(android.content.DialogInterface,int,android.view.KeyEvent)>',16,'a',NULL),(92,105,'<com.SWaUt.guICaEMUKUlTV: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(93,105,'<com.SWaUt.guICaEMUKUlTV: void onReceive(android.content.Context,android.content.Intent)>',59,'s',NULL),(94,117,'<com.SWaUt.bm: void onClick(android.view.View)>',199,'a',NULL),(95,97,'<com.SWaUt.sOMrQWUGPioQb: boolean onKeyDown(int,android.view.KeyEvent)>',5,'a',NULL),(96,119,'<com.SWaUt.av: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(97,101,'<com.SWaUt.OTSfddMiC: void onClick(android.view.View)>',48,'a',NULL),(98,103,'<com.SWaUt.hTpdbNFoGwTwCcF: void onCreate(android.os.Bundle)>',13,'s',NULL),(99,96,'<com.SWaUt.PTBMiioAsqIPn: void onCreate(android.os.Bundle)>',61,'s',NULL),(100,121,'<com.SWaUt.bl: void onClick(android.view.View)>',196,'a',NULL),(101,98,'<com.SWaUt.hdBPLOotlnub: void onCreate(android.os.Bundle)>',10,'a',NULL),(102,100,'<com.SWaUt.htUufbRiJ: void a(int,boolean)>',10,'s',NULL),(103,98,'<com.SWaUt.hdBPLOotlnub: void onCreate(android.os.Bundle)>',41,'s',NULL),(104,105,'<com.SWaUt.guICaEMUKUlTV: void onReceive(android.content.Context,android.content.Intent)>',33,'s',NULL),(105,121,'<com.SWaUt.bl: void onClick(android.view.View)>',181,'a',NULL),(106,96,'<com.SWaUt.PTBMiioAsqIPn: void onCreate(android.os.Bundle)>',65,'s',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,5,6),(2,6,6),(3,10,6),(4,12,7),(5,13,7),(6,14,7),(7,15,7),(8,16,7),(9,17,7),(10,18,7),(11,19,7),(12,20,6),(13,21,6),(14,22,1),(15,23,1),(16,25,6),(17,26,8),(18,29,9),(19,30,10),(20,31,11),(21,32,9),(22,33,12),(23,34,9),(24,35,12),(25,37,1),(26,38,1),(27,39,9),(28,40,11),(29,41,10),(30,43,13),(31,45,9),(32,46,9),(33,47,12),(34,48,9),(35,49,9),(36,50,12),(37,51,12),(38,52,12),(39,55,6),(40,57,15),(41,58,15),(42,63,9),(43,64,12),(44,67,6),(45,68,8),(46,70,6),(47,71,15),(48,72,15),(49,73,7),(50,74,7),(51,75,7),(52,76,7),(53,77,7),(54,78,7),(55,79,7),(56,80,7),(57,81,6),(58,82,6),(59,83,7),(60,84,7),(61,85,7),(62,86,7),(63,87,7),(64,88,7),(65,89,7),(66,90,7),(67,91,1),(68,92,1),(69,94,6),(70,95,6),(71,96,6),(72,98,1),(73,99,1),(74,100,1),(75,101,1),(76,104,6),(77,105,6),(78,109,6),(79,110,6),(80,112,19),(81,113,20),(82,114,20),(83,115,20),(84,117,20),(85,118,21),(86,119,1),(87,120,1),(88,121,1),(89,122,1),(90,123,21),(91,124,6),(92,125,6),(93,126,6),(94,127,6),(95,128,22),(96,129,6),(97,130,6),(98,131,1),(99,132,1),(100,133,1),(101,134,1),(102,139,19),(103,140,20),(104,141,20),(105,142,20),(106,144,20),(107,148,1),(108,149,6),(109,150,6),(110,152,1),(111,153,1),(112,154,1),(113,155,1),(114,156,1),(115,157,1),(116,161,6),(117,162,6),(118,163,22),(119,164,1),(120,165,1),(121,166,1),(122,167,1),(123,168,6),(124,169,6),(125,172,24),(126,173,1),(127,174,1),(128,175,1),(129,176,1),(130,182,1),(131,183,1),(132,184,1),(133,185,1),(134,186,1),(135,187,1),(136,190,24),(137,191,6),(138,192,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,22,1),(2,23,3),(3,37,1),(4,38,3),(5,91,1),(6,92,3),(7,98,1),(8,99,3),(9,100,1),(10,101,3),(11,119,1),(12,120,3),(13,121,1),(14,122,3),(15,131,1),(16,132,3),(17,133,1),(18,134,3),(19,148,2),(20,152,1),(21,153,3),(22,154,1),(23,155,3),(24,156,1),(25,157,3),(26,164,1),(27,165,3),(28,166,1),(29,167,3),(30,173,1),(31,174,3),(32,175,1),(33,176,3),(34,182,1),(35,183,3),(36,184,1),(37,185,3),(38,186,1),(39,187,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'org/ltv/mvek/MenuActivity'),(2,2,'org/ltv/mvek/MenuActivity'),(3,3,'org/cst/game/GameActivity'),(4,4,'jp/lptqsnvvauu/owgfihf/Andjong'),(5,7,'jp/lptqsnvvauu/owgfihf/Settings'),(6,8,'jp/lptqsnvvauu/owgfihf/Game'),(7,9,'jp/lptqsnvvauu/owgfihf/About'),(8,11,'com/unbievnb/bo/GameSceneActivity'),(9,24,'com/tgmrinwj/cjiegmqopwgkrfb/cqhifimkvldwq/SpaceWarcraft'),(10,27,'com/tgmrinwj/cjiegmqopwgkrfb/cqhifimkvldwq/SpaceWarcraft'),(11,28,'com/tgmrinwj/cjiegmqopwgkrfb/cqhifimkvldwq/SpaceWarcraft'),(12,36,'com/FkLWKtMC/BDoWuFdqIfmVo'),(13,42,'com/FkLWKtMC/EfhCdluTkvoEsa'),(14,54,'djn/mmeFenS/UDaJP8'),(15,53,'com/FkLWKtMC/QGaMmrUhd'),(16,56,'djn/mmeFenS/UDaJP11'),(17,59,'djn/mmeFenS/UDaJP11'),(18,60,'ble/dowrefvuup7/bped/Ranking'),(19,62,'com/FkLWKtMC/EfhCdluTkvoEsa'),(20,61,'ble/dowrefvuup7/bped/EditProfile'),(21,65,'ble/dowrefvuup7/bped/MainActivity'),(22,66,'com/FkLWKtMC/BDoWuFdqIfmVo'),(23,69,'com/tgmrinwj/cjiegmqopwgkrfb/cqhifimkvldwq/SpaceWarcraft'),(24,93,'ble/dowrefvuup7/bped/MainActivity'),(25,97,'djn/mmeFenS/UDaJP11'),(26,102,'djn/mmeFenS/UDaJP10'),(27,103,'com/mobclix/android/sdk/MobclixBrowserActivity'),(28,106,'djn/mmeFenS/UDaJP11'),(29,107,'djn/mmeFenS/UDaJP11'),(30,108,'com/mobclix/android/sdk/MobclixBrowserActivity'),(31,118,'djn/mmeFenS/UDaJP11'),(32,123,'djn/mmeFenS/UDaJP11'),(33,135,'ble/dowrefvuup7/bped/EditProfile'),(34,136,'com/mobclix/android/sdk/MobclixBrowserActivity'),(35,137,'djn/mmeFenS/UDaJP8'),(36,145,'ble/dowrefvuup7/bped/MainActivity'),(37,146,'djn/mmeFenS/UDaJP16'),(38,147,'djn/mmeFenS/UDaJP11'),(39,151,'com/SWaUt/EDBpFWavFuf'),(40,158,'com/SWaUt/hdBPLOotlnub'),(41,159,'com/SWaUt/sOMrQWUGPioQb'),(42,160,'com/SWaUt/OTSfddMiC'),(43,170,'iup/pr4f/umiob/abaipic/GameTemplate'),(44,171,'com/SWaUt/EDBpFWavFuf'),(45,172,'com/SWaUt/EDBpFWavFuf'),(46,177,'iup/pr4f/umiob/abaipic/GameTemplate'),(47,178,'iup/pr4f/umiob/abaipic/GameTemplate'),(48,179,'com/SWaUt/hdBPLOotlnub'),(49,180,'com/SWaUt/EDBpFWavFuf'),(50,181,'com/SWaUt/EDBpFWavFuf'),(51,188,'com/SWaUt/EDBpFWavFuf'),(52,189,'com/SWaUt/EDBpFWavFuf'),(53,190,'com/SWaUt/EDBpFWavFuf'),(54,193,'com/SWaUt/EDBpFWavFuf');
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,5,1),(2,6,2),(3,10,3),(4,20,4),(5,21,5),(6,25,6),(7,26,7),(8,43,8),(9,55,9),(10,57,10),(11,58,11),(12,67,12),(13,68,13),(14,70,14),(15,71,15),(16,72,16),(17,81,17),(18,82,18),(19,94,19),(20,95,20),(21,96,21),(22,104,22),(23,105,23),(24,109,24),(25,110,25),(26,124,26),(27,125,27),(28,126,28),(29,127,29),(30,129,30),(31,130,31),(32,149,33),(33,150,34),(34,161,35),(35,162,36),(36,168,37),(37,169,38),(38,191,39),(39,192,40);
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
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,12,'android.intent.extra.INTENT'),(2,13,'android.intent.extra.INTENT'),(3,14,'android.intent.extra.TITLE'),(4,14,'android.intent.extra.INTENT'),(5,15,'android.intent.extra.INTENT'),(6,16,'android.intent.extra.TITLE'),(7,16,'android.intent.extra.INTENT'),(8,17,'android.intent.extra.INTENT'),(9,18,'android.intent.extra.TITLE'),(10,18,'android.intent.extra.INTENT'),(11,19,'android.intent.extra.TITLE'),(12,19,'android.intent.extra.INTENT'),(13,26,'sms_body'),(14,29,'appId'),(15,29,'type'),(16,29,'apikey'),(17,30,'appId'),(18,30,'type'),(19,30,'apikey'),(20,31,'appId'),(21,31,'type'),(22,31,'apikey'),(23,32,'<INTENT>'),(24,32,'type'),(25,33,'<INTENT>'),(26,33,'type'),(27,34,'<INTENT>'),(28,34,'type'),(29,35,'<INTENT>'),(30,35,'type'),(31,39,'icon'),(32,39,'appId'),(33,39,'testMode'),(34,39,'type'),(35,39,'apikey'),(36,40,'icon'),(37,40,'appId'),(38,40,'testMode'),(39,40,'type'),(40,40,'apikey'),(41,41,'icon'),(42,41,'appId'),(43,41,'testMode'),(44,41,'type'),(45,41,'apikey'),(46,45,'campId'),(47,45,'text'),(48,45,'title'),(49,45,'creativeId'),(50,45,'appId'),(51,45,'expiry_time'),(52,45,'number'),(53,45,'adType'),(54,45,'type'),(55,45,'sms'),(56,45,'imageurl'),(57,45,'apikey'),(58,46,'campId'),(59,46,'title'),(60,46,'text'),(61,46,'creativeId'),(62,46,'appId'),(63,46,'expiry_time'),(64,46,'link'),(65,46,'adType'),(66,46,'type'),(67,46,'imageurl'),(68,46,'header'),(69,46,'apikey'),(70,47,'campId'),(71,47,'text'),(72,47,'title'),(73,47,'creativeId'),(74,47,'appId'),(75,47,'expiry_time'),(76,47,'number'),(77,47,'adType'),(78,47,'type'),(79,47,'sms'),(80,47,'imageurl'),(81,47,'apikey'),(82,48,'title'),(83,48,'text'),(84,48,'appId'),(85,48,'expiry_time'),(86,48,'number'),(87,48,'adType'),(88,48,'type'),(89,48,'imageurl'),(90,48,'apikey'),(91,49,'campId'),(92,49,'title'),(93,49,'text'),(94,49,'creativeId'),(95,49,'appId'),(96,49,'expiry_time'),(97,49,'link'),(98,49,'adType'),(99,49,'type'),(100,49,'imageurl'),(101,49,'apikey'),(102,50,'campId'),(103,50,'title'),(104,50,'text'),(105,50,'creativeId'),(106,50,'appId'),(107,50,'expiry_time'),(108,50,'link'),(109,50,'adType'),(110,50,'type'),(111,50,'imageurl'),(112,50,'header'),(113,50,'apikey'),(114,51,'title'),(115,51,'text'),(116,51,'appId'),(117,51,'expiry_time'),(118,51,'number'),(119,51,'adType'),(120,51,'type'),(121,51,'imageurl'),(122,51,'apikey'),(123,52,'campId'),(124,52,'title'),(125,52,'text'),(126,52,'creativeId'),(127,52,'appId'),(128,52,'expiry_time'),(129,52,'link'),(130,52,'adType'),(131,52,'type'),(132,52,'imageurl'),(133,52,'apikey'),(134,53,'apkVersion'),(135,53,'apkURL'),(136,54,'game'),(137,53,'apkInfo'),(138,54,'fromtype'),(139,53,'packageName'),(140,53,'apkSoftID'),(141,53,'apkTitle'),(142,53,'iconURL'),(143,53,'apkSize'),(144,53,'imageURL'),(145,60,'mGameID'),(146,60,'mThisGameHighScore'),(147,61,'mGameID'),(148,61,'nick'),(149,63,'<INTENT>'),(150,63,'type'),(151,64,'<INTENT>'),(152,64,'type'),(153,68,'android.intent.extra.SUBJECT'),(154,73,'android.intent.extra.INTENT'),(155,74,'android.intent.extra.INTENT'),(156,75,'android.intent.extra.TITLE'),(157,75,'android.intent.extra.INTENT'),(158,76,'android.intent.extra.INTENT'),(159,77,'android.intent.extra.TITLE'),(160,77,'android.intent.extra.INTENT'),(161,78,'android.intent.extra.INTENT'),(162,79,'android.intent.extra.TITLE'),(163,79,'android.intent.extra.INTENT'),(164,80,'android.intent.extra.TITLE'),(165,80,'android.intent.extra.INTENT'),(166,83,'android.intent.extra.INTENT'),(167,84,'android.intent.extra.INTENT'),(168,85,'android.intent.extra.TITLE'),(169,85,'android.intent.extra.INTENT'),(170,86,'android.intent.extra.INTENT'),(171,87,'android.intent.extra.TITLE'),(172,87,'android.intent.extra.INTENT'),(173,88,'android.intent.extra.INTENT'),(174,89,'android.intent.extra.TITLE'),(175,89,'android.intent.extra.INTENT'),(176,90,'android.intent.extra.TITLE'),(177,90,'android.intent.extra.INTENT'),(178,102,'title'),(179,102,'btn_txt'),(180,102,'need_adb_flag'),(181,102,'cont'),(182,102,'close_flag'),(183,113,'output'),(184,114,'output'),(185,114,'android.intent.extra.videoQuality'),(186,135,'mGameID'),(187,135,'nick'),(188,137,'id'),(189,137,'from_alert'),(190,137,'detail_flag'),(191,140,'output'),(192,141,'output'),(193,141,'android.intent.extra.videoQuality'),(194,146,'popurl'),(195,146,'poptitle'),(196,158,'game'),(197,158,'fromtype'),(198,159,'popurl'),(199,159,'poptitle'),(200,160,'title'),(201,160,'btn_txt'),(202,160,'need_adb_flag'),(203,160,'cont'),(204,160,'close_flag'),(205,179,'id'),(206,179,'from_alert'),(207,179,'detail_flag');
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,2,1),(2,4,1),(3,7,1),(4,8,1),(5,9,2),(6,10,3),(7,11,4),(8,13,1),(9,14,1),(10,15,1),(11,16,1),(12,17,1),(13,18,5),(14,19,3),(15,19,4),(16,21,1),(17,22,1),(18,23,1),(19,24,1),(20,25,1),(21,26,4),(22,26,3),(23,27,14),(24,28,16),(25,28,17),(26,29,16),(27,30,18),(28,31,4),(29,31,16),(30,33,1),(31,34,1),(32,35,1),(33,36,1),(34,37,1),(35,38,4),(36,38,3),(37,39,23),(38,40,17),(39,40,16),(40,41,4),(41,42,4),(42,43,23),(43,44,16),(44,45,14);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,2,1),(2,4,1),(3,7,1),(4,8,1),(5,10,2),(6,13,1),(7,17,1),(8,21,1),(9,25,1),(10,27,4),(11,33,1),(12,37,1),(13,39,4),(14,43,4),(15,45,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,27,'package',NULL,NULL,NULL,NULL,NULL),(2,39,'package',NULL,NULL,NULL,NULL,NULL),(3,43,'package',NULL,NULL,NULL,NULL,NULL),(4,45,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,6,'(.*)','(.*)'),(2,20,'application','vnd.android.package-archive'),(3,25,'application','vnd.android.package-archive'),(4,57,'(.*)','(.*)'),(5,67,'application','vnd.android.package-archive'),(6,71,'(.*)','(.*)'),(7,81,'application','vnd.android.package-archive'),(8,82,'application','vnd.android.package-archive'),(9,104,'application','vnd.android.package-archive'),(10,105,'application','vnd.android.package-archive'),(11,112,'image','*'),(12,116,'image','*'),(13,117,'image','*'),(14,126,'application','vnd.android.package-archive'),(15,127,'application','vnd.android.package-archive'),(16,139,'image','*'),(17,143,'image','*'),(18,144,'image','*'),(19,149,'application','vnd.android.package-archive'),(20,150,'application','vnd.android.package-archive'),(21,168,'application','vnd.android.package-archive'),(22,169,'application','vnd.android.package-archive'),(23,191,'application','vnd.android.package-archive'),(24,192,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'org.ltv.mvek'),(2,2,'org.ltv.mvek'),(3,3,'org.ltv.mvek'),(4,4,'jp.lptqsnvvauu.owgfihf'),(5,7,'jp.lptqsnvvauu.owgfihf'),(6,8,'jp.lptqsnvvauu.owgfihf'),(7,9,'jp.lptqsnvvauu.owgfihf'),(8,11,'com.unbievnb.bo'),(9,22,'(.*)'),(10,23,'(.*)'),(11,24,'com.tgmrinwj.cjiegmqopwgkrfb.cqhifimkvldwq'),(12,27,'com.tgmrinwj.cjiegmqopwgkrfb.cqhifimkvldwq'),(13,28,'com.tgmrinwj.cjiegmqopwgkrfb.cqhifimkvldwq'),(14,36,'com.tgmrinwj.cjiegmqopwgkrfb.cqhifimkvldwq'),(15,37,'(.*)'),(16,38,'(.*)'),(17,42,'com.tgmrinwj.cjiegmqopwgkrfb.cqhifimkvldwq'),(18,54,'ble.dowrefvuup7.bped'),(19,53,'com.tgmrinwj.cjiegmqopwgkrfb.cqhifimkvldwq'),(20,56,'ble.dowrefvuup7.bped'),(21,59,'ble.dowrefvuup7.bped'),(22,60,'ble.dowrefvuup7.bped'),(23,62,'com.tgmrinwj.cjiegmqopwgkrfb.cqhifimkvldwq'),(24,61,'ble.dowrefvuup7.bped'),(25,65,'ble.dowrefvuup7.bped'),(26,66,'com.tgmrinwj.cjiegmqopwgkrfb.cqhifimkvldwq'),(27,69,'com.tgmrinwj.cjiegmqopwgkrfb.cqhifimkvldwq'),(28,91,'(.*)'),(29,92,'(.*)'),(30,93,'ble.dowrefvuup7.bped'),(31,97,'ble.dowrefvuup7.bped'),(32,98,'(.*)'),(33,99,''),(34,100,''),(35,101,'(.*)'),(36,102,'ble.dowrefvuup7.bped'),(37,103,'ble.dowrefvuup7.bped'),(38,106,'ble.dowrefvuup7.bped'),(39,107,'ble.dowrefvuup7.bped'),(40,108,'ble.dowrefvuup7.bped'),(41,118,'ble.dowrefvuup7.bped'),(42,119,'(.*)'),(43,120,''),(44,121,''),(45,122,'(.*)'),(46,123,'ble.dowrefvuup7.bped'),(47,131,'(.*)'),(48,132,''),(49,133,''),(50,134,'(.*)'),(51,135,'ble.dowrefvuup7.bped'),(52,136,'ble.dowrefvuup7.bped'),(53,137,'ble.dowrefvuup7.bped'),(54,145,'ble.dowrefvuup7.bped'),(55,146,'ble.dowrefvuup7.bped'),(56,147,'ble.dowrefvuup7.bped'),(57,151,'iup.pr4f.umiob.abaipic'),(58,152,'(.*)'),(59,153,''),(60,154,''),(61,155,'(.*)'),(62,156,'(.*)'),(63,157,'(.*)'),(64,158,'iup.pr4f.umiob.abaipic'),(65,159,'iup.pr4f.umiob.abaipic'),(66,160,'iup.pr4f.umiob.abaipic'),(67,164,'(.*)'),(68,165,''),(69,166,''),(70,167,'(.*)'),(71,170,'iup.pr4f.umiob.abaipic'),(72,171,'iup.pr4f.umiob.abaipic'),(73,172,'iup.pr4f.umiob.abaipic'),(74,173,'(.*)'),(75,174,''),(76,175,''),(77,176,'(.*)'),(78,177,'iup.pr4f.umiob.abaipic'),(79,178,'iup.pr4f.umiob.abaipic'),(80,179,'iup.pr4f.umiob.abaipic'),(81,180,'iup.pr4f.umiob.abaipic'),(82,181,'iup.pr4f.umiob.abaipic'),(83,182,'(.*)'),(84,183,''),(85,184,''),(86,185,'(.*)'),(87,186,'(.*)'),(88,187,'(.*)'),(89,188,'iup.pr4f.umiob.abaipic'),(90,189,'iup.pr4f.umiob.abaipic'),(91,190,'iup.pr4f.umiob.abaipic'),(92,193,'iup.pr4f.umiob.abaipic');
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,4,0),(3,5,0),(4,7,0),(5,8,0),(6,13,0),(7,14,0),(8,17,0),(9,20,0),(10,26,0),(11,28,0),(12,29,0),(13,34,0),(14,37,0),(15,38,0),(16,39,0),(17,41,0),(18,42,0),(19,43,0),(20,44,0),(21,78,0),(22,80,0),(23,81,0),(24,82,0),(25,85,0),(26,86,0),(27,43,0),(28,87,0),(29,88,0),(30,89,0),(31,90,0),(32,91,0),(33,92,0),(34,94,0),(35,95,0),(36,96,0),(37,99,0),(38,100,0),(39,43,0),(40,87,0),(41,101,0),(42,102,0),(43,100,0),(44,103,0),(45,100,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,1,0),(6,5,1,0),(7,6,0,0),(8,7,0,0),(9,8,0,0),(10,9,1,0),(11,10,0,0),(12,11,1,0),(13,11,1,0),(14,11,1,0),(15,11,1,0),(16,11,1,0),(17,11,1,0),(18,11,1,0),(19,11,1,0),(20,12,1,0),(21,13,1,0),(22,14,1,0),(23,14,1,0),(24,15,0,0),(25,16,1,0),(26,17,1,0),(27,18,0,0),(28,19,0,0),(29,20,1,0),(30,20,1,0),(31,20,1,0),(32,21,1,0),(33,21,1,0),(34,22,1,0),(35,22,1,0),(36,23,0,0),(37,24,1,0),(38,24,1,0),(39,25,1,0),(40,25,1,0),(41,25,1,0),(42,26,0,0),(43,28,1,0),(44,29,1,0),(45,29,1,0),(46,29,1,0),(47,29,1,0),(48,29,1,0),(49,29,1,0),(50,29,1,0),(51,29,1,0),(52,29,1,0),(53,30,0,0),(54,31,0,0),(55,32,1,0),(56,33,0,0),(57,32,1,0),(58,32,1,0),(59,34,0,0),(60,35,0,0),(61,36,0,0),(62,37,0,0),(63,38,1,0),(64,38,1,0),(65,39,0,0),(66,40,0,0),(67,41,1,0),(68,42,1,0),(69,43,0,0),(70,44,1,0),(71,44,1,0),(72,44,1,0),(73,45,1,0),(74,45,1,0),(75,45,1,0),(76,45,1,0),(77,45,1,0),(78,45,1,0),(79,45,1,0),(80,45,1,0),(81,46,1,0),(82,46,1,0),(83,47,1,0),(84,47,1,0),(85,47,1,0),(86,47,1,0),(87,47,1,0),(88,47,1,0),(89,47,1,0),(90,47,1,0),(91,48,1,0),(92,48,1,0),(93,49,0,0),(94,50,1,0),(95,51,1,0),(96,51,1,0),(97,52,0,0),(98,54,1,0),(99,54,1,0),(100,54,1,0),(101,54,1,0),(102,55,0,0),(103,56,0,0),(104,57,1,0),(105,57,1,0),(106,58,0,0),(107,59,0,0),(108,60,0,0),(109,61,1,0),(110,61,1,0),(111,62,1,0),(112,62,1,0),(113,62,1,0),(114,62,1,0),(115,62,1,0),(116,62,1,0),(117,62,1,0),(118,63,0,0),(119,64,1,0),(120,64,1,0),(121,64,1,0),(122,64,1,0),(123,65,0,0),(124,66,1,0),(125,66,1,0),(126,67,1,0),(127,67,1,0),(128,68,1,0),(129,69,1,0),(130,69,1,0),(131,70,1,0),(132,70,1,0),(133,70,1,0),(134,70,1,0),(135,71,0,0),(136,72,0,0),(137,73,0,0),(138,74,1,0),(139,74,1,0),(140,74,1,0),(141,74,1,0),(142,74,1,0),(143,74,1,0),(144,74,1,0),(145,76,0,0),(146,77,0,0),(147,78,0,0),(148,79,1,0),(149,80,1,0),(150,80,1,0),(151,81,0,0),(152,82,1,0),(153,82,1,0),(154,82,1,0),(155,82,1,0),(156,83,1,0),(157,83,1,0),(158,84,0,0),(159,85,0,0),(160,86,0,0),(161,87,1,0),(162,87,1,0),(163,88,1,0),(164,89,1,0),(165,89,1,0),(166,89,1,0),(167,89,1,0),(168,90,1,0),(169,90,1,0),(170,91,0,0),(171,92,0,0),(172,93,0,0),(173,94,1,0),(174,94,1,0),(175,94,1,0),(176,94,1,0),(177,95,0,0),(178,96,0,0),(179,97,0,0),(180,98,0,0),(181,99,0,0),(182,100,1,0),(183,100,1,0),(184,100,1,0),(185,100,1,0),(186,101,1,0),(187,101,1,0),(188,102,0,0),(189,103,0,0),(190,104,0,0),(191,105,1,0),(192,105,1,0),(193,106,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (11,'android.permission.ACCESS_COARSE_LOCATION'),(14,'android.permission.ACCESS_FINE_LOCATION'),(7,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(17,'android.permission.CALL_PHONE'),(10,'android.permission.GET_TASKS'),(2,'android.permission.INTERNET'),(15,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(12,'android.permission.RECEIVE_BOOT_COMPLETED'),(6,'android.permission.RESTART_PACKAGES'),(13,'android.permission.SYSTEM_ALERT_WINDOW'),(4,'android.permission.VIBRATE'),(8,'android.permission.WAKE_LOCK'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(9,'com.android.launcher.permission.INSTALL_SHORTCUT'),(16,'com.android.launcher.permission.UNINSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(3,NULL,NULL,'market://details?id=(.*)',NULL,NULL,NULL),(4,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(5,NULL,NULL,'market://details?id=com.greenlog.bb',NULL,NULL,NULL),(6,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(7,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(8,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(9,NULL,NULL,'(.*)',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(13,NULL,NULL,'mailto:androidmj002@gmail.com',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(18,NULL,NULL,'file://',NULL,NULL,NULL),(19,NULL,NULL,'market://search?q=pname:',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL),(21,NULL,NULL,'',NULL,NULL,NULL),(22,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(23,NULL,NULL,'file://',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'',NULL,NULL,NULL),(28,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(29,NULL,NULL,'file://',NULL,NULL,NULL),(30,NULL,NULL,'(.*)',NULL,NULL,NULL),(31,NULL,NULL,'',NULL,NULL,NULL),(32,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(33,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(34,NULL,NULL,'file://',NULL,NULL,NULL),(35,NULL,NULL,'(.*)',NULL,NULL,NULL),(36,NULL,NULL,'',NULL,NULL,NULL),(37,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(38,NULL,NULL,'file://',NULL,NULL,NULL),(39,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(40,NULL,NULL,'file://',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,75,32);
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,1),(9,2,2),(10,2,3),(11,2,5),(12,2,7),(13,2,8),(14,3,1),(15,3,2),(16,3,3),(17,3,5),(18,4,1),(19,3,7),(20,4,2),(21,4,3),(22,4,4),(23,4,5),(24,4,7),(25,4,9),(26,4,10),(27,4,11),(28,4,12),(29,4,13),(30,4,14),(31,5,16),(32,5,1),(33,5,2),(34,5,3),(35,5,7),(36,5,9),(37,5,10),(38,5,12),(39,5,15),(40,6,16),(41,6,1),(42,6,2),(43,6,3),(44,6,5),(45,6,7),(46,6,9),(47,6,10),(48,6,12),(49,7,1),(50,7,2),(51,7,3),(52,7,5),(53,7,7),(54,7,8),(55,7,9),(56,7,10),(57,7,11),(58,7,12),(59,7,14),(60,7,17),(61,7,16);
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

-- Dump completed on 2015-10-09  0:39:40
