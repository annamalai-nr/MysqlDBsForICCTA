-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_436
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (12,'(.*)'),(16,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(3,'android.intent.action.PACKAGE_ADDED'),(10,'android.intent.action.SCREEN_OFF'),(13,'android.intent.action.SEARCH'),(2,'android.intent.action.USER_PRESENT'),(8,'android.intent.action.VIEW'),(14,'com.android.music.musicservicecommand'),(7,'com.android.vending.INSTALL_REFERRER'),(4,'com.android.vending.billing.IN_APP_NOTIFY'),(9,'com.android.vending.billing.MarketBillingService.BIND'),(5,'com.android.vending.billing.PURCHASE_STATE_CHANGED'),(6,'com.android.vending.billing.RESPONSE_CODE'),(15,'com.androidemu.gba.action.SPECIFY_BIOS'),(11,'com.example.dungeons.GET_PURCHASE_INFORMATION');
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
INSERT INTO `Applications` VALUES (1,'com.iur_notkna',10037),(2,'ddqndoq.sajjdksu',10033),(3,'org.cahlomi.dmugeiwawbrgt',10023),(4,'ofv.ojreoenhro.wowmrv',10036),(5,'efu.phjmher52023.fhopriuqp',10033),(6,'com.ajucl.fqpmswr.ibnljjjad',10023),(7,'org.qfktqoaj.urlbtib.swrc',10038);
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
INSERT INTO `CategoryStrings` VALUES (4,'android.intent.category.BROWSABLE'),(3,'android.intent.category.DEFAULT'),(2,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.iur_notkna.SATBOXActivity'),(2,1,'com.iur_notkna.Setting'),(3,1,'com.iur_notkna.Game'),(4,1,'com.iur_notkna.Pen_tukami'),(5,1,'com.iur_notkna.GameBattle'),(6,1,'com.iur_notkna.BattleGame'),(7,1,'com.iur_notkna.BattleResult'),(8,1,'com.iur_notkna.Help'),(9,2,'ddqndoq.sajjdksu.MainActivity'),(10,1,'com.uIWVEK.qTKDeheiWPsiQ'),(11,1,'com.uIWVEK.jGwHcWMJOAop'),(12,2,'com.google.ads.AdActivity'),(13,2,'com.wSEdUtc.qsnCfjkBru'),(14,2,'com.wSEdUtc.akqlsUJkseCiE'),(15,2,'com.wSEdUtc.ntpDurIhbwNACpL'),(16,2,'com.wSEdUtc.phDWdatTa'),(17,2,'com.wSEdUtc.MsVNDlkAlpwabB'),(18,2,'com.wSEdUtc.QBgCWkoDesFPUg'),(19,2,'com.wSEdUtc.userPermissionReceiver'),(20,3,'org.cahlomi.dmugeiwawbrgt.Splash'),(21,3,'org.cahlomi.dmugeiwawbrgt.SportsLinLink'),(22,3,'org.cahlomi.dmugeiwawbrgt.Game'),(23,3,'org.cahlomi.dmugeiwawbrgt.StageList'),(24,3,'org.cahlomi.dmugeiwawbrgt.Help'),(25,3,'org.cahlomi.dmugeiwawbrgt.ChangePic'),(26,3,'com.admob.android.ads.AdMobActivity'),(27,3,'com.eLPnqtG.VemfFBVA'),(28,3,'com.eLPnqtG.wwltBMCp'),(29,3,'com.nd.dianjin.activity.OfferAppActivity'),(30,3,'com.nd.dianjin.broadcastreceiver.PackagedChangedBroadcastReceiver'),(31,4,'com.camelgames.bomber.MainActivity'),(32,4,'com.camelgames.bomb.activities.ScoreActivity'),(33,4,'com.camelgames.bomb.activities.ProfilesActivity'),(34,4,'com.camelgames.bomb.activities.TutorialActivity'),(35,4,'com.SbWiW.HgAAsIdvHBKLuTi'),(36,4,'com.SbWiW.klLGupemNkv'),(37,4,'com.nd.dianjin.activity.OfferAppActivity'),(38,4,'com.camelgames.billing.BillingService'),(39,4,'com.camelgames.billing.BillingReceiver'),(40,1,'com.iur_notkna.Setting$18'),(41,5,'efu.phjmher52023.fhopriuqp.GloftREDRActivity'),(42,5,'com.admob.android.ads.AdMobActivity'),(43,5,'com.eANDqEi.qsnCfjkBru'),(44,1,'com.iur_notkna.Setting$4'),(45,5,'com.eANDqEi.akqlsUJkseCiE'),(46,5,'com.eANDqEi.ntpDurIhbwNACpL'),(47,5,'com.eANDqEi.phDWdatTa'),(48,1,'com.iur_notkna.Setting$16'),(49,5,'com.eANDqEi.MsVNDlkAlpwabB'),(50,5,'com.admob.android.ads.analytics.InstallReceiver'),(51,1,'com.iur_notkna.Setting$1'),(52,5,'com.eANDqEi.QBgCWkoDesFPUg'),(53,5,'com.eANDqEi.userPermissionReceiver'),(54,1,'com.iur_notkna.Setting$13'),(55,1,'com.iur_notkna.Setting$19'),(56,1,'com.iur_notkna.Setting$2'),(57,1,'com.iur_notkna.Setting$6'),(58,1,'com.iur_notkna.Setting$17'),(59,1,'com.iur_notkna.Pen_tukami$3'),(60,1,'com.iur_notkna.Setting$20'),(61,2,'com.wSEdUtc.ab'),(62,3,'com.nd.dianjin.DianJinPlatform'),(63,2,'com.wSEdUtc.j'),(64,1,'com.iur_notkna.Setting$14'),(65,3,'org.cahlomi.dmugeiwawbrgt.StageList$ItemClickListener'),(66,6,'com.ajucl.fqpmswr.ibnljjjad.SplashActivity'),(67,1,'com.iur_notkna.Setting$15'),(68,6,'com.dodur.android.gamebox.Box'),(69,6,'com.ajucl.fqpmswr.ibnljjjad.GameActivity'),(70,3,'com.admob.android.ads.q'),(71,6,'com.google.ads.AdActivity'),(72,6,'com.ajucl.fqpmswr.ibnljjjad.HowToPlayActivity'),(73,6,'cn.domob.android.ads.DomobActivity'),(74,6,'com.millennialmedia.android.MMAdViewOverlayActivity'),(75,1,'com.iur_notkna.Setting$11'),(76,6,'com.millennialmedia.android.VideoPlayer'),(77,6,'com.scoreloop.client.android.ui.EntryScreenActivity'),(78,2,'com.wSEdUtc.ad'),(79,6,'com.scoreloop.client.android.ui.PostScoreOverlayActivity'),(80,6,'com.scoreloop.client.android.ui.ShowResultOverlayActivity'),(81,1,'com.iur_notkna.Setting$3'),(82,6,'com.scoreloop.client.android.ui.BuddiesScreenActivity'),(83,3,'org.cahlomi.dmugeiwawbrgt.SportsLinLink$1'),(84,6,'com.scoreloop.client.android.ui.LeaderboardsScreenActivity'),(85,6,'com.scoreloop.client.android.ui.ChallengesScreenActivity'),(86,6,'com.scoreloop.client.android.ui.AchievementsScreenActivity'),(87,4,'com.camelgames.billing.PurchaseObserver'),(88,2,'com.google.ads.util.AdUtil$UserActivityReceiver'),(89,6,'com.scoreloop.client.android.ui.SocialMarketScreenActivity'),(90,6,'com.scoreloop.client.android.ui.ProfileScreenActivity'),(91,6,'com.scoreloop.client.android.ui.component.market.MarketHeaderActivity'),(92,1,'com.iur_notkna.Setting$9'),(93,6,'com.scoreloop.client.android.ui.component.market.MarketListActivity'),(94,6,'com.scoreloop.client.android.ui.component.entry.EntryListActivity'),(95,6,'com.scoreloop.client.android.ui.component.post.PostOverlayActivity'),(96,1,'com.iur_notkna.Pen_tukami$1'),(97,6,'com.scoreloop.client.android.ui.component.score.ScoreHeaderActivity'),(98,6,'com.scoreloop.client.android.ui.component.score.ScoreListActivity'),(99,6,'com.scoreloop.client.android.ui.component.user.UserAddBuddyListActivity'),(100,6,'com.scoreloop.client.android.ui.component.user.UserHeaderActivity'),(101,6,'com.scoreloop.client.android.ui.component.user.UserDetailListActivity'),(102,6,'com.scoreloop.client.android.ui.component.user.UserListActivity'),(103,1,'com.iur_notkna.Setting$5'),(104,6,'com.scoreloop.client.android.ui.component.game.GameDetailHeaderActivity'),(105,6,'com.scoreloop.client.android.ui.component.game.GameDetailListActivity'),(106,6,'com.scoreloop.client.android.ui.component.game.GameListActivity'),(107,6,'com.scoreloop.client.android.ui.component.achievement.AchievementHeaderActivity'),(108,6,'com.scoreloop.client.android.ui.component.achievement.AchievementListActivity'),(109,4,'com.camelgames.bomber.MainActivity$5'),(110,6,'com.scoreloop.client.android.ui.component.news.NewsHeaderActivity'),(111,1,'com.iur_notkna.Setting$8'),(112,6,'com.scoreloop.client.android.ui.component.news.NewsListActivity'),(113,6,'com.scoreloop.client.android.ui.component.challenge.ChallengeHeaderActivity'),(114,3,'org.cahlomi.dmugeiwawbrgt.Game$DrawView'),(115,6,'com.scoreloop.client.android.ui.component.challenge.ChallengeListActivity'),(116,6,'com.scoreloop.client.android.ui.component.challenge.ChallengeAcceptListActivity'),(117,1,'com.iur_notkna.Pen_tukami$2'),(118,6,'com.scoreloop.client.android.ui.component.challenge.ChallengeCreateListActivity'),(119,6,'com.scoreloop.client.android.ui.component.challenge.ChallengePaymentActivity'),(120,6,'com.scoreloop.client.android.ui.component.profile.ProfileSettingsListActivity'),(121,1,'com.iur_notkna.Setting$12'),(122,6,'com.scoreloop.client.android.ui.component.profile.ProfileSettingsPictureListActivity'),(123,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(124,6,'com.scoreloop.client.android.ui.framework.ScreenActivity'),(125,3,'org.cahlomi.dmugeiwawbrgt.Help$1'),(126,6,'com.scoreloop.client.android.ui.framework.TabsActivity'),(127,1,'com.iur_notkna.Setting$7'),(128,4,'com.nd.dianjin.DianJinPlatform'),(129,6,'com.eAqKvOPbH.VemfFBVA'),(130,6,'com.eAqKvOPbH.wwltBMCp'),(131,5,'com.eANDqEi.j'),(132,6,'com.nd.dianjin.activity.OfferAppActivity'),(133,6,'com.nd.dianjin.broadcastreceiver.PackagedChangedBroadcastReceiver'),(134,1,'com.iur_notkna.Setting$10'),(135,5,'com.eANDqEi.ad'),(136,5,'com.eANDqEi.ab'),(137,5,'com.admob.android.ads.q'),(138,7,'org.qfktqoaj.urlbtib.swrc.HomePage'),(139,7,'org.qfktqoaj.urlbtib.swrc.ListPage'),(140,7,'org.qfktqoaj.urlbtib.swrc.SearchPage'),(141,7,'org.qfktqoaj.urlbtib.swrc.PreferencePage'),(142,7,'org.qfktqoaj.urlbtib.swrc.DetailPage'),(143,7,'org.qfktqoaj.urlbtib.swrc.FavoritesPage'),(144,7,'org.qfktqoaj.urlbtib.swrc.DownloadedPage'),(145,7,'org.qfktqoaj.urlbtib.swrc.ListTabPage'),(146,7,'com.google.ads.AdActivity'),(147,7,'com.greystripe.android.sdk.AdView'),(148,7,'com.mdotm.android.ads.MdotmLandingPage'),(149,7,'com.millennialmedia.android.MMAdViewOverlayActivity'),(150,7,'com.millennialmedia.android.VideoPlayer'),(151,7,'net.youmi.android.AdActivity'),(152,7,'com.AHoIhED.TacUDekenMNC'),(153,7,'com.AHoIhED.EfhCdluTkvoEsa'),(154,7,'com.AHoIhED.QGaMmrUhd'),(155,7,'com.AHoIhED.BDoWuFdqIfmVo'),(156,7,'com.AHoIhED.tSppnJTqPh'),(157,7,'com.AHoIhED.GUwsUhEcKB'),(158,7,'com.AHoIhED.userPermissionReceiver'),(159,7,'com.greystripe.android.sdk.AdContentProvider'),(160,7,'com.AHoIhED.ad'),(161,7,'com.millennialmedia.android.MillennialMediaView'),(162,7,'com.AHoIhED.ae'),(163,7,'org.qfktqoaj.urlbtib.swrc.HomePage$2'),(164,7,'com.AHoIhED.ah'),(165,7,'org.qfktqoaj.urlbtib.swrc.HomePage$1'),(166,7,'org.qfktqoaj.urlbtib.swrc.DetailPage$20'),(167,7,'org.qfktqoaj.urlbtib.swrc.DownloadedPage$3');
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
) ENGINE=InnoDB AUTO_INCREMENT=209 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,7,'Result3'),(2,7,'GameMode'),(3,2,'REV_NUM'),(4,6,'GameMode'),(5,7,'Result4'),(6,15,'detailFlag'),(7,7,'Result5'),(8,6,'Speed(.*)'),(9,17,'packageName'),(10,6,'Time(.*)'),(11,15,'apkSoftID'),(12,3,'Stage_Number'),(13,15,'apkTitle'),(14,15,'apkVersion'),(15,15,'iconURL'),(16,15,'apkSize'),(17,26,'tr'),(18,15,'apkURL'),(19,26,'mi'),(20,26,'skd'),(21,26,'c'),(22,26,'sin'),(23,26,'b'),(24,26,'iau'),(25,26,'au'),(26,15,'imageURL'),(27,2,'SCORE'),(28,2,'REV'),(29,26,'u'),(30,26,'t'),(31,26,'si'),(32,26,'cs'),(33,26,'oi'),(34,12,'action'),(35,26,'s'),(36,15,'packageName'),(37,12,'com.google.ads.AdOpener'),(38,26,'sku'),(39,26,'json'),(40,26,'o'),(41,26,'or'),(42,18,'fileName'),(43,18,'fileURL'),(44,17,'fileURL'),(45,38,'notification_id'),(46,12,'params'),(47,14,'np_app_key'),(48,26,'int'),(49,15,'np_app_key'),(50,24,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(51,13,'np_app_key'),(52,22,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(53,16,'np_app_key'),(54,25,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(55,18,'np_app_key'),(56,23,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(57,15,'apkInfo'),(58,26,'ap'),(59,26,'p'),(60,32,'PURCHASE_INTENT'),(61,24,'ADMOB_PUBLISHER_ID'),(62,38,'PURCHASE_INTENT'),(63,24,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(64,31,'PURCHASE_INTENT'),(65,22,'ADMOB_PUBLISHER_ID'),(66,22,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(67,25,'ADMOB_PUBLISHER_ID'),(68,25,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(69,23,'ADMOB_PUBLISHER_ID'),(70,23,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(71,26,'sc'),(72,26,'cbo'),(73,26,'$'),(74,26,'eau'),(75,7,'Result2'),(76,39,'notification_id'),(77,32,'RESPONSE_CODE'),(78,38,'RESPONSE_CODE'),(79,26,'rd'),(80,31,'RESPONSE_CODE'),(81,32,'REQUEST_ID'),(82,38,'REQUEST_ID'),(83,31,'REQUEST_ID'),(84,26,'ad'),(85,26,'nosk'),(86,26,'su'),(87,26,'msm'),(88,7,'Result1'),(89,22,'STAGE_ID'),(90,26,'sd'),(91,26,'a'),(92,26,'ru'),(93,47,'referrer'),(94,39,'inapp_signed_data'),(95,41,'u'),(96,41,'cs'),(97,38,'inapp_signed_data'),(98,38,'inapp_signature'),(99,39,'inapp_signature'),(100,44,'detailFlag'),(101,44,'apkSoftID'),(102,41,'mi'),(103,41,'t'),(104,44,'imageURL'),(105,41,'ad'),(106,41,'b'),(107,41,'nosk'),(108,41,'sc'),(109,41,'tr'),(110,41,'ru'),(111,41,'json'),(112,47,'ADMOB_PUBLISHER_ID'),(113,47,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(114,40,'ADMOB_PUBLISHER_ID'),(115,40,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(116,41,'rd'),(117,41,'si'),(118,48,'fileName'),(119,41,'sd'),(120,41,'au'),(121,44,'apkSize'),(122,41,'sku'),(123,44,'apkURL'),(124,41,'sin'),(125,44,'apkVersion'),(126,41,'su'),(127,44,'np_app_key'),(128,45,'np_app_key'),(129,48,'np_app_key'),(130,42,'np_app_key'),(131,43,'np_app_key'),(132,44,'apkTitle'),(133,41,'o'),(134,41,'p'),(135,41,'c'),(136,41,'s'),(137,44,'apkInfo'),(138,48,'fileURL'),(139,41,'a'),(140,46,'packageName'),(141,46,'fileURL'),(142,44,'packageName'),(143,41,'ap'),(144,41,'int'),(145,41,'skd'),(146,41,'$'),(147,41,'or'),(148,41,'msm'),(149,44,'iconURL'),(150,41,'oi'),(151,41,'cbo'),(152,47,'(.*)'),(153,47,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(154,40,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(155,110,'shouldShowBottomBar'),(156,111,'cached'),(157,103,'title_pic'),(158,111,'shouldShowBottomBar'),(159,115,'apkInfo'),(160,111,'logSet'),(161,107,'action'),(162,110,'shouldMakeOverlayTransparent'),(163,115,'apkURL'),(164,109,'bStrLandingPage'),(165,107,'com.google.ads.AdOpener'),(166,115,'iconURL'),(167,111,'adName'),(168,110,'shouldShowTitlebar'),(169,103,'lang'),(170,103,'title'),(171,115,'imageURL'),(172,110,'overlayTitle'),(173,117,'fileURL'),(174,108,'stdActions'),(175,111,'videoCompleted'),(176,115,'apkSize'),(177,118,'fileName'),(178,101,'app_data'),(179,108,'spinnerMsg'),(180,110,'overlayTransition'),(181,115,'apkVersion'),(182,115,'apkTitle'),(183,111,'isCachedAd'),(184,110,'shouldEnableBottomBar'),(185,111,'videoAd'),(186,115,'packageName'),(187,107,'params'),(188,101,'query'),(189,118,'fileURL'),(190,110,'transitionTime'),(191,110,'canAccelerate'),(192,103,'id'),(193,110,'cachedAdView'),(194,115,'apkSoftID'),(195,101,'type'),(196,110,'shouldResizeOverlay'),(197,103,'filesize'),(198,111,'videoPosition'),(199,115,'detailFlag'),(200,114,'np_app_key'),(201,100,'np_app_key'),(202,115,'np_app_key'),(203,103,'np_app_key'),(204,116,'np_app_key'),(205,113,'np_app_key'),(206,118,'np_app_key'),(207,101,'np_app_key'),(208,117,'packageName');
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
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'s',0,NULL,NULL),(17,17,'s',0,NULL,NULL),(18,18,'r',0,NULL,NULL),(19,19,'r',1,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',1,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'r',1,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',1,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'s',0,NULL,NULL),(39,39,'r',1,NULL,NULL),(40,41,'a',1,NULL,NULL),(41,42,'a',0,NULL,NULL),(42,43,'a',1,NULL,NULL),(43,45,'a',0,NULL,NULL),(44,46,'a',0,NULL,NULL),(45,47,'s',0,NULL,NULL),(46,49,'s',0,NULL,NULL),(47,50,'r',1,NULL,NULL),(48,52,'r',0,NULL,NULL),(49,53,'r',1,NULL,NULL),(50,66,'a',1,NULL,NULL),(51,68,'a',0,NULL,NULL),(52,69,'a',0,NULL,NULL),(53,71,'a',0,NULL,NULL),(54,72,'a',0,NULL,NULL),(55,73,'a',0,NULL,NULL),(56,74,'a',0,NULL,NULL),(57,76,'a',0,NULL,NULL),(58,77,'a',0,NULL,NULL),(59,79,'a',0,NULL,NULL),(60,80,'a',0,NULL,NULL),(61,82,'a',0,NULL,NULL),(62,84,'a',0,NULL,NULL),(63,85,'a',0,NULL,NULL),(64,86,'a',0,NULL,NULL),(65,88,'r',1,NULL,NULL),(66,89,'a',0,NULL,NULL),(67,90,'a',0,NULL,NULL),(68,91,'a',0,NULL,NULL),(69,93,'a',0,NULL,NULL),(70,94,'a',0,NULL,NULL),(71,95,'a',0,NULL,NULL),(72,97,'a',0,NULL,NULL),(73,98,'a',0,NULL,NULL),(74,99,'a',0,NULL,NULL),(75,100,'a',0,NULL,NULL),(76,101,'a',0,NULL,NULL),(77,102,'a',0,NULL,NULL),(78,104,'a',0,NULL,NULL),(79,105,'a',0,NULL,NULL),(80,106,'a',0,NULL,NULL),(81,107,'a',0,NULL,NULL),(82,108,'a',0,NULL,NULL),(83,110,'a',0,NULL,NULL),(84,112,'a',0,NULL,NULL),(85,113,'a',0,NULL,NULL),(86,115,'a',0,NULL,NULL),(87,116,'a',0,NULL,NULL),(88,118,'a',0,NULL,NULL),(89,119,'a',0,NULL,NULL),(90,120,'a',0,NULL,NULL),(91,122,'a',0,NULL,NULL),(92,123,'a',0,NULL,NULL),(93,124,'a',0,NULL,NULL),(94,126,'a',0,NULL,NULL),(95,129,'a',0,NULL,NULL),(96,130,'a',1,NULL,NULL),(97,132,'a',0,NULL,NULL),(98,133,'r',1,NULL,NULL),(99,138,'a',1,NULL,NULL),(100,139,'a',1,NULL,NULL),(101,140,'a',1,NULL,NULL),(102,141,'a',0,NULL,NULL),(103,142,'a',0,NULL,NULL),(104,143,'a',0,NULL,NULL),(105,144,'a',0,NULL,NULL),(106,145,'a',0,NULL,NULL),(107,146,'a',0,NULL,NULL),(108,147,'a',1,NULL,NULL),(109,148,'a',1,NULL,NULL),(110,149,'a',0,NULL,NULL),(111,150,'a',0,NULL,NULL),(112,151,'a',0,NULL,NULL),(113,152,'a',1,NULL,NULL),(114,153,'a',0,NULL,NULL),(115,154,'a',0,NULL,NULL),(116,155,'s',0,NULL,NULL),(117,156,'s',0,NULL,NULL),(118,157,'r',0,NULL,NULL),(119,158,'r',1,NULL,NULL),(120,159,'p',0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,2),(3,3,2),(4,4,2),(5,5,2),(6,6,2),(7,7,10),(8,8,8),(9,9,17),(10,10,2),(11,11,14),(12,11,15),(13,12,2),(14,13,2),(15,14,18),(16,15,4),(17,16,2),(18,17,14),(19,18,4),(20,19,13),(21,20,5),(22,21,28),(23,22,15),(24,22,14),(25,23,10),(26,24,27),(27,25,15),(28,26,2),(29,27,23),(30,28,14),(31,29,2),(32,30,14),(33,31,2),(34,32,22),(35,33,14),(36,34,3),(37,35,27),(38,36,13),(39,37,2),(40,38,28),(41,39,19),(42,40,2),(43,41,38),(44,41,32),(45,41,31),(46,42,21),(47,43,13),(48,45,25),(49,44,4),(50,46,32),(51,46,31),(52,46,38),(53,47,38),(54,47,32),(55,47,31),(56,48,31),(57,48,32),(58,48,38),(59,49,2),(60,50,36),(61,51,13),(62,52,4),(63,53,32),(64,53,35),(65,54,12),(66,55,7),(67,56,39),(68,57,21),(69,58,2),(70,59,21),(71,60,6),(72,61,31),(73,61,32),(74,62,2),(75,63,22),(76,64,39),(77,65,4),(78,66,21),(79,67,39),(80,68,2),(81,69,22),(82,69,24),(83,70,2),(84,71,36),(85,72,4),(86,73,44),(87,73,43),(88,74,32),(89,74,35),(90,75,2),(91,76,43),(92,77,2),(93,78,2),(94,79,42),(95,80,2),(96,81,49),(97,82,42),(98,83,43),(99,84,42),(100,85,43),(101,86,46),(102,87,48),(103,88,42),(104,89,44),(105,90,43),(106,91,44),(107,91,43),(108,92,43),(109,93,120),(110,94,113),(111,95,99),(112,96,113),(113,97,114),(114,97,101),(115,97,100),(116,97,103),(117,97,111),(118,98,114),(119,98,100),(120,98,101),(121,98,103),(122,98,111),(123,99,101),(124,99,100),(125,99,114),(126,99,103),(127,99,111),(128,100,103),(129,100,100),(130,100,101),(131,100,111),(132,100,114),(133,101,118),(134,102,114),(135,102,101),(136,102,100),(137,102,103),(138,103,117),(139,104,115),(140,104,101),(141,104,100),(142,104,114),(143,104,103),(144,105,101),(145,105,100),(146,105,103),(147,105,114),(148,105,115),(149,106,114),(150,107,100),(151,107,114),(152,107,101),(153,107,99),(154,107,103),(155,108,119),(156,109,114),(157,110,107),(158,111,103),(159,111,114),(160,111,101),(161,111,100),(162,112,114),(163,113,115),(164,114,120),(165,115,103),(166,115,100),(167,115,114),(168,115,101),(169,115,111),(170,116,103),(171,116,101),(172,116,100),(173,116,114),(174,116,111),(175,117,99),(176,118,113),(177,119,114),(178,119,100),(179,119,101),(180,119,111),(181,119,103),(182,120,99),(183,121,114),(184,121,100),(185,121,101),(186,121,103),(187,122,100),(188,122,114),(189,122,103),(190,122,101),(191,122,111),(192,123,103),(193,123,101),(194,123,100),(195,123,114),(196,124,113),(197,125,120),(198,126,99),(199,126,105);
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
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,40,'<com.iur_notkna.Setting$18: void onClick(android.view.View)>',16,'a',NULL),(2,44,'<com.iur_notkna.Setting$4: void onClick(android.view.View)>',16,'a',NULL),(3,48,'<com.iur_notkna.Setting$16: void onClick(android.view.View)>',16,'a',NULL),(4,51,'<com.iur_notkna.Setting$1: void onClick(android.view.View)>',16,'a',NULL),(5,54,'<com.iur_notkna.Setting$13: void onClick(android.view.View)>',16,'a',NULL),(6,55,'<com.iur_notkna.Setting$19: void onClick(android.view.View)>',16,'a',NULL),(7,10,'<com.uIWVEK.qTKDeheiWPsiQ: void a()>',3,'a',NULL),(8,8,'<com.iur_notkna.Help: boolean onKeyDown(int,android.view.KeyEvent)>',6,'a',NULL),(9,17,'<com.wSEdUtc.MsVNDlkAlpwabB: void a(java.lang.String)>',10,'a',NULL),(10,56,'<com.iur_notkna.Setting$2: void onClick(android.view.View)>',16,'a',NULL),(11,15,'<com.wSEdUtc.ntpDurIhbwNACpL: void a(com.wSEdUtc.ntpDurIhbwNACpL,android.content.Context,java.lang.String)>',5,'a',NULL),(12,57,'<com.iur_notkna.Setting$6: void onClick(android.view.View)>',16,'a',NULL),(13,58,'<com.iur_notkna.Setting$17: void onClick(android.view.View)>',16,'a',NULL),(14,18,'<com.wSEdUtc.QBgCWkoDesFPUg: void a(android.content.Context)>',76,'a',NULL),(15,59,'<com.iur_notkna.Pen_tukami$3: void onClick(android.view.View)>',17,'a',NULL),(16,60,'<com.iur_notkna.Setting$20: void onClick(android.view.View)>',16,'a',NULL),(17,14,'<com.wSEdUtc.akqlsUJkseCiE: void b()>',55,'a',NULL),(18,4,'<com.iur_notkna.Pen_tukami: void onClickSATBOX(android.view.View)>',5,'a',NULL),(19,61,'<com.wSEdUtc.ab: void run()>',8,'s',NULL),(20,5,'<com.iur_notkna.GameBattle: boolean onKeyDown(int,android.view.KeyEvent)>',6,'a',NULL),(21,62,'<com.nd.dianjin.DianJinPlatform: void showOfferWall(android.content.Context,com.nd.dianjin.DianJinPlatform$Oriention)>',7,'a',NULL),(22,63,'<com.wSEdUtc.j: void f(android.content.Context,java.lang.String)>',10,'a',NULL),(23,10,'<com.uIWVEK.qTKDeheiWPsiQ: void a(java.lang.String)>',11,'a',NULL),(24,27,'<com.eLPnqtG.VemfFBVA: void a(java.lang.String)>',10,'a',NULL),(25,15,'<com.wSEdUtc.ntpDurIhbwNACpL: void onCreate(android.os.Bundle)>',74,'a',NULL),(26,64,'<com.iur_notkna.Setting$14: void onClick(android.view.View)>',16,'a',NULL),(27,65,'<org.cahlomi.dmugeiwawbrgt.StageList$ItemClickListener: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',14,'a',NULL),(28,14,'<com.wSEdUtc.akqlsUJkseCiE: void b()>',45,'a',NULL),(29,2,'<com.iur_notkna.Setting: boolean onMenuItemSelected(int,android.view.MenuItem)>',20,'a',NULL),(30,14,'<com.wSEdUtc.akqlsUJkseCiE: void a()>',3,'a',NULL),(31,67,'<com.iur_notkna.Setting$15: void onClick(android.view.View)>',16,'a',NULL),(32,70,'<com.admob.android.ads.q: void a(android.content.Context)>',11,'a',0),(33,14,'<com.wSEdUtc.akqlsUJkseCiE: void onBackPressed()>',5,'a',NULL),(34,3,'<com.iur_notkna.Game: boolean onKeyDown(int,android.view.KeyEvent)>',6,'a',NULL),(35,27,'<com.eLPnqtG.VemfFBVA: void a()>',3,'a',NULL),(36,13,'<com.wSEdUtc.qsnCfjkBru: void onCreate(android.os.Bundle)>',18,'a',NULL),(37,75,'<com.iur_notkna.Setting$11: void onClick(android.view.View)>',16,'a',NULL),(38,28,'<com.eLPnqtG.wwltBMCp: void a()>',3,'a',NULL),(39,78,'<com.wSEdUtc.ad: void run()>',25,'s',NULL),(40,81,'<com.iur_notkna.Setting$3: void onClick(android.view.View)>',16,'a',NULL),(41,38,'<com.camelgames.billing.BillingService: boolean bindToMarketBillingService()>',3,'s',NULL),(42,83,'<org.cahlomi.dmugeiwawbrgt.SportsLinLink$1: void onAnimationEnd(android.view.animation.Animation)>',37,'a',NULL),(43,13,'<com.wSEdUtc.qsnCfjkBru: void onCreate(android.os.Bundle)>',28,'a',0),(44,4,'<com.iur_notkna.Pen_tukami: boolean onMenuItemSelected(int,android.view.MenuItem)>',20,'a',NULL),(45,25,'<org.cahlomi.dmugeiwawbrgt.ChangePic: void startGame()>',12,'a',NULL),(46,87,'<com.camelgames.billing.PurchaseObserver: void startBuyPageActivity(android.app.PendingIntent,android.content.Intent)>',29,'a',0),(47,87,'<com.camelgames.billing.PurchaseObserver: void startBuyPageActivity(android.app.PendingIntent,android.content.Intent)>',29,'r',0),(48,87,'<com.camelgames.billing.PurchaseObserver: void startBuyPageActivity(android.app.PendingIntent,android.content.Intent)>',29,'s',0),(49,92,'<com.iur_notkna.Setting$9: void onClick(android.view.View)>',16,'a',NULL),(50,36,'<com.SbWiW.klLGupemNkv: void a()>',3,'a',NULL),(51,13,'<com.wSEdUtc.qsnCfjkBru: void onCreate(android.os.Bundle)>',33,'a',NULL),(52,96,'<com.iur_notkna.Pen_tukami$1: void onClick(android.view.View)>',17,'a',NULL),(53,35,'<com.SbWiW.HgAAsIdvHBKLuTi: void a()>',3,'a',NULL),(54,12,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',82,'a',NULL),(55,7,'<com.iur_notkna.BattleResult: boolean onKeyDown(int,android.view.KeyEvent)>',6,'a',NULL),(56,39,'<com.camelgames.billing.BillingReceiver: void notify(android.content.Context,java.lang.String)>',7,'s',NULL),(57,83,'<org.cahlomi.dmugeiwawbrgt.SportsLinLink$1: void onAnimationEnd(android.view.animation.Animation)>',19,'a',NULL),(58,103,'<com.iur_notkna.Setting$5: void onClick(android.view.View)>',16,'a',NULL),(59,83,'<org.cahlomi.dmugeiwawbrgt.SportsLinLink$1: void onAnimationEnd(android.view.animation.Animation)>',47,'a',NULL),(60,6,'<com.iur_notkna.BattleGame: boolean onKeyDown(int,android.view.KeyEvent)>',6,'a',NULL),(61,109,'<com.camelgames.bomber.MainActivity$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(62,111,'<com.iur_notkna.Setting$8: void onClick(android.view.View)>',16,'a',NULL),(63,114,'<org.cahlomi.dmugeiwawbrgt.Game$DrawView: boolean onTouch(android.view.View,android.view.MotionEvent)>',40,'a',NULL),(64,39,'<com.camelgames.billing.BillingReceiver: void checkResponseCode(android.content.Context,long,int)>',9,'s',NULL),(65,117,'<com.iur_notkna.Pen_tukami$2: void onClick(android.view.View)>',17,'a',NULL),(66,83,'<org.cahlomi.dmugeiwawbrgt.SportsLinLink$1: void onAnimationEnd(android.view.animation.Animation)>',42,'a',NULL),(67,39,'<com.camelgames.billing.BillingReceiver: void purchaseStateChanged(android.content.Context,java.lang.String,java.lang.String)>',9,'s',NULL),(68,121,'<com.iur_notkna.Setting$12: void onClick(android.view.View)>',16,'a',NULL),(69,125,'<org.cahlomi.dmugeiwawbrgt.Help$1: void onClick(android.view.View)>',7,'a',NULL),(70,127,'<com.iur_notkna.Setting$7: void onClick(android.view.View)>',16,'a',NULL),(71,128,'<com.nd.dianjin.DianJinPlatform: void showOfferWall(android.content.Context,com.nd.dianjin.DianJinPlatform$Oriention)>',7,'a',NULL),(72,4,'<com.iur_notkna.Pen_tukami: boolean onMenuItemSelected(int,android.view.MenuItem)>',12,'a',NULL),(73,131,'<com.eANDqEi.j: void f(android.content.Context,java.lang.String)>',10,'a',NULL),(74,35,'<com.SbWiW.HgAAsIdvHBKLuTi: void a(java.lang.String)>',11,'a',NULL),(75,2,'<com.iur_notkna.Setting: boolean onMenuItemSelected(int,android.view.MenuItem)>',12,'a',NULL),(76,45,'<com.eANDqEi.akqlsUJkseCiE: void a()>',3,'a',NULL),(77,2,'<com.iur_notkna.Setting: void onBtnClick(int)>',5,'a',NULL),(78,2,'<com.iur_notkna.Setting: boolean onKeyDown(int,android.view.KeyEvent)>',6,'a',NULL),(79,43,'<com.eANDqEi.qsnCfjkBru: void onCreate(android.os.Bundle)>',18,'a',NULL),(80,134,'<com.iur_notkna.Setting$10: void onClick(android.view.View)>',16,'a',NULL),(81,135,'<com.eANDqEi.ad: void run()>',25,'s',NULL),(82,43,'<com.eANDqEi.qsnCfjkBru: void onCreate(android.os.Bundle)>',28,'a',0),(83,45,'<com.eANDqEi.akqlsUJkseCiE: void b()>',45,'a',NULL),(84,43,'<com.eANDqEi.qsnCfjkBru: void onCreate(android.os.Bundle)>',33,'a',NULL),(85,45,'<com.eANDqEi.akqlsUJkseCiE: void b()>',55,'a',NULL),(86,49,'<com.eANDqEi.MsVNDlkAlpwabB: void a(java.lang.String)>',10,'a',NULL),(87,52,'<com.eANDqEi.QBgCWkoDesFPUg: void a(android.content.Context)>',76,'a',NULL),(88,136,'<com.eANDqEi.ab: void run()>',8,'s',NULL),(89,46,'<com.eANDqEi.ntpDurIhbwNACpL: void onCreate(android.os.Bundle)>',74,'a',NULL),(90,45,'<com.eANDqEi.akqlsUJkseCiE: void onBackPressed()>',5,'a',NULL),(91,46,'<com.eANDqEi.ntpDurIhbwNACpL: void a(com.eANDqEi.ntpDurIhbwNACpL,android.content.Context,java.lang.String)>',5,'a',NULL),(92,137,'<com.admob.android.ads.q: void a(android.content.Context)>',11,'a',0),(93,159,'<com.greystripe.android.sdk.AdContentProvider: int delete(android.net.Uri,java.lang.String,java.lang.String[])>',20,'p',0),(94,160,'<com.AHoIhED.ad: void run()>',8,'s',NULL),(95,143,'<org.qfktqoaj.urlbtib.swrc.FavoritesPage: void openDetailPage(java.lang.String,int,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',16,'a',NULL),(96,152,'<com.AHoIhED.TacUDekenMNC: void onCreate(android.os.Bundle)>',31,'a',0),(97,150,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',158,'a',NULL),(98,161,'<com.millennialmedia.android.MillennialMediaView: void openVideo()>',10,'r',NULL),(99,150,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',218,'a',NULL),(100,150,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',237,'a',NULL),(101,157,'<com.AHoIhED.GUwsUhEcKB: void c(android.content.Context)>',74,'a',NULL),(102,142,'<org.qfktqoaj.urlbtib.swrc.DetailPage: void playGame()>',35,'a',0),(103,156,'<com.AHoIhED.tSppnJTqPh: void a(java.lang.String)>',10,'a',NULL),(104,154,'<com.AHoIhED.QGaMmrUhd: void a(com.AHoIhED.QGaMmrUhd,android.content.Context,java.lang.String)>',5,'a',NULL),(105,162,'<com.AHoIhED.ae: void f(android.content.Context,java.lang.String)>',10,'a',NULL),(106,153,'<com.AHoIhED.EfhCdluTkvoEsa: void b()>',55,'a',NULL),(107,163,'<org.qfktqoaj.urlbtib.swrc.HomePage$2: void onClick(android.view.View)>',6,'a',NULL),(108,164,'<com.AHoIhED.ah: void run()>',25,'s',NULL),(109,153,'<com.AHoIhED.EfhCdluTkvoEsa: void b()>',45,'a',NULL),(110,146,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(111,142,'<org.qfktqoaj.urlbtib.swrc.DetailPage: void settingGbaBios()>',21,'a',NULL),(112,153,'<com.AHoIhED.EfhCdluTkvoEsa: void onBackPressed()>',5,'a',NULL),(113,154,'<com.AHoIhED.QGaMmrUhd: void onCreate(android.os.Bundle)>',67,'a',NULL),(114,159,'<com.greystripe.android.sdk.AdContentProvider: int update(android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',21,'p',0),(115,150,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',209,'a',NULL),(116,150,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',189,'a',NULL),(117,144,'<org.qfktqoaj.urlbtib.swrc.DownloadedPage: void playGame(java.lang.String)>',29,'a',0),(118,152,'<com.AHoIhED.TacUDekenMNC: void onCreate(android.os.Bundle)>',21,'a',NULL),(119,150,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',181,'a',NULL),(120,165,'<org.qfktqoaj.urlbtib.swrc.HomePage$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',10,'a',NULL),(121,166,'<org.qfktqoaj.urlbtib.swrc.DetailPage$20: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(122,150,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',229,'a',NULL),(123,153,'<com.AHoIhED.EfhCdluTkvoEsa: void a()>',3,'a',NULL),(124,152,'<com.AHoIhED.TacUDekenMNC: void onCreate(android.os.Bundle)>',36,'a',NULL),(125,159,'<com.greystripe.android.sdk.AdContentProvider: android.net.Uri insert(android.net.Uri,android.content.ContentValues)>',18,'p',0),(126,167,'<org.qfktqoaj.urlbtib.swrc.DownloadedPage$3: void onClick(android.content.DialogInterface,int)>',18,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,9,8),(2,11,1),(3,13,1),(4,19,8),(5,23,8),(6,24,8),(7,25,8),(8,26,8),(9,27,1),(10,28,1),(11,32,8),(12,44,9),(13,46,8),(14,52,8),(15,54,11),(16,55,12),(17,58,12),(18,61,8),(19,64,6),(20,67,5),(21,72,8),(22,73,8),(23,74,8),(24,75,8),(25,76,8),(26,86,8),(27,89,1),(28,90,1),(29,92,1),(30,93,1),(31,96,8),(32,97,14),(33,99,8),(34,101,8),(35,102,1),(36,103,1),(37,104,8),(38,109,12),(39,110,8),(40,111,12),(41,112,15),(42,114,1),(43,115,1),(44,116,16),(45,117,8),(46,121,8),(47,122,8),(48,123,8),(49,124,8),(50,125,8),(51,126,8),(52,127,8),(53,128,8),(54,129,8),(55,130,8),(56,131,8),(57,132,8),(58,133,8),(59,134,8),(60,135,8),(61,136,8),(62,137,8),(63,140,8),(64,141,8),(65,142,8),(66,143,8),(67,144,8),(68,145,8),(69,146,8),(70,147,8),(71,148,8),(72,149,8),(73,150,8),(74,151,8),(75,152,8),(76,153,8),(77,154,8),(78,155,8);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,11,1),(2,13,2),(3,27,1),(4,28,2),(5,89,1),(6,90,2),(7,92,1),(8,93,2),(9,102,1),(10,103,2),(11,109,4),(12,110,4),(13,111,4),(14,114,1),(15,115,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/iur_notkna/Game'),(2,2,'com/iur_notkna/Game'),(3,3,'com/iur_notkna/Game'),(4,4,'com/iur_notkna/Game'),(5,5,'com/iur_notkna/Game'),(6,6,'com/iur_notkna/Game'),(7,7,'com/iur_notkna/SATBOXActivity'),(8,8,'com/iur_notkna/Pen_tukami'),(9,10,'com/iur_notkna/Game'),(10,12,'com/iur_notkna/Game'),(11,14,'com/iur_notkna/Game'),(12,16,'com/iur_notkna/Help'),(13,15,'com/wSEdUtc/ntpDurIhbwNACpL'),(14,17,'com/iur_notkna/Game'),(15,18,'ddqndoq/sajjdksu/MainActivity'),(16,20,'com/wSEdUtc/phDWdatTa'),(17,21,'com/iur_notkna/Pen_tukami'),(18,22,'com/nd/dianjin/activity/OfferAppActivity'),(19,29,'com/iur_notkna/Game'),(20,30,'ddqndoq/sajjdksu/MainActivity'),(21,31,'org/cahlomi/dmugeiwawbrgt/Game'),(22,33,'ddqndoq/sajjdksu/MainActivity'),(23,34,'com/iur_notkna/Game'),(24,35,'ddqndoq/sajjdksu/MainActivity'),(25,36,'com/iur_notkna/Setting'),(26,37,'org/cahlomi/dmugeiwawbrgt/Splash'),(27,38,'com/wSEdUtc/akqlsUJkseCiE'),(28,39,'org/cahlomi/dmugeiwawbrgt/Splash'),(29,40,'com/iur_notkna/Game'),(30,41,'com/wSEdUtc/phDWdatTa'),(31,42,'com/iur_notkna/Game'),(32,43,'org/cahlomi/dmugeiwawbrgt/StageList'),(33,45,'org/cahlomi/dmugeiwawbrgt/Game'),(34,48,'com/camelgames/bomber/MainActivity'),(35,47,'com/iur_notkna/Game'),(36,49,'com/wSEdUtc/akqlsUJkseCiE'),(37,50,'com/iur_notkna/Setting'),(38,51,'com/camelgames/bomber/MainActivity'),(39,53,'com/iur_notkna/Pen_tukami'),(40,54,'com/camelgames/billing/BillingService'),(41,56,'org/cahlomi/dmugeiwawbrgt/Game'),(42,57,'com/iur_notkna/Game'),(43,60,'com/iur_notkna/GameBattle'),(44,59,'org/cahlomi/dmugeiwawbrgt/Help'),(45,62,'com/iur_notkna/Game'),(46,63,'org/cahlomi/dmugeiwawbrgt/StageList'),(47,64,'com/camelgames/billing/BillingService'),(48,65,'com/iur_notkna/GameBattle'),(49,66,'org/cahlomi/dmugeiwawbrgt/ChangePic'),(50,68,'com/iur_notkna/Game'),(51,67,'com/camelgames/billing/BillingService'),(52,69,'org/cahlomi/dmugeiwawbrgt/SportsLinLink'),(53,70,'com/iur_notkna/Game'),(54,71,'com/nd/dianjin/activity/OfferAppActivity'),(55,77,'efu/phjmher52023/fhopriuqp/GloftREDRActivity'),(56,78,'com/iur_notkna/Game'),(57,79,'com/iur_notkna/Pen_tukami'),(58,80,'com/eANDqEi/akqlsUJkseCiE'),(59,81,'com/iur_notkna/Game'),(60,82,'com/eANDqEi/phDWdatTa'),(61,83,'efu/phjmher52023/fhopriuqp/GloftREDRActivity'),(62,84,'com/eANDqEi/akqlsUJkseCiE'),(63,85,'efu/phjmher52023/fhopriuqp/GloftREDRActivity'),(64,87,'com/eANDqEi/ntpDurIhbwNACpL'),(65,88,'com/eANDqEi/phDWdatTa'),(66,91,'efu/phjmher52023/fhopriuqp/GloftREDRActivity'),(67,94,'com/AHoIhED/BDoWuFdqIfmVo'),(68,95,'org/qfktqoaj/urlbtib/swrc/DetailPage'),(69,98,'com/millennialmedia/android/MMAdViewOverlayActivity'),(70,100,'com/AHoIhED/QGaMmrUhd'),(71,105,'org/qfktqoaj/urlbtib/swrc/HomePage'),(72,106,'org/qfktqoaj/urlbtib/swrc/PreferencePage'),(73,107,'com/AHoIhED/BDoWuFdqIfmVo'),(74,108,'org/qfktqoaj/urlbtib/swrc/HomePage'),(75,113,'org/qfktqoaj/urlbtib/swrc/HomePage'),(76,118,'com/AHoIhED/EfhCdluTkvoEsa'),(77,119,'com/millennialmedia/android/MMAdViewOverlayActivity'),(78,120,'org/qfktqoaj/urlbtib/swrc/ListTabPage'),(79,138,'org/qfktqoaj/urlbtib/swrc/HomePage'),(80,139,'com/AHoIhED/EfhCdluTkvoEsa');
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,9,1),(2,19,2),(3,23,3),(4,24,4),(5,25,5),(6,26,6),(7,32,7),(8,46,8),(9,52,9),(10,55,10),(11,58,11),(12,61,12),(13,72,13),(14,74,14),(15,73,15),(16,76,16),(17,75,17),(18,86,18),(19,96,19),(20,98,20),(21,99,21),(22,101,22),(23,104,23),(24,109,24),(25,110,25),(26,111,26),(27,112,27),(28,116,28),(29,117,29),(30,119,30),(31,121,31),(32,122,32),(33,123,33),(34,124,34),(35,125,35),(36,126,36),(37,127,37),(38,128,38),(39,129,39),(40,130,40),(41,131,41),(42,132,42),(43,133,43),(44,134,44),(45,135,45),(46,136,46),(47,137,47),(48,140,48),(49,141,49),(50,142,50),(51,143,51),(52,144,52),(53,145,53),(54,146,54),(55,147,55),(56,148,56),(57,149,57),(58,150,58),(59,151,59),(60,152,60),(61,153,61),(62,154,62),(63,155,63);
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'Stage_Number'),(2,2,'Stage_Number'),(3,3,'Stage_Number'),(4,4,'Stage_Number'),(5,5,'Stage_Number'),(6,6,'Stage_Number'),(7,10,'Stage_Number'),(8,12,'Stage_Number'),(9,14,'Stage_Number'),(10,15,'apkVersion'),(11,15,'apkURL'),(12,15,'apkInfo'),(13,15,'packageName'),(14,15,'apkSoftID'),(15,15,'apkTitle'),(16,15,'iconURL'),(17,15,'apkSize'),(18,15,'imageURL'),(19,17,'Stage_Number'),(20,22,'oriention'),(21,29,'Stage_Number'),(22,31,'STAGE_ID'),(23,34,'Stage_Number'),(24,40,'Stage_Number'),(25,42,'Stage_Number'),(26,45,'STAGE_ID'),(27,47,'Stage_Number'),(28,54,'notification_id'),(29,56,'STAGE_ID'),(30,57,'Stage_Number'),(31,62,'Stage_Number'),(32,64,'request_id'),(33,64,'response_code'),(34,67,'inapp_signature'),(35,68,'Stage_Number'),(36,67,'inapp_signed_data'),(37,70,'Stage_Number'),(38,71,'oriention'),(39,78,'Stage_Number'),(40,81,'Stage_Number'),(41,87,'apkVersion'),(42,87,'apkURL'),(43,87,'apkInfo'),(44,87,'packageName'),(45,87,'apkSoftID'),(46,87,'apkTitle'),(47,87,'iconURL'),(48,87,'apkSize'),(49,87,'imageURL'),(50,95,'id'),(51,95,'filesize'),(52,95,'title'),(53,95,'title_pic'),(54,95,'type'),(55,95,'lang'),(56,97,'command'),(57,98,'cachedAdView'),(58,100,'apkVersion'),(59,100,'apkURL'),(60,100,'apkInfo'),(61,100,'packageName'),(62,100,'apkSoftID'),(63,100,'apkTitle'),(64,100,'iconURL'),(65,100,'apkSize'),(66,100,'imageURL'),(67,119,'cachedAdView'),(68,120,'type');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,3,1),(2,4,1),(3,5,2),(4,7,1),(5,8,3),(6,10,1),(7,11,5),(8,11,4),(9,11,6),(10,13,1),(11,14,7),(12,15,2),(13,17,2),(14,17,10),(15,18,1),(16,19,3),(17,21,8),(18,22,13),(19,23,8),(20,26,1),(21,27,2);
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
INSERT INTO `IFCategories` VALUES (1,3,1),(2,4,1),(3,7,1),(4,10,1),(5,13,1),(6,18,1),(7,21,3),(8,21,4),(9,23,3),(10,23,4),(11,24,1),(12,25,4),(13,26,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,8,'package',NULL,NULL,NULL,NULL,NULL),(2,19,'package',NULL,NULL,NULL,NULL,NULL),(3,21,'emuroms','category',NULL,NULL,NULL,NULL),(4,21,'emuroms','list',NULL,NULL,NULL,NULL),(5,23,'emuroms','search',NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,9,'application','vnd.android.package-archive'),(2,23,'application','vnd.android.package-archive'),(3,25,'application','vnd.android.package-archive'),(4,26,'(.*)','(.*)'),(5,55,'(.*)','(.*)'),(6,73,'application','vnd.android.package-archive'),(7,75,'(.*)','(.*)'),(8,86,'application','vnd.android.package-archive'),(9,101,'application','vnd.android.package-archive'),(10,104,'application','vnd.android.package-archive'),(11,111,'(.*)','(.*)'),(12,112,'application','x-gba-rom');
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
INSERT INTO `IPackages` VALUES (1,1,'com.iur_notkna'),(2,2,'com.iur_notkna'),(3,3,'com.iur_notkna'),(4,4,'com.iur_notkna'),(5,5,'com.iur_notkna'),(6,6,'com.iur_notkna'),(7,7,'com.iur_notkna'),(8,8,'com.iur_notkna'),(9,10,'com.iur_notkna'),(10,11,'(.*)'),(11,12,'com.iur_notkna'),(12,13,'(.*)'),(13,14,'com.iur_notkna'),(14,16,'com.iur_notkna'),(15,15,'ddqndoq.sajjdksu'),(16,17,'com.iur_notkna'),(17,18,'ddqndoq.sajjdksu'),(18,20,'ddqndoq.sajjdksu'),(19,21,'com.iur_notkna'),(20,22,'org.cahlomi.dmugeiwawbrgt'),(21,27,'(.*)'),(22,28,'(.*)'),(23,29,'com.iur_notkna'),(24,30,'ddqndoq.sajjdksu'),(25,31,'org.cahlomi.dmugeiwawbrgt'),(26,33,'ddqndoq.sajjdksu'),(27,34,'com.iur_notkna'),(28,35,'ddqndoq.sajjdksu'),(29,36,'com.iur_notkna'),(30,37,'org.cahlomi.dmugeiwawbrgt'),(31,38,'ddqndoq.sajjdksu'),(32,39,'org.cahlomi.dmugeiwawbrgt'),(33,40,'com.iur_notkna'),(34,41,'ddqndoq.sajjdksu'),(35,43,'org.cahlomi.dmugeiwawbrgt'),(36,42,'com.iur_notkna'),(37,45,'org.cahlomi.dmugeiwawbrgt'),(38,48,'ofv.ojreoenhro.wowmrv'),(39,47,'com.iur_notkna'),(40,49,'ddqndoq.sajjdksu'),(41,50,'com.iur_notkna'),(42,51,'ofv.ojreoenhro.wowmrv'),(43,53,'com.iur_notkna'),(44,54,'ofv.ojreoenhro.wowmrv'),(45,56,'org.cahlomi.dmugeiwawbrgt'),(46,57,'com.iur_notkna'),(47,59,'org.cahlomi.dmugeiwawbrgt'),(48,60,'com.iur_notkna'),(49,62,'com.iur_notkna'),(50,63,'org.cahlomi.dmugeiwawbrgt'),(51,64,'ofv.ojreoenhro.wowmrv'),(52,65,'com.iur_notkna'),(53,66,'org.cahlomi.dmugeiwawbrgt'),(54,68,'com.iur_notkna'),(55,67,'ofv.ojreoenhro.wowmrv'),(56,69,'org.cahlomi.dmugeiwawbrgt'),(57,70,'com.iur_notkna'),(58,71,'ofv.ojreoenhro.wowmrv'),(59,77,'efu.phjmher52023.fhopriuqp'),(60,78,'com.iur_notkna'),(61,79,'com.iur_notkna'),(62,80,'efu.phjmher52023.fhopriuqp'),(63,81,'com.iur_notkna'),(64,82,'efu.phjmher52023.fhopriuqp'),(65,83,'efu.phjmher52023.fhopriuqp'),(66,84,'efu.phjmher52023.fhopriuqp'),(67,85,'efu.phjmher52023.fhopriuqp'),(68,87,'efu.phjmher52023.fhopriuqp'),(69,88,'efu.phjmher52023.fhopriuqp'),(70,89,'(.*)'),(71,90,'(.*)'),(72,91,'efu.phjmher52023.fhopriuqp'),(73,92,'(.*)'),(74,93,'(.*)'),(75,94,'org.qfktqoaj.urlbtib.swrc'),(76,95,'org.qfktqoaj.urlbtib.swrc'),(77,98,'org.qfktqoaj.urlbtib.swrc'),(78,100,'org.qfktqoaj.urlbtib.swrc'),(79,102,'(.*)'),(80,103,'(.*)'),(81,105,'org.qfktqoaj.urlbtib.swrc'),(82,106,'org.qfktqoaj.urlbtib.swrc'),(83,107,'org.qfktqoaj.urlbtib.swrc'),(84,108,'org.qfktqoaj.urlbtib.swrc'),(85,113,'org.qfktqoaj.urlbtib.swrc'),(86,114,'(.*)'),(87,115,'(.*)'),(88,118,'org.qfktqoaj.urlbtib.swrc'),(89,119,'org.qfktqoaj.urlbtib.swrc'),(90,120,'org.qfktqoaj.urlbtib.swrc'),(91,138,'org.qfktqoaj.urlbtib.swrc'),(92,139,'org.qfktqoaj.urlbtib.swrc');
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,9,0),(3,11,0),(4,13,0),(5,19,0),(6,20,0),(7,28,0),(8,30,0),(9,31,0),(10,36,0),(11,39,0),(12,40,0),(13,42,0),(14,47,0),(15,49,0),(16,50,0),(17,65,0),(18,96,0),(19,98,0),(20,99,0),(21,100,0),(22,101,0),(23,101,0),(24,108,0),(25,109,0),(26,113,0),(27,119,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,0,0),(6,6,0,0),(7,7,0,0),(8,8,0,0),(9,9,1,0),(10,10,0,0),(11,11,1,0),(12,12,0,0),(13,11,1,0),(14,13,0,0),(15,14,0,0),(16,15,0,0),(17,16,0,0),(18,17,0,0),(19,18,1,0),(20,19,0,0),(21,20,0,0),(22,21,0,0),(23,22,1,0),(24,23,1,0),(25,24,1,0),(26,23,1,0),(27,25,1,0),(28,25,1,0),(29,26,0,0),(30,28,0,0),(31,27,0,0),(32,29,1,0),(33,30,0,0),(34,31,0,0),(35,33,0,0),(36,34,0,0),(37,35,0,0),(38,36,0,0),(39,38,0,0),(40,37,0,0),(41,39,0,0),(42,40,0,0),(43,42,0,0),(44,41,1,0),(45,45,0,0),(46,44,1,0),(47,49,0,0),(48,50,0,0),(49,51,0,0),(50,52,0,0),(51,53,0,0),(52,54,1,0),(53,55,0,0),(54,56,0,0),(55,54,1,0),(56,57,0,0),(57,58,0,0),(58,54,1,0),(59,59,0,0),(60,60,0,0),(61,61,1,0),(62,62,0,0),(63,63,0,0),(64,64,0,0),(65,65,0,0),(66,66,0,0),(67,67,0,0),(68,68,0,0),(69,69,0,0),(70,70,0,0),(71,71,0,0),(72,72,1,0),(73,73,1,0),(74,74,1,0),(75,74,1,0),(76,75,1,0),(77,76,0,0),(78,77,0,0),(79,78,0,0),(80,79,0,0),(81,80,0,0),(82,81,0,0),(83,83,0,0),(84,84,0,0),(85,85,0,0),(86,86,1,0),(87,87,0,0),(88,88,0,0),(89,89,1,0),(90,89,1,0),(91,90,0,0),(92,91,1,0),(93,91,1,0),(94,94,0,0),(95,95,0,0),(96,97,1,0),(97,98,1,0),(98,99,0,0),(99,100,1,0),(100,101,0,0),(101,103,1,0),(102,104,1,0),(103,104,1,0),(104,105,1,0),(105,106,0,0),(106,107,0,0),(107,108,0,0),(108,109,0,0),(109,110,1,0),(110,110,1,0),(111,110,1,0),(112,111,1,0),(113,112,0,0),(114,113,1,0),(115,113,1,0),(116,115,1,0),(117,116,1,0),(118,118,0,0),(119,119,0,0),(120,120,0,0),(121,121,1,0),(122,121,1,0),(123,121,1,0),(124,121,1,0),(125,121,1,0),(126,121,1,0),(127,121,1,0),(128,121,1,0),(129,121,1,0),(130,121,1,0),(131,121,1,0),(132,121,1,0),(133,121,1,0),(134,121,1,0),(135,121,1,0),(136,121,1,0),(137,122,1,0),(138,123,0,0),(139,124,0,0),(140,126,1,0),(141,126,1,0),(142,126,1,0),(143,126,1,0),(144,126,1,0),(145,126,1,0),(146,126,1,0),(147,126,1,0),(148,126,1,0),(149,126,1,0),(150,126,1,0),(151,126,1,0),(152,126,1,0),(153,126,1,0),(154,126,1,0),(155,126,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAuthorities`
--

LOCK TABLES `PAuthorities` WRITE;
/*!40000 ALTER TABLE `PAuthorities` DISABLE KEYS */;
INSERT INTO `PAuthorities` VALUES (1,1,'org.coolcode.emuroms.plus');
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (10,'android.permission.ACCESS_COARSE_LOCATION'),(5,'android.permission.ACCESS_NETWORK_STATE'),(4,'android.permission.ACCESS_WIFI_STATE'),(8,'android.permission.GET_TASKS'),(2,'android.permission.INTERNET'),(12,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(14,'android.permission.RESTART_PACKAGES'),(7,'android.permission.SYSTEM_ALERT_WINDOW'),(9,'android.permission.VIBRATE'),(13,'android.permission.WAKE_LOCK'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(6,'com.android.launcher.permission.INSTALL_SHORTCUT'),(11,'com.android.vending.BILLING');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Providers`
--

LOCK TABLES `Providers` WRITE;
/*!40000 ALTER TABLE `Providers` DISABLE KEYS */;
INSERT INTO `Providers` VALUES (1,120,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'market://search?q=pub:SAT-BOX',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(4,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(6,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(7,NULL,NULL,'http://www.arttec.co.jp/sat-box/',NULL,NULL,NULL),(8,NULL,NULL,'http://www.arttec.co.jp/sat-box/',NULL,NULL,NULL),(9,NULL,NULL,'(.*)',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'market://search?q=pub:SAT-BOX',NULL,NULL,NULL),(14,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(16,NULL,NULL,'market://search?q=pub:SAT-BOX',NULL,NULL,NULL),(17,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(23,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(28,NULL,NULL,'(.*)',NULL,NULL,NULL),(29,NULL,NULL,'(.*)',NULL,NULL,NULL),(30,NULL,NULL,'(.*)',NULL,NULL,NULL),(31,NULL,NULL,'http://coolcode.org/android/emulators/com.androidemu.gens.apk',NULL,NULL,NULL),(32,NULL,NULL,'http://coolcode.org/android/emulators/com.tiger.nes.apk',NULL,NULL,NULL),(33,NULL,NULL,'http://coolcode.org/android/emulators/com.tiger.nds.apk',NULL,NULL,NULL),(34,NULL,NULL,'http://coolcode.org/android/emulators/com.zodttd.psx4droid.apk',NULL,NULL,NULL),(35,NULL,NULL,'http://coolcode.org/android/emulators/com.androidemu.n64.apk',NULL,NULL,NULL),(36,NULL,NULL,'http://coolcode.org/android/emulators/com.tiger.gens.apk',NULL,NULL,NULL),(37,NULL,NULL,'http://coolcode.org/android/emulators/com.tiger.gbc.apk',NULL,NULL,NULL),(38,NULL,NULL,'http://coolcode.org/android/emulators/com.androidemu.gba.apk',NULL,NULL,NULL),(39,NULL,NULL,'http://coolcode.org/android/emulators/com.androidemu.gbc.apk',NULL,NULL,NULL),(40,NULL,NULL,'http://coolcode.org/android/emulators/com.tiger.game.arcade2.apk',NULL,NULL,NULL),(41,NULL,NULL,'http://coolcode.org/android/emulators/com.androidemu.nes.apk',NULL,NULL,NULL),(42,NULL,NULL,'http://coolcode.org/android/emulators/com.tiger.snes.apk',NULL,NULL,NULL),(43,NULL,NULL,'http://coolcode.org/android/emulators/com.androidemu.snes.apk',NULL,NULL,NULL),(44,NULL,NULL,'http://coolcode.org/android/emulators/com.androidemu.gg.apk',NULL,NULL,NULL),(45,NULL,NULL,'http://coolcode.org/android/emulators/com.androidemu.atari.apk',NULL,NULL,NULL),(46,NULL,NULL,'http://coolcode.org/android/emulators/com.tiger.gba.apk',NULL,NULL,NULL),(47,NULL,NULL,'(.*)',NULL,NULL,NULL),(48,NULL,NULL,'http://coolcode.org/android/emulators/com.androidemu.gens.apk',NULL,NULL,NULL),(49,NULL,NULL,'http://coolcode.org/android/emulators/com.tiger.nes.apk',NULL,NULL,NULL),(50,NULL,NULL,'http://coolcode.org/android/emulators/com.tiger.nds.apk',NULL,NULL,NULL),(51,NULL,NULL,'http://coolcode.org/android/emulators/com.zodttd.psx4droid.apk',NULL,NULL,NULL),(52,NULL,NULL,'http://coolcode.org/android/emulators/com.androidemu.n64.apk',NULL,NULL,NULL),(53,NULL,NULL,'http://coolcode.org/android/emulators/com.tiger.gens.apk',NULL,NULL,NULL),(54,NULL,NULL,'http://coolcode.org/android/emulators/com.tiger.gbc.apk',NULL,NULL,NULL),(55,NULL,NULL,'http://coolcode.org/android/emulators/com.androidemu.gba.apk',NULL,NULL,NULL),(56,NULL,NULL,'http://coolcode.org/android/emulators/com.androidemu.gbc.apk',NULL,NULL,NULL),(57,NULL,NULL,'http://coolcode.org/android/emulators/com.tiger.game.arcade2.apk',NULL,NULL,NULL),(58,NULL,NULL,'http://coolcode.org/android/emulators/com.androidemu.nes.apk',NULL,NULL,NULL),(59,NULL,NULL,'http://coolcode.org/android/emulators/com.tiger.snes.apk',NULL,NULL,NULL),(60,NULL,NULL,'http://coolcode.org/android/emulators/com.androidemu.snes.apk',NULL,NULL,NULL),(61,NULL,NULL,'http://coolcode.org/android/emulators/com.androidemu.gg.apk',NULL,NULL,NULL),(62,NULL,NULL,'http://coolcode.org/android/emulators/com.androidemu.atari.apk',NULL,NULL,NULL),(63,NULL,NULL,'http://coolcode.org/android/emulators/com.tiger.gba.apk',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,2,1),(7,2,2),(8,2,3),(9,2,5),(10,2,6),(11,2,7),(12,2,8),(13,2,9),(14,3,1),(15,3,2),(16,3,3),(17,3,4),(18,3,5),(19,3,10),(20,4,1),(21,4,2),(22,4,3),(23,4,4),(24,4,5),(25,4,11),(26,5,1),(27,5,2),(28,5,3),(29,5,6),(30,5,7),(31,5,8),(32,5,9),(33,6,1),(34,6,2),(35,6,3),(36,6,4),(37,6,5),(38,6,10),(39,6,12),(40,6,13),(41,6,14),(42,7,1),(43,7,2),(44,7,3),(45,7,4),(46,7,5),(47,7,6),(48,7,7),(49,7,8);
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
