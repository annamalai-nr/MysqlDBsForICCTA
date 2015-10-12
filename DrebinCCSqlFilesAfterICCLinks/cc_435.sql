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
) ENGINE=InnoDB AUTO_INCREMENT=3267 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,12,13,2,NULL),(2,13,13,2,NULL),(3,14,13,2,NULL),(4,15,13,2,NULL),(5,16,13,2,NULL),(6,17,13,2,NULL),(7,18,13,2,NULL),(8,19,13,2,NULL),(9,55,13,2,NULL),(10,58,13,2,NULL),(11,26,13,2,NULL),(12,32,13,2,NULL),(13,33,13,2,NULL),(14,34,13,2,NULL),(15,35,13,2,NULL),(16,43,13,2,NULL),(17,63,13,2,NULL),(18,64,13,2,NULL),(19,22,13,2,NULL),(20,23,13,2,NULL),(21,37,13,2,NULL),(22,38,13,2,NULL),(23,29,13,2,NULL),(24,30,13,2,NULL),(25,31,13,2,NULL),(26,39,13,2,NULL),(27,40,13,2,NULL),(28,41,13,2,NULL),(29,44,13,2,NULL),(30,45,13,2,NULL),(31,46,13,2,NULL),(32,47,13,2,NULL),(33,48,13,2,NULL),(34,49,13,2,NULL),(35,50,13,2,NULL),(36,51,13,2,NULL),(37,52,13,2,NULL),(38,68,13,2,NULL),(39,73,13,2,NULL),(40,74,13,2,NULL),(41,75,13,2,NULL),(42,76,13,2,NULL),(43,77,13,2,NULL),(44,78,13,2,NULL),(45,79,13,2,NULL),(46,80,13,2,NULL),(47,83,13,2,NULL),(48,84,13,2,NULL),(49,85,13,2,NULL),(50,86,13,2,NULL),(51,87,13,2,NULL),(52,88,13,2,NULL),(53,89,13,2,NULL),(54,90,13,2,NULL),(55,111,13,2,NULL),(56,113,13,2,NULL),(57,114,13,2,NULL),(58,115,13,2,NULL),(59,138,13,2,NULL),(60,140,13,2,NULL),(61,141,13,2,NULL),(62,142,13,2,NULL),(63,70,13,2,NULL),(64,72,13,2,NULL),(65,91,13,2,NULL),(66,92,13,2,NULL),(67,95,13,2,NULL),(68,96,13,2,NULL),(69,128,13,2,NULL),(70,186,13,2,NULL),(71,187,13,2,NULL),(72,156,13,2,NULL),(73,157,13,2,NULL),(74,164,13,2,NULL),(75,165,13,2,NULL),(76,166,13,2,NULL),(77,167,13,2,NULL),(78,161,13,2,NULL),(79,162,13,2,NULL),(80,163,13,2,NULL),(81,148,13,2,NULL),(82,55,1,2,NULL),(83,58,1,2,NULL),(84,55,4,2,NULL),(85,58,4,2,NULL),(86,55,5,2,NULL),(87,58,5,2,NULL),(88,55,7,2,NULL),(89,58,7,2,NULL),(90,55,8,2,NULL),(91,58,8,2,NULL),(92,55,14,2,NULL),(93,58,14,2,NULL),(94,55,17,2,NULL),(95,58,17,2,NULL),(96,55,20,2,NULL),(97,58,20,2,NULL),(98,55,26,2,NULL),(99,58,26,2,NULL),(100,55,28,2,NULL),(101,58,28,2,NULL),(102,55,29,2,NULL),(103,58,29,2,NULL),(104,55,34,2,NULL),(105,58,34,2,NULL),(106,55,37,2,NULL),(107,58,37,2,NULL),(108,55,38,2,NULL),(109,58,38,2,NULL),(110,55,39,2,NULL),(111,58,39,2,NULL),(112,55,41,2,NULL),(113,58,41,2,NULL),(114,55,42,2,NULL),(115,58,42,2,NULL),(116,55,43,2,NULL),(117,58,43,2,NULL),(118,55,87,2,NULL),(119,58,87,2,NULL),(120,55,88,2,NULL),(121,58,88,2,NULL),(122,55,89,2,NULL),(123,58,89,2,NULL),(124,55,90,2,NULL),(125,58,90,2,NULL),(126,55,101,2,NULL),(127,58,101,2,NULL),(128,55,44,2,NULL),(129,58,44,2,NULL),(130,55,78,2,NULL),(131,58,78,2,NULL),(132,55,80,2,NULL),(133,58,80,2,NULL),(134,55,81,2,NULL),(135,58,81,2,NULL),(136,55,82,2,NULL),(137,58,82,2,NULL),(138,55,85,2,NULL),(139,58,85,2,NULL),(140,55,86,2,NULL),(141,58,86,2,NULL),(142,55,91,2,NULL),(143,58,91,2,NULL),(144,55,92,2,NULL),(145,58,92,2,NULL),(146,55,94,2,NULL),(147,58,94,2,NULL),(148,55,95,2,NULL),(149,58,95,2,NULL),(150,55,96,2,NULL),(151,58,96,2,NULL),(152,55,99,2,NULL),(153,58,99,2,NULL),(154,55,100,2,NULL),(155,58,100,2,NULL),(156,55,102,2,NULL),(157,58,102,2,NULL),(158,55,103,2,NULL),(159,58,103,2,NULL),(160,26,1,2,NULL),(161,32,1,2,NULL),(162,33,1,2,NULL),(163,34,1,2,NULL),(164,35,1,2,NULL),(165,43,1,2,NULL),(166,63,1,2,NULL),(167,64,1,2,NULL),(168,26,4,2,NULL),(169,32,4,2,NULL),(170,33,4,2,NULL),(171,34,4,2,NULL),(172,35,4,2,NULL),(173,43,4,2,NULL),(174,63,4,2,NULL),(175,64,4,2,NULL),(176,26,5,2,NULL),(177,32,5,2,NULL),(178,33,5,2,NULL),(179,34,5,2,NULL),(180,35,5,2,NULL),(181,43,5,2,NULL),(182,63,5,2,NULL),(183,64,5,2,NULL),(184,26,7,2,NULL),(185,32,7,2,NULL),(186,33,7,2,NULL),(187,34,7,2,NULL),(188,35,7,2,NULL),(189,43,7,2,NULL),(190,63,7,2,NULL),(191,64,7,2,NULL),(192,26,8,2,NULL),(193,32,8,2,NULL),(194,33,8,2,NULL),(195,34,8,2,NULL),(196,35,8,2,NULL),(197,43,8,2,NULL),(198,63,8,2,NULL),(199,64,8,2,NULL),(200,26,14,2,NULL),(201,32,14,2,NULL),(202,33,14,2,NULL),(203,34,14,2,NULL),(204,35,14,2,NULL),(205,43,14,2,NULL),(206,63,14,2,NULL),(207,64,14,2,NULL),(208,26,17,2,NULL),(209,32,17,2,NULL),(210,33,17,2,NULL),(211,34,17,2,NULL),(212,35,17,2,NULL),(213,43,17,2,NULL),(214,63,17,2,NULL),(215,64,17,2,NULL),(216,26,20,2,NULL),(217,32,20,2,NULL),(218,33,20,2,NULL),(219,34,20,2,NULL),(220,35,20,2,NULL),(221,43,20,2,NULL),(222,63,20,2,NULL),(223,64,20,2,NULL),(224,26,26,2,NULL),(225,32,26,2,NULL),(226,33,26,2,NULL),(227,34,26,2,NULL),(228,35,26,2,NULL),(229,43,26,2,NULL),(230,63,26,2,NULL),(231,64,26,2,NULL),(232,26,28,2,NULL),(233,32,28,2,NULL),(234,33,28,2,NULL),(235,34,28,2,NULL),(236,35,28,2,NULL),(237,43,28,2,NULL),(238,63,28,2,NULL),(239,64,28,2,NULL),(240,26,29,2,NULL),(241,32,29,2,NULL),(242,33,29,2,NULL),(243,34,29,2,NULL),(244,35,29,2,NULL),(245,43,29,2,NULL),(246,63,29,2,NULL),(247,64,29,2,NULL),(248,26,34,2,NULL),(249,32,34,2,NULL),(250,33,34,2,NULL),(251,34,34,2,NULL),(252,35,34,2,NULL),(253,43,34,2,NULL),(254,63,34,2,NULL),(255,64,34,2,NULL),(256,26,37,2,NULL),(257,32,37,2,NULL),(258,33,37,2,NULL),(259,34,37,2,NULL),(260,35,37,2,NULL),(261,43,37,2,NULL),(262,63,37,2,NULL),(263,64,37,2,NULL),(264,26,38,2,NULL),(265,32,38,2,NULL),(266,33,38,2,NULL),(267,34,38,2,NULL),(268,35,38,2,NULL),(269,43,38,2,NULL),(270,63,38,2,NULL),(271,64,38,2,NULL),(272,26,39,2,NULL),(273,32,39,2,NULL),(274,33,39,2,NULL),(275,34,39,2,NULL),(276,35,39,2,NULL),(277,43,39,2,NULL),(278,63,39,2,NULL),(279,64,39,2,NULL),(280,26,41,2,NULL),(281,32,41,2,NULL),(282,33,41,2,NULL),(283,34,41,2,NULL),(284,35,41,2,NULL),(285,43,41,2,NULL),(286,63,41,2,NULL),(287,64,41,2,NULL),(288,26,42,2,NULL),(289,32,42,2,NULL),(290,33,42,2,NULL),(291,34,42,2,NULL),(292,35,42,2,NULL),(293,43,42,2,NULL),(294,63,42,2,NULL),(295,64,42,2,NULL),(296,26,43,2,NULL),(297,32,43,2,NULL),(298,33,43,2,NULL),(299,34,43,2,NULL),(300,35,43,2,NULL),(301,43,43,2,NULL),(302,63,43,2,NULL),(303,64,43,2,NULL),(304,26,87,2,NULL),(305,32,87,2,NULL),(306,33,87,2,NULL),(307,34,87,2,NULL),(308,35,87,2,NULL),(309,43,87,2,NULL),(310,63,87,2,NULL),(311,64,87,2,NULL),(312,26,88,2,NULL),(313,32,88,2,NULL),(314,33,88,2,NULL),(315,34,88,2,NULL),(316,35,88,2,NULL),(317,43,88,2,NULL),(318,63,88,2,NULL),(319,64,88,2,NULL),(320,26,89,2,NULL),(321,32,89,2,NULL),(322,33,89,2,NULL),(323,34,89,2,NULL),(324,35,89,2,NULL),(325,43,89,2,NULL),(326,63,89,2,NULL),(327,64,89,2,NULL),(328,26,90,2,NULL),(329,32,90,2,NULL),(330,33,90,2,NULL),(331,34,90,2,NULL),(332,35,90,2,NULL),(333,43,90,2,NULL),(334,63,90,2,NULL),(335,64,90,2,NULL),(336,26,101,2,NULL),(337,32,101,2,NULL),(338,33,101,2,NULL),(339,34,101,2,NULL),(340,35,101,2,NULL),(341,43,101,2,NULL),(342,63,101,2,NULL),(343,64,101,2,NULL),(344,26,44,2,NULL),(345,32,44,2,NULL),(346,33,44,2,NULL),(347,34,44,2,NULL),(348,35,44,2,NULL),(349,43,44,2,NULL),(350,63,44,2,NULL),(351,64,44,2,NULL),(352,26,78,2,NULL),(353,32,78,2,NULL),(354,33,78,2,NULL),(355,34,78,2,NULL),(356,35,78,2,NULL),(357,43,78,2,NULL),(358,63,78,2,NULL),(359,64,78,2,NULL),(360,26,80,2,NULL),(361,32,80,2,NULL),(362,33,80,2,NULL),(363,34,80,2,NULL),(364,35,80,2,NULL),(365,43,80,2,NULL),(366,63,80,2,NULL),(367,64,80,2,NULL),(368,26,81,2,NULL),(369,32,81,2,NULL),(370,33,81,2,NULL),(371,34,81,2,NULL),(372,35,81,2,NULL),(373,43,81,2,NULL),(374,63,81,2,NULL),(375,64,81,2,NULL),(376,26,82,2,NULL),(377,32,82,2,NULL),(378,33,82,2,NULL),(379,34,82,2,NULL),(380,35,82,2,NULL),(381,43,82,2,NULL),(382,63,82,2,NULL),(383,64,82,2,NULL),(384,26,85,2,NULL),(385,32,85,2,NULL),(386,33,85,2,NULL),(387,34,85,2,NULL),(388,35,85,2,NULL),(389,43,85,2,NULL),(390,63,85,2,NULL),(391,64,85,2,NULL),(392,26,86,2,NULL),(393,32,86,2,NULL),(394,33,86,2,NULL),(395,34,86,2,NULL),(396,35,86,2,NULL),(397,43,86,2,NULL),(398,63,86,2,NULL),(399,64,86,2,NULL),(400,26,91,2,NULL),(401,32,91,2,NULL),(402,33,91,2,NULL),(403,34,91,2,NULL),(404,35,91,2,NULL),(405,43,91,2,NULL),(406,63,91,2,NULL),(407,64,91,2,NULL),(408,26,92,2,NULL),(409,32,92,2,NULL),(410,33,92,2,NULL),(411,34,92,2,NULL),(412,35,92,2,NULL),(413,43,92,2,NULL),(414,63,92,2,NULL),(415,64,92,2,NULL),(416,26,94,2,NULL),(417,32,94,2,NULL),(418,33,94,2,NULL),(419,34,94,2,NULL),(420,35,94,2,NULL),(421,43,94,2,NULL),(422,63,94,2,NULL),(423,64,94,2,NULL),(424,26,95,2,NULL),(425,32,95,2,NULL),(426,33,95,2,NULL),(427,34,95,2,NULL),(428,35,95,2,NULL),(429,43,95,2,NULL),(430,63,95,2,NULL),(431,64,95,2,NULL),(432,26,96,2,NULL),(433,32,96,2,NULL),(434,33,96,2,NULL),(435,34,96,2,NULL),(436,35,96,2,NULL),(437,43,96,2,NULL),(438,63,96,2,NULL),(439,64,96,2,NULL),(440,26,99,2,NULL),(441,32,99,2,NULL),(442,33,99,2,NULL),(443,34,99,2,NULL),(444,35,99,2,NULL),(445,43,99,2,NULL),(446,63,99,2,NULL),(447,64,99,2,NULL),(448,26,100,2,NULL),(449,32,100,2,NULL),(450,33,100,2,NULL),(451,34,100,2,NULL),(452,35,100,2,NULL),(453,43,100,2,NULL),(454,63,100,2,NULL),(455,64,100,2,NULL),(456,26,102,2,NULL),(457,32,102,2,NULL),(458,33,102,2,NULL),(459,34,102,2,NULL),(460,35,102,2,NULL),(461,43,102,2,NULL),(462,63,102,2,NULL),(463,64,102,2,NULL),(464,26,103,2,NULL),(465,32,103,2,NULL),(466,33,103,2,NULL),(467,34,103,2,NULL),(468,35,103,2,NULL),(469,43,103,2,NULL),(470,63,103,2,NULL),(471,64,103,2,NULL),(472,42,18,2,NULL),(473,62,18,2,NULL),(474,12,17,2,NULL),(475,13,17,2,NULL),(476,14,17,2,NULL),(477,15,17,2,NULL),(478,16,17,2,NULL),(479,17,17,2,NULL),(480,12,1,2,NULL),(481,18,17,2,NULL),(482,13,1,2,NULL),(483,19,17,2,NULL),(484,14,1,2,NULL),(485,22,17,2,NULL),(486,15,1,2,NULL),(487,23,17,2,NULL),(488,16,1,2,NULL),(489,37,17,2,NULL),(490,17,1,2,NULL),(491,38,17,2,NULL),(492,18,1,2,NULL),(493,29,17,2,NULL),(494,19,1,2,NULL),(495,30,17,2,NULL),(496,12,4,2,NULL),(497,31,17,2,NULL),(498,13,4,2,NULL),(499,39,17,2,NULL),(500,14,4,2,NULL),(501,40,17,2,NULL),(502,15,4,2,NULL),(503,41,17,2,NULL),(504,16,4,2,NULL),(505,44,17,2,NULL),(506,17,4,2,NULL),(507,45,17,2,NULL),(508,18,4,2,NULL),(509,46,17,2,NULL),(510,19,4,2,NULL),(511,47,17,2,NULL),(512,12,7,2,NULL),(513,48,17,2,NULL),(514,13,7,2,NULL),(515,49,17,2,NULL),(516,14,7,2,NULL),(517,60,30,2,NULL),(518,50,17,2,NULL),(519,15,7,2,NULL),(520,68,1,2,NULL),(521,51,17,2,NULL),(522,16,7,2,NULL),(523,68,4,2,NULL),(524,52,17,2,NULL),(525,17,7,2,NULL),(526,68,17,2,NULL),(527,68,5,2,NULL),(528,18,7,2,NULL),(529,73,17,2,NULL),(530,12,29,2,NULL),(531,19,7,2,NULL),(532,74,17,2,NULL),(533,13,29,2,NULL),(534,12,8,2,NULL),(535,75,17,2,NULL),(536,14,29,2,NULL),(537,13,8,2,NULL),(538,76,17,2,NULL),(539,15,29,2,NULL),(540,14,8,2,NULL),(541,77,17,2,NULL),(542,16,29,2,NULL),(543,15,8,2,NULL),(544,78,17,2,NULL),(545,17,29,2,NULL),(546,16,8,2,NULL),(547,79,17,2,NULL),(548,18,29,2,NULL),(549,17,8,2,NULL),(550,80,17,2,NULL),(551,19,29,2,NULL),(552,18,8,2,NULL),(553,83,17,2,NULL),(554,68,7,2,NULL),(555,19,8,2,NULL),(556,84,17,2,NULL),(557,68,8,2,NULL),(558,12,14,2,NULL),(559,85,17,2,NULL),(560,13,14,2,NULL),(561,68,14,2,NULL),(562,86,17,2,NULL),(563,14,14,2,NULL),(564,22,29,2,NULL),(565,87,17,2,NULL),(566,15,14,2,NULL),(567,23,29,2,NULL),(568,88,17,2,NULL),(569,16,14,2,NULL),(570,89,17,2,NULL),(571,37,29,2,NULL),(572,17,14,2,NULL),(573,90,17,2,NULL),(574,38,29,2,NULL),(575,18,14,2,NULL),(576,111,17,2,NULL),(577,68,20,2,NULL),(578,19,14,2,NULL),(579,113,17,2,NULL),(580,29,29,2,NULL),(581,22,5,2,NULL),(582,114,17,2,NULL),(583,30,29,2,NULL),(584,23,5,2,NULL),(585,115,17,2,NULL),(586,31,29,2,NULL),(587,37,5,2,NULL),(588,138,17,2,NULL),(589,39,29,2,NULL),(590,38,5,2,NULL),(591,140,17,2,NULL),(592,40,29,2,NULL),(593,12,20,2,NULL),(594,141,17,2,NULL),(595,41,29,2,NULL),(596,13,20,2,NULL),(597,142,17,2,NULL),(598,44,29,2,NULL),(599,14,20,2,NULL),(600,70,17,2,NULL),(601,45,29,2,NULL),(602,15,20,2,NULL),(603,72,17,2,NULL),(604,46,29,2,NULL),(605,16,20,2,NULL),(606,91,17,2,NULL),(607,47,29,2,NULL),(608,17,20,2,NULL),(609,92,17,2,NULL),(610,48,29,2,NULL),(611,18,20,2,NULL),(612,95,17,2,NULL),(613,49,29,2,NULL),(614,19,20,2,NULL),(615,96,17,2,NULL),(616,50,29,2,NULL),(617,29,5,2,NULL),(618,128,17,2,NULL),(619,51,29,2,NULL),(620,30,5,2,NULL),(621,52,29,2,NULL),(622,186,17,2,NULL),(623,31,5,2,NULL),(624,187,17,2,NULL),(625,68,26,2,NULL),(626,39,5,2,NULL),(627,156,17,2,NULL),(628,68,28,2,NULL),(629,40,5,2,NULL),(630,157,17,2,NULL),(631,73,29,2,NULL),(632,41,5,2,NULL),(633,164,17,2,NULL),(634,74,29,2,NULL),(635,44,5,2,NULL),(636,165,17,2,NULL),(637,75,29,2,NULL),(638,45,5,2,NULL),(639,166,17,2,NULL),(640,46,5,2,NULL),(641,76,29,2,NULL),(642,167,17,2,NULL),(643,47,5,2,NULL),(644,77,29,2,NULL),(645,161,17,2,NULL),(646,48,5,2,NULL),(647,78,29,2,NULL),(648,162,17,2,NULL),(649,79,29,2,NULL),(650,163,17,2,NULL),(651,49,5,2,NULL),(652,80,29,2,NULL),(653,148,17,2,NULL),(654,50,5,2,NULL),(655,83,29,2,NULL),(656,24,13,2,NULL),(657,51,5,2,NULL),(658,84,29,2,NULL),(659,27,13,2,NULL),(660,52,5,2,NULL),(661,85,29,2,NULL),(662,28,13,2,NULL),(663,12,26,2,NULL),(664,86,29,2,NULL),(665,69,13,2,NULL),(666,13,26,2,NULL),(667,87,29,2,NULL),(668,22,1,2,NULL),(669,14,26,2,NULL),(670,88,29,2,NULL),(671,23,1,2,NULL),(672,15,26,2,NULL),(673,89,29,2,NULL),(674,37,1,2,NULL),(675,16,26,2,NULL),(676,90,29,2,NULL),(677,38,1,2,NULL),(678,17,26,2,NULL),(679,111,29,2,NULL),(680,22,4,2,NULL),(681,18,26,2,NULL),(682,113,29,2,NULL),(683,23,4,2,NULL),(684,19,26,2,NULL),(685,114,29,2,NULL),(686,37,4,2,NULL),(687,12,28,2,NULL),(688,115,29,2,NULL),(689,38,4,2,NULL),(690,13,28,2,NULL),(691,138,29,2,NULL),(692,14,28,2,NULL),(693,22,7,2,NULL),(694,140,29,2,NULL),(695,23,7,2,NULL),(696,15,28,2,NULL),(697,141,29,2,NULL),(698,37,7,2,NULL),(699,16,28,2,NULL),(700,142,29,2,NULL),(701,38,7,2,NULL),(702,17,28,2,NULL),(703,70,29,2,NULL),(704,22,8,2,NULL),(705,18,28,2,NULL),(706,72,29,2,NULL),(707,23,8,2,NULL),(708,19,28,2,NULL),(709,68,34,2,NULL),(710,37,8,2,NULL),(711,73,5,2,NULL),(712,68,37,2,NULL),(713,38,8,2,NULL),(714,74,5,2,NULL),(715,68,38,2,NULL),(716,22,14,2,NULL),(717,75,5,2,NULL),(718,91,29,2,NULL),(719,23,14,2,NULL),(720,76,5,2,NULL),(721,92,29,2,NULL),(722,37,14,2,NULL),(723,77,5,2,NULL),(724,68,39,2,NULL),(725,38,14,2,NULL),(726,78,5,2,NULL),(727,95,29,2,NULL),(728,79,5,2,NULL),(729,22,20,2,NULL),(730,96,29,2,NULL),(731,23,20,2,NULL),(732,80,5,2,NULL),(733,128,29,2,NULL),(734,37,20,2,NULL),(735,83,5,2,NULL),(736,68,41,2,NULL),(737,38,20,2,NULL),(738,84,5,2,NULL),(739,68,42,2,NULL),(740,22,26,2,NULL),(741,85,5,2,NULL),(742,68,43,2,NULL),(743,23,26,2,NULL),(744,86,5,2,NULL),(745,68,87,2,NULL),(746,37,26,2,NULL),(747,87,5,2,NULL),(748,68,88,2,NULL),(749,38,26,2,NULL),(750,88,5,2,NULL),(751,68,89,2,NULL),(752,22,28,2,NULL),(753,89,5,2,NULL),(754,68,90,2,NULL),(755,23,28,2,NULL),(756,90,5,2,NULL),(757,68,101,2,NULL),(758,37,28,2,NULL),(759,111,5,2,NULL),(760,68,44,2,NULL),(761,38,28,2,NULL),(762,113,5,2,NULL),(763,68,78,2,NULL),(764,114,5,2,NULL),(765,22,34,2,NULL),(766,68,80,2,NULL),(767,23,34,2,NULL),(768,115,5,2,NULL),(769,68,81,2,NULL),(770,37,34,2,NULL),(771,138,5,2,NULL),(772,68,82,2,NULL),(773,38,34,2,NULL),(774,140,5,2,NULL),(775,68,85,2,NULL),(776,22,37,2,NULL),(777,141,5,2,NULL),(778,68,86,2,NULL),(779,23,37,2,NULL),(780,142,5,2,NULL),(781,68,91,2,NULL),(782,37,37,2,NULL),(783,70,5,2,NULL),(784,68,92,2,NULL),(785,38,37,2,NULL),(786,68,94,2,NULL),(787,72,5,2,NULL),(788,22,38,2,NULL),(789,186,29,2,NULL),(790,12,34,2,NULL),(791,23,38,2,NULL),(792,13,34,2,NULL),(793,187,29,2,NULL),(794,37,38,2,NULL),(795,68,95,2,NULL),(796,14,34,2,NULL),(797,38,38,2,NULL),(798,156,29,2,NULL),(799,15,34,2,NULL),(800,22,39,2,NULL),(801,16,34,2,NULL),(802,157,29,2,NULL),(803,23,39,2,NULL),(804,17,34,2,NULL),(805,68,96,2,NULL),(806,37,39,2,NULL),(807,18,34,2,NULL),(808,164,29,2,NULL),(809,38,39,2,NULL),(810,165,29,2,NULL),(811,19,34,2,NULL),(812,22,41,2,NULL),(813,12,37,2,NULL),(814,166,29,2,NULL),(815,23,41,2,NULL),(816,13,37,2,NULL),(817,167,29,2,NULL),(818,37,41,2,NULL),(819,14,37,2,NULL),(820,161,29,2,NULL),(821,38,41,2,NULL),(822,15,37,2,NULL),(823,162,29,2,NULL),(824,22,42,2,NULL),(825,16,37,2,NULL),(826,163,29,2,NULL),(827,23,42,2,NULL),(828,17,37,2,NULL),(829,148,29,2,NULL),(830,37,42,2,NULL),(831,18,37,2,NULL),(832,68,99,2,NULL),(833,38,42,2,NULL),(834,68,100,2,NULL),(835,19,37,2,NULL),(836,22,43,2,NULL),(837,12,38,2,NULL),(838,68,102,2,NULL),(839,23,43,2,NULL),(840,13,38,2,NULL),(841,68,103,2,NULL),(842,37,43,2,NULL),(843,14,38,2,NULL),(844,61,31,2,NULL),(845,38,43,2,NULL),(846,15,38,2,NULL),(847,73,1,2,NULL),(848,22,87,2,NULL),(849,16,38,2,NULL),(850,74,1,2,NULL),(851,23,87,2,NULL),(852,17,38,2,NULL),(853,75,1,2,NULL),(854,37,87,2,NULL),(855,76,1,2,NULL),(856,18,38,2,NULL),(857,38,87,2,NULL),(858,19,38,2,NULL),(859,77,1,2,NULL),(860,22,88,2,NULL),(861,78,1,2,NULL),(862,91,5,2,NULL),(863,23,88,2,NULL),(864,92,5,2,NULL),(865,79,1,2,NULL),(866,37,88,2,NULL),(867,12,39,2,NULL),(868,80,1,2,NULL),(869,38,88,2,NULL),(870,13,39,2,NULL),(871,83,1,2,NULL),(872,22,89,2,NULL),(873,14,39,2,NULL),(874,84,1,2,NULL),(875,23,89,2,NULL),(876,85,1,2,NULL),(877,15,39,2,NULL),(878,37,89,2,NULL),(879,16,39,2,NULL),(880,86,1,2,NULL),(881,38,89,2,NULL),(882,17,39,2,NULL),(883,87,1,2,NULL),(884,22,90,2,NULL),(885,18,39,2,NULL),(886,88,1,2,NULL),(887,23,90,2,NULL),(888,19,39,2,NULL),(889,89,1,2,NULL),(890,37,90,2,NULL),(891,95,5,2,NULL),(892,90,1,2,NULL),(893,38,90,2,NULL),(894,96,5,2,NULL),(895,111,1,2,NULL),(896,22,101,2,NULL),(897,128,5,2,NULL),(898,113,1,2,NULL),(899,23,101,2,NULL),(900,12,41,2,NULL),(901,114,1,2,NULL),(902,37,101,2,NULL),(903,13,41,2,NULL),(904,115,1,2,NULL),(905,38,101,2,NULL),(906,14,41,2,NULL),(907,138,1,2,NULL),(908,22,44,2,NULL),(909,15,41,2,NULL),(910,140,1,2,NULL),(911,23,44,2,NULL),(912,16,41,2,NULL),(913,37,44,2,NULL),(914,141,1,2,NULL),(915,17,41,2,NULL),(916,38,44,2,NULL),(917,142,1,2,NULL),(918,18,41,2,NULL),(919,22,78,2,NULL),(920,73,4,2,NULL),(921,19,41,2,NULL),(922,23,78,2,NULL),(923,74,4,2,NULL),(924,12,42,2,NULL),(925,37,78,2,NULL),(926,75,4,2,NULL),(927,13,42,2,NULL),(928,38,78,2,NULL),(929,76,4,2,NULL),(930,14,42,2,NULL),(931,22,80,2,NULL),(932,77,4,2,NULL),(933,15,42,2,NULL),(934,23,80,2,NULL),(935,78,4,2,NULL),(936,16,42,2,NULL),(937,37,80,2,NULL),(938,79,4,2,NULL),(939,17,42,2,NULL),(940,38,80,2,NULL),(941,80,4,2,NULL),(942,18,42,2,NULL),(943,22,81,2,NULL),(944,83,4,2,NULL),(945,19,42,2,NULL),(946,23,81,2,NULL),(947,84,4,2,NULL),(948,12,43,2,NULL),(949,37,81,2,NULL),(950,85,4,2,NULL),(951,13,43,2,NULL),(952,38,81,2,NULL),(953,86,4,2,NULL),(954,14,43,2,NULL),(955,22,82,2,NULL),(956,87,4,2,NULL),(957,15,43,2,NULL),(958,23,82,2,NULL),(959,88,4,2,NULL),(960,16,43,2,NULL),(961,37,82,2,NULL),(962,89,4,2,NULL),(963,17,43,2,NULL),(964,38,82,2,NULL),(965,90,4,2,NULL),(966,18,43,2,NULL),(967,22,85,2,NULL),(968,111,4,2,NULL),(969,19,43,2,NULL),(970,23,85,2,NULL),(971,113,4,2,NULL),(972,12,87,2,NULL),(973,37,85,2,NULL),(974,114,4,2,NULL),(975,13,87,2,NULL),(976,38,85,2,NULL),(977,115,4,2,NULL),(978,14,87,2,NULL),(979,22,86,2,NULL),(980,138,4,2,NULL),(981,15,87,2,NULL),(982,23,86,2,NULL),(983,140,4,2,NULL),(984,16,87,2,NULL),(985,37,86,2,NULL),(986,141,4,2,NULL),(987,17,87,2,NULL),(988,38,86,2,NULL),(989,142,4,2,NULL),(990,18,87,2,NULL),(991,22,91,2,NULL),(992,73,7,2,NULL),(993,19,87,2,NULL),(994,74,7,2,NULL),(995,23,91,2,NULL),(996,12,88,2,NULL),(997,37,91,2,NULL),(998,75,7,2,NULL),(999,13,88,2,NULL),(1000,38,91,2,NULL),(1001,76,7,2,NULL),(1002,14,88,2,NULL),(1003,22,92,2,NULL),(1004,77,7,2,NULL),(1005,15,88,2,NULL),(1006,78,7,2,NULL),(1007,23,92,2,NULL),(1008,16,88,2,NULL),(1009,79,7,2,NULL),(1010,37,92,2,NULL),(1011,17,88,2,NULL),(1012,80,7,2,NULL),(1013,38,92,2,NULL),(1014,18,88,2,NULL),(1015,83,7,2,NULL),(1016,22,94,2,NULL),(1017,19,88,2,NULL),(1018,23,94,2,NULL),(1019,84,7,2,NULL),(1020,12,89,2,NULL),(1021,85,7,2,NULL),(1022,37,94,2,NULL),(1023,13,89,2,NULL),(1024,38,94,2,NULL),(1025,86,7,2,NULL),(1026,14,89,2,NULL),(1027,22,95,2,NULL),(1028,87,7,2,NULL),(1029,15,89,2,NULL),(1030,23,95,2,NULL),(1031,88,7,2,NULL),(1032,16,89,2,NULL),(1033,37,95,2,NULL),(1034,89,7,2,NULL),(1035,17,89,2,NULL),(1036,38,95,2,NULL),(1037,90,7,2,NULL),(1038,18,89,2,NULL),(1039,111,7,2,NULL),(1040,22,96,2,NULL),(1041,19,89,2,NULL),(1042,113,7,2,NULL),(1043,23,96,2,NULL),(1044,12,90,2,NULL),(1045,37,96,2,NULL),(1046,114,7,2,NULL),(1047,13,90,2,NULL),(1048,38,96,2,NULL),(1049,115,7,2,NULL),(1050,14,90,2,NULL),(1051,138,7,2,NULL),(1052,22,99,2,NULL),(1053,15,90,2,NULL),(1054,140,7,2,NULL),(1055,23,99,2,NULL),(1056,16,90,2,NULL),(1057,37,99,2,NULL),(1058,141,7,2,NULL),(1059,17,90,2,NULL),(1060,142,7,2,NULL),(1061,38,99,2,NULL),(1062,18,90,2,NULL),(1063,73,8,2,NULL),(1064,22,100,2,NULL),(1065,19,90,2,NULL),(1066,23,100,2,NULL),(1067,74,8,2,NULL),(1068,12,101,2,NULL),(1069,75,8,2,NULL),(1070,37,100,2,NULL),(1071,13,101,2,NULL),(1072,38,100,2,NULL),(1073,76,8,2,NULL),(1074,14,101,2,NULL),(1075,22,102,2,NULL),(1076,77,8,2,NULL),(1077,15,101,2,NULL),(1078,23,102,2,NULL),(1079,78,8,2,NULL),(1080,16,101,2,NULL),(1081,37,102,2,NULL),(1082,79,8,2,NULL),(1083,17,101,2,NULL),(1084,38,102,2,NULL),(1085,80,8,2,NULL),(1086,18,101,2,NULL),(1087,22,103,2,NULL),(1088,83,8,2,NULL),(1089,19,101,2,NULL),(1090,23,103,2,NULL),(1091,84,8,2,NULL),(1092,12,44,2,NULL),(1093,37,103,2,NULL),(1094,13,44,2,NULL),(1095,85,8,2,NULL),(1096,38,103,2,NULL),(1097,86,8,2,NULL),(1098,14,44,2,NULL),(1099,29,20,2,NULL),(1100,15,44,2,NULL),(1101,87,8,2,NULL),(1102,30,20,2,NULL),(1103,88,8,2,NULL),(1104,16,44,2,NULL),(1105,31,20,2,NULL),(1106,89,8,2,NULL),(1107,17,44,2,NULL),(1108,39,20,2,NULL),(1109,18,44,2,NULL),(1110,90,8,2,NULL),(1111,40,20,2,NULL),(1112,19,44,2,NULL),(1113,111,8,2,NULL),(1114,41,20,2,NULL),(1115,12,78,2,NULL),(1116,113,8,2,NULL),(1117,44,20,2,NULL),(1118,114,8,2,NULL),(1119,13,78,2,NULL),(1120,45,20,2,NULL),(1121,115,8,2,NULL),(1122,14,78,2,NULL),(1123,46,20,2,NULL),(1124,138,8,2,NULL),(1125,15,78,2,NULL),(1126,47,20,2,NULL),(1127,140,8,2,NULL),(1128,16,78,2,NULL),(1129,48,20,2,NULL),(1130,141,8,2,NULL),(1131,17,78,2,NULL),(1132,49,20,2,NULL),(1133,142,8,2,NULL),(1134,18,78,2,NULL),(1135,50,20,2,NULL),(1136,73,14,2,NULL),(1137,19,78,2,NULL),(1138,51,20,2,NULL),(1139,74,14,2,NULL),(1140,12,80,2,NULL),(1141,52,20,2,NULL),(1142,75,14,2,NULL),(1143,13,80,2,NULL),(1144,73,20,2,NULL),(1145,76,14,2,NULL),(1146,14,80,2,NULL),(1147,74,20,2,NULL),(1148,77,14,2,NULL),(1149,15,80,2,NULL),(1150,75,20,2,NULL),(1151,78,14,2,NULL),(1152,16,80,2,NULL),(1153,76,20,2,NULL),(1154,79,14,2,NULL),(1155,17,80,2,NULL),(1156,77,20,2,NULL),(1157,80,14,2,NULL),(1158,18,80,2,NULL),(1159,78,20,2,NULL),(1160,83,14,2,NULL),(1161,19,80,2,NULL),(1162,79,20,2,NULL),(1163,84,14,2,NULL),(1164,12,81,2,NULL),(1165,80,20,2,NULL),(1166,85,14,2,NULL),(1167,13,81,2,NULL),(1168,83,20,2,NULL),(1169,86,14,2,NULL),(1170,14,81,2,NULL),(1171,84,20,2,NULL),(1172,15,81,2,NULL),(1173,87,14,2,NULL),(1174,85,20,2,NULL),(1175,88,14,2,NULL),(1176,16,81,2,NULL),(1177,86,20,2,NULL),(1178,89,14,2,NULL),(1179,17,81,2,NULL),(1180,87,20,2,NULL),(1181,18,81,2,NULL),(1182,90,14,2,NULL),(1183,88,20,2,NULL),(1184,19,81,2,NULL),(1185,111,14,2,NULL),(1186,89,20,2,NULL),(1187,113,14,2,NULL),(1188,12,82,2,NULL),(1189,90,20,2,NULL),(1190,13,82,2,NULL),(1191,114,14,2,NULL),(1192,111,20,2,NULL),(1193,14,82,2,NULL),(1194,115,14,2,NULL),(1195,113,20,2,NULL),(1196,15,82,2,NULL),(1197,138,14,2,NULL),(1198,114,20,2,NULL),(1199,16,82,2,NULL),(1200,140,14,2,NULL),(1201,115,20,2,NULL),(1202,141,14,2,NULL),(1203,17,82,2,NULL),(1204,138,20,2,NULL),(1205,142,14,2,NULL),(1206,18,82,2,NULL),(1207,140,20,2,NULL),(1208,19,82,2,NULL),(1209,141,20,2,NULL),(1210,12,85,2,NULL),(1211,142,20,2,NULL),(1212,70,20,2,NULL),(1213,13,85,2,NULL),(1214,73,26,2,NULL),(1215,72,20,2,NULL),(1216,14,85,2,NULL),(1217,74,26,2,NULL),(1218,91,20,2,NULL),(1219,15,85,2,NULL),(1220,75,26,2,NULL),(1221,92,20,2,NULL),(1222,16,85,2,NULL),(1223,76,26,2,NULL),(1224,95,20,2,NULL),(1225,17,85,2,NULL),(1226,77,26,2,NULL),(1227,96,20,2,NULL),(1228,18,85,2,NULL),(1229,78,26,2,NULL),(1230,128,20,2,NULL),(1231,79,26,2,NULL),(1232,19,85,2,NULL),(1233,186,20,2,NULL),(1234,80,26,2,NULL),(1235,12,86,2,NULL),(1236,187,20,2,NULL),(1237,13,86,2,NULL),(1238,83,26,2,NULL),(1239,156,20,2,NULL),(1240,14,86,2,NULL),(1241,84,26,2,NULL),(1242,157,20,2,NULL),(1243,85,26,2,NULL),(1244,15,86,2,NULL),(1245,164,20,2,NULL),(1246,86,26,2,NULL),(1247,16,86,2,NULL),(1248,165,20,2,NULL),(1249,87,26,2,NULL),(1250,17,86,2,NULL),(1251,166,20,2,NULL),(1252,88,26,2,NULL),(1253,18,86,2,NULL),(1254,167,20,2,NULL),(1255,89,26,2,NULL),(1256,19,86,2,NULL),(1257,161,20,2,NULL),(1258,12,91,2,NULL),(1259,90,26,2,NULL),(1260,162,20,2,NULL),(1261,111,26,2,NULL),(1262,13,91,2,NULL),(1263,163,20,2,NULL),(1264,113,26,2,NULL),(1265,14,91,2,NULL),(1266,148,20,2,NULL),(1267,114,26,2,NULL),(1268,15,91,2,NULL),(1269,29,1,2,NULL),(1270,16,91,2,NULL),(1271,115,26,2,NULL),(1272,30,1,2,NULL),(1273,17,91,2,NULL),(1274,138,26,2,NULL),(1275,31,1,2,NULL),(1276,18,91,2,NULL),(1277,29,4,2,NULL),(1278,140,26,2,NULL),(1279,19,91,2,NULL),(1280,30,4,2,NULL),(1281,141,26,2,NULL),(1282,12,92,2,NULL),(1283,142,26,2,NULL),(1284,31,4,2,NULL),(1285,13,92,2,NULL),(1286,73,28,2,NULL),(1287,29,7,2,NULL),(1288,14,92,2,NULL),(1289,30,7,2,NULL),(1290,74,28,2,NULL),(1291,15,92,2,NULL),(1292,75,28,2,NULL),(1293,31,7,2,NULL),(1294,16,92,2,NULL),(1295,29,8,2,NULL),(1296,76,28,2,NULL),(1297,17,92,2,NULL),(1298,30,8,2,NULL),(1299,77,28,2,NULL),(1300,18,92,2,NULL),(1301,31,8,2,NULL),(1302,78,28,2,NULL),(1303,19,92,2,NULL),(1304,79,28,2,NULL),(1305,29,14,2,NULL),(1306,12,94,2,NULL),(1307,80,28,2,NULL),(1308,30,14,2,NULL),(1309,13,94,2,NULL),(1310,31,14,2,NULL),(1311,83,28,2,NULL),(1312,14,94,2,NULL),(1313,84,28,2,NULL),(1314,29,26,2,NULL),(1315,15,94,2,NULL),(1316,30,26,2,NULL),(1317,85,28,2,NULL),(1318,16,94,2,NULL),(1319,31,26,2,NULL),(1320,86,28,2,NULL),(1321,17,94,2,NULL),(1322,29,28,2,NULL),(1323,87,28,2,NULL),(1324,18,94,2,NULL),(1325,88,28,2,NULL),(1326,30,28,2,NULL),(1327,19,94,2,NULL),(1328,31,28,2,NULL),(1329,89,28,2,NULL),(1330,186,5,2,NULL),(1331,90,28,2,NULL),(1332,29,34,2,NULL),(1333,187,5,2,NULL),(1334,30,34,2,NULL),(1335,111,28,2,NULL),(1336,12,95,2,NULL),(1337,31,34,2,NULL),(1338,113,28,2,NULL),(1339,13,95,2,NULL),(1340,29,37,2,NULL),(1341,114,28,2,NULL),(1342,14,95,2,NULL),(1343,30,37,2,NULL),(1344,115,28,2,NULL),(1345,15,95,2,NULL),(1346,138,28,2,NULL),(1347,31,37,2,NULL),(1348,16,95,2,NULL),(1349,29,38,2,NULL),(1350,140,28,2,NULL),(1351,17,95,2,NULL),(1352,30,38,2,NULL),(1353,141,28,2,NULL),(1354,18,95,2,NULL),(1355,31,38,2,NULL),(1356,142,28,2,NULL),(1357,19,95,2,NULL),(1358,29,39,2,NULL),(1359,73,34,2,NULL),(1360,156,5,2,NULL),(1361,30,39,2,NULL),(1362,74,34,2,NULL),(1363,157,5,2,NULL),(1364,31,39,2,NULL),(1365,75,34,2,NULL),(1366,12,96,2,NULL),(1367,29,41,2,NULL),(1368,76,34,2,NULL),(1369,13,96,2,NULL),(1370,30,41,2,NULL),(1371,14,96,2,NULL),(1372,77,34,2,NULL),(1373,31,41,2,NULL),(1374,78,34,2,NULL),(1375,15,96,2,NULL),(1376,29,42,2,NULL),(1377,79,34,2,NULL),(1378,16,96,2,NULL),(1379,30,42,2,NULL),(1380,80,34,2,NULL),(1381,17,96,2,NULL),(1382,31,42,2,NULL),(1383,83,34,2,NULL),(1384,18,96,2,NULL),(1385,29,43,2,NULL),(1386,84,34,2,NULL),(1387,19,96,2,NULL),(1388,30,43,2,NULL),(1389,85,34,2,NULL),(1390,164,5,2,NULL),(1391,31,43,2,NULL),(1392,165,5,2,NULL),(1393,86,34,2,NULL),(1394,29,87,2,NULL),(1395,87,34,2,NULL),(1396,166,5,2,NULL),(1397,30,87,2,NULL),(1398,88,34,2,NULL),(1399,167,5,2,NULL),(1400,31,87,2,NULL),(1401,89,34,2,NULL),(1402,29,88,2,NULL),(1403,161,5,2,NULL),(1404,90,34,2,NULL),(1405,30,88,2,NULL),(1406,162,5,2,NULL),(1407,111,34,2,NULL),(1408,31,88,2,NULL),(1409,163,5,2,NULL),(1410,113,34,2,NULL),(1411,29,89,2,NULL),(1412,148,5,2,NULL),(1413,114,34,2,NULL),(1414,30,89,2,NULL),(1415,115,34,2,NULL),(1416,12,99,2,NULL),(1417,31,89,2,NULL),(1418,138,34,2,NULL),(1419,13,99,2,NULL),(1420,29,90,2,NULL),(1421,140,34,2,NULL),(1422,14,99,2,NULL),(1423,30,90,2,NULL),(1424,141,34,2,NULL),(1425,15,99,2,NULL),(1426,31,90,2,NULL),(1427,142,34,2,NULL),(1428,16,99,2,NULL),(1429,29,101,2,NULL),(1430,17,99,2,NULL),(1431,73,37,2,NULL),(1432,30,101,2,NULL),(1433,18,99,2,NULL),(1434,74,37,2,NULL),(1435,31,101,2,NULL),(1436,75,37,2,NULL),(1437,19,99,2,NULL),(1438,29,44,2,NULL),(1439,12,100,2,NULL),(1440,76,37,2,NULL),(1441,30,44,2,NULL),(1442,13,100,2,NULL),(1443,77,37,2,NULL),(1444,31,44,2,NULL),(1445,14,100,2,NULL),(1446,78,37,2,NULL),(1447,29,78,2,NULL),(1448,79,37,2,NULL),(1449,15,100,2,NULL),(1450,30,78,2,NULL),(1451,80,37,2,NULL),(1452,16,100,2,NULL),(1453,31,78,2,NULL),(1454,83,37,2,NULL),(1455,17,100,2,NULL),(1456,29,80,2,NULL),(1457,84,37,2,NULL),(1458,18,100,2,NULL),(1459,30,80,2,NULL),(1460,85,37,2,NULL),(1461,19,100,2,NULL),(1462,31,80,2,NULL),(1463,86,37,2,NULL),(1464,12,102,2,NULL),(1465,29,81,2,NULL),(1466,87,37,2,NULL),(1467,13,102,2,NULL),(1468,30,81,2,NULL),(1469,14,102,2,NULL),(1470,88,37,2,NULL),(1471,31,81,2,NULL),(1472,15,102,2,NULL),(1473,89,37,2,NULL),(1474,29,82,2,NULL),(1475,16,102,2,NULL),(1476,90,37,2,NULL),(1477,30,82,2,NULL),(1478,111,37,2,NULL),(1479,17,102,2,NULL),(1480,31,82,2,NULL),(1481,113,37,2,NULL),(1482,18,102,2,NULL),(1483,29,85,2,NULL),(1484,19,102,2,NULL),(1485,114,37,2,NULL),(1486,30,85,2,NULL),(1487,115,37,2,NULL),(1488,12,103,2,NULL),(1489,31,85,2,NULL),(1490,138,37,2,NULL),(1491,13,103,2,NULL),(1492,29,86,2,NULL),(1493,14,103,2,NULL),(1494,140,37,2,NULL),(1495,30,86,2,NULL),(1496,15,103,2,NULL),(1497,141,37,2,NULL),(1498,31,86,2,NULL),(1499,142,37,2,NULL),(1500,16,103,2,NULL),(1501,29,91,2,NULL),(1502,17,103,2,NULL),(1503,73,38,2,NULL),(1504,30,91,2,NULL),(1505,18,103,2,NULL),(1506,74,38,2,NULL),(1507,31,91,2,NULL),(1508,19,103,2,NULL),(1509,75,38,2,NULL),(1510,29,92,2,NULL),(1511,76,38,2,NULL),(1512,11,5,2,NULL),(1513,30,92,2,NULL),(1514,77,38,2,NULL),(1515,39,7,2,NULL),(1516,31,92,2,NULL),(1517,78,38,2,NULL),(1518,29,94,2,NULL),(1519,40,7,2,NULL),(1520,79,38,2,NULL),(1521,30,94,2,NULL),(1522,41,7,2,NULL),(1523,80,38,2,NULL),(1524,31,94,2,NULL),(1525,83,38,2,NULL),(1526,44,7,2,NULL),(1527,29,95,2,NULL),(1528,45,7,2,NULL),(1529,84,38,2,NULL),(1530,30,95,2,NULL),(1531,46,7,2,NULL),(1532,31,95,2,NULL),(1533,85,38,2,NULL),(1534,47,7,2,NULL),(1535,29,96,2,NULL),(1536,86,38,2,NULL),(1537,48,7,2,NULL),(1538,30,96,2,NULL),(1539,87,38,2,NULL),(1540,49,7,2,NULL),(1541,31,96,2,NULL),(1542,88,38,2,NULL),(1543,50,7,2,NULL),(1544,29,99,2,NULL),(1545,89,38,2,NULL),(1546,51,7,2,NULL),(1547,30,99,2,NULL),(1548,90,38,2,NULL),(1549,52,7,2,NULL),(1550,31,99,2,NULL),(1551,111,38,2,NULL),(1552,70,7,2,NULL),(1553,29,100,2,NULL),(1554,113,38,2,NULL),(1555,72,7,2,NULL),(1556,30,100,2,NULL),(1557,114,38,2,NULL),(1558,91,7,2,NULL),(1559,31,100,2,NULL),(1560,115,38,2,NULL),(1561,92,7,2,NULL),(1562,29,102,2,NULL),(1563,138,38,2,NULL),(1564,95,7,2,NULL),(1565,30,102,2,NULL),(1566,140,38,2,NULL),(1567,96,7,2,NULL),(1568,31,102,2,NULL),(1569,141,38,2,NULL),(1570,128,7,2,NULL),(1571,29,103,2,NULL),(1572,142,38,2,NULL),(1573,186,7,2,NULL),(1574,30,103,2,NULL),(1575,73,39,2,NULL),(1576,187,7,2,NULL),(1577,31,103,2,NULL),(1578,74,39,2,NULL),(1579,156,7,2,NULL),(1580,39,1,2,NULL),(1581,75,39,2,NULL),(1582,157,7,2,NULL),(1583,40,1,2,NULL),(1584,76,39,2,NULL),(1585,164,7,2,NULL),(1586,41,1,2,NULL),(1587,77,39,2,NULL),(1588,165,7,2,NULL),(1589,39,4,2,NULL),(1590,78,39,2,NULL),(1591,166,7,2,NULL),(1592,40,4,2,NULL),(1593,79,39,2,NULL),(1594,167,7,2,NULL),(1595,41,4,2,NULL),(1596,80,39,2,NULL),(1597,161,7,2,NULL),(1598,83,39,2,NULL),(1599,39,8,2,NULL),(1600,162,7,2,NULL),(1601,40,8,2,NULL),(1602,84,39,2,NULL),(1603,163,7,2,NULL),(1604,41,8,2,NULL),(1605,85,39,2,NULL),(1606,148,7,2,NULL),(1607,39,14,2,NULL),(1608,86,39,2,NULL),(1609,40,14,2,NULL),(1610,87,39,2,NULL),(1611,41,14,2,NULL),(1612,88,39,2,NULL),(1613,39,26,2,NULL),(1614,89,39,2,NULL),(1615,40,26,2,NULL),(1616,90,39,2,NULL),(1617,41,26,2,NULL),(1618,111,39,2,NULL),(1619,39,28,2,NULL),(1620,113,39,2,NULL),(1621,40,28,2,NULL),(1622,114,39,2,NULL),(1623,41,28,2,NULL),(1624,115,39,2,NULL),(1625,39,34,2,NULL),(1626,138,39,2,NULL),(1627,40,34,2,NULL),(1628,140,39,2,NULL),(1629,41,34,2,NULL),(1630,141,39,2,NULL),(1631,39,37,2,NULL),(1632,142,39,2,NULL),(1633,40,37,2,NULL),(1634,73,41,2,NULL),(1635,41,37,2,NULL),(1636,74,41,2,NULL),(1637,39,38,2,NULL),(1638,75,41,2,NULL),(1639,40,38,2,NULL),(1640,76,41,2,NULL),(1641,41,38,2,NULL),(1642,77,41,2,NULL),(1643,39,39,2,NULL),(1644,78,41,2,NULL),(1645,40,39,2,NULL),(1646,79,41,2,NULL),(1647,41,39,2,NULL),(1648,80,41,2,NULL),(1649,39,41,2,NULL),(1650,83,41,2,NULL),(1651,40,41,2,NULL),(1652,84,41,2,NULL),(1653,41,41,2,NULL),(1654,85,41,2,NULL),(1655,39,42,2,NULL),(1656,86,41,2,NULL),(1657,40,42,2,NULL),(1658,87,41,2,NULL),(1659,41,42,2,NULL),(1660,88,41,2,NULL),(1661,39,43,2,NULL),(1662,89,41,2,NULL),(1663,40,43,2,NULL),(1664,90,41,2,NULL),(1665,41,43,2,NULL),(1666,111,41,2,NULL),(1667,39,87,2,NULL),(1668,113,41,2,NULL),(1669,40,87,2,NULL),(1670,114,41,2,NULL),(1671,41,87,2,NULL),(1672,115,41,2,NULL),(1673,39,88,2,NULL),(1674,138,41,2,NULL),(1675,40,88,2,NULL),(1676,140,41,2,NULL),(1677,41,88,2,NULL),(1678,141,41,2,NULL),(1679,39,89,2,NULL),(1680,142,41,2,NULL),(1681,40,89,2,NULL),(1682,73,42,2,NULL),(1683,41,89,2,NULL),(1684,74,42,2,NULL),(1685,39,90,2,NULL),(1686,75,42,2,NULL),(1687,40,90,2,NULL),(1688,76,42,2,NULL),(1689,41,90,2,NULL),(1690,77,42,2,NULL),(1691,78,42,2,NULL),(1692,39,101,2,NULL),(1693,79,42,2,NULL),(1694,40,101,2,NULL),(1695,80,42,2,NULL),(1696,41,101,2,NULL),(1697,83,42,2,NULL),(1698,39,44,2,NULL),(1699,84,42,2,NULL),(1700,40,44,2,NULL),(1701,85,42,2,NULL),(1702,41,44,2,NULL),(1703,86,42,2,NULL),(1704,39,78,2,NULL),(1705,40,78,2,NULL),(1706,87,42,2,NULL),(1707,41,78,2,NULL),(1708,88,42,2,NULL),(1709,39,80,2,NULL),(1710,89,42,2,NULL),(1711,40,80,2,NULL),(1712,90,42,2,NULL),(1713,41,80,2,NULL),(1714,111,42,2,NULL),(1715,39,81,2,NULL),(1716,113,42,2,NULL),(1717,40,81,2,NULL),(1718,114,42,2,NULL),(1719,41,81,2,NULL),(1720,115,42,2,NULL),(1721,39,82,2,NULL),(1722,138,42,2,NULL),(1723,40,82,2,NULL),(1724,140,42,2,NULL),(1725,41,82,2,NULL),(1726,141,42,2,NULL),(1727,39,85,2,NULL),(1728,142,42,2,NULL),(1729,40,85,2,NULL),(1730,73,43,2,NULL),(1731,41,85,2,NULL),(1732,74,43,2,NULL),(1733,39,86,2,NULL),(1734,75,43,2,NULL),(1735,40,86,2,NULL),(1736,76,43,2,NULL),(1737,41,86,2,NULL),(1738,77,43,2,NULL),(1739,39,91,2,NULL),(1740,78,43,2,NULL),(1741,40,91,2,NULL),(1742,79,43,2,NULL),(1743,41,91,2,NULL),(1744,80,43,2,NULL),(1745,39,92,2,NULL),(1746,83,43,2,NULL),(1747,40,92,2,NULL),(1748,84,43,2,NULL),(1749,41,92,2,NULL),(1750,85,43,2,NULL),(1751,39,94,2,NULL),(1752,86,43,2,NULL),(1753,40,94,2,NULL),(1754,87,43,2,NULL),(1755,41,94,2,NULL),(1756,88,43,2,NULL),(1757,39,95,2,NULL),(1758,89,43,2,NULL),(1759,40,95,2,NULL),(1760,90,43,2,NULL),(1761,41,95,2,NULL),(1762,111,43,2,NULL),(1763,39,96,2,NULL),(1764,113,43,2,NULL),(1765,40,96,2,NULL),(1766,114,43,2,NULL),(1767,41,96,2,NULL),(1768,115,43,2,NULL),(1769,39,99,2,NULL),(1770,138,43,2,NULL),(1771,40,99,2,NULL),(1772,140,43,2,NULL),(1773,41,99,2,NULL),(1774,141,43,2,NULL),(1775,39,100,2,NULL),(1776,142,43,2,NULL),(1777,40,100,2,NULL),(1778,73,87,2,NULL),(1779,41,100,2,NULL),(1780,74,87,2,NULL),(1781,39,102,2,NULL),(1782,75,87,2,NULL),(1783,40,102,2,NULL),(1784,76,87,2,NULL),(1785,41,102,2,NULL),(1786,77,87,2,NULL),(1787,39,103,2,NULL),(1788,78,87,2,NULL),(1789,40,103,2,NULL),(1790,79,87,2,NULL),(1791,41,103,2,NULL),(1792,80,87,2,NULL),(1793,44,1,2,NULL),(1794,44,44,2,NULL),(1795,83,87,2,NULL),(1796,45,1,2,NULL),(1797,45,44,2,NULL),(1798,84,87,2,NULL),(1799,46,1,2,NULL),(1800,46,44,2,NULL),(1801,85,87,2,NULL),(1802,47,1,2,NULL),(1803,47,44,2,NULL),(1804,86,87,2,NULL),(1805,48,1,2,NULL),(1806,48,44,2,NULL),(1807,87,87,2,NULL),(1808,49,1,2,NULL),(1809,49,44,2,NULL),(1810,88,87,2,NULL),(1811,50,1,2,NULL),(1812,50,44,2,NULL),(1813,89,87,2,NULL),(1814,51,1,2,NULL),(1815,51,44,2,NULL),(1816,90,87,2,NULL),(1817,52,1,2,NULL),(1818,52,44,2,NULL),(1819,111,87,2,NULL),(1820,44,4,2,NULL),(1821,73,44,2,NULL),(1822,113,87,2,NULL),(1823,45,4,2,NULL),(1824,74,44,2,NULL),(1825,114,87,2,NULL),(1826,46,4,2,NULL),(1827,75,44,2,NULL),(1828,115,87,2,NULL),(1829,47,4,2,NULL),(1830,76,44,2,NULL),(1831,138,87,2,NULL),(1832,48,4,2,NULL),(1833,77,44,2,NULL),(1834,140,87,2,NULL),(1835,49,4,2,NULL),(1836,78,44,2,NULL),(1837,141,87,2,NULL),(1838,50,4,2,NULL),(1839,79,44,2,NULL),(1840,142,87,2,NULL),(1841,51,4,2,NULL),(1842,80,44,2,NULL),(1843,73,88,2,NULL),(1844,52,4,2,NULL),(1845,83,44,2,NULL),(1846,74,88,2,NULL),(1847,84,44,2,NULL),(1848,44,8,2,NULL),(1849,75,88,2,NULL),(1850,45,8,2,NULL),(1851,85,44,2,NULL),(1852,76,88,2,NULL),(1853,46,8,2,NULL),(1854,86,44,2,NULL),(1855,77,88,2,NULL),(1856,47,8,2,NULL),(1857,87,44,2,NULL),(1858,78,88,2,NULL),(1859,48,8,2,NULL),(1860,88,44,2,NULL),(1861,79,88,2,NULL),(1862,49,8,2,NULL),(1863,89,44,2,NULL),(1864,80,88,2,NULL),(1865,50,8,2,NULL),(1866,90,44,2,NULL),(1867,83,88,2,NULL),(1868,51,8,2,NULL),(1869,111,44,2,NULL),(1870,84,88,2,NULL),(1871,52,8,2,NULL),(1872,113,44,2,NULL),(1873,85,88,2,NULL),(1874,44,14,2,NULL),(1875,86,88,2,NULL),(1876,114,44,2,NULL),(1877,45,14,2,NULL),(1878,87,88,2,NULL),(1879,115,44,2,NULL),(1880,46,14,2,NULL),(1881,88,88,2,NULL),(1882,138,44,2,NULL),(1883,47,14,2,NULL),(1884,89,88,2,NULL),(1885,48,14,2,NULL),(1886,90,88,2,NULL),(1887,140,44,2,NULL),(1888,49,14,2,NULL),(1889,111,88,2,NULL),(1890,141,44,2,NULL),(1891,50,14,2,NULL),(1892,113,88,2,NULL),(1893,142,44,2,NULL),(1894,51,14,2,NULL),(1895,114,88,2,NULL),(1896,70,44,2,NULL),(1897,52,14,2,NULL),(1898,115,88,2,NULL),(1899,72,44,2,NULL),(1900,44,26,2,NULL),(1901,138,88,2,NULL),(1902,91,44,2,NULL),(1903,45,26,2,NULL),(1904,140,88,2,NULL),(1905,92,44,2,NULL),(1906,46,26,2,NULL),(1907,141,88,2,NULL),(1908,95,44,2,NULL),(1909,47,26,2,NULL),(1910,142,88,2,NULL),(1911,96,44,2,NULL),(1912,48,26,2,NULL),(1913,73,89,2,NULL),(1914,128,44,2,NULL),(1915,49,26,2,NULL),(1916,74,89,2,NULL),(1917,186,44,2,NULL),(1918,50,26,2,NULL),(1919,75,89,2,NULL),(1920,187,44,2,NULL),(1921,51,26,2,NULL),(1922,156,44,2,NULL),(1923,76,89,2,NULL),(1924,52,26,2,NULL),(1925,77,89,2,NULL),(1926,157,44,2,NULL),(1927,44,28,2,NULL),(1928,78,89,2,NULL),(1929,164,44,2,NULL),(1930,45,28,2,NULL),(1931,79,89,2,NULL),(1932,165,44,2,NULL),(1933,46,28,2,NULL),(1934,80,89,2,NULL),(1935,166,44,2,NULL),(1936,47,28,2,NULL),(1937,83,89,2,NULL),(1938,167,44,2,NULL),(1939,48,28,2,NULL),(1940,84,89,2,NULL),(1941,161,44,2,NULL),(1942,49,28,2,NULL),(1943,85,89,2,NULL),(1944,162,44,2,NULL),(1945,50,28,2,NULL),(1946,86,89,2,NULL),(1947,163,44,2,NULL),(1948,51,28,2,NULL),(1949,87,89,2,NULL),(1950,148,44,2,NULL),(1951,52,28,2,NULL),(1952,88,89,2,NULL),(1953,44,78,2,NULL),(1954,44,34,2,NULL),(1955,89,89,2,NULL),(1956,45,78,2,NULL),(1957,45,34,2,NULL),(1958,90,89,2,NULL),(1959,46,78,2,NULL),(1960,46,34,2,NULL),(1961,111,89,2,NULL),(1962,47,78,2,NULL),(1963,47,34,2,NULL),(1964,113,89,2,NULL),(1965,48,78,2,NULL),(1966,48,34,2,NULL),(1967,114,89,2,NULL),(1968,49,78,2,NULL),(1969,49,34,2,NULL),(1970,115,89,2,NULL),(1971,50,78,2,NULL),(1972,50,34,2,NULL),(1973,138,89,2,NULL),(1974,51,78,2,NULL),(1975,51,34,2,NULL),(1976,140,89,2,NULL),(1977,52,78,2,NULL),(1978,52,34,2,NULL),(1979,141,89,2,NULL),(1980,73,78,2,NULL),(1981,44,37,2,NULL),(1982,142,89,2,NULL),(1983,74,78,2,NULL),(1984,45,37,2,NULL),(1985,73,90,2,NULL),(1986,75,78,2,NULL),(1987,46,37,2,NULL),(1988,74,90,2,NULL),(1989,76,78,2,NULL),(1990,47,37,2,NULL),(1991,75,90,2,NULL),(1992,77,78,2,NULL),(1993,48,37,2,NULL),(1994,78,78,2,NULL),(1995,76,90,2,NULL),(1996,49,37,2,NULL),(1997,77,90,2,NULL),(1998,50,37,2,NULL),(1999,79,78,2,NULL),(2000,78,90,2,NULL),(2001,51,37,2,NULL),(2002,79,90,2,NULL),(2003,80,78,2,NULL),(2004,52,37,2,NULL),(2005,80,90,2,NULL),(2006,83,78,2,NULL),(2007,44,38,2,NULL),(2008,83,90,2,NULL),(2009,84,78,2,NULL),(2010,45,38,2,NULL),(2011,84,90,2,NULL),(2012,85,78,2,NULL),(2013,46,38,2,NULL),(2014,85,90,2,NULL),(2015,86,78,2,NULL),(2016,47,38,2,NULL),(2017,86,90,2,NULL),(2018,87,78,2,NULL),(2019,48,38,2,NULL),(2020,87,90,2,NULL),(2021,88,78,2,NULL),(2022,49,38,2,NULL),(2023,88,90,2,NULL),(2024,89,78,2,NULL),(2025,50,38,2,NULL),(2026,89,90,2,NULL),(2027,90,78,2,NULL),(2028,51,38,2,NULL),(2029,90,90,2,NULL),(2030,111,78,2,NULL),(2031,52,38,2,NULL),(2032,111,90,2,NULL),(2033,113,78,2,NULL),(2034,44,39,2,NULL),(2035,113,90,2,NULL),(2036,114,78,2,NULL),(2037,45,39,2,NULL),(2038,114,90,2,NULL),(2039,115,78,2,NULL),(2040,46,39,2,NULL),(2041,115,90,2,NULL),(2042,138,78,2,NULL),(2043,47,39,2,NULL),(2044,138,90,2,NULL),(2045,140,78,2,NULL),(2046,48,39,2,NULL),(2047,140,90,2,NULL),(2048,141,78,2,NULL),(2049,49,39,2,NULL),(2050,141,90,2,NULL),(2051,142,78,2,NULL),(2052,50,39,2,NULL),(2053,142,90,2,NULL),(2054,70,78,2,NULL),(2055,51,39,2,NULL),(2056,73,101,2,NULL),(2057,72,78,2,NULL),(2058,52,39,2,NULL),(2059,74,101,2,NULL),(2060,91,78,2,NULL),(2061,44,41,2,NULL),(2062,75,101,2,NULL),(2063,92,78,2,NULL),(2064,45,41,2,NULL),(2065,76,101,2,NULL),(2066,95,78,2,NULL),(2067,46,41,2,NULL),(2068,77,101,2,NULL),(2069,96,78,2,NULL),(2070,47,41,2,NULL),(2071,78,101,2,NULL),(2072,128,78,2,NULL),(2073,48,41,2,NULL),(2074,79,101,2,NULL),(2075,186,78,2,NULL),(2076,49,41,2,NULL),(2077,80,101,2,NULL),(2078,187,78,2,NULL),(2079,50,41,2,NULL),(2080,83,101,2,NULL),(2081,156,78,2,NULL),(2082,51,41,2,NULL),(2083,84,101,2,NULL),(2084,157,78,2,NULL),(2085,52,41,2,NULL),(2086,85,101,2,NULL),(2087,164,78,2,NULL),(2088,44,42,2,NULL),(2089,86,101,2,NULL),(2090,165,78,2,NULL),(2091,45,42,2,NULL),(2092,87,101,2,NULL),(2093,166,78,2,NULL),(2094,46,42,2,NULL),(2095,88,101,2,NULL),(2096,167,78,2,NULL),(2097,47,42,2,NULL),(2098,89,101,2,NULL),(2099,161,78,2,NULL),(2100,48,42,2,NULL),(2101,90,101,2,NULL),(2102,162,78,2,NULL),(2103,49,42,2,NULL),(2104,111,101,2,NULL),(2105,163,78,2,NULL),(2106,50,42,2,NULL),(2107,113,101,2,NULL),(2108,148,78,2,NULL),(2109,51,42,2,NULL),(2110,114,101,2,NULL),(2111,44,80,2,NULL),(2112,52,42,2,NULL),(2113,115,101,2,NULL),(2114,45,80,2,NULL),(2115,44,43,2,NULL),(2116,138,101,2,NULL),(2117,46,80,2,NULL),(2118,45,43,2,NULL),(2119,140,101,2,NULL),(2120,47,80,2,NULL),(2121,46,43,2,NULL),(2122,141,101,2,NULL),(2123,48,80,2,NULL),(2124,47,43,2,NULL),(2125,142,101,2,NULL),(2126,49,80,2,NULL),(2127,48,43,2,NULL),(2128,50,80,2,NULL),(2129,49,43,2,NULL),(2130,73,80,2,NULL),(2131,51,80,2,NULL),(2132,74,80,2,NULL),(2133,50,43,2,NULL),(2134,52,80,2,NULL),(2135,75,80,2,NULL),(2136,51,43,2,NULL),(2137,76,80,2,NULL),(2138,52,43,2,NULL),(2139,77,80,2,NULL),(2140,78,80,2,NULL),(2141,44,87,2,NULL),(2142,79,80,2,NULL),(2143,80,80,2,NULL),(2144,45,87,2,NULL),(2145,83,80,2,NULL),(2146,84,80,2,NULL),(2147,46,87,2,NULL),(2148,85,80,2,NULL),(2149,86,80,2,NULL),(2150,47,87,2,NULL),(2151,87,80,2,NULL),(2152,88,80,2,NULL),(2153,89,80,2,NULL),(2154,48,87,2,NULL),(2155,89,80,2,NULL),(2156,90,80,2,NULL),(2157,49,87,2,NULL),(2158,111,80,2,NULL),(2159,113,80,2,NULL),(2160,50,87,2,NULL),(2161,114,80,2,NULL),(2162,115,80,2,NULL),(2163,51,87,2,NULL),(2164,138,80,2,NULL),(2165,140,80,2,NULL),(2166,52,87,2,NULL),(2167,141,80,2,NULL),(2168,142,80,2,NULL),(2169,70,80,2,NULL),(2170,44,88,2,NULL),(2171,73,81,2,NULL),(2172,72,80,2,NULL),(2173,45,88,2,NULL),(2174,74,81,2,NULL),(2175,91,80,2,NULL),(2176,46,88,2,NULL),(2177,75,81,2,NULL),(2178,92,80,2,NULL),(2179,47,88,2,NULL),(2180,76,81,2,NULL),(2181,95,80,2,NULL),(2182,48,88,2,NULL),(2183,77,81,2,NULL),(2184,96,80,2,NULL),(2185,49,88,2,NULL),(2186,78,81,2,NULL),(2187,128,80,2,NULL),(2188,50,88,2,NULL),(2189,79,81,2,NULL),(2190,186,80,2,NULL),(2191,80,81,2,NULL),(2192,51,88,2,NULL),(2193,187,80,2,NULL),(2194,83,81,2,NULL),(2195,52,88,2,NULL),(2196,156,80,2,NULL),(2197,84,81,2,NULL),(2198,44,89,2,NULL),(2199,157,80,2,NULL),(2200,45,89,2,NULL),(2201,85,81,2,NULL),(2202,164,80,2,NULL),(2203,46,89,2,NULL),(2204,86,81,2,NULL),(2205,165,80,2,NULL),(2206,87,81,2,NULL),(2207,47,89,2,NULL),(2208,166,80,2,NULL),(2209,88,81,2,NULL),(2210,48,89,2,NULL),(2211,167,80,2,NULL),(2212,89,81,2,NULL),(2213,49,89,2,NULL),(2214,161,80,2,NULL),(2215,90,81,2,NULL),(2216,50,89,2,NULL),(2217,162,80,2,NULL),(2218,51,89,2,NULL),(2219,111,81,2,NULL),(2220,163,80,2,NULL),(2221,113,81,2,NULL),(2222,52,89,2,NULL),(2223,148,80,2,NULL),(2224,114,81,2,NULL),(2225,44,90,2,NULL),(2226,44,81,2,NULL),(2227,115,81,2,NULL),(2228,45,90,2,NULL),(2229,45,81,2,NULL),(2230,138,81,2,NULL),(2231,46,90,2,NULL),(2232,46,81,2,NULL),(2233,140,81,2,NULL),(2234,47,90,2,NULL),(2235,47,81,2,NULL),(2236,141,81,2,NULL),(2237,48,90,2,NULL),(2238,48,81,2,NULL),(2239,142,81,2,NULL),(2240,49,90,2,NULL),(2241,49,81,2,NULL),(2242,50,90,2,NULL),(2243,73,82,2,NULL),(2244,50,81,2,NULL),(2245,51,90,2,NULL),(2246,74,82,2,NULL),(2247,51,81,2,NULL),(2248,75,82,2,NULL),(2249,52,90,2,NULL),(2250,52,81,2,NULL),(2251,76,82,2,NULL),(2252,44,101,2,NULL),(2253,70,81,2,NULL),(2254,45,101,2,NULL),(2255,77,82,2,NULL),(2256,72,81,2,NULL),(2257,78,82,2,NULL),(2258,46,101,2,NULL),(2259,91,81,2,NULL),(2260,79,82,2,NULL),(2261,47,101,2,NULL),(2262,92,81,2,NULL),(2263,48,101,2,NULL),(2264,80,82,2,NULL),(2265,95,81,2,NULL),(2266,49,101,2,NULL),(2267,83,82,2,NULL),(2268,96,81,2,NULL),(2269,50,101,2,NULL),(2270,84,82,2,NULL),(2271,128,81,2,NULL),(2272,85,82,2,NULL),(2273,51,101,2,NULL),(2274,186,81,2,NULL),(2275,86,82,2,NULL),(2276,52,101,2,NULL),(2277,187,81,2,NULL),(2278,87,82,2,NULL),(2279,156,81,2,NULL),(2280,44,82,2,NULL),(2281,88,82,2,NULL),(2282,157,81,2,NULL),(2283,45,82,2,NULL),(2284,89,82,2,NULL),(2285,164,81,2,NULL),(2286,46,82,2,NULL),(2287,90,82,2,NULL),(2288,165,81,2,NULL),(2289,47,82,2,NULL),(2290,111,82,2,NULL),(2291,48,82,2,NULL),(2292,166,81,2,NULL),(2293,113,82,2,NULL),(2294,49,82,2,NULL),(2295,167,81,2,NULL),(2296,114,82,2,NULL),(2297,50,82,2,NULL),(2298,161,81,2,NULL),(2299,115,82,2,NULL),(2300,162,81,2,NULL),(2301,51,82,2,NULL),(2302,138,82,2,NULL),(2303,163,81,2,NULL),(2304,52,82,2,NULL),(2305,140,82,2,NULL),(2306,148,81,2,NULL),(2307,44,85,2,NULL),(2308,141,82,2,NULL),(2309,45,85,2,NULL),(2310,142,82,2,NULL),(2311,70,82,2,NULL),(2312,46,85,2,NULL),(2313,73,85,2,NULL),(2314,72,82,2,NULL),(2315,47,85,2,NULL),(2316,74,85,2,NULL),(2317,91,82,2,NULL),(2318,48,85,2,NULL),(2319,75,85,2,NULL),(2320,92,82,2,NULL),(2321,49,85,2,NULL),(2322,95,82,2,NULL),(2323,76,85,2,NULL),(2324,50,85,2,NULL),(2325,96,82,2,NULL),(2326,77,85,2,NULL),(2327,51,85,2,NULL),(2328,78,85,2,NULL),(2329,128,82,2,NULL),(2330,52,85,2,NULL),(2331,186,82,2,NULL),(2332,79,85,2,NULL),(2333,44,86,2,NULL),(2334,80,85,2,NULL),(2335,187,82,2,NULL),(2336,45,86,2,NULL),(2337,156,82,2,NULL),(2338,83,85,2,NULL),(2339,46,86,2,NULL),(2340,157,82,2,NULL),(2341,84,85,2,NULL),(2342,47,86,2,NULL),(2343,85,85,2,NULL),(2344,164,82,2,NULL),(2345,48,86,2,NULL),(2346,86,85,2,NULL),(2347,165,82,2,NULL),(2348,49,86,2,NULL),(2349,87,85,2,NULL),(2350,166,82,2,NULL),(2351,50,86,2,NULL),(2352,88,85,2,NULL),(2353,167,82,2,NULL),(2354,51,86,2,NULL),(2355,161,82,2,NULL),(2356,89,85,2,NULL),(2357,52,86,2,NULL),(2358,162,82,2,NULL),(2359,90,85,2,NULL),(2360,44,91,2,NULL),(2361,163,82,2,NULL),(2362,45,91,2,NULL),(2363,111,85,2,NULL),(2364,148,82,2,NULL),(2365,46,91,2,NULL),(2366,113,85,2,NULL),(2367,114,85,2,NULL),(2368,47,91,2,NULL),(2369,115,85,2,NULL),(2370,138,85,2,NULL),(2371,140,85,2,NULL),(2372,48,91,2,NULL),(2373,141,85,2,NULL),(2374,142,85,2,NULL),(2375,49,91,2,NULL),(2376,73,86,2,NULL),(2377,50,91,2,NULL),(2378,70,85,2,NULL),(2379,74,86,2,NULL),(2380,51,91,2,NULL),(2381,72,85,2,NULL),(2382,75,86,2,NULL),(2383,52,91,2,NULL),(2384,91,85,2,NULL),(2385,76,86,2,NULL),(2386,92,85,2,NULL),(2387,44,92,2,NULL),(2388,77,86,2,NULL),(2389,95,85,2,NULL),(2390,45,92,2,NULL),(2391,78,86,2,NULL),(2392,46,92,2,NULL),(2393,96,85,2,NULL),(2394,79,86,2,NULL),(2395,47,92,2,NULL),(2396,128,85,2,NULL),(2397,80,86,2,NULL),(2398,48,92,2,NULL),(2399,186,85,2,NULL),(2400,83,86,2,NULL),(2401,49,92,2,NULL),(2402,187,85,2,NULL),(2403,84,86,2,NULL),(2404,50,92,2,NULL),(2405,156,85,2,NULL),(2406,85,86,2,NULL),(2407,51,92,2,NULL),(2408,157,85,2,NULL),(2409,86,86,2,NULL),(2410,52,92,2,NULL),(2411,164,85,2,NULL),(2412,87,86,2,NULL),(2413,44,94,2,NULL),(2414,165,85,2,NULL),(2415,88,86,2,NULL),(2416,45,94,2,NULL),(2417,166,85,2,NULL),(2418,89,86,2,NULL),(2419,46,94,2,NULL),(2420,167,85,2,NULL),(2421,90,86,2,NULL),(2422,47,94,2,NULL),(2423,161,85,2,NULL),(2424,111,86,2,NULL),(2425,48,94,2,NULL),(2426,162,85,2,NULL),(2427,113,86,2,NULL),(2428,49,94,2,NULL),(2429,163,85,2,NULL),(2430,114,86,2,NULL),(2431,50,94,2,NULL),(2432,148,85,2,NULL),(2433,115,86,2,NULL),(2434,51,94,2,NULL),(2435,138,86,2,NULL),(2436,140,86,2,NULL),(2437,52,94,2,NULL),(2438,141,86,2,NULL),(2439,141,86,2,NULL),(2440,44,95,2,NULL),(2441,142,86,2,NULL),(2442,142,86,2,NULL),(2443,45,95,2,NULL),(2444,73,91,2,NULL),(2445,70,86,2,NULL),(2446,46,95,2,NULL),(2447,74,91,2,NULL),(2448,72,86,2,NULL),(2449,47,95,2,NULL),(2450,75,91,2,NULL),(2451,91,86,2,NULL),(2452,48,95,2,NULL),(2453,76,91,2,NULL),(2454,92,86,2,NULL),(2455,49,95,2,NULL),(2456,77,91,2,NULL),(2457,50,95,2,NULL),(2458,95,86,2,NULL),(2459,78,91,2,NULL),(2460,51,95,2,NULL),(2461,96,86,2,NULL),(2462,79,91,2,NULL),(2463,52,95,2,NULL),(2464,128,86,2,NULL),(2465,80,91,2,NULL),(2466,44,96,2,NULL),(2467,186,86,2,NULL),(2468,83,91,2,NULL),(2469,45,96,2,NULL),(2470,187,86,2,NULL),(2471,84,91,2,NULL),(2472,46,96,2,NULL),(2473,156,86,2,NULL),(2474,85,91,2,NULL),(2475,47,96,2,NULL),(2476,157,86,2,NULL),(2477,86,91,2,NULL),(2478,48,96,2,NULL),(2479,164,86,2,NULL),(2480,87,91,2,NULL),(2481,49,96,2,NULL),(2482,165,86,2,NULL),(2483,88,91,2,NULL),(2484,50,96,2,NULL),(2485,166,86,2,NULL),(2486,89,91,2,NULL),(2487,51,96,2,NULL),(2488,167,86,2,NULL),(2489,90,91,2,NULL),(2490,52,96,2,NULL),(2491,161,86,2,NULL),(2492,111,91,2,NULL),(2493,44,99,2,NULL),(2494,162,86,2,NULL),(2495,113,91,2,NULL),(2496,45,99,2,NULL),(2497,163,86,2,NULL),(2498,114,91,2,NULL),(2499,46,99,2,NULL),(2500,148,86,2,NULL),(2501,115,91,2,NULL),(2502,47,99,2,NULL),(2503,138,91,2,NULL),(2504,48,99,2,NULL),(2505,140,91,2,NULL),(2506,49,99,2,NULL),(2507,141,91,2,NULL),(2508,50,99,2,NULL),(2509,142,91,2,NULL),(2510,51,99,2,NULL),(2511,73,92,2,NULL),(2512,52,99,2,NULL),(2513,74,92,2,NULL),(2514,44,100,2,NULL),(2515,75,92,2,NULL),(2516,45,100,2,NULL),(2517,76,92,2,NULL),(2518,46,100,2,NULL),(2519,77,92,2,NULL),(2520,47,100,2,NULL),(2521,78,92,2,NULL),(2522,48,100,2,NULL),(2523,79,92,2,NULL),(2524,49,100,2,NULL),(2525,80,92,2,NULL),(2526,50,100,2,NULL),(2527,83,92,2,NULL),(2528,51,100,2,NULL),(2529,84,92,2,NULL),(2530,52,100,2,NULL),(2531,85,92,2,NULL),(2532,44,102,2,NULL),(2533,86,92,2,NULL),(2534,45,102,2,NULL),(2535,87,92,2,NULL),(2536,46,102,2,NULL),(2537,88,92,2,NULL),(2538,47,102,2,NULL),(2539,89,92,2,NULL),(2540,48,102,2,NULL),(2541,90,92,2,NULL),(2542,49,102,2,NULL),(2543,111,92,2,NULL),(2544,50,102,2,NULL),(2545,113,92,2,NULL),(2546,51,102,2,NULL),(2547,114,92,2,NULL),(2548,52,102,2,NULL),(2549,115,92,2,NULL),(2550,44,103,2,NULL),(2551,138,92,2,NULL),(2552,45,103,2,NULL),(2553,140,92,2,NULL),(2554,46,103,2,NULL),(2555,141,92,2,NULL),(2556,47,103,2,NULL),(2557,142,92,2,NULL),(2558,48,103,2,NULL),(2559,73,94,2,NULL),(2560,49,103,2,NULL),(2561,74,94,2,NULL),(2562,50,103,2,NULL),(2563,75,94,2,NULL),(2564,51,103,2,NULL),(2565,76,94,2,NULL),(2566,52,103,2,NULL),(2567,77,94,2,NULL),(2568,78,94,2,NULL),(2569,79,94,2,NULL),(2570,70,26,2,NULL),(2571,80,94,2,NULL),(2572,72,26,2,NULL),(2573,83,94,2,NULL),(2574,91,26,2,NULL),(2575,84,94,2,NULL),(2576,92,26,2,NULL),(2577,85,94,2,NULL),(2578,95,26,2,NULL),(2579,86,94,2,NULL),(2580,96,26,2,NULL),(2581,87,94,2,NULL),(2582,128,26,2,NULL),(2583,88,94,2,NULL),(2584,186,26,2,NULL),(2585,89,94,2,NULL),(2586,187,26,2,NULL),(2587,90,94,2,NULL),(2588,156,26,2,NULL),(2589,111,94,2,NULL),(2590,157,26,2,NULL),(2591,113,94,2,NULL),(2592,164,26,2,NULL),(2593,114,94,2,NULL),(2594,165,26,2,NULL),(2595,115,94,2,NULL),(2596,166,26,2,NULL),(2597,138,94,2,NULL),(2598,167,26,2,NULL),(2599,140,94,2,NULL),(2600,161,26,2,NULL),(2601,141,94,2,NULL),(2602,162,26,2,NULL),(2603,142,94,2,NULL),(2604,163,26,2,NULL),(2605,73,95,2,NULL),(2606,148,26,2,NULL),(2607,74,95,2,NULL),(2608,53,19,2,NULL),(2609,75,95,2,NULL),(2610,70,28,2,NULL),(2611,76,95,2,NULL),(2612,72,28,2,NULL),(2613,77,95,2,NULL),(2614,91,28,2,NULL),(2615,78,95,2,NULL),(2616,92,28,2,NULL),(2617,79,95,2,NULL),(2618,95,28,2,NULL),(2619,80,95,2,NULL),(2620,96,28,2,NULL),(2621,83,95,2,NULL),(2622,128,28,2,NULL),(2623,84,95,2,NULL),(2624,186,28,2,NULL),(2625,85,95,2,NULL),(2626,187,28,2,NULL),(2627,86,95,2,NULL),(2628,156,28,2,NULL),(2629,87,95,2,NULL),(2630,157,28,2,NULL),(2631,88,95,2,NULL),(2632,164,28,2,NULL),(2633,89,95,2,NULL),(2634,165,28,2,NULL),(2635,90,95,2,NULL),(2636,166,28,2,NULL),(2637,111,95,2,NULL),(2638,167,28,2,NULL),(2639,113,95,2,NULL),(2640,161,28,2,NULL),(2641,114,95,2,NULL),(2642,162,28,2,NULL),(2643,115,95,2,NULL),(2644,163,28,2,NULL),(2645,138,95,2,NULL),(2646,148,28,2,NULL),(2647,140,95,2,NULL),(2648,141,95,2,NULL),(2649,142,95,2,NULL),(2650,73,96,2,NULL),(2651,74,96,2,NULL),(2652,75,96,2,NULL),(2653,76,96,2,NULL),(2654,77,96,2,NULL),(2655,78,96,2,NULL),(2656,79,96,2,NULL),(2657,80,96,2,NULL),(2658,83,96,2,NULL),(2659,84,96,2,NULL),(2660,85,96,2,NULL),(2661,86,96,2,NULL),(2662,87,96,2,NULL),(2663,88,96,2,NULL),(2664,89,96,2,NULL),(2665,90,96,2,NULL),(2666,111,96,2,NULL),(2667,113,96,2,NULL),(2668,114,96,2,NULL),(2669,115,96,2,NULL),(2670,138,96,2,NULL),(2671,140,96,2,NULL),(2672,141,96,2,NULL),(2673,142,96,2,NULL),(2674,73,99,2,NULL),(2675,74,99,2,NULL),(2676,75,99,2,NULL),(2677,76,99,2,NULL),(2678,77,99,2,NULL),(2679,78,99,2,NULL),(2680,79,99,2,NULL),(2681,80,99,2,NULL),(2682,83,99,2,NULL),(2683,84,99,2,NULL),(2684,85,99,2,NULL),(2685,86,99,2,NULL),(2686,87,99,2,NULL),(2687,88,99,2,NULL),(2688,89,99,2,NULL),(2689,90,99,2,NULL),(2690,111,99,2,NULL),(2691,113,99,2,NULL),(2692,114,99,2,NULL),(2693,115,99,2,NULL),(2694,138,99,2,NULL),(2695,140,99,2,NULL),(2696,141,99,2,NULL),(2697,142,99,2,NULL),(2698,73,100,2,NULL),(2699,74,100,2,NULL),(2700,75,100,2,NULL),(2701,76,100,2,NULL),(2702,77,100,2,NULL),(2703,78,100,2,NULL),(2704,79,100,2,NULL),(2705,80,100,2,NULL),(2706,83,100,2,NULL),(2707,84,100,2,NULL),(2708,85,100,2,NULL),(2709,86,100,2,NULL),(2710,87,100,2,NULL),(2711,88,100,2,NULL),(2712,89,100,2,NULL),(2713,90,100,2,NULL),(2714,111,100,2,NULL),(2715,113,100,2,NULL),(2716,114,100,2,NULL),(2717,115,100,2,NULL),(2718,138,100,2,NULL),(2719,140,100,2,NULL),(2720,141,100,2,NULL),(2721,142,100,2,NULL),(2722,73,102,2,NULL),(2723,74,102,2,NULL),(2724,75,102,2,NULL),(2725,76,102,2,NULL),(2726,77,102,2,NULL),(2727,78,102,2,NULL),(2728,79,102,2,NULL),(2729,80,102,2,NULL),(2730,83,102,2,NULL),(2731,84,102,2,NULL),(2732,85,102,2,NULL),(2733,86,102,2,NULL),(2734,87,102,2,NULL),(2735,88,102,2,NULL),(2736,89,102,2,NULL),(2737,90,102,2,NULL),(2738,111,102,2,NULL),(2739,113,102,2,NULL),(2740,114,102,2,NULL),(2741,115,102,2,NULL),(2742,138,102,2,NULL),(2743,140,102,2,NULL),(2744,141,102,2,NULL),(2745,142,102,2,NULL),(2746,73,103,2,NULL),(2747,74,103,2,NULL),(2748,75,103,2,NULL),(2749,76,103,2,NULL),(2750,77,103,2,NULL),(2751,78,103,2,NULL),(2752,79,103,2,NULL),(2753,80,103,2,NULL),(2754,83,103,2,NULL),(2755,84,103,2,NULL),(2756,85,103,2,NULL),(2757,86,103,2,NULL),(2758,87,103,2,NULL),(2759,88,103,2,NULL),(2760,89,103,2,NULL),(2761,90,103,2,NULL),(2762,111,103,2,NULL),(2763,113,103,2,NULL),(2764,114,103,2,NULL),(2765,115,103,2,NULL),(2766,138,103,2,NULL),(2767,140,103,2,NULL),(2768,141,103,2,NULL),(2769,142,103,2,NULL),(2770,70,1,2,NULL),(2771,72,1,2,NULL),(2772,70,4,2,NULL),(2773,72,4,2,NULL),(2774,70,8,2,NULL),(2775,72,8,2,NULL),(2776,70,14,2,NULL),(2777,72,14,2,NULL),(2778,70,34,2,NULL),(2779,72,34,2,NULL),(2780,70,37,2,NULL),(2781,72,37,2,NULL),(2782,70,38,2,NULL),(2783,72,38,2,NULL),(2784,70,39,2,NULL),(2785,72,39,2,NULL),(2786,70,41,2,NULL),(2787,72,41,2,NULL),(2788,70,42,2,NULL),(2789,72,42,2,NULL),(2790,70,43,2,NULL),(2791,72,43,2,NULL),(2792,70,87,2,NULL),(2793,72,87,2,NULL),(2794,70,88,2,NULL),(2795,72,88,2,NULL),(2796,70,89,2,NULL),(2797,72,89,2,NULL),(2798,70,90,2,NULL),(2799,72,90,2,NULL),(2800,70,101,2,NULL),(2801,72,101,2,NULL),(2802,70,91,2,NULL),(2803,72,91,2,NULL),(2804,70,92,2,NULL),(2805,72,92,2,NULL),(2806,70,94,2,NULL),(2807,72,94,2,NULL),(2808,70,95,2,NULL),(2809,72,95,2,NULL),(2810,70,96,2,NULL),(2811,72,96,2,NULL),(2812,70,99,2,NULL),(2813,72,99,2,NULL),(2814,70,100,2,NULL),(2815,72,100,2,NULL),(2816,70,102,2,NULL),(2817,72,102,2,NULL),(2818,70,103,2,NULL),(2819,72,103,2,NULL),(2820,56,41,2,NULL),(2821,147,41,2,NULL),(2822,91,34,2,NULL),(2823,92,34,2,NULL),(2824,95,34,2,NULL),(2825,96,34,2,NULL),(2826,128,34,2,NULL),(2827,186,34,2,NULL),(2828,187,34,2,NULL),(2829,156,34,2,NULL),(2830,157,34,2,NULL),(2831,164,34,2,NULL),(2832,165,34,2,NULL),(2833,166,34,2,NULL),(2834,167,34,2,NULL),(2835,161,34,2,NULL),(2836,162,34,2,NULL),(2837,163,34,2,NULL),(2838,148,34,2,NULL),(2839,145,29,2,NULL),(2840,97,41,2,NULL),(2841,106,41,2,NULL),(2842,91,37,2,NULL),(2843,92,37,2,NULL),(2844,95,37,2,NULL),(2845,96,37,2,NULL),(2846,128,37,2,NULL),(2847,186,37,2,NULL),(2848,187,37,2,NULL),(2849,156,37,2,NULL),(2850,157,37,2,NULL),(2851,164,37,2,NULL),(2852,165,37,2,NULL),(2853,166,37,2,NULL),(2854,167,37,2,NULL),(2855,161,37,2,NULL),(2856,162,37,2,NULL),(2857,163,37,2,NULL),(2858,148,37,2,NULL),(2859,7,11,2,NULL),(2860,54,37,2,NULL),(2861,8,10,2,NULL),(2862,91,1,2,NULL),(2863,9,9,2,NULL),(2864,92,1,2,NULL),(2865,91,8,2,NULL),(2866,91,4,2,NULL),(2867,92,8,2,NULL),(2868,92,4,2,NULL),(2869,95,8,2,NULL),(2870,91,14,2,NULL),(2871,96,8,2,NULL),(2872,92,14,2,NULL),(2873,128,8,2,NULL),(2874,186,8,2,NULL),(2875,91,39,2,NULL),(2876,187,8,2,NULL),(2877,92,39,2,NULL),(2878,156,8,2,NULL),(2879,95,38,2,NULL),(2880,157,8,2,NULL),(2881,96,38,2,NULL),(2882,164,8,2,NULL),(2883,128,38,2,NULL),(2884,165,8,2,NULL),(2885,91,41,2,NULL),(2886,166,8,2,NULL),(2887,92,41,2,NULL),(2888,167,8,2,NULL),(2889,91,42,2,NULL),(2890,161,8,2,NULL),(2891,92,42,2,NULL),(2892,162,8,2,NULL),(2893,91,43,2,NULL),(2894,163,8,2,NULL),(2895,92,43,2,NULL),(2896,148,8,2,NULL),(2897,91,87,2,NULL),(2898,4,8,2,NULL),(2899,92,87,2,NULL),(2900,91,88,2,NULL),(2901,95,14,2,NULL),(2902,92,88,2,NULL),(2903,96,14,2,NULL),(2904,91,89,2,NULL),(2905,128,14,2,NULL),(2906,92,89,2,NULL),(2907,186,14,2,NULL),(2908,91,90,2,NULL),(2909,187,14,2,NULL),(2910,92,90,2,NULL),(2911,156,14,2,NULL),(2912,91,101,2,NULL),(2913,157,14,2,NULL),(2914,92,101,2,NULL),(2915,164,14,2,NULL),(2916,91,91,2,NULL),(2917,165,14,2,NULL),(2918,92,91,2,NULL),(2919,166,14,2,NULL),(2920,91,92,2,NULL),(2921,167,14,2,NULL),(2922,92,92,2,NULL),(2923,161,14,2,NULL),(2924,91,94,2,NULL),(2925,162,14,2,NULL),(2926,92,94,2,NULL),(2927,163,14,2,NULL),(2928,186,38,2,NULL),(2929,148,14,2,NULL),(2930,187,38,2,NULL),(2931,91,95,2,NULL),(2932,92,95,2,NULL),(2933,156,38,2,NULL),(2934,157,38,2,NULL),(2935,91,96,2,NULL),(2936,92,96,2,NULL),(2937,164,38,2,NULL),(2938,165,38,2,NULL),(2939,166,38,2,NULL),(2940,167,38,2,NULL),(2941,161,38,2,NULL),(2942,162,38,2,NULL),(2943,163,38,2,NULL),(2944,148,38,2,NULL),(2945,91,99,2,NULL),(2946,92,99,2,NULL),(2947,91,100,2,NULL),(2948,92,100,2,NULL),(2949,91,102,2,NULL),(2950,92,102,2,NULL),(2951,91,103,2,NULL),(2952,92,103,2,NULL),(2953,59,41,2,NULL),(2954,95,39,2,NULL),(2955,96,39,2,NULL),(2956,128,39,2,NULL),(2957,186,39,2,NULL),(2958,187,39,2,NULL),(2959,156,39,2,NULL),(2960,157,39,2,NULL),(2961,164,39,2,NULL),(2962,165,39,2,NULL),(2963,166,39,2,NULL),(2964,167,39,2,NULL),(2965,161,39,2,NULL),(2966,162,39,2,NULL),(2967,163,39,2,NULL),(2968,148,39,2,NULL),(2969,102,40,2,NULL),(2970,137,37,2,NULL),(2971,95,1,2,NULL),(2972,96,1,2,NULL),(2973,128,1,2,NULL),(2974,95,4,2,NULL),(2975,96,4,2,NULL),(2976,128,4,2,NULL),(2977,95,41,2,NULL),(2978,96,41,2,NULL),(2979,128,41,2,NULL),(2980,95,42,2,NULL),(2981,96,42,2,NULL),(2982,128,42,2,NULL),(2983,95,43,2,NULL),(2984,96,43,2,NULL),(2985,128,43,2,NULL),(2986,95,87,2,NULL),(2987,96,87,2,NULL),(2988,128,87,2,NULL),(2989,95,88,2,NULL),(2990,96,88,2,NULL),(2991,128,88,2,NULL),(2992,95,89,2,NULL),(2993,96,89,2,NULL),(2994,128,89,2,NULL),(2995,95,90,2,NULL),(2996,96,90,2,NULL),(2997,128,90,2,NULL),(2998,95,101,2,NULL),(2999,96,101,2,NULL),(3000,128,101,2,NULL),(3001,95,91,2,NULL),(3002,96,91,2,NULL),(3003,128,91,2,NULL),(3004,95,92,2,NULL),(3005,96,92,2,NULL),(3006,128,92,2,NULL),(3007,95,94,2,NULL),(3008,96,94,2,NULL),(3009,128,94,2,NULL),(3010,95,95,2,NULL),(3011,96,95,2,NULL),(3012,128,95,2,NULL),(3013,95,96,2,NULL),(3014,96,96,2,NULL),(3015,3,2,2,NULL),(3016,128,96,2,NULL),(3017,95,99,2,NULL),(3018,96,99,2,NULL),(3019,186,1,2,NULL),(3020,128,99,2,NULL),(3021,187,1,2,NULL),(3022,95,100,2,NULL),(3023,156,1,2,NULL),(3024,96,100,2,NULL),(3025,157,1,2,NULL),(3026,128,100,2,NULL),(3027,164,1,2,NULL),(3028,95,102,2,NULL),(3029,165,1,2,NULL),(3030,96,102,2,NULL),(3031,166,1,2,NULL),(3032,128,102,2,NULL),(3033,167,1,2,NULL),(3034,95,103,2,NULL),(3035,161,1,2,NULL),(3036,96,103,2,NULL),(3037,162,1,2,NULL),(3038,128,103,2,NULL),(3039,163,1,2,NULL),(3040,186,41,2,NULL),(3041,148,1,2,NULL),(3042,187,41,2,NULL),(3043,2,1,2,NULL),(3044,156,41,2,NULL),(3045,1,1,2,NULL),(3046,157,41,2,NULL),(3047,164,41,2,NULL),(3048,165,41,2,NULL),(3049,186,4,2,NULL),(3050,166,41,2,NULL),(3051,187,4,2,NULL),(3052,167,41,2,NULL),(3053,156,4,2,NULL),(3054,161,41,2,NULL),(3055,157,4,2,NULL),(3056,162,41,2,NULL),(3057,164,4,2,NULL),(3058,163,41,2,NULL),(3059,165,4,2,NULL),(3060,148,41,2,NULL),(3061,166,4,2,NULL),(3062,186,42,2,NULL),(3063,167,4,2,NULL),(3064,187,42,2,NULL),(3065,161,4,2,NULL),(3066,156,42,2,NULL),(3067,162,4,2,NULL),(3068,157,42,2,NULL),(3069,163,4,2,NULL),(3070,164,42,2,NULL),(3071,148,4,2,NULL),(3072,165,42,2,NULL),(3073,166,42,2,NULL),(3074,167,42,2,NULL),(3075,161,42,2,NULL),(3076,162,42,2,NULL),(3077,163,42,2,NULL),(3078,148,42,2,NULL),(3079,107,41,2,NULL),(3080,118,41,2,NULL),(3081,123,41,2,NULL),(3082,186,43,2,NULL),(3083,187,43,2,NULL),(3084,156,43,2,NULL),(3085,157,43,2,NULL),(3086,164,43,2,NULL),(3087,165,43,2,NULL),(3088,166,43,2,NULL),(3089,167,43,2,NULL),(3090,161,43,2,NULL),(3091,162,43,2,NULL),(3092,163,43,2,NULL),(3093,148,43,2,NULL),(3094,186,87,2,NULL),(3095,187,87,2,NULL),(3096,156,87,2,NULL),(3097,157,87,2,NULL),(3098,164,87,2,NULL),(3099,165,87,2,NULL),(3100,166,87,2,NULL),(3101,167,87,2,NULL),(3102,161,87,2,NULL),(3103,162,87,2,NULL),(3104,163,87,2,NULL),(3105,148,87,2,NULL),(3106,186,88,2,NULL),(3107,187,88,2,NULL),(3108,156,88,2,NULL),(3109,157,88,2,NULL),(3110,164,88,2,NULL),(3111,165,88,2,NULL),(3112,166,88,2,NULL),(3113,167,88,2,NULL),(3114,161,88,2,NULL),(3115,162,88,2,NULL),(3116,163,88,2,NULL),(3117,148,88,2,NULL),(3118,186,89,2,NULL),(3119,187,89,2,NULL),(3120,156,89,2,NULL),(3121,157,89,2,NULL),(3122,164,89,2,NULL),(3123,165,89,2,NULL),(3124,166,89,2,NULL),(3125,167,89,2,NULL),(3126,161,89,2,NULL),(3127,186,91,2,NULL),(3128,162,89,2,NULL),(3129,187,91,2,NULL),(3130,163,89,2,NULL),(3131,156,91,2,NULL),(3132,148,89,2,NULL),(3133,157,91,2,NULL),(3134,164,91,2,NULL),(3135,186,90,2,NULL),(3136,165,91,2,NULL),(3137,187,90,2,NULL),(3138,166,91,2,NULL),(3139,156,90,2,NULL),(3140,167,91,2,NULL),(3141,157,90,2,NULL),(3142,161,91,2,NULL),(3143,164,90,2,NULL),(3144,162,91,2,NULL),(3145,165,90,2,NULL),(3146,163,91,2,NULL),(3147,166,90,2,NULL),(3148,148,91,2,NULL),(3149,167,90,2,NULL),(3150,181,99,2,NULL),(3151,161,90,2,NULL),(3152,193,99,2,NULL),(3153,162,90,2,NULL),(3154,163,90,2,NULL),(3155,186,92,2,NULL),(3156,148,90,2,NULL),(3157,187,92,2,NULL),(3158,156,92,2,NULL),(3159,186,101,2,NULL),(3160,157,92,2,NULL),(3161,187,101,2,NULL),(3162,164,92,2,NULL),(3163,156,101,2,NULL),(3164,165,92,2,NULL),(3165,157,101,2,NULL),(3166,166,92,2,NULL),(3167,164,101,2,NULL),(3168,167,92,2,NULL),(3169,165,101,2,NULL),(3170,161,92,2,NULL),(3171,166,101,2,NULL),(3172,162,92,2,NULL),(3173,167,101,2,NULL),(3174,163,92,2,NULL),(3175,161,101,2,NULL),(3176,148,92,2,NULL),(3177,162,101,2,NULL),(3178,177,91,2,NULL),(3179,163,101,2,NULL),(3180,151,99,2,NULL),(3181,148,101,2,NULL),(3182,189,99,2,NULL),(3183,186,95,2,NULL),(3184,187,95,2,NULL),(3185,156,94,2,NULL),(3186,157,94,2,NULL),(3187,186,96,2,NULL),(3188,187,96,2,NULL),(3189,164,94,2,NULL),(3190,165,94,2,NULL),(3191,166,94,2,NULL),(3192,167,94,2,NULL),(3193,161,94,2,NULL),(3194,162,94,2,NULL),(3195,163,94,2,NULL),(3196,148,94,2,NULL),(3197,186,99,2,NULL),(3198,187,99,2,NULL),(3199,186,100,2,NULL),(3200,187,100,2,NULL),(3201,186,102,2,NULL),(3202,187,102,2,NULL),(3203,186,103,2,NULL),(3204,187,103,2,NULL),(3205,158,94,2,NULL),(3206,156,96,2,NULL),(3207,157,96,2,NULL),(3208,164,95,2,NULL),(3209,165,95,2,NULL),(3210,166,95,2,NULL),(3211,167,95,2,NULL),(3212,161,95,2,NULL),(3213,162,95,2,NULL),(3214,163,95,2,NULL),(3215,148,95,2,NULL),(3216,156,99,2,NULL),(3217,157,99,2,NULL),(3218,156,100,2,NULL),(3219,157,100,2,NULL),(3220,156,102,2,NULL),(3221,157,102,2,NULL),(3222,156,103,2,NULL),(3223,157,103,2,NULL),(3224,188,99,2,NULL),(3225,161,96,2,NULL),(3226,162,96,2,NULL),(3227,163,96,2,NULL),(3228,148,96,2,NULL),(3229,164,99,2,NULL),(3230,165,99,2,NULL),(3231,166,99,2,NULL),(3232,167,99,2,NULL),(3233,164,100,2,NULL),(3234,165,100,2,NULL),(3235,166,100,2,NULL),(3236,167,100,2,NULL),(3237,164,102,2,NULL),(3238,165,102,2,NULL),(3239,166,102,2,NULL),(3240,167,102,2,NULL),(3241,164,103,2,NULL),(3242,165,103,2,NULL),(3243,166,103,2,NULL),(3244,167,103,2,NULL),(3245,160,97,2,NULL),(3246,179,94,2,NULL),(3247,161,99,2,NULL),(3248,162,99,2,NULL),(3249,163,99,2,NULL),(3250,161,100,2,NULL),(3251,162,100,2,NULL),(3252,163,100,2,NULL),(3253,161,102,2,NULL),(3254,162,102,2,NULL),(3255,163,102,2,NULL),(3256,161,103,2,NULL),(3257,162,103,2,NULL),(3258,163,103,2,NULL),(3259,180,99,2,NULL),(3260,148,99,2,NULL),(3261,148,100,2,NULL),(3262,148,102,2,NULL),(3263,148,103,2,NULL),(3264,171,99,2,NULL),(3265,172,99,2,NULL),(3266,190,99,2,NULL);
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

-- Dump completed on 2015-10-12  3:30:29
