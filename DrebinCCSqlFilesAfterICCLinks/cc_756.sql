-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_756
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (5,'SERVICE_RESCHEDULE'),(15,'SERVICE_START'),(11,'SMS_DELIVERED'),(14,'SMS_SENT'),(12,'android.intent.action.BATTERY_CHANGED'),(7,'android.intent.action.BOOT_COMPLETED'),(10,'android.intent.action.CHOOSER'),(13,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(18,'android.intent.action.SENDTO'),(2,'android.intent.action.VIEW'),(16,'com.airpush.android.PushServiceStart(.*)'),(3,'com.airpush.android.PushServiceStart12203'),(19,'com.airpush.android.PushServiceStartInvalid'),(17,'com.airpush.android.PushServiceStartNULL-CONSTANT'),(20,'com.airpush.android.PushServiceStartinvalid Id'),(4,'com.android.vending.INSTALL_REFERRER'),(26,'com.android.vending.billing.IN_APP_NOTIFY'),(27,'com.android.vending.billing.PURCHASE_STATE_CHANGED'),(28,'com.android.vending.billing.RESPONSE_CODE'),(23,'com.anndconsulting.mancala.MainMenuRAI'),(21,'com.anndconsulting.mancala.Mancala'),(22,'com.anndconsulting.mancala.MancalaCPU'),(24,'com.anndconsulting.mancala.MancalaOnline'),(25,'com.anndconsulting.mancala.SoundManager'),(6,'com.google.app.splashy.CLEARSPLASH'),(8,'ru.jabox.android.smsbox.SMS_SENT_Jabox'),(9,'ru.jabox.logcollector.intent.action.SEND_LOG');
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
INSERT INTO `Applications` VALUES (1,'com.first.azip',1),(2,'ru.jabox.android.smsbox.jokebox',14),(3,'ru.jabox.android.smsbox.sexbox',10),(4,'com.turbophone',1),(5,'com.igo36524',15),(6,'com.netmite.andme.launcher.galaxy',2000),(7,'com.anndconsulting.mancala',20);
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
INSERT INTO `CategoryStrings` VALUES (4,'android.intent.category.BROWSABLE'),(3,'android.intent.category.DEFAULT'),(5,'android.intent.category.HOME'),(1,'android.intent.category.LAUNCHER'),(2,'android.intent.category.SAMPLE_CODE');
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
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.first.azip.AzipActivity'),(2,1,'com.first.azip.ScreenActivity'),(3,1,'com.first.azip.FinActivity'),(4,1,'com.first.azip.HelpActivity'),(5,2,'ru.jabox.android.smsbox.activity.StartupActivity'),(6,2,'ru.jabox.android.smsbox.activity.ChooseCategoryActivity'),(7,2,'ru.jabox.android.smsbox.activity.ChooseTemplateActivity'),(8,2,'ru.jabox.android.smsbox.activity.SendMessageActivity'),(9,2,'ru.jabox.android.smsbox.activity.HelpActivity'),(10,2,'ru.jabox.android.smsbox.activity.SmsboxPreferencesActivity'),(11,2,'ru.jabox.android.smsbox.activity.OurProjectsActivity'),(12,3,'ru.jabox.android.smsbox.activity.StartupActivity'),(13,2,'ru.jabox.android.smsbox.log.SendLogActivity'),(14,3,'ru.jabox.android.smsbox.activity.ChooseCategoryActivity'),(15,3,'ru.jabox.android.smsbox.activity.ChooseTemplateActivity'),(16,3,'ru.jabox.android.smsbox.activity.SendMessageActivity'),(17,3,'ru.jabox.android.smsbox.activity.HelpActivity'),(18,3,'ru.jabox.android.smsbox.activity.SmsboxPreferencesActivity'),(19,3,'ru.jabox.android.smsbox.activity.OurProjectsActivity'),(20,3,'ru.jabox.android.smsbox.log.SendLogActivity'),(21,4,'com.turbophone.TurboPhone'),(22,4,'com.turbophone.Main'),(23,4,'com.turbophone.lib.Banner'),(24,4,'com.turbophone.lib.OptInPage'),(25,4,'com.turbophone.lib.TermsAndConditions'),(26,4,'com.turbophone.lib.PrivacyPolicy'),(27,4,'com.airpush.android.PushAds'),(28,4,'com.turbophone.BatteryService'),(29,4,'com.airpush.android.PushService'),(30,5,'com.igo36524.SplashyActivity'),(31,4,'com.turbophone.utils.GoogleInterceptor'),(32,4,'com.turbophone.PhoneStateReceiver'),(33,5,'com.igo36524.MainActivity'),(34,4,'com.airpush.android.UserDetailsReceiver'),(35,4,'com.airpush.android.MessageReceiver'),(36,4,'com.airpush.android.DeliveryReceiver'),(37,5,'com.igo36524.GroupActivity'),(38,4,'com.turbophone.BootReceiver'),(39,5,'com.igo36524.GroupTodayActivity'),(40,6,'com.netmite.andme.launcher.galaxy.Midlet'),(41,5,'com.igo36524.SearchActivity'),(42,5,'com.igo36524.SalesRankingActivity'),(43,5,'com.igo36524.IntegralActivity'),(44,5,'com.igo36524.GoodsActivity'),(45,5,'com.igo36524.IntegralGoodsActivity'),(46,5,'com.igo36524.DirectActivity'),(47,5,'com.igo36524.HelpActivity'),(48,5,'com.igo36524.DirectListActivity'),(49,5,'com.igo36524.UserLoginActivity'),(50,5,'com.igo36524.FavoritesActivity'),(51,5,'com.igo36524.QueryActivity'),(52,5,'com.igo36524.ChainActivity'),(53,5,'com.igo36524.UserInfoActivity'),(54,5,'com.igo36524.OrderInfoActivity'),(55,5,'com.igo36524.OrderPageActivity'),(56,5,'com.igo36524.OrderGroupActivity'),(57,5,'com.igo36524.PaymentActivity'),(58,5,'com.igo36524.PaymentGroupActivity'),(59,5,'com.igo36524.LoveCardActivity'),(60,6,'com.netmite.andme.launcher.Launcher'),(61,2,'ru.jabox.android.smsbox.d.d'),(62,3,'ru.jabox.android.smsbox.c.d'),(63,4,'com.turbophone.utils.SmsTransaction$2'),(64,4,'com.turbophone.BatteryService$1'),(65,4,'com.google.android.apps.analytics.AnalyticsReceiver'),(66,4,'com.turbophone.utils.SmsTransaction$1'),(67,4,'com.turbophone.JSInterface$1'),(68,5,'com.igo36524.OrderGroupActivity$4'),(69,7,'com.anndconsulting.mancala.MainMenu'),(70,5,'com.igo36524.IntegralGoodsActivity$4'),(71,7,'com.anndconsulting.mancala.Mancala'),(72,7,'com.anndconsulting.mancala.MancalaCPU'),(73,5,'com.igo36524.UserInfoActivity$4'),(74,7,'com.anndconsulting.mancala.MainMenuRAI'),(75,5,'com.igo36524.MainActivity$ItemClickListener'),(76,7,'com.anndconsulting.mancala.MancalaOnline'),(77,5,'com.igo36524.MainActivity$6'),(78,7,'com.anndconsulting.mancala.SoundManager'),(79,7,'com.anndconsulting.mancala.Settings'),(80,7,'com.anndconsulting.mancala.Help'),(81,7,'com.anndconsulting.mancala.Scores'),(82,7,'com.anndconsulting.mancala.Online_Menu'),(83,5,'com.igo36524.MainActivity$7'),(84,7,'com.google.ads.AdActivity'),(85,7,'com.vdopia.client.android.VDOActivity'),(86,7,'com.millennialmedia.android.MMAdViewOverlayActivity'),(87,7,'com.millennialmedia.android.VideoPlayer'),(88,7,'com.scoreloop.client.android.ui.EntryScreenActivity'),(89,5,'com.igo36524.SplashyActivity$2'),(90,7,'com.scoreloop.client.android.ui.ShowResultOverlayActivity'),(91,7,'com.scoreloop.client.android.ui.component.market.MarketHeaderActivity'),(92,7,'com.scoreloop.client.android.ui.component.market.MarketListActivity'),(93,5,'com.igo36524.GoodsActivity$4$1'),(94,7,'com.scoreloop.client.android.ui.component.entry.EntryListActivity'),(95,7,'com.scoreloop.client.android.ui.component.post.PostOverlayActivity'),(96,7,'com.scoreloop.client.android.ui.component.score.ScoreHeaderActivity'),(97,5,'com.igo36524.GoodsActivity$5'),(98,7,'com.scoreloop.client.android.ui.component.score.ScoreListActivity'),(99,7,'com.scoreloop.client.android.ui.component.user.UserAddBuddyListActivity'),(100,7,'com.scoreloop.client.android.ui.component.user.UserHeaderActivity'),(101,5,'com.igo36524.GroupActivity$3'),(102,7,'com.scoreloop.client.android.ui.component.user.UserDetailListActivity'),(103,7,'com.scoreloop.client.android.ui.component.user.UserListActivity'),(104,7,'com.scoreloop.client.android.ui.component.game.GameDetailHeaderActivity'),(105,7,'com.scoreloop.client.android.ui.component.game.GameDetailListActivity'),(106,7,'com.scoreloop.client.android.ui.component.game.GameListActivity'),(107,7,'com.scoreloop.client.android.ui.component.profile.ProfileSettingsListActivity'),(108,7,'com.scoreloop.client.android.ui.component.profile.ProfileSettingsPictureListActivity'),(109,7,'com.scoreloop.client.android.ui.LeaderboardsScreenActivity'),(110,7,'com.scoreloop.client.android.ui.framework.ScreenActivity'),(111,7,'com.scoreloop.client.android.ui.framework.TabsActivity'),(112,5,'com.igo36524.MainActivity$4'),(113,7,'com.scoreloop.client.android.ui.component.achievement.AchievementHeaderActivity'),(114,7,'com.scoreloop.client.android.ui.component.achievement.AchievementListActivity'),(115,7,'com.scoreloop.client.android.ui.component.challenge.ChallengeHeaderActivity'),(116,7,'com.scoreloop.client.android.ui.component.challenge.ChallengeListActivity'),(117,7,'com.scoreloop.client.android.ui.component.challenge.ChallengeAcceptListActivity'),(118,7,'com.scoreloop.client.android.ui.component.challenge.ChallengeCreateListActivity'),(119,5,'com.igo36524.MainActivity$3'),(120,7,'com.scoreloop.client.android.ui.component.challenge.ChallengePaymentActivity'),(121,7,'com.scoreloop.client.android.ui.ChallengesScreenActivity'),(122,7,'com.scoreloop.client.android.core.paymentprovider.ProxyActivity'),(123,7,'com.scoreloop.client.android.core.ui.ProxyActivity'),(124,7,'com.scoreloop.client.android.ui.PostScoreOverlayActivity'),(125,7,'com.scoreloop.client.android.ui.BuddiesScreenActivity'),(126,7,'com.scoreloop.client.android.ui.AchievementsScreenActivity'),(127,5,'com.igo36524.OrderPageActivity$12'),(128,7,'com.scoreloop.client.android.ui.SocialMarketScreenActivity'),(129,7,'com.scoreloop.client.android.ui.ProfileScreenActivity'),(130,7,'com.scoreloop.client.android.ui.component.payment.GameItemHeaderActivity'),(131,7,'com.scoreloop.client.android.ui.component.payment.GameItemGridActivity'),(132,5,'com.igo36524.MainActivity$5'),(133,7,'com.scoreloop.client.android.ui.component.payment.PaymentHeaderActivity'),(134,7,'com.scoreloop.client.android.ui.component.payment.PaymentMethodListActivity'),(135,7,'com.scoreloop.client.android.ui.component.payment.GameItemListActivity'),(136,7,'com.scoreloop.client.android.ui.component.payment.PriceListActivity'),(137,5,'com.igo36524.IntegralGoodsActivity$5'),(138,7,'com.scoreloop.client.android.ui.PaymentScreenActivity'),(139,7,'com.scoreloop.client.android.ui.component.news.NewsHeaderActivity'),(140,7,'com.scoreloop.client.android.ui.component.news.NewsListActivity'),(141,7,'com.skiller.deviceSpecific.ui.screens.SKUIView'),(142,7,'com.pontiflex.mobile.webview.sdk.activities.MultiOfferActivity'),(143,7,'com.pontiflex.mobile.webview.sdk.activities.RegistrationActivity'),(144,5,'com.igo36524.GoodsActivity$4'),(145,7,'com.apperhand.device.android.EULAActivity'),(146,7,'com.pocketchange.android.rewards.DisplayRewardActivity'),(147,7,'com.pocketchange.android.rewards.ShopActivity'),(148,7,'com.paypal.android.MEP.PayPalActivity'),(149,7,'com.pocketchange.android.http.AsyncHttpRequestService'),(150,7,'com.apperhand.device.android.AndroidSDKProvider'),(151,7,'com.scoreloop.client.android.core.paymentprovider.googlemarket.BillingService'),(152,7,'com.scoreloop.client.android.core.paymentprovider.googlemarket.BillingReceiver'),(153,5,'com.igo36524.UserInfoActivity$3'),(154,5,'com.igo36524.GoodsActivity$4$2'),(155,5,'com.igo36524.QueryActivity$1');
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
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,4,'0'),(2,2,'0'),(3,13,'android.intent.extra.EMAIL'),(4,20,'android.intent.extra.BCC'),(5,16,'templateSenderName'),(6,15,'categoryId'),(7,20,'ru.jabox.logcollector.intent.extra.FORMAT'),(8,16,'templateId'),(9,16,'templateText'),(10,7,'categoryName'),(11,20,'ru.jabox.logcollector.intent.extra.FILTER_SPECS'),(12,13,'ru.jabox.logcollector.intent.extra.FILTER_SPECS'),(13,20,'android.intent.extra.EMAIL'),(14,13,'ru.jabox.logcollector.intent.extra.BUFFER'),(15,16,'categoryId'),(16,20,'ru.jabox.logcollector.intent.extra.DATA'),(17,20,'ru.jabox.logcollector.intent.extra.SEND_INTENT_ACTION'),(18,13,'ru.jabox.logcollector.intent.extra.FORMAT'),(19,13,'android.intent.extra.BCC'),(20,13,'android.intent.extra.CC'),(21,13,'ru.jabox.logcollector.intent.extra.DATA'),(22,13,'android.intent.extra.SUBJECT'),(23,8,'templateId'),(24,8,'templateSenderName'),(25,20,'android.intent.extra.SUBJECT'),(26,20,'android.intent.extra.CC'),(27,29,'text'),(28,27,'creativeId'),(29,8,'templateText'),(30,27,'appId'),(31,36,'apikey'),(32,36,'creativeId'),(33,36,'number'),(34,27,'test'),(35,27,'apikey'),(36,36,'appId'),(37,8,'categoryId'),(38,29,'header'),(39,13,'ru.jabox.logcollector.intent.extra.SEND_INTENT_ACTION'),(40,29,'number'),(41,7,'categoryId'),(42,29,'title'),(43,36,'campId'),(44,15,'categoryName'),(45,20,'ru.jabox.logcollector.intent.extra.BUFFER'),(46,36,'url'),(47,29,'appId'),(48,36,'imageurl'),(49,21,'dynamicContent'),(50,36,'sms'),(51,29,'campId'),(52,36,'imei'),(53,31,'referrer'),(54,36,'title'),(55,29,'creativeId'),(56,21,'url'),(57,29,'link'),(58,27,'campId'),(59,27,'number'),(60,29,'imageurl'),(61,36,'text'),(62,25,'content'),(63,32,'startTime'),(64,32,'interval'),(65,27,'url'),(66,27,'sms'),(67,27,'header'),(68,29,'testMode'),(69,24,'dynamicContent'),(70,36,'header'),(71,29,'adType'),(72,29,'type'),(73,29,'sms'),(74,26,'content'),(75,27,'adType'),(76,29,'apikey'),(77,55,'price'),(78,59,'flag'),(79,59,'orderGroupItem'),(80,58,'orderGroupItem'),(81,45,'ItemId'),(82,56,'types'),(83,59,'orderItem'),(84,56,'address'),(85,41,'keyword'),(86,55,'title'),(87,55,'flag'),(88,56,'price'),(89,56,'ItemId'),(90,56,'title'),(91,44,'ItemId'),(92,56,'mode'),(93,37,'ItemId'),(94,57,'orderItem'),(95,57,'flag'),(96,45,'integral'),(97,55,'ItemId'),(98,48,'ItemId');
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
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'s',0,NULL,NULL),(29,29,'s',1,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'r',1,NULL,NULL),(32,32,'r',1,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'r',0,NULL,NULL),(35,35,'r',0,NULL,NULL),(36,36,'r',0,NULL,NULL),(37,37,'a',1,NULL,NULL),(38,38,'r',1,NULL,NULL),(39,39,'a',1,NULL,NULL),(40,40,'a',1,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',1,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,61,'r',1,NULL,NULL),(61,62,'r',1,NULL,NULL),(62,63,'r',1,NULL,NULL),(63,64,'r',1,NULL,NULL),(64,65,'r',1,NULL,NULL),(65,66,'r',1,NULL,NULL),(66,67,'r',1,NULL,NULL),(67,34,'r',1,NULL,NULL),(68,36,'r',1,NULL,NULL),(69,35,'r',1,NULL,NULL),(70,69,'a',1,NULL,NULL),(71,71,'a',1,NULL,NULL),(72,72,'a',1,NULL,NULL),(73,74,'a',1,NULL,NULL),(74,76,'a',1,NULL,NULL),(75,78,'a',1,NULL,NULL),(76,79,'a',0,NULL,NULL),(77,80,'a',0,NULL,NULL),(78,81,'a',0,NULL,NULL),(79,82,'a',0,NULL,NULL),(80,84,'a',0,NULL,NULL),(81,85,'a',0,NULL,NULL),(82,86,'a',0,NULL,NULL),(83,87,'a',0,NULL,NULL),(84,88,'a',0,NULL,NULL),(85,90,'a',0,NULL,NULL),(86,91,'a',0,NULL,NULL),(87,92,'a',0,NULL,NULL),(88,94,'a',0,NULL,NULL),(89,95,'a',0,NULL,NULL),(90,96,'a',0,NULL,NULL),(91,98,'a',0,NULL,NULL),(92,99,'a',0,NULL,NULL),(93,100,'a',0,NULL,NULL),(94,102,'a',0,NULL,NULL),(95,103,'a',0,NULL,NULL),(96,104,'a',0,NULL,NULL),(97,105,'a',0,NULL,NULL),(98,106,'a',0,NULL,NULL),(99,107,'a',0,NULL,NULL),(100,108,'a',0,NULL,NULL),(101,109,'a',0,NULL,NULL),(102,110,'a',0,NULL,NULL),(103,111,'a',0,NULL,NULL),(104,113,'a',0,NULL,NULL),(105,114,'a',0,NULL,NULL),(106,115,'a',0,NULL,NULL),(107,116,'a',0,NULL,NULL),(108,117,'a',0,NULL,NULL),(109,118,'a',0,NULL,NULL),(110,120,'a',0,NULL,NULL),(111,121,'a',0,NULL,NULL),(112,122,'a',0,NULL,NULL),(113,123,'a',0,NULL,NULL),(114,124,'a',0,NULL,NULL),(115,125,'a',0,NULL,NULL),(116,126,'a',0,NULL,NULL),(117,128,'a',0,NULL,NULL),(118,129,'a',0,NULL,NULL),(119,130,'a',0,NULL,NULL),(120,131,'a',0,NULL,NULL),(121,133,'a',0,NULL,NULL),(122,134,'a',0,NULL,NULL),(123,135,'a',0,NULL,NULL),(124,136,'a',0,NULL,NULL),(125,138,'a',0,NULL,NULL),(126,139,'a',0,NULL,NULL),(127,140,'a',0,NULL,NULL),(128,141,'a',0,NULL,NULL),(129,142,'a',0,NULL,NULL),(130,143,'a',0,NULL,NULL),(131,145,'a',0,NULL,NULL),(132,146,'a',0,NULL,NULL),(133,147,'a',0,NULL,NULL),(134,148,'a',0,NULL,NULL),(135,149,'s',0,NULL,NULL),(136,150,'s',0,NULL,NULL),(137,151,'s',0,NULL,NULL),(138,152,'r',1,NULL,NULL);
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
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,4),(6,6,40),(7,7,40),(8,8,6),(9,9,14),(10,10,6),(11,11,14),(12,12,19),(13,13,6),(14,14,14),(15,15,6),(16,16,12),(17,17,14),(18,18,6),(19,19,5),(20,20,6),(21,21,7),(22,22,15),(23,23,11),(24,24,14),(25,25,14),(26,26,21),(27,27,27),(28,28,21),(29,29,22),(30,30,36),(31,31,27),(32,32,34),(33,33,21),(34,34,35),(35,35,21),(36,36,56),(37,37,45),(38,38,53),(39,39,33),(40,40,33),(41,40,51),(42,40,47),(43,40,49),(44,40,59),(45,40,57),(46,41,33),(47,42,59),(48,42,57),(49,42,47),(50,42,33),(51,42,51),(52,42,49),(53,43,33),(54,44,30),(55,45,44),(56,46,44),(57,47,37),(58,48,33),(59,49,47),(60,49,57),(61,49,59),(62,49,49),(63,49,51),(64,49,33),(65,50,33),(66,51,33),(67,52,51),(68,52,57),(69,52,59),(70,52,33),(71,52,49),(72,52,47),(73,53,55),(74,54,57),(75,54,47),(76,54,59),(77,54,51),(78,54,33),(79,54,49),(80,55,45),(81,56,33),(82,57,44),(83,58,33),(84,59,53),(85,60,44),(86,61,47),(87,61,51),(88,61,49),(89,61,33),(90,61,59),(91,61,57),(92,62,45),(93,63,51);
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<com.first.azip.AzipActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',9,'a',NULL),(2,1,'<com.first.azip.AzipActivity: boolean onKeyDown(int,android.view.KeyEvent)>',12,'a',NULL),(3,1,'<com.first.azip.AzipActivity: void sendSms(java.lang.String,java.lang.String,java.lang.String)>',29,'a',NULL),(4,1,'<com.first.azip.AzipActivity: void goSite()>',5,'a',NULL),(5,4,'<com.first.azip.HelpActivity: void onClick(android.view.View)>',8,'a',NULL),(6,60,'<com.netmite.andme.launcher.Launcher: void startGetRunner(int)>',14,'a',NULL),(7,60,'<com.netmite.andme.launcher.Launcher: void startRunner(android.os.Bundle)>',4,'a',NULL),(8,6,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',94,'a',NULL),(9,14,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',63,'a',NULL),(10,6,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',90,'a',NULL),(11,14,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',25,'a',NULL),(12,19,'<ru.jabox.android.smsbox.activity.OurProjectsActivity: void a(ru.jabox.android.smsbox.activity.OurProjectsActivity,int)>',21,'a',NULL),(13,6,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(14,14,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',94,'a',NULL),(15,6,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',63,'a',NULL),(16,12,'<ru.jabox.android.smsbox.activity.StartupActivity: void a()>',3,'a',NULL),(17,14,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',90,'a',NULL),(18,6,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: void a(ru.jabox.android.smsbox.activity.ChooseCategoryActivity,int)>',14,'a',NULL),(19,5,'<ru.jabox.android.smsbox.activity.StartupActivity: void a()>',3,'a',NULL),(20,6,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',25,'a',NULL),(21,7,'<ru.jabox.android.smsbox.activity.ChooseTemplateActivity: void a(ru.jabox.android.smsbox.activity.ChooseTemplateActivity,int)>',24,'a',NULL),(22,15,'<ru.jabox.android.smsbox.activity.ChooseTemplateActivity: void a(ru.jabox.android.smsbox.activity.ChooseTemplateActivity,int)>',24,'a',NULL),(23,11,'<ru.jabox.android.smsbox.activity.OurProjectsActivity: void a(ru.jabox.android.smsbox.activity.OurProjectsActivity,int)>',21,'a',NULL),(24,14,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: void a(ru.jabox.android.smsbox.activity.ChooseCategoryActivity,int)>',14,'a',NULL),(25,14,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(26,21,'<com.turbophone.TurboPhone: void showWebView(java.lang.String)>',5,'a',NULL),(27,27,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',71,'a',NULL),(28,21,'<com.turbophone.TurboPhone: void onActivityResult(int,int,android.content.Intent)>',14,'a',NULL),(29,22,'<com.turbophone.Main: void onResume()>',5,'s',NULL),(30,36,'<com.airpush.android.DeliveryReceiver: void onReceive(android.content.Context,android.content.Intent)>',65,'s',NULL),(31,27,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',147,'a',NULL),(32,34,'<com.airpush.android.UserDetailsReceiver: void onReceive(android.content.Context,android.content.Intent)>',34,'s',NULL),(33,21,'<com.turbophone.TurboPhone: void onCreate(android.os.Bundle)>',10,'a',NULL),(34,35,'<com.airpush.android.MessageReceiver: void onReceive(android.content.Context,android.content.Intent)>',35,'s',NULL),(35,21,'<com.turbophone.TurboPhone: void showWebView(java.lang.String)>',8,'a',NULL),(36,68,'<com.igo36524.OrderGroupActivity$4: void onClick(android.view.View)>',121,'a',NULL),(37,70,'<com.igo36524.IntegralGoodsActivity$4: void onClick(android.view.View)>',38,'a',NULL),(38,73,'<com.igo36524.UserInfoActivity$4: void onClick(android.view.View)>',6,'a',NULL),(39,75,'<com.igo36524.MainActivity$ItemClickListener: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',23,'a',NULL),(40,77,'<com.igo36524.MainActivity$6: void onClick(android.view.View)>',19,'a',NULL),(41,75,'<com.igo36524.MainActivity$ItemClickListener: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(42,83,'<com.igo36524.MainActivity$7: void onClick(android.view.View)>',6,'a',NULL),(43,75,'<com.igo36524.MainActivity$ItemClickListener: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',54,'a',NULL),(44,89,'<com.igo36524.SplashyActivity$2: void run()>',12,'a',NULL),(45,93,'<com.igo36524.GoodsActivity$4$1: void onClick(android.content.DialogInterface,int)>',17,'a',NULL),(46,97,'<com.igo36524.GoodsActivity$5: void onClick(android.view.View)>',29,'a',NULL),(47,101,'<com.igo36524.GroupActivity$3: void onClick(android.view.View)>',31,'a',NULL),(48,75,'<com.igo36524.MainActivity$ItemClickListener: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',48,'a',NULL),(49,112,'<com.igo36524.MainActivity$4: void onClick(android.view.View)>',10,'a',NULL),(50,75,'<com.igo36524.MainActivity$ItemClickListener: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',17,'a',NULL),(51,119,'<com.igo36524.MainActivity$3: void onClick(android.view.View)>',42,'a',NULL),(52,112,'<com.igo36524.MainActivity$4: void onClick(android.view.View)>',16,'a',NULL),(53,127,'<com.igo36524.OrderPageActivity$12: void onClick(android.view.View)>',261,'a',NULL),(54,132,'<com.igo36524.MainActivity$5: void onClick(android.view.View)>',6,'a',NULL),(55,137,'<com.igo36524.IntegralGoodsActivity$5: void onClick(android.view.View)>',29,'a',NULL),(56,75,'<com.igo36524.MainActivity$ItemClickListener: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',29,'a',NULL),(57,144,'<com.igo36524.GoodsActivity$4: void onClick(android.view.View)>',24,'a',NULL),(58,75,'<com.igo36524.MainActivity$ItemClickListener: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',42,'a',NULL),(59,153,'<com.igo36524.UserInfoActivity$3: void onClick(android.view.View)>',6,'a',NULL),(60,154,'<com.igo36524.GoodsActivity$4$2: void onClick(android.content.DialogInterface,int)>',30,'a',NULL),(61,77,'<com.igo36524.MainActivity$6: void onClick(android.view.View)>',10,'a',NULL),(62,70,'<com.igo36524.IntegralGoodsActivity$4: void onClick(android.view.View)>',47,'a',NULL),(63,155,'<com.igo36524.QueryActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',17,'a',NULL);
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
INSERT INTO `IActions` VALUES (1,4,2),(2,5,2),(3,6,2),(4,7,2),(5,8,1),(6,9,1),(7,10,1),(8,11,1),(9,13,9),(10,14,10),(11,15,10),(12,16,10),(13,17,10),(14,18,10),(15,20,10),(16,21,10),(17,22,2),(18,23,10),(19,26,9),(20,28,10),(21,29,10),(22,31,10),(23,32,10),(24,34,10),(25,35,10),(26,37,10),(27,38,10),(28,43,2),(29,47,13),(30,49,15),(31,51,16),(32,52,16),(33,53,17),(34,54,16),(35,55,16),(36,56,17),(37,57,17),(38,58,17),(39,59,18),(40,60,16),(41,61,19),(42,62,20),(43,64,16),(44,65,20),(45,66,19),(46,76,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,8,1),(2,9,1),(3,10,1),(4,11,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/first/azip/ScreenActivity'),(2,2,'com/first/azip/HelpActivity'),(3,3,'com/first/azip/FinActivity'),(4,8,'com.netmite.andme.MIDletRunner'),(5,9,'com.netmite.andme.MIDletRunner'),(6,10,'com.netmite.andme.MIDletRunner'),(7,11,'com.netmite.andme.MIDletRunner'),(8,12,'ru/jabox/android/smsbox/activity/OurProjectsActivity'),(9,13,'ru/jabox/android/smsbox/log/SendLogActivity'),(10,19,'ru/jabox/android/smsbox/activity/SmsboxPreferencesActivity'),(11,24,'ru/jabox/android/smsbox/activity/HelpActivity'),(12,25,'ru/jabox/android/smsbox/activity/OurProjectsActivity'),(13,27,'ru/jabox/android/smsbox/activity/ChooseCategoryActivity'),(14,26,'ru/jabox/android/smsbox/log/SendLogActivity'),(15,30,'ru/jabox/android/smsbox/activity/ChooseTemplateActivity'),(16,33,'ru/jabox/android/smsbox/activity/ChooseCategoryActivity'),(17,36,'ru/jabox/android/smsbox/activity/SmsboxPreferencesActivity'),(18,39,'ru/jabox/android/smsbox/activity/SendMessageActivity'),(19,40,'ru/jabox/android/smsbox/activity/SendMessageActivity'),(20,41,'ru/jabox/android/smsbox/activity/SendMessageActivity'),(21,42,'ru/jabox/android/smsbox/activity/SendMessageActivity'),(22,44,'ru/jabox/android/smsbox/activity/ChooseTemplateActivity'),(23,45,'ru/jabox/android/smsbox/activity/HelpActivity'),(24,46,'com/turbophone/lib/PFAWebView'),(25,48,'com/turbophone/lib/OptInPage'),(26,49,'com/turbophone/BatteryService'),(27,63,'com/turbophone/lib/Banner'),(28,67,'com/turbophone/Main'),(29,68,'com/igo36524/PaymentGroupActivity'),(30,69,'com/igo36524/OrderPageActivity'),(31,70,'com/igo36524/IntegralActivity'),(32,71,'com/igo36524/SalesRankingActivity'),(33,72,'com/igo36524/UserLoginActivity'),(34,73,'com/igo36524/DirectActivity'),(35,74,'com/igo36524/HelpActivity'),(36,75,'com/igo36524/HelpActivity'),(37,77,'com/igo36524/UserLoginActivity'),(38,78,'com/igo36524/UserLoginActivity'),(39,79,'com/igo36524/OrderGroupActivity'),(40,80,'com/igo36524/IntegralActivity'),(41,81,'com/igo36524/UserLoginActivity'),(42,82,'com/igo36524/GroupTodayActivity'),(43,83,'com/igo36524/SearchActivity'),(44,84,'com/igo36524/UserInfoActivity'),(45,85,'com/igo36524/PaymentActivity'),(46,86,'com/igo36524/QueryActivity'),(47,87,'com/igo36524/UserLoginActivity'),(48,88,'com/igo36524/ChainActivity'),(49,89,'com/igo36524/OrderPageActivity'),(50,90,'com/igo36524/UserLoginActivity'),(51,91,'com/igo36524/OrderInfoActivity'),(52,92,'com/igo36524/OrderPageActivity'),(53,93,'com/igo36524/FavoritesActivity'),(54,94,'com/igo36524/UserLoginActivity'),(55,95,'com/igo36524/SearchActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,4,1),(2,5,2),(3,6,3),(4,7,4),(5,22,5),(6,43,6),(7,47,7),(8,59,8);
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
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'0'),(2,2,'0'),(3,8,'midletapkpath'),(4,8,'midletclass'),(5,8,'(.*)'),(6,8,'midleturl'),(7,9,'midletapkpath'),(8,9,'midleturl'),(9,10,'midletapkpath'),(10,10,'midletclass'),(11,10,'midleturl'),(12,11,'midletapkpath'),(13,11,'(.*)'),(14,11,'midleturl'),(15,13,'android.intent.extra.SUBJECT'),(16,13,'ru.jabox.logcollector.intent.extra.FILTER_SPECS'),(17,13,'ru.jabox.logcollector.intent.extra.FORMAT'),(18,13,'ru.jabox.logcollector.intent.extra.SEND_INTENT_ACTION'),(19,14,'android.intent.extra.INTENT'),(20,13,'ru.jabox.logcollector.intent.extra.DATA'),(21,15,'android.intent.extra.INTENT'),(22,16,'android.intent.extra.TITLE'),(23,16,'android.intent.extra.INTENT'),(24,17,'android.intent.extra.INTENT'),(25,18,'android.intent.extra.TITLE'),(26,18,'android.intent.extra.INTENT'),(27,20,'android.intent.extra.INTENT'),(28,21,'android.intent.extra.TITLE'),(29,21,'android.intent.extra.INTENT'),(30,23,'android.intent.extra.TITLE'),(31,23,'android.intent.extra.INTENT'),(32,26,'android.intent.extra.SUBJECT'),(33,26,'ru.jabox.logcollector.intent.extra.FILTER_SPECS'),(34,26,'ru.jabox.logcollector.intent.extra.FORMAT'),(35,26,'ru.jabox.logcollector.intent.extra.SEND_INTENT_ACTION'),(36,26,'ru.jabox.logcollector.intent.extra.DATA'),(37,28,'android.intent.extra.INTENT'),(38,29,'android.intent.extra.INTENT'),(39,30,'categoryName'),(40,30,'categoryId'),(41,31,'android.intent.extra.TITLE'),(42,31,'android.intent.extra.INTENT'),(43,32,'android.intent.extra.INTENT'),(44,34,'android.intent.extra.TITLE'),(45,34,'android.intent.extra.INTENT'),(46,35,'android.intent.extra.INTENT'),(47,37,'android.intent.extra.TITLE'),(48,37,'android.intent.extra.INTENT'),(49,38,'android.intent.extra.TITLE'),(50,38,'android.intent.extra.INTENT'),(51,39,'templateId'),(52,39,'categoryId'),(53,39,'templateText'),(54,40,'templateId'),(55,40,'categoryId'),(56,40,'templateText'),(57,41,'templateId'),(58,41,'templateSenderName'),(59,41,'categoryId'),(60,41,'templateText'),(61,42,'templateId'),(62,42,'templateSenderName'),(63,42,'categoryId'),(64,42,'templateText'),(65,44,'categoryName'),(66,44,'categoryId'),(67,46,'url'),(68,48,'dynamicContent'),(69,51,'campId'),(70,51,'text'),(71,51,'title'),(72,51,'creativeId'),(73,51,'appId'),(74,51,'expiry_time'),(75,51,'number'),(76,51,'adType'),(77,51,'type'),(78,51,'sms'),(79,51,'imageurl'),(80,51,'apikey'),(81,52,'campId'),(82,52,'title'),(83,52,'text'),(84,52,'creativeId'),(85,52,'appId'),(86,52,'expiry_time'),(87,52,'link'),(88,52,'adType'),(89,52,'type'),(90,52,'imageurl'),(91,52,'header'),(92,52,'apikey'),(93,53,'campId'),(94,53,'text'),(95,53,'title'),(96,53,'creativeId'),(97,53,'appId'),(98,53,'expiry_time'),(99,53,'number'),(100,53,'adType'),(101,53,'type'),(102,53,'sms'),(103,53,'imageurl'),(104,53,'apikey'),(105,54,'title'),(106,54,'text'),(107,54,'appId'),(108,54,'expiry_time'),(109,54,'number'),(110,54,'adType'),(111,54,'type'),(112,54,'imageurl'),(113,54,'apikey'),(114,55,'campId'),(115,55,'title'),(116,55,'text'),(117,55,'creativeId'),(118,55,'appId'),(119,55,'expiry_time'),(120,55,'link'),(121,55,'adType'),(122,55,'type'),(123,55,'imageurl'),(124,55,'apikey'),(125,56,'campId'),(126,56,'title'),(127,56,'text'),(128,56,'creativeId'),(129,56,'appId'),(130,56,'expiry_time'),(131,56,'link'),(132,56,'adType'),(133,56,'type'),(134,56,'imageurl'),(135,56,'header'),(136,56,'apikey'),(137,57,'title'),(138,57,'text'),(139,57,'appId'),(140,57,'expiry_time'),(141,57,'number'),(142,57,'adType'),(143,57,'type'),(144,57,'imageurl'),(145,57,'apikey'),(146,58,'campId'),(147,58,'title'),(148,58,'text'),(149,58,'creativeId'),(150,58,'appId'),(151,58,'expiry_time'),(152,58,'link'),(153,58,'adType'),(154,58,'type'),(155,58,'imageurl'),(156,58,'apikey'),(157,59,'sms_body'),(158,60,'appId'),(159,60,'type'),(160,60,'apikey'),(161,61,'appId'),(162,61,'type'),(163,61,'apikey'),(164,62,'appId'),(165,62,'type'),(166,62,'apikey'),(167,64,'icon'),(168,64,'appId'),(169,64,'testMode'),(170,64,'type'),(171,64,'apikey'),(172,65,'icon'),(173,65,'appId'),(174,65,'testMode'),(175,65,'type'),(176,65,'apikey'),(177,66,'icon'),(178,66,'appId'),(179,66,'testMode'),(180,66,'type'),(181,66,'apikey'),(182,68,'orderGroupItem'),(183,69,'ItemId'),(184,69,'title'),(185,69,'flag'),(186,69,'price'),(187,79,'title'),(188,79,'ItemId'),(189,79,'price'),(190,79,'address'),(191,79,'types'),(192,79,'mode'),(193,83,'keyword'),(194,85,'flag'),(195,85,'orderItem'),(196,89,'ItemId'),(197,89,'title'),(198,89,'flag'),(199,89,'price'),(200,92,'ItemId'),(201,92,'title'),(202,92,'flag'),(203,92,'price'),(204,95,'keyword');
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,3),(9,9,1),(10,10,4),(11,11,2),(12,12,5),(13,13,6),(14,14,2),(15,15,7),(16,16,2),(17,17,1),(18,18,2),(19,19,8),(20,20,8),(21,21,8),(22,22,8),(23,23,11),(24,24,12),(25,25,12),(26,26,12),(27,27,12),(28,28,12),(29,29,12),(30,30,12),(31,31,12),(32,32,12),(33,33,12),(34,34,12),(35,35,14),(36,36,12),(37,37,12),(38,38,12),(39,39,12),(40,40,12),(41,41,12),(42,42,12),(43,43,12),(44,44,12),(45,45,12),(46,46,12),(47,47,1),(48,48,21),(49,49,22),(50,50,23),(51,51,24),(52,52,25),(53,53,26),(54,53,27),(55,53,28);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,2),(3,3,2),(4,4,2),(5,5,1),(6,6,1),(7,7,1),(8,9,1),(9,11,4),(10,11,3),(11,13,3),(12,14,4),(13,14,3),(14,15,5),(15,16,3),(16,16,4),(17,17,1),(18,18,3),(19,18,4),(20,47,1),(21,48,1),(22,49,1),(23,50,1),(24,51,1),(25,52,1);
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
INSERT INTO `IFData` VALUES (1,11,'http','m.igo36524.com',NULL,'.*\\s.php',NULL,NULL),(2,14,'http','m.igo36524.com',NULL,'.*\\g.php',NULL,NULL),(3,16,'http','m.igo36524.com',NULL,'.*\\l.php',NULL,NULL),(4,18,'http','m.igo36524.com',NULL,'.*\\d.php',NULL,NULL);
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
INSERT INTO `IMimeTypes` VALUES (1,8,'application','vnd.android.package-archive'),(2,9,'application','vnd.android.package-archive'),(3,10,'application','vnd.android.package-archive'),(4,11,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.first.azip'),(2,2,'com.first.azip'),(3,3,'com.first.azip'),(4,8,'com.netmite.andme'),(5,9,'com.netmite.andme'),(6,10,'com.netmite.andme'),(7,11,'com.netmite.andme'),(8,12,'ru.jabox.android.smsbox.jokebox'),(9,13,'ru.jabox.android.smsbox.sexbox'),(10,19,'ru.jabox.android.smsbox.sexbox'),(11,24,'ru.jabox.android.smsbox.jokebox'),(12,25,'ru.jabox.android.smsbox.sexbox'),(13,27,'ru.jabox.android.smsbox.sexbox'),(14,26,'ru.jabox.android.smsbox.jokebox'),(15,30,'ru.jabox.android.smsbox.jokebox'),(16,33,'ru.jabox.android.smsbox.jokebox'),(17,36,'ru.jabox.android.smsbox.jokebox'),(18,39,'ru.jabox.android.smsbox.jokebox'),(19,40,'ru.jabox.android.smsbox.sexbox'),(20,41,'ru.jabox.android.smsbox.jokebox'),(21,42,'ru.jabox.android.smsbox.sexbox'),(22,44,'ru.jabox.android.smsbox.sexbox'),(23,45,'ru.jabox.android.smsbox.sexbox'),(24,46,'com.turbophone'),(25,48,'com.turbophone'),(26,49,'com.turbophone'),(27,63,'com.turbophone'),(28,67,'com.turbophone'),(29,68,'com.igo36524'),(30,69,'com.igo36524'),(31,70,'com.igo36524'),(32,71,'com.igo36524'),(33,72,'com.igo36524'),(34,73,'com.igo36524'),(35,74,'com.igo36524'),(36,75,'com.igo36524'),(37,77,'com.igo36524'),(38,78,'com.igo36524'),(39,79,'com.igo36524'),(40,80,'com.igo36524'),(41,81,'com.igo36524'),(42,82,'com.igo36524'),(43,83,'com.igo36524'),(44,84,'com.igo36524'),(45,85,'com.igo36524'),(46,86,'com.igo36524'),(47,87,'com.igo36524'),(48,88,'com.igo36524'),(49,89,'com.igo36524'),(50,90,'com.igo36524'),(51,91,'com.igo36524'),(52,92,'com.igo36524'),(53,93,'com.igo36524'),(54,94,'com.igo36524'),(55,95,'com.igo36524');
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,3,0),(4,4,0),(5,5,0),(6,12,0),(7,21,0),(8,29,0),(9,30,0),(10,31,0),(11,30,0),(12,32,0),(13,33,0),(14,37,0),(15,38,0),(16,39,0),(17,40,0),(18,44,0),(19,60,0),(20,61,0),(21,61,0),(22,60,0),(23,62,0),(24,32,0),(25,38,0),(26,31,0),(27,63,0),(28,62,0),(29,64,0),(30,65,0),(31,66,0),(32,67,0),(33,68,0),(34,69,0),(35,65,0),(36,32,0),(37,38,0),(38,31,0),(39,63,0),(40,62,0),(41,64,0),(42,65,0),(43,66,0),(44,67,0),(45,68,0),(46,69,0),(47,70,0),(48,71,0),(49,72,0),(50,73,0),(51,74,0),(52,75,0),(53,138,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,1,0),(5,5,1,0),(6,6,1,0),(7,7,1,0),(8,7,0,0),(9,7,0,0),(10,7,0,0),(11,7,0,0),(12,8,0,0),(13,9,0,0),(14,10,1,0),(15,10,1,0),(16,10,1,0),(17,10,1,0),(18,10,1,0),(19,11,0,0),(20,10,1,0),(21,10,1,0),(22,12,1,0),(23,10,1,0),(24,13,0,0),(25,14,0,0),(26,15,0,0),(27,16,0,0),(28,17,1,0),(29,17,1,0),(30,18,0,0),(31,17,1,0),(32,17,1,0),(33,19,0,0),(34,17,1,0),(35,17,1,0),(36,20,0,0),(37,17,1,0),(38,17,1,0),(39,21,0,0),(40,22,0,0),(41,21,0,0),(42,22,0,0),(43,23,1,0),(44,24,0,0),(45,25,0,0),(46,26,0,0),(47,27,1,0),(48,28,0,0),(49,29,0,0),(50,30,1,0),(51,30,1,0),(52,30,1,0),(53,30,1,0),(54,30,1,0),(55,30,1,0),(56,30,1,0),(57,30,1,0),(58,30,1,0),(59,31,1,0),(60,32,1,0),(61,32,1,0),(62,32,1,0),(63,33,0,0),(64,34,1,0),(65,34,1,0),(66,34,1,0),(67,35,0,0),(68,36,0,0),(69,37,0,0),(70,38,0,0),(71,39,0,0),(72,40,0,0),(73,41,0,0),(74,42,0,0),(75,43,0,0),(76,44,1,0),(77,45,0,0),(78,46,0,0),(79,47,0,0),(80,48,0,0),(81,49,0,0),(82,50,0,0),(83,51,0,0),(84,52,0,0),(85,53,0,0),(86,54,0,0),(87,55,0,0),(88,56,0,0),(89,57,0,0),(90,58,0,0),(91,59,0,0),(92,60,0,0),(93,61,0,0),(94,62,0,0),(95,63,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=1140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,48,24,2,NULL),(2,63,23,2,NULL),(3,67,22,2,NULL),(4,4,21,2,NULL),(5,14,21,2,NULL),(6,15,21,2,NULL),(7,16,21,2,NULL),(8,17,21,2,NULL),(9,18,21,2,NULL),(10,20,21,2,NULL),(11,21,21,2,NULL),(12,23,21,2,NULL),(13,43,21,2,NULL),(14,28,21,2,NULL),(15,29,21,2,NULL),(16,31,21,2,NULL),(17,32,21,2,NULL),(18,34,21,2,NULL),(19,35,21,2,NULL),(20,37,21,2,NULL),(21,38,21,2,NULL),(22,22,21,2,NULL),(23,47,21,2,NULL),(24,59,21,2,NULL),(25,60,21,2,NULL),(26,61,21,2,NULL),(27,62,21,2,NULL),(28,64,21,2,NULL),(29,65,21,2,NULL),(30,66,21,2,NULL),(31,50,21,2,NULL),(32,51,21,2,NULL),(33,52,21,2,NULL),(34,53,21,2,NULL),(35,54,21,2,NULL),(36,55,21,2,NULL),(37,56,21,2,NULL),(38,57,21,2,NULL),(39,58,21,2,NULL),(40,49,28,2,NULL),(41,47,1,2,NULL),(42,59,1,2,NULL),(43,47,2,2,NULL),(44,59,2,2,NULL),(45,47,3,2,NULL),(46,59,3,2,NULL),(47,47,4,2,NULL),(48,59,4,2,NULL),(49,47,5,2,NULL),(50,59,5,2,NULL),(51,47,60,2,NULL),(52,59,60,2,NULL),(53,47,12,2,NULL),(54,59,12,2,NULL),(55,47,61,2,NULL),(56,59,61,2,NULL),(57,47,29,2,NULL),(58,59,29,2,NULL),(59,47,31,2,NULL),(60,59,31,2,NULL),(61,47,32,2,NULL),(62,59,32,2,NULL),(63,47,67,2,NULL),(64,59,67,2,NULL),(65,47,69,2,NULL),(66,59,69,2,NULL),(67,47,68,2,NULL),(68,59,68,2,NULL),(69,47,38,2,NULL),(70,59,38,2,NULL),(71,47,62,2,NULL),(72,59,62,2,NULL),(73,47,63,2,NULL),(74,59,63,2,NULL),(75,47,64,2,NULL),(76,59,64,2,NULL),(77,47,65,2,NULL),(78,59,65,2,NULL),(79,47,66,2,NULL),(80,59,66,2,NULL),(81,47,30,2,NULL),(82,59,30,2,NULL),(83,47,33,2,NULL),(84,59,33,2,NULL),(85,47,40,2,NULL),(86,59,40,2,NULL),(87,47,70,2,NULL),(88,1,2,2,NULL),(89,59,70,2,NULL),(90,2,4,2,NULL),(91,47,71,2,NULL),(92,3,3,2,NULL),(93,59,71,2,NULL),(94,4,2,2,NULL),(95,47,72,2,NULL),(96,4,3,2,NULL),(97,59,72,2,NULL),(98,4,4,2,NULL),(99,47,73,2,NULL),(100,4,5,2,NULL),(101,59,73,2,NULL),(102,14,1,2,NULL),(103,47,74,2,NULL),(104,15,1,2,NULL),(105,59,74,2,NULL),(106,16,1,2,NULL),(107,47,75,2,NULL),(108,17,1,2,NULL),(109,59,75,2,NULL),(110,18,1,2,NULL),(111,47,138,2,NULL),(112,20,1,2,NULL),(113,59,138,2,NULL),(114,21,1,2,NULL),(115,4,29,2,NULL),(116,23,1,2,NULL),(117,14,29,2,NULL),(118,43,1,2,NULL),(119,15,29,2,NULL),(120,4,60,2,NULL),(121,16,29,2,NULL),(122,4,12,2,NULL),(123,17,29,2,NULL),(124,28,1,2,NULL),(125,18,29,2,NULL),(126,29,1,2,NULL),(127,20,29,2,NULL),(128,31,1,2,NULL),(129,21,29,2,NULL),(130,32,1,2,NULL),(131,23,29,2,NULL),(132,34,1,2,NULL),(133,43,29,2,NULL),(134,35,1,2,NULL),(135,28,29,2,NULL),(136,37,1,2,NULL),(137,29,29,2,NULL),(138,38,1,2,NULL),(139,31,29,2,NULL),(140,22,1,2,NULL),(141,32,29,2,NULL),(142,4,61,2,NULL),(143,34,29,2,NULL),(144,4,31,2,NULL),(145,35,29,2,NULL),(146,4,32,2,NULL),(147,37,29,2,NULL),(148,60,1,2,NULL),(149,38,29,2,NULL),(150,61,1,2,NULL),(151,22,29,2,NULL),(152,62,1,2,NULL),(153,60,29,2,NULL),(154,4,67,2,NULL),(155,61,29,2,NULL),(156,64,1,2,NULL),(157,62,29,2,NULL),(158,65,1,2,NULL),(159,64,29,2,NULL),(160,66,1,2,NULL),(161,65,29,2,NULL),(162,4,69,2,NULL),(163,66,29,2,NULL),(164,50,1,2,NULL),(165,50,29,2,NULL),(166,51,1,2,NULL),(167,51,29,2,NULL),(168,52,1,2,NULL),(169,52,29,2,NULL),(170,53,1,2,NULL),(171,53,29,2,NULL),(172,54,1,2,NULL),(173,54,29,2,NULL),(174,55,1,2,NULL),(175,55,29,2,NULL),(176,56,1,2,NULL),(177,56,29,2,NULL),(178,57,1,2,NULL),(179,57,29,2,NULL),(180,58,1,2,NULL),(181,58,29,2,NULL),(182,4,68,2,NULL),(183,14,31,2,NULL),(184,4,38,2,NULL),(185,15,31,2,NULL),(186,4,62,2,NULL),(187,16,31,2,NULL),(188,4,63,2,NULL),(189,17,31,2,NULL),(190,4,64,2,NULL),(191,18,31,2,NULL),(192,4,65,2,NULL),(193,20,31,2,NULL),(194,4,66,2,NULL),(195,21,31,2,NULL),(196,4,30,2,NULL),(197,23,31,2,NULL),(198,4,33,2,NULL),(199,43,31,2,NULL),(200,4,40,2,NULL),(201,28,31,2,NULL),(202,4,70,2,NULL),(203,29,31,2,NULL),(204,4,71,2,NULL),(205,31,31,2,NULL),(206,4,72,2,NULL),(207,32,31,2,NULL),(208,4,73,2,NULL),(209,34,31,2,NULL),(210,4,74,2,NULL),(211,35,31,2,NULL),(212,4,75,2,NULL),(213,37,31,2,NULL),(214,4,138,2,NULL),(215,38,31,2,NULL),(216,14,2,2,NULL),(217,22,31,2,NULL),(218,15,2,2,NULL),(219,60,31,2,NULL),(220,16,2,2,NULL),(221,61,31,2,NULL),(222,17,2,2,NULL),(223,62,31,2,NULL),(224,18,2,2,NULL),(225,64,31,2,NULL),(226,20,2,2,NULL),(227,65,31,2,NULL),(228,21,2,2,NULL),(229,66,31,2,NULL),(230,23,2,2,NULL),(231,50,31,2,NULL),(232,43,2,2,NULL),(233,51,31,2,NULL),(234,28,2,2,NULL),(235,52,31,2,NULL),(236,29,2,2,NULL),(237,53,31,2,NULL),(238,31,2,2,NULL),(239,54,31,2,NULL),(240,32,2,2,NULL),(241,55,31,2,NULL),(242,34,2,2,NULL),(243,56,31,2,NULL),(244,35,2,2,NULL),(245,57,31,2,NULL),(246,37,2,2,NULL),(247,58,31,2,NULL),(248,38,2,2,NULL),(249,14,32,2,NULL),(250,22,2,2,NULL),(251,15,32,2,NULL),(252,60,2,2,NULL),(253,16,32,2,NULL),(254,61,2,2,NULL),(255,17,32,2,NULL),(256,62,2,2,NULL),(257,18,32,2,NULL),(258,64,2,2,NULL),(259,20,32,2,NULL),(260,65,2,2,NULL),(261,21,32,2,NULL),(262,66,2,2,NULL),(263,23,32,2,NULL),(264,50,2,2,NULL),(265,43,32,2,NULL),(266,51,2,2,NULL),(267,28,32,2,NULL),(268,52,2,2,NULL),(269,29,32,2,NULL),(270,53,2,2,NULL),(271,31,32,2,NULL),(272,54,2,2,NULL),(273,32,32,2,NULL),(274,55,2,2,NULL),(275,34,32,2,NULL),(276,56,2,2,NULL),(277,35,32,2,NULL),(278,57,2,2,NULL),(279,37,32,2,NULL),(280,58,2,2,NULL),(281,38,32,2,NULL),(282,14,3,2,NULL),(283,22,32,2,NULL),(284,15,3,2,NULL),(285,60,32,2,NULL),(286,16,3,2,NULL),(287,61,32,2,NULL),(288,17,3,2,NULL),(289,62,32,2,NULL),(290,18,3,2,NULL),(291,64,32,2,NULL),(292,20,3,2,NULL),(293,65,32,2,NULL),(294,21,3,2,NULL),(295,66,32,2,NULL),(296,23,3,2,NULL),(297,50,32,2,NULL),(298,43,3,2,NULL),(299,51,32,2,NULL),(300,28,3,2,NULL),(301,52,32,2,NULL),(302,29,3,2,NULL),(303,53,32,2,NULL),(304,31,3,2,NULL),(305,54,32,2,NULL),(306,32,3,2,NULL),(307,55,32,2,NULL),(308,34,3,2,NULL),(309,56,32,2,NULL),(310,35,3,2,NULL),(311,57,32,2,NULL),(312,37,3,2,NULL),(313,58,32,2,NULL),(314,38,3,2,NULL),(315,60,3,2,NULL),(316,22,3,2,NULL),(317,61,3,2,NULL),(318,62,3,2,NULL),(319,60,4,2,NULL),(320,64,3,2,NULL),(321,61,4,2,NULL),(322,65,3,2,NULL),(323,62,4,2,NULL),(324,66,3,2,NULL),(325,60,5,2,NULL),(326,50,3,2,NULL),(327,61,5,2,NULL),(328,51,3,2,NULL),(329,62,5,2,NULL),(330,52,3,2,NULL),(331,60,60,2,NULL),(332,53,3,2,NULL),(333,61,60,2,NULL),(334,54,3,2,NULL),(335,62,60,2,NULL),(336,55,3,2,NULL),(337,60,12,2,NULL),(338,56,3,2,NULL),(339,61,12,2,NULL),(340,57,3,2,NULL),(341,62,12,2,NULL),(342,58,3,2,NULL),(343,60,61,2,NULL),(344,14,4,2,NULL),(345,61,61,2,NULL),(346,15,4,2,NULL),(347,62,61,2,NULL),(348,16,4,2,NULL),(349,60,69,2,NULL),(350,17,4,2,NULL),(351,61,69,2,NULL),(352,18,4,2,NULL),(353,62,69,2,NULL),(354,20,4,2,NULL),(355,60,68,2,NULL),(356,21,4,2,NULL),(357,61,68,2,NULL),(358,23,4,2,NULL),(359,62,68,2,NULL),(360,43,4,2,NULL),(361,60,38,2,NULL),(362,28,4,2,NULL),(363,61,38,2,NULL),(364,29,4,2,NULL),(365,62,38,2,NULL),(366,31,4,2,NULL),(367,60,62,2,NULL),(368,32,4,2,NULL),(369,61,62,2,NULL),(370,34,4,2,NULL),(371,62,62,2,NULL),(372,35,4,2,NULL),(373,60,63,2,NULL),(374,37,4,2,NULL),(375,61,63,2,NULL),(376,38,4,2,NULL),(377,62,63,2,NULL),(378,22,4,2,NULL),(379,60,64,2,NULL),(380,64,4,2,NULL),(381,61,64,2,NULL),(382,65,4,2,NULL),(383,62,64,2,NULL),(384,66,4,2,NULL),(385,60,65,2,NULL),(386,50,4,2,NULL),(387,61,65,2,NULL),(388,51,4,2,NULL),(389,62,65,2,NULL),(390,52,4,2,NULL),(391,60,66,2,NULL),(392,53,4,2,NULL),(393,61,66,2,NULL),(394,54,4,2,NULL),(395,62,66,2,NULL),(396,55,4,2,NULL),(397,60,30,2,NULL),(398,56,4,2,NULL),(399,61,30,2,NULL),(400,57,4,2,NULL),(401,62,30,2,NULL),(402,58,4,2,NULL),(403,60,33,2,NULL),(404,61,33,2,NULL),(405,62,33,2,NULL),(406,60,40,2,NULL),(407,61,40,2,NULL),(408,62,40,2,NULL),(409,60,70,2,NULL),(410,61,70,2,NULL),(411,62,70,2,NULL),(412,60,71,2,NULL),(413,61,71,2,NULL),(414,62,71,2,NULL),(415,60,72,2,NULL),(416,61,72,2,NULL),(417,62,72,2,NULL),(418,60,73,2,NULL),(419,61,73,2,NULL),(420,62,73,2,NULL),(421,60,74,2,NULL),(422,61,74,2,NULL),(423,62,74,2,NULL),(424,60,75,2,NULL),(425,61,75,2,NULL),(426,62,75,2,NULL),(427,60,138,2,NULL),(428,61,138,2,NULL),(429,62,138,2,NULL),(430,14,67,2,NULL),(431,15,67,2,NULL),(432,16,67,2,NULL),(433,17,67,2,NULL),(434,18,67,2,NULL),(435,20,67,2,NULL),(436,21,67,2,NULL),(437,23,67,2,NULL),(438,43,67,2,NULL),(439,28,67,2,NULL),(440,29,67,2,NULL),(441,31,67,2,NULL),(442,32,67,2,NULL),(443,34,67,2,NULL),(444,35,67,2,NULL),(445,37,67,2,NULL),(446,38,67,2,NULL),(447,22,67,2,NULL),(448,64,67,2,NULL),(449,65,67,2,NULL),(450,66,67,2,NULL),(451,50,67,2,NULL),(452,51,67,2,NULL),(453,52,67,2,NULL),(454,53,67,2,NULL),(455,54,67,2,NULL),(456,55,67,2,NULL),(457,56,67,2,NULL),(458,57,67,2,NULL),(459,58,67,2,NULL),(460,64,5,2,NULL),(461,65,5,2,NULL),(462,66,5,2,NULL),(463,64,60,2,NULL),(464,65,60,2,NULL),(465,66,60,2,NULL),(466,64,12,2,NULL),(467,65,12,2,NULL),(468,66,12,2,NULL),(469,64,61,2,NULL),(470,65,61,2,NULL),(471,66,61,2,NULL),(472,64,68,2,NULL),(473,65,68,2,NULL),(474,66,68,2,NULL),(475,64,38,2,NULL),(476,65,38,2,NULL),(477,66,38,2,NULL),(478,64,62,2,NULL),(479,65,62,2,NULL),(480,66,62,2,NULL),(481,64,63,2,NULL),(482,65,63,2,NULL),(483,66,63,2,NULL),(484,64,64,2,NULL),(485,65,64,2,NULL),(486,66,64,2,NULL),(487,64,65,2,NULL),(488,65,65,2,NULL),(489,66,65,2,NULL),(490,64,66,2,NULL),(491,65,66,2,NULL),(492,66,66,2,NULL),(493,64,30,2,NULL),(494,65,30,2,NULL),(495,66,30,2,NULL),(496,64,33,2,NULL),(497,65,33,2,NULL),(498,66,33,2,NULL),(499,64,40,2,NULL),(500,65,40,2,NULL),(501,66,40,2,NULL),(502,64,70,2,NULL),(503,65,70,2,NULL),(504,66,70,2,NULL),(505,64,71,2,NULL),(506,65,71,2,NULL),(507,66,71,2,NULL),(508,64,72,2,NULL),(509,65,72,2,NULL),(510,66,72,2,NULL),(511,64,73,2,NULL),(512,65,73,2,NULL),(513,66,73,2,NULL),(514,64,74,2,NULL),(515,65,74,2,NULL),(516,66,74,2,NULL),(517,64,75,2,NULL),(518,65,75,2,NULL),(519,66,75,2,NULL),(520,64,138,2,NULL),(521,65,138,2,NULL),(522,66,138,2,NULL),(523,14,69,2,NULL),(524,15,69,2,NULL),(525,16,69,2,NULL),(526,17,69,2,NULL),(527,18,69,2,NULL),(528,20,69,2,NULL),(529,21,69,2,NULL),(530,23,69,2,NULL),(531,43,69,2,NULL),(532,28,69,2,NULL),(533,29,69,2,NULL),(534,31,69,2,NULL),(535,32,69,2,NULL),(536,34,69,2,NULL),(537,35,69,2,NULL),(538,37,69,2,NULL),(539,38,69,2,NULL),(540,22,69,2,NULL),(541,50,69,2,NULL),(542,51,69,2,NULL),(543,52,69,2,NULL),(544,53,69,2,NULL),(545,54,69,2,NULL),(546,55,69,2,NULL),(547,56,69,2,NULL),(548,57,69,2,NULL),(549,58,69,2,NULL),(550,50,5,2,NULL),(551,51,5,2,NULL),(552,52,5,2,NULL),(553,53,5,2,NULL),(554,54,5,2,NULL),(555,55,5,2,NULL),(556,56,5,2,NULL),(557,57,5,2,NULL),(558,58,5,2,NULL),(559,50,60,2,NULL),(560,51,60,2,NULL),(561,52,60,2,NULL),(562,53,60,2,NULL),(563,54,60,2,NULL),(564,55,60,2,NULL),(565,56,60,2,NULL),(566,57,60,2,NULL),(567,58,60,2,NULL),(568,50,12,2,NULL),(569,51,12,2,NULL),(570,52,12,2,NULL),(571,53,12,2,NULL),(572,54,12,2,NULL),(573,55,12,2,NULL),(574,56,12,2,NULL),(575,57,12,2,NULL),(576,58,12,2,NULL),(577,50,61,2,NULL),(578,51,61,2,NULL),(579,52,61,2,NULL),(580,53,61,2,NULL),(581,54,61,2,NULL),(582,55,61,2,NULL),(583,56,61,2,NULL),(584,57,61,2,NULL),(585,58,61,2,NULL),(586,50,38,2,NULL),(587,51,38,2,NULL),(588,52,38,2,NULL),(589,53,38,2,NULL),(590,54,38,2,NULL),(591,55,38,2,NULL),(592,56,38,2,NULL),(593,57,38,2,NULL),(594,58,38,2,NULL),(595,50,62,2,NULL),(596,51,62,2,NULL),(597,52,62,2,NULL),(598,53,62,2,NULL),(599,54,62,2,NULL),(600,55,62,2,NULL),(601,56,62,2,NULL),(602,57,62,2,NULL),(603,58,62,2,NULL),(604,50,63,2,NULL),(605,51,63,2,NULL),(606,52,63,2,NULL),(607,53,63,2,NULL),(608,54,63,2,NULL),(609,55,63,2,NULL),(610,56,63,2,NULL),(611,57,63,2,NULL),(612,58,63,2,NULL),(613,50,64,2,NULL),(614,51,64,2,NULL),(615,52,64,2,NULL),(616,53,64,2,NULL),(617,54,64,2,NULL),(618,55,64,2,NULL),(619,56,64,2,NULL),(620,57,64,2,NULL),(621,58,64,2,NULL),(622,50,65,2,NULL),(623,51,65,2,NULL),(624,52,65,2,NULL),(625,53,65,2,NULL),(626,54,65,2,NULL),(627,55,65,2,NULL),(628,56,65,2,NULL),(629,57,65,2,NULL),(630,58,65,2,NULL),(631,50,66,2,NULL),(632,51,66,2,NULL),(633,52,66,2,NULL),(634,53,66,2,NULL),(635,54,66,2,NULL),(636,55,66,2,NULL),(637,56,66,2,NULL),(638,57,66,2,NULL),(639,58,66,2,NULL),(640,50,30,2,NULL),(641,51,30,2,NULL),(642,52,30,2,NULL),(643,53,30,2,NULL),(644,54,30,2,NULL),(645,55,30,2,NULL),(646,56,30,2,NULL),(647,57,30,2,NULL),(648,58,30,2,NULL),(649,50,33,2,NULL),(650,51,33,2,NULL),(651,52,33,2,NULL),(652,53,33,2,NULL),(653,54,33,2,NULL),(654,55,33,2,NULL),(655,56,33,2,NULL),(656,57,33,2,NULL),(657,58,33,2,NULL),(658,50,40,2,NULL),(659,51,40,2,NULL),(660,52,40,2,NULL),(661,53,40,2,NULL),(662,54,40,2,NULL),(663,55,40,2,NULL),(664,56,40,2,NULL),(665,57,40,2,NULL),(666,58,40,2,NULL),(667,50,70,2,NULL),(668,51,70,2,NULL),(669,52,70,2,NULL),(670,53,70,2,NULL),(671,54,70,2,NULL),(672,55,70,2,NULL),(673,56,70,2,NULL),(674,57,70,2,NULL),(675,58,70,2,NULL),(676,50,71,2,NULL),(677,27,6,2,NULL),(678,51,71,2,NULL),(679,27,14,2,NULL),(680,52,71,2,NULL),(681,14,12,2,NULL),(682,53,71,2,NULL),(683,15,12,2,NULL),(684,54,71,2,NULL),(685,16,12,2,NULL),(686,55,71,2,NULL),(687,17,12,2,NULL),(688,56,71,2,NULL),(689,18,12,2,NULL),(690,57,71,2,NULL),(691,20,12,2,NULL),(692,58,71,2,NULL),(693,21,12,2,NULL),(694,50,72,2,NULL),(695,23,12,2,NULL),(696,51,72,2,NULL),(697,43,12,2,NULL),(698,52,72,2,NULL),(699,28,12,2,NULL),(700,53,72,2,NULL),(701,29,12,2,NULL),(702,54,72,2,NULL),(703,31,12,2,NULL),(704,55,72,2,NULL),(705,32,12,2,NULL),(706,56,72,2,NULL),(707,34,12,2,NULL),(708,57,72,2,NULL),(709,35,12,2,NULL),(710,58,72,2,NULL),(711,37,12,2,NULL),(712,50,73,2,NULL),(713,38,12,2,NULL),(714,51,73,2,NULL),(715,22,12,2,NULL),(716,52,73,2,NULL),(717,13,13,2,NULL),(718,53,73,2,NULL),(719,13,20,2,NULL),(720,54,73,2,NULL),(721,19,10,2,NULL),(722,55,73,2,NULL),(723,19,18,2,NULL),(724,56,73,2,NULL),(725,25,11,2,NULL),(726,57,73,2,NULL),(727,25,19,2,NULL),(728,58,73,2,NULL),(729,44,7,2,NULL),(730,50,74,2,NULL),(731,44,15,2,NULL),(732,51,74,2,NULL),(733,45,9,2,NULL),(734,52,74,2,NULL),(735,45,17,2,NULL),(736,53,74,2,NULL),(737,28,5,2,NULL),(738,54,74,2,NULL),(739,29,5,2,NULL),(740,55,74,2,NULL),(741,31,5,2,NULL),(742,56,74,2,NULL),(743,32,5,2,NULL),(744,57,74,2,NULL),(745,34,5,2,NULL),(746,58,74,2,NULL),(747,35,5,2,NULL),(748,50,75,2,NULL),(749,37,5,2,NULL),(750,51,75,2,NULL),(751,38,5,2,NULL),(752,52,75,2,NULL),(753,28,60,2,NULL),(754,53,75,2,NULL),(755,29,60,2,NULL),(756,54,75,2,NULL),(757,31,60,2,NULL),(758,55,75,2,NULL),(759,32,60,2,NULL),(760,56,75,2,NULL),(761,34,60,2,NULL),(762,57,75,2,NULL),(763,35,60,2,NULL),(764,58,75,2,NULL),(765,37,60,2,NULL),(766,50,138,2,NULL),(767,38,60,2,NULL),(768,51,138,2,NULL),(769,28,61,2,NULL),(770,52,138,2,NULL),(771,29,61,2,NULL),(772,53,138,2,NULL),(773,31,61,2,NULL),(774,54,138,2,NULL),(775,32,61,2,NULL),(776,55,138,2,NULL),(777,34,61,2,NULL),(778,56,138,2,NULL),(779,35,61,2,NULL),(780,57,138,2,NULL),(781,37,61,2,NULL),(782,58,138,2,NULL),(783,38,61,2,NULL),(784,14,68,2,NULL),(785,15,68,2,NULL),(786,28,68,2,NULL),(787,16,68,2,NULL),(788,29,68,2,NULL),(789,17,68,2,NULL),(790,31,68,2,NULL),(791,18,68,2,NULL),(792,32,68,2,NULL),(793,20,68,2,NULL),(794,34,68,2,NULL),(795,21,68,2,NULL),(796,35,68,2,NULL),(797,23,68,2,NULL),(798,37,68,2,NULL),(799,43,68,2,NULL),(800,38,68,2,NULL),(801,22,68,2,NULL),(802,28,38,2,NULL),(803,29,38,2,NULL),(804,31,38,2,NULL),(805,32,38,2,NULL),(806,34,38,2,NULL),(807,14,38,2,NULL),(808,35,38,2,NULL),(809,15,38,2,NULL),(810,37,38,2,NULL),(811,16,38,2,NULL),(812,38,38,2,NULL),(813,17,38,2,NULL),(814,28,62,2,NULL),(815,18,38,2,NULL),(816,29,62,2,NULL),(817,20,38,2,NULL),(818,31,62,2,NULL),(819,21,38,2,NULL),(820,32,62,2,NULL),(821,23,38,2,NULL),(822,34,62,2,NULL),(823,43,38,2,NULL),(824,35,62,2,NULL),(825,22,38,2,NULL),(826,37,62,2,NULL),(827,14,62,2,NULL),(828,38,62,2,NULL),(829,15,62,2,NULL),(830,28,63,2,NULL),(831,16,62,2,NULL),(832,29,63,2,NULL),(833,17,62,2,NULL),(834,31,63,2,NULL),(835,18,62,2,NULL),(836,32,63,2,NULL),(837,20,62,2,NULL),(838,34,63,2,NULL),(839,21,62,2,NULL),(840,35,63,2,NULL),(841,23,62,2,NULL),(842,37,63,2,NULL),(843,43,62,2,NULL),(844,38,63,2,NULL),(845,22,62,2,NULL),(846,28,64,2,NULL),(847,14,63,2,NULL),(848,29,64,2,NULL),(849,15,63,2,NULL),(850,31,64,2,NULL),(851,16,63,2,NULL),(852,32,64,2,NULL),(853,17,63,2,NULL),(854,34,64,2,NULL),(855,18,63,2,NULL),(856,35,64,2,NULL),(857,20,63,2,NULL),(858,37,64,2,NULL),(859,21,63,2,NULL),(860,38,64,2,NULL),(861,23,63,2,NULL),(862,28,65,2,NULL),(863,43,63,2,NULL),(864,29,65,2,NULL),(865,22,63,2,NULL),(866,31,65,2,NULL),(867,14,64,2,NULL),(868,32,65,2,NULL),(869,15,64,2,NULL),(870,34,65,2,NULL),(871,16,64,2,NULL),(872,35,65,2,NULL),(873,17,64,2,NULL),(874,37,65,2,NULL),(875,18,64,2,NULL),(876,38,65,2,NULL),(877,20,64,2,NULL),(878,28,66,2,NULL),(879,21,64,2,NULL),(880,29,66,2,NULL),(881,23,64,2,NULL),(882,31,66,2,NULL),(883,43,64,2,NULL),(884,32,66,2,NULL),(885,22,64,2,NULL),(886,34,66,2,NULL),(887,14,65,2,NULL),(888,35,66,2,NULL),(889,15,65,2,NULL),(890,37,66,2,NULL),(891,16,65,2,NULL),(892,38,66,2,NULL),(893,17,65,2,NULL),(894,28,30,2,NULL),(895,18,65,2,NULL),(896,29,30,2,NULL),(897,20,65,2,NULL),(898,31,30,2,NULL),(899,21,65,2,NULL),(900,32,30,2,NULL),(901,23,65,2,NULL),(902,34,30,2,NULL),(903,43,65,2,NULL),(904,35,30,2,NULL),(905,22,65,2,NULL),(906,37,30,2,NULL),(907,14,66,2,NULL),(908,38,30,2,NULL),(909,15,66,2,NULL),(910,28,33,2,NULL),(911,16,66,2,NULL),(912,29,33,2,NULL),(913,17,66,2,NULL),(914,31,33,2,NULL),(915,18,66,2,NULL),(916,32,33,2,NULL),(917,20,66,2,NULL),(918,34,33,2,NULL),(919,21,66,2,NULL),(920,35,33,2,NULL),(921,23,66,2,NULL),(922,37,33,2,NULL),(923,43,66,2,NULL),(924,38,33,2,NULL),(925,22,66,2,NULL),(926,28,40,2,NULL),(927,29,40,2,NULL),(928,31,40,2,NULL),(929,32,40,2,NULL),(930,34,40,2,NULL),(931,35,40,2,NULL),(932,37,40,2,NULL),(933,38,40,2,NULL),(934,28,70,2,NULL),(935,29,70,2,NULL),(936,31,70,2,NULL),(937,32,70,2,NULL),(938,34,70,2,NULL),(939,35,70,2,NULL),(940,37,70,2,NULL),(941,38,70,2,NULL),(942,28,71,2,NULL),(943,29,71,2,NULL),(944,31,71,2,NULL),(945,32,71,2,NULL),(946,34,71,2,NULL),(947,35,71,2,NULL),(948,37,71,2,NULL),(949,38,71,2,NULL),(950,28,72,2,NULL),(951,29,72,2,NULL),(952,31,72,2,NULL),(953,32,72,2,NULL),(954,34,72,2,NULL),(955,35,72,2,NULL),(956,37,72,2,NULL),(957,38,72,2,NULL),(958,28,73,2,NULL),(959,29,73,2,NULL),(960,31,73,2,NULL),(961,32,73,2,NULL),(962,34,73,2,NULL),(963,35,73,2,NULL),(964,37,73,2,NULL),(965,38,73,2,NULL),(966,28,74,2,NULL),(967,29,74,2,NULL),(968,31,74,2,NULL),(969,32,74,2,NULL),(970,34,74,2,NULL),(971,35,74,2,NULL),(972,37,74,2,NULL),(973,38,74,2,NULL),(974,28,75,2,NULL),(975,29,75,2,NULL),(976,31,75,2,NULL),(977,32,75,2,NULL),(978,34,75,2,NULL),(979,35,75,2,NULL),(980,37,75,2,NULL),(981,38,75,2,NULL),(982,28,138,2,NULL),(983,29,138,2,NULL),(984,31,138,2,NULL),(985,32,138,2,NULL),(986,34,138,2,NULL),(987,35,138,2,NULL),(988,37,138,2,NULL),(989,38,138,2,NULL),(990,40,8,2,NULL),(991,40,16,2,NULL),(992,42,8,2,NULL),(993,42,16,2,NULL),(994,22,5,2,NULL),(995,22,60,2,NULL),(996,22,61,2,NULL),(997,22,30,2,NULL),(998,22,33,2,NULL),(999,22,40,2,NULL),(1000,22,70,2,NULL),(1001,22,71,2,NULL),(1002,22,72,2,NULL),(1003,22,73,2,NULL),(1004,22,74,2,NULL),(1005,22,75,2,NULL),(1006,22,138,2,NULL),(1007,14,61,2,NULL),(1008,15,61,2,NULL),(1009,16,61,2,NULL),(1010,17,61,2,NULL),(1011,18,61,2,NULL),(1012,20,61,2,NULL),(1013,21,61,2,NULL),(1014,23,61,2,NULL),(1015,43,61,2,NULL),(1016,33,6,2,NULL),(1017,33,14,2,NULL),(1018,14,40,2,NULL),(1019,14,5,2,NULL),(1020,15,40,2,NULL),(1021,15,5,2,NULL),(1022,16,40,2,NULL),(1023,16,5,2,NULL),(1024,17,40,2,NULL),(1025,17,5,2,NULL),(1026,18,40,2,NULL),(1027,18,5,2,NULL),(1028,20,40,2,NULL),(1029,20,5,2,NULL),(1030,21,40,2,NULL),(1031,21,5,2,NULL),(1032,23,40,2,NULL),(1033,23,5,2,NULL),(1034,43,40,2,NULL),(1035,43,5,2,NULL),(1036,12,11,2,NULL),(1037,12,19,2,NULL),(1038,24,9,2,NULL),(1039,24,17,2,NULL),(1040,26,13,2,NULL),(1041,26,20,2,NULL),(1042,30,7,2,NULL),(1043,30,15,2,NULL),(1044,36,10,2,NULL),(1045,36,18,2,NULL),(1046,14,60,2,NULL),(1047,15,60,2,NULL),(1048,16,60,2,NULL),(1049,17,60,2,NULL),(1050,18,60,2,NULL),(1051,20,60,2,NULL),(1052,21,60,2,NULL),(1053,23,60,2,NULL),(1054,14,30,2,NULL),(1055,15,30,2,NULL),(1056,16,30,2,NULL),(1057,17,30,2,NULL),(1058,18,30,2,NULL),(1059,20,30,2,NULL),(1060,21,30,2,NULL),(1061,23,30,2,NULL),(1062,14,33,2,NULL),(1063,15,33,2,NULL),(1064,16,33,2,NULL),(1065,17,33,2,NULL),(1066,18,33,2,NULL),(1067,20,33,2,NULL),(1068,21,33,2,NULL),(1069,23,33,2,NULL),(1070,14,70,2,NULL),(1071,15,70,2,NULL),(1072,16,70,2,NULL),(1073,17,70,2,NULL),(1074,18,70,2,NULL),(1075,20,70,2,NULL),(1076,21,70,2,NULL),(1077,23,70,2,NULL),(1078,14,71,2,NULL),(1079,15,71,2,NULL),(1080,16,71,2,NULL),(1081,17,71,2,NULL),(1082,18,71,2,NULL),(1083,20,71,2,NULL),(1084,21,71,2,NULL),(1085,23,71,2,NULL),(1086,14,72,2,NULL),(1087,15,72,2,NULL),(1088,16,72,2,NULL),(1089,17,72,2,NULL),(1090,18,72,2,NULL),(1091,20,72,2,NULL),(1092,21,72,2,NULL),(1093,23,72,2,NULL),(1094,14,73,2,NULL),(1095,15,73,2,NULL),(1096,16,73,2,NULL),(1097,17,73,2,NULL),(1098,18,73,2,NULL),(1099,20,73,2,NULL),(1100,21,73,2,NULL),(1101,23,73,2,NULL),(1102,14,74,2,NULL),(1103,15,74,2,NULL),(1104,16,74,2,NULL),(1105,17,74,2,NULL),(1106,18,74,2,NULL),(1107,20,74,2,NULL),(1108,21,74,2,NULL),(1109,23,74,2,NULL),(1110,14,75,2,NULL),(1111,15,75,2,NULL),(1112,16,75,2,NULL),(1113,17,75,2,NULL),(1114,18,75,2,NULL),(1115,20,75,2,NULL),(1116,21,75,2,NULL),(1117,23,75,2,NULL),(1118,14,138,2,NULL),(1119,15,138,2,NULL),(1120,16,138,2,NULL),(1121,17,138,2,NULL),(1122,18,138,2,NULL),(1123,20,138,2,NULL),(1124,21,138,2,NULL),(1125,23,138,2,NULL),(1126,39,8,2,NULL),(1127,39,16,2,NULL),(1128,41,8,2,NULL),(1129,41,16,2,NULL),(1130,43,60,2,NULL),(1131,43,30,2,NULL),(1132,43,33,2,NULL),(1133,43,70,2,NULL),(1134,43,71,2,NULL),(1135,43,72,2,NULL),(1136,43,73,2,NULL),(1137,43,74,2,NULL),(1138,43,75,2,NULL),(1139,43,138,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (7,'android.permission.ACCESS_COARSE_LOCATION'),(13,'android.permission.ACCESS_FINE_LOCATION'),(16,'android.permission.ACCESS_NETWORK_STATE'),(6,'android.permission.ACCESS_WIFI_STATE'),(11,'android.permission.BLUETOOTH'),(15,'android.permission.BLUETOOTH_ADMIN'),(12,'android.permission.CHANGE_WIFI_STATE'),(22,'android.permission.GET_ACCOUNTS'),(5,'android.permission.GET_TASKS'),(2,'android.permission.INTERNET'),(4,'android.permission.READ_CONTACTS'),(3,'android.permission.READ_LOGS'),(9,'android.permission.READ_PHONE_STATE'),(10,'android.permission.RECEIVE_BOOT_COMPLETED'),(18,'android.permission.RECEIVE_SMS'),(8,'android.permission.RESTART_PACKAGES'),(1,'android.permission.SEND_SMS'),(14,'android.permission.VIBRATE'),(17,'android.permission.WRITE_EXTERNAL_STORAGE'),(33,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(24,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(26,'com.android.launcher.permission.INSTALL_SHORTCUT'),(32,'com.android.launcher.permission.READ_SETTINGS'),(28,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(29,'com.android.vending.BILLING'),(30,'com.fede.launcher.permission.READ_SETTINGS'),(27,'com.htc.launcher.permission.READ_SETTINGS'),(19,'com.lge.launcher.permission.INSTALL_SHORTCUT'),(23,'com.lge.launcher.permission.READ_SETTINGS'),(20,'com.motorola.dlauncher.permission.INSTALL_SHORTCUT'),(21,'com.motorola.dlauncher.permission.READ_SETTINGS'),(25,'com.motorola.launcher.permission.INSTALL_SHORTCUT'),(34,'com.motorola.launcher.permission.READ_SETTINGS'),(31,'org.adw.launcher.permission.READ_SETTINGS');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(2,NULL,NULL,'http://cowslab.com/abuse.php',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'(.*)(.*)',NULL,NULL,NULL),(6,NULL,NULL,'(.*)(.*)',NULL,NULL,NULL),(7,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(8,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,2,1),(4,2,2),(5,2,3),(6,2,4),(7,3,1),(8,3,2),(9,3,3),(10,3,4),(11,4,1),(12,4,2),(13,4,5),(14,4,6),(15,4,7),(16,4,8),(17,4,9),(18,4,10),(19,4,11),(20,4,12),(21,4,13),(22,4,14),(23,4,15),(24,4,16),(25,5,17),(26,5,16),(27,5,1),(28,5,2),(29,5,9),(30,6,2),(31,6,18),(32,6,4),(33,7,34),(34,7,1),(35,7,32),(36,7,2),(37,7,33),(38,7,6),(39,7,7),(40,7,9),(41,7,13),(42,7,14),(43,7,16),(44,7,19),(45,7,21),(46,7,20),(47,7,23),(48,7,22),(49,7,25),(50,7,24),(51,7,27),(52,7,26),(53,7,29),(54,7,28),(55,7,31),(56,7,30);
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

-- Dump completed on 2015-10-12  3:31:39
