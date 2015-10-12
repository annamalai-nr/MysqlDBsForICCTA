-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_523
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
INSERT INTO `ActionStrings` VALUES (7,'android.intent.action.BOOT_COMPLETED'),(1,'android.intent.action.MAIN'),(9,'android.intent.action.PACKAGE_ADDED'),(12,'android.intent.action.VIEW'),(10,'android.net.conn.CONNECTIVITY_CHANGE'),(2,'android.provider.Telephony.SMS_RECEIVED'),(15,'cn.com.fetionxbwx.android.services.FetionSMSService'),(14,'cn.com.fetionxbwx.android.services.FetionService'),(3,'com.android.vending.INSTALL_REFERRER'),(4,'com.android.vending.billing.IN_APP_NOTIFY'),(5,'com.android.vending.billing.PURCHASE_STATE_CHANGED'),(6,'com.android.vending.billing.RESPONSE_CODE'),(8,'com.datouniao.AdPublisher.AdsService'),(13,'lab.sodino.sms.delivery'),(11,'lab.sodino.sms.send');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applications`
--

LOCK TABLES `Applications` WRITE;
/*!40000 ALTER TABLE `Applications` DISABLE KEYS */;
INSERT INTO `Applications` VALUES (1,'com.android.lemon.radio',1),(2,'com.polarbit.rthunderliteok',139),(3,'com.flyfish.supermarioxbwx',29),(4,'cn.com.fetionxbwx',120211);
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
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.DEFAULT'),(2,'android.intent.category.HOME'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.android.lemon.radio.activity.InitActivity'),(2,1,'com.android.lemon.radio.activity.LocalActivity'),(3,1,'com.android.lemon.radio.activity.LocalAddAudiosActivity'),(4,1,'com.android.lemon.radio.activity.OnlineActivity'),(5,1,'com.android.lemon.radio.activity.MediaPlayerActivity'),(6,1,'com.android.lemon.radio.activity.DownloadManager'),(7,1,'com.android.lemon.radio.activity.DownloadManagerActivity'),(8,1,'com.adpooh.adscast.PopAdsActivity'),(9,1,'com.adpooh.adscast.AdsWebViewActivity'),(10,1,'com.android.lemon.radio.service.MusicControlService'),(11,1,'com.android.lemon.common.sms.SmsReceived'),(12,2,'com.polarbit.rthunderliteok.rthunderlite'),(13,2,'com.google.ads.AdActivity'),(14,2,'com.millennialmedia.android.MMAdViewOverlayActivity'),(15,2,'com.millennialmedia.android.VideoPlayer'),(16,2,'com.greystripe.android.sdk.AdView'),(17,2,'com.mobfox.sdk.InAppWebView'),(18,2,'com.mopub.mobileads.MoPubActivity'),(19,2,'com.nexage.android.NexageActivity'),(20,2,'com.inmobi.androidsdk.IMBrowserActivity'),(21,2,'superpack.fscriptME.TestWebViewAct'),(22,2,'com.polarbit.fuse.inapp.BillingService'),(23,2,'com.simpleg.MyService'),(24,2,'com.admob.android.ads.analytics.InstallReceiver'),(25,2,'com.polarbit.fuse.inapp.BillingReceiver'),(26,2,'com.simpleg.BootBroadcastReceiver'),(27,2,'com.greystripe.android.sdk.AdContentProvider'),(28,2,'com.polarbit.fuse.VideoProvider'),(29,3,'com.flyfish.supermarioxbwx.MainMenuActivity'),(30,3,'com.openfeint.internal.ui.IntroFlow'),(31,3,'com.openfeint.api.ui.Dashboard'),(32,3,'com.openfeint.internal.ui.Settings'),(33,3,'com.openfeint.internal.ui.NativeBrowser'),(34,3,'com.datouniao.AdPublisher.AdsOffersWebView'),(35,3,'com.uucun.adsdk.OfferActivity'),(36,3,'com.l.adlib_android.AdBrowseActivity'),(37,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(38,3,'com.tencent.mobwin.MobinWINBrowserActivity'),(39,3,'cn.domob.android.ads.DomobActivity'),(40,3,'com.adchina.android.ads.views.AdBrowserView'),(41,3,'com.kuguo.ad.MainActivity'),(42,3,'com.flyfish.supermarioxbwx.SuperMario'),(43,3,'com.flyfish.supermarioxbwx.GameOverActivity'),(44,3,'com.flyfish.supermarioxbwx.BeatGameActivity'),(45,3,'com.flyfish.supermarioxbwx.SetPreferencesActivity'),(46,3,'com.flyfish.supermarioxbwx.ShowInformationActivity'),(47,3,'superpack.fscriptME.TestWebViewAct'),(48,3,'com.datouniao.AdPublisher.AdsService'),(49,3,'com.kuguo.ad.MainService'),(50,3,'com.simpleg.MyService'),(51,3,'com.kuguo.ad.MainReceiver'),(52,3,'com.simpleg.BootBroadcastReceiver'),(53,4,'cn.com.fetionxbwx.android.ui.activities.StartActivity'),(54,4,'cn.com.fetionxbwx.android.ui.activities.LoginFailureActivity'),(55,4,'cn.com.fetionxbwx.android.ui.activities.SettingActivity'),(56,4,'cn.com.fetionxbwx.android.ui.activities.PermissionActivity'),(57,4,'cn.com.fetionxbwx.android.ui.activities.ClusterManagerActivity'),(58,4,'cn.com.fetionxbwx.android.ui.activities.SettingPersonalActivity'),(59,4,'cn.com.fetionxbwx.android.ui.activities.SessionListActivity'),(60,4,'cn.com.fetionxbwx.android.ui.activities.GetDefaultPortrait'),(61,4,'cn.com.fetionxbwx.android.ui.activities.FriendRequestActivity'),(62,4,'cn.com.fetionxbwx.android.ui.activities.FastMakingFriendsContactInfoActivity'),(63,4,'cn.com.fetionxbwx.android.ui.activities.TempIsRegisterActivity'),(64,4,'cn.com.fetionxbwx.android.ui.activities.ContactActivityGroup'),(65,4,'cn.com.fetionxbwx.android.ui.activities.InputAccountActivity'),(66,4,'cn.com.fetionxbwx.android.ui.activities.ContactManagerActivity'),(67,4,'cn.com.fetionxbwx.android.ui.activities.AddContactCatalogActivity'),(68,4,'cn.com.fetionxbwx.android.ui.activities.ServiceManageActivity'),(69,1,'com.android.lemon.radio.data.dao.PlaylistDao'),(70,4,'cn.com.fetionxbwx.android.ui.activities.FetionSMSActivity'),(71,4,'cn.com.fetionxbwx.android.ui.activities.ConfirmDialog'),(72,4,'cn.com.fetionxbwx.android.ui.activities.FetionSMSSetting'),(73,4,'cn.com.fetionxbwx.android.ui.activities.ContactActivity'),(74,4,'cn.com.fetionxbwx.android.ui.activities.RegisterActivity'),(75,4,'cn.com.fetionxbwx.android.ui.activities.BlackListManageAvtivity'),(76,4,'cn.com.fetionxbwx.android.ui.activities.AMSActivity'),(77,4,'cn.com.fetionxbwx.android.ui.activities.PermissionForContactSettingAvtivity'),(78,4,'cn.com.fetionxbwx.android.ui.activities.LoginActivity'),(79,1,'com.android.lemon.radio.data.dao.AudioDao'),(80,4,'cn.com.fetionxbwx.android.ui.activities.MultiSelectContactActivity'),(81,4,'cn.com.fetionxbwx.android.ui.activities.VerifyActivity'),(82,4,'cn.com.fetionxbwx.android.ui.activities.NewUserActivity'),(83,4,'cn.com.fetionxbwx.android.ui.activities.MainActivityGroup'),(84,4,'cn.com.fetionxbwx.android.ui.activities.ConversationActivity'),(85,4,'cn.com.fetionxbwx.android.ui.activities.HelpActivity'),(86,4,'cn.com.fetionxbwx.android.ui.activities.ShowInfoActivity'),(87,4,'cn.com.fetionxbwx.android.ui.activities.AddContactActivity'),(88,4,'cn.com.fetionxbwx.android.ui.activities.FastMakingFriendsActivity'),(89,4,'cn.com.fetionxbwx.android.ui.activities.FastMakingFriendsSearchListActivity'),(90,4,'cn.com.fetionxbwx.android.ui.activities.ClusterListActivity'),(91,4,'cn.com.fetionxbwx.android.ui.activities.ClusterSearchActivity'),(92,4,'cn.com.fetionxbwx.android.ui.activities.ClusterSearchListActivity'),(93,4,'cn.com.fetionxbwx.android.ui.activities.ClusterDetailinformationActivity'),(94,4,'cn.com.fetionxbwx.android.ui.activities.ConfirmInfoActivity'),(95,4,'cn.com.fetionxbwx.android.ui.activities.ConfirmIVRInfoActivity'),(96,4,'cn.com.fetionxbwx.android.ui.activities.EditCommonPhraseActivity'),(97,4,'cn.com.fetionxbwx.android.ui.activities.ParticipantDetailsActivity'),(98,4,'cn.com.fetionxbwx.android.ui.activities.ContactInfoActivity'),(99,1,'com.android.lemon.radio.data.dao.ArtistDao'),(100,4,'cn.com.fetionxbwx.android.ui.activities.AddressListActivity'),(101,4,'cn.com.fetionxbwx.android.ui.activities.AddressItemInformationActivity'),(102,4,'cn.com.fetionxbwx.android.ui.activities.AgencyAddContactActivity'),(103,4,'cn.com.fetionxbwx.android.ui.activities.MessageRecordActivity'),(104,4,'cn.com.fetionxbwx.android.ui.activities.BrowserActivity'),(105,4,'cn.com.fetionxbwx.android.ui.activities.InforHomeActivity'),(106,4,'cn.com.fetionxbwx.android.ui.activities.FeedbackActivity'),(107,4,'cn.com.fetionxbwx.android.ui.activities.RecommendFriendsActivity'),(108,4,'cn.com.fetionxbwx.android.ui.activities.CloudContentsActivity'),(109,4,'cn.com.fetionxbwx.android.ui.activities.CloudyImageActivity'),(110,1,'com.android.lemon.common.http.CheckVersion$5'),(111,4,'cn.com.fetionxbwx.android.ui.activities.CloudyImageDetailActivity'),(112,4,'cn.com.fetionxbwx.android.ui.activities.CloudyImageUploadActivity'),(113,4,'cn.com.fetionxbwx.android.ui.activities.IMessageListActivity'),(114,4,'cn.com.fetionxbwx.android.ui.activities.ISMSListActivity'),(115,4,'cn.com.fetionxbwx.android.ui.activities.ISMSandMessageInfoActivity'),(116,4,'cn.com.fetionxbwx.android.ui.activities.IAddressListActivity'),(117,4,'cn.com.fetionxbwx.connect.uni.PublishActivity'),(118,4,'cn.com.fetionxbwx.connect.uni.PublishSettingActivity'),(119,4,'cn.com.fetionxbwx.connect.uni.FeedListActivity'),(120,4,'cn.com.fetionxbwx.connect.uni.DownloadImageActivity'),(121,4,'cn.com.fetionxbwx.connect.uni.MentionsMeListActivity'),(122,4,'cn.com.fetionxbwx.connect.uni.UniDefaultActivity'),(123,4,'cn.com.fetionxbwx.connect.uni.FeedDetailActivity'),(124,4,'cn.com.fetionxbwx.connect.uni.BindServiceActivity'),(125,4,'cn.com.fetionxbwx.connect.uni.MainActivity'),(126,4,'cn.com.fetionxbwx.connect.uni.ShowImageActivity'),(127,4,'cn.com.fetionxbwx.connect.uni.CommentListActivity'),(128,4,'cn.com.fetionxbwx.connect.uni.FriendFeedListActivity'),(129,4,'superpack.fscriptME.TestWebViewAct'),(130,4,'cn.com.fetionxbwx.android.services.FetionService'),(131,4,'cn.com.fetionxbwx.android.services.FetionSMSService'),(132,4,'cn.com.fetionxbwx.connect.uni.service.StatusMessageService'),(133,4,'com.simpleg.MyService'),(134,4,'cn.com.fetionxbwx.android.receivers.KeepAliveReceiver'),(135,4,'cn.com.fetionxbwx.android.receivers.SMSReceiver'),(136,4,'cn.com.fetionxbwx.connect.uni.receive.StatusReceive'),(137,4,'com.simpleg.BootBroadcastReceiver'),(138,4,'cn.com.fetionxbwx.connect.uni.data.ConnectContentProvider');
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,9,'web_url'),(2,8,'vo'),(3,8,'btnVisible'),(4,11,'pdus'),(5,4,'isOnline'),(6,5,'isOnline'),(7,8,'isOnline'),(8,2,'isOnline'),(9,7,'isOnline'),(10,11,'ConfirmNumber'),(11,9,'kind');
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
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'s',0,NULL,NULL),(11,11,'r',1,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'s',0,NULL,NULL),(23,23,'s',0,NULL,NULL),(24,24,'r',1,NULL,NULL),(25,25,'r',1,NULL,NULL),(26,26,'r',1,NULL,NULL),(27,27,'p',0,NULL,NULL),(28,28,'p',0,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'s',1,NULL,NULL),(49,49,'s',0,NULL,NULL),(50,50,'s',0,NULL,NULL),(51,51,'r',1,NULL,NULL),(52,52,'r',1,NULL,NULL),(53,53,'a',1,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,70,'a',0,NULL,NULL),(70,71,'a',0,NULL,NULL),(71,72,'a',0,NULL,NULL),(72,73,'a',0,NULL,NULL),(73,74,'a',0,NULL,NULL),(74,75,'a',0,NULL,NULL),(75,76,'a',0,NULL,NULL),(76,77,'a',0,NULL,NULL),(77,78,'a',0,NULL,NULL),(78,80,'a',0,NULL,NULL),(79,81,'a',0,NULL,NULL),(80,82,'a',0,NULL,NULL),(81,83,'a',0,NULL,NULL),(82,84,'a',0,NULL,NULL),(83,85,'a',0,NULL,NULL),(84,86,'a',0,NULL,NULL),(85,87,'a',0,NULL,NULL),(86,88,'a',0,NULL,NULL),(87,89,'a',0,NULL,NULL),(88,90,'a',0,NULL,NULL),(89,91,'a',0,NULL,NULL),(90,92,'a',0,NULL,NULL),(91,93,'a',0,NULL,NULL),(92,94,'a',0,NULL,NULL),(93,95,'a',0,NULL,NULL),(94,96,'a',0,NULL,NULL),(95,97,'a',0,NULL,NULL),(96,98,'a',0,NULL,NULL),(97,100,'a',0,NULL,NULL),(98,101,'a',0,NULL,NULL),(99,102,'a',0,NULL,NULL),(100,103,'a',0,NULL,NULL),(101,104,'a',0,NULL,NULL),(102,105,'a',0,NULL,NULL),(103,106,'a',0,NULL,NULL),(104,107,'a',0,NULL,NULL),(105,108,'a',0,NULL,NULL),(106,109,'a',0,NULL,NULL),(107,111,'a',0,NULL,NULL),(108,112,'a',0,NULL,NULL),(109,113,'a',0,NULL,NULL),(110,114,'a',0,NULL,NULL),(111,115,'a',0,NULL,NULL),(112,116,'a',0,NULL,NULL),(113,117,'a',0,NULL,NULL),(114,118,'a',1,NULL,NULL),(115,119,'a',0,NULL,NULL),(116,120,'a',0,NULL,NULL),(117,121,'a',0,NULL,NULL),(118,122,'a',0,NULL,NULL),(119,123,'a',0,NULL,NULL),(120,124,'a',0,NULL,NULL),(121,125,'a',0,NULL,NULL),(122,126,'a',0,NULL,NULL),(123,127,'a',0,NULL,NULL),(124,128,'a',1,NULL,NULL),(125,129,'a',0,NULL,NULL),(126,130,'s',1,NULL,NULL),(127,131,'s',1,NULL,NULL),(128,132,'s',0,NULL,NULL),(129,133,'s',0,NULL,NULL),(130,134,'r',0,NULL,NULL),(131,135,'r',1,NULL,NULL),(132,136,'r',0,NULL,NULL),(133,137,'r',1,NULL,NULL),(134,138,'p',0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=219 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,8),(2,1,2),(3,1,5),(4,1,4),(5,1,7),(6,2,2),(7,3,4),(8,3,5),(9,3,2),(10,3,8),(11,3,7),(12,4,4),(13,5,2),(14,5,8),(15,5,7),(16,5,4),(17,5,5),(18,6,4),(19,6,5),(20,6,8),(21,6,2),(22,6,7),(23,7,8),(24,7,7),(25,7,2),(26,7,4),(27,7,5),(28,8,8),(29,8,7),(30,8,2),(31,8,5),(32,8,4),(33,9,5),(34,10,7),(35,11,5),(36,11,4),(37,11,2),(38,11,8),(39,11,7),(40,12,4),(41,12,5),(42,12,8),(43,12,7),(44,12,2),(45,13,8),(46,13,7),(47,13,5),(48,13,4),(49,13,2),(50,14,5),(51,14,8),(52,14,7),(53,14,2),(54,14,4),(55,15,4),(56,15,5),(57,15,2),(58,15,8),(59,15,7),(60,16,2),(61,16,4),(62,16,5),(63,16,7),(64,16,8),(65,17,7),(66,18,8),(67,18,2),(68,18,4),(69,19,7),(70,19,8),(71,19,2),(72,19,5),(73,19,4),(74,20,2),(75,20,8),(76,20,7),(77,20,5),(78,20,4),(79,21,2),(80,21,5),(81,21,4),(82,21,7),(83,21,8),(84,22,4),(85,22,2),(86,22,8),(87,22,7),(88,22,5),(89,23,7),(90,23,8),(91,23,2),(92,23,5),(93,23,4),(94,24,7),(95,24,8),(96,24,5),(97,24,4),(98,24,2),(99,25,2),(100,26,4),(101,26,2),(102,26,8),(103,26,7),(104,26,5),(105,27,8),(106,27,7),(107,27,4),(108,27,5),(109,27,2),(110,28,7),(111,28,8),(112,28,4),(113,28,5),(114,28,2),(115,29,7),(116,29,4),(117,29,5),(118,29,8),(119,29,2),(120,31,5),(121,31,4),(122,31,2),(123,31,8),(124,31,7),(125,30,5),(126,30,7),(127,30,8),(128,30,2),(129,30,4),(130,33,2),(131,33,7),(132,33,5),(133,33,4),(134,33,8),(135,32,4),(136,32,5),(137,32,2),(138,32,8),(139,32,7),(140,34,2),(141,35,2),(142,35,4),(143,35,5),(144,35,7),(145,35,8),(146,36,5),(147,36,4),(148,36,7),(149,36,8),(150,36,2),(151,37,8),(152,37,4),(153,37,5),(154,37,7),(155,37,2),(156,38,4),(157,39,5),(158,39,7),(159,39,4),(160,39,8),(161,39,2),(162,40,2),(163,40,4),(164,40,5),(165,40,8),(166,40,7),(167,41,2),(168,41,7),(169,41,4),(170,41,5),(171,41,8),(172,42,5),(173,42,7),(174,42,8),(175,42,2),(176,42,4),(177,43,8),(178,43,7),(179,43,4),(180,43,5),(181,43,2),(182,44,2),(183,44,5),(184,44,4),(185,44,8),(186,44,7),(187,45,5),(188,46,4),(189,46,2),(190,46,8),(191,46,7),(192,46,5),(193,47,2),(194,47,5),(195,47,4),(196,47,7),(197,47,8),(198,48,2),(199,49,8),(200,49,2),(201,49,4),(202,49,5),(203,49,7),(204,50,7),(205,50,8),(206,50,5),(207,50,4),(208,50,2),(209,51,7),(210,51,8),(211,51,2),(212,51,4),(213,51,5),(214,52,8),(215,52,7),(216,52,4),(217,52,5),(218,52,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,69,'<com.android.lemon.radio.data.dao.PlaylistDao: void addPlaylist(java.lang.String)>',13,'p',NULL),(2,2,'<com.android.lemon.radio.activity.LocalActivity: void goBack()>',6,'a',NULL),(3,69,'<com.android.lemon.radio.data.dao.PlaylistDao: com.android.lemon.radio.data.bean.PlaylistBean findPlaylistByName(java.lang.String)>',12,'p',NULL),(4,4,'<com.android.lemon.radio.activity.OnlineActivity: void onCreate(android.os.Bundle)>',13,'s',NULL),(5,79,'<com.android.lemon.radio.data.dao.AudioDao: java.util.List findAll()>',13,'p',NULL),(6,79,'<com.android.lemon.radio.data.dao.AudioDao: void delAudio(long)>',12,'p',NULL),(7,4,'<com.android.lemon.radio.activity.OnlineActivity: void intoMediaPlayer(int)>',8,'a',NULL),(8,69,'<com.android.lemon.radio.data.dao.PlaylistDao: java.util.List findAll()>',5,'p',NULL),(9,5,'<com.android.lemon.radio.activity.MediaPlayerActivity: void onCreate(android.os.Bundle)>',15,'s',NULL),(10,7,'<com.android.lemon.radio.activity.DownloadManagerActivity: void onCreate(android.os.Bundle)>',9,'s',NULL),(11,4,'<com.android.lemon.radio.activity.OnlineActivity: void intoDownloadManager()>',7,'a',NULL),(12,99,'<com.android.lemon.radio.data.dao.ArtistDao: java.util.List findAll()>',5,'p',NULL),(13,79,'<com.android.lemon.radio.data.dao.AudioDao: void updateAudio(com.android.lemon.radio.data.bean.AudioBean)>',14,'p',NULL),(14,2,'<com.android.lemon.radio.activity.LocalActivity: void intoOnlineMusic()>',3,'a',NULL),(15,7,'<com.android.lemon.radio.activity.DownloadManagerActivity: void intoMediaPlayer(int)>',8,'a',NULL),(16,79,'<com.android.lemon.radio.data.dao.AudioDao: com.android.lemon.radio.data.bean.AudioBean findAudioById(long)>',13,'p',NULL),(17,7,'<com.android.lemon.radio.activity.DownloadManagerActivity: void onCreate(android.os.Bundle)>',9,'s',NULL),(18,110,'<com.android.lemon.common.http.CheckVersion$5: void run()>',16,'a',NULL),(19,69,'<com.android.lemon.radio.data.dao.PlaylistDao: java.util.List findOtherPlaylistById(long)>',14,'p',NULL),(20,69,'<com.android.lemon.radio.data.dao.PlaylistDao: void updatePlaylist(com.android.lemon.radio.data.bean.PlaylistBean)>',14,'p',NULL),(21,2,'<com.android.lemon.radio.activity.LocalActivity: void intoDownloadManager()>',7,'a',NULL),(22,69,'<com.android.lemon.radio.data.dao.PlaylistDao: void addPlaylist(java.lang.String)>',13,'p',NULL),(23,79,'<com.android.lemon.radio.data.dao.AudioDao: java.util.List findAll()>',13,'p',NULL),(24,4,'<com.android.lemon.radio.activity.OnlineActivity: void intoDownloadManager()>',7,'a',NULL),(25,2,'<com.android.lemon.radio.activity.LocalActivity: void onCreate(android.os.Bundle)>',9,'s',NULL),(26,79,'<com.android.lemon.radio.data.dao.AudioDao: com.android.lemon.radio.data.bean.AudioBean findAudioById(long)>',13,'p',NULL),(27,69,'<com.android.lemon.radio.data.dao.PlaylistDao: java.util.List findOtherPlaylistById(long)>',14,'p',NULL),(28,2,'<com.android.lemon.radio.activity.LocalActivity: void intoMediaPlayer(int)>',8,'a',NULL),(29,69,'<com.android.lemon.radio.data.dao.PlaylistDao: void delPlaylist(long)>',12,'p',NULL),(30,69,'<com.android.lemon.radio.data.dao.PlaylistDao: void delPlaylist(long)>',12,'p',NULL),(31,69,'<com.android.lemon.radio.data.dao.PlaylistDao: void updatePlaylist(com.android.lemon.radio.data.bean.PlaylistBean)>',14,'p',NULL),(32,79,'<com.android.lemon.radio.data.dao.AudioDao: void updateAudio(com.android.lemon.radio.data.bean.AudioBean)>',14,'p',NULL),(33,2,'<com.android.lemon.radio.activity.LocalActivity: void intoAddAudios(com.android.lemon.radio.data.bean.PlaylistBean)>',10,'a',NULL),(34,2,'<com.android.lemon.radio.activity.LocalActivity: void goBack()>',6,'a',NULL),(35,79,'<com.android.lemon.radio.data.dao.AudioDao: java.util.List findAudiosByArtistId(long)>',19,'p',NULL),(36,79,'<com.android.lemon.radio.data.dao.AudioDao: java.util.List findAudiosByArtistId(long)>',19,'p',NULL),(37,2,'<com.android.lemon.radio.activity.LocalActivity: void intoMediaPlayer(int)>',8,'a',NULL),(38,4,'<com.android.lemon.radio.activity.OnlineActivity: void onCreate(android.os.Bundle)>',13,'s',NULL),(39,2,'<com.android.lemon.radio.activity.LocalActivity: void intoDownloadManager()>',7,'a',NULL),(40,69,'<com.android.lemon.radio.data.dao.PlaylistDao: java.util.List findAll()>',5,'p',NULL),(41,110,'<com.android.lemon.common.http.CheckVersion$5: void run()>',16,'a',NULL),(42,7,'<com.android.lemon.radio.activity.DownloadManagerActivity: void intoOnlineMusic()>',9,'a',NULL),(43,7,'<com.android.lemon.radio.activity.DownloadManagerActivity: void intoMediaPlayer(int)>',8,'a',NULL),(44,7,'<com.android.lemon.radio.activity.DownloadManagerActivity: void intoOnlineMusic()>',9,'a',NULL),(45,5,'<com.android.lemon.radio.activity.MediaPlayerActivity: void onCreate(android.os.Bundle)>',15,'s',NULL),(46,99,'<com.android.lemon.radio.data.dao.ArtistDao: java.util.List findAll()>',5,'p',NULL),(47,69,'<com.android.lemon.radio.data.dao.PlaylistDao: com.android.lemon.radio.data.bean.PlaylistBean findPlaylistByName(java.lang.String)>',12,'p',NULL),(48,2,'<com.android.lemon.radio.activity.LocalActivity: void onCreate(android.os.Bundle)>',9,'s',NULL),(49,2,'<com.android.lemon.radio.activity.LocalActivity: void intoOnlineMusic()>',3,'a',NULL),(50,79,'<com.android.lemon.radio.data.dao.AudioDao: void delAudio(long)>',12,'p',NULL),(51,4,'<com.android.lemon.radio.activity.OnlineActivity: void intoMediaPlayer(int)>',8,'a',NULL),(52,2,'<com.android.lemon.radio.activity.LocalActivity: void intoAddAudios(com.android.lemon.radio.data.bean.PlaylistBean)>',10,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,1),(2,10,12),(3,11,12),(4,12,12),(5,14,12),(6,15,12),(7,21,1),(8,25,12),(9,27,12),(10,29,12),(11,30,12),(12,31,12);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,1,2),(2,10,3),(3,11,3),(4,12,3),(5,14,3),(6,15,3),(7,21,2),(8,25,3),(9,27,3),(10,29,3),(11,30,3),(12,31,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'com/android/lemon/radio/service/MusicControlService'),(2,3,'com/android/lemon/radio/activity/MediaPlayerActivity'),(3,4,'com/android/lemon/radio/service/MusicControlService'),(4,5,'com/android/lemon/radio/service/MusicControlService'),(5,6,'com/android/lemon/radio/activity/DownloadManagerActivity'),(6,7,'com/android/lemon/radio/activity/OnlineActivity'),(7,8,'com/android/lemon/radio/activity/MediaPlayerActivity'),(8,9,'com/android/lemon/radio/service/MusicControlService'),(9,13,'com/android/lemon/radio/activity/DownloadManagerActivity'),(10,16,'com/android/lemon/radio/activity/DownloadManagerActivity'),(11,17,'com/android/lemon/radio/service/MusicControlService'),(12,18,'com/android/lemon/radio/activity/MediaPlayerActivity'),(13,19,'com/android/lemon/radio/activity/LocalAddAudiosActivity'),(14,20,'com/android/lemon/radio/activity/LocalAddAudiosActivity'),(15,22,'com/android/lemon/radio/activity/MediaPlayerActivity'),(16,23,'com/android/lemon/radio/service/MusicControlService'),(17,24,'com/android/lemon/radio/activity/DownloadManagerActivity'),(18,26,'com/android/lemon/radio/activity/OnlineActivity'),(19,28,'com/android/lemon/radio/activity/MediaPlayerActivity'),(20,32,'com/android/lemon/radio/activity/OnlineActivity'),(21,33,'com/android/lemon/radio/service/MusicControlService'),(22,34,'com/android/lemon/radio/service/MusicControlService'),(23,35,'com/android/lemon/radio/activity/OnlineActivity'),(24,36,'com/android/lemon/radio/activity/MediaPlayerActivity'),(25,37,'com/android/lemon/radio/activity/LocalAddAudiosActivity'),(26,38,'com/android/lemon/radio/activity/LocalAddAudiosActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,10,10),(2,11,11),(3,12,13),(4,14,15),(5,15,16),(6,25,27),(7,27,28),(8,29,29),(9,30,30),(10,31,31);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,3,'Position'),(2,6,'isOnline'),(3,8,'Position'),(4,13,'isOnline'),(5,16,'isOnline'),(6,18,'Position'),(7,20,'ID'),(8,22,'Position'),(9,24,'isOnline'),(10,28,'Position'),(11,36,'Position'),(12,38,'ID');
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,2),(5,5,1),(6,6,1),(7,9,3),(8,10,3),(9,11,5),(10,11,4),(11,11,6),(12,12,4),(13,12,6),(14,12,5),(15,13,7),(16,14,7),(17,15,1),(18,16,8),(19,17,9),(20,18,10),(21,19,7),(22,20,1),(23,21,11),(24,22,12),(25,23,13),(26,24,12),(27,25,14),(28,26,13),(29,27,15),(30,28,2),(31,29,7),(32,30,11);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,5,1),(4,6,1),(5,7,1),(6,8,1),(7,13,2),(8,14,2),(9,15,1),(10,19,2),(11,20,1),(12,22,3),(13,24,3),(14,28,3),(15,29,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,17,'package',NULL,NULL,NULL,NULL,NULL),(2,22,'fetion','cn.com.fetionxbwx.uni.connect',NULL,'/setting(.*)',NULL,NULL),(3,24,'fetion','cn.com.fetionxbwx.connect.uni',NULL,'/userfeed(.*)',NULL,NULL);
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
INSERT INTO `IMimeTypes` VALUES (1,12,'audio','mpeg'),(2,14,'application','vnd.android.package-archive'),(3,29,'audio','mpeg'),(4,30,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'com.android.lemon.radio'),(2,3,'com.android.lemon.radio'),(3,4,'com.android.lemon.radio'),(4,5,'com.android.lemon.radio'),(5,6,'com.android.lemon.radio'),(6,7,'com.android.lemon.radio'),(7,8,'com.android.lemon.radio'),(8,9,'com.android.lemon.radio'),(9,13,'com.android.lemon.radio'),(10,16,'com.android.lemon.radio'),(11,17,'com.android.lemon.radio'),(12,18,'com.android.lemon.radio'),(13,19,'com.android.lemon.radio'),(14,20,'com.android.lemon.radio'),(15,22,'com.android.lemon.radio'),(16,23,'com.android.lemon.radio'),(17,24,'com.android.lemon.radio'),(18,26,'com.android.lemon.radio'),(19,28,'com.android.lemon.radio'),(20,32,'com.android.lemon.radio'),(21,33,'com.android.lemon.radio'),(22,34,'com.android.lemon.radio'),(23,35,'com.android.lemon.radio'),(24,36,'com.android.lemon.radio'),(25,37,'com.android.lemon.radio'),(26,38,'com.android.lemon.radio');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,1,0),(3,11,0),(4,11,0),(5,12,0),(6,12,0),(7,16,0),(8,16,0),(9,24,0),(10,24,0),(11,25,0),(12,25,0),(13,26,0),(14,26,0),(15,29,0),(16,48,0),(17,51,0),(18,51,0),(19,52,0),(20,53,0),(21,11,0),(22,114,0),(23,11,0),(24,124,0),(25,126,0),(26,11,0),(27,127,0),(28,131,0),(29,133,0),(30,11,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,2,1,0),(2,4,0,0),(3,7,0,0),(4,9,0,0),(5,10,0,0),(6,11,0,0),(7,14,0,0),(8,15,0,0),(9,17,0,0),(10,18,1,0),(11,18,1,0),(12,18,1,0),(13,21,0,0),(14,18,1,0),(15,18,1,0),(16,24,0,0),(17,25,0,0),(18,28,0,0),(19,33,0,0),(20,33,0,0),(21,34,1,0),(22,37,0,0),(23,38,0,0),(24,39,0,0),(25,41,1,0),(26,42,0,0),(27,41,1,0),(28,43,0,0),(29,41,1,0),(30,41,1,0),(31,41,1,0),(32,44,0,0),(33,45,0,0),(34,48,0,0),(35,49,0,0),(36,51,0,0),(37,52,0,0),(38,52,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAuthorities`
--

