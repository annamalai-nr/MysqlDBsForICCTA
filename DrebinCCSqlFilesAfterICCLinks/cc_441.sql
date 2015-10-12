-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_441
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
INSERT INTO `ActionStrings` VALUES (13,'(.*)'),(10,'.PintuActivity'),(14,'NULL-CONSTANT'),(3,'android.intent.action.BOOT_COMPLETED'),(11,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(4,'android.intent.action.PACKAGE_ADDED'),(12,'android.intent.action.PACKAGE_REMOVED'),(8,'android.intent.action.SENDTO'),(2,'android.intent.action.USER_PRESENT'),(5,'android.intent.action.VIEW'),(7,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(6,'com.pintu_lzlhnyqwyx.GameBootReceiver'),(9,'com.pintu_lzlhnyqwyx.PintuActivity');
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
INSERT INTO `Applications` VALUES (1,'com.mofpulw.drqvjtiiog',10037),(2,'com.pintu_lzlhnyqwyx',20007),(3,'com.etagmedia.metro',5),(4,'baltorogames.nquaijhep',10022),(5,'me.nqdhdpf.smenjvt',10021),(6,'com.jpg.ahck.lbmvo',10036),(7,'com.mbrlgvpr.eleabnoowp',10023);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(3,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(4,'android.intent.categroy.DEFUAULT');
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
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.mofpulw.drqvjtiiog.BGActivity'),(2,1,'com.kIEHPS.rmOpbJBlnCdg'),(3,1,'com.kIEHPS.fPssjlnU'),(4,1,'com.kIEHPS.OdQPUGkPEJvgUal'),(5,2,'com.pintu_lzlhnyqwyx.PintuActivity'),(6,1,'com.kIEHPS.mbwriEecLIQTii'),(7,1,'com.kIEHPS.astfMtFaOBRT'),(8,1,'com.kIEHPS.MDVPJLIVPCm'),(9,2,'com.pintu_lzlhnyqwyx.GameInfo'),(10,1,'com.kIEHPS.userPermissionReceiver'),(11,2,'com.pintu_lzlhnyqwyx.TableClass'),(12,2,'com.pintu_lzlhnyqwyx.GameAlertDialog'),(13,2,'com.pintu_lzlhnyqwyx.GameService'),(14,2,'com.pintu_lzlhnyqwyx.GameBootReceiver'),(15,3,'com.etagmedia.metro.MetroActivity'),(16,3,'com.etagmedia.metro.MetroMapActivity'),(17,3,'com.etagmedia.metro.MetroLinesActivity'),(18,3,'com.etagmedia.metro.MetroStationsActivity'),(19,3,'com.etagmedia.metro.MetroLineStationsActivity'),(20,3,'com.etagmedia.metro.MetroStationInfoActivity'),(21,3,'com.etagmedia.metro.MetroStationOriActivity'),(22,3,'com.etagmedia.metro.MetroOtherActivity'),(23,3,'com.etagmedia.metro.MetroOthAboutActivity'),(24,3,'com.etagmedia.metro.MetroTransferSelActivity'),(25,3,'com.etagmedia.metro.MetroTransferLinesActivity'),(26,3,'com.etagmedia.metro.comm.MapOrientationActivity'),(27,3,'com.etagmedia.metro.comm.MapUtilActivity'),(28,3,'com.etagmedia.metro.MetroNeighStationsActivity'),(29,3,'com.etagmedia.metro.LocalSearchActivity'),(30,3,'com.etagmedia.metro.NavigationActivity'),(31,3,'com.etagmedia.metro.ar.MixView'),(32,3,'com.etagmedia.metro.PlacemarkListActivity'),(33,3,'com.etagmedia.metro.PlacemarkMapActivity'),(34,3,'com.geinimi.custom.Ad3058_30580001'),(35,3,'com.geinimi.custom.GoogleKeyboard'),(36,3,'com.geinimi.AdServiceReceiver'),(37,4,'baltorogames.nquaijhep.Kartmania3D'),(38,4,'com.LoqkLS.BmcNiNuabahwJ'),(39,4,'com.LoqkLS.PpwMTgQBrCeISP'),(40,4,'com.nd.dianjin.activity.OfferAppActivity'),(41,4,'com.nd.dianjin.broadcastreceiver.PackagedChangedBroadcastReceiver'),(42,5,'me.nqdhdpf.smenjvt.MainGame'),(43,5,'me.nqdhdpf.smenjvt.Prefs'),(44,5,'com.scoreloop.client.android.ui.EntryScreenActivity'),(45,5,'com.scoreloop.client.android.ui.ShowResultOverlayActivity'),(46,5,'com.scoreloop.client.android.ui.component.market.MarketHeaderActivity'),(47,5,'com.scoreloop.client.android.ui.component.market.MarketListActivity'),(48,5,'com.scoreloop.client.android.ui.component.entry.EntryListActivity'),(49,5,'com.scoreloop.client.android.ui.component.post.PostOverlayActivity'),(50,5,'com.scoreloop.client.android.ui.component.score.ScoreHeaderActivity'),(51,5,'com.scoreloop.client.android.ui.component.score.ScoreListActivity'),(52,5,'com.scoreloop.client.android.ui.component.user.UserAddBuddyListActivity'),(53,5,'com.scoreloop.client.android.ui.component.user.UserHeaderActivity'),(54,5,'com.scoreloop.client.android.ui.component.user.UserDetailListActivity'),(55,5,'com.scoreloop.client.android.ui.component.user.UserListActivity'),(56,5,'com.scoreloop.client.android.ui.component.game.GameDetailHeaderActivity'),(57,5,'com.scoreloop.client.android.ui.component.game.GameDetailListActivity'),(58,5,'com.scoreloop.client.android.ui.component.game.GameListActivity'),(59,5,'com.scoreloop.client.android.ui.component.achievement.AchievementHeaderActivity'),(60,5,'com.scoreloop.client.android.ui.component.achievement.AchievementListActivity'),(61,5,'com.scoreloop.client.android.ui.component.news.NewsHeaderActivity'),(62,5,'com.scoreloop.client.android.ui.component.news.NewsListActivity'),(63,5,'com.scoreloop.client.android.ui.component.challenge.ChallengeHeaderActivity'),(64,5,'com.scoreloop.client.android.ui.component.challenge.ChallengeListActivity'),(65,5,'com.scoreloop.client.android.ui.component.challenge.ChallengeAcceptListActivity'),(66,5,'com.scoreloop.client.android.ui.component.challenge.ChallengeCreateListActivity'),(67,5,'com.scoreloop.client.android.ui.component.challenge.ChallengePaymentActivity'),(68,5,'com.scoreloop.client.android.ui.component.profile.ProfileSettingsListActivity'),(69,5,'com.scoreloop.client.android.ui.component.profile.ProfileSettingsPictureListActivity'),(70,5,'com.scoreloop.client.android.ui.framework.ScreenActivity'),(71,5,'com.scoreloop.client.android.ui.framework.TabsActivity'),(72,6,'i.l.l.ooooooooo'),(73,5,'com.iKaLDr.AkfUcwshMQDdQ'),(74,5,'com.iKaLDr.vEphGedQWhKRkQ'),(75,6,'com.admob.android.ads.AdMobActivity'),(76,6,'com.nSJQKNhN.mWkVinPdgERp'),(77,6,'com.nSJQKNhN.AEAiTHQgFqF'),(78,6,'com.nSJQKNhN.PwKmHVQNhH'),(79,6,'com.nSJQKNhN.MsShHFlokQegC'),(80,6,'com.nSJQKNhN.gGDKGPJv'),(81,6,'com.nSJQKNhN.kNgVKDtslGcsV'),(82,6,'com.nSJQKNhN.userPermissionReceiver'),(83,7,'com.mbrlgvpr.eleabnoowp.MenuActivity'),(84,7,'com.mbrlgvpr.eleabnoowp.GameActivity'),(85,7,'com.scoreloop.client.android.ui.EntryScreenActivity'),(86,7,'com.scoreloop.client.android.ui.PostScoreOverlayActivity'),(87,7,'com.scoreloop.client.android.ui.ShowResultOverlayActivity'),(88,7,'com.scoreloop.client.android.ui.BuddiesScreenActivity'),(89,7,'com.scoreloop.client.android.ui.LeaderboardsScreenActivity'),(90,7,'com.scoreloop.client.android.ui.ChallengesScreenActivity'),(91,7,'com.scoreloop.client.android.ui.AchievementsScreenActivity'),(92,7,'com.scoreloop.client.android.ui.SocialMarketScreenActivity'),(93,7,'com.scoreloop.client.android.ui.ProfileScreenActivity'),(94,7,'com.scoreloop.client.android.ui.component.market.MarketHeaderActivity'),(95,7,'com.scoreloop.client.android.ui.component.market.MarketListActivity'),(96,7,'com.scoreloop.client.android.ui.component.entry.EntryListActivity'),(97,7,'com.scoreloop.client.android.ui.component.post.PostOverlayActivity'),(98,7,'com.scoreloop.client.android.ui.component.score.ScoreHeaderActivity'),(99,7,'com.scoreloop.client.android.ui.component.score.ScoreListActivity'),(100,7,'com.scoreloop.client.android.ui.component.user.UserAddBuddyListActivity'),(101,7,'com.scoreloop.client.android.ui.component.user.UserHeaderActivity'),(102,7,'com.scoreloop.client.android.ui.component.user.UserDetailListActivity'),(103,7,'com.scoreloop.client.android.ui.component.user.UserListActivity'),(104,7,'com.scoreloop.client.android.ui.component.game.GameDetailHeaderActivity'),(105,7,'com.scoreloop.client.android.ui.component.game.GameDetailListActivity'),(106,7,'com.scoreloop.client.android.ui.component.game.GameListActivity'),(107,7,'com.scoreloop.client.android.ui.component.achievement.AchievementHeaderActivity'),(108,7,'com.scoreloop.client.android.ui.component.achievement.AchievementListActivity'),(109,7,'com.scoreloop.client.android.ui.component.news.NewsHeaderActivity'),(110,7,'com.scoreloop.client.android.ui.component.news.NewsListActivity'),(111,7,'com.scoreloop.client.android.ui.component.challenge.ChallengeHeaderActivity'),(112,7,'com.scoreloop.client.android.ui.component.challenge.ChallengeListActivity'),(113,7,'com.scoreloop.client.android.ui.component.challenge.ChallengeAcceptListActivity'),(114,7,'com.scoreloop.client.android.ui.component.challenge.ChallengeCreateListActivity'),(115,7,'com.scoreloop.client.android.ui.component.challenge.ChallengePaymentActivity'),(116,7,'com.scoreloop.client.android.ui.component.profile.ProfileSettingsListActivity'),(117,7,'com.scoreloop.client.android.ui.component.profile.ProfileSettingsPictureListActivity'),(118,7,'com.scoreloop.client.android.ui.framework.ScreenActivity'),(119,7,'com.scoreloop.client.android.ui.framework.TabsActivity'),(120,7,'com.google.ads.AdActivity'),(121,7,'com.vIGVk.VemfFBVA'),(122,7,'com.vIGVk.wwltBMCp'),(123,7,'com.nd.dianjin.activity.OfferAppActivity'),(124,7,'com.nd.dianjin.broadcastreceiver.PackagedChangedBroadcastReceiver'),(125,4,'com.nd.dianjin.DianJinPlatform'),(126,1,'com.kIEHPS.p'),(127,2,'j'),(128,2,'au'),(129,1,'com.kIEHPS.af'),(130,1,'cn.appmedia.ad.f.c'),(131,2,'av'),(132,1,'cn.appmedia.ad.f.d'),(133,1,'com.kIEHPS.ah'),(134,1,'cn.appmedia.ad.f.e'),(135,3,'com.etagmedia.metro.MetroLineStationsActivity$1'),(136,3,'com.geinimi.c.b'),(137,3,'com.etagmedia.metro.MetroActivity$1'),(138,2,'ba'),(139,3,'com.etagmedia.metro.MetroActivity$3$1'),(140,3,'com.etagmedia.metro.MetroStationsActivity$1'),(141,6,'com.nSJQKNhN.w'),(142,3,'com.geinimi.AdActivity'),(143,3,'com.etagmedia.metro.MetroNeighStationsActivity$4'),(144,3,'com.etagmedia.metro.MetroNeighStationsActivity$3'),(145,3,'com.etagmedia.metro.PlacemarkListActivity$1'),(146,3,'com.geinimi.AdService'),(147,6,'com.nSJQKNhN.af'),(148,3,'com.geinimi.ads.c'),(149,6,'com.nSJQKNhN.ah'),(150,3,'com.etagmedia.metro.MetroOtherActivity$1'),(151,3,'com.etagmedia.metro.LocalSearchActivity$1'),(152,6,'com.admob.android.ads.q'),(153,3,'com.etagmedia.metro.MetroNeighStationsActivity$2'),(154,3,'com.etagmedia.metro.PlacemarkListActivity$2'),(155,3,'com.etagmedia.metro.MetroNeighStationsActivity$1'),(156,3,'com.geinimi.c.j'),(157,3,'com.etagmedia.metro.MetroLinesActivity$1'),(158,3,'com.etagmedia.metro.MetroTransferSelActivity$3$1');
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
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,4,'detailFlag'),(2,8,'fileName'),(3,3,'np_app_key'),(4,4,'np_app_key'),(5,12,'apk_url'),(6,6,'np_app_key'),(7,8,'np_app_key'),(8,2,'np_app_key'),(9,12,'btn_txt'),(10,4,'iconURL'),(11,9,'from_table'),(12,9,'from_alert'),(13,9,'game'),(14,12,'package_name'),(15,7,'fileURL'),(16,4,'apkURL'),(17,7,'packageName'),(18,4,'apkInfo'),(19,4,'apkVersion'),(20,9,'filepath'),(21,4,'imageURL'),(22,4,'apkSize'),(23,4,'apkTitle'),(24,9,'title'),(25,4,'apkSoftID'),(26,12,'version_code'),(27,5,'service_channel'),(28,4,'packageName'),(29,8,'fileURL'),(30,9,'fromtype'),(31,12,'url'),(32,9,'status'),(33,20,'stationId'),(34,25,'stationRight'),(35,17,'cityCode'),(36,25,'lineNames'),(37,20,'stationName'),(38,28,'ori'),(39,12,'title'),(40,12,'content'),(41,80,'packageName'),(42,75,'u'),(43,75,'json'),(44,81,'np_app_key'),(45,76,'np_app_key'),(46,79,'np_app_key'),(47,77,'np_app_key'),(48,78,'np_app_key'),(49,13,'service_channel'),(50,75,'ap'),(51,75,'ad'),(52,75,'a'),(53,75,'s'),(54,72,'ADMOB_PUBLISHER_ID'),(55,19,'lineName'),(56,72,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(57,25,'stationsDir'),(58,75,'au'),(59,75,'ru'),(60,75,'nosk'),(61,80,'fileURL'),(62,75,'t'),(63,75,'sc'),(64,75,'su'),(65,78,'iconURL'),(66,75,'sd'),(67,75,'b'),(68,78,'apkTitle'),(69,78,'imageURL'),(70,75,'or'),(71,78,'detailFlag'),(72,75,'int'),(73,75,'c'),(74,78,'apkInfo'),(75,78,'apkURL'),(76,75,'sin'),(77,75,'$'),(78,75,'cs'),(79,81,'fileName'),(80,78,'apkSoftID'),(81,75,'o'),(82,75,'mi'),(83,81,'fileURL'),(84,72,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(85,75,'msm'),(86,78,'apkSize'),(87,75,'sku'),(88,75,'tr'),(89,75,'p'),(90,34,'salesid'),(91,75,'rd'),(92,35,'salesid'),(93,75,'cbo'),(94,32,'salesid'),(95,78,'apkVersion'),(96,75,'si'),(97,75,'oi'),(98,75,'skd'),(99,78,'packageName'),(100,34,'ACTIVITY_PARAM_KEY'),(101,34,'cpid'),(102,35,'cpid'),(103,32,'cpid'),(104,34,'did'),(105,35,'did'),(106,32,'did'),(107,25,'stations'),(108,18,'cityCode'),(109,32,'qstr'),(110,34,'ptid'),(111,35,'ptid'),(112,32,'ptid'),(113,19,'cityCode'),(114,19,'lineId'),(115,24,'cityCode');
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
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'s',0,NULL,NULL),(7,7,'s',0,NULL,NULL),(8,8,'r',0,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'r',1,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'s',1,NULL,NULL),(14,14,'r',1,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',1,NULL,NULL),(35,35,'s',0,5,NULL),(36,36,'r',1,NULL,NULL),(37,37,'a',1,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',1,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'r',1,NULL,NULL),(42,42,'a',1,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,71,'a',0,NULL,NULL),(72,72,'a',1,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,74,'a',1,NULL,NULL),(75,75,'a',0,NULL,NULL),(76,76,'a',1,NULL,NULL),(77,77,'a',0,NULL,NULL),(78,78,'a',0,NULL,NULL),(79,79,'s',0,NULL,NULL),(80,80,'s',0,NULL,NULL),(81,81,'r',0,NULL,NULL),(82,82,'r',1,NULL,NULL),(83,83,'a',1,NULL,NULL),(84,84,'a',0,NULL,NULL),(85,85,'a',0,NULL,NULL),(86,86,'a',0,NULL,NULL),(87,87,'a',0,NULL,NULL),(88,88,'a',0,NULL,NULL),(89,89,'a',0,NULL,NULL),(90,90,'a',0,NULL,NULL),(91,91,'a',0,NULL,NULL),(92,92,'a',0,NULL,NULL),(93,93,'a',0,NULL,NULL),(94,94,'a',0,NULL,NULL),(95,95,'a',0,NULL,NULL),(96,96,'a',0,NULL,NULL),(97,97,'a',0,NULL,NULL),(98,98,'a',0,NULL,NULL),(99,99,'a',0,NULL,NULL),(100,100,'a',0,NULL,NULL),(101,101,'a',0,NULL,NULL),(102,102,'a',0,NULL,NULL),(103,103,'a',0,NULL,NULL),(104,104,'a',0,NULL,NULL),(105,105,'a',0,NULL,NULL),(106,106,'a',0,NULL,NULL),(107,107,'a',0,NULL,NULL),(108,108,'a',0,NULL,NULL),(109,109,'a',0,NULL,NULL),(110,110,'a',0,NULL,NULL),(111,111,'a',0,NULL,NULL),(112,112,'a',0,NULL,NULL),(113,113,'a',0,NULL,NULL),(114,114,'a',0,NULL,NULL),(115,115,'a',0,NULL,NULL),(116,116,'a',0,NULL,NULL),(117,117,'a',0,NULL,NULL),(118,118,'a',0,NULL,NULL),(119,119,'a',0,NULL,NULL),(120,120,'a',0,NULL,NULL),(121,121,'a',0,NULL,NULL),(122,122,'a',1,NULL,NULL),(123,123,'a',0,NULL,NULL),(124,124,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,38),(2,2,38),(3,3,39),(4,4,39),(5,5,12),(6,6,14),(7,7,3),(8,8,3),(9,8,4),(10,9,12),(11,9,11),(12,10,9),(13,11,2),(14,12,4),(15,12,3),(16,13,5),(17,14,9),(18,15,2),(19,16,7),(20,17,11),(21,18,2),(22,19,1),(23,19,3),(24,20,12),(25,21,9),(26,22,3),(27,23,9),(28,24,3),(29,24,1),(30,25,3),(31,26,5),(32,27,4),(33,28,9),(34,29,10),(35,30,3),(36,31,14),(37,32,2),(38,33,9),(39,34,1),(40,34,3),(41,35,3),(42,35,1),(43,36,9),(44,37,8),(45,38,11),(46,38,12),(47,39,12),(48,40,19),(49,41,11),(50,42,35),(51,43,12),(52,44,15),(53,45,36),(54,46,9),(55,47,77),(56,48,35),(57,49,15),(58,50,9),(59,51,78),(60,52,9),(61,53,81),(62,54,9),(63,55,35),(64,56,15),(65,57,14),(66,58,15),(67,59,80),(68,60,9),(69,61,35),(70,62,18),(71,63,77),(72,64,78),(73,64,77),(74,65,34),(75,66,34),(76,67,26),(77,67,28),(78,67,29),(79,67,30),(80,67,32),(81,67,33),(82,67,24),(83,68,28),(84,68,30),(85,68,29),(86,68,32),(87,68,33),(88,68,24),(89,68,26),(90,69,76),(91,70,77),(92,71,33),(93,71,32),(94,71,30),(95,71,29),(96,71,26),(97,71,24),(98,72,76),(99,73,28),(100,74,35),(101,75,77),(102,76,35),(103,77,76),(104,78,15),(105,79,76),(106,80,35),(107,81,35),(108,82,82),(109,83,22),(110,84,78),(111,84,77),(112,85,32),(113,85,33),(114,85,30),(115,85,29),(116,85,26),(117,85,24),(118,86,77),(119,87,32),(120,87,33),(121,87,30),(122,87,24),(123,87,28),(124,87,29),(125,87,26),(126,88,32),(127,89,21),(128,90,28),(129,91,15),(130,92,33),(131,92,32),(132,92,29),(133,92,26),(134,92,30),(135,92,24),(136,93,35),(137,94,17),(138,95,24),(139,95,29),(140,95,26),(141,95,30),(142,95,32),(143,95,33);
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
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,38,'<com.LoqkLS.BmcNiNuabahwJ: void a()>',3,'a',NULL),(2,38,'<com.LoqkLS.BmcNiNuabahwJ: void a(java.lang.String)>',10,'a',NULL),(3,125,'<com.nd.dianjin.DianJinPlatform: void showOfferWall(android.content.Context,com.nd.dianjin.DianJinPlatform$Oriention)>',7,'a',NULL),(4,39,'<com.LoqkLS.PpwMTgQBrCeISP: void a()>',3,'a',NULL),(5,12,'<com.pintu_lzlhnyqwyx.GameAlertDialog: void onClick(android.view.View)>',77,'a',NULL),(6,14,'<com.pintu_lzlhnyqwyx.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(7,3,'<com.kIEHPS.fPssjlnU: void b()>',45,'a',NULL),(8,126,'<com.kIEHPS.p: void f(android.content.Context,java.lang.String)>',10,'a',NULL),(9,127,'<j: void a(int,boolean)>',57,'a',NULL),(10,9,'<com.pintu_lzlhnyqwyx.GameInfo: void onCreate(android.os.Bundle)>',90,'s',NULL),(11,2,'<com.kIEHPS.rmOpbJBlnCdg: void onCreate(android.os.Bundle)>',36,'a',NULL),(12,4,'<com.kIEHPS.OdQPUGkPEJvgUal: void a(com.kIEHPS.OdQPUGkPEJvgUal,android.content.Context,java.lang.String)>',5,'a',NULL),(13,5,'<com.pintu_lzlhnyqwyx.PintuActivity: void onCreate(android.os.Bundle)>',86,'s',NULL),(14,128,'<au: void onClick(android.view.View)>',239,'a',NULL),(15,129,'<com.kIEHPS.af: void run()>',8,'s',NULL),(16,7,'<com.kIEHPS.astfMtFaOBRT: void a(java.lang.String)>',10,'a',NULL),(17,11,'<com.pintu_lzlhnyqwyx.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(18,2,'<com.kIEHPS.rmOpbJBlnCdg: void onCreate(android.os.Bundle)>',31,'a',0),(19,130,'<cn.appmedia.ad.f.c: void a(java.util.Map,android.content.Context)>',24,'a',NULL),(20,12,'<com.pintu_lzlhnyqwyx.GameAlertDialog: void onClick(android.view.View)>',68,'a',NULL),(21,9,'<com.pintu_lzlhnyqwyx.GameInfo: void onCreate(android.os.Bundle)>',177,'a',NULL),(22,3,'<com.kIEHPS.fPssjlnU: void b()>',55,'a',NULL),(23,131,'<av: void onClick(android.view.View)>',221,'a',NULL),(24,132,'<cn.appmedia.ad.f.d: void a(java.util.Map,android.content.Context)>',17,'a',NULL),(25,3,'<com.kIEHPS.fPssjlnU: void a()>',3,'a',NULL),(26,5,'<com.pintu_lzlhnyqwyx.PintuActivity: void onCreate(android.os.Bundle)>',82,'s',NULL),(27,4,'<com.kIEHPS.OdQPUGkPEJvgUal: void onCreate(android.os.Bundle)>',67,'a',NULL),(28,9,'<com.pintu_lzlhnyqwyx.GameInfo: void onCreate(android.os.Bundle)>',33,'s',NULL),(29,133,'<com.kIEHPS.ah: void run()>',25,'s',NULL),(30,3,'<com.kIEHPS.fPssjlnU: void onBackPressed()>',5,'a',NULL),(31,14,'<com.pintu_lzlhnyqwyx.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(32,2,'<com.kIEHPS.rmOpbJBlnCdg: void onCreate(android.os.Bundle)>',21,'a',NULL),(33,131,'<av: void onClick(android.view.View)>',242,'a',NULL),(34,130,'<cn.appmedia.ad.f.c: void a(java.util.Map,android.content.Context)>',36,'a',NULL),(35,134,'<cn.appmedia.ad.f.e: void a(java.util.Map,android.content.Context)>',12,'a',NULL),(36,9,'<com.pintu_lzlhnyqwyx.GameInfo: void onCreate(android.os.Bundle)>',81,'a',NULL),(37,8,'<com.kIEHPS.MDVPJLIVPCm: void c(android.content.Context)>',74,'a',NULL),(38,127,'<j: void a(int,boolean)>',10,'s',NULL),(39,12,'<com.pintu_lzlhnyqwyx.GameAlertDialog: void onClick(android.view.View)>',59,'a',NULL),(40,135,'<com.etagmedia.metro.MetroLineStationsActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',36,'a',NULL),(41,11,'<com.pintu_lzlhnyqwyx.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(42,136,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',24,'p',0),(43,12,'<com.pintu_lzlhnyqwyx.GameAlertDialog: void onClick(android.view.View)>',46,'a',NULL),(44,137,'<com.etagmedia.metro.MetroActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',33,'a',NULL),(45,36,'<com.geinimi.AdServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',13,'s',NULL),(46,138,'<ba: void onClick(android.view.View)>',218,'a',NULL),(47,77,'<com.nSJQKNhN.AEAiTHQgFqF: void b()>',45,'a',NULL),(48,136,'<com.geinimi.c.b: boolean a(java.lang.String)>',7,'p',NULL),(49,139,'<com.etagmedia.metro.MetroActivity$3$1: void run()>',7,'a',NULL),(50,9,'<com.pintu_lzlhnyqwyx.GameInfo: void onCreate(android.os.Bundle)>',172,'a',NULL),(51,78,'<com.nSJQKNhN.PwKmHVQNhH: void onCreate(android.os.Bundle)>',67,'a',NULL),(52,9,'<com.pintu_lzlhnyqwyx.GameInfo: void onCreate(android.os.Bundle)>',76,'a',NULL),(53,81,'<com.nSJQKNhN.kNgVKDtslGcsV: void c(android.content.Context)>',74,'a',NULL),(54,128,'<au: void onClick(android.view.View)>',218,'a',NULL),(55,136,'<com.geinimi.c.b: java.util.Vector a()>',30,'p',NULL),(56,137,'<com.etagmedia.metro.MetroActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(57,14,'<com.pintu_lzlhnyqwyx.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(58,137,'<com.etagmedia.metro.MetroActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',20,'a',NULL),(59,80,'<com.nSJQKNhN.gGDKGPJv: void a(java.lang.String)>',10,'a',NULL),(60,138,'<ba: void onClick(android.view.View)>',239,'a',NULL),(61,136,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',13,'p',NULL),(62,140,'<com.etagmedia.metro.MetroStationsActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',33,'a',NULL),(63,77,'<com.nSJQKNhN.AEAiTHQgFqF: void b()>',55,'a',NULL),(64,141,'<com.nSJQKNhN.w: void f(android.content.Context,java.lang.String)>',10,'a',NULL),(65,142,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',30,'a',NULL),(66,142,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',24,'s',NULL),(67,143,'<com.etagmedia.metro.MetroNeighStationsActivity$4: void onClick(android.view.View)>',12,'a',NULL),(68,144,'<com.etagmedia.metro.MetroNeighStationsActivity$3: void onClick(android.view.View)>',12,'a',NULL),(69,76,'<com.nSJQKNhN.mWkVinPdgERp: void onCreate(android.os.Bundle)>',36,'a',NULL),(70,77,'<com.nSJQKNhN.AEAiTHQgFqF: void a()>',3,'a',NULL),(71,145,'<com.etagmedia.metro.PlacemarkListActivity$1: void onClick(android.view.View)>',13,'a',NULL),(72,76,'<com.nSJQKNhN.mWkVinPdgERp: void onCreate(android.os.Bundle)>',31,'a',0),(73,28,'<com.etagmedia.metro.MetroNeighStationsActivity: boolean onKeyDown(int,android.view.KeyEvent)>',17,'a',NULL),(74,136,'<com.geinimi.c.b: java.util.Vector a()>',51,'p',NULL),(75,77,'<com.nSJQKNhN.AEAiTHQgFqF: void onBackPressed()>',5,'a',NULL),(76,146,'<com.geinimi.AdService: void onDestroy()>',11,'s',NULL),(77,147,'<com.nSJQKNhN.af: void run()>',8,'s',NULL),(78,137,'<com.etagmedia.metro.MetroActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',38,'a',NULL),(79,76,'<com.nSJQKNhN.mWkVinPdgERp: void onCreate(android.os.Bundle)>',21,'a',NULL),(80,136,'<com.geinimi.c.b: java.util.Vector a()>',5,'p',NULL),(81,148,'<com.geinimi.ads.c: boolean b()>',24,'p',NULL),(82,149,'<com.nSJQKNhN.ah: void run()>',25,'s',NULL),(83,150,'<com.etagmedia.metro.MetroOtherActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(84,78,'<com.nSJQKNhN.PwKmHVQNhH: void a(com.nSJQKNhN.PwKmHVQNhH,android.content.Context,java.lang.String)>',5,'a',NULL),(85,151,'<com.etagmedia.metro.LocalSearchActivity$1: void onClick(android.view.View)>',37,'a',NULL),(86,152,'<com.admob.android.ads.q: void a(android.content.Context)>',11,'a',0),(87,153,'<com.etagmedia.metro.MetroNeighStationsActivity$2: void onClick(android.view.View)>',12,'a',NULL),(88,154,'<com.etagmedia.metro.PlacemarkListActivity$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(89,21,'<com.etagmedia.metro.MetroStationOriActivity: boolean onChildClick(android.widget.ExpandableListView,android.view.View,int,int,long)>',19,'a',NULL),(90,155,'<com.etagmedia.metro.MetroNeighStationsActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',26,'a',NULL),(91,137,'<com.etagmedia.metro.MetroActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',25,'a',NULL),(92,145,'<com.etagmedia.metro.PlacemarkListActivity$1: void onClick(android.view.View)>',26,'a',NULL),(93,156,'<com.geinimi.c.j: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(94,157,'<com.etagmedia.metro.MetroLinesActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',29,'a',NULL),(95,158,'<com.etagmedia.metro.MetroTransferSelActivity$3$1: void run()>',67,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,5),(2,6,6),(3,8,5),(4,12,1),(5,14,1),(6,15,1),(7,16,1),(8,17,1),(9,19,1),(10,20,5),(11,22,5),(12,23,7),(13,24,5),(14,27,5),(15,28,5),(16,29,8),(17,31,9),(18,32,1),(19,33,10),(20,34,1),(21,38,6),(22,40,1),(23,41,1),(24,43,1),(25,44,1),(26,45,11),(27,49,5),(28,51,5),(29,52,1),(30,53,1),(31,57,5),(32,59,5),(33,64,1),(34,66,1),(35,71,5),(36,72,5),(37,76,5),(38,77,1),(39,78,1),(40,79,1),(41,82,1),(42,83,5),(43,99,1),(44,101,1),(45,108,13),(46,109,14);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,12,1),(2,14,3),(3,15,1),(4,16,3),(5,17,1),(6,19,3),(7,32,1),(8,34,3),(9,40,1),(10,41,3),(11,43,1),(12,44,3),(13,52,1),(14,53,3),(15,64,1),(16,66,3),(17,77,1),(18,78,3),(19,79,1),(20,82,3),(21,99,1),(22,101,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'baltorogames/nquaijhep/Kartmania3D'),(2,3,'com/nd/dianjin/activity/OfferAppActivity'),(3,4,'baltorogames/nquaijhep/Kartmania3D'),(4,5,'com/pintu_lzlhnyqwyx/GameAlertDialog'),(5,6,'com/pintu_lzlhnyqwyx/GameService'),(6,7,'com/mofpulw/drqvjtiiog/BGActivity'),(7,9,'com/pintu_lzlhnyqwyx/PintuActivity'),(8,10,'com/pintu_lzlhnyqwyx/GameService'),(9,11,'com/kIEHPS/fPssjlnU'),(10,13,'com/pintu_lzlhnyqwyx/GameService'),(11,18,'com/kIEHPS/mbwriEecLIQTii'),(12,21,'com/pintu_lzlhnyqwyx/GameInfo'),(13,25,'com/pintu_lzlhnyqwyx/PintuActivity'),(14,26,'com/mofpulw/drqvjtiiog/BGActivity'),(15,30,'com/mofpulw/drqvjtiiog/BGActivity'),(16,31,'com/pintu_lzlhnyqwyx/GameService'),(17,33,'com/pintu_lzlhnyqwyx/GameService'),(18,35,'com/pintu_lzlhnyqwyx/GameService'),(19,36,'com/kIEHPS/mbwriEecLIQTii'),(20,37,'com/mofpulw/drqvjtiiog/BGActivity'),(21,38,'com/pintu_lzlhnyqwyx/GameService'),(22,39,'com/kIEHPS/fPssjlnU'),(23,42,'cn/appmedia/ad/AdActivity'),(24,46,'com/pintu_lzlhnyqwyx/PintuActivity'),(25,48,'com/pintu_lzlhnyqwyx/GameService'),(26,47,'com/kIEHPS/OdQPUGkPEJvgUal'),(27,50,'com/etagmedia/metro/MetroStationInfoActivity'),(28,55,'com/etagmedia/metro/MetroTransferSelActivity'),(29,54,'com/pintu_lzlhnyqwyx/GameInfo'),(30,56,'(.*)'),(31,58,'i/l/l/ooooooooo'),(32,61,'com/etagmedia/metro/MetroStationOriActivity'),(33,62,'com/etagmedia/metro/comm/MapOrientationActivity'),(34,63,'com/pintu_lzlhnyqwyx/PintuActivity'),(35,65,'com/etagmedia/metro/comm/MapOrientationActivity'),(36,67,'com/etagmedia/metro/MetroNeighStationsActivity'),(37,68,'com/pintu_lzlhnyqwyx/PintuActivity'),(38,70,'com/etagmedia/metro/MetroNeighStationsActivity'),(39,69,'com/nSJQKNhN/PwKmHVQNhH'),(40,73,'com/etagmedia/metro/MetroMapActivity'),(41,74,'com/pintu_lzlhnyqwyx/GameService'),(42,75,'com/etagmedia/metro/MetroLinesActivity'),(43,81,'i/l/l/ooooooooo'),(44,80,'com/etagmedia/metro/MetroStationInfoActivity'),(45,84,'(.*)'),(46,85,'(.*)'),(47,86,'com/etagmedia/metro/LocalSearchActivity'),(48,87,'com/etagmedia/metro/comm/MapUtilActivity'),(49,88,'com/nSJQKNhN/AEAiTHQgFqF'),(50,89,'i/l/l/ooooooooo'),(51,90,'com/etagmedia/metro/PlacemarkMapActivity'),(52,91,'com/etagmedia/metro/comm/MapOrientationActivity'),(53,92,'i/l/l/ooooooooo'),(54,93,'(.*)'),(55,94,'com/nSJQKNhN/MsShHFlokQegC'),(56,95,'com/etagmedia/metro/MetroOtherActivity'),(57,96,'com/nSJQKNhN/AEAiTHQgFqF'),(58,97,'com/nSJQKNhN/MsShHFlokQegC'),(59,98,'com/etagmedia/metro/MetroOthAboutActivity'),(60,100,'com/etagmedia/metro/PlacemarkListActivity'),(61,102,'com/etagmedia/metro/ar/MixView'),(62,103,'com/etagmedia/metro/PlacemarkMapActivity'),(63,104,'com/etagmedia/metro/MetroNeighStationsActivity'),(64,105,'com/etagmedia/metro/MetroStationInfoActivity'),(65,106,'com/etagmedia/metro/MetroStationsActivity'),(66,107,'com/etagmedia/metro/ar/MixView'),(67,110,'com/etagmedia/metro/MetroLineStationsActivity'),(68,111,'com/etagmedia/metro/MetroTransferLinesActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,2,1),(2,8,2),(3,20,3),(4,22,4),(5,24,5),(6,27,6),(7,28,7),(8,29,8),(9,45,9),(10,49,10),(11,51,11),(12,57,13),(13,59,14),(14,71,15),(15,72,17),(16,76,18),(17,83,20);
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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,3,'oriention'),(2,5,'title'),(3,5,'btn_txt'),(4,5,'need_adb_flag'),(5,5,'cont'),(6,5,'close_flag'),(7,21,'game'),(8,21,'fromtype'),(9,29,'sms_body'),(10,42,'type'),(11,42,'url'),(12,47,'apkVersion'),(13,47,'apkURL'),(14,47,'apkInfo'),(15,47,'packageName'),(16,47,'apkSoftID'),(17,47,'apkTitle'),(18,47,'iconURL'),(19,47,'apkSize'),(20,47,'imageURL'),(21,50,'startStation'),(22,50,'endStation'),(23,50,'cityCode'),(24,50,'stationId'),(25,50,'stationName'),(26,50,'lineId'),(27,54,'id'),(28,55,'cityCode'),(29,54,'from_alert'),(30,54,'detail_flag'),(31,62,'latRet'),(32,65,'lngRet'),(33,65,'latRet'),(34,67,'lngRet'),(35,67,'latRet'),(36,69,'apkVersion'),(37,69,'apkURL'),(38,70,'latRet'),(39,69,'apkInfo'),(40,69,'packageName'),(41,69,'apkSoftID'),(42,69,'apkTitle'),(43,69,'iconURL'),(44,69,'apkSize'),(45,69,'imageURL'),(46,73,'cityCode'),(47,75,'cityCode'),(48,80,'cityCode'),(49,80,'stationId'),(50,80,'stationName'),(51,86,'oriLng'),(52,86,'oriLat'),(53,87,'curLat'),(54,87,'curLng'),(55,90,'latlng'),(56,91,'lngRet'),(57,91,'latRet'),(58,95,'cityCode'),(59,100,'lng'),(60,100,'qstr'),(61,100,'lat'),(62,102,'lng'),(63,102,'lat'),(64,103,'latlng'),(65,103,'object'),(66,104,'lngRet'),(67,104,'latRet'),(68,105,'stationId'),(69,105,'stationName'),(70,106,'cityCode'),(71,107,'lng'),(72,107,'lat'),(73,108,'android.intent.extra.shortcut.NAME'),(74,108,'android.intent.extra.shortcut.ICON'),(75,108,'android.intent.extra.shortcut.INTENT'),(76,109,'android.intent.extra.shortcut.NAME'),(77,109,'android.intent.extra.shortcut.ICON'),(78,109,'android.intent.extra.shortcut.INTENT'),(79,110,'cityCode'),(80,110,'lineName'),(81,110,'lineId'),(82,111,'stationsDir'),(83,111,'stations'),(84,111,'stationRight'),(85,111,'lineNames'),(86,111,'totalRight');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,2,1),(2,3,1),(3,4,1),(4,5,2),(5,6,1),(6,7,1),(7,8,3),(8,10,1),(9,11,3),(10,13,1),(11,14,4),(12,17,1),(13,18,1),(14,19,2),(15,21,1),(16,22,4),(17,23,4),(18,24,12);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,2,1),(2,3,1),(3,3,2),(4,7,1),(5,9,1),(6,10,1),(7,11,1),(8,13,1),(9,17,1),(10,18,1),(11,21,1),(12,23,4),(13,24,4);
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
INSERT INTO `IFData` VALUES (1,14,'package',NULL,NULL,NULL,NULL,NULL),(2,22,'package',NULL,NULL,NULL,NULL,NULL),(3,23,'package',NULL,NULL,NULL,NULL,NULL),(4,24,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,2,'application','vnd.android.package-archive'),(2,8,'application','vnd.android.package-archive'),(3,20,'application','vnd.android.package-archive'),(4,27,'application','vnd.android.package-archive'),(5,28,'application','vnd.android.package-archive'),(6,57,'application','vnd.android.package-archive'),(7,59,'application','vnd.android.package-archive'),(8,71,'application','vnd.android.package-archive'),(9,72,'application','vnd.android.package-archive'),(10,76,'application','vnd.android.package-archive'),(11,83,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'baltorogames.nquaijhep'),(2,3,'baltorogames.nquaijhep'),(3,4,'baltorogames.nquaijhep'),(4,5,'com.pintu_lzlhnyqwyx'),(5,6,'com.pintu_lzlhnyqwyx'),(6,7,'com.mofpulw.drqvjtiiog'),(7,9,'com.pintu_lzlhnyqwyx'),(8,10,'com.pintu_lzlhnyqwyx'),(9,11,'com.mofpulw.drqvjtiiog'),(10,13,'com.pintu_lzlhnyqwyx'),(11,12,'(.*)'),(12,14,'(.*)'),(13,15,'(.*)'),(14,16,''),(15,18,'com.mofpulw.drqvjtiiog'),(16,17,''),(17,19,'(.*)'),(18,21,'com.pintu_lzlhnyqwyx'),(19,25,'com.pintu_lzlhnyqwyx'),(20,26,'com.mofpulw.drqvjtiiog'),(21,30,'com.mofpulw.drqvjtiiog'),(22,31,'com.pintu_lzlhnyqwyx'),(23,32,'(.*)'),(24,33,'com.pintu_lzlhnyqwyx'),(25,34,'(.*)'),(26,35,'com.pintu_lzlhnyqwyx'),(27,36,'com.mofpulw.drqvjtiiog'),(28,37,'com.mofpulw.drqvjtiiog'),(29,38,'com.pintu_lzlhnyqwyx'),(30,39,'com.mofpulw.drqvjtiiog'),(31,40,'(.*)'),(32,41,''),(33,42,'com.mofpulw.drqvjtiiog'),(34,43,''),(35,44,'(.*)'),(36,46,'com.pintu_lzlhnyqwyx'),(37,48,'com.pintu_lzlhnyqwyx'),(38,47,'com.mofpulw.drqvjtiiog'),(39,50,'com.etagmedia.metro'),(40,52,'(.*)'),(41,53,'(.*)'),(42,55,'com.etagmedia.metro'),(43,54,'com.pintu_lzlhnyqwyx'),(44,56,'com.etagmedia.metro'),(45,58,'com.jpg.ahck.lbmvo'),(46,61,'com.etagmedia.metro'),(47,62,'com.etagmedia.metro'),(48,63,'com.pintu_lzlhnyqwyx'),(49,64,'(.*)'),(50,65,'com.etagmedia.metro'),(51,66,'(.*)'),(52,67,'com.etagmedia.metro'),(53,68,'com.pintu_lzlhnyqwyx'),(54,70,'com.etagmedia.metro'),(55,69,'com.jpg.ahck.lbmvo'),(56,73,'com.etagmedia.metro'),(57,74,'com.pintu_lzlhnyqwyx'),(58,75,'com.etagmedia.metro'),(59,77,'(.*)'),(60,78,''),(61,79,''),(62,81,'com.jpg.ahck.lbmvo'),(63,80,'com.etagmedia.metro'),(64,82,'(.*)'),(65,84,'com.etagmedia.metro'),(66,85,'com.etagmedia.metro'),(67,86,'com.etagmedia.metro'),(68,87,'com.etagmedia.metro'),(69,88,'com.jpg.ahck.lbmvo'),(70,89,'com.jpg.ahck.lbmvo'),(71,90,'com.etagmedia.metro'),(72,91,'com.etagmedia.metro'),(73,92,'com.jpg.ahck.lbmvo'),(74,93,'com.etagmedia.metro'),(75,94,'com.jpg.ahck.lbmvo'),(76,95,'com.etagmedia.metro'),(77,96,'com.jpg.ahck.lbmvo'),(78,97,'com.jpg.ahck.lbmvo'),(79,98,'com.etagmedia.metro'),(80,99,'(.*)'),(81,100,'com.etagmedia.metro'),(82,101,'(.*)'),(83,102,'com.etagmedia.metro'),(84,103,'com.etagmedia.metro'),(85,104,'com.etagmedia.metro'),(86,105,'com.etagmedia.metro'),(87,106,'com.etagmedia.metro'),(88,107,'com.etagmedia.metro'),(89,110,'com.etagmedia.metro'),(90,111,'com.etagmedia.metro');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,5,0),(4,9,0),(5,10,0),(6,11,0),(7,13,0),(8,14,0),(9,15,0),(10,34,0),(11,36,0),(12,37,0),(13,39,0),(14,41,0),(15,42,0),(16,72,0),(17,74,0),(18,76,0),(19,82,0),(20,83,0),(21,122,0),(22,124,0),(23,14,0),(24,14,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,3,0,0),(4,4,0,0),(5,5,0,0),(6,6,0,0),(7,7,0,0),(8,8,1,0),(9,9,0,0),(10,10,0,0),(11,11,0,0),(12,12,1,0),(13,13,0,0),(14,12,1,0),(15,14,1,0),(16,14,1,0),(17,14,1,0),(18,15,0,0),(19,14,1,0),(20,16,1,0),(21,17,0,0),(22,19,1,0),(23,20,1,0),(24,19,1,0),(25,21,0,0),(26,22,0,0),(27,23,1,0),(28,23,1,0),(29,24,1,0),(30,25,0,0),(31,26,0,0),(32,27,1,0),(33,26,0,0),(34,27,1,0),(35,28,0,0),(36,29,0,0),(37,30,0,0),(38,31,0,0),(39,32,0,0),(40,33,1,0),(41,33,1,0),(42,34,0,0),(43,33,1,0),(44,33,1,0),(45,35,1,0),(46,36,0,0),(47,37,0,0),(48,38,0,0),(49,39,1,0),(50,40,0,0),(51,39,1,0),(52,41,1,0),(53,41,1,0),(54,43,0,0),(55,44,0,0),(56,45,0,0),(57,46,1,0),(58,47,0,0),(59,46,1,0),(60,49,1,0),(61,49,0,0),(62,49,0,0),(63,50,0,0),(64,51,1,0),(65,49,0,0),(66,51,1,0),(67,49,0,0),(68,52,0,0),(69,53,0,0),(70,49,0,0),(71,54,1,0),(72,54,1,0),(73,56,0,0),(74,57,0,0),(75,58,0,0),(76,59,1,0),(77,60,1,0),(78,60,1,0),(79,60,1,0),(80,62,0,0),(81,63,0,0),(82,60,1,0),(83,64,1,0),(84,65,0,0),(85,66,0,0),(86,67,0,0),(87,68,0,0),(88,69,0,0),(89,70,0,0),(90,71,0,0),(91,73,0,0),(92,75,0,0),(93,76,0,0),(94,77,0,0),(95,78,0,0),(96,79,0,0),(97,82,0,0),(98,83,0,0),(99,84,1,0),(100,85,0,0),(101,84,1,0),(102,87,0,0),(103,88,0,0),(104,89,0,0),(105,90,0,0),(106,91,0,0),(107,92,0,0),(108,93,1,0),(109,93,1,0),(110,94,0,0),(111,95,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=292 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,12,15,2,NULL),(2,14,15,2,NULL),(3,32,15,2,NULL),(4,34,15,2,NULL),(5,52,15,2,NULL),(6,53,15,2,NULL),(7,23,15,2,NULL),(8,49,15,2,NULL),(9,51,15,2,NULL),(10,64,15,2,NULL),(11,66,15,2,NULL),(12,99,15,2,NULL),(13,101,15,2,NULL),(14,104,28,2,NULL),(15,91,26,2,NULL),(16,12,34,2,NULL),(17,14,34,2,NULL),(18,32,34,2,NULL),(19,34,34,2,NULL),(20,52,34,2,NULL),(21,53,34,2,NULL),(22,23,34,2,NULL),(23,49,34,2,NULL),(24,51,34,2,NULL),(25,64,34,2,NULL),(26,66,34,2,NULL),(27,99,34,2,NULL),(28,101,34,2,NULL),(29,12,36,2,NULL),(30,14,36,2,NULL),(31,32,36,2,NULL),(32,34,36,2,NULL),(33,52,36,2,NULL),(34,53,36,2,NULL),(35,23,36,2,NULL),(36,49,36,2,NULL),(37,51,36,2,NULL),(38,64,36,2,NULL),(39,66,36,2,NULL),(40,99,36,2,NULL),(41,101,36,2,NULL),(42,12,42,2,NULL),(43,14,42,2,NULL),(44,32,42,2,NULL),(45,34,42,2,NULL),(46,52,42,2,NULL),(47,12,83,2,NULL),(48,53,42,2,NULL),(49,14,83,2,NULL),(50,23,42,2,NULL),(51,32,83,2,NULL),(52,49,42,2,NULL),(53,34,83,2,NULL),(54,51,42,2,NULL),(55,52,83,2,NULL),(56,64,42,2,NULL),(57,53,83,2,NULL),(58,66,42,2,NULL),(59,23,83,2,NULL),(60,99,42,2,NULL),(61,49,83,2,NULL),(62,101,42,2,NULL),(63,51,83,2,NULL),(64,12,74,2,NULL),(65,64,83,2,NULL),(66,14,74,2,NULL),(67,66,83,2,NULL),(68,32,74,2,NULL),(69,99,83,2,NULL),(70,34,74,2,NULL),(71,101,83,2,NULL),(72,52,74,2,NULL),(73,12,122,2,NULL),(74,53,74,2,NULL),(75,14,122,2,NULL),(76,23,74,2,NULL),(77,32,122,2,NULL),(78,49,74,2,NULL),(79,34,122,2,NULL),(80,51,74,2,NULL),(81,52,122,2,NULL),(82,64,74,2,NULL),(83,53,122,2,NULL),(84,66,74,2,NULL),(85,23,122,2,NULL),(86,99,74,2,NULL),(87,49,122,2,NULL),(88,101,74,2,NULL),(89,51,122,2,NULL),(90,64,122,2,NULL),(91,66,122,2,NULL),(92,99,122,2,NULL),(93,101,122,2,NULL),(94,12,72,2,NULL),(95,14,72,2,NULL),(96,32,72,2,NULL),(97,34,72,2,NULL),(98,52,72,2,NULL),(99,53,72,2,NULL),(100,23,72,2,NULL),(101,49,72,2,NULL),(102,51,72,2,NULL),(103,64,72,2,NULL),(104,66,72,2,NULL),(105,99,72,2,NULL),(106,12,1,2,NULL),(107,101,72,2,NULL),(108,14,1,2,NULL),(109,88,77,2,NULL),(110,32,1,2,NULL),(111,96,77,2,NULL),(112,34,1,2,NULL),(113,12,76,2,NULL),(114,52,1,2,NULL),(115,14,76,2,NULL),(116,53,1,2,NULL),(117,32,76,2,NULL),(118,23,1,2,NULL),(119,34,76,2,NULL),(120,49,1,2,NULL),(121,52,76,2,NULL),(122,13,13,2,NULL),(123,51,1,2,NULL),(124,53,76,2,NULL),(125,64,1,2,NULL),(126,31,13,2,NULL),(127,23,76,2,NULL),(128,66,1,2,NULL),(129,33,13,2,NULL),(130,49,76,2,NULL),(131,99,1,2,NULL),(132,51,76,2,NULL),(133,12,5,2,NULL),(134,101,1,2,NULL),(135,64,76,2,NULL),(136,14,5,2,NULL),(137,11,3,2,NULL),(138,32,5,2,NULL),(139,66,76,2,NULL),(140,39,3,2,NULL),(141,34,5,2,NULL),(142,99,76,2,NULL),(143,12,2,2,NULL),(144,101,76,2,NULL),(145,52,5,2,NULL),(146,14,2,2,NULL),(147,58,72,2,NULL),(148,53,5,2,NULL),(149,32,2,2,NULL),(150,81,72,2,NULL),(151,23,5,2,NULL),(152,34,2,2,NULL),(153,49,5,2,NULL),(154,89,72,2,NULL),(155,52,2,2,NULL),(156,51,5,2,NULL),(157,92,72,2,NULL),(158,53,2,2,NULL),(159,64,2,2,NULL),(160,64,5,2,NULL),(161,23,2,2,NULL),(162,66,2,2,NULL),(163,66,5,2,NULL),(164,49,2,2,NULL),(165,99,2,2,NULL),(166,99,5,2,NULL),(167,51,2,2,NULL),(168,101,2,2,NULL),(169,101,5,2,NULL),(170,7,1,2,NULL),(171,10,13,2,NULL),(172,64,10,2,NULL),(173,26,1,2,NULL),(174,66,10,2,NULL),(175,25,5,2,NULL),(176,30,1,2,NULL),(177,99,10,2,NULL),(178,35,13,2,NULL),(179,37,1,2,NULL),(180,101,10,2,NULL),(181,46,5,2,NULL),(182,12,10,2,NULL),(183,64,9,2,NULL),(184,63,5,2,NULL),(185,14,10,2,NULL),(186,66,9,2,NULL),(187,68,5,2,NULL),(188,32,10,2,NULL),(189,99,9,2,NULL),(190,12,9,2,NULL),(191,34,10,2,NULL),(192,101,9,2,NULL),(193,14,9,2,NULL),(194,32,9,2,NULL),(195,64,11,2,NULL),(196,34,9,2,NULL),(197,12,11,2,NULL),(198,52,9,2,NULL),(199,66,11,2,NULL),(200,14,11,2,NULL),(201,53,9,2,NULL),(202,99,11,2,NULL),(203,32,11,2,NULL),(204,101,11,2,NULL),(205,23,9,2,NULL),(206,34,11,2,NULL),(207,64,13,2,NULL),(208,49,9,2,NULL),(209,12,13,2,NULL),(210,66,13,2,NULL),(211,51,9,2,NULL),(212,14,13,2,NULL),(213,99,13,2,NULL),(214,21,9,2,NULL),(215,32,13,2,NULL),(216,101,13,2,NULL),(217,52,10,2,NULL),(218,34,13,2,NULL),(219,53,10,2,NULL),(220,64,14,2,NULL),(221,12,14,2,NULL),(222,66,14,2,NULL),(223,23,11,2,NULL),(224,14,14,2,NULL),(225,99,14,2,NULL),(226,49,11,2,NULL),(227,32,14,2,NULL),(228,51,11,2,NULL),(229,101,14,2,NULL),(230,34,14,2,NULL),(231,52,13,2,NULL),(232,64,37,2,NULL),(233,12,37,2,NULL),(234,66,37,2,NULL),(235,53,13,2,NULL),(236,14,37,2,NULL),(237,99,37,2,NULL),(238,52,14,2,NULL),(239,32,37,2,NULL),(240,101,37,2,NULL),(241,34,37,2,NULL),(242,53,14,2,NULL),(243,64,39,2,NULL),(244,12,39,2,NULL),(245,52,37,2,NULL),(246,66,39,2,NULL),(247,14,39,2,NULL),(248,53,37,2,NULL),(249,99,39,2,NULL),(250,52,39,2,NULL),(251,32,39,2,NULL),(252,101,39,2,NULL),(253,53,39,2,NULL),(254,34,39,2,NULL),(255,64,82,2,NULL),(256,12,82,2,NULL),(257,52,82,2,NULL),(258,66,82,2,NULL),(259,14,82,2,NULL),(260,53,82,2,NULL),(261,99,82,2,NULL),(262,32,82,2,NULL),(263,5,12,2,NULL),(264,101,82,2,NULL),(265,34,82,2,NULL),(266,54,9,2,NULL),(267,69,78,2,NULL),(268,23,10,2,NULL),(269,47,4,2,NULL),(270,23,82,2,NULL),(271,49,10,2,NULL),(272,51,10,2,NULL),(273,49,82,2,NULL),(274,23,13,2,NULL),(275,51,82,2,NULL),(276,49,13,2,NULL),(277,51,13,2,NULL),(278,23,14,2,NULL),(279,49,14,2,NULL),(280,51,14,2,NULL),(281,23,37,2,NULL),(282,49,37,2,NULL),(283,51,37,2,NULL),(284,23,39,2,NULL),(285,49,39,2,NULL),(286,51,39,2,NULL),(287,6,13,2,NULL),(288,38,13,2,NULL),(289,74,13,2,NULL),(290,1,37,2,NULL),(291,4,37,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (9,'android.permission.ACCESS_CACHE_FILESYSTEM'),(16,'android.permission.ACCESS_COARSE_LOCATION'),(25,'android.permission.ACCESS_FINE_LOCATION'),(21,'android.permission.ACCESS_GPS'),(14,'android.permission.ACCESS_LOCATION'),(7,'android.permission.ACCESS_NETWORK_STATE'),(30,'android.permission.ACCESS_WIFI_STATE'),(28,'android.permission.BLUETOOTH'),(31,'android.permission.BLUETOOTH_ADMIN'),(18,'android.permission.CALL_PHONE'),(23,'android.permission.CAMERA'),(11,'android.permission.DELETE_CACHE_FILES'),(4,'android.permission.GET_TASKS'),(5,'android.permission.INTERNET'),(20,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(17,'android.permission.READ_CONTACTS'),(10,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(22,'android.permission.READ_SMS'),(8,'android.permission.RECEIVE_BOOT_COMPLETED'),(32,'android.permission.RECORD_AUDIO'),(15,'android.permission.SEND_SMS'),(13,'android.permission.SET_WALLPAPER'),(3,'android.permission.SYSTEM_ALERT_WINDOW'),(29,'android.permission.VIBRATE'),(26,'android.permission.WAKE_LOCK'),(19,'android.permission.WRITE_CONTACTS'),(6,'android.permission.WRITE_EXTERNAL_STORAGE'),(27,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(24,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(2,'com.android.launcher.permission.INSTALL_SHORTCUT'),(12,'com.android.launcher.permission.UNINSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(4,NULL,NULL,'http://(.*)',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(7,NULL,NULL,'file://',NULL,NULL,NULL),(8,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(9,NULL,NULL,'tel://(.*)',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'',NULL,NULL,NULL),(12,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(13,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(14,NULL,NULL,'file://',NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(16,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(17,NULL,NULL,'file://',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(19,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(20,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(21,NULL,NULL,'content://com.android.contacts/data/emails',NULL,NULL,NULL),(22,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(23,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,48,12),(2,55,16),(3,61,19),(4,74,21),(5,80,22),(6,81,23);
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
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,1),(9,2,2),(10,2,5),(11,2,6),(12,2,7),(13,2,8),(14,2,9),(15,2,10),(16,2,11),(17,2,12),(18,3,1),(19,3,2),(20,3,5),(21,3,6),(22,3,7),(23,3,13),(24,3,14),(25,3,15),(26,3,17),(27,3,16),(28,3,19),(29,3,18),(30,3,21),(31,3,20),(32,3,23),(33,3,22),(34,3,25),(35,3,24),(36,3,27),(37,3,26),(38,4,1),(39,4,5),(40,4,6),(41,4,7),(42,4,29),(43,4,28),(44,4,31),(45,4,30),(46,5,1),(47,5,32),(48,5,5),(49,5,6),(50,5,7),(51,5,26),(52,5,30),(53,6,1),(54,6,2),(55,6,3),(56,6,4),(57,6,5),(58,6,6),(59,6,29),(60,7,1),(61,7,5),(62,7,6),(63,7,7),(64,7,29),(65,7,30);
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
