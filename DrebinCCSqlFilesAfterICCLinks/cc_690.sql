-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_690
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
INSERT INTO `ActionStrings` VALUES (24,'android.appwidget.action.APPWIDGET_UPDATE'),(4,'android.intent.action.BOOT_COMPLETED'),(18,'android.intent.action.CAMERA_BUTTON'),(11,'android.intent.action.CHOOSER'),(1,'android.intent.action.MAIN'),(28,'android.intent.action.NEW_OUTGOING_CALL'),(29,'android.intent.action.PHONE_STATE'),(19,'android.intent.action.SEARCH_LONG_PRESS'),(5,'android.intent.action.SET_WALLPAPER'),(10,'android.provider.Telephony.SMS_RECEIVED'),(21,'android.service.wallpaper.WallpaperService'),(8,'com.airpush.android.PushServiceStart11118'),(22,'com.airpush.android.PushServiceStart16437'),(2,'com.airpush.android.PushServiceStart25194'),(6,'com.airpush.android.PushServiceStart56926'),(13,'com.android.launcher.action.INSTALL_SHORTCUT'),(25,'com.android.vending.INSTALL_REFERRER'),(15,'com.android.vending.billing.IN_APP_NOTIFY'),(16,'com.android.vending.billing.PURCHASE_STATE_CHANGED'),(17,'com.android.vending.billing.RESPONSE_CODE'),(9,'com.appenda.AppNotify'),(12,'com.appenda.INSTALL_INTENT'),(20,'com.applovin.sdk.AppLovinService'),(26,'com.google.android.c2dm.intent.RECEIVE'),(27,'com.google.android.c2dm.intent.REGISTRATION'),(14,'com.quipper.a.query'),(7,'com.senddroid.AdServicecom.dessertapps.app.htcthunderboltwallpapers'),(3,'com.senddroid.AdServicekshjd.jsakjd'),(23,'org.OpenUDID.GETUDID');
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
INSERT INTO `Applications` VALUES (1,'com.casual.apps.didYouKnow',4),(2,'kshjd.jsakjd',1),(3,'com.dessertapps.app.htcthunderboltwallpapers',101),(4,'org.drhu.QRCode',35),(5,'com.quipack.a.b4fbd14ddcd76500001010c3a',2),(6,'com.quipack.a.b4f3823b6cabc44000100ecf5',2),(7,'com.banana.spycameralite',2059);
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
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.DEFAULT'),(2,'android.intent.category.HOME'),(1,'android.intent.category.LAUNCHER'),(5,'com.banana.spycameralite'),(4,'com.quipper.a.query.TOPIC');
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
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.casual.apps.didYouKnow.DidYouKnow'),(2,1,'com.apperhand.device.android.AndroidSDKProvider'),(3,2,'kshjd.jsakjd.WelcomeActivity'),(4,2,'kshjd.jsakjd.ui.GameActivity'),(5,2,'kshjd.jsakjd.ui.MenuActivity'),(6,2,'com.airpush.android.PushAds'),(7,2,'kshjd.jsakjd.Snake'),(8,2,'com.airpush.android.PushService'),(9,2,'com.apperhand.device.android.AndroidSDKProvider'),(10,2,'com.senddroid.AdService'),(11,2,'com.airpush.android.UserDetailsReceiver'),(12,2,'com.airpush.android.MessageReceiver'),(13,2,'com.airpush.android.DeliveryReceiver'),(14,2,'kshjd.jsakjd.Boot1'),(15,2,'kshjd.jsakjd.Boot2'),(16,3,'com.dessertapps.app.htcthunderboltwallpapers.MAINHtcThunderboltWallpapersActivity'),(17,3,'com.dessertapps.app.htcthunderboltwallpapers.HtcThunderboltWallpapersActivity'),(18,3,'com.dessertapps.app.htcthunderboltwallpapers.HtcThunderboltGalleryViewerActivity'),(19,3,'com.google.ads.AdActivity'),(20,3,'com.inmobi.androidsdk.IMBrowserActivity'),(21,3,'com.mobfox.sdk.InAppWebView'),(22,3,'com.adfonic.android.AdfonicActivity'),(23,3,'com.airpush.android.PushAds'),(24,3,'com.airpush.android.PushService'),(25,3,'com.senddroid.AdService'),(26,3,'com.apperhand.device.android.AndroidSDKProvider'),(27,3,'com.airpush.android.UserDetailsReceiver'),(28,3,'com.airpush.android.MessageReceiver'),(29,3,'com.airpush.android.DeliveryReceiver'),(30,3,'com.dessertapps.app.htcthunderboltwallpapers.BootReceiver'),(31,4,'org.drhu.QRCode.QRImageView'),(32,4,'org.drhu.QRCode.QRReceiverHandler'),(33,4,'org.drhu.QRCode.WebOfferActivity'),(34,4,'com.millennialmedia.android.MMAdViewOverlayActivity'),(35,4,'com.millennialmedia.android.VideoPlayer'),(36,4,'com.airpush.android.PushAds'),(37,4,'com.pontiflex.mobile.webview.sdk.activities.MultiOfferActivity'),(38,4,'com.pontiflex.mobile.webview.sdk.activities.RegistrationActivity'),(39,4,'com.airpush.android.PushService'),(40,4,'com.appenda.AppNotify'),(41,4,'com.apperhand.device.android.AndroidSDKProvider'),(42,4,'org.drhu.QRCode.QRSMSReceiver'),(43,4,'com.airpush.android.UserDetailsReceiver'),(44,4,'com.airpush.android.MessageReceiver'),(45,4,'com.airpush.android.DeliveryReceiver'),(46,4,'org.drhu.QRCode.BootReceiver'),(47,1,'com.casual.apps.didYouKnow.DidYouKnow$5'),(48,4,'com.appenda.BootReceiver'),(49,4,'com.Leadbolt.AdNotification'),(50,1,'com.apperhand.device.android.a.e'),(51,1,'com.apperhand.device.android.a.a'),(52,5,'com.quipper.a.v5.single.activities.QuipperV5SingleStartActivity'),(53,5,'com.quipper.a.v5.single.activities.SingleLanderActivity'),(54,5,'com.quipper.a.v5.single.activities.ReportTopicActivity'),(55,5,'com.quipper.a.v5.single.activities.PurchaseActivity'),(56,5,'com.quipper.a.v5.activities.FlowControlActivity'),(57,5,'com.quipper.a.v5.activities.WebViewActivity'),(58,5,'com.quipper.a.v5.activities.LanderRibbonActivity'),(59,5,'com.quipper.a.v5.activities.UserPriorityActivity'),(60,5,'com.quipper.a.v5.single.activities.TopicActivity'),(61,5,'com.quipper.a.v5.activities.TopicReviewActivity'),(62,5,'com.quipper.a.v5.activities.VideoPlayerActivity'),(63,5,'com.quipper.a.v5.activities.FlagQuestionActivity'),(64,5,'com.quipper.a.v5.activities.ShareActivity'),(65,5,'com.quipper.a.v5.activities.QuipperDialog'),(66,5,'com.quipper.a.v5.single.activities.FlashCardPurchaseDialog'),(67,5,'com.quipper.a.v5.activities.LoginActivity'),(68,5,'com.quipper.a.v5.activities.SignupActivity'),(69,5,'com.quipper.a.v5.activities.AgreementActivity'),(70,5,'com.quipper.a.v5.activities.FacebookConnectActivity'),(71,5,'com.quipper.a.v5.single.billing.BillingService'),(72,5,'com.quipper.a.v5.services.UpdateRibbonsAndTopicsService'),(73,5,'com.apperhand.device.android.AndroidSDKProvider'),(74,5,'com.quipper.a.v5.single.receivers.TopicReceiver'),(75,6,'com.quipper.a.v5.single.activities.QuipperV5SingleStartActivity'),(76,6,'com.quipper.a.v5.single.activities.SingleLanderActivity'),(77,5,'com.quipper.a.v5.single.billing.BillingReceiver'),(78,6,'com.quipper.a.v5.single.activities.ReportTopicActivity'),(79,6,'com.quipper.a.v5.single.activities.PurchaseActivity'),(80,6,'com.quipper.a.v5.activities.FlowControlActivity'),(81,5,'com.Leadbolt.AdNotification'),(82,6,'com.quipper.a.v5.activities.WebViewActivity'),(83,5,'com.quipper.a.v5.single.BootReceiver'),(84,6,'com.quipper.a.v5.activities.LanderRibbonActivity'),(85,6,'com.quipper.a.v5.activities.UserPriorityActivity'),(86,6,'com.quipper.a.v5.single.activities.TopicActivity'),(87,6,'com.quipper.a.v5.activities.TopicReviewActivity'),(88,6,'com.quipper.a.v5.activities.VideoPlayerActivity'),(89,6,'com.quipper.a.v5.activities.FlagQuestionActivity'),(90,6,'com.quipper.a.v5.activities.ShareActivity'),(91,6,'com.quipper.a.v5.activities.QuipperDialog'),(92,6,'com.quipper.a.v5.single.activities.FlashCardPurchaseDialog'),(93,6,'com.quipper.a.v5.activities.LoginActivity'),(94,7,'com.socialize.ui.comment.CommentActivity'),(95,6,'com.quipper.a.v5.activities.SignupActivity'),(96,7,'com.socialize.ui.action.ActionDetailActivity'),(97,6,'com.quipper.a.v5.activities.AgreementActivity'),(98,7,'com.socialize.ui.profile.ProfileActivity'),(99,6,'com.quipper.a.v5.activities.FacebookConnectActivity'),(100,7,'com.socialize.auth.facebook.FacebookActivity'),(101,6,'com.quipper.a.v5.single.billing.BillingService'),(102,7,'com.socialize.ui.SocializeLaunchActivity'),(103,6,'com.quipper.a.v5.services.UpdateRibbonsAndTopicsService'),(104,7,'com.sellaring.sdk.PostCallScreenActivity'),(105,6,'com.apperhand.device.android.AndroidSDKProvider'),(106,7,'com.airpush.android.PushAds'),(107,6,'com.quipper.a.v5.single.receivers.TopicReceiver'),(108,7,'com.banana.spycameralite.activity.LeadBoltWeb'),(109,7,'com.banana.spycameralite.activity.PrefTabActivity'),(110,7,'com.banana.spycameralite.activity.GalleryActivity'),(111,6,'com.quipper.a.v5.single.billing.BillingReceiver'),(112,7,'com.banana.spycameralite.activity.AdDialogActivity'),(113,6,'com.Leadbolt.AdNotification'),(114,7,'com.banana.spycameralite.activity.CameraActivity'),(115,6,'com.quipper.a.v5.single.BootReceiver'),(116,7,'com.banana.spycameralite.activity.FullCameraActivity'),(117,7,'com.banana.spycameralite.activity.PrefActivity'),(118,7,'com.google.ads.AdActivity'),(119,7,'com.millennialmedia.android.MMAdViewOverlayActivity'),(120,7,'com.millennialmedia.android.VideoPlayer'),(121,7,'com.mobfox.sdk.InAppWebView'),(122,7,'com.mobclix.android.sdk.MobclixBrowserActivity'),(123,7,'com.tapjoy.TJCOffersWebView'),(124,7,'com.tapjoy.TapjoyFeaturedAppWebView'),(125,7,'com.tapjoy.TapjoyVideoView'),(126,7,'com.tapjoy.TJCVirtualGoods'),(127,7,'com.tapjoy.DownloadVirtualGood'),(128,7,'de.madvertise.android.sdk.MadvertiseActivity'),(129,7,'com.appbrain.AppBrainActivity'),(130,7,'com.applovin.sdk.AppLovinService'),(131,7,'com.apperhand.device.android.AndroidSDKProvider'),(132,7,'com.socialize.notifications.SocializeC2DMReceiver'),(133,7,'com.banana.spycameralite.service.CameraLiveService'),(134,7,'service.CameraService'),(135,7,'com.banana.spycameralite.inapp.BillingService'),(136,7,'com.airpush.android.PushService'),(137,7,'com.appbrain.AppBrainService'),(138,7,'org.OpenUDID.OpenUDID_service'),(139,7,'com.applovin.sdk.AppLovinBootReceiver'),(140,7,'com.banana.spycameralite.IconAppWidgetProvider'),(141,7,'com.banana.spycameralite.ReferralReceiver'),(142,7,'com.socialize.notifications.SocializeBroadcastReceiver'),(143,7,'com.sellaring.sdk.AlarmReceiver'),(144,7,'com.sellaring.sdk.RestartAlarmServiceReceiver'),(145,7,'com.sellaring.sdk.PhoneStateReceiver'),(146,7,'com.banana.spycameralite.inapp.BillingReceiver'),(147,7,'com.banana.spycameralite.service.BootReceiver'),(148,7,'com.airpush.android.UserDetailsReceiver'),(149,7,'com.airpush.android.MessageReceiver'),(150,7,'com.airpush.android.DeliveryReceiver'),(151,7,'com.Leadbolt.AdNotification'),(152,7,'com.appbrain.ReferrerReceiver');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,1,'DidYouKnow-view'),(2,1,'mlastFact'),(3,2,'DEVELOPER_ID'),(4,2,'M_SERVER_URL'),(5,2,'FIRST_RUN'),(6,2,'SERVICE_MODE'),(7,2,'USER_AGENT'),(8,2,'APPLICATION_ID'),(9,2,'permanent');
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
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'s',0,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'s',0,NULL,NULL),(8,8,'s',1,NULL,NULL),(9,9,'s',0,NULL,NULL),(10,10,'s',1,NULL,NULL),(11,11,'r',0,NULL,NULL),(12,12,'r',0,NULL,NULL),(13,13,'r',0,NULL,NULL),(14,14,'r',1,NULL,NULL),(15,15,'r',1,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'s',1,NULL,NULL),(25,25,'s',1,NULL,NULL),(26,26,'s',0,NULL,NULL),(27,27,'r',0,NULL,NULL),(28,28,'r',0,NULL,NULL),(29,29,'r',0,NULL,NULL),(30,30,'r',1,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'a',1,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'s',1,NULL,NULL),(40,40,'s',1,NULL,NULL),(41,41,'s',0,NULL,NULL),(42,42,'r',1,NULL,NULL),(43,43,'r',0,NULL,NULL),(44,44,'r',0,NULL,NULL),(45,45,'r',0,NULL,NULL),(46,46,'r',1,NULL,NULL),(47,48,'r',1,NULL,NULL),(48,49,'r',0,NULL,NULL),(49,52,'a',1,NULL,NULL),(50,53,'a',0,NULL,NULL),(51,54,'a',0,NULL,NULL),(52,55,'a',0,NULL,NULL),(53,56,'a',0,NULL,NULL),(54,57,'a',0,NULL,NULL),(55,58,'a',0,NULL,NULL),(56,59,'a',0,NULL,NULL),(57,60,'a',0,NULL,NULL),(58,61,'a',0,NULL,NULL),(59,62,'a',0,NULL,NULL),(60,63,'a',0,NULL,NULL),(61,64,'a',0,NULL,NULL),(62,65,'a',0,NULL,NULL),(63,66,'a',0,NULL,NULL),(64,67,'a',0,NULL,NULL),(65,68,'a',0,NULL,NULL),(66,69,'a',0,NULL,NULL),(67,70,'a',0,NULL,NULL),(68,71,'s',0,NULL,NULL),(69,72,'s',0,NULL,NULL),(70,73,'s',0,NULL,NULL),(71,74,'r',1,NULL,NULL),(72,75,'a',1,NULL,NULL),(73,76,'a',0,NULL,NULL),(74,77,'r',1,NULL,NULL),(75,78,'a',0,NULL,NULL),(76,79,'a',0,NULL,NULL),(77,80,'a',0,NULL,NULL),(78,81,'r',0,NULL,NULL),(79,82,'a',0,NULL,NULL),(80,83,'r',1,NULL,NULL),(81,84,'a',0,NULL,NULL),(82,85,'a',0,NULL,NULL),(83,86,'a',0,NULL,NULL),(84,87,'a',0,NULL,NULL),(85,88,'a',0,NULL,NULL),(86,89,'a',0,NULL,NULL),(87,90,'a',0,NULL,NULL),(88,91,'a',0,NULL,NULL),(89,92,'a',0,NULL,NULL),(90,93,'a',0,NULL,NULL),(91,94,'a',0,NULL,NULL),(92,95,'a',0,NULL,NULL),(93,96,'a',0,NULL,NULL),(94,97,'a',0,NULL,NULL),(95,98,'a',0,NULL,NULL),(96,99,'a',0,NULL,NULL),(97,100,'a',0,NULL,NULL),(98,101,'s',0,NULL,NULL),(99,102,'a',0,NULL,NULL),(100,103,'s',0,NULL,NULL),(101,104,'a',0,NULL,NULL),(102,105,'s',0,NULL,NULL),(103,106,'a',0,NULL,NULL),(104,107,'r',1,NULL,NULL),(105,108,'a',0,NULL,NULL),(106,109,'a',0,NULL,NULL),(107,110,'a',0,NULL,NULL),(108,111,'r',1,NULL,NULL),(109,112,'a',0,NULL,NULL),(110,113,'r',0,NULL,NULL),(111,114,'a',1,NULL,NULL),(112,115,'r',1,NULL,NULL),(113,116,'a',0,NULL,NULL),(114,117,'a',1,NULL,NULL),(115,118,'a',0,NULL,NULL),(116,119,'a',0,NULL,NULL),(117,120,'a',0,NULL,NULL),(118,121,'a',0,NULL,NULL),(119,122,'a',0,NULL,NULL),(120,123,'a',0,NULL,NULL),(121,124,'a',0,NULL,NULL),(122,125,'a',0,NULL,NULL),(123,126,'a',0,NULL,NULL),(124,127,'a',0,NULL,NULL),(125,128,'a',0,NULL,NULL),(126,129,'a',0,NULL,NULL),(127,130,'s',1,NULL,NULL),(128,131,'s',0,NULL,NULL),(129,132,'s',0,NULL,NULL),(130,133,'s',1,44,NULL),(131,134,'s',0,NULL,NULL),(132,135,'s',0,NULL,NULL),(133,136,'s',1,NULL,NULL),(134,137,'s',0,NULL,NULL),(135,138,'s',1,NULL,NULL),(136,139,'r',1,NULL,NULL),(137,140,'r',1,NULL,NULL),(138,141,'r',1,NULL,NULL),(139,142,'r',1,45,NULL),(140,143,'r',0,NULL,NULL),(141,144,'r',1,NULL,NULL),(142,145,'r',1,NULL,NULL),(143,146,'r',1,NULL,NULL),(144,147,'r',1,NULL,NULL),(145,148,'r',0,NULL,NULL),(146,149,'r',0,NULL,NULL),(147,150,'r',0,NULL,NULL),(148,151,'r',0,NULL,NULL),(149,152,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,2),(5,5,2),(6,6,2),(7,7,2),(8,8,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,47,'<com.casual.apps.didYouKnow.DidYouKnow$5: void onClick(android.view.View)>',21,'a',NULL),(2,50,'<com.apperhand.device.android.a.e: java.util.List b(java.util.List)>',16,'p',NULL),(3,2,'<com.apperhand.device.android.AndroidSDKProvider: void a(android.content.Context,int,android.os.Bundle)>',28,'s',NULL),(4,50,'<com.apperhand.device.android.a.e: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(5,51,'<com.apperhand.device.android.a.a: java.util.List a()>',13,'p',NULL),(6,51,'<com.apperhand.device.android.a.a: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(7,50,'<com.apperhand.device.android.a.e: java.util.List b(java.util.List)>',29,'p',NULL),(8,51,'<com.apperhand.device.android.a.a: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,11),(2,2,11),(3,3,11),(4,4,11),(5,5,11),(6,6,11),(7,7,11),(8,8,11),(9,11,13);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,9,'com/apperhand/device/android/AndroidSDKProvider'),(2,10,'com/apperhand/device/android/AndroidSDKProvider');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'android.intent.extra.INTENT'),(2,2,'android.intent.extra.INTENT'),(3,3,'android.intent.extra.TITLE'),(4,3,'android.intent.extra.INTENT'),(5,4,'android.intent.extra.INTENT'),(6,5,'android.intent.extra.TITLE'),(7,5,'android.intent.extra.INTENT'),(8,6,'android.intent.extra.INTENT'),(9,7,'android.intent.extra.TITLE'),(10,7,'android.intent.extra.INTENT'),(11,8,'android.intent.extra.TITLE'),(12,8,'android.intent.extra.INTENT'),(13,9,'M_SERVER_URL'),(14,9,'USER_AGENT'),(15,9,'SERVICE_MODE'),(16,9,'FIRST_RUN'),(17,9,'DEVELOPER_ID'),(18,9,'APPLICATION_ID'),(19,10,'M_SERVER_URL'),(20,10,'USER_AGENT'),(21,10,'SERVICE_MODE'),(22,10,'FIRST_RUN'),(23,10,'DEVELOPER_ID'),(24,10,'(.*)'),(25,10,'APPLICATION_ID'),(26,11,'android.intent.extra.shortcut.NAME'),(27,11,'android.intent.extra.shortcut.ICON'),(28,11,'android.intent.extra.shortcut.INTENT');
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,3),(5,5,4),(6,6,4),(7,7,1),(8,8,5),(9,9,6),(10,10,7),(11,11,4),(12,12,1),(13,13,1),(14,14,8),(15,15,9),(16,16,10),(17,17,4),(18,18,4),(19,18,12),(20,19,4),(21,20,1),(22,21,1),(23,22,14),(24,23,15),(25,23,16),(26,23,17),(27,24,4),(28,25,14),(29,26,15),(30,26,16),(31,26,17),(32,27,4),(33,28,19),(34,28,18),(35,28,1),(36,29,20),(37,30,21),(38,31,22),(39,32,23),(40,33,4),(41,34,24),(42,35,25),(43,36,26),(44,37,27),(45,38,4),(46,39,28),(47,39,29),(48,40,17),(49,40,16),(50,40,15),(51,41,4),(52,42,25);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,5,2),(4,6,2),(5,7,1),(6,8,3),(7,11,2),(8,12,1),(9,17,2),(10,20,1),(11,21,1),(12,22,4),(13,25,4),(14,28,3),(15,28,1),(16,36,5),(17,37,5),(18,41,2);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,9,'com.casual.apps.didYouKnow'),(2,10,'com.casual.apps.didYouKnow');
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,3,0),(3,8,0),(4,10,0),(5,14,0),(6,15,0),(7,16,0),(8,17,0),(9,24,0),(10,25,0),(11,30,0),(12,31,0),(13,32,0),(14,39,0),(15,40,0),(16,42,0),(17,46,0),(18,47,0),(19,46,0),(20,49,0),(21,72,0),(22,71,0),(23,74,0),(24,80,0),(25,104,0),(26,108,0),(27,112,0),(28,111,0),(29,127,0),(30,130,0),(31,133,0),(32,135,0),(33,136,0),(34,137,0),(35,138,0),(36,139,0),(37,139,0),(38,141,0),(39,142,0),(40,143,0),(41,144,0),(42,149,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,1,1,0),(3,1,1,0),(4,1,1,0),(5,1,1,0),(6,1,1,0),(7,1,1,0),(8,1,1,0),(9,3,0,0),(10,3,0,0),(11,4,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,9,2,2,NULL),(2,9,9,2,NULL),(3,9,26,2,NULL),(4,9,41,2,NULL),(5,9,70,2,NULL),(6,9,102,2,NULL),(7,9,128,2,NULL),(8,10,2,2,NULL),(9,10,9,2,NULL),(10,10,26,2,NULL),(11,10,41,2,NULL),(12,10,70,2,NULL),(13,10,102,2,NULL),(14,10,128,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (20,'android.permission.ACCESS_COARSE_LOCATION'),(25,'android.permission.ACCESS_FINE_LOCATION'),(35,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(27,'android.permission.ACCESS_NETWORK_STATE'),(43,'android.permission.ACCESS_SURFACE_FLINGER'),(5,'android.permission.ACCESS_WIFI_STATE'),(44,'android.permission.BIND_WALLPAPER'),(21,'android.permission.CALL_PHONE'),(33,'android.permission.CAMERA'),(28,'android.permission.FLASHLIGHT'),(22,'android.permission.GET_ACCOUNTS'),(18,'android.permission.GET_TASKS'),(29,'android.permission.INSTALL_PACKAGES'),(10,'android.permission.INTERNET'),(23,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(38,'android.permission.PROCESS_OUTGOING_CALLS'),(39,'android.permission.READ_CONTACTS'),(37,'android.permission.READ_EXTERNAL_STORAGE'),(8,'android.permission.READ_PHONE_STATE'),(40,'android.permission.READ_SMS'),(24,'android.permission.RECEIVE_BOOT_COMPLETED'),(32,'android.permission.RECEIVE_SMS'),(34,'android.permission.SEND_SMS'),(17,'android.permission.SET_WALLPAPER'),(31,'android.permission.VIBRATE'),(26,'android.permission.WAKE_LOCK'),(19,'android.permission.WRITE_EXTERNAL_STORAGE'),(16,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(11,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(1,'com.android.launcher.permission.INSTALL_SHORTCUT'),(13,'com.android.launcher.permission.READ_SETTINGS'),(7,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(36,'com.android.vending.BILLING'),(42,'com.banana.spycameralite.permission.C2D_MESSAGE'),(12,'com.fede.launcher.permission.READ_SETTINGS'),(41,'com.google.android.c2dm.permission.RECEIVE'),(45,'com.google.android.c2dm.permission.SEND'),(6,'com.htc.launcher.permission.READ_SETTINGS'),(2,'com.lge.launcher.permission.INSTALL_SHORTCUT'),(9,'com.lge.launcher.permission.READ_SETTINGS'),(3,'com.motorola.dlauncher.permission.INSTALL_SHORTCUT'),(4,'com.motorola.dlauncher.permission.READ_SETTINGS'),(14,'com.motorola.launcher.permission.INSTALL_SHORTCUT'),(15,'com.motorola.launcher.permission.READ_SETTINGS'),(30,'org.adw.launcher.permission.READ_SETTINGS');
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
INSERT INTO `Permissions` VALUES (42,'s');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(2,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(3,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(4,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(5,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(6,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,2,1),(2,2,2),(3,5,3),(4,6,4),(5,7,5),(6,8,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,16),(17,2,1),(18,2,2),(19,2,3),(20,2,4),(21,2,5),(22,2,6),(23,2,7),(24,2,8),(25,2,9),(26,2,10),(27,2,11),(28,2,12),(29,2,13),(30,2,14),(31,2,15),(32,2,17),(33,2,16),(34,2,19),(35,2,18),(36,2,21),(37,2,20),(38,2,23),(39,2,22),(40,2,25),(41,2,24),(42,2,27),(43,2,26),(44,2,29),(45,2,28),(46,2,31),(47,2,30),(48,3,1),(49,3,2),(50,3,3),(51,3,4),(52,3,5),(53,3,6),(54,3,7),(55,3,8),(56,3,9),(57,3,10),(58,3,11),(59,3,12),(60,3,13),(61,3,14),(62,3,15),(63,3,17),(64,3,16),(65,3,21),(66,3,20),(67,3,25),(68,3,24),(69,3,27),(70,3,26),(71,3,28),(72,3,31),(73,3,30),(74,4,1),(75,4,2),(76,4,3),(77,4,4),(78,4,5),(79,4,6),(80,4,7),(81,4,8),(82,4,9),(83,4,10),(84,4,11),(85,4,12),(86,4,13),(87,4,14),(88,4,15),(89,4,16),(90,4,19),(91,4,20),(92,4,22),(93,4,25),(94,4,24),(95,4,27),(96,4,26),(97,4,31),(98,4,30),(99,4,34),(100,4,35),(101,4,32),(102,4,33),(103,5,1),(104,5,2),(105,5,3),(106,5,4),(107,5,5),(108,5,6),(109,5,7),(110,5,8),(111,5,9),(112,5,10),(113,5,11),(114,5,12),(115,5,13),(116,5,14),(117,5,15),(118,5,16),(119,5,19),(120,5,20),(121,5,25),(122,5,24),(123,5,27),(124,5,31),(125,5,30),(126,5,35),(127,5,36),(128,6,1),(129,6,2),(130,6,3),(131,6,4),(132,6,5),(133,6,6),(134,6,7),(135,6,8),(136,6,9),(137,6,10),(138,6,11),(139,6,12),(140,6,13),(141,6,14),(142,6,15),(143,6,16),(144,6,19),(145,6,20),(146,6,25),(147,6,24),(148,6,27),(149,6,31),(150,6,30),(151,6,35),(152,6,36),(153,7,1),(154,7,5),(155,7,7),(156,7,8),(157,7,10),(158,7,11),(159,7,13),(160,7,16),(161,7,19),(162,7,21),(163,7,20),(164,7,22),(165,7,25),(166,7,24),(167,7,27),(168,7,31),(169,7,35),(170,7,33),(171,7,38),(172,7,39),(173,7,36),(174,7,37),(175,7,42),(176,7,43),(177,7,40),(178,7,41);
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

-- Dump completed on 2015-10-12  3:31:24
