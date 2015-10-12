-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_424
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (10,'(.*)'),(13,'NULL-CONSTANT'),(8,'android.intent.action.BOOT_COMPLETED'),(6,'android.intent.action.CHOOSER'),(1,'android.intent.action.MAIN'),(4,'android.intent.action.PACKAGE_ADDED'),(15,'android.intent.action.PACKAGE_REMOVED'),(11,'android.intent.action.SCREEN_OFF'),(2,'android.intent.action.USER_PRESENT'),(3,'android.intent.action.VIEW'),(12,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(9,'com.android.vending.INSTALL_REFERRER'),(7,'com.mobilemadness.hanoi.GameActivity'),(5,'com.mpugpwlbnmvmb.sonfk.GameActivity'),(14,'lug.chwnoftc.UTfelpdQf12');
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
INSERT INTO `Applications` VALUES (1,'com.baiaiggtk.kjcinicrfk',10033),(2,'jp.ws.pprshfd.q_fhjl',10033),(3,'run.pdmkittpcr',10046),(4,'com.kdoupse.whjmuln',10020),(5,'com.mpugpwlbnmvmb.sonfk',10035),(6,'com.tcaov.sete',10023),(7,'lug.chwnoftc',125);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.BROWSABLE'),(2,'android.intent.category.DEFAULT'),(4,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(5,'android.intent.categroy.DEFUAULT');
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
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.baiaiggtk.kjcinicrfk.ActivityMain'),(2,1,'com.baiaiggtk.kjcinicrfk.ActivityPlay'),(3,1,'com.baiaiggtk.kjcinicrfk.ActivitySelect'),(4,1,'com.baiaiggtk.kjcinicrfk.ActivityHelp'),(5,1,'com.DdbBnBw.qsnCfjkBru'),(6,1,'com.DdbBnBw.akqlsUJkseCiE'),(7,1,'com.DdbBnBw.ntpDurIhbwNACpL'),(8,1,'com.DdbBnBw.phDWdatTa'),(9,1,'com.DdbBnBw.MsVNDlkAlpwabB'),(10,1,'com.DdbBnBw.QBgCWkoDesFPUg'),(11,1,'com.DdbBnBw.userPermissionReceiver'),(12,2,'jp.ws.pprshfd.q_fhjl.StartActivity'),(13,2,'com.SOuej.qsnCfjkBru'),(14,2,'com.SOuej.akqlsUJkseCiE'),(15,2,'com.SOuej.ntpDurIhbwNACpL'),(16,2,'com.SOuej.phDWdatTa'),(17,2,'com.SOuej.MsVNDlkAlpwabB'),(18,2,'com.SOuej.QBgCWkoDesFPUg'),(19,2,'com.SOuej.userPermissionReceiver'),(20,3,'run.pdmkittpcr.wallsport0221j'),(21,3,'run.pdmkittpcr.asianbody'),(22,3,'run.pdmkittpcr.game.Main'),(23,3,'run.pdmkittpcr.MyWebView'),(24,3,'com.mobclix.android.sdk.MobclixBrowserActivity'),(25,3,'com.BBbAtfR.MAiNITQI'),(26,3,'com.BBbAtfR.WtRsmQLwN'),(27,3,'com.BBbAtfR.bkuBiuhB'),(28,4,'com.kdoupse.whjmuln.GirlDiz'),(29,4,'com.kdoupse.whjmuln.GirlGame'),(30,4,'net.youmi.android.appoffers.YoumiOffersActivity'),(31,4,'net.youmi.android.AdActivity'),(32,4,'com.gWWJLlSFD.uGMjAeBEPAwF'),(33,4,'com.gWWJLlSFD.GpQuBdHAqMJ'),(34,4,'com.nd.dianjin.activity.OfferAppActivity'),(35,4,'com.nd.dianjin.broadcastreceiver.PackagedChangedBroadcastReceiver'),(36,5,'com.mpugpwlbnmvmb.sonfk.HanoiActivity'),(37,5,'com.mpugpwlbnmvmb.sonfk.GameActivity'),(38,5,'com.google.ads.AdActivity'),(39,5,'com.openfeint.internal.ui.IntroFlow'),(40,5,'com.openfeint.api.ui.Dashboard'),(41,5,'com.openfeint.internal.ui.Settings'),(42,5,'com.openfeint.internal.ui.NativeBrowser'),(43,5,'com.GVdMJqOD.qPrtPNMgo'),(44,5,'com.GVdMJqOD.GbkeqeEBdLIc'),(45,5,'com.nd.dianjin.activity.OfferAppActivity'),(46,1,'com.DdbBnBw.j'),(47,1,'com.baiaiggtk.kjcinicrfk.ActivitySelect$1'),(48,1,'com.DdbBnBw.ab'),(49,3,'com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener'),(50,3,'run.pdmkittpcr.asianbody$3'),(51,1,'com.DdbBnBw.ad'),(52,3,'run.pdmkittpcr.DialogUtil$1'),(53,2,'com.SOuej.ab'),(54,4,'com.nd.dianjin.DianJinPlatform'),(55,3,'run.pdmkittpcr.MyWebView$7'),(56,4,'net.youmi.android.bj'),(57,2,'com.SOuej.j'),(58,6,'com.tcaov.sete.other.LoginActivity'),(59,6,'com.tcaov.sete.myroom.MyRoomActivity'),(60,6,'com.tcaov.sete.other.NewAffiliateRegistActivity'),(61,6,'com.tcaov.sete.care.ExerciseActivity'),(62,6,'com.tcaov.sete.care.GumilkActivity'),(63,6,'com.tcaov.sete.myguminoko.MyGuminokoActivity'),(64,6,'com.tcaov.sete.square.SquareActivity'),(65,6,'com.tcaov.sete.myguminoko.PuruHistoryActivity'),(66,6,'com.tcaov.sete.myguminoko.TitlePocketbookActivity'),(67,6,'com.tcaov.sete.myroom.FriendRoomActivity'),(68,3,'run.pdmkittpcr.wallsport0221j$1'),(69,6,'com.tcaov.sete.yosonoko.YosonokoActivity'),(70,4,'net.youmi.android.w'),(71,6,'com.tcaov.sete.yosonoko.ReportActivity'),(72,6,'com.tcaov.sete.mgumilist.MGumilistTomoActivity'),(73,6,'com.tcaov.sete.mgumilist.MGumilistFriendActivity'),(74,6,'com.tcaov.sete.invite.InviteActivity'),(75,3,'run.pdmkittpcr.asianbody$2'),(76,6,'com.tcaov.sete.mgumilist.MGumilistHopeActivity'),(77,6,'com.tcaov.sete.ygumilist.YGumilistTomoActivity'),(78,6,'com.tcaov.sete.care.ItemBoxDetailActivity'),(79,6,'com.tcaov.sete.shop.ShopItemDetailActivity'),(80,6,'com.tcaov.sete.shop.ShopCareItemDetailActivity'),(81,6,'com.tcaov.sete.shop.ShopCartItemDetailActivity'),(82,6,'com.tcaov.sete.shop.ShopCategoryActivity'),(83,6,'com.tcaov.sete.shop.ShopCartActivity'),(84,2,'com.SOuej.ad'),(85,6,'com.tcaov.sete.board.GumiBoardActivity'),(86,6,'com.tcaov.sete.board.InfoBoardActivity'),(87,6,'com.tcaov.sete.care.ChangeClothesTopActivity'),(88,6,'com.tcaov.sete.care.ChangeClothesActivity'),(89,6,'com.tcaov.sete.care.ItemBoxActivity'),(90,6,'com.tcaov.sete.shop.ShopActivity'),(91,6,'com.tcaov.sete.shop.SpecialInfoActivity'),(92,6,'com.tcaov.sete.shop.RecommendItemActivity'),(93,6,'com.tcaov.sete.setting.SettingActivity'),(94,6,'com.tcaov.sete.setting.NubeeSettingActivity'),(95,6,'com.tcaov.sete.school.SchoolStageSelectActivity'),(96,6,'com.tcaov.sete.transbook.TransBookStageSelectActivity'),(97,6,'com.tcaov.sete.school.SchoolCategorySelectActivity'),(98,6,'com.tcaov.sete.transbook.TransBookCategorySelectActivity'),(99,6,'com.tcaov.sete.school.SchoolCardSelectActivity'),(100,6,'com.tcaov.sete.transbook.TransBookCardSelectActivity'),(101,6,'com.tcaov.sete.school.SchoolTransActivity'),(102,6,'com.tcaov.sete.transbook.TransBookTransActivity'),(103,6,'com.tcaov.sete.school.SchoolTransResultActivity'),(104,6,'com.tcaov.sete.myroom.MyRoomTransActivity'),(105,6,'com.tcaov.sete.other.AddFriendActivity'),(106,6,'com.tcaov.sete.mgumilist.MGumilistSearchActivity'),(107,6,'com.tcaov.sete.tutorial.MyRoomActivity'),(108,6,'com.tcaov.sete.tutorial.ChangeClothesTopActivity'),(109,6,'com.tcaov.sete.tutorial.GumilkActivity'),(110,6,'com.tcaov.sete.tutorial.ExerciseActivity'),(111,6,'com.tcaov.sete.tutorial.ChangeClothesActivity'),(112,6,'com.tcaov.sete.tutorial.SchoolStageSelectActivity'),(113,6,'com.tcaov.sete.tutorial.SchoolCategorySelectActivity'),(114,6,'com.tcaov.sete.tutorial.SchoolCardSelectActivity'),(115,5,'com.mpugpwlbnmvmb.sonfk.HanoiActivity$10'),(116,6,'com.tcaov.sete.tutorial.SchoolTransActivity'),(117,6,'com.tcaov.sete.tutorial.SchoolTransResultActivity'),(118,6,'com.admob.android.ads.AdMobActivity'),(119,6,'com.kHIGcR.VemfFBVA'),(120,6,'com.kHIGcR.wwltBMCp'),(121,5,'com.nd.dianjin.DianJinPlatform'),(122,6,'com.nd.dianjin.activity.OfferAppActivity'),(123,6,'com.tcaov.sete.common.AnalyticsService'),(124,5,'com.mpugpwlbnmvmb.sonfk.HanoiActivity$18'),(125,6,'com.admob.android.ads.analytics.InstallReceiver'),(126,5,'com.openfeint.internal.ImagePicker'),(127,6,'com.nd.dianjin.broadcastreceiver.PackagedChangedBroadcastReceiver'),(128,5,'com.mpugpwlbnmvmb.sonfk.HanoiActivity$2'),(129,5,'com.mpugpwlbnmvmb.sonfk.HanoiActivity$1'),(130,5,'com.google.ads.util.AdUtil$UserActivityReceiver'),(131,7,'lug.chwnoftc.MainActivity'),(132,7,'com.google.ads.AdActivity'),(133,7,'com.millennialmedia.android.MMAdViewOverlayActivity'),(134,7,'com.millennialmedia.android.VideoPlayer'),(135,7,'net.youmi.android.AdActivity'),(136,7,'com.vpon.adon.android.WebInApp'),(137,7,'com.mt.airad.MultiAD'),(138,7,'uuw.QTEPIiov.MyActivity'),(139,7,'uuw.QTEPIiov.ApopMain'),(140,7,'uuw.QTEPIiov.UTfelpdQf16'),(141,7,'uuw.QTEPIiov.UTfelpdQf8'),(142,7,'uuw.QTEPIiov.UTfelpdQf9'),(143,7,'uuw.QTEPIiov.UTfelpdQf2'),(144,7,'uuw.QTEPIiov.UTfelpdQf10'),(145,7,'uuw.QTEPIiov.UTfelpdQf11'),(146,7,'uuw.QTEPIiov.UTfelpdQf12'),(147,7,'uuw.QTEPIiov.ag'),(148,7,'uuw.QTEPIiov.ClickableToast'),(149,7,'uuw.QTEPIiov.af'),(150,7,'uuw.QTEPIiov.am'),(151,7,'uuw.QTEPIiov.ae'),(152,7,'uuw.QTEPIiov.al'),(153,7,'uuw.QTEPIiov.br'),(154,7,'uuw.QTEPIiov.bo');
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
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,9,'fileURL'),(2,7,'apkTitle'),(3,8,'np_app_key'),(4,10,'np_app_key'),(5,7,'np_app_key'),(6,2,'np_app_key'),(7,6,'np_app_key'),(8,5,'np_app_key'),(9,3,'np_app_key'),(10,10,'fileName'),(11,7,'iconURL'),(12,7,'detailFlag'),(13,7,'apkSize'),(14,10,'fileURL'),(15,7,'apkVersion'),(16,9,'packageName'),(17,7,'apkURL'),(18,7,'apkSoftID'),(19,2,'Wooboo_PID'),(20,7,'imageURL'),(21,7,'packageName'),(22,2,'sel_level'),(23,15,'apkInfo'),(24,2,'Market_ID'),(25,15,'apkURL'),(26,24,'run.pdmkittpcr.currency'),(27,24,'run.pdmkittpcr.type'),(28,16,'np_app_key'),(29,13,'np_app_key'),(30,15,'np_app_key'),(31,18,'np_app_key'),(32,14,'np_app_key'),(33,17,'packageName'),(34,29,'LastName'),(35,31,'YOUMI_CHANNEL'),(36,29,'YOUMI_CHANNEL'),(37,7,'apkInfo'),(38,15,'apkVersion'),(39,15,'apkSize'),(40,18,'fileURL'),(41,12,'P'),(42,14,'P'),(43,15,'imageURL'),(44,15,'apkTitle'),(45,12,'GAMEID'),(46,14,'GAMEID'),(47,15,'detailFlag'),(48,15,'apkSoftID'),(49,12,'MEMBERID'),(50,14,'MEMBERID'),(51,17,'fileURL'),(52,27,''),(53,27,'(.*)'),(54,24,'run.pdmkittpcr.data'),(55,15,'iconURL'),(56,18,'fileName'),(57,29,'NextName'),(58,15,'packageName'),(59,31,'EB80F3291A8E469c962CA133BDC549D7'),(60,31,'D50EF1926ADD471892E72BCE6D7E032C'),(61,31,'D780FBF4215247bcBB1AC0AD33C474FE'),(62,31,'172C94EDC717477aBF600D7898A64A8E'),(63,42,'com.openfeint.internal.ui.NativeBrowser.argument.timeout'),(64,41,'com.openfeint.internal.ui.NativeBrowser.argument.failure_desc'),(65,41,'com.openfeint.internal.ui.Settings.subPage'),(66,40,'com.openfeint.internal.ui.Settings.subPage'),(67,39,'com.openfeint.internal.ui.Settings.subPage'),(68,41,'com.openfeint.internal.ui.NativeBrowser.argument.failed'),(69,38,'action'),(70,38,'params'),(71,42,'com.openfeint.internal.ui.NativeBrowser.argument.src'),(72,41,'content_name'),(73,40,'content_name'),(74,39,'content_name'),(75,38,'com.google.ads.AdOpener'),(76,41,'screenName'),(77,40,'screenName'),(78,39,'screenName'),(79,41,'com.openfeint.internal.ui.NativeBrowser.argument.result'),(80,122,'fromtable'),(81,119,'title'),(82,119,'from_alert'),(83,110,'params'),(84,119,'from_table'),(85,118,'poptitle'),(86,110,'com.google.ads.AdOpener'),(87,111,'overlayTitle'),(88,115,'adID'),(89,121,'isDirectFromTable'),(90,114,'adWidth'),(91,119,'status'),(92,121,'from'),(93,119,'filepath'),(94,111,'shouldShowTitlebar'),(95,122,'title'),(96,118,'popurl'),(97,116,'version_code'),(98,122,'package_name'),(99,122,'version_code'),(100,111,'overlayTransition'),(101,122,'apk_url'),(102,111,'shouldShowNavbar'),(103,119,'fromtype'),(104,122,'btn_txt'),(105,111,'canAccelerate'),(106,111,'shouldResizeOverlay'),(107,122,'url'),(108,118,'service_channel'),(109,116,'service_channel'),(110,113,'A7D1721B9508405D8271AB82AC6D9B3C'),(111,119,'game'),(112,115,'adURL'),(113,123,'service_channel'),(114,111,'transitionTime'),(115,116,'soft_id'),(116,110,'action'),(117,122,'content'),(118,114,'url');
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
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'s',0,NULL,NULL),(9,9,'s',0,NULL,NULL),(10,10,'r',0,NULL,NULL),(11,11,'r',1,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'s',0,NULL,NULL),(17,17,'s',0,NULL,NULL),(18,18,'r',0,NULL,NULL),(19,19,'r',1,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',1,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',1,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'r',1,NULL,NULL),(36,36,'a',1,NULL,NULL),(37,37,'a',1,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',1,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,58,'a',1,NULL,NULL),(47,59,'a',0,NULL,NULL),(48,60,'a',0,NULL,NULL),(49,61,'a',0,NULL,NULL),(50,62,'a',0,NULL,NULL),(51,63,'a',0,NULL,NULL),(52,64,'a',0,NULL,NULL),(53,65,'a',0,NULL,NULL),(54,66,'a',0,NULL,NULL),(55,67,'a',0,NULL,NULL),(56,69,'a',0,NULL,NULL),(57,71,'a',0,NULL,NULL),(58,72,'a',0,NULL,NULL),(59,73,'a',0,NULL,NULL),(60,74,'a',0,NULL,NULL),(61,76,'a',0,NULL,NULL),(62,77,'a',0,NULL,NULL),(63,78,'a',0,NULL,NULL),(64,79,'a',0,NULL,NULL),(65,80,'a',0,NULL,NULL),(66,81,'a',0,NULL,NULL),(67,82,'a',0,NULL,NULL),(68,83,'a',0,NULL,NULL),(69,85,'a',0,NULL,NULL),(70,86,'a',0,NULL,NULL),(71,87,'a',0,NULL,NULL),(72,88,'a',0,NULL,NULL),(73,89,'a',0,NULL,NULL),(74,90,'a',0,NULL,NULL),(75,91,'a',0,NULL,NULL),(76,92,'a',0,NULL,NULL),(77,93,'a',0,NULL,NULL),(78,94,'a',0,NULL,NULL),(79,95,'a',0,NULL,NULL),(80,96,'a',0,NULL,NULL),(81,97,'a',0,NULL,NULL),(82,98,'a',0,NULL,NULL),(83,99,'a',0,NULL,NULL),(84,100,'a',0,NULL,NULL),(85,101,'a',0,NULL,NULL),(86,102,'a',0,NULL,NULL),(87,103,'a',0,NULL,NULL),(88,104,'a',0,NULL,NULL),(89,105,'a',0,NULL,NULL),(90,106,'a',0,NULL,NULL),(91,107,'a',0,NULL,NULL),(92,108,'a',0,NULL,NULL),(93,109,'a',0,NULL,NULL),(94,110,'a',0,NULL,NULL),(95,111,'a',0,NULL,NULL),(96,112,'a',0,NULL,NULL),(97,113,'a',0,NULL,NULL),(98,114,'a',0,NULL,NULL),(99,116,'a',0,NULL,NULL),(100,117,'a',0,NULL,NULL),(101,118,'a',0,NULL,NULL),(102,119,'a',0,NULL,NULL),(103,120,'a',1,NULL,NULL),(104,122,'a',0,NULL,NULL),(105,123,'s',1,NULL,NULL),(106,125,'r',1,NULL,NULL),(107,127,'r',1,NULL,NULL),(108,130,'r',1,NULL,NULL),(109,131,'a',1,NULL,NULL),(110,132,'a',0,NULL,NULL),(111,133,'a',0,NULL,NULL),(112,134,'a',0,NULL,NULL),(113,135,'a',0,NULL,NULL),(114,136,'a',0,NULL,NULL),(115,137,'a',0,NULL,NULL),(116,138,'a',1,NULL,NULL),(117,139,'a',0,NULL,NULL),(118,140,'a',0,NULL,NULL),(119,141,'a',1,NULL,NULL),(120,142,'a',1,NULL,NULL),(121,143,'a',1,NULL,NULL),(122,144,'a',0,NULL,NULL),(123,145,'s',1,NULL,NULL),(124,146,'r',1,NULL,NULL),(125,153,'r',1,NULL,NULL),(126,154,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,6),(2,2,6),(3,3,6),(4,4,7),(5,5,9),(6,6,6),(7,6,3),(8,6,2),(9,6,7),(10,7,5),(11,8,1),(12,8,2),(13,8,6),(14,8,3),(15,9,10),(16,10,6),(17,10,3),(18,10,2),(19,11,3),(20,11,2),(21,11,6),(22,12,3),(23,12,6),(24,12,7),(25,12,2),(26,13,5),(27,14,5),(28,15,13),(29,16,24),(30,17,6),(31,17,2),(32,17,3),(33,17,1),(34,18,13),(35,19,5),(36,20,14),(37,21,1),(38,21,2),(39,21,3),(40,21,6),(41,22,21),(42,23,11),(43,24,21),(44,25,13),(45,26,33),(46,27,23),(47,28,31),(48,29,14),(49,30,21),(50,31,14),(51,31,15),(52,32,23),(53,33,27),(54,34,13),(55,35,14),(56,35,15),(57,36,25),(58,37,25),(59,38,18),(60,39,26),(61,40,26),(62,41,33),(63,42,17),(64,43,20),(65,44,31),(66,45,15),(67,46,21),(68,47,14),(69,48,14),(70,49,19),(71,50,32),(72,51,32),(73,52,44),(74,53,36),(75,54,44),(76,55,36),(77,56,41),(78,56,39),(79,57,43),(80,58,43),(81,59,36),(82,60,38),(83,61,36),(84,62,121),(85,62,122),(86,62,120),(87,63,119),(88,64,122),(89,65,122),(90,66,110),(91,67,120),(92,68,116),(93,69,116),(94,70,115),(95,71,119),(96,72,124),(97,73,122),(98,74,116),(99,75,119),(100,76,119),(101,77,122),(102,78,116),(103,79,124),(104,80,118),(105,81,119),(106,82,119),(107,83,119),(108,84,120),(109,85,119),(110,86,116),(111,87,124);
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
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,6,'<com.DdbBnBw.akqlsUJkseCiE: void b()>',55,'a',NULL),(2,6,'<com.DdbBnBw.akqlsUJkseCiE: void onBackPressed()>',5,'a',NULL),(3,6,'<com.DdbBnBw.akqlsUJkseCiE: void b()>',45,'a',NULL),(4,7,'<com.DdbBnBw.ntpDurIhbwNACpL: void onCreate(android.os.Bundle)>',74,'a',NULL),(5,9,'<com.DdbBnBw.MsVNDlkAlpwabB: void a(java.lang.String)>',10,'a',NULL),(6,46,'<com.DdbBnBw.j: void f(android.content.Context,java.lang.String)>',10,'a',NULL),(7,5,'<com.DdbBnBw.qsnCfjkBru: void onCreate(android.os.Bundle)>',18,'a',NULL),(8,1,'<com.baiaiggtk.kjcinicrfk.ActivityMain: void onClick(android.view.View)>',8,'a',NULL),(9,10,'<com.DdbBnBw.QBgCWkoDesFPUg: void a(android.content.Context)>',76,'a',NULL),(10,47,'<com.baiaiggtk.kjcinicrfk.ActivitySelect$1: void onClick(android.view.View)>',19,'a',NULL),(11,6,'<com.DdbBnBw.akqlsUJkseCiE: void a()>',3,'a',NULL),(12,7,'<com.DdbBnBw.ntpDurIhbwNACpL: void a(com.DdbBnBw.ntpDurIhbwNACpL,android.content.Context,java.lang.String)>',5,'a',NULL),(13,5,'<com.DdbBnBw.qsnCfjkBru: void onCreate(android.os.Bundle)>',28,'a',0),(14,48,'<com.DdbBnBw.ab: void run()>',8,'s',NULL),(15,13,'<com.SOuej.qsnCfjkBru: void onCreate(android.os.Bundle)>',33,'a',NULL),(16,49,'<com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener: void onClick(android.view.View)>',7,'a',NULL),(17,1,'<com.baiaiggtk.kjcinicrfk.ActivityMain: void onClick(android.view.View)>',12,'a',NULL),(18,13,'<com.SOuej.qsnCfjkBru: void onCreate(android.os.Bundle)>',18,'a',NULL),(19,5,'<com.DdbBnBw.qsnCfjkBru: void onCreate(android.os.Bundle)>',33,'a',NULL),(20,14,'<com.SOuej.akqlsUJkseCiE: void b()>',55,'a',NULL),(21,1,'<com.baiaiggtk.kjcinicrfk.ActivityMain: void onClick(android.view.View)>',16,'a',NULL),(22,50,'<run.pdmkittpcr.asianbody$3: void onClick(android.view.View)>',11,'a',NULL),(23,51,'<com.DdbBnBw.ad: void run()>',25,'s',NULL),(24,52,'<run.pdmkittpcr.DialogUtil$1: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(25,53,'<com.SOuej.ab: void run()>',8,'s',NULL),(26,54,'<com.nd.dianjin.DianJinPlatform: void showOfferWall(android.content.Context,com.nd.dianjin.DianJinPlatform$Oriention)>',7,'a',NULL),(27,55,'<run.pdmkittpcr.MyWebView$7: void onClick(android.view.View)>',7,'a',NULL),(28,56,'<net.youmi.android.bj: void a(android.content.Context,java.lang.String)>',7,'a',NULL),(29,14,'<com.SOuej.akqlsUJkseCiE: void onBackPressed()>',5,'a',NULL),(30,21,'<run.pdmkittpcr.asianbody: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(31,15,'<com.SOuej.ntpDurIhbwNACpL: void a(com.SOuej.ntpDurIhbwNACpL,android.content.Context,java.lang.String)>',5,'a',NULL),(32,23,'<run.pdmkittpcr.MyWebView: void openFile(java.lang.String)>',19,'a',NULL),(33,27,'<com.BBbAtfR.bkuBiuhB: void a(android.content.Context,java.lang.String)>',10,'a',NULL),(34,13,'<com.SOuej.qsnCfjkBru: void onCreate(android.os.Bundle)>',28,'a',0),(35,57,'<com.SOuej.j: void f(android.content.Context,java.lang.String)>',10,'a',NULL),(36,25,'<com.BBbAtfR.MAiNITQI: void onRestart()>',7,'a',NULL),(37,25,'<com.BBbAtfR.MAiNITQI: void b()>',12,'a',NULL),(38,18,'<com.SOuej.QBgCWkoDesFPUg: void a(android.content.Context)>',76,'a',NULL),(39,26,'<com.BBbAtfR.WtRsmQLwN: void onRestart()>',7,'a',NULL),(40,26,'<com.BBbAtfR.WtRsmQLwN: void onRestart()>',14,'a',NULL),(41,33,'<com.gWWJLlSFD.GpQuBdHAqMJ: void a()>',3,'a',NULL),(42,17,'<com.SOuej.MsVNDlkAlpwabB: void a(java.lang.String)>',10,'a',NULL),(43,68,'<run.pdmkittpcr.wallsport0221j$1: void run()>',21,'a',NULL),(44,70,'<net.youmi.android.w: void onClick(android.view.View)>',48,'a',NULL),(45,15,'<com.SOuej.ntpDurIhbwNACpL: void onCreate(android.os.Bundle)>',74,'a',NULL),(46,75,'<run.pdmkittpcr.asianbody$2: void onClick(android.view.View)>',8,'a',NULL),(47,14,'<com.SOuej.akqlsUJkseCiE: void b()>',45,'a',NULL),(48,14,'<com.SOuej.akqlsUJkseCiE: void a()>',3,'a',NULL),(49,84,'<com.SOuej.ad: void run()>',25,'s',NULL),(50,32,'<com.gWWJLlSFD.uGMjAeBEPAwF: void a()>',3,'a',NULL),(51,32,'<com.gWWJLlSFD.uGMjAeBEPAwF: void a(java.lang.String)>',10,'a',NULL),(52,44,'<com.GVdMJqOD.GbkeqeEBdLIc: void a()>',3,'a',NULL),(53,115,'<com.mpugpwlbnmvmb.sonfk.HanoiActivity$10: void onClick(android.view.View)>',33,'a',NULL),(54,121,'<com.nd.dianjin.DianJinPlatform: void showOfferWall(android.content.Context,com.nd.dianjin.DianJinPlatform$Oriention)>',7,'a',NULL),(55,124,'<com.mpugpwlbnmvmb.sonfk.HanoiActivity$18: void onClick(android.view.View)>',42,'a',NULL),(56,126,'<com.openfeint.internal.ImagePicker: android.graphics.Bitmap onImagePickerActivityResult(android.app.Activity,int,int,android.content.Intent)>',10,'p',0),(57,43,'<com.GVdMJqOD.qPrtPNMgo: void a()>',3,'a',NULL),(58,43,'<com.GVdMJqOD.qPrtPNMgo: void a(java.lang.String)>',11,'a',NULL),(59,128,'<com.mpugpwlbnmvmb.sonfk.HanoiActivity$2: void onClick(android.view.View)>',26,'a',NULL),(60,38,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',82,'a',NULL),(61,129,'<com.mpugpwlbnmvmb.sonfk.HanoiActivity$1: void onClick(android.view.View)>',48,'a',NULL),(62,143,'<uuw.QTEPIiov.UTfelpdQf2: void a(int,boolean)>',10,'s',NULL),(63,147,'<uuw.QTEPIiov.ag: void onClick(android.view.View)>',218,'a',NULL),(64,144,'<uuw.QTEPIiov.UTfelpdQf10: void onClick(android.view.View)>',75,'a',NULL),(65,144,'<uuw.QTEPIiov.UTfelpdQf10: void onClick(android.view.View)>',84,'a',NULL),(66,132,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(67,142,'<uuw.QTEPIiov.UTfelpdQf9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(68,148,'<uuw.QTEPIiov.ClickableToast: void onClick(android.view.View)>',105,'a',NULL),(69,149,'<uuw.QTEPIiov.af: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(70,137,'<com.mt.airad.MultiAD: void _$2()>',7,'r',NULL),(71,150,'<uuw.QTEPIiov.am: void onClick(android.view.View)>',218,'a',NULL),(72,146,'<uuw.QTEPIiov.UTfelpdQf12: void onReceive(android.content.Context,android.content.Intent)>',70,'s',NULL),(73,144,'<uuw.QTEPIiov.UTfelpdQf10: void onClick(android.view.View)>',66,'a',NULL),(74,151,'<uuw.QTEPIiov.ae: boolean onKey(android.content.DialogInterface,int,android.view.KeyEvent)>',16,'a',NULL),(75,150,'<uuw.QTEPIiov.am: void onClick(android.view.View)>',239,'a',NULL),(76,152,'<uuw.QTEPIiov.al: void onClick(android.view.View)>',221,'a',NULL),(77,144,'<uuw.QTEPIiov.UTfelpdQf10: void onClick(android.view.View)>',53,'a',NULL),(78,138,'<uuw.QTEPIiov.MyActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(79,146,'<uuw.QTEPIiov.UTfelpdQf12: void onReceive(android.content.Context,android.content.Intent)>',19,'s',NULL),(80,140,'<uuw.QTEPIiov.UTfelpdQf16: boolean onKeyDown(int,android.view.KeyEvent)>',5,'a',NULL),(81,141,'<uuw.QTEPIiov.UTfelpdQf8: void onCreate(android.os.Bundle)>',33,'s',NULL),(82,152,'<uuw.QTEPIiov.al: void onClick(android.view.View)>',242,'a',NULL),(83,147,'<uuw.QTEPIiov.ag: void onClick(android.view.View)>',239,'a',NULL),(84,142,'<uuw.QTEPIiov.UTfelpdQf9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(85,141,'<uuw.QTEPIiov.UTfelpdQf8: void onCreate(android.os.Bundle)>',84,'s',NULL),(86,138,'<uuw.QTEPIiov.MyActivity: void onCreate(android.os.Bundle)>',46,'s',NULL),(87,146,'<uuw.QTEPIiov.UTfelpdQf12: void onReceive(android.content.Context,android.content.Intent)>',42,'s',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,4,1),(2,5,1),(3,6,3),(4,7,3),(5,13,1),(6,14,1),(7,17,3),(8,20,3),(9,24,3),(10,26,3),(11,30,3),(12,33,3),(13,35,1),(14,34,3),(15,36,3),(16,37,1),(17,38,3),(18,39,3),(19,40,3),(20,42,3),(21,43,3),(22,44,3),(23,46,3),(24,47,3),(25,48,3),(26,49,3),(27,50,3),(28,54,3),(29,57,6),(30,58,1),(31,59,6),(32,60,6),(33,61,1),(34,63,6),(35,65,6),(36,66,6),(37,68,6),(38,70,6),(39,72,3),(40,74,7),(41,76,7),(42,78,3),(43,79,3),(44,80,7),(45,81,3),(46,82,10),(47,83,10),(48,84,7),(49,86,3),(50,87,3),(51,88,12),(52,90,3),(53,91,10),(54,92,10),(55,93,1),(56,94,1),(57,97,13),(58,98,3),(59,99,3),(60,100,14),(61,101,3),(62,102,3),(63,104,1),(64,105,1),(65,106,1),(66,107,1),(67,108,3),(68,109,3),(69,115,1),(70,116,1),(71,117,1),(72,118,1),(73,119,1),(74,120,1),(75,121,1),(76,122,1),(77,126,14);
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
INSERT INTO `ICategories` VALUES (1,4,1),(2,5,4),(3,13,1),(4,14,4),(5,35,1),(6,37,4),(7,58,1),(8,61,4),(9,93,1),(10,94,4),(11,104,1),(12,105,4),(13,106,1),(14,107,4),(15,115,1),(16,116,4),(17,117,1),(18,118,4),(19,119,1),(20,120,4),(21,121,1),(22,122,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/baiaiggtk/kjcinicrfk/ActivityMain'),(2,2,'com/baiaiggtk/kjcinicrfk/ActivityMain'),(3,3,'com/baiaiggtk/kjcinicrfk/ActivityMain'),(4,8,'com/DdbBnBw/akqlsUJkseCiE'),(5,9,'com/baiaiggtk/kjcinicrfk/ActivityHelp'),(6,10,'com/DdbBnBw/ntpDurIhbwNACpL'),(7,11,'com/baiaiggtk/kjcinicrfk/ActivityPlay'),(8,12,'com/baiaiggtk/kjcinicrfk/ActivityMain'),(9,15,'com/DdbBnBw/phDWdatTa'),(10,16,'com/SOuej/akqlsUJkseCiE'),(11,18,'com/baiaiggtk/kjcinicrfk/ActivityPlay'),(12,19,'com/SOuej/akqlsUJkseCiE'),(13,21,'com/DdbBnBw/akqlsUJkseCiE'),(14,22,'jp/ws/pprshfd/q_fhjl/StartActivity'),(15,23,'com/baiaiggtk/kjcinicrfk/ActivitySelect'),(16,25,'com/DdbBnBw/phDWdatTa'),(17,27,'com/SOuej/phDWdatTa'),(18,28,'com/nd/dianjin/activity/OfferAppActivity'),(19,29,'run/pdmkittpcr/asianbody'),(20,31,'jp/ws/pprshfd/q_fhjl/StartActivity'),(21,32,'run/pdmkittpcr/game/Main'),(22,41,'com/BBbAtfR/bkuBiuhB'),(23,45,'com/SOuej/ntpDurIhbwNACpL'),(24,51,'com/BBbAtfR/bkuBiuhB'),(25,52,'run/pdmkittpcr/wallsport0221j'),(26,53,'com/kdoupse/whjmuln/GirlDiz'),(27,56,'run/pdmkittpcr/asianbody'),(28,62,'run/pdmkittpcr/MyWebView'),(29,64,'jp/ws/pprshfd/q_fhjl/StartActivity'),(30,67,'jp/ws/pprshfd/q_fhjl/StartActivity'),(31,69,'com/SOuej/phDWdatTa'),(32,71,'com/kdoupse/whjmuln/GirlDiz'),(33,73,'com/mpugpwlbnmvmb/sonfk/HanoiActivity'),(34,75,'com/nd/dianjin/activity/OfferAppActivity'),(35,77,'com/mpugpwlbnmvmb/sonfk/HanoiActivity'),(36,85,'uuw/QTEPIiov/UTfelpdQf11'),(37,89,'uuw/QTEPIiov/UTfelpdQf10'),(38,95,'uuw/QTEPIiov/UTfelpdQf16'),(39,96,'lug/chwnoftc/MainActivity'),(40,100,'uuw/QTEPIiov/UTfelpdQf11'),(41,103,'lug/chwnoftc/MainActivity'),(42,110,'uuw/QTEPIiov/UTfelpdQf8'),(43,111,'uuw/QTEPIiov/UTfelpdQf11'),(44,112,'uuw/QTEPIiov/UTfelpdQf11'),(45,113,'lug/chwnoftc/MainActivity'),(46,114,'uuw/QTEPIiov/UTfelpdQf11'),(47,123,'uuw/QTEPIiov/UTfelpdQf8'),(48,124,'uuw/QTEPIiov/UTfelpdQf11'),(49,125,'uuw/QTEPIiov/UTfelpdQf11'),(50,126,'uuw/QTEPIiov/UTfelpdQf11');
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
INSERT INTO `IData` VALUES (1,6,1),(2,7,2),(3,17,3),(4,20,4),(5,24,5),(6,26,6),(7,30,7),(8,33,8),(9,34,9),(10,36,10),(11,38,11),(12,39,12),(13,40,13),(14,42,14),(15,43,15),(16,44,16),(17,47,17),(18,46,18),(19,48,19),(20,49,20),(21,50,21),(22,54,22),(23,72,23),(24,78,24),(25,79,25),(26,81,26),(27,82,27),(28,83,28),(29,86,29),(30,87,30),(31,90,31),(32,91,32),(33,92,33),(34,98,34),(35,99,35),(36,101,36),(37,102,37),(38,108,38),(39,109,39);
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
INSERT INTO `IExtras` VALUES (1,10,'apkVersion'),(2,10,'apkURL'),(3,10,'apkInfo'),(4,10,'packageName'),(5,10,'apkSoftID'),(6,10,'apkTitle'),(7,10,'iconURL'),(8,10,'apkSize'),(9,10,'imageURL'),(10,11,'sel_level'),(11,28,'oriention'),(12,45,'apkVersion'),(13,45,'apkURL'),(14,45,'apkInfo'),(15,45,'packageName'),(16,45,'apkSoftID'),(17,45,'apkTitle'),(18,45,'iconURL'),(19,45,'apkSize'),(20,45,'imageURL'),(21,57,'android.intent.extra.INTENT'),(22,59,'android.intent.extra.INTENT'),(23,60,'android.intent.extra.TITLE'),(24,60,'android.intent.extra.INTENT'),(25,63,'android.intent.extra.INTENT'),(26,65,'android.intent.extra.TITLE'),(27,65,'android.intent.extra.INTENT'),(28,66,'android.intent.extra.INTENT'),(29,68,'android.intent.extra.TITLE'),(30,68,'android.intent.extra.INTENT'),(31,70,'android.intent.extra.TITLE'),(32,70,'android.intent.extra.INTENT'),(33,75,'oriention'),(34,89,'title'),(35,89,'btn_txt'),(36,89,'need_adb_flag'),(37,89,'cont'),(38,89,'close_flag'),(39,95,'popurl'),(40,95,'poptitle'),(41,97,'adViewLeaveParameter'),(42,110,'id'),(43,110,'from_alert'),(44,110,'detail_flag'),(45,123,'game'),(46,123,'fromtype');
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,2,1),(2,3,2),(3,5,3),(4,6,1),(5,7,2),(6,9,1),(7,11,1),(8,12,4),(9,14,5),(10,15,1),(11,17,3),(12,18,1),(13,19,8),(14,20,9),(15,21,4),(16,22,2),(17,22,11),(18,24,1),(19,25,1),(20,26,1),(21,27,1),(22,28,1),(23,29,8),(24,29,2),(25,30,11),(26,31,15),(27,32,4),(28,33,2);
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
INSERT INTO `IFCategories` VALUES (1,2,1),(2,5,3),(3,5,2),(4,6,1),(5,9,1),(6,11,1),(7,14,2),(8,15,1),(9,17,2),(10,17,3),(11,18,1),(12,24,1),(13,28,1),(14,31,5),(15,32,5);
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
INSERT INTO `IFData` VALUES (1,5,'hangame-s-powa','',NULL,NULL,NULL,NULL),(2,12,'package',NULL,NULL,NULL,NULL,NULL),(3,17,'gmnk',NULL,NULL,NULL,NULL,NULL),(4,21,'package',NULL,NULL,NULL,NULL,NULL),(5,31,'package',NULL,NULL,NULL,NULL,NULL),(6,32,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,6,'application','vnd.android.package-archive'),(2,7,'application','vnd.android.package-archive'),(3,30,'application','vnd.android.package-archive'),(4,33,'application','vnd.android.package-archive'),(5,34,'application','vnd.android.package-archive'),(6,36,'application','vnd.android.package-archive'),(7,38,'application','vnd.android.package-archive'),(8,39,'application','vnd.android.package-archive'),(9,40,'application','vnd.android.package-archive'),(10,42,'application','vnd.android.package-archive'),(11,43,'application','vnd.android.package-archive'),(12,46,'application','vnd.android.package-archive'),(13,49,'application','vnd.android.package-archive'),(14,50,'application','vnd.android.package-archive'),(15,54,'application','vnd.android.package-archive'),(16,72,'application','vnd.android.package-archive'),(17,79,'(.*)','(.*)'),(18,82,'(.*)','(.*)'),(19,86,'application','vnd.android.package-archive'),(20,87,'application','vnd.android.package-archive'),(21,91,'(.*)','(.*)'),(22,98,'application','vnd.android.package-archive'),(23,99,'application','vnd.android.package-archive'),(24,108,'application','vnd.android.package-archive'),(25,109,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.baiaiggtk.kjcinicrfk'),(2,2,'com.baiaiggtk.kjcinicrfk'),(3,3,'com.baiaiggtk.kjcinicrfk'),(4,4,'(.*)'),(5,5,'(.*)'),(6,8,'com.baiaiggtk.kjcinicrfk'),(7,9,'com.baiaiggtk.kjcinicrfk'),(8,10,'com.baiaiggtk.kjcinicrfk'),(9,11,'com.baiaiggtk.kjcinicrfk'),(10,12,'com.baiaiggtk.kjcinicrfk'),(11,13,'(.*)'),(12,14,'(.*)'),(13,15,'com.baiaiggtk.kjcinicrfk'),(14,16,'jp.ws.pprshfd.q_fhjl'),(15,18,'com.baiaiggtk.kjcinicrfk'),(16,19,'jp.ws.pprshfd.q_fhjl'),(17,21,'com.baiaiggtk.kjcinicrfk'),(18,22,'jp.ws.pprshfd.q_fhjl'),(19,23,'com.baiaiggtk.kjcinicrfk'),(20,25,'com.baiaiggtk.kjcinicrfk'),(21,27,'jp.ws.pprshfd.q_fhjl'),(22,28,'com.kdoupse.whjmuln'),(23,29,'run.pdmkittpcr'),(24,31,'jp.ws.pprshfd.q_fhjl'),(25,32,'run.pdmkittpcr'),(26,35,'(.*)'),(27,37,'(.*)'),(28,41,'run.pdmkittpcr'),(29,45,'jp.ws.pprshfd.q_fhjl'),(30,51,'run.pdmkittpcr'),(31,52,'run.pdmkittpcr'),(32,53,'com.kdoupse.whjmuln'),(33,56,'run.pdmkittpcr'),(34,58,'(.*)'),(35,62,'run.pdmkittpcr'),(36,61,'(.*)'),(37,64,'jp.ws.pprshfd.q_fhjl'),(38,67,'jp.ws.pprshfd.q_fhjl'),(39,69,'jp.ws.pprshfd.q_fhjl'),(40,71,'com.kdoupse.whjmuln'),(41,73,'com.mpugpwlbnmvmb.sonfk'),(42,75,'com.mpugpwlbnmvmb.sonfk'),(43,77,'com.mpugpwlbnmvmb.sonfk'),(44,85,'lug.chwnoftc'),(45,89,'lug.chwnoftc'),(46,93,'(.*)'),(47,94,'(.*)'),(48,95,'lug.chwnoftc'),(49,96,'lug.chwnoftc'),(50,100,'lug.chwnoftc'),(51,103,'lug.chwnoftc'),(52,104,'(.*)'),(53,105,''),(54,106,''),(55,107,'(.*)'),(56,110,'lug.chwnoftc'),(57,111,'lug.chwnoftc'),(58,112,'lug.chwnoftc'),(59,113,'lug.chwnoftc'),(60,114,'lug.chwnoftc'),(61,115,'(.*)'),(62,116,''),(63,117,''),(64,118,'(.*)'),(65,119,'(.*)'),(66,120,''),(67,121,''),(68,122,'(.*)'),(69,123,'lug.chwnoftc'),(70,124,'lug.chwnoftc'),(71,125,'lug.chwnoftc'),(72,126,'lug.chwnoftc');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,5,0),(3,11,0),(4,12,0),(5,12,0),(6,13,0),(7,19,0),(8,20,0),(9,26,0),(10,28,0),(11,33,0),(12,35,0),(13,36,0),(14,37,0),(15,44,0),(16,46,0),(17,46,0),(18,103,0),(19,105,0),(20,106,0),(21,107,0),(22,108,0),(23,109,0),(24,116,0),(25,119,0),(26,120,0),(27,121,0),(28,123,0),(29,124,0),(30,125,0),(31,124,0),(32,124,0),(33,126,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,1,0),(5,4,1,0),(6,5,1,0),(7,6,1,0),(8,7,0,0),(9,8,0,0),(10,9,0,0),(11,10,0,0),(12,11,0,0),(13,12,1,0),(14,12,1,0),(15,14,0,0),(16,15,0,0),(17,16,1,0),(18,17,0,0),(19,18,0,0),(20,16,1,0),(21,19,0,0),(22,20,0,0),(23,21,0,0),(24,22,1,0),(25,23,0,0),(26,24,1,0),(27,25,0,0),(28,26,0,0),(29,27,0,0),(30,28,1,0),(31,29,0,0),(32,30,0,0),(33,28,1,0),(34,32,1,0),(35,31,1,0),(36,28,1,0),(37,31,1,0),(38,33,1,0),(39,28,1,0),(40,28,1,0),(41,36,0,0),(42,35,1,0),(43,28,1,0),(44,37,1,0),(45,38,0,0),(46,28,1,0),(47,37,1,0),(48,37,1,0),(49,28,1,0),(50,28,1,0),(51,39,0,0),(52,40,0,0),(53,41,0,0),(54,42,1,0),(55,43,1,0),(56,43,0,0),(57,44,1,0),(58,45,1,0),(59,44,1,0),(60,44,1,0),(61,45,1,0),(62,46,0,0),(63,44,1,0),(64,47,0,0),(65,44,1,0),(66,44,1,0),(67,48,0,0),(68,44,1,0),(69,49,0,0),(70,44,1,0),(71,50,0,0),(72,51,1,0),(73,52,0,0),(74,53,1,0),(75,54,0,0),(76,55,1,0),(77,57,0,0),(78,58,1,0),(79,58,1,0),(80,59,1,0),(81,60,1,0),(82,60,1,0),(83,60,1,0),(84,61,1,0),(85,62,0,0),(86,63,1,0),(87,63,1,0),(88,64,1,0),(89,65,0,0),(90,66,1,0),(91,66,1,0),(92,66,1,0),(93,67,1,0),(94,67,1,0),(95,68,0,0),(96,69,0,0),(97,70,1,0),(98,71,1,0),(99,71,1,0),(100,72,0,0),(101,73,1,0),(102,73,1,0),(103,74,0,0),(104,75,1,0),(105,75,1,0),(106,75,1,0),(107,75,1,0),(108,76,1,0),(109,76,1,0),(110,77,0,0),(111,78,0,0),(112,79,0,0),(113,80,0,0),(114,81,0,0),(115,82,1,0),(116,82,1,0),(117,82,1,0),(118,82,1,0),(119,83,1,0),(120,83,1,0),(121,83,1,0),(122,83,1,0),(123,84,0,0),(124,85,0,0),(125,86,0,0),(126,87,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (8,'android.permission.ACCESS_COARSE_LOCATION'),(14,'android.permission.ACCESS_FINE_LOCATION'),(9,'android.permission.ACCESS_NETWORK_STATE'),(7,'android.permission.ACCESS_WIFI_STATE'),(4,'android.permission.GET_TASKS'),(5,'android.permission.INTERNET'),(10,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(1,'android.permission.READ_PHONE_STATE'),(13,'android.permission.RECEIVE_BOOT_COMPLETED'),(11,'android.permission.SET_WALLPAPER'),(3,'android.permission.SYSTEM_ALERT_WINDOW'),(12,'android.permission.WAKE_LOCK'),(6,'android.permission.WRITE_EXTERNAL_STORAGE'),(2,'com.android.launcher.permission.INSTALL_SHORTCUT'),(15,'com.android.launcher.permission.UNINSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'',NULL,NULL,NULL),(5,NULL,NULL,'http://market.android.com/search?q=pub:superpeterpan',NULL,NULL,NULL),(6,NULL,NULL,'http://market.android.com/search?q=pub:JohnHancock',NULL,NULL,NULL),(7,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(8,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(9,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(10,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(11,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(12,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(16,NULL,NULL,'(.*)(.*)',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL),(19,NULL,NULL,'',NULL,NULL,NULL),(20,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(21,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(22,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(23,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(24,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(25,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'(.*)',NULL,NULL,NULL),(28,NULL,NULL,'(.*)',NULL,NULL,NULL),(29,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(30,NULL,NULL,'file://',NULL,NULL,NULL),(31,NULL,NULL,'(.*)',NULL,NULL,NULL),(32,NULL,NULL,'(.*)',NULL,NULL,NULL),(33,NULL,NULL,'(.*)',NULL,NULL,NULL),(34,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(35,NULL,NULL,'file://',NULL,NULL,NULL),(36,NULL,NULL,'(.*)',NULL,NULL,NULL),(37,NULL,NULL,'',NULL,NULL,NULL),(38,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(39,NULL,NULL,'file://',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,2,1),(8,2,2),(9,2,3),(10,2,4),(11,2,5),(12,2,6),(13,2,7),(14,2,8),(15,2,9),(16,3,1),(17,3,4),(18,3,5),(19,3,6),(20,3,7),(21,3,9),(22,3,10),(23,3,11),(24,4,1),(25,4,5),(26,4,6),(27,4,7),(28,4,8),(29,4,9),(30,5,1),(31,5,5),(32,5,6),(33,5,7),(34,5,8),(35,5,9),(36,5,12),(37,6,1),(38,6,5),(39,6,6),(40,6,7),(41,6,8),(42,6,9),(43,7,1),(44,7,2),(45,7,4),(46,7,5),(47,7,6),(48,7,7),(49,7,8),(50,7,9),(51,7,13),(52,7,14),(53,7,15);
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

-- Dump completed on 2015-10-09  0:39:37
