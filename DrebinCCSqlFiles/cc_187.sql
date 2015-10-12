-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_187
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
INSERT INTO `ActionStrings` VALUES (5,'ACTION_ALARM_REPEATING'),(3,'android.intent.action.BOOT_COMPLETED'),(11,'android.intent.action.CHOOSER'),(1,'android.intent.action.MAIN'),(7,'android.intent.action.PACKAGE_ADDED'),(8,'android.intent.action.PACKAGE_REMOVED'),(4,'android.intent.action.PHONE_STATE'),(18,'android.intent.action.PICK'),(14,'android.intent.action.SCREEN_OFF'),(15,'android.intent.action.SCREEN_ON'),(17,'android.intent.action.SEND'),(2,'android.intent.action.VIEW'),(16,'android.media.action.IMAGE_CAPTURE'),(6,'android.net.conn.CONNECTIVITY_CHANGE'),(10,'android.net.wifi.PICK_WIFI_NETWORK'),(9,'android.net.wifi.WIFI_STATE_CHANGED'),(13,'android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(12,'android.settings.APPLICATION_SETTINGS');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applications`
--

LOCK TABLES `Applications` WRITE;
/*!40000 ALTER TABLE `Applications` DISABLE KEYS */;
INSERT INTO `Applications` VALUES (1,'de.trier.infsec.koch.droidsheep',5),(2,'de.trier.infsec.koch.droidsheep',15),(3,'com.z4mod.z4root',6),(4,'cn.buding.coupon',102),(5,'com.aol.mobile.aim',6);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'de.trier.infsec.koch.droidsheep.activities.ListenActivity'),(2,1,'de.trier.infsec.koch.droidsheep.activities.HijackActivity'),(3,1,'de.trier.infsec.koch.droidsheep.arpspoof.ArpspoofService'),(4,2,'de.trier.infsec.koch.droidsheep.activities.ListenActivity'),(5,2,'de.trier.infsec.koch.droidsheep.activities.HijackActivity'),(6,2,'de.trier.infsec.koch.droidsheep.activities.DonateActivity'),(7,2,'de.trier.infsec.koch.droidsheep.activities.UpdateActivity'),(8,2,'de.trier.infsec.koch.droidsheep.services.ArpspoofService'),(9,2,'de.trier.infsec.koch.droidsheep.services.DroidSheepService'),(10,3,'com.z4mod.z4root.z4root'),(11,3,'com.z4mod.z4root.Phase1'),(12,3,'com.z4mod.z4root.Phase2'),(13,3,'com.z4mod.z4root.PhaseRemove'),(14,3,'com.admob.android.ads.AdMobActivity'),(15,3,'com.z4mod.z4root.AlarmReceiver'),(16,4,'cn.buding.coupon.Main'),(17,4,'cn.buding.coupon.activity.BaseTabHost'),(18,4,'cn.buding.coupon.activity.BaseActivity'),(19,4,'cn.buding.coupon.activity.BottomTabHost'),(20,4,'cn.buding.coupon.activity.ShopsActivity'),(21,4,'cn.buding.coupon.activity.CouponsActivity'),(22,4,'cn.buding.coupon.activity.DetailsActivity'),(23,4,'cn.buding.coupon.activity.FavorActivity'),(24,4,'cn.buding.coupon.activity.PageableActivity'),(25,4,'cn.buding.coupon.activity.PreferencesActivity'),(26,4,'cn.buding.coupon.activity.AboutActivity'),(27,4,'cn.buding.coupon.core.SystemService'),(28,4,'cn.buding.coupon.core.loaddata.LoadService2'),(29,4,'cn.buding.coupon.core.SystemEventReceiver'),(30,4,'cn.buding.coupon.core.PackageReceiver'),(31,4,'cn.buding.coupon.core.loaddata.LoadReceiver'),(32,1,'de.trier.infsec.koch.droidsheep.objects.WifiChangeChecker'),(33,5,'com.aol.mobile.aim.ui.AimActivity'),(34,5,'com.aol.mobile.ui.EULAActivity'),(35,5,'com.aol.mobile.aim.ui.SignInActivity'),(36,5,'com.aol.mobile.aim.ui.BuddyInfoActivity'),(37,5,'com.aol.mobile.aim.ui.ConversationActivity'),(38,5,'com.aol.mobile.aim.ui.LifestreamDetailsActivity'),(39,5,'com.aol.mobile.aim.ui.HelpActivity'),(40,5,'com.aol.mobile.aim.ui.MeTabStatusView'),(41,5,'com.aol.mobile.aim.ui.AIMPreferencesActivity'),(42,5,'com.aol.mobile.aim.ui.ImagePickerActivity'),(43,5,'com.aol.mobile.aim.ui.LocationLifestreamActivity'),(44,5,'com.aol.mobile.aim.ui.LocationsListActivity'),(45,5,'com.aol.mobile.aim.ui.NotifyActivity'),(46,5,'com.aol.mobile.aim.ui.CrossPostServiceListActivity'),(47,5,'com.aol.mobile.models.BackgroundService'),(48,2,'de.trier.infsec.koch.droidsheep.objects.WifiChangeChecker'),(49,2,'de.trier.infsec.koch.droidsheep.helper.MailHelper'),(50,3,'com.z4mod.z4root.z4root$3'),(51,3,'com.z4mod.z4root.z4root$1'),(52,3,'com.z4mod.z4root.Phase1$4'),(53,3,'com.z4mod.z4root.z4root$2'),(54,4,'cn.buding.coupon.core.loaddata.c'),(55,4,'cn.buding.coupon.core.ScreenReceiver'),(56,4,'cn.buding.coupon.activity.DetailsActivity$1$1'),(57,4,'cn.buding.coupon.core.x'),(58,5,'com.aol.mobile.utils.Utils'),(59,5,'com.aol.mobile.aim.ui.BuddyListTab$1'),(60,5,'com.aol.mobile.aim.ui.MeTab$11'),(61,5,'com.aol.mobile.ui.MainActivityBase'),(62,5,'com.aol.mobile.aim.ui.MeTabStatusView$7'),(63,5,'com.aol.mobile.aim.ui.MeTab$4'),(64,5,'com.aol.mobile.ui.LifestreamListBase'),(65,5,'com.aol.mobile.aim.models.AimNotificationManager$1'),(66,5,'com.aol.mobile.models.Session$2'),(67,5,'com.aol.mobile.aim.ui.BuddyInfoActivity$5'),(68,5,'com.aol.mobile.aim.ui.ConversationView$1'),(69,5,'com.aol.mobile.ui.HelpActivityBase$2'),(70,5,'com.aol.mobile.aim.ui.IMsTab$5');
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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,2,'MOBILE'),(2,3,'localBin'),(3,2,'ID'),(4,3,'interface'),(5,3,'gateway'),(6,5,'MOBILE'),(7,8,'localBin'),(8,8,'interface'),(9,8,'gateway'),(10,14,'s'),(11,14,'c'),(12,14,'u'),(13,14,'ru'),(14,14,'sku'),(15,14,'oi'),(16,5,'AUTH'),(17,14,'su'),(18,14,'p'),(19,14,'nosk'),(20,14,'t'),(21,14,'sd'),(22,14,'tr'),(23,14,'or'),(24,14,'sin'),(25,14,'json'),(26,14,'$'),(27,14,'ad'),(28,14,'b'),(29,14,'skd'),(30,14,'cs'),(31,14,'cbo'),(32,14,'rd'),(33,14,'msm'),(34,14,'sc'),(35,14,'a'),(36,14,'int'),(37,14,'au'),(38,14,'o'),(39,14,'ap'),(40,14,'si'),(41,14,'mi'),(42,21,'shop_name'),(43,21,'shop_coupon_type'),(44,23,'UMENG_CHANNEL'),(45,16,'UMENG_CHANNEL'),(46,26,'UMENG_CHANNEL'),(47,20,'UMENG_CHANNEL'),(48,18,'UMENG_CHANNEL'),(49,25,'UMENG_CHANNEL'),(50,21,'UMENG_CHANNEL'),(51,22,'UMENG_CHANNEL'),(52,23,'UMENG_APPKEY'),(53,16,'UMENG_APPKEY'),(54,26,'UMENG_APPKEY'),(55,20,'UMENG_APPKEY'),(56,18,'UMENG_APPKEY'),(57,25,'UMENG_APPKEY'),(58,21,'UMENG_APPKEY'),(59,22,'UMENG_APPKEY'),(60,19,'currentTab'),(61,17,'currentTab'),(62,27,'from'),(63,28,'RootExecuteInfo'),(64,29,'networkInfo'),(65,38,'temp'),(66,36,'groups'),(67,38,'lsMediaViewActivityId'),(68,38,'navigationPath'),(69,38,'lsMediaViewOneRow'),(70,35,'lsMediaViewActivityId'),(71,35,'navigationPath'),(72,35,'lsMediaViewOneRow'),(73,36,'lsMediaViewActivityId'),(74,36,'navigationPath'),(75,36,'lsMediaViewOneRow'),(76,40,'data'),(77,44,'filter_text'),(78,42,'has_multiple_selection'),(79,44,'lat'),(80,43,'locationDescription'),(81,42,'num_selected'),(82,38,'id'),(83,43,'locationName'),(84,38,'locationLinkDisabled'),(85,41,'PREFERENCES_FIRST_SCREEN'),(86,45,'aol.client.CURRENT_TAB'),(87,40,'selectedServiceList'),(88,40,'selected_uris'),(89,40,'aol.client.aim.metabstatusview.uris'),(90,37,'aol.client.aim.conversation.name'),(91,36,'aimId'),(92,43,'locationVisitCount'),(93,43,'lsFilterType'),(94,44,'is_more'),(95,43,'locationAddress'),(96,44,'lon'),(97,46,'selectedServiceList'),(98,33,'aol.client.CURRENT_TAB'),(99,43,'locationId'),(100,43,'locationVisitorCount');
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'s',0,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'s',0,NULL,NULL),(9,9,'s',0,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'r',0,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'s',1,NULL,NULL),(28,28,'s',0,NULL,NULL),(29,29,'r',1,NULL,NULL),(30,30,'r',0,NULL,NULL),(31,31,'r',0,NULL,NULL),(32,32,'r',1,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'s',0,NULL,NULL),(48,48,'r',1,NULL,NULL),(49,55,'r',1,NULL,NULL),(50,65,'r',1,NULL,NULL),(51,66,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,4),(8,8,6),(9,9,4),(10,10,4),(11,11,6),(12,12,5),(13,13,4),(14,14,4),(15,15,4),(16,16,4),(17,17,4),(18,18,4),(19,19,10),(20,20,5),(21,21,4),(22,22,10),(23,23,15),(24,24,10),(25,25,11),(26,26,10),(27,27,11),(28,28,23),(29,28,26),(30,28,20),(31,28,22),(32,28,21),(33,28,18),(34,29,23),(35,29,22),(36,29,21),(37,29,20),(38,29,26),(39,29,18),(40,30,28),(41,31,31),(42,32,27),(43,33,18),(44,33,22),(45,33,23),(46,33,20),(47,33,21),(48,33,26),(49,34,18),(50,34,20),(51,34,21),(52,34,22),(53,34,23),(54,34,26),(55,35,22),(56,36,22),(57,36,21),(58,36,20),(59,36,26),(60,36,23),(61,36,18),(62,37,16),(63,37,29),(64,38,38),(65,39,33),(66,39,36),(67,39,37),(68,39,40),(69,39,39),(70,39,38),(71,39,43),(72,40,40),(73,41,33),(74,42,43),(75,42,40),(76,42,37),(77,42,38),(78,42,36),(79,42,33),(80,43,43),(81,43,33),(82,43,37),(83,43,36),(84,43,40),(85,43,38),(86,44,33),(87,45,43),(88,46,40),(89,47,33),(90,48,43),(91,48,33),(92,48,36),(93,49,40),(94,50,43),(95,51,40),(96,52,35),(97,53,45),(98,54,40),(99,54,38),(100,54,37),(101,54,43),(102,54,36),(103,54,33),(104,55,37),(105,55,36),(106,55,33),(107,55,43),(108,55,38),(109,55,40),(110,56,33),(111,57,38),(112,58,40),(113,59,33),(114,60,33),(115,60,43),(116,60,39),(117,60,40),(118,60,36),(119,60,37),(120,60,38),(121,61,33),(122,61,38),(123,61,36),(124,61,37),(125,61,43),(126,61,40),(127,62,33),(128,63,33);
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
INSERT INTO `ExitPoints` VALUES (1,1,'<de.trier.infsec.koch.droidsheep.activities.ListenActivity: void startSpoofing()>',31,'s',NULL),(2,1,'<de.trier.infsec.koch.droidsheep.activities.ListenActivity: void startSpoofing()>',31,'s',NULL),(3,1,'<de.trier.infsec.koch.droidsheep.activities.ListenActivity: void click(int,boolean)>',22,'a',NULL),(4,1,'<de.trier.infsec.koch.droidsheep.activities.ListenActivity: void click(int,boolean)>',22,'a',NULL),(5,1,'<de.trier.infsec.koch.droidsheep.activities.ListenActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(6,1,'<de.trier.infsec.koch.droidsheep.activities.ListenActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(7,4,'<de.trier.infsec.koch.droidsheep.activities.ListenActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',29,'a',NULL),(8,6,'<de.trier.infsec.koch.droidsheep.activities.DonateActivity: void onClick(android.view.View)>',12,'a',NULL),(9,4,'<de.trier.infsec.koch.droidsheep.activities.ListenActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(10,4,'<de.trier.infsec.koch.droidsheep.activities.ListenActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(11,6,'<de.trier.infsec.koch.droidsheep.activities.DonateActivity: void onClick(android.view.View)>',12,'a',NULL),(12,5,'<de.trier.infsec.koch.droidsheep.activities.HijackActivity: void showDonate()>',8,'a',NULL),(13,4,'<de.trier.infsec.koch.droidsheep.activities.ListenActivity: void click(int,boolean)>',26,'a',NULL),(14,4,'<de.trier.infsec.koch.droidsheep.activities.ListenActivity: void click(int,boolean)>',26,'a',NULL),(15,4,'<de.trier.infsec.koch.droidsheep.activities.ListenActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',23,'a',NULL),(16,49,'<de.trier.infsec.koch.droidsheep.helper.MailHelper: void sendAuthByMail(android.content.Context,de.trier.infsec.koch.droidsheep.auth.Auth)>',15,'a',NULL),(17,49,'<de.trier.infsec.koch.droidsheep.helper.MailHelper: void sendAuthByMail(android.content.Context,de.trier.infsec.koch.droidsheep.auth.Auth)>',15,'a',NULL),(18,4,'<de.trier.infsec.koch.droidsheep.activities.ListenActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',29,'a',NULL),(19,50,'<com.z4mod.z4root.z4root$3: void onClick(android.view.View)>',20,'a',NULL),(20,5,'<de.trier.infsec.koch.droidsheep.activities.HijackActivity: void showDonate()>',8,'a',NULL),(21,4,'<de.trier.infsec.koch.droidsheep.activities.ListenActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',23,'a',NULL),(22,10,'<com.z4mod.z4root.z4root: boolean onOptionsItemSelected(android.view.MenuItem)>',25,'a',NULL),(23,15,'<com.z4mod.z4root.AlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',6,'a',NULL),(24,51,'<com.z4mod.z4root.z4root$1: void onClick(android.view.View)>',17,'a',NULL),(25,52,'<com.z4mod.z4root.Phase1$4: void onClick(android.content.DialogInterface,int)>',15,'a',NULL),(26,53,'<com.z4mod.z4root.z4root$2: void onClick(android.view.View)>',17,'a',NULL),(27,52,'<com.z4mod.z4root.Phase1$4: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(28,20,'<cn.buding.coupon.activity.ShopsActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',22,'a',NULL),(29,20,'<cn.buding.coupon.activity.ShopsActivity: void onClick(android.view.View)>',6,'a',NULL),(30,54,'<cn.buding.coupon.core.loaddata.c: void c(android.content.Context)>',19,'s',NULL),(31,31,'<cn.buding.coupon.core.loaddata.LoadReceiver: void onReceive(android.content.Context,android.content.Intent)>',6,'s',NULL),(32,54,'<cn.buding.coupon.core.loaddata.c: void a(android.content.Context,java.lang.String)>',6,'s',NULL),(33,20,'<cn.buding.coupon.activity.ShopsActivity: void onClick(android.view.View)>',12,'a',NULL),(34,21,'<cn.buding.coupon.activity.CouponsActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',9,'a',NULL),(35,56,'<cn.buding.coupon.activity.DetailsActivity$1$1: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(36,23,'<cn.buding.coupon.activity.FavorActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',9,'a',NULL),(37,57,'<cn.buding.coupon.core.x: void a(android.content.Context,java.lang.String)>',10,'s',NULL),(38,38,'<com.aol.mobile.aim.ui.LifestreamDetailsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(39,58,'<com.aol.mobile.utils.Utils: void openBrowser(android.content.Context,java.lang.String)>',7,'a',NULL),(40,40,'<com.aol.mobile.aim.ui.MeTabStatusView: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(41,59,'<com.aol.mobile.aim.ui.BuddyListTab$1: boolean onChildClick(android.widget.ExpandableListView,android.view.View,int,int,long)>',19,'a',NULL),(42,58,'<com.aol.mobile.utils.Utils: void openBrowser(android.content.Context,java.lang.String,int)>',9,'a',NULL),(43,60,'<com.aol.mobile.aim.ui.MeTab$11: void onClick(android.view.View)>',8,'a',NULL),(44,61,'<com.aol.mobile.ui.MainActivityBase: void launchSigninScreen()>',12,'a',NULL),(45,43,'<com.aol.mobile.aim.ui.LocationLifestreamActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',6,'a',NULL),(46,62,'<com.aol.mobile.aim.ui.MeTabStatusView$7: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(47,63,'<com.aol.mobile.aim.ui.MeTab$4: void onClick(android.content.DialogInterface,int)>',16,'a',NULL),(48,64,'<com.aol.mobile.ui.LifestreamListBase: void showActivityDetails(com.aol.mobile.data.lifestream.LifestreamActivity,boolean)>',9,'a',NULL),(49,62,'<com.aol.mobile.aim.ui.MeTabStatusView$7: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(50,43,'<com.aol.mobile.aim.ui.LocationLifestreamActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(51,40,'<com.aol.mobile.aim.ui.MeTabStatusView: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(52,35,'<com.aol.mobile.aim.ui.SignInActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(53,45,'<com.aol.mobile.aim.ui.NotifyActivity: void onCreate(android.os.Bundle)>',20,'a',NULL),(54,67,'<com.aol.mobile.aim.ui.BuddyInfoActivity$5: void onClick(android.view.View)>',9,'a',NULL),(55,68,'<com.aol.mobile.aim.ui.ConversationView$1: void onClick(android.view.View)>',23,'a',NULL),(56,61,'<com.aol.mobile.ui.MainActivityBase: void launchEULAScreen()>',3,'a',NULL),(57,38,'<com.aol.mobile.aim.ui.LifestreamDetailsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(58,40,'<com.aol.mobile.aim.ui.MeTabStatusView: void launchLocationSettings()>',5,'a',NULL),(59,61,'<com.aol.mobile.ui.MainActivityBase: void onActivityResult(int,int,android.content.Intent)>',16,'a',NULL),(60,69,'<com.aol.mobile.ui.HelpActivityBase$2: void onClick(android.view.View)>',12,'a',NULL),(61,40,'<com.aol.mobile.aim.ui.MeTabStatusView: void selectCrossPostServiceList()>',7,'a',NULL),(62,70,'<com.aol.mobile.aim.ui.IMsTab$5: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',20,'a',NULL),(63,63,'<com.aol.mobile.aim.ui.MeTab$4: void onClick(android.content.DialogInterface,int)>',10,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,5,10),(2,6,10),(3,7,2),(4,8,2),(5,9,10),(6,10,10),(7,11,2),(8,15,2),(9,16,11),(10,17,11),(11,18,11),(12,19,11),(13,20,11),(14,21,11),(15,22,11),(16,23,11),(17,24,11),(18,25,11),(19,26,11),(20,27,11),(21,28,11),(22,29,11),(23,30,11),(24,31,11),(25,32,2),(26,36,2),(27,40,12),(28,42,13),(29,54,2),(30,55,2),(31,56,2),(32,57,2),(33,58,2),(34,59,2),(35,60,2),(36,61,2),(37,64,2),(38,65,2),(39,66,2),(40,67,2),(41,68,2),(42,69,2),(43,70,2),(44,71,2),(45,77,16),(46,80,16),(47,92,17),(48,95,18);
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'de/trier/infsec/koch/droidsheep/arpspoof/ArpspoofService'),(2,2,'de/trier/infsec/koch/droidsheep/arpspoof/ArpspoofService'),(3,3,'de/trier/infsec/koch/droidsheep/activities/HijackActivity'),(4,4,'de/trier/infsec/koch/droidsheep/activities/HijackActivity'),(5,12,'de/trier/infsec/koch/droidsheep/activities/DonateActivity'),(6,13,'de/trier/infsec/koch/droidsheep/activities/HijackActivity'),(7,14,'de/trier/infsec/koch/droidsheep/activities/HijackActivity'),(8,33,'com/z4mod/z4root/PhaseRemove'),(9,34,'de/trier/infsec/koch/droidsheep/activities/DonateActivity'),(10,35,'com/z4mod/z4root/Phase1'),(11,37,'com/z4mod/z4root/z4root'),(12,38,'com/z4mod/z4root/Phase2'),(13,39,'com/z4mod/z4root/Phase1'),(14,41,'com/z4mod/z4root/Phase1'),(15,43,'cn/buding/coupon/activity/CouponsActivity'),(16,44,'cn/buding/coupon/activity/AboutActivity'),(17,45,'cn/buding/coupon/core/SystemService'),(18,46,'cn/buding/coupon/core/loaddata/LoadService2'),(19,47,'cn/buding/coupon/core/SystemService'),(20,48,'cn/buding/coupon/activity/PreferencesActivity'),(21,49,'cn/buding/coupon/activity/DetailsActivity'),(22,50,'cn/buding/coupon/activity/PreferencesActivity'),(23,51,'cn/buding/coupon/activity/DetailsActivity'),(24,52,'cn/buding/coupon/core/SystemService'),(25,53,'com/aol/mobile/aim/ui/AIMPreferencesActivity'),(26,62,'com/aol/mobile/aim/ui/HelpActivity'),(27,63,'com/aol/mobile/aim/ui/ConversationActivity'),(28,72,'com/aol/mobile/aim/ui/MeTabStatusView'),(29,73,'com/aol/mobile/aim/ui/SignInActivity'),(30,74,'com/aol/mobile/aim/ui/SignInActivity'),(31,75,'com/aol/mobile/aim/ui/AIMPreferencesActivity'),(32,76,'com/aol/mobile/aim/ui/ImagePickerActivity'),(33,78,'com/aol/mobile/aim/ui/LifestreamDetailsActivity'),(34,79,'com/aol/mobile/aim/ui/LifestreamDetailsActivity'),(35,81,'com/aol/mobile/aim/ui/HelpActivity'),(36,82,'com/aol/mobile/aim/ui/AIMPreferencesActivity'),(37,83,'com/aol/mobile/aim/ui/HelpActivity'),(38,84,'com/aol/mobile/aim/ui/AimActivity'),(39,85,'com/aol/mobile/aim/ui/ConversationActivity'),(40,86,'com/aol/mobile/aim/ui/BuddyInfoActivity'),(41,87,'com/aol/mobile/ui/EULAActivity'),(42,88,'com/aol/mobile/aim/ui/HelpActivity'),(43,89,'com.android.settings.SecuritySettings'),(44,90,'com/aol/mobile/aim/ui/SignInActivity'),(45,91,'com/aol/mobile/aim/ui/SignInActivity'),(46,93,'com/aol/mobile/aim/ui/CrossPostServiceListActivity'),(47,94,'com/aol/mobile/aim/ui/ConversationActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,7,1),(2,8,2),(3,11,3),(4,15,4),(5,32,5),(6,36,6),(7,54,7),(8,55,8),(9,56,9),(10,57,10),(11,58,11),(12,59,12),(13,60,13),(14,61,14),(15,64,15),(16,65,16),(17,66,17),(18,67,18),(19,68,19),(20,69,20),(21,70,21),(22,71,22),(23,95,23);
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
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'gateway'),(2,1,'localBin'),(3,2,'gateway'),(4,1,'interface'),(5,2,'localBin'),(6,2,'interface'),(7,3,'MOBILE'),(8,3,'ID'),(9,4,'MOBILE'),(10,4,'ID'),(11,13,'MOBILE'),(12,14,'MOBILE'),(13,13,'AUTH'),(14,14,'AUTH'),(15,16,'android.intent.extra.INTENT'),(16,17,'android.intent.extra.INTENT'),(17,18,'android.intent.extra.INTENT'),(18,19,'android.intent.extra.TITLE'),(19,19,'android.intent.extra.INTENT'),(20,20,'android.intent.extra.INTENT'),(21,21,'android.intent.extra.INTENT'),(22,22,'android.intent.extra.TITLE'),(23,22,'android.intent.extra.INTENT'),(24,23,'android.intent.extra.TITLE'),(25,23,'android.intent.extra.INTENT'),(26,24,'android.intent.extra.INTENT'),(27,25,'android.intent.extra.INTENT'),(28,26,'android.intent.extra.TITLE'),(29,26,'android.intent.extra.INTENT'),(30,27,'android.intent.extra.TITLE'),(31,27,'android.intent.extra.INTENT'),(32,28,'android.intent.extra.INTENT'),(33,29,'android.intent.extra.TITLE'),(34,30,'android.intent.extra.TITLE'),(35,29,'android.intent.extra.INTENT'),(36,30,'android.intent.extra.INTENT'),(37,31,'android.intent.extra.TITLE'),(38,31,'android.intent.extra.INTENT'),(39,43,'shop_coupon_type'),(40,43,'shop_id'),(41,43,'shop_name'),(42,45,'from'),(43,46,'NULL-CONSTANT'),(44,47,'from'),(45,49,'position'),(46,49,'isFavor'),(47,51,'position'),(48,51,'isFavor'),(49,52,'from'),(50,54,'com.android.browser.application_id'),(51,55,'com.android.browser.application_id'),(52,56,'com.android.browser.application_id'),(53,57,'com.android.browser.application_id'),(54,58,'com.android.browser.application_id'),(55,59,'com.android.browser.application_id'),(56,60,'com.android.browser.application_id'),(57,61,'com.android.browser.application_id'),(58,63,'aol.client.aim.conversation.name'),(59,64,'com.android.browser.application_id'),(60,64,'browser.initialZoomLevel'),(61,65,'com.android.browser.application_id'),(62,65,'browser.initialZoomLevel'),(63,66,'com.android.browser.application_id'),(64,66,'browser.initialZoomLevel'),(65,67,'com.android.browser.application_id'),(66,67,'browser.initialZoomLevel'),(67,68,'com.android.browser.application_id'),(68,68,'browser.initialZoomLevel'),(69,69,'com.android.browser.application_id'),(70,69,'browser.initialZoomLevel'),(71,70,'com.android.browser.application_id'),(72,70,'browser.initialZoomLevel'),(73,71,'com.android.browser.application_id'),(74,71,'browser.initialZoomLevel'),(75,73,'(.*)'),(76,76,'num_selected'),(77,76,'has_multiple_selection'),(78,78,'id'),(79,78,'locationLinkDisabled'),(80,78,'temp'),(81,79,'id'),(82,79,'locationLinkDisabled'),(83,85,'aol.client.aim.conversation.name'),(84,86,'aimId'),(85,90,'(.*)'),(86,92,'android.intent.extra.SUBJECT'),(87,92,'android.intent.extra.EMAIL'),(88,93,'selectedServiceList'),(89,94,'aol.client.aim.conversation.name');
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,2),(5,5,1),(6,6,2),(7,7,2),(8,8,2),(9,9,1),(10,10,2),(11,11,2),(12,12,2),(13,13,1),(14,14,1),(15,15,1),(16,15,3),(17,16,3),(18,16,4),(19,16,5),(20,16,6),(21,17,7),(22,17,8),(23,18,9),(24,19,9),(25,20,1),(26,21,9),(27,22,9),(28,23,14),(29,23,15),(30,24,6),(31,25,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,2),(5,5,1),(6,6,2),(7,7,2),(8,8,2),(9,9,1),(10,10,2),(11,11,2),(12,12,2),(13,13,1),(14,14,1),(15,15,1),(16,20,1);
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
INSERT INTO `IFData` VALUES (1,17,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,92,'message','rfc822');
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'de.trier.infsec.koch.droidsheep'),(2,2,'de.trier.infsec.koch.droidsheep'),(3,3,'de.trier.infsec.koch.droidsheep'),(4,4,'de.trier.infsec.koch.droidsheep'),(5,12,'de.trier.infsec.koch.droidsheep'),(6,13,'de.trier.infsec.koch.droidsheep'),(7,14,'de.trier.infsec.koch.droidsheep'),(8,33,'com.z4mod.z4root'),(9,34,'de.trier.infsec.koch.droidsheep'),(10,35,'com.z4mod.z4root'),(11,37,'com.z4mod.z4root'),(12,38,'com.z4mod.z4root'),(13,39,'com.z4mod.z4root'),(14,41,'com.z4mod.z4root'),(15,43,'cn.buding.coupon'),(16,44,'cn.buding.coupon'),(17,45,'cn.buding.coupon'),(18,46,'cn.buding.coupon'),(19,47,'cn.buding.coupon'),(20,48,'cn.buding.coupon'),(21,49,'cn.buding.coupon'),(22,50,'cn.buding.coupon'),(23,51,'cn.buding.coupon'),(24,52,'cn.buding.coupon'),(25,53,'com.aol.mobile.aim'),(26,62,'com.aol.mobile.aim'),(27,63,'com.aol.mobile.aim'),(28,72,'com.aol.mobile.aim'),(29,73,'com.aol.mobile.aim'),(30,74,'com.aol.mobile.aim'),(31,75,'com.aol.mobile.aim'),(32,76,'com.aol.mobile.aim'),(33,78,'com.aol.mobile.aim'),(34,79,'com.aol.mobile.aim'),(35,81,'com.aol.mobile.aim'),(36,82,'com.aol.mobile.aim'),(37,83,'com.aol.mobile.aim'),(38,84,'com.aol.mobile.aim'),(39,85,'com.aol.mobile.aim'),(40,86,'com.aol.mobile.aim'),(41,87,'com.aol.mobile.aim'),(42,88,'com.aol.mobile.aim'),(43,89,'com.aol.mobile.aim'),(44,90,'com.aol.mobile.aim'),(45,91,'com.aol.mobile.aim'),(46,93,'com.aol.mobile.aim'),(47,94,'com.aol.mobile.aim');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,1,0),(4,2,0),(5,4,0),(6,5,0),(7,6,0),(8,7,0),(9,4,0),(10,5,0),(11,6,0),(12,7,0),(13,10,0),(14,16,0),(15,27,0),(16,29,0),(17,30,0),(18,32,0),(19,32,0),(20,33,0),(21,48,0),(22,48,0),(23,49,0),(24,50,0),(25,51,0);
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
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,1,0),(6,6,1,0),(7,7,1,0),(8,8,1,0),(9,9,1,0),(10,10,1,0),(11,11,1,0),(12,12,0,0),(13,13,0,0),(14,14,0,0),(15,15,1,0),(16,16,1,0),(17,16,1,0),(18,17,1,0),(19,16,1,0),(20,17,1,0),(21,16,1,0),(22,17,1,0),(23,16,1,0),(24,17,1,0),(25,16,1,0),(26,17,1,0),(27,16,1,0),(28,17,1,0),(29,16,1,0),(30,17,1,0),(31,17,1,0),(32,18,1,0),(33,19,0,0),(34,20,0,0),(35,19,0,0),(36,21,1,0),(37,22,0,0),(38,23,0,0),(39,24,0,0),(40,25,1,0),(41,26,0,0),(42,27,1,0),(43,28,0,0),(44,29,0,0),(45,30,0,0),(46,31,0,0),(47,32,0,0),(48,33,0,0),(49,34,0,0),(50,35,0,0),(51,36,0,0),(52,37,0,0),(53,38,0,0),(54,39,1,0),(55,39,1,0),(56,39,1,0),(57,39,1,0),(58,39,1,0),(59,39,1,0),(60,39,1,0),(61,39,1,0),(62,40,0,0),(63,41,0,0),(64,42,1,0),(65,42,1,0),(66,42,1,0),(67,42,1,0),(68,42,1,0),(69,42,1,0),(70,42,1,0),(71,42,1,0),(72,43,0,0),(73,44,0,0),(74,44,0,0),(75,45,0,0),(76,46,0,0),(77,47,1,0),(78,48,0,0),(79,48,0,0),(80,49,1,0),(81,50,0,0),(82,51,0,0),(83,52,0,0),(84,53,0,0),(85,54,0,0),(86,55,0,0),(87,56,0,0),(88,57,0,0),(89,58,0,0),(90,59,0,0),(91,59,0,0),(92,60,1,0),(93,61,0,0),(94,62,0,0),(95,63,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (12,'android.permission.ACCESS_COARSE_LOCATION'),(10,'android.permission.ACCESS_FINE_LOCATION'),(8,'android.permission.ACCESS_NETWORK_STATE'),(2,'android.permission.ACCESS_WIFI_STATE'),(9,'android.permission.CAMERA'),(1,'android.permission.INTERNET'),(7,'android.permission.READ_LOGS'),(5,'android.permission.READ_PHONE_STATE'),(11,'android.permission.VIBRATE'),(3,'android.permission.WAKE_LOCK'),(6,'android.permission.WRITE_EXTERNAL_STORAGE'),(4,'com.google.android.gm.permission.WRITE_GMAIL');
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
INSERT INTO `UriData` VALUES (1,NULL,NULL,'http://droidsheep.de/?page_id=121',NULL,NULL,NULL),(2,NULL,NULL,'http://droidsheep.de/?page_id=121',NULL,NULL,NULL),(3,NULL,NULL,'http://droidsheep.de/?page_id=121',NULL,NULL,NULL),(4,NULL,NULL,'http://droidsheep.de/forum',NULL,NULL,NULL),(5,NULL,NULL,'http://droidsheep.de/?page_id=121',NULL,NULL,NULL),(6,NULL,NULL,'http://droidsheep.de/forum',NULL,NULL,NULL),(7,NULL,NULL,'http://wap.aol.com/portal/menu.do?id=5955&view=terms',NULL,NULL,NULL),(8,NULL,NULL,'http://www.mapquestapi.com/staticmap/v3/getmap?key=Amjtd%7Cluu72l6bn5%2Cr2%3Do5-lyynl&center=(.*)(.*)(.*)&zoom=(.*)&size=(.*)(.*)(.*)&pois=blue,(.*)(.*)(.*)&type=map&imagetype=jpeg&declutter=true&scalebar=false',NULL,NULL,NULL),(9,NULL,NULL,'(.*)',NULL,NULL,NULL),(10,NULL,NULL,'http://my.screenname.aol.com/_cqr/login/login.psp?a=NULL-CONSTANT&destUrl=(.*)&devId=(.*)&entryType=client2Web&ts=(.*)&sig_sha256=(.*)',NULL,NULL,NULL),(11,NULL,NULL,'http://my.screenname.aol.com/_cqr/login/login.psp?NULL-CONSTANT',NULL,NULL,NULL),(12,NULL,NULL,'',NULL,NULL,NULL),(13,NULL,NULL,'(.*)(.*)',NULL,NULL,NULL),(14,NULL,NULL,'http://my.screenname.aol.com/_cqr/login/login.psp?a=(.*)&destUrl=(.*)&devId=(.*)&entryType=client2Web&ts=(.*)&sig_sha256=(.*)',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'http://my.screenname.aol.com/_cqr/login/login.psp?a=NULL-CONSTANT&destUrl=(.*)&devId=(.*)&entryType=client2Web&ts=(.*)&sig_sha256=(.*)',NULL,NULL,NULL),(17,NULL,NULL,'http://my.screenname.aol.com/_cqr/login/login.psp?a=(.*)&destUrl=(.*)&devId=(.*)&entryType=client2Web&ts=(.*)&sig_sha256=(.*)',NULL,NULL,NULL),(18,NULL,NULL,'http://wap.aol.com/portal/menu.do?id=5955&view=terms',NULL,NULL,NULL),(19,NULL,NULL,'http://my.screenname.aol.com/_cqr/login/login.psp?NULL-CONSTANT',NULL,NULL,NULL),(20,NULL,NULL,'',NULL,NULL,NULL),(21,NULL,NULL,'http://www.mapquestapi.com/staticmap/v3/getmap?key=Amjtd%7Cluu72l6bn5%2Cr2%3Do5-lyynl&center=(.*)(.*)(.*)&zoom=(.*)&size=(.*)(.*)(.*)&pois=blue,(.*)(.*)(.*)&type=map&imagetype=jpeg&declutter=true&scalebar=false',NULL,NULL,NULL),(22,NULL,NULL,'(.*)(.*)',NULL,NULL,NULL),(23,NULL,NULL,'content://media/internal/images/media',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,1),(5,2,2),(6,2,3),(7,2,4),(8,3,1),(9,3,3),(10,4,1),(11,4,2),(12,4,5),(13,4,6),(14,4,7),(15,4,8),(16,5,1),(17,5,3),(18,5,5),(19,5,8),(20,5,9),(21,5,10),(22,5,11),(23,5,12);
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

-- Dump completed on 2015-10-09  0:38:28
