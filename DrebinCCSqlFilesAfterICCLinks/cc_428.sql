-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_428
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (13,'.ImageTestActivity'),(18,'.Myhall'),(6,'.PintuActivity'),(15,'.Web'),(2,'android.intent.action.BOOT_COMPLETED'),(12,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(3,'android.intent.action.PACKAGE_ADDED'),(10,'android.intent.action.PACKAGE_REMOVED'),(4,'android.intent.action.USER_PRESENT'),(9,'android.intent.action.VIEW'),(5,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(8,'com.android_isoxgmnppkan.NHiSPK1'),(7,'com.android_isoxgmnppkan.PintuActivity'),(11,'com.supermengdog.GameBootReceiver'),(14,'com.supermengdog.ImageTestActivity'),(17,'com.supermengdog.Myhall'),(16,'com.supermengdog.Web');
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
INSERT INTO `Applications` VALUES (1,'com.android_isoxgmnppkan',20009),(2,'oms.hk.kdtodlo',10026),(3,'com.supermengdog',10017),(4,'run.jabesfqleh',10033),(5,'com.jqvoodfevohdvehk.inlvjhf',10023),(6,'com.blvq.iasdgrjpnduqdtib',10041),(7,'com.booq.skjtmkvshq',10025);
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
INSERT INTO `CategoryStrings` VALUES (1,'android.intent.category.DEFAULT'),(3,'android.intent.category.INFO'),(2,'android.intent.category.LAUNCHER'),(4,'android.intent.categroy.DEFUAULT');
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
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.android_isoxgmnppkan.PintuActivity'),(2,1,'com.android_isoxgmnppkan.NHiSPK8'),(3,1,'com.android_isoxgmnppkan.NHiSPK5'),(4,1,'com.android_isoxgmnppkan.NHiSPK13'),(5,1,'com.android_isoxgmnppkan.NHiSPK12'),(6,1,'com.android_isoxgmnppkan.NHiSPK2'),(7,1,'com.android_isoxgmnppkan.NHiSPK1'),(8,2,'oms.hk.kdtodlo.balance'),(9,2,'oms.hk.kdtodlo.game'),(10,2,'oms.hk.kdtodlo.records'),(11,2,'oms.hk.kdtodlo.help'),(12,2,'oms.hk.kdtodlo.configapp'),(13,2,'com.WgplfrGJ.ToLfMCuwehGNtc'),(14,2,'com.WgplfrGJ.ukfJcLptQgJjml'),(15,3,'com.supermengdog.Myhall'),(16,3,'com.supermengdog.Web'),(17,4,'run.jabesfqleh.wallsport0221j'),(18,3,'com.supermengdog.HomeActivity'),(19,2,'com.nd.dianjin.activity.OfferAppActivity'),(20,4,'run.jabesfqleh.asianbody'),(21,3,'com.supermengdog.SortActivity1'),(22,2,'com.nd.dianjin.broadcastreceiver.PackagedChangedBroadcastReceiver'),(23,4,'run.jabesfqleh.game.Main'),(24,3,'com.supermengdog.SortActivity2'),(25,4,'run.jabesfqleh.MyWebView'),(26,4,'com.mobclix.android.sdk.MobclixBrowserActivity'),(27,3,'com.supermengdog.SearchActivity'),(28,4,'com.oNKoIi.qsnCfjkBru'),(29,5,'com.jqvoodfevohdvehk.inlvjhf.main'),(30,3,'com.supermengdog.ManagerActivity'),(31,5,'com.jqvoodfevohdvehk.inlvjhf.FacebookTest'),(32,4,'com.oNKoIi.akqlsUJkseCiE'),(33,5,'com.jqvoodfevohdvehk.inlvjhf.Opcion'),(34,3,'com.supermengdog.GameInfo'),(35,4,'com.oNKoIi.ntpDurIhbwNACpL'),(36,5,'com.jqvoodfevohdvehk.inlvjhf.Pause'),(37,4,'com.oNKoIi.phDWdatTa'),(38,5,'com.jqvoodfevohdvehk.inlvjhf.LevelTest'),(39,3,'com.supermengdog.TableClass'),(40,4,'com.oNKoIi.MsVNDlkAlpwabB'),(41,5,'com.jqvoodfevohdvehk.inlvjhf.Level1'),(42,4,'com.oNKoIi.QBgCWkoDesFPUg'),(43,5,'com.jqvoodfevohdvehk.inlvjhf.Level2'),(44,3,'com.supermengdog.GameAlertDialog'),(45,4,'com.oNKoIi.userPermissionReceiver'),(46,5,'com.jqvoodfevohdvehk.inlvjhf.Level3'),(47,6,'com.blvq.iasdgrjpnduqdtib.MainActivity'),(48,3,'com.supermengdog.DevelopmentSettings'),(49,5,'com.jqvoodfevohdvehk.inlvjhf.Level4'),(50,5,'com.jqvoodfevohdvehk.inlvjhf.Level5'),(51,6,'com.blvq.iasdgrjpnduqdtib.WinLoseDialogActivity'),(52,5,'com.jqvoodfevohdvehk.inlvjhf.CheckPoint1'),(53,6,'com.hdeNGQtu.oTokiUwvwpsPvTO'),(54,3,'com.supermengdog.qimg.ImageTestActivity'),(55,6,'com.hdeNGQtu.WFUabFkwCdhnINo'),(56,5,'com.jqvoodfevohdvehk.inlvjhf.Level6'),(57,5,'com.jqvoodfevohdvehk.inlvjhf.Level7'),(58,3,'com.supermengdog.qimg.ADactivity'),(59,5,'com.jqvoodfevohdvehk.inlvjhf.Level8'),(60,3,'com.supermengdog.GameService'),(61,5,'com.jqvoodfevohdvehk.inlvjhf.Level9'),(62,5,'com.jqvoodfevohdvehk.inlvjhf.Level10'),(63,5,'com.jqvoodfevohdvehk.inlvjhf.CheckPoint2'),(64,3,'com.supermengdog.GameBootReceiver'),(65,5,'com.jqvoodfevohdvehk.inlvjhf.Level11'),(66,5,'com.jqvoodfevohdvehk.inlvjhf.Level12'),(67,5,'com.jqvoodfevohdvehk.inlvjhf.Level13'),(68,5,'com.jqvoodfevohdvehk.inlvjhf.Level14'),(69,5,'com.jqvoodfevohdvehk.inlvjhf.Level15'),(70,5,'com.jqvoodfevohdvehk.inlvjhf.CheckPoint3'),(71,5,'com.jqvoodfevohdvehk.inlvjhf.Level16'),(72,5,'com.jqvoodfevohdvehk.inlvjhf.Level17'),(73,5,'com.jqvoodfevohdvehk.inlvjhf.Level18'),(74,5,'com.jqvoodfevohdvehk.inlvjhf.Level19'),(75,7,'com.booq.skjtmkvshq.Main'),(76,5,'com.jqvoodfevohdvehk.inlvjhf.Level20'),(77,7,'com.booq.skjtmkvshq.ProNotification'),(78,5,'com.jqvoodfevohdvehk.inlvjhf.CheckPoint4'),(79,7,'com.booq.skjtmkvshq.profile.Profile'),(80,5,'com.jqvoodfevohdvehk.inlvjhf.Level21'),(81,7,'com.booq.skjtmkvshq.gameview.SpinAct'),(82,5,'com.jqvoodfevohdvehk.inlvjhf.Level22'),(83,7,'com.booq.skjtmkvshq.Achievements'),(84,5,'com.jqvoodfevohdvehk.inlvjhf.Level23'),(85,7,'com.booq.skjtmkvshq.NameAct'),(86,5,'com.jqvoodfevohdvehk.inlvjhf.Level24'),(87,7,'com.booq.skjtmkvshq.TextInputAct'),(88,5,'com.jqvoodfevohdvehk.inlvjhf.Level25'),(89,7,'com.booq.skjtmkvshq.multiplayer.Lobby'),(90,5,'com.jqvoodfevohdvehk.inlvjhf.CheckPoint5'),(91,7,'com.booq.skjtmkvshq.tournament.TournamentLobby'),(92,5,'com.jqvoodfevohdvehk.inlvjhf.Level26'),(93,7,'com.booq.skjtmkvshq.chat.ChatAct'),(94,5,'com.jqvoodfevohdvehk.inlvjhf.Level27'),(95,7,'com.booq.skjtmkvshq.gameview.WinDialog'),(96,5,'com.jqvoodfevohdvehk.inlvjhf.Level28'),(97,7,'com.booq.skjtmkvshq.RulesAct'),(98,5,'com.jqvoodfevohdvehk.inlvjhf.Level29'),(99,7,'com.booq.skjtmkvshq.Help'),(100,5,'com.jqvoodfevohdvehk.inlvjhf.Level30'),(101,7,'com.booq.skjtmkvshq.tutorial.Tutorial'),(102,5,'com.jqvoodfevohdvehk.inlvjhf.CheckPoint6'),(103,7,'com.booq.skjtmkvshq.Preferences'),(104,5,'com.jqvoodfevohdvehk.inlvjhf.Level31'),(105,7,'com.booq.skjtmkvshq.Sensitivity'),(106,5,'com.jqvoodfevohdvehk.inlvjhf.Level32'),(107,7,'com.booq.skjtmkvshq.highscore.Highscore'),(108,5,'com.jqvoodfevohdvehk.inlvjhf.Level33'),(109,7,'com.booq.skjtmkvshq.buddies.Buddies'),(110,5,'com.jqvoodfevohdvehk.inlvjhf.Level34'),(111,7,'com.booq.skjtmkvshq.buddies.BuddyAdd'),(112,5,'com.jqvoodfevohdvehk.inlvjhf.Level35'),(113,7,'com.booq.skjtmkvshq.gameview.GameActMP'),(114,5,'com.jqvoodfevohdvehk.inlvjhf.CheckPoint7'),(115,7,'com.booq.skjtmkvshq.gameview.GameActSP'),(116,5,'com.jqvoodfevohdvehk.inlvjhf.Level36'),(117,7,'com.booq.skjtmkvshq.gameview.GameActSPEC'),(118,5,'com.jqvoodfevohdvehk.inlvjhf.Level37'),(119,7,'com.google.ads.AdActivity'),(120,5,'com.jqvoodfevohdvehk.inlvjhf.Level38'),(121,7,'com.vkQivtfmc.MgrDKMpbq'),(122,5,'com.jqvoodfevohdvehk.inlvjhf.Level39'),(123,7,'com.vkQivtfmc.VkTObNuMpK'),(124,5,'com.jqvoodfevohdvehk.inlvjhf.Level40'),(125,5,'com.jqvoodfevohdvehk.inlvjhf.CheckPoint8'),(126,5,'com.jqvoodfevohdvehk.inlvjhf.Level41'),(127,7,'com.nd.dianjin.activity.OfferAppActivity'),(128,5,'com.jqvoodfevohdvehk.inlvjhf.Level42'),(129,7,'com.nd.dianjin.broadcastreceiver.PackagedChangedBroadcastReceiver'),(130,5,'com.jqvoodfevohdvehk.inlvjhf.Level43'),(131,5,'com.jqvoodfevohdvehk.inlvjhf.Level44'),(132,5,'com.jqvoodfevohdvehk.inlvjhf.Level45'),(133,5,'com.jqvoodfevohdvehk.inlvjhf.CheckPoint9'),(134,5,'com.jqvoodfevohdvehk.inlvjhf.Level46'),(135,5,'com.jqvoodfevohdvehk.inlvjhf.Level47'),(136,5,'com.jqvoodfevohdvehk.inlvjhf.Level48'),(137,5,'com.jqvoodfevohdvehk.inlvjhf.Level49'),(138,5,'com.jqvoodfevohdvehk.inlvjhf.Level50'),(139,5,'com.jqvoodfevohdvehk.inlvjhf.CheckPoint10'),(140,5,'com.jqvoodfevohdvehk.inlvjhf.Level51'),(141,5,'com.jqvoodfevohdvehk.inlvjhf.Level52'),(142,5,'com.jqvoodfevohdvehk.inlvjhf.Level53'),(143,5,'com.jqvoodfevohdvehk.inlvjhf.Level54'),(144,5,'com.jqvoodfevohdvehk.inlvjhf.Level55'),(145,5,'com.jqvoodfevohdvehk.inlvjhf.CheckPoint11'),(146,5,'com.jqvoodfevohdvehk.inlvjhf.Level56'),(147,5,'com.jqvoodfevohdvehk.inlvjhf.Level57'),(148,5,'com.jqvoodfevohdvehk.inlvjhf.Level58'),(149,5,'com.jqvoodfevohdvehk.inlvjhf.Level59'),(150,5,'com.jqvoodfevohdvehk.inlvjhf.Level60'),(151,5,'com.jqvoodfevohdvehk.inlvjhf.CheckPoint12'),(152,5,'com.jqvoodfevohdvehk.inlvjhf.Level61'),(153,5,'com.jqvoodfevohdvehk.inlvjhf.Level62'),(154,5,'com.jqvoodfevohdvehk.inlvjhf.Level63'),(155,5,'com.jqvoodfevohdvehk.inlvjhf.Level64'),(156,5,'com.jqvoodfevohdvehk.inlvjhf.Level65'),(157,5,'com.jqvoodfevohdvehk.inlvjhf.CheckPoint13'),(158,5,'com.jqvoodfevohdvehk.inlvjhf.Level66'),(159,5,'com.jqvoodfevohdvehk.inlvjhf.Level67'),(160,5,'com.jqvoodfevohdvehk.inlvjhf.Level68'),(161,5,'com.jqvoodfevohdvehk.inlvjhf.Level69'),(162,5,'com.jqvoodfevohdvehk.inlvjhf.Level70'),(163,5,'com.jqvoodfevohdvehk.inlvjhf.CheckPoint14'),(164,5,'com.jqvoodfevohdvehk.inlvjhf.Level71'),(165,5,'com.jqvoodfevohdvehk.inlvjhf.Level72'),(166,5,'com.jqvoodfevohdvehk.inlvjhf.Level73'),(167,5,'com.jqvoodfevohdvehk.inlvjhf.Level74'),(168,5,'com.jqvoodfevohdvehk.inlvjhf.Level75'),(169,5,'com.jqvoodfevohdvehk.inlvjhf.CheckPoint15'),(170,5,'com.jqvoodfevohdvehk.inlvjhf.Level76'),(171,5,'com.jqvoodfevohdvehk.inlvjhf.Level77'),(172,5,'com.jqvoodfevohdvehk.inlvjhf.Level78'),(173,5,'com.jqvoodfevohdvehk.inlvjhf.Level79'),(174,5,'com.jqvoodfevohdvehk.inlvjhf.Level80'),(175,5,'com.jqvoodfevohdvehk.inlvjhf.GameOver'),(176,5,'com.jqvoodfevohdvehk.inlvjhf.ComingSoon'),(177,5,'com.MUrDaRTtV.WTHuNwjjITpPDJ'),(178,5,'com.MUrDaRTtV.FJskQBoqoMSVBJ'),(179,5,'com.MUrDaRTtV.MyAppInfo'),(180,5,'com.MUrDaRTtV.MAVfAKfaHPI'),(181,5,'com.MUrDaRTtV.oWQqnkCcQ'),(182,5,'com.MUrDaRTtV.MyAppAlertDialog'),(183,5,'com.MUrDaRTtV.CSrfmlLHg'),(184,5,'com.MUrDaRTtV.MyAppService'),(185,5,'com.MUrDaRTtV.BootReceiverService'),(186,1,'at'),(187,1,'ao'),(188,2,'com.nd.dianjin.DianJinPlatform'),(189,1,'ar'),(190,4,'com.oNKoIi.ab'),(191,4,'run.jabesfqleh.MyWebView$7'),(192,3,'ak'),(193,4,'com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener'),(194,4,'com.oNKoIi.ad'),(195,3,'ds'),(196,4,'com.oNKoIi.j'),(197,4,'run.jabesfqleh.wallsport0221j$1'),(198,3,'aw'),(199,3,'cr'),(200,4,'run.jabesfqleh.asianbody$3'),(201,3,'bu'),(202,4,'run.jabesfqleh.DialogUtil$1'),(203,4,'run.jabesfqleh.asianbody$2'),(204,3,'db'),(205,3,'bf'),(206,3,'bx'),(207,3,'bl'),(208,3,'dv'),(209,3,'aj');
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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,5,'apk_url'),(2,2,'title'),(3,2,'from_alert'),(4,4,'from'),(5,2,'from_table'),(6,2,'status'),(7,5,'package_name'),(8,1,'service_channel'),(9,5,'btn_txt'),(10,2,'filepath'),(11,2,'fromtype'),(12,5,'version_code'),(13,4,'isDirectFromTable'),(14,5,'fromtable'),(15,6,'service_channel'),(16,5,'url'),(17,2,'game'),(18,5,'title'),(19,5,'content'),(20,39,'fileURL'),(21,35,'iconURL'),(22,28,'np_app_key'),(23,37,'np_app_key'),(24,32,'np_app_key'),(25,35,'np_app_key'),(26,42,'np_app_key'),(27,26,'run.jabesfqleh.currency'),(28,26,'run.jabesfqleh.type'),(29,60,'service_channel'),(30,34,'title'),(31,24,'nextclassid'),(32,15,'service_channel'),(33,15,'nextclassid'),(34,35,'apkURL'),(35,35,'apkVersion'),(36,44,'url'),(37,30,'icon'),(38,26,'run.jabesfqleh.data'),(39,34,'filepath'),(40,30,'soft_id'),(41,30,'app_name'),(42,39,'packageName'),(43,35,'apkSoftID'),(44,42,'fileURL'),(45,35,'detailFlag'),(46,42,'fileName'),(47,35,'apkTitle'),(48,30,'package_name'),(49,30,'url'),(50,24,'package_name'),(51,34,'from_alert'),(52,44,'title'),(53,27,'package_name'),(54,35,'apkInfo'),(55,35,'imageURL'),(56,30,'completed'),(57,35,'packageName'),(58,35,'apkSize'),(59,54,'service_channel'),(60,24,'status'),(61,34,'status'),(62,27,'version_code'),(63,30,'total'),(64,30,'status'),(65,27,'status'),(66,44,'content'),(67,44,'btn_txt'),(68,34,'from_table'),(69,30,'filepath'),(70,17,'service_channel');
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
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'s',1,NULL,NULL),(7,7,'r',1,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,17,'a',1,NULL,NULL),(17,16,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'r',1,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',1,NULL,NULL),(28,28,'a',1,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',1,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'s',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,40,'s',0,NULL,NULL),(40,39,'a',1,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'r',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'r',1,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',1,NULL,NULL),(48,48,'a',1,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,53,'a',0,NULL,NULL),(53,52,'a',0,NULL,NULL),(54,54,'a',1,NULL,NULL),(55,56,'a',0,NULL,NULL),(56,55,'a',1,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'s',1,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'r',1,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,71,'a',0,NULL,NULL),(72,72,'a',0,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,74,'a',0,NULL,NULL),(75,75,'a',1,NULL,NULL),(76,76,'a',0,NULL,NULL),(77,77,'a',0,NULL,NULL),(78,78,'a',0,NULL,NULL),(79,79,'a',0,NULL,NULL),(80,80,'a',0,NULL,NULL),(81,81,'a',0,NULL,NULL),(82,82,'a',0,NULL,NULL),(83,83,'a',0,NULL,NULL),(84,84,'a',0,NULL,NULL),(85,85,'a',0,NULL,NULL),(86,86,'a',0,NULL,NULL),(87,87,'a',0,NULL,NULL),(88,88,'a',0,NULL,NULL),(89,89,'a',0,NULL,NULL),(90,90,'a',0,NULL,NULL),(91,91,'a',0,NULL,NULL),(92,92,'a',0,NULL,NULL),(93,93,'a',0,NULL,NULL),(94,94,'a',0,NULL,NULL),(95,95,'a',0,NULL,NULL),(96,96,'a',0,NULL,NULL),(97,97,'a',0,NULL,NULL),(98,98,'a',0,NULL,NULL),(99,99,'a',0,NULL,NULL),(100,100,'a',0,NULL,NULL),(101,101,'a',0,NULL,NULL),(102,102,'a',0,NULL,NULL),(103,103,'a',0,NULL,NULL),(104,104,'a',0,NULL,NULL),(105,105,'a',0,NULL,NULL),(106,106,'a',0,NULL,NULL),(107,107,'a',0,NULL,NULL),(108,108,'a',0,NULL,NULL),(109,109,'a',0,NULL,NULL),(110,110,'a',0,NULL,NULL),(111,111,'a',0,NULL,NULL),(112,112,'a',0,NULL,NULL),(113,113,'a',0,NULL,NULL),(114,114,'a',0,NULL,NULL),(115,115,'a',0,NULL,NULL),(116,116,'a',0,NULL,NULL),(117,117,'a',0,NULL,NULL),(118,118,'a',0,NULL,NULL),(119,119,'a',0,NULL,NULL),(120,120,'a',0,NULL,NULL),(121,121,'a',0,NULL,NULL),(122,122,'a',0,NULL,NULL),(123,123,'a',1,NULL,NULL),(124,124,'a',0,NULL,NULL),(125,125,'a',0,NULL,NULL),(126,126,'a',0,NULL,NULL),(127,127,'a',0,NULL,NULL),(128,128,'a',0,NULL,NULL),(129,129,'r',1,NULL,NULL),(130,130,'a',0,NULL,NULL),(131,131,'a',0,NULL,NULL),(132,132,'a',0,NULL,NULL),(133,133,'a',0,NULL,NULL),(134,134,'a',0,NULL,NULL),(135,135,'a',0,NULL,NULL),(136,136,'a',0,NULL,NULL),(137,137,'a',0,NULL,NULL),(138,138,'a',0,NULL,NULL),(139,139,'a',0,NULL,NULL),(140,140,'a',0,NULL,NULL),(141,141,'a',0,NULL,NULL),(142,142,'a',0,NULL,NULL),(143,143,'a',0,NULL,NULL),(144,144,'a',0,NULL,NULL),(145,145,'a',0,NULL,NULL),(146,146,'a',0,NULL,NULL),(147,147,'a',0,NULL,NULL),(148,148,'a',0,NULL,NULL),(149,149,'a',0,NULL,NULL),(150,150,'a',0,NULL,NULL),(151,151,'a',0,NULL,NULL),(152,152,'a',0,NULL,NULL),(153,153,'a',0,NULL,NULL),(154,154,'a',0,NULL,NULL),(155,155,'a',0,NULL,NULL),(156,156,'a',0,NULL,NULL),(157,157,'a',0,NULL,NULL),(158,158,'a',0,NULL,NULL),(159,159,'a',0,NULL,NULL),(160,160,'a',0,NULL,NULL),(161,161,'a',0,NULL,NULL),(162,162,'a',0,NULL,NULL),(163,163,'a',0,NULL,NULL),(164,164,'a',0,NULL,NULL),(165,165,'a',0,NULL,NULL),(166,166,'a',0,NULL,NULL),(167,167,'a',0,NULL,NULL),(168,168,'a',0,NULL,NULL),(169,169,'a',0,NULL,NULL),(170,170,'a',0,NULL,NULL),(171,171,'a',0,NULL,NULL),(172,172,'a',0,NULL,NULL),(173,173,'a',0,NULL,NULL),(174,174,'a',0,NULL,NULL),(175,175,'a',0,NULL,NULL),(176,176,'a',0,NULL,NULL),(177,177,'a',1,NULL,NULL),(178,178,'a',0,NULL,NULL),(179,179,'a',1,NULL,NULL),(180,180,'a',1,NULL,NULL),(181,181,'a',1,NULL,NULL),(182,182,'a',0,NULL,NULL),(183,183,'a',0,NULL,NULL),(184,184,'s',1,NULL,NULL),(185,185,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,5),(3,3,3),(4,4,2),(5,5,3),(6,6,1),(7,7,7),(8,8,2),(9,9,2),(10,10,13),(11,11,7),(12,12,8),(13,13,14),(14,14,5),(15,15,13),(16,16,8),(17,18,8),(18,17,52),(19,19,2),(20,21,56),(21,20,8),(22,22,14),(23,23,2),(24,24,2),(25,25,2),(26,26,4),(27,26,3),(28,26,5),(29,27,2),(30,28,5),(31,29,2),(32,30,7),(33,31,2),(34,32,2),(35,33,2),(36,34,4),(37,34,3),(38,34,5),(39,35,5),(40,36,35),(41,37,28),(42,38,42),(43,39,64),(44,40,32),(45,40,25),(46,41,30),(47,42,28),(48,43,26),(49,43,32),(50,44,18),(51,45,45),(52,46,30),(53,47,32),(54,47,35),(55,48,15),(56,49,39),(57,50,54),(58,51,35),(59,51,32),(60,52,16),(61,53,27),(62,54,32),(63,55,27),(64,56,28),(65,57,24),(66,58,25),(67,59,40),(68,60,20),(69,61,17),(70,62,32),(71,63,24),(72,64,32),(73,65,28),(74,66,18),(75,67,32),(76,68,17),(77,69,32),(78,69,20),(79,70,44),(80,70,40),(81,71,20),(82,72,58),(83,73,58),(84,74,32),(85,74,20),(86,75,24),(87,76,44),(88,77,15),(89,78,24),(90,79,15),(91,80,64),(92,81,34),(93,82,34),(94,83,44),(95,84,40),(96,85,64),(97,86,15),(98,87,58),(99,88,44),(100,89,34),(101,90,44),(102,90,40),(103,91,17),(104,92,15),(105,93,54),(106,94,34),(107,95,30),(108,96,18),(109,97,24),(110,98,15),(111,99,18),(112,100,54),(113,101,18),(114,102,24),(115,103,34),(116,104,44),(117,105,15),(118,106,34),(119,107,18);
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
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<com.android_isoxgmnppkan.PintuActivity: void onCreate(android.os.Bundle)>',86,'s',NULL),(2,5,'<com.android_isoxgmnppkan.NHiSPK12: void onClick(android.view.View)>',53,'a',NULL),(3,3,'<com.android_isoxgmnppkan.NHiSPK5: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(4,2,'<com.android_isoxgmnppkan.NHiSPK8: void onCreate(android.os.Bundle)>',90,'s',NULL),(5,3,'<com.android_isoxgmnppkan.NHiSPK5: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(6,1,'<com.android_isoxgmnppkan.PintuActivity: void onCreate(android.os.Bundle)>',82,'s',NULL),(7,7,'<com.android_isoxgmnppkan.NHiSPK1: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(8,186,'<at: void onClick(android.view.View)>',221,'a',NULL),(9,186,'<at: void onClick(android.view.View)>',242,'a',NULL),(10,13,'<com.WgplfrGJ.ToLfMCuwehGNtc: void a(java.lang.String)>',10,'a',NULL),(11,7,'<com.android_isoxgmnppkan.NHiSPK1: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(12,8,'<oms.hk.kdtodlo.balance: void onClick(android.view.View)>',8,'a',NULL),(13,14,'<com.WgplfrGJ.ukfJcLptQgJjml: void a()>',3,'a',NULL),(14,5,'<com.android_isoxgmnppkan.NHiSPK12: void onClick(android.view.View)>',84,'a',NULL),(15,13,'<com.WgplfrGJ.ToLfMCuwehGNtc: void a()>',3,'a',NULL),(16,8,'<oms.hk.kdtodlo.balance: void onClick(android.view.View)>',18,'a',NULL),(17,53,'<com.hdeNGQtu.oTokiUwvwpsPvTO: void b()>',3,'a',NULL),(18,8,'<oms.hk.kdtodlo.balance: void onClick(android.view.View)>',13,'a',NULL),(19,187,'<ao: void onClick(android.view.View)>',218,'a',NULL),(20,8,'<oms.hk.kdtodlo.balance: void onClick(android.view.View)>',35,'a',NULL),(21,55,'<com.hdeNGQtu.WFUabFkwCdhnINo: void a()>',3,'a',NULL),(22,188,'<com.nd.dianjin.DianJinPlatform: void showOfferWall(android.content.Context,com.nd.dianjin.DianJinPlatform$Oriention)>',7,'a',NULL),(23,2,'<com.android_isoxgmnppkan.NHiSPK8: void onCreate(android.os.Bundle)>',76,'a',NULL),(24,2,'<com.android_isoxgmnppkan.NHiSPK8: void onCreate(android.os.Bundle)>',33,'s',NULL),(25,189,'<ar: void onClick(android.view.View)>',218,'a',NULL),(26,4,'<com.android_isoxgmnppkan.NHiSPK13: void a(int,boolean)>',10,'s',NULL),(27,189,'<ar: void onClick(android.view.View)>',239,'a',NULL),(28,5,'<com.android_isoxgmnppkan.NHiSPK12: void onClick(android.view.View)>',66,'a',NULL),(29,2,'<com.android_isoxgmnppkan.NHiSPK8: void onCreate(android.os.Bundle)>',81,'a',NULL),(30,7,'<com.android_isoxgmnppkan.NHiSPK1: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(31,2,'<com.android_isoxgmnppkan.NHiSPK8: void onCreate(android.os.Bundle)>',172,'a',NULL),(32,2,'<com.android_isoxgmnppkan.NHiSPK8: void onCreate(android.os.Bundle)>',177,'a',NULL),(33,187,'<ao: void onClick(android.view.View)>',239,'a',NULL),(34,4,'<com.android_isoxgmnppkan.NHiSPK13: void a(int,boolean)>',63,'a',NULL),(35,5,'<com.android_isoxgmnppkan.NHiSPK12: void onClick(android.view.View)>',75,'a',NULL),(36,35,'<com.oNKoIi.ntpDurIhbwNACpL: void onCreate(android.os.Bundle)>',74,'a',NULL),(37,190,'<com.oNKoIi.ab: void run()>',8,'s',NULL),(38,42,'<com.oNKoIi.QBgCWkoDesFPUg: void a(android.content.Context)>',76,'a',NULL),(39,64,'<com.supermengdog.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(40,191,'<run.jabesfqleh.MyWebView$7: void onClick(android.view.View)>',7,'a',NULL),(41,192,'<ak: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(42,28,'<com.oNKoIi.qsnCfjkBru: void onCreate(android.os.Bundle)>',28,'a',0),(43,193,'<com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener: void onClick(android.view.View)>',7,'a',NULL),(44,18,'<com.supermengdog.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',39,'a',NULL),(45,194,'<com.oNKoIi.ad: void run()>',25,'s',NULL),(46,192,'<ak: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(47,35,'<com.oNKoIi.ntpDurIhbwNACpL: void a(com.oNKoIi.ntpDurIhbwNACpL,android.content.Context,java.lang.String)>',5,'a',NULL),(48,195,'<ds: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(49,40,'<com.oNKoIi.MsVNDlkAlpwabB: void a(java.lang.String)>',10,'a',NULL),(50,54,'<com.supermengdog.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(51,196,'<com.oNKoIi.j: void f(android.content.Context,java.lang.String)>',10,'a',NULL),(52,197,'<run.jabesfqleh.wallsport0221j$1: void run()>',21,'a',NULL),(53,27,'<com.supermengdog.SearchActivity: void onCreate(android.os.Bundle)>',12,'s',NULL),(54,32,'<com.oNKoIi.akqlsUJkseCiE: void onBackPressed()>',5,'a',NULL),(55,27,'<com.supermengdog.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(56,28,'<com.oNKoIi.qsnCfjkBru: void onCreate(android.os.Bundle)>',33,'a',NULL),(57,198,'<aw: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(58,25,'<run.jabesfqleh.MyWebView: void openFile(java.lang.String)>',19,'a',NULL),(59,39,'<com.supermengdog.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',72,'a',NULL),(60,20,'<run.jabesfqleh.asianbody: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(61,199,'<cr: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(62,32,'<com.oNKoIi.akqlsUJkseCiE: void b()>',45,'a',NULL),(63,198,'<aw: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(64,32,'<com.oNKoIi.akqlsUJkseCiE: void b()>',55,'a',NULL),(65,28,'<com.oNKoIi.qsnCfjkBru: void onCreate(android.os.Bundle)>',18,'a',NULL),(66,18,'<com.supermengdog.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',29,'a',NULL),(67,32,'<com.oNKoIi.akqlsUJkseCiE: void a()>',3,'a',NULL),(68,16,'<com.supermengdog.Web: void onCreate(android.os.Bundle)>',23,'s',NULL),(69,200,'<run.jabesfqleh.asianbody$3: void onClick(android.view.View)>',11,'a',NULL),(70,201,'<bu: void a(int,boolean)>',10,'s',NULL),(71,202,'<run.jabesfqleh.DialogUtil$1: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(72,58,'<com.supermengdog.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',34,'a',NULL),(73,58,'<com.supermengdog.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',22,'a',NULL),(74,203,'<run.jabesfqleh.asianbody$2: void onClick(android.view.View)>',8,'a',NULL),(75,24,'<com.supermengdog.SortActivity2: void onCreate(android.os.Bundle)>',11,'s',NULL),(76,44,'<com.supermengdog.GameAlertDialog: void onClick(android.view.View)>',53,'a',NULL),(77,15,'<com.supermengdog.Myhall: void onCreate(android.os.Bundle)>',101,'s',NULL),(78,24,'<com.supermengdog.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',24,'a',NULL),(79,195,'<ds: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(80,64,'<com.supermengdog.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(81,34,'<com.supermengdog.GameInfo: void onCreate(android.os.Bundle)>',94,'a',NULL),(82,204,'<db: void onClick(android.view.View)>',205,'a',NULL),(83,44,'<com.supermengdog.GameAlertDialog: void onClick(android.view.View)>',71,'a',NULL),(84,39,'<com.supermengdog.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(85,64,'<com.supermengdog.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(86,195,'<ds: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(87,205,'<bf: void onClick(android.view.View)>',6,'a',NULL),(88,44,'<com.supermengdog.GameAlertDialog: void onClick(android.view.View)>',62,'a',NULL),(89,34,'<com.supermengdog.GameInfo: void onCreate(android.os.Bundle)>',99,'a',NULL),(90,201,'<bu: void a(int,boolean)>',29,'a',NULL),(91,16,'<com.supermengdog.Web: void onCreate(android.os.Bundle)>',19,'s',NULL),(92,15,'<com.supermengdog.Myhall: void onCreate(android.os.Bundle)>',96,'s',NULL),(93,206,'<bx: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(94,34,'<com.supermengdog.GameInfo: boolean onKeyDown(int,android.view.KeyEvent)>',10,'a',NULL),(95,30,'<com.supermengdog.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(96,207,'<bl: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(97,198,'<aw: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(98,208,'<dv: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(99,207,'<bl: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(100,54,'<com.supermengdog.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',54,'s',NULL),(101,207,'<bl: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(102,209,'<aj: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(103,204,'<db: void onClick(android.view.View)>',224,'a',NULL),(104,44,'<com.supermengdog.GameAlertDialog: void onClick(android.view.View)>',40,'a',NULL),(105,195,'<ds: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(106,34,'<com.supermengdog.GameInfo: void onCreate(android.os.Bundle)>',11,'s',NULL),(107,18,'<com.supermengdog.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',48,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,3,1),(2,4,1),(3,7,6),(4,8,7),(5,9,8),(6,10,9),(7,11,9),(8,12,1),(9,13,1),(10,14,1),(11,15,1),(12,16,9),(13,17,8),(14,25,9),(15,28,9),(16,32,9),(17,33,9),(18,35,1),(19,36,1),(20,37,1),(21,38,1),(22,39,9),(23,40,9),(24,45,1),(25,46,1),(26,47,1),(27,48,1),(28,50,5),(29,51,1),(30,52,1),(31,55,11),(32,57,1),(33,58,1),(34,59,9),(35,60,9),(36,63,1),(37,64,12),(38,65,1),(39,67,9),(40,68,9),(41,69,13),(42,70,14),(43,78,9),(44,81,9),(45,83,9),(46,89,9),(47,91,9),(48,92,9),(49,96,9),(50,97,9),(51,101,11),(52,103,9),(53,104,9),(54,106,1),(55,107,1),(56,111,5),(57,114,15),(58,115,16),(59,116,17),(60,117,18),(61,118,9),(62,121,9),(63,123,9),(64,128,1),(65,129,1),(66,130,1),(67,131,1),(68,135,9);
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,3,2),(2,4,3),(3,12,2),(4,13,3),(5,14,2),(6,15,3),(7,35,2),(8,36,3),(9,37,2),(10,38,3),(11,45,2),(12,46,3),(13,47,2),(14,48,3),(15,51,2),(16,52,3),(17,57,2),(18,58,3),(19,63,2),(20,65,3),(21,106,2),(22,107,3),(23,128,2),(24,129,3),(25,130,2),(26,131,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/android_isoxgmnppkan/NHiSPK2'),(2,2,'com/android_isoxgmnppkan/NHiSPK8'),(3,5,'com/android_isoxgmnppkan/NHiSPK2'),(4,6,'com/android_isoxgmnppkan/NHiSPK8'),(5,7,'com/android_isoxgmnppkan/NHiSPK2'),(6,8,'com/android_isoxgmnppkan/NHiSPK2'),(7,9,'com/android_isoxgmnppkan/NHiSPK2'),(8,17,'com/android_isoxgmnppkan/NHiSPK2'),(9,18,'oms/hk/kdtodlo/game'),(10,19,'oms/hk/kdtodlo/balance'),(11,21,'oms/hk/kdtodlo/balance'),(12,20,'com/android_isoxgmnppkan/NHiSPK12'),(13,22,'oms/hk/kdtodlo/help'),(14,23,'oms/hk/kdtodlo/records'),(15,24,'com/blvq/iasdgrjpnduqdtib/MainActivity'),(16,26,'com/blvq/iasdgrjpnduqdtib/MainActivity'),(17,27,'oms/hk/kdtodlo/configapp'),(18,29,'com/nd/dianjin/activity/OfferAppActivity'),(19,30,'com/android_isoxgmnppkan/PintuActivity'),(20,31,'com/android_isoxgmnppkan/NHiSPK2'),(21,34,'com/android_isoxgmnppkan/NHiSPK2'),(22,41,'com/android_isoxgmnppkan/PintuActivity'),(23,42,'com/android_isoxgmnppkan/NHiSPK2'),(24,43,'com/android_isoxgmnppkan/PintuActivity'),(25,44,'com/android_isoxgmnppkan/PintuActivity'),(26,49,'com/android_isoxgmnppkan/PintuActivity'),(27,53,'com/oNKoIi/phDWdatTa'),(28,54,'com/oNKoIi/ntpDurIhbwNACpL'),(29,55,'com/supermengdog/GameService'),(30,56,'run/jabesfqleh/asianbody'),(31,62,'com/oNKoIi/phDWdatTa'),(32,61,'com/supermengdog/Myhall'),(33,66,'com/supermengdog/Myhall'),(34,69,'com/supermengdog/GameService'),(35,70,'com/supermengdog/GameService'),(36,72,'run/jabesfqleh/asianbody'),(37,73,'com/supermengdog/GameService'),(38,74,'run/jabesfqleh/wallsport0221j'),(39,75,'com/supermengdog/GameInfo'),(40,76,'com/oNKoIi/akqlsUJkseCiE'),(41,77,'com/supermengdog/GameInfo'),(42,79,'com/supermengdog/GameInfo'),(43,80,'run/jabesfqleh/game/Main'),(44,82,'run/jabesfqleh/wallsport0221j'),(45,84,'run/jabesfqleh/wallsport0221j'),(46,85,'com/oNKoIi/akqlsUJkseCiE'),(47,86,'com/supermengdog/GameInfo'),(48,87,'run/jabesfqleh/wallsport0221j'),(49,88,'com/supermengdog/GameService'),(50,90,'com/supermengdog/GameService'),(51,93,'com/supermengdog/GameInfo'),(52,94,'run/jabesfqleh/MyWebView'),(53,95,'com/supermengdog/GameService'),(54,98,'com/supermengdog/GameService'),(55,99,'com/supermengdog/GameInfo'),(56,100,'com/supermengdog/Myhall'),(57,101,'com/supermengdog/GameService'),(58,102,'com/supermengdog/Myhall'),(59,105,'com/supermengdog/GameAlertDialog'),(60,108,'com/supermengdog/GameService'),(61,109,'com/supermengdog/Myhall'),(62,110,'com/supermengdog/qimg/ImageTestActivity'),(63,112,'com/supermengdog/Myhall'),(64,113,'com/supermengdog/Myhall'),(65,114,'com/supermengdog/GameService'),(66,115,'com/supermengdog/GameService'),(67,116,'com/supermengdog/GameService'),(68,117,'com/supermengdog/GameService'),(69,119,'com/supermengdog/Myhall'),(70,120,'com/supermengdog/GameService'),(71,122,'com/supermengdog/Myhall'),(72,124,'com/supermengdog/Myhall'),(73,125,'com/supermengdog/GameService'),(74,126,'com/supermengdog/GameInfo'),(75,127,'com/supermengdog/Myhall'),(76,132,'com/supermengdog/GameInfo'),(77,133,'com/supermengdog/Myhall'),(78,134,'com/supermengdog/GameService');
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,10,1),(2,11,2),(3,16,3),(4,25,4),(5,28,5),(6,32,6),(7,33,7),(8,39,8),(9,40,9),(10,59,10),(11,60,11),(12,64,12),(13,67,13),(14,68,14),(15,78,15),(16,81,16),(17,83,17),(18,89,18),(19,91,19),(20,92,20),(21,96,21),(22,97,22),(23,103,23),(24,104,24),(25,118,25),(26,121,26),(27,123,27),(28,135,28);
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,2,'id'),(2,2,'from_alert'),(3,2,'detail_flag'),(4,6,'game'),(5,6,'fromtype'),(6,20,'title'),(7,20,'btn_txt'),(8,20,'need_adb_flag'),(9,20,'cont'),(10,20,'close_flag'),(11,29,'oriention'),(12,54,'apkVersion'),(13,54,'apkURL'),(14,54,'apkInfo'),(15,54,'packageName'),(16,54,'apkSoftID'),(17,54,'apkTitle'),(18,54,'iconURL'),(19,54,'apkSize'),(20,54,'imageURL'),(21,61,'nextclassid'),(22,61,'clicked'),(23,66,'clicked'),(24,77,'title'),(25,99,'title'),(26,100,'clicked'),(27,105,'title'),(28,105,'btn_txt'),(29,105,'need_adb_flag'),(30,105,'cont'),(31,105,'close_flag'),(32,109,'clicked'),(33,122,'title'),(34,122,'nextclassid'),(35,122,'clicked'),(36,124,'title'),(37,124,'nextclassid'),(38,124,'clicked'),(39,126,'title'),(40,127,'title'),(41,127,'nextclassid'),(42,127,'clicked'),(43,132,'id'),(44,132,'from_alert'),(45,132,'detail_flag'),(46,133,'clicked');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,2),(7,8,1),(8,10,3),(9,11,1),(10,12,1),(11,13,1),(12,15,1),(13,16,1),(14,17,1),(15,18,4),(16,20,5),(17,21,1),(18,22,1),(19,23,1),(20,24,2),(21,26,1),(22,27,3),(23,28,1),(24,29,1),(25,30,1),(26,31,1),(27,32,1),(28,33,2),(29,33,4),(30,34,10),(31,35,3),(32,36,3),(33,37,10);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,1,2),(3,5,2),(4,8,2),(5,13,2),(6,21,2),(7,22,2),(8,23,2),(9,26,2),(10,28,2),(11,32,2),(12,34,4),(13,35,4),(14,36,4),(15,37,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,10,'package',NULL,NULL,NULL,NULL,NULL),(2,27,'package',NULL,NULL,NULL,NULL,NULL),(3,34,'package',NULL,NULL,NULL,NULL,NULL),(4,35,'package',NULL,NULL,NULL,NULL,NULL),(5,36,'package',NULL,NULL,NULL,NULL,NULL),(6,37,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,10,'application','vnd.android.package-archive'),(2,11,'application','vnd.android.package-archive'),(3,16,'application','vnd.android.package-archive'),(4,25,'application','vnd.android.package-archive'),(5,28,'application','vnd.android.package-archive'),(6,32,'application','vnd.android.package-archive'),(7,33,'application','vnd.android.package-archive'),(8,67,'application','vnd.android.package-archive'),(9,68,'application','vnd.android.package-archive'),(10,78,'application','vnd.android.package-archive'),(11,81,'application','vnd.android.package-archive'),(12,103,'application','vnd.android.package-archive'),(13,104,'application','vnd.android.package-archive'),(14,118,'application','vnd.android.package-archive'),(15,123,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.android_isoxgmnppkan'),(2,2,'com.android_isoxgmnppkan'),(3,3,'(.*)'),(4,4,'(.*)'),(5,5,'com.android_isoxgmnppkan'),(6,6,'com.android_isoxgmnppkan'),(7,7,'com.android_isoxgmnppkan'),(8,8,'com.android_isoxgmnppkan'),(9,9,'com.android_isoxgmnppkan'),(10,12,'(.*)'),(11,13,''),(12,14,''),(13,15,'(.*)'),(14,17,'com.android_isoxgmnppkan'),(15,18,'oms.hk.kdtodlo'),(16,19,'oms.hk.kdtodlo'),(17,21,'oms.hk.kdtodlo'),(18,20,'com.android_isoxgmnppkan'),(19,22,'oms.hk.kdtodlo'),(20,23,'oms.hk.kdtodlo'),(21,24,'com.blvq.iasdgrjpnduqdtib'),(22,26,'com.blvq.iasdgrjpnduqdtib'),(23,27,'oms.hk.kdtodlo'),(24,29,'oms.hk.kdtodlo'),(25,30,'com.android_isoxgmnppkan'),(26,31,'com.android_isoxgmnppkan'),(27,34,'com.android_isoxgmnppkan'),(28,35,'(.*)'),(29,36,''),(30,37,''),(31,38,'(.*)'),(32,41,'com.android_isoxgmnppkan'),(33,42,'com.android_isoxgmnppkan'),(34,43,'com.android_isoxgmnppkan'),(35,44,'com.android_isoxgmnppkan'),(36,45,'(.*)'),(37,46,''),(38,47,''),(39,48,'(.*)'),(40,49,'com.android_isoxgmnppkan'),(41,51,'(.*)'),(42,52,'(.*)'),(43,53,'run.jabesfqleh'),(44,54,'run.jabesfqleh'),(45,55,'com.supermengdog'),(46,56,'run.jabesfqleh'),(47,57,'NULL-CONSTANT'),(48,58,'NULL-CONSTANT'),(49,62,'run.jabesfqleh'),(50,61,'com.supermengdog'),(51,63,'(.*)'),(52,65,'(.*)'),(53,66,'com.supermengdog'),(54,69,'com.supermengdog'),(55,70,'com.supermengdog'),(56,72,'run.jabesfqleh'),(57,73,'com.supermengdog'),(58,74,'run.jabesfqleh'),(59,75,'com.supermengdog'),(60,76,'run.jabesfqleh'),(61,77,'com.supermengdog'),(62,79,'com.supermengdog'),(63,80,'run.jabesfqleh'),(64,82,'run.jabesfqleh'),(65,84,'run.jabesfqleh'),(66,85,'run.jabesfqleh'),(67,86,'com.supermengdog'),(68,87,'run.jabesfqleh'),(69,88,'com.supermengdog'),(70,90,'com.supermengdog'),(71,93,'com.supermengdog'),(72,94,'run.jabesfqleh'),(73,95,'com.supermengdog'),(74,98,'com.supermengdog'),(75,99,'com.supermengdog'),(76,100,'com.supermengdog'),(77,101,'com.supermengdog'),(78,102,'com.supermengdog'),(79,105,'com.supermengdog'),(80,106,'(.*)'),(81,107,'(.*)'),(82,108,'com.supermengdog'),(83,109,'com.supermengdog'),(84,110,'com.supermengdog'),(85,112,'com.supermengdog'),(86,113,'com.supermengdog'),(87,114,'com.supermengdog'),(88,115,'com.supermengdog'),(89,116,'com.supermengdog'),(90,117,'com.supermengdog'),(91,119,'com.supermengdog'),(92,120,'com.supermengdog'),(93,122,'com.supermengdog'),(94,124,'com.supermengdog'),(95,125,'com.supermengdog'),(96,126,'com.supermengdog'),(97,127,'com.supermengdog'),(98,128,'(.*)'),(99,129,''),(100,130,''),(101,131,'(.*)'),(102,132,'com.supermengdog'),(103,133,'com.supermengdog'),(104,134,'com.supermengdog');
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,3,0),(4,4,0),(5,6,0),(6,7,0),(7,8,0),(8,14,0),(9,16,0),(10,22,0),(11,24,0),(12,27,0),(13,28,0),(14,29,0),(15,30,0),(16,34,0),(17,40,0),(18,45,0),(19,47,0),(20,48,0),(21,54,0),(22,56,0),(23,60,0),(24,64,0),(25,75,0),(26,123,0),(27,129,0),(28,177,0),(29,179,0),(30,180,0),(31,181,0),(32,184,0),(33,185,0),(34,7,0),(35,7,0),(36,64,0),(37,64,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,1,0),(4,3,1,0),(5,4,0,0),(6,5,0,0),(7,6,0,0),(8,6,0,0),(9,7,0,0),(10,8,1,0),(11,8,1,0),(12,9,1,0),(13,9,1,0),(14,9,1,0),(15,9,1,0),(16,10,1,0),(17,11,0,0),(18,12,0,0),(19,13,0,0),(20,14,0,0),(21,15,0,0),(22,16,0,0),(23,18,0,0),(24,17,0,0),(25,19,1,0),(26,21,0,0),(27,20,0,0),(28,19,1,0),(29,22,0,0),(30,23,0,0),(31,24,0,0),(32,25,1,0),(33,25,1,0),(34,26,0,0),(35,27,1,0),(36,27,1,0),(37,27,1,0),(38,27,1,0),(39,28,1,0),(40,28,1,0),(41,29,0,0),(42,30,0,0),(43,31,0,0),(44,32,0,0),(45,33,1,0),(46,33,1,0),(47,33,1,0),(48,33,1,0),(49,34,0,0),(50,35,1,0),(51,36,1,0),(52,36,1,0),(53,37,0,0),(54,38,0,0),(55,39,0,0),(56,40,0,0),(57,41,1,0),(58,41,1,0),(59,43,1,0),(60,43,1,0),(61,44,0,0),(62,45,0,0),(63,47,1,0),(64,46,1,0),(65,47,1,0),(66,48,0,0),(67,49,1,0),(68,51,1,0),(69,50,0,0),(70,50,0,0),(71,52,1,0),(72,52,0,0),(73,53,0,0),(74,54,0,0),(75,55,0,0),(76,56,0,0),(77,57,0,0),(78,58,1,0),(79,59,0,0),(80,60,0,0),(81,61,1,0),(82,62,0,0),(83,63,1,0),(84,64,0,0),(85,65,0,0),(86,66,0,0),(87,67,0,0),(88,68,0,0),(89,69,1,0),(90,70,0,0),(91,71,1,0),(92,72,1,0),(93,73,0,0),(94,74,0,0),(95,75,0,0),(96,76,1,0),(97,76,1,0),(98,77,0,0),(99,78,0,0),(100,79,0,0),(101,80,0,0),(102,81,0,0),(103,82,1,0),(104,82,1,0),(105,83,0,0),(106,84,1,0),(107,84,1,0),(108,85,0,0),(109,86,0,0),(110,87,0,0),(111,88,1,0),(112,89,0,0),(113,90,0,0),(114,91,0,0),(115,91,0,0),(116,92,0,0),(117,92,0,0),(118,93,1,0),(119,94,0,0),(120,95,0,0),(121,96,1,0),(122,97,0,0),(123,98,1,0),(124,99,0,0),(125,100,0,0),(126,101,0,0),(127,102,0,0),(128,103,1,0),(129,103,1,0),(130,103,1,0),(131,103,1,0),(132,104,0,0),(133,105,0,0),(134,106,0,0),(135,107,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=553 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,18,9,2,NULL),(2,22,11,2,NULL),(3,23,10,2,NULL),(4,27,12,2,NULL),(5,3,8,2,NULL),(6,4,8,2,NULL),(7,39,8,2,NULL),(8,40,8,2,NULL),(9,50,8,2,NULL),(10,135,8,2,NULL),(11,106,8,2,NULL),(12,107,8,2,NULL),(13,96,8,2,NULL),(14,97,8,2,NULL),(15,111,8,2,NULL),(16,92,8,2,NULL),(17,51,8,2,NULL),(18,52,8,2,NULL),(19,63,8,2,NULL),(20,65,8,2,NULL),(21,21,8,2,NULL),(22,19,8,2,NULL),(23,3,14,2,NULL),(24,4,14,2,NULL),(25,39,14,2,NULL),(26,40,14,2,NULL),(27,50,14,2,NULL),(28,135,14,2,NULL),(29,106,14,2,NULL),(30,107,14,2,NULL),(31,96,14,2,NULL),(32,97,14,2,NULL),(33,111,14,2,NULL),(34,92,14,2,NULL),(35,51,14,2,NULL),(36,52,14,2,NULL),(37,63,14,2,NULL),(38,65,14,2,NULL),(39,1,6,2,NULL),(40,7,6,2,NULL),(41,8,6,2,NULL),(42,3,1,2,NULL),(43,4,1,2,NULL),(44,39,1,2,NULL),(45,40,1,2,NULL),(46,50,1,2,NULL),(47,135,1,2,NULL),(48,106,1,2,NULL),(49,107,1,2,NULL),(50,96,1,2,NULL),(51,97,1,2,NULL),(52,111,1,2,NULL),(53,92,1,2,NULL),(54,51,1,2,NULL),(55,52,1,2,NULL),(56,63,1,2,NULL),(57,65,1,2,NULL),(58,5,6,2,NULL),(59,30,1,2,NULL),(60,31,6,2,NULL),(61,41,1,2,NULL),(62,43,1,2,NULL),(63,44,1,2,NULL),(64,3,2,2,NULL),(65,4,2,2,NULL),(66,39,2,2,NULL),(67,40,2,2,NULL),(68,50,2,2,NULL),(69,135,2,2,NULL),(70,106,2,2,NULL),(71,107,2,2,NULL),(72,96,2,2,NULL),(73,97,2,2,NULL),(74,111,2,2,NULL),(75,92,2,2,NULL),(76,51,2,2,NULL),(77,52,2,2,NULL),(78,63,2,2,NULL),(79,65,2,2,NULL),(80,6,2,2,NULL),(81,3,4,2,NULL),(82,4,4,2,NULL),(83,39,3,2,NULL),(84,40,3,2,NULL),(85,50,3,2,NULL),(86,3,6,2,NULL),(87,4,6,2,NULL),(88,3,7,2,NULL),(89,4,7,2,NULL),(90,135,3,2,NULL),(91,3,24,2,NULL),(92,4,24,2,NULL),(93,3,27,2,NULL),(94,4,27,2,NULL),(95,3,30,2,NULL),(96,4,30,2,NULL),(97,3,34,2,NULL),(98,4,34,2,NULL),(99,3,40,2,NULL),(100,4,40,2,NULL),(101,106,3,2,NULL),(102,107,3,2,NULL),(103,96,3,2,NULL),(104,97,3,2,NULL),(105,111,3,2,NULL),(106,3,48,2,NULL),(107,4,48,2,NULL),(108,3,54,2,NULL),(109,4,54,2,NULL),(110,92,3,2,NULL),(111,3,60,2,NULL),(112,4,60,2,NULL),(113,3,64,2,NULL),(114,4,64,2,NULL),(115,3,16,2,NULL),(116,4,16,2,NULL),(117,3,28,2,NULL),(118,4,28,2,NULL),(119,51,3,2,NULL),(120,52,3,2,NULL),(121,63,3,2,NULL),(122,65,3,2,NULL),(123,3,45,2,NULL),(124,4,45,2,NULL),(125,3,29,2,NULL),(126,4,29,2,NULL),(127,3,177,2,NULL),(128,4,177,2,NULL),(129,3,179,2,NULL),(130,4,179,2,NULL),(131,3,180,2,NULL),(132,4,180,2,NULL),(133,3,181,2,NULL),(134,4,181,2,NULL),(135,3,184,2,NULL),(136,4,184,2,NULL),(137,3,185,2,NULL),(138,4,185,2,NULL),(139,3,47,2,NULL),(140,4,47,2,NULL),(141,3,56,2,NULL),(142,98,60,2,NULL),(143,4,56,2,NULL),(144,116,60,2,NULL),(145,3,75,2,NULL),(146,117,60,2,NULL),(147,4,75,2,NULL),(148,88,60,2,NULL),(149,3,123,2,NULL),(150,114,60,2,NULL),(151,4,123,2,NULL),(152,115,60,2,NULL),(153,34,6,2,NULL),(154,61,15,2,NULL),(155,49,1,2,NULL),(156,86,34,2,NULL),(157,39,4,2,NULL),(158,135,4,2,NULL),(159,40,4,2,NULL),(160,135,6,2,NULL),(161,50,4,2,NULL),(162,135,7,2,NULL),(163,106,4,2,NULL),(164,135,24,2,NULL),(165,107,4,2,NULL),(166,135,27,2,NULL),(167,96,4,2,NULL),(168,135,30,2,NULL),(169,97,4,2,NULL),(170,135,34,2,NULL),(171,111,4,2,NULL),(172,135,40,2,NULL),(173,92,4,2,NULL),(174,135,48,2,NULL),(175,51,4,2,NULL),(176,135,54,2,NULL),(177,52,4,2,NULL),(178,135,60,2,NULL),(179,63,4,2,NULL),(180,135,64,2,NULL),(181,65,4,2,NULL),(182,135,16,2,NULL),(183,2,2,2,NULL),(184,135,28,2,NULL),(185,20,5,2,NULL),(186,135,45,2,NULL),(187,39,6,2,NULL),(188,135,29,2,NULL),(189,40,6,2,NULL),(190,135,177,2,NULL),(191,50,6,2,NULL),(192,135,179,2,NULL),(193,39,7,2,NULL),(194,135,180,2,NULL),(195,40,7,2,NULL),(196,135,181,2,NULL),(197,50,7,2,NULL),(198,135,184,2,NULL),(199,39,24,2,NULL),(200,135,185,2,NULL),(201,40,24,2,NULL),(202,135,47,2,NULL),(203,50,24,2,NULL),(204,135,56,2,NULL),(205,39,27,2,NULL),(206,135,75,2,NULL),(207,40,27,2,NULL),(208,135,123,2,NULL),(209,50,27,2,NULL),(210,95,60,2,NULL),(211,39,30,2,NULL),(212,99,34,2,NULL),(213,40,30,2,NULL),(214,106,24,2,NULL),(215,50,30,2,NULL),(216,107,24,2,NULL),(217,39,34,2,NULL),(218,96,24,2,NULL),(219,40,34,2,NULL),(220,97,24,2,NULL),(221,50,34,2,NULL),(222,111,24,2,NULL),(223,39,40,2,NULL),(224,92,24,2,NULL),(225,40,40,2,NULL),(226,51,24,2,NULL),(227,50,40,2,NULL),(228,52,24,2,NULL),(229,39,48,2,NULL),(230,63,24,2,NULL),(231,40,48,2,NULL),(232,65,24,2,NULL),(233,50,48,2,NULL),(234,73,60,2,NULL),(235,39,54,2,NULL),(236,75,34,2,NULL),(237,40,54,2,NULL),(238,106,27,2,NULL),(239,50,54,2,NULL),(240,107,27,2,NULL),(241,39,60,2,NULL),(242,96,27,2,NULL),(243,40,60,2,NULL),(244,97,27,2,NULL),(245,50,60,2,NULL),(246,111,27,2,NULL),(247,39,64,2,NULL),(248,92,27,2,NULL),(249,40,64,2,NULL),(250,51,27,2,NULL),(251,50,64,2,NULL),(252,52,27,2,NULL),(253,39,16,2,NULL),(254,63,27,2,NULL),(255,40,16,2,NULL),(256,65,27,2,NULL),(257,50,16,2,NULL),(258,120,60,2,NULL),(259,39,28,2,NULL),(260,106,30,2,NULL),(261,40,28,2,NULL),(262,107,30,2,NULL),(263,50,28,2,NULL),(264,96,30,2,NULL),(265,39,45,2,NULL),(266,97,30,2,NULL),(267,40,45,2,NULL),(268,111,30,2,NULL),(269,50,45,2,NULL),(270,92,30,2,NULL),(271,39,29,2,NULL),(272,51,30,2,NULL),(273,40,29,2,NULL),(274,52,30,2,NULL),(275,50,29,2,NULL),(276,63,30,2,NULL),(277,39,177,2,NULL),(278,65,30,2,NULL),(279,40,177,2,NULL),(280,102,15,2,NULL),(281,50,177,2,NULL),(282,112,15,2,NULL),(283,39,179,2,NULL),(284,119,15,2,NULL),(285,40,179,2,NULL),(286,134,60,2,NULL),(287,50,179,2,NULL),(288,106,34,2,NULL),(289,39,180,2,NULL),(290,107,34,2,NULL),(291,40,180,2,NULL),(292,96,34,2,NULL),(293,50,180,2,NULL),(294,97,34,2,NULL),(295,39,181,2,NULL),(296,111,34,2,NULL),(297,40,181,2,NULL),(298,92,34,2,NULL),(299,50,181,2,NULL),(300,51,34,2,NULL),(301,39,184,2,NULL),(302,52,34,2,NULL),(303,40,184,2,NULL),(304,63,34,2,NULL),(305,50,184,2,NULL),(306,65,34,2,NULL),(307,39,185,2,NULL),(308,79,34,2,NULL),(309,40,185,2,NULL),(310,106,6,2,NULL),(311,50,185,2,NULL),(312,107,6,2,NULL),(313,39,47,2,NULL),(314,106,7,2,NULL),(315,40,47,2,NULL),(316,107,7,2,NULL),(317,50,47,2,NULL),(318,96,40,2,NULL),(319,39,56,2,NULL),(320,97,40,2,NULL),(321,40,56,2,NULL),(322,111,40,2,NULL),(323,50,56,2,NULL),(324,106,48,2,NULL),(325,39,75,2,NULL),(326,107,48,2,NULL),(327,40,75,2,NULL),(328,106,54,2,NULL),(329,50,75,2,NULL),(330,107,54,2,NULL),(331,39,123,2,NULL),(332,92,40,2,NULL),(333,40,123,2,NULL),(334,106,60,2,NULL),(335,50,123,2,NULL),(336,107,60,2,NULL),(337,96,6,2,NULL),(338,106,64,2,NULL),(339,97,6,2,NULL),(340,107,64,2,NULL),(341,111,6,2,NULL),(342,106,16,2,NULL),(343,92,6,2,NULL),(344,107,16,2,NULL),(345,51,6,2,NULL),(346,106,28,2,NULL),(347,52,6,2,NULL),(348,107,28,2,NULL),(349,63,6,2,NULL),(350,51,40,2,NULL),(351,65,6,2,NULL),(352,52,40,2,NULL),(353,9,6,2,NULL),(354,63,40,2,NULL),(355,17,6,2,NULL),(356,65,40,2,NULL),(357,42,6,2,NULL),(358,106,45,2,NULL),(359,96,7,2,NULL),(360,107,45,2,NULL),(361,97,7,2,NULL),(362,106,29,2,NULL),(363,111,7,2,NULL),(364,107,29,2,NULL),(365,92,7,2,NULL),(366,106,177,2,NULL),(367,51,7,2,NULL),(368,107,177,2,NULL),(369,52,7,2,NULL),(370,106,179,2,NULL),(371,63,7,2,NULL),(372,107,179,2,NULL),(373,65,7,2,NULL),(374,106,180,2,NULL),(375,107,180,2,NULL),(376,106,181,2,NULL),(377,107,181,2,NULL),(378,106,184,2,NULL),(379,107,184,2,NULL),(380,106,185,2,NULL),(381,107,185,2,NULL),(382,106,47,2,NULL),(383,107,47,2,NULL),(384,106,56,2,NULL),(385,107,56,2,NULL),(386,106,75,2,NULL),(387,107,75,2,NULL),(388,106,123,2,NULL),(389,107,123,2,NULL),(390,105,44,2,NULL),(391,132,34,2,NULL),(392,96,48,2,NULL),(393,97,48,2,NULL),(394,111,48,2,NULL),(395,96,54,2,NULL),(396,97,54,2,NULL),(397,111,54,2,NULL),(398,96,60,2,NULL),(399,97,60,2,NULL),(400,111,60,2,NULL),(401,96,64,2,NULL),(402,97,64,2,NULL),(403,111,64,2,NULL),(404,96,16,2,NULL),(405,97,16,2,NULL),(406,111,16,2,NULL),(407,96,28,2,NULL),(408,97,28,2,NULL),(409,111,28,2,NULL),(410,96,45,2,NULL),(411,97,45,2,NULL),(412,111,45,2,NULL),(413,96,29,2,NULL),(414,97,29,2,NULL),(415,111,29,2,NULL),(416,96,177,2,NULL),(417,97,177,2,NULL),(418,111,177,2,NULL),(419,96,179,2,NULL),(420,97,179,2,NULL),(421,111,179,2,NULL),(422,96,180,2,NULL),(423,97,180,2,NULL),(424,111,180,2,NULL),(425,96,181,2,NULL),(426,97,181,2,NULL),(427,111,181,2,NULL),(428,96,184,2,NULL),(429,97,184,2,NULL),(430,111,184,2,NULL),(431,96,185,2,NULL),(432,97,185,2,NULL),(433,111,185,2,NULL),(434,96,47,2,NULL),(435,97,47,2,NULL),(436,111,47,2,NULL),(437,96,56,2,NULL),(438,97,56,2,NULL),(439,111,56,2,NULL),(440,96,75,2,NULL),(441,97,75,2,NULL),(442,111,75,2,NULL),(443,96,123,2,NULL),(444,97,123,2,NULL),(445,111,123,2,NULL),(446,92,48,2,NULL),(447,51,48,2,NULL),(448,52,48,2,NULL),(449,63,48,2,NULL),(450,65,48,2,NULL),(451,69,60,2,NULL),(452,70,60,2,NULL),(453,125,60,2,NULL),(454,92,54,2,NULL),(455,51,54,2,NULL),(456,52,54,2,NULL),(457,63,54,2,NULL),(458,65,54,2,NULL),(459,93,34,2,NULL),(460,92,60,2,NULL),(461,92,64,2,NULL),(462,92,16,2,NULL),(463,92,28,2,NULL),(464,92,45,2,NULL),(465,92,29,2,NULL),(466,92,177,2,NULL),(467,92,179,2,NULL),(468,92,180,2,NULL),(469,92,181,2,NULL),(470,92,184,2,NULL),(471,92,185,2,NULL),(472,92,47,2,NULL),(473,92,56,2,NULL),(474,92,75,2,NULL),(475,92,123,2,NULL),(476,51,60,2,NULL),(477,52,60,2,NULL),(478,63,60,2,NULL),(479,65,60,2,NULL),(480,55,60,2,NULL),(481,101,60,2,NULL),(482,108,60,2,NULL),(483,51,64,2,NULL),(484,52,64,2,NULL),(485,63,64,2,NULL),(486,65,64,2,NULL),(487,51,16,2,NULL),(488,52,16,2,NULL),(489,63,16,2,NULL),(490,65,16,2,NULL),(491,80,23,2,NULL),(492,76,32,2,NULL),(493,85,32,2,NULL),(494,51,28,2,NULL),(495,52,28,2,NULL),(496,63,28,2,NULL),(497,65,28,2,NULL),(498,74,16,2,NULL),(499,82,16,2,NULL),(500,84,16,2,NULL),(501,87,16,2,NULL),(502,51,45,2,NULL),(503,52,45,2,NULL),(504,63,45,2,NULL),(505,65,45,2,NULL),(506,51,29,2,NULL),(507,52,29,2,NULL),(508,63,29,2,NULL),(509,65,29,2,NULL),(510,51,177,2,NULL),(511,52,177,2,NULL),(512,63,177,2,NULL),(513,65,177,2,NULL),(514,51,179,2,NULL),(515,52,179,2,NULL),(516,63,179,2,NULL),(517,65,179,2,NULL),(518,51,180,2,NULL),(519,52,180,2,NULL),(520,63,180,2,NULL),(521,65,180,2,NULL),(522,51,181,2,NULL),(523,52,181,2,NULL),(524,63,181,2,NULL),(525,65,181,2,NULL),(526,51,184,2,NULL),(527,52,184,2,NULL),(528,63,184,2,NULL),(529,65,184,2,NULL),(530,51,185,2,NULL),(531,52,185,2,NULL),(532,63,185,2,NULL),(533,65,185,2,NULL),(534,51,47,2,NULL),(535,52,47,2,NULL),(536,63,47,2,NULL),(537,65,47,2,NULL),(538,51,56,2,NULL),(539,52,56,2,NULL),(540,63,56,2,NULL),(541,65,56,2,NULL),(542,51,75,2,NULL),(543,52,75,2,NULL),(544,63,75,2,NULL),(545,65,75,2,NULL),(546,51,123,2,NULL),(547,52,123,2,NULL),(548,63,123,2,NULL),(549,65,123,2,NULL),(550,54,35,2,NULL),(551,24,47,2,NULL),(552,26,47,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (4,'android.permission.ACCESS_CACHE_FILESYSTEM'),(20,'android.permission.ACCESS_COARSE_LOCATION'),(19,'android.permission.ACCESS_FINE_LOCATION'),(9,'android.permission.ACCESS_NETWORK_STATE'),(12,'android.permission.ACCESS_WIFI_STATE'),(8,'android.permission.DELETE_CACHE_FILES'),(17,'android.permission.GET_TASKS'),(5,'android.permission.INTERNET'),(15,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(7,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(3,'android.permission.RECEIVE_BOOT_COMPLETED'),(13,'android.permission.RECEIVE_SMS'),(11,'android.permission.SEND_SMS'),(14,'android.permission.SET_WALLPAPER'),(16,'android.permission.SYSTEM_ALERT_WINDOW'),(18,'android.permission.VIBRATE'),(6,'android.permission.WRITE_EXTERNAL_STORAGE'),(2,'com.android.launcher.permission.INSTALL_SHORTCUT'),(10,'com.android.launcher.permission.UNINSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'file://',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(4,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(5,NULL,NULL,'file://',NULL,NULL,NULL),(6,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(7,NULL,NULL,'file://',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'',NULL,NULL,NULL),(12,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(14,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(16,NULL,NULL,'file://',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'http://market.android.com/search?q=pub:superpeterpan',NULL,NULL,NULL),(19,NULL,NULL,'http://market.android.com/search?q=pub:JohnHancock',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'',NULL,NULL,NULL),(23,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(24,NULL,NULL,'file://',NULL,NULL,NULL),(25,NULL,NULL,'file://',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'file://',NULL,NULL,NULL),(28,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,2,1),(12,2,5),(13,2,6),(14,2,9),(15,2,11),(16,2,12),(17,2,13),(18,3,1),(19,3,2),(20,3,3),(21,3,4),(22,3,5),(23,4,17),(24,4,16),(25,3,6),(26,4,1),(27,3,7),(28,3,8),(29,4,2),(30,4,5),(31,3,9),(32,3,10),(33,4,6),(34,4,9),(35,3,14),(36,4,14),(37,4,15),(38,5,17),(39,5,1),(40,5,2),(41,5,18),(42,5,3),(43,5,5),(44,5,6),(45,5,9),(46,5,10),(47,5,12),(48,6,1),(49,6,19),(50,6,20),(51,6,5),(52,6,6),(53,6,9),(54,6,12),(55,7,1),(56,7,18),(57,7,5),(58,7,6),(59,7,9),(60,7,12);
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

-- Dump completed on 2015-10-12  3:30:27
