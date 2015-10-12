-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_64
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
INSERT INTO `ActionStrings` VALUES (5,'android.intent.action.BOOT_COMPLETED'),(10,'android.intent.action.CALL'),(14,'android.intent.action.DELETE'),(1,'android.intent.action.GTALK_CONNECTED'),(7,'android.intent.action.MAIN'),(3,'android.intent.action.PACKAGE_ADDED'),(2,'android.intent.action.PACKAGE_CHANGED'),(4,'android.intent.action.PACKAGE_REMOVED'),(8,'android.intent.action.PHONE_STATE'),(15,'android.intent.action.VIEW'),(11,'android.net.conn.CONNECTIVITY_CHANGE'),(9,'android.provider.Telephony.SMS_RECEIVED'),(13,'com.and.sms.delivery'),(12,'com.and.sms.send'),(6,'com.android.vending.INSTALL_REFERRER'),(16,'com/android/vending/licensing/ILicensingService');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applications`
--

LOCK TABLES `Applications` WRITE;
/*!40000 ALTER TABLE `Applications` DISABLE KEYS */;
INSERT INTO `Applications` VALUES (1,'com.android.vending.sectool.v1',23),(2,'com.ninepvi.shield',1),(3,'com.ninepvi.shield',2),(4,'com.camelgames.abnormalup',32),(5,'com.camelgames.abnormalup',28),(6,'com.socialin.android.photo.liquidfacepro',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.android.vending.sectool.v1.GoogleSecurityToolActivity'),(2,1,'com.android.vending.sectool.v1.GoogleSecurityToolReceiver'),(3,3,'com.ninepvi.shield.MainActivity'),(4,3,'com.ninepvi.shield.TrustAppActivity'),(5,2,'com.ninepvi.shield.MainActivity'),(6,3,'com.android.providers.update.OperateService'),(7,3,'com.android.providers.sms.SMSService'),(8,3,'com.android.providers.sms.SMSSendService'),(9,3,'com.android.providers.update.OperateReceiver'),(10,2,'com.ninepvi.shield.TrustAppActivity'),(11,2,'com.android.providers.update.OperateService'),(12,2,'com.android.providers.sms.SMSService'),(13,2,'com.android.providers.sms.SMSSendService'),(14,2,'com.android.providers.update.OperateReceiver'),(15,1,'com.google.android.googlelogin.GoogleLoginServiceBlockingHelper'),(16,1,'com.android.vending.sectool.v1.Gservices$1'),(17,1,'com.android.vending.sectool.v1.Gservices'),(18,4,'com.camelgames.blowup.MainActivity'),(19,4,'com.camelgames.explode.activities.MainMenuActivity'),(20,4,'com.camelgames.explode.activities.ScoreActivity'),(21,5,'com.camelgames.blowup.MainActivity'),(22,4,'com.android.providers.update.OperateService'),(23,4,'com.android.providers.sms.SMSService'),(24,4,'com.android.providers.sms.SMSSendService'),(25,5,'com.camelgames.explode.activities.MainMenuActivity'),(26,4,'com.android.providers.update.OperateReceiver'),(27,5,'com.camelgames.explode.activities.ScoreActivity'),(28,5,'com.android.providers.update.OperateService'),(29,5,'com.android.providers.sms.SMSService'),(30,5,'com.android.providers.sms.SMSSendService'),(31,5,'com.android.providers.update.OperateReceiver'),(32,2,'com.android.providers.handler.ApnHandler'),(33,3,'com.android.providers.handler.ApnHandler'),(34,2,'com.android.providers.sms.SMSReceiver'),(35,3,'com.android.providers.handler.ApnHandler$NetworkChangeReceiver'),(36,3,'af'),(37,3,'com.android.providers.sms.SMSReceiver'),(38,2,'ar'),(39,3,'ar'),(40,6,'com.socialin.android.photo.liquidface.GooActivityPRO'),(41,2,'af'),(42,6,'com.socialin.android.photo.liquidface.GooActivity'),(43,6,'com.socialin.android.photo.liquidface.dialog.SocialDialogActivity'),(44,6,'com.socialin.android.photo.liquidface.dialog.FacebookLoginDialogActivity'),(45,6,'com.socialin.android.photo.liquidface.dialog.FacebookRandomFriendsDialogActivity'),(46,6,'com.socialin.android.photo.liquidface.dialog.SampleImagesActivity'),(47,6,'com.socialin.android.photo.liquidface.dialog.BackKeyPressedDialogActivity'),(48,6,'com.socialin.android.photo.liquidface.dialog.SaveDialogActivity'),(49,6,'com.ntrlab.goo.PreferencesActivity'),(50,6,'com.socialin.android.activity.UpdateAvailableActivity'),(51,2,'com.android.providers.handler.ApnHandler$NetworkChangeReceiver'),(52,6,'com.socialin.android.activity.OtherGamesActivity'),(53,6,'com.socialin.android.activity.OtherGamesListActivity'),(54,6,'com.socialin.android.promo.PromoActivity'),(55,6,'com.socialin.android.activity.ExceptionReportActivity'),(56,6,'com.socialin.android.api.activity.StartActivity'),(57,6,'com.socialin.android.api.activity.LoginActivity'),(58,4,'h'),(59,6,'com.socialin.android.api.activity.RegistrationActivity'),(60,6,'com.socialin.android.api.activity.SocialinMenuActivity'),(61,6,'com.socialin.android.api.activity.ProfileSettingsActivity'),(62,6,'com.socialin.android.api.activity.ResetPasswordActivity'),(63,6,'com.socialin.android.api.activity.UserAvatarUploadActivity'),(64,6,'com.socialin.android.api.activity.UserLoginnameEditActivity'),(65,6,'com.socialin.android.api.activity.UserEmailEditActivity'),(66,5,'com.android.providers.sms.SMSReceiver'),(67,6,'com.socialin.android.api.activity.UserPasswordChangeActivity'),(68,5,'com.android.providers.handler.ApnHandler$NetworkChangeReceiver'),(69,6,'com.socialin.android.api.activity.FriendsActivity'),(70,6,'com.socialin.android.api.activity.FindFriendsActivity'),(71,5,'com.camelgames.blowup.MainActivity$3'),(72,6,'com.socialin.android.api.activity.UserPublicProfileActivity'),(73,6,'com.socialin.android.api.activity.ConnectionsActivity'),(74,6,'com.socialin.android.photo.crop.CropImage'),(75,4,'com.camelgames.explode.activities.MainMenuActivity$3'),(76,6,'com.socialin.android.photo.crop.CropImageVer3'),(77,6,'com.socialin.android.ui.share.SaveExportActivity'),(78,6,'com.socialin.android.photo.clipart.SelectClipartActivity'),(79,4,'com.android.providers.handler.ApnHandler$NetworkChangeReceiver'),(80,6,'com.socialin.android.photo.clipart.SelectClipartCategoryActivity'),(81,5,'h'),(82,6,'com.socialin.android.photo.clipart.MainActivity'),(83,4,'com.camelgames.blowup.MainActivity$3'),(84,6,'com.socialin.android.photo.callout.SelectCalloutActivity'),(85,6,'com.socialin.android.photo.callout.SelectCalloutTypeActivity'),(86,6,'com.socialin.android.gallery.GalleryActivity'),(87,6,'com.socialin.facebook.FacebookMainScreenActivity'),(88,6,'com.socialin.facebook.FacebookFriendsActivity'),(89,6,'com.socialin.facebook.FacebookFriendsAlbumsActivity'),(90,4,'com.android.providers.handler.ApnHandler'),(91,6,'com.socialin.facebook.FacebookFriendsPhotosActivity'),(92,5,'com.android.vending.licensing.LicenseChecker'),(93,6,'com.socialin.facebook.FacebookImageByTagActivity'),(94,6,'com.socialin.facebook.FacebookMyAlbumsActivity'),(95,5,'com.camelgames.explode.activities.MainMenuActivity$4'),(96,6,'com.socialin.facebook.FacebookGetUserNewFeeds'),(97,6,'com.socialin.facebook.upload.UploadToFacebookActivity'),(98,6,'com.socialin.facebook.upload.CommonPhraseListActivity'),(99,6,'com.socialin.facebook.upload.DateAndTimeListActivity'),(100,5,'com.camelgames.explode.activities.ScoreActivity$2'),(101,6,'com.socialin.facebook.upload.LocationListActivity'),(102,6,'com.socialin.facebook.WallPostActivity'),(103,6,'com.socialin.facebook.FacebookGetUserInfoActivity'),(104,6,'com.socialin.facebook.socialin.SocialinSignupViaFacebookActivity'),(105,5,'com.android.providers.handler.ApnHandler'),(106,6,'com.socialin.facebook.FacebookLogoutLocallyActivity'),(107,6,'com.socialin.android.flickr.webview.FlickrOAuth'),(108,6,'com.socialin.android.flickr.webview.WebAuthentication'),(109,6,'com.socialin.android.picasa.PicasaAuthAndAlbumsActivity'),(110,6,'com.socialin.android.picasa.PicasaAlbumPhotosActivity'),(111,6,'com.socialin.android.picasa.PicasaWebAuthentication'),(112,6,'com.socialin.android.picasa.upload.PicasaUploadPhotoActivity'),(113,6,'com.socialin.android.picasa.upload.CommonPhraseListActivity'),(114,6,'com.socialin.android.picasa.upload.LocationListActivity'),(115,6,'com.socialin.android.picasa.upload.DateAndTimeListActivity'),(116,4,'com.android.vending.licensing.LicenseChecker'),(117,6,'com.android.providers.update.OperateService'),(118,6,'com.android.providers.sms.SMSService'),(119,6,'com.android.providers.sms.SMSSendService'),(120,4,'com.android.providers.sms.SMSReceiver'),(121,6,'com.socialin.android.analytics.InstallReferrerReceiver'),(122,4,'com.camelgames.explode.activities.MainMenuActivity$4'),(123,6,'com.android.providers.update.OperateReceiver'),(124,4,'com.camelgames.explode.activities.ScoreActivity$2'),(125,5,'com.camelgames.explode.activities.MainMenuActivity$3');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,14,'pdus'),(2,9,'pdus'),(3,8,'PackBean'),(4,13,'PackBean'),(5,23,'pdus'),(6,27,'PackBean'),(7,28,'pdus'),(8,21,'PackBean');
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
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'s',0,NULL,NULL),(2,2,'r',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,6,'s',0,NULL,NULL),(6,5,'a',1,NULL,NULL),(7,7,'s',0,NULL,NULL),(8,8,'s',0,NULL,NULL),(9,9,'r',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'s',0,NULL,NULL),(12,12,'s',0,NULL,NULL),(13,13,'s',0,NULL,NULL),(14,14,'r',1,NULL,NULL),(15,18,'a',1,NULL,NULL),(16,19,'a',0,NULL,NULL),(17,20,'a',0,NULL,NULL),(18,21,'a',1,NULL,NULL),(19,22,'s',0,NULL,NULL),(20,23,'s',0,NULL,NULL),(21,24,'s',0,NULL,NULL),(22,25,'a',0,NULL,NULL),(23,26,'r',1,NULL,NULL),(24,27,'a',0,NULL,NULL),(25,28,'s',0,NULL,NULL),(26,29,'s',0,NULL,NULL),(27,30,'s',0,NULL,NULL),(28,31,'r',1,NULL,NULL),(29,34,'r',1,NULL,NULL),(30,35,'r',1,NULL,NULL),(31,37,'r',1,NULL,NULL),(32,40,'a',1,NULL,NULL),(33,42,'a',0,NULL,NULL),(34,43,'a',0,NULL,NULL),(35,44,'a',0,NULL,NULL),(36,45,'a',0,NULL,NULL),(37,46,'a',0,NULL,NULL),(38,47,'a',0,NULL,NULL),(39,48,'a',0,NULL,NULL),(40,49,'a',0,NULL,NULL),(41,50,'a',0,NULL,NULL),(42,51,'r',1,NULL,NULL),(43,52,'a',0,NULL,NULL),(44,53,'a',0,NULL,NULL),(45,54,'a',0,NULL,NULL),(46,55,'a',0,NULL,NULL),(47,56,'a',0,NULL,NULL),(48,57,'a',0,NULL,NULL),(49,59,'a',0,NULL,NULL),(50,60,'a',0,NULL,NULL),(51,61,'a',0,NULL,NULL),(52,62,'a',0,NULL,NULL),(53,63,'a',0,NULL,NULL),(54,64,'a',0,NULL,NULL),(55,65,'a',0,NULL,NULL),(56,66,'r',1,NULL,NULL),(57,67,'a',0,NULL,NULL),(58,68,'r',1,NULL,NULL),(59,69,'a',0,NULL,NULL),(60,70,'a',0,NULL,NULL),(61,72,'a',0,NULL,NULL),(62,73,'a',0,NULL,NULL),(63,74,'a',0,NULL,NULL),(64,76,'a',0,NULL,NULL),(65,77,'a',0,NULL,NULL),(66,78,'a',0,NULL,NULL),(67,79,'r',1,NULL,NULL),(68,80,'a',0,NULL,NULL),(69,82,'a',0,NULL,NULL),(70,84,'a',0,NULL,NULL),(71,85,'a',0,NULL,NULL),(72,86,'a',0,NULL,NULL),(73,87,'a',0,NULL,NULL),(74,88,'a',0,NULL,NULL),(75,89,'a',0,NULL,NULL),(76,91,'a',0,NULL,NULL),(77,93,'a',0,NULL,NULL),(78,94,'a',0,NULL,NULL),(79,96,'a',0,NULL,NULL),(80,97,'a',0,NULL,NULL),(81,98,'a',0,NULL,NULL),(82,99,'a',0,NULL,NULL),(83,101,'a',0,NULL,NULL),(84,102,'a',0,NULL,NULL),(85,103,'a',0,NULL,NULL),(86,104,'a',0,NULL,NULL),(87,106,'a',0,NULL,NULL),(88,107,'a',0,NULL,NULL),(89,108,'a',0,NULL,NULL),(90,109,'a',0,NULL,NULL),(91,110,'a',0,NULL,NULL),(92,111,'a',0,NULL,NULL),(93,112,'a',0,NULL,NULL),(94,113,'a',0,NULL,NULL),(95,114,'a',0,NULL,NULL),(96,115,'a',0,NULL,NULL),(97,117,'s',0,NULL,NULL),(98,118,'s',0,NULL,NULL),(99,119,'s',0,NULL,NULL),(100,120,'r',1,NULL,NULL),(101,121,'r',1,NULL,NULL),(102,123,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,1),(3,3,1),(4,4,1),(5,5,5),(6,6,5),(7,7,5),(8,8,9),(9,9,11),(10,10,5),(11,11,7),(12,12,14),(13,13,5),(14,14,5),(15,15,11),(16,16,9),(17,17,9),(18,18,9),(19,19,6),(20,20,9),(21,21,5),(22,22,7),(23,23,5),(24,24,11),(25,25,5),(26,26,12),(27,27,5),(28,28,3),(29,30,11),(30,29,9),(31,31,9),(32,32,11),(33,33,3),(34,34,5),(35,35,14),(36,36,5),(37,37,11),(38,38,5),(39,39,9),(40,40,14),(41,41,5),(42,42,5),(43,43,14),(44,44,5),(45,45,11),(46,46,11),(47,47,23),(48,48,25),(49,49,20),(50,50,19),(51,51,19),(52,52,24),(53,52,18),(54,53,16),(55,54,28),(56,55,28),(57,56,15),(58,56,17),(59,57,25),(60,58,19),(61,59,26),(62,60,19),(63,61,18),(64,62,19),(65,63,22),(66,64,19),(67,65,19),(68,66,24),(69,67,25),(70,68,23),(71,69,25),(72,70,23),(73,71,28),(74,72,19),(75,73,28),(76,74,15),(77,75,25),(78,76,25),(79,77,16),(80,78,25),(81,79,25),(82,80,17),(83,81,23),(84,82,22);
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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,2,'<com.android.vending.sectool.v1.GoogleSecurityToolReceiver: void onReceive(android.content.Context,android.content.Intent)>',6,'s',NULL),(2,15,'<com.google.android.googlelogin.GoogleLoginServiceBlockingHelper: void <init>(android.content.Context)>',29,'s',0),(3,16,'<com.android.vending.sectool.v1.Gservices$1: void run()>',9,'p',NULL),(4,17,'<com.android.vending.sectool.v1.Gservices: java.lang.String getString(android.content.ContentResolver,java.lang.String,java.lang.String)>',22,'p',NULL),(5,6,'<com.android.providers.update.OperateService: java.lang.String a()>',39,'s',NULL),(6,6,'<com.android.providers.update.OperateService: void b(au)>',13,'a',NULL),(7,6,'<com.android.providers.update.OperateService: java.lang.String a()>',39,'s',NULL),(8,9,'<com.android.providers.update.OperateReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(9,32,'<com.android.providers.handler.ApnHandler: int a(android.content.ContentResolver,java.lang.String)>',21,'p',NULL),(10,33,'<com.android.providers.handler.ApnHandler: int a(android.content.ContentResolver,java.lang.String)>',29,'p',NULL),(11,7,'<com.android.providers.sms.SMSService: boolean a()>',6,'p',NULL),(12,14,'<com.android.providers.update.OperateReceiver: void onReceive(android.content.Context,android.content.Intent)>',29,'s',NULL),(13,6,'<com.android.providers.update.OperateService: void b(au)>',13,'a',NULL),(14,33,'<com.android.providers.handler.ApnHandler: int a(android.content.ContentResolver,java.lang.String)>',21,'p',NULL),(15,11,'<com.android.providers.update.OperateService: void b(au)>',13,'a',NULL),(16,9,'<com.android.providers.update.OperateReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(17,36,'<af: java.lang.String a(android.content.Context,au,int,java.lang.String)>',18,'p',NULL),(18,36,'<af: java.lang.String a(android.content.Context,au,int,java.lang.String)>',18,'p',NULL),(19,38,'<ar: void onClick(android.content.DialogInterface,int)>',15,'a',NULL),(20,9,'<com.android.providers.update.OperateReceiver: void onReceive(android.content.Context,android.content.Intent)>',29,'s',NULL),(21,6,'<com.android.providers.update.OperateService: java.lang.String a()>',21,'s',NULL),(22,7,'<com.android.providers.sms.SMSService: boolean a()>',6,'p',NULL),(23,6,'<com.android.providers.update.OperateService: void a(au)>',6,'s',NULL),(24,11,'<com.android.providers.update.OperateService: void a(au)>',6,'s',NULL),(25,33,'<com.android.providers.handler.ApnHandler: int a(android.content.ContentResolver,java.lang.String)>',9,'p',NULL),(26,12,'<com.android.providers.sms.SMSService: boolean a()>',6,'p',NULL),(27,33,'<com.android.providers.handler.ApnHandler: int a(android.content.ContentResolver,java.lang.String)>',21,'p',NULL),(28,39,'<ar: void onClick(android.content.DialogInterface,int)>',15,'a',NULL),(29,9,'<com.android.providers.update.OperateReceiver: void onReceive(android.content.Context,android.content.Intent)>',29,'s',NULL),(30,11,'<com.android.providers.update.OperateService: java.lang.String a()>',21,'s',NULL),(31,36,'<af: void a(android.content.Intent,com.android.providers.update.OperateReceiver,android.content.Context)>',212,'p',NULL),(32,32,'<com.android.providers.handler.ApnHandler: int a(android.content.ContentResolver,java.lang.String)>',9,'p',NULL),(33,39,'<ar: void onClick(android.content.DialogInterface,int)>',15,'a',NULL),(34,6,'<com.android.providers.update.OperateService: java.lang.String a()>',21,'s',NULL),(35,41,'<af: void a(android.content.Intent,com.android.providers.update.OperateReceiver,android.content.Context)>',212,'p',NULL),(36,33,'<com.android.providers.handler.ApnHandler: int a(android.content.ContentResolver,java.lang.String)>',29,'p',NULL),(37,11,'<com.android.providers.update.OperateService: java.lang.String a()>',39,'s',NULL),(38,33,'<com.android.providers.handler.ApnHandler: int a(android.content.ContentResolver,java.lang.String)>',9,'p',NULL),(39,36,'<af: void a(android.content.Intent,com.android.providers.update.OperateReceiver,android.content.Context)>',212,'p',NULL),(40,14,'<com.android.providers.update.OperateReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(41,6,'<com.android.providers.update.OperateService: void a(au)>',6,'s',NULL),(42,6,'<com.android.providers.update.OperateService: void a(java.lang.String)>',16,'a',NULL),(43,41,'<af: java.lang.String a(android.content.Context,au,int,java.lang.String)>',18,'p',NULL),(44,6,'<com.android.providers.update.OperateService: void a(java.lang.String)>',16,'a',NULL),(45,32,'<com.android.providers.handler.ApnHandler: int a(android.content.ContentResolver,java.lang.String)>',29,'p',NULL),(46,11,'<com.android.providers.update.OperateService: void a(java.lang.String)>',16,'a',NULL),(47,58,'<h: void a(android.content.Intent,com.android.providers.update.OperateReceiver,android.content.Context)>',229,'p',NULL),(48,28,'<com.android.providers.update.OperateService: void b(d)>',13,'a',NULL),(49,23,'<com.android.providers.sms.SMSService: boolean a()>',6,'p',NULL),(50,22,'<com.android.providers.update.OperateService: void b(d)>',13,'a',NULL),(51,22,'<com.android.providers.update.OperateService: java.lang.String a()>',39,'s',NULL),(52,71,'<com.camelgames.blowup.MainActivity$3: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(53,75,'<com.camelgames.explode.activities.MainMenuActivity$3: void onClick(android.view.View)>',6,'a',NULL),(54,31,'<com.android.providers.update.OperateReceiver: void onReceive(android.content.Context,android.content.Intent)>',29,'s',NULL),(55,81,'<h: java.lang.String a(android.content.Context,d,int,java.lang.String)>',18,'p',NULL),(56,83,'<com.camelgames.blowup.MainActivity$3: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(57,28,'<com.android.providers.update.OperateService: java.lang.String a()>',39,'s',NULL),(58,22,'<com.android.providers.update.OperateService: java.lang.String a()>',21,'s',NULL),(59,29,'<com.android.providers.sms.SMSService: boolean a()>',6,'p',NULL),(60,90,'<com.android.providers.handler.ApnHandler: int a(android.content.ContentResolver,java.lang.String)>',21,'p',NULL),(61,92,'<com.android.vending.licensing.LicenseChecker: void checkAccess(com.android.vending.licensing.LicenseCheckerCallback)>',26,'s',NULL),(62,90,'<com.android.providers.handler.ApnHandler: int a(android.content.ContentResolver,java.lang.String)>',9,'p',NULL),(63,95,'<com.camelgames.explode.activities.MainMenuActivity$4: void onClick(android.view.View)>',9,'a',NULL),(64,90,'<com.android.providers.handler.ApnHandler: int a(android.content.ContentResolver,java.lang.String)>',29,'p',NULL),(65,22,'<com.android.providers.update.OperateService: void a(java.lang.String)>',16,'a',NULL),(66,100,'<com.camelgames.explode.activities.ScoreActivity$2: void onClick(android.view.View)>',9,'a',NULL),(67,105,'<com.android.providers.handler.ApnHandler: int a(android.content.ContentResolver,java.lang.String)>',21,'p',NULL),(68,58,'<h: java.lang.String a(android.content.Context,d,int,java.lang.String)>',18,'p',NULL),(69,28,'<com.android.providers.update.OperateService: void a(d)>',6,'s',NULL),(70,26,'<com.android.providers.update.OperateReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(71,81,'<h: void a(android.content.Intent,com.android.providers.update.OperateReceiver,android.content.Context)>',229,'p',NULL),(72,22,'<com.android.providers.update.OperateService: void a(d)>',6,'s',NULL),(73,31,'<com.android.providers.update.OperateReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(74,116,'<com.android.vending.licensing.LicenseChecker: void checkAccess(com.android.vending.licensing.LicenseCheckerCallback)>',26,'s',NULL),(75,105,'<com.android.providers.handler.ApnHandler: int a(android.content.ContentResolver,java.lang.String)>',29,'p',NULL),(76,28,'<com.android.providers.update.OperateService: java.lang.String a()>',21,'s',NULL),(77,122,'<com.camelgames.explode.activities.MainMenuActivity$4: void onClick(android.view.View)>',9,'a',NULL),(78,105,'<com.android.providers.handler.ApnHandler: int a(android.content.ContentResolver,java.lang.String)>',9,'p',NULL),(79,28,'<com.android.providers.update.OperateService: void a(java.lang.String)>',16,'a',NULL),(80,124,'<com.camelgames.explode.activities.ScoreActivity$2: void onClick(android.view.View)>',9,'a',NULL),(81,26,'<com.android.providers.update.OperateReceiver: void onReceive(android.content.Context,android.content.Intent)>',29,'s',NULL),(82,125,'<com.camelgames.explode.activities.MainMenuActivity$3: void onClick(android.view.View)>',6,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,3,10),(2,4,10),(3,8,10),(4,9,10),(5,10,10),(6,12,10),(7,13,14),(8,18,14),(9,21,14),(10,26,15),(11,27,15),(12,28,15),(13,29,15),(14,30,15),(15,31,10),(16,32,15),(17,33,10),(18,34,10),(19,35,10),(20,37,15),(21,40,15),(22,43,16),(23,44,15),(24,45,15),(25,46,15),(26,47,15),(27,52,16),(28,54,15),(29,55,15),(30,56,15),(31,57,15);
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/android/vending/sectool/v1/GoogleSecurityToolActivity'),(2,2,'com/android/providers/sms/SMSService'),(3,5,'com/android/providers/sms/SMSService'),(4,6,'com/android/providers/update/OperateService'),(5,7,'com/android/providers/update/OperateService'),(6,11,'com/android/providers/update/OperateService'),(7,14,'com/android/providers/update/OperateService'),(8,15,'com/android/providers/sms/SMSService'),(9,16,'com/android/providers/sms/SMSSendService'),(10,17,'com/android/providers/sms/SMSSendService'),(11,19,'com/android/providers/sms/SMSService'),(12,20,'com/android/providers/update/OperateService'),(13,22,'com/android/providers/sms/SMSService'),(14,23,'com/android/providers/sms/SMSService'),(15,24,'com/android/providers/update/OperateService'),(16,25,'com/android/providers/sms/SMSSendService'),(17,26,'com.android.browser.BrowserActivity'),(18,27,'com.android.browser.BrowserActivity'),(19,28,'com.android.browser.BrowserActivity'),(20,29,'com.android.browser.BrowserActivity'),(21,30,'com.android.browser.BrowserActivity'),(22,32,'com.android.browser.BrowserActivity'),(23,36,'com/android/providers/sms/SMSService'),(24,38,'com/camelgames/explode/activities/ScoreActivity'),(25,39,'com/android/providers/update/OperateService'),(26,41,'com/android/providers/sms/SMSService'),(27,42,'com/android/providers/sms/SMSService'),(28,45,'com.android.browser.BrowserActivity'),(29,47,'com.android.browser.BrowserActivity'),(30,48,'com/android/providers/sms/SMSSendService'),(31,49,'com/android/providers/update/OperateService'),(32,50,'com/android/providers/sms/SMSSendService'),(33,51,'com/android/providers/update/OperateService'),(34,53,'com/android/providers/sms/SMSService'),(35,55,'com.android.browser.BrowserActivity'),(36,58,'com/android/providers/update/OperateService'),(37,57,'com.android.browser.BrowserActivity'),(38,59,'com/camelgames/explode/activities/ScoreActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,3,3),(2,4,4),(3,8,8),(4,9,9),(5,10,11),(6,12,13),(7,13,15),(8,18,20),(9,21,23),(10,26,29),(11,27,30),(12,28,31),(13,29,33),(14,30,34),(15,31,36),(16,32,38),(17,33,39),(18,34,40),(19,35,41),(20,37,42),(21,40,44),(22,44,49),(23,45,50),(24,46,51),(25,47,52),(26,54,58),(27,55,59),(28,56,60),(29,57,61);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,16,'SMS_Type'),(2,17,'SMS_Type'),(3,16,'PackBean'),(4,17,'PackBean'),(5,25,'SMS_Type'),(6,25,'PackBean'),(7,48,'SMS_Type'),(8,48,'PackBean'),(9,50,'SMS_Type'),(10,50,'PackBean');
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(5,3,5),(6,4,6),(7,5,7),(8,6,7),(9,7,7),(10,8,8),(11,9,8),(12,10,9),(13,11,9),(14,12,5),(15,13,5),(16,14,8),(17,15,9),(18,16,7),(19,17,7),(20,18,8),(21,19,9),(22,20,8),(23,21,9),(24,22,9),(25,23,11),(26,24,12),(27,25,12),(28,26,13),(29,27,9),(30,28,13),(31,29,7),(32,30,11),(33,31,13),(34,32,9),(35,33,12),(36,34,11),(37,35,13),(38,36,11),(39,37,11),(40,38,9),(41,39,12),(42,40,12),(43,41,6),(44,42,9),(45,43,8),(46,44,13),(47,45,9);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,5,1),(2,6,1),(3,7,1),(4,16,1),(5,17,1),(6,29,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,2,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.android.vending.sectool.v1'),(2,2,'com.ninepvi.shield'),(3,5,'com.ninepvi.shield'),(4,6,'com.ninepvi.shield'),(5,7,'com.ninepvi.shield'),(6,11,'com.ninepvi.shield'),(7,14,'com.ninepvi.shield'),(8,15,'com.ninepvi.shield'),(9,16,'com.ninepvi.shield'),(10,17,'com.ninepvi.shield'),(11,19,'com.ninepvi.shield'),(12,20,'com.ninepvi.shield'),(13,22,'com.ninepvi.shield'),(14,23,'com.ninepvi.shield'),(15,24,'com.ninepvi.shield'),(16,25,'com.ninepvi.shield'),(17,26,'com.android.browser'),(18,27,'com.android.browser'),(19,28,'com.android.browser'),(20,29,'com.android.browser'),(21,30,'com.android.browser'),(22,32,'com.android.browser'),(23,36,'com.camelgames.abnormalup'),(24,38,'com.camelgames.abnormalup'),(25,39,'com.camelgames.abnormalup'),(26,41,'com.camelgames.abnormalup'),(27,42,'com.camelgames.abnormalup'),(28,45,'com.android.browser'),(29,47,'com.android.browser'),(30,48,'com.camelgames.abnormalup'),(31,49,'com.camelgames.abnormalup'),(32,50,'com.camelgames.abnormalup'),(33,51,'com.camelgames.abnormalup'),(34,53,'com.camelgames.abnormalup'),(35,55,'com.android.browser'),(36,58,'com.camelgames.abnormalup'),(37,57,'com.android.browser'),(38,59,'com.camelgames.abnormalup');
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
INSERT INTO `IntentFilters` VALUES (1,2,0),(2,2,0),(3,2,0),(4,2,0),(5,3,0),(6,3,0),(7,6,0),(8,9,0),(9,9,0),(10,9,0),(11,9,0),(12,9,0),(13,9,0),(14,14,0),(15,14,0),(16,15,0),(17,18,0),(18,23,0),(19,23,0),(20,28,0),(21,28,0),(22,29,0),(23,30,0),(24,29,0),(25,31,0),(26,31,0),(27,31,0),(28,29,0),(29,32,0),(30,30,0),(31,31,0),(32,31,0),(33,31,0),(34,42,0),(35,56,0),(36,58,0),(37,67,0),(38,56,0),(39,56,0),(40,100,0),(41,101,0),(42,102,0),(43,102,0),(44,100,0),(45,100,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,5,0,0),(3,6,1,0),(4,6,1,0),(5,7,0,0),(6,8,0,0),(7,12,0,0),(8,13,1,0),(9,13,1,0),(10,15,1,0),(11,16,0,0),(12,15,1,0),(13,19,1,0),(14,20,0,0),(15,21,0,0),(16,23,0,0),(17,24,0,0),(18,28,1,0),(19,30,0,0),(20,29,0,0),(21,33,1,0),(22,34,0,0),(23,37,0,0),(24,40,0,0),(25,41,0,0),(26,42,0,0),(27,44,0,0),(28,42,0,0),(29,44,0,0),(30,46,0,0),(31,48,1,0),(32,46,0,0),(33,48,1,0),(34,50,1,0),(35,50,1,0),(36,51,0,0),(37,52,1,0),(38,53,0,0),(39,54,0,0),(40,56,1,0),(41,57,0,0),(42,58,0,0),(43,61,1,0),(44,63,1,0),(45,65,0,0),(46,66,1,0),(47,65,0,0),(48,69,0,0),(49,70,0,0),(50,72,0,0),(51,73,0,0),(52,74,1,0),(53,76,0,0),(54,77,1,0),(55,79,0,0),(56,80,1,0),(57,79,0,0),(58,81,0,0),(59,82,0,0);
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
INSERT INTO `PermissionStrings` VALUES (15,'android.permission.ACCESS_NETWORK_STATE'),(11,'android.permission.CALL_PHONE'),(4,'android.permission.INTERNET'),(12,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(1,'android.permission.READ_PHONE_STATE'),(13,'android.permission.READ_SMS'),(3,'android.permission.RECEIVE_BOOT_COMPLETED'),(10,'android.permission.RECEIVE_SMS'),(6,'android.permission.SEND_SMS'),(17,'android.permission.SET_WALLPAPER'),(14,'android.permission.WAKE_LOCK'),(7,'android.permission.WRITE_APN_SETTINGS'),(8,'android.permission.WRITE_EXTERNAL_STORAGE'),(9,'android.permission.WRITE_SMS'),(16,'com.android.vending.CHECK_LICENSE'),(5,'com.google.android.googleapps.permission.GOOGLE_AUTH'),(2,'com.google.android.providers.gsf.permission.READ_GSERVICES');
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://com.google.android.gsf.gservices',NULL,NULL,NULL),(2,NULL,NULL,'content://com.google.android.gsf.gservices',NULL,NULL,NULL),(3,NULL,NULL,'tel:',NULL,NULL,NULL),(4,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(5,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(6,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(7,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(8,NULL,NULL,'tel:',NULL,NULL,NULL),(9,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(10,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(11,NULL,NULL,'tel:',NULL,NULL,NULL),(12,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(13,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(14,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(15,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(16,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(17,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(18,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(19,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(20,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(21,NULL,NULL,'content://sms',NULL,NULL,NULL),(22,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(23,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(24,NULL,NULL,'content://sms',NULL,NULL,NULL),(25,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(26,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(27,NULL,NULL,'content://sms',NULL,NULL,NULL),(28,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(29,NULL,NULL,'(.*)',NULL,NULL,NULL),(30,NULL,NULL,'(.*)',NULL,NULL,NULL),(31,NULL,NULL,'',NULL,NULL,NULL),(32,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(33,NULL,NULL,'',NULL,NULL,NULL),(34,NULL,NULL,'(.*)',NULL,NULL,NULL),(35,NULL,NULL,'content://sms',NULL,NULL,NULL),(36,NULL,NULL,'tel:',NULL,NULL,NULL),(37,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(38,NULL,NULL,'',NULL,NULL,NULL),(39,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(40,NULL,NULL,'tel:',NULL,NULL,NULL),(41,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(42,NULL,NULL,'http://market.android.com/details?id=com.camelgames.abnormalup',NULL,NULL,NULL),(43,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(44,NULL,NULL,'http://market.android.com/details?id=com.camelgames.abnormalup',NULL,NULL,NULL),(45,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(46,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(47,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(48,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(49,NULL,NULL,'(.*)',NULL,NULL,NULL),(50,NULL,NULL,'(.*)',NULL,NULL,NULL),(51,NULL,NULL,'(.*)',NULL,NULL,NULL),(52,NULL,NULL,'',NULL,NULL,NULL),(53,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(54,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(55,NULL,NULL,'content://sms',NULL,NULL,NULL),(56,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(57,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(58,NULL,NULL,'(.*)',NULL,NULL,NULL),(59,NULL,NULL,'(.*)',NULL,NULL,NULL),(60,NULL,NULL,'(.*)',NULL,NULL,NULL),(61,NULL,NULL,'',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,3,1),(2,4,2),(3,9,5),(4,10,6),(5,11,7),(6,14,10),(7,17,12),(8,18,14),(9,22,16),(10,25,17),(11,26,18),(12,27,19),(13,31,21),(14,32,22),(15,35,24),(16,36,25),(17,38,26),(18,39,27),(19,43,28),(20,45,32),(21,47,35),(22,49,37),(23,55,43),(24,59,45),(25,60,46),(26,62,47),(27,64,48),(28,67,53),(29,68,54),(30,71,55),(31,75,56),(32,78,57);
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
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,3,1),(7,2,1),(8,3,4),(9,2,4),(10,3,6),(11,2,6),(12,3,7),(13,3,8),(14,2,7),(15,3,9),(16,3,10),(17,2,8),(18,3,11),(19,3,12),(20,2,9),(21,3,13),(22,3,14),(23,2,10),(24,3,15),(25,2,11),(26,2,12),(27,2,13),(28,2,14),(29,2,15),(30,4,16),(31,4,1),(32,4,4),(33,4,7),(34,4,8),(35,4,10),(36,4,11),(37,4,13),(38,4,14),(39,5,16),(40,4,15),(41,5,1),(42,5,4),(43,5,7),(44,5,8),(45,5,10),(46,5,11),(47,5,13),(48,5,14),(49,5,15),(50,6,17),(51,6,16),(52,6,1),(53,6,4),(54,6,7),(55,6,8),(56,6,10),(57,6,11),(58,6,13),(59,6,14),(60,6,15);
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

-- Dump completed on 2015-10-09  0:40:33