LOCK TABLES `PAuthorities` WRITE;
/*!40000 ALTER TABLE `PAuthorities` DISABLE KEYS */;
INSERT INTO `PAuthorities` VALUES (1,1,'com.polarbit.rthunderliteok.AdContentProvider'),(2,2,'com.polarbit.rthunderliteok.AdContentProvider'),(3,3,'com.polarbit.rthunderliteok.videoprovider'),(4,4,'com.polarbit.rthunderliteok.videoprovider'),(5,5,'cn.com.fetionxbwx.connect.uni');
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
INSERT INTO `PermissionStrings` VALUES (15,'android.permission.ACCESS_COARSE_LOCATION'),(7,'android.permission.ACCESS_FINE_LOCATION'),(23,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(9,'android.permission.ACCESS_NETWORK_STATE'),(14,'android.permission.ACCESS_WIFI_STATE'),(26,'android.permission.CALL_PHONE'),(30,'android.permission.CAMERA'),(21,'android.permission.CHANGE_NETWORK_STATE'),(19,'android.permission.CHANGE_WIFI_STATE'),(34,'android.permission.DEVICE_POWER'),(12,'android.permission.GET_TASKS'),(4,'android.permission.INTERNET'),(17,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(24,'android.permission.PROCESS_OUTGOING_CALLS'),(27,'android.permission.READ_CONTACTS'),(22,'android.permission.READ_EXTERNAL_STORAGE'),(32,'android.permission.READ_OWNER_DATA'),(1,'android.permission.READ_PHONE_STATE'),(29,'android.permission.READ_SMS'),(8,'android.permission.RECEIVE_SMS'),(31,'android.permission.RECORD_AUDIO'),(16,'android.permission.RESTART_PACKAGES'),(3,'android.permission.SEND_SMS'),(2,'android.permission.SET_WALLPAPER'),(20,'android.permission.VIBRATE'),(10,'android.permission.WAKE_LOCK'),(13,'android.permission.WRITE_APN_SETTINGS'),(28,'android.permission.WRITE_CONTACTS'),(6,'android.permission.WRITE_EXTERNAL_STORAGE'),(5,'android.permission.WRITE_SETTINGS'),(25,'android.permission.WRITE_SMS'),(11,'com.android.launcher.permission.INSTALL_SHORTCUT'),(33,'com.android.launcher.permission.READ_SETTINGS'),(35,'com.android.launcher.permission.WRITE_SETTINGS'),(18,'com.android.vending.BILLING');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Providers`
--

LOCK TABLES `Providers` WRITE;
/*!40000 ALTER TABLE `Providers` DISABLE KEYS */;
INSERT INTO `Providers` VALUES (1,27,0,NULL,NULL),(2,27,0,NULL,NULL),(3,28,0,NULL,NULL),(4,28,0,NULL,NULL),(5,134,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://media/external/audio/playlists',NULL,NULL,NULL),(2,NULL,NULL,'content://media/external/audio/playlists',NULL,NULL,NULL),(3,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(4,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(5,NULL,NULL,'content://media/external/audio/playlists',NULL,NULL,NULL),(6,NULL,NULL,'content://media/external/audio/artists',NULL,NULL,NULL),(7,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(8,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(9,NULL,NULL,'content://media/external/audio/playlists',NULL,NULL,NULL),(10,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(11,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(12,NULL,NULL,'content://media/external/audio/playlists',NULL,NULL,NULL),(13,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(14,NULL,NULL,'content://media/external/audio/playlists',NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(16,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(17,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(18,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(19,NULL,NULL,'content://media/external/audio/playlists',NULL,NULL,NULL),(20,NULL,NULL,'content://media/external/audio/playlists',NULL,NULL,NULL),(21,NULL,NULL,'content://media/external/audio/playlists',NULL,NULL,NULL),(22,NULL,NULL,'content://media/external/audio/playlists',NULL,NULL,NULL),(23,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(24,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(25,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(26,NULL,NULL,'content://media/external/audio/playlists',NULL,NULL,NULL),(27,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(28,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(29,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(30,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(31,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(32,NULL,NULL,'content://media/external/audio/artists',NULL,NULL,NULL),(33,NULL,NULL,'content://media/external/audio/playlists',NULL,NULL,NULL),(34,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,1,1),(2,3,2),(3,5,3),(4,6,4),(5,8,5),(6,12,6),(7,13,7),(8,16,8),(9,19,9),(10,20,12),(11,22,14),(12,23,17),(13,26,18),(14,27,19),(15,29,20),(16,31,22),(17,30,21),(18,32,23),(19,35,24),(20,36,25),(21,40,26),(22,46,32),(23,47,33),(24,50,34);
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
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,2,1),(12,2,4),(13,2,6),(14,2,7),(15,2,9),(16,2,10),(17,2,11),(18,2,12),(19,2,13),(20,2,14),(21,2,15),(22,2,17),(23,2,16),(24,2,19),(25,2,18),(26,2,21),(27,2,20),(28,3,1),(29,3,6),(30,3,7),(31,3,9),(32,3,10),(33,3,11),(34,3,12),(35,3,13),(36,3,14),(37,3,15),(38,3,17),(39,3,16),(40,3,19),(41,3,21),(42,3,20),(43,3,23),(44,3,22),(45,4,1),(46,4,3),(47,4,4),(48,4,5),(49,4,6),(50,4,8),(51,4,9),(52,4,10),(53,4,11),(54,4,12),(55,4,13),(56,4,14),(57,4,17),(58,4,16),(59,4,19),(60,4,21),(61,4,20),(62,4,25),(63,4,24),(64,4,27),(65,4,26),(66,4,29),(67,4,28),(68,4,31),(69,4,30),(70,4,34),(71,4,35),(72,4,32),(73,4,33);
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

-- Dump completed on 2015-10-09  0:40:03
